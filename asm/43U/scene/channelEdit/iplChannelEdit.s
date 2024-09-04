.include "macros.inc"
.file "iplChannelEdit.cpp"

# 0x813A0400..0x813A3864 | size: 0x3464
.text
.balign 4

# .text:0x0 | 0x813A0400 | size: 0x88
# ipl::scene::ChannelEdit::ChannelEdit(EGG::Heap*)
.fn __ct__Q33ipl5scene11ChannelEditFPQ23EGG4Heap, global
/* 813A0400 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A0404 | 7C 08 02 A6 */	mflr r0
/* 813A0408 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A040C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A0410 | 7C 7F 1B 78 */	mr r31, r3
/* 813A0414 | 48 06 97 D9 */	bl fn_81409BEC
/* 813A0418 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene11ChannelEdit@ha
/* 813A041C | 38 00 00 00 */	li r0, 0x0
/* 813A0420 | 38 84 CC 1C */	addi r4, r4, __vt__Q33ipl5scene11ChannelEdit@l
/* 813A0424 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A0428 | 38 64 00 1C */	addi r3, r4, 0x1c
/* 813A042C | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813A0430 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A0434 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 813A0438 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813A043C | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 813A0440 | 90 1F 00 BC */	stw r0, 0xbc(r31)
/* 813A0444 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 813A0448 | 90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 813A044C | 90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 813A0450 | 98 1F 00 CC */	stb r0, 0xcc(r31)
/* 813A0454 | 98 1F 00 CD */	stb r0, 0xcd(r31)
/* 813A0458 | 90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 813A045C | 90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 813A0460 | 4B F9 38 29 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813A0464 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813A0468 | 38 80 00 34 */	li r4, 0x34
/* 813A046C | 48 17 1B F1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A0470 | 7F E3 FB 78 */	mr r3, r31
/* 813A0474 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A0478 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A047C | 7C 08 03 A6 */	mtlr r0
/* 813A0480 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A0484 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11ChannelEditFPQ23EGG4Heap

# .text:0x88 | 0x813A0488 | size: 0x140
# ipl::scene::ChannelEdit::~ChannelEdit()
.fn __dt__Q33ipl5scene11ChannelEditFv, global
/* 813A0488 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A048C | 7C 08 02 A6 */	mflr r0
/* 813A0490 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A0494 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0498 | 48 25 90 2D */	bl _savegpr_28
/* 813A049C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A04A0 | 7C 7C 1B 78 */	mr r28, r3
/* 813A04A4 | 7C 9D 23 78 */	mr r29, r4
/* 813A04A8 | 41 82 01 04 */	beq .L_813A05AC
/* 813A04AC | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 813A04B0 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene11ChannelEdit@ha
/* 813A04B4 | 38 84 CC 1C */	addi r4, r4, __vt__Q33ipl5scene11ChannelEdit@l
/* 813A04B8 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813A04BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813A04C0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A04C4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A04C8 | 41 82 00 1C */	beq .L_813A04E4
/* 813A04CC | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813A04D0 | 7C A3 2B 78 */	mr r3, r5
/* 813A04D4 | 38 80 00 01 */	li r4, 0x1
/* 813A04D8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813A04DC | 7D 89 03 A6 */	mtctr r12
/* 813A04E0 | 4E 80 04 21 */	bctrl
.L_813A04E4:
/* 813A04E4 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 813A04E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A04EC | 41 82 00 18 */	beq .L_813A0504
/* 813A04F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A04F4 | 38 80 00 01 */	li r4, 0x1
/* 813A04F8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813A04FC | 7D 89 03 A6 */	mtctr r12
/* 813A0500 | 4E 80 04 21 */	bctrl
.L_813A0504:
/* 813A0504 | 80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 813A0508 | 38 80 00 01 */	li r4, 0x1
/* 813A050C | 48 00 75 69 */	bl __dt__Q33ipl5scene17NandSDCardManagerFv
/* 813A0510 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813A0514 | 38 80 00 00 */	li r4, 0x0
/* 813A0518 | 48 17 1D C5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A051C | 7C 7F 1B 78 */	mr r31, r3
/* 813A0520 | 48 00 00 40 */	b .L_813A0560
.L_813A0524:
/* 813A0524 | 7F E4 FB 78 */	mr r4, r31
/* 813A0528 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813A052C | 48 17 1D 45 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A0530 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A0534 | 41 82 00 1C */	beq .L_813A0550
/* 813A0538 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813A053C | 7F E3 FB 78 */	mr r3, r31
/* 813A0540 | 38 80 00 01 */	li r4, 0x1
/* 813A0544 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813A0548 | 7D 89 03 A6 */	mtctr r12
/* 813A054C | 4E 80 04 21 */	bctrl
.L_813A0550:
/* 813A0550 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813A0554 | 38 80 00 00 */	li r4, 0x0
/* 813A0558 | 48 17 1D 85 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A055C | 7C 7F 1B 78 */	mr r31, r3
.L_813A0560:
/* 813A0560 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A0564 | 40 82 FF C0 */	bne .L_813A0524
/* 813A0568 | 3B C0 00 00 */	li r30, 0x0
/* 813A056C | 3B E0 00 00 */	li r31, 0x0
.L_813A0570:
/* 813A0570 | 7C 7C FA 14 */	add r3, r28, r31
/* 813A0574 | 38 80 00 01 */	li r4, 0x1
/* 813A0578 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813A057C | 48 03 0F C1 */	bl __dt__Q33ipl5scene11TextBalloonFv
/* 813A0580 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813A0584 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813A0588 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 813A058C | 41 80 FF E4 */	blt .L_813A0570
/* 813A0590 | 7F 83 E3 78 */	mr r3, r28
/* 813A0594 | 38 80 00 00 */	li r4, 0x0
/* 813A0598 | 48 06 96 CD */	bl fn_81409C64
/* 813A059C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813A05A0 | 40 81 00 0C */	ble .L_813A05AC
/* 813A05A4 | 7F 83 E3 78 */	mr r3, r28
/* 813A05A8 | 48 25 7B 3D */	bl __dl__FPv
.L_813A05AC:
/* 813A05AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A05B0 | 7F 83 E3 78 */	mr r3, r28
/* 813A05B4 | 48 25 8F 5D */	bl _restgpr_28
/* 813A05B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A05BC | 7C 08 03 A6 */	mtlr r0
/* 813A05C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A05C4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11ChannelEditFv

# .text:0x1C8 | 0x813A05C8 | size: 0xB8
# ipl::scene::ChannelEdit::prepare()
.fn prepare__Q33ipl5scene11ChannelEditFv, global
/* 813A05C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A05CC | 7C 08 02 A6 */	mflr r0
/* 813A05D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A05D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A05D8 | 48 25 8E F1 */	bl _savegpr_29
/* 813A05DC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813A05E0 | 3F C0 81 65 */	lis r30, lbl_8164C688@ha
/* 813A05E4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813A05E8 | 7C 7D 1B 78 */	mr r29, r3
/* 813A05EC | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813A05F0 | 3B DE C6 88 */	addi r30, r30, lbl_8164C688@l
/* 813A05F4 | 4B FC 04 E5 */	bl abort__Q33ipl3bs27ManagerFv
/* 813A05F8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A05FC | 38 BE 02 D0 */	addi r5, r30, 0x2d0
/* 813A0600 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813A0604 | 38 C0 00 00 */	li r6, 0x0
/* 813A0608 | 4B F9 D2 AD */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813A060C | 90 7D 00 58 */	stw r3, 0x58(r29)
/* 813A0610 | 38 BE 02 DD */	addi r5, r30, 0x2dd
/* 813A0614 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813A0618 | 38 C0 00 00 */	li r6, 0x0
/* 813A061C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A0620 | 4B F9 D2 95 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813A0624 | 90 7D 00 5C */	stw r3, 0x5c(r29)
/* 813A0628 | 38 BE 02 E9 */	addi r5, r30, 0x2e9
/* 813A062C | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813A0630 | 38 C0 00 00 */	li r6, 0x0
/* 813A0634 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A0638 | 38 E0 00 00 */	li r7, 0x0
/* 813A063C | 39 00 00 00 */	li r8, 0x0
/* 813A0640 | 4B F9 CE A9 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813A0644 | 90 7D 00 60 */	stw r3, 0x60(r29)
/* 813A0648 | 38 BE 02 FA */	addi r5, r30, 0x2fa
/* 813A064C | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813A0650 | 38 C0 00 00 */	li r6, 0x0
/* 813A0654 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A0658 | 38 E0 00 00 */	li r7, 0x0
/* 813A065C | 39 00 00 00 */	li r8, 0x0
/* 813A0660 | 4B F9 CE 89 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813A0664 | 90 7D 00 64 */	stw r3, 0x64(r29)
/* 813A0668 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A066C | 48 25 8E A9 */	bl _restgpr_29
/* 813A0670 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A0674 | 7C 08 03 A6 */	mtlr r0
/* 813A0678 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A067C | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene11ChannelEditFv

# .text:0x280 | 0x813A0680 | size: 0x28C
# ipl::scene::ChannelEdit::create()
.fn create__Q33ipl5scene11ChannelEditFv, global
/* 813A0680 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813A0684 | 7C 08 02 A6 */	mflr r0
/* 813A0688 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813A068C | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813A0690 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813A0694 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813A0698 | 48 25 8E 25 */	bl _savegpr_26
/* 813A069C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A06A0 | 3F E0 81 65 */	lis r31, lbl_8164C688@ha
/* 813A06A4 | 3B 84 90 08 */	addi r28, r4, smArg__Q23ipl6System@l
/* 813A06A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A06AC | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 813A06B0 | 3B FF C6 88 */	addi r31, r31, lbl_8164C688@l
/* 813A06B4 | 48 25 79 85 */	bl fn_815F8038
/* 813A06B8 | 48 19 55 E1 */	bl fn_81535C98
/* 813A06BC | 7C 7B 1B 78 */	mr r27, r3
/* 813A06C0 | 48 00 00 18 */	b .L_813A06D8
.L_813A06C4:
/* 813A06C4 | 4B FC 01 D5 */	bl update__Q33ipl3bs27ManagerFv
/* 813A06C8 | 38 7F 03 0C */	addi r3, r31, 0x30c
/* 813A06CC | 4C C6 31 82 */	crclr cr1eq
/* 813A06D0 | 48 18 DF D1 */	bl OSReport
/* 813A06D4 | 48 19 C9 15 */	bl VIWaitForRetrace
.L_813A06D8:
/* 813A06D8 | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813A06DC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813A06E0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813A06E4 | 40 82 FF E0 */	bne .L_813A06C4
/* 813A06E8 | 48 19 55 B1 */	bl fn_81535C98
/* 813A06EC | 3C 80 80 00 */	lis r4, 0x8000
/* 813A06F0 | 7C BB 18 50 */	subf r5, r27, r3
/* 813A06F4 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813A06F8 | 38 00 03 E8 */	li r0, 0x3e8
/* 813A06FC | 38 7F 03 25 */	addi r3, r31, 0x325
/* 813A0700 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813A0704 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813A0708 | 7C 85 03 96 */	divwu r4, r5, r0
/* 813A070C | 4C C6 31 82 */	crclr cr1eq
/* 813A0710 | 48 18 DF 91 */	bl OSReport
/* 813A0714 | 38 80 00 02 */	li r4, 0x2
/* 813A0718 | 38 60 00 01 */	li r3, 0x1
/* 813A071C | 48 21 E7 9D */	bl fn_815BEEB8
/* 813A0720 | 38 60 00 38 */	li r3, 0x38
/* 813A0724 | 48 25 79 79 */	bl __nw__FUl
/* 813A0728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A072C | 41 82 00 18 */	beq .L_813A0744
/* 813A0730 | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 813A0734 | 38 FF 03 40 */	addi r7, r31, 0x340
/* 813A0738 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813A073C | 38 CD 87 B8 */	li r6, lbl_816967F8@sda21
/* 813A0740 | 48 00 31 25 */	bl __ct__Q33ipl5scene11ChanAppBaseFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813A0744:
/* 813A0744 | 90 7E 00 68 */	stw r3, 0x68(r30)
/* 813A0748 | 48 00 39 B1 */	bl anmFadein__Q33ipl5scene11ChanAppBaseFv
/* 813A074C | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813A0750 | 3B 80 00 00 */	li r28, 0x0
/* 813A0754 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
.L_813A0758:
/* 813A0758 | 38 60 00 4C */	li r3, 0x4c
/* 813A075C | 48 25 79 41 */	bl __nw__FUl
/* 813A0760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0764 | 41 82 00 18 */	beq .L_813A077C
/* 813A0768 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813A076C | 38 FF 03 5A */	addi r7, r31, 0x35a
/* 813A0770 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813A0774 | 38 CD 87 B8 */	li r6, lbl_816967F8@sda21
/* 813A0778 | 48 00 3F 99 */	bl __ct__Q33ipl5scene10ChanAppBoxFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813A077C:
/* 813A077C | 7C 64 1B 78 */	mr r4, r3
/* 813A0780 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A0784 | 48 17 18 F1 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A0788 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813A078C | 2C 1C 00 2D */	cmpwi r28, 0x2d
/* 813A0790 | 41 80 FF C8 */	blt .L_813A0758
/* 813A0794 | 38 60 00 84 */	li r3, 0x84
/* 813A0798 | 48 25 79 05 */	bl __nw__FUl
/* 813A079C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A07A0 | 41 82 00 20 */	beq .L_813A07C0
/* 813A07A4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A07A8 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813A07AC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A07B0 | 38 FF 03 74 */	addi r7, r31, 0x374
/* 813A07B4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A07B8 | 38 CD 87 B8 */	li r6, lbl_816967F8@sda21
/* 813A07BC | 48 00 4D 21 */	bl __ct__Q33ipl5scene11ChanAppEditFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813A07C0:
/* 813A07C0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A07C4 | 90 7E 00 6C */	stw r3, 0x6c(r30)
/* 813A07C8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A07CC | 3C 60 00 0F */	lis r3, 0xf
/* 813A07D0 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A07D4 | 38 63 87 A8 */	subi r3, r3, 0x7858
/* 813A07D8 | 38 A0 00 20 */	li r5, 0x20
/* 813A07DC | 48 25 78 D5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A07E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A07E4 | 41 82 00 0C */	beq .L_813A07F0
/* 813A07E8 | 38 80 00 01 */	li r4, 0x1
/* 813A07EC | 48 00 6E 51 */	bl __ct__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager4Mode
.L_813A07F0:
/* 813A07F0 | 90 7E 00 7C */	stw r3, 0x7c(r30)
/* 813A07F4 | 3B 7F 02 1C */	addi r27, r31, 0x21c
/* 813A07F8 | C3 E2 84 F4 */	lfs f31, lbl_816948F4@sda21(r0)
/* 813A07FC | 3B 40 00 00 */	li r26, 0x0
/* 813A0800 | 3B A0 00 00 */	li r29, 0x0
.L_813A0804:
/* 813A0804 | 80 DE 00 68 */	lwz r6, 0x68(r30)
/* 813A0808 | 7C 7B EA 14 */	add r3, r27, r29
/* 813A080C | 80 83 00 3C */	lwz r4, 0x3c(r3)
/* 813A0810 | 38 A0 00 01 */	li r5, 0x1
/* 813A0814 | 80 66 00 04 */	lwz r3, 0x4(r6)
/* 813A0818 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A081C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A0820 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A0824 | 7D 89 03 A6 */	mtctr r12
/* 813A0828 | 4E 80 04 21 */	bctrl
/* 813A082C | C0 22 84 F0 */	lfs f1, lbl_816948F0@sda21(r0)
/* 813A0830 | 7C 7C 1B 78 */	mr r28, r3
/* 813A0834 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813A0838 | FC 40 08 90 */	fmr f2, f1
/* 813A083C | FC 60 08 90 */	fmr f3, f1
/* 813A0840 | 4B FD 40 45 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813A0844 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813A0848 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 813A084C | 7C 85 23 78 */	mr r5, r4
/* 813A0850 | 48 1A 0C 6D */	bl fn_815414BC
/* 813A0854 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813A0858 | 38 60 00 3C */	li r3, 0x3c
/* 813A085C | EC 00 F8 28 */	fsubs f0, f0, f31
/* 813A0860 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813A0864 | 48 25 78 39 */	bl __nw__FUl
/* 813A0868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A086C | 41 82 00 3C */	beq .L_813A08A8
/* 813A0870 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 813A0874 | 38 FF 03 8D */	addi r7, r31, 0x38d
/* 813A0878 | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813A087C | 39 01 00 08 */	addi r8, r1, 0x8
/* 813A0880 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813A0884 | 38 CD 87 B8 */	li r6, lbl_816967F8@sda21
/* 813A0888 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813A088C | C0 22 84 F8 */	lfs f1, lbl_816948F8@sda21(r0)
/* 813A0890 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 813A0894 | C0 42 84 FC */	lfs f2, lbl_816948FC@sda21(r0)
/* 813A0898 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813A089C | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813A08A0 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813A08A4 | 48 03 0B 69 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
.L_813A08A8:
/* 813A08A8 | 7F 9E EA 14 */	add r28, r30, r29
/* 813A08AC | 38 1A 00 0F */	addi r0, r26, 0xf
/* 813A08B0 | 90 7C 00 80 */	stw r3, 0x80(r28)
/* 813A08B4 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A08B8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813A08BC | 48 17 1A 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A08C0 | 80 1C 00 80 */	lwz r0, 0x80(r28)
/* 813A08C4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813A08C8 | 2C 1A 00 0F */	cmpwi r26, 0xf
/* 813A08CC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813A08D0 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 813A08D4 | 41 80 FF 30 */	blt .L_813A0804
/* 813A08D8 | 7F C3 F3 78 */	mr r3, r30
/* 813A08DC | 38 80 00 01 */	li r4, 0x1
/* 813A08E0 | 48 00 04 79 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A08E4 | 38 00 00 01 */	li r0, 0x1
/* 813A08E8 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 813A08EC | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813A08F0 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813A08F4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813A08F8 | 48 25 8C 11 */	bl _restgpr_26
/* 813A08FC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813A0900 | 7C 08 03 A6 */	mtlr r0
/* 813A0904 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813A0908 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene11ChannelEditFv

# .text:0x50C | 0x813A090C | size: 0x254
# ipl::scene::ChannelEdit::calc()
.fn calc__Q33ipl5scene11ChannelEditFv, global
/* 813A090C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A0910 | 7C 08 02 A6 */	mflr r0
/* 813A0914 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A0918 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A091C | 48 25 8B AD */	bl _savegpr_29
/* 813A0920 | 7C 7D 1B 78 */	mr r29, r3
/* 813A0924 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A0928 | 48 00 72 8D */	bl calc__Q33ipl5scene17NandSDCardManagerFv
/* 813A092C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A0930 | 38 80 00 13 */	li r4, 0x13
/* 813A0934 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A0938 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A093C | 48 06 A7 FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A0940 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813A0944 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813A0948 | 40 82 02 00 */	bne .L_813A0B48
/* 813A094C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813A0950 | 48 00 36 21 */	bl calc__Q33ipl5scene11ChanAppBaseFv
/* 813A0954 | 3B E0 00 00 */	li r31, 0x0
/* 813A0958 | 48 00 00 0C */	b .L_813A0964
.L_813A095C:
/* 813A095C | 7F E3 FB 78 */	mr r3, r31
/* 813A0960 | 48 00 41 55 */	bl calc__Q33ipl5scene10ChanAppBoxFv
.L_813A0964:
/* 813A0964 | 7F E4 FB 78 */	mr r4, r31
/* 813A0968 | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813A096C | 48 17 19 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A0970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0974 | 7C 7F 1B 78 */	mr r31, r3
/* 813A0978 | 40 82 FF E4 */	bne .L_813A095C
/* 813A097C | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0980 | 48 00 51 59 */	bl calc__Q33ipl5scene11ChanAppEditFv
/* 813A0984 | 3B C0 00 00 */	li r30, 0x0
/* 813A0988 | 3B E0 00 00 */	li r31, 0x0
.L_813A098C:
/* 813A098C | 7C 7D FA 14 */	add r3, r29, r31
/* 813A0990 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813A0994 | 48 03 0C 19 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813A0998 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813A099C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813A09A0 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 813A09A4 | 41 80 FF E8 */	blt .L_813A098C
/* 813A09A8 | 80 1D 00 54 */	lwz r0, 0x54(r29)
/* 813A09AC | 28 00 00 1F */	cmplwi r0, 0x1f
/* 813A09B0 | 41 81 01 98 */	bgt .L_813A0B48
/* 813A09B4 | 3C 60 81 65 */	lis r3, jumptable_8164CA30@ha
/* 813A09B8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813A09BC | 38 63 CA 30 */	addi r3, r3, jumptable_8164CA30@l
/* 813A09C0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813A09C4 | 7C 69 03 A6 */	mtctr r3
/* 813A09C8 | 4E 80 04 20 */	bctr
.L_813A09CC:
/* 813A09CC | 7F A3 EB 78 */	mr r3, r29
/* 813A09D0 | 48 00 15 61 */	bl on_normal__Q33ipl5scene11ChannelEditFv
/* 813A09D4 | 48 00 01 74 */	b .L_813A0B48
.L_813A09D8:
/* 813A09D8 | 7F A3 EB 78 */	mr r3, r29
/* 813A09DC | 48 00 17 3D */	bl on_fadein1st__Q33ipl5scene11ChannelEditFv
/* 813A09E0 | 48 00 01 68 */	b .L_813A0B48
.L_813A09E4:
/* 813A09E4 | 7F A3 EB 78 */	mr r3, r29
/* 813A09E8 | 48 00 17 B5 */	bl on_fadein2nd__Q33ipl5scene11ChannelEditFv
/* 813A09EC | 48 00 01 5C */	b .L_813A0B48
.L_813A09F0:
/* 813A09F0 | 7F A3 EB 78 */	mr r3, r29
/* 813A09F4 | 48 00 18 01 */	bl on_fadeout1st__Q33ipl5scene11ChannelEditFv
/* 813A09F8 | 48 00 01 50 */	b .L_813A0B48
.L_813A09FC:
/* 813A09FC | 7F A3 EB 78 */	mr r3, r29
/* 813A0A00 | 48 00 18 21 */	bl on_fadeout2nd__Q33ipl5scene11ChannelEditFv
/* 813A0A04 | 48 00 01 44 */	b .L_813A0B48
.L_813A0A08:
/* 813A0A08 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A0C | 48 00 18 5D */	bl on_scroll_r__Q33ipl5scene11ChannelEditFv
/* 813A0A10 | 48 00 01 38 */	b .L_813A0B48
.L_813A0A14:
/* 813A0A14 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A18 | 48 00 19 1D */	bl on_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A0A1C | 48 00 01 2C */	b .L_813A0B48
.L_813A0A20:
/* 813A0A20 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A24 | 48 00 19 B5 */	bl on_change_tag1st__Q33ipl5scene11ChannelEditFv
/* 813A0A28 | 48 00 01 20 */	b .L_813A0B48
.L_813A0A2C:
/* 813A0A2C | 7F A3 EB 78 */	mr r3, r29
/* 813A0A30 | 48 00 1B 6D */	bl on_change_tag2nd__Q33ipl5scene11ChannelEditFv
/* 813A0A34 | 48 00 01 14 */	b .L_813A0B48
.L_813A0A38:
/* 813A0A38 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A3C | 48 00 1B B9 */	bl on_trig_copy__Q33ipl5scene11ChannelEditFv
/* 813A0A40 | 48 00 01 08 */	b .L_813A0B48
.L_813A0A44:
/* 813A0A44 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A48 | 48 00 1D FD */	bl on_edit__Q33ipl5scene11ChannelEditFv
/* 813A0A4C | 48 00 00 FC */	b .L_813A0B48
.L_813A0A50:
/* 813A0A50 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A54 | 48 00 1D D5 */	bl on_edit_fadein__Q33ipl5scene11ChannelEditFv
/* 813A0A58 | 48 00 00 F0 */	b .L_813A0B48
.L_813A0A5C:
/* 813A0A5C | 7F A3 EB 78 */	mr r3, r29
/* 813A0A60 | 48 00 1E 59 */	bl on_edit_fadeout1st__Q33ipl5scene11ChannelEditFv
/* 813A0A64 | 48 00 00 E4 */	b .L_813A0B48
.L_813A0A68:
/* 813A0A68 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A6C | 48 00 1E A5 */	bl on_edit_fadeout2nd__Q33ipl5scene11ChannelEditFv
/* 813A0A70 | 48 00 00 D8 */	b .L_813A0B48
.L_813A0A74:
/* 813A0A74 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A78 | 48 00 1E B5 */	bl on_verify1st__Q33ipl5scene11ChannelEditFv
/* 813A0A7C | 48 00 00 CC */	b .L_813A0B48
.L_813A0A80:
/* 813A0A80 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A84 | 48 00 1F 21 */	bl on_verify2nd__Q33ipl5scene11ChannelEditFv
/* 813A0A88 | 48 00 00 C0 */	b .L_813A0B48
.L_813A0A8C:
/* 813A0A8C | 7F A3 EB 78 */	mr r3, r29
/* 813A0A90 | 48 00 1F 31 */	bl on_verify_copy__Q33ipl5scene11ChannelEditFv
/* 813A0A94 | 48 00 00 B4 */	b .L_813A0B48
.L_813A0A98:
/* 813A0A98 | 7F A3 EB 78 */	mr r3, r29
/* 813A0A9C | 48 00 20 79 */	bl on_verify_del__Q33ipl5scene11ChannelEditFv
/* 813A0AA0 | 48 00 00 A8 */	b .L_813A0B48
.L_813A0AA4:
/* 813A0AA4 | 7F A3 EB 78 */	mr r3, r29
/* 813A0AA8 | 48 00 21 61 */	bl on_verify_format__Q33ipl5scene11ChannelEditFv
/* 813A0AAC | 48 00 00 9C */	b .L_813A0B48
.L_813A0AB0:
/* 813A0AB0 | 7F A3 EB 78 */	mr r3, r29
/* 813A0AB4 | 48 00 21 F5 */	bl on_end_format__Q33ipl5scene11ChannelEditFv
/* 813A0AB8 | 48 00 00 90 */	b .L_813A0B48
.L_813A0ABC:
/* 813A0ABC | 7F A3 EB 78 */	mr r3, r29
/* 813A0AC0 | 48 00 22 69 */	bl on_end_del__Q33ipl5scene11ChannelEditFv
/* 813A0AC4 | 48 00 00 84 */	b .L_813A0B48
.L_813A0AC8:
/* 813A0AC8 | 7F A3 EB 78 */	mr r3, r29
/* 813A0ACC | 48 00 23 25 */	bl on_sd_mount__Q33ipl5scene11ChannelEditFv
/* 813A0AD0 | 48 00 00 78 */	b .L_813A0B48
.L_813A0AD4:
/* 813A0AD4 | 7F A3 EB 78 */	mr r3, r29
/* 813A0AD8 | 48 00 23 61 */	bl on_sd_message1st__Q33ipl5scene11ChannelEditFv
/* 813A0ADC | 48 00 00 6C */	b .L_813A0B48
.L_813A0AE0:
/* 813A0AE0 | 7F A3 EB 78 */	mr r3, r29
/* 813A0AE4 | 48 00 23 FD */	bl on_sd_message2nd__Q33ipl5scene11ChannelEditFv
/* 813A0AE8 | 48 00 00 60 */	b .L_813A0B48
.L_813A0AEC:
/* 813A0AEC | 7F A3 EB 78 */	mr r3, r29
/* 813A0AF0 | 48 00 24 0D */	bl on_sd_message3rd__Q33ipl5scene11ChannelEditFv
/* 813A0AF4 | 48 00 00 54 */	b .L_813A0B48
.L_813A0AF8:
/* 813A0AF8 | 7F A3 EB 78 */	mr r3, r29
/* 813A0AFC | 48 00 24 69 */	bl on_process__Q33ipl5scene11ChannelEditFv
/* 813A0B00 | 48 00 00 48 */	b .L_813A0B48
.L_813A0B04:
/* 813A0B04 | 7F A3 EB 78 */	mr r3, r29
/* 813A0B08 | 48 00 26 89 */	bl on_end_process__Q33ipl5scene11ChannelEditFv
/* 813A0B0C | 48 00 00 3C */	b .L_813A0B48
.L_813A0B10:
/* 813A0B10 | 7F A3 EB 78 */	mr r3, r29
/* 813A0B14 | 48 00 27 2D */	bl on_exist_app__Q33ipl5scene11ChannelEditFv
/* 813A0B18 | 48 00 00 30 */	b .L_813A0B48
.L_813A0B1C:
/* 813A0B1C | 7F A3 EB 78 */	mr r3, r29
/* 813A0B20 | 48 00 27 F9 */	bl on_sd_mount_only__Q33ipl5scene11ChannelEditFv
/* 813A0B24 | 48 00 00 24 */	b .L_813A0B48
.L_813A0B28:
/* 813A0B28 | 7F A3 EB 78 */	mr r3, r29
/* 813A0B2C | 48 00 28 55 */	bl iplChannelEdit_813A3380__Q33ipl5scene11ChannelEditFv
/* 813A0B30 | 48 00 00 18 */	b .L_813A0B48
.L_813A0B34:
/* 813A0B34 | 7F A3 EB 78 */	mr r3, r29
/* 813A0B38 | 48 00 2A ED */	bl iplChannelEdit_813A3624__Q33ipl5scene11ChannelEditFv
/* 813A0B3C | 48 00 00 0C */	b .L_813A0B48
.L_813A0B40:
/* 813A0B40 | 7F A3 EB 78 */	mr r3, r29
/* 813A0B44 | 48 00 2C 51 */	bl iplChannelEdit_813A3794__Q33ipl5scene11ChannelEditFv
.L_813A0B48:
/* 813A0B48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0B4C | 48 25 89 C9 */	bl _restgpr_29
/* 813A0B50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A0B54 | 7C 08 03 A6 */	mtlr r0
/* 813A0B58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A0B5C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene11ChannelEditFv

# .text:0x760 | 0x813A0B60 | size: 0xD4
# ipl::scene::ChannelEdit::setpos_chanapp_box()
.fn setpos_chanapp_box__Q33ipl5scene11ChannelEditFv, global
/* 813A0B60 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A0B64 | 7C 08 02 A6 */	mflr r0
/* 813A0B68 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A0B6C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A0B70 | 48 25 89 4D */	bl _savegpr_26
/* 813A0B74 | 3F A0 81 65 */	lis r29, lbl_8164C8A4@ha
/* 813A0B78 | 7C 7A 1B 78 */	mr r26, r3
/* 813A0B7C | 3B BD C8 A4 */	addi r29, r29, lbl_8164C8A4@l
/* 813A0B80 | 3B 80 00 00 */	li r28, 0x0
/* 813A0B84 | 3B E0 00 00 */	li r31, 0x0
/* 813A0B88 | 3B 60 00 00 */	li r27, 0x0
/* 813A0B8C | 48 00 00 78 */	b .L_813A0C04
.L_813A0B90:
/* 813A0B90 | 80 7A 00 68 */	lwz r3, 0x68(r26)
/* 813A0B94 | 38 A0 00 01 */	li r5, 0x1
/* 813A0B98 | 7C 9D F8 2E */	lwzx r4, r29, r31
/* 813A0B9C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A0BA0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A0BA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A0BA8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A0BAC | 7D 89 03 A6 */	mtctr r12
/* 813A0BB0 | 4E 80 04 21 */	bctrl
/* 813A0BB4 | C0 22 84 F0 */	lfs f1, lbl_816948F0@sda21(r0)
/* 813A0BB8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A0BBC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A0BC0 | FC 40 08 90 */	fmr f2, f1
/* 813A0BC4 | FC 60 08 90 */	fmr f3, f1
/* 813A0BC8 | 4B FD 3C BD */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813A0BCC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A0BD0 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 813A0BD4 | 7C 85 23 78 */	mr r5, r4
/* 813A0BD8 | 48 1A 08 E5 */	bl fn_815414BC
/* 813A0BDC | 7F 63 DB 78 */	mr r3, r27
/* 813A0BE0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813A0BE4 | 38 8D 87 D8 */	li r4, lbl_81696818@sda21
/* 813A0BE8 | 48 00 69 81 */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813A0BEC | 80 7B 00 44 */	lwz r3, 0x44(r27)
/* 813A0BF0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813A0BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0BF8 | 41 82 00 0C */	beq .L_813A0C04
/* 813A0BFC | 48 03 0A 6D */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813A0C00 | 9B 9B 00 48 */	stb r28, 0x48(r27)
.L_813A0C04:
/* 813A0C04 | 7F 64 DB 78 */	mr r4, r27
/* 813A0C08 | 38 7A 00 70 */	addi r3, r26, 0x70
/* 813A0C0C | 48 17 16 D1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A0C10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0C14 | 7C 7B 1B 78 */	mr r27, r3
/* 813A0C18 | 40 82 FF 78 */	bne .L_813A0B90
/* 813A0C1C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A0C20 | 48 25 88 E9 */	bl _restgpr_26
/* 813A0C24 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A0C28 | 7C 08 03 A6 */	mtlr r0
/* 813A0C2C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A0C30 | 4E 80 00 20 */	blr
.endfn setpos_chanapp_box__Q33ipl5scene11ChannelEditFv

