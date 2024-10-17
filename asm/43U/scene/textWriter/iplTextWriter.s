.include "macros.inc"
.file "iplTextWriter.cpp"

# 0x8140B3B0..0x8140CD54 | size: 0x19A4
.text
.balign 4

# .text:0x0 | 0x8140B3B0 | size: 0x14
# ipl::scene::InputFormObserver::onNigaoeButton()
.fn onNigaoeButton__Q33ipl5scene17InputFormObserverFv, global
/* 8140B3B0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B3B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B3B8 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8140B3BC | 7D 89 03 A6 */	mtctr r12
/* 8140B3C0 | 4E 80 04 20 */	bctr
.endfn onNigaoeButton__Q33ipl5scene17InputFormObserverFv

# .text:0x14 | 0x8140B3C4 | size: 0x14
# ipl::scene::InputFormObserver::pointNigaoeButton()
.fn pointNigaoeButton__Q33ipl5scene17InputFormObserverFv, global
/* 8140B3C4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B3C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B3CC | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8140B3D0 | 7D 89 03 A6 */	mtctr r12
/* 8140B3D4 | 4E 80 04 20 */	bctr
.endfn pointNigaoeButton__Q33ipl5scene17InputFormObserverFv

# .text:0x28 | 0x8140B3D8 | size: 0x14
# ipl::scene::InputFormObserver::leftNigaoeButton()
.fn leftNigaoeButton__Q33ipl5scene17InputFormObserverFv, global
/* 8140B3D8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B3DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B3E0 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8140B3E4 | 7D 89 03 A6 */	mtctr r12
/* 8140B3E8 | 4E 80 04 20 */	bctr
.endfn leftNigaoeButton__Q33ipl5scene17InputFormObserverFv

# .text:0x3C | 0x8140B3EC | size: 0x14
# ipl::scene::InputFormObserver::moveNigaoeButton()
.fn moveNigaoeButton__Q33ipl5scene17InputFormObserverFv, global
/* 8140B3EC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B3F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B3F4 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8140B3F8 | 7D 89 03 A6 */	mtctr r12
/* 8140B3FC | 4E 80 04 20 */	bctr
.endfn moveNigaoeButton__Q33ipl5scene17InputFormObserverFv

# .text:0x50 | 0x8140B400 | size: 0x1C
# ipl::scene::nigaoeMakeIcon(ipl::nigaoe::Object*, void*)
.fn nigaoeMakeIcon__Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv, global
/* 8140B400 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 8140B404 | 7C 60 1B 78 */	mr r0, r3
/* 8140B408 | 7C 83 23 78 */	mr r3, r4
/* 8140B40C | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8140B410 | 7C 04 03 78 */	mr r4, r0
/* 8140B414 | 7D 89 03 A6 */	mtctr r12
/* 8140B418 | 4E 80 04 20 */	bctr
.endfn nigaoeMakeIcon__Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv

