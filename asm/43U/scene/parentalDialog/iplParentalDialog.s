.include "macros.inc"
.file "iplParentalDialog.cpp"

# 0x813D95BC..0x813DA778 | size: 0x11BC
.text
.balign 4

# .text:0x0 | 0x813D95BC | size: 0xA4
# ipl::scene::ParentalDialog::ParentalDialog(EGG::Heap*, int)
.fn __ct__Q33ipl5scene14ParentalDialogFPQ23EGG4Heapi, global
/* 813D95BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D95C0 | 7C 08 02 A6 */	mflr r0
/* 813D95C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D95C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D95CC | 7C BF 2B 78 */	mr r31, r5
/* 813D95D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D95D4 | 7C 7E 1B 78 */	mr r30, r3
/* 813D95D8 | 48 03 1C 31 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813D95DC | 3C C0 81 65 */	lis r6, __vt__Q33ipl5scene14ParentalDialog@ha
/* 813D95E0 | 38 A0 00 00 */	li r5, 0x0
/* 813D95E4 | 38 C6 3E D8 */	addi r6, r6, __vt__Q33ipl5scene14ParentalDialog@l
/* 813D95E8 | 38 00 00 03 */	li r0, 0x3
/* 813D95EC | 38 86 00 1C */	addi r4, r6, 0x1c
/* 813D95F0 | 7C A3 2B 78 */	mr r3, r5
/* 813D95F4 | 90 DE 00 00 */	stw r6, 0x0(r30)
/* 813D95F8 | 90 9E 00 14 */	stw r4, 0x14(r30)
/* 813D95FC | 90 BE 00 58 */	stw r5, 0x58(r30)
/* 813D9600 | 90 BE 00 5C */	stw r5, 0x5c(r30)
/* 813D9604 | 90 BE 00 60 */	stw r5, 0x60(r30)
/* 813D9608 | 90 BE 00 64 */	stw r5, 0x64(r30)
/* 813D960C | 90 BE 00 68 */	stw r5, 0x68(r30)
/* 813D9610 | 93 FE 00 6C */	stw r31, 0x6c(r30)
/* 813D9614 | 90 BE 00 70 */	stw r5, 0x70(r30)
/* 813D9618 | 98 BE 00 8A */	stb r5, 0x8a(r30)
/* 813D961C | 90 BE 00 8C */	stw r5, 0x8c(r30)
/* 813D9620 | 7C 09 03 A6 */	mtctr r0
.L_813D9624:
/* 813D9624 | 7C 9E 1A 14 */	add r4, r30, r3
/* 813D9628 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813D962C | 90 A4 00 74 */	stw r5, 0x74(r4)
/* 813D9630 | 42 00 FF F4 */	bdnz .L_813D9624
/* 813D9634 | 38 7E 00 80 */	addi r3, r30, 0x80
/* 813D9638 | 38 80 00 00 */	li r4, 0x0
/* 813D963C | 38 A0 00 0A */	li r5, 0xa
/* 813D9640 | 4B F5 6C F5 */	bl memset
/* 813D9644 | 7F C3 F3 78 */	mr r3, r30
/* 813D9648 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D964C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D9650 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9654 | 7C 08 03 A6 */	mtlr r0
/* 813D9658 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D965C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene14ParentalDialogFPQ23EGG4Heapi

# .text:0xA4 | 0x813D9660 | size: 0x4C
# ipl::scene::ParentalDialog::prepare()
.fn prepare__Q33ipl5scene14ParentalDialogFv, global
/* 813D9660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9664 | 7C 08 02 A6 */	mflr r0
/* 813D9668 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D966C | 3C A0 81 65 */	lis r5, lbl_81653CF4@ha
/* 813D9670 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9674 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D9678 | 38 A5 3C F4 */	addi r5, r5, lbl_81653CF4@l
/* 813D967C | 38 C0 00 00 */	li r6, 0x0
/* 813D9680 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9684 | 7C 7F 1B 78 */	mr r31, r3
/* 813D9688 | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 813D968C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813D9690 | 4B F6 42 25 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813D9694 | 90 7F 00 60 */	stw r3, 0x60(r31)
/* 813D9698 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D969C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D96A0 | 7C 08 03 A6 */	mtlr r0
/* 813D96A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D96A8 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene14ParentalDialogFv

# .text:0xF0 | 0x813D96AC | size: 0x384
# ipl::scene::ParentalDialog::create()
.fn create__Q33ipl5scene14ParentalDialogFv, global
/* 813D96AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D96B0 | 7C 08 02 A6 */	mflr r0
/* 813D96B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D96B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D96BC | 48 21 FE 05 */	bl _savegpr_27
/* 813D96C0 | 3F 80 81 65 */	lis r28, lbl_81653CE8@ha
/* 813D96C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813D96C8 | 3B 9C 3C E8 */	addi r28, r28, lbl_81653CE8@l
/* 813D96CC | 38 60 05 80 */	li r3, 0x580
/* 813D96D0 | 48 21 E9 CD */	bl __nw__FUl
/* 813D96D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D96D8 | 41 82 00 18 */	beq .L_813D96F0
/* 813D96DC | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813D96E0 | 38 FC 00 18 */	addi r7, r28, 0x18
/* 813D96E4 | 80 BF 00 60 */	lwz r5, 0x60(r31)
/* 813D96E8 | 38 CD 8D 1D */	li r6, lbl_81696D5D@sda21
/* 813D96EC | 4B F9 09 39 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813D96F0:
/* 813D96F0 | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 813D96F4 | 38 9C 00 32 */	addi r4, r28, 0x32
/* 813D96F8 | 38 AD 8D 21 */	li r5, lbl_81696D61@sda21
/* 813D96FC | 38 C0 00 00 */	li r6, 0x0
/* 813D9700 | 38 E0 00 01 */	li r7, 0x1
/* 813D9704 | 4B F9 0D DD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9708 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D970C | 38 9C 00 55 */	addi r4, r28, 0x55
/* 813D9710 | 38 AD 8D 21 */	li r5, lbl_81696D61@sda21
/* 813D9714 | 38 C0 00 00 */	li r6, 0x0
/* 813D9718 | 38 E0 00 00 */	li r7, 0x0
/* 813D971C | 4B F9 0D C5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9720 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9724 | 38 9C 00 79 */	addi r4, r28, 0x79
/* 813D9728 | 38 BC 00 9F */	addi r5, r28, 0x9f
/* 813D972C | 38 C0 00 00 */	li r6, 0x0
/* 813D9730 | 38 E0 00 00 */	li r7, 0x0
/* 813D9734 | 4B F9 0D AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9738 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D973C | 38 9C 00 AB */	addi r4, r28, 0xab
/* 813D9740 | 38 BC 00 9F */	addi r5, r28, 0x9f
/* 813D9744 | 38 C0 00 00 */	li r6, 0x0
/* 813D9748 | 38 E0 00 00 */	li r7, 0x0
/* 813D974C | 4B F9 0D 95 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9750 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9754 | 38 9C 00 D2 */	addi r4, r28, 0xd2
/* 813D9758 | 38 BC 00 9F */	addi r5, r28, 0x9f
/* 813D975C | 38 C0 00 00 */	li r6, 0x0
/* 813D9760 | 38 E0 00 00 */	li r7, 0x0
/* 813D9764 | 4B F9 0D 7D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9768 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D976C | 38 9C 00 79 */	addi r4, r28, 0x79
/* 813D9770 | 38 BC 00 F9 */	addi r5, r28, 0xf9
/* 813D9774 | 38 C0 00 00 */	li r6, 0x0
/* 813D9778 | 38 E0 00 00 */	li r7, 0x0
/* 813D977C | 4B F9 0D 65 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9780 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9784 | 38 9C 00 AB */	addi r4, r28, 0xab
/* 813D9788 | 38 BC 00 F9 */	addi r5, r28, 0xf9
/* 813D978C | 38 C0 00 00 */	li r6, 0x0
/* 813D9790 | 38 E0 00 00 */	li r7, 0x0
/* 813D9794 | 4B F9 0D 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9798 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D979C | 38 9C 00 D2 */	addi r4, r28, 0xd2
/* 813D97A0 | 38 BC 00 F9 */	addi r5, r28, 0xf9
/* 813D97A4 | 38 C0 00 00 */	li r6, 0x0
/* 813D97A8 | 38 E0 00 00 */	li r7, 0x0
/* 813D97AC | 4B F9 0D 35 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D97B0 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D97B4 | 38 9C 00 79 */	addi r4, r28, 0x79
/* 813D97B8 | 38 BC 01 05 */	addi r5, r28, 0x105
/* 813D97BC | 38 C0 00 00 */	li r6, 0x0
/* 813D97C0 | 38 E0 00 00 */	li r7, 0x0
/* 813D97C4 | 4B F9 0D 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D97C8 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D97CC | 38 9C 00 AB */	addi r4, r28, 0xab
/* 813D97D0 | 38 BC 01 05 */	addi r5, r28, 0x105
/* 813D97D4 | 38 C0 00 00 */	li r6, 0x0
/* 813D97D8 | 38 E0 00 00 */	li r7, 0x0
/* 813D97DC | 4B F9 0D 05 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D97E0 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D97E4 | 38 9C 00 D2 */	addi r4, r28, 0xd2
/* 813D97E8 | 38 BC 01 05 */	addi r5, r28, 0x105
/* 813D97EC | 38 C0 00 00 */	li r6, 0x0
/* 813D97F0 | 38 E0 00 00 */	li r7, 0x0
/* 813D97F4 | 4B F9 0C ED */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D97F8 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D97FC | 38 9C 01 11 */	addi r4, r28, 0x111
/* 813D9800 | 38 BC 01 37 */	addi r5, r28, 0x137
/* 813D9804 | 38 C0 00 00 */	li r6, 0x0
/* 813D9808 | 38 E0 00 00 */	li r7, 0x0
/* 813D980C | 4B F9 0C D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9810 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9814 | 38 9C 01 45 */	addi r4, r28, 0x145
/* 813D9818 | 38 BC 01 66 */	addi r5, r28, 0x166
/* 813D981C | 38 C0 00 00 */	li r6, 0x0
/* 813D9820 | 38 E0 00 00 */	li r7, 0x0
/* 813D9824 | 4B F9 0C BD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9828 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D982C | 38 9C 01 72 */	addi r4, r28, 0x172
/* 813D9830 | 38 BC 01 66 */	addi r5, r28, 0x166
/* 813D9834 | 38 C0 00 00 */	li r6, 0x0
/* 813D9838 | 38 E0 00 00 */	li r7, 0x0
/* 813D983C | 4B F9 0C A5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813D9840 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9844 | 4B F9 0D F1 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813D9848 | 38 60 00 10 */	li r3, 0x10
/* 813D984C | 48 21 E8 51 */	bl __nw__FUl
/* 813D9850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D9854 | 41 82 00 1C */	beq .L_813D9870
/* 813D9858 | 38 00 00 00 */	li r0, 0x0
/* 813D985C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene19ParentalDialogEvent@ha
/* 813D9860 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813D9864 | 38 84 3E C0 */	addi r4, r4, __vt__Q33ipl5scene19ParentalDialogEvent@l
/* 813D9868 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813D986C | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813D9870:
/* 813D9870 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 813D9874 | 38 60 00 34 */	li r3, 0x34
/* 813D9878 | 48 21 E8 25 */	bl __nw__FUl
/* 813D987C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D9880 | 7C 7D 1B 78 */	mr r29, r3
/* 813D9884 | 41 82 00 88 */	beq .L_813D990C
/* 813D9888 | 80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 813D988C | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813D9890 | 80 DF 00 64 */	lwz r6, 0x64(r31)
/* 813D9894 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813D9898 | 38 00 00 00 */	li r0, 0x0
/* 813D989C | 3B C5 02 98 */	addi r30, r5, 0x298
/* 813D98A0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813D98A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D98A8 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813D98AC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813D98B0 | 41 82 00 1C */	beq .L_813D98CC
/* 813D98B4 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813D98B8 | 7C C3 33 78 */	mr r3, r6
/* 813D98BC | 7F A4 EB 78 */	mr r4, r29
/* 813D98C0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813D98C4 | 7D 89 03 A6 */	mtctr r12
/* 813D98C8 | 4E 80 04 21 */	bctrl
.L_813D98CC:
/* 813D98CC | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813D98D0 | 38 80 00 08 */	li r4, 0x8
/* 813D98D4 | 48 13 87 89 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813D98D8 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813D98DC | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813D98E0 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813D98E4 | 38 80 00 08 */	li r4, 0x8
/* 813D98E8 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813D98EC | 93 DD 00 24 */	stw r30, 0x24(r29)
/* 813D98F0 | 48 13 87 6D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813D98F4 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813D98F8 | 38 00 00 00 */	li r0, 0x0
/* 813D98FC | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813D9900 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 813D9904 | 90 1D 00 2C */	stw r0, 0x2c(r29)
/* 813D9908 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813D990C:
/* 813D990C | 93 BF 00 68 */	stw r29, 0x68(r31)
/* 813D9910 | 7F A3 EB 78 */	mr r3, r29
/* 813D9914 | 80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 813D9918 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813D991C | 38 84 00 04 */	addi r4, r4, 0x4
/* 813D9920 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D9924 | 7D 89 03 A6 */	mtctr r12
/* 813D9928 | 4E 80 04 21 */	bctrl
/* 813D992C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813D9930 | 38 80 00 00 */	li r4, 0x0
/* 813D9934 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D9938 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813D993C | 7D 89 03 A6 */	mtctr r12
/* 813D9940 | 4E 80 04 21 */	bctrl
/* 813D9944 | 3B BC 00 00 */	addi r29, r28, 0x0
/* 813D9948 | 3B 60 00 00 */	li r27, 0x0
/* 813D994C | 3B C0 00 00 */	li r30, 0x0
.L_813D9950:
/* 813D9950 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9954 | 38 A0 00 01 */	li r5, 0x1
/* 813D9958 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813D995C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D9960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D9964 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D9968 | 7D 89 03 A6 */	mtctr r12
/* 813D996C | 4E 80 04 21 */	bctrl
/* 813D9970 | 7C 64 1B 78 */	mr r4, r3
/* 813D9974 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813D9978 | 38 A0 00 01 */	li r5, 0x1
/* 813D997C | 4B F9 18 51 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813D9980 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813D9984 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813D9988 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813D998C | 41 80 FF C4 */	blt .L_813D9950
/* 813D9990 | 7F E3 FB 78 */	mr r3, r31
/* 813D9994 | 38 8D 8D 29 */	li r4, lbl_81696D69@sda21
/* 813D9998 | 38 A0 00 25 */	li r5, 0x25
/* 813D999C | 48 00 0B AD */	bl set_textbox__Q33ipl5scene14ParentalDialogFPCcUl
/* 813D99A0 | 7F E3 FB 78 */	mr r3, r31
/* 813D99A4 | 38 8D 8D 30 */	li r4, lbl_81696D70@sda21
/* 813D99A8 | 38 A0 00 2E */	li r5, 0x2e
/* 813D99AC | 48 00 0B 9D */	bl set_textbox__Q33ipl5scene14ParentalDialogFPCcUl
/* 813D99B0 | 7F E3 FB 78 */	mr r3, r31
/* 813D99B4 | 38 9C 01 92 */	addi r4, r28, 0x192
/* 813D99B8 | 38 A0 01 47 */	li r5, 0x147
/* 813D99BC | 48 00 0B 8D */	bl set_textbox__Q33ipl5scene14ParentalDialogFPCcUl
/* 813D99C0 | 7F E3 FB 78 */	mr r3, r31
/* 813D99C4 | 38 9C 01 9B */	addi r4, r28, 0x19b
/* 813D99C8 | 38 A0 01 48 */	li r5, 0x148
/* 813D99CC | 48 00 0B 7D */	bl set_textbox__Q33ipl5scene14ParentalDialogFPCcUl
/* 813D99D0 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D99D4 | 38 80 00 00 */	li r4, 0x0
/* 813D99D8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D99DC | 48 13 89 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D99E0 | 7C 7C 1B 78 */	mr r28, r3
/* 813D99E4 | 4B F8 8E 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D99E8 | 38 00 00 01 */	li r0, 0x1
/* 813D99EC | 38 80 00 0B */	li r4, 0xb
/* 813D99F0 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 813D99F4 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D99F8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D99FC | 48 13 89 1D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9A00 | 4B F9 02 25 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813D9A04 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9A08 | 38 80 00 0C */	li r4, 0xc
/* 813D9A0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9A10 | 48 13 89 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9A14 | 4B F9 02 11 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813D9A18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D9A1C | 48 21 FA F1 */	bl _restgpr_27
/* 813D9A20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D9A24 | 7C 08 03 A6 */	mtlr r0
/* 813D9A28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D9A2C | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene14ParentalDialogFv

# .text:0x474 | 0x813D9A30 | size: 0x3C
# ipl::scene::ParentalDialog::calcFadein()
.fn calcFadein__Q33ipl5scene14ParentalDialogFv, global
/* 813D9A30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9A34 | 7C 08 02 A6 */	mflr r0
/* 813D9A38 | 38 80 00 00 */	li r4, 0x0
/* 813D9A3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9A40 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813D9A44 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9A48 | 48 13 88 D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9A4C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D9A50 | 38 63 FF FF */	subi r3, r3, 0x1
/* 813D9A54 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813D9A58 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813D9A5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9A60 | 7C 08 03 A6 */	mtlr r0
/* 813D9A64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9A68 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene14ParentalDialogFv

# .text:0x4B0 | 0x813D9A6C | size: 0x80
# ipl::scene::ParentalDialog::calcNormal()
.fn calcNormal__Q33ipl5scene14ParentalDialogFv, global
/* 813D9A6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9A70 | 7C 08 02 A6 */	mflr r0
/* 813D9A74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9A78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9A7C | 7C 7F 1B 78 */	mr r31, r3
/* 813D9A80 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813D9A84 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D9A88 | 41 82 00 34 */	beq .L_813D9ABC
/* 813D9A8C | 40 80 00 14 */	bge .L_813D9AA0
/* 813D9A90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9A94 | 41 82 00 18 */	beq .L_813D9AAC
/* 813D9A98 | 40 80 00 1C */	bge .L_813D9AB4
/* 813D9A9C | 48 00 00 2C */	b .L_813D9AC8
.L_813D9AA0:
/* 813D9AA0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D9AA4 | 40 80 00 24 */	bge .L_813D9AC8
/* 813D9AA8 | 48 00 00 1C */	b .L_813D9AC4
.L_813D9AAC:
/* 813D9AAC | 48 00 01 55 */	bl iplParentalDialog_813D9C00__Q33ipl5scene14ParentalDialogFv
/* 813D9AB0 | 48 00 00 18 */	b .L_813D9AC8
.L_813D9AB4:
/* 813D9AB4 | 48 00 01 75 */	bl stt_wait_sel_anm__Q33ipl5scene14ParentalDialogFv
/* 813D9AB8 | 48 00 00 10 */	b .L_813D9AC8
.L_813D9ABC:
/* 813D9ABC | 48 00 01 D5 */	bl stt_wait_input__Q33ipl5scene14ParentalDialogFv
/* 813D9AC0 | 48 00 00 08 */	b .L_813D9AC8
.L_813D9AC4:
/* 813D9AC4 | 48 00 03 45 */	bl stt_wait_msg__Q33ipl5scene14ParentalDialogFv
.L_813D9AC8:
/* 813D9AC8 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813D9ACC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D9AD0 | 38 03 FF FC */	subi r0, r3, 0x4
/* 813D9AD4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D9AD8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813D9ADC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9AE0 | 7C 08 03 A6 */	mtlr r0
/* 813D9AE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9AE8 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene14ParentalDialogFv

# .text:0x530 | 0x813D9AEC | size: 0x44
# ipl::scene::ParentalDialog::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene14ParentalDialogFv, global
/* 813D9AEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9AF0 | 7C 08 02 A6 */	mflr r0
/* 813D9AF4 | 38 80 00 01 */	li r4, 0x1
/* 813D9AF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9AFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9B00 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813D9B04 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9B08 | 48 13 88 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9B0C | 7C 7F 1B 78 */	mr r31, r3
/* 813D9B10 | 4B F8 8D 61 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D9B14 | 38 00 00 01 */	li r0, 0x1
/* 813D9B18 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813D9B1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D9B20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9B24 | 7C 08 03 A6 */	mtlr r0
/* 813D9B28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9B2C | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene14ParentalDialogFv

# .text:0x574 | 0x813D9B30 | size: 0x3C
# ipl::scene::ParentalDialog::calcFadeout()
.fn calcFadeout__Q33ipl5scene14ParentalDialogFv, global
/* 813D9B30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9B34 | 7C 08 02 A6 */	mflr r0
/* 813D9B38 | 38 80 00 01 */	li r4, 0x1
/* 813D9B3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9B40 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813D9B44 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9B48 | 48 13 87 D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9B4C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D9B50 | 38 63 FF FF */	subi r3, r3, 0x1
/* 813D9B54 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813D9B58 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813D9B5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9B60 | 7C 08 03 A6 */	mtlr r0
/* 813D9B64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9B68 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene14ParentalDialogFv

# .text:0x5B0 | 0x813D9B6C | size: 0x44
# ipl::scene::ParentalDialog::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene14ParentalDialogFv, global
/* 813D9B6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9B70 | 7C 08 02 A6 */	mflr r0
/* 813D9B74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9B78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9B7C | 7C 7F 1B 78 */	mr r31, r3
/* 813D9B80 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813D9B84 | 4B F9 0B 81 */	bl calc__Q33ipl6layout6ObjectFv
/* 813D9B88 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813D9B8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D9B90 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813D9B94 | 7D 89 03 A6 */	mtctr r12
/* 813D9B98 | 4E 80 04 21 */	bctrl
/* 813D9B9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9BA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D9BA4 | 7C 08 03 A6 */	mtlr r0
/* 813D9BA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9BAC | 4E 80 00 20 */	blr
.endfn calcCommonAfter__Q33ipl5scene14ParentalDialogFv

