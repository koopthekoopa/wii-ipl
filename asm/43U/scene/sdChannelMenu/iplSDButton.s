.include "macros.inc"
.file "iplSDButton.cpp"

# 0x813E947C..0x813EA88C | size: 0x1410
.text
.balign 4

# .text:0x0 | 0x813E947C | size: 0x9C
# ipl::scene::SDButton::SDButton(EGG::Heap*)
.fn __ct__Q33ipl5scene8SDButtonFPQ23EGG4Heap, global
/* 813E947C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E9480 | 7C 08 02 A6 */	mflr r0
/* 813E9484 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E9488 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E948C | 7C 7F 1B 78 */	mr r31, r3
/* 813E9490 | 48 02 07 5D */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 813E9494 | 3C 80 81 65 */	lis r4, lbl_8165598C@ha
/* 813E9498 | 38 A0 00 00 */	li r5, 0x0
/* 813E949C | 38 84 59 8C */	addi r4, r4, lbl_8165598C@l
/* 813E94A0 | 38 60 00 03 */	li r3, 0x3
/* 813E94A4 | 38 C4 00 1C */	addi r6, r4, 0x1c
/* 813E94A8 | 38 00 00 02 */	li r0, 0x2
/* 813E94AC | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813E94B0 | 38 E0 00 00 */	li r7, 0x0
/* 813E94B4 | 38 80 00 01 */	li r4, 0x1
/* 813E94B8 | 90 DF 00 14 */	stw r6, 0x14(r31)
/* 813E94BC | 90 BF 00 54 */	stw r5, 0x54(r31)
/* 813E94C0 | 90 7F 00 28 */	stw r3, 0x28(r31)
/* 813E94C4 | 7C 09 03 A6 */	mtctr r0
.L_813E94C8:
/* 813E94C8 | 7C 7F 3A 14 */	add r3, r31, r7
/* 813E94CC | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813E94D0 | 98 83 00 80 */	stb r4, 0x80(r3)
/* 813E94D4 | 42 00 FF F4 */	bdnz .L_813E94C8
/* 813E94D8 | 38 00 00 04 */	li r0, 0x4
/* 813E94DC | 38 A0 00 00 */	li r5, 0x0
/* 813E94E0 | 38 60 00 00 */	li r3, 0x0
/* 813E94E4 | 7C 09 03 A6 */	mtctr r0
.L_813E94E8:
/* 813E94E8 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813E94EC | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E94F0 | 90 A4 00 70 */	stw r5, 0x70(r4)
/* 813E94F4 | 42 00 FF F4 */	bdnz .L_813E94E8
/* 813E94F8 | 38 00 00 01 */	li r0, 0x1
/* 813E94FC | 7F E3 FB 78 */	mr r3, r31
/* 813E9500 | 98 1F 00 82 */	stb r0, 0x82(r31)
/* 813E9504 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E9508 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E950C | 7C 08 03 A6 */	mtlr r0
/* 813E9510 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E9514 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8SDButtonFPQ23EGG4Heap

# .text:0x9C | 0x813E9518 | size: 0x58
# ipl::scene::SDButton::~SDButton()
.fn __dt__Q33ipl5scene8SDButtonFv, global
/* 813E9518 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E951C | 7C 08 02 A6 */	mflr r0
/* 813E9520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9524 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E9528 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E952C | 7C 9F 23 78 */	mr r31, r4
/* 813E9530 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E9534 | 7C 7E 1B 78 */	mr r30, r3
/* 813E9538 | 41 82 00 1C */	beq .L_813E9554
/* 813E953C | 38 80 00 00 */	li r4, 0x0
/* 813E9540 | 48 02 07 25 */	bl __dt__Q33ipl5scene4BaseFv
/* 813E9544 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E9548 | 40 81 00 0C */	ble .L_813E9554
/* 813E954C | 7F C3 F3 78 */	mr r3, r30
/* 813E9550 | 48 20 EB 95 */	bl __dl__FPv
.L_813E9554:
/* 813E9554 | 7F C3 F3 78 */	mr r3, r30
/* 813E9558 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E955C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E9560 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E9564 | 7C 08 03 A6 */	mtlr r0
/* 813E9568 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E956C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8SDButtonFv

# .text:0xF4 | 0x813E9570 | size: 0x70
# ipl::scene::SDButton::prepare()
.fn prepare__Q33ipl5scene8SDButtonFv, global
/* 813E9570 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E9574 | 7C 08 02 A6 */	mflr r0
/* 813E9578 | 3C A0 81 65 */	lis r5, lbl_81655654@ha
/* 813E957C | 38 C0 00 00 */	li r6, 0x0
/* 813E9580 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E9584 | 38 A5 56 54 */	addi r5, r5, lbl_81655654@l
/* 813E9588 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E958C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E9590 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E9594 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E9598 | 7C 7E 1B 78 */	mr r30, r3
/* 813E959C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813E95A0 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E95A4 | 4B F5 43 11 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813E95A8 | 90 7E 00 5C */	stw r3, 0x5c(r30)
/* 813E95AC | 3C A0 81 65 */	lis r5, lbl_81655661@ha
/* 813E95B0 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E95B4 | 38 A5 56 61 */	addi r5, r5, lbl_81655661@l
/* 813E95B8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813E95BC | 38 C0 00 00 */	li r6, 0x0
/* 813E95C0 | 4B F5 42 F5 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813E95C4 | 90 7E 00 6C */	stw r3, 0x6c(r30)
/* 813E95C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E95CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E95D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E95D4 | 7C 08 03 A6 */	mtlr r0
/* 813E95D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E95DC | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene8SDButtonFv

# .text:0x164 | 0x813E95E0 | size: 0x48C
# ipl::scene::SDButton::create()
.fn create__Q33ipl5scene8SDButtonFv, global
/* 813E95E0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813E95E4 | 7C 08 02 A6 */	mflr r0
/* 813E95E8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813E95EC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E95F0 | 48 20 FE C5 */	bl _savegpr_24
/* 813E95F4 | 3F E0 81 65 */	lis r31, lbl_81655638@ha
/* 813E95F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813E95FC | 3B FF 56 38 */	addi r31, r31, lbl_81655638@l
/* 813E9600 | 38 60 05 80 */	li r3, 0x580
/* 813E9604 | 48 20 EA 99 */	bl __nw__FUl
/* 813E9608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E960C | 41 82 00 18 */	beq .L_813E9624
/* 813E9610 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E9614 | 38 FF 00 35 */	addi r7, r31, 0x35
/* 813E9618 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813E961C | 38 CD 8E D8 */	li r6, lbl_81696F18@sda21
/* 813E9620 | 4B F8 0A 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E9624:
/* 813E9624 | 90 7E 00 58 */	stw r3, 0x58(r30)
/* 813E9628 | 38 9F 00 4B */	addi r4, r31, 0x4b
/* 813E962C | 38 AD 8E DC */	li r5, lbl_81696F1C@sda21
/* 813E9630 | 38 C0 00 00 */	li r6, 0x0
/* 813E9634 | 38 E0 00 01 */	li r7, 0x1
/* 813E9638 | 4B F8 0E A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E963C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9640 | 38 9F 00 76 */	addi r4, r31, 0x76
/* 813E9644 | 38 AD 8E DC */	li r5, lbl_81696F1C@sda21
/* 813E9648 | 38 C0 00 00 */	li r6, 0x0
/* 813E964C | 38 E0 00 01 */	li r7, 0x1
/* 813E9650 | 4B F8 0E 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E9654 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9658 | 38 9F 00 9B */	addi r4, r31, 0x9b
/* 813E965C | 38 AD 8E DC */	li r5, lbl_81696F1C@sda21
/* 813E9660 | 38 C0 00 00 */	li r6, 0x0
/* 813E9664 | 38 E0 00 01 */	li r7, 0x1
/* 813E9668 | 4B F8 0E 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E966C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9670 | 38 80 00 00 */	li r4, 0x0
/* 813E9674 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9678 | 48 12 8C A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E967C | 4B F8 05 A9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E9680 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9684 | 38 9F 00 C5 */	addi r4, r31, 0xc5
/* 813E9688 | 38 AD 8E E1 */	li r5, lbl_81696F21@sda21
/* 813E968C | 38 C0 00 00 */	li r6, 0x0
/* 813E9690 | 38 E0 00 01 */	li r7, 0x1
/* 813E9694 | 4B F8 0E 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E9698 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E969C | 38 9F 00 ED */	addi r4, r31, 0xed
/* 813E96A0 | 38 AD 8E E1 */	li r5, lbl_81696F21@sda21
/* 813E96A4 | 38 C0 00 00 */	li r6, 0x0
/* 813E96A8 | 38 E0 00 01 */	li r7, 0x1
/* 813E96AC | 4B F8 0E 35 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E96B0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E96B4 | 38 9F 01 0F */	addi r4, r31, 0x10f
/* 813E96B8 | 38 AD 8E E1 */	li r5, lbl_81696F21@sda21
/* 813E96BC | 38 C0 00 00 */	li r6, 0x0
/* 813E96C0 | 38 E0 00 01 */	li r7, 0x1
/* 813E96C4 | 4B F8 0E 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E96C8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E96CC | 38 80 00 03 */	li r4, 0x3
/* 813E96D0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E96D4 | 48 12 8C 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E96D8 | 4B F8 05 4D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E96DC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E96E0 | 38 9F 01 36 */	addi r4, r31, 0x136
/* 813E96E4 | 38 BF 01 5C */	addi r5, r31, 0x15c
/* 813E96E8 | 38 C0 00 00 */	li r6, 0x0
/* 813E96EC | 38 E0 00 01 */	li r7, 0x1
/* 813E96F0 | 4B F8 0D F1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E96F4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E96F8 | 38 9F 01 66 */	addi r4, r31, 0x166
/* 813E96FC | 38 BF 01 84 */	addi r5, r31, 0x184
/* 813E9700 | 38 C0 00 00 */	li r6, 0x0
/* 813E9704 | 38 E0 00 01 */	li r7, 0x1
/* 813E9708 | 4B F8 0D D9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E970C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9710 | 38 9F 01 8E */	addi r4, r31, 0x18e
/* 813E9714 | 38 BF 01 AC */	addi r5, r31, 0x1ac
/* 813E9718 | 38 C0 00 00 */	li r6, 0x0
/* 813E971C | 38 E0 00 01 */	li r7, 0x1
/* 813E9720 | 4B F8 0D C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E9724 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9728 | 38 9F 01 B6 */	addi r4, r31, 0x1b6
/* 813E972C | 38 BF 01 DA */	addi r5, r31, 0x1da
/* 813E9730 | 38 C0 00 00 */	li r6, 0x0
/* 813E9734 | 38 E0 00 01 */	li r7, 0x1
/* 813E9738 | 4B F8 0D A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E973C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9740 | 38 9F 01 E7 */	addi r4, r31, 0x1e7
/* 813E9744 | 38 BF 02 0B */	addi r5, r31, 0x20b
/* 813E9748 | 38 C0 00 00 */	li r6, 0x0
/* 813E974C | 38 E0 00 01 */	li r7, 0x1
/* 813E9750 | 4B F8 0D 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E9754 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9758 | 38 9F 02 18 */	addi r4, r31, 0x218
/* 813E975C | 38 BF 01 DA */	addi r5, r31, 0x1da
/* 813E9760 | 38 C0 00 00 */	li r6, 0x0
/* 813E9764 | 38 E0 00 01 */	li r7, 0x1
/* 813E9768 | 4B F8 0D 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E976C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9770 | 38 9F 02 3B */	addi r4, r31, 0x23b
/* 813E9774 | 38 BF 02 0B */	addi r5, r31, 0x20b
/* 813E9778 | 38 C0 00 00 */	li r6, 0x0
/* 813E977C | 38 E0 00 01 */	li r7, 0x1
/* 813E9780 | 4B F8 0D 61 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E9784 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9788 | 38 9F 02 5E */	addi r4, r31, 0x25e
/* 813E978C | 38 BF 02 7C */	addi r5, r31, 0x27c
/* 813E9790 | 38 C0 00 00 */	li r6, 0x0
/* 813E9794 | 38 E0 00 01 */	li r7, 0x1
/* 813E9798 | 4B F8 0D 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E979C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E97A0 | 38 9F 02 87 */	addi r4, r31, 0x287
/* 813E97A4 | 38 BF 02 A5 */	addi r5, r31, 0x2a5
/* 813E97A8 | 38 C0 00 00 */	li r6, 0x0
/* 813E97AC | 38 E0 00 01 */	li r7, 0x1
/* 813E97B0 | 4B F8 0D 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E97B4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E97B8 | 38 9F 02 B0 */	addi r4, r31, 0x2b0
/* 813E97BC | 38 BF 02 7C */	addi r5, r31, 0x27c
/* 813E97C0 | 38 C0 00 00 */	li r6, 0x0
/* 813E97C4 | 38 E0 00 01 */	li r7, 0x1
/* 813E97C8 | 4B F8 0D 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E97CC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E97D0 | 38 9F 02 CF */	addi r4, r31, 0x2cf
/* 813E97D4 | 38 BF 02 A5 */	addi r5, r31, 0x2a5
/* 813E97D8 | 38 C0 00 00 */	li r6, 0x0
/* 813E97DC | 38 E0 00 01 */	li r7, 0x1
/* 813E97E0 | 4B F8 0D 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E97E4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E97E8 | 38 80 00 09 */	li r4, 0x9
/* 813E97EC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E97F0 | 48 12 8B 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E97F4 | 4B F8 04 31 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E97F8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E97FC | 38 80 00 0A */	li r4, 0xa
/* 813E9800 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9804 | 48 12 8B 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9808 | 4B F8 04 1D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E980C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9810 | 4B F8 0E 25 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E9814 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E9818 | 38 80 00 06 */	li r4, 0x6
/* 813E981C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9820 | 48 12 8A F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9824 | 4B F8 04 01 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E9828 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E982C | 38 80 00 06 */	li r4, 0x6
/* 813E9830 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9834 | 48 12 8A E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9838 | 7C 7B 1B 78 */	mr r27, r3
/* 813E983C | 4B F7 90 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E9840 | 38 00 00 01 */	li r0, 0x1
/* 813E9844 | 38 60 00 34 */	li r3, 0x34
/* 813E9848 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 813E984C | 48 20 E8 51 */	bl __nw__FUl
/* 813E9850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9854 | 7C 7B 1B 78 */	mr r27, r3
/* 813E9858 | 41 82 00 6C */	beq .L_813E98C4
/* 813E985C | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813E9860 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813E9864 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813E9868 | 38 00 00 00 */	li r0, 0x0
/* 813E986C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813E9870 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813E9874 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813E9878 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813E987C | 48 00 00 08 */	b .L_813E9884
/* 813E9880 | 4E 80 04 21 */	bctrl
.L_813E9884:
/* 813E9884 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 813E9888 | 38 80 00 08 */	li r4, 0x8
/* 813E988C | 48 12 87 D1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813E9890 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813E9894 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 813E9898 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813E989C | 38 80 00 08 */	li r4, 0x8
/* 813E98A0 | 90 BB 00 00 */	stw r5, 0x0(r27)
/* 813E98A4 | 93 9B 00 24 */	stw r28, 0x24(r27)
/* 813E98A8 | 48 12 87 B5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813E98AC | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813E98B0 | 38 00 00 00 */	li r0, 0x0
/* 813E98B4 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813E98B8 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813E98BC | 90 1B 00 2C */	stw r0, 0x2c(r27)
/* 813E98C0 | 98 1B 00 30 */	stb r0, 0x30(r27)
.L_813E98C4:
/* 813E98C4 | 93 7E 00 60 */	stw r27, 0x60(r30)
/* 813E98C8 | 7F 63 DB 78 */	mr r3, r27
/* 813E98CC | 80 9E 00 58 */	lwz r4, 0x58(r30)
/* 813E98D0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813E98D4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813E98D8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813E98DC | 7D 89 03 A6 */	mtctr r12
/* 813E98E0 | 4E 80 04 21 */	bctrl
/* 813E98E4 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813E98E8 | 38 80 00 00 */	li r4, 0x0
/* 813E98EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E98F0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813E98F4 | 7D 89 03 A6 */	mtctr r12
/* 813E98F8 | 4E 80 04 21 */	bctrl
/* 813E98FC | 3B 7F 00 0C */	addi r27, r31, 0xc
/* 813E9900 | 3B 20 00 00 */	li r25, 0x0
/* 813E9904 | 3B A0 00 00 */	li r29, 0x0
.L_813E9908:
/* 813E9908 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813E990C | 38 A0 00 01 */	li r5, 0x1
/* 813E9910 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813E9914 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E9918 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E991C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E9920 | 7D 89 03 A6 */	mtctr r12
/* 813E9924 | 4E 80 04 21 */	bctrl
/* 813E9928 | 7C 64 1B 78 */	mr r4, r3
/* 813E992C | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813E9930 | 38 A0 00 01 */	li r5, 0x1
/* 813E9934 | 4B F8 18 99 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813E9938 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813E993C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813E9940 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813E9944 | 41 80 FF C4 */	blt .L_813E9908
/* 813E9948 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813E994C | 3B 00 00 00 */	li r24, 0x0
/* 813E9950 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813E9954 | 3B A0 00 00 */	li r29, 0x0
/* 813E9958 | 3B 82 87 88 */	li r28, lbl_81694B88@sda21
.L_813E995C:
/* 813E995C | 38 60 00 3C */	li r3, 0x3c
/* 813E9960 | 48 20 E7 3D */	bl __nw__FUl
/* 813E9964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9968 | 7C 7A 1B 78 */	mr r26, r3
/* 813E996C | 41 82 00 44 */	beq .L_813E99B0
/* 813E9970 | C0 22 87 90 */	lfs f1, lbl_81694B90@sda21(r0)
/* 813E9974 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E9978 | 83 3E 00 24 */	lwz r25, 0x24(r30)
/* 813E997C | FC 40 08 90 */	fmr f2, f1
/* 813E9980 | FC 60 08 90 */	fmr f3, f1
/* 813E9984 | 4B F7 90 D9 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E9988 | 80 BE 00 6C */	lwz r5, 0x6c(r30)
/* 813E998C | 7C 68 1B 78 */	mr r8, r3
/* 813E9990 | C0 22 87 94 */	lfs f1, lbl_81694B94@sda21(r0)
/* 813E9994 | 7F 43 D3 78 */	mr r3, r26
/* 813E9998 | C0 42 87 98 */	lfs f2, lbl_81694B98@sda21(r0)
/* 813E999C | 7F 24 CB 78 */	mr r4, r25
/* 813E99A0 | 38 FF 02 EE */	addi r7, r31, 0x2ee
/* 813E99A4 | 38 CD 8E D8 */	li r6, lbl_81696F18@sda21
/* 813E99A8 | 4B FE 7A 65 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 813E99AC | 7C 7A 1B 78 */	mr r26, r3
.L_813E99B0:
/* 813E99B0 | 7F 3E EA 14 */	add r25, r30, r29
/* 813E99B4 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 813E99B8 | 93 59 00 64 */	stw r26, 0x64(r25)
/* 813E99BC | 80 7B 00 80 */	lwz r3, 0x80(r27)
/* 813E99C0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813E99C4 | 4B F5 4D F9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813E99C8 | 7C 64 1B 78 */	mr r4, r3
/* 813E99CC | 80 79 00 64 */	lwz r3, 0x64(r25)
/* 813E99D0 | 38 A0 00 00 */	li r5, 0x0
/* 813E99D4 | 4B FE 7C 2D */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813E99D8 | 80 79 00 64 */	lwz r3, 0x64(r25)
/* 813E99DC | 38 A0 00 01 */	li r5, 0x1
/* 813E99E0 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 813E99E4 | 4B FE 82 C5 */	bl set_textbox__Q33ipl5scene11TextBalloonFPCw
/* 813E99E8 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813E99EC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813E99F0 | 2C 18 00 02 */	cmpwi r24, 0x2
/* 813E99F4 | 41 80 FF 68 */	blt .L_813E995C
/* 813E99F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E99FC | 3B 6D 8E E6 */	li r27, lbl_81696F26@sda21
/* 813E9A00 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E9A04 | 38 80 00 A0 */	li r4, 0xa0
/* 813E9A08 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813E9A0C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813E9A10 | 4B F5 4D AD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813E9A14 | 7C 65 1B 78 */	mr r5, r3
/* 813E9A18 | 7F C3 F3 78 */	mr r3, r30
/* 813E9A1C | 7F 64 DB 78 */	mr r4, r27
/* 813E9A20 | 48 00 07 81 */	bl iplSDButton_813EA1A0
/* 813E9A24 | 7F C3 F3 78 */	mr r3, r30
/* 813E9A28 | 7F C5 F3 78 */	mr r5, r30
/* 813E9A2C | 38 80 00 22 */	li r4, 0x22
/* 813E9A30 | 38 C0 00 00 */	li r6, 0x0
/* 813E9A34 | 38 E0 00 00 */	li r7, 0x0
/* 813E9A38 | 48 02 04 51 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813E9A3C | 7F C3 F3 78 */	mr r3, r30
/* 813E9A40 | 7F C5 F3 78 */	mr r5, r30
/* 813E9A44 | 38 80 00 25 */	li r4, 0x25
/* 813E9A48 | 38 C0 00 00 */	li r6, 0x0
/* 813E9A4C | 38 E0 00 00 */	li r7, 0x0
/* 813E9A50 | 48 02 04 39 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813E9A54 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E9A58 | 48 20 FA A9 */	bl _restgpr_24
/* 813E9A5C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813E9A60 | 7C 08 03 A6 */	mtlr r0
/* 813E9A64 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813E9A68 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene8SDButtonFv

# .text:0x5F0 | 0x813E9A6C | size: 0xA0
# ipl::scene::SDButton::calc()
.fn calc__Q33ipl5scene8SDButtonFv, global
/* 813E9A6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E9A70 | 7C 08 02 A6 */	mflr r0
/* 813E9A74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E9A78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9A7C | 48 20 FA 4D */	bl _savegpr_29
/* 813E9A80 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813E9A84 | 7C 7D 1B 78 */	mr r29, r3
/* 813E9A88 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E9A8C | 40 82 00 28 */	bne .L_813E9AB4
/* 813E9A90 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813E9A94 | 38 80 00 04 */	li r4, 0x4
/* 813E9A98 | 4B F8 10 39 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E9A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9AA0 | 40 82 00 14 */	bne .L_813E9AB4
/* 813E9AA4 | 7F A3 EB 78 */	mr r3, r29
/* 813E9AA8 | 48 00 01 19 */	bl iplSDButton_813E9BC0
/* 813E9AAC | 38 00 00 00 */	li r0, 0x0
/* 813E9AB0 | 90 1D 00 54 */	stw r0, 0x54(r29)
.L_813E9AB4:
/* 813E9AB4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813E9AB8 | 4B F8 0C 4D */	bl calc__Q33ipl6layout6ObjectFv
/* 813E9ABC | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813E9AC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E9AC4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813E9AC8 | 7D 89 03 A6 */	mtctr r12
/* 813E9ACC | 4E 80 04 21 */	bctrl
/* 813E9AD0 | 3B C0 00 00 */	li r30, 0x0
/* 813E9AD4 | 3B E0 00 00 */	li r31, 0x0
.L_813E9AD8:
/* 813E9AD8 | 7C 7D FA 14 */	add r3, r29, r31
/* 813E9ADC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E9AE0 | 4B FE 7A CD */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813E9AE4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813E9AE8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E9AEC | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813E9AF0 | 41 80 FF E8 */	blt .L_813E9AD8
/* 813E9AF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9AF8 | 48 20 FA 1D */	bl _restgpr_29
/* 813E9AFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E9B00 | 7C 08 03 A6 */	mtlr r0
/* 813E9B04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E9B08 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene8SDButtonFv

# .text:0x690 | 0x813E9B0C | size: 0x50
# ipl::scene::SDButton::draw()
.fn draw__Q33ipl5scene8SDButtonFv, global
/* 813E9B0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E9B10 | 7C 08 02 A6 */	mflr r0
/* 813E9B14 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E9B18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E9B1C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E9B20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E9B24 | 7C 7F 1B 78 */	mr r31, r3
/* 813E9B28 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813E9B2C | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813E9B30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E9B34 | 40 82 00 14 */	bne .L_813E9B48
/* 813E9B38 | 38 60 00 00 */	li r3, 0x0
/* 813E9B3C | 4B F7 8F 31 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813E9B40 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813E9B44 | 4B F8 0C 59 */	bl draw__Q33ipl6layout6ObjectFv
.L_813E9B48:
/* 813E9B48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E9B4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E9B50 | 7C 08 03 A6 */	mtlr r0
/* 813E9B54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E9B58 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene8SDButtonFv

# .text:0x6E0 | 0x813E9B5C | size: 0x5C
.fn iplSDButton_813E9B5C, global
/* 813E9B5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E9B60 | 7C 08 02 A6 */	mflr r0
/* 813E9B64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E9B68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9B6C | 48 20 F9 5D */	bl _savegpr_29
/* 813E9B70 | 7C 7D 1B 78 */	mr r29, r3
/* 813E9B74 | 38 60 00 00 */	li r3, 0x0
/* 813E9B78 | 4B F7 8E F5 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813E9B7C | 3B C0 00 00 */	li r30, 0x0
/* 813E9B80 | 3B E0 00 00 */	li r31, 0x0
.L_813E9B84:
/* 813E9B84 | 7C 7D FA 14 */	add r3, r29, r31
/* 813E9B88 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E9B8C | 4B FE 7A 6D */	bl draw__Q33ipl5scene11TextBalloonFv
/* 813E9B90 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813E9B94 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E9B98 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813E9B9C | 41 80 FF E8 */	blt .L_813E9B84
/* 813E9BA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9BA4 | 48 20 F9 71 */	bl _restgpr_29
/* 813E9BA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E9BAC | 7C 08 03 A6 */	mtlr r0
/* 813E9BB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E9BB4 | 4E 80 00 20 */	blr
.endfn iplSDButton_813E9B5C

