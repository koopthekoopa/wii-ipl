.include "macros.inc"
.file "iplSDUnk813EB5EC.cpp"

# 0x813EB5EC..0x813F0774 | size: 0x5188
.text
.balign 4

# .text:0x0 | 0x813EB5EC | size: 0x48
.fn iplUnk2_813EB5EC, global
/* 813EB5EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EB5F0 | 7C 08 02 A6 */	mflr r0
/* 813EB5F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EB5F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EB5FC | 3B E3 29 FC */	addi r31, r3, 0x29fc
/* 813EB600 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EB604 | 7C 7E 1B 78 */	mr r30, r3
/* 813EB608 | 7F E3 FB 78 */	mr r3, r31
/* 813EB60C | 4B F7 85 75 */	bl __ct__Q33ipl7utility8ScrollerFv
/* 813EB610 | 38 7F 00 50 */	addi r3, r31, 0x50
/* 813EB614 | 4B F7 7F 7D */	bl __ct__Q33ipl7utility9BScrollerFv
/* 813EB618 | 7F C3 F3 78 */	mr r3, r30
/* 813EB61C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EB620 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EB624 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EB628 | 7C 08 03 A6 */	mtlr r0
/* 813EB62C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EB630 | 4E 80 00 20 */	blr
.endfn iplUnk2_813EB5EC

# .text:0x48 | 0x813EB634 | size: 0x5C
.fn ipl_813EB634, global
/* 813EB634 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EB638 | 7C 08 02 A6 */	mflr r0
/* 813EB63C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB640 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EB644 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EB648 | 7C 9F 23 78 */	mr r31, r4
/* 813EB64C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EB650 | 7C 7E 1B 78 */	mr r30, r3
/* 813EB654 | 41 82 00 20 */	beq .L_813EB674
/* 813EB658 | 38 80 FF FF */	li r4, -0x1
/* 813EB65C | 38 63 29 FC */	addi r3, r3, 0x29fc
/* 813EB660 | 4B FA B8 CD */	bl __dt__Q33ipl5scene8scrollerFv
/* 813EB664 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813EB668 | 40 81 00 0C */	ble .L_813EB674
/* 813EB66C | 7F C3 F3 78 */	mr r3, r30
/* 813EB670 | 48 20 CA 75 */	bl __dl__FPv
.L_813EB674:
/* 813EB674 | 7F C3 F3 78 */	mr r3, r30
/* 813EB678 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EB67C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EB680 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EB684 | 7C 08 03 A6 */	mtlr r0
/* 813EB688 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EB68C | 4E 80 00 20 */	blr
.endfn ipl_813EB634

# .text:0xA4 | 0x813EB690 | size: 0x10A0
.fn ipl_813EB690, global
/* 813EB690 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EB694 | 7C 08 02 A6 */	mflr r0
/* 813EB698 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EB69C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB6A0 | 48 20 DE 1D */	bl _savegpr_26
/* 813EB6A4 | 3F E0 81 65 */	lis r31, lbl_81655CA0@ha
/* 813EB6A8 | 90 C3 00 60 */	stw r6, 0x60(r3)
/* 813EB6AC | 7C 7B 1B 78 */	mr r27, r3
/* 813EB6B0 | 7C 9C 23 78 */	mr r28, r4
/* 813EB6B4 | 7C BD 2B 78 */	mr r29, r5
/* 813EB6B8 | 3B FF 5C A0 */	addi r31, r31, lbl_81655CA0@l
/* 813EB6BC | 38 60 05 80 */	li r3, 0x580
/* 813EB6C0 | 48 20 C9 DD */	bl __nw__FUl
/* 813EB6C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB6C8 | 41 82 00 18 */	beq .L_813EB6E0
/* 813EB6CC | 7F 84 E3 78 */	mr r4, r28
/* 813EB6D0 | 7F A5 EB 78 */	mr r5, r29
/* 813EB6D4 | 38 FF 00 58 */	addi r7, r31, 0x58
/* 813EB6D8 | 38 CD 8F 3C */	li r6, lbl_81696F7C@sda21
/* 813EB6DC | 4B F7 E9 49 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813EB6E0:
/* 813EB6E0 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813EB6E4 | 38 9F 00 79 */	addi r4, r31, 0x79
/* 813EB6E8 | 38 AD 8F 40 */	li r5, lbl_81696F80@sda21
/* 813EB6EC | 38 C0 00 00 */	li r6, 0x0
/* 813EB6F0 | 38 E0 00 01 */	li r7, 0x1
/* 813EB6F4 | 4B F7 ED ED */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB6F8 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB6FC | 38 9F 00 A3 */	addi r4, r31, 0xa3
/* 813EB700 | 38 AD 8F 40 */	li r5, lbl_81696F80@sda21
/* 813EB704 | 38 C0 00 00 */	li r6, 0x0
/* 813EB708 | 38 E0 00 01 */	li r7, 0x1
/* 813EB70C | 4B F7 ED D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB710 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB714 | 38 9F 00 CE */	addi r4, r31, 0xce
/* 813EB718 | 38 BF 00 FB */	addi r5, r31, 0xfb
/* 813EB71C | 38 C0 00 00 */	li r6, 0x0
/* 813EB720 | 38 E0 00 01 */	li r7, 0x1
/* 813EB724 | 4B F7 ED BD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB728 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB72C | 38 9F 01 07 */	addi r4, r31, 0x107
/* 813EB730 | 38 BF 00 FB */	addi r5, r31, 0xfb
/* 813EB734 | 38 C0 00 00 */	li r6, 0x0
/* 813EB738 | 38 E0 00 01 */	li r7, 0x1
/* 813EB73C | 4B F7 ED A5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB740 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB744 | 38 9F 01 35 */	addi r4, r31, 0x135
/* 813EB748 | 38 BF 01 63 */	addi r5, r31, 0x163
/* 813EB74C | 38 C0 00 00 */	li r6, 0x0
/* 813EB750 | 38 E0 00 01 */	li r7, 0x1
/* 813EB754 | 4B F7 ED 8D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB758 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB75C | 38 9F 01 70 */	addi r4, r31, 0x170
/* 813EB760 | 38 AD 8F 48 */	li r5, lbl_81696F88@sda21
/* 813EB764 | 38 C0 00 00 */	li r6, 0x0
/* 813EB768 | 38 E0 00 01 */	li r7, 0x1
/* 813EB76C | 4B F7 ED 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB770 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB774 | 38 9F 01 9F */	addi r4, r31, 0x19f
/* 813EB778 | 38 AD 8F 48 */	li r5, lbl_81696F88@sda21
/* 813EB77C | 38 C0 00 00 */	li r6, 0x0
/* 813EB780 | 38 E0 00 01 */	li r7, 0x1
/* 813EB784 | 4B F7 ED 5D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB788 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB78C | 38 9F 01 CD */	addi r4, r31, 0x1cd
/* 813EB790 | 38 AD 8F 48 */	li r5, lbl_81696F88@sda21
/* 813EB794 | 38 C0 00 00 */	li r6, 0x0
/* 813EB798 | 38 E0 00 01 */	li r7, 0x1
/* 813EB79C | 4B F7 ED 45 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB7A0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB7A4 | 38 9F 01 F6 */	addi r4, r31, 0x1f6
/* 813EB7A8 | 38 AD 8F 4F */	li r5, lbl_81696F8F@sda21
/* 813EB7AC | 38 C0 00 00 */	li r6, 0x0
/* 813EB7B0 | 38 E0 00 01 */	li r7, 0x1
/* 813EB7B4 | 4B F7 ED 2D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB7B8 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB7BC | 38 9F 02 25 */	addi r4, r31, 0x225
/* 813EB7C0 | 38 AD 8F 4F */	li r5, lbl_81696F8F@sda21
/* 813EB7C4 | 38 C0 00 00 */	li r6, 0x0
/* 813EB7C8 | 38 E0 00 01 */	li r7, 0x1
/* 813EB7CC | 4B F7 ED 15 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB7D0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB7D4 | 38 9F 02 53 */	addi r4, r31, 0x253
/* 813EB7D8 | 38 AD 8F 4F */	li r5, lbl_81696F8F@sda21
/* 813EB7DC | 38 C0 00 00 */	li r6, 0x0
/* 813EB7E0 | 38 E0 00 01 */	li r7, 0x1
/* 813EB7E4 | 4B F7 EC FD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB7E8 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB7EC | 4B F7 EE 49 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813EB7F0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB7F4 | 38 80 00 00 */	li r4, 0x0
/* 813EB7F8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB7FC | 48 12 6B 1D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB800 | 4B F7 E4 25 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EB804 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB808 | 38 80 00 02 */	li r4, 0x2
/* 813EB80C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB810 | 48 12 6B 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB814 | 4B F7 E4 11 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EB818 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB81C | 38 80 00 05 */	li r4, 0x5
/* 813EB820 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB824 | 48 12 6A F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB828 | 4B F7 E3 FD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EB82C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB830 | 38 80 00 08 */	li r4, 0x8
/* 813EB834 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB838 | 48 12 6A E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB83C | 4B F7 E3 E9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EB840 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB844 | 38 9F 02 7C */	addi r4, r31, 0x27c
/* 813EB848 | 38 A0 00 01 */	li r5, 0x1
/* 813EB84C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB850 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB854 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB858 | 7D 89 03 A6 */	mtctr r12
/* 813EB85C | 4E 80 04 21 */	bctrl
/* 813EB860 | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813EB864 | 7C 7E 1B 78 */	mr r30, r3
/* 813EB868 | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 813EB86C | 38 80 00 B0 */	li r4, 0xb0
/* 813EB870 | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 813EB874 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB878 | 4B F5 2F 45 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EB87C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EB880 | 7C 64 1B 78 */	mr r4, r3
/* 813EB884 | 7F C3 F3 78 */	mr r3, r30
/* 813EB888 | 38 A0 00 00 */	li r5, 0x0
/* 813EB88C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EB890 | 7D 89 03 A6 */	mtctr r12
/* 813EB894 | 4E 80 04 21 */	bctrl
/* 813EB898 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB89C | 38 9F 02 88 */	addi r4, r31, 0x288
/* 813EB8A0 | 38 A0 00 01 */	li r5, 0x1
/* 813EB8A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB8A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB8AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB8B0 | 7D 89 03 A6 */	mtctr r12
/* 813EB8B4 | 4E 80 04 21 */	bctrl
/* 813EB8B8 | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EB8BC | 7C 7E 1B 78 */	mr r30, r3
/* 813EB8C0 | 38 80 00 BB */	li r4, 0xbb
/* 813EB8C4 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EB8C8 | 4B F5 2E F5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EB8CC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EB8D0 | 7C 64 1B 78 */	mr r4, r3
/* 813EB8D4 | 7F C3 F3 78 */	mr r3, r30
/* 813EB8D8 | 38 A0 00 00 */	li r5, 0x0
/* 813EB8DC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EB8E0 | 7D 89 03 A6 */	mtctr r12
/* 813EB8E4 | 4E 80 04 21 */	bctrl
/* 813EB8E8 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB8EC | 38 9F 02 93 */	addi r4, r31, 0x293
/* 813EB8F0 | 38 A0 00 01 */	li r5, 0x1
/* 813EB8F4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB8F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB8FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB900 | 7D 89 03 A6 */	mtctr r12
/* 813EB904 | 4E 80 04 21 */	bctrl
/* 813EB908 | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EB90C | 7C 7E 1B 78 */	mr r30, r3
/* 813EB910 | 38 80 00 BC */	li r4, 0xbc
/* 813EB914 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EB918 | 4B F5 2E A5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EB91C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EB920 | 7C 64 1B 78 */	mr r4, r3
/* 813EB924 | 7F C3 F3 78 */	mr r3, r30
/* 813EB928 | 38 A0 00 00 */	li r5, 0x0
/* 813EB92C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EB930 | 7D 89 03 A6 */	mtctr r12
/* 813EB934 | 4E 80 04 21 */	bctrl
/* 813EB938 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EB93C | 38 8D 8F 56 */	li r4, lbl_81696F96@sda21
/* 813EB940 | 38 A0 00 01 */	li r5, 0x1
/* 813EB944 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB948 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB94C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB950 | 7D 89 03 A6 */	mtctr r12
/* 813EB954 | 4E 80 04 21 */	bctrl
/* 813EB958 | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EB95C | 7C 7E 1B 78 */	mr r30, r3
/* 813EB960 | 38 80 00 25 */	li r4, 0x25
/* 813EB964 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EB968 | 4B F5 2E 55 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EB96C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EB970 | 7C 64 1B 78 */	mr r4, r3
/* 813EB974 | 7F C3 F3 78 */	mr r3, r30
/* 813EB978 | 38 A0 00 00 */	li r5, 0x0
/* 813EB97C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EB980 | 7D 89 03 A6 */	mtctr r12
/* 813EB984 | 4E 80 04 21 */	bctrl
/* 813EB988 | 38 60 05 80 */	li r3, 0x580
/* 813EB98C | 48 20 C7 11 */	bl __nw__FUl
/* 813EB990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB994 | 41 82 00 18 */	beq .L_813EB9AC
/* 813EB998 | 7F 84 E3 78 */	mr r4, r28
/* 813EB99C | 7F A5 EB 78 */	mr r5, r29
/* 813EB9A0 | 38 FF 02 9E */	addi r7, r31, 0x29e
/* 813EB9A4 | 38 CD 8F 3C */	li r6, lbl_81696F7C@sda21
/* 813EB9A8 | 4B F7 E6 7D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813EB9AC:
/* 813EB9AC | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 813EB9B0 | 38 9F 02 BF */	addi r4, r31, 0x2bf
/* 813EB9B4 | 38 AD 8F 40 */	li r5, lbl_81696F80@sda21
/* 813EB9B8 | 38 C0 00 00 */	li r6, 0x0
/* 813EB9BC | 38 E0 00 01 */	li r7, 0x1
/* 813EB9C0 | 4B F7 EB 21 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB9C4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EB9C8 | 38 9F 02 E9 */	addi r4, r31, 0x2e9
/* 813EB9CC | 38 AD 8F 40 */	li r5, lbl_81696F80@sda21
/* 813EB9D0 | 38 C0 00 00 */	li r6, 0x0
/* 813EB9D4 | 38 E0 00 01 */	li r7, 0x1
/* 813EB9D8 | 4B F7 EB 09 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB9DC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EB9E0 | 38 9F 03 14 */	addi r4, r31, 0x314
/* 813EB9E4 | 38 BF 00 FB */	addi r5, r31, 0xfb
/* 813EB9E8 | 38 C0 00 00 */	li r6, 0x0
/* 813EB9EC | 38 E0 00 01 */	li r7, 0x1
/* 813EB9F0 | 4B F7 EA F1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EB9F4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EB9F8 | 38 9F 03 41 */	addi r4, r31, 0x341
/* 813EB9FC | 38 BF 00 FB */	addi r5, r31, 0xfb
/* 813EBA00 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA04 | 38 E0 00 01 */	li r7, 0x1
/* 813EBA08 | 4B F7 EA D9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA0C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBA10 | 38 9F 03 6F */	addi r4, r31, 0x36f
/* 813EBA14 | 38 BF 01 63 */	addi r5, r31, 0x163
/* 813EBA18 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA1C | 38 E0 00 01 */	li r7, 0x1
/* 813EBA20 | 4B F7 EA C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA24 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBA28 | 38 9F 03 9D */	addi r4, r31, 0x39d
/* 813EBA2C | 38 AD 8F 48 */	li r5, lbl_81696F88@sda21
/* 813EBA30 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA34 | 38 E0 00 01 */	li r7, 0x1
/* 813EBA38 | 4B F7 EA A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA3C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBA40 | 38 9F 03 CC */	addi r4, r31, 0x3cc
/* 813EBA44 | 38 AD 8F 48 */	li r5, lbl_81696F88@sda21
/* 813EBA48 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA4C | 38 E0 00 01 */	li r7, 0x1
/* 813EBA50 | 4B F7 EA 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA54 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBA58 | 38 9F 03 FA */	addi r4, r31, 0x3fa
/* 813EBA5C | 38 AD 8F 48 */	li r5, lbl_81696F88@sda21
/* 813EBA60 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA64 | 38 E0 00 01 */	li r7, 0x1
/* 813EBA68 | 4B F7 EA 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA6C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBA70 | 38 9F 04 23 */	addi r4, r31, 0x423
/* 813EBA74 | 38 AD 8F 4F */	li r5, lbl_81696F8F@sda21
/* 813EBA78 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA7C | 38 E0 00 01 */	li r7, 0x1
/* 813EBA80 | 4B F7 EA 61 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA84 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBA88 | 38 9F 04 52 */	addi r4, r31, 0x452
/* 813EBA8C | 38 AD 8F 4F */	li r5, lbl_81696F8F@sda21
/* 813EBA90 | 38 C0 00 00 */	li r6, 0x0
/* 813EBA94 | 38 E0 00 01 */	li r7, 0x1
/* 813EBA98 | 4B F7 EA 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBA9C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBAA0 | 38 9F 04 80 */	addi r4, r31, 0x480
/* 813EBAA4 | 38 AD 8F 4F */	li r5, lbl_81696F8F@sda21
/* 813EBAA8 | 38 C0 00 00 */	li r6, 0x0
/* 813EBAAC | 38 E0 00 01 */	li r7, 0x1
/* 813EBAB0 | 4B F7 EA 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBAB4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBAB8 | 38 9F 04 A9 */	addi r4, r31, 0x4a9
/* 813EBABC | 38 AD 8F 5D */	li r5, lbl_81696F9D@sda21
/* 813EBAC0 | 38 C0 00 00 */	li r6, 0x0
/* 813EBAC4 | 38 E0 00 01 */	li r7, 0x1
/* 813EBAC8 | 4B F7 EA 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBACC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBAD0 | 38 9F 04 D8 */	addi r4, r31, 0x4d8
/* 813EBAD4 | 38 AD 8F 5D */	li r5, lbl_81696F9D@sda21
/* 813EBAD8 | 38 C0 00 00 */	li r6, 0x0
/* 813EBADC | 38 E0 00 01 */	li r7, 0x1
/* 813EBAE0 | 4B F7 EA 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBAE4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBAE8 | 38 9F 05 06 */	addi r4, r31, 0x506
/* 813EBAEC | 38 AD 8F 5D */	li r5, lbl_81696F9D@sda21
/* 813EBAF0 | 38 C0 00 00 */	li r6, 0x0
/* 813EBAF4 | 38 E0 00 01 */	li r7, 0x1
/* 813EBAF8 | 4B F7 E9 E9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBAFC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB00 | 38 9F 05 2F */	addi r4, r31, 0x52f
/* 813EBB04 | 38 AD 8F 64 */	li r5, lbl_81696FA4@sda21
/* 813EBB08 | 38 C0 00 00 */	li r6, 0x0
/* 813EBB0C | 38 E0 00 01 */	li r7, 0x1
/* 813EBB10 | 4B F7 E9 D1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBB14 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB18 | 38 9F 05 5E */	addi r4, r31, 0x55e
/* 813EBB1C | 38 AD 8F 64 */	li r5, lbl_81696FA4@sda21
/* 813EBB20 | 38 C0 00 00 */	li r6, 0x0
/* 813EBB24 | 38 E0 00 01 */	li r7, 0x1
/* 813EBB28 | 4B F7 E9 B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBB2C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB30 | 38 9F 05 8C */	addi r4, r31, 0x58c
/* 813EBB34 | 38 AD 8F 64 */	li r5, lbl_81696FA4@sda21
/* 813EBB38 | 38 C0 00 00 */	li r6, 0x0
/* 813EBB3C | 38 E0 00 01 */	li r7, 0x1
/* 813EBB40 | 4B F7 E9 A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EBB44 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB48 | 4B F7 EA ED */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813EBB4C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB50 | 38 80 00 00 */	li r4, 0x0
/* 813EBB54 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EBB58 | 48 12 67 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EBB5C | 4B F7 E0 C9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EBB60 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB64 | 38 80 00 02 */	li r4, 0x2
/* 813EBB68 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EBB6C | 48 12 67 AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EBB70 | 4B F7 E0 B5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EBB74 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB78 | 38 80 00 05 */	li r4, 0x5
/* 813EBB7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EBB80 | 48 12 67 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EBB84 | 4B F7 E0 A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EBB88 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBB8C | 38 80 00 08 */	li r4, 0x8
/* 813EBB90 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EBB94 | 48 12 67 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EBB98 | 4B F7 E0 8D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EBB9C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBBA0 | 38 80 00 0B */	li r4, 0xb
/* 813EBBA4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EBBA8 | 48 12 67 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EBBAC | 4B F7 E0 79 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EBBB0 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBBB4 | 38 80 00 0E */	li r4, 0xe
/* 813EBBB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EBBBC | 48 12 67 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EBBC0 | 4B F7 E0 65 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EBBC4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBBC8 | 38 9F 05 B5 */	addi r4, r31, 0x5b5
/* 813EBBCC | 38 A0 00 01 */	li r5, 0x1
/* 813EBBD0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBBD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBBD8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBBDC | 7D 89 03 A6 */	mtctr r12
/* 813EBBE0 | 4E 80 04 21 */	bctrl
/* 813EBBE4 | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813EBBE8 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBBEC | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 813EBBF0 | 38 80 00 B6 */	li r4, 0xb6
/* 813EBBF4 | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 813EBBF8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EBBFC | 4B F5 2B C1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBC00 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBC04 | 7C 64 1B 78 */	mr r4, r3
/* 813EBC08 | 7F C3 F3 78 */	mr r3, r30
/* 813EBC0C | 38 A0 00 00 */	li r5, 0x0
/* 813EBC10 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBC14 | 7D 89 03 A6 */	mtctr r12
/* 813EBC18 | 4E 80 04 21 */	bctrl
/* 813EBC1C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBC20 | 38 9F 05 BE */	addi r4, r31, 0x5be
/* 813EBC24 | 38 A0 00 01 */	li r5, 0x1
/* 813EBC28 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBC2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBC30 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBC34 | 7D 89 03 A6 */	mtctr r12
/* 813EBC38 | 4E 80 04 21 */	bctrl
/* 813EBC3C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBC40 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBC44 | 38 80 00 B7 */	li r4, 0xb7
/* 813EBC48 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBC4C | 4B F5 2B 71 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBC50 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBC54 | 7C 64 1B 78 */	mr r4, r3
/* 813EBC58 | 7F C3 F3 78 */	mr r3, r30
/* 813EBC5C | 38 A0 00 00 */	li r5, 0x0
/* 813EBC60 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBC64 | 7D 89 03 A6 */	mtctr r12
/* 813EBC68 | 4E 80 04 21 */	bctrl
/* 813EBC6C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBC70 | 38 9F 05 C9 */	addi r4, r31, 0x5c9
/* 813EBC74 | 38 A0 00 01 */	li r5, 0x1
/* 813EBC78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBC7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBC80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBC84 | 7D 89 03 A6 */	mtctr r12
/* 813EBC88 | 4E 80 04 21 */	bctrl
/* 813EBC8C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBC90 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBC94 | 38 80 00 B8 */	li r4, 0xb8
/* 813EBC98 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBC9C | 4B F5 2B 21 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBCA0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBCA4 | 7C 64 1B 78 */	mr r4, r3
/* 813EBCA8 | 7F C3 F3 78 */	mr r3, r30
/* 813EBCAC | 38 A0 00 00 */	li r5, 0x0
/* 813EBCB0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBCB4 | 7D 89 03 A6 */	mtctr r12
/* 813EBCB8 | 4E 80 04 21 */	bctrl
/* 813EBCBC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBCC0 | 38 9F 05 D4 */	addi r4, r31, 0x5d4
/* 813EBCC4 | 38 A0 00 01 */	li r5, 0x1
/* 813EBCC8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBCCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBCD0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBCD4 | 7D 89 03 A6 */	mtctr r12
/* 813EBCD8 | 4E 80 04 21 */	bctrl
/* 813EBCDC | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBCE0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBCE4 | 38 80 00 B9 */	li r4, 0xb9
/* 813EBCE8 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBCEC | 4B F5 2A D1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBCF0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBCF4 | 7C 64 1B 78 */	mr r4, r3
/* 813EBCF8 | 7F C3 F3 78 */	mr r3, r30
/* 813EBCFC | 38 A0 00 00 */	li r5, 0x0
/* 813EBD00 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBD04 | 7D 89 03 A6 */	mtctr r12
/* 813EBD08 | 4E 80 04 21 */	bctrl
/* 813EBD0C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBD10 | 38 9F 05 DF */	addi r4, r31, 0x5df
/* 813EBD14 | 38 A0 00 01 */	li r5, 0x1
/* 813EBD18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBD1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBD20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBD24 | 7D 89 03 A6 */	mtctr r12
/* 813EBD28 | 4E 80 04 21 */	bctrl
/* 813EBD2C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBD30 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBD34 | 38 80 00 BA */	li r4, 0xba
/* 813EBD38 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBD3C | 4B F5 2A 81 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBD40 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBD44 | 7C 64 1B 78 */	mr r4, r3
/* 813EBD48 | 7F C3 F3 78 */	mr r3, r30
/* 813EBD4C | 38 A0 00 00 */	li r5, 0x0
/* 813EBD50 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBD54 | 7D 89 03 A6 */	mtctr r12
/* 813EBD58 | 4E 80 04 21 */	bctrl
/* 813EBD5C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBD60 | 38 9F 02 7C */	addi r4, r31, 0x27c
/* 813EBD64 | 38 A0 00 01 */	li r5, 0x1
/* 813EBD68 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBD6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBD70 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBD74 | 7D 89 03 A6 */	mtctr r12
/* 813EBD78 | 4E 80 04 21 */	bctrl
/* 813EBD7C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBD80 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBD84 | 38 80 00 B6 */	li r4, 0xb6
/* 813EBD88 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBD8C | 4B F5 2A 31 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBD90 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBD94 | 7C 64 1B 78 */	mr r4, r3
/* 813EBD98 | 7F C3 F3 78 */	mr r3, r30
/* 813EBD9C | 38 A0 00 00 */	li r5, 0x0
/* 813EBDA0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBDA4 | 7D 89 03 A6 */	mtctr r12
/* 813EBDA8 | 4E 80 04 21 */	bctrl
/* 813EBDAC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBDB0 | 38 9F 02 88 */	addi r4, r31, 0x288
/* 813EBDB4 | 38 A0 00 01 */	li r5, 0x1
/* 813EBDB8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBDBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBDC0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBDC4 | 7D 89 03 A6 */	mtctr r12
/* 813EBDC8 | 4E 80 04 21 */	bctrl
/* 813EBDCC | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBDD0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBDD4 | 38 80 00 B8 */	li r4, 0xb8
/* 813EBDD8 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBDDC | 4B F5 29 E1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBDE0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBDE4 | 7C 64 1B 78 */	mr r4, r3
/* 813EBDE8 | 7F C3 F3 78 */	mr r3, r30
/* 813EBDEC | 38 A0 00 00 */	li r5, 0x0
/* 813EBDF0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBDF4 | 7D 89 03 A6 */	mtctr r12
/* 813EBDF8 | 4E 80 04 21 */	bctrl
/* 813EBDFC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBE00 | 38 9F 02 93 */	addi r4, r31, 0x293
/* 813EBE04 | 38 A0 00 01 */	li r5, 0x1
/* 813EBE08 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBE0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBE10 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBE14 | 7D 89 03 A6 */	mtctr r12
/* 813EBE18 | 4E 80 04 21 */	bctrl
/* 813EBE1C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBE20 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBE24 | 38 80 00 B9 */	li r4, 0xb9
/* 813EBE28 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBE2C | 4B F5 29 91 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBE30 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBE34 | 7C 64 1B 78 */	mr r4, r3
/* 813EBE38 | 7F C3 F3 78 */	mr r3, r30
/* 813EBE3C | 38 A0 00 00 */	li r5, 0x0
/* 813EBE40 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBE44 | 7D 89 03 A6 */	mtctr r12
/* 813EBE48 | 4E 80 04 21 */	bctrl
/* 813EBE4C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBE50 | 38 9F 05 EA */	addi r4, r31, 0x5ea
/* 813EBE54 | 38 A0 00 01 */	li r5, 0x1
/* 813EBE58 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBE5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBE60 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBE64 | 7D 89 03 A6 */	mtctr r12
/* 813EBE68 | 4E 80 04 21 */	bctrl
/* 813EBE6C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EBE70 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBE74 | 38 80 00 BA */	li r4, 0xba
/* 813EBE78 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EBE7C | 4B F5 29 41 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBE80 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBE84 | 7C 64 1B 78 */	mr r4, r3
/* 813EBE88 | 7F C3 F3 78 */	mr r3, r30
/* 813EBE8C | 38 A0 00 00 */	li r5, 0x0
/* 813EBE90 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBE94 | 7D 89 03 A6 */	mtctr r12
/* 813EBE98 | 4E 80 04 21 */	bctrl
/* 813EBE9C | 38 00 00 30 */	li r0, 0x30
/* 813EBEA0 | 80 DA 00 94 */	lwz r6, 0x94(r26)
/* 813EBEA4 | 38 A0 00 00 */	li r5, 0x0
/* 813EBEA8 | 38 60 00 00 */	li r3, 0x0
/* 813EBEAC | 7C 09 03 A6 */	mtctr r0
.L_813EBEB0:
/* 813EBEB0 | 7C 86 1A 14 */	add r4, r6, r3
/* 813EBEB4 | 80 04 03 40 */	lwz r0, 0x340(r4)
/* 813EBEB8 | 80 84 03 44 */	lwz r4, 0x344(r4)
/* 813EBEBC | 7C 80 03 79 */	or. r0, r4, r0
/* 813EBEC0 | 41 82 00 10 */	beq .L_813EBED0
/* 813EBEC4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813EBEC8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813EBECC | 42 00 FF E4 */	bdnz .L_813EBEB0
.L_813EBED0:
/* 813EBED0 | 2C 05 00 05 */	cmpwi r5, 0x5
/* 813EBED4 | 41 80 00 68 */	blt .L_813EBF3C
/* 813EBED8 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBEDC | 38 8D 8F 6B */	li r4, lbl_81696FAB@sda21
/* 813EBEE0 | 38 A0 00 01 */	li r5, 0x1
/* 813EBEE4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBEE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBEEC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBEF0 | 7D 89 03 A6 */	mtctr r12
/* 813EBEF4 | 4E 80 04 21 */	bctrl
/* 813EBEF8 | 38 80 00 00 */	li r4, 0x0
/* 813EBEFC | 4B F5 85 19 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813EBF00 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBF04 | 38 8D 8F 73 */	li r4, lbl_81696FB3@sda21
/* 813EBF08 | 38 A0 00 01 */	li r5, 0x1
/* 813EBF0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBF10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBF14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBF18 | 7D 89 03 A6 */	mtctr r12
/* 813EBF1C | 4E 80 04 21 */	bctrl
/* 813EBF20 | 88 83 00 CF */	lbz r4, 0xcf(r3)
/* 813EBF24 | 38 00 00 04 */	li r0, 0x4
/* 813EBF28 | 54 84 06 3C */	rlwinm r4, r4, 0, 24, 30
/* 813EBF2C | 60 84 00 01 */	ori r4, r4, 0x1
/* 813EBF30 | 98 83 00 CF */	stb r4, 0xcf(r3)
/* 813EBF34 | 90 1B 00 24 */	stw r0, 0x24(r27)
/* 813EBF38 | 48 00 00 64 */	b .L_813EBF9C
.L_813EBF3C:
/* 813EBF3C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBF40 | 38 8D 8F 6B */	li r4, lbl_81696FAB@sda21
/* 813EBF44 | 38 A0 00 01 */	li r5, 0x1
/* 813EBF48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBF4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBF50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBF54 | 7D 89 03 A6 */	mtctr r12
/* 813EBF58 | 4E 80 04 21 */	bctrl
/* 813EBF5C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813EBF60 | 38 8D 8F 73 */	li r4, lbl_81696FB3@sda21
/* 813EBF64 | 38 A0 00 01 */	li r5, 0x1
/* 813EBF68 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813EBF6C | 60 00 00 01 */	ori r0, r0, 0x1
/* 813EBF70 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813EBF74 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBF78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBF7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBF80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBF84 | 7D 89 03 A6 */	mtctr r12
/* 813EBF88 | 4E 80 04 21 */	bctrl
/* 813EBF8C | 38 80 00 00 */	li r4, 0x0
/* 813EBF90 | 4B F5 84 85 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813EBF94 | 38 00 00 03 */	li r0, 0x3
/* 813EBF98 | 90 1B 00 24 */	stw r0, 0x24(r27)
.L_813EBF9C:
/* 813EBF9C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EBFA0 | 38 8D 8F 56 */	li r4, lbl_81696F96@sda21
/* 813EBFA4 | 38 A0 00 01 */	li r5, 0x1
/* 813EBFA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EBFAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EBFB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EBFB4 | 7D 89 03 A6 */	mtctr r12
/* 813EBFB8 | 4E 80 04 21 */	bctrl
/* 813EBFBC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813EBFC0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EBFC4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813EBFC8 | 38 80 00 A5 */	li r4, 0xa5
/* 813EBFCC | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813EBFD0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EBFD4 | 4B F5 27 E9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EBFD8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EBFDC | 7C 64 1B 78 */	mr r4, r3
/* 813EBFE0 | 7F C3 F3 78 */	mr r3, r30
/* 813EBFE4 | 38 A0 00 00 */	li r5, 0x0
/* 813EBFE8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EBFEC | 7D 89 03 A6 */	mtctr r12
/* 813EBFF0 | 4E 80 04 21 */	bctrl
/* 813EBFF4 | 38 60 05 80 */	li r3, 0x580
/* 813EBFF8 | 48 20 C0 A5 */	bl __nw__FUl
/* 813EBFFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC000 | 41 82 00 18 */	beq .L_813EC018
/* 813EC004 | 7F 84 E3 78 */	mr r4, r28
/* 813EC008 | 7F A5 EB 78 */	mr r5, r29
/* 813EC00C | 38 FF 05 F5 */	addi r7, r31, 0x5f5
/* 813EC010 | 38 CD 8F 3C */	li r6, lbl_81696F7C@sda21
/* 813EC014 | 4B F7 E0 11 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813EC018:
/* 813EC018 | 90 7B 00 08 */	stw r3, 0x8(r27)
/* 813EC01C | 38 9F 06 16 */	addi r4, r31, 0x616
/* 813EC020 | 38 A0 00 01 */	li r5, 0x1
/* 813EC024 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC02C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC030 | 7D 89 03 A6 */	mtctr r12
/* 813EC034 | 4E 80 04 21 */	bctrl
/* 813EC038 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC03C | 38 80 08 40 */	li r4, 0x840
/* 813EC040 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 813EC044 | 7D 89 03 A6 */	mtctr r12
/* 813EC048 | 4E 80 04 21 */	bctrl
/* 813EC04C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC050 | 38 9F 06 1F */	addi r4, r31, 0x61f
/* 813EC054 | 38 AD 8F 7B */	li r5, lbl_81696FBB@sda21
/* 813EC058 | 38 C0 00 00 */	li r6, 0x0
/* 813EC05C | 38 E0 00 01 */	li r7, 0x1
/* 813EC060 | 4B F7 E4 81 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC064 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC068 | 38 9F 06 4E */	addi r4, r31, 0x64e
/* 813EC06C | 38 AD 8F 7B */	li r5, lbl_81696FBB@sda21
/* 813EC070 | 38 C0 00 00 */	li r6, 0x0
/* 813EC074 | 38 E0 00 01 */	li r7, 0x1
/* 813EC078 | 4B F7 E4 69 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC07C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC080 | 38 9F 06 7E */	addi r4, r31, 0x67e
/* 813EC084 | 38 BF 06 AD */	addi r5, r31, 0x6ad
/* 813EC088 | 38 C0 00 00 */	li r6, 0x0
/* 813EC08C | 38 E0 00 01 */	li r7, 0x1
/* 813EC090 | 4B F7 E4 51 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC094 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC098 | 38 9F 06 BA */	addi r4, r31, 0x6ba
/* 813EC09C | 38 BF 06 AD */	addi r5, r31, 0x6ad
/* 813EC0A0 | 38 C0 00 00 */	li r6, 0x0
/* 813EC0A4 | 38 E0 00 01 */	li r7, 0x1
/* 813EC0A8 | 4B F7 E4 39 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC0AC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC0B0 | 38 9F 06 E8 */	addi r4, r31, 0x6e8
/* 813EC0B4 | 38 BF 07 11 */	addi r5, r31, 0x711
/* 813EC0B8 | 38 C0 00 00 */	li r6, 0x0
/* 813EC0BC | 38 E0 00 01 */	li r7, 0x1
/* 813EC0C0 | 4B F7 E4 21 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC0C4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC0C8 | 38 9F 07 1B */	addi r4, r31, 0x71b
/* 813EC0CC | 38 BF 07 4A */	addi r5, r31, 0x74a
/* 813EC0D0 | 38 C0 00 00 */	li r6, 0x0
/* 813EC0D4 | 38 E0 00 01 */	li r7, 0x1
/* 813EC0D8 | 4B F7 E4 09 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC0DC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC0E0 | 38 9F 07 57 */	addi r4, r31, 0x757
/* 813EC0E4 | 38 BF 07 4A */	addi r5, r31, 0x74a
/* 813EC0E8 | 38 C0 00 00 */	li r6, 0x0
/* 813EC0EC | 38 E0 00 01 */	li r7, 0x1
/* 813EC0F0 | 4B F7 E3 F1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC0F4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC0F8 | 38 9F 07 85 */	addi r4, r31, 0x785
/* 813EC0FC | 38 BF 07 AE */	addi r5, r31, 0x7ae
/* 813EC100 | 38 C0 00 00 */	li r6, 0x0
/* 813EC104 | 38 E0 00 01 */	li r7, 0x1
/* 813EC108 | 4B F7 E3 D9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC10C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC110 | 38 9F 07 B8 */	addi r4, r31, 0x7b8
/* 813EC114 | 38 BF 07 E1 */	addi r5, r31, 0x7e1
/* 813EC118 | 38 C0 00 00 */	li r6, 0x0
/* 813EC11C | 38 E0 00 01 */	li r7, 0x1
/* 813EC120 | 4B F7 E3 C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC124 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC128 | 38 9F 07 EE */	addi r4, r31, 0x7ee
/* 813EC12C | 38 BF 07 E1 */	addi r5, r31, 0x7e1
/* 813EC130 | 38 C0 00 00 */	li r6, 0x0
/* 813EC134 | 38 E0 00 01 */	li r7, 0x1
/* 813EC138 | 4B F7 E3 A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC13C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC140 | 38 9F 08 18 */	addi r4, r31, 0x818
/* 813EC144 | 38 BF 08 40 */	addi r5, r31, 0x840
/* 813EC148 | 38 C0 00 00 */	li r6, 0x0
/* 813EC14C | 38 E0 00 01 */	li r7, 0x1
/* 813EC150 | 4B F7 E3 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC154 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC158 | 38 9F 07 B8 */	addi r4, r31, 0x7b8
/* 813EC15C | 38 BF 08 4A */	addi r5, r31, 0x84a
/* 813EC160 | 38 C0 00 00 */	li r6, 0x0
/* 813EC164 | 38 E0 00 01 */	li r7, 0x1
/* 813EC168 | 4B F7 E3 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC16C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC170 | 38 9F 07 EE */	addi r4, r31, 0x7ee
/* 813EC174 | 38 BF 08 4A */	addi r5, r31, 0x84a
/* 813EC178 | 38 C0 00 00 */	li r6, 0x0
/* 813EC17C | 38 E0 00 01 */	li r7, 0x1
/* 813EC180 | 4B F7 E3 61 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC184 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC188 | 38 9F 08 18 */	addi r4, r31, 0x818
/* 813EC18C | 38 BF 08 57 */	addi r5, r31, 0x857
/* 813EC190 | 38 C0 00 00 */	li r6, 0x0
/* 813EC194 | 38 E0 00 01 */	li r7, 0x1
/* 813EC198 | 4B F7 E3 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC19C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC1A0 | 38 9F 08 61 */	addi r4, r31, 0x861
/* 813EC1A4 | 38 BF 08 89 */	addi r5, r31, 0x889
/* 813EC1A8 | 38 C0 00 00 */	li r6, 0x0
/* 813EC1AC | 38 E0 00 01 */	li r7, 0x1
/* 813EC1B0 | 4B F7 E3 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC1B4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC1B8 | 38 9F 08 94 */	addi r4, r31, 0x894
/* 813EC1BC | 38 BF 08 89 */	addi r5, r31, 0x889
/* 813EC1C0 | 38 C0 00 00 */	li r6, 0x0
/* 813EC1C4 | 38 E0 00 01 */	li r7, 0x1
/* 813EC1C8 | 4B F7 E3 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC1CC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC1D0 | 38 9F 08 61 */	addi r4, r31, 0x861
/* 813EC1D4 | 38 BF 08 BA */	addi r5, r31, 0x8ba
/* 813EC1D8 | 38 C0 00 00 */	li r6, 0x0
/* 813EC1DC | 38 E0 00 01 */	li r7, 0x1
/* 813EC1E0 | 4B F7 E3 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC1E4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC1E8 | 38 9F 08 94 */	addi r4, r31, 0x894
/* 813EC1EC | 38 BF 08 BA */	addi r5, r31, 0x8ba
/* 813EC1F0 | 38 C0 00 00 */	li r6, 0x0
/* 813EC1F4 | 38 E0 00 01 */	li r7, 0x1
/* 813EC1F8 | 4B F7 E2 E9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC1FC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC200 | 38 9F 08 C5 */	addi r4, r31, 0x8c5
/* 813EC204 | 38 BF 08 EB */	addi r5, r31, 0x8eb
/* 813EC208 | 38 C0 00 00 */	li r6, 0x0
/* 813EC20C | 38 E0 00 01 */	li r7, 0x1
/* 813EC210 | 4B F7 E2 D1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC214 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC218 | 38 9F 08 F5 */	addi r4, r31, 0x8f5
/* 813EC21C | 38 BF 09 24 */	addi r5, r31, 0x924
/* 813EC220 | 38 C0 00 00 */	li r6, 0x0
/* 813EC224 | 38 E0 00 01 */	li r7, 0x1
/* 813EC228 | 4B F7 E2 B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC22C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC230 | 38 9F 09 30 */	addi r4, r31, 0x930
/* 813EC234 | 38 BF 09 24 */	addi r5, r31, 0x924
/* 813EC238 | 38 C0 00 00 */	li r6, 0x0
/* 813EC23C | 38 E0 00 01 */	li r7, 0x1
/* 813EC240 | 4B F7 E2 A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC244 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC248 | 38 9F 08 F5 */	addi r4, r31, 0x8f5
/* 813EC24C | 38 BF 09 5D */	addi r5, r31, 0x95d
/* 813EC250 | 38 C0 00 00 */	li r6, 0x0
/* 813EC254 | 38 E0 00 01 */	li r7, 0x1
/* 813EC258 | 4B F7 E2 89 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC25C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC260 | 38 9F 09 30 */	addi r4, r31, 0x930
/* 813EC264 | 38 BF 09 5D */	addi r5, r31, 0x95d
/* 813EC268 | 38 C0 00 00 */	li r6, 0x0
/* 813EC26C | 38 E0 00 01 */	li r7, 0x1
/* 813EC270 | 4B F7 E2 71 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC274 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC278 | 4B F7 E3 BD */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813EC27C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC280 | 38 80 00 00 */	li r4, 0x0
/* 813EC284 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC288 | 48 12 60 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC28C | 4B F7 D9 99 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC290 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC294 | 38 80 00 02 */	li r4, 0x2
/* 813EC298 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC29C | 48 12 60 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC2A0 | 4B F7 D9 85 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC2A4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC2A8 | 38 80 00 05 */	li r4, 0x5
/* 813EC2AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC2B0 | 48 12 60 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC2B4 | 4B F7 D9 71 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC2B8 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC2BC | 38 80 00 0B */	li r4, 0xb
/* 813EC2C0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC2C4 | 48 12 60 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC2C8 | 4B F7 D9 5D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC2CC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC2D0 | 38 80 00 08 */	li r4, 0x8
/* 813EC2D4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC2D8 | 48 12 60 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC2DC | 4B F7 D9 49 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC2E0 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC2E4 | 38 80 00 12 */	li r4, 0x12
/* 813EC2E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC2EC | 48 12 60 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC2F0 | 4B F7 D9 35 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC2F4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC2F8 | 38 80 00 12 */	li r4, 0x12
/* 813EC2FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC300 | 48 12 60 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC304 | 7C 7A 1B 78 */	mr r26, r3
/* 813EC308 | 4B F7 65 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EC30C | 38 00 00 01 */	li r0, 0x1
/* 813EC310 | 38 9F 09 69 */	addi r4, r31, 0x969
/* 813EC314 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813EC318 | 38 A0 00 01 */	li r5, 0x1
/* 813EC31C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC320 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC324 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC328 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC32C | 7D 89 03 A6 */	mtctr r12
/* 813EC330 | 4E 80 04 21 */	bctrl
/* 813EC334 | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813EC338 | 7C 7E 1B 78 */	mr r30, r3
/* 813EC33C | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 813EC340 | 38 80 00 A5 */	li r4, 0xa5
/* 813EC344 | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 813EC348 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EC34C | 4B F5 24 71 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EC350 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EC354 | 7C 64 1B 78 */	mr r4, r3
/* 813EC358 | 7F C3 F3 78 */	mr r3, r30
/* 813EC35C | 38 A0 00 00 */	li r5, 0x0
/* 813EC360 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EC364 | 7D 89 03 A6 */	mtctr r12
/* 813EC368 | 4E 80 04 21 */	bctrl
/* 813EC36C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC370 | 38 9F 09 73 */	addi r4, r31, 0x973
/* 813EC374 | 38 A0 00 01 */	li r5, 0x1
/* 813EC378 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC37C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC380 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC384 | 7D 89 03 A6 */	mtctr r12
/* 813EC388 | 4E 80 04 21 */	bctrl
/* 813EC38C | 80 BA 00 80 */	lwz r5, 0x80(r26)
/* 813EC390 | 7C 7E 1B 78 */	mr r30, r3
/* 813EC394 | 38 80 00 C4 */	li r4, 0xc4
/* 813EC398 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813EC39C | 4B F5 24 21 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EC3A0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EC3A4 | 7C 64 1B 78 */	mr r4, r3
/* 813EC3A8 | 7F C3 F3 78 */	mr r3, r30
/* 813EC3AC | 38 A0 00 00 */	li r5, 0x0
/* 813EC3B0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EC3B4 | 7D 89 03 A6 */	mtctr r12
/* 813EC3B8 | 4E 80 04 21 */	bctrl
/* 813EC3BC | 38 60 05 80 */	li r3, 0x580
/* 813EC3C0 | 48 20 BC DD */	bl __nw__FUl
/* 813EC3C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC3C8 | 41 82 00 18 */	beq .L_813EC3E0
/* 813EC3CC | 7F 84 E3 78 */	mr r4, r28
/* 813EC3D0 | 7F A5 EB 78 */	mr r5, r29
/* 813EC3D4 | 38 FF 09 80 */	addi r7, r31, 0x980
/* 813EC3D8 | 38 CD 8F 3C */	li r6, lbl_81696F7C@sda21
/* 813EC3DC | 4B F7 DC 49 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813EC3E0:
/* 813EC3E0 | 90 7B 00 0C */	stw r3, 0xc(r27)
/* 813EC3E4 | 38 9F 09 A1 */	addi r4, r31, 0x9a1
/* 813EC3E8 | 38 AD 8F 40 */	li r5, lbl_81696F80@sda21
/* 813EC3EC | 38 C0 00 00 */	li r6, 0x0
/* 813EC3F0 | 38 E0 00 01 */	li r7, 0x1
/* 813EC3F4 | 4B F7 E0 ED */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC3F8 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 813EC3FC | 38 9F 09 CB */	addi r4, r31, 0x9cb
/* 813EC400 | 38 AD 8F 40 */	li r5, lbl_81696F80@sda21
/* 813EC404 | 38 C0 00 00 */	li r6, 0x0
/* 813EC408 | 38 E0 00 01 */	li r7, 0x1
/* 813EC40C | 4B F7 E0 D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EC410 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC414 | 4B F7 E2 21 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813EC418 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 813EC41C | 38 80 00 00 */	li r4, 0x0
/* 813EC420 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC424 | 48 12 5E F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC428 | 4B F7 D7 FD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC42C | 38 60 00 10 */	li r3, 0x10
/* 813EC430 | 48 20 BC 6D */	bl __nw__FUl
/* 813EC434 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC438 | 7C 7A 1B 78 */	mr r26, r3
/* 813EC43C | 41 82 00 1C */	beq .L_813EC458
/* 813EC440 | 38 00 00 00 */	li r0, 0x0
/* 813EC444 | 3C 80 81 65 */	lis r4, lbl_8165683C@ha
/* 813EC448 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813EC44C | 38 84 68 3C */	addi r4, r4, lbl_8165683C@l
/* 813EC450 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813EC454 | 93 63 00 0C */	stw r27, 0xc(r3)
.L_813EC458:
/* 813EC458 | 38 60 00 34 */	li r3, 0x34
/* 813EC45C | 48 20 BC 41 */	bl __nw__FUl
/* 813EC460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC464 | 41 82 00 20 */	beq .L_813EC484
/* 813EC468 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 813EC46C | 7F 44 D3 78 */	mr r4, r26
/* 813EC470 | 38 C0 00 00 */	li r6, 0x0
/* 813EC474 | 38 E0 00 00 */	li r7, 0x0
/* 813EC478 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813EC47C | 39 00 00 00 */	li r8, 0x0
/* 813EC480 | 4B F5 8B F1 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_813EC484:
/* 813EC484 | 90 7B 00 10 */	stw r3, 0x10(r27)
/* 813EC488 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 813EC48C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC490 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813EC494 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813EC498 | 7D 89 03 A6 */	mtctr r12
/* 813EC49C | 4E 80 04 21 */	bctrl
/* 813EC4A0 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 813EC4A4 | 38 80 00 00 */	li r4, 0x0
/* 813EC4A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC4AC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EC4B0 | 7D 89 03 A6 */	mtctr r12
/* 813EC4B4 | 4E 80 04 21 */	bctrl
/* 813EC4B8 | 3B BF 00 00 */	addi r29, r31, 0x0
/* 813EC4BC | 3B 40 00 00 */	li r26, 0x0
/* 813EC4C0 | 3B 80 00 00 */	li r28, 0x0
.L_813EC4C4:
/* 813EC4C4 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EC4C8 | 38 A0 00 01 */	li r5, 0x1
/* 813EC4CC | 7C 9D E0 2E */	lwzx r4, r29, r28
/* 813EC4D0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC4D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC4D8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC4DC | 7D 89 03 A6 */	mtctr r12
/* 813EC4E0 | 4E 80 04 21 */	bctrl
/* 813EC4E4 | 7C 64 1B 78 */	mr r4, r3
/* 813EC4E8 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 813EC4EC | 38 A0 00 01 */	li r5, 0x1
/* 813EC4F0 | 4B F7 EC DD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813EC4F4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EC4F8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813EC4FC | 2C 1A 00 03 */	cmpwi r26, 0x3
/* 813EC500 | 41 80 FF C4 */	blt .L_813EC4C4
/* 813EC504 | 38 60 00 10 */	li r3, 0x10
/* 813EC508 | 48 20 BB 95 */	bl __nw__FUl
/* 813EC50C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC510 | 7C 7A 1B 78 */	mr r26, r3
/* 813EC514 | 41 82 00 1C */	beq .L_813EC530
/* 813EC518 | 38 00 00 00 */	li r0, 0x0
/* 813EC51C | 3C 80 81 65 */	lis r4, lbl_81656824@ha
/* 813EC520 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813EC524 | 38 84 68 24 */	addi r4, r4, lbl_81656824@l
/* 813EC528 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813EC52C | 93 63 00 0C */	stw r27, 0xc(r3)
.L_813EC530:
/* 813EC530 | 38 60 00 34 */	li r3, 0x34
/* 813EC534 | 48 20 BB 69 */	bl __nw__FUl
/* 813EC538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC53C | 41 82 00 20 */	beq .L_813EC55C
/* 813EC540 | 80 BB 00 04 */	lwz r5, 0x4(r27)
/* 813EC544 | 7F 44 D3 78 */	mr r4, r26
/* 813EC548 | 38 C0 00 00 */	li r6, 0x0
/* 813EC54C | 38 E0 00 00 */	li r7, 0x0
/* 813EC550 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813EC554 | 39 00 00 00 */	li r8, 0x0
/* 813EC558 | 4B F5 8B 19 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_813EC55C:
/* 813EC55C | 90 7B 00 14 */	stw r3, 0x14(r27)
/* 813EC560 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 813EC564 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC568 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813EC56C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813EC570 | 7D 89 03 A6 */	mtctr r12
/* 813EC574 | 4E 80 04 21 */	bctrl
/* 813EC578 | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813EC57C | 38 80 00 00 */	li r4, 0x0
/* 813EC580 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC584 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EC588 | 7D 89 03 A6 */	mtctr r12
/* 813EC58C | 4E 80 04 21 */	bctrl
/* 813EC590 | 80 1B 00 24 */	lwz r0, 0x24(r27)
/* 813EC594 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EC598 | 40 82 00 54 */	bne .L_813EC5EC
/* 813EC59C | 3B BF 00 0C */	addi r29, r31, 0xc
/* 813EC5A0 | 3B 40 00 00 */	li r26, 0x0
/* 813EC5A4 | 3B 80 00 00 */	li r28, 0x0
.L_813EC5A8:
/* 813EC5A8 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EC5AC | 38 A0 00 01 */	li r5, 0x1
/* 813EC5B0 | 7C 9D E0 2E */	lwzx r4, r29, r28
/* 813EC5B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC5B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC5BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC5C0 | 7D 89 03 A6 */	mtctr r12
/* 813EC5C4 | 4E 80 04 21 */	bctrl
/* 813EC5C8 | 7C 64 1B 78 */	mr r4, r3
/* 813EC5CC | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813EC5D0 | 38 A0 00 01 */	li r5, 0x1
/* 813EC5D4 | 4B F7 EB F9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813EC5D8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EC5DC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813EC5E0 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 813EC5E4 | 41 80 FF C4 */	blt .L_813EC5A8
/* 813EC5E8 | 48 00 00 50 */	b .L_813EC638
.L_813EC5EC:
/* 813EC5EC | 3B BF 00 20 */	addi r29, r31, 0x20
/* 813EC5F0 | 3B 40 00 00 */	li r26, 0x0
/* 813EC5F4 | 3B 80 00 00 */	li r28, 0x0
.L_813EC5F8:
/* 813EC5F8 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EC5FC | 38 A0 00 01 */	li r5, 0x1
/* 813EC600 | 7C 9D E0 2E */	lwzx r4, r29, r28
/* 813EC604 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC608 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC60C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC610 | 7D 89 03 A6 */	mtctr r12
/* 813EC614 | 4E 80 04 21 */	bctrl
/* 813EC618 | 7C 64 1B 78 */	mr r4, r3
/* 813EC61C | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813EC620 | 38 A0 00 01 */	li r5, 0x1
/* 813EC624 | 4B F7 EB A9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813EC628 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EC62C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813EC630 | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813EC634 | 41 80 FF C4 */	blt .L_813EC5F8
.L_813EC638:
/* 813EC638 | 38 60 00 10 */	li r3, 0x10
/* 813EC63C | 48 20 BA 61 */	bl __nw__FUl
/* 813EC640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC644 | 7C 7A 1B 78 */	mr r26, r3
/* 813EC648 | 41 82 00 1C */	beq .L_813EC664
/* 813EC64C | 38 00 00 00 */	li r0, 0x0
/* 813EC650 | 3C 80 81 65 */	lis r4, lbl_8165680C@ha
/* 813EC654 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813EC658 | 38 84 68 0C */	addi r4, r4, lbl_8165680C@l
/* 813EC65C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813EC660 | 93 63 00 0C */	stw r27, 0xc(r3)
.L_813EC664:
/* 813EC664 | 38 60 00 34 */	li r3, 0x34
/* 813EC668 | 48 20 BA 35 */	bl __nw__FUl
/* 813EC66C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EC670 | 41 82 00 20 */	beq .L_813EC690
/* 813EC674 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 813EC678 | 7F 44 D3 78 */	mr r4, r26
/* 813EC67C | 38 C0 00 00 */	li r6, 0x0
/* 813EC680 | 38 E0 00 00 */	li r7, 0x0
/* 813EC684 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813EC688 | 39 00 00 00 */	li r8, 0x0
/* 813EC68C | 4B F5 89 E5 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_813EC690:
/* 813EC690 | 90 7B 00 18 */	stw r3, 0x18(r27)
/* 813EC694 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 813EC698 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC69C | 38 84 00 04 */	addi r4, r4, 0x4
/* 813EC6A0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813EC6A4 | 7D 89 03 A6 */	mtctr r12
/* 813EC6A8 | 4E 80 04 21 */	bctrl
/* 813EC6AC | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813EC6B0 | 38 80 00 00 */	li r4, 0x0
/* 813EC6B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC6B8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EC6BC | 7D 89 03 A6 */	mtctr r12
/* 813EC6C0 | 4E 80 04 21 */	bctrl
/* 813EC6C4 | 3B BF 00 48 */	addi r29, r31, 0x48
/* 813EC6C8 | 3B 40 00 00 */	li r26, 0x0
/* 813EC6CC | 3B 80 00 00 */	li r28, 0x0
.L_813EC6D0:
/* 813EC6D0 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EC6D4 | 38 A0 00 01 */	li r5, 0x1
/* 813EC6D8 | 7C 9D E0 2E */	lwzx r4, r29, r28
/* 813EC6DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EC6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC6E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC6E8 | 7D 89 03 A6 */	mtctr r12
/* 813EC6EC | 4E 80 04 21 */	bctrl
/* 813EC6F0 | 7C 64 1B 78 */	mr r4, r3
/* 813EC6F4 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813EC6F8 | 38 A0 00 01 */	li r5, 0x1
/* 813EC6FC | 4B F7 EA D1 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813EC700 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EC704 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813EC708 | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813EC70C | 41 80 FF C4 */	blt .L_813EC6D0
/* 813EC710 | 38 00 00 01 */	li r0, 0x1
/* 813EC714 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EC718 | 98 1B 29 D0 */	stb r0, 0x29d0(r27)
/* 813EC71C | 48 20 CD ED */	bl _restgpr_26
/* 813EC720 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EC724 | 7C 08 03 A6 */	mtlr r0
/* 813EC728 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EC72C | 4E 80 00 20 */	blr
.endfn ipl_813EB690

