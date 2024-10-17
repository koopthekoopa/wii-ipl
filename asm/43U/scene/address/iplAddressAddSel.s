.include "macros.inc"
.file "iplAddressAddSel.cpp"

# 0x81387414..0x8138807C | size: 0xC68
.text
.balign 4

# .text:0x0 | 0x81387414 | size: 0x64
# ipl::scene::AddressAddSel::AddressAddSel(EGG::Heap*)
.fn __ct__Q33ipl5scene13AddressAddSelFPQ23EGG4Heap, global
/* 81387414 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387418 | 7C 08 02 A6 */	mflr r0
/* 8138741C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387420 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81387424 | 7C 7F 1B 78 */	mr r31, r3
/* 81387428 | 48 08 3D E1 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 8138742C | 3C A0 81 64 */	lis r5, __vt__Q33ipl5scene13AddressAddSel@ha
/* 81387430 | 38 C0 00 00 */	li r6, 0x0
/* 81387434 | 38 A5 7D C4 */	addi r5, r5, __vt__Q33ipl5scene13AddressAddSel@l
/* 81387438 | 90 DF 00 60 */	stw r6, 0x60(r31)
/* 8138743C | 38 85 00 1C */	addi r4, r5, 0x1c
/* 81387440 | 7F E3 FB 78 */	mr r3, r31
/* 81387444 | 38 05 00 68 */	addi r0, r5, 0x68
/* 81387448 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 8138744C | 90 9F 00 14 */	stw r4, 0x14(r31)
/* 81387450 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 81387454 | 90 DF 00 64 */	stw r6, 0x64(r31)
/* 81387458 | 90 DF 00 68 */	stw r6, 0x68(r31)
/* 8138745C | 90 DF 00 6C */	stw r6, 0x6c(r31)
/* 81387460 | 90 DF 00 70 */	stw r6, 0x70(r31)
/* 81387464 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387468 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138746C | 7C 08 03 A6 */	mtlr r0
/* 81387470 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387474 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene13AddressAddSelFPQ23EGG4Heap

# .text:0x64 | 0x81387478 | size: 0x2CC
# ipl::scene::AddressAddSel::create()
.fn create__Q33ipl5scene13AddressAddSelFv, global
/* 81387478 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138747C | 7C 08 02 A6 */	mflr r0
/* 81387480 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387484 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387488 | 48 27 20 39 */	bl _savegpr_27
/* 8138748C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81387490 | 3F 80 81 64 */	lis r28, lbl_81647C90@ha
/* 81387494 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81387498 | 7C 7F 1B 78 */	mr r31, r3
/* 8138749C | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813874A0 | 3B 9C 7C 90 */	addi r28, r28, lbl_81647C90@l
/* 813874A4 | 38 80 00 04 */	li r4, 0x4
/* 813874A8 | 48 08 3C 91 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813874AC | 83 A3 0D 20 */	lwz r29, 0xd20(r3)
/* 813874B0 | 38 60 05 80 */	li r3, 0x580
/* 813874B4 | 48 27 0B E9 */	bl __nw__FUl
/* 813874B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813874BC | 41 82 00 18 */	beq .L_813874D4
/* 813874C0 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813874C4 | 7F A5 EB 78 */	mr r5, r29
/* 813874C8 | 38 FC 00 12 */	addi r7, r28, 0x12
/* 813874CC | 38 CD 85 98 */	li r6, lbl_816965D8@sda21
/* 813874D0 | 4B FE 2B 55 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813874D4:
/* 813874D4 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 813874D8 | 38 9C 00 24 */	addi r4, r28, 0x24
/* 813874DC | 38 BC 00 3F */	addi r5, r28, 0x3f
/* 813874E0 | 38 C0 00 00 */	li r6, 0x0
/* 813874E4 | 38 E0 00 01 */	li r7, 0x1
/* 813874E8 | 4B FE 2F F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813874EC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813874F0 | 38 9C 00 4F */	addi r4, r28, 0x4f
/* 813874F4 | 38 BC 00 3F */	addi r5, r28, 0x3f
/* 813874F8 | 38 C0 00 00 */	li r6, 0x0
/* 813874FC | 38 E0 00 00 */	li r7, 0x0
/* 81387500 | 4B FE 2F E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81387504 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387508 | 38 9C 00 6A */	addi r4, r28, 0x6a
/* 8138750C | 38 BC 00 83 */	addi r5, r28, 0x83
/* 81387510 | 38 C0 00 00 */	li r6, 0x0
/* 81387514 | 38 E0 00 00 */	li r7, 0x0
/* 81387518 | 4B FE 2F C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138751C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387520 | 38 9C 00 6A */	addi r4, r28, 0x6a
/* 81387524 | 38 BC 00 8C */	addi r5, r28, 0x8c
/* 81387528 | 38 C0 00 00 */	li r6, 0x0
/* 8138752C | 38 E0 00 00 */	li r7, 0x0
/* 81387530 | 4B FE 2F B1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81387534 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387538 | 38 9C 00 95 */	addi r4, r28, 0x95
/* 8138753C | 38 BC 00 83 */	addi r5, r28, 0x83
/* 81387540 | 38 C0 00 00 */	li r6, 0x0
/* 81387544 | 38 E0 00 00 */	li r7, 0x0
/* 81387548 | 4B FE 2F 99 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138754C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387550 | 38 9C 00 95 */	addi r4, r28, 0x95
/* 81387554 | 38 BC 00 8C */	addi r5, r28, 0x8c
/* 81387558 | 38 C0 00 00 */	li r6, 0x0
/* 8138755C | 38 E0 00 00 */	li r7, 0x0
/* 81387560 | 4B FE 2F 81 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81387564 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387568 | 38 9C 00 AF */	addi r4, r28, 0xaf
/* 8138756C | 38 BC 00 83 */	addi r5, r28, 0x83
/* 81387570 | 38 C0 00 00 */	li r6, 0x0
/* 81387574 | 38 E0 00 00 */	li r7, 0x0
/* 81387578 | 4B FE 2F 69 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138757C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387580 | 38 9C 00 AF */	addi r4, r28, 0xaf
/* 81387584 | 38 BC 00 8C */	addi r5, r28, 0x8c
/* 81387588 | 38 C0 00 00 */	li r6, 0x0
/* 8138758C | 38 E0 00 00 */	li r7, 0x0
/* 81387590 | 4B FE 2F 51 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81387594 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387598 | 4B FE 30 9D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8138759C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813875A0 | 38 80 00 00 */	li r4, 0x0
/* 813875A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813875A8 | 48 18 AD 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813875AC | 7C 7D 1B 78 */	mr r29, r3
/* 813875B0 | 4B FD B2 C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813875B4 | 38 00 00 01 */	li r0, 0x1
/* 813875B8 | 38 60 00 10 */	li r3, 0x10
/* 813875BC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813875C0 | 48 27 0A DD */	bl __nw__FUl
/* 813875C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813875C8 | 41 82 00 1C */	beq .L_813875E4
/* 813875CC | 38 00 00 00 */	li r0, 0x0
/* 813875D0 | 3C 80 81 64 */	lis r4, __vt__Q33ipl5scene18AddressAddSelEvent@ha
/* 813875D4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813875D8 | 38 84 7D AC */	addi r4, r4, __vt__Q33ipl5scene18AddressAddSelEvent@l
/* 813875DC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813875E0 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813875E4:
/* 813875E4 | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 813875E8 | 38 60 00 34 */	li r3, 0x34
/* 813875EC | 48 27 0A B1 */	bl __nw__FUl
/* 813875F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813875F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813875F8 | 41 82 00 88 */	beq .L_81387680
/* 813875FC | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 81387600 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 81387604 | 80 DF 00 6C */	lwz r6, 0x6c(r31)
/* 81387608 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 8138760C | 38 00 00 00 */	li r0, 0x0
/* 81387610 | 3B C5 02 98 */	addi r30, r5, 0x298
/* 81387614 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81387618 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8138761C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81387620 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81387624 | 41 82 00 1C */	beq .L_81387640
/* 81387628 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 8138762C | 7C C3 33 78 */	mr r3, r6
/* 81387630 | 7F A4 EB 78 */	mr r4, r29
/* 81387634 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81387638 | 7D 89 03 A6 */	mtctr r12
/* 8138763C | 4E 80 04 21 */	bctrl
.L_81387640:
/* 81387640 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81387644 | 38 80 00 08 */	li r4, 0x8
/* 81387648 | 48 18 AA 15 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8138764C | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 81387650 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 81387654 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 81387658 | 38 80 00 08 */	li r4, 0x8
/* 8138765C | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 81387660 | 93 DD 00 24 */	stw r30, 0x24(r29)
/* 81387664 | 48 18 A9 F9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81387668 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 8138766C | 38 00 00 00 */	li r0, 0x0
/* 81387670 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 81387674 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 81387678 | 90 1D 00 2C */	stw r0, 0x2c(r29)
/* 8138767C | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_81387680:
/* 81387680 | 93 BF 00 70 */	stw r29, 0x70(r31)
/* 81387684 | 7F A3 EB 78 */	mr r3, r29
/* 81387688 | 80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8138768C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81387690 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81387694 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81387698 | 7D 89 03 A6 */	mtctr r12
/* 8138769C | 4E 80 04 21 */	bctrl
/* 813876A0 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813876A4 | 38 80 00 00 */	li r4, 0x0
/* 813876A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813876AC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813876B0 | 7D 89 03 A6 */	mtctr r12
/* 813876B4 | 4E 80 04 21 */	bctrl
/* 813876B8 | 3B 60 00 00 */	li r27, 0x0
/* 813876BC | 3B C0 00 00 */	li r30, 0x0
/* 813876C0 | 3B AD 85 90 */	li r29, lbl_816965D0@sda21
.L_813876C4:
/* 813876C4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813876C8 | 38 A0 00 01 */	li r5, 0x1
/* 813876CC | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813876D0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813876D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813876D8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813876DC | 7D 89 03 A6 */	mtctr r12
/* 813876E0 | 4E 80 04 21 */	bctrl
/* 813876E4 | 7C 64 1B 78 */	mr r4, r3
/* 813876E8 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813876EC | 38 A0 00 01 */	li r5, 0x1
/* 813876F0 | 4B FE 3A DD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813876F4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813876F8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813876FC | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 81387700 | 41 80 FF C4 */	blt .L_813876C4
/* 81387704 | 7F E3 FB 78 */	mr r3, r31
/* 81387708 | 38 9C 00 C9 */	addi r4, r28, 0xc9
/* 8138770C | 38 A0 00 4D */	li r5, 0x4d
/* 81387710 | 48 00 06 19 */	bl set_textbox__Q33ipl5scene13AddressAddSelFPCcUl
/* 81387714 | 7F E3 FB 78 */	mr r3, r31
/* 81387718 | 38 9C 00 D7 */	addi r4, r28, 0xd7
/* 8138771C | 38 A0 00 46 */	li r5, 0x46
/* 81387720 | 48 00 06 09 */	bl set_textbox__Q33ipl5scene13AddressAddSelFPCcUl
/* 81387724 | 7F E3 FB 78 */	mr r3, r31
/* 81387728 | 48 00 05 A5 */	bl reset_gui__Q33ipl5scene13AddressAddSelFv
/* 8138772C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387730 | 48 27 1D DD */	bl _restgpr_27
/* 81387734 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387738 | 7C 08 03 A6 */	mtlr r0
/* 8138773C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81387740 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene13AddressAddSelFv

# .text:0x330 | 0x81387744 | size: 0x3C
# ipl::scene::AddressAddSel::calcFadein()
.fn calcFadein__Q33ipl5scene13AddressAddSelFv, global
/* 81387744 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387748 | 7C 08 02 A6 */	mflr r0
/* 8138774C | 38 80 00 00 */	li r4, 0x0
/* 81387750 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387754 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81387758 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138775C | 48 18 AB BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81387760 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81387764 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81387768 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8138776C | 7C 60 19 10 */	subfe r3, r0, r3
/* 81387770 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81387774 | 7C 08 03 A6 */	mtlr r0
/* 81387778 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138777C | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene13AddressAddSelFv

# .text:0x36C | 0x81387780 | size: 0x54
# ipl::scene::AddressAddSel::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene13AddressAddSelFv, global
/* 81387780 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387784 | 7C 08 02 A6 */	mflr r0
/* 81387788 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138778C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81387794 | 7C 7F 1B 78 */	mr r31, r3
/* 81387798 | 41 82 00 08 */	beq .L_813877A0
/* 8138779C | 3B E3 00 58 */	addi r31, r3, 0x58
.L_813877A0:
/* 813877A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813877A4 | 38 80 00 05 */	li r4, 0x5
/* 813877A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813877AC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813877B0 | 48 08 39 89 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813877B4 | 7F E4 FB 78 */	mr r4, r31
/* 813877B8 | 38 A0 00 00 */	li r5, 0x0
/* 813877BC | 48 01 51 81 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813877C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813877C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813877C8 | 7C 08 03 A6 */	mtlr r0
/* 813877CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813877D0 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene13AddressAddSelFv

# .text:0x3C0 | 0x813877D4 | size: 0x60
# ipl::scene::AddressAddSel::calcNormal()
.fn calcNormal__Q33ipl5scene13AddressAddSelFv, global
/* 813877D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813877D8 | 7C 08 02 A6 */	mflr r0
/* 813877DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813877E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813877E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813877E8 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 813877EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813877F0 | 41 82 00 1C */	beq .L_8138780C
/* 813877F4 | 40 80 00 1C */	bge .L_81387810
/* 813877F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813877FC | 40 80 00 08 */	bge .L_81387804
/* 81387800 | 48 00 00 10 */	b .L_81387810
.L_81387804:
/* 81387804 | 48 00 01 2D */	bl stt_normal__Q33ipl5scene13AddressAddSelFv
/* 81387808 | 48 00 00 08 */	b .L_81387810
.L_8138780C:
/* 8138780C | 48 00 01 95 */	bl stt_wait_decide_anm__Q33ipl5scene13AddressAddSelFv
.L_81387810:
/* 81387810 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81387814 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387818 | 38 03 FF FE */	subi r0, r3, 0x2
/* 8138781C | 7C 00 00 34 */	cntlzw r0, r0
/* 81387820 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81387824 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81387828 | 7C 08 03 A6 */	mtlr r0
/* 8138782C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387830 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene13AddressAddSelFv

# .text:0x420 | 0x81387834 | size: 0x68
# ipl::scene::AddressAddSel::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene13AddressAddSelFv, global
/* 81387834 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387838 | 7C 08 02 A6 */	mflr r0
/* 8138783C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81387840 | 38 80 00 05 */	li r4, 0x5
/* 81387844 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387848 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138784C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81387850 | 7C 7F 1B 78 */	mr r31, r3
/* 81387854 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81387858 | 48 08 38 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138785C | 38 80 00 00 */	li r4, 0x0
/* 81387860 | 38 A0 00 00 */	li r5, 0x0
/* 81387864 | 48 01 50 D9 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81387868 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8138786C | 38 80 00 01 */	li r4, 0x1
/* 81387870 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81387874 | 48 18 AA A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81387878 | 7C 7F 1B 78 */	mr r31, r3
/* 8138787C | 4B FD AF F5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81387880 | 38 00 00 01 */	li r0, 0x1
/* 81387884 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81387888 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138788C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81387890 | 7C 08 03 A6 */	mtlr r0
/* 81387894 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387898 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene13AddressAddSelFv

# .text:0x488 | 0x8138789C | size: 0x3C
# ipl::scene::AddressAddSel::calcFadeout()
.fn calcFadeout__Q33ipl5scene13AddressAddSelFv, global
/* 8138789C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813878A0 | 7C 08 02 A6 */	mflr r0
/* 813878A4 | 38 80 00 01 */	li r4, 0x1
/* 813878A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813878AC | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813878B0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813878B4 | 48 18 AA 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813878B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813878BC | 38 63 FF FF */	subi r3, r3, 0x1
/* 813878C0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813878C4 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813878C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813878CC | 7C 08 03 A6 */	mtlr r0
/* 813878D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813878D4 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene13AddressAddSelFv

# .text:0x4C4 | 0x813878D8 | size: 0x8
# ipl::scene::AddressAddSel::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene13AddressAddSelFv, global
/* 813878D8 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813878DC | 4B FE 2E 28 */	b calc__Q33ipl6layout6ObjectFv
.endfn calcCommonAfter__Q33ipl5scene13AddressAddSelFv