# .text:0x6C | 0x8140B41C | size: 0x7C
# ipl::scene::TextWriter::TextWriter(EGG::Heap*)
.fn __ct__Q33ipl5scene10TextWriterFPQ23EGG4Heap, global
/* 8140B41C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B420 | 7C 08 02 A6 */	mflr r0
/* 8140B424 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B428 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B42C | 7C 7F 1B 78 */	mr r31, r3
/* 8140B430 | 4B FF FD D9 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 8140B434 | 3D 00 81 66 */	lis r8, lbl_81658A98@ha
/* 8140B438 | 39 20 00 00 */	li r9, 0x0
/* 8140B43C | 39 08 8A 98 */	addi r8, r8, lbl_81658A98@l
/* 8140B440 | 38 A0 FF FF */	li r5, -0x1
/* 8140B444 | 38 E8 00 1C */	addi r7, r8, 0x1c
/* 8140B448 | 38 80 00 01 */	li r4, 0x1
/* 8140B44C | 38 C8 00 68 */	addi r6, r8, 0x68
/* 8140B450 | 38 00 00 03 */	li r0, 0x3
/* 8140B454 | 91 3F 00 60 */	stw r9, 0x60(r31)
/* 8140B458 | 7F E3 FB 78 */	mr r3, r31
/* 8140B45C | 91 1F 00 00 */	stw r8, 0x0(r31)
/* 8140B460 | 90 FF 00 14 */	stw r7, 0x14(r31)
/* 8140B464 | 90 DF 00 58 */	stw r6, 0x58(r31)
/* 8140B468 | 91 3F 00 64 */	stw r9, 0x64(r31)
/* 8140B46C | 90 BF 00 6C */	stw r5, 0x6c(r31)
/* 8140B470 | 91 3F 00 70 */	stw r9, 0x70(r31)
/* 8140B474 | 99 3F 00 7C */	stb r9, 0x7c(r31)
/* 8140B478 | 98 9F 00 7D */	stb r4, 0x7d(r31)
/* 8140B47C | 91 3F 00 84 */	stw r9, 0x84(r31)
/* 8140B480 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 8140B484 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B488 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B48C | 7C 08 03 A6 */	mtlr r0
/* 8140B490 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B494 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10TextWriterFPQ23EGG4Heap

# .text:0xE8 | 0x8140B498 | size: 0x5C
# ipl::scene::TextWriter::~TextWriter()
.fn __dt__Q33ipl5scene10TextWriterFv, global
/* 8140B498 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B49C | 7C 08 02 A6 */	mflr r0
/* 8140B4A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B4A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B4A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B4AC | 7C 9F 23 78 */	mr r31, r4
/* 8140B4B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140B4B4 | 7C 7E 1B 78 */	mr r30, r3
/* 8140B4B8 | 41 82 00 20 */	beq .L_8140B4D8
/* 8140B4BC | 41 82 00 0C */	beq .L_8140B4C8
/* 8140B4C0 | 38 80 00 00 */	li r4, 0x0
/* 8140B4C4 | 4B FF E7 A1 */	bl __dt__Q33ipl5scene4BaseFv
.L_8140B4C8:
/* 8140B4C8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140B4CC | 40 81 00 0C */	ble .L_8140B4D8
/* 8140B4D0 | 7F C3 F3 78 */	mr r3, r30
/* 8140B4D4 | 48 1E CC 11 */	bl __dl__FPv
.L_8140B4D8:
/* 8140B4D8 | 7F C3 F3 78 */	mr r3, r30
/* 8140B4DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B4E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140B4E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B4E8 | 7C 08 03 A6 */	mtlr r0
/* 8140B4EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B4F0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10TextWriterFv

# .text:0x144 | 0x8140B4F4 | size: 0x60
# ipl::scene::TextWriter::destroy()
.fn destroy__Q33ipl5scene10TextWriterFv, global
/* 8140B4F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B4F8 | 7C 08 02 A6 */	mflr r0
/* 8140B4FC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8140B500 | 38 8D 92 48 */	li r4, lbl_81697288@sda21
/* 8140B504 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B508 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8140B50C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B510 | 7C 7F 1B 78 */	mr r31, r3
/* 8140B514 | 80 65 00 90 */	lwz r3, 0x90(r5)
/* 8140B518 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B51C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B520 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8140B524 | 7D 89 03 A6 */	mtctr r12
/* 8140B528 | 4E 80 04 21 */	bctrl
/* 8140B52C | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8140B530 | 38 80 00 01 */	li r4, 0x1
/* 8140B534 | 4B F3 39 DD */	bl __dt__Q33ipl6nigaoe6ObjectFv
/* 8140B538 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8140B53C | 48 1E CB A9 */	bl __dl__FPv
/* 8140B540 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B544 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B548 | 7C 08 03 A6 */	mtlr r0
/* 8140B54C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B550 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene10TextWriterFv

# .text:0x1A4 | 0x8140B554 | size: 0x4C
# ipl::scene::TextWriter::prepare()
.fn prepare__Q33ipl5scene10TextWriterFv, global
/* 8140B554 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B558 | 7C 08 02 A6 */	mflr r0
/* 8140B55C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140B560 | 3C A0 81 66 */	lis r5, lbl_81658998@ha
/* 8140B564 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B568 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140B56C | 38 A5 89 98 */	addi r5, r5, lbl_81658998@l
/* 8140B570 | 38 C0 00 00 */	li r6, 0x0
/* 8140B574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B578 | 7C 7F 1B 78 */	mr r31, r3
/* 8140B57C | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 8140B580 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8140B584 | 4B F3 23 31 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 8140B588 | 90 7F 00 98 */	stw r3, 0x98(r31)
/* 8140B58C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B590 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B594 | 7C 08 03 A6 */	mtlr r0
/* 8140B598 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B59C | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene10TextWriterFv

# .text:0x1F0 | 0x8140B5A0 | size: 0x35C
# ipl::scene::TextWriter::create()
.fn create__Q33ipl5scene10TextWriterFv, global
/* 8140B5A0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8140B5A4 | 7C 08 02 A6 */	mflr r0
/* 8140B5A8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140B5AC | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8140B5B0 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 8140B5B4 | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8140B5B8 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 8140B5BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140B5C0 | 48 1E DF 05 */	bl _savegpr_28
/* 8140B5C4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140B5C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140B5CC | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140B5D0 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 8140B5D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B5D8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140B5DC | 7D 89 03 A6 */	mtctr r12
/* 8140B5E0 | 4E 80 04 21 */	bctrl
/* 8140B5E4 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B5E8 | 38 80 00 00 */	li r4, 0x0
/* 8140B5EC | 38 A0 00 01 */	li r5, 0x1
/* 8140B5F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B5F4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8140B5F8 | 7D 89 03 A6 */	mtctr r12
/* 8140B5FC | 4E 80 04 21 */	bctrl
/* 8140B600 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B604 | 4B F4 AE 35 */	bl getZiSystemDic__Q33ipl8keyboard7ManagerFv
/* 8140B608 | 7C 7E 1B 78 */	mr r30, r3
/* 8140B60C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B610 | 4B F4 AE 35 */	bl getZiOemDic__Q33ipl8keyboard7ManagerFv
/* 8140B614 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140B618 | 7C 7C 1B 78 */	mr r28, r3
/* 8140B61C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140B620 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B624 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B628 | 7D 89 03 A6 */	mtctr r12
/* 8140B62C | 4E 80 04 21 */	bctrl
/* 8140B630 | 7C 7D 1B 78 */	mr r29, r3
/* 8140B634 | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 8140B638 | 7F C4 F3 78 */	mr r4, r30
/* 8140B63C | 7F 85 E3 78 */	mr r5, r28
/* 8140B640 | 48 02 88 91 */	bl openDictionary__Q39textinput8tistring6WithZiFPvPv
/* 8140B644 | 7F A3 EB 78 */	mr r3, r29
/* 8140B648 | 48 01 5B 2D */	bl initZiString__Q39textinput9inputform4BaseFv
/* 8140B64C | 7F A3 EB 78 */	mr r3, r29
/* 8140B650 | 48 01 94 9D */	bl resetContextPredict___Q39textinput9inputform4BaseFv
/* 8140B654 | 38 60 08 00 */	li r3, 0x800
/* 8140B658 | 48 1E CA 69 */	bl __nwa__FUl
/* 8140B65C | 90 7F 00 80 */	stw r3, 0x80(r31)
/* 8140B660 | 38 60 00 08 */	li r3, 0x8
/* 8140B664 | 48 1E CA 39 */	bl __nw__FUl
/* 8140B668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B66C | 41 82 00 14 */	beq .L_8140B680
/* 8140B670 | 3C 80 81 66 */	lis r4, lbl_81658B48@ha
/* 8140B674 | 38 84 8B 48 */	addi r4, r4, lbl_81658B48@l
/* 8140B678 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8140B67C | 93 E3 00 04 */	stw r31, 0x4(r3)
.L_8140B680:
/* 8140B680 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140B684 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 8140B688 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140B68C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B690 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B694 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B698 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B69C | 7D 89 03 A6 */	mtctr r12
/* 8140B6A0 | 4E 80 04 21 */	bctrl
/* 8140B6A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B6A8 | 80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8140B6AC | 81 8C 02 94 */	lwz r12, 0x294(r12)
/* 8140B6B0 | 7D 89 03 A6 */	mtctr r12
/* 8140B6B4 | 4E 80 04 21 */	bctrl
/* 8140B6B8 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8140B6BC | 38 80 00 85 */	li r4, 0x85
/* 8140B6C0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140B6C4 | 4B F3 30 F9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8140B6C8 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140B6CC | 7C 7E 1B 78 */	mr r30, r3
/* 8140B6D0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140B6D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B6D8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B6DC | 7D 89 03 A6 */	mtctr r12
/* 8140B6E0 | 4E 80 04 21 */	bctrl
/* 8140B6E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B6E8 | 7F C4 F3 78 */	mr r4, r30
/* 8140B6EC | 81 8C 02 60 */	lwz r12, 0x260(r12)
/* 8140B6F0 | 7D 89 03 A6 */	mtctr r12
/* 8140B6F4 | 4E 80 04 21 */	bctrl
/* 8140B6F8 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8140B6FC | 38 80 00 8B */	li r4, 0x8b
/* 8140B700 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140B704 | 4B F3 30 B9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8140B708 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140B70C | 7C 7E 1B 78 */	mr r30, r3
/* 8140B710 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140B714 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B718 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B71C | 7D 89 03 A6 */	mtctr r12
/* 8140B720 | 4E 80 04 21 */	bctrl
/* 8140B724 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B728 | 7F C4 F3 78 */	mr r4, r30
/* 8140B72C | 81 8C 02 64 */	lwz r12, 0x264(r12)
/* 8140B730 | 7D 89 03 A6 */	mtctr r12
/* 8140B734 | 4E 80 04 21 */	bctrl
/* 8140B738 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8140B73C | 38 80 00 8C */	li r4, 0x8c
/* 8140B740 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140B744 | 4B F3 30 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8140B748 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140B74C | 7C 7E 1B 78 */	mr r30, r3
/* 8140B750 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140B754 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B758 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B75C | 7D 89 03 A6 */	mtctr r12
/* 8140B760 | 4E 80 04 21 */	bctrl
/* 8140B764 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B768 | 7F C4 F3 78 */	mr r4, r30
/* 8140B76C | 81 8C 02 68 */	lwz r12, 0x268(r12)
/* 8140B770 | 7D 89 03 A6 */	mtctr r12
/* 8140B774 | 4E 80 04 21 */	bctrl
/* 8140B778 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B77C | 38 8D 92 48 */	li r4, lbl_81697288@sda21
/* 8140B780 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B784 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B788 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8140B78C | 7D 89 03 A6 */	mtctr r12
/* 8140B790 | 4E 80 04 21 */	bctrl
/* 8140B794 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B798 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B79C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B7A0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B7A4 | 7D 89 03 A6 */	mtctr r12
/* 8140B7A8 | 4E 80 04 21 */	bctrl
/* 8140B7AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B7B0 | 81 8C 02 78 */	lwz r12, 0x278(r12)
/* 8140B7B4 | 7D 89 03 A6 */	mtctr r12
/* 8140B7B8 | 4E 80 04 21 */	bctrl
/* 8140B7BC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140B7C0 | 7F FE FB 78 */	mr r30, r31
/* 8140B7C4 | 41 82 00 08 */	beq .L_8140B7CC
/* 8140B7C8 | 3B DF 00 58 */	addi r30, r31, 0x58
.L_8140B7CC:
/* 8140B7CC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140B7D0 | 38 80 00 05 */	li r4, 0x5
/* 8140B7D4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140B7D8 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140B7DC | 4B FF F9 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140B7E0 | 7F C4 F3 78 */	mr r4, r30
/* 8140B7E4 | 38 A0 00 00 */	li r5, 0x0
/* 8140B7E8 | 4B F9 11 55 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140B7EC | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B7F0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B7F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B7F8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B7FC | 7D 89 03 A6 */	mtctr r12
/* 8140B800 | 4E 80 04 21 */	bctrl
/* 8140B804 | 3B C0 00 00 */	li r30, 0x0
/* 8140B808 | 9B C3 03 F0 */	stb r30, 0x3f0(r3)
/* 8140B80C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B810 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B814 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B818 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8140B81C | 7D 89 03 A6 */	mtctr r12
/* 8140B820 | 4E 80 04 21 */	bctrl
/* 8140B824 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140B828 | 38 80 FF FF */	li r4, -0x1
/* 8140B82C | 38 00 00 01 */	li r0, 0x1
/* 8140B830 | 9B C3 00 2C */	stb r30, 0x2c(r3)
/* 8140B834 | 38 60 00 3C */	li r3, 0x3c
/* 8140B838 | 90 9F 00 6C */	stw r4, 0x6c(r31)
/* 8140B83C | 93 DF 00 70 */	stw r30, 0x70(r31)
/* 8140B840 | 9B DF 00 7C */	stb r30, 0x7c(r31)
/* 8140B844 | 98 1F 00 7D */	stb r0, 0x7d(r31)
/* 8140B848 | 93 DF 00 84 */	stw r30, 0x84(r31)
/* 8140B84C | 48 1E C8 51 */	bl __nw__FUl
/* 8140B850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B854 | 7C 7D 1B 78 */	mr r29, r3
/* 8140B858 | 41 82 00 50 */	beq .L_8140B8A8
/* 8140B85C | C0 22 88 90 */	lfs f1, lbl_81694C90@sda21(r0)
/* 8140B860 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140B864 | C3 E2 88 88 */	lfs f31, lbl_81694C88@sda21(r0)
/* 8140B868 | FC 40 08 90 */	fmr f2, f1
/* 8140B86C | C3 C2 88 8C */	lfs f30, lbl_81694C8C@sda21(r0)
/* 8140B870 | FC 60 08 90 */	fmr f3, f1
/* 8140B874 | 83 DF 00 24 */	lwz r30, 0x24(r31)
/* 8140B878 | 4B F5 71 E5 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8140B87C | FC 20 F0 90 */	fmr f1, f30
/* 8140B880 | 3C E0 81 66 */	lis r7, lbl_816589A4@ha
/* 8140B884 | FC 40 F8 90 */	fmr f2, f31
/* 8140B888 | 80 BF 00 98 */	lwz r5, 0x98(r31)
/* 8140B88C | 7C 68 1B 78 */	mr r8, r3
/* 8140B890 | 7F A3 EB 78 */	mr r3, r29
/* 8140B894 | 7F C4 F3 78 */	mr r4, r30
/* 8140B898 | 38 E7 89 A4 */	addi r7, r7, lbl_816589A4@l
/* 8140B89C | 38 CD 92 4A */	li r6, lbl_8169728A@sda21
/* 8140B8A0 | 4B FC 5B 6D */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 8140B8A4 | 7C 7D 1B 78 */	mr r29, r3
.L_8140B8A8:
/* 8140B8A8 | 93 BF 00 94 */	stw r29, 0x94(r31)
/* 8140B8AC | 38 60 00 20 */	li r3, 0x20
/* 8140B8B0 | 48 1E C7 ED */	bl __nw__FUl
/* 8140B8B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B8B8 | 7C 7D 1B 78 */	mr r29, r3
/* 8140B8BC | 41 82 00 14 */	beq .L_8140B8D0
/* 8140B8C0 | 4B F5 7C D1 */	bl __ct__Q33ipl7utility9BScrollerFv
/* 8140B8C4 | 3C 60 81 64 */	lis r3, __vt__Q33ipl7utility14YoungBScroller@ha
/* 8140B8C8 | 38 63 12 78 */	addi r3, r3, __vt__Q33ipl7utility14YoungBScroller@l
/* 8140B8CC | 90 7D 00 00 */	stw r3, 0x0(r29)
.L_8140B8D0:
/* 8140B8D0 | 93 BF 00 9C */	stw r29, 0x9c(r31)
/* 8140B8D4 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 8140B8D8 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8140B8DC | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 8140B8E0 | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8140B8E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140B8E8 | 48 1E DC 29 */	bl _restgpr_28
/* 8140B8EC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140B8F0 | 7C 08 03 A6 */	mtlr r0
/* 8140B8F4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140B8F8 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene10TextWriterFv

# .text:0x54C | 0x8140B8FC | size: 0x5C
# ipl::scene::TextWriter::draw()
.fn draw__Q33ipl5scene10TextWriterFv, global
/* 8140B8FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B900 | 7C 08 02 A6 */	mflr r0
/* 8140B904 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140B908 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B90C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140B910 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B914 | 7C 7F 1B 78 */	mr r31, r3
/* 8140B918 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 8140B91C | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 8140B920 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140B924 | 40 82 00 20 */	bne .L_8140B944
/* 8140B928 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 8140B92C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B930 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8140B934 | 7D 89 03 A6 */	mtctr r12
/* 8140B938 | 4E 80 04 21 */	bctrl
/* 8140B93C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 8140B940 | 4B FC 5C B9 */	bl draw__Q33ipl5scene11TextBalloonFv
.L_8140B944:
/* 8140B944 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B948 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B94C | 7C 08 03 A6 */	mtlr r0
/* 8140B950 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B954 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene10TextWriterFv

# .text:0x5A8 | 0x8140B958 | size: 0x54
# ipl::scene::TextWriter::calcFadein()
.fn calcFadein__Q33ipl5scene10TextWriterFv, global
/* 8140B958 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B95C | 7C 08 02 A6 */	mflr r0
/* 8140B960 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140B964 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B968 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140B96C | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140B970 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B974 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B978 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B97C | 7D 89 03 A6 */	mtctr r12
/* 8140B980 | 4E 80 04 21 */	bctrl
/* 8140B984 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B988 | 81 8C 02 5C */	lwz r12, 0x25c(r12)
/* 8140B98C | 7D 89 03 A6 */	mtctr r12
/* 8140B990 | 4E 80 04 21 */	bctrl
/* 8140B994 | 7C 60 00 34 */	cntlzw r0, r3
/* 8140B998 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8140B99C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B9A0 | 7C 08 03 A6 */	mtlr r0
/* 8140B9A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B9A8 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene10TextWriterFv

# .text:0x5FC | 0x8140B9AC | size: 0x18
# ipl::scene::TextWriter::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene10TextWriterFv, global
/* 8140B9AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140B9B0 | 38 00 00 01 */	li r0, 0x1
/* 8140B9B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140B9B8 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140B9BC | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 8140B9C0 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene10TextWriterFv

# .text:0x614 | 0x8140B9C4 | size: 0x7DC
# ipl::scene::TextWriter::calcNormal()
.fn calcNormal__Q33ipl5scene10TextWriterFv, global
/* 8140B9C4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8140B9C8 | 7C 08 02 A6 */	mflr r0
/* 8140B9CC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140B9D0 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8140B9D4 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 8140B9D8 | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8140B9DC | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 8140B9E0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140B9E4 | 48 1E DA E1 */	bl _savegpr_28
/* 8140B9E8 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8140B9EC | 7C 7F 1B 78 */	mr r31, r3
/* 8140B9F0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140B9F4 | 40 82 00 68 */	bne .L_8140BA5C
/* 8140B9F8 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140B9FC | 38 80 00 1C */	li r4, 0x1c
/* 8140BA00 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140BA04 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BA08 | 4B FF F7 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BA0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BA10 | 40 82 00 4C */	bne .L_8140BA5C
/* 8140BA14 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BA18 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 8140BA1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140BA20 | 40 82 00 3C */	bne .L_8140BA5C
/* 8140BA24 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BA28 | 38 00 00 01 */	li r0, 0x1
/* 8140BA2C | 38 80 00 05 */	li r4, 0x5
/* 8140BA30 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 8140BA34 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BA38 | 4B FF F7 01 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BA3C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140BA40 | 7F E4 FB 78 */	mr r4, r31
/* 8140BA44 | 41 82 00 08 */	beq .L_8140BA4C
/* 8140BA48 | 38 9F 00 58 */	addi r4, r31, 0x58
.L_8140BA4C:
/* 8140BA4C | 38 A0 00 00 */	li r5, 0x0
/* 8140BA50 | 4B F9 0E ED */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140BA54 | 38 00 00 00 */	li r0, 0x0
/* 8140BA58 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8140BA5C:
/* 8140BA5C | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8140BA60 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140BA64 | 40 82 00 64 */	bne .L_8140BAC8
/* 8140BA68 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140BA6C | 38 80 00 1C */	li r4, 0x1c
/* 8140BA70 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140BA74 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BA78 | 4B FF F6 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BA7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BA80 | 41 82 00 40 */	beq .L_8140BAC0
/* 8140BA84 | 80 E3 02 3C */	lwz r7, 0x23c(r3)
/* 8140BA88 | 2C 07 FF FF */	cmpwi r7, -0x1
/* 8140BA8C | 41 82 00 34 */	beq .L_8140BAC0
/* 8140BA90 | 80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8140BA94 | 7C 07 00 00 */	cmpw r7, r0
/* 8140BA98 | 41 82 00 28 */	beq .L_8140BAC0
/* 8140BA9C | 90 FF 00 6C */	stw r7, 0x6c(r31)
/* 8140BAA0 | 3D 00 81 41 */	lis r8, nigaoeMakeIcon__Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv@ha
/* 8140BAA4 | 7F E9 FB 78 */	mr r9, r31
/* 8140BAA8 | 38 A0 00 4C */	li r5, 0x4c
/* 8140BAAC | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 8140BAB0 | 39 08 B4 00 */	addi r8, r8, nigaoeMakeIcon__Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv@l
/* 8140BAB4 | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8140BAB8 | 38 C0 00 4C */	li r6, 0x4c
/* 8140BABC | 4B F3 2F D9 */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
.L_8140BAC0:
/* 8140BAC0 | 38 60 00 00 */	li r3, 0x0
/* 8140BAC4 | 48 00 06 B4 */	b .L_8140C178
.L_8140BAC8:
/* 8140BAC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140BACC | 40 82 00 C0 */	bne .L_8140BB8C
/* 8140BAD0 | C0 42 88 90 */	lfs f2, lbl_81694C90@sda21(r0)
/* 8140BAD4 | C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8140BAD8 | FC 80 10 90 */	fmr f4, f2
/* 8140BADC | C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8140BAE0 | FC C0 10 90 */	fmr f6, f2
/* 8140BAE4 | C0 A2 88 94 */	lfs f5, lbl_81694C94@sda21(r0)
/* 8140BAE8 | FC E0 10 90 */	fmr f7, f2
/* 8140BAEC | 48 02 E8 09 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8140BAF0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140BAF4 | FF C0 08 90 */	fmr f30, f1
/* 8140BAF8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140BAFC | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BB00 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BB04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BB08 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BB0C | 7D 89 03 A6 */	mtctr r12
/* 8140BB10 | 4E 80 04 21 */	bctrl
/* 8140BB14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BB18 | FC 20 F0 90 */	fmr f1, f30
/* 8140BB1C | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 8140BB20 | 7D 89 03 A6 */	mtctr r12
/* 8140BB24 | 4E 80 04 21 */	bctrl
/* 8140BB28 | C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8140BB2C | C0 22 88 98 */	lfs f1, lbl_81694C98@sda21(r0)
/* 8140BB30 | C0 02 88 94 */	lfs f0, lbl_81694C94@sda21(r0)
/* 8140BB34 | EC 22 08 2A */	fadds f1, f2, f1
/* 8140BB38 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140BB3C | D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 8140BB40 | 40 81 00 3C */	ble .L_8140BB7C
/* 8140BB44 | 38 00 00 02 */	li r0, 0x2
/* 8140BB48 | 7F E3 FB 78 */	mr r3, r31
/* 8140BB4C | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8140BB50 | 7F E5 FB 78 */	mr r5, r31
/* 8140BB54 | 38 80 00 1C */	li r4, 0x1c
/* 8140BB58 | 38 C0 00 00 */	li r6, 0x0
/* 8140BB5C | 38 E0 00 00 */	li r7, 0x0
/* 8140BB60 | 4B FF E3 29 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 8140BB64 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BB68 | 38 80 00 05 */	li r4, 0x5
/* 8140BB6C | 4B FF F5 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BB70 | 38 80 00 00 */	li r4, 0x0
/* 8140BB74 | 38 A0 00 00 */	li r5, 0x0
/* 8140BB78 | 4B F9 0D C5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
.L_8140BB7C:
/* 8140BB7C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 8140BB80 | 4B FC 5A 2D */	bl calc__Q33ipl5scene11TextBalloonFv
/* 8140BB84 | 38 60 00 00 */	li r3, 0x0
/* 8140BB88 | 48 00 05 F0 */	b .L_8140C178
.L_8140BB8C:
/* 8140BB8C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8140BB90 | 40 82 00 38 */	bne .L_8140BBC8
/* 8140BB94 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140BB98 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140BB9C | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 8140BBA0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8140BBA4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140BBA8 | 40 82 00 18 */	bne .L_8140BBC0
/* 8140BBAC | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 8140BBB0 | 38 80 00 01 */	li r4, 0x1
/* 8140BBB4 | 38 00 00 00 */	li r0, 0x0
/* 8140BBB8 | 98 83 00 2C */	stb r4, 0x2c(r3)
/* 8140BBBC | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8140BBC0:
/* 8140BBC0 | 38 60 00 00 */	li r3, 0x0
/* 8140BBC4 | 48 00 05 B4 */	b .L_8140C178
.L_8140BBC8:
/* 8140BBC8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140BBCC | 40 82 00 18 */	bne .L_8140BBE4
/* 8140BBD0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140BBD4 | 7F E3 FB 78 */	mr r3, r31
/* 8140BBD8 | 81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8140BBDC | 7D 89 03 A6 */	mtctr r12
/* 8140BBE0 | 4E 80 04 21 */	bctrl
.L_8140BBE4:
/* 8140BBE4 | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8140BBE8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8140BBEC | 40 82 00 5C */	bne .L_8140BC48
/* 8140BBF0 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8140BBF4 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8140BBF8 | 80 66 00 AC */	lwz r3, 0xac(r6)
/* 8140BBFC | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8140BC00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140BC04 | 40 82 00 3C */	bne .L_8140BC40
/* 8140BC08 | 80 66 00 90 */	lwz r3, 0x90(r6)
/* 8140BC0C | 38 A0 00 01 */	li r5, 0x1
/* 8140BC10 | 38 00 00 00 */	li r0, 0x0
/* 8140BC14 | 38 80 00 05 */	li r4, 0x5
/* 8140BC18 | 98 A3 00 2C */	stb r5, 0x2c(r3)
/* 8140BC1C | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8140BC20 | 80 66 00 64 */	lwz r3, 0x64(r6)
/* 8140BC24 | 4B FF F5 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BC28 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140BC2C | 41 82 00 08 */	beq .L_8140BC34
/* 8140BC30 | 3B FF 00 58 */	addi r31, r31, 0x58
.L_8140BC34:
/* 8140BC34 | 7F E4 FB 78 */	mr r4, r31
/* 8140BC38 | 38 A0 00 00 */	li r5, 0x0
/* 8140BC3C | 4B F9 0D 01 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
.L_8140BC40:
/* 8140BC40 | 38 60 00 00 */	li r3, 0x0
/* 8140BC44 | 48 00 05 34 */	b .L_8140C178
.L_8140BC48:
/* 8140BC48 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140BC4C | 38 80 00 05 */	li r4, 0x5
/* 8140BC50 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140BC54 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BC58 | 4B FF F4 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BC5C | 7C 7E 1B 78 */	mr r30, r3
/* 8140BC60 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BC64 | 3B 80 00 00 */	li r28, 0x0
/* 8140BC68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BC6C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8140BC70 | 7D 89 03 A6 */	mtctr r12
/* 8140BC74 | 4E 80 04 21 */	bctrl
/* 8140BC78 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8140BC7C | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8140BC80 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 8140BC84 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 8140BC88 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8140BC8C | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 8140BC90 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8140BC94 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 8140BC98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140BC9C | 41 82 00 54 */	beq .L_8140BCF0
/* 8140BCA0 | 40 80 00 10 */	bge .L_8140BCB0
/* 8140BCA4 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8140BCA8 | 41 82 00 14 */	beq .L_8140BCBC
/* 8140BCAC | 48 00 00 B0 */	b .L_8140BD5C
.L_8140BCB0:
/* 8140BCB0 | 2C 05 00 05 */	cmpwi r5, 0x5
/* 8140BCB4 | 40 80 00 A8 */	bge .L_8140BD5C
/* 8140BCB8 | 48 00 00 50 */	b .L_8140BD08
.L_8140BCBC:
/* 8140BCBC | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BCC0 | 38 80 00 05 */	li r4, 0x5
/* 8140BCC4 | 4B FF F4 75 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BCC8 | 38 80 00 00 */	li r4, 0x0
/* 8140BCCC | 38 A0 00 00 */	li r5, 0x0
/* 8140BCD0 | 4B F9 0C 6D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140BCD4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BCD8 | 38 80 00 05 */	li r4, 0x5
/* 8140BCDC | 4B FF F4 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BCE0 | 38 80 00 10 */	li r4, 0x10
/* 8140BCE4 | 4B F9 0E 75 */	bl iplButton_8139CB58
/* 8140BCE8 | 3B 80 00 01 */	li r28, 0x1
/* 8140BCEC | 48 00 00 70 */	b .L_8140BD5C
.L_8140BCF0:
/* 8140BCF0 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BCF4 | 38 80 00 05 */	li r4, 0x5
/* 8140BCF8 | 4B FF F4 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BCFC | 38 80 00 0F */	li r4, 0xf
/* 8140BD00 | 4B F9 0E 59 */	bl iplButton_8139CB58
/* 8140BD04 | 48 00 00 58 */	b .L_8140BD5C
.L_8140BD08:
/* 8140BD08 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8140BD0C | 38 80 00 05 */	li r4, 0x5
/* 8140BD10 | 4B FF F4 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BD14 | 4B F9 14 ED */	bl enableBtn__Q33ipl5scene6ButtonFv
/* 8140BD18 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8140BD1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BD20 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8140BD24 | 7D 89 03 A6 */	mtctr r12
/* 8140BD28 | 4E 80 04 21 */	bctrl
/* 8140BD2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140BD30 | 7F FD FB 78 */	mr r29, r31
/* 8140BD34 | 41 82 00 08 */	beq .L_8140BD3C
/* 8140BD38 | 3B BF 00 58 */	addi r29, r31, 0x58
.L_8140BD3C:
/* 8140BD3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140BD40 | 38 80 00 05 */	li r4, 0x5
/* 8140BD44 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140BD48 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8140BD4C | 4B FF F3 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140BD50 | 7F A4 EB 78 */	mr r4, r29
/* 8140BD54 | 38 A0 00 00 */	li r5, 0x0
/* 8140BD58 | 4B F9 0B E5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
.L_8140BD5C:
/* 8140BD5C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8140BD60 | 40 82 00 40 */	bne .L_8140BDA0
/* 8140BD64 | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8140BD68 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8140BD6C | 41 82 00 34 */	beq .L_8140BDA0
/* 8140BD70 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8140BD74 | 41 82 00 2C */	beq .L_8140BDA0
/* 8140BD78 | 7F C3 F3 78 */	mr r3, r30
/* 8140BD7C | 4B F9 0B 99 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8140BD80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BD84 | 41 82 00 1C */	beq .L_8140BDA0
/* 8140BD88 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BD8C | 4B F5 7D 59 */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 8140BD90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BD94 | 40 82 00 0C */	bne .L_8140BDA0
/* 8140BD98 | 7F C3 F3 78 */	mr r3, r30
/* 8140BD9C | 4B F9 07 D1 */	bl update__Q33ipl5scene6ButtonFv
.L_8140BDA0:
/* 8140BDA0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140BDA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140BDA8 | 40 82 03 C0 */	bne .L_8140C168
/* 8140BDAC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140BDB0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140BDB4 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BDB8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BDBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BDC0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BDC4 | 7D 89 03 A6 */	mtctr r12
/* 8140BDC8 | 4E 80 04 21 */	bctrl
/* 8140BDCC | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8140BDD0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140BDD4 | 40 82 03 94 */	bne .L_8140C168
/* 8140BDD8 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 8140BDDC | 4B FC 57 D1 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 8140BDE0 | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8140BDE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140BDE8 | 40 82 03 4C */	bne .L_8140C134
/* 8140BDEC | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BDF0 | 4B F5 78 69 */	bl calc__Q33ipl7utility9BScrollerFv
/* 8140BDF4 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BDF8 | 4B F5 7C ED */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 8140BDFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BE00 | 41 82 03 68 */	beq .L_8140C168
/* 8140BE04 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BE08 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BE0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BE10 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BE14 | 7D 89 03 A6 */	mtctr r12
/* 8140BE18 | 4E 80 04 21 */	bctrl
/* 8140BE1C | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140BE20 | 7C 7D 1B 78 */	mr r29, r3
/* 8140BE24 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140BE28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BE2C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BE30 | 7D 89 03 A6 */	mtctr r12
/* 8140BE34 | 4E 80 04 21 */	bctrl
/* 8140BE38 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8140BE3C | 7C 7E 1B 78 */	mr r30, r3
/* 8140BE40 | 7F A3 EB 78 */	mr r3, r29
/* 8140BE44 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 8140BE48 | 7D 89 03 A6 */	mtctr r12
/* 8140BE4C | 4E 80 04 21 */	bctrl
/* 8140BE50 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8140BE54 | FF E0 08 90 */	fmr f31, f1
/* 8140BE58 | 7F C3 F3 78 */	mr r3, r30
/* 8140BE5C | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140BE60 | 7D 89 03 A6 */	mtctr r12
/* 8140BE64 | 4E 80 04 21 */	bctrl
/* 8140BE68 | FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8140BE6C | 40 80 00 14 */	bge .L_8140BE80
/* 8140BE70 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BE74 | 4B F5 7C 9D */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 8140BE78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BE7C | 40 82 00 50 */	bne .L_8140BECC
.L_8140BE80:
/* 8140BE80 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140BE84 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140BE88 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140BE8C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BE90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BE94 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BE98 | 7D 89 03 A6 */	mtctr r12
/* 8140BE9C | 4E 80 04 21 */	bctrl
/* 8140BEA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BEA4 | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140BEA8 | 7D 89 03 A6 */	mtctr r12
/* 8140BEAC | 4E 80 04 21 */	bctrl
/* 8140BEB0 | C0 02 88 90 */	lfs f0, lbl_81694C90@sda21(r0)
/* 8140BEB4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140BEB8 | 40 81 02 3C */	ble .L_8140C0F4
/* 8140BEBC | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BEC0 | 4B F5 7C 39 */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 8140BEC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BEC8 | 41 82 02 2C */	beq .L_8140C0F4
.L_8140BECC:
/* 8140BECC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8140BED0 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 8140BED4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8140BED8 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BEDC | C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 8140BEE0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BEE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BEE8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BEEC | 7D 89 03 A6 */	mtctr r12
/* 8140BEF0 | 4E 80 04 21 */	bctrl
/* 8140BEF4 | 7C 7C 1B 78 */	mr r28, r3
/* 8140BEF8 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BEFC | 4B F5 7C 15 */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 8140BF00 | 7C 7E 1B 78 */	mr r30, r3
/* 8140BF04 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BF08 | 4B F5 7B F1 */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 8140BF0C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8140BF10 | 7C 64 1B 78 */	mr r4, r3
/* 8140BF14 | FC 20 F8 90 */	fmr f1, f31
/* 8140BF18 | 7F 83 E3 78 */	mr r3, r28
/* 8140BF1C | 81 8C 02 44 */	lwz r12, 0x244(r12)
/* 8140BF20 | 7F C5 F3 78 */	mr r5, r30
/* 8140BF24 | 7D 89 03 A6 */	mtctr r12
/* 8140BF28 | 4E 80 04 21 */	bctrl
/* 8140BF2C | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BF30 | 4B F5 7B C9 */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 8140BF34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140BF38 | 41 82 01 0C */	beq .L_8140C044
/* 8140BF3C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BF40 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BF44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BF48 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BF4C | 7D 89 03 A6 */	mtctr r12
/* 8140BF50 | 4E 80 04 21 */	bctrl
/* 8140BF54 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140BF58 | 7C 7C 1B 78 */	mr r28, r3
/* 8140BF5C | 80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 8140BF60 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140BF64 | C3 C5 00 18 */	lfs f30, 0x18(r5)
/* 8140BF68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BF6C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BF70 | 7D 89 03 A6 */	mtctr r12
/* 8140BF74 | 4E 80 04 21 */	bctrl
/* 8140BF78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BF7C | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 8140BF80 | 7D 89 03 A6 */	mtctr r12
/* 8140BF84 | 4E 80 04 21 */	bctrl
/* 8140BF88 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8140BF8C | FF E0 08 90 */	fmr f31, f1
/* 8140BF90 | 7F 83 E3 78 */	mr r3, r28
/* 8140BF94 | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140BF98 | 7D 89 03 A6 */	mtctr r12
/* 8140BF9C | 4E 80 04 21 */	bctrl
/* 8140BFA0 | EC 01 F0 2A */	fadds f0, f1, f30
/* 8140BFA4 | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8140BFA8 | 40 80 00 1C */	bge .L_8140BFC4
/* 8140BFAC | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140BFB0 | C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8140BFB4 | C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8140BFB8 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140BFBC | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8140BFC0 | 48 00 01 A8 */	b .L_8140C168
.L_8140BFC4:
/* 8140BFC4 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140BFC8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140BFCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BFD0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BFD4 | 7D 89 03 A6 */	mtctr r12
/* 8140BFD8 | 4E 80 04 21 */	bctrl
/* 8140BFDC | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8140BFE0 | 7C 7C 1B 78 */	mr r28, r3
/* 8140BFE4 | 80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 8140BFE8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140BFEC | C3 C5 00 18 */	lfs f30, 0x18(r5)
/* 8140BFF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140BFF4 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140BFF8 | 7D 89 03 A6 */	mtctr r12
/* 8140BFFC | 4E 80 04 21 */	bctrl
/* 8140C000 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C004 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 8140C008 | 7D 89 03 A6 */	mtctr r12
/* 8140C00C | 4E 80 04 21 */	bctrl
/* 8140C010 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8140C014 | FF E0 08 90 */	fmr f31, f1
/* 8140C018 | 7F 83 E3 78 */	mr r3, r28
/* 8140C01C | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140C020 | 7D 89 03 A6 */	mtctr r12
/* 8140C024 | 4E 80 04 21 */	bctrl
/* 8140C028 | EC 21 F0 2A */	fadds f1, f1, f30
/* 8140C02C | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140C030 | C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8140C034 | EC 21 F8 28 */	fsubs f1, f1, f31
/* 8140C038 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140C03C | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8140C040 | 48 00 01 28 */	b .L_8140C168
.L_8140C044:
/* 8140C044 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140C048 | 4B F5 7A C9 */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 8140C04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C050 | 41 82 01 18 */	beq .L_8140C168
/* 8140C054 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140C058 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C05C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C060 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C064 | 7D 89 03 A6 */	mtctr r12
/* 8140C068 | 4E 80 04 21 */	bctrl
/* 8140C06C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C070 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 8140C074 | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140C078 | C3 C4 00 18 */	lfs f30, 0x18(r4)
/* 8140C07C | 7D 89 03 A6 */	mtctr r12
/* 8140C080 | 4E 80 04 21 */	bctrl
/* 8140C084 | EC 21 F0 2A */	fadds f1, f1, f30
/* 8140C088 | C0 02 88 90 */	lfs f0, lbl_81694C90@sda21(r0)
/* 8140C08C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140C090 | 40 81 00 1C */	ble .L_8140C0AC
/* 8140C094 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140C098 | C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8140C09C | C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8140C0A0 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140C0A4 | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8140C0A8 | 48 00 00 C0 */	b .L_8140C168
.L_8140C0AC:
/* 8140C0AC | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140C0B0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C0B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C0B8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C0BC | 7D 89 03 A6 */	mtctr r12
/* 8140C0C0 | 4E 80 04 21 */	bctrl
/* 8140C0C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C0C8 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 8140C0CC | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140C0D0 | C3 C4 00 18 */	lfs f30, 0x18(r4)
/* 8140C0D4 | 7D 89 03 A6 */	mtctr r12
/* 8140C0D8 | 4E 80 04 21 */	bctrl
/* 8140C0DC | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8140C0E0 | EC 21 F0 2A */	fadds f1, f1, f30
/* 8140C0E4 | C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8140C0E8 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140C0EC | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8140C0F0 | 48 00 00 78 */	b .L_8140C168
.L_8140C0F4:
/* 8140C0F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C0F8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C0FC | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140C100 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C104 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C108 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C10C | 7D 89 03 A6 */	mtctr r12
/* 8140C110 | 4E 80 04 21 */	bctrl
/* 8140C114 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C118 | 38 80 00 00 */	li r4, 0x0
/* 8140C11C | C0 22 88 90 */	lfs f1, lbl_81694C90@sda21(r0)
/* 8140C120 | 38 A0 00 00 */	li r5, 0x0
/* 8140C124 | 81 8C 02 44 */	lwz r12, 0x244(r12)
/* 8140C128 | 7D 89 03 A6 */	mtctr r12
/* 8140C12C | 4E 80 04 21 */	bctrl
/* 8140C130 | 48 00 00 38 */	b .L_8140C168
.L_8140C134:
/* 8140C134 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8140C138 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C13C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C140 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C144 | 7D 89 03 A6 */	mtctr r12
/* 8140C148 | 4E 80 04 21 */	bctrl
/* 8140C14C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C150 | 38 80 00 00 */	li r4, 0x0
/* 8140C154 | C0 22 88 90 */	lfs f1, lbl_81694C90@sda21(r0)
/* 8140C158 | 38 A0 00 00 */	li r5, 0x0
/* 8140C15C | 81 8C 02 44 */	lwz r12, 0x244(r12)
/* 8140C160 | 7D 89 03 A6 */	mtctr r12
/* 8140C164 | 4E 80 04 21 */	bctrl
.L_8140C168:
/* 8140C168 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8140C16C | 38 03 FF FA */	subi r0, r3, 0x6
/* 8140C170 | 7C 00 00 34 */	cntlzw r0, r0
/* 8140C174 | 54 03 D9 7E */	srwi r3, r0, 5
.L_8140C178:
/* 8140C178 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 8140C17C | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8140C180 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 8140C184 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140C188 | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8140C18C | 48 1E D3 85 */	bl _restgpr_28
/* 8140C190 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140C194 | 7C 08 03 A6 */	mtlr r0
/* 8140C198 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140C19C | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene10TextWriterFv

# .text:0xDF0 | 0x8140C1A0 | size: 0x8
# textinput::extend::memo::InputForm::getScroll()
.fn getScroll__Q49textinput6extend4memo9InputFormFv, global
/* 8140C1A0 | C0 23 03 18 */	lfs f1, 0x318(r3)
/* 8140C1A4 | 4E 80 00 20 */	blr
.endfn getScroll__Q49textinput6extend4memo9InputFormFv