# .text:0x1144 | 0x813EC730 | size: 0xD4
.fn ipl_813EC730, global
/* 813EC730 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EC734 | 7C 08 02 A6 */	mflr r0
/* 813EC738 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EC73C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EC740 | 48 20 CD 85 */	bl _savegpr_28
/* 813EC744 | 7C 7C 1B 78 */	mr r28, r3
/* 813EC748 | 7C BD 2B 78 */	mr r29, r5
/* 813EC74C | 38 63 00 64 */	addi r3, r3, 0x64
/* 813EC750 | 4B FF A8 51 */	bl iplSDChannelTitle_813E6FA0
/* 813EC754 | 7F A4 EB 78 */	mr r4, r29
/* 813EC758 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 813EC75C | 4B FF A8 45 */	bl iplSDChannelTitle_813E6FA0
/* 813EC760 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EC764 | 3B C0 00 01 */	li r30, 0x1
/* 813EC768 | 3B E0 00 00 */	li r31, 0x0
/* 813EC76C | 9B DC 29 D0 */	stb r30, 0x29d0(r28)
/* 813EC770 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC774 | 38 80 00 00 */	li r4, 0x0
/* 813EC778 | 93 FC 00 1C */	stw r31, 0x1c(r28)
/* 813EC77C | 48 12 5B 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC780 | 4B F7 D4 A5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC784 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EC788 | 38 80 00 00 */	li r4, 0x0
/* 813EC78C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC790 | 48 12 5B 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC794 | 7C 7D 1B 78 */	mr r29, r3
/* 813EC798 | 4B F7 60 D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EC79C | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813EC7A0 | 38 80 00 00 */	li r4, 0x0
/* 813EC7A4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813EC7A8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC7AC | 48 12 5B 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC7B0 | 4B F7 D4 75 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC7B4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813EC7B8 | 38 80 00 00 */	li r4, 0x0
/* 813EC7BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC7C0 | 48 12 5B 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC7C4 | 7C 7D 1B 78 */	mr r29, r3
/* 813EC7C8 | 4B F7 60 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EC7CC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EC7D0 | 3C 80 81 65 */	lis r4, lbl_81656696@ha
/* 813EC7D4 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813EC7D8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EC7DC | 38 84 66 96 */	addi r4, r4, lbl_81656696@l
/* 813EC7E0 | 4B F7 EC 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EC7E4 | 9B DC 29 D1 */	stb r30, 0x29d1(r28)
/* 813EC7E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EC7EC | 93 FC 00 2C */	stw r31, 0x2c(r28)
/* 813EC7F0 | 48 20 CD 21 */	bl _restgpr_28
/* 813EC7F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EC7F8 | 7C 08 03 A6 */	mtlr r0
/* 813EC7FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EC800 | 4E 80 00 20 */	blr
.endfn ipl_813EC730

# .text:0x1218 | 0x813EC804 | size: 0x144
.fn ipl_813EC804, global
/* 813EC804 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813EC808 | 7C 08 02 A6 */	mflr r0
/* 813EC80C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813EC810 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 813EC814 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 813EC818 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EC81C | 48 20 CC A9 */	bl _savegpr_28
/* 813EC820 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 813EC824 | 7C 7C 1B 78 */	mr r28, r3
/* 813EC828 | 3C 80 81 65 */	lis r4, lbl_816566AA@ha
/* 813EC82C | 38 A0 00 01 */	li r5, 0x1
/* 813EC830 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813EC834 | 38 84 66 AA */	addi r4, r4, lbl_816566AA@l
/* 813EC838 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC83C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC840 | 7D 89 03 A6 */	mtctr r12
/* 813EC844 | 4E 80 04 21 */	bctrl
/* 813EC848 | 80 DC 00 08 */	lwz r6, 0x8(r28)
/* 813EC84C | 7C 7D 1B 78 */	mr r29, r3
/* 813EC850 | 38 8D 8F 82 */	li r4, lbl_81696FC2@sda21
/* 813EC854 | 38 A0 00 01 */	li r5, 0x1
/* 813EC858 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813EC85C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC860 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC864 | 7D 89 03 A6 */	mtctr r12
/* 813EC868 | 4E 80 04 21 */	bctrl
/* 813EC86C | 80 DC 00 08 */	lwz r6, 0x8(r28)
/* 813EC870 | 7C 7E 1B 78 */	mr r30, r3
/* 813EC874 | 3C 80 81 65 */	lis r4, lbl_816566B3@ha
/* 813EC878 | 38 A0 00 01 */	li r5, 0x1
/* 813EC87C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813EC880 | 38 84 66 B3 */	addi r4, r4, lbl_816566B3@l
/* 813EC884 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EC888 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EC88C | 7D 89 03 A6 */	mtctr r12
/* 813EC890 | 4E 80 04 21 */	bctrl
/* 813EC894 | C0 02 87 D0 */	lfs f0, lbl_81694BD0@sda21(r0)
/* 813EC898 | 7C 7F 1B 78 */	mr r31, r3
/* 813EC89C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813EC8A0 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813EC8A4 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813EC8A8 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813EC8AC | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 813EC8B0 | 4B F4 90 69 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813EC8B4 | 80 7C 2A 6C */	lwz r3, 0x2a6c(r28)
/* 813EC8B8 | 3C 00 43 30 */	lis r0, 0x4330
/* 813EC8BC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813EC8C0 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 813EC8C4 | C8 42 87 D8 */	lfd f2, lbl_81694BD8@sda21(r0)
/* 813EC8C8 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813EC8CC | C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 813EC8D0 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 813EC8D4 | C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 813EC8D8 | EC 80 10 28 */	fsubs f4, f0, f2
/* 813EC8DC | C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 813EC8E0 | C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 813EC8E4 | EC 41 00 2A */	fadds f2, f1, f0
/* 813EC8E8 | C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 813EC8EC | EC 64 00 F2 */	fmuls f3, f4, f3
/* 813EC8F0 | EC 86 28 28 */	fsubs f4, f6, f5
/* 813EC8F4 | C0 22 87 D4 */	lfs f1, lbl_81694BD4@sda21(r0)
/* 813EC8F8 | C0 02 87 D0 */	lfs f0, lbl_81694BD0@sda21(r0)
/* 813EC8FC | EC 43 10 2A */	fadds f2, f3, f2
/* 813EC900 | EC 42 20 28 */	fsubs f2, f2, f4
/* 813EC904 | EF E1 10 2A */	fadds f31, f1, f2
/* 813EC908 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 813EC90C | 40 80 00 08 */	bge .L_813EC914
/* 813EC910 | FF E0 00 90 */	fmr f31, f0
.L_813EC914:
/* 813EC914 | 38 7C 29 FC */	addi r3, r28, 0x29fc
/* 813EC918 | 48 00 00 31 */	bl ipl_813EC948
/* 813EC91C | 38 7C 2A 4C */	addi r3, r28, 0x2a4c
/* 813EC920 | 4B F7 6C AD */	bl init__Q33ipl7utility9BScrollerFv
/* 813EC924 | D3 FC 2A 30 */	stfs f31, 0x2a30(r28)
/* 813EC928 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 813EC92C | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 813EC930 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EC934 | 48 20 CB DD */	bl _restgpr_28
/* 813EC938 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813EC93C | 7C 08 03 A6 */	mtlr r0
/* 813EC940 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813EC944 | 4E 80 00 20 */	blr
.endfn ipl_813EC804

# .text:0x135C | 0x813EC948 | size: 0x20
.fn ipl_813EC948, global
/* 813EC948 | C0 02 87 D0 */	lfs f0, lbl_81694BD0@sda21(r0)
/* 813EC94C | 38 00 00 00 */	li r0, 0x0
/* 813EC950 | 90 03 00 30 */	stw r0, 0x30(r3)
/* 813EC954 | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 813EC958 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 813EC95C | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 813EC960 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813EC964 | 4E 80 00 20 */	blr
.endfn ipl_813EC948

# .text:0x137C | 0x813EC968 | size: 0x84
.fn ipl_813EC968, global
/* 813EC968 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EC96C | 7C 08 02 A6 */	mflr r0
/* 813EC970 | 38 80 00 10 */	li r4, 0x10
/* 813EC974 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EC978 | 38 00 00 00 */	li r0, 0x0
/* 813EC97C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EC980 | 7C 7F 1B 78 */	mr r31, r3
/* 813EC984 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813EC988 | 98 03 2A 70 */	stb r0, 0x2a70(r3)
/* 813EC98C | 98 03 2A 71 */	stb r0, 0x2a71(r3)
/* 813EC990 | 98 03 2A 72 */	stb r0, 0x2a72(r3)
/* 813EC994 | 98 03 2A 73 */	stb r0, 0x2a73(r3)
/* 813EC998 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813EC99C | 48 12 59 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC9A0 | 4B F7 D2 85 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC9A4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EC9A8 | 38 80 00 0E */	li r4, 0xe
/* 813EC9AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EC9B0 | 48 12 59 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EC9B4 | 4B F7 D2 71 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EC9B8 | C0 3F 2A 3C */	lfs f1, 0x2a3c(r31)
/* 813EC9BC | C0 1F 2A 30 */	lfs f0, 0x2a30(r31)
/* 813EC9C0 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813EC9C4 | 7C 00 00 26 */	mfcr r0
/* 813EC9C8 | 54 00 1F FF */	extrwi. r0, r0, 1, 2
/* 813EC9CC | 40 82 00 0C */	bne .L_813EC9D8
/* 813EC9D0 | 7F E3 FB 78 */	mr r3, r31
/* 813EC9D4 | 48 00 01 29 */	bl ipl_813ECAFC
.L_813EC9D8:
/* 813EC9D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EC9DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EC9E0 | 7C 08 03 A6 */	mtlr r0
/* 813EC9E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EC9E8 | 4E 80 00 20 */	blr
.endfn ipl_813EC968

# .text:0x1400 | 0x813EC9EC | size: 0x9C
.fn ipl_813EC9EC, global
/* 813EC9EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EC9F0 | 7C 08 02 A6 */	mflr r0
/* 813EC9F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EC9F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EC9FC | 48 20 CA C5 */	bl _savegpr_27
/* 813ECA00 | 28 04 00 01 */	cmplwi r4, 0x1
/* 813ECA04 | 7C 7B 1B 78 */	mr r27, r3
/* 813ECA08 | 7C 9C 23 78 */	mr r28, r4
/* 813ECA0C | 7C BD 2B 78 */	mr r29, r5
/* 813ECA10 | 7C DE 33 78 */	mr r30, r6
/* 813ECA14 | 7C FF 3B 78 */	mr r31, r7
/* 813ECA18 | 41 82 00 10 */	beq .L_813ECA28
/* 813ECA1C | 28 06 00 01 */	cmplwi r6, 0x1
/* 813ECA20 | 40 82 00 08 */	bne .L_813ECA28
/* 813ECA24 | 48 00 01 4D */	bl ipl_813ECB70
.L_813ECA28:
/* 813ECA28 | 28 1C 00 01 */	cmplwi r28, 0x1
/* 813ECA2C | 40 82 00 14 */	bne .L_813ECA40
/* 813ECA30 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 813ECA34 | 41 82 00 0C */	beq .L_813ECA40
/* 813ECA38 | 7F 63 DB 78 */	mr r3, r27
/* 813ECA3C | 48 00 00 4D */	bl ipl_813ECA88
.L_813ECA40:
/* 813ECA40 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 813ECA44 | 41 82 00 14 */	beq .L_813ECA58
/* 813ECA48 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 813ECA4C | 40 82 00 0C */	bne .L_813ECA58
/* 813ECA50 | 7F 63 DB 78 */	mr r3, r27
/* 813ECA54 | 48 00 01 95 */	bl ipl_813ECBE8
.L_813ECA58:
/* 813ECA58 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 813ECA5C | 40 82 00 14 */	bne .L_813ECA70
/* 813ECA60 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 813ECA64 | 41 82 00 0C */	beq .L_813ECA70
/* 813ECA68 | 7F 63 DB 78 */	mr r3, r27
/* 813ECA6C | 48 00 00 91 */	bl ipl_813ECAFC
.L_813ECA70:
/* 813ECA70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ECA74 | 48 20 CA 99 */	bl _restgpr_27
/* 813ECA78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ECA7C | 7C 08 03 A6 */	mtlr r0
/* 813ECA80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ECA84 | 4E 80 00 20 */	blr
.endfn ipl_813EC9EC

# .text:0x149C | 0x813ECA88 | size: 0x74
.fn ipl_813ECA88, global
/* 813ECA88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECA8C | 7C 08 02 A6 */	mflr r0
/* 813ECA90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECA94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECA98 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECA9C | 7C 7E 1B 78 */	mr r30, r3
/* 813ECAA0 | 88 03 2A 70 */	lbz r0, 0x2a70(r3)
/* 813ECAA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECAA8 | 40 82 00 3C */	bne .L_813ECAE4
/* 813ECAAC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECAB0 | 38 80 00 10 */	li r4, 0x10
/* 813ECAB4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECAB8 | 48 12 58 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECABC | 4B F7 D1 69 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ECAC0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813ECAC4 | 38 80 00 10 */	li r4, 0x10
/* 813ECAC8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECACC | 48 12 58 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECAD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECAD4 | 4B F7 5D 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECAD8 | 38 00 00 01 */	li r0, 0x1
/* 813ECADC | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813ECAE0 | 98 1E 2A 70 */	stb r0, 0x2a70(r30)
.L_813ECAE4:
/* 813ECAE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECAE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECAEC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECAF0 | 7C 08 03 A6 */	mtlr r0
/* 813ECAF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECAF8 | 4E 80 00 20 */	blr
.endfn ipl_813ECA88

# .text:0x1510 | 0x813ECAFC | size: 0x74
.fn ipl_813ECAFC, global
/* 813ECAFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECB00 | 7C 08 02 A6 */	mflr r0
/* 813ECB04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECB08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECB0C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECB10 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECB14 | 88 03 2A 71 */	lbz r0, 0x2a71(r3)
/* 813ECB18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECB1C | 40 82 00 3C */	bne .L_813ECB58
/* 813ECB20 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECB24 | 38 80 00 0E */	li r4, 0xe
/* 813ECB28 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECB2C | 48 12 57 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECB30 | 4B F7 D0 F5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ECB34 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813ECB38 | 38 80 00 0E */	li r4, 0xe
/* 813ECB3C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECB40 | 48 12 57 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECB44 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECB48 | 4B F7 5D 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECB4C | 38 00 00 01 */	li r0, 0x1
/* 813ECB50 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813ECB54 | 98 1E 2A 71 */	stb r0, 0x2a71(r30)
.L_813ECB58:
/* 813ECB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECB5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECB60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECB64 | 7C 08 03 A6 */	mtlr r0
/* 813ECB68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECB6C | 4E 80 00 20 */	blr
.endfn ipl_813ECAFC

# .text:0x1584 | 0x813ECB70 | size: 0x78
.fn ipl_813ECB70, global
/* 813ECB70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECB74 | 7C 08 02 A6 */	mflr r0
/* 813ECB78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECB7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECB80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECB84 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECB88 | 88 03 2A 70 */	lbz r0, 0x2a70(r3)
/* 813ECB8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECB90 | 41 82 00 40 */	beq .L_813ECBD0
/* 813ECB94 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECB98 | 38 80 00 11 */	li r4, 0x11
/* 813ECB9C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECBA0 | 48 12 57 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECBA4 | 4B F7 D0 81 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ECBA8 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813ECBAC | 38 80 00 11 */	li r4, 0x11
/* 813ECBB0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECBB4 | 48 12 57 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECBB8 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECBBC | 4B F7 5C B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECBC0 | 38 60 00 01 */	li r3, 0x1
/* 813ECBC4 | 38 00 00 00 */	li r0, 0x0
/* 813ECBC8 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813ECBCC | 98 1E 2A 70 */	stb r0, 0x2a70(r30)
.L_813ECBD0:
/* 813ECBD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECBD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECBD8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECBDC | 7C 08 03 A6 */	mtlr r0
/* 813ECBE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECBE4 | 4E 80 00 20 */	blr
.endfn ipl_813ECB70

# .text:0x15FC | 0x813ECBE8 | size: 0x78
.fn ipl_813ECBE8, global
/* 813ECBE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECBEC | 7C 08 02 A6 */	mflr r0
/* 813ECBF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECBF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECBF8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECBFC | 7C 7E 1B 78 */	mr r30, r3
/* 813ECC00 | 88 03 2A 71 */	lbz r0, 0x2a71(r3)
/* 813ECC04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECC08 | 41 82 00 40 */	beq .L_813ECC48
/* 813ECC0C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECC10 | 38 80 00 0F */	li r4, 0xf
/* 813ECC14 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECC18 | 48 12 57 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECC1C | 4B F7 D0 09 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ECC20 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813ECC24 | 38 80 00 0F */	li r4, 0xf
/* 813ECC28 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECC2C | 48 12 56 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECC30 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECC34 | 4B F7 5C 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECC38 | 38 60 00 01 */	li r3, 0x1
/* 813ECC3C | 38 00 00 00 */	li r0, 0x0
/* 813ECC40 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813ECC44 | 98 1E 2A 71 */	stb r0, 0x2a71(r30)
.L_813ECC48:
/* 813ECC48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECC4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECC50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECC54 | 7C 08 03 A6 */	mtlr r0
/* 813ECC58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECC5C | 4E 80 00 20 */	blr
.endfn ipl_813ECBE8