# .text:0x834 | 0x813A0C34 | size: 0xC4
# ipl::scene::ChannelEdit::fadein_chanapp_box()
.fn fadein_chanapp_box__Q33ipl5scene11ChannelEditFv, global
/* 813A0C34 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A0C38 | 7C 08 02 A6 */	mflr r0
/* 813A0C3C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A0C40 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A0C44 | 48 25 88 7D */	bl _savegpr_27
/* 813A0C48 | 3F A0 81 65 */	lis r29, lbl_8164C8A4@ha
/* 813A0C4C | 7C 7B 1B 78 */	mr r27, r3
/* 813A0C50 | 3B BD C8 A4 */	addi r29, r29, lbl_8164C8A4@l
/* 813A0C54 | 3B E0 00 00 */	li r31, 0x0
/* 813A0C58 | 3B 80 00 00 */	li r28, 0x0
/* 813A0C5C | 48 00 00 6C */	b .L_813A0CC8
.L_813A0C60:
/* 813A0C60 | 80 7B 00 68 */	lwz r3, 0x68(r27)
/* 813A0C64 | 38 A0 00 01 */	li r5, 0x1
/* 813A0C68 | 7C 9D F8 2E */	lwzx r4, r29, r31
/* 813A0C6C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A0C70 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A0C74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A0C78 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A0C7C | 7D 89 03 A6 */	mtctr r12
/* 813A0C80 | 4E 80 04 21 */	bctrl
/* 813A0C84 | C0 22 84 F0 */	lfs f1, lbl_816948F0@sda21(r0)
/* 813A0C88 | 7C 7E 1B 78 */	mr r30, r3
/* 813A0C8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A0C90 | FC 40 08 90 */	fmr f2, f1
/* 813A0C94 | FC 60 08 90 */	fmr f3, f1
/* 813A0C98 | 4B FD 3B ED */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813A0C9C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A0CA0 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 813A0CA4 | 7C 85 23 78 */	mr r5, r4
/* 813A0CA8 | 48 1A 08 15 */	bl fn_815414BC
/* 813A0CAC | 7F 83 E3 78 */	mr r3, r28
/* 813A0CB0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813A0CB4 | 38 8D 87 D8 */	li r4, lbl_81696818@sda21
/* 813A0CB8 | 48 00 68 B1 */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813A0CBC | 7F 83 E3 78 */	mr r3, r28
/* 813A0CC0 | 48 00 43 39 */	bl anmFadein__Q33ipl5scene10ChanAppBoxFv
/* 813A0CC4 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813A0CC8:
/* 813A0CC8 | 7F 84 E3 78 */	mr r4, r28
/* 813A0CCC | 38 7B 00 70 */	addi r3, r27, 0x70
/* 813A0CD0 | 48 17 16 0D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A0CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0CD8 | 7C 7C 1B 78 */	mr r28, r3
/* 813A0CDC | 40 82 FF 84 */	bne .L_813A0C60
/* 813A0CE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A0CE4 | 48 25 88 29 */	bl _restgpr_27
/* 813A0CE8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A0CEC | 7C 08 03 A6 */	mtlr r0
/* 813A0CF0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A0CF4 | 4E 80 00 20 */	blr
.endfn fadein_chanapp_box__Q33ipl5scene11ChannelEditFv

# .text:0x8F8 | 0x813A0CF8 | size: 0x60
# ipl::scene::ChannelEdit::fadeout_chanapp_box()
.fn fadeout_chanapp_box__Q33ipl5scene11ChannelEditFv, global
/* 813A0CF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A0CFC | 7C 08 02 A6 */	mflr r0
/* 813A0D00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A0D04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0D08 | 48 25 87 C1 */	bl _savegpr_29
/* 813A0D0C | 7C 7D 1B 78 */	mr r29, r3
/* 813A0D10 | 3B C0 00 00 */	li r30, 0x0
/* 813A0D14 | 3B E0 00 00 */	li r31, 0x0
/* 813A0D18 | 48 00 00 10 */	b .L_813A0D28
.L_813A0D1C:
/* 813A0D1C | 93 E3 00 40 */	stw r31, 0x40(r3)
/* 813A0D20 | 7F C3 F3 78 */	mr r3, r30
/* 813A0D24 | 48 00 43 7D */	bl anmFadeout__Q33ipl5scene10ChanAppBoxFv
.L_813A0D28:
/* 813A0D28 | 7F C4 F3 78 */	mr r4, r30
/* 813A0D2C | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813A0D30 | 48 17 15 AD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A0D34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0D38 | 7C 7E 1B 78 */	mr r30, r3
/* 813A0D3C | 40 82 FF E0 */	bne .L_813A0D1C
/* 813A0D40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0D44 | 48 25 87 D1 */	bl _restgpr_29
/* 813A0D48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A0D4C | 7C 08 03 A6 */	mtlr r0
/* 813A0D50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A0D54 | 4E 80 00 20 */	blr
.endfn fadeout_chanapp_box__Q33ipl5scene11ChannelEditFv

# .text:0x958 | 0x813A0D58 | size: 0x6C
# ipl::scene::ChannelEdit::send_getthumbnail_cmd(bool)
.fn send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb, global
/* 813A0D58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A0D5C | 7C 08 02 A6 */	mflr r0
/* 813A0D60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A0D64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0D68 | 48 25 87 61 */	bl _savegpr_29
/* 813A0D6C | 7C 7D 1B 78 */	mr r29, r3
/* 813A0D70 | 7C 9E 23 78 */	mr r30, r4
/* 813A0D74 | 3B E0 00 00 */	li r31, 0x0
.L_813A0D78:
/* 813A0D78 | 38 1F 00 0F */	addi r0, r31, 0xf
/* 813A0D7C | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813A0D80 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813A0D84 | 48 17 15 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A0D88 | 80 1D 00 C4 */	lwz r0, 0xc4(r29)
/* 813A0D8C | 7C 64 1B 78 */	mr r4, r3
/* 813A0D90 | 80 7D 00 7C */	lwz r3, 0x7c(r29)
/* 813A0D94 | 7F C6 F3 78 */	mr r6, r30
/* 813A0D98 | 7C A0 FA 14 */	add r5, r0, r31
/* 813A0D9C | 48 00 6F DD */	bl cmdGetThumbnail__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBoxib
/* 813A0DA0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813A0DA4 | 2C 1F 00 0F */	cmpwi r31, 0xf
/* 813A0DA8 | 41 80 FF D0 */	blt .L_813A0D78
/* 813A0DAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0DB0 | 48 25 87 65 */	bl _restgpr_29
/* 813A0DB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A0DB8 | 7C 08 03 A6 */	mtlr r0
/* 813A0DBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A0DC0 | 4E 80 00 20 */	blr
.endfn send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb

# .text:0x9C4 | 0x813A0DC4 | size: 0x138
# ipl::scene::ChannelEdit::update_sdcard_slot()
.fn update_sdcard_slot__Q33ipl5scene11ChannelEditFv, global
/* 813A0DC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A0DC8 | 7C 08 02 A6 */	mflr r0
/* 813A0DCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A0DD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0DD4 | 48 25 86 F5 */	bl _savegpr_29
/* 813A0DD8 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A0DDC | 7C 7D 1B 78 */	mr r29, r3
/* 813A0DE0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A0DE4 | 40 82 01 00 */	bne .L_813A0EE4
/* 813A0DE8 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A0DEC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A0DF0 | 4B FA 7A 95 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A0DF4 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A0DF8 | 90 7D 00 C8 */	stw r3, 0xc8(r29)
/* 813A0DFC | 41 82 00 E8 */	beq .L_813A0EE4
/* 813A0E00 | 80 7D 00 7C */	lwz r3, 0x7c(r29)
/* 813A0E04 | 48 00 8E ED */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A0E08 | 3B E0 00 00 */	li r31, 0x0
/* 813A0E0C | 3B C0 00 00 */	li r30, 0x0
/* 813A0E10 | 93 FD 00 C4 */	stw r31, 0xc4(r29)
/* 813A0E14 | 48 00 00 18 */	b .L_813A0E2C
.L_813A0E18:
/* 813A0E18 | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 813A0E1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0E20 | 41 82 00 0C */	beq .L_813A0E2C
/* 813A0E24 | 48 03 08 45 */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813A0E28 | 9B FE 00 48 */	stb r31, 0x48(r30)
.L_813A0E2C:
/* 813A0E2C | 7F C4 F3 78 */	mr r4, r30
/* 813A0E30 | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813A0E34 | 48 17 14 A9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A0E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0E3C | 7C 7E 1B 78 */	mr r30, r3
/* 813A0E40 | 40 82 FF D8 */	bne .L_813A0E18
/* 813A0E44 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0E48 | 48 00 5A 79 */	bl iplChanApp_813A68C0
/* 813A0E4C | 80 1D 00 54 */	lwz r0, 0x54(r29)
/* 813A0E50 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813A0E54 | 41 81 00 90 */	bgt .L_813A0EE4
/* 813A0E58 | 3C 60 81 65 */	lis r3, jumptable_8164CAB0@ha
/* 813A0E5C | 54 00 10 3A */	slwi r0, r0, 2
/* 813A0E60 | 38 63 CA B0 */	addi r3, r3, jumptable_8164CAB0@l
/* 813A0E64 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813A0E68 | 7C 69 03 A6 */	mtctr r3
/* 813A0E6C | 4E 80 04 20 */	bctr
.L_813A0E70:
/* 813A0E70 | 7F A3 EB 78 */	mr r3, r29
/* 813A0E74 | 4B FF FE 85 */	bl fadeout_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A0E78 | 38 00 00 07 */	li r0, 0x7
/* 813A0E7C | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813A0E80 | 48 00 00 64 */	b .L_813A0EE4
.L_813A0E84:
/* 813A0E84 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0E88 | 48 00 59 45 */	bl anmClear__Q33ipl5scene11ChanAppEditFv
/* 813A0E8C | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0E90 | 48 00 55 89 */	bl anmFadeout__Q33ipl5scene11ChanAppEditFv
/* 813A0E94 | 38 00 00 0D */	li r0, 0xd
/* 813A0E98 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813A0E9C | 48 00 00 48 */	b .L_813A0EE4
.L_813A0EA0:
/* 813A0EA0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A0EA4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A0EA8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813A0EAC | 4B FA 6A 59 */	bl terminate__Q23ipl12DialogWindowFv
/* 813A0EB0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0EB4 | 48 00 59 19 */	bl anmClear__Q33ipl5scene11ChanAppEditFv
/* 813A0EB8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0EBC | 48 00 56 D9 */	bl anmSelectFadein__Q33ipl5scene11ChanAppEditFv
/* 813A0EC0 | 38 00 00 0B */	li r0, 0xb
/* 813A0EC4 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813A0EC8 | 48 00 00 1C */	b .L_813A0EE4
.L_813A0ECC:
/* 813A0ECC | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0ED0 | 48 00 58 FD */	bl anmClear__Q33ipl5scene11ChanAppEditFv
/* 813A0ED4 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A0ED8 | 48 00 56 BD */	bl anmSelectFadein__Q33ipl5scene11ChanAppEditFv
/* 813A0EDC | 38 00 00 0F */	li r0, 0xf
/* 813A0EE0 | 90 1D 00 54 */	stw r0, 0x54(r29)
.L_813A0EE4:
/* 813A0EE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A0EE8 | 48 25 86 2D */	bl _restgpr_29
/* 813A0EEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A0EF0 | 7C 08 03 A6 */	mtlr r0
/* 813A0EF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A0EF8 | 4E 80 00 20 */	blr
.endfn update_sdcard_slot__Q33ipl5scene11ChannelEditFv

# .text:0xAFC | 0x813A0EFC | size: 0xFC
# ipl::scene::ChannelEdit::update_arw()
.fn update_arw__Q33ipl5scene11ChannelEditFv, global
/* 813A0EFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A0F00 | 7C 08 02 A6 */	mflr r0
/* 813A0F04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A0F08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A0F0C | 7C 7F 1B 78 */	mr r31, r3
/* 813A0F10 | 88 03 00 CC */	lbz r0, 0xcc(r3)
/* 813A0F14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A0F18 | 40 82 00 2C */	bne .L_813A0F44
/* 813A0F1C | 48 00 07 FD */	bl enable_scroll_r__Q33ipl5scene11ChannelEditFv
/* 813A0F20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0F24 | 41 82 00 20 */	beq .L_813A0F44
/* 813A0F28 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A0F2C | 38 80 00 01 */	li r4, 0x1
/* 813A0F30 | 38 A0 00 00 */	li r5, 0x0
/* 813A0F34 | 48 00 34 51 */	bl anmArwAppear__Q33ipl5scene11ChanAppBaseFbb
/* 813A0F38 | 38 00 00 01 */	li r0, 0x1
/* 813A0F3C | 98 1F 00 CC */	stb r0, 0xcc(r31)
/* 813A0F40 | 48 00 00 38 */	b .L_813A0F78
.L_813A0F44:
/* 813A0F44 | 88 1F 00 CC */	lbz r0, 0xcc(r31)
/* 813A0F48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A0F4C | 41 82 00 2C */	beq .L_813A0F78
/* 813A0F50 | 7F E3 FB 78 */	mr r3, r31
/* 813A0F54 | 48 00 07 C5 */	bl enable_scroll_r__Q33ipl5scene11ChannelEditFv
/* 813A0F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0F5C | 40 82 00 1C */	bne .L_813A0F78
/* 813A0F60 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A0F64 | 38 80 00 01 */	li r4, 0x1
/* 813A0F68 | 38 A0 00 00 */	li r5, 0x0
/* 813A0F6C | 48 00 34 DD */	bl anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb
/* 813A0F70 | 38 00 00 00 */	li r0, 0x0
/* 813A0F74 | 98 1F 00 CC */	stb r0, 0xcc(r31)
.L_813A0F78:
/* 813A0F78 | 88 1F 00 CD */	lbz r0, 0xcd(r31)
/* 813A0F7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A0F80 | 40 82 00 30 */	bne .L_813A0FB0
/* 813A0F84 | 7F E3 FB 78 */	mr r3, r31
/* 813A0F88 | 48 00 08 45 */	bl enable_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A0F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0F90 | 41 82 00 20 */	beq .L_813A0FB0
/* 813A0F94 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A0F98 | 38 80 00 00 */	li r4, 0x0
/* 813A0F9C | 38 A0 00 01 */	li r5, 0x1
/* 813A0FA0 | 48 00 33 E5 */	bl anmArwAppear__Q33ipl5scene11ChanAppBaseFbb
/* 813A0FA4 | 38 00 00 01 */	li r0, 0x1
/* 813A0FA8 | 98 1F 00 CD */	stb r0, 0xcd(r31)
/* 813A0FAC | 48 00 00 38 */	b .L_813A0FE4
.L_813A0FB0:
/* 813A0FB0 | 88 1F 00 CD */	lbz r0, 0xcd(r31)
/* 813A0FB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A0FB8 | 41 82 00 2C */	beq .L_813A0FE4
/* 813A0FBC | 7F E3 FB 78 */	mr r3, r31
/* 813A0FC0 | 48 00 08 0D */	bl enable_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A0FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0FC8 | 40 82 00 1C */	bne .L_813A0FE4
/* 813A0FCC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A0FD0 | 38 80 00 00 */	li r4, 0x0
/* 813A0FD4 | 38 A0 00 01 */	li r5, 0x1
/* 813A0FD8 | 48 00 34 71 */	bl anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb
/* 813A0FDC | 38 00 00 00 */	li r0, 0x0
/* 813A0FE0 | 98 1F 00 CD */	stb r0, 0xcd(r31)
.L_813A0FE4:
/* 813A0FE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A0FE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A0FEC | 7C 08 03 A6 */	mtlr r0
/* 813A0FF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A0FF4 | 4E 80 00 20 */	blr
.endfn update_arw__Q33ipl5scene11ChannelEditFv

# .text:0xBF8 | 0x813A0FF8 | size: 0x14
# ipl::scene::ChannelEdit::update_free()
.fn update_free__Q33ipl5scene11ChannelEditFv, global
/* 813A0FF8 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A0FFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1000 | 40 82 00 08 */	bne .L_813A1008
/* 813A1004 | 48 00 00 08 */	b update_nand_free__Q33ipl5scene11ChannelEditFv
.L_813A1008:
/* 813A1008 | 48 00 02 2C */	b update_sd_free__Q33ipl5scene11ChannelEditFv
.endfn update_free__Q33ipl5scene11ChannelEditFv