# .text:0x4CC | 0x813878E0 | size: 0x50
# ipl::scene::AddressAddSel::draw()
.fn draw__Q33ipl5scene13AddressAddSelFv, global
/* 813878E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813878E4 | 7C 08 02 A6 */	mflr r0
/* 813878E8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813878EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813878F0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813878F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813878F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813878FC | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 81387900 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 81387904 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81387908 | 40 82 00 14 */	bne .L_8138791C
/* 8138790C | 38 60 00 00 */	li r3, 0x0
/* 81387910 | 4B FD B1 5D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 81387914 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81387918 | 4B FE 2E 85 */	bl draw__Q33ipl6layout6ObjectFv
.L_8138791C:
/* 8138791C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81387920 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387924 | 7C 08 03 A6 */	mtlr r0
/* 81387928 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138792C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene13AddressAddSelFv

# .text:0x51C | 0x81387930 | size: 0x70
# ipl::scene::AddressAddSel::stt_normal()
.fn stt_normal__Q33ipl5scene13AddressAddSelFv, global
/* 81387930 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387934 | 7C 08 02 A6 */	mflr r0
/* 81387938 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138793C | 38 80 00 05 */	li r4, 0x5
/* 81387940 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387944 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81387948 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138794C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81387950 | 7C 7E 1B 78 */	mr r30, r3
/* 81387954 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81387958 | 48 08 37 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138795C | 7C 7F 1B 78 */	mr r31, r3
/* 81387960 | 48 01 4F B5 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81387964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387968 | 41 82 00 0C */	beq .L_81387974
/* 8138796C | 7F E3 FB 78 */	mr r3, r31
/* 81387970 | 48 01 4B FD */	bl update__Q33ipl5scene6ButtonFv
.L_81387974:
/* 81387974 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 81387978 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138797C | 40 82 00 0C */	bne .L_81387988
/* 81387980 | 80 7E 00 70 */	lwz r3, 0x70(r30)
/* 81387984 | 4B FE 36 09 */	bl update__Q33ipl3gui11PaneManagerFv
.L_81387988:
/* 81387988 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138798C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387990 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81387994 | 7C 08 03 A6 */	mtlr r0
/* 81387998 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138799C | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene13AddressAddSelFv

# .text:0x58C | 0x813879A0 | size: 0x68
# ipl::scene::AddressAddSel::stt_wait_decide_anm()
.fn stt_wait_decide_anm__Q33ipl5scene13AddressAddSelFv, global
/* 813879A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813879A4 | 7C 08 02 A6 */	mflr r0
/* 813879A8 | 38 80 00 06 */	li r4, 0x6
/* 813879AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813879B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813879B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813879B8 | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 813879BC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813879C0 | 48 18 A9 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813879C4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813879C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813879CC | 41 82 00 28 */	beq .L_813879F4
/* 813879D0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813879D4 | 38 80 00 07 */	li r4, 0x7
/* 813879D8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813879DC | 48 18 A9 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813879E0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813879E4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813879E8 | 41 82 00 0C */	beq .L_813879F4
/* 813879EC | 38 00 00 02 */	li r0, 0x2
/* 813879F0 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_813879F4:
/* 813879F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813879F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813879FC | 7C 08 03 A6 */	mtlr r0
/* 81387A00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387A04 | 4E 80 00 20 */	blr
.endfn stt_wait_decide_anm__Q33ipl5scene13AddressAddSelFv

