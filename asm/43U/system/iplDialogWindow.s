.include "macros.inc"
.file "iplDialogWindow.cpp"

# 0x81344818..0x81347AD0 | size: 0x32B8
.text
.balign 4

# .text:0x0 | 0x81344818 | size: 0x858
# ipl::DialogWindow::DialogWindow(EGG::Heap*)
.fn __ct__Q23ipl12DialogWindowFPQ23EGG4Heap, global
/* 81344818 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134481C | 7C 08 02 A6 */	mflr r0
/* 81344820 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81344824 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81344828 | 48 2B 4C 91 */	bl _savegpr_25
/* 8134482C | 3C A0 81 63 */	lis r5, __vt__Q23ipl12DialogWindow@ha
/* 81344830 | 38 C0 00 00 */	li r6, 0x0
/* 81344834 | 38 00 FF FF */	li r0, -0x1
/* 81344838 | 3F E0 81 63 */	lis r31, mscBtnName__Q23ipl12DialogWindow@ha
/* 8134483C | 38 A5 5A 20 */	addi r5, r5, __vt__Q23ipl12DialogWindow@l
/* 81344840 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 81344844 | 7C 7C 1B 78 */	mr r28, r3
/* 81344848 | 7C 9D 23 78 */	mr r29, r4
/* 8134484C | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81344850 | 3B FF 55 10 */	addi r31, r31, mscBtnName__Q23ipl12DialogWindow@l
/* 81344854 | 38 A0 00 04 */	li r5, 0x4
/* 81344858 | 90 C3 00 0C */	stw r6, 0xc(r3)
/* 8134485C | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81344860 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 81344864 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 81344868 | 90 C3 00 2C */	stw r6, 0x2c(r3)
/* 8134486C | 98 C3 00 34 */	stb r6, 0x34(r3)
/* 81344870 | 98 C3 00 35 */	stb r6, 0x35(r3)
/* 81344874 | 98 C3 00 36 */	stb r6, 0x36(r3)
/* 81344878 | 98 C3 00 37 */	stb r6, 0x37(r3)
/* 8134487C | 98 C3 00 38 */	stb r6, 0x38(r3)
/* 81344880 | 90 C3 00 3C */	stw r6, 0x3c(r3)
/* 81344884 | 90 C3 00 40 */	stw r6, 0x40(r3)
/* 81344888 | 90 C3 00 78 */	stw r6, 0x78(r3)
/* 8134488C | 90 C3 00 7C */	stw r6, 0x7c(r3)
/* 81344890 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 81344894 | 90 C3 00 90 */	stw r6, 0x90(r3)
/* 81344898 | 98 C3 00 98 */	stb r6, 0x98(r3)
/* 8134489C | 98 C3 00 99 */	stb r6, 0x99(r3)
/* 813448A0 | 38 60 00 14 */	li r3, 0x14
/* 813448A4 | 48 2B 38 0D */	bl __nw__FUlPQ23EGG4Heapi
/* 813448A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813448AC | 7C 7E 1B 78 */	mr r30, r3
/* 813448B0 | 41 82 00 14 */	beq .L_813448C4
/* 813448B4 | 7F A4 EB 78 */	mr r4, r29
/* 813448B8 | 38 A0 00 04 */	li r5, 0x4
/* 813448BC | 48 2B 11 C1 */	bl fn_815F5A7C
/* 813448C0 | 7C 7E 1B 78 */	mr r30, r3
.L_813448C4:
/* 813448C4 | 93 CD AF 68 */	stw r30, lbl_81698FA8@sda21(r0)
/* 813448C8 | 7F 83 E3 78 */	mr r3, r28
/* 813448CC | 48 00 08 9D */	bl init__Q23ipl12DialogWindowFv
/* 813448D0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813448D4 | 7F A4 EB 78 */	mr r4, r29
/* 813448D8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813448DC | 38 60 05 80 */	li r3, 0x580
/* 813448E0 | 80 05 01 8C */	lwz r0, 0x18c(r5)
/* 813448E4 | 38 A0 00 04 */	li r5, 0x4
/* 813448E8 | 90 1C 00 10 */	stw r0, 0x10(r28)
/* 813448EC | 48 2B 37 C5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813448F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813448F4 | 41 82 00 18 */	beq .L_8134490C
/* 813448F8 | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 813448FC | 7F A4 EB 78 */	mr r4, r29
/* 81344900 | 38 FF 00 0C */	addi r7, r31, 0xc
/* 81344904 | 38 CD 81 05 */	li r6, lbl_81696145@sda21
/* 81344908 | 48 02 57 1D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8134490C:
/* 8134490C | 90 7C 00 50 */	stw r3, 0x50(r28)
/* 81344910 | 38 9F 00 25 */	addi r4, r31, 0x25
/* 81344914 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344918 | 38 C0 00 00 */	li r6, 0x0
/* 8134491C | 38 E0 00 01 */	li r7, 0x1
/* 81344920 | 48 02 5B C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344924 | 80 7C 00 50 */	lwz r3, 0x50(r28)
/* 81344928 | 38 9F 00 47 */	addi r4, r31, 0x47
/* 8134492C | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344930 | 38 C0 00 00 */	li r6, 0x0
/* 81344934 | 38 E0 00 00 */	li r7, 0x0
/* 81344938 | 48 02 5B A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8134493C | 80 7C 00 50 */	lwz r3, 0x50(r28)
/* 81344940 | 38 9F 00 6A */	addi r4, r31, 0x6a
/* 81344944 | 38 AD 81 11 */	li r5, lbl_81696151@sda21
/* 81344948 | 38 C0 00 00 */	li r6, 0x0
/* 8134494C | 38 E0 00 00 */	li r7, 0x0
/* 81344950 | 48 02 5B 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344954 | 80 7C 00 50 */	lwz r3, 0x50(r28)
/* 81344958 | 38 9F 00 88 */	addi r4, r31, 0x88
/* 8134495C | 38 AD 81 18 */	li r5, lbl_81696158@sda21
/* 81344960 | 38 C0 00 00 */	li r6, 0x0
/* 81344964 | 38 E0 00 01 */	li r7, 0x1
/* 81344968 | 48 02 5B 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8134496C | 80 7C 00 50 */	lwz r3, 0x50(r28)
/* 81344970 | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 81344974 | 38 A0 00 01 */	li r5, 0x1
/* 81344978 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8134497C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344980 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81344984 | 7D 89 03 A6 */	mtctr r12
/* 81344988 | 4E 80 04 21 */	bctrl
/* 8134498C | 38 80 00 00 */	li r4, 0x0
/* 81344990 | 4B FF FA 85 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81344994 | 80 7C 00 50 */	lwz r3, 0x50(r28)
/* 81344998 | 38 8D 81 27 */	li r4, lbl_81696167@sda21
/* 8134499C | 38 A0 00 01 */	li r5, 0x1
/* 813449A0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813449A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813449A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813449AC | 7D 89 03 A6 */	mtctr r12
/* 813449B0 | 4E 80 04 21 */	bctrl
/* 813449B4 | 38 80 00 00 */	li r4, 0x0
/* 813449B8 | 4B FF FA 5D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813449BC | 80 7C 00 50 */	lwz r3, 0x50(r28)
/* 813449C0 | 48 02 5C 75 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813449C4 | 38 00 00 00 */	li r0, 0x0
/* 813449C8 | 7F A4 EB 78 */	mr r4, r29
/* 813449CC | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 813449D0 | 38 60 05 80 */	li r3, 0x580
/* 813449D4 | 38 A0 00 04 */	li r5, 0x4
/* 813449D8 | 48 2B 36 D9 */	bl __nw__FUlPQ23EGG4Heapi
/* 813449DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813449E0 | 41 82 00 18 */	beq .L_813449F8
/* 813449E4 | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 813449E8 | 7F A4 EB 78 */	mr r4, r29
/* 813449EC | 38 FF 00 A9 */	addi r7, r31, 0xa9
/* 813449F0 | 38 CD 81 05 */	li r6, lbl_81696145@sda21
/* 813449F4 | 48 02 56 31 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813449F8:
/* 813449F8 | 90 7C 00 58 */	stw r3, 0x58(r28)
/* 813449FC | 38 9F 00 C2 */	addi r4, r31, 0xc2
/* 81344A00 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344A04 | 38 C0 00 00 */	li r6, 0x0
/* 81344A08 | 38 E0 00 01 */	li r7, 0x1
/* 81344A0C | 48 02 5A D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344A10 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81344A14 | 38 9F 00 E4 */	addi r4, r31, 0xe4
/* 81344A18 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344A1C | 38 C0 00 00 */	li r6, 0x0
/* 81344A20 | 38 E0 00 00 */	li r7, 0x0
/* 81344A24 | 48 02 5A BD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344A28 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81344A2C | 38 9F 01 07 */	addi r4, r31, 0x107
/* 81344A30 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344A34 | 38 C0 00 00 */	li r6, 0x0
/* 81344A38 | 38 E0 00 00 */	li r7, 0x0
/* 81344A3C | 48 02 5A A5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344A40 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81344A44 | 38 9F 01 38 */	addi r4, r31, 0x138
/* 81344A48 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344A4C | 38 C0 00 00 */	li r6, 0x0
/* 81344A50 | 38 E0 00 00 */	li r7, 0x0
/* 81344A54 | 48 02 5A 8D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344A58 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81344A5C | 38 9F 01 5E */	addi r4, r31, 0x15e
/* 81344A60 | 38 BF 01 84 */	addi r5, r31, 0x184
/* 81344A64 | 38 C0 00 00 */	li r6, 0x0
/* 81344A68 | 38 E0 00 00 */	li r7, 0x0
/* 81344A6C | 48 02 5A 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344A70 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 81344A74 | 48 02 5B C1 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81344A78 | 7F A4 EB 78 */	mr r4, r29
/* 81344A7C | 38 60 00 34 */	li r3, 0x34
/* 81344A80 | 38 A0 00 04 */	li r5, 0x4
/* 81344A84 | 48 2B 36 2D */	bl __nw__FUlPQ23EGG4Heapi
/* 81344A88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344A8C | 41 82 00 20 */	beq .L_81344AAC
/* 81344A90 | 80 BC 00 58 */	lwz r5, 0x58(r28)
/* 81344A94 | 7F C7 F3 78 */	mr r7, r30
/* 81344A98 | 38 80 00 00 */	li r4, 0x0
/* 81344A9C | 38 C0 00 00 */	li r6, 0x0
/* 81344AA0 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 81344AA4 | 39 00 00 00 */	li r8, 0x0
/* 81344AA8 | 48 00 05 C9 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_81344AAC:
/* 81344AAC | 90 7C 00 5C */	stw r3, 0x5c(r28)
/* 81344AB0 | 80 9C 00 58 */	lwz r4, 0x58(r28)
/* 81344AB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344AB8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81344ABC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81344AC0 | 7D 89 03 A6 */	mtctr r12
/* 81344AC4 | 4E 80 04 21 */	bctrl
/* 81344AC8 | 80 7C 00 5C */	lwz r3, 0x5c(r28)
/* 81344ACC | 38 80 00 00 */	li r4, 0x0
/* 81344AD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344AD4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81344AD8 | 7D 89 03 A6 */	mtctr r12
/* 81344ADC | 4E 80 04 21 */	bctrl
/* 81344AE0 | 80 DC 00 58 */	lwz r6, 0x58(r28)
/* 81344AE4 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 81344AE8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81344AEC | 38 A0 00 01 */	li r5, 0x1
/* 81344AF0 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 81344AF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344AF8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81344AFC | 7D 89 03 A6 */	mtctr r12
/* 81344B00 | 4E 80 04 21 */	bctrl
/* 81344B04 | 7C 64 1B 78 */	mr r4, r3
/* 81344B08 | 80 7C 00 5C */	lwz r3, 0x5c(r28)
/* 81344B0C | 38 A0 00 01 */	li r5, 0x1
/* 81344B10 | 48 02 66 BD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81344B14 | 7F A4 EB 78 */	mr r4, r29
/* 81344B18 | 38 60 05 80 */	li r3, 0x580
/* 81344B1C | 38 A0 00 04 */	li r5, 0x4
/* 81344B20 | 48 2B 35 91 */	bl __nw__FUlPQ23EGG4Heapi
/* 81344B24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344B28 | 41 82 00 18 */	beq .L_81344B40
/* 81344B2C | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 81344B30 | 7F A4 EB 78 */	mr r4, r29
/* 81344B34 | 38 FF 01 91 */	addi r7, r31, 0x191
/* 81344B38 | 38 CD 81 05 */	li r6, lbl_81696145@sda21
/* 81344B3C | 48 02 54 E9 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81344B40:
/* 81344B40 | 90 7C 00 60 */	stw r3, 0x60(r28)
/* 81344B44 | 38 9F 01 AA */	addi r4, r31, 0x1aa
/* 81344B48 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344B4C | 38 C0 00 00 */	li r6, 0x0
/* 81344B50 | 38 E0 00 01 */	li r7, 0x1
/* 81344B54 | 48 02 59 8D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344B58 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344B5C | 38 9F 01 CC */	addi r4, r31, 0x1cc
/* 81344B60 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344B64 | 38 C0 00 00 */	li r6, 0x0
/* 81344B68 | 38 E0 00 00 */	li r7, 0x0
/* 81344B6C | 48 02 59 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344B70 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344B74 | 38 9F 01 EF */	addi r4, r31, 0x1ef
/* 81344B78 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344B7C | 38 C0 00 00 */	li r6, 0x0
/* 81344B80 | 38 E0 00 00 */	li r7, 0x0
/* 81344B84 | 48 02 59 5D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344B88 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344B8C | 38 9F 02 14 */	addi r4, r31, 0x214
/* 81344B90 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344B94 | 38 C0 00 00 */	li r6, 0x0
/* 81344B98 | 38 E0 00 00 */	li r7, 0x0
/* 81344B9C | 48 02 59 45 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344BA0 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344BA4 | 38 9F 02 3A */	addi r4, r31, 0x23a
/* 81344BA8 | 38 BF 01 84 */	addi r5, r31, 0x184
/* 81344BAC | 38 C0 00 00 */	li r6, 0x0
/* 81344BB0 | 38 E0 00 00 */	li r7, 0x0
/* 81344BB4 | 48 02 59 2D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344BB8 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344BBC | 38 9F 01 EF */	addi r4, r31, 0x1ef
/* 81344BC0 | 38 BF 02 60 */	addi r5, r31, 0x260
/* 81344BC4 | 38 C0 00 00 */	li r6, 0x0
/* 81344BC8 | 38 E0 00 00 */	li r7, 0x0
/* 81344BCC | 48 02 59 15 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344BD0 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344BD4 | 38 9F 02 14 */	addi r4, r31, 0x214
/* 81344BD8 | 38 BF 02 60 */	addi r5, r31, 0x260
/* 81344BDC | 38 C0 00 00 */	li r6, 0x0
/* 81344BE0 | 38 E0 00 00 */	li r7, 0x0
/* 81344BE4 | 48 02 58 FD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344BE8 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344BEC | 38 9F 02 3A */	addi r4, r31, 0x23a
/* 81344BF0 | 38 BF 02 6C */	addi r5, r31, 0x26c
/* 81344BF4 | 38 C0 00 00 */	li r6, 0x0
/* 81344BF8 | 38 E0 00 00 */	li r7, 0x0
/* 81344BFC | 48 02 58 E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344C00 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344C04 | 48 02 5A 31 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81344C08 | 7F A4 EB 78 */	mr r4, r29
/* 81344C0C | 38 60 00 34 */	li r3, 0x34
/* 81344C10 | 38 A0 00 04 */	li r5, 0x4
/* 81344C14 | 48 2B 34 9D */	bl __nw__FUlPQ23EGG4Heapi
/* 81344C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344C1C | 41 82 00 20 */	beq .L_81344C3C
/* 81344C20 | 80 BC 00 60 */	lwz r5, 0x60(r28)
/* 81344C24 | 7F C7 F3 78 */	mr r7, r30
/* 81344C28 | 38 80 00 00 */	li r4, 0x0
/* 81344C2C | 38 C0 00 00 */	li r6, 0x0
/* 81344C30 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 81344C34 | 39 00 00 00 */	li r8, 0x0
/* 81344C38 | 48 00 04 39 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_81344C3C:
/* 81344C3C | 90 7C 00 64 */	stw r3, 0x64(r28)
/* 81344C40 | 80 9C 00 60 */	lwz r4, 0x60(r28)
/* 81344C44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344C48 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81344C4C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81344C50 | 7D 89 03 A6 */	mtctr r12
/* 81344C54 | 4E 80 04 21 */	bctrl
/* 81344C58 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81344C5C | 38 80 00 00 */	li r4, 0x0
/* 81344C60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344C64 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81344C68 | 7D 89 03 A6 */	mtctr r12
/* 81344C6C | 4E 80 04 21 */	bctrl
/* 81344C70 | 3B 5F 00 00 */	addi r26, r31, 0x0
/* 81344C74 | 3B 20 00 00 */	li r25, 0x0
/* 81344C78 | 3B 60 00 00 */	li r27, 0x0
.L_81344C7C:
/* 81344C7C | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81344C80 | 38 A0 00 01 */	li r5, 0x1
/* 81344C84 | 7C 9A D8 2E */	lwzx r4, r26, r27
/* 81344C88 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81344C8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344C90 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81344C94 | 7D 89 03 A6 */	mtctr r12
/* 81344C98 | 4E 80 04 21 */	bctrl
/* 81344C9C | 7C 64 1B 78 */	mr r4, r3
/* 81344CA0 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81344CA4 | 38 A0 00 01 */	li r5, 0x1
/* 81344CA8 | 48 02 65 25 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81344CAC | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81344CB0 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81344CB4 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 81344CB8 | 40 81 FF C4 */	ble .L_81344C7C
/* 81344CBC | 7F A4 EB 78 */	mr r4, r29
/* 81344CC0 | 38 60 05 80 */	li r3, 0x580
/* 81344CC4 | 38 A0 00 04 */	li r5, 0x4
/* 81344CC8 | 48 2B 33 E9 */	bl __nw__FUlPQ23EGG4Heapi
/* 81344CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344CD0 | 41 82 00 18 */	beq .L_81344CE8
/* 81344CD4 | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 81344CD8 | 7F A4 EB 78 */	mr r4, r29
/* 81344CDC | 38 FF 02 79 */	addi r7, r31, 0x279
/* 81344CE0 | 38 CD 81 05 */	li r6, lbl_81696145@sda21
/* 81344CE4 | 48 02 53 41 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81344CE8:
/* 81344CE8 | 90 7C 00 68 */	stw r3, 0x68(r28)
/* 81344CEC | 38 9F 02 92 */	addi r4, r31, 0x292
/* 81344CF0 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344CF4 | 38 C0 00 00 */	li r6, 0x0
/* 81344CF8 | 38 E0 00 01 */	li r7, 0x1
/* 81344CFC | 48 02 57 E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D00 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D04 | 38 9F 02 B4 */	addi r4, r31, 0x2b4
/* 81344D08 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344D0C | 38 C0 00 00 */	li r6, 0x0
/* 81344D10 | 38 E0 00 00 */	li r7, 0x0
/* 81344D14 | 48 02 57 CD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D18 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D1C | 38 9F 02 D7 */	addi r4, r31, 0x2d7
/* 81344D20 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344D24 | 38 C0 00 00 */	li r6, 0x0
/* 81344D28 | 38 E0 00 00 */	li r7, 0x0
/* 81344D2C | 48 02 57 B5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D30 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D34 | 38 9F 02 FC */	addi r4, r31, 0x2fc
/* 81344D38 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344D3C | 38 C0 00 00 */	li r6, 0x0
/* 81344D40 | 38 E0 00 00 */	li r7, 0x0
/* 81344D44 | 48 02 57 9D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D48 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D4C | 38 9F 03 22 */	addi r4, r31, 0x322
/* 81344D50 | 38 BF 01 84 */	addi r5, r31, 0x184
/* 81344D54 | 38 C0 00 00 */	li r6, 0x0
/* 81344D58 | 38 E0 00 00 */	li r7, 0x0
/* 81344D5C | 48 02 57 85 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D60 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D64 | 38 9F 02 D7 */	addi r4, r31, 0x2d7
/* 81344D68 | 38 BF 02 60 */	addi r5, r31, 0x260
/* 81344D6C | 38 C0 00 00 */	li r6, 0x0
/* 81344D70 | 38 E0 00 00 */	li r7, 0x0
/* 81344D74 | 48 02 57 6D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D78 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D7C | 38 9F 02 FC */	addi r4, r31, 0x2fc
/* 81344D80 | 38 BF 02 60 */	addi r5, r31, 0x260
/* 81344D84 | 38 C0 00 00 */	li r6, 0x0
/* 81344D88 | 38 E0 00 00 */	li r7, 0x0
/* 81344D8C | 48 02 57 55 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344D90 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344D94 | 38 9F 03 22 */	addi r4, r31, 0x322
/* 81344D98 | 38 BF 02 6C */	addi r5, r31, 0x26c
/* 81344D9C | 38 C0 00 00 */	li r6, 0x0
/* 81344DA0 | 38 E0 00 00 */	li r7, 0x0
/* 81344DA4 | 48 02 57 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344DA8 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344DAC | 38 9F 02 D7 */	addi r4, r31, 0x2d7
/* 81344DB0 | 38 BF 03 48 */	addi r5, r31, 0x348
/* 81344DB4 | 38 C0 00 00 */	li r6, 0x0
/* 81344DB8 | 38 E0 00 00 */	li r7, 0x0
/* 81344DBC | 48 02 57 25 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344DC0 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344DC4 | 38 9F 02 FC */	addi r4, r31, 0x2fc
/* 81344DC8 | 38 BF 03 48 */	addi r5, r31, 0x348
/* 81344DCC | 38 C0 00 00 */	li r6, 0x0
/* 81344DD0 | 38 E0 00 00 */	li r7, 0x0
/* 81344DD4 | 48 02 57 0D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344DD8 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344DDC | 38 9F 03 22 */	addi r4, r31, 0x322
/* 81344DE0 | 38 BF 03 54 */	addi r5, r31, 0x354
/* 81344DE4 | 38 C0 00 00 */	li r6, 0x0
/* 81344DE8 | 38 E0 00 00 */	li r7, 0x0
/* 81344DEC | 48 02 56 F5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344DF0 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344DF4 | 48 02 58 41 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81344DF8 | 7F A4 EB 78 */	mr r4, r29
/* 81344DFC | 38 60 00 34 */	li r3, 0x34
/* 81344E00 | 38 A0 00 04 */	li r5, 0x4
/* 81344E04 | 48 2B 32 AD */	bl __nw__FUlPQ23EGG4Heapi
/* 81344E08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344E0C | 41 82 00 20 */	beq .L_81344E2C
/* 81344E10 | 80 BC 00 68 */	lwz r5, 0x68(r28)
/* 81344E14 | 7F C7 F3 78 */	mr r7, r30
/* 81344E18 | 38 80 00 00 */	li r4, 0x0
/* 81344E1C | 38 C0 00 00 */	li r6, 0x0
/* 81344E20 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 81344E24 | 39 00 00 00 */	li r8, 0x0
/* 81344E28 | 48 00 02 49 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_81344E2C:
/* 81344E2C | 90 7C 00 6C */	stw r3, 0x6c(r28)
/* 81344E30 | 80 9C 00 68 */	lwz r4, 0x68(r28)
/* 81344E34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344E38 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81344E3C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81344E40 | 7D 89 03 A6 */	mtctr r12
/* 81344E44 | 4E 80 04 21 */	bctrl
/* 81344E48 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 81344E4C | 38 80 00 00 */	li r4, 0x0
/* 81344E50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344E54 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81344E58 | 7D 89 03 A6 */	mtctr r12
/* 81344E5C | 4E 80 04 21 */	bctrl
/* 81344E60 | 3B 5F 00 00 */	addi r26, r31, 0x0
/* 81344E64 | 3B 20 00 00 */	li r25, 0x0
/* 81344E68 | 3B 60 00 00 */	li r27, 0x0
.L_81344E6C:
/* 81344E6C | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81344E70 | 38 A0 00 01 */	li r5, 0x1
/* 81344E74 | 7C 9A D8 2E */	lwzx r4, r26, r27
/* 81344E78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81344E7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344E80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81344E84 | 7D 89 03 A6 */	mtctr r12
/* 81344E88 | 4E 80 04 21 */	bctrl
/* 81344E8C | 7C 64 1B 78 */	mr r4, r3
/* 81344E90 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 81344E94 | 38 A0 00 01 */	li r5, 0x1
/* 81344E98 | 48 02 63 35 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81344E9C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81344EA0 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81344EA4 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 81344EA8 | 40 81 FF C4 */	ble .L_81344E6C
/* 81344EAC | 7F A4 EB 78 */	mr r4, r29
/* 81344EB0 | 38 60 05 80 */	li r3, 0x580
/* 81344EB4 | 38 A0 00 04 */	li r5, 0x4
/* 81344EB8 | 48 2B 31 F9 */	bl __nw__FUlPQ23EGG4Heapi
/* 81344EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344EC0 | 41 82 00 18 */	beq .L_81344ED8
/* 81344EC4 | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 81344EC8 | 7F A4 EB 78 */	mr r4, r29
/* 81344ECC | 38 FF 03 61 */	addi r7, r31, 0x361
/* 81344ED0 | 38 CD 81 05 */	li r6, lbl_81696145@sda21
/* 81344ED4 | 48 02 51 51 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81344ED8:
/* 81344ED8 | 90 7C 00 70 */	stw r3, 0x70(r28)
/* 81344EDC | 38 9F 03 79 */	addi r4, r31, 0x379
/* 81344EE0 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344EE4 | 38 C0 00 00 */	li r6, 0x0
/* 81344EE8 | 38 E0 00 01 */	li r7, 0x1
/* 81344EEC | 48 02 55 F5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344EF0 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344EF4 | 38 9F 03 9A */	addi r4, r31, 0x39a
/* 81344EF8 | 38 AD 81 09 */	li r5, lbl_81696149@sda21
/* 81344EFC | 38 C0 00 00 */	li r6, 0x0
/* 81344F00 | 38 E0 00 00 */	li r7, 0x0
/* 81344F04 | 48 02 55 DD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F08 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F0C | 38 9F 03 BC */	addi r4, r31, 0x3bc
/* 81344F10 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344F14 | 38 C0 00 00 */	li r6, 0x0
/* 81344F18 | 38 E0 00 00 */	li r7, 0x0
/* 81344F1C | 48 02 55 C5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F20 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F24 | 38 9F 03 E0 */	addi r4, r31, 0x3e0
/* 81344F28 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 81344F2C | 38 C0 00 00 */	li r6, 0x0
/* 81344F30 | 38 E0 00 00 */	li r7, 0x0
/* 81344F34 | 48 02 55 AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F38 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F3C | 38 9F 04 05 */	addi r4, r31, 0x405
/* 81344F40 | 38 BF 01 84 */	addi r5, r31, 0x184
/* 81344F44 | 38 C0 00 00 */	li r6, 0x0
/* 81344F48 | 38 E0 00 00 */	li r7, 0x0
/* 81344F4C | 48 02 55 95 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F50 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F54 | 38 9F 03 BC */	addi r4, r31, 0x3bc
/* 81344F58 | 38 BF 02 60 */	addi r5, r31, 0x260
/* 81344F5C | 38 C0 00 00 */	li r6, 0x0
/* 81344F60 | 38 E0 00 00 */	li r7, 0x0
/* 81344F64 | 48 02 55 7D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F68 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F6C | 38 9F 03 E0 */	addi r4, r31, 0x3e0
/* 81344F70 | 38 BF 02 60 */	addi r5, r31, 0x260
/* 81344F74 | 38 C0 00 00 */	li r6, 0x0
/* 81344F78 | 38 E0 00 00 */	li r7, 0x0
/* 81344F7C | 48 02 55 65 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F80 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F84 | 38 9F 04 05 */	addi r4, r31, 0x405
/* 81344F88 | 38 BF 02 6C */	addi r5, r31, 0x26c
/* 81344F8C | 38 C0 00 00 */	li r6, 0x0
/* 81344F90 | 38 E0 00 00 */	li r7, 0x0
/* 81344F94 | 48 02 55 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81344F98 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81344F9C | 48 02 56 99 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81344FA0 | 7F A4 EB 78 */	mr r4, r29
/* 81344FA4 | 38 60 00 34 */	li r3, 0x34
/* 81344FA8 | 38 A0 00 04 */	li r5, 0x4
/* 81344FAC | 48 2B 31 05 */	bl __nw__FUlPQ23EGG4Heapi
/* 81344FB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81344FB4 | 41 82 00 20 */	beq .L_81344FD4
/* 81344FB8 | 80 BC 00 70 */	lwz r5, 0x70(r28)
/* 81344FBC | 7F C7 F3 78 */	mr r7, r30
/* 81344FC0 | 38 80 00 00 */	li r4, 0x0
/* 81344FC4 | 38 C0 00 00 */	li r6, 0x0
/* 81344FC8 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 81344FCC | 39 00 00 00 */	li r8, 0x0
/* 81344FD0 | 48 00 00 A1 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_81344FD4:
/* 81344FD4 | 90 7C 00 74 */	stw r3, 0x74(r28)
/* 81344FD8 | 80 9C 00 70 */	lwz r4, 0x70(r28)
/* 81344FDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344FE0 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81344FE4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81344FE8 | 7D 89 03 A6 */	mtctr r12
/* 81344FEC | 4E 80 04 21 */	bctrl
/* 81344FF0 | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 81344FF4 | 38 80 00 00 */	li r4, 0x0
/* 81344FF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344FFC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81345000 | 7D 89 03 A6 */	mtctr r12
/* 81345004 | 4E 80 04 21 */	bctrl
/* 81345008 | 3B 7F 00 00 */	addi r27, r31, 0x0
/* 8134500C | 3B 20 00 00 */	li r25, 0x0
/* 81345010 | 3B A0 00 00 */	li r29, 0x0
.L_81345014:
/* 81345014 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 81345018 | 38 A0 00 01 */	li r5, 0x1
/* 8134501C | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 81345020 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345024 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345028 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8134502C | 7D 89 03 A6 */	mtctr r12
/* 81345030 | 4E 80 04 21 */	bctrl
/* 81345034 | 7C 64 1B 78 */	mr r4, r3
/* 81345038 | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 8134503C | 38 A0 00 01 */	li r5, 0x1
/* 81345040 | 48 02 61 8D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81345044 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81345048 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8134504C | 2C 19 00 01 */	cmpwi r25, 0x1
/* 81345050 | 40 81 FF C4 */	ble .L_81345014
/* 81345054 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81345058 | 7F 83 E3 78 */	mr r3, r28
/* 8134505C | 48 2B 44 A9 */	bl _restgpr_25
/* 81345060 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81345064 | 7C 08 03 A6 */	mtlr r0
/* 81345068 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8134506C | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl12DialogWindowFPQ23EGG4Heap

# .text:0x858 | 0x81345070 | size: 0xB0
# ipl::gui::PaneManager::PaneManager(gui::EventHandler*, const nw4r::lyt::DrawInfo*, EGG::Heap*, EGG::Allocator*, bool)
.fn __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb, global
/* 81345070 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81345074 | 7C 08 02 A6 */	mflr r0
/* 81345078 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134507C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81345080 | 48 2B 44 45 */	bl _savegpr_28
/* 81345084 | 3D 20 81 64 */	lis r9, __vt__Q23gui7Manager@ha
/* 81345088 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8134508C | 39 29 27 E0 */	addi r9, r9, __vt__Q23gui7Manager@l
/* 81345090 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81345094 | 7C 7C 1B 78 */	mr r28, r3
/* 81345098 | 7C BD 2B 78 */	mr r29, r5
/* 8134509C | 91 23 00 00 */	stw r9, 0x0(r3)
/* 813450A0 | 7C DE 33 78 */	mr r30, r6
/* 813450A4 | 7D 1F 43 78 */	mr r31, r8
/* 813450A8 | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 813450AC | 41 82 00 1C */	beq .L_813450C8
/* 813450B0 | 7C 83 23 78 */	mr r3, r4
/* 813450B4 | 7F 84 E3 78 */	mr r4, r28
/* 813450B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813450BC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813450C0 | 7D 89 03 A6 */	mtctr r12
/* 813450C4 | 4E 80 04 21 */	bctrl
.L_813450C8:
/* 813450C8 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 813450CC | 38 80 00 08 */	li r4, 0x8
/* 813450D0 | 48 1C CF 8D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813450D4 | 3C 80 81 64 */	lis r4, __vt__Q23gui11PaneManager@ha
/* 813450D8 | 93 BC 00 24 */	stw r29, 0x24(r28)
/* 813450DC | 38 84 27 84 */	addi r4, r4, __vt__Q23gui11PaneManager@l
/* 813450E0 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 813450E4 | 90 9C 00 00 */	stw r4, 0x0(r28)
/* 813450E8 | 38 80 00 08 */	li r4, 0x8
/* 813450EC | 48 1C CF 71 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813450F0 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813450F4 | 93 DC 00 2C */	stw r30, 0x2c(r28)
/* 813450F8 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813450FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81345100 | 90 9C 00 00 */	stw r4, 0x0(r28)
/* 81345104 | 7F 83 E3 78 */	mr r3, r28
/* 81345108 | 9B FC 00 30 */	stb r31, 0x30(r28)
/* 8134510C | 48 2B 44 05 */	bl _restgpr_28
/* 81345110 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81345114 | 7C 08 03 A6 */	mtlr r0
/* 81345118 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134511C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb

# .text:0x908 | 0x81345120 | size: 0x40
# gui::Interface::~Interface()
.fn __dt__Q23gui9InterfaceFv, global
/* 81345120 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81345124 | 7C 08 02 A6 */	mflr r0
/* 81345128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134512C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345130 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345134 | 7C 7F 1B 78 */	mr r31, r3
/* 81345138 | 41 82 00 10 */	beq .L_81345148
/* 8134513C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81345140 | 40 81 00 08 */	ble .L_81345148
/* 81345144 | 48 2B 2F A1 */	bl __dl__FPv
.L_81345148:
/* 81345148 | 7F E3 FB 78 */	mr r3, r31
/* 8134514C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345150 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81345154 | 7C 08 03 A6 */	mtlr r0
/* 81345158 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134515C | 4E 80 00 20 */	blr
.endfn __dt__Q23gui9InterfaceFv