# .text:0x1674 | 0x813ECC60 | size: 0x160
.fn ipl_813ECC60, global
/* 813ECC60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECC64 | 7C 08 02 A6 */	mflr r0
/* 813ECC68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECC6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECC70 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECC74 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECC78 | 4B F4 8D 31 */	bl getMasterController__Q23ipl6SystemFv
/* 813ECC7C | 7C 7F 1B 78 */	mr r31, r3
/* 813ECC80 | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813ECC84 | 4B F7 6E 61 */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 813ECC88 | 7C 60 00 34 */	cntlzw r0, r3
/* 813ECC8C | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813ECC90 | 41 82 00 B8 */	beq .L_813ECD48
/* 813ECC94 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813ECC98 | 3C 80 00 01 */	lis r4, 0x1
/* 813ECC9C | 7F E3 FB 78 */	mr r3, r31
/* 813ECCA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813ECCA4 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813ECCA8 | 7D 89 03 A6 */	mtctr r12
/* 813ECCAC | 4E 80 04 21 */	bctrl
/* 813ECCB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECCB4 | 41 82 00 0C */	beq .L_813ECCC0
/* 813ECCB8 | 7F C3 F3 78 */	mr r3, r30
/* 813ECCBC | 48 00 01 05 */	bl ipl_813ECDC0
.L_813ECCC0:
/* 813ECCC0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813ECCC4 | 3C 80 00 01 */	lis r4, 0x1
/* 813ECCC8 | 7F E3 FB 78 */	mr r3, r31
/* 813ECCCC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813ECCD0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813ECCD4 | 7D 89 03 A6 */	mtctr r12
/* 813ECCD8 | 4E 80 04 21 */	bctrl
/* 813ECCDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECCE0 | 40 82 00 0C */	bne .L_813ECCEC
/* 813ECCE4 | 7F C3 F3 78 */	mr r3, r30
/* 813ECCE8 | 48 00 01 99 */	bl ipl_813ECE80
.L_813ECCEC:
/* 813ECCEC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813ECCF0 | 3C 80 40 00 */	lis r4, 0x4000
/* 813ECCF4 | 7F E3 FB 78 */	mr r3, r31
/* 813ECCF8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813ECCFC | 38 84 00 04 */	addi r4, r4, 0x4
/* 813ECD00 | 7D 89 03 A6 */	mtctr r12
/* 813ECD04 | 4E 80 04 21 */	bctrl
/* 813ECD08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECD0C | 41 82 00 0C */	beq .L_813ECD18
/* 813ECD10 | 7F C3 F3 78 */	mr r3, r30
/* 813ECD14 | 48 00 01 0D */	bl ipl_813ECE20
.L_813ECD18:
/* 813ECD18 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813ECD1C | 3C 80 40 00 */	lis r4, 0x4000
/* 813ECD20 | 7F E3 FB 78 */	mr r3, r31
/* 813ECD24 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813ECD28 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813ECD2C | 7D 89 03 A6 */	mtctr r12
/* 813ECD30 | 4E 80 04 21 */	bctrl
/* 813ECD34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECD38 | 40 82 00 70 */	bne .L_813ECDA8
/* 813ECD3C | 7F C3 F3 78 */	mr r3, r30
/* 813ECD40 | 48 00 01 A5 */	bl ipl_813ECEE4
/* 813ECD44 | 48 00 00 64 */	b .L_813ECDA8
.L_813ECD48:
/* 813ECD48 | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813ECD4C | 4B F7 6D AD */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 813ECD50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECD54 | 41 82 00 0C */	beq .L_813ECD60
/* 813ECD58 | 7F C3 F3 78 */	mr r3, r30
/* 813ECD5C | 48 00 00 65 */	bl ipl_813ECDC0
.L_813ECD60:
/* 813ECD60 | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813ECD64 | 4B F7 6D 95 */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 813ECD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECD6C | 40 82 00 0C */	bne .L_813ECD78
/* 813ECD70 | 7F C3 F3 78 */	mr r3, r30
/* 813ECD74 | 48 00 01 0D */	bl ipl_813ECE80
.L_813ECD78:
/* 813ECD78 | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813ECD7C | 4B F7 6D 95 */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 813ECD80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECD84 | 41 82 00 0C */	beq .L_813ECD90
/* 813ECD88 | 7F C3 F3 78 */	mr r3, r30
/* 813ECD8C | 48 00 00 95 */	bl ipl_813ECE20
.L_813ECD90:
/* 813ECD90 | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813ECD94 | 4B F7 6D 7D */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 813ECD98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ECD9C | 40 82 00 0C */	bne .L_813ECDA8
/* 813ECDA0 | 7F C3 F3 78 */	mr r3, r30
/* 813ECDA4 | 48 00 01 41 */	bl ipl_813ECEE4
.L_813ECDA8:
/* 813ECDA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECDAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECDB0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECDB4 | 7C 08 03 A6 */	mtlr r0
/* 813ECDB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECDBC | 4E 80 00 20 */	blr
.endfn ipl_813ECC60

# .text:0x17D4 | 0x813ECDC0 | size: 0x60
.fn ipl_813ECDC0, global
/* 813ECDC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECDC4 | 7C 08 02 A6 */	mflr r0
/* 813ECDC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECDCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECDD0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECDD4 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECDD8 | 88 03 2A 72 */	lbz r0, 0x2a72(r3)
/* 813ECDDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECDE0 | 40 82 00 28 */	bne .L_813ECE08
/* 813ECDE4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECDE8 | 38 80 00 13 */	li r4, 0x13
/* 813ECDEC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECDF0 | 48 12 55 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECDF4 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECDF8 | 4B F7 5A 79 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECDFC | 38 00 00 01 */	li r0, 0x1
/* 813ECE00 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813ECE04 | 98 1E 2A 72 */	stb r0, 0x2a72(r30)
.L_813ECE08:
/* 813ECE08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECE0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECE10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECE14 | 7C 08 03 A6 */	mtlr r0
/* 813ECE18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECE1C | 4E 80 00 20 */	blr
.endfn ipl_813ECDC0

# .text:0x1834 | 0x813ECE20 | size: 0x60
.fn ipl_813ECE20, global
/* 813ECE20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECE24 | 7C 08 02 A6 */	mflr r0
/* 813ECE28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECE2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECE30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECE34 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECE38 | 88 03 2A 73 */	lbz r0, 0x2a73(r3)
/* 813ECE3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECE40 | 40 82 00 28 */	bne .L_813ECE68
/* 813ECE44 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECE48 | 38 80 00 15 */	li r4, 0x15
/* 813ECE4C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECE50 | 48 12 54 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECE54 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECE58 | 4B F7 5A 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECE5C | 38 00 00 01 */	li r0, 0x1
/* 813ECE60 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813ECE64 | 98 1E 2A 73 */	stb r0, 0x2a73(r30)
.L_813ECE68:
/* 813ECE68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECE6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECE70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECE74 | 7C 08 03 A6 */	mtlr r0
/* 813ECE78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECE7C | 4E 80 00 20 */	blr
.endfn ipl_813ECE20

# .text:0x1894 | 0x813ECE80 | size: 0x64
.fn ipl_813ECE80, global
/* 813ECE80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECE84 | 7C 08 02 A6 */	mflr r0
/* 813ECE88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECE8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECE90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECE94 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECE98 | 88 03 2A 72 */	lbz r0, 0x2a72(r3)
/* 813ECE9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECEA0 | 41 82 00 2C */	beq .L_813ECECC
/* 813ECEA4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECEA8 | 38 80 00 14 */	li r4, 0x14
/* 813ECEAC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECEB0 | 48 12 54 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECEB4 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECEB8 | 4B F7 59 B9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECEBC | 38 60 00 01 */	li r3, 0x1
/* 813ECEC0 | 38 00 00 00 */	li r0, 0x0
/* 813ECEC4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813ECEC8 | 98 1E 2A 72 */	stb r0, 0x2a72(r30)
.L_813ECECC:
/* 813ECECC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECED0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECED4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECED8 | 7C 08 03 A6 */	mtlr r0
/* 813ECEDC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECEE0 | 4E 80 00 20 */	blr
.endfn ipl_813ECE80

# .text:0x18F8 | 0x813ECEE4 | size: 0x64
.fn ipl_813ECEE4, global
/* 813ECEE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ECEE8 | 7C 08 02 A6 */	mflr r0
/* 813ECEEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ECEF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ECEF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ECEF8 | 7C 7E 1B 78 */	mr r30, r3
/* 813ECEFC | 88 03 2A 73 */	lbz r0, 0x2a73(r3)
/* 813ECF00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECF04 | 41 82 00 2C */	beq .L_813ECF30
/* 813ECF08 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813ECF0C | 38 80 00 16 */	li r4, 0x16
/* 813ECF10 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECF14 | 48 12 54 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECF18 | 7C 7F 1B 78 */	mr r31, r3
/* 813ECF1C | 4B F7 59 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ECF20 | 38 60 00 01 */	li r3, 0x1
/* 813ECF24 | 38 00 00 00 */	li r0, 0x0
/* 813ECF28 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813ECF2C | 98 1E 2A 73 */	stb r0, 0x2a73(r30)
.L_813ECF30:
/* 813ECF30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ECF34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ECF38 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ECF3C | 7C 08 03 A6 */	mtlr r0
/* 813ECF40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ECF44 | 4E 80 00 20 */	blr
.endfn ipl_813ECEE4

# .text:0x195C | 0x813ECF48 | size: 0x13C
.fn ipl_813ECF48, global
/* 813ECF48 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813ECF4C | 7C 08 02 A6 */	mflr r0
/* 813ECF50 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813ECF54 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ECF58 | 48 20 C5 61 */	bl _savegpr_25
/* 813ECF5C | 3B 60 00 00 */	li r27, 0x0
/* 813ECF60 | 3F A0 81 65 */	lis r29, lbl_81655CE8@ha
/* 813ECF64 | 7C 79 1B 78 */	mr r25, r3
/* 813ECF68 | 3B E0 00 00 */	li r31, 0x0
/* 813ECF6C | 7F 7C DB 78 */	mr r28, r27
/* 813ECF70 | 3B BD 5C E8 */	addi r29, r29, lbl_81655CE8@l
/* 813ECF74 | 3B C0 00 01 */	li r30, 0x1
.L_813ECF78:
/* 813ECF78 | 7C 79 FA 14 */	add r3, r25, r31
/* 813ECF7C | 80 03 00 50 */	lwz r0, 0x50(r3)
/* 813ECF80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ECF84 | 41 82 00 D8 */	beq .L_813ED05C
/* 813ECF88 | 93 83 00 50 */	stw r28, 0x50(r3)
/* 813ECF8C | 38 A0 00 01 */	li r5, 0x1
/* 813ECF90 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813ECF94 | 7C 9D F8 2E */	lwzx r4, r29, r31
/* 813ECF98 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ECF9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ECFA0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ECFA4 | 7D 89 03 A6 */	mtctr r12
/* 813ECFA8 | 4E 80 04 21 */	bctrl
/* 813ECFAC | 7C 64 1B 78 */	mr r4, r3
/* 813ECFB0 | 80 79 00 18 */	lwz r3, 0x18(r25)
/* 813ECFB4 | 4B F7 E2 65 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813ECFB8 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 813ECFBC | 3B 40 00 00 */	li r26, 0x0
/* 813ECFC0 | 41 82 00 24 */	beq .L_813ECFE4
/* 813ECFC4 | 40 80 00 14 */	bge .L_813ECFD8
/* 813ECFC8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813ECFCC | 41 82 00 48 */	beq .L_813ED014
/* 813ECFD0 | 40 80 00 5C */	bge .L_813ED02C
/* 813ECFD4 | 48 00 00 6C */	b .L_813ED040
.L_813ECFD8:
/* 813ECFD8 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 813ECFDC | 40 80 00 64 */	bge .L_813ED040
/* 813ECFE0 | 48 00 00 1C */	b .L_813ECFFC
.L_813ECFE4:
/* 813ECFE4 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813ECFE8 | 38 80 00 03 */	li r4, 0x3
/* 813ECFEC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ECFF0 | 48 12 53 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ECFF4 | 7C 7A 1B 78 */	mr r26, r3
/* 813ECFF8 | 48 00 00 48 */	b .L_813ED040
.L_813ECFFC:
/* 813ECFFC | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813ED000 | 38 80 00 06 */	li r4, 0x6
/* 813ED004 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED008 | 48 12 53 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED00C | 7C 7A 1B 78 */	mr r26, r3
/* 813ED010 | 48 00 00 30 */	b .L_813ED040
.L_813ED014:
/* 813ED014 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813ED018 | 38 80 00 0C */	li r4, 0xc
/* 813ED01C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED020 | 48 12 52 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED024 | 7C 7A 1B 78 */	mr r26, r3
/* 813ED028 | 48 00 00 18 */	b .L_813ED040
.L_813ED02C:
/* 813ED02C | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813ED030 | 38 80 00 09 */	li r4, 0x9
/* 813ED034 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED038 | 48 12 52 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED03C | 7C 7A 1B 78 */	mr r26, r3
.L_813ED040:
/* 813ED040 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813ED044 | 41 82 00 18 */	beq .L_813ED05C
/* 813ED048 | 7F 43 D3 78 */	mr r3, r26
/* 813ED04C | 4B F7 CB D9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED050 | 7F 43 D3 78 */	mr r3, r26
/* 813ED054 | 4B F7 58 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED058 | 93 DA 00 14 */	stw r30, 0x14(r26)
.L_813ED05C:
/* 813ED05C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813ED060 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813ED064 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 813ED068 | 41 80 FF 10 */	blt .L_813ECF78
/* 813ED06C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ED070 | 48 20 C4 95 */	bl _restgpr_25
/* 813ED074 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813ED078 | 7C 08 03 A6 */	mtlr r0
/* 813ED07C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813ED080 | 4E 80 00 20 */	blr
.endfn ipl_813ECF48

# .text:0x1A98 | 0x813ED084 | size: 0x268
.fn ipl_813ED084, global
/* 813ED084 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813ED088 | 7C 08 02 A6 */	mflr r0
/* 813ED08C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813ED090 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ED094 | 48 20 C4 35 */	bl _savegpr_29
/* 813ED098 | 7C 7D 1B 78 */	mr r29, r3
/* 813ED09C | 3B C0 00 00 */	li r30, 0x0
/* 813ED0A0 | 48 00 02 4D */	bl ipl_813ED2EC
/* 813ED0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED0A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813ED0AC | 40 82 01 F8 */	bne .L_813ED2A4
/* 813ED0B0 | 80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 813ED0B4 | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813ED0B8 | 38 04 FF F6 */	subi r0, r4, 0xa
/* 813ED0BC | 7C 00 00 34 */	cntlzw r0, r0
/* 813ED0C0 | 54 04 D9 7E */	srwi r4, r0, 5
/* 813ED0C4 | 4B FA EB 51 */	bl calc__Q33ipl5scene8scrollerFb
/* 813ED0C8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813ED0CC | 40 82 00 0C */	bne .L_813ED0D8
/* 813ED0D0 | 7F A3 EB 78 */	mr r3, r29
/* 813ED0D4 | 4B FF FE 75 */	bl ipl_813ECF48
.L_813ED0D8:
/* 813ED0D8 | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813ED0DC | 4B F7 6E E9 */	bl get__Q33ipl7utility8ScrollerCFv
/* 813ED0E0 | C0 02 87 D0 */	lfs f0, lbl_81694BD0@sda21(r0)
/* 813ED0E4 | 38 8D 8F 89 */	li r4, lbl_81696FC9@sda21
/* 813ED0E8 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 813ED0EC | 38 A0 00 01 */	li r5, 0x1
/* 813ED0F0 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813ED0F4 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813ED0F8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813ED0FC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ED100 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ED104 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ED108 | 7D 89 03 A6 */	mtctr r12
/* 813ED10C | 4E 80 04 21 */	bctrl
/* 813ED110 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813ED114 | 4B F9 55 BD */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813ED118 | 80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 813ED11C | 28 00 00 19 */	cmplwi r0, 0x19
/* 813ED120 | 41 81 01 84 */	bgt .L_813ED2A4
/* 813ED124 | 3C 60 81 65 */	lis r3, jumptable_816566BC@ha
/* 813ED128 | 54 00 10 3A */	slwi r0, r0, 2
/* 813ED12C | 38 63 66 BC */	addi r3, r3, jumptable_816566BC@l
/* 813ED130 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813ED134 | 7C 69 03 A6 */	mtctr r3
/* 813ED138 | 4E 80 04 20 */	bctr
.L_813ED13C:
/* 813ED13C | 7F A3 EB 78 */	mr r3, r29
/* 813ED140 | 48 00 06 79 */	bl ipl_813ED7B8
/* 813ED144 | 48 00 01 60 */	b .L_813ED2A4
.L_813ED148:
/* 813ED148 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 813ED14C | 4B F7 DE 41 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813ED150 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 813ED154 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ED158 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813ED15C | 7D 89 03 A6 */	mtctr r12
/* 813ED160 | 4E 80 04 21 */	bctrl
/* 813ED164 | 48 00 01 40 */	b .L_813ED2A4
.L_813ED168:
/* 813ED168 | 7F A3 EB 78 */	mr r3, r29
/* 813ED16C | 48 00 06 F1 */	bl ipl_813ED85C
/* 813ED170 | 48 00 01 34 */	b .L_813ED2A4
.L_813ED174:
/* 813ED174 | 7F A3 EB 78 */	mr r3, r29
/* 813ED178 | 48 00 07 A9 */	bl ipl_813ED920
/* 813ED17C | 7C 7E 1B 78 */	mr r30, r3
/* 813ED180 | 48 00 01 24 */	b .L_813ED2A4
.L_813ED184:
/* 813ED184 | 7F A3 EB 78 */	mr r3, r29
/* 813ED188 | 48 00 08 BD */	bl ipl_813EDA44
/* 813ED18C | 48 00 01 18 */	b .L_813ED2A4
.L_813ED190:
/* 813ED190 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813ED194 | 4B F7 DD F9 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813ED198 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813ED19C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ED1A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813ED1A4 | 7D 89 03 A6 */	mtctr r12
/* 813ED1A8 | 4E 80 04 21 */	bctrl
/* 813ED1AC | 48 00 00 F8 */	b .L_813ED2A4
.L_813ED1B0:
/* 813ED1B0 | 7F A3 EB 78 */	mr r3, r29
/* 813ED1B4 | 48 00 09 A1 */	bl ipl_813EDB54
/* 813ED1B8 | 48 00 00 EC */	b .L_813ED2A4
.L_813ED1BC:
/* 813ED1BC | 7F A3 EB 78 */	mr r3, r29
/* 813ED1C0 | 48 00 0A 0D */	bl ipl_813EDBCC
/* 813ED1C4 | 48 00 00 E0 */	b .L_813ED2A4
.L_813ED1C8:
/* 813ED1C8 | 7F A3 EB 78 */	mr r3, r29
/* 813ED1CC | 48 00 0A C1 */	bl ipl_813EDC8C
/* 813ED1D0 | 48 00 00 D4 */	b .L_813ED2A4
.L_813ED1D4:
/* 813ED1D4 | 7F A3 EB 78 */	mr r3, r29
/* 813ED1D8 | 48 00 0D 2D */	bl ipl_813EDF04
/* 813ED1DC | 48 00 00 C8 */	b .L_813ED2A4
.L_813ED1E0:
/* 813ED1E0 | 7F A3 EB 78 */	mr r3, r29
/* 813ED1E4 | 48 00 0D C5 */	bl ipl_813EDFA8
/* 813ED1E8 | 48 00 00 BC */	b .L_813ED2A4
.L_813ED1EC:
/* 813ED1EC | 7F A3 EB 78 */	mr r3, r29
/* 813ED1F0 | 48 00 0E E9 */	bl ipl_813EE0D8
/* 813ED1F4 | 48 00 00 B0 */	b .L_813ED2A4
.L_813ED1F8:
/* 813ED1F8 | 7F A3 EB 78 */	mr r3, r29
/* 813ED1FC | 48 00 0F BD */	bl ipl_813EE1B8
/* 813ED200 | 48 00 00 A4 */	b .L_813ED2A4
.L_813ED204:
/* 813ED204 | 7F A3 EB 78 */	mr r3, r29
/* 813ED208 | 48 00 11 95 */	bl ipl_813EE39C
/* 813ED20C | 48 00 00 98 */	b .L_813ED2A4
.L_813ED210:
/* 813ED210 | 7F A3 EB 78 */	mr r3, r29
/* 813ED214 | 48 00 12 75 */	bl ipl_813EE488
/* 813ED218 | 48 00 00 8C */	b .L_813ED2A4
.L_813ED21C:
/* 813ED21C | 7F A3 EB 78 */	mr r3, r29
/* 813ED220 | 48 00 14 2D */	bl ipl_813EE64C
/* 813ED224 | 48 00 00 80 */	b .L_813ED2A4
.L_813ED228:
/* 813ED228 | 7F A3 EB 78 */	mr r3, r29
/* 813ED22C | 48 00 15 4D */	bl ipl_813EE778
/* 813ED230 | 48 00 00 74 */	b .L_813ED2A4
.L_813ED234:
/* 813ED234 | 7F A3 EB 78 */	mr r3, r29
/* 813ED238 | 48 00 15 E1 */	bl ipl_813EE818
/* 813ED23C | 48 00 00 68 */	b .L_813ED2A4
.L_813ED240:
/* 813ED240 | 7F A3 EB 78 */	mr r3, r29
/* 813ED244 | 48 00 16 FD */	bl ipl_813EE940
/* 813ED248 | 48 00 00 5C */	b .L_813ED2A4
.L_813ED24C:
/* 813ED24C | 7F A3 EB 78 */	mr r3, r29
/* 813ED250 | 48 00 17 D9 */	bl ipl_813EEA28
/* 813ED254 | 48 00 00 50 */	b .L_813ED2A4
.L_813ED258:
/* 813ED258 | 7F A3 EB 78 */	mr r3, r29
/* 813ED25C | 48 00 18 51 */	bl ipl_813EEAAC
/* 813ED260 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED264 | 48 00 00 40 */	b .L_813ED2A4
.L_813ED268:
/* 813ED268 | 7F A3 EB 78 */	mr r3, r29
/* 813ED26C | 48 00 19 29 */	bl ipl_813EEB94
/* 813ED270 | 48 00 00 34 */	b .L_813ED2A4
.L_813ED274:
/* 813ED274 | 7F A3 EB 78 */	mr r3, r29
/* 813ED278 | 48 00 1A 65 */	bl ipl_813EECDC
/* 813ED27C | 7C 7E 1B 78 */	mr r30, r3
/* 813ED280 | 48 00 00 24 */	b .L_813ED2A4
.L_813ED284:
/* 813ED284 | 7F A3 EB 78 */	mr r3, r29
/* 813ED288 | 48 00 1B 71 */	bl ipl_813EEDF8
/* 813ED28C | 48 00 00 18 */	b .L_813ED2A4
.L_813ED290:
/* 813ED290 | 7F A3 EB 78 */	mr r3, r29
/* 813ED294 | 48 00 1B DD */	bl ipl_813EEE70
/* 813ED298 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED29C | 48 00 00 08 */	b .L_813ED2A4
.L_813ED2A0:
/* 813ED2A0 | 3B C0 00 01 */	li r30, 0x1
.L_813ED2A4:
/* 813ED2A4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813ED2A8 | 4B F7 D4 5D */	bl calc__Q33ipl6layout6ObjectFv
/* 813ED2AC | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813ED2B0 | 4B F7 D4 55 */	bl calc__Q33ipl6layout6ObjectFv
/* 813ED2B4 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813ED2B8 | 4B F7 D4 4D */	bl calc__Q33ipl6layout6ObjectFv
/* 813ED2BC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED2C0 | 4B F7 D4 45 */	bl calc__Q33ipl6layout6ObjectFv
/* 813ED2C4 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 813ED2C8 | 38 60 00 01 */	li r3, 0x1
/* 813ED2CC | 41 82 00 08 */	beq .L_813ED2D4
/* 813ED2D0 | 7F C3 F3 78 */	mr r3, r30
.L_813ED2D4:
/* 813ED2D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ED2D8 | 48 20 C2 3D */	bl _restgpr_29
/* 813ED2DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813ED2E0 | 7C 08 03 A6 */	mtlr r0
/* 813ED2E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813ED2E8 | 4E 80 00 20 */	blr
.endfn ipl_813ED084

# .text:0x1D00 | 0x813ED2EC | size: 0x4CC
.fn ipl_813ED2EC, global
/* 813ED2EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ED2F0 | 7C 08 02 A6 */	mflr r0
/* 813ED2F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ED2F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ED2FC | 48 20 C1 C9 */	bl _savegpr_28
/* 813ED300 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813ED304 | 7C 7D 1B 78 */	mr r29, r3
/* 813ED308 | 3B C0 00 00 */	li r30, 0x0
/* 813ED30C | 83 E4 07 00 */	lwz r31, 0x700(r4)
/* 813ED310 | 38 1F FF FF */	subi r0, r31, 0x1
/* 813ED314 | 28 80 00 01 */	cmplwi cr1, r0, 0x1
/* 813ED318 | 41 85 04 74 */	bgt cr1, .L_813ED78C
/* 813ED31C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 813ED320 | 28 00 00 16 */	cmplwi r0, 0x16
/* 813ED324 | 41 81 04 68 */	bgt .L_813ED78C
/* 813ED328 | 3C 80 81 65 */	lis r4, jumptable_81656724@ha
/* 813ED32C | 54 00 10 3A */	slwi r0, r0, 2
/* 813ED330 | 38 84 67 24 */	addi r4, r4, jumptable_81656724@l
/* 813ED334 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813ED338 | 7C 89 03 A6 */	mtctr r4
/* 813ED33C | 4E 80 04 20 */	bctr
.L_813ED340:
/* 813ED340 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813ED344 | 38 80 00 01 */	li r4, 0x1
/* 813ED348 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED34C | 48 12 4F CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED350 | 4B F7 C8 D5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED354 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813ED358 | 38 80 00 01 */	li r4, 0x1
/* 813ED35C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED360 | 48 12 4F B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED364 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED368 | 4B F7 55 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED36C | 3B 80 00 01 */	li r28, 0x1
/* 813ED370 | 38 80 00 01 */	li r4, 0x1
/* 813ED374 | 93 9E 00 14 */	stw r28, 0x14(r30)
/* 813ED378 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED37C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED380 | 48 12 4F 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED384 | 4B F7 C8 A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED388 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED38C | 38 80 00 01 */	li r4, 0x1
/* 813ED390 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED394 | 48 12 4F 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED398 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED39C | 4B F7 54 D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED3A0 | 93 9E 00 14 */	stw r28, 0x14(r30)
/* 813ED3A4 | 38 60 00 00 */	li r3, 0x0
/* 813ED3A8 | 38 00 00 03 */	li r0, 0x3
/* 813ED3AC | 3B C0 00 01 */	li r30, 0x1
/* 813ED3B0 | 98 7D 29 D1 */	stb r3, 0x29d1(r29)
/* 813ED3B4 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 813ED3B8 | 48 00 03 D4 */	b .L_813ED78C
.L_813ED3BC:
/* 813ED3BC | 88 03 29 D1 */	lbz r0, 0x29d1(r3)
/* 813ED3C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED3C4 | 41 82 00 40 */	beq .L_813ED404
/* 813ED3C8 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813ED3CC | 38 80 00 01 */	li r4, 0x1
/* 813ED3D0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED3D4 | 48 12 4F 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED3D8 | 4B F7 C8 4D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED3DC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED3E0 | 38 80 00 01 */	li r4, 0x1
/* 813ED3E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED3E8 | 48 12 4F 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED3EC | 7C 7C 1B 78 */	mr r28, r3
/* 813ED3F0 | 4B F7 54 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED3F4 | 38 60 00 01 */	li r3, 0x1
/* 813ED3F8 | 38 00 00 00 */	li r0, 0x0
/* 813ED3FC | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 813ED400 | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
.L_813ED404:
/* 813ED404 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813ED408 | 38 80 00 01 */	li r4, 0x1
/* 813ED40C | 4B F7 D6 C5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED414 | 40 82 00 20 */	bne .L_813ED434
/* 813ED418 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED41C | 38 80 00 01 */	li r4, 0x1
/* 813ED420 | 4B F7 D6 B1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED428 | 40 82 00 0C */	bne .L_813ED434
/* 813ED42C | 3B C0 00 02 */	li r30, 0x2
/* 813ED430 | 48 00 03 5C */	b .L_813ED78C
.L_813ED434:
/* 813ED434 | 3B C0 00 01 */	li r30, 0x1
/* 813ED438 | 48 00 03 54 */	b .L_813ED78C
.L_813ED43C:
/* 813ED43C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813ED440 | 38 80 00 01 */	li r4, 0x1
/* 813ED444 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED448 | 48 12 4E D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED44C | 4B F7 C7 D9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED450 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813ED454 | 38 80 00 01 */	li r4, 0x1
/* 813ED458 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED45C | 48 12 4E BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED460 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED464 | 4B F7 54 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED468 | 3B 80 00 01 */	li r28, 0x1
/* 813ED46C | 38 80 00 01 */	li r4, 0x1
/* 813ED470 | 93 9E 00 14 */	stw r28, 0x14(r30)
/* 813ED474 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED478 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED47C | 48 12 4E 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED480 | 4B F7 C7 A5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED484 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED488 | 38 80 00 01 */	li r4, 0x1
/* 813ED48C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED490 | 48 12 4E 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED494 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED498 | 4B F7 53 D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED49C | 93 9E 00 14 */	stw r28, 0x14(r30)
/* 813ED4A0 | 38 60 00 00 */	li r3, 0x0
/* 813ED4A4 | 38 00 00 07 */	li r0, 0x7
/* 813ED4A8 | 3B C0 00 01 */	li r30, 0x1
/* 813ED4AC | 98 7D 29 D1 */	stb r3, 0x29d1(r29)
/* 813ED4B0 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 813ED4B4 | 48 00 02 D8 */	b .L_813ED78C
.L_813ED4B8:
/* 813ED4B8 | 88 03 29 D1 */	lbz r0, 0x29d1(r3)
/* 813ED4BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED4C0 | 41 82 00 40 */	beq .L_813ED500
/* 813ED4C4 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813ED4C8 | 38 80 00 01 */	li r4, 0x1
/* 813ED4CC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED4D0 | 48 12 4E 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED4D4 | 4B F7 C7 51 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED4D8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED4DC | 38 80 00 01 */	li r4, 0x1
/* 813ED4E0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED4E4 | 48 12 4E 35 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED4E8 | 7C 7C 1B 78 */	mr r28, r3
/* 813ED4EC | 4B F7 53 85 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED4F0 | 38 60 00 01 */	li r3, 0x1
/* 813ED4F4 | 38 00 00 00 */	li r0, 0x0
/* 813ED4F8 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 813ED4FC | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
.L_813ED500:
/* 813ED500 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813ED504 | 38 80 00 01 */	li r4, 0x1
/* 813ED508 | 4B F7 D5 C9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED50C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED510 | 40 82 00 20 */	bne .L_813ED530
/* 813ED514 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED518 | 38 80 00 01 */	li r4, 0x1
/* 813ED51C | 4B F7 D5 B5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED524 | 40 82 00 0C */	bne .L_813ED530
/* 813ED528 | 3B C0 00 02 */	li r30, 0x2
/* 813ED52C | 48 00 02 60 */	b .L_813ED78C
.L_813ED530:
/* 813ED530 | 3B C0 00 01 */	li r30, 0x1
/* 813ED534 | 48 00 02 58 */	b .L_813ED78C
.L_813ED538:
/* 813ED538 | 38 00 00 0C */	li r0, 0xc
/* 813ED53C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813ED540 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 813ED544 | 38 80 00 01 */	li r4, 0x1
/* 813ED548 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813ED54C | 48 12 4D CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED550 | 4B F7 C6 D5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED554 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813ED558 | 38 80 00 01 */	li r4, 0x1
/* 813ED55C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED560 | 48 12 4D B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED564 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED568 | 4B F7 53 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED56C | 3B 80 00 01 */	li r28, 0x1
/* 813ED570 | 38 80 00 01 */	li r4, 0x1
/* 813ED574 | 93 9E 00 14 */	stw r28, 0x14(r30)
/* 813ED578 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED57C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED580 | 48 12 4D 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED584 | 4B F7 C6 A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED588 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED58C | 38 80 00 01 */	li r4, 0x1
/* 813ED590 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED594 | 48 12 4D 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED598 | 7C 7E 1B 78 */	mr r30, r3
/* 813ED59C | 4B F7 52 D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED5A0 | 93 9E 00 14 */	stw r28, 0x14(r30)
/* 813ED5A4 | 38 00 00 00 */	li r0, 0x0
/* 813ED5A8 | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813ED5AC | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
/* 813ED5B0 | 4B FF F3 99 */	bl ipl_813EC948
/* 813ED5B4 | 38 7D 2A 4C */	addi r3, r29, 0x2a4c
/* 813ED5B8 | 4B F7 60 3D */	bl iplUtility_813635F4
/* 813ED5BC | 88 1D 2A 70 */	lbz r0, 0x2a70(r29)
/* 813ED5C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED5C4 | 41 82 00 0C */	beq .L_813ED5D0
/* 813ED5C8 | 7F A3 EB 78 */	mr r3, r29
/* 813ED5CC | 4B FF F5 A5 */	bl ipl_813ECB70
.L_813ED5D0:
/* 813ED5D0 | 88 1D 2A 71 */	lbz r0, 0x2a71(r29)
/* 813ED5D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED5D8 | 41 82 00 0C */	beq .L_813ED5E4
/* 813ED5DC | 7F A3 EB 78 */	mr r3, r29
/* 813ED5E0 | 4B FF F6 09 */	bl ipl_813ECBE8
.L_813ED5E4:
/* 813ED5E4 | 3B C0 00 01 */	li r30, 0x1
/* 813ED5E8 | 48 00 01 A4 */	b .L_813ED78C
.L_813ED5EC:
/* 813ED5EC | 88 03 29 D1 */	lbz r0, 0x29d1(r3)
/* 813ED5F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED5F4 | 41 82 00 50 */	beq .L_813ED644
/* 813ED5F8 | 38 63 29 FC */	addi r3, r3, 0x29fc
/* 813ED5FC | 4B FF F3 4D */	bl ipl_813EC948
/* 813ED600 | 38 7D 2A 4C */	addi r3, r29, 0x2a4c
/* 813ED604 | 4B F7 5F F1 */	bl iplUtility_813635F4
/* 813ED608 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED60C | 38 80 00 01 */	li r4, 0x1
/* 813ED610 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED614 | 48 12 4D 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED618 | 4B F7 C6 0D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED61C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED620 | 38 80 00 01 */	li r4, 0x1
/* 813ED624 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED628 | 48 12 4C F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED62C | 7C 7C 1B 78 */	mr r28, r3
/* 813ED630 | 4B F7 52 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED634 | 38 60 00 01 */	li r3, 0x1
/* 813ED638 | 38 00 00 00 */	li r0, 0x0
/* 813ED63C | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 813ED640 | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
.L_813ED644:
/* 813ED644 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813ED648 | 38 80 00 01 */	li r4, 0x1
/* 813ED64C | 4B F7 D4 85 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED654 | 40 82 00 20 */	bne .L_813ED674
/* 813ED658 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED65C | 38 80 00 01 */	li r4, 0x1
/* 813ED660 | 4B F7 D4 71 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED668 | 40 82 00 0C */	bne .L_813ED674
/* 813ED66C | 3B C0 00 02 */	li r30, 0x2
/* 813ED670 | 48 00 01 1C */	b .L_813ED78C
.L_813ED674:
/* 813ED674 | 3B C0 00 01 */	li r30, 0x1
/* 813ED678 | 48 00 01 14 */	b .L_813ED78C
.L_813ED67C:
/* 813ED67C | 41 85 00 BC */	bgt cr1, .L_813ED738
/* 813ED680 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813ED684 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813ED688 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813ED68C | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813ED690 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813ED694 | 40 82 00 4C */	bne .L_813ED6E0
/* 813ED698 | 7C 83 23 78 */	mr r3, r4
/* 813ED69C | 4B F5 A2 69 */	bl terminate__Q23ipl12DialogWindowFv
/* 813ED6A0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED6A4 | 38 80 00 01 */	li r4, 0x1
/* 813ED6A8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED6AC | 48 12 4C 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED6B0 | 4B F7 C5 75 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED6B4 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED6B8 | 38 80 00 01 */	li r4, 0x1
/* 813ED6BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED6C0 | 48 12 4C 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED6C4 | 7C 7C 1B 78 */	mr r28, r3
/* 813ED6C8 | 4B F7 51 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED6CC | 38 60 00 01 */	li r3, 0x1
/* 813ED6D0 | 38 00 00 00 */	li r0, 0x0
/* 813ED6D4 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 813ED6D8 | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
/* 813ED6DC | 48 00 00 5C */	b .L_813ED738
.L_813ED6E0:
/* 813ED6E0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813ED6E4 | 41 82 00 0C */	beq .L_813ED6F0
/* 813ED6E8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813ED6EC | 40 82 00 4C */	bne .L_813ED738
.L_813ED6F0:
/* 813ED6F0 | 88 03 29 D1 */	lbz r0, 0x29d1(r3)
/* 813ED6F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED6F8 | 41 82 00 40 */	beq .L_813ED738
/* 813ED6FC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813ED700 | 38 80 00 01 */	li r4, 0x1
/* 813ED704 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED708 | 48 12 4C 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED70C | 4B F7 C5 19 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED710 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED714 | 38 80 00 01 */	li r4, 0x1
/* 813ED718 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED71C | 48 12 4B FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED720 | 7C 7C 1B 78 */	mr r28, r3
/* 813ED724 | 4B F7 51 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED728 | 38 60 00 01 */	li r3, 0x1
/* 813ED72C | 38 00 00 00 */	li r0, 0x0
/* 813ED730 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 813ED734 | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
.L_813ED738:
/* 813ED738 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813ED73C | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813ED740 | 80 7C 00 AC */	lwz r3, 0xac(r28)
/* 813ED744 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813ED748 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813ED74C | 41 82 00 3C */	beq .L_813ED788
/* 813ED750 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED754 | 38 80 00 01 */	li r4, 0x1
/* 813ED758 | 4B F7 D3 79 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED760 | 40 82 00 28 */	bne .L_813ED788
/* 813ED764 | 80 7C 00 AC */	lwz r3, 0xac(r28)
/* 813ED768 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813ED76C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813ED770 | 41 82 00 1C */	beq .L_813ED78C
/* 813ED774 | 38 1F FF FF */	subi r0, r31, 0x1
/* 813ED778 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813ED77C | 41 81 00 10 */	bgt .L_813ED78C
/* 813ED780 | 3B C0 00 02 */	li r30, 0x2
/* 813ED784 | 48 00 00 08 */	b .L_813ED78C
.L_813ED788:
/* 813ED788 | 3B C0 00 01 */	li r30, 0x1
.L_813ED78C:
/* 813ED78C | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813ED790 | 40 82 00 0C */	bne .L_813ED79C
/* 813ED794 | 38 00 00 06 */	li r0, 0x6
/* 813ED798 | 90 1D 00 2C */	stw r0, 0x2c(r29)
.L_813ED79C:
/* 813ED79C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ED7A0 | 7F C3 F3 78 */	mr r3, r30
/* 813ED7A4 | 48 20 BD 6D */	bl _restgpr_28
/* 813ED7A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ED7AC | 7C 08 03 A6 */	mtlr r0
/* 813ED7B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ED7B4 | 4E 80 00 20 */	blr
.endfn ipl_813ED2EC