# .text:0x5F4 | 0x813D9BB0 | size: 0x50
# ipl::scene::ParentalDialog::draw()
.fn draw__Q33ipl5scene14ParentalDialogFv, global
/* 813D9BB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9BB4 | 7C 08 02 A6 */	mflr r0
/* 813D9BB8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D9BBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9BC0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D9BC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9BC8 | 7C 7F 1B 78 */	mr r31, r3
/* 813D9BCC | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813D9BD0 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813D9BD4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D9BD8 | 40 82 00 14 */	bne .L_813D9BEC
/* 813D9BDC | 38 60 00 00 */	li r3, 0x0
/* 813D9BE0 | 4B F8 8E ED */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813D9BE4 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9BE8 | 4B F9 0B B5 */	bl draw__Q33ipl6layout6ObjectFv
.L_813D9BEC:
/* 813D9BEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9BF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D9BF4 | 7C 08 03 A6 */	mtlr r0
/* 813D9BF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9BFC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene14ParentalDialogFv

# .text:0x644 | 0x813D9C00 | size: 0x28
# ipl::scene::ParentalDialog::iplParentalDialog_813D9C00()
.fn iplParentalDialog_813D9C00__Q33ipl5scene14ParentalDialogFv, global
/* 813D9C00 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D9C04 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D9C08 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 813D9C0C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813D9C10 | 30 04 FF FF */	subic r0, r4, 0x1
/* 813D9C14 | 7C 00 21 11 */	subfe. r0, r0, r4
/* 813D9C18 | 4C 82 00 20 */	bnelr
/* 813D9C1C | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813D9C20 | 4B F9 13 6C */	b update__Q33ipl3gui11PaneManagerFv
/* 813D9C24 | 4E 80 00 20 */	blr
.endfn iplParentalDialog_813D9C00__Q33ipl5scene14ParentalDialogFv