# .text:0x948 | 0x81345160 | size: 0x8
# gui::EventHandler::setManager(gui::Manager*)
.fn setManager__Q23gui12EventHandlerFPQ23gui7Manager, global
/* 81345160 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81345164 | 4E 80 00 20 */	blr
.endfn setManager__Q23gui12EventHandlerFPQ23gui7Manager

# .text:0x950 | 0x81345168 | size: 0x104
# ipl::DialogWindow::init()
.fn init__Q23ipl12DialogWindowFv, global
/* 81345168 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134516C | 7C 08 02 A6 */	mflr r0
/* 81345170 | 38 C0 00 00 */	li r6, 0x0
/* 81345174 | 38 80 00 00 */	li r4, 0x0
/* 81345178 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134517C | 38 00 00 03 */	li r0, 0x3
/* 81345180 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345184 | 7C 7F 1B 78 */	mr r31, r3
/* 81345188 | 7C 09 03 A6 */	mtctr r0
.L_8134518C:
/* 8134518C | 7C A3 22 14 */	add r5, r3, r4
/* 81345190 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81345194 | 90 C5 00 14 */	stw r6, 0x14(r5)
/* 81345198 | 42 00 FF F4 */	bdnz .L_8134518C
/* 8134519C | 80 A3 00 78 */	lwz r5, 0x78(r3)
/* 813451A0 | 38 00 00 00 */	li r0, 0x0
/* 813451A4 | 38 80 FF FF */	li r4, -0x1
/* 813451A8 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 813451AC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813451B0 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813451B4 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 813451B8 | 98 03 00 35 */	stb r0, 0x35(r3)
/* 813451BC | 98 03 00 36 */	stb r0, 0x36(r3)
/* 813451C0 | 98 03 00 37 */	stb r0, 0x37(r3)
/* 813451C4 | 98 03 00 38 */	stb r0, 0x38(r3)
/* 813451C8 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 813451CC | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813451D0 | 41 82 00 88 */	beq .L_81345258
/* 813451D4 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813451D8 | 38 80 00 02 */	li r4, 0x2
/* 813451DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813451E0 | 48 1C D1 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813451E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813451E8 | 41 82 00 1C */	beq .L_81345204
/* 813451EC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813451F0 | 38 80 00 02 */	li r4, 0x2
/* 813451F4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813451F8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813451FC | 48 1C D1 1D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345200 | 48 02 4A 25 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_81345204:
/* 81345204 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345208 | 38 80 00 05 */	li r4, 0x5
/* 8134520C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345210 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345214 | 48 1C D1 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345218 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134521C | 41 82 00 1C */	beq .L_81345238
/* 81345220 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345224 | 38 80 00 05 */	li r4, 0x5
/* 81345228 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134522C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345230 | 48 1C D0 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345234 | 48 02 49 F1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_81345238:
/* 81345238 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8134523C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81345240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81345244 | 41 82 00 14 */	beq .L_81345258
/* 81345248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8134524C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81345250 | 7D 89 03 A6 */	mtctr r12
/* 81345254 | 4E 80 04 21 */	bctrl
.L_81345258:
/* 81345258 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134525C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345260 | 7C 08 03 A6 */	mtlr r0
/* 81345264 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81345268 | 4E 80 00 20 */	blr
.endfn init__Q23ipl12DialogWindowFv

# .text:0xA54 | 0x8134526C | size: 0xA8
# ipl::DialogWindow::calc()
.fn calc__Q23ipl12DialogWindowFv, global
/* 8134526C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81345270 | 7C 08 02 A6 */	mflr r0
/* 81345274 | 38 80 00 00 */	li r4, 0x0
/* 81345278 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134527C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345280 | 7C 7F 1B 78 */	mr r31, r3
/* 81345284 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81345288 | 98 83 00 34 */	stb r4, 0x34(r3)
/* 8134528C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81345290 | 41 82 00 48 */	beq .L_813452D8
/* 81345294 | 40 80 00 1C */	bge .L_813452B0
/* 81345298 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8134529C | 41 82 00 2C */	beq .L_813452C8
/* 813452A0 | 40 80 00 30 */	bge .L_813452D0
/* 813452A4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813452A8 | 40 80 00 18 */	bge .L_813452C0
/* 813452AC | 48 00 00 40 */	b .L_813452EC
.L_813452B0:
/* 813452B0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813452B4 | 41 82 00 34 */	beq .L_813452E8
/* 813452B8 | 40 80 00 34 */	bge .L_813452EC
/* 813452BC | 48 00 00 24 */	b .L_813452E0
.L_813452C0:
/* 813452C0 | 48 00 00 55 */	bl stt_fadein__Q23ipl12DialogWindowFv
/* 813452C4 | 48 00 00 28 */	b .L_813452EC
.L_813452C8:
/* 813452C8 | 48 00 00 9D */	bl stt_normal__Q23ipl12DialogWindowFv
/* 813452CC | 48 00 00 20 */	b .L_813452EC
.L_813452D0:
/* 813452D0 | 48 00 02 95 */	bl stt_select__Q23ipl12DialogWindowFv
/* 813452D4 | 48 00 00 18 */	b .L_813452EC
.L_813452D8:
/* 813452D8 | 48 00 03 81 */	bl stt_fadeout__Q23ipl12DialogWindowFv
/* 813452DC | 48 00 00 10 */	b .L_813452EC
.L_813452E0:
/* 813452E0 | 48 00 05 A1 */	bl iplDialogWindow_81345880
/* 813452E4 | 48 00 00 08 */	b .L_813452EC
.L_813452E8:
/* 813452E8 | 48 00 04 91 */	bl iplDialogWindow_81345778
.L_813452EC:
/* 813452EC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813452F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813452F4 | 41 82 00 0C */	beq .L_81345300
/* 813452F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813452FC | 48 02 54 09 */	bl calc__Q33ipl6layout6ObjectFv
.L_81345300:
/* 81345300 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81345304 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345308 | 7C 08 03 A6 */	mtlr r0
/* 8134530C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81345310 | 4E 80 00 20 */	blr
.endfn calc__Q23ipl12DialogWindowFv

# .text:0xAFC | 0x81345314 | size: 0x50
# ipl::DialogWindow::stt_fadein()
.fn stt_fadein__Q23ipl12DialogWindowFv, global
/* 81345314 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81345318 | 7C 08 02 A6 */	mflr r0
/* 8134531C | 38 80 00 00 */	li r4, 0x0
/* 81345320 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345324 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345328 | 7C 7F 1B 78 */	mr r31, r3
/* 8134532C | 80 A3 00 78 */	lwz r5, 0x78(r3)
/* 81345330 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81345334 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345338 | 48 1C CF E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8134533C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81345340 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81345344 | 41 82 00 0C */	beq .L_81345350
/* 81345348 | 38 00 00 02 */	li r0, 0x2
/* 8134534C | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81345350:
/* 81345350 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81345354 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345358 | 7C 08 03 A6 */	mtlr r0
/* 8134535C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81345360 | 4E 80 00 20 */	blr
.endfn stt_fadein__Q23ipl12DialogWindowFv

# .text:0xB4C | 0x81345364 | size: 0x200
# ipl::DialogWindow::stt_normal()
.fn stt_normal__Q23ipl12DialogWindowFv, global
/* 81345364 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81345368 | 7C 08 02 A6 */	mflr r0
/* 8134536C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81345370 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81345374 | 48 2B 41 55 */	bl _savegpr_29
/* 81345378 | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 8134537C | 7C 7F 1B 78 */	mr r31, r3
/* 81345380 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81345384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81345388 | 41 82 00 08 */	beq .L_81345390
/* 8134538C | 48 02 5C 01 */	bl update__Q33ipl3gui11PaneManagerFv
.L_81345390:
/* 81345390 | 88 1F 00 35 */	lbz r0, 0x35(r31)
/* 81345394 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345398 | 41 82 00 60 */	beq .L_813453F8
/* 8134539C | 3B C0 00 01 */	li r30, 0x1
/* 813453A0 | 38 00 00 06 */	li r0, 0x6
/* 813453A4 | 9B DF 00 34 */	stb r30, 0x34(r31)
/* 813453A8 | 38 80 00 01 */	li r4, 0x1
/* 813453AC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813453B0 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 813453B4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813453B8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813453BC | 48 1C CF 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813453C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813453C4 | 48 01 D4 AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813453C8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813453CC | 88 1F 00 37 */	lbz r0, 0x37(r31)
/* 813453D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813453D4 | 41 82 00 18 */	beq .L_813453EC
/* 813453D8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813453DC | 3C 80 81 63 */	lis r4, lbl_8163593A@ha
/* 813453E0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813453E4 | 38 84 59 3A */	addi r4, r4, lbl_8163593A@l
/* 813453E8 | 48 02 60 85 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813453EC:
/* 813453EC | 38 00 00 04 */	li r0, 0x4
/* 813453F0 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 813453F4 | 48 00 01 58 */	b .L_8134554C
.L_813453F8:
/* 813453F8 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 813453FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345400 | 40 82 01 4C */	bne .L_8134554C
/* 81345404 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 81345408 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8134540C | 41 82 00 74 */	beq .L_81345480
/* 81345410 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81345414 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81345418 | 7C 00 20 40 */	cmplw r0, r4
/* 8134541C | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 81345420 | 40 81 00 60 */	ble .L_81345480
/* 81345424 | 3B C0 00 01 */	li r30, 0x1
/* 81345428 | 38 00 00 00 */	li r0, 0x0
/* 8134542C | 9B DF 00 34 */	stb r30, 0x34(r31)
/* 81345430 | 38 80 00 01 */	li r4, 0x1
/* 81345434 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345438 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 8134543C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345440 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345444 | 48 1C CE D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345448 | 7C 7D 1B 78 */	mr r29, r3
/* 8134544C | 48 01 D4 25 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81345450 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81345454 | 88 1F 00 37 */	lbz r0, 0x37(r31)
/* 81345458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134545C | 41 82 00 18 */	beq .L_81345474
/* 81345460 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81345464 | 3C 80 81 63 */	lis r4, lbl_8163593A@ha
/* 81345468 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8134546C | 38 84 59 3A */	addi r4, r4, lbl_8163593A@l
/* 81345470 | 48 02 5F FD */	bl startSE__Q33ipl3snd6SystemFPCc
.L_81345474:
/* 81345474 | 38 00 00 04 */	li r0, 0x4
/* 81345478 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8134547C | 48 00 00 D0 */	b .L_8134554C
.L_81345480:
/* 81345480 | 88 1F 00 38 */	lbz r0, 0x38(r31)
/* 81345484 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345488 | 41 82 00 C4 */	beq .L_8134554C
/* 8134548C | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 81345490 | 80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 81345494 | 7C 04 18 00 */	cmpw r4, r3
/* 81345498 | 40 80 00 18 */	bge .L_813454B0
/* 8134549C | 38 04 00 02 */	addi r0, r4, 0x2
/* 813454A0 | 7C 00 18 00 */	cmpw r0, r3
/* 813454A4 | 90 1F 00 40 */	stw r0, 0x40(r31)
/* 813454A8 | 40 81 00 08 */	ble .L_813454B0
/* 813454AC | 90 7F 00 40 */	stw r3, 0x40(r31)
.L_813454B0:
/* 813454B0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813454B4 | 38 80 00 03 */	li r4, 0x3
/* 813454B8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813454BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813454C0 | 48 1C CE 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813454C4 | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 813454C8 | 3C 00 43 30 */	lis r0, 0x4330
/* 813454CC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813454D0 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 813454D4 | C8 22 81 10 */	lfd f1, lbl_81694510@sda21(r0)
/* 813454D8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813454DC | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813454E0 | EC 20 08 28 */	fsubs f1, f0, f1
/* 813454E4 | 48 02 47 7D */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813454E8 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813454EC | 2C 00 00 64 */	cmpwi r0, 0x64
/* 813454F0 | 40 82 00 5C */	bne .L_8134554C
/* 813454F4 | 3B C0 00 01 */	li r30, 0x1
/* 813454F8 | 38 00 00 07 */	li r0, 0x7
/* 813454FC | 9B DF 00 34 */	stb r30, 0x34(r31)
/* 81345500 | 38 80 00 01 */	li r4, 0x1
/* 81345504 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345508 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 8134550C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345510 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345514 | 48 1C CE 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345518 | 7C 7D 1B 78 */	mr r29, r3
/* 8134551C | 48 01 D3 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81345520 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81345524 | 88 1F 00 37 */	lbz r0, 0x37(r31)
/* 81345528 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134552C | 41 82 00 18 */	beq .L_81345544
/* 81345530 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81345534 | 3C 80 81 63 */	lis r4, lbl_8163593A@ha
/* 81345538 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8134553C | 38 84 59 3A */	addi r4, r4, lbl_8163593A@l
/* 81345540 | 48 02 5F 2D */	bl startSE__Q33ipl3snd6SystemFPCc
.L_81345544:
/* 81345544 | 38 00 00 04 */	li r0, 0x4
/* 81345548 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_8134554C:
/* 8134554C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81345550 | 48 2B 3F C5 */	bl _restgpr_29
/* 81345554 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81345558 | 7C 08 03 A6 */	mtlr r0
/* 8134555C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81345560 | 4E 80 00 20 */	blr
.endfn stt_normal__Q23ipl12DialogWindowFv