# .text:0xC0C | 0x813A100C | size: 0x228
# ipl::scene::ChannelEdit::update_nand_free()
.fn update_nand_free__Q33ipl5scene11ChannelEditFv, global
/* 813A100C | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 813A1010 | 7C 08 02 A6 */	mflr r0
/* 813A1014 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 813A1018 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813A101C | 48 25 84 9D */	bl _savegpr_25
/* 813A1020 | 80 83 00 7C */	lwz r4, 0x7c(r3)
/* 813A1024 | 7C 7E 1B 78 */	mr r30, r3
/* 813A1028 | 3C 84 00 0F */	addis r4, r4, 0xf
/* 813A102C | 80 04 87 80 */	lwz r0, -0x7880(r4)
/* 813A1030 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1034 | 40 80 00 30 */	bge .L_813A1064
/* 813A1038 | 3C 80 81 65 */	lis r4, lbl_8164CB2C@ha
/* 813A103C | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813A1040 | 38 84 CB 2C */	addi r4, r4, lbl_8164CB2C@l
/* 813A1044 | 38 A0 00 00 */	li r5, 0x0
/* 813A1048 | 48 00 64 8D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A104C | 3C 80 81 65 */	lis r4, lbl_8164CB36@ha
/* 813A1050 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A1054 | 38 84 CB 36 */	addi r4, r4, lbl_8164CB36@l
/* 813A1058 | 38 A0 00 00 */	li r5, 0x0
/* 813A105C | 48 00 64 79 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1060 | 48 00 01 BC */	b .L_813A121C
.L_813A1064:
/* 813A1064 | 3C 80 81 61 */	lis r4, lbl_8160FC48@ha
/* 813A1068 | 38 60 00 05 */	li r3, 0x5
/* 813A106C | 38 84 FC 48 */	addi r4, r4, lbl_8160FC48@l
/* 813A1070 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813A1074 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813A1078 | 7C 69 03 A6 */	mtctr r3
.L_813A107C:
/* 813A107C | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813A1080 | A4 65 00 04 */	lhzu r3, 0x4(r5)
/* 813A1084 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813A1088 | B4 66 00 04 */	sthu r3, 0x4(r6)
/* 813A108C | 42 00 FF F0 */	bdnz .L_813A107C
/* 813A1090 | 38 A0 00 00 */	li r5, 0x0
/* 813A1094 | 38 60 00 20 */	li r3, 0x20
/* 813A1098 | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813A109C | 38 81 00 24 */	addi r4, r1, 0x24
/* 813A10A0 | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 813A10A4 | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 813A10A8 | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 813A10AC | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 813A10B0 | 7C 69 03 A6 */	mtctr r3
.L_813A10B4:
/* 813A10B4 | B0 A4 00 02 */	sth r5, 0x2(r4)
/* 813A10B8 | B4 A4 00 04 */	sthu r5, 0x4(r4)
/* 813A10BC | 42 00 FF F8 */	bdnz .L_813A10B4
/* 813A10C0 | 38 80 00 64 */	li r4, 0x64
/* 813A10C4 | 39 40 00 0A */	li r10, 0xa
/* 813A10C8 | 7D 60 23 D6 */	divw r11, r0, r4
/* 813A10CC | 39 20 03 E8 */	li r9, 0x3e8
/* 813A10D0 | 39 81 00 12 */	addi r12, r1, 0x12
/* 813A10D4 | 38 60 00 03 */	li r3, 0x3
/* 813A10D8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813A10DC | 3B E0 00 00 */	li r31, 0x0
/* 813A10E0 | 7D 00 53 D6 */	divw r8, r0, r10
/* 813A10E4 | 38 80 00 00 */	li r4, 0x0
/* 813A10E8 | 7C EB 53 D6 */	divw r7, r11, r10
/* 813A10EC | 7F 80 4B D6 */	divw r28, r0, r9
/* 813A10F0 | 7D 27 51 D6 */	mullw r9, r7, r10
/* 813A10F4 | 57 87 08 3C */	slwi r7, r28, 1
/* 813A10F8 | 7C EC 3A 2E */	lhzx r7, r12, r7
/* 813A10FC | B0 E1 00 08 */	sth r7, 0x8(r1)
/* 813A1100 | 7C C8 53 D6 */	divw r6, r8, r10
/* 813A1104 | 7C E6 51 D6 */	mullw r7, r6, r10
/* 813A1108 | 7C C9 58 50 */	subf r6, r9, r11
/* 813A110C | 54 C6 08 3C */	slwi r6, r6, 1
/* 813A1110 | 7D 2C 32 2E */	lhzx r9, r12, r6
/* 813A1114 | 7C C8 51 D6 */	mullw r6, r8, r10
/* 813A1118 | 7C E7 40 50 */	subf r7, r7, r8
/* 813A111C | B1 21 00 0A */	sth r9, 0xa(r1)
/* 813A1120 | 54 E7 08 3C */	slwi r7, r7, 1
/* 813A1124 | 7C EC 3A 2E */	lhzx r7, r12, r7
/* 813A1128 | 7C 06 00 50 */	subf r0, r6, r0
/* 813A112C | 54 00 08 3C */	slwi r0, r0, 1
/* 813A1130 | B0 E1 00 0C */	sth r7, 0xc(r1)
/* 813A1134 | 7C 0C 02 2E */	lhzx r0, r12, r0
/* 813A1138 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 813A113C | 7C 69 03 A6 */	mtctr r3
.L_813A1140:
/* 813A1140 | 7C 05 22 2E */	lhzx r0, r5, r4
/* 813A1144 | 28 00 00 30 */	cmplwi r0, 0x30
/* 813A1148 | 40 82 00 10 */	bne .L_813A1158
/* 813A114C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813A1150 | 38 84 00 02 */	addi r4, r4, 0x2
/* 813A1154 | 42 00 FF EC */	bdnz .L_813A1140
.L_813A1158:
/* 813A1158 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813A115C | 3B 40 00 00 */	li r26, 0x0
/* 813A1160 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813A1164 | 3B A0 00 00 */	li r29, 0x0
/* 813A1168 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 813A116C | 38 80 00 9C */	li r4, 0x9c
/* 813A1170 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A1174 | 4B F9 D6 49 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A1178 | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 813A117C | 7C 79 1B 78 */	mr r25, r3
/* 813A1180 | 38 80 00 F2 */	li r4, 0xf2
/* 813A1184 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813A1188 | 4B F9 D6 35 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A118C | 7C 7B 1B 78 */	mr r27, r3
/* 813A1190 | 3B 81 00 26 */	addi r28, r1, 0x26
.L_813A1194:
/* 813A1194 | A0 19 00 00 */	lhz r0, 0x0(r25)
/* 813A1198 | 3B 39 00 02 */	addi r25, r25, 0x2
/* 813A119C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813A11A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A11A4 | 7C 1C EB 2E */	sthx r0, r28, r29
/* 813A11A8 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 813A11AC | 40 82 FF E8 */	bne .L_813A1194
/* 813A11B0 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 813A11B4 | 38 00 00 20 */	li r0, 0x20
/* 813A11B8 | 57 45 08 3C */	slwi r5, r26, 1
/* 813A11BC | 7F 83 E3 78 */	mr r3, r28
/* 813A11C0 | 7C 1C 2B 2E */	sthx r0, r28, r5
/* 813A11C4 | 57 E0 08 3C */	slwi r0, r31, 1
/* 813A11C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A11CC | 7C 63 2A 14 */	add r3, r3, r5
/* 813A11D0 | 7C 84 02 14 */	add r4, r4, r0
/* 813A11D4 | 48 26 74 F5 */	bl fn_816086C8
/* 813A11D8 | 7F 83 E3 78 */	mr r3, r28
/* 813A11DC | 7F 64 DB 78 */	mr r4, r27
/* 813A11E0 | 48 26 75 49 */	bl wcscat
/* 813A11E4 | 3F A0 81 65 */	lis r29, lbl_8164CB36@ha
/* 813A11E8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A11EC | 38 9D CB 36 */	addi r4, r29, lbl_8164CB36@l
/* 813A11F0 | 38 A0 00 01 */	li r5, 0x1
/* 813A11F4 | 48 00 62 E1 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A11F8 | 3C 80 81 65 */	lis r4, lbl_8164CB2C@ha
/* 813A11FC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A1200 | 38 84 CB 2C */	addi r4, r4, lbl_8164CB2C@l
/* 813A1204 | 38 A0 00 01 */	li r5, 0x1
/* 813A1208 | 48 00 62 CD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A120C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A1210 | 7F 85 E3 78 */	mr r5, r28
/* 813A1214 | 38 9D CB 36 */	addi r4, r29, lbl_8164CB36@l
/* 813A1218 | 48 00 61 E9 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
.L_813A121C:
/* 813A121C | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813A1220 | 48 25 82 E5 */	bl _restgpr_25
/* 813A1224 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 813A1228 | 7C 08 03 A6 */	mtlr r0
/* 813A122C | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 813A1230 | 4E 80 00 20 */	blr
.endfn update_nand_free__Q33ipl5scene11ChannelEditFv

# .text:0xE34 | 0x813A1234 | size: 0x2B4
# ipl::scene::ChannelEdit::update_sd_free()
.fn update_sd_free__Q33ipl5scene11ChannelEditFv, global
/* 813A1234 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 813A1238 | 7C 08 02 A6 */	mflr r0
/* 813A123C | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 813A1240 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813A1244 | 48 25 82 75 */	bl _savegpr_25
/* 813A1248 | 80 83 00 7C */	lwz r4, 0x7c(r3)
/* 813A124C | 7C 7E 1B 78 */	mr r30, r3
/* 813A1250 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 813A1254 | 4B FA 76 31 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A1258 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A125C | 41 82 00 30 */	beq .L_813A128C
/* 813A1260 | 3C 80 81 65 */	lis r4, lbl_8164CB2C@ha
/* 813A1264 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A1268 | 38 84 CB 2C */	addi r4, r4, lbl_8164CB2C@l
/* 813A126C | 38 A0 00 00 */	li r5, 0x0
/* 813A1270 | 48 00 62 65 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1274 | 3C 80 81 65 */	lis r4, lbl_8164CB36@ha
/* 813A1278 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A127C | 38 84 CB 36 */	addi r4, r4, lbl_8164CB36@l
/* 813A1280 | 38 A0 00 00 */	li r5, 0x0
/* 813A1284 | 48 00 62 51 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1288 | 48 00 02 48 */	b .L_813A14D0
.L_813A128C:
/* 813A128C | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A1290 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A1294 | 80 83 87 84 */	lwz r4, -0x787c(r3)
/* 813A1298 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813A129C | 40 80 00 30 */	bge .L_813A12CC
/* 813A12A0 | 3C 80 81 65 */	lis r4, lbl_8164CB2C@ha
/* 813A12A4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A12A8 | 38 84 CB 2C */	addi r4, r4, lbl_8164CB2C@l
/* 813A12AC | 38 A0 00 00 */	li r5, 0x0
/* 813A12B0 | 48 00 62 25 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A12B4 | 3C 80 81 65 */	lis r4, lbl_8164CB36@ha
/* 813A12B8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A12BC | 38 84 CB 36 */	addi r4, r4, lbl_8164CB36@l
/* 813A12C0 | 38 A0 00 00 */	li r5, 0x0
/* 813A12C4 | 48 00 62 11 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A12C8 | 48 00 02 08 */	b .L_813A14D0
.L_813A12CC:
/* 813A12CC | 3C 60 81 61 */	lis r3, lbl_8160FC5C@ha
/* 813A12D0 | 38 00 00 05 */	li r0, 0x5
/* 813A12D4 | 38 63 FC 5C */	addi r3, r3, lbl_8160FC5C@l
/* 813A12D8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813A12DC | 38 A3 FF FE */	subi r5, r3, 0x2
/* 813A12E0 | 7C 09 03 A6 */	mtctr r0
.L_813A12E4:
/* 813A12E4 | A0 65 00 02 */	lhz r3, 0x2(r5)
/* 813A12E8 | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813A12EC | B0 66 00 02 */	sth r3, 0x2(r6)
/* 813A12F0 | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813A12F4 | 42 00 FF F0 */	bdnz .L_813A12E4
/* 813A12F8 | 38 A0 00 00 */	li r5, 0x0
/* 813A12FC | 38 00 00 20 */	li r0, 0x20
/* 813A1300 | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813A1304 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813A1308 | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 813A130C | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 813A1310 | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 813A1314 | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 813A1318 | B0 A1 00 12 */	sth r5, 0x12(r1)
/* 813A131C | B0 A1 00 14 */	sth r5, 0x14(r1)
/* 813A1320 | 7C 09 03 A6 */	mtctr r0
.L_813A1324:
/* 813A1324 | B0 A3 00 02 */	sth r5, 0x2(r3)
/* 813A1328 | B4 A3 00 04 */	sthu r5, 0x4(r3)
/* 813A132C | 42 00 FF F8 */	bdnz .L_813A1324
/* 813A1330 | 38 A0 27 10 */	li r5, 0x2710
/* 813A1334 | 38 00 00 0A */	li r0, 0xa
/* 813A1338 | 7F 64 2B D6 */	divw r27, r4, r5
/* 813A133C | 39 40 03 E8 */	li r10, 0x3e8
/* 813A1340 | 39 00 00 64 */	li r8, 0x64
/* 813A1344 | 3C C0 00 02 */	lis r6, 0x2
/* 813A1348 | 38 61 00 16 */	addi r3, r1, 0x16
/* 813A134C | 3B 46 86 A0 */	subi r26, r6, 0x7960
/* 813A1350 | 7F 84 53 D6 */	divw r28, r4, r10
/* 813A1354 | 38 A0 00 05 */	li r5, 0x5
/* 813A1358 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813A135C | 3B E0 00 00 */	li r31, 0x0
/* 813A1360 | 38 C0 00 00 */	li r6, 0x0
/* 813A1364 | 7D 64 43 D6 */	divw r11, r4, r8
/* 813A1368 | 7D 24 03 D6 */	divw r9, r4, r0
/* 813A136C | 7F BB 03 D6 */	divw r29, r27, r0
/* 813A1370 | 7D 9C 03 D6 */	divw r12, r28, r0
/* 813A1374 | 7D 4B 03 D6 */	divw r10, r11, r0
/* 813A1378 | 7D 09 03 D6 */	divw r8, r9, r0
/* 813A137C | 7F 44 D3 D6 */	divw r26, r4, r26
/* 813A1380 | 7F BD 01 D6 */	mullw r29, r29, r0
/* 813A1384 | 57 5A 08 3C */	slwi r26, r26, 1
/* 813A1388 | 7F 43 D2 2E */	lhzx r26, r3, r26
/* 813A138C | B3 41 00 08 */	sth r26, 0x8(r1)
/* 813A1390 | 7D 8C 01 D6 */	mullw r12, r12, r0
/* 813A1394 | 7F BD D8 50 */	subf r29, r29, r27
/* 813A1398 | 57 BD 08 3C */	slwi r29, r29, 1
/* 813A139C | 7F A3 EA 2E */	lhzx r29, r3, r29
/* 813A13A0 | 7D 4A 01 D6 */	mullw r10, r10, r0
/* 813A13A4 | 7D 8C E0 50 */	subf r12, r12, r28
/* 813A13A8 | B3 A1 00 0A */	sth r29, 0xa(r1)
/* 813A13AC | 55 8C 08 3C */	slwi r12, r12, 1
/* 813A13B0 | 7D 83 62 2E */	lhzx r12, r3, r12
/* 813A13B4 | 7D 08 01 D6 */	mullw r8, r8, r0
/* 813A13B8 | 7D 4A 58 50 */	subf r10, r10, r11
/* 813A13BC | B1 81 00 0C */	sth r12, 0xc(r1)
/* 813A13C0 | 55 4A 08 3C */	slwi r10, r10, 1
/* 813A13C4 | 7D 43 52 2E */	lhzx r10, r3, r10
/* 813A13C8 | 7C 09 01 D6 */	mullw r0, r9, r0
/* 813A13CC | 7D 08 48 50 */	subf r8, r8, r9
/* 813A13D0 | B1 41 00 0E */	sth r10, 0xe(r1)
/* 813A13D4 | 55 08 08 3C */	slwi r8, r8, 1
/* 813A13D8 | 7D 03 42 2E */	lhzx r8, r3, r8
/* 813A13DC | 7C 00 20 50 */	subf r0, r0, r4
/* 813A13E0 | 54 00 08 3C */	slwi r0, r0, 1
/* 813A13E4 | B1 01 00 10 */	sth r8, 0x10(r1)
/* 813A13E8 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 813A13EC | B0 01 00 12 */	sth r0, 0x12(r1)
/* 813A13F0 | 7C A9 03 A6 */	mtctr r5
.L_813A13F4:
/* 813A13F4 | 7C 07 32 2E */	lhzx r0, r7, r6
/* 813A13F8 | 28 00 00 30 */	cmplwi r0, 0x30
/* 813A13FC | 40 82 00 10 */	bne .L_813A140C
/* 813A1400 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813A1404 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 813A1408 | 42 00 FF EC */	bdnz .L_813A13F4
.L_813A140C:
/* 813A140C | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813A1410 | 3B 60 00 00 */	li r27, 0x0
/* 813A1414 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813A1418 | 3B A0 00 00 */	li r29, 0x0
/* 813A141C | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 813A1420 | 38 80 00 9C */	li r4, 0x9c
/* 813A1424 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A1428 | 4B F9 D3 95 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A142C | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 813A1430 | 7C 79 1B 78 */	mr r25, r3
/* 813A1434 | 38 80 00 F2 */	li r4, 0xf2
/* 813A1438 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813A143C | 4B F9 D3 81 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A1440 | 7C 7A 1B 78 */	mr r26, r3
/* 813A1444 | 3B 81 00 2A */	addi r28, r1, 0x2a
.L_813A1448:
/* 813A1448 | A0 19 00 00 */	lhz r0, 0x0(r25)
/* 813A144C | 3B 39 00 02 */	addi r25, r25, 0x2
/* 813A1450 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813A1454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1458 | 7C 1C EB 2E */	sthx r0, r28, r29
/* 813A145C | 3B BD 00 02 */	addi r29, r29, 0x2
/* 813A1460 | 40 82 FF E8 */	bne .L_813A1448
/* 813A1464 | 3B 7B FF FF */	subi r27, r27, 0x1
/* 813A1468 | 38 00 00 20 */	li r0, 0x20
/* 813A146C | 57 65 08 3C */	slwi r5, r27, 1
/* 813A1470 | 7F 83 E3 78 */	mr r3, r28
/* 813A1474 | 7C 1C 2B 2E */	sthx r0, r28, r5
/* 813A1478 | 57 E0 08 3C */	slwi r0, r31, 1
/* 813A147C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A1480 | 7C 63 2A 14 */	add r3, r3, r5
/* 813A1484 | 7C 84 02 14 */	add r4, r4, r0
/* 813A1488 | 48 26 72 41 */	bl fn_816086C8
/* 813A148C | 7F 83 E3 78 */	mr r3, r28
/* 813A1490 | 7F 44 D3 78 */	mr r4, r26
/* 813A1494 | 48 26 72 95 */	bl wcscat
/* 813A1498 | 3F A0 81 65 */	lis r29, lbl_8164CB36@ha
/* 813A149C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A14A0 | 38 9D CB 36 */	addi r4, r29, lbl_8164CB36@l
/* 813A14A4 | 38 A0 00 01 */	li r5, 0x1
/* 813A14A8 | 48 00 60 2D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A14AC | 3C 80 81 65 */	lis r4, lbl_8164CB2C@ha
/* 813A14B0 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A14B4 | 38 84 CB 2C */	addi r4, r4, lbl_8164CB2C@l
/* 813A14B8 | 38 A0 00 01 */	li r5, 0x1
/* 813A14BC | 48 00 60 19 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A14C0 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A14C4 | 7F 85 E3 78 */	mr r5, r28
/* 813A14C8 | 38 9D CB 36 */	addi r4, r29, lbl_8164CB36@l
/* 813A14CC | 48 00 5F 35 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
.L_813A14D0:
/* 813A14D0 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813A14D4 | 48 25 80 31 */	bl _restgpr_25
/* 813A14D8 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 813A14DC | 7C 08 03 A6 */	mtlr r0
/* 813A14E0 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 813A14E4 | 4E 80 00 20 */	blr
.endfn update_sd_free__Q33ipl5scene11ChannelEditFv

# .text:0x10E8 | 0x813A14E8 | size: 0x9C
# ipl::scene::ChannelEdit::start_process(int)
.fn start_process__Q33ipl5scene11ChannelEditFi, global
/* 813A14E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A14EC | 7C 08 02 A6 */	mflr r0
/* 813A14F0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813A14F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A14F8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813A14FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1500 | 7C 9F 23 78 */	mr r31, r4
/* 813A1504 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A1508 | 7C 7E 1B 78 */	mr r30, r3
/* 813A150C | 80 65 00 B4 */	lwz r3, 0xb4(r5)
/* 813A1510 | 4B FA 6E 09 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813A1514 | 80 BE 00 7C */	lwz r5, 0x7c(r30)
/* 813A1518 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A151C | 93 FE 00 D0 */	stw r31, 0xd0(r30)
/* 813A1520 | 3C 80 81 65 */	lis r4, lbl_8164CB40@ha
/* 813A1524 | 3C A5 00 0F */	addis r5, r5, 0xf
/* 813A1528 | 38 00 00 01 */	li r0, 0x1
/* 813A152C | 98 05 87 90 */	stb r0, -0x7870(r5)
/* 813A1530 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A1534 | 38 84 CB 40 */	addi r4, r4, lbl_8164CB40@l
/* 813A1538 | 4B FC 9F 35 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A153C | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 813A1540 | 40 82 00 1C */	bne .L_813A155C
/* 813A1544 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813A1548 | 38 80 00 35 */	li r4, 0x35
/* 813A154C | 38 A0 00 01 */	li r5, 0x1
/* 813A1550 | 38 C0 00 01 */	li r6, 0x1
/* 813A1554 | 48 00 4F E1 */	bl anmShowBtn0Dialog__Q33ipl5scene11ChanAppEditFUlbb
/* 813A1558 | 48 00 00 0C */	b .L_813A1564
.L_813A155C:
/* 813A155C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813A1560 | 48 00 51 E5 */	bl anmStartWaitAnm__Q33ipl5scene11ChanAppEditFv
.L_813A1564:
/* 813A1564 | 38 00 00 19 */	li r0, 0x19
/* 813A1568 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 813A156C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A1570 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A1574 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A1578 | 7C 08 03 A6 */	mtlr r0
/* 813A157C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A1580 | 4E 80 00 20 */	blr
.endfn start_process__Q33ipl5scene11ChannelEditFi

# .text:0x1184 | 0x813A1584 | size: 0x64
# ipl::scene::ChannelEdit::stop_process()
.fn stop_process__Q33ipl5scene11ChannelEditFv, global
/* 813A1584 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1588 | 7C 08 02 A6 */	mflr r0
/* 813A158C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A1590 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1594 | 38 00 00 00 */	li r0, 0x0
/* 813A1598 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A159C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A15A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A15A4 | 80 A3 00 7C */	lwz r5, 0x7c(r3)
/* 813A15A8 | 3C 65 00 0F */	addis r3, r5, 0xf
/* 813A15AC | 98 03 87 90 */	stb r0, -0x7870(r3)
/* 813A15B0 | 80 64 00 B4 */	lwz r3, 0xb4(r4)
/* 813A15B4 | 4B FA 6D 91 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813A15B8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A15BC | 3C 80 81 65 */	lis r4, lbl_8164CB50@ha
/* 813A15C0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A15C4 | 38 84 CB 50 */	addi r4, r4, lbl_8164CB50@l
/* 813A15C8 | 4B FC 9E A5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A15CC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A15D0 | 48 00 51 BD */	bl anmStopWaitAnm__Q33ipl5scene11ChanAppEditFv
/* 813A15D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A15D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A15DC | 7C 08 03 A6 */	mtlr r0
/* 813A15E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A15E4 | 4E 80 00 20 */	blr
.endfn stop_process__Q33ipl5scene11ChannelEditFv

# .text:0x11E8 | 0x813A15E8 | size: 0x98
# ipl::scene::ChannelEdit::start_scroll_r(bool, bool)
.fn start_scroll_r__Q33ipl5scene11ChannelEditFbb, global
/* 813A15E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A15EC | 7C 08 02 A6 */	mflr r0
/* 813A15F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A15F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A15F8 | 48 25 7E CD */	bl _savegpr_28
/* 813A15FC | 7C 7C 1B 78 */	mr r28, r3
/* 813A1600 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1604 | 7C 9D 23 78 */	mr r29, r4
/* 813A1608 | 7C BE 2B 78 */	mr r30, r5
/* 813A160C | 48 00 86 E5 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A1610 | 3B E0 00 00 */	li r31, 0x0
/* 813A1614 | 48 00 00 0C */	b .L_813A1620
.L_813A1618:
/* 813A1618 | 7F E3 FB 78 */	mr r3, r31
/* 813A161C | 48 00 3D C9 */	bl clearEvent__Q33ipl5scene10ChanAppBoxFv
.L_813A1620:
/* 813A1620 | 7F E4 FB 78 */	mr r4, r31
/* 813A1624 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813A1628 | 48 17 0C B5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A162C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1630 | 7C 7F 1B 78 */	mr r31, r3
/* 813A1634 | 40 82 FF E4 */	bne .L_813A1618
/* 813A1638 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A163C | 41 82 00 18 */	beq .L_813A1654
/* 813A1640 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A1644 | 3C 80 81 65 */	lis r4, lbl_8164CB64@ha
/* 813A1648 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A164C | 38 84 CB 64 */	addi r4, r4, lbl_8164CB64@l
/* 813A1650 | 4B FC 9E 1D */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813A1654:
/* 813A1654 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 813A1658 | 7F A4 EB 78 */	mr r4, r29
/* 813A165C | 48 00 2B C5 */	bl anmScrollR__Q33ipl5scene11ChanAppBaseFb
/* 813A1660 | 38 00 00 05 */	li r0, 0x5
/* 813A1664 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1668 | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 813A166C | 48 25 7E A5 */	bl _restgpr_28
/* 813A1670 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A1674 | 7C 08 03 A6 */	mtlr r0
/* 813A1678 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A167C | 4E 80 00 20 */	blr
.endfn start_scroll_r__Q33ipl5scene11ChannelEditFbb

# .text:0x1280 | 0x813A1680 | size: 0x98
# ipl::scene::ChannelEdit::start_scroll_l(bool, bool)
.fn start_scroll_l__Q33ipl5scene11ChannelEditFbb, global
/* 813A1680 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A1684 | 7C 08 02 A6 */	mflr r0
/* 813A1688 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A168C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1690 | 48 25 7E 35 */	bl _savegpr_28
/* 813A1694 | 7C 7C 1B 78 */	mr r28, r3
/* 813A1698 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A169C | 7C 9D 23 78 */	mr r29, r4
/* 813A16A0 | 7C BE 2B 78 */	mr r30, r5
/* 813A16A4 | 48 00 86 4D */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A16A8 | 3B E0 00 00 */	li r31, 0x0
/* 813A16AC | 48 00 00 0C */	b .L_813A16B8
.L_813A16B0:
/* 813A16B0 | 7F E3 FB 78 */	mr r3, r31
/* 813A16B4 | 48 00 3D 31 */	bl clearEvent__Q33ipl5scene10ChanAppBoxFv
.L_813A16B8:
/* 813A16B8 | 7F E4 FB 78 */	mr r4, r31
/* 813A16BC | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813A16C0 | 48 17 0C 1D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A16C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A16C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A16CC | 40 82 FF E4 */	bne .L_813A16B0
/* 813A16D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A16D4 | 41 82 00 18 */	beq .L_813A16EC
/* 813A16D8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A16DC | 3C 80 81 65 */	lis r4, lbl_8164CB64@ha
/* 813A16E0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A16E4 | 38 84 CB 64 */	addi r4, r4, lbl_8164CB64@l
/* 813A16E8 | 4B FC 9D 85 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813A16EC:
/* 813A16EC | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 813A16F0 | 7F A4 EB 78 */	mr r4, r29
/* 813A16F4 | 48 00 2B 95 */	bl anmScrollL__Q33ipl5scene11ChanAppBaseFb
/* 813A16F8 | 38 00 00 06 */	li r0, 0x6
/* 813A16FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1700 | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 813A1704 | 48 25 7E 0D */	bl _restgpr_28
/* 813A1708 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A170C | 7C 08 03 A6 */	mtlr r0
/* 813A1710 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A1714 | 4E 80 00 20 */	blr
.endfn start_scroll_l__Q33ipl5scene11ChannelEditFbb

# .text:0x1318 | 0x813A1718 | size: 0xB4
# ipl::scene::ChannelEdit::enable_scroll_r()
.fn enable_scroll_r__Q33ipl5scene11ChannelEditFv, global
/* 813A1718 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A171C | 7C 08 02 A6 */	mflr r0
/* 813A1720 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1724 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1728 | 7C 7F 1B 78 */	mr r31, r3
/* 813A172C | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813A1730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1734 | 41 82 00 0C */	beq .L_813A1740
/* 813A1738 | 38 60 00 00 */	li r3, 0x0
/* 813A173C | 48 00 00 7C */	b .L_813A17B8
.L_813A1740:
/* 813A1740 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A1744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1748 | 40 82 00 2C */	bne .L_813A1774
/* 813A174C | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1750 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A1754 | 4B FA 71 49 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813A1758 | 80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 813A175C | 38 00 00 0F */	li r0, 0xf
/* 813A1760 | 7C 64 18 50 */	subf r3, r4, r3
/* 813A1764 | 7C 03 00 10 */	subfc r0, r3, r0
/* 813A1768 | 7C 00 01 10 */	subfe r0, r0, r0
/* 813A176C | 7C 60 00 D0 */	neg r3, r0
/* 813A1770 | 48 00 00 48 */	b .L_813A17B8
.L_813A1774:
/* 813A1774 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1778 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A177C | 4B FA 71 09 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A1780 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A1784 | 40 82 00 30 */	bne .L_813A17B4
/* 813A1788 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A178C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A1790 | 4B FA 73 3D */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813A1794 | 80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 813A1798 | 7C 80 18 50 */	subf r4, r0, r3
/* 813A179C | 68 80 00 0F */	xori r0, r4, 0xf
/* 813A17A0 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 813A17A4 | 7C 00 20 38 */	and r0, r0, r4
/* 813A17A8 | 7C 00 18 50 */	subf r0, r0, r3
/* 813A17AC | 54 03 0F FE */	srwi r3, r0, 31
/* 813A17B0 | 48 00 00 08 */	b .L_813A17B8
.L_813A17B4:
/* 813A17B4 | 38 60 00 00 */	li r3, 0x0
.L_813A17B8:
/* 813A17B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A17BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A17C0 | 7C 08 03 A6 */	mtlr r0
/* 813A17C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A17C8 | 4E 80 00 20 */	blr
.endfn enable_scroll_r__Q33ipl5scene11ChannelEditFv