# .text:0x21CC | 0x813ED7B8 | size: 0xA4
.fn ipl_813ED7B8, global
/* 813ED7B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ED7BC | 7C 08 02 A6 */	mflr r0
/* 813ED7C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ED7C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ED7C8 | 48 20 BC F9 */	bl _savegpr_27
/* 813ED7CC | 7C 7B 1B 78 */	mr r27, r3
/* 813ED7D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813ED7D4 | 38 80 FF FF */	li r4, -0x1
/* 813ED7D8 | 4B F7 D2 F9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED7E0 | 40 82 00 64 */	bne .L_813ED844
/* 813ED7E4 | 3B 80 00 00 */	li r28, 0x0
/* 813ED7E8 | 3F C0 81 65 */	lis r30, lbl_81655CA0@ha
/* 813ED7EC | 7F 9D E3 78 */	mr r29, r28
/* 813ED7F0 | 3B E0 00 00 */	li r31, 0x0
/* 813ED7F4 | 3B DE 5C A0 */	addi r30, r30, lbl_81655CA0@l
.L_813ED7F8:
/* 813ED7F8 | 7C 7B FA 14 */	add r3, r27, r31
/* 813ED7FC | 38 A0 00 01 */	li r5, 0x1
/* 813ED800 | 93 A3 00 30 */	stw r29, 0x30(r3)
/* 813ED804 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813ED808 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813ED80C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ED810 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ED814 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ED818 | 7D 89 03 A6 */	mtctr r12
/* 813ED81C | 4E 80 04 21 */	bctrl
/* 813ED820 | 7C 64 1B 78 */	mr r4, r3
/* 813ED824 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 813ED828 | 4B F7 D9 F1 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813ED82C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813ED830 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813ED834 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813ED838 | 41 80 FF C0 */	blt .L_813ED7F8
/* 813ED83C | 38 00 00 01 */	li r0, 0x1
/* 813ED840 | 90 1B 00 1C */	stw r0, 0x1c(r27)
.L_813ED844:
/* 813ED844 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ED848 | 48 20 BC C5 */	bl _restgpr_27
/* 813ED84C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ED850 | 7C 08 03 A6 */	mtlr r0
/* 813ED854 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ED858 | 4E 80 00 20 */	blr
.endfn ipl_813ED7B8

# .text:0x2270 | 0x813ED85C | size: 0xC4
.fn ipl_813ED85C, global
/* 813ED85C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ED860 | 7C 08 02 A6 */	mflr r0
/* 813ED864 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ED868 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ED86C | 48 20 BC 5D */	bl _savegpr_29
/* 813ED870 | 7C 7D 1B 78 */	mr r29, r3
/* 813ED874 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813ED878 | 38 80 FF FF */	li r4, -0x1
/* 813ED87C | 4B F7 D2 55 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED884 | 40 82 00 84 */	bne .L_813ED908
/* 813ED888 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813ED88C | 38 80 00 01 */	li r4, 0x1
/* 813ED890 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED894 | 48 12 4A 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED898 | 4B F7 C3 8D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED89C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813ED8A0 | 38 80 00 01 */	li r4, 0x1
/* 813ED8A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED8A8 | 48 12 4A 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED8AC | 7C 7E 1B 78 */	mr r30, r3
/* 813ED8B0 | 4B F7 4F C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED8B4 | 3B E0 00 01 */	li r31, 0x1
/* 813ED8B8 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813ED8BC | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 813ED8C0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813ED8C4 | 40 82 00 3C */	bne .L_813ED900
/* 813ED8C8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED8CC | 38 80 00 01 */	li r4, 0x1
/* 813ED8D0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED8D4 | 48 12 4A 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED8D8 | 4B F7 C3 4D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED8DC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813ED8E0 | 38 80 00 01 */	li r4, 0x1
/* 813ED8E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED8E8 | 48 12 4A 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED8EC | 7C 7E 1B 78 */	mr r30, r3
/* 813ED8F0 | 4B F7 4F 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED8F4 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813ED8F8 | 38 00 00 00 */	li r0, 0x0
/* 813ED8FC | 98 1D 29 D1 */	stb r0, 0x29d1(r29)
.L_813ED900:
/* 813ED900 | 38 00 00 03 */	li r0, 0x3
/* 813ED904 | 90 1D 00 1C */	stw r0, 0x1c(r29)
.L_813ED908:
/* 813ED908 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ED90C | 48 20 BC 09 */	bl _restgpr_29
/* 813ED910 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ED914 | 7C 08 03 A6 */	mtlr r0
/* 813ED918 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ED91C | 4E 80 00 20 */	blr
.endfn ipl_813ED85C

# .text:0x2334 | 0x813ED920 | size: 0x124
.fn ipl_813ED920, global
/* 813ED920 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ED924 | 7C 08 02 A6 */	mflr r0
/* 813ED928 | 38 80 FF FF */	li r4, -0x1
/* 813ED92C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ED930 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ED934 | 7C 7F 1B 78 */	mr r31, r3
/* 813ED938 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813ED93C | 4B F7 D1 95 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813ED940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED944 | 40 82 00 E8 */	bne .L_813EDA2C
/* 813ED948 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 813ED94C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813ED950 | 41 82 00 B0 */	beq .L_813EDA00
/* 813ED954 | 40 80 00 10 */	bge .L_813ED964
/* 813ED958 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ED95C | 40 80 00 14 */	bge .L_813ED970
/* 813ED960 | 48 00 00 CC */	b .L_813EDA2C
.L_813ED964:
/* 813ED964 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813ED968 | 40 80 00 C4 */	bge .L_813EDA2C
/* 813ED96C | 48 00 00 A8 */	b .L_813EDA14
.L_813ED970:
/* 813ED970 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813ED974 | 38 9F 00 64 */	addi r4, r31, 0x64
/* 813ED978 | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 813ED97C | 38 DF 00 80 */	addi r6, r31, 0x80
/* 813ED980 | 38 FF 03 80 */	addi r7, r31, 0x380
/* 813ED984 | 39 1F 00 74 */	addi r8, r31, 0x74
/* 813ED988 | 39 20 00 02 */	li r9, 0x2
/* 813ED98C | 4B FF 01 E9 */	bl iplSDChannelSelect_813DDB74
/* 813ED990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ED994 | 41 82 00 58 */	beq .L_813ED9EC
/* 813ED998 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813ED99C | 38 00 00 04 */	li r0, 0x4
/* 813ED9A0 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813ED9A4 | 38 80 00 00 */	li r4, 0x0
/* 813ED9A8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED9AC | 48 12 49 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED9B0 | 4B F7 C2 75 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813ED9B4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813ED9B8 | 38 80 00 00 */	li r4, 0x0
/* 813ED9BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813ED9C0 | 48 12 49 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813ED9C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813ED9C8 | 4B F7 4E A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ED9CC | 38 00 00 01 */	li r0, 0x1
/* 813ED9D0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813ED9D4 | 3C 80 81 65 */	lis r4, lbl_81656696@ha
/* 813ED9D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813ED9DC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813ED9E0 | 38 84 66 96 */	addi r4, r4, lbl_81656696@l
/* 813ED9E4 | 4B F7 DA 89 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813ED9E8 | 48 00 00 44 */	b .L_813EDA2C
.L_813ED9EC:
/* 813ED9EC | 38 60 00 15 */	li r3, 0x15
/* 813ED9F0 | 38 00 00 B4 */	li r0, 0xb4
/* 813ED9F4 | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 813ED9F8 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813ED9FC | 48 00 00 30 */	b .L_813EDA2C
.L_813EDA00:
/* 813EDA00 | 38 60 00 15 */	li r3, 0x15
/* 813EDA04 | 38 00 00 B3 */	li r0, 0xb3
/* 813EDA08 | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 813EDA0C | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813EDA10 | 48 00 00 1C */	b .L_813EDA2C
.L_813EDA14:
/* 813EDA14 | 38 60 00 19 */	li r3, 0x19
/* 813EDA18 | 38 00 00 03 */	li r0, 0x3
/* 813EDA1C | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 813EDA20 | 38 60 00 01 */	li r3, 0x1
/* 813EDA24 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813EDA28 | 48 00 00 08 */	b .L_813EDA30
.L_813EDA2C:
/* 813EDA2C | 38 60 00 00 */	li r3, 0x0
.L_813EDA30:
/* 813EDA30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EDA34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EDA38 | 7C 08 03 A6 */	mtlr r0
/* 813EDA3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EDA40 | 4E 80 00 20 */	blr
.endfn ipl_813ED920

# .text:0x2458 | 0x813EDA44 | size: 0x110
.fn ipl_813EDA44, global
/* 813EDA44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EDA48 | 7C 08 02 A6 */	mflr r0
/* 813EDA4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EDA50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EDA54 | 48 20 BA 6D */	bl _savegpr_27
/* 813EDA58 | 7C 7B 1B 78 */	mr r27, r3
/* 813EDA5C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EDA60 | 38 80 FF FF */	li r4, -0x1
/* 813EDA64 | 4B F7 D0 6D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EDA68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EDA6C | 40 82 00 D0 */	bne .L_813EDB3C
/* 813EDA70 | 80 1B 00 24 */	lwz r0, 0x24(r27)
/* 813EDA74 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EDA78 | 40 82 00 60 */	bne .L_813EDAD8
/* 813EDA7C | 3B 80 00 00 */	li r28, 0x0
/* 813EDA80 | 3F A0 81 65 */	lis r29, lbl_81655CAC@ha
/* 813EDA84 | 7F 9E E3 78 */	mr r30, r28
/* 813EDA88 | 3B E0 00 00 */	li r31, 0x0
/* 813EDA8C | 3B BD 5C AC */	addi r29, r29, lbl_81655CAC@l
.L_813EDA90:
/* 813EDA90 | 7C 7B FA 14 */	add r3, r27, r31
/* 813EDA94 | 38 A0 00 01 */	li r5, 0x1
/* 813EDA98 | 93 C3 00 3C */	stw r30, 0x3c(r3)
/* 813EDA9C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813EDAA0 | 7C 9D F8 2E */	lwzx r4, r29, r31
/* 813EDAA4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EDAA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EDAAC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EDAB0 | 7D 89 03 A6 */	mtctr r12
/* 813EDAB4 | 4E 80 04 21 */	bctrl
/* 813EDAB8 | 7C 64 1B 78 */	mr r4, r3
/* 813EDABC | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813EDAC0 | 4B F7 D7 59 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813EDAC4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EDAC8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EDACC | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 813EDAD0 | 41 80 FF C0 */	blt .L_813EDA90
/* 813EDAD4 | 48 00 00 60 */	b .L_813EDB34
.L_813EDAD8:
/* 813EDAD8 | 3F C0 81 65 */	lis r30, lbl_81655CC0@ha
/* 813EDADC | 3B 80 00 01 */	li r28, 0x1
/* 813EDAE0 | 3B DE 5C C0 */	addi r30, r30, lbl_81655CC0@l
/* 813EDAE4 | 3B E0 00 04 */	li r31, 0x4
/* 813EDAE8 | 3B A0 00 00 */	li r29, 0x0
.L_813EDAEC:
/* 813EDAEC | 7C 9B FA 14 */	add r4, r27, r31
/* 813EDAF0 | 7C 7E FA 14 */	add r3, r30, r31
/* 813EDAF4 | 93 A4 00 3C */	stw r29, 0x3c(r4)
/* 813EDAF8 | 38 A0 00 01 */	li r5, 0x1
/* 813EDAFC | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 813EDB00 | 80 83 FF FC */	lwz r4, -0x4(r3)
/* 813EDB04 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813EDB08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EDB0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EDB10 | 7D 89 03 A6 */	mtctr r12
/* 813EDB14 | 4E 80 04 21 */	bctrl
/* 813EDB18 | 7C 64 1B 78 */	mr r4, r3
/* 813EDB1C | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813EDB20 | 4B F7 D6 F9 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813EDB24 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EDB28 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EDB2C | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 813EDB30 | 41 80 FF BC */	blt .L_813EDAEC
.L_813EDB34:
/* 813EDB34 | 38 00 00 05 */	li r0, 0x5
/* 813EDB38 | 90 1B 00 1C */	stw r0, 0x1c(r27)
.L_813EDB3C:
/* 813EDB3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EDB40 | 48 20 B9 CD */	bl _restgpr_27
/* 813EDB44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EDB48 | 7C 08 03 A6 */	mtlr r0
/* 813EDB4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EDB50 | 4E 80 00 20 */	blr
.endfn ipl_813EDA44

# .text:0x2568 | 0x813EDB54 | size: 0x78
.fn ipl_813EDB54, global
/* 813EDB54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EDB58 | 7C 08 02 A6 */	mflr r0
/* 813EDB5C | 38 80 FF FF */	li r4, -0x1
/* 813EDB60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EDB64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EDB68 | 7C 7F 1B 78 */	mr r31, r3
/* 813EDB6C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EDB70 | 4B F7 CF 61 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EDB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EDB78 | 40 82 00 40 */	bne .L_813EDBB8
/* 813EDB7C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EDB80 | 38 00 00 07 */	li r0, 0x7
/* 813EDB84 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EDB88 | 38 80 00 01 */	li r4, 0x1
/* 813EDB8C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EDB90 | 48 12 47 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EDB94 | 4B F7 C0 91 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EDB98 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EDB9C | 38 80 00 01 */	li r4, 0x1
/* 813EDBA0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EDBA4 | 48 12 47 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EDBA8 | 7C 7F 1B 78 */	mr r31, r3
/* 813EDBAC | 4B F7 4C C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EDBB0 | 38 00 00 01 */	li r0, 0x1
/* 813EDBB4 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813EDBB8:
/* 813EDBB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EDBBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EDBC0 | 7C 08 03 A6 */	mtlr r0
/* 813EDBC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EDBC8 | 4E 80 00 20 */	blr
.endfn ipl_813EDB54

# .text:0x25E0 | 0x813EDBCC | size: 0xC0
.fn ipl_813EDBCC, global
/* 813EDBCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EDBD0 | 7C 08 02 A6 */	mflr r0
/* 813EDBD4 | 38 80 FF FF */	li r4, -0x1
/* 813EDBD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EDBDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EDBE0 | 7C 7F 1B 78 */	mr r31, r3
/* 813EDBE4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EDBE8 | 4B F7 CE E9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EDBEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EDBF0 | 40 82 00 88 */	bne .L_813EDC78
/* 813EDBF4 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 813EDBF8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EDBFC | 41 82 00 08 */	beq .L_813EDC04
/* 813EDC00 | 48 00 00 44 */	b .L_813EDC44
.L_813EDC04:
/* 813EDC04 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EDC08 | 38 00 00 00 */	li r0, 0x0
/* 813EDC0C | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EDC10 | 38 80 00 00 */	li r4, 0x0
/* 813EDC14 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EDC18 | 48 12 47 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EDC1C | 7C 7F 1B 78 */	mr r31, r3
/* 813EDC20 | 4B F7 4C 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EDC24 | 38 00 00 01 */	li r0, 0x1
/* 813EDC28 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EDC2C | 3C 80 81 65 */	lis r4, lbl_81656696@ha
/* 813EDC30 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813EDC34 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EDC38 | 38 84 66 96 */	addi r4, r4, lbl_81656696@l
/* 813EDC3C | 4B F7 D8 31 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EDC40 | 48 00 00 38 */	b .L_813EDC78
.L_813EDC44:
/* 813EDC44 | 38 00 00 00 */	li r0, 0x0
/* 813EDC48 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EDC4C | 90 1F 29 DC */	stw r0, 0x29dc(r31)
/* 813EDC50 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EDC54 | 38 80 00 CC */	li r4, 0xcc
/* 813EDC58 | 38 A0 00 00 */	li r5, 0x0
/* 813EDC5C | 90 1F 29 D8 */	stw r0, 0x29d8(r31)
/* 813EDC60 | 38 C0 00 01 */	li r6, 0x1
/* 813EDC64 | 90 1F 29 E0 */	stw r0, 0x29e0(r31)
/* 813EDC68 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EDC6C | 4B F5 89 35 */	bl callBtn0SDRelated__Q23ipl12DialogWindowFUlUlb
/* 813EDC70 | 38 00 00 08 */	li r0, 0x8
/* 813EDC74 | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_813EDC78:
/* 813EDC78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EDC7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EDC80 | 7C 08 03 A6 */	mtlr r0
/* 813EDC84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EDC88 | 4E 80 00 20 */	blr
.endfn ipl_813EDBCC

# .text:0x26A0 | 0x813EDC8C | size: 0x278
.fn ipl_813EDC8C, global
/* 813EDC8C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813EDC90 | 7C 08 02 A6 */	mflr r0
/* 813EDC94 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813EDC98 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813EDC9C | 48 20 B8 21 */	bl _savegpr_26
/* 813EDCA0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813EDCA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813EDCA8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813EDCAC | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813EDCB0 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813EDCB4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813EDCB8 | 40 82 00 84 */	bne .L_813EDD3C
/* 813EDCBC | 80 03 29 D8 */	lwz r0, 0x29d8(r3)
/* 813EDCC0 | 80 63 29 DC */	lwz r3, 0x29dc(r3)
/* 813EDCC4 | 7C 60 03 79 */	or. r0, r3, r0
/* 813EDCC8 | 40 82 00 10 */	bne .L_813EDCD8
/* 813EDCCC | 48 14 7F B5 */	bl OSGetTime
/* 813EDCD0 | 90 9F 29 DC */	stw r4, 0x29dc(r31)
/* 813EDCD4 | 90 7F 29 D8 */	stw r3, 0x29d8(r31)
.L_813EDCD8:
/* 813EDCD8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EDCDC | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EDCE0 | 4B F5 AB 29 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813EDCE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EDCE8 | 40 82 00 54 */	bne .L_813EDD3C
/* 813EDCEC | 48 14 7F 95 */	bl OSGetTime
/* 813EDCF0 | 80 DF 29 DC */	lwz r6, 0x29dc(r31)
/* 813EDCF4 | 3C A0 80 00 */	lis r5, 0x8000
/* 813EDCF8 | 80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 813EDCFC | 38 00 00 00 */	li r0, 0x0
/* 813EDD00 | 80 FF 29 D8 */	lwz r7, 0x29d8(r31)
/* 813EDD04 | 7C C6 20 10 */	subfc r6, r6, r4
/* 813EDD08 | 54 A5 F0 BE */	srwi r5, r5, 2
/* 813EDD0C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813EDD10 | 7C 67 19 10 */	subfe r3, r7, r3
/* 813EDD14 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 813EDD18 | 7C 66 28 10 */	subfc r3, r6, r5
/* 813EDD1C | 7C 84 01 10 */	subfe r4, r4, r0
/* 813EDD20 | 7C 80 01 10 */	subfe r4, r0, r0
/* 813EDD24 | 7C 84 00 D1 */	neg. r4, r4
/* 813EDD28 | 41 82 00 14 */	beq .L_813EDD3C
/* 813EDD2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EDD30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EDD34 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EDD38 | 4B F5 9B CD */	bl terminate__Q23ipl12DialogWindowFv
.L_813EDD3C:
/* 813EDD3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EDD40 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EDD44 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EDD48 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813EDD4C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813EDD50 | 41 82 01 9C */	beq .L_813EDEEC
/* 813EDD54 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EDD58 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EDD5C | 4B F5 AA D9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813EDD60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EDD64 | 40 82 00 18 */	bne .L_813EDD7C
/* 813EDD68 | 80 7F 29 F0 */	lwz r3, 0x29f0(r31)
/* 813EDD6C | 80 1F 29 F8 */	lwz r0, 0x29f8(r31)
/* 813EDD70 | 90 7F 16 48 */	stw r3, 0x1648(r31)
/* 813EDD74 | 90 1F 13 40 */	stw r0, 0x1340(r31)
/* 813EDD78 | 48 00 00 10 */	b .L_813EDD88
.L_813EDD7C:
/* 813EDD7C | 38 00 00 00 */	li r0, 0x0
/* 813EDD80 | 90 1F 16 48 */	stw r0, 0x1648(r31)
/* 813EDD84 | 90 1F 13 40 */	stw r0, 0x1340(r31)
.L_813EDD88:
/* 813EDD88 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EDD8C | 38 00 00 09 */	li r0, 0x9
/* 813EDD90 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EDD94 | 38 80 00 00 */	li r4, 0x0
/* 813EDD98 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EDD9C | 48 12 45 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EDDA0 | 7C 7D 1B 78 */	mr r29, r3
/* 813EDDA4 | 4B F7 4A CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EDDA8 | 38 00 00 01 */	li r0, 0x1
/* 813EDDAC | 3C 80 81 65 */	lis r4, lbl_81656780@ha
/* 813EDDB0 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813EDDB4 | 38 84 67 80 */	addi r4, r4, lbl_81656780@l
/* 813EDDB8 | 38 A0 00 01 */	li r5, 0x1
/* 813EDDBC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EDDC0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EDDC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EDDC8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EDDCC | 7D 89 03 A6 */	mtctr r12
/* 813EDDD0 | 4E 80 04 21 */	bctrl
/* 813EDDD4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813EDDD8 | 7C 7B 1B 78 */	mr r27, r3
/* 813EDDDC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813EDDE0 | 38 80 00 BE */	li r4, 0xbe
/* 813EDDE4 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813EDDE8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EDDEC | 4B F5 09 D1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EDDF0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813EDDF4 | 7C 64 1B 78 */	mr r4, r3
/* 813EDDF8 | 7F 63 DB 78 */	mr r3, r27
/* 813EDDFC | 38 A0 00 00 */	li r5, 0x0
/* 813EDE00 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813EDE04 | 7D 89 03 A6 */	mtctr r12
/* 813EDE08 | 4E 80 04 21 */	bctrl
/* 813EDE0C | 3B A0 00 00 */	li r29, 0x0
/* 813EDE10 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EDE14 | 93 BF 2A 6C */	stw r29, 0x2a6c(r31)
/* 813EDE18 | 38 8D 8F 82 */	li r4, lbl_81696FC2@sda21
/* 813EDE1C | 38 A0 00 01 */	li r5, 0x1
/* 813EDE20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EDE24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EDE28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EDE2C | 7D 89 03 A6 */	mtctr r12
/* 813EDE30 | 4E 80 04 21 */	bctrl
/* 813EDE34 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813EDE38 | 7C 7C 1B 78 */	mr r28, r3
/* 813EDE3C | 3F C0 81 65 */	lis r30, lbl_816562B6@ha
/* 813EDE40 | 38 A0 00 01 */	li r5, 0x1
/* 813EDE44 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 813EDE48 | 38 9E 62 B6 */	addi r4, r30, lbl_816562B6@l
/* 813EDE4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EDE50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EDE54 | 7D 89 03 A6 */	mtctr r12
/* 813EDE58 | 4E 80 04 21 */	bctrl
/* 813EDE5C | 38 00 00 FF */	li r0, 0xff
/* 813EDE60 | 7C 7B 1B 78 */	mr r27, r3
/* 813EDE64 | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 813EDE68 | 3B 40 00 00 */	li r26, 0x0
/* 813EDE6C | 48 00 00 64 */	b .L_813EDED0
.L_813EDE70:
/* 813EDE70 | 7C 9F EA 14 */	add r4, r31, r29
/* 813EDE74 | 7F 63 DB 78 */	mr r3, r27
/* 813EDE78 | 38 84 03 80 */	addi r4, r4, 0x380
/* 813EDE7C | 4B F7 66 71 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 813EDE80 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813EDE84 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813EDE88 | 38 BE 62 B6 */	addi r5, r30, lbl_816562B6@l
/* 813EDE8C | 4B FA B5 C1 */	bl getTextDrawRect__Q33ipl6layout6ObjectCFPCc
/* 813EDE90 | C0 41 00 14 */	lfs f2, 0x14(r1)
/* 813EDE94 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813EDE98 | C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 813EDE9C | EC 22 08 28 */	fsubs f1, f2, f1
/* 813EDEA0 | FC 20 08 50 */	fneg f1, f1
/* 813EDEA4 | EC 21 00 24 */	fdivs f1, f1, f0
/* 813EDEA8 | 48 21 E7 A9 */	bl ceil
/* 813EDEAC | FC 00 08 18 */	frsp f0, f1
/* 813EDEB0 | 80 1F 2A 6C */	lwz r0, 0x2a6c(r31)
/* 813EDEB4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EDEB8 | 3B BD 00 2A */	addi r29, r29, 0x2a
/* 813EDEBC | FC 00 00 1E */	fctiwz f0, f0
/* 813EDEC0 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 813EDEC4 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 813EDEC8 | 7C 00 1A 14 */	add r0, r0, r3
/* 813EDECC | 90 1F 2A 6C */	stw r0, 0x2a6c(r31)
.L_813EDED0:
/* 813EDED0 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813EDED4 | 7C 1A 00 40 */	cmplw r26, r0
/* 813EDED8 | 41 80 FF 98 */	blt .L_813EDE70
/* 813EDEDC | 7F E3 FB 78 */	mr r3, r31
/* 813EDEE0 | 4B FF E9 25 */	bl ipl_813EC804
/* 813EDEE4 | 7F E3 FB 78 */	mr r3, r31
/* 813EDEE8 | 4B FF EA 81 */	bl ipl_813EC968
.L_813EDEEC:
/* 813EDEEC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813EDEF0 | 48 20 B6 19 */	bl _restgpr_26
/* 813EDEF4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813EDEF8 | 7C 08 03 A6 */	mtlr r0
/* 813EDEFC | 38 21 00 40 */	addi r1, r1, 0x40
/* 813EDF00 | 4E 80 00 20 */	blr
.endfn ipl_813EDC8C

# .text:0x2918 | 0x813EDF04 | size: 0xA4
.fn ipl_813EDF04, global
/* 813EDF04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EDF08 | 7C 08 02 A6 */	mflr r0
/* 813EDF0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EDF10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EDF14 | 48 20 B5 AD */	bl _savegpr_27
/* 813EDF18 | 7C 7B 1B 78 */	mr r27, r3
/* 813EDF1C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813EDF20 | 38 80 00 00 */	li r4, 0x0
/* 813EDF24 | 4B F7 CB AD */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EDF28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EDF2C | 40 82 00 64 */	bne .L_813EDF90
/* 813EDF30 | 3B 80 00 00 */	li r28, 0x0
/* 813EDF34 | 3F C0 81 65 */	lis r30, lbl_81655CE8@ha
/* 813EDF38 | 7F 9D E3 78 */	mr r29, r28
/* 813EDF3C | 3B E0 00 00 */	li r31, 0x0
/* 813EDF40 | 3B DE 5C E8 */	addi r30, r30, lbl_81655CE8@l
.L_813EDF44:
/* 813EDF44 | 7C 7B FA 14 */	add r3, r27, r31
/* 813EDF48 | 38 A0 00 01 */	li r5, 0x1
/* 813EDF4C | 93 A3 00 50 */	stw r29, 0x50(r3)
/* 813EDF50 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 813EDF54 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EDF58 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EDF5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EDF60 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EDF64 | 7D 89 03 A6 */	mtctr r12
/* 813EDF68 | 4E 80 04 21 */	bctrl
/* 813EDF6C | 7C 64 1B 78 */	mr r4, r3
/* 813EDF70 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813EDF74 | 4B F7 D2 A5 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813EDF78 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EDF7C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EDF80 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813EDF84 | 41 80 FF C0 */	blt .L_813EDF44
/* 813EDF88 | 38 00 00 0A */	li r0, 0xa
/* 813EDF8C | 90 1B 00 1C */	stw r0, 0x1c(r27)
.L_813EDF90:
/* 813EDF90 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EDF94 | 48 20 B5 79 */	bl _restgpr_27
/* 813EDF98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EDF9C | 7C 08 03 A6 */	mtlr r0
/* 813EDFA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EDFA4 | 4E 80 00 20 */	blr
.endfn ipl_813EDF04

# .text:0x29BC | 0x813EDFA8 | size: 0x130
.fn ipl_813EDFA8, global
/* 813EDFA8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EDFAC | 7C 08 02 A6 */	mflr r0
/* 813EDFB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EDFB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EDFB8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EDFBC | 7C 7E 1B 78 */	mr r30, r3
/* 813EDFC0 | 4B F4 79 E9 */	bl getMasterController__Q23ipl6SystemFv
/* 813EDFC4 | 80 1E 2A 2C */	lwz r0, 0x2a2c(r30)
/* 813EDFC8 | 7C 7F 1B 78 */	mr r31, r3
/* 813EDFCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EDFD0 | 40 82 00 7C */	bne .L_813EE04C
/* 813EDFD4 | 7F C3 F3 78 */	mr r3, r30
/* 813EDFD8 | 4B FF EC 89 */	bl ipl_813ECC60
/* 813EDFDC | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813EDFE0 | 4B F7 5B 05 */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 813EDFE4 | 7C 60 00 34 */	cntlzw r0, r3
/* 813EDFE8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813EDFEC | 41 82 00 60 */	beq .L_813EE04C
/* 813EDFF0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813EDFF4 | 3C 80 00 01 */	lis r4, 0x1
/* 813EDFF8 | 7F E3 FB 78 */	mr r3, r31
/* 813EDFFC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813EE000 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813EE004 | 7D 89 03 A6 */	mtctr r12
/* 813EE008 | 4E 80 04 21 */	bctrl
/* 813EE00C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE010 | 41 82 00 10 */	beq .L_813EE020
/* 813EE014 | 38 00 00 01 */	li r0, 0x1
/* 813EE018 | 90 1E 2A 2C */	stw r0, 0x2a2c(r30)
/* 813EE01C | 48 00 00 30 */	b .L_813EE04C
.L_813EE020:
/* 813EE020 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813EE024 | 3C 80 40 00 */	lis r4, 0x4000
/* 813EE028 | 7F E3 FB 78 */	mr r3, r31
/* 813EE02C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813EE030 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813EE034 | 7D 89 03 A6 */	mtctr r12
/* 813EE038 | 4E 80 04 21 */	bctrl
/* 813EE03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE040 | 41 82 00 0C */	beq .L_813EE04C
/* 813EE044 | 38 00 00 02 */	li r0, 0x2
/* 813EE048 | 90 1E 2A 2C */	stw r0, 0x2a2c(r30)
.L_813EE04C:
/* 813EE04C | C0 3E 2A 3C */	lfs f1, 0x2a3c(r30)
/* 813EE050 | C0 1E 2A 30 */	lfs f0, 0x2a30(r30)
/* 813EE054 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813EE058 | 7C E0 00 26 */	mfcr r7
/* 813EE05C | C0 1E 2A 34 */	lfs f0, 0x2a34(r30)
/* 813EE060 | 54 E7 1F FE */	extrwi r7, r7, 1, 2
/* 813EE064 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813EE068 | 7C C0 00 26 */	mfcr r6
/* 813EE06C | 88 9E 2A 70 */	lbz r4, 0x2a70(r30)
/* 813EE070 | 88 1E 2A 71 */	lbz r0, 0x2a71(r30)
/* 813EE074 | 54 C6 1F FE */	extrwi r6, r6, 1, 2
/* 813EE078 | 7C 84 00 34 */	cntlzw r4, r4
/* 813EE07C | 7F C3 F3 78 */	mr r3, r30
/* 813EE080 | 7C 00 00 34 */	cntlzw r0, r0
/* 813EE084 | 54 84 D9 7E */	srwi r4, r4, 5
/* 813EE088 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813EE08C | 4B FF E9 61 */	bl ipl_813EC9EC
/* 813EE090 | 38 7E 2A 4C */	addi r3, r30, 0x2a4c
/* 813EE094 | 4B F7 5A 51 */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 813EE098 | 7C 60 00 34 */	cntlzw r0, r3
/* 813EE09C | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813EE0A0 | 41 82 00 0C */	beq .L_813EE0AC
/* 813EE0A4 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 813EE0A8 | 4B F7 CE E5 */	bl update__Q33ipl3gui11PaneManagerFv
.L_813EE0AC:
/* 813EE0AC | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 813EE0B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EE0B4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813EE0B8 | 7D 89 03 A6 */	mtctr r12
/* 813EE0BC | 4E 80 04 21 */	bctrl
/* 813EE0C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EE0C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EE0C8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EE0CC | 7C 08 03 A6 */	mtlr r0
/* 813EE0D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EE0D4 | 4E 80 00 20 */	blr
.endfn ipl_813EDFA8

# .text:0x2AEC | 0x813EE0D8 | size: 0xE0
.fn ipl_813EE0D8, global
/* 813EE0D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EE0DC | 7C 08 02 A6 */	mflr r0
/* 813EE0E0 | 38 80 00 04 */	li r4, 0x4
/* 813EE0E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE0E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EE0EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EE0F0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EE0F4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813EE0F8 | 4B F7 C9 D9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EE0FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE100 | 40 82 00 A0 */	bne .L_813EE1A0
/* 813EE104 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813EE108 | 38 80 00 07 */	li r4, 0x7
/* 813EE10C | 4B F7 C9 C5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EE110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE114 | 40 82 00 8C */	bne .L_813EE1A0
/* 813EE118 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 813EE11C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EE120 | 40 80 00 78 */	bge .L_813EE198
/* 813EE124 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813EE128 | 40 80 00 08 */	bge .L_813EE130
/* 813EE12C | 48 00 00 6C */	b .L_813EE198
.L_813EE130:
/* 813EE130 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813EE134 | 38 00 00 0C */	li r0, 0xc
/* 813EE138 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 813EE13C | 38 80 00 01 */	li r4, 0x1
/* 813EE140 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EE144 | 48 12 41 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EE148 | 4B F7 BA DD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EE14C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813EE150 | 38 80 00 01 */	li r4, 0x1
/* 813EE154 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EE158 | 48 12 41 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EE15C | 7C 7F 1B 78 */	mr r31, r3
/* 813EE160 | 4B F7 47 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EE164 | 38 00 00 01 */	li r0, 0x1
/* 813EE168 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813EE16C | 88 1E 2A 70 */	lbz r0, 0x2a70(r30)
/* 813EE170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EE174 | 41 82 00 0C */	beq .L_813EE180
/* 813EE178 | 7F C3 F3 78 */	mr r3, r30
/* 813EE17C | 4B FF E9 F5 */	bl ipl_813ECB70
.L_813EE180:
/* 813EE180 | 88 1E 2A 71 */	lbz r0, 0x2a71(r30)
/* 813EE184 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EE188 | 41 82 00 18 */	beq .L_813EE1A0
/* 813EE18C | 7F C3 F3 78 */	mr r3, r30
/* 813EE190 | 4B FF EA 59 */	bl ipl_813ECBE8
/* 813EE194 | 48 00 00 0C */	b .L_813EE1A0
.L_813EE198:
/* 813EE198 | 38 00 00 0A */	li r0, 0xa
/* 813EE19C | 90 1E 00 1C */	stw r0, 0x1c(r30)
.L_813EE1A0:
/* 813EE1A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EE1A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EE1A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EE1AC | 7C 08 03 A6 */	mtlr r0
/* 813EE1B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EE1B4 | 4E 80 00 20 */	blr
.endfn ipl_813EE0D8