# .text:0x66C | 0x813D9C28 | size: 0x68
# ipl::scene::ParentalDialog::stt_wait_sel_anm()
.fn stt_wait_sel_anm__Q33ipl5scene14ParentalDialogFv, global
/* 813D9C28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9C2C | 7C 08 02 A6 */	mflr r0
/* 813D9C30 | 38 80 00 04 */	li r4, 0x4
/* 813D9C34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9C38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9C3C | 7C 7F 1B 78 */	mr r31, r3
/* 813D9C40 | 80 A3 00 5C */	lwz r5, 0x5c(r3)
/* 813D9C44 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813D9C48 | 48 13 86 D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9C4C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813D9C50 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D9C54 | 41 82 00 28 */	beq .L_813D9C7C
/* 813D9C58 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813D9C5C | 38 80 00 07 */	li r4, 0x7
/* 813D9C60 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9C64 | 48 13 86 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9C68 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813D9C6C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D9C70 | 41 82 00 0C */	beq .L_813D9C7C
/* 813D9C74 | 38 00 00 04 */	li r0, 0x4
/* 813D9C78 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813D9C7C:
/* 813D9C7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9C80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D9C84 | 7C 08 03 A6 */	mtlr r0
/* 813D9C88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9C8C | 4E 80 00 20 */	blr
.endfn stt_wait_sel_anm__Q33ipl5scene14ParentalDialogFv

