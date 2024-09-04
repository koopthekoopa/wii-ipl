.include "macros.inc"
.file "iplMailAddressSelect.cpp"

# 0x813C2418..0x813C3BCC | size: 0x17B4
.text
.balign 4

# .text:0x0 | 0x813C2418 | size: 0x8C
# ipl::scene::MailAddressSelect::MailAddressSelect(EGG::Heap*)
.fn __ct__Q33ipl5scene17MailAddressSelectFPQ23EGG4Heap, global
/* 813C2418 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C241C | 7C 08 02 A6 */	mflr r0
/* 813C2420 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2424 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2428 | 7C 7F 1B 78 */	mr r31, r3
/* 813C242C | 48 04 8D DD */	bl fn_8140B208
/* 813C2430 | 3C C0 81 65 */	lis r6, __vt__Q33ipl5scene17MailAddressSelect@ha
/* 813C2434 | 38 E0 00 00 */	li r7, 0x0
/* 813C2438 | 38 C6 0B 70 */	addi r6, r6, __vt__Q33ipl5scene17MailAddressSelect@l
/* 813C243C | 38 00 00 03 */	li r0, 0x3
/* 813C2440 | 38 A6 00 1C */	addi r5, r6, 0x1c
/* 813C2444 | 7C E3 3B 78 */	mr r3, r7
/* 813C2448 | 38 86 00 68 */	addi r4, r6, 0x68
/* 813C244C | 90 FF 00 60 */	stw r7, 0x60(r31)
/* 813C2450 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 813C2454 | 90 BF 00 14 */	stw r5, 0x14(r31)
/* 813C2458 | 90 9F 00 58 */	stw r4, 0x58(r31)
/* 813C245C | 90 FF 00 64 */	stw r7, 0x64(r31)
/* 813C2460 | 90 FF 00 68 */	stw r7, 0x68(r31)
/* 813C2464 | 90 FF 00 6C */	stw r7, 0x6c(r31)
/* 813C2468 | 90 FF 00 70 */	stw r7, 0x70(r31)
/* 813C246C | 90 FF 00 80 */	stw r7, 0x80(r31)
/* 813C2470 | 98 FF 00 88 */	stb r7, 0x88(r31)
/* 813C2474 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813C2478 | 7C 09 03 A6 */	mtctr r0
.L_813C247C:
/* 813C247C | 7C 9F 1A 14 */	add r4, r31, r3
/* 813C2480 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813C2484 | 90 E4 00 74 */	stw r7, 0x74(r4)
/* 813C2488 | 42 00 FF F4 */	bdnz .L_813C247C
/* 813C248C | 7F E3 FB 78 */	mr r3, r31
/* 813C2490 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C2494 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2498 | 7C 08 03 A6 */	mtlr r0
/* 813C249C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C24A0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene17MailAddressSelectFPQ23EGG4Heap

# .text:0x8C | 0x813C24A4 | size: 0x5C
# ipl::scene::MailAddressSelect::~MailAddressSelect()
.fn __dt__Q33ipl5scene17MailAddressSelectFv, global
/* 813C24A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C24A8 | 7C 08 02 A6 */	mflr r0
/* 813C24AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C24B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C24B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C24B8 | 7C 9F 23 78 */	mr r31, r4
/* 813C24BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C24C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813C24C4 | 41 82 00 20 */	beq .L_813C24E4
/* 813C24C8 | 41 82 00 0C */	beq .L_813C24D4
/* 813C24CC | 38 80 00 00 */	li r4, 0x0
/* 813C24D0 | 48 04 77 95 */	bl fn_81409C64
.L_813C24D4:
/* 813C24D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C24D8 | 40 81 00 0C */	ble .L_813C24E4
/* 813C24DC | 7F C3 F3 78 */	mr r3, r30
/* 813C24E0 | 48 23 5C 05 */	bl __dl__FPv
.L_813C24E4:
/* 813C24E4 | 7F C3 F3 78 */	mr r3, r30
/* 813C24E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C24EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C24F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C24F4 | 7C 08 03 A6 */	mtlr r0
/* 813C24F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C24FC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene17MailAddressSelectFv

# .text:0xE8 | 0x813C2500 | size: 0x4C
# ipl::scene::MailAddressSelect::prepare()
.fn prepare__Q33ipl5scene17MailAddressSelectFv, global
/* 813C2500 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2504 | 7C 08 02 A6 */	mflr r0
/* 813C2508 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C250C | 3C A0 81 65 */	lis r5, lbl_816508FC@ha
/* 813C2510 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2514 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C2518 | 38 A5 08 FC */	addi r5, r5, lbl_816508FC@l
/* 813C251C | 38 C0 00 00 */	li r6, 0x0
/* 813C2520 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2524 | 7C 7F 1B 78 */	mr r31, r3
/* 813C2528 | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 813C252C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813C2530 | 4B F7 B3 85 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813C2534 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 813C2538 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C253C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2540 | 7C 08 03 A6 */	mtlr r0
/* 813C2544 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C2548 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene17MailAddressSelectFv

# .text:0x134 | 0x813C254C | size: 0x340
# ipl::scene::MailAddressSelect::create()
.fn create__Q33ipl5scene17MailAddressSelectFv, global
/* 813C254C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C2550 | 7C 08 02 A6 */	mflr r0
/* 813C2554 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C2558 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C255C | 48 23 6F 65 */	bl _savegpr_27
/* 813C2560 | 3F 80 81 65 */	lis r28, lbl_816508D0@ha
/* 813C2564 | 7C 7F 1B 78 */	mr r31, r3
/* 813C2568 | 3B 9C 08 D0 */	addi r28, r28, lbl_816508D0@l
/* 813C256C | 38 60 05 80 */	li r3, 0x580
/* 813C2570 | 48 23 5B 2D */	bl __nw__FUl
/* 813C2574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2578 | 41 82 00 18 */	beq .L_813C2590
/* 813C257C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813C2580 | 38 FC 00 38 */	addi r7, r28, 0x38
/* 813C2584 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813C2588 | 38 CD 8B 88 */	li r6, lbl_81696BC8@sda21
/* 813C258C | 4B FA 7A 99 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C2590:
/* 813C2590 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 813C2594 | 38 9C 00 48 */	addi r4, r28, 0x48
/* 813C2598 | 38 BC 00 61 */	addi r5, r28, 0x61
/* 813C259C | 38 C0 00 00 */	li r6, 0x0
/* 813C25A0 | 38 E0 00 01 */	li r7, 0x1
/* 813C25A4 | 4B FA 7F 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C25A8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C25AC | 38 9C 00 6F */	addi r4, r28, 0x6f
/* 813C25B0 | 38 BC 00 61 */	addi r5, r28, 0x61
/* 813C25B4 | 38 C0 00 00 */	li r6, 0x0
/* 813C25B8 | 38 E0 00 00 */	li r7, 0x0
/* 813C25BC | 4B FA 7F 25 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C25C0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C25C4 | 38 9C 00 89 */	addi r4, r28, 0x89
/* 813C25C8 | 38 BC 00 A6 */	addi r5, r28, 0xa6
/* 813C25CC | 38 C0 00 00 */	li r6, 0x0
/* 813C25D0 | 38 E0 00 00 */	li r7, 0x0
/* 813C25D4 | 4B FA 7F 0D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C25D8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C25DC | 38 9C 00 B3 */	addi r4, r28, 0xb3
/* 813C25E0 | 38 BC 00 A6 */	addi r5, r28, 0xa6
/* 813C25E4 | 38 C0 00 00 */	li r6, 0x0
/* 813C25E8 | 38 E0 00 00 */	li r7, 0x0
/* 813C25EC | 4B FA 7E F5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C25F0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C25F4 | 38 9C 00 D1 */	addi r4, r28, 0xd1
/* 813C25F8 | 38 BC 00 E8 */	addi r5, r28, 0xe8
/* 813C25FC | 38 C0 00 00 */	li r6, 0x0
/* 813C2600 | 38 E0 00 00 */	li r7, 0x0
/* 813C2604 | 4B FA 7E DD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2608 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C260C | 38 9C 00 F6 */	addi r4, r28, 0xf6
/* 813C2610 | 38 BC 00 E8 */	addi r5, r28, 0xe8
/* 813C2614 | 38 C0 00 00 */	li r6, 0x0
/* 813C2618 | 38 E0 00 00 */	li r7, 0x0
/* 813C261C | 4B FA 7E C5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2620 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2624 | 38 9C 01 0E */	addi r4, r28, 0x10e
/* 813C2628 | 38 BC 01 2D */	addi r5, r28, 0x12d
/* 813C262C | 38 C0 00 00 */	li r6, 0x0
/* 813C2630 | 38 E0 00 00 */	li r7, 0x0
/* 813C2634 | 4B FA 7E AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2638 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C263C | 38 9C 01 3C */	addi r4, r28, 0x13c
/* 813C2640 | 38 BC 01 2D */	addi r5, r28, 0x12d
/* 813C2644 | 38 C0 00 00 */	li r6, 0x0
/* 813C2648 | 38 E0 00 00 */	li r7, 0x0
/* 813C264C | 4B FA 7E 95 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2650 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2654 | 38 9C 01 5C */	addi r4, r28, 0x15c
/* 813C2658 | 38 BC 00 E8 */	addi r5, r28, 0xe8
/* 813C265C | 38 C0 00 00 */	li r6, 0x0
/* 813C2660 | 38 E0 00 00 */	li r7, 0x0
/* 813C2664 | 4B FA 7E 7D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2668 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C266C | 38 9C 01 75 */	addi r4, r28, 0x175
/* 813C2670 | 38 BC 00 E8 */	addi r5, r28, 0xe8
/* 813C2674 | 38 C0 00 00 */	li r6, 0x0
/* 813C2678 | 38 E0 00 00 */	li r7, 0x0
/* 813C267C | 4B FA 7E 65 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2680 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2684 | 38 9C 01 8F */	addi r4, r28, 0x18f
/* 813C2688 | 38 BC 01 AE */	addi r5, r28, 0x1ae
/* 813C268C | 38 C0 00 00 */	li r6, 0x0
/* 813C2690 | 38 E0 00 00 */	li r7, 0x0
/* 813C2694 | 4B FA 7E 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C2698 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C269C | 38 9C 01 BD */	addi r4, r28, 0x1bd
/* 813C26A0 | 38 BC 01 AE */	addi r5, r28, 0x1ae
/* 813C26A4 | 38 C0 00 00 */	li r6, 0x0
/* 813C26A8 | 38 E0 00 00 */	li r7, 0x0
/* 813C26AC | 4B FA 7E 35 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C26B0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C26B4 | 38 9C 01 DD */	addi r4, r28, 0x1dd
/* 813C26B8 | 38 BC 00 E8 */	addi r5, r28, 0xe8
/* 813C26BC | 38 C0 00 00 */	li r6, 0x0
/* 813C26C0 | 38 E0 00 00 */	li r7, 0x0
/* 813C26C4 | 4B FA 7E 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C26C8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C26CC | 38 9C 01 F6 */	addi r4, r28, 0x1f6
/* 813C26D0 | 38 BC 00 E8 */	addi r5, r28, 0xe8
/* 813C26D4 | 38 C0 00 00 */	li r6, 0x0
/* 813C26D8 | 38 E0 00 00 */	li r7, 0x0
/* 813C26DC | 4B FA 7E 05 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C26E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C26E4 | 4B FA 7F 51 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813C26E8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C26EC | 38 80 00 00 */	li r4, 0x0
/* 813C26F0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C26F4 | 48 14 FC 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C26F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813C26FC | 4B FA 01 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C2700 | 38 00 00 01 */	li r0, 0x1
/* 813C2704 | 38 60 00 10 */	li r3, 0x10
/* 813C2708 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813C270C | 48 23 59 91 */	bl __nw__FUl
/* 813C2710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2714 | 41 82 00 1C */	beq .L_813C2730
/* 813C2718 | 38 00 00 00 */	li r0, 0x0
/* 813C271C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene16MailAddressEvent@ha
/* 813C2720 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813C2724 | 38 84 0B 58 */	addi r4, r4, __vt__Q33ipl5scene16MailAddressEvent@l
/* 813C2728 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C272C | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813C2730:
/* 813C2730 | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 813C2734 | 38 60 00 34 */	li r3, 0x34
/* 813C2738 | 48 23 59 65 */	bl __nw__FUl
/* 813C273C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2740 | 7C 7D 1B 78 */	mr r29, r3
/* 813C2744 | 41 82 00 88 */	beq .L_813C27CC
/* 813C2748 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813C274C | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813C2750 | 80 DF 00 6C */	lwz r6, 0x6c(r31)
/* 813C2754 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813C2758 | 38 00 00 00 */	li r0, 0x0
/* 813C275C | 3B C5 02 98 */	addi r30, r5, 0x298
/* 813C2760 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C2764 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813C2768 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813C276C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C2770 | 41 82 00 1C */	beq .L_813C278C
/* 813C2774 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813C2778 | 7C C3 33 78 */	mr r3, r6
/* 813C277C | 7F A4 EB 78 */	mr r4, r29
/* 813C2780 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C2784 | 7D 89 03 A6 */	mtctr r12
/* 813C2788 | 4E 80 04 21 */	bctrl
.L_813C278C:
/* 813C278C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813C2790 | 38 80 00 08 */	li r4, 0x8
/* 813C2794 | 48 14 F8 C9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C2798 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813C279C | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813C27A0 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813C27A4 | 38 80 00 08 */	li r4, 0x8
/* 813C27A8 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813C27AC | 93 DD 00 24 */	stw r30, 0x24(r29)
/* 813C27B0 | 48 14 F8 AD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C27B4 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813C27B8 | 38 00 00 00 */	li r0, 0x0
/* 813C27BC | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813C27C0 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 813C27C4 | 90 1D 00 2C */	stw r0, 0x2c(r29)
/* 813C27C8 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813C27CC:
/* 813C27CC | 93 BF 00 70 */	stw r29, 0x70(r31)
/* 813C27D0 | 7F A3 EB 78 */	mr r3, r29
/* 813C27D4 | 80 9F 00 64 */	lwz r4, 0x64(r31)
/* 813C27D8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813C27DC | 38 84 00 04 */	addi r4, r4, 0x4
/* 813C27E0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813C27E4 | 7D 89 03 A6 */	mtctr r12
/* 813C27E8 | 4E 80 04 21 */	bctrl
/* 813C27EC | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813C27F0 | 38 80 00 00 */	li r4, 0x0
/* 813C27F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C27F8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813C27FC | 7D 89 03 A6 */	mtctr r12
/* 813C2800 | 4E 80 04 21 */	bctrl
/* 813C2804 | 3B BC 00 20 */	addi r29, r28, 0x20
/* 813C2808 | 3B 60 00 00 */	li r27, 0x0
/* 813C280C | 3B C0 00 00 */	li r30, 0x0
.L_813C2810:
/* 813C2810 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2814 | 38 A0 00 01 */	li r5, 0x1
/* 813C2818 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813C281C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C2820 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2824 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C2828 | 7D 89 03 A6 */	mtctr r12
/* 813C282C | 4E 80 04 21 */	bctrl
/* 813C2830 | 7C 64 1B 78 */	mr r4, r3
/* 813C2834 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813C2838 | 38 A0 00 01 */	li r5, 0x1
/* 813C283C | 4B FA 89 91 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C2840 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813C2844 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813C2848 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813C284C | 41 80 FF C4 */	blt .L_813C2810
/* 813C2850 | 7F E3 FB 78 */	mr r3, r31
/* 813C2854 | 38 8D 8B 8C */	li r4, lbl_81696BCC@sda21
/* 813C2858 | 38 A0 00 85 */	li r5, 0x85
/* 813C285C | 48 00 0C C1 */	bl set_textbox__Q33ipl5scene17MailAddressSelectFPCcUl
/* 813C2860 | 7F E3 FB 78 */	mr r3, r31
/* 813C2864 | 38 9C 02 10 */	addi r4, r28, 0x210
/* 813C2868 | 38 A0 00 86 */	li r5, 0x86
/* 813C286C | 48 00 0C B1 */	bl set_textbox__Q33ipl5scene17MailAddressSelectFPCcUl
/* 813C2870 | 4B F7 14 19 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813C2874 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C2878 | 48 23 6C 95 */	bl _restgpr_27
/* 813C287C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C2880 | 7C 08 03 A6 */	mtlr r0
/* 813C2884 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C2888 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene17MailAddressSelectFv

# .text:0x474 | 0x813C288C | size: 0x44
# ipl::scene::MailAddressSelect::calcCommon()
.fn calcCommon__Q33ipl5scene17MailAddressSelectFv, global
/* 813C288C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2890 | 7C 08 02 A6 */	mflr r0
/* 813C2894 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2898 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C289C | 7C 7F 1B 78 */	mr r31, r3
/* 813C28A0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C28A4 | 4B FA 7E 61 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C28A8 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813C28AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C28B0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813C28B4 | 7D 89 03 A6 */	mtctr r12
/* 813C28B8 | 4E 80 04 21 */	bctrl
/* 813C28BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C28C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C28C4 | 7C 08 03 A6 */	mtlr r0
/* 813C28C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C28CC | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene17MailAddressSelectFv

# .text:0x4B8 | 0x813C28D0 | size: 0xA4
# ipl::scene::MailAddressSelect::calcFadein()
.fn calcFadein__Q33ipl5scene17MailAddressSelectFv, global
/* 813C28D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C28D4 | 7C 08 02 A6 */	mflr r0
/* 813C28D8 | 38 80 00 00 */	li r4, 0x0
/* 813C28DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C28E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C28E4 | 3B E0 00 00 */	li r31, 0x0
/* 813C28E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C28EC | 3B C0 00 00 */	li r30, 0x0
/* 813C28F0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C28F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C28F8 | 48 14 FA 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C28FC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813C2900 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C2904 | 41 82 00 28 */	beq .L_813C292C
/* 813C2908 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C290C | 38 80 00 05 */	li r4, 0x5
/* 813C2910 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C2914 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C2918 | 48 04 88 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C291C | 4B FD 9F F9 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813C2920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2924 | 41 82 00 08 */	beq .L_813C292C
/* 813C2928 | 3B C0 00 01 */	li r30, 0x1
.L_813C292C:
/* 813C292C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813C2930 | 41 82 00 28 */	beq .L_813C2958
/* 813C2934 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C2938 | 38 80 00 05 */	li r4, 0x5
/* 813C293C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C2940 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C2944 | 48 04 87 F5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2948 | 80 03 01 78 */	lwz r0, 0x178(r3)
/* 813C294C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2950 | 40 82 00 08 */	bne .L_813C2958
/* 813C2954 | 3B E0 00 01 */	li r31, 0x1
.L_813C2958:
/* 813C2958 | 7F E3 FB 78 */	mr r3, r31
/* 813C295C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C2960 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C2964 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2968 | 7C 08 03 A6 */	mtlr r0
/* 813C296C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C2970 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene17MailAddressSelectFv

# .text:0x55C | 0x813C2974 | size: 0x54
# ipl::scene::MailAddressSelect::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene17MailAddressSelectFv, global
/* 813C2974 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2978 | 7C 08 02 A6 */	mflr r0
/* 813C297C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2980 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2984 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2988 | 7C 7F 1B 78 */	mr r31, r3
/* 813C298C | 41 82 00 08 */	beq .L_813C2994
/* 813C2990 | 3B E3 00 58 */	addi r31, r3, 0x58
.L_813C2994:
/* 813C2994 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C2998 | 38 80 00 05 */	li r4, 0x5
/* 813C299C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C29A0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C29A4 | 48 04 87 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C29A8 | 7F E4 FB 78 */	mr r4, r31
/* 813C29AC | 38 A0 00 00 */	li r5, 0x0
/* 813C29B0 | 4B FD 9F 8D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C29B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C29B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C29BC | 7C 08 03 A6 */	mtlr r0
/* 813C29C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C29C4 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene17MailAddressSelectFv

# .text:0x5B0 | 0x813C29C8 | size: 0x47C
# ipl::scene::MailAddressSelect::calcNormal()
.fn calcNormal__Q33ipl5scene17MailAddressSelectFv, global
/* 813C29C8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813C29CC | 7C 08 02 A6 */	mflr r0
/* 813C29D0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813C29D4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813C29D8 | 48 23 6A F1 */	bl _savegpr_29
/* 813C29DC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813C29E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C29E4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813C29E8 | 38 80 00 05 */	li r4, 0x5
/* 813C29EC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C29F0 | 48 04 87 49 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C29F4 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 813C29F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813C29FC | 28 00 00 09 */	cmplwi r0, 0x9
/* 813C2A00 | 41 81 04 1C */	bgt .L_813C2E1C
/* 813C2A04 | 3C 80 81 65 */	lis r4, jumptable_81650AEC@ha
/* 813C2A08 | 54 00 10 3A */	slwi r0, r0, 2
/* 813C2A0C | 38 84 0A EC */	addi r4, r4, jumptable_81650AEC@l
/* 813C2A10 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813C2A14 | 7C 89 03 A6 */	mtctr r4
/* 813C2A18 | 4E 80 04 20 */	bctr
.L_813C2A1C:
/* 813C2A1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2A20 | 41 82 00 24 */	beq .L_813C2A44
/* 813C2A24 | 4B FD 9E F1 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813C2A28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2A2C | 41 82 00 18 */	beq .L_813C2A44
/* 813C2A30 | 80 1D 01 78 */	lwz r0, 0x178(r29)
/* 813C2A34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2A38 | 40 82 00 0C */	bne .L_813C2A44
/* 813C2A3C | 7F A3 EB 78 */	mr r3, r29
/* 813C2A40 | 4B FD 9B 2D */	bl update__Q33ipl5scene6ButtonFv
.L_813C2A44:
/* 813C2A44 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 813C2A48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2A4C | 40 82 03 D0 */	bne .L_813C2E1C
/* 813C2A50 | 7F A3 EB 78 */	mr r3, r29
/* 813C2A54 | 4B FD 9E C1 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813C2A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2A5C | 41 82 03 C0 */	beq .L_813C2E1C
/* 813C2A60 | 80 1D 01 78 */	lwz r0, 0x178(r29)
/* 813C2A64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2A68 | 40 82 03 B4 */	bne .L_813C2E1C
/* 813C2A6C | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813C2A70 | 4B FA 85 1D */	bl update__Q33ipl3gui11PaneManagerFv
/* 813C2A74 | 48 00 03 A8 */	b .L_813C2E1C
.L_813C2A78:
/* 813C2A78 | 7F E3 FB 78 */	mr r3, r31
/* 813C2A7C | 48 00 10 0D */	bl reset_gui__Q33ipl5scene17MailAddressSelectFv
/* 813C2A80 | 48 00 03 9C */	b .L_813C2E1C
.L_813C2A84:
/* 813C2A84 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C2A88 | 7F E3 FB 78 */	mr r3, r31
/* 813C2A8C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813C2A90 | 7D 89 03 A6 */	mtctr r12
/* 813C2A94 | 4E 80 04 21 */	bctrl
/* 813C2A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2A9C | 40 82 03 80 */	bne .L_813C2E1C
/* 813C2AA0 | 38 00 00 0A */	li r0, 0xa
/* 813C2AA4 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2AA8 | 48 00 03 74 */	b .L_813C2E1C
.L_813C2AAC:
/* 813C2AAC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2AB0 | 38 80 00 05 */	li r4, 0x5
/* 813C2AB4 | 4B FA 80 1D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813C2AB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2ABC | 40 82 03 60 */	bne .L_813C2E1C
/* 813C2AC0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2AC4 | 38 80 00 09 */	li r4, 0x9
/* 813C2AC8 | 4B FA 80 09 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813C2ACC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2AD0 | 40 82 03 4C */	bne .L_813C2E1C
/* 813C2AD4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2AD8 | 38 80 00 0D */	li r4, 0xd
/* 813C2ADC | 4B FA 7F F5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813C2AE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2AE4 | 40 82 03 38 */	bne .L_813C2E1C
/* 813C2AE8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C2AEC | 7F E4 FB 78 */	mr r4, r31
/* 813C2AF0 | 41 82 00 08 */	beq .L_813C2AF8
/* 813C2AF4 | 38 9F 00 58 */	addi r4, r31, 0x58
.L_813C2AF8:
/* 813C2AF8 | 7F A3 EB 78 */	mr r3, r29
/* 813C2AFC | 38 A0 00 00 */	li r5, 0x0
/* 813C2B00 | 4B FD 9E 3D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C2B04 | 38 00 00 00 */	li r0, 0x0
/* 813C2B08 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2B0C | 48 00 03 10 */	b .L_813C2E1C
.L_813C2B10:
/* 813C2B10 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813C2B14 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813C2B18 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C2B1C | 41 82 00 14 */	beq .L_813C2B30
/* 813C2B20 | 40 80 02 FC */	bge .L_813C2E1C
/* 813C2B24 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C2B28 | 40 80 00 14 */	bge .L_813C2B3C
/* 813C2B2C | 48 00 02 F0 */	b .L_813C2E1C
.L_813C2B30:
/* 813C2B30 | 38 00 00 00 */	li r0, 0x0
/* 813C2B34 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2B38 | 48 00 02 E4 */	b .L_813C2E1C
.L_813C2B3C:
/* 813C2B3C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C2B40 | 48 1A 76 39 */	bl fn_8156A178
/* 813C2B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2B48 | 41 82 00 68 */	beq .L_813C2BB0
/* 813C2B4C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813C2B50 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813C2B54 | 41 82 00 5C */	beq .L_813C2BB0
/* 813C2B58 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C2B5C | 38 80 00 05 */	li r4, 0x5
/* 813C2B60 | 48 04 85 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2B64 | 38 80 00 00 */	li r4, 0x0
/* 813C2B68 | 38 A0 00 00 */	li r5, 0x0
/* 813C2B6C | 4B FD 9D D1 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C2B70 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C2B74 | 38 80 00 05 */	li r4, 0x5
/* 813C2B78 | 48 04 85 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2B7C | 38 80 00 0C */	li r4, 0xc
/* 813C2B80 | 4B FD 9F D9 */	bl iplButton_8139CB58
/* 813C2B84 | 7F E3 FB 78 */	mr r3, r31
/* 813C2B88 | 7F E5 FB 78 */	mr r5, r31
/* 813C2B8C | 38 80 00 1B */	li r4, 0x1b
/* 813C2B90 | 38 C0 00 00 */	li r6, 0x0
/* 813C2B94 | 38 E0 00 01 */	li r7, 0x1
/* 813C2B98 | 48 04 72 F1 */	bl fn_81409E88
/* 813C2B9C | 38 60 00 00 */	li r3, 0x0
/* 813C2BA0 | 38 00 00 05 */	li r0, 0x5
/* 813C2BA4 | 98 7F 00 88 */	stb r3, 0x88(r31)
/* 813C2BA8 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2BAC | 48 00 02 70 */	b .L_813C2E1C
.L_813C2BB0:
/* 813C2BB0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C2BB4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C2BB8 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813C2BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2BC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C2BC4 | 7D 89 03 A6 */	mtctr r12
/* 813C2BC8 | 4E 80 04 21 */	bctrl
/* 813C2BCC | 7F E3 FB 78 */	mr r3, r31
/* 813C2BD0 | 38 80 00 12 */	li r4, 0x12
/* 813C2BD4 | 38 A0 00 01 */	li r5, 0x1
/* 813C2BD8 | 48 04 73 BD */	bl fn_81409F94
/* 813C2BDC | 38 00 00 0A */	li r0, 0xa
/* 813C2BE0 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2BE4 | 48 00 02 38 */	b .L_813C2E1C
.L_813C2BE8:
/* 813C2BE8 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C2BEC | 38 80 00 1B */	li r4, 0x1b
/* 813C2BF0 | 48 04 85 49 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2BF8 | 41 82 02 24 */	beq .L_813C2E1C
/* 813C2BFC | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813C2C00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C2C04 | 41 82 00 14 */	beq .L_813C2C18
/* 813C2C08 | 41 80 02 14 */	blt .L_813C2E1C
/* 813C2C0C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C2C10 | 40 80 02 0C */	bge .L_813C2E1C
/* 813C2C14 | 48 00 00 18 */	b .L_813C2C2C
.L_813C2C18:
/* 813C2C18 | 38 60 00 01 */	li r3, 0x1
/* 813C2C1C | 38 00 00 06 */	li r0, 0x6
/* 813C2C20 | 98 7F 00 88 */	stb r3, 0x88(r31)
/* 813C2C24 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2C28 | 48 00 01 F4 */	b .L_813C2E1C
.L_813C2C2C:
/* 813C2C2C | 38 60 00 00 */	li r3, 0x0
/* 813C2C30 | 38 00 00 06 */	li r0, 0x6
/* 813C2C34 | 98 7F 00 88 */	stb r3, 0x88(r31)
/* 813C2C38 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2C3C | 48 00 01 E0 */	b .L_813C2E1C
.L_813C2C40:
/* 813C2C40 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C2C44 | 7F E3 FB 78 */	mr r3, r31
/* 813C2C48 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813C2C4C | 7D 89 03 A6 */	mtctr r12
/* 813C2C50 | 4E 80 04 21 */	bctrl
/* 813C2C54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2C58 | 40 82 01 C4 */	bne .L_813C2E1C
/* 813C2C5C | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813C2C60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2C64 | 41 82 00 34 */	beq .L_813C2C98
/* 813C2C68 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813C2C6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2C70 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C2C74 | 7D 89 03 A6 */	mtctr r12
/* 813C2C78 | 4E 80 04 21 */	bctrl
/* 813C2C7C | 7F E3 FB 78 */	mr r3, r31
/* 813C2C80 | 38 80 00 12 */	li r4, 0x12
/* 813C2C84 | 38 A0 00 01 */	li r5, 0x1
/* 813C2C88 | 48 04 73 0D */	bl fn_81409F94
/* 813C2C8C | 38 00 00 0A */	li r0, 0xa
/* 813C2C90 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2C94 | 48 00 01 88 */	b .L_813C2E1C
.L_813C2C98:
/* 813C2C98 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C2C9C | 38 80 00 05 */	li r4, 0x5
/* 813C2CA0 | 48 04 84 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2CA4 | 38 80 00 0B */	li r4, 0xb
/* 813C2CA8 | 4B FD 9E B1 */	bl iplButton_8139CB58
/* 813C2CAC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C2CB0 | 7F FD FB 78 */	mr r29, r31
/* 813C2CB4 | 41 82 00 08 */	beq .L_813C2CBC
/* 813C2CB8 | 3B BF 00 58 */	addi r29, r31, 0x58
.L_813C2CBC:
/* 813C2CBC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C2CC0 | 38 80 00 05 */	li r4, 0x5
/* 813C2CC4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C2CC8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C2CCC | 48 04 84 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2CD0 | 7F A4 EB 78 */	mr r4, r29
/* 813C2CD4 | 38 A0 00 00 */	li r5, 0x0
/* 813C2CD8 | 4B FD 9C 65 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C2CDC | 38 00 00 00 */	li r0, 0x0
/* 813C2CE0 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2CE4 | 48 00 01 38 */	b .L_813C2E1C
.L_813C2CE8:
/* 813C2CE8 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813C2CEC | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813C2CF0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813C2CF4 | 41 82 01 28 */	beq .L_813C2E1C
/* 813C2CF8 | 38 00 00 00 */	li r0, 0x0
/* 813C2CFC | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2D00 | 48 00 01 1C */	b .L_813C2E1C
.L_813C2D04:
/* 813C2D04 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813C2D08 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813C2D0C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C2D10 | 41 82 00 14 */	beq .L_813C2D24
/* 813C2D14 | 40 80 01 08 */	bge .L_813C2E1C
/* 813C2D18 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C2D1C | 40 80 00 14 */	bge .L_813C2D30
/* 813C2D20 | 48 00 00 FC */	b .L_813C2E1C
.L_813C2D24:
/* 813C2D24 | 38 00 00 00 */	li r0, 0x0
/* 813C2D28 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2D2C | 48 00 00 F0 */	b .L_813C2E1C
.L_813C2D30:
/* 813C2D30 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813C2D34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2D38 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C2D3C | 7D 89 03 A6 */	mtctr r12
/* 813C2D40 | 4E 80 04 21 */	bctrl
/* 813C2D44 | 7F E3 FB 78 */	mr r3, r31
/* 813C2D48 | 38 80 00 12 */	li r4, 0x12
/* 813C2D4C | 38 A0 00 04 */	li r5, 0x4
/* 813C2D50 | 48 04 72 45 */	bl fn_81409F94
/* 813C2D54 | 38 00 00 0A */	li r0, 0xa
/* 813C2D58 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2D5C | 48 00 00 C0 */	b .L_813C2E1C
.L_813C2D60:
/* 813C2D60 | 7F E3 FB 78 */	mr r3, r31
/* 813C2D64 | 48 00 09 75 */	bl check_network__Q33ipl5scene17MailAddressSelectFv
/* 813C2D68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2D6C | 41 82 00 7C */	beq .L_813C2DE8
/* 813C2D70 | 7F A3 EB 78 */	mr r3, r29
/* 813C2D74 | 38 80 00 0C */	li r4, 0xc
/* 813C2D78 | 4B FD 9D E1 */	bl iplButton_8139CB58
/* 813C2D7C | 7F A3 EB 78 */	mr r3, r29
/* 813C2D80 | 38 80 00 01 */	li r4, 0x1
/* 813C2D84 | 38 A0 00 24 */	li r5, 0x24
/* 813C2D88 | 4B FD A6 D5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C2D8C | 7F A3 EB 78 */	mr r3, r29
/* 813C2D90 | 38 80 00 0B */	li r4, 0xb
/* 813C2D94 | 4B FD A6 95 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C2D98 | 7F E3 FB 78 */	mr r3, r31
/* 813C2D9C | 7F E5 FB 78 */	mr r5, r31
/* 813C2DA0 | 38 80 00 0B */	li r4, 0xb
/* 813C2DA4 | 38 C0 00 00 */	li r6, 0x0
/* 813C2DA8 | 38 E0 00 00 */	li r7, 0x0
/* 813C2DAC | 48 04 70 DD */	bl fn_81409E88
/* 813C2DB0 | 7F A3 EB 78 */	mr r3, r29
/* 813C2DB4 | 38 80 00 00 */	li r4, 0x0
/* 813C2DB8 | 38 A0 00 00 */	li r5, 0x0
/* 813C2DBC | 4B FD 9B 81 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C2DC0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2DC4 | 38 80 00 08 */	li r4, 0x8
/* 813C2DC8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C2DCC | 48 14 F5 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C2DD0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C2DD4 | 4B F9 FA 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C2DD8 | 38 00 00 01 */	li r0, 0x1
/* 813C2DDC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813C2DE0 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813C2DE4 | 48 00 00 38 */	b .L_813C2E1C
.L_813C2DE8:
/* 813C2DE8 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813C2DEC | 38 03 00 01 */	addi r0, r3, 0x1
/* 813C2DF0 | 2C 00 01 2C */	cmpwi r0, 0x12c
/* 813C2DF4 | 90 1F 00 84 */	stw r0, 0x84(r31)
/* 813C2DF8 | 40 81 00 24 */	ble .L_813C2E1C
/* 813C2DFC | 38 00 00 00 */	li r0, 0x0
/* 813C2E00 | 38 80 01 C6 */	li r4, 0x1c6
/* 813C2E04 | 90 1F 00 84 */	stw r0, 0x84(r31)
/* 813C2E08 | 38 A0 00 2E */	li r5, 0x2e
/* 813C2E0C | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813C2E10 | 4B F8 38 E9 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813C2E14 | 38 00 00 07 */	li r0, 0x7
/* 813C2E18 | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_813C2E1C:
/* 813C2E1C | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813C2E20 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813C2E24 | 38 03 FF F6 */	subi r0, r3, 0xa
/* 813C2E28 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C2E2C | 54 03 D9 7E */	srwi r3, r0, 5
/* 813C2E30 | 48 23 66 E5 */	bl _restgpr_29
/* 813C2E34 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813C2E38 | 7C 08 03 A6 */	mtlr r0
/* 813C2E3C | 38 21 00 70 */	addi r1, r1, 0x70
/* 813C2E40 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene17MailAddressSelectFv

# .text:0xA2C | 0x813C2E44 | size: 0x8C
# ipl::scene::MailAddressSelect::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene17MailAddressSelectFv, global
/* 813C2E44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2E48 | 7C 08 02 A6 */	mflr r0
/* 813C2E4C | 38 80 00 05 */	li r4, 0x5
/* 813C2E50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2E54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2E58 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C2E5C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C2E60 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C2E64 | 7C 7E 1B 78 */	mr r30, r3
/* 813C2E68 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2E6C | 48 04 82 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C2E70 | 38 80 00 00 */	li r4, 0x0
/* 813C2E74 | 38 A0 00 00 */	li r5, 0x0
/* 813C2E78 | 4B FD 9A C5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C2E7C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813C2E80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2E84 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C2E88 | 7D 89 03 A6 */	mtctr r12
/* 813C2E8C | 4E 80 04 21 */	bctrl
/* 813C2E90 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C2E94 | 40 82 00 24 */	bne .L_813C2EB8
/* 813C2E98 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C2E9C | 38 80 00 01 */	li r4, 0x1
/* 813C2EA0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C2EA4 | 48 14 F4 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C2EA8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C2EAC | 4B F9 F9 C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C2EB0 | 38 00 00 01 */	li r0, 0x1
/* 813C2EB4 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813C2EB8:
/* 813C2EB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2EBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C2EC0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C2EC4 | 7C 08 03 A6 */	mtlr r0
/* 813C2EC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C2ECC | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene17MailAddressSelectFv

# .text:0xAB8 | 0x813C2ED0 | size: 0x94
# ipl::scene::MailAddressSelect::calcFadeout()
.fn calcFadeout__Q33ipl5scene17MailAddressSelectFv, global
/* 813C2ED0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2ED4 | 7C 08 02 A6 */	mflr r0
/* 813C2ED8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2EDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2EE0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C2EE4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C2EE8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C2EEC | 7C 7E 1B 78 */	mr r30, r3
/* 813C2EF0 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813C2EF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2EF8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C2EFC | 7D 89 03 A6 */	mtctr r12
/* 813C2F00 | 4E 80 04 21 */	bctrl
/* 813C2F04 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C2F08 | 40 82 00 28 */	bne .L_813C2F30
/* 813C2F0C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C2F10 | 38 80 00 01 */	li r4, 0x1
/* 813C2F14 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C2F18 | 48 14 F4 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C2F1C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C2F20 | 38 63 FF FF */	subi r3, r3, 0x1
/* 813C2F24 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813C2F28 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813C2F2C | 48 00 00 20 */	b .L_813C2F4C
.L_813C2F30:
/* 813C2F30 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813C2F34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2F38 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C2F3C | 7D 89 03 A6 */	mtctr r12
/* 813C2F40 | 4E 80 04 21 */	bctrl
/* 813C2F44 | 7C 60 00 34 */	cntlzw r0, r3
/* 813C2F48 | 54 03 D9 7E */	srwi r3, r0, 5
.L_813C2F4C:
/* 813C2F4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2F50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C2F54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C2F58 | 7C 08 03 A6 */	mtlr r0
/* 813C2F5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C2F60 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene17MailAddressSelectFv

# .text:0xB4C | 0x813C2F64 | size: 0x4
# ipl::scene::MailAddressSelect::destroy()
.fn destroy__Q33ipl5scene17MailAddressSelectFv, global
/* 813C2F64 | 4B F7 0D 88 */	b startReceiveSchedule__Q23ipl6SystemFv
.endfn destroy__Q33ipl5scene17MailAddressSelectFv