# .text:0x2BCC | 0x813EE1B8 | size: 0x1A0
.fn ipl_813EE1B8, global
/* 813EE1B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EE1BC | 7C 08 02 A6 */	mflr r0
/* 813EE1C0 | 38 80 00 01 */	li r4, 0x1
/* 813EE1C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE1C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EE1CC | 7C 7F 1B 78 */	mr r31, r3
/* 813EE1D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EE1D4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813EE1D8 | 4B F7 C8 F9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EE1DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE1E0 | 40 82 01 60 */	bne .L_813EE340
/* 813EE1E4 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 813EE1E8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813EE1EC | 41 82 00 5C */	beq .L_813EE248
/* 813EE1F0 | 40 80 01 50 */	bge .L_813EE340
/* 813EE1F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813EE1F8 | 40 80 00 08 */	bge .L_813EE200
/* 813EE1FC | 48 00 01 44 */	b .L_813EE340
.L_813EE200:
/* 813EE200 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EE204 | 38 00 00 04 */	li r0, 0x4
/* 813EE208 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE20C | 38 80 00 00 */	li r4, 0x0
/* 813EE210 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EE214 | 48 12 41 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EE218 | 7C 7E 1B 78 */	mr r30, r3
/* 813EE21C | 4B F7 BA 09 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EE220 | 7F C3 F3 78 */	mr r3, r30
/* 813EE224 | 4B F7 46 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EE228 | 38 00 00 01 */	li r0, 0x1
/* 813EE22C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EE230 | 3C 80 81 65 */	lis r4, lbl_81656696@ha
/* 813EE234 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EE238 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EE23C | 38 84 66 96 */	addi r4, r4, lbl_81656696@l
/* 813EE240 | 4B F7 D2 2D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EE244 | 48 00 00 FC */	b .L_813EE340
.L_813EE248:
/* 813EE248 | 38 00 00 00 */	li r0, 0x0
/* 813EE24C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EE250 | 98 1F 29 D0 */	stb r0, 0x29d0(r31)
/* 813EE254 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EE258 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813EE25C | 4B F5 A0 BD */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813EE260 | 80 1F 13 40 */	lwz r0, 0x1340(r31)
/* 813EE264 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EE268 | 40 82 00 10 */	bne .L_813EE278
/* 813EE26C | 80 1F 16 48 */	lwz r0, 0x1648(r31)
/* 813EE270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EE274 | 41 82 00 34 */	beq .L_813EE2A8
.L_813EE278:
/* 813EE278 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE27C | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EE280 | 4B F5 AA 21 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813EE284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE288 | 41 82 00 20 */	beq .L_813EE2A8
/* 813EE28C | 38 80 00 05 */	li r4, 0x5
/* 813EE290 | 38 60 00 17 */	li r3, 0x17
/* 813EE294 | 38 00 00 BF */	li r0, 0xbf
/* 813EE298 | 90 9F 00 2C */	stw r4, 0x2c(r31)
/* 813EE29C | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 813EE2A0 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813EE2A4 | 48 00 00 9C */	b .L_813EE340
.L_813EE2A8:
/* 813EE2A8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE2AC | 38 9F 29 F4 */	addi r4, r31, 0x29f4
/* 813EE2B0 | 38 BF 29 EC */	addi r5, r31, 0x29ec
/* 813EE2B4 | 4B FE D2 7D */	bl iplSDChannelSelect_813DB530
/* 813EE2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE2BC | 41 82 00 6C */	beq .L_813EE328
/* 813EE2C0 | 38 00 00 00 */	li r0, 0x0
/* 813EE2C4 | 38 60 00 13 */	li r3, 0x13
/* 813EE2C8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813EE2CC | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 813EE2D0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813EE2D4 | 38 80 00 B1 */	li r4, 0xb1
/* 813EE2D8 | B0 1F 19 50 */	sth r0, 0x1950(r31)
/* 813EE2DC | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813EE2E0 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813EE2E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EE2E8 | 4B F5 04 D5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EE2EC | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE2F0 | 3C A0 81 65 */	lis r5, lbl_8165678A@ha
/* 813EE2F4 | 7C 67 1B 78 */	mr r7, r3
/* 813EE2F8 | 38 7F 19 50 */	addi r3, r31, 0x1950
/* 813EE2FC | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813EE300 | 38 A5 67 8A */	addi r5, r5, lbl_8165678A@l
/* 813EE304 | 38 80 10 7F */	li r4, 0x107f
/* 813EE308 | 7C DF 02 14 */	add r6, r31, r0
/* 813EE30C | 38 C6 03 80 */	addi r6, r6, 0x380
/* 813EE310 | 4C C6 31 82 */	crclr cr1eq
/* 813EE314 | 48 21 A2 BD */	bl swprintf
/* 813EE318 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813EE31C | 38 9F 19 50 */	addi r4, r31, 0x1950
/* 813EE320 | 4B F5 8E 3D */	bl iplDialogWindow_8134715C
/* 813EE324 | 48 00 00 1C */	b .L_813EE340
.L_813EE328:
/* 813EE328 | 38 80 00 17 */	li r4, 0x17
/* 813EE32C | 38 60 00 01 */	li r3, 0x1
/* 813EE330 | 38 00 00 AE */	li r0, 0xae
/* 813EE334 | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EE338 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE33C | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813EE340:
/* 813EE340 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EE344 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EE348 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EE34C | 7C 08 03 A6 */	mtlr r0
/* 813EE350 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EE354 | 4E 80 00 20 */	blr
.endfn ipl_813EE1B8

# .text:0x2D6C | 0x813EE358 | size: 0x44
.fn ipl_813EE358, global
/* 813EE358 | 38 60 00 00 */	li r3, 0x0
/* 813EE35C | 7D 09 03 A6 */	mtctr r8
/* 813EE360 | 28 08 00 00 */	cmplwi r8, 0x0
/* 813EE364 | 40 81 00 30 */	ble .L_813EE394
.L_813EE368:
/* 813EE368 | 7C 87 1A 14 */	add r4, r7, r3
/* 813EE36C | 7C 07 18 2E */	lwzx r0, r7, r3
/* 813EE370 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813EE374 | 7C A0 02 78 */	xor r0, r5, r0
/* 813EE378 | 7C C4 22 78 */	xor r4, r6, r4
/* 813EE37C | 7C 80 03 79 */	or. r0, r4, r0
/* 813EE380 | 40 82 00 0C */	bne .L_813EE38C
/* 813EE384 | 38 60 00 01 */	li r3, 0x1
/* 813EE388 | 4E 80 00 20 */	blr
.L_813EE38C:
/* 813EE38C | 38 63 00 08 */	addi r3, r3, 0x8
/* 813EE390 | 42 00 FF D8 */	bdnz .L_813EE368
.L_813EE394:
/* 813EE394 | 38 60 00 00 */	li r3, 0x0
/* 813EE398 | 4E 80 00 20 */	blr
.endfn ipl_813EE358

# .text:0x2DB0 | 0x813EE39C | size: 0xEC
.fn ipl_813EE39C, global
/* 813EE39C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EE3A0 | 7C 08 02 A6 */	mflr r0
/* 813EE3A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE3A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EE3AC | 7C 7F 1B 78 */	mr r31, r3
/* 813EE3B0 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813EE3B4 | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813EE3B8 | 4B F5 A4 51 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813EE3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE3C0 | 40 82 00 B4 */	bne .L_813EE474
/* 813EE3C4 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE3C8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EE3CC | 4B F5 A4 69 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813EE3D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE3D4 | 40 82 00 48 */	bne .L_813EE41C
/* 813EE3D8 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE3DC | 7F E3 FB 78 */	mr r3, r31
/* 813EE3E0 | 81 1F 16 48 */	lwz r8, 0x1648(r31)
/* 813EE3E4 | 38 FF 16 50 */	addi r7, r31, 0x1650
/* 813EE3E8 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE3EC | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE3F0 | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE3F4 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE3F8 | 4B FF FF 61 */	bl ipl_813EE358
/* 813EE3FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE400 | 41 82 00 10 */	beq .L_813EE410
/* 813EE404 | 38 00 00 11 */	li r0, 0x11
/* 813EE408 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE40C | 48 00 00 68 */	b .L_813EE474
.L_813EE410:
/* 813EE410 | 38 00 00 0D */	li r0, 0xd
/* 813EE414 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE418 | 48 00 00 5C */	b .L_813EE474
.L_813EE41C:
/* 813EE41C | 40 81 00 30 */	ble .L_813EE44C
/* 813EE420 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EE424 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EE428 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EE42C | 4B F5 94 D9 */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE430 | 38 80 00 14 */	li r4, 0x14
/* 813EE434 | 38 60 00 02 */	li r3, 0x2
/* 813EE438 | 38 00 00 B5 */	li r0, 0xb5
/* 813EE43C | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EE440 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE444 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813EE448 | 48 00 00 2C */	b .L_813EE474
.L_813EE44C:
/* 813EE44C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EE450 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EE454 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EE458 | 4B F5 94 AD */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE45C | 38 80 00 14 */	li r4, 0x14
/* 813EE460 | 38 60 00 01 */	li r3, 0x1
/* 813EE464 | 38 00 00 AE */	li r0, 0xae
/* 813EE468 | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EE46C | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE470 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813EE474:
/* 813EE474 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EE478 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EE47C | 7C 08 03 A6 */	mtlr r0
/* 813EE480 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EE484 | 4E 80 00 20 */	blr
.endfn ipl_813EE39C

# .text:0x2E9C | 0x813EE488 | size: 0x1C4
.fn ipl_813EE488, global
/* 813EE488 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813EE48C | 7C 08 02 A6 */	mflr r0
/* 813EE490 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813EE494 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813EE498 | 7C 7F 1B 78 */	mr r31, r3
/* 813EE49C | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813EE4A0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813EE4A4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813EE4A8 | 80 9E 00 AC */	lwz r4, 0xac(r30)
/* 813EE4AC | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813EE4B0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813EE4B4 | 40 82 01 80 */	bne .L_813EE634
/* 813EE4B8 | 38 00 00 00 */	li r0, 0x0
/* 813EE4BC | 38 80 00 B1 */	li r4, 0xb1
/* 813EE4C0 | B0 03 19 50 */	sth r0, 0x1950(r3)
/* 813EE4C4 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813EE4C8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EE4CC | 4B F5 02 F1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EE4D0 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE4D4 | 3C A0 81 65 */	lis r5, lbl_8165678A@ha
/* 813EE4D8 | 7C 67 1B 78 */	mr r7, r3
/* 813EE4DC | 38 7F 19 50 */	addi r3, r31, 0x1950
/* 813EE4E0 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813EE4E4 | 38 A5 67 8A */	addi r5, r5, lbl_8165678A@l
/* 813EE4E8 | 38 80 10 7F */	li r4, 0x107f
/* 813EE4EC | 7C DF 02 14 */	add r6, r31, r0
/* 813EE4F0 | 38 C6 03 80 */	addi r6, r6, 0x380
/* 813EE4F4 | 4C C6 31 82 */	crclr cr1eq
/* 813EE4F8 | 48 21 A0 D9 */	bl swprintf
/* 813EE4FC | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813EE500 | 38 9F 19 50 */	addi r4, r31, 0x1950
/* 813EE504 | 4B F5 7B AD */	bl set_title__Q23ipl12DialogWindowFPCw
/* 813EE508 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE50C | 7F E3 FB 78 */	mr r3, r31
/* 813EE510 | 81 1F 13 40 */	lwz r8, 0x1340(r31)
/* 813EE514 | 38 FF 13 48 */	addi r7, r31, 0x1348
/* 813EE518 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE51C | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE520 | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE524 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE528 | 4B FF FE 31 */	bl ipl_813EE358
/* 813EE52C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE530 | 40 82 00 30 */	bne .L_813EE560
/* 813EE534 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE538 | 7F E3 FB 78 */	mr r3, r31
/* 813EE53C | 81 1F 16 48 */	lwz r8, 0x1648(r31)
/* 813EE540 | 38 FF 16 50 */	addi r7, r31, 0x1650
/* 813EE544 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE548 | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE54C | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE550 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE554 | 4B FF FE 05 */	bl ipl_813EE358
/* 813EE558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE55C | 41 82 00 60 */	beq .L_813EE5BC
.L_813EE560:
/* 813EE560 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE564 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE568 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE56C | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE570 | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE574 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE578 | 4B FE CF 01 */	bl iplSDChannelSelect_813DB478
/* 813EE57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE580 | 41 82 00 10 */	beq .L_813EE590
/* 813EE584 | 38 00 00 0E */	li r0, 0xe
/* 813EE588 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE58C | 48 00 00 A8 */	b .L_813EE634
.L_813EE590:
/* 813EE590 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EE594 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EE598 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EE59C | 4B F5 93 69 */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE5A0 | 38 80 00 14 */	li r4, 0x14
/* 813EE5A4 | 38 60 00 01 */	li r3, 0x1
/* 813EE5A8 | 38 00 00 AE */	li r0, 0xae
/* 813EE5AC | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EE5B0 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE5B4 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813EE5B8 | 48 00 00 7C */	b .L_813EE634
.L_813EE5BC:
/* 813EE5BC | 80 9F 00 78 */	lwz r4, 0x78(r31)
/* 813EE5C0 | 3C 60 43 30 */	lis r3, 0x4330
/* 813EE5C4 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813EE5C8 | 38 A0 00 0F */	li r5, 0xf
/* 813EE5CC | 38 84 00 01 */	addi r4, r4, 0x1
/* 813EE5D0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813EE5D4 | C8 62 87 E8 */	lfd f3, lbl_81694BE8@sda21(r0)
/* 813EE5D8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813EE5DC | C0 42 87 E0 */	lfs f2, lbl_81694BE0@sda21(r0)
/* 813EE5E0 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813EE5E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE5E8 | EC 20 18 28 */	fsubs f1, f0, f3
/* 813EE5EC | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813EE5F0 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813EE5F4 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813EE5F8 | 90 BF 00 1C */	stw r5, 0x1c(r31)
/* 813EE5FC | EC 00 18 28 */	fsubs f0, f0, f3
/* 813EE600 | EC 01 00 24 */	fdivs f0, f1, f0
/* 813EE604 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 813EE608 | 4C 41 13 82 */	cror eq, gt, eq
/* 813EE60C | 40 82 00 08 */	bne .L_813EE614
/* 813EE610 | C0 02 87 E4 */	lfs f0, lbl_81694BE4@sda21(r0)
.L_813EE614:
/* 813EE614 | FC 00 00 1E */	fctiwz f0, f0
/* 813EE618 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EE61C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EE620 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 813EE624 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813EE628 | 90 1F 29 E0 */	stw r0, 0x29e0(r31)
/* 813EE62C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EE630 | 90 03 00 3C */	stw r0, 0x3c(r3)
.L_813EE634:
/* 813EE634 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813EE638 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813EE63C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813EE640 | 7C 08 03 A6 */	mtlr r0
/* 813EE644 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813EE648 | 4E 80 00 20 */	blr
.endfn ipl_813EE488

# .text:0x3060 | 0x813EE64C | size: 0x12C
.fn ipl_813EE64C, global
/* 813EE64C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813EE650 | 7C 08 02 A6 */	mflr r0
/* 813EE654 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813EE658 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813EE65C | 48 20 AE 6D */	bl _savegpr_29
/* 813EE660 | 80 A3 00 78 */	lwz r5, 0x78(r3)
/* 813EE664 | 3C 80 43 30 */	lis r4, 0x4330
/* 813EE668 | 80 C3 00 74 */	lwz r6, 0x74(r3)
/* 813EE66C | 7C 7F 1B 78 */	mr r31, r3
/* 813EE670 | 80 0D A6 9C */	lwz r0, lbl_816986DC@sda21(r0)
/* 813EE674 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 813EE678 | 7C 00 33 96 */	divwu r0, r0, r6
/* 813EE67C | C8 82 87 E8 */	lfd f4, lbl_81694BE8@sda21(r0)
/* 813EE680 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813EE684 | C0 62 87 E0 */	lfs f3, lbl_81694BE0@sda21(r0)
/* 813EE688 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813EE68C | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 813EE690 | EC 20 20 28 */	fsubs f1, f0, f4
/* 813EE694 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813EE698 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813EE69C | EC 43 00 72 */	fmuls f2, f3, f1
/* 813EE6A0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813EE6A4 | EC 20 20 28 */	fsubs f1, f0, f4
/* 813EE6A8 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 813EE6AC | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 813EE6B0 | EC 22 08 24 */	fdivs f1, f2, f1
/* 813EE6B4 | EC 00 20 28 */	fsubs f0, f0, f4
/* 813EE6B8 | EC 21 00 2A */	fadds f1, f1, f0
/* 813EE6BC | FC 01 18 40 */	fcmpo cr0, f1, f3
/* 813EE6C0 | 4C 41 13 82 */	cror eq, gt, eq
/* 813EE6C4 | 40 82 00 08 */	bne .L_813EE6CC
/* 813EE6C8 | C0 22 87 E4 */	lfs f1, lbl_81694BE4@sda21(r0)
.L_813EE6CC:
/* 813EE6CC | FC 00 08 1E */	fctiwz f0, f1
/* 813EE6D0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813EE6D4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813EE6D8 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 813EE6DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EE6E0 | 90 03 29 E0 */	stw r0, 0x29e0(r3)
/* 813EE6E4 | 80 9D 00 AC */	lwz r4, 0xac(r29)
/* 813EE6E8 | 90 04 00 3C */	stw r0, 0x3c(r4)
/* 813EE6EC | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813EE6F0 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EE6F4 | 4B F5 A1 15 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813EE6F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE6FC | 40 82 00 64 */	bne .L_813EE760
/* 813EE700 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE704 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EE708 | 4B F5 A1 2D */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813EE70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE710 | 7C 7E 1B 78 */	mr r30, r3
/* 813EE714 | 40 82 00 10 */	bne .L_813EE724
/* 813EE718 | 38 00 00 0F */	li r0, 0xf
/* 813EE71C | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE720 | 48 00 00 40 */	b .L_813EE760
.L_813EE724:
/* 813EE724 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813EE728 | 4B F5 91 DD */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE72C | 38 00 00 14 */	li r0, 0x14
/* 813EE730 | 2C 1E FF F9 */	cmpwi r30, -0x7
/* 813EE734 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE738 | 40 82 00 18 */	bne .L_813EE750
/* 813EE73C | 38 60 00 02 */	li r3, 0x2
/* 813EE740 | 38 00 00 B5 */	li r0, 0xb5
/* 813EE744 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE748 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813EE74C | 48 00 00 14 */	b .L_813EE760
.L_813EE750:
/* 813EE750 | 38 60 00 01 */	li r3, 0x1
/* 813EE754 | 38 00 00 AE */	li r0, 0xae
/* 813EE758 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE75C | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813EE760:
/* 813EE760 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813EE764 | 48 20 AD B1 */	bl _restgpr_29
/* 813EE768 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813EE76C | 7C 08 03 A6 */	mtlr r0
/* 813EE770 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813EE774 | 4E 80 00 20 */	blr
.endfn ipl_813EE64C

# .text:0x318C | 0x813EE778 | size: 0xA0
.fn ipl_813EE778, global
/* 813EE778 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EE77C | 7C 08 02 A6 */	mflr r0
/* 813EE780 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE784 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EE788 | 7C 7F 1B 78 */	mr r31, r3
/* 813EE78C | 80 83 00 74 */	lwz r4, 0x74(r3)
/* 813EE790 | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 813EE794 | 7C 04 00 40 */	cmplw r4, r0
/* 813EE798 | 40 81 00 6C */	ble .L_813EE804
/* 813EE79C | 4B F4 56 31 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813EE7A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE7A4 | 41 82 00 60 */	beq .L_813EE804
/* 813EE7A8 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE7AC | 38 E0 00 00 */	li r7, 0x0
/* 813EE7B0 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE7B4 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE7B8 | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE7BC | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE7C0 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE7C4 | 4B FE CD 11 */	bl iplSDChannelSelect_813DB4D4
/* 813EE7C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE7CC | 41 82 00 10 */	beq .L_813EE7DC
/* 813EE7D0 | 38 00 00 10 */	li r0, 0x10
/* 813EE7D4 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE7D8 | 48 00 00 2C */	b .L_813EE804
.L_813EE7DC:
/* 813EE7DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EE7E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EE7E4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EE7E8 | 4B F5 91 1D */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE7EC | 38 80 00 14 */	li r4, 0x14
/* 813EE7F0 | 38 60 00 01 */	li r3, 0x1
/* 813EE7F4 | 38 00 00 AE */	li r0, 0xae
/* 813EE7F8 | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EE7FC | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE800 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813EE804:
/* 813EE804 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EE808 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EE80C | 7C 08 03 A6 */	mtlr r0
/* 813EE810 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EE814 | 4E 80 00 20 */	blr
.endfn ipl_813EE778

# .text:0x322C | 0x813EE818 | size: 0x128
.fn ipl_813EE818, global
/* 813EE818 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EE81C | 7C 08 02 A6 */	mflr r0
/* 813EE820 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE824 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EE828 | 7C 7F 1B 78 */	mr r31, r3
/* 813EE82C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EE830 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813EE834 | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813EE838 | 4B F5 9F D1 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813EE83C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE840 | 40 82 00 E8 */	bne .L_813EE928
/* 813EE844 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813EE848 | 80 1F 29 E0 */	lwz r0, 0x29e0(r31)
/* 813EE84C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813EE850 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813EE854 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813EE858 | 7C 03 00 00 */	cmpw r3, r0
/* 813EE85C | 41 80 00 CC */	blt .L_813EE928
/* 813EE860 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813EE864 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813EE868 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE86C | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE870 | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE874 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE878 | 4B F4 C1 D9 */	bl iplChannelManager_8133AA50
/* 813EE87C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EE880 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EE884 | 4B F5 9F B1 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813EE888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE88C | 40 82 00 7C */	bne .L_813EE908
/* 813EE890 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813EE894 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813EE898 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813EE89C | 7C 00 18 40 */	cmplw r0, r3
/* 813EE8A0 | 90 7F 00 78 */	stw r3, 0x78(r31)
/* 813EE8A4 | 40 81 00 44 */	ble .L_813EE8E8
/* 813EE8A8 | 54 60 18 38 */	slwi r0, r3, 3
/* 813EE8AC | 81 1F 16 48 */	lwz r8, 0x1648(r31)
/* 813EE8B0 | 7C 9F 02 14 */	add r4, r31, r0
/* 813EE8B4 | 7F E3 FB 78 */	mr r3, r31
/* 813EE8B8 | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE8BC | 38 FF 16 50 */	addi r7, r31, 0x1650
/* 813EE8C0 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE8C4 | 4B FF FA 95 */	bl ipl_813EE358
/* 813EE8C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE8CC | 41 82 00 10 */	beq .L_813EE8DC
/* 813EE8D0 | 38 00 00 11 */	li r0, 0x11
/* 813EE8D4 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE8D8 | 48 00 00 50 */	b .L_813EE928
.L_813EE8DC:
/* 813EE8DC | 38 00 00 0D */	li r0, 0xd
/* 813EE8E0 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EE8E4 | 48 00 00 44 */	b .L_813EE928
.L_813EE8E8:
/* 813EE8E8 | 80 9E 00 AC */	lwz r4, 0xac(r30)
/* 813EE8EC | 38 A0 00 64 */	li r5, 0x64
/* 813EE8F0 | 38 60 00 14 */	li r3, 0x14
/* 813EE8F4 | 38 00 00 00 */	li r0, 0x0
/* 813EE8F8 | 90 A4 00 3C */	stw r5, 0x3c(r4)
/* 813EE8FC | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 813EE900 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813EE904 | 48 00 00 24 */	b .L_813EE928
.L_813EE908:
/* 813EE908 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813EE90C | 4B F5 8F F9 */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE910 | 38 80 00 14 */	li r4, 0x14
/* 813EE914 | 38 60 00 01 */	li r3, 0x1
/* 813EE918 | 38 00 00 AE */	li r0, 0xae
/* 813EE91C | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EE920 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EE924 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813EE928:
/* 813EE928 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EE92C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EE930 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EE934 | 7C 08 03 A6 */	mtlr r0
/* 813EE938 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EE93C | 4E 80 00 20 */	blr
.endfn ipl_813EE818

# .text:0x3354 | 0x813EE940 | size: 0xE8
.fn ipl_813EE940, global
/* 813EE940 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EE944 | 7C 08 02 A6 */	mflr r0
/* 813EE948 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EE94C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EE950 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813EE954 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813EE958 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EE95C | 7C 7E 1B 78 */	mr r30, r3
/* 813EE960 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 813EE964 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813EE968 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813EE96C | 40 82 00 A4 */	bne .L_813EEA10
/* 813EE970 | 38 00 00 00 */	li r0, 0x0
/* 813EE974 | 38 80 00 B1 */	li r4, 0xb1
/* 813EE978 | B0 03 19 50 */	sth r0, 0x1950(r3)
/* 813EE97C | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813EE980 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EE984 | 4B F4 FE 39 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EE988 | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 813EE98C | 3C A0 81 65 */	lis r5, lbl_8165678A@ha
/* 813EE990 | 7C 67 1B 78 */	mr r7, r3
/* 813EE994 | 38 7E 19 50 */	addi r3, r30, 0x1950
/* 813EE998 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813EE99C | 38 A5 67 8A */	addi r5, r5, lbl_8165678A@l
/* 813EE9A0 | 38 80 10 7F */	li r4, 0x107f
/* 813EE9A4 | 7C DE 02 14 */	add r6, r30, r0
/* 813EE9A8 | 38 C6 03 80 */	addi r6, r6, 0x380
/* 813EE9AC | 4C C6 31 82 */	crclr cr1eq
/* 813EE9B0 | 48 21 9C 21 */	bl swprintf
/* 813EE9B4 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813EE9B8 | 38 9E 19 50 */	addi r4, r30, 0x1950
/* 813EE9BC | 4B F5 76 F5 */	bl set_title__Q23ipl12DialogWindowFPCw
/* 813EE9C0 | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 813EE9C4 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813EE9C8 | 54 00 18 38 */	slwi r0, r0, 3
/* 813EE9CC | 7C 9E 02 14 */	add r4, r30, r0
/* 813EE9D0 | 80 A4 00 80 */	lwz r5, 0x80(r4)
/* 813EE9D4 | 80 C4 00 84 */	lwz r6, 0x84(r4)
/* 813EE9D8 | 4B FE CC 15 */	bl iplSDChannelSelect_813DB5EC
/* 813EE9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EE9E0 | 41 82 00 10 */	beq .L_813EE9F0
/* 813EE9E4 | 38 00 00 12 */	li r0, 0x12
/* 813EE9E8 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 813EE9EC | 48 00 00 24 */	b .L_813EEA10
.L_813EE9F0:
/* 813EE9F0 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813EE9F4 | 4B F5 8F 11 */	bl terminate__Q23ipl12DialogWindowFv
/* 813EE9F8 | 38 80 00 14 */	li r4, 0x14
/* 813EE9FC | 38 60 00 01 */	li r3, 0x1
/* 813EEA00 | 38 00 00 AE */	li r0, 0xae
/* 813EEA04 | 90 9E 00 1C */	stw r4, 0x1c(r30)
/* 813EEA08 | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 813EEA0C | 90 1E 00 28 */	stw r0, 0x28(r30)
.L_813EEA10:
/* 813EEA10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEA14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEA18 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EEA1C | 7C 08 03 A6 */	mtlr r0
/* 813EEA20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEA24 | 4E 80 00 20 */	blr
.endfn ipl_813EE940

# .text:0x343C | 0x813EEA28 | size: 0x84
.fn ipl_813EEA28, global
/* 813EEA28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EEA2C | 7C 08 02 A6 */	mflr r0
/* 813EEA30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EEA34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EEA38 | 7C 7F 1B 78 */	mr r31, r3
/* 813EEA3C | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813EEA40 | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813EEA44 | 4B F5 9D C5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813EEA48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EEA4C | 40 82 00 4C */	bne .L_813EEA98
/* 813EEA50 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EEA54 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813EEA58 | 4B F5 9D DD */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813EEA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EEA60 | 40 82 00 10 */	bne .L_813EEA70
/* 813EEA64 | 38 00 00 0D */	li r0, 0xd
/* 813EEA68 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EEA6C | 48 00 00 2C */	b .L_813EEA98
.L_813EEA70:
/* 813EEA70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EEA74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EEA78 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EEA7C | 4B F5 8E 89 */	bl terminate__Q23ipl12DialogWindowFv
/* 813EEA80 | 38 80 00 14 */	li r4, 0x14
/* 813EEA84 | 38 60 00 01 */	li r3, 0x1
/* 813EEA88 | 38 00 00 AE */	li r0, 0xae
/* 813EEA8C | 90 9F 00 1C */	stw r4, 0x1c(r31)
/* 813EEA90 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EEA94 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813EEA98:
/* 813EEA98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEA9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEAA0 | 7C 08 03 A6 */	mtlr r0
/* 813EEAA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEAA8 | 4E 80 00 20 */	blr
.endfn ipl_813EEA28

# .text:0x34C0 | 0x813EEAAC | size: 0xE8
.fn ipl_813EEAAC, global
/* 813EEAAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EEAB0 | 7C 08 02 A6 */	mflr r0
/* 813EEAB4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813EEAB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EEABC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813EEAC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EEAC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813EEAC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EEACC | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813EEAD0 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813EEAD4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EEAD8 | 40 82 00 58 */	bne .L_813EEB30
/* 813EEADC | 88 03 29 D1 */	lbz r0, 0x29d1(r3)
/* 813EEAE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EEAE4 | 41 82 00 4C */	beq .L_813EEB30
/* 813EEAE8 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 813EEAEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EEAF0 | 40 82 00 40 */	bne .L_813EEB30
/* 813EEAF4 | 38 00 00 00 */	li r0, 0x0
/* 813EEAF8 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 813EEAFC | 98 03 29 D1 */	stb r0, 0x29d1(r3)
/* 813EEB00 | 38 80 00 01 */	li r4, 0x1
/* 813EEB04 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813EEB08 | 48 12 38 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EEB0C | 4B F7 B1 19 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EEB10 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813EEB14 | 38 80 00 01 */	li r4, 0x1
/* 813EEB18 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EEB1C | 48 12 37 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EEB20 | 7C 7E 1B 78 */	mr r30, r3
/* 813EEB24 | 4B F7 3D 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EEB28 | 38 00 00 01 */	li r0, 0x1
/* 813EEB2C | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813EEB30:
/* 813EEB30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EEB34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EEB38 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EEB3C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813EEB40 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813EEB44 | 41 82 00 34 */	beq .L_813EEB78
/* 813EEB48 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813EEB4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EEB50 | 41 82 00 08 */	beq .L_813EEB58
/* 813EEB54 | 48 00 00 1C */	b .L_813EEB70
.L_813EEB58:
/* 813EEB58 | 38 60 00 01 */	li r3, 0x1
/* 813EEB5C | 38 00 00 19 */	li r0, 0x19
/* 813EEB60 | 98 7F 29 D0 */	stb r3, 0x29d0(r31)
/* 813EEB64 | 38 60 00 01 */	li r3, 0x1
/* 813EEB68 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EEB6C | 48 00 00 10 */	b .L_813EEB7C
.L_813EEB70:
/* 813EEB70 | 38 00 00 17 */	li r0, 0x17
/* 813EEB74 | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_813EEB78:
/* 813EEB78 | 38 60 00 00 */	li r3, 0x0
.L_813EEB7C:
/* 813EEB7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEB80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEB84 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EEB88 | 7C 08 03 A6 */	mtlr r0
/* 813EEB8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEB90 | 4E 80 00 20 */	blr
.endfn ipl_813EEAAC

# .text:0x35A8 | 0x813EEB94 | size: 0x148
.fn ipl_813EEB94, global
/* 813EEB94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EEB98 | 7C 08 02 A6 */	mflr r0
/* 813EEB9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EEBA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EEBA4 | 48 20 A9 1D */	bl _savegpr_27
/* 813EEBA8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813EEBAC | 7C 7B 1B 78 */	mr r27, r3
/* 813EEBB0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813EEBB4 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 813EEBB8 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813EEBBC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EEBC0 | 4B F4 FB FD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EEBC4 | 3C 80 81 65 */	lis r4, lbl_8165679A@ha
/* 813EEBC8 | 7C 7D 1B 78 */	mr r29, r3
/* 813EEBCC | 38 84 67 9A */	addi r4, r4, lbl_8165679A@l
/* 813EEBD0 | 48 21 9C 3D */	bl fn_8160880C
/* 813EEBD4 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813EEBD8 | 7C 7F 1B 78 */	mr r31, r3
/* 813EEBDC | 38 60 08 00 */	li r3, 0x800
/* 813EEBE0 | 38 A0 FF E0 */	li r5, -0x20
/* 813EEBE4 | 48 20 94 F1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813EEBE8 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813EEBEC | 7C 7E 1B 78 */	mr r30, r3
/* 813EEBF0 | 38 60 08 00 */	li r3, 0x800
/* 813EEBF4 | 38 A0 FF E0 */	li r5, -0x20
/* 813EEBF8 | 48 20 94 DD */	bl __nwa__FUlPQ23EGG4Heapi
/* 813EEBFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813EEC00 | 7C 7C 1B 78 */	mr r28, r3
/* 813EEC04 | 41 82 00 88 */	beq .L_813EEC8C
/* 813EEC08 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813EEC0C | 41 82 00 80 */	beq .L_813EEC8C
/* 813EEC10 | 38 00 00 00 */	li r0, 0x0
/* 813EEC14 | 38 7E 00 02 */	addi r3, r30, 0x2
/* 813EEC18 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 813EEC1C | 38 80 00 01 */	li r4, 0x1
/* 813EEC20 | 38 A0 00 00 */	li r5, 0x0
/* 813EEC24 | 4B F4 17 11 */	bl memset
/* 813EEC28 | 7C 1D F8 50 */	subf r0, r29, r31
/* 813EEC2C | 7F C3 F3 78 */	mr r3, r30
/* 813EEC30 | 7F A4 EB 78 */	mr r4, r29
/* 813EEC34 | 54 05 F8 7E */	srwi r5, r0, 1
/* 813EEC38 | 48 21 9B 1D */	bl fn_81608754
/* 813EEC3C | 7F C3 F3 78 */	mr r3, r30
/* 813EEC40 | 38 8D 8F 90 */	li r4, lbl_81696FD0@sda21
/* 813EEC44 | 48 21 9A E5 */	bl wcscat
/* 813EEC48 | 7F C3 F3 78 */	mr r3, r30
/* 813EEC4C | 38 9F 00 08 */	addi r4, r31, 0x8
/* 813EEC50 | 48 21 9A D9 */	bl wcscat
/* 813EEC54 | 80 7B 00 64 */	lwz r3, 0x64(r27)
/* 813EEC58 | 7C 60 8E 70 */	srawi r0, r3, 17
/* 813EEC5C | 7C C0 01 94 */	addze r6, r0
/* 813EEC60 | 7C 60 8E 70 */	srawi r0, r3, 17
/* 813EEC64 | 7C 00 01 94 */	addze r0, r0
/* 813EEC68 | 54 00 88 1C */	slwi r0, r0, 17
/* 813EEC6C | 7C 00 18 51 */	subf. r0, r0, r3
/* 813EEC70 | 41 82 00 08 */	beq .L_813EEC78
/* 813EEC74 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_813EEC78:
/* 813EEC78 | 7F 83 E3 78 */	mr r3, r28
/* 813EEC7C | 7F C5 F3 78 */	mr r5, r30
/* 813EEC80 | 38 80 03 FF */	li r4, 0x3ff
/* 813EEC84 | 4C C6 31 82 */	crclr cr1eq
/* 813EEC88 | 48 21 99 49 */	bl swprintf
.L_813EEC8C:
/* 813EEC8C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EEC90 | 7F 84 E3 78 */	mr r4, r28
/* 813EEC94 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EEC98 | 38 A0 00 C8 */	li r5, 0xc8
/* 813EEC9C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EECA0 | 38 C0 00 A5 */	li r6, 0xa5
/* 813EECA4 | 38 E0 00 00 */	li r7, 0x0
/* 813EECA8 | 4B F5 7E C5 */	bl iplDialogWindow_81346B6C
/* 813EECAC | 38 00 00 16 */	li r0, 0x16
/* 813EECB0 | 7F C3 F3 78 */	mr r3, r30
/* 813EECB4 | 90 1B 00 1C */	stw r0, 0x1c(r27)
/* 813EECB8 | 48 20 94 35 */	bl __dla__FPv
/* 813EECBC | 7F 83 E3 78 */	mr r3, r28
/* 813EECC0 | 48 20 94 2D */	bl __dla__FPv
/* 813EECC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EECC8 | 48 20 A8 45 */	bl _restgpr_27
/* 813EECCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EECD0 | 7C 08 03 A6 */	mtlr r0
/* 813EECD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EECD8 | 4E 80 00 20 */	blr
.endfn ipl_813EEB94

# .text:0x36F0 | 0x813EECDC | size: 0x11C
.fn ipl_813EECDC, global
/* 813EECDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EECE0 | 7C 08 02 A6 */	mflr r0
/* 813EECE4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813EECE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EECEC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813EECF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EECF4 | 7C 7F 1B 78 */	mr r31, r3
/* 813EECF8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EECFC | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813EED00 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813EED04 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813EED08 | 40 82 00 4C */	bne .L_813EED54
/* 813EED0C | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 813EED10 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813EED14 | 40 82 00 40 */	bne .L_813EED54
/* 813EED18 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813EED1C | 38 80 00 01 */	li r4, 0x1
/* 813EED20 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EED24 | 48 12 35 F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EED28 | 4B F7 AE FD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EED2C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813EED30 | 38 80 00 01 */	li r4, 0x1
/* 813EED34 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EED38 | 48 12 35 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EED3C | 7C 7E 1B 78 */	mr r30, r3
/* 813EED40 | 4B F7 3B 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EED44 | 38 60 00 01 */	li r3, 0x1
/* 813EED48 | 38 00 00 00 */	li r0, 0x0
/* 813EED4C | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813EED50 | 98 1F 29 D1 */	stb r0, 0x29d1(r31)
.L_813EED54:
/* 813EED54 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EED58 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EED5C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EED60 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813EED64 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813EED68 | 41 82 00 74 */	beq .L_813EEDDC
/* 813EED6C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813EED70 | 40 82 00 1C */	bne .L_813EED8C
/* 813EED74 | 38 60 00 04 */	li r3, 0x4
/* 813EED78 | 38 00 00 19 */	li r0, 0x19
/* 813EED7C | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813EED80 | 38 60 00 01 */	li r3, 0x1
/* 813EED84 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EED88 | 48 00 00 58 */	b .L_813EEDE0
.L_813EED8C:
/* 813EED8C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EED90 | 38 80 00 00 */	li r4, 0x0
/* 813EED94 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EED98 | 48 12 35 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EED9C | 4B F7 AE 89 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EEDA0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EEDA4 | 38 80 00 00 */	li r4, 0x0
/* 813EEDA8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EEDAC | 48 12 35 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EEDB0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EEDB4 | 4B F7 3A BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EEDB8 | 38 00 00 01 */	li r0, 0x1
/* 813EEDBC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EEDC0 | 3C 80 81 65 */	lis r4, lbl_81656696@ha
/* 813EEDC4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EEDC8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EEDCC | 38 84 66 96 */	addi r4, r4, lbl_81656696@l
/* 813EEDD0 | 4B F7 C6 9D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EEDD4 | 38 00 00 00 */	li r0, 0x0
/* 813EEDD8 | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_813EEDDC:
/* 813EEDDC | 38 60 00 00 */	li r3, 0x0
.L_813EEDE0:
/* 813EEDE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEDE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEDE8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EEDEC | 7C 08 03 A6 */	mtlr r0
/* 813EEDF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEDF4 | 4E 80 00 20 */	blr
.endfn ipl_813EECDC