# .text:0x6D4 | 0x813D9C90 | size: 0x178
# ipl::scene::ParentalDialog::stt_wait_input()
.fn stt_wait_input__Q33ipl5scene14ParentalDialogFv, global
/* 813D9C90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D9C94 | 7C 08 02 A6 */	mflr r0
/* 813D9C98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D9C9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D9CA0 | 48 21 F8 29 */	bl _savegpr_29
/* 813D9CA4 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813D9CA8 | 7C 7D 1B 78 */	mr r29, r3
/* 813D9CAC | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813D9CB0 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813D9CB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D9CB8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813D9CBC | 7D 89 03 A6 */	mtctr r12
/* 813D9CC0 | 4E 80 04 21 */	bctrl
/* 813D9CC4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813D9CC8 | 7C 7F 1B 78 */	mr r31, r3
/* 813D9CCC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813D9CD0 | 41 82 00 28 */	beq .L_813D9CF8
/* 813D9CD4 | 40 80 00 18 */	bge .L_813D9CEC
/* 813D9CD8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D9CDC | 40 80 01 14 */	bge .L_813D9DF0
/* 813D9CE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9CE4 | 40 80 00 A8 */	bge .L_813D9D8C
/* 813D9CE8 | 48 00 01 08 */	b .L_813D9DF0
.L_813D9CEC:
/* 813D9CEC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813D9CF0 | 40 80 01 00 */	bge .L_813D9DF0
/* 813D9CF4 | 48 00 00 8C */	b .L_813D9D80
.L_813D9CF8:
/* 813D9CF8 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813D9CFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9D00 | 41 82 00 F0 */	beq .L_813D9DF0
/* 813D9D04 | 38 7D 00 80 */	addi r3, r29, 0x80
/* 813D9D08 | 38 80 00 00 */	li r4, 0x0
/* 813D9D0C | 38 A0 00 0A */	li r5, 0xa
/* 813D9D10 | 4B F5 66 25 */	bl memset
/* 813D9D14 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813D9D18 | 38 7D 00 80 */	addi r3, r29, 0x80
/* 813D9D1C | 38 A0 00 04 */	li r5, 0x4
/* 813D9D20 | 48 22 E9 C5 */	bl fn_816086E4
/* 813D9D24 | 80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 813D9D28 | 38 80 00 0C */	li r4, 0xc
/* 813D9D2C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9D30 | 48 13 85 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9D34 | 7C 7E 1B 78 */	mr r30, r3
/* 813D9D38 | 4B F8 8B 39 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D9D3C | 3B E0 00 01 */	li r31, 0x1
/* 813D9D40 | 38 80 00 0B */	li r4, 0xb
/* 813D9D44 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813D9D48 | 80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 813D9D4C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9D50 | 48 13 85 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9D54 | 38 00 00 00 */	li r0, 0x0
/* 813D9D58 | 38 80 00 0B */	li r4, 0xb
/* 813D9D5C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813D9D60 | 80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 813D9D64 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9D68 | 48 13 85 B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9D6C | 7C 7E 1B 78 */	mr r30, r3
/* 813D9D70 | 4B F8 8B 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D9D74 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813D9D78 | 9B FD 00 8A */	stb r31, 0x8a(r29)
/* 813D9D7C | 48 00 00 74 */	b .L_813D9DF0
.L_813D9D80:
/* 813D9D80 | 38 00 00 00 */	li r0, 0x0
/* 813D9D84 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813D9D88 | 48 00 00 68 */	b .L_813D9DF0
.L_813D9D8C:
/* 813D9D8C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D9D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D9D94 | 41 82 00 5C */	beq .L_813D9DF0
/* 813D9D98 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 813D9D9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9DA0 | 40 82 00 34 */	bne .L_813D9DD4
/* 813D9DA4 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813D9DA8 | 38 80 01 59 */	li r4, 0x159
/* 813D9DAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813D9DB0 | 4B F6 4A 0D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813D9DB4 | 80 BE 00 90 */	lwz r5, 0x90(r30)
/* 813D9DB8 | 7C 64 1B 78 */	mr r4, r3
/* 813D9DBC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813D9DC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D9DC4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813D9DC8 | 7D 89 03 A6 */	mtctr r12
/* 813D9DCC | 4E 80 04 21 */	bctrl
/* 813D9DD0 | 48 00 00 20 */	b .L_813D9DF0
.L_813D9DD4:
/* 813D9DD4 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813D9DD8 | 38 8D 8D 38 */	li r4, lbl_81696D78@sda21
/* 813D9DDC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813D9DE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D9DE4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813D9DE8 | 7D 89 03 A6 */	mtctr r12
/* 813D9DEC | 4E 80 04 21 */	bctrl
.L_813D9DF0:
/* 813D9DF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D9DF4 | 48 21 F7 21 */	bl _restgpr_29
/* 813D9DF8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D9DFC | 7C 08 03 A6 */	mtlr r0
/* 813D9E00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D9E04 | 4E 80 00 20 */	blr
.endfn stt_wait_input__Q33ipl5scene14ParentalDialogFv

# .text:0x84C | 0x813D9E08 | size: 0xC0
# ipl::scene::ParentalDialog::stt_wait_msg()
.fn stt_wait_msg__Q33ipl5scene14ParentalDialogFv, global
/* 813D9E08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D9E0C | 7C 08 02 A6 */	mflr r0
/* 813D9E10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D9E14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D9E18 | 48 21 F6 B1 */	bl _savegpr_29
/* 813D9E1C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D9E20 | 7C 7D 1B 78 */	mr r29, r3
/* 813D9E24 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D9E28 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813D9E2C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D9E30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D9E34 | 41 82 00 14 */	beq .L_813D9E48
/* 813D9E38 | 40 80 00 78 */	bge .L_813D9EB0
/* 813D9E3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9E40 | 40 80 00 68 */	bge .L_813D9EA8
/* 813D9E44 | 48 00 00 6C */	b .L_813D9EB0
.L_813D9E48:
/* 813D9E48 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813D9E4C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813D9E50 | 40 80 00 44 */	bge .L_813D9E94
/* 813D9E54 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813D9E58 | 38 80 00 0B */	li r4, 0xb
/* 813D9E5C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9E60 | 48 13 84 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9E64 | 3B E0 00 01 */	li r31, 0x1
/* 813D9E68 | 38 80 00 0B */	li r4, 0xb
/* 813D9E6C | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 813D9E70 | 80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 813D9E74 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9E78 | 48 13 84 A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9E7C | 7C 7E 1B 78 */	mr r30, r3
/* 813D9E80 | 4B F8 89 F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D9E84 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813D9E88 | 38 00 00 00 */	li r0, 0x0
/* 813D9E8C | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813D9E90 | 48 00 00 20 */	b .L_813D9EB0
.L_813D9E94:
/* 813D9E94 | 38 80 00 02 */	li r4, 0x2
/* 813D9E98 | 38 00 00 04 */	li r0, 0x4
/* 813D9E9C | 90 83 00 70 */	stw r4, 0x70(r3)
/* 813D9EA0 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813D9EA4 | 48 00 00 0C */	b .L_813D9EB0
.L_813D9EA8:
/* 813D9EA8 | 38 00 00 04 */	li r0, 0x4
/* 813D9EAC | 90 03 00 58 */	stw r0, 0x58(r3)
.L_813D9EB0:
/* 813D9EB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D9EB4 | 48 21 F6 61 */	bl _restgpr_29
/* 813D9EB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D9EBC | 7C 08 03 A6 */	mtlr r0
/* 813D9EC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D9EC4 | 4E 80 00 20 */	blr
.endfn stt_wait_msg__Q33ipl5scene14ParentalDialogFv