# .text:0x13CC | 0x813A17CC | size: 0x28
# ipl::scene::ChannelEdit::enable_scroll_l()
.fn enable_scroll_l__Q33ipl5scene11ChannelEditFv, global
/* 813A17CC | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813A17D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A17D4 | 41 82 00 0C */	beq .L_813A17E0
/* 813A17D8 | 38 60 00 00 */	li r3, 0x0
/* 813A17DC | 4E 80 00 20 */	blr
.L_813A17E0:
/* 813A17E0 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813A17E4 | 7C 03 00 D0 */	neg r0, r3
/* 813A17E8 | 7C 00 18 78 */	andc r0, r0, r3
/* 813A17EC | 54 03 0F FE */	srwi r3, r0, 31
/* 813A17F0 | 4E 80 00 20 */	blr
.endfn enable_scroll_l__Q33ipl5scene11ChannelEditFv

# .text:0x13F4 | 0x813A17F4 | size: 0xCC
# ipl::scene::ChannelEdit::draw()
.fn draw__Q33ipl5scene11ChannelEditFv, global
/* 813A17F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A17F8 | 7C 08 02 A6 */	mflr r0
/* 813A17FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A1800 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1804 | 48 25 7C C5 */	bl _savegpr_29
/* 813A1808 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A180C | 7C 7D 1B 78 */	mr r29, r3
/* 813A1810 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A1814 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813A1818 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813A181C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A1820 | 40 82 00 88 */	bne .L_813A18A8
/* 813A1824 | 38 60 00 00 */	li r3, 0x0
/* 813A1828 | 4B FC 12 45 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813A182C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813A1830 | 48 00 28 B9 */	bl draw__Q33ipl5scene11ChanAppBaseFv
/* 813A1834 | 3B E0 00 00 */	li r31, 0x0
/* 813A1838 | 48 00 00 0C */	b .L_813A1844
.L_813A183C:
/* 813A183C | 7F E3 FB 78 */	mr r3, r31
/* 813A1840 | 48 00 34 DD */	bl draw__Q33ipl5scene10ChanAppBoxFv
.L_813A1844:
/* 813A1844 | 7F E4 FB 78 */	mr r4, r31
/* 813A1848 | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813A184C | 48 17 0A 91 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A1850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1854 | 7C 7F 1B 78 */	mr r31, r3
/* 813A1858 | 40 82 FF E4 */	bne .L_813A183C
/* 813A185C | 3B C0 00 00 */	li r30, 0x0
/* 813A1860 | 3B E0 00 00 */	li r31, 0x0
.L_813A1864:
/* 813A1864 | 7C 7D FA 14 */	add r3, r29, r31
/* 813A1868 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813A186C | 48 02 FD 8D */	bl draw__Q33ipl5scene11TextBalloonFv
/* 813A1870 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813A1874 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813A1878 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 813A187C | 41 80 FF E8 */	blt .L_813A1864
/* 813A1880 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813A1884 | 38 8D 87 BC */	li r4, lbl_816967FC@sda21
/* 813A1888 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A188C | 4B FC 8F 7D */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813A1890 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813A1894 | 38 8D 87 C3 */	li r4, lbl_81696803@sda21
/* 813A1898 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A189C | 4B FC 8F 6D */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813A18A0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813A18A4 | 48 00 43 B9 */	bl draw__Q33ipl5scene11ChanAppEditFv
.L_813A18A8:
/* 813A18A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A18AC | 48 25 7C 69 */	bl _restgpr_29
/* 813A18B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A18B4 | 7C 08 03 A6 */	mtlr r0
/* 813A18B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A18BC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene11ChannelEditFv

# .text:0x14C0 | 0x813A18C0 | size: 0x10
# ipl::scene::ChannelEdit::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene11ChannelEditCFv, global
/* 813A18C0 | 80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 813A18C4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A18C8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813A18CC | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene11ChannelEditCFv

# .text:0x14D0 | 0x813A18D0 | size: 0xC0
# ipl::scene::ChannelEdit::onPoint(ipl::scene::AnmPane*)
.fn onPoint__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane, global
/* 813A18D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A18D4 | 7C 08 02 A6 */	mflr r0
/* 813A18D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A18DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A18E0 | 48 25 7B E5 */	bl _savegpr_28
/* 813A18E4 | 3F E0 81 65 */	lis r31, lbl_8164C688@ha
/* 813A18E8 | 83 C4 00 08 */	lwz r30, 0x8(r4)
/* 813A18EC | 3B FF C6 88 */	addi r31, r31, lbl_8164C688@l
/* 813A18F0 | 7C 7C 1B 78 */	mr r28, r3
/* 813A18F4 | 7C 9D 23 78 */	mr r29, r4
/* 813A18F8 | 7F C3 F3 78 */	mr r3, r30
/* 813A18FC | 38 9F 04 E7 */	addi r4, r31, 0x4e7
/* 813A1900 | 48 26 0B 81 */	bl strcmp
/* 813A1904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1908 | 40 82 00 10 */	bne .L_813A1918
/* 813A190C | 80 1C 00 BC */	lwz r0, 0xbc(r28)
/* 813A1910 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1914 | 41 82 00 64 */	beq .L_813A1978
.L_813A1918:
/* 813A1918 | 7F C3 F3 78 */	mr r3, r30
/* 813A191C | 38 9F 04 F6 */	addi r4, r31, 0x4f6
/* 813A1920 | 48 26 0B 61 */	bl strcmp
/* 813A1924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1928 | 40 82 00 14 */	bne .L_813A193C
/* 813A192C | 80 1C 00 BC */	lwz r0, 0xbc(r28)
/* 813A1930 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A1934 | 40 82 00 08 */	bne .L_813A193C
/* 813A1938 | 48 00 00 40 */	b .L_813A1978
.L_813A193C:
/* 813A193C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A1940 | 38 9F 05 04 */	addi r4, r31, 0x504
/* 813A1944 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A1948 | 4B FC 9B 25 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A194C | 4B F9 40 6D */	bl getYoungController__Q23ipl6SystemFv
/* 813A1950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1954 | 41 82 00 18 */	beq .L_813A196C
/* 813A1958 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A195C | 38 80 00 00 */	li r4, 0x0
/* 813A1960 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813A1964 | 7D 89 03 A6 */	mtctr r12
/* 813A1968 | 4E 80 04 21 */	bctrl
.L_813A196C:
/* 813A196C | 7F A3 EB 78 */	mr r3, r29
/* 813A1970 | 38 80 00 01 */	li r4, 0x1
/* 813A1974 | 48 00 55 F1 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813A1978:
/* 813A1978 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A197C | 48 25 7B 95 */	bl _restgpr_28
/* 813A1980 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A1984 | 7C 08 03 A6 */	mtlr r0
/* 813A1988 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A198C | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane

# .text:0x1590 | 0x813A1990 | size: 0x90
# ipl::scene::ChannelEdit::onLeft(ipl::scene::AnmPane*)
.fn onLeft__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane, global
/* 813A1990 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A1994 | 7C 08 02 A6 */	mflr r0
/* 813A1998 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A199C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A19A0 | 48 25 7B 29 */	bl _savegpr_29
/* 813A19A4 | 83 E4 00 08 */	lwz r31, 0x8(r4)
/* 813A19A8 | 7C 7D 1B 78 */	mr r29, r3
/* 813A19AC | 3C A0 81 65 */	lis r5, lbl_8164CB6F@ha
/* 813A19B0 | 7C 9E 23 78 */	mr r30, r4
/* 813A19B4 | 7F E3 FB 78 */	mr r3, r31
/* 813A19B8 | 38 85 CB 6F */	addi r4, r5, lbl_8164CB6F@l
/* 813A19BC | 48 26 0A C5 */	bl strcmp
/* 813A19C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A19C4 | 40 82 00 10 */	bne .L_813A19D4
/* 813A19C8 | 80 1D 00 BC */	lwz r0, 0xbc(r29)
/* 813A19CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A19D0 | 41 82 00 38 */	beq .L_813A1A08
.L_813A19D4:
/* 813A19D4 | 3C 80 81 65 */	lis r4, lbl_8164CB7E@ha
/* 813A19D8 | 7F E3 FB 78 */	mr r3, r31
/* 813A19DC | 38 84 CB 7E */	addi r4, r4, lbl_8164CB7E@l
/* 813A19E0 | 48 26 0A A1 */	bl strcmp
/* 813A19E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A19E8 | 40 82 00 14 */	bne .L_813A19FC
/* 813A19EC | 80 1D 00 BC */	lwz r0, 0xbc(r29)
/* 813A19F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A19F4 | 40 82 00 08 */	bne .L_813A19FC
/* 813A19F8 | 48 00 00 10 */	b .L_813A1A08
.L_813A19FC:
/* 813A19FC | 7F C3 F3 78 */	mr r3, r30
/* 813A1A00 | 38 80 00 02 */	li r4, 0x2
/* 813A1A04 | 48 00 55 61 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813A1A08:
/* 813A1A08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1A0C | 48 25 7B 09 */	bl _restgpr_29
/* 813A1A10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A1A14 | 7C 08 03 A6 */	mtlr r0
/* 813A1A18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A1A1C | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane

# .text:0x1620 | 0x813A1A20 | size: 0x294
# ipl::scene::ChannelEdit::onTrig(ipl::scene::AnmPane*)
.fn onTrig__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane, global
/* 813A1A20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A1A24 | 7C 08 02 A6 */	mflr r0
/* 813A1A28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A1A2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1A30 | 48 25 7A 95 */	bl _savegpr_28
/* 813A1A34 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813A1A38 | 3F A0 81 65 */	lis r29, lbl_8164C688@ha
/* 813A1A3C | 7C 7F 1B 78 */	mr r31, r3
/* 813A1A40 | 7C 9C 23 78 */	mr r28, r4
/* 813A1A44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1A48 | 3B BD C6 88 */	addi r29, r29, lbl_8164C688@l
/* 813A1A4C | 41 82 00 0C */	beq .L_813A1A58
/* 813A1A50 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813A1A54 | 40 82 02 48 */	bne .L_813A1C9C
.L_813A1A58:
/* 813A1A58 | 83 C4 00 08 */	lwz r30, 0x8(r4)
/* 813A1A5C | 38 9D 04 E7 */	addi r4, r29, 0x4e7
/* 813A1A60 | 7F C3 F3 78 */	mr r3, r30
/* 813A1A64 | 48 26 0A 1D */	bl strcmp
/* 813A1A68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1A6C | 40 82 00 D4 */	bne .L_813A1B40
/* 813A1A70 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A1A74 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A1A78 | 40 82 00 C8 */	bne .L_813A1B40
/* 813A1A7C | 38 80 00 00 */	li r4, 0x0
/* 813A1A80 | 3B C0 00 00 */	li r30, 0x0
/* 813A1A84 | 48 00 00 08 */	b .L_813A1A8C
.L_813A1A88:
/* 813A1A88 | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813A1A8C:
/* 813A1A8C | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813A1A90 | 48 17 08 4D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A1A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1A98 | 7C 64 1B 78 */	mr r4, r3
/* 813A1A9C | 40 82 FF EC */	bne .L_813A1A88
/* 813A1AA0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A1AA4 | 38 9D 05 1A */	addi r4, r29, 0x51a
/* 813A1AA8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A1AAC | 4B FC 99 C1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A1AB0 | 3B C0 00 00 */	li r30, 0x0
/* 813A1AB4 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A1AB8 | 93 DF 00 C4 */	stw r30, 0xc4(r31)
/* 813A1ABC | 48 00 82 35 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A1AC0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A1AC4 | 48 00 82 79 */	bl cmdListNand__Q33ipl5scene17NandSDCardManagerFv
/* 813A1AC8 | 93 DF 00 BC */	stw r30, 0xbc(r31)
/* 813A1ACC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1AD0 | 88 9F 00 CC */	lbz r4, 0xcc(r31)
/* 813A1AD4 | 88 BF 00 CD */	lbz r5, 0xcd(r31)
/* 813A1AD8 | 48 00 29 71 */	bl anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb
/* 813A1ADC | 9B DF 00 CC */	stb r30, 0xcc(r31)
/* 813A1AE0 | 38 9D 04 A4 */	addi r4, r29, 0x4a4
/* 813A1AE4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1AE8 | 38 A0 00 00 */	li r5, 0x0
/* 813A1AEC | 9B DF 00 CD */	stb r30, 0xcd(r31)
/* 813A1AF0 | 48 00 59 E5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1AF4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1AF8 | 38 9D 04 AE */	addi r4, r29, 0x4ae
/* 813A1AFC | 38 A0 00 00 */	li r5, 0x0
/* 813A1B00 | 48 00 59 D5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1B04 | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813A1B08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1B0C | 40 82 00 20 */	bne .L_813A1B2C
/* 813A1B10 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1B14 | 48 00 26 8D */	bl anmChangeWiitoSD__Q33ipl5scene11ChanAppBaseFv
/* 813A1B18 | 7F E3 FB 78 */	mr r3, r31
/* 813A1B1C | 4B FF F1 DD */	bl fadeout_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A1B20 | 38 00 00 07 */	li r0, 0x7
/* 813A1B24 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1B28 | 48 00 01 74 */	b .L_813A1C9C
.L_813A1B2C:
/* 813A1B2C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1B30 | 48 00 28 15 */	bl anmTextFadeout__Q33ipl5scene11ChanAppBaseFv
/* 813A1B34 | 38 00 00 18 */	li r0, 0x18
/* 813A1B38 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1B3C | 48 00 01 60 */	b .L_813A1C9C
.L_813A1B40:
/* 813A1B40 | 7F C3 F3 78 */	mr r3, r30
/* 813A1B44 | 38 9D 04 F6 */	addi r4, r29, 0x4f6
/* 813A1B48 | 48 26 09 39 */	bl strcmp
/* 813A1B4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1B50 | 40 82 00 E0 */	bne .L_813A1C30
/* 813A1B54 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A1B58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1B5C | 40 82 00 D4 */	bne .L_813A1C30
/* 813A1B60 | 38 80 00 00 */	li r4, 0x0
/* 813A1B64 | 3B C0 00 00 */	li r30, 0x0
/* 813A1B68 | 48 00 00 08 */	b .L_813A1B70
.L_813A1B6C:
/* 813A1B6C | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813A1B70:
/* 813A1B70 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813A1B74 | 48 17 07 69 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A1B78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1B7C | 7C 64 1B 78 */	mr r4, r3
/* 813A1B80 | 40 82 FF EC */	bne .L_813A1B6C
/* 813A1B84 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A1B88 | 38 9D 05 1A */	addi r4, r29, 0x51a
/* 813A1B8C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A1B90 | 4B FC 98 DD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A1B94 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A1B98 | 48 00 7D A1 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813A1B9C | 3B C0 00 00 */	li r30, 0x0
/* 813A1BA0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A1BA4 | 93 DF 00 C4 */	stw r30, 0xc4(r31)
/* 813A1BA8 | 48 00 81 49 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A1BAC | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A1BB0 | 48 00 81 D9 */	bl cmdListSD__Q33ipl5scene17NandSDCardManagerFv
/* 813A1BB4 | 38 00 00 01 */	li r0, 0x1
/* 813A1BB8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1BBC | 90 1F 00 BC */	stw r0, 0xbc(r31)
/* 813A1BC0 | 88 9F 00 CC */	lbz r4, 0xcc(r31)
/* 813A1BC4 | 88 BF 00 CD */	lbz r5, 0xcd(r31)
/* 813A1BC8 | 48 00 28 81 */	bl anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb
/* 813A1BCC | 9B DF 00 CC */	stb r30, 0xcc(r31)
/* 813A1BD0 | 38 9D 04 A4 */	addi r4, r29, 0x4a4
/* 813A1BD4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1BD8 | 38 A0 00 00 */	li r5, 0x0
/* 813A1BDC | 9B DF 00 CD */	stb r30, 0xcd(r31)
/* 813A1BE0 | 48 00 58 F5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1BE4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1BE8 | 38 9D 04 AE */	addi r4, r29, 0x4ae
/* 813A1BEC | 38 A0 00 00 */	li r5, 0x0
/* 813A1BF0 | 48 00 58 E5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A1BF4 | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813A1BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1BFC | 40 82 00 20 */	bne .L_813A1C1C
/* 813A1C00 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1C04 | 48 00 25 DD */	bl anmChangeSDtoWii__Q33ipl5scene11ChanAppBaseFv
/* 813A1C08 | 7F E3 FB 78 */	mr r3, r31
/* 813A1C0C | 4B FF F0 ED */	bl fadeout_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A1C10 | 38 00 00 07 */	li r0, 0x7
/* 813A1C14 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1C18 | 48 00 00 84 */	b .L_813A1C9C
.L_813A1C1C:
/* 813A1C1C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A1C20 | 48 00 27 25 */	bl anmTextFadeout__Q33ipl5scene11ChanAppBaseFv
/* 813A1C24 | 38 00 00 18 */	li r0, 0x18
/* 813A1C28 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1C2C | 48 00 00 70 */	b .L_813A1C9C
.L_813A1C30:
/* 813A1C30 | 7F C3 F3 78 */	mr r3, r30
/* 813A1C34 | 38 8D 87 CA */	li r4, lbl_8169680A@sda21
/* 813A1C38 | 48 26 08 49 */	bl strcmp
/* 813A1C3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1C40 | 40 82 00 28 */	bne .L_813A1C68
/* 813A1C44 | 7F E3 FB 78 */	mr r3, r31
/* 813A1C48 | 4B FF FA D1 */	bl enable_scroll_r__Q33ipl5scene11ChannelEditFv
/* 813A1C4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1C50 | 41 82 00 18 */	beq .L_813A1C68
/* 813A1C54 | 7F E3 FB 78 */	mr r3, r31
/* 813A1C58 | 38 80 00 01 */	li r4, 0x1
/* 813A1C5C | 38 A0 00 01 */	li r5, 0x1
/* 813A1C60 | 4B FF F9 89 */	bl start_scroll_r__Q33ipl5scene11ChannelEditFbb
/* 813A1C64 | 48 00 00 38 */	b .L_813A1C9C
.L_813A1C68:
/* 813A1C68 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813A1C6C | 38 8D 87 D1 */	li r4, lbl_81696811@sda21
/* 813A1C70 | 48 26 08 11 */	bl strcmp
/* 813A1C74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1C78 | 40 82 00 24 */	bne .L_813A1C9C
/* 813A1C7C | 7F E3 FB 78 */	mr r3, r31
/* 813A1C80 | 4B FF FB 4D */	bl enable_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A1C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1C88 | 41 82 00 14 */	beq .L_813A1C9C
/* 813A1C8C | 7F E3 FB 78 */	mr r3, r31
/* 813A1C90 | 38 80 00 01 */	li r4, 0x1
/* 813A1C94 | 38 A0 00 01 */	li r5, 0x1
/* 813A1C98 | 4B FF F9 E9 */	bl start_scroll_l__Q33ipl5scene11ChannelEditFbb
.L_813A1C9C:
/* 813A1C9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A1CA0 | 48 25 78 71 */	bl _restgpr_28
/* 813A1CA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A1CA8 | 7C 08 03 A6 */	mtlr r0
/* 813A1CAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A1CB0 | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane

# .text:0x18B4 | 0x813A1CB4 | size: 0x7C
# ipl::scene::ChannelEdit::onTrig(ipl::scene::ChanAppBox*)
.fn onTrig__Q33ipl5scene11ChannelEditFPQ33ipl5scene10ChanAppBox, global
/* 813A1CB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1CB8 | 7C 08 02 A6 */	mflr r0
/* 813A1CBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1CC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1CC4 | 7C 9F 23 78 */	mr r31, r4
/* 813A1CC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A1CCC | 7C 7E 1B 78 */	mr r30, r3
/* 813A1CD0 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813A1CD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1CD8 | 40 82 00 40 */	bne .L_813A1D18
/* 813A1CDC | 90 83 00 C0 */	stw r4, 0xc0(r3)
/* 813A1CE0 | 80 64 00 44 */	lwz r3, 0x44(r4)
/* 813A1CE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1CE8 | 41 82 00 08 */	beq .L_813A1CF0
/* 813A1CEC | 48 02 F9 7D */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813A1CF0:
/* 813A1CF0 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813A1CF4 | 7F E4 FB 78 */	mr r4, r31
/* 813A1CF8 | 48 00 41 C1 */	bl anmFadein__Q33ipl5scene11ChanAppEditFPQ33ipl5scene10ChanAppBox
/* 813A1CFC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A1D00 | 3C 80 81 65 */	lis r4, lbl_8164CBB2@ha
/* 813A1D04 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A1D08 | 38 84 CB B2 */	addi r4, r4, lbl_8164CBB2@l
/* 813A1D0C | 4B FC 97 61 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A1D10 | 38 00 00 0B */	li r0, 0xb
/* 813A1D14 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813A1D18:
/* 813A1D18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A1D1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A1D20 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A1D24 | 7C 08 03 A6 */	mtlr r0
/* 813A1D28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A1D2C | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene11ChannelEditFPQ33ipl5scene10ChanAppBox

# .text:0x1930 | 0x813A1D30 | size: 0x70
# ipl::scene::ChannelEdit::onTrigButton(bool)
.fn onTrigButton__Q33ipl5scene11ChannelEditFb, global
/* 813A1D30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1D34 | 7C 08 02 A6 */	mflr r0
/* 813A1D38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1D3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1D40 | 7C 9F 23 78 */	mr r31, r4
/* 813A1D44 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A1D48 | 7C 7E 1B 78 */	mr r30, r3
/* 813A1D4C | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813A1D50 | 88 9E 00 CC */	lbz r4, 0xcc(r30)
/* 813A1D54 | 88 BE 00 CD */	lbz r5, 0xcd(r30)
/* 813A1D58 | 48 00 26 F1 */	bl anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb
/* 813A1D5C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A1D60 | 7F E4 FB 78 */	mr r4, r31
/* 813A1D64 | 48 00 23 D5 */	bl anmFadeout__Q33ipl5scene11ChanAppBaseFb
/* 813A1D68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A1D6C | 40 82 00 0C */	bne .L_813A1D78
/* 813A1D70 | 7F C3 F3 78 */	mr r3, r30
/* 813A1D74 | 4B FF EF 85 */	bl fadeout_chanapp_box__Q33ipl5scene11ChannelEditFv
.L_813A1D78:
/* 813A1D78 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A1D7C | 48 00 7B 71 */	bl cmdTerminate__Q33ipl5scene17NandSDCardManagerFv
/* 813A1D80 | 38 00 00 03 */	li r0, 0x3
/* 813A1D84 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 813A1D88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A1D8C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A1D90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A1D94 | 7C 08 03 A6 */	mtlr r0
/* 813A1D98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A1D9C | 4E 80 00 20 */	blr
.endfn onTrigButton__Q33ipl5scene11ChannelEditFb

# .text:0x19A0 | 0x813A1DA0 | size: 0x64
# ipl::scene::ChannelEdit::onTrigCopy()
.fn onTrigCopy__Q33ipl5scene11ChannelEditFv, global
/* 813A1DA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1DA4 | 7C 08 02 A6 */	mflr r0
/* 813A1DA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1DAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1DB0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A1DB4 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A1DB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1DBC | 40 82 00 10 */	bne .L_813A1DCC
/* 813A1DC0 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1DC4 | 48 00 7B 75 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813A1DC8 | 48 00 00 18 */	b .L_813A1DE0
.L_813A1DCC:
/* 813A1DCC | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A1DD0 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1DD4 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A1DD8 | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A1DDC | 48 00 7F F9 */	bl cmdExistNandApp__Q33ipl5scene17NandSDCardManagerFUx
.L_813A1DE0:
/* 813A1DE0 | 38 60 00 01 */	li r3, 0x1
/* 813A1DE4 | 38 00 00 09 */	li r0, 0x9
/* 813A1DE8 | 90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 813A1DEC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1DF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A1DF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A1DF8 | 7C 08 03 A6 */	mtlr r0
/* 813A1DFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A1E00 | 4E 80 00 20 */	blr
.endfn onTrigCopy__Q33ipl5scene11ChannelEditFv

# .text:0x1A04 | 0x813A1E04 | size: 0xC8
# ipl::scene::ChannelEdit::onTrigDel()
.fn onTrigDel__Q33ipl5scene11ChannelEditFv, global
/* 813A1E04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1E08 | 7C 08 02 A6 */	mflr r0
/* 813A1E0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1E10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1E14 | 7C 7F 1B 78 */	mr r31, r3
/* 813A1E18 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A1E1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A1E20 | 40 82 00 84 */	bne .L_813A1EA4
/* 813A1E24 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1E28 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A1E2C | 4B FA 6A 59 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A1E30 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A1E34 | 90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 813A1E38 | 41 82 00 08 */	beq .L_813A1E40
/* 813A1E3C | 48 00 00 50 */	b .L_813A1E8C
.L_813A1E40:
/* 813A1E40 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A1E44 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A1E48 | 4B FA 6E 59 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813A1E4C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A1E50 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A1E54 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813A1E58 | 41 82 00 1C */	beq .L_813A1E74
/* 813A1E5C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A1E60 | 38 80 00 3E */	li r4, 0x3e
/* 813A1E64 | 48 00 47 C5 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A1E68 | 38 00 00 0E */	li r0, 0xe
/* 813A1E6C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1E70 | 48 00 00 48 */	b .L_813A1EB8
.L_813A1E74:
/* 813A1E74 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A1E78 | 38 80 00 F7 */	li r4, 0xf7
/* 813A1E7C | 48 00 46 D9 */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A1E80 | 38 00 00 11 */	li r0, 0x11
/* 813A1E84 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1E88 | 48 00 00 30 */	b .L_813A1EB8
.L_813A1E8C:
/* 813A1E8C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A1E90 | 38 80 00 97 */	li r4, 0x97
/* 813A1E94 | 48 00 47 95 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A1E98 | 38 00 00 0E */	li r0, 0xe
/* 813A1E9C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1EA0 | 48 00 00 18 */	b .L_813A1EB8
.L_813A1EA4:
/* 813A1EA4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 813A1EA8 | 38 80 00 F7 */	li r4, 0xf7
/* 813A1EAC | 48 00 46 A9 */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A1EB0 | 38 00 00 11 */	li r0, 0x11
/* 813A1EB4 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A1EB8:
/* 813A1EB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A1EBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A1EC0 | 7C 08 03 A6 */	mtlr r0
/* 813A1EC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A1EC8 | 4E 80 00 20 */	blr
.endfn onTrigDel__Q33ipl5scene11ChannelEditFv