# .text:0x380C | 0x813EEDF8 | size: 0x78
.fn ipl_813EEDF8, global
/* 813EEDF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EEDFC | 7C 08 02 A6 */	mflr r0
/* 813EEE00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EEE04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EEE08 | 7C 7F 1B 78 */	mr r31, r3
/* 813EEE0C | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 813EEE10 | 2C 04 00 BF */	cmpwi r4, 0xbf
/* 813EEE14 | 41 82 00 14 */	beq .L_813EEE28
/* 813EEE18 | 40 80 00 28 */	bge .L_813EEE40
/* 813EEE1C | 2C 04 00 B5 */	cmpwi r4, 0xb5
/* 813EEE20 | 41 82 00 08 */	beq .L_813EEE28
/* 813EEE24 | 48 00 00 1C */	b .L_813EEE40
.L_813EEE28:
/* 813EEE28 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EEE2C | 38 A0 00 A5 */	li r5, 0xa5
/* 813EEE30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EEE34 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EEE38 | 4B F5 79 4D */	bl callBtn1SDRelated__Q23ipl12DialogWindowFUlUl
/* 813EEE3C | 48 00 00 18 */	b .L_813EEE54
.L_813EEE40:
/* 813EEE40 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EEE44 | 38 A0 00 2E */	li r5, 0x2e
/* 813EEE48 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EEE4C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813EEE50 | 4B F5 79 35 */	bl callBtn1SDRelated__Q23ipl12DialogWindowFUlUl
.L_813EEE54:
/* 813EEE54 | 38 00 00 18 */	li r0, 0x18
/* 813EEE58 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813EEE5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEE60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEE64 | 7C 08 03 A6 */	mtlr r0
/* 813EEE68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEE6C | 4E 80 00 20 */	blr
.endfn ipl_813EEDF8

# .text:0x3884 | 0x813EEE70 | size: 0xC0
.fn ipl_813EEE70, global
/* 813EEE70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EEE74 | 7C 08 02 A6 */	mflr r0
/* 813EEE78 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813EEE7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EEE80 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813EEE84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EEE88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EEE8C | 7C 7E 1B 78 */	mr r30, r3
/* 813EEE90 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813EEE94 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813EEE98 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813EEE9C | 40 82 00 40 */	bne .L_813EEEDC
/* 813EEEA0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813EEEA4 | 38 80 00 01 */	li r4, 0x1
/* 813EEEA8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EEEAC | 48 12 34 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EEEB0 | 4B F7 AD 75 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EEEB4 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813EEEB8 | 38 80 00 01 */	li r4, 0x1
/* 813EEEBC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EEEC0 | 48 12 34 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EEEC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813EEEC8 | 4B F7 39 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EEECC | 38 60 00 01 */	li r3, 0x1
/* 813EEED0 | 38 00 00 00 */	li r0, 0x0
/* 813EEED4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813EEED8 | 98 1E 29 D1 */	stb r0, 0x29d1(r30)
.L_813EEEDC:
/* 813EEEDC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813EEEE0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813EEEE4 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813EEEE8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813EEEEC | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813EEEF0 | 41 82 00 24 */	beq .L_813EEF14
/* 813EEEF4 | 38 00 00 01 */	li r0, 0x1
/* 813EEEF8 | 98 1E 29 D0 */	stb r0, 0x29d0(r30)
/* 813EEEFC | 80 64 00 B4 */	lwz r3, 0xb4(r4)
/* 813EEF00 | 4B F5 94 45 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813EEF04 | 38 00 00 19 */	li r0, 0x19
/* 813EEF08 | 38 60 00 01 */	li r3, 0x1
/* 813EEF0C | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 813EEF10 | 48 00 00 08 */	b .L_813EEF18
.L_813EEF14:
/* 813EEF14 | 38 60 00 00 */	li r3, 0x0
.L_813EEF18:
/* 813EEF18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEF1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEF20 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EEF24 | 7C 08 03 A6 */	mtlr r0
/* 813EEF28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEF2C | 4E 80 00 20 */	blr
.endfn ipl_813EEE70

# .text:0x3944 | 0x813EEF30 | size: 0x88
.fn ipl_813EEF30, global
/* 813EEF30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EEF34 | 7C 08 02 A6 */	mflr r0
/* 813EEF38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EEF3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EEF40 | 7C 7F 1B 78 */	mr r31, r3
/* 813EEF44 | 38 60 00 00 */	li r3, 0x0
/* 813EEF48 | 4B F7 3B 85 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813EEF4C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813EEF50 | 4B F7 B8 4D */	bl draw__Q33ipl6layout6ObjectFv
/* 813EEF54 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 813EEF58 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813EEF5C | 41 82 00 48 */	beq .L_813EEFA4
/* 813EEF60 | 40 80 00 18 */	bge .L_813EEF78
/* 813EEF64 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EEF68 | 40 80 00 28 */	bge .L_813EEF90
/* 813EEF6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EEF70 | 40 80 00 14 */	bge .L_813EEF84
/* 813EEF74 | 48 00 00 30 */	b .L_813EEFA4
.L_813EEF78:
/* 813EEF78 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813EEF7C | 40 80 00 28 */	bge .L_813EEFA4
/* 813EEF80 | 48 00 00 1C */	b .L_813EEF9C
.L_813EEF84:
/* 813EEF84 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EEF88 | 4B F7 B8 15 */	bl draw__Q33ipl6layout6ObjectFv
/* 813EEF8C | 48 00 00 18 */	b .L_813EEFA4
.L_813EEF90:
/* 813EEF90 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EEF94 | 4B F7 B8 09 */	bl draw__Q33ipl6layout6ObjectFv
/* 813EEF98 | 48 00 00 0C */	b .L_813EEFA4
.L_813EEF9C:
/* 813EEF9C | 7F E3 FB 78 */	mr r3, r31
/* 813EEFA0 | 48 00 00 19 */	bl ipl_813EEFB8
.L_813EEFA4:
/* 813EEFA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EEFA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EEFAC | 7C 08 03 A6 */	mtlr r0
/* 813EEFB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EEFB4 | 4E 80 00 20 */	blr
.endfn ipl_813EEF30

# .text:0x39CC | 0x813EEFB8 | size: 0x70C
.fn ipl_813EEFB8, global
/* 813EEFB8 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 813EEFBC | 7C 08 02 A6 */	mflr r0
/* 813EEFC0 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 813EEFC4 | DB E1 01 30 */	stfd f31, 0x130(r1)
/* 813EEFC8 | F3 E1 01 38 */	psq_st f31, 0x138(r1), 0, qr0
/* 813EEFCC | DB C1 01 20 */	stfd f30, 0x120(r1)
/* 813EEFD0 | F3 C1 01 28 */	psq_st f30, 0x128(r1), 0, qr0
/* 813EEFD4 | DB A1 01 10 */	stfd f29, 0x110(r1)
/* 813EEFD8 | F3 A1 01 18 */	psq_st f29, 0x118(r1), 0, qr0
/* 813EEFDC | DB 81 01 00 */	stfd f28, 0x100(r1)
/* 813EEFE0 | F3 81 01 08 */	psq_st f28, 0x108(r1), 0, qr0
/* 813EEFE4 | DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 813EEFE8 | F3 61 00 F8 */	psq_st f27, 0xf8(r1), 0, qr0
/* 813EEFEC | DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 813EEFF0 | F3 41 00 E8 */	psq_st f26, 0xe8(r1), 0, qr0
/* 813EEFF4 | DB 21 00 D0 */	stfd f25, 0xd0(r1)
/* 813EEFF8 | F3 21 00 D8 */	psq_st f25, 0xd8(r1), 0, qr0
/* 813EEFFC | DB 01 00 C0 */	stfd f24, 0xc0(r1)
/* 813EF000 | F3 01 00 C8 */	psq_st f24, 0xc8(r1), 0, qr0
/* 813EF004 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 813EF008 | 48 20 A4 99 */	bl _savegpr_19
/* 813EF00C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813EF010 | 7C 79 1B 78 */	mr r25, r3
/* 813EF014 | 3F C0 81 65 */	lis r30, lbl_81655CA0@ha
/* 813EF018 | 38 8D 8F 89 */	li r4, lbl_81696FC9@sda21
/* 813EF01C | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813EF020 | 3B DE 5C A0 */	addi r30, r30, lbl_81655CA0@l
/* 813EF024 | 38 A0 00 01 */	li r5, 0x1
/* 813EF028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF02C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF030 | 7D 89 03 A6 */	mtctr r12
/* 813EF034 | 4E 80 04 21 */	bctrl
/* 813EF038 | 80 D9 00 08 */	lwz r6, 0x8(r25)
/* 813EF03C | 38 9E 0B 04 */	addi r4, r30, 0xb04
/* 813EF040 | C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 813EF044 | 38 A0 00 01 */	li r5, 0x1
/* 813EF048 | C3 E3 00 30 */	lfs f31, 0x30(r3)
/* 813EF04C | C0 03 00 34 */	lfs f0, 0x34(r3)
/* 813EF050 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813EF054 | D0 21 00 70 */	stfs f1, 0x70(r1)
/* 813EF058 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF05C | D3 E1 00 74 */	stfs f31, 0x74(r1)
/* 813EF060 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF064 | D0 01 00 78 */	stfs f0, 0x78(r1)
/* 813EF068 | 7D 89 03 A6 */	mtctr r12
/* 813EF06C | 4E 80 04 21 */	bctrl
/* 813EF070 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF074 | 38 9E 0B 12 */	addi r4, r30, 0xb12
/* 813EF078 | 38 A0 00 01 */	li r5, 0x1
/* 813EF07C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EF080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF084 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF088 | 7D 89 03 A6 */	mtctr r12
/* 813EF08C | 4E 80 04 21 */	bctrl
/* 813EF090 | C0 02 87 F0 */	lfs f0, lbl_81694BF0@sda21(r0)
/* 813EF094 | 7C 7D 1B 78 */	mr r29, r3
/* 813EF098 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 813EF09C | 40 80 00 10 */	bge .L_813EF0AC
/* 813EF0A0 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF0A4 | 38 9E 0B 04 */	addi r4, r30, 0xb04
/* 813EF0A8 | 4B F7 B7 61 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_813EF0AC:
/* 813EF0AC | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF0B0 | 38 8D 8F 89 */	li r4, lbl_81696FC9@sda21
/* 813EF0B4 | 38 A0 00 01 */	li r5, 0x1
/* 813EF0B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EF0BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF0C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF0C4 | 7D 89 03 A6 */	mtctr r12
/* 813EF0C8 | 4E 80 04 21 */	bctrl
/* 813EF0CC | 8B E3 00 CD */	lbz r31, 0xcd(r3)
/* 813EF0D0 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 813EF0D4 | 48 00 06 4D */	bl ipl_813EF720
/* 813EF0D8 | 7C 76 1B 78 */	mr r22, r3
/* 813EF0DC | 48 00 00 0C */	b .L_813EF0E8
.L_813EF0E0:
/* 813EF0E0 | 9B F6 00 C9 */	stb r31, 0xc9(r22)
/* 813EF0E4 | 82 D6 00 00 */	lwz r22, 0x0(r22)
.L_813EF0E8:
/* 813EF0E8 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 813EF0EC | 48 00 06 3D */	bl ipl_813EF728
/* 813EF0F0 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 813EF0F4 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813EF0F8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813EF0FC | 92 C1 00 34 */	stw r22, 0x34(r1)
/* 813EF100 | 48 00 06 31 */	bl ipl_813EF730
/* 813EF104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF108 | 40 82 FF D8 */	bne .L_813EF0E0
/* 813EF10C | 80 19 16 48 */	lwz r0, 0x1648(r25)
/* 813EF110 | C3 42 87 D0 */	lfs f26, lbl_81694BD0@sda21(r0)
/* 813EF114 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EF118 | C3 7D 00 50 */	lfs f27, 0x50(r29)
/* 813EF11C | 41 82 01 64 */	beq .L_813EF280
/* 813EF120 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EF124 | 38 80 00 CB */	li r4, 0xcb
/* 813EF128 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EF12C | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813EF130 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EF134 | 4B F4 F6 89 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EF138 | 3A C0 00 00 */	li r22, 0x0
/* 813EF13C | 38 8D 8F 96 */	li r4, lbl_81696FD6@sda21
/* 813EF140 | 48 21 96 CD */	bl fn_8160880C
/* 813EF144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF148 | 41 82 00 24 */	beq .L_813EF16C
/* 813EF14C | 3A AD 8F 96 */	li r21, lbl_81696FD6@sda21
/* 813EF150 | 48 00 00 14 */	b .L_813EF164
.L_813EF154:
/* 813EF154 | 7E A4 AB 78 */	mr r4, r21
/* 813EF158 | 38 63 00 02 */	addi r3, r3, 0x2
/* 813EF15C | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813EF160 | 48 21 96 AD */	bl fn_8160880C
.L_813EF164:
/* 813EF164 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF168 | 40 82 FF EC */	bne .L_813EF154
.L_813EF16C:
/* 813EF16C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EF170 | 38 80 00 CB */	li r4, 0xcb
/* 813EF174 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EF178 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813EF17C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EF180 | 4B F4 F6 3D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EF184 | 80 D9 00 08 */	lwz r6, 0x8(r25)
/* 813EF188 | 7C 7A 1B 78 */	mr r26, r3
/* 813EF18C | 38 9E 0B 1E */	addi r4, r30, 0xb1e
/* 813EF190 | 38 A0 00 01 */	li r5, 0x1
/* 813EF194 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813EF198 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF19C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF1A0 | 7D 89 03 A6 */	mtctr r12
/* 813EF1A4 | 4E 80 04 21 */	bctrl
/* 813EF1A8 | 36 F6 00 01 */	addic. r23, r22, 0x1
/* 813EF1AC | 7C 7B 1B 78 */	mr r27, r3
/* 813EF1B0 | 3B 80 00 00 */	li r28, 0x0
/* 813EF1B4 | 40 81 00 CC */	ble .L_813EF280
/* 813EF1B8 | C3 02 87 D0 */	lfs f24, lbl_81694BD0@sda21(r0)
/* 813EF1BC | 3B 0D 8F 96 */	li r24, lbl_81696FD6@sda21
/* 813EF1C0 | C3 22 87 F0 */	lfs f25, lbl_81694BF0@sda21(r0)
/* 813EF1C4 | 3A A0 00 00 */	li r21, 0x0
/* 813EF1C8 | 48 00 00 B0 */	b .L_813EF278
.L_813EF1CC:
/* 813EF1CC | 7F 43 D3 78 */	mr r3, r26
/* 813EF1D0 | 7F 04 C3 78 */	mr r4, r24
/* 813EF1D4 | 48 21 96 39 */	bl fn_8160880C
/* 813EF1D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF1DC | 7C 76 1B 78 */	mr r22, r3
/* 813EF1E0 | 40 82 00 14 */	bne .L_813EF1F4
/* 813EF1E4 | 7F 63 DB 78 */	mr r3, r27
/* 813EF1E8 | 7F 44 D3 78 */	mr r4, r26
/* 813EF1EC | 4B F7 53 01 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 813EF1F0 | 48 00 00 3C */	b .L_813EF22C
.L_813EF1F4:
/* 813EF1F4 | 7C 1A 18 50 */	subf r0, r26, r3
/* 813EF1F8 | 7F 44 D3 78 */	mr r4, r26
/* 813EF1FC | 7C 00 0E 70 */	srawi r0, r0, 1
/* 813EF200 | 38 79 19 50 */	addi r3, r25, 0x1950
/* 813EF204 | 7F 40 01 94 */	addze r26, r0
/* 813EF208 | 7F 45 D3 78 */	mr r5, r26
/* 813EF20C | 48 21 94 D9 */	bl fn_816086E4
/* 813EF210 | 57 40 08 3C */	slwi r0, r26, 1
/* 813EF214 | 7F 63 DB 78 */	mr r3, r27
/* 813EF218 | 7C B9 02 14 */	add r5, r25, r0
/* 813EF21C | 38 99 19 50 */	addi r4, r25, 0x1950
/* 813EF220 | B2 A5 19 50 */	sth r21, 0x1950(r5)
/* 813EF224 | 4B F7 52 C9 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 813EF228 | 3B 56 00 02 */	addi r26, r22, 0x2
.L_813EF22C:
/* 813EF22C | FC 1F C8 40 */	fcmpo cr0, f31, f25
/* 813EF230 | 40 80 00 40 */	bge .L_813EF270
/* 813EF234 | D3 01 00 58 */	stfs f24, 0x58(r1)
/* 813EF238 | 7F A3 EB 78 */	mr r3, r29
/* 813EF23C | 38 81 00 58 */	addi r4, r1, 0x58
/* 813EF240 | D3 41 00 5C */	stfs f26, 0x5c(r1)
/* 813EF244 | 4B F5 51 A1 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813EF248 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813EF24C | 7F A3 EB 78 */	mr r3, r29
/* 813EF250 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813EF254 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813EF258 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813EF25C | 7D 89 03 A6 */	mtctr r12
/* 813EF260 | 4E 80 04 21 */	bctrl
/* 813EF264 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF268 | 7F A4 EB 78 */	mr r4, r29
/* 813EF26C | 4B F7 B6 21 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
.L_813EF270:
/* 813EF270 | EF 5A D8 28 */	fsubs f26, f26, f27
/* 813EF274 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_813EF278:
/* 813EF278 | 7C 1C B8 00 */	cmpw r28, r23
/* 813EF27C | 41 80 FF 50 */	blt .L_813EF1CC
.L_813EF280:
/* 813EF280 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF284 | EF 5A D8 2A */	fadds f26, f26, f27
/* 813EF288 | C0 22 87 F4 */	lfs f1, lbl_81694BF4@sda21(r0)
/* 813EF28C | 38 8D 8F 82 */	li r4, lbl_81696FC2@sda21
/* 813EF290 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EF294 | 38 A0 00 01 */	li r5, 0x1
/* 813EF298 | C0 02 87 F8 */	lfs f0, lbl_81694BF8@sda21(r0)
/* 813EF29C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF2A0 | EF C1 D0 2A */	fadds f30, f1, f26
/* 813EF2A4 | EF A0 D0 2A */	fadds f29, f0, f26
/* 813EF2A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF2AC | 7D 89 03 A6 */	mtctr r12
/* 813EF2B0 | 4E 80 04 21 */	bctrl
/* 813EF2B4 | C3 83 00 50 */	lfs f28, 0x50(r3)
/* 813EF2B8 | 7C 7D 1B 78 */	mr r29, r3
/* 813EF2BC | 38 63 00 10 */	addi r3, r3, 0x10
/* 813EF2C0 | 48 00 04 61 */	bl ipl_813EF720
/* 813EF2C4 | 7C 76 1B 78 */	mr r22, r3
/* 813EF2C8 | 48 00 00 0C */	b .L_813EF2D4
.L_813EF2CC:
/* 813EF2CC | 9B F6 00 C9 */	stb r31, 0xc9(r22)
/* 813EF2D0 | 82 D6 00 00 */	lwz r22, 0x0(r22)
.L_813EF2D4:
/* 813EF2D4 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 813EF2D8 | 48 00 04 51 */	bl ipl_813EF728
/* 813EF2DC | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813EF2E0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813EF2E4 | 38 81 00 28 */	addi r4, r1, 0x28
/* 813EF2E8 | 92 C1 00 2C */	stw r22, 0x2c(r1)
/* 813EF2EC | 48 00 04 45 */	bl ipl_813EF730
/* 813EF2F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF2F4 | 40 82 FF D8 */	bne .L_813EF2CC
/* 813EF2F8 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF2FC | 38 9E 06 16 */	addi r4, r30, 0x616
/* 813EF300 | 38 A0 00 01 */	li r5, 0x1
/* 813EF304 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EF308 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF30C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF310 | 7D 89 03 A6 */	mtctr r12
/* 813EF314 | 4E 80 04 21 */	bctrl
/* 813EF318 | 9B E3 00 CD */	stb r31, 0xcd(r3)
/* 813EF31C | 7C 7C 1B 78 */	mr r28, r3
/* 813EF320 | C3 42 87 D0 */	lfs f26, lbl_81694BD0@sda21(r0)
/* 813EF324 | 3B 60 00 00 */	li r27, 0x0
/* 813EF328 | C3 22 87 F0 */	lfs f25, lbl_81694BF0@sda21(r0)
/* 813EF32C | 3B 00 00 00 */	li r24, 0x0
/* 813EF330 | C3 02 87 FC */	lfs f24, lbl_81694BFC@sda21(r0)
/* 813EF334 | 3B 40 00 00 */	li r26, 0x0
/* 813EF338 | CB 62 87 D8 */	lfd f27, lbl_81694BD8@sda21(r0)
/* 813EF33C | 3A E0 00 00 */	li r23, 0x0
/* 813EF340 | 3A C0 00 00 */	li r22, 0x0
/* 813EF344 | 3E A0 43 30 */	lis r21, 0x4330
/* 813EF348 | 48 00 02 40 */	b .L_813EF588
.L_813EF34C:
/* 813EF34C | 7C 99 BA 14 */	add r4, r25, r23
/* 813EF350 | 7F 83 E3 78 */	mr r3, r28
/* 813EF354 | 38 84 03 80 */	addi r4, r4, 0x380
/* 813EF358 | 4B F7 51 95 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 813EF35C | 80 19 16 48 */	lwz r0, 0x1648(r25)
/* 813EF360 | 7C 1B 00 40 */	cmplw r27, r0
/* 813EF364 | 40 80 00 A0 */	bge .L_813EF404
/* 813EF368 | 7C B9 B2 14 */	add r5, r25, r22
/* 813EF36C | 7C 79 C2 14 */	add r3, r25, r24
/* 813EF370 | 80 85 00 80 */	lwz r4, 0x80(r5)
/* 813EF374 | 80 03 16 50 */	lwz r0, 0x1650(r3)
/* 813EF378 | 80 A5 00 84 */	lwz r5, 0x84(r5)
/* 813EF37C | 80 63 16 54 */	lwz r3, 0x1654(r3)
/* 813EF380 | 7C 80 02 78 */	xor r0, r4, r0
/* 813EF384 | 7C A3 1A 78 */	xor r3, r5, r3
/* 813EF388 | 7C 60 03 79 */	or. r0, r3, r0
/* 813EF38C | 40 82 00 78 */	bne .L_813EF404
/* 813EF390 | 38 61 00 3C */	addi r3, r1, 0x3c
/* 813EF394 | 38 80 00 34 */	li r4, 0x34
/* 813EF398 | 38 A0 00 BE */	li r5, 0xbe
/* 813EF39C | 38 C0 00 ED */	li r6, 0xed
/* 813EF3A0 | 38 E0 00 FF */	li r7, 0xff
/* 813EF3A4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813EF3A8 | 3B 18 00 08 */	addi r24, r24, 0x8
/* 813EF3AC | 48 00 03 19 */	bl ipl_813EF6C4
/* 813EF3B0 | 89 01 00 3C */	lbz r8, 0x3c(r1)
/* 813EF3B4 | 7F 83 E3 78 */	mr r3, r28
/* 813EF3B8 | 88 E1 00 3D */	lbz r7, 0x3d(r1)
/* 813EF3BC | 38 81 00 24 */	addi r4, r1, 0x24
/* 813EF3C0 | 88 C1 00 3E */	lbz r6, 0x3e(r1)
/* 813EF3C4 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813EF3C8 | 88 01 00 3F */	lbz r0, 0x3f(r1)
/* 813EF3CC | 99 01 00 0C */	stb r8, 0xc(r1)
/* 813EF3D0 | 98 E1 00 0D */	stb r7, 0xd(r1)
/* 813EF3D4 | 98 C1 00 0E */	stb r6, 0xe(r1)
/* 813EF3D8 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813EF3DC | 99 01 00 24 */	stb r8, 0x24(r1)
/* 813EF3E0 | 98 E1 00 25 */	stb r7, 0x25(r1)
/* 813EF3E4 | 98 C1 00 26 */	stb r6, 0x26(r1)
/* 813EF3E8 | 98 01 00 27 */	stb r0, 0x27(r1)
/* 813EF3EC | 99 01 00 20 */	stb r8, 0x20(r1)
/* 813EF3F0 | 98 E1 00 21 */	stb r7, 0x21(r1)
/* 813EF3F4 | 98 C1 00 22 */	stb r6, 0x22(r1)
/* 813EF3F8 | 98 01 00 23 */	stb r0, 0x23(r1)
/* 813EF3FC | 48 00 02 DD */	bl ipl_813EF6D8
/* 813EF400 | 48 00 00 6C */	b .L_813EF46C
.L_813EF404:
/* 813EF404 | 38 61 00 38 */	addi r3, r1, 0x38
/* 813EF408 | 38 80 00 64 */	li r4, 0x64
/* 813EF40C | 38 A0 00 64 */	li r5, 0x64
/* 813EF410 | 38 C0 00 64 */	li r6, 0x64
/* 813EF414 | 38 E0 00 FF */	li r7, 0xff
/* 813EF418 | 48 00 02 AD */	bl ipl_813EF6C4
/* 813EF41C | 89 01 00 38 */	lbz r8, 0x38(r1)
/* 813EF420 | 7F 83 E3 78 */	mr r3, r28
/* 813EF424 | 88 E1 00 39 */	lbz r7, 0x39(r1)
/* 813EF428 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813EF42C | 88 C1 00 3A */	lbz r6, 0x3a(r1)
/* 813EF430 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 813EF434 | 88 01 00 3B */	lbz r0, 0x3b(r1)
/* 813EF438 | 99 01 00 08 */	stb r8, 0x8(r1)
/* 813EF43C | 98 E1 00 09 */	stb r7, 0x9(r1)
/* 813EF440 | 98 C1 00 0A */	stb r6, 0xa(r1)
/* 813EF444 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813EF448 | 99 01 00 1C */	stb r8, 0x1c(r1)
/* 813EF44C | 98 E1 00 1D */	stb r7, 0x1d(r1)
/* 813EF450 | 98 C1 00 1E */	stb r6, 0x1e(r1)
/* 813EF454 | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 813EF458 | 99 01 00 18 */	stb r8, 0x18(r1)
/* 813EF45C | 98 E1 00 19 */	stb r7, 0x19(r1)
/* 813EF460 | 98 C1 00 1A */	stb r6, 0x1a(r1)
/* 813EF464 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 813EF468 | 48 00 02 71 */	bl ipl_813EF6D8
.L_813EF46C:
/* 813EF46C | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813EF470 | 38 61 00 60 */	addi r3, r1, 0x60
/* 813EF474 | 38 BE 06 16 */	addi r5, r30, 0x616
/* 813EF478 | 4B FA 9F D5 */	bl getTextDrawRect__Q33ipl6layout6ObjectCFPCc
/* 813EF47C | C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 813EF480 | C0 21 00 64 */	lfs f1, 0x64(r1)
/* 813EF484 | C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 813EF488 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813EF48C | FC 20 08 50 */	fneg f1, f1
/* 813EF490 | EC 21 00 24 */	fdivs f1, f1, f0
/* 813EF494 | 48 21 D1 BD */	bl ceil
/* 813EF498 | FC 00 08 18 */	frsp f0, f1
/* 813EF49C | 3A 60 00 00 */	li r19, 0x0
/* 813EF4A0 | FC 00 00 1E */	fctiwz f0, f0
/* 813EF4A4 | D8 01 00 80 */	stfd f0, 0x80(r1)
/* 813EF4A8 | 82 81 00 84 */	lwz r20, 0x84(r1)
/* 813EF4AC | 48 00 00 5C */	b .L_813EF508
.L_813EF4B0:
/* 813EF4B0 | EC 1F F0 2A */	fadds f0, f31, f30
/* 813EF4B4 | FC 18 00 40 */	fcmpo cr0, f24, f0
/* 813EF4B8 | 40 80 00 48 */	bge .L_813EF500
/* 813EF4BC | FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 813EF4C0 | 40 80 00 40 */	bge .L_813EF500
/* 813EF4C4 | D3 41 00 50 */	stfs f26, 0x50(r1)
/* 813EF4C8 | 7F A3 EB 78 */	mr r3, r29
/* 813EF4CC | 38 81 00 50 */	addi r4, r1, 0x50
/* 813EF4D0 | D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 813EF4D4 | 4B F5 4F 11 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813EF4D8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813EF4DC | 7F A3 EB 78 */	mr r3, r29
/* 813EF4E0 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813EF4E4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813EF4E8 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813EF4EC | 7D 89 03 A6 */	mtctr r12
/* 813EF4F0 | 4E 80 04 21 */	bctrl
/* 813EF4F4 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF4F8 | 7F A4 EB 78 */	mr r4, r29
/* 813EF4FC | 4B F7 B3 91 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
.L_813EF500:
/* 813EF500 | EF DE E0 28 */	fsubs f30, f30, f28
/* 813EF504 | 3A 73 00 01 */	addi r19, r19, 0x1
.L_813EF508:
/* 813EF508 | 7C 13 A0 00 */	cmpw r19, r20
/* 813EF50C | 41 80 FF A4 */	blt .L_813EF4B0
/* 813EF510 | EC 1F E8 2A */	fadds f0, f31, f29
/* 813EF514 | FC 18 00 40 */	fcmpo cr0, f24, f0
/* 813EF518 | 40 80 00 48 */	bge .L_813EF560
/* 813EF51C | FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 813EF520 | 40 80 00 40 */	bge .L_813EF560
/* 813EF524 | D3 41 00 48 */	stfs f26, 0x48(r1)
/* 813EF528 | 7F 83 E3 78 */	mr r3, r28
/* 813EF52C | 38 81 00 48 */	addi r4, r1, 0x48
/* 813EF530 | D3 A1 00 4C */	stfs f29, 0x4c(r1)
/* 813EF534 | 4B F5 4E B1 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813EF538 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813EF53C | 7F 83 E3 78 */	mr r3, r28
/* 813EF540 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813EF544 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813EF548 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813EF54C | 7D 89 03 A6 */	mtctr r12
/* 813EF550 | 4E 80 04 21 */	bctrl
/* 813EF554 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF558 | 7F 84 E3 78 */	mr r4, r28
/* 813EF55C | 4B F7 B3 31 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
.L_813EF560:
/* 813EF560 | 6E 80 80 00 */	xoris r0, r20, 0x8000
/* 813EF564 | 92 A1 00 80 */	stw r21, 0x80(r1)
/* 813EF568 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EF56C | 3A F7 00 2A */	addi r23, r23, 0x2a
/* 813EF570 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813EF574 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 813EF578 | C8 01 00 80 */	lfd f0, 0x80(r1)
/* 813EF57C | EC 00 D8 28 */	fsubs f0, f0, f27
/* 813EF580 | EC 00 07 32 */	fmuls f0, f0, f28
/* 813EF584 | EF BD 00 28 */	fsubs f29, f29, f0
.L_813EF588:
/* 813EF588 | 80 19 00 74 */	lwz r0, 0x74(r25)
/* 813EF58C | 7C 1A 00 40 */	cmplw r26, r0
/* 813EF590 | 41 80 FD BC */	blt .L_813EF34C
/* 813EF594 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF598 | EF DE E0 2A */	fadds f30, f30, f28
/* 813EF59C | 38 9E 0A 13 */	addi r4, r30, 0xa13
/* 813EF5A0 | 38 A0 00 01 */	li r5, 0x1
/* 813EF5A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EF5A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EF5AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EF5B0 | 7D 89 03 A6 */	mtctr r12
/* 813EF5B4 | 4E 80 04 21 */	bctrl
/* 813EF5B8 | 7C 75 1B 78 */	mr r21, r3
/* 813EF5BC | 38 63 00 10 */	addi r3, r3, 0x10
/* 813EF5C0 | 48 00 01 61 */	bl ipl_813EF720
/* 813EF5C4 | 7C 76 1B 78 */	mr r22, r3
/* 813EF5C8 | 48 00 00 0C */	b .L_813EF5D4
.L_813EF5CC:
/* 813EF5CC | 9B F6 00 C9 */	stb r31, 0xc9(r22)
/* 813EF5D0 | 82 D6 00 00 */	lwz r22, 0x0(r22)
.L_813EF5D4:
/* 813EF5D4 | 38 75 00 10 */	addi r3, r21, 0x10
/* 813EF5D8 | 48 00 01 51 */	bl ipl_813EF728
/* 813EF5DC | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813EF5E0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813EF5E4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813EF5E8 | 92 C1 00 14 */	stw r22, 0x14(r1)
/* 813EF5EC | 48 00 01 45 */	bl ipl_813EF730
/* 813EF5F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF5F4 | 40 82 FF D8 */	bne .L_813EF5CC
/* 813EF5F8 | EC 1F F0 2A */	fadds f0, f31, f30
/* 813EF5FC | C0 22 87 FC */	lfs f1, lbl_81694BFC@sda21(r0)
/* 813EF600 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813EF604 | 40 80 00 44 */	bge .L_813EF648
/* 813EF608 | C0 02 87 D0 */	lfs f0, lbl_81694BD0@sda21(r0)
/* 813EF60C | 7E A3 AB 78 */	mr r3, r21
/* 813EF610 | D3 C1 00 44 */	stfs f30, 0x44(r1)
/* 813EF614 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813EF618 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 813EF61C | 4B F5 4D C9 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813EF620 | 81 95 00 00 */	lwz r12, 0x0(r21)
/* 813EF624 | 7E A3 AB 78 */	mr r3, r21
/* 813EF628 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813EF62C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813EF630 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813EF634 | 7D 89 03 A6 */	mtctr r12
/* 813EF638 | 4E 80 04 21 */	bctrl
/* 813EF63C | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF640 | 7E A4 AB 78 */	mr r4, r21
/* 813EF644 | 4B F7 B2 49 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
.L_813EF648:
/* 813EF648 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF64C | 38 9E 0B 2C */	addi r4, r30, 0xb2c
/* 813EF650 | 4B F7 B1 B9 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813EF654 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF658 | 38 8D 8F 9A */	li r4, lbl_81696FDA@sda21
/* 813EF65C | 4B F7 B1 AD */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813EF660 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 813EF664 | 38 8D 8F A1 */	li r4, lbl_81696FE1@sda21
/* 813EF668 | 4B F7 B1 A1 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813EF66C | E3 E1 01 38 */	psq_l f31, 0x138(r1), 0, qr0
/* 813EF670 | CB E1 01 30 */	lfd f31, 0x130(r1)
/* 813EF674 | E3 C1 01 28 */	psq_l f30, 0x128(r1), 0, qr0
/* 813EF678 | CB C1 01 20 */	lfd f30, 0x120(r1)
/* 813EF67C | E3 A1 01 18 */	psq_l f29, 0x118(r1), 0, qr0
/* 813EF680 | CB A1 01 10 */	lfd f29, 0x110(r1)
/* 813EF684 | E3 81 01 08 */	psq_l f28, 0x108(r1), 0, qr0
/* 813EF688 | CB 81 01 00 */	lfd f28, 0x100(r1)
/* 813EF68C | E3 61 00 F8 */	psq_l f27, 0xf8(r1), 0, qr0
/* 813EF690 | CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 813EF694 | E3 41 00 E8 */	psq_l f26, 0xe8(r1), 0, qr0
/* 813EF698 | CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 813EF69C | E3 21 00 D8 */	psq_l f25, 0xd8(r1), 0, qr0
/* 813EF6A0 | CB 21 00 D0 */	lfd f25, 0xd0(r1)
/* 813EF6A4 | E3 01 00 C8 */	psq_l f24, 0xc8(r1), 0, qr0
/* 813EF6A8 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 813EF6AC | CB 01 00 C0 */	lfd f24, 0xc0(r1)
/* 813EF6B0 | 48 20 9E 3D */	bl _restgpr_19
/* 813EF6B4 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 813EF6B8 | 7C 08 03 A6 */	mtlr r0
/* 813EF6BC | 38 21 01 40 */	addi r1, r1, 0x140
/* 813EF6C0 | 4E 80 00 20 */	blr
.endfn ipl_813EEFB8

# .text:0x40D8 | 0x813EF6C4 | size: 0x14
.fn ipl_813EF6C4, global
/* 813EF6C4 | 98 83 00 00 */	stb r4, 0x0(r3)
/* 813EF6C8 | 98 A3 00 01 */	stb r5, 0x1(r3)
/* 813EF6CC | 98 C3 00 02 */	stb r6, 0x2(r3)
/* 813EF6D0 | 98 E3 00 03 */	stb r7, 0x3(r3)
/* 813EF6D4 | 4E 80 00 20 */	blr
.endfn ipl_813EF6C4

# .text:0x40EC | 0x813EF6D8 | size: 0x48
.fn ipl_813EF6D8, global
/* 813EF6D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EF6DC | 7C 08 02 A6 */	mflr r0
/* 813EF6E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EF6E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EF6E8 | 7C BF 2B 78 */	mr r31, r5
/* 813EF6EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EF6F0 | 7C 7E 1B 78 */	mr r30, r3
/* 813EF6F4 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 813EF6F8 | 4B F4 EF E1 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 813EF6FC | 7F E4 FB 78 */	mr r4, r31
/* 813EF700 | 38 7E 00 DC */	addi r3, r30, 0xdc
/* 813EF704 | 4B F4 EF D5 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 813EF708 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EF70C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EF710 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EF714 | 7C 08 03 A6 */	mtlr r0
/* 813EF718 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EF71C | 4E 80 00 20 */	blr
.endfn ipl_813EF6D8