# .text:0x73C | 0x813E9BB8 | size: 0x8
.fn iplSDButton_813E9BB8, global
/* 813E9BB8 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813E9BBC | 4B F8 13 D0 */	b update__Q33ipl3gui11PaneManagerFv
.endfn iplSDButton_813E9BB8

# .text:0x744 | 0x813E9BC0 | size: 0x148
.fn iplSDButton_813E9BC0, global
/* 813E9BC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E9BC4 | 7C 08 02 A6 */	mflr r0
/* 813E9BC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E9BCC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E9BD0 | 48 20 F8 E9 */	bl _savegpr_25
/* 813E9BD4 | 3B 60 00 00 */	li r27, 0x0
/* 813E9BD8 | 7C 79 1B 78 */	mr r25, r3
/* 813E9BDC | 7F 7C DB 78 */	mr r28, r27
/* 813E9BE0 | 3B E0 00 00 */	li r31, 0x0
/* 813E9BE4 | 7F 7D DB 78 */	mr r29, r27
/* 813E9BE8 | 3B C0 00 01 */	li r30, 0x1
.L_813E9BEC:
/* 813E9BEC | 7C 79 FA 14 */	add r3, r25, r31
/* 813E9BF0 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813E9BF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E9BF8 | 41 82 00 B0 */	beq .L_813E9CA8
/* 813E9BFC | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 813E9C00 | 93 83 00 70 */	stw r28, 0x70(r3)
/* 813E9C04 | 3B 40 00 00 */	li r26, 0x0
/* 813E9C08 | 41 82 00 54 */	beq .L_813E9C5C
/* 813E9C0C | 40 80 00 14 */	bge .L_813E9C20
/* 813E9C10 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E9C14 | 41 82 00 18 */	beq .L_813E9C2C
/* 813E9C18 | 40 80 00 2C */	bge .L_813E9C44
/* 813E9C1C | 48 00 00 6C */	b .L_813E9C88
.L_813E9C20:
/* 813E9C20 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 813E9C24 | 40 80 00 64 */	bge .L_813E9C88
/* 813E9C28 | 48 00 00 4C */	b .L_813E9C74
.L_813E9C2C:
/* 813E9C2C | 80 79 00 58 */	lwz r3, 0x58(r25)
/* 813E9C30 | 38 80 00 02 */	li r4, 0x2
/* 813E9C34 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9C38 | 48 12 86 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9C3C | 7C 7A 1B 78 */	mr r26, r3
/* 813E9C40 | 48 00 00 48 */	b .L_813E9C88
.L_813E9C44:
/* 813E9C44 | 80 79 00 58 */	lwz r3, 0x58(r25)
/* 813E9C48 | 38 80 00 05 */	li r4, 0x5
/* 813E9C4C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9C50 | 48 12 86 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9C54 | 7C 7A 1B 78 */	mr r26, r3
/* 813E9C58 | 48 00 00 30 */	b .L_813E9C88
.L_813E9C5C:
/* 813E9C5C | 80 79 00 58 */	lwz r3, 0x58(r25)
/* 813E9C60 | 38 80 00 0C */	li r4, 0xc
/* 813E9C64 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9C68 | 48 12 86 B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9C6C | 7C 7A 1B 78 */	mr r26, r3
/* 813E9C70 | 48 00 00 18 */	b .L_813E9C88
.L_813E9C74:
/* 813E9C74 | 80 79 00 58 */	lwz r3, 0x58(r25)
/* 813E9C78 | 38 80 00 0B */	li r4, 0xb
/* 813E9C7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9C80 | 48 12 86 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9C84 | 7C 7A 1B 78 */	mr r26, r3
.L_813E9C88:
/* 813E9C88 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813E9C8C | 41 82 00 1C */	beq .L_813E9CA8
/* 813E9C90 | 7F 43 D3 78 */	mr r3, r26
/* 813E9C94 | 4B F7 FF 91 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E9C98 | 93 BA 00 18 */	stw r29, 0x18(r26)
/* 813E9C9C | 7F 43 D3 78 */	mr r3, r26
/* 813E9CA0 | 4B F7 8B D1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E9CA4 | 93 DA 00 14 */	stw r30, 0x14(r26)
.L_813E9CA8:
/* 813E9CA8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813E9CAC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E9CB0 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 813E9CB4 | 41 80 FF 38 */	blt .L_813E9BEC
/* 813E9CB8 | 3B 40 00 00 */	li r26, 0x0
/* 813E9CBC | 3B E0 00 00 */	li r31, 0x0
.L_813E9CC0:
/* 813E9CC0 | 7C 79 FA 14 */	add r3, r25, r31
/* 813E9CC4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E9CC8 | 4B FE 7C E5 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813E9CCC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813E9CD0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E9CD4 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 813E9CD8 | 41 80 FF E8 */	blt .L_813E9CC0
/* 813E9CDC | 80 79 00 60 */	lwz r3, 0x60(r25)
/* 813E9CE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E9CE4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E9CE8 | 7D 89 03 A6 */	mtctr r12
/* 813E9CEC | 4E 80 04 21 */	bctrl
/* 813E9CF0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E9CF4 | 48 20 F8 11 */	bl _restgpr_25
/* 813E9CF8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E9CFC | 7C 08 03 A6 */	mtlr r0
/* 813E9D00 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E9D04 | 4E 80 00 20 */	blr
.endfn iplSDButton_813E9BC0