# .text:0x90C | 0x813D9EC8 | size: 0x194
# ipl::scene::ParentalDialog::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene14ParentalDialogFPCcPQ33ipl10controller9Interface, global
/* 813D9EC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D9ECC | 7C 08 02 A6 */	mflr r0
/* 813D9ED0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D9ED4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D9ED8 | 48 21 F5 F1 */	bl _savegpr_29
/* 813D9EDC | 7C 7E 1B 78 */	mr r30, r3
/* 813D9EE0 | 7C BD 2B 78 */	mr r29, r5
/* 813D9EE4 | 48 00 05 0D */	bl get_button_no__Q33ipl5scene14ParentalDialogCFPCc
/* 813D9EE8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D9EEC | 41 82 01 58 */	beq .L_813DA044
/* 813D9EF0 | 54 60 10 3A */	slwi r0, r3, 2
/* 813D9EF4 | 7F FE 02 14 */	add r31, r30, r0
/* 813D9EF8 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813D9EFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9F00 | 40 82 01 44 */	bne .L_813DA044
/* 813D9F04 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813D9F08 | 41 82 00 78 */	beq .L_813D9F80
/* 813D9F0C | 40 80 00 10 */	bge .L_813D9F1C
/* 813D9F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D9F14 | 40 80 00 14 */	bge .L_813D9F28
/* 813D9F18 | 48 00 01 20 */	b .L_813DA038
.L_813D9F1C:
/* 813D9F1C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813D9F20 | 40 80 01 18 */	bge .L_813DA038
/* 813D9F24 | 48 00 00 C0 */	b .L_813D9FE4
.L_813D9F28:
/* 813D9F28 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813D9F2C | 38 80 00 02 */	li r4, 0x2
/* 813D9F30 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9F34 | 48 13 83 E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9F38 | 7C 7E 1B 78 */	mr r30, r3
/* 813D9F3C | 4B F8 89 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D9F40 | 38 00 00 01 */	li r0, 0x1
/* 813D9F44 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D9F48 | 3C 80 81 65 */	lis r4, lbl_81653E8C@ha
/* 813D9F4C | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813D9F50 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D9F54 | 38 84 3E 8C */	addi r4, r4, lbl_81653E8C@l
/* 813D9F58 | 4B F9 15 15 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D9F5C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D9F60 | 41 82 00 D8 */	beq .L_813DA038
/* 813D9F64 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813D9F68 | 7F A3 EB 78 */	mr r3, r29
/* 813D9F6C | 38 80 00 00 */	li r4, 0x0
/* 813D9F70 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813D9F74 | 7D 89 03 A6 */	mtctr r12
/* 813D9F78 | 4E 80 04 21 */	bctrl
/* 813D9F7C | 48 00 00 BC */	b .L_813DA038
.L_813D9F80:
/* 813D9F80 | 88 1E 00 8A */	lbz r0, 0x8a(r30)
/* 813D9F84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9F88 | 41 82 00 B0 */	beq .L_813DA038
/* 813D9F8C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D9F90 | 3C 80 81 65 */	lis r4, lbl_81653E8C@ha
/* 813D9F94 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D9F98 | 38 84 3E 8C */	addi r4, r4, lbl_81653E8C@l
/* 813D9F9C | 4B F9 14 D1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D9FA0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D9FA4 | 41 82 00 1C */	beq .L_813D9FC0
/* 813D9FA8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813D9FAC | 7F A3 EB 78 */	mr r3, r29
/* 813D9FB0 | 38 80 00 00 */	li r4, 0x0
/* 813D9FB4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813D9FB8 | 7D 89 03 A6 */	mtctr r12
/* 813D9FBC | 4E 80 04 21 */	bctrl
.L_813D9FC0:
/* 813D9FC0 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813D9FC4 | 38 80 00 05 */	li r4, 0x5
/* 813D9FC8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D9FCC | 48 13 83 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D9FD0 | 7C 7E 1B 78 */	mr r30, r3
/* 813D9FD4 | 4B F8 88 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D9FD8 | 38 00 00 01 */	li r0, 0x1
/* 813D9FDC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813D9FE0 | 48 00 00 58 */	b .L_813DA038
.L_813D9FE4:
/* 813D9FE4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D9FE8 | 3C 80 81 65 */	lis r4, lbl_81653E8C@ha
/* 813D9FEC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D9FF0 | 38 84 3E 8C */	addi r4, r4, lbl_81653E8C@l
/* 813D9FF4 | 4B F9 14 79 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D9FF8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D9FFC | 41 82 00 1C */	beq .L_813DA018
/* 813DA000 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813DA004 | 7F A3 EB 78 */	mr r3, r29
/* 813DA008 | 38 80 00 00 */	li r4, 0x0
/* 813DA00C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813DA010 | 7D 89 03 A6 */	mtctr r12
/* 813DA014 | 4E 80 04 21 */	bctrl
.L_813DA018:
/* 813DA018 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813DA01C | 38 80 00 08 */	li r4, 0x8
/* 813DA020 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA024 | 48 13 82 F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA028 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA02C | 4B F8 88 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA030 | 38 00 00 01 */	li r0, 0x1
/* 813DA034 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813DA038:
/* 813DA038 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813DA03C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DA040 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813DA044:
/* 813DA044 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA048 | 48 21 F4 CD */	bl _restgpr_29
/* 813DA04C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DA050 | 7C 08 03 A6 */	mtlr r0
/* 813DA054 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DA058 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene14ParentalDialogFPCcPQ33ipl10controller9Interface

# .text:0xAA0 | 0x813DA05C | size: 0xF4
# ipl::scene::ParentalDialog::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene14ParentalDialogFPCc, global
/* 813DA05C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DA060 | 7C 08 02 A6 */	mflr r0
/* 813DA064 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DA068 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DA06C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DA070 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA074 | 48 00 03 7D */	bl get_button_no__Q33ipl5scene14ParentalDialogCFPCc
/* 813DA078 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813DA07C | 41 82 00 BC */	beq .L_813DA138
/* 813DA080 | 54 60 10 3A */	slwi r0, r3, 2
/* 813DA084 | 7F FE 02 14 */	add r31, r30, r0
/* 813DA088 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813DA08C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DA090 | 40 82 00 A8 */	bne .L_813DA138
/* 813DA094 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813DA098 | 41 82 00 44 */	beq .L_813DA0DC
/* 813DA09C | 40 80 00 10 */	bge .L_813DA0AC
/* 813DA0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA0A4 | 40 80 00 14 */	bge .L_813DA0B8
/* 813DA0A8 | 48 00 00 84 */	b .L_813DA12C
.L_813DA0AC:
/* 813DA0AC | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813DA0B0 | 40 80 00 7C */	bge .L_813DA12C
/* 813DA0B4 | 48 00 00 58 */	b .L_813DA10C
.L_813DA0B8:
/* 813DA0B8 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813DA0BC | 38 80 00 03 */	li r4, 0x3
/* 813DA0C0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA0C4 | 48 13 82 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA0C8 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA0CC | 4B F8 87 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA0D0 | 38 00 00 01 */	li r0, 0x1
/* 813DA0D4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813DA0D8 | 48 00 00 54 */	b .L_813DA12C
.L_813DA0DC:
/* 813DA0DC | 88 1E 00 8A */	lbz r0, 0x8a(r30)
/* 813DA0E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA0E4 | 41 82 00 48 */	beq .L_813DA12C
/* 813DA0E8 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813DA0EC | 38 80 00 06 */	li r4, 0x6
/* 813DA0F0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA0F4 | 48 13 82 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA0F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA0FC | 4B F8 87 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA100 | 38 00 00 01 */	li r0, 0x1
/* 813DA104 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813DA108 | 48 00 00 24 */	b .L_813DA12C
.L_813DA10C:
/* 813DA10C | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813DA110 | 38 80 00 09 */	li r4, 0x9
/* 813DA114 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA118 | 48 13 82 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA11C | 7C 7E 1B 78 */	mr r30, r3
/* 813DA120 | 4B F8 87 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA124 | 38 00 00 01 */	li r0, 0x1
/* 813DA128 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813DA12C:
/* 813DA12C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813DA130 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DA134 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813DA138:
/* 813DA138 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DA13C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DA140 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DA144 | 7C 08 03 A6 */	mtlr r0
/* 813DA148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DA14C | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene14ParentalDialogFPCc

# .text:0xB94 | 0x813DA150 | size: 0x280
# ipl::scene::ParentalDialog::start_trig_event(const char*, int)
.fn start_trig_event__Q33ipl5scene14ParentalDialogFPCci, global
/* 813DA150 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DA154 | 7C 08 02 A6 */	mflr r0
/* 813DA158 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DA15C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813DA160 | 48 21 F3 65 */	bl _savegpr_28
/* 813DA164 | 7C 7F 1B 78 */	mr r31, r3
/* 813DA168 | 7C BC 2B 78 */	mr r28, r5
/* 813DA16C | 48 00 02 85 */	bl get_button_no__Q33ipl5scene14ParentalDialogCFPCc
/* 813DA170 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813DA174 | 41 82 02 44 */	beq .L_813DA3B8
/* 813DA178 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813DA17C | 41 82 00 6C */	beq .L_813DA1E8
/* 813DA180 | 40 80 00 10 */	bge .L_813DA190
/* 813DA184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA188 | 40 80 00 14 */	bge .L_813DA19C
/* 813DA18C | 48 00 02 2C */	b .L_813DA3B8
.L_813DA190:
/* 813DA190 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813DA194 | 40 80 02 24 */	bge .L_813DA3B8
/* 813DA198 | 48 00 01 34 */	b .L_813DA2CC
.L_813DA19C:
/* 813DA19C | 7F E3 FB 78 */	mr r3, r31
/* 813DA1A0 | 48 00 02 C5 */	bl reset_gui__Q33ipl5scene14ParentalDialogFv
/* 813DA1A4 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813DA1A8 | 38 80 00 04 */	li r4, 0x4
/* 813DA1AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA1B0 | 48 13 81 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA1B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA1B8 | 4B F8 86 B9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA1BC | 3B A0 00 01 */	li r29, 0x1
/* 813DA1C0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813DA1C4 | 3C 80 81 65 */	lis r4, lbl_81653EA2@ha
/* 813DA1C8 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 813DA1CC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813DA1D0 | 38 84 3E A2 */	addi r4, r4, lbl_81653EA2@l
/* 813DA1D4 | 4B F9 12 99 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813DA1D8 | 38 00 00 03 */	li r0, 0x3
/* 813DA1DC | 93 BF 00 58 */	stw r29, 0x58(r31)
/* 813DA1E0 | 90 1F 00 70 */	stw r0, 0x70(r31)
/* 813DA1E4 | 48 00 01 D4 */	b .L_813DA3B8
.L_813DA1E8:
/* 813DA1E8 | 88 1F 00 8A */	lbz r0, 0x8a(r31)
/* 813DA1EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA1F0 | 41 82 01 C8 */	beq .L_813DA3B8
/* 813DA1F4 | 7F E3 FB 78 */	mr r3, r31
/* 813DA1F8 | 48 00 02 6D */	bl reset_gui__Q33ipl5scene14ParentalDialogFv
/* 813DA1FC | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813DA200 | 38 80 00 07 */	li r4, 0x7
/* 813DA204 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA208 | 48 13 81 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA20C | 7C 7E 1B 78 */	mr r30, r3
/* 813DA210 | 4B F8 86 61 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA214 | 3B A0 00 01 */	li r29, 0x1
/* 813DA218 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813DA21C | 3C 80 81 65 */	lis r4, lbl_81653EB1@ha
/* 813DA220 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 813DA224 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813DA228 | 38 84 3E B1 */	addi r4, r4, lbl_81653EB1@l
/* 813DA22C | 4B F9 12 41 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813DA230 | 7F E3 FB 78 */	mr r3, r31
/* 813DA234 | 48 00 02 8D */	bl check__Q33ipl5scene14ParentalDialogCFv
/* 813DA238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA23C | 41 82 00 3C */	beq .L_813DA278
/* 813DA240 | 80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 813DA244 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DA248 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DA24C | 38 A0 00 B4 */	li r5, 0xb4
/* 813DA250 | 30 00 FF FF */	subic r0, r0, 0x1
/* 813DA254 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813DA258 | 7C 80 01 10 */	subfe r4, r0, r0
/* 813DA25C | 38 C0 00 00 */	li r6, 0x0
/* 813DA260 | 38 84 01 4A */	addi r4, r4, 0x14a
/* 813DA264 | 4B F6 C1 E9 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813DA268 | 38 00 00 03 */	li r0, 0x3
/* 813DA26C | 93 BF 00 70 */	stw r29, 0x70(r31)
/* 813DA270 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813DA274 | 48 00 01 44 */	b .L_813DA3B8
.L_813DA278:
/* 813DA278 | 80 BF 00 8C */	lwz r5, 0x8c(r31)
/* 813DA27C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DA280 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DA284 | 38 80 01 4B */	li r4, 0x14b
/* 813DA288 | 38 05 00 01 */	addi r0, r5, 0x1
/* 813DA28C | 38 A0 00 2E */	li r5, 0x2e
/* 813DA290 | 90 1F 00 8C */	stw r0, 0x8c(r31)
/* 813DA294 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813DA298 | 4B F6 C4 61 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813DA29C | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813DA2A0 | 38 80 00 0D */	li r4, 0xd
/* 813DA2A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA2A8 | 48 13 80 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA2AC | 7C 7E 1B 78 */	mr r30, r3
/* 813DA2B0 | 4B F8 85 C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA2B4 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 813DA2B8 | 38 60 00 00 */	li r3, 0x0
/* 813DA2BC | 38 00 00 03 */	li r0, 0x3
/* 813DA2C0 | 98 7F 00 8A */	stb r3, 0x8a(r31)
/* 813DA2C4 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813DA2C8 | 48 00 00 F0 */	b .L_813DA3B8
.L_813DA2CC:
/* 813DA2CC | 7F E3 FB 78 */	mr r3, r31
/* 813DA2D0 | 48 00 01 95 */	bl reset_gui__Q33ipl5scene14ParentalDialogFv
/* 813DA2D4 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813DA2D8 | 38 80 00 0A */	li r4, 0xa
/* 813DA2DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DA2E0 | 48 13 80 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DA2E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA2E8 | 4B F8 85 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DA2EC | 3B A0 00 01 */	li r29, 0x1
/* 813DA2F0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813DA2F4 | 3C 80 81 65 */	lis r4, lbl_81653EB1@ha
/* 813DA2F8 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 813DA2FC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813DA300 | 38 84 3E B1 */	addi r4, r4, lbl_81653EB1@l
/* 813DA304 | 4B F9 11 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813DA308 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813DA30C | 38 00 00 00 */	li r0, 0x0
/* 813DA310 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813DA314 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 813DA318 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813DA31C | B0 01 00 0A */	sth r0, 0xa(r1)
/* 813DA320 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA324 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DA328 | 7D 89 03 A6 */	mtctr r12
/* 813DA32C | 4E 80 04 21 */	bctrl
/* 813DA330 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DA334 | 38 60 00 03 */	li r3, 0x3
/* 813DA338 | 38 00 00 04 */	li r0, 0x4
/* 813DA33C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813DA340 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813DA344 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813DA348 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813DA34C | 7F 84 E3 78 */	mr r4, r28
/* 813DA350 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DA354 | 93 A1 00 18 */	stw r29, 0x18(r1)
/* 813DA358 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA35C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813DA360 | 7D 89 03 A6 */	mtctr r12
/* 813DA364 | 4E 80 04 21 */	bctrl
/* 813DA368 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813DA36C | 38 80 00 01 */	li r4, 0x1
/* 813DA370 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813DA374 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA378 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813DA37C | 7D 89 03 A6 */	mtctr r12
/* 813DA380 | 4E 80 04 21 */	bctrl
/* 813DA384 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813DA388 | 38 80 01 59 */	li r4, 0x159
/* 813DA38C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813DA390 | 4B F6 44 2D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813DA394 | 80 BE 00 90 */	lwz r5, 0x90(r30)
/* 813DA398 | 7C 64 1B 78 */	mr r4, r3
/* 813DA39C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813DA3A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA3A4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813DA3A8 | 7D 89 03 A6 */	mtctr r12
/* 813DA3AC | 4E 80 04 21 */	bctrl
/* 813DA3B0 | 38 00 00 02 */	li r0, 0x2
/* 813DA3B4 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813DA3B8:
/* 813DA3B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813DA3BC | 48 21 F1 55 */	bl _restgpr_28
/* 813DA3C0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DA3C4 | 7C 08 03 A6 */	mtlr r0
/* 813DA3C8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DA3CC | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene14ParentalDialogFPCci

# .text:0xE14 | 0x813DA3D0 | size: 0x18
# textinput::Manager::setSecretInputMode(bool)
.fn setSecretInputMode__Q29textinput7ManagerFb, global
/* 813DA3D0 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 813DA3D4 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813DA3D8 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 813DA3DC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DA3E0 | 7D 89 03 A6 */	mtctr r12
/* 813DA3E4 | 4E 80 04 20 */	bctr
.endfn setSecretInputMode__Q29textinput7ManagerFb