# .text:0x4134 | 0x813EF720 | size: 0x8
.fn ipl_813EF720, global
/* 813EF720 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EF724 | 4E 80 00 20 */	blr
.endfn ipl_813EF720

# .text:0x413C | 0x813EF728 | size: 0x8
.fn ipl_813EF728, global
/* 813EF728 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813EF72C | 4E 80 00 20 */	blr
.endfn ipl_813EF728

# .text:0x4144 | 0x813EF730 | size: 0x18
.fn ipl_813EF730, global
/* 813EF730 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813EF734 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813EF738 | 7C 60 20 50 */	subf r3, r0, r4
/* 813EF73C | 30 03 FF FF */	subic r0, r3, 0x1
/* 813EF740 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813EF744 | 4E 80 00 20 */	blr
.endfn ipl_813EF730

# .text:0x415C | 0x813EF748 | size: 0x74
.fn ipl_813EF748, global
/* 813EF748 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EF74C | 7C 08 02 A6 */	mflr r0
/* 813EF750 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EF754 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF758 | 48 20 9D 69 */	bl _savegpr_27
/* 813EF75C | 3F C0 81 65 */	lis r30, lbl_81655CA0@ha
/* 813EF760 | 7C 9B 23 78 */	mr r27, r4
/* 813EF764 | 3B DE 5C A0 */	addi r30, r30, lbl_81655CA0@l
/* 813EF768 | 3B A0 FF FF */	li r29, -0x1
/* 813EF76C | 3B 80 00 00 */	li r28, 0x0
/* 813EF770 | 3B E0 00 00 */	li r31, 0x0
.L_813EF774:
/* 813EF774 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EF778 | 7F 63 DB 78 */	mr r3, r27
/* 813EF77C | 48 21 2D 05 */	bl strcmp
/* 813EF780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF784 | 40 82 00 0C */	bne .L_813EF790
/* 813EF788 | 7F 9D E3 78 */	mr r29, r28
/* 813EF78C | 48 00 00 14 */	b .L_813EF7A0
.L_813EF790:
/* 813EF790 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EF794 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EF798 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813EF79C | 41 80 FF D8 */	blt .L_813EF774
.L_813EF7A0:
/* 813EF7A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF7A4 | 7F A3 EB 78 */	mr r3, r29
/* 813EF7A8 | 48 20 9D 65 */	bl _restgpr_27
/* 813EF7AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EF7B0 | 7C 08 03 A6 */	mtlr r0
/* 813EF7B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EF7B8 | 4E 80 00 20 */	blr
.endfn ipl_813EF748

# .text:0x41D0 | 0x813EF7BC | size: 0x128
.fn ipl_813EF7BC, global
/* 813EF7BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EF7C0 | 7C 08 02 A6 */	mflr r0
/* 813EF7C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EF7C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF7CC | 48 20 9C F9 */	bl _savegpr_28
/* 813EF7D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813EF7D4 | 7C BD 2B 78 */	mr r29, r5
/* 813EF7D8 | 3B C0 00 00 */	li r30, 0x0
/* 813EF7DC | 4B FF FF 6D */	bl ipl_813EF748
/* 813EF7E0 | 54 60 10 3A */	slwi r0, r3, 2
/* 813EF7E4 | 7F FC 02 14 */	add r31, r28, r0
/* 813EF7E8 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 813EF7EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EF7F0 | 40 82 00 DC */	bne .L_813EF8CC
/* 813EF7F4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813EF7F8 | 41 82 00 38 */	beq .L_813EF830
/* 813EF7FC | 40 80 00 10 */	bge .L_813EF80C
/* 813EF800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF804 | 40 80 00 14 */	bge .L_813EF818
/* 813EF808 | 48 00 00 54 */	b .L_813EF85C
.L_813EF80C:
/* 813EF80C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813EF810 | 40 80 00 4C */	bge .L_813EF85C
/* 813EF814 | 48 00 00 34 */	b .L_813EF848
.L_813EF818:
/* 813EF818 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EF81C | 38 80 00 05 */	li r4, 0x5
/* 813EF820 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EF824 | 48 12 2A F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EF828 | 7C 7E 1B 78 */	mr r30, r3
/* 813EF82C | 48 00 00 30 */	b .L_813EF85C
.L_813EF830:
/* 813EF830 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EF834 | 38 80 00 08 */	li r4, 0x8
/* 813EF838 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EF83C | 48 12 2A DD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EF840 | 7C 7E 1B 78 */	mr r30, r3
/* 813EF844 | 48 00 00 18 */	b .L_813EF85C
.L_813EF848:
/* 813EF848 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EF84C | 38 80 00 02 */	li r4, 0x2
/* 813EF850 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EF854 | 48 12 2A C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EF858 | 7C 7E 1B 78 */	mr r30, r3
.L_813EF85C:
/* 813EF85C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EF860 | 41 82 00 6C */	beq .L_813EF8CC
/* 813EF864 | 7F C3 F3 78 */	mr r3, r30
/* 813EF868 | 4B F7 A3 BD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EF86C | 38 00 00 00 */	li r0, 0x0
/* 813EF870 | 7F C3 F3 78 */	mr r3, r30
/* 813EF874 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813EF878 | 4B F7 2F F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EF87C | 38 00 00 01 */	li r0, 0x1
/* 813EF880 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EF884 | 3C 80 81 65 */	lis r4, lbl_816567D8@ha
/* 813EF888 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EF88C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EF890 | 38 84 67 D8 */	addi r4, r4, lbl_816567D8@l
/* 813EF894 | 4B F7 BB D9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EF898 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813EF89C | 41 82 00 1C */	beq .L_813EF8B8
/* 813EF8A0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813EF8A4 | 7F A3 EB 78 */	mr r3, r29
/* 813EF8A8 | 38 80 00 00 */	li r4, 0x0
/* 813EF8AC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EF8B0 | 7D 89 03 A6 */	mtctr r12
/* 813EF8B4 | 4E 80 04 21 */	bctrl
.L_813EF8B8:
/* 813EF8B8 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 813EF8BC | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EF8C0 | 40 80 00 0C */	bge .L_813EF8CC
/* 813EF8C4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813EF8C8 | 90 1F 00 30 */	stw r0, 0x30(r31)
.L_813EF8CC:
/* 813EF8CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF8D0 | 48 20 9C 41 */	bl _restgpr_28
/* 813EF8D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EF8D8 | 7C 08 03 A6 */	mtlr r0
/* 813EF8DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EF8E0 | 4E 80 00 20 */	blr
.endfn ipl_813EF7BC

# .text:0x42F8 | 0x813EF8E4 | size: 0xF0
.fn ipl_813EF8E4, global
/* 813EF8E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EF8E8 | 7C 08 02 A6 */	mflr r0
/* 813EF8EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EF8F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF8F4 | 48 20 9B D5 */	bl _savegpr_29
/* 813EF8F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813EF8FC | 3B C0 00 00 */	li r30, 0x0
/* 813EF900 | 4B FF FE 49 */	bl ipl_813EF748
/* 813EF904 | 54 60 10 3A */	slwi r0, r3, 2
/* 813EF908 | 7F FD 02 14 */	add r31, r29, r0
/* 813EF90C | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 813EF910 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813EF914 | 40 82 00 A8 */	bne .L_813EF9BC
/* 813EF918 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813EF91C | 41 82 00 38 */	beq .L_813EF954
/* 813EF920 | 40 80 00 10 */	bge .L_813EF930
/* 813EF924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF928 | 40 80 00 14 */	bge .L_813EF93C
/* 813EF92C | 48 00 00 54 */	b .L_813EF980
.L_813EF930:
/* 813EF930 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813EF934 | 40 80 00 4C */	bge .L_813EF980
/* 813EF938 | 48 00 00 34 */	b .L_813EF96C
.L_813EF93C:
/* 813EF93C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EF940 | 38 80 00 06 */	li r4, 0x6
/* 813EF944 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EF948 | 48 12 29 D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EF94C | 7C 7E 1B 78 */	mr r30, r3
/* 813EF950 | 48 00 00 30 */	b .L_813EF980
.L_813EF954:
/* 813EF954 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EF958 | 38 80 00 09 */	li r4, 0x9
/* 813EF95C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EF960 | 48 12 29 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EF964 | 7C 7E 1B 78 */	mr r30, r3
/* 813EF968 | 48 00 00 18 */	b .L_813EF980
.L_813EF96C:
/* 813EF96C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EF970 | 38 80 00 03 */	li r4, 0x3
/* 813EF974 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EF978 | 48 12 29 A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EF97C | 7C 7E 1B 78 */	mr r30, r3
.L_813EF980:
/* 813EF980 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EF984 | 41 82 00 38 */	beq .L_813EF9BC
/* 813EF988 | 7F C3 F3 78 */	mr r3, r30
/* 813EF98C | 4B F7 A2 99 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EF990 | 38 00 00 00 */	li r0, 0x0
/* 813EF994 | 7F C3 F3 78 */	mr r3, r30
/* 813EF998 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813EF99C | 4B F7 2E D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EF9A0 | 38 00 00 01 */	li r0, 0x1
/* 813EF9A4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EF9A8 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 813EF9AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EF9B0 | 40 81 00 0C */	ble .L_813EF9BC
/* 813EF9B4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813EF9B8 | 90 1F 00 30 */	stw r0, 0x30(r31)
.L_813EF9BC:
/* 813EF9BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF9C0 | 48 20 9B 55 */	bl _restgpr_29
/* 813EF9C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EF9C8 | 7C 08 03 A6 */	mtlr r0
/* 813EF9CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EF9D0 | 4E 80 00 20 */	blr
.endfn ipl_813EF8E4

# .text:0x43E8 | 0x813EF9D4 | size: 0x120
.fn ipl_813EF9D4, global
/* 813EF9D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EF9D8 | 7C 08 02 A6 */	mflr r0
/* 813EF9DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EF9E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EF9E4 | 48 20 9A E5 */	bl _savegpr_29
/* 813EF9E8 | 7C 7D 1B 78 */	mr r29, r3
/* 813EF9EC | 3B C0 00 00 */	li r30, 0x0
/* 813EF9F0 | 4B FF FD 59 */	bl ipl_813EF748
/* 813EF9F4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813EF9F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813EF9FC | 7C 9D 02 14 */	add r4, r29, r0
/* 813EFA00 | 80 04 00 30 */	lwz r0, 0x30(r4)
/* 813EFA04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EFA08 | 40 81 00 D4 */	ble .L_813EFADC
/* 813EFA0C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813EFA10 | 41 82 00 38 */	beq .L_813EFA48
/* 813EFA14 | 40 80 00 10 */	bge .L_813EFA24
/* 813EFA18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFA1C | 40 80 00 14 */	bge .L_813EFA30
/* 813EFA20 | 48 00 00 54 */	b .L_813EFA74
.L_813EFA24:
/* 813EFA24 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813EFA28 | 40 80 00 4C */	bge .L_813EFA74
/* 813EFA2C | 48 00 00 34 */	b .L_813EFA60
.L_813EFA30:
/* 813EFA30 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EFA34 | 38 80 00 07 */	li r4, 0x7
/* 813EFA38 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFA3C | 48 12 28 DD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFA40 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFA44 | 48 00 00 30 */	b .L_813EFA74
.L_813EFA48:
/* 813EFA48 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EFA4C | 38 80 00 0A */	li r4, 0xa
/* 813EFA50 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFA54 | 48 12 28 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFA58 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFA5C | 48 00 00 18 */	b .L_813EFA74
.L_813EFA60:
/* 813EFA60 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EFA64 | 38 80 00 04 */	li r4, 0x4
/* 813EFA68 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFA6C | 48 12 28 AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFA70 | 7C 7E 1B 78 */	mr r30, r3
.L_813EFA74:
/* 813EFA74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EFA78 | 41 82 00 64 */	beq .L_813EFADC
/* 813EFA7C | 38 00 00 02 */	li r0, 0x2
/* 813EFA80 | 93 FD 00 20 */	stw r31, 0x20(r29)
/* 813EFA84 | 7F C3 F3 78 */	mr r3, r30
/* 813EFA88 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 813EFA8C | 4B F7 A1 99 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EFA90 | 38 00 00 00 */	li r0, 0x0
/* 813EFA94 | 7F C3 F3 78 */	mr r3, r30
/* 813EFA98 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813EFA9C | 4B F7 2D D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EFAA0 | 38 00 00 01 */	li r0, 0x1
/* 813EFAA4 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 813EFAA8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EFAAC | 40 82 00 1C */	bne .L_813EFAC8
/* 813EFAB0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EFAB4 | 3C 80 81 65 */	lis r4, lbl_816567EE@ha
/* 813EFAB8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EFABC | 38 84 67 EE */	addi r4, r4, lbl_816567EE@l
/* 813EFAC0 | 4B F7 B9 AD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EFAC4 | 48 00 00 18 */	b .L_813EFADC
.L_813EFAC8:
/* 813EFAC8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EFACC | 3C 80 81 65 */	lis r4, lbl_816567FD@ha
/* 813EFAD0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EFAD4 | 38 84 67 FD */	addi r4, r4, lbl_816567FD@l
/* 813EFAD8 | 4B F7 B9 95 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813EFADC:
/* 813EFADC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFAE0 | 48 20 9A 35 */	bl _restgpr_29
/* 813EFAE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EFAE8 | 7C 08 03 A6 */	mtlr r0
/* 813EFAEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EFAF0 | 4E 80 00 20 */	blr
.endfn ipl_813EF9D4

# .text:0x4508 | 0x813EFAF4 | size: 0xD8
.fn ipl_813EFAF4, global
/* 813EFAF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EFAF8 | 7C 08 02 A6 */	mflr r0
/* 813EFAFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EFB00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFB04 | 48 20 99 C1 */	bl _savegpr_28
/* 813EFB08 | 7C 7C 1B 78 */	mr r28, r3
/* 813EFB0C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EFB10 | 7C BD 2B 78 */	mr r29, r5
/* 813EFB14 | 7C DE 33 78 */	mr r30, r6
/* 813EFB18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EFB1C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813EFB20 | 7D 89 03 A6 */	mtctr r12
/* 813EFB24 | 4E 80 04 21 */	bctrl
/* 813EFB28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EFB2C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813EFB30 | 7D 89 03 A6 */	mtctr r12
/* 813EFB34 | 4E 80 04 21 */	bctrl
/* 813EFB38 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813EFB3C | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813EFB40 | 41 82 00 20 */	beq .L_813EFB60
/* 813EFB44 | 40 80 00 10 */	bge .L_813EFB54
/* 813EFB48 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813EFB4C | 40 80 00 38 */	bge .L_813EFB84
/* 813EFB50 | 48 00 00 64 */	b .L_813EFBB4
.L_813EFB54:
/* 813EFB54 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813EFB58 | 40 80 00 5C */	bge .L_813EFBB4
/* 813EFB5C | 48 00 00 18 */	b .L_813EFB74
.L_813EFB60:
/* 813EFB60 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813EFB64 | 7F E4 FB 78 */	mr r4, r31
/* 813EFB68 | 7F C5 F3 78 */	mr r5, r30
/* 813EFB6C | 4B FF FC 51 */	bl ipl_813EF7BC
/* 813EFB70 | 48 00 00 44 */	b .L_813EFBB4
.L_813EFB74:
/* 813EFB74 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813EFB78 | 7F E4 FB 78 */	mr r4, r31
/* 813EFB7C | 4B FF FD 69 */	bl ipl_813EF8E4
/* 813EFB80 | 48 00 00 34 */	b .L_813EFBB4
.L_813EFB84:
/* 813EFB84 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813EFB88 | 3C 80 00 10 */	lis r4, 0x10
/* 813EFB8C | 7F C3 F3 78 */	mr r3, r30
/* 813EFB90 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813EFB94 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813EFB98 | 7D 89 03 A6 */	mtctr r12
/* 813EFB9C | 4E 80 04 21 */	bctrl
/* 813EFBA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFBA4 | 41 82 00 10 */	beq .L_813EFBB4
/* 813EFBA8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813EFBAC | 7F E4 FB 78 */	mr r4, r31
/* 813EFBB0 | 4B FF FE 25 */	bl ipl_813EF9D4
.L_813EFBB4:
/* 813EFBB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFBB8 | 48 20 99 59 */	bl _restgpr_28
/* 813EFBBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EFBC0 | 7C 08 03 A6 */	mtlr r0
/* 813EFBC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EFBC8 | 4E 80 00 20 */	blr
.endfn ipl_813EFAF4

# .text:0x45E0 | 0x813EFBCC | size: 0xC0
.fn ipl_813EFBCC, global
/* 813EFBCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EFBD0 | 7C 08 02 A6 */	mflr r0
/* 813EFBD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EFBD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFBDC | 48 20 98 E5 */	bl _savegpr_27
/* 813EFBE0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813EFBE4 | 7C 9B 23 78 */	mr r27, r4
/* 813EFBE8 | 3B A0 FF FF */	li r29, -0x1
/* 813EFBEC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813EFBF0 | 40 82 00 44 */	bne .L_813EFC34
/* 813EFBF4 | 3F C0 81 65 */	lis r30, lbl_81655CAC@ha
/* 813EFBF8 | 3B 80 00 00 */	li r28, 0x0
/* 813EFBFC | 3B DE 5C AC */	addi r30, r30, lbl_81655CAC@l
/* 813EFC00 | 3B E0 00 00 */	li r31, 0x0
.L_813EFC04:
/* 813EFC04 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EFC08 | 7F 63 DB 78 */	mr r3, r27
/* 813EFC0C | 48 21 28 75 */	bl strcmp
/* 813EFC10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFC14 | 40 82 00 0C */	bne .L_813EFC20
/* 813EFC18 | 7F 9D E3 78 */	mr r29, r28
/* 813EFC1C | 48 00 00 54 */	b .L_813EFC70
.L_813EFC20:
/* 813EFC20 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EFC24 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EFC28 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 813EFC2C | 41 80 FF D8 */	blt .L_813EFC04
/* 813EFC30 | 48 00 00 40 */	b .L_813EFC70
.L_813EFC34:
/* 813EFC34 | 3F C0 81 65 */	lis r30, lbl_81655CC0@ha
/* 813EFC38 | 3B 80 00 00 */	li r28, 0x0
/* 813EFC3C | 3B DE 5C C0 */	addi r30, r30, lbl_81655CC0@l
/* 813EFC40 | 3B E0 00 00 */	li r31, 0x0
.L_813EFC44:
/* 813EFC44 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EFC48 | 7F 63 DB 78 */	mr r3, r27
/* 813EFC4C | 48 21 28 35 */	bl strcmp
/* 813EFC50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFC54 | 40 82 00 0C */	bne .L_813EFC60
/* 813EFC58 | 3B BC 00 01 */	addi r29, r28, 0x1
/* 813EFC5C | 48 00 00 14 */	b .L_813EFC70
.L_813EFC60:
/* 813EFC60 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813EFC64 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EFC68 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813EFC6C | 41 80 FF D8 */	blt .L_813EFC44
.L_813EFC70:
/* 813EFC70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFC74 | 7F A3 EB 78 */	mr r3, r29
/* 813EFC78 | 48 20 98 95 */	bl _restgpr_27
/* 813EFC7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EFC80 | 7C 08 03 A6 */	mtlr r0
/* 813EFC84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EFC88 | 4E 80 00 20 */	blr
.endfn ipl_813EFBCC

# .text:0x46A0 | 0x813EFC8C | size: 0x160
.fn ipl_813EFC8C, global
/* 813EFC8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EFC90 | 7C 08 02 A6 */	mflr r0
/* 813EFC94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EFC98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFC9C | 48 20 98 29 */	bl _savegpr_28
/* 813EFCA0 | 7C 7C 1B 78 */	mr r28, r3
/* 813EFCA4 | 7C BD 2B 78 */	mr r29, r5
/* 813EFCA8 | 3B C0 00 00 */	li r30, 0x0
/* 813EFCAC | 4B FF FF 21 */	bl ipl_813EFBCC
/* 813EFCB0 | 54 60 10 3A */	slwi r0, r3, 2
/* 813EFCB4 | 7F FC 02 14 */	add r31, r28, r0
/* 813EFCB8 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813EFCBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EFCC0 | 40 82 01 14 */	bne .L_813EFDD4
/* 813EFCC4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813EFCC8 | 41 82 00 58 */	beq .L_813EFD20
/* 813EFCCC | 40 80 00 14 */	bge .L_813EFCE0
/* 813EFCD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFCD4 | 41 82 00 1C */	beq .L_813EFCF0
/* 813EFCD8 | 40 80 00 30 */	bge .L_813EFD08
/* 813EFCDC | 48 00 00 88 */	b .L_813EFD64
.L_813EFCE0:
/* 813EFCE0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EFCE4 | 41 82 00 6C */	beq .L_813EFD50
/* 813EFCE8 | 40 80 00 7C */	bge .L_813EFD64
/* 813EFCEC | 48 00 00 4C */	b .L_813EFD38
.L_813EFCF0:
/* 813EFCF0 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EFCF4 | 38 80 00 05 */	li r4, 0x5
/* 813EFCF8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFCFC | 48 12 26 1D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFD00 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFD04 | 48 00 00 60 */	b .L_813EFD64
.L_813EFD08:
/* 813EFD08 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EFD0C | 38 80 00 08 */	li r4, 0x8
/* 813EFD10 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFD14 | 48 12 26 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFD18 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFD1C | 48 00 00 48 */	b .L_813EFD64
.L_813EFD20:
/* 813EFD20 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EFD24 | 38 80 00 0B */	li r4, 0xb
/* 813EFD28 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFD2C | 48 12 25 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFD30 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFD34 | 48 00 00 30 */	b .L_813EFD64
.L_813EFD38:
/* 813EFD38 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EFD3C | 38 80 00 0E */	li r4, 0xe
/* 813EFD40 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFD44 | 48 12 25 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFD48 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFD4C | 48 00 00 18 */	b .L_813EFD64
.L_813EFD50:
/* 813EFD50 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EFD54 | 38 80 00 02 */	li r4, 0x2
/* 813EFD58 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFD5C | 48 12 25 BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFD60 | 7C 7E 1B 78 */	mr r30, r3
.L_813EFD64:
/* 813EFD64 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EFD68 | 41 82 00 6C */	beq .L_813EFDD4
/* 813EFD6C | 7F C3 F3 78 */	mr r3, r30
/* 813EFD70 | 4B F7 9E B5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EFD74 | 38 00 00 00 */	li r0, 0x0
/* 813EFD78 | 7F C3 F3 78 */	mr r3, r30
/* 813EFD7C | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813EFD80 | 4B F7 2A F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EFD84 | 38 00 00 01 */	li r0, 0x1
/* 813EFD88 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EFD8C | 3C 80 81 65 */	lis r4, lbl_816567D8@ha
/* 813EFD90 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EFD94 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EFD98 | 38 84 67 D8 */	addi r4, r4, lbl_816567D8@l
/* 813EFD9C | 4B F7 B6 D1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EFDA0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813EFDA4 | 41 82 00 1C */	beq .L_813EFDC0
/* 813EFDA8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813EFDAC | 7F A3 EB 78 */	mr r3, r29
/* 813EFDB0 | 38 80 00 00 */	li r4, 0x0
/* 813EFDB4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EFDB8 | 7D 89 03 A6 */	mtctr r12
/* 813EFDBC | 4E 80 04 21 */	bctrl
.L_813EFDC0:
/* 813EFDC0 | 80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 813EFDC4 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EFDC8 | 40 80 00 0C */	bge .L_813EFDD4
/* 813EFDCC | 38 03 00 01 */	addi r0, r3, 0x1
/* 813EFDD0 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813EFDD4:
/* 813EFDD4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFDD8 | 48 20 97 39 */	bl _restgpr_28
/* 813EFDDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EFDE0 | 7C 08 03 A6 */	mtlr r0
/* 813EFDE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EFDE8 | 4E 80 00 20 */	blr
.endfn ipl_813EFC8C

# .text:0x4800 | 0x813EFDEC | size: 0x128
.fn ipl_813EFDEC, global
/* 813EFDEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EFDF0 | 7C 08 02 A6 */	mflr r0
/* 813EFDF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EFDF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFDFC | 48 20 96 CD */	bl _savegpr_29
/* 813EFE00 | 7C 7D 1B 78 */	mr r29, r3
/* 813EFE04 | 3B C0 00 00 */	li r30, 0x0
/* 813EFE08 | 4B FF FD C5 */	bl ipl_813EFBCC
/* 813EFE0C | 54 60 10 3A */	slwi r0, r3, 2
/* 813EFE10 | 7F FD 02 14 */	add r31, r29, r0
/* 813EFE14 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813EFE18 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813EFE1C | 40 82 00 E0 */	bne .L_813EFEFC
/* 813EFE20 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813EFE24 | 41 82 00 58 */	beq .L_813EFE7C
/* 813EFE28 | 40 80 00 14 */	bge .L_813EFE3C
/* 813EFE2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFE30 | 41 82 00 1C */	beq .L_813EFE4C
/* 813EFE34 | 40 80 00 30 */	bge .L_813EFE64
/* 813EFE38 | 48 00 00 88 */	b .L_813EFEC0
.L_813EFE3C:
/* 813EFE3C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EFE40 | 41 82 00 6C */	beq .L_813EFEAC
/* 813EFE44 | 40 80 00 7C */	bge .L_813EFEC0
/* 813EFE48 | 48 00 00 4C */	b .L_813EFE94
.L_813EFE4C:
/* 813EFE4C | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813EFE50 | 38 80 00 06 */	li r4, 0x6
/* 813EFE54 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFE58 | 48 12 24 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFE5C | 7C 7E 1B 78 */	mr r30, r3
/* 813EFE60 | 48 00 00 60 */	b .L_813EFEC0
.L_813EFE64:
/* 813EFE64 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813EFE68 | 38 80 00 09 */	li r4, 0x9
/* 813EFE6C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFE70 | 48 12 24 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFE74 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFE78 | 48 00 00 48 */	b .L_813EFEC0
.L_813EFE7C:
/* 813EFE7C | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813EFE80 | 38 80 00 0C */	li r4, 0xc
/* 813EFE84 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFE88 | 48 12 24 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFE8C | 7C 7E 1B 78 */	mr r30, r3
/* 813EFE90 | 48 00 00 30 */	b .L_813EFEC0
.L_813EFE94:
/* 813EFE94 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813EFE98 | 38 80 00 0F */	li r4, 0xf
/* 813EFE9C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFEA0 | 48 12 24 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFEA4 | 7C 7E 1B 78 */	mr r30, r3
/* 813EFEA8 | 48 00 00 18 */	b .L_813EFEC0
.L_813EFEAC:
/* 813EFEAC | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813EFEB0 | 38 80 00 03 */	li r4, 0x3
/* 813EFEB4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFEB8 | 48 12 24 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFEBC | 7C 7E 1B 78 */	mr r30, r3
.L_813EFEC0:
/* 813EFEC0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EFEC4 | 41 82 00 38 */	beq .L_813EFEFC
/* 813EFEC8 | 7F C3 F3 78 */	mr r3, r30
/* 813EFECC | 4B F7 9D 59 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EFED0 | 38 00 00 00 */	li r0, 0x0
/* 813EFED4 | 7F C3 F3 78 */	mr r3, r30
/* 813EFED8 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813EFEDC | 4B F7 29 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EFEE0 | 38 00 00 01 */	li r0, 0x1
/* 813EFEE4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813EFEE8 | 80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 813EFEEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFEF0 | 40 81 00 0C */	ble .L_813EFEFC
/* 813EFEF4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813EFEF8 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813EFEFC:
/* 813EFEFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFF00 | 48 20 96 15 */	bl _restgpr_29
/* 813EFF04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EFF08 | 7C 08 03 A6 */	mtlr r0
/* 813EFF0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EFF10 | 4E 80 00 20 */	blr
.endfn ipl_813EFDEC

# .text:0x4928 | 0x813EFF14 | size: 0x24C
.fn ipl_813EFF14, global
/* 813EFF14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EFF18 | 7C 08 02 A6 */	mflr r0
/* 813EFF1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EFF20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EFF24 | 48 20 95 A1 */	bl _savegpr_28
/* 813EFF28 | 7C 7F 1B 78 */	mr r31, r3
/* 813EFF2C | 3B 80 00 00 */	li r28, 0x0
/* 813EFF30 | 4B FF FC 9D */	bl ipl_813EFBCC
/* 813EFF34 | 54 60 10 3A */	slwi r0, r3, 2
/* 813EFF38 | 7C 7D 1B 78 */	mr r29, r3
/* 813EFF3C | 7C 9F 02 14 */	add r4, r31, r0
/* 813EFF40 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813EFF44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EFF48 | 40 81 02 00 */	ble .L_813F0148
/* 813EFF4C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813EFF50 | 41 82 00 98 */	beq .L_813EFFE8
/* 813EFF54 | 40 80 00 14 */	bge .L_813EFF68
/* 813EFF58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EFF5C | 41 82 00 1C */	beq .L_813EFF78
/* 813EFF60 | 40 80 00 50 */	bge .L_813EFFB0
/* 813EFF64 | 48 00 01 08 */	b .L_813F006C
.L_813EFF68:
/* 813EFF68 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EFF6C | 41 82 00 EC */	beq .L_813F0058
/* 813EFF70 | 40 80 00 FC */	bge .L_813F006C
/* 813EFF74 | 48 00 00 AC */	b .L_813F0020
.L_813EFF78:
/* 813EFF78 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EFF7C | 38 80 00 07 */	li r4, 0x7
/* 813EFF80 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFF84 | 48 12 23 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFF88 | 7C 7C 1B 78 */	mr r28, r3
/* 813EFF8C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EFF90 | 38 9F 00 64 */	addi r4, r31, 0x64
/* 813EFF94 | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 813EFF98 | 38 DF 00 80 */	addi r6, r31, 0x80
/* 813EFF9C | 38 FF 03 80 */	addi r7, r31, 0x380
/* 813EFFA0 | 39 1F 00 74 */	addi r8, r31, 0x74
/* 813EFFA4 | 39 20 00 00 */	li r9, 0x0
/* 813EFFA8 | 4B FE DB CD */	bl iplSDChannelSelect_813DDB74
/* 813EFFAC | 48 00 00 C0 */	b .L_813F006C
.L_813EFFB0:
/* 813EFFB0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EFFB4 | 38 80 00 0A */	li r4, 0xa
/* 813EFFB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFFBC | 48 12 23 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFFC0 | 7C 7C 1B 78 */	mr r28, r3
/* 813EFFC4 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813EFFC8 | 38 9F 00 64 */	addi r4, r31, 0x64
/* 813EFFCC | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 813EFFD0 | 38 DF 00 80 */	addi r6, r31, 0x80
/* 813EFFD4 | 38 FF 03 80 */	addi r7, r31, 0x380
/* 813EFFD8 | 39 1F 00 74 */	addi r8, r31, 0x74
/* 813EFFDC | 39 20 00 01 */	li r9, 0x1
/* 813EFFE0 | 4B FE DB 95 */	bl iplSDChannelSelect_813DDB74
/* 813EFFE4 | 48 00 00 88 */	b .L_813F006C
.L_813EFFE8:
/* 813EFFE8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EFFEC | 38 80 00 0D */	li r4, 0xd
/* 813EFFF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EFFF4 | 48 12 23 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EFFF8 | 7C 7C 1B 78 */	mr r28, r3
/* 813EFFFC | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813F0000 | 38 9F 00 64 */	addi r4, r31, 0x64
/* 813F0004 | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 813F0008 | 38 DF 00 80 */	addi r6, r31, 0x80
/* 813F000C | 38 FF 03 80 */	addi r7, r31, 0x380
/* 813F0010 | 39 1F 00 74 */	addi r8, r31, 0x74
/* 813F0014 | 39 20 00 02 */	li r9, 0x2
/* 813F0018 | 4B FE DB 5D */	bl iplSDChannelSelect_813DDB74
/* 813F001C | 48 00 00 50 */	b .L_813F006C
.L_813F0020:
/* 813F0020 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813F0024 | 38 80 00 10 */	li r4, 0x10
/* 813F0028 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F002C | 48 12 22 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F0030 | 7C 7C 1B 78 */	mr r28, r3
/* 813F0034 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813F0038 | 38 9F 00 64 */	addi r4, r31, 0x64
/* 813F003C | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 813F0040 | 38 DF 00 80 */	addi r6, r31, 0x80
/* 813F0044 | 38 FF 03 80 */	addi r7, r31, 0x380
/* 813F0048 | 39 1F 00 74 */	addi r8, r31, 0x74
/* 813F004C | 39 20 00 03 */	li r9, 0x3
/* 813F0050 | 4B FE DB 25 */	bl iplSDChannelSelect_813DDB74
/* 813F0054 | 48 00 00 18 */	b .L_813F006C
.L_813F0058:
/* 813F0058 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813F005C | 38 80 00 04 */	li r4, 0x4
/* 813F0060 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0064 | 48 12 22 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F0068 | 7C 7C 1B 78 */	mr r28, r3
.L_813F006C:
/* 813F006C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813F0070 | 41 82 00 D8 */	beq .L_813F0148
/* 813F0074 | 38 00 00 06 */	li r0, 0x6
/* 813F0078 | 93 BF 00 20 */	stw r29, 0x20(r31)
/* 813F007C | 7F 83 E3 78 */	mr r3, r28
/* 813F0080 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 813F0084 | 4B F7 9B A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F0088 | 3B C0 00 00 */	li r30, 0x0
/* 813F008C | 7F 83 E3 78 */	mr r3, r28
/* 813F0090 | 93 DC 00 18 */	stw r30, 0x18(r28)
/* 813F0094 | 4B F7 27 DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F0098 | 38 00 00 01 */	li r0, 0x1
/* 813F009C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F00A0 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 813F00A4 | 41 80 00 70 */	blt .L_813F0114
/* 813F00A8 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813F00AC | 41 81 00 68 */	bgt .L_813F0114
/* 813F00B0 | 38 7F 16 50 */	addi r3, r31, 0x1650
/* 813F00B4 | 38 80 00 00 */	li r4, 0x0
/* 813F00B8 | 38 A0 03 00 */	li r5, 0x300
/* 813F00BC | 4B F4 02 79 */	bl memset
/* 813F00C0 | 38 7F 13 48 */	addi r3, r31, 0x1348
/* 813F00C4 | 38 80 00 00 */	li r4, 0x0
/* 813F00C8 | 38 A0 03 00 */	li r5, 0x300
/* 813F00CC | 4B F4 02 69 */	bl memset
/* 813F00D0 | 81 1F 00 74 */	lwz r8, 0x74(r31)
/* 813F00D4 | 39 3F 00 80 */	addi r9, r31, 0x80
/* 813F00D8 | 38 FF 16 50 */	addi r7, r31, 0x1650
/* 813F00DC | 38 1F 13 48 */	addi r0, r31, 0x1348
/* 813F00E0 | 93 DF 16 48 */	stw r30, 0x1648(r31)
/* 813F00E4 | 38 9F 29 E4 */	addi r4, r31, 0x29e4
/* 813F00E8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813F00EC | 38 BF 29 EC */	addi r5, r31, 0x29ec
/* 813F00F0 | 93 DF 13 40 */	stw r30, 0x1340(r31)
/* 813F00F4 | 38 DF 29 F4 */	addi r6, r31, 0x29f4
/* 813F00F8 | 91 3F 29 E4 */	stw r9, 0x29e4(r31)
/* 813F00FC | 91 1F 29 E8 */	stw r8, 0x29e8(r31)
/* 813F0100 | 90 FF 29 EC */	stw r7, 0x29ec(r31)
/* 813F0104 | 93 DF 29 F0 */	stw r30, 0x29f0(r31)
/* 813F0108 | 90 1F 29 F4 */	stw r0, 0x29f4(r31)
/* 813F010C | 93 DF 29 F8 */	stw r30, 0x29f8(r31)
/* 813F0110 | 4B FE B4 7D */	bl iplSDChannelSelect_813DB58C
.L_813F0114:
/* 813F0114 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 813F0118 | 40 82 00 1C */	bne .L_813F0134
/* 813F011C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F0120 | 3C 80 81 65 */	lis r4, lbl_816567EE@ha
/* 813F0124 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F0128 | 38 84 67 EE */	addi r4, r4, lbl_816567EE@l
/* 813F012C | 4B F7 B3 41 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F0130 | 48 00 00 18 */	b .L_813F0148
.L_813F0134:
/* 813F0134 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F0138 | 3C 80 81 65 */	lis r4, lbl_816567FD@ha
/* 813F013C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F0140 | 38 84 67 FD */	addi r4, r4, lbl_816567FD@l
/* 813F0144 | 4B F7 B3 29 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813F0148:
/* 813F0148 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F014C | 48 20 93 C5 */	bl _restgpr_28
/* 813F0150 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F0154 | 7C 08 03 A6 */	mtlr r0
/* 813F0158 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F015C | 4E 80 00 20 */	blr
.endfn ipl_813EFF14