# .text:0xD4C | 0x81345564 | size: 0xF4
# ipl::DialogWindow::stt_select()
.fn stt_select__Q23ipl12DialogWindowFv, global
/* 81345564 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81345568 | 7C 08 02 A6 */	mflr r0
/* 8134556C | 38 80 FF FF */	li r4, -0x1
/* 81345570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345578 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8134557C | 7C 7E 1B 78 */	mr r30, r3
/* 81345580 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81345584 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81345588 | 40 82 00 44 */	bne .L_813455CC
/* 8134558C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81345590 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81345594 | 41 82 00 28 */	beq .L_813455BC
/* 81345598 | 40 80 00 10 */	bge .L_813455A8
/* 8134559C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813455A0 | 40 80 00 14 */	bge .L_813455B4
/* 813455A4 | 48 00 00 50 */	b .L_813455F4
.L_813455A8:
/* 813455A8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813455AC | 40 80 00 48 */	bge .L_813455F4
/* 813455B0 | 48 00 00 14 */	b .L_813455C4
.L_813455B4:
/* 813455B4 | 38 80 00 07 */	li r4, 0x7
/* 813455B8 | 48 00 00 3C */	b .L_813455F4
.L_813455BC:
/* 813455BC | 38 80 00 04 */	li r4, 0x4
/* 813455C0 | 48 00 00 34 */	b .L_813455F4
.L_813455C4:
/* 813455C4 | 38 80 00 0A */	li r4, 0xa
/* 813455C8 | 48 00 00 2C */	b .L_813455F4
.L_813455CC:
/* 813455CC | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 813455D0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813455D4 | 41 82 00 1C */	beq .L_813455F0
/* 813455D8 | 40 80 00 1C */	bge .L_813455F4
/* 813455DC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813455E0 | 40 80 00 08 */	bge .L_813455E8
/* 813455E4 | 48 00 00 10 */	b .L_813455F4
.L_813455E8:
/* 813455E8 | 38 80 00 04 */	li r4, 0x4
/* 813455EC | 48 00 00 08 */	b .L_813455F4
.L_813455F0:
/* 813455F0 | 38 80 00 07 */	li r4, 0x7
.L_813455F4:
/* 813455F4 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813455F8 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813455FC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345600 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345604 | 48 1C CD 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345608 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8134560C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81345610 | 41 82 00 30 */	beq .L_81345640
/* 81345614 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 81345618 | 38 80 00 01 */	li r4, 0x1
/* 8134561C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345620 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345624 | 48 1C CC F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345628 | 7C 7F 1B 78 */	mr r31, r3
/* 8134562C | 48 01 D2 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81345630 | 38 60 00 01 */	li r3, 0x1
/* 81345634 | 38 00 00 04 */	li r0, 0x4
/* 81345638 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8134563C | 90 1E 00 0C */	stw r0, 0xc(r30)
.L_81345640:
/* 81345640 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81345644 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345648 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8134564C | 7C 08 03 A6 */	mtlr r0
/* 81345650 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81345654 | 4E 80 00 20 */	blr
.endfn stt_select__Q23ipl12DialogWindowFv

# .text:0xE40 | 0x81345658 | size: 0x94
# ipl::DialogWindow::stt_fadeout()
.fn stt_fadeout__Q23ipl12DialogWindowFv, global
/* 81345658 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134565C | 7C 08 02 A6 */	mflr r0
/* 81345660 | 38 80 00 01 */	li r4, 0x1
/* 81345664 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345668 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134566C | 7C 7F 1B 78 */	mr r31, r3
/* 81345670 | 80 A3 00 78 */	lwz r5, 0x78(r3)
/* 81345674 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81345678 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8134567C | 48 1C CC 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345680 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81345684 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81345688 | 41 82 00 50 */	beq .L_813456D8
/* 8134568C | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 81345690 | 38 00 FF FF */	li r0, -0x1
/* 81345694 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345698 | 90 9F 00 24 */	stw r4, 0x24(r31)
/* 8134569C | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 813456A0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813456A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813456A8 | 41 82 00 18 */	beq .L_813456C0
/* 813456AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813456B0 | 38 80 00 00 */	li r4, 0x0
/* 813456B4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813456B8 | 7D 89 03 A6 */	mtctr r12
/* 813456BC | 4E 80 04 21 */	bctrl
.L_813456C0:
/* 813456C0 | 38 60 00 00 */	li r3, 0x0
/* 813456C4 | 38 00 FF FF */	li r0, -0x1
/* 813456C8 | 90 7F 00 78 */	stw r3, 0x78(r31)
/* 813456CC | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 813456D0 | 90 1F 00 8C */	stw r0, 0x8c(r31)
/* 813456D4 | 90 7F 00 90 */	stw r3, 0x90(r31)
.L_813456D8:
/* 813456D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813456DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813456E0 | 7C 08 03 A6 */	mtlr r0
/* 813456E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813456E8 | 4E 80 00 20 */	blr
.endfn stt_fadeout__Q23ipl12DialogWindowFv

# .text:0xED4 | 0x813456EC | size: 0x2C
# gui::Manager::setEventHandler(gui::EventHandler*)
.fn setEventHandler__Q23gui7ManagerFPQ23gui12EventHandler, global
/* 813456EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813456F0 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813456F4 | 7C 60 1B 78 */	mr r0, r3
/* 813456F8 | 4D 82 00 20 */	beqlr
/* 813456FC | 7C 83 23 78 */	mr r3, r4
/* 81345700 | 7C 04 03 78 */	mr r4, r0
/* 81345704 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345708 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8134570C | 7D 89 03 A6 */	mtctr r12
/* 81345710 | 4E 80 04 20 */	bctr
/* 81345714 | 4E 80 00 20 */	blr
.endfn setEventHandler__Q23gui7ManagerFPQ23gui12EventHandler

# .text:0xF00 | 0x81345718 | size: 0x60
.fn iplDialogWindow_81345718, local
/* 81345718 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134571C | 7C 08 02 A6 */	mflr r0
/* 81345720 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81345724 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81345728 | 48 2B 3D 9D */	bl _savegpr_28
/* 8134572C | 83 E4 00 14 */	lwz r31, 0x14(r4)
/* 81345730 | 7C 7C 1B 78 */	mr r28, r3
/* 81345734 | 7C BD 2B 78 */	mr r29, r5
/* 81345738 | 3B C4 00 14 */	addi r30, r4, 0x14
/* 8134573C | 48 00 00 1C */	b .L_81345758
.L_81345740:
/* 81345740 | 9B BF 00 C9 */	stb r29, 0xc9(r31)
/* 81345744 | 38 9F FF FC */	subi r4, r31, 0x4
/* 81345748 | 7F 83 E3 78 */	mr r3, r28
/* 8134574C | 7F A5 EB 78 */	mr r5, r29
/* 81345750 | 4B FF FF C9 */	bl iplDialogWindow_81345718
/* 81345754 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81345758:
/* 81345758 | 7C 1F F0 40 */	cmplw r31, r30
/* 8134575C | 40 82 FF E4 */	bne .L_81345740
/* 81345760 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81345764 | 48 2B 3D AD */	bl _restgpr_28
/* 81345768 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134576C | 7C 08 03 A6 */	mtlr r0
/* 81345770 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81345774 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81345718

# .text:0xF60 | 0x81345778 | size: 0x108
.fn iplDialogWindow_81345778, local
/* 81345778 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134577C | 7C 08 02 A6 */	mflr r0
/* 81345780 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345784 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345788 | 7C 7F 1B 78 */	mr r31, r3
/* 8134578C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81345790 | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 81345794 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81345798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134579C | 41 82 00 08 */	beq .L_813457A4
/* 813457A0 | 48 02 57 ED */	bl update__Q33ipl3gui11PaneManagerFv
.L_813457A4:
/* 813457A4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813457A8 | 38 80 00 04 */	li r4, 0x4
/* 813457AC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813457B0 | 48 02 53 21 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813457B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813457B8 | 40 82 00 B0 */	bne .L_81345868
/* 813457BC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813457C0 | 38 80 00 07 */	li r4, 0x7
/* 813457C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813457C8 | 48 02 53 09 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813457CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813457D0 | 40 82 00 98 */	bne .L_81345868
/* 813457D4 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 813457D8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813457DC | 40 82 00 54 */	bne .L_81345830
/* 813457E0 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 813457E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813457E8 | 41 82 00 78 */	beq .L_81345860
/* 813457EC | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 813457F0 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813457F4 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 813457F8 | 7C 63 02 14 */	add r3, r3, r0
/* 813457FC | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81345800 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345804 | 41 82 00 5C */	beq .L_81345860
/* 81345808 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8134580C | 38 80 00 05 */	li r4, 0x5
/* 81345810 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345814 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345818 | 48 1C CB 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8134581C | 7C 7E 1B 78 */	mr r30, r3
/* 81345820 | 48 01 D0 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81345824 | 38 00 00 01 */	li r0, 0x1
/* 81345828 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8134582C | 48 00 00 34 */	b .L_81345860
.L_81345830:
/* 81345830 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81345834 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345838 | 41 82 00 28 */	beq .L_81345860
/* 8134583C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345840 | 38 80 00 02 */	li r4, 0x2
/* 81345844 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345848 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8134584C | 48 1C CA CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345850 | 7C 7E 1B 78 */	mr r30, r3
/* 81345854 | 48 01 D0 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81345858 | 38 00 00 01 */	li r0, 0x1
/* 8134585C | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_81345860:
/* 81345860 | 38 00 00 05 */	li r0, 0x5
/* 81345864 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81345868:
/* 81345868 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134586C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345870 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81345874 | 7C 08 03 A6 */	mtlr r0
/* 81345878 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134587C | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81345778

# .text:0x1068 | 0x81345880 | size: 0x5E4
.fn iplDialogWindow_81345880, local
/* 81345880 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81345884 | 7C 08 02 A6 */	mflr r0
/* 81345888 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8134588C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81345890 | 7C 7F 1B 78 */	mr r31, r3
/* 81345894 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81345898 | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 8134589C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813458A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813458A4 | 41 82 00 08 */	beq .L_813458AC
/* 813458A8 | 48 02 56 E5 */	bl update__Q33ipl3gui11PaneManagerFv
.L_813458AC:
/* 813458AC | 80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 813458B0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813458B4 | 41 82 02 9C */	beq .L_81345B50
/* 813458B8 | 40 80 05 94 */	bge .L_81345E4C
/* 813458BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813458C0 | 40 80 00 08 */	bge .L_813458C8
/* 813458C4 | 48 00 05 88 */	b .L_81345E4C
.L_813458C8:
/* 813458C8 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813458CC | 80 1F 00 48 */	lwz r0, 0x48(r31)
/* 813458D0 | 7C 03 02 14 */	add r0, r3, r0
/* 813458D4 | 2C 00 00 FF */	cmpwi r0, 0xff
/* 813458D8 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 813458DC | 40 81 00 0C */	ble .L_813458E8
/* 813458E0 | 38 00 00 FF */	li r0, 0xff
/* 813458E4 | 90 1F 00 44 */	stw r0, 0x44(r31)
.L_813458E8:
/* 813458E8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813458EC | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 813458F0 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 813458F4 | 38 A0 00 01 */	li r5, 0x1
/* 813458F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813458FC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345900 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345904 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345908 | 7D 89 03 A6 */	mtctr r12
/* 8134590C | 4E 80 04 21 */	bctrl
/* 81345910 | 48 00 05 55 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81345914 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345918 | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 8134591C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 81345920 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345924 | 80 DF 00 88 */	lwz r6, 0x88(r31)
/* 81345928 | 1C A3 00 1C */	mulli r5, r3, 0x1c
/* 8134592C | 38 66 00 0C */	addi r3, r6, 0xc
/* 81345930 | 1C 80 00 1C */	mulli r4, r0, 0x1c
/* 81345934 | 7C 03 28 AE */	lbzx r0, r3, r5
/* 81345938 | 7C 63 20 AE */	lbzx r3, r3, r4
/* 8134593C | 7C 03 00 40 */	cmplw r3, r0
/* 81345940 | 41 82 00 D4 */	beq .L_81345A14
/* 81345944 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81345948 | 40 82 00 CC */	bne .L_81345A14
/* 8134594C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345950 | 38 8D 81 2E */	li r4, lbl_8169616E@sda21
/* 81345954 | 38 A0 00 01 */	li r5, 0x1
/* 81345958 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134595C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345964 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345968 | 7D 89 03 A6 */	mtctr r12
/* 8134596C | 4E 80 04 21 */	bctrl
/* 81345970 | 80 DF 00 78 */	lwz r6, 0x78(r31)
/* 81345974 | 7C 7E 1B 78 */	mr r30, r3
/* 81345978 | 3C 80 81 63 */	lis r4, lbl_81635957@ha
/* 8134597C | 38 A0 00 01 */	li r5, 0x1
/* 81345980 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 81345984 | 38 84 59 57 */	addi r4, r4, lbl_81635957@l
/* 81345988 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8134598C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345990 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345994 | 7D 89 03 A6 */	mtctr r12
/* 81345998 | 4E 80 04 21 */	bctrl
/* 8134599C | 88 1E 00 CF */	lbz r0, 0xcf(r30)
/* 813459A0 | 7C 64 1B 78 */	mr r4, r3
/* 813459A4 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813459A8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813459AC | 98 1E 00 CF */	stb r0, 0xcf(r30)
/* 813459B0 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 813459B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813459B8 | 41 82 00 40 */	beq .L_813459F8
/* 813459BC | 7F E3 FB 78 */	mr r3, r31
/* 813459C0 | 54 05 06 3E */	clrlwi r5, r0, 24
/* 813459C4 | 4B FF FD 55 */	bl iplDialogWindow_81345718
/* 813459C8 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 813459CC | 2C 00 00 FF */	cmpwi r0, 0xff
/* 813459D0 | 40 82 00 84 */	bne .L_81345A54
/* 813459D4 | 38 00 00 00 */	li r0, 0x0
/* 813459D8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813459DC | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 813459E0 | 38 80 00 05 */	li r4, 0x5
/* 813459E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813459E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813459EC | 48 1C C9 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813459F0 | 48 02 42 35 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813459F4 | 48 00 00 60 */	b .L_81345A54
.L_813459F8:
/* 813459F8 | 7F E3 FB 78 */	mr r3, r31
/* 813459FC | 38 A0 00 FF */	li r5, 0xff
/* 81345A00 | 4B FF FD 19 */	bl iplDialogWindow_81345718
/* 81345A04 | 7F C3 F3 78 */	mr r3, r30
/* 81345A08 | 38 80 00 00 */	li r4, 0x0
/* 81345A0C | 4B FF EA 09 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81345A10 | 48 00 00 44 */	b .L_81345A54
.L_81345A14:
/* 81345A14 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81345A18 | 7C 66 20 2E */	lwzx r3, r6, r4
/* 81345A1C | 7C 06 28 2E */	lwzx r0, r6, r5
/* 81345A20 | 7C 03 00 40 */	cmplw r3, r0
/* 81345A24 | 41 82 00 30 */	beq .L_81345A54
/* 81345A28 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345A2C | 38 8D 81 35 */	li r4, lbl_81696175@sda21
/* 81345A30 | 38 A0 00 01 */	li r5, 0x1
/* 81345A34 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345A38 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345A3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345A40 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345A44 | 7D 89 03 A6 */	mtctr r12
/* 81345A48 | 4E 80 04 21 */	bctrl
/* 81345A4C | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345A50 | 98 03 00 CD */	stb r0, 0xcd(r3)
.L_81345A54:
/* 81345A54 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 81345A58 | 80 1F 00 94 */	lwz r0, 0x94(r31)
/* 81345A5C | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345A60 | 1C 63 00 1C */	mulli r3, r3, 0x1c
/* 81345A64 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81345A68 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345A6C | 7C 64 18 2E */	lwzx r3, r4, r3
/* 81345A70 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81345A74 | 7C 03 00 40 */	cmplw r3, r0
/* 81345A78 | 41 82 00 30 */	beq .L_81345AA8
/* 81345A7C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345A80 | 38 8D 81 3C */	li r4, lbl_8169617C@sda21
/* 81345A84 | 38 A0 00 01 */	li r5, 0x1
/* 81345A88 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345A8C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345A90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345A94 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345A98 | 7D 89 03 A6 */	mtctr r12
/* 81345A9C | 4E 80 04 21 */	bctrl
/* 81345AA0 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345AA4 | 98 03 00 CD */	stb r0, 0xcd(r3)
.L_81345AA8:
/* 81345AA8 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 81345AAC | 80 1F 00 94 */	lwz r0, 0x94(r31)
/* 81345AB0 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345AB4 | 1C 63 00 1C */	mulli r3, r3, 0x1c
/* 81345AB8 | 38 84 00 10 */	addi r4, r4, 0x10
/* 81345ABC | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345AC0 | 7C A4 18 2E */	lwzx r5, r4, r3
/* 81345AC4 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81345AC8 | 7C 05 00 40 */	cmplw r5, r0
/* 81345ACC | 41 82 00 68 */	beq .L_81345B34
/* 81345AD0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81345AD4 | 41 82 00 60 */	beq .L_81345B34
/* 81345AD8 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345ADC | 7F E3 FB 78 */	mr r3, r31
/* 81345AE0 | 80 85 00 14 */	lwz r4, 0x14(r5)
/* 81345AE4 | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81345AE8 | 4B FF FC 31 */	bl iplDialogWindow_81345718
/* 81345AEC | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345AF0 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 81345AF4 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345AF8 | 7C 63 02 14 */	add r3, r3, r0
/* 81345AFC | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 81345B00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345B04 | 41 82 00 30 */	beq .L_81345B34
/* 81345B08 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345B0C | 2C 00 00 FF */	cmpwi r0, 0xff
/* 81345B10 | 40 82 00 24 */	bne .L_81345B34
/* 81345B14 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81345B18 | 38 80 00 00 */	li r4, 0x0
/* 81345B1C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345B20 | 48 1C C7 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345B24 | 7C 7E 1B 78 */	mr r30, r3
/* 81345B28 | 48 01 CD 49 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81345B2C | 38 00 00 01 */	li r0, 0x1
/* 81345B30 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_81345B34:
/* 81345B34 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345B38 | 2C 00 00 FF */	cmpwi r0, 0xff
/* 81345B3C | 40 82 03 10 */	bne .L_81345E4C
/* 81345B40 | 38 00 00 02 */	li r0, 0x2
/* 81345B44 | 90 1F 00 4C */	stw r0, 0x4c(r31)
/* 81345B48 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81345B4C | 48 00 03 00 */	b .L_81345E4C
.L_81345B50:
/* 81345B50 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 81345B54 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345B58 | 7C 03 00 51 */	subf. r0, r3, r0
/* 81345B5C | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 81345B60 | 40 80 00 0C */	bge .L_81345B6C
/* 81345B64 | 38 00 00 00 */	li r0, 0x0
/* 81345B68 | 90 1F 00 44 */	stw r0, 0x44(r31)
.L_81345B6C:
/* 81345B6C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345B70 | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 81345B74 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 81345B78 | 38 A0 00 01 */	li r5, 0x1
/* 81345B7C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345B80 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345B84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345B88 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345B8C | 7D 89 03 A6 */	mtctr r12
/* 81345B90 | 4E 80 04 21 */	bctrl
/* 81345B94 | 48 00 02 D1 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81345B98 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345B9C | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 81345BA0 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 81345BA4 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345BA8 | 80 FF 00 88 */	lwz r7, 0x88(r31)
/* 81345BAC | 1C 83 00 1C */	mulli r4, r3, 0x1c
/* 81345BB0 | 38 67 00 0C */	addi r3, r7, 0xc
/* 81345BB4 | 1C C0 00 1C */	mulli r6, r0, 0x1c
/* 81345BB8 | 7C A3 20 AE */	lbzx r5, r3, r4
/* 81345BBC | 7C 03 30 AE */	lbzx r0, r3, r6
/* 81345BC0 | 7C 00 28 40 */	cmplw r0, r5
/* 81345BC4 | 41 82 00 E4 */	beq .L_81345CA8
/* 81345BC8 | 28 05 00 01 */	cmplwi r5, 0x1
/* 81345BCC | 40 82 00 DC */	bne .L_81345CA8
/* 81345BD0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345BD4 | 38 8D 81 2E */	li r4, lbl_8169616E@sda21
/* 81345BD8 | 38 A0 00 01 */	li r5, 0x1
/* 81345BDC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345BE0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345BE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345BE8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345BEC | 7D 89 03 A6 */	mtctr r12
/* 81345BF0 | 4E 80 04 21 */	bctrl
/* 81345BF4 | 80 DF 00 78 */	lwz r6, 0x78(r31)
/* 81345BF8 | 7C 7E 1B 78 */	mr r30, r3
/* 81345BFC | 3C 80 81 63 */	lis r4, lbl_81635957@ha
/* 81345C00 | 38 A0 00 01 */	li r5, 0x1
/* 81345C04 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 81345C08 | 38 84 59 57 */	addi r4, r4, lbl_81635957@l
/* 81345C0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345C10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345C14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345C18 | 7D 89 03 A6 */	mtctr r12
/* 81345C1C | 4E 80 04 21 */	bctrl
/* 81345C20 | 80 BF 00 44 */	lwz r5, 0x44(r31)
/* 81345C24 | 3C 00 43 30 */	lis r0, 0x4330
/* 81345C28 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81345C2C | 7C 64 1B 78 */	mr r4, r3
/* 81345C30 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 81345C34 | C8 42 81 10 */	lfd f2, lbl_81694510@sda21(r0)
/* 81345C38 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81345C3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81345C40 | C0 02 81 18 */	lfs f0, lbl_81694518@sda21(r0)
/* 81345C44 | C8 21 00 18 */	lfd f1, 0x18(r1)
/* 81345C48 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81345C4C | EC 01 00 24 */	fdivs f0, f1, f0
/* 81345C50 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81345C54 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81345C58 | 41 82 00 14 */	beq .L_81345C6C
/* 81345C5C | 7F E3 FB 78 */	mr r3, r31
/* 81345C60 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 81345C64 | 4B FF FA B5 */	bl iplDialogWindow_81345718
/* 81345C68 | 48 00 00 80 */	b .L_81345CE8
.L_81345C6C:
/* 81345C6C | 7F E3 FB 78 */	mr r3, r31
/* 81345C70 | 38 A0 00 FF */	li r5, 0xff
/* 81345C74 | 4B FF FA A5 */	bl iplDialogWindow_81345718
/* 81345C78 | 7F C3 F3 78 */	mr r3, r30
/* 81345C7C | 38 80 00 00 */	li r4, 0x0
/* 81345C80 | 4B FF E7 95 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81345C84 | 38 00 00 00 */	li r0, 0x0
/* 81345C88 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345C8C | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 81345C90 | 38 80 00 05 */	li r4, 0x5
/* 81345C94 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345C98 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81345C9C | 48 1C C6 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345CA0 | 48 02 3F 85 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81345CA4 | 48 00 00 44 */	b .L_81345CE8
.L_81345CA8:
/* 81345CA8 | 38 A7 00 08 */	addi r5, r7, 0x8
/* 81345CAC | 7C 65 30 2E */	lwzx r3, r5, r6
/* 81345CB0 | 7C 05 20 2E */	lwzx r0, r5, r4
/* 81345CB4 | 7C 03 00 40 */	cmplw r3, r0
/* 81345CB8 | 41 82 00 30 */	beq .L_81345CE8
/* 81345CBC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345CC0 | 38 8D 81 35 */	li r4, lbl_81696175@sda21
/* 81345CC4 | 38 A0 00 01 */	li r5, 0x1
/* 81345CC8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345CCC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345CD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345CD4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345CD8 | 7D 89 03 A6 */	mtctr r12
/* 81345CDC | 4E 80 04 21 */	bctrl
/* 81345CE0 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345CE4 | 98 03 00 CD */	stb r0, 0xcd(r3)
.L_81345CE8:
/* 81345CE8 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 81345CEC | 80 1F 00 94 */	lwz r0, 0x94(r31)
/* 81345CF0 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345CF4 | 1C 63 00 1C */	mulli r3, r3, 0x1c
/* 81345CF8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81345CFC | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345D00 | 7C 64 18 2E */	lwzx r3, r4, r3
/* 81345D04 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81345D08 | 7C 03 00 40 */	cmplw r3, r0
/* 81345D0C | 41 82 00 30 */	beq .L_81345D3C
/* 81345D10 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345D14 | 38 8D 81 3C */	li r4, lbl_8169617C@sda21
/* 81345D18 | 38 A0 00 01 */	li r5, 0x1
/* 81345D1C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345D20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345D24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345D28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345D2C | 7D 89 03 A6 */	mtctr r12
/* 81345D30 | 4E 80 04 21 */	bctrl
/* 81345D34 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345D38 | 98 03 00 CD */	stb r0, 0xcd(r3)
.L_81345D3C:
/* 81345D3C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 81345D40 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345D44 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345D48 | 1C A3 00 1C */	mulli r5, r3, 0x1c
/* 81345D4C | 38 64 00 10 */	addi r3, r4, 0x10
/* 81345D50 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345D54 | 7C C3 28 2E */	lwzx r6, r3, r5
/* 81345D58 | 7C 03 00 2E */	lwzx r0, r3, r0
/* 81345D5C | 7C 00 30 40 */	cmplw r0, r6
/* 81345D60 | 41 82 00 60 */	beq .L_81345DC0
/* 81345D64 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81345D68 | 41 82 00 58 */	beq .L_81345DC0
/* 81345D6C | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345D70 | 83 C6 00 14 */	lwz r30, 0x14(r6)
/* 81345D74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345D78 | 41 82 00 18 */	beq .L_81345D90
/* 81345D7C | 7F E3 FB 78 */	mr r3, r31
/* 81345D80 | 7F C4 F3 78 */	mr r4, r30
/* 81345D84 | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81345D88 | 4B FF F9 91 */	bl iplDialogWindow_81345718
/* 81345D8C | 48 00 00 34 */	b .L_81345DC0
.L_81345D90:
/* 81345D90 | 7C 64 2A 14 */	add r3, r4, r5
/* 81345D94 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 81345D98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345D9C | 41 82 00 14 */	beq .L_81345DB0
/* 81345DA0 | 38 66 02 8C */	addi r3, r6, 0x28c
/* 81345DA4 | 38 80 00 00 */	li r4, 0x0
/* 81345DA8 | 48 1C C5 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81345DAC | 48 02 3E 79 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_81345DB0:
/* 81345DB0 | 7F E3 FB 78 */	mr r3, r31
/* 81345DB4 | 7F C4 F3 78 */	mr r4, r30
/* 81345DB8 | 38 A0 00 FF */	li r5, 0xff
/* 81345DBC | 4B FF F9 5D */	bl iplDialogWindow_81345718
.L_81345DC0:
/* 81345DC0 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345DC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345DC8 | 40 82 00 84 */	bne .L_81345E4C
/* 81345DCC | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345DD0 | 38 60 00 00 */	li r3, 0x0
/* 81345DD4 | 90 7F 00 4C */	stw r3, 0x4c(r31)
/* 81345DD8 | 7F E3 FB 78 */	mr r3, r31
/* 81345DDC | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345DE0 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345DE4 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81345DE8 | 48 00 02 6D */	bl set_message__Q23ipl12DialogWindowFUl
/* 81345DEC | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345DF0 | 7F E3 FB 78 */	mr r3, r31
/* 81345DF4 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345DF8 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345DFC | 7C 84 02 14 */	add r4, r4, r0
/* 81345E00 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81345E04 | 48 00 02 BD */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81345E08 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345E0C | 7F E3 FB 78 */	mr r3, r31
/* 81345E10 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81345E14 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345E18 | 7C 84 02 14 */	add r4, r4, r0
/* 81345E1C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81345E20 | 48 00 02 F9 */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 81345E24 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81345E28 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 81345E2C | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81345E30 | C0 02 81 1C */	lfs f0, lbl_8169451C@sda21(r0)
/* 81345E34 | 7C 63 02 14 */	add r3, r3, r0
/* 81345E38 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81345E3C | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 81345E40 | D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 81345E44 | C0 03 00 14 */	lfs f0, 0x14(r3)
/* 81345E48 | D0 1F 00 84 */	stfs f0, 0x84(r31)
.L_81345E4C:
/* 81345E4C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81345E50 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81345E54 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81345E58 | 7C 08 03 A6 */	mtlr r0
/* 81345E5C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81345E60 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81345880

# .text:0x164C | 0x81345E64 | size: 0x7C
# nw4r::lyt::TextBox* nw4r::ut::DynamicCast<nw4r::lyt::TextBox*, nw4r::lyt::Pane>(nw4r::lyt::Pane*)
.fn "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox", global
/* 81345E64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81345E68 | 7C 08 02 A6 */	mflr r0
/* 81345E6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345E70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81345E74 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 81345E78 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81345E7C | 7C 7E 1B 78 */	mr r30, r3
/* 81345E80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345E84 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81345E88 | 7D 89 03 A6 */	mtctr r12
/* 81345E8C | 4E 80 04 21 */	bctrl
/* 81345E90 | 48 00 00 18 */	b .L_81345EA8
.L_81345E94:
/* 81345E94 | 7C 03 F8 40 */	cmplw r3, r31
/* 81345E98 | 40 82 00 0C */	bne .L_81345EA4
/* 81345E9C | 38 00 00 01 */	li r0, 0x1
/* 81345EA0 | 48 00 00 14 */	b .L_81345EB4
.L_81345EA4:
/* 81345EA4 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81345EA8:
/* 81345EA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81345EAC | 40 82 FF E8 */	bne .L_81345E94
/* 81345EB0 | 38 00 00 00 */	li r0, 0x0
.L_81345EB4:
/* 81345EB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345EB8 | 41 82 00 0C */	beq .L_81345EC4
/* 81345EBC | 7F C3 F3 78 */	mr r3, r30
/* 81345EC0 | 48 00 00 08 */	b .L_81345EC8
.L_81345EC4:
/* 81345EC4 | 38 60 00 00 */	li r3, 0x0
.L_81345EC8:
/* 81345EC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81345ECC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81345ED0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81345ED4 | 7C 08 03 A6 */	mtlr r0
/* 81345ED8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81345EDC | 4E 80 00 20 */	blr
.endfn "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"