# .text:0xE2C | 0x813DA3E8 | size: 0x8
# textinput::textdrawer::Base::setSecretModeOn(bool)
.fn setSecretModeOn__Q39textinput10textdrawer4BaseFb, global
/* 813DA3E8 | 98 83 00 C8 */	stb r4, 0xc8(r3)
/* 813DA3EC | 4E 80 00 20 */	blr
.endfn setSecretModeOn__Q39textinput10textdrawer4BaseFb

# .text:0xE34 | 0x813DA3F0 | size: 0x74
# ipl::scene::ParentalDialog::get_button_no(const char*) const
.fn get_button_no__Q33ipl5scene14ParentalDialogCFPCc, global
/* 813DA3F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DA3F4 | 7C 08 02 A6 */	mflr r0
/* 813DA3F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DA3FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA400 | 48 21 F0 C1 */	bl _savegpr_27
/* 813DA404 | 3F C0 81 65 */	lis r30, lbl_81653CE8@ha
/* 813DA408 | 7C 9B 23 78 */	mr r27, r4
/* 813DA40C | 3B DE 3C E8 */	addi r30, r30, lbl_81653CE8@l
/* 813DA410 | 3B A0 FF FF */	li r29, -0x1
/* 813DA414 | 3B 80 00 00 */	li r28, 0x0
/* 813DA418 | 3B E0 00 00 */	li r31, 0x0
.L_813DA41C:
/* 813DA41C | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813DA420 | 7F 64 DB 78 */	mr r4, r27
/* 813DA424 | 48 22 80 5D */	bl strcmp
/* 813DA428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA42C | 40 82 00 0C */	bne .L_813DA438
/* 813DA430 | 7F 9D E3 78 */	mr r29, r28
/* 813DA434 | 48 00 00 14 */	b .L_813DA448
.L_813DA438:
/* 813DA438 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813DA43C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813DA440 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813DA444 | 41 80 FF D8 */	blt .L_813DA41C
.L_813DA448:
/* 813DA448 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA44C | 7F A3 EB 78 */	mr r3, r29
/* 813DA450 | 48 21 F0 BD */	bl _restgpr_27
/* 813DA454 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DA458 | 7C 08 03 A6 */	mtlr r0
/* 813DA45C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DA460 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene14ParentalDialogCFPCc

# .text:0xEA8 | 0x813DA464 | size: 0x5C
# ipl::scene::ParentalDialog::reset_gui()
.fn reset_gui__Q33ipl5scene14ParentalDialogFv, global
/* 813DA464 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DA468 | 7C 08 02 A6 */	mflr r0
/* 813DA46C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DA470 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DA474 | 7C 7F 1B 78 */	mr r31, r3
/* 813DA478 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813DA47C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA480 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DA484 | 7D 89 03 A6 */	mtctr r12
/* 813DA488 | 4E 80 04 21 */	bctrl
/* 813DA48C | 38 00 00 03 */	li r0, 0x3
/* 813DA490 | 38 A0 00 00 */	li r5, 0x0
/* 813DA494 | 38 60 00 00 */	li r3, 0x0
/* 813DA498 | 7C 09 03 A6 */	mtctr r0
.L_813DA49C:
/* 813DA49C | 7C 9F 1A 14 */	add r4, r31, r3
/* 813DA4A0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813DA4A4 | 90 A4 00 74 */	stw r5, 0x74(r4)
/* 813DA4A8 | 42 00 FF F4 */	bdnz .L_813DA49C
/* 813DA4AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DA4B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DA4B4 | 7C 08 03 A6 */	mtlr r0
/* 813DA4B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DA4BC | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene14ParentalDialogFv

# .text:0xF04 | 0x813DA4C0 | size: 0x88
# ipl::scene::ParentalDialog::check() const
.fn check__Q33ipl5scene14ParentalDialogCFv, global
/* 813DA4C0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813DA4C4 | 7C 08 02 A6 */	mflr r0
/* 813DA4C8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813DA4CC | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813DA4D0 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 813DA4D4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA4D8 | 38 61 00 0E */	addi r3, r1, 0xe
/* 813DA4DC | 48 18 FC 9D */	bl fn_8156A178
/* 813DA4E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813DA4E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813DA4E8 | 38 80 00 00 */	li r4, 0x0
/* 813DA4EC | 38 A0 00 05 */	li r5, 0x5
/* 813DA4F0 | 4B F5 5E 45 */	bl memset
/* 813DA4F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813DA4F8 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 813DA4FC | 38 A0 00 04 */	li r5, 0x4
/* 813DA500 | 4B F8 9B 2D */	bl UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl
/* 813DA504 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DA508 | 3B E0 00 00 */	li r31, 0x0
/* 813DA50C | 41 82 00 20 */	beq .L_813DA52C
/* 813DA510 | 38 61 00 11 */	addi r3, r1, 0x11
/* 813DA514 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DA518 | 38 A0 00 04 */	li r5, 0x4
/* 813DA51C | 48 22 80 81 */	bl strncmp
/* 813DA520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA524 | 40 82 00 08 */	bne .L_813DA52C
/* 813DA528 | 3B E0 00 01 */	li r31, 0x1
.L_813DA52C:
/* 813DA52C | 7F E3 FB 78 */	mr r3, r31
/* 813DA530 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813DA534 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 813DA538 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813DA53C | 7C 08 03 A6 */	mtlr r0
/* 813DA540 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813DA544 | 4E 80 00 20 */	blr
.endfn check__Q33ipl5scene14ParentalDialogCFv