# .text:0xB50 | 0x813C2F68 | size: 0x50
# ipl::scene::MailAddressSelect::draw()
.fn draw__Q33ipl5scene17MailAddressSelectFv, global
/* 813C2F68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2F6C | 7C 08 02 A6 */	mflr r0
/* 813C2F70 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C2F74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2F78 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C2F7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2F80 | 7C 7F 1B 78 */	mr r31, r3
/* 813C2F84 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813C2F88 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813C2F8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C2F90 | 40 82 00 14 */	bne .L_813C2FA4
/* 813C2F94 | 38 60 00 00 */	li r3, 0x0
/* 813C2F98 | 4B F9 FA D5 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813C2F9C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C2FA0 | 4B FA 77 FD */	bl draw__Q33ipl6layout6ObjectFv
.L_813C2FA4:
/* 813C2FA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2FA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C2FAC | 7C 08 03 A6 */	mtlr r0
/* 813C2FB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C2FB4 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene17MailAddressSelectFv

# .text:0xBA0 | 0x813C2FB8 | size: 0xA4
# ipl::scene::MailAddressSelect::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene17MailAddressSelectFPCcPQ33ipl10controller9Interface, global
/* 813C2FB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C2FBC | 7C 08 02 A6 */	mflr r0
/* 813C2FC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C2FC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C2FC8 | 48 23 64 FD */	bl _savegpr_28
/* 813C2FCC | 7C 7C 1B 78 */	mr r28, r3
/* 813C2FD0 | 7C BD 2B 78 */	mr r29, r5
/* 813C2FD4 | 48 00 03 A5 */	bl get_button_no__Q33ipl5scene17MailAddressSelectFPCc
/* 813C2FD8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813C2FDC | 7C 7E 1B 78 */	mr r30, r3
/* 813C2FE0 | 41 82 00 64 */	beq .L_813C3044
/* 813C2FE4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813C2FE8 | 7F FC 02 14 */	add r31, r28, r0
/* 813C2FEC | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813C2FF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2FF4 | 40 82 00 44 */	bne .L_813C3038
/* 813C2FF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C2FFC | 3C 80 81 65 */	lis r4, lbl_81650B14@ha
/* 813C3000 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C3004 | 38 84 0B 14 */	addi r4, r4, lbl_81650B14@l
/* 813C3008 | 4B FA 84 65 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C300C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813C3010 | 41 82 00 1C */	beq .L_813C302C
/* 813C3014 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813C3018 | 7F A3 EB 78 */	mr r3, r29
/* 813C301C | 38 80 00 00 */	li r4, 0x0
/* 813C3020 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813C3024 | 7D 89 03 A6 */	mtctr r12
/* 813C3028 | 4E 80 04 21 */	bctrl
.L_813C302C:
/* 813C302C | 7F 83 E3 78 */	mr r3, r28
/* 813C3030 | 7F C4 F3 78 */	mr r4, r30
/* 813C3034 | 48 00 02 35 */	bl start_focusin_anm__Q33ipl5scene17MailAddressSelectFi
.L_813C3038:
/* 813C3038 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813C303C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813C3040 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813C3044:
/* 813C3044 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3048 | 48 23 64 C9 */	bl _restgpr_28
/* 813C304C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C3050 | 7C 08 03 A6 */	mtlr r0
/* 813C3054 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C3058 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene17MailAddressSelectFPCcPQ33ipl10controller9Interface

# .text:0xC44 | 0x813C305C | size: 0x68
# ipl::scene::MailAddressSelect::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene17MailAddressSelectFPCc, global
/* 813C305C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C3060 | 7C 08 02 A6 */	mflr r0
/* 813C3064 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C3068 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C306C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C3070 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3074 | 48 00 03 05 */	bl get_button_no__Q33ipl5scene17MailAddressSelectFPCc
/* 813C3078 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813C307C | 7C 64 1B 78 */	mr r4, r3
/* 813C3080 | 41 82 00 2C */	beq .L_813C30AC
/* 813C3084 | 54 60 10 3A */	slwi r0, r3, 2
/* 813C3088 | 7F FE 02 14 */	add r31, r30, r0
/* 813C308C | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813C3090 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C3094 | 40 82 00 0C */	bne .L_813C30A0
/* 813C3098 | 7F C3 F3 78 */	mr r3, r30
/* 813C309C | 48 00 02 55 */	bl start_focusout_anm__Q33ipl5scene17MailAddressSelectFi
.L_813C30A0:
/* 813C30A0 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813C30A4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813C30A8 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813C30AC:
/* 813C30AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C30B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C30B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C30B8 | 7C 08 03 A6 */	mtlr r0
/* 813C30BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C30C0 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene17MailAddressSelectFPCc

# .text:0xCAC | 0x813C30C4 | size: 0x1A4
# ipl::scene::MailAddressSelect::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene17MailAddressSelectFPCc, global
/* 813C30C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C30C8 | 7C 08 02 A6 */	mflr r0
/* 813C30CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C30D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C30D4 | 48 23 63 F1 */	bl _savegpr_28
/* 813C30D8 | 7C 7C 1B 78 */	mr r28, r3
/* 813C30DC | 48 00 02 9D */	bl get_button_no__Q33ipl5scene17MailAddressSelectFPCc
/* 813C30E0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C30E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C30E8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C30EC | 3B A0 FF FF */	li r29, -0x1
/* 813C30F0 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813C30F4 | 38 80 00 05 */	li r4, 0x5
/* 813C30F8 | 48 04 80 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C30FC | 80 1C 00 80 */	lwz r0, 0x80(r28)
/* 813C3100 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3104 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C3108 | 40 82 01 48 */	bne .L_813C3250
/* 813C310C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813C3110 | 41 82 00 88 */	beq .L_813C3198
/* 813C3114 | 40 80 00 10 */	bge .L_813C3124
/* 813C3118 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C311C | 40 80 00 14 */	bge .L_813C3130
/* 813C3120 | 48 00 00 F4 */	b .L_813C3214
.L_813C3124:
/* 813C3124 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 813C3128 | 40 80 00 EC */	bge .L_813C3214
/* 813C312C | 48 00 00 94 */	b .L_813C31C0
.L_813C3130:
/* 813C3130 | 3B A0 00 04 */	li r29, 0x4
/* 813C3134 | 38 80 00 0C */	li r4, 0xc
/* 813C3138 | 4B FD A2 F1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C313C | 7F C3 F3 78 */	mr r3, r30
/* 813C3140 | 38 80 00 00 */	li r4, 0x0
/* 813C3144 | 38 A0 00 4F */	li r5, 0x4f
/* 813C3148 | 4B FD A3 15 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C314C | 7F C3 F3 78 */	mr r3, r30
/* 813C3150 | 38 80 00 01 */	li r4, 0x1
/* 813C3154 | 38 A0 00 24 */	li r5, 0x24
/* 813C3158 | 4B FD A3 05 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C315C | 7F C3 F3 78 */	mr r3, r30
/* 813C3160 | 38 80 00 0F */	li r4, 0xf
/* 813C3164 | 4B FD A2 C5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C3168 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C316C | 3C 80 81 65 */	lis r4, lbl_81650B2A@ha
/* 813C3170 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C3174 | 38 84 0B 2A */	addi r4, r4, lbl_81650B2A@l
/* 813C3178 | 4B FA 82 F5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C317C | 7F 83 E3 78 */	mr r3, r28
/* 813C3180 | 7F 85 E3 78 */	mr r5, r28
/* 813C3184 | 38 80 00 0A */	li r4, 0xa
/* 813C3188 | 38 C0 00 00 */	li r6, 0x0
/* 813C318C | 38 E0 00 00 */	li r7, 0x0
/* 813C3190 | 48 04 6C F9 */	bl fn_81409E88
/* 813C3194 | 48 00 00 80 */	b .L_813C3214
.L_813C3198:
/* 813C3198 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C319C | 3C 80 81 65 */	lis r4, lbl_81650B2A@ha
/* 813C31A0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C31A4 | 38 84 0B 2A */	addi r4, r4, lbl_81650B2A@l
/* 813C31A8 | 4B FA 82 C5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C31AC | 38 60 00 00 */	li r3, 0x0
/* 813C31B0 | 38 00 00 09 */	li r0, 0x9
/* 813C31B4 | 90 7C 00 84 */	stw r3, 0x84(r28)
/* 813C31B8 | 90 1C 00 80 */	stw r0, 0x80(r28)
/* 813C31BC | 48 00 00 58 */	b .L_813C3214
.L_813C31C0:
/* 813C31C0 | 38 80 00 0C */	li r4, 0xc
/* 813C31C4 | 4B FD 99 95 */	bl iplButton_8139CB58
/* 813C31C8 | 7F C3 F3 78 */	mr r3, r30
/* 813C31CC | 38 80 00 01 */	li r4, 0x1
/* 813C31D0 | 38 A0 00 29 */	li r5, 0x29
/* 813C31D4 | 4B FD A2 89 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C31D8 | 7F C3 F3 78 */	mr r3, r30
/* 813C31DC | 38 80 00 0F */	li r4, 0xf
/* 813C31E0 | 4B FD A2 49 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C31E4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C31E8 | 3C 80 81 65 */	lis r4, lbl_81650B2A@ha
/* 813C31EC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C31F0 | 3B A0 00 0C */	li r29, 0xc
/* 813C31F4 | 38 84 0B 2A */	addi r4, r4, lbl_81650B2A@l
/* 813C31F8 | 4B FA 82 75 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C31FC | 7F 83 E3 78 */	mr r3, r28
/* 813C3200 | 7F 85 E3 78 */	mr r5, r28
/* 813C3204 | 38 80 00 14 */	li r4, 0x14
/* 813C3208 | 38 C0 00 00 */	li r6, 0x0
/* 813C320C | 38 E0 00 00 */	li r7, 0x0
/* 813C3210 | 48 04 6C 79 */	bl fn_81409E88
.L_813C3214:
/* 813C3214 | 2C 1D FF FF */	cmpwi r29, -0x1
/* 813C3218 | 41 82 00 38 */	beq .L_813C3250
/* 813C321C | 7F C3 F3 78 */	mr r3, r30
/* 813C3220 | 38 80 00 00 */	li r4, 0x0
/* 813C3224 | 38 A0 00 00 */	li r5, 0x0
/* 813C3228 | 4B FD 97 15 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C322C | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 813C3230 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 813C3234 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C3238 | 48 14 F0 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C323C | 7C 7E 1B 78 */	mr r30, r3
/* 813C3240 | 4B F9 F6 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C3244 | 38 00 00 01 */	li r0, 0x1
/* 813C3248 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813C324C | 90 1C 00 80 */	stw r0, 0x80(r28)
.L_813C3250:
/* 813C3250 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3254 | 48 23 62 BD */	bl _restgpr_28
/* 813C3258 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C325C | 7C 08 03 A6 */	mtlr r0
/* 813C3260 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C3264 | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene17MailAddressSelectFPCc

# .text:0xE50 | 0x813C3268 | size: 0x88
# ipl::scene::MailAddressSelect::start_focusin_anm(int)
.fn start_focusin_anm__Q33ipl5scene17MailAddressSelectFi, global
/* 813C3268 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C326C | 7C 08 02 A6 */	mflr r0
/* 813C3270 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813C3274 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C3278 | 38 00 FF FF */	li r0, -0x1
/* 813C327C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C3280 | 41 82 00 28 */	beq .L_813C32A8
/* 813C3284 | 40 80 00 10 */	bge .L_813C3294
/* 813C3288 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C328C | 40 80 00 14 */	bge .L_813C32A0
/* 813C3290 | 48 00 00 24 */	b .L_813C32B4
.L_813C3294:
/* 813C3294 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813C3298 | 40 80 00 1C */	bge .L_813C32B4
/* 813C329C | 48 00 00 14 */	b .L_813C32B0
.L_813C32A0:
/* 813C32A0 | 38 00 00 02 */	li r0, 0x2
/* 813C32A4 | 48 00 00 10 */	b .L_813C32B4
.L_813C32A8:
/* 813C32A8 | 38 00 00 06 */	li r0, 0x6
/* 813C32AC | 48 00 00 08 */	b .L_813C32B4
.L_813C32B0:
/* 813C32B0 | 38 00 00 0A */	li r0, 0xa
.L_813C32B4:
/* 813C32B4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813C32B8 | 41 82 00 24 */	beq .L_813C32DC
/* 813C32BC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C32C0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813C32C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C32C8 | 48 14 F0 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C32CC | 7C 7F 1B 78 */	mr r31, r3
/* 813C32D0 | 4B F9 F5 A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C32D4 | 38 00 00 01 */	li r0, 0x1
/* 813C32D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813C32DC:
/* 813C32DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C32E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C32E4 | 7C 08 03 A6 */	mtlr r0
/* 813C32E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C32EC | 4E 80 00 20 */	blr
.endfn start_focusin_anm__Q33ipl5scene17MailAddressSelectFi