# .text:0x16C8 | 0x81345EE0 | size: 0x8
# nw4r::lyt::Pane::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q34nw4r3lyt4PaneCFv, global
/* 81345EE0 | 38 6D AF 60 */	li r3, lbl_81698FA0@sda21
/* 81345EE4 | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q34nw4r3lyt4PaneCFv

# .text:0x16D0 | 0x81345EE8 | size: 0x108
# ipl::DialogWindow::draw()
.fn draw__Q23ipl12DialogWindowFv, global
/* 81345EE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81345EEC | 7C 08 02 A6 */	mflr r0
/* 81345EF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81345EF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81345EF8 | 7C 7F 1B 78 */	mr r31, r3
/* 81345EFC | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 81345F00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345F04 | 41 82 00 D8 */	beq .L_81345FDC
/* 81345F08 | 38 60 00 00 */	li r3, 0x0
/* 81345F0C | 48 01 CB C1 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 81345F10 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345F14 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345F18 | 48 02 48 85 */	bl draw__Q33ipl6layout6ObjectFv
/* 81345F1C | 80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 81345F20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345F24 | 41 82 00 B8 */	beq .L_81345FDC
/* 81345F28 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81345F2C | 3C 80 81 63 */	lis r4, lbl_81635962@ha
/* 81345F30 | 38 84 59 62 */	addi r4, r4, lbl_81635962@l
/* 81345F34 | 38 A0 00 01 */	li r5, 0x1
/* 81345F38 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81345F3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81345F40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345F44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81345F48 | 7D 89 03 A6 */	mtctr r12
/* 81345F4C | 4E 80 04 21 */	bctrl
/* 81345F50 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 81345F54 | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 81345F58 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81345F5C | C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 81345F60 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81345F64 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81345F68 | 80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 81345F6C | EC 41 00 2A */	fadds f2, f1, f0
/* 81345F70 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 81345F74 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81345F78 | C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 81345F7C | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 81345F80 | EC 21 00 2A */	fadds f1, f1, f0
/* 81345F84 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81345F88 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 81345F8C | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81345F90 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81345F94 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81345F98 | 80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 81345F9C | D0 41 00 08 */	stfs f2, 0x8(r1)
/* 81345FA0 | 38 64 00 04 */	addi r3, r4, 0x4
/* 81345FA4 | 38 84 02 98 */	addi r4, r4, 0x298
/* 81345FA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81345FAC | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81345FB0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81345FB4 | 7D 89 03 A6 */	mtctr r12
/* 81345FB8 | 4E 80 04 21 */	bctrl
/* 81345FBC | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 81345FC0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81345FC4 | 40 82 00 10 */	bne .L_81345FD4
/* 81345FC8 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 81345FCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81345FD0 | 41 82 00 0C */	beq .L_81345FDC
.L_81345FD4:
/* 81345FD4 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 81345FD8 | 48 02 47 C5 */	bl draw__Q33ipl6layout6ObjectFv
.L_81345FDC:
/* 81345FDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81345FE0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81345FE4 | 7C 08 03 A6 */	mtlr r0
/* 81345FE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81345FEC | 4E 80 00 20 */	blr
.endfn draw__Q23ipl12DialogWindowFv

# .text:0x17D8 | 0x81345FF0 | size: 0x64
# ipl::DialogWindow::set_text(const char*, const wchar_t*)
.fn set_text__Q23ipl12DialogWindowFPCcPCw, global
/* 81345FF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81345FF4 | 7C 08 02 A6 */	mflr r0
/* 81345FF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81345FFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81346000 | 7C BF 2B 78 */	mr r31, r5
/* 81346004 | 38 A0 00 01 */	li r5, 0x1
/* 81346008 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 8134600C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346010 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81346014 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346018 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8134601C | 7D 89 03 A6 */	mtctr r12
/* 81346020 | 4E 80 04 21 */	bctrl
/* 81346024 | 4B FF FE 41 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81346028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8134602C | 7F E4 FB 78 */	mr r4, r31
/* 81346030 | 38 A0 00 00 */	li r5, 0x0
/* 81346034 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81346038 | 7D 89 03 A6 */	mtctr r12
/* 8134603C | 4E 80 04 21 */	bctrl
/* 81346040 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81346044 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81346048 | 7C 08 03 A6 */	mtlr r0
/* 8134604C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81346050 | 4E 80 00 20 */	blr
.endfn set_text__Q23ipl12DialogWindowFPCcPCw

# .text:0x183C | 0x81346054 | size: 0x5C
# ipl::DialogWindow::set_message(unsigned long)
.fn set_message__Q23ipl12DialogWindowFUl, global
/* 81346054 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81346058 | 7C 08 02 A6 */	mflr r0
/* 8134605C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81346060 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81346064 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81346068 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134606C | 3F E0 81 63 */	lis r31, lbl_8163594E@ha
/* 81346070 | 3B FF 59 4E */	addi r31, r31, lbl_8163594E@l
/* 81346074 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81346078 | 7C 7E 1B 78 */	mr r30, r3
/* 8134607C | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 81346080 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346084 | 4B FF 87 39 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81346088 | 7C 65 1B 78 */	mr r5, r3
/* 8134608C | 7F C3 F3 78 */	mr r3, r30
/* 81346090 | 7F E4 FB 78 */	mr r4, r31
/* 81346094 | 4B FF FF 5D */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346098 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134609C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813460A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813460A4 | 7C 08 03 A6 */	mtlr r0
/* 813460A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813460AC | 4E 80 00 20 */	blr
.endfn set_message__Q23ipl12DialogWindowFUl

# .text:0x1898 | 0x813460B0 | size: 0x10
# ipl::DialogWindow::set_title(const wchar_t*)
.fn set_title__Q23ipl12DialogWindowFPCw, global
/* 813460B0 | 3C C0 81 63 */	lis r6, lbl_8163594E@ha
/* 813460B4 | 7C 85 23 78 */	mr r5, r4
/* 813460B8 | 38 86 59 4E */	addi r4, r6, lbl_8163594E@l
/* 813460BC | 4B FF FF 34 */	b set_text__Q23ipl12DialogWindowFPCcPCw
.endfn set_title__Q23ipl12DialogWindowFPCw

# .text:0x18A8 | 0x813460C0 | size: 0x58
# ipl::DialogWindow::set_rbtn_text(unsigned long)
.fn set_rbtn_text__Q23ipl12DialogWindowFUl, global
/* 813460C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813460C4 | 7C 08 02 A6 */	mflr r0
/* 813460C8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813460CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813460D0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813460D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813460D8 | 3B ED 81 3C */	li r31, lbl_8169617C@sda21
/* 813460DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813460E0 | 7C 7E 1B 78 */	mr r30, r3
/* 813460E4 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813460E8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813460EC | 4B FF 86 D1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813460F0 | 7C 65 1B 78 */	mr r5, r3
/* 813460F4 | 7F C3 F3 78 */	mr r3, r30
/* 813460F8 | 7F E4 FB 78 */	mr r4, r31
/* 813460FC | 4B FF FE F5 */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346100 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81346104 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81346108 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8134610C | 7C 08 03 A6 */	mtlr r0
/* 81346110 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81346114 | 4E 80 00 20 */	blr
.endfn set_rbtn_text__Q23ipl12DialogWindowFUl

# .text:0x1900 | 0x81346118 | size: 0x58
# ipl::DialogWindow::set_lbtn_text(unsigned long)
.fn set_lbtn_text__Q23ipl12DialogWindowFUl, global
/* 81346118 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134611C | 7C 08 02 A6 */	mflr r0
/* 81346120 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81346124 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81346128 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8134612C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81346130 | 3B ED 81 35 */	li r31, lbl_81696175@sda21
/* 81346134 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81346138 | 7C 7E 1B 78 */	mr r30, r3
/* 8134613C | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 81346140 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346144 | 4B FF 86 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81346148 | 7C 65 1B 78 */	mr r5, r3
/* 8134614C | 7F C3 F3 78 */	mr r3, r30
/* 81346150 | 7F E4 FB 78 */	mr r4, r31
/* 81346154 | 4B FF FE 9D */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346158 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134615C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81346160 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81346164 | 7C 08 03 A6 */	mtlr r0
/* 81346168 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134616C | 4E 80 00 20 */	blr
.endfn set_lbtn_text__Q23ipl12DialogWindowFUl

# .text:0x1958 | 0x81346170 | size: 0x58
# ipl::DialogWindow::set_tbtn_text(unsigned long)
.fn set_tbtn_text__Q23ipl12DialogWindowFUl, global
/* 81346170 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81346174 | 7C 08 02 A6 */	mflr r0
/* 81346178 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8134617C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81346180 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81346184 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81346188 | 3B ED 81 35 */	li r31, lbl_81696175@sda21
/* 8134618C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81346190 | 7C 7E 1B 78 */	mr r30, r3
/* 81346194 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 81346198 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134619C | 4B FF 86 21 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813461A0 | 7C 65 1B 78 */	mr r5, r3
/* 813461A4 | 7F C3 F3 78 */	mr r3, r30
/* 813461A8 | 7F E4 FB 78 */	mr r4, r31
/* 813461AC | 4B FF FE 45 */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 813461B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813461B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813461B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813461BC | 7C 08 03 A6 */	mtlr r0
/* 813461C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813461C4 | 4E 80 00 20 */	blr
.endfn set_tbtn_text__Q23ipl12DialogWindowFUl

# .text:0x19B0 | 0x813461C8 | size: 0x58
# ipl::DialogWindow::set_cbtn_text(unsigned long)
.fn set_cbtn_text__Q23ipl12DialogWindowFUl, global
/* 813461C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813461CC | 7C 08 02 A6 */	mflr r0
/* 813461D0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813461D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813461D8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813461DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813461E0 | 3B ED 81 3C */	li r31, lbl_8169617C@sda21
/* 813461E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813461E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813461EC | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813461F0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813461F4 | 4B FF 85 C9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813461F8 | 7C 65 1B 78 */	mr r5, r3
/* 813461FC | 7F C3 F3 78 */	mr r3, r30
/* 81346200 | 7F E4 FB 78 */	mr r4, r31
/* 81346204 | 4B FF FD ED */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346208 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134620C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81346210 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81346214 | 7C 08 03 A6 */	mtlr r0
/* 81346218 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134621C | 4E 80 00 20 */	blr
.endfn set_cbtn_text__Q23ipl12DialogWindowFUl

# .text:0x1A08 | 0x81346220 | size: 0x58
# ipl::DialogWindow::set_bbtn_text(unsigned long)
.fn set_bbtn_text__Q23ipl12DialogWindowFUl, global
/* 81346220 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81346224 | 7C 08 02 A6 */	mflr r0
/* 81346228 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8134622C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81346230 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81346234 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81346238 | 3B ED 81 43 */	li r31, lbl_81696183@sda21
/* 8134623C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81346240 | 7C 7E 1B 78 */	mr r30, r3
/* 81346244 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 81346248 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134624C | 4B FF 85 71 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81346250 | 7C 65 1B 78 */	mr r5, r3
/* 81346254 | 7F C3 F3 78 */	mr r3, r30
/* 81346258 | 7F E4 FB 78 */	mr r4, r31
/* 8134625C | 4B FF FD 95 */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346260 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81346264 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81346268 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8134626C | 7C 08 03 A6 */	mtlr r0
/* 81346270 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81346274 | 4E 80 00 20 */	blr
.endfn set_bbtn_text__Q23ipl12DialogWindowFUl

# .text:0x1A60 | 0x81346278 | size: 0x64
# ipl::DialogWindow::set_dialog_size(const nw4r::lyt::Size&)
.fn set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size, global
/* 81346278 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134627C | 7C 08 02 A6 */	mflr r0
/* 81346280 | 3C C0 81 63 */	lis r6, lbl_8163594E@ha
/* 81346284 | 38 A0 00 01 */	li r5, 0x1
/* 81346288 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134628C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81346290 | 7C 9F 23 78 */	mr r31, r4
/* 81346294 | 38 86 59 4E */	addi r4, r6, lbl_8163594E@l
/* 81346298 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 8134629C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813462A0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813462A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813462A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813462AC | 7D 89 03 A6 */	mtctr r12
/* 813462B0 | 4E 80 04 21 */	bctrl
/* 813462B4 | 4B FF FB B1 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813462B8 | C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 813462BC | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 813462C0 | D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 813462C4 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 813462C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813462CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813462D0 | 7C 08 03 A6 */	mtlr r0
/* 813462D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813462D8 | 4E 80 00 20 */	blr
.endfn set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size

# .text:0x1AC4 | 0x813462DC | size: 0x170
# ipl::DialogWindow::call(int)
.fn call__Q23ipl12DialogWindowFi, global
/* 813462DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813462E0 | 7C 08 02 A6 */	mflr r0
/* 813462E4 | 38 A0 00 00 */	li r5, 0x0
/* 813462E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813462EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813462F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813462F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813462F8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813462FC | 90 83 00 28 */	stw r4, 0x28(r3)
/* 81346300 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81346304 | 40 82 01 20 */	bne .L_81346424
/* 81346308 | 54 80 18 38 */	slwi r0, r4, 3
/* 8134630C | 7C 83 02 14 */	add r4, r3, r0
/* 81346310 | 38 04 00 50 */	addi r0, r4, 0x50
/* 81346314 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 81346318 | 4B FF EE 51 */	bl init__Q23ipl12DialogWindowFv
/* 8134631C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81346320 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81346324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346328 | 41 82 00 18 */	beq .L_81346340
/* 8134632C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346330 | 7F E4 FB 78 */	mr r4, r31
/* 81346334 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81346338 | 7D 89 03 A6 */	mtctr r12
/* 8134633C | 4E 80 04 21 */	bctrl
.L_81346340:
/* 81346340 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81346344 | 38 80 00 00 */	li r4, 0x0
/* 81346348 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134634C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81346350 | 48 1C BF C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81346354 | 7C 7E 1B 78 */	mr r30, r3
/* 81346358 | 48 01 C5 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8134635C | 38 60 00 01 */	li r3, 0x1
/* 81346360 | 38 C0 00 02 */	li r6, 0x2
/* 81346364 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 81346368 | 38 00 00 00 */	li r0, 0x0
/* 8134636C | 38 8D 81 4A */	li r4, lbl_8169618A@sda21
/* 81346370 | 38 A0 00 01 */	li r5, 0x1
/* 81346374 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 81346378 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8134637C | 90 DF 00 4C */	stw r6, 0x4c(r31)
/* 81346380 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 81346384 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346388 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8134638C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346390 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81346394 | 7D 89 03 A6 */	mtctr r12
/* 81346398 | 4E 80 04 21 */	bctrl
/* 8134639C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813463A0 | 41 82 00 2C */	beq .L_813463CC
/* 813463A4 | 88 1F 00 98 */	lbz r0, 0x98(r31)
/* 813463A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813463AC | 41 82 00 10 */	beq .L_813463BC
/* 813463B0 | 38 80 00 00 */	li r4, 0x0
/* 813463B4 | 4B FF E0 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813463B8 | 48 00 00 14 */	b .L_813463CC
.L_813463BC:
/* 813463BC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813463C0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813463C4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813463C8 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_813463CC:
/* 813463CC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813463D0 | 38 8D 81 2E */	li r4, lbl_8169616E@sda21
/* 813463D4 | 38 A0 00 01 */	li r5, 0x1
/* 813463D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813463DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813463E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813463E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813463E8 | 7D 89 03 A6 */	mtctr r12
/* 813463EC | 4E 80 04 21 */	bctrl
/* 813463F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813463F4 | 41 82 00 2C */	beq .L_81346420
/* 813463F8 | 88 1F 00 99 */	lbz r0, 0x99(r31)
/* 813463FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81346400 | 41 82 00 10 */	beq .L_81346410
/* 81346404 | 38 80 00 00 */	li r4, 0x0
/* 81346408 | 4B FF E0 0D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 8134640C | 48 00 00 14 */	b .L_81346420
.L_81346410:
/* 81346410 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81346414 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81346418 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8134641C | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_81346420:
/* 81346420 | 38 A0 00 01 */	li r5, 0x1
.L_81346424:
/* 81346424 | 38 00 00 00 */	li r0, 0x0
/* 81346428 | 7C A3 2B 78 */	mr r3, r5
/* 8134642C | 98 1F 00 98 */	stb r0, 0x98(r31)
/* 81346430 | 98 1F 00 99 */	stb r0, 0x99(r31)
/* 81346434 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81346438 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8134643C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81346440 | 7C 08 03 A6 */	mtlr r0
/* 81346444 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81346448 | 4E 80 00 20 */	blr
.endfn call__Q23ipl12DialogWindowFi