# .text:0x1ACC | 0x813A1ECC | size: 0x64
# ipl::scene::ChannelEdit::iplChannelEdit_813A1ECC()
.fn iplChannelEdit_813A1ECC__Q33ipl5scene11ChannelEditFv, global
/* 813A1ECC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1ED0 | 7C 08 02 A6 */	mflr r0
/* 813A1ED4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1ED8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1EDC | 7C 7F 1B 78 */	mr r31, r3
/* 813A1EE0 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A1EE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1EE8 | 40 82 00 10 */	bne .L_813A1EF8
/* 813A1EEC | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1EF0 | 48 00 7A 49 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813A1EF4 | 48 00 00 18 */	b .L_813A1F0C
.L_813A1EF8:
/* 813A1EF8 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A1EFC | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A1F00 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A1F04 | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A1F08 | 48 00 7E CD */	bl cmdExistNandApp__Q33ipl5scene17NandSDCardManagerFUx
.L_813A1F0C:
/* 813A1F0C | 38 60 00 02 */	li r3, 0x2
/* 813A1F10 | 38 00 00 1D */	li r0, 0x1d
/* 813A1F14 | 90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 813A1F18 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A1F1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A1F20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A1F24 | 7C 08 03 A6 */	mtlr r0
/* 813A1F28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A1F2C | 4E 80 00 20 */	blr
.endfn iplChannelEdit_813A1ECC__Q33ipl5scene11ChannelEditFv

# .text:0x1B30 | 0x813A1F30 | size: 0x1E8
# ipl::scene::ChannelEdit::on_normal()
.fn on_normal__Q33ipl5scene11ChannelEditFv, global
/* 813A1F30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A1F34 | 7C 08 02 A6 */	mflr r0
/* 813A1F38 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813A1F3C | 38 80 00 16 */	li r4, 0x16
/* 813A1F40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A1F44 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813A1F48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A1F4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A1F50 | 7C 7E 1B 78 */	mr r30, r3
/* 813A1F54 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813A1F58 | 48 06 91 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A1F5C | 48 06 58 0D */	bl fn_81407768
/* 813A1F60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1F64 | 41 82 00 38 */	beq .L_813A1F9C
/* 813A1F68 | 7F C3 F3 78 */	mr r3, r30
/* 813A1F6C | 38 80 00 00 */	li r4, 0x0
/* 813A1F70 | 4B FF FD C1 */	bl onTrigButton__Q33ipl5scene11ChannelEditFb
/* 813A1F74 | 38 80 00 00 */	li r4, 0x0
/* 813A1F78 | 3B E0 00 00 */	li r31, 0x0
/* 813A1F7C | 48 00 00 08 */	b .L_813A1F84
.L_813A1F80:
/* 813A1F80 | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813A1F84:
/* 813A1F84 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A1F88 | 48 17 03 55 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A1F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1F90 | 7C 64 1B 78 */	mr r4, r3
/* 813A1F94 | 40 82 FF EC */	bne .L_813A1F80
/* 813A1F98 | 48 00 01 68 */	b .L_813A2100
.L_813A1F9C:
/* 813A1F9C | 7F C3 F3 78 */	mr r3, r30
/* 813A1FA0 | 4B FF EE 25 */	bl update_sdcard_slot__Q33ipl5scene11ChannelEditFv
/* 813A1FA4 | 7F C3 F3 78 */	mr r3, r30
/* 813A1FA8 | 4B FF EF 55 */	bl update_arw__Q33ipl5scene11ChannelEditFv
/* 813A1FAC | 7F C3 F3 78 */	mr r3, r30
/* 813A1FB0 | 4B FF F0 49 */	bl update_free__Q33ipl5scene11ChannelEditFv
/* 813A1FB4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813A1FB8 | 48 00 21 39 */	bl update__Q33ipl5scene11ChanAppBaseFv
/* 813A1FBC | 3B E0 00 00 */	li r31, 0x0
/* 813A1FC0 | 48 00 00 0C */	b .L_813A1FCC
.L_813A1FC4:
/* 813A1FC4 | 7F E3 FB 78 */	mr r3, r31
/* 813A1FC8 | 48 00 30 29 */	bl update__Q33ipl5scene10ChanAppBoxFv
.L_813A1FCC:
/* 813A1FCC | 7F E4 FB 78 */	mr r4, r31
/* 813A1FD0 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A1FD4 | 48 17 03 09 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A1FD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A1FDC | 7C 7F 1B 78 */	mr r31, r3
/* 813A1FE0 | 40 82 FF E4 */	bne .L_813A1FC4
/* 813A1FE4 | 80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 813A1FE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A1FEC | 40 82 00 40 */	bne .L_813A202C
/* 813A1FF0 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A1FF4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A1FF8 | 4B FA 68 A5 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813A1FFC | 80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 813A2000 | 7C 00 18 40 */	cmplw r0, r3
/* 813A2004 | 40 82 00 64 */	bne .L_813A2068
/* 813A2008 | 7F C3 F3 78 */	mr r3, r30
/* 813A200C | 4B FF F7 C1 */	bl enable_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A2010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2014 | 41 82 00 54 */	beq .L_813A2068
/* 813A2018 | 7F C3 F3 78 */	mr r3, r30
/* 813A201C | 38 80 00 00 */	li r4, 0x0
/* 813A2020 | 38 A0 00 00 */	li r5, 0x0
/* 813A2024 | 4B FF F6 5D */	bl start_scroll_l__Q33ipl5scene11ChannelEditFbb
/* 813A2028 | 48 00 00 D8 */	b .L_813A2100
.L_813A202C:
/* 813A202C | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A2030 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2034 | 4B FA 6A 99 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813A2038 | 80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 813A203C | 7C 00 18 00 */	cmpw r0, r3
/* 813A2040 | 40 82 00 28 */	bne .L_813A2068
/* 813A2044 | 7F C3 F3 78 */	mr r3, r30
/* 813A2048 | 4B FF F7 85 */	bl enable_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A204C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2050 | 41 82 00 18 */	beq .L_813A2068
/* 813A2054 | 7F C3 F3 78 */	mr r3, r30
/* 813A2058 | 38 80 00 00 */	li r4, 0x0
/* 813A205C | 38 A0 00 00 */	li r5, 0x0
/* 813A2060 | 4B FF F6 21 */	bl start_scroll_l__Q33ipl5scene11ChannelEditFbb
/* 813A2064 | 48 00 00 9C */	b .L_813A2100
.L_813A2068:
/* 813A2068 | 4B F9 39 51 */	bl getYoungController__Q23ipl6SystemFv
/* 813A206C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2070 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2074 | 41 82 00 8C */	beq .L_813A2100
/* 813A2078 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A207C | 3C 80 30 00 */	lis r4, 0x3000
/* 813A2080 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813A2084 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A2088 | 7D 89 03 A6 */	mtctr r12
/* 813A208C | 4E 80 04 21 */	bctrl
/* 813A2090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2094 | 41 82 00 28 */	beq .L_813A20BC
/* 813A2098 | 7F C3 F3 78 */	mr r3, r30
/* 813A209C | 4B FF F7 31 */	bl enable_scroll_l__Q33ipl5scene11ChannelEditFv
/* 813A20A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A20A4 | 41 82 00 18 */	beq .L_813A20BC
/* 813A20A8 | 7F C3 F3 78 */	mr r3, r30
/* 813A20AC | 38 80 00 00 */	li r4, 0x0
/* 813A20B0 | 38 A0 00 01 */	li r5, 0x1
/* 813A20B4 | 4B FF F5 CD */	bl start_scroll_l__Q33ipl5scene11ChannelEditFbb
/* 813A20B8 | 48 00 00 48 */	b .L_813A2100
.L_813A20BC:
/* 813A20BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813A20C0 | 3C 80 06 00 */	lis r4, 0x600
/* 813A20C4 | 7F E3 FB 78 */	mr r3, r31
/* 813A20C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A20CC | 38 84 00 10 */	addi r4, r4, 0x10
/* 813A20D0 | 7D 89 03 A6 */	mtctr r12
/* 813A20D4 | 4E 80 04 21 */	bctrl
/* 813A20D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A20DC | 41 82 00 24 */	beq .L_813A2100
/* 813A20E0 | 7F C3 F3 78 */	mr r3, r30
/* 813A20E4 | 4B FF F6 35 */	bl enable_scroll_r__Q33ipl5scene11ChannelEditFv
/* 813A20E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A20EC | 41 82 00 14 */	beq .L_813A2100
/* 813A20F0 | 7F C3 F3 78 */	mr r3, r30
/* 813A20F4 | 38 80 00 00 */	li r4, 0x0
/* 813A20F8 | 38 A0 00 01 */	li r5, 0x1
/* 813A20FC | 4B FF F4 ED */	bl start_scroll_r__Q33ipl5scene11ChannelEditFbb
.L_813A2100:
/* 813A2100 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2104 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2108 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A210C | 7C 08 03 A6 */	mtlr r0
/* 813A2110 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2114 | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene11ChannelEditFv

# .text:0x1D18 | 0x813A2118 | size: 0x58
# ipl::scene::ChannelEdit::on_fadein1st()
.fn on_fadein1st__Q33ipl5scene11ChannelEditFv, global
/* 813A2118 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A211C | 7C 08 02 A6 */	mflr r0
/* 813A2120 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2124 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2128 | 7C 7F 1B 78 */	mr r31, r3
/* 813A212C | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813A2130 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813A2134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2138 | 40 82 00 24 */	bne .L_813A215C
/* 813A213C | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2140 | 48 00 00 31 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A2144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2148 | 40 82 00 14 */	bne .L_813A215C
/* 813A214C | 7F E3 FB 78 */	mr r3, r31
/* 813A2150 | 4B FF EA E5 */	bl fadein_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A2154 | 38 00 00 02 */	li r0, 0x2
/* 813A2158 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A215C:
/* 813A215C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2160 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2164 | 7C 08 03 A6 */	mtlr r0
/* 813A2168 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A216C | 4E 80 00 20 */	blr
.endfn on_fadein1st__Q33ipl5scene11ChannelEditFv

# .text:0x1D70 | 0x813A2170 | size: 0x2C
# ipl::scene::NandSDCardManager::isWorking()
.fn isWorking__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A2170 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A2174 | 38 80 00 00 */	li r4, 0x0
/* 813A2178 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813A217C | 40 82 00 14 */	bne .L_813A2190
/* 813A2180 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A2184 | 80 03 86 74 */	lwz r0, -0x798c(r3)
/* 813A2188 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A218C | 40 81 00 08 */	ble .L_813A2194
.L_813A2190:
/* 813A2190 | 38 80 00 01 */	li r4, 0x1
.L_813A2194:
/* 813A2194 | 7C 83 23 78 */	mr r3, r4
/* 813A2198 | 4E 80 00 20 */	blr
.endfn isWorking__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1D9C | 0x813A219C | size: 0x58
# ipl::scene::ChannelEdit::on_fadein2nd()
.fn on_fadein2nd__Q33ipl5scene11ChannelEditFv, global
/* 813A219C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A21A0 | 7C 08 02 A6 */	mflr r0
/* 813A21A4 | 38 80 00 00 */	li r4, 0x0
/* 813A21A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A21AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A21B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A21B4 | 48 00 00 10 */	b .L_813A21C4
.L_813A21B8:
/* 813A21B8 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813A21BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A21C0 | 40 82 00 20 */	bne .L_813A21E0
.L_813A21C4:
/* 813A21C4 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813A21C8 | 48 17 01 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A21CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A21D0 | 7C 64 1B 78 */	mr r4, r3
/* 813A21D4 | 40 82 FF E4 */	bne .L_813A21B8
/* 813A21D8 | 38 00 00 00 */	li r0, 0x0
/* 813A21DC | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A21E0:
/* 813A21E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A21E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A21E8 | 7C 08 03 A6 */	mtlr r0
/* 813A21EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A21F0 | 4E 80 00 20 */	blr
.endfn on_fadein2nd__Q33ipl5scene11ChannelEditFv

# .text:0x1DF4 | 0x813A21F4 | size: 0x2C
# ipl::scene::ChannelEdit::on_fadeout1st()
.fn on_fadeout1st__Q33ipl5scene11ChannelEditFv, global
/* 813A21F4 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813A21F8 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813A21FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2200 | 4C 82 00 20 */	bnelr
/* 813A2204 | 80 83 00 7C */	lwz r4, 0x7c(r3)
/* 813A2208 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813A220C | 2C 00 00 1F */	cmpwi r0, 0x1f
/* 813A2210 | 4C 82 00 20 */	bnelr
/* 813A2214 | 38 00 00 04 */	li r0, 0x4
/* 813A2218 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A221C | 4E 80 00 20 */	blr
.endfn on_fadeout1st__Q33ipl5scene11ChannelEditFv

# .text:0x1E20 | 0x813A2220 | size: 0x48
# ipl::scene::ChannelEdit::on_fadeout2nd()
.fn on_fadeout2nd__Q33ipl5scene11ChannelEditFv, global
/* 813A2220 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2224 | 7C 08 02 A6 */	mflr r0
/* 813A2228 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A222C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2230 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A2234 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 813A2238 | 60 00 00 02 */	ori r0, r0, 0x2
/* 813A223C | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 813A2240 | 80 64 00 A8 */	lwz r3, 0xa8(r4)
/* 813A2244 | 4B FB E8 A9 */	bl restart__Q33ipl3bs27ManagerFv
/* 813A2248 | 3C 60 81 65 */	lis r3, lbl_8164CBC1@ha
/* 813A224C | 38 63 CB C1 */	addi r3, r3, lbl_8164CBC1@l
/* 813A2250 | 4C C6 31 82 */	crclr cr1eq
/* 813A2254 | 48 18 C4 4D */	bl OSReport
/* 813A2258 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A225C | 7C 08 03 A6 */	mtlr r0
/* 813A2260 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2264 | 4E 80 00 20 */	blr
.endfn on_fadeout2nd__Q33ipl5scene11ChannelEditFv

# .text:0x1E68 | 0x813A2268 | size: 0xA4
# ipl::scene::ChannelEdit::on_scroll_r()
.fn on_scroll_r__Q33ipl5scene11ChannelEditFv, global
/* 813A2268 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A226C | 7C 08 02 A6 */	mflr r0
/* 813A2270 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2274 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2278 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A227C | 7C 7E 1B 78 */	mr r30, r3
/* 813A2280 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813A2284 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813A2288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A228C | 40 82 00 60 */	bne .L_813A22EC
/* 813A2290 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2294 | 48 00 00 79 */	bl iplChannelEdit_813A230C__Q33ipl5scene11ChannelEditFv
/* 813A2298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A229C | 41 82 00 50 */	beq .L_813A22EC
/* 813A22A0 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813A22A4 | 38 80 00 00 */	li r4, 0x0
/* 813A22A8 | 3B E0 00 00 */	li r31, 0x0
/* 813A22AC | 38 03 00 0F */	addi r0, r3, 0xf
/* 813A22B0 | 90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 813A22B4 | 48 00 00 08 */	b .L_813A22BC
.L_813A22B8:
/* 813A22B8 | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813A22BC:
/* 813A22BC | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A22C0 | 48 17 00 1D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A22C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A22C8 | 7C 64 1B 78 */	mr r4, r3
/* 813A22CC | 40 82 FF EC */	bne .L_813A22B8
/* 813A22D0 | 80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 813A22D4 | 7F C3 F3 78 */	mr r3, r30
/* 813A22D8 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A22DC | 54 04 D9 7E */	srwi r4, r0, 5
/* 813A22E0 | 4B FF EA 79 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A22E4 | 38 00 00 00 */	li r0, 0x0
/* 813A22E8 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813A22EC:
/* 813A22EC | 7F C3 F3 78 */	mr r3, r30
/* 813A22F0 | 4B FF E8 71 */	bl setpos_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A22F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A22F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A22FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A2300 | 7C 08 03 A6 */	mtlr r0
/* 813A2304 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2308 | 4E 80 00 20 */	blr
.endfn on_scroll_r__Q33ipl5scene11ChannelEditFv

# .text:0x1F0C | 0x813A230C | size: 0x28
# ipl::scene::ChannelEdit::iplChannelEdit_813A230C()
.fn iplChannelEdit_813A230C__Q33ipl5scene11ChannelEditFv, global
/* 813A230C | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A2310 | 38 60 00 00 */	li r3, 0x0
/* 813A2314 | 80 04 87 74 */	lwz r0, -0x788c(r4)
/* 813A2318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A231C | 4C 82 00 20 */	bnelr
/* 813A2320 | 80 04 86 74 */	lwz r0, -0x798c(r4)
/* 813A2324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2328 | 4C 82 00 20 */	bnelr
/* 813A232C | 38 60 00 01 */	li r3, 0x1
/* 813A2330 | 4E 80 00 20 */	blr
.endfn iplChannelEdit_813A230C__Q33ipl5scene11ChannelEditFv

# .text:0x1F34 | 0x813A2334 | size: 0xA4
# ipl::scene::ChannelEdit::on_scroll_l()
.fn on_scroll_l__Q33ipl5scene11ChannelEditFv, global
/* 813A2334 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2338 | 7C 08 02 A6 */	mflr r0
/* 813A233C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2340 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2344 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A2348 | 7C 7E 1B 78 */	mr r30, r3
/* 813A234C | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813A2350 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813A2354 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2358 | 40 82 00 60 */	bne .L_813A23B8
/* 813A235C | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2360 | 4B FF FF AD */	bl iplChannelEdit_813A230C__Q33ipl5scene11ChannelEditFv
/* 813A2364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2368 | 41 82 00 50 */	beq .L_813A23B8
/* 813A236C | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813A2370 | 38 80 00 00 */	li r4, 0x0
/* 813A2374 | 3B E0 00 00 */	li r31, 0x0
/* 813A2378 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813A237C | 90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 813A2380 | 48 00 00 08 */	b .L_813A2388
.L_813A2384:
/* 813A2384 | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813A2388:
/* 813A2388 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A238C | 48 16 FF 51 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A2390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2394 | 7C 64 1B 78 */	mr r4, r3
/* 813A2398 | 40 82 FF EC */	bne .L_813A2384
/* 813A239C | 80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 813A23A0 | 7F C3 F3 78 */	mr r3, r30
/* 813A23A4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A23A8 | 54 04 D9 7E */	srwi r4, r0, 5
/* 813A23AC | 4B FF E9 AD */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A23B0 | 38 00 00 00 */	li r0, 0x0
/* 813A23B4 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813A23B8:
/* 813A23B8 | 7F C3 F3 78 */	mr r3, r30
/* 813A23BC | 4B FF E7 A5 */	bl setpos_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A23C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A23C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A23C8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A23CC | 7C 08 03 A6 */	mtlr r0
/* 813A23D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A23D4 | 4E 80 00 20 */	blr
.endfn on_scroll_l__Q33ipl5scene11ChannelEditFv

# .text:0x1FD8 | 0x813A23D8 | size: 0x1C4
# ipl::scene::ChannelEdit::on_change_tag1st()
.fn on_change_tag1st__Q33ipl5scene11ChannelEditFv, global
/* 813A23D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A23DC | 7C 08 02 A6 */	mflr r0
/* 813A23E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A23E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A23E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A23EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A23F0 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A23F4 | 4B FF FD 7D */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A23F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A23FC | 40 82 01 88 */	bne .L_813A2584
/* 813A2400 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2404 | 4B FF FF 09 */	bl iplChannelEdit_813A230C__Q33ipl5scene11ChannelEditFv
/* 813A2408 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A240C | 40 82 00 08 */	bne .L_813A2414
/* 813A2410 | 48 00 01 74 */	b .L_813A2584
.L_813A2414:
/* 813A2414 | 38 80 00 00 */	li r4, 0x0
/* 813A2418 | 3B C0 00 00 */	li r30, 0x0
/* 813A241C | 48 00 00 20 */	b .L_813A243C
.L_813A2420:
/* 813A2420 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813A2424 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A2428 | 40 82 01 5C */	bne .L_813A2584
/* 813A242C | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 813A2430 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2434 | 41 82 00 08 */	beq .L_813A243C
/* 813A2438 | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813A243C:
/* 813A243C | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813A2440 | 48 16 FE 9D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A2444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2448 | 7C 64 1B 78 */	mr r4, r3
/* 813A244C | 40 82 FF D4 */	bne .L_813A2420
/* 813A2450 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A2454 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A2458 | 40 82 01 10 */	bne .L_813A2568
/* 813A245C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2460 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2464 | 4B FA 64 21 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A2468 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813A246C | 90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 813A2470 | 41 82 00 B8 */	beq .L_813A2528
/* 813A2474 | 40 80 00 1C */	bge .L_813A2490
/* 813A2478 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813A247C | 41 82 00 44 */	beq .L_813A24C0
/* 813A2480 | 40 80 00 54 */	bge .L_813A24D4
/* 813A2484 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813A2488 | 40 80 00 14 */	bge .L_813A249C
/* 813A248C | 48 00 00 9C */	b .L_813A2528
.L_813A2490:
/* 813A2490 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813A2494 | 40 80 00 94 */	bge .L_813A2528
/* 813A2498 | 48 00 00 60 */	b .L_813A24F8
.L_813A249C:
/* 813A249C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A24A0 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813A24A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A24A8 | 40 82 00 DC */	bne .L_813A2584
/* 813A24AC | 38 80 01 21 */	li r4, 0x121
/* 813A24B0 | 48 00 1E 41 */	bl anmTextFadein__Q33ipl5scene11ChanAppBaseFUl
/* 813A24B4 | 38 00 00 16 */	li r0, 0x16
/* 813A24B8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A24BC | 48 00 00 C8 */	b .L_813A2584
.L_813A24C0:
/* 813A24C0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A24C4 | 48 00 74 75 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813A24C8 | 38 00 00 15 */	li r0, 0x15
/* 813A24CC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A24D0 | 48 00 00 B4 */	b .L_813A2584
.L_813A24D4:
/* 813A24D4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A24D8 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813A24DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A24E0 | 40 82 00 A4 */	bne .L_813A2584
/* 813A24E4 | 38 80 00 38 */	li r4, 0x38
/* 813A24E8 | 48 00 1E 09 */	bl anmTextFadein__Q33ipl5scene11ChanAppBaseFUl
/* 813A24EC | 38 00 00 16 */	li r0, 0x16
/* 813A24F0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A24F4 | 48 00 00 90 */	b .L_813A2584
.L_813A24F8:
/* 813A24F8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A24FC | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813A2500 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2504 | 40 82 00 80 */	bne .L_813A2584
/* 813A2508 | 7F E3 FB 78 */	mr r3, r31
/* 813A250C | 38 80 00 00 */	li r4, 0x0
/* 813A2510 | 4B FF E8 49 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A2514 | 7F E3 FB 78 */	mr r3, r31
/* 813A2518 | 4B FF E7 1D */	bl fadein_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A251C | 38 00 00 08 */	li r0, 0x8
/* 813A2520 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2524 | 48 00 00 60 */	b .L_813A2584
.L_813A2528:
/* 813A2528 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A252C | 48 00 70 31 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A2530 | 3C A0 81 65 */	lis r5, lbl_8164CBDD@ha
/* 813A2534 | 7C 64 1B 78 */	mr r4, r3
/* 813A2538 | 38 65 CB DD */	addi r3, r5, lbl_8164CBDD@l
/* 813A253C | 4C C6 31 82 */	crclr cr1eq
/* 813A2540 | 48 18 C1 61 */	bl OSReport
/* 813A2544 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A2548 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813A254C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2550 | 40 82 00 34 */	bne .L_813A2584
/* 813A2554 | 38 80 00 97 */	li r4, 0x97
/* 813A2558 | 48 00 1D 99 */	bl anmTextFadein__Q33ipl5scene11ChanAppBaseFUl
/* 813A255C | 38 00 00 16 */	li r0, 0x16
/* 813A2560 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2564 | 48 00 00 20 */	b .L_813A2584
.L_813A2568:
/* 813A2568 | 7F E3 FB 78 */	mr r3, r31
/* 813A256C | 38 80 00 01 */	li r4, 0x1
/* 813A2570 | 4B FF E7 E9 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A2574 | 7F E3 FB 78 */	mr r3, r31
/* 813A2578 | 4B FF E6 BD */	bl fadein_chanapp_box__Q33ipl5scene11ChannelEditFv
/* 813A257C | 38 00 00 08 */	li r0, 0x8
/* 813A2580 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2584:
/* 813A2584 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2588 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A258C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A2590 | 7C 08 03 A6 */	mtlr r0
/* 813A2594 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2598 | 4E 80 00 20 */	blr
.endfn on_change_tag1st__Q33ipl5scene11ChannelEditFv

# .text:0x219C | 0x813A259C | size: 0x58
# ipl::scene::ChannelEdit::on_change_tag2nd()
.fn on_change_tag2nd__Q33ipl5scene11ChannelEditFv, global
/* 813A259C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A25A0 | 7C 08 02 A6 */	mflr r0
/* 813A25A4 | 38 80 00 00 */	li r4, 0x0
/* 813A25A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A25AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A25B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A25B4 | 48 00 00 10 */	b .L_813A25C4
.L_813A25B8:
/* 813A25B8 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813A25BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A25C0 | 40 82 00 20 */	bne .L_813A25E0
.L_813A25C4:
/* 813A25C4 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813A25C8 | 48 16 FD 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A25CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A25D0 | 7C 64 1B 78 */	mr r4, r3
/* 813A25D4 | 40 82 FF E4 */	bne .L_813A25B8
/* 813A25D8 | 38 00 00 00 */	li r0, 0x0
/* 813A25DC | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A25E0:
/* 813A25E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A25E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A25E8 | 7C 08 03 A6 */	mtlr r0
/* 813A25EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A25F0 | 4E 80 00 20 */	blr
.endfn on_change_tag2nd__Q33ipl5scene11ChannelEditFv