# .text:0xDF8 | 0x8140C1A8 | size: 0x84
# ipl::scene::TextWriter::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene10TextWriterFv, global
/* 8140C1A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140C1AC | 7C 08 02 A6 */	mflr r0
/* 8140C1B0 | 38 80 00 05 */	li r4, 0x5
/* 8140C1B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140C1B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140C1BC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8140C1C0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8140C1C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140C1C8 | 7C 7E 1B 78 */	mr r30, r3
/* 8140C1CC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8140C1D0 | 4B FF EF 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140C1D4 | 38 80 00 00 */	li r4, 0x0
/* 8140C1D8 | 38 A0 00 00 */	li r5, 0x0
/* 8140C1DC | 4B F9 07 61 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140C1E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8140C1E4 | 38 80 00 08 */	li r4, 0x8
/* 8140C1E8 | 4B FF EF 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140C1EC | 88 9E 00 7C */	lbz r4, 0x7c(r30)
/* 8140C1F0 | 4B FB 71 FD */	bl finishMemo__Q33ipl5scene17MailAddressSelectFb
/* 8140C1F4 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8140C1F8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C1FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C200 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8140C204 | 7D 89 03 A6 */	mtctr r12
/* 8140C208 | 4E 80 04 21 */	bctrl
/* 8140C20C | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8140C210 | 4B FC 53 9D */	bl calc__Q33ipl5scene11TextBalloonFv
/* 8140C214 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140C218 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140C21C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140C220 | 7C 08 03 A6 */	mtlr r0
/* 8140C224 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140C228 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene10TextWriterFv

# .text:0xE7C | 0x8140C22C | size: 0x5C
# ipl::scene::TextWriter::calcFadeout()
.fn calcFadeout__Q33ipl5scene10TextWriterFv, global
/* 8140C22C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140C230 | 7C 08 02 A6 */	mflr r0
/* 8140C234 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140C238 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 8140C23C | 4B FC 53 71 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 8140C240 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C244 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C248 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140C24C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C250 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C254 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C258 | 7D 89 03 A6 */	mtctr r12
/* 8140C25C | 4E 80 04 21 */	bctrl
/* 8140C260 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C264 | 81 8C 02 5C */	lwz r12, 0x25c(r12)
/* 8140C268 | 7D 89 03 A6 */	mtctr r12
/* 8140C26C | 4E 80 04 21 */	bctrl
/* 8140C270 | 7C 60 00 34 */	cntlzw r0, r3
/* 8140C274 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8140C278 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140C27C | 7C 08 03 A6 */	mtlr r0
/* 8140C280 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140C284 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene10TextWriterFv

# .text:0xED8 | 0x8140C288 | size: 0x18
# ipl::scene::TextWriter::pointNigaoeButton()
.fn pointNigaoeButton__Q33ipl5scene10TextWriterFv, global
/* 8140C288 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8140C28C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8140C290 | 4D 82 00 20 */	beqlr
/* 8140C294 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 8140C298 | 4B FC 54 80 */	b fadein__Q33ipl5scene11TextBalloonFv
/* 8140C29C | 4E 80 00 20 */	blr
.endfn pointNigaoeButton__Q33ipl5scene10TextWriterFv