# .text:0x88C | 0x813E9D08 | size: 0x258
.fn iplSDButton_813E9D08, global
/* 813E9D08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E9D0C | 7C 08 02 A6 */	mflr r0
/* 813E9D10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E9D14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9D18 | 48 20 F7 A5 */	bl _savegpr_26
/* 813E9D1C | 7C 9C 23 78 */	mr r28, r4
/* 813E9D20 | 7C 7B 1B 78 */	mr r27, r3
/* 813E9D24 | 7C BD 2B 78 */	mr r29, r5
/* 813E9D28 | 7F 83 E3 78 */	mr r3, r28
/* 813E9D2C | 48 00 07 BD */	bl iplSDButton_813EA4E8
/* 813E9D30 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813E9D34 | 7C 7E 1B 78 */	mr r30, r3
/* 813E9D38 | 41 82 02 10 */	beq .L_813E9F48
/* 813E9D3C | 88 1B 00 82 */	lbz r0, 0x82(r27)
/* 813E9D40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E9D44 | 40 82 00 10 */	bne .L_813E9D54
/* 813E9D48 | 38 03 FF FE */	subi r0, r3, 0x2
/* 813E9D4C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E9D50 | 41 81 01 F8 */	bgt .L_813E9F48
.L_813E9D54:
/* 813E9D54 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813E9D58 | 40 82 00 10 */	bne .L_813E9D68
/* 813E9D5C | 88 1B 00 80 */	lbz r0, 0x80(r27)
/* 813E9D60 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E9D64 | 40 82 01 E4 */	bne .L_813E9F48
.L_813E9D68:
/* 813E9D68 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813E9D6C | 40 82 00 10 */	bne .L_813E9D7C
/* 813E9D70 | 88 1B 00 81 */	lbz r0, 0x81(r27)
/* 813E9D74 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E9D78 | 40 82 01 D0 */	bne .L_813E9F48
.L_813E9D7C:
/* 813E9D7C | 54 60 10 3A */	slwi r0, r3, 2
/* 813E9D80 | 7F FB 02 14 */	add r31, r27, r0
/* 813E9D84 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813E9D88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E9D8C | 40 82 01 A8 */	bne .L_813E9F34
/* 813E9D90 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813E9D94 | 3B 40 00 00 */	li r26, 0x0
/* 813E9D98 | 41 82 00 F0 */	beq .L_813E9E88
/* 813E9D9C | 40 80 00 14 */	bge .L_813E9DB0
/* 813E9DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9DA4 | 41 82 00 18 */	beq .L_813E9DBC
/* 813E9DA8 | 40 80 00 58 */	bge .L_813E9E00
/* 813E9DAC | 48 00 01 1C */	b .L_813E9EC8
.L_813E9DB0:
/* 813E9DB0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813E9DB4 | 40 80 01 14 */	bge .L_813E9EC8
/* 813E9DB8 | 48 00 00 8C */	b .L_813E9E44
.L_813E9DBC:
/* 813E9DBC | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9DC0 | 38 80 00 02 */	li r4, 0x2
/* 813E9DC4 | 4B F8 0D 0D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E9DC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9DCC | 41 82 00 1C */	beq .L_813E9DE8
/* 813E9DD0 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9DD4 | 38 80 00 02 */	li r4, 0x2
/* 813E9DD8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9DDC | 48 12 85 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9DE0 | 38 00 00 00 */	li r0, 0x0
/* 813E9DE4 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813E9DE8:
/* 813E9DE8 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9DEC | 38 80 00 00 */	li r4, 0x0
/* 813E9DF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9DF4 | 48 12 85 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9DF8 | 7C 7A 1B 78 */	mr r26, r3
/* 813E9DFC | 48 00 00 CC */	b .L_813E9EC8
.L_813E9E00:
/* 813E9E00 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E04 | 38 80 00 05 */	li r4, 0x5
/* 813E9E08 | 4B F8 0C C9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E9E0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9E10 | 41 82 00 1C */	beq .L_813E9E2C
/* 813E9E14 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E18 | 38 80 00 05 */	li r4, 0x5
/* 813E9E1C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9E20 | 48 12 84 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9E24 | 38 00 00 00 */	li r0, 0x0
/* 813E9E28 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813E9E2C:
/* 813E9E2C | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E30 | 38 80 00 03 */	li r4, 0x3
/* 813E9E34 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9E38 | 48 12 84 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9E3C | 7C 7A 1B 78 */	mr r26, r3
/* 813E9E40 | 48 00 00 88 */	b .L_813E9EC8
.L_813E9E44:
/* 813E9E44 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E48 | 38 80 00 0B */	li r4, 0xb
/* 813E9E4C | 4B F8 0C 85 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E9E50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9E54 | 41 82 00 1C */	beq .L_813E9E70
/* 813E9E58 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E5C | 38 80 00 0B */	li r4, 0xb
/* 813E9E60 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9E64 | 48 12 84 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9E68 | 38 00 00 00 */	li r0, 0x0
/* 813E9E6C | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813E9E70:
/* 813E9E70 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E74 | 38 80 00 09 */	li r4, 0x9
/* 813E9E78 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9E7C | 48 12 84 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9E80 | 7C 7A 1B 78 */	mr r26, r3
/* 813E9E84 | 48 00 00 44 */	b .L_813E9EC8
.L_813E9E88:
/* 813E9E88 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9E8C | 38 80 00 0C */	li r4, 0xc
/* 813E9E90 | 4B F8 0C 41 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E9E94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9E98 | 41 82 00 1C */	beq .L_813E9EB4
/* 813E9E9C | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9EA0 | 38 80 00 0C */	li r4, 0xc
/* 813E9EA4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9EA8 | 48 12 84 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9EAC | 38 00 00 00 */	li r0, 0x0
/* 813E9EB0 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813E9EB4:
/* 813E9EB4 | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813E9EB8 | 38 80 00 0A */	li r4, 0xa
/* 813E9EBC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E9EC0 | 48 12 84 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E9EC4 | 7C 7A 1B 78 */	mr r26, r3
.L_813E9EC8:
/* 813E9EC8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813E9ECC | 41 82 00 24 */	beq .L_813E9EF0
/* 813E9ED0 | 7F 43 D3 78 */	mr r3, r26
/* 813E9ED4 | 4B F7 FD 51 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E9ED8 | 38 00 00 00 */	li r0, 0x0
/* 813E9EDC | 7F 43 D3 78 */	mr r3, r26
/* 813E9EE0 | 90 1A 00 18 */	stw r0, 0x18(r26)
/* 813E9EE4 | 4B F7 89 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E9EE8 | 38 00 00 01 */	li r0, 0x1
/* 813E9EEC | 90 1A 00 14 */	stw r0, 0x14(r26)
.L_813E9EF0:
/* 813E9EF0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E9EF4 | 3C 80 81 65 */	lis r4, lbl_8165593F@ha
/* 813E9EF8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E9EFC | 38 84 59 3F */	addi r4, r4, lbl_8165593F@l
/* 813E9F00 | 4B F8 15 6D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E9F04 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813E9F08 | 41 82 00 1C */	beq .L_813E9F24
/* 813E9F0C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E9F10 | 7F A3 EB 78 */	mr r3, r29
/* 813E9F14 | 38 80 00 00 */	li r4, 0x0
/* 813E9F18 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813E9F1C | 7D 89 03 A6 */	mtctr r12
/* 813E9F20 | 4E 80 04 21 */	bctrl
.L_813E9F24:
/* 813E9F24 | 7F 63 DB 78 */	mr r3, r27
/* 813E9F28 | 7F C4 F3 78 */	mr r4, r30
/* 813E9F2C | 7F 85 E3 78 */	mr r5, r28
/* 813E9F30 | 48 00 06 2D */	bl iplSDButton_813EA55C
.L_813E9F34:
/* 813E9F34 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813E9F38 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813E9F3C | 40 80 00 0C */	bge .L_813E9F48
/* 813E9F40 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813E9F44 | 90 1F 00 70 */	stw r0, 0x70(r31)
.L_813E9F48:
/* 813E9F48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9F4C | 48 20 F5 BD */	bl _restgpr_26
/* 813E9F50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E9F54 | 7C 08 03 A6 */	mtlr r0
/* 813E9F58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E9F5C | 4E 80 00 20 */	blr
.endfn iplSDButton_813E9D08