# .text:0x4B74 | 0x813F0160 | size: 0xD8
.fn ipl_813F0160, global
/* 813F0160 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F0164 | 7C 08 02 A6 */	mflr r0
/* 813F0168 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F016C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0170 | 48 20 93 55 */	bl _savegpr_28
/* 813F0174 | 7C 7C 1B 78 */	mr r28, r3
/* 813F0178 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F017C | 7C BD 2B 78 */	mr r29, r5
/* 813F0180 | 7C DE 33 78 */	mr r30, r6
/* 813F0184 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0188 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813F018C | 7D 89 03 A6 */	mtctr r12
/* 813F0190 | 4E 80 04 21 */	bctrl
/* 813F0194 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0198 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813F019C | 7D 89 03 A6 */	mtctr r12
/* 813F01A0 | 4E 80 04 21 */	bctrl
/* 813F01A4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813F01A8 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813F01AC | 41 82 00 20 */	beq .L_813F01CC
/* 813F01B0 | 40 80 00 10 */	bge .L_813F01C0
/* 813F01B4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F01B8 | 40 80 00 38 */	bge .L_813F01F0
/* 813F01BC | 48 00 00 64 */	b .L_813F0220
.L_813F01C0:
/* 813F01C0 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813F01C4 | 40 80 00 5C */	bge .L_813F0220
/* 813F01C8 | 48 00 00 18 */	b .L_813F01E0
.L_813F01CC:
/* 813F01CC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F01D0 | 7F E4 FB 78 */	mr r4, r31
/* 813F01D4 | 7F C5 F3 78 */	mr r5, r30
/* 813F01D8 | 4B FF FA B5 */	bl ipl_813EFC8C
/* 813F01DC | 48 00 00 44 */	b .L_813F0220
.L_813F01E0:
/* 813F01E0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F01E4 | 7F E4 FB 78 */	mr r4, r31
/* 813F01E8 | 4B FF FC 05 */	bl ipl_813EFDEC
/* 813F01EC | 48 00 00 34 */	b .L_813F0220
.L_813F01F0:
/* 813F01F0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813F01F4 | 3C 80 00 10 */	lis r4, 0x10
/* 813F01F8 | 7F C3 F3 78 */	mr r3, r30
/* 813F01FC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F0200 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813F0204 | 7D 89 03 A6 */	mtctr r12
/* 813F0208 | 4E 80 04 21 */	bctrl
/* 813F020C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0210 | 41 82 00 10 */	beq .L_813F0220
/* 813F0214 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F0218 | 7F E4 FB 78 */	mr r4, r31
/* 813F021C | 4B FF FC F9 */	bl ipl_813EFF14
.L_813F0220:
/* 813F0220 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0224 | 48 20 92 ED */	bl _restgpr_28
/* 813F0228 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F022C | 7C 08 03 A6 */	mtlr r0
/* 813F0230 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F0234 | 4E 80 00 20 */	blr
.endfn ipl_813F0160

# .text:0x4C4C | 0x813F0238 | size: 0x74
.fn ipl_813F0238, global
/* 813F0238 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F023C | 7C 08 02 A6 */	mflr r0
/* 813F0240 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F0244 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0248 | 48 20 92 79 */	bl _savegpr_27
/* 813F024C | 3F C0 81 65 */	lis r30, lbl_81655CE8@ha
/* 813F0250 | 7C 9B 23 78 */	mr r27, r4
/* 813F0254 | 3B DE 5C E8 */	addi r30, r30, lbl_81655CE8@l
/* 813F0258 | 3B A0 FF FF */	li r29, -0x1
/* 813F025C | 3B 80 00 00 */	li r28, 0x0
/* 813F0260 | 3B E0 00 00 */	li r31, 0x0
.L_813F0264:
/* 813F0264 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813F0268 | 7F 63 DB 78 */	mr r3, r27
/* 813F026C | 48 21 22 15 */	bl strcmp
/* 813F0270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0274 | 40 82 00 0C */	bne .L_813F0280
/* 813F0278 | 7F 9D E3 78 */	mr r29, r28
/* 813F027C | 48 00 00 14 */	b .L_813F0290
.L_813F0280:
/* 813F0280 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813F0284 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813F0288 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813F028C | 41 80 FF D8 */	blt .L_813F0264
.L_813F0290:
/* 813F0290 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0294 | 7F A3 EB 78 */	mr r3, r29
/* 813F0298 | 48 20 92 75 */	bl _restgpr_27
/* 813F029C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F02A0 | 7C 08 03 A6 */	mtlr r0
/* 813F02A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F02A8 | 4E 80 00 20 */	blr
.endfn ipl_813F0238

# .text:0x4CC0 | 0x813F02AC | size: 0x144
.fn ipl_813F02AC, global
/* 813F02AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F02B0 | 7C 08 02 A6 */	mflr r0
/* 813F02B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F02B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F02BC | 48 20 92 09 */	bl _savegpr_28
/* 813F02C0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F02C4 | 7C BD 2B 78 */	mr r29, r5
/* 813F02C8 | 3B C0 00 00 */	li r30, 0x0
/* 813F02CC | 4B FF FF 6D */	bl ipl_813F0238
/* 813F02D0 | 54 60 10 3A */	slwi r0, r3, 2
/* 813F02D4 | 7F FC 02 14 */	add r31, r28, r0
/* 813F02D8 | 80 1F 00 50 */	lwz r0, 0x50(r31)
/* 813F02DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F02E0 | 40 82 00 F8 */	bne .L_813F03D8
/* 813F02E4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813F02E8 | 41 82 00 24 */	beq .L_813F030C
/* 813F02EC | 40 80 00 14 */	bge .L_813F0300
/* 813F02F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F02F4 | 41 82 00 48 */	beq .L_813F033C
/* 813F02F8 | 40 80 00 5C */	bge .L_813F0354
/* 813F02FC | 48 00 00 6C */	b .L_813F0368
.L_813F0300:
/* 813F0300 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813F0304 | 40 80 00 64 */	bge .L_813F0368
/* 813F0308 | 48 00 00 1C */	b .L_813F0324
.L_813F030C:
/* 813F030C | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813F0310 | 38 80 00 02 */	li r4, 0x2
/* 813F0314 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0318 | 48 12 20 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F031C | 7C 7E 1B 78 */	mr r30, r3
/* 813F0320 | 48 00 00 48 */	b .L_813F0368
.L_813F0324:
/* 813F0324 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813F0328 | 38 80 00 05 */	li r4, 0x5
/* 813F032C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0330 | 48 12 1F E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F0334 | 7C 7E 1B 78 */	mr r30, r3
/* 813F0338 | 48 00 00 30 */	b .L_813F0368
.L_813F033C:
/* 813F033C | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813F0340 | 38 80 00 0B */	li r4, 0xb
/* 813F0344 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0348 | 48 12 1F D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F034C | 7C 7E 1B 78 */	mr r30, r3
/* 813F0350 | 48 00 00 18 */	b .L_813F0368
.L_813F0354:
/* 813F0354 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813F0358 | 38 80 00 08 */	li r4, 0x8
/* 813F035C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0360 | 48 12 1F B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F0364 | 7C 7E 1B 78 */	mr r30, r3
.L_813F0368:
/* 813F0368 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F036C | 41 82 00 6C */	beq .L_813F03D8
/* 813F0370 | 7F C3 F3 78 */	mr r3, r30
/* 813F0374 | 4B F7 98 B1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F0378 | 38 00 00 00 */	li r0, 0x0
/* 813F037C | 7F C3 F3 78 */	mr r3, r30
/* 813F0380 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813F0384 | 4B F7 24 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F0388 | 38 00 00 01 */	li r0, 0x1
/* 813F038C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F0390 | 3C 80 81 65 */	lis r4, lbl_816567D8@ha
/* 813F0394 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813F0398 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F039C | 38 84 67 D8 */	addi r4, r4, lbl_816567D8@l
/* 813F03A0 | 4B F7 B0 CD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F03A4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F03A8 | 41 82 00 1C */	beq .L_813F03C4
/* 813F03AC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813F03B0 | 7F A3 EB 78 */	mr r3, r29
/* 813F03B4 | 38 80 00 00 */	li r4, 0x0
/* 813F03B8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813F03BC | 7D 89 03 A6 */	mtctr r12
/* 813F03C0 | 4E 80 04 21 */	bctrl
.L_813F03C4:
/* 813F03C4 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813F03C8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813F03CC | 40 80 00 0C */	bge .L_813F03D8
/* 813F03D0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F03D4 | 90 1F 00 50 */	stw r0, 0x50(r31)
.L_813F03D8:
/* 813F03D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F03DC | 48 20 91 35 */	bl _restgpr_28
/* 813F03E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F03E4 | 7C 08 03 A6 */	mtlr r0
/* 813F03E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F03EC | 4E 80 00 20 */	blr
.endfn ipl_813F02AC

# .text:0x4E04 | 0x813F03F0 | size: 0x10C
.fn ipl_813F03F0, global
/* 813F03F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F03F4 | 7C 08 02 A6 */	mflr r0
/* 813F03F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F03FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0400 | 48 20 90 C9 */	bl _savegpr_29
/* 813F0404 | 7C 7D 1B 78 */	mr r29, r3
/* 813F0408 | 3B C0 00 00 */	li r30, 0x0
/* 813F040C | 4B FF FE 2D */	bl ipl_813F0238
/* 813F0410 | 54 60 10 3A */	slwi r0, r3, 2
/* 813F0414 | 7F FD 02 14 */	add r31, r29, r0
/* 813F0418 | 80 1F 00 50 */	lwz r0, 0x50(r31)
/* 813F041C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F0420 | 40 82 00 C4 */	bne .L_813F04E4
/* 813F0424 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813F0428 | 41 82 00 24 */	beq .L_813F044C
/* 813F042C | 40 80 00 14 */	bge .L_813F0440
/* 813F0430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0434 | 41 82 00 48 */	beq .L_813F047C
/* 813F0438 | 40 80 00 5C */	bge .L_813F0494
/* 813F043C | 48 00 00 6C */	b .L_813F04A8
.L_813F0440:
/* 813F0440 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813F0444 | 40 80 00 64 */	bge .L_813F04A8
/* 813F0448 | 48 00 00 1C */	b .L_813F0464
.L_813F044C:
/* 813F044C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F0450 | 38 80 00 03 */	li r4, 0x3
/* 813F0454 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0458 | 48 12 1E C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F045C | 7C 7E 1B 78 */	mr r30, r3
/* 813F0460 | 48 00 00 48 */	b .L_813F04A8
.L_813F0464:
/* 813F0464 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F0468 | 38 80 00 06 */	li r4, 0x6
/* 813F046C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0470 | 48 12 1E A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F0474 | 7C 7E 1B 78 */	mr r30, r3
/* 813F0478 | 48 00 00 30 */	b .L_813F04A8
.L_813F047C:
/* 813F047C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F0480 | 38 80 00 0C */	li r4, 0xc
/* 813F0484 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0488 | 48 12 1E 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F048C | 7C 7E 1B 78 */	mr r30, r3
/* 813F0490 | 48 00 00 18 */	b .L_813F04A8
.L_813F0494:
/* 813F0494 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F0498 | 38 80 00 09 */	li r4, 0x9
/* 813F049C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F04A0 | 48 12 1E 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F04A4 | 7C 7E 1B 78 */	mr r30, r3
.L_813F04A8:
/* 813F04A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F04AC | 41 82 00 38 */	beq .L_813F04E4
/* 813F04B0 | 7F C3 F3 78 */	mr r3, r30
/* 813F04B4 | 4B F7 97 71 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F04B8 | 38 00 00 00 */	li r0, 0x0
/* 813F04BC | 7F C3 F3 78 */	mr r3, r30
/* 813F04C0 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813F04C4 | 4B F7 23 AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F04C8 | 38 00 00 01 */	li r0, 0x1
/* 813F04CC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813F04D0 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813F04D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F04D8 | 40 81 00 0C */	ble .L_813F04E4
/* 813F04DC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813F04E0 | 90 1F 00 50 */	stw r0, 0x50(r31)
.L_813F04E4:
/* 813F04E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F04E8 | 48 20 90 2D */	bl _restgpr_29
/* 813F04EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F04F0 | 7C 08 03 A6 */	mtlr r0
/* 813F04F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F04F8 | 4E 80 00 20 */	blr
.endfn ipl_813F03F0

# .text:0x4F10 | 0x813F04FC | size: 0x1A0
.fn ipl_813F04FC, global
/* 813F04FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F0500 | 7C 08 02 A6 */	mflr r0
/* 813F0504 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F0508 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F050C | 48 20 8F BD */	bl _savegpr_29
/* 813F0510 | 7C 7D 1B 78 */	mr r29, r3
/* 813F0514 | 3B C0 00 00 */	li r30, 0x0
/* 813F0518 | 4B FF FD 21 */	bl ipl_813F0238
/* 813F051C | 54 60 10 3A */	slwi r0, r3, 2
/* 813F0520 | 7C 7F 1B 78 */	mr r31, r3
/* 813F0524 | 7C 9D 02 14 */	add r4, r29, r0
/* 813F0528 | 80 04 00 50 */	lwz r0, 0x50(r4)
/* 813F052C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F0530 | 40 81 01 54 */	ble .L_813F0684
/* 813F0534 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813F0538 | 41 82 00 24 */	beq .L_813F055C
/* 813F053C | 40 80 00 14 */	bge .L_813F0550
/* 813F0540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0544 | 41 82 00 68 */	beq .L_813F05AC
/* 813F0548 | 40 80 00 94 */	bge .L_813F05DC
/* 813F054C | 48 00 00 BC */	b .L_813F0608
.L_813F0550:
/* 813F0550 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813F0554 | 40 80 00 B4 */	bge .L_813F0608
/* 813F0558 | 48 00 00 2C */	b .L_813F0584
.L_813F055C:
/* 813F055C | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813F0560 | 4B FA 71 75 */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 813F0564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0568 | 40 82 00 A0 */	bne .L_813F0608
/* 813F056C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F0570 | 38 80 00 04 */	li r4, 0x4
/* 813F0574 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F0578 | 48 12 1D A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F057C | 7C 7E 1B 78 */	mr r30, r3
/* 813F0580 | 48 00 00 88 */	b .L_813F0608
.L_813F0584:
/* 813F0584 | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813F0588 | 4B FA 71 4D */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 813F058C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0590 | 40 82 00 78 */	bne .L_813F0608
/* 813F0594 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F0598 | 38 80 00 07 */	li r4, 0x7
/* 813F059C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F05A0 | 48 12 1D 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F05A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F05A8 | 48 00 00 60 */	b .L_813F0608
.L_813F05AC:
/* 813F05AC | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813F05B0 | 4B FA 71 25 */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 813F05B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F05B8 | 40 82 00 50 */	bne .L_813F0608
/* 813F05BC | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F05C0 | 38 80 00 0D */	li r4, 0xd
/* 813F05C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F05C8 | 48 12 1D 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F05CC | 38 00 00 03 */	li r0, 0x3
/* 813F05D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813F05D4 | 90 1D 2A 2C */	stw r0, 0x2a2c(r29)
/* 813F05D8 | 48 00 00 30 */	b .L_813F0608
.L_813F05DC:
/* 813F05DC | 38 7D 29 FC */	addi r3, r29, 0x29fc
/* 813F05E0 | 4B FA 70 F5 */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 813F05E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F05E8 | 40 82 00 20 */	bne .L_813F0608
/* 813F05EC | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813F05F0 | 38 80 00 0A */	li r4, 0xa
/* 813F05F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F05F8 | 48 12 1D 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F05FC | 38 00 00 04 */	li r0, 0x4
/* 813F0600 | 7C 7E 1B 78 */	mr r30, r3
/* 813F0604 | 90 1D 2A 2C */	stw r0, 0x2a2c(r29)
.L_813F0608:
/* 813F0608 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F060C | 41 82 00 78 */	beq .L_813F0684
/* 813F0610 | 38 1F FF FE */	subi r0, r31, 0x2
/* 813F0614 | 93 FD 00 20 */	stw r31, 0x20(r29)
/* 813F0618 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813F061C | 41 81 00 0C */	bgt .L_813F0628
/* 813F0620 | 38 00 00 0B */	li r0, 0xb
/* 813F0624 | 90 1D 00 1C */	stw r0, 0x1c(r29)
.L_813F0628:
/* 813F0628 | 7F C3 F3 78 */	mr r3, r30
/* 813F062C | 4B F7 95 F9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F0630 | 38 00 00 00 */	li r0, 0x0
/* 813F0634 | 7F C3 F3 78 */	mr r3, r30
/* 813F0638 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813F063C | 4B F7 22 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F0640 | 38 00 00 01 */	li r0, 0x1
/* 813F0644 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 813F0648 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813F064C | 40 82 00 1C */	bne .L_813F0668
/* 813F0650 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F0654 | 3C 80 81 65 */	lis r4, lbl_816567EE@ha
/* 813F0658 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F065C | 38 84 67 EE */	addi r4, r4, lbl_816567EE@l
/* 813F0660 | 4B F7 AE 0D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F0664 | 48 00 00 20 */	b .L_813F0684
.L_813F0668:
/* 813F0668 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 813F066C | 40 82 00 18 */	bne .L_813F0684
/* 813F0670 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F0674 | 3C 80 81 65 */	lis r4, lbl_816567FD@ha
/* 813F0678 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F067C | 38 84 67 FD */	addi r4, r4, lbl_816567FD@l
/* 813F0680 | 4B F7 AD ED */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813F0684:
/* 813F0684 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0688 | 48 20 8E 8D */	bl _restgpr_29
/* 813F068C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F0690 | 7C 08 03 A6 */	mtlr r0
/* 813F0694 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F0698 | 4E 80 00 20 */	blr
.endfn ipl_813F04FC

# .text:0x50B0 | 0x813F069C | size: 0xD8
.fn ipl_813F069C, global
/* 813F069C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F06A0 | 7C 08 02 A6 */	mflr r0
/* 813F06A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F06A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F06AC | 48 20 8E 19 */	bl _savegpr_28
/* 813F06B0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F06B4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F06B8 | 7C BD 2B 78 */	mr r29, r5
/* 813F06BC | 7C DE 33 78 */	mr r30, r6
/* 813F06C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F06C4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813F06C8 | 7D 89 03 A6 */	mtctr r12
/* 813F06CC | 4E 80 04 21 */	bctrl
/* 813F06D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F06D4 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813F06D8 | 7D 89 03 A6 */	mtctr r12
/* 813F06DC | 4E 80 04 21 */	bctrl
/* 813F06E0 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813F06E4 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813F06E8 | 41 82 00 20 */	beq .L_813F0708
/* 813F06EC | 40 80 00 10 */	bge .L_813F06FC
/* 813F06F0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F06F4 | 40 80 00 38 */	bge .L_813F072C
/* 813F06F8 | 48 00 00 64 */	b .L_813F075C
.L_813F06FC:
/* 813F06FC | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813F0700 | 40 80 00 5C */	bge .L_813F075C
/* 813F0704 | 48 00 00 18 */	b .L_813F071C
.L_813F0708:
/* 813F0708 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F070C | 7F E4 FB 78 */	mr r4, r31
/* 813F0710 | 7F C5 F3 78 */	mr r5, r30
/* 813F0714 | 4B FF FB 99 */	bl ipl_813F02AC
/* 813F0718 | 48 00 00 44 */	b .L_813F075C
.L_813F071C:
/* 813F071C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F0720 | 7F E4 FB 78 */	mr r4, r31
/* 813F0724 | 4B FF FC CD */	bl ipl_813F03F0
/* 813F0728 | 48 00 00 34 */	b .L_813F075C
.L_813F072C:
/* 813F072C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813F0730 | 3C 80 00 10 */	lis r4, 0x10
/* 813F0734 | 7F C3 F3 78 */	mr r3, r30
/* 813F0738 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F073C | 38 84 08 00 */	addi r4, r4, 0x800
/* 813F0740 | 7D 89 03 A6 */	mtctr r12
/* 813F0744 | 4E 80 04 21 */	bctrl
/* 813F0748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F074C | 41 82 00 10 */	beq .L_813F075C
/* 813F0750 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F0754 | 7F E4 FB 78 */	mr r4, r31
/* 813F0758 | 4B FF FD A5 */	bl ipl_813F04FC
.L_813F075C:
/* 813F075C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0760 | 48 20 8D B1 */	bl _restgpr_28
/* 813F0764 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F0768 | 7C 08 03 A6 */	mtlr r0
/* 813F076C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F0770 | 4E 80 00 20 */	blr
.endfn ipl_813F069C

# 0x81655CA0..0x816568E8 | size: 0xC48
.data
.balign 8

# .data:0x0 | 0x81655CA0 | size: 0xC
.obj lbl_81655CA0, global
	.4byte lbl_81696F50
	.4byte lbl_81696F52
	.4byte lbl_81696F54
.endobj lbl_81655CA0

# .data:0xC | 0x81655CAC | size: 0x14
.obj lbl_81655CAC, global
	.4byte lbl_81696F50
	.4byte lbl_81696F52
	.4byte lbl_81696F5B
	.4byte lbl_81696F5D
	.4byte lbl_81696F54
.endobj lbl_81655CAC

# .data:0x20 | 0x81655CC0 | size: 0x10
.obj lbl_81655CC0, global
	.4byte lbl_81696F5F
	.4byte lbl_81696F64
	.4byte lbl_81696F69
	.4byte lbl_81696F54
.endobj lbl_81655CC0

# .data:0x30 | 0x81655CD0 | size: 0xA
.obj lbl_81655CD0, global
	.string "B_CalExit"
.endobj lbl_81655CD0

# .data:0x3A | 0x81655CDA | size: 0xE
.obj lbl_81655CDA, global
	.4byte 0x425F4361
	.4byte 0x6C457869
	.4byte 0x745F3030
	.2byte 0x0000
.endobj lbl_81655CDA

# .data:0x48 | 0x81655CE8 | size: 0x5CE
.obj lbl_81655CE8, global
	.4byte lbl_81696F6E
	.4byte lbl_81696F75
	.4byte lbl_81655CD0
	.4byte lbl_81655CDA
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F615F
	.4byte 0x4469616C
	.4byte 0x6F67496E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x615F4469
	.4byte 0x616C6F67
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F61
	.4byte 0x5F466F63
	.4byte 0x75734274
	.4byte 0x6E5F6F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F466F63
	.4byte 0x75734274
	.4byte 0x6E41006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x615F466F
	.4byte 0x63757342
	.4byte 0x746E5F6F
	.4byte 0x66662E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F615F
	.4byte 0x53656C65
	.4byte 0x63744274
	.4byte 0x6E5F4163
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F53656C
	.4byte 0x65637442
	.4byte 0x746E4100
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F615F42
	.4byte 0x746E415F
	.4byte 0x526F6C6C
	.4byte 0x6F766572
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x615F4274
	.4byte 0x6E415F52
	.4byte 0x6F6C6C6F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F615F
	.4byte 0x42746E41
	.4byte 0x5F4F6E2E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F61
	.4byte 0x5F42746E
	.4byte 0x425F526F
	.4byte 0x6C6C6F76
	.4byte 0x65722E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F615F
	.4byte 0x42746E42
	.4byte 0x5F526F6C
	.4byte 0x6C6F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x615F4274
	.4byte 0x6E425F4F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x545F4469
	.4byte 0x616C6F67
	.4byte 0x5F303000
	.4byte 0x54657874
	.4byte 0x426F785F
	.4byte 0x30350054
	.4byte 0x65787442
	.4byte 0x6F785F30
	.4byte 0x36006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x625F4469
	.4byte 0x616C6F67
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F625F
	.4byte 0x4469616C
	.4byte 0x6F674F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F625F46
	.4byte 0x6F637573
	.4byte 0x42746E5F
	.4byte 0x6F6E2E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F625F
	.4byte 0x466F6375
	.4byte 0x7342746E
	.4byte 0x5F6F6666
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x625F5365
	.4byte 0x6C656374
	.4byte 0x42746E5F
	.4byte 0x41632E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F625F
	.4byte 0x42746E41
	.4byte 0x5F526F6C
	.4byte 0x6C6F7665
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F625F42
	.4byte 0x746E415F
	.4byte 0x526F6C6C
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x5F42746E
	.4byte 0x415F4F6E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x625F4274
	.4byte 0x6E425F52
	.4byte 0x6F6C6C6F
	.4byte 0x7665722E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x5F42746E
	.4byte 0x425F526F
	.4byte 0x6C6C6F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F625F42
	.4byte 0x746E425F
	.4byte 0x4F6E2E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F625F
	.4byte 0x42746E43
	.4byte 0x5F526F6C
	.4byte 0x6C6F7665
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F625F42
	.4byte 0x746E435F
	.4byte 0x526F6C6C
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x5F42746E
	.4byte 0x435F4F6E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x625F4274
	.4byte 0x6E445F52
	.4byte 0x6F6C6C6F
	.4byte 0x7665722E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x5F42746E
	.4byte 0x445F526F
	.4byte 0x6C6C6F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F625F42
	.4byte 0x746E445F
	.4byte 0x4F6E2E62
	.4byte 0x726C616E
	.4byte 0x00545F44
	.4byte 0x69616C6F
	.4byte 0x67005465
	.4byte 0x7874426F
	.4byte 0x785F3030
	.4byte 0x00546578
	.4byte 0x74426F78
	.4byte 0x5F303100
	.4byte 0x54657874
	.4byte 0x426F785F
	.4byte 0x30320054
	.4byte 0x65787442
	.4byte 0x6F785F30
	.4byte 0x33005465
	.4byte 0x7874426F
	.4byte 0x785F3037
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F632E
	.4byte 0x62726C79
	.2byte 0x7400
.endobj lbl_81655CE8

# .data:0x616 | 0x816562B6 | size: 0x3E0
.obj lbl_816562B6, global
	.4byte 0x545F4C65
	.4byte 0x74746572
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F635F
	.4byte 0x4469616C
	.4byte 0x6F675F46
	.4byte 0x61646549
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F635F44
	.4byte 0x69616C6F
	.4byte 0x675F4661
	.4byte 0x64654F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F635F42
	.4byte 0x61636B5F
	.4byte 0x526F6C6C
	.4byte 0x4F766572
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F426163
	.4byte 0x6B5F466F
	.4byte 0x63757300
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F635F42
	.4byte 0x61636B5F
	.4byte 0x526F6C6C
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F63
	.4byte 0x5F426163
	.4byte 0x6B5F4F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F426163
	.4byte 0x6B5F4163
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F635F
	.4byte 0x4D6F7665
	.4byte 0x5F526F6C
	.4byte 0x6C4F7665
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x475F4D6F
	.4byte 0x76655F46
	.4byte 0x6F637573
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F436843
	.4byte 0x68616E67
	.4byte 0x655F635F
	.4byte 0x4D6F7665
	.4byte 0x5F526F6C
	.4byte 0x6C6F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x635F4D6F
	.4byte 0x76655F4F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4D6F
	.4byte 0x76655F41
	.4byte 0x63006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F63
	.4byte 0x5F466F63
	.4byte 0x75734F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x4C5F466F
	.4byte 0x63757300
	.4byte 0x6D6E5F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x43684368
	.4byte 0x616E6765
	.4byte 0x5F635F46
	.4byte 0x6F637573
	.4byte 0x4F66662E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F63
	.4byte 0x5F53656C
	.4byte 0x6563742E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x4172774C
	.4byte 0x5F416300
	.4byte 0x475F4172
	.4byte 0x77525F46
	.4byte 0x6F637573
	.4byte 0x00475F41
	.4byte 0x7277525F
	.4byte 0x4163006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x635F4170
	.4byte 0x70656172
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x4C5F456E
	.4byte 0x64006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F63
	.4byte 0x5F4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x475F4172
	.4byte 0x77525F45
	.4byte 0x6E64006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x635F4C6F
	.4byte 0x6F702E62
	.4byte 0x726C616E
	.4byte 0x00475F41
	.4byte 0x7277526F
	.4byte 0x6F70006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F43
	.4byte 0x68436861
	.4byte 0x6E67655F
	.4byte 0x635F4844
	.4byte 0x41637469
	.4byte 0x6F6E5374
	.4byte 0x6172742E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x4172774C
	.4byte 0x5F484441
	.4byte 0x63006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4368
	.4byte 0x4368616E
	.4byte 0x67655F63
	.4byte 0x5F484441
	.4byte 0x6374696F
	.4byte 0x6E456E64
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x525F4844
	.4byte 0x41630054
	.4byte 0x5F43616C
	.4byte 0x45786974
	.4byte 0x00545F43
	.4byte 0x616C4578
	.4byte 0x69745F30
	.4byte 0x30006D6E
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F4261
	.4byte 0x636B6772
	.4byte 0x6F756E64
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x6E5F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F42
	.4byte 0x61636B67
	.4byte 0x726F756E
	.4byte 0x645F4469
	.4byte 0x616C6F67
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F426163
	.4byte 0x6B67726F
	.4byte 0x756E645F
	.4byte 0x4469616C
	.4byte 0x6F674F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
.endobj lbl_816562B6

# .data:0x9F6 | 0x81656696 | size: 0x14
.obj lbl_81656696, global
	.string "WIPL_SE_INFO_WINDOW"
.endobj lbl_81656696

# .data:0xA0A | 0x816566AA | size: 0x9
.obj lbl_816566AA, global
	.string "N_Header"
.endobj lbl_816566AA

# .data:0xA13 | 0x816566B3 | size: 0x9
.obj lbl_816566B3, global
	.string "N_Footer"
.endobj lbl_816566B3

# .data:0xA1C | 0x816566BC | size: 0x68
.obj jumptable_816566BC, local
	.rel ipl_813ED084, .L_813ED13C
	.rel ipl_813ED084, .L_813ED148
	.rel ipl_813ED084, .L_813ED168
	.rel ipl_813ED084, .L_813ED174
	.rel ipl_813ED084, .L_813ED184
	.rel ipl_813ED084, .L_813ED190
	.rel ipl_813ED084, .L_813ED1B0
	.rel ipl_813ED084, .L_813ED1BC
	.rel ipl_813ED084, .L_813ED1C8
	.rel ipl_813ED084, .L_813ED1D4
	.rel ipl_813ED084, .L_813ED1E0
	.rel ipl_813ED084, .L_813ED1EC
	.rel ipl_813ED084, .L_813ED1F8
	.rel ipl_813ED084, .L_813ED210
	.rel ipl_813ED084, .L_813ED21C
	.rel ipl_813ED084, .L_813ED228
	.rel ipl_813ED084, .L_813ED234
	.rel ipl_813ED084, .L_813ED240
	.rel ipl_813ED084, .L_813ED24C
	.rel ipl_813ED084, .L_813ED204
	.rel ipl_813ED084, .L_813ED258
	.rel ipl_813ED084, .L_813ED268
	.rel ipl_813ED084, .L_813ED274
	.rel ipl_813ED084, .L_813ED284
	.rel ipl_813ED084, .L_813ED290
	.rel ipl_813ED084, .L_813ED2A0
.endobj jumptable_816566BC

# .data:0xA84 | 0x81656724 | size: 0x5C
.obj jumptable_81656724, local
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED340
	.rel ipl_813ED2EC, .L_813ED340
	.rel ipl_813ED2EC, .L_813ED3BC
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED43C
	.rel ipl_813ED2EC, .L_813ED43C
	.rel ipl_813ED2EC, .L_813ED4B8
	.rel ipl_813ED2EC, .L_813ED67C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED538
	.rel ipl_813ED2EC, .L_813ED538
	.rel ipl_813ED2EC, .L_813ED5EC
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED78C
	.rel ipl_813ED2EC, .L_813ED67C
.endobj jumptable_81656724

# .data:0xAE0 | 0x81656780 | size: 0xA
.obj lbl_81656780, global
	.4byte 0x545F4865
	.4byte 0x61646572
	.2byte 0x0000
.endobj lbl_81656780

# .data:0xAEA | 0x8165678A | size: 0x10
.obj lbl_8165678A, global
	.string16 "%ls\n%ls"
.endobj lbl_8165678A

# .data:0xAFA | 0x8165679A | size: 0x3E
.obj lbl_8165679A, global
	.4byte 0x002A002A
	.4byte 0x002A002A
	.4byte 0x00006865
	.4byte 0x61646572
	.4byte 0x5F686561
	.4byte 0x64657200
	.4byte 0x68656164
	.4byte 0x65725F62
	.4byte 0x6F647900
	.4byte 0x545F4865
	.4byte 0x61646572
	.4byte 0x5F626F64
	.4byte 0x79004E5F
	.4byte 0x546F7042
	.4byte 0x746E5F30
	.2byte 0x3000
.endobj lbl_8165679A

# .data:0xB38 | 0x816567D8 | size: 0x16
.obj lbl_816567D8, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_816567D8

# .data:0xB4E | 0x816567EE | size: 0xF
.obj lbl_816567EE, global
	.string "WIPL_SE_CANCEL"
.endobj lbl_816567EE

# .data:0xB5D | 0x816567FD | size: 0xF
.obj lbl_816567FD, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_816567FD

# .data:0xB6C | 0x8165680C | size: 0x18
.obj lbl_8165680C, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte ipl_813F069C
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj lbl_8165680C

# .data:0xB84 | 0x81656824 | size: 0x18
.obj lbl_81656824, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte ipl_813F0160
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj lbl_81656824

# .data:0xB9C | 0x8165683C | size: 0xAC
.obj lbl_8165683C, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte ipl_813EFAF4
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
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
.endobj lbl_8165683C

# 0x81694BD0..0x81694C00 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694BD0 | size: 0x4
.obj lbl_81694BD0, global
	.float 0
.endobj lbl_81694BD0

# .sdata2:0x4 | 0x81694BD4 | size: 0x4
.obj lbl_81694BD4, global
	.float 160
.endobj lbl_81694BD4

# .sdata2:0x8 | 0x81694BD8 | size: 0x8
.obj lbl_81694BD8, global
	.double 4503601774854144
.endobj lbl_81694BD8

# .sdata2:0x10 | 0x81694BE0 | size: 0x4
.obj lbl_81694BE0, global
	.float 100
.endobj lbl_81694BE0

# .sdata2:0x14 | 0x81694BE4 | size: 0x4
.obj lbl_81694BE4, global
	.float 99
.endobj lbl_81694BE4

# .sdata2:0x18 | 0x81694BE8 | size: 0x8
.obj lbl_81694BE8, global
	.double 4503599627370496
.endobj lbl_81694BE8

# .sdata2:0x20 | 0x81694BF0 | size: 0x4
.obj lbl_81694BF0, global
	.float 500
.endobj lbl_81694BF0

# .sdata2:0x24 | 0x81694BF4 | size: 0x4
.obj lbl_81694BF4, global
	.float 40
.endobj lbl_81694BF4

# .sdata2:0x28 | 0x81694BF8 | size: 0x4
.obj lbl_81694BF8, global
	.float 79.5
.endobj lbl_81694BF8

# .sdata2:0x2C | 0x81694BFC | size: 0x4
.obj lbl_81694BFC, global
	.float -500
.endobj lbl_81694BFC

# 0x81696F50..0x81696FE8 | size: 0x98
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696F50 | size: 0x2
.obj lbl_81696F50, global
	.string "A"
.endobj lbl_81696F50

# .sdata:0x2 | 0x81696F52 | size: 0x2
.obj lbl_81696F52, global
	.string "B"
.endobj lbl_81696F52

# .sdata:0x4 | 0x81696F54 | size: 0x7
.obj lbl_81696F54, global
	.string "B_BtnA"
.endobj lbl_81696F54

# .sdata:0xB | 0x81696F5B | size: 0x2
.obj lbl_81696F5B, global
	.string "C"
.endobj lbl_81696F5B

# .sdata:0xD | 0x81696F5D | size: 0x2
.obj lbl_81696F5D, global
	.string "D"
.endobj lbl_81696F5D

# .sdata:0xF | 0x81696F5F | size: 0x5
.obj lbl_81696F5F, global
	.string "B_00"
.endobj lbl_81696F5F

# .sdata:0x14 | 0x81696F64 | size: 0x5
.obj lbl_81696F64, global
	.string "C_00"
.endobj lbl_81696F64

# .sdata:0x19 | 0x81696F69 | size: 0x5
.obj lbl_81696F69, global
	.string "D_00"
.endobj lbl_81696F69

# .sdata:0x1E | 0x81696F6E | size: 0x7
.obj lbl_81696F6E, global
	.string "B_ArwR"
.endobj lbl_81696F6E

# .sdata:0x25 | 0x81696F75 | size: 0x7
.obj lbl_81696F75, global
	.string "B_ArwL"
.endobj lbl_81696F75

# .sdata:0x2C | 0x81696F7C | size: 0x4
.obj lbl_81696F7C, global
	.string "arc"
.endobj lbl_81696F7C

# .sdata:0x30 | 0x81696F80 | size: 0x8
.obj lbl_81696F80, global
	.string "G_InOut"
.endobj lbl_81696F80

# .sdata:0x38 | 0x81696F88 | size: 0x7
.obj lbl_81696F88, global
	.string "G_BtnA"
.endobj lbl_81696F88

# .sdata:0x3F | 0x81696F8F | size: 0x7
.obj lbl_81696F8F, global
	.string "G_BtnB"
.endobj lbl_81696F8F

# .sdata:0x46 | 0x81696F96 | size: 0x7
.obj lbl_81696F96, global
	.string "T_BtnA"
.endobj lbl_81696F96

# .sdata:0x4D | 0x81696F9D | size: 0x7
.obj lbl_81696F9D, global
	.string "G_BtnC"
.endobj lbl_81696F9D

# .sdata:0x54 | 0x81696FA4 | size: 0x7
.obj lbl_81696FA4, global
	.string "G_BtnD"
.endobj lbl_81696FA4

# .sdata:0x5B | 0x81696FAB | size: 0x8
.obj lbl_81696FAB, global
	.string "N_Btn_3"
.endobj lbl_81696FAB

# .sdata:0x63 | 0x81696FB3 | size: 0x8
.obj lbl_81696FB3, global
	.string "N_Btn_4"
.endobj lbl_81696FB3

# .sdata:0x6B | 0x81696FBB | size: 0x7
.obj lbl_81696FBB, global
	.string "G_Fede"
.endobj lbl_81696FBB

# .sdata:0x72 | 0x81696FC2 | size: 0x7
.obj lbl_81696FC2, global
	.string "N_Body"
.endobj lbl_81696FC2

# .sdata:0x79 | 0x81696FC9 | size: 0x7
.obj lbl_81696FC9, global
	.string "N_Memo"
.endobj lbl_81696FC9

# .sdata:0x80 | 0x81696FD0 | size: 0x6
.obj lbl_81696FD0, global
	.string16 "%d"
.endobj lbl_81696FD0

# .sdata:0x86 | 0x81696FD6 | size: 0x4
.obj lbl_81696FD6, global
	.string16 "\n"
.endobj lbl_81696FD6

# .sdata:0x8A | 0x81696FDA | size: 0x7
.obj lbl_81696FDA, global
	.string "N_Back"
.endobj lbl_81696FDA

# .sdata:0x91 | 0x81696FE1 | size: 0x7
.obj lbl_81696FE1, global
	.string "N_Move"
.endobj lbl_81696FE1