# .text:0xED8 | 0x813C32F0 | size: 0x88
# ipl::scene::MailAddressSelect::start_focusout_anm(int)
.fn start_focusout_anm__Q33ipl5scene17MailAddressSelectFi, global
/* 813C32F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C32F4 | 7C 08 02 A6 */	mflr r0
/* 813C32F8 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813C32FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C3300 | 38 00 FF FF */	li r0, -0x1
/* 813C3304 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C3308 | 41 82 00 28 */	beq .L_813C3330
/* 813C330C | 40 80 00 10 */	bge .L_813C331C
/* 813C3310 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C3314 | 40 80 00 14 */	bge .L_813C3328
/* 813C3318 | 48 00 00 24 */	b .L_813C333C
.L_813C331C:
/* 813C331C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813C3320 | 40 80 00 1C */	bge .L_813C333C
/* 813C3324 | 48 00 00 14 */	b .L_813C3338
.L_813C3328:
/* 813C3328 | 38 00 00 03 */	li r0, 0x3
/* 813C332C | 48 00 00 10 */	b .L_813C333C
.L_813C3330:
/* 813C3330 | 38 00 00 07 */	li r0, 0x7
/* 813C3334 | 48 00 00 08 */	b .L_813C333C
.L_813C3338:
/* 813C3338 | 38 00 00 0B */	li r0, 0xb
.L_813C333C:
/* 813C333C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813C3340 | 41 82 00 24 */	beq .L_813C3364
/* 813C3344 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C3348 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813C334C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C3350 | 48 14 EF C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C3354 | 7C 7F 1B 78 */	mr r31, r3
/* 813C3358 | 4B F9 F5 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C335C | 38 00 00 01 */	li r0, 0x1
/* 813C3360 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813C3364:
/* 813C3364 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C3368 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C336C | 7C 08 03 A6 */	mtlr r0
/* 813C3370 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C3374 | 4E 80 00 20 */	blr
.endfn start_focusout_anm__Q33ipl5scene17MailAddressSelectFi