# .text:0xEF0 | 0x8140C2A0 | size: 0x18
# ipl::scene::TextWriter::leftNigaoeButton()
.fn leftNigaoeButton__Q33ipl5scene10TextWriterFv, global
/* 8140C2A0 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8140C2A4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8140C2A8 | 4D 82 00 20 */	beqlr
/* 8140C2AC | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 8140C2B0 | 4B FC 56 FC */	b fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8140C2B4 | 4E 80 00 20 */	blr
.endfn leftNigaoeButton__Q33ipl5scene10TextWriterFv

# .text:0xF08 | 0x8140C2B8 | size: 0xB0
# ipl::scene::TextWriter::moveNigaoeButton()
.fn moveNigaoeButton__Q33ipl5scene10TextWriterFv, global
/* 8140C2B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140C2BC | 7C 08 02 A6 */	mflr r0
/* 8140C2C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140C2C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140C2C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8140C2CC | 7C 7E 1B 78 */	mr r30, r3
/* 8140C2D0 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8140C2D4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8140C2D8 | 41 82 00 78 */	beq .L_8140C350
/* 8140C2DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C2E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C2E4 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140C2E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C2EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C2F0 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C2F4 | 7D 89 03 A6 */	mtctr r12
/* 8140C2F8 | 4E 80 04 21 */	bctrl
/* 8140C2FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C300 | 81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8140C304 | 7D 89 03 A6 */	mtctr r12
/* 8140C308 | 4E 80 04 21 */	bctrl
/* 8140C30C | C0 22 88 90 */	lfs f1, lbl_81694C90@sda21(r0)
/* 8140C310 | 7C 7F 1B 78 */	mr r31, r3
/* 8140C314 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140C318 | FC 40 08 90 */	fmr f2, f1
/* 8140C31C | FC 60 08 90 */	fmr f3, f1
/* 8140C320 | 4B F5 67 3D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8140C324 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140C328 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8140C32C | 7C 85 23 78 */	mr r5, r4
/* 8140C330 | 48 13 51 8D */	bl fn_815414BC
/* 8140C334 | C0 22 88 9C */	lfs f1, lbl_81694C9C@sda21(r0)
/* 8140C338 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140C33C | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8140C340 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140C344 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8140C348 | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8140C34C | 4B FC 55 1D */	bl updatePos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3
.L_8140C350:
/* 8140C350 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140C354 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140C358 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8140C35C | 7C 08 03 A6 */	mtlr r0
/* 8140C360 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140C364 | 4E 80 00 20 */	blr
.endfn moveNigaoeButton__Q33ipl5scene10TextWriterFv

