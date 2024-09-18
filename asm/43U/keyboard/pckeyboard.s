.include "macros.inc"
.file "pckeyboard.cpp"

# 0x814101D8..0x8141711C | size: 0x6F44
.text
.balign 4

# .text:0x0 | 0x814101D8 | size: 0x8
# textinput::Manager::getHWKeyboard() const
.fn getHWKeyboard__Q29textinput7ManagerCFv, global
/* 814101D8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814101DC | 4E 80 00 20 */	blr
.endfn getHWKeyboard__Q29textinput7ManagerCFv

# .text:0x8 | 0x814101E0 | size: 0x8
# textinput::toolbar::Base::isQwerty() const
.fn isQwerty__Q39textinput7toolbar4BaseCFv, global
/* 814101E0 | 88 63 00 04 */	lbz r3, 0x4(r3)
/* 814101E4 | 4E 80 00 20 */	blr
.endfn isQwerty__Q39textinput7toolbar4BaseCFv

# .text:0x10 | 0x814101E8 | size: 0x8
# textinput::Manager::getToolBar() const
.fn getToolBar__Q29textinput7ManagerCFv, global
/* 814101E8 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 814101EC | 4E 80 00 20 */	blr
.endfn getToolBar__Q29textinput7ManagerCFv

# .text:0x18 | 0x814101F0 | size: 0x4C
# textinput::keyboard::pctype::Base::getTranslateMode() const
.fn getTranslateMode__Q49textinput8keyboard6pctype4BaseCFv, global
/* 814101F0 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814101F4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814101F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814101FC | 41 82 00 28 */	beq .L_81410224
/* 81410200 | 40 80 00 10 */	bge .L_81410210
/* 81410204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410208 | 40 80 00 14 */	bge .L_8141021C
/* 8141020C | 48 00 00 28 */	b .L_81410234
.L_81410210:
/* 81410210 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81410214 | 40 80 00 20 */	bge .L_81410234
/* 81410218 | 48 00 00 14 */	b .L_8141022C
.L_8141021C:
/* 8141021C | 38 60 00 00 */	li r3, 0x0
/* 81410220 | 4E 80 00 20 */	blr
.L_81410224:
/* 81410224 | 38 60 00 01 */	li r3, 0x1
/* 81410228 | 4E 80 00 20 */	blr
.L_8141022C:
/* 8141022C | 38 60 00 02 */	li r3, 0x2
/* 81410230 | 4E 80 00 20 */	blr
.L_81410234:
/* 81410234 | 38 60 00 00 */	li r3, 0x0
/* 81410238 | 4E 80 00 20 */	blr
.endfn getTranslateMode__Q49textinput8keyboard6pctype4BaseCFv

# .text:0x64 | 0x8141023C | size: 0x8
# textinput::Manager::getPCKeyboard() const
.fn getPCKeyboard__Q29textinput7ManagerCFv, global
/* 8141023C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81410240 | 4E 80 00 20 */	blr
.endfn getPCKeyboard__Q29textinput7ManagerCFv

# .text:0x6C | 0x81410244 | size: 0x8
# textinput::Manager::getLanguage() const
.fn getLanguage__Q29textinput7ManagerCFv, global
/* 81410244 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 81410248 | 4E 80 00 20 */	blr
.endfn getLanguage__Q29textinput7ManagerCFv

# .text:0x74 | 0x8141024C | size: 0xC
# textinput::keyboard::pctype::Base::isCapsOn() const
.fn isCapsOn__Q49textinput8keyboard6pctype4BaseCFv, global
/* 8141024C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81410250 | 54 03 D7 FE */	extrwi r3, r0, 1, 25
/* 81410254 | 4E 80 00 20 */	blr
.endfn isCapsOn__Q49textinput8keyboard6pctype4BaseCFv

# .text:0x80 | 0x81410258 | size: 0x8
# textinput::keyboard::pctype::Base::create(MEMAllocator*)
.fn create__Q49textinput8keyboard6pctype4BaseFP12MEMAllocator, global
/* 81410258 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 8141025C | 4E 80 00 20 */	blr
.endfn create__Q49textinput8keyboard6pctype4BaseFP12MEMAllocator

# .text:0x88 | 0x81410260 | size: 0x130
# textinput::keyboard::pctype::Base::init()
.fn init__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410260 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81410264 | 7C 08 02 A6 */	mflr r0
/* 81410268 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141026C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81410270 | 7C 7F 1B 78 */	mr r31, r3
/* 81410274 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81410278 | 3B C0 00 00 */	li r30, 0x0
/* 8141027C | 9B C3 00 14 */	stb r30, 0x14(r3)
/* 81410280 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410284 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81410288 | 7D 89 03 A6 */	mtctr r12
/* 8141028C | 4E 80 04 21 */	bctrl
/* 81410290 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 81410294 | 80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 81410298 | 3C 60 81 61 */	lis r3, lbl_81614500@ha
/* 8141029C | 93 DF 00 24 */	stw r30, 0x24(r31)
/* 814102A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814102A4 | 38 63 45 00 */	addi r3, r3, lbl_81614500@l
/* 814102A8 | 7C 03 02 14 */	add r0, r3, r0
/* 814102AC | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814102B0 | 40 82 00 20 */	bne .L_814102D0
/* 814102B4 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814102B8 | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 814102BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814102C0 | 40 82 00 10 */	bne .L_814102D0
/* 814102C4 | 38 00 00 01 */	li r0, 0x1
/* 814102C8 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814102CC | 48 00 00 34 */	b .L_81410300
.L_814102D0:
/* 814102D0 | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814102D4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814102D8 | 41 81 00 20 */	bgt .L_814102F8
/* 814102DC | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814102E0 | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 814102E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814102E8 | 41 82 00 10 */	beq .L_814102F8
/* 814102EC | 38 00 00 01 */	li r0, 0x1
/* 814102F0 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814102F4 | 48 00 00 0C */	b .L_81410300
.L_814102F8:
/* 814102F8 | 38 00 00 00 */	li r0, 0x0
/* 814102FC | 90 1F 00 20 */	stw r0, 0x20(r31)
.L_81410300:
/* 81410300 | 38 00 00 00 */	li r0, 0x0
/* 81410304 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 81410308 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 8141030C | 48 00 0E ED */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 81410310 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 81410314 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81410318 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141031C | 41 82 00 28 */	beq .L_81410344
/* 81410320 | 40 80 00 10 */	bge .L_81410330
/* 81410324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410328 | 40 80 00 14 */	bge .L_8141033C
/* 8141032C | 48 00 00 28 */	b .L_81410354
.L_81410330:
/* 81410330 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81410334 | 40 80 00 20 */	bge .L_81410354
/* 81410338 | 48 00 00 14 */	b .L_8141034C
.L_8141033C:
/* 8141033C | 38 00 00 00 */	li r0, 0x0
/* 81410340 | 48 00 00 18 */	b .L_81410358
.L_81410344:
/* 81410344 | 38 00 00 01 */	li r0, 0x1
/* 81410348 | 48 00 00 10 */	b .L_81410358
.L_8141034C:
/* 8141034C | 38 00 00 02 */	li r0, 0x2
/* 81410350 | 48 00 00 08 */	b .L_81410358
.L_81410354:
/* 81410354 | 38 00 00 00 */	li r0, 0x0
.L_81410358:
/* 81410358 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8141035C | 7F E3 FB 78 */	mr r3, r31
/* 81410360 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81410364 | 38 80 00 12 */	li r4, 0x12
/* 81410368 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141036C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410370 | 7D 89 03 A6 */	mtctr r12
/* 81410374 | 4E 80 04 21 */	bctrl
/* 81410378 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141037C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81410380 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81410384 | 7C 08 03 A6 */	mtlr r0
/* 81410388 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141038C | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard6pctype4BaseFv

# .text:0x1B8 | 0x81410390 | size: 0x8
# textinput::keyboard::KeyboardBase::getLanguage() const
.fn getLanguage__Q39textinput8keyboard12KeyboardBaseCFv, global
/* 81410390 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81410394 | 4E 80 00 20 */	blr
.endfn getLanguage__Q39textinput8keyboard12KeyboardBaseCFv

# .text:0x1C0 | 0x81410398 | size: 0x20
# textinput::CommandSender::sendCommand(unsigned long, void*)
.fn sendCommand__Q29textinput13CommandSenderFUlPv, global
/* 81410398 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8141039C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814103A0 | 4D 82 00 20 */	beqlr
/* 814103A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814103A8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814103AC | 7D 89 03 A6 */	mtctr r12
/* 814103B0 | 4E 80 04 20 */	bctr
/* 814103B4 | 4E 80 00 20 */	blr
.endfn sendCommand__Q29textinput13CommandSenderFUlPv

# .text:0x1E0 | 0x814103B8 | size: 0x14
# textinput::keyboard::pctype::Base::inputCharCode(wchar_t)
.fn inputCharCode__Q49textinput8keyboard6pctype4BaseFw, global
/* 814103B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814103BC | 38 A0 00 00 */	li r5, 0x0
/* 814103C0 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 814103C4 | 7D 89 03 A6 */	mtctr r12
/* 814103C8 | 4E 80 04 20 */	bctr
.endfn inputCharCode__Q49textinput8keyboard6pctype4BaseFw

# .text:0x1F4 | 0x814103CC | size: 0x388
# textinput::keyboard::pctype::Base::onKey(unsigned long, void*)
.fn onKey__Q49textinput8keyboard6pctype4BaseFUlPv, global
/* 814103CC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814103D0 | 7C 08 02 A6 */	mflr r0
/* 814103D4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814103D8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814103DC | 7C 7F 1B 78 */	mr r31, r3
/* 814103E0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814103E4 | 7C BE 2B 78 */	mr r30, r5
/* 814103E8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814103EC | 7C 9D 23 78 */	mr r29, r4
/* 814103F0 | 7F C4 F3 78 */	mr r4, r30
/* 814103F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814103F8 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 814103FC | 7D 89 03 A6 */	mtctr r12
/* 81410400 | 4E 80 04 21 */	bctrl
/* 81410404 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 81410408 | 40 82 03 30 */	bne .L_81410738
/* 8141040C | 54 64 04 3F */	clrlwi. r4, r3, 16
/* 81410410 | 40 82 03 14 */	bne .L_81410724
/* 81410414 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410418 | 7F E3 FB 78 */	mr r3, r31
/* 8141041C | 7F C4 F3 78 */	mr r4, r30
/* 81410420 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 81410424 | 7D 89 03 A6 */	mtctr r12
/* 81410428 | 4E 80 04 21 */	bctrl
/* 8141042C | 28 03 00 16 */	cmplwi r3, 0x16
/* 81410430 | 41 81 03 08 */	bgt .L_81410738
/* 81410434 | 3C 80 81 66 */	lis r4, jumptable_8165B5E0@ha
/* 81410438 | 54 60 10 3A */	slwi r0, r3, 2
/* 8141043C | 38 84 B5 E0 */	addi r4, r4, jumptable_8165B5E0@l
/* 81410440 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81410444 | 7C 89 03 A6 */	mtctr r4
/* 81410448 | 4E 80 04 20 */	bctr
.L_8141044C:
/* 8141044C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410450 | 7F E3 FB 78 */	mr r3, r31
/* 81410454 | 38 80 00 01 */	li r4, 0x1
/* 81410458 | 38 A0 00 00 */	li r5, 0x0
/* 8141045C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410460 | 7D 89 03 A6 */	mtctr r12
/* 81410464 | 4E 80 04 21 */	bctrl
/* 81410468 | 48 00 02 D0 */	b .L_81410738
.L_8141046C:
/* 8141046C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410470 | 7F E3 FB 78 */	mr r3, r31
/* 81410474 | 38 80 00 07 */	li r4, 0x7
/* 81410478 | 38 A0 00 00 */	li r5, 0x0
/* 8141047C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410480 | 7D 89 03 A6 */	mtctr r12
/* 81410484 | 4E 80 04 21 */	bctrl
/* 81410488 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141048C | 7F E3 FB 78 */	mr r3, r31
/* 81410490 | 38 80 00 27 */	li r4, 0x27
/* 81410494 | 38 A0 00 00 */	li r5, 0x0
/* 81410498 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141049C | 7D 89 03 A6 */	mtctr r12
/* 814104A0 | 4E 80 04 21 */	bctrl
/* 814104A4 | 48 00 02 94 */	b .L_81410738
.L_814104A8:
/* 814104A8 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 814104AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814104B0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 814104B4 | 7D 89 03 A6 */	mtctr r12
/* 814104B8 | 4E 80 04 21 */	bctrl
/* 814104BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814104C0 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 814104C4 | 7D 89 03 A6 */	mtctr r12
/* 814104C8 | 4E 80 04 21 */	bctrl
/* 814104CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814104D0 | 41 82 00 24 */	beq .L_814104F4
/* 814104D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814104D8 | 7F E3 FB 78 */	mr r3, r31
/* 814104DC | 38 80 00 28 */	li r4, 0x28
/* 814104E0 | 38 A0 00 00 */	li r5, 0x0
/* 814104E4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814104E8 | 7D 89 03 A6 */	mtctr r12
/* 814104EC | 4E 80 04 21 */	bctrl
/* 814104F0 | 48 00 02 48 */	b .L_81410738
.L_814104F4:
/* 814104F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814104F8 | 7F E3 FB 78 */	mr r3, r31
/* 814104FC | 38 80 00 20 */	li r4, 0x20
/* 81410500 | 38 A0 00 00 */	li r5, 0x0
/* 81410504 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 81410508 | 7D 89 03 A6 */	mtctr r12
/* 8141050C | 4E 80 04 21 */	bctrl
/* 81410510 | 48 00 02 28 */	b .L_81410738
.L_81410514:
/* 81410514 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410518 | 7F E3 FB 78 */	mr r3, r31
/* 8141051C | 38 80 00 01 */	li r4, 0x1
/* 81410520 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81410524 | 7D 89 03 A6 */	mtctr r12
/* 81410528 | 4E 80 04 21 */	bctrl
/* 8141052C | 48 00 02 0C */	b .L_81410738
.L_81410530:
/* 81410530 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410534 | 7F E3 FB 78 */	mr r3, r31
/* 81410538 | 38 80 00 00 */	li r4, 0x0
/* 8141053C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81410540 | 7D 89 03 A6 */	mtctr r12
/* 81410544 | 4E 80 04 21 */	bctrl
/* 81410548 | 48 00 01 F0 */	b .L_81410738
.L_8141054C:
/* 8141054C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410550 | 7F E3 FB 78 */	mr r3, r31
/* 81410554 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81410558 | 7D 89 03 A6 */	mtctr r12
/* 8141055C | 4E 80 04 21 */	bctrl
/* 81410560 | 48 00 01 D8 */	b .L_81410738
.L_81410564:
/* 81410564 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410568 | 7F E3 FB 78 */	mr r3, r31
/* 8141056C | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81410570 | 7D 89 03 A6 */	mtctr r12
/* 81410574 | 4E 80 04 21 */	bctrl
/* 81410578 | 48 00 01 C0 */	b .L_81410738
.L_8141057C:
/* 8141057C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410580 | 7F E3 FB 78 */	mr r3, r31
/* 81410584 | 38 80 00 04 */	li r4, 0x4
/* 81410588 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8141058C | 7D 89 03 A6 */	mtctr r12
/* 81410590 | 4E 80 04 21 */	bctrl
/* 81410594 | 48 00 01 A4 */	b .L_81410738
.L_81410598:
/* 81410598 | 38 00 00 00 */	li r0, 0x0
/* 8141059C | 7F E3 FB 78 */	mr r3, r31
/* 814105A0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814105A4 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814105A8 | 38 80 00 12 */	li r4, 0x12
/* 814105AC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814105B0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814105B4 | 7D 89 03 A6 */	mtctr r12
/* 814105B8 | 4E 80 04 21 */	bctrl
/* 814105BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814105C0 | 7F E3 FB 78 */	mr r3, r31
/* 814105C4 | 38 80 00 00 */	li r4, 0x0
/* 814105C8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814105CC | 7D 89 03 A6 */	mtctr r12
/* 814105D0 | 4E 80 04 21 */	bctrl
/* 814105D4 | 48 00 01 64 */	b .L_81410738
.L_814105D8:
/* 814105D8 | 80 02 89 18 */	lwz r0, lbl_81694D18@sda21(r0)
/* 814105DC | 7F E3 FB 78 */	mr r3, r31
/* 814105E0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814105E4 | 38 80 00 12 */	li r4, 0x12
/* 814105E8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814105EC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814105F0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814105F4 | 7D 89 03 A6 */	mtctr r12
/* 814105F8 | 4E 80 04 21 */	bctrl
/* 814105FC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410600 | 7F E3 FB 78 */	mr r3, r31
/* 81410604 | 38 80 00 01 */	li r4, 0x1
/* 81410608 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141060C | 7D 89 03 A6 */	mtctr r12
/* 81410610 | 4E 80 04 21 */	bctrl
/* 81410614 | 48 00 01 24 */	b .L_81410738
.L_81410618:
/* 81410618 | 80 02 89 1C */	lwz r0, lbl_81694D1C@sda21(r0)
/* 8141061C | 7F E3 FB 78 */	mr r3, r31
/* 81410620 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81410624 | 38 80 00 12 */	li r4, 0x12
/* 81410628 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8141062C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410630 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410634 | 7D 89 03 A6 */	mtctr r12
/* 81410638 | 4E 80 04 21 */	bctrl
/* 8141063C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410640 | 7F E3 FB 78 */	mr r3, r31
/* 81410644 | 38 80 00 02 */	li r4, 0x2
/* 81410648 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141064C | 7D 89 03 A6 */	mtctr r12
/* 81410650 | 4E 80 04 21 */	bctrl
/* 81410654 | 48 00 00 E4 */	b .L_81410738
.L_81410658:
/* 81410658 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8141065C | 54 60 07 3F */	clrlwi. r0, r3, 28
/* 81410660 | 41 82 00 D8 */	beq .L_81410738
/* 81410664 | 54 60 00 36 */	clrrwi r0, r3, 4
/* 81410668 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8141066C | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 81410670 | 48 00 0B 89 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 81410674 | 48 00 00 C4 */	b .L_81410738
.L_81410678:
/* 81410678 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8141067C | 54 60 07 3E */	clrlwi r0, r3, 28
/* 81410680 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81410684 | 41 82 00 B4 */	beq .L_81410738
/* 81410688 | 54 60 00 36 */	clrrwi r0, r3, 4
/* 8141068C | 38 7F 00 20 */	addi r3, r31, 0x20
/* 81410690 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81410694 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 81410698 | 48 00 0B 61 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 8141069C | 48 00 00 9C */	b .L_81410738
.L_814106A0:
/* 814106A0 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814106A4 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 814106A8 | 41 82 00 90 */	beq .L_81410738
/* 814106AC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814106B0 | 7F E3 FB 78 */	mr r3, r31
/* 814106B4 | 38 80 00 19 */	li r4, 0x19
/* 814106B8 | 38 A0 00 00 */	li r5, 0x0
/* 814106BC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814106C0 | 7D 89 03 A6 */	mtctr r12
/* 814106C4 | 4E 80 04 21 */	bctrl
/* 814106C8 | 48 00 00 70 */	b .L_81410738
.L_814106CC:
/* 814106CC | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814106D0 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814106D4 | 41 82 00 64 */	beq .L_81410738
/* 814106D8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814106DC | 7F E3 FB 78 */	mr r3, r31
/* 814106E0 | 38 80 00 1A */	li r4, 0x1a
/* 814106E4 | 38 A0 00 00 */	li r5, 0x0
/* 814106E8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814106EC | 7D 89 03 A6 */	mtctr r12
/* 814106F0 | 4E 80 04 21 */	bctrl
/* 814106F4 | 48 00 00 44 */	b .L_81410738
.L_814106F8:
/* 814106F8 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814106FC | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81410700 | 41 82 00 38 */	beq .L_81410738
/* 81410704 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410708 | 7F E3 FB 78 */	mr r3, r31
/* 8141070C | 38 80 00 1C */	li r4, 0x1c
/* 81410710 | 38 A0 00 00 */	li r5, 0x0
/* 81410714 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410718 | 7D 89 03 A6 */	mtctr r12
/* 8141071C | 4E 80 04 21 */	bctrl
/* 81410720 | 48 00 00 18 */	b .L_81410738
.L_81410724:
/* 81410724 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410728 | 7F E3 FB 78 */	mr r3, r31
/* 8141072C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81410730 | 7D 89 03 A6 */	mtctr r12
/* 81410734 | 4E 80 04 21 */	bctrl
.L_81410738:
/* 81410738 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8141073C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81410740 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81410744 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81410748 | 7C 08 03 A6 */	mtlr r0
/* 8141074C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81410750 | 4E 80 00 20 */	blr
.endfn onKey__Q49textinput8keyboard6pctype4BaseFUlPv

# .text:0x57C | 0x81410754 | size: 0x40
# textinput::inputform::Base::canConvert()
.fn canConvert__Q39textinput9inputform4BaseFv, global
/* 81410754 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81410758 | 7C 08 02 A6 */	mflr r0
/* 8141075C | 38 80 00 00 */	li r4, 0x0
/* 81410760 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81410764 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81410768 | 7C 7F 1B 78 */	mr r31, r3
/* 8141076C | 48 01 17 89 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81410770 | 80 1F 01 68 */	lwz r0, 0x168(r31)
/* 81410774 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81410778 | 7C 03 00 50 */	subf r0, r3, r0
/* 8141077C | 7C 00 00 34 */	cntlzw r0, r0
/* 81410780 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81410784 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81410788 | 7C 08 03 A6 */	mtlr r0
/* 8141078C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81410790 | 4E 80 00 20 */	blr
.endfn canConvert__Q39textinput9inputform4BaseFv

# .text:0x5BC | 0x81410794 | size: 0x4
# textinput::keyboard::pctype::Base::goSignInputMode()
.fn goSignInputMode__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410794 | 4E 80 00 20 */	blr
.endfn goSignInputMode__Q49textinput8keyboard6pctype4BaseFv

# .text:0x5C0 | 0x81410798 | size: 0x4
# textinput::keyboard::pctype::Base::changePredictLanguage()
.fn changePredictLanguage__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410798 | 4E 80 00 20 */	blr
.endfn changePredictLanguage__Q49textinput8keyboard6pctype4BaseFv

# .text:0x5C4 | 0x8141079C | size: 0xCC
# textinput::keyboard::pctype::Base::updateFromReceiver(unsigned long, void*)
.fn updateFromReceiver__Q49textinput8keyboard6pctype4BaseFUlPv, global
/* 8141079C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814107A0 | 7C 08 02 A6 */	mflr r0
/* 814107A4 | 28 04 00 1F */	cmplwi r4, 0x1f
/* 814107A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814107AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814107B0 | 7C 9F 23 78 */	mr r31, r4
/* 814107B4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814107B8 | 7C 7E 1B 78 */	mr r30, r3
/* 814107BC | 41 82 00 94 */	beq .L_81410850
/* 814107C0 | 38 00 00 00 */	li r0, 0x0
/* 814107C4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814107C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814107CC | 38 80 00 1F */	li r4, 0x1f
/* 814107D0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814107D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814107D8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814107DC | 7D 89 03 A6 */	mtctr r12
/* 814107E0 | 4E 80 04 21 */	bctrl
/* 814107E4 | 28 1F 00 19 */	cmplwi r31, 0x19
/* 814107E8 | 41 82 00 34 */	beq .L_8141081C
/* 814107EC | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 814107F0 | 41 82 00 2C */	beq .L_8141081C
/* 814107F4 | 28 1F 00 1C */	cmplwi r31, 0x1c
/* 814107F8 | 41 82 00 24 */	beq .L_8141081C
/* 814107FC | 28 1F 00 18 */	cmplwi r31, 0x18
/* 81410800 | 41 82 00 1C */	beq .L_8141081C
/* 81410804 | 28 1F 00 14 */	cmplwi r31, 0x14
/* 81410808 | 41 82 00 14 */	beq .L_8141081C
/* 8141080C | 28 1F 00 13 */	cmplwi r31, 0x13
/* 81410810 | 41 82 00 0C */	beq .L_8141081C
/* 81410814 | 28 1F 00 23 */	cmplwi r31, 0x23
/* 81410818 | 40 82 00 0C */	bne .L_81410824
.L_8141081C:
/* 8141081C | 28 1F 00 24 */	cmplwi r31, 0x24
/* 81410820 | 40 82 00 20 */	bne .L_81410840
.L_81410824:
/* 81410824 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 81410828 | 54 60 00 37 */	clrrwi. r0, r3, 4
/* 8141082C | 41 82 00 14 */	beq .L_81410840
/* 81410830 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 81410834 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 81410838 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 8141083C | 48 00 09 BD */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410840:
/* 81410840 | 28 1F 00 24 */	cmplwi r31, 0x24
/* 81410844 | 40 82 00 0C */	bne .L_81410850
/* 81410848 | 38 00 00 01 */	li r0, 0x1
/* 8141084C | 98 1E 00 14 */	stb r0, 0x14(r30)
.L_81410850:
/* 81410850 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81410854 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81410858 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141085C | 7C 08 03 A6 */	mtlr r0
/* 81410860 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81410864 | 4E 80 00 20 */	blr
.endfn updateFromReceiver__Q49textinput8keyboard6pctype4BaseFUlPv

# .text:0x690 | 0x81410868 | size: 0x1DC
# textinput::keyboard::pctype::Base::onActive()
.fn onActive__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410868 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141086C | 7C 08 02 A6 */	mflr r0
/* 81410870 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81410874 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81410878 | 7C 7F 1B 78 */	mr r31, r3
/* 8141087C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81410880 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81410884 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81410888 | 41 82 00 28 */	beq .L_814108B0
/* 8141088C | 40 80 00 10 */	bge .L_8141089C
/* 81410890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410894 | 40 80 00 14 */	bge .L_814108A8
/* 81410898 | 48 00 00 28 */	b .L_814108C0
.L_8141089C:
/* 8141089C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814108A0 | 40 80 00 20 */	bge .L_814108C0
/* 814108A4 | 48 00 00 14 */	b .L_814108B8
.L_814108A8:
/* 814108A8 | 38 00 00 00 */	li r0, 0x0
/* 814108AC | 48 00 00 18 */	b .L_814108C4
.L_814108B0:
/* 814108B0 | 38 00 00 01 */	li r0, 0x1
/* 814108B4 | 48 00 00 10 */	b .L_814108C4
.L_814108B8:
/* 814108B8 | 38 00 00 02 */	li r0, 0x2
/* 814108BC | 48 00 00 08 */	b .L_814108C4
.L_814108C0:
/* 814108C0 | 38 00 00 00 */	li r0, 0x0
.L_814108C4:
/* 814108C4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814108C8 | 7F E3 FB 78 */	mr r3, r31
/* 814108CC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814108D0 | 38 80 00 12 */	li r4, 0x12
/* 814108D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814108D8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814108DC | 7D 89 03 A6 */	mtctr r12
/* 814108E0 | 4E 80 04 21 */	bctrl
/* 814108E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814108E8 | 7F E3 FB 78 */	mr r3, r31
/* 814108EC | 38 80 00 27 */	li r4, 0x27
/* 814108F0 | 38 A0 00 00 */	li r5, 0x0
/* 814108F4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814108F8 | 7D 89 03 A6 */	mtctr r12
/* 814108FC | 4E 80 04 21 */	bctrl
/* 81410900 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 81410904 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410908 | 40 82 00 98 */	bne .L_814109A0
/* 8141090C | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 81410910 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81410914 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81410918 | 41 82 00 28 */	beq .L_81410940
/* 8141091C | 40 80 00 10 */	bge .L_8141092C
/* 81410920 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410924 | 40 80 00 14 */	bge .L_81410938
/* 81410928 | 48 00 00 28 */	b .L_81410950
.L_8141092C:
/* 8141092C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81410930 | 40 80 00 20 */	bge .L_81410950
/* 81410934 | 48 00 00 14 */	b .L_81410948
.L_81410938:
/* 81410938 | 38 00 00 00 */	li r0, 0x0
/* 8141093C | 48 00 00 18 */	b .L_81410954
.L_81410940:
/* 81410940 | 38 00 00 01 */	li r0, 0x1
/* 81410944 | 48 00 00 10 */	b .L_81410954
.L_81410948:
/* 81410948 | 38 00 00 02 */	li r0, 0x2
/* 8141094C | 48 00 00 08 */	b .L_81410954
.L_81410950:
/* 81410950 | 38 00 00 00 */	li r0, 0x0
.L_81410954:
/* 81410954 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81410958 | 41 82 00 20 */	beq .L_81410978
/* 8141095C | 40 80 00 C0 */	bge .L_81410A1C
/* 81410960 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81410964 | 40 80 00 08 */	bge .L_8141096C
/* 81410968 | 48 00 00 B4 */	b .L_81410A1C
.L_8141096C:
/* 8141096C | 38 00 00 01 */	li r0, 0x1
/* 81410970 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81410974 | 48 00 00 0C */	b .L_81410980
.L_81410978:
/* 81410978 | 38 00 00 00 */	li r0, 0x0
/* 8141097C | 98 01 00 0C */	stb r0, 0xc(r1)
.L_81410980:
/* 81410980 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410984 | 7F E3 FB 78 */	mr r3, r31
/* 81410988 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8141098C | 38 80 00 13 */	li r4, 0x13
/* 81410990 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410994 | 7D 89 03 A6 */	mtctr r12
/* 81410998 | 4E 80 04 21 */	bctrl
/* 8141099C | 48 00 00 80 */	b .L_81410A1C
.L_814109A0:
/* 814109A0 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814109A4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814109A8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814109AC | 41 82 00 1C */	beq .L_814109C8
/* 814109B0 | 40 80 00 20 */	bge .L_814109D0
/* 814109B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814109B8 | 40 80 00 08 */	bge .L_814109C0
/* 814109BC | 48 00 00 14 */	b .L_814109D0
.L_814109C0:
/* 814109C0 | 38 00 00 06 */	li r0, 0x6
/* 814109C4 | 48 00 00 10 */	b .L_814109D4
.L_814109C8:
/* 814109C8 | 38 00 00 07 */	li r0, 0x7
/* 814109CC | 48 00 00 08 */	b .L_814109D4
.L_814109D0:
/* 814109D0 | 38 00 00 06 */	li r0, 0x6
.L_814109D4:
/* 814109D4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814109D8 | 41 82 00 20 */	beq .L_814109F8
/* 814109DC | 40 80 00 40 */	bge .L_81410A1C
/* 814109E0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814109E4 | 40 80 00 08 */	bge .L_814109EC
/* 814109E8 | 48 00 00 34 */	b .L_81410A1C
.L_814109EC:
/* 814109EC | 38 00 00 01 */	li r0, 0x1
/* 814109F0 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814109F4 | 48 00 00 0C */	b .L_81410A00
.L_814109F8:
/* 814109F8 | 38 00 00 00 */	li r0, 0x0
/* 814109FC | 98 01 00 08 */	stb r0, 0x8(r1)
.L_81410A00:
/* 81410A00 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410A04 | 7F E3 FB 78 */	mr r3, r31
/* 81410A08 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81410A0C | 38 80 00 13 */	li r4, 0x13
/* 81410A10 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410A14 | 7D 89 03 A6 */	mtctr r12
/* 81410A18 | 4E 80 04 21 */	bctrl
.L_81410A1C:
/* 81410A1C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410A20 | 7F E3 FB 78 */	mr r3, r31
/* 81410A24 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81410A28 | 7D 89 03 A6 */	mtctr r12
/* 81410A2C | 4E 80 04 21 */	bctrl
/* 81410A30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81410A34 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81410A38 | 7C 08 03 A6 */	mtlr r0
/* 81410A3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81410A40 | 4E 80 00 20 */	blr
.endfn onActive__Q49textinput8keyboard6pctype4BaseFv

# .text:0x86C | 0x81410A44 | size: 0x4
# textinput::keyboard::pctype::Base::onClose()
.fn onClose__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410A44 | 4E 80 00 20 */	blr
.endfn onClose__Q49textinput8keyboard6pctype4BaseFv

# .text:0x870 | 0x81410A48 | size: 0x8
# textinput::keyboard::pctype::Base::getWCCode(char*)
.fn getWCCode__Q49textinput8keyboard6pctype4BaseFPc, global
/* 81410A48 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81410A4C | 48 00 0F 54 */	b getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFPc
.endfn getWCCode__Q49textinput8keyboard6pctype4BaseFPc

# .text:0x878 | 0x81410A50 | size: 0x90
# textinput::keyboard::pctype::Base::getControlKey(char*)
.fn getControlKey__Q49textinput8keyboard6pctype4BaseFPc, global
/* 81410A50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81410A54 | 7C 08 02 A6 */	mflr r0
/* 81410A58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81410A5C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81410A60 | 3B E0 00 00 */	li r31, 0x0
/* 81410A64 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81410A68 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81410A6C | 7C 9D 23 78 */	mr r29, r4
/* 81410A70 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81410A74 | 7C 7C 1B 78 */	mr r28, r3
.L_81410A78:
/* 81410A78 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81410A7C | 80 7C 00 30 */	lwz r3, 0x30(r28)
/* 81410A80 | 1F C0 00 18 */	mulli r30, r0, 0x18
/* 81410A84 | 7F A4 EB 78 */	mr r4, r29
/* 81410A88 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81410A8C | 7C 60 F2 14 */	add r3, r0, r30
/* 81410A90 | 48 02 97 65 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81410A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81410A98 | 41 82 00 18 */	beq .L_81410AB0
/* 81410A9C | 80 7C 00 30 */	lwz r3, 0x30(r28)
/* 81410AA0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81410AA4 | 7C 60 F2 14 */	add r3, r0, r30
/* 81410AA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81410AAC | 48 00 00 14 */	b .L_81410AC0
.L_81410AB0:
/* 81410AB0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81410AB4 | 28 1F 00 17 */	cmplwi r31, 0x17
/* 81410AB8 | 41 80 FF C0 */	blt .L_81410A78
/* 81410ABC | 38 60 00 1B */	li r3, 0x1b
.L_81410AC0:
/* 81410AC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81410AC4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81410AC8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81410ACC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81410AD0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81410AD4 | 7C 08 03 A6 */	mtlr r0
/* 81410AD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81410ADC | 4E 80 00 20 */	blr
.endfn getControlKey__Q49textinput8keyboard6pctype4BaseFPc

# .text:0x908 | 0x81410AE0 | size: 0x80
# textinput::keyboard::pctype::Base::changeABCInputMode(textinput::keyboard::pctype::Base::InputMode)
.fn changeABCInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode, global
/* 81410AE0 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 81410AE4 | 41 82 00 38 */	beq .L_81410B1C
/* 81410AE8 | 40 80 00 10 */	bge .L_81410AF8
/* 81410AEC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81410AF0 | 41 82 00 14 */	beq .L_81410B04
/* 81410AF4 | 4E 80 00 20 */	blr
.L_81410AF8:
/* 81410AF8 | 2C 04 00 08 */	cmpwi r4, 0x8
/* 81410AFC | 4C 80 00 20 */	bgelr
/* 81410B00 | 48 00 00 3C */	b .L_81410B3C
.L_81410B04:
/* 81410B04 | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 81410B08 | 54 80 07 3F */	clrlwi. r0, r4, 28
/* 81410B0C | 4D 82 00 20 */	beqlr
/* 81410B10 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81410B14 | 94 03 00 20 */	stwu r0, 0x20(r3)
/* 81410B18 | 48 00 06 E0 */	b refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410B1C:
/* 81410B1C | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 81410B20 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81410B24 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81410B28 | 4D 82 00 20 */	beqlr
/* 81410B2C | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81410B30 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81410B34 | 94 03 00 20 */	stwu r0, 0x20(r3)
/* 81410B38 | 48 00 06 C0 */	b refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410B3C:
/* 81410B3C | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 81410B40 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81410B44 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81410B48 | 4D 82 00 20 */	beqlr
/* 81410B4C | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81410B50 | 60 00 00 02 */	ori r0, r0, 0x2
/* 81410B54 | 94 03 00 20 */	stwu r0, 0x20(r3)
/* 81410B58 | 48 00 06 A0 */	b refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 81410B5C | 4E 80 00 20 */	blr
.endfn changeABCInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode

# .text:0x988 | 0x81410B60 | size: 0x58
# textinput::keyboard::pctype::Base::changeAIUInputMode(textinput::keyboard::pctype::Base::InputMode)
.fn changeAIUInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode, global
/* 81410B60 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 81410B64 | 41 82 00 2C */	beq .L_81410B90
/* 81410B68 | 4C 80 00 20 */	bgelr
/* 81410B6C | 2C 04 00 06 */	cmpwi r4, 0x6
/* 81410B70 | 4D 80 00 20 */	bltlr
/* 81410B74 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 81410B78 | 54 80 07 3F */	clrlwi. r0, r4, 28
/* 81410B7C | 4D 82 00 20 */	beqlr
/* 81410B80 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81410B84 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 81410B88 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81410B8C | 48 00 06 6C */	b refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410B90:
/* 81410B90 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 81410B94 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81410B98 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81410B9C | 4D 82 00 20 */	beqlr
/* 81410BA0 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81410BA4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81410BA8 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 81410BAC | 38 63 00 20 */	addi r3, r3, 0x20
/* 81410BB0 | 48 00 06 48 */	b refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 81410BB4 | 4E 80 00 20 */	blr
.endfn changeAIUInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode

# .text:0x9E0 | 0x81410BB8 | size: 0x1B0
# textinput::keyboard::pctype::Base::sendInputWChar(wchar_t, bool)
.fn sendInputWChar__Q49textinput8keyboard6pctype4BaseFwb, global
/* 81410BB8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81410BBC | 7C 08 02 A6 */	mflr r0
/* 81410BC0 | 39 00 00 00 */	li r8, 0x0
/* 81410BC4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81410BC8 | 38 00 00 00 */	li r0, 0x0
/* 81410BCC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81410BD0 | 7C 9F 23 78 */	mr r31, r4
/* 81410BD4 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81410BD8 | 7C 7E 1B 78 */	mr r30, r3
/* 81410BDC | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81410BE0 | 80 A3 00 20 */	lwz r5, 0x20(r3)
/* 81410BE4 | 98 03 00 14 */	stb r0, 0x14(r3)
/* 81410BE8 | 54 A0 06 73 */	rlwinm. r0, r5, 0, 25, 25
/* 81410BEC | 41 82 00 08 */	beq .L_81410BF4
/* 81410BF0 | 61 08 00 02 */	ori r8, r8, 0x2
.L_81410BF4:
/* 81410BF4 | 54 A0 06 31 */	rlwinm. r0, r5, 0, 24, 24
/* 81410BF8 | 41 82 00 08 */	beq .L_81410C00
/* 81410BFC | 61 08 00 01 */	ori r8, r8, 0x1
.L_81410C00:
/* 81410C00 | 3C E0 81 61 */	lis r7, lbl_81614A88@ha
/* 81410C04 | 84 C7 4A 88 */	lwzu r6, lbl_81614A88@l(r7)
/* 81410C08 | 7F C3 F3 78 */	mr r3, r30
/* 81410C0C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81410C10 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 81410C14 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81410C18 | 80 C7 00 08 */	lwz r6, 0x8(r7)
/* 81410C1C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81410C20 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 81410C24 | B0 81 00 08 */	sth r4, 0x8(r1)
/* 81410C28 | 38 80 00 00 */	li r4, 0x0
/* 81410C2C | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 81410C30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81410C34 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 81410C38 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81410C3C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410C40 | 7D 89 03 A6 */	mtctr r12
/* 81410C44 | 4E 80 04 21 */	bctrl
/* 81410C48 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 81410C4C | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81410C50 | 41 82 00 80 */	beq .L_81410CD0
/* 81410C54 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 81410C58 | 7C 00 07 75 */	extsb. r0, r0
/* 81410C5C | 40 82 00 2C */	bne .L_81410C88
/* 81410C60 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81410C64 | 48 03 98 B9 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81410C68 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 81410C6C | 3C A0 81 0C */	lis r5, lbl_810C6580@ha
/* 81410C70 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 81410C74 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81410C78 | 38 A5 65 80 */	addi r5, r5, lbl_810C6580@l
/* 81410C7C | 48 1E 83 65 */	bl __register_global_object
/* 81410C80 | 38 00 00 01 */	li r0, 0x1
/* 81410C84 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81410C88:
/* 81410C88 | 88 0D AC BC */	lbz r0, lbl_81698CFC@sda21(r0)
/* 81410C8C | 38 8D AC BC */	li r4, lbl_81698CFC@sda21
/* 81410C90 | 38 60 00 00 */	li r3, 0x0
/* 81410C94 | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 81410C98 | 40 82 00 10 */	bne .L_81410CA8
/* 81410C9C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81410CA0 | 54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 81410CA4 | 41 82 00 08 */	beq .L_81410CAC
.L_81410CA8:
/* 81410CA8 | 38 60 00 01 */	li r3, 0x1
.L_81410CAC:
/* 81410CAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81410CB0 | 40 82 00 20 */	bne .L_81410CD0
/* 81410CB4 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81410CB8 | 54 60 00 37 */	clrrwi. r0, r3, 4
/* 81410CBC | 41 82 00 14 */	beq .L_81410CD0
/* 81410CC0 | 54 60 06 6E */	rlwinm r0, r3, 0, 25, 23
/* 81410CC4 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 81410CC8 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 81410CCC | 48 00 05 2D */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410CD0:
/* 81410CD0 | 88 1E 00 14 */	lbz r0, 0x14(r30)
/* 81410CD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410CD8 | 40 82 00 74 */	bne .L_81410D4C
/* 81410CDC | 7F E3 FB 78 */	mr r3, r31
/* 81410CE0 | 3B A0 00 00 */	li r29, 0x0
/* 81410CE4 | 48 02 8B CD */	bl KBD_ConvertDakuten__Q29textinput4utilFw
/* 81410CE8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81410CEC | 7C 1F 00 40 */	cmplw r31, r0
/* 81410CF0 | 41 82 00 08 */	beq .L_81410CF8
/* 81410CF4 | 63 BD 00 20 */	ori r29, r29, 0x20
.L_81410CF8:
/* 81410CF8 | 7F E3 FB 78 */	mr r3, r31
/* 81410CFC | 48 02 90 19 */	bl KBD_ConvertHandaku__Q29textinput4utilFw
/* 81410D00 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81410D04 | 7C 1F 00 40 */	cmplw r31, r0
/* 81410D08 | 41 82 00 08 */	beq .L_81410D10
/* 81410D0C | 63 BD 00 40 */	ori r29, r29, 0x40
.L_81410D10:
/* 81410D10 | 7F E3 FB 78 */	mr r3, r31
/* 81410D14 | 48 02 91 6D */	bl KBD_ConvertSmall__Q29textinput4utilFw
/* 81410D18 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81410D1C | 7C 1F 00 40 */	cmplw r31, r0
/* 81410D20 | 41 82 00 08 */	beq .L_81410D28
/* 81410D24 | 63 BD 00 80 */	ori r29, r29, 0x80
.L_81410D28:
/* 81410D28 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 81410D2C | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81410D30 | 7C 00 E8 40 */	cmplw r0, r29
/* 81410D34 | 41 82 00 18 */	beq .L_81410D4C
/* 81410D38 | 57 A0 00 36 */	clrrwi r0, r29, 4
/* 81410D3C | 38 7E 00 20 */	addi r3, r30, 0x20
/* 81410D40 | 50 80 07 3E */	rlwimi r0, r4, 0, 28, 31
/* 81410D44 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 81410D48 | 48 00 04 B1 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410D4C:
/* 81410D4C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81410D50 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81410D54 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81410D58 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81410D5C | 7C 08 03 A6 */	mtlr r0
/* 81410D60 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81410D64 | 4E 80 00 20 */	blr
.endfn sendInputWChar__Q49textinput8keyboard6pctype4BaseFwb

# .text:0xB90 | 0x81410D68 | size: 0x10
# textinput::keyboard::pctype::Base::setLanguage(textinput::Language)
.fn setLanguage__Q49textinput8keyboard6pctype4BaseFQ29textinput8Language, global
/* 81410D68 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 81410D6C | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81410D70 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81410D74 | 48 00 04 84 */	b refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.endfn setLanguage__Q49textinput8keyboard6pctype4BaseFQ29textinput8Language

# .text:0xBA0 | 0x81410D78 | size: 0xF0
# textinput::keyboard::pctype::Base::updateFixMode()
.fn updateFixMode__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410D78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81410D7C | 7C 08 02 A6 */	mflr r0
/* 81410D80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81410D84 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81410D88 | 7C 7F 1B 78 */	mr r31, r3
/* 81410D8C | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 81410D90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410D94 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81410D98 | 7D 89 03 A6 */	mtctr r12
/* 81410D9C | 4E 80 04 21 */	bctrl
/* 81410DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81410DA4 | 41 82 00 30 */	beq .L_81410DD4
/* 81410DA8 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 81410DAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410DB0 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81410DB4 | 7D 89 03 A6 */	mtctr r12
/* 81410DB8 | 4E 80 04 21 */	bctrl
/* 81410DBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410DC0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81410DC4 | 7D 89 03 A6 */	mtctr r12
/* 81410DC8 | 4E 80 04 21 */	bctrl
/* 81410DCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81410DD0 | 41 82 00 84 */	beq .L_81410E54
.L_81410DD4:
/* 81410DD4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410DD8 | 7F E3 FB 78 */	mr r3, r31
/* 81410DDC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81410DE0 | 7D 89 03 A6 */	mtctr r12
/* 81410DE4 | 4E 80 04 21 */	bctrl
/* 81410DE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81410DEC | 41 82 00 08 */	beq .L_81410DF4
/* 81410DF0 | 48 00 00 64 */	b .L_81410E54
.L_81410DF4:
/* 81410DF4 | 38 00 00 00 */	li r0, 0x0
/* 81410DF8 | 7F E3 FB 78 */	mr r3, r31
/* 81410DFC | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81410E00 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410E04 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81410E08 | 7D 89 03 A6 */	mtctr r12
/* 81410E0C | 4E 80 04 21 */	bctrl
/* 81410E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81410E14 | 41 82 00 1C */	beq .L_81410E30
/* 81410E18 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 81410E1C | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81410E20 | 40 82 00 10 */	bne .L_81410E30
/* 81410E24 | 38 00 00 01 */	li r0, 0x1
/* 81410E28 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81410E2C | 48 00 00 0C */	b .L_81410E38
.L_81410E30:
/* 81410E30 | 38 00 00 00 */	li r0, 0x0
/* 81410E34 | 98 01 00 08 */	stb r0, 0x8(r1)
.L_81410E38:
/* 81410E38 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410E3C | 7F E3 FB 78 */	mr r3, r31
/* 81410E40 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81410E44 | 38 80 00 14 */	li r4, 0x14
/* 81410E48 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410E4C | 7D 89 03 A6 */	mtctr r12
/* 81410E50 | 4E 80 04 21 */	bctrl
.L_81410E54:
/* 81410E54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81410E58 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81410E5C | 7C 08 03 A6 */	mtlr r0
/* 81410E60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81410E64 | 4E 80 00 20 */	blr
.endfn updateFixMode__Q49textinput8keyboard6pctype4BaseFv

# .text:0xC90 | 0x81410E68 | size: 0x8
# textinput::Manager::getToolBar()
.fn getToolBar__Q29textinput7ManagerFv, global
/* 81410E68 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81410E6C | 4E 80 00 20 */	blr
.endfn getToolBar__Q29textinput7ManagerFv

# .text:0xC98 | 0x81410E70 | size: 0x10
# textinput::keyboard::pctype::Base::isABC()
.fn isABC__Q49textinput8keyboard6pctype4BaseFv, global
/* 81410E70 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81410E74 | 7C 00 00 34 */	cntlzw r0, r0
/* 81410E78 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81410E7C | 4E 80 00 20 */	blr
.endfn isABC__Q49textinput8keyboard6pctype4BaseFv

# .text:0xCA8 | 0x81410E80 | size: 0x64
# textinput::keyboard::pctype::Base::setABC(bool)
.fn setABC__Q49textinput8keyboard6pctype4BaseFb, global
/* 81410E80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81410E84 | 7C 08 02 A6 */	mflr r0
/* 81410E88 | 7C 84 00 34 */	cntlzw r4, r4
/* 81410E8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81410E90 | 54 84 D9 7E */	srwi r4, r4, 5
/* 81410E94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81410E98 | 7C 7F 1B 78 */	mr r31, r3
/* 81410E9C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81410EA0 | 7C 04 00 40 */	cmplw r4, r0
/* 81410EA4 | 41 82 00 10 */	beq .L_81410EB4
/* 81410EA8 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 81410EAC | 38 63 00 20 */	addi r3, r3, 0x20
/* 81410EB0 | 48 00 03 49 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410EB4:
/* 81410EB4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81410EB8 | 7F E3 FB 78 */	mr r3, r31
/* 81410EBC | 38 80 00 29 */	li r4, 0x29
/* 81410EC0 | 38 A0 00 00 */	li r5, 0x0
/* 81410EC4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410EC8 | 7D 89 03 A6 */	mtctr r12
/* 81410ECC | 4E 80 04 21 */	bctrl
/* 81410ED0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81410ED4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81410ED8 | 7C 08 03 A6 */	mtlr r0
/* 81410EDC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81410EE0 | 4E 80 00 20 */	blr
.endfn setABC__Q49textinput8keyboard6pctype4BaseFb

# .text:0xD0C | 0x81410EE4 | size: 0x1A4
# textinput::keyboard::pctype::Base::setTranslateMode(textinput::keyboard::pctype::Base::TranslateMode)
.fn setTranslateMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base13TranslateMode, global
/* 81410EE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81410EE8 | 7C 08 02 A6 */	mflr r0
/* 81410EEC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81410EF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81410EF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81410EF8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81410EFC | 7C 9E 23 78 */	mr r30, r4
/* 81410F00 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81410F04 | 7C 7D 1B 78 */	mr r29, r3
/* 81410F08 | 41 82 00 28 */	beq .L_81410F30
/* 81410F0C | 40 80 00 10 */	bge .L_81410F1C
/* 81410F10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81410F14 | 40 80 00 14 */	bge .L_81410F28
/* 81410F18 | 48 00 00 24 */	b .L_81410F3C
.L_81410F1C:
/* 81410F1C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81410F20 | 40 80 00 1C */	bge .L_81410F3C
/* 81410F24 | 48 00 00 14 */	b .L_81410F38
.L_81410F28:
/* 81410F28 | 3B E0 00 00 */	li r31, 0x0
/* 81410F2C | 48 00 00 10 */	b .L_81410F3C
.L_81410F30:
/* 81410F30 | 3B E0 00 01 */	li r31, 0x1
/* 81410F34 | 48 00 00 08 */	b .L_81410F3C
.L_81410F38:
/* 81410F38 | 3B E0 00 02 */	li r31, 0x2
.L_81410F3C:
/* 81410F3C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81410F40 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81410F44 | 7C 1F 00 40 */	cmplw r31, r0
/* 81410F48 | 41 82 01 24 */	beq .L_8141106C
/* 81410F4C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81410F50 | 7F A3 EB 78 */	mr r3, r29
/* 81410F54 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81410F58 | 7D 89 03 A6 */	mtctr r12
/* 81410F5C | 4E 80 04 21 */	bctrl
/* 81410F60 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 81410F64 | 41 82 00 20 */	beq .L_81410F84
/* 81410F68 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81410F6C | 7F A3 EB 78 */	mr r3, r29
/* 81410F70 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81410F74 | 7D 89 03 A6 */	mtctr r12
/* 81410F78 | 4E 80 04 21 */	bctrl
/* 81410F7C | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81410F80 | 40 82 00 30 */	bne .L_81410FB0
.L_81410F84:
/* 81410F84 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 81410F88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410F8C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81410F90 | 7D 89 03 A6 */	mtctr r12
/* 81410F94 | 4E 80 04 21 */	bctrl
/* 81410F98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410F9C | 38 80 00 06 */	li r4, 0x6
/* 81410FA0 | 38 A0 00 00 */	li r5, 0x0
/* 81410FA4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81410FA8 | 7D 89 03 A6 */	mtctr r12
/* 81410FAC | 4E 80 04 21 */	bctrl
.L_81410FB0:
/* 81410FB0 | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 81410FB4 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81410FB8 | 7C 00 F8 40 */	cmplw r0, r31
/* 81410FBC | 41 82 00 18 */	beq .L_81410FD4
/* 81410FC0 | 57 E0 07 3E */	clrlwi r0, r31, 28
/* 81410FC4 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 81410FC8 | 50 80 00 36 */	rlwimi r0, r4, 0, 0, 27
/* 81410FCC | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 81410FD0 | 48 00 02 29 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81410FD4:
/* 81410FD4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81410FD8 | 7F A3 EB 78 */	mr r3, r29
/* 81410FDC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81410FE0 | 7D 89 03 A6 */	mtctr r12
/* 81410FE4 | 4E 80 04 21 */	bctrl
/* 81410FE8 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81410FEC | 40 82 00 38 */	bne .L_81411024
/* 81410FF0 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 81410FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81410FF8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81410FFC | 7D 89 03 A6 */	mtctr r12
/* 81411000 | 4E 80 04 21 */	bctrl
/* 81411004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411008 | 41 82 00 1C */	beq .L_81411024
/* 8141100C | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 81411010 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411014 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81411018 | 7D 89 03 A6 */	mtctr r12
/* 8141101C | 4E 80 04 21 */	bctrl
/* 81411020 | 48 01 74 85 */	bl checkValidation__Q39textinput12candidatebox4BaseFv
.L_81411024:
/* 81411024 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81411028 | 7F A3 EB 78 */	mr r3, r29
/* 8141102C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81411030 | 38 80 00 12 */	li r4, 0x12
/* 81411034 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81411038 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141103C | 7D 89 03 A6 */	mtctr r12
/* 81411040 | 4E 80 04 21 */	bctrl
/* 81411044 | 3C A0 81 61 */	lis r5, lbl_816145C8@ha
/* 81411048 | 7F A3 EB 78 */	mr r3, r29
/* 8141104C | 38 A5 45 C8 */	addi r5, r5, lbl_816145C8@l
/* 81411050 | 38 80 00 29 */	li r4, 0x29
/* 81411054 | 90 BD 00 1C */	stw r5, 0x1c(r29)
/* 81411058 | 38 A0 00 00 */	li r5, 0x0
/* 8141105C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81411060 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411064 | 7D 89 03 A6 */	mtctr r12
/* 81411068 | 4E 80 04 21 */	bctrl
.L_8141106C:
/* 8141106C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81411070 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81411074 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81411078 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8141107C | 7C 08 03 A6 */	mtlr r0
/* 81411080 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81411084 | 4E 80 00 20 */	blr
.endfn setTranslateMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base13TranslateMode

# .text:0xEB0 | 0x81411088 | size: 0x8
# textinput::Manager::getCandidateBox()
.fn getCandidateBox__Q29textinput7ManagerFv, global
/* 81411088 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8141108C | 4E 80 00 20 */	blr
.endfn getCandidateBox__Q29textinput7ManagerFv

# .text:0xEB8 | 0x81411090 | size: 0x168
# textinput::keyboard::pctype::LayoutByNW4R::setABC(bool)
.fn setABC__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 81411090 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411094 | 7C 08 02 A6 */	mflr r0
/* 81411098 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141109C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814110A0 | 7C 9F 23 78 */	mr r31, r4
/* 814110A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814110A8 | 7C 7E 1B 78 */	mr r30, r3
/* 814110AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814110B0 | 81 8C 01 40 */	lwz r12, 0x140(r12)
/* 814110B4 | 7D 89 03 A6 */	mtctr r12
/* 814110B8 | 4E 80 04 21 */	bctrl
/* 814110BC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814110C0 | 7F C3 F3 78 */	mr r3, r30
/* 814110C4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814110C8 | 7D 89 03 A6 */	mtctr r12
/* 814110CC | 4E 80 04 21 */	bctrl
/* 814110D0 | 7C 1F 18 40 */	cmplw r31, r3
/* 814110D4 | 41 82 00 D0 */	beq .L_814111A4
/* 814110D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814110DC | 41 82 00 68 */	beq .L_81411144
/* 814110E0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814110E4 | 3C 80 81 66 */	lis r4, lbl_8165B63C@ha
/* 814110E8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814110EC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814110F0 | 38 84 B6 3C */	addi r4, r4, lbl_8165B63C@l
/* 814110F4 | 7D 89 03 A6 */	mtctr r12
/* 814110F8 | 4E 80 04 21 */	bctrl
/* 814110FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411100 | 38 80 00 04 */	li r4, 0x4
/* 81411104 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81411108 | 7D 89 03 A6 */	mtctr r12
/* 8141110C | 4E 80 04 21 */	bctrl
/* 81411110 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81411114 | 3C 80 81 66 */	lis r4, lbl_8165B64C@ha
/* 81411118 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 8141111C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81411120 | 38 84 B6 4C */	addi r4, r4, lbl_8165B64C@l
/* 81411124 | 7D 89 03 A6 */	mtctr r12
/* 81411128 | 4E 80 04 21 */	bctrl
/* 8141112C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411130 | 38 80 00 06 */	li r4, 0x6
/* 81411134 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81411138 | 7D 89 03 A6 */	mtctr r12
/* 8141113C | 4E 80 04 21 */	bctrl
/* 81411140 | 48 00 00 64 */	b .L_814111A4
.L_81411144:
/* 81411144 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81411148 | 3C 80 81 66 */	lis r4, lbl_8165B63C@ha
/* 8141114C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81411150 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81411154 | 38 84 B6 3C */	addi r4, r4, lbl_8165B63C@l
/* 81411158 | 7D 89 03 A6 */	mtctr r12
/* 8141115C | 4E 80 04 21 */	bctrl
/* 81411160 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411164 | 38 80 00 06 */	li r4, 0x6
/* 81411168 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141116C | 7D 89 03 A6 */	mtctr r12
/* 81411170 | 4E 80 04 21 */	bctrl
/* 81411174 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81411178 | 3C 80 81 66 */	lis r4, lbl_8165B64C@ha
/* 8141117C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81411180 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81411184 | 38 84 B6 4C */	addi r4, r4, lbl_8165B64C@l
/* 81411188 | 7D 89 03 A6 */	mtctr r12
/* 8141118C | 4E 80 04 21 */	bctrl
/* 81411190 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411194 | 38 80 00 04 */	li r4, 0x4
/* 81411198 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141119C | 7D 89 03 A6 */	mtctr r12
/* 814111A0 | 4E 80 04 21 */	bctrl
.L_814111A4:
/* 814111A4 | 7F E3 00 34 */	cntlzw r3, r31
/* 814111A8 | 80 1E 00 24 */	lwz r0, 0x24(r30)
/* 814111AC | 54 63 D9 7E */	srwi r3, r3, 5
/* 814111B0 | 7C 03 00 40 */	cmplw r3, r0
/* 814111B4 | 41 82 00 10 */	beq .L_814111C4
/* 814111B8 | 90 7E 00 24 */	stw r3, 0x24(r30)
/* 814111BC | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814111C0 | 48 00 00 39 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_814111C4:
/* 814111C4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814111C8 | 7F C3 F3 78 */	mr r3, r30
/* 814111CC | 38 80 00 29 */	li r4, 0x29
/* 814111D0 | 38 A0 00 00 */	li r5, 0x0
/* 814111D4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814111D8 | 7D 89 03 A6 */	mtctr r12
/* 814111DC | 4E 80 04 21 */	bctrl
/* 814111E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814111E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814111E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814111EC | 7C 08 03 A6 */	mtlr r0
/* 814111F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814111F4 | 4E 80 00 20 */	blr
.endfn setABC__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x1020 | 0x814111F8 | size: 0x2CC
# textinput::keyboard::pctype::Base::KeyState::refresh_()
.fn refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv, global
/* 814111F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814111FC | 7C 08 02 A6 */	mflr r0
/* 81411200 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81411204 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81411208 | 7C 7F 1B 78 */	mr r31, r3
/* 8141120C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81411210 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81411214 | 41 82 00 14 */	beq .L_81411228
/* 81411218 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141121C | 41 82 00 0C */	beq .L_81411228
/* 81411220 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81411224 | 40 82 00 14 */	bne .L_81411238
.L_81411228:
/* 81411228 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8141122C | 88 04 00 3C */	lbz r0, 0x3c(r4)
/* 81411230 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81411234 | 41 82 00 20 */	beq .L_81411254
.L_81411238:
/* 81411238 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8141123C | 54 80 07 3F */	clrlwi. r0, r4, 28
/* 81411240 | 41 82 00 14 */	beq .L_81411254
/* 81411244 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81411248 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8141124C | 7F E3 FB 78 */	mr r3, r31
/* 81411250 | 4B FF FF A9 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81411254:
/* 81411254 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81411258 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 8141125C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81411260 | 41 81 00 38 */	bgt .L_81411298
/* 81411264 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81411268 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8141126C | 28 00 00 02 */	cmplwi r0, 0x2
/* 81411270 | 40 82 00 28 */	bne .L_81411298
/* 81411274 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81411278 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 8141127C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81411280 | 41 82 00 18 */	beq .L_81411298
/* 81411284 | 54 60 00 36 */	clrrwi r0, r3, 4
/* 81411288 | 7F E3 FB 78 */	mr r3, r31
/* 8141128C | 60 00 00 01 */	ori r0, r0, 0x1
/* 81411290 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81411294 | 4B FF FF 65 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81411298:
/* 81411298 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8141129C | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 814112A0 | 40 82 00 20 */	bne .L_814112C0
/* 814112A4 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814112A8 | 3C 60 81 61 */	lis r3, lbl_81614500@ha
/* 814112AC | 38 63 45 00 */	addi r3, r3, lbl_81614500@l
/* 814112B0 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814112B4 | 7C 03 02 14 */	add r0, r3, r0
/* 814112B8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814112BC | 48 00 00 34 */	b .L_814112F0
.L_814112C0:
/* 814112C0 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814112C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814112C8 | 40 82 00 14 */	bne .L_814112DC
/* 814112CC | 3C 60 81 61 */	lis r3, lbl_816145C8@ha
/* 814112D0 | 38 63 45 C8 */	addi r3, r3, lbl_816145C8@l
/* 814112D4 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 814112D8 | 48 00 00 18 */	b .L_814112F0
.L_814112DC:
/* 814112DC | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814112E0 | 3C 60 81 61 */	lis r3, lbl_81614500@ha
/* 814112E4 | 38 63 45 00 */	addi r3, r3, lbl_81614500@l
/* 814112E8 | 7C 03 02 14 */	add r0, r3, r0
/* 814112EC | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_814112F0:
/* 814112F0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814112F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814112F8 | 40 82 00 EC */	bne .L_814113E4
/* 814112FC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81411300 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81411304 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81411308 | 41 82 00 48 */	beq .L_81411350
/* 8141130C | 40 80 00 10 */	bge .L_8141131C
/* 81411310 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81411314 | 40 80 00 14 */	bge .L_81411328
/* 81411318 | 48 00 01 7C */	b .L_81411494
.L_8141131C:
/* 8141131C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81411320 | 40 80 01 74 */	bge .L_81411494
/* 81411324 | 48 00 00 78 */	b .L_8141139C
.L_81411328:
/* 81411328 | 38 00 00 01 */	li r0, 0x1
/* 8141132C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81411330 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81411334 | 38 80 00 14 */	li r4, 0x14
/* 81411338 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8141133C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411340 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411344 | 7D 89 03 A6 */	mtctr r12
/* 81411348 | 4E 80 04 21 */	bctrl
/* 8141134C | 48 00 01 48 */	b .L_81411494
.L_81411350:
/* 81411350 | 38 60 00 00 */	li r3, 0x0
/* 81411354 | 38 00 00 01 */	li r0, 0x1
/* 81411358 | 98 61 00 0C */	stb r3, 0xc(r1)
/* 8141135C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81411360 | 38 80 00 14 */	li r4, 0x14
/* 81411364 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81411368 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8141136C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411370 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411374 | 7D 89 03 A6 */	mtctr r12
/* 81411378 | 4E 80 04 21 */	bctrl
/* 8141137C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81411380 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81411384 | 38 80 00 13 */	li r4, 0x13
/* 81411388 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141138C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411390 | 7D 89 03 A6 */	mtctr r12
/* 81411394 | 4E 80 04 21 */	bctrl
/* 81411398 | 48 00 00 FC */	b .L_81411494
.L_8141139C:
/* 8141139C | 38 00 00 00 */	li r0, 0x0
/* 814113A0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814113A4 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 814113A8 | 38 80 00 14 */	li r4, 0x14
/* 814113AC | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814113B0 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 814113B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814113B8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814113BC | 7D 89 03 A6 */	mtctr r12
/* 814113C0 | 4E 80 04 21 */	bctrl
/* 814113C4 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 814113C8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814113CC | 38 80 00 13 */	li r4, 0x13
/* 814113D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814113D4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814113D8 | 7D 89 03 A6 */	mtctr r12
/* 814113DC | 4E 80 04 21 */	bctrl
/* 814113E0 | 48 00 00 B4 */	b .L_81411494
.L_814113E4:
/* 814113E4 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814113E8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814113EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814113F0 | 41 82 00 60 */	beq .L_81411450
/* 814113F4 | 40 80 00 A0 */	bge .L_81411494
/* 814113F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814113FC | 40 80 00 08 */	bge .L_81411404
/* 81411400 | 48 00 00 94 */	b .L_81411494
.L_81411404:
/* 81411404 | 38 60 00 00 */	li r3, 0x0
/* 81411408 | 38 00 00 01 */	li r0, 0x1
/* 8141140C | 98 61 00 0C */	stb r3, 0xc(r1)
/* 81411410 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81411414 | 38 80 00 14 */	li r4, 0x14
/* 81411418 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8141141C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81411420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411424 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411428 | 7D 89 03 A6 */	mtctr r12
/* 8141142C | 4E 80 04 21 */	bctrl
/* 81411430 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81411434 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81411438 | 38 80 00 13 */	li r4, 0x13
/* 8141143C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411440 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411444 | 7D 89 03 A6 */	mtctr r12
/* 81411448 | 4E 80 04 21 */	bctrl
/* 8141144C | 48 00 00 48 */	b .L_81411494
.L_81411450:
/* 81411450 | 38 00 00 00 */	li r0, 0x0
/* 81411454 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81411458 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8141145C | 38 80 00 14 */	li r4, 0x14
/* 81411460 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81411464 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81411468 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141146C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81411470 | 7D 89 03 A6 */	mtctr r12
/* 81411474 | 4E 80 04 21 */	bctrl
/* 81411478 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8141147C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81411480 | 38 80 00 13 */	li r4, 0x13
/* 81411484 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411488 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141148C | 7D 89 03 A6 */	mtctr r12
/* 81411490 | 4E 80 04 21 */	bctrl
.L_81411494:
/* 81411494 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81411498 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141149C | 41 82 00 14 */	beq .L_814114B0
/* 814114A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814114A4 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814114A8 | 7D 89 03 A6 */	mtctr r12
/* 814114AC | 4E 80 04 21 */	bctrl
.L_814114B0:
/* 814114B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814114B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814114B8 | 7C 08 03 A6 */	mtlr r0
/* 814114BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814114C0 | 4E 80 00 20 */	blr
.endfn refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv

# .text:0x12EC | 0x814114C4 | size: 0x4
# textinput::keyboard::pctype::Base::refreshState()
.fn refreshState__Q49textinput8keyboard6pctype4BaseFv, global
/* 814114C4 | 4E 80 00 20 */	blr
.endfn refreshState__Q49textinput8keyboard6pctype4BaseFv

# .text:0x12F0 | 0x814114C8 | size: 0x2A4
# textinput::keyboard::pctype::Base::KeyState::refreshText(nw4r::lyt::Pane*)
.fn refreshText__Q59textinput8keyboard6pctype4Base8KeyStateFPQ34nw4r3lyt4Pane, global
/* 814114C8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814114CC | 7C 08 02 A6 */	mflr r0
/* 814114D0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814114D4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814114D8 | 48 1E 7F DD */	bl _savegpr_24
/* 814114DC | 3F 60 81 61 */	lis r27, lbl_81614A54@ha
/* 814114E0 | 3F 40 81 61 */	lis r26, lbl_81614A20@ha
/* 814114E4 | 7C 7C 1B 78 */	mr r28, r3
/* 814114E8 | 7C 9D 23 78 */	mr r29, r4
/* 814114EC | 3B 7B 4A 54 */	addi r27, r27, lbl_81614A54@l
/* 814114F0 | 3B 5A 4A 20 */	addi r26, r26, lbl_81614A20@l
/* 814114F4 | 3B C0 00 00 */	li r30, 0x0
/* 814114F8 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 814114FC | 3B 20 00 00 */	li r25, 0x0
.L_81411500:
/* 81411500 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81411504 | 80 9C 00 10 */	lwz r4, 0x10(r28)
/* 81411508 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8141150C | 38 61 00 24 */	addi r3, r1, 0x24
/* 81411510 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81411514 | 38 80 00 11 */	li r4, 0x11
/* 81411518 | 38 C0 00 00 */	li r6, 0x0
/* 8141151C | 7C A5 00 2E */	lwzx r5, r5, r0
/* 81411520 | 38 E0 00 54 */	li r7, 0x54
/* 81411524 | 48 02 8D 39 */	bl replaceChar__Q29textinput4utilFPcUlPCcic
/* 81411528 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141152C | 7F A3 EB 78 */	mr r3, r29
/* 81411530 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81411534 | 38 A0 00 01 */	li r5, 0x1
/* 81411538 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8141153C | 7D 89 03 A6 */	mtctr r12
/* 81411540 | 4E 80 04 21 */	bctrl
/* 81411544 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411548 | 7C 78 1B 78 */	mr r24, r3
/* 8141154C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81411550 | 7D 89 03 A6 */	mtctr r12
/* 81411554 | 4E 80 04 21 */	bctrl
/* 81411558 | 48 00 00 18 */	b .L_81411570
.L_8141155C:
/* 8141155C | 7C 03 F8 40 */	cmplw r3, r31
/* 81411560 | 40 82 00 0C */	bne .L_8141156C
/* 81411564 | 38 00 00 01 */	li r0, 0x1
/* 81411568 | 48 00 00 14 */	b .L_8141157C
.L_8141156C:
/* 8141156C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81411570:
/* 81411570 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411574 | 40 82 FF E8 */	bne .L_8141155C
/* 81411578 | 38 00 00 00 */	li r0, 0x0
.L_8141157C:
/* 8141157C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81411580 | 41 82 00 08 */	beq .L_81411588
/* 81411584 | 48 00 00 08 */	b .L_8141158C
.L_81411588:
/* 81411588 | 3B 00 00 00 */	li r24, 0x0
.L_8141158C:
/* 8141158C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81411590 | 41 82 00 B8 */	beq .L_81411648
/* 81411594 | 7F 83 E3 78 */	mr r3, r28
/* 81411598 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8141159C | 48 00 02 11 */	bl getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFUl
/* 814115A0 | B0 61 00 0C */	sth r3, 0xc(r1)
/* 814115A4 | B3 21 00 0E */	sth r25, 0xe(r1)
/* 814115A8 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814115AC | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814115B0 | 40 82 00 7C */	bne .L_8141162C
/* 814115B4 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814115B8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814115BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814115C0 | 40 82 00 6C */	bne .L_8141162C
/* 814115C4 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 814115C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814115CC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 814115D0 | 7D 89 03 A6 */	mtctr r12
/* 814115D4 | 4E 80 04 21 */	bctrl
/* 814115D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814115DC | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 814115E0 | 41 82 00 0C */	beq .L_814115EC
/* 814115E4 | 48 02 81 15 */	bl reverseLetterCaseW__Q29textinput4utilFw
/* 814115E8 | 54 63 04 3E */	clrlwi r3, r3, 16
.L_814115EC:
/* 814115EC | 28 03 00 61 */	cmplwi r3, 0x61
/* 814115F0 | 41 80 00 1C */	blt .L_8141160C
/* 814115F4 | 28 03 00 7A */	cmplwi r3, 0x7a
/* 814115F8 | 41 81 00 14 */	bgt .L_8141160C
/* 814115FC | 54 60 0B FC */	clrlslwi r0, r3, 16, 1
/* 81411600 | 7C 7A 02 14 */	add r3, r26, r0
/* 81411604 | A0 63 FF 3E */	lhz r3, -0xc2(r3)
/* 81411608 | 48 00 00 20 */	b .L_81411628
.L_8141160C:
/* 8141160C | 28 03 00 41 */	cmplwi r3, 0x41
/* 81411610 | 41 80 00 18 */	blt .L_81411628
/* 81411614 | 28 03 00 5A */	cmplwi r3, 0x5a
/* 81411618 | 41 81 00 10 */	bgt .L_81411628
/* 8141161C | 54 60 0B FC */	clrlslwi r0, r3, 16, 1
/* 81411620 | 7C 7B 02 14 */	add r3, r27, r0
/* 81411624 | A0 63 FF 7E */	lhz r3, -0x82(r3)
.L_81411628:
/* 81411628 | B0 61 00 0C */	sth r3, 0xc(r1)
.L_8141162C:
/* 8141162C | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81411630 | 7F 03 C3 78 */	mr r3, r24
/* 81411634 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81411638 | 38 A0 00 00 */	li r5, 0x0
/* 8141163C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81411640 | 7D 89 03 A6 */	mtctr r12
/* 81411644 | 4E 80 04 21 */	bctrl
.L_81411648:
/* 81411648 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8141164C | 28 1E 00 32 */	cmplwi r30, 0x32
/* 81411650 | 41 80 FE B0 */	blt .L_81411500
/* 81411654 | 3B C0 00 00 */	li r30, 0x0
/* 81411658 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 8141165C | 3B 60 00 00 */	li r27, 0x0
.L_81411660:
/* 81411660 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81411664 | 80 9C 00 10 */	lwz r4, 0x10(r28)
/* 81411668 | 1F 20 00 1A */	mulli r25, r0, 0x1a
/* 8141166C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81411670 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81411674 | 38 80 00 11 */	li r4, 0x11
/* 81411678 | 38 C0 00 00 */	li r6, 0x0
/* 8141167C | 7C A0 CA 14 */	add r5, r0, r25
/* 81411680 | 38 E0 00 54 */	li r7, 0x54
/* 81411684 | 48 02 8B D9 */	bl replaceChar__Q29textinput4utilFPcUlPCcic
/* 81411688 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141168C | 7F A3 EB 78 */	mr r3, r29
/* 81411690 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81411694 | 38 A0 00 01 */	li r5, 0x1
/* 81411698 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8141169C | 7D 89 03 A6 */	mtctr r12
/* 814116A0 | 4E 80 04 21 */	bctrl
/* 814116A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814116A8 | 7C 78 1B 78 */	mr r24, r3
/* 814116AC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814116B0 | 7D 89 03 A6 */	mtctr r12
/* 814116B4 | 4E 80 04 21 */	bctrl
/* 814116B8 | 48 00 00 18 */	b .L_814116D0
.L_814116BC:
/* 814116BC | 7C 03 F8 40 */	cmplw r3, r31
/* 814116C0 | 40 82 00 0C */	bne .L_814116CC
/* 814116C4 | 38 00 00 01 */	li r0, 0x1
/* 814116C8 | 48 00 00 14 */	b .L_814116DC
.L_814116CC:
/* 814116CC | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814116D0:
/* 814116D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814116D4 | 40 82 FF E8 */	bne .L_814116BC
/* 814116D8 | 38 00 00 00 */	li r0, 0x0
.L_814116DC:
/* 814116DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814116E0 | 41 82 00 08 */	beq .L_814116E8
/* 814116E4 | 48 00 00 08 */	b .L_814116EC
.L_814116E8:
/* 814116E8 | 3B 00 00 00 */	li r24, 0x0
.L_814116EC:
/* 814116EC | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814116F0 | 41 82 00 58 */	beq .L_81411748
/* 814116F4 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814116F8 | 7F 03 C3 78 */	mr r3, r24
/* 814116FC | 80 DC 00 10 */	lwz r6, 0x10(r28)
/* 81411700 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81411704 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81411708 | 38 A0 00 00 */	li r5, 0x0
/* 8141170C | 7C 00 00 34 */	cntlzw r0, r0
/* 81411710 | 80 E6 00 04 */	lwz r7, 0x4(r6)
/* 81411714 | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 81411718 | 7C C0 00 D0 */	neg r6, r0
/* 8141171C | 38 C6 00 03 */	addi r6, r6, 0x3
/* 81411720 | 7C 07 CA 14 */	add r0, r7, r25
/* 81411724 | 54 C6 08 3C */	slwi r6, r6, 1
/* 81411728 | 7C C6 02 14 */	add r6, r6, r0
/* 8141172C | A0 06 00 12 */	lhz r0, 0x12(r6)
/* 81411730 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81411734 | B3 61 00 0A */	sth r27, 0xa(r1)
/* 81411738 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8141173C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81411740 | 7D 89 03 A6 */	mtctr r12
/* 81411744 | 4E 80 04 21 */	bctrl
.L_81411748:
/* 81411748 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8141174C | 28 1E 00 38 */	cmplwi r30, 0x38
/* 81411750 | 41 80 FF 10 */	blt .L_81411660
/* 81411754 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81411758 | 48 1E 7D A9 */	bl _restgpr_24
/* 8141175C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81411760 | 7C 08 03 A6 */	mtlr r0
/* 81411764 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81411768 | 4E 80 00 20 */	blr
.endfn refreshText__Q59textinput8keyboard6pctype4Base8KeyStateFPQ34nw4r3lyt4Pane

# .text:0x1594 | 0x8141176C | size: 0x40
# textinput::keyboard::pctype::Base::KeyState::setABCFlag(unsigned long)
.fn setABCFlag__Q59textinput8keyboard6pctype4Base8KeyStateFUl, global
/* 8141176C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81411770 | 54 A0 00 36 */	clrrwi r0, r5, 4
/* 81411774 | 7C 00 20 40 */	cmplw r0, r4
/* 81411778 | 4D 82 00 20 */	beqlr
/* 8141177C | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81411780 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81411784 | 50 A0 07 3E */	rlwimi r0, r5, 0, 28, 31
/* 81411788 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8141178C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81411790 | 4D 82 00 20 */	beqlr
/* 81411794 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 81411798 | 7C C3 33 78 */	mr r3, r6
/* 8141179C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814117A0 | 7D 89 03 A6 */	mtctr r12
/* 814117A4 | 4E 80 04 20 */	bctr
/* 814117A8 | 4E 80 00 20 */	blr
.endfn setABCFlag__Q59textinput8keyboard6pctype4Base8KeyStateFUl

# .text:0x15D4 | 0x814117AC | size: 0x1F4
# textinput::keyboard::pctype::Base::KeyState::getWCCode(unsigned long)
.fn getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFUl, global
/* 814117AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814117B0 | 7C 08 02 A6 */	mflr r0
/* 814117B4 | 38 E0 00 00 */	li r7, 0x0
/* 814117B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814117BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814117C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814117C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814117C8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814117CC | 54 A0 06 73 */	rlwinm. r0, r5, 0, 25, 25
/* 814117D0 | 41 82 00 08 */	beq .L_814117D8
/* 814117D4 | 60 E7 00 01 */	ori r7, r7, 0x1
.L_814117D8:
/* 814117D8 | 54 A0 06 31 */	rlwinm. r0, r5, 0, 24, 24
/* 814117DC | 41 82 00 08 */	beq .L_814117E4
/* 814117E0 | 60 E7 00 02 */	ori r7, r7, 0x2
.L_814117E4:
/* 814117E4 | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 814117E8 | 1C A4 00 0C */	mulli r5, r4, 0xc
/* 814117EC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814117F0 | 54 E4 08 3C */	slwi r4, r7, 1
/* 814117F4 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 814117F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814117FC | 7C 06 2A 14 */	add r0, r6, r5
/* 81411800 | 7C 80 22 14 */	add r4, r0, r4
/* 81411804 | A3 E4 00 04 */	lhz r31, 0x4(r4)
/* 81411808 | 40 82 00 60 */	bne .L_81411868
/* 8141180C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81411810 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81411814 | 40 82 00 54 */	bne .L_81411868
/* 81411818 | 28 1F 30 01 */	cmplwi r31, 0x3001
/* 8141181C | 40 82 00 0C */	bne .L_81411828
/* 81411820 | 3B E0 00 2C */	li r31, 0x2c
/* 81411824 | 48 00 01 60 */	b .L_81411984
.L_81411828:
/* 81411828 | 28 1F 30 02 */	cmplwi r31, 0x3002
/* 8141182C | 40 82 00 0C */	bne .L_81411838
/* 81411830 | 3B E0 00 2E */	li r31, 0x2e
/* 81411834 | 48 00 01 50 */	b .L_81411984
.L_81411838:
/* 81411838 | 28 1F 30 FC */	cmplwi r31, 0x30fc
/* 8141183C | 40 82 00 0C */	bne .L_81411848
/* 81411840 | 3B E0 00 2D */	li r31, 0x2d
/* 81411844 | 48 00 01 40 */	b .L_81411984
.L_81411848:
/* 81411848 | 28 1F 30 0C */	cmplwi r31, 0x300c
/* 8141184C | 40 82 00 0C */	bne .L_81411858
/* 81411850 | 3B E0 00 5B */	li r31, 0x5b
/* 81411854 | 48 00 01 30 */	b .L_81411984
.L_81411858:
/* 81411858 | 28 1F 30 0D */	cmplwi r31, 0x300d
/* 8141185C | 40 82 01 28 */	bne .L_81411984
/* 81411860 | 3B E0 00 5D */	li r31, 0x5d
/* 81411864 | 48 00 01 20 */	b .L_81411984
.L_81411868:
/* 81411868 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8141186C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411870 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81411874 | 7D 89 03 A6 */	mtctr r12
/* 81411878 | 4E 80 04 21 */	bctrl
/* 8141187C | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81411880 | 40 82 01 04 */	bne .L_81411984
/* 81411884 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81411888 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8141188C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81411890 | 40 82 00 F4 */	bne .L_81411984
/* 81411894 | 28 1F 00 5B */	cmplwi r31, 0x5b
/* 81411898 | 40 82 00 0C */	bne .L_814118A4
/* 8141189C | 3B E0 30 0A */	li r31, 0x300a
/* 814118A0 | 48 00 00 E4 */	b .L_81411984
.L_814118A4:
/* 814118A4 | 28 1F 00 5D */	cmplwi r31, 0x5d
/* 814118A8 | 40 82 00 0C */	bne .L_814118B4
/* 814118AC | 3B E0 30 0B */	li r31, 0x300b
/* 814118B0 | 48 00 00 D4 */	b .L_81411984
.L_814118B4:
/* 814118B4 | 28 1F 00 2E */	cmplwi r31, 0x2e
/* 814118B8 | 40 82 00 0C */	bne .L_814118C4
/* 814118BC | 3B E0 30 02 */	li r31, 0x3002
/* 814118C0 | 48 00 00 C4 */	b .L_81411984
.L_814118C4:
/* 814118C4 | 28 1F 00 27 */	cmplwi r31, 0x27
/* 814118C8 | 40 82 00 0C */	bne .L_814118D4
/* 814118CC | 3B E0 30 01 */	li r31, 0x3001
/* 814118D0 | 48 00 00 B4 */	b .L_81411984
.L_814118D4:
/* 814118D4 | 28 1F 00 2C */	cmplwi r31, 0x2c
/* 814118D8 | 40 82 00 10 */	bne .L_814118E8
/* 814118DC | 3C 60 00 01 */	lis r3, 0x1
/* 814118E0 | 3B E3 FF 0C */	subi r31, r3, 0xf4
/* 814118E4 | 48 00 00 A0 */	b .L_81411984
.L_814118E8:
/* 814118E8 | 28 1F 00 2D */	cmplwi r31, 0x2d
/* 814118EC | 40 82 00 10 */	bne .L_814118FC
/* 814118F0 | 3C 60 00 01 */	lis r3, 0x1
/* 814118F4 | 3B E3 FF 0D */	subi r31, r3, 0xf3
/* 814118F8 | 48 00 00 8C */	b .L_81411984
.L_814118FC:
/* 814118FC | 28 1F 00 5F */	cmplwi r31, 0x5f
/* 81411900 | 40 82 00 10 */	bne .L_81411910
/* 81411904 | 3C 60 00 01 */	lis r3, 0x1
/* 81411908 | 3B E3 FF 3F */	subi r31, r3, 0xc1
/* 8141190C | 48 00 00 78 */	b .L_81411984
.L_81411910:
/* 81411910 | 28 1F 00 3A */	cmplwi r31, 0x3a
/* 81411914 | 40 82 00 10 */	bne .L_81411924
/* 81411918 | 3C 60 00 01 */	lis r3, 0x1
/* 8141191C | 3B E3 FF 1A */	subi r31, r3, 0xe6
/* 81411920 | 48 00 00 64 */	b .L_81411984
.L_81411924:
/* 81411924 | 28 1F 00 3B */	cmplwi r31, 0x3b
/* 81411928 | 40 82 00 10 */	bne .L_81411938
/* 8141192C | 3C 60 00 01 */	lis r3, 0x1
/* 81411930 | 3B E3 FF 1B */	subi r31, r3, 0xe5
/* 81411934 | 48 00 00 50 */	b .L_81411984
.L_81411938:
/* 81411938 | 28 1F 00 21 */	cmplwi r31, 0x21
/* 8141193C | 40 82 00 10 */	bne .L_8141194C
/* 81411940 | 3C 60 00 01 */	lis r3, 0x1
/* 81411944 | 3B E3 FF 01 */	subi r31, r3, 0xff
/* 81411948 | 48 00 00 3C */	b .L_81411984
.L_8141194C:
/* 8141194C | 28 1F 00 3F */	cmplwi r31, 0x3f
/* 81411950 | 40 82 00 10 */	bne .L_81411960
/* 81411954 | 3C 60 00 01 */	lis r3, 0x1
/* 81411958 | 3B E3 FF 1F */	subi r31, r3, 0xe1
/* 8141195C | 48 00 00 28 */	b .L_81411984
.L_81411960:
/* 81411960 | 28 1F 00 28 */	cmplwi r31, 0x28
/* 81411964 | 40 82 00 10 */	bne .L_81411974
/* 81411968 | 3C 60 00 01 */	lis r3, 0x1
/* 8141196C | 3B E3 FF 08 */	subi r31, r3, 0xf8
/* 81411970 | 48 00 00 14 */	b .L_81411984
.L_81411974:
/* 81411974 | 28 1F 00 29 */	cmplwi r31, 0x29
/* 81411978 | 40 82 00 0C */	bne .L_81411984
/* 8141197C | 3C 60 00 01 */	lis r3, 0x1
/* 81411980 | 3B E3 FF 09 */	subi r31, r3, 0xf7
.L_81411984:
/* 81411984 | 7F E3 FB 78 */	mr r3, r31
/* 81411988 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141198C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81411990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411994 | 7C 08 03 A6 */	mtlr r0
/* 81411998 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141199C | 4E 80 00 20 */	blr
.endfn getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFUl

# .text:0x17C8 | 0x814119A0 | size: 0xE4
# textinput::keyboard::pctype::Base::KeyState::getWCCode(char*)
.fn getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFPc, global
/* 814119A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814119A4 | 7C 08 02 A6 */	mflr r0
/* 814119A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814119AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814119B0 | 48 1E 7B 11 */	bl _savegpr_27
/* 814119B4 | 7C 7D 1B 78 */	mr r29, r3
/* 814119B8 | 7C 9E 23 78 */	mr r30, r4
/* 814119BC | 3B 60 00 00 */	li r27, 0x0
/* 814119C0 | 3B 80 00 00 */	li r28, 0x0
.L_814119C4:
/* 814119C4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814119C8 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 814119CC | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 814119D0 | 7F C4 F3 78 */	mr r4, r30
/* 814119D4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814119D8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814119DC | 48 02 88 19 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814119E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814119E4 | 41 82 00 14 */	beq .L_814119F8
/* 814119E8 | 7F A3 EB 78 */	mr r3, r29
/* 814119EC | 57 84 04 3E */	clrlwi r4, r28, 16
/* 814119F0 | 4B FF FD BD */	bl getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFUl
/* 814119F4 | 7C 7B 1B 78 */	mr r27, r3
.L_814119F8:
/* 814119F8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814119FC | 28 1C 00 32 */	cmplwi r28, 0x32
/* 81411A00 | 41 80 FF C4 */	blt .L_814119C4
/* 81411A04 | 3B E0 00 00 */	li r31, 0x0
.L_81411A08:
/* 81411A08 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81411A0C | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 81411A10 | 1F 80 00 1A */	mulli r28, r0, 0x1a
/* 81411A14 | 7F C4 F3 78 */	mr r4, r30
/* 81411A18 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81411A1C | 7C 60 E2 14 */	add r3, r0, r28
/* 81411A20 | 48 02 87 D5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81411A24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411A28 | 41 82 00 34 */	beq .L_81411A5C
/* 81411A2C | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81411A30 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 81411A34 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81411A38 | 7C 00 00 34 */	cntlzw r0, r0
/* 81411A3C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81411A40 | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 81411A44 | 7C 60 00 D0 */	neg r3, r0
/* 81411A48 | 38 63 00 03 */	addi r3, r3, 0x3
/* 81411A4C | 7C 04 E2 14 */	add r0, r4, r28
/* 81411A50 | 54 63 08 3C */	slwi r3, r3, 1
/* 81411A54 | 7C 63 02 14 */	add r3, r3, r0
/* 81411A58 | A3 63 00 12 */	lhz r27, 0x12(r3)
.L_81411A5C:
/* 81411A5C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81411A60 | 28 1F 00 38 */	cmplwi r31, 0x38
/* 81411A64 | 41 80 FF A4 */	blt .L_81411A08
/* 81411A68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81411A6C | 7F 63 DB 78 */	mr r3, r27
/* 81411A70 | 48 1E 7A 9D */	bl _restgpr_27
/* 81411A74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81411A78 | 7C 08 03 A6 */	mtlr r0
/* 81411A7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81411A80 | 4E 80 00 20 */	blr
.endfn getWCCode__Q59textinput8keyboard6pctype4Base8KeyStateFPc

# .text:0x18AC | 0x81411A84 | size: 0xEC
# textinput::keyboard::pctype::Base::onlyQwerty(bool)
.fn onlyQwerty__Q49textinput8keyboard6pctype4BaseFb, global
/* 81411A84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411A88 | 7C 08 02 A6 */	mflr r0
/* 81411A8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411A90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411A94 | 7C 9F 23 78 */	mr r31, r4
/* 81411A98 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81411A9C | 7C 7E 1B 78 */	mr r30, r3
/* 81411AA0 | 98 83 00 3C */	stb r4, 0x3c(r3)
/* 81411AA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411AA8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81411AAC | 7D 89 03 A6 */	mtctr r12
/* 81411AB0 | 4E 80 04 21 */	bctrl
/* 81411AB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411AB8 | 40 82 00 A0 */	bne .L_81411B58
/* 81411ABC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81411AC0 | 41 82 00 68 */	beq .L_81411B28
/* 81411AC4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81411AC8 | 7F C3 F3 78 */	mr r3, r30
/* 81411ACC | 38 80 00 01 */	li r4, 0x1
/* 81411AD0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81411AD4 | 7D 89 03 A6 */	mtctr r12
/* 81411AD8 | 4E 80 04 21 */	bctrl
/* 81411ADC | 80 9E 00 20 */	lwz r4, 0x20(r30)
/* 81411AE0 | 54 80 00 37 */	clrrwi. r0, r4, 4
/* 81411AE4 | 41 82 00 28 */	beq .L_81411B0C
/* 81411AE8 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 81411AEC | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81411AF0 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 81411AF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411AF8 | 41 82 00 14 */	beq .L_81411B0C
/* 81411AFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411B00 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81411B04 | 7D 89 03 A6 */	mtctr r12
/* 81411B08 | 4E 80 04 21 */	bctrl
.L_81411B0C:
/* 81411B0C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81411B10 | 7F C3 F3 78 */	mr r3, r30
/* 81411B14 | 38 80 00 00 */	li r4, 0x0
/* 81411B18 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81411B1C | 7D 89 03 A6 */	mtctr r12
/* 81411B20 | 4E 80 04 21 */	bctrl
/* 81411B24 | 48 00 00 34 */	b .L_81411B58
.L_81411B28:
/* 81411B28 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81411B2C | 7F C3 F3 78 */	mr r3, r30
/* 81411B30 | 38 80 00 00 */	li r4, 0x0
/* 81411B34 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81411B38 | 7D 89 03 A6 */	mtctr r12
/* 81411B3C | 4E 80 04 21 */	bctrl
/* 81411B40 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81411B44 | 7F C3 F3 78 */	mr r3, r30
/* 81411B48 | 38 80 00 06 */	li r4, 0x6
/* 81411B4C | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 81411B50 | 7D 89 03 A6 */	mtctr r12
/* 81411B54 | 4E 80 04 21 */	bctrl
.L_81411B58:
/* 81411B58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411B5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411B60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81411B64 | 7C 08 03 A6 */	mtlr r0
/* 81411B68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411B6C | 4E 80 00 20 */	blr
.endfn onlyQwerty__Q49textinput8keyboard6pctype4BaseFb

# .text:0x1998 | 0x81411B70 | size: 0xBC
# textinput::keyboard::pctype::Base::setLangKeyActive(bool)
.fn setLangKeyActive__Q49textinput8keyboard6pctype4BaseFb, global
/* 81411B70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411B74 | 7C 08 02 A6 */	mflr r0
/* 81411B78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411B7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411B80 | 7C 9F 23 78 */	mr r31, r4
/* 81411B84 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81411B88 | 7C 7E 1B 78 */	mr r30, r3
/* 81411B8C | 98 83 00 3D */	stb r4, 0x3d(r3)
/* 81411B90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411B94 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81411B98 | 7D 89 03 A6 */	mtctr r12
/* 81411B9C | 4E 80 04 21 */	bctrl
/* 81411BA0 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 81411BA4 | 41 82 00 20 */	beq .L_81411BC4
/* 81411BA8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81411BAC | 7F C3 F3 78 */	mr r3, r30
/* 81411BB0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81411BB4 | 7D 89 03 A6 */	mtctr r12
/* 81411BB8 | 4E 80 04 21 */	bctrl
/* 81411BBC | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81411BC0 | 40 82 00 54 */	bne .L_81411C14
.L_81411BC4:
/* 81411BC4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81411BC8 | 40 82 00 4C */	bne .L_81411C14
/* 81411BCC | 80 9E 00 20 */	lwz r4, 0x20(r30)
/* 81411BD0 | 54 80 00 37 */	clrrwi. r0, r4, 4
/* 81411BD4 | 41 82 00 28 */	beq .L_81411BFC
/* 81411BD8 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 81411BDC | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81411BE0 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 81411BE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411BE8 | 41 82 00 14 */	beq .L_81411BFC
/* 81411BEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411BF0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81411BF4 | 7D 89 03 A6 */	mtctr r12
/* 81411BF8 | 4E 80 04 21 */	bctrl
.L_81411BFC:
/* 81411BFC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81411C00 | 7F C3 F3 78 */	mr r3, r30
/* 81411C04 | 38 80 00 00 */	li r4, 0x0
/* 81411C08 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81411C0C | 7D 89 03 A6 */	mtctr r12
/* 81411C10 | 4E 80 04 21 */	bctrl
.L_81411C14:
/* 81411C14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411C18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411C1C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81411C20 | 7C 08 03 A6 */	mtlr r0
/* 81411C24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411C28 | 4E 80 00 20 */	blr
.endfn setLangKeyActive__Q49textinput8keyboard6pctype4BaseFb

# .text:0x1A54 | 0x81411C2C | size: 0xE8
# textinput::keyboard::pctype::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81411C2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81411C30 | 7C 08 02 A6 */	mflr r0
/* 81411C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411C38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81411C3C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81411C40 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81411C44 | 7C 9E 23 78 */	mr r30, r4
/* 81411C48 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81411C4C | 7C 7D 1B 78 */	mr r29, r3
/* 81411C50 | 41 82 00 A4 */	beq .L_81411CF4
/* 81411C54 | 3C C0 81 66 */	lis r6, __vt__Q49textinput8keyboard6pctype12LayoutByNW4R@ha
/* 81411C58 | 38 80 FF FF */	li r4, -0x1
/* 81411C5C | 38 C6 BC 30 */	addi r6, r6, __vt__Q49textinput8keyboard6pctype12LayoutByNW4R@l
/* 81411C60 | 38 A6 00 98 */	addi r5, r6, 0x98
/* 81411C64 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81411C68 | 38 06 01 10 */	addi r0, r6, 0x110
/* 81411C6C | 90 A3 00 44 */	stw r5, 0x44(r3)
/* 81411C70 | 90 03 00 EC */	stw r0, 0xec(r3)
/* 81411C74 | 80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 81411C78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411C7C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81411C80 | 7D 89 03 A6 */	mtctr r12
/* 81411C84 | 4E 80 04 21 */	bctrl
/* 81411C88 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 81411C8C | 80 9D 00 F0 */	lwz r4, 0xf0(r29)
/* 81411C90 | 48 14 99 E9 */	bl fn_8155B678
/* 81411C94 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 81411C98 | 38 80 00 00 */	li r4, 0x0
/* 81411C9C | 48 10 06 41 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81411CA0 | 7C 7F 1B 78 */	mr r31, r3
/* 81411CA4 | 48 00 00 2C */	b .L_81411CD0
.L_81411CA8:
/* 81411CA8 | 7F E4 FB 78 */	mr r4, r31
/* 81411CAC | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 81411CB0 | 48 10 05 C1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81411CB4 | 80 9D 00 38 */	lwz r4, 0x38(r29)
/* 81411CB8 | 7F E3 FB 78 */	mr r3, r31
/* 81411CBC | 48 02 57 35 */	bl destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator
/* 81411CC0 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 81411CC4 | 38 80 00 00 */	li r4, 0x0
/* 81411CC8 | 48 10 06 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81411CCC | 7C 7F 1B 78 */	mr r31, r3
.L_81411CD0:
/* 81411CD0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81411CD4 | 40 82 FF D4 */	bne .L_81411CA8
/* 81411CD8 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81411CDC | 38 80 00 00 */	li r4, 0x0
/* 81411CE0 | 48 02 44 19 */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 81411CE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81411CE8 | 40 81 00 0C */	ble .L_81411CF4
/* 81411CEC | 7F A3 EB 78 */	mr r3, r29
/* 81411CF0 | 48 1E 63 F5 */	bl __dl__FPv
.L_81411CF4:
/* 81411CF4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81411CF8 | 7F A3 EB 78 */	mr r3, r29
/* 81411CFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81411D00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81411D04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81411D08 | 7C 08 03 A6 */	mtlr r0
/* 81411D0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81411D10 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x1B3C | 0x81411D14 | size: 0x40
# textinput::keyboard::pctype::UIModePanel::~UIModePanel()
.fn __dt__Q49textinput8keyboard6pctype11UIModePanelFv, global
/* 81411D14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411D18 | 7C 08 02 A6 */	mflr r0
/* 81411D1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411D20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411D24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411D28 | 7C 7F 1B 78 */	mr r31, r3
/* 81411D2C | 41 82 00 10 */	beq .L_81411D3C
/* 81411D30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81411D34 | 40 81 00 08 */	ble .L_81411D3C
/* 81411D38 | 48 1E 63 AD */	bl __dl__FPv
.L_81411D3C:
/* 81411D3C | 7F E3 FB 78 */	mr r3, r31
/* 81411D40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411D44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411D48 | 7C 08 03 A6 */	mtlr r0
/* 81411D4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411D50 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype11UIModePanelFv

# .text:0x1B7C | 0x81411D54 | size: 0x40
# textinput::keyboard::pctype::UIObj::~UIObj()
.fn __dt__Q49textinput8keyboard6pctype5UIObjFv, global
/* 81411D54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411D58 | 7C 08 02 A6 */	mflr r0
/* 81411D5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411D60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411D64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411D68 | 7C 7F 1B 78 */	mr r31, r3
/* 81411D6C | 41 82 00 10 */	beq .L_81411D7C
/* 81411D70 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81411D74 | 40 81 00 08 */	ble .L_81411D7C
/* 81411D78 | 48 1E 63 6D */	bl __dl__FPv
.L_81411D7C:
/* 81411D7C | 7F E3 FB 78 */	mr r3, r31
/* 81411D80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411D84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411D88 | 7C 08 03 A6 */	mtlr r0
/* 81411D8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411D90 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype5UIObjFv

# .text:0x1BBC | 0x81411D94 | size: 0x40
# textinput::gui::EventHandler::~EventHandler()
.fn __dt__Q39textinput3gui12EventHandlerFv, global
/* 81411D94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411D98 | 7C 08 02 A6 */	mflr r0
/* 81411D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411DA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411DA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411DA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81411DAC | 41 82 00 10 */	beq .L_81411DBC
/* 81411DB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81411DB4 | 40 81 00 08 */	ble .L_81411DBC
/* 81411DB8 | 48 1E 63 2D */	bl __dl__FPv
.L_81411DBC:
/* 81411DBC | 7F E3 FB 78 */	mr r3, r31
/* 81411DC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411DC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411DC8 | 7C 08 03 A6 */	mtlr r0
/* 81411DCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411DD0 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput3gui12EventHandlerFv

# .text:0x1BFC | 0x81411DD4 | size: 0x40
# textinput::keyboard::pctype::UIModifierButton::~UIModifierButton()
.fn __dt__Q49textinput8keyboard6pctype16UIModifierButtonFv, global
/* 81411DD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411DD8 | 7C 08 02 A6 */	mflr r0
/* 81411DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411DE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411DE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411DE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81411DEC | 41 82 00 10 */	beq .L_81411DFC
/* 81411DF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81411DF4 | 40 81 00 08 */	ble .L_81411DFC
/* 81411DF8 | 48 1E 62 ED */	bl __dl__FPv
.L_81411DFC:
/* 81411DFC | 7F E3 FB 78 */	mr r3, r31
/* 81411E00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411E04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411E08 | 7C 08 03 A6 */	mtlr r0
/* 81411E0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411E10 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype16UIModifierButtonFv

# .text:0x1C3C | 0x81411E14 | size: 0x40
# textinput::keyboard::pctype::Base::~Base()
.fn __dt__Q49textinput8keyboard6pctype4BaseFv, global
/* 81411E14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411E18 | 7C 08 02 A6 */	mflr r0
/* 81411E1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411E20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411E24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411E28 | 7C 7F 1B 78 */	mr r31, r3
/* 81411E2C | 41 82 00 10 */	beq .L_81411E3C
/* 81411E30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81411E34 | 40 81 00 08 */	ble .L_81411E3C
/* 81411E38 | 48 1E 62 AD */	bl __dl__FPv
.L_81411E3C:
/* 81411E3C | 7F E3 FB 78 */	mr r3, r31
/* 81411E40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411E44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411E48 | 7C 08 03 A6 */	mtlr r0
/* 81411E4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411E50 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype4BaseFv

# .text:0x1C7C | 0x81411E54 | size: 0x40
# textinput::keyboard::pctype::EventHandler::~EventHandler()
.fn __dt__Q49textinput8keyboard6pctype12EventHandlerFv, global
/* 81411E54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81411E58 | 7C 08 02 A6 */	mflr r0
/* 81411E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411E60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81411E64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81411E68 | 7C 7F 1B 78 */	mr r31, r3
/* 81411E6C | 41 82 00 10 */	beq .L_81411E7C
/* 81411E70 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81411E74 | 40 81 00 08 */	ble .L_81411E7C
/* 81411E78 | 48 1E 62 6D */	bl __dl__FPv
.L_81411E7C:
/* 81411E7C | 7F E3 FB 78 */	mr r3, r31
/* 81411E80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81411E84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81411E88 | 7C 08 03 A6 */	mtlr r0
/* 81411E8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81411E90 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype12EventHandlerFv

# .text:0x1CBC | 0x81411E94 | size: 0x278
# textinput::keyboard::pctype::LayoutByNW4R::create(MEMAllocator*)
.fn create__Q49textinput8keyboard6pctype12LayoutByNW4RFP12MEMAllocator, global
/* 81411E94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81411E98 | 7C 08 02 A6 */	mflr r0
/* 81411E9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81411EA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81411EA4 | 48 1E 76 19 */	bl _savegpr_26
/* 81411EA8 | 3F C0 81 66 */	lis r30, lbl_81658D90@ha
/* 81411EAC | 7C 9A 23 78 */	mr r26, r4
/* 81411EB0 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 81411EB4 | 7C 7F 1B 78 */	mr r31, r3
/* 81411EB8 | 7F 43 D3 78 */	mr r3, r26
/* 81411EBC | 3B DE 8D 90 */	addi r30, r30, lbl_81658D90@l
/* 81411EC0 | 38 80 00 10 */	li r4, 0x10
/* 81411EC4 | 48 14 97 A5 */	bl fn_8155B668
/* 81411EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81411ECC | 41 82 00 1C */	beq .L_81411EE8
/* 81411ED0 | 38 00 00 00 */	li r0, 0x0
/* 81411ED4 | 3C 80 81 66 */	lis r4, __vt__Q49textinput8keyboard6pctype12EventHandler@ha
/* 81411ED8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81411EDC | 38 84 BD E0 */	addi r4, r4, __vt__Q49textinput8keyboard6pctype12EventHandler@l
/* 81411EE0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81411EE4 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_81411EE8:
/* 81411EE8 | 90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 81411EEC | 7C 65 1B 78 */	mr r5, r3
/* 81411EF0 | 7F 44 D3 78 */	mr r4, r26
/* 81411EF4 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81411EF8 | 48 02 43 1D */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 81411EFC | 80 7F 00 54 */	lwz r3, 0x54(r31)
/* 81411F00 | 38 80 00 00 */	li r4, 0x0
/* 81411F04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411F08 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81411F0C | 7D 89 03 A6 */	mtctr r12
/* 81411F10 | 4E 80 04 21 */	bctrl
/* 81411F14 | 80 7F 00 54 */	lwz r3, 0x54(r31)
/* 81411F18 | 38 80 00 01 */	li r4, 0x1
/* 81411F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81411F20 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81411F24 | 7D 89 03 A6 */	mtctr r12
/* 81411F28 | 4E 80 04 21 */	bctrl
/* 81411F2C | 7F E3 FB 78 */	mr r3, r31
/* 81411F30 | 7F 44 D3 78 */	mr r4, r26
/* 81411F34 | 48 00 01 D9 */	bl createAnmPane___Q49textinput8keyboard6pctype12LayoutByNW4RFP12MEMAllocator
/* 81411F38 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81411F3C | 7F FA FB 78 */	mr r26, r31
/* 81411F40 | 3B 9E 28 CC */	addi r28, r30, 0x28cc
/* 81411F44 | 3B BE 28 D8 */	addi r29, r30, 0x28d8
/* 81411F48 | 41 82 00 08 */	beq .L_81411F50
/* 81411F4C | 3B 5F 00 44 */	addi r26, r31, 0x44
.L_81411F50:
/* 81411F50 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81411F54 | 7F 43 D3 78 */	mr r3, r26
/* 81411F58 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81411F5C | 7D 89 03 A6 */	mtctr r12
/* 81411F60 | 4E 80 04 21 */	bctrl
/* 81411F64 | 7C 7B 1B 78 */	mr r27, r3
/* 81411F68 | 7F A4 EB 78 */	mr r4, r29
/* 81411F6C | 48 03 4E 5D */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81411F70 | 90 7F 01 14 */	stw r3, 0x114(r31)
/* 81411F74 | 7F 63 DB 78 */	mr r3, r27
/* 81411F78 | 7F 84 E3 78 */	mr r4, r28
/* 81411F7C | 48 03 4E 4D */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81411F80 | 90 7F 01 18 */	stw r3, 0x118(r31)
/* 81411F84 | 7F 43 D3 78 */	mr r3, r26
/* 81411F88 | 7F A4 EB 78 */	mr r4, r29
/* 81411F8C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81411F90 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81411F94 | 7D 89 03 A6 */	mtctr r12
/* 81411F98 | 4E 80 04 21 */	bctrl
/* 81411F9C | 90 7F 01 1C */	stw r3, 0x11c(r31)
/* 81411FA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81411FA4 | 80 7F 01 18 */	lwz r3, 0x118(r31)
/* 81411FA8 | 38 1F 01 00 */	addi r0, r31, 0x100
/* 81411FAC | 7F FA FB 78 */	mr r26, r31
/* 81411FB0 | 3B 9E 28 E4 */	addi r28, r30, 0x28e4
/* 81411FB4 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 81411FB8 | 3B 7E 28 F0 */	addi r27, r30, 0x28f0
/* 81411FBC | 41 82 00 08 */	beq .L_81411FC4
/* 81411FC0 | 3B 5F 00 44 */	addi r26, r31, 0x44
.L_81411FC4:
/* 81411FC4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81411FC8 | 7F 43 D3 78 */	mr r3, r26
/* 81411FCC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81411FD0 | 7D 89 03 A6 */	mtctr r12
/* 81411FD4 | 4E 80 04 21 */	bctrl
/* 81411FD8 | 7C 7D 1B 78 */	mr r29, r3
/* 81411FDC | 7F 64 DB 78 */	mr r4, r27
/* 81411FE0 | 48 03 4D E9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81411FE4 | 90 7F 01 38 */	stw r3, 0x138(r31)
/* 81411FE8 | 7F A3 EB 78 */	mr r3, r29
/* 81411FEC | 7F 84 E3 78 */	mr r4, r28
/* 81411FF0 | 48 03 4D D9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81411FF4 | 90 7F 01 3C */	stw r3, 0x13c(r31)
/* 81411FF8 | 7F 43 D3 78 */	mr r3, r26
/* 81411FFC | 7F 64 DB 78 */	mr r4, r27
/* 81412000 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81412004 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412008 | 7D 89 03 A6 */	mtctr r12
/* 8141200C | 4E 80 04 21 */	bctrl
/* 81412010 | 90 7F 01 40 */	stw r3, 0x140(r31)
/* 81412014 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81412018 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 8141201C | 38 1F 01 24 */	addi r0, r31, 0x124
/* 81412020 | 7F E4 FB 78 */	mr r4, r31
/* 81412024 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 81412028 | 41 82 00 08 */	beq .L_81412030
/* 8141202C | 38 9F 00 44 */	addi r4, r31, 0x44
.L_81412030:
/* 81412030 | 38 7F 01 48 */	addi r3, r31, 0x148
/* 81412034 | 48 00 49 C9 */	bl Create__Q49textinput8keyboard6pctype11UIModePanelFPQ39textinput11nw4rmanager6Layout
/* 81412038 | 80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8141203C | 38 80 00 01 */	li r4, 0x1
/* 81412040 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412044 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81412048 | 7D 89 03 A6 */	mtctr r12
/* 8141204C | 4E 80 04 21 */	bctrl
/* 81412050 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 81412054 | 38 80 00 01 */	li r4, 0x1
/* 81412058 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141205C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81412060 | 7D 89 03 A6 */	mtctr r12
/* 81412064 | 4E 80 04 21 */	bctrl
/* 81412068 | 7F FA FB 78 */	mr r26, r31
/* 8141206C | 3B 60 00 00 */	li r27, 0x0
.L_81412070:
/* 81412070 | 80 7A 01 74 */	lwz r3, 0x174(r26)
/* 81412074 | 38 80 00 01 */	li r4, 0x1
/* 81412078 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141207C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81412080 | 7D 89 03 A6 */	mtctr r12
/* 81412084 | 4E 80 04 21 */	bctrl
/* 81412088 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8141208C | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81412090 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 81412094 | 41 80 FF DC */	blt .L_81412070
/* 81412098 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141209C | 7F E3 FB 78 */	mr r3, r31
/* 814120A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814120A4 | 7D 89 03 A6 */	mtctr r12
/* 814120A8 | 4E 80 04 21 */	bctrl
/* 814120AC | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 814120B0 | 54 80 00 37 */	clrrwi. r0, r4, 4
/* 814120B4 | 41 82 00 28 */	beq .L_814120DC
/* 814120B8 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814120BC | 54 80 07 3E */	clrlwi r0, r4, 28
/* 814120C0 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814120C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814120C8 | 41 82 00 14 */	beq .L_814120DC
/* 814120CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814120D0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814120D4 | 7D 89 03 A6 */	mtctr r12
/* 814120D8 | 4E 80 04 21 */	bctrl
.L_814120DC:
/* 814120DC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814120E0 | 7F E3 FB 78 */	mr r3, r31
/* 814120E4 | 38 80 00 00 */	li r4, 0x0
/* 814120E8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814120EC | 7D 89 03 A6 */	mtctr r12
/* 814120F0 | 4E 80 04 21 */	bctrl
/* 814120F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814120F8 | 48 1E 74 11 */	bl _restgpr_26
/* 814120FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81412100 | 7C 08 03 A6 */	mtlr r0
/* 81412104 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81412108 | 4E 80 00 20 */	blr
.endfn create__Q49textinput8keyboard6pctype12LayoutByNW4RFP12MEMAllocator

# .text:0x1F34 | 0x8141210C | size: 0x300
# textinput::keyboard::pctype::LayoutByNW4R::createAnmPane_(MEMAllocator*)
.fn createAnmPane___Q49textinput8keyboard6pctype12LayoutByNW4RFP12MEMAllocator, global
/* 8141210C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81412110 | 7C 08 02 A6 */	mflr r0
/* 81412114 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81412118 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8141211C | 48 1E 73 71 */	bl _savegpr_14
/* 81412120 | 3F 20 81 66 */	lis r25, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 81412124 | 3F 60 81 66 */	lis r27, __vt__Q49textinput8keyboard6pctype19NormalButtonAnmPane@ha
/* 81412128 | 3F 80 81 66 */	lis r28, __vt__Q49textinput8keyboard6pctype16ShiftCapsAnmPane@ha
/* 8141212C | 3F 00 81 66 */	lis r24, lbl_816595A0@ha
/* 81412130 | 3F A0 81 66 */	lis r29, __vt__Q49textinput8keyboard6pctype19ToggleButtonAnmPane@ha
/* 81412134 | 3F C0 81 66 */	lis r30, __vt__Q49textinput8keyboard6pctype18OnOffButtonAnmPane@ha
/* 81412138 | 7C 6F 1B 78 */	mr r15, r3
/* 8141213C | 7C 90 23 78 */	mr r16, r4
/* 81412140 | 3B 39 F8 C8 */	addi r25, r25, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 81412144 | 3B 7B BB D8 */	addi r27, r27, __vt__Q49textinput8keyboard6pctype19NormalButtonAnmPane@l
/* 81412148 | 3B 9C BB AC */	addi r28, r28, __vt__Q49textinput8keyboard6pctype16ShiftCapsAnmPane@l
/* 8141214C | 3B 18 95 A0 */	addi r24, r24, lbl_816595A0@l
/* 81412150 | 3B BD BB 80 */	addi r29, r29, __vt__Q49textinput8keyboard6pctype19ToggleButtonAnmPane@l
/* 81412154 | 3B DE BB 54 */	addi r30, r30, __vt__Q49textinput8keyboard6pctype18OnOffButtonAnmPane@l
/* 81412158 | 3A A0 00 00 */	li r21, 0x0
/* 8141215C | 3B 40 00 00 */	li r26, 0x0
/* 81412160 | 39 C0 00 01 */	li r14, 0x1
.L_81412164:
/* 81412164 | 56 A0 32 B2 */	clrlslwi r0, r21, 16, 6
/* 81412168 | 3A 60 00 00 */	li r19, 0x0
/* 8141216C | 7E 98 02 14 */	add r20, r24, r0
/* 81412170 | 7C 18 00 2E */	lwzx r0, r24, r0
/* 81412174 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81412178 | 41 82 00 E0 */	beq .L_81412258
/* 8141217C | 40 80 00 14 */	bge .L_81412190
/* 81412180 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81412184 | 41 82 00 18 */	beq .L_8141219C
/* 81412188 | 40 80 00 70 */	bge .L_814121F8
/* 8141218C | 48 00 01 88 */	b .L_81412314
.L_81412190:
/* 81412190 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81412194 | 40 80 01 80 */	bge .L_81412314
/* 81412198 | 48 00 01 20 */	b .L_814122B8
.L_8141219C:
/* 8141219C | 7E 03 83 78 */	mr r3, r16
/* 814121A0 | 38 80 00 34 */	li r4, 0x34
/* 814121A4 | 48 14 94 C5 */	bl fn_8155B668
/* 814121A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814121AC | 7C 73 1B 78 */	mr r19, r3
/* 814121B0 | 41 82 01 64 */	beq .L_81412314
/* 814121B4 | 81 8F 00 44 */	lwz r12, 0x44(r15)
/* 814121B8 | 38 6F 00 44 */	addi r3, r15, 0x44
/* 814121BC | 80 94 00 04 */	lwz r4, 0x4(r20)
/* 814121C0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814121C4 | 7D 89 03 A6 */	mtctr r12
/* 814121C8 | 4E 80 04 21 */	bctrl
/* 814121CC | 93 33 00 00 */	stw r25, 0x0(r19)
/* 814121D0 | 38 80 00 10 */	li r4, 0x10
/* 814121D4 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 814121D8 | 38 73 00 08 */	addi r3, r19, 0x8
/* 814121DC | 93 53 00 14 */	stw r26, 0x14(r19)
/* 814121E0 | 93 53 00 18 */	stw r26, 0x18(r19)
/* 814121E4 | 48 0F FE 79 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 814121E8 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 814121EC | 93 73 00 00 */	stw r27, 0x0(r19)
/* 814121F0 | 93 53 00 30 */	stw r26, 0x30(r19)
/* 814121F4 | 48 00 01 20 */	b .L_81412314
.L_814121F8:
/* 814121F8 | 7E 03 83 78 */	mr r3, r16
/* 814121FC | 38 80 00 38 */	li r4, 0x38
/* 81412200 | 48 14 94 69 */	bl fn_8155B668
/* 81412204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81412208 | 7C 73 1B 78 */	mr r19, r3
/* 8141220C | 41 82 01 08 */	beq .L_81412314
/* 81412210 | 81 8F 00 44 */	lwz r12, 0x44(r15)
/* 81412214 | 38 6F 00 44 */	addi r3, r15, 0x44
/* 81412218 | 80 94 00 04 */	lwz r4, 0x4(r20)
/* 8141221C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412220 | 7D 89 03 A6 */	mtctr r12
/* 81412224 | 4E 80 04 21 */	bctrl
/* 81412228 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 8141222C | 38 80 00 10 */	li r4, 0x10
/* 81412230 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81412234 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81412238 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 8141223C | 93 53 00 18 */	stw r26, 0x18(r19)
/* 81412240 | 48 0F FE 1D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81412244 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81412248 | 93 93 00 00 */	stw r28, 0x0(r19)
/* 8141224C | 9B 53 00 34 */	stb r26, 0x34(r19)
/* 81412250 | 91 D3 00 30 */	stw r14, 0x30(r19)
/* 81412254 | 48 00 00 C0 */	b .L_81412314
.L_81412258:
/* 81412258 | 7E 03 83 78 */	mr r3, r16
/* 8141225C | 38 80 00 34 */	li r4, 0x34
/* 81412260 | 48 14 94 09 */	bl fn_8155B668
/* 81412264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81412268 | 7C 73 1B 78 */	mr r19, r3
/* 8141226C | 41 82 00 A8 */	beq .L_81412314
/* 81412270 | 81 8F 00 44 */	lwz r12, 0x44(r15)
/* 81412274 | 38 6F 00 44 */	addi r3, r15, 0x44
/* 81412278 | 80 94 00 04 */	lwz r4, 0x4(r20)
/* 8141227C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412280 | 7D 89 03 A6 */	mtctr r12
/* 81412284 | 4E 80 04 21 */	bctrl
/* 81412288 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 8141228C | 38 80 00 10 */	li r4, 0x10
/* 81412290 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81412294 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81412298 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 8141229C | 93 53 00 18 */	stw r26, 0x18(r19)
/* 814122A0 | 48 0F FD BD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 814122A4 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 814122A8 | 38 00 00 02 */	li r0, 0x2
/* 814122AC | 93 B3 00 00 */	stw r29, 0x0(r19)
/* 814122B0 | 90 13 00 30 */	stw r0, 0x30(r19)
/* 814122B4 | 48 00 00 60 */	b .L_81412314
.L_814122B8:
/* 814122B8 | 7E 03 83 78 */	mr r3, r16
/* 814122BC | 38 80 00 34 */	li r4, 0x34
/* 814122C0 | 48 14 93 A9 */	bl fn_8155B668
/* 814122C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814122C8 | 7C 73 1B 78 */	mr r19, r3
/* 814122CC | 41 82 00 48 */	beq .L_81412314
/* 814122D0 | 81 8F 00 44 */	lwz r12, 0x44(r15)
/* 814122D4 | 38 6F 00 44 */	addi r3, r15, 0x44
/* 814122D8 | 80 94 00 04 */	lwz r4, 0x4(r20)
/* 814122DC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814122E0 | 7D 89 03 A6 */	mtctr r12
/* 814122E4 | 4E 80 04 21 */	bctrl
/* 814122E8 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 814122EC | 38 80 00 10 */	li r4, 0x10
/* 814122F0 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 814122F4 | 38 73 00 08 */	addi r3, r19, 0x8
/* 814122F8 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 814122FC | 93 53 00 18 */	stw r26, 0x18(r19)
/* 81412300 | 48 0F FD 5D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81412304 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81412308 | 38 00 00 03 */	li r0, 0x3
/* 8141230C | 93 D3 00 00 */	stw r30, 0x0(r19)
/* 81412310 | 90 13 00 30 */	stw r0, 0x30(r19)
.L_81412314:
/* 81412314 | 7E 64 9B 78 */	mr r4, r19
/* 81412318 | 38 6F 00 B0 */	addi r3, r15, 0xb0
/* 8141231C | 48 0F FD 59 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81412320 | 82 D4 00 0C */	lwz r22, 0xc(r20)
/* 81412324 | 3A 40 00 00 */	li r18, 0x0
/* 81412328 | 83 F4 00 08 */	lwz r31, 0x8(r20)
/* 8141232C | 48 00 00 B0 */	b .L_814123DC
.L_81412330:
/* 81412330 | 80 6F 00 50 */	lwz r3, 0x50(r15)
/* 81412334 | 56 40 13 BA */	clrlslwi r0, r18, 16, 2
/* 81412338 | 7E F4 02 14 */	add r23, r20, r0
/* 8141233C | 38 80 00 00 */	li r4, 0x0
/* 81412340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412344 | 38 C0 00 00 */	li r6, 0x0
/* 81412348 | 80 B7 00 10 */	lwz r5, 0x10(r23)
/* 8141234C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81412350 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81412354 | 7D 89 03 A6 */	mtctr r12
/* 81412358 | 4E 80 04 21 */	bctrl
/* 8141235C | 81 8F 00 44 */	lwz r12, 0x44(r15)
/* 81412360 | 7C 71 1B 78 */	mr r17, r3
/* 81412364 | 38 6F 00 44 */	addi r3, r15, 0x44
/* 81412368 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8141236C | 7D 89 03 A6 */	mtctr r12
/* 81412370 | 4E 80 04 21 */	bctrl
/* 81412374 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412378 | 7E 24 8B 78 */	mr r4, r17
/* 8141237C | 80 AF 00 50 */	lwz r5, 0x50(r15)
/* 81412380 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81412384 | 7D 89 03 A6 */	mtctr r12
/* 81412388 | 4E 80 04 21 */	bctrl
/* 8141238C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 81412390 | 7C 66 1B 78 */	mr r6, r3
/* 81412394 | 40 82 00 24 */	bne .L_814123B8
/* 81412398 | 80 B7 00 10 */	lwz r5, 0x10(r23)
/* 8141239C | 7E 63 9B 78 */	mr r3, r19
/* 814123A0 | 7E 04 83 78 */	mr r4, r16
/* 814123A4 | 38 E0 00 00 */	li r7, 0x0
/* 814123A8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 814123AC | 39 00 00 01 */	li r8, 0x1
/* 814123B0 | 48 02 4B B1 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 814123B4 | 48 00 00 24 */	b .L_814123D8
.L_814123B8:
/* 814123B8 | 80 B7 00 10 */	lwz r5, 0x10(r23)
/* 814123BC | 7E 63 9B 78 */	mr r3, r19
/* 814123C0 | 7E 04 83 78 */	mr r4, r16
/* 814123C4 | 7E C7 B3 78 */	mr r7, r22
/* 814123C8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 814123CC | 39 00 00 00 */	li r8, 0x0
/* 814123D0 | 39 20 00 01 */	li r9, 0x1
/* 814123D4 | 48 02 4C 41 */	bl forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb
.L_814123D8:
/* 814123D8 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_814123DC:
/* 814123DC | 56 40 04 3E */	clrlwi r0, r18, 16
/* 814123E0 | 7C 00 F8 40 */	cmplw r0, r31
/* 814123E4 | 41 80 FF 4C */	blt .L_81412330
/* 814123E8 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814123EC | 28 15 00 81 */	cmplwi r21, 0x81
/* 814123F0 | 41 80 FD 74 */	blt .L_81412164
/* 814123F4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814123F8 | 48 1E 70 E1 */	bl _restgpr_14
/* 814123FC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81412400 | 7C 08 03 A6 */	mtlr r0
/* 81412404 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81412408 | 4E 80 00 20 */	blr
.endfn createAnmPane___Q49textinput8keyboard6pctype12LayoutByNW4RFP12MEMAllocator

# .text:0x2234 | 0x8141240C | size: 0x58
# textinput::keyboard::pctype::AnmPane::~AnmPane()
.fn __dt__Q49textinput8keyboard6pctype7AnmPaneFv, global
/* 8141240C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81412410 | 7C 08 02 A6 */	mflr r0
/* 81412414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81412418 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141241C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81412420 | 7C 9F 23 78 */	mr r31, r4
/* 81412424 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81412428 | 7C 7E 1B 78 */	mr r30, r3
/* 8141242C | 41 82 00 1C */	beq .L_81412448
/* 81412430 | 38 80 00 00 */	li r4, 0x0
/* 81412434 | 48 02 4A ED */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 81412438 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141243C | 40 81 00 0C */	ble .L_81412448
/* 81412440 | 7F C3 F3 78 */	mr r3, r30
/* 81412444 | 48 1E 5C A1 */	bl __dl__FPv
.L_81412448:
/* 81412448 | 7F C3 F3 78 */	mr r3, r30
/* 8141244C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81412450 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81412454 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81412458 | 7C 08 03 A6 */	mtlr r0
/* 8141245C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81412460 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype7AnmPaneFv

# .text:0x228C | 0x81412464 | size: 0x8
# textinput::nw4rmanager::Layout::getLayout()
.fn getLayout__Q39textinput11nw4rmanager6LayoutFv, global
/* 81412464 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81412468 | 4E 80 00 20 */	blr
.endfn getLayout__Q39textinput11nw4rmanager6LayoutFv

# .text:0x2294 | 0x8141246C | size: 0x580
# textinput::keyboard::pctype::LayoutByNW4R::init()
.fn init__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 8141246C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81412470 | 7C 08 02 A6 */	mflr r0
/* 81412474 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81412478 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8141247C | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81412480 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81412484 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 81412488 | 7C 7E 1B 78 */	mr r30, r3
/* 8141248C | 93 A1 00 54 */	stw r29, 0x54(r1)
/* 81412490 | 3B A0 00 00 */	li r29, 0x0
/* 81412494 | 93 81 00 50 */	stw r28, 0x50(r1)
/* 81412498 | 9B A3 00 14 */	stb r29, 0x14(r3)
/* 8141249C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814124A0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814124A4 | 7D 89 03 A6 */	mtctr r12
/* 814124A8 | 4E 80 04 21 */	bctrl
/* 814124AC | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814124B0 | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 814124B4 | 3C 60 81 61 */	lis r3, lbl_81614500@ha
/* 814124B8 | 93 BE 00 24 */	stw r29, 0x24(r30)
/* 814124BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814124C0 | 38 63 45 00 */	addi r3, r3, lbl_81614500@l
/* 814124C4 | 7C 03 02 14 */	add r0, r3, r0
/* 814124C8 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 814124CC | 40 82 00 20 */	bne .L_814124EC
/* 814124D0 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814124D4 | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 814124D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814124DC | 40 82 00 10 */	bne .L_814124EC
/* 814124E0 | 38 00 00 01 */	li r0, 0x1
/* 814124E4 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 814124E8 | 48 00 00 34 */	b .L_8141251C
.L_814124EC:
/* 814124EC | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814124F0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814124F4 | 41 81 00 20 */	bgt .L_81412514
/* 814124F8 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814124FC | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 81412500 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81412504 | 41 82 00 10 */	beq .L_81412514
/* 81412508 | 38 00 00 01 */	li r0, 0x1
/* 8141250C | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 81412510 | 48 00 00 0C */	b .L_8141251C
.L_81412514:
/* 81412514 | 38 00 00 00 */	li r0, 0x0
/* 81412518 | 90 1E 00 20 */	stw r0, 0x20(r30)
.L_8141251C:
/* 8141251C | 38 00 00 00 */	li r0, 0x0
/* 81412520 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 81412524 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 81412528 | 4B FF EC D1 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 8141252C | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 81412530 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81412534 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81412538 | 41 82 00 28 */	beq .L_81412560
/* 8141253C | 40 80 00 10 */	bge .L_8141254C
/* 81412540 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81412544 | 40 80 00 14 */	bge .L_81412558
/* 81412548 | 48 00 00 28 */	b .L_81412570
.L_8141254C:
/* 8141254C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81412550 | 40 80 00 20 */	bge .L_81412570
/* 81412554 | 48 00 00 14 */	b .L_81412568
.L_81412558:
/* 81412558 | 38 00 00 00 */	li r0, 0x0
/* 8141255C | 48 00 00 18 */	b .L_81412574
.L_81412560:
/* 81412560 | 38 00 00 01 */	li r0, 0x1
/* 81412564 | 48 00 00 10 */	b .L_81412574
.L_81412568:
/* 81412568 | 38 00 00 02 */	li r0, 0x2
/* 8141256C | 48 00 00 08 */	b .L_81412574
.L_81412570:
/* 81412570 | 38 00 00 00 */	li r0, 0x0
.L_81412574:
/* 81412574 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81412578 | 7F C3 F3 78 */	mr r3, r30
/* 8141257C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81412580 | 38 80 00 12 */	li r4, 0x12
/* 81412584 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412588 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141258C | 7D 89 03 A6 */	mtctr r12
/* 81412590 | 4E 80 04 21 */	bctrl
/* 81412594 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412598 | 7F C3 F3 78 */	mr r3, r30
/* 8141259C | 38 80 00 01 */	li r4, 0x1
/* 814125A0 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 814125A4 | 7D 89 03 A6 */	mtctr r12
/* 814125A8 | 4E 80 04 21 */	bctrl
/* 814125AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814125B0 | 7F C3 F3 78 */	mr r3, r30
/* 814125B4 | 38 80 00 01 */	li r4, 0x1
/* 814125B8 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 814125BC | 7D 89 03 A6 */	mtctr r12
/* 814125C0 | 4E 80 04 21 */	bctrl
/* 814125C4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814125C8 | 7F C3 F3 78 */	mr r3, r30
/* 814125CC | 38 80 00 01 */	li r4, 0x1
/* 814125D0 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 814125D4 | 7D 89 03 A6 */	mtctr r12
/* 814125D8 | 4E 80 04 21 */	bctrl
/* 814125DC | 3C 60 81 66 */	lis r3, lbl_8165BB3C@ha
/* 814125E0 | 85 03 BB 3C */	lwzu r8, lbl_8165BB3C@l(r3)
/* 814125E4 | 3C A0 81 66 */	lis r5, lbl_8165BB48@ha
/* 814125E8 | 84 85 BB 48 */	lwzu r4, lbl_8165BB48@l(r5)
/* 814125EC | 81 3E 00 10 */	lwz r9, 0x10(r30)
/* 814125F0 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814125F4 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 814125F8 | 2C 09 00 08 */	cmpwi r9, 0x8
/* 814125FC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 81412600 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 81412604 | 91 01 00 18 */	stw r8, 0x18(r1)
/* 81412608 | 90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8141260C | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 81412610 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81412614 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81412618 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8141261C | 40 82 00 70 */	bne .L_8141268C
/* 81412620 | 80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 81412624 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412628 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141262C | 7D 89 03 A6 */	mtctr r12
/* 81412630 | 4E 80 04 21 */	bctrl
/* 81412634 | 38 BE 01 A8 */	addi r5, r30, 0x1a8
/* 81412638 | 38 80 00 00 */	li r4, 0x0
/* 8141263C | 48 11 57 E1 */	bl fn_81527E1C
/* 81412640 | 80 7E 01 A0 */	lwz r3, 0x1a0(r30)
/* 81412644 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412648 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141264C | 7D 89 03 A6 */	mtctr r12
/* 81412650 | 4E 80 04 21 */	bctrl
/* 81412654 | 38 BE 01 C8 */	addi r5, r30, 0x1c8
/* 81412658 | 38 80 00 00 */	li r4, 0x0
/* 8141265C | 48 11 57 C1 */	bl fn_81527E1C
/* 81412660 | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 81412664 | 80 7E 01 A4 */	lwz r3, 0x1a4(r30)
/* 81412668 | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8141266C | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 81412670 | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81412674 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81412678 | D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8141267C | D0 21 00 34 */	stfs f1, 0x34(r1)
/* 81412680 | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 81412684 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81412688 | 48 00 00 74 */	b .L_814126FC
.L_8141268C:
/* 8141268C | 2C 09 00 09 */	cmpwi r9, 0x9
/* 81412690 | 40 82 00 6C */	bne .L_814126FC
/* 81412694 | 80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 81412698 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141269C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814126A0 | 7D 89 03 A6 */	mtctr r12
/* 814126A4 | 4E 80 04 21 */	bctrl
/* 814126A8 | 38 BE 01 E8 */	addi r5, r30, 0x1e8
/* 814126AC | 38 80 00 00 */	li r4, 0x0
/* 814126B0 | 48 11 57 6D */	bl fn_81527E1C
/* 814126B4 | 80 7E 01 A0 */	lwz r3, 0x1a0(r30)
/* 814126B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814126BC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814126C0 | 7D 89 03 A6 */	mtctr r12
/* 814126C4 | 4E 80 04 21 */	bctrl
/* 814126C8 | 38 BE 02 08 */	addi r5, r30, 0x208
/* 814126CC | 38 80 00 00 */	li r4, 0x0
/* 814126D0 | 48 11 57 4D */	bl fn_81527E1C
/* 814126D4 | C0 41 00 24 */	lfs f2, 0x24(r1)
/* 814126D8 | 80 7E 01 A4 */	lwz r3, 0x1a4(r30)
/* 814126DC | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 814126E0 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 814126E4 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 814126E8 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 814126EC | D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 814126F0 | D0 21 00 40 */	stfs f1, 0x40(r1)
/* 814126F4 | D0 01 00 44 */	stfs f0, 0x44(r1)
/* 814126F8 | D0 03 00 34 */	stfs f0, 0x34(r3)
.L_814126FC:
/* 814126FC | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412700 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412704 | 38 9F 28 D8 */	addi r4, r31, 0x28d8
/* 81412708 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141270C | 7D 89 03 A6 */	mtctr r12
/* 81412710 | 4E 80 04 21 */	bctrl
/* 81412714 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412718 | 38 80 00 00 */	li r4, 0x0
/* 8141271C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412720 | 7D 89 03 A6 */	mtctr r12
/* 81412724 | 4E 80 04 21 */	bctrl
/* 81412728 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 8141272C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412730 | 38 9F 28 F0 */	addi r4, r31, 0x28f0
/* 81412734 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412738 | 7D 89 03 A6 */	mtctr r12
/* 8141273C | 4E 80 04 21 */	bctrl
/* 81412740 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412744 | 38 80 00 00 */	li r4, 0x0
/* 81412748 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141274C | 7D 89 03 A6 */	mtctr r12
/* 81412750 | 4E 80 04 21 */	bctrl
/* 81412754 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 81412758 | 3B 80 00 00 */	li r28, 0x0
/* 8141275C | 83 A3 00 0C */	lwz r29, 0xc(r3)
/* 81412760 | 48 00 00 2C */	b .L_8141278C
.L_81412764:
/* 81412764 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412768 | 57 80 13 BA */	clrlslwi r0, r28, 16, 2
/* 8141276C | 7C 9D 02 14 */	add r4, r29, r0
/* 81412770 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412774 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81412778 | 38 A0 00 01 */	li r5, 0x1
/* 8141277C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81412780 | 7D 89 03 A6 */	mtctr r12
/* 81412784 | 4E 80 04 21 */	bctrl
/* 81412788 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_8141278C:
/* 8141278C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 81412790 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 81412794 | 7C 03 00 40 */	cmplw r3, r0
/* 81412798 | 41 80 FF CC */	blt .L_81412764
/* 8141279C | 3B 80 00 00 */	li r28, 0x0
/* 814127A0 | 48 00 00 2C */	b .L_814127CC
.L_814127A4:
/* 814127A4 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814127A8 | 57 80 13 BA */	clrlslwi r0, r28, 16, 2
/* 814127AC | 7C 9D 02 14 */	add r4, r29, r0
/* 814127B0 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814127B4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814127B8 | 38 A0 00 00 */	li r5, 0x0
/* 814127BC | 80 84 00 64 */	lwz r4, 0x64(r4)
/* 814127C0 | 7D 89 03 A6 */	mtctr r12
/* 814127C4 | 4E 80 04 21 */	bctrl
/* 814127C8 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814127CC:
/* 814127CC | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 814127D0 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 814127D4 | 7C 03 00 40 */	cmplw r3, r0
/* 814127D8 | 41 80 FF CC */	blt .L_814127A4
/* 814127DC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814127E0 | 7F C3 F3 78 */	mr r3, r30
/* 814127E4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814127E8 | 7D 89 03 A6 */	mtctr r12
/* 814127EC | 4E 80 04 21 */	bctrl
/* 814127F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814127F4 | 40 82 00 48 */	bne .L_8141283C
/* 814127F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814127FC | 7F C3 F3 78 */	mr r3, r30
/* 81412800 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412804 | 7D 89 03 A6 */	mtctr r12
/* 81412808 | 4E 80 04 21 */	bctrl
/* 8141280C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412810 | 3C A0 81 66 */	lis r5, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 81412814 | 54 60 10 3A */	slwi r0, r3, 2
/* 81412818 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 8141281C | 38 A5 7C 88 */	addi r5, r5, cLanguageIndependentString__Q29textinput15langindependent@l
/* 81412820 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81412824 | 7C A5 02 14 */	add r5, r5, r0
/* 81412828 | 38 9F 28 FC */	addi r4, r31, 0x28fc
/* 8141282C | 80 A5 01 18 */	lwz r5, 0x118(r5)
/* 81412830 | 7D 89 03 A6 */	mtctr r12
/* 81412834 | 4E 80 04 21 */	bctrl
/* 81412838 | 48 00 00 44 */	b .L_8141287C
.L_8141283C:
/* 8141283C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412840 | 7F C3 F3 78 */	mr r3, r30
/* 81412844 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412848 | 7D 89 03 A6 */	mtctr r12
/* 8141284C | 4E 80 04 21 */	bctrl
/* 81412850 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412854 | 3C A0 81 66 */	lis r5, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 81412858 | 54 60 10 3A */	slwi r0, r3, 2
/* 8141285C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412860 | 38 A5 7C 88 */	addi r5, r5, cLanguageIndependentString__Q29textinput15langindependent@l
/* 81412864 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81412868 | 7C A5 02 14 */	add r5, r5, r0
/* 8141286C | 38 9F 29 0C */	addi r4, r31, 0x290c
/* 81412870 | 80 A5 01 18 */	lwz r5, 0x118(r5)
/* 81412874 | 7D 89 03 A6 */	mtctr r12
/* 81412878 | 4E 80 04 21 */	bctrl
.L_8141287C:
/* 8141287C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412880 | 7F C3 F3 78 */	mr r3, r30
/* 81412884 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412888 | 7D 89 03 A6 */	mtctr r12
/* 8141288C | 4E 80 04 21 */	bctrl
/* 81412890 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412894 | 3C A0 81 66 */	lis r5, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 81412898 | 54 60 10 3A */	slwi r0, r3, 2
/* 8141289C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814128A0 | 38 A5 7C 88 */	addi r5, r5, cLanguageIndependentString__Q29textinput15langindependent@l
/* 814128A4 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814128A8 | 7C A5 02 14 */	add r5, r5, r0
/* 814128AC | 38 9F 29 20 */	addi r4, r31, 0x2920
/* 814128B0 | 80 A5 01 40 */	lwz r5, 0x140(r5)
/* 814128B4 | 7D 89 03 A6 */	mtctr r12
/* 814128B8 | 4E 80 04 21 */	bctrl
/* 814128BC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814128C0 | 7F C3 F3 78 */	mr r3, r30
/* 814128C4 | 38 80 00 00 */	li r4, 0x0
/* 814128C8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814128CC | 7D 89 03 A6 */	mtctr r12
/* 814128D0 | 4E 80 04 21 */	bctrl
/* 814128D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814128D8 | 7F C3 F3 78 */	mr r3, r30
/* 814128DC | 38 80 00 01 */	li r4, 0x1
/* 814128E0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 814128E4 | 7D 89 03 A6 */	mtctr r12
/* 814128E8 | 4E 80 04 21 */	bctrl
/* 814128EC | 38 00 00 00 */	li r0, 0x0
/* 814128F0 | 7F C3 F3 78 */	mr r3, r30
/* 814128F4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814128F8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814128FC | 38 80 00 1F */	li r4, 0x1f
/* 81412900 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81412904 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412908 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141290C | 7D 89 03 A6 */	mtctr r12
/* 81412910 | 4E 80 04 21 */	bctrl
/* 81412914 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412918 | 7F C3 F3 78 */	mr r3, r30
/* 8141291C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81412920 | 81 8C 01 4C */	lwz r12, 0x14c(r12)
/* 81412924 | 7D 89 03 A6 */	mtctr r12
/* 81412928 | 4E 80 04 21 */	bctrl
/* 8141292C | 80 7E 00 48 */	lwz r3, 0x48(r30)
/* 81412930 | 38 80 00 00 */	li r4, 0x0
/* 81412934 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412938 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8141293C | 7D 89 03 A6 */	mtctr r12
/* 81412940 | 4E 80 04 21 */	bctrl
/* 81412944 | 80 7E 00 48 */	lwz r3, 0x48(r30)
/* 81412948 | 38 9E 00 5C */	addi r4, r30, 0x5c
/* 8141294C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412950 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81412954 | 7D 89 03 A6 */	mtctr r12
/* 81412958 | 4E 80 04 21 */	bctrl
/* 8141295C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412960 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412964 | 38 9F 29 20 */	addi r4, r31, 0x2920
/* 81412968 | 38 A0 00 01 */	li r5, 0x1
/* 8141296C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81412970 | 7D 89 03 A6 */	mtctr r12
/* 81412974 | 4E 80 04 21 */	bctrl
/* 81412978 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 8141297C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412980 | 38 9F 29 2C */	addi r4, r31, 0x292c
/* 81412984 | 38 A0 00 01 */	li r5, 0x1
/* 81412988 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8141298C | 7D 89 03 A6 */	mtctr r12
/* 81412990 | 4E 80 04 21 */	bctrl
/* 81412994 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412998 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 8141299C | 38 9F 29 3C */	addi r4, r31, 0x293c
/* 814129A0 | 38 A0 00 00 */	li r5, 0x0
/* 814129A4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814129A8 | 7D 89 03 A6 */	mtctr r12
/* 814129AC | 4E 80 04 21 */	bctrl
/* 814129B0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814129B4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814129B8 | 38 9F 29 4C */	addi r4, r31, 0x294c
/* 814129BC | 38 A0 00 00 */	li r5, 0x0
/* 814129C0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814129C4 | 7D 89 03 A6 */	mtctr r12
/* 814129C8 | 4E 80 04 21 */	bctrl
/* 814129CC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814129D0 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814129D4 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814129D8 | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 814129DC | 83 81 00 50 */	lwz r28, 0x50(r1)
/* 814129E0 | 7C 08 03 A6 */	mtlr r0
/* 814129E4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814129E8 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x2814 | 0x814129EC | size: 0x604
# textinput::keyboard::pctype::LayoutByNW4R::initLayout()
.fn initLayout__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 814129EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814129F0 | 7C 08 02 A6 */	mflr r0
/* 814129F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814129F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814129FC | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81412A00 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81412A04 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81412A08 | 7C 7E 1B 78 */	mr r30, r3
/* 81412A0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412A10 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412A14 | 7D 89 03 A6 */	mtctr r12
/* 81412A18 | 4E 80 04 21 */	bctrl
/* 81412A1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81412A20 | 40 82 04 8C */	bne .L_81412EAC
/* 81412A24 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412A28 | 7F C3 F3 78 */	mr r3, r30
/* 81412A2C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81412A30 | 7D 89 03 A6 */	mtctr r12
/* 81412A34 | 4E 80 04 21 */	bctrl
/* 81412A38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81412A3C | 41 82 00 60 */	beq .L_81412A9C
/* 81412A40 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412A44 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412A48 | 38 9F 28 AC */	addi r4, r31, 0x28ac
/* 81412A4C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412A50 | 7D 89 03 A6 */	mtctr r12
/* 81412A54 | 4E 80 04 21 */	bctrl
/* 81412A58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412A5C | 38 80 00 05 */	li r4, 0x5
/* 81412A60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412A64 | 7D 89 03 A6 */	mtctr r12
/* 81412A68 | 4E 80 04 21 */	bctrl
/* 81412A6C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412A70 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412A74 | 38 9F 28 BC */	addi r4, r31, 0x28bc
/* 81412A78 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412A7C | 7D 89 03 A6 */	mtctr r12
/* 81412A80 | 4E 80 04 21 */	bctrl
/* 81412A84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412A88 | 38 80 00 00 */	li r4, 0x0
/* 81412A8C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412A90 | 7D 89 03 A6 */	mtctr r12
/* 81412A94 | 4E 80 04 21 */	bctrl
/* 81412A98 | 48 00 00 5C */	b .L_81412AF4
.L_81412A9C:
/* 81412A9C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412AA0 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412AA4 | 38 9F 28 AC */	addi r4, r31, 0x28ac
/* 81412AA8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412AAC | 7D 89 03 A6 */	mtctr r12
/* 81412AB0 | 4E 80 04 21 */	bctrl
/* 81412AB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412AB8 | 38 80 00 00 */	li r4, 0x0
/* 81412ABC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412AC0 | 7D 89 03 A6 */	mtctr r12
/* 81412AC4 | 4E 80 04 21 */	bctrl
/* 81412AC8 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412ACC | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412AD0 | 38 9F 28 BC */	addi r4, r31, 0x28bc
/* 81412AD4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412AD8 | 7D 89 03 A6 */	mtctr r12
/* 81412ADC | 4E 80 04 21 */	bctrl
/* 81412AE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412AE4 | 38 80 00 05 */	li r4, 0x5
/* 81412AE8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412AEC | 7D 89 03 A6 */	mtctr r12
/* 81412AF0 | 4E 80 04 21 */	bctrl
.L_81412AF4:
/* 81412AF4 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81412AF8 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81412AFC | 40 82 00 60 */	bne .L_81412B5C
/* 81412B00 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412B04 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412B08 | 38 9F 29 5C */	addi r4, r31, 0x295c
/* 81412B0C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412B10 | 7D 89 03 A6 */	mtctr r12
/* 81412B14 | 4E 80 04 21 */	bctrl
/* 81412B18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412B1C | 38 80 00 05 */	li r4, 0x5
/* 81412B20 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412B24 | 7D 89 03 A6 */	mtctr r12
/* 81412B28 | 4E 80 04 21 */	bctrl
/* 81412B2C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412B30 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412B34 | 38 9F 29 68 */	addi r4, r31, 0x2968
/* 81412B38 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412B3C | 7D 89 03 A6 */	mtctr r12
/* 81412B40 | 4E 80 04 21 */	bctrl
/* 81412B44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412B48 | 38 80 00 00 */	li r4, 0x0
/* 81412B4C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412B50 | 7D 89 03 A6 */	mtctr r12
/* 81412B54 | 4E 80 04 21 */	bctrl
/* 81412B58 | 48 00 00 5C */	b .L_81412BB4
.L_81412B5C:
/* 81412B5C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412B60 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412B64 | 38 9F 29 5C */	addi r4, r31, 0x295c
/* 81412B68 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412B6C | 7D 89 03 A6 */	mtctr r12
/* 81412B70 | 4E 80 04 21 */	bctrl
/* 81412B74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412B78 | 38 80 00 00 */	li r4, 0x0
/* 81412B7C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412B80 | 7D 89 03 A6 */	mtctr r12
/* 81412B84 | 4E 80 04 21 */	bctrl
/* 81412B88 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412B8C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412B90 | 38 9F 29 68 */	addi r4, r31, 0x2968
/* 81412B94 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412B98 | 7D 89 03 A6 */	mtctr r12
/* 81412B9C | 4E 80 04 21 */	bctrl
/* 81412BA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412BA4 | 38 80 00 05 */	li r4, 0x5
/* 81412BA8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412BAC | 7D 89 03 A6 */	mtctr r12
/* 81412BB0 | 4E 80 04 21 */	bctrl
.L_81412BB4:
/* 81412BB4 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81412BB8 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 81412BBC | 41 82 00 34 */	beq .L_81412BF0
/* 81412BC0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412BC4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412BC8 | 38 9F 29 74 */	addi r4, r31, 0x2974
/* 81412BCC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412BD0 | 7D 89 03 A6 */	mtctr r12
/* 81412BD4 | 4E 80 04 21 */	bctrl
/* 81412BD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412BDC | 38 80 00 0E */	li r4, 0xe
/* 81412BE0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412BE4 | 7D 89 03 A6 */	mtctr r12
/* 81412BE8 | 4E 80 04 21 */	bctrl
/* 81412BEC | 48 00 00 30 */	b .L_81412C1C
.L_81412BF0:
/* 81412BF0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412BF4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412BF8 | 38 9F 29 74 */	addi r4, r31, 0x2974
/* 81412BFC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412C00 | 7D 89 03 A6 */	mtctr r12
/* 81412C04 | 4E 80 04 21 */	bctrl
/* 81412C08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412C0C | 38 80 00 0F */	li r4, 0xf
/* 81412C10 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412C14 | 7D 89 03 A6 */	mtctr r12
/* 81412C18 | 4E 80 04 21 */	bctrl
.L_81412C1C:
/* 81412C1C | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81412C20 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 81412C24 | 41 82 00 34 */	beq .L_81412C58
/* 81412C28 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412C2C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412C30 | 38 9F 29 84 */	addi r4, r31, 0x2984
/* 81412C34 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412C38 | 7D 89 03 A6 */	mtctr r12
/* 81412C3C | 4E 80 04 21 */	bctrl
/* 81412C40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412C44 | 38 80 00 0E */	li r4, 0xe
/* 81412C48 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412C4C | 7D 89 03 A6 */	mtctr r12
/* 81412C50 | 4E 80 04 21 */	bctrl
/* 81412C54 | 48 00 00 30 */	b .L_81412C84
.L_81412C58:
/* 81412C58 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412C5C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412C60 | 38 9F 29 84 */	addi r4, r31, 0x2984
/* 81412C64 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412C68 | 7D 89 03 A6 */	mtctr r12
/* 81412C6C | 4E 80 04 21 */	bctrl
/* 81412C70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412C74 | 38 80 00 0F */	li r4, 0xf
/* 81412C78 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412C7C | 7D 89 03 A6 */	mtctr r12
/* 81412C80 | 4E 80 04 21 */	bctrl
.L_81412C84:
/* 81412C84 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81412C88 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81412C8C | 41 82 00 34 */	beq .L_81412CC0
/* 81412C90 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412C94 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412C98 | 38 9F 29 94 */	addi r4, r31, 0x2994
/* 81412C9C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412CA0 | 7D 89 03 A6 */	mtctr r12
/* 81412CA4 | 4E 80 04 21 */	bctrl
/* 81412CA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412CAC | 38 80 00 0E */	li r4, 0xe
/* 81412CB0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412CB4 | 7D 89 03 A6 */	mtctr r12
/* 81412CB8 | 4E 80 04 21 */	bctrl
/* 81412CBC | 48 00 00 30 */	b .L_81412CEC
.L_81412CC0:
/* 81412CC0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412CC4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412CC8 | 38 9F 29 94 */	addi r4, r31, 0x2994
/* 81412CCC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412CD0 | 7D 89 03 A6 */	mtctr r12
/* 81412CD4 | 4E 80 04 21 */	bctrl
/* 81412CD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412CDC | 38 80 00 0F */	li r4, 0xf
/* 81412CE0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412CE4 | 7D 89 03 A6 */	mtctr r12
/* 81412CE8 | 4E 80 04 21 */	bctrl
.L_81412CEC:
/* 81412CEC | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 81412CF0 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81412CF4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81412CF8 | 41 82 00 A8 */	beq .L_81412DA0
/* 81412CFC | 40 80 00 10 */	bge .L_81412D0C
/* 81412D00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81412D04 | 40 80 00 14 */	bge .L_81412D18
/* 81412D08 | 48 00 01 A4 */	b .L_81412EAC
.L_81412D0C:
/* 81412D0C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81412D10 | 40 80 01 9C */	bge .L_81412EAC
/* 81412D14 | 48 00 01 14 */	b .L_81412E28
.L_81412D18:
/* 81412D18 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412D1C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412D20 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81412D24 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412D28 | 7D 89 03 A6 */	mtctr r12
/* 81412D2C | 4E 80 04 21 */	bctrl
/* 81412D30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412D34 | 38 80 00 00 */	li r4, 0x0
/* 81412D38 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412D3C | 7D 89 03 A6 */	mtctr r12
/* 81412D40 | 4E 80 04 21 */	bctrl
/* 81412D44 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412D48 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412D4C | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 81412D50 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412D54 | 7D 89 03 A6 */	mtctr r12
/* 81412D58 | 4E 80 04 21 */	bctrl
/* 81412D5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412D60 | 38 80 00 00 */	li r4, 0x0
/* 81412D64 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412D68 | 7D 89 03 A6 */	mtctr r12
/* 81412D6C | 4E 80 04 21 */	bctrl
/* 81412D70 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412D74 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412D78 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81412D7C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412D80 | 7D 89 03 A6 */	mtctr r12
/* 81412D84 | 4E 80 04 21 */	bctrl
/* 81412D88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412D8C | 38 80 00 05 */	li r4, 0x5
/* 81412D90 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412D94 | 7D 89 03 A6 */	mtctr r12
/* 81412D98 | 4E 80 04 21 */	bctrl
/* 81412D9C | 48 00 01 10 */	b .L_81412EAC
.L_81412DA0:
/* 81412DA0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412DA4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412DA8 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81412DAC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412DB0 | 7D 89 03 A6 */	mtctr r12
/* 81412DB4 | 4E 80 04 21 */	bctrl
/* 81412DB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412DBC | 38 80 00 05 */	li r4, 0x5
/* 81412DC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412DC4 | 7D 89 03 A6 */	mtctr r12
/* 81412DC8 | 4E 80 04 21 */	bctrl
/* 81412DCC | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412DD0 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412DD4 | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 81412DD8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412DDC | 7D 89 03 A6 */	mtctr r12
/* 81412DE0 | 4E 80 04 21 */	bctrl
/* 81412DE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412DE8 | 38 80 00 00 */	li r4, 0x0
/* 81412DEC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412DF0 | 7D 89 03 A6 */	mtctr r12
/* 81412DF4 | 4E 80 04 21 */	bctrl
/* 81412DF8 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412DFC | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412E00 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81412E04 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412E08 | 7D 89 03 A6 */	mtctr r12
/* 81412E0C | 4E 80 04 21 */	bctrl
/* 81412E10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412E14 | 38 80 00 00 */	li r4, 0x0
/* 81412E18 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412E1C | 7D 89 03 A6 */	mtctr r12
/* 81412E20 | 4E 80 04 21 */	bctrl
/* 81412E24 | 48 00 00 88 */	b .L_81412EAC
.L_81412E28:
/* 81412E28 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412E2C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412E30 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81412E34 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412E38 | 7D 89 03 A6 */	mtctr r12
/* 81412E3C | 4E 80 04 21 */	bctrl
/* 81412E40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412E44 | 38 80 00 00 */	li r4, 0x0
/* 81412E48 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412E4C | 7D 89 03 A6 */	mtctr r12
/* 81412E50 | 4E 80 04 21 */	bctrl
/* 81412E54 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412E58 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412E5C | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 81412E60 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412E64 | 7D 89 03 A6 */	mtctr r12
/* 81412E68 | 4E 80 04 21 */	bctrl
/* 81412E6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412E70 | 38 80 00 05 */	li r4, 0x5
/* 81412E74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412E78 | 7D 89 03 A6 */	mtctr r12
/* 81412E7C | 4E 80 04 21 */	bctrl
/* 81412E80 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412E84 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412E88 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81412E8C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412E90 | 7D 89 03 A6 */	mtctr r12
/* 81412E94 | 4E 80 04 21 */	bctrl
/* 81412E98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412E9C | 38 80 00 00 */	li r4, 0x0
/* 81412EA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412EA4 | 7D 89 03 A6 */	mtctr r12
/* 81412EA8 | 4E 80 04 21 */	bctrl
.L_81412EAC:
/* 81412EAC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412EB0 | 7F C3 F3 78 */	mr r3, r30
/* 81412EB4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412EB8 | 7D 89 03 A6 */	mtctr r12
/* 81412EBC | 4E 80 04 21 */	bctrl
/* 81412EC0 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 81412EC4 | 41 82 00 20 */	beq .L_81412EE4
/* 81412EC8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81412ECC | 7F C3 F3 78 */	mr r3, r30
/* 81412ED0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412ED4 | 7D 89 03 A6 */	mtctr r12
/* 81412ED8 | 4E 80 04 21 */	bctrl
/* 81412EDC | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81412EE0 | 40 82 00 C8 */	bne .L_81412FA8
.L_81412EE4:
/* 81412EE4 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 81412EE8 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81412EEC | 41 82 00 08 */	beq .L_81412EF4
/* 81412EF0 | 48 00 00 60 */	b .L_81412F50
.L_81412EF4:
/* 81412EF4 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412EF8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412EFC | 38 9F 29 DC */	addi r4, r31, 0x29dc
/* 81412F00 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412F04 | 7D 89 03 A6 */	mtctr r12
/* 81412F08 | 4E 80 04 21 */	bctrl
/* 81412F0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412F10 | 38 80 00 05 */	li r4, 0x5
/* 81412F14 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412F18 | 7D 89 03 A6 */	mtctr r12
/* 81412F1C | 4E 80 04 21 */	bctrl
/* 81412F20 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412F24 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412F28 | 38 9F 29 EC */	addi r4, r31, 0x29ec
/* 81412F2C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412F30 | 7D 89 03 A6 */	mtctr r12
/* 81412F34 | 4E 80 04 21 */	bctrl
/* 81412F38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412F3C | 38 80 00 00 */	li r4, 0x0
/* 81412F40 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412F44 | 7D 89 03 A6 */	mtctr r12
/* 81412F48 | 4E 80 04 21 */	bctrl
/* 81412F4C | 48 00 00 5C */	b .L_81412FA8
.L_81412F50:
/* 81412F50 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412F54 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412F58 | 38 9F 29 DC */	addi r4, r31, 0x29dc
/* 81412F5C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412F60 | 7D 89 03 A6 */	mtctr r12
/* 81412F64 | 4E 80 04 21 */	bctrl
/* 81412F68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412F6C | 38 80 00 00 */	li r4, 0x0
/* 81412F70 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412F74 | 7D 89 03 A6 */	mtctr r12
/* 81412F78 | 4E 80 04 21 */	bctrl
/* 81412F7C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81412F80 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81412F84 | 38 9F 29 EC */	addi r4, r31, 0x29ec
/* 81412F88 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81412F8C | 7D 89 03 A6 */	mtctr r12
/* 81412F90 | 4E 80 04 21 */	bctrl
/* 81412F94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412F98 | 38 80 00 05 */	li r4, 0x5
/* 81412F9C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81412FA0 | 7D 89 03 A6 */	mtctr r12
/* 81412FA4 | 4E 80 04 21 */	bctrl
.L_81412FA8:
/* 81412FA8 | 80 7E 00 48 */	lwz r3, 0x48(r30)
/* 81412FAC | 38 80 00 00 */	li r4, 0x0
/* 81412FB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412FB4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81412FB8 | 7D 89 03 A6 */	mtctr r12
/* 81412FBC | 4E 80 04 21 */	bctrl
/* 81412FC0 | 80 7E 00 48 */	lwz r3, 0x48(r30)
/* 81412FC4 | 38 9E 00 5C */	addi r4, r30, 0x5c
/* 81412FC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81412FCC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81412FD0 | 7D 89 03 A6 */	mtctr r12
/* 81412FD4 | 4E 80 04 21 */	bctrl
/* 81412FD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81412FDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81412FE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81412FE4 | 7C 08 03 A6 */	mtlr r0
/* 81412FE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81412FEC | 4E 80 00 20 */	blr
.endfn initLayout__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x2E18 | 0x81412FF0 | size: 0x150
# textinput::keyboard::pctype::LayoutByNW4R::calc()
.fn calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81412FF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81412FF4 | 7C 08 02 A6 */	mflr r0
/* 81412FF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81412FFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81413000 | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81413004 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81413008 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8141300C | 7C 7E 1B 78 */	mr r30, r3
/* 81413010 | 38 63 00 44 */	addi r3, r3, 0x44
/* 81413014 | 48 02 37 71 */	bl calc__Q39textinput11nw4rmanager6LayoutFv
/* 81413018 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8141301C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413020 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81413024 | 7D 89 03 A6 */	mtctr r12
/* 81413028 | 4E 80 04 21 */	bctrl
/* 8141302C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413030 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81413034 | 7D 89 03 A6 */	mtctr r12
/* 81413038 | 4E 80 04 21 */	bctrl
/* 8141303C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81413040 | 41 82 00 78 */	beq .L_814130B8
/* 81413044 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413048 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 8141304C | 38 9F 29 20 */	addi r4, r31, 0x2920
/* 81413050 | 38 A0 00 00 */	li r5, 0x0
/* 81413054 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81413058 | 7D 89 03 A6 */	mtctr r12
/* 8141305C | 4E 80 04 21 */	bctrl
/* 81413060 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413064 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413068 | 38 9F 29 2C */	addi r4, r31, 0x292c
/* 8141306C | 38 A0 00 00 */	li r5, 0x0
/* 81413070 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81413074 | 7D 89 03 A6 */	mtctr r12
/* 81413078 | 4E 80 04 21 */	bctrl
/* 8141307C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413080 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413084 | 38 9F 29 3C */	addi r4, r31, 0x293c
/* 81413088 | 38 A0 00 01 */	li r5, 0x1
/* 8141308C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81413090 | 7D 89 03 A6 */	mtctr r12
/* 81413094 | 4E 80 04 21 */	bctrl
/* 81413098 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 8141309C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814130A0 | 38 9F 29 4C */	addi r4, r31, 0x294c
/* 814130A4 | 38 A0 00 01 */	li r5, 0x1
/* 814130A8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814130AC | 7D 89 03 A6 */	mtctr r12
/* 814130B0 | 4E 80 04 21 */	bctrl
/* 814130B4 | 48 00 00 74 */	b .L_81413128
.L_814130B8:
/* 814130B8 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814130BC | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814130C0 | 38 9F 29 20 */	addi r4, r31, 0x2920
/* 814130C4 | 38 A0 00 01 */	li r5, 0x1
/* 814130C8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814130CC | 7D 89 03 A6 */	mtctr r12
/* 814130D0 | 4E 80 04 21 */	bctrl
/* 814130D4 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814130D8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814130DC | 38 9F 29 2C */	addi r4, r31, 0x292c
/* 814130E0 | 38 A0 00 01 */	li r5, 0x1
/* 814130E4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814130E8 | 7D 89 03 A6 */	mtctr r12
/* 814130EC | 4E 80 04 21 */	bctrl
/* 814130F0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814130F4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814130F8 | 38 9F 29 3C */	addi r4, r31, 0x293c
/* 814130FC | 38 A0 00 00 */	li r5, 0x0
/* 81413100 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81413104 | 7D 89 03 A6 */	mtctr r12
/* 81413108 | 4E 80 04 21 */	bctrl
/* 8141310C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413110 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413114 | 38 9F 29 4C */	addi r4, r31, 0x294c
/* 81413118 | 38 A0 00 00 */	li r5, 0x0
/* 8141311C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81413120 | 7D 89 03 A6 */	mtctr r12
/* 81413124 | 4E 80 04 21 */	bctrl
.L_81413128:
/* 81413128 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141312C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413130 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81413134 | 7C 08 03 A6 */	mtlr r0
/* 81413138 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141313C | 4E 80 00 20 */	blr
.endfn calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x2F68 | 0x81413140 | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::draw()
.fn draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81413140 | 38 63 00 44 */	addi r3, r3, 0x44
/* 81413144 | 48 02 33 8C */	b draw__Q39textinput11nw4rmanager6LayoutFv
.endfn draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x2F70 | 0x81413148 | size: 0x14
# textinput::keyboard::pctype::LayoutByNW4R::inputCharCode(wchar_t)
.fn inputCharCode__Q49textinput8keyboard6pctype12LayoutByNW4RFw, global
/* 81413148 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141314C | 38 A0 00 00 */	li r5, 0x0
/* 81413150 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 81413154 | 7D 89 03 A6 */	mtctr r12
/* 81413158 | 4E 80 04 20 */	bctr
.endfn inputCharCode__Q49textinput8keyboard6pctype12LayoutByNW4RFw

# .text:0x2F84 | 0x8141315C | size: 0x170
# textinput::keyboard::pctype::LayoutByNW4R::onPressedCaps()
.fn onPressedCaps__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 8141315C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81413160 | 7C 08 02 A6 */	mflr r0
/* 81413164 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81413168 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141316C | 7C 7F 1B 78 */	mr r31, r3
/* 81413170 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81413174 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 81413178 | 7C 00 07 75 */	extsb. r0, r0
/* 8141317C | 40 82 00 2C */	bne .L_814131A8
/* 81413180 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81413184 | 48 03 73 99 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81413188 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 8141318C | 3C A0 81 0C */	lis r5, lbl_810C6580@ha
/* 81413190 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 81413194 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81413198 | 38 A5 65 80 */	addi r5, r5, lbl_810C6580@l
/* 8141319C | 48 1E 5E 45 */	bl __register_global_object
/* 814131A0 | 38 00 00 01 */	li r0, 0x1
/* 814131A4 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_814131A8:
/* 814131A8 | 88 0D AC BC */	lbz r0, lbl_81698CFC@sda21(r0)
/* 814131AC | 3B CD AC BC */	li r30, lbl_81698CFC@sda21
/* 814131B0 | 38 60 00 00 */	li r3, 0x0
/* 814131B4 | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 814131B8 | 40 82 00 10 */	bne .L_814131C8
/* 814131BC | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814131C0 | 54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 814131C4 | 41 82 00 08 */	beq .L_814131CC
.L_814131C8:
/* 814131C8 | 38 60 00 01 */	li r3, 0x1
.L_814131CC:
/* 814131CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814131D0 | 40 82 00 4C */	bne .L_8141321C
/* 814131D4 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814131D8 | 54 60 00 37 */	clrrwi. r0, r3, 4
/* 814131DC | 41 82 00 14 */	beq .L_814131F0
/* 814131E0 | 54 60 06 6E */	rlwinm r0, r3, 0, 25, 23
/* 814131E4 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814131E8 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814131EC | 4B FF E0 0D */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_814131F0:
/* 814131F0 | 88 1F 01 20 */	lbz r0, 0x120(r31)
/* 814131F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814131F8 | 41 82 00 24 */	beq .L_8141321C
/* 814131FC | 38 00 00 00 */	li r0, 0x0
/* 81413200 | 80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 81413204 | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 81413208 | 38 80 00 05 */	li r4, 0x5
/* 8141320C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413210 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413214 | 7D 89 03 A6 */	mtctr r12
/* 81413218 | 4E 80 04 21 */	bctrl
.L_8141321C:
/* 8141321C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81413220 | 7F C3 F3 78 */	mr r3, r30
/* 81413224 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81413228 | 54 00 CF FE */	extrwi r0, r0, 1, 24
/* 8141322C | 7C 00 00 34 */	cntlzw r0, r0
/* 81413230 | 54 00 DE 3E */	extrwi r0, r0, 8, 19
/* 81413234 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81413238 | 48 03 73 35 */	bl changeCapsLock__Q29textinput12LayoutGatherFRCUc
/* 8141323C | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 81413240 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 81413244 | 68 04 00 40 */	xori r4, r0, 0x40
/* 81413248 | 54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 8141324C | 50 80 06 72 */	rlwimi r0, r4, 0, 25, 25
/* 81413250 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 81413254 | 4B FF DF A5 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 81413258 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8141325C | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 81413260 | 98 1F 01 44 */	stb r0, 0x144(r31)
/* 81413264 | 41 82 00 20 */	beq .L_81413284
/* 81413268 | 80 7F 01 40 */	lwz r3, 0x140(r31)
/* 8141326C | 38 80 00 0A */	li r4, 0xa
/* 81413270 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413274 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413278 | 7D 89 03 A6 */	mtctr r12
/* 8141327C | 4E 80 04 21 */	bctrl
/* 81413280 | 48 00 00 1C */	b .L_8141329C
.L_81413284:
/* 81413284 | 80 7F 01 40 */	lwz r3, 0x140(r31)
/* 81413288 | 38 80 00 0B */	li r4, 0xb
/* 8141328C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413290 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413294 | 7D 89 03 A6 */	mtctr r12
/* 81413298 | 4E 80 04 21 */	bctrl
.L_8141329C:
/* 8141329C | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 814132A0 | 38 80 00 0D */	li r4, 0xd
/* 814132A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814132A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814132AC | 7D 89 03 A6 */	mtctr r12
/* 814132B0 | 4E 80 04 21 */	bctrl
/* 814132B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814132B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814132BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814132C0 | 7C 08 03 A6 */	mtlr r0
/* 814132C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814132C8 | 4E 80 00 20 */	blr
.endfn onPressedCaps__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x30F4 | 0x814132CC | size: 0xC4
# textinput::keyboard::pctype::LayoutByNW4R::onPressedShift(bool)
.fn onPressedShift__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 814132CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814132D0 | 7C 08 02 A6 */	mflr r0
/* 814132D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814132D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814132DC | 7C 9F 23 78 */	mr r31, r4
/* 814132E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814132E4 | 7C 7E 1B 78 */	mr r30, r3
/* 814132E8 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814132EC | 80 A3 00 20 */	lwz r5, 0x20(r3)
/* 814132F0 | 54 04 00 36 */	clrrwi r4, r0, 4
/* 814132F4 | 60 84 00 80 */	ori r4, r4, 0x80
/* 814132F8 | 54 A0 00 36 */	clrrwi r0, r5, 4
/* 814132FC | 7C 00 20 40 */	cmplw r0, r4
/* 81413300 | 41 82 00 30 */	beq .L_81413330
/* 81413304 | 80 C3 00 34 */	lwz r6, 0x34(r3)
/* 81413308 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 8141330C | 50 A0 07 3E */	rlwimi r0, r5, 0, 28, 31
/* 81413310 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81413314 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81413318 | 41 82 00 18 */	beq .L_81413330
/* 8141331C | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 81413320 | 7C C3 33 78 */	mr r3, r6
/* 81413324 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81413328 | 7D 89 03 A6 */	mtctr r12
/* 8141332C | 4E 80 04 21 */	bctrl
.L_81413330:
/* 81413330 | 38 00 00 01 */	li r0, 0x1
/* 81413334 | 80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 81413338 | 98 1E 01 20 */	stb r0, 0x120(r30)
/* 8141333C | 38 80 00 0A */	li r4, 0xa
/* 81413340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413344 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413348 | 7D 89 03 A6 */	mtctr r12
/* 8141334C | 4E 80 04 21 */	bctrl
/* 81413350 | 48 00 00 08 */	b .L_81413358
/* 81413354 | 4E 80 04 21 */	bctrl
.L_81413358:
/* 81413358 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141335C | 41 82 00 1C */	beq .L_81413378
/* 81413360 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 81413364 | 38 80 00 0D */	li r4, 0xd
/* 81413368 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141336C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413370 | 7D 89 03 A6 */	mtctr r12
/* 81413374 | 4E 80 04 21 */	bctrl
.L_81413378:
/* 81413378 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141337C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413380 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81413384 | 7C 08 03 A6 */	mtlr r0
/* 81413388 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141338C | 4E 80 00 20 */	blr
.endfn onPressedShift__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x31B8 | 0x81413390 | size: 0x9C
# textinput::keyboard::pctype::LayoutByNW4R::onReleasedShift()
.fn onReleasedShift__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81413390 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81413394 | 7C 08 02 A6 */	mflr r0
/* 81413398 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141339C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814133A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814133A4 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814133A8 | 80 A3 00 20 */	lwz r5, 0x20(r3)
/* 814133AC | 54 04 00 36 */	clrrwi r4, r0, 4
/* 814133B0 | 54 84 06 6E */	rlwinm r4, r4, 0, 25, 23
/* 814133B4 | 54 A0 00 36 */	clrrwi r0, r5, 4
/* 814133B8 | 7C 00 20 40 */	cmplw r0, r4
/* 814133BC | 41 82 00 30 */	beq .L_814133EC
/* 814133C0 | 80 C3 00 34 */	lwz r6, 0x34(r3)
/* 814133C4 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 814133C8 | 50 A0 07 3E */	rlwimi r0, r5, 0, 28, 31
/* 814133CC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814133D0 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814133D4 | 41 82 00 18 */	beq .L_814133EC
/* 814133D8 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 814133DC | 7C C3 33 78 */	mr r3, r6
/* 814133E0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814133E4 | 7D 89 03 A6 */	mtctr r12
/* 814133E8 | 4E 80 04 21 */	bctrl
.L_814133EC:
/* 814133EC | 88 1F 01 20 */	lbz r0, 0x120(r31)
/* 814133F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814133F4 | 41 82 00 24 */	beq .L_81413418
/* 814133F8 | 38 00 00 00 */	li r0, 0x0
/* 814133FC | 80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 81413400 | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 81413404 | 38 80 00 05 */	li r4, 0x5
/* 81413408 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141340C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413410 | 7D 89 03 A6 */	mtctr r12
/* 81413414 | 4E 80 04 21 */	bctrl
.L_81413418:
/* 81413418 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141341C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413420 | 7C 08 03 A6 */	mtlr r0
/* 81413424 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81413428 | 4E 80 00 20 */	blr
.endfn onReleasedShift__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3254 | 0x8141342C | size: 0x688
# textinput::keyboard::pctype::LayoutByNW4R::onKey(unsigned long, void*)
.fn onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, global
/* 8141342C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81413430 | 7C 08 02 A6 */	mflr r0
/* 81413434 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81413438 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141343C | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81413440 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81413444 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81413448 | 7C BE 2B 78 */	mr r30, r5
/* 8141344C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81413450 | 7C 9D 23 78 */	mr r29, r4
/* 81413454 | 7F C4 F3 78 */	mr r4, r30
/* 81413458 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8141345C | 7C 7C 1B 78 */	mr r28, r3
/* 81413460 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413464 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81413468 | 7D 89 03 A6 */	mtctr r12
/* 8141346C | 4E 80 04 21 */	bctrl
/* 81413470 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 81413474 | 40 82 06 10 */	bne .L_81413A84
/* 81413478 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8141347C | 7F 83 E3 78 */	mr r3, r28
/* 81413480 | 7F C4 F3 78 */	mr r4, r30
/* 81413484 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81413488 | 7D 89 03 A6 */	mtctr r12
/* 8141348C | 4E 80 04 21 */	bctrl
/* 81413490 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81413494 | 40 82 05 F0 */	bne .L_81413A84
/* 81413498 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8141349C | 7F 83 E3 78 */	mr r3, r28
/* 814134A0 | 7F C4 F3 78 */	mr r4, r30
/* 814134A4 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 814134A8 | 7D 89 03 A6 */	mtctr r12
/* 814134AC | 4E 80 04 21 */	bctrl
/* 814134B0 | 28 03 00 13 */	cmplwi r3, 0x13
/* 814134B4 | 41 81 05 D0 */	bgt .L_81413A84
/* 814134B8 | 3C 80 81 66 */	lis r4, jumptable_8165B78C@ha
/* 814134BC | 54 60 10 3A */	slwi r0, r3, 2
/* 814134C0 | 38 84 B7 8C */	addi r4, r4, jumptable_8165B78C@l
/* 814134C4 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 814134C8 | 7C 89 03 A6 */	mtctr r4
/* 814134CC | 4E 80 04 20 */	bctr
.L_814134D0:
/* 814134D0 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 814134D4 | 7C 00 07 75 */	extsb. r0, r0
/* 814134D8 | 40 82 00 2C */	bne .L_81413504
/* 814134DC | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 814134E0 | 48 03 70 3D */	bl __ct__Q29textinput12LayoutGatherFv
/* 814134E4 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 814134E8 | 3C A0 81 0C */	lis r5, lbl_810C6580@ha
/* 814134EC | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 814134F0 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 814134F4 | 38 A5 65 80 */	addi r5, r5, lbl_810C6580@l
/* 814134F8 | 48 1E 5A E9 */	bl __register_global_object
/* 814134FC | 38 00 00 01 */	li r0, 0x1
/* 81413500 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81413504:
/* 81413504 | 88 0D AC BC */	lbz r0, lbl_81698CFC@sda21(r0)
/* 81413508 | 3B ED AC BC */	li r31, lbl_81698CFC@sda21
/* 8141350C | 38 60 00 00 */	li r3, 0x0
/* 81413510 | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 81413514 | 40 82 00 10 */	bne .L_81413524
/* 81413518 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8141351C | 54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 81413520 | 41 82 00 08 */	beq .L_81413528
.L_81413524:
/* 81413524 | 38 60 00 01 */	li r3, 0x1
.L_81413528:
/* 81413528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141352C | 40 82 00 4C */	bne .L_81413578
/* 81413530 | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 81413534 | 54 60 00 37 */	clrrwi. r0, r3, 4
/* 81413538 | 41 82 00 14 */	beq .L_8141354C
/* 8141353C | 54 60 06 6E */	rlwinm r0, r3, 0, 25, 23
/* 81413540 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 81413544 | 90 1C 00 20 */	stw r0, 0x20(r28)
/* 81413548 | 4B FF DC B1 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_8141354C:
/* 8141354C | 88 1C 01 20 */	lbz r0, 0x120(r28)
/* 81413550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81413554 | 41 82 00 24 */	beq .L_81413578
/* 81413558 | 38 00 00 00 */	li r0, 0x0
/* 8141355C | 80 7C 01 1C */	lwz r3, 0x11c(r28)
/* 81413560 | 98 1C 01 20 */	stb r0, 0x120(r28)
/* 81413564 | 38 80 00 05 */	li r4, 0x5
/* 81413568 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141356C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413570 | 7D 89 03 A6 */	mtctr r12
/* 81413574 | 4E 80 04 21 */	bctrl
.L_81413578:
/* 81413578 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8141357C | 7F E3 FB 78 */	mr r3, r31
/* 81413580 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81413584 | 54 00 CF FE */	extrwi r0, r0, 1, 24
/* 81413588 | 7C 00 00 34 */	cntlzw r0, r0
/* 8141358C | 54 00 DE 3E */	extrwi r0, r0, 8, 19
/* 81413590 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81413594 | 48 03 6F D9 */	bl changeCapsLock__Q29textinput12LayoutGatherFRCUc
/* 81413598 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 8141359C | 38 7C 00 20 */	addi r3, r28, 0x20
/* 814135A0 | 68 04 00 40 */	xori r4, r0, 0x40
/* 814135A4 | 54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 814135A8 | 50 80 06 72 */	rlwimi r0, r4, 0, 25, 25
/* 814135AC | 90 1C 00 20 */	stw r0, 0x20(r28)
/* 814135B0 | 4B FF DC 49 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 814135B4 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814135B8 | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 814135BC | 98 1C 01 44 */	stb r0, 0x144(r28)
/* 814135C0 | 41 82 00 20 */	beq .L_814135E0
/* 814135C4 | 80 7C 01 40 */	lwz r3, 0x140(r28)
/* 814135C8 | 38 80 00 0A */	li r4, 0xa
/* 814135CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814135D0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814135D4 | 7D 89 03 A6 */	mtctr r12
/* 814135D8 | 4E 80 04 21 */	bctrl
/* 814135DC | 48 00 00 1C */	b .L_814135F8
.L_814135E0:
/* 814135E0 | 80 7C 01 40 */	lwz r3, 0x140(r28)
/* 814135E4 | 38 80 00 0B */	li r4, 0xb
/* 814135E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814135EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814135F0 | 7D 89 03 A6 */	mtctr r12
/* 814135F4 | 4E 80 04 21 */	bctrl
.L_814135F8:
/* 814135F8 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 814135FC | 38 80 00 0D */	li r4, 0xd
/* 81413600 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413604 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413608 | 7D 89 03 A6 */	mtctr r12
/* 8141360C | 4E 80 04 21 */	bctrl
/* 81413610 | 48 00 04 74 */	b .L_81413A84
.L_81413614:
/* 81413614 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 81413618 | 7C 00 07 75 */	extsb. r0, r0
/* 8141361C | 40 82 00 2C */	bne .L_81413648
/* 81413620 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81413624 | 48 03 6E F9 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81413628 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 8141362C | 3C A0 81 0C */	lis r5, lbl_810C6580@ha
/* 81413630 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 81413634 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81413638 | 38 A5 65 80 */	addi r5, r5, lbl_810C6580@l
/* 8141363C | 48 1E 59 A5 */	bl __register_global_object
/* 81413640 | 38 00 00 01 */	li r0, 0x1
/* 81413644 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81413648:
/* 81413648 | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8141364C | 3B ED AC BC */	li r31, lbl_81698CFC@sda21
/* 81413650 | 54 60 00 37 */	clrrwi. r0, r3, 4
/* 81413654 | 41 82 00 14 */	beq .L_81413668
/* 81413658 | 54 60 06 B0 */	rlwinm r0, r3, 0, 26, 24
/* 8141365C | 38 7C 00 20 */	addi r3, r28, 0x20
/* 81413660 | 90 1C 00 20 */	stw r0, 0x20(r28)
/* 81413664 | 4B FF DB 95 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81413668:
/* 81413668 | 88 1C 01 44 */	lbz r0, 0x144(r28)
/* 8141366C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81413670 | 41 82 00 24 */	beq .L_81413694
/* 81413674 | 38 00 00 00 */	li r0, 0x0
/* 81413678 | 80 7C 01 40 */	lwz r3, 0x140(r28)
/* 8141367C | 98 1C 01 44 */	stb r0, 0x144(r28)
/* 81413680 | 38 80 00 05 */	li r4, 0x5
/* 81413684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413688 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141368C | 7D 89 03 A6 */	mtctr r12
/* 81413690 | 4E 80 04 21 */	bctrl
.L_81413694:
/* 81413694 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 81413698 | 38 80 00 00 */	li r4, 0x0
/* 8141369C | 54 60 D7 FF */	extrwi. r0, r3, 1, 25
/* 814136A0 | 40 82 00 0C */	bne .L_814136AC
/* 814136A4 | 54 60 DF FF */	extrwi. r0, r3, 1, 26
/* 814136A8 | 41 82 00 08 */	beq .L_814136B0
.L_814136AC:
/* 814136AC | 38 80 00 01 */	li r4, 0x1
.L_814136B0:
/* 814136B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814136B4 | 40 82 00 20 */	bne .L_814136D4
/* 814136B8 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814136BC | 38 7C 00 20 */	addi r3, r28, 0x20
/* 814136C0 | 68 04 00 80 */	xori r4, r0, 0x80
/* 814136C4 | 54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 814136C8 | 50 80 06 30 */	rlwimi r0, r4, 0, 24, 24
/* 814136CC | 90 1C 00 20 */	stw r0, 0x20(r28)
/* 814136D0 | 4B FF DB 29 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_814136D4:
/* 814136D4 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814136D8 | 54 00 CF FF */	extrwi. r0, r0, 1, 24
/* 814136DC | 98 1C 01 20 */	stb r0, 0x120(r28)
/* 814136E0 | 41 82 00 20 */	beq .L_81413700
/* 814136E4 | 80 7C 01 1C */	lwz r3, 0x11c(r28)
/* 814136E8 | 38 80 00 0A */	li r4, 0xa
/* 814136EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814136F0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814136F4 | 7D 89 03 A6 */	mtctr r12
/* 814136F8 | 4E 80 04 21 */	bctrl
/* 814136FC | 48 00 00 1C */	b .L_81413718
.L_81413700:
/* 81413700 | 80 7C 01 1C */	lwz r3, 0x11c(r28)
/* 81413704 | 38 80 00 0B */	li r4, 0xb
/* 81413708 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141370C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413710 | 7D 89 03 A6 */	mtctr r12
/* 81413714 | 4E 80 04 21 */	bctrl
.L_81413718:
/* 81413718 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 8141371C | 38 80 00 0D */	li r4, 0xd
/* 81413720 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413724 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413728 | 7D 89 03 A6 */	mtctr r12
/* 8141372C | 4E 80 04 21 */	bctrl
/* 81413730 | 48 00 03 54 */	b .L_81413A84
.L_81413734:
/* 81413734 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81413738 | 38 80 00 09 */	li r4, 0x9
/* 8141373C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413740 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413744 | 7D 89 03 A6 */	mtctr r12
/* 81413748 | 4E 80 04 21 */	bctrl
/* 8141374C | 48 00 03 38 */	b .L_81413A84
.L_81413750:
/* 81413750 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81413754 | 7F 83 E3 78 */	mr r3, r28
/* 81413758 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8141375C | 7D 89 03 A6 */	mtctr r12
/* 81413760 | 4E 80 04 21 */	bctrl
/* 81413764 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81413768 | 40 82 03 1C */	bne .L_81413A84
/* 8141376C | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81413770 | 38 80 00 0D */	li r4, 0xd
/* 81413774 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413778 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141377C | 7D 89 03 A6 */	mtctr r12
/* 81413780 | 4E 80 04 21 */	bctrl
/* 81413784 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413788 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 8141378C | 38 9F 28 BC */	addi r4, r31, 0x28bc
/* 81413790 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413794 | 7D 89 03 A6 */	mtctr r12
/* 81413798 | 4E 80 04 21 */	bctrl
/* 8141379C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814137A0 | 38 80 00 06 */	li r4, 0x6
/* 814137A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814137A8 | 7D 89 03 A6 */	mtctr r12
/* 814137AC | 4E 80 04 21 */	bctrl
/* 814137B0 | 48 00 02 D4 */	b .L_81413A84
.L_814137B4:
/* 814137B4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814137B8 | 7F 83 E3 78 */	mr r3, r28
/* 814137BC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814137C0 | 7D 89 03 A6 */	mtctr r12
/* 814137C4 | 4E 80 04 21 */	bctrl
/* 814137C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814137CC | 41 82 02 B8 */	beq .L_81413A84
/* 814137D0 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 814137D4 | 38 80 00 0D */	li r4, 0xd
/* 814137D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814137DC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814137E0 | 7D 89 03 A6 */	mtctr r12
/* 814137E4 | 4E 80 04 21 */	bctrl
/* 814137E8 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 814137EC | 38 7C 00 44 */	addi r3, r28, 0x44
/* 814137F0 | 38 9F 28 AC */	addi r4, r31, 0x28ac
/* 814137F4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814137F8 | 7D 89 03 A6 */	mtctr r12
/* 814137FC | 4E 80 04 21 */	bctrl
/* 81413800 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413804 | 38 80 00 06 */	li r4, 0x6
/* 81413808 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141380C | 7D 89 03 A6 */	mtctr r12
/* 81413810 | 4E 80 04 21 */	bctrl
/* 81413814 | 48 00 02 70 */	b .L_81413A84
.L_81413818:
/* 81413818 | 80 1C 00 28 */	lwz r0, 0x28(r28)
/* 8141381C | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81413820 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81413824 | 40 82 02 60 */	bne .L_81413A84
/* 81413828 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 8141382C | 38 80 00 0D */	li r4, 0xd
/* 81413830 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413834 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413838 | 7D 89 03 A6 */	mtctr r12
/* 8141383C | 4E 80 04 21 */	bctrl
/* 81413840 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413844 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81413848 | 38 9F 29 68 */	addi r4, r31, 0x2968
/* 8141384C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413850 | 7D 89 03 A6 */	mtctr r12
/* 81413854 | 4E 80 04 21 */	bctrl
/* 81413858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141385C | 38 80 00 06 */	li r4, 0x6
/* 81413860 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413864 | 7D 89 03 A6 */	mtctr r12
/* 81413868 | 4E 80 04 21 */	bctrl
/* 8141386C | 48 00 02 18 */	b .L_81413A84
.L_81413870:
/* 81413870 | 80 1C 00 28 */	lwz r0, 0x28(r28)
/* 81413874 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81413878 | 40 82 02 0C */	bne .L_81413A84
/* 8141387C | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81413880 | 38 80 00 0D */	li r4, 0xd
/* 81413884 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413888 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141388C | 7D 89 03 A6 */	mtctr r12
/* 81413890 | 4E 80 04 21 */	bctrl
/* 81413894 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413898 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 8141389C | 38 9F 29 5C */	addi r4, r31, 0x295c
/* 814138A0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814138A4 | 7D 89 03 A6 */	mtctr r12
/* 814138A8 | 4E 80 04 21 */	bctrl
/* 814138AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814138B0 | 38 80 00 06 */	li r4, 0x6
/* 814138B4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814138B8 | 7D 89 03 A6 */	mtctr r12
/* 814138BC | 4E 80 04 21 */	bctrl
/* 814138C0 | 48 00 01 C4 */	b .L_81413A84
.L_814138C4:
/* 814138C4 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814138C8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814138CC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814138D0 | 40 82 00 30 */	bne .L_81413900
/* 814138D4 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 814138D8 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 814138DC | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 814138E0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814138E4 | 7D 89 03 A6 */	mtctr r12
/* 814138E8 | 4E 80 04 21 */	bctrl
/* 814138EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814138F0 | 38 80 00 06 */	li r4, 0x6
/* 814138F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814138F8 | 7D 89 03 A6 */	mtctr r12
/* 814138FC | 4E 80 04 21 */	bctrl
.L_81413900:
/* 81413900 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 81413904 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81413908 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8141390C | 40 82 01 78 */	bne .L_81413A84
/* 81413910 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413914 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81413918 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 8141391C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413920 | 7D 89 03 A6 */	mtctr r12
/* 81413924 | 4E 80 04 21 */	bctrl
/* 81413928 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141392C | 38 80 00 06 */	li r4, 0x6
/* 81413930 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413934 | 7D 89 03 A6 */	mtctr r12
/* 81413938 | 4E 80 04 21 */	bctrl
/* 8141393C | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413940 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81413944 | 38 9F 29 EC */	addi r4, r31, 0x29ec
/* 81413948 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141394C | 7D 89 03 A6 */	mtctr r12
/* 81413950 | 4E 80 04 21 */	bctrl
/* 81413954 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413958 | 38 80 00 06 */	li r4, 0x6
/* 8141395C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413960 | 7D 89 03 A6 */	mtctr r12
/* 81413964 | 4E 80 04 21 */	bctrl
/* 81413968 | 48 00 01 1C */	b .L_81413A84
.L_8141396C:
/* 8141396C | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 81413970 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81413974 | 40 82 00 5C */	bne .L_814139D0
/* 81413978 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 8141397C | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81413980 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81413984 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413988 | 7D 89 03 A6 */	mtctr r12
/* 8141398C | 4E 80 04 21 */	bctrl
/* 81413990 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413994 | 38 80 00 06 */	li r4, 0x6
/* 81413998 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141399C | 7D 89 03 A6 */	mtctr r12
/* 814139A0 | 4E 80 04 21 */	bctrl
/* 814139A4 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 814139A8 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 814139AC | 38 9F 29 DC */	addi r4, r31, 0x29dc
/* 814139B0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814139B4 | 7D 89 03 A6 */	mtctr r12
/* 814139B8 | 4E 80 04 21 */	bctrl
/* 814139BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814139C0 | 38 80 00 06 */	li r4, 0x6
/* 814139C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814139C8 | 7D 89 03 A6 */	mtctr r12
/* 814139CC | 4E 80 04 21 */	bctrl
.L_814139D0:
/* 814139D0 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814139D4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814139D8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814139DC | 40 82 00 A8 */	bne .L_81413A84
/* 814139E0 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 814139E4 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 814139E8 | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 814139EC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814139F0 | 7D 89 03 A6 */	mtctr r12
/* 814139F4 | 4E 80 04 21 */	bctrl
/* 814139F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814139FC | 38 80 00 06 */	li r4, 0x6
/* 81413A00 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413A04 | 7D 89 03 A6 */	mtctr r12
/* 81413A08 | 4E 80 04 21 */	bctrl
/* 81413A0C | 48 00 00 78 */	b .L_81413A84
.L_81413A10:
/* 81413A10 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 81413A14 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81413A18 | 40 82 00 30 */	bne .L_81413A48
/* 81413A1C | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413A20 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81413A24 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81413A28 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413A2C | 7D 89 03 A6 */	mtctr r12
/* 81413A30 | 4E 80 04 21 */	bctrl
/* 81413A34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413A38 | 38 80 00 06 */	li r4, 0x6
/* 81413A3C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413A40 | 7D 89 03 A6 */	mtctr r12
/* 81413A44 | 4E 80 04 21 */	bctrl
.L_81413A48:
/* 81413A48 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 81413A4C | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81413A50 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81413A54 | 40 82 00 30 */	bne .L_81413A84
/* 81413A58 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81413A5C | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81413A60 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81413A64 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413A68 | 7D 89 03 A6 */	mtctr r12
/* 81413A6C | 4E 80 04 21 */	bctrl
/* 81413A70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413A74 | 38 80 00 06 */	li r4, 0x6
/* 81413A78 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413A7C | 7D 89 03 A6 */	mtctr r12
/* 81413A80 | 4E 80 04 21 */	bctrl
.L_81413A84:
/* 81413A84 | 7F 83 E3 78 */	mr r3, r28
/* 81413A88 | 7F A4 EB 78 */	mr r4, r29
/* 81413A8C | 7F C5 F3 78 */	mr r5, r30
/* 81413A90 | 4B FF C9 3D */	bl onKey__Q49textinput8keyboard6pctype4BaseFUlPv
/* 81413A94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81413A98 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81413A9C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81413AA0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81413AA4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81413AA8 | 7C 08 03 A6 */	mtlr r0
/* 81413AAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81413AB0 | 4E 80 00 20 */	blr
.endfn onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv

# .text:0x38DC | 0x81413AB4 | size: 0x4C
# textinput::keyboard::pctype::LayoutByNW4R::setLanguage(textinput::Language)
.fn setLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFQ29textinput8Language, global
/* 81413AB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81413AB8 | 7C 08 02 A6 */	mflr r0
/* 81413ABC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81413AC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81413AC4 | 7C 7F 1B 78 */	mr r31, r3
/* 81413AC8 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 81413ACC | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81413AD0 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81413AD4 | 4B FF D7 25 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
/* 81413AD8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81413ADC | 7F E3 FB 78 */	mr r3, r31
/* 81413AE0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413AE4 | 7D 89 03 A6 */	mtctr r12
/* 81413AE8 | 4E 80 04 21 */	bctrl
/* 81413AEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81413AF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413AF4 | 7C 08 03 A6 */	mtlr r0
/* 81413AF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81413AFC | 4E 80 00 20 */	blr
.endfn setLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFQ29textinput8Language

# .text:0x3928 | 0x81413B00 | size: 0x7C
# textinput::keyboard::pctype::LayoutByNW4R::updateFromReceiver(unsigned long, void*)
.fn updateFromReceiver__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, global
/* 81413B00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81413B04 | 7C 08 02 A6 */	mflr r0
/* 81413B08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81413B0C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81413B10 | 7C BF 2B 78 */	mr r31, r5
/* 81413B14 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81413B18 | 7C 9E 23 78 */	mr r30, r4
/* 81413B1C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81413B20 | 7C 7D 1B 78 */	mr r29, r3
/* 81413B24 | 4B FF CC 79 */	bl updateFromReceiver__Q49textinput8keyboard6pctype4BaseFUlPv
/* 81413B28 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81413B2C | 7F A3 EB 78 */	mr r3, r29
/* 81413B30 | 81 8C 01 50 */	lwz r12, 0x150(r12)
/* 81413B34 | 7D 89 03 A6 */	mtctr r12
/* 81413B38 | 4E 80 04 21 */	bctrl
/* 81413B3C | 2C 1E 00 1D */	cmpwi r30, 0x1d
/* 81413B40 | 41 82 00 08 */	beq .L_81413B48
/* 81413B44 | 48 00 00 1C */	b .L_81413B60
.L_81413B48:
/* 81413B48 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81413B4C | 7F A3 EB 78 */	mr r3, r29
/* 81413B50 | 7F E4 FB 78 */	mr r4, r31
/* 81413B54 | 81 8C 01 4C */	lwz r12, 0x14c(r12)
/* 81413B58 | 7D 89 03 A6 */	mtctr r12
/* 81413B5C | 4E 80 04 21 */	bctrl
.L_81413B60:
/* 81413B60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81413B64 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81413B68 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81413B6C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81413B70 | 7C 08 03 A6 */	mtlr r0
/* 81413B74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81413B78 | 4E 80 00 20 */	blr
.endfn updateFromReceiver__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv

# .text:0x39A4 | 0x81413B7C | size: 0x17C
# textinput::keyboard::pctype::LayoutByNW4R::onActive()
.fn onActive__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81413B7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81413B80 | 7C 08 02 A6 */	mflr r0
/* 81413B84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81413B88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81413B8C | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81413B90 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81413B94 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81413B98 | 7C 7E 1B 78 */	mr r30, r3
/* 81413B9C | 4B FF CC CD */	bl onActive__Q49textinput8keyboard6pctype4BaseFv
/* 81413BA0 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413BA4 | 48 02 29 09 */	bl init__Q39textinput11nw4rmanager6LayoutFv
/* 81413BA8 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81413BAC | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 81413BB0 | 41 82 00 34 */	beq .L_81413BE4
/* 81413BB4 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413BB8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413BBC | 38 9F 29 74 */	addi r4, r31, 0x2974
/* 81413BC0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413BC4 | 7D 89 03 A6 */	mtctr r12
/* 81413BC8 | 4E 80 04 21 */	bctrl
/* 81413BCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413BD0 | 38 80 00 0E */	li r4, 0xe
/* 81413BD4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413BD8 | 7D 89 03 A6 */	mtctr r12
/* 81413BDC | 4E 80 04 21 */	bctrl
/* 81413BE0 | 48 00 00 30 */	b .L_81413C10
.L_81413BE4:
/* 81413BE4 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413BE8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413BEC | 38 9F 29 74 */	addi r4, r31, 0x2974
/* 81413BF0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413BF4 | 7D 89 03 A6 */	mtctr r12
/* 81413BF8 | 4E 80 04 21 */	bctrl
/* 81413BFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413C00 | 38 80 00 0F */	li r4, 0xf
/* 81413C04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413C08 | 7D 89 03 A6 */	mtctr r12
/* 81413C0C | 4E 80 04 21 */	bctrl
.L_81413C10:
/* 81413C10 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81413C14 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 81413C18 | 41 82 00 34 */	beq .L_81413C4C
/* 81413C1C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413C20 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413C24 | 38 9F 29 84 */	addi r4, r31, 0x2984
/* 81413C28 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413C2C | 7D 89 03 A6 */	mtctr r12
/* 81413C30 | 4E 80 04 21 */	bctrl
/* 81413C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413C38 | 38 80 00 0E */	li r4, 0xe
/* 81413C3C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413C40 | 7D 89 03 A6 */	mtctr r12
/* 81413C44 | 4E 80 04 21 */	bctrl
/* 81413C48 | 48 00 00 30 */	b .L_81413C78
.L_81413C4C:
/* 81413C4C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413C50 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413C54 | 38 9F 29 84 */	addi r4, r31, 0x2984
/* 81413C58 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413C5C | 7D 89 03 A6 */	mtctr r12
/* 81413C60 | 4E 80 04 21 */	bctrl
/* 81413C64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413C68 | 38 80 00 0F */	li r4, 0xf
/* 81413C6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413C70 | 7D 89 03 A6 */	mtctr r12
/* 81413C74 | 4E 80 04 21 */	bctrl
.L_81413C78:
/* 81413C78 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81413C7C | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81413C80 | 41 82 00 34 */	beq .L_81413CB4
/* 81413C84 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413C88 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413C8C | 38 9F 29 94 */	addi r4, r31, 0x2994
/* 81413C90 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413C94 | 7D 89 03 A6 */	mtctr r12
/* 81413C98 | 4E 80 04 21 */	bctrl
/* 81413C9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413CA0 | 38 80 00 0E */	li r4, 0xe
/* 81413CA4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413CA8 | 7D 89 03 A6 */	mtctr r12
/* 81413CAC | 4E 80 04 21 */	bctrl
/* 81413CB0 | 48 00 00 30 */	b .L_81413CE0
.L_81413CB4:
/* 81413CB4 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81413CB8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81413CBC | 38 9F 29 94 */	addi r4, r31, 0x2994
/* 81413CC0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81413CC4 | 7D 89 03 A6 */	mtctr r12
/* 81413CC8 | 4E 80 04 21 */	bctrl
/* 81413CCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81413CD0 | 38 80 00 0F */	li r4, 0xf
/* 81413CD4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413CD8 | 7D 89 03 A6 */	mtctr r12
/* 81413CDC | 4E 80 04 21 */	bctrl
.L_81413CE0:
/* 81413CE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81413CE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413CE8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81413CEC | 7C 08 03 A6 */	mtlr r0
/* 81413CF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81413CF4 | 4E 80 00 20 */	blr
.endfn onActive__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3B20 | 0x81413CF8 | size: 0x50
# textinput::keyboard::pctype::LayoutByNW4R::onClose()
.fn onClose__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81413CF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81413CFC | 7C 08 02 A6 */	mflr r0
/* 81413D00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81413D04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81413D08 | 7C 7F 1B 78 */	mr r31, r3
/* 81413D0C | 81 83 00 44 */	lwz r12, 0x44(r3)
/* 81413D10 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81413D14 | 7D 89 03 A6 */	mtctr r12
/* 81413D18 | 38 63 00 44 */	addi r3, r3, 0x44
/* 81413D1C | 4E 80 04 21 */	bctrl
/* 81413D20 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81413D24 | 7F E3 FB 78 */	mr r3, r31
/* 81413D28 | 81 8C 01 48 */	lwz r12, 0x148(r12)
/* 81413D2C | 7D 89 03 A6 */	mtctr r12
/* 81413D30 | 4E 80 04 21 */	bctrl
/* 81413D34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81413D38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413D3C | 7C 08 03 A6 */	mtlr r0
/* 81413D40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81413D44 | 4E 80 00 20 */	blr
.endfn onClose__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3B70 | 0x81413D48 | size: 0x10
# textinput::nw4rmanager::Layout::initPaneLastDrawReceived()
.fn initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv, global
/* 81413D48 | 85 83 00 8C */	lwzu r12, 0x8c(r3)
/* 81413D4C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81413D50 | 7D 89 03 A6 */	mtctr r12
/* 81413D54 | 4E 80 04 20 */	bctr
.endfn initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv

# .text:0x3B80 | 0x81413D58 | size: 0x1C
# textinput::nw4rmanager::PaneFifo::init()
.fn init__Q39textinput11nw4rmanager8PaneFifoFv, global
/* 81413D58 | 38 00 00 00 */	li r0, 0x0
/* 81413D5C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81413D60 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81413D64 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81413D68 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81413D6C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81413D70 | 4E 80 00 20 */	blr
.endfn init__Q39textinput11nw4rmanager8PaneFifoFv

# .text:0x3B9C | 0x81413D74 | size: 0x90
# textinput::keyboard::pctype::LayoutByNW4R::throwReleaseForAll()
.fn throwReleaseForAll__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81413D74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81413D78 | 7C 08 02 A6 */	mflr r0
/* 81413D7C | 38 80 00 00 */	li r4, 0x0
/* 81413D80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81413D84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81413D88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81413D8C | 7C 7E 1B 78 */	mr r30, r3
/* 81413D90 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 81413D94 | 48 0F E5 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81413D98 | 7C 7F 1B 78 */	mr r31, r3
/* 81413D9C | 48 00 00 48 */	b .L_81413DE4
.L_81413DA0:
/* 81413DA0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81413DA4 | 7F E3 FB 78 */	mr r3, r31
/* 81413DA8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81413DAC | 7D 89 03 A6 */	mtctr r12
/* 81413DB0 | 4E 80 04 21 */	bctrl
/* 81413DB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81413DB8 | 40 82 00 1C */	bne .L_81413DD4
/* 81413DBC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81413DC0 | 7F E3 FB 78 */	mr r3, r31
/* 81413DC4 | 38 80 00 02 */	li r4, 0x2
/* 81413DC8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81413DCC | 7D 89 03 A6 */	mtctr r12
/* 81413DD0 | 4E 80 04 21 */	bctrl
.L_81413DD4:
/* 81413DD4 | 7F E4 FB 78 */	mr r4, r31
/* 81413DD8 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 81413DDC | 48 0F E5 01 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81413DE0 | 7C 7F 1B 78 */	mr r31, r3
.L_81413DE4:
/* 81413DE4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81413DE8 | 40 82 FF B8 */	bne .L_81413DA0
/* 81413DEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81413DF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81413DF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81413DF8 | 7C 08 03 A6 */	mtlr r0
/* 81413DFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81413E00 | 4E 80 00 20 */	blr
.endfn throwReleaseForAll__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3C2C | 0x81413E04 | size: 0x8
# textinput::keyboard::pctype::AnmPane::getKeyType() const
.fn getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv, global
/* 81413E04 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 81413E08 | 4E 80 00 20 */	blr
.endfn getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv

# .text:0x3C34 | 0x81413E0C | size: 0x4
# textinput::nw4rmanager::AnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81413E0C | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x3C38 | 0x81413E10 | size: 0x240
# textinput::keyboard::pctype::LayoutByNW4R::cancelStateFocusIn()
.fn cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81413E10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81413E14 | 7C 08 02 A6 */	mflr r0
/* 81413E18 | 38 80 00 00 */	li r4, 0x0
/* 81413E1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81413E20 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81413E24 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81413E28 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81413E2C | 7C 7D 1B 78 */	mr r29, r3
/* 81413E30 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 81413E34 | 48 0F E4 A9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81413E38 | 7C 7E 1B 78 */	mr r30, r3
/* 81413E3C | 3F E0 81 66 */	lis r31, jumptable_8165B7DC@ha
/* 81413E40 | 48 00 01 EC */	b .L_8141402C
.L_81413E44:
/* 81413E44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413E48 | 7F C3 F3 78 */	mr r3, r30
/* 81413E4C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81413E50 | 7D 89 03 A6 */	mtctr r12
/* 81413E54 | 4E 80 04 21 */	bctrl
/* 81413E58 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81413E5C | 41 82 01 04 */	beq .L_81413F60
/* 81413E60 | 40 80 00 14 */	bge .L_81413E74
/* 81413E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81413E68 | 41 82 00 18 */	beq .L_81413E80
/* 81413E6C | 40 80 00 8C */	bge .L_81413EF8
/* 81413E70 | 48 00 01 AC */	b .L_8141401C
.L_81413E74:
/* 81413E74 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 81413E78 | 40 80 01 A4 */	bge .L_8141401C
/* 81413E7C | 48 00 01 54 */	b .L_81413FD0
.L_81413E80:
/* 81413E80 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413E84 | 7F C3 F3 78 */	mr r3, r30
/* 81413E88 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81413E8C | 7D 89 03 A6 */	mtctr r12
/* 81413E90 | 4E 80 04 21 */	bctrl
/* 81413E94 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81413E98 | 40 80 00 1C */	bge .L_81413EB4
/* 81413E9C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81413EA0 | 41 82 01 7C */	beq .L_8141401C
/* 81413EA4 | 40 80 00 1C */	bge .L_81413EC0
/* 81413EA8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81413EAC | 40 80 00 14 */	bge .L_81413EC0
/* 81413EB0 | 48 00 01 6C */	b .L_8141401C
.L_81413EB4:
/* 81413EB4 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 81413EB8 | 41 82 00 24 */	beq .L_81413EDC
/* 81413EBC | 48 00 01 60 */	b .L_8141401C
.L_81413EC0:
/* 81413EC0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413EC4 | 7F C3 F3 78 */	mr r3, r30
/* 81413EC8 | 38 80 00 02 */	li r4, 0x2
/* 81413ECC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413ED0 | 7D 89 03 A6 */	mtctr r12
/* 81413ED4 | 4E 80 04 21 */	bctrl
/* 81413ED8 | 48 00 01 44 */	b .L_8141401C
.L_81413EDC:
/* 81413EDC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413EE0 | 7F C3 F3 78 */	mr r3, r30
/* 81413EE4 | 38 80 00 00 */	li r4, 0x0
/* 81413EE8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413EEC | 7D 89 03 A6 */	mtctr r12
/* 81413EF0 | 4E 80 04 21 */	bctrl
/* 81413EF4 | 48 00 01 28 */	b .L_8141401C
.L_81413EF8:
/* 81413EF8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413EFC | 7F C3 F3 78 */	mr r3, r30
/* 81413F00 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81413F04 | 7D 89 03 A6 */	mtctr r12
/* 81413F08 | 4E 80 04 21 */	bctrl
/* 81413F0C | 28 03 00 0B */	cmplwi r3, 0xb
/* 81413F10 | 41 81 01 0C */	bgt .L_8141401C
/* 81413F14 | 38 9F B7 DC */	addi r4, r31, jumptable_8165B7DC@l
/* 81413F18 | 54 60 10 3A */	slwi r0, r3, 2
/* 81413F1C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81413F20 | 7C 89 03 A6 */	mtctr r4
/* 81413F24 | 4E 80 04 20 */	bctr
.L_81413F28:
/* 81413F28 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413F2C | 7F C3 F3 78 */	mr r3, r30
/* 81413F30 | 38 80 00 02 */	li r4, 0x2
/* 81413F34 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413F38 | 7D 89 03 A6 */	mtctr r12
/* 81413F3C | 4E 80 04 21 */	bctrl
/* 81413F40 | 48 00 00 DC */	b .L_8141401C
.L_81413F44:
/* 81413F44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413F48 | 7F C3 F3 78 */	mr r3, r30
/* 81413F4C | 38 80 00 09 */	li r4, 0x9
/* 81413F50 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413F54 | 7D 89 03 A6 */	mtctr r12
/* 81413F58 | 4E 80 04 21 */	bctrl
/* 81413F5C | 48 00 00 C0 */	b .L_8141401C
.L_81413F60:
/* 81413F60 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413F64 | 7F C3 F3 78 */	mr r3, r30
/* 81413F68 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81413F6C | 7D 89 03 A6 */	mtctr r12
/* 81413F70 | 4E 80 04 21 */	bctrl
/* 81413F74 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81413F78 | 41 82 00 20 */	beq .L_81413F98
/* 81413F7C | 40 80 00 10 */	bge .L_81413F8C
/* 81413F80 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81413F84 | 41 82 00 14 */	beq .L_81413F98
/* 81413F88 | 48 00 00 94 */	b .L_8141401C
.L_81413F8C:
/* 81413F8C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81413F90 | 40 80 00 8C */	bge .L_8141401C
/* 81413F94 | 48 00 00 20 */	b .L_81413FB4
.L_81413F98:
/* 81413F98 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413F9C | 7F C3 F3 78 */	mr r3, r30
/* 81413FA0 | 38 80 00 02 */	li r4, 0x2
/* 81413FA4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413FA8 | 7D 89 03 A6 */	mtctr r12
/* 81413FAC | 4E 80 04 21 */	bctrl
/* 81413FB0 | 48 00 00 6C */	b .L_8141401C
.L_81413FB4:
/* 81413FB4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413FB8 | 7F C3 F3 78 */	mr r3, r30
/* 81413FBC | 38 80 00 05 */	li r4, 0x5
/* 81413FC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81413FC4 | 7D 89 03 A6 */	mtctr r12
/* 81413FC8 | 4E 80 04 21 */	bctrl
/* 81413FCC | 48 00 00 50 */	b .L_8141401C
.L_81413FD0:
/* 81413FD0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81413FD4 | 7F C3 F3 78 */	mr r3, r30
/* 81413FD8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81413FDC | 7D 89 03 A6 */	mtctr r12
/* 81413FE0 | 4E 80 04 21 */	bctrl
/* 81413FE4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81413FE8 | 41 82 00 34 */	beq .L_8141401C
/* 81413FEC | 40 80 00 10 */	bge .L_81413FFC
/* 81413FF0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81413FF4 | 40 80 00 10 */	bge .L_81414004
/* 81413FF8 | 48 00 00 24 */	b .L_8141401C
.L_81413FFC:
/* 81413FFC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81414000 | 40 80 00 1C */	bge .L_8141401C
.L_81414004:
/* 81414004 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81414008 | 7F C3 F3 78 */	mr r3, r30
/* 8141400C | 38 80 00 02 */	li r4, 0x2
/* 81414010 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414014 | 7D 89 03 A6 */	mtctr r12
/* 81414018 | 4E 80 04 21 */	bctrl
.L_8141401C:
/* 8141401C | 7F C4 F3 78 */	mr r4, r30
/* 81414020 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 81414024 | 48 0F E2 B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81414028 | 7C 7E 1B 78 */	mr r30, r3
.L_8141402C:
/* 8141402C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81414030 | 40 82 FE 14 */	bne .L_81413E44
/* 81414034 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81414038 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141403C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81414040 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81414044 | 7C 08 03 A6 */	mtlr r0
/* 81414048 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141404C | 4E 80 00 20 */	blr
.endfn cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3E78 | 0x81414050 | size: 0x8
# textinput::keyboard::pctype::AnmPane::getState() const
.fn getState__Q49textinput8keyboard6pctype7AnmPaneCFv, global
/* 81414050 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81414054 | 4E 80 00 20 */	blr
.endfn getState__Q49textinput8keyboard6pctype7AnmPaneCFv

# .text:0x3E80 | 0x81414058 | size: 0x58
# textinput::keyboard::pctype::LayoutByNW4R::goSignInputMode()
.fn goSignInputMode__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81414058 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141405C | 7C 08 02 A6 */	mflr r0
/* 81414060 | 38 A0 00 00 */	li r5, 0x0
/* 81414064 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81414068 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141406C | 7C 7F 1B 78 */	mr r31, r3
/* 81414070 | 7F E4 FB 78 */	mr r4, r31
/* 81414074 | 80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 81414078 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141407C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81414080 | 7D 89 03 A6 */	mtctr r12
/* 81414084 | 4E 80 04 21 */	bctrl
/* 81414088 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141408C | 7F E3 FB 78 */	mr r3, r31
/* 81414090 | 81 8C 01 44 */	lwz r12, 0x144(r12)
/* 81414094 | 7D 89 03 A6 */	mtctr r12
/* 81414098 | 4E 80 04 21 */	bctrl
/* 8141409C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814140A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814140A4 | 7C 08 03 A6 */	mtlr r0
/* 814140A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814140AC | 4E 80 00 20 */	blr
.endfn goSignInputMode__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3ED8 | 0x814140B0 | size: 0x7C
# textinput::keyboard::pctype::LayoutByNW4R::changePredictLanguage()
.fn changePredictLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 814140B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814140B4 | 7C 08 02 A6 */	mflr r0
/* 814140B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814140BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814140C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814140C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814140C8 | 81 8C 01 44 */	lwz r12, 0x144(r12)
/* 814140CC | 7D 89 03 A6 */	mtctr r12
/* 814140D0 | 4E 80 04 21 */	bctrl
/* 814140D4 | 38 00 00 00 */	li r0, 0x0
/* 814140D8 | 7F E3 FB 78 */	mr r3, r31
/* 814140DC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814140E0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814140E4 | 38 80 00 1F */	li r4, 0x1f
/* 814140E8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814140EC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814140F0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814140F4 | 7D 89 03 A6 */	mtctr r12
/* 814140F8 | 4E 80 04 21 */	bctrl
/* 814140FC | 80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 81414100 | 7F E5 FB 78 */	mr r5, r31
/* 81414104 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81414108 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141410C | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 81414110 | 7D 89 03 A6 */	mtctr r12
/* 81414114 | 4E 80 04 21 */	bctrl
/* 81414118 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141411C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81414120 | 7C 08 03 A6 */	mtlr r0
/* 81414124 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81414128 | 4E 80 00 20 */	blr
.endfn changePredictLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x3F54 | 0x8141412C | size: 0x118
# textinput::keyboard::pctype::LayoutByNW4R::updatePredictLanguage(textinput::CommandReceiver::ChangePredictMode*)
.fn updatePredictLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ39textinput15CommandReceiver17ChangePredictMode, global
/* 8141412C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81414130 | 7C 08 02 A6 */	mflr r0
/* 81414134 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414138 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141413C | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81414140 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81414144 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81414148 | 7C 9E 23 78 */	mr r30, r4
/* 8141414C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81414150 | 7C 7D 1B 78 */	mr r29, r3
/* 81414154 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414158 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8141415C | 7D 89 03 A6 */	mtctr r12
/* 81414160 | 4E 80 04 21 */	bctrl
/* 81414164 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81414168 | 41 82 00 C0 */	beq .L_81414228
/* 8141416C | 88 1E 00 04 */	lbz r0, 0x4(r30)
/* 81414170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81414174 | 40 82 00 40 */	bne .L_814141B4
/* 81414178 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 8141417C | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414180 | 38 9F 2A 7C */	addi r4, r31, 0x2a7c
/* 81414184 | 38 A0 00 00 */	li r5, 0x0
/* 81414188 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8141418C | 7D 89 03 A6 */	mtctr r12
/* 81414190 | 4E 80 04 21 */	bctrl
/* 81414194 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414198 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 8141419C | 38 9F 2A 88 */	addi r4, r31, 0x2a88
/* 814141A0 | 38 A0 00 01 */	li r5, 0x1
/* 814141A4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814141A8 | 7D 89 03 A6 */	mtctr r12
/* 814141AC | 4E 80 04 21 */	bctrl
/* 814141B0 | 48 00 00 3C */	b .L_814141EC
.L_814141B4:
/* 814141B4 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814141B8 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814141BC | 38 9F 2A 7C */	addi r4, r31, 0x2a7c
/* 814141C0 | 38 A0 00 01 */	li r5, 0x1
/* 814141C4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814141C8 | 7D 89 03 A6 */	mtctr r12
/* 814141CC | 4E 80 04 21 */	bctrl
/* 814141D0 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814141D4 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814141D8 | 38 9F 2A 88 */	addi r4, r31, 0x2a88
/* 814141DC | 38 A0 00 00 */	li r5, 0x0
/* 814141E0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814141E4 | 7D 89 03 A6 */	mtctr r12
/* 814141E8 | 4E 80 04 21 */	bctrl
.L_814141EC:
/* 814141EC | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814141F0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814141F4 | 38 9F 2A 94 */	addi r4, r31, 0x2a94
/* 814141F8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814141FC | 7D 89 03 A6 */	mtctr r12
/* 81414200 | 4E 80 04 21 */	bctrl
/* 81414204 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414208 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 8141420C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81414210 | 38 A0 00 00 */	li r5, 0x0
/* 81414214 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81414218 | 54 00 10 3A */	slwi r0, r0, 2
/* 8141421C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81414220 | 7D 89 03 A6 */	mtctr r12
/* 81414224 | 4E 80 04 21 */	bctrl
.L_81414228:
/* 81414228 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141422C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81414230 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81414234 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81414238 | 7C 08 03 A6 */	mtlr r0
/* 8141423C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81414240 | 4E 80 00 20 */	blr
.endfn updatePredictLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ39textinput15CommandReceiver17ChangePredictMode

# .text:0x406C | 0x81414244 | size: 0xB0
# textinput::keyboard::pctype::LayoutByNW4R::sendInputWChar(wchar_t, bool)
.fn sendInputWChar__Q49textinput8keyboard6pctype12LayoutByNW4RFwb, global
/* 81414244 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81414248 | 7C 08 02 A6 */	mflr r0
/* 8141424C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414250 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81414254 | 48 1E 52 6D */	bl _savegpr_27
/* 81414258 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 8141425C | 7C 7B 1B 78 */	mr r27, r3
/* 81414260 | 7C 9C 23 78 */	mr r28, r4
/* 81414264 | 7C BD 2B 78 */	mr r29, r5
/* 81414268 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8141426C | 3B E0 00 00 */	li r31, 0x0
/* 81414270 | 3B C0 00 00 */	li r30, 0x0
/* 81414274 | 41 82 00 1C */	beq .L_81414290
/* 81414278 | 85 83 00 D0 */	lwzu r12, 0xd0(r3)
/* 8141427C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414280 | 7D 89 03 A6 */	mtctr r12
/* 81414284 | 4E 80 04 21 */	bctrl
/* 81414288 | 7C 7E 1B 78 */	mr r30, r3
/* 8141428C | 3B E0 00 01 */	li r31, 0x1
.L_81414290:
/* 81414290 | 7F 63 DB 78 */	mr r3, r27
/* 81414294 | 7F 84 E3 78 */	mr r4, r28
/* 81414298 | 7F A5 EB 78 */	mr r5, r29
/* 8141429C | 4B FF C9 1D */	bl sendInputWChar__Q49textinput8keyboard6pctype4BaseFwb
/* 814142A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814142A4 | 41 82 00 24 */	beq .L_814142C8
/* 814142A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814142AC | 41 82 00 1C */	beq .L_814142C8
/* 814142B0 | 81 9B 00 44 */	lwz r12, 0x44(r27)
/* 814142B4 | 38 7B 00 44 */	addi r3, r27, 0x44
/* 814142B8 | 7F C4 F3 78 */	mr r4, r30
/* 814142BC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814142C0 | 7D 89 03 A6 */	mtctr r12
/* 814142C4 | 4E 80 04 21 */	bctrl
.L_814142C8:
/* 814142C8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 814142CC | 7F 63 DB 78 */	mr r3, r27
/* 814142D0 | 81 8C 01 50 */	lwz r12, 0x150(r12)
/* 814142D4 | 7D 89 03 A6 */	mtctr r12
/* 814142D8 | 4E 80 04 21 */	bctrl
/* 814142DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814142E0 | 48 1E 52 2D */	bl _restgpr_27
/* 814142E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814142E8 | 7C 08 03 A6 */	mtlr r0
/* 814142EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814142F0 | 4E 80 00 20 */	blr
.endfn sendInputWChar__Q49textinput8keyboard6pctype12LayoutByNW4RFwb

# .text:0x411C | 0x814142F4 | size: 0x40
# textinput::nw4rmanager::PaneFifo::getLast()
.fn getLast__Q39textinput11nw4rmanager8PaneFifoFv, global
/* 814142F4 | 38 00 00 05 */	li r0, 0x5
/* 814142F8 | 38 83 00 10 */	addi r4, r3, 0x10
/* 814142FC | 38 A0 00 04 */	li r5, 0x4
/* 81414300 | 7C 09 03 A6 */	mtctr r0
.L_81414304:
/* 81414304 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81414308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141430C | 41 82 00 14 */	beq .L_81414320
/* 81414310 | 54 A0 10 3A */	slwi r0, r5, 2
/* 81414314 | 7C 63 02 14 */	add r3, r3, r0
/* 81414318 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8141431C | 4E 80 00 20 */	blr
.L_81414320:
/* 81414320 | 38 84 FF FC */	subi r4, r4, 0x4
/* 81414324 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 81414328 | 42 00 FF DC */	bdnz .L_81414304
/* 8141432C | 38 60 00 00 */	li r3, 0x0
/* 81414330 | 4E 80 00 20 */	blr
.endfn getLast__Q39textinput11nw4rmanager8PaneFifoFv

# .text:0x415C | 0x81414334 | size: 0x10
# textinput::nw4rmanager::Layout::setPaneLastDrawReceived(nw4r::lyt::Pane*)
.fn setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane, global
/* 81414334 | 85 83 00 8C */	lwzu r12, 0x8c(r3)
/* 81414338 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8141433C | 7D 89 03 A6 */	mtctr r12
/* 81414340 | 4E 80 04 20 */	bctr
.endfn setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane

# .text:0x416C | 0x81414344 | size: 0xA8
# textinput::nw4rmanager::PaneFifo::push(nw4r::lyt::Pane*)
.fn push__Q39textinput11nw4rmanager8PaneFifoFPQ34nw4r3lyt4Pane, global
/* 81414344 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81414348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141434C | 40 82 00 40 */	bne .L_8141438C
/* 81414350 | 38 00 00 05 */	li r0, 0x5
/* 81414354 | 7C 65 1B 78 */	mr r5, r3
/* 81414358 | 38 C0 00 00 */	li r6, 0x0
/* 8141435C | 7C 09 03 A6 */	mtctr r0
.L_81414360:
/* 81414360 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81414364 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81414368 | 40 82 00 14 */	bne .L_8141437C
/* 8141436C | 54 C0 10 3A */	slwi r0, r6, 2
/* 81414370 | 7C 63 02 14 */	add r3, r3, r0
/* 81414374 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81414378 | 4E 80 00 20 */	blr
.L_8141437C:
/* 8141437C | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81414380 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81414384 | 42 00 FF DC */	bdnz .L_81414360
/* 81414388 | 4E 80 00 20 */	blr
.L_8141438C:
/* 8141438C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81414390 | 38 00 00 00 */	li r0, 0x0
/* 81414394 | 7C 04 28 40 */	cmplw r4, r5
/* 81414398 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8141439C | 40 82 00 08 */	bne .L_814143A4
/* 814143A0 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_814143A4:
/* 814143A4 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 814143A8 | 38 C3 00 08 */	addi r6, r3, 0x8
/* 814143AC | 7C 04 28 40 */	cmplw r4, r5
/* 814143B0 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814143B4 | 40 82 00 08 */	bne .L_814143BC
/* 814143B8 | 90 06 00 00 */	stw r0, 0x0(r6)
.L_814143BC:
/* 814143BC | 80 A6 00 08 */	lwz r5, 0x8(r6)
/* 814143C0 | 7C 04 28 40 */	cmplw r4, r5
/* 814143C4 | 90 A6 00 04 */	stw r5, 0x4(r6)
/* 814143C8 | 40 82 00 08 */	bne .L_814143D0
/* 814143CC | 90 06 00 04 */	stw r0, 0x4(r6)
.L_814143D0:
/* 814143D0 | 80 A6 00 0C */	lwz r5, 0xc(r6)
/* 814143D4 | 7C 04 28 40 */	cmplw r4, r5
/* 814143D8 | 90 A6 00 08 */	stw r5, 0x8(r6)
/* 814143DC | 40 82 00 08 */	bne .L_814143E4
/* 814143E0 | 90 06 00 08 */	stw r0, 0x8(r6)
.L_814143E4:
/* 814143E4 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 814143E8 | 4E 80 00 20 */	blr
.endfn push__Q39textinput11nw4rmanager8PaneFifoFPQ34nw4r3lyt4Pane

# .text:0x4214 | 0x814143EC | size: 0x168
# textinput::keyboard::pctype::LayoutByNW4R::updateDakuten()
.fn updateDakuten__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 814143EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814143F0 | 7C 08 02 A6 */	mflr r0
/* 814143F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814143F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814143FC | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81414400 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81414404 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81414408 | 7C 7E 1B 78 */	mr r30, r3
/* 8141440C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81414410 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 81414414 | 41 82 00 30 */	beq .L_81414444
/* 81414418 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8141441C | 38 9F 29 74 */	addi r4, r31, 0x2974
/* 81414420 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414424 | 7D 89 03 A6 */	mtctr r12
/* 81414428 | 4E 80 04 21 */	bctrl
/* 8141442C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414430 | 38 80 00 06 */	li r4, 0x6
/* 81414434 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414438 | 7D 89 03 A6 */	mtctr r12
/* 8141443C | 4E 80 04 21 */	bctrl
/* 81414440 | 48 00 00 2C */	b .L_8141446C
.L_81414444:
/* 81414444 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81414448 | 38 9F 29 74 */	addi r4, r31, 0x2974
/* 8141444C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414450 | 7D 89 03 A6 */	mtctr r12
/* 81414454 | 4E 80 04 21 */	bctrl
/* 81414458 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141445C | 38 80 00 07 */	li r4, 0x7
/* 81414460 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414464 | 7D 89 03 A6 */	mtctr r12
/* 81414468 | 4E 80 04 21 */	bctrl
.L_8141446C:
/* 8141446C | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81414470 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 81414474 | 41 82 00 34 */	beq .L_814144A8
/* 81414478 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 8141447C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81414480 | 38 9F 29 84 */	addi r4, r31, 0x2984
/* 81414484 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414488 | 7D 89 03 A6 */	mtctr r12
/* 8141448C | 4E 80 04 21 */	bctrl
/* 81414490 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414494 | 38 80 00 06 */	li r4, 0x6
/* 81414498 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141449C | 7D 89 03 A6 */	mtctr r12
/* 814144A0 | 4E 80 04 21 */	bctrl
/* 814144A4 | 48 00 00 30 */	b .L_814144D4
.L_814144A8:
/* 814144A8 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814144AC | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814144B0 | 38 9F 29 84 */	addi r4, r31, 0x2984
/* 814144B4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814144B8 | 7D 89 03 A6 */	mtctr r12
/* 814144BC | 4E 80 04 21 */	bctrl
/* 814144C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814144C4 | 38 80 00 07 */	li r4, 0x7
/* 814144C8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814144CC | 7D 89 03 A6 */	mtctr r12
/* 814144D0 | 4E 80 04 21 */	bctrl
.L_814144D4:
/* 814144D4 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 814144D8 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 814144DC | 41 82 00 34 */	beq .L_81414510
/* 814144E0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814144E4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814144E8 | 38 9F 29 94 */	addi r4, r31, 0x2994
/* 814144EC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814144F0 | 7D 89 03 A6 */	mtctr r12
/* 814144F4 | 4E 80 04 21 */	bctrl
/* 814144F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814144FC | 38 80 00 06 */	li r4, 0x6
/* 81414500 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414504 | 7D 89 03 A6 */	mtctr r12
/* 81414508 | 4E 80 04 21 */	bctrl
/* 8141450C | 48 00 00 30 */	b .L_8141453C
.L_81414510:
/* 81414510 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81414514 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81414518 | 38 9F 29 94 */	addi r4, r31, 0x2994
/* 8141451C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414520 | 7D 89 03 A6 */	mtctr r12
/* 81414524 | 4E 80 04 21 */	bctrl
/* 81414528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141452C | 38 80 00 07 */	li r4, 0x7
/* 81414530 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414534 | 7D 89 03 A6 */	mtctr r12
/* 81414538 | 4E 80 04 21 */	bctrl
.L_8141453C:
/* 8141453C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81414540 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81414544 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81414548 | 7C 08 03 A6 */	mtlr r0
/* 8141454C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81414550 | 4E 80 00 20 */	blr
.endfn updateDakuten__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x437C | 0x81414554 | size: 0x6C
# textinput::keyboard::pctype::LayoutByNW4R::setLineFeedButton(bool)
.fn setLineFeedButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 81414554 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81414558 | 7C 08 02 A6 */	mflr r0
/* 8141455C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81414560 | 7C 80 23 78 */	mr r0, r4
/* 81414564 | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81414568 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141456C | 7C 7F 1B 78 */	mr r31, r3
/* 81414570 | 98 83 00 FC */	stb r4, 0xfc(r3)
/* 81414574 | 3C 80 81 66 */	lis r4, lbl_8165B838@ha
/* 81414578 | 38 84 B8 38 */	addi r4, r4, lbl_8165B838@l
/* 8141457C | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81414580 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414584 | 7D 89 03 A6 */	mtctr r12
/* 81414588 | 4E 80 04 21 */	bctrl
/* 8141458C | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81414590 | 3C 80 81 66 */	lis r4, lbl_8165B844@ha
/* 81414594 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81414598 | 88 BF 00 FC */	lbz r5, 0xfc(r31)
/* 8141459C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814145A0 | 38 84 B8 44 */	addi r4, r4, lbl_8165B844@l
/* 814145A4 | 7D 89 03 A6 */	mtctr r12
/* 814145A8 | 4E 80 04 21 */	bctrl
/* 814145AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814145B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814145B4 | 7C 08 03 A6 */	mtlr r0
/* 814145B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814145BC | 4E 80 00 20 */	blr
.endfn setLineFeedButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x43E8 | 0x814145C0 | size: 0x1C
# textinput::keyboard::pctype::LayoutByNW4R::setPredictLanguageButton(bool)
.fn setPredictLanguageButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 814145C0 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 814145C4 | 3C C0 81 66 */	lis r6, lbl_8165B850@ha
/* 814145C8 | 7C 85 23 78 */	mr r5, r4
/* 814145CC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814145D0 | 38 86 B8 50 */	addi r4, r6, lbl_8165B850@l
/* 814145D4 | 7D 89 03 A6 */	mtctr r12
/* 814145D8 | 4E 80 04 20 */	bctr
.endfn setPredictLanguageButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x4404 | 0x814145DC | size: 0x118
# textinput::keyboard::pctype::LayoutByNW4R::setSignWindowButton(bool)
.fn setSignWindowButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 814145DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814145E0 | 7C 08 02 A6 */	mflr r0
/* 814145E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814145E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814145EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814145F0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814145F4 | 7C 9E 23 78 */	mr r30, r4
/* 814145F8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814145FC | 7C 7D 1B 78 */	mr r29, r3
/* 81414600 | 40 82 00 44 */	bne .L_81414644
/* 81414604 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81414608 | 3C 80 81 66 */	lis r4, lbl_8165B864@ha
/* 8141460C | 7F C5 F3 78 */	mr r5, r30
/* 81414610 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414614 | 38 84 B8 64 */	addi r4, r4, lbl_8165B864@l
/* 81414618 | 7D 89 03 A6 */	mtctr r12
/* 8141461C | 4E 80 04 21 */	bctrl
/* 81414620 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414624 | 3C 80 81 66 */	lis r4, lbl_8165B878@ha
/* 81414628 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 8141462C | 7F C5 F3 78 */	mr r5, r30
/* 81414630 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414634 | 38 84 B8 78 */	addi r4, r4, lbl_8165B878@l
/* 81414638 | 7D 89 03 A6 */	mtctr r12
/* 8141463C | 4E 80 04 21 */	bctrl
/* 81414640 | 48 00 00 98 */	b .L_814146D8
.L_81414644:
/* 81414644 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81414648 | 3F C0 81 66 */	lis r30, lbl_8165B864@ha
/* 8141464C | 38 9E B8 64 */	addi r4, r30, lbl_8165B864@l
/* 81414650 | 38 A0 00 00 */	li r5, 0x0
/* 81414654 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414658 | 7D 89 03 A6 */	mtctr r12
/* 8141465C | 4E 80 04 21 */	bctrl
/* 81414660 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414664 | 3F E0 81 66 */	lis r31, lbl_8165B878@ha
/* 81414668 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 8141466C | 38 A0 00 00 */	li r5, 0x0
/* 81414670 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414674 | 38 9F B8 78 */	addi r4, r31, lbl_8165B878@l
/* 81414678 | 7D 89 03 A6 */	mtctr r12
/* 8141467C | 4E 80 04 21 */	bctrl
/* 81414680 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414684 | 7F A3 EB 78 */	mr r3, r29
/* 81414688 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8141468C | 7D 89 03 A6 */	mtctr r12
/* 81414690 | 4E 80 04 21 */	bctrl
/* 81414694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81414698 | 40 82 00 24 */	bne .L_814146BC
/* 8141469C | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814146A0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814146A4 | 38 9F B8 78 */	addi r4, r31, lbl_8165B878@l
/* 814146A8 | 38 A0 00 01 */	li r5, 0x1
/* 814146AC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814146B0 | 7D 89 03 A6 */	mtctr r12
/* 814146B4 | 4E 80 04 21 */	bctrl
/* 814146B8 | 48 00 00 20 */	b .L_814146D8
.L_814146BC:
/* 814146BC | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814146C0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814146C4 | 38 9E B8 64 */	addi r4, r30, lbl_8165B864@l
/* 814146C8 | 38 A0 00 01 */	li r5, 0x1
/* 814146CC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814146D0 | 7D 89 03 A6 */	mtctr r12
/* 814146D4 | 4E 80 04 21 */	bctrl
.L_814146D8:
/* 814146D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814146DC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814146E0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814146E4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814146E8 | 7C 08 03 A6 */	mtlr r0
/* 814146EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814146F0 | 4E 80 00 20 */	blr
.endfn setSignWindowButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x451C | 0x814146F4 | size: 0x27C
# textinput::keyboard::pctype::LayoutByNW4R::onlyQwerty(bool)
.fn onlyQwerty__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 814146F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814146F8 | 7C 08 02 A6 */	mflr r0
/* 814146FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414700 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81414704 | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81414708 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 8141470C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81414710 | 7C 9E 23 78 */	mr r30, r4
/* 81414714 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81414718 | 7C 7D 1B 78 */	mr r29, r3
/* 8141471C | 98 83 00 3C */	stb r4, 0x3c(r3)
/* 81414720 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414724 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81414728 | 7D 89 03 A6 */	mtctr r12
/* 8141472C | 4E 80 04 21 */	bctrl
/* 81414730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81414734 | 40 82 00 A0 */	bne .L_814147D4
/* 81414738 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8141473C | 41 82 00 68 */	beq .L_814147A4
/* 81414740 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414744 | 7F A3 EB 78 */	mr r3, r29
/* 81414748 | 38 80 00 01 */	li r4, 0x1
/* 8141474C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81414750 | 7D 89 03 A6 */	mtctr r12
/* 81414754 | 4E 80 04 21 */	bctrl
/* 81414758 | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 8141475C | 54 80 00 37 */	clrrwi. r0, r4, 4
/* 81414760 | 41 82 00 28 */	beq .L_81414788
/* 81414764 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 81414768 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 8141476C | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 81414770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81414774 | 41 82 00 14 */	beq .L_81414788
/* 81414778 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141477C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81414780 | 7D 89 03 A6 */	mtctr r12
/* 81414784 | 4E 80 04 21 */	bctrl
.L_81414788:
/* 81414788 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141478C | 7F A3 EB 78 */	mr r3, r29
/* 81414790 | 38 80 00 00 */	li r4, 0x0
/* 81414794 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81414798 | 7D 89 03 A6 */	mtctr r12
/* 8141479C | 4E 80 04 21 */	bctrl
/* 814147A0 | 48 00 00 34 */	b .L_814147D4
.L_814147A4:
/* 814147A4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814147A8 | 7F A3 EB 78 */	mr r3, r29
/* 814147AC | 38 80 00 00 */	li r4, 0x0
/* 814147B0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814147B4 | 7D 89 03 A6 */	mtctr r12
/* 814147B8 | 4E 80 04 21 */	bctrl
/* 814147BC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814147C0 | 7F A3 EB 78 */	mr r3, r29
/* 814147C4 | 38 80 00 06 */	li r4, 0x6
/* 814147C8 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 814147CC | 7D 89 03 A6 */	mtctr r12
/* 814147D0 | 4E 80 04 21 */	bctrl
.L_814147D4:
/* 814147D4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814147D8 | 7F A3 EB 78 */	mr r3, r29
/* 814147DC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814147E0 | 7D 89 03 A6 */	mtctr r12
/* 814147E4 | 4E 80 04 21 */	bctrl
/* 814147E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814147EC | 40 82 00 CC */	bne .L_814148B8
/* 814147F0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814147F4 | 7F A3 EB 78 */	mr r3, r29
/* 814147F8 | 81 8C 01 54 */	lwz r12, 0x154(r12)
/* 814147FC | 7D 89 03 A6 */	mtctr r12
/* 81414800 | 4E 80 04 21 */	bctrl
/* 81414804 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414808 | 7F C0 00 34 */	cntlzw r0, r30
/* 8141480C | 54 1E D9 7E */	srwi r30, r0, 5
/* 81414810 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414814 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414818 | 7F C5 F3 78 */	mr r5, r30
/* 8141481C | 38 9F 28 AC */	addi r4, r31, 0x28ac
/* 81414820 | 7D 89 03 A6 */	mtctr r12
/* 81414824 | 4E 80 04 21 */	bctrl
/* 81414828 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 8141482C | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414830 | 7F C5 F3 78 */	mr r5, r30
/* 81414834 | 38 9F 28 BC */	addi r4, r31, 0x28bc
/* 81414838 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8141483C | 7D 89 03 A6 */	mtctr r12
/* 81414840 | 4E 80 04 21 */	bctrl
/* 81414844 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414848 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 8141484C | 7F C5 F3 78 */	mr r5, r30
/* 81414850 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81414854 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414858 | 7D 89 03 A6 */	mtctr r12
/* 8141485C | 4E 80 04 21 */	bctrl
/* 81414860 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414864 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414868 | 7F C5 F3 78 */	mr r5, r30
/* 8141486C | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 81414870 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414874 | 7D 89 03 A6 */	mtctr r12
/* 81414878 | 4E 80 04 21 */	bctrl
/* 8141487C | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414880 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414884 | 7F C5 F3 78 */	mr r5, r30
/* 81414888 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 8141488C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414890 | 7D 89 03 A6 */	mtctr r12
/* 81414894 | 4E 80 04 21 */	bctrl
/* 81414898 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 8141489C | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814148A0 | 7F C5 F3 78 */	mr r5, r30
/* 814148A4 | 38 9F 2A F8 */	addi r4, r31, 0x2af8
/* 814148A8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814148AC | 7D 89 03 A6 */	mtctr r12
/* 814148B0 | 4E 80 04 21 */	bctrl
/* 814148B4 | 48 00 00 A0 */	b .L_81414954
.L_814148B8:
/* 814148B8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814148BC | 7F A3 EB 78 */	mr r3, r29
/* 814148C0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814148C4 | 7D 89 03 A6 */	mtctr r12
/* 814148C8 | 4E 80 04 21 */	bctrl
/* 814148CC | 2C 03 00 09 */	cmpwi r3, 0x9
/* 814148D0 | 41 82 00 20 */	beq .L_814148F0
/* 814148D4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814148D8 | 7F A3 EB 78 */	mr r3, r29
/* 814148DC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814148E0 | 7D 89 03 A6 */	mtctr r12
/* 814148E4 | 4E 80 04 21 */	bctrl
/* 814148E8 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814148EC | 40 82 00 68 */	bne .L_81414954
.L_814148F0:
/* 814148F0 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 814148F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814148F8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814148FC | 7D 89 03 A6 */	mtctr r12
/* 81414900 | 4E 80 04 21 */	bctrl
/* 81414904 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414908 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8141490C | 7D 89 03 A6 */	mtctr r12
/* 81414910 | 4E 80 04 21 */	bctrl
/* 81414914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81414918 | 41 82 00 24 */	beq .L_8141493C
/* 8141491C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414920 | 7F C0 00 34 */	cntlzw r0, r30
/* 81414924 | 7F A3 EB 78 */	mr r3, r29
/* 81414928 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8141492C | 54 04 D9 7E */	srwi r4, r0, 5
/* 81414930 | 7D 89 03 A6 */	mtctr r12
/* 81414934 | 4E 80 04 21 */	bctrl
/* 81414938 | 48 00 00 1C */	b .L_81414954
.L_8141493C:
/* 8141493C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414940 | 7F A3 EB 78 */	mr r3, r29
/* 81414944 | 38 80 00 00 */	li r4, 0x0
/* 81414948 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8141494C | 7D 89 03 A6 */	mtctr r12
/* 81414950 | 4E 80 04 21 */	bctrl
.L_81414954:
/* 81414954 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81414958 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141495C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81414960 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81414964 | 7C 08 03 A6 */	mtlr r0
/* 81414968 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141496C | 4E 80 00 20 */	blr
.endfn onlyQwerty__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x4798 | 0x81414970 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::isActive() const
.fn isActive__Q39textinput12candidatebox12LayoutByNW4RCFv, global
/* 81414970 | 88 63 04 1C */	lbz r3, 0x41c(r3)
/* 81414974 | 4E 80 00 20 */	blr
.endfn isActive__Q39textinput12candidatebox12LayoutByNW4RCFv

# .text:0x47A0 | 0x81414978 | size: 0x1C0
# textinput::keyboard::pctype::LayoutByNW4R::setLangKeyActive(bool)
.fn setLangKeyActive__Q49textinput8keyboard6pctype12LayoutByNW4RFb, global
/* 81414978 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141497C | 7C 08 02 A6 */	mflr r0
/* 81414980 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414984 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81414988 | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 8141498C | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81414990 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81414994 | 7C 9E 23 78 */	mr r30, r4
/* 81414998 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8141499C | 7C 7D 1B 78 */	mr r29, r3
/* 814149A0 | 98 83 00 3D */	stb r4, 0x3d(r3)
/* 814149A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814149A8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814149AC | 7D 89 03 A6 */	mtctr r12
/* 814149B0 | 4E 80 04 21 */	bctrl
/* 814149B4 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 814149B8 | 41 82 00 20 */	beq .L_814149D8
/* 814149BC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814149C0 | 7F A3 EB 78 */	mr r3, r29
/* 814149C4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814149C8 | 7D 89 03 A6 */	mtctr r12
/* 814149CC | 4E 80 04 21 */	bctrl
/* 814149D0 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814149D4 | 40 82 00 54 */	bne .L_81414A28
.L_814149D8:
/* 814149D8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814149DC | 40 82 00 4C */	bne .L_81414A28
/* 814149E0 | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 814149E4 | 54 80 00 37 */	clrrwi. r0, r4, 4
/* 814149E8 | 41 82 00 28 */	beq .L_81414A10
/* 814149EC | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 814149F0 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 814149F4 | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 814149F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814149FC | 41 82 00 14 */	beq .L_81414A10
/* 81414A00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414A04 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81414A08 | 7D 89 03 A6 */	mtctr r12
/* 81414A0C | 4E 80 04 21 */	bctrl
.L_81414A10:
/* 81414A10 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414A14 | 7F A3 EB 78 */	mr r3, r29
/* 81414A18 | 38 80 00 00 */	li r4, 0x0
/* 81414A1C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81414A20 | 7D 89 03 A6 */	mtctr r12
/* 81414A24 | 4E 80 04 21 */	bctrl
.L_81414A28:
/* 81414A28 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414A2C | 7F A3 EB 78 */	mr r3, r29
/* 81414A30 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81414A34 | 7D 89 03 A6 */	mtctr r12
/* 81414A38 | 4E 80 04 21 */	bctrl
/* 81414A3C | 2C 03 00 09 */	cmpwi r3, 0x9
/* 81414A40 | 41 82 00 20 */	beq .L_81414A60
/* 81414A44 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414A48 | 7F A3 EB 78 */	mr r3, r29
/* 81414A4C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81414A50 | 7D 89 03 A6 */	mtctr r12
/* 81414A54 | 4E 80 04 21 */	bctrl
/* 81414A58 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81414A5C | 40 82 00 C0 */	bne .L_81414B1C
.L_81414A60:
/* 81414A60 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414A64 | 7F A3 EB 78 */	mr r3, r29
/* 81414A68 | 81 8C 01 54 */	lwz r12, 0x154(r12)
/* 81414A6C | 7D 89 03 A6 */	mtctr r12
/* 81414A70 | 4E 80 04 21 */	bctrl
/* 81414A74 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414A78 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414A7C | 7F C5 F3 78 */	mr r5, r30
/* 81414A80 | 38 9F 29 DC */	addi r4, r31, 0x29dc
/* 81414A84 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414A88 | 7D 89 03 A6 */	mtctr r12
/* 81414A8C | 4E 80 04 21 */	bctrl
/* 81414A90 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414A94 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414A98 | 7F C5 F3 78 */	mr r5, r30
/* 81414A9C | 38 9F 29 EC */	addi r4, r31, 0x29ec
/* 81414AA0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414AA4 | 7D 89 03 A6 */	mtctr r12
/* 81414AA8 | 4E 80 04 21 */	bctrl
/* 81414AAC | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414AB0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414AB4 | 7F C5 F3 78 */	mr r5, r30
/* 81414AB8 | 38 9F 2B 04 */	addi r4, r31, 0x2b04
/* 81414ABC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414AC0 | 7D 89 03 A6 */	mtctr r12
/* 81414AC4 | 4E 80 04 21 */	bctrl
/* 81414AC8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414ACC | 7F A3 EB 78 */	mr r3, r29
/* 81414AD0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81414AD4 | 7D 89 03 A6 */	mtctr r12
/* 81414AD8 | 4E 80 04 21 */	bctrl
/* 81414ADC | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81414AE0 | 40 82 00 3C */	bne .L_81414B1C
/* 81414AE4 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414AE8 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414AEC | 7F C5 F3 78 */	mr r5, r30
/* 81414AF0 | 38 9F 2B 10 */	addi r4, r31, 0x2b10
/* 81414AF4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414AF8 | 7D 89 03 A6 */	mtctr r12
/* 81414AFC | 4E 80 04 21 */	bctrl
/* 81414B00 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81414B04 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81414B08 | 7F C5 F3 78 */	mr r5, r30
/* 81414B0C | 38 9F 2B 1C */	addi r4, r31, 0x2b1c
/* 81414B10 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81414B14 | 7D 89 03 A6 */	mtctr r12
/* 81414B18 | 4E 80 04 21 */	bctrl
.L_81414B1C:
/* 81414B1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81414B20 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81414B24 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81414B28 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81414B2C | 7C 08 03 A6 */	mtlr r0
/* 81414B30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81414B34 | 4E 80 00 20 */	blr
.endfn setLangKeyActive__Q49textinput8keyboard6pctype12LayoutByNW4RFb

# .text:0x4960 | 0x81414B38 | size: 0x134
# textinput::keyboard::pctype::LayoutByNW4R::setInputModeJP(bool, unsigned long, unsigned long)
.fn setInputModeJP__Q49textinput8keyboard6pctype12LayoutByNW4RFbUlUl, global
/* 81414B38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81414B3C | 7C 08 02 A6 */	mflr r0
/* 81414B40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414B44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81414B48 | 7C DF 33 78 */	mr r31, r6
/* 81414B4C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81414B50 | 7C BE 2B 78 */	mr r30, r5
/* 81414B54 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81414B58 | 7C 7D 1B 78 */	mr r29, r3
/* 81414B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414B60 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81414B64 | 7D 89 03 A6 */	mtctr r12
/* 81414B68 | 4E 80 04 21 */	bctrl
/* 81414B6C | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 81414B70 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81414B74 | 7C 00 F0 40 */	cmplw r0, r30
/* 81414B78 | 41 82 00 18 */	beq .L_81414B90
/* 81414B7C | 57 C0 07 3E */	clrlwi r0, r30, 28
/* 81414B80 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 81414B84 | 50 80 00 36 */	rlwimi r0, r4, 0, 0, 27
/* 81414B88 | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 81414B8C | 4B FF C6 6D */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81414B90:
/* 81414B90 | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 81414B94 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 81414B98 | 7C 00 F8 40 */	cmplw r0, r31
/* 81414B9C | 41 82 00 18 */	beq .L_81414BB4
/* 81414BA0 | 57 E0 07 3E */	clrlwi r0, r31, 28
/* 81414BA4 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 81414BA8 | 50 80 00 36 */	rlwimi r0, r4, 0, 0, 27
/* 81414BAC | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 81414BB0 | 4B FF C6 49 */	bl refresh___Q59textinput8keyboard6pctype4Base8KeyStateFv
.L_81414BB4:
/* 81414BB4 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81414BB8 | 41 82 00 4C */	beq .L_81414C04
/* 81414BBC | 40 80 00 10 */	bge .L_81414BCC
/* 81414BC0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81414BC4 | 40 80 00 14 */	bge .L_81414BD8
/* 81414BC8 | 48 00 00 58 */	b .L_81414C20
.L_81414BCC:
/* 81414BCC | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 81414BD0 | 40 80 00 50 */	bge .L_81414C20
/* 81414BD4 | 48 00 00 40 */	b .L_81414C14
.L_81414BD8:
/* 81414BD8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414BDC | 7F A3 EB 78 */	mr r3, r29
/* 81414BE0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81414BE4 | 7D 89 03 A6 */	mtctr r12
/* 81414BE8 | 4E 80 04 21 */	bctrl
/* 81414BEC | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 81414BF0 | 3C 60 81 61 */	lis r3, lbl_81614500@ha
/* 81414BF4 | 38 63 45 00 */	addi r3, r3, lbl_81614500@l
/* 81414BF8 | 7C 03 02 14 */	add r0, r3, r0
/* 81414BFC | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 81414C00 | 48 00 00 20 */	b .L_81414C20
.L_81414C04:
/* 81414C04 | 3C 60 81 61 */	lis r3, lbl_816145C8@ha
/* 81414C08 | 38 63 45 C8 */	addi r3, r3, lbl_816145C8@l
/* 81414C0C | 90 7D 00 1C */	stw r3, 0x1c(r29)
/* 81414C10 | 48 00 00 10 */	b .L_81414C20
.L_81414C14:
/* 81414C14 | 3C 60 81 61 */	lis r3, lbl_816145C8@ha
/* 81414C18 | 38 63 45 C8 */	addi r3, r3, lbl_816145C8@l
/* 81414C1C | 90 7D 00 1C */	stw r3, 0x1c(r29)
.L_81414C20:
/* 81414C20 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414C24 | 7F A3 EB 78 */	mr r3, r29
/* 81414C28 | 81 8C 01 54 */	lwz r12, 0x154(r12)
/* 81414C2C | 7D 89 03 A6 */	mtctr r12
/* 81414C30 | 4E 80 04 21 */	bctrl
/* 81414C34 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81414C38 | 7F A3 EB 78 */	mr r3, r29
/* 81414C3C | 38 80 00 29 */	li r4, 0x29
/* 81414C40 | 38 A0 00 00 */	li r5, 0x0
/* 81414C44 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81414C48 | 7D 89 03 A6 */	mtctr r12
/* 81414C4C | 4E 80 04 21 */	bctrl
/* 81414C50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81414C54 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81414C58 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81414C5C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81414C60 | 7C 08 03 A6 */	mtlr r0
/* 81414C64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81414C68 | 4E 80 00 20 */	blr
.endfn setInputModeJP__Q49textinput8keyboard6pctype12LayoutByNW4RFbUlUl

# .text:0x4A94 | 0x81414C6C | size: 0x290
# textinput::keyboard::pctype::LayoutByNW4R::setTranslateMode(textinput::keyboard::pctype::Base::TranslateMode)
.fn setTranslateMode__Q49textinput8keyboard6pctype12LayoutByNW4RFQ59textinput8keyboard6pctype4Base13TranslateMode, global
/* 81414C6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81414C70 | 7C 08 02 A6 */	mflr r0
/* 81414C74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414C78 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81414C7C | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81414C80 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81414C84 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81414C88 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81414C8C | 7C 9D 23 78 */	mr r29, r4
/* 81414C90 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81414C94 | 7C 7C 1B 78 */	mr r28, r3
/* 81414C98 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81414C9C | 54 1E 07 3E */	clrlwi r30, r0, 28
/* 81414CA0 | 4B FF C2 45 */	bl setTranslateMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base13TranslateMode
/* 81414CA4 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 81414CA8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81414CAC | 7C 1E 00 40 */	cmplw r30, r0
/* 81414CB0 | 41 82 02 2C */	beq .L_81414EDC
/* 81414CB4 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81414CB8 | 38 80 00 0D */	li r4, 0xd
/* 81414CBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414CC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414CC4 | 7D 89 03 A6 */	mtctr r12
/* 81414CC8 | 4E 80 04 21 */	bctrl
/* 81414CCC | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81414CD0 | 41 82 00 7C */	beq .L_81414D4C
/* 81414CD4 | 40 80 00 10 */	bge .L_81414CE4
/* 81414CD8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81414CDC | 40 80 00 14 */	bge .L_81414CF0
/* 81414CE0 | 48 00 00 F4 */	b .L_81414DD4
.L_81414CE4:
/* 81414CE4 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 81414CE8 | 40 80 00 EC */	bge .L_81414DD4
/* 81414CEC | 48 00 00 BC */	b .L_81414DA8
.L_81414CF0:
/* 81414CF0 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414CF4 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414CF8 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81414CFC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414D00 | 7D 89 03 A6 */	mtctr r12
/* 81414D04 | 4E 80 04 21 */	bctrl
/* 81414D08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414D0C | 38 80 00 06 */	li r4, 0x6
/* 81414D10 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414D14 | 7D 89 03 A6 */	mtctr r12
/* 81414D18 | 4E 80 04 21 */	bctrl
/* 81414D1C | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414D20 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414D24 | 38 9F 29 DC */	addi r4, r31, 0x29dc
/* 81414D28 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414D2C | 7D 89 03 A6 */	mtctr r12
/* 81414D30 | 4E 80 04 21 */	bctrl
/* 81414D34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414D38 | 38 80 00 06 */	li r4, 0x6
/* 81414D3C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414D40 | 7D 89 03 A6 */	mtctr r12
/* 81414D44 | 4E 80 04 21 */	bctrl
/* 81414D48 | 48 00 00 8C */	b .L_81414DD4
.L_81414D4C:
/* 81414D4C | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414D50 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414D54 | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81414D58 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414D5C | 7D 89 03 A6 */	mtctr r12
/* 81414D60 | 4E 80 04 21 */	bctrl
/* 81414D64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414D68 | 38 80 00 06 */	li r4, 0x6
/* 81414D6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414D70 | 7D 89 03 A6 */	mtctr r12
/* 81414D74 | 4E 80 04 21 */	bctrl
/* 81414D78 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414D7C | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414D80 | 38 9F 29 EC */	addi r4, r31, 0x29ec
/* 81414D84 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414D88 | 7D 89 03 A6 */	mtctr r12
/* 81414D8C | 4E 80 04 21 */	bctrl
/* 81414D90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414D94 | 38 80 00 06 */	li r4, 0x6
/* 81414D98 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414D9C | 7D 89 03 A6 */	mtctr r12
/* 81414DA0 | 4E 80 04 21 */	bctrl
/* 81414DA4 | 48 00 00 30 */	b .L_81414DD4
.L_81414DA8:
/* 81414DA8 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414DAC | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414DB0 | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 81414DB4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414DB8 | 7D 89 03 A6 */	mtctr r12
/* 81414DBC | 4E 80 04 21 */	bctrl
/* 81414DC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414DC4 | 38 80 00 06 */	li r4, 0x6
/* 81414DC8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81414DCC | 7D 89 03 A6 */	mtctr r12
/* 81414DD0 | 4E 80 04 21 */	bctrl
.L_81414DD4:
/* 81414DD4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81414DD8 | 41 82 00 7C */	beq .L_81414E54
/* 81414DDC | 40 80 00 10 */	bge .L_81414DEC
/* 81414DE0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81414DE4 | 40 80 00 14 */	bge .L_81414DF8
/* 81414DE8 | 48 00 00 F4 */	b .L_81414EDC
.L_81414DEC:
/* 81414DEC | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 81414DF0 | 40 80 00 EC */	bge .L_81414EDC
/* 81414DF4 | 48 00 00 BC */	b .L_81414EB0
.L_81414DF8:
/* 81414DF8 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414DFC | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414E00 | 38 9F 29 CC */	addi r4, r31, 0x29cc
/* 81414E04 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414E08 | 7D 89 03 A6 */	mtctr r12
/* 81414E0C | 4E 80 04 21 */	bctrl
/* 81414E10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414E14 | 38 80 00 00 */	li r4, 0x0
/* 81414E18 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414E1C | 7D 89 03 A6 */	mtctr r12
/* 81414E20 | 4E 80 04 21 */	bctrl
/* 81414E24 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414E28 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414E2C | 38 9F 29 DC */	addi r4, r31, 0x29dc
/* 81414E30 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414E34 | 7D 89 03 A6 */	mtctr r12
/* 81414E38 | 4E 80 04 21 */	bctrl
/* 81414E3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414E40 | 38 80 00 00 */	li r4, 0x0
/* 81414E44 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414E48 | 7D 89 03 A6 */	mtctr r12
/* 81414E4C | 4E 80 04 21 */	bctrl
/* 81414E50 | 48 00 00 8C */	b .L_81414EDC
.L_81414E54:
/* 81414E54 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414E58 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414E5C | 38 9F 29 A4 */	addi r4, r31, 0x29a4
/* 81414E60 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414E64 | 7D 89 03 A6 */	mtctr r12
/* 81414E68 | 4E 80 04 21 */	bctrl
/* 81414E6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414E70 | 38 80 00 00 */	li r4, 0x0
/* 81414E74 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414E78 | 7D 89 03 A6 */	mtctr r12
/* 81414E7C | 4E 80 04 21 */	bctrl
/* 81414E80 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414E84 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414E88 | 38 9F 29 EC */	addi r4, r31, 0x29ec
/* 81414E8C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414E90 | 7D 89 03 A6 */	mtctr r12
/* 81414E94 | 4E 80 04 21 */	bctrl
/* 81414E98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414E9C | 38 80 00 00 */	li r4, 0x0
/* 81414EA0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414EA4 | 7D 89 03 A6 */	mtctr r12
/* 81414EA8 | 4E 80 04 21 */	bctrl
/* 81414EAC | 48 00 00 30 */	b .L_81414EDC
.L_81414EB0:
/* 81414EB0 | 81 9C 00 44 */	lwz r12, 0x44(r28)
/* 81414EB4 | 38 7C 00 44 */	addi r3, r28, 0x44
/* 81414EB8 | 38 9F 29 B8 */	addi r4, r31, 0x29b8
/* 81414EBC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81414EC0 | 7D 89 03 A6 */	mtctr r12
/* 81414EC4 | 4E 80 04 21 */	bctrl
/* 81414EC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414ECC | 38 80 00 00 */	li r4, 0x0
/* 81414ED0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81414ED4 | 7D 89 03 A6 */	mtctr r12
/* 81414ED8 | 4E 80 04 21 */	bctrl
.L_81414EDC:
/* 81414EDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81414EE0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81414EE4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81414EE8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81414EEC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81414EF0 | 7C 08 03 A6 */	mtlr r0
/* 81414EF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81414EF8 | 4E 80 00 20 */	blr
.endfn setTranslateMode__Q49textinput8keyboard6pctype12LayoutByNW4RFQ59textinput8keyboard6pctype4Base13TranslateMode

# .text:0x4D24 | 0x81414EFC | size: 0x230
# textinput::keyboard::pctype::LayoutByNW4R::updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv, global
/* 81414EFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81414F00 | 7C 08 02 A6 */	mflr r0
/* 81414F04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81414F08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81414F0C | 48 1E 45 B5 */	bl _savegpr_27
/* 81414F10 | 7C 7E 1B 78 */	mr r30, r3
/* 81414F14 | 7C DB 33 78 */	mr r27, r6
/* 81414F18 | 38 63 00 44 */	addi r3, r3, 0x44
/* 81414F1C | 48 02 18 E5 */	bl updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
/* 81414F20 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 81414F24 | 7C 7F 1B 78 */	mr r31, r3
/* 81414F28 | 7C 00 07 75 */	extsb. r0, r0
/* 81414F2C | 40 82 00 2C */	bne .L_81414F58
/* 81414F30 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81414F34 | 48 03 55 E9 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81414F38 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 81414F3C | 3C A0 81 0C */	lis r5, lbl_810C6580@ha
/* 81414F40 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 81414F44 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81414F48 | 38 A5 65 80 */	addi r5, r5, lbl_810C6580@l
/* 81414F4C | 48 1E 40 95 */	bl __register_global_object
/* 81414F50 | 38 00 00 01 */	li r0, 0x1
/* 81414F54 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81414F58:
/* 81414F58 | 88 0D AC BC */	lbz r0, lbl_81698CFC@sda21(r0)
/* 81414F5C | 3B AD AC BC */	li r29, lbl_81698CFC@sda21
/* 81414F60 | 3B 80 00 01 */	li r28, 0x1
/* 81414F64 | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 81414F68 | 40 82 00 14 */	bne .L_81414F7C
/* 81414F6C | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81414F70 | 54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 81414F74 | 40 82 00 08 */	bne .L_81414F7C
/* 81414F78 | 3B 80 00 00 */	li r28, 0x0
.L_81414F7C:
/* 81414F7C | 57 60 05 6B */	rlwinm. r0, r27, 0, 21, 21
/* 81414F80 | 41 82 00 D4 */	beq .L_81415054
/* 81414F84 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81414F88 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 81414F8C | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 81414F90 | 38 80 00 02 */	li r4, 0x2
/* 81414F94 | 60 00 00 20 */	ori r0, r0, 0x20
/* 81414F98 | 38 A0 00 02 */	li r5, 0x2
/* 81414F9C | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81414FA0 | 48 03 2A C5 */	bl SetForceModifierState__Q39textinput5input10HKBManagerFUlUl
/* 81414FA4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81414FA8 | 40 82 01 68 */	bne .L_81415110
/* 81414FAC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81414FB0 | 7F C3 F3 78 */	mr r3, r30
/* 81414FB4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81414FB8 | 7D 89 03 A6 */	mtctr r12
/* 81414FBC | 4E 80 04 21 */	bctrl
/* 81414FC0 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 81414FC4 | 7C 7D 1B 78 */	mr r29, r3
/* 81414FC8 | 80 BE 00 20 */	lwz r5, 0x20(r30)
/* 81414FCC | 54 04 00 36 */	clrrwi r4, r0, 4
/* 81414FD0 | 60 84 00 80 */	ori r4, r4, 0x80
/* 81414FD4 | 54 A0 00 36 */	clrrwi r0, r5, 4
/* 81414FD8 | 7C 00 20 40 */	cmplw r0, r4
/* 81414FDC | 41 82 00 2C */	beq .L_81415008
/* 81414FE0 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 81414FE4 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 81414FE8 | 50 A0 07 3E */	rlwimi r0, r5, 0, 28, 31
/* 81414FEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81414FF0 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 81414FF4 | 41 82 00 14 */	beq .L_81415008
/* 81414FF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81414FFC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81415000 | 7D 89 03 A6 */	mtctr r12
/* 81415004 | 4E 80 04 21 */	bctrl
.L_81415008:
/* 81415008 | 38 00 00 01 */	li r0, 0x1
/* 8141500C | 80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 81415010 | 98 1E 01 20 */	stb r0, 0x120(r30)
/* 81415014 | 38 80 00 0A */	li r4, 0xa
/* 81415018 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141501C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415020 | 7D 89 03 A6 */	mtctr r12
/* 81415024 | 4E 80 04 21 */	bctrl
/* 81415028 | 48 00 00 08 */	b .L_81415030
/* 8141502C | 4E 80 04 21 */	bctrl
.L_81415030:
/* 81415030 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81415034 | 41 82 00 DC */	beq .L_81415110
/* 81415038 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8141503C | 38 80 00 0D */	li r4, 0xd
/* 81415040 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415044 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415048 | 7D 89 03 A6 */	mtctr r12
/* 8141504C | 4E 80 04 21 */	bctrl
/* 81415050 | 48 00 00 C0 */	b .L_81415110
.L_81415054:
/* 81415054 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81415058 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 8141505C | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 81415060 | 38 80 00 00 */	li r4, 0x0
/* 81415064 | 54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 81415068 | 38 A0 00 00 */	li r5, 0x0
/* 8141506C | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81415070 | 48 03 29 F5 */	bl SetForceModifierState__Q39textinput5input10HKBManagerFUlUl
/* 81415074 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81415078 | 41 82 00 98 */	beq .L_81415110
/* 8141507C | 88 7D 00 00 */	lbz r3, 0x0(r29)
/* 81415080 | 38 80 00 00 */	li r4, 0x0
/* 81415084 | 54 60 D7 FF */	extrwi. r0, r3, 1, 25
/* 81415088 | 40 82 00 0C */	bne .L_81415094
/* 8141508C | 54 60 DF FF */	extrwi. r0, r3, 1, 26
/* 81415090 | 41 82 00 08 */	beq .L_81415098
.L_81415094:
/* 81415094 | 38 80 00 01 */	li r4, 0x1
.L_81415098:
/* 81415098 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8141509C | 40 82 00 74 */	bne .L_81415110
/* 814150A0 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814150A4 | 80 BE 00 20 */	lwz r5, 0x20(r30)
/* 814150A8 | 54 04 00 36 */	clrrwi r4, r0, 4
/* 814150AC | 54 84 06 6E */	rlwinm r4, r4, 0, 25, 23
/* 814150B0 | 54 A0 00 36 */	clrrwi r0, r5, 4
/* 814150B4 | 7C 00 20 40 */	cmplw r0, r4
/* 814150B8 | 41 82 00 2C */	beq .L_814150E4
/* 814150BC | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814150C0 | 54 80 00 36 */	clrrwi r0, r4, 4
/* 814150C4 | 50 A0 07 3E */	rlwimi r0, r5, 0, 28, 31
/* 814150C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814150CC | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 814150D0 | 41 82 00 14 */	beq .L_814150E4
/* 814150D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814150D8 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814150DC | 7D 89 03 A6 */	mtctr r12
/* 814150E0 | 4E 80 04 21 */	bctrl
.L_814150E4:
/* 814150E4 | 88 1E 01 20 */	lbz r0, 0x120(r30)
/* 814150E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814150EC | 41 82 00 24 */	beq .L_81415110
/* 814150F0 | 38 00 00 00 */	li r0, 0x0
/* 814150F4 | 80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 814150F8 | 98 1E 01 20 */	stb r0, 0x120(r30)
/* 814150FC | 38 80 00 05 */	li r4, 0x5
/* 81415100 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415104 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415108 | 7D 89 03 A6 */	mtctr r12
/* 8141510C | 4E 80 04 21 */	bctrl
.L_81415110:
/* 81415110 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81415114 | 7F E3 FB 78 */	mr r3, r31
/* 81415118 | 48 1E 43 F5 */	bl _restgpr_27
/* 8141511C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81415120 | 7C 08 03 A6 */	mtlr r0
/* 81415124 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81415128 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv

# .text:0x4F54 | 0x8141512C | size: 0x38C
# textinput::keyboard::pctype::LayoutByNW4R::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager, global
/* 8141512C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81415130 | 7C 08 02 A6 */	mflr r0
/* 81415134 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81415138 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8141513C | 48 1E 43 7D */	bl _savegpr_25
/* 81415140 | 3F E0 81 66 */	lis r31, lbl_81658D90@ha
/* 81415144 | 7C 7D 1B 78 */	mr r29, r3
/* 81415148 | 7C 9E 23 78 */	mr r30, r4
/* 8141514C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81415150 | 3B FF 8D 90 */	addi r31, r31, lbl_81658D90@l
/* 81415154 | 48 03 2A 01 */	bl GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv
/* 81415158 | 3F 80 81 61 */	lis r28, lbl_81614A54@ha
/* 8141515C | 3F 60 81 61 */	lis r27, lbl_81614A20@ha
/* 81415160 | 3B 9C 4A 54 */	addi r28, r28, lbl_81614A54@l
/* 81415164 | 3B 7B 4A 20 */	addi r27, r27, lbl_81614A20@l
/* 81415168 | 48 00 01 EC */	b .L_81415354
.L_8141516C:
/* 8141516C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81415170 | 3B 20 00 00 */	li r25, 0x0
/* 81415174 | 48 03 31 19 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 81415178 | 7C 7A 1B 78 */	mr r26, r3
/* 8141517C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81415180 | 48 03 32 E5 */	bl GetWChar__Q49textinput5input10HKBManager6KeySetCFv
/* 81415184 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81415188 | 2C 00 00 2C */	cmpwi r0, 0x2c
/* 8141518C | 41 82 01 74 */	beq .L_81415300
/* 81415190 | 40 80 00 10 */	bge .L_814151A0
/* 81415194 | 2C 00 00 28 */	cmpwi r0, 0x28
/* 81415198 | 41 82 00 14 */	beq .L_814151AC
/* 8141519C | 48 00 00 40 */	b .L_814151DC
.L_814151A0:
/* 814151A0 | 2C 00 00 58 */	cmpwi r0, 0x58
/* 814151A4 | 41 82 00 08 */	beq .L_814151AC
/* 814151A8 | 48 00 00 34 */	b .L_814151DC
.L_814151AC:
/* 814151AC | 7F C3 F3 78 */	mr r3, r30
/* 814151B0 | 48 03 26 B1 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 814151B4 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 814151B8 | 40 82 01 48 */	bne .L_81415300
/* 814151BC | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814151C0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814151C4 | 38 9F 2A A8 */	addi r4, r31, 0x2aa8
/* 814151C8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814151CC | 7D 89 03 A6 */	mtctr r12
/* 814151D0 | 4E 80 04 21 */	bctrl
/* 814151D4 | 7C 79 1B 78 */	mr r25, r3
/* 814151D8 | 48 00 01 28 */	b .L_81415300
.L_814151DC:
/* 814151DC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814151E0 | 48 00 6E 61 */	bl ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw
/* 814151E4 | 7C 7A 1B 78 */	mr r26, r3
/* 814151E8 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 814151EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814151F0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814151F4 | 7D 89 03 A6 */	mtctr r12
/* 814151F8 | 4E 80 04 21 */	bctrl
/* 814151FC | 57 44 04 3E */	clrlwi r4, r26, 16
/* 81415200 | 48 03 48 55 */	bl convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw
/* 81415204 | 7C 7A 1B 78 */	mr r26, r3
/* 81415208 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 8141520C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415210 | 81 8C 00 98 */	lwz r12, 0x98(r12)
/* 81415214 | 7D 89 03 A6 */	mtctr r12
/* 81415218 | 4E 80 04 21 */	bctrl
/* 8141521C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415220 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415224 | 7D 89 03 A6 */	mtctr r12
/* 81415228 | 4E 80 04 21 */	bctrl
/* 8141522C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415230 | 41 82 00 B4 */	beq .L_814152E4
/* 81415234 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 81415238 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141523C | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 81415240 | 7D 89 03 A6 */	mtctr r12
/* 81415244 | 4E 80 04 21 */	bctrl
/* 81415248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141524C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81415250 | 7D 89 03 A6 */	mtctr r12
/* 81415254 | 4E 80 04 21 */	bctrl
/* 81415258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141525C | 41 82 00 88 */	beq .L_814152E4
/* 81415260 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 81415264 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415268 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8141526C | 7D 89 03 A6 */	mtctr r12
/* 81415270 | 4E 80 04 21 */	bctrl
/* 81415274 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 81415278 | 40 82 00 6C */	bne .L_814152E4
/* 8141527C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81415280 | 7F A3 EB 78 */	mr r3, r29
/* 81415284 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81415288 | 7D 89 03 A6 */	mtctr r12
/* 8141528C | 4E 80 04 21 */	bctrl
/* 81415290 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415294 | 57 43 04 3E */	clrlwi r3, r26, 16
/* 81415298 | 41 82 00 0C */	beq .L_814152A4
/* 8141529C | 48 02 44 5D */	bl reverseLetterCaseW__Q29textinput4utilFw
/* 814152A0 | 54 63 04 3E */	clrlwi r3, r3, 16
.L_814152A4:
/* 814152A4 | 28 03 00 61 */	cmplwi r3, 0x61
/* 814152A8 | 41 80 00 1C */	blt .L_814152C4
/* 814152AC | 28 03 00 7A */	cmplwi r3, 0x7a
/* 814152B0 | 41 81 00 14 */	bgt .L_814152C4
/* 814152B4 | 54 60 0B FC */	clrlslwi r0, r3, 16, 1
/* 814152B8 | 7C 7B 02 14 */	add r3, r27, r0
/* 814152BC | A0 63 FF 3E */	lhz r3, -0xc2(r3)
/* 814152C0 | 48 00 00 20 */	b .L_814152E0
.L_814152C4:
/* 814152C4 | 28 03 00 41 */	cmplwi r3, 0x41
/* 814152C8 | 41 80 00 18 */	blt .L_814152E0
/* 814152CC | 28 03 00 5A */	cmplwi r3, 0x5a
/* 814152D0 | 41 81 00 10 */	bgt .L_814152E0
/* 814152D4 | 54 60 0B FC */	clrlslwi r0, r3, 16, 1
/* 814152D8 | 7C 7C 02 14 */	add r3, r28, r0
/* 814152DC | A0 63 FF 7E */	lhz r3, -0x82(r3)
.L_814152E0:
/* 814152E0 | 54 7A 04 3E */	clrlwi r26, r3, 16
.L_814152E4:
/* 814152E4 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814152E8 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814152EC | 57 44 04 3E */	clrlwi r4, r26, 16
/* 814152F0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 814152F4 | 7D 89 03 A6 */	mtctr r12
/* 814152F8 | 4E 80 04 21 */	bctrl
/* 814152FC | 7C 79 1B 78 */	mr r25, r3
.L_81415300:
/* 81415300 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81415304 | 41 82 00 1C */	beq .L_81415320
/* 81415308 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8141530C | 7F 23 CB 78 */	mr r3, r25
/* 81415310 | 38 80 00 00 */	li r4, 0x0
/* 81415314 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415318 | 7D 89 03 A6 */	mtctr r12
/* 8141531C | 4E 80 04 21 */	bctrl
.L_81415320:
/* 81415320 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81415324 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81415328 | 48 03 35 DD */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 8141532C | 80 C1 00 20 */	lwz r6, 0x20(r1)
/* 81415330 | 88 A1 00 24 */	lbz r5, 0x24(r1)
/* 81415334 | 88 81 00 25 */	lbz r4, 0x25(r1)
/* 81415338 | 88 61 00 26 */	lbz r3, 0x26(r1)
/* 8141533C | A0 01 00 28 */	lhz r0, 0x28(r1)
/* 81415340 | 90 C1 00 2C */	stw r6, 0x2c(r1)
/* 81415344 | 98 A1 00 30 */	stb r5, 0x30(r1)
/* 81415348 | 98 81 00 31 */	stb r4, 0x31(r1)
/* 8141534C | 98 61 00 32 */	stb r3, 0x32(r1)
/* 81415350 | B0 01 00 34 */	sth r0, 0x34(r1)
.L_81415354:
/* 81415354 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81415358 | 48 03 34 95 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 8141535C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415360 | 40 82 FE 0C */	bne .L_8141516C
/* 81415364 | 7F C4 F3 78 */	mr r4, r30
/* 81415368 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8141536C | 48 03 28 71 */	bl GetRepeatedKeySet__Q39textinput5input10HKBManagerCFv
/* 81415370 | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 81415374 | 88 A1 00 18 */	lbz r5, 0x18(r1)
/* 81415378 | 88 81 00 19 */	lbz r4, 0x19(r1)
/* 8141537C | 88 61 00 1A */	lbz r3, 0x1a(r1)
/* 81415380 | A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 81415384 | 90 C1 00 2C */	stw r6, 0x2c(r1)
/* 81415388 | 98 A1 00 30 */	stb r5, 0x30(r1)
/* 8141538C | 98 81 00 31 */	stb r4, 0x31(r1)
/* 81415390 | 98 61 00 32 */	stb r3, 0x32(r1)
/* 81415394 | B0 01 00 34 */	sth r0, 0x34(r1)
/* 81415398 | 48 00 00 F4 */	b .L_8141548C
.L_8141539C:
/* 8141539C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 814153A0 | 3B 20 00 00 */	li r25, 0x0
/* 814153A4 | 48 03 2E E9 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 814153A8 | 7C 7C 1B 78 */	mr r28, r3
/* 814153AC | 38 61 00 2C */	addi r3, r1, 0x2c
/* 814153B0 | 48 03 30 B5 */	bl GetWChar__Q49textinput5input10HKBManager6KeySetCFv
/* 814153B4 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 814153B8 | 2C 00 00 2C */	cmpwi r0, 0x2c
/* 814153BC | 41 82 00 50 */	beq .L_8141540C
/* 814153C0 | 40 80 00 10 */	bge .L_814153D0
/* 814153C4 | 2C 00 00 2A */	cmpwi r0, 0x2a
/* 814153C8 | 41 82 00 14 */	beq .L_814153DC
/* 814153CC | 48 00 00 6C */	b .L_81415438
.L_814153D0:
/* 814153D0 | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 814153D4 | 41 82 00 18 */	beq .L_814153EC
/* 814153D8 | 48 00 00 60 */	b .L_81415438
.L_814153DC:
/* 814153DC | 7F C3 F3 78 */	mr r3, r30
/* 814153E0 | 48 03 24 81 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 814153E4 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 814153E8 | 40 82 00 50 */	bne .L_81415438
.L_814153EC:
/* 814153EC | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 814153F0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 814153F4 | 38 9F 2B 28 */	addi r4, r31, 0x2b28
/* 814153F8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814153FC | 7D 89 03 A6 */	mtctr r12
/* 81415400 | 4E 80 04 21 */	bctrl
/* 81415404 | 7C 79 1B 78 */	mr r25, r3
/* 81415408 | 48 00 00 30 */	b .L_81415438
.L_8141540C:
/* 8141540C | 7F C3 F3 78 */	mr r3, r30
/* 81415410 | 48 03 24 51 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81415414 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 81415418 | 40 82 00 20 */	bne .L_81415438
/* 8141541C | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81415420 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 81415424 | 38 9F 2B 38 */	addi r4, r31, 0x2b38
/* 81415428 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141542C | 7D 89 03 A6 */	mtctr r12
/* 81415430 | 4E 80 04 21 */	bctrl
/* 81415434 | 7C 79 1B 78 */	mr r25, r3
.L_81415438:
/* 81415438 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8141543C | 41 82 00 1C */	beq .L_81415458
/* 81415440 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81415444 | 7F 23 CB 78 */	mr r3, r25
/* 81415448 | 38 80 00 00 */	li r4, 0x0
/* 8141544C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415450 | 7D 89 03 A6 */	mtctr r12
/* 81415454 | 4E 80 04 21 */	bctrl
.L_81415458:
/* 81415458 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8141545C | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81415460 | 48 03 34 A5 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 81415464 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81415468 | 88 A1 00 0C */	lbz r5, 0xc(r1)
/* 8141546C | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 81415470 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 81415474 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81415478 | 90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8141547C | 98 A1 00 30 */	stb r5, 0x30(r1)
/* 81415480 | 98 81 00 31 */	stb r4, 0x31(r1)
/* 81415484 | 98 61 00 32 */	stb r3, 0x32(r1)
/* 81415488 | B0 01 00 34 */	sth r0, 0x34(r1)
.L_8141548C:
/* 8141548C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81415490 | 48 03 33 5D */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81415494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415498 | 40 82 FF 04 */	bne .L_8141539C
/* 8141549C | 39 61 00 60 */	addi r11, r1, 0x60
/* 814154A0 | 38 60 00 00 */	li r3, 0x0
/* 814154A4 | 48 1E 40 61 */	bl _restgpr_25
/* 814154A8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814154AC | 7C 08 03 A6 */	mtlr r0
/* 814154B0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814154B4 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager

# .text:0x52E0 | 0x814154B8 | size: 0x160
# textinput::keyboard::pctype::LayoutByNW4R::changeAnimationAllToNormal()
.fn changeAnimationAllToNormal__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 814154B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814154BC | 7C 08 02 A6 */	mflr r0
/* 814154C0 | 38 80 00 00 */	li r4, 0x0
/* 814154C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814154C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814154CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814154D0 | 7C 7E 1B 78 */	mr r30, r3
/* 814154D4 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 814154D8 | 48 0F CE 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814154DC | 7C 7F 1B 78 */	mr r31, r3
/* 814154E0 | 48 00 00 48 */	b .L_81415528
.L_814154E4:
/* 814154E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814154E8 | 7F E3 FB 78 */	mr r3, r31
/* 814154EC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814154F0 | 7D 89 03 A6 */	mtctr r12
/* 814154F4 | 4E 80 04 21 */	bctrl
/* 814154F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814154FC | 40 82 00 1C */	bne .L_81415518
/* 81415500 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81415504 | 7F E3 FB 78 */	mr r3, r31
/* 81415508 | 38 80 00 00 */	li r4, 0x0
/* 8141550C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415510 | 7D 89 03 A6 */	mtctr r12
/* 81415514 | 4E 80 04 21 */	bctrl
.L_81415518:
/* 81415518 | 7F E4 FB 78 */	mr r4, r31
/* 8141551C | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 81415520 | 48 0F CD BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81415524 | 7C 7F 1B 78 */	mr r31, r3
.L_81415528:
/* 81415528 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141552C | 40 82 FF B8 */	bne .L_814154E4
/* 81415530 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81415534 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 81415538 | 40 82 00 68 */	bne .L_814155A0
/* 8141553C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81415540 | 3C 80 81 66 */	lis r4, lbl_8165B6EC@ha
/* 81415544 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81415548 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141554C | 38 84 B6 EC */	addi r4, r4, lbl_8165B6EC@l
/* 81415550 | 7D 89 03 A6 */	mtctr r12
/* 81415554 | 4E 80 04 21 */	bctrl
/* 81415558 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141555C | 38 80 00 05 */	li r4, 0x5
/* 81415560 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415564 | 7D 89 03 A6 */	mtctr r12
/* 81415568 | 4E 80 04 21 */	bctrl
/* 8141556C | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 81415570 | 3C 80 81 66 */	lis r4, lbl_8165B6F8@ha
/* 81415574 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81415578 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141557C | 38 84 B6 F8 */	addi r4, r4, lbl_8165B6F8@l
/* 81415580 | 7D 89 03 A6 */	mtctr r12
/* 81415584 | 4E 80 04 21 */	bctrl
/* 81415588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141558C | 38 80 00 00 */	li r4, 0x0
/* 81415590 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415594 | 7D 89 03 A6 */	mtctr r12
/* 81415598 | 4E 80 04 21 */	bctrl
/* 8141559C | 48 00 00 64 */	b .L_81415600
.L_814155A0:
/* 814155A0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814155A4 | 3C 80 81 66 */	lis r4, lbl_8165B6EC@ha
/* 814155A8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814155AC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814155B0 | 38 84 B6 EC */	addi r4, r4, lbl_8165B6EC@l
/* 814155B4 | 7D 89 03 A6 */	mtctr r12
/* 814155B8 | 4E 80 04 21 */	bctrl
/* 814155BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814155C0 | 38 80 00 00 */	li r4, 0x0
/* 814155C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814155C8 | 7D 89 03 A6 */	mtctr r12
/* 814155CC | 4E 80 04 21 */	bctrl
/* 814155D0 | 81 9E 00 44 */	lwz r12, 0x44(r30)
/* 814155D4 | 3C 80 81 66 */	lis r4, lbl_8165B6F8@ha
/* 814155D8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 814155DC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814155E0 | 38 84 B6 F8 */	addi r4, r4, lbl_8165B6F8@l
/* 814155E4 | 7D 89 03 A6 */	mtctr r12
/* 814155E8 | 4E 80 04 21 */	bctrl
/* 814155EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814155F0 | 38 80 00 05 */	li r4, 0x5
/* 814155F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814155F8 | 7D 89 03 A6 */	mtctr r12
/* 814155FC | 4E 80 04 21 */	bctrl
.L_81415600:
/* 81415600 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81415604 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81415608 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141560C | 7C 08 03 A6 */	mtlr r0
/* 81415610 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81415614 | 4E 80 00 20 */	blr
.endfn changeAnimationAllToNormal__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x5440 | 0x81415618 | size: 0x34C
# textinput::keyboard::pctype::LayoutByNW4R::refreshState()
.fn refreshState__Q49textinput8keyboard6pctype12LayoutByNW4RFv, global
/* 81415618 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141561C | 7C 08 02 A6 */	mflr r0
/* 81415620 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81415624 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81415628 | 7C 7F 1B 78 */	mr r31, r3
/* 8141562C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81415630 | 3F C0 81 66 */	lis r30, lbl_81658D90@ha
/* 81415634 | 3B DE 8D 90 */	addi r30, r30, lbl_81658D90@l
/* 81415638 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141563C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81415640 | 7D 89 03 A6 */	mtctr r12
/* 81415644 | 4E 80 04 21 */	bctrl
/* 81415648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141564C | 41 82 00 B8 */	beq .L_81415704
/* 81415650 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81415654 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81415658 | 38 9E 2B 44 */	addi r4, r30, 0x2b44
/* 8141565C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81415660 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81415664 | 7D 89 03 A6 */	mtctr r12
/* 81415668 | 4E 80 04 21 */	bctrl
/* 8141566C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415670 | 41 82 00 18 */	beq .L_81415688
/* 81415674 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81415678 | 7C 03 00 D0 */	neg r0, r3
/* 8141567C | 7C 00 1B 78 */	or r0, r0, r3
/* 81415680 | 54 00 0F FE */	srwi r0, r0, 31
/* 81415684 | 48 00 00 08 */	b .L_8141568C
.L_81415688:
/* 81415688 | 38 00 00 00 */	li r0, 0x0
.L_8141568C:
/* 8141568C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81415690 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81415694 | 38 9E 2B 44 */	addi r4, r30, 0x2b44
/* 81415698 | 38 A0 00 00 */	li r5, 0x0
/* 8141569C | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 814156A0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814156A4 | 7D 89 03 A6 */	mtctr r12
/* 814156A8 | 4E 80 04 21 */	bctrl
/* 814156AC | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 814156B0 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 814156B4 | 38 9E 2B 50 */	addi r4, r30, 0x2b50
/* 814156B8 | 38 A0 00 00 */	li r5, 0x0
/* 814156BC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814156C0 | 7D 89 03 A6 */	mtctr r12
/* 814156C4 | 4E 80 04 21 */	bctrl
/* 814156C8 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 814156CC | 38 7F 00 44 */	addi r3, r31, 0x44
/* 814156D0 | 38 9E 2B 64 */	addi r4, r30, 0x2b64
/* 814156D4 | 38 A0 00 01 */	li r5, 0x1
/* 814156D8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814156DC | 7D 89 03 A6 */	mtctr r12
/* 814156E0 | 4E 80 04 21 */	bctrl
/* 814156E4 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 814156E8 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 814156EC | 38 9E 2B 70 */	addi r4, r30, 0x2b70
/* 814156F0 | 38 A0 00 01 */	li r5, 0x1
/* 814156F4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814156F8 | 7D 89 03 A6 */	mtctr r12
/* 814156FC | 4E 80 04 21 */	bctrl
/* 81415700 | 48 00 00 B8 */	b .L_814157B8
.L_81415704:
/* 81415704 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81415708 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 8141570C | 38 9E 2B 44 */	addi r4, r30, 0x2b44
/* 81415710 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81415714 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81415718 | 7D 89 03 A6 */	mtctr r12
/* 8141571C | 4E 80 04 21 */	bctrl
/* 81415720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415724 | 41 82 00 1C */	beq .L_81415740
/* 81415728 | 88 81 00 08 */	lbz r4, 0x8(r1)
/* 8141572C | 20 64 00 01 */	subfic r3, r4, 0x1
/* 81415730 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81415734 | 7C 60 03 78 */	or r0, r3, r0
/* 81415738 | 54 00 0F FE */	srwi r0, r0, 31
/* 8141573C | 48 00 00 08 */	b .L_81415744
.L_81415740:
/* 81415740 | 38 00 00 00 */	li r0, 0x0
.L_81415744:
/* 81415744 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81415748 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 8141574C | 38 9E 2B 44 */	addi r4, r30, 0x2b44
/* 81415750 | 38 A0 00 01 */	li r5, 0x1
/* 81415754 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81415758 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8141575C | 7D 89 03 A6 */	mtctr r12
/* 81415760 | 4E 80 04 21 */	bctrl
/* 81415764 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81415768 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 8141576C | 38 9E 2B 50 */	addi r4, r30, 0x2b50
/* 81415770 | 38 A0 00 01 */	li r5, 0x1
/* 81415774 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81415778 | 7D 89 03 A6 */	mtctr r12
/* 8141577C | 4E 80 04 21 */	bctrl
/* 81415780 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81415784 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81415788 | 38 9E 2B 64 */	addi r4, r30, 0x2b64
/* 8141578C | 38 A0 00 00 */	li r5, 0x0
/* 81415790 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81415794 | 7D 89 03 A6 */	mtctr r12
/* 81415798 | 4E 80 04 21 */	bctrl
/* 8141579C | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 814157A0 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 814157A4 | 38 9E 2B 70 */	addi r4, r30, 0x2b70
/* 814157A8 | 38 A0 00 00 */	li r5, 0x0
/* 814157AC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814157B0 | 7D 89 03 A6 */	mtctr r12
/* 814157B4 | 4E 80 04 21 */	bctrl
.L_814157B8:
/* 814157B8 | 80 9F 00 48 */	lwz r4, 0x48(r31)
/* 814157BC | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814157C0 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 814157C4 | 4B FF BD 05 */	bl refreshText__Q59textinput8keyboard6pctype4Base8KeyStateFPQ34nw4r3lyt4Pane
/* 814157C8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814157CC | 7F E3 FB 78 */	mr r3, r31
/* 814157D0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814157D4 | 7D 89 03 A6 */	mtctr r12
/* 814157D8 | 4E 80 04 21 */	bctrl
/* 814157DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814157E0 | 40 82 00 7C */	bne .L_8141585C
/* 814157E4 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814157E8 | 54 00 07 3F */	clrlwi. r0, r0, 28
/* 814157EC | 40 82 00 38 */	bne .L_81415824
/* 814157F0 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 814157F4 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 814157F8 | 38 9E 2B 84 */	addi r4, r30, 0x2b84
/* 814157FC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81415800 | 7D 89 03 A6 */	mtctr r12
/* 81415804 | 4E 80 04 21 */	bctrl
/* 81415808 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141580C | 38 8D 92 C8 */	li r4, lbl_81697308@sda21
/* 81415810 | 38 A0 00 00 */	li r5, 0x0
/* 81415814 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81415818 | 7D 89 03 A6 */	mtctr r12
/* 8141581C | 4E 80 04 21 */	bctrl
/* 81415820 | 48 00 00 3C */	b .L_8141585C
.L_81415824:
/* 81415824 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81415828 | 40 82 00 34 */	bne .L_8141585C
/* 8141582C | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81415830 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81415834 | 38 9E 2B 84 */	addi r4, r30, 0x2b84
/* 81415838 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8141583C | 7D 89 03 A6 */	mtctr r12
/* 81415840 | 4E 80 04 21 */	bctrl
/* 81415844 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415848 | 38 8D 92 D0 */	li r4, lbl_81697310@sda21
/* 8141584C | 38 A0 00 00 */	li r5, 0x0
/* 81415850 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81415854 | 7D 89 03 A6 */	mtctr r12
/* 81415858 | 4E 80 04 21 */	bctrl
.L_8141585C:
/* 8141585C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81415860 | 7F E3 FB 78 */	mr r3, r31
/* 81415864 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81415868 | 7D 89 03 A6 */	mtctr r12
/* 8141586C | 4E 80 04 21 */	bctrl
/* 81415870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415874 | 40 82 00 30 */	bne .L_814158A4
/* 81415878 | 88 1F 01 20 */	lbz r0, 0x120(r31)
/* 8141587C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81415880 | 41 82 00 24 */	beq .L_814158A4
/* 81415884 | 38 00 00 00 */	li r0, 0x0
/* 81415888 | 80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 8141588C | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 81415890 | 38 80 00 05 */	li r4, 0x5
/* 81415894 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415898 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141589C | 7D 89 03 A6 */	mtctr r12
/* 814158A0 | 4E 80 04 21 */	bctrl
.L_814158A4:
/* 814158A4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814158A8 | 7F E3 FB 78 */	mr r3, r31
/* 814158AC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 814158B0 | 7D 89 03 A6 */	mtctr r12
/* 814158B4 | 4E 80 04 21 */	bctrl
/* 814158B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814158BC | 40 82 00 70 */	bne .L_8141592C
/* 814158C0 | 88 1F 01 44 */	lbz r0, 0x144(r31)
/* 814158C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814158C8 | 41 82 00 24 */	beq .L_814158EC
/* 814158CC | 38 00 00 00 */	li r0, 0x0
/* 814158D0 | 80 7F 01 40 */	lwz r3, 0x140(r31)
/* 814158D4 | 98 1F 01 44 */	stb r0, 0x144(r31)
/* 814158D8 | 38 80 00 05 */	li r4, 0x5
/* 814158DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814158E0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814158E4 | 7D 89 03 A6 */	mtctr r12
/* 814158E8 | 4E 80 04 21 */	bctrl
.L_814158EC:
/* 814158EC | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 814158F0 | 7C 00 07 75 */	extsb. r0, r0
/* 814158F4 | 40 82 00 2C */	bne .L_81415920
/* 814158F8 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 814158FC | 48 03 4C 21 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81415900 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 81415904 | 3C A0 81 0C */	lis r5, lbl_810C6580@ha
/* 81415908 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 8141590C | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81415910 | 38 A5 65 80 */	addi r5, r5, lbl_810C6580@l
/* 81415914 | 48 1E 36 CD */	bl __register_global_object
/* 81415918 | 38 00 00 01 */	li r0, 0x1
/* 8141591C | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81415920:
/* 81415920 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81415924 | 38 8D 92 C4 */	li r4, lbl_81697304@sda21
/* 81415928 | 48 03 4C 45 */	bl changeCapsLock__Q29textinput12LayoutGatherFRCUc
.L_8141592C:
/* 8141592C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81415930 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81415934 | 41 82 00 18 */	beq .L_8141594C
/* 81415938 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 8141593C | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81415940 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81415944 | 7D 89 03 A6 */	mtctr r12
/* 81415948 | 4E 80 04 21 */	bctrl
.L_8141594C:
/* 8141594C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81415950 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81415954 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81415958 | 7C 08 03 A6 */	mtlr r0
/* 8141595C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81415960 | 4E 80 00 20 */	blr
.endfn refreshState__Q49textinput8keyboard6pctype12LayoutByNW4RFv

# .text:0x578C | 0x81415964 | size: 0xC
# textinput::keyboard::pctype::Base::isShiftOn() const
.fn isShiftOn__Q49textinput8keyboard6pctype4BaseCFv, global
/* 81415964 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81415968 | 54 03 CF FE */	extrwi r3, r0, 1, 24
/* 8141596C | 4E 80 00 20 */	blr
.endfn isShiftOn__Q49textinput8keyboard6pctype4BaseCFv

# .text:0x5798 | 0x81415970 | size: 0x24
# textinput::keyboard::pctype::LayoutByNW4R::onEvent(textinput::keyboard::pctype::UIObj*, unsigned long, void*)
.fn onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5UIObjUlPv, global
/* 81415970 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81415974 | 4C 82 00 20 */	bnelr
/* 81415978 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 8141597C | 7C C4 33 78 */	mr r4, r6
/* 81415980 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415984 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415988 | 7D 89 03 A6 */	mtctr r12
/* 8141598C | 4E 80 04 20 */	bctr
/* 81415990 | 4E 80 00 20 */	blr
.endfn onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5UIObjUlPv

# .text:0x57BC | 0x81415994 | size: 0x314
# textinput::keyboard::pctype::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q49textinput8keyboard6pctype12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81415994 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81415998 | 7C 08 02 A6 */	mflr r0
/* 8141599C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814159A0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814159A4 | 48 1E 3B 15 */	bl _savegpr_25
/* 814159A8 | 80 E4 00 9C */	lwz r7, 0x9c(r4)
/* 814159AC | 3F C0 81 66 */	lis r30, lbl_81658D90@ha
/* 814159B0 | 3B DE 8D 90 */	addi r30, r30, lbl_81658D90@l
/* 814159B4 | 7C 7F 1B 78 */	mr r31, r3
/* 814159B8 | 3B A7 00 B4 */	addi r29, r7, 0xb4
/* 814159BC | 7C 99 23 78 */	mr r25, r4
/* 814159C0 | 7C BA 2B 78 */	mr r26, r5
/* 814159C4 | 7C DB 33 78 */	mr r27, r6
/* 814159C8 | 7F A4 EB 78 */	mr r4, r29
/* 814159CC | 38 7E 28 CC */	addi r3, r30, 0x28cc
/* 814159D0 | 48 02 48 25 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814159D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814159D8 | 40 82 02 B8 */	bne .L_81415C90
/* 814159DC | 7F A4 EB 78 */	mr r4, r29
/* 814159E0 | 38 7E 28 E4 */	addi r3, r30, 0x28e4
/* 814159E4 | 48 02 48 11 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814159E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814159EC | 41 82 00 08 */	beq .L_814159F4
/* 814159F0 | 48 00 02 A0 */	b .L_81415C90
.L_814159F4:
/* 814159F4 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814159F8 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 814159FC | 40 82 02 94 */	bne .L_81415C90
/* 81415A00 | 7F A5 EB 78 */	mr r5, r29
/* 81415A04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81415A08 | 38 80 00 11 */	li r4, 0x11
/* 81415A0C | 38 C0 00 00 */	li r6, 0x0
/* 81415A10 | 38 E0 00 50 */	li r7, 0x50
/* 81415A14 | 48 02 48 49 */	bl replaceChar__Q29textinput4utilFPcUlPCcic
/* 81415A18 | 38 7D 00 05 */	addi r3, r29, 0x5
/* 81415A1C | 38 8D 92 D8 */	li r4, lbl_81697318@sda21
/* 81415A20 | 38 A0 00 04 */	li r5, 0x4
/* 81415A24 | 48 1E CB 79 */	bl strncmp
/* 81415A28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415A2C | 41 82 00 34 */	beq .L_81415A60
/* 81415A30 | 38 7D 00 07 */	addi r3, r29, 0x7
/* 81415A34 | 38 8D 92 D8 */	li r4, lbl_81697318@sda21
/* 81415A38 | 38 A0 00 04 */	li r5, 0x4
/* 81415A3C | 48 1E CB 61 */	bl strncmp
/* 81415A40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415A44 | 41 82 00 1C */	beq .L_81415A60
/* 81415A48 | 38 7D 00 07 */	addi r3, r29, 0x7
/* 81415A4C | 38 8D 92 E0 */	li r4, lbl_81697320@sda21
/* 81415A50 | 38 A0 00 04 */	li r5, 0x4
/* 81415A54 | 48 1E CB 49 */	bl strncmp
/* 81415A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415A5C | 40 82 00 1C */	bne .L_81415A78
.L_81415A60:
/* 81415A60 | 7F A5 EB 78 */	mr r5, r29
/* 81415A64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81415A68 | 38 80 00 11 */	li r4, 0x11
/* 81415A6C | 38 C0 00 00 */	li r6, 0x0
/* 81415A70 | 38 E0 00 57 */	li r7, 0x57
/* 81415A74 | 48 02 47 E9 */	bl replaceChar__Q29textinput4utilFPcUlPCcic
.L_81415A78:
/* 81415A78 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81415A7C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81415A80 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81415A84 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81415A88 | 7D 89 03 A6 */	mtctr r12
/* 81415A8C | 4E 80 04 21 */	bctrl
/* 81415A90 | 2C 1A 00 01 */	cmpwi r26, 0x1
/* 81415A94 | 7C 7C 1B 78 */	mr r28, r3
/* 81415A98 | 41 82 00 68 */	beq .L_81415B00
/* 81415A9C | 40 80 00 10 */	bge .L_81415AAC
/* 81415AA0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81415AA4 | 40 80 00 98 */	bge .L_81415B3C
/* 81415AA8 | 48 00 00 E4 */	b .L_81415B8C
.L_81415AAC:
/* 81415AAC | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 81415AB0 | 41 82 00 08 */	beq .L_81415AB8
/* 81415AB4 | 48 00 00 D8 */	b .L_81415B8C
.L_81415AB8:
/* 81415AB8 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 81415ABC | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81415AC0 | 41 82 00 CC */	beq .L_81415B8C
/* 81415AC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415AC8 | 41 82 00 18 */	beq .L_81415AE0
/* 81415ACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415AD0 | 38 80 00 00 */	li r4, 0x0
/* 81415AD4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415AD8 | 7D 89 03 A6 */	mtctr r12
/* 81415ADC | 4E 80 04 21 */	bctrl
.L_81415AE0:
/* 81415AE0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81415AE4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81415AE8 | 38 80 00 04 */	li r4, 0x4
/* 81415AEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415AF0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81415AF4 | 7D 89 03 A6 */	mtctr r12
/* 81415AF8 | 4E 80 04 21 */	bctrl
/* 81415AFC | 48 00 00 90 */	b .L_81415B8C
.L_81415B00:
/* 81415B00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415B04 | 41 82 00 18 */	beq .L_81415B1C
/* 81415B08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415B0C | 38 80 00 02 */	li r4, 0x2
/* 81415B10 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415B14 | 7D 89 03 A6 */	mtctr r12
/* 81415B18 | 4E 80 04 21 */	bctrl
.L_81415B1C:
/* 81415B1C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81415B20 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81415B24 | 38 80 00 01 */	li r4, 0x1
/* 81415B28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415B2C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81415B30 | 7D 89 03 A6 */	mtctr r12
/* 81415B34 | 4E 80 04 21 */	bctrl
/* 81415B38 | 48 00 00 54 */	b .L_81415B8C
.L_81415B3C:
/* 81415B3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415B40 | 41 82 00 4C */	beq .L_81415B8C
/* 81415B44 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81415B48 | 38 80 00 04 */	li r4, 0x4
/* 81415B4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415B50 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415B54 | 7D 89 03 A6 */	mtctr r12
/* 81415B58 | 4E 80 04 21 */	bctrl
/* 81415B5C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81415B60 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81415B64 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 81415B68 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81415B6C | 7D 89 03 A6 */	mtctr r12
/* 81415B70 | 4E 80 04 21 */	bctrl
/* 81415B74 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81415B78 | 7F 83 E3 78 */	mr r3, r28
/* 81415B7C | 38 80 00 01 */	li r4, 0x1
/* 81415B80 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415B84 | 7D 89 03 A6 */	mtctr r12
/* 81415B88 | 4E 80 04 21 */	bctrl
.L_81415B8C:
/* 81415B8C | 28 1A 00 02 */	cmplwi r26, 0x2
/* 81415B90 | 40 82 01 00 */	bne .L_81415C90
/* 81415B94 | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 81415B98 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81415B9C | 41 82 00 F4 */	beq .L_81415C90
/* 81415BA0 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 81415BA4 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81415BA8 | 40 82 00 E8 */	bne .L_81415C90
/* 81415BAC | 38 7E 2B 28 */	addi r3, r30, 0x2b28
/* 81415BB0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81415BB4 | 48 02 46 41 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81415BB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415BBC | 40 82 00 40 */	bne .L_81415BFC
/* 81415BC0 | 38 7E 2B 94 */	addi r3, r30, 0x2b94
/* 81415BC4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81415BC8 | 48 02 46 2D */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81415BCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415BD0 | 40 82 00 2C */	bne .L_81415BFC
/* 81415BD4 | 38 7E 2B 38 */	addi r3, r30, 0x2b38
/* 81415BD8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81415BDC | 48 02 46 19 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81415BE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415BE4 | 40 82 00 18 */	bne .L_81415BFC
/* 81415BE8 | 38 7E 2B A4 */	addi r3, r30, 0x2ba4
/* 81415BEC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81415BF0 | 48 02 46 05 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81415BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415BF8 | 41 82 00 98 */	beq .L_81415C90
.L_81415BFC:
/* 81415BFC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81415C00 | 7F 23 CB 78 */	mr r3, r25
/* 81415C04 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 81415C08 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81415C0C | 7D 89 03 A6 */	mtctr r12
/* 81415C10 | 4E 80 04 21 */	bctrl
/* 81415C14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81415C18 | 41 82 00 78 */	beq .L_81415C90
/* 81415C1C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81415C20 | 7F A5 EB 78 */	mr r5, r29
/* 81415C24 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81415C28 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 81415C2C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81415C30 | 7D 89 03 A6 */	mtctr r12
/* 81415C34 | 4E 80 04 21 */	bctrl
/* 81415C38 | 28 03 00 1E */	cmplwi r3, 0x1e
/* 81415C3C | 41 80 00 54 */	blt .L_81415C90
/* 81415C40 | 3C 80 38 E4 */	lis r4, 0x38e4
/* 81415C44 | 38 04 8E 39 */	subi r0, r4, 0x71c7
/* 81415C48 | 7C 00 18 16 */	mulhwu r0, r0, r3
/* 81415C4C | 54 00 F8 7E */	srwi r0, r0, 1
/* 81415C50 | 1C 00 00 09 */	mulli r0, r0, 0x9
/* 81415C54 | 7C 00 18 51 */	subf. r0, r0, r3
/* 81415C58 | 40 82 00 38 */	bne .L_81415C90
/* 81415C5C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81415C60 | 7F 83 E3 78 */	mr r3, r28
/* 81415C64 | 38 80 00 00 */	li r4, 0x0
/* 81415C68 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81415C6C | 7D 89 03 A6 */	mtctr r12
/* 81415C70 | 4E 80 04 21 */	bctrl
/* 81415C74 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81415C78 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81415C7C | 38 80 00 04 */	li r4, 0x4
/* 81415C80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415C84 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81415C88 | 7D 89 03 A6 */	mtctr r12
/* 81415C8C | 4E 80 04 21 */	bctrl
.L_81415C90:
/* 81415C90 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81415C94 | 48 1E 38 71 */	bl _restgpr_25
/* 81415C98 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81415C9C | 7C 08 03 A6 */	mtlr r0
/* 81415CA0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81415CA4 | 4E 80 00 20 */	blr
.endfn onTiEvent__Q49textinput8keyboard6pctype12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x5AD0 | 0x81415CA8 | size: 0xC
# textinput::gui::GUIComponent::isDragging(int)
.fn isDragging__Q39textinput3gui12GUIComponentFi, global
/* 81415CA8 | 7C 63 22 14 */	add r3, r3, r4
/* 81415CAC | 88 63 00 0D */	lbz r3, 0xd(r3)
/* 81415CB0 | 4E 80 00 20 */	blr
.endfn isDragging__Q39textinput3gui12GUIComponentFi

# .text:0x5ADC | 0x81415CB4 | size: 0x1C
# textinput::keyboard::pctype::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl, global
/* 81415CB4 | 28 04 00 10 */	cmplwi r4, 0x10
/* 81415CB8 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81415CBC | 38 00 00 02 */	li r0, 0x2
/* 81415CC0 | 41 82 00 08 */	beq .L_81415CC8
/* 81415CC4 | 7C 80 23 78 */	mr r0, r4
.L_81415CC8:
/* 81415CC8 | 7C 04 03 78 */	mr r4, r0
/* 81415CCC | 48 02 13 F4 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl

# .text:0x5AF8 | 0x81415CD0 | size: 0x254
# textinput::keyboard::pctype::NormalButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81415CD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81415CD4 | 7C 08 02 A6 */	mflr r0
/* 81415CD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81415CDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81415CE0 | 7C 9F 23 78 */	mr r31, r4
/* 81415CE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81415CE8 | 7C 7E 1B 78 */	mr r30, r3
/* 81415CEC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81415CF0 | 28 00 00 10 */	cmplwi r0, 0x10
/* 81415CF4 | 41 81 02 18 */	bgt .L_81415F0C
/* 81415CF8 | 3C A0 81 66 */	lis r5, jumptable_8165B944@ha
/* 81415CFC | 54 00 10 3A */	slwi r0, r0, 2
/* 81415D00 | 38 A5 B9 44 */	addi r5, r5, jumptable_8165B944@l
/* 81415D04 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 81415D08 | 7C A9 03 A6 */	mtctr r5
/* 81415D0C | 4E 80 04 20 */	bctr
.L_81415D10:
/* 81415D10 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81415D14 | 40 82 00 18 */	bne .L_81415D2C
/* 81415D18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415D1C | 38 80 00 01 */	li r4, 0x1
/* 81415D20 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415D24 | 7D 89 03 A6 */	mtctr r12
/* 81415D28 | 4E 80 04 21 */	bctrl
.L_81415D2C:
/* 81415D2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81415D30 | 40 82 01 DC */	bne .L_81415F0C
/* 81415D34 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415D38 | 7F C3 F3 78 */	mr r3, r30
/* 81415D3C | 38 80 00 10 */	li r4, 0x10
/* 81415D40 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415D44 | 7D 89 03 A6 */	mtctr r12
/* 81415D48 | 4E 80 04 21 */	bctrl
/* 81415D4C | 48 00 01 C0 */	b .L_81415F0C
.L_81415D50:
/* 81415D50 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81415D54 | 40 82 00 18 */	bne .L_81415D6C
/* 81415D58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415D5C | 38 80 00 03 */	li r4, 0x3
/* 81415D60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415D64 | 7D 89 03 A6 */	mtctr r12
/* 81415D68 | 4E 80 04 21 */	bctrl
.L_81415D6C:
/* 81415D6C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81415D70 | 40 82 00 1C */	bne .L_81415D8C
/* 81415D74 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415D78 | 7F C3 F3 78 */	mr r3, r30
/* 81415D7C | 38 80 00 02 */	li r4, 0x2
/* 81415D80 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415D84 | 7D 89 03 A6 */	mtctr r12
/* 81415D88 | 4E 80 04 21 */	bctrl
.L_81415D8C:
/* 81415D8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81415D90 | 40 82 01 7C */	bne .L_81415F0C
/* 81415D94 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415D98 | 7F C3 F3 78 */	mr r3, r30
/* 81415D9C | 38 80 00 04 */	li r4, 0x4
/* 81415DA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415DA4 | 7D 89 03 A6 */	mtctr r12
/* 81415DA8 | 4E 80 04 21 */	bctrl
/* 81415DAC | 48 00 01 60 */	b .L_81415F0C
.L_81415DB0:
/* 81415DB0 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81415DB4 | 40 82 00 18 */	bne .L_81415DCC
/* 81415DB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415DBC | 38 80 00 02 */	li r4, 0x2
/* 81415DC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415DC4 | 7D 89 03 A6 */	mtctr r12
/* 81415DC8 | 4E 80 04 21 */	bctrl
.L_81415DCC:
/* 81415DCC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81415DD0 | 40 82 01 3C */	bne .L_81415F0C
/* 81415DD4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415DD8 | 7F C3 F3 78 */	mr r3, r30
/* 81415DDC | 38 80 00 04 */	li r4, 0x4
/* 81415DE0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415DE4 | 7D 89 03 A6 */	mtctr r12
/* 81415DE8 | 4E 80 04 21 */	bctrl
/* 81415DEC | 48 00 01 20 */	b .L_81415F0C
.L_81415DF0:
/* 81415DF0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81415DF4 | 40 82 00 18 */	bne .L_81415E0C
/* 81415DF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415DFC | 38 80 00 00 */	li r4, 0x0
/* 81415E00 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415E04 | 7D 89 03 A6 */	mtctr r12
/* 81415E08 | 4E 80 04 21 */	bctrl
.L_81415E0C:
/* 81415E0C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81415E10 | 40 82 00 1C */	bne .L_81415E2C
/* 81415E14 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415E18 | 7F C3 F3 78 */	mr r3, r30
/* 81415E1C | 38 80 00 01 */	li r4, 0x1
/* 81415E20 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415E24 | 7D 89 03 A6 */	mtctr r12
/* 81415E28 | 4E 80 04 21 */	bctrl
.L_81415E2C:
/* 81415E2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81415E30 | 40 82 00 DC */	bne .L_81415F0C
/* 81415E34 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415E38 | 7F C3 F3 78 */	mr r3, r30
/* 81415E3C | 38 80 00 10 */	li r4, 0x10
/* 81415E40 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415E44 | 7D 89 03 A6 */	mtctr r12
/* 81415E48 | 4E 80 04 21 */	bctrl
/* 81415E4C | 48 00 00 C0 */	b .L_81415F0C
.L_81415E50:
/* 81415E50 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81415E54 | 40 82 00 18 */	bne .L_81415E6C
/* 81415E58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415E5C | 38 80 00 03 */	li r4, 0x3
/* 81415E60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415E64 | 7D 89 03 A6 */	mtctr r12
/* 81415E68 | 4E 80 04 21 */	bctrl
.L_81415E6C:
/* 81415E6C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81415E70 | 40 82 00 1C */	bne .L_81415E8C
/* 81415E74 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415E78 | 7F C3 F3 78 */	mr r3, r30
/* 81415E7C | 38 80 00 02 */	li r4, 0x2
/* 81415E80 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415E84 | 7D 89 03 A6 */	mtctr r12
/* 81415E88 | 4E 80 04 21 */	bctrl
.L_81415E8C:
/* 81415E8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81415E90 | 40 82 00 7C */	bne .L_81415F0C
/* 81415E94 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415E98 | 7F C3 F3 78 */	mr r3, r30
/* 81415E9C | 38 80 00 04 */	li r4, 0x4
/* 81415EA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415EA4 | 7D 89 03 A6 */	mtctr r12
/* 81415EA8 | 4E 80 04 21 */	bctrl
/* 81415EAC | 48 00 00 60 */	b .L_81415F0C
.L_81415EB0:
/* 81415EB0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81415EB4 | 40 82 00 18 */	bne .L_81415ECC
/* 81415EB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81415EBC | 38 80 00 00 */	li r4, 0x0
/* 81415EC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415EC4 | 7D 89 03 A6 */	mtctr r12
/* 81415EC8 | 4E 80 04 21 */	bctrl
.L_81415ECC:
/* 81415ECC | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81415ED0 | 40 82 00 1C */	bne .L_81415EEC
/* 81415ED4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415ED8 | 7F C3 F3 78 */	mr r3, r30
/* 81415EDC | 38 80 00 01 */	li r4, 0x1
/* 81415EE0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415EE4 | 7D 89 03 A6 */	mtctr r12
/* 81415EE8 | 4E 80 04 21 */	bctrl
.L_81415EEC:
/* 81415EEC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81415EF0 | 40 82 00 1C */	bne .L_81415F0C
/* 81415EF4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81415EF8 | 7F C3 F3 78 */	mr r3, r30
/* 81415EFC | 38 80 00 10 */	li r4, 0x10
/* 81415F00 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415F04 | 7D 89 03 A6 */	mtctr r12
/* 81415F08 | 4E 80 04 21 */	bctrl
.L_81415F0C:
/* 81415F0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81415F10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81415F14 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81415F18 | 7C 08 03 A6 */	mtlr r0
/* 81415F1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81415F20 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x5D4C | 0x81415F24 | size: 0x34
# textinput::keyboard::pctype::ShiftCapsAnmPane::isFocused() const
.fn isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, global
/* 81415F24 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81415F28 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81415F2C | 41 81 00 24 */	bgt .L_81415F50
/* 81415F30 | 3C 60 81 66 */	lis r3, jumptable_8165B988@ha
/* 81415F34 | 54 00 10 3A */	slwi r0, r0, 2
/* 81415F38 | 38 63 B9 88 */	addi r3, r3, jumptable_8165B988@l
/* 81415F3C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81415F40 | 7C 69 03 A6 */	mtctr r3
/* 81415F44 | 4E 80 04 20 */	bctr
.L_81415F48:
/* 81415F48 | 38 60 00 00 */	li r3, 0x0
/* 81415F4C | 4E 80 00 20 */	blr
.L_81415F50:
/* 81415F50 | 38 60 00 01 */	li r3, 0x1
/* 81415F54 | 4E 80 00 20 */	blr
.endfn isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv

# .text:0x5D80 | 0x81415F58 | size: 0x490
# textinput::keyboard::pctype::ShiftCapsAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81415F58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81415F5C | 7C 08 02 A6 */	mflr r0
/* 81415F60 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 81415F64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81415F68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81415F6C | 7C 7F 1B 78 */	mr r31, r3
/* 81415F70 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81415F74 | 7C 9E 23 78 */	mr r30, r4
/* 81415F78 | 40 82 00 7C */	bne .L_81415FF4
/* 81415F7C | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81415F80 | 38 80 00 01 */	li r4, 0x1
/* 81415F84 | 98 83 00 34 */	stb r4, 0x34(r3)
/* 81415F88 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81415F8C | 41 81 00 24 */	bgt .L_81415FB0
/* 81415F90 | 3C 60 81 66 */	lis r3, jumptable_8165BA40@ha
/* 81415F94 | 54 00 10 3A */	slwi r0, r0, 2
/* 81415F98 | 38 63 BA 40 */	addi r3, r3, jumptable_8165BA40@l
/* 81415F9C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81415FA0 | 7C 69 03 A6 */	mtctr r3
/* 81415FA4 | 4E 80 04 20 */	bctr
.L_81415FA8:
/* 81415FA8 | 38 00 00 00 */	li r0, 0x0
/* 81415FAC | 48 00 00 08 */	b .L_81415FB4
.L_81415FB0:
/* 81415FB0 | 38 00 00 01 */	li r0, 0x1
.L_81415FB4:
/* 81415FB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81415FB8 | 40 82 00 20 */	bne .L_81415FD8
/* 81415FBC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81415FC0 | 7F E3 FB 78 */	mr r3, r31
/* 81415FC4 | 38 80 00 09 */	li r4, 0x9
/* 81415FC8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415FCC | 7D 89 03 A6 */	mtctr r12
/* 81415FD0 | 4E 80 04 21 */	bctrl
/* 81415FD4 | 48 00 03 FC */	b .L_814163D0
.L_81415FD8:
/* 81415FD8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81415FDC | 7F E3 FB 78 */	mr r3, r31
/* 81415FE0 | 38 80 00 04 */	li r4, 0x4
/* 81415FE4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81415FE8 | 7D 89 03 A6 */	mtctr r12
/* 81415FEC | 4E 80 04 21 */	bctrl
/* 81415FF0 | 48 00 03 E0 */	b .L_814163D0
.L_81415FF4:
/* 81415FF4 | 2C 04 00 0B */	cmpwi r4, 0xb
/* 81415FF8 | 40 82 00 7C */	bne .L_81416074
/* 81415FFC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81416000 | 38 80 00 00 */	li r4, 0x0
/* 81416004 | 98 83 00 34 */	stb r4, 0x34(r3)
/* 81416008 | 28 00 00 0A */	cmplwi r0, 0xa
/* 8141600C | 41 81 00 24 */	bgt .L_81416030
/* 81416010 | 3C 60 81 66 */	lis r3, jumptable_8165BA14@ha
/* 81416014 | 54 00 10 3A */	slwi r0, r0, 2
/* 81416018 | 38 63 BA 14 */	addi r3, r3, jumptable_8165BA14@l
/* 8141601C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81416020 | 7C 69 03 A6 */	mtctr r3
/* 81416024 | 4E 80 04 20 */	bctr
.L_81416028:
/* 81416028 | 38 00 00 00 */	li r0, 0x0
/* 8141602C | 48 00 00 08 */	b .L_81416034
.L_81416030:
/* 81416030 | 38 00 00 01 */	li r0, 0x1
.L_81416034:
/* 81416034 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81416038 | 40 82 00 20 */	bne .L_81416058
/* 8141603C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416040 | 7F E3 FB 78 */	mr r3, r31
/* 81416044 | 38 80 00 02 */	li r4, 0x2
/* 81416048 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141604C | 7D 89 03 A6 */	mtctr r12
/* 81416050 | 4E 80 04 21 */	bctrl
/* 81416054 | 48 00 03 7C */	b .L_814163D0
.L_81416058:
/* 81416058 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141605C | 7F E3 FB 78 */	mr r3, r31
/* 81416060 | 38 80 00 0B */	li r4, 0xb
/* 81416064 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416068 | 7D 89 03 A6 */	mtctr r12
/* 8141606C | 4E 80 04 21 */	bctrl
/* 81416070 | 48 00 03 60 */	b .L_814163D0
.L_81416074:
/* 81416074 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 81416078 | 40 82 00 68 */	bne .L_814160E0
/* 8141607C | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 81416080 | 38 00 00 00 */	li r0, 0x0
/* 81416084 | 98 03 00 34 */	stb r0, 0x34(r3)
/* 81416088 | 2C 04 00 09 */	cmpwi r4, 0x9
/* 8141608C | 41 82 03 44 */	beq .L_814163D0
/* 81416090 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 81416094 | 40 82 00 1C */	bne .L_814160B0
/* 81416098 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141609C | 38 80 00 06 */	li r4, 0x6
/* 814160A0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814160A4 | 7D 89 03 A6 */	mtctr r12
/* 814160A8 | 4E 80 04 21 */	bctrl
/* 814160AC | 48 00 03 24 */	b .L_814163D0
.L_814160B0:
/* 814160B0 | 2C 04 00 08 */	cmpwi r4, 0x8
/* 814160B4 | 41 82 00 10 */	beq .L_814160C4
/* 814160B8 | 38 04 FF FC */	subi r0, r4, 0x4
/* 814160BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814160C0 | 41 81 03 10 */	bgt .L_814163D0
.L_814160C4:
/* 814160C4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814160C8 | 7F E3 FB 78 */	mr r3, r31
/* 814160CC | 38 80 00 03 */	li r4, 0x3
/* 814160D0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814160D4 | 7D 89 03 A6 */	mtctr r12
/* 814160D8 | 4E 80 04 21 */	bctrl
/* 814160DC | 48 00 02 F4 */	b .L_814163D0
.L_814160E0:
/* 814160E0 | 88 03 00 34 */	lbz r0, 0x34(r3)
/* 814160E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814160E8 | 40 82 01 68 */	bne .L_81416250
/* 814160EC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814160F0 | 28 00 00 0B */	cmplwi r0, 0xb
/* 814160F4 | 41 81 02 DC */	bgt .L_814163D0
/* 814160F8 | 3C A0 81 66 */	lis r5, jumptable_8165B9E4@ha
/* 814160FC | 54 00 10 3A */	slwi r0, r0, 2
/* 81416100 | 38 A5 B9 E4 */	addi r5, r5, jumptable_8165B9E4@l
/* 81416104 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 81416108 | 7C A9 03 A6 */	mtctr r5
/* 8141610C | 4E 80 04 20 */	bctr
.L_81416110:
/* 81416110 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416114 | 40 82 02 BC */	bne .L_814163D0
/* 81416118 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141611C | 38 80 00 00 */	li r4, 0x0
/* 81416120 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416124 | 7D 89 03 A6 */	mtctr r12
/* 81416128 | 4E 80 04 21 */	bctrl
/* 8141612C | 48 00 02 A4 */	b .L_814163D0
.L_81416130:
/* 81416130 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416134 | 40 82 00 18 */	bne .L_8141614C
/* 81416138 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141613C | 38 80 00 00 */	li r4, 0x0
/* 81416140 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416144 | 7D 89 03 A6 */	mtctr r12
/* 81416148 | 4E 80 04 21 */	bctrl
.L_8141614C:
/* 8141614C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81416150 | 40 82 02 80 */	bne .L_814163D0
/* 81416154 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416158 | 7F E3 FB 78 */	mr r3, r31
/* 8141615C | 38 80 00 01 */	li r4, 0x1
/* 81416160 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416164 | 7D 89 03 A6 */	mtctr r12
/* 81416168 | 4E 80 04 21 */	bctrl
/* 8141616C | 48 00 02 64 */	b .L_814163D0
.L_81416170:
/* 81416170 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416174 | 40 82 00 18 */	bne .L_8141618C
/* 81416178 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141617C | 38 80 00 03 */	li r4, 0x3
/* 81416180 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416184 | 7D 89 03 A6 */	mtctr r12
/* 81416188 | 4E 80 04 21 */	bctrl
.L_8141618C:
/* 8141618C | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81416190 | 40 82 02 40 */	bne .L_814163D0
/* 81416194 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416198 | 7F E3 FB 78 */	mr r3, r31
/* 8141619C | 38 80 00 02 */	li r4, 0x2
/* 814161A0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814161A4 | 7D 89 03 A6 */	mtctr r12
/* 814161A8 | 4E 80 04 21 */	bctrl
/* 814161AC | 48 00 02 24 */	b .L_814163D0
.L_814161B0:
/* 814161B0 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 814161B4 | 40 82 02 1C */	bne .L_814163D0
/* 814161B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814161BC | 38 80 00 02 */	li r4, 0x2
/* 814161C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814161C4 | 7D 89 03 A6 */	mtctr r12
/* 814161C8 | 4E 80 04 21 */	bctrl
/* 814161CC | 48 00 02 04 */	b .L_814163D0
.L_814161D0:
/* 814161D0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814161D4 | 40 82 00 18 */	bne .L_814161EC
/* 814161D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814161DC | 38 80 00 00 */	li r4, 0x0
/* 814161E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814161E4 | 7D 89 03 A6 */	mtctr r12
/* 814161E8 | 4E 80 04 21 */	bctrl
.L_814161EC:
/* 814161EC | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 814161F0 | 40 82 01 E0 */	bne .L_814163D0
/* 814161F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814161F8 | 7F E3 FB 78 */	mr r3, r31
/* 814161FC | 38 80 00 01 */	li r4, 0x1
/* 81416200 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416204 | 7D 89 03 A6 */	mtctr r12
/* 81416208 | 4E 80 04 21 */	bctrl
/* 8141620C | 48 00 01 C4 */	b .L_814163D0
.L_81416210:
/* 81416210 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416214 | 40 82 00 18 */	bne .L_8141622C
/* 81416218 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141621C | 38 80 00 03 */	li r4, 0x3
/* 81416220 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416224 | 7D 89 03 A6 */	mtctr r12
/* 81416228 | 4E 80 04 21 */	bctrl
.L_8141622C:
/* 8141622C | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81416230 | 40 82 01 A0 */	bne .L_814163D0
/* 81416234 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416238 | 7F E3 FB 78 */	mr r3, r31
/* 8141623C | 38 80 00 02 */	li r4, 0x2
/* 81416240 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416244 | 7D 89 03 A6 */	mtctr r12
/* 81416248 | 4E 80 04 21 */	bctrl
/* 8141624C | 48 00 01 84 */	b .L_814163D0
.L_81416250:
/* 81416250 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81416254 | 28 00 00 0B */	cmplwi r0, 0xb
/* 81416258 | 41 81 01 78 */	bgt .L_814163D0
/* 8141625C | 3C A0 81 66 */	lis r5, jumptable_8165B9B4@ha
/* 81416260 | 54 00 10 3A */	slwi r0, r0, 2
/* 81416264 | 38 A5 B9 B4 */	addi r5, r5, jumptable_8165B9B4@l
/* 81416268 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8141626C | 7C A9 03 A6 */	mtctr r5
/* 81416270 | 4E 80 04 20 */	bctr
.L_81416274:
/* 81416274 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416278 | 40 82 00 18 */	bne .L_81416290
/* 8141627C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416280 | 38 80 00 00 */	li r4, 0x0
/* 81416284 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416288 | 7D 89 03 A6 */	mtctr r12
/* 8141628C | 4E 80 04 21 */	bctrl
.L_81416290:
/* 81416290 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81416294 | 40 82 00 1C */	bne .L_814162B0
/* 81416298 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141629C | 7F E3 FB 78 */	mr r3, r31
/* 814162A0 | 38 80 00 01 */	li r4, 0x1
/* 814162A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814162A8 | 7D 89 03 A6 */	mtctr r12
/* 814162AC | 4E 80 04 21 */	bctrl
.L_814162B0:
/* 814162B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814162B4 | 40 82 01 1C */	bne .L_814163D0
/* 814162B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814162BC | 7F E3 FB 78 */	mr r3, r31
/* 814162C0 | 38 80 00 09 */	li r4, 0x9
/* 814162C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814162C8 | 7D 89 03 A6 */	mtctr r12
/* 814162CC | 4E 80 04 21 */	bctrl
/* 814162D0 | 48 00 01 00 */	b .L_814163D0
.L_814162D4:
/* 814162D4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814162D8 | 40 82 00 F8 */	bne .L_814163D0
/* 814162DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814162E0 | 38 80 00 08 */	li r4, 0x8
/* 814162E4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814162E8 | 7D 89 03 A6 */	mtctr r12
/* 814162EC | 4E 80 04 21 */	bctrl
/* 814162F0 | 48 00 00 E0 */	b .L_814163D0
.L_814162F4:
/* 814162F4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814162F8 | 40 82 00 18 */	bne .L_81416310
/* 814162FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416300 | 38 80 00 05 */	li r4, 0x5
/* 81416304 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416308 | 7D 89 03 A6 */	mtctr r12
/* 8141630C | 4E 80 04 21 */	bctrl
.L_81416310:
/* 81416310 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81416314 | 40 82 00 BC */	bne .L_814163D0
/* 81416318 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141631C | 7F E3 FB 78 */	mr r3, r31
/* 81416320 | 38 80 00 09 */	li r4, 0x9
/* 81416324 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416328 | 7D 89 03 A6 */	mtctr r12
/* 8141632C | 4E 80 04 21 */	bctrl
/* 81416330 | 48 00 00 A0 */	b .L_814163D0
.L_81416334:
/* 81416334 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81416338 | 40 82 00 98 */	bne .L_814163D0
/* 8141633C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416340 | 38 80 00 09 */	li r4, 0x9
/* 81416344 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416348 | 7D 89 03 A6 */	mtctr r12
/* 8141634C | 4E 80 04 21 */	bctrl
/* 81416350 | 48 00 00 80 */	b .L_814163D0
.L_81416354:
/* 81416354 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416358 | 40 82 00 18 */	bne .L_81416370
/* 8141635C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416360 | 38 80 00 0A */	li r4, 0xa
/* 81416364 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416368 | 7D 89 03 A6 */	mtctr r12
/* 8141636C | 4E 80 04 21 */	bctrl
.L_81416370:
/* 81416370 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81416374 | 40 82 00 5C */	bne .L_814163D0
/* 81416378 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141637C | 7F E3 FB 78 */	mr r3, r31
/* 81416380 | 38 80 00 08 */	li r4, 0x8
/* 81416384 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416388 | 7D 89 03 A6 */	mtctr r12
/* 8141638C | 4E 80 04 21 */	bctrl
/* 81416390 | 48 00 00 40 */	b .L_814163D0
.L_81416394:
/* 81416394 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416398 | 40 82 00 18 */	bne .L_814163B0
/* 8141639C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814163A0 | 38 80 00 05 */	li r4, 0x5
/* 814163A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814163A8 | 7D 89 03 A6 */	mtctr r12
/* 814163AC | 4E 80 04 21 */	bctrl
.L_814163B0:
/* 814163B0 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 814163B4 | 40 82 00 1C */	bne .L_814163D0
/* 814163B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814163BC | 7F E3 FB 78 */	mr r3, r31
/* 814163C0 | 38 80 00 09 */	li r4, 0x9
/* 814163C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814163C8 | 7D 89 03 A6 */	mtctr r12
/* 814163CC | 4E 80 04 21 */	bctrl
.L_814163D0:
/* 814163D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814163D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814163D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814163DC | 7C 08 03 A6 */	mtlr r0
/* 814163E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814163E4 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x6210 | 0x814163E8 | size: 0x19C
# textinput::keyboard::pctype::ToggleButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 814163E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814163EC | 7C 08 02 A6 */	mflr r0
/* 814163F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814163F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814163F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814163FC | 7C 9F 23 78 */	mr r31, r4
/* 81416400 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416404 | 7C 7E 1B 78 */	mr r30, r3
/* 81416408 | 40 82 00 2C */	bne .L_81416434
/* 8141640C | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81416410 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81416414 | 41 82 00 20 */	beq .L_81416434
/* 81416418 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8141641C | 41 82 00 18 */	beq .L_81416434
/* 81416420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416424 | 38 80 00 04 */	li r4, 0x4
/* 81416428 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141642C | 7D 89 03 A6 */	mtctr r12
/* 81416430 | 4E 80 04 21 */	bctrl
.L_81416434:
/* 81416434 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 81416438 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8141643C | 41 81 01 30 */	bgt .L_8141656C
/* 81416440 | 3C 60 81 66 */	lis r3, jumptable_8165BA6C@ha
/* 81416444 | 54 00 10 3A */	slwi r0, r0, 2
/* 81416448 | 38 63 BA 6C */	addi r3, r3, jumptable_8165BA6C@l
/* 8141644C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81416450 | 7C 69 03 A6 */	mtctr r3
/* 81416454 | 4E 80 04 20 */	bctr
.L_81416458:
/* 81416458 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8141645C | 40 82 01 10 */	bne .L_8141656C
/* 81416460 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416464 | 7F C3 F3 78 */	mr r3, r30
/* 81416468 | 38 80 00 01 */	li r4, 0x1
/* 8141646C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416470 | 7D 89 03 A6 */	mtctr r12
/* 81416474 | 4E 80 04 21 */	bctrl
/* 81416478 | 48 00 00 F4 */	b .L_8141656C
.L_8141647C:
/* 8141647C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81416480 | 40 82 00 1C */	bne .L_8141649C
/* 81416484 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416488 | 7F C3 F3 78 */	mr r3, r30
/* 8141648C | 38 80 00 03 */	li r4, 0x3
/* 81416490 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416494 | 7D 89 03 A6 */	mtctr r12
/* 81416498 | 4E 80 04 21 */	bctrl
.L_8141649C:
/* 8141649C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 814164A0 | 40 82 00 CC */	bne .L_8141656C
/* 814164A4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814164A8 | 7F C3 F3 78 */	mr r3, r30
/* 814164AC | 38 80 00 02 */	li r4, 0x2
/* 814164B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814164B4 | 7D 89 03 A6 */	mtctr r12
/* 814164B8 | 4E 80 04 21 */	bctrl
/* 814164BC | 48 00 00 B0 */	b .L_8141656C
.L_814164C0:
/* 814164C0 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 814164C4 | 40 82 00 A8 */	bne .L_8141656C
/* 814164C8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814164CC | 7F C3 F3 78 */	mr r3, r30
/* 814164D0 | 38 80 00 02 */	li r4, 0x2
/* 814164D4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814164D8 | 7D 89 03 A6 */	mtctr r12
/* 814164DC | 4E 80 04 21 */	bctrl
/* 814164E0 | 48 00 00 8C */	b .L_8141656C
.L_814164E4:
/* 814164E4 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 814164E8 | 40 82 00 1C */	bne .L_81416504
/* 814164EC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814164F0 | 7F C3 F3 78 */	mr r3, r30
/* 814164F4 | 38 80 00 00 */	li r4, 0x0
/* 814164F8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814164FC | 7D 89 03 A6 */	mtctr r12
/* 81416500 | 4E 80 04 21 */	bctrl
.L_81416504:
/* 81416504 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81416508 | 40 82 00 64 */	bne .L_8141656C
/* 8141650C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416510 | 7F C3 F3 78 */	mr r3, r30
/* 81416514 | 38 80 00 01 */	li r4, 0x1
/* 81416518 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141651C | 7D 89 03 A6 */	mtctr r12
/* 81416520 | 4E 80 04 21 */	bctrl
/* 81416524 | 48 00 00 48 */	b .L_8141656C
.L_81416528:
/* 81416528 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8141652C | 40 82 00 40 */	bne .L_8141656C
/* 81416530 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416534 | 7F C3 F3 78 */	mr r3, r30
/* 81416538 | 38 80 00 05 */	li r4, 0x5
/* 8141653C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416540 | 7D 89 03 A6 */	mtctr r12
/* 81416544 | 4E 80 04 21 */	bctrl
/* 81416548 | 48 00 00 24 */	b .L_8141656C
.L_8141654C:
/* 8141654C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81416550 | 40 82 00 1C */	bne .L_8141656C
/* 81416554 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416558 | 7F C3 F3 78 */	mr r3, r30
/* 8141655C | 38 80 00 00 */	li r4, 0x0
/* 81416560 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416564 | 7D 89 03 A6 */	mtctr r12
/* 81416568 | 4E 80 04 21 */	bctrl
.L_8141656C:
/* 8141656C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416570 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416574 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416578 | 7C 08 03 A6 */	mtlr r0
/* 8141657C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416580 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x63AC | 0x81416584 | size: 0x294
# textinput::keyboard::pctype::OnOffButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81416584 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416588 | 7C 08 02 A6 */	mflr r0
/* 8141658C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81416590 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416594 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81416598 | 7C 9F 23 78 */	mr r31, r4
/* 8141659C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814165A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814165A4 | 40 82 00 38 */	bne .L_814165DC
/* 814165A8 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814165AC | 2C 00 00 0F */	cmpwi r0, 0xf
/* 814165B0 | 41 82 00 2C */	beq .L_814165DC
/* 814165B4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814165B8 | 41 82 00 24 */	beq .L_814165DC
/* 814165BC | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814165C0 | 41 82 00 1C */	beq .L_814165DC
/* 814165C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814165C8 | 38 80 00 04 */	li r4, 0x4
/* 814165CC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814165D0 | 7D 89 03 A6 */	mtctr r12
/* 814165D4 | 4E 80 04 21 */	bctrl
/* 814165D8 | 48 00 02 28 */	b .L_81416800
.L_814165DC:
/* 814165DC | 2C 04 00 06 */	cmpwi r4, 0x6
/* 814165E0 | 40 82 00 54 */	bne .L_81416634
/* 814165E4 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814165E8 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 814165EC | 41 82 00 48 */	beq .L_81416634
/* 814165F0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814165F4 | 41 82 00 40 */	beq .L_81416634
/* 814165F8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814165FC | 41 82 00 38 */	beq .L_81416634
/* 81416600 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 81416604 | 41 82 00 30 */	beq .L_81416634
/* 81416608 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141660C | 41 82 00 28 */	beq .L_81416634
/* 81416610 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81416614 | 41 82 00 20 */	beq .L_81416634
/* 81416618 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141661C | 7F C3 F3 78 */	mr r3, r30
/* 81416620 | 38 80 00 0C */	li r4, 0xc
/* 81416624 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416628 | 7D 89 03 A6 */	mtctr r12
/* 8141662C | 4E 80 04 21 */	bctrl
/* 81416630 | 48 00 01 D0 */	b .L_81416800
.L_81416634:
/* 81416634 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 81416638 | 40 82 00 2C */	bne .L_81416664
/* 8141663C | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81416640 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 81416644 | 41 82 00 20 */	beq .L_81416664
/* 81416648 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141664C | 7F C3 F3 78 */	mr r3, r30
/* 81416650 | 38 80 00 0D */	li r4, 0xd
/* 81416654 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416658 | 7D 89 03 A6 */	mtctr r12
/* 8141665C | 4E 80 04 21 */	bctrl
/* 81416660 | 48 00 01 A0 */	b .L_81416800
.L_81416664:
/* 81416664 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81416668 | 28 00 00 0E */	cmplwi r0, 0xe
/* 8141666C | 41 81 01 94 */	bgt .L_81416800
/* 81416670 | 3C 60 81 66 */	lis r3, jumptable_8165BA88@ha
/* 81416674 | 54 00 10 3A */	slwi r0, r0, 2
/* 81416678 | 38 63 BA 88 */	addi r3, r3, jumptable_8165BA88@l
/* 8141667C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81416680 | 7C 69 03 A6 */	mtctr r3
/* 81416684 | 4E 80 04 20 */	bctr
.L_81416688:
/* 81416688 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8141668C | 40 82 00 1C */	bne .L_814166A8
/* 81416690 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416694 | 7F C3 F3 78 */	mr r3, r30
/* 81416698 | 38 80 00 0E */	li r4, 0xe
/* 8141669C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814166A0 | 7D 89 03 A6 */	mtctr r12
/* 814166A4 | 4E 80 04 21 */	bctrl
.L_814166A8:
/* 814166A8 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814166AC | 40 82 01 54 */	bne .L_81416800
/* 814166B0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814166B4 | 7F C3 F3 78 */	mr r3, r30
/* 814166B8 | 38 80 00 01 */	li r4, 0x1
/* 814166BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814166C0 | 7D 89 03 A6 */	mtctr r12
/* 814166C4 | 4E 80 04 21 */	bctrl
/* 814166C8 | 48 00 01 38 */	b .L_81416800
.L_814166CC:
/* 814166CC | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814166D0 | 40 82 01 30 */	bne .L_81416800
/* 814166D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814166D8 | 7F C3 F3 78 */	mr r3, r30
/* 814166DC | 38 80 00 0F */	li r4, 0xf
/* 814166E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814166E4 | 7D 89 03 A6 */	mtctr r12
/* 814166E8 | 4E 80 04 21 */	bctrl
/* 814166EC | 48 00 01 14 */	b .L_81416800
.L_814166F0:
/* 814166F0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814166F4 | 40 82 01 0C */	bne .L_81416800
/* 814166F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814166FC | 7F C3 F3 78 */	mr r3, r30
/* 81416700 | 38 80 00 01 */	li r4, 0x1
/* 81416704 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416708 | 7D 89 03 A6 */	mtctr r12
/* 8141670C | 4E 80 04 21 */	bctrl
/* 81416710 | 48 00 00 F0 */	b .L_81416800
.L_81416714:
/* 81416714 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416718 | 40 82 00 1C */	bne .L_81416734
/* 8141671C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416720 | 7F C3 F3 78 */	mr r3, r30
/* 81416724 | 38 80 00 03 */	li r4, 0x3
/* 81416728 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141672C | 7D 89 03 A6 */	mtctr r12
/* 81416730 | 4E 80 04 21 */	bctrl
.L_81416734:
/* 81416734 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81416738 | 40 82 00 C8 */	bne .L_81416800
/* 8141673C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416740 | 7F C3 F3 78 */	mr r3, r30
/* 81416744 | 38 80 00 02 */	li r4, 0x2
/* 81416748 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141674C | 7D 89 03 A6 */	mtctr r12
/* 81416750 | 4E 80 04 21 */	bctrl
/* 81416754 | 48 00 00 AC */	b .L_81416800
.L_81416758:
/* 81416758 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8141675C | 40 82 00 A4 */	bne .L_81416800
/* 81416760 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416764 | 7F C3 F3 78 */	mr r3, r30
/* 81416768 | 38 80 00 02 */	li r4, 0x2
/* 8141676C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416770 | 7D 89 03 A6 */	mtctr r12
/* 81416774 | 4E 80 04 21 */	bctrl
/* 81416778 | 48 00 00 88 */	b .L_81416800
.L_8141677C:
/* 8141677C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81416780 | 40 82 00 1C */	bne .L_8141679C
/* 81416784 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81416788 | 7F C3 F3 78 */	mr r3, r30
/* 8141678C | 38 80 00 0E */	li r4, 0xe
/* 81416790 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81416794 | 7D 89 03 A6 */	mtctr r12
/* 81416798 | 4E 80 04 21 */	bctrl
.L_8141679C:
/* 8141679C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814167A0 | 40 82 00 60 */	bne .L_81416800
/* 814167A4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814167A8 | 7F C3 F3 78 */	mr r3, r30
/* 814167AC | 38 80 00 01 */	li r4, 0x1
/* 814167B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814167B4 | 7D 89 03 A6 */	mtctr r12
/* 814167B8 | 4E 80 04 21 */	bctrl
/* 814167BC | 48 00 00 44 */	b .L_81416800
.L_814167C0:
/* 814167C0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814167C4 | 40 82 00 1C */	bne .L_814167E0
/* 814167C8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814167CC | 7F C3 F3 78 */	mr r3, r30
/* 814167D0 | 38 80 00 03 */	li r4, 0x3
/* 814167D4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814167D8 | 7D 89 03 A6 */	mtctr r12
/* 814167DC | 4E 80 04 21 */	bctrl
.L_814167E0:
/* 814167E0 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 814167E4 | 40 82 00 1C */	bne .L_81416800
/* 814167E8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814167EC | 7F C3 F3 78 */	mr r3, r30
/* 814167F0 | 38 80 00 02 */	li r4, 0x2
/* 814167F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814167F8 | 7D 89 03 A6 */	mtctr r12
/* 814167FC | 4E 80 04 21 */	bctrl
.L_81416800:
/* 81416800 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416804 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416808 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141680C | 7C 08 03 A6 */	mtlr r0
/* 81416810 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416814 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x6640 | 0x81416818 | size: 0x34
# textinput::keyboard::pctype::UIModifierButton::UIModifierButton(unsigned long, textinput::keyboard::pctype::LayoutByNW4R*, textinput::keyboard::pctype::UIObj::Listener*)
.fn __ct__Q49textinput8keyboard6pctype16UIModifierButtonFUlPQ49textinput8keyboard6pctype12LayoutByNW4RPQ59textinput8keyboard6pctype5UIObj8Listener, global
/* 81416818 | 3C E0 81 66 */	lis r7, __vt__Q49textinput8keyboard6pctype16UIModifierButton@ha
/* 8141681C | 38 00 00 00 */	li r0, 0x0
/* 81416820 | 38 E7 BD A8 */	addi r7, r7, __vt__Q49textinput8keyboard6pctype16UIModifierButton@l
/* 81416824 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81416828 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8141682C | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 81416830 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 81416834 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 81416838 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8141683C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81416840 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81416844 | 98 03 00 20 */	stb r0, 0x20(r3)
/* 81416848 | 4E 80 00 20 */	blr
.endfn __ct__Q49textinput8keyboard6pctype16UIModifierButtonFUlPQ49textinput8keyboard6pctype12LayoutByNW4RPQ59textinput8keyboard6pctype5UIObj8Listener

# .text:0x6674 | 0x8141684C | size: 0x8
# textinput::nw4rmanager::Layout::getPaneManager()
.fn getPaneManager__Q39textinput11nw4rmanager6LayoutFv, global
/* 8141684C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81416850 | 4E 80 00 20 */	blr
.endfn getPaneManager__Q39textinput11nw4rmanager6LayoutFv

# .text:0x667C | 0x81416854 | size: 0x8
# textinput::gui::GUIComponent::setTriggerTarget(bool)
.fn setTriggerTarget__Q39textinput3gui12GUIComponentFb, global
/* 81416854 | 98 83 00 90 */	stb r4, 0x90(r3)
/* 81416858 | 4E 80 00 20 */	blr
.endfn setTriggerTarget__Q39textinput3gui12GUIComponentFb

# .text:0x6684 | 0x8141685C | size: 0x130
# textinput::keyboard::pctype::UIModifierButton::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q49textinput8keyboard6pctype16UIModifierButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8141685C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416860 | 7C 08 02 A6 */	mflr r0
/* 81416864 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416868 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141686C | 3F E0 81 66 */	lis r31, lbl_8165B680@ha
/* 81416870 | 3B FF B6 80 */	addi r31, r31, lbl_8165B680@l
/* 81416874 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416878 | 7C 7E 1B 78 */	mr r30, r3
/* 8141687C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81416880 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81416884 | 40 82 00 0C */	bne .L_81416890
/* 81416888 | 3F E0 81 66 */	lis r31, lbl_8165B668@ha
/* 8141688C | 3B FF B6 68 */	addi r31, r31, lbl_8165B668@l
.L_81416890:
/* 81416890 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81416894 | 41 82 00 4C */	beq .L_814168E0
/* 81416898 | 40 80 00 10 */	bge .L_814168A8
/* 8141689C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814168A0 | 40 80 00 78 */	bge .L_81416918
/* 814168A4 | 48 00 00 D0 */	b .L_81416974
.L_814168A8:
/* 814168A8 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 814168AC | 41 82 00 08 */	beq .L_814168B4
/* 814168B0 | 48 00 00 C4 */	b .L_81416974
.L_814168B4:
/* 814168B4 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 814168B8 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 814168BC | 41 82 00 B8 */	beq .L_81416974
/* 814168C0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814168C4 | 7F E5 FB 78 */	mr r5, r31
/* 814168C8 | 38 80 00 04 */	li r4, 0x4
/* 814168CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814168D0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814168D4 | 7D 89 03 A6 */	mtctr r12
/* 814168D8 | 4E 80 04 21 */	bctrl
/* 814168DC | 48 00 00 98 */	b .L_81416974
.L_814168E0:
/* 814168E0 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 814168E4 | 38 80 00 02 */	li r4, 0x2
/* 814168E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814168EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814168F0 | 7D 89 03 A6 */	mtctr r12
/* 814168F4 | 4E 80 04 21 */	bctrl
/* 814168F8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814168FC | 7F E5 FB 78 */	mr r5, r31
/* 81416900 | 38 80 00 01 */	li r4, 0x1
/* 81416904 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416908 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8141690C | 7D 89 03 A6 */	mtctr r12
/* 81416910 | 4E 80 04 21 */	bctrl
/* 81416914 | 48 00 00 60 */	b .L_81416974
.L_81416918:
/* 81416918 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8141691C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81416920 | 41 82 00 20 */	beq .L_81416940
/* 81416924 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416928 | 7F C4 F3 78 */	mr r4, r30
/* 8141692C | 38 A0 00 00 */	li r5, 0x0
/* 81416930 | 38 C0 00 04 */	li r6, 0x4
/* 81416934 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81416938 | 7D 89 03 A6 */	mtctr r12
/* 8141693C | 4E 80 04 21 */	bctrl
.L_81416940:
/* 81416940 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81416944 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81416948 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8141694C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81416950 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81416954 | 7D 89 03 A6 */	mtctr r12
/* 81416958 | 4E 80 04 21 */	bctrl
/* 8141695C | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 81416960 | 38 80 00 01 */	li r4, 0x1
/* 81416964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416968 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141696C | 7D 89 03 A6 */	mtctr r12
/* 81416970 | 4E 80 04 21 */	bctrl
.L_81416974:
/* 81416974 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416978 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141697C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416980 | 7C 08 03 A6 */	mtlr r0
/* 81416984 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416988 | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q49textinput8keyboard6pctype16UIModifierButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x67B4 | 0x8141698C | size: 0x70
# textinput::keyboard::pctype::UIModePanel::UIModePanel(unsigned long, textinput::keyboard::pctype::LayoutByNW4R*, textinput::keyboard::pctype::UIObj::Listener*)
.fn __ct__Q49textinput8keyboard6pctype11UIModePanelFUlPQ49textinput8keyboard6pctype12LayoutByNW4RPQ59textinput8keyboard6pctype5UIObj8Listener, global
/* 8141698C | 3C E0 81 66 */	lis r7, __vt__Q49textinput8keyboard6pctype11UIModePanel@ha
/* 81416990 | 38 00 00 00 */	li r0, 0x0
/* 81416994 | 38 E7 BD 8C */	addi r7, r7, __vt__Q49textinput8keyboard6pctype11UIModePanel@l
/* 81416998 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8141699C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 814169A0 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 814169A4 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 814169A8 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 814169AC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814169B0 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 814169B4 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 814169B8 | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 814169BC | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814169C0 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 814169C4 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 814169C8 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814169CC | 90 03 00 30 */	stw r0, 0x30(r3)
/* 814169D0 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 814169D4 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814169D8 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 814169DC | 90 03 00 48 */	stw r0, 0x48(r3)
/* 814169E0 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814169E4 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 814169E8 | 90 03 00 4C */	stw r0, 0x4c(r3)
/* 814169EC | 90 03 00 28 */	stw r0, 0x28(r3)
/* 814169F0 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 814169F4 | 90 03 00 50 */	stw r0, 0x50(r3)
/* 814169F8 | 4E 80 00 20 */	blr
.endfn __ct__Q49textinput8keyboard6pctype11UIModePanelFUlPQ49textinput8keyboard6pctype12LayoutByNW4RPQ59textinput8keyboard6pctype5UIObj8Listener

# .text:0x6824 | 0x814169FC | size: 0x270
# textinput::keyboard::pctype::UIModePanel::Create(textinput::nw4rmanager::Layout*)
.fn Create__Q49textinput8keyboard6pctype11UIModePanelFPQ39textinput11nw4rmanager6Layout, global
/* 814169FC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81416A00 | 7C 08 02 A6 */	mflr r0
/* 81416A04 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81416A08 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81416A0C | 48 1E 2A A9 */	bl _savegpr_24
/* 81416A10 | 7C 9F 23 78 */	mr r31, r4
/* 81416A14 | 3C 80 81 61 */	lis r4, lbl_81614A98@ha
/* 81416A18 | 87 84 4A 98 */	lwzu r28, lbl_81614A98@l(r4)
/* 81416A1C | 3D 00 81 61 */	lis r8, lbl_81614AAC@ha
/* 81416A20 | 84 E8 4A AC */	lwzu r7, lbl_81614AAC@l(r8)
/* 81416A24 | 3F 60 81 66 */	lis r27, lbl_81658D90@ha
/* 81416A28 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416A2C | 7C 7E 1B 78 */	mr r30, r3
/* 81416A30 | 83 A4 00 04 */	lwz r29, 0x4(r4)
/* 81416A34 | 7F E3 FB 78 */	mr r3, r31
/* 81416A38 | 81 64 00 08 */	lwz r11, 0x8(r4)
/* 81416A3C | 3B 7B 8D 90 */	addi r27, r27, lbl_81658D90@l
/* 81416A40 | 81 44 00 0C */	lwz r10, 0xc(r4)
/* 81416A44 | 81 24 00 10 */	lwz r9, 0x10(r4)
/* 81416A48 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 81416A4C | 80 A8 00 08 */	lwz r5, 0x8(r8)
/* 81416A50 | 80 88 00 0C */	lwz r4, 0xc(r8)
/* 81416A54 | 80 08 00 10 */	lwz r0, 0x10(r8)
/* 81416A58 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81416A5C | 93 81 00 1C */	stw r28, 0x1c(r1)
/* 81416A60 | 93 A1 00 20 */	stw r29, 0x20(r1)
/* 81416A64 | 91 61 00 24 */	stw r11, 0x24(r1)
/* 81416A68 | 91 41 00 28 */	stw r10, 0x28(r1)
/* 81416A6C | 91 21 00 2C */	stw r9, 0x2c(r1)
/* 81416A70 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 81416A74 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81416A78 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 81416A7C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81416A80 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81416A84 | 7D 89 03 A6 */	mtctr r12
/* 81416A88 | 4E 80 04 21 */	bctrl
/* 81416A8C | 7C 79 1B 78 */	mr r25, r3
/* 81416A90 | 7F DD F3 78 */	mr r29, r30
/* 81416A94 | 3B 81 00 1C */	addi r28, r1, 0x1c
/* 81416A98 | 3B 41 00 08 */	addi r26, r1, 0x8
/* 81416A9C | 3B 00 00 00 */	li r24, 0x0
.L_81416AA0:
/* 81416AA0 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81416AA4 | 7F 23 CB 78 */	mr r3, r25
/* 81416AA8 | 48 03 03 21 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81416AAC | 90 7D 00 18 */	stw r3, 0x18(r29)
/* 81416AB0 | 7F 23 CB 78 */	mr r3, r25
/* 81416AB4 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 81416AB8 | 48 03 03 11 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81416ABC | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 81416AC0 | 7F E3 FB 78 */	mr r3, r31
/* 81416AC4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81416AC8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416ACC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81416AD0 | 7D 89 03 A6 */	mtctr r12
/* 81416AD4 | 4E 80 04 21 */	bctrl
/* 81416AD8 | 90 7D 00 40 */	stw r3, 0x40(r29)
/* 81416ADC | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81416AE0 | 28 18 00 05 */	cmplwi r24, 0x5
/* 81416AE4 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81416AE8 | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 81416AEC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81416AF0 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81416AF4 | 93 C3 00 98 */	stw r30, 0x98(r3)
/* 81416AF8 | 41 80 FF A8 */	blt .L_81416AA0
/* 81416AFC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81416B00 | 7F E3 FB 78 */	mr r3, r31
/* 81416B04 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81416B08 | 7D 89 03 A6 */	mtctr r12
/* 81416B0C | 4E 80 04 21 */	bctrl
/* 81416B10 | 83 83 00 10 */	lwz r28, 0x10(r3)
/* 81416B14 | 38 9B 2D 54 */	addi r4, r27, 0x2d54
/* 81416B18 | 38 A0 00 01 */	li r5, 0x1
/* 81416B1C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416B20 | 7F 83 E3 78 */	mr r3, r28
/* 81416B24 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416B28 | 7D 89 03 A6 */	mtctr r12
/* 81416B2C | 4E 80 04 21 */	bctrl
/* 81416B30 | 90 7E 00 54 */	stw r3, 0x54(r30)
/* 81416B34 | 7F 83 E3 78 */	mr r3, r28
/* 81416B38 | 38 9B 2D 64 */	addi r4, r27, 0x2d64
/* 81416B3C | 38 A0 00 01 */	li r5, 0x1
/* 81416B40 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416B44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416B48 | 7D 89 03 A6 */	mtctr r12
/* 81416B4C | 4E 80 04 21 */	bctrl
/* 81416B50 | 90 7E 00 58 */	stw r3, 0x58(r30)
/* 81416B54 | 7F 83 E3 78 */	mr r3, r28
/* 81416B58 | 38 9B 2D 78 */	addi r4, r27, 0x2d78
/* 81416B5C | 38 A0 00 01 */	li r5, 0x1
/* 81416B60 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416B64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416B68 | 7D 89 03 A6 */	mtctr r12
/* 81416B6C | 4E 80 04 21 */	bctrl
/* 81416B70 | 90 7E 00 5C */	stw r3, 0x5c(r30)
/* 81416B74 | 7F 83 E3 78 */	mr r3, r28
/* 81416B78 | 38 9B 2D 54 */	addi r4, r27, 0x2d54
/* 81416B7C | 38 A0 00 01 */	li r5, 0x1
/* 81416B80 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416B84 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416B88 | 7D 89 03 A6 */	mtctr r12
/* 81416B8C | 4E 80 04 21 */	bctrl
/* 81416B90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416B94 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81416B98 | 7D 89 03 A6 */	mtctr r12
/* 81416B9C | 4E 80 04 21 */	bctrl
/* 81416BA0 | 38 9E 00 A0 */	addi r4, r30, 0xa0
/* 81416BA4 | 38 A0 00 00 */	li r5, 0x0
/* 81416BA8 | 48 11 11 85 */	bl fn_81527D2C
/* 81416BAC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416BB0 | 7F 83 E3 78 */	mr r3, r28
/* 81416BB4 | 38 9B 2D 64 */	addi r4, r27, 0x2d64
/* 81416BB8 | 38 A0 00 01 */	li r5, 0x1
/* 81416BBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416BC0 | 7D 89 03 A6 */	mtctr r12
/* 81416BC4 | 4E 80 04 21 */	bctrl
/* 81416BC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416BCC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81416BD0 | 7D 89 03 A6 */	mtctr r12
/* 81416BD4 | 4E 80 04 21 */	bctrl
/* 81416BD8 | 38 9E 00 C0 */	addi r4, r30, 0xc0
/* 81416BDC | 38 A0 00 00 */	li r5, 0x0
/* 81416BE0 | 48 11 11 4D */	bl fn_81527D2C
/* 81416BE4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416BE8 | 7F 83 E3 78 */	mr r3, r28
/* 81416BEC | 38 9B 2D 88 */	addi r4, r27, 0x2d88
/* 81416BF0 | 38 A0 00 01 */	li r5, 0x1
/* 81416BF4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416BF8 | 7D 89 03 A6 */	mtctr r12
/* 81416BFC | 4E 80 04 21 */	bctrl
/* 81416C00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416C04 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81416C08 | 7D 89 03 A6 */	mtctr r12
/* 81416C0C | 4E 80 04 21 */	bctrl
/* 81416C10 | 38 9E 00 60 */	addi r4, r30, 0x60
/* 81416C14 | 38 A0 00 00 */	li r5, 0x0
/* 81416C18 | 48 11 11 15 */	bl fn_81527D2C
/* 81416C1C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81416C20 | 7F 83 E3 78 */	mr r3, r28
/* 81416C24 | 38 9B 2D 98 */	addi r4, r27, 0x2d98
/* 81416C28 | 38 A0 00 01 */	li r5, 0x1
/* 81416C2C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81416C30 | 7D 89 03 A6 */	mtctr r12
/* 81416C34 | 4E 80 04 21 */	bctrl
/* 81416C38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416C3C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81416C40 | 7D 89 03 A6 */	mtctr r12
/* 81416C44 | 4E 80 04 21 */	bctrl
/* 81416C48 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 81416C4C | 38 A0 00 00 */	li r5, 0x0
/* 81416C50 | 48 11 10 DD */	bl fn_81527D2C
/* 81416C54 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81416C58 | 48 1E 28 A9 */	bl _restgpr_24
/* 81416C5C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81416C60 | 7C 08 03 A6 */	mtlr r0
/* 81416C64 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81416C68 | 4E 80 00 20 */	blr
.endfn Create__Q49textinput8keyboard6pctype11UIModePanelFPQ39textinput11nw4rmanager6Layout

# .text:0x6A94 | 0x81416C6C | size: 0x4
# textinput::keyboard::pctype::UIModePanel::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q49textinput8keyboard6pctype11UIModePanelFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81416C6C | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q49textinput8keyboard6pctype11UIModePanelFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x6A98 | 0x81416C70 | size: 0x4
# textinput::keyboard::KeyboardBase::update()
.fn update__Q39textinput8keyboard12KeyboardBaseFv, global
/* 81416C70 | 4E 80 00 20 */	blr
.endfn update__Q39textinput8keyboard12KeyboardBaseFv

# .text:0x6A9C | 0x81416C74 | size: 0x8
# textinput::nw4rmanager::Layout::getAnmPaneList()
.fn getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv, global
/* 81416C74 | 38 63 00 6C */	addi r3, r3, 0x6c
/* 81416C78 | 4E 80 00 20 */	blr
.endfn getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv

# .text:0x6AA4 | 0x81416C7C | size: 0x8
# textinput::nw4rmanager::Layout::setAnimOn(bool)
.fn setAnimOn__Q39textinput11nw4rmanager6LayoutFb, global
/* 81416C7C | 98 83 00 88 */	stb r4, 0x88(r3)
/* 81416C80 | 4E 80 00 20 */	blr
.endfn setAnimOn__Q39textinput11nw4rmanager6LayoutFb

# .text:0x6AAC | 0x81416C84 | size: 0x6C
# textinput::nw4rmanager::AnmPane::searchAnimation(unsigned long)
.fn searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl, global
/* 81416C84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416C88 | 7C 08 02 A6 */	mflr r0
/* 81416C8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416C90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81416C94 | 7C 9F 23 78 */	mr r31, r4
/* 81416C98 | 38 80 00 00 */	li r4, 0x0
/* 81416C9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416CA0 | 7C 7E 1B 78 */	mr r30, r3
/* 81416CA4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81416CA8 | 48 0F B6 35 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81416CAC | 48 00 00 20 */	b .L_81416CCC
.L_81416CB0:
/* 81416CB0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81416CB4 | 7C 00 F8 40 */	cmplw r0, r31
/* 81416CB8 | 40 82 00 08 */	bne .L_81416CC0
/* 81416CBC | 48 00 00 1C */	b .L_81416CD8
.L_81416CC0:
/* 81416CC0 | 7C 64 1B 78 */	mr r4, r3
/* 81416CC4 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81416CC8 | 48 0F B6 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
.L_81416CCC:
/* 81416CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81416CD0 | 40 82 FF E0 */	bne .L_81416CB0
/* 81416CD4 | 38 60 00 00 */	li r3, 0x0
.L_81416CD8:
/* 81416CD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416CDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416CE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416CE4 | 7C 08 03 A6 */	mtlr r0
/* 81416CE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416CEC | 4E 80 00 20 */	blr
.endfn searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl

# .text:0x6B18 | 0x81416CF0 | size: 0x14
# textinput::nw4rmanager::AnmPane::isInAnimation()
.fn isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv, global
/* 81416CF0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81416CF4 | 7C 03 00 D0 */	neg r0, r3
/* 81416CF8 | 7C 00 1B 78 */	or r0, r0, r3
/* 81416CFC | 54 03 0F FE */	srwi r3, r0, 31
/* 81416D00 | 4E 80 00 20 */	blr
.endfn isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv

# .text:0x6B2C | 0x81416D04 | size: 0x8
# textinput::gui::EventHandler::getLatestEventCtrlNo()
.fn getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv, global
/* 81416D04 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81416D08 | 4E 80 00 20 */	blr
.endfn getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv

# .text:0x6B34 | 0x81416D0C | size: 0x8
# textinput::gui::EventHandler::setLatestEventCtrlNo(int)
.fn setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi, global
/* 81416D0C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81416D10 | 4E 80 00 20 */	blr
.endfn setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi

# .text:0x6B3C | 0x81416D14 | size: 0x38
# textinput::keyboard::pctype::Base::getAIUInputMode() const
.fn getAIUInputMode__Q49textinput8keyboard6pctype4BaseCFv, global
/* 81416D14 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81416D18 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81416D1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81416D20 | 41 82 00 1C */	beq .L_81416D3C
/* 81416D24 | 40 80 00 20 */	bge .L_81416D44
/* 81416D28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81416D2C | 40 80 00 08 */	bge .L_81416D34
/* 81416D30 | 48 00 00 14 */	b .L_81416D44
.L_81416D34:
/* 81416D34 | 38 60 00 06 */	li r3, 0x6
/* 81416D38 | 4E 80 00 20 */	blr
.L_81416D3C:
/* 81416D3C | 38 60 00 07 */	li r3, 0x7
/* 81416D40 | 4E 80 00 20 */	blr
.L_81416D44:
/* 81416D44 | 38 60 00 06 */	li r3, 0x6
/* 81416D48 | 4E 80 00 20 */	blr
.endfn getAIUInputMode__Q49textinput8keyboard6pctype4BaseCFv

# .text:0x6B74 | 0x81416D4C | size: 0x8
# textinput::keyboard::pctype::Base::getABCInputMode() const
.fn getABCInputMode__Q49textinput8keyboard6pctype4BaseCFv, global
/* 81416D4C | 38 60 00 00 */	li r3, 0x0
/* 81416D50 | 4E 80 00 20 */	blr
.endfn getABCInputMode__Q49textinput8keyboard6pctype4BaseCFv

# .text:0x6B7C | 0x81416D54 | size: 0x8
# textinput::keyboard::pctype::Base::getState()
.fn getState__Q49textinput8keyboard6pctype4BaseFv, global
/* 81416D54 | 38 63 00 14 */	addi r3, r3, 0x14
/* 81416D58 | 4E 80 00 20 */	blr
.endfn getState__Q49textinput8keyboard6pctype4BaseFv

# .text:0x6B84 | 0x81416D5C | size: 0x8
# textinput::keyboard::pctype::Base::getType()
.fn getType__Q49textinput8keyboard6pctype4BaseFv, global
/* 81416D5C | 38 60 00 00 */	li r3, 0x0
/* 81416D60 | 4E 80 00 20 */	blr
.endfn getType__Q49textinput8keyboard6pctype4BaseFv

# .text:0x6B8C | 0x81416D64 | size: 0x1C
# textinput::keyboard::pctype::LayoutByNW4R::setInputModeCK(unsigned long)
.fn setInputModeCK__Q49textinput8keyboard6pctype12LayoutByNW4RFUl, global
/* 81416D64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416D68 | 7C 85 23 78 */	mr r5, r4
/* 81416D6C | 38 80 00 01 */	li r4, 0x1
/* 81416D70 | 38 C0 00 00 */	li r6, 0x0
/* 81416D74 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81416D78 | 7D 89 03 A6 */	mtctr r12
/* 81416D7C | 4E 80 04 20 */	bctr
.endfn setInputModeCK__Q49textinput8keyboard6pctype12LayoutByNW4RFUl

# .text:0x6BA8 | 0x81416D80 | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::setSignWindow(textinput::keyboard::signwindow::LayoutByNW4R*)
.fn setSignWindow__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard10signwindow12LayoutByNW4R, global
/* 81416D80 | 90 83 00 F8 */	stw r4, 0xf8(r3)
/* 81416D84 | 4E 80 00 20 */	blr
.endfn setSignWindow__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard10signwindow12LayoutByNW4R

# .text:0x6BB0 | 0x81416D88 | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::setPredictLanguageDialog(textinput::predictlang::LayoutByNW4R*)
.fn setPredictLanguageDialog__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ39textinput11predictlang12LayoutByNW4R, global
/* 81416D88 | 90 83 00 F4 */	stw r4, 0xf4(r3)
/* 81416D8C | 4E 80 00 20 */	blr
.endfn setPredictLanguageDialog__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ39textinput11predictlang12LayoutByNW4R

# .text:0x6BB8 | 0x81416D90 | size: 0xC
# textinput::keyboard::pctype::AnmPane::init()
.fn init__Q49textinput8keyboard6pctype7AnmPaneFv, global
/* 81416D90 | 38 00 00 00 */	li r0, 0x0
/* 81416D94 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81416D98 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard6pctype7AnmPaneFv

# .text:0x6BC4 | 0x81416D9C | size: 0x5C
# textinput::keyboard::pctype::OnOffButtonAnmPane::~OnOffButtonAnmPane()
.fn __dt__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFv, global
/* 81416D9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416DA0 | 7C 08 02 A6 */	mflr r0
/* 81416DA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81416DA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416DAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81416DB0 | 7C 9F 23 78 */	mr r31, r4
/* 81416DB4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416DB8 | 7C 7E 1B 78 */	mr r30, r3
/* 81416DBC | 41 82 00 20 */	beq .L_81416DDC
/* 81416DC0 | 41 82 00 0C */	beq .L_81416DCC
/* 81416DC4 | 38 80 00 00 */	li r4, 0x0
/* 81416DC8 | 48 02 01 59 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81416DCC:
/* 81416DCC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81416DD0 | 40 81 00 0C */	ble .L_81416DDC
/* 81416DD4 | 7F C3 F3 78 */	mr r3, r30
/* 81416DD8 | 48 1E 13 0D */	bl __dl__FPv
.L_81416DDC:
/* 81416DDC | 7F C3 F3 78 */	mr r3, r30
/* 81416DE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416DE4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416DE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416DEC | 7C 08 03 A6 */	mtlr r0
/* 81416DF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416DF4 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFv

# .text:0x6C20 | 0x81416DF8 | size: 0x5C
# textinput::keyboard::pctype::ToggleButtonAnmPane::~ToggleButtonAnmPane()
.fn __dt__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFv, global
/* 81416DF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416DFC | 7C 08 02 A6 */	mflr r0
/* 81416E00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81416E04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416E08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81416E0C | 7C 9F 23 78 */	mr r31, r4
/* 81416E10 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416E14 | 7C 7E 1B 78 */	mr r30, r3
/* 81416E18 | 41 82 00 20 */	beq .L_81416E38
/* 81416E1C | 41 82 00 0C */	beq .L_81416E28
/* 81416E20 | 38 80 00 00 */	li r4, 0x0
/* 81416E24 | 48 02 00 FD */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81416E28:
/* 81416E28 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81416E2C | 40 81 00 0C */	ble .L_81416E38
/* 81416E30 | 7F C3 F3 78 */	mr r3, r30
/* 81416E34 | 48 1E 12 B1 */	bl __dl__FPv
.L_81416E38:
/* 81416E38 | 7F C3 F3 78 */	mr r3, r30
/* 81416E3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416E40 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416E44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416E48 | 7C 08 03 A6 */	mtlr r0
/* 81416E4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416E50 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFv

# .text:0x6C7C | 0x81416E54 | size: 0x5C
# textinput::keyboard::pctype::ShiftCapsAnmPane::~ShiftCapsAnmPane()
.fn __dt__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFv, global
/* 81416E54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416E58 | 7C 08 02 A6 */	mflr r0
/* 81416E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81416E60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416E64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81416E68 | 7C 9F 23 78 */	mr r31, r4
/* 81416E6C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416E70 | 7C 7E 1B 78 */	mr r30, r3
/* 81416E74 | 41 82 00 20 */	beq .L_81416E94
/* 81416E78 | 41 82 00 0C */	beq .L_81416E84
/* 81416E7C | 38 80 00 00 */	li r4, 0x0
/* 81416E80 | 48 02 00 A1 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81416E84:
/* 81416E84 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81416E88 | 40 81 00 0C */	ble .L_81416E94
/* 81416E8C | 7F C3 F3 78 */	mr r3, r30
/* 81416E90 | 48 1E 12 55 */	bl __dl__FPv
.L_81416E94:
/* 81416E94 | 7F C3 F3 78 */	mr r3, r30
/* 81416E98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416E9C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416EA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416EA4 | 7C 08 03 A6 */	mtlr r0
/* 81416EA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416EAC | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFv

# .text:0x6CD8 | 0x81416EB0 | size: 0x5C
# textinput::keyboard::pctype::NormalButtonAnmPane::~NormalButtonAnmPane()
.fn __dt__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFv, global
/* 81416EB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81416EB4 | 7C 08 02 A6 */	mflr r0
/* 81416EB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81416EBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81416EC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81416EC4 | 7C 9F 23 78 */	mr r31, r4
/* 81416EC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81416ECC | 7C 7E 1B 78 */	mr r30, r3
/* 81416ED0 | 41 82 00 20 */	beq .L_81416EF0
/* 81416ED4 | 41 82 00 0C */	beq .L_81416EE0
/* 81416ED8 | 38 80 00 00 */	li r4, 0x0
/* 81416EDC | 48 02 00 45 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81416EE0:
/* 81416EE0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81416EE4 | 40 81 00 0C */	ble .L_81416EF0
/* 81416EE8 | 7F C3 F3 78 */	mr r3, r30
/* 81416EEC | 48 1E 11 F9 */	bl __dl__FPv
.L_81416EF0:
/* 81416EF0 | 7F C3 F3 78 */	mr r3, r30
/* 81416EF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81416EF8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81416EFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81416F00 | 7C 08 03 A6 */	mtlr r0
/* 81416F04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81416F08 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFv

# .text:0x6D34 | 0x81416F0C | size: 0x10
# textinput::keyboard::pctype::UIObj::onEvent(textinput::gui::GUIComponent&, unsigned long, void*)
.fn onEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui12GUIComponentUlPv, global
/* 81416F0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81416F10 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81416F14 | 7D 89 03 A6 */	mtctr r12
/* 81416F18 | 4E 80 04 20 */	bctr
.endfn onEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui12GUIComponentUlPv

# .text:0x6D44 | 0x81416F1C | size: 0x4
# textinput::keyboard::pctype::UIObj::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81416F1C | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x6D48 | 0x81416F20 | size: 0x8
# textinput::nw4rmanager::TiEventHandler::setEventObserver(textinput::EventObserver*)
.fn setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver, global
/* 81416F20 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81416F24 | 4E 80 00 20 */	blr
.endfn setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver

# .text:0x6D50 | 0x81416F28 | size: 0x4
# textinput::keyboard::pctype::Base::setInputModeCK(unsigned long)
.fn setInputModeCK__Q49textinput8keyboard6pctype4BaseFUl, global
/* 81416F28 | 4E 80 00 20 */	blr
.endfn setInputModeCK__Q49textinput8keyboard6pctype4BaseFUl

# .text:0x6D54 | 0x81416F2C | size: 0x4
# textinput::keyboard::pctype::Base::setInputModeJP(bool, unsigned long, unsigned long)
.fn setInputModeJP__Q49textinput8keyboard6pctype4BaseFbUlUl, global
/* 81416F2C | 4E 80 00 20 */	blr
.endfn setInputModeJP__Q49textinput8keyboard6pctype4BaseFbUlUl

# .text:0x6D58 | 0x81416F30 | size: 0x4
# textinput::gui::EventHandler::onEvent(textinput::gui::GUIComponent&, unsigned long, void*)
.fn onEvent__Q39textinput3gui12EventHandlerFRQ39textinput3gui12GUIComponentUlPv, global
/* 81416F30 | 4E 80 00 20 */	blr
.endfn onEvent__Q39textinput3gui12EventHandlerFRQ39textinput3gui12GUIComponentUlPv

# .text:0x6D5C | 0x81416F34 | size: 0x1B0
.fn "__sinit_\\pckeyboard_cpp", global
/* 81416F34 | 3C 60 81 66 */	lis r3, lbl_816595A0@ha
/* 81416F38 | 80 0D 92 C0 */	lwz r0, lbl_81697300@sda21(r0)
/* 81416F3C | 38 63 95 A0 */	addi r3, r3, lbl_816595A0@l
/* 81416F40 | 90 03 00 4C */	stw r0, 0x4c(r3)
/* 81416F44 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 81416F48 | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 81416F4C | 90 03 01 0C */	stw r0, 0x10c(r3)
/* 81416F50 | 90 03 01 4C */	stw r0, 0x14c(r3)
/* 81416F54 | 90 03 01 8C */	stw r0, 0x18c(r3)
/* 81416F58 | 90 03 01 CC */	stw r0, 0x1cc(r3)
/* 81416F5C | 90 03 02 0C */	stw r0, 0x20c(r3)
/* 81416F60 | 90 03 02 4C */	stw r0, 0x24c(r3)
/* 81416F64 | 90 03 02 8C */	stw r0, 0x28c(r3)
/* 81416F68 | 90 03 02 CC */	stw r0, 0x2cc(r3)
/* 81416F6C | 90 03 03 0C */	stw r0, 0x30c(r3)
/* 81416F70 | 90 03 03 4C */	stw r0, 0x34c(r3)
/* 81416F74 | 90 03 03 8C */	stw r0, 0x38c(r3)
/* 81416F78 | 90 03 03 CC */	stw r0, 0x3cc(r3)
/* 81416F7C | 90 03 04 0C */	stw r0, 0x40c(r3)
/* 81416F80 | 90 03 04 4C */	stw r0, 0x44c(r3)
/* 81416F84 | 90 03 04 8C */	stw r0, 0x48c(r3)
/* 81416F88 | 90 03 04 CC */	stw r0, 0x4cc(r3)
/* 81416F8C | 90 03 05 0C */	stw r0, 0x50c(r3)
/* 81416F90 | 90 03 05 4C */	stw r0, 0x54c(r3)
/* 81416F94 | 90 03 05 8C */	stw r0, 0x58c(r3)
/* 81416F98 | 90 03 05 CC */	stw r0, 0x5cc(r3)
/* 81416F9C | 90 03 06 0C */	stw r0, 0x60c(r3)
/* 81416FA0 | 90 03 06 4C */	stw r0, 0x64c(r3)
/* 81416FA4 | 90 03 06 8C */	stw r0, 0x68c(r3)
/* 81416FA8 | 90 03 06 CC */	stw r0, 0x6cc(r3)
/* 81416FAC | 90 03 07 0C */	stw r0, 0x70c(r3)
/* 81416FB0 | 90 03 07 4C */	stw r0, 0x74c(r3)
/* 81416FB4 | 90 03 07 8C */	stw r0, 0x78c(r3)
/* 81416FB8 | 90 03 07 CC */	stw r0, 0x7cc(r3)
/* 81416FBC | 90 03 08 0C */	stw r0, 0x80c(r3)
/* 81416FC0 | 90 03 08 4C */	stw r0, 0x84c(r3)
/* 81416FC4 | 90 03 08 8C */	stw r0, 0x88c(r3)
/* 81416FC8 | 90 03 08 CC */	stw r0, 0x8cc(r3)
/* 81416FCC | 90 03 09 0C */	stw r0, 0x90c(r3)
/* 81416FD0 | 90 03 09 4C */	stw r0, 0x94c(r3)
/* 81416FD4 | 90 03 09 8C */	stw r0, 0x98c(r3)
/* 81416FD8 | 90 03 09 CC */	stw r0, 0x9cc(r3)
/* 81416FDC | 90 03 0A 0C */	stw r0, 0xa0c(r3)
/* 81416FE0 | 90 03 0A 4C */	stw r0, 0xa4c(r3)
/* 81416FE4 | 90 03 0A 8C */	stw r0, 0xa8c(r3)
/* 81416FE8 | 90 03 0A CC */	stw r0, 0xacc(r3)
/* 81416FEC | 90 03 0B 0C */	stw r0, 0xb0c(r3)
/* 81416FF0 | 90 03 0B 4C */	stw r0, 0xb4c(r3)
/* 81416FF4 | 90 03 0B 8C */	stw r0, 0xb8c(r3)
/* 81416FF8 | 90 03 0B CC */	stw r0, 0xbcc(r3)
/* 81416FFC | 90 03 0C 0C */	stw r0, 0xc0c(r3)
/* 81417000 | 90 03 0C 4C */	stw r0, 0xc4c(r3)
/* 81417004 | 90 03 0D CC */	stw r0, 0xdcc(r3)
/* 81417008 | 90 03 0E 0C */	stw r0, 0xe0c(r3)
/* 8141700C | 90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 81417010 | 90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 81417014 | 90 03 0E CC */	stw r0, 0xecc(r3)
/* 81417018 | 90 03 0F 0C */	stw r0, 0xf0c(r3)
/* 8141701C | 90 03 0F 4C */	stw r0, 0xf4c(r3)
/* 81417020 | 90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 81417024 | 90 03 0F CC */	stw r0, 0xfcc(r3)
/* 81417028 | 90 03 10 0C */	stw r0, 0x100c(r3)
/* 8141702C | 90 03 10 4C */	stw r0, 0x104c(r3)
/* 81417030 | 90 03 10 8C */	stw r0, 0x108c(r3)
/* 81417034 | 90 03 10 CC */	stw r0, 0x10cc(r3)
/* 81417038 | 90 03 11 0C */	stw r0, 0x110c(r3)
/* 8141703C | 90 03 11 4C */	stw r0, 0x114c(r3)
/* 81417040 | 90 03 11 8C */	stw r0, 0x118c(r3)
/* 81417044 | 90 03 11 CC */	stw r0, 0x11cc(r3)
/* 81417048 | 90 03 12 0C */	stw r0, 0x120c(r3)
/* 8141704C | 90 03 12 4C */	stw r0, 0x124c(r3)
/* 81417050 | 90 03 12 8C */	stw r0, 0x128c(r3)
/* 81417054 | 90 03 12 CC */	stw r0, 0x12cc(r3)
/* 81417058 | 90 03 13 0C */	stw r0, 0x130c(r3)
/* 8141705C | 90 03 13 4C */	stw r0, 0x134c(r3)
/* 81417060 | 90 03 13 8C */	stw r0, 0x138c(r3)
/* 81417064 | 90 03 13 CC */	stw r0, 0x13cc(r3)
/* 81417068 | 90 03 14 0C */	stw r0, 0x140c(r3)
/* 8141706C | 90 03 14 4C */	stw r0, 0x144c(r3)
/* 81417070 | 90 03 14 8C */	stw r0, 0x148c(r3)
/* 81417074 | 90 03 14 CC */	stw r0, 0x14cc(r3)
/* 81417078 | 90 03 15 0C */	stw r0, 0x150c(r3)
/* 8141707C | 90 03 15 4C */	stw r0, 0x154c(r3)
/* 81417080 | 90 03 15 8C */	stw r0, 0x158c(r3)
/* 81417084 | 90 03 15 CC */	stw r0, 0x15cc(r3)
/* 81417088 | 90 03 16 0C */	stw r0, 0x160c(r3)
/* 8141708C | 90 03 16 4C */	stw r0, 0x164c(r3)
/* 81417090 | 90 03 16 8C */	stw r0, 0x168c(r3)
/* 81417094 | 90 03 16 CC */	stw r0, 0x16cc(r3)
/* 81417098 | 90 03 17 0C */	stw r0, 0x170c(r3)
/* 8141709C | 90 03 17 4C */	stw r0, 0x174c(r3)
/* 814170A0 | 90 03 17 8C */	stw r0, 0x178c(r3)
/* 814170A4 | 90 03 17 CC */	stw r0, 0x17cc(r3)
/* 814170A8 | 90 03 18 0C */	stw r0, 0x180c(r3)
/* 814170AC | 90 03 18 4C */	stw r0, 0x184c(r3)
/* 814170B0 | 90 03 18 8C */	stw r0, 0x188c(r3)
/* 814170B4 | 90 03 18 CC */	stw r0, 0x18cc(r3)
/* 814170B8 | 90 03 19 0C */	stw r0, 0x190c(r3)
/* 814170BC | 90 03 19 4C */	stw r0, 0x194c(r3)
/* 814170C0 | 90 03 19 8C */	stw r0, 0x198c(r3)
/* 814170C4 | 90 03 19 CC */	stw r0, 0x19cc(r3)
/* 814170C8 | 90 03 1A 0C */	stw r0, 0x1a0c(r3)
/* 814170CC | 90 03 1A 4C */	stw r0, 0x1a4c(r3)
/* 814170D0 | 90 03 1A 8C */	stw r0, 0x1a8c(r3)
/* 814170D4 | 90 03 1A CC */	stw r0, 0x1acc(r3)
/* 814170D8 | 90 03 1B 0C */	stw r0, 0x1b0c(r3)
/* 814170DC | 90 03 1B 4C */	stw r0, 0x1b4c(r3)
/* 814170E0 | 4E 80 00 20 */	blr
.endfn "__sinit_\\pckeyboard_cpp"

# .text:0x6F0C | 0x814170E4 | size: 0x8
.fn "@68@__dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv", global
/* 814170E4 | 38 63 FF BC */	subi r3, r3, 0x44
/* 814170E8 | 4B FF AB 44 */	b __dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv
.endfn "@68@__dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv"

# .text:0x6F14 | 0x814170EC | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::@68@updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn "@68@updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv", global
/* 814170EC | 38 63 FF BC */	subi r3, r3, 0x44
/* 814170F0 | 4B FF DE 0C */	b updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv
.endfn "@68@updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv"

# .text:0x6F1C | 0x814170F4 | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::@68@updateInput(textinput::input::HKBManager&)
.fn "@68@updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager", global
/* 814170F4 | 38 63 FF BC */	subi r3, r3, 0x44
/* 814170F8 | 4B FF E0 34 */	b updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager
.endfn "@68@updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager"

# .text:0x6F24 | 0x814170FC | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::@68@calc()
.fn "@68@calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv", global
/* 814170FC | 38 63 FF BC */	subi r3, r3, 0x44
/* 81417100 | 4B FF BE F0 */	b calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv
.endfn "@68@calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv"

# .text:0x6F2C | 0x81417104 | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::@68@draw()
.fn "@68@draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv", global
/* 81417104 | 38 63 FF BC */	subi r3, r3, 0x44
/* 81417108 | 4B FF C0 38 */	b draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv
.endfn "@68@draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv"

# .text:0x6F34 | 0x8141710C | size: 0x8
# textinput::keyboard::pctype::LayoutByNW4R::@68@init()
.fn "@68@init__Q49textinput8keyboard6pctype12LayoutByNW4RFv", global
/* 8141710C | 38 63 FF BC */	subi r3, r3, 0x44
/* 81417110 | 4B FF B3 5C */	b init__Q49textinput8keyboard6pctype12LayoutByNW4RFv
.endfn "@68@init__Q49textinput8keyboard6pctype12LayoutByNW4RFv"

# .text:0x6F3C | 0x81417114 | size: 0x8
.fn "@236@onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5", global
/* 81417114 | 38 63 FF 14 */	subi r3, r3, 0xec
/* 81417118 | 4B FF E8 58 */	b onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5UIObjUlPv
.endfn "@236@onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5"

# 0x8160D1EC..0x8160D1F0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\pckeyboard_cpp"

# 0x81613408..0x81614AC0 | size: 0x16B8
.rodata
.balign 8

# .rodata:0x0 | 0x81613408 | size: 0x5B0
.obj lbl_81613408, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x30000000
	.4byte 0x00000000
	.4byte 0x000000E0
	.4byte 0x00210000
	.4byte 0x0000505F
	.4byte 0x476B6579
	.4byte 0x5F303100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00E1003F
	.4byte 0x304230A2
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x32000000
	.4byte 0x00000000
	.4byte 0x000000E2
	.4byte 0x0026304B
	.4byte 0x30AB505F
	.4byte 0x476B6579
	.4byte 0x5F303300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00E42033
	.4byte 0x305530B5
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x34000000
	.4byte 0x00000000
	.4byte 0x000000E8
	.4byte 0x0027305F
	.4byte 0x30BF505F
	.4byte 0x476B6579
	.4byte 0x5F303500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00E9FF5E
	.4byte 0x306A30CA
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x36000000
	.4byte 0x00000000
	.4byte 0x000000EA
	.4byte 0x003A306F
	.4byte 0x30CF505F
	.4byte 0x476B6579
	.4byte 0x5F303700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00EB003B
	.4byte 0x307E30DE
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x38000000
	.4byte 0x00000000
	.4byte 0x000000EC
	.4byte 0x00403084
	.4byte 0x30E4505F
	.4byte 0x476B6579
	.4byte 0x5F303900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00ED007E
	.4byte 0x308930E9
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x30000000
	.4byte 0x00000000
	.4byte 0x000000EE
	.4byte 0x005F308F
	.4byte 0x30EF505F
	.4byte 0x476B6579
	.4byte 0x5F313100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00E0002B
	.4byte 0x00000000
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x32000000
	.4byte 0x00000000
	.4byte 0x000000E1
	.4byte 0x002D3044
	.4byte 0x30A4505F
	.4byte 0x476B6579
	.4byte 0x5F313300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00E2002A
	.4byte 0x304D30AD
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x34000000
	.4byte 0x00000000
	.4byte 0x000000E4
	.4byte 0x002F3057
	.4byte 0x30B7505F
	.4byte 0x476B6579
	.4byte 0x5F313500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00E800D7
	.4byte 0x306130C1
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x36000000
	.4byte 0x00000000
	.4byte 0x000000E9
	.4byte 0x00F7306B
	.4byte 0x30CB505F
	.4byte 0x476B6579
	.4byte 0x5F313700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00EA003D
	.4byte 0x307230D2
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x38000000
	.4byte 0x00000000
	.4byte 0x000000EB
	.4byte 0x2192307F
	.4byte 0x30DF505F
	.4byte 0x476B6579
	.4byte 0x5F313900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00EC2190
	.4byte 0x308630E6
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x30000000
	.4byte 0x00000000
	.4byte 0x000000ED
	.4byte 0x2191308A
	.4byte 0x30EA505F
	.4byte 0x476B6579
	.4byte 0x5F323100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00EE2193
	.4byte 0x309230F2
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x32000000
	.4byte 0x00000000
	.4byte 0x000000F1
	.4byte 0x300C0000
	.4byte 0x0000505F
	.4byte 0x476B6579
	.4byte 0x5F323300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00DF300D
	.4byte 0x304630A6
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x34000000
	.4byte 0x00000000
	.4byte 0x000000C0
	.4byte 0x201C304F
	.4byte 0x30AF505F
	.4byte 0x476B6579
	.4byte 0x5F323500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00C1201D
	.4byte 0x305930B9
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x36000000
	.4byte 0x00000000
	.4byte 0x000000C2
	.4byte 0x00283064
	.4byte 0x30C4505F
	.4byte 0x476B6579
	.4byte 0x5F323700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00C40029
	.4byte 0x306C30CC
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x38000000
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x003C3075
	.4byte 0x30D5505F
	.4byte 0x476B6579
	.4byte 0x5F323900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00C9003E
	.4byte 0x308030E0
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x30000000
	.4byte 0x00000000
	.4byte 0x000000CA
	.4byte 0x007B3088
	.4byte 0x30E8505F
	.4byte 0x476B6579
	.4byte 0x5F333100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00CB007D
	.4byte 0x308B30EB
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x32000000
	.4byte 0x00000000
	.4byte 0x000000CC
	.4byte 0x20223093
	.4byte 0x30F3505F
	.4byte 0x476B6579
	.4byte 0x5F333300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00CD0025
	.4byte 0x00000000
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x34000000
	.4byte 0x00000000
	.4byte 0x000000CE
	.4byte 0x203B3048
	.4byte 0x30A8505F
	.4byte 0x476B6579
	.4byte 0x5F333500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00CF3012
	.4byte 0x305130B1
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x36000000
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x0023305B
	.4byte 0x30BB505F
	.4byte 0x476B6579
	.4byte 0x5F333700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00D3266D
	.4byte 0x306630C6
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x38000000
	.4byte 0x00000000
	.4byte 0x000000D4
	.4byte 0x266A306D
	.4byte 0x30CD505F
	.4byte 0x476B6579
	.4byte 0x5F333900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00D600B1
	.4byte 0x307830D8
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x30000000
	.4byte 0x00000000
	.4byte 0x00000152
	.4byte 0x00243081
	.4byte 0x30E1505F
	.4byte 0x476B6579
	.4byte 0x5F343100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00D900A2
	.4byte 0xFF01FF01
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x32000000
	.4byte 0x00000000
	.4byte 0x000000DA
	.4byte 0x00A3308C
	.4byte 0x30EC505F
	.4byte 0x476B6579
	.4byte 0x5F343300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00DB205C
	.4byte 0x30013001
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x34000000
	.4byte 0x00000000
	.4byte 0x000000DC
	.4byte 0x005E0000
	.4byte 0x0000505F
	.4byte 0x476B6579
	.4byte 0x5F343500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00C700B0
	.4byte 0x304A30AA
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x36000000
	.4byte 0x00000000
	.4byte 0x000000D1
	.4byte 0xFF5C3053
	.4byte 0x30B3505F
	.4byte 0x476B6579
	.4byte 0x5F343700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1FF0F
	.4byte 0x305D30BD
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x38000000
	.4byte 0x00000000
	.4byte 0x000000BF
	.4byte 0xFF3C3068
	.4byte 0x30C8505F
	.4byte 0x476B6579
	.4byte 0x5F343900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AC221E
	.4byte 0x306E30CE
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x30000000
	.4byte 0x00000000
	.4byte 0x000000A2
	.4byte 0x2234307B
	.4byte 0x30DB505F
	.4byte 0x476B6579
	.4byte 0x5F353100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A32026
	.4byte 0x308230E2
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x32000000
	.4byte 0x00000000
	.4byte 0x000000A7
	.4byte 0x2122FF1F
	.4byte 0xFF1F505F
	.4byte 0x476B6579
	.4byte 0x5F353300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000A9
	.4byte 0x308D30ED
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x34000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AE3002
	.4byte 0x3002505F
	.4byte 0x476B6579
	.4byte 0x5F353500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A22234
	.4byte 0x30FC30FC
.endobj lbl_81613408

# .rodata:0x5B0 | 0x816139B8 | size: 0x228
.obj lbl_816139B8, global
	.4byte 0x505F6B65
	.4byte 0x795F4C46
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x505F6B65
	.4byte 0x795F4445
	.4byte 0x4C455445
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F6B65
	.4byte 0x795F4341
	.4byte 0x50530000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x505F6B65
	.4byte 0x795F5348
	.4byte 0x49465400
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x505F6B65
	.4byte 0x795F5350
	.4byte 0x41434500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F476B
	.4byte 0x65795F4C
	.4byte 0x46000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x505F476B
	.4byte 0x65795F44
	.4byte 0x454C4554
	.4byte 0x45000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F476B
	.4byte 0x65795F53
	.4byte 0x50414345
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x575F5553
	.4byte 0x45555F70
	.4byte 0x7264635F
	.4byte 0x6C616E67
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x575F5553
	.4byte 0x45555F43
	.4byte 0x686E675F
	.4byte 0x7369676E
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4142
	.4byte 0x43000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4B41
	.4byte 0x4E410000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F7369
	.4byte 0x676E0000
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x505F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x68697261
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x505F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x6B617461
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0x505F4D6F
	.4byte 0x64655F64
	.4byte 0x69726563
	.4byte 0x74000000
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x505F6869
	.4byte 0x72616761
	.4byte 0x6E610000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000012
	.4byte 0x505F6B61
	.4byte 0x74616B61
	.4byte 0x6E610000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000013
	.4byte 0x505F476B
	.4byte 0x65795F6B
	.4byte 0x6F6D6F6A
	.4byte 0x69000000
	.4byte 0x00000000
	.4byte 0x00000016
	.4byte 0x505F476B
	.4byte 0x65795F68
	.4byte 0x616E6461
	.4byte 0x6B750000
	.4byte 0x00000000
	.4byte 0x00000015
	.4byte 0x505F476B
	.4byte 0x65795F64
	.4byte 0x616B7574
	.4byte 0x656E0000
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x505F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F656E
	.4byte 0x67000000
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x505F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F6861
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000010
.endobj lbl_816139B8

# .rodata:0x7D8 | 0x81613BE0 | size: 0xC4
.obj lbl_81613BE0, global
	.4byte 0x000D0018
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
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
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F6C
	.4byte lbl_81658F80
	.4byte lbl_81658F94
	.4byte lbl_81658FA8
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte lbl_81658FD8
.endobj lbl_81613BE0

# .rodata:0x89C | 0x81613CA4 | size: 0xC4
.obj lbl_81613CA4, global
	.4byte 0x00110014
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F6C
	.4byte lbl_81658F80
	.4byte lbl_81658F94
	.4byte lbl_81658FA8
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte lbl_81658FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81613CA4

# .rodata:0x960 | 0x81613D68 | size: 0xC4
.obj lbl_81613D68, global
	.4byte 0x00150010
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F6C
	.4byte lbl_81658F80
	.4byte lbl_81658F94
	.4byte lbl_81658FA8
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte lbl_81658FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81613D68

# .rodata:0xA24 | 0x81613E2C | size: 0xC4
.obj lbl_81613E2C, global
	.4byte 0x00150010
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F6C
	.4byte lbl_81658F80
	.4byte lbl_81658F94
	.4byte lbl_81658FA8
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte lbl_81658FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81613E2C

# .rodata:0xAE8 | 0x81613EF0 | size: 0xC4
.obj lbl_81613EF0, global
	.4byte 0x0017000E
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F6C
	.4byte lbl_81658F80
	.4byte lbl_81658F94
	.4byte lbl_81658FA8
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte 0x00000000
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte lbl_81658FD8
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
.endobj lbl_81613EF0

# .rodata:0xBAC | 0x81613FB4 | size: 0xC4
.obj lbl_81613FB4, global
	.4byte 0x00130012
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F6C
	.4byte lbl_81658F80
	.4byte lbl_81658F94
	.4byte lbl_81658FA8
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte lbl_81658FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81613FB4

# .rodata:0xC70 | 0x81614078 | size: 0xC4
.obj lbl_81614078, global
	.4byte 0x00140015
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F80
	.4byte lbl_81658FA8
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658DC4
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte lbl_81658F6C
	.4byte lbl_81658F94
	.4byte lbl_81658FE8
	.4byte lbl_81658FF8
	.4byte lbl_8165900C
	.4byte lbl_81659020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614078

# .rodata:0xD34 | 0x8161413C | size: 0xC4
.obj lbl_8161413C, global
	.4byte 0x00100016
	.4byte lbl_81658EE0
	.4byte lbl_81658EF4
	.4byte lbl_81658F00
	.4byte lbl_81658F0C
	.4byte lbl_81658F18
	.4byte lbl_81658F24
	.4byte lbl_81658F30
	.4byte lbl_81658F3C
	.4byte lbl_81658F48
	.4byte lbl_81658F54
	.4byte lbl_81658F60
	.4byte lbl_81658F80
	.4byte lbl_81658FA8
	.4byte lbl_81658E80
	.4byte lbl_81658E8C
	.4byte lbl_81658FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte lbl_81658EA4
	.4byte lbl_81658EB0
	.4byte lbl_81658EBC
	.4byte lbl_81658EC8
	.4byte lbl_81658ED4
	.4byte lbl_81658DD8
	.4byte lbl_81658E10
	.4byte lbl_81658E20
	.4byte lbl_81658E30
	.4byte lbl_81658E40
	.4byte lbl_81658E50
	.4byte lbl_81658E60
	.4byte lbl_81658E70
	.4byte lbl_81658FBC
	.4byte lbl_81658FC8
	.4byte lbl_81658F6C
	.4byte lbl_81658F94
	.4byte lbl_81658DC4
	.4byte lbl_81658FE8
	.4byte lbl_81658FF8
	.4byte lbl_8165900C
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8161413C

# .rodata:0xDF8 | 0x81614200 | size: 0xC0
.obj lbl_81614200, global
	.4byte 0x006100E0
	.4byte 0x00E100E2
	.4byte 0x00E300E4
	.4byte 0x00000000
	.4byte 0x006900EC
	.4byte 0x00ED00EE
	.4byte 0x000000EF
	.4byte 0x00000000
	.4byte 0x007500F9
	.4byte 0x00FA00FB
	.4byte 0x000000FC
	.4byte 0x00000000
	.4byte 0x006500E8
	.4byte 0x00E900EA
	.4byte 0x000000EB
	.4byte 0x00000000
	.4byte 0x006F00F2
	.4byte 0x00F300F4
	.4byte 0x00F500F6
	.4byte 0x00000000
	.4byte 0x004100C0
	.4byte 0x00C100C2
	.4byte 0x00C300C4
	.4byte 0x00000000
	.4byte 0x004900CC
	.4byte 0x00CD00CE
	.4byte 0x000000CF
	.4byte 0x00000000
	.4byte 0x005500D9
	.4byte 0x00DA00DB
	.4byte 0x000000DC
	.4byte 0x00000000
	.4byte 0x004500C8
	.4byte 0x00C900CA
	.4byte 0x000000CB
	.4byte 0x00000000
	.4byte 0x004F00D2
	.4byte 0x00D300D4
	.4byte 0x00D500D6
	.4byte 0x00000000
	.4byte 0x00790000
	.4byte 0x00FD0000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00590000
	.4byte 0x00DD0000
	.4byte 0x00000178
	.4byte 0x00000000
.endobj lbl_81614200

# .rodata:0xEB8 | 0x816142C0 | size: 0xC0
.obj lbl_816142C0, global
	.4byte 0x006100E0
	.4byte 0x000000E2
	.4byte 0x00E30000
	.4byte 0x00E100E4
	.4byte 0x006900EC
	.4byte 0x000000EE
	.4byte 0x00000000
	.4byte 0x00ED00EF
	.4byte 0x007500F9
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00FA00FC
	.4byte 0x006500E8
	.4byte 0x000000EA
	.4byte 0x00000000
	.4byte 0x00E900EB
	.4byte 0x006F00F2
	.4byte 0x000000F4
	.4byte 0x00F50000
	.4byte 0x00F300F6
	.4byte 0x004100C0
	.4byte 0x000000C2
	.4byte 0x00C30000
	.4byte 0x00C100C4
	.4byte 0x004900CC
	.4byte 0x000000CE
	.4byte 0x00000000
	.4byte 0x00CD00CF
	.4byte 0x005500D9
	.4byte 0x000000DB
	.4byte 0x00000000
	.4byte 0x00DA00DC
	.4byte 0x004500C8
	.4byte 0x000000CA
	.4byte 0x00000000
	.4byte 0x00C900CB
	.4byte 0x004F00D2
	.4byte 0x000000D4
	.4byte 0x00D50000
	.4byte 0x00D300D6
	.4byte 0x00790000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00FD00FF
	.4byte 0x00590000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00DD0178
.endobj lbl_816142C0

# .rodata:0xF78 | 0x81614380 | size: 0xC0
.obj lbl_81614380, global
	.4byte 0x006100E0
	.4byte 0x00E10000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006900EC
	.4byte 0x00ED0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x007500F9
	.4byte 0x00FA0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006500E8
	.4byte 0x00E90000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006F00F2
	.4byte 0x00F30000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004100C0
	.4byte 0x00C10000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004900CC
	.4byte 0x00CD0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005500D9
	.4byte 0x00DA0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004500C8
	.4byte 0x00C90000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004F00D2
	.4byte 0x00D30000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00790000
	.4byte 0x00FD0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00590000
	.4byte 0x00DD0000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614380

# .rodata:0x1038 | 0x81614440 | size: 0xC0
.obj lbl_81614440, global
	.4byte 0x00610000
	.4byte 0x000000E2
	.4byte 0x000000E4
	.4byte 0x00000000
	.4byte 0x00690000
	.4byte 0x000000EE
	.4byte 0x000000EF
	.4byte 0x00000000
	.4byte 0x00750000
	.4byte 0x000000FB
	.4byte 0x000000FC
	.4byte 0x00000000
	.4byte 0x00650000
	.4byte 0x000000EA
	.4byte 0x000000EB
	.4byte 0x00000000
	.4byte 0x006F0000
	.4byte 0x000000F4
	.4byte 0x000000F6
	.4byte 0x00000000
	.4byte 0x00410000
	.4byte 0x000000C2
	.4byte 0x000000C4
	.4byte 0x00000000
	.4byte 0x00490000
	.4byte 0x000000CE
	.4byte 0x000000CF
	.4byte 0x00000000
	.4byte 0x00550000
	.4byte 0x000000DB
	.4byte 0x000000DC
	.4byte 0x00000000
	.4byte 0x00450000
	.4byte 0x000000CA
	.4byte 0x000000CB
	.4byte 0x00000000
	.4byte 0x004F0000
	.4byte 0x000000D4
	.4byte 0x000000D6
	.4byte 0x00000000
	.4byte 0x00790000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00590000
	.4byte 0x00000000
	.4byte 0x00000178
	.4byte 0x00000000
.endobj lbl_81614440

# .rodata:0x10F8 | 0x81614500 | size: 0xC8
.obj lbl_81614500, global
	.4byte csUSKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613BE0
	.4byte 0x00000000
	.4byte csUSKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613CA4
	.4byte 0x00000000
	.4byte csUKKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613D68
	.4byte 0x00000000
	.4byte csFRKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613EF0
	.4byte lbl_81614440
	.4byte csDEKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613EF0
	.4byte lbl_81614380
	.4byte csITKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613EF0
	.4byte 0x00000000
	.4byte csESKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613E2C
	.4byte lbl_81614200
	.4byte csNLKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613FB4
	.4byte lbl_816142C0
	.4byte csCNKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81614078
	.4byte 0x00000000
	.4byte csUSKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_8161413C
	.4byte 0x00000000
.endobj lbl_81614500

# .rodata:0x11C0 | 0x816145C8 | size: 0x18
.obj lbl_816145C8, global
	.4byte csJPKeyboard__Q39textinput8keyboard6pctype
	.4byte lbl_81613408
	.4byte lbl_816139B8
	.4byte lbl_81613BE0
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816145C8

# .rodata:0x11D8 | 0x816145E0 | size: 0x44
.obj lbl_816145E0, global
	.4byte 0x00000000
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F6E6F72
	.4byte 0x6D616C2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816145E0

# .rodata:0x121C | 0x81614624 | size: 0x44
.obj lbl_81614624, global
	.4byte 0x00000001
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F466F63
	.4byte 0x75732D49
	.4byte 0x4E2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614624

# .rodata:0x1260 | 0x81614668 | size: 0x44
.obj lbl_81614668, global
	.4byte 0x00000002
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F466F63
	.4byte 0x75732D4F
	.4byte 0x55542E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614668

# .rodata:0x12A4 | 0x816146AC | size: 0x44
.obj lbl_816146AC, global
	.4byte 0x00000003
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F526F6C
	.4byte 0x6C5F6F76
	.4byte 0x65722E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816146AC

# .rodata:0x12E8 | 0x816146F0 | size: 0x44
.obj lbl_816146F0, global
	.4byte 0x00000004
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F507573
	.4byte 0x6865642E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816146F0

# .rodata:0x132C | 0x81614734 | size: 0x44
.obj lbl_81614734, global
	.4byte 0x00000005
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F746F67
	.4byte 0x676C652D
	.4byte 0x4F4E2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614734

# .rodata:0x1370 | 0x81614778 | size: 0x44
.obj lbl_81614778, global
	.4byte 0x00000006
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F746F67
	.4byte 0x676C652D
	.4byte 0x4F46462E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614778

# .rodata:0x13B4 | 0x816147BC | size: 0x44
.obj lbl_816147BC, global
	.4byte 0x00000007
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F546172
	.4byte 0x6765745F
	.4byte 0x4F4E2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816147BC

# .rodata:0x13F8 | 0x81614800 | size: 0x44
.obj lbl_81614800, global
	.4byte 0x00000008
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F746F67
	.4byte 0x676C654F
	.4byte 0x4E5F466F
	.4byte 0x6375732D
	.4byte 0x494E2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614800

# .rodata:0x143C | 0x81614844 | size: 0x44
.obj lbl_81614844, global
	.4byte 0x00000009
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F746F67
	.4byte 0x676C654F
	.4byte 0x4E5F466F
	.4byte 0x6375732D
	.4byte 0x4F55542E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614844

# .rodata:0x1480 | 0x81614888 | size: 0x44
.obj lbl_81614888, global
	.4byte 0x0000000A
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F6E6F72
	.4byte 0x6D616C5F
	.4byte 0x746F6767
	.4byte 0x6C652D4F
	.4byte 0x4E2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614888

# .rodata:0x14C4 | 0x816148CC | size: 0x44
.obj lbl_816148CC, global
	.4byte 0x0000000B
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F746F67
	.4byte 0x676C654F
	.4byte 0x4E5F5075
	.4byte 0x73686564
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816148CC

# .rodata:0x1508 | 0x81614910 | size: 0x44
.obj lbl_81614910, global
	.4byte 0x0000000C
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F616374
	.4byte 0x6976652D
	.4byte 0x4F4E2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614910

# .rodata:0x154C | 0x81614954 | size: 0x44
.obj lbl_81614954, global
	.4byte 0x0000000D
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F616374
	.4byte 0x6976652D
	.4byte 0x4F46462E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614954

# .rodata:0x1590 | 0x81614998 | size: 0x44
.obj lbl_81614998, global
	.4byte 0x0000000E
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F616374
	.4byte 0x6976655F
	.4byte 0x6E6F726D
	.4byte 0x616C2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81614998

# .rodata:0x15D4 | 0x816149DC | size: 0x44
.obj lbl_816149DC, global
	.4byte 0x0000000F
	.4byte 0x66735F56
	.4byte 0x4B5F6173
	.4byte 0x6369695F
	.4byte 0x6B657974
	.4byte 0x6F705F61
	.4byte 0x5F6E6F74
	.4byte 0x5F616374
	.4byte 0x6976655F
	.4byte 0x6E6F726D
	.4byte 0x616C2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816149DC

# .rodata:0x1618 | 0x81614A20 | size: 0x34
.obj lbl_81614A20, global
	.ascii "1A1`1J1G17191N1W1Q1S1O1c1a1\\1P1T1B11141E1U1M1H1L1[1K"
.endobj lbl_81614A20

# .rodata:0x164C | 0x81614A54 | size: 0x34
.obj lbl_81614A54, global
	.ascii "1A1`1J1G18191N1W1Q1S1O1c1a1\\1R1V1C12141F1U1M1I1L1[1K"
.endobj lbl_81614A54

# .rodata:0x1680 | 0x81614A88 | size: 0x10
.obj lbl_81614A88, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010000
	.4byte 0x00000000
.endobj lbl_81614A88

# .rodata:0x1690 | 0x81614A98 | size: 0x14
.obj lbl_81614A98, global
	.4byte lbl_81658DD8
	.4byte lbl_81658DE8
	.4byte lbl_81658DFC
	.4byte lbl_81659580
	.4byte lbl_81659590
.endobj lbl_81614A98

# .rodata:0x16A4 | 0x81614AAC | size: 0x14
.obj lbl_81614AAC, global
	.4byte lbl_81658FE8
	.4byte lbl_81658FF8
	.4byte lbl_8165900C
	.4byte lbl_8165BAC4
	.4byte lbl_8165BAD4
.endobj lbl_81614AAC

# 0x81658D90..0x8165BEB0 | size: 0x3120
.data
.balign 8

# .data:0x0 | 0x81658D90 | size: 0x34
.obj lbl_81658D90, global
	.4byte lbl_816972A0
	.4byte lbl_816972A0
	.4byte lbl_816972A8
	.4byte lbl_816972B0
	.4byte lbl_816972B8
	.4byte lbl_816972C0
	.4byte lbl_816972C8
	.4byte lbl_816972D0
	.4byte lbl_816972D8
	.4byte lbl_816972E0
	.4byte lbl_816972E8
	.4byte lbl_816972F0
	.4byte lbl_816972F8
.endobj lbl_81658D90

# .data:0x34 | 0x81658DC4 | size: 0x14
.obj lbl_81658DC4, global
	.4byte 0x4E5F6D6F
	.4byte 0x64655365
	.4byte 0x6C656374
	.4byte 0x5F616C6C
	.4byte 0x00000000
.endobj lbl_81658DC4

# .data:0x48 | 0x81658DD8 | size: 0x10
.obj lbl_81658DD8, global
	.4byte 0x505F4D6F
	.4byte 0x64655F64
	.4byte 0x69726563
	.4byte 0x74000000
.endobj lbl_81658DD8

# .data:0x58 | 0x81658DE8 | size: 0x14
.obj lbl_81658DE8, global
	.4byte 0x505F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x68697261
	.4byte 0x00000000
.endobj lbl_81658DE8

# .data:0x6C | 0x81658DFC | size: 0x14
.obj lbl_81658DFC, global
	.4byte 0x505F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x6B617461
	.4byte 0x00000000
.endobj lbl_81658DFC

# .data:0x80 | 0x81658E10 | size: 0x10
.obj lbl_81658E10, global
	.4byte 0x4E5F4B65
	.4byte 0x79436861
	.4byte 0x6E67655F
	.4byte 0x4A500000
.endobj lbl_81658E10

# .data:0x90 | 0x81658E20 | size: 0x10
.obj lbl_81658E20, global
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4142
	.4byte 0x43000000
.endobj lbl_81658E20

# .data:0xA0 | 0x81658E30 | size: 0x10
.obj lbl_81658E30, global
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4B41
	.4byte 0x4E410000
.endobj lbl_81658E30

# .data:0xB0 | 0x81658E40 | size: 0x10
.obj lbl_81658E40, global
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F7369
	.4byte 0x676E0000
.endobj lbl_81658E40

# .data:0xC0 | 0x81658E50 | size: 0x10
.obj lbl_81658E50, global
	.4byte 0x545F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4142
	.4byte 0x43000000
.endobj lbl_81658E50

# .data:0xD0 | 0x81658E60 | size: 0x10
.obj lbl_81658E60, global
	.4byte 0x545F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4B41
	.4byte 0x4E410000
.endobj lbl_81658E60

# .data:0xE0 | 0x81658E70 | size: 0x10
.obj lbl_81658E70, global
	.4byte 0x545F4A50
	.4byte 0x5F43686E
	.4byte 0x675F7369
	.4byte 0x676E0000
.endobj lbl_81658E70

# .data:0xF0 | 0x81658E80 | size: 0xC
.obj lbl_81658E80, global
	.4byte 0x545F6B65
	.4byte 0x795F4341
	.4byte 0x50530000
.endobj lbl_81658E80

# .data:0xFC | 0x81658E8C | size: 0xC
.obj lbl_81658E8C, global
	.string "T_key_SHIFT"
.endobj lbl_81658E8C

# .data:0x108 | 0x81658E98 | size: 0xC
.obj lbl_81658E98, global
	.4byte 0x505F6B65
	.4byte 0x795F3431
	.4byte 0x00000000
.endobj lbl_81658E98

# .data:0x114 | 0x81658EA4 | size: 0xC
.obj lbl_81658EA4, global
	.4byte 0x545F6B65
	.4byte 0x795F3431
	.4byte 0x00000000
.endobj lbl_81658EA4

# .data:0x120 | 0x81658EB0 | size: 0xC
.obj lbl_81658EB0, global
	.4byte 0x505F6B65
	.4byte 0x795F3432
	.4byte 0x00000000
.endobj lbl_81658EB0

# .data:0x12C | 0x81658EBC | size: 0xC
.obj lbl_81658EBC, global
	.4byte 0x545F6B65
	.4byte 0x795F3432
	.4byte 0x00000000
.endobj lbl_81658EBC

# .data:0x138 | 0x81658EC8 | size: 0xC
.obj lbl_81658EC8, global
	.4byte 0x505F6B65
	.4byte 0x795F3433
	.4byte 0x00000000
.endobj lbl_81658EC8

# .data:0x144 | 0x81658ED4 | size: 0xC
.obj lbl_81658ED4, global
	.4byte 0x545F6B65
	.4byte 0x795F3433
	.4byte 0x00000000
.endobj lbl_81658ED4

# .data:0x150 | 0x81658EE0 | size: 0x14
.obj lbl_81658EE0, global
	.4byte 0x4E5F4B65
	.4byte 0x79436861
	.4byte 0x6E67655F
	.4byte 0x55534555
	.4byte 0x00000000
.endobj lbl_81658EE0

# .data:0x164 | 0x81658EF4 | size: 0xC
.obj lbl_81658EF4, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x30000000
.endobj lbl_81658EF4

# .data:0x170 | 0x81658F00 | size: 0xC
.obj lbl_81658F00, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x31000000
.endobj lbl_81658F00

# .data:0x17C | 0x81658F0C | size: 0xC
.obj lbl_81658F0C, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x32000000
.endobj lbl_81658F0C

# .data:0x188 | 0x81658F18 | size: 0xC
.obj lbl_81658F18, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x33000000
.endobj lbl_81658F18

# .data:0x194 | 0x81658F24 | size: 0xC
.obj lbl_81658F24, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x34000000
.endobj lbl_81658F24

# .data:0x1A0 | 0x81658F30 | size: 0xC
.obj lbl_81658F30, global
	.4byte 0x545F476B
	.4byte 0x65795F30
	.4byte 0x30000000
.endobj lbl_81658F30

# .data:0x1AC | 0x81658F3C | size: 0xC
.obj lbl_81658F3C, global
	.4byte 0x545F476B
	.4byte 0x65795F31
	.4byte 0x31000000
.endobj lbl_81658F3C

# .data:0x1B8 | 0x81658F48 | size: 0xC
.obj lbl_81658F48, global
	.4byte 0x545F476B
	.4byte 0x65795F32
	.4byte 0x32000000
.endobj lbl_81658F48

# .data:0x1C4 | 0x81658F54 | size: 0xC
.obj lbl_81658F54, global
	.4byte 0x545F476B
	.4byte 0x65795F33
	.4byte 0x33000000
.endobj lbl_81658F54

# .data:0x1D0 | 0x81658F60 | size: 0xC
.obj lbl_81658F60, global
	.4byte 0x545F476B
	.4byte 0x65795F34
	.4byte 0x34000000
.endobj lbl_81658F60

# .data:0x1DC | 0x81658F6C | size: 0x14
.obj lbl_81658F6C, global
	.4byte 0x575F5553
	.4byte 0x45555F70
	.4byte 0x7264635F
	.4byte 0x6C616E67
	.4byte 0x00000000
.endobj lbl_81658F6C

# .data:0x1F0 | 0x81658F80 | size: 0x14
.obj lbl_81658F80, global
	.4byte 0x575F5553
	.4byte 0x45555F43
	.4byte 0x686E675F
	.4byte 0x7369676E
	.4byte 0x00000000
.endobj lbl_81658F80

# .data:0x204 | 0x81658F94 | size: 0x14
.obj lbl_81658F94, global
	.4byte 0x545F5553
	.4byte 0x45555F70
	.4byte 0x7264635F
	.4byte 0x6C616E67
	.4byte 0x00000000
.endobj lbl_81658F94

# .data:0x218 | 0x81658FA8 | size: 0x14
.obj lbl_81658FA8, global
	.4byte 0x545F5553
	.4byte 0x45555F43
	.4byte 0x686E675F
	.4byte 0x7369676E
	.4byte 0x00000000
.endobj lbl_81658FA8

# .data:0x22C | 0x81658FBC | size: 0xC
.obj lbl_81658FBC, global
	.string "P_SHIFTMark"
.endobj lbl_81658FBC

# .data:0x238 | 0x81658FC8 | size: 0x10
.obj lbl_81658FC8, global
	.4byte 0x505F4341
	.4byte 0x50534D61
	.4byte 0x726B0000
	.4byte 0x00000000
.endobj lbl_81658FC8

# .data:0x248 | 0x81658FD8 | size: 0x10
.obj lbl_81658FD8, global
	.string "N_modeSelect_kr"
.endobj lbl_81658FD8

# .data:0x258 | 0x81658FE8 | size: 0x10
.obj lbl_81658FE8, global
	.4byte 0x425F4D6F
	.4byte 0x64655F64
	.4byte 0x69726563
	.4byte 0x74000000
.endobj lbl_81658FE8

# .data:0x268 | 0x81658FF8 | size: 0x14
.obj lbl_81658FF8, global
	.4byte 0x425F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x68697261
	.4byte 0x00000000
.endobj lbl_81658FF8

# .data:0x27C | 0x8165900C | size: 0x14
.obj lbl_8165900C, global
	.4byte 0x425F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x6B617461
	.4byte 0x00000000
.endobj lbl_8165900C

# .data:0x290 | 0x81659020 | size: 0x14
.obj lbl_81659020, global
	.4byte 0x545F4D6F
	.4byte 0x64655F63
	.4byte 0x6E5F7069
	.4byte 0x6E79696E
	.4byte 0x00000000
.endobj lbl_81659020

# .data:0x2A4 | 0x81659034 | size: 0xC
.obj lbl_81659034, global
	.4byte 0x505F6B65
	.4byte 0x795F3030
	.4byte 0x00000000
.endobj lbl_81659034

# .data:0x2B0 | 0x81659040 | size: 0xC
.obj lbl_81659040, global
	.4byte 0x505F6B65
	.4byte 0x795F3031
	.4byte 0x00000000
.endobj lbl_81659040

# .data:0x2BC | 0x8165904C | size: 0xC
.obj lbl_8165904C, global
	.4byte 0x505F6B65
	.4byte 0x795F3032
	.4byte 0x00000000
.endobj lbl_8165904C

# .data:0x2C8 | 0x81659058 | size: 0xC
.obj lbl_81659058, global
	.4byte 0x505F6B65
	.4byte 0x795F3033
	.4byte 0x00000000
.endobj lbl_81659058

# .data:0x2D4 | 0x81659064 | size: 0xC
.obj lbl_81659064, global
	.4byte 0x505F6B65
	.4byte 0x795F3034
	.4byte 0x00000000
.endobj lbl_81659064

# .data:0x2E0 | 0x81659070 | size: 0xC
.obj lbl_81659070, global
	.4byte 0x505F6B65
	.4byte 0x795F3035
	.4byte 0x00000000
.endobj lbl_81659070

# .data:0x2EC | 0x8165907C | size: 0xC
.obj lbl_8165907C, global
	.4byte 0x505F6B65
	.4byte 0x795F3036
	.4byte 0x00000000
.endobj lbl_8165907C

# .data:0x2F8 | 0x81659088 | size: 0xC
.obj lbl_81659088, global
	.4byte 0x505F6B65
	.4byte 0x795F3037
	.4byte 0x00000000
.endobj lbl_81659088

# .data:0x304 | 0x81659094 | size: 0xC
.obj lbl_81659094, global
	.4byte 0x505F6B65
	.4byte 0x795F3038
	.4byte 0x00000000
.endobj lbl_81659094

# .data:0x310 | 0x816590A0 | size: 0xC
.obj lbl_816590A0, global
	.4byte 0x505F6B65
	.4byte 0x795F3039
	.4byte 0x00000000
.endobj lbl_816590A0

# .data:0x31C | 0x816590AC | size: 0xC
.obj lbl_816590AC, global
	.4byte 0x505F6B65
	.4byte 0x795F3130
	.4byte 0x00000000
.endobj lbl_816590AC

# .data:0x328 | 0x816590B8 | size: 0xC
.obj lbl_816590B8, global
	.4byte 0x505F6B65
	.4byte 0x795F3131
	.4byte 0x00000000
.endobj lbl_816590B8

# .data:0x334 | 0x816590C4 | size: 0xC
.obj lbl_816590C4, global
	.4byte 0x505F6B65
	.4byte 0x795F3132
	.4byte 0x00000000
.endobj lbl_816590C4

# .data:0x340 | 0x816590D0 | size: 0xC
.obj lbl_816590D0, global
	.4byte 0x505F6B65
	.4byte 0x795F3133
	.4byte 0x00000000
.endobj lbl_816590D0

# .data:0x34C | 0x816590DC | size: 0xC
.obj lbl_816590DC, global
	.4byte 0x505F6B65
	.4byte 0x795F3135
	.4byte 0x00000000
.endobj lbl_816590DC

# .data:0x358 | 0x816590E8 | size: 0xC
.obj lbl_816590E8, global
	.4byte 0x505F6B65
	.4byte 0x795F3136
	.4byte 0x00000000
.endobj lbl_816590E8

# .data:0x364 | 0x816590F4 | size: 0xC
.obj lbl_816590F4, global
	.4byte 0x505F6B65
	.4byte 0x795F3137
	.4byte 0x00000000
.endobj lbl_816590F4

# .data:0x370 | 0x81659100 | size: 0xC
.obj lbl_81659100, global
	.4byte 0x505F6B65
	.4byte 0x795F3138
	.4byte 0x00000000
.endobj lbl_81659100

# .data:0x37C | 0x8165910C | size: 0xC
.obj lbl_8165910C, global
	.4byte 0x505F6B65
	.4byte 0x795F3134
	.4byte 0x00000000
.endobj lbl_8165910C

# .data:0x388 | 0x81659118 | size: 0xC
.obj lbl_81659118, global
	.4byte 0x505F6B65
	.4byte 0x795F3139
	.4byte 0x00000000
.endobj lbl_81659118

# .data:0x394 | 0x81659124 | size: 0xC
.obj lbl_81659124, global
	.4byte 0x505F6B65
	.4byte 0x795F3230
	.4byte 0x00000000
.endobj lbl_81659124

# .data:0x3A0 | 0x81659130 | size: 0xC
.obj lbl_81659130, global
	.4byte 0x505F6B65
	.4byte 0x795F3231
	.4byte 0x00000000
.endobj lbl_81659130

# .data:0x3AC | 0x8165913C | size: 0xC
.obj lbl_8165913C, global
	.4byte 0x505F6B65
	.4byte 0x795F3232
	.4byte 0x00000000
.endobj lbl_8165913C

# .data:0x3B8 | 0x81659148 | size: 0xC
.obj lbl_81659148, global
	.4byte 0x505F6B65
	.4byte 0x795F3233
	.4byte 0x00000000
.endobj lbl_81659148

# .data:0x3C4 | 0x81659154 | size: 0xC
.obj lbl_81659154, global
	.4byte 0x505F6B65
	.4byte 0x795F3234
	.4byte 0x00000000
.endobj lbl_81659154

# .data:0x3D0 | 0x81659160 | size: 0xC
.obj lbl_81659160, global
	.4byte 0x505F6B65
	.4byte 0x795F3235
	.4byte 0x00000000
.endobj lbl_81659160

# .data:0x3DC | 0x8165916C | size: 0xC
.obj lbl_8165916C, global
	.4byte 0x505F6B65
	.4byte 0x795F3236
	.4byte 0x00000000
.endobj lbl_8165916C

# .data:0x3E8 | 0x81659178 | size: 0xC
.obj lbl_81659178, global
	.4byte 0x505F6B65
	.4byte 0x795F3237
	.4byte 0x00000000
.endobj lbl_81659178

# .data:0x3F4 | 0x81659184 | size: 0xC
.obj lbl_81659184, global
	.4byte 0x505F6B65
	.4byte 0x795F3238
	.4byte 0x00000000
.endobj lbl_81659184

# .data:0x400 | 0x81659190 | size: 0xC
.obj lbl_81659190, global
	.4byte 0x505F6B65
	.4byte 0x795F3239
	.4byte 0x00000000
.endobj lbl_81659190

# .data:0x40C | 0x8165919C | size: 0xC
.obj lbl_8165919C, global
	.4byte 0x505F6B65
	.4byte 0x795F3330
	.4byte 0x00000000
.endobj lbl_8165919C

# .data:0x418 | 0x816591A8 | size: 0xC
.obj lbl_816591A8, global
	.4byte 0x505F6B65
	.4byte 0x795F3331
	.4byte 0x00000000
.endobj lbl_816591A8

# .data:0x424 | 0x816591B4 | size: 0xC
.obj lbl_816591B4, global
	.4byte 0x505F6B65
	.4byte 0x795F3332
	.4byte 0x00000000
.endobj lbl_816591B4

# .data:0x430 | 0x816591C0 | size: 0xC
.obj lbl_816591C0, global
	.4byte 0x505F6B65
	.4byte 0x795F3333
	.4byte 0x00000000
.endobj lbl_816591C0

# .data:0x43C | 0x816591CC | size: 0xC
.obj lbl_816591CC, global
	.4byte 0x505F6B65
	.4byte 0x795F3334
	.4byte 0x00000000
.endobj lbl_816591CC

# .data:0x448 | 0x816591D8 | size: 0xC
.obj lbl_816591D8, global
	.4byte 0x505F6B65
	.4byte 0x795F3335
	.4byte 0x00000000
.endobj lbl_816591D8

# .data:0x454 | 0x816591E4 | size: 0xC
.obj lbl_816591E4, global
	.4byte 0x505F6B65
	.4byte 0x795F3336
	.4byte 0x00000000
.endobj lbl_816591E4

# .data:0x460 | 0x816591F0 | size: 0xC
.obj lbl_816591F0, global
	.4byte 0x505F6B65
	.4byte 0x795F3337
	.4byte 0x00000000
.endobj lbl_816591F0

# .data:0x46C | 0x816591FC | size: 0xC
.obj lbl_816591FC, global
	.4byte 0x505F6B65
	.4byte 0x795F3338
	.4byte 0x00000000
.endobj lbl_816591FC

# .data:0x478 | 0x81659208 | size: 0xC
.obj lbl_81659208, global
	.4byte 0x505F6B65
	.4byte 0x795F3339
	.4byte 0x00000000
.endobj lbl_81659208

# .data:0x484 | 0x81659214 | size: 0xC
.obj lbl_81659214, global
	.4byte 0x505F6B65
	.4byte 0x795F3430
	.4byte 0x00000000
.endobj lbl_81659214

# .data:0x490 | 0x81659220 | size: 0xC
.obj lbl_81659220, global
	.4byte 0x505F6B65
	.4byte 0x795F3434
	.4byte 0x00000000
.endobj lbl_81659220

# .data:0x49C | 0x8165922C | size: 0xC
.obj lbl_8165922C, global
	.4byte 0x505F6B65
	.4byte 0x795F3435
	.4byte 0x00000000
.endobj lbl_8165922C

# .data:0x4A8 | 0x81659238 | size: 0xC
.obj lbl_81659238, global
	.4byte 0x505F6B65
	.4byte 0x795F3436
	.4byte 0x00000000
.endobj lbl_81659238

# .data:0x4B4 | 0x81659244 | size: 0xC
.obj lbl_81659244, global
	.4byte 0x505F6B65
	.4byte 0x795F3437
	.4byte 0x00000000
.endobj lbl_81659244

# .data:0x4C0 | 0x81659250 | size: 0xC
.obj lbl_81659250, global
	.4byte 0x505F6B65
	.4byte 0x795F3438
	.4byte 0x00000000
.endobj lbl_81659250

# .data:0x4CC | 0x8165925C | size: 0xC
.obj lbl_8165925C, global
	.4byte 0x505F6B65
	.4byte 0x795F3439
	.4byte 0x00000000
.endobj lbl_8165925C

# .data:0x4D8 | 0x81659268 | size: 0x10
.obj lbl_81659268, global
	.4byte 0x505F6B65
	.4byte 0x795F4445
	.4byte 0x4C455445
	.4byte 0x00000000
.endobj lbl_81659268

# .data:0x4E8 | 0x81659278 | size: 0xC
.obj lbl_81659278, global
	.4byte 0x505F6B65
	.4byte 0x795F4C46
	.4byte 0x00000000
.endobj lbl_81659278

# .data:0x4F4 | 0x81659284 | size: 0xC
.obj lbl_81659284, global
	.string "P_key_SPACE"
.endobj lbl_81659284

# .data:0x500 | 0x81659290 | size: 0xC
.obj lbl_81659290, global
	.string "P_key_SHIFT"
.endobj lbl_81659290

# .data:0x50C | 0x8165929C | size: 0xC
.obj lbl_8165929C, global
	.4byte 0x505F6B65
	.4byte 0x795F4341
	.4byte 0x50530000
.endobj lbl_8165929C

# .data:0x518 | 0x816592A8 | size: 0xC
.obj lbl_816592A8, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x31000000
.endobj lbl_816592A8

# .data:0x524 | 0x816592B4 | size: 0xC
.obj lbl_816592B4, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x32000000
.endobj lbl_816592B4

# .data:0x530 | 0x816592C0 | size: 0xC
.obj lbl_816592C0, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x33000000
.endobj lbl_816592C0

# .data:0x53C | 0x816592CC | size: 0xC
.obj lbl_816592CC, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x34000000
.endobj lbl_816592CC

# .data:0x548 | 0x816592D8 | size: 0xC
.obj lbl_816592D8, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x35000000
.endobj lbl_816592D8

# .data:0x554 | 0x816592E4 | size: 0xC
.obj lbl_816592E4, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x36000000
.endobj lbl_816592E4

# .data:0x560 | 0x816592F0 | size: 0xC
.obj lbl_816592F0, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x37000000
.endobj lbl_816592F0

# .data:0x56C | 0x816592FC | size: 0xC
.obj lbl_816592FC, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x38000000
.endobj lbl_816592FC

# .data:0x578 | 0x81659308 | size: 0xC
.obj lbl_81659308, global
	.4byte 0x505F476B
	.4byte 0x65795F30
	.4byte 0x39000000
.endobj lbl_81659308

# .data:0x584 | 0x81659314 | size: 0xC
.obj lbl_81659314, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x30000000
.endobj lbl_81659314

# .data:0x590 | 0x81659320 | size: 0xC
.obj lbl_81659320, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x32000000
.endobj lbl_81659320

# .data:0x59C | 0x8165932C | size: 0xC
.obj lbl_8165932C, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x33000000
.endobj lbl_8165932C

# .data:0x5A8 | 0x81659338 | size: 0xC
.obj lbl_81659338, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x34000000
.endobj lbl_81659338

# .data:0x5B4 | 0x81659344 | size: 0xC
.obj lbl_81659344, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x35000000
.endobj lbl_81659344

# .data:0x5C0 | 0x81659350 | size: 0xC
.obj lbl_81659350, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x36000000
.endobj lbl_81659350

# .data:0x5CC | 0x8165935C | size: 0xC
.obj lbl_8165935C, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x37000000
.endobj lbl_8165935C

# .data:0x5D8 | 0x81659368 | size: 0xC
.obj lbl_81659368, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x38000000
.endobj lbl_81659368

# .data:0x5E4 | 0x81659374 | size: 0xC
.obj lbl_81659374, global
	.4byte 0x505F476B
	.4byte 0x65795F31
	.4byte 0x39000000
.endobj lbl_81659374

# .data:0x5F0 | 0x81659380 | size: 0xC
.obj lbl_81659380, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x30000000
.endobj lbl_81659380

# .data:0x5FC | 0x8165938C | size: 0xC
.obj lbl_8165938C, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x31000000
.endobj lbl_8165938C

# .data:0x608 | 0x81659398 | size: 0xC
.obj lbl_81659398, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x33000000
.endobj lbl_81659398

# .data:0x614 | 0x816593A4 | size: 0xC
.obj lbl_816593A4, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x34000000
.endobj lbl_816593A4

# .data:0x620 | 0x816593B0 | size: 0xC
.obj lbl_816593B0, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x35000000
.endobj lbl_816593B0

# .data:0x62C | 0x816593BC | size: 0xC
.obj lbl_816593BC, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x36000000
.endobj lbl_816593BC

# .data:0x638 | 0x816593C8 | size: 0xC
.obj lbl_816593C8, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x37000000
.endobj lbl_816593C8

# .data:0x644 | 0x816593D4 | size: 0xC
.obj lbl_816593D4, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x38000000
.endobj lbl_816593D4

# .data:0x650 | 0x816593E0 | size: 0xC
.obj lbl_816593E0, global
	.4byte 0x505F476B
	.4byte 0x65795F32
	.4byte 0x39000000
.endobj lbl_816593E0

# .data:0x65C | 0x816593EC | size: 0xC
.obj lbl_816593EC, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x30000000
.endobj lbl_816593EC

# .data:0x668 | 0x816593F8 | size: 0xC
.obj lbl_816593F8, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x31000000
.endobj lbl_816593F8

# .data:0x674 | 0x81659404 | size: 0xC
.obj lbl_81659404, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x32000000
.endobj lbl_81659404

# .data:0x680 | 0x81659410 | size: 0xC
.obj lbl_81659410, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x34000000
.endobj lbl_81659410

# .data:0x68C | 0x8165941C | size: 0xC
.obj lbl_8165941C, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x35000000
.endobj lbl_8165941C

# .data:0x698 | 0x81659428 | size: 0xC
.obj lbl_81659428, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x36000000
.endobj lbl_81659428

# .data:0x6A4 | 0x81659434 | size: 0xC
.obj lbl_81659434, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x37000000
.endobj lbl_81659434

# .data:0x6B0 | 0x81659440 | size: 0xC
.obj lbl_81659440, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x38000000
.endobj lbl_81659440

# .data:0x6BC | 0x8165944C | size: 0xC
.obj lbl_8165944C, global
	.4byte 0x505F476B
	.4byte 0x65795F33
	.4byte 0x39000000
.endobj lbl_8165944C

# .data:0x6C8 | 0x81659458 | size: 0xC
.obj lbl_81659458, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x30000000
.endobj lbl_81659458

# .data:0x6D4 | 0x81659464 | size: 0xC
.obj lbl_81659464, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x31000000
.endobj lbl_81659464

# .data:0x6E0 | 0x81659470 | size: 0xC
.obj lbl_81659470, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x32000000
.endobj lbl_81659470

# .data:0x6EC | 0x8165947C | size: 0xC
.obj lbl_8165947C, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x33000000
.endobj lbl_8165947C

# .data:0x6F8 | 0x81659488 | size: 0xC
.obj lbl_81659488, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x35000000
.endobj lbl_81659488

# .data:0x704 | 0x81659494 | size: 0xC
.obj lbl_81659494, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x36000000
.endobj lbl_81659494

# .data:0x710 | 0x816594A0 | size: 0xC
.obj lbl_816594A0, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x37000000
.endobj lbl_816594A0

# .data:0x71C | 0x816594AC | size: 0xC
.obj lbl_816594AC, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x38000000
.endobj lbl_816594AC

# .data:0x728 | 0x816594B8 | size: 0xC
.obj lbl_816594B8, global
	.4byte 0x505F476B
	.4byte 0x65795F34
	.4byte 0x39000000
.endobj lbl_816594B8

# .data:0x734 | 0x816594C4 | size: 0xC
.obj lbl_816594C4, global
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x30000000
.endobj lbl_816594C4

# .data:0x740 | 0x816594D0 | size: 0xC
.obj lbl_816594D0, global
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x31000000
.endobj lbl_816594D0

# .data:0x74C | 0x816594DC | size: 0xC
.obj lbl_816594DC, global
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x32000000
.endobj lbl_816594DC

# .data:0x758 | 0x816594E8 | size: 0xC
.obj lbl_816594E8, global
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x33000000
.endobj lbl_816594E8

# .data:0x764 | 0x816594F4 | size: 0xC
.obj lbl_816594F4, global
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x34000000
.endobj lbl_816594F4

# .data:0x770 | 0x81659500 | size: 0xC
.obj lbl_81659500, global
	.4byte 0x505F476B
	.4byte 0x65795F35
	.4byte 0x35000000
.endobj lbl_81659500

# .data:0x77C | 0x8165950C | size: 0x10
.obj lbl_8165950C, global
	.4byte 0x505F476B
	.4byte 0x65795F44
	.4byte 0x454C4554
	.4byte 0x45000000
.endobj lbl_8165950C

# .data:0x78C | 0x8165951C | size: 0xC
.obj lbl_8165951C, global
	.4byte 0x505F476B
	.4byte 0x65795F4C
	.4byte 0x46000000
.endobj lbl_8165951C

# .data:0x798 | 0x81659528 | size: 0x10
.obj lbl_81659528, global
	.4byte 0x505F476B
	.4byte 0x65795F53
	.4byte 0x50414345
	.4byte 0x00000000
.endobj lbl_81659528

# .data:0x7A8 | 0x81659538 | size: 0xC
.obj lbl_81659538, global
	.4byte 0x505F6869
	.4byte 0x72616761
	.4byte 0x6E610000
.endobj lbl_81659538

# .data:0x7B4 | 0x81659544 | size: 0xC
.obj lbl_81659544, global
	.4byte 0x505F6B61
	.4byte 0x74616B61
	.4byte 0x6E610000
.endobj lbl_81659544

# .data:0x7C0 | 0x81659550 | size: 0x10
.obj lbl_81659550, global
	.4byte 0x505F476B
	.4byte 0x65795F64
	.4byte 0x616B7574
	.4byte 0x656E0000
.endobj lbl_81659550

# .data:0x7D0 | 0x81659560 | size: 0x10
.obj lbl_81659560, global
	.4byte 0x505F476B
	.4byte 0x65795F68
	.4byte 0x616E6461
	.4byte 0x6B750000
.endobj lbl_81659560

# .data:0x7E0 | 0x81659570 | size: 0x10
.obj lbl_81659570, global
	.4byte 0x505F476B
	.4byte 0x65795F6B
	.4byte 0x6F6D6F6A
	.4byte 0x69000000
.endobj lbl_81659570

# .data:0x7F0 | 0x81659580 | size: 0x10
.obj lbl_81659580, global
	.4byte 0x505F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F656E
	.4byte 0x67000000
.endobj lbl_81659580

# .data:0x800 | 0x81659590 | size: 0x10
.obj lbl_81659590, global
	.4byte 0x505F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F6861
	.4byte 0x6E000000
.endobj lbl_81659590

# .data:0x810 | 0x816595A0 | size: 0x2040
.obj lbl_816595A0, global
	.4byte 0x00000000
	.4byte lbl_81659034
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659040
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165904C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659058
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659064
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659070
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165907C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659088
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659094
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590A0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590AC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590B8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590C4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590D0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590DC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590E8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816590F4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659100
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165910C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659118
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659124
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659130
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165913C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659148
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659154
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659160
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165916C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659178
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659184
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659190
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165919C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591A8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591B4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591C0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591CC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591D8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591E4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591F0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816591FC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659208
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659214
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E98
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658EB0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658EC8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659220
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165922C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659238
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659244
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659250
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165925C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659268
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659278
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659284
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte lbl_81659290
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte lbl_81614800
	.4byte lbl_81614844
	.4byte lbl_81614888
	.4byte lbl_816148CC
	.4byte 0x00000001
	.4byte lbl_8165929C
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte lbl_81614800
	.4byte lbl_81614844
	.4byte lbl_81614888
	.4byte lbl_816148CC
	.4byte 0x00000000
	.4byte lbl_81658EF4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592A8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592B4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592C0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592CC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592D8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592E4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592F0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816592FC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659308
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659314
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658F00
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659320
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165932C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659338
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659344
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659350
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165935C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659368
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659374
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659380
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165938C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658F0C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659398
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593A4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593B0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593BC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593C8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593D4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593E0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593EC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816593F8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659404
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658F18
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659410
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165941C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659428
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659434
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659440
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165944C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659458
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659464
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659470
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165947C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658F24
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659488
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659494
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594A0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594AC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594B8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594C4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594D0
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594DC
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594E8
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816594F4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659500
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165950C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165951C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81659528
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658F6C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658F80
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81658E20
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81658E30
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81658E40
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81659538
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81659544
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte lbl_81659550
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_81614910
	.4byte lbl_81614954
	.4byte lbl_81614998
	.4byte lbl_816149DC
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte lbl_81659560
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_81614910
	.4byte lbl_81614954
	.4byte lbl_81614998
	.4byte lbl_816149DC
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte lbl_81659570
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_81614910
	.4byte lbl_81614954
	.4byte lbl_81614998
	.4byte lbl_816149DC
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81658DE8
	.4byte 0x00000007
	.4byte lbl_81658DD8
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81658DFC
	.4byte 0x00000007
	.4byte lbl_81658DD8
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81658DD8
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81659580
	.4byte 0x00000007
	.4byte lbl_81658DD8
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte lbl_81659590
	.4byte 0x00000007
	.4byte lbl_81658DD8
	.4byte lbl_816145E0
	.4byte lbl_81614624
	.4byte lbl_81614668
	.4byte lbl_816146AC
	.4byte lbl_816146F0
	.4byte lbl_81614734
	.4byte lbl_81614778
	.4byte lbl_816147BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816595A0

# .data:0x2850 | 0x8165B5E0 | size: 0x5C
.obj jumptable_8165B5E0, local
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_8141046C
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_8141044C
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_814104A8
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410738
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410564
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410514
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410530
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_8141054C
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_8141057C
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410598
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_814105D8
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410618
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410658
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_81410678
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_814106A0
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_814106CC
	.rel onKey__Q49textinput8keyboard6pctype4BaseFUlPv, .L_814106F8
.endobj jumptable_8165B5E0

# .data:0x28AC | 0x8165B63C | size: 0x10
.obj lbl_8165B63C, global
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4142
	.4byte 0x43000000
.endobj lbl_8165B63C

# .data:0x28BC | 0x8165B64C | size: 0x1C
.obj lbl_8165B64C, global
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4B41
	.4byte 0x4E410000
	.4byte 0x425F6B65
	.4byte 0x795F5348
	.4byte 0x49465400
.endobj lbl_8165B64C

# .data:0x28D8 | 0x8165B668 | size: 0x18
.obj lbl_8165B668, global
	.4byte 0x505F6B65
	.4byte 0x795F5348
	.4byte 0x49465400
	.4byte 0x425F6B65
	.4byte 0x795F4341
	.4byte 0x50530000
.endobj lbl_8165B668

# .data:0x28F0 | 0x8165B680 | size: 0x6C
.obj lbl_8165B680, global
	.4byte 0x505F6B65
	.4byte 0x795F4341
	.4byte 0x50530000
	.4byte 0x545F4A50
	.4byte 0x5F43686E
	.4byte 0x675F7369
	.4byte 0x676E0000
	.4byte 0x545F5553
	.4byte 0x45555F43
	.4byte 0x686E675F
	.4byte 0x7369676E
	.4byte 0x00000000
	.4byte 0x545F6B65
	.4byte 0x795F5350
	.4byte 0x41434500
	.4byte 0x545F476B
	.4byte 0x65795F53
	.4byte 0x50414345
	.4byte 0x00000000
	.4byte 0x505F6B65
	.4byte 0x795F4845
	.4byte 0x4E4B414E
	.4byte 0x00000000
	.4byte 0x505F476B
	.4byte 0x65795F48
	.4byte 0x454E4B41
	.4byte 0x4E000000
.endobj lbl_8165B680

# .data:0x295C | 0x8165B6EC | size: 0xC
.obj lbl_8165B6EC, global
	.4byte 0x505F6869
	.4byte 0x72616761
	.4byte 0x6E610000
.endobj lbl_8165B6EC

# .data:0x2968 | 0x8165B6F8 | size: 0x94
.obj lbl_8165B6F8, global
	.4byte 0x505F6B61
	.4byte 0x74616B61
	.4byte 0x6E610000
	.4byte 0x505F476B
	.4byte 0x65795F64
	.4byte 0x616B7574
	.4byte 0x656E0000
	.4byte 0x505F476B
	.4byte 0x65795F68
	.4byte 0x616E6461
	.4byte 0x6B750000
	.4byte 0x505F476B
	.4byte 0x65795F6B
	.4byte 0x6F6D6F6A
	.4byte 0x69000000
	.4byte 0x505F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x68697261
	.4byte 0x00000000
	.4byte 0x505F4D6F
	.4byte 0x64655F72
	.4byte 0x6F6D615F
	.4byte 0x6B617461
	.4byte 0x00000000
	.4byte 0x505F4D6F
	.4byte 0x64655F64
	.4byte 0x69726563
	.4byte 0x74000000
	.4byte 0x505F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F656E
	.4byte 0x67000000
	.4byte 0x505F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F6861
	.4byte 0x6E000000
.endobj lbl_8165B6F8

# .data:0x29FC | 0x8165B78C | size: 0x50
.obj jumptable_8165B78C, local
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413734
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_814134D0
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413614
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413750
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_814137B4
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A84
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_814138C4
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_8141396C
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413A10
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413818
	.rel onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv, .L_81413870
.endobj jumptable_8165B78C

# .data:0x2A4C | 0x8165B7DC | size: 0x30
.obj jumptable_8165B7DC, local
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_8141401C
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_81413F28
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_8141401C
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_81413F28
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_81413F44
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_81413F44
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_8141401C
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_8141401C
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_81413F44
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_8141401C
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_8141401C
	.rel cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv, .L_81413F28
.endobj jumptable_8165B7DC

# .data:0x2A7C | 0x8165B80C | size: 0x2C
.obj gap_08_8165B80C_data, global
.hidden gap_08_8165B80C_data
	.4byte 0x505F7072
	.4byte 0x64635F4F
	.4byte 0x4E000000
	.4byte 0x505F7072
	.4byte 0x64635F4F
	.4byte 0x46460000
	.4byte 0x545F5553
	.4byte 0x45555F70
	.4byte 0x7264635F
	.4byte 0x6C616E67
	.4byte 0x00000000
.endobj gap_08_8165B80C_data

# .data:0x2AA8 | 0x8165B838 | size: 0xC
.obj lbl_8165B838, global
	.4byte 0x505F6B65
	.4byte 0x795F4C46
	.4byte 0x00000000
.endobj lbl_8165B838

# .data:0x2AB4 | 0x8165B844 | size: 0xC
.obj lbl_8165B844, global
	.4byte 0x505F476B
	.4byte 0x65795F4C
	.4byte 0x46000000
.endobj lbl_8165B844

# .data:0x2AC0 | 0x8165B850 | size: 0x14
.obj lbl_8165B850, global
	.4byte 0x575F5553
	.4byte 0x45555F70
	.4byte 0x7264635F
	.4byte 0x6C616E67
	.4byte 0x00000000
.endobj lbl_8165B850

# .data:0x2AD4 | 0x8165B864 | size: 0x14
.obj lbl_8165B864, global
	.4byte 0x575F5553
	.4byte 0x45555F43
	.4byte 0x686E675F
	.4byte 0x7369676E
	.4byte 0x00000000
.endobj lbl_8165B864

# .data:0x2AE8 | 0x8165B878 | size: 0xCC
.obj lbl_8165B878, global
	.4byte 0x575F4A50
	.4byte 0x5F43686E
	.4byte 0x675F7369
	.4byte 0x676E0000
	.4byte 0x505F726F
	.4byte 0x6D616A69
	.4byte 0x426F7800
	.4byte 0x505F6861
	.4byte 0x6E67756C
	.4byte 0x426F7800
	.4byte 0x505F6B65
	.4byte 0x795F3432
	.4byte 0x00000000
	.4byte 0x505F6B65
	.4byte 0x795F3433
	.4byte 0x00000000
	.4byte 0x505F6B65
	.4byte 0x795F4445
	.4byte 0x4C455445
	.4byte 0x00000000
	.4byte 0x505F6B65
	.4byte 0x795F5350
	.4byte 0x41434500
	.4byte 0x4E5F564B
	.4byte 0x5F677269
	.4byte 0x64000000
	.4byte 0x4E5F564B
	.4byte 0x5F677264
	.4byte 0x5F426E64
	.4byte 0x5F414C4C
	.4byte 0x00000000
	.4byte 0x4E5F564B
	.4byte 0x5F617363
	.4byte 0x69690000
	.4byte 0x4E5F564B
	.4byte 0x5F617363
	.4byte 0x5F426E64
	.4byte 0x5F414C4C
	.4byte 0x00000000
	.4byte 0x545F4A50
	.4byte 0x5F43686E
	.4byte 0x675F4B41
	.4byte 0x4E410000
	.4byte 0x505F476B
	.4byte 0x65795F44
	.4byte 0x454C4554
	.4byte 0x45000000
	.4byte 0x505F476B
	.4byte 0x65795F53
	.4byte 0x50414345
	.4byte 0x00000000
.endobj lbl_8165B878

# .data:0x2BB4 | 0x8165B944 | size: 0x44
.obj jumptable_8165B944, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415D10
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415D50
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415DF0
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415DB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415E50
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415F0C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415EB0
.endobj jumptable_8165B944

# .data:0x2BF8 | 0x8165B988 | size: 0x2C
.obj jumptable_8165B988, local
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F48
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F50
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F48
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F50
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F50
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F50
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F48
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F50
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F50
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F48
	.rel isFocused__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneCFv, .L_81415F48
.endobj jumptable_8165B988

# .data:0x2C24 | 0x8165B9B4 | size: 0x30
.obj jumptable_8165B9B4, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416290
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416394
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416334
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416274
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814162F4
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416354
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814162D4
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
.endobj jumptable_8165B9B4

# .data:0x2C54 | 0x8165B9E4 | size: 0x30
.obj jumptable_8165B9E4, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8141614C
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416170
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814161D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814161B0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416130
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416110
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814163D0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416210
.endobj jumptable_8165B9E4

# .data:0x2C84 | 0x8165BA14 | size: 0x2C
.obj jumptable_8165BA14, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416028
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416030
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416028
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416030
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416030
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416030
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416028
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416030
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416030
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416028
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416028
.endobj jumptable_8165BA14

# .data:0x2CB0 | 0x8165BA40 | size: 0x2C
.obj jumptable_8165BA40, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FA8
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FA8
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FA8
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FB0
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FA8
	.rel onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81415FA8
.endobj jumptable_8165BA40

# .data:0x2CDC | 0x8165BA6C | size: 0x1C
.obj jumptable_8165BA6C, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416458
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8141647C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814164E4
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814164C0
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416528
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8141656C
	.rel onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8141654C
.endobj jumptable_8165BA6C

# .data:0x2CF8 | 0x8165BA88 | size: 0x3C
.obj jumptable_8165BA88, local
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416714
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8141677C
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416758
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814167C0
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416800
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81416688
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814166CC
	.rel onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814166F0
.endobj jumptable_8165BA88

# .data:0x2D34 | 0x8165BAC4 | size: 0x10
.obj lbl_8165BAC4, global
	.4byte 0x425F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F656E
	.4byte 0x67000000
.endobj lbl_8165BAC4

# .data:0x2D44 | 0x8165BAD4 | size: 0x68
.obj lbl_8165BAD4, global
	.4byte 0x425F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F6861
	.4byte 0x6E000000
	.4byte 0x545F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F656E
	.4byte 0x67000000
	.4byte 0x545F4D6F
	.4byte 0x64655F6B
	.4byte 0x725F6861
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x4E5F6D6F
	.4byte 0x64655365
	.4byte 0x6C656374
	.4byte 0x5F6B7200
	.4byte 0x545F4D6F
	.4byte 0x64655F64
	.4byte 0x69726563
	.4byte 0x74000000
	.4byte 0x545F4D6F
	.4byte 0x64655F63
	.4byte 0x6E5F7069
	.4byte 0x6E79696E
	.4byte 0x00000000
.endobj lbl_8165BAD4

# .data:0x2DAC | 0x8165BB3C | size: 0xC
.obj lbl_8165BB3C, global
	.4byte 0xC35B0000
	.4byte 0xC3020000
	.4byte 0x00000000
.endobj lbl_8165BB3C

# .data:0x2DB8 | 0x8165BB48 | size: 0xC
.obj lbl_8165BB48, global
	.4byte 0xC3510000
	.4byte 0xC2B40000
	.4byte 0x00000000
.endobj lbl_8165BB48

# .data:0x2DC4 | 0x8165BB54 | size: 0x2C
# textinput::keyboard::pctype::OnOffButtonAnmPane::__vtable
.obj __vt__Q49textinput8keyboard6pctype18OnOffButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard6pctype7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard6pctype18OnOffButtonAnmPaneFv
	.4byte getState__Q49textinput8keyboard6pctype7AnmPaneCFv
	.4byte getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard6pctype18OnOffButtonAnmPane

# .data:0x2DF0 | 0x8165BB80 | size: 0x2C
# textinput::keyboard::pctype::ToggleButtonAnmPane::__vtable
.obj __vt__Q49textinput8keyboard6pctype19ToggleButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard6pctype7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard6pctype19ToggleButtonAnmPaneFv
	.4byte getState__Q49textinput8keyboard6pctype7AnmPaneCFv
	.4byte getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard6pctype19ToggleButtonAnmPane

# .data:0x2E1C | 0x8165BBAC | size: 0x2C
# textinput::keyboard::pctype::ShiftCapsAnmPane::__vtable
.obj __vt__Q49textinput8keyboard6pctype16ShiftCapsAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard6pctype7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard6pctype16ShiftCapsAnmPaneFv
	.4byte getState__Q49textinput8keyboard6pctype7AnmPaneCFv
	.4byte getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard6pctype16ShiftCapsAnmPane

# .data:0x2E48 | 0x8165BBD8 | size: 0x2C
# textinput::keyboard::pctype::NormalButtonAnmPane::__vtable
.obj __vt__Q49textinput8keyboard6pctype19NormalButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard6pctype7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard6pctype19NormalButtonAnmPaneFv
	.4byte getState__Q49textinput8keyboard6pctype7AnmPaneCFv
	.4byte getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard6pctype19NormalButtonAnmPane

# .data:0x2E74 | 0x8165BC04 | size: 0x2C
# textinput::keyboard::pctype::AnmPane::__vtable
.obj __vt__Q49textinput8keyboard6pctype7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard6pctype7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard6pctype7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard6pctype7AnmPaneFv
	.4byte getState__Q49textinput8keyboard6pctype7AnmPaneCFv
	.4byte getKeyType__Q49textinput8keyboard6pctype7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard6pctype7AnmPane

# .data:0x2EA0 | 0x8165BC30 | size: 0x15C
# textinput::keyboard::pctype::LayoutByNW4R::__vtable
.obj __vt__Q49textinput8keyboard6pctype12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte create__Q49textinput8keyboard6pctype12LayoutByNW4RFP12MEMAllocator
	.4byte init__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv
	.4byte onKey__Q49textinput8keyboard6pctype12LayoutByNW4RFUlPv
	.4byte getType__Q49textinput8keyboard6pctype4BaseFv
	.4byte setLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFQ29textinput8Language
	.4byte getLanguage__Q39textinput8keyboard12KeyboardBaseCFv
	.4byte update__Q39textinput8keyboard12KeyboardBaseFv
	.4byte onActive__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte inputCharCode__Q49textinput8keyboard6pctype12LayoutByNW4RFw
	.4byte getState__Q49textinput8keyboard6pctype4BaseFv
	.4byte isShiftOn__Q49textinput8keyboard6pctype4BaseCFv
	.4byte isCapsOn__Q49textinput8keyboard6pctype4BaseCFv
	.4byte isABC__Q49textinput8keyboard6pctype4BaseFv
	.4byte setABC__Q49textinput8keyboard6pctype12LayoutByNW4RFb
	.4byte getABCInputMode__Q49textinput8keyboard6pctype4BaseCFv
	.4byte getAIUInputMode__Q49textinput8keyboard6pctype4BaseCFv
	.4byte getTranslateMode__Q49textinput8keyboard6pctype4BaseCFv
	.4byte setTranslateMode__Q49textinput8keyboard6pctype12LayoutByNW4RFQ59textinput8keyboard6pctype4Base13TranslateMode
	.4byte onlyQwerty__Q49textinput8keyboard6pctype12LayoutByNW4RFb
	.4byte setLangKeyActive__Q49textinput8keyboard6pctype12LayoutByNW4RFb
	.4byte setInputModeJP__Q49textinput8keyboard6pctype12LayoutByNW4RFbUlUl
	.4byte setInputModeCK__Q49textinput8keyboard6pctype12LayoutByNW4RFUl
	.4byte refreshState__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte changeABCInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode
	.4byte changeAIUInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode
	.4byte onClose__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte getWCCode__Q49textinput8keyboard6pctype4BaseFPc
	.4byte getControlKey__Q49textinput8keyboard6pctype4BaseFPc
	.4byte sendInputWChar__Q49textinput8keyboard6pctype12LayoutByNW4RFwb
	.4byte goSignInputMode__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte changePredictLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte updateFixMode__Q49textinput8keyboard6pctype4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@68@__dt__Q49textinput8keyboard6pctype12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@68@init__Q49textinput8keyboard6pctype12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@68@draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv"
	.4byte "@68@calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv"
	.4byte "@68@updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv"
	.4byte "@68@updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager"
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
	.4byte setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
	.4byte setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv
	.4byte setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane
	.4byte initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv
	.4byte setVisible__Q39textinput11nw4rmanager6LayoutFPCcb
	.4byte isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb
	.4byte setString__Q39textinput11nw4rmanager6LayoutFPCcPCw
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFw
	.4byte getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34
	.4byte createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@236@onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5"
	.4byte draw__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte calc__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte setPredictLanguageDialog__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ39textinput11predictlang12LayoutByNW4R
	.4byte setSignWindow__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard10signwindow12LayoutByNW4R
	.4byte setLineFeedButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb
	.4byte setPredictLanguageButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb
	.4byte setSignWindowButton__Q49textinput8keyboard6pctype12LayoutByNW4RFb
	.4byte updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFiffUlUlUlPv
	.4byte updateInput__Q49textinput8keyboard6pctype12LayoutByNW4RFRQ39textinput5input10HKBManager
	.4byte changeAnimationAllToNormal__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte throwReleaseForAll__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte cancelStateFocusIn__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte updatePredictLanguage__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ39textinput15CommandReceiver17ChangePredictMode
	.4byte updateDakuten__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte initLayout__Q49textinput8keyboard6pctype12LayoutByNW4RFv
	.4byte onEvent__Q49textinput8keyboard6pctype12LayoutByNW4RFPQ49textinput8keyboard6pctype5UIObjUlPv
.endobj __vt__Q49textinput8keyboard6pctype12LayoutByNW4R

# .data:0x2FFC | 0x8165BD8C | size: 0x1C
# textinput::keyboard::pctype::UIModePanel::__vtable
.obj __vt__Q49textinput8keyboard6pctype11UIModePanel, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard6pctype11UIModePanelFv
	.4byte onEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q49textinput8keyboard6pctype11UIModePanelFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
.endobj __vt__Q49textinput8keyboard6pctype11UIModePanel

# .data:0x3018 | 0x8165BDA8 | size: 0x1C
# textinput::keyboard::pctype::UIModifierButton::__vtable
.obj __vt__Q49textinput8keyboard6pctype16UIModifierButton, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard6pctype16UIModifierButtonFv
	.4byte onEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q49textinput8keyboard6pctype16UIModifierButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
.endobj __vt__Q49textinput8keyboard6pctype16UIModifierButton

# .data:0x3034 | 0x8165BDC4 | size: 0x1C
# textinput::keyboard::pctype::UIObj::__vtable
.obj __vt__Q49textinput8keyboard6pctype5UIObj, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard6pctype5UIObjFv
	.4byte onEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q49textinput8keyboard6pctype5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
.endobj __vt__Q49textinput8keyboard6pctype5UIObj

# .data:0x3050 | 0x8165BDE0 | size: 0x20
# textinput::keyboard::pctype::EventHandler::__vtable
.obj __vt__Q49textinput8keyboard6pctype12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard6pctype12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q49textinput8keyboard6pctype12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q49textinput8keyboard6pctype12EventHandler

# .data:0x3070 | 0x8165BE00 | size: 0x98
# textinput::keyboard::pctype::Base::__vtable
.obj __vt__Q49textinput8keyboard6pctype4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard6pctype4BaseFv
	.4byte create__Q49textinput8keyboard6pctype4BaseFP12MEMAllocator
	.4byte init__Q49textinput8keyboard6pctype4BaseFv
	.4byte setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q49textinput8keyboard6pctype4BaseFUlPv
	.4byte onKey__Q49textinput8keyboard6pctype4BaseFUlPv
	.4byte getType__Q49textinput8keyboard6pctype4BaseFv
	.4byte setLanguage__Q49textinput8keyboard6pctype4BaseFQ29textinput8Language
	.4byte getLanguage__Q39textinput8keyboard12KeyboardBaseCFv
	.4byte update__Q39textinput8keyboard12KeyboardBaseFv
	.4byte onActive__Q49textinput8keyboard6pctype4BaseFv
	.4byte inputCharCode__Q49textinput8keyboard6pctype4BaseFw
	.4byte getState__Q49textinput8keyboard6pctype4BaseFv
	.4byte isShiftOn__Q49textinput8keyboard6pctype4BaseCFv
	.4byte isCapsOn__Q49textinput8keyboard6pctype4BaseCFv
	.4byte isABC__Q49textinput8keyboard6pctype4BaseFv
	.4byte setABC__Q49textinput8keyboard6pctype4BaseFb
	.4byte getABCInputMode__Q49textinput8keyboard6pctype4BaseCFv
	.4byte getAIUInputMode__Q49textinput8keyboard6pctype4BaseCFv
	.4byte getTranslateMode__Q49textinput8keyboard6pctype4BaseCFv
	.4byte setTranslateMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base13TranslateMode
	.4byte onlyQwerty__Q49textinput8keyboard6pctype4BaseFb
	.4byte setLangKeyActive__Q49textinput8keyboard6pctype4BaseFb
	.4byte setInputModeJP__Q49textinput8keyboard6pctype4BaseFbUlUl
	.4byte setInputModeCK__Q49textinput8keyboard6pctype4BaseFUl
	.4byte refreshState__Q49textinput8keyboard6pctype4BaseFv
	.4byte changeABCInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode
	.4byte changeAIUInputMode__Q49textinput8keyboard6pctype4BaseFQ59textinput8keyboard6pctype4Base9InputMode
	.4byte onClose__Q49textinput8keyboard6pctype4BaseFv
	.4byte getWCCode__Q49textinput8keyboard6pctype4BaseFPc
	.4byte getControlKey__Q49textinput8keyboard6pctype4BaseFPc
	.4byte sendInputWChar__Q49textinput8keyboard6pctype4BaseFwb
	.4byte goSignInputMode__Q49textinput8keyboard6pctype4BaseFv
	.4byte changePredictLanguage__Q49textinput8keyboard6pctype4BaseFv
	.4byte updateFixMode__Q49textinput8keyboard6pctype4BaseFv
.endobj __vt__Q49textinput8keyboard6pctype4Base

# .data:0x3108 | 0x8165BE98 | size: 0x18
# textinput::gui::EventHandler::__vtable
.obj __vt__Q39textinput3gui12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput3gui12EventHandlerFv
	.4byte onEvent__Q39textinput3gui12EventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
.endobj __vt__Q39textinput3gui12EventHandler

# 0x81694D18..0x81694D20 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694D18 | size: 0x4
.obj lbl_81694D18, global
	.4byte 0x00000001
.endobj lbl_81694D18

# .sdata2:0x4 | 0x81694D1C | size: 0x4
.obj lbl_81694D1C, global
	.4byte 0x00000002
.endobj lbl_81694D1C

# 0x816972A0..0x81697328 | size: 0x88
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816972A0 | size: 0x8
.obj lbl_816972A0, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816972A0

# .sdata:0x8 | 0x816972A8 | size: 0x8
.obj lbl_816972A8, global
	.string16 "Eng"
.endobj lbl_816972A8

# .sdata:0x10 | 0x816972B0 | size: 0x8
.obj lbl_816972B0, global
	.string16 "Fra"
.endobj lbl_816972B0

# .sdata:0x18 | 0x816972B8 | size: 0x8
.obj lbl_816972B8, global
	.string16 "Esp"
.endobj lbl_816972B8

# .sdata:0x20 | 0x816972C0 | size: 0x8
.obj lbl_816972C0, global
	.4byte 0x0045004E
	.4byte 0x00000000
.endobj lbl_816972C0

# .sdata:0x28 | 0x816972C8 | size: 0x8
.obj lbl_816972C8, global
	.4byte 0x00440045
	.4byte 0x00000000
.endobj lbl_816972C8

# .sdata:0x30 | 0x816972D0 | size: 0x8
.obj lbl_816972D0, global
	.4byte 0x00460052
	.4byte 0x00000000
.endobj lbl_816972D0

# .sdata:0x38 | 0x816972D8 | size: 0x8
.obj lbl_816972D8, global
	.4byte 0x00450053
	.4byte 0x00000000
.endobj lbl_816972D8

# .sdata:0x40 | 0x816972E0 | size: 0x8
.obj lbl_816972E0, global
	.4byte 0x00490054
	.4byte 0x00000000
.endobj lbl_816972E0

# .sdata:0x48 | 0x816972E8 | size: 0x8
.obj lbl_816972E8, global
	.4byte 0x004E004C
	.4byte 0x00000000
.endobj lbl_816972E8

# .sdata:0x50 | 0x816972F0 | size: 0x8
.obj lbl_816972F0, global
	.4byte 0x0043004E
	.4byte 0x00000000
.endobj lbl_816972F0

# .sdata:0x58 | 0x816972F8 | size: 0x8
.obj lbl_816972F8, global
	.4byte 0x004B0052
	.4byte 0x00000000
.endobj lbl_816972F8

# .sdata:0x60 | 0x81697300 | size: 0x4
.obj lbl_81697300, global
	.4byte lbl_81659034
.endobj lbl_81697300

# .sdata:0x64 | 0x81697304 | size: 0x4
.obj lbl_81697304, global
	.4byte 0x00000000
.endobj lbl_81697304

# .sdata:0x68 | 0x81697308 | size: 0x8
.obj lbl_81697308, global
	.4byte 0x30423044
	.4byte 0x30460000
.endobj lbl_81697308

# .sdata:0x70 | 0x81697310 | size: 0x8
.obj lbl_81697310, global
	.4byte 0x30A230A4
	.4byte 0x30A60000
.endobj lbl_81697310

# .sdata:0x78 | 0x81697318 | size: 0x8
.obj lbl_81697318, global
	.4byte 0x43686E67
	.4byte 0x00000000
.endobj lbl_81697318

# .sdata:0x80 | 0x81697320 | size: 0x8
.obj lbl_81697320, global
	.4byte 0x70726463
	.4byte 0x00000000
.endobj lbl_81697320

# 0x81698CF8..0x81698D00 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698CF8 | size: 0x1
.obj lbl_81698CF8, global
	.skip 0x1
.endobj lbl_81698CF8

# .sbss:0x1 | 0x81698CF9 | size: 0x3
.obj gap_12_81698CF9_sbss, global
.hidden gap_12_81698CF9_sbss
	.skip 0x3
.endobj gap_12_81698CF9_sbss

# .sbss:0x4 | 0x81698CFC | size: 0x1
.obj lbl_81698CFC, global
	.skip 0x1
.endobj lbl_81698CFC

# .sbss:0x5 | 0x81698CFD | size: 0x3
.obj gap_12_81698CFD_sbss, global
.hidden gap_12_81698CFD_sbss
	.skip 0x3
.endobj gap_12_81698CFD_sbss