# .text:0x21F4 | 0x813A25F4 | size: 0x234
# ipl::scene::ChannelEdit::on_trig_copy()
.fn on_trig_copy__Q33ipl5scene11ChannelEditFv, global
/* 813A25F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A25F8 | 7C 08 02 A6 */	mflr r0
/* 813A25FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A2600 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A2604 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2608 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A260C | 4B FF FB 65 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A2610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2614 | 40 82 02 00 */	bne .L_813A2814
/* 813A2618 | 80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 813A261C | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813A2620 | 88 03 06 20 */	lbz r0, 0x620(r3)
/* 813A2624 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2628 | 41 82 00 1C */	beq .L_813A2644
/* 813A262C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2630 | 38 80 01 1C */	li r4, 0x11c
/* 813A2634 | 48 00 3F F5 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A2638 | 38 00 00 0E */	li r0, 0xe
/* 813A263C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2640 | 48 00 01 D4 */	b .L_813A2814
.L_813A2644:
/* 813A2644 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A2648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A264C | 40 82 01 28 */	bne .L_813A2774
/* 813A2650 | 88 03 06 21 */	lbz r0, 0x621(r3)
/* 813A2654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2658 | 41 82 00 1C */	beq .L_813A2674
/* 813A265C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2660 | 38 80 01 1C */	li r4, 0x11c
/* 813A2664 | 48 00 3F C5 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A2668 | 38 00 00 0E */	li r0, 0xe
/* 813A266C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2670 | 48 00 01 A4 */	b .L_813A2814
.L_813A2674:
/* 813A2674 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2678 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A267C | 4B FA 62 09 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A2680 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813A2684 | 90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 813A2688 | 41 82 00 D4 */	beq .L_813A275C
/* 813A268C | 40 80 00 1C */	bge .L_813A26A8
/* 813A2690 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813A2694 | 41 82 00 38 */	beq .L_813A26CC
/* 813A2698 | 40 80 00 58 */	bge .L_813A26F0
/* 813A269C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813A26A0 | 40 80 00 14 */	bge .L_813A26B4
/* 813A26A4 | 48 00 00 B8 */	b .L_813A275C
.L_813A26A8:
/* 813A26A8 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813A26AC | 40 80 00 B0 */	bge .L_813A275C
/* 813A26B0 | 48 00 00 58 */	b .L_813A2708
.L_813A26B4:
/* 813A26B4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A26B8 | 38 80 01 21 */	li r4, 0x121
/* 813A26BC | 48 00 3F 6D */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A26C0 | 38 00 00 0E */	li r0, 0xe
/* 813A26C4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A26C8 | 48 00 01 4C */	b .L_813A2814
.L_813A26CC:
/* 813A26CC | 3C 60 81 65 */	lis r3, lbl_8164CBF4@ha
/* 813A26D0 | 38 63 CB F4 */	addi r3, r3, lbl_8164CBF4@l
/* 813A26D4 | 4C C6 31 82 */	crclr cr1eq
/* 813A26D8 | 48 18 BF C9 */	bl OSReport
/* 813A26DC | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A26E0 | 48 00 72 59 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813A26E4 | 38 00 00 1C */	li r0, 0x1c
/* 813A26E8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A26EC | 48 00 01 28 */	b .L_813A2814
.L_813A26F0:
/* 813A26F0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A26F4 | 38 80 00 38 */	li r4, 0x38
/* 813A26F8 | 48 00 3F 31 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A26FC | 38 00 00 0E */	li r0, 0xe
/* 813A2700 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2704 | 48 00 01 10 */	b .L_813A2814
.L_813A2708:
/* 813A2708 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A270C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2710 | 4B FA 65 91 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813A2714 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A2718 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A271C | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813A2720 | 41 82 00 1C */	beq .L_813A273C
/* 813A2724 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2728 | 38 80 00 3E */	li r4, 0x3e
/* 813A272C | 48 00 3E FD */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A2730 | 38 00 00 0E */	li r0, 0xe
/* 813A2734 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2738 | 48 00 00 DC */	b .L_813A2814
.L_813A273C:
/* 813A273C | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2740 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2744 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A2748 | 80 84 06 14 */	lwz r4, 0x614(r4)
/* 813A274C | 48 00 77 21 */	bl cmdExistSDApp__Q33ipl5scene17NandSDCardManagerFUl
/* 813A2750 | 38 00 00 1B */	li r0, 0x1b
/* 813A2754 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2758 | 48 00 00 BC */	b .L_813A2814
.L_813A275C:
/* 813A275C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2760 | 38 80 00 97 */	li r4, 0x97
/* 813A2764 | 48 00 3E C5 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A2768 | 38 00 00 0E */	li r0, 0xe
/* 813A276C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2770 | 48 00 00 A4 */	b .L_813A2814
.L_813A2774:
/* 813A2774 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2778 | 48 00 6D E5 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A277C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2780 | 41 82 00 80 */	beq .L_813A2800
/* 813A2784 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2788 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A278C | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A2790 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A2794 | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A2798 | 80 03 87 9C */	lwz r0, -0x7864(r3)
/* 813A279C | 7C 04 00 40 */	cmplw r4, r0
/* 813A27A0 | 40 82 00 48 */	bne .L_813A27E8
/* 813A27A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A27A8 | 48 1C 80 BD */	bl fn_8156A864
/* 813A27AC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813A27B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A27B4 | 40 82 00 1C */	bne .L_813A27D0
/* 813A27B8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A27BC | 38 80 01 26 */	li r4, 0x126
/* 813A27C0 | 48 00 3E 69 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A27C4 | 38 00 00 0E */	li r0, 0xe
/* 813A27C8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A27CC | 48 00 00 48 */	b .L_813A2814
.L_813A27D0:
/* 813A27D0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A27D4 | 38 80 01 10 */	li r4, 0x110
/* 813A27D8 | 48 00 3D 7D */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A27DC | 38 00 00 10 */	li r0, 0x10
/* 813A27E0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A27E4 | 48 00 00 30 */	b .L_813A2814
.L_813A27E8:
/* 813A27E8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A27EC | 38 80 01 28 */	li r4, 0x128
/* 813A27F0 | 48 00 3E 39 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A27F4 | 38 00 00 0E */	li r0, 0xe
/* 813A27F8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A27FC | 48 00 00 18 */	b .L_813A2814
.L_813A2800:
/* 813A2800 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2804 | 38 80 01 10 */	li r4, 0x110
/* 813A2808 | 48 00 3D 4D */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A280C | 38 00 00 10 */	li r0, 0x10
/* 813A2810 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2814:
/* 813A2814 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A2818 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A281C | 7C 08 03 A6 */	mtlr r0
/* 813A2820 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A2824 | 4E 80 00 20 */	blr
.endfn on_trig_copy__Q33ipl5scene11ChannelEditFv

# .text:0x2428 | 0x813A2828 | size: 0x1C
# ipl::scene::ChannelEdit::on_edit_fadein()
.fn on_edit_fadein__Q33ipl5scene11ChannelEditFv, global
/* 813A2828 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A282C | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2830 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2834 | 4C 82 00 20 */	bnelr
/* 813A2838 | 38 00 00 0A */	li r0, 0xa
/* 813A283C | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A2840 | 4E 80 00 20 */	blr
.endfn on_edit_fadein__Q33ipl5scene11ChannelEditFv

# .text:0x2444 | 0x813A2844 | size: 0x74
# ipl::scene::ChannelEdit::on_edit()
.fn on_edit__Q33ipl5scene11ChannelEditFv, global
/* 813A2844 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2848 | 7C 08 02 A6 */	mflr r0
/* 813A284C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2850 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2854 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2858 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A285C | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2864 | 40 82 00 30 */	bne .L_813A2894
/* 813A2868 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A286C | 38 80 00 16 */	li r4, 0x16
/* 813A2870 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A2874 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A2878 | 48 06 88 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A287C | 48 06 4E ED */	bl fn_81407768
/* 813A2880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2884 | 41 82 00 10 */	beq .L_813A2894
/* 813A2888 | 38 00 00 0C */	li r0, 0xc
/* 813A288C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2890 | 48 00 00 14 */	b .L_813A28A4
.L_813A2894:
/* 813A2894 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2898 | 48 00 36 19 */	bl update__Q33ipl5scene11ChanAppEditFv
/* 813A289C | 7F E3 FB 78 */	mr r3, r31
/* 813A28A0 | 4B FF E5 25 */	bl update_sdcard_slot__Q33ipl5scene11ChannelEditFv
.L_813A28A4:
/* 813A28A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A28A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A28AC | 7C 08 03 A6 */	mtlr r0
/* 813A28B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A28B4 | 4E 80 00 20 */	blr
.endfn on_edit__Q33ipl5scene11ChannelEditFv

# .text:0x24B8 | 0x813A28B8 | size: 0x58
# ipl::scene::ChannelEdit::on_edit_fadeout1st()
.fn on_edit_fadeout1st__Q33ipl5scene11ChannelEditFv, global
/* 813A28B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A28BC | 7C 08 02 A6 */	mflr r0
/* 813A28C0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813A28C4 | 38 80 00 16 */	li r4, 0x16
/* 813A28C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A28CC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813A28D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A28D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A28D8 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813A28DC | 48 06 88 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A28E0 | 48 06 51 6D */	bl fn_81407A4C
/* 813A28E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A28E8 | 40 82 00 14 */	bne .L_813A28FC
/* 813A28EC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A28F0 | 48 00 3B 29 */	bl anmFadeout__Q33ipl5scene11ChanAppEditFv
/* 813A28F4 | 38 00 00 0D */	li r0, 0xd
/* 813A28F8 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A28FC:
/* 813A28FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2900 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2904 | 7C 08 03 A6 */	mtlr r0
/* 813A2908 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A290C | 4E 80 00 20 */	blr
.endfn on_edit_fadeout1st__Q33ipl5scene11ChannelEditFv

# .text:0x2510 | 0x813A2910 | size: 0x1C
# ipl::scene::ChannelEdit::on_edit_fadeout2nd()
.fn on_edit_fadeout2nd__Q33ipl5scene11ChannelEditFv, global
/* 813A2910 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A2914 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2918 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A291C | 4C 82 00 20 */	bnelr
/* 813A2920 | 38 00 00 00 */	li r0, 0x0
/* 813A2924 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A2928 | 4E 80 00 20 */	blr
.endfn on_edit_fadeout2nd__Q33ipl5scene11ChannelEditFv

# .text:0x252C | 0x813A292C | size: 0x78
# ipl::scene::ChannelEdit::on_verify1st()
.fn on_verify1st__Q33ipl5scene11ChannelEditFv, global
/* 813A292C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2930 | 7C 08 02 A6 */	mflr r0
/* 813A2934 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2938 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A293C | 7C 7F 1B 78 */	mr r31, r3
/* 813A2940 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A2944 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2948 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A294C | 40 82 00 34 */	bne .L_813A2980
/* 813A2950 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A2954 | 38 80 00 16 */	li r4, 0x16
/* 813A2958 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A295C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A2960 | 48 06 87 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A2964 | 48 06 4E 05 */	bl fn_81407768
/* 813A2968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A296C | 41 82 00 14 */	beq .L_813A2980
/* 813A2970 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2974 | 48 00 3C 21 */	bl anmSelectFadein__Q33ipl5scene11ChanAppEditFv
/* 813A2978 | 38 00 00 0F */	li r0, 0xf
/* 813A297C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2980:
/* 813A2980 | 38 00 00 00 */	li r0, 0x0
/* 813A2984 | 7F E3 FB 78 */	mr r3, r31
/* 813A2988 | 90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 813A298C | 4B FF E4 39 */	bl update_sdcard_slot__Q33ipl5scene11ChannelEditFv
/* 813A2990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2994 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2998 | 7C 08 03 A6 */	mtlr r0
/* 813A299C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A29A0 | 4E 80 00 20 */	blr
.endfn on_verify1st__Q33ipl5scene11ChannelEditFv

# .text:0x25A4 | 0x813A29A4 | size: 0x1C
# ipl::scene::ChannelEdit::on_verify2nd()
.fn on_verify2nd__Q33ipl5scene11ChannelEditFv, global
/* 813A29A4 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A29A8 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A29AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A29B0 | 4C 82 00 20 */	bnelr
/* 813A29B4 | 38 00 00 0A */	li r0, 0xa
/* 813A29B8 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A29BC | 4E 80 00 20 */	blr
.endfn on_verify2nd__Q33ipl5scene11ChannelEditFv

# .text:0x25C0 | 0x813A29C0 | size: 0x154
# ipl::scene::ChannelEdit::on_verify_copy()
.fn on_verify_copy__Q33ipl5scene11ChannelEditFv, global
/* 813A29C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A29C4 | 7C 08 02 A6 */	mflr r0
/* 813A29C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A29CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A29D0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A29D4 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A29D8 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A29DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A29E0 | 40 82 01 20 */	bne .L_813A2B00
/* 813A29E4 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A29E8 | 4B FF F7 89 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A29EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A29F0 | 41 82 00 08 */	beq .L_813A29F8
/* 813A29F4 | 48 00 01 0C */	b .L_813A2B00
.L_813A29F8:
/* 813A29F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A29FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A2A00 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813A2A04 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813A2A08 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A2A0C | 41 82 00 14 */	beq .L_813A2A20
/* 813A2A10 | 40 80 00 E8 */	bge .L_813A2AF8
/* 813A2A14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A2A18 | 40 80 00 D0 */	bge .L_813A2AE8
/* 813A2A1C | 48 00 00 DC */	b .L_813A2AF8
.L_813A2A20:
/* 813A2A20 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A2A24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2A28 | 40 82 00 90 */	bne .L_813A2AB8
/* 813A2A2C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2A30 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2A34 | 4B FA 5E 51 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A2A38 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A2A3C | 40 82 00 38 */	bne .L_813A2A74
/* 813A2A40 | 7F E3 FB 78 */	mr r3, r31
/* 813A2A44 | 38 80 00 01 */	li r4, 0x1
/* 813A2A48 | 4B FF EA A1 */	bl start_process__Q33ipl5scene11ChannelEditFi
/* 813A2A4C | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2A50 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2A54 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A2A58 | 80 A4 06 10 */	lwz r5, 0x610(r4)
/* 813A2A5C | 80 C4 06 14 */	lwz r6, 0x614(r4)
/* 813A2A60 | 48 00 70 A1 */	bl cmdCopyAppNandToSD__Q33ipl5scene17NandSDCardManagerFUx
/* 813A2A64 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2A68 | 38 80 01 06 */	li r4, 0x106
/* 813A2A6C | 48 00 3B FD */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2A70 | 48 00 00 88 */	b .L_813A2AF8
.L_813A2A74:
/* 813A2A74 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2A78 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2A7C | 4B FA 5E 09 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A2A80 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813A2A84 | 40 82 00 1C */	bne .L_813A2AA0
/* 813A2A88 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2A8C | 38 80 01 21 */	li r4, 0x121
/* 813A2A90 | 48 00 3B D9 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2A94 | 38 00 00 1A */	li r0, 0x1a
/* 813A2A98 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2A9C | 48 00 00 64 */	b .L_813A2B00
.L_813A2AA0:
/* 813A2AA0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2AA4 | 38 80 00 97 */	li r4, 0x97
/* 813A2AA8 | 48 00 3B C1 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2AAC | 38 00 00 1A */	li r0, 0x1a
/* 813A2AB0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2AB4 | 48 00 00 4C */	b .L_813A2B00
.L_813A2AB8:
/* 813A2AB8 | 7F E3 FB 78 */	mr r3, r31
/* 813A2ABC | 38 80 00 01 */	li r4, 0x1
/* 813A2AC0 | 4B FF EA 29 */	bl start_process__Q33ipl5scene11ChannelEditFi
/* 813A2AC4 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2AC8 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2ACC | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A2AD0 | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A2AD4 | 48 00 70 79 */	bl cmdCopyAppSDToNand__Q33ipl5scene17NandSDCardManagerFUl
/* 813A2AD8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2ADC | 38 80 01 11 */	li r4, 0x111
/* 813A2AE0 | 48 00 3B 89 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2AE4 | 48 00 00 14 */	b .L_813A2AF8
.L_813A2AE8:
/* 813A2AE8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2AEC | 48 00 3A A9 */	bl anmSelectFadein__Q33ipl5scene11ChanAppEditFv
/* 813A2AF0 | 38 00 00 0B */	li r0, 0xb
/* 813A2AF4 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2AF8:
/* 813A2AF8 | 7F E3 FB 78 */	mr r3, r31
/* 813A2AFC | 4B FF E2 C9 */	bl update_sdcard_slot__Q33ipl5scene11ChannelEditFv
.L_813A2B00:
/* 813A2B00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2B04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2B08 | 7C 08 03 A6 */	mtlr r0
/* 813A2B0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2B10 | 4E 80 00 20 */	blr
.endfn on_verify_copy__Q33ipl5scene11ChannelEditFv

# .text:0x2714 | 0x813A2B14 | size: 0xF4
# ipl::scene::ChannelEdit::on_verify_del()
.fn on_verify_del__Q33ipl5scene11ChannelEditFv, global
/* 813A2B14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2B18 | 7C 08 02 A6 */	mflr r0
/* 813A2B1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2B20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2B24 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2B28 | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 813A2B2C | 80 05 00 3C */	lwz r0, 0x3c(r5)
/* 813A2B30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2B34 | 40 82 00 C0 */	bne .L_813A2BF4
/* 813A2B38 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A2B3C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A2B40 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813A2B44 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813A2B48 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A2B4C | 41 82 00 14 */	beq .L_813A2B60
/* 813A2B50 | 40 80 00 9C */	bge .L_813A2BEC
/* 813A2B54 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A2B58 | 40 80 00 84 */	bge .L_813A2BDC
/* 813A2B5C | 48 00 00 90 */	b .L_813A2BEC
.L_813A2B60:
/* 813A2B60 | 38 80 00 02 */	li r4, 0x2
/* 813A2B64 | 4B FF E9 85 */	bl start_process__Q33ipl5scene11ChannelEditFi
/* 813A2B68 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A2B6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2B70 | 40 82 00 50 */	bne .L_813A2BC0
/* 813A2B74 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2B78 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2B7C | 48 00 70 1D */	bl cmdDelNandApp__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBox
/* 813A2B80 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2B84 | 38 00 FF FF */	li r0, -0x1
/* 813A2B88 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813A2B8C | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A2B90 | 80 84 06 14 */	lwz r4, 0x614(r4)
/* 813A2B94 | 7C 84 00 38 */	and r4, r4, r0
/* 813A2B98 | 4B FB FB 3D */	bl isTVRCChannel__Q23ipl11TVRCManagerFUl
/* 813A2B9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2BA0 | 41 82 00 10 */	beq .L_813A2BB0
/* 813A2BA4 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813A2BA8 | 38 80 00 01 */	li r4, 0x1
/* 813A2BAC | 4B FB FB 11 */	bl resetProcessAsync__Q23ipl11TVRCManagerFi
.L_813A2BB0:
/* 813A2BB0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2BB4 | 38 80 00 FB */	li r4, 0xfb
/* 813A2BB8 | 48 00 3A B1 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2BBC | 48 00 00 30 */	b .L_813A2BEC
.L_813A2BC0:
/* 813A2BC0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2BC4 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A2BC8 | 48 00 70 29 */	bl cmdDelSDApp__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBox
/* 813A2BCC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2BD0 | 38 80 01 3A */	li r4, 0x13a
/* 813A2BD4 | 48 00 3A 95 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2BD8 | 48 00 00 14 */	b .L_813A2BEC
.L_813A2BDC:
/* 813A2BDC | 7C A3 2B 78 */	mr r3, r5
/* 813A2BE0 | 48 00 39 B5 */	bl anmSelectFadein__Q33ipl5scene11ChanAppEditFv
/* 813A2BE4 | 38 00 00 0B */	li r0, 0xb
/* 813A2BE8 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2BEC:
/* 813A2BEC | 7F E3 FB 78 */	mr r3, r31
/* 813A2BF0 | 4B FF E1 D5 */	bl update_sdcard_slot__Q33ipl5scene11ChannelEditFv
.L_813A2BF4:
/* 813A2BF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2BF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2BFC | 7C 08 03 A6 */	mtlr r0
/* 813A2C00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2C04 | 4E 80 00 20 */	blr
.endfn on_verify_del__Q33ipl5scene11ChannelEditFv

# .text:0x2808 | 0x813A2C08 | size: 0xA0
# ipl::scene::ChannelEdit::on_verify_format()
.fn on_verify_format__Q33ipl5scene11ChannelEditFv, global
/* 813A2C08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2C0C | 7C 08 02 A6 */	mflr r0
/* 813A2C10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2C14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2C18 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2C1C | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A2C20 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2C24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2C28 | 40 82 00 6C */	bne .L_813A2C94
/* 813A2C2C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A2C30 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A2C34 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813A2C38 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813A2C3C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A2C40 | 41 82 00 14 */	beq .L_813A2C54
/* 813A2C44 | 40 80 00 50 */	bge .L_813A2C94
/* 813A2C48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A2C4C | 40 80 00 1C */	bge .L_813A2C68
/* 813A2C50 | 48 00 00 44 */	b .L_813A2C94
.L_813A2C54:
/* 813A2C54 | 38 80 00 03 */	li r4, 0x3
/* 813A2C58 | 4B FF E8 91 */	bl start_process__Q33ipl5scene11ChannelEditFi
/* 813A2C5C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2C60 | 48 00 6D 25 */	bl cmdSDFormat__Q33ipl5scene17NandSDCardManagerFv
/* 813A2C64 | 48 00 00 30 */	b .L_813A2C94
.L_813A2C68:
/* 813A2C68 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A2C6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2C70 | 40 82 00 10 */	bne .L_813A2C80
/* 813A2C74 | 38 00 00 0A */	li r0, 0xa
/* 813A2C78 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A2C7C | 48 00 00 18 */	b .L_813A2C94
.L_813A2C80:
/* 813A2C80 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813A2C84 | 38 80 00 38 */	li r4, 0x38
/* 813A2C88 | 48 00 16 69 */	bl anmTextFadein__Q33ipl5scene11ChanAppBaseFUl
/* 813A2C8C | 38 00 00 16 */	li r0, 0x16
/* 813A2C90 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2C94:
/* 813A2C94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2C98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2C9C | 7C 08 03 A6 */	mtlr r0
/* 813A2CA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2CA4 | 4E 80 00 20 */	blr
.endfn on_verify_format__Q33ipl5scene11ChannelEditFv

# .text:0x28A8 | 0x813A2CA8 | size: 0x80
# ipl::scene::ChannelEdit::on_end_format()
.fn on_end_format__Q33ipl5scene11ChannelEditFv, global
/* 813A2CA8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2CAC | 7C 08 02 A6 */	mflr r0
/* 813A2CB0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A2CB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2CB8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A2CBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2CC0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2CC4 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813A2CC8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813A2CCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2CD0 | 40 82 00 44 */	bne .L_813A2D14
/* 813A2CD4 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A2CD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2CDC | 40 82 00 10 */	bne .L_813A2CEC
/* 813A2CE0 | 38 00 00 0A */	li r0, 0xa
/* 813A2CE4 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A2CE8 | 48 00 00 2C */	b .L_813A2D14
.L_813A2CEC:
/* 813A2CEC | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2CF0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2CF4 | 4B FA 5B 91 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A2CF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2CFC | 41 82 00 18 */	beq .L_813A2D14
/* 813A2D00 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A2D04 | 38 80 00 38 */	li r4, 0x38
/* 813A2D08 | 48 00 15 E9 */	bl anmTextFadein__Q33ipl5scene11ChanAppBaseFUl
/* 813A2D0C | 38 00 00 16 */	li r0, 0x16
/* 813A2D10 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2D14:
/* 813A2D14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2D18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2D1C | 7C 08 03 A6 */	mtlr r0
/* 813A2D20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2D24 | 4E 80 00 20 */	blr
.endfn on_end_format__Q33ipl5scene11ChannelEditFv

# .text:0x2928 | 0x813A2D28 | size: 0xC8
# ipl::scene::ChannelEdit::on_end_del()
.fn on_end_del__Q33ipl5scene11ChannelEditFv, global
/* 813A2D28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2D2C | 7C 08 02 A6 */	mflr r0
/* 813A2D30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2D34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2D38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A2D3C | 7C 7E 1B 78 */	mr r30, r3
/* 813A2D40 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A2D44 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2D48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2D4C | 40 82 00 8C */	bne .L_813A2DD8
/* 813A2D50 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2D54 | 48 00 6F 9D */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A2D58 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A2D5C | 48 00 4E 59 */	bl calc__Q33ipl5scene17NandSDCardManagerFv
/* 813A2D60 | 38 80 00 00 */	li r4, 0x0
/* 813A2D64 | 3B E0 00 00 */	li r31, 0x0
/* 813A2D68 | 48 00 00 08 */	b .L_813A2D70
.L_813A2D6C:
/* 813A2D6C | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813A2D70:
/* 813A2D70 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A2D74 | 48 16 F5 69 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A2D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2D7C | 7C 64 1B 78 */	mr r4, r3
/* 813A2D80 | 40 82 FF EC */	bne .L_813A2D6C
/* 813A2D84 | 80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 813A2D88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2D8C | 40 82 00 1C */	bne .L_813A2DA8
/* 813A2D90 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A2D94 | 48 00 6C 3D */	bl cmdGetNandFree__Q33ipl5scene17NandSDCardManagerFv
/* 813A2D98 | 7F C3 F3 78 */	mr r3, r30
/* 813A2D9C | 38 80 00 01 */	li r4, 0x1
/* 813A2DA0 | 4B FF DF B9 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A2DA4 | 48 00 00 18 */	b .L_813A2DBC
.L_813A2DA8:
/* 813A2DA8 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A2DAC | 48 00 6C 71 */	bl cmdGetSDFree__Q33ipl5scene17NandSDCardManagerFv
/* 813A2DB0 | 7F C3 F3 78 */	mr r3, r30
/* 813A2DB4 | 38 80 00 00 */	li r4, 0x0
/* 813A2DB8 | 4B FF DF A1 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
.L_813A2DBC:
/* 813A2DBC | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813A2DC0 | 38 80 00 F8 */	li r4, 0xf8
/* 813A2DC4 | 48 00 38 A5 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2DC8 | 7F C3 F3 78 */	mr r3, r30
/* 813A2DCC | 4B FF E7 B9 */	bl stop_process__Q33ipl5scene11ChannelEditFv
/* 813A2DD0 | 38 00 00 1A */	li r0, 0x1a
/* 813A2DD4 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813A2DD8:
/* 813A2DD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2DDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2DE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A2DE4 | 7C 08 03 A6 */	mtlr r0
/* 813A2DE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2DEC | 4E 80 00 20 */	blr
.endfn on_end_del__Q33ipl5scene11ChannelEditFv