# .text:0xFB8 | 0x8140C368 | size: 0x150
# ipl::scene::TextWriter::onNigaoeButton()
.fn onNigaoeButton__Q33ipl5scene10TextWriterFv, global
/* 8140C368 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140C36C | 7C 08 02 A6 */	mflr r0
/* 8140C370 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140C374 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140C378 | 48 1E D1 49 */	bl _savegpr_27
/* 8140C37C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140C380 | 7C 7B 1B 78 */	mr r27, r3
/* 8140C384 | 3B E4 90 08 */	addi r31, r4, smArg__Q23ipl6System@l
/* 8140C388 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8140C38C | 38 80 00 05 */	li r4, 0x5
/* 8140C390 | 4B FF ED A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140C394 | 80 1B 00 64 */	lwz r0, 0x64(r27)
/* 8140C398 | 7C 7E 1B 78 */	mr r30, r3
/* 8140C39C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140C3A0 | 41 82 00 0C */	beq .L_8140C3AC
/* 8140C3A4 | 38 60 00 00 */	li r3, 0x0
/* 8140C3A8 | 48 00 00 F8 */	b .L_8140C4A0
.L_8140C3AC:
/* 8140C3AC | 4B F9 05 69 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8140C3B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C3B4 | 41 82 00 10 */	beq .L_8140C3C4
/* 8140C3B8 | 80 1E 01 78 */	lwz r0, 0x178(r30)
/* 8140C3BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140C3C0 | 41 82 00 0C */	beq .L_8140C3CC
.L_8140C3C4:
/* 8140C3C4 | 38 60 00 00 */	li r3, 0x0
/* 8140C3C8 | 48 00 00 D8 */	b .L_8140C4A0
.L_8140C3CC:
/* 8140C3CC | 3B A0 00 00 */	li r29, 0x0
/* 8140C3D0 | 3B 80 00 00 */	li r28, 0x0
.L_8140C3D4:
/* 8140C3D4 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8140C3D8 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 8140C3DC | 4B F3 28 C9 */	bl isAvalable__Q33ipl6nigaoe7ManagerFUs
/* 8140C3E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C3E4 | 41 82 00 08 */	beq .L_8140C3EC
/* 8140C3E8 | 3B A0 00 01 */	li r29, 0x1
.L_8140C3EC:
/* 8140C3EC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8140C3F0 | 2C 1C 00 64 */	cmpwi r28, 0x64
/* 8140C3F4 | 41 80 FF E0 */	blt .L_8140C3D4
/* 8140C3F8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8140C3FC | 40 82 00 38 */	bne .L_8140C434
/* 8140C400 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8140C404 | 38 E0 00 00 */	li r7, 0x0
/* 8140C408 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8140C40C | 38 00 00 03 */	li r0, 0x3
/* 8140C410 | 80 66 00 90 */	lwz r3, 0x90(r6)
/* 8140C414 | 38 80 01 7C */	li r4, 0x17c
/* 8140C418 | 38 A0 00 2E */	li r5, 0x2e
/* 8140C41C | 98 E3 00 2C */	stb r7, 0x2c(r3)
/* 8140C420 | 90 1B 00 64 */	stw r0, 0x64(r27)
/* 8140C424 | 80 66 00 AC */	lwz r3, 0xac(r6)
/* 8140C428 | 4B F3 A2 D1 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8140C42C | 38 60 00 00 */	li r3, 0x0
/* 8140C430 | 48 00 00 70 */	b .L_8140C4A0
.L_8140C434:
/* 8140C434 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140C438 | 38 A0 00 00 */	li r5, 0x0
/* 8140C43C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140C440 | C0 02 88 90 */	lfs f0, lbl_81694C90@sda21(r0)
/* 8140C444 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 8140C448 | 38 00 00 01 */	li r0, 0x1
/* 8140C44C | 98 A3 00 2C */	stb r5, 0x2c(r3)
/* 8140C450 | 90 1B 00 64 */	stw r0, 0x64(r27)
/* 8140C454 | D0 1B 00 74 */	stfs f0, 0x74(r27)
/* 8140C458 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 8140C45C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C460 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C464 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C468 | 7D 89 03 A6 */	mtctr r12
/* 8140C46C | 4E 80 04 21 */	bctrl
/* 8140C470 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C474 | 81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8140C478 | 7D 89 03 A6 */	mtctr r12
/* 8140C47C | 4E 80 04 21 */	bctrl
/* 8140C480 | D0 3B 00 78 */	stfs f1, 0x78(r27)
/* 8140C484 | 7F C3 F3 78 */	mr r3, r30
/* 8140C488 | 38 80 00 10 */	li r4, 0x10
/* 8140C48C | 4B F9 06 CD */	bl iplButton_8139CB58
/* 8140C490 | 7F C3 F3 78 */	mr r3, r30
/* 8140C494 | 38 80 00 0B */	li r4, 0xb
/* 8140C498 | 4B F9 0F 91 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8140C49C | 38 60 00 01 */	li r3, 0x1
.L_8140C4A0:
/* 8140C4A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140C4A4 | 48 1E D0 69 */	bl _restgpr_27
/* 8140C4A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140C4AC | 7C 08 03 A6 */	mtlr r0
/* 8140C4B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140C4B4 | 4E 80 00 20 */	blr
.endfn onNigaoeButton__Q33ipl5scene10TextWriterFv