# .text:0x1C34 | 0x8134644C | size: 0x154
# ipl::DialogWindow::callBtn0(unsigned long, unsigned long, bool)
.fn callBtn0__Q23ipl12DialogWindowFUlUlb, global
/* 8134644C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346450 | 7C 08 02 A6 */	mflr r0
/* 81346454 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346458 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134645C | 48 2B 30 65 */	bl _savegpr_27
/* 81346460 | 7C 9C 23 78 */	mr r28, r4
/* 81346464 | 7C 7B 1B 78 */	mr r27, r3
/* 81346468 | 7C BD 2B 78 */	mr r29, r5
/* 8134646C | 7C DE 33 78 */	mr r30, r6
/* 81346470 | 3B E0 00 00 */	li r31, 0x0
/* 81346474 | 38 80 00 00 */	li r4, 0x0
/* 81346478 | 4B FF FE 65 */	bl call__Q23ipl12DialogWindowFi
/* 8134647C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346480 | 41 82 01 04 */	beq .L_81346584
/* 81346484 | 38 00 00 00 */	li r0, 0x0
/* 81346488 | 93 BB 00 30 */	stw r29, 0x30(r27)
/* 8134648C | 7F 63 DB 78 */	mr r3, r27
/* 81346490 | 7F 84 E3 78 */	mr r4, r28
/* 81346494 | 9B DB 00 37 */	stb r30, 0x37(r27)
/* 81346498 | 98 1B 00 38 */	stb r0, 0x38(r27)
/* 8134649C | 4B FF FB B9 */	bl set_message__Q23ipl12DialogWindowFUl
/* 813464A0 | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 813464A4 | 38 8D 81 27 */	li r4, lbl_81696167@sda21
/* 813464A8 | 38 A0 00 01 */	li r5, 0x1
/* 813464AC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813464B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813464B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813464B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813464BC | 7D 89 03 A6 */	mtctr r12
/* 813464C0 | 4E 80 04 21 */	bctrl
/* 813464C4 | 38 80 00 00 */	li r4, 0x0
/* 813464C8 | 4B FF DF 4D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813464CC | 88 1B 00 37 */	lbz r0, 0x37(r27)
/* 813464D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813464D4 | 41 82 00 6C */	beq .L_81346540
/* 813464D8 | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 813464DC | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 813464E0 | 38 A0 00 01 */	li r5, 0x1
/* 813464E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813464E8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813464EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813464F0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813464F4 | 7D 89 03 A6 */	mtctr r12
/* 813464F8 | 4E 80 04 21 */	bctrl
/* 813464FC | 38 80 00 01 */	li r4, 0x1
/* 81346500 | 4B FF DF 15 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81346504 | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 81346508 | 38 80 00 02 */	li r4, 0x2
/* 8134650C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346510 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81346514 | 48 1C BE 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81346518 | 7C 7F 1B 78 */	mr r31, r3
/* 8134651C | 48 01 C3 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81346520 | 38 00 00 01 */	li r0, 0x1
/* 81346524 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346528 | 3C 80 81 63 */	lis r4, lbl_8163596B@ha
/* 8134652C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81346530 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346534 | 38 84 59 6B */	addi r4, r4, lbl_8163596B@l
/* 81346538 | 48 02 4F 35 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8134653C | 48 00 00 44 */	b .L_81346580
.L_81346540:
/* 81346540 | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 81346544 | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 81346548 | 38 A0 00 01 */	li r5, 0x1
/* 8134654C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346550 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81346554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346558 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8134655C | 7D 89 03 A6 */	mtctr r12
/* 81346560 | 4E 80 04 21 */	bctrl
/* 81346564 | 38 80 00 00 */	li r4, 0x0
/* 81346568 | 4B FF DE AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 8134656C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346570 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346574 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346578 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 8134657C | 48 02 4E F1 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_81346580:
/* 81346580 | 3B E0 00 01 */	li r31, 0x1
.L_81346584:
/* 81346584 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346588 | 7F E3 FB 78 */	mr r3, r31
/* 8134658C | 48 2B 2F 81 */	bl _restgpr_27
/* 81346590 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346594 | 7C 08 03 A6 */	mtlr r0
/* 81346598 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134659C | 4E 80 00 20 */	blr
.endfn callBtn0__Q23ipl12DialogWindowFUlUlb

# .text:0x1D88 | 0x813465A0 | size: 0x158
# ipl::DialogWindow::callBtn0SDRelated(unsigned long, unsigned long, bool)
.fn callBtn0SDRelated__Q23ipl12DialogWindowFUlUlb, global
/* 813465A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813465A4 | 7C 08 02 A6 */	mflr r0
/* 813465A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813465AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813465B0 | 48 2B 2F 0D */	bl _savegpr_26
/* 813465B4 | 3B E0 00 01 */	li r31, 0x1
/* 813465B8 | 7C 9B 23 78 */	mr r27, r4
/* 813465BC | 9B E3 00 98 */	stb r31, 0x98(r3)
/* 813465C0 | 7C 7A 1B 78 */	mr r26, r3
/* 813465C4 | 7C BC 2B 78 */	mr r28, r5
/* 813465C8 | 7C DD 33 78 */	mr r29, r6
/* 813465CC | 3B C0 00 00 */	li r30, 0x0
/* 813465D0 | 38 80 00 00 */	li r4, 0x0
/* 813465D4 | 4B FF FD 09 */	bl call__Q23ipl12DialogWindowFi
/* 813465D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813465DC | 41 82 01 00 */	beq .L_813466DC
/* 813465E0 | 38 00 00 00 */	li r0, 0x0
/* 813465E4 | 93 9A 00 30 */	stw r28, 0x30(r26)
/* 813465E8 | 7F 43 D3 78 */	mr r3, r26
/* 813465EC | 7F 64 DB 78 */	mr r4, r27
/* 813465F0 | 9B BA 00 37 */	stb r29, 0x37(r26)
/* 813465F4 | 98 1A 00 38 */	stb r0, 0x38(r26)
/* 813465F8 | 4B FF FA 5D */	bl set_message__Q23ipl12DialogWindowFUl
/* 813465FC | 80 7A 00 78 */	lwz r3, 0x78(r26)
/* 81346600 | 38 8D 81 27 */	li r4, lbl_81696167@sda21
/* 81346604 | 38 A0 00 01 */	li r5, 0x1
/* 81346608 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134660C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81346610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346614 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81346618 | 7D 89 03 A6 */	mtctr r12
/* 8134661C | 4E 80 04 21 */	bctrl
/* 81346620 | 38 80 00 00 */	li r4, 0x0
/* 81346624 | 4B FF DD F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81346628 | 88 1A 00 37 */	lbz r0, 0x37(r26)
/* 8134662C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81346630 | 41 82 00 68 */	beq .L_81346698
/* 81346634 | 80 7A 00 78 */	lwz r3, 0x78(r26)
/* 81346638 | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 8134663C | 38 A0 00 01 */	li r5, 0x1
/* 81346640 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346644 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81346648 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8134664C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81346650 | 7D 89 03 A6 */	mtctr r12
/* 81346654 | 4E 80 04 21 */	bctrl
/* 81346658 | 38 80 00 01 */	li r4, 0x1
/* 8134665C | 4B FF DD B9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81346660 | 80 7A 00 78 */	lwz r3, 0x78(r26)
/* 81346664 | 38 80 00 02 */	li r4, 0x2
/* 81346668 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134666C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81346670 | 48 1C BC A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81346674 | 7C 7E 1B 78 */	mr r30, r3
/* 81346678 | 48 01 C1 F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8134667C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346680 | 3C 80 81 63 */	lis r4, lbl_8163596B@ha
/* 81346684 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81346688 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8134668C | 38 84 59 6B */	addi r4, r4, lbl_8163596B@l
/* 81346690 | 48 02 4D DD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346694 | 48 00 00 44 */	b .L_813466D8
.L_81346698:
/* 81346698 | 80 7A 00 78 */	lwz r3, 0x78(r26)
/* 8134669C | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 813466A0 | 38 A0 00 01 */	li r5, 0x1
/* 813466A4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813466A8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813466AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813466B0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813466B4 | 7D 89 03 A6 */	mtctr r12
/* 813466B8 | 4E 80 04 21 */	bctrl
/* 813466BC | 38 80 00 00 */	li r4, 0x0
/* 813466C0 | 4B FF DD 55 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813466C4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813466C8 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 813466CC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813466D0 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 813466D4 | 48 02 4D 99 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813466D8:
/* 813466D8 | 3B C0 00 01 */	li r30, 0x1
.L_813466DC:
/* 813466DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813466E0 | 7F C3 F3 78 */	mr r3, r30
/* 813466E4 | 48 2B 2E 25 */	bl _restgpr_26
/* 813466E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813466EC | 7C 08 03 A6 */	mtlr r0
/* 813466F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813466F4 | 4E 80 00 20 */	blr
.endfn callBtn0SDRelated__Q23ipl12DialogWindowFUlUlb

# .text:0x1EE0 | 0x813466F8 | size: 0x8C
# ipl::DialogWindow::callBtn1(unsigned long, unsigned long)
.fn callBtn1__Q23ipl12DialogWindowFUlUl, global
/* 813466F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813466FC | 7C 08 02 A6 */	mflr r0
/* 81346700 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346704 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346708 | 48 2B 2D BD */	bl _savegpr_28
/* 8134670C | 7C 9D 23 78 */	mr r29, r4
/* 81346710 | 7C 7C 1B 78 */	mr r28, r3
/* 81346714 | 7C BE 2B 78 */	mr r30, r5
/* 81346718 | 3B E0 00 00 */	li r31, 0x0
/* 8134671C | 38 80 00 01 */	li r4, 0x1
/* 81346720 | 4B FF FB BD */	bl call__Q23ipl12DialogWindowFi
/* 81346724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346728 | 41 82 00 40 */	beq .L_81346768
/* 8134672C | 7F 83 E3 78 */	mr r3, r28
/* 81346730 | 38 8D A6 80 */	li r4, lbl_816986C0@sda21
/* 81346734 | 4B FF FB 45 */	bl set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size
/* 81346738 | 7F 83 E3 78 */	mr r3, r28
/* 8134673C | 7F A4 EB 78 */	mr r4, r29
/* 81346740 | 4B FF F9 15 */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346744 | 7F 83 E3 78 */	mr r3, r28
/* 81346748 | 7F C4 F3 78 */	mr r4, r30
/* 8134674C | 4B FF F9 75 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346750 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346754 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346758 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8134675C | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346760 | 48 02 4D 0D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346764 | 3B E0 00 01 */	li r31, 0x1
.L_81346768:
/* 81346768 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134676C | 7F E3 FB 78 */	mr r3, r31
/* 81346770 | 48 2B 2D A1 */	bl _restgpr_28
/* 81346774 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346778 | 7C 08 03 A6 */	mtlr r0
/* 8134677C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346780 | 4E 80 00 20 */	blr
.endfn callBtn1__Q23ipl12DialogWindowFUlUl

# .text:0x1F6C | 0x81346784 | size: 0x94
# ipl::DialogWindow::callBtn1SDRelated(unsigned long, unsigned long)
.fn callBtn1SDRelated__Q23ipl12DialogWindowFUlUl, global
/* 81346784 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346788 | 7C 08 02 A6 */	mflr r0
/* 8134678C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346790 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346794 | 48 2B 2D 31 */	bl _savegpr_28
/* 81346798 | 38 00 00 01 */	li r0, 0x1
/* 8134679C | 7C 9D 23 78 */	mr r29, r4
/* 813467A0 | 98 03 00 98 */	stb r0, 0x98(r3)
/* 813467A4 | 7C 7C 1B 78 */	mr r28, r3
/* 813467A8 | 7C BE 2B 78 */	mr r30, r5
/* 813467AC | 3B E0 00 00 */	li r31, 0x0
/* 813467B0 | 38 80 00 01 */	li r4, 0x1
/* 813467B4 | 4B FF FB 29 */	bl call__Q23ipl12DialogWindowFi
/* 813467B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813467BC | 41 82 00 40 */	beq .L_813467FC
/* 813467C0 | 7F 83 E3 78 */	mr r3, r28
/* 813467C4 | 38 8D A6 80 */	li r4, lbl_816986C0@sda21
/* 813467C8 | 4B FF FA B1 */	bl set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size
/* 813467CC | 7F 83 E3 78 */	mr r3, r28
/* 813467D0 | 7F A4 EB 78 */	mr r4, r29
/* 813467D4 | 4B FF F8 81 */	bl set_message__Q23ipl12DialogWindowFUl
/* 813467D8 | 7F 83 E3 78 */	mr r3, r28
/* 813467DC | 7F C4 F3 78 */	mr r4, r30
/* 813467E0 | 4B FF F8 E1 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 813467E4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813467E8 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 813467EC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813467F0 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 813467F4 | 48 02 4C 79 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813467F8 | 3B E0 00 01 */	li r31, 0x1
.L_813467FC:
/* 813467FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346800 | 7F E3 FB 78 */	mr r3, r31
/* 81346804 | 48 2B 2D 0D */	bl _restgpr_28
/* 81346808 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134680C | 7C 08 03 A6 */	mtlr r0
/* 81346810 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346814 | 4E 80 00 20 */	blr
.endfn callBtn1SDRelated__Q23ipl12DialogWindowFUlUl

# .text:0x2000 | 0x81346818 | size: 0x8C
# ipl::DialogWindow::callBtn1Sml(unsigned long, unsigned long)
.fn callBtn1Sml__Q23ipl12DialogWindowFUlUl, global
/* 81346818 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134681C | 7C 08 02 A6 */	mflr r0
/* 81346820 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346824 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346828 | 48 2B 2C 9D */	bl _savegpr_28
/* 8134682C | 7C 9D 23 78 */	mr r29, r4
/* 81346830 | 7C 7C 1B 78 */	mr r28, r3
/* 81346834 | 7C BE 2B 78 */	mr r30, r5
/* 81346838 | 3B E0 00 00 */	li r31, 0x0
/* 8134683C | 38 80 00 01 */	li r4, 0x1
/* 81346840 | 4B FF FA 9D */	bl call__Q23ipl12DialogWindowFi
/* 81346844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346848 | 41 82 00 40 */	beq .L_81346888
/* 8134684C | 7F 83 E3 78 */	mr r3, r28
/* 81346850 | 38 8D A6 88 */	li r4, lbl_816986C8@sda21
/* 81346854 | 4B FF FA 25 */	bl set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size
/* 81346858 | 7F 83 E3 78 */	mr r3, r28
/* 8134685C | 7F A4 EB 78 */	mr r4, r29
/* 81346860 | 4B FF F7 F5 */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346864 | 7F 83 E3 78 */	mr r3, r28
/* 81346868 | 7F C4 F3 78 */	mr r4, r30
/* 8134686C | 4B FF F8 55 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346870 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346874 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346878 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8134687C | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346880 | 48 02 4B ED */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346884 | 3B E0 00 01 */	li r31, 0x1
.L_81346888:
/* 81346888 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134688C | 7F E3 FB 78 */	mr r3, r31
/* 81346890 | 48 2B 2C 81 */	bl _restgpr_28
/* 81346894 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346898 | 7C 08 03 A6 */	mtlr r0
/* 8134689C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813468A0 | 4E 80 00 20 */	blr
.endfn callBtn1Sml__Q23ipl12DialogWindowFUlUl

# .text:0x208C | 0x813468A4 | size: 0x94
# ipl::DialogWindow::callBtn1(const wchar_t*, unsigned long)
.fn callBtn1__Q23ipl12DialogWindowFPCwUl, global
/* 813468A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813468A8 | 7C 08 02 A6 */	mflr r0
/* 813468AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813468B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813468B4 | 48 2B 2C 11 */	bl _savegpr_28
/* 813468B8 | 7C 9D 23 78 */	mr r29, r4
/* 813468BC | 7C 7C 1B 78 */	mr r28, r3
/* 813468C0 | 7C BE 2B 78 */	mr r30, r5
/* 813468C4 | 3B E0 00 00 */	li r31, 0x0
/* 813468C8 | 38 80 00 01 */	li r4, 0x1
/* 813468CC | 4B FF FA 11 */	bl call__Q23ipl12DialogWindowFi
/* 813468D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813468D4 | 41 82 00 48 */	beq .L_8134691C
/* 813468D8 | 7F 83 E3 78 */	mr r3, r28
/* 813468DC | 38 8D A6 80 */	li r4, lbl_816986C0@sda21
/* 813468E0 | 4B FF F9 99 */	bl set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size
/* 813468E4 | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 813468E8 | 7F 83 E3 78 */	mr r3, r28
/* 813468EC | 7F A5 EB 78 */	mr r5, r29
/* 813468F0 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 813468F4 | 4B FF F6 FD */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 813468F8 | 7F 83 E3 78 */	mr r3, r28
/* 813468FC | 7F C4 F3 78 */	mr r4, r30
/* 81346900 | 4B FF F7 C1 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346904 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346908 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 8134690C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346910 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346914 | 48 02 4B 59 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346918 | 3B E0 00 01 */	li r31, 0x1
.L_8134691C:
/* 8134691C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346920 | 7F E3 FB 78 */	mr r3, r31
/* 81346924 | 48 2B 2B ED */	bl _restgpr_28
/* 81346928 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134692C | 7C 08 03 A6 */	mtlr r0
/* 81346930 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346934 | 4E 80 00 20 */	blr
.endfn callBtn1__Q23ipl12DialogWindowFPCwUl

# .text:0x2120 | 0x81346938 | size: 0xCC
.fn iplDialogWindow_81346938, global
/* 81346938 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134693C | 7C 08 02 A6 */	mflr r0
/* 81346940 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81346944 | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 81346948 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 8134694C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346950 | 48 2B 2B 75 */	bl _savegpr_28
/* 81346954 | FF E0 08 90 */	fmr f31, f1
/* 81346958 | 7C 9D 23 78 */	mr r29, r4
/* 8134695C | 7C 7C 1B 78 */	mr r28, r3
/* 81346960 | 7C BE 2B 78 */	mr r30, r5
/* 81346964 | 3B E0 00 00 */	li r31, 0x0
/* 81346968 | 38 80 00 01 */	li r4, 0x1
/* 8134696C | 4B FF F9 71 */	bl call__Q23ipl12DialogWindowFi
/* 81346970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346974 | 41 82 00 6C */	beq .L_813469E0
/* 81346978 | C0 22 81 20 */	lfs f1, lbl_81694520@sda21(r0)
/* 8134697C | 7F 83 E3 78 */	mr r3, r28
/* 81346980 | C0 02 81 28 */	lfs f0, lbl_81694528@sda21(r0)
/* 81346984 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81346988 | EC 21 07 F2 */	fmuls f1, f1, f31
/* 8134698C | C0 42 81 24 */	lfs f2, lbl_81694524@sda21(r0)
/* 81346990 | EC 00 07 F2 */	fmuls f0, f0, f31
/* 81346994 | EC 21 10 24 */	fdivs f1, f1, f2
/* 81346998 | EC 00 10 24 */	fdivs f0, f0, f2
/* 8134699C | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813469A0 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813469A4 | 4B FF F8 D5 */	bl set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size
/* 813469A8 | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 813469AC | 7F 83 E3 78 */	mr r3, r28
/* 813469B0 | 7F A5 EB 78 */	mr r5, r29
/* 813469B4 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 813469B8 | 4B FF F6 39 */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 813469BC | 7F 83 E3 78 */	mr r3, r28
/* 813469C0 | 7F C4 F3 78 */	mr r4, r30
/* 813469C4 | 4B FF F6 FD */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 813469C8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813469CC | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 813469D0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813469D4 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 813469D8 | 48 02 4A 95 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813469DC | 3B E0 00 01 */	li r31, 0x1
.L_813469E0:
/* 813469E0 | 7F E3 FB 78 */	mr r3, r31
/* 813469E4 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 813469E8 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 813469EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813469F0 | 48 2B 2B 21 */	bl _restgpr_28
/* 813469F4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813469F8 | 7C 08 03 A6 */	mtlr r0
/* 813469FC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81346A00 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81346938

# .text:0x21EC | 0x81346A04 | size: 0xC
.fn iplDialogWindow_81346A04, local
/* 81346A04 | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 81346A08 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 81346A0C | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81346A04

# .text:0x21F8 | 0x81346A10 | size: 0xC4
.fn iplDialogWindow_81346A10, global
/* 81346A10 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81346A14 | 7C 08 02 A6 */	mflr r0
/* 81346A18 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81346A1C | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 81346A20 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 81346A24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346A28 | 48 2B 2A 9D */	bl _savegpr_28
/* 81346A2C | FF E0 08 90 */	fmr f31, f1
/* 81346A30 | 7C 9D 23 78 */	mr r29, r4
/* 81346A34 | 7C 7C 1B 78 */	mr r28, r3
/* 81346A38 | 7C BE 2B 78 */	mr r30, r5
/* 81346A3C | 3B E0 00 00 */	li r31, 0x0
/* 81346A40 | 38 80 00 01 */	li r4, 0x1
/* 81346A44 | 4B FF F8 99 */	bl call__Q23ipl12DialogWindowFi
/* 81346A48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346A4C | 41 82 00 64 */	beq .L_81346AB0
/* 81346A50 | C0 22 81 20 */	lfs f1, lbl_81694520@sda21(r0)
/* 81346A54 | 7F 83 E3 78 */	mr r3, r28
/* 81346A58 | C0 02 81 28 */	lfs f0, lbl_81694528@sda21(r0)
/* 81346A5C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81346A60 | EC 21 07 F2 */	fmuls f1, f1, f31
/* 81346A64 | C0 42 81 24 */	lfs f2, lbl_81694524@sda21(r0)
/* 81346A68 | EC 00 07 F2 */	fmuls f0, f0, f31
/* 81346A6C | EC 21 10 24 */	fdivs f1, f1, f2
/* 81346A70 | EC 00 10 24 */	fdivs f0, f0, f2
/* 81346A74 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81346A78 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81346A7C | 4B FF F7 FD */	bl set_dialog_size__Q23ipl12DialogWindowFRCQ34nw4r3lyt4Size
/* 81346A80 | 7F 83 E3 78 */	mr r3, r28
/* 81346A84 | 7F A4 EB 78 */	mr r4, r29
/* 81346A88 | 4B FF F5 CD */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346A8C | 7F 83 E3 78 */	mr r3, r28
/* 81346A90 | 7F C4 F3 78 */	mr r4, r30
/* 81346A94 | 4B FF F6 2D */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346A98 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346A9C | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346AA0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346AA4 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346AA8 | 48 02 49 C5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346AAC | 3B E0 00 01 */	li r31, 0x1
.L_81346AB0:
/* 81346AB0 | 7F E3 FB 78 */	mr r3, r31
/* 81346AB4 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 81346AB8 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 81346ABC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346AC0 | 48 2B 2A 51 */	bl _restgpr_28
/* 81346AC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81346AC8 | 7C 08 03 A6 */	mtlr r0
/* 81346ACC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81346AD0 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81346A10

# .text:0x22BC | 0x81346AD4 | size: 0x98
# ipl::DialogWindow::callBtn2(unsigned long, unsigned long, unsigned long, bool)
.fn callBtn2__Q23ipl12DialogWindowFUlUlUlb, global
/* 81346AD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346AD8 | 7C 08 02 A6 */	mflr r0
/* 81346ADC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346AE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346AE4 | 48 2B 29 D9 */	bl _savegpr_26
/* 81346AE8 | 7C 9B 23 78 */	mr r27, r4
/* 81346AEC | 7C 7A 1B 78 */	mr r26, r3
/* 81346AF0 | 7C BC 2B 78 */	mr r28, r5
/* 81346AF4 | 7C DD 33 78 */	mr r29, r6
/* 81346AF8 | 7C FE 3B 78 */	mr r30, r7
/* 81346AFC | 3B E0 00 00 */	li r31, 0x0
/* 81346B00 | 38 80 00 02 */	li r4, 0x2
/* 81346B04 | 4B FF F7 D9 */	bl call__Q23ipl12DialogWindowFi
/* 81346B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346B0C | 41 82 00 44 */	beq .L_81346B50
/* 81346B10 | 9B DA 00 36 */	stb r30, 0x36(r26)
/* 81346B14 | 7F 43 D3 78 */	mr r3, r26
/* 81346B18 | 7F 64 DB 78 */	mr r4, r27
/* 81346B1C | 4B FF F5 39 */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346B20 | 7F 43 D3 78 */	mr r3, r26
/* 81346B24 | 7F 84 E3 78 */	mr r4, r28
/* 81346B28 | 4B FF F5 99 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346B2C | 7F 43 D3 78 */	mr r3, r26
/* 81346B30 | 7F A4 EB 78 */	mr r4, r29
/* 81346B34 | 4B FF F5 E5 */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 81346B38 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346B3C | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346B40 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346B44 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346B48 | 48 02 49 25 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346B4C | 3B E0 00 01 */	li r31, 0x1
.L_81346B50:
/* 81346B50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346B54 | 7F E3 FB 78 */	mr r3, r31
/* 81346B58 | 48 2B 29 B1 */	bl _restgpr_26
/* 81346B5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346B60 | 7C 08 03 A6 */	mtlr r0
/* 81346B64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346B68 | 4E 80 00 20 */	blr
.endfn callBtn2__Q23ipl12DialogWindowFUlUlUlb