# .text:0x29F0 | 0x813A2DF0 | size: 0x48
# ipl::scene::ChannelEdit::on_sd_mount()
.fn on_sd_mount__Q33ipl5scene11ChannelEditFv, global
/* 813A2DF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2DF4 | 7C 08 02 A6 */	mflr r0
/* 813A2DF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2DFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2E00 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2E04 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2E08 | 4B FF F3 69 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A2E0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2E10 | 40 82 00 14 */	bne .L_813A2E24
/* 813A2E14 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2E18 | 48 00 6F 71 */	bl cmdListSD__Q33ipl5scene17NandSDCardManagerFv
/* 813A2E1C | 38 00 00 07 */	li r0, 0x7
/* 813A2E20 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2E24:
/* 813A2E24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2E28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2E2C | 7C 08 03 A6 */	mtlr r0
/* 813A2E30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2E34 | 4E 80 00 20 */	blr
.endfn on_sd_mount__Q33ipl5scene11ChannelEditFv

# .text:0x2A38 | 0x813A2E38 | size: 0xA8
# ipl::scene::ChannelEdit::on_sd_message1st()
.fn on_sd_message1st__Q33ipl5scene11ChannelEditFv, global
/* 813A2E38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2E3C | 7C 08 02 A6 */	mflr r0
/* 813A2E40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2E44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2E48 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2E4C | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A2E50 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A2E54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2E58 | 40 82 00 74 */	bne .L_813A2ECC
/* 813A2E5C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A2E60 | 38 80 00 16 */	li r4, 0x16
/* 813A2E64 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A2E68 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A2E6C | 48 06 82 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A2E70 | 48 06 48 F9 */	bl fn_81407768
/* 813A2E74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2E78 | 41 82 00 14 */	beq .L_813A2E8C
/* 813A2E7C | 7F E3 FB 78 */	mr r3, r31
/* 813A2E80 | 38 80 00 01 */	li r4, 0x1
/* 813A2E84 | 4B FF EE AD */	bl onTrigButton__Q33ipl5scene11ChannelEditFb
/* 813A2E88 | 48 00 00 44 */	b .L_813A2ECC
.L_813A2E8C:
/* 813A2E8C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2E90 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A2E94 | 4B FA 59 F1 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A2E98 | 80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 813A2E9C | 7C 00 18 00 */	cmpw r0, r3
/* 813A2EA0 | 41 82 00 24 */	beq .L_813A2EC4
/* 813A2EA4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A2EA8 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813A2EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2EB0 | 40 82 00 14 */	bne .L_813A2EC4
/* 813A2EB4 | 48 00 14 91 */	bl anmTextFadeout__Q33ipl5scene11ChanAppBaseFv
/* 813A2EB8 | 38 00 00 17 */	li r0, 0x17
/* 813A2EBC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2EC0 | 48 00 00 0C */	b .L_813A2ECC
.L_813A2EC4:
/* 813A2EC4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813A2EC8 | 48 00 12 29 */	bl update__Q33ipl5scene11ChanAppBaseFv
.L_813A2ECC:
/* 813A2ECC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2ED0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2ED4 | 7C 08 03 A6 */	mtlr r0
/* 813A2ED8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2EDC | 4E 80 00 20 */	blr
.endfn on_sd_message1st__Q33ipl5scene11ChannelEditFv

# .text:0x2AE0 | 0x813A2EE0 | size: 0x1C
# ipl::scene::ChannelEdit::on_sd_message2nd()
.fn on_sd_message2nd__Q33ipl5scene11ChannelEditFv, global
/* 813A2EE0 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813A2EE4 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813A2EE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2EEC | 4C 82 00 20 */	bnelr
/* 813A2EF0 | 38 00 00 07 */	li r0, 0x7
/* 813A2EF4 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813A2EF8 | 4E 80 00 20 */	blr
.endfn on_sd_message2nd__Q33ipl5scene11ChannelEditFv

# .text:0x2AFC | 0x813A2EFC | size: 0x68
# ipl::scene::ChannelEdit::on_sd_message3rd()
.fn on_sd_message3rd__Q33ipl5scene11ChannelEditFv, global
/* 813A2EFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2F00 | 7C 08 02 A6 */	mflr r0
/* 813A2F04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2F08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2F0C | 7C 7F 1B 78 */	mr r31, r3
/* 813A2F10 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813A2F14 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813A2F18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2F1C | 40 82 00 34 */	bne .L_813A2F50
/* 813A2F20 | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813A2F24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2F28 | 40 82 00 18 */	bne .L_813A2F40
/* 813A2F2C | 7C 83 23 78 */	mr r3, r4
/* 813A2F30 | 48 00 12 71 */	bl anmChangeWiitoSD__Q33ipl5scene11ChanAppBaseFv
/* 813A2F34 | 38 00 00 07 */	li r0, 0x7
/* 813A2F38 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A2F3C | 48 00 00 14 */	b .L_813A2F50
.L_813A2F40:
/* 813A2F40 | 7C 83 23 78 */	mr r3, r4
/* 813A2F44 | 48 00 12 9D */	bl anmChangeSDtoWii__Q33ipl5scene11ChanAppBaseFv
/* 813A2F48 | 38 00 00 07 */	li r0, 0x7
/* 813A2F4C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A2F50:
/* 813A2F50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A2F54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A2F58 | 7C 08 03 A6 */	mtlr r0
/* 813A2F5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A2F60 | 4E 80 00 20 */	blr
.endfn on_sd_message3rd__Q33ipl5scene11ChannelEditFv

# .text:0x2B64 | 0x813A2F64 | size: 0x22C
# ipl::scene::ChannelEdit::on_process()
.fn on_process__Q33ipl5scene11ChannelEditFv, global
/* 813A2F64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A2F68 | 7C 08 02 A6 */	mflr r0
/* 813A2F6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A2F70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A2F74 | 7C 7F 1B 78 */	mr r31, r3
/* 813A2F78 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A2F7C | 4B FF F1 F5 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A2F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2F84 | 40 82 01 F8 */	bne .L_813A317C
/* 813A2F88 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2F8C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813A2F90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A2F94 | 40 82 01 E8 */	bne .L_813A317C
/* 813A2F98 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A2F9C | 48 00 65 C1 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A2FA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A2FA4 | 7C 64 1B 78 */	mr r4, r3
/* 813A2FA8 | 40 82 00 9C */	bne .L_813A3044
/* 813A2FAC | 80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 813A2FB0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813A2FB4 | 40 82 00 10 */	bne .L_813A2FC4
/* 813A2FB8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2FBC | 48 00 35 39 */	bl anmHideBtn0Dialog__Q33ipl5scene11ChanAppEditFv
/* 813A2FC0 | 48 00 01 AC */	b .L_813A316C
.L_813A2FC4:
/* 813A2FC4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A2FC8 | 40 82 00 24 */	bne .L_813A2FEC
/* 813A2FCC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A2FD0 | 38 80 01 07 */	li r4, 0x107
/* 813A2FD4 | 48 00 36 95 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A2FD8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A2FDC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A2FE0 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813A2FE4 | 4B F9 4C 69 */	bl reserveRefresh__Q33ipl7channel7ManagerFv
/* 813A2FE8 | 48 00 01 84 */	b .L_813A316C
.L_813A2FEC:
/* 813A2FEC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A2FF0 | 40 82 00 28 */	bne .L_813A3018
/* 813A2FF4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A2FF8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A2FFC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813A3000 | 4B F9 4C 4D */	bl reserveRefresh__Q33ipl7channel7ManagerFv
/* 813A3004 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3008 | 48 00 37 C5 */	bl anmClear__Q33ipl5scene11ChanAppEditFv
/* 813A300C | 38 00 00 14 */	li r0, 0x14
/* 813A3010 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3014 | 48 00 01 68 */	b .L_813A317C
.L_813A3018:
/* 813A3018 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813A301C | 40 82 01 50 */	bne .L_813A316C
/* 813A3020 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A3024 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A3028 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813A302C | 4B F9 4C 21 */	bl reserveRefresh__Q33ipl7channel7ManagerFv
/* 813A3030 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3034 | 48 00 37 99 */	bl anmClear__Q33ipl5scene11ChanAppEditFv
/* 813A3038 | 38 00 00 1F */	li r0, 0x1f
/* 813A303C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3040 | 48 00 01 3C */	b .L_813A317C
.L_813A3044:
/* 813A3044 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813A3048 | 40 82 00 20 */	bne .L_813A3068
/* 813A304C | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A3050 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3054 | 30 00 FF FF */	subic r0, r0, 0x1
/* 813A3058 | 7C 80 01 10 */	subfe r4, r0, r0
/* 813A305C | 38 84 01 28 */	addi r4, r4, 0x128
/* 813A3060 | 48 00 36 09 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A3064 | 48 00 01 08 */	b .L_813A316C
.L_813A3068:
/* 813A3068 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 813A306C | 40 82 00 24 */	bne .L_813A3090
/* 813A3070 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A3074 | 38 80 01 26 */	li r4, 0x126
/* 813A3078 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A307C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A3080 | 40 82 00 08 */	bne .L_813A3088
/* 813A3084 | 38 80 01 16 */	li r4, 0x116
.L_813A3088:
/* 813A3088 | 48 00 35 E1 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A308C | 48 00 00 E0 */	b .L_813A316C
.L_813A3090:
/* 813A3090 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 813A3094 | 40 82 00 14 */	bne .L_813A30A8
/* 813A3098 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A309C | 38 80 01 29 */	li r4, 0x129
/* 813A30A0 | 48 00 35 C9 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A30A4 | 48 00 00 C8 */	b .L_813A316C
.L_813A30A8:
/* 813A30A8 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 813A30AC | 40 82 00 24 */	bne .L_813A30D0
/* 813A30B0 | 80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 813A30B4 | 38 80 01 2C */	li r4, 0x12c
/* 813A30B8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A30BC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813A30C0 | 40 82 00 08 */	bne .L_813A30C8
/* 813A30C4 | 38 80 01 30 */	li r4, 0x130
.L_813A30C8:
/* 813A30C8 | 48 00 35 A1 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A30CC | 48 00 00 A0 */	b .L_813A316C
.L_813A30D0:
/* 813A30D0 | 2C 03 FF F0 */	cmpwi r3, -0x10
/* 813A30D4 | 40 82 00 24 */	bne .L_813A30F8
/* 813A30D8 | 80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 813A30DC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A30E0 | 38 04 FF FC */	subi r0, r4, 0x4
/* 813A30E4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A30E8 | 54 04 D9 7E */	srwi r4, r0, 5
/* 813A30EC | 38 84 01 38 */	addi r4, r4, 0x138
/* 813A30F0 | 48 00 35 79 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A30F4 | 48 00 00 78 */	b .L_813A316C
.L_813A30F8:
/* 813A30F8 | 3C 60 81 65 */	lis r3, lbl_8164CC00@ha
/* 813A30FC | 38 63 CC 00 */	addi r3, r3, lbl_8164CC00@l
/* 813A3100 | 4C C6 31 82 */	crclr cr1eq
/* 813A3104 | 48 18 B5 9D */	bl OSReport
/* 813A3108 | 80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 813A310C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813A3110 | 41 82 00 44 */	beq .L_813A3154
/* 813A3114 | 40 80 00 14 */	bge .L_813A3128
/* 813A3118 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A311C | 41 82 00 18 */	beq .L_813A3134
/* 813A3120 | 40 80 00 24 */	bge .L_813A3144
/* 813A3124 | 48 00 00 48 */	b .L_813A316C
.L_813A3128:
/* 813A3128 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813A312C | 40 80 00 40 */	bge .L_813A316C
/* 813A3130 | 48 00 00 30 */	b .L_813A3160
.L_813A3134:
/* 813A3134 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3138 | 38 80 00 E3 */	li r4, 0xe3
/* 813A313C | 48 00 35 2D */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A3140 | 48 00 00 2C */	b .L_813A316C
.L_813A3144:
/* 813A3144 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3148 | 38 80 00 E5 */	li r4, 0xe5
/* 813A314C | 48 00 35 1D */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A3150 | 48 00 00 1C */	b .L_813A316C
.L_813A3154:
/* 813A3154 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3158 | 48 00 33 9D */	bl anmHideBtn0Dialog__Q33ipl5scene11ChanAppEditFv
/* 813A315C | 48 00 00 10 */	b .L_813A316C
.L_813A3160:
/* 813A3160 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3164 | 38 80 00 D7 */	li r4, 0xd7
/* 813A3168 | 48 00 35 01 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
.L_813A316C:
/* 813A316C | 7F E3 FB 78 */	mr r3, r31
/* 813A3170 | 4B FF E4 15 */	bl stop_process__Q33ipl5scene11ChannelEditFv
/* 813A3174 | 38 00 00 1A */	li r0, 0x1a
/* 813A3178 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A317C:
/* 813A317C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3180 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A3184 | 7C 08 03 A6 */	mtlr r0
/* 813A3188 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A318C | 4E 80 00 20 */	blr
.endfn on_process__Q33ipl5scene11ChannelEditFv

# .text:0x2D90 | 0x813A3190 | size: 0xB0
# ipl::scene::ChannelEdit::on_end_process()
.fn on_end_process__Q33ipl5scene11ChannelEditFv, global
/* 813A3190 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A3194 | 7C 08 02 A6 */	mflr r0
/* 813A3198 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A319C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A31A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A31A4 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A31A8 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A31AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A31B0 | 40 82 00 7C */	bne .L_813A322C
/* 813A31B4 | 80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 813A31B8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813A31BC | 40 82 00 58 */	bne .L_813A3214
/* 813A31C0 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A31C4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A31C8 | 4B FA 56 BD */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A31CC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A31D0 | 40 82 00 24 */	bne .L_813A31F4
/* 813A31D4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A31D8 | 38 80 00 36 */	li r4, 0x36
/* 813A31DC | 38 A0 00 00 */	li r5, 0x0
/* 813A31E0 | 38 C0 00 00 */	li r6, 0x0
/* 813A31E4 | 48 00 33 51 */	bl anmShowBtn0Dialog__Q33ipl5scene11ChanAppEditFUlbb
/* 813A31E8 | 38 00 00 13 */	li r0, 0x13
/* 813A31EC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A31F0 | 48 00 00 34 */	b .L_813A3224
.L_813A31F4:
/* 813A31F4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A31F8 | 38 80 00 37 */	li r4, 0x37
/* 813A31FC | 38 A0 00 00 */	li r5, 0x0
/* 813A3200 | 38 C0 00 00 */	li r6, 0x0
/* 813A3204 | 48 00 33 31 */	bl anmShowBtn0Dialog__Q33ipl5scene11ChanAppEditFUlbb
/* 813A3208 | 38 00 00 13 */	li r0, 0x13
/* 813A320C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3210 | 48 00 00 14 */	b .L_813A3224
.L_813A3214:
/* 813A3214 | 7C 83 23 78 */	mr r3, r4
/* 813A3218 | 48 00 34 95 */	bl anmTextFadeout__Q33ipl5scene11ChanAppEditFv
/* 813A321C | 38 00 00 0D */	li r0, 0xd
/* 813A3220 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A3224:
/* 813A3224 | 38 00 00 00 */	li r0, 0x0
/* 813A3228 | 90 1F 00 D0 */	stw r0, 0xd0(r31)
.L_813A322C:
/* 813A322C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3230 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A3234 | 7C 08 03 A6 */	mtlr r0
/* 813A3238 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A323C | 4E 80 00 20 */	blr
.endfn on_end_process__Q33ipl5scene11ChannelEditFv

# .text:0x2E40 | 0x813A3240 | size: 0xD8
# ipl::scene::ChannelEdit::on_exist_app()
.fn on_exist_app__Q33ipl5scene11ChannelEditFv, global
/* 813A3240 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A3244 | 7C 08 02 A6 */	mflr r0
/* 813A3248 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A324C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A3250 | 7C 7F 1B 78 */	mr r31, r3
/* 813A3254 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A3258 | 4B FF EF 19 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A325C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3260 | 40 82 00 A4 */	bne .L_813A3304
/* 813A3264 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3268 | 48 00 62 F5 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A326C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3270 | 40 82 00 58 */	bne .L_813A32C8
/* 813A3274 | 80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 813A3278 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A327C | 41 82 00 2C */	beq .L_813A32A8
/* 813A3280 | 40 80 00 3C */	bge .L_813A32BC
/* 813A3284 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A3288 | 40 80 00 08 */	bge .L_813A3290
/* 813A328C | 48 00 00 30 */	b .L_813A32BC
.L_813A3290:
/* 813A3290 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3294 | 38 80 01 05 */	li r4, 0x105
/* 813A3298 | 48 00 32 BD */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A329C | 38 00 00 10 */	li r0, 0x10
/* 813A32A0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A32A4 | 48 00 00 18 */	b .L_813A32BC
.L_813A32A8:
/* 813A32A8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A32AC | 38 80 01 0B */	li r4, 0x10b
/* 813A32B0 | 48 00 32 A5 */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A32B4 | 38 00 00 1E */	li r0, 0x1e
/* 813A32B8 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A32BC:
/* 813A32BC | 38 00 00 00 */	li r0, 0x0
/* 813A32C0 | 90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 813A32C4 | 48 00 00 40 */	b .L_813A3304
.L_813A32C8:
/* 813A32C8 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A32CC | 48 00 62 91 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A32D0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813A32D4 | 40 82 00 1C */	bne .L_813A32F0
/* 813A32D8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A32DC | 38 80 01 27 */	li r4, 0x127
/* 813A32E0 | 48 00 33 49 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A32E4 | 38 00 00 0E */	li r0, 0xe
/* 813A32E8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A32EC | 48 00 00 18 */	b .L_813A3304
.L_813A32F0:
/* 813A32F0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A32F4 | 38 80 00 97 */	li r4, 0x97
/* 813A32F8 | 48 00 33 31 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A32FC | 38 00 00 0E */	li r0, 0xe
/* 813A3300 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A3304:
/* 813A3304 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3308 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A330C | 7C 08 03 A6 */	mtlr r0
/* 813A3310 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A3314 | 4E 80 00 20 */	blr
.endfn on_exist_app__Q33ipl5scene11ChannelEditFv

# .text:0x2F18 | 0x813A3318 | size: 0x68
# ipl::scene::ChannelEdit::on_sd_mount_only()
.fn on_sd_mount_only__Q33ipl5scene11ChannelEditFv, global
/* 813A3318 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A331C | 7C 08 02 A6 */	mflr r0
/* 813A3320 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A3324 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A3328 | 7C 7F 1B 78 */	mr r31, r3
/* 813A332C | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A3330 | 4B FF EE 41 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A3334 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3338 | 40 82 00 34 */	bne .L_813A336C
/* 813A333C | 80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 813A3340 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A3344 | 41 82 00 20 */	beq .L_813A3364
/* 813A3348 | 40 80 00 24 */	bge .L_813A336C
/* 813A334C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A3350 | 40 80 00 08 */	bge .L_813A3358
/* 813A3354 | 48 00 00 18 */	b .L_813A336C
.L_813A3358:
/* 813A3358 | 38 00 00 09 */	li r0, 0x9
/* 813A335C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3360 | 48 00 00 0C */	b .L_813A336C
.L_813A3364:
/* 813A3364 | 38 00 00 1D */	li r0, 0x1d
/* 813A3368 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A336C:
/* 813A336C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3370 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A3374 | 7C 08 03 A6 */	mtlr r0
/* 813A3378 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A337C | 4E 80 00 20 */	blr
.endfn on_sd_mount_only__Q33ipl5scene11ChannelEditFv

# .text:0x2F80 | 0x813A3380 | size: 0x2A4
# ipl::scene::ChannelEdit::iplChannelEdit_813A3380()
.fn iplChannelEdit_813A3380__Q33ipl5scene11ChannelEditFv, global
/* 813A3380 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A3384 | 7C 08 02 A6 */	mflr r0
/* 813A3388 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A338C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A3390 | 7C 7F 1B 78 */	mr r31, r3
/* 813A3394 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A3398 | 4B FF ED D9 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A339C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A33A0 | 40 82 02 70 */	bne .L_813A3610
/* 813A33A4 | 80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 813A33A8 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813A33AC | 88 03 06 20 */	lbz r0, 0x620(r3)
/* 813A33B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A33B4 | 41 82 00 1C */	beq .L_813A33D0
/* 813A33B8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A33BC | 38 80 00 CD */	li r4, 0xcd
/* 813A33C0 | 48 00 32 69 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A33C4 | 38 00 00 0E */	li r0, 0xe
/* 813A33C8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A33CC | 48 00 02 44 */	b .L_813A3610
.L_813A33D0:
/* 813A33D0 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A33D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A33D8 | 40 82 01 30 */	bne .L_813A3508
/* 813A33DC | 88 03 06 21 */	lbz r0, 0x621(r3)
/* 813A33E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A33E4 | 41 82 00 1C */	beq .L_813A3400
/* 813A33E8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A33EC | 38 80 00 CD */	li r4, 0xcd
/* 813A33F0 | 48 00 32 39 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A33F4 | 38 00 00 0E */	li r0, 0xe
/* 813A33F8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A33FC | 48 00 02 14 */	b .L_813A3610
.L_813A3400:
/* 813A3400 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3404 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A3408 | 4B FA 54 7D */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A340C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813A3410 | 90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 813A3414 | 41 82 00 DC */	beq .L_813A34F0
/* 813A3418 | 40 80 00 1C */	bge .L_813A3434
/* 813A341C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813A3420 | 41 82 00 38 */	beq .L_813A3458
/* 813A3424 | 40 80 00 58 */	bge .L_813A347C
/* 813A3428 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813A342C | 40 80 00 14 */	bge .L_813A3440
/* 813A3430 | 48 00 00 C0 */	b .L_813A34F0
.L_813A3434:
/* 813A3434 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813A3438 | 40 80 00 B8 */	bge .L_813A34F0
/* 813A343C | 48 00 00 58 */	b .L_813A3494
.L_813A3440:
/* 813A3440 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3444 | 38 80 01 21 */	li r4, 0x121
/* 813A3448 | 48 00 31 E1 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A344C | 38 00 00 0E */	li r0, 0xe
/* 813A3450 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3454 | 48 00 01 BC */	b .L_813A3610
.L_813A3458:
/* 813A3458 | 3C 60 81 65 */	lis r3, lbl_8164CBF4@ha
/* 813A345C | 38 63 CB F4 */	addi r3, r3, lbl_8164CBF4@l
/* 813A3460 | 4C C6 31 82 */	crclr cr1eq
/* 813A3464 | 48 18 B2 3D */	bl OSReport
/* 813A3468 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A346C | 48 00 64 CD */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813A3470 | 38 00 00 1C */	li r0, 0x1c
/* 813A3474 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3478 | 48 00 01 98 */	b .L_813A3610
.L_813A347C:
/* 813A347C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3480 | 38 80 00 38 */	li r4, 0x38
/* 813A3484 | 48 00 31 A5 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A3488 | 38 00 00 0E */	li r0, 0xe
/* 813A348C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3490 | 48 00 01 80 */	b .L_813A3610
.L_813A3494:
/* 813A3494 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3498 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A349C | 4B FA 58 05 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813A34A0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A34A4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A34A8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813A34AC | 41 82 00 1C */	beq .L_813A34C8
/* 813A34B0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A34B4 | 38 80 00 3E */	li r4, 0x3e
/* 813A34B8 | 48 00 31 71 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A34BC | 38 00 00 0E */	li r0, 0xe
/* 813A34C0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A34C4 | 48 00 01 4C */	b .L_813A3610
.L_813A34C8:
/* 813A34C8 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A34CC | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A34D0 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A34D4 | 80 84 06 14 */	lwz r4, 0x614(r4)
/* 813A34D8 | 48 00 69 95 */	bl cmdExistSDApp__Q33ipl5scene17NandSDCardManagerFUl
/* 813A34DC | 38 60 00 1B */	li r3, 0x1b
/* 813A34E0 | 38 00 00 02 */	li r0, 0x2
/* 813A34E4 | 90 7F 00 54 */	stw r3, 0x54(r31)
/* 813A34E8 | 90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 813A34EC | 48 00 01 24 */	b .L_813A3610
.L_813A34F0:
/* 813A34F0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A34F4 | 38 80 00 97 */	li r4, 0x97
/* 813A34F8 | 48 00 31 31 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A34FC | 38 00 00 0E */	li r0, 0xe
/* 813A3500 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3504 | 48 00 01 0C */	b .L_813A3610
.L_813A3508:
/* 813A3508 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A350C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A3510 | 4B FA 53 75 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A3514 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A3518 | 90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 813A351C | 41 82 00 08 */	beq .L_813A3524
/* 813A3520 | 48 00 00 DC */	b .L_813A35FC
.L_813A3524:
/* 813A3524 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3528 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A352C | 4B FA 57 75 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813A3530 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A3534 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A3538 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813A353C | 41 82 00 1C */	beq .L_813A3558
/* 813A3540 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3544 | 38 80 00 3E */	li r4, 0x3e
/* 813A3548 | 48 00 30 E1 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A354C | 38 00 00 0E */	li r0, 0xe
/* 813A3550 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3554 | 48 00 00 BC */	b .L_813A3610
.L_813A3558:
/* 813A3558 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A355C | 48 00 60 01 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A3560 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3564 | 41 82 00 80 */	beq .L_813A35E4
/* 813A3568 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A356C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3570 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A3574 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A3578 | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A357C | 80 03 87 9C */	lwz r0, -0x7864(r3)
/* 813A3580 | 7C 04 00 40 */	cmplw r4, r0
/* 813A3584 | 40 82 00 48 */	bne .L_813A35CC
/* 813A3588 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A358C | 48 1C 72 D9 */	bl fn_8156A864
/* 813A3590 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813A3594 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A3598 | 40 82 00 1C */	bne .L_813A35B4
/* 813A359C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A35A0 | 38 80 01 26 */	li r4, 0x126
/* 813A35A4 | 48 00 30 85 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A35A8 | 38 00 00 0E */	li r0, 0xe
/* 813A35AC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A35B0 | 48 00 00 60 */	b .L_813A3610
.L_813A35B4:
/* 813A35B4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A35B8 | 38 80 01 13 */	li r4, 0x113
/* 813A35BC | 48 00 2F 99 */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A35C0 | 38 00 00 1E */	li r0, 0x1e
/* 813A35C4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A35C8 | 48 00 00 48 */	b .L_813A3610
.L_813A35CC:
/* 813A35CC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A35D0 | 38 80 01 28 */	li r4, 0x128
/* 813A35D4 | 48 00 30 55 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A35D8 | 38 00 00 0E */	li r0, 0xe
/* 813A35DC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A35E0 | 48 00 00 30 */	b .L_813A3610
.L_813A35E4:
/* 813A35E4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A35E8 | 38 80 01 13 */	li r4, 0x113
/* 813A35EC | 48 00 2F 69 */	bl anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl
/* 813A35F0 | 38 00 00 1E */	li r0, 0x1e
/* 813A35F4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A35F8 | 48 00 00 18 */	b .L_813A3610
.L_813A35FC:
/* 813A35FC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3600 | 38 80 00 97 */	li r4, 0x97
/* 813A3604 | 48 00 30 25 */	bl anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl
/* 813A3608 | 38 00 00 0E */	li r0, 0xe
/* 813A360C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A3610:
/* 813A3610 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A3614 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A3618 | 7C 08 03 A6 */	mtlr r0
/* 813A361C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A3620 | 4E 80 00 20 */	blr
.endfn iplChannelEdit_813A3380__Q33ipl5scene11ChannelEditFv