# .text:0x1108 | 0x8140C4B8 | size: 0x1E4
# ipl::scene::TextWriter::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface, global
/* 8140C4B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140C4BC | 7C 08 02 A6 */	mflr r0
/* 8140C4C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140C4C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140C4C8 | 48 1E CF F9 */	bl _savegpr_27
/* 8140C4CC | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8140C4D0 | 7C 7B 1B 78 */	mr r27, r3
/* 8140C4D4 | 7C 9F 23 78 */	mr r31, r4
/* 8140C4D8 | 7C BD 2B 78 */	mr r29, r5
/* 8140C4DC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140C4E0 | 7C DC 33 78 */	mr r28, r6
/* 8140C4E4 | 41 82 01 A0 */	beq .L_8140C684
/* 8140C4E8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8140C4EC | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8140C4F0 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8140C4F4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C4F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C4FC | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8140C500 | 7D 89 03 A6 */	mtctr r12
/* 8140C504 | 4E 80 04 21 */	bctrl
/* 8140C508 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C50C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8140C510 | 7D 89 03 A6 */	mtctr r12
/* 8140C514 | 4E 80 04 21 */	bctrl
/* 8140C518 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8140C51C | 41 82 01 68 */	beq .L_8140C684
/* 8140C520 | 80 7B 00 5C */	lwz r3, 0x5c(r27)
/* 8140C524 | 7F E4 FB 78 */	mr r4, r31
/* 8140C528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C52C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8140C530 | 7D 89 03 A6 */	mtctr r12
/* 8140C534 | 4E 80 04 21 */	bctrl
/* 8140C538 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C53C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8140C540 | 7D 89 03 A6 */	mtctr r12
/* 8140C544 | 4E 80 04 21 */	bctrl
/* 8140C548 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8140C54C | 3B A3 00 B4 */	addi r29, r3, 0xb4
/* 8140C550 | 41 82 00 08 */	beq .L_8140C558
/* 8140C554 | 48 00 01 30 */	b .L_8140C684
.L_8140C558:
/* 8140C558 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8140C55C | 3C 80 00 10 */	lis r4, 0x10
/* 8140C560 | 7F 83 E3 78 */	mr r3, r28
/* 8140C564 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8140C568 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8140C56C | 7D 89 03 A6 */	mtctr r12
/* 8140C570 | 4E 80 04 21 */	bctrl
/* 8140C574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C578 | 41 82 01 0C */	beq .L_8140C684
/* 8140C57C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8140C580 | 38 80 00 05 */	li r4, 0x5
/* 8140C584 | 4B FF EB B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140C588 | 3F E0 81 65 */	lis r31, mscButtonName__Q33ipl5scene6Button@ha
/* 8140C58C | 7C 7C 1B 78 */	mr r28, r3
/* 8140C590 | 3B FF BF 5C */	addi r31, r31, mscButtonName__Q33ipl5scene6Button@l
/* 8140C594 | 7F A3 EB 78 */	mr r3, r29
/* 8140C598 | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8140C59C | 48 1F 5E E5 */	bl strcmp
/* 8140C5A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C5A4 | 40 82 00 88 */	bne .L_8140C62C
/* 8140C5A8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8140C5AC | 3C 80 81 66 */	lis r4, lbl_816589BD@ha
/* 8140C5B0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8140C5B4 | 38 84 89 BD */	addi r4, r4, lbl_816589BD@l
/* 8140C5B8 | 4B F5 EE B5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8140C5BC | 7F 83 E3 78 */	mr r3, r28
/* 8140C5C0 | 38 80 00 1B */	li r4, 0x1b
/* 8140C5C4 | 4B F9 05 95 */	bl iplButton_8139CB58
/* 8140C5C8 | 7F 83 E3 78 */	mr r3, r28
/* 8140C5CC | 38 80 00 10 */	li r4, 0x10
/* 8140C5D0 | 4B F9 0E 59 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8140C5D4 | 7F 83 E3 78 */	mr r3, r28
/* 8140C5D8 | 38 80 00 00 */	li r4, 0x0
/* 8140C5DC | 38 A0 00 23 */	li r5, 0x23
/* 8140C5E0 | 4B F9 0E 7D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8140C5E4 | 7F 83 E3 78 */	mr r3, r28
/* 8140C5E8 | 38 80 00 0B */	li r4, 0xb
/* 8140C5EC | 4B F9 0E 3D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8140C5F0 | 7F 83 E3 78 */	mr r3, r28
/* 8140C5F4 | 38 80 00 00 */	li r4, 0x0
/* 8140C5F8 | 38 A0 00 00 */	li r5, 0x0
/* 8140C5FC | 4B F9 03 41 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140C600 | 38 00 00 00 */	li r0, 0x0
/* 8140C604 | 98 1B 00 7C */	stb r0, 0x7c(r27)
/* 8140C608 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8140C60C | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 8140C610 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8140C614 | 4B F4 9D F9 */	bl sendRelease__Q33ipl8keyboard7ManagerFv
/* 8140C618 | 80 7B 00 94 */	lwz r3, 0x94(r27)
/* 8140C61C | 4B FC 53 91 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8140C620 | 38 00 00 06 */	li r0, 0x6
/* 8140C624 | 90 1B 00 64 */	stw r0, 0x64(r27)
/* 8140C628 | 48 00 00 5C */	b .L_8140C684
.L_8140C62C:
/* 8140C62C | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8140C630 | 7F A3 EB 78 */	mr r3, r29
/* 8140C634 | 48 1F 5E 4D */	bl strcmp
/* 8140C638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C63C | 40 82 00 48 */	bne .L_8140C684
/* 8140C640 | 7F 83 E3 78 */	mr r3, r28
/* 8140C644 | 38 80 00 1D */	li r4, 0x1d
/* 8140C648 | 4B F9 05 11 */	bl iplButton_8139CB58
/* 8140C64C | 7F 83 E3 78 */	mr r3, r28
/* 8140C650 | 38 80 00 00 */	li r4, 0x0
/* 8140C654 | 38 A0 00 00 */	li r5, 0x0
/* 8140C658 | 4B F9 02 E5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140C65C | 80 7B 00 94 */	lwz r3, 0x94(r27)
/* 8140C660 | 4B FC 53 4D */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8140C664 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8140C668 | 7F 63 DB 78 */	mr r3, r27
/* 8140C66C | 81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8140C670 | 7D 89 03 A6 */	mtctr r12
/* 8140C674 | 4E 80 04 21 */	bctrl
/* 8140C678 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8140C67C | 38 00 00 00 */	li r0, 0x0
/* 8140C680 | 98 03 00 2C */	stb r0, 0x2c(r3)
.L_8140C684:
/* 8140C684 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140C688 | 48 1E CE 85 */	bl _restgpr_27
/* 8140C68C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140C690 | 7C 08 03 A6 */	mtlr r0
/* 8140C694 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140C698 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface

# .text:0x12EC | 0x8140C69C | size: 0x18C
# ipl::scene::TextWriter::onSend()
.fn onSend__Q33ipl5scene10TextWriterFv, global
/* 8140C69C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140C6A0 | 7C 08 02 A6 */	mflr r0
/* 8140C6A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140C6A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140C6AC | 48 1E CE 1D */	bl _savegpr_29
/* 8140C6B0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8140C6B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8140C6B8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8140C6BC | 38 80 00 05 */	li r4, 0x5
/* 8140C6C0 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8140C6C4 | 4B FF EA 75 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140C6C8 | 3C 80 81 66 */	lis r4, lbl_816589CC@ha
/* 8140C6CC | 3C A0 81 09 */	lis r5, sSystem__Q23ipl3snd@ha
/* 8140C6D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140C6D4 | 38 65 99 2C */	addi r3, r5, sSystem__Q23ipl3snd@l
/* 8140C6D8 | 38 84 89 CC */	addi r4, r4, lbl_816589CC@l
/* 8140C6DC | 4B F5 ED 91 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8140C6E0 | 38 00 00 00 */	li r0, 0x0
/* 8140C6E4 | 98 1D 00 7D */	stb r0, 0x7d(r29)
/* 8140C6E8 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 8140C6EC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C6F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C6F4 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C6F8 | 7D 89 03 A6 */	mtctr r12
/* 8140C6FC | 4E 80 04 21 */	bctrl
/* 8140C700 | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 8140C704 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C708 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8140C70C | 7D 89 03 A6 */	mtctr r12
/* 8140C710 | 4E 80 04 21 */	bctrl
/* 8140C714 | 7C 64 1B 78 */	mr r4, r3
/* 8140C718 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8140C71C | 38 A0 04 00 */	li r5, 0x400
/* 8140C720 | 48 1F 9D 41 */	bl fn_81606460
/* 8140C724 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8140C728 | 7F A3 EB 78 */	mr r3, r29
/* 8140C72C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140C730 | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 8140C734 | 7D 89 03 A6 */	mtctr r12
/* 8140C738 | 4E 80 04 21 */	bctrl
/* 8140C73C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8140C740 | 7F A3 EB 78 */	mr r3, r29
/* 8140C744 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8140C748 | 81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8140C74C | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8140C750 | 80 FD 00 80 */	lwz r7, 0x80(r29)
/* 8140C754 | 7D 89 03 A6 */	mtctr r12
/* 8140C758 | 4E 80 04 21 */	bctrl
/* 8140C75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C760 | 41 82 00 14 */	beq .L_8140C774
/* 8140C764 | 3C 60 81 66 */	lis r3, lbl_816589DB@ha
/* 8140C768 | 38 63 89 DB */	addi r3, r3, lbl_816589DB@l
/* 8140C76C | 4C C6 31 82 */	crclr cr1eq
/* 8140C770 | 48 12 1F 31 */	bl OSReport
.L_8140C774:
/* 8140C774 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8140C778 | 7F A3 EB 78 */	mr r3, r29
/* 8140C77C | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8140C780 | 7D 89 03 A6 */	mtctr r12
/* 8140C784 | 4E 80 04 21 */	bctrl
/* 8140C788 | 3B C0 00 01 */	li r30, 0x1
/* 8140C78C | 9B DD 00 7D */	stb r30, 0x7d(r29)
/* 8140C790 | 4B F2 76 05 */	bl receiveImmediately__Q23ipl6SystemFv
/* 8140C794 | 7F E3 FB 78 */	mr r3, r31
/* 8140C798 | 38 80 00 10 */	li r4, 0x10
/* 8140C79C | 4B F9 0C 8D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8140C7A0 | 7F E3 FB 78 */	mr r3, r31
/* 8140C7A4 | 38 80 00 00 */	li r4, 0x0
/* 8140C7A8 | 38 A0 00 23 */	li r5, 0x23
/* 8140C7AC | 4B F9 0C B1 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8140C7B0 | 7F E3 FB 78 */	mr r3, r31
/* 8140C7B4 | 38 80 00 0A */	li r4, 0xa
/* 8140C7B8 | 4B F9 0C 71 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8140C7BC | 7F E3 FB 78 */	mr r3, r31
/* 8140C7C0 | 38 80 00 00 */	li r4, 0x0
/* 8140C7C4 | 38 A0 00 00 */	li r5, 0x0
/* 8140C7C8 | 4B F9 01 75 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8140C7CC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8140C7D0 | 9B DD 00 7C */	stb r30, 0x7c(r29)
/* 8140C7D4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8140C7D8 | 38 00 00 00 */	li r0, 0x0
/* 8140C7DC | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8140C7E0 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 8140C7E4 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8140C7E8 | 4B F4 9C 25 */	bl sendRelease__Q33ipl8keyboard7ManagerFv
/* 8140C7EC | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8140C7F0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C7F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C7F8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C7FC | 7D 89 03 A6 */	mtctr r12
/* 8140C800 | 4E 80 04 21 */	bctrl
/* 8140C804 | 9B C3 03 F0 */	stb r30, 0x3f0(r3)
/* 8140C808 | 38 00 00 06 */	li r0, 0x6
/* 8140C80C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140C810 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8140C814 | 48 1E CD 01 */	bl _restgpr_29
/* 8140C818 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140C81C | 7C 08 03 A6 */	mtlr r0
/* 8140C820 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140C824 | 4E 80 00 20 */	blr
.endfn onSend__Q33ipl5scene10TextWriterFv

# .text:0x1478 | 0x8140C828 | size: 0x14
# ipl::scene::TextWriter::getMemoManager()
.fn getMemoManager__Q33ipl5scene10TextWriterFv, global
/* 8140C828 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C82C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C830 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140C834 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C838 | 4E 80 00 20 */	blr
.endfn getMemoManager__Q33ipl5scene10TextWriterFv

# .text:0x148C | 0x8140C83C | size: 0x20
# ipl::scene::TextWriter::getMemoInputForm()
.fn getMemoInputForm__Q33ipl5scene10TextWriterFv, global
/* 8140C83C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C840 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C844 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140C848 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140C84C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140C850 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140C854 | 7D 89 03 A6 */	mtctr r12
/* 8140C858 | 4E 80 04 20 */	bctr
.endfn getMemoInputForm__Q33ipl5scene10TextWriterFv

# .text:0x14AC | 0x8140C85C | size: 0xD0
# ipl::scene::TextWriter::openNWC24()
.fn openNWC24__Q33ipl5scene10TextWriterFv, global
/* 8140C85C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140C860 | 7C 08 02 A6 */	mflr r0
/* 8140C864 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140C868 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140C86C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140C870 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140C874 | 7C 7F 1B 78 */	mr r31, r3
/* 8140C878 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8140C87C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140C880 | 41 82 00 0C */	beq .L_8140C88C
/* 8140C884 | 38 60 00 00 */	li r3, 0x0
/* 8140C888 | 48 00 00 08 */	b .L_8140C890
.L_8140C88C:
/* 8140C88C | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_8140C890:
/* 8140C890 | 4B F3 51 B1 */	bl open__Q33ipl5nwc247ManagerFv
/* 8140C894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C898 | 41 82 00 24 */	beq .L_8140C8BC
/* 8140C89C | 38 00 00 00 */	li r0, 0x0
/* 8140C8A0 | 7F E3 FB 78 */	mr r3, r31
/* 8140C8A4 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8140C8A8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140C8AC | 81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8140C8B0 | 7D 89 03 A6 */	mtctr r12
/* 8140C8B4 | 4E 80 04 21 */	bctrl
/* 8140C8B8 | 48 00 00 60 */	b .L_8140C918
.L_8140C8BC:
/* 8140C8BC | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8140C8C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140C8C4 | 40 82 00 18 */	bne .L_8140C8DC
/* 8140C8C8 | 38 60 00 04 */	li r3, 0x4
/* 8140C8CC | 38 00 00 00 */	li r0, 0x0
/* 8140C8D0 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 8140C8D4 | 90 1F 00 84 */	stw r0, 0x84(r31)
/* 8140C8D8 | 48 00 00 40 */	b .L_8140C918
.L_8140C8DC:
/* 8140C8DC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140C8E0 | 40 82 00 38 */	bne .L_8140C918
/* 8140C8E4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8140C8E8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140C8EC | 28 00 01 2C */	cmplwi r0, 0x12c
/* 8140C8F0 | 90 1F 00 84 */	stw r0, 0x84(r31)
/* 8140C8F4 | 41 80 00 24 */	blt .L_8140C918
/* 8140C8F8 | 38 00 00 05 */	li r0, 0x5
/* 8140C8FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C900 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8140C904 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C908 | 38 80 01 C7 */	li r4, 0x1c7
/* 8140C90C | 38 A0 00 2E */	li r5, 0x2e
/* 8140C910 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8140C914 | 4B F3 9D E5 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_8140C918:
/* 8140C918 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140C91C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140C920 | 7C 08 03 A6 */	mtlr r0
/* 8140C924 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140C928 | 4E 80 00 20 */	blr
.endfn openNWC24__Q33ipl5scene10TextWriterFv