# .text:0x5F4 | 0x81387A08 | size: 0xBC
# ipl::scene::AddressAddSel::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene13AddressAddSelFPCcPQ33ipl10controller9Interface, global
/* 81387A08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387A0C | 7C 08 02 A6 */	mflr r0
/* 81387A10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387A14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387A18 | 48 27 1A B1 */	bl _savegpr_29
/* 81387A1C | 7C 7E 1B 78 */	mr r30, r3
/* 81387A20 | 7C BD 2B 78 */	mr r29, r5
/* 81387A24 | 48 00 02 39 */	bl get_button_no__Q33ipl5scene13AddressAddSelFPCc
/* 81387A28 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81387A2C | 40 80 00 80 */	bge .L_81387AAC
/* 81387A30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387A34 | 40 80 00 08 */	bge .L_81387A3C
/* 81387A38 | 48 00 00 74 */	b .L_81387AAC
.L_81387A3C:
/* 81387A3C | 54 60 10 3A */	slwi r0, r3, 2
/* 81387A40 | 7F FE 02 14 */	add r31, r30, r0
/* 81387A44 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 81387A48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81387A4C | 40 82 00 54 */	bne .L_81387AA0
/* 81387A50 | 80 BE 00 68 */	lwz r5, 0x68(r30)
/* 81387A54 | 38 03 00 02 */	addi r0, r3, 0x2
/* 81387A58 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81387A5C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81387A60 | 48 18 A8 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81387A64 | 7C 7E 1B 78 */	mr r30, r3
/* 81387A68 | 4B FD AE 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81387A6C | 38 00 00 01 */	li r0, 0x1
/* 81387A70 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81387A74 | 3C 80 81 64 */	lis r4, lbl_81647D75@ha
/* 81387A78 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81387A7C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81387A80 | 38 84 7D 75 */	addi r4, r4, lbl_81647D75@l
/* 81387A84 | 4B FE 39 E9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81387A88 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81387A8C | 7F A3 EB 78 */	mr r3, r29
/* 81387A90 | 38 80 00 01 */	li r4, 0x1
/* 81387A94 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81387A98 | 7D 89 03 A6 */	mtctr r12
/* 81387A9C | 4E 80 04 21 */	bctrl
.L_81387AA0:
/* 81387AA0 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81387AA4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81387AA8 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_81387AAC:
/* 81387AAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387AB0 | 48 27 1A 65 */	bl _restgpr_29
/* 81387AB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387AB8 | 7C 08 03 A6 */	mtlr r0
/* 81387ABC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81387AC0 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene13AddressAddSelFPCcPQ33ipl10controller9Interface

# .text:0x6B0 | 0x81387AC4 | size: 0x8C
# ipl::scene::AddressAddSel::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene13AddressAddSelFPCc, global
/* 81387AC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387AC8 | 7C 08 02 A6 */	mflr r0
/* 81387ACC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387AD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81387AD4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81387AD8 | 7C 7E 1B 78 */	mr r30, r3
/* 81387ADC | 48 00 01 81 */	bl get_button_no__Q33ipl5scene13AddressAddSelFPCc
/* 81387AE0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81387AE4 | 40 80 00 54 */	bge .L_81387B38
/* 81387AE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387AEC | 40 80 00 08 */	bge .L_81387AF4
/* 81387AF0 | 48 00 00 48 */	b .L_81387B38
.L_81387AF4:
/* 81387AF4 | 54 60 10 3A */	slwi r0, r3, 2
/* 81387AF8 | 7F FE 02 14 */	add r31, r30, r0
/* 81387AFC | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 81387B00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81387B04 | 40 82 00 28 */	bne .L_81387B2C
/* 81387B08 | 80 BE 00 68 */	lwz r5, 0x68(r30)
/* 81387B0C | 38 03 00 04 */	addi r0, r3, 0x4
/* 81387B10 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81387B14 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81387B18 | 48 18 A8 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81387B1C | 7C 7E 1B 78 */	mr r30, r3
/* 81387B20 | 4B FD AD 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81387B24 | 38 00 00 01 */	li r0, 0x1
/* 81387B28 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_81387B2C:
/* 81387B2C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81387B30 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81387B34 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_81387B38:
/* 81387B38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81387B3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387B40 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81387B44 | 7C 08 03 A6 */	mtlr r0
/* 81387B48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387B4C | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene13AddressAddSelFPCc

# .text:0x73C | 0x81387B50 | size: 0x10C
# ipl::scene::AddressAddSel::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene13AddressAddSelFPCc, global
/* 81387B50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387B54 | 7C 08 02 A6 */	mflr r0
/* 81387B58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387B5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387B60 | 48 27 19 69 */	bl _savegpr_29
/* 81387B64 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81387B68 | 7C 9F 23 78 */	mr r31, r4
/* 81387B6C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81387B70 | 7C 7D 1B 78 */	mr r29, r3
/* 81387B74 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81387B78 | 38 80 00 05 */	li r4, 0x5
/* 81387B7C | 48 08 35 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81387B80 | 7C 7E 1B 78 */	mr r30, r3
/* 81387B84 | 7F A3 EB 78 */	mr r3, r29
/* 81387B88 | 7F E4 FB 78 */	mr r4, r31
/* 81387B8C | 48 00 00 D1 */	bl get_button_no__Q33ipl5scene13AddressAddSelFPCc
/* 81387B90 | 80 1D 00 64 */	lwz r0, 0x64(r29)
/* 81387B94 | 7C 7F 1B 78 */	mr r31, r3
/* 81387B98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81387B9C | 41 82 00 08 */	beq .L_81387BA4
/* 81387BA0 | 48 00 00 A4 */	b .L_81387C44
.L_81387BA4:
/* 81387BA4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81387BA8 | 40 80 00 9C */	bge .L_81387C44
/* 81387BAC | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 81387BB0 | 40 84 00 08 */	bge cr1, .L_81387BB8
/* 81387BB4 | 48 00 00 90 */	b .L_81387C44
.L_81387BB8:
/* 81387BB8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81387BBC | 41 82 00 24 */	beq .L_81387BE0
/* 81387BC0 | 40 80 00 30 */	bge .L_81387BF0
/* 81387BC4 | 40 84 00 08 */	bge cr1, .L_81387BCC
/* 81387BC8 | 48 00 00 28 */	b .L_81387BF0
.L_81387BCC:
/* 81387BCC | 7F A3 EB 78 */	mr r3, r29
/* 81387BD0 | 38 80 00 17 */	li r4, 0x17
/* 81387BD4 | 38 A0 00 01 */	li r5, 0x1
/* 81387BD8 | 48 08 23 21 */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
/* 81387BDC | 48 00 00 14 */	b .L_81387BF0
.L_81387BE0:
/* 81387BE0 | 7F A3 EB 78 */	mr r3, r29
/* 81387BE4 | 38 80 00 17 */	li r4, 0x17
/* 81387BE8 | 38 A0 00 02 */	li r5, 0x2
/* 81387BEC | 48 08 23 0D */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
.L_81387BF0:
/* 81387BF0 | 7F C3 F3 78 */	mr r3, r30
/* 81387BF4 | 38 80 00 0C */	li r4, 0xc
/* 81387BF8 | 48 01 58 31 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81387BFC | 7F C3 F3 78 */	mr r3, r30
/* 81387C00 | 38 80 00 0B */	li r4, 0xb
/* 81387C04 | 48 01 58 25 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81387C08 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81387C0C | 38 1F 00 06 */	addi r0, r31, 0x6
/* 81387C10 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81387C14 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81387C18 | 48 18 A7 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81387C1C | 7C 7E 1B 78 */	mr r30, r3
/* 81387C20 | 4B FD AC 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81387C24 | 3B E0 00 01 */	li r31, 0x1
/* 81387C28 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81387C2C | 3C 80 81 64 */	lis r4, lbl_81647D8B@ha
/* 81387C30 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81387C34 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81387C38 | 38 84 7D 8B */	addi r4, r4, lbl_81647D8B@l
/* 81387C3C | 4B FE 38 31 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81387C40 | 93 FD 00 64 */	stw r31, 0x64(r29)
.L_81387C44:
/* 81387C44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387C48 | 48 27 18 CD */	bl _restgpr_29
/* 81387C4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387C50 | 7C 08 03 A6 */	mtlr r0
/* 81387C54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81387C58 | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene13AddressAddSelFPCc

# .text:0x848 | 0x81387C5C | size: 0x70
# ipl::scene::AddressAddSel::get_button_no(const char*)
.fn get_button_no__Q33ipl5scene13AddressAddSelFPCc, global
/* 81387C5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387C60 | 7C 08 02 A6 */	mflr r0
/* 81387C64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387C68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387C6C | 48 27 18 55 */	bl _savegpr_27
/* 81387C70 | 7C 9B 23 78 */	mr r27, r4
/* 81387C74 | 3B A0 FF FF */	li r29, -0x1
/* 81387C78 | 3B 80 00 00 */	li r28, 0x0
/* 81387C7C | 3B E0 00 00 */	li r31, 0x0
/* 81387C80 | 3B CD 85 90 */	li r30, lbl_816965D0@sda21
.L_81387C84:
/* 81387C84 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 81387C88 | 7F 64 DB 78 */	mr r4, r27
/* 81387C8C | 48 27 A7 F5 */	bl strcmp
/* 81387C90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387C94 | 40 82 00 0C */	bne .L_81387CA0
/* 81387C98 | 7F 9D E3 78 */	mr r29, r28
/* 81387C9C | 48 00 00 14 */	b .L_81387CB0
.L_81387CA0:
/* 81387CA0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81387CA4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81387CA8 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81387CAC | 41 80 FF D8 */	blt .L_81387C84
.L_81387CB0:
/* 81387CB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387CB4 | 7F A3 EB 78 */	mr r3, r29
/* 81387CB8 | 48 27 18 55 */	bl _restgpr_27
/* 81387CBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387CC0 | 7C 08 03 A6 */	mtlr r0
/* 81387CC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81387CC8 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene13AddressAddSelFPCc

# .text:0x8B8 | 0x81387CCC | size: 0x5C
# ipl::scene::AddressAddSel::reset_gui()
.fn reset_gui__Q33ipl5scene13AddressAddSelFv, global
/* 81387CCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387CD0 | 7C 08 02 A6 */	mflr r0
/* 81387CD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387CD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81387CDC | 7C 7F 1B 78 */	mr r31, r3
/* 81387CE0 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 81387CE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387CE8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81387CEC | 7D 89 03 A6 */	mtctr r12
/* 81387CF0 | 4E 80 04 21 */	bctrl
/* 81387CF4 | 38 00 00 02 */	li r0, 0x2
/* 81387CF8 | 38 A0 00 00 */	li r5, 0x0
/* 81387CFC | 38 60 00 00 */	li r3, 0x0
/* 81387D00 | 7C 09 03 A6 */	mtctr r0
.L_81387D04:
/* 81387D04 | 7C 9F 1A 14 */	add r4, r31, r3
/* 81387D08 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81387D0C | 90 A4 00 74 */	stw r5, 0x74(r4)
/* 81387D10 | 42 00 FF F4 */	bdnz .L_81387D04
/* 81387D14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81387D18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387D1C | 7C 08 03 A6 */	mtlr r0
/* 81387D20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387D24 | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene13AddressAddSelFv

# .text:0x914 | 0x81387D28 | size: 0xCC
# ipl::scene::AddressAddSel::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene13AddressAddSelFPCcUl, global
/* 81387D28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387D2C | 7C 08 02 A6 */	mflr r0
/* 81387D30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387D34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387D38 | 48 27 17 91 */	bl _savegpr_29
/* 81387D3C | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81387D40 | 7C BD 2B 78 */	mr r29, r5
/* 81387D44 | 38 A0 00 01 */	li r5, 0x1
/* 81387D48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81387D4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387D50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81387D54 | 7D 89 03 A6 */	mtctr r12
/* 81387D58 | 4E 80 04 21 */	bctrl
/* 81387D5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387D60 | 7C 7E 1B 78 */	mr r30, r3
/* 81387D64 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 81387D68 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81387D6C | 7D 89 03 A6 */	mtctr r12
/* 81387D70 | 4E 80 04 21 */	bctrl
/* 81387D74 | 48 00 00 18 */	b .L_81387D8C
.L_81387D78:
/* 81387D78 | 7C 03 F8 40 */	cmplw r3, r31
/* 81387D7C | 40 82 00 0C */	bne .L_81387D88
/* 81387D80 | 38 00 00 01 */	li r0, 0x1
/* 81387D84 | 48 00 00 14 */	b .L_81387D98
.L_81387D88:
/* 81387D88 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81387D8C:
/* 81387D8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387D90 | 40 82 FF E8 */	bne .L_81387D78
/* 81387D94 | 38 00 00 00 */	li r0, 0x0
.L_81387D98:
/* 81387D98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81387D9C | 41 82 00 08 */	beq .L_81387DA4
/* 81387DA0 | 48 00 00 08 */	b .L_81387DA8
.L_81387DA4:
/* 81387DA4 | 3B C0 00 00 */	li r30, 0x0
.L_81387DA8:
/* 81387DA8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81387DAC | 7F A4 EB 78 */	mr r4, r29
/* 81387DB0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81387DB4 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 81387DB8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81387DBC | 4B FB 6A 01 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81387DC0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81387DC4 | 7C 64 1B 78 */	mr r4, r3
/* 81387DC8 | 7F C3 F3 78 */	mr r3, r30
/* 81387DCC | 38 A0 00 00 */	li r5, 0x0
/* 81387DD0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81387DD4 | 7D 89 03 A6 */	mtctr r12
/* 81387DD8 | 4E 80 04 21 */	bctrl
/* 81387DDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387DE0 | 48 27 17 35 */	bl _restgpr_29
/* 81387DE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387DE8 | 7C 08 03 A6 */	mtlr r0
/* 81387DEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81387DF0 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene13AddressAddSelFPCcUl

# .text:0x9E0 | 0x81387DF4 | size: 0x12C
# ipl::scene::AddressAddSel::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface, global
/* 81387DF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387DF8 | 7C 08 02 A6 */	mflr r0
/* 81387DFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387E00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387E04 | 48 27 16 C5 */	bl _savegpr_29
/* 81387E08 | 7C 7D 1B 78 */	mr r29, r3
/* 81387E0C | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 81387E10 | 7C BF 2B 78 */	mr r31, r5
/* 81387E14 | 7C DE 33 78 */	mr r30, r6
/* 81387E18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387E1C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81387E20 | 7D 89 03 A6 */	mtctr r12
/* 81387E24 | 4E 80 04 21 */	bctrl
/* 81387E28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387E2C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81387E30 | 7D 89 03 A6 */	mtctr r12
/* 81387E34 | 4E 80 04 21 */	bctrl
/* 81387E38 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81387E3C | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 81387E40 | 41 82 00 08 */	beq .L_81387E48
/* 81387E44 | 48 00 00 C4 */	b .L_81387F08
.L_81387E48:
/* 81387E48 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81387E4C | 41 82 00 BC */	beq .L_81387F08
/* 81387E50 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81387E54 | 3C 80 00 10 */	lis r4, 0x10
/* 81387E58 | 7F C3 F3 78 */	mr r3, r30
/* 81387E5C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81387E60 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81387E64 | 7D 89 03 A6 */	mtctr r12
/* 81387E68 | 4E 80 04 21 */	bctrl
/* 81387E6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387E70 | 41 82 00 98 */	beq .L_81387F08
/* 81387E74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81387E78 | 38 80 00 05 */	li r4, 0x5
/* 81387E7C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81387E80 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81387E84 | 48 08 32 B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81387E88 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 81387E8C | 7C 7E 1B 78 */	mr r30, r3
/* 81387E90 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 81387E94 | 7F E3 FB 78 */	mr r3, r31
/* 81387E98 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 81387E9C | 48 27 A5 E5 */	bl strcmp
/* 81387EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387EA4 | 40 82 00 64 */	bne .L_81387F08
/* 81387EA8 | 7F C3 F3 78 */	mr r3, r30
/* 81387EAC | 38 80 00 1B */	li r4, 0x1b
/* 81387EB0 | 48 01 55 79 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81387EB4 | 7F C3 F3 78 */	mr r3, r30
/* 81387EB8 | 38 80 00 0C */	li r4, 0xc
/* 81387EBC | 48 01 55 6D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81387EC0 | 7F C3 F3 78 */	mr r3, r30
/* 81387EC4 | 38 80 00 00 */	li r4, 0x0
/* 81387EC8 | 38 A0 00 23 */	li r5, 0x23
/* 81387ECC | 48 01 55 91 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81387ED0 | 7F C3 F3 78 */	mr r3, r30
/* 81387ED4 | 38 80 00 01 */	li r4, 0x1
/* 81387ED8 | 38 A0 00 29 */	li r5, 0x29
/* 81387EDC | 48 01 55 81 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81387EE0 | 7F C3 F3 78 */	mr r3, r30
/* 81387EE4 | 38 80 00 0F */	li r4, 0xf
/* 81387EE8 | 48 01 55 41 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81387EEC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81387EF0 | 3C 80 81 64 */	lis r4, lbl_81647D9A@ha
/* 81387EF4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81387EF8 | 38 84 7D 9A */	addi r4, r4, lbl_81647D9A@l
/* 81387EFC | 4B FE 35 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81387F00 | 38 00 00 02 */	li r0, 0x2
/* 81387F04 | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_81387F08:
/* 81387F08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387F0C | 48 27 16 09 */	bl _restgpr_29
/* 81387F10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387F14 | 7C 08 03 A6 */	mtlr r0
/* 81387F18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81387F1C | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface

# .text:0xB0C | 0x81387F20 | size: 0xE8
# ipl::scene::AddressAddSelEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene18AddressAddSelEventFUlUlPv, global
/* 81387F20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387F24 | 7C 08 02 A6 */	mflr r0
/* 81387F28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387F2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387F30 | 48 27 15 95 */	bl _savegpr_28
/* 81387F34 | 7C 7C 1B 78 */	mr r28, r3
/* 81387F38 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81387F3C | 7C BD 2B 78 */	mr r29, r5
/* 81387F40 | 7C DE 33 78 */	mr r30, r6
/* 81387F44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387F48 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81387F4C | 7D 89 03 A6 */	mtctr r12
/* 81387F50 | 4E 80 04 21 */	bctrl
/* 81387F54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81387F58 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81387F5C | 7D 89 03 A6 */	mtctr r12
/* 81387F60 | 4E 80 04 21 */	bctrl
/* 81387F64 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81387F68 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 81387F6C | 41 82 00 20 */	beq .L_81387F8C
/* 81387F70 | 40 80 00 10 */	bge .L_81387F80
/* 81387F74 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81387F78 | 40 80 00 40 */	bge .L_81387FB8
/* 81387F7C | 48 00 00 74 */	b .L_81387FF0
.L_81387F80:
/* 81387F80 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 81387F84 | 40 80 00 6C */	bge .L_81387FF0
/* 81387F88 | 48 00 00 20 */	b .L_81387FA8
.L_81387F8C:
/* 81387F8C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81387F90 | 41 82 00 60 */	beq .L_81387FF0
/* 81387F94 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 81387F98 | 7F E4 FB 78 */	mr r4, r31
/* 81387F9C | 7F C5 F3 78 */	mr r5, r30
/* 81387FA0 | 4B FF FA 69 */	bl start_point_event__Q33ipl5scene13AddressAddSelFPCcPQ33ipl10controller9Interface
/* 81387FA4 | 48 00 00 4C */	b .L_81387FF0
.L_81387FA8:
/* 81387FA8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 81387FAC | 7F E4 FB 78 */	mr r4, r31
/* 81387FB0 | 4B FF FB 15 */	bl start_left_event__Q33ipl5scene13AddressAddSelFPCc
/* 81387FB4 | 48 00 00 3C */	b .L_81387FF0
.L_81387FB8:
/* 81387FB8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81387FBC | 41 82 00 34 */	beq .L_81387FF0
/* 81387FC0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81387FC4 | 3C 80 00 10 */	lis r4, 0x10
/* 81387FC8 | 7F C3 F3 78 */	mr r3, r30
/* 81387FCC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81387FD0 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81387FD4 | 7D 89 03 A6 */	mtctr r12
/* 81387FD8 | 4E 80 04 21 */	bctrl
/* 81387FDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387FE0 | 41 82 00 10 */	beq .L_81387FF0
/* 81387FE4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 81387FE8 | 7F E4 FB 78 */	mr r4, r31
/* 81387FEC | 4B FF FB 65 */	bl start_trig_event__Q33ipl5scene13AddressAddSelFPCc
.L_81387FF0:
/* 81387FF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387FF4 | 48 27 15 1D */	bl _restgpr_28
/* 81387FF8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81387FFC | 7C 08 03 A6 */	mtlr r0
/* 81388000 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81388004 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene18AddressAddSelEventFUlUlPv

# .text:0xBF4 | 0x81388008 | size: 0x4
# ipl::scene::Base::destroy()
.fn destroy__Q33ipl5scene4BaseFv, global
/* 81388008 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene4BaseFv

# .text:0xBF8 | 0x8138800C | size: 0x4
# ipl::scene::Base::prepare()
.fn prepare__Q33ipl5scene4BaseFv, global
/* 8138800C | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene4BaseFv

# .text:0xBFC | 0x81388010 | size: 0x5C
# ipl::scene::AddressAddSel::~AddressAddSel()
.fn __dt__Q33ipl5scene13AddressAddSelFv, global
/* 81388010 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81388014 | 7C 08 02 A6 */	mflr r0
/* 81388018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138801C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81388020 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81388024 | 7C 9F 23 78 */	mr r31, r4
/* 81388028 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138802C | 7C 7E 1B 78 */	mr r30, r3
/* 81388030 | 41 82 00 20 */	beq .L_81388050
/* 81388034 | 41 82 00 0C */	beq .L_81388040
/* 81388038 | 38 80 00 00 */	li r4, 0x0
/* 8138803C | 48 08 1C 29 */	bl __dt__Q33ipl5scene4BaseFv
.L_81388040:
/* 81388040 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81388044 | 40 81 00 0C */	ble .L_81388050
/* 81388048 | 7F C3 F3 78 */	mr r3, r30
/* 8138804C | 48 27 00 99 */	bl __dl__FPv
.L_81388050:
/* 81388050 | 7F C3 F3 78 */	mr r3, r30
/* 81388054 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81388058 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138805C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81388060 | 7C 08 03 A6 */	mtlr r0
/* 81388064 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81388068 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene13AddressAddSelFv

# .text:0xC58 | 0x8138806C | size: 0x8
.fn "@20@__dt__Q33ipl5scene13AddressAddSelFv", global
/* 8138806C | 38 63 FF EC */	subi r3, r3, 0x14
/* 81388070 | 4B FF FF A0 */	b __dt__Q33ipl5scene13AddressAddSelFv
.endfn "@20@__dt__Q33ipl5scene13AddressAddSelFv"