# .text:0xF8C | 0x813DA548 | size: 0xCC
# ipl::scene::ParentalDialog::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene14ParentalDialogFPCcUl, global
/* 813DA548 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DA54C | 7C 08 02 A6 */	mflr r0
/* 813DA550 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DA554 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA558 | 48 21 EF 71 */	bl _savegpr_29
/* 813DA55C | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813DA560 | 7C BD 2B 78 */	mr r29, r5
/* 813DA564 | 38 A0 00 01 */	li r5, 0x1
/* 813DA568 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DA56C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA570 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DA574 | 7D 89 03 A6 */	mtctr r12
/* 813DA578 | 4E 80 04 21 */	bctrl
/* 813DA57C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA580 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA584 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 813DA588 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DA58C | 7D 89 03 A6 */	mtctr r12
/* 813DA590 | 4E 80 04 21 */	bctrl
/* 813DA594 | 48 00 00 18 */	b .L_813DA5AC
.L_813DA598:
/* 813DA598 | 7C 03 F8 40 */	cmplw r3, r31
/* 813DA59C | 40 82 00 0C */	bne .L_813DA5A8
/* 813DA5A0 | 38 00 00 01 */	li r0, 0x1
/* 813DA5A4 | 48 00 00 14 */	b .L_813DA5B8
.L_813DA5A8:
/* 813DA5A8 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813DA5AC:
/* 813DA5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA5B0 | 40 82 FF E8 */	bne .L_813DA598
/* 813DA5B4 | 38 00 00 00 */	li r0, 0x0
.L_813DA5B8:
/* 813DA5B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA5BC | 41 82 00 08 */	beq .L_813DA5C4
/* 813DA5C0 | 48 00 00 08 */	b .L_813DA5C8
.L_813DA5C4:
/* 813DA5C4 | 3B C0 00 00 */	li r30, 0x0
.L_813DA5C8:
/* 813DA5C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DA5CC | 7F A4 EB 78 */	mr r4, r29
/* 813DA5D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DA5D4 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813DA5D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813DA5DC | 4B F6 41 E1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813DA5E0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813DA5E4 | 7C 64 1B 78 */	mr r4, r3
/* 813DA5E8 | 7F C3 F3 78 */	mr r3, r30
/* 813DA5EC | 38 A0 00 00 */	li r5, 0x0
/* 813DA5F0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813DA5F4 | 7D 89 03 A6 */	mtctr r12
/* 813DA5F8 | 4E 80 04 21 */	bctrl
/* 813DA5FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA600 | 48 21 EF 15 */	bl _restgpr_29
/* 813DA604 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DA608 | 7C 08 03 A6 */	mtlr r0
/* 813DA60C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DA610 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene14ParentalDialogFPCcUl

# .text:0x1058 | 0x813DA614 | size: 0x100
# ipl::scene::ParentalDialogEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene19ParentalDialogEventFUlUlPv, global
/* 813DA614 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DA618 | 7C 08 02 A6 */	mflr r0
/* 813DA61C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DA620 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA624 | 48 21 EE A1 */	bl _savegpr_28
/* 813DA628 | 7C 7C 1B 78 */	mr r28, r3
/* 813DA62C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813DA630 | 7C BD 2B 78 */	mr r29, r5
/* 813DA634 | 7C DE 33 78 */	mr r30, r6
/* 813DA638 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA63C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813DA640 | 7D 89 03 A6 */	mtctr r12
/* 813DA644 | 4E 80 04 21 */	bctrl
/* 813DA648 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA64C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813DA650 | 7D 89 03 A6 */	mtctr r12
/* 813DA654 | 4E 80 04 21 */	bctrl
/* 813DA658 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813DA65C | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813DA660 | 41 82 00 20 */	beq .L_813DA680
/* 813DA664 | 40 80 00 10 */	bge .L_813DA674
/* 813DA668 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813DA66C | 40 80 00 38 */	bge .L_813DA6A4
/* 813DA670 | 48 00 00 8C */	b .L_813DA6FC
.L_813DA674:
/* 813DA674 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813DA678 | 40 80 00 84 */	bge .L_813DA6FC
/* 813DA67C | 48 00 00 18 */	b .L_813DA694
.L_813DA680:
/* 813DA680 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813DA684 | 7F E4 FB 78 */	mr r4, r31
/* 813DA688 | 7F C5 F3 78 */	mr r5, r30
/* 813DA68C | 4B FF F8 3D */	bl start_point_event__Q33ipl5scene14ParentalDialogFPCcPQ33ipl10controller9Interface
/* 813DA690 | 48 00 00 6C */	b .L_813DA6FC
.L_813DA694:
/* 813DA694 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813DA698 | 7F E4 FB 78 */	mr r4, r31
/* 813DA69C | 4B FF F9 C1 */	bl start_left_event__Q33ipl5scene14ParentalDialogFPCc
/* 813DA6A0 | 48 00 00 5C */	b .L_813DA6FC
.L_813DA6A4:
/* 813DA6A4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813DA6A8 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813DA6AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA6B0 | 40 82 00 4C */	bne .L_813DA6FC
/* 813DA6B4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813DA6B8 | 3C 80 00 10 */	lis r4, 0x10
/* 813DA6BC | 7F C3 F3 78 */	mr r3, r30
/* 813DA6C0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813DA6C4 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813DA6C8 | 7D 89 03 A6 */	mtctr r12
/* 813DA6CC | 4E 80 04 21 */	bctrl
/* 813DA6D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA6D4 | 41 82 00 28 */	beq .L_813DA6FC
/* 813DA6D8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813DA6DC | 7F C3 F3 78 */	mr r3, r30
/* 813DA6E0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813DA6E4 | 7D 89 03 A6 */	mtctr r12
/* 813DA6E8 | 4E 80 04 21 */	bctrl
/* 813DA6EC | 7C 65 1B 78 */	mr r5, r3
/* 813DA6F0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813DA6F4 | 7F E4 FB 78 */	mr r4, r31
/* 813DA6F8 | 4B FF FA 59 */	bl start_trig_event__Q33ipl5scene14ParentalDialogFPCci
.L_813DA6FC:
/* 813DA6FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA700 | 48 21 EE 11 */	bl _restgpr_28
/* 813DA704 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DA708 | 7C 08 03 A6 */	mtlr r0
/* 813DA70C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DA710 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene19ParentalDialogEventFUlUlPv

# .text:0x1158 | 0x813DA714 | size: 0x5C
# ipl::scene::ParentalDialog::~ParentalDialog()
.fn __dt__Q33ipl5scene14ParentalDialogFv, global
/* 813DA714 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DA718 | 7C 08 02 A6 */	mflr r0
/* 813DA71C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA720 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DA724 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DA728 | 7C 9F 23 78 */	mr r31, r4
/* 813DA72C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DA730 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA734 | 41 82 00 20 */	beq .L_813DA754
/* 813DA738 | 41 82 00 0C */	beq .L_813DA744
/* 813DA73C | 38 80 00 00 */	li r4, 0x0
/* 813DA740 | 48 02 F5 25 */	bl __dt__Q33ipl5scene4BaseFv
.L_813DA744:
/* 813DA744 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DA748 | 40 81 00 0C */	ble .L_813DA754
/* 813DA74C | 7F C3 F3 78 */	mr r3, r30
/* 813DA750 | 48 21 D9 95 */	bl __dl__FPv
.L_813DA754:
/* 813DA754 | 7F C3 F3 78 */	mr r3, r30
/* 813DA758 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DA75C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DA760 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DA764 | 7C 08 03 A6 */	mtlr r0
/* 813DA768 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DA76C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene14ParentalDialogFv

# .text:0x11B4 | 0x813DA770 | size: 0x8
.fn "@20@__dt__Q33ipl5scene14ParentalDialogFv", global
/* 813DA770 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813DA774 | 4B FF FF A0 */	b __dt__Q33ipl5scene14ParentalDialogFv
.endfn "@20@__dt__Q33ipl5scene14ParentalDialogFv"