# .text:0xF60 | 0x813C3378 | size: 0x74
# ipl::scene::MailAddressSelect::get_button_no(const char*)
.fn get_button_no__Q33ipl5scene17MailAddressSelectFPCc, global
/* 813C3378 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C337C | 7C 08 02 A6 */	mflr r0
/* 813C3380 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C3384 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3388 | 48 23 61 39 */	bl _savegpr_27
/* 813C338C | 3F C0 81 65 */	lis r30, lbl_816508F0@ha
/* 813C3390 | 7C 9B 23 78 */	mr r27, r4
/* 813C3394 | 3B DE 08 F0 */	addi r30, r30, lbl_816508F0@l
/* 813C3398 | 3B A0 FF FF */	li r29, -0x1
/* 813C339C | 3B 80 00 00 */	li r28, 0x0
/* 813C33A0 | 3B E0 00 00 */	li r31, 0x0
.L_813C33A4:
/* 813C33A4 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813C33A8 | 7F 64 DB 78 */	mr r4, r27
/* 813C33AC | 48 23 F0 D5 */	bl strcmp
/* 813C33B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C33B4 | 40 82 00 0C */	bne .L_813C33C0
/* 813C33B8 | 7F 9D E3 78 */	mr r29, r28
/* 813C33BC | 48 00 00 14 */	b .L_813C33D0
.L_813C33C0:
/* 813C33C0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813C33C4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813C33C8 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813C33CC | 41 80 FF D8 */	blt .L_813C33A4
.L_813C33D0:
/* 813C33D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C33D4 | 7F A3 EB 78 */	mr r3, r29
/* 813C33D8 | 48 23 61 35 */	bl _restgpr_27
/* 813C33DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C33E0 | 7C 08 03 A6 */	mtlr r0
/* 813C33E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C33E8 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene17MailAddressSelectFPCc

# .text:0xFD4 | 0x813C33EC | size: 0x6C
# ipl::scene::MailAddressSelect::finishMemo(bool)
.fn finishMemo__Q33ipl5scene17MailAddressSelectFb, global
/* 813C33EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C33F0 | 7C 08 02 A6 */	mflr r0
/* 813C33F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C33F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C33FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C3400 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C3404 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3408 | 41 82 00 10 */	beq .L_813C3418
/* 813C340C | 38 00 00 02 */	li r0, 0x2
/* 813C3410 | 90 03 00 80 */	stw r0, 0x80(r3)
/* 813C3414 | 48 00 00 2C */	b .L_813C3440
.L_813C3418:
/* 813C3418 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C341C | 38 80 00 05 */	li r4, 0x5
/* 813C3420 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C3424 | 48 14 EE F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C3428 | 7C 7F 1B 78 */	mr r31, r3
/* 813C342C | 4B F9 F4 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C3430 | 38 60 00 01 */	li r3, 0x1
/* 813C3434 | 38 00 00 03 */	li r0, 0x3
/* 813C3438 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813C343C | 90 1E 00 80 */	stw r0, 0x80(r30)
.L_813C3440:
/* 813C3440 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C3444 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C3448 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C344C | 7C 08 03 A6 */	mtlr r0
/* 813C3450 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C3454 | 4E 80 00 20 */	blr
.endfn finishMemo__Q33ipl5scene17MailAddressSelectFb