# .text:0xAE4 | 0x813E9F60 | size: 0x220
.fn iplSDButton_813E9F60, global
/* 813E9F60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E9F64 | 7C 08 02 A6 */	mflr r0
/* 813E9F68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E9F6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E9F70 | 48 20 F5 51 */	bl _savegpr_27
/* 813E9F74 | 7C 7D 1B 78 */	mr r29, r3
/* 813E9F78 | 7C 83 23 78 */	mr r3, r4
/* 813E9F7C | 48 00 05 6D */	bl iplSDButton_813EA4E8
/* 813E9F80 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813E9F84 | 7C 7E 1B 78 */	mr r30, r3
/* 813E9F88 | 41 82 01 E0 */	beq .L_813EA168
/* 813E9F8C | 88 1D 00 82 */	lbz r0, 0x82(r29)
/* 813E9F90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E9F94 | 40 82 00 10 */	bne .L_813E9FA4
/* 813E9F98 | 38 03 FF FE */	subi r0, r3, 0x2
/* 813E9F9C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E9FA0 | 41 81 01 C8 */	bgt .L_813EA168
.L_813E9FA4:
/* 813E9FA4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813E9FA8 | 40 82 00 10 */	bne .L_813E9FB8
/* 813E9FAC | 88 1D 00 80 */	lbz r0, 0x80(r29)
/* 813E9FB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E9FB4 | 40 82 01 B4 */	bne .L_813EA168
.L_813E9FB8:
/* 813E9FB8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813E9FBC | 40 82 00 10 */	bne .L_813E9FCC
/* 813E9FC0 | 88 1D 00 81 */	lbz r0, 0x81(r29)
/* 813E9FC4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E9FC8 | 40 82 01 A0 */	bne .L_813EA168
.L_813E9FCC:
/* 813E9FCC | 54 7C 10 3A */	slwi r28, r3, 2
/* 813E9FD0 | 3B 60 00 00 */	li r27, 0x0
/* 813E9FD4 | 7F FD E2 14 */	add r31, r29, r28
/* 813E9FD8 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813E9FDC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E9FE0 | 40 82 01 74 */	bne .L_813EA154
/* 813E9FE4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813E9FE8 | 41 82 00 F0 */	beq .L_813EA0D8
/* 813E9FEC | 40 80 00 14 */	bge .L_813EA000
/* 813E9FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9FF4 | 41 82 00 18 */	beq .L_813EA00C
/* 813E9FF8 | 40 80 00 58 */	bge .L_813EA050
/* 813E9FFC | 48 00 01 1C */	b .L_813EA118
.L_813EA000:
/* 813EA000 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EA004 | 40 80 01 14 */	bge .L_813EA118
/* 813EA008 | 48 00 00 8C */	b .L_813EA094
.L_813EA00C:
/* 813EA00C | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA010 | 38 80 00 00 */	li r4, 0x0
/* 813EA014 | 4B F8 0A BD */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EA018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA01C | 41 82 00 1C */	beq .L_813EA038
/* 813EA020 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA024 | 38 80 00 00 */	li r4, 0x0
/* 813EA028 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA02C | 48 12 82 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA030 | 38 00 00 00 */	li r0, 0x0
/* 813EA034 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813EA038:
/* 813EA038 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA03C | 38 80 00 02 */	li r4, 0x2
/* 813EA040 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA044 | 48 12 82 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA048 | 7C 7B 1B 78 */	mr r27, r3
/* 813EA04C | 48 00 00 CC */	b .L_813EA118
.L_813EA050:
/* 813EA050 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA054 | 38 80 00 03 */	li r4, 0x3
/* 813EA058 | 4B F8 0A 79 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EA05C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA060 | 41 82 00 1C */	beq .L_813EA07C
/* 813EA064 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA068 | 38 80 00 03 */	li r4, 0x3
/* 813EA06C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA070 | 48 12 82 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA074 | 38 00 00 00 */	li r0, 0x0
/* 813EA078 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813EA07C:
/* 813EA07C | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA080 | 38 80 00 05 */	li r4, 0x5
/* 813EA084 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA088 | 48 12 82 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA08C | 7C 7B 1B 78 */	mr r27, r3
/* 813EA090 | 48 00 00 88 */	b .L_813EA118
.L_813EA094:
/* 813EA094 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA098 | 38 80 00 09 */	li r4, 0x9
/* 813EA09C | 4B F8 0A 35 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EA0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA0A4 | 41 82 00 1C */	beq .L_813EA0C0
/* 813EA0A8 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA0AC | 38 80 00 09 */	li r4, 0x9
/* 813EA0B0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA0B4 | 48 12 82 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA0B8 | 38 00 00 00 */	li r0, 0x0
/* 813EA0BC | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813EA0C0:
/* 813EA0C0 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA0C4 | 38 80 00 0B */	li r4, 0xb
/* 813EA0C8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA0CC | 48 12 82 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA0D0 | 7C 7B 1B 78 */	mr r27, r3
/* 813EA0D4 | 48 00 00 44 */	b .L_813EA118
.L_813EA0D8:
/* 813EA0D8 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA0DC | 38 80 00 0A */	li r4, 0xa
/* 813EA0E0 | 4B F8 09 F1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EA0E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA0E8 | 41 82 00 1C */	beq .L_813EA104
/* 813EA0EC | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA0F0 | 38 80 00 0A */	li r4, 0xa
/* 813EA0F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA0F8 | 48 12 82 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA0FC | 38 00 00 00 */	li r0, 0x0
/* 813EA100 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813EA104:
/* 813EA104 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813EA108 | 38 80 00 0C */	li r4, 0xc
/* 813EA10C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA110 | 48 12 82 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA114 | 7C 7B 1B 78 */	mr r27, r3
.L_813EA118:
/* 813EA118 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813EA11C | 40 80 00 10 */	bge .L_813EA12C
/* 813EA120 | 7C 7D E2 14 */	add r3, r29, r28
/* 813EA124 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813EA128 | 4B FE 78 85 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_813EA12C:
/* 813EA12C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813EA130 | 41 82 00 24 */	beq .L_813EA154
/* 813EA134 | 7F 63 DB 78 */	mr r3, r27
/* 813EA138 | 4B F7 FA ED */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EA13C | 38 00 00 00 */	li r0, 0x0
/* 813EA140 | 7F 63 DB 78 */	mr r3, r27
/* 813EA144 | 90 1B 00 18 */	stw r0, 0x18(r27)
/* 813EA148 | 4B F7 87 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EA14C | 38 00 00 01 */	li r0, 0x1
/* 813EA150 | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_813EA154:
/* 813EA154 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813EA158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA15C | 40 81 00 0C */	ble .L_813EA168
/* 813EA160 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813EA164 | 90 1F 00 70 */	stw r0, 0x70(r31)
.L_813EA168:
/* 813EA168 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA16C | 48 20 F3 A1 */	bl _restgpr_27
/* 813EA170 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA174 | 7C 08 03 A6 */	mtlr r0
/* 813EA178 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA17C | 4E 80 00 20 */	blr
.endfn iplSDButton_813E9F60