# .text:0x3224 | 0x813A3624 | size: 0x170
# ipl::scene::ChannelEdit::iplChannelEdit_813A3624()
.fn iplChannelEdit_813A3624__Q33ipl5scene11ChannelEditFv, global
/* 813A3624 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A3628 | 7C 08 02 A6 */	mflr r0
/* 813A362C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A3630 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A3634 | 7C 7F 1B 78 */	mr r31, r3
/* 813A3638 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A363C | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A3640 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A3644 | 40 82 01 3C */	bne .L_813A3780
/* 813A3648 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A364C | 4B FF EB 25 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813A3650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3654 | 41 82 00 08 */	beq .L_813A365C
/* 813A3658 | 48 00 01 28 */	b .L_813A3780
.L_813A365C:
/* 813A365C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A3660 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A3664 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813A3668 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813A366C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A3670 | 41 82 00 14 */	beq .L_813A3684
/* 813A3674 | 40 80 01 04 */	bge .L_813A3778
/* 813A3678 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A367C | 40 80 00 EC */	bge .L_813A3768
/* 813A3680 | 48 00 00 F8 */	b .L_813A3778
.L_813A3684:
/* 813A3684 | 80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 813A3688 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A368C | 40 82 00 B4 */	bne .L_813A3740
/* 813A3690 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3694 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A3698 | 4B FA 51 ED */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A369C | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A36A0 | 40 82 00 5C */	bne .L_813A36FC
/* 813A36A4 | 7F E3 FB 78 */	mr r3, r31
/* 813A36A8 | 38 80 00 04 */	li r4, 0x4
/* 813A36AC | 4B FF DE 3D */	bl start_process__Q33ipl5scene11ChannelEditFi
/* 813A36B0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A36B4 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A36B8 | 48 00 68 4D */	bl iplNandSDCardManager_813A9F04
/* 813A36BC | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A36C0 | 38 00 FF FF */	li r0, -0x1
/* 813A36C4 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813A36C8 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A36CC | 80 84 06 14 */	lwz r4, 0x614(r4)
/* 813A36D0 | 7C 84 00 38 */	and r4, r4, r0
/* 813A36D4 | 4B FB F0 01 */	bl isTVRCChannel__Q23ipl11TVRCManagerFUl
/* 813A36D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A36DC | 41 82 00 10 */	beq .L_813A36EC
/* 813A36E0 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813A36E4 | 38 80 00 01 */	li r4, 0x1
/* 813A36E8 | 4B FB EF D5 */	bl resetProcessAsync__Q23ipl11TVRCManagerFi
.L_813A36EC:
/* 813A36EC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A36F0 | 38 80 01 0C */	li r4, 0x10c
/* 813A36F4 | 48 00 2F 75 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A36F8 | 48 00 00 80 */	b .L_813A3778
.L_813A36FC:
/* 813A36FC | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3700 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A3704 | 4B FA 51 81 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A3708 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813A370C | 40 82 00 1C */	bne .L_813A3728
/* 813A3710 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A3714 | 38 80 01 21 */	li r4, 0x121
/* 813A3718 | 48 00 2F 51 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A371C | 38 00 00 1A */	li r0, 0x1a
/* 813A3720 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A3724 | 48 00 00 5C */	b .L_813A3780
.L_813A3728:
/* 813A3728 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A372C | 38 80 00 97 */	li r4, 0x97
/* 813A3730 | 48 00 2F 39 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A3734 | 38 00 00 1A */	li r0, 0x1a
/* 813A3738 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813A373C | 48 00 00 44 */	b .L_813A3780
.L_813A3740:
/* 813A3740 | 7F E3 FB 78 */	mr r3, r31
/* 813A3744 | 38 80 00 04 */	li r4, 0x4
/* 813A3748 | 4B FF DD A1 */	bl start_process__Q33ipl5scene11ChannelEditFi
/* 813A374C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813A3750 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813A3754 | 48 00 68 09 */	bl iplNandSDCardManager_813A9F5C
/* 813A3758 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A375C | 38 80 01 14 */	li r4, 0x114
/* 813A3760 | 48 00 2F 09 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A3764 | 48 00 00 14 */	b .L_813A3778
.L_813A3768:
/* 813A3768 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813A376C | 48 00 2E 29 */	bl anmSelectFadein__Q33ipl5scene11ChanAppEditFv
/* 813A3770 | 38 00 00 0B */	li r0, 0xb
/* 813A3774 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813A3778:
/* 813A3778 | 7F E3 FB 78 */	mr r3, r31
/* 813A377C | 4B FF D6 49 */	bl update_sdcard_slot__Q33ipl5scene11ChannelEditFv
.L_813A3780:
/* 813A3780 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3784 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A3788 | 7C 08 03 A6 */	mtlr r0
/* 813A378C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A3790 | 4E 80 00 20 */	blr
.endfn iplChannelEdit_813A3624__Q33ipl5scene11ChannelEditFv

# .text:0x3394 | 0x813A3794 | size: 0xC8
# ipl::scene::ChannelEdit::iplChannelEdit_813A3794()
.fn iplChannelEdit_813A3794__Q33ipl5scene11ChannelEditFv, global
/* 813A3794 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A3798 | 7C 08 02 A6 */	mflr r0
/* 813A379C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A37A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A37A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A37A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A37AC | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813A37B0 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813A37B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A37B8 | 40 82 00 8C */	bne .L_813A3844
/* 813A37BC | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813A37C0 | 48 00 65 31 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813A37C4 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A37C8 | 48 00 43 ED */	bl calc__Q33ipl5scene17NandSDCardManagerFv
/* 813A37CC | 38 80 00 00 */	li r4, 0x0
/* 813A37D0 | 3B E0 00 00 */	li r31, 0x0
/* 813A37D4 | 48 00 00 08 */	b .L_813A37DC
.L_813A37D8:
/* 813A37D8 | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813A37DC:
/* 813A37DC | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813A37E0 | 48 16 EA FD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A37E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A37E8 | 7C 64 1B 78 */	mr r4, r3
/* 813A37EC | 40 82 FF EC */	bne .L_813A37D8
/* 813A37F0 | 80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 813A37F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A37F8 | 40 82 00 1C */	bne .L_813A3814
/* 813A37FC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A3800 | 48 00 61 D1 */	bl cmdGetNandFree__Q33ipl5scene17NandSDCardManagerFv
/* 813A3804 | 7F C3 F3 78 */	mr r3, r30
/* 813A3808 | 38 80 00 01 */	li r4, 0x1
/* 813A380C | 4B FF D5 4D */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
/* 813A3810 | 48 00 00 18 */	b .L_813A3828
.L_813A3814:
/* 813A3814 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813A3818 | 48 00 62 05 */	bl cmdGetSDFree__Q33ipl5scene17NandSDCardManagerFv
/* 813A381C | 7F C3 F3 78 */	mr r3, r30
/* 813A3820 | 38 80 00 00 */	li r4, 0x0
/* 813A3824 | 4B FF D5 35 */	bl send_getthumbnail_cmd__Q33ipl5scene11ChannelEditFb
.L_813A3828:
/* 813A3828 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813A382C | 38 80 01 0D */	li r4, 0x10d
/* 813A3830 | 48 00 2E 39 */	bl anmTextFadein__Q33ipl5scene11ChanAppEditFUl
/* 813A3834 | 7F C3 F3 78 */	mr r3, r30
/* 813A3838 | 4B FF DD 4D */	bl stop_process__Q33ipl5scene11ChannelEditFv
/* 813A383C | 38 00 00 1A */	li r0, 0x1a
/* 813A3840 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813A3844:
/* 813A3844 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3848 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A384C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A3850 | 7C 08 03 A6 */	mtlr r0
/* 813A3854 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A3858 | 4E 80 00 20 */	blr
.endfn iplChannelEdit_813A3794__Q33ipl5scene11ChannelEditFv

# .text:0x345C | 0x813A385C | size: 0x8
.fn "@20@__dt__Q33ipl5scene11ChannelEditFv", global
/* 813A385C | 38 63 FF EC */	subi r3, r3, 0x14
/* 813A3860 | 4B FF CC 28 */	b __dt__Q33ipl5scene11ChannelEditFv
.endfn "@20@__dt__Q33ipl5scene11ChannelEditFv"

# 0x8160FC48..0x8160FC70 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8160FC48 | size: 0x14
.obj lbl_8160FC48, global
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
.endobj lbl_8160FC48

# .rodata:0x14 | 0x8160FC5C | size: 0x14
.obj lbl_8160FC5C, global
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
.endobj lbl_8160FC5C

# 0x8164C688..0x8164CC68 | size: 0x5E0
.data
.balign 8

# .data:0x0 | 0x8164C688 | size: 0xC
.obj lbl_8164C688, global
	.string "N_Data_a_00"
.endobj lbl_8164C688

# .data:0xC | 0x8164C694 | size: 0xC
.obj lbl_8164C694, global
	.string "N_Data_a_01"
.endobj lbl_8164C694

# .data:0x18 | 0x8164C6A0 | size: 0xC
.obj lbl_8164C6A0, global
	.string "N_Data_a_02"
.endobj lbl_8164C6A0

# .data:0x24 | 0x8164C6AC | size: 0xC
.obj lbl_8164C6AC, global
	.string "N_Data_a_03"
.endobj lbl_8164C6AC

# .data:0x30 | 0x8164C6B8 | size: 0xC
.obj lbl_8164C6B8, global
	.string "N_Data_a_04"
.endobj lbl_8164C6B8

# .data:0x3C | 0x8164C6C4 | size: 0xC
.obj lbl_8164C6C4, global
	.string "N_Data_a_05"
.endobj lbl_8164C6C4

# .data:0x48 | 0x8164C6D0 | size: 0xC
.obj lbl_8164C6D0, global
	.string "N_Data_a_06"
.endobj lbl_8164C6D0

# .data:0x54 | 0x8164C6DC | size: 0xC
.obj lbl_8164C6DC, global
	.string "N_Data_a_07"
.endobj lbl_8164C6DC

# .data:0x60 | 0x8164C6E8 | size: 0xC
.obj lbl_8164C6E8, global
	.string "N_Data_a_08"
.endobj lbl_8164C6E8

# .data:0x6C | 0x8164C6F4 | size: 0xC
.obj lbl_8164C6F4, global
	.string "N_Data_a_09"
.endobj lbl_8164C6F4

# .data:0x78 | 0x8164C700 | size: 0xC
.obj lbl_8164C700, global
	.string "N_Data_a_10"
.endobj lbl_8164C700

# .data:0x84 | 0x8164C70C | size: 0xC
.obj lbl_8164C70C, global
	.string "N_Data_a_11"
.endobj lbl_8164C70C

# .data:0x90 | 0x8164C718 | size: 0xC
.obj lbl_8164C718, global
	.string "N_Data_a_12"
.endobj lbl_8164C718

# .data:0x9C | 0x8164C724 | size: 0xC
.obj lbl_8164C724, global
	.string "N_Data_a_13"
.endobj lbl_8164C724

# .data:0xA8 | 0x8164C730 | size: 0xC
.obj lbl_8164C730, global
	.string "N_Data_a_14"
.endobj lbl_8164C730

# .data:0xB4 | 0x8164C73C | size: 0xC
.obj lbl_8164C73C, global
	.string "N_Data_b_00"
.endobj lbl_8164C73C

# .data:0xC0 | 0x8164C748 | size: 0xC
.obj lbl_8164C748, global
	.string "N_Data_b_01"
.endobj lbl_8164C748

# .data:0xCC | 0x8164C754 | size: 0xC
.obj lbl_8164C754, global
	.string "N_Data_b_02"
.endobj lbl_8164C754

# .data:0xD8 | 0x8164C760 | size: 0xC
.obj lbl_8164C760, global
	.string "N_Data_b_03"
.endobj lbl_8164C760

# .data:0xE4 | 0x8164C76C | size: 0xC
.obj lbl_8164C76C, global
	.string "N_Data_b_04"
.endobj lbl_8164C76C

# .data:0xF0 | 0x8164C778 | size: 0xC
.obj lbl_8164C778, global
	.string "N_Data_b_05"
.endobj lbl_8164C778

# .data:0xFC | 0x8164C784 | size: 0xC
.obj lbl_8164C784, global
	.string "N_Data_b_06"
.endobj lbl_8164C784

# .data:0x108 | 0x8164C790 | size: 0xC
.obj lbl_8164C790, global
	.string "N_Data_b_07"
.endobj lbl_8164C790

# .data:0x114 | 0x8164C79C | size: 0xC
.obj lbl_8164C79C, global
	.string "N_Data_b_08"
.endobj lbl_8164C79C

# .data:0x120 | 0x8164C7A8 | size: 0xC
.obj lbl_8164C7A8, global
	.string "N_Data_b_09"
.endobj lbl_8164C7A8

# .data:0x12C | 0x8164C7B4 | size: 0xC
.obj lbl_8164C7B4, global
	.string "N_Data_b_10"
.endobj lbl_8164C7B4

# .data:0x138 | 0x8164C7C0 | size: 0xC
.obj lbl_8164C7C0, global
	.string "N_Data_b_11"
.endobj lbl_8164C7C0

# .data:0x144 | 0x8164C7CC | size: 0xC
.obj lbl_8164C7CC, global
	.string "N_Data_b_12"
.endobj lbl_8164C7CC

# .data:0x150 | 0x8164C7D8 | size: 0xC
.obj lbl_8164C7D8, global
	.string "N_Data_b_13"
.endobj lbl_8164C7D8

# .data:0x15C | 0x8164C7E4 | size: 0xC
.obj lbl_8164C7E4, global
	.string "N_Data_b_14"
.endobj lbl_8164C7E4

# .data:0x168 | 0x8164C7F0 | size: 0xC
.obj lbl_8164C7F0, global
	.string "N_Data_c_00"
.endobj lbl_8164C7F0

# .data:0x174 | 0x8164C7FC | size: 0xC
.obj lbl_8164C7FC, global
	.string "N_Data_c_01"
.endobj lbl_8164C7FC

# .data:0x180 | 0x8164C808 | size: 0xC
.obj lbl_8164C808, global
	.string "N_Data_c_02"
.endobj lbl_8164C808

# .data:0x18C | 0x8164C814 | size: 0xC
.obj lbl_8164C814, global
	.string "N_Data_c_03"
.endobj lbl_8164C814

# .data:0x198 | 0x8164C820 | size: 0xC
.obj lbl_8164C820, global
	.string "N_Data_c_04"
.endobj lbl_8164C820

# .data:0x1A4 | 0x8164C82C | size: 0xC
.obj lbl_8164C82C, global
	.string "N_Data_c_05"
.endobj lbl_8164C82C

# .data:0x1B0 | 0x8164C838 | size: 0xC
.obj lbl_8164C838, global
	.string "N_Data_c_06"
.endobj lbl_8164C838

# .data:0x1BC | 0x8164C844 | size: 0xC
.obj lbl_8164C844, global
	.string "N_Data_c_07"
.endobj lbl_8164C844

# .data:0x1C8 | 0x8164C850 | size: 0xC
.obj lbl_8164C850, global
	.string "N_Data_c_08"
.endobj lbl_8164C850

# .data:0x1D4 | 0x8164C85C | size: 0xC
.obj lbl_8164C85C, global
	.string "N_Data_c_09"
.endobj lbl_8164C85C

# .data:0x1E0 | 0x8164C868 | size: 0xC
.obj lbl_8164C868, global
	.string "N_Data_c_10"
.endobj lbl_8164C868

# .data:0x1EC | 0x8164C874 | size: 0xC
.obj lbl_8164C874, global
	.string "N_Data_c_11"
.endobj lbl_8164C874

# .data:0x1F8 | 0x8164C880 | size: 0xC
.obj lbl_8164C880, global
	.string "N_Data_c_12"
.endobj lbl_8164C880

# .data:0x204 | 0x8164C88C | size: 0xC
.obj lbl_8164C88C, global
	.string "N_Data_c_13"
.endobj lbl_8164C88C

# .data:0x210 | 0x8164C898 | size: 0xC
.obj lbl_8164C898, global
	.string "N_Data_c_14"
.endobj lbl_8164C898

# .data:0x21C | 0x8164C8A4 | size: 0x18C
.obj lbl_8164C8A4, global
	.4byte lbl_8164C688
	.4byte lbl_8164C694
	.4byte lbl_8164C6A0
	.4byte lbl_8164C6AC
	.4byte lbl_8164C6B8
	.4byte lbl_8164C6C4
	.4byte lbl_8164C6D0
	.4byte lbl_8164C6DC
	.4byte lbl_8164C6E8
	.4byte lbl_8164C6F4
	.4byte lbl_8164C700
	.4byte lbl_8164C70C
	.4byte lbl_8164C718
	.4byte lbl_8164C724
	.4byte lbl_8164C730
	.4byte lbl_8164C73C
	.4byte lbl_8164C748
	.4byte lbl_8164C754
	.4byte lbl_8164C760
	.4byte lbl_8164C76C
	.4byte lbl_8164C778
	.4byte lbl_8164C784
	.4byte lbl_8164C790
	.4byte lbl_8164C79C
	.4byte lbl_8164C7A8
	.4byte lbl_8164C7B4
	.4byte lbl_8164C7C0
	.4byte lbl_8164C7CC
	.4byte lbl_8164C7D8
	.4byte lbl_8164C7E4
	.4byte lbl_8164C7F0
	.4byte lbl_8164C7FC
	.4byte lbl_8164C808
	.4byte lbl_8164C814
	.4byte lbl_8164C820
	.4byte lbl_8164C82C
	.4byte lbl_8164C838
	.4byte lbl_8164C844
	.4byte lbl_8164C850
	.4byte lbl_8164C85C
	.4byte lbl_8164C868
	.4byte lbl_8164C874
	.4byte lbl_8164C880
	.4byte lbl_8164C88C
	.4byte lbl_8164C898
	.4byte 0x6368616E
	.4byte 0x45646974
	.4byte 0x2E617368
	.4byte 0x0062616C
	.4byte 0x6C6F6F6E
	.4byte 0x2E617368
	.4byte 0x00636F72
	.4byte 0x72757074
	.4byte 0x5F69636F
	.4byte 0x6E2E6173
	.4byte 0x6800746D
	.4byte 0x70746974
	.4byte 0x6C655F69
	.4byte 0x636F6E2E
	.4byte 0x61736800
	.4byte 0x202E2E2E
	.4byte 0x20776169
	.4byte 0x7420666F
	.4byte 0x72206273
	.4byte 0x32206162
	.4byte 0x6F72640A
	.4byte 0x002A2A2A
	.4byte 0x20425332
	.4byte 0x2061626F
	.4byte 0x72742063
	.4byte 0x6F737473
	.4byte 0x3A202564
	.4byte 0x6D730A00
	.4byte 0x69745F4F
	.4byte 0x626A4368
	.4byte 0x616E6E65
	.4byte 0x6C456469
	.4byte 0x745F612E
	.4byte 0x62726C79
	.4byte 0x74006974
	.4byte 0x5F4F626A
	.4byte 0x4368616E
	.4byte 0x6E656C45
	.4byte 0x6469745F
	.4byte 0x622E6272
	.4byte 0x6C797400
	.4byte 0x6D6E5F43
	.4byte 0x68616E6E
	.4byte 0x656C4465
	.4byte 0x7461696C
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x006D795F
	.4byte 0x49706C54
	.4byte 0x6F704261
	.4byte 0x6C6C6F6F
	.4byte 0x6E5F612E
	.4byte 0x62726C79
	.4byte 0x74000000
.endobj lbl_8164C8A4

# .data:0x3A8 | 0x8164CA30 | size: 0x80
.obj jumptable_8164CA30, local
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A09CC
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A09D8
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A09E4
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A09F0
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A09FC
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A08
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A14
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A20
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A2C
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A38
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A44
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A50
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A5C
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A68
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A74
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A80
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A8C
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0A98
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AA4
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AB0
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0ABC
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AC8
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AD4
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AE0
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AEC
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0AF8
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0B04
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0B10
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0B1C
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0B28
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0B34
	.rel calc__Q33ipl5scene11ChannelEditFv, .L_813A0B40
.endobj jumptable_8164CA30

# .data:0x428 | 0x8164CAB0 | size: 0x7C
.obj jumptable_8164CAB0, local
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0E70
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0E84
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0ECC
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EA0
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EA0
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EE4
	.rel update_sdcard_slot__Q33ipl5scene11ChannelEditFv, .L_813A0EA0
.endobj jumptable_8164CAB0

# .data:0x4A4 | 0x8164CB2C | size: 0xA
.obj lbl_8164CB2C, global
	.string "N_Capa_00"
.endobj lbl_8164CB2C

# .data:0x4AE | 0x8164CB36 | size: 0xA
.obj lbl_8164CB36, global
	.string "T_Capa_00"
.endobj lbl_8164CB36

# .data:0x4B8 | 0x8164CB40 | size: 0x10
.obj lbl_8164CB40, global
	.string "WIPL_SE_COPYING"
.endobj lbl_8164CB40

# .data:0x4C8 | 0x8164CB50 | size: 0x14
.obj lbl_8164CB50, global
	.string "WIPL_SE_COPY_FINISH"
.endobj lbl_8164CB50

# .data:0x4DC | 0x8164CB64 | size: 0xB
.obj lbl_8164CB64, global
	.string "WSD_SELECT"
.endobj lbl_8164CB64

# .data:0x4E7 | 0x8164CB6F | size: 0xF
.obj lbl_8164CB6F, global
	.string "B_SelectWii_00"
.endobj lbl_8164CB6F

# .data:0x4F6 | 0x8164CB7E | size: 0x34
.obj lbl_8164CB7E, global
	.4byte 0x425F5365
	.4byte 0x6C656374
	.4byte 0x53645F30
	.4byte 0x30005749
	.4byte 0x504C5F53
	.4byte 0x455F4254
	.4byte 0x5F544152
	.4byte 0x47455454
	.4byte 0x494E4700
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F50
	.4byte 0x55534800
.endobj lbl_8164CB7E

# .data:0x52A | 0x8164CBB2 | size: 0xF
.obj lbl_8164CBB2, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_8164CBB2

# .data:0x539 | 0x8164CBC1 | size: 0x1C
.obj lbl_8164CBC1, global
	.string " ... bs2 manager restarted\n"
.endobj lbl_8164CBC1

# .data:0x555 | 0x8164CBDD | size: 0x17
.obj lbl_8164CBDD, global
	.string "get async resutl = %d\n"
.endobj lbl_8164CBDD

# .data:0x56C | 0x8164CBF4 | size: 0xC
.obj lbl_8164CBF4, global
	.string "NEED MOUNT\n"
.endobj lbl_8164CBF4

# .data:0x578 | 0x8164CC00 | size: 0x1C
.obj lbl_8164CC00, global
	.4byte 0x6661696C
	.4byte 0x3A202061
	.4byte 0x73796E63
	.4byte 0x20726573
	.4byte 0x756C7420
	.4byte 0x3D202564
	.4byte 0x0A000000
.endobj lbl_8164CC00

# .data:0x594 | 0x8164CC1C | size: 0x4C
# ipl::scene::ChannelEdit::__vtable
.obj __vt__Q33ipl5scene11ChannelEdit, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene11ChannelEditFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene11ChannelEditFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene11ChannelEditCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene11ChannelEditFv
	.4byte create__Q33ipl5scene11ChannelEditFv
	.4byte calc__Q33ipl5scene11ChannelEditFv
	.4byte draw__Q33ipl5scene11ChannelEditFv
	.4byte destroy__Q33ipl5scene4BaseFv
.endobj __vt__Q33ipl5scene11ChannelEdit

# 0x816948F0..0x81694900 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816948F0 | size: 0x4
.obj lbl_816948F0, global
	.float 0
.endobj lbl_816948F0

# .sdata2:0x4 | 0x816948F4 | size: 0x4
.obj lbl_816948F4, global
	.float 55
.endobj lbl_816948F4

# .sdata2:0x8 | 0x816948F8 | size: 0x4
.obj lbl_816948F8, global
	.float 90
.endobj lbl_816948F8

# .sdata2:0xC | 0x816948FC | size: 0x4
.obj lbl_816948FC, global
	.float 60
.endobj lbl_816948FC

# 0x816967F8..0x81696820 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816967F8 | size: 0x4
.obj lbl_816967F8, global
	.string "arc"
.endobj lbl_816967F8

# .sdata:0x4 | 0x816967FC | size: 0x7
.obj lbl_816967FC, global
	.string "N_ArwR"
.endobj lbl_816967FC

# .sdata:0xB | 0x81696803 | size: 0x7
.obj lbl_81696803, global
	.string "N_ArwL"
.endobj lbl_81696803

# .sdata:0x12 | 0x8169680A | size: 0x7
.obj lbl_8169680A, global
	.string "B_ArwR"
.endobj lbl_8169680A

# .sdata:0x19 | 0x81696811 | size: 0x7
.obj lbl_81696811, global
	.string "B_ArwL"
.endobj lbl_81696811

# .sdata:0x20 | 0x81696818 | size: 0x8
.obj lbl_81696818, global
	.4byte 0x4E5F416C
	.4byte 0x6C000000
.endobj lbl_81696818