# .text:0x1040 | 0x813C3458 | size: 0x6C
# ipl::scene::MailAddressSelect::finishLetter(bool)
.fn finishLetter__Q33ipl5scene17MailAddressSelectFb, global
/* 813C3458 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C345C | 7C 08 02 A6 */	mflr r0
/* 813C3460 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C3464 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C3468 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C346C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C3470 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3474 | 41 82 00 10 */	beq .L_813C3484
/* 813C3478 | 38 00 00 02 */	li r0, 0x2
/* 813C347C | 90 03 00 80 */	stw r0, 0x80(r3)
/* 813C3480 | 48 00 00 2C */	b .L_813C34AC
.L_813C3484:
/* 813C3484 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C3488 | 38 80 00 09 */	li r4, 0x9
/* 813C348C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813C3490 | 48 14 EE 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C3494 | 7C 7F 1B 78 */	mr r31, r3
/* 813C3498 | 4B F9 F3 D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C349C | 38 60 00 01 */	li r3, 0x1
/* 813C34A0 | 38 00 00 03 */	li r0, 0x3
/* 813C34A4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813C34A8 | 90 1E 00 80 */	stw r0, 0x80(r30)
.L_813C34AC:
/* 813C34AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C34B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C34B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C34B8 | 7C 08 03 A6 */	mtlr r0
/* 813C34BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C34C0 | 4E 80 00 20 */	blr
.endfn finishLetter__Q33ipl5scene17MailAddressSelectFb