# .text:0xC60 | 0x81388074 | size: 0x8
# ipl::scene::AddressAddSel::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface", global
/* 81388074 | 38 63 FF A8 */	subi r3, r3, 0x58
/* 81388078 | 4B FF FD 7C */	b onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface"

# 0x81647C90..0x81647EE0 | size: 0x250
.data
.balign 8

# .data:0x0 | 0x81647C90 | size: 0x9
.obj lbl_81647C90, global
	.string "B_btn_00"
.endobj lbl_81647C90

# .data:0x9 | 0x81647C99 | size: 0xDC
.obj lbl_81647C99, global
	.4byte 0x425F6274
	.4byte 0x6E5F3031
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F64
	.4byte 0x2E62726C
	.4byte 0x79740074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F645F62
	.4byte 0x746E5F73
	.4byte 0x7472742E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x62746E5F
	.4byte 0x73747274
	.4byte 0x5F666E73
	.4byte 0x68007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x645F6274
	.4byte 0x6E5F666E
	.4byte 0x73682E62
	.4byte 0x726C616E
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F64
	.4byte 0x5F62746E
	.4byte 0x5F696E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x62746E5F
	.4byte 0x30300047
	.4byte 0x5F62746E
	.4byte 0x5F303100
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F645F
	.4byte 0x62746E5F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x645F6274
	.4byte 0x6E5F7073
	.4byte 0x682E6272
	.4byte 0x6C616E00
	.4byte 0x545F6274
	.4byte 0x6E5F6E61
	.4byte 0x6D655F30
	.4byte 0x3000545F
	.4byte 0x62746E5F
	.4byte 0x6E616D65
	.4byte 0x5F303100