# .text:0x2354 | 0x81346B6C | size: 0xA8
.fn iplDialogWindow_81346B6C, global
/* 81346B6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346B70 | 7C 08 02 A6 */	mflr r0
/* 81346B74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346B78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346B7C | 48 2B 29 41 */	bl _savegpr_26
/* 81346B80 | 38 00 00 01 */	li r0, 0x1
/* 81346B84 | 7C 9B 23 78 */	mr r27, r4
/* 81346B88 | 98 03 00 98 */	stb r0, 0x98(r3)
/* 81346B8C | 7C 7A 1B 78 */	mr r26, r3
/* 81346B90 | 7C BC 2B 78 */	mr r28, r5
/* 81346B94 | 7C DD 33 78 */	mr r29, r6
/* 81346B98 | 7C FE 3B 78 */	mr r30, r7
/* 81346B9C | 3B E0 00 00 */	li r31, 0x0
/* 81346BA0 | 38 80 00 02 */	li r4, 0x2
/* 81346BA4 | 4B FF F7 39 */	bl call__Q23ipl12DialogWindowFi
/* 81346BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346BAC | 41 82 00 4C */	beq .L_81346BF8
/* 81346BB0 | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 81346BB4 | 9B DA 00 36 */	stb r30, 0x36(r26)
/* 81346BB8 | 7F 43 D3 78 */	mr r3, r26
/* 81346BBC | 7F 65 DB 78 */	mr r5, r27
/* 81346BC0 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 81346BC4 | 4B FF F4 2D */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346BC8 | 7F 43 D3 78 */	mr r3, r26
/* 81346BCC | 7F 84 E3 78 */	mr r4, r28
/* 81346BD0 | 4B FF F4 F1 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346BD4 | 7F 43 D3 78 */	mr r3, r26
/* 81346BD8 | 7F A4 EB 78 */	mr r4, r29
/* 81346BDC | 4B FF F5 3D */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 81346BE0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346BE4 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346BE8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346BEC | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346BF0 | 48 02 48 7D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346BF4 | 3B E0 00 01 */	li r31, 0x1
.L_81346BF8:
/* 81346BF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346BFC | 7F E3 FB 78 */	mr r3, r31
/* 81346C00 | 48 2B 29 09 */	bl _restgpr_26
/* 81346C04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346C08 | 7C 08 03 A6 */	mtlr r0
/* 81346C0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346C10 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81346B6C

# .text:0x23FC | 0x81346C14 | size: 0x174
.fn iplDialogWindow_81346C14, global
/* 81346C14 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81346C18 | 7C 08 02 A6 */	mflr r0
/* 81346C1C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81346C20 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81346C24 | 48 2B 28 9D */	bl _savegpr_27
/* 81346C28 | 88 04 00 0C */	lbz r0, 0xc(r4)
/* 81346C2C | 7C 7F 1B 78 */	mr r31, r3
/* 81346C30 | 7C 9B 23 78 */	mr r27, r4
/* 81346C34 | 7C BC 2B 78 */	mr r28, r5
/* 81346C38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81346C3C | 7C DD 33 78 */	mr r29, r6
/* 81346C40 | 3B C0 00 00 */	li r30, 0x0
/* 81346C44 | 40 82 00 0C */	bne .L_81346C50
/* 81346C48 | 38 00 00 01 */	li r0, 0x1
/* 81346C4C | 98 03 00 99 */	stb r0, 0x99(r3)
.L_81346C50:
/* 81346C50 | 7F E3 FB 78 */	mr r3, r31
/* 81346C54 | 38 80 00 02 */	li r4, 0x2
/* 81346C58 | 4B FF F6 85 */	bl call__Q23ipl12DialogWindowFi
/* 81346C5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346C60 | 41 82 01 0C */	beq .L_81346D6C
/* 81346C64 | 3C 00 43 30 */	lis r0, 0x4330
/* 81346C68 | 6F A3 80 00 */	xoris r3, r29, 0x8000
/* 81346C6C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81346C70 | C8 42 81 10 */	lfd f2, lbl_81694510@sda21(r0)
/* 81346C74 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81346C78 | C0 02 81 18 */	lfs f0, lbl_81694518@sda21(r0)
/* 81346C7C | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81346C80 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81346C84 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81346C88 | 93 7F 00 88 */	stw r27, 0x88(r31)
/* 81346C8C | EC 20 08 24 */	fdivs f1, f0, f1
/* 81346C90 | 93 9F 00 8C */	stw r28, 0x8c(r31)
/* 81346C94 | FC 00 08 1E */	fctiwz f0, f1
/* 81346C98 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 81346C9C | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 81346CA0 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81346CA4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81346CA8 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 81346CAC | EC 00 10 28 */	fsubs f0, f0, f2
/* 81346CB0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81346CB4 | 40 81 00 08 */	ble .L_81346CBC
/* 81346CB8 | 38 63 00 01 */	addi r3, r3, 0x1
.L_81346CBC:
/* 81346CBC | 38 A0 00 00 */	li r5, 0x0
/* 81346CC0 | 38 C0 00 FF */	li r6, 0xff
/* 81346CC4 | 1C 05 00 1C */	mulli r0, r5, 0x1c
/* 81346CC8 | 90 7F 00 48 */	stw r3, 0x48(r31)
/* 81346CCC | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81346CD0 | 7F E3 FB 78 */	mr r3, r31
/* 81346CD4 | 90 DF 00 44 */	stw r6, 0x44(r31)
/* 81346CD8 | 90 BF 00 90 */	stw r5, 0x90(r31)
/* 81346CDC | 90 BF 00 94 */	stw r5, 0x94(r31)
/* 81346CE0 | 98 BF 00 36 */	stb r5, 0x36(r31)
/* 81346CE4 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81346CE8 | 4B FF F3 6D */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346CEC | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81346CF0 | 7F E3 FB 78 */	mr r3, r31
/* 81346CF4 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81346CF8 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81346CFC | 7C 84 02 14 */	add r4, r4, r0
/* 81346D00 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81346D04 | 4B FF F3 BD */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346D08 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81346D0C | 7F E3 FB 78 */	mr r3, r31
/* 81346D10 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 81346D14 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81346D18 | 7C 84 02 14 */	add r4, r4, r0
/* 81346D1C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81346D20 | 4B FF F3 F9 */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 81346D24 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81346D28 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 81346D2C | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81346D30 | 7C 63 02 14 */	add r3, r3, r0
/* 81346D34 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81346D38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81346D3C | 41 82 00 18 */	beq .L_81346D54
/* 81346D40 | C0 02 81 1C */	lfs f0, lbl_8169451C@sda21(r0)
/* 81346D44 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 81346D48 | D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 81346D4C | C0 03 00 14 */	lfs f0, 0x14(r3)
/* 81346D50 | D0 1F 00 84 */	stfs f0, 0x84(r31)
.L_81346D54:
/* 81346D54 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346D58 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346D5C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346D60 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346D64 | 48 02 47 09 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346D68 | 3B C0 00 01 */	li r30, 0x1
.L_81346D6C:
/* 81346D6C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81346D70 | 7F C3 F3 78 */	mr r3, r30
/* 81346D74 | 48 2B 27 99 */	bl _restgpr_27
/* 81346D78 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81346D7C | 7C 08 03 A6 */	mtlr r0
/* 81346D80 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81346D84 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_81346C14

# .text:0x2570 | 0x81346D88 | size: 0xA0
# ipl::DialogWindow::callBtn2(const wchar_t*, unsigned long, unsigned long, bool)
.fn callBtn2__Q23ipl12DialogWindowFPCwUlUlb, global
/* 81346D88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346D8C | 7C 08 02 A6 */	mflr r0
/* 81346D90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346D94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346D98 | 48 2B 27 25 */	bl _savegpr_26
/* 81346D9C | 7C 9B 23 78 */	mr r27, r4
/* 81346DA0 | 7C 7A 1B 78 */	mr r26, r3
/* 81346DA4 | 7C BC 2B 78 */	mr r28, r5
/* 81346DA8 | 7C DD 33 78 */	mr r29, r6
/* 81346DAC | 7C FE 3B 78 */	mr r30, r7
/* 81346DB0 | 3B E0 00 00 */	li r31, 0x0
/* 81346DB4 | 38 80 00 02 */	li r4, 0x2
/* 81346DB8 | 4B FF F5 25 */	bl call__Q23ipl12DialogWindowFi
/* 81346DBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346DC0 | 41 82 00 4C */	beq .L_81346E0C
/* 81346DC4 | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 81346DC8 | 9B DA 00 36 */	stb r30, 0x36(r26)
/* 81346DCC | 7F 43 D3 78 */	mr r3, r26
/* 81346DD0 | 7F 65 DB 78 */	mr r5, r27
/* 81346DD4 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 81346DD8 | 4B FF F2 19 */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 81346DDC | 7F 43 D3 78 */	mr r3, r26
/* 81346DE0 | 7F 84 E3 78 */	mr r4, r28
/* 81346DE4 | 4B FF F2 DD */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346DE8 | 7F 43 D3 78 */	mr r3, r26
/* 81346DEC | 7F A4 EB 78 */	mr r4, r29
/* 81346DF0 | 4B FF F3 29 */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 81346DF4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346DF8 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346DFC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346E00 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346E04 | 48 02 46 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346E08 | 3B E0 00 01 */	li r31, 0x1
.L_81346E0C:
/* 81346E0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346E10 | 7F E3 FB 78 */	mr r3, r31
/* 81346E14 | 48 2B 26 F5 */	bl _restgpr_26
/* 81346E18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346E1C | 7C 08 03 A6 */	mtlr r0
/* 81346E20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346E24 | 4E 80 00 20 */	blr
.endfn callBtn2__Q23ipl12DialogWindowFPCwUlUlb

# .text:0x2610 | 0x81346E28 | size: 0xA0
# ipl::DialogWindow::callBtn3(unsigned long, unsigned long, unsigned long, unsigned long)
.fn callBtn3__Q23ipl12DialogWindowFUlUlUlUl, global
/* 81346E28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346E2C | 7C 08 02 A6 */	mflr r0
/* 81346E30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346E34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346E38 | 48 2B 26 85 */	bl _savegpr_26
/* 81346E3C | 7C 9B 23 78 */	mr r27, r4
/* 81346E40 | 7C 7A 1B 78 */	mr r26, r3
/* 81346E44 | 7C BC 2B 78 */	mr r28, r5
/* 81346E48 | 7C DD 33 78 */	mr r29, r6
/* 81346E4C | 7C FE 3B 78 */	mr r30, r7
/* 81346E50 | 3B E0 00 00 */	li r31, 0x0
/* 81346E54 | 38 80 00 03 */	li r4, 0x3
/* 81346E58 | 4B FF F4 85 */	bl call__Q23ipl12DialogWindowFi
/* 81346E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346E60 | 41 82 00 4C */	beq .L_81346EAC
/* 81346E64 | 7F 43 D3 78 */	mr r3, r26
/* 81346E68 | 7F 64 DB 78 */	mr r4, r27
/* 81346E6C | 4B FF F1 E9 */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346E70 | 7F 43 D3 78 */	mr r3, r26
/* 81346E74 | 7F 84 E3 78 */	mr r4, r28
/* 81346E78 | 4B FF F2 F9 */	bl set_tbtn_text__Q23ipl12DialogWindowFUl
/* 81346E7C | 7F 43 D3 78 */	mr r3, r26
/* 81346E80 | 7F A4 EB 78 */	mr r4, r29
/* 81346E84 | 4B FF F3 45 */	bl set_cbtn_text__Q23ipl12DialogWindowFUl
/* 81346E88 | 7F 43 D3 78 */	mr r3, r26
/* 81346E8C | 7F C4 F3 78 */	mr r4, r30
/* 81346E90 | 4B FF F3 91 */	bl set_bbtn_text__Q23ipl12DialogWindowFUl
/* 81346E94 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346E98 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346E9C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346EA0 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346EA4 | 48 02 45 C9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346EA8 | 3B E0 00 01 */	li r31, 0x1
.L_81346EAC:
/* 81346EAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346EB0 | 7F E3 FB 78 */	mr r3, r31
/* 81346EB4 | 48 2B 26 55 */	bl _restgpr_26
/* 81346EB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346EBC | 7C 08 03 A6 */	mtlr r0
/* 81346EC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346EC4 | 4E 80 00 20 */	blr
.endfn callBtn3__Q23ipl12DialogWindowFUlUlUlUl

# .text:0x26B0 | 0x81346EC8 | size: 0xC4
# ipl::DialogWindow::callSBtn2(unsigned long, unsigned long, unsigned long, bool)
.fn callSBtn2__Q23ipl12DialogWindowFUlUlUlb, global
/* 81346EC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346ECC | 7C 08 02 A6 */	mflr r0
/* 81346ED0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346ED4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346ED8 | 48 2B 25 E5 */	bl _savegpr_26
/* 81346EDC | 7C 9B 23 78 */	mr r27, r4
/* 81346EE0 | 7C 7A 1B 78 */	mr r26, r3
/* 81346EE4 | 7C BC 2B 78 */	mr r28, r5
/* 81346EE8 | 7C DD 33 78 */	mr r29, r6
/* 81346EEC | 7C FE 3B 78 */	mr r30, r7
/* 81346EF0 | 3B E0 00 00 */	li r31, 0x0
/* 81346EF4 | 38 80 00 04 */	li r4, 0x4
/* 81346EF8 | 4B FF F3 E5 */	bl call__Q23ipl12DialogWindowFi
/* 81346EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346F00 | 41 82 00 70 */	beq .L_81346F70
/* 81346F04 | 9B DA 00 36 */	stb r30, 0x36(r26)
/* 81346F08 | 38 8D 81 50 */	li r4, lbl_81696190@sda21
/* 81346F0C | 80 7A 00 78 */	lwz r3, 0x78(r26)
/* 81346F10 | 38 A0 00 01 */	li r5, 0x1
/* 81346F14 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346F18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81346F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346F20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81346F24 | 7D 89 03 A6 */	mtctr r12
/* 81346F28 | 4E 80 04 21 */	bctrl
/* 81346F2C | 38 80 00 01 */	li r4, 0x1
/* 81346F30 | 4B FF D4 E5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81346F34 | 7F 43 D3 78 */	mr r3, r26
/* 81346F38 | 7F 64 DB 78 */	mr r4, r27
/* 81346F3C | 4B FF F1 19 */	bl set_message__Q23ipl12DialogWindowFUl
/* 81346F40 | 7F 43 D3 78 */	mr r3, r26
/* 81346F44 | 7F 84 E3 78 */	mr r4, r28
/* 81346F48 | 4B FF F1 79 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81346F4C | 7F 43 D3 78 */	mr r3, r26
/* 81346F50 | 7F A4 EB 78 */	mr r4, r29
/* 81346F54 | 4B FF F1 C5 */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 81346F58 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81346F5C | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81346F60 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81346F64 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 81346F68 | 48 02 45 05 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81346F6C | 3B E0 00 01 */	li r31, 0x1
.L_81346F70:
/* 81346F70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346F74 | 7F E3 FB 78 */	mr r3, r31
/* 81346F78 | 48 2B 25 91 */	bl _restgpr_26
/* 81346F7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81346F80 | 7C 08 03 A6 */	mtlr r0
/* 81346F84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81346F88 | 4E 80 00 20 */	blr
.endfn callSBtn2__Q23ipl12DialogWindowFUlUlUlb

# .text:0x2774 | 0x81346F8C | size: 0xB4
# ipl::DialogWindow::callS2Btn2(unsigned long, unsigned long, bool)
.fn callS2Btn2__Q23ipl12DialogWindowFUlUlb, global
/* 81346F8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81346F90 | 7C 08 02 A6 */	mflr r0
/* 81346F94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81346F98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81346F9C | 48 2B 25 25 */	bl _savegpr_27
/* 81346FA0 | 7C 9C 23 78 */	mr r28, r4
/* 81346FA4 | 7C 7B 1B 78 */	mr r27, r3
/* 81346FA8 | 7C BD 2B 78 */	mr r29, r5
/* 81346FAC | 7C DE 33 78 */	mr r30, r6
/* 81346FB0 | 3B E0 00 00 */	li r31, 0x0
/* 81346FB4 | 38 80 00 04 */	li r4, 0x4
/* 81346FB8 | 4B FF F3 25 */	bl call__Q23ipl12DialogWindowFi
/* 81346FBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81346FC0 | 41 82 00 64 */	beq .L_81347024
/* 81346FC4 | 9B DB 00 36 */	stb r30, 0x36(r27)
/* 81346FC8 | 38 8D 81 50 */	li r4, lbl_81696190@sda21
/* 81346FCC | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 81346FD0 | 38 A0 00 01 */	li r5, 0x1
/* 81346FD4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81346FD8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81346FDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81346FE0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81346FE4 | 7D 89 03 A6 */	mtctr r12
/* 81346FE8 | 4E 80 04 21 */	bctrl
/* 81346FEC | 38 80 00 00 */	li r4, 0x0
/* 81346FF0 | 4B FF D4 25 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81346FF4 | 7F 63 DB 78 */	mr r3, r27
/* 81346FF8 | 7F 84 E3 78 */	mr r4, r28
/* 81346FFC | 4B FF F0 C5 */	bl set_rbtn_text__Q23ipl12DialogWindowFUl
/* 81347000 | 7F 63 DB 78 */	mr r3, r27
/* 81347004 | 7F A4 EB 78 */	mr r4, r29
/* 81347008 | 4B FF F1 11 */	bl set_lbtn_text__Q23ipl12DialogWindowFUl
/* 8134700C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347010 | 3C 80 81 63 */	lis r4, lbl_8163597B@ha
/* 81347014 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347018 | 38 84 59 7B */	addi r4, r4, lbl_8163597B@l
/* 8134701C | 48 02 44 51 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81347020 | 3B E0 00 01 */	li r31, 0x1
.L_81347024:
/* 81347024 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347028 | 7F E3 FB 78 */	mr r3, r31
/* 8134702C | 48 2B 24 E1 */	bl _restgpr_27
/* 81347030 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347034 | 7C 08 03 A6 */	mtlr r0
/* 81347038 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134703C | 4E 80 00 20 */	blr
.endfn callS2Btn2__Q23ipl12DialogWindowFUlUlb

# .text:0x2828 | 0x81347040 | size: 0x11C
# ipl::DialogWindow::callBtnPrg(unsigned long)
.fn callBtnPrg__Q23ipl12DialogWindowFUl, global
/* 81347040 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347044 | 7C 08 02 A6 */	mflr r0
/* 81347048 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134704C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347050 | 48 2B 24 75 */	bl _savegpr_28
/* 81347054 | 7C 9D 23 78 */	mr r29, r4
/* 81347058 | 7C 7C 1B 78 */	mr r28, r3
/* 8134705C | 3B C0 00 00 */	li r30, 0x0
/* 81347060 | 38 80 00 00 */	li r4, 0x0
/* 81347064 | 4B FF F2 79 */	bl call__Q23ipl12DialogWindowFi
/* 81347068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134706C | 41 82 00 D4 */	beq .L_81347140
/* 81347070 | 38 00 00 00 */	li r0, 0x0
/* 81347074 | 3B E0 00 01 */	li r31, 0x1
/* 81347078 | 90 1C 00 30 */	stw r0, 0x30(r28)
/* 8134707C | 7F 83 E3 78 */	mr r3, r28
/* 81347080 | 7F A4 EB 78 */	mr r4, r29
/* 81347084 | 9B FC 00 37 */	stb r31, 0x37(r28)
/* 81347088 | 9B FC 00 38 */	stb r31, 0x38(r28)
/* 8134708C | 90 1C 00 3C */	stw r0, 0x3c(r28)
/* 81347090 | 90 1C 00 40 */	stw r0, 0x40(r28)
/* 81347094 | 4B FF EF C1 */	bl set_message__Q23ipl12DialogWindowFUl
/* 81347098 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 8134709C | 38 8D 81 27 */	li r4, lbl_81696167@sda21
/* 813470A0 | 38 A0 00 01 */	li r5, 0x1
/* 813470A4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813470A8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813470AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813470B0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813470B4 | 7D 89 03 A6 */	mtctr r12
/* 813470B8 | 4E 80 04 21 */	bctrl
/* 813470BC | 38 80 00 01 */	li r4, 0x1
/* 813470C0 | 4B FF D3 55 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813470C4 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 813470C8 | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 813470CC | 38 A0 00 01 */	li r5, 0x1
/* 813470D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813470D4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813470D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813470DC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813470E0 | 7D 89 03 A6 */	mtctr r12
/* 813470E4 | 4E 80 04 21 */	bctrl
/* 813470E8 | 38 80 00 01 */	li r4, 0x1
/* 813470EC | 4B FF D3 29 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813470F0 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 813470F4 | 38 80 00 02 */	li r4, 0x2
/* 813470F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813470FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81347100 | 48 1C B2 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81347104 | 7C 7E 1B 78 */	mr r30, r3
/* 81347108 | 48 01 B7 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8134710C | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81347110 | 38 80 00 03 */	li r4, 0x3
/* 81347114 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 81347118 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134711C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81347120 | 48 1C B1 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81347124 | 48 02 2B 01 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81347128 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8134712C | 3C 80 81 63 */	lis r4, lbl_8163596B@ha
/* 81347130 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347134 | 38 84 59 6B */	addi r4, r4, lbl_8163596B@l
/* 81347138 | 48 02 43 35 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8134713C | 3B C0 00 01 */	li r30, 0x1
.L_81347140:
/* 81347140 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347144 | 7F C3 F3 78 */	mr r3, r30
/* 81347148 | 48 2B 23 C9 */	bl _restgpr_28
/* 8134714C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347150 | 7C 08 03 A6 */	mtlr r0
/* 81347154 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347158 | 4E 80 00 20 */	blr
.endfn callBtnPrg__Q23ipl12DialogWindowFUl