# .text:0x10AC | 0x813C34C4 | size: 0x58
# ipl::scene::MailAddressSelect::finishAddress()
.fn finishAddress__Q33ipl5scene17MailAddressSelectFv, global
/* 813C34C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C34C8 | 7C 08 02 A6 */	mflr r0
/* 813C34CC | 38 80 00 0D */	li r4, 0xd
/* 813C34D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C34D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C34D8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C34DC | 7C 7E 1B 78 */	mr r30, r3
/* 813C34E0 | 80 A3 00 64 */	lwz r5, 0x64(r3)
/* 813C34E4 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813C34E8 | 48 14 EE 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C34EC | 7C 7F 1B 78 */	mr r31, r3
/* 813C34F0 | 4B F9 F3 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C34F4 | 38 60 00 01 */	li r3, 0x1
/* 813C34F8 | 38 00 00 03 */	li r0, 0x3
/* 813C34FC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813C3500 | 90 1E 00 80 */	stw r0, 0x80(r30)
/* 813C3504 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C3508 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C350C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C3510 | 7C 08 03 A6 */	mtlr r0
/* 813C3514 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C3518 | 4E 80 00 20 */	blr
.endfn finishAddress__Q33ipl5scene17MailAddressSelectFv

# .text:0x1104 | 0x813C351C | size: 0xCC
# ipl::scene::MailAddressSelect::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene17MailAddressSelectFPCcUl, global
/* 813C351C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C3520 | 7C 08 02 A6 */	mflr r0
/* 813C3524 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C3528 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C352C | 48 23 5F 9D */	bl _savegpr_29
/* 813C3530 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C3534 | 7C BD 2B 78 */	mr r29, r5
/* 813C3538 | 38 A0 00 01 */	li r5, 0x1
/* 813C353C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C3540 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3544 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C3548 | 7D 89 03 A6 */	mtctr r12
/* 813C354C | 4E 80 04 21 */	bctrl
/* 813C3550 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3554 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3558 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 813C355C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C3560 | 7D 89 03 A6 */	mtctr r12
/* 813C3564 | 4E 80 04 21 */	bctrl
/* 813C3568 | 48 00 00 18 */	b .L_813C3580
.L_813C356C:
/* 813C356C | 7C 03 F8 40 */	cmplw r3, r31
/* 813C3570 | 40 82 00 0C */	bne .L_813C357C
/* 813C3574 | 38 00 00 01 */	li r0, 0x1
/* 813C3578 | 48 00 00 14 */	b .L_813C358C
.L_813C357C:
/* 813C357C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813C3580:
/* 813C3580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3584 | 40 82 FF E8 */	bne .L_813C356C
/* 813C3588 | 38 00 00 00 */	li r0, 0x0
.L_813C358C:
/* 813C358C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C3590 | 41 82 00 08 */	beq .L_813C3598
/* 813C3594 | 48 00 00 08 */	b .L_813C359C
.L_813C3598:
/* 813C3598 | 3B C0 00 00 */	li r30, 0x0
.L_813C359C:
/* 813C359C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C35A0 | 7F A4 EB 78 */	mr r4, r29
/* 813C35A4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C35A8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813C35AC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C35B0 | 4B F7 B2 0D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C35B4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C35B8 | 7C 64 1B 78 */	mr r4, r3
/* 813C35BC | 7F C3 F3 78 */	mr r3, r30
/* 813C35C0 | 38 A0 00 00 */	li r5, 0x0
/* 813C35C4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813C35C8 | 7D 89 03 A6 */	mtctr r12
/* 813C35CC | 4E 80 04 21 */	bctrl
/* 813C35D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C35D4 | 48 23 5F 41 */	bl _restgpr_29
/* 813C35D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C35DC | 7C 08 03 A6 */	mtlr r0
/* 813C35E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C35E4 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene17MailAddressSelectFPCcUl

# .text:0x11D0 | 0x813C35E8 | size: 0xF0
# ipl::scene::MailAddressSelect::set_err_msg(wchar_t*, unsigned long, unsigned long, long)
.fn set_err_msg__Q33ipl5scene17MailAddressSelectFPwUlUll, global
/* 813C35E8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813C35EC | 7C 08 02 A6 */	mflr r0
/* 813C35F0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813C35F4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813C35F8 | 48 23 5E C5 */	bl _savegpr_26
/* 813C35FC | 7C 9A 23 78 */	mr r26, r4
/* 813C3600 | 7C BB 2B 78 */	mr r27, r5
/* 813C3604 | 7C DC 33 78 */	mr r28, r6
/* 813C3608 | 7C FD 3B 78 */	mr r29, r7
/* 813C360C | 7F 43 D3 78 */	mr r3, r26
/* 813C3610 | 54 A5 08 3C */	slwi r5, r5, 1
/* 813C3614 | 38 80 00 00 */	li r4, 0x0
/* 813C3618 | 4B F6 CD 1D */	bl memset
/* 813C361C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C3620 | 38 80 01 90 */	li r4, 0x190
/* 813C3624 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C3628 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813C362C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C3630 | 4B F7 B1 8D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C3634 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3638 | 7F 43 D3 78 */	mr r3, r26
/* 813C363C | 48 24 50 71 */	bl fn_816086AC
/* 813C3640 | 7C A3 D8 50 */	subf r5, r3, r27
/* 813C3644 | 7F 43 D3 78 */	mr r3, r26
/* 813C3648 | 7F C4 F3 78 */	mr r4, r30
/* 813C364C | 48 24 51 09 */	bl fn_81608754
/* 813C3650 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C3654 | 38 80 00 00 */	li r4, 0x0
/* 813C3658 | 38 A0 00 40 */	li r5, 0x40
/* 813C365C | 4B F6 CC D9 */	bl memset
/* 813C3660 | 3C A0 81 65 */	lis r5, lbl_81650B3A@ha
/* 813C3664 | 7F A6 EB 78 */	mr r6, r29
/* 813C3668 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C366C | 38 80 00 20 */	li r4, 0x20
/* 813C3670 | 38 A5 0B 3A */	addi r5, r5, lbl_81650B3A@l
/* 813C3674 | 4C C6 31 82 */	crclr cr1eq
/* 813C3678 | 48 24 4F 59 */	bl swprintf
/* 813C367C | 7F 43 D3 78 */	mr r3, r26
/* 813C3680 | 48 24 50 2D */	bl fn_816086AC
/* 813C3684 | 7C A3 D8 50 */	subf r5, r3, r27
/* 813C3688 | 7F 43 D3 78 */	mr r3, r26
/* 813C368C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C3690 | 48 24 50 C5 */	bl fn_81608754
/* 813C3694 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813C3698 | 7F 84 E3 78 */	mr r4, r28
/* 813C369C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C36A0 | 4B F7 B1 1D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C36A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C36A8 | 7F 43 D3 78 */	mr r3, r26
/* 813C36AC | 48 24 50 01 */	bl fn_816086AC
/* 813C36B0 | 7C A3 D8 50 */	subf r5, r3, r27
/* 813C36B4 | 7F 43 D3 78 */	mr r3, r26
/* 813C36B8 | 7F C4 F3 78 */	mr r4, r30
/* 813C36BC | 48 24 50 99 */	bl fn_81608754
/* 813C36C0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813C36C4 | 48 23 5E 45 */	bl _restgpr_26
/* 813C36C8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813C36CC | 7C 08 03 A6 */	mtlr r0
/* 813C36D0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813C36D4 | 4E 80 00 20 */	blr
.endfn set_err_msg__Q33ipl5scene17MailAddressSelectFPwUlUll