.endobj lbl_81647C99

# .data:0xE5 | 0x81647D75 | size: 0x16
.obj lbl_81647D75, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_81647D75

# .data:0xFB | 0x81647D8B | size: 0xF
.obj lbl_81647D8B, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_81647D8B

# .data:0x10A | 0x81647D9A | size: 0x12
.obj lbl_81647D9A, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43414E43
	.4byte 0x454C0000
	.2byte 0x0000
.endobj lbl_81647D9A

# .data:0x11C | 0x81647DAC | size: 0x18
# ipl::scene::AddressAddSelEvent::__vtable
.obj __vt__Q33ipl5scene18AddressAddSelEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene18AddressAddSelEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene18AddressAddSelEvent

# .data:0x134 | 0x81647DC4 | size: 0x11C
# ipl::scene::AddressAddSel::__vtable
.obj __vt__Q33ipl5scene13AddressAddSel, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene13AddressAddSelFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene13AddressAddSelFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene13AddressAddSelFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene13AddressAddSelFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene13AddressAddSelFv
	.4byte initCalcFadeout__Q33ipl5scene13AddressAddSelFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene13AddressAddSelFv
	.4byte calcNormal__Q33ipl5scene13AddressAddSelFv
	.4byte calcFadeout__Q33ipl5scene13AddressAddSelFv
	.4byte calcCommonAfter__Q33ipl5scene13AddressAddSelFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface"
	.4byte onEventDerived__Q33ipl5scene13AddressAddSelFUlUlPCQ33ipl10controller9Interface
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene13AddressAddSel

# 0x816965D0..0x816965E0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816965D0 | size: 0x8
.obj lbl_816965D0, global
	.4byte lbl_81647C90
	.4byte lbl_81647C99
.endobj lbl_816965D0

# .sdata:0x8 | 0x816965D8 | size: 0x4
.obj lbl_816965D8, global
	.string "arc"
.endobj lbl_816965D8

# .sdata:0xC | 0x816965DC | size: 0x4
.obj gap_11_816965DC_sdata, global
.hidden gap_11_816965DC_sdata
	.4byte 0x00000000
.endobj gap_11_816965DC_sdata