# 0x81653CE8..0x81653FD8 | size: 0x2F0
.data
.balign 8

# .data:0x0 | 0x81653CE8 | size: 0xC
.obj lbl_81653CE8, global
	.4byte lbl_81696D48
	.4byte lbl_81696D4F
	.4byte lbl_81696D56
.endobj lbl_81653CE8

# .data:0xC | 0x81653CF4 | size: 0x198
.obj lbl_81653CF4, global
	.4byte 0x70726E74
	.4byte 0x446C672E
	.4byte 0x61736800
	.4byte 0x6D795F50
	.4byte 0x6172656E
	.4byte 0x74616C57
	.4byte 0x696E646F
	.4byte 0x775F612E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F506172
	.4byte 0x656E7461
	.4byte 0x6C57696E
	.4byte 0x646F775F
	.4byte 0x615F4469
	.4byte 0x616C6F67
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x50617265
	.4byte 0x6E74616C
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x5F446961
	.4byte 0x6C6F674F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x50617265
	.4byte 0x6E74616C
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x5F466F63
	.4byte 0x75734274
	.4byte 0x6E5F6F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F466F63
	.4byte 0x75734274
	.4byte 0x6E41006D
	.4byte 0x795F5061
	.4byte 0x72656E74
	.4byte 0x616C5769
	.4byte 0x6E646F77
	.4byte 0x5F615F46
	.4byte 0x6F637573
	.4byte 0x42746E5F
	.4byte 0x6F66662E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F506172
	.4byte 0x656E7461
	.4byte 0x6C57696E
	.4byte 0x646F775F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x42746E5F
	.4byte 0x41632E62
	.4byte 0x726C616E
	.4byte 0x00475F46
	.4byte 0x6F637573
	.4byte 0x42746E42
	.4byte 0x00475F46
	.4byte 0x6F637573
	.4byte 0x42746E43
	.4byte 0x006D795F
	.4byte 0x50617265
	.4byte 0x6E74616C
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x5F426566
	.4byte 0x6F726541
	.4byte 0x66746572
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F427266
	.4byte 0x6F726541
	.4byte 0x66746572
	.4byte 0x006D795F
	.4byte 0x50617265
	.4byte 0x6E74616C
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x5F4F6666
	.4byte 0x42746E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x4F6E4F66
	.4byte 0x6642746E
	.4byte 0x42006D79
	.4byte 0x5F506172
	.4byte 0x656E7461
	.4byte 0x6C57696E
	.4byte 0x646F775F
	.4byte 0x615F4F6E
	.4byte 0x42746E2E
	.4byte 0x62726C61
	.4byte 0x6E00545F
	.4byte 0x4469616C
	.4byte 0x6F670054
	.4byte 0x5F426566
	.4byte 0x6F726500
.endobj lbl_81653CF4

# .data:0x1A4 | 0x81653E8C | size: 0x16
.obj lbl_81653E8C, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_81653E8C

# .data:0x1BA | 0x81653EA2 | size: 0xF
.obj lbl_81653EA2, global
	.string "WIPL_SE_CANCEL"
.endobj lbl_81653EA2

# .data:0x1C9 | 0x81653EB1 | size: 0xF
.obj lbl_81653EB1, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_81653EB1

# .data:0x1D8 | 0x81653EC0 | size: 0x18
# ipl::scene::ParentalDialogEvent::__vtable
.obj __vt__Q33ipl5scene19ParentalDialogEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene19ParentalDialogEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene19ParentalDialogEvent

# .data:0x1F0 | 0x81653ED8 | size: 0x100
# ipl::scene::ParentalDialog::__vtable
.obj __vt__Q33ipl5scene14ParentalDialog, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene14ParentalDialogFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene14ParentalDialogFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene14ParentalDialogFv
	.4byte create__Q33ipl5scene14ParentalDialogFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene14ParentalDialogFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14ParentalDialogFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene14ParentalDialogFv
	.4byte calcNormal__Q33ipl5scene14ParentalDialogFv
	.4byte calcFadeout__Q33ipl5scene14ParentalDialogFv
	.4byte calcCommonAfter__Q33ipl5scene14ParentalDialogFv
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
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene14ParentalDialog

# 0x81696D48..0x81696D80 | size: 0x38
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D48 | size: 0x7
.obj lbl_81696D48, global
	.string "B_BtnA"
.endobj lbl_81696D48

# .sdata:0x7 | 0x81696D4F | size: 0x7
.obj lbl_81696D4F, global
	.string "B_BtnB"
.endobj lbl_81696D4F

# .sdata:0xE | 0x81696D56 | size: 0x7
.obj lbl_81696D56, global
	.string "B_BtnC"
.endobj lbl_81696D56

# .sdata:0x15 | 0x81696D5D | size: 0x4
.obj lbl_81696D5D, global
	.string "arc"
.endobj lbl_81696D5D

# .sdata:0x19 | 0x81696D61 | size: 0x8
.obj lbl_81696D61, global
	.string "G_InOut"
.endobj lbl_81696D61

# .sdata:0x21 | 0x81696D69 | size: 0x7
.obj lbl_81696D69, global
	.string "T_BtnA"
.endobj lbl_81696D69

# .sdata:0x28 | 0x81696D70 | size: 0x8
.obj lbl_81696D70, global
	.4byte 0x545F4274
	.4byte 0x6E420000
.endobj lbl_81696D70

# .sdata:0x30 | 0x81696D78 | size: 0x8
.obj lbl_81696D78, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81696D78