# .text:0x12C0 | 0x813C36D8 | size: 0x234
# ipl::scene::MailAddressSelect::check_network()
.fn check_network__Q33ipl5scene17MailAddressSelectFv, global
/* 813C36D8 | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 813C36DC | 7C 08 02 A6 */	mflr r0
/* 813C36E0 | 90 01 02 24 */	stw r0, 0x224(r1)
/* 813C36E4 | 39 61 02 20 */	addi r11, r1, 0x220
/* 813C36E8 | 48 23 5D E1 */	bl _savegpr_29
/* 813C36EC | 7C 7E 1B 78 */	mr r30, r3
/* 813C36F0 | 3B E0 00 00 */	li r31, 0x0
/* 813C36F4 | 48 03 81 F9 */	bl fn_813FB8EC
/* 813C36F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C36FC | 40 82 00 30 */	bne .L_813C372C
/* 813C3700 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C3704 | 38 80 01 44 */	li r4, 0x144
/* 813C3708 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C370C | 38 A0 01 46 */	li r5, 0x146
/* 813C3710 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C3714 | 38 C0 00 25 */	li r6, 0x25
/* 813C3718 | 38 E0 00 00 */	li r7, 0x0
/* 813C371C | 4B F8 33 B9 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813C3720 | 38 00 00 04 */	li r0, 0x4
/* 813C3724 | 90 1E 00 80 */	stw r0, 0x80(r30)
/* 813C3728 | 48 00 01 C8 */	b .L_813C38F0
.L_813C372C:
/* 813C372C | 48 1A 70 F5 */	bl fn_8156A820
/* 813C3730 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 813C3734 | 40 82 00 30 */	bne .L_813C3764
/* 813C3738 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C373C | 38 80 01 7E */	li r4, 0x17e
/* 813C3740 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C3744 | 38 A0 01 46 */	li r5, 0x146
/* 813C3748 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C374C | 38 C0 00 25 */	li r6, 0x25
/* 813C3750 | 38 E0 00 00 */	li r7, 0x0
/* 813C3754 | 4B F8 33 81 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813C3758 | 38 00 00 08 */	li r0, 0x8
/* 813C375C | 90 1E 00 80 */	stw r0, 0x80(r30)
/* 813C3760 | 48 00 01 90 */	b .L_813C38F0
.L_813C3764:
/* 813C3764 | 7F C3 F3 78 */	mr r3, r30
/* 813C3768 | 48 00 01 A5 */	bl is_parental_restriction__Q33ipl5scene17MailAddressSelectCFv
/* 813C376C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3770 | 41 82 00 28 */	beq .L_813C3798
/* 813C3774 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C3778 | 38 80 01 4C */	li r4, 0x14c
/* 813C377C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C3780 | 38 A0 00 2E */	li r5, 0x2e
/* 813C3784 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C3788 | 4B F8 2F 71 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813C378C | 38 00 00 07 */	li r0, 0x7
/* 813C3790 | 90 1E 00 80 */	stw r0, 0x80(r30)
/* 813C3794 | 48 00 01 5C */	b .L_813C38F0
.L_813C3798:
/* 813C3798 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C379C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C37A0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C37A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C37A8 | 41 82 00 0C */	beq .L_813C37B4
/* 813C37AC | 38 60 00 00 */	li r3, 0x0
/* 813C37B0 | 48 00 00 08 */	b .L_813C37B8
.L_813C37B4:
/* 813C37B4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C37B8:
/* 813C37B8 | 4B F7 E2 89 */	bl open__Q33ipl5nwc247ManagerFv
/* 813C37BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C37C0 | 41 82 01 30 */	beq .L_813C38F0
/* 813C37C4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C37C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C37CC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C37D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C37D4 | 41 82 00 0C */	beq .L_813C37E0
/* 813C37D8 | 38 60 00 00 */	li r3, 0x0
/* 813C37DC | 48 00 00 08 */	b .L_813C37E4
.L_813C37E0:
/* 813C37E0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C37E4:
/* 813C37E4 | 38 80 00 01 */	li r4, 0x1
/* 813C37E8 | 4B F7 EE 39 */	bl check__Q33ipl5nwc247ManagerFUl
/* 813C37EC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C37F0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C37F4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C37F8 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813C37FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C3800 | 41 82 00 0C */	beq .L_813C380C
/* 813C3804 | 38 60 00 00 */	li r3, 0x0
/* 813C3808 | 48 00 00 08 */	b .L_813C3810
.L_813C380C:
/* 813C380C | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_813C3810:
/* 813C3810 | 4B F8 08 1D */	bl getErrCode__Q33ipl5nwc247ManagerFv
/* 813C3814 | 38 00 00 80 */	li r0, 0x80
/* 813C3818 | 7C 67 1B 78 */	mr r7, r3
/* 813C381C | 38 81 00 06 */	addi r4, r1, 0x6
/* 813C3820 | 38 60 00 00 */	li r3, 0x0
/* 813C3824 | 7C 09 03 A6 */	mtctr r0
.L_813C3828:
/* 813C3828 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813C382C | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 813C3830 | 42 00 FF F8 */	bdnz .L_813C3828
/* 813C3834 | 2C 1D FF E1 */	cmpwi r29, -0x1f
/* 813C3838 | 41 82 00 20 */	beq .L_813C3858
/* 813C383C | 40 80 00 10 */	bge .L_813C384C
/* 813C3840 | 2C 1D FF E0 */	cmpwi r29, -0x20
/* 813C3844 | 40 80 00 4C */	bge .L_813C3890
/* 813C3848 | 48 00 00 80 */	b .L_813C38C8
.L_813C384C:
/* 813C384C | 2C 1D FF FA */	cmpwi r29, -0x6
/* 813C3850 | 41 82 00 40 */	beq .L_813C3890
/* 813C3854 | 48 00 00 74 */	b .L_813C38C8
.L_813C3858:
/* 813C3858 | 7F C3 F3 78 */	mr r3, r30
/* 813C385C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C3860 | 38 A0 01 00 */	li r5, 0x100
/* 813C3864 | 38 C0 01 9A */	li r6, 0x19a
/* 813C3868 | 4B FF FD 81 */	bl set_err_msg__Q33ipl5scene17MailAddressSelectFPwUlUll
/* 813C386C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C3870 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C3874 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C3878 | 38 A0 00 2E */	li r5, 0x2e
/* 813C387C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C3880 | 4B F8 30 25 */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 813C3884 | 38 00 00 07 */	li r0, 0x7
/* 813C3888 | 90 1E 00 80 */	stw r0, 0x80(r30)
/* 813C388C | 48 00 00 40 */	b .L_813C38CC
.L_813C3890:
/* 813C3890 | 7F C3 F3 78 */	mr r3, r30
/* 813C3894 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C3898 | 38 A0 01 00 */	li r5, 0x100
/* 813C389C | 38 C0 01 C5 */	li r6, 0x1c5
/* 813C38A0 | 4B FF FD 49 */	bl set_err_msg__Q33ipl5scene17MailAddressSelectFPwUlUll
/* 813C38A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C38A8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C38AC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C38B0 | 38 A0 00 2E */	li r5, 0x2e
/* 813C38B4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C38B8 | 4B F8 2F ED */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 813C38BC | 38 00 00 07 */	li r0, 0x7
/* 813C38C0 | 90 1E 00 80 */	stw r0, 0x80(r30)
/* 813C38C4 | 48 00 00 08 */	b .L_813C38CC
.L_813C38C8:
/* 813C38C8 | 3B E0 00 01 */	li r31, 0x1
.L_813C38CC:
/* 813C38CC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C38D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C38D4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C38D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C38DC | 41 82 00 0C */	beq .L_813C38E8
/* 813C38E0 | 38 60 00 00 */	li r3, 0x0
/* 813C38E4 | 48 00 00 08 */	b .L_813C38EC
.L_813C38E8:
/* 813C38E8 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C38EC:
/* 813C38EC | 4B F7 E1 C9 */	bl close__Q33ipl5nwc247ManagerFv
.L_813C38F0:
/* 813C38F0 | 39 61 02 20 */	addi r11, r1, 0x220
/* 813C38F4 | 7F E3 FB 78 */	mr r3, r31
/* 813C38F8 | 48 23 5C 1D */	bl _restgpr_29
/* 813C38FC | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 813C3900 | 7C 08 03 A6 */	mtlr r0
/* 813C3904 | 38 21 02 20 */	addi r1, r1, 0x220
/* 813C3908 | 4E 80 00 20 */	blr
.endfn check_network__Q33ipl5scene17MailAddressSelectFv

# .text:0x14F4 | 0x813C390C | size: 0x68
# ipl::scene::MailAddressSelect::is_parental_restriction() const
.fn is_parental_restriction__Q33ipl5scene17MailAddressSelectCFv, global
/* 813C390C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813C3910 | 7C 08 02 A6 */	mflr r0
/* 813C3914 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813C3918 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C391C | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813C3920 | 48 1A 68 59 */	bl fn_8156A178
/* 813C3924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3928 | 38 60 00 00 */	li r3, 0x0
/* 813C392C | 41 82 00 14 */	beq .L_813C3940
/* 813C3930 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813C3934 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813C3938 | 41 82 00 08 */	beq .L_813C3940
/* 813C393C | 38 60 00 01 */	li r3, 0x1
.L_813C3940:
/* 813C3940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3944 | 3B E0 00 00 */	li r31, 0x0
/* 813C3948 | 41 82 00 14 */	beq .L_813C395C
/* 813C394C | 48 1A 6D 61 */	bl fn_8156A6AC
/* 813C3950 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 813C3954 | 41 82 00 08 */	beq .L_813C395C
/* 813C3958 | 3B E0 00 01 */	li r31, 0x1
.L_813C395C:
/* 813C395C | 7F E3 FB 78 */	mr r3, r31
/* 813C3960 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813C3964 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813C3968 | 7C 08 03 A6 */	mtlr r0
/* 813C396C | 38 21 00 60 */	addi r1, r1, 0x60
/* 813C3970 | 4E 80 00 20 */	blr
.endfn is_parental_restriction__Q33ipl5scene17MailAddressSelectCFv