# .text:0xD04 | 0x813EA180 | size: 0xC
.fn iplSDButton_813EA180, global
/* 813EA180 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 813EA184 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 813EA188 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA180

# .text:0xD10 | 0x813EA18C | size: 0x14
.fn iplSDButton_813EA18C, global
/* 813EA18C | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813EA190 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA194 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813EA198 | 7D 89 03 A6 */	mtctr r12
/* 813EA19C | 4E 80 04 20 */	bctr
.endfn iplSDButton_813EA18C

# .text:0xD24 | 0x813EA1A0 | size: 0xB4
.fn iplSDButton_813EA1A0, global
/* 813EA1A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EA1A4 | 7C 08 02 A6 */	mflr r0
/* 813EA1A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EA1AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA1B0 | 48 20 F3 19 */	bl _savegpr_29
/* 813EA1B4 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA1B8 | 7C BD 2B 78 */	mr r29, r5
/* 813EA1BC | 38 A0 00 01 */	li r5, 0x1
/* 813EA1C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EA1C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA1C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EA1CC | 7D 89 03 A6 */	mtctr r12
/* 813EA1D0 | 4E 80 04 21 */	bctrl
/* 813EA1D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA1D8 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA1DC | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 813EA1E0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813EA1E4 | 7D 89 03 A6 */	mtctr r12
/* 813EA1E8 | 4E 80 04 21 */	bctrl
/* 813EA1EC | 48 00 00 18 */	b .L_813EA204
.L_813EA1F0:
/* 813EA1F0 | 7C 03 F8 40 */	cmplw r3, r31
/* 813EA1F4 | 40 82 00 0C */	bne .L_813EA200
/* 813EA1F8 | 38 00 00 01 */	li r0, 0x1
/* 813EA1FC | 48 00 00 14 */	b .L_813EA210
.L_813EA200:
/* 813EA200 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813EA204:
/* 813EA204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA208 | 40 82 FF E8 */	bne .L_813EA1F0
/* 813EA20C | 38 00 00 00 */	li r0, 0x0
.L_813EA210:
/* 813EA210 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EA214 | 41 82 00 0C */	beq .L_813EA220
/* 813EA218 | 7F C3 F3 78 */	mr r3, r30
/* 813EA21C | 48 00 00 08 */	b .L_813EA224
.L_813EA220:
/* 813EA220 | 38 60 00 00 */	li r3, 0x0
.L_813EA224:
/* 813EA224 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA228 | 7F A4 EB 78 */	mr r4, r29
/* 813EA22C | 38 A0 00 00 */	li r5, 0x0
/* 813EA230 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EA234 | 7D 89 03 A6 */	mtctr r12
/* 813EA238 | 4E 80 04 21 */	bctrl
/* 813EA23C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA240 | 48 20 F2 D5 */	bl _restgpr_29
/* 813EA244 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA248 | 7C 08 03 A6 */	mtlr r0
/* 813EA24C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA250 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA1A0

# .text:0xDD8 | 0x813EA254 | size: 0x1C4
.fn iplSDButton_813EA254, global
/* 813EA254 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EA258 | 7C 08 02 A6 */	mflr r0
/* 813EA25C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EA260 | 38 04 FF FC */	subi r0, r4, 0x4
/* 813EA264 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813EA268 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EA26C | 7C 7F 1B 78 */	mr r31, r3
/* 813EA270 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EA274 | 3B C0 00 00 */	li r30, 0x0
/* 813EA278 | 41 81 01 60 */	bgt .L_813EA3D8
/* 813EA27C | 3C 80 81 65 */	lis r4, jumptable_81655958@ha
/* 813EA280 | 54 00 10 3A */	slwi r0, r0, 2
/* 813EA284 | 38 84 59 58 */	addi r4, r4, jumptable_81655958@l
/* 813EA288 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813EA28C | 7C 89 03 A6 */	mtctr r4
/* 813EA290 | 4E 80 04 20 */	bctr
.L_813EA294:
/* 813EA294 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA298 | 38 80 00 04 */	li r4, 0x4
/* 813EA29C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA2A0 | 48 12 80 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA2A4 | 38 00 00 01 */	li r0, 0x1
/* 813EA2A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA2AC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813EA2B0 | 48 00 01 28 */	b .L_813EA3D8
.L_813EA2B4:
/* 813EA2B4 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA2B8 | 38 80 00 08 */	li r4, 0x8
/* 813EA2BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA2C0 | 48 12 80 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA2C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA2C8 | 48 00 01 10 */	b .L_813EA3D8
.L_813EA2CC:
/* 813EA2CC | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA2D0 | 38 80 00 07 */	li r4, 0x7
/* 813EA2D4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA2D8 | 48 12 80 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA2DC | 7C 7E 1B 78 */	mr r30, r3
/* 813EA2E0 | 48 00 00 F8 */	b .L_813EA3D8
.L_813EA2E4:
/* 813EA2E4 | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813EA2E8 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813EA2EC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813EA2F0 | 4B FF FC 71 */	bl iplSDButton_813E9F60
/* 813EA2F4 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813EA2F8 | 38 80 00 0E */	li r4, 0xe
/* 813EA2FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA300 | 48 12 80 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA304 | 3B C0 00 00 */	li r30, 0x0
/* 813EA308 | 38 80 00 10 */	li r4, 0x10
/* 813EA30C | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813EA310 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813EA314 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA318 | 48 12 80 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA31C | 9B DF 00 80 */	stb r30, 0x80(r31)
/* 813EA320 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA324 | 48 00 00 B4 */	b .L_813EA3D8
.L_813EA328:
/* 813EA328 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA32C | 38 80 00 10 */	li r4, 0x10
/* 813EA330 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA334 | 48 12 7F E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA338 | 38 00 00 00 */	li r0, 0x0
/* 813EA33C | 38 80 00 0E */	li r4, 0xe
/* 813EA340 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813EA344 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813EA348 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA34C | 48 12 7F CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA350 | 38 00 00 01 */	li r0, 0x1
/* 813EA354 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA358 | 98 1F 00 80 */	stb r0, 0x80(r31)
/* 813EA35C | 48 00 00 7C */	b .L_813EA3D8
.L_813EA360:
/* 813EA360 | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813EA364 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813EA368 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 813EA36C | 4B FF FB F5 */	bl iplSDButton_813E9F60
/* 813EA370 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813EA374 | 38 80 00 0D */	li r4, 0xd
/* 813EA378 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA37C | 48 12 7F 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA380 | 3B C0 00 00 */	li r30, 0x0
/* 813EA384 | 38 80 00 0F */	li r4, 0xf
/* 813EA388 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813EA38C | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813EA390 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA394 | 48 12 7F 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA398 | 9B DF 00 81 */	stb r30, 0x81(r31)
/* 813EA39C | 7C 7E 1B 78 */	mr r30, r3
/* 813EA3A0 | 48 00 00 38 */	b .L_813EA3D8
.L_813EA3A4:
/* 813EA3A4 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA3A8 | 38 80 00 0F */	li r4, 0xf
/* 813EA3AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA3B0 | 48 12 7F 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA3B4 | 38 00 00 00 */	li r0, 0x0
/* 813EA3B8 | 38 80 00 0D */	li r4, 0xd
/* 813EA3BC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813EA3C0 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813EA3C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA3C8 | 48 12 7F 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA3CC | 38 00 00 01 */	li r0, 0x1
/* 813EA3D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA3D4 | 98 1F 00 81 */	stb r0, 0x81(r31)
.L_813EA3D8:
/* 813EA3D8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EA3DC | 41 82 00 24 */	beq .L_813EA400
/* 813EA3E0 | 7F C3 F3 78 */	mr r3, r30
/* 813EA3E4 | 4B F7 F8 41 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EA3E8 | 38 00 00 00 */	li r0, 0x0
/* 813EA3EC | 7F C3 F3 78 */	mr r3, r30
/* 813EA3F0 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813EA3F4 | 4B F7 84 7D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EA3F8 | 38 00 00 01 */	li r0, 0x1
/* 813EA3FC | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813EA400:
/* 813EA400 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EA404 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EA408 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EA40C | 7C 08 03 A6 */	mtlr r0
/* 813EA410 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EA414 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA254

# .text:0xF9C | 0x813EA418 | size: 0xD0
.fn iplSDButton_813EA418, global
/* 813EA418 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EA41C | 7C 08 02 A6 */	mflr r0
/* 813EA420 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EA424 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA428 | 48 20 F0 A1 */	bl _savegpr_29
/* 813EA42C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813EA430 | 7C 7D 1B 78 */	mr r29, r3
/* 813EA434 | 7C 9E 23 78 */	mr r30, r4
/* 813EA438 | 7C BF 2B 78 */	mr r31, r5
/* 813EA43C | 38 00 00 00 */	li r0, 0x0
/* 813EA440 | 41 82 00 4C */	beq .L_813EA48C
/* 813EA444 | 40 80 00 7C */	bge .L_813EA4C0
/* 813EA448 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813EA44C | 40 80 00 08 */	bge .L_813EA454
/* 813EA450 | 48 00 00 70 */	b .L_813EA4C0
.L_813EA454:
/* 813EA454 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813EA458 | 41 82 00 1C */	beq .L_813EA474
/* 813EA45C | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA460 | 38 80 00 10 */	li r4, 0x10
/* 813EA464 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA468 | 48 12 7E B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA46C | 7C 60 1B 78 */	mr r0, r3
/* 813EA470 | 48 00 00 50 */	b .L_813EA4C0
.L_813EA474:
/* 813EA474 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA478 | 38 80 00 0E */	li r4, 0xe
/* 813EA47C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA480 | 48 12 7E 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA484 | 7C 60 1B 78 */	mr r0, r3
/* 813EA488 | 48 00 00 38 */	b .L_813EA4C0
.L_813EA48C:
/* 813EA48C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813EA490 | 41 82 00 1C */	beq .L_813EA4AC
/* 813EA494 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA498 | 38 80 00 0F */	li r4, 0xf
/* 813EA49C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA4A0 | 48 12 7E 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA4A4 | 7C 60 1B 78 */	mr r0, r3
/* 813EA4A8 | 48 00 00 18 */	b .L_813EA4C0
.L_813EA4AC:
/* 813EA4AC | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA4B0 | 38 80 00 0D */	li r4, 0xd
/* 813EA4B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA4B8 | 48 12 7E 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA4BC | 7C 60 1B 78 */	mr r0, r3
.L_813EA4C0:
/* 813EA4C0 | 7C 03 03 78 */	mr r3, r0
/* 813EA4C4 | 4B F7 F7 61 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EA4C8 | 7C 7D F2 14 */	add r3, r29, r30
/* 813EA4CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA4D0 | 9B E3 00 80 */	stb r31, 0x80(r3)
/* 813EA4D4 | 48 20 F0 41 */	bl _restgpr_29
/* 813EA4D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA4DC | 7C 08 03 A6 */	mtlr r0
/* 813EA4E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA4E4 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA418

# .text:0x106C | 0x813EA4E8 | size: 0x74
.fn iplSDButton_813EA4E8, global
/* 813EA4E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EA4EC | 7C 08 02 A6 */	mflr r0
/* 813EA4F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EA4F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA4F8 | 48 20 EF C9 */	bl _savegpr_27
/* 813EA4FC | 3F C0 81 65 */	lis r30, lbl_81655644@ha
/* 813EA500 | 7C 7B 1B 78 */	mr r27, r3
/* 813EA504 | 3B DE 56 44 */	addi r30, r30, lbl_81655644@l
/* 813EA508 | 3B A0 FF FF */	li r29, -0x1
/* 813EA50C | 3B 80 00 00 */	li r28, 0x0
/* 813EA510 | 3B E0 00 00 */	li r31, 0x0
.L_813EA514:
/* 813EA514 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EA518 | 7F 63 DB 78 */	mr r3, r27
/* 813EA51C | 48 21 7F 65 */	bl strcmp
/* 813EA520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA524 | 40 82 00 0C */	bne .L_813EA530
/* 813EA528 | 7F 9D E3 78 */	mr r29, r28
/* 813EA52C | 48 00 00 14 */	b .L_813EA540
.L_813EA530:
/* 813EA530 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EA534 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EA538 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813EA53C | 41 80 FF D8 */	blt .L_813EA514
.L_813EA540:
/* 813EA540 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA544 | 7F A3 EB 78 */	mr r3, r29
/* 813EA548 | 48 20 EF C5 */	bl _restgpr_27
/* 813EA54C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA550 | 7C 08 03 A6 */	mtlr r0
/* 813EA554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA558 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA4E8

# .text:0x10E0 | 0x813EA55C | size: 0xB8
.fn iplSDButton_813EA55C, global
/* 813EA55C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813EA560 | 7C 08 02 A6 */	mflr r0
/* 813EA564 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813EA568 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EA56C | 48 20 EF 5D */	bl _savegpr_29
/* 813EA570 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813EA574 | 7C 7D 1B 78 */	mr r29, r3
/* 813EA578 | 7C 9E 23 78 */	mr r30, r4
/* 813EA57C | 40 80 00 80 */	bge .L_813EA5FC
/* 813EA580 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813EA584 | 7C A4 2B 78 */	mr r4, r5
/* 813EA588 | 38 A0 00 01 */	li r5, 0x1
/* 813EA58C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EA590 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA594 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EA598 | 7D 89 03 A6 */	mtctr r12
/* 813EA59C | 4E 80 04 21 */	bctrl
/* 813EA5A0 | C0 22 87 90 */	lfs f1, lbl_81694B90@sda21(r0)
/* 813EA5A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813EA5A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813EA5AC | FC 40 08 90 */	fmr f2, f1
/* 813EA5B0 | FC 60 08 90 */	fmr f3, f1
/* 813EA5B4 | 4B F7 84 A9 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813EA5B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813EA5BC | 38 7F 00 84 */	addi r3, r31, 0x84
/* 813EA5C0 | 7C 85 23 78 */	mr r5, r4
/* 813EA5C4 | 48 15 6E F9 */	bl fn_815414BC
/* 813EA5C8 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813EA5CC | 57 C0 10 3A */	slwi r0, r30, 2
/* 813EA5D0 | C0 02 87 9C */	lfs f0, lbl_81694B9C@sda21(r0)
/* 813EA5D4 | 7F FD 02 14 */	add r31, r29, r0
/* 813EA5D8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813EA5DC | 38 A0 00 01 */	li r5, 0x1
/* 813EA5E0 | EC 01 00 2A */	fadds f0, f1, f0
/* 813EA5E4 | 38 C0 00 00 */	li r6, 0x0
/* 813EA5E8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813EA5EC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813EA5F0 | 4B FE 71 DD */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 813EA5F4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813EA5F8 | 4B FE 71 AD */	bl fadeinNoSetTextbox__Q33ipl5scene11TextBalloonFv
.L_813EA5FC:
/* 813EA5FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EA600 | 48 20 EF 15 */	bl _restgpr_29
/* 813EA604 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813EA608 | 7C 08 03 A6 */	mtlr r0
/* 813EA60C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813EA610 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA55C

# .text:0x1198 | 0x813EA614 | size: 0x148
.fn iplSDButton_813EA614, global
/* 813EA614 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813EA618 | 7C 08 02 A6 */	mflr r0
/* 813EA61C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813EA620 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EA624 | 48 20 EE 91 */	bl _savegpr_24
/* 813EA628 | 3B 60 00 01 */	li r27, 0x1
/* 813EA62C | 3B 40 00 00 */	li r26, 0x0
/* 813EA630 | 3F C0 81 65 */	lis r30, lbl_81655644@ha
/* 813EA634 | 9B 63 00 82 */	stb r27, 0x82(r3)
/* 813EA638 | 7C 78 1B 78 */	mr r24, r3
/* 813EA63C | 7F 5C D3 78 */	mr r28, r26
/* 813EA640 | 7F 5D D3 78 */	mr r29, r26
/* 813EA644 | 3B DE 56 44 */	addi r30, r30, lbl_81655644@l
/* 813EA648 | 3B E0 00 00 */	li r31, 0x0
.L_813EA64C:
/* 813EA64C | 7C 78 FA 14 */	add r3, r24, r31
/* 813EA650 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813EA654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EA658 | 41 82 00 B0 */	beq .L_813EA708
/* 813EA65C | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 813EA660 | 93 83 00 70 */	stw r28, 0x70(r3)
/* 813EA664 | 3B 20 00 00 */	li r25, 0x0
/* 813EA668 | 41 82 00 54 */	beq .L_813EA6BC
/* 813EA66C | 40 80 00 14 */	bge .L_813EA680
/* 813EA670 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813EA674 | 41 82 00 18 */	beq .L_813EA68C
/* 813EA678 | 40 80 00 2C */	bge .L_813EA6A4
/* 813EA67C | 48 00 00 6C */	b .L_813EA6E8
.L_813EA680:
/* 813EA680 | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813EA684 | 40 80 00 64 */	bge .L_813EA6E8
/* 813EA688 | 48 00 00 4C */	b .L_813EA6D4
.L_813EA68C:
/* 813EA68C | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813EA690 | 38 80 00 02 */	li r4, 0x2
/* 813EA694 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA698 | 48 12 7C 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA69C | 7C 79 1B 78 */	mr r25, r3
/* 813EA6A0 | 48 00 00 48 */	b .L_813EA6E8
.L_813EA6A4:
/* 813EA6A4 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813EA6A8 | 38 80 00 05 */	li r4, 0x5
/* 813EA6AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA6B0 | 48 12 7C 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA6B4 | 7C 79 1B 78 */	mr r25, r3
/* 813EA6B8 | 48 00 00 30 */	b .L_813EA6E8
.L_813EA6BC:
/* 813EA6BC | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813EA6C0 | 38 80 00 0C */	li r4, 0xc
/* 813EA6C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA6C8 | 48 12 7C 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA6CC | 7C 79 1B 78 */	mr r25, r3
/* 813EA6D0 | 48 00 00 18 */	b .L_813EA6E8
.L_813EA6D4:
/* 813EA6D4 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813EA6D8 | 38 80 00 0B */	li r4, 0xb
/* 813EA6DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EA6E0 | 48 12 7C 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EA6E4 | 7C 79 1B 78 */	mr r25, r3
.L_813EA6E8:
/* 813EA6E8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813EA6EC | 41 82 00 1C */	beq .L_813EA708
/* 813EA6F0 | 7F 23 CB 78 */	mr r3, r25
/* 813EA6F4 | 4B F7 F5 31 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EA6F8 | 93 B9 00 18 */	stw r29, 0x18(r25)
/* 813EA6FC | 7F 23 CB 78 */	mr r3, r25
/* 813EA700 | 4B F7 81 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EA704 | 93 79 00 14 */	stw r27, 0x14(r25)
.L_813EA708:
/* 813EA708 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813EA70C | 38 A0 00 01 */	li r5, 0x1
/* 813EA710 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EA714 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EA718 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA71C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EA720 | 7D 89 03 A6 */	mtctr r12
/* 813EA724 | 4E 80 04 21 */	bctrl
/* 813EA728 | 7C 64 1B 78 */	mr r4, r3
/* 813EA72C | 80 78 00 60 */	lwz r3, 0x60(r24)
/* 813EA730 | 4B F8 0A E9 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813EA734 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EA738 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EA73C | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813EA740 | 41 80 FF 0C */	blt .L_813EA64C
/* 813EA744 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EA748 | 48 20 ED B9 */	bl _restgpr_24
/* 813EA74C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813EA750 | 7C 08 03 A6 */	mtlr r0
/* 813EA754 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813EA758 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA614

# .text:0x12E0 | 0x813EA75C | size: 0x5C
.fn iplSDButton_813EA75C, global
/* 813EA75C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EA760 | 7C 08 02 A6 */	mflr r0
/* 813EA764 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EA768 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA76C | 48 20 ED 5D */	bl _savegpr_29
/* 813EA770 | 7C 7D 1B 78 */	mr r29, r3
/* 813EA774 | 3B C0 00 00 */	li r30, 0x0
/* 813EA778 | 3B E0 00 00 */	li r31, 0x0
.L_813EA77C:
/* 813EA77C | 7C 7D FA 14 */	add r3, r29, r31
/* 813EA780 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813EA784 | 4B FE 72 29 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813EA788 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813EA78C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EA790 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813EA794 | 41 80 FF E8 */	blt .L_813EA77C
/* 813EA798 | 38 00 00 00 */	li r0, 0x0
/* 813EA79C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA7A0 | 98 1D 00 82 */	stb r0, 0x82(r29)
/* 813EA7A4 | 48 20 ED 71 */	bl _restgpr_29
/* 813EA7A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA7AC | 7C 08 03 A6 */	mtlr r0
/* 813EA7B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA7B4 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA75C

# .text:0x133C | 0x813EA7B8 | size: 0xC8
.fn iplSDButton_813EA7B8, global
/* 813EA7B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EA7BC | 7C 08 02 A6 */	mflr r0
/* 813EA7C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EA7C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA7C8 | 48 20 EC F9 */	bl _savegpr_27
/* 813EA7CC | 7C 7B 1B 78 */	mr r27, r3
/* 813EA7D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EA7D4 | 7C 9C 23 78 */	mr r28, r4
/* 813EA7D8 | 7C BD 2B 78 */	mr r29, r5
/* 813EA7DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA7E0 | 7C DE 33 78 */	mr r30, r6
/* 813EA7E4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813EA7E8 | 7D 89 03 A6 */	mtctr r12
/* 813EA7EC | 4E 80 04 21 */	bctrl
/* 813EA7F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA7F4 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813EA7F8 | 7D 89 03 A6 */	mtctr r12
/* 813EA7FC | 4E 80 04 21 */	bctrl
/* 813EA800 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813EA804 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813EA808 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813EA80C | 38 80 00 24 */	li r4, 0x24
/* 813EA810 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813EA814 | 48 02 09 25 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813EA818 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813EA81C | 41 82 00 24 */	beq .L_813EA840
/* 813EA820 | 40 80 00 28 */	bge .L_813EA848
/* 813EA824 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813EA828 | 40 80 00 08 */	bge .L_813EA830
/* 813EA82C | 48 00 00 1C */	b .L_813EA848
.L_813EA830:
/* 813EA830 | 7F E4 FB 78 */	mr r4, r31
/* 813EA834 | 7F C5 F3 78 */	mr r5, r30
/* 813EA838 | 4B FF F4 D1 */	bl iplSDButton_813E9D08
/* 813EA83C | 48 00 00 0C */	b .L_813EA848
.L_813EA840:
/* 813EA840 | 7F E4 FB 78 */	mr r4, r31
/* 813EA844 | 4B FF F7 1D */	bl iplSDButton_813E9F60
.L_813EA848:
/* 813EA848 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813EA84C | 7F 63 DB 78 */	mr r3, r27
/* 813EA850 | 7F 84 E3 78 */	mr r4, r28
/* 813EA854 | 7F A5 EB 78 */	mr r5, r29
/* 813EA858 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813EA85C | 7F C6 F3 78 */	mr r6, r30
/* 813EA860 | 7D 89 03 A6 */	mtctr r12
/* 813EA864 | 4E 80 04 21 */	bctrl
/* 813EA868 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA86C | 48 20 EC A1 */	bl _restgpr_27
/* 813EA870 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA874 | 7C 08 03 A6 */	mtlr r0
/* 813EA878 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA87C | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA7B8

# .text:0x1404 | 0x813EA880 | size: 0x4
.fn iplSDButton_813EA880, global
/* 813EA880 | 4E 80 00 20 */	blr
.endfn iplSDButton_813EA880