# .text:0x157C | 0x8140C92C | size: 0x290
# ipl::scene::TextWriter::sendMessageByNWC24(unsigned long long, const wchar_t*)
.fn sendMessageByNWC24__Q33ipl5scene10TextWriterFUxPCw, global
/* 8140C92C | 94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8140C930 | 7C 08 02 A6 */	mflr r0
/* 8140C934 | 90 01 01 74 */	stw r0, 0x174(r1)
/* 8140C938 | 39 61 01 70 */	addi r11, r1, 0x170
/* 8140C93C | 48 1E CB 85 */	bl _savegpr_27
/* 8140C940 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8140C944 | 3F C0 81 66 */	lis r30, lbl_81658998@ha
/* 8140C948 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140C94C | 7C 7B 1B 78 */	mr r27, r3
/* 8140C950 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8140C954 | 7C BF 2B 78 */	mr r31, r5
/* 8140C958 | 7C DC 33 78 */	mr r28, r6
/* 8140C95C | 7C FD 3B 78 */	mr r29, r7
/* 8140C960 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140C964 | 3B DE 89 98 */	addi r30, r30, lbl_81658998@l
/* 8140C968 | 41 82 00 0C */	beq .L_8140C974
/* 8140C96C | 38 60 00 00 */	li r3, 0x0
/* 8140C970 | 48 00 00 08 */	b .L_8140C978
.L_8140C974:
/* 8140C974 | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_8140C978:
/* 8140C978 | 38 81 00 54 */	addi r4, r1, 0x54
/* 8140C97C | 38 A0 00 02 */	li r5, 0x2
/* 8140C980 | 4B F3 51 89 */	bl initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType
/* 8140C984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C988 | 40 82 00 18 */	bne .L_8140C9A0
/* 8140C98C | 38 7E 00 4D */	addi r3, r30, 0x4d
/* 8140C990 | 4C C6 31 82 */	crclr cr1eq
/* 8140C994 | 48 12 1D 0D */	bl OSReport
/* 8140C998 | 38 60 FF FF */	li r3, -0x1
/* 8140C99C | 48 00 02 08 */	b .L_8140CBA4
.L_8140C9A0:
/* 8140C9A0 | 7F 86 E3 78 */	mr r6, r28
/* 8140C9A4 | 7F E5 FB 78 */	mr r5, r31
/* 8140C9A8 | 38 7E 00 62 */	addi r3, r30, 0x62
/* 8140C9AC | 4C C6 31 82 */	crclr cr1eq
/* 8140C9B0 | 48 12 1C F1 */	bl OSReport
/* 8140C9B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140C9B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140C9BC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8140C9C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140C9C4 | 41 82 00 0C */	beq .L_8140C9D0
/* 8140C9C8 | 38 60 00 00 */	li r3, 0x0
/* 8140C9CC | 48 00 00 08 */	b .L_8140C9D4
.L_8140C9D0:
/* 8140C9D0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8140C9D4:
/* 8140C9D4 | 7F 86 E3 78 */	mr r6, r28
/* 8140C9D8 | 7F E5 FB 78 */	mr r5, r31
/* 8140C9DC | 38 81 00 54 */	addi r4, r1, 0x54
/* 8140C9E0 | 4B F3 51 6D */	bl setMsgToId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUx
/* 8140C9E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140C9E8 | 40 82 00 18 */	bne .L_8140CA00
/* 8140C9EC | 38 7E 00 71 */	addi r3, r30, 0x71
/* 8140C9F0 | 4C C6 31 82 */	crclr cr1eq
/* 8140C9F4 | 48 12 1C AD */	bl OSReport
/* 8140C9F8 | 38 60 FF FF */	li r3, -0x1
/* 8140C9FC | 48 00 01 A8 */	b .L_8140CBA4
.L_8140CA00:
/* 8140CA00 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8140CA04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CA08 | 41 82 00 68 */	beq .L_8140CA70
/* 8140CA0C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CA10 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CA14 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8140CA18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CA1C | 41 82 00 0C */	beq .L_8140CA28
/* 8140CA20 | 3B E0 00 00 */	li r31, 0x0
/* 8140CA24 | 48 00 00 08 */	b .L_8140CA2C
.L_8140CA28:
/* 8140CA28 | 83 E3 00 8C */	lwz r31, 0x8c(r3)
.L_8140CA2C:
/* 8140CA2C | 7F A3 EB 78 */	mr r3, r29
/* 8140CA30 | 48 1F BC 7D */	bl fn_816086AC
/* 8140CA34 | 3C E0 00 01 */	lis r7, 0x1
/* 8140CA38 | 54 66 08 3C */	slwi r6, r3, 1
/* 8140CA3C | 7F E3 FB 78 */	mr r3, r31
/* 8140CA40 | 7F A5 EB 78 */	mr r5, r29
/* 8140CA44 | 38 81 00 54 */	addi r4, r1, 0x54
/* 8140CA48 | 38 E7 00 10 */	addi r7, r7, 0x10
/* 8140CA4C | 39 00 00 01 */	li r8, 0x1
/* 8140CA50 | 4B F3 51 85 */	bl setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding
/* 8140CA54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CA58 | 40 82 00 18 */	bne .L_8140CA70
/* 8140CA5C | 38 7E 00 86 */	addi r3, r30, 0x86
/* 8140CA60 | 4C C6 31 82 */	crclr cr1eq
/* 8140CA64 | 48 12 1C 3D */	bl OSReport
/* 8140CA68 | 38 60 FF FF */	li r3, -0x1
/* 8140CA6C | 48 00 01 38 */	b .L_8140CBA4
.L_8140CA70:
/* 8140CA70 | 80 1B 00 6C */	lwz r0, 0x6c(r27)
/* 8140CA74 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8140CA78 | 41 82 00 34 */	beq .L_8140CAAC
/* 8140CA7C | 38 61 00 54 */	addi r3, r1, 0x54
/* 8140CA80 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140CA84 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 8140CA88 | 48 0D C9 49 */	bl RFLiSetOfficial2NWC24Msg
/* 8140CA8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CA90 | 41 82 00 1C */	beq .L_8140CAAC
/* 8140CA94 | 7C 64 1B 78 */	mr r4, r3
/* 8140CA98 | 38 7E 00 9B */	addi r3, r30, 0x9b
/* 8140CA9C | 4C C6 31 82 */	crclr cr1eq
/* 8140CAA0 | 48 12 1C 01 */	bl OSReport
/* 8140CAA4 | 38 60 00 01 */	li r3, 0x1
/* 8140CAA8 | 48 00 00 FC */	b .L_8140CBA4
.L_8140CAAC:
/* 8140CAAC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CAB0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CAB4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8140CAB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CABC | 41 82 00 0C */	beq .L_8140CAC8
/* 8140CAC0 | 38 60 00 00 */	li r3, 0x0
/* 8140CAC4 | 48 00 00 08 */	b .L_8140CACC
.L_8140CAC8:
/* 8140CAC8 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8140CACC:
/* 8140CACC | 38 81 00 54 */	addi r4, r1, 0x54
/* 8140CAD0 | 38 A0 00 01 */	li r5, 0x1
/* 8140CAD4 | 4B F3 51 B9 */	bl setMsgMBNoReply__Q33ipl5nwc247ManagerFP11NWC24MsgObji
/* 8140CAD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CADC | 40 82 00 18 */	bne .L_8140CAF4
/* 8140CAE0 | 38 7E 00 BD */	addi r3, r30, 0xbd
/* 8140CAE4 | 4C C6 31 82 */	crclr cr1eq
/* 8140CAE8 | 48 12 1B B9 */	bl OSReport
/* 8140CAEC | 38 60 FF FF */	li r3, -0x1
/* 8140CAF0 | 48 00 00 B4 */	b .L_8140CBA4
.L_8140CAF4:
/* 8140CAF4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8140CAF8 | 38 80 00 04 */	li r4, 0x4
/* 8140CAFC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8140CB00 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8140CB04 | 4B FF E6 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140CB08 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8140CB0C | 80 A3 0D 08 */	lwz r5, 0xd08(r3)
/* 8140CB10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CB14 | 80 03 0D 0C */	lwz r0, 0xd0c(r3)
/* 8140CB18 | 80 E3 0D 10 */	lwz r7, 0xd10(r3)
/* 8140CB1C | 41 82 00 0C */	beq .L_8140CB28
/* 8140CB20 | 38 60 00 00 */	li r3, 0x0
/* 8140CB24 | 48 00 00 08 */	b .L_8140CB2C
.L_8140CB28:
/* 8140CB28 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
.L_8140CB2C:
/* 8140CB2C | 38 81 00 54 */	addi r4, r1, 0x54
/* 8140CB30 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 8140CB34 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 8140CB38 | 54 E7 06 3E */	clrlwi r7, r7, 24
/* 8140CB3C | 4B F3 51 95 */	bl setMsgMBRegDate__Q33ipl5nwc247ManagerFP11NWC24MsgObjUsUcUc
/* 8140CB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CB44 | 40 82 00 18 */	bne .L_8140CB5C
/* 8140CB48 | 38 7E 00 D7 */	addi r3, r30, 0xd7
/* 8140CB4C | 4C C6 31 82 */	crclr cr1eq
/* 8140CB50 | 48 12 1B 51 */	bl OSReport
/* 8140CB54 | 38 60 FF FF */	li r3, -0x1
/* 8140CB58 | 48 00 00 4C */	b .L_8140CBA4
.L_8140CB5C:
/* 8140CB5C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CB60 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CB64 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8140CB68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CB6C | 41 82 00 0C */	beq .L_8140CB78
/* 8140CB70 | 38 60 00 00 */	li r3, 0x0
/* 8140CB74 | 48 00 00 08 */	b .L_8140CB7C
.L_8140CB78:
/* 8140CB78 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8140CB7C:
/* 8140CB7C | 38 81 00 54 */	addi r4, r1, 0x54
/* 8140CB80 | 4B F3 51 E1 */	bl commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj
/* 8140CB84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CB88 | 40 82 00 18 */	bne .L_8140CBA0
/* 8140CB8C | 38 7E 00 EC */	addi r3, r30, 0xec
/* 8140CB90 | 4C C6 31 82 */	crclr cr1eq
/* 8140CB94 | 48 12 1B 0D */	bl OSReport
/* 8140CB98 | 38 60 FF FF */	li r3, -0x1
/* 8140CB9C | 48 00 00 08 */	b .L_8140CBA4
.L_8140CBA0:
/* 8140CBA0 | 38 60 00 00 */	li r3, 0x0
.L_8140CBA4:
/* 8140CBA4 | 39 61 01 70 */	addi r11, r1, 0x170
/* 8140CBA8 | 48 1E C9 65 */	bl _restgpr_27
/* 8140CBAC | 80 01 01 74 */	lwz r0, 0x174(r1)
/* 8140CBB0 | 7C 08 03 A6 */	mtlr r0
/* 8140CBB4 | 38 21 01 70 */	addi r1, r1, 0x170
/* 8140CBB8 | 4E 80 00 20 */	blr
.endfn sendMessageByNWC24__Q33ipl5scene10TextWriterFUxPCw

# .text:0x180C | 0x8140CBBC | size: 0x24
# ipl::scene::TextWriter::closeNWC24()
.fn closeNWC24__Q33ipl5scene10TextWriterFv, global
/* 8140CBBC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CBC0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CBC4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8140CBC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CBCC | 41 82 00 0C */	beq .L_8140CBD8
/* 8140CBD0 | 38 60 00 00 */	li r3, 0x0
/* 8140CBD4 | 48 00 00 08 */	b .L_8140CBDC
.L_8140CBD8:
/* 8140CBD8 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8140CBDC:
/* 8140CBDC | 4B F3 4E D8 */	b close__Q33ipl5nwc247ManagerFv
.endfn closeNWC24__Q33ipl5scene10TextWriterFv