# .text:0x155C | 0x813C3974 | size: 0x114
# ipl::scene::MailAddressSelect::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface, global
/* 813C3974 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C3978 | 7C 08 02 A6 */	mflr r0
/* 813C397C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C3980 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3984 | 48 23 5B 45 */	bl _savegpr_29
/* 813C3988 | 7C 7D 1B 78 */	mr r29, r3
/* 813C398C | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813C3990 | 7C BF 2B 78 */	mr r31, r5
/* 813C3994 | 7C DE 33 78 */	mr r30, r6
/* 813C3998 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C399C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813C39A0 | 7D 89 03 A6 */	mtctr r12
/* 813C39A4 | 4E 80 04 21 */	bctrl
/* 813C39A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C39AC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813C39B0 | 7D 89 03 A6 */	mtctr r12
/* 813C39B4 | 4E 80 04 21 */	bctrl
/* 813C39B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C39BC | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813C39C0 | 41 82 00 08 */	beq .L_813C39C8
/* 813C39C4 | 48 00 00 AC */	b .L_813C3A70
.L_813C39C8:
/* 813C39C8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C39CC | 3C 80 00 10 */	lis r4, 0x10
/* 813C39D0 | 7F C3 F3 78 */	mr r3, r30
/* 813C39D4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C39D8 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813C39DC | 7D 89 03 A6 */	mtctr r12
/* 813C39E0 | 4E 80 04 21 */	bctrl
/* 813C39E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C39E8 | 41 82 00 88 */	beq .L_813C3A70
/* 813C39EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C39F0 | 38 80 00 05 */	li r4, 0x5
/* 813C39F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C39F8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C39FC | 48 04 77 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C3A00 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813C3A04 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3A08 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813C3A0C | 7F E3 FB 78 */	mr r3, r31
/* 813C3A10 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 813C3A14 | 48 23 EA 6D */	bl strcmp
/* 813C3A18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3A1C | 40 82 00 54 */	bne .L_813C3A70
/* 813C3A20 | 7F C3 F3 78 */	mr r3, r30
/* 813C3A24 | 38 80 00 1B */	li r4, 0x1b
/* 813C3A28 | 4B FD 91 31 */	bl iplButton_8139CB58
/* 813C3A2C | 7F C3 F3 78 */	mr r3, r30
/* 813C3A30 | 38 80 00 0C */	li r4, 0xc
/* 813C3A34 | 4B FD 99 F5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C3A38 | 7F C3 F3 78 */	mr r3, r30
/* 813C3A3C | 38 80 00 0A */	li r4, 0xa
/* 813C3A40 | 4B FD 99 E9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C3A44 | 7F C3 F3 78 */	mr r3, r30
/* 813C3A48 | 38 80 00 00 */	li r4, 0x0
/* 813C3A4C | 38 A0 00 00 */	li r5, 0x0
/* 813C3A50 | 4B FD 8E ED */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C3A54 | 38 00 00 0A */	li r0, 0xa
/* 813C3A58 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C3A5C | 3C 80 81 65 */	lis r4, lbl_81650B46@ha
/* 813C3A60 | 90 1D 00 80 */	stw r0, 0x80(r29)
/* 813C3A64 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C3A68 | 38 84 0B 46 */	addi r4, r4, lbl_81650B46@l
/* 813C3A6C | 4B FA 7A 01 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813C3A70:
/* 813C3A70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3A74 | 48 23 5A A1 */	bl _restgpr_29
/* 813C3A78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C3A7C | 7C 08 03 A6 */	mtlr r0
/* 813C3A80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C3A84 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface

# .text:0x1670 | 0x813C3A88 | size: 0x5C
# ipl::scene::MailAddressSelect::reset_gui()
.fn reset_gui__Q33ipl5scene17MailAddressSelectFv, global
/* 813C3A88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C3A8C | 7C 08 02 A6 */	mflr r0
/* 813C3A90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C3A94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C3A98 | 7C 7F 1B 78 */	mr r31, r3
/* 813C3A9C | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 813C3AA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3AA4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C3AA8 | 7D 89 03 A6 */	mtctr r12
/* 813C3AAC | 4E 80 04 21 */	bctrl
/* 813C3AB0 | 38 00 00 03 */	li r0, 0x3
/* 813C3AB4 | 38 A0 00 00 */	li r5, 0x0
/* 813C3AB8 | 38 60 00 00 */	li r3, 0x0
/* 813C3ABC | 7C 09 03 A6 */	mtctr r0
.L_813C3AC0:
/* 813C3AC0 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813C3AC4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813C3AC8 | 90 A4 00 74 */	stw r5, 0x74(r4)
/* 813C3ACC | 42 00 FF F4 */	bdnz .L_813C3AC0
/* 813C3AD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C3AD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C3AD8 | 7C 08 03 A6 */	mtlr r0
/* 813C3ADC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C3AE0 | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene17MailAddressSelectFv

# .text:0x16CC | 0x813C3AE4 | size: 0xD8
# ipl::scene::MailAddressEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene16MailAddressEventFUlUlPv, global
/* 813C3AE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C3AE8 | 7C 08 02 A6 */	mflr r0
/* 813C3AEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C3AF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3AF4 | 48 23 59 D1 */	bl _savegpr_28
/* 813C3AF8 | 7C 7C 1B 78 */	mr r28, r3
/* 813C3AFC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C3B00 | 7C BD 2B 78 */	mr r29, r5
/* 813C3B04 | 7C DE 33 78 */	mr r30, r6
/* 813C3B08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3B0C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813C3B10 | 7D 89 03 A6 */	mtctr r12
/* 813C3B14 | 4E 80 04 21 */	bctrl
/* 813C3B18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3B1C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813C3B20 | 7D 89 03 A6 */	mtctr r12
/* 813C3B24 | 4E 80 04 21 */	bctrl
/* 813C3B28 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813C3B2C | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813C3B30 | 41 82 00 20 */	beq .L_813C3B50
/* 813C3B34 | 40 80 00 10 */	bge .L_813C3B44
/* 813C3B38 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813C3B3C | 40 80 00 38 */	bge .L_813C3B74
/* 813C3B40 | 48 00 00 64 */	b .L_813C3BA4
.L_813C3B44:
/* 813C3B44 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813C3B48 | 40 80 00 5C */	bge .L_813C3BA4
/* 813C3B4C | 48 00 00 18 */	b .L_813C3B64
.L_813C3B50:
/* 813C3B50 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813C3B54 | 7F E4 FB 78 */	mr r4, r31
/* 813C3B58 | 7F C5 F3 78 */	mr r5, r30
/* 813C3B5C | 4B FF F4 5D */	bl start_point_event__Q33ipl5scene17MailAddressSelectFPCcPQ33ipl10controller9Interface
/* 813C3B60 | 48 00 00 44 */	b .L_813C3BA4
.L_813C3B64:
/* 813C3B64 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813C3B68 | 7F E4 FB 78 */	mr r4, r31
/* 813C3B6C | 4B FF F4 F1 */	bl start_left_event__Q33ipl5scene17MailAddressSelectFPCc
/* 813C3B70 | 48 00 00 34 */	b .L_813C3BA4
.L_813C3B74:
/* 813C3B74 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C3B78 | 3C 80 00 10 */	lis r4, 0x10
/* 813C3B7C | 7F C3 F3 78 */	mr r3, r30
/* 813C3B80 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C3B84 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813C3B88 | 7D 89 03 A6 */	mtctr r12
/* 813C3B8C | 4E 80 04 21 */	bctrl
/* 813C3B90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3B94 | 41 82 00 10 */	beq .L_813C3BA4
/* 813C3B98 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813C3B9C | 7F E4 FB 78 */	mr r4, r31
/* 813C3BA0 | 4B FF F5 25 */	bl start_trig_event__Q33ipl5scene17MailAddressSelectFPCc
.L_813C3BA4:
/* 813C3BA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3BA8 | 48 23 59 69 */	bl _restgpr_28
/* 813C3BAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C3BB0 | 7C 08 03 A6 */	mtlr r0
/* 813C3BB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C3BB8 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene16MailAddressEventFUlUlPv

# .text:0x17A4 | 0x813C3BBC | size: 0x8
.fn "@20@__dt__Q33ipl5scene17MailAddressSelectFv", global
/* 813C3BBC | 38 63 FF EC */	subi r3, r3, 0x14
/* 813C3BC0 | 4B FF E8 E4 */	b __dt__Q33ipl5scene17MailAddressSelectFv
.endfn "@20@__dt__Q33ipl5scene17MailAddressSelectFv"

# .text:0x17AC | 0x813C3BC4 | size: 0x8
# ipl::scene::MailAddressSelect::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface", global
/* 813C3BC4 | 38 63 FF A8 */	subi r3, r3, 0x58
/* 813C3BC8 | 4B FF FD AC */	b onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface"

# 0x816508D0..0x81650C90 | size: 0x3C0
.data
.balign 8

# .data:0x0 | 0x816508D0 | size: 0x9
.obj lbl_816508D0, global
	.string "B_MailIn"
.endobj lbl_816508D0

# .data:0x9 | 0x816508D9 | size: 0xB
.obj lbl_816508D9, global
	.string "B_LetterIn"
.endobj lbl_816508D9

# .data:0x14 | 0x816508E4 | size: 0xC
.obj lbl_816508E4, global
	.4byte 0x425F4164
	.4byte 0x72657373
	.4byte 0x496E0000
.endobj lbl_816508E4

# .data:0x20 | 0x816508F0 | size: 0xC
.obj lbl_816508F0, global
	.4byte lbl_816508D0
	.4byte lbl_816508D9
	.4byte lbl_816508E4
.endobj lbl_816508F0

# .data:0x2C | 0x816508FC | size: 0x1F0
.obj lbl_816508FC, global
	.4byte 0x6D6C4164
	.4byte 0x53656C2E
	.4byte 0x61736800
	.4byte 0x6D795F4D
	.4byte 0x61696C5F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F4D
	.4byte 0x61696C5F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F53
	.4byte 0x656C6563
	.4byte 0x74496E4F
	.4byte 0x7574006D
	.4byte 0x795F4D61
	.4byte 0x696C5F61
	.4byte 0x5F53656C
	.4byte 0x6563744F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4D61696C
	.4byte 0x5F615F4D
	.4byte 0x61696C46
	.4byte 0x6F756375
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x4D61696C
	.4byte 0x466F7563
	.4byte 0x7573006D
	.4byte 0x795F4D61
	.4byte 0x696C5F61
	.4byte 0x5F4D6169
	.4byte 0x6C466F75
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4D61696C
	.4byte 0x5F615F4D
	.4byte 0x61696C49
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4164
	.4byte 0x72657373
	.4byte 0x496E4F75
	.4byte 0x74006D79
	.4byte 0x5F4D6169
	.4byte 0x6C5F615F
	.4byte 0x4D61696C
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F4D6169
	.4byte 0x6C5F615F
	.4byte 0x4C657474
	.4byte 0x6572466F
	.4byte 0x75637573
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F4C
	.4byte 0x65747465
	.4byte 0x72466F75
	.4byte 0x63757300
	.4byte 0x6D795F4D
	.4byte 0x61696C5F
	.4byte 0x615F4C65
	.4byte 0x74746572
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F4D
	.4byte 0x61696C5F
	.4byte 0x615F4C65
	.4byte 0x74746572
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4D61696C
	.4byte 0x5F615F4C
	.4byte 0x65747465
	.4byte 0x724F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4D61
	.4byte 0x696C5F61
	.4byte 0x5F416472
	.4byte 0x65737346
	.4byte 0x6F756375
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x41647265
	.4byte 0x7373466F
	.4byte 0x75637573
	.4byte 0x006D795F
	.4byte 0x4D61696C
	.4byte 0x5F615F41
	.4byte 0x64726573
	.4byte 0x73466F75
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4D61696C
	.4byte 0x5F615F41
	.4byte 0x64726573
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F4D6169
	.4byte 0x6C5F615F
	.4byte 0x41647265
	.4byte 0x73734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x545F4164
	.4byte 0x72657373
	.4byte 0x00000000
.endobj lbl_816508FC

# .data:0x21C | 0x81650AEC | size: 0x28
.obj jumptable_81650AEC, local
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2A1C
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2A78
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2A84
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2AAC
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2B10
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2BE8
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2C40
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2CE8
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2D04
	.rel calcNormal__Q33ipl5scene17MailAddressSelectFv, .L_813C2D60
.endobj jumptable_81650AEC

# .data:0x244 | 0x81650B14 | size: 0x16
.obj lbl_81650B14, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_81650B14

# .data:0x25A | 0x81650B2A | size: 0x10
.obj lbl_81650B2A, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
.endobj lbl_81650B2A

# .data:0x26A | 0x81650B3A | size: 0xC
.obj lbl_81650B3A, global
	.string16 "%06d\n"
.endobj lbl_81650B3A

# .data:0x276 | 0x81650B46 | size: 0x12
.obj lbl_81650B46, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43414E43
	.4byte 0x454C0000
	.2byte 0x0000
.endobj lbl_81650B46

# .data:0x288 | 0x81650B58 | size: 0x18
# ipl::scene::MailAddressEvent::__vtable
.obj __vt__Q33ipl5scene16MailAddressEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene16MailAddressEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene16MailAddressEvent

# .data:0x2A0 | 0x81650B70 | size: 0x120
# ipl::scene::MailAddressSelect::__vtable
.obj __vt__Q33ipl5scene17MailAddressSelect, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene17MailAddressSelectFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene17MailAddressSelectFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene17MailAddressSelectFv
	.4byte create__Q33ipl5scene17MailAddressSelectFv
	.4byte fn_8140B254
	.4byte draw__Q33ipl5scene17MailAddressSelectFv
	.4byte destroy__Q33ipl5scene17MailAddressSelectFv
	.4byte initCalcNormal__Q33ipl5scene17MailAddressSelectFv
	.4byte initCalcFadeout__Q33ipl5scene17MailAddressSelectFv
	.4byte calcCommon__Q33ipl5scene17MailAddressSelectFv
	.4byte calcFadein__Q33ipl5scene17MailAddressSelectFv
	.4byte calcNormal__Q33ipl5scene17MailAddressSelectFv
	.4byte calcFadeout__Q33ipl5scene17MailAddressSelectFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface"
	.4byte onEventDerived__Q33ipl5scene17MailAddressSelectFUlUlPCQ33ipl10controller9Interface
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
.endobj __vt__Q33ipl5scene17MailAddressSelect

# 0x81696BC8..0x81696BD8 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696BC8 | size: 0x4
.obj lbl_81696BC8, global
	.string "arc"
.endobj lbl_81696BC8

# .sdata:0x4 | 0x81696BCC | size: 0xC
.obj lbl_81696BCC, global
	.4byte 0x545F4D61
	.4byte 0x696C0000
	.4byte 0x00000000
.endobj lbl_81696BCC