# .text:0x1408 | 0x813EA884 | size: 0x8
.fn "@20@__dt__Q33ipl5scene8SDButtonFv", global
/* 813EA884 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813EA888 | 4B FF EC 90 */	b __dt__Q33ipl5scene8SDButtonFv
.endfn "@20@__dt__Q33ipl5scene8SDButtonFv"

# 0x81655638..0x81655A70 | size: 0x438
.data
.balign 8

# .data:0x0 | 0x81655638 | size: 0xC
.obj lbl_81655638, global
	.4byte 0x425F5769
	.4byte 0x696D656E
	.4byte 0x75000000
.endobj lbl_81655638

# .data:0xC | 0x81655644 | size: 0x10
.obj lbl_81655644, global
	.4byte lbl_81655638
	.4byte lbl_81696EF0
	.4byte lbl_81696EF7
	.4byte lbl_81696EFE
.endobj lbl_81655644

# .data:0x1C | 0x81655654 | size: 0xD
.obj lbl_81655654, global
	.string "sdButton.ash"
.endobj lbl_81655654

# .data:0x29 | 0x81655661 | size: 0x2DE
.obj lbl_81655661, global
	.4byte 0x62616C6C
	.4byte 0x6F6F6E2E
	.4byte 0x61736800
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x755F622E
	.4byte 0x62726C79
	.4byte 0x74006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4274
	.4byte 0x6E5F5769
	.4byte 0x696D656E
	.4byte 0x755F726F
	.4byte 0x6C6C6F76
	.4byte 0x65722E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F62
	.4byte 0x5F42746E
	.4byte 0x5F576969
	.4byte 0x6D656E75
	.4byte 0x5F6F6E2E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4274
	.4byte 0x6E5F5769
	.4byte 0x696D656E
	.4byte 0x755F726F
	.4byte 0x6C6C6F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x755F625F
	.4byte 0x42746E5F
	.4byte 0x48656C70
	.4byte 0x5F726F6C
	.4byte 0x6C6F7665
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x755F625F
	.4byte 0x42746E5F
	.4byte 0x48656C70
	.4byte 0x5F6F6E2E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4274
	.4byte 0x6E5F4865
	.4byte 0x6C705F72
	.4byte 0x6F6C6C6F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F62
	.4byte 0x5F417277
	.4byte 0x5F776174
	.4byte 0x696E675F
	.4byte 0x726F6F70
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x526F6F70
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F62
	.4byte 0x5F417277
	.4byte 0x4C5F6F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x4C5F4163
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F62
	.4byte 0x5F417277
	.4byte 0x525F6F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x525F4163
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F62
	.4byte 0x5F417277
	.4byte 0x4C5F726F
	.4byte 0x6C6C6F76
	.4byte 0x65722E62
	.4byte 0x726C616E
	.4byte 0x00475F41
	.4byte 0x72774C5F
	.4byte 0x466F6375
	.4byte 0x73006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4172
	.4byte 0x77525F72
	.4byte 0x6F6C6C6F
	.4byte 0x7665722E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x41727752
	.4byte 0x5F466F63
	.4byte 0x7573006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x5F625F41
	.4byte 0x72774C5F
	.4byte 0x726F6C6C
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4172
	.4byte 0x77525F72
	.4byte 0x6F6C6C6F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F62
	.4byte 0x5F417277
	.4byte 0x4C5F696E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x4C5F456E
	.4byte 0x64006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4172
	.4byte 0x77525F69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4172
	.4byte 0x77525F45
	.4byte 0x6E64006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x5F625F41
	.4byte 0x72774C5F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x625F4172
	.4byte 0x77525F6F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x49706C54
	.4byte 0x6F704261
	.4byte 0x6C6C6F6F
	.4byte 0x6E5F612E
	.4byte 0x62726C79
	.2byte 0x7400