# .text:0x1830 | 0x8140CBE0 | size: 0x8
# ipl::scene::TextWriter::getMyUserID(unsigned long long*)
.fn getMyUserID__Q33ipl5scene10TextWriterFPUx, global
/* 8140CBE0 | 7C 83 23 78 */	mr r3, r4
/* 8140CBE4 | 48 09 27 4C */	b NWC24GetMyUserId
.endfn getMyUserID__Q33ipl5scene10TextWriterFPUx

# .text:0x1838 | 0x8140CBE8 | size: 0x144
# ipl::scene::TextWriter::setNigaoe(ipl::nigaoe::Object*)
.fn setNigaoe__Q33ipl5scene10TextWriterFPQ33ipl6nigaoe6Object, global
/* 8140CBE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140CBEC | 7C 08 02 A6 */	mflr r0
/* 8140CBF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140CBF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140CBF8 | 7C 9F 23 78 */	mr r31, r4
/* 8140CBFC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8140CC00 | 7C 7E 1B 78 */	mr r30, r3
/* 8140CC04 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 8140CC08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CC0C | 41 82 00 10 */	beq .L_8140CC1C
/* 8140CC10 | 7C 03 03 78 */	mr r3, r0
/* 8140CC14 | 38 80 00 01 */	li r4, 0x1
/* 8140CC18 | 4B F3 22 F9 */	bl __dt__Q33ipl6nigaoe6ObjectFv
.L_8140CC1C:
/* 8140CC1C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CC20 | 93 FE 00 70 */	stw r31, 0x70(r30)
/* 8140CC24 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CC28 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140CC2C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140CC30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CC34 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140CC38 | 7D 89 03 A6 */	mtctr r12
/* 8140CC3C | 4E 80 04 21 */	bctrl
/* 8140CC40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CC44 | 81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 8140CC48 | 7D 89 03 A6 */	mtctr r12
/* 8140CC4C | 4E 80 04 21 */	bctrl
/* 8140CC50 | 80 BE 00 70 */	lwz r5, 0x70(r30)
/* 8140CC54 | 38 80 00 00 */	li r4, 0x0
/* 8140CC58 | 38 A5 00 18 */	addi r5, r5, 0x18
/* 8140CC5C | 48 11 B1 C1 */	bl fn_81527E1C
/* 8140CC60 | 80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8140CC64 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8140CC68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CC6C | 41 80 00 14 */	blt .L_8140CC80
/* 8140CC70 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8140CC74 | 48 0D 8A C1 */	bl RFLiGetCharData
/* 8140CC78 | 38 83 00 02 */	addi r4, r3, 0x2
/* 8140CC7C | 48 00 00 08 */	b .L_8140CC84
.L_8140CC80:
/* 8140CC80 | 38 80 00 00 */	li r4, 0x0
.L_8140CC84:
/* 8140CC84 | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8140CC88 | 38 A0 00 0A */	li r5, 0xa
/* 8140CC8C | 4B FC 49 75 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 8140CC90 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CC94 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CC98 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8140CC9C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140CCA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CCA4 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140CCA8 | 7D 89 03 A6 */	mtctr r12
/* 8140CCAC | 4E 80 04 21 */	bctrl
/* 8140CCB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CCB4 | 81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8140CCB8 | 7D 89 03 A6 */	mtctr r12
/* 8140CCBC | 4E 80 04 21 */	bctrl
/* 8140CCC0 | C0 22 88 90 */	lfs f1, lbl_81694C90@sda21(r0)
/* 8140CCC4 | 7C 7F 1B 78 */	mr r31, r3
/* 8140CCC8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140CCCC | FC 40 08 90 */	fmr f2, f1
/* 8140CCD0 | FC 60 08 90 */	fmr f3, f1
/* 8140CCD4 | 4B F5 5D 89 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8140CCD8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140CCDC | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8140CCE0 | 7C 85 23 78 */	mr r5, r4
/* 8140CCE4 | 48 13 47 D9 */	bl fn_815414BC
/* 8140CCE8 | C0 22 88 9C */	lfs f1, lbl_81694C9C@sda21(r0)
/* 8140CCEC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140CCF0 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8140CCF4 | 38 A0 00 00 */	li r5, 0x0
/* 8140CCF8 | 38 C0 00 00 */	li r6, 0x0
/* 8140CCFC | EC 00 08 2A */	fadds f0, f0, f1
/* 8140CD00 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8140CD04 | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8140CD08 | 4B FC 4A C5 */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 8140CD0C | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8140CD10 | 4B FC 4A 09 */	bl fadein__Q33ipl5scene11TextBalloonFv
/* 8140CD14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140CD18 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140CD1C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8140CD20 | 7C 08 03 A6 */	mtlr r0
/* 8140CD24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140CD28 | 4E 80 00 20 */	blr
.endfn setNigaoe__Q33ipl5scene10TextWriterFPQ33ipl6nigaoe6Object

# .text:0x197C | 0x8140CD2C | size: 0x14
# ipl::scene::TextWriter::getButton()
.fn getButton__Q33ipl5scene10TextWriterFv, global
/* 8140CD2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140CD30 | 38 80 00 05 */	li r4, 0x5
/* 8140CD34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140CD38 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8140CD3C | 4B FF E3 FC */	b getScene__Q33ipl5scene7ManagerFi
.endfn getButton__Q33ipl5scene10TextWriterFv

# .text:0x1990 | 0x8140CD40 | size: 0x4
# ipl::scene::TextWriter::calcCommon()
.fn calcCommon__Q33ipl5scene10TextWriterFv, global
/* 8140CD40 | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene10TextWriterFv

# .text:0x1994 | 0x8140CD44 | size: 0x8
.fn "@20@__dt__Q33ipl5scene10TextWriterFv", global
/* 8140CD44 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8140CD48 | 4B FF E7 50 */	b __dt__Q33ipl5scene10TextWriterFv
.endfn "@20@__dt__Q33ipl5scene10TextWriterFv"

# .text:0x199C | 0x8140CD4C | size: 0x8
# ipl::scene::TextWriter::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface", global
/* 8140CD4C | 38 63 FF A8 */	subi r3, r3, 0x58
/* 8140CD50 | 4B FF F7 68 */	b onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface"

# 0x81658998..0x81658B90 | size: 0x1F8
.data
.balign 8

# .data:0x0 | 0x81658998 | size: 0xC
.obj lbl_81658998, global
	.string "balloon.ash"
.endobj lbl_81658998

# .data:0xC | 0x816589A4 | size: 0x19
.obj lbl_816589A4, global
	.string "my_IplTopBalloon_a.brlyt"
.endobj lbl_816589A4

# .data:0x25 | 0x816589BD | size: 0xF
.obj lbl_816589BD, global
	.string "WIPL_SE_CANCEL"
.endobj lbl_816589BD

# .data:0x34 | 0x816589CC | size: 0xF
.obj lbl_816589CC, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_816589CC

# .data:0x43 | 0x816589DB | size: 0xBD
.obj lbl_816589DB, global
	.4byte 0x9197904D
	.4byte 0x8EB89473
	.4byte 0x0A004E57
	.4byte 0x43323449
	.4byte 0x6E69744D
	.4byte 0x73674F62
	.4byte 0x6A206572
	.4byte 0x720A005B
	.4byte 0x746F5D3A
	.4byte 0x20253031
	.4byte 0x366C6C75
	.4byte 0x0A004E57
	.4byte 0x43323453
	.4byte 0x65744D73
	.4byte 0x67546F49
	.4byte 0x64206572
	.4byte 0x720A004E
	.4byte 0x57433234
	.4byte 0x5365744D
	.4byte 0x73675465
	.4byte 0x78742065
	.4byte 0x72720A00
	.4byte 0x52464C53
	.4byte 0x65744F66
	.4byte 0x66696369
	.4byte 0x616C324E
	.4byte 0x57433234
	.4byte 0x4D736720
	.4byte 0x65727220
	.4byte 0x3D202564
	.4byte 0x0A004E57
	.4byte 0x43323453
	.4byte 0x65744D73
	.4byte 0x674D424E
	.4byte 0x6F526570
	.4byte 0x6C792065
	.4byte 0x72720A00
	.4byte 0x7365744D
	.4byte 0x73674D42
	.4byte 0x52656744
	.4byte 0x61746520
	.4byte 0x6572720A
	.4byte 0x004E5743
	.4byte 0x3234436F
	.4byte 0x6D6D6974
	.4byte 0x4D736720
	.4byte 0x6572720A
	.byte 0x00
.endobj lbl_816589DB

# .data:0x100 | 0x81658A98 | size: 0xB0
.obj lbl_81658A98, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10TextWriterFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene10TextWriterFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene10TextWriterCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene10TextWriterFv
	.4byte create__Q33ipl5scene10TextWriterFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene10TextWriterFv
	.4byte destroy__Q33ipl5scene10TextWriterFv
	.4byte initCalcNormal__Q33ipl5scene10TextWriterFv
	.4byte initCalcFadeout__Q33ipl5scene10TextWriterFv
	.4byte calcCommon__Q33ipl5scene10TextWriterFv
	.4byte calcFadein__Q33ipl5scene10TextWriterFv
	.4byte calcNormal__Q33ipl5scene10TextWriterFv
	.4byte calcFadeout__Q33ipl5scene10TextWriterFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface"
	.4byte onNigaoeButton__Q33ipl5scene10TextWriterFv
	.4byte setNigaoe__Q33ipl5scene10TextWriterFPQ33ipl6nigaoe6Object
	.4byte pointNigaoeButton__Q33ipl5scene10TextWriterFv
	.4byte leftNigaoeButton__Q33ipl5scene10TextWriterFv
	.4byte moveNigaoeButton__Q33ipl5scene10TextWriterFv
	.4byte onEventDerived__Q33ipl5scene10TextWriterFUlUlPCQ33ipl10controller9Interface
	.4byte onSend__Q33ipl5scene10TextWriterFv
	.4byte openNWC24__Q33ipl5scene10TextWriterFv
	.4byte sendMessageByNWC24__Q33ipl5scene10TextWriterFUxPCw
	.4byte closeNWC24__Q33ipl5scene10TextWriterFv
	.4byte getMyUserID__Q33ipl5scene10TextWriterFPUx
.endobj lbl_81658A98

# .data:0x1B0 | 0x81658B48 | size: 0x48
.obj lbl_81658B48, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onNigaoeButton__Q33ipl5scene17InputFormObserverFv
	.4byte pointNigaoeButton__Q33ipl5scene17InputFormObserverFv
	.4byte leftNigaoeButton__Q33ipl5scene17InputFormObserverFv
	.4byte moveNigaoeButton__Q33ipl5scene17InputFormObserverFv
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
.endobj lbl_81658B48

# 0x81694C88..0x81694CA0 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694C88 | size: 0x4
.obj lbl_81694C88, global
	.float 30
.endobj lbl_81694C88

# .sdata2:0x4 | 0x81694C8C | size: 0x4
.obj lbl_81694C8C, global
	.float 120
.endobj lbl_81694C8C

# .sdata2:0x8 | 0x81694C90 | size: 0x4
.obj lbl_81694C90, global
	.float 0
.endobj lbl_81694C90

# .sdata2:0xC | 0x81694C94 | size: 0x4
.obj lbl_81694C94, global
	.float 20
.endobj lbl_81694C94

# .sdata2:0x10 | 0x81694C98 | size: 0x4
.obj lbl_81694C98, global
	.float 1
.endobj lbl_81694C98

# .sdata2:0x14 | 0x81694C9C | size: 0x4
.obj lbl_81694C9C, global
	.float 50
.endobj lbl_81694C9C

# 0x81697288..0x81697290 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697288 | size: 0x2
.obj lbl_81697288, global
	.2byte 0x0000
.endobj lbl_81697288

# .sdata:0x2 | 0x8169728A | size: 0x4
.obj lbl_8169728A, global
	.string "arc"
.endobj lbl_8169728A

# .sdata:0x6 | 0x8169728E | size: 0x2
.obj gap_11_8169728E_sdata, global
.hidden gap_11_8169728E_sdata
	.2byte 0x0000
.endobj gap_11_8169728E_sdata