# .text:0x2944 | 0x8134715C | size: 0x128
.fn iplDialogWindow_8134715C, global
/* 8134715C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347160 | 7C 08 02 A6 */	mflr r0
/* 81347164 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347168 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134716C | 48 2B 23 59 */	bl _savegpr_28
/* 81347170 | 3B E0 00 01 */	li r31, 0x1
/* 81347174 | 7C 9D 23 78 */	mr r29, r4
/* 81347178 | 9B E3 00 98 */	stb r31, 0x98(r3)
/* 8134717C | 7C 7C 1B 78 */	mr r28, r3
/* 81347180 | 3B C0 00 00 */	li r30, 0x0
/* 81347184 | 38 80 00 00 */	li r4, 0x0
/* 81347188 | 4B FF F1 55 */	bl call__Q23ipl12DialogWindowFi
/* 8134718C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347190 | 41 82 00 D8 */	beq .L_81347268
/* 81347194 | 38 00 00 00 */	li r0, 0x0
/* 81347198 | 3C 80 81 63 */	lis r4, lbl_8163594E@ha
/* 8134719C | 90 1C 00 30 */	stw r0, 0x30(r28)
/* 813471A0 | 7F 83 E3 78 */	mr r3, r28
/* 813471A4 | 7F A5 EB 78 */	mr r5, r29
/* 813471A8 | 38 84 59 4E */	addi r4, r4, lbl_8163594E@l
/* 813471AC | 9B FC 00 37 */	stb r31, 0x37(r28)
/* 813471B0 | 9B FC 00 38 */	stb r31, 0x38(r28)
/* 813471B4 | 90 1C 00 3C */	stw r0, 0x3c(r28)
/* 813471B8 | 90 1C 00 40 */	stw r0, 0x40(r28)
/* 813471BC | 4B FF EE 35 */	bl set_text__Q23ipl12DialogWindowFPCcPCw
/* 813471C0 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 813471C4 | 38 8D 81 27 */	li r4, lbl_81696167@sda21
/* 813471C8 | 38 A0 00 01 */	li r5, 0x1
/* 813471CC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813471D0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813471D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813471D8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813471DC | 7D 89 03 A6 */	mtctr r12
/* 813471E0 | 4E 80 04 21 */	bctrl
/* 813471E4 | 38 80 00 01 */	li r4, 0x1
/* 813471E8 | 4B FF D2 2D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813471EC | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 813471F0 | 38 8D 81 1F */	li r4, lbl_8169615F@sda21
/* 813471F4 | 38 A0 00 01 */	li r5, 0x1
/* 813471F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813471FC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81347200 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347204 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81347208 | 7D 89 03 A6 */	mtctr r12
/* 8134720C | 4E 80 04 21 */	bctrl
/* 81347210 | 38 80 00 01 */	li r4, 0x1
/* 81347214 | 4B FF D2 01 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81347218 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 8134721C | 38 80 00 02 */	li r4, 0x2
/* 81347220 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81347224 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81347228 | 48 1C B0 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8134722C | 7C 7E 1B 78 */	mr r30, r3
/* 81347230 | 48 01 B6 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81347234 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81347238 | 38 80 00 03 */	li r4, 0x3
/* 8134723C | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 81347240 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81347244 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81347248 | 48 1C B0 D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8134724C | 48 02 29 D9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81347250 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347254 | 3C 80 81 63 */	lis r4, lbl_8163596B@ha
/* 81347258 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8134725C | 38 84 59 6B */	addi r4, r4, lbl_8163596B@l
/* 81347260 | 48 02 42 0D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81347264 | 3B C0 00 01 */	li r30, 0x1
.L_81347268:
/* 81347268 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134726C | 7F C3 F3 78 */	mr r3, r30
/* 81347270 | 48 2B 22 A1 */	bl _restgpr_28
/* 81347274 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347278 | 7C 08 03 A6 */	mtlr r0
/* 8134727C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347280 | 4E 80 00 20 */	blr
.endfn iplDialogWindow_8134715C

# .text:0x2A6C | 0x81347284 | size: 0x174
# ipl::DialogWindow::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q23ipl12DialogWindowFPCcPQ33ipl10controller9Interface, global
/* 81347284 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347288 | 7C 08 02 A6 */	mflr r0
/* 8134728C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347290 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347294 | 48 2B 22 31 */	bl _savegpr_28
/* 81347298 | 7C 7D 1B 78 */	mr r29, r3
/* 8134729C | 7C BE 2B 78 */	mr r30, r5
/* 813472A0 | 48 00 05 01 */	bl get_button_no__Q23ipl12DialogWindowFPCc
/* 813472A4 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813472A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813472AC | 38 04 FF FB */	subi r0, r4, 0x5
/* 813472B0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813472B4 | 41 81 00 34 */	bgt .L_813472E8
/* 813472B8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813472BC | 40 82 00 2C */	bne .L_813472E8
/* 813472C0 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 813472C4 | 80 1D 00 94 */	lwz r0, 0x94(r29)
/* 813472C8 | 80 BD 00 88 */	lwz r5, 0x88(r29)
/* 813472CC | 1C 84 00 1C */	mulli r4, r4, 0x1c
/* 813472D0 | 38 A5 00 0C */	addi r5, r5, 0xc
/* 813472D4 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 813472D8 | 7C 85 20 AE */	lbzx r4, r5, r4
/* 813472DC | 7C 05 00 AE */	lbzx r0, r5, r0
/* 813472E0 | 7C 04 00 40 */	cmplw r4, r0
/* 813472E4 | 40 82 00 FC */	bne .L_813473E0
.L_813472E8:
/* 813472E8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813472EC | 41 82 00 E0 */	beq .L_813473CC
/* 813472F0 | 54 60 10 3A */	slwi r0, r3, 2
/* 813472F4 | 7C 9D 02 14 */	add r4, r29, r0
/* 813472F8 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813472FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347300 | 40 82 00 CC */	bne .L_813473CC
/* 81347304 | 80 1D 00 28 */	lwz r0, 0x28(r29)
/* 81347308 | 3B 80 FF FF */	li r28, -0x1
/* 8134730C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81347310 | 40 82 00 40 */	bne .L_81347350
/* 81347314 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81347318 | 41 82 00 20 */	beq .L_81347338
/* 8134731C | 40 80 00 10 */	bge .L_8134732C
/* 81347320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347324 | 40 80 00 1C */	bge .L_81347340
/* 81347328 | 48 00 00 4C */	b .L_81347374
.L_8134732C:
/* 8134732C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81347330 | 40 80 00 44 */	bge .L_81347374
/* 81347334 | 48 00 00 14 */	b .L_81347348
.L_81347338:
/* 81347338 | 3B 80 00 05 */	li r28, 0x5
/* 8134733C | 48 00 00 38 */	b .L_81347374
.L_81347340:
/* 81347340 | 3B 80 00 02 */	li r28, 0x2
/* 81347344 | 48 00 00 30 */	b .L_81347374
.L_81347348:
/* 81347348 | 3B 80 00 08 */	li r28, 0x8
/* 8134734C | 48 00 00 28 */	b .L_81347374
.L_81347350:
/* 81347350 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81347354 | 41 82 00 1C */	beq .L_81347370
/* 81347358 | 40 80 00 1C */	bge .L_81347374
/* 8134735C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347360 | 40 80 00 08 */	bge .L_81347368
/* 81347364 | 48 00 00 10 */	b .L_81347374
.L_81347368:
/* 81347368 | 3B 80 00 02 */	li r28, 0x2
/* 8134736C | 48 00 00 08 */	b .L_81347374
.L_81347370:
/* 81347370 | 3B 80 00 05 */	li r28, 0x5
.L_81347374:
/* 81347374 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347378 | 3C 80 81 63 */	lis r4, lbl_8163598F@ha
/* 8134737C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347380 | 38 84 59 8F */	addi r4, r4, lbl_8163598F@l
/* 81347384 | 48 02 40 E9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81347388 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134738C | 41 82 00 1C */	beq .L_813473A8
/* 81347390 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81347394 | 7F C3 F3 78 */	mr r3, r30
/* 81347398 | 38 80 00 00 */	li r4, 0x0
/* 8134739C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813473A0 | 7D 89 03 A6 */	mtctr r12
/* 813473A4 | 4E 80 04 21 */	bctrl
.L_813473A8:
/* 813473A8 | 80 7D 00 78 */	lwz r3, 0x78(r29)
/* 813473AC | 57 84 04 3E */	clrlwi r4, r28, 16
/* 813473B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813473B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813473B8 | 48 1C AF 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813473BC | 7C 7E 1B 78 */	mr r30, r3
/* 813473C0 | 48 01 B4 B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813473C4 | 38 00 00 01 */	li r0, 0x1
/* 813473C8 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813473CC:
/* 813473CC | 57 E0 10 3A */	slwi r0, r31, 2
/* 813473D0 | 7C 9D 02 14 */	add r4, r29, r0
/* 813473D4 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 813473D8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813473DC | 90 04 00 14 */	stw r0, 0x14(r4)
.L_813473E0:
/* 813473E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813473E4 | 48 2B 21 2D */	bl _restgpr_28
/* 813473E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813473EC | 7C 08 03 A6 */	mtlr r0
/* 813473F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813473F4 | 4E 80 00 20 */	blr
.endfn start_point_event__Q23ipl12DialogWindowFPCcPQ33ipl10controller9Interface

# .text:0x2BE0 | 0x813473F8 | size: 0x144
# ipl::DialogWindow::start_left_event(const char*)
.fn start_left_event__Q23ipl12DialogWindowFPCc, global
/* 813473F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813473FC | 7C 08 02 A6 */	mflr r0
/* 81347400 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347404 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347408 | 48 2B 20 C1 */	bl _savegpr_29
/* 8134740C | 7C 7F 1B 78 */	mr r31, r3
/* 81347410 | 48 00 03 91 */	bl get_button_no__Q23ipl12DialogWindowFPCc
/* 81347414 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81347418 | 7C 7E 1B 78 */	mr r30, r3
/* 8134741C | 38 04 FF FB */	subi r0, r4, 0x5
/* 81347420 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81347424 | 41 81 00 34 */	bgt .L_81347458
/* 81347428 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8134742C | 40 82 00 2C */	bne .L_81347458
/* 81347430 | 80 9F 00 90 */	lwz r4, 0x90(r31)
/* 81347434 | 80 1F 00 94 */	lwz r0, 0x94(r31)
/* 81347438 | 80 BF 00 88 */	lwz r5, 0x88(r31)
/* 8134743C | 1C 84 00 1C */	mulli r4, r4, 0x1c
/* 81347440 | 38 A5 00 0C */	addi r5, r5, 0xc
/* 81347444 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 81347448 | 7C 85 20 AE */	lbzx r4, r5, r4
/* 8134744C | 7C 05 00 AE */	lbzx r0, r5, r0
/* 81347450 | 7C 04 00 40 */	cmplw r4, r0
/* 81347454 | 40 82 00 D0 */	bne .L_81347524
.L_81347458:
/* 81347458 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8134745C | 41 82 00 AC */	beq .L_81347508
/* 81347460 | 54 60 10 3A */	slwi r0, r3, 2
/* 81347464 | 7C 9F 02 14 */	add r4, r31, r0
/* 81347468 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8134746C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81347470 | 40 82 00 98 */	bne .L_81347508
/* 81347474 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81347478 | 38 80 FF FF */	li r4, -0x1
/* 8134747C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81347480 | 40 82 00 40 */	bne .L_813474C0
/* 81347484 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81347488 | 41 82 00 20 */	beq .L_813474A8
/* 8134748C | 40 80 00 10 */	bge .L_8134749C
/* 81347490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347494 | 40 80 00 1C */	bge .L_813474B0
/* 81347498 | 48 00 00 4C */	b .L_813474E4
.L_8134749C:
/* 8134749C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813474A0 | 40 80 00 44 */	bge .L_813474E4
/* 813474A4 | 48 00 00 14 */	b .L_813474B8
.L_813474A8:
/* 813474A8 | 38 80 00 06 */	li r4, 0x6
/* 813474AC | 48 00 00 38 */	b .L_813474E4
.L_813474B0:
/* 813474B0 | 38 80 00 03 */	li r4, 0x3
/* 813474B4 | 48 00 00 30 */	b .L_813474E4
.L_813474B8:
/* 813474B8 | 38 80 00 09 */	li r4, 0x9
/* 813474BC | 48 00 00 28 */	b .L_813474E4
.L_813474C0:
/* 813474C0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813474C4 | 41 82 00 1C */	beq .L_813474E0
/* 813474C8 | 40 80 00 1C */	bge .L_813474E4
/* 813474CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813474D0 | 40 80 00 08 */	bge .L_813474D8
/* 813474D4 | 48 00 00 10 */	b .L_813474E4
.L_813474D8:
/* 813474D8 | 38 80 00 03 */	li r4, 0x3
/* 813474DC | 48 00 00 08 */	b .L_813474E4
.L_813474E0:
/* 813474E0 | 38 80 00 06 */	li r4, 0x6
.L_813474E4:
/* 813474E4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813474E8 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813474EC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813474F0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813474F4 | 48 1C AE 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813474F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813474FC | 48 01 B3 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81347500 | 38 00 00 01 */	li r0, 0x1
/* 81347504 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_81347508:
/* 81347508 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8134750C | 7C 9F 02 14 */	add r4, r31, r0
/* 81347510 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 81347514 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347518 | 40 81 00 0C */	ble .L_81347524
/* 8134751C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81347520 | 90 04 00 14 */	stw r0, 0x14(r4)
.L_81347524:
/* 81347524 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347528 | 48 2B 1F ED */	bl _restgpr_29
/* 8134752C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347530 | 7C 08 03 A6 */	mtlr r0
/* 81347534 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347538 | 4E 80 00 20 */	blr
.endfn start_left_event__Q23ipl12DialogWindowFPCc

# .text:0x2D24 | 0x8134753C | size: 0x264
# ipl::DialogWindow::start_trig_event(const char*)
.fn start_trig_event__Q23ipl12DialogWindowFPCc, global
/* 8134753C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347540 | 7C 08 02 A6 */	mflr r0
/* 81347544 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81347548 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134754C | 7C 7F 1B 78 */	mr r31, r3
/* 81347550 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81347554 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81347558 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8134755C | 41 82 02 2C */	beq .L_81347788
/* 81347560 | 48 00 02 41 */	bl get_button_no__Q23ipl12DialogWindowFPCc
/* 81347564 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81347568 | 41 82 02 20 */	beq .L_81347788
/* 8134756C | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81347570 | 3B C0 FF FF */	li r30, -0x1
/* 81347574 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81347578 | 40 82 00 94 */	bne .L_8134760C
/* 8134757C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81347580 | 41 82 00 20 */	beq .L_813475A0
/* 81347584 | 40 80 00 10 */	bge .L_81347594
/* 81347588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134758C | 40 80 00 38 */	bge .L_813475C4
/* 81347590 | 48 00 01 40 */	b .L_813476D0
.L_81347594:
/* 81347594 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81347598 | 40 80 01 38 */	bge .L_813476D0
/* 8134759C | 48 00 00 4C */	b .L_813475E8
.L_813475A0:
/* 813475A0 | 38 00 00 03 */	li r0, 0x3
/* 813475A4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813475A8 | 3C 80 81 63 */	lis r4, lbl_816359A5@ha
/* 813475AC | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 813475B0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813475B4 | 3B C0 00 07 */	li r30, 0x7
/* 813475B8 | 38 84 59 A5 */	addi r4, r4, lbl_816359A5@l
/* 813475BC | 48 02 3E B1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813475C0 | 48 00 01 10 */	b .L_813476D0
.L_813475C4:
/* 813475C4 | 38 00 00 04 */	li r0, 0x4
/* 813475C8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813475CC | 3C 80 81 63 */	lis r4, lbl_816359A5@ha
/* 813475D0 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 813475D4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813475D8 | 3B C0 00 04 */	li r30, 0x4
/* 813475DC | 38 84 59 A5 */	addi r4, r4, lbl_816359A5@l
/* 813475E0 | 48 02 3E 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813475E4 | 48 00 00 EC */	b .L_813476D0
.L_813475E8:
/* 813475E8 | 38 00 00 05 */	li r0, 0x5
/* 813475EC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813475F0 | 3C 80 81 63 */	lis r4, lbl_816359B4@ha
/* 813475F4 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 813475F8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813475FC | 3B C0 00 0A */	li r30, 0xa
/* 81347600 | 38 84 59 B4 */	addi r4, r4, lbl_816359B4@l
/* 81347604 | 48 02 3E 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81347608 | 48 00 00 C8 */	b .L_813476D0
.L_8134760C:
/* 8134760C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81347610 | 41 82 00 14 */	beq .L_81347624
/* 81347614 | 40 80 00 BC */	bge .L_813476D0
/* 81347618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134761C | 40 80 00 60 */	bge .L_8134767C
/* 81347620 | 48 00 00 B0 */	b .L_813476D0
.L_81347624:
/* 81347624 | 88 1F 00 36 */	lbz r0, 0x36(r31)
/* 81347628 | 38 60 00 02 */	li r3, 0x2
/* 8134762C | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 81347630 | 3B C0 00 07 */	li r30, 0x7
/* 81347634 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347638 | 41 82 00 1C */	beq .L_81347654
/* 8134763C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347640 | 3C 80 81 63 */	lis r4, lbl_816359A5@ha
/* 81347644 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347648 | 38 84 59 A5 */	addi r4, r4, lbl_816359A5@l
/* 8134764C | 48 02 3E 21 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81347650 | 48 00 00 18 */	b .L_81347668
.L_81347654:
/* 81347654 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347658 | 3C 80 81 63 */	lis r4, lbl_816359B4@ha
/* 8134765C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347660 | 38 84 59 B4 */	addi r4, r4, lbl_816359B4@l
/* 81347664 | 48 02 3E 09 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_81347668:
/* 81347668 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8134766C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81347670 | 90 7F 00 94 */	stw r3, 0x94(r31)
/* 81347674 | 90 1F 00 90 */	stw r0, 0x90(r31)
/* 81347678 | 48 00 00 58 */	b .L_813476D0
.L_8134767C:
/* 8134767C | 88 1F 00 36 */	lbz r0, 0x36(r31)
/* 81347680 | 38 60 00 01 */	li r3, 0x1
/* 81347684 | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 81347688 | 3B C0 00 04 */	li r30, 0x4
/* 8134768C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347690 | 41 82 00 1C */	beq .L_813476AC
/* 81347694 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347698 | 3C 80 81 63 */	lis r4, lbl_816359B4@ha
/* 8134769C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813476A0 | 38 84 59 B4 */	addi r4, r4, lbl_816359B4@l
/* 813476A4 | 48 02 3D C9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813476A8 | 48 00 00 18 */	b .L_813476C0
.L_813476AC:
/* 813476AC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813476B0 | 3C 80 81 63 */	lis r4, lbl_816359A5@ha
/* 813476B4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813476B8 | 38 84 59 A5 */	addi r4, r4, lbl_816359A5@l
/* 813476BC | 48 02 3D B1 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813476C0:
/* 813476C0 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813476C4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813476C8 | 90 7F 00 94 */	stw r3, 0x94(r31)
/* 813476CC | 90 1F 00 90 */	stw r0, 0x90(r31)
.L_813476D0:
/* 813476D0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813476D4 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 813476D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813476DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813476E0 | 48 1C AC 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813476E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813476E8 | 48 01 B1 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813476EC | 38 60 00 01 */	li r3, 0x1
/* 813476F0 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813476F4 | 80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 813476F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813476FC | 40 81 00 80 */	ble .L_8134777C
/* 81347700 | 80 1F 00 94 */	lwz r0, 0x94(r31)
/* 81347704 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 81347708 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8134770C | 7C 63 02 14 */	add r3, r3, r0
/* 81347710 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 81347714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347718 | 41 82 00 24 */	beq .L_8134773C
/* 8134771C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81347720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347724 | 41 82 00 18 */	beq .L_8134773C
/* 81347728 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8134772C | 38 80 00 00 */	li r4, 0x0
/* 81347730 | 48 1C AB E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81347734 | 38 00 00 00 */	li r0, 0x0
/* 81347738 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_8134773C:
/* 8134773C | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 81347740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347744 | 41 80 00 10 */	blt .L_81347754
/* 81347748 | 80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 8134774C | 7C 03 00 00 */	cmpw r3, r0
/* 81347750 | 40 82 00 18 */	bne .L_81347768
.L_81347754:
/* 81347754 | 38 60 00 01 */	li r3, 0x1
/* 81347758 | 38 00 00 03 */	li r0, 0x3
/* 8134775C | 98 7F 00 34 */	stb r3, 0x34(r31)
/* 81347760 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81347764 | 48 00 00 24 */	b .L_81347788
.L_81347768:
/* 81347768 | 38 60 00 06 */	li r3, 0x6
/* 8134776C | 38 00 00 01 */	li r0, 0x1
/* 81347770 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 81347774 | 90 1F 00 4C */	stw r0, 0x4c(r31)
/* 81347778 | 48 00 00 10 */	b .L_81347788
.L_8134777C:
/* 8134777C | 38 00 00 03 */	li r0, 0x3
/* 81347780 | 98 7F 00 34 */	stb r3, 0x34(r31)
/* 81347784 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81347788:
/* 81347788 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134778C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81347790 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81347794 | 7C 08 03 A6 */	mtlr r0
/* 81347798 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134779C | 4E 80 00 20 */	blr
.endfn start_trig_event__Q23ipl12DialogWindowFPCc

# .text:0x2F88 | 0x813477A0 | size: 0x78
# ipl::DialogWindow::get_button_no(const char*)
.fn get_button_no__Q23ipl12DialogWindowFPCc, global
/* 813477A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813477A4 | 7C 08 02 A6 */	mflr r0
/* 813477A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813477AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813477B0 | 48 2B 1D 11 */	bl _savegpr_27
/* 813477B4 | 3F C0 81 63 */	lis r30, mscBtnName__Q23ipl12DialogWindow@ha
/* 813477B8 | 7C 9B 23 78 */	mr r27, r4
/* 813477BC | 3B DE 55 10 */	addi r30, r30, mscBtnName__Q23ipl12DialogWindow@l
/* 813477C0 | 3B A0 FF FF */	li r29, -0x1
/* 813477C4 | 3B 80 00 00 */	li r28, 0x0
/* 813477C8 | 3B E0 00 00 */	li r31, 0x0
.L_813477CC:
/* 813477CC | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813477D0 | 7F 64 DB 78 */	mr r4, r27
/* 813477D4 | 38 A0 00 10 */	li r5, 0x10
/* 813477D8 | 48 2B AD C5 */	bl strncmp
/* 813477DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813477E0 | 40 82 00 0C */	bne .L_813477EC
/* 813477E4 | 7F 9D E3 78 */	mr r29, r28
/* 813477E8 | 48 00 00 14 */	b .L_813477FC
.L_813477EC:
/* 813477EC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813477F0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813477F4 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813477F8 | 41 80 FF D4 */	blt .L_813477CC
.L_813477FC:
/* 813477FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347800 | 7F A3 EB 78 */	mr r3, r29
/* 81347804 | 48 2B 1D 09 */	bl _restgpr_27
/* 81347808 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134780C | 7C 08 03 A6 */	mtlr r0
/* 81347810 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347814 | 4E 80 00 20 */	blr
.endfn get_button_no__Q23ipl12DialogWindowFPCc