.endobj lbl_81655661

# .data:0x307 | 0x8165593F | size: 0x19
.obj lbl_8165593F, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F54
	.4byte 0x41524745
	.4byte 0x5454494E
	.4byte 0x47000000
	.byte 0x00
.endobj lbl_8165593F

# .data:0x320 | 0x81655958 | size: 0x34
.obj jumptable_81655958, local
	.rel iplSDButton_813EA254, .L_813EA294
	.rel iplSDButton_813EA254, .L_813EA3D8
	.rel iplSDButton_813EA254, .L_813EA3D8
	.rel iplSDButton_813EA254, .L_813EA2CC
	.rel iplSDButton_813EA254, .L_813EA2B4
	.rel iplSDButton_813EA254, .L_813EA3D8
	.rel iplSDButton_813EA254, .L_813EA3D8
	.rel iplSDButton_813EA254, .L_813EA3D8
	.rel iplSDButton_813EA254, .L_813EA3D8
	.rel iplSDButton_813EA254, .L_813EA3A4
	.rel iplSDButton_813EA254, .L_813EA328
	.rel iplSDButton_813EA254, .L_813EA360
	.rel iplSDButton_813EA254, .L_813EA2E4
.endobj jumptable_81655958

# .data:0x354 | 0x8165598C | size: 0xE4
.obj lbl_8165598C, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene8SDButtonFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene8SDButtonFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene8SDButtonFv
	.4byte create__Q33ipl5scene8SDButtonFv
	.4byte calc__Q33ipl5scene8SDButtonFv
	.4byte draw__Q33ipl5scene8SDButtonFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte iplSDButton_813EA7B8
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte iplSDButton_813EA880
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
.endobj lbl_8165598C