# .text:0x3000 | 0x81347818 | size: 0xE4
# ipl::DialogWindow::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q23ipl12DialogWindowFUlUlPv, global
/* 81347818 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134781C | 7C 08 02 A6 */	mflr r0
/* 81347820 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347824 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347828 | 48 2B 1C 9D */	bl _savegpr_28
/* 8134782C | 7C 7C 1B 78 */	mr r28, r3
/* 81347830 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81347834 | 7C BD 2B 78 */	mr r29, r5
/* 81347838 | 7C DE 33 78 */	mr r30, r6
/* 8134783C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347840 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81347844 | 7D 89 03 A6 */	mtctr r12
/* 81347848 | 4E 80 04 21 */	bctrl
/* 8134784C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347850 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81347854 | 7D 89 03 A6 */	mtctr r12
/* 81347858 | 4E 80 04 21 */	bctrl
/* 8134785C | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81347860 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 81347864 | 41 82 00 20 */	beq .L_81347884
/* 81347868 | 40 80 00 10 */	bge .L_81347878
/* 8134786C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81347870 | 40 80 00 38 */	bge .L_813478A8
/* 81347874 | 48 00 00 70 */	b .L_813478E4
.L_81347878:
/* 81347878 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8134787C | 40 80 00 68 */	bge .L_813478E4
/* 81347880 | 48 00 00 18 */	b .L_81347898
.L_81347884:
/* 81347884 | 7F 83 E3 78 */	mr r3, r28
/* 81347888 | 7F E4 FB 78 */	mr r4, r31
/* 8134788C | 7F C5 F3 78 */	mr r5, r30
/* 81347890 | 4B FF F9 F5 */	bl start_point_event__Q23ipl12DialogWindowFPCcPQ33ipl10controller9Interface
/* 81347894 | 48 00 00 50 */	b .L_813478E4
.L_81347898:
/* 81347898 | 7F 83 E3 78 */	mr r3, r28
/* 8134789C | 7F E4 FB 78 */	mr r4, r31
/* 813478A0 | 4B FF FB 59 */	bl start_left_event__Q23ipl12DialogWindowFPCc
/* 813478A4 | 48 00 00 40 */	b .L_813478E4
.L_813478A8:
/* 813478A8 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 813478AC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813478B0 | 40 82 00 34 */	bne .L_813478E4
/* 813478B4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813478B8 | 3C 80 00 10 */	lis r4, 0x10
/* 813478BC | 7F C3 F3 78 */	mr r3, r30
/* 813478C0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813478C4 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813478C8 | 7D 89 03 A6 */	mtctr r12
/* 813478CC | 4E 80 04 21 */	bctrl
/* 813478D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813478D4 | 41 82 00 10 */	beq .L_813478E4
/* 813478D8 | 7F 83 E3 78 */	mr r3, r28
/* 813478DC | 7F E4 FB 78 */	mr r4, r31
/* 813478E0 | 4B FF FC 5D */	bl start_trig_event__Q23ipl12DialogWindowFPCc
.L_813478E4:
/* 813478E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813478E8 | 48 2B 1C 29 */	bl _restgpr_28
/* 813478EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813478F0 | 7C 08 03 A6 */	mtlr r0
/* 813478F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813478F8 | 4E 80 00 20 */	blr
.endfn onEvent__Q23ipl12DialogWindowFUlUlPv

# .text:0x30E4 | 0x813478FC | size: 0x8
# gui::PaneComponent::getPane()
.fn getPane__Q23gui13PaneComponentFv, global
/* 813478FC | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 81347900 | 4E 80 00 20 */	blr
.endfn getPane__Q23gui13PaneComponentFv

# .text:0x30EC | 0x81347904 | size: 0x24
# ipl::DialogWindow::terminate()
.fn terminate__Q23ipl12DialogWindowFv, global
/* 81347904 | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 81347908 | 38 80 00 00 */	li r4, 0x0
/* 8134790C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347910 | 41 82 00 10 */	beq .L_81347920
/* 81347914 | 38 00 00 01 */	li r0, 0x1
/* 81347918 | 38 80 00 01 */	li r4, 0x1
/* 8134791C | 98 03 00 35 */	stb r0, 0x35(r3)
.L_81347920:
/* 81347920 | 7C 83 23 78 */	mr r3, r4
/* 81347924 | 4E 80 00 20 */	blr
.endfn terminate__Q23ipl12DialogWindowFv

# .text:0x3110 | 0x81347928 | size: 0x4
# gui::Interface::draw(float(&)[3][4])
.fn draw__Q23gui9InterfaceFRA3_A4_f, global
/* 81347928 | 4E 80 00 20 */	blr
.endfn draw__Q23gui9InterfaceFRA3_A4_f

# .text:0x3114 | 0x8134792C | size: 0x4
# gui::Interface::create()
.fn create__Q23gui9InterfaceFv, global
/* 8134792C | 4E 80 00 20 */	blr
.endfn create__Q23gui9InterfaceFv

# .text:0x3118 | 0x81347930 | size: 0x54
# gui::Manager::changeEventHandler(gui::EventHandler*)
.fn changeEventHandler__Q23gui7ManagerFPQ23gui12EventHandler, global
/* 81347930 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347934 | 7C 08 02 A6 */	mflr r0
/* 81347938 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8134793C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81347940 | 7C 60 1B 78 */	mr r0, r3
/* 81347944 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81347948 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8134794C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81347950 | 41 82 00 1C */	beq .L_8134796C
/* 81347954 | 7C 83 23 78 */	mr r3, r4
/* 81347958 | 7C 04 03 78 */	mr r4, r0
/* 8134795C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347960 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81347964 | 7D 89 03 A6 */	mtctr r12
/* 81347968 | 4E 80 04 21 */	bctrl
.L_8134796C:
/* 8134796C | 7F E3 FB 78 */	mr r3, r31
/* 81347970 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81347974 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81347978 | 7C 08 03 A6 */	mtlr r0
/* 8134797C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81347980 | 4E 80 00 20 */	blr
.endfn changeEventHandler__Q23gui7ManagerFPQ23gui12EventHandler

# .text:0x316C | 0x81347984 | size: 0x80
# gui::Manager::onEvent(unsigned long, unsigned long, int, void*)
.fn onEvent__Q23gui7ManagerFUlUliPv, global
/* 81347984 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347988 | 7C 08 02 A6 */	mflr r0
/* 8134798C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347990 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347994 | 48 2B 1B 31 */	bl _savegpr_28
/* 81347998 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8134799C | 7C 7C 1B 78 */	mr r28, r3
/* 813479A0 | 7C 9D 23 78 */	mr r29, r4
/* 813479A4 | 7C BE 2B 78 */	mr r30, r5
/* 813479A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813479AC | 7C FF 3B 78 */	mr r31, r7
/* 813479B0 | 41 82 00 3C */	beq .L_813479EC
/* 813479B4 | 7C 03 03 78 */	mr r3, r0
/* 813479B8 | 7C C4 33 78 */	mr r4, r6
/* 813479BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813479C0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813479C4 | 7D 89 03 A6 */	mtctr r12
/* 813479C8 | 4E 80 04 21 */	bctrl
/* 813479CC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813479D0 | 7F A4 EB 78 */	mr r4, r29
/* 813479D4 | 7F C5 F3 78 */	mr r5, r30
/* 813479D8 | 7F E6 FB 78 */	mr r6, r31
/* 813479DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813479E0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813479E4 | 7D 89 03 A6 */	mtctr r12
/* 813479E8 | 4E 80 04 21 */	bctrl
.L_813479EC:
/* 813479EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813479F0 | 48 2B 1B 21 */	bl _restgpr_28
/* 813479F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813479F8 | 7C 08 03 A6 */	mtlr r0
/* 813479FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347A00 | 4E 80 00 20 */	blr
.endfn onEvent__Q23gui7ManagerFUlUliPv

# .text:0x31EC | 0x81347A04 | size: 0x8
# gui::EventHandler::setLatestEventCtrlNo(int)
.fn setLatestEventCtrlNo__Q23gui12EventHandlerFi, global
/* 81347A04 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81347A08 | 4E 80 00 20 */	blr
.endfn setLatestEventCtrlNo__Q23gui12EventHandlerFi

# .text:0x31F4 | 0x81347A0C | size: 0x4
# gui::EventHandler::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q23gui12EventHandlerFUlUlPv, global
/* 81347A0C | 4E 80 00 20 */	blr
.endfn onEvent__Q23gui12EventHandlerFUlUlPv

# .text:0x31F8 | 0x81347A10 | size: 0x8
# gui::Manager::update(int, const KPADStatus*, float, float, void*)
.fn update__Q23gui7ManagerFiPC10KPADStatusffPv, global
/* 81347A10 | 38 60 00 00 */	li r3, 0x0
/* 81347A14 | 4E 80 00 20 */	blr
.endfn update__Q23gui7ManagerFiPC10KPADStatusffPv

# .text:0x3200 | 0x81347A18 | size: 0x8
# gui::PaneManager::setDrawInfo(const nw4r::lyt::DrawInfo*)
.fn setDrawInfo__Q23gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo, global
/* 81347A18 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 81347A1C | 4E 80 00 20 */	blr
.endfn setDrawInfo__Q23gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo

# .text:0x3208 | 0x81347A20 | size: 0x8
# gui::PaneManager::getDrawInfo()
.fn getDrawInfo__Q23gui11PaneManagerFv, global
/* 81347A20 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81347A24 | 4E 80 00 20 */	blr
.endfn getDrawInfo__Q23gui11PaneManagerFv

# .text:0x3210 | 0x81347A28 | size: 0x58
# ipl::gui::PaneManager::~PaneManager()
.fn __dt__Q33ipl3gui11PaneManagerFv, global
/* 81347A28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347A2C | 7C 08 02 A6 */	mflr r0
/* 81347A30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347A34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81347A38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81347A3C | 7C 9F 23 78 */	mr r31, r4
/* 81347A40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81347A44 | 7C 7E 1B 78 */	mr r30, r3
/* 81347A48 | 41 82 00 1C */	beq .L_81347A64
/* 81347A4C | 38 80 00 00 */	li r4, 0x0
/* 81347A50 | 48 02 18 19 */	bl __dt__Q23gui11PaneManagerFv
/* 81347A54 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81347A58 | 40 81 00 0C */	ble .L_81347A64
/* 81347A5C | 7F C3 F3 78 */	mr r3, r30
/* 81347A60 | 48 2B 06 85 */	bl __dl__FPv
.L_81347A64:
/* 81347A64 | 7F C3 F3 78 */	mr r3, r30
/* 81347A68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81347A6C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81347A70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81347A74 | 7C 08 03 A6 */	mtlr r0
/* 81347A78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81347A7C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl3gui11PaneManagerFv

# .text:0x3268 | 0x81347A80 | size: 0x8
# gui::EventHandler::getLatestEventCtrlNo()
.fn getLatestEventCtrlNo__Q23gui12EventHandlerFv, global
/* 81347A80 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81347A84 | 4E 80 00 20 */	blr
.endfn getLatestEventCtrlNo__Q23gui12EventHandlerFv

# .text:0x3270 | 0x81347A88 | size: 0x4
# gui::Interface::draw()
.fn draw__Q23gui9InterfaceFv, global
/* 81347A88 | 4E 80 00 20 */	blr
.endfn draw__Q23gui9InterfaceFv

# .text:0x3274 | 0x81347A8C | size: 0x4
# gui::Interface::calc()
.fn calc__Q23gui9InterfaceFv, global
/* 81347A8C | 4E 80 00 20 */	blr
.endfn calc__Q23gui9InterfaceFv

# .text:0x3278 | 0x81347A90 | size: 0x4
# gui::Interface::init()
.fn init__Q23gui9InterfaceFv, global
/* 81347A90 | 4E 80 00 20 */	blr
.endfn init__Q23gui9InterfaceFv

# .text:0x327C | 0x81347A94 | size: 0x3C
.fn "__sinit_\\iplDialogWindow_cpp", weak
/* 81347A94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347A98 | 7C 08 02 A6 */	mflr r0
/* 81347A9C | C0 22 81 2C */	lfs f1, lbl_8169452C@sda21(r0)
/* 81347AA0 | 38 6D A6 80 */	li r3, lbl_816986C0@sda21
/* 81347AA4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81347AA8 | C0 42 81 30 */	lfs f2, lbl_81694530@sda21(r0)
/* 81347AAC | 4B FF EF 59 */	bl iplDialogWindow_81346A04
/* 81347AB0 | C0 22 81 34 */	lfs f1, lbl_81694534@sda21(r0)
/* 81347AB4 | 38 6D A6 88 */	li r3, lbl_816986C8@sda21
/* 81347AB8 | C0 42 81 38 */	lfs f2, lbl_81694538@sda21(r0)
/* 81347ABC | 4B FF EF 49 */	bl iplDialogWindow_81346A04
/* 81347AC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81347AC4 | 7C 08 03 A6 */	mtlr r0
/* 81347AC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81347ACC | 4E 80 00 20 */	blr
.endfn "__sinit_\\iplDialogWindow_cpp"

# 0x8160D1CC..0x8160D1D0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplDialogWindow_cpp"

# 0x81635510..0x81635A70 | size: 0x560
.data
.balign 8

# .data:0x0 | 0x81635510 | size: 0x42A
# ipl::DialogWindow::mscBtnName
.obj mscBtnName__Q23ipl12DialogWindow, global
	.4byte lbl_81696130
	.4byte lbl_81696137
	.4byte lbl_8169613E
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61302E62
	.4byte 0x726C7974
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F61305F
	.4byte 0x4469616C
	.4byte 0x6F67496E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x305F4469
	.4byte 0x616C6F67
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6130
	.4byte 0x5F576169
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61305F50
	.4byte 0x726F6772
	.4byte 0x65732E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F61312E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6131
	.4byte 0x5F446961
	.4byte 0x6C6F6749
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61315F44
	.4byte 0x69616C6F
	.4byte 0x674F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x315F466F
	.4byte 0x63757342
	.4byte 0x746E5F6F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F466F
	.4byte 0x63757342
	.4byte 0x746E4200
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61315F46
	.4byte 0x6F637573
	.4byte 0x42746E5F
	.4byte 0x6F66662E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6131
	.4byte 0x5F53656C
	.4byte 0x65637442
	.4byte 0x746E5F41
	.4byte 0x632E6272
	.4byte 0x6C616E00
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x42746E42
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F61322E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6132
	.4byte 0x5F446961
	.4byte 0x6C6F6749
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61325F44
	.4byte 0x69616C6F
	.4byte 0x674F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x325F466F
	.4byte 0x63757342
	.4byte 0x746E5F6F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61325F46
	.4byte 0x6F637573
	.4byte 0x42746E5F
	.4byte 0x6F66662E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6132
	.4byte 0x5F53656C
	.4byte 0x65637442
	.4byte 0x746E5F41
	.4byte 0x632E6272
	.4byte 0x6C616E00
	.4byte 0x475F466F
	.4byte 0x63757342
	.4byte 0x746E4100
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x42746E41
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F61332E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6133
	.4byte 0x5F446961
	.4byte 0x6C6F6749
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61335F44
	.4byte 0x69616C6F
	.4byte 0x674F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4469
	.4byte 0x616C6F67
	.4byte 0x57696E64
	.4byte 0x6F775F61
	.4byte 0x335F466F
	.4byte 0x63757342
	.4byte 0x746E5F6F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x61335F46
	.4byte 0x6F637573
	.4byte 0x42746E5F
	.4byte 0x6F66662E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F6133
	.4byte 0x5F53656C
	.4byte 0x65637442
	.4byte 0x746E5F41
	.4byte 0x632E6272
	.4byte 0x6C616E00
	.4byte 0x475F466F
	.4byte 0x63757342
	.4byte 0x746E4300
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x42746E43
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F622E62
	.4byte 0x726C7974
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F625F44
	.4byte 0x69616C6F
	.4byte 0x67496E2E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446961
	.4byte 0x6C6F6757
	.4byte 0x696E646F
	.4byte 0x775F625F
	.4byte 0x4469616C
	.4byte 0x6F674F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x625F466F
	.4byte 0x63757342
	.4byte 0x746E5F6F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x6757696E
	.4byte 0x646F775F
	.4byte 0x625F466F
	.4byte 0x63757342
	.4byte 0x746E5F6F
	.4byte 0x66662E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4469616C
	.4byte 0x6F675769
	.4byte 0x6E646F77
	.4byte 0x5F625F53
	.4byte 0x656C6563
	.4byte 0x7442746E
	.4byte 0x5F41632E
	.4byte 0x62726C61
	.2byte 0x6E00
.endobj mscBtnName__Q23ipl12DialogWindow

# .data:0x42A | 0x8163593A | size: 0x14
.obj lbl_8163593A, global
	.string "WIPL_SE_COPY_FINISH"
.endobj lbl_8163593A

# .data:0x43E | 0x8163594E | size: 0x9
.obj lbl_8163594E, global
	.string "T_Dialog"
.endobj lbl_8163594E

# .data:0x447 | 0x81635957 | size: 0xB
.obj lbl_81635957, global
	.string "N_BtnA_Pic"
.endobj lbl_81635957

# .data:0x452 | 0x81635962 | size: 0x9
.obj lbl_81635962, global
	.string "N_Dialog"
.endobj lbl_81635962

# .data:0x45B | 0x8163596B | size: 0x10
.obj lbl_8163596B, global
	.string "WIPL_SE_COPYING"
.endobj lbl_8163596B

# .data:0x46B | 0x8163597B | size: 0x14
.obj lbl_8163597B, global
	.string "WIPL_SE_INFO_WINDOW"
.endobj lbl_8163597B

# .data:0x47F | 0x8163598F | size: 0x16
.obj lbl_8163598F, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_8163598F

# .data:0x495 | 0x816359A5 | size: 0xF
.obj lbl_816359A5, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_816359A5

# .data:0x4A4 | 0x816359B4 | size: 0x10
.obj lbl_816359B4, global
	.string "WIPL_SE_CANCEL\000"
.endobj lbl_816359B4

# .data:0x4B4 | 0x816359C4 | size: 0x5C
# ipl::gui::PaneManager::__vtable
.obj __vt__Q33ipl3gui11PaneManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q23gui9InterfaceFv
	.4byte init__Q23gui7ManagerFv
	.4byte calc__Q23gui7ManagerFv
	.4byte draw__Q23gui9InterfaceFRA3_A4_f
	.4byte draw__Q23gui7ManagerFv
	.4byte __dt__Q33ipl3gui11PaneManagerFv
	.4byte addComponent__Q23gui7ManagerFPQ23gui9Component
	.4byte getComponent__Q23gui7ManagerFUl
	.4byte update__Q23gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q23gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q23gui7ManagerFUlUliPv
	.4byte setAllComponentTriggerTarget__Q23gui7ManagerFb
	.4byte setEventHandler__Q23gui7ManagerFPQ23gui12EventHandler
	.4byte changeEventHandler__Q23gui7ManagerFPQ23gui12EventHandler
	.4byte setDraggingButton__Q23gui7ManagerFUl
	.4byte createLayoutScene__Q23gui11PaneManagerFRCQ34nw4r3lyt6Layout
	.4byte getPaneComponentByPane__Q23gui11PaneManagerFPQ34nw4r3lyt4Pane
	.4byte getDrawInfo__Q23gui11PaneManagerFv
	.4byte setDrawInfo__Q23gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo
	.4byte setAllBoundingBoxComponentTriggerTarget__Q23gui11PaneManagerFb
	.4byte "walkInChildren__Q23gui11PaneManagerFRQ34nw4r2ut28LinkList<Q34nw4r3lyt4Pane,4>"
.endobj __vt__Q33ipl3gui11PaneManager

# .data:0x510 | 0x81635A20 | size: 0x18
# ipl::DialogWindow::__vtable
.obj __vt__Q23ipl12DialogWindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q23ipl12DialogWindowFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q23ipl12DialogWindow

# .data:0x528 | 0x81635A38 | size: 0x18
# gui::EventHandler::__vtable
.obj __vt__Q23gui12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q23gui12EventHandlerFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q23gui12EventHandler

# .data:0x540 | 0x81635A50 | size: 0x20
# gui::Interface::__vtable
.obj __vt__Q23gui9Interface, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q23gui9InterfaceFv
	.4byte init__Q23gui9InterfaceFv
	.4byte calc__Q23gui9InterfaceFv
	.4byte draw__Q23gui9InterfaceFRA3_A4_f
	.4byte draw__Q23gui9InterfaceFv
	.4byte __dt__Q23gui9InterfaceFv
.endobj __vt__Q23gui9Interface

# 0x81694510..0x81694540 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694510 | size: 0x8
.obj lbl_81694510, global
	.double 4503601774854144
.endobj lbl_81694510

# .sdata2:0x8 | 0x81694518 | size: 0x4
.obj lbl_81694518, global
	.float 255
.endobj lbl_81694518

# .sdata2:0xC | 0x8169451C | size: 0x4
.obj lbl_8169451C, global
	.float 0
.endobj lbl_8169451C

# .sdata2:0x10 | 0x81694520 | size: 0x4
.obj lbl_81694520, global
	.float 34
.endobj lbl_81694520

# .sdata2:0x14 | 0x81694524 | size: 0x4
.obj lbl_81694524, global
	.float 100
.endobj lbl_81694524

# .sdata2:0x18 | 0x81694528 | size: 0x4
.obj lbl_81694528, global
	.float 37
.endobj lbl_81694528

# .sdata2:0x1C | 0x8169452C | size: 0x4
.obj lbl_8169452C, global
	.float 27.2
.endobj lbl_8169452C

# .sdata2:0x20 | 0x81694530 | size: 0x4
.obj lbl_81694530, global
	.float 31.45
.endobj lbl_81694530

# .sdata2:0x24 | 0x81694534 | size: 0x4
.obj lbl_81694534, global
	.float 22.1
.endobj lbl_81694534

# .sdata2:0x28 | 0x81694538 | size: 0x4
.obj lbl_81694538, global
	.float 25.9
.endobj lbl_81694538

# .sdata2:0x2C | 0x8169453C | size: 0x4
.obj gap_09_8169453C_sdata2, global
.hidden gap_09_8169453C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169453C_sdata2

# 0x81696130..0x81696198 | size: 0x68
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696130 | size: 0x7
.obj lbl_81696130, global
	.string "B_BtnB"
.endobj lbl_81696130

# .sdata:0x7 | 0x81696137 | size: 0x7
.obj lbl_81696137, global
	.string "B_BtnA"
.endobj lbl_81696137

# .sdata:0xE | 0x8169613E | size: 0x7
.obj lbl_8169613E, global
	.string "B_BtnC"
.endobj lbl_8169613E

# .sdata:0x15 | 0x81696145 | size: 0x4
.obj lbl_81696145, global
	.string "arc"
.endobj lbl_81696145

# .sdata:0x19 | 0x81696149 | size: 0x8
.obj lbl_81696149, global
	.string "G_InOut"
.endobj lbl_81696149

# .sdata:0x21 | 0x81696151 | size: 0x7
.obj lbl_81696151, global
	.string "G_Wait"
.endobj lbl_81696151

# .sdata:0x28 | 0x81696158 | size: 0x7
.obj lbl_81696158, global
	.string "G_Prog"
.endobj lbl_81696158

# .sdata:0x2F | 0x8169615F | size: 0x8
.obj lbl_8169615F, global
	.string "Wait_00"
.endobj lbl_8169615F

# .sdata:0x37 | 0x81696167 | size: 0x7
.obj lbl_81696167, global
	.string "N_Prog"
.endobj lbl_81696167

# .sdata:0x3E | 0x8169616E | size: 0x7
.obj lbl_8169616E, global
	.string "N_BtnA"
.endobj lbl_8169616E

# .sdata:0x45 | 0x81696175 | size: 0x7
.obj lbl_81696175, global
	.string "T_BtnA"
.endobj lbl_81696175

# .sdata:0x4C | 0x8169617C | size: 0x7
.obj lbl_8169617C, global
	.string "T_BtnB"
.endobj lbl_8169617C

# .sdata:0x53 | 0x81696183 | size: 0x7
.obj lbl_81696183, global
	.string "T_BtnC"
.endobj lbl_81696183

# .sdata:0x5A | 0x8169618A | size: 0x6
.obj lbl_8169618A, global
	.string "Shade"
.endobj lbl_8169618A

# .sdata:0x60 | 0x81696190 | size: 0x6
.obj lbl_81696190, global
	.string "N_Top"
.endobj lbl_81696190

# .sdata:0x66 | 0x81696196 | size: 0x2
.obj gap_11_81696196_sdata, global
.hidden gap_11_81696196_sdata
	.2byte 0x0000
.endobj gap_11_81696196_sdata

# 0x816986C0..0x816986D8 | size: 0x18
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986C0 | size: 0x8
.obj lbl_816986C0, global
	.skip 0x8
.endobj lbl_816986C0

# .sbss:0x8 | 0x816986C8 | size: 0x8
.obj lbl_816986C8, global
	.skip 0x8
.endobj lbl_816986C8

# .sbss:0x10 | 0x816986D0 | size: 0x1
.obj lbl_816986D0, global
	.skip 0x1
.endobj lbl_816986D0

# .sbss:0x11 | 0x816986D1 | size: 0x7
.obj gap_12_816986D1_sbss, global
.hidden gap_12_816986D1_sbss
	.skip 0x7
.endobj gap_12_816986D1_sbss