# 0x81694B88..0x81694BA0 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694B88 | size: 0x8
.obj lbl_81694B88, global
	.4byte 0x000000A8
	.4byte 0x000000A6
.endobj lbl_81694B88

# .sdata2:0x8 | 0x81694B90 | size: 0x4
.obj lbl_81694B90, global
	.float 0
.endobj lbl_81694B90

# .sdata2:0xC | 0x81694B94 | size: 0x4
.obj lbl_81694B94, global
	.float 120
.endobj lbl_81694B94

# .sdata2:0x10 | 0x81694B98 | size: 0x4
.obj lbl_81694B98, global
	.float 30
.endobj lbl_81694B98

# .sdata2:0x14 | 0x81694B9C | size: 0x4
.obj lbl_81694B9C, global
	.float 50
.endobj lbl_81694B9C

# 0x81696EF0..0x81696F30 | size: 0x40
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696EF0 | size: 0x7
.obj lbl_81696EF0, global
	.string "B_Help"
.endobj lbl_81696EF0

# .sdata:0x7 | 0x81696EF7 | size: 0x7
.obj lbl_81696EF7, global
	.string "B_ArwR"
.endobj lbl_81696EF7

# .sdata:0xE | 0x81696EFE | size: 0x7
.obj lbl_81696EFE, global
	.string "B_ArwL"
.endobj lbl_81696EFE

# .sdata:0x15 | 0x81696F05 | size: 0x5
.obj lbl_81696F05, global
	.string "ArwR"
.endobj lbl_81696F05

# .sdata:0x1A | 0x81696F0A | size: 0x6
.obj lbl_81696F0A, global
	.4byte 0x4172774C
	.2byte 0x0000
.endobj lbl_81696F0A

# .sdata:0x20 | 0x81696F10 | size: 0x8
# ipl::scene::SDButton::msArrowPanes
.obj msArrowPanes__Q33ipl5scene8SDButton, global
	.4byte lbl_81696F05
	.4byte lbl_81696F0A
.endobj msArrowPanes__Q33ipl5scene8SDButton

# .sdata:0x28 | 0x81696F18 | size: 0x4
.obj lbl_81696F18, global
	.string "arc"
.endobj lbl_81696F18

# .sdata:0x2C | 0x81696F1C | size: 0x5
.obj lbl_81696F1C, global
	.string "G_BL"
.endobj lbl_81696F1C

# .sdata:0x31 | 0x81696F21 | size: 0x5
.obj lbl_81696F21, global
	.string "G_BR"
.endobj lbl_81696F21

# .sdata:0x36 | 0x81696F26 | size: 0xA
.obj lbl_81696F26, global
	.4byte 0x545F7061
	.4byte 0x67650000
	.2byte 0x0000
.endobj lbl_81696F26
