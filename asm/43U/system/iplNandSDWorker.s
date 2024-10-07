.include "macros.inc"
.file "iplNandSDWorker.cpp"

# 0x813483EC..0x81354CD0 | size: 0xC8E4
.text
.balign 4

# .text:0x0 | 0x813483EC | size: 0xC
# ipl::NandSDWorker::NandSDWorker()
.fn __ct__Q23ipl12NandSDWorkerFv, global
/* 813483EC | 38 00 00 00 */	li r0, 0x0
/* 813483F0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813483F4 | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl12NandSDWorkerFv

# .text:0xC | 0x813483F8 | size: 0x40
# ipl::NandSDWorker::~NandSDWorker()
.fn __dt__Q23ipl12NandSDWorkerFv, global
/* 813483F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813483FC | 7C 08 02 A6 */	mflr r0
/* 81348400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348404 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348408 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134840C | 7C 7F 1B 78 */	mr r31, r3
/* 81348410 | 41 82 00 10 */	beq .L_81348420
/* 81348414 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81348418 | 40 81 00 08 */	ble .L_81348420
/* 8134841C | 48 2A FC C9 */	bl __dl__FPv
.L_81348420:
/* 81348420 | 7F E3 FB 78 */	mr r3, r31
/* 81348424 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348428 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134842C | 7C 08 03 A6 */	mtlr r0
/* 81348430 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348434 | 4E 80 00 20 */	blr
.endfn __dt__Q23ipl12NandSDWorkerFv

# .text:0x4C | 0x81348438 | size: 0x3C0
# ipl::NandSDWorker::create(void*, void*, void*, int)
.fn create__Q23ipl12NandSDWorkerFPvPvPvi, global
/* 81348438 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134843C | 7C 08 02 A6 */	mflr r0
/* 81348440 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81348444 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81348448 | 48 2B 10 79 */	bl _savegpr_27
/* 8134844C | 7C FF 3B 78 */	mr r31, r7
/* 81348450 | 3C E4 00 02 */	addis r7, r4, 0x2
/* 81348454 | 7C DE 33 78 */	mr r30, r6
/* 81348458 | 7C 7C 1B 78 */	mr r28, r3
/* 8134845C | 3C C7 00 02 */	addis r6, r7, 0x2
/* 81348460 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81348464 | 3C 64 00 04 */	addis r3, r4, 0x4
/* 81348468 | 3C 80 81 35 */	lis r4, thread_main__Q23ipl12NandSDWorkerFPv@ha
/* 8134846C | 7C BD 2B 78 */	mr r29, r5
/* 81348470 | 7F 85 E3 78 */	mr r5, r28
/* 81348474 | 7F E8 FB 78 */	mr r8, r31
/* 81348478 | 38 84 94 9C */	addi r4, r4, thread_main__Q23ipl12NandSDWorkerFPv@l
/* 8134847C | 3C E0 00 02 */	lis r7, 0x2
/* 81348480 | 39 20 00 01 */	li r9, 0x1
/* 81348484 | 38 63 E6 B0 */	subi r3, r3, 0x1950
/* 81348488 | 38 C6 E6 B0 */	subi r6, r6, 0x1950
/* 8134848C | 48 1E C0 BD */	bl OSCreateThread
/* 81348490 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348494 | 38 A0 00 08 */	li r5, 0x8
/* 81348498 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134849C | 7C 64 1B 78 */	mr r4, r3
/* 813484A0 | 38 63 E9 E0 */	subi r3, r3, 0x1620
/* 813484A4 | 38 84 EA 00 */	subi r4, r4, 0x1600
/* 813484A8 | 48 1E 8B 79 */	bl OSInitMessageQueue
/* 813484AC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813484B0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813484B4 | 38 63 E9 C8 */	subi r3, r3, 0x1638
/* 813484B8 | 48 1E 97 19 */	bl fn_81531BD0
/* 813484BC | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 813484C0 | 3C 60 00 02 */	lis r3, 0x2
/* 813484C4 | 38 83 90 00 */	subi r4, r3, 0x7000
/* 813484C8 | 38 A0 00 00 */	li r5, 0x0
/* 813484CC | 38 66 56 40 */	addi r3, r6, 0x5640
/* 813484D0 | 48 21 21 A5 */	bl fn_8155A674
/* 813484D4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813484D8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813484DC | 38 00 00 00 */	li r0, 0x0
/* 813484E0 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 813484E4 | 90 64 E6 90 */	stw r3, -0x1970(r4)
/* 813484E8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813484EC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813484F0 | 90 03 E6 9C */	stw r0, -0x1964(r3)
/* 813484F4 | 41 82 00 B4 */	beq .L_813485A8
/* 813484F8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813484FC | 3F 60 00 01 */	lis r27, 0x1
/* 81348500 | 38 1B F0 AC */	subi r0, r27, 0xf54
/* 81348504 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348508 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8134850C | 38 63 E6 60 */	subi r3, r3, 0x19a0
/* 81348510 | 48 1C 9B 4D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81348514 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348518 | 38 1B F0 AC */	subi r0, r27, 0xf54
/* 8134851C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81348520 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348524 | 38 63 E6 6C */	subi r3, r3, 0x1994
/* 81348528 | 48 1C 9B 35 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8134852C | 38 7B F0 C0 */	subi r3, r27, 0xf40
/* 81348530 | 38 80 00 5A */	li r4, 0x5a
/* 81348534 | 38 A0 00 20 */	li r5, 0x20
/* 81348538 | 48 21 30 B9 */	bl fn_8155B5F0
/* 8134853C | 7C 64 1B 78 */	mr r4, r3
/* 81348540 | 7F A3 EB 78 */	mr r3, r29
/* 81348544 | 38 BB F0 C0 */	subi r5, r27, 0xf40
/* 81348548 | 38 C0 00 20 */	li r6, 0x20
/* 8134854C | 38 E0 00 00 */	li r7, 0x0
/* 81348550 | 48 21 2E 11 */	bl fn_8155B360
/* 81348554 | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 81348558 | 38 80 00 5A */	li r4, 0x5a
/* 8134855C | 38 A0 00 20 */	li r5, 0x20
/* 81348560 | 3C C6 00 02 */	addis r6, r6, 0x2
/* 81348564 | 90 66 E6 94 */	stw r3, -0x196c(r6)
/* 81348568 | 38 7B F0 C0 */	subi r3, r27, 0xf40
/* 8134856C | 48 21 30 85 */	bl fn_8155B5F0
/* 81348570 | 7C 7D 1A 14 */	add r3, r29, r3
/* 81348574 | 3C 80 00 04 */	lis r4, 0x4
/* 81348578 | 38 A0 00 00 */	li r5, 0x0
/* 8134857C | 48 21 20 F9 */	bl fn_8155A674
/* 81348580 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81348584 | 38 A0 00 40 */	li r5, 0x40
/* 81348588 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134858C | 90 64 E6 9C */	stw r3, -0x1964(r4)
/* 81348590 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348594 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348598 | 80 83 E6 9C */	lwz r4, -0x1964(r3)
/* 8134859C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813485A0 | 48 21 30 E9 */	bl fn_8155B688
/* 813485A4 | 48 00 00 10 */	b .L_813485B4
.L_813485A8:
/* 813485A8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485AC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813485B0 | 90 03 E6 94 */	stw r0, -0x196c(r3)
.L_813485B4:
/* 813485B4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813485B8 | 41 82 00 C0 */	beq .L_81348678
/* 813485BC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485C0 | 38 80 00 10 */	li r4, 0x10
/* 813485C4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813485C8 | 38 63 E6 78 */	subi r3, r3, 0x1988
/* 813485CC | 48 1C 9A 91 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813485D0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485D4 | 38 80 00 10 */	li r4, 0x10
/* 813485D8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813485DC | 38 63 E6 84 */	subi r3, r3, 0x197c
/* 813485E0 | 48 1C 9A 7D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813485E4 | 3F A0 00 02 */	lis r29, 0x2
/* 813485E8 | 38 80 00 60 */	li r4, 0x60
/* 813485EC | 38 7D 96 20 */	subi r3, r29, 0x69e0
/* 813485F0 | 38 A0 00 20 */	li r5, 0x20
/* 813485F4 | 48 21 2F FD */	bl fn_8155B5F0
/* 813485F8 | 7C 64 1B 78 */	mr r4, r3
/* 813485FC | 7F C3 F3 78 */	mr r3, r30
/* 81348600 | 38 BD 96 20 */	subi r5, r29, 0x69e0
/* 81348604 | 38 C0 00 20 */	li r6, 0x20
/* 81348608 | 38 E0 00 00 */	li r7, 0x0
/* 8134860C | 48 21 2D 55 */	bl fn_8155B360
/* 81348610 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81348614 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81348618 | 90 64 E6 98 */	stw r3, -0x1968(r4)
/* 8134861C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348620 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348624 | 80 03 E6 9C */	lwz r0, -0x1964(r3)
/* 81348628 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134862C | 40 82 00 5C */	bne .L_81348688
/* 81348630 | 38 7D 96 20 */	subi r3, r29, 0x69e0
/* 81348634 | 38 80 00 60 */	li r4, 0x60
/* 81348638 | 38 A0 00 20 */	li r5, 0x20
/* 8134863C | 48 21 2F B5 */	bl fn_8155B5F0
/* 81348640 | 7C 7E 1A 14 */	add r3, r30, r3
/* 81348644 | 3C 80 00 04 */	lis r4, 0x4
/* 81348648 | 38 A0 00 00 */	li r5, 0x0
/* 8134864C | 48 21 20 29 */	bl fn_8155A674
/* 81348650 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81348654 | 38 A0 00 40 */	li r5, 0x40
/* 81348658 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134865C | 90 64 E6 9C */	stw r3, -0x1964(r4)
/* 81348660 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348664 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348668 | 80 83 E6 9C */	lwz r4, -0x1964(r3)
/* 8134866C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81348670 | 48 21 30 19 */	bl fn_8155B688
/* 81348674 | 48 00 00 14 */	b .L_81348688
.L_81348678:
/* 81348678 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134867C | 38 00 00 00 */	li r0, 0x0
/* 81348680 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348684 | 90 03 E6 98 */	stw r0, -0x1968(r3)
.L_81348688:
/* 81348688 | 3C 60 00 02 */	lis r3, 0x2
/* 8134868C | 48 29 FA F9 */	bl fn_815E8184
/* 81348690 | 7F E3 FB 78 */	mr r3, r31
/* 81348694 | 48 29 FD 49 */	bl fn_815E83DC
/* 81348698 | 3C 80 81 35 */	lis r4, sd_insert_callback__Q23ipl12NandSDWorkerFSc@ha
/* 8134869C | 3C A0 81 35 */	lis r5, sd_eject_callback__Q23ipl12NandSDWorkerFSc@ha
/* 813486A0 | 38 84 28 68 */	addi r4, r4, sd_insert_callback__Q23ipl12NandSDWorkerFSc@l
/* 813486A4 | 38 60 00 00 */	li r3, 0x0
/* 813486A8 | 38 A5 28 B0 */	addi r5, r5, sd_eject_callback__Q23ipl12NandSDWorkerFSc@l
/* 813486AC | 48 29 FB D9 */	bl fn_815E8284
/* 813486B0 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813486B4 | 3C 60 81 63 */	lis r3, lbl_81635B60@ha
/* 813486B8 | 38 C0 00 08 */	li r6, 0x8
/* 813486BC | 38 00 00 20 */	li r0, 0x20
/* 813486C0 | 38 A4 50 00 */	addi r5, r4, 0x5000
/* 813486C4 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 813486C8 | 90 A4 E6 4C */	stw r5, -0x19b4(r4)
/* 813486CC | 3B E0 00 01 */	li r31, 0x1
/* 813486D0 | 38 63 5B 60 */	addi r3, r3, lbl_81635B60@l
/* 813486D4 | 38 80 00 08 */	li r4, 0x8
/* 813486D8 | 80 FC 00 00 */	lwz r7, 0x0(r28)
/* 813486DC | 3C A7 00 02 */	addis r5, r7, 0x2
/* 813486E0 | 90 E5 E6 50 */	stw r7, -0x19b0(r5)
/* 813486E4 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813486E8 | 3C A5 00 02 */	addis r5, r5, 0x2
/* 813486EC | B0 C5 E6 54 */	sth r6, -0x19ac(r5)
/* 813486F0 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813486F4 | 3C A5 00 02 */	addis r5, r5, 0x2
/* 813486F8 | B0 05 E6 56 */	sth r0, -0x19aa(r5)
/* 813486FC | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81348700 | 3C A5 00 02 */	addis r5, r5, 0x2
/* 81348704 | 93 E5 E6 58 */	stw r31, -0x19a8(r5)
/* 81348708 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134870C | 3C A5 00 02 */	addis r5, r5, 0x2
/* 81348710 | 93 E5 E6 5C */	stw r31, -0x19a4(r5)
/* 81348714 | 4C C6 31 82 */	crclr cr1eq
/* 81348718 | 48 1E 5F 89 */	bl OSReport
/* 8134871C | 3C 60 81 63 */	lis r3, lbl_81635B82@ha
/* 81348720 | 38 80 00 20 */	li r4, 0x20
/* 81348724 | 38 63 5B 82 */	addi r3, r3, lbl_81635B82@l
/* 81348728 | 4C C6 31 82 */	crclr cr1eq
/* 8134872C | 48 1E 5F 75 */	bl OSReport
/* 81348730 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348734 | 38 C0 00 00 */	li r6, 0x0
/* 81348738 | 38 80 FF FF */	li r4, -0x1
/* 8134873C | 38 00 00 02 */	li r0, 0x2
/* 81348740 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348744 | 90 C3 E6 40 */	stw r6, -0x19c0(r3)
/* 81348748 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134874C | 3C A3 00 02 */	addis r5, r3, 0x2
/* 81348750 | 38 65 E6 4C */	subi r3, r5, 0x19b4
/* 81348754 | 90 65 E6 44 */	stw r3, -0x19bc(r5)
/* 81348758 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134875C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348760 | 90 C3 EA 20 */	stw r6, -0x15e0(r3)
/* 81348764 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348768 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134876C | 90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 81348770 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348774 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348778 | 90 83 EA 28 */	stw r4, -0x15d8(r3)
/* 8134877C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348780 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348784 | 90 83 EA 2C */	stw r4, -0x15d4(r3)
/* 81348788 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134878C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348790 | 90 83 EA 30 */	stw r4, -0x15d0(r3)
/* 81348794 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348798 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134879C | 90 83 EA 34 */	stw r4, -0x15cc(r3)
/* 813487A0 | 90 CD A6 98 */	stw r6, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 813487A4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487A8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813487AC | 90 03 EA 54 */	stw r0, -0x15ac(r3)
/* 813487B0 | 93 E3 EA 50 */	stw r31, -0x15b0(r3)
/* 813487B4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487B8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813487BC | 90 C3 EA 58 */	stw r6, -0x15a8(r3)
/* 813487C0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487C4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813487C8 | 90 83 EA 5C */	stw r4, -0x15a4(r3)
/* 813487CC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487D0 | 98 DC 00 04 */	stb r6, 0x4(r28)
/* 813487D4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813487D8 | 38 63 E6 B0 */	subi r3, r3, 0x1950
/* 813487DC | 48 1E C4 75 */	bl OSResumeThread
/* 813487E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813487E4 | 48 2B 0D 29 */	bl _restgpr_27
/* 813487E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813487EC | 7C 08 03 A6 */	mtlr r0
/* 813487F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813487F4 | 4E 80 00 20 */	blr
.endfn create__Q23ipl12NandSDWorkerFPvPvPvi

# .text:0x40C | 0x813487F8 | size: 0x10
# ipl::NandSDWorker::is_terminated()
.fn is_terminated__Q23ipl12NandSDWorkerFv, global
/* 813487F8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813487FC | 7C 00 00 34 */	cntlzw r0, r0
/* 81348800 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81348804 | 4E 80 00 20 */	blr
.endfn is_terminated__Q23ipl12NandSDWorkerFv

# .text:0x41C | 0x81348808 | size: 0x2C
# ipl::NandSDWorker::is_working()
.fn is_working__Q23ipl12NandSDWorkerFv, global
/* 81348808 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134880C | 7C 08 02 A6 */	mflr r0
/* 81348810 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348814 | 48 00 9F A5 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 81348818 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8134881C | 7C 00 00 34 */	cntlzw r0, r0
/* 81348820 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81348824 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348828 | 7C 08 03 A6 */	mtlr r0
/* 8134882C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348830 | 4E 80 00 20 */	blr
.endfn is_working__Q23ipl12NandSDWorkerFv

# .text:0x448 | 0x81348834 | size: 0x50
# ipl::NandSDWorker::get_async_result()
.fn get_async_result__Q23ipl12NandSDWorkerFv, global
/* 81348834 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348838 | 7C 08 02 A6 */	mflr r0
/* 8134883C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348840 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348844 | 7C 7F 1B 78 */	mr r31, r3
/* 81348848 | 48 00 9F 71 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 8134884C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81348850 | 7C 00 00 34 */	cntlzw r0, r0
/* 81348854 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81348858 | 41 82 00 0C */	beq .L_81348864
/* 8134885C | 38 60 FF FF */	li r3, -0x1
/* 81348860 | 48 00 00 10 */	b .L_81348870
.L_81348864:
/* 81348864 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81348868 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134886C | 80 63 EA 24 */	lwz r3, -0x15dc(r3)
.L_81348870:
/* 81348870 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348874 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348878 | 7C 08 03 A6 */	mtlr r0
/* 8134887C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348880 | 4E 80 00 20 */	blr
.endfn get_async_result__Q23ipl12NandSDWorkerFv

# .text:0x498 | 0x81348884 | size: 0x8
# ipl::NandSDWorker::get_sd_state()
.fn get_sd_state__Q23ipl12NandSDWorkerFv, global
/* 81348884 | 80 6D A6 98 */	lwz r3, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348888 | 4E 80 00 20 */	blr
.endfn get_sd_state__Q23ipl12NandSDWorkerFv

# .text:0x4A0 | 0x8134888C | size: 0x10
# ipl::NandSDWorker::get_nand_save_num()
.fn get_nand_save_num__Q23ipl12NandSDWorkerFv, global
/* 8134888C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348890 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348894 | 80 63 EA 28 */	lwz r3, -0x15d8(r3)
/* 81348898 | 4E 80 00 20 */	blr
.endfn get_nand_save_num__Q23ipl12NandSDWorkerFv

# .text:0x4B0 | 0x8134889C | size: 0x10
# ipl::NandSDWorker::get_nand_app_num()
.fn get_nand_app_num__Q23ipl12NandSDWorkerFv, global
/* 8134889C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813488A0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813488A4 | 80 63 EA 2C */	lwz r3, -0x15d4(r3)
/* 813488A8 | 4E 80 00 20 */	blr
.endfn get_nand_app_num__Q23ipl12NandSDWorkerFv

# .text:0x4C0 | 0x813488AC | size: 0x48
# ipl::NandSDWorker::get_cached_nand_save_banner(unsigned long long)
.fn get_cached_nand_save_banner__Q23ipl12NandSDWorkerFUx, global
/* 813488AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813488B0 | 7C 08 02 A6 */	mflr r0
/* 813488B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813488B8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813488BC | 3C 84 00 02 */	addis r4, r4, 0x2
/* 813488C0 | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 813488C4 | 48 00 A2 F1 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 813488C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813488CC | 41 82 00 14 */	beq .L_813488E0
/* 813488D0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813488D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813488D8 | 41 82 00 08 */	beq .L_813488E0
/* 813488DC | 48 00 00 08 */	b .L_813488E4
.L_813488E0:
/* 813488E0 | 38 60 00 00 */	li r3, 0x0
.L_813488E4:
/* 813488E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813488E8 | 7C 08 03 A6 */	mtlr r0
/* 813488EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813488F0 | 4E 80 00 20 */	blr
.endfn get_cached_nand_save_banner__Q23ipl12NandSDWorkerFUx

# .text:0x508 | 0x813488F4 | size: 0x64
# ipl::NandSDWorker::get_cached_nand_app_thumbnail(unsigned long long, unsigned long*)
.fn get_cached_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUl, global
/* 813488F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813488F8 | 7C 08 02 A6 */	mflr r0
/* 813488FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348900 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348904 | 7C FF 3B 78 */	mr r31, r7
/* 81348908 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134890C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81348910 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348914 | 48 00 A4 E5 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134891C | 41 82 00 24 */	beq .L_81348940
/* 81348920 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81348924 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81348928 | 41 82 00 18 */	beq .L_81348940
/* 8134892C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81348930 | 41 82 00 08 */	beq .L_81348938
/* 81348934 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81348938:
/* 81348938 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8134893C | 48 00 00 08 */	b .L_81348944
.L_81348940:
/* 81348940 | 38 60 00 00 */	li r3, 0x0
.L_81348944:
/* 81348944 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348948 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134894C | 7C 08 03 A6 */	mtlr r0
/* 81348950 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348954 | 4E 80 00 20 */	blr
.endfn get_cached_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUl

# .text:0x56C | 0x81348958 | size: 0x50
# ipl::NandSDWorker::get_cached_nand_app_meta_header(unsigned long long)
.fn get_cached_nand_app_meta_header__Q23ipl12NandSDWorkerFUx, global
/* 81348958 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134895C | 7C 08 02 A6 */	mflr r0
/* 81348960 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348964 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348968 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134896C | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348970 | 48 00 A4 89 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348978 | 41 82 00 1C */	beq .L_81348994
/* 8134897C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81348980 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81348984 | 41 82 00 10 */	beq .L_81348994
/* 81348988 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134898C | 38 63 90 18 */	subi r3, r3, 0x6fe8
/* 81348990 | 48 00 00 08 */	b .L_81348998
.L_81348994:
/* 81348994 | 38 60 00 00 */	li r3, 0x0
.L_81348998:
/* 81348998 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134899C | 7C 08 03 A6 */	mtlr r0
/* 813489A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813489A4 | 4E 80 00 20 */	blr
.endfn get_cached_nand_app_meta_header__Q23ipl12NandSDWorkerFUx

# .text:0x5BC | 0x813489A8 | size: 0x6C
# ipl::NandSDWorker::get_cached_sd_app_meta_header(unsigned long)
.fn get_cached_sd_app_meta_header__Q23ipl12NandSDWorkerFUl, global
/* 813489A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813489AC | 7C 08 02 A6 */	mflr r0
/* 813489B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813489B4 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 813489B8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813489BC | 41 82 00 0C */	beq .L_813489C8
/* 813489C0 | 38 60 00 00 */	li r3, 0x0
/* 813489C4 | 48 00 00 40 */	b .L_81348A04
.L_813489C8:
/* 813489C8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813489CC | 7C 86 23 78 */	mr r6, r4
/* 813489D0 | 38 A0 00 00 */	li r5, 0x0
/* 813489D4 | 3C 87 00 02 */	addis r4, r7, 0x2
/* 813489D8 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 813489DC | 48 00 A4 1D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 813489E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813489E4 | 41 82 00 1C */	beq .L_81348A00
/* 813489E8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813489EC | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813489F0 | 41 82 00 10 */	beq .L_81348A00
/* 813489F4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813489F8 | 38 63 90 18 */	subi r3, r3, 0x6fe8
/* 813489FC | 48 00 00 08 */	b .L_81348A04
.L_81348A00:
/* 81348A00 | 38 60 00 00 */	li r3, 0x0
.L_81348A04:
/* 81348A04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348A08 | 7C 08 03 A6 */	mtlr r0
/* 81348A0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348A10 | 4E 80 00 20 */	blr
.endfn get_cached_sd_app_meta_header__Q23ipl12NandSDWorkerFUl

# .text:0x628 | 0x81348A14 | size: 0x4C
# ipl::NandSDWorker::get_cached_nand_save_size(unsigned long long)
.fn get_cached_nand_save_size__Q23ipl12NandSDWorkerFUx, global
/* 81348A14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348A18 | 7C 08 02 A6 */	mflr r0
/* 81348A1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348A20 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348A24 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81348A28 | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 81348A2C | 48 00 A1 89 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348A30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348A34 | 41 82 00 18 */	beq .L_81348A4C
/* 81348A38 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81348A3C | 80 63 F0 A8 */	lwz r3, -0xf58(r3)
/* 81348A40 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81348A44 | 41 82 00 08 */	beq .L_81348A4C
/* 81348A48 | 48 00 00 08 */	b .L_81348A50
.L_81348A4C:
/* 81348A4C | 38 60 FF FF */	li r3, -0x1
.L_81348A50:
/* 81348A50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348A54 | 7C 08 03 A6 */	mtlr r0
/* 81348A58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348A5C | 4E 80 00 20 */	blr
.endfn get_cached_nand_save_size__Q23ipl12NandSDWorkerFUx

# .text:0x674 | 0x81348A60 | size: 0x48
# ipl::NandSDWorker::get_cached_nand_app_size(unsigned long long)
.fn get_cached_nand_app_size__Q23ipl12NandSDWorkerFUx, global
/* 81348A60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348A64 | 7C 08 02 A6 */	mflr r0
/* 81348A68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348A6C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348A70 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81348A74 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348A78 | 48 00 A3 81 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348A7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348A80 | 41 82 00 14 */	beq .L_81348A94
/* 81348A84 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81348A88 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81348A8C | 41 82 00 08 */	beq .L_81348A94
/* 81348A90 | 48 00 00 08 */	b .L_81348A98
.L_81348A94:
/* 81348A94 | 38 60 FF FF */	li r3, -0x1
.L_81348A98:
/* 81348A98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348A9C | 7C 08 03 A6 */	mtlr r0
/* 81348AA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348AA4 | 4E 80 00 20 */	blr
.endfn get_cached_nand_app_size__Q23ipl12NandSDWorkerFUx

# .text:0x6BC | 0x81348AA8 | size: 0x24
# ipl::NandSDWorker::get_sd_save_num()
.fn get_sd_save_num__Q23ipl12NandSDWorkerFv, global
/* 81348AA8 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348AAC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348AB0 | 40 82 00 14 */	bne .L_81348AC4
/* 81348AB4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348AB8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348ABC | 80 63 EA 30 */	lwz r3, -0x15d0(r3)
/* 81348AC0 | 4E 80 00 20 */	blr
.L_81348AC4:
/* 81348AC4 | 38 60 FF FF */	li r3, -0x1
/* 81348AC8 | 4E 80 00 20 */	blr
.endfn get_sd_save_num__Q23ipl12NandSDWorkerFv

# .text:0x6E0 | 0x81348ACC | size: 0x24
# ipl::NandSDWorker::get_sd_app_num()
.fn get_sd_app_num__Q23ipl12NandSDWorkerFv, global
/* 81348ACC | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348AD0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348AD4 | 40 82 00 14 */	bne .L_81348AE8
/* 81348AD8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348ADC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348AE0 | 80 63 EA 34 */	lwz r3, -0x15cc(r3)
/* 81348AE4 | 4E 80 00 20 */	blr
.L_81348AE8:
/* 81348AE8 | 38 60 FF FF */	li r3, -0x1
/* 81348AEC | 4E 80 00 20 */	blr
.endfn get_sd_app_num__Q23ipl12NandSDWorkerFv

# .text:0x704 | 0x81348AF0 | size: 0x64
# ipl::NandSDWorker::get_cached_sd_save_banner(unsigned long)
.fn get_cached_sd_save_banner__Q23ipl12NandSDWorkerFUl, global
/* 81348AF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348AF4 | 7C 08 02 A6 */	mflr r0
/* 81348AF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348AFC | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348B00 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348B04 | 41 82 00 0C */	beq .L_81348B10
/* 81348B08 | 38 60 00 00 */	li r3, 0x0
/* 81348B0C | 48 00 00 38 */	b .L_81348B44
.L_81348B10:
/* 81348B10 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348B14 | 7C 86 23 78 */	mr r6, r4
/* 81348B18 | 38 A0 00 00 */	li r5, 0x0
/* 81348B1C | 3C 87 00 02 */	addis r4, r7, 0x2
/* 81348B20 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 81348B24 | 48 00 A0 91 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348B28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348B2C | 41 82 00 14 */	beq .L_81348B40
/* 81348B30 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81348B34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81348B38 | 41 82 00 08 */	beq .L_81348B40
/* 81348B3C | 48 00 00 08 */	b .L_81348B44
.L_81348B40:
/* 81348B40 | 38 60 00 00 */	li r3, 0x0
.L_81348B44:
/* 81348B44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348B48 | 7C 08 03 A6 */	mtlr r0
/* 81348B4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348B50 | 4E 80 00 20 */	blr
.endfn get_cached_sd_save_banner__Q23ipl12NandSDWorkerFUl

# .text:0x768 | 0x81348B54 | size: 0x80
# ipl::NandSDWorker::get_cached_sd_app_thumbnail(unsigned long, unsigned long*)
.fn get_cached_sd_app_thumbnail__Q23ipl12NandSDWorkerFUlPUl, global
/* 81348B54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348B58 | 7C 08 02 A6 */	mflr r0
/* 81348B5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348B60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348B64 | 7C BF 2B 78 */	mr r31, r5
/* 81348B68 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348B6C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348B70 | 41 82 00 0C */	beq .L_81348B7C
/* 81348B74 | 38 60 00 00 */	li r3, 0x0
/* 81348B78 | 48 00 00 48 */	b .L_81348BC0
.L_81348B7C:
/* 81348B7C | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348B80 | 7C 86 23 78 */	mr r6, r4
/* 81348B84 | 38 A0 00 00 */	li r5, 0x0
/* 81348B88 | 3C 87 00 02 */	addis r4, r7, 0x2
/* 81348B8C | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 81348B90 | 48 00 A2 69 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348B98 | 41 82 00 24 */	beq .L_81348BBC
/* 81348B9C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81348BA0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81348BA4 | 41 82 00 18 */	beq .L_81348BBC
/* 81348BA8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81348BAC | 41 82 00 08 */	beq .L_81348BB4
/* 81348BB0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81348BB4:
/* 81348BB4 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81348BB8 | 48 00 00 08 */	b .L_81348BC0
.L_81348BBC:
/* 81348BBC | 38 60 00 00 */	li r3, 0x0
.L_81348BC0:
/* 81348BC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348BC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348BC8 | 7C 08 03 A6 */	mtlr r0
/* 81348BCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348BD0 | 4E 80 00 20 */	blr
.endfn get_cached_sd_app_thumbnail__Q23ipl12NandSDWorkerFUlPUl

# .text:0x7E8 | 0x81348BD4 | size: 0x68
# ipl::NandSDWorker::get_cached_sd_save_size(unsigned long)
.fn get_cached_sd_save_size__Q23ipl12NandSDWorkerFUl, global
/* 81348BD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348BD8 | 7C 08 02 A6 */	mflr r0
/* 81348BDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348BE0 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348BE4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348BE8 | 41 82 00 0C */	beq .L_81348BF4
/* 81348BEC | 38 60 00 00 */	li r3, 0x0
/* 81348BF0 | 48 00 00 3C */	b .L_81348C2C
.L_81348BF4:
/* 81348BF4 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348BF8 | 7C 86 23 78 */	mr r6, r4
/* 81348BFC | 38 A0 00 00 */	li r5, 0x0
/* 81348C00 | 3C 87 00 02 */	addis r4, r7, 0x2
/* 81348C04 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 81348C08 | 48 00 9F AD */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348C10 | 41 82 00 18 */	beq .L_81348C28
/* 81348C14 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81348C18 | 80 63 F0 A8 */	lwz r3, -0xf58(r3)
/* 81348C1C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81348C20 | 41 82 00 08 */	beq .L_81348C28
/* 81348C24 | 48 00 00 08 */	b .L_81348C2C
.L_81348C28:
/* 81348C28 | 38 60 FF FF */	li r3, -0x1
.L_81348C2C:
/* 81348C2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348C30 | 7C 08 03 A6 */	mtlr r0
/* 81348C34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348C38 | 4E 80 00 20 */	blr
.endfn get_cached_sd_save_size__Q23ipl12NandSDWorkerFUl

# .text:0x850 | 0x81348C3C | size: 0x64
# ipl::NandSDWorker::get_cached_sd_app_size(unsigned long)
.fn get_cached_sd_app_size__Q23ipl12NandSDWorkerFUl, global
/* 81348C3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348C40 | 7C 08 02 A6 */	mflr r0
/* 81348C44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348C48 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348C4C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348C50 | 41 82 00 0C */	beq .L_81348C5C
/* 81348C54 | 38 60 00 00 */	li r3, 0x0
/* 81348C58 | 48 00 00 38 */	b .L_81348C90
.L_81348C5C:
/* 81348C5C | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348C60 | 7C 86 23 78 */	mr r6, r4
/* 81348C64 | 38 A0 00 00 */	li r5, 0x0
/* 81348C68 | 3C 87 00 02 */	addis r4, r7, 0x2
/* 81348C6C | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 81348C70 | 48 00 A1 89 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348C74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348C78 | 41 82 00 14 */	beq .L_81348C8C
/* 81348C7C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81348C80 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81348C84 | 41 82 00 08 */	beq .L_81348C8C
/* 81348C88 | 48 00 00 08 */	b .L_81348C90
.L_81348C8C:
/* 81348C8C | 38 60 FF FF */	li r3, -0x1
.L_81348C90:
/* 81348C90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348C94 | 7C 08 03 A6 */	mtlr r0
/* 81348C98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348C9C | 4E 80 00 20 */	blr
.endfn get_cached_sd_app_size__Q23ipl12NandSDWorkerFUl

# .text:0x8B4 | 0x81348CA0 | size: 0x24
# ipl::NandSDWorker::is_sd_write_protected()
.fn is_sd_write_protected__Q23ipl12NandSDWorkerFv, global
/* 81348CA0 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348CA4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348CA8 | 40 82 00 14 */	bne .L_81348CBC
/* 81348CAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348CB0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81348CB4 | 80 63 EA 58 */	lwz r3, -0x15a8(r3)
/* 81348CB8 | 4E 80 00 20 */	blr
.L_81348CBC:
/* 81348CBC | 38 60 00 00 */	li r3, 0x0
/* 81348CC0 | 4E 80 00 20 */	blr
.endfn is_sd_write_protected__Q23ipl12NandSDWorkerFv

# .text:0x8D8 | 0x81348CC4 | size: 0x24
# ipl::NandSDWorker::get_sd_drive_letter()
.fn get_sd_drive_letter__Q23ipl12NandSDWorkerFv, global
/* 81348CC4 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81348CC8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81348CCC | 40 82 00 14 */	bne .L_81348CE0
/* 81348CD0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348CD4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81348CD8 | 88 63 E6 48 */	lbz r3, -0x19b8(r3)
/* 81348CDC | 4E 80 00 20 */	blr
.L_81348CE0:
/* 81348CE0 | 38 60 00 00 */	li r3, 0x0
/* 81348CE4 | 4E 80 00 20 */	blr
.endfn get_sd_drive_letter__Q23ipl12NandSDWorkerFv

# .text:0x8FC | 0x81348CE8 | size: 0x8
# ipl::NandSDWorker::startup_async()
.fn startup_async__Q23ipl12NandSDWorkerFv, global
/* 81348CE8 | 38 80 00 02 */	li r4, 0x2
/* 81348CEC | 48 00 9A 0C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn startup_async__Q23ipl12NandSDWorkerFv

# .text:0x904 | 0x81348CF0 | size: 0x48
# ipl::NandSDWorker::terminate_async()
.fn terminate_async__Q23ipl12NandSDWorkerFv, global
/* 81348CF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348CF4 | 7C 08 02 A6 */	mflr r0
/* 81348CF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81348CFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348D00 | 7C 7F 1B 78 */	mr r31, r3
/* 81348D04 | 48 00 9A B5 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 81348D08 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81348D0C | 7C 00 00 34 */	cntlzw r0, r0
/* 81348D10 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81348D14 | 40 82 00 10 */	bne .L_81348D24
/* 81348D18 | 7F E3 FB 78 */	mr r3, r31
/* 81348D1C | 38 80 00 01 */	li r4, 0x1
/* 81348D20 | 48 00 99 D9 */	bl send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.L_81348D24:
/* 81348D24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348D28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348D2C | 7C 08 03 A6 */	mtlr r0
/* 81348D30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348D34 | 4E 80 00 20 */	blr
.endfn terminate_async__Q23ipl12NandSDWorkerFv

# .text:0x94C | 0x81348D38 | size: 0x8
# ipl::NandSDWorker::mount_sd_async()
.fn mount_sd_async__Q23ipl12NandSDWorkerFv, global
/* 81348D38 | 38 80 00 03 */	li r4, 0x3
/* 81348D3C | 48 00 99 BC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn mount_sd_async__Q23ipl12NandSDWorkerFv

# .text:0x954 | 0x81348D40 | size: 0x14
# ipl::NandSDWorker::list_nand_save_async(unsigned long long*)
.fn list_nand_save_async__Q23ipl12NandSDWorkerFPUx, global
/* 81348D40 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D44 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D48 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D4C | 38 80 00 04 */	li r4, 0x4
/* 81348D50 | 48 00 99 A8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_nand_save_async__Q23ipl12NandSDWorkerFPUx

# .text:0x968 | 0x81348D54 | size: 0x24
# ipl::NandSDWorker::get_nand_save_banner_async(unsigned long long, WIISaveBannerFile*)
.fn get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile, global
/* 81348D54 | 81 03 00 00 */	lwz r8, 0x0(r3)
/* 81348D58 | 38 80 00 05 */	li r4, 0x5
/* 81348D5C | 3D 08 00 04 */	addis r8, r8, 0x4
/* 81348D60 | 90 C8 EA 4C */	stw r6, -0x15b4(r8)
/* 81348D64 | 90 A8 EA 48 */	stw r5, -0x15b8(r8)
/* 81348D68 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D6C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D70 | 90 E5 EA 38 */	stw r7, -0x15c8(r5)
/* 81348D74 | 48 00 99 84 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile

# .text:0x98C | 0x81348D78 | size: 0x14
# ipl::NandSDWorker::list_sd_save_async(unsigned long*)
.fn list_sd_save_async__Q23ipl12NandSDWorkerFPUl, global
/* 81348D78 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D7C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D80 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D84 | 38 80 00 06 */	li r4, 0x6
/* 81348D88 | 48 00 99 70 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_sd_save_async__Q23ipl12NandSDWorkerFPUl

# .text:0x9A0 | 0x81348D8C | size: 0x14
# ipl::NandSDWorker::list_sd_app_async(unsigned long*)
.fn list_sd_app_async__Q23ipl12NandSDWorkerFPUl, global
/* 81348D8C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D90 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D94 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D98 | 38 80 00 17 */	li r4, 0x17
/* 81348D9C | 48 00 99 5C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_sd_app_async__Q23ipl12NandSDWorkerFPUl

# .text:0x9B4 | 0x81348DA0 | size: 0x28
# ipl::NandSDWorker::get_sd_save_banner_async(unsigned long, WIISaveBannerFile*)
.fn get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile, global
/* 81348DA0 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348DA4 | 38 00 00 00 */	li r0, 0x0
/* 81348DA8 | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81348DAC | 90 86 EA 4C */	stw r4, -0x15b4(r6)
/* 81348DB0 | 38 80 00 07 */	li r4, 0x7
/* 81348DB4 | 90 06 EA 48 */	stw r0, -0x15b8(r6)
/* 81348DB8 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348DBC | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81348DC0 | 90 A6 EA 38 */	stw r5, -0x15c8(r6)
/* 81348DC4 | 48 00 99 34 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile

# .text:0x9DC | 0x81348DC8 | size: 0x34
# ipl::NandSDWorker::get_sd_app_thumbnail_async(unsigned long, unsigned char*, ipl::channel::SChanMgrMetaHeader*)
.fn get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader, global
/* 81348DC8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348DCC | 38 00 00 00 */	li r0, 0x0
/* 81348DD0 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348DD4 | 90 87 EA 4C */	stw r4, -0x15b4(r7)
/* 81348DD8 | 38 80 00 1A */	li r4, 0x1a
/* 81348DDC | 90 07 EA 48 */	stw r0, -0x15b8(r7)
/* 81348DE0 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348DE4 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348DE8 | 90 A7 EA 38 */	stw r5, -0x15c8(r7)
/* 81348DEC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348DF0 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348DF4 | 90 C5 EA 3C */	stw r6, -0x15c4(r5)
/* 81348DF8 | 48 00 99 00 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader

# .text:0xA10 | 0x81348DFC | size: 0x34
.fn iplNandSD_81348DFC, global
/* 81348DFC | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348E00 | 38 00 00 00 */	li r0, 0x0
/* 81348E04 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348E08 | 90 87 EA 4C */	stw r4, -0x15b4(r7)
/* 81348E0C | 38 80 00 29 */	li r4, 0x29
/* 81348E10 | 90 07 EA 48 */	stw r0, -0x15b8(r7)
/* 81348E14 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348E18 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348E1C | 90 A7 EA 38 */	stw r5, -0x15c8(r7)
/* 81348E20 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E24 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E28 | 90 C5 EA 3C */	stw r6, -0x15c4(r5)
/* 81348E2C | 48 00 98 CC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348DFC

# .text:0xA44 | 0x81348E30 | size: 0x14
.fn iplNandSD_81348E30, global
/* 81348E30 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E34 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E38 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348E3C | 38 80 00 2A */	li r4, 0x2a
/* 81348E40 | 48 00 98 B8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E30

# .text:0xA58 | 0x81348E44 | size: 0x14
.fn iplNandSD_81348E44, global
/* 81348E44 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E48 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E4C | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348E50 | 38 80 00 2B */	li r4, 0x2b
/* 81348E54 | 48 00 98 A4 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E44

# .text:0xA6C | 0x81348E58 | size: 0x30
.fn iplNandSD_81348E58, global
/* 81348E58 | 81 23 00 00 */	lwz r9, 0x0(r3)
/* 81348E5C | 38 80 00 2C */	li r4, 0x2c
/* 81348E60 | 3D 29 00 04 */	addis r9, r9, 0x4
/* 81348E64 | 90 C9 EA 4C */	stw r6, -0x15b4(r9)
/* 81348E68 | 90 A9 EA 48 */	stw r5, -0x15b8(r9)
/* 81348E6C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E70 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E74 | 90 E5 EA 38 */	stw r7, -0x15c8(r5)
/* 81348E78 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E7C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E80 | 91 05 EA 3C */	stw r8, -0x15c4(r5)
/* 81348E84 | 48 00 98 74 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E58

# .text:0xA9C | 0x81348E88 | size: 0x20
.fn iplNandSD_81348E88, global
/* 81348E88 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348E8C | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81348E90 | 90 86 EA 38 */	stw r4, -0x15c8(r6)
/* 81348E94 | 38 80 00 2E */	li r4, 0x2e
/* 81348E98 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348E9C | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81348EA0 | 90 A6 EA 3C */	stw r5, -0x15c4(r6)
/* 81348EA4 | 48 00 98 54 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E88

# .text:0xABC | 0x81348EA8 | size: 0x2C
.fn iplNandSD_81348EA8, global
/* 81348EA8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348EAC | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EB0 | 90 87 EA 38 */	stw r4, -0x15c8(r7)
/* 81348EB4 | 38 80 00 31 */	li r4, 0x31
/* 81348EB8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348EBC | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EC0 | 90 A7 EA 3C */	stw r5, -0x15c4(r7)
/* 81348EC4 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348EC8 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348ECC | 90 C5 EA 40 */	stw r6, -0x15c0(r5)
/* 81348ED0 | 48 00 98 28 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348EA8

# .text:0xAE8 | 0x81348ED4 | size: 0x18
# ipl::NandSDWorker::get_nand_save_size_async(unsigned long long)
.fn get_nand_save_size_async__Q23ipl12NandSDWorkerFUx, global
/* 81348ED4 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348ED8 | 38 80 00 08 */	li r4, 0x8
/* 81348EDC | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EE0 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348EE4 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348EE8 | 48 00 98 10 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_save_size_async__Q23ipl12NandSDWorkerFUx

# .text:0xB00 | 0x81348EEC | size: 0x18
# ipl::NandSDWorker::get_nand_app_size_async(unsigned long long)
.fn get_nand_app_size_async__Q23ipl12NandSDWorkerFUx, global
/* 81348EEC | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348EF0 | 38 80 00 1B */	li r4, 0x1b
/* 81348EF4 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EF8 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348EFC | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348F00 | 48 00 97 F8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_app_size_async__Q23ipl12NandSDWorkerFUx

# .text:0xB18 | 0x81348F04 | size: 0x18
# ipl::NandSDWorker::delete_nand_save_async(unsigned long long)
.fn delete_nand_save_async__Q23ipl12NandSDWorkerFUx, global
/* 81348F04 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348F08 | 38 80 00 09 */	li r4, 0x9
/* 81348F0C | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348F10 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348F14 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348F18 | 48 00 97 E0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_nand_save_async__Q23ipl12NandSDWorkerFUx

# .text:0xB30 | 0x81348F1C | size: 0x1C
# ipl::NandSDWorker::get_sd_save_size_async(unsigned long)
.fn get_sd_save_size_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F1C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F20 | 38 00 00 00 */	li r0, 0x0
/* 81348F24 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F28 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F2C | 38 80 00 0A */	li r4, 0xa
/* 81348F30 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F34 | 48 00 97 C4 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_save_size_async__Q23ipl12NandSDWorkerFUl

# .text:0xB4C | 0x81348F38 | size: 0x1C
# ipl::NandSDWorker::get_sd_app_size_async(unsigned long)
.fn get_sd_app_size_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F38 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F3C | 38 00 00 00 */	li r0, 0x0
/* 81348F40 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F44 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F48 | 38 80 00 19 */	li r4, 0x19
/* 81348F4C | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F50 | 48 00 97 A8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_app_size_async__Q23ipl12NandSDWorkerFUl

# .text:0xB68 | 0x81348F54 | size: 0x1C
# ipl::NandSDWorker::delete_sd_save_async(unsigned long)
.fn delete_sd_save_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F54 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F58 | 38 00 00 00 */	li r0, 0x0
/* 81348F5C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F60 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F64 | 38 80 00 0B */	li r4, 0xb
/* 81348F68 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F6C | 48 00 97 8C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_sd_save_async__Q23ipl12NandSDWorkerFUl

# .text:0xB84 | 0x81348F70 | size: 0x1C
# ipl::NandSDWorker::delete_sd_app_async(unsigned long)
.fn delete_sd_app_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F70 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F74 | 38 00 00 00 */	li r0, 0x0
/* 81348F78 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F7C | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F80 | 38 80 00 18 */	li r4, 0x18
/* 81348F84 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F88 | 48 00 97 70 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_sd_app_async__Q23ipl12NandSDWorkerFUl

# .text:0xBA0 | 0x81348F8C | size: 0x8
# ipl::NandSDWorker::initialize_nand_async()
.fn initialize_nand_async__Q23ipl12NandSDWorkerFv, global
/* 81348F8C | 38 80 00 0C */	li r4, 0xc
/* 81348F90 | 48 00 97 68 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn initialize_nand_async__Q23ipl12NandSDWorkerFv

# .text:0xBA8 | 0x81348F94 | size: 0x8
# ipl::NandSDWorker::get_nand_user_free_area_async()
.fn get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv, global
/* 81348F94 | 38 80 00 0D */	li r4, 0xd
/* 81348F98 | 48 00 97 60 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv

# .text:0xBB0 | 0x81348F9C | size: 0x18
# ipl::NandSDWorker::copy_nand_save_to_sd_async(unsigned long long)
.fn copy_nand_save_to_sd_async__Q23ipl12NandSDWorkerFUx, global
/* 81348F9C | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348FA0 | 38 80 00 0E */	li r4, 0xe
/* 81348FA4 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81348FA8 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348FAC | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348FB0 | 48 00 97 48 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_nand_save_to_sd_async__Q23ipl12NandSDWorkerFUx

# .text:0xBC8 | 0x81348FB4 | size: 0x1C
# ipl::NandSDWorker::copy_sd_save_to_nand_async(unsigned long)
.fn copy_sd_save_to_nand_async__Q23ipl12NandSDWorkerFUl, global
/* 81348FB4 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348FB8 | 38 00 00 00 */	li r0, 0x0
/* 81348FBC | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348FC0 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348FC4 | 38 80 00 0F */	li r4, 0xf
/* 81348FC8 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348FCC | 48 00 97 2C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_sd_save_to_nand_async__Q23ipl12NandSDWorkerFUl

# .text:0xBE4 | 0x81348FD0 | size: 0x8
# ipl::NandSDWorker::format_sd_async()
.fn format_sd_async__Q23ipl12NandSDWorkerFv, global
/* 81348FD0 | 38 80 00 10 */	li r4, 0x10
/* 81348FD4 | 48 00 97 24 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn format_sd_async__Q23ipl12NandSDWorkerFv

# .text:0xBEC | 0x81348FD8 | size: 0x14
# ipl::NandSDWorker::get_sd_free_area_async()
.fn get_sd_free_area_async__Q23ipl12NandSDWorkerFv, global
/* 81348FD8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348FDC | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348FE0 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348FE4 | 38 80 00 11 */	li r4, 0x11
/* 81348FE8 | 48 00 97 10 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_free_area_async__Q23ipl12NandSDWorkerFv

# .text:0xC00 | 0x81348FEC | size: 0x14
# ipl::NandSDWorker::list_nand_app_async(unsigned long long*)
.fn list_nand_app_async__Q23ipl12NandSDWorkerFPUx, global
/* 81348FEC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348FF0 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81348FF4 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348FF8 | 38 80 00 12 */	li r4, 0x12
/* 81348FFC | 48 00 96 FC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_nand_app_async__Q23ipl12NandSDWorkerFPUx

# .text:0xC14 | 0x81349000 | size: 0x20
.fn iplNandSD_81349000, global
/* 81349000 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81349004 | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81349008 | 90 86 EA 38 */	stw r4, -0x15c8(r6)
/* 8134900C | 38 80 00 2D */	li r4, 0x2d
/* 81349010 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81349014 | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81349018 | 90 A6 EA 3C */	stw r5, -0x15c4(r6)
/* 8134901C | 48 00 96 DC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349000

# .text:0xC34 | 0x81349020 | size: 0x30
# ipl::NandSDWorker::get_nand_app_thumbnail_async(unsigned long long, void*, ipl::channel::SChanMgrMetaHeader*)
.fn get_nand_app_thumbnail_async__Q23ipl12NandSDWorkerFUxPvPQ33ipl7channel18SChanMgrMetaHeader, global
/* 81349020 | 81 23 00 00 */	lwz r9, 0x0(r3)
/* 81349024 | 38 80 00 13 */	li r4, 0x13
/* 81349028 | 3D 29 00 04 */	addis r9, r9, 0x4
/* 8134902C | 90 C9 EA 4C */	stw r6, -0x15b4(r9)
/* 81349030 | 90 A9 EA 48 */	stw r5, -0x15b8(r9)
/* 81349034 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349038 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134903C | 90 E5 EA 38 */	stw r7, -0x15c8(r5)
/* 81349040 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349044 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349048 | 91 05 EA 3C */	stw r8, -0x15c4(r5)
/* 8134904C | 48 00 96 AC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_app_thumbnail_async__Q23ipl12NandSDWorkerFUxPvPQ33ipl7channel18SChanMgrMetaHeader

# .text:0xC64 | 0x81349050 | size: 0x28
# ipl::NandSDWorker::delete_nand_app_async(unsigned long long)
.fn delete_nand_app_async__Q23ipl12NandSDWorkerFUx, global
/* 81349050 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81349054 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81349058 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134905C | 90 C4 EA 4C */	stw r6, -0x15b4(r4)
/* 81349060 | 90 A4 EA 48 */	stw r5, -0x15b8(r4)
/* 81349064 | 41 82 00 0C */	beq .L_81349070
/* 81349068 | 38 80 00 30 */	li r4, 0x30
/* 8134906C | 48 00 96 8C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.L_81349070:
/* 81349070 | 38 80 00 14 */	li r4, 0x14
/* 81349074 | 48 00 96 84 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_nand_app_async__Q23ipl12NandSDWorkerFUx

# .text:0xC8C | 0x81349078 | size: 0x20
# ipl::NandSDWorker::copy_nand_app_to_sd_async(unsigned long long)
.fn copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx, global
/* 81349078 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8134907C | 38 00 00 00 */	li r0, 0x0
/* 81349080 | 38 80 00 15 */	li r4, 0x15
/* 81349084 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81349088 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 8134908C | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81349090 | 90 0D A6 9C */	stw r0, lbl_816986DC@sda21(r0)
/* 81349094 | 48 00 96 64 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx

# .text:0xCAC | 0x81349098 | size: 0x30
# ipl::NandSDWorker::copy_sd_app_to_nand_async(unsigned long)
.fn copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl, global
/* 81349098 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134909C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813490A0 | 38 00 00 00 */	li r0, 0x0
/* 813490A4 | 3C A6 00 04 */	addis r5, r6, 0x4
/* 813490A8 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 813490AC | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 813490B0 | 90 0D A6 9C */	stw r0, lbl_816986DC@sda21(r0)
/* 813490B4 | 41 82 00 0C */	beq .L_813490C0
/* 813490B8 | 38 80 00 2F */	li r4, 0x2f
/* 813490BC | 48 00 96 3C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.L_813490C0:
/* 813490C0 | 38 80 00 16 */	li r4, 0x16
/* 813490C4 | 48 00 96 34 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl

# .text:0xCDC | 0x813490C8 | size: 0x18
# ipl::NandSDWorker::nocopy_exist_nand_save_async(unsigned long long)
.fn nocopy_exist_nand_save_async__Q23ipl12NandSDWorkerFUx, global
/* 813490C8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813490CC | 38 80 00 1C */	li r4, 0x1c
/* 813490D0 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 813490D4 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813490D8 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813490DC | 48 00 96 1C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nocopy_exist_nand_save_async__Q23ipl12NandSDWorkerFUx

# .text:0xCF4 | 0x813490E0 | size: 0x18
# ipl::NandSDWorker::nand_save_exist_async(unsigned long long)
.fn nand_save_exist_async__Q23ipl12NandSDWorkerFUx, global
/* 813490E0 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813490E4 | 38 80 00 1D */	li r4, 0x1d
/* 813490E8 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 813490EC | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813490F0 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813490F4 | 48 00 96 04 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nand_save_exist_async__Q23ipl12NandSDWorkerFUx

# .text:0xD0C | 0x813490F8 | size: 0x1C
# ipl::NandSDWorker::nand_save_exist_lo_async(unsigned long)
.fn nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl, global
/* 813490F8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813490FC | 38 00 00 00 */	li r0, 0x0
/* 81349100 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349104 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349108 | 38 80 00 1E */	li r4, 0x1e
/* 8134910C | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349110 | 48 00 95 E8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl

# .text:0xD28 | 0x81349114 | size: 0x18
# ipl::NandSDWorker::nand_app_exist_async(unsigned long long)
.fn nand_app_exist_async__Q23ipl12NandSDWorkerFUx, global
/* 81349114 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81349118 | 38 80 00 1F */	li r4, 0x1f
/* 8134911C | 3C E7 00 04 */	addis r7, r7, 0x4
/* 81349120 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81349124 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81349128 | 48 00 95 D0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nand_app_exist_async__Q23ipl12NandSDWorkerFUx

# .text:0xD40 | 0x8134912C | size: 0x1C
# ipl::NandSDWorker::sd_save_exist_async(unsigned long)
.fn sd_save_exist_async__Q23ipl12NandSDWorkerFUl, global
/* 8134912C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349130 | 38 00 00 00 */	li r0, 0x0
/* 81349134 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349138 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 8134913C | 38 80 00 20 */	li r4, 0x20
/* 81349140 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349144 | 48 00 95 B4 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn sd_save_exist_async__Q23ipl12NandSDWorkerFUl

# .text:0xD5C | 0x81349148 | size: 0x1C
# ipl::NandSDWorker::sd_app_exist_async(unsigned long)
.fn sd_app_exist_async__Q23ipl12NandSDWorkerFUl, global
/* 81349148 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134914C | 38 00 00 00 */	li r0, 0x0
/* 81349150 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349154 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349158 | 38 80 00 21 */	li r4, 0x21
/* 8134915C | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349160 | 48 00 95 98 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn sd_app_exist_async__Q23ipl12NandSDWorkerFUl

# .text:0xD78 | 0x81349164 | size: 0x1C
.fn iplNandSD_81349164, global
/* 81349164 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349168 | 38 00 00 00 */	li r0, 0x0
/* 8134916C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349170 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349174 | 38 80 00 22 */	li r4, 0x22
/* 81349178 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 8134917C | 48 00 95 7C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349164

# .text:0xD94 | 0x81349180 | size: 0x18
.fn iplNandSD_81349180, global
/* 81349180 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81349184 | 38 80 00 23 */	li r4, 0x23
/* 81349188 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 8134918C | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81349190 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81349194 | 48 00 95 64 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349180

# .text:0xDAC | 0x81349198 | size: 0x1C
.fn iplNandSD_81349198, global
/* 81349198 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134919C | 38 00 00 00 */	li r0, 0x0
/* 813491A0 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 813491A4 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 813491A8 | 38 80 00 24 */	li r4, 0x24
/* 813491AC | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 813491B0 | 48 00 95 48 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349198

# .text:0xDC8 | 0x813491B4 | size: 0x18
.fn iplNandSD_813491B4, global
/* 813491B4 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813491B8 | 38 80 00 27 */	li r4, 0x27
/* 813491BC | 3C E7 00 04 */	addis r7, r7, 0x4
/* 813491C0 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813491C4 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813491C8 | 48 00 95 30 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_813491B4

# .text:0xDE0 | 0x813491CC | size: 0x1C
.fn iplNandSD_813491CC, global
/* 813491CC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813491D0 | 38 00 00 00 */	li r0, 0x0
/* 813491D4 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 813491D8 | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 813491DC | 38 80 00 28 */	li r4, 0x28
/* 813491E0 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 813491E4 | 48 00 95 14 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_813491CC

# .text:0xDFC | 0x813491E8 | size: 0x18
.fn iplNandSD_813491E8, global
/* 813491E8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813491EC | 38 80 00 25 */	li r4, 0x25
/* 813491F0 | 3C E7 00 04 */	addis r7, r7, 0x4
/* 813491F4 | 90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813491F8 | 90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813491FC | 48 00 94 FC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_813491E8

# .text:0xE14 | 0x81349200 | size: 0x1C
.fn iplNandSD_81349200, global
/* 81349200 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349204 | 38 00 00 00 */	li r0, 0x0
/* 81349208 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134920C | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349210 | 38 80 00 26 */	li r4, 0x26
/* 81349214 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349218 | 48 00 94 E0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349200

# .text:0xE30 | 0x8134921C | size: 0x14
.fn iplNandSD_8134921C, global
/* 8134921C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349220 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349224 | 90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81349228 | 38 80 00 32 */	li r4, 0x32
/* 8134922C | 48 00 94 CC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_8134921C

# .text:0xE44 | 0x81349230 | size: 0x1C
.fn iplNandSD_81349230, global
/* 81349230 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349234 | 38 00 00 00 */	li r0, 0x0
/* 81349238 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134923C | 90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349240 | 38 80 00 33 */	li r4, 0x33
/* 81349244 | 90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349248 | 48 00 94 B0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349230

# .text:0xE60 | 0x8134924C | size: 0x48
# ipl::NandSDWorker::is_disk_or_user_nand_app(unsigned long long)
.fn is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx, global
/* 8134924C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81349250 | 7C 08 02 A6 */	mflr r0
/* 81349254 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81349258 | 3C 03 FF FF */	subis r0, r3, 0x1
/* 8134925C | 28 00 00 00 */	cmplwi r0, 0x0
/* 81349260 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81349264 | 3B E0 00 00 */	li r31, 0x0
/* 81349268 | 41 82 00 10 */	beq .L_81349278
/* 8134926C | 48 00 00 29 */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 81349270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81349274 | 41 82 00 08 */	beq .L_8134927C
.L_81349278:
/* 81349278 | 3B E0 00 01 */	li r31, 0x1
.L_8134927C:
/* 8134927C | 7F E3 FB 78 */	mr r3, r31
/* 81349280 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81349284 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81349288 | 7C 08 03 A6 */	mtlr r0
/* 8134928C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81349290 | 4E 80 00 20 */	blr
.endfn is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx

# .text:0xEA8 | 0x81349294 | size: 0x68
# ipl::NandSDWorker::is_user_nand_app(unsigned long long)
.fn is_user_nand_app__Q23ipl12NandSDWorkerFUx, global
/* 81349294 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81349298 | 7C 08 02 A6 */	mflr r0
/* 8134929C | 3C C3 FF FF */	subis r6, r3, 0x1
/* 813492A0 | 38 A0 00 00 */	li r5, 0x0
/* 813492A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813492A8 | 28 06 00 07 */	cmplwi r6, 0x7
/* 813492AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813492B0 | 3B E0 00 00 */	li r31, 0x0
/* 813492B4 | 41 81 00 18 */	bgt .L_813492CC
/* 813492B8 | 38 00 00 01 */	li r0, 0x1
/* 813492BC | 7C 00 30 30 */	slw r0, r0, r6
/* 813492C0 | 70 00 00 D3 */	andi. r0, r0, 0xd3
/* 813492C4 | 41 82 00 08 */	beq .L_813492CC
/* 813492C8 | 38 A0 00 01 */	li r5, 0x1
.L_813492CC:
/* 813492CC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813492D0 | 41 82 00 14 */	beq .L_813492E4
/* 813492D4 | 48 00 00 29 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 813492D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813492DC | 40 82 00 08 */	bne .L_813492E4
/* 813492E0 | 3B E0 00 01 */	li r31, 0x1
.L_813492E4:
/* 813492E4 | 7F E3 FB 78 */	mr r3, r31
/* 813492E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813492EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813492F0 | 7C 08 03 A6 */	mtlr r0
/* 813492F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813492F8 | 4E 80 00 20 */	blr
.endfn is_user_nand_app__Q23ipl12NandSDWorkerFUx

# .text:0xF10 | 0x813492FC | size: 0x48
# ipl::NandSDWorker::is_data_only_title(unsigned long long)
.fn is_data_only_title__Q23ipl12NandSDWorkerFUx, global
/* 813492FC | 38 00 FF FF */	li r0, -0x1
/* 81349300 | 38 60 00 00 */	li r3, 0x0
/* 81349304 | 7C 80 00 38 */	and r0, r4, r0
/* 81349308 | 54 00 46 3E */	srwi r0, r0, 24
/* 8134930C | 28 00 00 20 */	cmplwi r0, 0x20
/* 81349310 | 4D 80 00 20 */	bltlr
/* 81349314 | 28 00 00 7E */	cmplwi r0, 0x7e
/* 81349318 | 4D 81 00 20 */	bgtlr
/* 8134931C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81349320 | 41 80 00 0C */	blt .L_8134932C
/* 81349324 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 81349328 | 4C 81 00 20 */	blelr
.L_8134932C:
/* 8134932C | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81349330 | 41 80 00 0C */	blt .L_8134933C
/* 81349334 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 81349338 | 4C 81 00 20 */	blelr
.L_8134933C:
/* 8134933C | 38 60 00 01 */	li r3, 0x1
/* 81349340 | 4E 80 00 20 */	blr
.endfn is_data_only_title__Q23ipl12NandSDWorkerFUx

# .text:0xF58 | 0x81349344 | size: 0x64
# ipl::NandSDWorker::is_available_data_only_titleidlo(unsigned long)
.fn is_available_data_only_titleidlo__Q23ipl12NandSDWorkerFUl, global
/* 81349344 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81349348 | 7C 08 02 A6 */	mflr r0
/* 8134934C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81349350 | 54 60 00 0F */	clrrwi. r0, r3, 24
/* 81349354 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81349358 | 3B E0 00 00 */	li r31, 0x0
/* 8134935C | 41 82 00 34 */	beq .L_81349390
/* 81349360 | 54 60 02 1F */	rlwinm. r0, r3, 0, 8, 15
/* 81349364 | 41 82 00 2C */	beq .L_81349390
/* 81349368 | 54 60 04 2F */	rlwinm. r0, r3, 0, 16, 23
/* 8134936C | 41 82 00 24 */	beq .L_81349390
/* 81349370 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81349374 | 41 82 00 1C */	beq .L_81349390
/* 81349378 | 7C 64 1B 78 */	mr r4, r3
/* 8134937C | 38 60 00 00 */	li r3, 0x0
/* 81349380 | 4B FF FF 7D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81349384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81349388 | 41 82 00 08 */	beq .L_81349390
/* 8134938C | 3B E0 00 01 */	li r31, 0x1
.L_81349390:
/* 81349390 | 7F E3 FB 78 */	mr r3, r31
/* 81349394 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81349398 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134939C | 7C 08 03 A6 */	mtlr r0
/* 813493A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813493A4 | 4E 80 00 20 */	blr
.endfn is_available_data_only_titleidlo__Q23ipl12NandSDWorkerFUl

# .text:0xFBC | 0x813493A8 | size: 0x8C
# ipl::NandSDWorker::get_sd_save_path(unsigned long long, char*)
.fn get_sd_save_path__Q23ipl12NandSDWorkerFUxPc, global
/* 813493A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813493AC | 7C 08 02 A6 */	mflr r0
/* 813493B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813493B4 | 38 00 FF FF */	li r0, -0x1
/* 813493B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813493BC | 7C 9F 00 38 */	and r31, r4, r0
/* 813493C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813493C4 | 7C BE 2B 78 */	mr r30, r5
/* 813493C8 | 4B FF FF 35 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 813493CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813493D0 | 41 82 00 24 */	beq .L_813493F4
/* 813493D4 | 3C A0 81 63 */	lis r5, lbl_81635C0E@ha
/* 813493D8 | 7F C3 F3 78 */	mr r3, r30
/* 813493DC | 7F E6 FB 78 */	mr r6, r31
/* 813493E0 | 38 80 00 40 */	li r4, 0x40
/* 813493E4 | 38 A5 5C 0E */	addi r5, r5, lbl_81635C0E@l
/* 813493E8 | 4C C6 31 82 */	crclr cr1eq
/* 813493EC | 48 2B 75 BD */	bl snprintf
/* 813493F0 | 48 00 00 2C */	b .L_8134941C
.L_813493F4:
/* 813493F4 | 3C A0 81 63 */	lis r5, lbl_81635C2F@ha
/* 813493F8 | 7F C3 F3 78 */	mr r3, r30
/* 813493FC | 38 A5 5C 2F */	addi r5, r5, lbl_81635C2F@l
/* 81349400 | 57 E6 46 3E */	srwi r6, r31, 24
/* 81349404 | 57 E7 86 3E */	extrwi r7, r31, 8, 8
/* 81349408 | 57 E8 C6 3E */	extrwi r8, r31, 8, 16
/* 8134940C | 57 E9 06 3E */	clrlwi r9, r31, 24
/* 81349410 | 38 80 00 40 */	li r4, 0x40
/* 81349414 | 4C C6 31 82 */	crclr cr1eq
/* 81349418 | 48 2B 75 91 */	bl snprintf
.L_8134941C:
/* 8134941C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81349420 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81349424 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81349428 | 7C 08 03 A6 */	mtlr r0
/* 8134942C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81349430 | 4E 80 00 20 */	blr
.endfn get_sd_save_path__Q23ipl12NandSDWorkerFUxPc

# .text:0x1048 | 0x81349434 | size: 0x30
# ipl::NandSDWorker::get_sd_app_path(unsigned long long, char*)
.fn get_sd_app_path__Q23ipl12NandSDWorkerFUxPc, global
/* 81349434 | 38 00 FF FF */	li r0, -0x1
/* 81349438 | 3C C0 81 63 */	lis r6, lbl_81635C54@ha
/* 8134943C | 7C 80 00 38 */	and r0, r4, r0
/* 81349440 | 7C A3 2B 78 */	mr r3, r5
/* 81349444 | 38 A6 5C 54 */	addi r5, r6, lbl_81635C54@l
/* 81349448 | 38 80 00 40 */	li r4, 0x40
/* 8134944C | 54 06 46 3E */	srwi r6, r0, 24
/* 81349450 | 54 07 86 3E */	extrwi r7, r0, 8, 8
/* 81349454 | 54 08 C6 3E */	extrwi r8, r0, 8, 16
/* 81349458 | 54 09 06 3E */	clrlwi r9, r0, 24
/* 8134945C | 4C C6 31 82 */	crclr cr1eq
/* 81349460 | 48 2B 75 48 */	b snprintf
.endfn get_sd_app_path__Q23ipl12NandSDWorkerFUxPc

# .text:0x1078 | 0x81349464 | size: 0x38
# ipl::NandSDWorker::gamecode_to_titleid_lo(const char*)
.fn gamecode_to_titleid_lo__Q23ipl12NandSDWorkerFPCc, global
/* 81349464 | 88 83 00 02 */	lbz r4, 0x2(r3)
/* 81349468 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8134946C | 88 A3 00 03 */	lbz r5, 0x3(r3)
/* 81349470 | 7C 84 07 74 */	extsb r4, r4
/* 81349474 | 7C 00 07 74 */	extsb r0, r0
/* 81349478 | 88 63 00 00 */	lbz r3, 0x0(r3)
/* 8134947C | 7C A6 07 74 */	extsb r6, r5
/* 81349480 | 54 85 40 2E */	slwi r5, r4, 8
/* 81349484 | 54 64 C0 0E */	slwi r4, r3, 24
/* 81349488 | 54 00 80 1E */	slwi r0, r0, 16
/* 8134948C | 7C 66 2A 14 */	add r3, r6, r5
/* 81349490 | 7C 04 02 14 */	add r0, r4, r0
/* 81349494 | 7C 63 02 14 */	add r3, r3, r0
/* 81349498 | 4E 80 00 20 */	blr
.endfn gamecode_to_titleid_lo__Q23ipl12NandSDWorkerFPCc

# .text:0x10B0 | 0x8134949C | size: 0x3C
# ipl::NandSDWorker::thread_main(void*)
.fn thread_main__Q23ipl12NandSDWorkerFPv, global
/* 8134949C | 7C 60 1B 78 */	mr r0, r3
/* 813494A0 | 38 60 00 04 */	li r3, 0x4
/* 813494A4 | 64 63 00 04 */	oris r3, r3, 0x4
/* 813494A8 | 7C 72 E3 A6 */	mtspr GQR2, r3
/* 813494AC | 38 60 00 05 */	li r3, 0x5
/* 813494B0 | 64 63 00 05 */	oris r3, r3, 0x5
/* 813494B4 | 7C 73 E3 A6 */	mtspr GQR3, r3
/* 813494B8 | 38 60 00 06 */	li r3, 0x6
/* 813494BC | 64 63 00 06 */	oris r3, r3, 0x6
/* 813494C0 | 7C 74 E3 A6 */	mtspr GQR4, r3
/* 813494C4 | 38 60 00 07 */	li r3, 0x7
/* 813494C8 | 64 63 00 07 */	oris r3, r3, 0x7
/* 813494CC | 7C 75 E3 A6 */	mtspr GQR5, r3
/* 813494D0 | 7C 03 03 78 */	mr r3, r0
/* 813494D4 | 48 00 00 E4 */	b run__Q23ipl12NandSDWorkerFv
.endfn thread_main__Q23ipl12NandSDWorkerFPv

# .text:0x10EC | 0x813494D8 | size: 0xE0
# ipl::NandSDWorker::delete_meta_file(unsigned long long)
.fn delete_meta_file__Q23ipl12NandSDWorkerFUx, global
/* 813494D8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813494DC | 7C 08 02 A6 */	mflr r0
/* 813494E0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813494E4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813494E8 | 48 2A FF E1 */	bl _savegpr_29
/* 813494EC | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813494F0 | 7C C4 33 78 */	mr r4, r6
/* 813494F4 | 38 00 FF FF */	li r0, -0x1
/* 813494F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813494FC | 7C 87 00 38 */	and r7, r4, r0
/* 81349500 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81349504 | 7C A6 2B 78 */	mr r6, r5
/* 81349508 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134950C | 38 BF 01 76 */	addi r5, r31, 0x176
/* 81349510 | 38 80 00 40 */	li r4, 0x40
/* 81349514 | 4C C6 31 82 */	crclr cr1eq
/* 81349518 | 48 2B 74 91 */	bl snprintf
/* 8134951C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81349520 | 48 01 6B 89 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 81349524 | 7C 7E 1B 78 */	mr r30, r3
/* 81349528 | 7F A3 EB 78 */	mr r3, r29
/* 8134952C | 7F C4 F3 78 */	mr r4, r30
/* 81349530 | 38 A0 00 00 */	li r5, 0x0
/* 81349534 | 48 00 A7 25 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81349538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134953C | 41 82 00 0C */	beq .L_81349548
/* 81349540 | 38 60 FF FB */	li r3, -0x5
/* 81349544 | 48 00 00 5C */	b .L_813495A0
.L_81349548:
/* 81349548 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134954C | 40 82 00 18 */	bne .L_81349564
/* 81349550 | 38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 81349554 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81349558 | 4C C6 31 82 */	crclr cr1eq
/* 8134955C | 48 1E 51 45 */	bl OSReport
/* 81349560 | 48 00 00 3C */	b .L_8134959C
.L_81349564:
/* 81349564 | 2C 1E FF F4 */	cmpwi r30, -0xc
/* 81349568 | 40 82 00 18 */	bne .L_81349580
/* 8134956C | 38 7F 02 0F */	addi r3, r31, 0x20f
/* 81349570 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81349574 | 4C C6 31 82 */	crclr cr1eq
/* 81349578 | 48 1E 51 29 */	bl OSReport
/* 8134957C | 48 00 00 20 */	b .L_8134959C
.L_81349580:
/* 81349580 | 7F C5 F3 78 */	mr r5, r30
/* 81349584 | 38 7F 02 2D */	addi r3, r31, 0x22d
/* 81349588 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134958C | 4C C6 31 82 */	crclr cr1eq
/* 81349590 | 48 1E 51 11 */	bl OSReport
/* 81349594 | 38 60 FF FE */	li r3, -0x2
/* 81349598 | 48 00 00 08 */	b .L_813495A0
.L_8134959C:
/* 8134959C | 38 60 00 00 */	li r3, 0x0
.L_813495A0:
/* 813495A0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813495A4 | 48 2A FF 71 */	bl _restgpr_29
/* 813495A8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813495AC | 7C 08 03 A6 */	mtlr r0
/* 813495B0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813495B4 | 4E 80 00 20 */	blr
.endfn delete_meta_file__Q23ipl12NandSDWorkerFUx

# .text:0x11CC | 0x813495B8 | size: 0x8BC
# ipl::NandSDWorker::run()
.fn run__Q23ipl12NandSDWorkerFv, global
/* 813495B8 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813495BC | 7C 08 02 A6 */	mflr r0
/* 813495C0 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813495C4 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813495C8 | 48 2A FE E5 */	bl _savegpr_22
/* 813495CC | 3F 20 81 63 */	lis r25, lbl_81635A88@ha
/* 813495D0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813495D4 | 7C 76 1B 78 */	mr r22, r3
/* 813495D8 | 3B 00 00 00 */	li r24, 0x0
/* 813495DC | 3B 39 5A 88 */	addi r25, r25, lbl_81635A88@l
/* 813495E0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813495E4 | 3F 80 00 01 */	lis r28, 0x1
/* 813495E8 | 3B E0 00 00 */	li r31, 0x0
/* 813495EC | 3B C0 FF FE */	li r30, -0x2
/* 813495F0 | 3B 60 FF FF */	li r27, -0x1
/* 813495F4 | 3F 40 81 63 */	lis r26, jumptable_81635DB0@ha
.L_813495F8:
/* 813495F8 | 7E C3 B3 78 */	mr r3, r22
/* 813495FC | 48 00 91 69 */	bl wait_work__Q23ipl12NandSDWorkerFv
/* 81349600 | 28 03 00 33 */	cmplwi r3, 0x33
/* 81349604 | 41 81 08 00 */	bgt .L_81349E04
/* 81349608 | 38 9A 5D B0 */	addi r4, r26, jumptable_81635DB0@l
/* 8134960C | 54 60 10 3A */	slwi r0, r3, 2
/* 81349610 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81349614 | 7C 89 03 A6 */	mtctr r4
/* 81349618 | 4E 80 04 20 */	bctr
.L_8134961C:
/* 8134961C | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81349620 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349624 | 41 82 00 50 */	beq .L_81349674
/* 81349628 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 8134962C | 38 80 00 01 */	li r4, 0x1
/* 81349630 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81349634 | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 81349638 | 7C 03 07 74 */	extsb r3, r0
/* 8134963C | 48 29 EE 01 */	bl fn_815E843C
/* 81349640 | 7C 64 1B 78 */	mr r4, r3
/* 81349644 | 38 79 02 56 */	addi r3, r25, 0x256
/* 81349648 | 4C C6 31 82 */	crclr cr1eq
/* 8134964C | 48 1E 50 55 */	bl OSReport
/* 81349650 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349654 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81349658 | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134965C | 7C 03 07 74 */	extsb r3, r0
/* 81349660 | 48 29 E8 A1 */	bl fn_815E7F00
/* 81349664 | 7C 64 1B 78 */	mr r4, r3
/* 81349668 | 38 79 02 75 */	addi r3, r25, 0x275
/* 8134966C | 4C C6 31 82 */	crclr cr1eq
/* 81349670 | 48 1E 50 31 */	bl OSReport
.L_81349674:
/* 81349674 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349678 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134967C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81349680 | 48 21 10 A5 */	bl fn_8155A724
/* 81349684 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349688 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134968C | 80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 81349690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81349694 | 41 82 00 08 */	beq .L_8134969C
/* 81349698 | 48 21 1E 25 */	bl fn_8155B4BC
.L_8134969C:
/* 8134969C | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813496A0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813496A4 | 80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 813496A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813496AC | 41 82 00 08 */	beq .L_813496B4
/* 813496B0 | 48 21 1E 0D */	bl fn_8155B4BC
.L_813496B4:
/* 813496B4 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813496B8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813496BC | 80 63 E6 9C */	lwz r3, -0x1964(r3)
/* 813496C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813496C4 | 41 82 00 08 */	beq .L_813496CC
/* 813496C8 | 48 21 10 5D */	bl fn_8155A724
.L_813496CC:
/* 813496CC | 3B 00 00 01 */	li r24, 0x1
/* 813496D0 | 48 00 07 34 */	b .L_81349E04
.L_813496D4:
/* 813496D4 | 7E C3 B3 78 */	mr r3, r22
/* 813496D8 | 48 00 07 9D */	bl do_startup__Q23ipl12NandSDWorkerFv
/* 813496DC | 48 00 07 28 */	b .L_81349E04
.L_813496E0:
/* 813496E0 | 7E C3 B3 78 */	mr r3, r22
/* 813496E4 | 48 00 12 55 */	bl do_mount_sd__Q23ipl12NandSDWorkerFv
/* 813496E8 | 80 6D A6 98 */	lwz r3, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 813496EC | 38 03 FF FD */	subi r0, r3, 0x3
/* 813496F0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813496F4 | 41 81 00 18 */	bgt .L_8134970C
/* 813496F8 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813496FC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349700 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 81349704 | 90 03 EA 5C */	stw r0, -0x15a4(r3)
/* 81349708 | 48 00 06 FC */	b .L_81349E04
.L_8134970C:
/* 8134970C | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349710 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349714 | 93 63 EA 5C */	stw r27, -0x15a4(r3)
/* 81349718 | 48 00 06 EC */	b .L_81349E04
.L_8134971C:
/* 8134971C | 7E C3 B3 78 */	mr r3, r22
/* 81349720 | 48 00 16 D1 */	bl do_list_nand_save__Q23ipl12NandSDWorkerFv
/* 81349724 | 48 00 06 E0 */	b .L_81349E04
.L_81349728:
/* 81349728 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 8134972C | 38 9C F0 A0 */	subi r4, r28, 0xf60
/* 81349730 | 38 A0 00 20 */	li r5, 0x20
/* 81349734 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81349738 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134973C | 48 21 10 19 */	bl fn_8155A754
/* 81349740 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349744 | 7C 77 1B 78 */	mr r23, r3
/* 81349748 | 7E C3 B3 78 */	mr r3, r22
/* 8134974C | 39 00 00 00 */	li r8, 0x0
/* 81349750 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349754 | 7E E7 BB 78 */	mr r7, r23
/* 81349758 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134975C | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349760 | 48 00 18 ED */	bl get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 81349764 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349768 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134976C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349770 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349774 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349778 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134977C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349780 | 40 82 00 14 */	bne .L_81349794
/* 81349784 | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 81349788 | 7E E4 BB 78 */	mr r4, r23
/* 8134978C | 38 BC F0 A0 */	subi r5, r28, 0xf60
/* 81349790 | 4B FE 6A A1 */	bl memcpy
.L_81349794:
/* 81349794 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349798 | 7E E4 BB 78 */	mr r4, r23
/* 8134979C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813497A0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813497A4 | 48 21 12 61 */	bl fn_8155AA04
/* 813497A8 | 48 00 06 5C */	b .L_81349E04
.L_813497AC:
/* 813497AC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497B0 | 7E C3 B3 78 */	mr r3, r22
/* 813497B4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813497B8 | 80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 813497BC | 48 00 9B 31 */	bl get_sd_save_list__Q23ipl12NandSDWorkerFPUl
/* 813497C0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497C4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813497C8 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813497CC | 48 00 06 38 */	b .L_81349E04
.L_813497D0:
/* 813497D0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497D4 | 7E C3 B3 78 */	mr r3, r22
/* 813497D8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813497DC | 80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 813497E0 | 48 00 9B 89 */	bl get_sd_app_list__Q23ipl12NandSDWorkerFPUl
/* 813497E4 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497E8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813497EC | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813497F0 | 48 00 06 14 */	b .L_81349E04
.L_813497F4:
/* 813497F4 | 7E C3 B3 78 */	mr r3, r22
/* 813497F8 | 48 00 1C 05 */	bl do_get_sd_save_banner__Q23ipl12NandSDWorkerFv
/* 813497FC | 48 00 06 08 */	b .L_81349E04
.L_81349800:
/* 81349800 | 7E C3 B3 78 */	mr r3, r22
/* 81349804 | 48 00 1D 59 */	bl do_get_sd_app_thumbnail__Q23ipl12NandSDWorkerFv
/* 81349808 | 48 00 05 FC */	b .L_81349E04
.L_8134980C:
/* 8134980C | 7E C3 B3 78 */	mr r3, r22
/* 81349810 | 48 00 1F 19 */	bl iplNandSD_8134B728
/* 81349814 | 48 00 05 F0 */	b .L_81349E04
.L_81349818:
/* 81349818 | 7E C3 B3 78 */	mr r3, r22
/* 8134981C | 48 00 21 01 */	bl iplNandSD_8134B91C
/* 81349820 | 48 00 05 E4 */	b .L_81349E04
.L_81349824:
/* 81349824 | 7E C3 B3 78 */	mr r3, r22
/* 81349828 | 48 00 24 39 */	bl iplNandSD_8134BC60
/* 8134982C | 48 00 05 D8 */	b .L_81349E04
.L_81349830:
/* 81349830 | 7E C3 B3 78 */	mr r3, r22
/* 81349834 | 48 00 26 9D */	bl iplNandSD_8134BED0
/* 81349838 | 48 00 05 CC */	b .L_81349E04
.L_8134983C:
/* 8134983C | 7E C3 B3 78 */	mr r3, r22
/* 81349840 | 48 00 2A 59 */	bl iplNandSD_8134C298
/* 81349844 | 48 00 05 C0 */	b .L_81349E04
.L_81349848:
/* 81349848 | 7E C3 B3 78 */	mr r3, r22
/* 8134984C | 48 00 2F ED */	bl iplNandSD_8134C838
/* 81349850 | 48 00 05 B4 */	b .L_81349E04
.L_81349854:
/* 81349854 | 7E C3 B3 78 */	mr r3, r22
/* 81349858 | 48 00 32 B1 */	bl do_get_nand_save_size__Q23ipl12NandSDWorkerFv
/* 8134985C | 48 00 05 A8 */	b .L_81349E04
.L_81349860:
/* 81349860 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349864 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 81349868 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134986C | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349870 | 4B FF FA 8D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81349874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81349878 | 41 82 00 78 */	beq .L_813498F0
/* 8134987C | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349880 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81349884 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349888 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134988C | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349890 | 48 01 D0 B1 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 81349894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81349898 | 41 82 00 24 */	beq .L_813498BC
/* 8134989C | 7C 64 1B 78 */	mr r4, r3
/* 813498A0 | 38 79 02 93 */	addi r3, r25, 0x293
/* 813498A4 | 4C C6 31 82 */	crclr cr1eq
/* 813498A8 | 48 1E 4D F9 */	bl OSReport
/* 813498AC | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813498B0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813498B4 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 813498B8 | 48 00 00 10 */	b .L_813498C8
.L_813498BC:
/* 813498BC | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813498C0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813498C4 | 93 E3 EA 24 */	stw r31, -0x15dc(r3)
.L_813498C8:
/* 813498C8 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813498CC | 7E C3 B3 78 */	mr r3, r22
/* 813498D0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813498D4 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 813498D8 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 813498DC | 4B FF FB FD */	bl delete_meta_file__Q23ipl12NandSDWorkerFUx
/* 813498E0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813498E4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813498E8 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813498EC | 48 00 00 48 */	b .L_81349934
.L_813498F0:
/* 813498F0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 813498F4 | 7E C3 B3 78 */	mr r3, r22
/* 813498F8 | 38 E0 00 01 */	li r7, 0x1
/* 813498FC | 39 00 00 00 */	li r8, 0x0
/* 81349900 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349904 | 39 20 00 00 */	li r9, 0x0
/* 81349908 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134990C | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349910 | 48 00 9A D1 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 81349914 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349918 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134991C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349920 | 7E C3 B3 78 */	mr r3, r22
/* 81349924 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349928 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134992C | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349930 | 48 00 63 65 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
.L_81349934:
/* 81349934 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349938 | 3C A3 00 04 */	addis r5, r3, 0x4
/* 8134993C | 80 05 EA 24 */	lwz r0, -0x15dc(r5)
/* 81349940 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349944 | 40 82 04 C0 */	bne .L_81349E04
/* 81349948 | 80 85 EA 28 */	lwz r4, -0x15d8(r5)
/* 8134994C | 7E C3 B3 78 */	mr r3, r22
/* 81349950 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81349954 | 90 05 EA 28 */	stw r0, -0x15d8(r5)
/* 81349958 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 8134995C | 3C C4 00 04 */	addis r6, r4, 0x4
/* 81349960 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81349964 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81349968 | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134996C | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81349970 | 48 00 92 C1 */	bl delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81349974 | 48 00 04 90 */	b .L_81349E04
.L_81349978:
/* 81349978 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 8134997C | 7E C3 B3 78 */	mr r3, r22
/* 81349980 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349984 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349988 | 48 00 35 D5 */	bl get_sd_save_size__Q23ipl12NandSDWorkerFUl
/* 8134998C | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349990 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349994 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349998 | 48 00 04 6C */	b .L_81349E04
.L_8134999C:
/* 8134999C | 7E C3 B3 78 */	mr r3, r22
/* 813499A0 | 48 00 38 3D */	bl do_delete_sd_save__Q23ipl12NandSDWorkerFv
/* 813499A4 | 48 00 04 60 */	b .L_81349E04
.L_813499A8:
/* 813499A8 | 7E C3 B3 78 */	mr r3, r22
/* 813499AC | 48 00 39 05 */	bl do_delete_sd_app__Q23ipl12NandSDWorkerFv
/* 813499B0 | 48 00 04 54 */	b .L_81349E04
.L_813499B4:
/* 813499B4 | 7E C3 B3 78 */	mr r3, r22
/* 813499B8 | 48 00 39 CD */	bl do_initialize_nand__Q23ipl12NandSDWorkerFv
/* 813499BC | 48 00 04 48 */	b .L_81349E04
.L_813499C0:
/* 813499C0 | 7E C3 B3 78 */	mr r3, r22
/* 813499C4 | 48 00 44 C5 */	bl do_get_nand_user_free_area__Q23ipl12NandSDWorkerFv
/* 813499C8 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813499CC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813499D0 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 813499D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813499D8 | 40 80 04 2C */	bge .L_81349E04
/* 813499DC | 38 79 02 C2 */	addi r3, r25, 0x2c2
/* 813499E0 | 4C C6 31 82 */	crclr cr1eq
/* 813499E4 | 48 1E 4C BD */	bl OSReport
/* 813499E8 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 813499EC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813499F0 | 93 E3 EA 24 */	stw r31, -0x15dc(r3)
/* 813499F4 | 48 00 04 10 */	b .L_81349E04
.L_813499F8:
/* 813499F8 | 7E C3 B3 78 */	mr r3, r22
/* 813499FC | 48 00 47 55 */	bl do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv
/* 81349A00 | 48 00 04 04 */	b .L_81349E04
.L_81349A04:
/* 81349A04 | 7E C3 B3 78 */	mr r3, r22
/* 81349A08 | 48 00 53 B5 */	bl do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv
/* 81349A0C | 48 00 03 F8 */	b .L_81349E04
.L_81349A10:
/* 81349A10 | 7E C3 B3 78 */	mr r3, r22
/* 81349A14 | 48 00 60 1D */	bl do_format_sd__Q23ipl12NandSDWorkerFv
/* 81349A18 | 48 00 03 EC */	b .L_81349E04
.L_81349A1C:
/* 81349A1C | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349A20 | 7E C3 B3 78 */	mr r3, r22
/* 81349A24 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349A28 | 82 E4 EA 38 */	lwz r23, -0x15c8(r4)
/* 81349A2C | 48 00 61 79 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 81349A30 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81349A34 | 6F E6 80 00 */	xoris r6, r31, 0x8000
/* 81349A38 | 7C BF 20 10 */	subfc r5, r31, r4
/* 81349A3C | 7C C6 01 10 */	subfe r6, r6, r0
/* 81349A40 | 7C C0 01 10 */	subfe r6, r0, r0
/* 81349A44 | 7C C6 00 D1 */	neg. r6, r6
/* 81349A48 | 40 82 00 1C */	bne .L_81349A64
/* 81349A4C | 80 B6 00 00 */	lwz r5, 0x0(r22)
/* 81349A50 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349A54 | 93 E5 EA 24 */	stw r31, -0x15dc(r5)
/* 81349A58 | 90 97 00 04 */	stw r4, 0x4(r23)
/* 81349A5C | 90 77 00 00 */	stw r3, 0x0(r23)
/* 81349A60 | 48 00 03 A4 */	b .L_81349E04
.L_81349A64:
/* 81349A64 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349A68 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349A6C | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 81349A70 | 93 F7 00 04 */	stw r31, 0x4(r23)
/* 81349A74 | 93 F7 00 00 */	stw r31, 0x0(r23)
/* 81349A78 | 48 00 03 8C */	b .L_81349E04
.L_81349A7C:
/* 81349A7C | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349A80 | 7E C3 B3 78 */	mr r3, r22
/* 81349A84 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349A88 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349A8C | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349A90 | 48 00 64 19 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 81349A94 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349A98 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349A9C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349AA0 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349AA4 | 3C C3 00 04 */	addis r6, r3, 0x4
/* 81349AA8 | 80 06 EA 24 */	lwz r0, -0x15dc(r6)
/* 81349AAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349AB0 | 40 82 03 54 */	bne .L_81349E04
/* 81349AB4 | 80 A6 EA 2C */	lwz r5, -0x15d4(r6)
/* 81349AB8 | 7E C3 B3 78 */	mr r3, r22
/* 81349ABC | 38 80 FF FF */	li r4, -0x1
/* 81349AC0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 81349AC4 | 90 06 EA 2C */	stw r0, -0x15d4(r6)
/* 81349AC8 | 48 00 7A DD */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
/* 81349ACC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349AD0 | 7E C3 B3 78 */	mr r3, r22
/* 81349AD4 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 81349AD8 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81349ADC | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81349AE0 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 81349AE4 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81349AE8 | 48 00 93 E1 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81349AEC | 48 00 03 18 */	b .L_81349E04
.L_81349AF0:
/* 81349AF0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349AF4 | 7E C3 B3 78 */	mr r3, r22
/* 81349AF8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349AFC | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349B00 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349B04 | 48 00 63 A5 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 81349B08 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349B0C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349B10 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349B14 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349B18 | 3C A3 00 04 */	addis r5, r3, 0x4
/* 81349B1C | 80 05 EA 24 */	lwz r0, -0x15dc(r5)
/* 81349B20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349B24 | 40 82 02 E0 */	bne .L_81349E04
/* 81349B28 | 80 85 EA 2C */	lwz r4, -0x15d4(r5)
/* 81349B2C | 7E C3 B3 78 */	mr r3, r22
/* 81349B30 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81349B34 | 90 05 EA 2C */	stw r0, -0x15d4(r5)
/* 81349B38 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349B3C | 3C C4 00 04 */	addis r6, r4, 0x4
/* 81349B40 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81349B44 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81349B48 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 81349B4C | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81349B50 | 48 00 93 79 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81349B54 | 48 00 02 B0 */	b .L_81349E04
.L_81349B58:
/* 81349B58 | 7E C3 B3 78 */	mr r3, r22
/* 81349B5C | 48 00 64 81 */	bl do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv
/* 81349B60 | 48 00 02 A4 */	b .L_81349E04
.L_81349B64:
/* 81349B64 | 7E C3 B3 78 */	mr r3, r22
/* 81349B68 | 38 80 00 00 */	li r4, 0x0
/* 81349B6C | 48 00 75 89 */	bl do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv
/* 81349B70 | 48 00 02 94 */	b .L_81349E04
.L_81349B74:
/* 81349B74 | 7E C3 B3 78 */	mr r3, r22
/* 81349B78 | 38 80 00 01 */	li r4, 0x1
/* 81349B7C | 48 00 75 79 */	bl do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv
/* 81349B80 | 48 00 02 84 */	b .L_81349E04
.L_81349B84:
/* 81349B84 | 7E C3 B3 78 */	mr r3, r22
/* 81349B88 | 48 00 85 A5 */	bl do_list_nand_app__Q23ipl12NandSDWorkerFv
/* 81349B8C | 48 00 02 78 */	b .L_81349E04
.L_81349B90:
/* 81349B90 | 7E C3 B3 78 */	mr r3, r22
/* 81349B94 | 48 00 2A DD */	bl iplNandSD_8134C670
/* 81349B98 | 48 00 02 6C */	b .L_81349E04
.L_81349B9C:
/* 81349B9C | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BA0 | 7E C3 B3 78 */	mr r3, r22
/* 81349BA4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BA8 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349BAC | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349BB0 | 80 E4 EA 38 */	lwz r7, -0x15c8(r4)
/* 81349BB4 | 81 04 EA 3C */	lwz r8, -0x15c4(r4)
/* 81349BB8 | 48 00 86 79 */	bl get_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUcPQ33ipl7channel18SChanMgrMetaHeader
/* 81349BBC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BC0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BC4 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349BC8 | 48 00 02 3C */	b .L_81349E04
.L_81349BCC:
/* 81349BCC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BD0 | 7E C3 B3 78 */	mr r3, r22
/* 81349BD4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BD8 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349BDC | 48 00 34 C1 */	bl get_sd_app_size__Q23ipl12NandSDWorkerFUl
/* 81349BE0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BE4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BE8 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349BEC | 48 00 02 18 */	b .L_81349E04
.L_81349BF0:
/* 81349BF0 | 7E C3 B3 78 */	mr r3, r22
/* 81349BF4 | 48 00 31 75 */	bl do_get_nand_app_size__Q23ipl12NandSDWorkerFv
/* 81349BF8 | 48 00 02 0C */	b .L_81349E04
.L_81349BFC:
/* 81349BFC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C00 | 7E C3 B3 78 */	mr r3, r22
/* 81349C04 | 80 ED 81 64 */	lwz r7, c_nocopy_folder_name__Q23ipl12NandSDWorker@sda21(r0)
/* 81349C08 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C0C | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349C10 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349C14 | 48 00 A2 B9 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 81349C18 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C1C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C20 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349C24 | 48 00 01 E0 */	b .L_81349E04
.L_81349C28:
/* 81349C28 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C2C | 7E C3 B3 78 */	mr r3, r22
/* 81349C30 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C34 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349C38 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349C3C | 48 00 13 2D */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
/* 81349C40 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C44 | 38 C0 00 02 */	li r6, 0x2
/* 81349C48 | 38 A0 00 01 */	li r5, 0x1
/* 81349C4C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C50 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349C54 | 7E C3 B3 78 */	mr r3, r22
/* 81349C58 | 48 00 9F 55 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81349C5C | 48 00 01 A8 */	b .L_81349E04
.L_81349C60:
/* 81349C60 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C64 | 7E C3 B3 78 */	mr r3, r22
/* 81349C68 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C6C | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349C70 | 48 00 AA 89 */	bl iplNandSD_813546F8
/* 81349C74 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C78 | 38 C0 00 02 */	li r6, 0x2
/* 81349C7C | 38 A0 00 01 */	li r5, 0x1
/* 81349C80 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C84 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349C88 | 7E C3 B3 78 */	mr r3, r22
/* 81349C8C | 48 00 9F 21 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81349C90 | 48 00 01 74 */	b .L_81349E04
.L_81349C94:
/* 81349C94 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C98 | 7E C3 B3 78 */	mr r3, r22
/* 81349C9C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CA0 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349CA4 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349CA8 | 48 00 7E DD */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 81349CAC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349CB0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CB4 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349CB8 | 48 00 01 4C */	b .L_81349E04
.L_81349CBC:
/* 81349CBC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349CC0 | 7E C3 B3 78 */	mr r3, r22
/* 81349CC4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CC8 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349CCC | 48 00 A9 89 */	bl iplNandSD_81354654
/* 81349CD0 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349CD4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CD8 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349CDC | 48 00 01 28 */	b .L_81349E04
.L_81349CE0:
/* 81349CE0 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349CE4 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 81349CE8 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 81349CEC | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81349CF0 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349CF4 | 4B FF F6 B5 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 81349CF8 | 7E C3 B3 78 */	mr r3, r22
/* 81349CFC | 38 81 00 48 */	addi r4, r1, 0x48
/* 81349D00 | 38 BC F0 C0 */	subi r5, r28, 0xf40
/* 81349D04 | 48 00 95 11 */	bl sd_file_exist__Q23ipl12NandSDWorkerFPCcUl
/* 81349D08 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D0C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D10 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D14 | 48 00 00 F0 */	b .L_81349E04
.L_81349D18:
/* 81349D18 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349D1C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81349D20 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 81349D24 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81349D28 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349D2C | 4B FF F7 09 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 81349D30 | 7E C3 B3 78 */	mr r3, r22
/* 81349D34 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81349D38 | 38 A0 06 40 */	li r5, 0x640
/* 81349D3C | 48 00 94 D9 */	bl sd_file_exist__Q23ipl12NandSDWorkerFPCcUl
/* 81349D40 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D44 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D48 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D4C | 48 00 00 B8 */	b .L_81349E04
.L_81349D50:
/* 81349D50 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D54 | 7E C3 B3 78 */	mr r3, r22
/* 81349D58 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D5C | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349D60 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349D64 | 48 00 A3 C1 */	bl __ct__Q33ipl2ut8FreeListFv
/* 81349D68 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D6C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D70 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D74 | 48 00 00 90 */	b .L_81349E04
.L_81349D78:
/* 81349D78 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D7C | 7E C3 B3 78 */	mr r3, r22
/* 81349D80 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D84 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349D88 | 48 00 A5 D9 */	bl get__Q33ipl2ut8FreeListFv
/* 81349D8C | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D90 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D94 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D98 | 48 00 00 6C */	b .L_81349E04
.L_81349D9C:
/* 81349D9C | 7E C3 B3 78 */	mr r3, r22
/* 81349DA0 | 48 00 A6 19 */	bl __ct__Q33ipl2ut5StackFv
/* 81349DA4 | 48 00 00 60 */	b .L_81349E04
.L_81349DA8:
/* 81349DA8 | 7E C3 B3 78 */	mr r3, r22
/* 81349DAC | 48 00 A6 B5 */	bl init__Q33ipl2ut5StackFPvUlUl
/* 81349DB0 | 48 00 00 54 */	b .L_81349E04
.L_81349DB4:
/* 81349DB4 | 7E C3 B3 78 */	mr r3, r22
/* 81349DB8 | 48 00 A6 F5 */	bl push__Q33ipl2ut5StackFPCv
/* 81349DBC | 48 00 00 48 */	b .L_81349E04
.L_81349DC0:
/* 81349DC0 | 7E C3 B3 78 */	mr r3, r22
/* 81349DC4 | 48 00 A8 49 */	bl pop__Q33ipl2ut5StackFPv
/* 81349DC8 | 48 00 00 3C */	b .L_81349E04
.L_81349DCC:
/* 81349DCC | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349DD0 | 7E C3 B3 78 */	mr r3, r22
/* 81349DD4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349DD8 | 80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 81349DDC | 48 00 77 C9 */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
/* 81349DE0 | 48 00 00 24 */	b .L_81349E04
.L_81349DE4:
/* 81349DE4 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349DE8 | 7E C3 B3 78 */	mr r3, r22
/* 81349DEC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349DF0 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349DF4 | 48 00 AB 41 */	bl iplNandSD_81354934
/* 81349DF8 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349DFC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349E00 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
.L_81349E04:
/* 81349E04 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349E08 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349E0C | 80 63 E9 B8 */	lwz r3, -0x1648(r3)
/* 81349E10 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81349E14 | 3C 03 21 53 */	addis r0, r3, 0x2153
/* 81349E18 | 28 00 BA BE */	cmplwi r0, 0xbabe
/* 81349E1C | 41 82 00 18 */	beq .L_81349E34
/* 81349E20 | 38 79 02 F6 */	addi r3, r25, 0x2f6
/* 81349E24 | 38 B9 03 0A */	addi r5, r25, 0x30a
/* 81349E28 | 38 80 08 D3 */	li r4, 0x8d3
/* 81349E2C | 4C C6 31 82 */	crclr cr1eq
/* 81349E30 | 48 1E 49 01 */	bl OSPanic
.L_81349E34:
/* 81349E34 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81349E38 | 40 82 00 14 */	bne .L_81349E4C
/* 81349E3C | 7E C3 B3 78 */	mr r3, r22
/* 81349E40 | 38 80 00 00 */	li r4, 0x0
/* 81349E44 | 48 00 89 C5 */	bl set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState
/* 81349E48 | 4B FF F7 B0 */	b .L_813495F8
.L_81349E4C:
/* 81349E4C | 38 00 00 00 */	li r0, 0x0
/* 81349E50 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81349E54 | 90 16 00 00 */	stw r0, 0x0(r22)
/* 81349E58 | 7E C3 B3 78 */	mr r3, r22
/* 81349E5C | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81349E60 | 48 2A F6 99 */	bl _restgpr_22
/* 81349E64 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81349E68 | 7C 08 03 A6 */	mtlr r0
/* 81349E6C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 81349E70 | 4E 80 00 20 */	blr
.endfn run__Q23ipl12NandSDWorkerFv

# .text:0x1A88 | 0x81349E74 | size: 0x50C
# ipl::NandSDWorker::do_startup()
.fn do_startup__Q23ipl12NandSDWorkerFv, global
/* 81349E74 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 81349E78 | 7C 08 02 A6 */	mflr r0
/* 81349E7C | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 81349E80 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 81349E84 | 48 2A F6 3D */	bl _savegpr_27
/* 81349E88 | 3B 60 00 00 */	li r27, 0x0
/* 81349E8C | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81349E90 | 93 61 00 14 */	stw r27, 0x14(r1)
/* 81349E94 | 7C 7C 1B 78 */	mr r28, r3
/* 81349E98 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81349E9C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81349EA0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349EA4 | 3B A0 00 00 */	li r29, 0x0
/* 81349EA8 | 38 60 00 00 */	li r3, 0x0
/* 81349EAC | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81349EB0 | 93 65 EA 24 */	stw r27, -0x15dc(r5)
/* 81349EB4 | 48 27 46 31 */	bl fn_815BE4E4
/* 81349EB8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349EBC | 38 A0 00 20 */	li r5, 0x20
/* 81349EC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81349EC4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81349EC8 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81349ECC | 54 04 18 38 */	slwi r4, r0, 3
/* 81349ED0 | 48 21 08 85 */	bl fn_8155A754
/* 81349ED4 | 7C 7E 1B 78 */	mr r30, r3
/* 81349ED8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81349EDC | 48 27 46 09 */	bl fn_815BE4E4
/* 81349EE0 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81349EE4 | 7F 83 E3 78 */	mr r3, r28
/* 81349EE8 | 7F C4 F3 78 */	mr r4, r30
/* 81349EEC | 48 00 04 95 */	bl clean_duplicated_nand_app__Q23ipl12NandSDWorkerFv
/* 81349EF0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 81349EF4 | 40 82 00 18 */	bne .L_81349F0C
/* 81349EF8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349EFC | 38 00 FF FB */	li r0, -0x5
/* 81349F00 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349F04 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349F08 | 48 00 04 18 */	b .L_8134A320
.L_81349F0C:
/* 81349F0C | 93 61 00 10 */	stw r27, 0x10(r1)
/* 81349F10 | 93 61 00 0C */	stw r27, 0xc(r1)
/* 81349F14 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349F18 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81349F1C | 80 03 E6 98 */	lwz r0, -0x1968(r3)
/* 81349F20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349F24 | 41 82 00 78 */	beq .L_81349F9C
/* 81349F28 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81349F2C | 7F 83 E3 78 */	mr r3, r28
/* 81349F30 | 7F C4 F3 78 */	mr r4, r30
/* 81349F34 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81349F38 | 48 00 06 51 */	bl iplNandSD_8134A588
/* 81349F3C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 81349F40 | 40 82 00 18 */	bne .L_81349F58
/* 81349F44 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349F48 | 38 00 FF FB */	li r0, -0x5
/* 81349F4C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349F50 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349F54 | 48 00 03 CC */	b .L_8134A320
.L_81349F58:
/* 81349F58 | 2C 03 FF EE */	cmpwi r3, -0x12
/* 81349F5C | 40 82 00 18 */	bne .L_81349F74
/* 81349F60 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349F64 | 38 00 FF EE */	li r0, -0x12
/* 81349F68 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349F6C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349F70 | 48 00 03 B0 */	b .L_8134A320
.L_81349F74:
/* 81349F74 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349F78 | 38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 81349F7C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81349F80 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349F84 | 90 04 EA 2C */	stw r0, -0x15d4(r4)
/* 81349F88 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349F8C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349F90 | 80 84 EA 2C */	lwz r4, -0x15d4(r4)
/* 81349F94 | 4C C6 31 82 */	crclr cr1eq
/* 81349F98 | 48 1E 47 09 */	bl OSReport
.L_81349F9C:
/* 81349F9C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349FA0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81349FA4 | 80 03 E6 94 */	lwz r0, -0x196c(r3)
/* 81349FA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81349FAC | 41 82 00 5C */	beq .L_8134A008
/* 81349FB0 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81349FB4 | 7F 83 E3 78 */	mr r3, r28
/* 81349FB8 | 7F C4 F3 78 */	mr r4, r30
/* 81349FBC | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81349FC0 | 48 00 07 59 */	bl clean_partial_nand_app__Q23ipl12NandSDWorkerFv
/* 81349FC4 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 81349FC8 | 40 82 00 18 */	bne .L_81349FE0
/* 81349FCC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349FD0 | 38 00 FF FB */	li r0, -0x5
/* 81349FD4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81349FD8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349FDC | 48 00 03 44 */	b .L_8134A320
.L_81349FE0:
/* 81349FE0 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349FE4 | 38 7F 04 19 */	addi r3, r31, 0x419
/* 81349FE8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81349FEC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349FF0 | 90 04 EA 28 */	stw r0, -0x15d8(r4)
/* 81349FF4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349FF8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81349FFC | 80 84 EA 28 */	lwz r4, -0x15d8(r4)
/* 8134A000 | 4C C6 31 82 */	crclr cr1eq
/* 8134A004 | 48 1E 46 9D */	bl OSReport
.L_8134A008:
/* 8134A008 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A00C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A010 | 80 03 E6 94 */	lwz r0, -0x196c(r3)
/* 8134A014 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A018 | 41 82 03 08 */	beq .L_8134A320
/* 8134A01C | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A020 | 7F 83 E3 78 */	mr r3, r28
/* 8134A024 | 48 00 9A 79 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134A028 | 2C 03 00 20 */	cmpwi r3, 0x20
/* 8134A02C | 41 82 02 E4 */	beq .L_8134A310
/* 8134A030 | 80 6D 81 7C */	lwz r3, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A034 | 48 01 63 AD */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134A038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A03C | 7C 7B 1B 78 */	mr r27, r3
/* 8134A040 | 41 82 00 34 */	beq .L_8134A074
/* 8134A044 | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A048 | 7F 65 DB 78 */	mr r5, r27
/* 8134A04C | 38 7F 04 3B */	addi r3, r31, 0x43b
/* 8134A050 | 4C C6 31 82 */	crclr cr1eq
/* 8134A054 | 48 1E 46 4D */	bl OSReport
/* 8134A058 | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A05C | 40 82 00 18 */	bne .L_8134A074
/* 8134A060 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A064 | 38 00 FF FB */	li r0, -0x5
/* 8134A068 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A06C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A070 | 48 00 02 B0 */	b .L_8134A320
.L_8134A074:
/* 8134A074 | 80 6D 81 78 */	lwz r3, c_succession_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A078 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134A07C | 48 01 64 35 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 8134A080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A084 | 40 82 00 10 */	bne .L_8134A094
/* 8134A088 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134A08C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8134A090 | 41 82 00 DC */	beq .L_8134A16C
.L_8134A094:
/* 8134A094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A098 | 40 82 00 54 */	bne .L_8134A0EC
/* 8134A09C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134A0A0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8134A0A4 | 41 82 00 48 */	beq .L_8134A0EC
/* 8134A0A8 | 80 6D 81 78 */	lwz r3, c_succession_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A0AC | 48 01 63 35 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134A0B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A0B4 | 7C 7B 1B 78 */	mr r27, r3
/* 8134A0B8 | 41 82 00 68 */	beq .L_8134A120
/* 8134A0BC | 80 8D 81 78 */	lwz r4, c_succession_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A0C0 | 7F 65 DB 78 */	mr r5, r27
/* 8134A0C4 | 38 7F 04 3B */	addi r3, r31, 0x43b
/* 8134A0C8 | 4C C6 31 82 */	crclr cr1eq
/* 8134A0CC | 48 1E 45 D5 */	bl OSReport
/* 8134A0D0 | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A0D4 | 40 82 00 4C */	bne .L_8134A120
/* 8134A0D8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A0DC | 38 00 FF FB */	li r0, -0x5
/* 8134A0E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A0E4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A0E8 | 48 00 02 38 */	b .L_8134A320
.L_8134A0EC:
/* 8134A0EC | 7F 83 E3 78 */	mr r3, r28
/* 8134A0F0 | 38 80 00 01 */	li r4, 0x1
/* 8134A0F4 | 38 A0 00 00 */	li r5, 0x0
/* 8134A0F8 | 38 C0 00 00 */	li r6, 0x0
/* 8134A0FC | 38 E0 00 00 */	li r7, 0x0
/* 8134A100 | 48 00 3F 55 */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8134A104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A108 | 41 82 00 18 */	beq .L_8134A120
/* 8134A10C | 80 8D 81 78 */	lwz r4, c_succession_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A110 | 38 7F 04 6B */	addi r3, r31, 0x46b
/* 8134A114 | 4C C6 31 82 */	crclr cr1eq
/* 8134A118 | 48 1E 45 89 */	bl OSReport
/* 8134A11C | 48 00 02 04 */	b .L_8134A320
.L_8134A120:
/* 8134A120 | 80 6D 81 78 */	lwz r3, c_succession_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A124 | 38 80 00 3F */	li r4, 0x3f
/* 8134A128 | 38 A0 00 00 */	li r5, 0x0
/* 8134A12C | 48 01 62 41 */	bl PrivateCreateDir__Q33ipl4nand7wrapperFPCcUcUc
/* 8134A130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A134 | 7C 7B 1B 78 */	mr r27, r3
/* 8134A138 | 41 82 00 34 */	beq .L_8134A16C
/* 8134A13C | 80 8D 81 78 */	lwz r4, c_succession_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A140 | 7F 65 DB 78 */	mr r5, r27
/* 8134A144 | 38 7F 04 AA */	addi r3, r31, 0x4aa
/* 8134A148 | 4C C6 31 82 */	crclr cr1eq
/* 8134A14C | 48 1E 45 55 */	bl OSReport
/* 8134A150 | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A154 | 40 82 01 CC */	bne .L_8134A320
/* 8134A158 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A15C | 38 00 FF FB */	li r0, -0x5
/* 8134A160 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A164 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A168 | 48 00 01 B8 */	b .L_8134A320
.L_8134A16C:
/* 8134A16C | 7F 83 E3 78 */	mr r3, r28
/* 8134A170 | 38 80 00 01 */	li r4, 0x1
/* 8134A174 | 38 A0 00 01 */	li r5, 0x1
/* 8134A178 | 38 C0 00 00 */	li r6, 0x0
/* 8134A17C | 38 E0 00 00 */	li r7, 0x0
/* 8134A180 | 48 00 3E D5 */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8134A184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A188 | 41 82 00 18 */	beq .L_8134A1A0
/* 8134A18C | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A190 | 38 7F 04 6B */	addi r3, r31, 0x46b
/* 8134A194 | 4C C6 31 82 */	crclr cr1eq
/* 8134A198 | 48 1E 45 09 */	bl OSReport
/* 8134A19C | 48 00 01 84 */	b .L_8134A320
.L_8134A1A0:
/* 8134A1A0 | 80 6D 81 7C */	lwz r3, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A1A4 | 38 80 00 3F */	li r4, 0x3f
/* 8134A1A8 | 38 A0 00 00 */	li r5, 0x0
/* 8134A1AC | 48 01 60 39 */	bl PrivateCreate__Q33ipl4nand7wrapperFPCcUcUc
/* 8134A1B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A1B4 | 7C 7B 1B 78 */	mr r27, r3
/* 8134A1B8 | 41 82 00 34 */	beq .L_8134A1EC
/* 8134A1BC | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A1C0 | 7F 65 DB 78 */	mr r5, r27
/* 8134A1C4 | 38 7F 04 DD */	addi r3, r31, 0x4dd
/* 8134A1C8 | 4C C6 31 82 */	crclr cr1eq
/* 8134A1CC | 48 1E 44 D5 */	bl OSReport
/* 8134A1D0 | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A1D4 | 40 82 01 4C */	bne .L_8134A320
/* 8134A1D8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A1DC | 38 00 FF FB */	li r0, -0x5
/* 8134A1E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A1E4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A1E8 | 48 00 01 38 */	b .L_8134A320
.L_8134A1EC:
/* 8134A1EC | 80 6D 81 7C */	lwz r3, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A1F0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8134A1F4 | 38 A0 00 02 */	li r5, 0x2
/* 8134A1F8 | 48 01 60 61 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8134A1FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A200 | 41 82 00 1C */	beq .L_8134A21C
/* 8134A204 | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A208 | 7C 65 1B 78 */	mr r5, r3
/* 8134A20C | 38 7F 05 0D */	addi r3, r31, 0x50d
/* 8134A210 | 4C C6 31 82 */	crclr cr1eq
/* 8134A214 | 48 1E 44 8D */	bl OSReport
/* 8134A218 | 48 00 01 08 */	b .L_8134A320
.L_8134A21C:
/* 8134A21C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A220 | 38 80 00 20 */	li r4, 0x20
/* 8134A224 | 38 A0 00 20 */	li r5, 0x20
/* 8134A228 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A22C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134A230 | 48 21 05 25 */	bl fn_8155A754
/* 8134A234 | 7C 7D 1B 78 */	mr r29, r3
/* 8134A238 | 38 80 00 00 */	li r4, 0x0
/* 8134A23C | 38 A0 00 20 */	li r5, 0x20
/* 8134A240 | 4B FE 60 F5 */	bl memset
/* 8134A244 | 7F A3 EB 78 */	mr r3, r29
/* 8134A248 | 48 14 B5 FD */	bl NETGetWirelessMacAddress
/* 8134A24C | 7F A4 EB 78 */	mr r4, r29
/* 8134A250 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8134A254 | 38 A0 00 20 */	li r5, 0x20
/* 8134A258 | 48 01 5B 85 */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 8134A25C | 2C 03 00 20 */	cmpwi r3, 0x20
/* 8134A260 | 7C 7B 1B 78 */	mr r27, r3
/* 8134A264 | 41 82 00 3C */	beq .L_8134A2A0
/* 8134A268 | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A26C | 7F 65 DB 78 */	mr r5, r27
/* 8134A270 | 38 7F 05 3B */	addi r3, r31, 0x53b
/* 8134A274 | 4C C6 31 82 */	crclr cr1eq
/* 8134A278 | 48 1E 44 29 */	bl OSReport
/* 8134A27C | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A280 | 40 82 00 14 */	bne .L_8134A294
/* 8134A284 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A288 | 38 00 FF FB */	li r0, -0x5
/* 8134A28C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A290 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134A294:
/* 8134A294 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8134A298 | 48 01 5A 6D */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134A29C | 48 00 00 84 */	b .L_8134A320
.L_8134A2A0:
/* 8134A2A0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8134A2A4 | 48 01 5A 61 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134A2A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A2AC | 7C 7B 1B 78 */	mr r27, r3
/* 8134A2B0 | 41 82 00 34 */	beq .L_8134A2E4
/* 8134A2B4 | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A2B8 | 7F 65 DB 78 */	mr r5, r27
/* 8134A2BC | 38 7F 05 63 */	addi r3, r31, 0x563
/* 8134A2C0 | 4C C6 31 82 */	crclr cr1eq
/* 8134A2C4 | 48 1E 43 DD */	bl OSReport
/* 8134A2C8 | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A2CC | 40 82 00 54 */	bne .L_8134A320
/* 8134A2D0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A2D4 | 38 00 FF FB */	li r0, -0x5
/* 8134A2D8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A2DC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A2E0 | 48 00 00 40 */	b .L_8134A320
.L_8134A2E4:
/* 8134A2E4 | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A2E8 | 38 7F 05 8B */	addi r3, r31, 0x58b
/* 8134A2EC | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 8134A2F0 | 88 DD 00 01 */	lbz r6, 0x1(r29)
/* 8134A2F4 | 88 FD 00 02 */	lbz r7, 0x2(r29)
/* 8134A2F8 | 89 1D 00 03 */	lbz r8, 0x3(r29)
/* 8134A2FC | 89 3D 00 04 */	lbz r9, 0x4(r29)
/* 8134A300 | 89 5D 00 05 */	lbz r10, 0x5(r29)
/* 8134A304 | 4C C6 31 82 */	crclr cr1eq
/* 8134A308 | 48 1E 43 99 */	bl OSReport
/* 8134A30C | 48 00 00 14 */	b .L_8134A320
.L_8134A310:
/* 8134A310 | 80 8D 81 7C */	lwz r4, c_transferid_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A314 | 38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8134A318 | 4C C6 31 82 */	crclr cr1eq
/* 8134A31C | 48 1E 43 85 */	bl OSReport
.L_8134A320:
/* 8134A320 | 7F 83 E3 78 */	mr r3, r28
/* 8134A324 | 38 C0 00 02 */	li r6, 0x2
/* 8134A328 | 38 A0 00 01 */	li r5, 0x1
/* 8134A32C | 48 00 98 81 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134A330 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134A334 | 41 82 00 18 */	beq .L_8134A34C
/* 8134A338 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A33C | 7F C4 F3 78 */	mr r4, r30
/* 8134A340 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A344 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134A348 | 48 21 06 BD */	bl fn_8155AA04
.L_8134A34C:
/* 8134A34C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134A350 | 41 82 00 18 */	beq .L_8134A368
/* 8134A354 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A358 | 7F A4 EB 78 */	mr r4, r29
/* 8134A35C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A360 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134A364 | 48 21 06 A1 */	bl fn_8155AA04
.L_8134A368:
/* 8134A368 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 8134A36C | 48 2A F1 A1 */	bl _restgpr_27
/* 8134A370 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8134A374 | 7C 08 03 A6 */	mtlr r0
/* 8134A378 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 8134A37C | 4E 80 00 20 */	blr
.endfn do_startup__Q23ipl12NandSDWorkerFv

# .text:0x1F94 | 0x8134A380 | size: 0x208
# ipl::NandSDWorker::clean_duplicated_nand_app()
.fn clean_duplicated_nand_app__Q23ipl12NandSDWorkerFv, global
/* 8134A380 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8134A384 | 7C 08 02 A6 */	mflr r0
/* 8134A388 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8134A38C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8134A390 | 48 2A F1 11 */	bl _savegpr_19
/* 8134A394 | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134A398 | 7C 73 1B 78 */	mr r19, r3
/* 8134A39C | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134A3A0 | 7C 94 23 78 */	mr r20, r4
/* 8134A3A4 | 7C B5 2B 78 */	mr r21, r5
/* 8134A3A8 | 38 7C 05 E1 */	addi r3, r28, 0x5e1
/* 8134A3AC | 4C C6 31 82 */	crclr cr1eq
/* 8134A3B0 | 48 1E 42 F1 */	bl OSReport
/* 8134A3B4 | 3B 20 00 00 */	li r25, 0x0
/* 8134A3B8 | 3B E0 00 00 */	li r31, 0x0
/* 8134A3BC | 3B A0 00 00 */	li r29, 0x0
/* 8134A3C0 | 48 00 01 A4 */	b .L_8134A564
.L_8134A3C4:
/* 8134A3C4 | 7F 54 FA 14 */	add r26, r20, r31
/* 8134A3C8 | 7F 14 F8 2E */	lwzx r24, r20, r31
/* 8134A3CC | 82 FA 00 04 */	lwz r23, 0x4(r26)
/* 8134A3D0 | 7F 03 C3 78 */	mr r3, r24
/* 8134A3D4 | 7E E4 BB 78 */	mr r4, r23
/* 8134A3D8 | 4B FF EE BD */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134A3DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A3E0 | 41 82 01 7C */	beq .L_8134A55C
/* 8134A3E4 | 7E 63 9B 78 */	mr r3, r19
/* 8134A3E8 | 7E E6 BB 78 */	mr r6, r23
/* 8134A3EC | 7F 05 C3 78 */	mr r5, r24
/* 8134A3F0 | 48 00 9A 95 */	bl is_all_region__Q23ipl12NandSDWorkerFUx
/* 8134A3F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A3F8 | 41 82 01 64 */	beq .L_8134A55C
/* 8134A3FC | 7E 63 9B 78 */	mr r3, r19
/* 8134A400 | 7E E6 BB 78 */	mr r6, r23
/* 8134A404 | 7F 05 C3 78 */	mr r5, r24
/* 8134A408 | 48 00 77 A9 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A40C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A410 | 41 82 01 4C */	beq .L_8134A55C
/* 8134A414 | 3A C0 00 00 */	li r22, 0x0
/* 8134A418 | 3B C0 00 00 */	li r30, 0x0
/* 8134A41C | 48 00 01 38 */	b .L_8134A554
.L_8134A420:
/* 8134A420 | 7F 74 F2 14 */	add r27, r20, r30
/* 8134A424 | 7C F4 F0 2E */	lwzx r7, r20, r30
/* 8134A428 | 81 1B 00 04 */	lwz r8, 0x4(r27)
/* 8134A42C | 7F 00 3A 78 */	xor r0, r24, r7
/* 8134A430 | 7E E3 42 78 */	xor r3, r23, r8
/* 8134A434 | 7C 60 03 79 */	or. r0, r3, r0
/* 8134A438 | 41 82 01 14 */	beq .L_8134A54C
/* 8134A43C | 7E 63 9B 78 */	mr r3, r19
/* 8134A440 | 7E E6 BB 78 */	mr r6, r23
/* 8134A444 | 7F 05 C3 78 */	mr r5, r24
/* 8134A448 | 48 00 9A 55 */	bl is_same_title__Q23ipl12NandSDWorkerFUxUx
/* 8134A44C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A450 | 41 82 00 FC */	beq .L_8134A54C
/* 8134A454 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A458 | 7E 63 9B 78 */	mr r3, r19
/* 8134A45C | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A460 | 48 00 77 51 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A468 | 41 82 00 E4 */	beq .L_8134A54C
/* 8134A46C | 7E 63 9B 78 */	mr r3, r19
/* 8134A470 | 7E E6 BB 78 */	mr r6, r23
/* 8134A474 | 7F 05 C3 78 */	mr r5, r24
/* 8134A478 | 48 00 34 49 */	bl delete_ticket__Q23ipl12NandSDWorkerFUx
/* 8134A47C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A480 | 41 82 00 1C */	beq .L_8134A49C
/* 8134A484 | 7C 67 1B 78 */	mr r7, r3
/* 8134A488 | 7E E6 BB 78 */	mr r6, r23
/* 8134A48C | 7F 05 C3 78 */	mr r5, r24
/* 8134A490 | 38 7C 06 10 */	addi r3, r28, 0x610
/* 8134A494 | 4C C6 31 82 */	crclr cr1eq
/* 8134A498 | 48 1E 42 09 */	bl OSReport
.L_8134A49C:
/* 8134A49C | 7E 63 9B 78 */	mr r3, r19
/* 8134A4A0 | 7E E6 BB 78 */	mr r6, r23
/* 8134A4A4 | 7F 05 C3 78 */	mr r5, r24
/* 8134A4A8 | 48 00 5A 01 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 8134A4AC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A4B0 | 41 82 00 C0 */	beq .L_8134A570
/* 8134A4B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A4B8 | 41 82 00 1C */	beq .L_8134A4D4
/* 8134A4BC | 7C 67 1B 78 */	mr r7, r3
/* 8134A4C0 | 7E E6 BB 78 */	mr r6, r23
/* 8134A4C4 | 7F 05 C3 78 */	mr r5, r24
/* 8134A4C8 | 38 7C 06 43 */	addi r3, r28, 0x643
/* 8134A4CC | 4C C6 31 82 */	crclr cr1eq
/* 8134A4D0 | 48 1E 41 D1 */	bl OSReport
.L_8134A4D4:
/* 8134A4D4 | 7E 63 9B 78 */	mr r3, r19
/* 8134A4D8 | 7E E6 BB 78 */	mr r6, r23
/* 8134A4DC | 7F 05 C3 78 */	mr r5, r24
/* 8134A4E0 | 38 E0 00 01 */	li r7, 0x1
/* 8134A4E4 | 39 00 00 00 */	li r8, 0x0
/* 8134A4E8 | 39 20 00 00 */	li r9, 0x0
/* 8134A4EC | 48 00 8E F5 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134A4F0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A4F4 | 41 82 00 7C */	beq .L_8134A570
/* 8134A4F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A4FC | 41 82 00 1C */	beq .L_8134A518
/* 8134A500 | 7C 67 1B 78 */	mr r7, r3
/* 8134A504 | 7E E6 BB 78 */	mr r6, r23
/* 8134A508 | 7F 05 C3 78 */	mr r5, r24
/* 8134A50C | 38 7C 06 43 */	addi r3, r28, 0x643
/* 8134A510 | 4C C6 31 82 */	crclr cr1eq
/* 8134A514 | 48 1E 41 8D */	bl OSReport
.L_8134A518:
/* 8134A518 | 80 FB 00 00 */	lwz r7, 0x0(r27)
/* 8134A51C | 7E E6 BB 78 */	mr r6, r23
/* 8134A520 | 81 1B 00 04 */	lwz r8, 0x4(r27)
/* 8134A524 | 7F 05 C3 78 */	mr r5, r24
/* 8134A528 | 38 7C 06 7D */	addi r3, r28, 0x67d
/* 8134A52C | 4C C6 31 82 */	crclr cr1eq
/* 8134A530 | 48 1E 41 71 */	bl OSReport
/* 8134A534 | 7E 63 9B 78 */	mr r3, r19
/* 8134A538 | 7E E4 BB 78 */	mr r4, r23
/* 8134A53C | 48 00 57 59 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
/* 8134A540 | 93 BA 00 04 */	stw r29, 0x4(r26)
/* 8134A544 | 93 BA 00 00 */	stw r29, 0x0(r26)
/* 8134A548 | 48 00 00 14 */	b .L_8134A55C
.L_8134A54C:
/* 8134A54C | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8134A550 | 3B DE 00 08 */	addi r30, r30, 0x8
.L_8134A554:
/* 8134A554 | 7C 16 A8 40 */	cmplw r22, r21
/* 8134A558 | 41 80 FE C8 */	blt .L_8134A420
.L_8134A55C:
/* 8134A55C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8134A560 | 3B FF 00 08 */	addi r31, r31, 0x8
.L_8134A564:
/* 8134A564 | 7C 19 A8 40 */	cmplw r25, r21
/* 8134A568 | 41 80 FE 5C */	blt .L_8134A3C4
/* 8134A56C | 38 60 00 00 */	li r3, 0x0
.L_8134A570:
/* 8134A570 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8134A574 | 48 2A EF 79 */	bl _restgpr_19
/* 8134A578 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8134A57C | 7C 08 03 A6 */	mtlr r0
/* 8134A580 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8134A584 | 4E 80 00 20 */	blr
.endfn clean_duplicated_nand_app__Q23ipl12NandSDWorkerFv

# .text:0x219C | 0x8134A588 | size: 0x190
.fn iplNandSD_8134A588, local
/* 8134A588 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134A58C | 7C 08 02 A6 */	mflr r0
/* 8134A590 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8134A594 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8134A598 | 48 2A EF 15 */	bl _savegpr_22
/* 8134A59C | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134A5A0 | 7C 76 1B 78 */	mr r22, r3
/* 8134A5A4 | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134A5A8 | 7C 97 23 78 */	mr r23, r4
/* 8134A5AC | 7C B8 2B 78 */	mr r24, r5
/* 8134A5B0 | 7C D9 33 78 */	mr r25, r6
/* 8134A5B4 | 38 7C 06 BC */	addi r3, r28, 0x6bc
/* 8134A5B8 | 4C C6 31 82 */	crclr cr1eq
/* 8134A5BC | 48 1E 40 E5 */	bl OSReport
/* 8134A5C0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8134A5C4 | 3B 40 00 00 */	li r26, 0x0
/* 8134A5C8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8134A5CC | 3B E0 00 00 */	li r31, 0x0
/* 8134A5D0 | 3B A0 FF FF */	li r29, -0x1
/* 8134A5D4 | 48 00 01 20 */	b .L_8134A6F4
.L_8134A5D8:
/* 8134A5D8 | 88 16 00 04 */	lbz r0, 0x4(r22)
/* 8134A5DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A5E0 | 41 82 00 0C */	beq .L_8134A5EC
/* 8134A5E4 | 38 60 FF EE */	li r3, -0x12
/* 8134A5E8 | 48 00 01 18 */	b .L_8134A700
.L_8134A5EC:
/* 8134A5EC | 7F 77 FA 14 */	add r27, r23, r31
/* 8134A5F0 | 7C 77 F8 2E */	lwzx r3, r23, r31
/* 8134A5F4 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 8134A5F8 | 4B FF EC 9D */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134A5FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A600 | 41 82 00 EC */	beq .L_8134A6EC
/* 8134A604 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A608 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A60C | 7C C0 E8 38 */	and r0, r6, r29
/* 8134A610 | 54 03 00 2E */	clrrwi r3, r0, 8
/* 8134A614 | 3C 03 FF AB */	subis r0, r3, 0x55
/* 8134A618 | 28 00 50 00 */	cmplwi r0, 0x5000
/* 8134A61C | 41 82 00 D0 */	beq .L_8134A6EC
/* 8134A620 | 7E C3 B3 78 */	mr r3, r22
/* 8134A624 | 48 00 75 8D */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A62C | 40 82 00 68 */	bne .L_8134A694
/* 8134A630 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8134A634 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A638 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A63C | 48 01 C1 1D */	bl CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134A640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A644 | 40 81 00 A8 */	ble .L_8134A6EC
/* 8134A648 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8134A64C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A650 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A654 | 48 01 C2 ED */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134A658 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A65C | 41 82 00 20 */	beq .L_8134A67C
/* 8134A660 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A664 | 7C 67 1B 78 */	mr r7, r3
/* 8134A668 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A66C | 38 7C 06 E8 */	addi r3, r28, 0x6e8
/* 8134A670 | 4C C6 31 82 */	crclr cr1eq
/* 8134A674 | 48 1E 40 2D */	bl OSReport
/* 8134A678 | 48 00 00 74 */	b .L_8134A6EC
.L_8134A67C:
/* 8134A67C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A680 | 38 7C 07 1A */	addi r3, r28, 0x71a
/* 8134A684 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A688 | 4C C6 31 82 */	crclr cr1eq
/* 8134A68C | 48 1E 40 15 */	bl OSReport
/* 8134A690 | 48 00 00 5C */	b .L_8134A6EC
.L_8134A694:
/* 8134A694 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8134A698 | 40 82 00 40 */	bne .L_8134A6D8
/* 8134A69C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A6A0 | 7E C3 B3 78 */	mr r3, r22
/* 8134A6A4 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A6A8 | 48 00 58 01 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 8134A6AC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A6B0 | 41 82 00 50 */	beq .L_8134A700
/* 8134A6B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A6B8 | 41 82 00 34 */	beq .L_8134A6EC
/* 8134A6BC | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A6C0 | 7C 67 1B 78 */	mr r7, r3
/* 8134A6C4 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A6C8 | 38 7C 06 43 */	addi r3, r28, 0x643
/* 8134A6CC | 4C C6 31 82 */	crclr cr1eq
/* 8134A6D0 | 48 1E 3F D1 */	bl OSReport
/* 8134A6D4 | 48 00 00 18 */	b .L_8134A6EC
.L_8134A6D8:
/* 8134A6D8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8134A6DC | 40 82 00 10 */	bne .L_8134A6EC
/* 8134A6E0 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134A6E4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8134A6E8 | 90 19 00 00 */	stw r0, 0x0(r25)
.L_8134A6EC:
/* 8134A6EC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134A6F0 | 3B FF 00 08 */	addi r31, r31, 0x8
.L_8134A6F4:
/* 8134A6F4 | 7C 1A C0 40 */	cmplw r26, r24
/* 8134A6F8 | 41 80 FE E0 */	blt .L_8134A5D8
/* 8134A6FC | 38 60 00 00 */	li r3, 0x0
.L_8134A700:
/* 8134A700 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8134A704 | 48 2A ED F5 */	bl _restgpr_22
/* 8134A708 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8134A70C | 7C 08 03 A6 */	mtlr r0
/* 8134A710 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8134A714 | 4E 80 00 20 */	blr
.endfn iplNandSD_8134A588

# .text:0x232C | 0x8134A718 | size: 0x220
# ipl::NandSDWorker::clean_partial_nand_app()
.fn clean_partial_nand_app__Q23ipl12NandSDWorkerFv, global
/* 8134A718 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134A71C | 7C 08 02 A6 */	mflr r0
/* 8134A720 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8134A724 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134A728 | 48 2A ED 81 */	bl _savegpr_21
/* 8134A72C | 3E C0 81 63 */	lis r22, lbl_81635A88@ha
/* 8134A730 | 7C 7B 1B 78 */	mr r27, r3
/* 8134A734 | 3A D6 5A 88 */	addi r22, r22, lbl_81635A88@l
/* 8134A738 | 7C 9C 23 78 */	mr r28, r4
/* 8134A73C | 7C BD 2B 78 */	mr r29, r5
/* 8134A740 | 7C DE 33 78 */	mr r30, r6
/* 8134A744 | 38 76 07 43 */	addi r3, r22, 0x743
/* 8134A748 | 4C C6 31 82 */	crclr cr1eq
/* 8134A74C | 48 1E 3F 55 */	bl OSReport
/* 8134A750 | 3B E0 00 00 */	li r31, 0x0
/* 8134A754 | 3F 20 81 09 */	lis r25, smArg__Q23ipl6System@ha
/* 8134A758 | 7F F7 FB 78 */	mr r23, r31
/* 8134A75C | 3B 40 00 00 */	li r26, 0x0
/* 8134A760 | 3B 39 90 08 */	addi r25, r25, smArg__Q23ipl6System@l
/* 8134A764 | 3B 00 FF FF */	li r24, -0x1
/* 8134A768 | 48 00 01 AC */	b .L_8134A914
.L_8134A76C:
/* 8134A76C | 7E BC D2 14 */	add r21, r28, r26
/* 8134A770 | 7C 7C D0 2E */	lwzx r3, r28, r26
/* 8134A774 | 80 95 00 04 */	lwz r4, 0x4(r21)
/* 8134A778 | 4B FF EA D5 */	bl is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134A77C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A780 | 41 82 01 0C */	beq .L_8134A88C
/* 8134A784 | 92 E1 00 0C */	stw r23, 0xc(r1)
/* 8134A788 | 7F 63 DB 78 */	mr r3, r27
/* 8134A78C | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A790 | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A794 | 48 00 94 19 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134A798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A79C | 41 82 00 F0 */	beq .L_8134A88C
/* 8134A7A0 | 80 15 00 04 */	lwz r0, 0x4(r21)
/* 8134A7A4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134A7A8 | 80 D5 00 00 */	lwz r6, 0x0(r21)
/* 8134A7AC | 38 B6 01 1C */	addi r5, r22, 0x11c
/* 8134A7B0 | 7C 07 C0 38 */	and r7, r0, r24
/* 8134A7B4 | 38 80 00 40 */	li r4, 0x40
/* 8134A7B8 | 4C C6 31 82 */	crclr cr1eq
/* 8134A7BC | 48 2B 61 ED */	bl snprintf
/* 8134A7C0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134A7C4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8134A7C8 | 38 80 00 00 */	li r4, 0x0
/* 8134A7CC | 48 01 57 91 */	bl ReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 8134A7D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A7D4 | 40 82 00 B8 */	bne .L_8134A88C
/* 8134A7D8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134A7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A7E0 | 41 82 00 AC */	beq .L_8134A88C
/* 8134A7E4 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A7E8 | 7F 63 DB 78 */	mr r3, r27
/* 8134A7EC | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A7F0 | 48 00 07 79 */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
/* 8134A7F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A7F8 | 41 82 00 14 */	beq .L_8134A80C
/* 8134A7FC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134A800 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8134A804 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8134A808 | 48 00 00 84 */	b .L_8134A88C
.L_8134A80C:
/* 8134A80C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134A810 | 38 96 07 70 */	addi r4, r22, 0x770
/* 8134A814 | 38 A0 00 40 */	li r5, 0x40
/* 8134A818 | 48 2B 7C 1D */	bl strncat
/* 8134A81C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134A820 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134A824 | 48 01 59 55 */	bl GetType__Q33ipl4nand7wrapperFPCcPUc
/* 8134A828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A82C | 40 82 00 28 */	bne .L_8134A854
/* 8134A830 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134A834 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8134A838 | 40 82 00 1C */	bne .L_8134A854
/* 8134A83C | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A840 | 38 76 07 79 */	addi r3, r22, 0x779
/* 8134A844 | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A848 | 4C C6 31 82 */	crclr cr1eq
/* 8134A84C | 48 1E 3E 55 */	bl OSReport
/* 8134A850 | 48 00 00 3C */	b .L_8134A88C
.L_8134A854:
/* 8134A854 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A858 | 7F 63 DB 78 */	mr r3, r27
/* 8134A85C | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A860 | 38 E0 00 01 */	li r7, 0x1
/* 8134A864 | 39 00 00 00 */	li r8, 0x0
/* 8134A868 | 39 20 00 00 */	li r9, 0x0
/* 8134A86C | 48 00 8B 75 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134A870 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A874 | 40 82 00 0C */	bne .L_8134A880
/* 8134A878 | 38 60 FF FB */	li r3, -0x5
/* 8134A87C | 48 00 00 A4 */	b .L_8134A920
.L_8134A880:
/* 8134A880 | 80 95 00 04 */	lwz r4, 0x4(r21)
/* 8134A884 | 7F 63 DB 78 */	mr r3, r27
/* 8134A888 | 48 00 54 0D */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
.L_8134A88C:
/* 8134A88C | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134A890 | 80 95 00 04 */	lwz r4, 0x4(r21)
/* 8134A894 | 4B FF EA 69 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134A898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A89C | 41 82 00 70 */	beq .L_8134A90C
/* 8134A8A0 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A8A4 | 7F 63 DB 78 */	mr r3, r27
/* 8134A8A8 | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A8AC | 48 00 73 05 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A8B0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8134A8B4 | 40 82 00 14 */	bne .L_8134A8C8
/* 8134A8B8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134A8BC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8134A8C0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8134A8C4 | 48 00 00 48 */	b .L_8134A90C
.L_8134A8C8:
/* 8134A8C8 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 8134A8CC | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A8D0 | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A8D4 | 48 01 C0 6D */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134A8D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A8DC | 41 82 00 1C */	beq .L_8134A8F8
/* 8134A8E0 | 7C 64 1B 78 */	mr r4, r3
/* 8134A8E4 | 38 76 02 93 */	addi r3, r22, 0x293
/* 8134A8E8 | 4C C6 31 82 */	crclr cr1eq
/* 8134A8EC | 48 1E 3D B5 */	bl OSReport
/* 8134A8F0 | 38 60 FF FE */	li r3, -0x2
/* 8134A8F4 | 48 00 00 2C */	b .L_8134A920
.L_8134A8F8:
/* 8134A8F8 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A8FC | 38 76 07 B5 */	addi r3, r22, 0x7b5
/* 8134A900 | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A904 | 4C C6 31 82 */	crclr cr1eq
/* 8134A908 | 48 1E 3D 99 */	bl OSReport
.L_8134A90C:
/* 8134A90C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8134A910 | 3B 5A 00 08 */	addi r26, r26, 0x8
.L_8134A914:
/* 8134A914 | 7C 1F E8 40 */	cmplw r31, r29
/* 8134A918 | 41 80 FE 54 */	blt .L_8134A76C
/* 8134A91C | 38 60 00 00 */	li r3, 0x0
.L_8134A920:
/* 8134A920 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134A924 | 48 2A EB D1 */	bl _restgpr_21
/* 8134A928 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134A92C | 7C 08 03 A6 */	mtlr r0
/* 8134A930 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8134A934 | 4E 80 00 20 */	blr
.endfn clean_partial_nand_app__Q23ipl12NandSDWorkerFv

# .text:0x254C | 0x8134A938 | size: 0x2CC
# ipl::NandSDWorker::do_mount_sd()
.fn do_mount_sd__Q23ipl12NandSDWorkerFv, global
/* 8134A938 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134A93C | 7C 08 02 A6 */	mflr r0
/* 8134A940 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134A944 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134A948 | 48 2A EB 81 */	bl _savegpr_29
/* 8134A94C | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A950 | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134A954 | 7C 7F 1B 78 */	mr r31, r3
/* 8134A958 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8134A95C | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134A960 | 41 82 01 B4 */	beq .L_8134AB14
/* 8134A964 | 40 80 00 14 */	bge .L_8134A978
/* 8134A968 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A96C | 41 82 00 18 */	beq .L_8134A984
/* 8134A970 | 40 80 01 7C */	bge .L_8134AAEC
/* 8134A974 | 48 00 02 78 */	b .L_8134ABEC
.L_8134A978:
/* 8134A978 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8134A97C | 41 82 02 60 */	beq .L_8134ABDC
/* 8134A980 | 48 00 02 6C */	b .L_8134ABEC
.L_8134A984:
/* 8134A984 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8134A988 | 38 60 00 00 */	li r3, 0x0
/* 8134A98C | 38 80 00 00 */	li r4, 0x0
/* 8134A990 | 38 A0 00 00 */	li r5, 0x0
/* 8134A994 | 3C C6 00 02 */	addis r6, r6, 0x2
/* 8134A998 | 38 C6 E6 40 */	subi r6, r6, 0x19c0
/* 8134A99C | 48 29 D2 E9 */	bl fn_815E7C84
/* 8134A9A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A9A4 | 40 82 01 18 */	bne .L_8134AABC
/* 8134A9A8 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134A9AC | 38 7D 07 DD */	addi r3, r29, 0x7dd
/* 8134A9B0 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134A9B4 | 88 84 E6 48 */	lbz r4, -0x19b8(r4)
/* 8134A9B8 | 7C 84 07 74 */	extsb r4, r4
/* 8134A9BC | 4C C6 31 82 */	crclr cr1eq
/* 8134A9C0 | 48 1E 3C E1 */	bl OSReport
/* 8134A9C4 | 38 00 00 05 */	li r0, 0x5
/* 8134A9C8 | 7F E3 FB 78 */	mr r3, r31
/* 8134A9CC | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A9D0 | 48 00 02 35 */	bl call_fa_mount__Q23ipl12NandSDWorkerFv
/* 8134A9D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A9D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8134A9DC | 40 82 00 7C */	bne .L_8134AA58
/* 8134A9E0 | 38 00 00 07 */	li r0, 0x7
/* 8134A9E4 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134A9E8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134A9EC | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8134A9F0 | 80 04 E6 94 */	lwz r0, -0x196c(r4)
/* 8134A9F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A9F8 | 41 82 00 1C */	beq .L_8134AA14
/* 8134A9FC | 7F E3 FB 78 */	mr r3, r31
/* 8134AA00 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134AA04 | 48 00 82 91 */	bl clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AA08 | 7F E3 FB 78 */	mr r3, r31
/* 8134AA0C | 38 80 00 00 */	li r4, 0x0
/* 8134AA10 | 48 00 88 DD */	bl get_sd_save_list__Q23ipl12NandSDWorkerFPUl
.L_8134AA14:
/* 8134AA14 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AA18 | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8134AA1C | 80 04 E6 98 */	lwz r0, -0x1968(r4)
/* 8134AA20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AA24 | 41 82 00 1C */	beq .L_8134AA40
/* 8134AA28 | 7F E3 FB 78 */	mr r3, r31
/* 8134AA2C | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134AA30 | 48 00 84 FD */	bl clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AA34 | 7F E3 FB 78 */	mr r3, r31
/* 8134AA38 | 38 80 00 00 */	li r4, 0x0
/* 8134AA3C | 48 00 89 2D */	bl get_sd_app_list__Q23ipl12NandSDWorkerFPUl
.L_8134AA40:
/* 8134AA40 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AA44 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8134AA48 | 40 82 00 64 */	bne .L_8134AAAC
/* 8134AA4C | 38 00 00 06 */	li r0, 0x6
/* 8134AA50 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AA54 | 48 00 00 58 */	b .L_8134AAAC
.L_8134AA58:
/* 8134AA58 | 2C 03 FF F7 */	cmpwi r3, -0x9
/* 8134AA5C | 40 82 00 1C */	bne .L_8134AA78
/* 8134AA60 | 38 7D 08 06 */	addi r3, r29, 0x806
/* 8134AA64 | 4C C6 31 82 */	crclr cr1eq
/* 8134AA68 | 48 1E 3C 39 */	bl OSReport
/* 8134AA6C | 38 00 00 03 */	li r0, 0x3
/* 8134AA70 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AA74 | 48 00 00 38 */	b .L_8134AAAC
.L_8134AA78:
/* 8134AA78 | 2C 03 FF F6 */	cmpwi r3, -0xa
/* 8134AA7C | 40 82 00 1C */	bne .L_8134AA98
/* 8134AA80 | 38 7D 08 23 */	addi r3, r29, 0x823
/* 8134AA84 | 4C C6 31 82 */	crclr cr1eq
/* 8134AA88 | 48 1E 3C 19 */	bl OSReport
/* 8134AA8C | 38 00 00 04 */	li r0, 0x4
/* 8134AA90 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AA94 | 48 00 00 18 */	b .L_8134AAAC
.L_8134AA98:
/* 8134AA98 | 38 7D 08 41 */	addi r3, r29, 0x841
/* 8134AA9C | 4C C6 31 82 */	crclr cr1eq
/* 8134AAA0 | 48 1E 3C 01 */	bl OSReport
/* 8134AAA4 | 38 00 00 01 */	li r0, 0x1
/* 8134AAA8 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
.L_8134AAAC:
/* 8134AAAC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AAB0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AAB4 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134AAB8 | 48 00 01 34 */	b .L_8134ABEC
.L_8134AABC:
/* 8134AABC | 48 29 D4 ED */	bl fn_815E7FA8
/* 8134AAC0 | 7C 64 1B 78 */	mr r4, r3
/* 8134AAC4 | 38 7D 08 5E */	addi r3, r29, 0x85e
/* 8134AAC8 | 4C C6 31 82 */	crclr cr1eq
/* 8134AACC | 48 1E 3B D5 */	bl OSReport
/* 8134AAD0 | 38 60 00 00 */	li r3, 0x0
/* 8134AAD4 | 38 00 FF FE */	li r0, -0x2
/* 8134AAD8 | 90 6D A6 98 */	stw r3, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AADC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AAE0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AAE4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AAE8 | 48 00 01 04 */	b .L_8134ABEC
.L_8134AAEC:
/* 8134AAEC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134AAF0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AAF4 | 80 03 EA 5C */	lwz r0, -0x15a4(r3)
/* 8134AAF8 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8134AAFC | 40 82 00 10 */	bne .L_8134AB0C
/* 8134AB00 | 38 00 FF FE */	li r0, -0x2
/* 8134AB04 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AB08 | 48 00 00 E4 */	b .L_8134ABEC
.L_8134AB0C:
/* 8134AB0C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AB10 | 48 00 00 DC */	b .L_8134ABEC
.L_8134AB14:
/* 8134AB14 | 38 00 00 05 */	li r0, 0x5
/* 8134AB18 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AB1C | 48 00 00 E9 */	bl call_fa_mount__Q23ipl12NandSDWorkerFv
/* 8134AB20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AB24 | 7C 7E 1B 78 */	mr r30, r3
/* 8134AB28 | 40 82 00 7C */	bne .L_8134ABA4
/* 8134AB2C | 38 00 00 07 */	li r0, 0x7
/* 8134AB30 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AB34 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AB38 | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8134AB3C | 80 04 E6 94 */	lwz r0, -0x196c(r4)
/* 8134AB40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AB44 | 41 82 00 1C */	beq .L_8134AB60
/* 8134AB48 | 7F E3 FB 78 */	mr r3, r31
/* 8134AB4C | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134AB50 | 48 00 81 45 */	bl clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AB54 | 7F E3 FB 78 */	mr r3, r31
/* 8134AB58 | 38 80 00 00 */	li r4, 0x0
/* 8134AB5C | 48 00 87 91 */	bl get_sd_save_list__Q23ipl12NandSDWorkerFPUl
.L_8134AB60:
/* 8134AB60 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AB64 | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8134AB68 | 80 04 E6 98 */	lwz r0, -0x1968(r4)
/* 8134AB6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AB70 | 41 82 00 1C */	beq .L_8134AB8C
/* 8134AB74 | 7F E3 FB 78 */	mr r3, r31
/* 8134AB78 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134AB7C | 48 00 83 B1 */	bl clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AB80 | 7F E3 FB 78 */	mr r3, r31
/* 8134AB84 | 38 80 00 00 */	li r4, 0x0
/* 8134AB88 | 48 00 87 E1 */	bl get_sd_app_list__Q23ipl12NandSDWorkerFPUl
.L_8134AB8C:
/* 8134AB8C | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AB90 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8134AB94 | 40 82 00 38 */	bne .L_8134ABCC
/* 8134AB98 | 38 00 00 06 */	li r0, 0x6
/* 8134AB9C | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134ABA0 | 48 00 00 2C */	b .L_8134ABCC
.L_8134ABA4:
/* 8134ABA4 | 2C 03 FF F7 */	cmpwi r3, -0x9
/* 8134ABA8 | 40 82 00 10 */	bne .L_8134ABB8
/* 8134ABAC | 38 00 00 03 */	li r0, 0x3
/* 8134ABB0 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134ABB4 | 48 00 00 18 */	b .L_8134ABCC
.L_8134ABB8:
/* 8134ABB8 | 2C 03 FF F6 */	cmpwi r3, -0xa
/* 8134ABBC | 38 00 00 01 */	li r0, 0x1
/* 8134ABC0 | 40 82 00 08 */	bne .L_8134ABC8
/* 8134ABC4 | 38 00 00 04 */	li r0, 0x4
.L_8134ABC8:
/* 8134ABC8 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
.L_8134ABCC:
/* 8134ABCC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134ABD0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134ABD4 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134ABD8 | 48 00 00 14 */	b .L_8134ABEC
.L_8134ABDC:
/* 8134ABDC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134ABE0 | 38 00 00 00 */	li r0, 0x0
/* 8134ABE4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134ABE8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134ABEC:
/* 8134ABEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134ABF0 | 48 2A E9 25 */	bl _restgpr_29
/* 8134ABF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134ABF8 | 7C 08 03 A6 */	mtlr r0
/* 8134ABFC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134AC00 | 4E 80 00 20 */	blr
.endfn do_mount_sd__Q23ipl12NandSDWorkerFv

# .text:0x2818 | 0x8134AC04 | size: 0x1EC
# ipl::NandSDWorker::call_fa_mount()
.fn call_fa_mount__Q23ipl12NandSDWorkerFv, global
/* 8134AC04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134AC08 | 7C 08 02 A6 */	mflr r0
/* 8134AC0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134AC10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134AC14 | 48 2A E8 B5 */	bl _savegpr_29
/* 8134AC18 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AC1C | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134AC20 | 7C 7E 1B 78 */	mr r30, r3
/* 8134AC24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AC28 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134AC2C | 41 82 00 7C */	beq .L_8134ACA8
/* 8134AC30 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134AC34 | 38 80 00 01 */	li r4, 0x1
/* 8134AC38 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AC3C | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134AC40 | 7C 03 07 74 */	extsb r3, r0
/* 8134AC44 | 48 29 D7 F9 */	bl fn_815E843C
/* 8134AC48 | 7C 64 1B 78 */	mr r4, r3
/* 8134AC4C | 38 7F 08 82 */	addi r3, r31, 0x882
/* 8134AC50 | 4C C6 31 82 */	crclr cr1eq
/* 8134AC54 | 48 1E 3A 4D */	bl OSReport
/* 8134AC58 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134AC5C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AC60 | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134AC64 | 7C 03 07 74 */	extsb r3, r0
/* 8134AC68 | 48 29 D2 99 */	bl fn_815E7F00
/* 8134AC6C | 7C 64 1B 78 */	mr r4, r3
/* 8134AC70 | 38 7F 02 75 */	addi r3, r31, 0x275
/* 8134AC74 | 4C C6 31 82 */	crclr cr1eq
/* 8134AC78 | 48 1E 3A 29 */	bl OSReport
/* 8134AC7C | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8134AC80 | 38 60 00 00 */	li r3, 0x0
/* 8134AC84 | 38 80 00 00 */	li r4, 0x0
/* 8134AC88 | 38 A0 00 00 */	li r5, 0x0
/* 8134AC8C | 3C C6 00 02 */	addis r6, r6, 0x2
/* 8134AC90 | 38 C6 E6 40 */	subi r6, r6, 0x19c0
/* 8134AC94 | 48 29 CF F1 */	bl fn_815E7C84
/* 8134AC98 | 7C 64 1B 78 */	mr r4, r3
/* 8134AC9C | 38 7F 08 B6 */	addi r3, r31, 0x8b6
/* 8134ACA0 | 4C C6 31 82 */	crclr cr1eq
/* 8134ACA4 | 48 1E 39 FD */	bl OSReport
.L_8134ACA8:
/* 8134ACA8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134ACAC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134ACB0 | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134ACB4 | 7C 03 07 74 */	extsb r3, r0
/* 8134ACB8 | 48 29 D5 9D */	bl fn_815E8254
/* 8134ACBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ACC0 | 40 82 00 A0 */	bne .L_8134AD60
/* 8134ACC4 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134ACC8 | 38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 8134ACCC | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134ACD0 | 88 84 E6 48 */	lbz r4, -0x19b8(r4)
/* 8134ACD4 | 7C 84 07 74 */	extsb r4, r4
/* 8134ACD8 | 4C C6 31 82 */	crclr cr1eq
/* 8134ACDC | 48 1E 39 C5 */	bl OSReport
/* 8134ACE0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134ACE4 | 38 80 00 02 */	li r4, 0x2
/* 8134ACE8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134ACEC | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134ACF0 | 7C 03 07 74 */	extsb r3, r0
/* 8134ACF4 | 48 29 D1 85 */	bl fn_815E7E78
/* 8134ACF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ACFC | 7C 7D 1B 78 */	mr r29, r3
/* 8134AD00 | 40 82 00 1C */	bne .L_8134AD1C
/* 8134AD04 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134AD08 | 38 00 00 00 */	li r0, 0x0
/* 8134AD0C | 38 60 00 00 */	li r3, 0x0
/* 8134AD10 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134AD14 | 90 04 EA 58 */	stw r0, -0x15a8(r4)
/* 8134AD18 | 48 00 00 C0 */	b .L_8134ADD8
.L_8134AD1C:
/* 8134AD1C | 48 29 D2 8D */	bl fn_815E7FA8
/* 8134AD20 | 2C 03 00 C9 */	cmpwi r3, 0xc9
/* 8134AD24 | 40 82 00 28 */	bne .L_8134AD4C
/* 8134AD28 | 38 7F 08 FC */	addi r3, r31, 0x8fc
/* 8134AD2C | 4C C6 31 82 */	crclr cr1eq
/* 8134AD30 | 48 1E 39 71 */	bl OSReport
/* 8134AD34 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134AD38 | 38 00 00 01 */	li r0, 0x1
/* 8134AD3C | 38 60 00 00 */	li r3, 0x0
/* 8134AD40 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134AD44 | 90 04 EA 58 */	stw r0, -0x15a8(r4)
/* 8134AD48 | 48 00 00 90 */	b .L_8134ADD8
.L_8134AD4C:
/* 8134AD4C | 7F C3 F3 78 */	mr r3, r30
/* 8134AD50 | 7F A4 EB 78 */	mr r4, r29
/* 8134AD54 | 38 A0 00 00 */	li r5, 0x0
/* 8134AD58 | 48 00 8F 5D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134AD5C | 48 00 00 7C */	b .L_8134ADD8
.L_8134AD60:
/* 8134AD60 | 48 29 D2 49 */	bl fn_815E7FA8
/* 8134AD64 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8134AD68 | 40 82 00 24 */	bne .L_8134AD8C
/* 8134AD6C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134AD70 | 38 60 FF FE */	li r3, -0x2
/* 8134AD74 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134AD78 | 88 04 E6 49 */	lbz r0, -0x19b7(r4)
/* 8134AD7C | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 8134AD80 | 41 82 00 58 */	beq .L_8134ADD8
/* 8134AD84 | 38 60 FF F7 */	li r3, -0x9
/* 8134AD88 | 48 00 00 50 */	b .L_8134ADD8
.L_8134AD8C:
/* 8134AD8C | 2C 03 00 16 */	cmpwi r3, 0x16
/* 8134AD90 | 40 82 00 0C */	bne .L_8134AD9C
/* 8134AD94 | 38 60 FF FE */	li r3, -0x2
/* 8134AD98 | 48 00 00 40 */	b .L_8134ADD8
.L_8134AD9C:
/* 8134AD9C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8134ADA0 | 40 82 00 34 */	bne .L_8134ADD4
/* 8134ADA4 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134ADA8 | 38 7F 09 27 */	addi r3, r31, 0x927
/* 8134ADAC | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134ADB0 | 88 84 E6 49 */	lbz r4, -0x19b7(r4)
/* 8134ADB4 | 4C C6 31 82 */	crclr cr1eq
/* 8134ADB8 | 48 1E 38 E9 */	bl OSReport
/* 8134ADBC | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134ADC0 | 38 60 FF F6 */	li r3, -0xa
/* 8134ADC4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8134ADC8 | 40 82 00 10 */	bne .L_8134ADD8
/* 8134ADCC | 38 60 FF FE */	li r3, -0x2
/* 8134ADD0 | 48 00 00 08 */	b .L_8134ADD8
.L_8134ADD4:
/* 8134ADD4 | 38 60 FF F6 */	li r3, -0xa
.L_8134ADD8:
/* 8134ADD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134ADDC | 48 2A E7 39 */	bl _restgpr_29
/* 8134ADE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134ADE4 | 7C 08 03 A6 */	mtlr r0
/* 8134ADE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134ADEC | 4E 80 00 20 */	blr
.endfn call_fa_mount__Q23ipl12NandSDWorkerFv

# .text:0x2A04 | 0x8134ADF0 | size: 0x178
# ipl::NandSDWorker::do_list_nand_save()
.fn do_list_nand_save__Q23ipl12NandSDWorkerFv, global
/* 8134ADF0 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8134ADF4 | 7C 08 02 A6 */	mflr r0
/* 8134ADF8 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8134ADFC | 39 61 00 80 */	addi r11, r1, 0x80
/* 8134AE00 | 48 2A E6 B1 */	bl _savegpr_23
/* 8134AE04 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134AE08 | 7C 7B 1B 78 */	mr r27, r3
/* 8134AE0C | 3B E0 00 00 */	li r31, 0x0
/* 8134AE10 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134AE14 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134AE18 | 38 60 00 00 */	li r3, 0x0
/* 8134AE1C | 83 A5 EA 38 */	lwz r29, -0x15c8(r5)
/* 8134AE20 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 8134AE24 | 48 27 36 C1 */	bl fn_815BE4E4
/* 8134AE28 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134AE2C | 38 A0 00 20 */	li r5, 0x20
/* 8134AE30 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134AE34 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AE38 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134AE3C | 54 04 18 38 */	slwi r4, r0, 3
/* 8134AE40 | 48 20 F9 15 */	bl fn_8155A754
/* 8134AE44 | 7C 7E 1B 78 */	mr r30, r3
/* 8134AE48 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134AE4C | 48 27 36 99 */	bl fn_815BE4E4
/* 8134AE50 | 3B 40 00 00 */	li r26, 0x0
/* 8134AE54 | 3B 80 00 00 */	li r28, 0x0
/* 8134AE58 | 3F 00 81 63 */	lis r24, lbl_81635BA4@ha
/* 8134AE5C | 3B 20 FF FF */	li r25, -0x1
/* 8134AE60 | 48 00 00 B0 */	b .L_8134AF10
.L_8134AE64:
/* 8134AE64 | 7E FE FA 14 */	add r23, r30, r31
/* 8134AE68 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 8134AE6C | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AE70 | 4B FF E3 DD */	bl is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134AE74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AE78 | 41 82 00 64 */	beq .L_8134AEDC
/* 8134AE7C | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 8134AE80 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8134AE84 | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8134AE88 | 38 B8 5B A4 */	addi r5, r24, lbl_81635BA4@l
/* 8134AE8C | 7C 07 C8 38 */	and r7, r0, r25
/* 8134AE90 | 38 80 00 40 */	li r4, 0x40
/* 8134AE94 | 4C C6 31 82 */	crclr cr1eq
/* 8134AE98 | 48 2B 5B 11 */	bl snprintf
/* 8134AE9C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8134AEA0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134AEA4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134AEA8 | 48 01 56 75 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134AEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AEB0 | 40 82 00 58 */	bne .L_8134AF08
/* 8134AEB4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134AEB8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8134AEBC | 40 81 00 4C */	ble .L_8134AF08
/* 8134AEC0 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 8134AEC4 | 7C 7D D2 14 */	add r3, r29, r26
/* 8134AEC8 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AECC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134AED0 | 7C 1D D1 2E */	stwx r0, r29, r26
/* 8134AED4 | 3B 5A 00 08 */	addi r26, r26, 0x8
/* 8134AED8 | 48 00 00 30 */	b .L_8134AF08
.L_8134AEDC:
/* 8134AEDC | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134AEE0 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AEE4 | 4B FF E4 19 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134AEE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AEEC | 41 82 00 1C */	beq .L_8134AF08
/* 8134AEF0 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 8134AEF4 | 7C 7D D2 14 */	add r3, r29, r26
/* 8134AEF8 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AEFC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134AF00 | 7C 1D D1 2E */	stwx r0, r29, r26
/* 8134AF04 | 3B 5A 00 08 */	addi r26, r26, 0x8
.L_8134AF08:
/* 8134AF08 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8134AF0C | 3B FF 00 08 */	addi r31, r31, 0x8
.L_8134AF10:
/* 8134AF10 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134AF14 | 7C 1C 00 40 */	cmplw r28, r0
/* 8134AF18 | 41 80 FF 4C */	blt .L_8134AE64
/* 8134AF1C | 7F 63 DB 78 */	mr r3, r27
/* 8134AF20 | 38 C0 00 02 */	li r6, 0x2
/* 8134AF24 | 38 A0 00 01 */	li r5, 0x1
/* 8134AF28 | 48 00 8C 85 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134AF2C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134AF30 | 7F C4 F3 78 */	mr r4, r30
/* 8134AF34 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AF38 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134AF3C | 48 20 FA C9 */	bl fn_8155AA04
/* 8134AF40 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134AF44 | 38 00 00 00 */	li r0, 0x0
/* 8134AF48 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8134AF4C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AF50 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AF54 | 48 2A E5 A9 */	bl _restgpr_23
/* 8134AF58 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8134AF5C | 7C 08 03 A6 */	mtlr r0
/* 8134AF60 | 38 21 00 80 */	addi r1, r1, 0x80
/* 8134AF64 | 4E 80 00 20 */	blr
.endfn do_list_nand_save__Q23ipl12NandSDWorkerFv

# .text:0x2B7C | 0x8134AF68 | size: 0xE4
# ipl::NandSDWorker::check_nand_save_banner_exist(unsigned long long)
.fn check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx, global
/* 8134AF68 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134AF6C | 7C 08 02 A6 */	mflr r0
/* 8134AF70 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8134AF74 | 38 00 00 00 */	li r0, 0x0
/* 8134AF78 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8134AF7C | 7C BF 2B 78 */	mr r31, r5
/* 8134AF80 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 8134AF84 | 7C DE 33 78 */	mr r30, r6
/* 8134AF88 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8134AF8C | 48 00 8C 21 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134AF90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AF94 | 40 82 00 0C */	bne .L_8134AFA0
/* 8134AF98 | 38 60 00 00 */	li r3, 0x0
/* 8134AF9C | 48 00 00 98 */	b .L_8134B034
.L_8134AFA0:
/* 8134AFA0 | 3C A0 81 63 */	lis r5, lbl_81635BA4@ha
/* 8134AFA4 | 38 00 FF FF */	li r0, -0x1
/* 8134AFA8 | 7F E6 FB 78 */	mr r6, r31
/* 8134AFAC | 38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFB0 | 38 A5 5B A4 */	addi r5, r5, lbl_81635BA4@l
/* 8134AFB4 | 7F C7 00 38 */	and r7, r30, r0
/* 8134AFB8 | 38 80 00 40 */	li r4, 0x40
/* 8134AFBC | 4C C6 31 82 */	crclr cr1eq
/* 8134AFC0 | 48 2B 59 E9 */	bl snprintf
/* 8134AFC4 | 38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFC8 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134AFCC | 38 A0 00 40 */	li r5, 0x40
/* 8134AFD0 | 48 2B 74 65 */	bl strncat
/* 8134AFD4 | 80 8D 81 58 */	lwz r4, c_banner_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 8134AFD8 | 38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFDC | 38 A0 00 40 */	li r5, 0x40
/* 8134AFE0 | 48 2B 74 55 */	bl strncat
/* 8134AFE4 | 38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFE8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134AFEC | 48 01 51 8D */	bl GetType__Q33ipl4nand7wrapperFPCcPUc
/* 8134AFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AFF4 | 7C 65 1B 78 */	mr r5, r3
/* 8134AFF8 | 40 82 00 18 */	bne .L_8134B010
/* 8134AFFC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134B000 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8134B004 | 40 82 00 0C */	bne .L_8134B010
/* 8134B008 | 38 60 00 01 */	li r3, 0x1
/* 8134B00C | 48 00 00 28 */	b .L_8134B034
.L_8134B010:
/* 8134B010 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 8134B014 | 41 82 00 1C */	beq .L_8134B030
/* 8134B018 | 3C 60 81 63 */	lis r3, lbl_816363CB@ha
/* 8134B01C | 88 C1 00 08 */	lbz r6, 0x8(r1)
/* 8134B020 | 38 81 00 09 */	addi r4, r1, 0x9
/* 8134B024 | 38 63 63 CB */	addi r3, r3, lbl_816363CB@l
/* 8134B028 | 4C C6 31 82 */	crclr cr1eq
/* 8134B02C | 48 1E 36 75 */	bl OSReport
.L_8134B030:
/* 8134B030 | 38 60 00 00 */	li r3, 0x0
.L_8134B034:
/* 8134B034 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134B038 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8134B03C | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8134B040 | 7C 08 03 A6 */	mtlr r0
/* 8134B044 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8134B048 | 4E 80 00 20 */	blr
.endfn check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx

# .text:0x2C60 | 0x8134B04C | size: 0x3B0
# ipl::NandSDWorker::get_nand_save_banner(unsigned long long, WIISaveBannerFile*, unsigned long*)
.fn get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl, global
/* 8134B04C | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8134B050 | 7C 08 02 A6 */	mflr r0
/* 8134B054 | 90 01 01 04 */	stw r0, 0x104(r1)
/* 8134B058 | 39 61 01 00 */	addi r11, r1, 0x100
/* 8134B05C | 48 2A E4 59 */	bl _savegpr_24
/* 8134B060 | 3B A0 00 00 */	li r29, 0x0
/* 8134B064 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134B068 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8134B06C | 7C DA 33 78 */	mr r26, r6
/* 8134B070 | 7C BB 2B 78 */	mr r27, r5
/* 8134B074 | 7C 79 1B 78 */	mr r25, r3
/* 8134B078 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B07C | 7C FC 3B 78 */	mr r28, r7
/* 8134B080 | 7D 18 43 78 */	mr r24, r8
/* 8134B084 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134B088 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B08C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B090 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B094 | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134B098 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B09C | 48 00 7B 19 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B0A4 | 7C 7E 1B 78 */	mr r30, r3
/* 8134B0A8 | 41 82 00 10 */	beq .L_8134B0B8
/* 8134B0AC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8134B0B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134B0B4 | 40 82 03 14 */	bne .L_8134B3C8
.L_8134B0B8:
/* 8134B0B8 | 38 00 00 00 */	li r0, 0x0
/* 8134B0BC | 3C 80 00 01 */	lis r4, 0x1
/* 8134B0C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134B0C4 | 38 A4 F0 A0 */	subi r5, r4, 0xf60
/* 8134B0C8 | 7F 83 E3 78 */	mr r3, r28
/* 8134B0CC | 3B A0 00 00 */	li r29, 0x0
/* 8134B0D0 | 38 80 00 00 */	li r4, 0x0
/* 8134B0D4 | 4B FE 52 61 */	bl memset
/* 8134B0D8 | 7F 44 D3 78 */	mr r4, r26
/* 8134B0DC | 7F 63 DB 78 */	mr r3, r27
/* 8134B0E0 | 4B FF E2 1D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134B0E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B0E8 | 41 82 00 24 */	beq .L_8134B10C
/* 8134B0EC | 7F 23 CB 78 */	mr r3, r25
/* 8134B0F0 | 7F 46 D3 78 */	mr r6, r26
/* 8134B0F4 | 7F 65 DB 78 */	mr r5, r27
/* 8134B0F8 | 7F 87 E3 78 */	mr r7, r28
/* 8134B0FC | 7F 08 C3 78 */	mr r8, r24
/* 8134B100 | 48 00 54 0D */	bl get_save_banner_for_data_only_title__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 8134B104 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8134B108 | 48 00 02 6C */	b .L_8134B374
.L_8134B10C:
/* 8134B10C | 38 00 FF FF */	li r0, -0x1
/* 8134B110 | 7F 66 DB 78 */	mr r6, r27
/* 8134B114 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134B118 | 38 BF 01 1C */	addi r5, r31, 0x11c
/* 8134B11C | 7F 47 00 38 */	and r7, r26, r0
/* 8134B120 | 38 80 00 40 */	li r4, 0x40
/* 8134B124 | 4C C6 31 82 */	crclr cr1eq
/* 8134B128 | 48 2B 58 81 */	bl snprintf
/* 8134B12C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134B130 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134B134 | 38 A0 00 40 */	li r5, 0x40
/* 8134B138 | 48 2B 72 FD */	bl strncat
/* 8134B13C | 80 8D 81 58 */	lwz r4, c_banner_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 8134B140 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134B144 | 38 A0 00 40 */	li r5, 0x40
/* 8134B148 | 48 2B 72 ED */	bl strncat
/* 8134B14C | 7F 23 CB 78 */	mr r3, r25
/* 8134B150 | 7F 46 D3 78 */	mr r6, r26
/* 8134B154 | 7F 65 DB 78 */	mr r5, r27
/* 8134B158 | 48 00 8A 55 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134B15C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B160 | 40 82 00 10 */	bne .L_8134B170
/* 8134B164 | 38 00 FF FE */	li r0, -0x2
/* 8134B168 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B16C | 48 00 01 A8 */	b .L_8134B314
.L_8134B170:
/* 8134B170 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134B174 | 38 81 00 50 */	addi r4, r1, 0x50
/* 8134B178 | 38 A0 00 01 */	li r5, 0x1
/* 8134B17C | 48 01 4B 15 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8134B180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B184 | 41 82 00 24 */	beq .L_8134B1A8
/* 8134B188 | 7C 65 1B 78 */	mr r5, r3
/* 8134B18C | 38 7F 09 70 */	addi r3, r31, 0x970
/* 8134B190 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B194 | 4C C6 31 82 */	crclr cr1eq
/* 8134B198 | 48 1E 35 09 */	bl OSReport
/* 8134B19C | 38 00 FF FE */	li r0, -0x2
/* 8134B1A0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B1A4 | 48 00 01 70 */	b .L_8134B314
.L_8134B1A8:
/* 8134B1A8 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8134B1AC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134B1B0 | 3B A0 00 01 */	li r29, 0x1
/* 8134B1B4 | 48 01 4D 11 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 8134B1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B1BC | 41 82 00 24 */	beq .L_8134B1E0
/* 8134B1C0 | 7C 65 1B 78 */	mr r5, r3
/* 8134B1C4 | 38 7F 09 96 */	addi r3, r31, 0x996
/* 8134B1C8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B1CC | 4C C6 31 82 */	crclr cr1eq
/* 8134B1D0 | 48 1E 34 D1 */	bl OSReport
/* 8134B1D4 | 38 00 FF FE */	li r0, -0x2
/* 8134B1D8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B1DC | 48 00 01 38 */	b .L_8134B314
.L_8134B1E0:
/* 8134B1E0 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134B1E4 | 28 05 72 A0 */	cmplwi r5, 0x72a0
/* 8134B1E8 | 40 80 00 20 */	bge .L_8134B208
/* 8134B1EC | 38 7F 09 C2 */	addi r3, r31, 0x9c2
/* 8134B1F0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B1F4 | 4C C6 31 82 */	crclr cr1eq
/* 8134B1F8 | 48 1E 34 A9 */	bl OSReport
/* 8134B1FC | 38 00 FF FD */	li r0, -0x3
/* 8134B200 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B204 | 48 00 01 10 */	b .L_8134B314
.L_8134B208:
/* 8134B208 | 28 05 F0 A0 */	cmplwi r5, 0xf0a0
/* 8134B20C | 40 81 00 20 */	ble .L_8134B22C
/* 8134B210 | 38 7F 09 F2 */	addi r3, r31, 0x9f2
/* 8134B214 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B218 | 4C C6 31 82 */	crclr cr1eq
/* 8134B21C | 48 1E 34 85 */	bl OSReport
/* 8134B220 | 38 00 FF FD */	li r0, -0x3
/* 8134B224 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B228 | 48 00 00 EC */	b .L_8134B314
.L_8134B22C:
/* 8134B22C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134B230 | 41 82 00 08 */	beq .L_8134B238
/* 8134B234 | 90 B8 00 00 */	stw r5, 0x0(r24)
.L_8134B238:
/* 8134B238 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134B23C | 7F 84 E3 78 */	mr r4, r28
/* 8134B240 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8134B244 | 48 01 4B 25 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8134B248 | 7C 78 1B 78 */	mr r24, r3
/* 8134B24C | 7F 23 CB 78 */	mr r3, r25
/* 8134B250 | 7F 04 C3 78 */	mr r4, r24
/* 8134B254 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8134B258 | 48 00 8A 01 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134B25C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B260 | 40 82 00 B4 */	bne .L_8134B314
/* 8134B264 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134B268 | 7C 18 00 40 */	cmplw r24, r0
/* 8134B26C | 41 82 00 24 */	beq .L_8134B290
/* 8134B270 | 7F 05 C3 78 */	mr r5, r24
/* 8134B274 | 38 7F 0A 22 */	addi r3, r31, 0xa22
/* 8134B278 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B27C | 4C C6 31 82 */	crclr cr1eq
/* 8134B280 | 48 1E 34 21 */	bl OSReport
/* 8134B284 | 38 00 FF FE */	li r0, -0x2
/* 8134B288 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B28C | 48 00 00 88 */	b .L_8134B314
.L_8134B290:
/* 8134B290 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8134B294 | 48 01 4A 71 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134B298 | 7C 78 1B 78 */	mr r24, r3
/* 8134B29C | 7F 23 CB 78 */	mr r3, r25
/* 8134B2A0 | 7F 04 C3 78 */	mr r4, r24
/* 8134B2A4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8134B2A8 | 48 00 89 B1 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134B2AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B2B0 | 40 82 00 64 */	bne .L_8134B314
/* 8134B2B4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134B2B8 | 41 82 00 24 */	beq .L_8134B2DC
/* 8134B2BC | 7F 05 C3 78 */	mr r5, r24
/* 8134B2C0 | 38 7F 0A 48 */	addi r3, r31, 0xa48
/* 8134B2C4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B2C8 | 4C C6 31 82 */	crclr cr1eq
/* 8134B2CC | 48 1E 33 D5 */	bl OSReport
/* 8134B2D0 | 38 00 FF FE */	li r0, -0x2
/* 8134B2D4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B2D8 | 48 00 00 3C */	b .L_8134B314
.L_8134B2DC:
/* 8134B2DC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134B2E0 | 3B A0 00 00 */	li r29, 0x0
/* 8134B2E4 | 3C 03 A8 B7 */	subis r0, r3, 0x5749
/* 8134B2E8 | 28 00 42 4E */	cmplwi r0, 0x424e
/* 8134B2EC | 41 82 00 20 */	beq .L_8134B30C
/* 8134B2F0 | 38 7F 0A 6F */	addi r3, r31, 0xa6f
/* 8134B2F4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B2F8 | 4C C6 31 82 */	crclr cr1eq
/* 8134B2FC | 48 1E 33 A5 */	bl OSReport
/* 8134B300 | 38 00 FF FD */	li r0, -0x3
/* 8134B304 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B308 | 48 00 00 0C */	b .L_8134B314
.L_8134B30C:
/* 8134B30C | 38 00 00 00 */	li r0, 0x0
/* 8134B310 | 90 01 00 0C */	stw r0, 0xc(r1)
.L_8134B314:
/* 8134B314 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B318 | 41 82 00 4C */	beq .L_8134B364
/* 8134B31C | 38 61 00 50 */	addi r3, r1, 0x50
/* 8134B320 | 48 01 49 E5 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134B324 | 7C 7D 1B 78 */	mr r29, r3
/* 8134B328 | 7F 23 CB 78 */	mr r3, r25
/* 8134B32C | 7F A4 EB 78 */	mr r4, r29
/* 8134B330 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8134B334 | 48 00 89 25 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134B338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B33C | 40 82 00 28 */	bne .L_8134B364
/* 8134B340 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B344 | 41 82 00 20 */	beq .L_8134B364
/* 8134B348 | 7F A5 EB 78 */	mr r5, r29
/* 8134B34C | 38 7F 0A 48 */	addi r3, r31, 0xa48
/* 8134B350 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B354 | 4C C6 31 82 */	crclr cr1eq
/* 8134B358 | 48 1E 33 49 */	bl OSReport
/* 8134B35C | 38 00 FF FE */	li r0, -0x2
/* 8134B360 | 90 01 00 0C */	stw r0, 0xc(r1)
.L_8134B364:
/* 8134B364 | 7F 23 CB 78 */	mr r3, r25
/* 8134B368 | 38 C0 00 02 */	li r6, 0x2
/* 8134B36C | 38 A0 00 01 */	li r5, 0x1
/* 8134B370 | 48 00 88 3D */	bl change_uid__Q23ipl12NandSDWorkerFUx
.L_8134B374:
/* 8134B374 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134B378 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134B37C | 40 82 00 64 */	bne .L_8134B3E0
/* 8134B380 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134B384 | 41 82 00 1C */	beq .L_8134B3A0
/* 8134B388 | 3C A0 00 01 */	lis r5, 0x1
/* 8134B38C | 7F C3 F3 78 */	mr r3, r30
/* 8134B390 | 7F 84 E3 78 */	mr r4, r28
/* 8134B394 | 38 A5 F0 A0 */	subi r5, r5, 0xf60
/* 8134B398 | 4B FE 4E 99 */	bl memcpy
/* 8134B39C | 48 00 00 44 */	b .L_8134B3E0
.L_8134B3A0:
/* 8134B3A0 | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 8134B3A4 | 7F 23 CB 78 */	mr r3, r25
/* 8134B3A8 | 7F 46 D3 78 */	mr r6, r26
/* 8134B3AC | 7F 65 DB 78 */	mr r5, r27
/* 8134B3B0 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B3B4 | 7F 87 E3 78 */	mr r7, r28
/* 8134B3B8 | 39 00 FF FF */	li r8, -0x1
/* 8134B3BC | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134B3C0 | 48 00 75 39 */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
/* 8134B3C4 | 48 00 00 1C */	b .L_8134B3E0
.L_8134B3C8:
/* 8134B3C8 | 3C A0 00 01 */	lis r5, 0x1
/* 8134B3CC | 7F 83 E3 78 */	mr r3, r28
/* 8134B3D0 | 7F C4 F3 78 */	mr r4, r30
/* 8134B3D4 | 38 A5 F0 A0 */	subi r5, r5, 0xf60
/* 8134B3D8 | 4B FE 4E 59 */	bl memcpy
/* 8134B3DC | 93 A1 00 0C */	stw r29, 0xc(r1)
.L_8134B3E0:
/* 8134B3E0 | 39 61 01 00 */	addi r11, r1, 0x100
/* 8134B3E4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134B3E8 | 48 2A E1 19 */	bl _restgpr_24
/* 8134B3EC | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 8134B3F0 | 7C 08 03 A6 */	mtlr r0
/* 8134B3F4 | 38 21 01 00 */	addi r1, r1, 0x100
/* 8134B3F8 | 4E 80 00 20 */	blr
.endfn get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl

# .text:0x3010 | 0x8134B3FC | size: 0x160
# ipl::NandSDWorker::do_get_sd_save_banner()
.fn do_get_sd_save_banner__Q23ipl12NandSDWorkerFv, global
/* 8134B3FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134B400 | 7C 08 02 A6 */	mflr r0
/* 8134B404 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134B408 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134B40C | 48 2A E0 B9 */	bl _savegpr_28
/* 8134B410 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B414 | 7C 7F 1B 78 */	mr r31, r3
/* 8134B418 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B41C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B420 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B424 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134B428 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B42C | 48 00 77 89 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B434 | 7C 7D 1B 78 */	mr r29, r3
/* 8134B438 | 41 82 00 10 */	beq .L_8134B448
/* 8134B43C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8134B440 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134B444 | 40 82 00 D4 */	bne .L_8134B518
.L_8134B448:
/* 8134B448 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B44C | 3F C0 00 01 */	lis r30, 0x1
/* 8134B450 | 38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134B454 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B458 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B45C | 48 21 02 0D */	bl fn_8155B668
/* 8134B460 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134B464 | 7C 7C 1B 78 */	mr r28, r3
/* 8134B468 | 7F E3 FB 78 */	mr r3, r31
/* 8134B46C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B470 | 7F 85 E3 78 */	mr r5, r28
/* 8134B474 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134B478 | 48 00 42 11 */	bl get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner
/* 8134B47C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B480 | 40 82 00 74 */	bne .L_8134B4F4
/* 8134B484 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B488 | 38 9C 00 20 */	addi r4, r28, 0x20
/* 8134B48C | 38 BE F0 A0 */	subi r5, r30, 0xf60
/* 8134B490 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B494 | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134B498 | 4B FE 4D 99 */	bl memcpy
/* 8134B49C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B4A0 | 41 82 00 18 */	beq .L_8134B4B8
/* 8134B4A4 | 7F A3 EB 78 */	mr r3, r29
/* 8134B4A8 | 38 9C 00 20 */	addi r4, r28, 0x20
/* 8134B4AC | 38 BE F0 A0 */	subi r5, r30, 0xf60
/* 8134B4B0 | 4B FE 4D 81 */	bl memcpy
/* 8134B4B4 | 48 00 00 2C */	b .L_8134B4E0
.L_8134B4B8:
/* 8134B4B8 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134B4BC | 7F E3 FB 78 */	mr r3, r31
/* 8134B4C0 | 38 FC 00 20 */	addi r7, r28, 0x20
/* 8134B4C4 | 39 00 FF FF */	li r8, -0x1
/* 8134B4C8 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B4CC | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B4D0 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B4D4 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134B4D8 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B4DC | 48 00 74 1D */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
.L_8134B4E0:
/* 8134B4E0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B4E4 | 38 00 00 00 */	li r0, 0x0
/* 8134B4E8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B4EC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134B4F0 | 48 00 00 10 */	b .L_8134B500
.L_8134B4F4:
/* 8134B4F4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134B4F8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B4FC | 90 64 EA 24 */	stw r3, -0x15dc(r4)
.L_8134B500:
/* 8134B500 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B504 | 7F 84 E3 78 */	mr r4, r28
/* 8134B508 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B50C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B510 | 48 21 01 69 */	bl fn_8155B678
/* 8134B514 | 48 00 00 30 */	b .L_8134B544
.L_8134B518:
/* 8134B518 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8134B51C | 3C 60 00 01 */	lis r3, 0x1
/* 8134B520 | 7F A4 EB 78 */	mr r4, r29
/* 8134B524 | 3C C5 00 04 */	addis r6, r5, 0x4
/* 8134B528 | 38 A3 F0 A0 */	subi r5, r3, 0xf60
/* 8134B52C | 80 66 EA 38 */	lwz r3, -0x15c8(r6)
/* 8134B530 | 4B FE 4D 01 */	bl memcpy
/* 8134B534 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B538 | 38 00 00 00 */	li r0, 0x0
/* 8134B53C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B540 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134B544:
/* 8134B544 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134B548 | 48 2A DF C9 */	bl _restgpr_28
/* 8134B54C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134B550 | 7C 08 03 A6 */	mtlr r0
/* 8134B554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134B558 | 4E 80 00 20 */	blr
.endfn do_get_sd_save_banner__Q23ipl12NandSDWorkerFv

# .text:0x3170 | 0x8134B55C | size: 0x1CC
# ipl::NandSDWorker::do_get_sd_app_thumbnail()
.fn do_get_sd_app_thumbnail__Q23ipl12NandSDWorkerFv, global
/* 8134B55C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134B560 | 7C 08 02 A6 */	mflr r0
/* 8134B564 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134B568 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134B56C | 48 2A DF 59 */	bl _savegpr_28
/* 8134B570 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B574 | 7C 7E 1B 78 */	mr r30, r3
/* 8134B578 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B57C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B580 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B584 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B588 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B58C | 48 00 78 6D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B590 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B594 | 7C 7D 1B 78 */	mr r29, r3
/* 8134B598 | 41 82 00 10 */	beq .L_8134B5A8
/* 8134B59C | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8134B5A0 | 2C 05 FF FF */	cmpwi r5, -0x1
/* 8134B5A4 | 40 82 01 24 */	bne .L_8134B6C8
.L_8134B5A8:
/* 8134B5A8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B5AC | 38 80 06 40 */	li r4, 0x640
/* 8134B5B0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B5B4 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B5B8 | 48 21 00 B1 */	bl fn_8155B668
/* 8134B5BC | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B5C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8134B5C4 | 7F C3 F3 78 */	mr r3, r30
/* 8134B5C8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B5CC | 7F E5 FB 78 */	mr r5, r31
/* 8134B5D0 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134B5D4 | 48 00 60 8D */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134B5D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B5DC | 41 82 00 14 */	beq .L_8134B5F0
/* 8134B5E0 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B5E4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B5E8 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B5EC | 48 00 00 BC */	b .L_8134B6A8
.L_8134B5F0:
/* 8134B5F0 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8134B5F4 | 7F C3 F3 78 */	mr r3, r30
/* 8134B5F8 | 7F E4 FB 78 */	mr r4, r31
/* 8134B5FC | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134B600 | 80 A5 EA 38 */	lwz r5, -0x15c8(r5)
/* 8134B604 | 48 00 62 D1 */	bl get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc
/* 8134B608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B60C | 7C 7C 1B 78 */	mr r28, r3
/* 8134B610 | 40 80 00 14 */	bge .L_8134B624
/* 8134B614 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B618 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B61C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B620 | 48 00 00 88 */	b .L_8134B6A8
.L_8134B624:
/* 8134B624 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B628 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B62C | 80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134B630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B634 | 41 82 00 10 */	beq .L_8134B644
/* 8134B638 | 38 9F 00 40 */	addi r4, r31, 0x40
/* 8134B63C | 38 A0 06 00 */	li r5, 0x600
/* 8134B640 | 4B FE 4B F1 */	bl memcpy
.L_8134B644:
/* 8134B644 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B648 | 41 82 00 24 */	beq .L_8134B66C
/* 8134B64C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B650 | 7F 85 E3 78 */	mr r5, r28
/* 8134B654 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 8134B658 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B65C | 80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 8134B660 | 4B FE 4B D1 */	bl memcpy
/* 8134B664 | 93 9D 00 0C */	stw r28, 0xc(r29)
/* 8134B668 | 48 00 00 34 */	b .L_8134B69C
.L_8134B66C:
/* 8134B66C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B670 | 7F C3 F3 78 */	mr r3, r30
/* 8134B674 | 7F 88 E3 78 */	mr r8, r28
/* 8134B678 | 39 3F 00 40 */	addi r9, r31, 0x40
/* 8134B67C | 3C E4 00 04 */	addis r7, r4, 0x4
/* 8134B680 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B684 | 80 A7 EA 48 */	lwz r5, -0x15b8(r7)
/* 8134B688 | 39 40 FF FF */	li r10, -0x1
/* 8134B68C | 80 C7 EA 4C */	lwz r6, -0x15b4(r7)
/* 8134B690 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B694 | 80 E7 EA 38 */	lwz r7, -0x15c8(r7)
/* 8134B698 | 48 00 76 71 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
.L_8134B69C:
/* 8134B69C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6A0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B6A4 | 93 83 EA 24 */	stw r28, -0x15dc(r3)
.L_8134B6A8:
/* 8134B6A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134B6AC | 41 82 00 64 */	beq .L_8134B710
/* 8134B6B0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6B4 | 7F E4 FB 78 */	mr r4, r31
/* 8134B6B8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B6BC | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B6C0 | 48 20 FF B9 */	bl fn_8155B678
/* 8134B6C4 | 48 00 00 4C */	b .L_8134B710
.L_8134B6C8:
/* 8134B6C8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6CC | 38 9D 00 18 */	addi r4, r29, 0x18
/* 8134B6D0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B6D4 | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134B6D8 | 4B FE 4B 59 */	bl memcpy
/* 8134B6DC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B6E4 | 80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134B6E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B6EC | 41 82 00 14 */	beq .L_8134B700
/* 8134B6F0 | 3C 9D 00 02 */	addis r4, r29, 0x2
/* 8134B6F4 | 38 A0 06 00 */	li r5, 0x600
/* 8134B6F8 | 38 84 90 18 */	subi r4, r4, 0x6fe8
/* 8134B6FC | 4B FE 4B 35 */	bl memcpy
.L_8134B700:
/* 8134B700 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B704 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8134B708 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B70C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134B710:
/* 8134B710 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134B714 | 48 2A DD FD */	bl _restgpr_28
/* 8134B718 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134B71C | 7C 08 03 A6 */	mtlr r0
/* 8134B720 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134B724 | 4E 80 00 20 */	blr
.endfn do_get_sd_app_thumbnail__Q23ipl12NandSDWorkerFv

# .text:0x333C | 0x8134B728 | size: 0x1F4
.fn iplNandSD_8134B728, local
/* 8134B728 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134B72C | 7C 08 02 A6 */	mflr r0
/* 8134B730 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134B734 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134B738 | 48 2A DD 8D */	bl _savegpr_28
/* 8134B73C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B740 | 7C 7D 1B 78 */	mr r29, r3
/* 8134B744 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B748 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B74C | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B750 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B754 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B758 | 48 00 76 A1 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B760 | 7C 7F 1B 78 */	mr r31, r3
/* 8134B764 | 41 82 00 10 */	beq .L_8134B774
/* 8134B768 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8134B76C | 2C 05 FF FF */	cmpwi r5, -0x1
/* 8134B770 | 40 82 01 38 */	bne .L_8134B8A8
.L_8134B774:
/* 8134B774 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B778 | 38 80 06 40 */	li r4, 0x640
/* 8134B77C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B780 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B784 | 48 20 FE E5 */	bl fn_8155B668
/* 8134B788 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B78C | 7C 7E 1B 78 */	mr r30, r3
/* 8134B790 | 7F A3 EB 78 */	mr r3, r29
/* 8134B794 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B798 | 7F C5 F3 78 */	mr r5, r30
/* 8134B79C | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134B7A0 | 48 00 5E C1 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134B7A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B7A8 | 41 82 00 14 */	beq .L_8134B7BC
/* 8134B7AC | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B7B0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B7B4 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B7B8 | 48 00 00 D0 */	b .L_8134B888
.L_8134B7BC:
/* 8134B7BC | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134B7C0 | 7F A3 EB 78 */	mr r3, r29
/* 8134B7C4 | 7F C4 F3 78 */	mr r4, r30
/* 8134B7C8 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134B7CC | 80 A5 EA 38 */	lwz r5, -0x15c8(r5)
/* 8134B7D0 | 48 00 61 05 */	bl get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc
/* 8134B7D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B7D8 | 7C 7C 1B 78 */	mr r28, r3
/* 8134B7DC | 40 80 00 14 */	bge .L_8134B7F0
/* 8134B7E0 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B7E4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B7E8 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B7EC | 48 00 00 9C */	b .L_8134B888
.L_8134B7F0:
/* 8134B7F0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B7F4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B7F8 | 80 E3 EA 3C */	lwz r7, -0x15c4(r3)
/* 8134B7FC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8134B800 | 41 82 00 24 */	beq .L_8134B824
/* 8134B804 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8134B808 | 38 67 00 08 */	addi r3, r7, 0x8
/* 8134B80C | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8134B810 | 38 9E 00 40 */	addi r4, r30, 0x40
/* 8134B814 | 38 A0 06 00 */	li r5, 0x600
/* 8134B818 | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 8134B81C | 90 07 00 00 */	stw r0, 0x0(r7)
/* 8134B820 | 4B FE 4A 11 */	bl memcpy
.L_8134B824:
/* 8134B824 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134B828 | 41 82 00 24 */	beq .L_8134B84C
/* 8134B82C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B830 | 7F 85 E3 78 */	mr r5, r28
/* 8134B834 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 8134B838 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B83C | 80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 8134B840 | 4B FE 49 F1 */	bl memcpy
/* 8134B844 | 93 9F 00 0C */	stw r28, 0xc(r31)
/* 8134B848 | 48 00 00 34 */	b .L_8134B87C
.L_8134B84C:
/* 8134B84C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B850 | 7F A3 EB 78 */	mr r3, r29
/* 8134B854 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8134B858 | 7F 88 E3 78 */	mr r8, r28
/* 8134B85C | 3C E4 00 04 */	addis r7, r4, 0x4
/* 8134B860 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B864 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8134B868 | 39 3E 00 40 */	addi r9, r30, 0x40
/* 8134B86C | 80 E7 EA 38 */	lwz r7, -0x15c8(r7)
/* 8134B870 | 39 40 FF FF */	li r10, -0x1
/* 8134B874 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B878 | 48 00 74 91 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
.L_8134B87C:
/* 8134B87C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B880 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B884 | 93 83 EA 24 */	stw r28, -0x15dc(r3)
.L_8134B888:
/* 8134B888 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134B88C | 41 82 00 78 */	beq .L_8134B904
/* 8134B890 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B894 | 7F C4 F3 78 */	mr r4, r30
/* 8134B898 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B89C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B8A0 | 48 20 FD D9 */	bl fn_8155B678
/* 8134B8A4 | 48 00 00 60 */	b .L_8134B904
.L_8134B8A8:
/* 8134B8A8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B8AC | 38 9F 00 18 */	addi r4, r31, 0x18
/* 8134B8B0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B8B4 | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134B8B8 | 4B FE 49 79 */	bl memcpy
/* 8134B8BC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B8C0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B8C4 | 80 E3 EA 3C */	lwz r7, -0x15c4(r3)
/* 8134B8C8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8134B8CC | 41 82 00 28 */	beq .L_8134B8F4
/* 8134B8D0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8134B8D4 | 3C 9F 00 02 */	addis r4, r31, 0x2
/* 8134B8D8 | 80 DF 00 04 */	lwz r6, 0x4(r31)
/* 8134B8DC | 38 67 00 08 */	addi r3, r7, 0x8
/* 8134B8E0 | 38 A0 06 00 */	li r5, 0x600
/* 8134B8E4 | 38 84 90 18 */	subi r4, r4, 0x6fe8
/* 8134B8E8 | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 8134B8EC | 90 07 00 00 */	stw r0, 0x0(r7)
/* 8134B8F0 | 4B FE 49 41 */	bl memcpy
.L_8134B8F4:
/* 8134B8F4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B8F8 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8134B8FC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B900 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134B904:
/* 8134B904 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134B908 | 48 2A DC 09 */	bl _restgpr_28
/* 8134B90C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134B910 | 7C 08 03 A6 */	mtlr r0
/* 8134B914 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134B918 | 4E 80 00 20 */	blr
.endfn iplNandSD_8134B728

# .text:0x3530 | 0x8134B91C | size: 0x344
.fn iplNandSD_8134B91C, local
/* 8134B91C | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8134B920 | 7C 08 02 A6 */	mflr r0
/* 8134B924 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8134B928 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 8134B92C | 48 2A DB 81 */	bl _savegpr_22
/* 8134B930 | 80 A2 81 70 */	lwz r5, lbl_81694570@sda21(r0)
/* 8134B934 | 7C 7D 1B 78 */	mr r29, r3
/* 8134B938 | 80 02 81 74 */	lwz r0, lbl_81694574@sda21(r0)
/* 8134B93C | 38 80 03 E0 */	li r4, 0x3e0
/* 8134B940 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134B944 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8134B948 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B94C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B950 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B954 | 48 20 FD 15 */	bl fn_8155B668
/* 8134B958 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134B95C | 7C 7F 1B 78 */	mr r31, r3
/* 8134B960 | 38 80 03 E0 */	li r4, 0x3e0
/* 8134B964 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134B968 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B96C | 48 20 FC FD */	bl fn_8155B668
/* 8134B970 | 38 00 00 73 */	li r0, 0x73
/* 8134B974 | 3C 80 81 61 */	lis r4, c_md5_secret_key__Q23ipl12NandSDWorker@ha
/* 8134B978 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8134B97C | 38 00 00 64 */	li r0, 0x64
/* 8134B980 | 7C 7E 1B 78 */	mr r30, r3
/* 8134B984 | 38 A0 00 61 */	li r5, 0x61
/* 8134B988 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8134B98C | 38 00 00 6C */	li r0, 0x6c
/* 8134B990 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8134B994 | 38 84 D6 48 */	addi r4, r4, c_md5_secret_key__Q23ipl12NandSDWorker@l
/* 8134B998 | 98 BF 00 02 */	stb r5, 0x2(r31)
/* 8134B99C | 38 A0 00 10 */	li r5, 0x10
/* 8134B9A0 | 98 1F 00 03 */	stb r0, 0x3(r31)
/* 8134B9A4 | 4B FE 48 8D */	bl memcpy
/* 8134B9A8 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B9AC | 38 7F 00 14 */	addi r3, r31, 0x14
/* 8134B9B0 | 38 A0 03 C0 */	li r5, 0x3c0
/* 8134B9B4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B9B8 | 80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 8134B9BC | 4B FE 48 75 */	bl memcpy
/* 8134B9C0 | 38 7F 03 D4 */	addi r3, r31, 0x3d4
/* 8134B9C4 | 38 80 00 00 */	li r4, 0x0
/* 8134B9C8 | 38 A0 00 0C */	li r5, 0xc
/* 8134B9CC | 4B FE 49 69 */	bl memset
/* 8134B9D0 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8134B9D4 | 48 14 7E 21 */	bl NETMD5Init
/* 8134B9D8 | 7F E4 FB 78 */	mr r4, r31
/* 8134B9DC | 38 61 00 38 */	addi r3, r1, 0x38
/* 8134B9E0 | 38 A0 03 E0 */	li r5, 0x3e0
/* 8134B9E4 | 48 14 7E 51 */	bl NETMD5Update
/* 8134B9E8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8134B9EC | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B9F0 | 48 14 7F 35 */	bl NETMD5GetDigest
/* 8134B9F4 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8134B9F8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134B9FC | 38 A0 00 10 */	li r5, 0x10
/* 8134BA00 | 4B FE 48 31 */	bl memcpy
/* 8134BA04 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134BA08 | 3B 00 FF FE */	li r24, -0x2
/* 8134BA0C | 7F E3 FB 78 */	mr r3, r31
/* 8134BA10 | 7F C5 F3 78 */	mr r5, r30
/* 8134BA14 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134BA18 | 38 80 03 E0 */	li r4, 0x3e0
/* 8134BA1C | 93 06 EA 24 */	stw r24, -0x15dc(r6)
/* 8134BA20 | 48 00 85 B9 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134BA24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BA28 | 41 82 00 14 */	beq .L_8134BA3C
/* 8134BA2C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BA30 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BA34 | 93 03 EA 24 */	stw r24, -0x15dc(r3)
/* 8134BA38 | 48 00 01 E8 */	b .L_8134BC20
.L_8134BA3C:
/* 8134BA3C | 3A C0 00 00 */	li r22, 0x0
/* 8134BA40 | 3B 01 00 08 */	addi r24, r1, 0x8
/* 8134BA44 | 7E D9 B3 78 */	mr r25, r22
/* 8134BA48 | 3B 80 00 00 */	li r28, 0x0
/* 8134BA4C | 7E DB B3 78 */	mr r27, r22
/* 8134BA50 | 3B 40 03 E0 */	li r26, 0x3e0
.L_8134BA54:
/* 8134BA54 | 7E F8 E0 2E */	lwzx r23, r24, r28
/* 8134BA58 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8134BA5C | 7E E3 BB 78 */	mr r3, r23
/* 8134BA60 | 48 29 C6 C5 */	bl fn_815E8124
/* 8134BA64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BA68 | 40 82 00 34 */	bne .L_8134BA9C
/* 8134BA6C | 88 81 00 30 */	lbz r4, 0x30(r1)
/* 8134BA70 | 7F A3 EB 78 */	mr r3, r29
/* 8134BA74 | 48 00 86 95 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134BA78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BA7C | 41 82 00 0C */	beq .L_8134BA88
/* 8134BA80 | 38 00 00 01 */	li r0, 0x1
/* 8134BA84 | 48 00 00 50 */	b .L_8134BAD4
.L_8134BA88:
/* 8134BA88 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BA8C | 38 00 FF FE */	li r0, -0x2
/* 8134BA90 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BA94 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134BA98 | 48 00 01 88 */	b .L_8134BC20
.L_8134BA9C:
/* 8134BA9C | 48 29 C5 0D */	bl fn_815E7FA8
/* 8134BAA0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8134BAA4 | 41 82 00 0C */	beq .L_8134BAB0
/* 8134BAA8 | 2C 03 00 16 */	cmpwi r3, 0x16
/* 8134BAAC | 40 82 00 0C */	bne .L_8134BAB8
.L_8134BAB0:
/* 8134BAB0 | 38 00 00 00 */	li r0, 0x0
/* 8134BAB4 | 48 00 00 20 */	b .L_8134BAD4
.L_8134BAB8:
/* 8134BAB8 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BABC | 7F A3 EB 78 */	mr r3, r29
/* 8134BAC0 | 38 80 FF FF */	li r4, -0x1
/* 8134BAC4 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BAC8 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BACC | 48 00 83 35 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BAD0 | 48 00 01 50 */	b .L_8134BC20
.L_8134BAD4:
/* 8134BAD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134BAD8 | 40 82 00 98 */	bne .L_8134BB70
/* 8134BADC | 7F A3 EB 78 */	mr r3, r29
/* 8134BAE0 | 48 00 40 C5 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134BAE4 | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8134BAE8 | 6F 23 80 00 */	xoris r3, r25, 0x8000
/* 8134BAEC | 7C 19 20 10 */	subfc r0, r25, r4
/* 8134BAF0 | 7C 63 29 10 */	subfe r3, r3, r5
/* 8134BAF4 | 7C 65 29 10 */	subfe r3, r5, r5
/* 8134BAF8 | 7C 63 00 D1 */	neg. r3, r3
/* 8134BAFC | 41 82 00 14 */	beq .L_8134BB10
/* 8134BB00 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BB04 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BB08 | 90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8134BB0C | 48 00 01 14 */	b .L_8134BC20
.L_8134BB10:
/* 8134BB10 | 6F 63 80 00 */	xoris r3, r27, 0x8000
/* 8134BB14 | 7C 1A 20 10 */	subfc r0, r26, r4
/* 8134BB18 | 7C 63 29 10 */	subfe r3, r3, r5
/* 8134BB1C | 7C 65 29 10 */	subfe r3, r5, r5
/* 8134BB20 | 7C 63 00 D1 */	neg. r3, r3
/* 8134BB24 | 41 82 00 18 */	beq .L_8134BB3C
/* 8134BB28 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BB2C | 38 00 FF F9 */	li r0, -0x7
/* 8134BB30 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BB34 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134BB38 | 48 00 00 E8 */	b .L_8134BC20
.L_8134BB3C:
/* 8134BB3C | 7E E3 BB 78 */	mr r3, r23
/* 8134BB40 | 38 80 00 00 */	li r4, 0x0
/* 8134BB44 | 48 29 C3 65 */	bl fn_815E7EA8
/* 8134BB48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BB4C | 7C 77 1B 78 */	mr r23, r3
/* 8134BB50 | 40 82 00 54 */	bne .L_8134BBA4
/* 8134BB54 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BB58 | 7F A3 EB 78 */	mr r3, r29
/* 8134BB5C | 38 80 FF FF */	li r4, -0x1
/* 8134BB60 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BB64 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BB68 | 48 00 82 99 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BB6C | 48 00 00 B4 */	b .L_8134BC20
.L_8134BB70:
/* 8134BB70 | 7E E3 BB 78 */	mr r3, r23
/* 8134BB74 | 38 8D 81 AA */	li r4, lbl_816961EA@sda21
/* 8134BB78 | 48 29 C4 C9 */	bl fn_815E8040
/* 8134BB7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BB80 | 7C 77 1B 78 */	mr r23, r3
/* 8134BB84 | 40 82 00 20 */	bne .L_8134BBA4
/* 8134BB88 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BB8C | 7F A3 EB 78 */	mr r3, r29
/* 8134BB90 | 38 80 FF FF */	li r4, -0x1
/* 8134BB94 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BB98 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BB9C | 48 00 82 65 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BBA0 | 48 00 00 80 */	b .L_8134BC20
.L_8134BBA4:
/* 8134BBA4 | 7F C3 F3 78 */	mr r3, r30
/* 8134BBA8 | 7E E6 BB 78 */	mr r6, r23
/* 8134BBAC | 38 80 03 E0 */	li r4, 0x3e0
/* 8134BBB0 | 38 A0 00 01 */	li r5, 0x1
/* 8134BBB4 | 48 29 C5 9D */	bl fn_815E8150
/* 8134BBB8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134BBBC | 41 82 00 28 */	beq .L_8134BBE4
/* 8134BBC0 | 7E E3 BB 78 */	mr r3, r23
/* 8134BBC4 | 48 29 C4 25 */	bl fn_815E7FE8
/* 8134BBC8 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BBCC | 7F A3 EB 78 */	mr r3, r29
/* 8134BBD0 | 38 80 FF FF */	li r4, -0x1
/* 8134BBD4 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BBD8 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BBDC | 48 00 82 25 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BBE0 | 48 00 00 40 */	b .L_8134BC20
.L_8134BBE4:
/* 8134BBE4 | 7E E3 BB 78 */	mr r3, r23
/* 8134BBE8 | 48 29 C4 01 */	bl fn_815E7FE8
/* 8134BBEC | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8134BBF0 | 40 82 00 20 */	bne .L_8134BC10
/* 8134BBF4 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BBF8 | 7F A3 EB 78 */	mr r3, r29
/* 8134BBFC | 38 80 FF FF */	li r4, -0x1
/* 8134BC00 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BC04 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BC08 | 48 00 81 F9 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BC0C | 48 00 00 14 */	b .L_8134BC20
.L_8134BC10:
/* 8134BC10 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8134BC14 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8134BC18 | 2C 16 00 02 */	cmpwi r22, 0x2
/* 8134BC1C | 41 80 FE 38 */	blt .L_8134BA54
.L_8134BC20:
/* 8134BC20 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BC24 | 7F E4 FB 78 */	mr r4, r31
/* 8134BC28 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BC2C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BC30 | 48 20 FA 49 */	bl fn_8155B678
/* 8134BC34 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BC38 | 7F C4 F3 78 */	mr r4, r30
/* 8134BC3C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BC40 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BC44 | 48 20 FA 35 */	bl fn_8155B678
/* 8134BC48 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 8134BC4C | 48 2A D8 AD */	bl _restgpr_22
/* 8134BC50 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8134BC54 | 7C 08 03 A6 */	mtlr r0
/* 8134BC58 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 8134BC5C | 4E 80 00 20 */	blr
.endfn iplNandSD_8134B91C

# .text:0x3874 | 0x8134BC60 | size: 0x270
.fn iplNandSD_8134BC60, local
/* 8134BC60 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134BC64 | 7C 08 02 A6 */	mflr r0
/* 8134BC68 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8134BC6C | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134BC70 | 48 2A D8 31 */	bl _savegpr_19
/* 8134BC74 | 80 A2 81 78 */	lwz r5, lbl_81694578@sda21(r0)
/* 8134BC78 | 7C 75 1B 78 */	mr r21, r3
/* 8134BC7C | 80 02 81 7C */	lwz r0, lbl_8169457C@sda21(r0)
/* 8134BC80 | 38 80 03 E0 */	li r4, 0x3e0
/* 8134BC84 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134BC88 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8134BC8C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BC90 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134BC94 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BC98 | 48 20 F9 D1 */	bl fn_8155B668
/* 8134BC9C | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BCA0 | 7C 7A 1B 78 */	mr r26, r3
/* 8134BCA4 | 38 80 03 E0 */	li r4, 0x3e0
/* 8134BCA8 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134BCAC | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BCB0 | 48 20 F9 B9 */	bl fn_8155B668
/* 8134BCB4 | 80 95 00 00 */	lwz r4, 0x0(r21)
/* 8134BCB8 | 7C 79 1B 78 */	mr r25, r3
/* 8134BCBC | 3B 60 FF FE */	li r27, -0x2
/* 8134BCC0 | 7E A3 AB 78 */	mr r3, r21
/* 8134BCC4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134BCC8 | 93 64 EA 24 */	stw r27, -0x15dc(r4)
/* 8134BCCC | 48 00 3E D9 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134BCD0 | 3B 00 00 00 */	li r24, 0x0
/* 8134BCD4 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 8134BCD8 | 7F 1E C3 78 */	mr r30, r24
/* 8134BCDC | 3A E0 00 00 */	li r23, 0x0
/* 8134BCE0 | 3A C0 00 00 */	li r22, 0x0
/* 8134BCE4 | 3A 80 00 00 */	li r20, 0x0
/* 8134BCE8 | 3F A0 81 61 */	lis r29, c_md5_secret_key__Q23ipl12NandSDWorker@ha
/* 8134BCEC | 3B E0 FF FD */	li r31, -0x3
.L_8134BCF0:
/* 8134BCF0 | 7E 7C A0 2E */	lwzx r19, r28, r20
/* 8134BCF4 | 7E A3 AB 78 */	mr r3, r21
/* 8134BCF8 | 38 A0 03 DF */	li r5, 0x3df
/* 8134BCFC | 7E 64 9B 78 */	mr r4, r19
/* 8134BD00 | 48 00 75 15 */	bl sd_file_exist__Q23ipl12NandSDWorkerFPCcUl
/* 8134BD04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BD08 | 40 81 01 34 */	ble .L_8134BE3C
/* 8134BD0C | 7E 63 9B 78 */	mr r3, r19
/* 8134BD10 | 38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 8134BD14 | 48 29 C3 2D */	bl fn_815E8040
/* 8134BD18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BD1C | 7C 73 1B 78 */	mr r19, r3
/* 8134BD20 | 41 82 01 00 */	beq .L_8134BE20
/* 8134BD24 | 7F 43 D3 78 */	mr r3, r26
/* 8134BD28 | 7E 66 9B 78 */	mr r6, r19
/* 8134BD2C | 38 80 03 E0 */	li r4, 0x3e0
/* 8134BD30 | 38 A0 00 01 */	li r5, 0x1
/* 8134BD34 | 48 29 C3 69 */	bl fn_815E809C
/* 8134BD38 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134BD3C | 40 82 00 C8 */	bne .L_8134BE04
/* 8134BD40 | 7E 63 9B 78 */	mr r3, r19
/* 8134BD44 | 48 29 C2 A5 */	bl fn_815E7FE8
/* 8134BD48 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8134BD4C | 41 82 00 9C */	beq .L_8134BDE8
/* 8134BD50 | 7F 43 D3 78 */	mr r3, r26
/* 8134BD54 | 7F 25 CB 78 */	mr r5, r25
/* 8134BD58 | 38 80 03 E0 */	li r4, 0x3e0
/* 8134BD5C | 48 00 83 15 */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134BD60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BD64 | 40 82 00 E4 */	bne .L_8134BE48
/* 8134BD68 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134BD6C | 38 99 00 04 */	addi r4, r25, 0x4
/* 8134BD70 | 38 A0 00 10 */	li r5, 0x10
/* 8134BD74 | 4B FE 44 BD */	bl memcpy
/* 8134BD78 | 38 79 00 04 */	addi r3, r25, 0x4
/* 8134BD7C | 38 9D D6 48 */	addi r4, r29, c_md5_secret_key__Q23ipl12NandSDWorker@l
/* 8134BD80 | 38 A0 00 10 */	li r5, 0x10
/* 8134BD84 | 4B FE 44 AD */	bl memcpy
/* 8134BD88 | 7E A3 AB 78 */	mr r3, r21
/* 8134BD8C | 7F 25 CB 78 */	mr r5, r25
/* 8134BD90 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134BD94 | 38 C0 03 E0 */	li r6, 0x3e0
/* 8134BD98 | 48 00 52 65 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 8134BD9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BDA0 | 41 82 00 38 */	beq .L_8134BDD8
/* 8134BDA4 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BDA8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134BDAC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BDB0 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134BDB4 | 40 82 00 94 */	bne .L_8134BE48
/* 8134BDB8 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BDBC | 38 99 00 14 */	addi r4, r25, 0x14
/* 8134BDC0 | 3B 00 00 01 */	li r24, 0x1
/* 8134BDC4 | 38 A0 03 C0 */	li r5, 0x3c0
/* 8134BDC8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BDCC | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134BDD0 | 4B FE 44 61 */	bl memcpy
/* 8134BDD4 | 48 00 00 74 */	b .L_8134BE48
.L_8134BDD8:
/* 8134BDD8 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BDDC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BDE0 | 93 E3 EA 24 */	stw r31, -0x15dc(r3)
/* 8134BDE4 | 48 00 00 64 */	b .L_8134BE48
.L_8134BDE8:
/* 8134BDE8 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BDEC | 7E A3 AB 78 */	mr r3, r21
/* 8134BDF0 | 38 80 FF FF */	li r4, -0x1
/* 8134BDF4 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BDF8 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BDFC | 48 00 80 05 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BE00 | 48 00 00 48 */	b .L_8134BE48
.L_8134BE04:
/* 8134BE04 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BE08 | 7E A3 AB 78 */	mr r3, r21
/* 8134BE0C | 38 80 FF FF */	li r4, -0x1
/* 8134BE10 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BE14 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BE18 | 48 00 7F E9 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BE1C | 48 00 00 2C */	b .L_8134BE48
.L_8134BE20:
/* 8134BE20 | 80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BE24 | 7E A3 AB 78 */	mr r3, r21
/* 8134BE28 | 38 80 FF FF */	li r4, -0x1
/* 8134BE2C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BE30 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BE34 | 48 00 7F CD */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BE38 | 48 00 00 10 */	b .L_8134BE48
.L_8134BE3C:
/* 8134BE3C | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE40 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BE44 | 93 63 EA 24 */	stw r27, -0x15dc(r3)
.L_8134BE48:
/* 8134BE48 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE4C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BE50 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134BE54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134BE58 | 41 82 00 08 */	beq .L_8134BE60
/* 8134BE5C | 3A E0 00 01 */	li r23, 0x1
.L_8134BE60:
/* 8134BE60 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8134BE64 | 3A 94 00 04 */	addi r20, r20, 0x4
/* 8134BE68 | 2C 16 00 02 */	cmpwi r22, 0x2
/* 8134BE6C | 41 80 FE 84 */	blt .L_8134BCF0
/* 8134BE70 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134BE74 | 41 82 00 1C */	beq .L_8134BE90
/* 8134BE78 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8134BE7C | 41 82 00 14 */	beq .L_8134BE90
/* 8134BE80 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE84 | 38 00 FF EF */	li r0, -0x11
/* 8134BE88 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BE8C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134BE90:
/* 8134BE90 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE94 | 7F 44 D3 78 */	mr r4, r26
/* 8134BE98 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BE9C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BEA0 | 48 20 F7 D9 */	bl fn_8155B678
/* 8134BEA4 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BEA8 | 7F 24 CB 78 */	mr r4, r25
/* 8134BEAC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BEB0 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BEB4 | 48 20 F7 C5 */	bl fn_8155B678
/* 8134BEB8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134BEBC | 48 2A D6 31 */	bl _restgpr_19
/* 8134BEC0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134BEC4 | 7C 08 03 A6 */	mtlr r0
/* 8134BEC8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8134BECC | 4E 80 00 20 */	blr
.endfn iplNandSD_8134BC60

# .text:0x3AE4 | 0x8134BED0 | size: 0x3C8
.fn iplNandSD_8134BED0, local
/* 8134BED0 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134BED4 | 7C 08 02 A6 */	mflr r0
/* 8134BED8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8134BEDC | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134BEE0 | 48 2A D5 E1 */	bl _savegpr_27
/* 8134BEE4 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134BEE8 | 7C 7B 1B 78 */	mr r27, r3
/* 8134BEEC | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134BEF0 | 38 80 06 40 */	li r4, 0x640
/* 8134BEF4 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134BEF8 | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134BEFC | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BF00 | 48 20 F7 69 */	bl fn_8155B668
/* 8134BF04 | 38 00 00 00 */	li r0, 0x0
/* 8134BF08 | 7C 7C 1B 78 */	mr r28, r3
/* 8134BF0C | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8134BF10 | 3B C0 FF FE */	li r30, -0x2
/* 8134BF14 | 38 C1 00 1C */	addi r6, r1, 0x1c
/* 8134BF18 | 38 A0 00 00 */	li r5, 0x0
/* 8134BF1C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF20 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BF24 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134BF28 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8134BF2C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF30 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134BF34 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134BF38 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134BF3C | 48 27 29 CD */	bl fn_815BE908
/* 8134BF40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BF44 | 41 82 00 24 */	beq .L_8134BF68
/* 8134BF48 | 7C 64 1B 78 */	mr r4, r3
/* 8134BF4C | 38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8134BF50 | 4C C6 31 82 */	crclr cr1eq
/* 8134BF54 | 48 1E 27 4D */	bl OSReport
/* 8134BF58 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF5C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BF60 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134BF64 | 48 00 03 08 */	b .L_8134C26C
.L_8134BF68:
/* 8134BF68 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8134BF6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134BF70 | 40 82 00 18 */	bne .L_8134BF88
/* 8134BF74 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF78 | 38 00 FF F2 */	li r0, -0xe
/* 8134BF7C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BF80 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134BF84 | 48 00 02 E8 */	b .L_8134C26C
.L_8134BF88:
/* 8134BF88 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134BF8C | 7F 63 DB 78 */	mr r3, r27
/* 8134BF90 | 7F 85 E3 78 */	mr r5, r28
/* 8134BF94 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134BF98 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134BF9C | 48 00 56 C5 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134BFA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BFA4 | 7C 7F 1B 78 */	mr r31, r3
/* 8134BFA8 | 41 82 00 14 */	beq .L_8134BFBC
/* 8134BFAC | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134BFB0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134BFB4 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134BFB8 | 48 00 02 B4 */	b .L_8134C26C
.L_8134BFBC:
/* 8134BFBC | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BFC0 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 8134BFC4 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134BFC8 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134BFCC | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134BFD0 | 4B FF D4 65 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134BFD4 | 80 DC 00 08 */	lwz r6, 0x8(r28)
/* 8134BFD8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8134BFDC | 38 81 00 20 */	addi r4, r1, 0x20
/* 8134BFE0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134BFE4 | 38 06 00 3F */	addi r0, r6, 0x3f
/* 8134BFE8 | 38 C0 00 03 */	li r6, 0x3
/* 8134BFEC | 54 07 00 32 */	clrrwi r7, r0, 6
/* 8134BFF0 | 38 E7 06 40 */	addi r7, r7, 0x640
/* 8134BFF4 | 48 27 37 41 */	bl fn_815BF734
/* 8134BFF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BFFC | 41 82 00 24 */	beq .L_8134C020
/* 8134C000 | 7C 64 1B 78 */	mr r4, r3
/* 8134C004 | 38 7D 0A FD */	addi r3, r29, 0xafd
/* 8134C008 | 4C C6 31 82 */	crclr cr1eq
/* 8134C00C | 48 1E 26 95 */	bl OSReport
/* 8134C010 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C014 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C018 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134C01C | 48 00 02 50 */	b .L_8134C26C
.L_8134C020:
/* 8134C020 | 80 FC 00 00 */	lwz r7, 0x0(r28)
/* 8134C024 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8134C028 | 81 1C 00 04 */	lwz r8, 0x4(r28)
/* 8134C02C | 80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8134C030 | 7C A0 3A 78 */	xor r0, r5, r7
/* 8134C034 | 7C C3 42 78 */	xor r3, r6, r8
/* 8134C038 | 7C 60 03 79 */	or. r0, r3, r0
/* 8134C03C | 41 82 00 24 */	beq .L_8134C060
/* 8134C040 | 38 7D 0B 2D */	addi r3, r29, 0xb2d
/* 8134C044 | 39 21 00 38 */	addi r9, r1, 0x38
/* 8134C048 | 4C C6 31 82 */	crclr cr1eq
/* 8134C04C | 48 1E 26 55 */	bl OSReport
/* 8134C050 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C054 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C058 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134C05C | 48 00 02 10 */	b .L_8134C26C
.L_8134C060:
/* 8134C060 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 8134C064 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8134C068 | 80 DB 00 00 */	lwz r6, 0x0(r27)
/* 8134C06C | 39 01 00 28 */	addi r8, r1, 0x28
/* 8134C070 | 38 04 00 3F */	addi r0, r4, 0x3f
/* 8134C074 | 38 A0 00 03 */	li r5, 0x3
/* 8134C078 | 3C 86 00 02 */	addis r4, r6, 0x2
/* 8134C07C | 38 E0 00 01 */	li r7, 0x1
/* 8134C080 | 54 06 00 32 */	clrrwi r6, r0, 6
/* 8134C084 | 39 20 00 00 */	li r9, 0x0
/* 8134C088 | 38 C6 06 40 */	addi r6, r6, 0x640
/* 8134C08C | 38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8134C090 | 48 27 3A 71 */	bl fn_815BFB00
/* 8134C094 | 2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 8134C098 | 40 82 00 28 */	bne .L_8134C0C0
/* 8134C09C | 7C 64 1B 78 */	mr r4, r3
/* 8134C0A0 | 38 7D 0B 7B */	addi r3, r29, 0xb7b
/* 8134C0A4 | 4C C6 31 82 */	crclr cr1eq
/* 8134C0A8 | 48 1E 25 F9 */	bl OSReport
/* 8134C0AC | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C0B0 | 38 00 FF F1 */	li r0, -0xf
/* 8134C0B4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C0B8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C0BC | 48 00 01 B0 */	b .L_8134C26C
.L_8134C0C0:
/* 8134C0C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C0C4 | 41 82 00 28 */	beq .L_8134C0EC
/* 8134C0C8 | 7C 64 1B 78 */	mr r4, r3
/* 8134C0CC | 38 7D 0B BB */	addi r3, r29, 0xbbb
/* 8134C0D0 | 4C C6 31 82 */	crclr cr1eq
/* 8134C0D4 | 48 1E 25 CD */	bl OSReport
/* 8134C0D8 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C0DC | 38 00 FF FD */	li r0, -0x3
/* 8134C0E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C0E4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C0E8 | 48 00 01 84 */	b .L_8134C26C
.L_8134C0EC:
/* 8134C0EC | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C0F0 | A0 81 00 2C */	lhz r4, 0x2c(r1)
/* 8134C0F4 | A0 01 00 28 */	lhz r0, 0x28(r1)
/* 8134C0F8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C0FC | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134C100 | 7C 04 02 14 */	add r0, r4, r0
/* 8134C104 | 54 00 70 22 */	slwi r0, r0, 14
/* 8134C108 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8134C10C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C110 | A0 81 00 2E */	lhz r4, 0x2e(r1)
/* 8134C114 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C118 | A0 01 00 2A */	lhz r0, 0x2a(r1)
/* 8134C11C | 80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134C120 | 7C 04 02 14 */	add r0, r4, r0
/* 8134C124 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8134C128 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C12C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C130 | 80 03 EA 3C */	lwz r0, -0x15c4(r3)
/* 8134C134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134C138 | 41 82 00 60 */	beq .L_8134C198
/* 8134C13C | 7F 63 DB 78 */	mr r3, r27
/* 8134C140 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8134C144 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 8134C148 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 8134C14C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 8134C150 | 48 00 1E 0D */	bl get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl
/* 8134C154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C158 | 41 82 00 14 */	beq .L_8134C16C
/* 8134C15C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C160 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C164 | 93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134C168 | 48 00 01 04 */	b .L_8134C26C
.L_8134C16C:
/* 8134C16C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C170 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134C174 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C178 | 80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134C17C | 54 00 70 22 */	slwi r0, r0, 14
/* 8134C180 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8134C184 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C188 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C18C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C190 | 80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134C194 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8134C198:
/* 8134C198 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134C19C | 41 82 00 14 */	beq .L_8134C1B0
/* 8134C1A0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C1A4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C1A8 | 93 E3 EA 24 */	stw r31, -0x15dc(r3)
/* 8134C1AC | 48 00 00 C0 */	b .L_8134C26C
.L_8134C1B0:
/* 8134C1B0 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C1B4 | 7F 63 DB 78 */	mr r3, r27
/* 8134C1B8 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C1BC | 48 00 59 F5 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134C1C0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8134C1C4 | 40 82 00 2C */	bne .L_8134C1F0
/* 8134C1C8 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C1CC | 38 7D 0B E9 */	addi r3, r29, 0xbe9
/* 8134C1D0 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C1D4 | 4C C6 31 82 */	crclr cr1eq
/* 8134C1D8 | 48 1E 24 C9 */	bl OSReport
/* 8134C1DC | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C1E0 | 38 00 FF FA */	li r0, -0x6
/* 8134C1E4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C1E8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C1EC | 48 00 00 80 */	b .L_8134C26C
.L_8134C1F0:
/* 8134C1F0 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C1F4 | 7F 63 DB 78 */	mr r3, r27
/* 8134C1F8 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C1FC | 38 E1 00 0A */	addi r7, r1, 0xa
/* 8134C200 | 48 00 85 C1 */	bl iplNandSD_813547C0
/* 8134C204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C208 | 41 82 00 14 */	beq .L_8134C21C
/* 8134C20C | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134C210 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C214 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134C218 | 48 00 00 54 */	b .L_8134C26C
.L_8134C21C:
/* 8134C21C | A0 E1 00 0A */	lhz r7, 0xa(r1)
/* 8134C220 | A1 01 00 08 */	lhz r8, 0x8(r1)
/* 8134C224 | 7C E3 46 70 */	srawi r3, r7, 8
/* 8134C228 | 7D 00 46 70 */	srawi r0, r8, 8
/* 8134C22C | 7C 03 00 00 */	cmpw r3, r0
/* 8134C230 | 40 81 00 2C */	ble .L_8134C25C
/* 8134C234 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C238 | 38 7D 0C 20 */	addi r3, r29, 0xc20
/* 8134C23C | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C240 | 4C C6 31 82 */	crclr cr1eq
/* 8134C244 | 48 1E 24 5D */	bl OSReport
/* 8134C248 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C24C | 38 00 FF F0 */	li r0, -0x10
/* 8134C250 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C254 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C258 | 48 00 00 14 */	b .L_8134C26C
.L_8134C25C:
/* 8134C25C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C260 | 38 00 00 00 */	li r0, 0x0
/* 8134C264 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C268 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134C26C:
/* 8134C26C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C270 | 7F 84 E3 78 */	mr r4, r28
/* 8134C274 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C278 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134C27C | 48 20 F3 FD */	bl fn_8155B678
/* 8134C280 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134C284 | 48 2A D2 89 */	bl _restgpr_27
/* 8134C288 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134C28C | 7C 08 03 A6 */	mtlr r0
/* 8134C290 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8134C294 | 4E 80 00 20 */	blr
.endfn iplNandSD_8134BED0

# .text:0x3EAC | 0x8134C298 | size: 0x3D8
.fn iplNandSD_8134C298, local
/* 8134C298 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8134C29C | 7C 08 02 A6 */	mflr r0
/* 8134C2A0 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8134C2A4 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 8134C2A8 | 48 2A D1 F1 */	bl _savegpr_17
/* 8134C2AC | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8134C2B0 | 7C 73 1B 78 */	mr r19, r3
/* 8134C2B4 | 3C 80 00 01 */	lis r4, 0x1
/* 8134C2B8 | 38 A0 00 20 */	li r5, 0x20
/* 8134C2BC | 3C C7 00 04 */	addis r6, r7, 0x4
/* 8134C2C0 | 3C 67 00 02 */	addis r3, r7, 0x2
/* 8134C2C4 | 80 E6 EA 38 */	lwz r7, -0x15c8(r6)
/* 8134C2C8 | 38 84 CE 40 */	subi r4, r4, 0x31c0
/* 8134C2CC | 80 C6 EA 3C */	lwz r6, -0x15c4(r6)
/* 8134C2D0 | 83 67 00 04 */	lwz r27, 0x4(r7)
/* 8134C2D4 | 83 47 00 00 */	lwz r26, 0x0(r7)
/* 8134C2D8 | 83 26 00 04 */	lwz r25, 0x4(r6)
/* 8134C2DC | 83 06 00 00 */	lwz r24, 0x0(r6)
/* 8134C2E0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C2E4 | 48 20 E4 71 */	bl fn_8155A754
/* 8134C2E8 | 7C 77 1B 78 */	mr r23, r3
/* 8134C2EC | 7E 63 9B 78 */	mr r3, r19
/* 8134C2F0 | 48 00 38 B5 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134C2F4 | 3B E0 00 00 */	li r31, 0x0
/* 8134C2F8 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8134C2FC | 6F E6 80 00 */	xoris r6, r31, 0x8000
/* 8134C300 | 7C 9D 23 78 */	mr r29, r4
/* 8134C304 | 7C BF 20 10 */	subfc r5, r31, r4
/* 8134C308 | 7C 7E 1B 78 */	mr r30, r3
/* 8134C30C | 7C C6 01 10 */	subfe r6, r6, r0
/* 8134C310 | 7C C0 01 10 */	subfe r6, r0, r0
/* 8134C314 | 7C C6 00 D1 */	neg. r6, r6
/* 8134C318 | 41 82 00 14 */	beq .L_8134C32C
/* 8134C31C | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C320 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C324 | 90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8134C328 | 48 00 03 1C */	b .L_8134C644
.L_8134C32C:
/* 8134C32C | 7F F2 FB 78 */	mr r18, r31
/* 8134C330 | 3A A0 00 00 */	li r21, 0x0
/* 8134C334 | 3A C0 00 00 */	li r22, 0x0
/* 8134C338 | 3A 80 00 00 */	li r20, 0x0
/* 8134C33C | 48 00 00 E4 */	b .L_8134C420
.L_8134C340:
/* 8134C340 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134C344 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C348 | 41 82 00 18 */	beq .L_8134C360
/* 8134C34C | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C350 | 38 00 FF FE */	li r0, -0x2
/* 8134C354 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C358 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C35C | 48 00 02 E8 */	b .L_8134C644
.L_8134C360:
/* 8134C360 | 7F 9A 92 14 */	add r28, r26, r18
/* 8134C364 | 7C BA 90 2E */	lwzx r5, r26, r18
/* 8134C368 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C36C | 7E 63 9B 78 */	mr r3, r19
/* 8134C370 | 7E E7 BB 78 */	mr r7, r23
/* 8134C374 | 48 00 42 F9 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 8134C378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C37C | 41 82 00 14 */	beq .L_8134C390
/* 8134C380 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C384 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C388 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134C38C | 48 00 02 B8 */	b .L_8134C644
.L_8134C390:
/* 8134C390 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8134C394 | 39 01 00 14 */	addi r8, r1, 0x14
/* 8134C398 | 38 A0 00 01 */	li r5, 0x1
/* 8134C39C | 38 E0 00 00 */	li r7, 0x0
/* 8134C3A0 | 80 77 00 08 */	lwz r3, 0x8(r23)
/* 8134C3A4 | 39 20 00 03 */	li r9, 0x3
/* 8134C3A8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8134C3AC | 38 03 00 3F */	addi r0, r3, 0x3f
/* 8134C3B0 | 54 03 00 32 */	clrrwi r3, r0, 6
/* 8134C3B4 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C3B8 | 3A 23 06 40 */	addi r17, r3, 0x640
/* 8134C3BC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134C3C0 | 7E 2A 8B 78 */	mr r10, r17
/* 8134C3C4 | 3C C4 00 02 */	addis r6, r4, 0x2
/* 8134C3C8 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8134C3CC | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134C3D0 | 48 27 4F AD */	bl fn_815C137C
/* 8134C3D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C3D8 | 7C 64 1B 78 */	mr r4, r3
/* 8134C3DC | 41 82 00 28 */	beq .L_8134C404
/* 8134C3E0 | 3C 60 81 63 */	lis r3, lbl_816366F5@ha
/* 8134C3E4 | 38 63 66 F5 */	addi r3, r3, lbl_816366F5@l
/* 8134C3E8 | 4C C6 31 82 */	crclr cr1eq
/* 8134C3EC | 48 1E 22 B5 */	bl OSReport
/* 8134C3F0 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C3F4 | 38 00 FF FE */	li r0, -0x2
/* 8134C3F8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C3FC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C400 | 48 00 02 44 */	b .L_8134C644
.L_8134C404:
/* 8134C404 | 7C 95 88 14 */	addc r4, r21, r17
/* 8134C408 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134C40C | 7C 76 01 94 */	addze r3, r22
/* 8134C410 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 8134C414 | 7E A4 00 14 */	addc r21, r4, r0
/* 8134C418 | 3A 52 00 08 */	addi r18, r18, 0x8
/* 8134C41C | 7E C3 01 94 */	addze r22, r3
.L_8134C420:
/* 8134C420 | 7C 14 D8 40 */	cmplw r20, r27
/* 8134C424 | 41 80 FF 1C */	blt .L_8134C340
/* 8134C428 | 3A 80 00 00 */	li r20, 0x0
/* 8134C42C | 3B 40 00 00 */	li r26, 0x0
/* 8134C430 | 3B E0 00 00 */	li r31, 0x0
/* 8134C434 | 48 00 00 E4 */	b .L_8134C518
.L_8134C438:
/* 8134C438 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134C43C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C440 | 41 82 00 18 */	beq .L_8134C458
/* 8134C444 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C448 | 38 00 FF FE */	li r0, -0x2
/* 8134C44C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C450 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C454 | 48 00 01 F0 */	b .L_8134C644
.L_8134C458:
/* 8134C458 | 7E 58 D2 14 */	add r18, r24, r26
/* 8134C45C | 7C B8 D0 2E */	lwzx r5, r24, r26
/* 8134C460 | 80 D2 00 04 */	lwz r6, 0x4(r18)
/* 8134C464 | 7E 63 9B 78 */	mr r3, r19
/* 8134C468 | 7E E7 BB 78 */	mr r7, r23
/* 8134C46C | 48 00 42 01 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 8134C470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C474 | 41 82 00 14 */	beq .L_8134C488
/* 8134C478 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C47C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C480 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134C484 | 48 00 01 C0 */	b .L_8134C644
.L_8134C488:
/* 8134C488 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 8134C48C | 39 01 00 10 */	addi r8, r1, 0x10
/* 8134C490 | 38 A0 00 01 */	li r5, 0x1
/* 8134C494 | 38 E0 00 00 */	li r7, 0x0
/* 8134C498 | 80 77 00 08 */	lwz r3, 0x8(r23)
/* 8134C49C | 39 20 00 03 */	li r9, 0x3
/* 8134C4A0 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8134C4A4 | 38 03 00 3F */	addi r0, r3, 0x3f
/* 8134C4A8 | 54 03 00 32 */	clrrwi r3, r0, 6
/* 8134C4AC | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C4B0 | 3A 23 06 40 */	addi r17, r3, 0x640
/* 8134C4B4 | 80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134C4B8 | 7E 2A 8B 78 */	mr r10, r17
/* 8134C4BC | 3C C4 00 02 */	addis r6, r4, 0x2
/* 8134C4C0 | 80 92 00 04 */	lwz r4, 0x4(r18)
/* 8134C4C4 | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134C4C8 | 48 27 4E B5 */	bl fn_815C137C
/* 8134C4CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C4D0 | 7C 64 1B 78 */	mr r4, r3
/* 8134C4D4 | 41 82 00 28 */	beq .L_8134C4FC
/* 8134C4D8 | 3C 60 81 63 */	lis r3, lbl_816366F5@ha
/* 8134C4DC | 38 63 66 F5 */	addi r3, r3, lbl_816366F5@l
/* 8134C4E0 | 4C C6 31 82 */	crclr cr1eq
/* 8134C4E4 | 48 1E 21 BD */	bl OSReport
/* 8134C4E8 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C4EC | 38 00 FF FE */	li r0, -0x2
/* 8134C4F0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C4F4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C4F8 | 48 00 01 4C */	b .L_8134C644
.L_8134C4FC:
/* 8134C4FC | 7C 95 88 14 */	addc r4, r21, r17
/* 8134C500 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C504 | 7C 76 01 94 */	addze r3, r22
/* 8134C508 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 8134C50C | 7E A4 00 14 */	addc r21, r4, r0
/* 8134C510 | 3B 5A 00 08 */	addi r26, r26, 0x8
/* 8134C514 | 7E C3 01 94 */	addze r22, r3
.L_8134C518:
/* 8134C518 | 7C 14 C8 40 */	cmplw r20, r25
/* 8134C51C | 41 80 FF 1C */	blt .L_8134C438
/* 8134C520 | 3A 40 00 00 */	li r18, 0x0
/* 8134C524 | 3A 20 00 00 */	li r17, 0x0
/* 8134C528 | 3B 40 00 00 */	li r26, 0x0
/* 8134C52C | 3A 80 00 00 */	li r20, 0x0
/* 8134C530 | 48 00 00 A0 */	b .L_8134C5D0
.L_8134C534:
/* 8134C534 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134C538 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C53C | 41 82 00 18 */	beq .L_8134C554
/* 8134C540 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C544 | 38 00 FF FE */	li r0, -0x2
/* 8134C548 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C54C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C550 | 48 00 00 F4 */	b .L_8134C644
.L_8134C554:
/* 8134C554 | 7C 98 A2 14 */	add r4, r24, r20
/* 8134C558 | 7C 78 A0 2E */	lwzx r3, r24, r20
/* 8134C55C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8134C560 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 8134C564 | 4B FF CE D1 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134C568 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8134C56C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8134C570 | 48 29 BB B5 */	bl fn_815E8124
/* 8134C574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C578 | 40 82 00 3C */	bne .L_8134C5B4
/* 8134C57C | 88 81 00 28 */	lbz r4, 0x28(r1)
/* 8134C580 | 7E 63 9B 78 */	mr r3, r19
/* 8134C584 | 48 00 7B 85 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134C588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C58C | 41 82 00 14 */	beq .L_8134C5A0
/* 8134C590 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8134C594 | 7E 52 00 14 */	addc r18, r18, r0
/* 8134C598 | 7E 31 01 94 */	addze r17, r17
/* 8134C59C | 48 00 00 2C */	b .L_8134C5C8
.L_8134C5A0:
/* 8134C5A0 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C5A4 | 38 00 FF FE */	li r0, -0x2
/* 8134C5A8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C5AC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C5B0 | 48 00 00 94 */	b .L_8134C644
.L_8134C5B4:
/* 8134C5B4 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C5B8 | 38 00 FF FE */	li r0, -0x2
/* 8134C5BC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C5C0 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C5C4 | 48 00 00 80 */	b .L_8134C644
.L_8134C5C8:
/* 8134C5C8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134C5CC | 3A 94 00 08 */	addi r20, r20, 0x8
.L_8134C5D0:
/* 8134C5D0 | 7C 1A C8 40 */	cmplw r26, r25
/* 8134C5D4 | 41 80 FF 60 */	blt .L_8134C534
/* 8134C5D8 | 7E 92 A8 10 */	subfc r20, r18, r21
/* 8134C5DC | 3E 40 00 02 */	lis r18, 0x2
/* 8134C5E0 | 7C F1 B1 10 */	subfe r7, r17, r22
/* 8134C5E4 | 38 80 00 00 */	li r4, 0x0
/* 8134C5E8 | 38 B2 90 00 */	subi r5, r18, 0x7000
/* 8134C5EC | 7C 14 28 14 */	addc r0, r20, r5
/* 8134C5F0 | 7C 67 21 14 */	adde r3, r7, r4
/* 8134C5F4 | 7C 00 E8 10 */	subfc r0, r0, r29
/* 8134C5F8 | 7C 03 F1 10 */	subfe r0, r3, r30
/* 8134C5FC | 7C 1D E9 10 */	subfe r0, r29, r29
/* 8134C600 | 7C 00 00 D1 */	neg. r0, r0
/* 8134C604 | 41 82 00 34 */	beq .L_8134C638
/* 8134C608 | 7C D4 28 14 */	addc r6, r20, r5
/* 8134C60C | 3C 60 81 63 */	lis r3, lbl_8163671A@ha
/* 8134C610 | 38 63 67 1A */	addi r3, r3, lbl_8163671A@l
/* 8134C614 | 7C A7 21 14 */	adde r5, r7, r4
/* 8134C618 | 4C C6 31 82 */	crclr cr1eq
/* 8134C61C | 48 1E 20 85 */	bl OSReport
/* 8134C620 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C624 | 38 12 90 00 */	subi r0, r18, 0x7000
/* 8134C628 | 7C 14 00 14 */	addc r0, r20, r0
/* 8134C62C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C630 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C634 | 48 00 00 10 */	b .L_8134C644
.L_8134C638:
/* 8134C638 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C63C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C640 | 90 83 EA 24 */	stw r4, -0x15dc(r3)
.L_8134C644:
/* 8134C644 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C648 | 7E E4 BB 78 */	mr r4, r23
/* 8134C64C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C650 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C654 | 48 20 E3 B1 */	bl fn_8155AA04
/* 8134C658 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 8134C65C | 48 2A CE 89 */	bl _restgpr_17
/* 8134C660 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8134C664 | 7C 08 03 A6 */	mtlr r0
/* 8134C668 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8134C66C | 4E 80 00 20 */	blr
.endfn iplNandSD_8134C298

# .text:0x4284 | 0x8134C670 | size: 0x1C8
.fn iplNandSD_8134C670, local
/* 8134C670 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134C674 | 7C 08 02 A6 */	mflr r0
/* 8134C678 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8134C67C | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134C680 | 48 2A CE 25 */	bl _savegpr_20
/* 8134C684 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134C688 | 3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8134C68C | 3B E0 00 00 */	li r31, 0x0
/* 8134C690 | 38 00 FF FE */	li r0, -0x2
/* 8134C694 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C698 | 7C 7B 1B 78 */	mr r27, r3
/* 8134C69C | 83 84 EA 38 */	lwz r28, -0x15c8(r4)
/* 8134C6A0 | 3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 8134C6A4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134C6A8 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 8134C6AC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134C6B0 | 38 60 00 00 */	li r3, 0x0
/* 8134C6B4 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134C6B8 | 90 05 EA 24 */	stw r0, -0x15dc(r5)
/* 8134C6BC | 48 27 1E 29 */	bl fn_815BE4E4
/* 8134C6C0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C6C4 | 38 A0 00 20 */	li r5, 0x20
/* 8134C6C8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C6CC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C6D0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C6D4 | 54 04 18 38 */	slwi r4, r0, 3
/* 8134C6D8 | 48 20 E0 7D */	bl fn_8155A754
/* 8134C6DC | 7C 7D 1B 78 */	mr r29, r3
/* 8134C6E0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134C6E4 | 48 27 1E 01 */	bl fn_815BE4E4
/* 8134C6E8 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C6EC | 7F F9 FB 78 */	mr r25, r31
/* 8134C6F0 | 3A C0 00 00 */	li r22, 0x0
/* 8134C6F4 | 3B 40 00 00 */	li r26, 0x0
/* 8134C6F8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C6FC | 3A 80 00 00 */	li r20, 0x0
/* 8134C700 | 82 A3 EA 3C */	lwz r21, -0x15c4(r3)
/* 8134C704 | 3B 00 FF FF */	li r24, -0x1
/* 8134C708 | 48 00 00 E8 */	b .L_8134C7F0
.L_8134C70C:
/* 8134C70C | 7C 16 A8 40 */	cmplw r22, r21
/* 8134C710 | 40 80 00 EC */	bge .L_8134C7FC
/* 8134C714 | 7E FD CA 14 */	add r23, r29, r25
/* 8134C718 | 7C 7D C8 2E */	lwzx r3, r29, r25
/* 8134C71C | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134C720 | 4B FF CB 75 */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134C724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C728 | 41 82 00 C0 */	beq .L_8134C7E8
/* 8134C72C | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134C730 | 7F 63 DB 78 */	mr r3, r27
/* 8134C734 | 80 D7 00 04 */	lwz r6, 0x4(r23)
/* 8134C738 | 48 00 54 4D */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 8134C73C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C740 | 41 82 00 A8 */	beq .L_8134C7E8
/* 8134C744 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134C748 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8134C74C | 38 BE 01 43 */	addi r5, r30, 0x143
/* 8134C750 | 38 80 00 40 */	li r4, 0x40
/* 8134C754 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8134C758 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 8134C75C | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8134C760 | 7C 07 C0 38 */	and r7, r0, r24
/* 8134C764 | 4C C6 31 82 */	crclr cr1eq
/* 8134C768 | 48 2B 42 41 */	bl snprintf
/* 8134C76C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8134C770 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134C774 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134C778 | 48 01 3D A5 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134C77C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C780 | 41 82 00 2C */	beq .L_8134C7AC
/* 8134C784 | 7C 65 1B 78 */	mr r5, r3
/* 8134C788 | 38 7E 0C D3 */	addi r3, r30, 0xcd3
/* 8134C78C | 38 81 00 14 */	addi r4, r1, 0x14
/* 8134C790 | 4C C6 31 82 */	crclr cr1eq
/* 8134C794 | 48 1E 1F 0D */	bl OSReport
/* 8134C798 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C79C | 38 00 FF FE */	li r0, -0x2
/* 8134C7A0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C7A4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C7A8 | 48 00 00 64 */	b .L_8134C80C
.L_8134C7AC:
/* 8134C7AC | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134C7B0 | 7C 9C D2 14 */	add r4, r28, r26
/* 8134C7B4 | 80 D7 00 04 */	lwz r6, 0x4(r23)
/* 8134C7B8 | 38 7E 0D 03 */	addi r3, r30, 0xd03
/* 8134C7BC | 90 C4 00 04 */	stw r6, 0x4(r4)
/* 8134C7C0 | 7C BC D1 2E */	stwx r5, r28, r26
/* 8134C7C4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134C7C8 | 54 07 70 22 */	slwi r7, r0, 14
/* 8134C7CC | 90 E4 00 08 */	stw r7, 0x8(r4)
/* 8134C7D0 | 81 01 00 08 */	lwz r8, 0x8(r1)
/* 8134C7D4 | 91 04 00 0C */	stw r8, 0xc(r4)
/* 8134C7D8 | 4C C6 31 82 */	crclr cr1eq
/* 8134C7DC | 48 1E 1E C5 */	bl OSReport
/* 8134C7E0 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8134C7E4 | 3B 5A 00 10 */	addi r26, r26, 0x10
.L_8134C7E8:
/* 8134C7E8 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 8134C7EC | 3B 39 00 08 */	addi r25, r25, 0x8
.L_8134C7F0:
/* 8134C7F0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C7F4 | 7C 14 00 40 */	cmplw r20, r0
/* 8134C7F8 | 41 80 FF 14 */	blt .L_8134C70C
.L_8134C7FC:
/* 8134C7FC | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C800 | 38 00 00 00 */	li r0, 0x0
/* 8134C804 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C808 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134C80C:
/* 8134C80C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C810 | 7F A4 EB 78 */	mr r4, r29
/* 8134C814 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C818 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C81C | 48 20 E1 E9 */	bl fn_8155AA04
/* 8134C820 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134C824 | 48 2A CC CD */	bl _restgpr_20
/* 8134C828 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134C82C | 7C 08 03 A6 */	mtlr r0
/* 8134C830 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8134C834 | 4E 80 00 20 */	blr
.endfn iplNandSD_8134C670

# .text:0x444C | 0x8134C838 | size: 0x2D0
.fn iplNandSD_8134C838, local
/* 8134C838 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8134C83C | 7C 08 02 A6 */	mflr r0
/* 8134C840 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8134C844 | 39 61 01 10 */	addi r11, r1, 0x110
/* 8134C848 | 48 2A CC 49 */	bl _savegpr_15
/* 8134C84C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134C850 | 7C 72 1B 78 */	mr r18, r3
/* 8134C854 | 38 80 06 40 */	li r4, 0x640
/* 8134C858 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134C85C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134C860 | 48 20 EE 09 */	bl fn_8155B668
/* 8134C864 | 80 92 00 00 */	lwz r4, 0x0(r18)
/* 8134C868 | 7C 7C 1B 78 */	mr r28, r3
/* 8134C86C | 38 00 FF FE */	li r0, -0x2
/* 8134C870 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8134C874 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C878 | 80 A4 EA 38 */	lwz r5, -0x15c8(r4)
/* 8134C87C | 83 64 EA 3C */	lwz r27, -0x15c4(r4)
/* 8134C880 | 83 44 EA 40 */	lwz r26, -0x15c0(r4)
/* 8134C884 | 83 25 00 00 */	lwz r25, 0x0(r5)
/* 8134C888 | 83 1B 00 00 */	lwz r24, 0x0(r27)
/* 8134C88C | 82 FA 00 00 */	lwz r23, 0x0(r26)
/* 8134C890 | 82 C5 00 04 */	lwz r22, 0x4(r5)
/* 8134C894 | 90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134C898 | 48 27 13 DD */	bl ES_GetDeviceId
/* 8134C89C | 3A A0 00 00 */	li r21, 0x0
/* 8134C8A0 | 3A 20 00 00 */	li r17, 0x0
/* 8134C8A4 | 3A 80 00 00 */	li r20, 0x0
/* 8134C8A8 | 3A 00 00 00 */	li r16, 0x0
/* 8134C8AC | 3A 60 00 00 */	li r19, 0x0
/* 8134C8B0 | 39 E0 00 00 */	li r15, 0x0
/* 8134C8B4 | 3F C0 81 63 */	lis r30, lbl_81636585@ha
/* 8134C8B8 | 3F E0 81 63 */	lis r31, lbl_816367C8@ha
/* 8134C8BC | 48 00 02 00 */	b .L_8134CABC
.L_8134C8C0:
/* 8134C8C0 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134C8C4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C8C8 | 41 82 00 18 */	beq .L_8134C8E0
/* 8134C8CC | 80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134C8D0 | 38 00 FF FE */	li r0, -0x2
/* 8134C8D4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C8D8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C8DC | 48 00 01 E8 */	b .L_8134CAC4
.L_8134C8E0:
/* 8134C8E0 | 7F B9 7A 14 */	add r29, r25, r15
/* 8134C8E4 | 7C 79 78 2E */	lwzx r3, r25, r15
/* 8134C8E8 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C8EC | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8134C8F0 | 4B FF CB 45 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134C8F4 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C8F8 | 7E 43 93 78 */	mr r3, r18
/* 8134C8FC | 7F 85 E3 78 */	mr r5, r28
/* 8134C900 | 48 00 4D 61 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134C904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C908 | 40 82 01 68 */	bne .L_8134CA70
/* 8134C90C | 80 DC 00 08 */	lwz r6, 0x8(r28)
/* 8134C910 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8134C914 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134C918 | 38 A1 00 0A */	addi r5, r1, 0xa
/* 8134C91C | 38 06 00 3F */	addi r0, r6, 0x3f
/* 8134C920 | 38 C0 00 03 */	li r6, 0x3
/* 8134C924 | 54 07 00 32 */	clrrwi r7, r0, 6
/* 8134C928 | 38 E7 06 40 */	addi r7, r7, 0x640
/* 8134C92C | 48 27 2E 09 */	bl fn_815BF734
/* 8134C930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C934 | 41 82 00 34 */	beq .L_8134C968
/* 8134C938 | 7C 64 1B 78 */	mr r4, r3
/* 8134C93C | 38 7E 65 85 */	addi r3, r30, lbl_81636585@l
/* 8134C940 | 4C C6 31 82 */	crclr cr1eq
/* 8134C944 | 48 1E 1D 5D */	bl OSReport
/* 8134C948 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C94C | 7C 78 8A 14 */	add r3, r24, r17
/* 8134C950 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C954 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134C958 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134C95C | 7C 18 89 2E */	stwx r0, r24, r17
/* 8134C960 | 3A 31 00 08 */	addi r17, r17, 0x8
/* 8134C964 | 48 00 01 50 */	b .L_8134CAB4
.L_8134C968:
/* 8134C968 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C96C | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8134C970 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C974 | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8134C978 | 7C A0 02 78 */	xor r0, r5, r0
/* 8134C97C | 7C C3 22 78 */	xor r3, r6, r4
/* 8134C980 | 7C 60 03 79 */	or. r0, r3, r0
/* 8134C984 | 41 82 00 3C */	beq .L_8134C9C0
/* 8134C988 | 80 FC 00 00 */	lwz r7, 0x0(r28)
/* 8134C98C | 38 7F 67 C8 */	addi r3, r31, lbl_816367C8@l
/* 8134C990 | 81 1C 00 04 */	lwz r8, 0x4(r28)
/* 8134C994 | 39 21 00 18 */	addi r9, r1, 0x18
/* 8134C998 | 4C C6 31 82 */	crclr cr1eq
/* 8134C99C | 48 1E 1D 05 */	bl OSReport
/* 8134C9A0 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C9A4 | 7C 78 8A 14 */	add r3, r24, r17
/* 8134C9A8 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C9AC | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134C9B0 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134C9B4 | 7C 18 89 2E */	stwx r0, r24, r17
/* 8134C9B8 | 3A 31 00 08 */	addi r17, r17, 0x8
/* 8134C9BC | 48 00 00 F8 */	b .L_8134CAB4
.L_8134C9C0:
/* 8134C9C0 | 80 DC 00 08 */	lwz r6, 0x8(r28)
/* 8134C9C4 | 7E 43 93 78 */	mr r3, r18
/* 8134C9C8 | 38 A1 00 58 */	addi r5, r1, 0x58
/* 8134C9CC | 38 06 00 3F */	addi r0, r6, 0x3f
/* 8134C9D0 | 54 06 00 32 */	clrrwi r6, r0, 6
/* 8134C9D4 | 48 00 2E ED */	bl get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader
/* 8134C9D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C9DC | 41 82 00 20 */	beq .L_8134C9FC
/* 8134C9E0 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C9E4 | 7C 78 8A 14 */	add r3, r24, r17
/* 8134C9E8 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C9EC | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134C9F0 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134C9F4 | 7C 18 89 2E */	stwx r0, r24, r17
/* 8134C9F8 | 3A 31 00 08 */	addi r17, r17, 0x8
.L_8134C9FC:
/* 8134C9FC | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 8134CA00 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CA04 | 7C 03 00 40 */	cmplw r3, r0
/* 8134CA08 | 40 82 00 48 */	bne .L_8134CA50
/* 8134CA0C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134CA10 | 7E 43 93 78 */	mr r3, r18
/* 8134CA14 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134CA18 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8134CA1C | 48 00 7D A5 */	bl iplNandSD_813547C0
/* 8134CA20 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 8134CA24 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8134CA28 | 7C 03 00 40 */	cmplw r3, r0
/* 8134CA2C | 41 82 00 88 */	beq .L_8134CAB4
/* 8134CA30 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA34 | 7C 78 8A 14 */	add r3, r24, r17
/* 8134CA38 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CA3C | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134CA40 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CA44 | 7C 18 89 2E */	stwx r0, r24, r17
/* 8134CA48 | 3A 31 00 08 */	addi r17, r17, 0x8
/* 8134CA4C | 48 00 00 68 */	b .L_8134CAB4
.L_8134CA50:
/* 8134CA50 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA54 | 7C 78 8A 14 */	add r3, r24, r17
/* 8134CA58 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CA5C | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134CA60 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CA64 | 7C 18 89 2E */	stwx r0, r24, r17
/* 8134CA68 | 3A 31 00 08 */	addi r17, r17, 0x8
/* 8134CA6C | 48 00 00 48 */	b .L_8134CAB4
.L_8134CA70:
/* 8134CA70 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134CA74 | 40 82 00 24 */	bne .L_8134CA98
/* 8134CA78 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA7C | 7C 77 82 14 */	add r3, r23, r16
/* 8134CA80 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CA84 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 8134CA88 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CA8C | 7C 17 81 2E */	stwx r0, r23, r16
/* 8134CA90 | 3A 10 00 08 */	addi r16, r16, 0x8
/* 8134CA94 | 48 00 00 20 */	b .L_8134CAB4
.L_8134CA98:
/* 8134CA98 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA9C | 7C 78 8A 14 */	add r3, r24, r17
/* 8134CAA0 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CAA4 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134CAA8 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CAAC | 7C 18 89 2E */	stwx r0, r24, r17
/* 8134CAB0 | 3A 31 00 08 */	addi r17, r17, 0x8
.L_8134CAB4:
/* 8134CAB4 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 8134CAB8 | 39 EF 00 08 */	addi r15, r15, 0x8
.L_8134CABC:
/* 8134CABC | 7C 13 B0 40 */	cmplw r19, r22
/* 8134CAC0 | 41 80 FE 00 */	blt .L_8134C8C0
.L_8134CAC4:
/* 8134CAC4 | 92 9A 00 04 */	stw r20, 0x4(r26)
/* 8134CAC8 | 38 00 00 00 */	li r0, 0x0
/* 8134CACC | 7F 84 E3 78 */	mr r4, r28
/* 8134CAD0 | 92 BB 00 04 */	stw r21, 0x4(r27)
/* 8134CAD4 | 80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134CAD8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CADC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134CAE0 | 80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134CAE4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134CAE8 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134CAEC | 48 20 EB 8D */	bl fn_8155B678
/* 8134CAF0 | 39 61 01 10 */	addi r11, r1, 0x110
/* 8134CAF4 | 48 2A C9 E9 */	bl _restgpr_15
/* 8134CAF8 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8134CAFC | 7C 08 03 A6 */	mtlr r0
/* 8134CB00 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8134CB04 | 4E 80 00 20 */	blr
.endfn iplNandSD_8134C838

# .text:0x471C | 0x8134CB08 | size: 0x260
# ipl::NandSDWorker::do_get_nand_save_size()
.fn do_get_nand_save_size__Q23ipl12NandSDWorkerFv, global
/* 8134CB08 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134CB0C | 7C 08 02 A6 */	mflr r0
/* 8134CB10 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8134CB14 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134CB18 | 48 2A C9 AD */	bl _savegpr_28
/* 8134CB1C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134CB20 | 3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8134CB24 | 7C 7D 1B 78 */	mr r29, r3
/* 8134CB28 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CB2C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CB30 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134CB34 | 3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 8134CB38 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134CB3C | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134CB40 | 48 00 60 75 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134CB44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CB48 | 7C 7F 1B 78 */	mr r31, r3
/* 8134CB4C | 41 82 00 14 */	beq .L_8134CB60
/* 8134CB50 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8134CB54 | 80 03 F0 A8 */	lwz r0, -0xf58(r3)
/* 8134CB58 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8134CB5C | 40 82 01 E8 */	bne .L_8134CD44
.L_8134CB60:
/* 8134CB60 | 38 00 00 00 */	li r0, 0x0
/* 8134CB64 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CB68 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134CB6C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CB70 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134CB74 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134CB78 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134CB7C | 4B FF C7 81 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134CB80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CB84 | 41 82 00 34 */	beq .L_8134CBB8
/* 8134CB88 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CB8C | 38 00 FF FF */	li r0, -0x1
/* 8134CB90 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CB94 | 38 BE 01 32 */	addi r5, r30, 0x132
/* 8134CB98 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CB9C | 38 80 00 40 */	li r4, 0x40
/* 8134CBA0 | 80 E6 EA 4C */	lwz r7, -0x15b4(r6)
/* 8134CBA4 | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CBA8 | 7C E7 00 38 */	and r7, r7, r0
/* 8134CBAC | 4C C6 31 82 */	crclr cr1eq
/* 8134CBB0 | 48 2B 3D F9 */	bl snprintf
/* 8134CBB4 | 48 00 00 30 */	b .L_8134CBE4
.L_8134CBB8:
/* 8134CBB8 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CBBC | 38 00 FF FF */	li r0, -0x1
/* 8134CBC0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CBC4 | 38 BE 01 1C */	addi r5, r30, 0x11c
/* 8134CBC8 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CBCC | 38 80 00 40 */	li r4, 0x40
/* 8134CBD0 | 80 E6 EA 4C */	lwz r7, -0x15b4(r6)
/* 8134CBD4 | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CBD8 | 7C E7 00 38 */	and r7, r7, r0
/* 8134CBDC | 4C C6 31 82 */	crclr cr1eq
/* 8134CBE0 | 48 2B 3D C9 */	bl snprintf
.L_8134CBE4:
/* 8134CBE4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CBE8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134CBEC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134CBF0 | 48 01 39 2D */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134CBF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CBF8 | 41 82 00 2C */	beq .L_8134CC24
/* 8134CBFC | 7C 65 1B 78 */	mr r5, r3
/* 8134CC00 | 38 7E 0C D3 */	addi r3, r30, 0xcd3
/* 8134CC04 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134CC08 | 4C C6 31 82 */	crclr cr1eq
/* 8134CC0C | 48 1E 1A 95 */	bl OSReport
/* 8134CC10 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CC14 | 38 00 FF FE */	li r0, -0x2
/* 8134CC18 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CC1C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134CC20 | 48 00 01 30 */	b .L_8134CD50
.L_8134CC24:
/* 8134CC24 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CC28 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134CC2C | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134CC30 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134CC34 | 4B FF C6 C9 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134CC38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CC3C | 41 82 00 88 */	beq .L_8134CCC4
/* 8134CC40 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CC44 | 38 00 FF FF */	li r0, -0x1
/* 8134CC48 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CC4C | 38 BE 01 5C */	addi r5, r30, 0x15c
/* 8134CC50 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CC54 | 38 80 00 40 */	li r4, 0x40
/* 8134CC58 | 80 E6 EA 4C */	lwz r7, -0x15b4(r6)
/* 8134CC5C | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CC60 | 7C E7 00 38 */	and r7, r7, r0
/* 8134CC64 | 4C C6 31 82 */	crclr cr1eq
/* 8134CC68 | 48 2B 3D 41 */	bl snprintf
/* 8134CC6C | 7F A3 EB 78 */	mr r3, r29
/* 8134CC70 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134CC74 | 48 00 6E 29 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134CC78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CC7C | 7C 7C 1B 78 */	mr r28, r3
/* 8134CC80 | 40 81 00 1C */	ble .L_8134CC9C
/* 8134CC84 | 38 03 3F FF */	addi r0, r3, 0x3fff
/* 8134CC88 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134CC8C | 54 00 93 BE */	srwi r0, r0, 14
/* 8134CC90 | 7C 03 02 14 */	add r0, r3, r0
/* 8134CC94 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CC98 | 48 00 00 2C */	b .L_8134CCC4
.L_8134CC9C:
/* 8134CC9C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134CCA0 | 41 82 00 24 */	beq .L_8134CCC4
/* 8134CCA4 | 7F 84 E3 78 */	mr r4, r28
/* 8134CCA8 | 38 7E 0D 88 */	addi r3, r30, 0xd88
/* 8134CCAC | 4C C6 31 82 */	crclr cr1eq
/* 8134CCB0 | 48 1E 19 F1 */	bl OSReport
/* 8134CCB4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CCB8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CCBC | 93 83 EA 24 */	stw r28, -0x15dc(r3)
/* 8134CCC0 | 48 00 00 90 */	b .L_8134CD50
.L_8134CCC4:
/* 8134CCC4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CCC8 | 38 7E 0D B9 */	addi r3, r30, 0xdb9
/* 8134CCCC | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134CCD0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134CCD4 | 54 00 70 22 */	slwi r0, r0, 14
/* 8134CCD8 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134CCDC | 90 05 EA 24 */	stw r0, -0x15dc(r5)
/* 8134CCE0 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134CCE4 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 8134CCE8 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134CCEC | 80 A5 EA 24 */	lwz r5, -0x15dc(r5)
/* 8134CCF0 | 4C C6 31 82 */	crclr cr1eq
/* 8134CCF4 | 48 1E 19 AD */	bl OSReport
/* 8134CCF8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134CCFC | 41 82 00 1C */	beq .L_8134CD18
/* 8134CD00 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CD04 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 8134CD08 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134CD0C | 80 04 EA 24 */	lwz r0, -0x15dc(r4)
/* 8134CD10 | 90 03 F0 A8 */	stw r0, -0xf58(r3)
/* 8134CD14 | 48 00 00 3C */	b .L_8134CD50
.L_8134CD18:
/* 8134CD18 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CD1C | 7F A3 EB 78 */	mr r3, r29
/* 8134CD20 | 38 E0 00 00 */	li r7, 0x0
/* 8134CD24 | 3D 04 00 04 */	addis r8, r4, 0x4
/* 8134CD28 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CD2C | 80 A8 EA 48 */	lwz r5, -0x15b8(r8)
/* 8134CD30 | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134CD34 | 80 C8 EA 4C */	lwz r6, -0x15b4(r8)
/* 8134CD38 | 81 08 EA 24 */	lwz r8, -0x15dc(r8)
/* 8134CD3C | 48 00 5B BD */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
/* 8134CD40 | 48 00 00 10 */	b .L_8134CD50
.L_8134CD44:
/* 8134CD44 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CD48 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CD4C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134CD50:
/* 8134CD50 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134CD54 | 48 2A C7 BD */	bl _restgpr_28
/* 8134CD58 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134CD5C | 7C 08 03 A6 */	mtlr r0
/* 8134CD60 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8134CD64 | 4E 80 00 20 */	blr
.endfn do_get_nand_save_size__Q23ipl12NandSDWorkerFv

# .text:0x497C | 0x8134CD68 | size: 0x1F4
# ipl::NandSDWorker::do_get_nand_app_size()
.fn do_get_nand_app_size__Q23ipl12NandSDWorkerFv, global
/* 8134CD68 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134CD6C | 7C 08 02 A6 */	mflr r0
/* 8134CD70 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8134CD74 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134CD78 | 48 2A C7 4D */	bl _savegpr_28
/* 8134CD7C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134CD80 | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134CD84 | 7C 7E 1B 78 */	mr r30, r3
/* 8134CD88 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CD8C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CD90 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134CD94 | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134CD98 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134CD9C | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 8134CDA0 | 48 00 60 59 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134CDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CDA8 | 7C 7F 1B 78 */	mr r31, r3
/* 8134CDAC | 41 82 00 10 */	beq .L_8134CDBC
/* 8134CDB0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8134CDB4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8134CDB8 | 40 82 01 80 */	bne .L_8134CF38
.L_8134CDBC:
/* 8134CDBC | 38 00 00 00 */	li r0, 0x0
/* 8134CDC0 | 3B A0 FF FF */	li r29, -0x1
/* 8134CDC4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CDC8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CDCC | 38 BC 01 43 */	addi r5, r28, 0x143
/* 8134CDD0 | 38 80 00 40 */	li r4, 0x40
/* 8134CDD4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134CDD8 | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8134CDDC | 3C C6 00 04 */	addis r6, r6, 0x4
/* 8134CDE0 | 80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134CDE4 | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CDE8 | 7C 07 E8 38 */	and r7, r0, r29
/* 8134CDEC | 4C C6 31 82 */	crclr cr1eq
/* 8134CDF0 | 48 2B 3B B9 */	bl snprintf
/* 8134CDF4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CDF8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134CDFC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134CE00 | 48 01 37 1D */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134CE04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CE08 | 41 82 00 2C */	beq .L_8134CE34
/* 8134CE0C | 7C 65 1B 78 */	mr r5, r3
/* 8134CE10 | 38 7C 0C D3 */	addi r3, r28, 0xcd3
/* 8134CE14 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134CE18 | 4C C6 31 82 */	crclr cr1eq
/* 8134CE1C | 48 1E 18 85 */	bl OSReport
/* 8134CE20 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CE24 | 38 00 FF FE */	li r0, -0x2
/* 8134CE28 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CE2C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134CE30 | 48 00 01 14 */	b .L_8134CF44
.L_8134CE34:
/* 8134CE34 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CE38 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134CE3C | 38 BC 01 5C */	addi r5, r28, 0x15c
/* 8134CE40 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CE44 | 38 80 00 40 */	li r4, 0x40
/* 8134CE48 | 80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134CE4C | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CE50 | 7C 07 E8 38 */	and r7, r0, r29
/* 8134CE54 | 4C C6 31 82 */	crclr cr1eq
/* 8134CE58 | 48 2B 3B 51 */	bl snprintf
/* 8134CE5C | 7F C3 F3 78 */	mr r3, r30
/* 8134CE60 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134CE64 | 48 00 6C 39 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134CE68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CE6C | 7C 7D 1B 78 */	mr r29, r3
/* 8134CE70 | 40 81 00 1C */	ble .L_8134CE8C
/* 8134CE74 | 38 03 3F FF */	addi r0, r3, 0x3fff
/* 8134CE78 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134CE7C | 54 00 93 BE */	srwi r0, r0, 14
/* 8134CE80 | 7C 03 02 14 */	add r0, r3, r0
/* 8134CE84 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CE88 | 48 00 00 2C */	b .L_8134CEB4
.L_8134CE8C:
/* 8134CE8C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134CE90 | 41 82 00 24 */	beq .L_8134CEB4
/* 8134CE94 | 7F A4 EB 78 */	mr r4, r29
/* 8134CE98 | 38 7C 0D 88 */	addi r3, r28, 0xd88
/* 8134CE9C | 4C C6 31 82 */	crclr cr1eq
/* 8134CEA0 | 48 1E 18 01 */	bl OSReport
/* 8134CEA4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CEA8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CEAC | 93 A3 EA 24 */	stw r29, -0x15dc(r3)
/* 8134CEB0 | 48 00 00 94 */	b .L_8134CF44
.L_8134CEB4:
/* 8134CEB4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CEB8 | 38 7C 0D F1 */	addi r3, r28, 0xdf1
/* 8134CEBC | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CEC0 | 54 00 70 22 */	slwi r0, r0, 14
/* 8134CEC4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134CEC8 | 90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134CECC | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CED0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134CED4 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134CED8 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134CEDC | 80 E4 EA 24 */	lwz r7, -0x15dc(r4)
/* 8134CEE0 | 4C C6 31 82 */	crclr cr1eq
/* 8134CEE4 | 48 1E 17 BD */	bl OSReport
/* 8134CEE8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134CEEC | 41 82 00 18 */	beq .L_8134CF04
/* 8134CEF0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CEF4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CEF8 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134CEFC | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8134CF00 | 48 00 00 44 */	b .L_8134CF44
.L_8134CF04:
/* 8134CF04 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CF08 | 7F C3 F3 78 */	mr r3, r30
/* 8134CF0C | 38 E0 00 00 */	li r7, 0x0
/* 8134CF10 | 39 00 00 00 */	li r8, 0x0
/* 8134CF14 | 3D 44 00 04 */	addis r10, r4, 0x4
/* 8134CF18 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CF1C | 80 AA EA 48 */	lwz r5, -0x15b8(r10)
/* 8134CF20 | 39 20 00 00 */	li r9, 0x0
/* 8134CF24 | 80 CA EA 4C */	lwz r6, -0x15b4(r10)
/* 8134CF28 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 8134CF2C | 81 4A EA 24 */	lwz r10, -0x15dc(r10)
/* 8134CF30 | 48 00 5D D9 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
/* 8134CF34 | 48 00 00 10 */	b .L_8134CF44
.L_8134CF38:
/* 8134CF38 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CF3C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CF40 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134CF44:
/* 8134CF44 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134CF48 | 48 2A C5 C9 */	bl _restgpr_28
/* 8134CF4C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134CF50 | 7C 08 03 A6 */	mtlr r0
/* 8134CF54 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8134CF58 | 4E 80 00 20 */	blr
.endfn do_get_nand_app_size__Q23ipl12NandSDWorkerFv

# .text:0x4B70 | 0x8134CF5C | size: 0x140
# ipl::NandSDWorker::get_sd_save_size(unsigned long)
.fn get_sd_save_size__Q23ipl12NandSDWorkerFUl, global
/* 8134CF5C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8134CF60 | 7C 08 02 A6 */	mflr r0
/* 8134CF64 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8134CF68 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8134CF6C | 48 2A C5 5D */	bl _savegpr_29
/* 8134CF70 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134CF74 | 7C 9E 23 78 */	mr r30, r4
/* 8134CF78 | 7C 7D 1B 78 */	mr r29, r3
/* 8134CF7C | 38 A0 00 00 */	li r5, 0x0
/* 8134CF80 | 3C 86 00 02 */	addis r4, r6, 0x2
/* 8134CF84 | 7F C6 F3 78 */	mr r6, r30
/* 8134CF88 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134CF8C | 48 00 5C 29 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134CF90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CF94 | 7C 7F 1B 78 */	mr r31, r3
/* 8134CF98 | 41 82 00 14 */	beq .L_8134CFAC
/* 8134CF9C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8134CFA0 | 80 03 F0 A8 */	lwz r0, -0xf58(r3)
/* 8134CFA4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8134CFA8 | 40 82 00 D4 */	bne .L_8134D07C
.L_8134CFAC:
/* 8134CFAC | 7F C4 F3 78 */	mr r4, r30
/* 8134CFB0 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8134CFB4 | 38 60 00 00 */	li r3, 0x0
/* 8134CFB8 | 4B FF C3 F1 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134CFBC | 38 61 00 20 */	addi r3, r1, 0x20
/* 8134CFC0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134CFC4 | 48 29 B1 61 */	bl fn_815E8124
/* 8134CFC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CFCC | 40 82 00 8C */	bne .L_8134D058
/* 8134CFD0 | 40 82 00 7C */	bne .L_8134D04C
/* 8134CFD4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CFD8 | 28 00 F0 C0 */	cmplwi r0, 0xf0c0
/* 8134CFDC | 40 81 00 70 */	ble .L_8134D04C
/* 8134CFE0 | 88 81 00 1C */	lbz r4, 0x1c(r1)
/* 8134CFE4 | 7F A3 EB 78 */	mr r3, r29
/* 8134CFE8 | 48 00 71 21 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134CFEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CFF0 | 41 82 00 5C */	beq .L_8134D04C
/* 8134CFF4 | 3C 60 81 63 */	lis r3, lbl_816368A8@ha
/* 8134CFF8 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134CFFC | 38 63 68 A8 */	addi r3, r3, lbl_816368A8@l
/* 8134D000 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8134D004 | 4C C6 31 82 */	crclr cr1eq
/* 8134D008 | 48 1E 16 99 */	bl OSReport
/* 8134D00C | 81 01 00 0C */	lwz r8, 0xc(r1)
/* 8134D010 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134D014 | 91 01 00 08 */	stw r8, 0x8(r1)
/* 8134D018 | 41 82 00 10 */	beq .L_8134D028
/* 8134D01C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 8134D020 | 91 03 F0 A8 */	stw r8, -0xf58(r3)
/* 8134D024 | 48 00 00 5C */	b .L_8134D080
.L_8134D028:
/* 8134D028 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134D02C | 7F A3 EB 78 */	mr r3, r29
/* 8134D030 | 7F C6 F3 78 */	mr r6, r30
/* 8134D034 | 38 A0 00 00 */	li r5, 0x0
/* 8134D038 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D03C | 38 E0 00 00 */	li r7, 0x0
/* 8134D040 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134D044 | 48 00 58 B5 */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
/* 8134D048 | 48 00 00 38 */	b .L_8134D080
.L_8134D04C:
/* 8134D04C | 38 00 FF FE */	li r0, -0x2
/* 8134D050 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134D054 | 48 00 00 2C */	b .L_8134D080
.L_8134D058:
/* 8134D058 | 3C 60 81 63 */	lis r3, lbl_816368C9@ha
/* 8134D05C | 38 63 68 C9 */	addi r3, r3, lbl_816368C9@l
/* 8134D060 | 4C C6 31 82 */	crclr cr1eq
/* 8134D064 | 48 1E 16 3D */	bl OSReport
/* 8134D068 | 7F A3 EB 78 */	mr r3, r29
/* 8134D06C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D070 | 38 80 FF FF */	li r4, -0x1
/* 8134D074 | 48 00 6D 8D */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134D078 | 48 00 00 08 */	b .L_8134D080
.L_8134D07C:
/* 8134D07C | 90 01 00 08 */	stw r0, 0x8(r1)
.L_8134D080:
/* 8134D080 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8134D084 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134D088 | 48 2A C4 8D */	bl _restgpr_29
/* 8134D08C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8134D090 | 7C 08 03 A6 */	mtlr r0
/* 8134D094 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8134D098 | 4E 80 00 20 */	blr
.endfn get_sd_save_size__Q23ipl12NandSDWorkerFUl

# .text:0x4CB0 | 0x8134D09C | size: 0x140
# ipl::NandSDWorker::get_sd_app_size(unsigned long)
.fn get_sd_app_size__Q23ipl12NandSDWorkerFUl, global
/* 8134D09C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8134D0A0 | 7C 08 02 A6 */	mflr r0
/* 8134D0A4 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8134D0A8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8134D0AC | 48 2A C4 1D */	bl _savegpr_29
/* 8134D0B0 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134D0B4 | 7C 9E 23 78 */	mr r30, r4
/* 8134D0B8 | 7C 7D 1B 78 */	mr r29, r3
/* 8134D0BC | 38 A0 00 00 */	li r5, 0x0
/* 8134D0C0 | 3C 86 00 02 */	addis r4, r6, 0x2
/* 8134D0C4 | 7F C6 F3 78 */	mr r6, r30
/* 8134D0C8 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134D0CC | 48 00 5D 2D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134D0D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D0D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8134D0D8 | 41 82 00 10 */	beq .L_8134D0E8
/* 8134D0DC | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8134D0E0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8134D0E4 | 40 82 00 D8 */	bne .L_8134D1BC
.L_8134D0E8:
/* 8134D0E8 | 7F C4 F3 78 */	mr r4, r30
/* 8134D0EC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8134D0F0 | 38 60 00 00 */	li r3, 0x0
/* 8134D0F4 | 4B FF C3 41 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134D0F8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8134D0FC | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134D100 | 48 29 B0 25 */	bl fn_815E8124
/* 8134D104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D108 | 40 82 00 90 */	bne .L_8134D198
/* 8134D10C | 40 82 00 80 */	bne .L_8134D18C
/* 8134D110 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134D114 | 28 00 06 40 */	cmplwi r0, 0x640
/* 8134D118 | 40 81 00 74 */	ble .L_8134D18C
/* 8134D11C | 88 81 00 1C */	lbz r4, 0x1c(r1)
/* 8134D120 | 7F A3 EB 78 */	mr r3, r29
/* 8134D124 | 48 00 6F E5 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134D128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D12C | 41 82 00 60 */	beq .L_8134D18C
/* 8134D130 | 3C 60 81 63 */	lis r3, lbl_816368A8@ha
/* 8134D134 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134D138 | 38 63 68 A8 */	addi r3, r3, lbl_816368A8@l
/* 8134D13C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8134D140 | 4C C6 31 82 */	crclr cr1eq
/* 8134D144 | 48 1E 15 5D */	bl OSReport
/* 8134D148 | 81 41 00 0C */	lwz r10, 0xc(r1)
/* 8134D14C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134D150 | 91 41 00 08 */	stw r10, 0x8(r1)
/* 8134D154 | 41 82 00 0C */	beq .L_8134D160
/* 8134D158 | 91 5F 00 08 */	stw r10, 0x8(r31)
/* 8134D15C | 48 00 00 64 */	b .L_8134D1C0
.L_8134D160:
/* 8134D160 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134D164 | 7F A3 EB 78 */	mr r3, r29
/* 8134D168 | 7F C6 F3 78 */	mr r6, r30
/* 8134D16C | 38 A0 00 00 */	li r5, 0x0
/* 8134D170 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D174 | 38 E0 00 00 */	li r7, 0x0
/* 8134D178 | 39 00 00 00 */	li r8, 0x0
/* 8134D17C | 39 20 00 00 */	li r9, 0x0
/* 8134D180 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134D184 | 48 00 5B 85 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
/* 8134D188 | 48 00 00 38 */	b .L_8134D1C0
.L_8134D18C:
/* 8134D18C | 38 00 FF FE */	li r0, -0x2
/* 8134D190 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134D194 | 48 00 00 2C */	b .L_8134D1C0
.L_8134D198:
/* 8134D198 | 3C 60 81 63 */	lis r3, lbl_816368C9@ha
/* 8134D19C | 38 63 68 C9 */	addi r3, r3, lbl_816368C9@l
/* 8134D1A0 | 4C C6 31 82 */	crclr cr1eq
/* 8134D1A4 | 48 1E 14 FD */	bl OSReport
/* 8134D1A8 | 7F A3 EB 78 */	mr r3, r29
/* 8134D1AC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D1B0 | 38 80 FF FF */	li r4, -0x1
/* 8134D1B4 | 48 00 6C 4D */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134D1B8 | 48 00 00 08 */	b .L_8134D1C0
.L_8134D1BC:
/* 8134D1BC | 90 01 00 08 */	stw r0, 0x8(r1)
.L_8134D1C0:
/* 8134D1C0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8134D1C4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134D1C8 | 48 2A C3 4D */	bl _restgpr_29
/* 8134D1CC | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8134D1D0 | 7C 08 03 A6 */	mtlr r0
/* 8134D1D4 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8134D1D8 | 4E 80 00 20 */	blr
.endfn get_sd_app_size__Q23ipl12NandSDWorkerFUl

# .text:0x4DF0 | 0x8134D1DC | size: 0xD4
# ipl::NandSDWorker::do_delete_sd_save()
.fn do_delete_sd_save__Q23ipl12NandSDWorkerFv, global
/* 8134D1DC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8134D1E0 | 7C 08 02 A6 */	mflr r0
/* 8134D1E4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8134D1E8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D1EC | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8134D1F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8134D1F4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134D1F8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D1FC | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134D200 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134D204 | 4B FF C1 A5 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134D208 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134D20C | 48 29 B1 A5 */	bl fn_815E83B0
/* 8134D210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D214 | 40 82 00 60 */	bne .L_8134D274
/* 8134D218 | 3C 60 81 63 */	lis r3, lbl_816368E8@ha
/* 8134D21C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134D220 | 38 63 68 E8 */	addi r3, r3, lbl_816368E8@l
/* 8134D224 | 4C C6 31 82 */	crclr cr1eq
/* 8134D228 | 48 1E 14 79 */	bl OSReport
/* 8134D22C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D230 | 7F E3 FB 78 */	mr r3, r31
/* 8134D234 | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134D238 | 80 85 EA 30 */	lwz r4, -0x15d0(r5)
/* 8134D23C | 38 04 FF FF */	subi r0, r4, 0x1
/* 8134D240 | 90 05 EA 30 */	stw r0, -0x15d0(r5)
/* 8134D244 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D248 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134D24C | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D250 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134D254 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134D258 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134D25C | 48 00 59 D5 */	bl delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134D260 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134D264 | 38 00 00 00 */	li r0, 0x0
/* 8134D268 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D26C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D270 | 48 00 00 2C */	b .L_8134D29C
.L_8134D274:
/* 8134D274 | 3C 60 81 63 */	lis r3, lbl_81636906@ha
/* 8134D278 | 38 63 69 06 */	addi r3, r3, lbl_81636906@l
/* 8134D27C | 4C C6 31 82 */	crclr cr1eq
/* 8134D280 | 48 1E 14 21 */	bl OSReport
/* 8134D284 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8134D288 | 7F E3 FB 78 */	mr r3, r31
/* 8134D28C | 38 80 FF FF */	li r4, -0x1
/* 8134D290 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134D294 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134D298 | 48 00 6B 69 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
.L_8134D29C:
/* 8134D29C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8134D2A0 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8134D2A4 | 7C 08 03 A6 */	mtlr r0
/* 8134D2A8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8134D2AC | 4E 80 00 20 */	blr
.endfn do_delete_sd_save__Q23ipl12NandSDWorkerFv

# .text:0x4EC4 | 0x8134D2B0 | size: 0xD4
# ipl::NandSDWorker::do_delete_sd_app()
.fn do_delete_sd_app__Q23ipl12NandSDWorkerFv, global
/* 8134D2B0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8134D2B4 | 7C 08 02 A6 */	mflr r0
/* 8134D2B8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8134D2BC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D2C0 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8134D2C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8134D2C8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134D2CC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D2D0 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134D2D4 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134D2D8 | 4B FF C1 5D */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134D2DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134D2E0 | 48 29 B0 D1 */	bl fn_815E83B0
/* 8134D2E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D2E8 | 40 82 00 60 */	bne .L_8134D348
/* 8134D2EC | 3C 60 81 63 */	lis r3, lbl_816368E8@ha
/* 8134D2F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134D2F4 | 38 63 68 E8 */	addi r3, r3, lbl_816368E8@l
/* 8134D2F8 | 4C C6 31 82 */	crclr cr1eq
/* 8134D2FC | 48 1E 13 A5 */	bl OSReport
/* 8134D300 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D304 | 7F E3 FB 78 */	mr r3, r31
/* 8134D308 | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134D30C | 80 85 EA 34 */	lwz r4, -0x15cc(r5)
/* 8134D310 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8134D314 | 90 05 EA 34 */	stw r0, -0x15cc(r5)
/* 8134D318 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D31C | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134D320 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D324 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134D328 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134D32C | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134D330 | 48 00 5B 99 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134D334 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134D338 | 38 00 00 00 */	li r0, 0x0
/* 8134D33C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D340 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D344 | 48 00 00 2C */	b .L_8134D370
.L_8134D348:
/* 8134D348 | 3C 60 81 63 */	lis r3, lbl_81636906@ha
/* 8134D34C | 38 63 69 06 */	addi r3, r3, lbl_81636906@l
/* 8134D350 | 4C C6 31 82 */	crclr cr1eq
/* 8134D354 | 48 1E 13 4D */	bl OSReport
/* 8134D358 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8134D35C | 7F E3 FB 78 */	mr r3, r31
/* 8134D360 | 38 80 FF FF */	li r4, -0x1
/* 8134D364 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134D368 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134D36C | 48 00 6A 95 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
.L_8134D370:
/* 8134D370 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8134D374 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8134D378 | 7C 08 03 A6 */	mtlr r0
/* 8134D37C | 38 21 00 50 */	addi r1, r1, 0x50
/* 8134D380 | 4E 80 00 20 */	blr
.endfn do_delete_sd_app__Q23ipl12NandSDWorkerFv

# .text:0x4F98 | 0x8134D384 | size: 0x2B8
# ipl::NandSDWorker::do_initialize_nand()
.fn do_initialize_nand__Q23ipl12NandSDWorkerFv, global
/* 8134D384 | 94 21 FB 80 */	stwu r1, -0x480(r1)
/* 8134D388 | 7C 08 02 A6 */	mflr r0
/* 8134D38C | 90 01 04 84 */	stw r0, 0x484(r1)
/* 8134D390 | 39 61 04 80 */	addi r11, r1, 0x480
/* 8134D394 | 48 2A C1 31 */	bl _savegpr_28
/* 8134D398 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134D39C | 7C 7C 1B 78 */	mr r28, r3
/* 8134D3A0 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134D3A4 | 38 A0 00 00 */	li r5, 0x0
/* 8134D3A8 | 38 9F 0E 9E */	addi r4, r31, 0xe9e
/* 8134D3AC | 38 C0 00 01 */	li r6, 0x1
/* 8134D3B0 | 38 FF 00 90 */	addi r7, r31, 0x90
/* 8134D3B4 | 39 00 00 05 */	li r8, 0x5
/* 8134D3B8 | 48 00 61 ED */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134D3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D3C0 | 41 82 00 1C */	beq .L_8134D3DC
/* 8134D3C4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D3C8 | 41 82 00 14 */	beq .L_8134D3DC
/* 8134D3CC | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D3D0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D3D4 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D3D8 | 48 00 02 4C */	b .L_8134D624
.L_8134D3DC:
/* 8134D3DC | 38 7F 0E A7 */	addi r3, r31, 0xea7
/* 8134D3E0 | 4C C6 31 82 */	crclr cr1eq
/* 8134D3E4 | 48 1E 12 BD */	bl OSReport
/* 8134D3E8 | 7F 83 E3 78 */	mr r3, r28
/* 8134D3EC | 48 00 02 51 */	bl initialize_meta__Q23ipl12NandSDWorkerFv
/* 8134D3F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D3F4 | 41 82 00 1C */	beq .L_8134D410
/* 8134D3F8 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D3FC | 41 82 00 14 */	beq .L_8134D410
/* 8134D400 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D404 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D408 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D40C | 48 00 02 18 */	b .L_8134D624
.L_8134D410:
/* 8134D410 | 38 7F 0E DE */	addi r3, r31, 0xede
/* 8134D414 | 4C C6 31 82 */	crclr cr1eq
/* 8134D418 | 48 1E 12 89 */	bl OSReport
/* 8134D41C | 7F 83 E3 78 */	mr r3, r28
/* 8134D420 | 48 00 02 F1 */	bl delete_nand_disk_app_with_ticket__Q23ipl12NandSDWorkerFv
/* 8134D424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D428 | 41 82 00 1C */	beq .L_8134D444
/* 8134D42C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D430 | 41 82 00 14 */	beq .L_8134D444
/* 8134D434 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D438 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D43C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D440 | 48 00 01 E4 */	b .L_8134D624
.L_8134D444:
/* 8134D444 | 7F 83 E3 78 */	mr r3, r28
/* 8134D448 | 48 00 07 F9 */	bl delete_nand_titles__Q23ipl12NandSDWorkerFv
/* 8134D44C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D450 | 41 82 00 1C */	beq .L_8134D46C
/* 8134D454 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D458 | 41 82 00 14 */	beq .L_8134D46C
/* 8134D45C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D460 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D464 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D468 | 48 00 01 BC */	b .L_8134D624
.L_8134D46C:
/* 8134D46C | 38 7F 0F 12 */	addi r3, r31, 0xf12
/* 8134D470 | 48 01 2F 71 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134D474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D478 | 7C 7E 1B 78 */	mr r30, r3
/* 8134D47C | 41 82 00 30 */	beq .L_8134D4AC
/* 8134D480 | 7F C4 F3 78 */	mr r4, r30
/* 8134D484 | 38 7F 0F 1F */	addi r3, r31, 0xf1f
/* 8134D488 | 4C C6 31 82 */	crclr cr1eq
/* 8134D48C | 48 1E 12 15 */	bl OSReport
/* 8134D490 | 2C 1E FF FC */	cmpwi r30, -0x4
/* 8134D494 | 40 82 00 18 */	bne .L_8134D4AC
/* 8134D498 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D49C | 38 00 FF FB */	li r0, -0x5
/* 8134D4A0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D4A4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D4A8 | 48 00 01 7C */	b .L_8134D624
.L_8134D4AC:
/* 8134D4AC | 38 7F 0F 59 */	addi r3, r31, 0xf59
/* 8134D4B0 | 4C C6 31 82 */	crclr cr1eq
/* 8134D4B4 | 48 1E 11 ED */	bl OSReport
/* 8134D4B8 | 48 1E 33 CD */	bl OSDisableInterrupts
/* 8134D4BC | 7C 7E 1B 78 */	mr r30, r3
/* 8134D4C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134D4C4 | 38 80 00 00 */	li r4, 0x0
/* 8134D4C8 | 38 A0 04 61 */	li r5, 0x461
/* 8134D4CC | 4B FE 2E 69 */	bl memset
/* 8134D4D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134D4D4 | 48 21 CE 29 */	bl fn_8156A2FC
/* 8134D4D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D4DC | 41 82 00 28 */	beq .L_8134D504
/* 8134D4E0 | 48 21 CA 31 */	bl fn_81569F10
/* 8134D4E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134D4E8 | 48 21 CE 21 */	bl fn_8156A308
/* 8134D4EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D4F0 | 40 82 00 20 */	bne .L_8134D510
/* 8134D4F4 | 38 7F 0F 8A */	addi r3, r31, 0xf8a
/* 8134D4F8 | 4C C6 31 82 */	crclr cr1eq
/* 8134D4FC | 48 1E 11 A5 */	bl OSReport
/* 8134D500 | 48 00 00 10 */	b .L_8134D510
.L_8134D504:
/* 8134D504 | 38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 8134D508 | 4C C6 31 82 */	crclr cr1eq
/* 8134D50C | 48 1E 11 95 */	bl OSReport
.L_8134D510:
/* 8134D510 | 38 60 00 00 */	li r3, 0x0
/* 8134D514 | 48 21 D2 19 */	bl fn_8156A72C
/* 8134D518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D51C | 40 82 00 10 */	bne .L_8134D52C
/* 8134D520 | 38 7F 0F E6 */	addi r3, r31, 0xfe6
/* 8134D524 | 4C C6 31 82 */	crclr cr1eq
/* 8134D528 | 48 1E 11 79 */	bl OSReport
.L_8134D52C:
/* 8134D52C | 38 60 00 00 */	li r3, 0x0
/* 8134D530 | 48 21 D2 41 */	bl fn_8156A770
/* 8134D534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D538 | 40 82 00 10 */	bne .L_8134D548
/* 8134D53C | 38 7F 10 11 */	addi r3, r31, 0x1011
/* 8134D540 | 4C C6 31 82 */	crclr cr1eq
/* 8134D544 | 48 1E 11 5D */	bl OSReport
.L_8134D548:
/* 8134D548 | 7F C3 F3 78 */	mr r3, r30
/* 8134D54C | 48 1E 33 61 */	bl OSRestoreInterrupts
/* 8134D550 | 48 21 C3 FD */	bl fn_8156994C
/* 8134D554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D558 | 40 82 00 14 */	bne .L_8134D56C
/* 8134D55C | 38 7F 10 3D */	addi r3, r31, 0x103d
/* 8134D560 | 4C C6 31 82 */	crclr cr1eq
/* 8134D564 | 48 1E 11 3D */	bl OSReport
/* 8134D568 | 48 00 00 14 */	b .L_8134D57C
.L_8134D56C:
/* 8134D56C | 7C 64 1B 78 */	mr r4, r3
/* 8134D570 | 38 7F 10 68 */	addi r3, r31, 0x1068
/* 8134D574 | 4C C6 31 82 */	crclr cr1eq
/* 8134D578 | 48 1E 11 29 */	bl OSReport
.L_8134D57C:
/* 8134D57C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D580 | 38 80 40 00 */	li r4, 0x4000
/* 8134D584 | 38 A0 00 20 */	li r5, 0x20
/* 8134D588 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D58C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D590 | 48 20 D1 C5 */	bl fn_8155A754
/* 8134D594 | 7C 7E 1B 78 */	mr r30, r3
/* 8134D598 | 38 80 00 00 */	li r4, 0x0
/* 8134D59C | 38 A0 00 01 */	li r5, 0x1
/* 8134D5A0 | 38 C0 00 01 */	li r6, 0x1
/* 8134D5A4 | 38 E0 00 01 */	li r7, 0x1
/* 8134D5A8 | 48 15 31 5D */	bl NWC24InitFilesIndividually
/* 8134D5AC | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D5B0 | 7C 7D 1B 78 */	mr r29, r3
/* 8134D5B4 | 7F C4 F3 78 */	mr r4, r30
/* 8134D5B8 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134D5BC | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D5C0 | 48 20 D4 45 */	bl fn_8155AA04
/* 8134D5C4 | 2C 1D FF DA */	cmpwi r29, -0x26
/* 8134D5C8 | 40 82 00 24 */	bne .L_8134D5EC
/* 8134D5CC | 38 7F 10 8B */	addi r3, r31, 0x108b
/* 8134D5D0 | 4C C6 31 82 */	crclr cr1eq
/* 8134D5D4 | 48 1E 10 CD */	bl OSReport
/* 8134D5D8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D5DC | 38 00 FF FB */	li r0, -0x5
/* 8134D5E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D5E4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D5E8 | 48 00 00 3C */	b .L_8134D624
.L_8134D5EC:
/* 8134D5EC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134D5F0 | 40 82 00 14 */	bne .L_8134D604
/* 8134D5F4 | 38 7F 10 C3 */	addi r3, r31, 0x10c3
/* 8134D5F8 | 4C C6 31 82 */	crclr cr1eq
/* 8134D5FC | 48 1E 10 A5 */	bl OSReport
/* 8134D600 | 48 00 00 14 */	b .L_8134D614
.L_8134D604:
/* 8134D604 | 7F A4 EB 78 */	mr r4, r29
/* 8134D608 | 38 7F 10 F1 */	addi r3, r31, 0x10f1
/* 8134D60C | 4C C6 31 82 */	crclr cr1eq
/* 8134D610 | 48 1E 10 91 */	bl OSReport
.L_8134D614:
/* 8134D614 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D618 | 38 00 00 00 */	li r0, 0x0
/* 8134D61C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D620 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134D624:
/* 8134D624 | 39 61 04 80 */	addi r11, r1, 0x480
/* 8134D628 | 48 2A BE E9 */	bl _restgpr_28
/* 8134D62C | 80 01 04 84 */	lwz r0, 0x484(r1)
/* 8134D630 | 7C 08 03 A6 */	mtlr r0
/* 8134D634 | 38 21 04 80 */	addi r1, r1, 0x480
/* 8134D638 | 4E 80 00 20 */	blr
.endfn do_initialize_nand__Q23ipl12NandSDWorkerFv

# .text:0x5250 | 0x8134D63C | size: 0xD4
# ipl::NandSDWorker::initialize_meta()
.fn initialize_meta__Q23ipl12NandSDWorkerFv, global
/* 8134D63C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134D640 | 7C 08 02 A6 */	mflr r0
/* 8134D644 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134D648 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134D64C | 48 2A BE 7D */	bl _savegpr_29
/* 8134D650 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134D654 | 7C 7D 1B 78 */	mr r29, r3
/* 8134D658 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134D65C | 38 7F 11 1B */	addi r3, r31, 0x111b
/* 8134D660 | 48 01 2D 81 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134D664 | 7C 7E 1B 78 */	mr r30, r3
/* 8134D668 | 7F A3 EB 78 */	mr r3, r29
/* 8134D66C | 7F C4 F3 78 */	mr r4, r30
/* 8134D670 | 38 A0 00 00 */	li r5, 0x0
/* 8134D674 | 48 00 65 E5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134D678 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D67C | 41 82 00 0C */	beq .L_8134D688
/* 8134D680 | 38 60 FF FB */	li r3, -0x5
/* 8134D684 | 48 00 00 74 */	b .L_8134D6F8
.L_8134D688:
/* 8134D688 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134D68C | 41 82 00 1C */	beq .L_8134D6A8
/* 8134D690 | 2C 1E FF F4 */	cmpwi r30, -0xc
/* 8134D694 | 41 82 00 14 */	beq .L_8134D6A8
/* 8134D698 | 7F C4 F3 78 */	mr r4, r30
/* 8134D69C | 38 7F 11 2A */	addi r3, r31, 0x112a
/* 8134D6A0 | 4C C6 31 82 */	crclr cr1eq
/* 8134D6A4 | 48 1E 0F FD */	bl OSReport
.L_8134D6A8:
/* 8134D6A8 | 38 7F 11 66 */	addi r3, r31, 0x1166
/* 8134D6AC | 48 01 2D 35 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134D6B0 | 7C 7E 1B 78 */	mr r30, r3
/* 8134D6B4 | 7F A3 EB 78 */	mr r3, r29
/* 8134D6B8 | 7F C4 F3 78 */	mr r4, r30
/* 8134D6BC | 38 A0 00 00 */	li r5, 0x0
/* 8134D6C0 | 48 00 65 99 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134D6C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D6C8 | 41 82 00 0C */	beq .L_8134D6D4
/* 8134D6CC | 38 60 FF FB */	li r3, -0x5
/* 8134D6D0 | 48 00 00 28 */	b .L_8134D6F8
.L_8134D6D4:
/* 8134D6D4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134D6D8 | 41 82 00 1C */	beq .L_8134D6F4
/* 8134D6DC | 2C 1E FF F4 */	cmpwi r30, -0xc
/* 8134D6E0 | 41 82 00 14 */	beq .L_8134D6F4
/* 8134D6E4 | 7F C4 F3 78 */	mr r4, r30
/* 8134D6E8 | 38 7F 11 75 */	addi r3, r31, 0x1175
/* 8134D6EC | 4C C6 31 82 */	crclr cr1eq
/* 8134D6F0 | 48 1E 0F B1 */	bl OSReport
.L_8134D6F4:
/* 8134D6F4 | 38 60 00 00 */	li r3, 0x0
.L_8134D6F8:
/* 8134D6F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134D6FC | 48 2A BE 19 */	bl _restgpr_29
/* 8134D700 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134D704 | 7C 08 03 A6 */	mtlr r0
/* 8134D708 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134D70C | 4E 80 00 20 */	blr
.endfn initialize_meta__Q23ipl12NandSDWorkerFv

# .text:0x5324 | 0x8134D710 | size: 0x1B0
# ipl::NandSDWorker::delete_nand_disk_app_with_ticket()
.fn delete_nand_disk_app_with_ticket__Q23ipl12NandSDWorkerFv, global
/* 8134D710 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134D714 | 7C 08 02 A6 */	mflr r0
/* 8134D718 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8134D71C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8134D720 | 48 2A BD 99 */	bl _savegpr_25
/* 8134D724 | 3B 60 00 00 */	li r27, 0x0
/* 8134D728 | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134D72C | 93 61 00 08 */	stw r27, 0x8(r1)
/* 8134D730 | 7C 79 1B 78 */	mr r25, r3
/* 8134D734 | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134D738 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134D73C | 38 60 00 00 */	li r3, 0x0
/* 8134D740 | 48 27 0C B1 */	bl ES_ListOwnedTitles
/* 8134D744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D748 | 41 82 00 1C */	beq .L_8134D764
/* 8134D74C | 7C 64 1B 78 */	mr r4, r3
/* 8134D750 | 38 7D 11 B1 */	addi r3, r29, 0x11b1
/* 8134D754 | 4C C6 31 82 */	crclr cr1eq
/* 8134D758 | 48 1E 0F 49 */	bl OSReport
/* 8134D75C | 3B 80 FF FE */	li r28, -0x2
/* 8134D760 | 48 00 01 28 */	b .L_8134D888
.L_8134D764:
/* 8134D764 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134D768 | 38 A0 00 20 */	li r5, 0x20
/* 8134D76C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134D770 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D774 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D778 | 54 04 18 38 */	slwi r4, r0, 3
/* 8134D77C | 48 20 CF D9 */	bl fn_8155A754
/* 8134D780 | 7C 7B 1B 78 */	mr r27, r3
/* 8134D784 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134D788 | 48 27 0C 69 */	bl ES_ListOwnedTitles
/* 8134D78C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D790 | 41 82 00 1C */	beq .L_8134D7AC
/* 8134D794 | 7C 64 1B 78 */	mr r4, r3
/* 8134D798 | 38 7D 11 B1 */	addi r3, r29, 0x11b1
/* 8134D79C | 4C C6 31 82 */	crclr cr1eq
/* 8134D7A0 | 48 1E 0F 01 */	bl OSReport
/* 8134D7A4 | 3B 80 FF FE */	li r28, -0x2
/* 8134D7A8 | 48 00 00 E0 */	b .L_8134D888
.L_8134D7AC:
/* 8134D7AC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8134D7B0 | 3B 40 00 00 */	li r26, 0x0
/* 8134D7B4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8134D7B8 | 3B E0 00 00 */	li r31, 0x0
/* 8134D7BC | 48 00 00 BC */	b .L_8134D878
.L_8134D7C0:
/* 8134D7C0 | 7F 9B FA 14 */	add r28, r27, r31
/* 8134D7C4 | 7C 7B F8 2E */	lwzx r3, r27, r31
/* 8134D7C8 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8134D7CC | 4B FF BA 81 */	bl is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134D7D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D7D4 | 40 82 00 18 */	bne .L_8134D7EC
/* 8134D7D8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D7DC | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8134D7E0 | 4B FF BB 1D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134D7E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D7E8 | 41 82 00 88 */	beq .L_8134D870
.L_8134D7EC:
/* 8134D7EC | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D7F0 | 7F 23 CB 78 */	mr r3, r25
/* 8134D7F4 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D7F8 | 48 00 00 C9 */	bl delete_ticket__Q23ipl12NandSDWorkerFUx
/* 8134D7FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D800 | 41 82 00 24 */	beq .L_8134D824
/* 8134D804 | 2C 03 FF F2 */	cmpwi r3, -0xe
/* 8134D808 | 41 82 00 1C */	beq .L_8134D824
/* 8134D80C | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D810 | 7C 67 1B 78 */	mr r7, r3
/* 8134D814 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D818 | 38 7D 11 DF */	addi r3, r29, 0x11df
/* 8134D81C | 4C C6 31 82 */	crclr cr1eq
/* 8134D820 | 48 1E 0E 81 */	bl OSReport
.L_8134D824:
/* 8134D824 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8134D828 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D82C | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D830 | 48 01 91 11 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134D834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D838 | 41 82 00 24 */	beq .L_8134D85C
/* 8134D83C | 2C 03 FF 96 */	cmpwi r3, -0x6a
/* 8134D840 | 41 82 00 1C */	beq .L_8134D85C
/* 8134D844 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D848 | 7C 67 1B 78 */	mr r7, r3
/* 8134D84C | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D850 | 38 7D 12 12 */	addi r3, r29, 0x1212
/* 8134D854 | 4C C6 31 82 */	crclr cr1eq
/* 8134D858 | 48 1E 0E 49 */	bl OSReport
.L_8134D85C:
/* 8134D85C | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D860 | 38 7D 12 4B */	addi r3, r29, 0x124b
/* 8134D864 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D868 | 4C C6 31 82 */	crclr cr1eq
/* 8134D86C | 48 1E 0E 35 */	bl OSReport
.L_8134D870:
/* 8134D870 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134D874 | 3B FF 00 08 */	addi r31, r31, 0x8
.L_8134D878:
/* 8134D878 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134D87C | 7C 1A 00 40 */	cmplw r26, r0
/* 8134D880 | 41 80 FF 40 */	blt .L_8134D7C0
/* 8134D884 | 3B 80 00 00 */	li r28, 0x0
.L_8134D888:
/* 8134D888 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134D88C | 41 82 00 18 */	beq .L_8134D8A4
/* 8134D890 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134D894 | 7F 64 DB 78 */	mr r4, r27
/* 8134D898 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D89C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D8A0 | 48 20 D1 65 */	bl fn_8155AA04
.L_8134D8A4:
/* 8134D8A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8134D8A8 | 7F 83 E3 78 */	mr r3, r28
/* 8134D8AC | 48 2A BC 59 */	bl _restgpr_25
/* 8134D8B0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8134D8B4 | 7C 08 03 A6 */	mtlr r0
/* 8134D8B8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8134D8BC | 4E 80 00 20 */	blr
.endfn delete_nand_disk_app_with_ticket__Q23ipl12NandSDWorkerFv

# .text:0x54D4 | 0x8134D8C0 | size: 0x2BC
# ipl::NandSDWorker::delete_ticket(unsigned long long)
.fn delete_ticket__Q23ipl12NandSDWorkerFUx, global
/* 8134D8C0 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8134D8C4 | 7C 2C 0B 78 */	mr r12, r1
/* 8134D8C8 | 21 6B FE A0 */	subfic r11, r11, -0x160
/* 8134D8CC | 7C 21 59 6E */	stwux r1, r1, r11
/* 8134D8D0 | 7C 08 02 A6 */	mflr r0
/* 8134D8D4 | 7D 8B 63 78 */	mr r11, r12
/* 8134D8D8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8134D8DC | 48 2A BB CD */	bl _savegpr_21
/* 8134D8E0 | 3B 80 00 00 */	li r28, 0x0
/* 8134D8E4 | 7C D9 33 78 */	mr r25, r6
/* 8134D8E8 | 7C BA 2B 78 */	mr r26, r5
/* 8134D8EC | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134D8F0 | 7C 78 1B 78 */	mr r24, r3
/* 8134D8F4 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 8134D8F8 | 7F 24 CB 78 */	mr r4, r25
/* 8134D8FC | 7F 43 D3 78 */	mr r3, r26
/* 8134D900 | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134D904 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 8134D908 | 38 A0 00 00 */	li r5, 0x0
/* 8134D90C | 48 27 0F FD */	bl fn_815BE908
/* 8134D910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D914 | 7C 75 1B 78 */	mr r21, r3
/* 8134D918 | 41 82 00 2C */	beq .L_8134D944
/* 8134D91C | 7E A4 AB 78 */	mr r4, r21
/* 8134D920 | 38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8134D924 | 4C C6 31 82 */	crclr cr1eq
/* 8134D928 | 48 1E 0D 79 */	bl OSReport
/* 8134D92C | 2C 15 FF 96 */	cmpwi r21, -0x6a
/* 8134D930 | 40 82 00 0C */	bne .L_8134D93C
/* 8134D934 | 38 60 FF F2 */	li r3, -0xe
/* 8134D938 | 48 00 02 28 */	b .L_8134DB60
.L_8134D93C:
/* 8134D93C | 38 60 FF FE */	li r3, -0x2
/* 8134D940 | 48 00 02 20 */	b .L_8134DB60
.L_8134D944:
/* 8134D944 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8134D948 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134D94C | 41 82 02 10 */	beq .L_8134DB5C
/* 8134D950 | 1C 80 00 D8 */	mulli r4, r0, 0xd8
/* 8134D954 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134D958 | 38 A0 00 20 */	li r5, 0x20
/* 8134D95C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D960 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8134D964 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D968 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8134D96C | 48 20 CD E9 */	bl fn_8155A754
/* 8134D970 | 7C 7C 1B 78 */	mr r28, r3
/* 8134D974 | 7F 24 CB 78 */	mr r4, r25
/* 8134D978 | 7F 43 D3 78 */	mr r3, r26
/* 8134D97C | 38 C1 00 20 */	addi r6, r1, 0x20
/* 8134D980 | 7F 85 E3 78 */	mr r5, r28
/* 8134D984 | 48 27 0F 85 */	bl fn_815BE908
/* 8134D988 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D98C | 7C 75 1B 78 */	mr r21, r3
/* 8134D990 | 41 82 00 40 */	beq .L_8134D9D0
/* 8134D994 | 7E A4 AB 78 */	mr r4, r21
/* 8134D998 | 38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8134D99C | 4C C6 31 82 */	crclr cr1eq
/* 8134D9A0 | 48 1E 0D 01 */	bl OSReport
/* 8134D9A4 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134D9A8 | 7F 84 E3 78 */	mr r4, r28
/* 8134D9AC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D9B0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D9B4 | 48 20 D0 51 */	bl fn_8155AA04
/* 8134D9B8 | 2C 15 FF 96 */	cmpwi r21, -0x6a
/* 8134D9BC | 40 82 00 0C */	bne .L_8134D9C8
/* 8134D9C0 | 38 60 FF F2 */	li r3, -0xe
/* 8134D9C4 | 48 00 01 9C */	b .L_8134DB60
.L_8134D9C8:
/* 8134D9C8 | 38 60 FF FE */	li r3, -0x2
/* 8134D9CC | 48 00 01 94 */	b .L_8134DB60
.L_8134D9D0:
/* 8134D9D0 | 3B 60 00 00 */	li r27, 0x0
/* 8134D9D4 | 3A E0 00 00 */	li r23, 0x0
/* 8134D9D8 | 3B C0 00 17 */	li r30, 0x17
/* 8134D9DC | 3B E0 00 20 */	li r31, 0x20
/* 8134D9E0 | 3A C0 00 08 */	li r22, 0x8
/* 8134D9E4 | 48 00 01 58 */	b .L_8134DB3C
.L_8134D9E8:
/* 8134D9E8 | 7C 1C B8 AE */	lbzx r0, r28, r23
/* 8134D9EC | 7C BC BA 14 */	add r5, r28, r23
/* 8134D9F0 | 38 C1 00 65 */	addi r6, r1, 0x65
/* 8134D9F4 | 98 01 00 40 */	stb r0, 0x40(r1)
/* 8134D9F8 | 38 85 00 25 */	addi r4, r5, 0x25
/* 8134D9FC | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8134DA00 | 80 65 00 08 */	lwz r3, 0x8(r5)
/* 8134DA04 | 90 61 00 48 */	stw r3, 0x48(r1)
/* 8134DA08 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8134DA0C | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 8134DA10 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 8134DA14 | 80 05 00 10 */	lwz r0, 0x10(r5)
/* 8134DA18 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 8134DA1C | 90 61 00 54 */	stw r3, 0x54(r1)
/* 8134DA20 | 90 01 00 50 */	stw r0, 0x50(r1)
/* 8134DA24 | 88 05 00 18 */	lbz r0, 0x18(r5)
/* 8134DA28 | 98 01 00 58 */	stb r0, 0x58(r1)
/* 8134DA2C | 88 05 00 19 */	lbz r0, 0x19(r5)
/* 8134DA30 | 98 01 00 59 */	stb r0, 0x59(r1)
/* 8134DA34 | A0 05 00 1A */	lhz r0, 0x1a(r5)
/* 8134DA38 | B0 01 00 5A */	sth r0, 0x5a(r1)
/* 8134DA3C | 80 05 00 1C */	lwz r0, 0x1c(r5)
/* 8134DA40 | 90 01 00 5C */	stw r0, 0x5c(r1)
/* 8134DA44 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 8134DA48 | 90 01 00 60 */	stw r0, 0x60(r1)
/* 8134DA4C | 88 05 00 24 */	lbz r0, 0x24(r5)
/* 8134DA50 | 98 01 00 64 */	stb r0, 0x64(r1)
/* 8134DA54 | 88 05 00 25 */	lbz r0, 0x25(r5)
/* 8134DA58 | 98 01 00 65 */	stb r0, 0x65(r1)
/* 8134DA5C | 7F C9 03 A6 */	mtctr r30
.L_8134DA60:
/* 8134DA60 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 8134DA64 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 8134DA68 | 98 66 00 01 */	stb r3, 0x1(r6)
/* 8134DA6C | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 8134DA70 | 42 00 FF F0 */	bdnz .L_8134DA60
/* 8134DA74 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 8134DA78 | 7C 7C BA 14 */	add r3, r28, r23
/* 8134DA7C | 38 A1 00 95 */	addi r5, r1, 0x95
/* 8134DA80 | 98 06 00 01 */	stb r0, 0x1(r6)
/* 8134DA84 | 38 83 00 55 */	addi r4, r3, 0x55
/* 8134DA88 | 88 03 00 55 */	lbz r0, 0x55(r3)
/* 8134DA8C | 98 01 00 95 */	stb r0, 0x95(r1)
/* 8134DA90 | 7F E9 03 A6 */	mtctr r31
.L_8134DA94:
/* 8134DA94 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 8134DA98 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 8134DA9C | 98 65 00 01 */	stb r3, 0x1(r5)
/* 8134DAA0 | 9C 05 00 02 */	stbu r0, 0x2(r5)
/* 8134DAA4 | 42 00 FF F0 */	bdnz .L_8134DA94
/* 8134DAA8 | 7C 7C BA 14 */	add r3, r28, r23
/* 8134DAAC | 38 A1 00 D4 */	addi r5, r1, 0xd4
/* 8134DAB0 | 38 83 00 94 */	addi r4, r3, 0x94
/* 8134DAB4 | 7E C9 03 A6 */	mtctr r22
.L_8134DAB8:
/* 8134DAB8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8134DABC | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8134DAC0 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8134DAC4 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8134DAC8 | 42 00 FF F0 */	bdnz .L_8134DAB8
/* 8134DACC | 38 61 00 40 */	addi r3, r1, 0x40
/* 8134DAD0 | 48 27 12 DD */	bl fn_815BEDAC
/* 8134DAD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DAD8 | 7C 75 1B 78 */	mr r21, r3
/* 8134DADC | 41 82 00 40 */	beq .L_8134DB1C
/* 8134DAE0 | 7E A4 AB 78 */	mr r4, r21
/* 8134DAE4 | 38 7D 12 73 */	addi r3, r29, 0x1273
/* 8134DAE8 | 4C C6 31 82 */	crclr cr1eq
/* 8134DAEC | 48 1E 0B B5 */	bl OSReport
/* 8134DAF0 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134DAF4 | 7F 84 E3 78 */	mr r4, r28
/* 8134DAF8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DAFC | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DB00 | 48 20 CF 05 */	bl fn_8155AA04
/* 8134DB04 | 2C 15 FF 96 */	cmpwi r21, -0x6a
/* 8134DB08 | 40 82 00 0C */	bne .L_8134DB14
/* 8134DB0C | 38 60 FF F2 */	li r3, -0xe
/* 8134DB10 | 48 00 00 50 */	b .L_8134DB60
.L_8134DB14:
/* 8134DB14 | 38 60 FF FE */	li r3, -0x2
/* 8134DB18 | 48 00 00 48 */	b .L_8134DB60
.L_8134DB1C:
/* 8134DB1C | 7F 64 DB 78 */	mr r4, r27
/* 8134DB20 | 7F 26 CB 78 */	mr r6, r25
/* 8134DB24 | 7F 45 D3 78 */	mr r5, r26
/* 8134DB28 | 38 7D 12 9E */	addi r3, r29, 0x129e
/* 8134DB2C | 4C C6 31 82 */	crclr cr1eq
/* 8134DB30 | 48 1E 0B 71 */	bl OSReport
/* 8134DB34 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8134DB38 | 3A F7 00 D8 */	addi r23, r23, 0xd8
.L_8134DB3C:
/* 8134DB3C | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8134DB40 | 7C 1B 00 40 */	cmplw r27, r0
/* 8134DB44 | 41 80 FE A4 */	blt .L_8134D9E8
/* 8134DB48 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134DB4C | 7F 84 E3 78 */	mr r4, r28
/* 8134DB50 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DB54 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DB58 | 48 20 CE AD */	bl fn_8155AA04
.L_8134DB5C:
/* 8134DB5C | 38 60 00 00 */	li r3, 0x0
.L_8134DB60:
/* 8134DB60 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8134DB64 | 7D 4B 53 78 */	mr r11, r10
/* 8134DB68 | 48 2A B9 8D */	bl _restgpr_21
/* 8134DB6C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8134DB70 | 7C 08 03 A6 */	mtlr r0
/* 8134DB74 | 7D 41 53 78 */	mr r1, r10
/* 8134DB78 | 4E 80 00 20 */	blr
.endfn delete_ticket__Q23ipl12NandSDWorkerFUx

# .text:0x5790 | 0x8134DB7C | size: 0xC4
# ipl::NandSDWorker::delete_empty_title(unsigned long long, bool)
.fn delete_empty_title__Q23ipl12NandSDWorkerFUxb, global
/* 8134DB7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134DB80 | 7C 08 02 A6 */	mflr r0
/* 8134DB84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134DB88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134DB8C | 48 2A B9 39 */	bl _savegpr_28
/* 8134DB90 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8134DB94 | 7C BD 2B 78 */	mr r29, r5
/* 8134DB98 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8134DB9C | 7C DC 33 78 */	mr r28, r6
/* 8134DBA0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8134DBA4 | 7C FE 3B 78 */	mr r30, r7
/* 8134DBA8 | 48 01 8B B1 */	bl CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134DBAC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8134DBB0 | 7C 7F 1B 78 */	mr r31, r3
/* 8134DBB4 | 41 82 00 0C */	beq .L_8134DBC0
/* 8134DBB8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134DBBC | 41 82 00 44 */	beq .L_8134DC00
.L_8134DBC0:
/* 8134DBC0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8134DBC4 | 7F 86 E3 78 */	mr r6, r28
/* 8134DBC8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8134DBCC | 7F A5 EB 78 */	mr r5, r29
/* 8134DBD0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8134DBD4 | 48 01 8D 6D */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134DBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DBDC | 7C 7F 1B 78 */	mr r31, r3
/* 8134DBE0 | 41 82 00 44 */	beq .L_8134DC24
/* 8134DBE4 | 3C 60 81 63 */	lis r3, lbl_81635D1B@ha
/* 8134DBE8 | 7F E4 FB 78 */	mr r4, r31
/* 8134DBEC | 38 63 5D 1B */	addi r3, r3, lbl_81635D1B@l
/* 8134DBF0 | 4C C6 31 82 */	crclr cr1eq
/* 8134DBF4 | 48 1E 0A AD */	bl OSReport
/* 8134DBF8 | 7F E3 FB 78 */	mr r3, r31
/* 8134DBFC | 48 00 00 2C */	b .L_8134DC28
.L_8134DC00:
/* 8134DC00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DC04 | 40 80 00 20 */	bge .L_8134DC24
/* 8134DC08 | 3C 60 81 63 */	lis r3, lbl_81636D56@ha
/* 8134DC0C | 7F E4 FB 78 */	mr r4, r31
/* 8134DC10 | 38 63 6D 56 */	addi r3, r3, lbl_81636D56@l
/* 8134DC14 | 4C C6 31 82 */	crclr cr1eq
/* 8134DC18 | 48 1E 0A 89 */	bl OSReport
/* 8134DC1C | 7F E3 FB 78 */	mr r3, r31
/* 8134DC20 | 48 00 00 08 */	b .L_8134DC28
.L_8134DC24:
/* 8134DC24 | 38 60 00 00 */	li r3, 0x0
.L_8134DC28:
/* 8134DC28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134DC2C | 48 2A B8 E5 */	bl _restgpr_28
/* 8134DC30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134DC34 | 7C 08 03 A6 */	mtlr r0
/* 8134DC38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134DC3C | 4E 80 00 20 */	blr
.endfn delete_empty_title__Q23ipl12NandSDWorkerFUxb

# .text:0x5854 | 0x8134DC40 | size: 0x248
# ipl::NandSDWorker::delete_nand_titles()
.fn delete_nand_titles__Q23ipl12NandSDWorkerFv, global
/* 8134DC40 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8134DC44 | 7C 08 02 A6 */	mflr r0
/* 8134DC48 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8134DC4C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8134DC50 | 48 2A B8 59 */	bl _savegpr_21
/* 8134DC54 | 3A C0 00 00 */	li r22, 0x0
/* 8134DC58 | 3F 20 81 63 */	lis r25, lbl_81635A88@ha
/* 8134DC5C | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 8134DC60 | 7C 7F 1B 78 */	mr r31, r3
/* 8134DC64 | 3B 39 5A 88 */	addi r25, r25, lbl_81635A88@l
/* 8134DC68 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134DC6C | 38 60 00 00 */	li r3, 0x0
/* 8134DC70 | 48 27 08 75 */	bl fn_815BE4E4
/* 8134DC74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DC78 | 41 82 00 1C */	beq .L_8134DC94
/* 8134DC7C | 7C 64 1B 78 */	mr r4, r3
/* 8134DC80 | 38 79 13 06 */	addi r3, r25, 0x1306
/* 8134DC84 | 4C C6 31 82 */	crclr cr1eq
/* 8134DC88 | 48 1E 0A 19 */	bl OSReport
/* 8134DC8C | 3A E0 FF FE */	li r23, -0x2
/* 8134DC90 | 48 00 01 C0 */	b .L_8134DE50
.L_8134DC94:
/* 8134DC94 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134DC98 | 38 A0 00 20 */	li r5, 0x20
/* 8134DC9C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134DCA0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DCA4 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DCA8 | 54 04 18 38 */	slwi r4, r0, 3
/* 8134DCAC | 48 20 CA A9 */	bl fn_8155A754
/* 8134DCB0 | 7C 76 1B 78 */	mr r22, r3
/* 8134DCB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134DCB8 | 48 27 08 2D */	bl fn_815BE4E4
/* 8134DCBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DCC0 | 41 82 00 1C */	beq .L_8134DCDC
/* 8134DCC4 | 7C 64 1B 78 */	mr r4, r3
/* 8134DCC8 | 38 79 13 06 */	addi r3, r25, 0x1306
/* 8134DCCC | 4C C6 31 82 */	crclr cr1eq
/* 8134DCD0 | 48 1E 09 D1 */	bl OSReport
/* 8134DCD4 | 3A E0 FF FE */	li r23, -0x2
/* 8134DCD8 | 48 00 01 78 */	b .L_8134DE50
.L_8134DCDC:
/* 8134DCDC | 3F 60 00 01 */	lis r27, 0x1
/* 8134DCE0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8134DCE4 | 3A A0 00 00 */	li r21, 0x0
/* 8134DCE8 | 3B C0 00 00 */	li r30, 0x0
/* 8134DCEC | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8134DCF0 | 3B 5B 00 02 */	addi r26, r27, 0x2
/* 8134DCF4 | 3B 80 FF FF */	li r28, -0x1
/* 8134DCF8 | 48 00 01 48 */	b .L_8134DE40
.L_8134DCFC:
/* 8134DCFC | 7C B6 F0 2E */	lwzx r5, r22, r30
/* 8134DD00 | 7F 16 F2 14 */	add r24, r22, r30
/* 8134DD04 | 80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DD08 | 7C 05 D0 00 */	cmpw r5, r26
/* 8134DD0C | 40 80 00 1C */	bge .L_8134DD28
/* 8134DD10 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8134DD14 | 41 82 00 34 */	beq .L_8134DD48
/* 8134DD18 | 41 80 01 14 */	blt .L_8134DE2C
/* 8134DD1C | 7C 05 D8 00 */	cmpw r5, r27
/* 8134DD20 | 40 80 00 7C */	bge .L_8134DD9C
/* 8134DD24 | 48 00 01 08 */	b .L_8134DE2C
.L_8134DD28:
/* 8134DD28 | 38 1B 00 08 */	addi r0, r27, 0x8
/* 8134DD2C | 7C 05 00 00 */	cmpw r5, r0
/* 8134DD30 | 41 82 00 BC */	beq .L_8134DDEC
/* 8134DD34 | 40 80 00 F8 */	bge .L_8134DE2C
/* 8134DD38 | 38 1B 00 04 */	addi r0, r27, 0x4
/* 8134DD3C | 7C 05 00 00 */	cmpw r5, r0
/* 8134DD40 | 40 80 00 5C */	bge .L_8134DD9C
/* 8134DD44 | 48 00 00 A8 */	b .L_8134DDEC
.L_8134DD48:
/* 8134DD48 | 7C C0 E0 38 */	and r0, r6, r28
/* 8134DD4C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8134DD50 | 40 82 00 E8 */	bne .L_8134DE38
/* 8134DD54 | 7F E3 FB 78 */	mr r3, r31
/* 8134DD58 | 38 E0 00 01 */	li r7, 0x1
/* 8134DD5C | 39 0D 81 9C */	li r8, c_ignore_list_for_wiimenu__Q23ipl12NandSDWorker@sda21
/* 8134DD60 | 39 20 00 02 */	li r9, 0x2
/* 8134DD64 | 48 00 56 7D */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134DD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DD6C | 7C 77 1B 78 */	mr r23, r3
/* 8134DD70 | 41 82 00 1C */	beq .L_8134DD8C
/* 8134DD74 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134DD78 | 41 82 00 14 */	beq .L_8134DD8C
/* 8134DD7C | 38 79 13 35 */	addi r3, r25, 0x1335
/* 8134DD80 | 4C C6 31 82 */	crclr cr1eq
/* 8134DD84 | 48 1E 09 1D */	bl OSReport
/* 8134DD88 | 48 00 00 C8 */	b .L_8134DE50
.L_8134DD8C:
/* 8134DD8C | 38 79 13 64 */	addi r3, r25, 0x1364
/* 8134DD90 | 4C C6 31 82 */	crclr cr1eq
/* 8134DD94 | 48 1E 09 0D */	bl OSReport
/* 8134DD98 | 48 00 00 A0 */	b .L_8134DE38
.L_8134DD9C:
/* 8134DD9C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8134DDA0 | 48 01 8B A1 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134DDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DDA8 | 41 82 00 2C */	beq .L_8134DDD4
/* 8134DDAC | 2C 03 FF 96 */	cmpwi r3, -0x6a
/* 8134DDB0 | 41 82 00 24 */	beq .L_8134DDD4
/* 8134DDB4 | 80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8134DDB8 | 7C 67 1B 78 */	mr r7, r3
/* 8134DDBC | 80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DDC0 | 38 79 12 12 */	addi r3, r25, 0x1212
/* 8134DDC4 | 4C C6 31 82 */	crclr cr1eq
/* 8134DDC8 | 48 1E 08 D9 */	bl OSReport
/* 8134DDCC | 3A E0 FF FE */	li r23, -0x2
/* 8134DDD0 | 48 00 00 80 */	b .L_8134DE50
.L_8134DDD4:
/* 8134DDD4 | 80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8134DDD8 | 38 79 13 9A */	addi r3, r25, 0x139a
/* 8134DDDC | 80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DDE0 | 4C C6 31 82 */	crclr cr1eq
/* 8134DDE4 | 48 1E 08 BD */	bl OSReport
/* 8134DDE8 | 48 00 00 50 */	b .L_8134DE38
.L_8134DDEC:
/* 8134DDEC | 7F E3 FB 78 */	mr r3, r31
/* 8134DDF0 | 38 E0 00 01 */	li r7, 0x1
/* 8134DDF4 | 39 00 00 00 */	li r8, 0x0
/* 8134DDF8 | 39 20 00 00 */	li r9, 0x0
/* 8134DDFC | 48 00 55 E5 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134DE00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DE04 | 7C 77 1B 78 */	mr r23, r3
/* 8134DE08 | 41 82 00 30 */	beq .L_8134DE38
/* 8134DE0C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134DE10 | 41 82 00 28 */	beq .L_8134DE38
/* 8134DE14 | 80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8134DE18 | 38 79 13 CE */	addi r3, r25, 0x13ce
/* 8134DE1C | 80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DE20 | 4C C6 31 82 */	crclr cr1eq
/* 8134DE24 | 48 1E 08 7D */	bl OSReport
/* 8134DE28 | 48 00 00 28 */	b .L_8134DE50
.L_8134DE2C:
/* 8134DE2C | 38 79 14 03 */	addi r3, r25, 0x1403
/* 8134DE30 | 4C C6 31 82 */	crclr cr1eq
/* 8134DE34 | 48 1E 08 6D */	bl OSReport
.L_8134DE38:
/* 8134DE38 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8134DE3C | 3B DE 00 08 */	addi r30, r30, 0x8
.L_8134DE40:
/* 8134DE40 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134DE44 | 7C 15 00 40 */	cmplw r21, r0
/* 8134DE48 | 41 80 FE B4 */	blt .L_8134DCFC
/* 8134DE4C | 3A E0 00 00 */	li r23, 0x0
.L_8134DE50:
/* 8134DE50 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8134DE54 | 41 82 00 18 */	beq .L_8134DE6C
/* 8134DE58 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134DE5C | 7E C4 B3 78 */	mr r4, r22
/* 8134DE60 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DE64 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DE68 | 48 20 CB 9D */	bl fn_8155AA04
.L_8134DE6C:
/* 8134DE6C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8134DE70 | 7E E3 BB 78 */	mr r3, r23
/* 8134DE74 | 48 2A B6 81 */	bl _restgpr_21
/* 8134DE78 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8134DE7C | 7C 08 03 A6 */	mtlr r0
/* 8134DE80 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8134DE84 | 4E 80 00 20 */	blr
.endfn delete_nand_titles__Q23ipl12NandSDWorkerFv

# .text:0x5A9C | 0x8134DE88 | size: 0xD4
# ipl::NandSDWorker::do_get_nand_user_free_area()
.fn do_get_nand_user_free_area__Q23ipl12NandSDWorkerFv, global
/* 8134DE88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134DE8C | 7C 08 02 A6 */	mflr r0
/* 8134DE90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134DE94 | 38 00 00 00 */	li r0, 0x0
/* 8134DE98 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134DE9C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8134DEA0 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134DEA4 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134DEA8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8134DEAC | 7C 7E 1B 78 */	mr r30, r3
/* 8134DEB0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8134DEB4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8134DEB8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134DEBC | 48 01 26 D5 */	bl SecretGetUserUsage__Q33ipl4nand7wrapperFPUlPUl
/* 8134DEC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DEC4 | 41 82 00 28 */	beq .L_8134DEEC
/* 8134DEC8 | 7C 64 1B 78 */	mr r4, r3
/* 8134DECC | 38 7F 14 2E */	addi r3, r31, 0x142e
/* 8134DED0 | 4C C6 31 82 */	crclr cr1eq
/* 8134DED4 | 48 1E 07 CD */	bl OSReport
/* 8134DED8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134DEDC | 38 00 FF FE */	li r0, -0x2
/* 8134DEE0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134DEE4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134DEE8 | 48 00 00 5C */	b .L_8134DF44
.L_8134DEEC:
/* 8134DEEC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8134DEF0 | 38 7F 14 60 */	addi r3, r31, 0x1460
/* 8134DEF4 | 4C C6 31 82 */	crclr cr1eq
/* 8134DEF8 | 48 1E 07 A9 */	bl OSReport
/* 8134DEFC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8134DF00 | 38 7F 14 81 */	addi r3, r31, 0x1481
/* 8134DF04 | 4C C6 31 82 */	crclr cr1eq
/* 8134DF08 | 48 1E 07 99 */	bl OSReport
/* 8134DF0C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134DF10 | 3C 00 11 00 */	lis r0, 0x1100
/* 8134DF14 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134DF18 | 38 7F 14 A2 */	addi r3, r31, 0x14a2
/* 8134DF1C | 54 A6 70 22 */	slwi r6, r5, 14
/* 8134DF20 | 3C A0 11 00 */	lis r5, 0x1100
/* 8134DF24 | 7C 06 00 50 */	subf r0, r6, r0
/* 8134DF28 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134DF2C | 90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134DF30 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134DF34 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134DF38 | 80 84 EA 24 */	lwz r4, -0x15dc(r4)
/* 8134DF3C | 4C C6 31 82 */	crclr cr1eq
/* 8134DF40 | 48 1E 07 61 */	bl OSReport
.L_8134DF44:
/* 8134DF44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134DF48 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8134DF4C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8134DF50 | 7C 08 03 A6 */	mtlr r0
/* 8134DF54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134DF58 | 4E 80 00 20 */	blr
.endfn do_get_nand_user_free_area__Q23ipl12NandSDWorkerFv

# .text:0x5B70 | 0x8134DF5C | size: 0xF8
# ipl::NandSDWorker::get_nand_free_area(unsigned long*, unsigned long*, long*, long*)
.fn get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl, global
/* 8134DF5C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8134DF60 | 7C 08 02 A6 */	mflr r0
/* 8134DF64 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8134DF68 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8134DF6C | 48 2A B5 55 */	bl _savegpr_27
/* 8134DF70 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134DF74 | 7C 9B 23 78 */	mr r27, r4
/* 8134DF78 | 7C BC 2B 78 */	mr r28, r5
/* 8134DF7C | 7C DD 33 78 */	mr r29, r6
/* 8134DF80 | 7C FE 3B 78 */	mr r30, r7
/* 8134DF84 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134DF88 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134DF8C | 48 01 26 F5 */	bl SecretGetFileSystemStatus__Q33ipl4nand7wrapperFP20NANDFileSystemStatus
/* 8134DF90 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8134DF94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134DF98 | 48 01 25 F9 */	bl SecretGetUserUsage__Q33ipl4nand7wrapperFPUlPUl
/* 8134DF9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DFA0 | 41 82 00 1C */	beq .L_8134DFBC
/* 8134DFA4 | 7C 64 1B 78 */	mr r4, r3
/* 8134DFA8 | 38 7F 14 2E */	addi r3, r31, 0x142e
/* 8134DFAC | 4C C6 31 82 */	crclr cr1eq
/* 8134DFB0 | 48 1E 06 F1 */	bl OSReport
/* 8134DFB4 | 38 60 FF FE */	li r3, -0x2
/* 8134DFB8 | 48 00 00 84 */	b .L_8134E03C
.L_8134DFBC:
/* 8134DFBC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134DFC0 | 38 7F 14 C8 */	addi r3, r31, 0x14c8
/* 8134DFC4 | 20 00 44 00 */	subfic r0, r0, 0x4400
/* 8134DFC8 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8134DFCC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134DFD0 | 20 A0 0F A0 */	subfic r5, r0, 0xfa0
/* 8134DFD4 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 8134DFD8 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134DFDC | 4C C6 31 82 */	crclr cr1eq
/* 8134DFE0 | 48 1E 06 C1 */	bl OSReport
/* 8134DFE4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8134DFE8 | 7F 86 E3 78 */	mr r6, r28
/* 8134DFEC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134DFF0 | 7F 67 DB 78 */	mr r7, r27
/* 8134DFF4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134DFF8 | 48 01 26 05 */	bl SecretGetSystemAvailableArea__Q33ipl4nand7wrapperFPC20NANDFileSystemStatusUlUlPUlPUl
/* 8134DFFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E000 | 40 82 00 1C */	bne .L_8134E01C
/* 8134E004 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134E008 | 38 7F 14 FE */	addi r3, r31, 0x14fe
/* 8134E00C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134E010 | 4C C6 31 82 */	crclr cr1eq
/* 8134E014 | 48 1E 06 8D */	bl OSReport
/* 8134E018 | 48 00 00 20 */	b .L_8134E038
.L_8134E01C:
/* 8134E01C | 7C 64 1B 78 */	mr r4, r3
/* 8134E020 | 38 7F 15 36 */	addi r3, r31, 0x1536
/* 8134E024 | 4C C6 31 82 */	crclr cr1eq
/* 8134E028 | 48 1E 06 79 */	bl OSReport
/* 8134E02C | 38 00 00 00 */	li r0, 0x0
/* 8134E030 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 8134E034 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_8134E038:
/* 8134E038 | 38 60 00 00 */	li r3, 0x0
.L_8134E03C:
/* 8134E03C | 39 61 00 50 */	addi r11, r1, 0x50
/* 8134E040 | 48 2A B4 CD */	bl _restgpr_27
/* 8134E044 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8134E048 | 7C 08 03 A6 */	mtlr r0
/* 8134E04C | 38 21 00 50 */	addi r1, r1, 0x50
/* 8134E050 | 4E 80 00 20 */	blr
.endfn get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl

# .text:0x5C68 | 0x8134E054 | size: 0xFC
# ipl::NandSDWorker::check_nand_free_area(unsigned long, unsigned long, long, long)
.fn check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll, global
/* 8134E054 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134E058 | 7C 08 02 A6 */	mflr r0
/* 8134E05C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8134E060 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8134E064 | 48 2A B4 5D */	bl _savegpr_27
/* 8134E068 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134E06C | 7C 9B 23 78 */	mr r27, r4
/* 8134E070 | 7C BC 2B 78 */	mr r28, r5
/* 8134E074 | 7C DD 33 78 */	mr r29, r6
/* 8134E078 | 7C FE 3B 78 */	mr r30, r7
/* 8134E07C | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134E080 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8134E084 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8134E088 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8134E08C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8134E090 | 4B FF FE CD */	bl get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl
/* 8134E094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E098 | 41 82 00 0C */	beq .L_8134E0A4
/* 8134E09C | 38 60 FF FE */	li r3, -0x2
/* 8134E0A0 | 48 00 00 98 */	b .L_8134E138
.L_8134E0A4:
/* 8134E0A4 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8134E0A8 | 7C 05 D8 40 */	cmplw r5, r27
/* 8134E0AC | 40 80 00 1C */	bge .L_8134E0C8
/* 8134E0B0 | 7F 64 DB 78 */	mr r4, r27
/* 8134E0B4 | 38 7F 15 60 */	addi r3, r31, 0x1560
/* 8134E0B8 | 4C C6 31 82 */	crclr cr1eq
/* 8134E0BC | 48 1E 05 E5 */	bl OSReport
/* 8134E0C0 | 38 60 FF F9 */	li r3, -0x7
/* 8134E0C4 | 48 00 00 74 */	b .L_8134E138
.L_8134E0C8:
/* 8134E0C8 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8134E0CC | 7C 05 E0 40 */	cmplw r5, r28
/* 8134E0D0 | 40 80 00 1C */	bge .L_8134E0EC
/* 8134E0D4 | 7F 84 E3 78 */	mr r4, r28
/* 8134E0D8 | 38 7F 15 91 */	addi r3, r31, 0x1591
/* 8134E0DC | 4C C6 31 82 */	crclr cr1eq
/* 8134E0E0 | 48 1E 05 C1 */	bl OSReport
/* 8134E0E4 | 38 60 FF F9 */	li r3, -0x7
/* 8134E0E8 | 48 00 00 50 */	b .L_8134E138
.L_8134E0EC:
/* 8134E0EC | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134E0F0 | 7C 05 E8 00 */	cmpw r5, r29
/* 8134E0F4 | 40 80 00 1C */	bge .L_8134E110
/* 8134E0F8 | 7F A4 EB 78 */	mr r4, r29
/* 8134E0FC | 38 7F 15 C4 */	addi r3, r31, 0x15c4
/* 8134E100 | 4C C6 31 82 */	crclr cr1eq
/* 8134E104 | 48 1E 05 9D */	bl OSReport
/* 8134E108 | 38 60 FF F9 */	li r3, -0x7
/* 8134E10C | 48 00 00 2C */	b .L_8134E138
.L_8134E110:
/* 8134E110 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134E114 | 7C 05 F0 00 */	cmpw r5, r30
/* 8134E118 | 40 80 00 1C */	bge .L_8134E134
/* 8134E11C | 7F C4 F3 78 */	mr r4, r30
/* 8134E120 | 38 7F 15 F3 */	addi r3, r31, 0x15f3
/* 8134E124 | 4C C6 31 82 */	crclr cr1eq
/* 8134E128 | 48 1E 05 79 */	bl OSReport
/* 8134E12C | 38 60 FF F9 */	li r3, -0x7
/* 8134E130 | 48 00 00 08 */	b .L_8134E138
.L_8134E134:
/* 8134E134 | 38 60 00 00 */	li r3, 0x0
.L_8134E138:
/* 8134E138 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8134E13C | 48 2A B3 D1 */	bl _restgpr_27
/* 8134E140 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8134E144 | 7C 08 03 A6 */	mtlr r0
/* 8134E148 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8134E14C | 4E 80 00 20 */	blr
.endfn check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll

# .text:0x5D64 | 0x8134E150 | size: 0x87C
# ipl::NandSDWorker::do_copy_nand_save_to_sd()
.fn do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv, global
/* 8134E150 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8134E154 | 7C 08 02 A6 */	mflr r0
/* 8134E158 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 8134E15C | 39 61 01 40 */	addi r11, r1, 0x140
/* 8134E160 | 48 2A B3 49 */	bl _savegpr_21
/* 8134E164 | 3A C0 00 00 */	li r22, 0x0
/* 8134E168 | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134E16C | 92 C1 00 14 */	stw r22, 0x14(r1)
/* 8134E170 | 7C 77 1B 78 */	mr r23, r3
/* 8134E174 | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134E178 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 8134E17C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134E180 | 3B 80 00 00 */	li r28, 0x0
/* 8134E184 | 3B 60 00 00 */	li r27, 0x0
/* 8134E188 | 3B 40 00 00 */	li r26, 0x0
/* 8134E18C | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E190 | 3B 20 00 00 */	li r25, 0x0
/* 8134E194 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E198 | 3B 00 00 00 */	li r24, 0x0
/* 8134E19C | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E1A0 | 4B FF B2 09 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134E1A4 | 7E E3 BB 78 */	mr r3, r23
/* 8134E1A8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E1AC | 48 00 08 21 */	bl prepare_sd_copy__Q23ipl12NandSDWorkerFPCc
/* 8134E1B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E1B4 | 41 82 00 14 */	beq .L_8134E1C8
/* 8134E1B8 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E1BC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E1C0 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134E1C4 | 48 00 07 18 */	b .L_8134E8DC
.L_8134E1C8:
/* 8134E1C8 | 7E E3 BB 78 */	mr r3, r23
/* 8134E1CC | 48 00 19 D9 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134E1D0 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8134E1D4 | 6E C6 80 00 */	xoris r6, r22, 0x8000
/* 8134E1D8 | 7C B6 20 10 */	subfc r5, r22, r4
/* 8134E1DC | 7C 9E 23 78 */	mr r30, r4
/* 8134E1E0 | 7C C6 01 10 */	subfe r6, r6, r0
/* 8134E1E4 | 7C 7F 1B 78 */	mr r31, r3
/* 8134E1E8 | 7C C0 01 10 */	subfe r6, r0, r0
/* 8134E1EC | 7C C6 00 D1 */	neg. r6, r6
/* 8134E1F0 | 41 82 00 14 */	beq .L_8134E204
/* 8134E1F4 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E1F8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E1FC | 90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8134E200 | 48 00 06 DC */	b .L_8134E8DC
.L_8134E204:
/* 8134E204 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E208 | 3E C0 00 01 */	lis r22, 0x1
/* 8134E20C | 38 96 F0 C0 */	subi r4, r22, 0xf40
/* 8134E210 | 38 A0 00 20 */	li r5, 0x20
/* 8134E214 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E218 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134E21C | 48 20 C5 39 */	bl fn_8155A754
/* 8134E220 | 7C 7C 1B 78 */	mr r28, r3
/* 8134E224 | 38 B6 F0 C0 */	subi r5, r22, 0xf40
/* 8134E228 | 38 80 00 00 */	li r4, 0x0
/* 8134E22C | 4B FE 21 09 */	bl memset
/* 8134E230 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E234 | 7E E3 BB 78 */	mr r3, r23
/* 8134E238 | 38 FC 00 20 */	addi r7, r28, 0x20
/* 8134E23C | 39 01 00 14 */	addi r8, r1, 0x14
/* 8134E240 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E244 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E248 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E24C | 4B FF CE 01 */	bl get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 8134E250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E254 | 7C 76 1B 78 */	mr r22, r3
/* 8134E258 | 41 82 00 24 */	beq .L_8134E27C
/* 8134E25C | 7E C4 B3 78 */	mr r4, r22
/* 8134E260 | 38 7D 16 24 */	addi r3, r29, 0x1624
/* 8134E264 | 4C C6 31 82 */	crclr cr1eq
/* 8134E268 | 48 1E 04 39 */	bl OSReport
/* 8134E26C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E270 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E274 | 92 C3 EA 24 */	stw r22, -0x15dc(r3)
/* 8134E278 | 48 00 06 64 */	b .L_8134E8DC
.L_8134E27C:
/* 8134E27C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134E280 | 90 1C 00 08 */	stw r0, 0x8(r28)
/* 8134E284 | 80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8134E288 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8134E28C | 41 82 00 24 */	beq .L_8134E2B0
/* 8134E290 | 38 7D 16 4A */	addi r3, r29, 0x164a
/* 8134E294 | 4C C6 31 82 */	crclr cr1eq
/* 8134E298 | 48 1E 04 09 */	bl OSReport
/* 8134E29C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E2A0 | 38 00 FF F3 */	li r0, -0xd
/* 8134E2A4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E2A8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E2AC | 48 00 06 30 */	b .L_8134E8DC
.L_8134E2B0:
/* 8134E2B0 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E2B4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E2B8 | 80 03 EA 48 */	lwz r0, -0x15b8(r3)
/* 8134E2BC | 80 63 EA 4C */	lwz r3, -0x15b4(r3)
/* 8134E2C0 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 8134E2C4 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 8134E2C8 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E2CC | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E2D0 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E2D4 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E2D8 | 4B FF B0 25 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134E2DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E2E0 | 41 82 00 08 */	beq .L_8134E2E8
/* 8134E2E4 | 3B 00 00 01 */	li r24, 0x1
.L_8134E2E8:
/* 8134E2E8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E2EC | 40 82 01 80 */	bne .L_8134E46C
/* 8134E2F0 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E2F4 | 7E E3 BB 78 */	mr r3, r23
/* 8134E2F8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E2FC | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E300 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E304 | 48 00 58 A9 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134E308 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E30C | 40 82 00 18 */	bne .L_8134E324
/* 8134E310 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E314 | 38 00 FF FE */	li r0, -0x2
/* 8134E318 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E31C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E320 | 48 00 05 BC */	b .L_8134E8DC
.L_8134E324:
/* 8134E324 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E328 | 3A C0 FF FF */	li r22, -0x1
/* 8134E32C | 38 61 00 70 */	addi r3, r1, 0x70
/* 8134E330 | 38 BD 01 1C */	addi r5, r29, 0x11c
/* 8134E334 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 8134E338 | 38 80 00 40 */	li r4, 0x40
/* 8134E33C | 80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134E340 | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134E344 | 7C 07 B0 38 */	and r7, r0, r22
/* 8134E348 | 4C C6 31 82 */	crclr cr1eq
/* 8134E34C | 48 2B 26 5D */	bl snprintf
/* 8134E350 | 38 61 00 70 */	addi r3, r1, 0x70
/* 8134E354 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134E358 | 38 A0 00 40 */	li r5, 0x40
/* 8134E35C | 48 2B 40 D9 */	bl strncat
/* 8134E360 | 80 8D 81 58 */	lwz r4, c_banner_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 8134E364 | 38 61 00 70 */	addi r3, r1, 0x70
/* 8134E368 | 38 A0 00 40 */	li r5, 0x40
/* 8134E36C | 48 2B 40 C9 */	bl strncat
/* 8134E370 | 38 61 00 70 */	addi r3, r1, 0x70
/* 8134E374 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8134E378 | 48 01 1D 95 */	bl GetStatus__Q33ipl4nand7wrapperFPCcP10NANDStatus
/* 8134E37C | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E380 | 7C 75 1B 78 */	mr r21, r3
/* 8134E384 | 7E E3 BB 78 */	mr r3, r23
/* 8134E388 | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134E38C | 7E A4 AB 78 */	mr r4, r21
/* 8134E390 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E394 | 48 00 58 C5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134E398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E39C | 40 82 05 40 */	bne .L_8134E8DC
/* 8134E3A0 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8134E3A4 | 41 82 00 2C */	beq .L_8134E3D0
/* 8134E3A8 | 7E A5 AB 78 */	mr r5, r21
/* 8134E3AC | 38 7D 16 79 */	addi r3, r29, 0x1679
/* 8134E3B0 | 38 81 00 70 */	addi r4, r1, 0x70
/* 8134E3B4 | 4C C6 31 82 */	crclr cr1eq
/* 8134E3B8 | 48 1E 02 E9 */	bl OSReport
/* 8134E3BC | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E3C0 | 38 00 FF FE */	li r0, -0x2
/* 8134E3C4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E3C8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E3CC | 48 00 05 10 */	b .L_8134E8DC
.L_8134E3D0:
/* 8134E3D0 | 88 01 00 1F */	lbz r0, 0x1f(r1)
/* 8134E3D4 | 7E E3 BB 78 */	mr r3, r23
/* 8134E3D8 | 38 81 00 70 */	addi r4, r1, 0x70
/* 8134E3DC | 98 1C 00 0C */	stb r0, 0xc(r28)
/* 8134E3E0 | 88 01 00 1E */	lbz r0, 0x1e(r1)
/* 8134E3E4 | 98 1C 00 0D */	stb r0, 0xd(r28)
/* 8134E3E8 | 48 00 56 B5 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134E3EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E3F0 | 40 80 00 14 */	bge .L_8134E404
/* 8134E3F4 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E3F8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E3FC | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134E400 | 48 00 04 DC */	b .L_8134E8DC
.L_8134E404:
/* 8134E404 | 90 7C 00 08 */	stw r3, 0x8(r28)
/* 8134E408 | 38 61 00 70 */	addi r3, r1, 0x70
/* 8134E40C | 38 BD 01 1C */	addi r5, r29, 0x11c
/* 8134E410 | 38 80 00 40 */	li r4, 0x40
/* 8134E414 | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8134E418 | 3C C6 00 04 */	addis r6, r6, 0x4
/* 8134E41C | 80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134E420 | 80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134E424 | 7C 07 B0 38 */	and r7, r0, r22
/* 8134E428 | 4C C6 31 82 */	crclr cr1eq
/* 8134E42C | 48 2B 25 7D */	bl snprintf
/* 8134E430 | 38 61 00 70 */	addi r3, r1, 0x70
/* 8134E434 | 48 01 1C 11 */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134E438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E43C | 41 82 00 2C */	beq .L_8134E468
/* 8134E440 | 7C 65 1B 78 */	mr r5, r3
/* 8134E444 | 38 7D 16 A4 */	addi r3, r29, 0x16a4
/* 8134E448 | 38 81 00 70 */	addi r4, r1, 0x70
/* 8134E44C | 4C C6 31 82 */	crclr cr1eq
/* 8134E450 | 48 1E 02 51 */	bl OSReport
/* 8134E454 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E458 | 38 00 FF FE */	li r0, -0x2
/* 8134E45C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E460 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E464 | 48 00 04 78 */	b .L_8134E8DC
.L_8134E468:
/* 8134E468 | 3B 40 00 01 */	li r26, 0x1
.L_8134E46C:
/* 8134E46C | 38 00 00 00 */	li r0, 0x0
/* 8134E470 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E474 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8134E478 | 41 82 00 40 */	beq .L_8134E4B8
/* 8134E47C | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E480 | 3C 60 00 01 */	lis r3, 0x1
/* 8134E484 | 39 43 F0 C0 */	subi r10, r3, 0xf40
/* 8134E488 | 39 01 00 10 */	addi r8, r1, 0x10
/* 8134E48C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134E490 | 3C 85 00 04 */	addis r4, r5, 0x4
/* 8134E494 | 3C C5 00 02 */	addis r6, r5, 0x2
/* 8134E498 | 38 A0 00 01 */	li r5, 0x1
/* 8134E49C | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E4A0 | 38 E0 00 00 */	li r7, 0x0
/* 8134E4A4 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E4A8 | 39 20 00 03 */	li r9, 0x3
/* 8134E4AC | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E4B0 | 48 27 2E CD */	bl fn_815C137C
/* 8134E4B4 | 48 00 00 3C */	b .L_8134E4F0
.L_8134E4B8:
/* 8134E4B8 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E4BC | 3C 60 00 01 */	lis r3, 0x1
/* 8134E4C0 | 39 43 F0 C0 */	subi r10, r3, 0xf40
/* 8134E4C4 | 39 01 00 10 */	addi r8, r1, 0x10
/* 8134E4C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134E4CC | 3C 85 00 04 */	addis r4, r5, 0x4
/* 8134E4D0 | 3C C5 00 02 */	addis r6, r5, 0x2
/* 8134E4D4 | 38 A0 00 0E */	li r5, 0xe
/* 8134E4D8 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E4DC | 38 E0 00 00 */	li r7, 0x0
/* 8134E4E0 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E4E4 | 39 20 00 03 */	li r9, 0x3
/* 8134E4E8 | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E4EC | 48 27 2E 91 */	bl fn_815C137C
.L_8134E4F0:
/* 8134E4F0 | 2C 03 F4 46 */	cmpwi r3, -0xbba
/* 8134E4F4 | 40 82 00 38 */	bne .L_8134E52C
/* 8134E4F8 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E4FC | 7C 67 1B 78 */	mr r7, r3
/* 8134E500 | 38 7D 16 D0 */	addi r3, r29, 0x16d0
/* 8134E504 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E508 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E50C | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E510 | 4C C6 31 82 */	crclr cr1eq
/* 8134E514 | 48 1E 01 8D */	bl OSReport
/* 8134E518 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E51C | 38 00 FF F3 */	li r0, -0xd
/* 8134E520 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E524 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E528 | 48 00 03 B4 */	b .L_8134E8DC
.L_8134E52C:
/* 8134E52C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E530 | 41 82 00 2C */	beq .L_8134E55C
/* 8134E534 | 7C 65 1B 78 */	mr r5, r3
/* 8134E538 | 38 7D 17 1F */	addi r3, r29, 0x171f
/* 8134E53C | 38 81 00 70 */	addi r4, r1, 0x70
/* 8134E540 | 4C C6 31 82 */	crclr cr1eq
/* 8134E544 | 48 1E 01 5D */	bl OSReport
/* 8134E548 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E54C | 38 00 FF FE */	li r0, -0x2
/* 8134E550 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E554 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E558 | 48 00 03 84 */	b .L_8134E8DC
.L_8134E55C:
/* 8134E55C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8134E560 | 3A C0 00 00 */	li r22, 0x0
/* 8134E564 | 6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8134E568 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 8134E56C | 6E C5 80 00 */	xoris r5, r22, 0x8000
/* 8134E570 | 38 63 F0 C0 */	subi r3, r3, 0xf40
/* 8134E574 | 7C 63 F0 10 */	subfc r3, r3, r30
/* 8134E578 | 7C A5 01 10 */	subfe r5, r5, r0
/* 8134E57C | 7C A0 01 10 */	subfe r5, r0, r0
/* 8134E580 | 7C A5 00 D1 */	neg. r5, r5
/* 8134E584 | 41 82 00 24 */	beq .L_8134E5A8
/* 8134E588 | 38 7D 17 47 */	addi r3, r29, 0x1747
/* 8134E58C | 4C C6 31 82 */	crclr cr1eq
/* 8134E590 | 48 1E 01 11 */	bl OSReport
/* 8134E594 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E598 | 38 00 FF F9 */	li r0, -0x7
/* 8134E59C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E5A0 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E5A4 | 48 00 03 38 */	b .L_8134E8DC
.L_8134E5A8:
/* 8134E5A8 | 3C 80 81 61 */	lis r4, c_md5_secret_key__Q23ipl12NandSDWorker@ha
/* 8134E5AC | 38 7C 00 0E */	addi r3, r28, 0xe
/* 8134E5B0 | 38 84 D6 48 */	addi r4, r4, c_md5_secret_key__Q23ipl12NandSDWorker@l
/* 8134E5B4 | 38 A0 00 10 */	li r5, 0x10
/* 8134E5B8 | 4B FE 1C 79 */	bl memcpy
/* 8134E5BC | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 8134E5C0 | 48 14 52 35 */	bl NETMD5Init
/* 8134E5C4 | 3F C0 00 01 */	lis r30, 0x1
/* 8134E5C8 | 7F 84 E3 78 */	mr r4, r28
/* 8134E5CC | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 8134E5D0 | 38 BE F0 C0 */	subi r5, r30, 0xf40
/* 8134E5D4 | 48 14 52 61 */	bl NETMD5Update
/* 8134E5D8 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 8134E5DC | 38 81 00 20 */	addi r4, r1, 0x20
/* 8134E5E0 | 48 14 53 45 */	bl NETMD5GetDigest
/* 8134E5E4 | 38 7C 00 0E */	addi r3, r28, 0xe
/* 8134E5E8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8134E5EC | 38 A0 00 10 */	li r5, 0x10
/* 8134E5F0 | 4B FE 1C 41 */	bl memcpy
/* 8134E5F4 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E5F8 | 38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134E5FC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E600 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134E604 | 48 20 D0 65 */	bl fn_8155B668
/* 8134E608 | 7C 7B 1B 78 */	mr r27, r3
/* 8134E60C | 7F 83 E3 78 */	mr r3, r28
/* 8134E610 | 38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134E614 | 7F 65 DB 78 */	mr r5, r27
/* 8134E618 | 48 00 59 C1 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134E61C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E620 | 41 82 00 18 */	beq .L_8134E638
/* 8134E624 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E628 | 38 00 FF FE */	li r0, -0x2
/* 8134E62C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E630 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E634 | 48 00 02 A8 */	b .L_8134E8DC
.L_8134E638:
/* 8134E638 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E63C | 3B 20 00 01 */	li r25, 0x1
/* 8134E640 | 41 82 00 3C */	beq .L_8134E67C
/* 8134E644 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E648 | 38 E1 00 30 */	addi r7, r1, 0x30
/* 8134E64C | 39 01 00 10 */	addi r8, r1, 0x10
/* 8134E650 | 39 5E F0 C0 */	subi r10, r30, 0xf40
/* 8134E654 | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 8134E658 | 3C C3 00 02 */	addis r6, r3, 0x2
/* 8134E65C | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E660 | 38 A0 00 01 */	li r5, 0x1
/* 8134E664 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E668 | 39 20 00 03 */	li r9, 0x3
/* 8134E66C | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E670 | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E674 | 48 27 2D 09 */	bl fn_815C137C
/* 8134E678 | 48 00 00 38 */	b .L_8134E6B0
.L_8134E67C:
/* 8134E67C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E680 | 38 E1 00 30 */	addi r7, r1, 0x30
/* 8134E684 | 39 01 00 10 */	addi r8, r1, 0x10
/* 8134E688 | 39 5E F0 C0 */	subi r10, r30, 0xf40
/* 8134E68C | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 8134E690 | 3C C3 00 02 */	addis r6, r3, 0x2
/* 8134E694 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E698 | 38 A0 00 0E */	li r5, 0xe
/* 8134E69C | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E6A0 | 39 20 00 03 */	li r9, 0x3
/* 8134E6A4 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E6A8 | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E6AC | 48 27 2C D1 */	bl fn_815C137C
.L_8134E6B0:
/* 8134E6B0 | 2C 03 F4 46 */	cmpwi r3, -0xbba
/* 8134E6B4 | 40 82 00 38 */	bne .L_8134E6EC
/* 8134E6B8 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E6BC | 7C 67 1B 78 */	mr r7, r3
/* 8134E6C0 | 38 7D 16 D0 */	addi r3, r29, 0x16d0
/* 8134E6C4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E6C8 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E6CC | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E6D0 | 4C C6 31 82 */	crclr cr1eq
/* 8134E6D4 | 48 1D FF CD */	bl OSReport
/* 8134E6D8 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E6DC | 38 00 FF F3 */	li r0, -0xd
/* 8134E6E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E6E4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E6E8 | 48 00 01 F4 */	b .L_8134E8DC
.L_8134E6EC:
/* 8134E6EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E6F0 | 41 82 00 2C */	beq .L_8134E71C
/* 8134E6F4 | 7C 65 1B 78 */	mr r5, r3
/* 8134E6F8 | 38 7D 17 1F */	addi r3, r29, 0x171f
/* 8134E6FC | 38 81 00 70 */	addi r4, r1, 0x70
/* 8134E700 | 4C C6 31 82 */	crclr cr1eq
/* 8134E704 | 48 1D FF 9D */	bl OSReport
/* 8134E708 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E70C | 38 00 FF FE */	li r0, -0x2
/* 8134E710 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E714 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E718 | 48 00 01 C4 */	b .L_8134E8DC
.L_8134E71C:
/* 8134E71C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8134E720 | 38 7D 17 81 */	addi r3, r29, 0x1781
/* 8134E724 | 4C C6 31 82 */	crclr cr1eq
/* 8134E728 | 48 1D FF 79 */	bl OSReport
/* 8134E72C | 38 61 00 30 */	addi r3, r1, 0x30
/* 8134E730 | 38 8D 81 AA */	li r4, lbl_816961EA@sda21
/* 8134E734 | 48 29 99 0D */	bl fn_815E8040
/* 8134E738 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E73C | 7C 75 1B 78 */	mr r21, r3
/* 8134E740 | 40 82 00 30 */	bne .L_8134E770
/* 8134E744 | 38 7D 17 AE */	addi r3, r29, 0x17ae
/* 8134E748 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E74C | 4C C6 31 82 */	crclr cr1eq
/* 8134E750 | 48 1D FF 51 */	bl OSReport
/* 8134E754 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E758 | 7E E3 BB 78 */	mr r3, r23
/* 8134E75C | 38 80 FF FF */	li r4, -0x1
/* 8134E760 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E764 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E768 | 48 00 55 4D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E76C | 48 00 01 70 */	b .L_8134E8DC
.L_8134E770:
/* 8134E770 | 38 7D 17 D0 */	addi r3, r29, 0x17d0
/* 8134E774 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E778 | 4C C6 31 82 */	crclr cr1eq
/* 8134E77C | 48 1D FF 25 */	bl OSReport
/* 8134E780 | 7E A3 AB 78 */	mr r3, r21
/* 8134E784 | 38 80 00 00 */	li r4, 0x0
/* 8134E788 | 38 A0 00 00 */	li r5, 0x0
/* 8134E78C | 48 29 99 15 */	bl fn_815E80A0
/* 8134E790 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E794 | 7C 64 1B 78 */	mr r4, r3
/* 8134E798 | 7E E3 BB 78 */	mr r3, r23
/* 8134E79C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E7A0 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E7A4 | 48 00 55 11 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E7A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E7AC | 41 82 00 20 */	beq .L_8134E7CC
/* 8134E7B0 | 38 7D 17 F0 */	addi r3, r29, 0x17f0
/* 8134E7B4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E7B8 | 4C C6 31 82 */	crclr cr1eq
/* 8134E7BC | 48 1D FE E5 */	bl OSReport
/* 8134E7C0 | 7E A3 AB 78 */	mr r3, r21
/* 8134E7C4 | 48 29 98 25 */	bl fn_815E7FE8
/* 8134E7C8 | 48 00 01 14 */	b .L_8134E8DC
.L_8134E7CC:
/* 8134E7CC | 3C 80 00 01 */	lis r4, 0x1
/* 8134E7D0 | 7F 63 DB 78 */	mr r3, r27
/* 8134E7D4 | 7E A6 AB 78 */	mr r6, r21
/* 8134E7D8 | 38 A0 00 01 */	li r5, 0x1
/* 8134E7DC | 38 84 F0 C0 */	subi r4, r4, 0xf40
/* 8134E7E0 | 48 29 99 71 */	bl fn_815E8150
/* 8134E7E4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134E7E8 | 41 82 00 3C */	beq .L_8134E824
/* 8134E7EC | 7C 65 1B 78 */	mr r5, r3
/* 8134E7F0 | 38 7D 18 12 */	addi r3, r29, 0x1812
/* 8134E7F4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E7F8 | 4C C6 31 82 */	crclr cr1eq
/* 8134E7FC | 48 1D FE A5 */	bl OSReport
/* 8134E800 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E804 | 7E E3 BB 78 */	mr r3, r23
/* 8134E808 | 38 80 FF FF */	li r4, -0x1
/* 8134E80C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E810 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E814 | 48 00 54 A1 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E818 | 7E A3 AB 78 */	mr r3, r21
/* 8134E81C | 48 29 97 CD */	bl fn_815E7FE8
/* 8134E820 | 48 00 00 BC */	b .L_8134E8DC
.L_8134E824:
/* 8134E824 | 7E A3 AB 78 */	mr r3, r21
/* 8134E828 | 48 29 97 C1 */	bl fn_815E7FE8
/* 8134E82C | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E830 | 7C 64 1B 78 */	mr r4, r3
/* 8134E834 | 7E E3 BB 78 */	mr r3, r23
/* 8134E838 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E83C | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E840 | 48 00 54 75 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E848 | 41 82 00 18 */	beq .L_8134E860
/* 8134E84C | 38 7D 18 39 */	addi r3, r29, 0x1839
/* 8134E850 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E854 | 4C C6 31 82 */	crclr cr1eq
/* 8134E858 | 48 1D FE 49 */	bl OSReport
/* 8134E85C | 48 00 00 80 */	b .L_8134E8DC
.L_8134E860:
/* 8134E860 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E864 | 7E E3 BB 78 */	mr r3, r23
/* 8134E868 | 80 ED 81 64 */	lwz r7, c_nocopy_folder_name__Q23ipl12NandSDWorker@sda21(r0)
/* 8134E86C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E870 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E874 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E878 | 48 00 56 55 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 8134E87C | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E880 | 7C 7E 1B 78 */	mr r30, r3
/* 8134E884 | 80 ED 81 68 */	lwz r7, c_notransfer_folder_name__Q23ipl12NandSDWorker@sda21(r0)
/* 8134E888 | 7E E3 BB 78 */	mr r3, r23
/* 8134E88C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E890 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E894 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E898 | 48 00 56 35 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 8134E89C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E8A0 | 38 00 00 00 */	li r0, 0x0
/* 8134E8A4 | 41 82 00 08 */	beq .L_8134E8AC
/* 8134E8A8 | 38 00 00 01 */	li r0, 0x1
.L_8134E8AC:
/* 8134E8AC | 54 00 10 3A */	slwi r0, r0, 2
/* 8134E8B0 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E8B4 | 7C 05 F3 78 */	or r5, r0, r30
/* 8134E8B8 | 54 60 08 3C */	slwi r0, r3, 1
/* 8134E8BC | 3C 64 00 04 */	addis r3, r4, 0x4
/* 8134E8C0 | 7C A0 03 78 */	or r0, r5, r0
/* 8134E8C4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E8C8 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E8CC | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E8D0 | 80 64 EA 30 */	lwz r3, -0x15d0(r4)
/* 8134E8D4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8134E8D8 | 90 04 EA 30 */	stw r0, -0x15d0(r4)
.L_8134E8DC:
/* 8134E8DC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8134E8E0 | 41 82 00 18 */	beq .L_8134E8F8
/* 8134E8E4 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E8E8 | 7F 84 E3 78 */	mr r4, r28
/* 8134E8EC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E8F0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134E8F4 | 48 20 C1 11 */	bl fn_8155AA04
.L_8134E8F8:
/* 8134E8F8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134E8FC | 41 82 00 18 */	beq .L_8134E914
/* 8134E900 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E904 | 7F 64 DB 78 */	mr r4, r27
/* 8134E908 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E90C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134E910 | 48 20 CD 69 */	bl fn_8155B678
.L_8134E914:
/* 8134E914 | 7E E3 BB 78 */	mr r3, r23
/* 8134E918 | 38 C0 00 02 */	li r6, 0x2
/* 8134E91C | 38 A0 00 01 */	li r5, 0x1
/* 8134E920 | 48 00 52 8D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134E924 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8134E928 | 41 82 00 28 */	beq .L_8134E950
/* 8134E92C | 80 6D 81 A4 */	lwz r3, c_wii_menu_save_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134E930 | 48 01 17 15 */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134E934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E938 | 41 82 00 18 */	beq .L_8134E950
/* 8134E93C | 80 8D 81 A4 */	lwz r4, c_wii_menu_save_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134E940 | 7C 65 1B 78 */	mr r5, r3
/* 8134E944 | 38 7D 16 A4 */	addi r3, r29, 0x16a4
/* 8134E948 | 4C C6 31 82 */	crclr cr1eq
/* 8134E94C | 48 1D FD 55 */	bl OSReport
.L_8134E950:
/* 8134E950 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E954 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E958 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134E95C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134E960 | 40 80 00 54 */	bge .L_8134E9B4
/* 8134E964 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8134E968 | 41 82 00 4C */	beq .L_8134E9B4
/* 8134E96C | 38 61 00 30 */	addi r3, r1, 0x30
/* 8134E970 | 48 29 9A 41 */	bl fn_815E83B0
/* 8134E974 | 7C 64 1B 78 */	mr r4, r3
/* 8134E978 | 7E E3 BB 78 */	mr r3, r23
/* 8134E97C | 38 A0 00 00 */	li r5, 0x0
/* 8134E980 | 48 00 54 81 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134E984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E988 | 40 82 00 18 */	bne .L_8134E9A0
/* 8134E98C | 38 7D 18 5C */	addi r3, r29, 0x185c
/* 8134E990 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E994 | 4C C6 31 82 */	crclr cr1eq
/* 8134E998 | 48 1D FD 09 */	bl OSReport
/* 8134E99C | 48 00 00 18 */	b .L_8134E9B4
.L_8134E9A0:
/* 8134E9A0 | 7C 65 1B 78 */	mr r5, r3
/* 8134E9A4 | 38 7D 18 99 */	addi r3, r29, 0x1899
/* 8134E9A8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8134E9AC | 4C C6 31 82 */	crclr cr1eq
/* 8134E9B0 | 48 1D FC F1 */	bl OSReport
.L_8134E9B4:
/* 8134E9B4 | 39 61 01 40 */	addi r11, r1, 0x140
/* 8134E9B8 | 48 2A AB 3D */	bl _restgpr_21
/* 8134E9BC | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 8134E9C0 | 7C 08 03 A6 */	mtlr r0
/* 8134E9C4 | 38 21 01 40 */	addi r1, r1, 0x140
/* 8134E9C8 | 4E 80 00 20 */	blr
.endfn do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv

# .text:0x65E0 | 0x8134E9CC | size: 0x154
# ipl::NandSDWorker::prepare_sd_copy(const char*)
.fn prepare_sd_copy__Q23ipl12NandSDWorkerFPCc, global
/* 8134E9CC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8134E9D0 | 7C 08 02 A6 */	mflr r0
/* 8134E9D4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8134E9D8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8134E9DC | 48 2A AA E5 */	bl _savegpr_27
/* 8134E9E0 | 7C 9C 23 78 */	mr r28, r4
/* 8134E9E4 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134E9E8 | 7C 7B 1B 78 */	mr r27, r3
/* 8134E9EC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134E9F0 | 7F 83 E3 78 */	mr r3, r28
/* 8134E9F4 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134E9F8 | 48 29 97 2D */	bl fn_815E8124
/* 8134E9FC | 7C 7D 1B 78 */	mr r29, r3
/* 8134EA00 | 7F 63 DB 78 */	mr r3, r27
/* 8134EA04 | 7F A4 EB 78 */	mr r4, r29
/* 8134EA08 | 38 A0 00 00 */	li r5, 0x0
/* 8134EA0C | 48 00 53 F5 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134EA10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EA14 | 7C 7E 1B 78 */	mr r30, r3
/* 8134EA18 | 40 82 00 8C */	bne .L_8134EAA4
/* 8134EA1C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134EA20 | 28 00 F0 C0 */	cmplwi r0, 0xf0c0
/* 8134EA24 | 40 81 00 30 */	ble .L_8134EA54
/* 8134EA28 | 88 81 00 18 */	lbz r4, 0x18(r1)
/* 8134EA2C | 7F 63 DB 78 */	mr r3, r27
/* 8134EA30 | 48 00 56 D9 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134EA34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EA38 | 41 82 00 1C */	beq .L_8134EA54
/* 8134EA3C | 7F 84 E3 78 */	mr r4, r28
/* 8134EA40 | 38 7F 18 C0 */	addi r3, r31, 0x18c0
/* 8134EA44 | 4C C6 31 82 */	crclr cr1eq
/* 8134EA48 | 48 1D FC 59 */	bl OSReport
/* 8134EA4C | 38 60 FF FA */	li r3, -0x6
/* 8134EA50 | 48 00 00 B8 */	b .L_8134EB08
.L_8134EA54:
/* 8134EA54 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134EA58 | 40 82 00 AC */	bne .L_8134EB04
/* 8134EA5C | 7F 83 E3 78 */	mr r3, r28
/* 8134EA60 | 48 29 99 51 */	bl fn_815E83B0
/* 8134EA64 | 7C 64 1B 78 */	mr r4, r3
/* 8134EA68 | 7F 63 DB 78 */	mr r3, r27
/* 8134EA6C | 38 A0 00 00 */	li r5, 0x0
/* 8134EA70 | 48 00 53 91 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134EA74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EA78 | 7C 7E 1B 78 */	mr r30, r3
/* 8134EA7C | 41 82 00 88 */	beq .L_8134EB04
/* 8134EA80 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134EA84 | 41 82 00 80 */	beq .L_8134EB04
/* 8134EA88 | 7F 84 E3 78 */	mr r4, r28
/* 8134EA8C | 7F C5 F3 78 */	mr r5, r30
/* 8134EA90 | 38 7F 18 99 */	addi r3, r31, 0x1899
/* 8134EA94 | 4C C6 31 82 */	crclr cr1eq
/* 8134EA98 | 48 1D FC 09 */	bl OSReport
/* 8134EA9C | 7F C3 F3 78 */	mr r3, r30
/* 8134EAA0 | 48 00 00 68 */	b .L_8134EB08
.L_8134EAA4:
/* 8134EAA4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134EAA8 | 40 82 00 40 */	bne .L_8134EAE8
/* 8134EAAC | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134EAB0 | 7F 63 DB 78 */	mr r3, r27
/* 8134EAB4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134EAB8 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134EABC | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134EAC0 | 48 00 00 61 */	bl create_sd_backup_dir__Q23ipl12NandSDWorkerFUx
/* 8134EAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EAC8 | 7C 7E 1B 78 */	mr r30, r3
/* 8134EACC | 41 82 00 38 */	beq .L_8134EB04
/* 8134EAD0 | 7F C4 F3 78 */	mr r4, r30
/* 8134EAD4 | 38 7F 18 EC */	addi r3, r31, 0x18ec
/* 8134EAD8 | 4C C6 31 82 */	crclr cr1eq
/* 8134EADC | 48 1D FB C5 */	bl OSReport
/* 8134EAE0 | 7F C3 F3 78 */	mr r3, r30
/* 8134EAE4 | 48 00 00 24 */	b .L_8134EB08
.L_8134EAE8:
/* 8134EAE8 | 7F 84 E3 78 */	mr r4, r28
/* 8134EAEC | 7F C5 F3 78 */	mr r5, r30
/* 8134EAF0 | 38 7F 19 1C */	addi r3, r31, 0x191c
/* 8134EAF4 | 4C C6 31 82 */	crclr cr1eq
/* 8134EAF8 | 48 1D FB A9 */	bl OSReport
/* 8134EAFC | 7F C3 F3 78 */	mr r3, r30
/* 8134EB00 | 48 00 00 08 */	b .L_8134EB08
.L_8134EB04:
/* 8134EB04 | 38 60 00 00 */	li r3, 0x0
.L_8134EB08:
/* 8134EB08 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8134EB0C | 48 2A AA 01 */	bl _restgpr_27
/* 8134EB10 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8134EB14 | 7C 08 03 A6 */	mtlr r0
/* 8134EB18 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8134EB1C | 4E 80 00 20 */	blr
.endfn prepare_sd_copy__Q23ipl12NandSDWorkerFPCc

# .text:0x6734 | 0x8134EB20 | size: 0x178
# ipl::NandSDWorker::create_sd_backup_dir(unsigned long long)
.fn create_sd_backup_dir__Q23ipl12NandSDWorkerFUx, global
/* 8134EB20 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134EB24 | 7C 08 02 A6 */	mflr r0
/* 8134EB28 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8134EB2C | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134EB30 | 48 2A A9 89 */	bl _savegpr_25
/* 8134EB34 | 3D 40 81 61 */	lis r10, lbl_8160D658@ha
/* 8134EB38 | 85 2A D6 58 */	lwzu r9, lbl_8160D658@l(r10)
/* 8134EB3C | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134EB40 | 39 60 FF FF */	li r11, -0x1
/* 8134EB44 | 81 0A 00 04 */	lwz r8, 0x4(r10)
/* 8134EB48 | 7C 7F 1B 78 */	mr r31, r3
/* 8134EB4C | 80 EA 00 08 */	lwz r7, 0x8(r10)
/* 8134EB50 | 7C C4 33 78 */	mr r4, r6
/* 8134EB54 | 80 0A 00 0C */	lwz r0, 0xc(r10)
/* 8134EB58 | 7C A3 2B 78 */	mr r3, r5
/* 8134EB5C | 91 21 00 08 */	stw r9, 0x8(r1)
/* 8134EB60 | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134EB64 | 7C DD 58 38 */	and r29, r6, r11
/* 8134EB68 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 8134EB6C | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 8134EB70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134EB74 | 4B FF A7 89 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134EB78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EB7C | 41 82 00 20 */	beq .L_8134EB9C
/* 8134EB80 | 7F A6 EB 78 */	mr r6, r29
/* 8134EB84 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8134EB88 | 38 BC 19 6B */	addi r5, r28, 0x196b
/* 8134EB8C | 38 80 00 40 */	li r4, 0x40
/* 8134EB90 | 4C C6 31 82 */	crclr cr1eq
/* 8134EB94 | 48 2B 1E 15 */	bl snprintf
/* 8134EB98 | 48 00 00 28 */	b .L_8134EBC0
.L_8134EB9C:
/* 8134EB9C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8134EBA0 | 38 BC 19 83 */	addi r5, r28, 0x1983
/* 8134EBA4 | 57 A6 46 3E */	srwi r6, r29, 24
/* 8134EBA8 | 57 A7 86 3E */	extrwi r7, r29, 8, 8
/* 8134EBAC | 57 A8 C6 3E */	extrwi r8, r29, 8, 16
/* 8134EBB0 | 57 A9 06 3E */	clrlwi r9, r29, 24
/* 8134EBB4 | 38 80 00 40 */	li r4, 0x40
/* 8134EBB8 | 4C C6 31 82 */	crclr cr1eq
/* 8134EBBC | 48 2B 1D ED */	bl snprintf
.L_8134EBC0:
/* 8134EBC0 | 38 01 00 2C */	addi r0, r1, 0x2c
/* 8134EBC4 | 3B A1 00 08 */	addi r29, r1, 0x8
/* 8134EBC8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134EBCC | 3B 40 00 00 */	li r26, 0x0
/* 8134EBD0 | 3B C0 00 00 */	li r30, 0x0
.L_8134EBD4:
/* 8134EBD4 | 7F 7D F0 2E */	lwzx r27, r29, r30
/* 8134EBD8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8134EBDC | 7F 63 DB 78 */	mr r3, r27
/* 8134EBE0 | 48 29 95 45 */	bl fn_815E8124
/* 8134EBE4 | 7C 64 1B 78 */	mr r4, r3
/* 8134EBE8 | 7F E3 FB 78 */	mr r3, r31
/* 8134EBEC | 38 A0 00 00 */	li r5, 0x0
/* 8134EBF0 | 48 00 52 11 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134EBF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EBF8 | 7C 79 1B 78 */	mr r25, r3
/* 8134EBFC | 40 82 00 28 */	bne .L_8134EC24
/* 8134EC00 | 88 A1 00 28 */	lbz r5, 0x28(r1)
/* 8134EC04 | 54 A0 06 F7 */	rlwinm. r0, r5, 0, 27, 27
/* 8134EC08 | 40 82 00 50 */	bne .L_8134EC58
/* 8134EC0C | 7F 64 DB 78 */	mr r4, r27
/* 8134EC10 | 38 7C 19 9F */	addi r3, r28, 0x199f
/* 8134EC14 | 4C C6 31 82 */	crclr cr1eq
/* 8134EC18 | 48 1D FA 89 */	bl OSReport
/* 8134EC1C | 38 60 FF F4 */	li r3, -0xc
/* 8134EC20 | 48 00 00 60 */	b .L_8134EC80
.L_8134EC24:
/* 8134EC24 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134EC28 | 41 82 00 20 */	beq .L_8134EC48
/* 8134EC2C | 7F 64 DB 78 */	mr r4, r27
/* 8134EC30 | 7F 25 CB 78 */	mr r5, r25
/* 8134EC34 | 38 7C 19 1C */	addi r3, r28, 0x191c
/* 8134EC38 | 4C C6 31 82 */	crclr cr1eq
/* 8134EC3C | 48 1D FA 65 */	bl OSReport
/* 8134EC40 | 7F 23 CB 78 */	mr r3, r25
/* 8134EC44 | 48 00 00 3C */	b .L_8134EC80
.L_8134EC48:
/* 8134EC48 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134EC4C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8134EC50 | 28 1A 00 04 */	cmplwi r26, 0x4
/* 8134EC54 | 41 80 FF 80 */	blt .L_8134EBD4
.L_8134EC58:
/* 8134EC58 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8134EC5C | 41 82 00 20 */	beq .L_8134EC7C
/* 8134EC60 | 57 40 10 3A */	slwi r0, r26, 2
/* 8134EC64 | 38 61 00 04 */	addi r3, r1, 0x4
/* 8134EC68 | 7C 83 00 2E */	lwzx r4, r3, r0
/* 8134EC6C | 7F E3 FB 78 */	mr r3, r31
/* 8134EC70 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 8134EC74 | 48 00 00 25 */	bl create_sd_dir__Q23ipl12NandSDWorkerFPCcPCc
/* 8134EC78 | 48 00 00 08 */	b .L_8134EC80
.L_8134EC7C:
/* 8134EC7C | 38 60 00 00 */	li r3, 0x0
.L_8134EC80:
/* 8134EC80 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8134EC84 | 48 2A A8 81 */	bl _restgpr_25
/* 8134EC88 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134EC8C | 7C 08 03 A6 */	mtlr r0
/* 8134EC90 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8134EC94 | 4E 80 00 20 */	blr
.endfn create_sd_backup_dir__Q23ipl12NandSDWorkerFUx

# .text:0x68AC | 0x8134EC98 | size: 0x124
# ipl::NandSDWorker::create_sd_dir(const char*, const char*)
.fn create_sd_dir__Q23ipl12NandSDWorkerFPCcPCc, global
/* 8134EC98 | 94 21 FB 50 */	stwu r1, -0x4b0(r1)
/* 8134EC9C | 7C 08 02 A6 */	mflr r0
/* 8134ECA0 | 90 01 04 B4 */	stw r0, 0x4b4(r1)
/* 8134ECA4 | 39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8134ECA8 | 48 2A A8 11 */	bl _savegpr_25
/* 8134ECAC | 7C 9C 23 78 */	mr r28, r4
/* 8134ECB0 | 7C 79 1B 78 */	mr r25, r3
/* 8134ECB4 | 7C BA 2B 78 */	mr r26, r5
/* 8134ECB8 | 7F 83 E3 78 */	mr r3, r28
/* 8134ECBC | 48 2A A2 41 */	bl strlen
/* 8134ECC0 | 7C 7B 1B 78 */	mr r27, r3
/* 8134ECC4 | 7F 43 D3 78 */	mr r3, r26
/* 8134ECC8 | 48 2A A2 35 */	bl strlen
/* 8134ECCC | 7C 7D 1B 78 */	mr r29, r3
/* 8134ECD0 | 7F 84 E3 78 */	mr r4, r28
/* 8134ECD4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134ECD8 | 38 A0 00 40 */	li r5, 0x40
/* 8134ECDC | 48 2B 36 E9 */	bl strncpy
/* 8134ECE0 | 3F C0 81 63 */	lis r30, lbl_81637475@ha
/* 8134ECE4 | 3B E0 00 00 */	li r31, 0x0
.L_8134ECE8:
/* 8134ECE8 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8134ECEC | 38 80 00 00 */	li r4, 0x0
/* 8134ECF0 | 38 A0 04 44 */	li r5, 0x444
/* 8134ECF4 | 4B FE 16 41 */	bl memset
/* 8134ECF8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134ECFC | 38 A1 00 48 */	addi r5, r1, 0x48
/* 8134ED00 | 38 80 00 00 */	li r4, 0x0
/* 8134ED04 | 48 29 91 D1 */	bl fn_815E7ED4
/* 8134ED08 | 7C 64 1B 78 */	mr r4, r3
/* 8134ED0C | 7F 23 CB 78 */	mr r3, r25
/* 8134ED10 | 38 A0 00 00 */	li r5, 0x0
/* 8134ED14 | 48 00 50 ED */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134ED18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ED1C | 7C 7C 1B 78 */	mr r28, r3
/* 8134ED20 | 41 82 00 24 */	beq .L_8134ED44
/* 8134ED24 | 3C 60 81 63 */	lis r3, lbl_8163744B@ha
/* 8134ED28 | 7F 85 E3 78 */	mr r5, r28
/* 8134ED2C | 38 63 74 4B */	addi r3, r3, lbl_8163744B@l
/* 8134ED30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134ED34 | 4C C6 31 82 */	crclr cr1eq
/* 8134ED38 | 48 1D F9 69 */	bl OSReport
/* 8134ED3C | 7F 83 E3 78 */	mr r3, r28
/* 8134ED40 | 48 00 00 64 */	b .L_8134EDA4
.L_8134ED44:
/* 8134ED44 | 38 7E 74 75 */	addi r3, r30, lbl_81637475@l
/* 8134ED48 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134ED4C | 4C C6 31 82 */	crclr cr1eq
/* 8134ED50 | 48 1D F9 51 */	bl OSReport
/* 8134ED54 | 38 1B 00 01 */	addi r0, r27, 0x1
/* 8134ED58 | 7C 00 E8 40 */	cmplw r0, r29
/* 8134ED5C | 40 80 00 44 */	bge .L_8134EDA0
/* 8134ED60 | 7F 44 D3 78 */	mr r4, r26
/* 8134ED64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134ED68 | 38 A0 00 40 */	li r5, 0x40
/* 8134ED6C | 48 2B 36 59 */	bl strncpy
/* 8134ED70 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134ED74 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134ED78 | 7C 7B 1A 14 */	add r3, r27, r3
/* 8134ED7C | 38 63 00 01 */	addi r3, r3, 0x1
/* 8134ED80 | 48 2B 3B E9 */	bl strstr
/* 8134ED84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ED88 | 41 82 00 08 */	beq .L_8134ED90
/* 8134ED8C | 9B E3 00 00 */	stb r31, 0x0(r3)
.L_8134ED90:
/* 8134ED90 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134ED94 | 48 2A A1 69 */	bl strlen
/* 8134ED98 | 7C 7B 1B 78 */	mr r27, r3
/* 8134ED9C | 4B FF FF 4C */	b .L_8134ECE8
.L_8134EDA0:
/* 8134EDA0 | 38 60 00 00 */	li r3, 0x0
.L_8134EDA4:
/* 8134EDA4 | 39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8134EDA8 | 48 2A A7 5D */	bl _restgpr_25
/* 8134EDAC | 80 01 04 B4 */	lwz r0, 0x4b4(r1)
/* 8134EDB0 | 7C 08 03 A6 */	mtlr r0
/* 8134EDB4 | 38 21 04 B0 */	addi r1, r1, 0x4b0
/* 8134EDB8 | 4E 80 00 20 */	blr
.endfn create_sd_dir__Q23ipl12NandSDWorkerFPCcPCc

# .text:0x69D0 | 0x8134EDBC | size: 0x8CC
# ipl::NandSDWorker::do_copy_sd_save_to_nand()
.fn do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv, global
/* 8134EDBC | 94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8134EDC0 | 7C 08 02 A6 */	mflr r0
/* 8134EDC4 | 90 01 02 54 */	stw r0, 0x254(r1)
/* 8134EDC8 | 39 61 02 50 */	addi r11, r1, 0x250
/* 8134EDCC | 48 2A A6 ED */	bl _savegpr_25
/* 8134EDD0 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134EDD4 | 38 00 00 20 */	li r0, 0x20
/* 8134EDD8 | 7C 7A 1B 78 */	mr r26, r3
/* 8134EDDC | 38 A1 00 27 */	addi r5, r1, 0x27
/* 8134EDE0 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134EDE4 | 3B C0 00 00 */	li r30, 0x0
/* 8134EDE8 | 38 80 00 00 */	li r4, 0x0
/* 8134EDEC | 7C 09 03 A6 */	mtctr r0
.L_8134EDF0:
/* 8134EDF0 | 98 85 00 01 */	stb r4, 0x1(r5)
/* 8134EDF4 | 9C 85 00 02 */	stbu r4, 0x2(r5)
/* 8134EDF8 | 42 00 FF F8 */	bdnz .L_8134EDF0
/* 8134EDFC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134EE00 | 38 A1 00 E8 */	addi r5, r1, 0xe8
/* 8134EE04 | 3B 80 00 00 */	li r28, 0x0
/* 8134EE08 | 3B 60 00 00 */	li r27, 0x0
/* 8134EE0C | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134EE10 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134EE14 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134EE18 | 4B FF A5 91 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134EE1C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EE20 | 3F 20 00 01 */	lis r25, 0x1
/* 8134EE24 | 38 99 F0 C0 */	subi r4, r25, 0xf40
/* 8134EE28 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134EE2C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134EE30 | 48 20 C8 39 */	bl fn_8155B668
/* 8134EE34 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134EE38 | 7C 7D 1B 78 */	mr r29, r3
/* 8134EE3C | 7F 43 D3 78 */	mr r3, r26
/* 8134EE40 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134EE44 | 7F A5 EB 78 */	mr r5, r29
/* 8134EE48 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134EE4C | 48 00 08 3D */	bl get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner
/* 8134EE50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EE54 | 41 82 00 14 */	beq .L_8134EE68
/* 8134EE58 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134EE5C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134EE60 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134EE64 | 48 00 07 7C */	b .L_8134F5E0
.L_8134EE68:
/* 8134EE68 | 38 61 00 E8 */	addi r3, r1, 0xe8
/* 8134EE6C | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134EE70 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134EE74 | 38 F9 F0 C0 */	subi r7, r25, 0xf40
/* 8134EE78 | 38 C0 00 03 */	li r6, 0x3
/* 8134EE7C | 48 27 08 B9 */	bl fn_815BF734
/* 8134EE80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EE84 | 41 82 00 28 */	beq .L_8134EEAC
/* 8134EE88 | 7C 64 1B 78 */	mr r4, r3
/* 8134EE8C | 38 7F 0A FD */	addi r3, r31, 0xafd
/* 8134EE90 | 4C C6 31 82 */	crclr cr1eq
/* 8134EE94 | 48 1D F8 0D */	bl OSReport
/* 8134EE98 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EE9C | 38 00 FF FE */	li r0, -0x2
/* 8134EEA0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EEA4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EEA8 | 48 00 07 38 */	b .L_8134F5E0
.L_8134EEAC:
/* 8134EEAC | 80 FD 00 00 */	lwz r7, 0x0(r29)
/* 8134EEB0 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8134EEB4 | 81 1D 00 04 */	lwz r8, 0x4(r29)
/* 8134EEB8 | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8134EEBC | 7C A0 3A 78 */	xor r0, r5, r7
/* 8134EEC0 | 7C C3 42 78 */	xor r3, r6, r8
/* 8134EEC4 | 7C 60 03 79 */	or. r0, r3, r0
/* 8134EEC8 | 41 82 00 28 */	beq .L_8134EEF0
/* 8134EECC | 38 7F 0B 2D */	addi r3, r31, 0xb2d
/* 8134EED0 | 39 21 00 E8 */	addi r9, r1, 0xe8
/* 8134EED4 | 4C C6 31 82 */	crclr cr1eq
/* 8134EED8 | 48 1D F7 C9 */	bl OSReport
/* 8134EEDC | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EEE0 | 38 00 FF FD */	li r0, -0x3
/* 8134EEE4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EEE8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EEEC | 48 00 06 F4 */	b .L_8134F5E0
.L_8134EEF0:
/* 8134EEF0 | 7D 04 43 78 */	mr r4, r8
/* 8134EEF4 | 7C E3 3B 78 */	mr r3, r7
/* 8134EEF8 | 4B FF A4 05 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134EEFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EF00 | 41 82 00 48 */	beq .L_8134EF48
/* 8134EF04 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EF08 | 7F 43 D3 78 */	mr r3, r26
/* 8134EF0C | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EF10 | 3B 60 00 01 */	li r27, 0x1
/* 8134EF14 | 48 00 2C 9D */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134EF18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EF1C | 41 82 00 2C */	beq .L_8134EF48
/* 8134EF20 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EF24 | 38 7F 0B E9 */	addi r3, r31, 0xbe9
/* 8134EF28 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EF2C | 4C C6 31 82 */	crclr cr1eq
/* 8134EF30 | 48 1D F7 71 */	bl OSReport
/* 8134EF34 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EF38 | 38 00 FF FA */	li r0, -0x6
/* 8134EF3C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EF40 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EF44 | 48 00 06 9C */	b .L_8134F5E0
.L_8134EF48:
/* 8134EF48 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134EF4C | 40 82 01 D4 */	bne .L_8134F120
/* 8134EF50 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8134EF54 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134EF58 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8134EF5C | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134EF60 | 80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8134EF64 | 48 01 81 3D */	bl PrepareTitleDir__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap
/* 8134EF68 | 2C 03 FB FF */	cmpwi r3, -0x401
/* 8134EF6C | 40 82 00 2C */	bne .L_8134EF98
/* 8134EF70 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EF74 | 38 7F 1A 15 */	addi r3, r31, 0x1a15
/* 8134EF78 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EF7C | 4C C6 31 82 */	crclr cr1eq
/* 8134EF80 | 48 1D F7 21 */	bl OSReport
/* 8134EF84 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EF88 | 38 00 FF F2 */	li r0, -0xe
/* 8134EF8C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EF90 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EF94 | 48 00 06 4C */	b .L_8134F5E0
.L_8134EF98:
/* 8134EF98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EF9C | 41 82 00 18 */	beq .L_8134EFB4
/* 8134EFA0 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EFA4 | 38 00 FF FE */	li r0, -0x2
/* 8134EFA8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EFAC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EFB0 | 48 00 06 30 */	b .L_8134F5E0
.L_8134EFB4:
/* 8134EFB4 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EFB8 | 7F 43 D3 78 */	mr r3, r26
/* 8134EFBC | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EFC0 | 48 00 4B ED */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134EFC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EFC8 | 40 82 00 2C */	bne .L_8134EFF4
/* 8134EFCC | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EFD0 | 38 7F 1A 15 */	addi r3, r31, 0x1a15
/* 8134EFD4 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EFD8 | 4C C6 31 82 */	crclr cr1eq
/* 8134EFDC | 48 1D F6 C5 */	bl OSReport
/* 8134EFE0 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EFE4 | 38 00 FF F2 */	li r0, -0xe
/* 8134EFE8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EFEC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EFF0 | 48 00 05 F0 */	b .L_8134F5E0
.L_8134EFF4:
/* 8134EFF4 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EFF8 | 7F 43 D3 78 */	mr r3, r26
/* 8134EFFC | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F000 | 4B FF BF 69 */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
/* 8134F004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F008 | 41 82 00 2C */	beq .L_8134F034
/* 8134F00C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F010 | 38 7F 0B E9 */	addi r3, r31, 0xbe9
/* 8134F014 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F018 | 4C C6 31 82 */	crclr cr1eq
/* 8134F01C | 48 1D F6 85 */	bl OSReport
/* 8134F020 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F024 | 38 00 FF FA */	li r0, -0x6
/* 8134F028 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F02C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F030 | 48 00 05 B0 */	b .L_8134F5E0
.L_8134F034:
/* 8134F034 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134F038 | 38 00 FF FF */	li r0, -0x1
/* 8134F03C | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 8134F040 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 8134F044 | 7C 87 00 38 */	and r7, r4, r0
/* 8134F048 | 38 BF 01 1C */	addi r5, r31, 0x11c
/* 8134F04C | 38 80 00 40 */	li r4, 0x40
/* 8134F050 | 4C C6 31 82 */	crclr cr1eq
/* 8134F054 | 48 2B 19 55 */	bl snprintf
/* 8134F058 | 80 6D 81 80 */	lwz r3, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F05C | 48 01 10 4D */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 8134F060 | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 8134F064 | 7C 64 1B 78 */	mr r4, r3
/* 8134F068 | 7F 43 D3 78 */	mr r3, r26
/* 8134F06C | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134F070 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F074 | 48 00 4B E5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F078 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F07C | 40 82 05 64 */	bne .L_8134F5E0
/* 8134F080 | 80 6D 81 80 */	lwz r3, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F084 | 38 80 00 30 */	li r4, 0x30
/* 8134F088 | 38 A0 00 00 */	li r5, 0x0
/* 8134F08C | 48 01 0F 45 */	bl CreateDir__Q33ipl4nand7wrapperFPCcUcUc
/* 8134F090 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F094 | 7C 79 1B 78 */	mr r25, r3
/* 8134F098 | 7F 43 D3 78 */	mr r3, r26
/* 8134F09C | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F0A0 | 7F 24 CB 78 */	mr r4, r25
/* 8134F0A4 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F0A8 | 48 00 4B B1 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F0AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F0B0 | 40 82 05 30 */	bne .L_8134F5E0
/* 8134F0B4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8134F0B8 | 41 82 00 2C */	beq .L_8134F0E4
/* 8134F0BC | 80 8D 81 80 */	lwz r4, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F0C0 | 7F 25 CB 78 */	mr r5, r25
/* 8134F0C4 | 38 7F 1A 4A */	addi r3, r31, 0x1a4a
/* 8134F0C8 | 4C C6 31 82 */	crclr cr1eq
/* 8134F0CC | 48 1D F5 D5 */	bl OSReport
/* 8134F0D0 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F0D4 | 38 00 FF FE */	li r0, -0x2
/* 8134F0D8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F0DC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F0E0 | 48 00 05 00 */	b .L_8134F5E0
.L_8134F0E4:
/* 8134F0E4 | 80 6D 81 80 */	lwz r3, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F0E8 | 48 01 0F 5D */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134F0EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F0F0 | 41 82 00 2C */	beq .L_8134F11C
/* 8134F0F4 | 80 8D 81 80 */	lwz r4, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F0F8 | 7C 65 1B 78 */	mr r5, r3
/* 8134F0FC | 38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 8134F100 | 4C C6 31 82 */	crclr cr1eq
/* 8134F104 | 48 1D F5 9D */	bl OSReport
/* 8134F108 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F10C | 38 00 FF FE */	li r0, -0x2
/* 8134F110 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F114 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F118 | 48 00 04 C8 */	b .L_8134F5E0
.L_8134F11C:
/* 8134F11C | 3B 80 00 01 */	li r28, 0x1
.L_8134F120:
/* 8134F120 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F124 | 3C A0 00 01 */	lis r5, 0x1
/* 8134F128 | 38 C5 F0 C0 */	subi r6, r5, 0xf40
/* 8134F12C | 38 61 00 E8 */	addi r3, r1, 0xe8
/* 8134F130 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134F134 | 39 01 00 18 */	addi r8, r1, 0x18
/* 8134F138 | 38 A0 00 03 */	li r5, 0x3
/* 8134F13C | 38 E0 00 01 */	li r7, 0x1
/* 8134F140 | 39 20 00 00 */	li r9, 0x0
/* 8134F144 | 38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8134F148 | 48 27 09 B9 */	bl fn_815BFB00
/* 8134F14C | 2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 8134F150 | 40 82 00 28 */	bne .L_8134F178
/* 8134F154 | 7C 64 1B 78 */	mr r4, r3
/* 8134F158 | 38 7F 0B 7B */	addi r3, r31, 0xb7b
/* 8134F15C | 4C C6 31 82 */	crclr cr1eq
/* 8134F160 | 48 1D F5 41 */	bl OSReport
/* 8134F164 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F168 | 38 00 FF F1 */	li r0, -0xf
/* 8134F16C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F170 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F174 | 48 00 04 6C */	b .L_8134F5E0
.L_8134F178:
/* 8134F178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F17C | 41 82 00 28 */	beq .L_8134F1A4
/* 8134F180 | 7C 64 1B 78 */	mr r4, r3
/* 8134F184 | 38 7F 0B BB */	addi r3, r31, 0xbbb
/* 8134F188 | 4C C6 31 82 */	crclr cr1eq
/* 8134F18C | 48 1D F5 15 */	bl OSReport
/* 8134F190 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F194 | 38 00 FF FD */	li r0, -0x3
/* 8134F198 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F19C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F1A0 | 48 00 04 40 */	b .L_8134F5E0
.L_8134F1A4:
/* 8134F1A4 | A0 81 00 22 */	lhz r4, 0x22(r1)
/* 8134F1A8 | 38 7F 1A 76 */	addi r3, r31, 0x1a76
/* 8134F1AC | A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 8134F1B0 | 4C C6 31 82 */	crclr cr1eq
/* 8134F1B4 | 48 1D F4 ED */	bl OSReport
/* 8134F1B8 | A0 81 00 1E */	lhz r4, 0x1e(r1)
/* 8134F1BC | 38 7F 1A AA */	addi r3, r31, 0x1aaa
/* 8134F1C0 | A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 8134F1C4 | 4C C6 31 82 */	crclr cr1eq
/* 8134F1C8 | 48 1D F4 D9 */	bl OSReport
/* 8134F1CC | A0 81 00 26 */	lhz r4, 0x26(r1)
/* 8134F1D0 | 38 7F 1A DF */	addi r3, r31, 0x1adf
/* 8134F1D4 | A0 A1 00 24 */	lhz r5, 0x24(r1)
/* 8134F1D8 | 4C C6 31 82 */	crclr cr1eq
/* 8134F1DC | 48 1D F4 C5 */	bl OSReport
/* 8134F1E0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 8134F1E4 | 7F 43 D3 78 */	mr r3, r26
/* 8134F1E8 | A1 01 00 1E */	lhz r8, 0x1e(r1)
/* 8134F1EC | 38 04 3F FF */	addi r0, r4, 0x3fff
/* 8134F1F0 | A0 C1 00 26 */	lhz r6, 0x26(r1)
/* 8134F1F4 | 54 07 93 BE */	srwi r7, r0, 14
/* 8134F1F8 | A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 8134F1FC | A0 01 00 24 */	lhz r0, 0x24(r1)
/* 8134F200 | 7C C8 32 14 */	add r6, r8, r6
/* 8134F204 | A0 81 00 22 */	lhz r4, 0x22(r1)
/* 8134F208 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8134F20C | 7C 05 02 14 */	add r0, r5, r0
/* 8134F210 | A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 8134F214 | 7C E7 02 14 */	add r7, r7, r0
/* 8134F218 | 4B FF EE 3D */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8134F21C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F220 | 41 82 00 14 */	beq .L_8134F234
/* 8134F224 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F228 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F22C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134F230 | 48 00 03 B0 */	b .L_8134F5E0
.L_8134F234:
/* 8134F234 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F238 | 40 82 00 94 */	bne .L_8134F2CC
/* 8134F23C | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F240 | 7F 43 D3 78 */	mr r3, r26
/* 8134F244 | 38 A1 01 28 */	addi r5, r1, 0x128
/* 8134F248 | 38 C0 00 00 */	li r6, 0x0
/* 8134F24C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F250 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134F254 | 48 00 06 6D */	bl get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader
/* 8134F258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F25C | 41 82 00 14 */	beq .L_8134F270
/* 8134F260 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F264 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F268 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134F26C | 48 00 03 74 */	b .L_8134F5E0
.L_8134F270:
/* 8134F270 | A0 81 00 26 */	lhz r4, 0x26(r1)
/* 8134F274 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8134F278 | 40 82 00 30 */	bne .L_8134F2A8
/* 8134F27C | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8134F280 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134F284 | 41 82 00 24 */	beq .L_8134F2A8
/* 8134F288 | 38 7F 1B 09 */	addi r3, r31, 0x1b09
/* 8134F28C | 4C C6 31 82 */	crclr cr1eq
/* 8134F290 | 48 1D F4 11 */	bl OSReport
/* 8134F294 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F298 | 38 00 FF F1 */	li r0, -0xf
/* 8134F29C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F2A0 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F2A4 | 48 00 03 3C */	b .L_8134F5E0
.L_8134F2A8:
/* 8134F2A8 | 80 A1 01 34 */	lwz r5, 0x134(r1)
/* 8134F2AC | 38 05 FF FF */	subi r0, r5, 0x1
/* 8134F2B0 | 7C 04 00 40 */	cmplw r4, r0
/* 8134F2B4 | 40 80 00 18 */	bge .L_8134F2CC
/* 8134F2B8 | 38 7F 1B 41 */	addi r3, r31, 0x1b41
/* 8134F2BC | 7C 84 28 50 */	subf r4, r4, r5
/* 8134F2C0 | 4C C6 31 82 */	crclr cr1eq
/* 8134F2C4 | 48 1D F3 DD */	bl OSReport
/* 8134F2C8 | 3B C0 00 01 */	li r30, 0x1
.L_8134F2CC:
/* 8134F2CC | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F2D0 | 3C C0 00 01 */	lis r6, 0x1
/* 8134F2D4 | 38 61 00 E8 */	addi r3, r1, 0xe8
/* 8134F2D8 | 38 A0 00 03 */	li r5, 0x3
/* 8134F2DC | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8134F2E0 | 38 C6 F0 C0 */	subi r6, r6, 0xf40
/* 8134F2E4 | 38 E0 00 08 */	li r7, 0x8
/* 8134F2E8 | 39 00 00 00 */	li r8, 0x0
/* 8134F2EC | 38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8134F2F0 | 48 27 0D B1 */	bl fn_815C00A0
/* 8134F2F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F2F8 | 41 82 00 94 */	beq .L_8134F38C
/* 8134F2FC | 7C 64 1B 78 */	mr r4, r3
/* 8134F300 | 38 7F 1B 94 */	addi r3, r31, 0x1b94
/* 8134F304 | 4C C6 31 82 */	crclr cr1eq
/* 8134F308 | 48 1D F3 99 */	bl OSReport
/* 8134F30C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F310 | 41 82 00 68 */	beq .L_8134F378
/* 8134F314 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F318 | 7F 43 D3 78 */	mr r3, r26
/* 8134F31C | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F320 | 48 00 28 91 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134F324 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8134F328 | 41 82 00 50 */	beq .L_8134F378
/* 8134F32C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F330 | 7F 43 D3 78 */	mr r3, r26
/* 8134F334 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F338 | 48 00 0B 71 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 8134F33C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8134F340 | 40 82 00 18 */	bne .L_8134F358
/* 8134F344 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F348 | 38 00 FF FB */	li r0, -0x5
/* 8134F34C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F350 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F354 | 48 00 02 8C */	b .L_8134F5E0
.L_8134F358:
/* 8134F358 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F35C | 41 82 00 1C */	beq .L_8134F378
/* 8134F360 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F364 | 7C 67 1B 78 */	mr r7, r3
/* 8134F368 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F36C | 38 7F 06 43 */	addi r3, r31, 0x643
/* 8134F370 | 4C C6 31 82 */	crclr cr1eq
/* 8134F374 | 48 1D F3 2D */	bl OSReport
.L_8134F378:
/* 8134F378 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F37C | 38 00 FF FD */	li r0, -0x3
/* 8134F380 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F384 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F388 | 48 00 02 58 */	b .L_8134F5E0
.L_8134F38C:
/* 8134F38C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F390 | 40 82 02 3C */	bne .L_8134F5CC
/* 8134F394 | 80 8D 81 80 */	lwz r4, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F398 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8134F39C | 38 A0 00 40 */	li r5, 0x40
/* 8134F3A0 | 48 2B 30 25 */	bl strncpy
/* 8134F3A4 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8134F3A8 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134F3AC | 38 A0 00 40 */	li r5, 0x40
/* 8134F3B0 | 48 2B 30 85 */	bl strncat
/* 8134F3B4 | 80 8D 81 58 */	lwz r4, c_banner_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F3B8 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8134F3BC | 38 A0 00 40 */	li r5, 0x40
/* 8134F3C0 | 48 2B 30 75 */	bl strncat
/* 8134F3C4 | 88 9D 00 0C */	lbz r4, 0xc(r29)
/* 8134F3C8 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8134F3CC | 88 BD 00 0D */	lbz r5, 0xd(r29)
/* 8134F3D0 | 48 01 08 4D */	bl Create__Q33ipl4nand7wrapperFPCcUcUc
/* 8134F3D4 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F3D8 | 7C 79 1B 78 */	mr r25, r3
/* 8134F3DC | 7F 43 D3 78 */	mr r3, r26
/* 8134F3E0 | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F3E4 | 7F 24 CB 78 */	mr r4, r25
/* 8134F3E8 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F3EC | 48 00 48 6D */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F3F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F3F4 | 40 82 01 EC */	bne .L_8134F5E0
/* 8134F3F8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8134F3FC | 41 82 00 2C */	beq .L_8134F428
/* 8134F400 | 7F 25 CB 78 */	mr r5, r25
/* 8134F404 | 38 7F 1B BE */	addi r3, r31, 0x1bbe
/* 8134F408 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8134F40C | 4C C6 31 82 */	crclr cr1eq
/* 8134F410 | 48 1D F2 91 */	bl OSReport
/* 8134F414 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F418 | 38 00 FF FE */	li r0, -0x2
/* 8134F41C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F420 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F424 | 48 00 01 BC */	b .L_8134F5E0
.L_8134F428:
/* 8134F428 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8134F42C | 38 81 01 98 */	addi r4, r1, 0x198
/* 8134F430 | 38 A0 00 02 */	li r5, 0x2
/* 8134F434 | 48 01 08 5D */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8134F438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F43C | 41 82 00 2C */	beq .L_8134F468
/* 8134F440 | 7C 65 1B 78 */	mr r5, r3
/* 8134F444 | 38 7F 1B E7 */	addi r3, r31, 0x1be7
/* 8134F448 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8134F44C | 4C C6 31 82 */	crclr cr1eq
/* 8134F450 | 48 1D F2 51 */	bl OSReport
/* 8134F454 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F458 | 38 00 FF FE */	li r0, -0x2
/* 8134F45C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F460 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F464 | 48 00 01 7C */	b .L_8134F5E0
.L_8134F468:
/* 8134F468 | 80 BD 00 08 */	lwz r5, 0x8(r29)
/* 8134F46C | 38 61 01 98 */	addi r3, r1, 0x198
/* 8134F470 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 8134F474 | 48 01 09 69 */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 8134F478 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F47C | 7C 79 1B 78 */	mr r25, r3
/* 8134F480 | 7F 43 D3 78 */	mr r3, r26
/* 8134F484 | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F488 | 7F 24 CB 78 */	mr r4, r25
/* 8134F48C | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F490 | 48 00 47 C9 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F498 | 41 82 00 10 */	beq .L_8134F4A8
/* 8134F49C | 38 61 01 98 */	addi r3, r1, 0x198
/* 8134F4A0 | 48 01 08 65 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134F4A4 | 48 00 01 3C */	b .L_8134F5E0
.L_8134F4A8:
/* 8134F4A8 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8134F4AC | 7C 19 00 40 */	cmplw r25, r0
/* 8134F4B0 | 40 80 00 34 */	bge .L_8134F4E4
/* 8134F4B4 | 7F 25 CB 78 */	mr r5, r25
/* 8134F4B8 | 38 7F 1C 0E */	addi r3, r31, 0x1c0e
/* 8134F4BC | 38 81 00 68 */	addi r4, r1, 0x68
/* 8134F4C0 | 4C C6 31 82 */	crclr cr1eq
/* 8134F4C4 | 48 1D F1 DD */	bl OSReport
/* 8134F4C8 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F4CC | 38 00 FF FE */	li r0, -0x2
/* 8134F4D0 | 38 61 01 98 */	addi r3, r1, 0x198
/* 8134F4D4 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F4D8 | 90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134F4DC | 48 01 08 29 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134F4E0 | 48 00 01 00 */	b .L_8134F5E0
.L_8134F4E4:
/* 8134F4E4 | 38 61 01 98 */	addi r3, r1, 0x198
/* 8134F4E8 | 48 01 08 1D */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134F4EC | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F4F0 | 7C 79 1B 78 */	mr r25, r3
/* 8134F4F4 | 7F 43 D3 78 */	mr r3, r26
/* 8134F4F8 | 3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F4FC | 7F 24 CB 78 */	mr r4, r25
/* 8134F500 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F504 | 48 00 47 55 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F50C | 40 82 00 D4 */	bne .L_8134F5E0
/* 8134F510 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8134F514 | 41 82 00 2C */	beq .L_8134F540
/* 8134F518 | 7F 25 CB 78 */	mr r5, r25
/* 8134F51C | 38 7F 1C 36 */	addi r3, r31, 0x1c36
/* 8134F520 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8134F524 | 4C C6 31 82 */	crclr cr1eq
/* 8134F528 | 48 1D F1 79 */	bl OSReport
/* 8134F52C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F530 | 38 00 FF FE */	li r0, -0x2
/* 8134F534 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F538 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F53C | 48 00 00 A4 */	b .L_8134F5E0
.L_8134F540:
/* 8134F540 | 80 8D 81 80 */	lwz r4, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F544 | 7F 43 D3 78 */	mr r3, r26
/* 8134F548 | 38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8134F54C | 38 C0 00 02 */	li r6, 0x2
/* 8134F550 | 38 E0 00 00 */	li r7, 0x0
/* 8134F554 | 39 00 00 00 */	li r8, 0x0
/* 8134F558 | 48 00 40 4D */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134F55C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F560 | 7C 79 1B 78 */	mr r25, r3
/* 8134F564 | 41 82 00 28 */	beq .L_8134F58C
/* 8134F568 | 80 8D 81 80 */	lwz r4, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F56C | 38 7F 1C 5E */	addi r3, r31, 0x1c5e
/* 8134F570 | 38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8134F574 | 4C C6 31 82 */	crclr cr1eq
/* 8134F578 | 48 1D F1 29 */	bl OSReport
/* 8134F57C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F580 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F584 | 93 23 EA 24 */	stw r25, -0x15dc(r3)
/* 8134F588 | 48 00 00 58 */	b .L_8134F5E0
.L_8134F58C:
/* 8134F58C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F590 | 38 7F 1C 91 */	addi r3, r31, 0x1c91
/* 8134F594 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F598 | 4C C6 31 82 */	crclr cr1eq
/* 8134F59C | 48 1D F1 05 */	bl OSReport
/* 8134F5A0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134F5A4 | 41 82 00 18 */	beq .L_8134F5BC
/* 8134F5A8 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F5AC | 38 00 00 01 */	li r0, 0x1
/* 8134F5B0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F5B4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F5B8 | 48 00 00 14 */	b .L_8134F5CC
.L_8134F5BC:
/* 8134F5BC | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F5C0 | 38 00 00 00 */	li r0, 0x0
/* 8134F5C4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F5C8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134F5CC:
/* 8134F5CC | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F5D0 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 8134F5D4 | 80 64 EA 28 */	lwz r3, -0x15d8(r4)
/* 8134F5D8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8134F5DC | 90 04 EA 28 */	stw r0, -0x15d8(r4)
.L_8134F5E0:
/* 8134F5E0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F5E4 | 40 82 00 70 */	bne .L_8134F654
/* 8134F5E8 | 80 6D 81 80 */	lwz r3, c_tmp_work_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F5EC | 48 01 0A BD */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 8134F5F0 | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 8134F5F4 | 7C 64 1B 78 */	mr r4, r3
/* 8134F5F8 | 7F 43 D3 78 */	mr r3, r26
/* 8134F5FC | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134F600 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F604 | 48 00 46 55 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F608 | 7F 43 D3 78 */	mr r3, r26
/* 8134F60C | 38 C0 00 02 */	li r6, 0x2
/* 8134F610 | 38 A0 00 01 */	li r5, 0x1
/* 8134F614 | 48 00 45 99 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134F618 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8134F61C | 41 82 00 38 */	beq .L_8134F654
/* 8134F620 | 80 6D 81 A4 */	lwz r3, c_wii_menu_save_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F624 | 48 01 0A 21 */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134F628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F62C | 41 82 00 28 */	beq .L_8134F654
/* 8134F630 | 80 8D 81 A4 */	lwz r4, c_wii_menu_save_path__Q23ipl12NandSDWorker@sda21(r0)
/* 8134F634 | 7C 65 1B 78 */	mr r5, r3
/* 8134F638 | 38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 8134F63C | 4C C6 31 82 */	crclr cr1eq
/* 8134F640 | 48 1D F0 61 */	bl OSReport
/* 8134F644 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F648 | 38 00 FF FE */	li r0, -0x2
/* 8134F64C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F650 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134F654:
/* 8134F654 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134F658 | 41 82 00 18 */	beq .L_8134F670
/* 8134F65C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F660 | 7F A4 EB 78 */	mr r4, r29
/* 8134F664 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134F668 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134F66C | 48 20 C0 0D */	bl fn_8155B678
.L_8134F670:
/* 8134F670 | 39 61 02 50 */	addi r11, r1, 0x250
/* 8134F674 | 48 2A 9E 91 */	bl _restgpr_25
/* 8134F678 | 80 01 02 54 */	lwz r0, 0x254(r1)
/* 8134F67C | 7C 08 03 A6 */	mtlr r0
/* 8134F680 | 38 21 02 50 */	addi r1, r1, 0x250
/* 8134F684 | 4E 80 00 20 */	blr
.endfn do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv

# .text:0x729C | 0x8134F688 | size: 0x238
# ipl::NandSDWorker::get_sd_save_banner(unsigned long, ipl::NandSDWorker::SDSaveBanner*)
.fn get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner, global
/* 8134F688 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8134F68C | 7C 08 02 A6 */	mflr r0
/* 8134F690 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8134F694 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8134F698 | 48 2A 9E 21 */	bl _savegpr_25
/* 8134F69C | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134F6A0 | 7C 7F 1B 78 */	mr r31, r3
/* 8134F6A4 | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134F6A8 | 7C BA 2B 78 */	mr r26, r5
/* 8134F6AC | 3C 66 00 02 */	addis r3, r6, 0x2
/* 8134F6B0 | 3F C0 00 01 */	lis r30, 0x1
/* 8134F6B4 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134F6B8 | 7C 99 23 78 */	mr r25, r4
/* 8134F6BC | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134F6C0 | 38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134F6C4 | 38 A0 00 20 */	li r5, 0x20
/* 8134F6C8 | 48 20 B0 8D */	bl fn_8155A754
/* 8134F6CC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8134F6D0 | 7C 7C 1B 78 */	mr r28, r3
/* 8134F6D4 | 41 82 00 0C */	beq .L_8134F6E0
/* 8134F6D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F6DC | 40 82 00 1C */	bne .L_8134F6F8
.L_8134F6E0:
/* 8134F6E0 | 38 7D 1C C6 */	addi r3, r29, 0x1cc6
/* 8134F6E4 | 4C C6 31 82 */	crclr cr1eq
/* 8134F6E8 | 48 1D EF B9 */	bl OSReport
/* 8134F6EC | 38 00 FF FE */	li r0, -0x2
/* 8134F6F0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F6F4 | 48 00 01 9C */	b .L_8134F890
.L_8134F6F8:
/* 8134F6F8 | 7F 24 CB 78 */	mr r4, r25
/* 8134F6FC | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 8134F700 | 38 60 00 00 */	li r3, 0x0
/* 8134F704 | 4B FF 9C A5 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134F708 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 8134F70C | 38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 8134F710 | 48 29 89 31 */	bl fn_815E8040
/* 8134F714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F718 | 7C 7B 1B 78 */	mr r27, r3
/* 8134F71C | 40 82 00 28 */	bne .L_8134F744
/* 8134F720 | 38 7D 17 AE */	addi r3, r29, 0x17ae
/* 8134F724 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8134F728 | 4C C6 31 82 */	crclr cr1eq
/* 8134F72C | 48 1D EF 75 */	bl OSReport
/* 8134F730 | 7F E3 FB 78 */	mr r3, r31
/* 8134F734 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F738 | 38 80 FF FF */	li r4, -0x1
/* 8134F73C | 48 00 46 C5 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F740 | 48 00 01 50 */	b .L_8134F890
.L_8134F744:
/* 8134F744 | 7F 83 E3 78 */	mr r3, r28
/* 8134F748 | 7F 66 DB 78 */	mr r6, r27
/* 8134F74C | 38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134F750 | 38 A0 00 01 */	li r5, 0x1
/* 8134F754 | 48 29 89 49 */	bl fn_815E809C
/* 8134F758 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134F75C | 41 82 00 3C */	beq .L_8134F798
/* 8134F760 | 7F E3 FB 78 */	mr r3, r31
/* 8134F764 | 38 80 FF FF */	li r4, -0x1
/* 8134F768 | 38 A0 00 00 */	li r5, 0x0
/* 8134F76C | 48 00 46 95 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F774 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8134F778 | 41 82 00 0C */	beq .L_8134F784
/* 8134F77C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8134F780 | 40 82 00 0C */	bne .L_8134F78C
.L_8134F784:
/* 8134F784 | 38 00 FF FD */	li r0, -0x3
/* 8134F788 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_8134F78C:
/* 8134F78C | 7F 63 DB 78 */	mr r3, r27
/* 8134F790 | 48 29 88 59 */	bl fn_815E7FE8
/* 8134F794 | 48 00 00 FC */	b .L_8134F890
.L_8134F798:
/* 8134F798 | 7F 63 DB 78 */	mr r3, r27
/* 8134F79C | 48 29 88 4D */	bl fn_815E7FE8
/* 8134F7A0 | 7C 64 1B 78 */	mr r4, r3
/* 8134F7A4 | 7F E3 FB 78 */	mr r3, r31
/* 8134F7A8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F7AC | 48 00 46 55 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F7B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F7B4 | 41 82 00 14 */	beq .L_8134F7C8
/* 8134F7B8 | 38 7D 1C F0 */	addi r3, r29, 0x1cf0
/* 8134F7BC | 4C C6 31 82 */	crclr cr1eq
/* 8134F7C0 | 48 1D EE E1 */	bl OSReport
/* 8134F7C4 | 48 00 00 CC */	b .L_8134F890
.L_8134F7C8:
/* 8134F7C8 | 7F 83 E3 78 */	mr r3, r28
/* 8134F7CC | 7F 45 D3 78 */	mr r5, r26
/* 8134F7D0 | 38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134F7D4 | 48 00 48 9D */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134F7D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F7DC | 41 82 00 10 */	beq .L_8134F7EC
/* 8134F7E0 | 38 00 FF FD */	li r0, -0x3
/* 8134F7E4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F7E8 | 48 00 00 A8 */	b .L_8134F890
.L_8134F7EC:
/* 8134F7EC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8134F7F0 | 38 9A 00 0E */	addi r4, r26, 0xe
/* 8134F7F4 | 38 A0 00 10 */	li r5, 0x10
/* 8134F7F8 | 4B FE 0A 39 */	bl memcpy
/* 8134F7FC | 3C 80 81 61 */	lis r4, c_md5_secret_key__Q23ipl12NandSDWorker@ha
/* 8134F800 | 38 7A 00 0E */	addi r3, r26, 0xe
/* 8134F804 | 38 84 D6 48 */	addi r4, r4, c_md5_secret_key__Q23ipl12NandSDWorker@l
/* 8134F808 | 38 A0 00 10 */	li r5, 0x10
/* 8134F80C | 4B FE 0A 25 */	bl memcpy
/* 8134F810 | 7F E3 FB 78 */	mr r3, r31
/* 8134F814 | 7F 45 D3 78 */	mr r5, r26
/* 8134F818 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134F81C | 38 DE F0 C0 */	subi r6, r30, 0xf40
/* 8134F820 | 48 00 17 DD */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 8134F824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F828 | 40 82 00 20 */	bne .L_8134F848
/* 8134F82C | 38 7D 1D 10 */	addi r3, r29, 0x1d10
/* 8134F830 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8134F834 | 4C C6 31 82 */	crclr cr1eq
/* 8134F838 | 48 1D EE 69 */	bl OSReport
/* 8134F83C | 38 00 FF FD */	li r0, -0x3
/* 8134F840 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F844 | 48 00 00 4C */	b .L_8134F890
.L_8134F848:
/* 8134F848 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 8134F84C | 38 00 FF FF */	li r0, -0x1
/* 8134F850 | 7C 60 00 38 */	and r0, r3, r0
/* 8134F854 | 7C 19 00 40 */	cmplw r25, r0
/* 8134F858 | 40 82 00 20 */	bne .L_8134F878
/* 8134F85C | 80 7A 00 20 */	lwz r3, 0x20(r26)
/* 8134F860 | 3C 03 A8 B7 */	subis r0, r3, 0x5749
/* 8134F864 | 28 00 42 4E */	cmplwi r0, 0x424e
/* 8134F868 | 40 82 00 10 */	bne .L_8134F878
/* 8134F86C | 38 00 00 00 */	li r0, 0x0
/* 8134F870 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F874 | 48 00 00 1C */	b .L_8134F890
.L_8134F878:
/* 8134F878 | 38 7D 0A 6F */	addi r3, r29, 0xa6f
/* 8134F87C | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8134F880 | 4C C6 31 82 */	crclr cr1eq
/* 8134F884 | 48 1D EE 1D */	bl OSReport
/* 8134F888 | 38 00 FF FD */	li r0, -0x3
/* 8134F88C | 90 01 00 08 */	stw r0, 0x8(r1)
.L_8134F890:
/* 8134F890 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134F894 | 7F 84 E3 78 */	mr r4, r28
/* 8134F898 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134F89C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134F8A0 | 48 20 B1 65 */	bl fn_8155AA04
/* 8134F8A4 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8134F8A8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134F8AC | 48 2A 9C 59 */	bl _restgpr_25
/* 8134F8B0 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8134F8B4 | 7C 08 03 A6 */	mtlr r0
/* 8134F8B8 | 38 21 00 80 */	addi r1, r1, 0x80
/* 8134F8BC | 4E 80 00 20 */	blr
.endfn get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner

# .text:0x74D4 | 0x8134F8C0 | size: 0x170
# ipl::NandSDWorker::get_sd_wad_header(unsigned long, WADBackupHeader*)
.fn get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader, global
/* 8134F8C0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8134F8C4 | 7C 08 02 A6 */	mflr r0
/* 8134F8C8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8134F8CC | 39 61 00 70 */	addi r11, r1, 0x70
/* 8134F8D0 | 48 2A 9B F1 */	bl _savegpr_27
/* 8134F8D4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8134F8D8 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134F8DC | 7C 7B 1B 78 */	mr r27, r3
/* 8134F8E0 | 7C BC 2B 78 */	mr r28, r5
/* 8134F8E4 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134F8E8 | 40 82 00 1C */	bne .L_8134F904
/* 8134F8EC | 3C 60 00 01 */	lis r3, 0x1
/* 8134F8F0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8134F8F4 | 3B C3 F0 C0 */	subi r30, r3, 0xf40
/* 8134F8F8 | 38 60 00 00 */	li r3, 0x0
/* 8134F8FC | 4B FF 9A AD */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134F900 | 48 00 00 14 */	b .L_8134F914
.L_8134F904:
/* 8134F904 | 3B C6 06 40 */	addi r30, r6, 0x640
/* 8134F908 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8134F90C | 38 60 00 00 */	li r3, 0x0
/* 8134F910 | 4B FF 9B 25 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
.L_8134F914:
/* 8134F914 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8134F918 | 38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 8134F91C | 48 29 87 25 */	bl fn_815E8040
/* 8134F920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F924 | 7C 7D 1B 78 */	mr r29, r3
/* 8134F928 | 40 82 00 28 */	bne .L_8134F950
/* 8134F92C | 38 7F 17 AE */	addi r3, r31, 0x17ae
/* 8134F930 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134F934 | 4C C6 31 82 */	crclr cr1eq
/* 8134F938 | 48 1D ED 69 */	bl OSReport
/* 8134F93C | 7F 63 DB 78 */	mr r3, r27
/* 8134F940 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F944 | 38 80 FF FF */	li r4, -0x1
/* 8134F948 | 48 00 44 B9 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F94C | 48 00 00 C8 */	b .L_8134FA14
.L_8134F950:
/* 8134F950 | 7F C4 F3 78 */	mr r4, r30
/* 8134F954 | 38 A0 00 00 */	li r5, 0x0
/* 8134F958 | 48 29 87 49 */	bl fn_815E80A0
/* 8134F95C | 7C 64 1B 78 */	mr r4, r3
/* 8134F960 | 7F 63 DB 78 */	mr r3, r27
/* 8134F964 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F968 | 48 00 44 99 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F96C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F970 | 41 82 00 20 */	beq .L_8134F990
/* 8134F974 | 38 7F 17 F0 */	addi r3, r31, 0x17f0
/* 8134F978 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134F97C | 4C C6 31 82 */	crclr cr1eq
/* 8134F980 | 48 1D ED 21 */	bl OSReport
/* 8134F984 | 7F A3 EB 78 */	mr r3, r29
/* 8134F988 | 48 29 86 61 */	bl fn_815E7FE8
/* 8134F98C | 48 00 00 88 */	b .L_8134FA14
.L_8134F990:
/* 8134F990 | 7F 83 E3 78 */	mr r3, r28
/* 8134F994 | 7F A6 EB 78 */	mr r6, r29
/* 8134F998 | 38 80 00 70 */	li r4, 0x70
/* 8134F99C | 38 A0 00 01 */	li r5, 0x1
/* 8134F9A0 | 48 29 86 FD */	bl fn_815E809C
/* 8134F9A4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134F9A8 | 41 82 00 34 */	beq .L_8134F9DC
/* 8134F9AC | 7F 63 DB 78 */	mr r3, r27
/* 8134F9B0 | 38 80 FF FF */	li r4, -0x1
/* 8134F9B4 | 38 A0 00 00 */	li r5, 0x0
/* 8134F9B8 | 48 00 44 49 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F9BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F9C0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8134F9C4 | 40 82 00 0C */	bne .L_8134F9D0
/* 8134F9C8 | 38 00 FF FD */	li r0, -0x3
/* 8134F9CC | 90 01 00 08 */	stw r0, 0x8(r1)
.L_8134F9D0:
/* 8134F9D0 | 7F A3 EB 78 */	mr r3, r29
/* 8134F9D4 | 48 29 86 15 */	bl fn_815E7FE8
/* 8134F9D8 | 48 00 00 3C */	b .L_8134FA14
.L_8134F9DC:
/* 8134F9DC | 7F A3 EB 78 */	mr r3, r29
/* 8134F9E0 | 48 29 86 09 */	bl fn_815E7FE8
/* 8134F9E4 | 7C 64 1B 78 */	mr r4, r3
/* 8134F9E8 | 7F 63 DB 78 */	mr r3, r27
/* 8134F9EC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F9F0 | 48 00 44 11 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F9F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F9F8 | 41 82 00 14 */	beq .L_8134FA0C
/* 8134F9FC | 38 7F 1C F0 */	addi r3, r31, 0x1cf0
/* 8134FA00 | 4C C6 31 82 */	crclr cr1eq
/* 8134FA04 | 48 1D EC 9D */	bl OSReport
/* 8134FA08 | 48 00 00 0C */	b .L_8134FA14
.L_8134FA0C:
/* 8134FA0C | 38 00 00 00 */	li r0, 0x0
/* 8134FA10 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_8134FA14:
/* 8134FA14 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8134FA18 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134FA1C | 48 2A 9A F1 */	bl _restgpr_27
/* 8134FA20 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8134FA24 | 7C 08 03 A6 */	mtlr r0
/* 8134FA28 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8134FA2C | 4E 80 00 20 */	blr
.endfn get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader

# .text:0x7644 | 0x8134FA30 | size: 0x174
# ipl::NandSDWorker::do_format_sd()
.fn do_format_sd__Q23ipl12NandSDWorkerFv, global
/* 8134FA30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134FA34 | 7C 08 02 A6 */	mflr r0
/* 8134FA38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134FA3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134FA40 | 48 2A 9A 89 */	bl _savegpr_29
/* 8134FA44 | 80 8D A6 98 */	lwz r4, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134FA48 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134FA4C | 7C 7D 1B 78 */	mr r29, r3
/* 8134FA50 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 8134FA54 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134FA58 | 41 82 00 2C */	beq .L_8134FA84
/* 8134FA5C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8134FA60 | 41 82 00 24 */	beq .L_8134FA84
/* 8134FA64 | 38 7F 1D 49 */	addi r3, r31, 0x1d49
/* 8134FA68 | 4C C6 31 82 */	crclr cr1eq
/* 8134FA6C | 48 1D EC 35 */	bl OSReport
/* 8134FA70 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FA74 | 38 00 FF FE */	li r0, -0x2
/* 8134FA78 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FA7C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134FA80 | 48 00 01 0C */	b .L_8134FB8C
.L_8134FA84:
/* 8134FA84 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134FA88 | 38 80 00 00 */	li r4, 0x0
/* 8134FA8C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134FA90 | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134FA94 | 7C 03 07 74 */	extsb r3, r0
/* 8134FA98 | 48 29 85 D5 */	bl fn_815E806C
/* 8134FA9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FAA0 | 7C 7E 1B 78 */	mr r30, r3
/* 8134FAA4 | 41 82 00 38 */	beq .L_8134FADC
/* 8134FAA8 | 48 29 85 01 */	bl fn_815E7FA8
/* 8134FAAC | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8134FAB0 | 40 82 00 2C */	bne .L_8134FADC
/* 8134FAB4 | 38 7F 1D 8A */	addi r3, r31, 0x1d8a
/* 8134FAB8 | 4C C6 31 82 */	crclr cr1eq
/* 8134FABC | 48 1D EB E5 */	bl OSReport
/* 8134FAC0 | 38 60 00 03 */	li r3, 0x3
/* 8134FAC4 | 38 00 FF F7 */	li r0, -0x9
/* 8134FAC8 | 90 6D A6 98 */	stw r3, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134FACC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FAD0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FAD4 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134FAD8 | 48 00 00 B4 */	b .L_8134FB8C
.L_8134FADC:
/* 8134FADC | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134FAE0 | 7F A3 EB 78 */	mr r3, r29
/* 8134FAE4 | 7F C4 F3 78 */	mr r4, r30
/* 8134FAE8 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8134FAEC | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134FAF0 | 48 00 41 C5 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134FAF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FAF8 | 40 82 00 7C */	bne .L_8134FB74
/* 8134FAFC | 38 7F 1D C7 */	addi r3, r31, 0x1dc7
/* 8134FB00 | 4C C6 31 82 */	crclr cr1eq
/* 8134FB04 | 48 1D EB 9D */	bl OSReport
/* 8134FB08 | 38 00 00 06 */	li r0, 0x6
/* 8134FB0C | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 8134FB10 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB14 | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8134FB18 | 80 04 E6 94 */	lwz r0, -0x196c(r4)
/* 8134FB1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134FB20 | 41 82 00 20 */	beq .L_8134FB40
/* 8134FB24 | 7F A3 EB 78 */	mr r3, r29
/* 8134FB28 | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134FB2C | 48 00 31 69 */	bl clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134FB30 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB34 | 38 00 00 00 */	li r0, 0x0
/* 8134FB38 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FB3C | 90 03 EA 30 */	stw r0, -0x15d0(r3)
.L_8134FB40:
/* 8134FB40 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB44 | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8134FB48 | 80 04 E6 98 */	lwz r0, -0x1968(r4)
/* 8134FB4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134FB50 | 41 82 00 3C */	beq .L_8134FB8C
/* 8134FB54 | 7F A3 EB 78 */	mr r3, r29
/* 8134FB58 | 38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134FB5C | 48 00 33 D1 */	bl clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134FB60 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB64 | 38 00 00 00 */	li r0, 0x0
/* 8134FB68 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FB6C | 90 03 EA 34 */	stw r0, -0x15cc(r3)
/* 8134FB70 | 48 00 00 1C */	b .L_8134FB8C
.L_8134FB74:
/* 8134FB74 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134FB78 | 38 7F 1D EE */	addi r3, r31, 0x1dee
/* 8134FB7C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8134FB80 | 80 84 EA 24 */	lwz r4, -0x15dc(r4)
/* 8134FB84 | 4C C6 31 82 */	crclr cr1eq
/* 8134FB88 | 48 1D EB 19 */	bl OSReport
.L_8134FB8C:
/* 8134FB8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134FB90 | 48 2A 99 85 */	bl _restgpr_29
/* 8134FB94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134FB98 | 7C 08 03 A6 */	mtlr r0
/* 8134FB9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134FBA0 | 4E 80 00 20 */	blr
.endfn do_format_sd__Q23ipl12NandSDWorkerFv

# .text:0x77B8 | 0x8134FBA4 | size: 0xF0
# ipl::NandSDWorker::get_sd_free_area()
.fn get_sd_free_area__Q23ipl12NandSDWorkerFv, global
/* 8134FBA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134FBA8 | 7C 08 02 A6 */	mflr r0
/* 8134FBAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134FBB0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8134FBB4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8134FBB8 | 7C 7F 1B 78 */	mr r31, r3
/* 8134FBBC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134FBC0 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134FBC4 | 88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134FBC8 | 7C 03 07 74 */	extsb r3, r0
/* 8134FBCC | 48 29 85 89 */	bl fn_815E8154
/* 8134FBD0 | 7C 64 1B 78 */	mr r4, r3
/* 8134FBD4 | 7F E3 FB 78 */	mr r3, r31
/* 8134FBD8 | 38 A0 00 00 */	li r5, 0x0
/* 8134FBDC | 48 00 40 D9 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134FBE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FBE4 | 7C 7F 1B 78 */	mr r31, r3
/* 8134FBE8 | 40 82 00 7C */	bne .L_8134FC64
/* 8134FBEC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8134FBF0 | 3C 60 81 63 */	lis r3, lbl_8163789A@ha
/* 8134FBF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134FBF8 | 38 63 78 9A */	addi r3, r3, lbl_8163789A@l
/* 8134FBFC | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8134FC00 | 7C A4 01 D6 */	mullw r5, r4, r0
/* 8134FC04 | 7C 84 00 16 */	mulhwu r4, r4, r0
/* 8134FC08 | 7C 05 30 16 */	mulhwu r0, r5, r6
/* 8134FC0C | 7C 84 31 D6 */	mullw r4, r4, r6
/* 8134FC10 | 7C C5 31 D6 */	mullw r6, r5, r6
/* 8134FC14 | 7C A0 22 14 */	add r5, r0, r4
/* 8134FC18 | 4C C6 31 82 */	crclr cr1eq
/* 8134FC1C | 48 1D EA 85 */	bl OSReport
/* 8134FC20 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134FC24 | 38 C0 00 00 */	li r6, 0x0
/* 8134FC28 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8134FC2C | 7C 03 31 D6 */	mullw r0, r3, r6
/* 8134FC30 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 8134FC34 | 7C A3 21 D6 */	mullw r5, r3, r4
/* 8134FC38 | 7C 63 20 16 */	mulhwu r3, r3, r4
/* 8134FC3C | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8134FC40 | 7C 63 22 14 */	add r3, r3, r4
/* 8134FC44 | 7C 03 02 14 */	add r0, r3, r0
/* 8134FC48 | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8134FC4C | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8134FC50 | 7C 63 22 14 */	add r3, r3, r4
/* 8134FC54 | 7C 07 01 D6 */	mullw r0, r7, r0
/* 8134FC58 | 7C 87 29 D6 */	mullw r4, r7, r5
/* 8134FC5C | 7C 63 02 14 */	add r3, r3, r0
/* 8134FC60 | 48 00 00 20 */	b .L_8134FC80
.L_8134FC64:
/* 8134FC64 | 3C 60 81 63 */	lis r3, lbl_816378C2@ha
/* 8134FC68 | 7F E4 FB 78 */	mr r4, r31
/* 8134FC6C | 38 63 78 C2 */	addi r3, r3, lbl_816378C2@l
/* 8134FC70 | 4C C6 31 82 */	crclr cr1eq
/* 8134FC74 | 48 1D EA 2D */	bl OSReport
/* 8134FC78 | 7F E3 FE 70 */	srawi r3, r31, 31
/* 8134FC7C | 7F E4 FB 78 */	mr r4, r31
.L_8134FC80:
/* 8134FC80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134FC84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8134FC88 | 7C 08 03 A6 */	mtlr r0
/* 8134FC8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134FC90 | 4E 80 00 20 */	blr
.endfn get_sd_free_area__Q23ipl12NandSDWorkerFv

# .text:0x78A8 | 0x8134FC94 | size: 0x214
# ipl::NandSDWorker::delete_download_task(unsigned long)
.fn delete_download_task__Q23ipl12NandSDWorkerFUl, global
/* 8134FC94 | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8134FC98 | 7C 08 02 A6 */	mflr r0
/* 8134FC9C | 90 01 02 44 */	stw r0, 0x244(r1)
/* 8134FCA0 | 39 61 02 40 */	addi r11, r1, 0x240
/* 8134FCA4 | 48 2A 98 09 */	bl _savegpr_22
/* 8134FCA8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134FCAC | 7C 79 1B 78 */	mr r25, r3
/* 8134FCB0 | 3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134FCB4 | 7C 9A 23 78 */	mr r26, r4
/* 8134FCB8 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8134FCBC | 3B 60 00 00 */	li r27, 0x0
/* 8134FCC0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134FCC4 | 3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134FCC8 | 38 80 40 00 */	li r4, 0x4000
/* 8134FCCC | 38 A0 00 20 */	li r5, 0x20
/* 8134FCD0 | 48 20 AA 85 */	bl fn_8155A754
/* 8134FCD4 | 7C 7C 1B 78 */	mr r28, r3
/* 8134FCD8 | 48 1E 5F C1 */	bl OSGetTick
/* 8134FCDC | 38 00 00 00 */	li r0, 0x0
/* 8134FCE0 | 3A E0 00 1E */	li r23, 0x1e
/* 8134FCE4 | 7F 00 B9 D6 */	mullw r24, r0, r23
/* 8134FCE8 | 7C 7E 1B 78 */	mr r30, r3
/* 8134FCEC | 3F E0 80 00 */	lis r31, 0x8000
/* 8134FCF0 | 3A C0 03 E8 */	li r22, 0x3e8
/* 8134FCF4 | 48 00 00 60 */	b .L_8134FD54
.L_8134FCF8:
/* 8134FCF8 | 38 7D 1E 5E */	addi r3, r29, 0x1e5e
/* 8134FCFC | 4C C6 31 82 */	crclr cr1eq
/* 8134FD00 | 48 1D E9 A1 */	bl OSReport
/* 8134FD04 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8134FD08 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8134FD0C | 7C 60 B3 96 */	divwu r3, r0, r22
/* 8134FD10 | 7C 03 B8 16 */	mulhwu r0, r3, r23
/* 8134FD14 | 1C 83 00 1E */	mulli r4, r3, 0x1e
/* 8134FD18 | 7C 60 C2 14 */	add r3, r0, r24
/* 8134FD1C | 48 1E 5E B1 */	bl OSSleepTicks
/* 8134FD20 | 48 1E 5F 79 */	bl OSGetTick
/* 8134FD24 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8134FD28 | 7C 7E 18 50 */	subf r3, r30, r3
/* 8134FD2C | 54 00 F0 BE */	srwi r0, r0, 2
/* 8134FD30 | 7C 00 B3 96 */	divwu r0, r0, r22
/* 8134FD34 | 7C 03 03 96 */	divwu r0, r3, r0
/* 8134FD38 | 28 00 0B B8 */	cmplwi r0, 0xbb8
/* 8134FD3C | 40 81 00 18 */	ble .L_8134FD54
/* 8134FD40 | 38 7D 1E 80 */	addi r3, r29, 0x1e80
/* 8134FD44 | 3B 60 FF FE */	li r27, -0x2
/* 8134FD48 | 4C C6 31 82 */	crclr cr1eq
/* 8134FD4C | 48 1D E9 55 */	bl OSReport
/* 8134FD50 | 48 00 01 10 */	b .L_8134FE60
.L_8134FD54:
/* 8134FD54 | 7F 83 E3 78 */	mr r3, r28
/* 8134FD58 | 48 15 02 BD */	bl NWC24OpenLib
/* 8134FD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FD60 | 40 82 FF 98 */	bne .L_8134FCF8
/* 8134FD64 | 38 00 00 00 */	li r0, 0x0
/* 8134FD68 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134FD6C | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8134FD70 | 38 80 00 01 */	li r4, 0x1
/* 8134FD74 | 48 15 F6 95 */	bl NWC24IterateDlTask
/* 8134FD78 | 48 00 00 C4 */	b .L_8134FE3C
.L_8134FD7C:
/* 8134FD7C | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8134FD80 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134FD84 | 48 16 01 D9 */	bl NWC24GetDlTask
/* 8134FD88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FD8C | 41 82 00 18 */	beq .L_8134FDA4
/* 8134FD90 | 7C 64 1B 78 */	mr r4, r3
/* 8134FD94 | 38 7D 1E A1 */	addi r3, r29, 0x1ea1
/* 8134FD98 | 4C C6 31 82 */	crclr cr1eq
/* 8134FD9C | 48 1D E9 05 */	bl OSReport
/* 8134FDA0 | 48 00 00 90 */	b .L_8134FE30
.L_8134FDA4:
/* 8134FDA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134FDA8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8134FDAC | 48 15 F5 61 */	bl NWC24GetDlAppId
/* 8134FDB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FDB4 | 41 82 00 18 */	beq .L_8134FDCC
/* 8134FDB8 | 7C 64 1B 78 */	mr r4, r3
/* 8134FDBC | 38 7D 1E DA */	addi r3, r29, 0x1eda
/* 8134FDC0 | 4C C6 31 82 */	crclr cr1eq
/* 8134FDC4 | 48 1D E8 DD */	bl OSReport
/* 8134FDC8 | 48 00 00 68 */	b .L_8134FE30
.L_8134FDCC:
/* 8134FDCC | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134FDD0 | 7C 05 D0 40 */	cmplw r5, r26
/* 8134FDD4 | 40 82 00 4C */	bne .L_8134FE20
/* 8134FDD8 | 38 7D 1F 14 */	addi r3, r29, 0x1f14
/* 8134FDDC | 38 81 00 10 */	addi r4, r1, 0x10
/* 8134FDE0 | 4C C6 31 82 */	crclr cr1eq
/* 8134FDE4 | 48 1D E8 BD */	bl OSReport
/* 8134FDE8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134FDEC | 48 15 FD 91 */	bl NWC24DeleteDlTask
/* 8134FDF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FDF4 | 41 82 00 18 */	beq .L_8134FE0C
/* 8134FDF8 | 7C 64 1B 78 */	mr r4, r3
/* 8134FDFC | 38 7D 1E DA */	addi r3, r29, 0x1eda
/* 8134FE00 | 4C C6 31 82 */	crclr cr1eq
/* 8134FE04 | 48 1D E8 9D */	bl OSReport
/* 8134FE08 | 48 00 00 28 */	b .L_8134FE30
.L_8134FE0C:
/* 8134FE0C | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8134FE10 | 38 7D 1F 49 */	addi r3, r29, 0x1f49
/* 8134FE14 | 4C C6 31 82 */	crclr cr1eq
/* 8134FE18 | 48 1D E8 89 */	bl OSReport
/* 8134FE1C | 48 00 00 14 */	b .L_8134FE30
.L_8134FE20:
/* 8134FE20 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8134FE24 | 38 7D 1F 7C */	addi r3, r29, 0x1f7c
/* 8134FE28 | 4C C6 31 82 */	crclr cr1eq
/* 8134FE2C | 48 1D E8 75 */	bl OSReport
.L_8134FE30:
/* 8134FE30 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134FE34 | 38 80 00 00 */	li r4, 0x0
/* 8134FE38 | 48 15 F5 D1 */	bl NWC24IterateDlTask
.L_8134FE3C:
/* 8134FE3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FE40 | 40 80 FF 3C */	bge .L_8134FD7C
/* 8134FE44 | 48 15 03 DD */	bl NWC24CloseLib
/* 8134FE48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FE4C | 41 82 00 14 */	beq .L_8134FE60
/* 8134FE50 | 7C 64 1B 78 */	mr r4, r3
/* 8134FE54 | 38 7D 1F A5 */	addi r3, r29, 0x1fa5
/* 8134FE58 | 4C C6 31 82 */	crclr cr1eq
/* 8134FE5C | 48 1D E8 45 */	bl OSReport
.L_8134FE60:
/* 8134FE60 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8134FE64 | 41 82 00 18 */	beq .L_8134FE7C
/* 8134FE68 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134FE6C | 7F 84 E3 78 */	mr r4, r28
/* 8134FE70 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8134FE74 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134FE78 | 48 20 AB 8D */	bl fn_8155AA04
.L_8134FE7C:
/* 8134FE7C | 7F 44 D3 78 */	mr r4, r26
/* 8134FE80 | 38 7D 1F DD */	addi r3, r29, 0x1fdd
/* 8134FE84 | 4C C6 31 82 */	crclr cr1eq
/* 8134FE88 | 48 1D E8 19 */	bl OSReport
/* 8134FE8C | 39 61 02 40 */	addi r11, r1, 0x240
/* 8134FE90 | 7F 63 DB 78 */	mr r3, r27
/* 8134FE94 | 48 2A 96 65 */	bl _restgpr_22
/* 8134FE98 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 8134FE9C | 7C 08 03 A6 */	mtlr r0
/* 8134FEA0 | 38 21 02 40 */	addi r1, r1, 0x240
/* 8134FEA4 | 4E 80 00 20 */	blr
.endfn delete_download_task__Q23ipl12NandSDWorkerFUl

# .text:0x7ABC | 0x8134FEA8 | size: 0x134
# ipl::NandSDWorker::delete_nand_app_content(unsigned long long)
.fn delete_nand_app_content__Q23ipl12NandSDWorkerFUx, global
/* 8134FEA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134FEAC | 7C 08 02 A6 */	mflr r0
/* 8134FEB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134FEB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134FEB8 | 48 2A 96 0D */	bl _savegpr_28
/* 8134FEBC | 7C DD 33 78 */	mr r29, r6
/* 8134FEC0 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134FEC4 | 7C BE 2B 78 */	mr r30, r5
/* 8134FEC8 | 7C 7C 1B 78 */	mr r28, r3
/* 8134FECC | 7F A4 EB 78 */	mr r4, r29
/* 8134FED0 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134FED4 | 7F C3 F3 78 */	mr r3, r30
/* 8134FED8 | 4B FF 93 BD */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134FEDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FEE0 | 40 82 00 20 */	bne .L_8134FF00
/* 8134FEE4 | 7F A6 EB 78 */	mr r6, r29
/* 8134FEE8 | 7F C5 F3 78 */	mr r5, r30
/* 8134FEEC | 38 7F 20 0A */	addi r3, r31, 0x200a
/* 8134FEF0 | 4C C6 31 82 */	crclr cr1eq
/* 8134FEF4 | 48 1D E7 AD */	bl OSReport
/* 8134FEF8 | 38 60 FF FE */	li r3, -0x2
/* 8134FEFC | 48 00 00 C8 */	b .L_8134FFC4
.L_8134FF00:
/* 8134FF00 | 7F 83 E3 78 */	mr r3, r28
/* 8134FF04 | 7F A6 EB 78 */	mr r6, r29
/* 8134FF08 | 7F C5 F3 78 */	mr r5, r30
/* 8134FF0C | 4B FF 95 CD */	bl delete_meta_file__Q23ipl12NandSDWorkerFUx
/* 8134FF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FF14 | 41 82 00 08 */	beq .L_8134FF1C
/* 8134FF18 | 48 00 00 AC */	b .L_8134FFC4
.L_8134FF1C:
/* 8134FF1C | 7F A4 EB 78 */	mr r4, r29
/* 8134FF20 | 7F C3 F3 78 */	mr r3, r30
/* 8134FF24 | 48 26 ED 25 */	bl fn_815BEC48
/* 8134FF28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FF2C | 41 82 00 1C */	beq .L_8134FF48
/* 8134FF30 | 7C 64 1B 78 */	mr r4, r3
/* 8134FF34 | 38 7F 20 43 */	addi r3, r31, 0x2043
/* 8134FF38 | 4C C6 31 82 */	crclr cr1eq
/* 8134FF3C | 48 1D E7 65 */	bl OSReport
/* 8134FF40 | 38 60 FF FE */	li r3, -0x2
/* 8134FF44 | 48 00 00 80 */	b .L_8134FFC4
.L_8134FF48:
/* 8134FF48 | 7F A6 EB 78 */	mr r6, r29
/* 8134FF4C | 7F C5 F3 78 */	mr r5, r30
/* 8134FF50 | 38 7F 20 74 */	addi r3, r31, 0x2074
/* 8134FF54 | 4C C6 31 82 */	crclr cr1eq
/* 8134FF58 | 48 1D E7 49 */	bl OSReport
/* 8134FF5C | 38 00 FF 00 */	li r0, -0x100
/* 8134FF60 | 3C 80 48 41 */	lis r4, 0x4841
/* 8134FF64 | 7F A5 00 38 */	and r5, r29, r0
/* 8134FF68 | 7F 83 E3 78 */	mr r3, r28
/* 8134FF6C | 38 04 4F 00 */	addi r0, r4, 0x4f00
/* 8134FF70 | 7F A6 EB 78 */	mr r6, r29
/* 8134FF74 | 7C A0 02 78 */	xor r0, r5, r0
/* 8134FF78 | 7F C5 F3 78 */	mr r5, r30
/* 8134FF7C | 7C 00 00 34 */	cntlzw r0, r0
/* 8134FF80 | 54 07 D9 7E */	srwi r7, r0, 5
/* 8134FF84 | 4B FF DB F9 */	bl delete_empty_title__Q23ipl12NandSDWorkerFUxb
/* 8134FF88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FF8C | 41 82 00 0C */	beq .L_8134FF98
/* 8134FF90 | 38 60 FF FE */	li r3, -0x2
/* 8134FF94 | 48 00 00 30 */	b .L_8134FFC4
.L_8134FF98:
/* 8134FF98 | 7F 83 E3 78 */	mr r3, r28
/* 8134FF9C | 7F A4 EB 78 */	mr r4, r29
/* 8134FFA0 | 4B FF FC F5 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
/* 8134FFA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FFA8 | 7C 7E 1B 78 */	mr r30, r3
/* 8134FFAC | 41 82 00 14 */	beq .L_8134FFC0
/* 8134FFB0 | 7F C4 F3 78 */	mr r4, r30
/* 8134FFB4 | 38 7F 20 A3 */	addi r3, r31, 0x20a3
/* 8134FFB8 | 4C C6 31 82 */	crclr cr1eq
/* 8134FFBC | 48 1D E6 E5 */	bl OSReport
.L_8134FFC0:
/* 8134FFC0 | 7F C3 F3 78 */	mr r3, r30
.L_8134FFC4:
/* 8134FFC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134FFC8 | 48 2A 95 49 */	bl _restgpr_28
/* 8134FFCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134FFD0 | 7C 08 03 A6 */	mtlr r0
/* 8134FFD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8134FFD8 | 4E 80 00 20 */	blr
.endfn delete_nand_app_content__Q23ipl12NandSDWorkerFUx

# .text:0x7BF0 | 0x8134FFDC | size: 0x530
# ipl::NandSDWorker::do_copy_nand_app_to_sd()
.fn do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv, global
/* 8134FFDC | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8134FFE0 | 7C 08 02 A6 */	mflr r0
/* 8134FFE4 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 8134FFE8 | 39 61 01 40 */	addi r11, r1, 0x140
/* 8134FFEC | 48 2A 94 C5 */	bl _savegpr_23
/* 8134FFF0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134FFF4 | 7C 77 1B 78 */	mr r23, r3
/* 8134FFF8 | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134FFFC | 3C 80 00 01 */	lis r4, 0x1
/* 81350000 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 81350004 | 38 A0 00 20 */	li r5, 0x20
/* 81350008 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8135000C | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 81350010 | 38 84 CE 40 */	subi r4, r4, 0x31c0
/* 81350014 | 48 20 A7 41 */	bl fn_8155A754
/* 81350018 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8135001C | 7C 7B 1B 78 */	mr r27, r3
/* 81350020 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 81350024 | 3B 40 00 00 */	li r26, 0x0
/* 81350028 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8135002C | 3B 20 00 00 */	li r25, 0x0
/* 81350030 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81350034 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81350038 | 4B FF 93 FD */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8135003C | 7E E3 BB 78 */	mr r3, r23
/* 81350040 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81350044 | 4B FF E9 89 */	bl prepare_sd_copy__Q23ipl12NandSDWorkerFPCc
/* 81350048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135004C | 41 82 00 14 */	beq .L_81350060
/* 81350050 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 81350054 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81350058 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8135005C | 48 00 04 04 */	b .L_81350460
.L_81350060:
/* 81350060 | 7E E3 BB 78 */	mr r3, r23
/* 81350064 | 4B FF FB 41 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 81350068 | 3B E0 00 00 */	li r31, 0x0
/* 8135006C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81350070 | 6F E6 80 00 */	xoris r6, r31, 0x8000
/* 81350074 | 7C 9D 23 78 */	mr r29, r4
/* 81350078 | 7C BF 20 10 */	subfc r5, r31, r4
/* 8135007C | 7C 7E 1B 78 */	mr r30, r3
/* 81350080 | 7C C6 01 10 */	subfe r6, r6, r0
/* 81350084 | 7C C0 01 10 */	subfe r6, r0, r0
/* 81350088 | 7C C6 00 D1 */	neg. r6, r6
/* 8135008C | 41 82 00 14 */	beq .L_813500A0
/* 81350090 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350094 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81350098 | 90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8135009C | 48 00 03 C4 */	b .L_81350460
.L_813500A0:
/* 813500A0 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 813500A4 | 7E E3 BB 78 */	mr r3, r23
/* 813500A8 | 7F 67 DB 78 */	mr r7, r27
/* 813500AC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813500B0 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 813500B4 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 813500B8 | 48 00 05 B5 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 813500BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813500C0 | 41 82 00 14 */	beq .L_813500D4
/* 813500C4 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 813500C8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813500CC | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813500D0 | 48 00 03 90 */	b .L_81350460
.L_813500D4:
/* 813500D4 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 813500D8 | 39 01 00 10 */	addi r8, r1, 0x10
/* 813500DC | 38 A0 00 01 */	li r5, 0x1
/* 813500E0 | 38 E0 00 00 */	li r7, 0x0
/* 813500E4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813500E8 | 39 20 00 03 */	li r9, 0x3
/* 813500EC | 80 03 EA 48 */	lwz r0, -0x15b8(r3)
/* 813500F0 | 80 63 EA 4C */	lwz r3, -0x15b4(r3)
/* 813500F4 | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 813500F8 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 813500FC | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 81350100 | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 81350104 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 81350108 | 3C 86 00 04 */	addis r4, r6, 0x4
/* 8135010C | 3C C6 00 02 */	addis r6, r6, 0x2
/* 81350110 | 38 03 00 3F */	addi r0, r3, 0x3f
/* 81350114 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81350118 | 54 03 00 32 */	clrrwi r3, r0, 6
/* 8135011C | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 81350120 | 3B 03 06 40 */	addi r24, r3, 0x640
/* 81350124 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81350128 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8135012C | 7F 0A C3 78 */	mr r10, r24
/* 81350130 | 48 27 12 4D */	bl fn_815C137C
/* 81350134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350138 | 41 82 00 28 */	beq .L_81350160
/* 8135013C | 7C 64 1B 78 */	mr r4, r3
/* 81350140 | 38 7C 0C 6D */	addi r3, r28, 0xc6d
/* 81350144 | 4C C6 31 82 */	crclr cr1eq
/* 81350148 | 48 1D E5 59 */	bl OSReport
/* 8135014C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350150 | 38 00 FF FE */	li r0, -0x2
/* 81350154 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81350158 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135015C | 48 00 03 04 */	b .L_81350460
.L_81350160:
/* 81350160 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81350164 | 6F C0 80 00 */	xoris r0, r30, 0x8000
/* 81350168 | 6F E5 80 00 */	xoris r5, r31, 0x8000
/* 8135016C | 7C 78 22 14 */	add r3, r24, r4
/* 81350170 | 7C 63 E8 10 */	subfc r3, r3, r29
/* 81350174 | 7C A5 01 10 */	subfe r5, r5, r0
/* 81350178 | 7C A0 01 10 */	subfe r5, r0, r0
/* 8135017C | 7C A5 00 D1 */	neg. r5, r5
/* 81350180 | 41 82 00 24 */	beq .L_813501A4
/* 81350184 | 38 7C 17 47 */	addi r3, r28, 0x1747
/* 81350188 | 4C C6 31 82 */	crclr cr1eq
/* 8135018C | 48 1D E5 15 */	bl OSReport
/* 81350190 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350194 | 38 00 FF F9 */	li r0, -0x7
/* 81350198 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135019C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813501A0 | 48 00 02 C0 */	b .L_81350460
.L_813501A4:
/* 813501A4 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 813501A8 | 48 14 36 4D */	bl NETMD5Init
/* 813501AC | 3B BB 06 40 */	addi r29, r27, 0x640
/* 813501B0 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 813501B4 | 7F A4 EB 78 */	mr r4, r29
/* 813501B8 | 38 B8 F9 C0 */	subi r5, r24, 0x640
/* 813501BC | 48 14 36 79 */	bl NETMD5Update
/* 813501C0 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 813501C4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813501C8 | 48 14 37 5D */	bl NETMD5GetDigest
/* 813501CC | 38 7B 00 1C */	addi r3, r27, 0x1c
/* 813501D0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813501D4 | 38 A0 00 10 */	li r5, 0x10
/* 813501D8 | 4B FE 00 59 */	bl memcpy
/* 813501DC | 3C 80 81 61 */	lis r4, c_md5_secret_key__Q23ipl12NandSDWorker@ha
/* 813501E0 | 38 7B 00 0C */	addi r3, r27, 0xc
/* 813501E4 | 38 84 D6 48 */	addi r4, r4, c_md5_secret_key__Q23ipl12NandSDWorker@l
/* 813501E8 | 38 A0 00 10 */	li r5, 0x10
/* 813501EC | 4B FE 00 45 */	bl memcpy
/* 813501F0 | 38 61 00 68 */	addi r3, r1, 0x68
/* 813501F4 | 48 14 36 01 */	bl NETMD5Init
/* 813501F8 | 7F 64 DB 78 */	mr r4, r27
/* 813501FC | 38 61 00 68 */	addi r3, r1, 0x68
/* 81350200 | 38 A0 06 40 */	li r5, 0x640
/* 81350204 | 48 14 36 31 */	bl NETMD5Update
/* 81350208 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8135020C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81350210 | 48 14 37 15 */	bl NETMD5GetDigest
/* 81350214 | 38 7B 00 0C */	addi r3, r27, 0xc
/* 81350218 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8135021C | 38 A0 00 10 */	li r5, 0x10
/* 81350220 | 4B FE 00 11 */	bl memcpy
/* 81350224 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350228 | 7F 04 C3 78 */	mr r4, r24
/* 8135022C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350230 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81350234 | 48 20 B4 35 */	bl fn_8155B668
/* 81350238 | 7C 7A 1B 78 */	mr r26, r3
/* 8135023C | 7F 63 DB 78 */	mr r3, r27
/* 81350240 | 7F 45 D3 78 */	mr r5, r26
/* 81350244 | 38 80 06 40 */	li r4, 0x640
/* 81350248 | 48 00 3D 91 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8135024C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350250 | 41 82 00 18 */	beq .L_81350268
/* 81350254 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350258 | 38 00 FF FE */	li r0, -0x2
/* 8135025C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81350260 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81350264 | 48 00 01 FC */	b .L_81350460
.L_81350268:
/* 81350268 | 7F A3 EB 78 */	mr r3, r29
/* 8135026C | 38 98 F9 C0 */	subi r4, r24, 0x640
/* 81350270 | 38 BA 06 40 */	addi r5, r26, 0x640
/* 81350274 | 48 00 3D 65 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 81350278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135027C | 41 82 00 18 */	beq .L_81350294
/* 81350280 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350284 | 38 00 FF FE */	li r0, -0x2
/* 81350288 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135028C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81350290 | 48 00 01 D0 */	b .L_81350460
.L_81350294:
/* 81350294 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 81350298 | 3C 60 81 35 */	lis r3, iplNandSD_8135109C@ha
/* 8135029C | 38 63 10 9C */	addi r3, r3, iplNandSD_8135109C@l
/* 813502A0 | 7F 0A C3 78 */	mr r10, r24
/* 813502A4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813502A8 | 3C 85 00 04 */	addis r4, r5, 0x4
/* 813502AC | 3C C5 00 02 */	addis r6, r5, 0x2
/* 813502B0 | 38 E1 00 24 */	addi r7, r1, 0x24
/* 813502B4 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 813502B8 | 39 01 00 10 */	addi r8, r1, 0x10
/* 813502BC | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813502C0 | 3B 20 00 01 */	li r25, 0x1
/* 813502C4 | 38 A0 00 01 */	li r5, 0x1
/* 813502C8 | 39 20 00 03 */	li r9, 0x3
/* 813502CC | 38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 813502D0 | 48 27 10 AD */	bl fn_815C137C
/* 813502D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813502D8 | 41 82 00 28 */	beq .L_81350300
/* 813502DC | 7C 64 1B 78 */	mr r4, r3
/* 813502E0 | 38 7C 0C 6D */	addi r3, r28, 0xc6d
/* 813502E4 | 4C C6 31 82 */	crclr cr1eq
/* 813502E8 | 48 1D E3 B9 */	bl OSReport
/* 813502EC | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 813502F0 | 38 00 FF FE */	li r0, -0x2
/* 813502F4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813502F8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813502FC | 48 00 01 64 */	b .L_81350460
.L_81350300:
/* 81350300 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81350304 | 38 7C 17 81 */	addi r3, r28, 0x1781
/* 81350308 | 4C C6 31 82 */	crclr cr1eq
/* 8135030C | 48 1D E3 95 */	bl OSReport
/* 81350310 | 38 61 00 24 */	addi r3, r1, 0x24
/* 81350314 | 38 8D 81 AA */	li r4, lbl_816961EA@sda21
/* 81350318 | 48 29 7D 29 */	bl fn_815E8040
/* 8135031C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350320 | 7C 7D 1B 78 */	mr r29, r3
/* 81350324 | 40 82 00 30 */	bne .L_81350354
/* 81350328 | 38 7C 17 AE */	addi r3, r28, 0x17ae
/* 8135032C | 38 81 00 24 */	addi r4, r1, 0x24
/* 81350330 | 4C C6 31 82 */	crclr cr1eq
/* 81350334 | 48 1D E3 6D */	bl OSReport
/* 81350338 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8135033C | 7E E3 BB 78 */	mr r3, r23
/* 81350340 | 38 80 FF FF */	li r4, -0x1
/* 81350344 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81350348 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8135034C | 48 00 39 69 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 81350350 | 48 00 01 10 */	b .L_81350460
.L_81350354:
/* 81350354 | 38 7C 17 D0 */	addi r3, r28, 0x17d0
/* 81350358 | 38 81 00 24 */	addi r4, r1, 0x24
/* 8135035C | 4C C6 31 82 */	crclr cr1eq
/* 81350360 | 48 1D E3 41 */	bl OSReport
/* 81350364 | 7F A3 EB 78 */	mr r3, r29
/* 81350368 | 38 80 00 00 */	li r4, 0x0
/* 8135036C | 38 A0 00 00 */	li r5, 0x0
/* 81350370 | 48 29 7D 31 */	bl fn_815E80A0
/* 81350374 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 81350378 | 7C 64 1B 78 */	mr r4, r3
/* 8135037C | 7E E3 BB 78 */	mr r3, r23
/* 81350380 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81350384 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 81350388 | 48 00 39 2D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8135038C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350390 | 41 82 00 20 */	beq .L_813503B0
/* 81350394 | 38 7C 17 F0 */	addi r3, r28, 0x17f0
/* 81350398 | 38 81 00 24 */	addi r4, r1, 0x24
/* 8135039C | 4C C6 31 82 */	crclr cr1eq
/* 813503A0 | 48 1D E3 01 */	bl OSReport
/* 813503A4 | 7F A3 EB 78 */	mr r3, r29
/* 813503A8 | 48 29 7C 41 */	bl fn_815E7FE8
/* 813503AC | 48 00 00 B4 */	b .L_81350460
.L_813503B0:
/* 813503B0 | 7F 43 D3 78 */	mr r3, r26
/* 813503B4 | 7F 04 C3 78 */	mr r4, r24
/* 813503B8 | 7F A6 EB 78 */	mr r6, r29
/* 813503BC | 38 A0 00 01 */	li r5, 0x1
/* 813503C0 | 48 29 7D 91 */	bl fn_815E8150
/* 813503C4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813503C8 | 41 82 00 3C */	beq .L_81350404
/* 813503CC | 7C 65 1B 78 */	mr r5, r3
/* 813503D0 | 38 7C 18 12 */	addi r3, r28, 0x1812
/* 813503D4 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813503D8 | 4C C6 31 82 */	crclr cr1eq
/* 813503DC | 48 1D E2 C5 */	bl OSReport
/* 813503E0 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 813503E4 | 7E E3 BB 78 */	mr r3, r23
/* 813503E8 | 38 80 FF FF */	li r4, -0x1
/* 813503EC | 3C A5 00 04 */	addis r5, r5, 0x4
/* 813503F0 | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 813503F4 | 48 00 38 C1 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 813503F8 | 7F A3 EB 78 */	mr r3, r29
/* 813503FC | 48 29 7B ED */	bl fn_815E7FE8
/* 81350400 | 48 00 00 60 */	b .L_81350460
.L_81350404:
/* 81350404 | 7F A3 EB 78 */	mr r3, r29
/* 81350408 | 48 29 7B E1 */	bl fn_815E7FE8
/* 8135040C | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 81350410 | 7C 64 1B 78 */	mr r4, r3
/* 81350414 | 7E E3 BB 78 */	mr r3, r23
/* 81350418 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 8135041C | 38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 81350420 | 48 00 38 95 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 81350424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350428 | 41 82 00 18 */	beq .L_81350440
/* 8135042C | 38 7C 18 39 */	addi r3, r28, 0x1839
/* 81350430 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81350434 | 4C C6 31 82 */	crclr cr1eq
/* 81350438 | 48 1D E2 69 */	bl OSReport
/* 8135043C | 48 00 00 24 */	b .L_81350460
.L_81350440:
/* 81350440 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350444 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 81350448 | 80 64 EA 34 */	lwz r3, -0x15cc(r4)
/* 8135044C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81350450 | 90 04 EA 34 */	stw r0, -0x15cc(r4)
/* 81350454 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350458 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135045C | 93 E3 EA 24 */	stw r31, -0x15dc(r3)
.L_81350460:
/* 81350460 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350464 | 7F 64 DB 78 */	mr r4, r27
/* 81350468 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135046C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350470 | 48 20 A5 95 */	bl fn_8155AA04
/* 81350474 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81350478 | 41 82 00 18 */	beq .L_81350490
/* 8135047C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350480 | 7F 44 D3 78 */	mr r4, r26
/* 81350484 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350488 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8135048C | 48 20 B1 ED */	bl fn_8155B678
.L_81350490:
/* 81350490 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350494 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81350498 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8135049C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813504A0 | 40 80 00 54 */	bge .L_813504F4
/* 813504A4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813504A8 | 41 82 00 4C */	beq .L_813504F4
/* 813504AC | 38 61 00 24 */	addi r3, r1, 0x24
/* 813504B0 | 48 29 7F 01 */	bl fn_815E83B0
/* 813504B4 | 7C 64 1B 78 */	mr r4, r3
/* 813504B8 | 7E E3 BB 78 */	mr r3, r23
/* 813504BC | 38 A0 00 00 */	li r5, 0x0
/* 813504C0 | 48 00 39 41 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813504C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813504C8 | 40 82 00 18 */	bne .L_813504E0
/* 813504CC | 38 7C 18 5C */	addi r3, r28, 0x185c
/* 813504D0 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813504D4 | 4C C6 31 82 */	crclr cr1eq
/* 813504D8 | 48 1D E1 C9 */	bl OSReport
/* 813504DC | 48 00 00 18 */	b .L_813504F4
.L_813504E0:
/* 813504E0 | 7C 65 1B 78 */	mr r5, r3
/* 813504E4 | 38 7C 18 99 */	addi r3, r28, 0x1899
/* 813504E8 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813504EC | 4C C6 31 82 */	crclr cr1eq
/* 813504F0 | 48 1D E1 B1 */	bl OSReport
.L_813504F4:
/* 813504F4 | 39 61 01 40 */	addi r11, r1, 0x140
/* 813504F8 | 48 2A 90 05 */	bl _restgpr_23
/* 813504FC | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81350500 | 7C 08 03 A6 */	mtlr r0
/* 81350504 | 38 21 01 40 */	addi r1, r1, 0x140
/* 81350508 | 4E 80 00 20 */	blr
.endfn do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv

# .text:0x8120 | 0x8135050C | size: 0x160
# ipl::NandSDWorker::get_save_banner_for_data_only_title(unsigned long long, WIISaveBannerFile*, unsigned long*)
.fn get_save_banner_for_data_only_title__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl, global
/* 8135050C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81350510 | 7C 08 02 A6 */	mflr r0
/* 81350514 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81350518 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135051C | 48 2A 8F A1 */	bl _savegpr_26
/* 81350520 | 38 00 00 00 */	li r0, 0x0
/* 81350524 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81350528 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135052C | 7C FC 3B 78 */	mr r28, r7
/* 81350530 | 7D 1D 43 78 */	mr r29, r8
/* 81350534 | 7C 7A 1B 78 */	mr r26, r3
/* 81350538 | 7C BE 2B 78 */	mr r30, r5
/* 8135053C | 7C DB 33 78 */	mr r27, r6
/* 81350540 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81350544 | 39 01 00 0C */	addi r8, r1, 0xc
/* 81350548 | 39 21 00 08 */	addi r9, r1, 0x8
/* 8135054C | 38 E0 00 00 */	li r7, 0x0
/* 81350550 | 48 00 05 9D */	bl open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView
/* 81350554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350558 | 40 80 00 20 */	bge .L_81350578
/* 8135055C | 7F 66 DB 78 */	mr r6, r27
/* 81350560 | 7F C5 F3 78 */	mr r5, r30
/* 81350564 | 38 7F 20 D3 */	addi r3, r31, 0x20d3
/* 81350568 | 4C C6 31 82 */	crclr cr1eq
/* 8135056C | 48 1D E1 35 */	bl OSReport
/* 81350570 | 38 60 FF FE */	li r3, -0x2
/* 81350574 | 48 00 00 E0 */	b .L_81350654
.L_81350578:
/* 81350578 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8135057C | 7C 7E 1B 78 */	mr r30, r3
/* 81350580 | 38 84 FF C0 */	subi r4, r4, 0x40
/* 81350584 | 28 04 72 A0 */	cmplwi r4, 0x72a0
/* 81350588 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8135058C | 40 80 00 18 */	bge .L_813505A4
/* 81350590 | 38 7F 21 19 */	addi r3, r31, 0x2119
/* 81350594 | 4C C6 31 82 */	crclr cr1eq
/* 81350598 | 48 1D E1 09 */	bl OSReport
/* 8135059C | 3B E0 FF FD */	li r31, -0x3
/* 813505A0 | 48 00 00 8C */	b .L_8135062C
.L_813505A4:
/* 813505A4 | 28 04 F0 A0 */	cmplwi r4, 0xf0a0
/* 813505A8 | 40 81 00 18 */	ble .L_813505C0
/* 813505AC | 38 7F 21 46 */	addi r3, r31, 0x2146
/* 813505B0 | 4C C6 31 82 */	crclr cr1eq
/* 813505B4 | 48 1D E0 ED */	bl OSReport
/* 813505B8 | 3B E0 FF FD */	li r31, -0x3
/* 813505BC | 48 00 00 70 */	b .L_8135062C
.L_813505C0:
/* 813505C0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813505C4 | 41 82 00 08 */	beq .L_813505CC
/* 813505C8 | 90 9D 00 00 */	stw r4, 0x0(r29)
.L_813505CC:
/* 813505CC | 80 E1 00 0C */	lwz r7, 0xc(r1)
/* 813505D0 | 7F 43 D3 78 */	mr r3, r26
/* 813505D4 | 7F C4 F3 78 */	mr r4, r30
/* 813505D8 | 7F 88 E3 78 */	mr r8, r28
/* 813505DC | 38 A0 00 02 */	li r5, 0x2
/* 813505E0 | 38 C0 00 40 */	li r6, 0x40
/* 813505E4 | 48 00 07 25 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 813505E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813505EC | 41 82 00 18 */	beq .L_81350604
/* 813505F0 | 38 7F 21 73 */	addi r3, r31, 0x2173
/* 813505F4 | 4C C6 31 82 */	crclr cr1eq
/* 813505F8 | 48 1D E0 A9 */	bl OSReport
/* 813505FC | 3B E0 FF FE */	li r31, -0x2
/* 81350600 | 48 00 00 2C */	b .L_8135062C
.L_81350604:
/* 81350604 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81350608 | 3C 03 A8 B7 */	subis r0, r3, 0x5749
/* 8135060C | 28 00 42 4E */	cmplwi r0, 0x424e
/* 81350610 | 41 82 00 18 */	beq .L_81350628
/* 81350614 | 38 7F 21 9F */	addi r3, r31, 0x219f
/* 81350618 | 4C C6 31 82 */	crclr cr1eq
/* 8135061C | 48 1D E0 85 */	bl OSReport
/* 81350620 | 3B E0 FF FD */	li r31, -0x3
/* 81350624 | 48 00 00 08 */	b .L_8135062C
.L_81350628:
/* 81350628 | 3B E0 00 00 */	li r31, 0x0
.L_8135062C:
/* 8135062C | 7F C3 F3 78 */	mr r3, r30
/* 81350630 | 48 26 DD 4D */	bl ES_CloseContentFile
/* 81350634 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350638 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135063C | 41 82 00 14 */	beq .L_81350650
/* 81350640 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81350644 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350648 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8135064C | 48 20 A3 B9 */	bl fn_8155AA04
.L_81350650:
/* 81350650 | 7F E3 FB 78 */	mr r3, r31
.L_81350654:
/* 81350654 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81350658 | 48 2A 8E B1 */	bl _restgpr_26
/* 8135065C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81350660 | 7C 08 03 A6 */	mtlr r0
/* 81350664 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81350668 | 4E 80 00 20 */	blr
.endfn get_save_banner_for_data_only_title__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl

# .text:0x8280 | 0x8135066C | size: 0x480
# ipl::NandSDWorker::get_app_banner_from_meta(unsigned long long, ipl::NandSDWorker::SDAppBanner*)
.fn get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner, global
/* 8135066C | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 81350670 | 7C 08 02 A6 */	mflr r0
/* 81350674 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 81350678 | 39 61 01 40 */	addi r11, r1, 0x140
/* 8135067C | 48 2A 8E 2D */	bl _savegpr_21
/* 81350680 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81350684 | 7C 76 1B 78 */	mr r22, r3
/* 81350688 | 3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8135068C | 7C B5 2B 78 */	mr r21, r5
/* 81350690 | 3C 64 00 02 */	addis r3, r4, 0x2
/* 81350694 | 7C D8 33 78 */	mr r24, r6
/* 81350698 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8135069C | 7C F7 3B 78 */	mr r23, r7
/* 813506A0 | 3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 813506A4 | 38 80 14 00 */	li r4, 0x1400
/* 813506A8 | 38 A0 00 20 */	li r5, 0x20
/* 813506AC | 48 20 A0 A9 */	bl fn_8155A754
/* 813506B0 | 80 D6 00 00 */	lwz r6, 0x0(r22)
/* 813506B4 | 7C 7D 1B 78 */	mr r29, r3
/* 813506B8 | 38 80 00 A0 */	li r4, 0xa0
/* 813506BC | 38 A0 00 20 */	li r5, 0x20
/* 813506C0 | 3C 66 00 02 */	addis r3, r6, 0x2
/* 813506C4 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813506C8 | 48 20 A0 8D */	bl fn_8155A754
/* 813506CC | 80 D6 00 00 */	lwz r6, 0x0(r22)
/* 813506D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813506D4 | 38 80 00 20 */	li r4, 0x20
/* 813506D8 | 38 A0 00 20 */	li r5, 0x20
/* 813506DC | 3C 66 00 02 */	addis r3, r6, 0x2
/* 813506E0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813506E4 | 48 20 A0 71 */	bl fn_8155A754
/* 813506E8 | 3B 20 00 00 */	li r25, 0x0
/* 813506EC | 7C 7B 1B 78 */	mr r27, r3
/* 813506F0 | 93 21 00 0C */	stw r25, 0xc(r1)
/* 813506F4 | 7E C3 B3 78 */	mr r3, r22
/* 813506F8 | 7F 06 C3 78 */	mr r6, r24
/* 813506FC | 7E A5 AB 78 */	mr r5, r21
/* 81350700 | 39 01 00 10 */	addi r8, r1, 0x10
/* 81350704 | 39 21 00 0C */	addi r9, r1, 0xc
/* 81350708 | 38 E0 00 00 */	li r7, 0x0
/* 8135070C | 48 00 03 E1 */	bl open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView
/* 81350710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350714 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81350718 | 41 80 00 1C */	blt .L_81350734
/* 8135071C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81350720 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81350724 | 40 81 00 10 */	ble .L_81350734
/* 81350728 | 7C 7A 1B 78 */	mr r26, r3
/* 8135072C | 3B 20 00 02 */	li r25, 0x2
/* 81350730 | 48 00 00 80 */	b .L_813507B0
.L_81350734:
/* 81350734 | 38 00 FF FF */	li r0, -0x1
/* 81350738 | 7E A6 AB 78 */	mr r6, r21
/* 8135073C | 38 61 00 40 */	addi r3, r1, 0x40
/* 81350740 | 38 BE 01 5C */	addi r5, r30, 0x15c
/* 81350744 | 7F 07 00 38 */	and r7, r24, r0
/* 81350748 | 38 80 00 40 */	li r4, 0x40
/* 8135074C | 4C C6 31 82 */	crclr cr1eq
/* 81350750 | 48 2B 02 59 */	bl snprintf
/* 81350754 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81350758 | 38 81 00 80 */	addi r4, r1, 0x80
/* 8135075C | 38 A0 00 01 */	li r5, 0x1
/* 81350760 | 48 00 F5 31 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 81350764 | 7C 75 1B 78 */	mr r21, r3
/* 81350768 | 7E C3 B3 78 */	mr r3, r22
/* 8135076C | 7E A4 AB 78 */	mr r4, r21
/* 81350770 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 81350774 | 48 00 34 E5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81350778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135077C | 40 82 02 98 */	bne .L_81350A14
/* 81350780 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 81350784 | 41 82 00 24 */	beq .L_813507A8
/* 81350788 | 7E A5 AB 78 */	mr r5, r21
/* 8135078C | 38 7E 21 D3 */	addi r3, r30, 0x21d3
/* 81350790 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81350794 | 4C C6 31 82 */	crclr cr1eq
/* 81350798 | 48 1D DF 09 */	bl OSReport
/* 8135079C | 38 00 FF FD */	li r0, -0x3
/* 813507A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813507A4 | 48 00 02 70 */	b .L_81350A14
.L_813507A8:
/* 813507A8 | 3B 41 00 80 */	addi r26, r1, 0x80
/* 813507AC | 3B 20 00 01 */	li r25, 0x1
.L_813507B0:
/* 813507B0 | 7F 83 E3 78 */	mr r3, r28
/* 813507B4 | 38 80 00 00 */	li r4, 0x0
/* 813507B8 | 38 A0 00 A0 */	li r5, 0xa0
/* 813507BC | 4B FD FB 79 */	bl memset
/* 813507C0 | 7E C3 B3 78 */	mr r3, r22
/* 813507C4 | 7F 44 D3 78 */	mr r4, r26
/* 813507C8 | 7F 25 CB 78 */	mr r5, r25
/* 813507CC | 7F 88 E3 78 */	mr r8, r28
/* 813507D0 | 38 C0 00 40 */	li r6, 0x40
/* 813507D4 | 38 E0 00 8C */	li r7, 0x8c
/* 813507D8 | 48 00 05 31 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 813507DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813507E0 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813507E4 | 40 82 02 30 */	bne .L_81350A14
/* 813507E8 | 7E C3 B3 78 */	mr r3, r22
/* 813507EC | 7F 84 E3 78 */	mr r4, r28
/* 813507F0 | 48 00 06 71 */	bl search_meta_header__Q23ipl12NandSDWorkerFPCUc
/* 813507F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813507F8 | 7C 78 1B 78 */	mr r24, r3
/* 813507FC | 40 80 00 20 */	bge .L_8135081C
/* 81350800 | 7F 04 C3 78 */	mr r4, r24
/* 81350804 | 38 7E 21 FA */	addi r3, r30, 0x21fa
/* 81350808 | 4C C6 31 82 */	crclr cr1eq
/* 8135080C | 48 1D DE 95 */	bl OSReport
/* 81350810 | 38 00 FF FD */	li r0, -0x3
/* 81350814 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81350818 | 48 00 01 FC */	b .L_81350A14
.L_8135081C:
/* 8135081C | 3B E0 00 00 */	li r31, 0x0
/* 81350820 | 7E C3 B3 78 */	mr r3, r22
/* 81350824 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81350828 | 7C 9C C2 14 */	add r4, r28, r24
/* 8135082C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81350830 | 48 00 06 85 */	bl check_header_base__Q23ipl12NandSDWorkerFPCUcPUl
/* 81350834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350838 | 40 82 00 1C */	bne .L_81350854
/* 8135083C | 38 7E 22 25 */	addi r3, r30, 0x2225
/* 81350840 | 4C C6 31 82 */	crclr cr1eq
/* 81350844 | 48 1D DE 5D */	bl OSReport
/* 81350848 | 38 00 FF FD */	li r0, -0x3
/* 8135084C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81350850 | 48 00 01 C4 */	b .L_81350A14
.L_81350854:
/* 81350854 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350858 | 38 7E 22 44 */	addi r3, r30, 0x2244
/* 8135085C | 4C C6 31 82 */	crclr cr1eq
/* 81350860 | 48 1D DE 41 */	bl OSReport
/* 81350864 | 38 77 00 40 */	addi r3, r23, 0x40
/* 81350868 | 38 80 00 00 */	li r4, 0x0
/* 8135086C | 38 A0 06 00 */	li r5, 0x600
/* 81350870 | 4B FD FA C5 */	bl memset
/* 81350874 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 81350878 | 7E C3 B3 78 */	mr r3, r22
/* 8135087C | 7F 44 D3 78 */	mr r4, r26
/* 81350880 | 7F 25 CB 78 */	mr r5, r25
/* 81350884 | 7F 06 C3 78 */	mr r6, r24
/* 81350888 | 39 17 00 40 */	addi r8, r23, 0x40
/* 8135088C | 48 00 04 7D */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 81350890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350894 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81350898 | 40 82 01 7C */	bne .L_81350A14
/* 8135089C | 7E C3 B3 78 */	mr r3, r22
/* 813508A0 | 38 97 00 40 */	addi r4, r23, 0x40
/* 813508A4 | 48 00 06 BD */	bl check_header_md5__Q23ipl12NandSDWorkerFPUc
/* 813508A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813508AC | 40 82 00 1C */	bne .L_813508C8
/* 813508B0 | 38 7E 22 65 */	addi r3, r30, 0x2265
/* 813508B4 | 4C C6 31 82 */	crclr cr1eq
/* 813508B8 | 48 1D DD E9 */	bl OSReport
/* 813508BC | 38 00 FF FD */	li r0, -0x3
/* 813508C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813508C4 | 48 00 01 50 */	b .L_81350A14
.L_813508C8:
/* 813508C8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813508CC | 7E C3 B3 78 */	mr r3, r22
/* 813508D0 | 7F 44 D3 78 */	mr r4, r26
/* 813508D4 | 7F 25 CB 78 */	mr r5, r25
/* 813508D8 | 7F 68 DB 78 */	mr r8, r27
/* 813508DC | 7C D8 02 14 */	add r6, r24, r0
/* 813508E0 | 38 E0 00 20 */	li r7, 0x20
/* 813508E4 | 48 00 04 25 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 813508E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813508EC | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813508F0 | 40 82 01 24 */	bne .L_81350A14
/* 813508F4 | 80 BB 00 0C */	lwz r5, 0xc(r27)
/* 813508F8 | 7E C3 B3 78 */	mr r3, r22
/* 813508FC | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81350900 | 7F 44 D3 78 */	mr r4, r26
/* 81350904 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 81350908 | 7F 25 CB 78 */	mr r5, r25
/* 8135090C | 7F A8 EB 78 */	mr r8, r29
/* 81350910 | 7C D8 32 14 */	add r6, r24, r6
/* 81350914 | 54 07 00 34 */	clrrwi r7, r0, 5
/* 81350918 | 48 00 03 F1 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 8135091C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350920 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81350924 | 40 82 00 F0 */	bne .L_81350A14
/* 81350928 | 7F A3 EB 78 */	mr r3, r29
/* 8135092C | 38 81 00 24 */	addi r4, r1, 0x24
/* 81350930 | 48 22 04 71 */	bl ARCInitHandle
/* 81350934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350938 | 40 82 00 20 */	bne .L_81350958
/* 8135093C | 7E A4 AB 78 */	mr r4, r21
/* 81350940 | 38 7E 22 8B */	addi r3, r30, 0x228b
/* 81350944 | 4C C6 31 82 */	crclr cr1eq
/* 81350948 | 48 1D DD 59 */	bl OSReport
/* 8135094C | 38 00 FF FD */	li r0, -0x3
/* 81350950 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81350954 | 48 00 00 C0 */	b .L_81350A14
.L_81350958:
/* 81350958 | 38 61 00 24 */	addi r3, r1, 0x24
/* 8135095C | 38 9E 22 B4 */	addi r4, r30, 0x22b4
/* 81350960 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81350964 | 48 22 04 DD */	bl ARCOpen
/* 81350968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135096C | 40 82 00 20 */	bne .L_8135098C
/* 81350970 | 7E A4 AB 78 */	mr r4, r21
/* 81350974 | 38 7E 22 C3 */	addi r3, r30, 0x22c3
/* 81350978 | 4C C6 31 82 */	crclr cr1eq
/* 8135097C | 48 1D DD 25 */	bl OSReport
/* 81350980 | 38 00 FF FD */	li r0, -0x3
/* 81350984 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81350988 | 48 00 00 8C */	b .L_81350A14
.L_8135098C:
/* 8135098C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81350990 | 48 22 0C 0D */	bl ARCGetLength
/* 81350994 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 81350998 | 7C 75 1B 78 */	mr r21, r3
/* 8135099C | 54 00 00 34 */	clrrwi r0, r0, 5
/* 813509A0 | 28 00 C8 00 */	cmplwi r0, 0xc800
/* 813509A4 | 40 81 00 20 */	ble .L_813509C4
/* 813509A8 | 7E A4 AB 78 */	mr r4, r21
/* 813509AC | 38 7E 22 E6 */	addi r3, r30, 0x22e6
/* 813509B0 | 4C C6 31 82 */	crclr cr1eq
/* 813509B4 | 48 1D DC ED */	bl OSReport
/* 813509B8 | 38 00 FF FD */	li r0, -0x3
/* 813509BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813509C0 | 48 00 00 54 */	b .L_81350A14
.L_813509C4:
/* 813509C4 | 90 77 00 08 */	stw r3, 0x8(r23)
/* 813509C8 | 7E A4 AB 78 */	mr r4, r21
/* 813509CC | 38 7E 23 11 */	addi r3, r30, 0x2311
/* 813509D0 | 4C C6 31 82 */	crclr cr1eq
/* 813509D4 | 48 1D DC CD */	bl OSReport
/* 813509D8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813509DC | 48 22 0B B9 */	bl ARCGetStartOffset
/* 813509E0 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 813509E4 | 7C 03 C2 14 */	add r0, r3, r24
/* 813509E8 | 7E C3 B3 78 */	mr r3, r22
/* 813509EC | 7F 44 D3 78 */	mr r4, r26
/* 813509F0 | 7F 25 CB 78 */	mr r5, r25
/* 813509F4 | 7E A7 AB 78 */	mr r7, r21
/* 813509F8 | 7C C6 02 14 */	add r6, r6, r0
/* 813509FC | 39 17 06 40 */	addi r8, r23, 0x640
/* 81350A00 | 48 00 03 09 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 81350A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350A08 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81350A0C | 40 82 00 08 */	bne .L_81350A14
/* 81350A10 | 93 E1 00 14 */	stw r31, 0x14(r1)
.L_81350A14:
/* 81350A14 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 81350A18 | 40 82 00 10 */	bne .L_81350A28
/* 81350A1C | 7F 43 D3 78 */	mr r3, r26
/* 81350A20 | 48 26 D9 5D */	bl ES_CloseContentFile
/* 81350A24 | 48 00 00 54 */	b .L_81350A78
.L_81350A28:
/* 81350A28 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 81350A2C | 40 82 00 4C */	bne .L_81350A78
/* 81350A30 | 38 61 00 80 */	addi r3, r1, 0x80
/* 81350A34 | 48 00 F2 D1 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 81350A38 | 7C 75 1B 78 */	mr r21, r3
/* 81350A3C | 7E C3 B3 78 */	mr r3, r22
/* 81350A40 | 7E A4 AB 78 */	mr r4, r21
/* 81350A44 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 81350A48 | 48 00 32 11 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81350A4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350A50 | 40 82 00 28 */	bne .L_81350A78
/* 81350A54 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 81350A58 | 41 82 00 20 */	beq .L_81350A78
/* 81350A5C | 7E A5 AB 78 */	mr r5, r21
/* 81350A60 | 38 7E 0A 48 */	addi r3, r30, 0xa48
/* 81350A64 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81350A68 | 4C C6 31 82 */	crclr cr1eq
/* 81350A6C | 48 1D DC 35 */	bl OSReport
/* 81350A70 | 38 00 FF FE */	li r0, -0x2
/* 81350A74 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_81350A78:
/* 81350A78 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350A7C | 7F A4 EB 78 */	mr r4, r29
/* 81350A80 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350A84 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350A88 | 48 20 9F 7D */	bl fn_8155AA04
/* 81350A8C | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350A90 | 7F 84 E3 78 */	mr r4, r28
/* 81350A94 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350A98 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350A9C | 48 20 9F 69 */	bl fn_8155AA04
/* 81350AA0 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350AA4 | 7F 64 DB 78 */	mr r4, r27
/* 81350AA8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350AAC | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350AB0 | 48 20 9F 55 */	bl fn_8155AA04
/* 81350AB4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81350AB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81350ABC | 41 82 00 14 */	beq .L_81350AD0
/* 81350AC0 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350AC4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350AC8 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350ACC | 48 20 9F 39 */	bl fn_8155AA04
.L_81350AD0:
/* 81350AD0 | 39 61 01 40 */	addi r11, r1, 0x140
/* 81350AD4 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 81350AD8 | 48 2A 8A 1D */	bl _restgpr_21
/* 81350ADC | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81350AE0 | 7C 08 03 A6 */	mtlr r0
/* 81350AE4 | 38 21 01 40 */	addi r1, r1, 0x140
/* 81350AE8 | 4E 80 00 20 */	blr
.endfn get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner

# .text:0x8700 | 0x81350AEC | size: 0x21C
# ipl::NandSDWorker::open_nand_app_content(unsigned long long, unsigned short, unsigned long*, ESTicketView**)
.fn open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView, global
/* 81350AEC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81350AF0 | 7C 08 02 A6 */	mflr r0
/* 81350AF4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81350AF8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81350AFC | 48 2A 89 B9 */	bl _savegpr_24
/* 81350B00 | 38 00 00 00 */	li r0, 0x0
/* 81350B04 | 3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 81350B08 | 90 09 00 00 */	stw r0, 0x0(r9)
/* 81350B0C | 7C FA 3B 78 */	mr r26, r7
/* 81350B10 | 7C 7F 1B 78 */	mr r31, r3
/* 81350B14 | 7C B9 2B 78 */	mr r25, r5
/* 81350B18 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81350B1C | 7C D8 33 78 */	mr r24, r6
/* 81350B20 | 7D 1B 43 78 */	mr r27, r8
/* 81350B24 | 7D 3C 4B 78 */	mr r28, r9
/* 81350B28 | 3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 81350B2C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81350B30 | 48 00 14 09 */	bl get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView
/* 81350B34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350B38 | 7C 7D 1B 78 */	mr r29, r3
/* 81350B3C | 40 82 01 68 */	bne .L_81350CA4
/* 81350B40 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81350B44 | 7F 44 D3 78 */	mr r4, r26
/* 81350B48 | 48 00 14 D5 */	bl content_exist__Q23ipl12NandSDWorkerFP9ESTmdViewUl
/* 81350B4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350B50 | 40 82 00 24 */	bne .L_81350B74
/* 81350B54 | 7F 06 C3 78 */	mr r6, r24
/* 81350B58 | 7F 25 CB 78 */	mr r5, r25
/* 81350B5C | 7F 47 D3 78 */	mr r7, r26
/* 81350B60 | 38 7E 23 34 */	addi r3, r30, 0x2334
/* 81350B64 | 4C C6 31 82 */	crclr cr1eq
/* 81350B68 | 48 1D DB 39 */	bl OSReport
/* 81350B6C | 3B A0 FF FE */	li r29, -0x2
/* 81350B70 | 48 00 01 34 */	b .L_81350CA4
.L_81350B74:
/* 81350B74 | 7F 04 C3 78 */	mr r4, r24
/* 81350B78 | 7F 23 CB 78 */	mr r3, r25
/* 81350B7C | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81350B80 | 38 A0 00 00 */	li r5, 0x0
/* 81350B84 | 48 26 DD 85 */	bl fn_815BE908
/* 81350B88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350B8C | 41 82 00 20 */	beq .L_81350BAC
/* 81350B90 | 7F 06 C3 78 */	mr r6, r24
/* 81350B94 | 7F 25 CB 78 */	mr r5, r25
/* 81350B98 | 38 7E 23 68 */	addi r3, r30, 0x2368
/* 81350B9C | 4C C6 31 82 */	crclr cr1eq
/* 81350BA0 | 48 1D DB 01 */	bl OSReport
/* 81350BA4 | 3B A0 FF FE */	li r29, -0x2
/* 81350BA8 | 48 00 00 FC */	b .L_81350CA4
.L_81350BAC:
/* 81350BAC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81350BB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81350BB4 | 40 82 00 20 */	bne .L_81350BD4
/* 81350BB8 | 7F 06 C3 78 */	mr r6, r24
/* 81350BBC | 7F 25 CB 78 */	mr r5, r25
/* 81350BC0 | 38 7E 23 A3 */	addi r3, r30, 0x23a3
/* 81350BC4 | 4C C6 31 82 */	crclr cr1eq
/* 81350BC8 | 48 1D DA D9 */	bl OSReport
/* 81350BCC | 3B A0 FF FE */	li r29, -0x2
/* 81350BD0 | 48 00 00 D4 */	b .L_81350CA4
.L_81350BD4:
/* 81350BD4 | 1C 60 00 D8 */	mulli r3, r0, 0xd8
/* 81350BD8 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81350BDC | 38 A0 00 20 */	li r5, 0x20
/* 81350BE0 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81350BE4 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 81350BE8 | 80 64 E6 90 */	lwz r3, -0x1970(r4)
/* 81350BEC | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81350BF0 | 48 20 9B 65 */	bl fn_8155A754
/* 81350BF4 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 81350BF8 | 7C 65 1B 78 */	mr r5, r3
/* 81350BFC | 7F 04 C3 78 */	mr r4, r24
/* 81350C00 | 7F 23 CB 78 */	mr r3, r25
/* 81350C04 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81350C08 | 48 26 DD 01 */	bl fn_815BE908
/* 81350C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350C10 | 41 82 00 20 */	beq .L_81350C30
/* 81350C14 | 7F 06 C3 78 */	mr r6, r24
/* 81350C18 | 7F 25 CB 78 */	mr r5, r25
/* 81350C1C | 38 7E 23 68 */	addi r3, r30, 0x2368
/* 81350C20 | 4C C6 31 82 */	crclr cr1eq
/* 81350C24 | 48 1D DA 7D */	bl OSReport
/* 81350C28 | 3B A0 FF FE */	li r29, -0x2
/* 81350C2C | 48 00 00 78 */	b .L_81350CA4
.L_81350C30:
/* 81350C30 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81350C34 | 7F 04 C3 78 */	mr r4, r24
/* 81350C38 | 7F 23 CB 78 */	mr r3, r25
/* 81350C3C | 7F 46 D3 78 */	mr r6, r26
/* 81350C40 | 48 26 D5 79 */	bl ES_OpenTitleContentFile
/* 81350C44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350C48 | 40 80 00 28 */	bge .L_81350C70
/* 81350C4C | 7C 68 1B 78 */	mr r8, r3
/* 81350C50 | 7F 06 C3 78 */	mr r6, r24
/* 81350C54 | 7F 25 CB 78 */	mr r5, r25
/* 81350C58 | 7F 47 D3 78 */	mr r7, r26
/* 81350C5C | 38 7E 23 D3 */	addi r3, r30, 0x23d3
/* 81350C60 | 4C C6 31 82 */	crclr cr1eq
/* 81350C64 | 48 1D DA 3D */	bl OSReport
/* 81350C68 | 3B A0 FF FE */	li r29, -0x2
/* 81350C6C | 48 00 00 38 */	b .L_81350CA4
.L_81350C70:
/* 81350C70 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350C74 | 57 40 23 36 */	clrlslwi r0, r26, 16, 4
/* 81350C78 | 7C 7D 1B 78 */	mr r29, r3
/* 81350C7C | 7C 68 1B 78 */	mr r8, r3
/* 81350C80 | 7C 84 02 14 */	add r4, r4, r0
/* 81350C84 | 7F 06 C3 78 */	mr r6, r24
/* 81350C88 | 81 24 00 68 */	lwz r9, 0x68(r4)
/* 81350C8C | 7F 25 CB 78 */	mr r5, r25
/* 81350C90 | 7F 47 D3 78 */	mr r7, r26
/* 81350C94 | 38 7E 24 20 */	addi r3, r30, 0x2420
/* 81350C98 | 91 3B 00 00 */	stw r9, 0x0(r27)
/* 81350C9C | 4C C6 31 82 */	crclr cr1eq
/* 81350CA0 | 48 1D DA 01 */	bl OSReport
.L_81350CA4:
/* 81350CA4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350CA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81350CAC | 41 82 00 14 */	beq .L_81350CC0
/* 81350CB0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81350CB4 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350CB8 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350CBC | 48 20 9D 49 */	bl fn_8155AA04
.L_81350CC0:
/* 81350CC0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81350CC4 | 41 82 00 28 */	beq .L_81350CEC
/* 81350CC8 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81350CCC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81350CD0 | 41 82 00 14 */	beq .L_81350CE4
/* 81350CD4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81350CD8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81350CDC | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350CE0 | 48 20 9D 25 */	bl fn_8155AA04
.L_81350CE4:
/* 81350CE4 | 38 00 00 00 */	li r0, 0x0
/* 81350CE8 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81350CEC:
/* 81350CEC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81350CF0 | 7F A3 EB 78 */	mr r3, r29
/* 81350CF4 | 48 2A 88 0D */	bl _restgpr_24
/* 81350CF8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81350CFC | 7C 08 03 A6 */	mtlr r0
/* 81350D00 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81350D04 | 4E 80 00 20 */	blr
.endfn open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView

# .text:0x891C | 0x81350D08 | size: 0x158
# ipl::NandSDWorker::read_file(void*, ipl::NandSDWorker::FileKind, long, unsigned long, void*)
.fn read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv, global
/* 81350D08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81350D0C | 7C 08 02 A6 */	mflr r0
/* 81350D10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81350D14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81350D18 | 48 2A 87 A5 */	bl _savegpr_26
/* 81350D1C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81350D20 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81350D24 | 7C 7A 1B 78 */	mr r26, r3
/* 81350D28 | 7C 9B 23 78 */	mr r27, r4
/* 81350D2C | 7C DC 33 78 */	mr r28, r6
/* 81350D30 | 7C FD 3B 78 */	mr r29, r7
/* 81350D34 | 7D 1E 43 78 */	mr r30, r8
/* 81350D38 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81350D3C | 40 82 00 94 */	bne .L_81350DD0
/* 81350D40 | 7F 63 DB 78 */	mr r3, r27
/* 81350D44 | 7F 84 E3 78 */	mr r4, r28
/* 81350D48 | 38 A0 00 00 */	li r5, 0x0
/* 81350D4C | 48 00 F1 05 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 81350D50 | 7C 03 E0 00 */	cmpw r3, r28
/* 81350D54 | 40 80 00 1C */	bge .L_81350D70
/* 81350D58 | 7C 64 1B 78 */	mr r4, r3
/* 81350D5C | 38 7F 24 70 */	addi r3, r31, 0x2470
/* 81350D60 | 4C C6 31 82 */	crclr cr1eq
/* 81350D64 | 48 1D D9 3D */	bl OSReport
/* 81350D68 | 38 60 FF FD */	li r3, -0x3
/* 81350D6C | 48 00 00 DC */	b .L_81350E48
.L_81350D70:
/* 81350D70 | 38 1D 00 1F */	addi r0, r29, 0x1f
/* 81350D74 | 7F 63 DB 78 */	mr r3, r27
/* 81350D78 | 7F C4 F3 78 */	mr r4, r30
/* 81350D7C | 54 05 00 34 */	clrrwi r5, r0, 5
/* 81350D80 | 48 00 EF E9 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 81350D84 | 7C 7E 1B 78 */	mr r30, r3
/* 81350D88 | 7F 43 D3 78 */	mr r3, r26
/* 81350D8C | 7F C4 F3 78 */	mr r4, r30
/* 81350D90 | 38 A0 00 00 */	li r5, 0x0
/* 81350D94 | 48 00 2E C5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81350D98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350D9C | 41 82 00 0C */	beq .L_81350DA8
/* 81350DA0 | 38 60 FF FB */	li r3, -0x5
/* 81350DA4 | 48 00 00 A4 */	b .L_81350E48
.L_81350DA8:
/* 81350DA8 | 7C 1E E8 40 */	cmplw r30, r29
/* 81350DAC | 40 80 00 1C */	bge .L_81350DC8
/* 81350DB0 | 7F C4 F3 78 */	mr r4, r30
/* 81350DB4 | 38 7F 24 93 */	addi r3, r31, 0x2493
/* 81350DB8 | 4C C6 31 82 */	crclr cr1eq
/* 81350DBC | 48 1D D8 E5 */	bl OSReport
/* 81350DC0 | 38 60 FF FD */	li r3, -0x3
/* 81350DC4 | 48 00 00 84 */	b .L_81350E48
.L_81350DC8:
/* 81350DC8 | 38 60 00 00 */	li r3, 0x0
/* 81350DCC | 48 00 00 7C */	b .L_81350E48
.L_81350DD0:
/* 81350DD0 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 81350DD4 | 40 82 00 70 */	bne .L_81350E44
/* 81350DD8 | 7F 63 DB 78 */	mr r3, r27
/* 81350DDC | 7F 84 E3 78 */	mr r4, r28
/* 81350DE0 | 38 A0 00 00 */	li r5, 0x0
/* 81350DE4 | 48 26 D5 0D */	bl ES_SeekContentFile
/* 81350DE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81350DEC | 40 80 00 1C */	bge .L_81350E08
/* 81350DF0 | 7C 64 1B 78 */	mr r4, r3
/* 81350DF4 | 38 7F 24 B7 */	addi r3, r31, 0x24b7
/* 81350DF8 | 4C C6 31 82 */	crclr cr1eq
/* 81350DFC | 48 1D D8 A5 */	bl OSReport
/* 81350E00 | 38 60 FF FD */	li r3, -0x3
/* 81350E04 | 48 00 00 44 */	b .L_81350E48
.L_81350E08:
/* 81350E08 | 38 1D 00 1F */	addi r0, r29, 0x1f
/* 81350E0C | 7F 63 DB 78 */	mr r3, r27
/* 81350E10 | 7F C4 F3 78 */	mr r4, r30
/* 81350E14 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 81350E18 | 48 26 D4 39 */	bl ES_ReadContentFile
/* 81350E1C | 7C 03 E8 40 */	cmplw r3, r29
/* 81350E20 | 40 80 00 1C */	bge .L_81350E3C
/* 81350E24 | 7C 64 1B 78 */	mr r4, r3
/* 81350E28 | 38 7F 24 E5 */	addi r3, r31, 0x24e5
/* 81350E2C | 4C C6 31 82 */	crclr cr1eq
/* 81350E30 | 48 1D D8 71 */	bl OSReport
/* 81350E34 | 38 60 FF FD */	li r3, -0x3
/* 81350E38 | 48 00 00 10 */	b .L_81350E48
.L_81350E3C:
/* 81350E3C | 38 60 00 00 */	li r3, 0x0
/* 81350E40 | 48 00 00 08 */	b .L_81350E48
.L_81350E44:
/* 81350E44 | 38 60 FF FE */	li r3, -0x2
.L_81350E48:
/* 81350E48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81350E4C | 48 2A 86 BD */	bl _restgpr_26
/* 81350E50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81350E54 | 7C 08 03 A6 */	mtlr r0
/* 81350E58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81350E5C | 4E 80 00 20 */	blr
.endfn read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv

# .text:0x8A74 | 0x81350E60 | size: 0x54
# ipl::NandSDWorker::search_meta_header(const unsigned char*)
.fn search_meta_header__Q23ipl12NandSDWorkerFPCUc, global
/* 81350E60 | 38 00 00 A0 */	li r0, 0xa0
/* 81350E64 | 38 AD 81 AF */	li r5, lbl_816961EF@sda21
/* 81350E68 | 38 C0 00 00 */	li r6, 0x0
/* 81350E6C | 38 E0 00 00 */	li r7, 0x0
/* 81350E70 | 7C 09 03 A6 */	mtctr r0
.L_81350E74:
/* 81350E74 | 7C 05 30 AE */	lbzx r0, r5, r6
/* 81350E78 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81350E7C | 7C 00 07 74 */	extsb r0, r0
/* 81350E80 | 7C 03 00 00 */	cmpw r3, r0
/* 81350E84 | 40 82 00 18 */	bne .L_81350E9C
/* 81350E88 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81350E8C | 2C 06 00 04 */	cmpwi r6, 0x4
/* 81350E90 | 40 82 00 10 */	bne .L_81350EA0
/* 81350E94 | 38 67 FF FD */	subi r3, r7, 0x3
/* 81350E98 | 4E 80 00 20 */	blr
.L_81350E9C:
/* 81350E9C | 38 C0 00 00 */	li r6, 0x0
.L_81350EA0:
/* 81350EA0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81350EA4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81350EA8 | 42 00 FF CC */	bdnz .L_81350E74
/* 81350EAC | 38 60 FF FF */	li r3, -0x1
/* 81350EB0 | 4E 80 00 20 */	blr
.endfn search_meta_header__Q23ipl12NandSDWorkerFPCUc

# .text:0x8AC8 | 0x81350EB4 | size: 0xAC
# ipl::NandSDWorker::check_header_base(const unsigned char*, unsigned long*)
.fn check_header_base__Q23ipl12NandSDWorkerFPCUcPUl, global
/* 81350EB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81350EB8 | 7C 08 02 A6 */	mflr r0
/* 81350EBC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81350EC0 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81350EC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81350EC8 | 41 82 00 08 */	beq .L_81350ED0
/* 81350ECC | 90 C5 00 00 */	stw r6, 0x0(r5)
.L_81350ED0:
/* 81350ED0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81350ED4 | 2C 00 00 49 */	cmpwi r0, 0x49
/* 81350ED8 | 40 82 00 30 */	bne .L_81350F08
/* 81350EDC | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81350EE0 | 2C 00 00 4D */	cmpwi r0, 0x4d
/* 81350EE4 | 40 82 00 24 */	bne .L_81350F08
/* 81350EE8 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 81350EEC | 2C 00 00 45 */	cmpwi r0, 0x45
/* 81350EF0 | 40 82 00 18 */	bne .L_81350F08
/* 81350EF4 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81350EF8 | 2C 00 00 54 */	cmpwi r0, 0x54
/* 81350EFC | 40 82 00 0C */	bne .L_81350F08
/* 81350F00 | 28 06 00 1C */	cmplwi r6, 0x1c
/* 81350F04 | 40 80 00 20 */	bge .L_81350F24
.L_81350F08:
/* 81350F08 | 3C 60 81 63 */	lis r3, lbl_81637F9B@ha
/* 81350F0C | 7C C4 33 78 */	mr r4, r6
/* 81350F10 | 38 63 7F 9B */	addi r3, r3, lbl_81637F9B@l
/* 81350F14 | 4C C6 31 82 */	crclr cr1eq
/* 81350F18 | 48 1D D7 89 */	bl OSReport
/* 81350F1C | 38 60 00 00 */	li r3, 0x0
/* 81350F20 | 48 00 00 30 */	b .L_81350F50
.L_81350F24:
/* 81350F24 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81350F28 | 28 04 00 03 */	cmplwi r4, 0x3
/* 81350F2C | 41 82 00 20 */	beq .L_81350F4C
/* 81350F30 | 3C 60 81 63 */	lis r3, lbl_81637FD0@ha
/* 81350F34 | 38 A0 00 03 */	li r5, 0x3
/* 81350F38 | 38 63 7F D0 */	addi r3, r3, lbl_81637FD0@l
/* 81350F3C | 4C C6 31 82 */	crclr cr1eq
/* 81350F40 | 48 1D D7 61 */	bl OSReport
/* 81350F44 | 38 60 00 00 */	li r3, 0x0
/* 81350F48 | 48 00 00 08 */	b .L_81350F50
.L_81350F4C:
/* 81350F4C | 38 60 00 01 */	li r3, 0x1
.L_81350F50:
/* 81350F50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81350F54 | 7C 08 03 A6 */	mtlr r0
/* 81350F58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81350F5C | 4E 80 00 20 */	blr
.endfn check_header_base__Q23ipl12NandSDWorkerFPCUcPUl

# .text:0x8B74 | 0x81350F60 | size: 0x9C
# ipl::NandSDWorker::check_header_md5(unsigned char*)
.fn check_header_md5__Q23ipl12NandSDWorkerFPUc, global
/* 81350F60 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81350F64 | 7C 08 02 A6 */	mflr r0
/* 81350F68 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81350F6C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81350F70 | 48 2A 85 59 */	bl _savegpr_29
/* 81350F74 | 83 E4 00 44 */	lwz r31, 0x44(r4)
/* 81350F78 | 7C 7D 1B 78 */	mr r29, r3
/* 81350F7C | 38 00 00 10 */	li r0, 0x10
/* 81350F80 | 7C 9E 23 78 */	mr r30, r4
/* 81350F84 | 7C A4 FA 14 */	add r5, r4, r31
/* 81350F88 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81350F8C | 38 C0 00 00 */	li r6, 0x0
/* 81350F90 | 7C 09 03 A6 */	mtctr r0
.L_81350F94:
/* 81350F94 | 7C 85 32 14 */	add r4, r5, r6
/* 81350F98 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81350F9C | 88 04 FF F0 */	lbz r0, -0x10(r4)
/* 81350FA0 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81350FA4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81350FA8 | 42 00 FF EC */	bdnz .L_81350F94
/* 81350FAC | 7F C3 F3 78 */	mr r3, r30
/* 81350FB0 | 38 80 00 00 */	li r4, 0x0
/* 81350FB4 | 38 A0 00 40 */	li r5, 0x40
/* 81350FB8 | 4B FD F3 7D */	bl memset
/* 81350FBC | 7C 7F F2 14 */	add r3, r31, r30
/* 81350FC0 | 38 80 00 00 */	li r4, 0x0
/* 81350FC4 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 81350FC8 | 38 A0 00 10 */	li r5, 0x10
/* 81350FCC | 4B FD F3 69 */	bl memset
/* 81350FD0 | 7F A3 EB 78 */	mr r3, r29
/* 81350FD4 | 7F C5 F3 78 */	mr r5, r30
/* 81350FD8 | 7F E6 FB 78 */	mr r6, r31
/* 81350FDC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81350FE0 | 48 00 00 1D */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 81350FE4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81350FE8 | 48 2A 85 2D */	bl _restgpr_29
/* 81350FEC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81350FF0 | 7C 08 03 A6 */	mtlr r0
/* 81350FF4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81350FF8 | 4E 80 00 20 */	blr
.endfn check_header_md5__Q23ipl12NandSDWorkerFPUc

# .text:0x8C10 | 0x81350FFC | size: 0xA0
# ipl::NandSDWorker::check_md5(const unsigned char*, const unsigned char*, unsigned long)
.fn check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl, global
/* 81350FFC | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81351000 | 7C 08 02 A6 */	mflr r0
/* 81351004 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81351008 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8135100C | 48 2A 84 BD */	bl _savegpr_29
/* 81351010 | 7C 9D 23 78 */	mr r29, r4
/* 81351014 | 7C BE 2B 78 */	mr r30, r5
/* 81351018 | 7C DF 33 78 */	mr r31, r6
/* 8135101C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81351020 | 48 14 27 D5 */	bl NETMD5Init
/* 81351024 | 7F C4 F3 78 */	mr r4, r30
/* 81351028 | 7F E5 FB 78 */	mr r5, r31
/* 8135102C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81351030 | 48 14 28 05 */	bl NETMD5Update
/* 81351034 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81351038 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135103C | 48 14 28 E9 */	bl NETMD5GetDigest
/* 81351040 | 38 00 00 10 */	li r0, 0x10
/* 81351044 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81351048 | 7C 09 03 A6 */	mtctr r0
.L_8135104C:
/* 8135104C | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81351050 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81351054 | 7C 04 00 40 */	cmplw r4, r0
/* 81351058 | 41 82 00 1C */	beq .L_81351074
/* 8135105C | 3C 60 81 64 */	lis r3, lbl_81638004@ha
/* 81351060 | 38 63 80 04 */	addi r3, r3, lbl_81638004@l
/* 81351064 | 4C C6 31 82 */	crclr cr1eq
/* 81351068 | 48 1D D6 39 */	bl OSReport
/* 8135106C | 38 60 00 00 */	li r3, 0x0
/* 81351070 | 48 00 00 14 */	b .L_81351084
.L_81351074:
/* 81351074 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81351078 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8135107C | 42 00 FF D0 */	bdnz .L_8135104C
/* 81351080 | 38 60 00 01 */	li r3, 0x1
.L_81351084:
/* 81351084 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81351088 | 48 2A 84 8D */	bl _restgpr_29
/* 8135108C | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81351090 | 7C 08 03 A6 */	mtlr r0
/* 81351094 | 38 21 00 80 */	addi r1, r1, 0x80
/* 81351098 | 4E 80 00 20 */	blr
.endfn check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl

# .text:0x8CB0 | 0x8135109C | size: 0x58
.fn iplNandSD_8135109C, local
/* 8135109C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813510A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813510A4 | 41 82 00 48 */	beq .L_813510EC
/* 813510A8 | 3C 00 43 30 */	lis r0, 0x4330
/* 813510AC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813510B0 | C8 62 81 88 */	lfd f3, lbl_81694588@sda21(r0)
/* 813510B4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813510B8 | C0 22 81 80 */	lfs f1, lbl_81694580@sda21(r0)
/* 813510BC | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813510C0 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813510C4 | EC 40 18 28 */	fsubs f2, f0, f3
/* 813510C8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813510CC | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813510D0 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 813510D4 | EC 00 18 28 */	fsubs f0, f0, f3
/* 813510D8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 813510DC | FC 00 00 1E */	fctiwz f0, f0
/* 813510E0 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 813510E4 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813510E8 | 90 0D A6 9C */	stw r0, lbl_816986DC@sda21(r0)
.L_813510EC:
/* 813510EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813510F0 | 4E 80 00 20 */	blr
.endfn iplNandSD_8135109C

# .text:0x8D08 | 0x813510F4 | size: 0x4B0
# ipl::NandSDWorker::do_copy_sd_app_to_nand()
.fn do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv, global
/* 813510F4 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813510F8 | 7C 08 02 A6 */	mflr r0
/* 813510FC | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81351100 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81351104 | 48 2A 83 C1 */	bl _savegpr_28
/* 81351108 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135110C | 7C 7C 1B 78 */	mr r28, r3
/* 81351110 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81351114 | 7C 9D 23 78 */	mr r29, r4
/* 81351118 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8135111C | 38 80 06 40 */	li r4, 0x640
/* 81351120 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81351124 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351128 | 48 20 A5 41 */	bl fn_8155B668
/* 8135112C | 38 00 00 00 */	li r0, 0x0
/* 81351130 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81351134 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81351138 | 7C 7E 1B 78 */	mr r30, r3
/* 8135113C | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81351140 | 40 82 00 5C */	bne .L_8135119C
/* 81351144 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81351148 | 48 21 97 1D */	bl fn_8156A864
/* 8135114C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351150 | 41 82 00 40 */	beq .L_81351190
/* 81351154 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81351158 | 38 7F 25 A8 */	addi r3, r31, 0x25a8
/* 8135115C | 4C C6 31 82 */	crclr cr1eq
/* 81351160 | 48 1D D5 41 */	bl OSReport
/* 81351164 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81351168 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135116C | 40 82 00 30 */	bne .L_8135119C
/* 81351170 | 38 7F 25 D1 */	addi r3, r31, 0x25d1
/* 81351174 | 4C C6 31 82 */	crclr cr1eq
/* 81351178 | 48 1D D5 29 */	bl OSReport
/* 8135117C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351180 | 38 00 FF F9 */	li r0, -0x7
/* 81351184 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81351188 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135118C | 48 00 03 E4 */	b .L_81351570
.L_81351190:
/* 81351190 | 38 7F 26 0F */	addi r3, r31, 0x260f
/* 81351194 | 4C C6 31 82 */	crclr cr1eq
/* 81351198 | 48 1D D5 09 */	bl OSReport
.L_8135119C:
/* 8135119C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813511A0 | 7F 83 E3 78 */	mr r3, r28
/* 813511A4 | 7F C5 F3 78 */	mr r5, r30
/* 813511A8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813511AC | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813511B0 | 48 00 04 B1 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 813511B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813511B8 | 41 82 00 14 */	beq .L_813511CC
/* 813511BC | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813511C0 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813511C4 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813511C8 | 48 00 03 A8 */	b .L_81351570
.L_813511CC:
/* 813511CC | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813511D0 | 7F 83 E3 78 */	mr r3, r28
/* 813511D4 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813511D8 | 48 00 09 D9 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 813511DC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813511E0 | 40 82 00 2C */	bne .L_8135120C
/* 813511E4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813511E8 | 38 7F 0B E9 */	addi r3, r31, 0xbe9
/* 813511EC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813511F0 | 4C C6 31 82 */	crclr cr1eq
/* 813511F4 | 48 1D D4 AD */	bl OSReport
/* 813511F8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813511FC | 38 00 FF FA */	li r0, -0x6
/* 81351200 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81351204 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351208 | 48 00 03 68 */	b .L_81351570
.L_8135120C:
/* 8135120C | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81351210 | 7F 83 E3 78 */	mr r3, r28
/* 81351214 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81351218 | 38 E1 00 0A */	addi r7, r1, 0xa
/* 8135121C | 48 00 35 A5 */	bl iplNandSD_813547C0
/* 81351220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351224 | 41 82 00 14 */	beq .L_81351238
/* 81351228 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8135122C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81351230 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81351234 | 48 00 03 3C */	b .L_81351570
.L_81351238:
/* 81351238 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135123C | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81351240 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 81351244 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81351248 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8135124C | 4B FF 81 E9 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 81351250 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81351254 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81351258 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8135125C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81351260 | 38 06 00 3F */	addi r0, r6, 0x3f
/* 81351264 | 38 C0 00 03 */	li r6, 0x3
/* 81351268 | 54 07 00 32 */	clrrwi r7, r0, 6
/* 8135126C | 38 E7 06 40 */	addi r7, r7, 0x640
/* 81351270 | 48 26 E4 C5 */	bl fn_815BF734
/* 81351274 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351278 | 41 82 00 28 */	beq .L_813512A0
/* 8135127C | 7C 64 1B 78 */	mr r4, r3
/* 81351280 | 38 7F 0A FD */	addi r3, r31, 0xafd
/* 81351284 | 4C C6 31 82 */	crclr cr1eq
/* 81351288 | 48 1D D4 19 */	bl OSReport
/* 8135128C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351290 | 38 00 FF FE */	li r0, -0x2
/* 81351294 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81351298 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135129C | 48 00 02 D4 */	b .L_81351570
.L_813512A0:
/* 813512A0 | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 813512A4 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813512A8 | 81 1E 00 04 */	lwz r8, 0x4(r30)
/* 813512AC | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 813512B0 | 7C A0 3A 78 */	xor r0, r5, r7
/* 813512B4 | 7C C3 42 78 */	xor r3, r6, r8
/* 813512B8 | 7C 60 03 79 */	or. r0, r3, r0
/* 813512BC | 41 82 00 28 */	beq .L_813512E4
/* 813512C0 | 38 7F 0B 2D */	addi r3, r31, 0xb2d
/* 813512C4 | 39 21 00 28 */	addi r9, r1, 0x28
/* 813512C8 | 4C C6 31 82 */	crclr cr1eq
/* 813512CC | 48 1D D3 D5 */	bl OSReport
/* 813512D0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813512D4 | 38 00 FF FD */	li r0, -0x3
/* 813512D8 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813512DC | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813512E0 | 48 00 02 90 */	b .L_81351570
.L_813512E4:
/* 813512E4 | A1 21 00 0A */	lhz r9, 0xa(r1)
/* 813512E8 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 813512EC | 7D 23 46 70 */	srawi r3, r9, 8
/* 813512F0 | 7C 80 46 70 */	srawi r0, r4, 8
/* 813512F4 | 7C 03 00 00 */	cmpw r3, r0
/* 813512F8 | 40 81 00 34 */	ble .L_8135132C
/* 813512FC | 7D 06 43 78 */	mr r6, r8
/* 81351300 | 7C E5 3B 78 */	mr r5, r7
/* 81351304 | 7D 27 4B 78 */	mr r7, r9
/* 81351308 | 7C 88 23 78 */	mr r8, r4
/* 8135130C | 38 7F 0C 20 */	addi r3, r31, 0xc20
/* 81351310 | 4C C6 31 82 */	crclr cr1eq
/* 81351314 | 48 1D D3 8D */	bl OSReport
/* 81351318 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135131C | 38 00 FF F0 */	li r0, -0x10
/* 81351320 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81351324 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351328 | 48 00 02 48 */	b .L_81351570
.L_8135132C:
/* 8135132C | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81351330 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81351334 | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 81351338 | 39 01 00 18 */	addi r8, r1, 0x18
/* 8135133C | 38 04 00 3F */	addi r0, r4, 0x3f
/* 81351340 | 38 A0 00 03 */	li r5, 0x3
/* 81351344 | 3C 86 00 02 */	addis r4, r6, 0x2
/* 81351348 | 38 E0 00 01 */	li r7, 0x1
/* 8135134C | 54 06 00 32 */	clrrwi r6, r0, 6
/* 81351350 | 39 20 00 00 */	li r9, 0x0
/* 81351354 | 38 C6 06 40 */	addi r6, r6, 0x640
/* 81351358 | 38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8135135C | 48 26 E7 A5 */	bl fn_815BFB00
/* 81351360 | 2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 81351364 | 40 82 00 28 */	bne .L_8135138C
/* 81351368 | 7C 64 1B 78 */	mr r4, r3
/* 8135136C | 38 7F 0B 7B */	addi r3, r31, 0xb7b
/* 81351370 | 4C C6 31 82 */	crclr cr1eq
/* 81351374 | 48 1D D3 2D */	bl OSReport
/* 81351378 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135137C | 38 00 FF F1 */	li r0, -0xf
/* 81351380 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81351384 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351388 | 48 00 01 E8 */	b .L_81351570
.L_8135138C:
/* 8135138C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351390 | 41 82 00 28 */	beq .L_813513B8
/* 81351394 | 7C 64 1B 78 */	mr r4, r3
/* 81351398 | 38 7F 0B BB */	addi r3, r31, 0xbbb
/* 8135139C | 4C C6 31 82 */	crclr cr1eq
/* 813513A0 | 48 1D D3 01 */	bl OSReport
/* 813513A4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813513A8 | 38 00 FF FD */	li r0, -0x3
/* 813513AC | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813513B0 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813513B4 | 48 00 01 BC */	b .L_81351570
.L_813513B8:
/* 813513B8 | A0 81 00 22 */	lhz r4, 0x22(r1)
/* 813513BC | 38 7F 1A 76 */	addi r3, r31, 0x1a76
/* 813513C0 | A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 813513C4 | 4C C6 31 82 */	crclr cr1eq
/* 813513C8 | 48 1D D2 D9 */	bl OSReport
/* 813513CC | A0 81 00 1E */	lhz r4, 0x1e(r1)
/* 813513D0 | 38 7F 1A AA */	addi r3, r31, 0x1aaa
/* 813513D4 | A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 813513D8 | 4C C6 31 82 */	crclr cr1eq
/* 813513DC | 48 1D D2 C5 */	bl OSReport
/* 813513E0 | A0 81 00 26 */	lhz r4, 0x26(r1)
/* 813513E4 | 38 7F 1A DF */	addi r3, r31, 0x1adf
/* 813513E8 | A0 A1 00 24 */	lhz r5, 0x24(r1)
/* 813513EC | 4C C6 31 82 */	crclr cr1eq
/* 813513F0 | 48 1D D2 B1 */	bl OSReport
/* 813513F4 | A0 A1 00 1E */	lhz r5, 0x1e(r1)
/* 813513F8 | 7F 83 E3 78 */	mr r3, r28
/* 813513FC | A0 81 00 26 */	lhz r4, 0x26(r1)
/* 81351400 | A0 E1 00 1C */	lhz r7, 0x1c(r1)
/* 81351404 | 7C C5 22 14 */	add r6, r5, r4
/* 81351408 | A0 01 00 24 */	lhz r0, 0x24(r1)
/* 8135140C | A0 81 00 22 */	lhz r4, 0x22(r1)
/* 81351410 | A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 81351414 | 7C E7 02 14 */	add r7, r7, r0
/* 81351418 | 4B FF CC 3D */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8135141C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351420 | 41 82 00 14 */	beq .L_81351434
/* 81351424 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81351428 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8135142C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81351430 | 48 00 01 40 */	b .L_81351570
.L_81351434:
/* 81351434 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81351438 | 3D 00 81 35 */	lis r8, iplNandSD_8135109C@ha
/* 8135143C | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81351440 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81351444 | 38 04 00 3F */	addi r0, r4, 0x3f
/* 81351448 | 39 08 10 9C */	addi r8, r8, iplNandSD_8135109C@l
/* 8135144C | 3C 85 00 02 */	addis r4, r5, 0x2
/* 81351450 | 38 A0 00 03 */	li r5, 0x3
/* 81351454 | 54 06 00 32 */	clrrwi r6, r0, 6
/* 81351458 | 38 E0 00 08 */	li r7, 0x8
/* 8135145C | 38 C6 06 40 */	addi r6, r6, 0x640
/* 81351460 | 38 84 E6 A0 */	subi r4, r4, 0x1960
/* 81351464 | 48 26 EC 3D */	bl fn_815C00A0
/* 81351468 | 2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 8135146C | 40 82 00 28 */	bne .L_81351494
/* 81351470 | 7C 64 1B 78 */	mr r4, r3
/* 81351474 | 38 7F 26 3F */	addi r3, r31, 0x263f
/* 81351478 | 4C C6 31 82 */	crclr cr1eq
/* 8135147C | 48 1D D2 25 */	bl OSReport
/* 81351480 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351484 | 38 00 FF F1 */	li r0, -0xf
/* 81351488 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135148C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351490 | 48 00 00 E0 */	b .L_81351570
.L_81351494:
/* 81351494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351498 | 41 82 00 8C */	beq .L_81351524
/* 8135149C | 7C 64 1B 78 */	mr r4, r3
/* 813514A0 | 38 7F 1B 94 */	addi r3, r31, 0x1b94
/* 813514A4 | 4C C6 31 82 */	crclr cr1eq
/* 813514A8 | 48 1D D1 F9 */	bl OSReport
/* 813514AC | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813514B0 | 7F 83 E3 78 */	mr r3, r28
/* 813514B4 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813514B8 | 48 00 06 F9 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 813514BC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813514C0 | 40 82 00 50 */	bne .L_81351510
/* 813514C4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813514C8 | 7F 83 E3 78 */	mr r3, r28
/* 813514CC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813514D0 | 4B FF E9 D9 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 813514D4 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 813514D8 | 40 82 00 18 */	bne .L_813514F0
/* 813514DC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813514E0 | 38 00 FF FB */	li r0, -0x5
/* 813514E4 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813514E8 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813514EC | 48 00 00 84 */	b .L_81351570
.L_813514F0:
/* 813514F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813514F4 | 41 82 00 1C */	beq .L_81351510
/* 813514F8 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813514FC | 7C 67 1B 78 */	mr r7, r3
/* 81351500 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81351504 | 38 7F 06 43 */	addi r3, r31, 0x643
/* 81351508 | 4C C6 31 82 */	crclr cr1eq
/* 8135150C | 48 1D D1 95 */	bl OSReport
.L_81351510:
/* 81351510 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351514 | 38 00 FF FD */	li r0, -0x3
/* 81351518 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135151C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351520 | 48 00 00 50 */	b .L_81351570
.L_81351524:
/* 81351524 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81351528 | 38 7F 26 7B */	addi r3, r31, 0x267b
/* 8135152C | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81351530 | 4C C6 31 82 */	crclr cr1eq
/* 81351534 | 48 1D D1 6D */	bl OSReport
/* 81351538 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135153C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81351540 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 81351544 | 80 64 EA 2C */	lwz r3, -0x15d4(r4)
/* 81351548 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8135154C | 90 04 EA 2C */	stw r0, -0x15d4(r4)
/* 81351550 | 40 82 00 10 */	bne .L_81351560
/* 81351554 | 7F 83 E3 78 */	mr r3, r28
/* 81351558 | 38 80 00 01 */	li r4, 0x1
/* 8135155C | 48 00 00 49 */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
.L_81351560:
/* 81351560 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351564 | 38 00 00 00 */	li r0, 0x0
/* 81351568 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135156C | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_81351570:
/* 81351570 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81351574 | 41 82 00 18 */	beq .L_8135158C
/* 81351578 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135157C | 7F C4 F3 78 */	mr r4, r30
/* 81351580 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81351584 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351588 | 48 20 A0 F1 */	bl fn_8155B678
.L_8135158C:
/* 8135158C | 39 61 00 80 */	addi r11, r1, 0x80
/* 81351590 | 48 2A 7F 81 */	bl _restgpr_28
/* 81351594 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81351598 | 7C 08 03 A6 */	mtlr r0
/* 8135159C | 38 21 00 80 */	addi r1, r1, 0x80
/* 813515A0 | 4E 80 00 20 */	blr
.endfn do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv

# .text:0x91B8 | 0x813515A4 | size: 0xBC
# ipl::NandSDWorker::change_nand_app_count(long)
.fn change_nand_app_count__Q23ipl12NandSDWorkerFl, global
/* 813515A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813515A8 | 7C 08 02 A6 */	mflr r0
/* 813515AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813515B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813515B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813515B8 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813515BC | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 813515C0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813515C4 | 7C 9E 23 78 */	mr r30, r4
/* 813515C8 | 41 82 00 80 */	beq .L_81351648
/* 813515CC | 38 00 00 00 */	li r0, 0x0
/* 813515D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813515D4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813515D8 | 48 21 92 A5 */	bl fn_8156A87C
/* 813515DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813515E0 | 40 82 00 14 */	bne .L_813515F4
/* 813515E4 | 38 7F 26 AF */	addi r3, r31, 0x26af
/* 813515E8 | 4C C6 31 82 */	crclr cr1eq
/* 813515EC | 48 1D D0 B5 */	bl OSReport
/* 813515F0 | 48 00 00 58 */	b .L_81351648
.L_813515F4:
/* 813515F4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813515F8 | 38 7F 26 E4 */	addi r3, r31, 0x26e4
/* 813515FC | 4C C6 31 82 */	crclr cr1eq
/* 81351600 | 48 1D D0 A1 */	bl OSReport
/* 81351604 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81351608 | 7C 60 F2 14 */	add r3, r0, r30
/* 8135160C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81351610 | 48 21 92 7D */	bl fn_8156A88C
/* 81351614 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81351618 | 20 60 00 30 */	subfic r3, r0, 0x30
/* 8135161C | 48 21 92 59 */	bl fn_8156A874
/* 81351620 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81351624 | 38 7F 27 16 */	addi r3, r31, 0x2716
/* 81351628 | 4C C6 31 82 */	crclr cr1eq
/* 8135162C | 48 1D D0 75 */	bl OSReport
/* 81351630 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81351634 | 38 7F 27 48 */	addi r3, r31, 0x2748
/* 81351638 | 20 80 00 30 */	subfic r4, r0, 0x30
/* 8135163C | 4C C6 31 82 */	crclr cr1eq
/* 81351640 | 48 1D D0 61 */	bl OSReport
/* 81351644 | 48 21 83 09 */	bl fn_8156994C
.L_81351648:
/* 81351648 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135164C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81351650 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81351654 | 7C 08 03 A6 */	mtlr r0
/* 81351658 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135165C | 4E 80 00 20 */	blr
.endfn change_nand_app_count__Q23ipl12NandSDWorkerFl

# .text:0x9274 | 0x81351660 | size: 0x274
# ipl::NandSDWorker::get_sd_app_banner(unsigned long, ipl::NandSDWorker::SDAppBanner*)
.fn get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner, global
/* 81351660 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81351664 | 7C 08 02 A6 */	mflr r0
/* 81351668 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8135166C | 39 61 00 90 */	addi r11, r1, 0x90
/* 81351670 | 48 2A 7E 4D */	bl _savegpr_26
/* 81351674 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81351678 | 7C 9A 23 78 */	mr r26, r4
/* 8135167C | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 81351680 | 7C BB 2B 78 */	mr r27, r5
/* 81351684 | 3C 86 00 02 */	addis r4, r6, 0x2
/* 81351688 | 7C 7E 1B 78 */	mr r30, r3
/* 8135168C | 80 64 E6 90 */	lwz r3, -0x1970(r4)
/* 81351690 | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 81351694 | 38 80 06 40 */	li r4, 0x640
/* 81351698 | 38 A0 00 20 */	li r5, 0x20
/* 8135169C | 48 20 90 B9 */	bl fn_8155A754
/* 813516A0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813516A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813516A8 | 41 82 00 0C */	beq .L_813516B4
/* 813516AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813516B0 | 40 82 00 1C */	bne .L_813516CC
.L_813516B4:
/* 813516B4 | 38 7C 1C C6 */	addi r3, r28, 0x1cc6
/* 813516B8 | 4C C6 31 82 */	crclr cr1eq
/* 813516BC | 48 1D CF E5 */	bl OSReport
/* 813516C0 | 38 00 FF FE */	li r0, -0x2
/* 813516C4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813516C8 | 48 00 01 DC */	b .L_813518A4
.L_813516CC:
/* 813516CC | 7F 44 D3 78 */	mr r4, r26
/* 813516D0 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 813516D4 | 38 60 00 00 */	li r3, 0x0
/* 813516D8 | 4B FF 7D 5D */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 813516DC | 38 61 00 30 */	addi r3, r1, 0x30
/* 813516E0 | 38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 813516E4 | 48 29 69 5D */	bl fn_815E8040
/* 813516E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813516EC | 7C 7D 1B 78 */	mr r29, r3
/* 813516F0 | 40 82 00 28 */	bne .L_81351718
/* 813516F4 | 38 7C 17 AE */	addi r3, r28, 0x17ae
/* 813516F8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813516FC | 4C C6 31 82 */	crclr cr1eq
/* 81351700 | 48 1D CF A1 */	bl OSReport
/* 81351704 | 7F C3 F3 78 */	mr r3, r30
/* 81351708 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8135170C | 38 80 FF FF */	li r4, -0x1
/* 81351710 | 48 00 26 F1 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351714 | 48 00 01 90 */	b .L_813518A4
.L_81351718:
/* 81351718 | 7F E3 FB 78 */	mr r3, r31
/* 8135171C | 7F A6 EB 78 */	mr r6, r29
/* 81351720 | 38 80 06 40 */	li r4, 0x640
/* 81351724 | 38 A0 00 01 */	li r5, 0x1
/* 81351728 | 48 29 69 75 */	bl fn_815E809C
/* 8135172C | 28 03 00 01 */	cmplwi r3, 0x1
/* 81351730 | 41 82 00 3C */	beq .L_8135176C
/* 81351734 | 7F C3 F3 78 */	mr r3, r30
/* 81351738 | 38 80 FF FF */	li r4, -0x1
/* 8135173C | 38 A0 00 00 */	li r5, 0x0
/* 81351740 | 48 00 26 C1 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351748 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8135174C | 41 82 00 0C */	beq .L_81351758
/* 81351750 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81351754 | 40 82 00 0C */	bne .L_81351760
.L_81351758:
/* 81351758 | 38 00 FF FD */	li r0, -0x3
/* 8135175C | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81351760:
/* 81351760 | 7F A3 EB 78 */	mr r3, r29
/* 81351764 | 48 29 68 85 */	bl fn_815E7FE8
/* 81351768 | 48 00 01 3C */	b .L_813518A4
.L_8135176C:
/* 8135176C | 7F A3 EB 78 */	mr r3, r29
/* 81351770 | 48 29 68 79 */	bl fn_815E7FE8
/* 81351774 | 7C 64 1B 78 */	mr r4, r3
/* 81351778 | 7F C3 F3 78 */	mr r3, r30
/* 8135177C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81351780 | 48 00 26 81 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351788 | 41 82 00 14 */	beq .L_8135179C
/* 8135178C | 38 7C 1C F0 */	addi r3, r28, 0x1cf0
/* 81351790 | 4C C6 31 82 */	crclr cr1eq
/* 81351794 | 48 1D CF 0D */	bl OSReport
/* 81351798 | 48 00 01 0C */	b .L_813518A4
.L_8135179C:
/* 8135179C | 7F E3 FB 78 */	mr r3, r31
/* 813517A0 | 7F 65 DB 78 */	mr r5, r27
/* 813517A4 | 38 80 06 40 */	li r4, 0x640
/* 813517A8 | 48 00 28 C9 */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 813517AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813517B0 | 41 82 00 10 */	beq .L_813517C0
/* 813517B4 | 38 00 FF FD */	li r0, -0x3
/* 813517B8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813517BC | 48 00 00 E8 */	b .L_813518A4
.L_813517C0:
/* 813517C0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813517C4 | 38 9B 00 0C */	addi r4, r27, 0xc
/* 813517C8 | 38 A0 00 10 */	li r5, 0x10
/* 813517CC | 4B FD EA 65 */	bl memcpy
/* 813517D0 | 3C 80 81 61 */	lis r4, c_md5_secret_key__Q23ipl12NandSDWorker@ha
/* 813517D4 | 38 7B 00 0C */	addi r3, r27, 0xc
/* 813517D8 | 38 84 D6 48 */	addi r4, r4, c_md5_secret_key__Q23ipl12NandSDWorker@l
/* 813517DC | 38 A0 00 10 */	li r5, 0x10
/* 813517E0 | 4B FD EA 51 */	bl memcpy
/* 813517E4 | 7F C3 F3 78 */	mr r3, r30
/* 813517E8 | 7F 65 DB 78 */	mr r5, r27
/* 813517EC | 38 81 00 0C */	addi r4, r1, 0xc
/* 813517F0 | 38 C0 06 40 */	li r6, 0x640
/* 813517F4 | 4B FF F8 09 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 813517F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813517FC | 40 82 00 20 */	bne .L_8135181C
/* 81351800 | 38 7C 1D 10 */	addi r3, r28, 0x1d10
/* 81351804 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81351808 | 4C C6 31 82 */	crclr cr1eq
/* 8135180C | 48 1D CE 95 */	bl OSReport
/* 81351810 | 38 00 FF FD */	li r0, -0x3
/* 81351814 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81351818 | 48 00 00 8C */	b .L_813518A4
.L_8135181C:
/* 8135181C | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 81351820 | 38 00 FF FF */	li r0, -0x1
/* 81351824 | 3B A0 FF FD */	li r29, -0x3
/* 81351828 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 8135182C | 7C 80 00 38 */	and r0, r4, r0
/* 81351830 | 38 80 00 00 */	li r4, 0x0
/* 81351834 | 7C 00 D0 50 */	subf r0, r0, r26
/* 81351838 | 38 A0 00 14 */	li r5, 0x14
/* 8135183C | 30 00 FF FF */	subic r0, r0, 0x1
/* 81351840 | 7C 00 01 10 */	subfe r0, r0, r0
/* 81351844 | 7F A0 00 78 */	andc r0, r29, r0
/* 81351848 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135184C | 4B FD EA E9 */	bl memset
/* 81351850 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81351854 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81351858 | 48 29 68 CD */	bl fn_815E8124
/* 8135185C | 7C 64 1B 78 */	mr r4, r3
/* 81351860 | 7F C3 F3 78 */	mr r3, r30
/* 81351864 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81351868 | 48 00 25 99 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8135186C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351870 | 41 82 00 14 */	beq .L_81351884
/* 81351874 | 38 7C 1C F0 */	addi r3, r28, 0x1cf0
/* 81351878 | 4C C6 31 82 */	crclr cr1eq
/* 8135187C | 48 1D CE 25 */	bl OSReport
/* 81351880 | 48 00 00 24 */	b .L_813518A4
.L_81351884:
/* 81351884 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 81351888 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8135188C | 38 03 00 3F */	addi r0, r3, 0x3f
/* 81351890 | 54 03 00 32 */	clrrwi r3, r0, 6
/* 81351894 | 38 03 06 40 */	addi r0, r3, 0x640
/* 81351898 | 7C 04 00 40 */	cmplw r4, r0
/* 8135189C | 41 81 00 08 */	bgt .L_813518A4
/* 813518A0 | 93 A1 00 08 */	stw r29, 0x8(r1)
.L_813518A4:
/* 813518A4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813518A8 | 7F E4 FB 78 */	mr r4, r31
/* 813518AC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813518B0 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813518B4 | 48 20 91 51 */	bl fn_8155AA04
/* 813518B8 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813518BC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813518C0 | 48 2A 7C 49 */	bl _restgpr_26
/* 813518C4 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813518C8 | 7C 08 03 A6 */	mtlr r0
/* 813518CC | 38 21 00 90 */	addi r1, r1, 0x90
/* 813518D0 | 4E 80 00 20 */	blr
.endfn get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner

# .text:0x94E8 | 0x813518D4 | size: 0x2B0
# ipl::NandSDWorker::get_sd_app_thumbnail(const ipl::NandSDWorker::SDAppBanner*, unsigned char*)
.fn get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc, global
/* 813518D4 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813518D8 | 7C 08 02 A6 */	mflr r0
/* 813518DC | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813518E0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813518E4 | 48 2A 7B D5 */	bl _savegpr_25
/* 813518E8 | 7C 7A 1B 78 */	mr r26, r3
/* 813518EC | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813518F0 | 7C BC 2B 78 */	mr r28, r5
/* 813518F4 | 7C 9B 23 78 */	mr r27, r4
/* 813518F8 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 813518FC | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81351900 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81351904 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81351908 | 3B C0 00 00 */	li r30, 0x0
/* 8135190C | 3B A0 00 00 */	li r29, 0x0
/* 81351910 | 4B FF 7B 25 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 81351914 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 81351918 | 28 05 C8 00 */	cmplwi r5, 0xc800
/* 8135191C | 40 81 00 20 */	ble .L_8135193C
/* 81351920 | 38 7F 27 75 */	addi r3, r31, 0x2775
/* 81351924 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81351928 | 4C C6 31 82 */	crclr cr1eq
/* 8135192C | 48 1D CD 75 */	bl OSReport
/* 81351930 | 38 00 FF FD */	li r0, -0x3
/* 81351934 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81351938 | 48 00 02 08 */	b .L_81351B40
.L_8135193C:
/* 8135193C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351940 | 38 05 00 3F */	addi r0, r5, 0x3f
/* 81351944 | 54 04 00 32 */	clrrwi r4, r0, 6
/* 81351948 | 38 A0 00 20 */	li r5, 0x20
/* 8135194C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81351950 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351954 | 48 20 8E 01 */	bl fn_8155A754
/* 81351958 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 8135195C | 7C 7E 1B 78 */	mr r30, r3
/* 81351960 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351964 | 38 04 00 3F */	addi r0, r4, 0x3f
/* 81351968 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135196C | 54 04 00 32 */	clrrwi r4, r0, 6
/* 81351970 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351974 | 48 20 9C F5 */	bl fn_8155B668
/* 81351978 | 7C 7D 1B 78 */	mr r29, r3
/* 8135197C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81351980 | 38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 81351984 | 48 29 66 BD */	bl fn_815E8040
/* 81351988 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135198C | 7C 79 1B 78 */	mr r25, r3
/* 81351990 | 40 82 00 28 */	bne .L_813519B8
/* 81351994 | 38 7F 17 AE */	addi r3, r31, 0x17ae
/* 81351998 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135199C | 4C C6 31 82 */	crclr cr1eq
/* 813519A0 | 48 1D CD 01 */	bl OSReport
/* 813519A4 | 7F 43 D3 78 */	mr r3, r26
/* 813519A8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813519AC | 38 80 FF FF */	li r4, -0x1
/* 813519B0 | 48 00 24 51 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813519B4 | 48 00 01 8C */	b .L_81351B40
.L_813519B8:
/* 813519B8 | 38 80 06 40 */	li r4, 0x640
/* 813519BC | 38 A0 00 00 */	li r5, 0x0
/* 813519C0 | 48 29 66 E1 */	bl fn_815E80A0
/* 813519C4 | 7C 64 1B 78 */	mr r4, r3
/* 813519C8 | 7F 43 D3 78 */	mr r3, r26
/* 813519CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813519D0 | 48 00 24 31 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813519D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813519D8 | 41 82 00 1C */	beq .L_813519F4
/* 813519DC | 38 7F 27 A7 */	addi r3, r31, 0x27a7
/* 813519E0 | 4C C6 31 82 */	crclr cr1eq
/* 813519E4 | 48 1D CC BD */	bl OSReport
/* 813519E8 | 7F 23 CB 78 */	mr r3, r25
/* 813519EC | 48 29 65 FD */	bl fn_815E7FE8
/* 813519F0 | 48 00 01 50 */	b .L_81351B40
.L_813519F4:
/* 813519F4 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 813519F8 | 7F A3 EB 78 */	mr r3, r29
/* 813519FC | 7F 26 CB 78 */	mr r6, r25
/* 81351A00 | 38 A0 00 01 */	li r5, 0x1
/* 81351A04 | 38 04 00 3F */	addi r0, r4, 0x3f
/* 81351A08 | 54 04 00 32 */	clrrwi r4, r0, 6
/* 81351A0C | 48 29 66 91 */	bl fn_815E809C
/* 81351A10 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81351A14 | 41 82 00 3C */	beq .L_81351A50
/* 81351A18 | 7F 43 D3 78 */	mr r3, r26
/* 81351A1C | 38 80 FF FF */	li r4, -0x1
/* 81351A20 | 38 A0 00 00 */	li r5, 0x0
/* 81351A24 | 48 00 23 DD */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351A28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351A2C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81351A30 | 41 82 00 0C */	beq .L_81351A3C
/* 81351A34 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81351A38 | 40 82 00 0C */	bne .L_81351A44
.L_81351A3C:
/* 81351A3C | 38 00 FF FD */	li r0, -0x3
/* 81351A40 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81351A44:
/* 81351A44 | 7F 23 CB 78 */	mr r3, r25
/* 81351A48 | 48 29 65 A1 */	bl fn_815E7FE8
/* 81351A4C | 48 00 00 F4 */	b .L_81351B40
.L_81351A50:
/* 81351A50 | 7F 23 CB 78 */	mr r3, r25
/* 81351A54 | 48 29 65 95 */	bl fn_815E7FE8
/* 81351A58 | 7C 64 1B 78 */	mr r4, r3
/* 81351A5C | 7F 43 D3 78 */	mr r3, r26
/* 81351A60 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81351A64 | 48 00 23 9D */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351A68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351A6C | 41 82 00 14 */	beq .L_81351A80
/* 81351A70 | 38 7F 1C F0 */	addi r3, r31, 0x1cf0
/* 81351A74 | 4C C6 31 82 */	crclr cr1eq
/* 81351A78 | 48 1D CC 29 */	bl OSReport
/* 81351A7C | 48 00 00 C4 */	b .L_81351B40
.L_81351A80:
/* 81351A80 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 81351A84 | 7F A3 EB 78 */	mr r3, r29
/* 81351A88 | 7F C5 F3 78 */	mr r5, r30
/* 81351A8C | 38 04 00 3F */	addi r0, r4, 0x3f
/* 81351A90 | 54 04 00 32 */	clrrwi r4, r0, 6
/* 81351A94 | 48 00 25 DD */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 81351A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351A9C | 41 82 00 10 */	beq .L_81351AAC
/* 81351AA0 | 38 00 FF FD */	li r0, -0x3
/* 81351AA4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81351AA8 | 48 00 00 98 */	b .L_81351B40
.L_81351AAC:
/* 81351AAC | 80 DB 00 08 */	lwz r6, 0x8(r27)
/* 81351AB0 | 7F 43 D3 78 */	mr r3, r26
/* 81351AB4 | 7F C5 F3 78 */	mr r5, r30
/* 81351AB8 | 38 9B 00 1C */	addi r4, r27, 0x1c
/* 81351ABC | 38 06 00 3F */	addi r0, r6, 0x3f
/* 81351AC0 | 54 06 00 32 */	clrrwi r6, r0, 6
/* 81351AC4 | 4B FF F5 39 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 81351AC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351ACC | 40 82 00 20 */	bne .L_81351AEC
/* 81351AD0 | 38 7F 1D 10 */	addi r3, r31, 0x1d10
/* 81351AD4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81351AD8 | 4C C6 31 82 */	crclr cr1eq
/* 81351ADC | 48 1D CB C5 */	bl OSReport
/* 81351AE0 | 38 00 FF FD */	li r0, -0x3
/* 81351AE4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81351AE8 | 48 00 00 58 */	b .L_81351B40
.L_81351AEC:
/* 81351AEC | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 81351AF0 | 7F 43 D3 78 */	mr r3, r26
/* 81351AF4 | 7F C4 F3 78 */	mr r4, r30
/* 81351AF8 | 7F 86 E3 78 */	mr r6, r28
/* 81351AFC | 48 00 08 F5 */	bl uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc
/* 81351B00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351B04 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81351B08 | 40 80 00 28 */	bge .L_81351B30
/* 81351B0C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81351B10 | 7C 67 1B 78 */	mr r7, r3
/* 81351B14 | 80 DB 00 04 */	lwz r6, 0x4(r27)
/* 81351B18 | 38 7F 27 C6 */	addi r3, r31, 0x27c6
/* 81351B1C | 4C C6 31 82 */	crclr cr1eq
/* 81351B20 | 48 1D CB 81 */	bl OSReport
/* 81351B24 | 38 00 FF FD */	li r0, -0x3
/* 81351B28 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81351B2C | 48 00 00 14 */	b .L_81351B40
.L_81351B30:
/* 81351B30 | 7C 64 1B 78 */	mr r4, r3
/* 81351B34 | 38 7F 28 02 */	addi r3, r31, 0x2802
/* 81351B38 | 4C C6 31 82 */	crclr cr1eq
/* 81351B3C | 48 1D CB 65 */	bl OSReport
.L_81351B40:
/* 81351B40 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351B44 | 7F C4 F3 78 */	mr r4, r30
/* 81351B48 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81351B4C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351B50 | 48 20 8E B5 */	bl fn_8155AA04
/* 81351B54 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351B58 | 7F A4 EB 78 */	mr r4, r29
/* 81351B5C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81351B60 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351B64 | 48 20 9B 15 */	bl fn_8155B678
/* 81351B68 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81351B6C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81351B70 | 48 2A 79 95 */	bl _restgpr_25
/* 81351B74 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81351B78 | 7C 08 03 A6 */	mtlr r0
/* 81351B7C | 38 21 00 70 */	addi r1, r1, 0x70
/* 81351B80 | 4E 80 00 20 */	blr
.endfn get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc

# .text:0x9798 | 0x81351B84 | size: 0x2C
# ipl::NandSDWorker::nand_app_exist(unsigned long long)
.fn nand_app_exist__Q23ipl12NandSDWorkerFUx, global
/* 81351B84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81351B88 | 7C 08 02 A6 */	mflr r0
/* 81351B8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81351B90 | 48 00 00 21 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 81351B94 | 38 03 FF FE */	subi r0, r3, 0x2
/* 81351B98 | 7C 00 00 34 */	cntlzw r0, r0
/* 81351B9C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81351BA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81351BA4 | 7C 08 03 A6 */	mtlr r0
/* 81351BA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81351BAC | 4E 80 00 20 */	blr
.endfn nand_app_exist__Q23ipl12NandSDWorkerFUx

# .text:0x97C4 | 0x81351BB0 | size: 0x388
# ipl::NandSDWorker::nand_app_exist_ex(unsigned long long)
.fn nand_app_exist_ex__Q23ipl12NandSDWorkerFUx, global
/* 81351BB0 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81351BB4 | 7C 2C 0B 78 */	mr r12, r1
/* 81351BB8 | 21 6B F7 60 */	subfic r11, r11, -0x8a0
/* 81351BBC | 7C 21 59 6E */	stwux r1, r1, r11
/* 81351BC0 | 7C 08 02 A6 */	mflr r0
/* 81351BC4 | 7D 8B 63 78 */	mr r11, r12
/* 81351BC8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81351BCC | 48 2A 78 F1 */	bl _savegpr_26
/* 81351BD0 | 38 80 00 00 */	li r4, 0x0
/* 81351BD4 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81351BD8 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81351BDC | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81351BE0 | 7C 7C 1B 78 */	mr r28, r3
/* 81351BE4 | 38 00 FF FF */	li r0, -0x1
/* 81351BE8 | 7C DD 33 78 */	mr r29, r6
/* 81351BEC | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81351BF0 | 7C BE 2B 78 */	mr r30, r5
/* 81351BF4 | 7C C6 00 38 */	and r6, r6, r0
/* 81351BF8 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 81351BFC | 38 61 00 30 */	addi r3, r1, 0x30
/* 81351C00 | 38 9F 01 43 */	addi r4, r31, 0x143
/* 81351C04 | 3B 40 00 00 */	li r26, 0x0
/* 81351C08 | 4C C6 31 82 */	crclr cr1eq
/* 81351C0C | 48 2A EE 75 */	bl sprintf
/* 81351C10 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81351C14 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81351C18 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81351C1C | 48 00 E9 01 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 81351C20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351C24 | 41 82 00 24 */	beq .L_81351C48
/* 81351C28 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81351C2C | 41 82 00 1C */	beq .L_81351C48
/* 81351C30 | 7C 64 1B 78 */	mr r4, r3
/* 81351C34 | 38 7F 28 31 */	addi r3, r31, 0x2831
/* 81351C38 | 4C C6 31 82 */	crclr cr1eq
/* 81351C3C | 48 1D CA 65 */	bl OSReport
/* 81351C40 | 3B 40 00 00 */	li r26, 0x0
/* 81351C44 | 48 00 02 B8 */	b .L_81351EFC
.L_81351C48:
/* 81351C48 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81351C4C | 41 82 00 10 */	beq .L_81351C5C
/* 81351C50 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 81351C54 | 28 04 00 02 */	cmplwi r4, 0x2
/* 81351C58 | 41 81 00 20 */	bgt .L_81351C78
.L_81351C5C:
/* 81351C5C | 7F A6 EB 78 */	mr r6, r29
/* 81351C60 | 7F C5 F3 78 */	mr r5, r30
/* 81351C64 | 38 7F 28 5F */	addi r3, r31, 0x285f
/* 81351C68 | 4C C6 31 82 */	crclr cr1eq
/* 81351C6C | 48 1D CA 35 */	bl OSReport
/* 81351C70 | 3B 40 00 00 */	li r26, 0x0
/* 81351C74 | 48 00 02 88 */	b .L_81351EFC
.L_81351C78:
/* 81351C78 | 7F 83 E3 78 */	mr r3, r28
/* 81351C7C | 7F A6 EB 78 */	mr r6, r29
/* 81351C80 | 7F C5 F3 78 */	mr r5, r30
/* 81351C84 | 3B 64 FF FE */	subi r27, r4, 0x2
/* 81351C88 | 38 E1 00 2C */	addi r7, r1, 0x2c
/* 81351C8C | 48 00 02 AD */	bl get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView
/* 81351C90 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81351C94 | 40 82 00 20 */	bne .L_81351CB4
/* 81351C98 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351C9C | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 81351CA0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81351CA4 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351CA8 | 48 20 8D 5D */	bl fn_8155AA04
/* 81351CAC | 3B 40 00 00 */	li r26, 0x0
/* 81351CB0 | 48 00 02 4C */	b .L_81351EFC
.L_81351CB4:
/* 81351CB4 | 80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 81351CB8 | 38 C0 00 00 */	li r6, 0x0
/* 81351CBC | 38 60 00 00 */	li r3, 0x0
/* 81351CC0 | 48 00 00 20 */	b .L_81351CE0
.L_81351CC4:
/* 81351CC4 | 7C 85 1A 14 */	add r4, r5, r3
/* 81351CC8 | A0 04 00 62 */	lhz r0, 0x62(r4)
/* 81351CCC | 54 00 04 21 */	rlwinm. r0, r0, 0, 16, 16
/* 81351CD0 | 40 82 00 08 */	bne .L_81351CD8
/* 81351CD4 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_81351CD8:
/* 81351CD8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81351CDC | 38 63 00 10 */	addi r3, r3, 0x10
.L_81351CE0:
/* 81351CE0 | A0 05 00 5A */	lhz r0, 0x5a(r5)
/* 81351CE4 | 7C 06 00 40 */	cmplw r6, r0
/* 81351CE8 | 41 80 FF DC */	blt .L_81351CC4
/* 81351CEC | 7C 1B D0 40 */	cmplw r27, r26
/* 81351CF0 | 40 82 00 0C */	bne .L_81351CFC
/* 81351CF4 | 3B 40 00 02 */	li r26, 0x2
/* 81351CF8 | 48 00 02 04 */	b .L_81351EFC
.L_81351CFC:
/* 81351CFC | 7F A6 EB 78 */	mr r6, r29
/* 81351D00 | 7F C5 F3 78 */	mr r5, r30
/* 81351D04 | 7F 67 DB 78 */	mr r7, r27
/* 81351D08 | 7F 48 D3 78 */	mr r8, r26
/* 81351D0C | 38 7F 28 88 */	addi r3, r31, 0x2888
/* 81351D10 | 4C C6 31 82 */	crclr cr1eq
/* 81351D14 | 48 1D C9 8D */	bl OSReport
/* 81351D18 | 7F A4 EB 78 */	mr r4, r29
/* 81351D1C | 7F C3 F3 78 */	mr r3, r30
/* 81351D20 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 81351D24 | 38 A0 00 00 */	li r5, 0x0
/* 81351D28 | 48 26 C8 B1 */	bl fn_815BE5D8
/* 81351D2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351D30 | 41 82 00 1C */	beq .L_81351D4C
/* 81351D34 | 7C 64 1B 78 */	mr r4, r3
/* 81351D38 | 38 7F 28 CD */	addi r3, r31, 0x28cd
/* 81351D3C | 4C C6 31 82 */	crclr cr1eq
/* 81351D40 | 48 1D C9 61 */	bl OSReport
/* 81351D44 | 3B 40 00 00 */	li r26, 0x0
/* 81351D48 | 48 00 01 B4 */	b .L_81351EFC
.L_81351D4C:
/* 81351D4C | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81351D50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81351D54 | 40 82 00 20 */	bne .L_81351D74
/* 81351D58 | 7F A6 EB 78 */	mr r6, r29
/* 81351D5C | 7F C5 F3 78 */	mr r5, r30
/* 81351D60 | 38 7F 28 5F */	addi r3, r31, 0x285f
/* 81351D64 | 4C C6 31 82 */	crclr cr1eq
/* 81351D68 | 48 1D C9 39 */	bl OSReport
/* 81351D6C | 3B 40 00 00 */	li r26, 0x0
/* 81351D70 | 48 00 01 8C */	b .L_81351EFC
.L_81351D74:
/* 81351D74 | 7F A4 EB 78 */	mr r4, r29
/* 81351D78 | 7F C3 F3 78 */	mr r3, r30
/* 81351D7C | 38 A1 00 80 */	addi r5, r1, 0x80
/* 81351D80 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 81351D84 | 48 26 C8 55 */	bl fn_815BE5D8
/* 81351D88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351D8C | 40 82 01 5C */	bne .L_81351EE8
/* 81351D90 | 80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 81351D94 | 39 21 00 80 */	addi r9, r1, 0x80
/* 81351D98 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81351D9C | 39 40 00 00 */	li r10, 0x0
/* 81351DA0 | 39 60 00 00 */	li r11, 0x0
/* 81351DA4 | 38 60 00 00 */	li r3, 0x0
/* 81351DA8 | 48 00 00 54 */	b .L_81351DFC
.L_81351DAC:
/* 81351DAC | 7D 09 18 2E */	lwzx r8, r9, r3
/* 81351DB0 | 39 80 00 00 */	li r12, 0x0
/* 81351DB4 | 38 80 00 00 */	li r4, 0x0
/* 81351DB8 | 48 00 00 30 */	b .L_81351DE8
.L_81351DBC:
/* 81351DBC | 7C C7 22 14 */	add r6, r7, r4
/* 81351DC0 | 80 A6 00 5C */	lwz r5, 0x5c(r6)
/* 81351DC4 | 7C 08 28 40 */	cmplw r8, r5
/* 81351DC8 | 40 82 00 18 */	bne .L_81351DE0
/* 81351DCC | A0 A6 00 62 */	lhz r5, 0x62(r6)
/* 81351DD0 | 54 A5 04 21 */	rlwinm. r5, r5, 0, 16, 16
/* 81351DD4 | 40 82 00 0C */	bne .L_81351DE0
/* 81351DD8 | 39 40 00 01 */	li r10, 0x1
/* 81351DDC | 48 00 00 18 */	b .L_81351DF4
.L_81351DE0:
/* 81351DE0 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 81351DE4 | 38 84 00 10 */	addi r4, r4, 0x10
.L_81351DE8:
/* 81351DE8 | A0 A7 00 5A */	lhz r5, 0x5a(r7)
/* 81351DEC | 7C 0C 28 40 */	cmplw r12, r5
/* 81351DF0 | 41 80 FF CC */	blt .L_81351DBC
.L_81351DF4:
/* 81351DF4 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 81351DF8 | 38 63 00 04 */	addi r3, r3, 0x4
.L_81351DFC:
/* 81351DFC | 7C 0B 00 40 */	cmplw r11, r0
/* 81351E00 | 40 80 00 0C */	bge .L_81351E0C
/* 81351E04 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81351E08 | 41 82 FF A4 */	beq .L_81351DAC
.L_81351E0C:
/* 81351E0C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81351E10 | 40 82 00 20 */	bne .L_81351E30
/* 81351E14 | 7F A6 EB 78 */	mr r6, r29
/* 81351E18 | 7F C5 F3 78 */	mr r5, r30
/* 81351E1C | 38 7F 29 03 */	addi r3, r31, 0x2903
/* 81351E20 | 4C C6 31 82 */	crclr cr1eq
/* 81351E24 | 48 1D C8 7D */	bl OSReport
/* 81351E28 | 3B 40 00 00 */	li r26, 0x0
/* 81351E2C | 48 00 00 D0 */	b .L_81351EFC
.L_81351E30:
/* 81351E30 | 80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 81351E34 | 39 21 00 80 */	addi r9, r1, 0x80
/* 81351E38 | 80 A1 00 28 */	lwz r5, 0x28(r1)
/* 81351E3C | 39 60 00 00 */	li r11, 0x0
/* 81351E40 | 38 60 00 00 */	li r3, 0x0
/* 81351E44 | 48 00 00 7C */	b .L_81351EC0
.L_81351E48:
/* 81351E48 | 7C C7 1A 14 */	add r6, r7, r3
/* 81351E4C | 39 40 00 00 */	li r10, 0x0
/* 81351E50 | 38 80 00 00 */	li r4, 0x0
/* 81351E54 | 7C A9 03 A6 */	mtctr r5
/* 81351E58 | 28 05 00 00 */	cmplwi r5, 0x0
/* 81351E5C | 40 81 00 20 */	ble .L_81351E7C
.L_81351E60:
/* 81351E60 | 7D 09 20 2E */	lwzx r8, r9, r4
/* 81351E64 | 80 06 00 5C */	lwz r0, 0x5c(r6)
/* 81351E68 | 7C 08 00 40 */	cmplw r8, r0
/* 81351E6C | 41 82 00 10 */	beq .L_81351E7C
/* 81351E70 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81351E74 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81351E78 | 42 00 FF E8 */	bdnz .L_81351E60
.L_81351E7C:
/* 81351E7C | 7C 0A 28 40 */	cmplw r10, r5
/* 81351E80 | 40 82 00 38 */	bne .L_81351EB8
/* 81351E84 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81351E88 | 7C 80 1A 14 */	add r4, r0, r3
/* 81351E8C | A0 04 00 62 */	lhz r0, 0x62(r4)
/* 81351E90 | 54 00 04 63 */	rlwinm. r0, r0, 0, 17, 17
/* 81351E94 | 40 82 00 24 */	bne .L_81351EB8
/* 81351E98 | A0 84 00 60 */	lhz r4, 0x60(r4)
/* 81351E9C | 7F A6 EB 78 */	mr r6, r29
/* 81351EA0 | 7F C5 F3 78 */	mr r5, r30
/* 81351EA4 | 38 7F 29 30 */	addi r3, r31, 0x2930
/* 81351EA8 | 4C C6 31 82 */	crclr cr1eq
/* 81351EAC | 48 1D C7 F5 */	bl OSReport
/* 81351EB0 | 3B 40 00 01 */	li r26, 0x1
/* 81351EB4 | 48 00 00 48 */	b .L_81351EFC
.L_81351EB8:
/* 81351EB8 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 81351EBC | 38 63 00 10 */	addi r3, r3, 0x10
.L_81351EC0:
/* 81351EC0 | A0 07 00 5A */	lhz r0, 0x5a(r7)
/* 81351EC4 | 7C 0B 00 40 */	cmplw r11, r0
/* 81351EC8 | 41 80 FF 80 */	blt .L_81351E48
/* 81351ECC | 7F A6 EB 78 */	mr r6, r29
/* 81351ED0 | 7F C5 F3 78 */	mr r5, r30
/* 81351ED4 | 38 7F 29 79 */	addi r3, r31, 0x2979
/* 81351ED8 | 4C C6 31 82 */	crclr cr1eq
/* 81351EDC | 48 1D C7 C5 */	bl OSReport
/* 81351EE0 | 3B 40 00 02 */	li r26, 0x2
/* 81351EE4 | 48 00 00 18 */	b .L_81351EFC
.L_81351EE8:
/* 81351EE8 | 7C 64 1B 78 */	mr r4, r3
/* 81351EEC | 38 7F 28 CD */	addi r3, r31, 0x28cd
/* 81351EF0 | 4C C6 31 82 */	crclr cr1eq
/* 81351EF4 | 48 1D C7 AD */	bl OSReport
/* 81351EF8 | 3B 40 00 00 */	li r26, 0x0
.L_81351EFC:
/* 81351EFC | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 81351F00 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81351F04 | 41 82 00 14 */	beq .L_81351F18
/* 81351F08 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351F0C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81351F10 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351F14 | 48 20 8A F1 */	bl fn_8155AA04
.L_81351F18:
/* 81351F18 | 7F 43 D3 78 */	mr r3, r26
/* 81351F1C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81351F20 | 7D 4B 53 78 */	mr r11, r10
/* 81351F24 | 48 2A 75 E5 */	bl _restgpr_26
/* 81351F28 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81351F2C | 7C 08 03 A6 */	mtlr r0
/* 81351F30 | 7D 41 53 78 */	mr r1, r10
/* 81351F34 | 4E 80 00 20 */	blr
.endfn nand_app_exist_ex__Q23ipl12NandSDWorkerFUx

# .text:0x9B4C | 0x81351F38 | size: 0xE4
# ipl::NandSDWorker::get_nand_app_tmdview(unsigned long long, ESTmdView*)
.fn get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView, global
/* 81351F38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81351F3C | 7C 08 02 A6 */	mflr r0
/* 81351F40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81351F44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81351F48 | 48 2A 75 7D */	bl _savegpr_28
/* 81351F4C | 7C DD 33 78 */	mr r29, r6
/* 81351F50 | 7C BE 2B 78 */	mr r30, r5
/* 81351F54 | 7C 7C 1B 78 */	mr r28, r3
/* 81351F58 | 7C FF 3B 78 */	mr r31, r7
/* 81351F5C | 7F A4 EB 78 */	mr r4, r29
/* 81351F60 | 7F C3 F3 78 */	mr r3, r30
/* 81351F64 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81351F68 | 38 A0 00 00 */	li r5, 0x0
/* 81351F6C | 48 26 CB C9 */	bl fn_815BEB34
/* 81351F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351F74 | 7C 67 1B 78 */	mr r7, r3
/* 81351F78 | 41 82 00 24 */	beq .L_81351F9C
/* 81351F7C | 3C 60 81 64 */	lis r3, lbl_8163844C@ha
/* 81351F80 | 7F A6 EB 78 */	mr r6, r29
/* 81351F84 | 7F C5 F3 78 */	mr r5, r30
/* 81351F88 | 38 63 84 4C */	addi r3, r3, lbl_8163844C@l
/* 81351F8C | 4C C6 31 82 */	crclr cr1eq
/* 81351F90 | 48 1D C7 11 */	bl OSReport
/* 81351F94 | 38 60 FF FE */	li r3, -0x2
/* 81351F98 | 48 00 00 6C */	b .L_81352004
.L_81351F9C:
/* 81351F9C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81351FA0 | 38 A0 00 20 */	li r5, 0x20
/* 81351FA4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81351FA8 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81351FAC | 38 03 00 1F */	addi r0, r3, 0x1f
/* 81351FB0 | 80 64 E6 90 */	lwz r3, -0x1970(r4)
/* 81351FB4 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81351FB8 | 48 20 87 9D */	bl fn_8155A754
/* 81351FBC | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81351FC0 | 7C 65 1B 78 */	mr r5, r3
/* 81351FC4 | 7F A4 EB 78 */	mr r4, r29
/* 81351FC8 | 7F C3 F3 78 */	mr r3, r30
/* 81351FCC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81351FD0 | 48 26 CB 65 */	bl fn_815BEB34
/* 81351FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81351FD8 | 7C 67 1B 78 */	mr r7, r3
/* 81351FDC | 41 82 00 24 */	beq .L_81352000
/* 81351FE0 | 3C 60 81 64 */	lis r3, lbl_8163844C@ha
/* 81351FE4 | 7F A6 EB 78 */	mr r6, r29
/* 81351FE8 | 7F C5 F3 78 */	mr r5, r30
/* 81351FEC | 38 63 84 4C */	addi r3, r3, lbl_8163844C@l
/* 81351FF0 | 4C C6 31 82 */	crclr cr1eq
/* 81351FF4 | 48 1D C6 AD */	bl OSReport
/* 81351FF8 | 38 60 FF FE */	li r3, -0x2
/* 81351FFC | 48 00 00 08 */	b .L_81352004
.L_81352000:
/* 81352000 | 38 60 00 00 */	li r3, 0x0
.L_81352004:
/* 81352004 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352008 | 48 2A 75 09 */	bl _restgpr_28
/* 8135200C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352010 | 7C 08 03 A6 */	mtlr r0
/* 81352014 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352018 | 4E 80 00 20 */	blr
.endfn get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView

# .text:0x9C30 | 0x8135201C | size: 0x110
# ipl::NandSDWorker::content_exist(ESTmdView*, unsigned long)
.fn content_exist__Q23ipl12NandSDWorkerFP9ESTmdViewUl, global
/* 8135201C | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81352020 | 7C 2C 0B 78 */	mr r12, r1
/* 81352024 | 21 6B F7 A0 */	subfic r11, r11, -0x860
/* 81352028 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8135202C | 7C 08 02 A6 */	mflr r0
/* 81352030 | 7D 8B 63 78 */	mr r11, r12
/* 81352034 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81352038 | 48 2A 74 91 */	bl _savegpr_29
/* 8135203C | 83 E3 00 0C */	lwz r31, 0xc(r3)
/* 81352040 | 38 E0 00 00 */	li r7, 0x0
/* 81352044 | 83 C3 00 10 */	lwz r30, 0x10(r3)
/* 81352048 | 38 A0 00 00 */	li r5, 0x0
/* 8135204C | 48 00 00 24 */	b .L_81352070
.L_81352050:
/* 81352050 | 7C C3 2A 14 */	add r6, r3, r5
/* 81352054 | A0 06 00 60 */	lhz r0, 0x60(r6)
/* 81352058 | 7C 04 00 40 */	cmplw r4, r0
/* 8135205C | 40 82 00 0C */	bne .L_81352068
/* 81352060 | 83 A6 00 5C */	lwz r29, 0x5c(r6)
/* 81352064 | 48 00 00 18 */	b .L_8135207C
.L_81352068:
/* 81352068 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135206C | 38 A5 00 10 */	addi r5, r5, 0x10
.L_81352070:
/* 81352070 | A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 81352074 | 7C 07 00 40 */	cmplw r7, r0
/* 81352078 | 41 80 FF D8 */	blt .L_81352050
.L_8135207C:
/* 8135207C | A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 81352080 | 7C 07 00 40 */	cmplw r7, r0
/* 81352084 | 40 82 00 0C */	bne .L_81352090
/* 81352088 | 38 60 00 00 */	li r3, 0x0
/* 8135208C | 48 00 00 84 */	b .L_81352110
.L_81352090:
/* 81352090 | 7F C4 F3 78 */	mr r4, r30
/* 81352094 | 7F E3 FB 78 */	mr r3, r31
/* 81352098 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 8135209C | 38 A0 00 00 */	li r5, 0x0
/* 813520A0 | 48 26 C5 39 */	bl fn_815BE5D8
/* 813520A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813520A8 | 41 82 00 0C */	beq .L_813520B4
/* 813520AC | 38 60 00 00 */	li r3, 0x0
/* 813520B0 | 48 00 00 60 */	b .L_81352110
.L_813520B4:
/* 813520B4 | 7F C4 F3 78 */	mr r4, r30
/* 813520B8 | 7F E3 FB 78 */	mr r3, r31
/* 813520BC | 38 A1 00 40 */	addi r5, r1, 0x40
/* 813520C0 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 813520C4 | 48 26 C5 15 */	bl fn_815BE5D8
/* 813520C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813520CC | 41 82 00 0C */	beq .L_813520D8
/* 813520D0 | 38 60 00 00 */	li r3, 0x0
/* 813520D4 | 48 00 00 3C */	b .L_81352110
.L_813520D8:
/* 813520D8 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 813520DC | 38 81 00 40 */	addi r4, r1, 0x40
/* 813520E0 | 38 60 00 00 */	li r3, 0x0
/* 813520E4 | 7C 09 03 A6 */	mtctr r0
/* 813520E8 | 28 00 00 00 */	cmplwi r0, 0x0
/* 813520EC | 40 81 00 20 */	ble .L_8135210C
.L_813520F0:
/* 813520F0 | 7C 04 18 2E */	lwzx r0, r4, r3
/* 813520F4 | 7C 1D 00 40 */	cmplw r29, r0
/* 813520F8 | 40 82 00 0C */	bne .L_81352104
/* 813520FC | 38 60 00 01 */	li r3, 0x1
/* 81352100 | 48 00 00 10 */	b .L_81352110
.L_81352104:
/* 81352104 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81352108 | 42 00 FF E8 */	bdnz .L_813520F0
.L_8135210C:
/* 8135210C | 38 60 00 00 */	li r3, 0x0
.L_81352110:
/* 81352110 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81352114 | 7D 4B 53 78 */	mr r11, r10
/* 81352118 | 48 2A 73 FD */	bl _restgpr_29
/* 8135211C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81352120 | 7C 08 03 A6 */	mtlr r0
/* 81352124 | 7D 41 53 78 */	mr r1, r10
/* 81352128 | 4E 80 00 20 */	blr
.endfn content_exist__Q23ipl12NandSDWorkerFP9ESTmdViewUl

# .text:0x9D40 | 0x8135212C | size: 0x104
# ipl::NandSDWorker::do_list_nand_app()
.fn do_list_nand_app__Q23ipl12NandSDWorkerFv, global
/* 8135212C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81352130 | 7C 08 02 A6 */	mflr r0
/* 81352134 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81352138 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135213C | 48 2A 73 7D */	bl _savegpr_25
/* 81352140 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81352144 | 7C 7F 1B 78 */	mr r31, r3
/* 81352148 | 3B A0 00 00 */	li r29, 0x0
/* 8135214C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81352150 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81352154 | 38 60 00 00 */	li r3, 0x0
/* 81352158 | 83 45 EA 38 */	lwz r26, -0x15c8(r5)
/* 8135215C | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 81352160 | 48 26 C3 85 */	bl fn_815BE4E4
/* 81352164 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81352168 | 38 A0 00 20 */	li r5, 0x20
/* 8135216C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81352170 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352174 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81352178 | 54 04 18 38 */	slwi r4, r0, 3
/* 8135217C | 48 20 85 D9 */	bl fn_8155A754
/* 81352180 | 7C 7B 1B 78 */	mr r27, r3
/* 81352184 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81352188 | 48 26 C3 5D */	bl fn_815BE4E4
/* 8135218C | 3B C0 00 00 */	li r30, 0x0
/* 81352190 | 3B 20 00 00 */	li r25, 0x0
/* 81352194 | 48 00 00 54 */	b .L_813521E8
.L_81352198:
/* 81352198 | 7F 9B EA 14 */	add r28, r27, r29
/* 8135219C | 7C 7B E8 2E */	lwzx r3, r27, r29
/* 813521A0 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 813521A4 | 4B FF 70 F1 */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 813521A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813521AC | 41 82 00 34 */	beq .L_813521E0
/* 813521B0 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813521B4 | 7F E3 FB 78 */	mr r3, r31
/* 813521B8 | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 813521BC | 4B FF F9 C9 */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 813521C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813521C4 | 41 82 00 1C */	beq .L_813521E0
/* 813521C8 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813521CC | 7C 7A F2 14 */	add r3, r26, r30
/* 813521D0 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 813521D4 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813521D8 | 7C 1A F1 2E */	stwx r0, r26, r30
/* 813521DC | 3B DE 00 08 */	addi r30, r30, 0x8
.L_813521E0:
/* 813521E0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813521E4 | 3B BD 00 08 */	addi r29, r29, 0x8
.L_813521E8:
/* 813521E8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813521EC | 7C 19 00 40 */	cmplw r25, r0
/* 813521F0 | 41 80 FF A8 */	blt .L_81352198
/* 813521F4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813521F8 | 7F 64 DB 78 */	mr r4, r27
/* 813521FC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352200 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81352204 | 48 20 88 01 */	bl fn_8155AA04
/* 81352208 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8135220C | 38 00 00 00 */	li r0, 0x0
/* 81352210 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81352214 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81352218 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135221C | 48 2A 72 E9 */	bl _restgpr_25
/* 81352220 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81352224 | 7C 08 03 A6 */	mtlr r0
/* 81352228 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135222C | 4E 80 00 20 */	blr
.endfn do_list_nand_app__Q23ipl12NandSDWorkerFv

# .text:0x9E44 | 0x81352230 | size: 0x1C0
# ipl::NandSDWorker::get_nand_app_thumbnail(unsigned long long, unsigned char*, ipl::channel::SChanMgrMetaHeader*)
.fn get_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUcPQ33ipl7channel18SChanMgrMetaHeader, global
/* 81352230 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81352234 | 7C 08 02 A6 */	mflr r0
/* 81352238 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8135223C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81352240 | 48 2A 72 71 */	bl _savegpr_23
/* 81352244 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81352248 | 3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8135224C | 7C 77 1B 78 */	mr r23, r3
/* 81352250 | 7C B9 2B 78 */	mr r25, r5
/* 81352254 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81352258 | 7C D8 33 78 */	mr r24, r6
/* 8135225C | 7C FA 3B 78 */	mr r26, r7
/* 81352260 | 7D 1B 43 78 */	mr r27, r8
/* 81352264 | 3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 81352268 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 8135226C | 48 00 0B 8D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81352270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352274 | 7C 7F 1B 78 */	mr r31, r3
/* 81352278 | 41 82 00 10 */	beq .L_81352288
/* 8135227C | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 81352280 | 2C 05 FF FF */	cmpwi r5, -0x1
/* 81352284 | 40 82 01 24 */	bne .L_813523A8
.L_81352288:
/* 81352288 | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8135228C | 3C 60 00 01 */	lis r3, 0x1
/* 81352290 | 38 83 CE 40 */	subi r4, r3, 0x31c0
/* 81352294 | 38 A0 00 20 */	li r5, 0x20
/* 81352298 | 3C 66 00 02 */	addis r3, r6, 0x2
/* 8135229C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813522A0 | 48 20 84 B5 */	bl fn_8155A754
/* 813522A4 | 7C 7C 1B 78 */	mr r28, r3
/* 813522A8 | 7E E3 BB 78 */	mr r3, r23
/* 813522AC | 7F 06 C3 78 */	mr r6, r24
/* 813522B0 | 7F 25 CB 78 */	mr r5, r25
/* 813522B4 | 7F 87 E3 78 */	mr r7, r28
/* 813522B8 | 4B FF E3 B5 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 813522BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813522C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813522C4 | 40 82 00 CC */	bne .L_81352390
/* 813522C8 | 7F 06 C3 78 */	mr r6, r24
/* 813522CC | 7F 25 CB 78 */	mr r5, r25
/* 813522D0 | 38 7E 29 F7 */	addi r3, r30, 0x29f7
/* 813522D4 | 4C C6 31 82 */	crclr cr1eq
/* 813522D8 | 48 1D C3 C9 */	bl OSReport
/* 813522DC | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 813522E0 | 7E E3 BB 78 */	mr r3, r23
/* 813522E4 | 7F 46 D3 78 */	mr r6, r26
/* 813522E8 | 38 9C 06 40 */	addi r4, r28, 0x640
/* 813522EC | 48 00 01 05 */	bl uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc
/* 813522F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813522F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813522F8 | 40 80 00 24 */	bge .L_8135231C
/* 813522FC | 7F 06 C3 78 */	mr r6, r24
/* 81352300 | 7F 25 CB 78 */	mr r5, r25
/* 81352304 | 7F A7 EB 78 */	mr r7, r29
/* 81352308 | 38 7E 27 C6 */	addi r3, r30, 0x27c6
/* 8135230C | 4C C6 31 82 */	crclr cr1eq
/* 81352310 | 48 1D C3 91 */	bl OSReport
/* 81352314 | 3B A0 FF FD */	li r29, -0x3
/* 81352318 | 48 00 00 78 */	b .L_81352390
.L_8135231C:
/* 8135231C | 7F A4 EB 78 */	mr r4, r29
/* 81352320 | 38 7E 28 02 */	addi r3, r30, 0x2802
/* 81352324 | 4C C6 31 82 */	crclr cr1eq
/* 81352328 | 48 1D C3 79 */	bl OSReport
/* 8135232C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81352330 | 41 82 00 14 */	beq .L_81352344
/* 81352334 | 7F 63 DB 78 */	mr r3, r27
/* 81352338 | 38 9C 00 40 */	addi r4, r28, 0x40
/* 8135233C | 38 A0 06 00 */	li r5, 0x600
/* 81352340 | 4B FD DE F1 */	bl memcpy
.L_81352344:
/* 81352344 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81352348 | 41 82 00 1C */	beq .L_81352364
/* 8135234C | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 81352350 | 7F 44 D3 78 */	mr r4, r26
/* 81352354 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 81352358 | 4B FD DE D9 */	bl memcpy
/* 8135235C | 93 BF 00 0C */	stw r29, 0xc(r31)
/* 81352360 | 48 00 00 30 */	b .L_81352390
.L_81352364:
/* 81352364 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 81352368 | 7E E3 BB 78 */	mr r3, r23
/* 8135236C | 7F 06 C3 78 */	mr r6, r24
/* 81352370 | 7F 25 CB 78 */	mr r5, r25
/* 81352374 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 81352378 | 7F 47 D3 78 */	mr r7, r26
/* 8135237C | 7F A8 EB 78 */	mr r8, r29
/* 81352380 | 39 3C 00 40 */	addi r9, r28, 0x40
/* 81352384 | 39 40 FF FF */	li r10, -0x1
/* 81352388 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 8135238C | 48 00 09 7D */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
.L_81352390:
/* 81352390 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81352394 | 7F 84 E3 78 */	mr r4, r28
/* 81352398 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135239C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813523A0 | 48 20 86 65 */	bl fn_8155AA04
/* 813523A4 | 48 00 00 30 */	b .L_813523D4
.L_813523A8:
/* 813523A8 | 7F 43 D3 78 */	mr r3, r26
/* 813523AC | 38 9F 00 18 */	addi r4, r31, 0x18
/* 813523B0 | 4B FD DE 81 */	bl memcpy
/* 813523B4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813523B8 | 41 82 00 18 */	beq .L_813523D0
/* 813523BC | 3C 9F 00 02 */	addis r4, r31, 0x2
/* 813523C0 | 7F 63 DB 78 */	mr r3, r27
/* 813523C4 | 38 A0 06 00 */	li r5, 0x600
/* 813523C8 | 38 84 90 18 */	subi r4, r4, 0x6fe8
/* 813523CC | 4B FD DE 65 */	bl memcpy
.L_813523D0:
/* 813523D0 | 83 BF 00 0C */	lwz r29, 0xc(r31)
.L_813523D4:
/* 813523D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813523D8 | 7F A3 EB 78 */	mr r3, r29
/* 813523DC | 48 2A 71 21 */	bl _restgpr_23
/* 813523E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813523E4 | 7C 08 03 A6 */	mtlr r0
/* 813523E8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813523EC | 4E 80 00 20 */	blr
.endfn get_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUcPQ33ipl7channel18SChanMgrMetaHeader

# .text:0xA004 | 0x813523F0 | size: 0x168
# ipl::NandSDWorker::uncompress_app_thumbnail(const unsigned char*, unsigned long, unsigned char*)
.fn uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc, global
/* 813523F0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813523F4 | 7C 08 02 A6 */	mflr r0
/* 813523F8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813523FC | 39 61 00 40 */	addi r11, r1, 0x40
/* 81352400 | 48 2A 70 B5 */	bl _savegpr_24
/* 81352404 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81352408 | 7C 78 1B 78 */	mr r24, r3
/* 8135240C | 7C 99 23 78 */	mr r25, r4
/* 81352410 | 7C BE 2B 78 */	mr r30, r5
/* 81352414 | 2C 00 00 49 */	cmpwi r0, 0x49
/* 81352418 | 7C DA 33 78 */	mr r26, r6
/* 8135241C | 3B A0 00 00 */	li r29, 0x0
/* 81352420 | 3B 80 00 00 */	li r28, 0x0
/* 81352424 | 3B 60 00 00 */	li r27, 0x0
/* 81352428 | 40 82 00 44 */	bne .L_8135246C
/* 8135242C | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81352430 | 2C 00 00 4D */	cmpwi r0, 0x4d
/* 81352434 | 40 82 00 38 */	bne .L_8135246C
/* 81352438 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 8135243C | 2C 00 00 44 */	cmpwi r0, 0x44
/* 81352440 | 40 82 00 2C */	bne .L_8135246C
/* 81352444 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81352448 | 2C 00 00 35 */	cmpwi r0, 0x35
/* 8135244C | 40 82 00 20 */	bne .L_8135246C
/* 81352450 | 83 84 00 04 */	lwz r28, 0x4(r4)
/* 81352454 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81352458 | 3B A0 00 01 */	li r29, 0x1
/* 8135245C | 38 A0 00 10 */	li r5, 0x10
/* 81352460 | 38 84 00 10 */	addi r4, r4, 0x10
/* 81352464 | 4B FD DD CD */	bl memcpy
/* 81352468 | 3B 60 00 20 */	li r27, 0x20
.L_8135246C:
/* 8135246C | 7F F9 DA 14 */	add r31, r25, r27
/* 81352470 | 7F E3 FB 78 */	mr r3, r31
/* 81352474 | 48 00 01 B9 */	bl is_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135247C | 41 82 00 84 */	beq .L_81352500
/* 81352480 | 7F E3 FB 78 */	mr r3, r31
/* 81352484 | 48 00 02 19 */	bl get_decode_size__Q23ipl12NandSDWorkerFPCUc
/* 81352488 | 3C 80 00 02 */	lis r4, 0x2
/* 8135248C | 7C 7E 1B 78 */	mr r30, r3
/* 81352490 | 38 04 90 00 */	subi r0, r4, 0x7000
/* 81352494 | 7C 03 00 00 */	cmpw r3, r0
/* 81352498 | 40 81 00 0C */	ble .L_813524A4
/* 8135249C | 38 60 FF FE */	li r3, -0x2
/* 813524A0 | 48 00 00 A0 */	b .L_81352540
.L_813524A4:
/* 813524A4 | 7F E3 FB 78 */	mr r3, r31
/* 813524A8 | 48 00 01 4D */	bl is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc
/* 813524AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813524B0 | 41 82 00 18 */	beq .L_813524C8
/* 813524B4 | 7F E3 FB 78 */	mr r3, r31
/* 813524B8 | 7F 44 D3 78 */	mr r4, r26
/* 813524BC | 38 63 00 04 */	addi r3, r3, 0x4
/* 813524C0 | 48 20 9D ED */	bl CXUncompressLZ
/* 813524C4 | 48 00 00 10 */	b .L_813524D4
.L_813524C8:
/* 813524C8 | 7F 43 D3 78 */	mr r3, r26
/* 813524CC | 7F E4 FB 78 */	mr r4, r31
/* 813524D0 | 4B FD FC 51 */	bl Rvl_decode
.L_813524D4:
/* 813524D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813524D8 | 41 82 00 64 */	beq .L_8135253C
/* 813524DC | 7F 03 C3 78 */	mr r3, r24
/* 813524E0 | 7F E5 FB 78 */	mr r5, r31
/* 813524E4 | 7F 86 E3 78 */	mr r6, r28
/* 813524E8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813524EC | 4B FF EB 11 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 813524F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813524F4 | 40 82 00 48 */	bne .L_8135253C
/* 813524F8 | 3B C0 FF FF */	li r30, -0x1
/* 813524FC | 48 00 00 40 */	b .L_8135253C
.L_81352500:
/* 81352500 | 7F DB F0 50 */	subf r30, r27, r30
/* 81352504 | 7F 43 D3 78 */	mr r3, r26
/* 81352508 | 7F E4 FB 78 */	mr r4, r31
/* 8135250C | 7F C5 F3 78 */	mr r5, r30
/* 81352510 | 4B FD DD 21 */	bl memcpy
/* 81352514 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81352518 | 41 82 00 24 */	beq .L_8135253C
/* 8135251C | 7F 03 C3 78 */	mr r3, r24
/* 81352520 | 7F 45 D3 78 */	mr r5, r26
/* 81352524 | 7F 86 E3 78 */	mr r6, r28
/* 81352528 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135252C | 4B FF EA D1 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 81352530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352534 | 40 82 00 08 */	bne .L_8135253C
/* 81352538 | 3B C0 FF FF */	li r30, -0x1
.L_8135253C:
/* 8135253C | 7F C3 F3 78 */	mr r3, r30
.L_81352540:
/* 81352540 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81352544 | 48 2A 6F BD */	bl _restgpr_24
/* 81352548 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8135254C | 7C 08 03 A6 */	mtlr r0
/* 81352550 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81352554 | 4E 80 00 20 */	blr
.endfn uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc

# .text:0xA16C | 0x81352558 | size: 0x34
# ipl::NandSDWorker::is_sli_compressed(const unsigned char*)
.fn is_sli_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 81352558 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8135255C | 38 80 00 00 */	li r4, 0x0
/* 81352560 | 2C 00 00 59 */	cmpwi r0, 0x59
/* 81352564 | 40 82 00 20 */	bne .L_81352584
/* 81352568 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8135256C | 2C 00 00 61 */	cmpwi r0, 0x61
/* 81352570 | 40 82 00 14 */	bne .L_81352584
/* 81352574 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81352578 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 8135257C | 40 82 00 08 */	bne .L_81352584
/* 81352580 | 38 80 00 01 */	li r4, 0x1
.L_81352584:
/* 81352584 | 7C 83 23 78 */	mr r3, r4
/* 81352588 | 4E 80 00 20 */	blr
.endfn is_sli_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA1A0 | 0x8135258C | size: 0x34
# ipl::NandSDWorker::is_asr_compressed(const unsigned char*)
.fn is_asr_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 8135258C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81352590 | 38 80 00 00 */	li r4, 0x0
/* 81352594 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81352598 | 40 82 00 20 */	bne .L_813525B8
/* 8135259C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 813525A0 | 2C 00 00 53 */	cmpwi r0, 0x53
/* 813525A4 | 40 82 00 14 */	bne .L_813525B8
/* 813525A8 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 813525AC | 2C 00 00 52 */	cmpwi r0, 0x52
/* 813525B0 | 40 82 00 08 */	bne .L_813525B8
/* 813525B4 | 38 80 00 01 */	li r4, 0x1
.L_813525B8:
/* 813525B8 | 7C 83 23 78 */	mr r3, r4
/* 813525BC | 4E 80 00 20 */	blr
.endfn is_asr_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA1D4 | 0x813525C0 | size: 0x34
# ipl::NandSDWorker::is_ash_compressed(const unsigned char*)
.fn is_ash_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 813525C0 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813525C4 | 38 80 00 00 */	li r4, 0x0
/* 813525C8 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 813525CC | 40 82 00 20 */	bne .L_813525EC
/* 813525D0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 813525D4 | 2C 00 00 53 */	cmpwi r0, 0x53
/* 813525D8 | 40 82 00 14 */	bne .L_813525EC
/* 813525DC | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 813525E0 | 2C 00 00 48 */	cmpwi r0, 0x48
/* 813525E4 | 40 82 00 08 */	bne .L_813525EC
/* 813525E8 | 38 80 00 01 */	li r4, 0x1
.L_813525EC:
/* 813525EC | 7C 83 23 78 */	mr r3, r4
/* 813525F0 | 4E 80 00 20 */	blr
.endfn is_ash_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA208 | 0x813525F4 | size: 0x38
# ipl::NandSDWorker::is_lz7_compressed(const unsigned char*)
.fn is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 813525F4 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813525F8 | 38 80 00 00 */	li r4, 0x0
/* 813525FC | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 81352600 | 40 82 00 24 */	bne .L_81352624
/* 81352604 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81352608 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 8135260C | 40 82 00 18 */	bne .L_81352624
/* 81352610 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81352614 | 2C 00 00 37 */	cmpwi r0, 0x37
/* 81352618 | 40 82 00 0C */	bne .L_81352624
/* 8135261C | 40 82 00 08 */	bne .L_81352624
/* 81352620 | 38 80 00 01 */	li r4, 0x1
.L_81352624:
/* 81352624 | 7C 83 23 78 */	mr r3, r4
/* 81352628 | 4E 80 00 20 */	blr
.endfn is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA240 | 0x8135262C | size: 0x70
# ipl::NandSDWorker::is_compressed(const unsigned char*)
.fn is_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 8135262C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81352630 | 7C 08 02 A6 */	mflr r0
/* 81352634 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81352638 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135263C | 7C 7F 1B 78 */	mr r31, r3
/* 81352640 | 4B FF FF 19 */	bl is_sli_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352648 | 40 82 00 34 */	bne .L_8135267C
/* 8135264C | 7F E3 FB 78 */	mr r3, r31
/* 81352650 | 4B FF FF 3D */	bl is_asr_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352654 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352658 | 40 82 00 24 */	bne .L_8135267C
/* 8135265C | 7F E3 FB 78 */	mr r3, r31
/* 81352660 | 4B FF FF 61 */	bl is_ash_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352668 | 40 82 00 14 */	bne .L_8135267C
/* 8135266C | 7F E3 FB 78 */	mr r3, r31
/* 81352670 | 4B FF FF 85 */	bl is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352678 | 41 82 00 0C */	beq .L_81352684
.L_8135267C:
/* 8135267C | 38 60 00 01 */	li r3, 0x1
/* 81352680 | 48 00 00 08 */	b .L_81352688
.L_81352684:
/* 81352684 | 38 60 00 00 */	li r3, 0x0
.L_81352688:
/* 81352688 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135268C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81352690 | 7C 08 03 A6 */	mtlr r0
/* 81352694 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81352698 | 4E 80 00 20 */	blr
.endfn is_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA2B0 | 0x8135269C | size: 0x5C
# ipl::NandSDWorker::get_decode_size(const unsigned char*)
.fn get_decode_size__Q23ipl12NandSDWorkerFPCUc, global
/* 8135269C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813526A0 | 2C 00 00 59 */	cmpwi r0, 0x59
/* 813526A4 | 40 82 00 28 */	bne .L_813526CC
/* 813526A8 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 813526AC | 88 A3 00 06 */	lbz r5, 0x6(r3)
/* 813526B0 | 88 83 00 07 */	lbz r4, 0x7(r3)
/* 813526B4 | 54 00 80 1E */	slwi r0, r0, 16
/* 813526B8 | 88 63 00 04 */	lbz r3, 0x4(r3)
/* 813526BC | 50 A4 44 2E */	rlwimi r4, r5, 8, 16, 23
/* 813526C0 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 813526C4 | 7C 83 03 78 */	or r3, r4, r0
/* 813526C8 | 4E 80 00 20 */	blr
.L_813526CC:
/* 813526CC | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 813526D0 | 40 82 00 0C */	bne .L_813526DC
/* 813526D4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813526D8 | 48 20 9B 94 */	b CXGetUncompressedSize
.L_813526DC:
/* 813526DC | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 813526E0 | 88 83 00 05 */	lbz r4, 0x5(r3)
/* 813526E4 | 54 00 40 2E */	slwi r0, r0, 8
/* 813526E8 | 88 63 00 07 */	lbz r3, 0x7(r3)
/* 813526EC | 50 80 82 1E */	rlwimi r0, r4, 16, 8, 15
/* 813526F0 | 7C 63 03 78 */	or r3, r3, r0
/* 813526F4 | 4E 80 00 20 */	blr
.endfn get_decode_size__Q23ipl12NandSDWorkerFPCUc

# .text:0xA30C | 0x813526F8 | size: 0x6C
# ipl::NandSDWorker::send_work(ipl::NandSDWorker::WorkMessage)
.fn send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage, global
/* 813526F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813526FC | 7C 08 02 A6 */	mflr r0
/* 81352700 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81352704 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81352708 | 7C 9F 23 78 */	mr r31, r4
/* 8135270C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81352710 | 7C 7E 1B 78 */	mr r30, r3
/* 81352714 | 48 00 00 A5 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 81352718 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8135271C | 7C 00 00 34 */	cntlzw r0, r0
/* 81352720 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81352724 | 40 82 00 28 */	bne .L_8135274C
/* 81352728 | 7F C3 F3 78 */	mr r3, r30
/* 8135272C | 38 80 00 01 */	li r4, 0x1
/* 81352730 | 48 00 00 D9 */	bl set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState
/* 81352734 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81352738 | 7F E4 FB 78 */	mr r4, r31
/* 8135273C | 38 A0 00 00 */	li r5, 0x0
/* 81352740 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81352744 | 38 63 E9 E0 */	subi r3, r3, 0x1620
/* 81352748 | 48 1D E9 39 */	bl OSSendMessage
.L_8135274C:
/* 8135274C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81352750 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81352754 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81352758 | 7C 08 03 A6 */	mtlr r0
/* 8135275C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81352760 | 4E 80 00 20 */	blr
.endfn send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage

# .text:0xA378 | 0x81352764 | size: 0x54
# ipl::NandSDWorker::wait_work()
.fn wait_work__Q23ipl12NandSDWorkerFv, global
/* 81352764 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81352768 | 7C 08 02 A6 */	mflr r0
/* 8135276C | 38 A0 00 01 */	li r5, 0x1
/* 81352770 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81352774 | 38 00 00 00 */	li r0, 0x0
/* 81352778 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135277C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81352780 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81352784 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81352788 | 38 63 E9 E0 */	subi r3, r3, 0x1620
/* 8135278C | 48 1D E9 BD */	bl OSReceiveMessage
/* 81352790 | 3C 60 81 64 */	lis r3, lbl_816384B5@ha
/* 81352794 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81352798 | 38 63 84 B5 */	addi r3, r3, lbl_816384B5@l
/* 8135279C | 4C C6 31 82 */	crclr cr1eq
/* 813527A0 | 48 1D BF 01 */	bl OSReport
/* 813527A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813527A8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813527AC | 7C 08 03 A6 */	mtlr r0
/* 813527B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813527B4 | 4E 80 00 20 */	blr
.endfn wait_work__Q23ipl12NandSDWorkerFv

# .text:0xA3CC | 0x813527B8 | size: 0x50
# ipl::NandSDWorker::get_state()
.fn get_state__Q23ipl12NandSDWorkerFv, global
/* 813527B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813527BC | 7C 08 02 A6 */	mflr r0
/* 813527C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813527C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813527C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813527CC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813527D0 | 3C 64 00 04 */	addis r3, r4, 0x4
/* 813527D4 | 38 63 E9 C8 */	subi r3, r3, 0x1638
/* 813527D8 | 48 1D F4 31 */	bl fn_81531C08
/* 813527DC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813527E0 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 813527E4 | 83 E3 EA 20 */	lwz r31, -0x15e0(r3)
/* 813527E8 | 38 63 E9 C8 */	subi r3, r3, 0x1638
/* 813527EC | 48 1D F4 F9 */	bl fn_81531CE4
/* 813527F0 | 7F E3 FB 78 */	mr r3, r31
/* 813527F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813527F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813527FC | 7C 08 03 A6 */	mtlr r0
/* 81352800 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81352804 | 4E 80 00 20 */	blr
.endfn get_state__Q23ipl12NandSDWorkerFv

# .text:0xA41C | 0x81352808 | size: 0x60
# ipl::NandSDWorker::set_state(ipl::NandSDWorker::WorkState)
.fn set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState, global
/* 81352808 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135280C | 7C 08 02 A6 */	mflr r0
/* 81352810 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81352814 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81352818 | 7C 9F 23 78 */	mr r31, r4
/* 8135281C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81352820 | 7C 7E 1B 78 */	mr r30, r3
/* 81352824 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81352828 | 3C 65 00 04 */	addis r3, r5, 0x4
/* 8135282C | 38 63 E9 C8 */	subi r3, r3, 0x1638
/* 81352830 | 48 1D F3 D9 */	bl fn_81531C08
/* 81352834 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81352838 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135283C | 93 E3 EA 20 */	stw r31, -0x15e0(r3)
/* 81352840 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81352844 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81352848 | 38 63 E9 C8 */	subi r3, r3, 0x1638
/* 8135284C | 48 1D F4 99 */	bl fn_81531CE4
/* 81352850 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81352854 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81352858 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135285C | 7C 08 03 A6 */	mtlr r0
/* 81352860 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81352864 | 4E 80 00 20 */	blr
.endfn set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState

# .text:0xA47C | 0x81352868 | size: 0x48
# ipl::NandSDWorker::sd_insert_callback(signed char)
.fn sd_insert_callback__Q23ipl12NandSDWorkerFSc, global
/* 81352868 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135286C | 7C 08 02 A6 */	mflr r0
/* 81352870 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81352874 | 7C 60 1B 78 */	mr r0, r3
/* 81352878 | 3C 60 81 64 */	lis r3, lbl_816384D9@ha
/* 8135287C | 38 63 84 D9 */	addi r3, r3, lbl_816384D9@l
/* 81352880 | 7C 04 07 74 */	extsb r4, r0
/* 81352884 | 4C C6 31 82 */	crclr cr1eq
/* 81352888 | 48 1D BE 19 */	bl OSReport
/* 8135288C | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 81352890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81352894 | 41 82 00 0C */	beq .L_813528A0
/* 81352898 | 38 00 00 02 */	li r0, 0x2
/* 8135289C | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
.L_813528A0:
/* 813528A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813528A4 | 7C 08 03 A6 */	mtlr r0
/* 813528A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813528AC | 4E 80 00 20 */	blr
.endfn sd_insert_callback__Q23ipl12NandSDWorkerFSc

# .text:0xA4C4 | 0x813528B0 | size: 0x48
# ipl::NandSDWorker::sd_eject_callback(signed char)
.fn sd_eject_callback__Q23ipl12NandSDWorkerFSc, global
/* 813528B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813528B4 | 7C 08 02 A6 */	mflr r0
/* 813528B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813528BC | 7C 60 1B 78 */	mr r0, r3
/* 813528C0 | 3C 60 81 64 */	lis r3, lbl_81638507@ha
/* 813528C4 | 38 63 85 07 */	addi r3, r3, lbl_81638507@l
/* 813528C8 | 7C 04 07 74 */	extsb r4, r0
/* 813528CC | 4C C6 31 82 */	crclr cr1eq
/* 813528D0 | 48 1D BD D1 */	bl OSReport
/* 813528D4 | 80 0D A6 98 */	lwz r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
/* 813528D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813528DC | 41 82 00 0C */	beq .L_813528E8
/* 813528E0 | 38 00 00 01 */	li r0, 0x1
/* 813528E4 | 90 0D A6 98 */	stw r0, s_sd_state__Q23ipl12NandSDWorker@sda21(r0)
.L_813528E8:
/* 813528E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813528EC | 7C 08 03 A6 */	mtlr r0
/* 813528F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813528F4 | 4E 80 00 20 */	blr
.endfn sd_eject_callback__Q23ipl12NandSDWorkerFSc

# .text:0xA50C | 0x813528F8 | size: 0x2BC
# ipl::NandSDWorker::add_save_cache(nw4r::ut::List*, unsigned long long, WIISaveBannerFile*, long)
.fn add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel, global
/* 813528F8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813528FC | 7C 08 02 A6 */	mflr r0
/* 81352900 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81352904 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81352908 | 48 2A 6B B1 */	bl _savegpr_25
/* 8135290C | A0 04 00 08 */	lhz r0, 0x8(r4)
/* 81352910 | 7C 79 1B 78 */	mr r25, r3
/* 81352914 | 7C 9D 23 78 */	mr r29, r4
/* 81352918 | 7C BB 2B 78 */	mr r27, r5
/* 8135291C | 28 00 00 2D */	cmplwi r0, 0x2d
/* 81352920 | 7C DA 33 78 */	mr r26, r6
/* 81352924 | 7C FE 3B 78 */	mr r30, r7
/* 81352928 | 7D 1F 43 78 */	mr r31, r8
/* 8135292C | 41 80 00 34 */	blt .L_81352960
/* 81352930 | 7F A3 EB 78 */	mr r3, r29
/* 81352934 | 38 80 00 00 */	li r4, 0x0
/* 81352938 | 48 1B F9 C5 */	bl List_GetPrev__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8135293C | 7C 7C 1B 78 */	mr r28, r3
/* 81352940 | 7F A3 EB 78 */	mr r3, r29
/* 81352944 | 7F 84 E3 78 */	mr r4, r28
/* 81352948 | 48 1B F9 29 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8135294C | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81352950 | 7F 84 E3 78 */	mr r4, r28
/* 81352954 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352958 | 80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 8135295C | 48 20 8C 25 */	bl fn_8155B580
.L_81352960:
/* 81352960 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81352964 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352968 | 80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 8135296C | 48 20 8B 81 */	bl fn_8155B4EC
/* 81352970 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352974 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81352978 | 93 45 F0 A4 */	stw r26, -0xf5c(r5)
/* 8135297C | 7C 64 1B 78 */	mr r4, r3
/* 81352980 | 93 65 F0 A0 */	stw r27, -0xf60(r5)
/* 81352984 | 41 82 02 00 */	beq .L_81352B84
/* 81352988 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8135298C | 38 00 00 0B */	li r0, 0xb
/* 81352990 | 38 E3 00 09 */	addi r7, r3, 0x9
/* 81352994 | 38 DE 00 09 */	addi r6, r30, 0x9
/* 81352998 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8135299C | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813529A0 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 813529A4 | A0 BE 00 08 */	lhz r5, 0x8(r30)
/* 813529A8 | B0 A3 00 08 */	sth r5, 0x8(r3)
/* 813529AC | 7C 09 03 A6 */	mtctr r0
.L_813529B0:
/* 813529B0 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 813529B4 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 813529B8 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 813529BC | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 813529C0 | 42 00 FF F0 */	bdnz .L_813529B0
/* 813529C4 | 38 00 00 10 */	li r0, 0x10
/* 813529C8 | 38 E3 00 1E */	addi r7, r3, 0x1e
/* 813529CC | 38 DE 00 1E */	addi r6, r30, 0x1e
/* 813529D0 | 7C 09 03 A6 */	mtctr r0
.L_813529D4:
/* 813529D4 | A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 813529D8 | A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 813529DC | B0 A7 00 02 */	sth r5, 0x2(r7)
/* 813529E0 | B4 07 00 04 */	sthu r0, 0x4(r7)
/* 813529E4 | 42 00 FF F0 */	bdnz .L_813529D4
/* 813529E8 | 38 00 00 10 */	li r0, 0x10
/* 813529EC | 38 E3 00 5E */	addi r7, r3, 0x5e
/* 813529F0 | 38 DE 00 5E */	addi r6, r30, 0x5e
/* 813529F4 | 7C 09 03 A6 */	mtctr r0
.L_813529F8:
/* 813529F8 | A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 813529FC | A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 81352A00 | B0 A7 00 02 */	sth r5, 0x2(r7)
/* 81352A04 | B4 07 00 04 */	sthu r0, 0x4(r7)
/* 81352A08 | 42 00 FF F0 */	bdnz .L_813529F8
/* 81352A0C | 38 00 30 00 */	li r0, 0x3000
/* 81352A10 | 38 E3 00 9F */	addi r7, r3, 0x9f
/* 81352A14 | 38 DE 00 9F */	addi r6, r30, 0x9f
/* 81352A18 | 7C 09 03 A6 */	mtctr r0
.L_81352A1C:
/* 81352A1C | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A20 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A24 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A28 | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352A2C | 42 00 FF F0 */	bdnz .L_81352A1C
/* 81352A30 | 38 00 09 00 */	li r0, 0x900
/* 81352A34 | 38 E3 60 9F */	addi r7, r3, 0x609f
/* 81352A38 | 38 DE 60 9F */	addi r6, r30, 0x609f
/* 81352A3C | 7C 09 03 A6 */	mtctr r0
.L_81352A40:
/* 81352A40 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A44 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A48 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A4C | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352A50 | 42 00 FF F0 */	bdnz .L_81352A40
/* 81352A54 | 38 00 09 00 */	li r0, 0x900
/* 81352A58 | 38 E3 72 9F */	addi r7, r3, 0x729f
/* 81352A5C | 38 DE 72 9F */	addi r6, r30, 0x729f
/* 81352A60 | 7C 09 03 A6 */	mtctr r0
.L_81352A64:
/* 81352A64 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A68 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A6C | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A70 | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352A74 | 42 00 FF F0 */	bdnz .L_81352A64
/* 81352A78 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81352A7C | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352A80 | 38 00 09 00 */	li r0, 0x900
/* 81352A84 | 38 E5 84 9F */	subi r7, r5, 0x7b61
/* 81352A88 | 38 C6 84 9F */	subi r6, r6, 0x7b61
/* 81352A8C | 7C 09 03 A6 */	mtctr r0
.L_81352A90:
/* 81352A90 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A94 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A98 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A9C | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352AA0 | 42 00 FF F0 */	bdnz .L_81352A90
/* 81352AA4 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81352AA8 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352AAC | 38 00 09 00 */	li r0, 0x900
/* 81352AB0 | 38 E5 96 9F */	subi r7, r5, 0x6961
/* 81352AB4 | 38 C6 96 9F */	subi r6, r6, 0x6961
/* 81352AB8 | 7C 09 03 A6 */	mtctr r0
.L_81352ABC:
/* 81352ABC | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352AC0 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352AC4 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352AC8 | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352ACC | 42 00 FF F0 */	bdnz .L_81352ABC
/* 81352AD0 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81352AD4 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352AD8 | 38 00 09 00 */	li r0, 0x900
/* 81352ADC | 38 E5 A8 9F */	subi r7, r5, 0x5761
/* 81352AE0 | 38 C6 A8 9F */	subi r6, r6, 0x5761
/* 81352AE4 | 7C 09 03 A6 */	mtctr r0
.L_81352AE8:
/* 81352AE8 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352AEC | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352AF0 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352AF4 | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352AF8 | 42 00 FF F0 */	bdnz .L_81352AE8
/* 81352AFC | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81352B00 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B04 | 38 00 09 00 */	li r0, 0x900
/* 81352B08 | 38 E5 BA 9F */	subi r7, r5, 0x4561
/* 81352B0C | 38 C6 BA 9F */	subi r6, r6, 0x4561
/* 81352B10 | 7C 09 03 A6 */	mtctr r0
.L_81352B14:
/* 81352B14 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352B18 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352B1C | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352B20 | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352B24 | 42 00 FF F0 */	bdnz .L_81352B14
/* 81352B28 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81352B2C | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B30 | 38 00 09 00 */	li r0, 0x900
/* 81352B34 | 38 E5 CC 9F */	subi r7, r5, 0x3361
/* 81352B38 | 38 C6 CC 9F */	subi r6, r6, 0x3361
/* 81352B3C | 7C 09 03 A6 */	mtctr r0
.L_81352B40:
/* 81352B40 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352B44 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352B48 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352B4C | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352B50 | 42 00 FF F0 */	bdnz .L_81352B40
/* 81352B54 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81352B58 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B5C | 38 00 09 00 */	li r0, 0x900
/* 81352B60 | 38 E5 DE 9F */	subi r7, r5, 0x2161
/* 81352B64 | 38 C6 DE 9F */	subi r6, r6, 0x2161
/* 81352B68 | 7C 09 03 A6 */	mtctr r0
.L_81352B6C:
/* 81352B6C | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352B70 | 8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352B74 | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352B78 | 9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352B7C | 42 00 FF F0 */	bdnz .L_81352B6C
/* 81352B80 | 48 00 00 0C */	b .L_81352B8C
.L_81352B84:
/* 81352B84 | 38 00 00 00 */	li r0, 0x0
/* 81352B88 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_81352B8C:
/* 81352B8C | 3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B90 | 7F A3 EB 78 */	mr r3, r29
/* 81352B94 | 93 E5 F0 A8 */	stw r31, -0xf58(r5)
/* 81352B98 | 48 1B F5 4D */	bl List_Prepend__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352B9C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81352BA0 | 48 2A 69 65 */	bl _restgpr_25
/* 81352BA4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81352BA8 | 7C 08 03 A6 */	mtlr r0
/* 81352BAC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81352BB0 | 4E 80 00 20 */	blr
.endfn add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel

# .text:0xA7C8 | 0x81352BB4 | size: 0x7C
# ipl::NandSDWorker::find_save_cache(nw4r::ut::List*, unsigned long long)
.fn find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352BB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352BB8 | 7C 08 02 A6 */	mflr r0
/* 81352BBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81352BC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352BC4 | 48 2A 69 05 */	bl _savegpr_29
/* 81352BC8 | 7C 9D 23 78 */	mr r29, r4
/* 81352BCC | 7C BF 2B 78 */	mr r31, r5
/* 81352BD0 | 7C DE 33 78 */	mr r30, r6
/* 81352BD4 | 38 80 00 00 */	li r4, 0x0
/* 81352BD8 | 48 00 00 28 */	b .L_81352C00
.L_81352BDC:
/* 81352BDC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81352BE0 | 80 03 F0 A0 */	lwz r0, -0xf60(r3)
/* 81352BE4 | 80 63 F0 A4 */	lwz r3, -0xf5c(r3)
/* 81352BE8 | 7C 00 FA 78 */	xor r0, r0, r31
/* 81352BEC | 7C 63 F2 78 */	xor r3, r3, r30
/* 81352BF0 | 7C 60 03 79 */	or. r0, r3, r0
/* 81352BF4 | 40 82 00 0C */	bne .L_81352C00
/* 81352BF8 | 7C 83 23 78 */	mr r3, r4
/* 81352BFC | 48 00 00 1C */	b .L_81352C18
.L_81352C00:
/* 81352C00 | 7F A3 EB 78 */	mr r3, r29
/* 81352C04 | 48 1B F6 D9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352C08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352C0C | 7C 64 1B 78 */	mr r4, r3
/* 81352C10 | 40 82 FF CC */	bne .L_81352BDC
/* 81352C14 | 38 60 00 00 */	li r3, 0x0
.L_81352C18:
/* 81352C18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352C1C | 48 2A 68 F9 */	bl _restgpr_29
/* 81352C20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352C24 | 7C 08 03 A6 */	mtlr r0
/* 81352C28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352C2C | 4E 80 00 20 */	blr
.endfn find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xA844 | 0x81352C30 | size: 0x64
# ipl::NandSDWorker::delete_save_cache(nw4r::ut::List*, unsigned long long)
.fn delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352C30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352C34 | 7C 08 02 A6 */	mflr r0
/* 81352C38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81352C3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352C40 | 48 2A 68 89 */	bl _savegpr_29
/* 81352C44 | 7C 7D 1B 78 */	mr r29, r3
/* 81352C48 | 7C 9E 23 78 */	mr r30, r4
/* 81352C4C | 4B FF FF 69 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81352C50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352C54 | 7C 7F 1B 78 */	mr r31, r3
/* 81352C58 | 41 82 00 24 */	beq .L_81352C7C
/* 81352C5C | 7F C3 F3 78 */	mr r3, r30
/* 81352C60 | 7F E4 FB 78 */	mr r4, r31
/* 81352C64 | 48 1B F6 0D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352C68 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352C6C | 7F E4 FB 78 */	mr r4, r31
/* 81352C70 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352C74 | 80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 81352C78 | 48 20 89 09 */	bl fn_8155B580
.L_81352C7C:
/* 81352C7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352C80 | 48 2A 68 95 */	bl _restgpr_29
/* 81352C84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352C88 | 7C 08 03 A6 */	mtlr r0
/* 81352C8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352C90 | 4E 80 00 20 */	blr
.endfn delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xA8A8 | 0x81352C94 | size: 0x74
# ipl::NandSDWorker::clear_save_cache(nw4r::ut::List*)
.fn clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List, global
/* 81352C94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352C98 | 7C 08 02 A6 */	mflr r0
/* 81352C9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81352CA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352CA4 | 48 2A 68 25 */	bl _savegpr_29
/* 81352CA8 | 7C 7D 1B 78 */	mr r29, r3
/* 81352CAC | 7C 9E 23 78 */	mr r30, r4
/* 81352CB0 | 3B E0 00 00 */	li r31, 0x0
/* 81352CB4 | 48 00 00 24 */	b .L_81352CD8
.L_81352CB8:
/* 81352CB8 | 7F C3 F3 78 */	mr r3, r30
/* 81352CBC | 7F E4 FB 78 */	mr r4, r31
/* 81352CC0 | 48 1B F5 B1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352CC4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352CC8 | 7F E4 FB 78 */	mr r4, r31
/* 81352CCC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352CD0 | 80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 81352CD4 | 48 20 88 AD */	bl fn_8155B580
.L_81352CD8:
/* 81352CD8 | 7F C3 F3 78 */	mr r3, r30
/* 81352CDC | 7F E4 FB 78 */	mr r4, r31
/* 81352CE0 | 48 1B F5 FD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352CE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352CE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81352CEC | 40 82 FF CC */	bne .L_81352CB8
/* 81352CF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352CF4 | 48 2A 68 21 */	bl _restgpr_29
/* 81352CF8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352CFC | 7C 08 03 A6 */	mtlr r0
/* 81352D00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352D04 | 4E 80 00 20 */	blr
.endfn clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List

# .text:0xA91C | 0x81352D08 | size: 0xF0
# ipl::NandSDWorker::add_app_cache(nw4r::ut::List*, unsigned long long, unsigned char*, unsigned long, ipl::channel::SChanMgrMetaHeader*, long)
.fn add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl, global
/* 81352D08 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81352D0C | 7C 08 02 A6 */	mflr r0
/* 81352D10 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81352D14 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81352D18 | 48 2A 67 99 */	bl _savegpr_23
/* 81352D1C | A0 04 00 08 */	lhz r0, 0x8(r4)
/* 81352D20 | 7C 77 1B 78 */	mr r23, r3
/* 81352D24 | 7C 98 23 78 */	mr r24, r4
/* 81352D28 | 7C BA 2B 78 */	mr r26, r5
/* 81352D2C | 28 00 00 30 */	cmplwi r0, 0x30
/* 81352D30 | 7C D9 33 78 */	mr r25, r6
/* 81352D34 | 7C FB 3B 78 */	mr r27, r7
/* 81352D38 | 7D 1C 43 78 */	mr r28, r8
/* 81352D3C | 7D 3D 4B 78 */	mr r29, r9
/* 81352D40 | 7D 5E 53 78 */	mr r30, r10
/* 81352D44 | 41 80 00 34 */	blt .L_81352D78
/* 81352D48 | 7F 03 C3 78 */	mr r3, r24
/* 81352D4C | 38 80 00 00 */	li r4, 0x0
/* 81352D50 | 48 1B F5 AD */	bl List_GetPrev__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352D54 | 7C 7F 1B 78 */	mr r31, r3
/* 81352D58 | 7F 03 C3 78 */	mr r3, r24
/* 81352D5C | 7F E4 FB 78 */	mr r4, r31
/* 81352D60 | 48 1B F5 11 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352D64 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81352D68 | 7F E4 FB 78 */	mr r4, r31
/* 81352D6C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352D70 | 80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352D74 | 48 20 88 0D */	bl fn_8155B580
.L_81352D78:
/* 81352D78 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81352D7C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352D80 | 80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352D84 | 48 20 87 69 */	bl fn_8155B4EC
/* 81352D88 | 93 23 00 04 */	stw r25, 0x4(r3)
/* 81352D8C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81352D90 | 7C 7F 1B 78 */	mr r31, r3
/* 81352D94 | 93 43 00 00 */	stw r26, 0x0(r3)
/* 81352D98 | 41 82 00 30 */	beq .L_81352DC8
/* 81352D9C | 7F 64 DB 78 */	mr r4, r27
/* 81352DA0 | 7F 85 E3 78 */	mr r5, r28
/* 81352DA4 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81352DA8 | 4B FD D4 89 */	bl memcpy
/* 81352DAC | 3C 7F 00 02 */	addis r3, r31, 0x2
/* 81352DB0 | 7F A4 EB 78 */	mr r4, r29
/* 81352DB4 | 38 A0 06 00 */	li r5, 0x600
/* 81352DB8 | 38 63 90 18 */	subi r3, r3, 0x6fe8
/* 81352DBC | 4B FD D4 75 */	bl memcpy
/* 81352DC0 | 93 9F 00 0C */	stw r28, 0xc(r31)
/* 81352DC4 | 48 00 00 0C */	b .L_81352DD0
.L_81352DC8:
/* 81352DC8 | 38 00 FF FF */	li r0, -0x1
/* 81352DCC | 90 03 00 0C */	stw r0, 0xc(r3)
.L_81352DD0:
/* 81352DD0 | 93 DF 00 08 */	stw r30, 0x8(r31)
/* 81352DD4 | 7F 03 C3 78 */	mr r3, r24
/* 81352DD8 | 7F E4 FB 78 */	mr r4, r31
/* 81352DDC | 48 1B F3 09 */	bl List_Prepend__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352DE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81352DE4 | 48 2A 67 19 */	bl _restgpr_23
/* 81352DE8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81352DEC | 7C 08 03 A6 */	mtlr r0
/* 81352DF0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81352DF4 | 4E 80 00 20 */	blr
.endfn add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl

# .text:0xAA0C | 0x81352DF8 | size: 0xD0
# ipl::NandSDWorker::find_app_cache(nw4r::ut::List*, unsigned long long)
.fn find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352DF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352DFC | 7C 08 02 A6 */	mflr r0
/* 81352E00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81352E04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352E08 | 48 2A 66 BD */	bl _savegpr_28
/* 81352E0C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81352E10 | 7C BE 2B 78 */	mr r30, r5
/* 81352E14 | 7C 9C 23 78 */	mr r28, r4
/* 81352E18 | 7C DD 33 78 */	mr r29, r6
/* 81352E1C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352E20 | 38 A0 00 00 */	li r5, 0x0
/* 81352E24 | 38 03 E6 84 */	subi r0, r3, 0x197c
/* 81352E28 | 7C 04 00 40 */	cmplw r4, r0
/* 81352E2C | 40 82 00 68 */	bne .L_81352E94
/* 81352E30 | 3B E0 FF FF */	li r31, -0x1
/* 81352E34 | 48 00 00 20 */	b .L_81352E54
.L_81352E38:
/* 81352E38 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81352E3C | 7C 00 F8 38 */	and r0, r0, r31
/* 81352E40 | 7C 00 EA 78 */	xor r0, r0, r29
/* 81352E44 | 7C 00 F3 79 */	or. r0, r0, r30
/* 81352E48 | 40 82 00 0C */	bne .L_81352E54
/* 81352E4C | 7C A3 2B 78 */	mr r3, r5
/* 81352E50 | 48 00 00 60 */	b .L_81352EB0
.L_81352E54:
/* 81352E54 | 7F 83 E3 78 */	mr r3, r28
/* 81352E58 | 7C A4 2B 78 */	mr r4, r5
/* 81352E5C | 48 1B F4 81 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352E60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352E64 | 7C 65 1B 78 */	mr r5, r3
/* 81352E68 | 40 82 FF D0 */	bne .L_81352E38
/* 81352E6C | 48 00 00 40 */	b .L_81352EAC
/* 81352E70 | 48 00 00 24 */	b .L_81352E94
.L_81352E74:
/* 81352E74 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81352E78 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81352E7C | 7C 00 F2 78 */	xor r0, r0, r30
/* 81352E80 | 7C 63 EA 78 */	xor r3, r3, r29
/* 81352E84 | 7C 60 03 79 */	or. r0, r3, r0
/* 81352E88 | 40 82 00 0C */	bne .L_81352E94
/* 81352E8C | 7C A3 2B 78 */	mr r3, r5
/* 81352E90 | 48 00 00 20 */	b .L_81352EB0
.L_81352E94:
/* 81352E94 | 7F 83 E3 78 */	mr r3, r28
/* 81352E98 | 7C A4 2B 78 */	mr r4, r5
/* 81352E9C | 48 1B F4 41 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352EA4 | 7C 65 1B 78 */	mr r5, r3
/* 81352EA8 | 40 82 FF CC */	bne .L_81352E74
.L_81352EAC:
/* 81352EAC | 38 60 00 00 */	li r3, 0x0
.L_81352EB0:
/* 81352EB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352EB4 | 48 2A 66 5D */	bl _restgpr_28
/* 81352EB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352EBC | 7C 08 03 A6 */	mtlr r0
/* 81352EC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352EC4 | 4E 80 00 20 */	blr
.endfn find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xAADC | 0x81352EC8 | size: 0x64
# ipl::NandSDWorker::delete_app_cache(nw4r::ut::List*, unsigned long long)
.fn delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352EC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352ECC | 7C 08 02 A6 */	mflr r0
/* 81352ED0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81352ED4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352ED8 | 48 2A 65 F1 */	bl _savegpr_29
/* 81352EDC | 7C 7D 1B 78 */	mr r29, r3
/* 81352EE0 | 7C 9E 23 78 */	mr r30, r4
/* 81352EE4 | 4B FF FF 15 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81352EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352EEC | 7C 7F 1B 78 */	mr r31, r3
/* 81352EF0 | 41 82 00 24 */	beq .L_81352F14
/* 81352EF4 | 7F C3 F3 78 */	mr r3, r30
/* 81352EF8 | 7F E4 FB 78 */	mr r4, r31
/* 81352EFC | 48 1B F3 75 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352F00 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352F04 | 7F E4 FB 78 */	mr r4, r31
/* 81352F08 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352F0C | 80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352F10 | 48 20 86 71 */	bl fn_8155B580
.L_81352F14:
/* 81352F14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352F18 | 48 2A 65 FD */	bl _restgpr_29
/* 81352F1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352F20 | 7C 08 03 A6 */	mtlr r0
/* 81352F24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352F28 | 4E 80 00 20 */	blr
.endfn delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xAB40 | 0x81352F2C | size: 0x70
# ipl::NandSDWorker::clear_app_cache(nw4r::ut::List*)
.fn clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List, global
/* 81352F2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352F30 | 7C 08 02 A6 */	mflr r0
/* 81352F34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81352F38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352F3C | 48 2A 65 8D */	bl _savegpr_29
/* 81352F40 | 7C 7D 1B 78 */	mr r29, r3
/* 81352F44 | 7C 9E 23 78 */	mr r30, r4
/* 81352F48 | 48 00 00 24 */	b .L_81352F6C
.L_81352F4C:
/* 81352F4C | 7F C3 F3 78 */	mr r3, r30
/* 81352F50 | 7F E4 FB 78 */	mr r4, r31
/* 81352F54 | 48 1B F3 1D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352F58 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352F5C | 7F E4 FB 78 */	mr r4, r31
/* 81352F60 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81352F64 | 80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352F68 | 48 20 86 19 */	bl fn_8155B580
.L_81352F6C:
/* 81352F6C | 7F C3 F3 78 */	mr r3, r30
/* 81352F70 | 38 80 00 00 */	li r4, 0x0
/* 81352F74 | 48 1B F3 69 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352F78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352F7C | 7C 7F 1B 78 */	mr r31, r3
/* 81352F80 | 40 82 FF CC */	bne .L_81352F4C
/* 81352F84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81352F88 | 48 2A 65 8D */	bl _restgpr_29
/* 81352F8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352F90 | 7C 08 03 A6 */	mtlr r0
/* 81352F94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81352F98 | 4E 80 00 20 */	blr
.endfn clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List

# .text:0xABB0 | 0x81352F9C | size: 0x278
# ipl::NandSDWorker::get_sd_entry_list(const char*, unsigned long*, unsigned long)
.fn get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl, global
/* 81352F9C | 94 21 FA F0 */	stwu r1, -0x510(r1)
/* 81352FA0 | 7C 08 02 A6 */	mflr r0
/* 81352FA4 | 90 01 05 14 */	stw r0, 0x514(r1)
/* 81352FA8 | 39 61 05 10 */	addi r11, r1, 0x510
/* 81352FAC | 48 2A 65 09 */	bl _savegpr_24
/* 81352FB0 | 3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 81352FB4 | 7C 9E 23 78 */	mr r30, r4
/* 81352FB8 | 3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 81352FBC | 7C 78 1B 78 */	mr r24, r3
/* 81352FC0 | 7C B9 2B 78 */	mr r25, r5
/* 81352FC4 | 7C DA 33 78 */	mr r26, r6
/* 81352FC8 | 38 7C 2A AD */	addi r3, r28, 0x2aad
/* 81352FCC | 38 A1 00 A4 */	addi r5, r1, 0xa4
/* 81352FD0 | 3B 60 00 00 */	li r27, 0x0
/* 81352FD4 | 3B E0 00 00 */	li r31, 0x0
/* 81352FD8 | 38 80 00 10 */	li r4, 0x10
/* 81352FDC | 48 29 50 F1 */	bl fn_815E80CC
/* 81352FE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81352FE4 | 7C 7D 1B 78 */	mr r29, r3
/* 81352FE8 | 41 82 00 24 */	beq .L_8135300C
/* 81352FEC | 38 7C 2A C2 */	addi r3, r28, 0x2ac2
/* 81352FF0 | 4C C6 31 82 */	crclr cr1eq
/* 81352FF4 | 48 1D B6 AD */	bl OSReport
/* 81352FF8 | 7F 03 C3 78 */	mr r3, r24
/* 81352FFC | 38 80 FF FF */	li r4, -0x1
/* 81353000 | 38 A0 00 00 */	li r5, 0x0
/* 81353004 | 48 00 0D FD */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81353008 | 48 00 01 F4 */	b .L_813531FC
.L_8135300C:
/* 8135300C | 80 8D 81 6C */	lwz r4, c_wii_sd_title_root__Q23ipl12NandSDWorker@sda21(r0)
/* 81353010 | 38 61 00 64 */	addi r3, r1, 0x64
/* 81353014 | 38 A0 00 40 */	li r5, 0x40
/* 81353018 | 48 2A F3 AD */	bl strncpy
/* 8135301C | 38 61 00 64 */	addi r3, r1, 0x64
/* 81353020 | 38 8D 81 B4 */	li r4, lbl_816961F4@sda21
/* 81353024 | 38 A0 00 40 */	li r5, 0x40
/* 81353028 | 48 2A F4 0D */	bl strncat
/* 8135302C | 7F C4 F3 78 */	mr r4, r30
/* 81353030 | 38 61 00 64 */	addi r3, r1, 0x64
/* 81353034 | 38 A0 00 40 */	li r5, 0x40
/* 81353038 | 48 2A F3 FD */	bl strncat
/* 8135303C | 7F FE FB 78 */	mr r30, r31
/* 81353040 | 48 00 01 B0 */	b .L_813531F0
.L_81353044:
/* 81353044 | 88 18 00 04 */	lbz r0, 0x4(r24)
/* 81353048 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135304C | 41 82 00 0C */	beq .L_81353058
/* 81353050 | 38 60 FF EE */	li r3, -0x12
/* 81353054 | 48 00 01 A8 */	b .L_813531FC
.L_81353058:
/* 81353058 | 88 01 02 D0 */	lbz r0, 0x2d0(r1)
/* 8135305C | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 81353060 | 41 82 01 50 */	beq .L_813531B0
/* 81353064 | 38 61 02 D1 */	addi r3, r1, 0x2d1
/* 81353068 | 48 2A 5E 95 */	bl strlen
/* 8135306C | 28 03 00 04 */	cmplwi r3, 0x4
/* 81353070 | 7C 7D 1B 78 */	mr r29, r3
/* 81353074 | 41 82 00 0C */	beq .L_81353080
/* 81353078 | 28 03 00 08 */	cmplwi r3, 0x8
/* 8135307C | 40 82 01 34 */	bne .L_813531B0
.L_81353080:
/* 81353080 | 38 61 00 24 */	addi r3, r1, 0x24
/* 81353084 | 38 A1 00 64 */	addi r5, r1, 0x64
/* 81353088 | 38 C1 02 D1 */	addi r6, r1, 0x2d1
/* 8135308C | 38 80 00 40 */	li r4, 0x40
/* 81353090 | 4C C6 31 82 */	crclr cr1eq
/* 81353094 | 48 2A D9 15 */	bl snprintf
/* 81353098 | 38 61 00 24 */	addi r3, r1, 0x24
/* 8135309C | 38 81 00 10 */	addi r4, r1, 0x10
/* 813530A0 | 48 29 50 85 */	bl fn_815E8124
/* 813530A4 | 7C 64 1B 78 */	mr r4, r3
/* 813530A8 | 7F 03 C3 78 */	mr r3, r24
/* 813530AC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813530B0 | 48 00 0D 51 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813530B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813530B8 | 40 82 00 D4 */	bne .L_8135318C
/* 813530BC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813530C0 | 7C 00 D0 40 */	cmplw r0, r26
/* 813530C4 | 40 81 00 EC */	ble .L_813531B0
/* 813530C8 | 88 81 00 20 */	lbz r4, 0x20(r1)
/* 813530CC | 7F 03 C3 78 */	mr r3, r24
/* 813530D0 | 48 00 10 39 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 813530D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813530D8 | 41 82 00 D8 */	beq .L_813531B0
/* 813530DC | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813530E0 | 38 7C 2A F8 */	addi r3, r28, 0x2af8
/* 813530E4 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813530E8 | 4C C6 31 82 */	crclr cr1eq
/* 813530EC | 48 1D B5 B5 */	bl OSReport
/* 813530F0 | 28 1D 00 08 */	cmplwi r29, 0x8
/* 813530F4 | 40 82 00 64 */	bne .L_81353158
/* 813530F8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813530FC | 38 61 02 D1 */	addi r3, r1, 0x2d1
/* 81353100 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81353104 | 38 A0 00 10 */	li r5, 0x10
/* 81353108 | 48 2B 16 65 */	bl strtoul
/* 8135310C | 7C 7D 1B 78 */	mr r29, r3
/* 81353110 | 4B FF 62 35 */	bl is_available_data_only_titleidlo__Q23ipl12NandSDWorkerFUl
/* 81353114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353118 | 41 82 00 2C */	beq .L_81353144
/* 8135311C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81353120 | 41 82 00 08 */	beq .L_81353128
/* 81353124 | 7F B9 F9 2E */	stwx r29, r25, r31
.L_81353128:
/* 81353128 | 7F A4 EB 78 */	mr r4, r29
/* 8135312C | 38 7C 2B 23 */	addi r3, r28, 0x2b23
/* 81353130 | 4C C6 31 82 */	crclr cr1eq
/* 81353134 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81353138 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8135313C | 48 1D B5 65 */	bl OSReport
/* 81353140 | 48 00 00 34 */	b .L_81353174
.L_81353144:
/* 81353144 | 7F A4 EB 78 */	mr r4, r29
/* 81353148 | 38 7C 2B 2D */	addi r3, r28, 0x2b2d
/* 8135314C | 4C C6 31 82 */	crclr cr1eq
/* 81353150 | 48 1D B5 51 */	bl OSReport
/* 81353154 | 48 00 00 20 */	b .L_81353174
.L_81353158:
/* 81353158 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8135315C | 41 82 00 10 */	beq .L_8135316C
/* 81353160 | 38 61 02 D1 */	addi r3, r1, 0x2d1
/* 81353164 | 4B FF 63 01 */	bl gamecode_to_titleid_lo__Q23ipl12NandSDWorkerFPCc
/* 81353168 | 7C 79 F9 2E */	stwx r3, r25, r31
.L_8135316C:
/* 8135316C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81353170 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_81353174:
/* 81353174 | 28 1B 09 60 */	cmplwi r27, 0x960
/* 81353178 | 41 80 00 38 */	blt .L_813531B0
/* 8135317C | 38 7C 2B 37 */	addi r3, r28, 0x2b37
/* 81353180 | 4C C6 31 82 */	crclr cr1eq
/* 81353184 | 48 1D B5 1D */	bl OSReport
/* 81353188 | 48 00 00 70 */	b .L_813531F8
.L_8135318C:
/* 8135318C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81353190 | 2C 00 FF FE */	cmpwi r0, -0x2
/* 81353194 | 41 82 00 1C */	beq .L_813531B0
/* 81353198 | 38 7C 2B 6F */	addi r3, r28, 0x2b6f
/* 8135319C | 38 81 00 24 */	addi r4, r1, 0x24
/* 813531A0 | 4C C6 31 82 */	crclr cr1eq
/* 813531A4 | 48 1D B4 FD */	bl OSReport
/* 813531A8 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813531AC | 48 00 00 50 */	b .L_813531FC
.L_813531B0:
/* 813531B0 | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 813531B4 | 48 29 4F 45 */	bl fn_815E80F8
/* 813531B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813531BC | 7C 7D 1B 78 */	mr r29, r3
/* 813531C0 | 41 82 00 30 */	beq .L_813531F0
/* 813531C4 | 7F 03 C3 78 */	mr r3, r24
/* 813531C8 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813531CC | 38 80 FF FF */	li r4, -0x1
/* 813531D0 | 48 00 0C 31 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813531D4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 813531D8 | 41 82 00 18 */	beq .L_813531F0
/* 813531DC | 38 7C 2B 91 */	addi r3, r28, 0x2b91
/* 813531E0 | 4C C6 31 82 */	crclr cr1eq
/* 813531E4 | 48 1D B4 BD */	bl OSReport
/* 813531E8 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813531EC | 48 00 00 10 */	b .L_813531FC
.L_813531F0:
/* 813531F0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813531F4 | 41 82 FE 50 */	beq .L_81353044
.L_813531F8:
/* 813531F8 | 7F 63 DB 78 */	mr r3, r27
.L_813531FC:
/* 813531FC | 39 61 05 10 */	addi r11, r1, 0x510
/* 81353200 | 48 2A 63 01 */	bl _restgpr_24
/* 81353204 | 80 01 05 14 */	lwz r0, 0x514(r1)
/* 81353208 | 7C 08 03 A6 */	mtlr r0
/* 8135320C | 38 21 05 10 */	addi r1, r1, 0x510
/* 81353210 | 4E 80 00 20 */	blr
.endfn get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl

# .text:0xAE28 | 0x81353214 | size: 0xD8
# ipl::NandSDWorker::sd_file_exist(const char*, unsigned long)
.fn sd_file_exist__Q23ipl12NandSDWorkerFPCcUl, global
/* 81353214 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81353218 | 7C 08 02 A6 */	mflr r0
/* 8135321C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81353220 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81353224 | 48 2A 62 A5 */	bl _savegpr_29
/* 81353228 | 7C 9E 23 78 */	mr r30, r4
/* 8135322C | 7C 7D 1B 78 */	mr r29, r3
/* 81353230 | 7C BF 2B 78 */	mr r31, r5
/* 81353234 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81353238 | 7F C3 F3 78 */	mr r3, r30
/* 8135323C | 48 29 4E E9 */	bl fn_815E8124
/* 81353240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353244 | 40 82 00 4C */	bne .L_81353290
/* 81353248 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8135324C | 7C 00 F8 40 */	cmplw r0, r31
/* 81353250 | 40 81 00 38 */	ble .L_81353288
/* 81353254 | 88 81 00 18 */	lbz r4, 0x18(r1)
/* 81353258 | 7F A3 EB 78 */	mr r3, r29
/* 8135325C | 48 00 0E AD */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 81353260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353264 | 41 82 00 24 */	beq .L_81353288
/* 81353268 | 3C 60 81 64 */	lis r3, lbl_81638580@ha
/* 8135326C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81353270 | 7F C4 F3 78 */	mr r4, r30
/* 81353274 | 38 63 85 80 */	addi r3, r3, lbl_81638580@l
/* 81353278 | 4C C6 31 82 */	crclr cr1eq
/* 8135327C | 48 1D B4 25 */	bl OSReport
/* 81353280 | 38 60 00 01 */	li r3, 0x1
/* 81353284 | 48 00 00 50 */	b .L_813532D4
.L_81353288:
/* 81353288 | 38 60 00 00 */	li r3, 0x0
/* 8135328C | 48 00 00 48 */	b .L_813532D4
.L_81353290:
/* 81353290 | 48 29 4D 19 */	bl fn_815E7FA8
/* 81353294 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81353298 | 7C 65 1B 78 */	mr r5, r3
/* 8135329C | 41 82 00 0C */	beq .L_813532A8
/* 813532A0 | 2C 03 00 16 */	cmpwi r3, 0x16
/* 813532A4 | 40 82 00 0C */	bne .L_813532B0
.L_813532A8:
/* 813532A8 | 38 60 00 00 */	li r3, 0x0
/* 813532AC | 48 00 00 28 */	b .L_813532D4
.L_813532B0:
/* 813532B0 | 3C 60 81 63 */	lis r3, lbl_816373A4@ha
/* 813532B4 | 7F C4 F3 78 */	mr r4, r30
/* 813532B8 | 38 63 73 A4 */	addi r3, r3, lbl_816373A4@l
/* 813532BC | 4C C6 31 82 */	crclr cr1eq
/* 813532C0 | 48 1D B3 E1 */	bl OSReport
/* 813532C4 | 7F A3 EB 78 */	mr r3, r29
/* 813532C8 | 38 80 FF FF */	li r4, -0x1
/* 813532CC | 38 A0 00 00 */	li r5, 0x0
/* 813532D0 | 48 00 0B 31 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
.L_813532D4:
/* 813532D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813532D8 | 48 2A 62 3D */	bl _restgpr_29
/* 813532DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813532E0 | 7C 08 03 A6 */	mtlr r0
/* 813532E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813532E8 | 4E 80 00 20 */	blr
.endfn sd_file_exist__Q23ipl12NandSDWorkerFPCcUl

# .text:0xAF00 | 0x813532EC | size: 0x7C
# ipl::NandSDWorker::get_sd_save_list(unsigned long*)
.fn get_sd_save_list__Q23ipl12NandSDWorkerFPUl, global
/* 813532EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813532F0 | 7C 08 02 A6 */	mflr r0
/* 813532F4 | 3C C0 00 01 */	lis r6, 0x1
/* 813532F8 | 7C 85 23 78 */	mr r5, r4
/* 813532FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81353300 | 38 00 00 00 */	li r0, 0x0
/* 81353304 | 38 C6 F0 C0 */	subi r6, r6, 0xf40
/* 81353308 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135330C | 7C 7F 1B 78 */	mr r31, r3
/* 81353310 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81353314 | 3C 87 00 04 */	addis r4, r7, 0x4
/* 81353318 | 90 04 EA 30 */	stw r0, -0x15d0(r4)
/* 8135331C | 80 8D 81 70 */	lwz r4, c_sd_save_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 81353320 | 4B FF FC 7D */	bl get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl
/* 81353324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353328 | 40 80 00 08 */	bge .L_81353330
/* 8135332C | 48 00 00 28 */	b .L_81353354
.L_81353330:
/* 81353330 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81353334 | 3C A0 81 64 */	lis r5, lbl_8163864E@ha
/* 81353338 | 7C 64 1B 78 */	mr r4, r3
/* 8135333C | 3C C6 00 04 */	addis r6, r6, 0x4
/* 81353340 | 90 66 EA 30 */	stw r3, -0x15d0(r6)
/* 81353344 | 38 65 86 4E */	addi r3, r5, lbl_8163864E@l
/* 81353348 | 4C C6 31 82 */	crclr cr1eq
/* 8135334C | 48 1D B3 55 */	bl OSReport
/* 81353350 | 38 60 00 00 */	li r3, 0x0
.L_81353354:
/* 81353354 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81353358 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135335C | 7C 08 03 A6 */	mtlr r0
/* 81353360 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81353364 | 4E 80 00 20 */	blr
.endfn get_sd_save_list__Q23ipl12NandSDWorkerFPUl

# .text:0xAF7C | 0x81353368 | size: 0x78
# ipl::NandSDWorker::get_sd_app_list(unsigned long*)
.fn get_sd_app_list__Q23ipl12NandSDWorkerFPUl, global
/* 81353368 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135336C | 7C 08 02 A6 */	mflr r0
/* 81353370 | 7C 85 23 78 */	mr r5, r4
/* 81353374 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81353378 | 38 00 00 00 */	li r0, 0x0
/* 8135337C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81353380 | 7C 7F 1B 78 */	mr r31, r3
/* 81353384 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81353388 | 3C 86 00 04 */	addis r4, r6, 0x4
/* 8135338C | 38 C0 06 40 */	li r6, 0x640
/* 81353390 | 90 04 EA 34 */	stw r0, -0x15cc(r4)
/* 81353394 | 80 8D 81 74 */	lwz r4, c_sd_app_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 81353398 | 4B FF FC 05 */	bl get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl
/* 8135339C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813533A0 | 40 80 00 08 */	bge .L_813533A8
/* 813533A4 | 48 00 00 28 */	b .L_813533CC
.L_813533A8:
/* 813533A8 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 813533AC | 3C A0 81 64 */	lis r5, lbl_8163866E@ha
/* 813533B0 | 7C 64 1B 78 */	mr r4, r3
/* 813533B4 | 3C C6 00 04 */	addis r6, r6, 0x4
/* 813533B8 | 90 66 EA 34 */	stw r3, -0x15cc(r6)
/* 813533BC | 38 65 86 6E */	addi r3, r5, lbl_8163866E@l
/* 813533C0 | 4C C6 31 82 */	crclr cr1eq
/* 813533C4 | 48 1D B2 DD */	bl OSReport
/* 813533C8 | 38 60 00 00 */	li r3, 0x0
.L_813533CC:
/* 813533CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813533D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813533D4 | 7C 08 03 A6 */	mtlr r0
/* 813533D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813533DC | 4E 80 00 20 */	blr
.endfn get_sd_app_list__Q23ipl12NandSDWorkerFPUl

# .text:0xAFF4 | 0x813533E0 | size: 0x1C4
# ipl::NandSDWorker::recursion_nand_save(unsigned long long, ipl::NandSDWorker::RecursiveProcess, const char**, unsigned long)
.fn recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl, global
/* 813533E0 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813533E4 | 7C 08 02 A6 */	mflr r0
/* 813533E8 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813533EC | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813533F0 | 48 2A 60 C5 */	bl _savegpr_24
/* 813533F4 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813533F8 | 7C 78 1B 78 */	mr r24, r3
/* 813533FC | 7C BA 2B 78 */	mr r26, r5
/* 81353400 | 7C D9 33 78 */	mr r25, r6
/* 81353404 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81353408 | 38 00 FF FF */	li r0, -0x1
/* 8135340C | 7C FB 3B 78 */	mr r27, r7
/* 81353410 | 7D 1C 43 78 */	mr r28, r8
/* 81353414 | 7D 3D 4B 78 */	mr r29, r9
/* 81353418 | 7F 46 D3 78 */	mr r6, r26
/* 8135341C | 38 61 00 48 */	addi r3, r1, 0x48
/* 81353420 | 38 BF 01 1C */	addi r5, r31, 0x11c
/* 81353424 | 7F 27 00 38 */	and r7, r25, r0
/* 81353428 | 38 80 00 40 */	li r4, 0x40
/* 8135342C | 4C C6 31 82 */	crclr cr1eq
/* 81353430 | 48 2A D5 79 */	bl snprintf
/* 81353434 | 7F 03 C3 78 */	mr r3, r24
/* 81353438 | 7F 26 CB 78 */	mr r6, r25
/* 8135343C | 7F 45 D3 78 */	mr r5, r26
/* 81353440 | 48 00 07 6D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353448 | 40 82 00 0C */	bne .L_81353454
/* 8135344C | 38 60 FF FE */	li r3, -0x2
/* 81353450 | 48 00 01 3C */	b .L_8135358C
.L_81353454:
/* 81353454 | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 81353458 | 40 82 00 D4 */	bne .L_8135352C
/* 8135345C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81353460 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81353464 | 38 A0 00 40 */	li r5, 0x40
/* 81353468 | 48 2A EF 5D */	bl strncpy
/* 8135346C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81353470 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 81353474 | 38 A0 00 40 */	li r5, 0x40
/* 81353478 | 48 2A EF BD */	bl strncat
/* 8135347C | 80 8D 81 58 */	lwz r4, c_banner_file_name__Q23ipl12NandSDWorker@sda21(r0)
/* 81353480 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81353484 | 38 A0 00 40 */	li r5, 0x40
/* 81353488 | 48 2A EF AD */	bl strncat
/* 8135348C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81353490 | 48 00 CC 19 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 81353494 | 7C 7E 1B 78 */	mr r30, r3
/* 81353498 | 7F 03 C3 78 */	mr r3, r24
/* 8135349C | 7F C4 F3 78 */	mr r4, r30
/* 813534A0 | 38 A0 00 00 */	li r5, 0x0
/* 813534A4 | 48 00 07 B5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 813534A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813534AC | 41 82 00 1C */	beq .L_813534C8
/* 813534B0 | 7F 03 C3 78 */	mr r3, r24
/* 813534B4 | 38 C0 00 02 */	li r6, 0x2
/* 813534B8 | 38 A0 00 01 */	li r5, 0x1
/* 813534BC | 48 00 06 F1 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 813534C0 | 38 60 FF FB */	li r3, -0x5
/* 813534C4 | 48 00 00 C8 */	b .L_8135358C
.L_813534C8:
/* 813534C8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813534CC | 40 82 00 18 */	bne .L_813534E4
/* 813534D0 | 38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 813534D4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813534D8 | 4C C6 31 82 */	crclr cr1eq
/* 813534DC | 48 1D B1 C5 */	bl OSReport
/* 813534E0 | 48 00 00 4C */	b .L_8135352C
.L_813534E4:
/* 813534E4 | 2C 1E FF F4 */	cmpwi r30, -0xc
/* 813534E8 | 40 82 00 18 */	bne .L_81353500
/* 813534EC | 38 7F 02 0F */	addi r3, r31, 0x20f
/* 813534F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813534F4 | 4C C6 31 82 */	crclr cr1eq
/* 813534F8 | 48 1D B1 A9 */	bl OSReport
/* 813534FC | 48 00 00 30 */	b .L_8135352C
.L_81353500:
/* 81353500 | 7F C5 F3 78 */	mr r5, r30
/* 81353504 | 38 7F 02 2D */	addi r3, r31, 0x22d
/* 81353508 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135350C | 4C C6 31 82 */	crclr cr1eq
/* 81353510 | 48 1D B1 91 */	bl OSReport
/* 81353514 | 7F 03 C3 78 */	mr r3, r24
/* 81353518 | 38 C0 00 02 */	li r6, 0x2
/* 8135351C | 38 A0 00 01 */	li r5, 0x1
/* 81353520 | 48 00 06 8D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353524 | 38 60 FF FE */	li r3, -0x2
/* 81353528 | 48 00 00 64 */	b .L_8135358C
.L_8135352C:
/* 8135352C | 7F 03 C3 78 */	mr r3, r24
/* 81353530 | 7F 66 DB 78 */	mr r6, r27
/* 81353534 | 7F 87 E3 78 */	mr r7, r28
/* 81353538 | 7F A8 EB 78 */	mr r8, r29
/* 8135353C | 38 81 00 48 */	addi r4, r1, 0x48
/* 81353540 | 38 A0 00 00 */	li r5, 0x0
/* 81353544 | 48 00 00 61 */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 81353548 | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 8135354C | 7C 7E 1B 78 */	mr r30, r3
/* 81353550 | 40 82 00 28 */	bne .L_81353578
/* 81353554 | 7F 03 C3 78 */	mr r3, r24
/* 81353558 | 7F 26 CB 78 */	mr r6, r25
/* 8135355C | 7F 45 D3 78 */	mr r5, r26
/* 81353560 | 38 E0 00 00 */	li r7, 0x0
/* 81353564 | 4B FF A6 19 */	bl delete_empty_title__Q23ipl12NandSDWorkerFUxb
/* 81353568 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135356C | 41 82 00 0C */	beq .L_81353578
/* 81353570 | 38 60 FF FE */	li r3, -0x2
/* 81353574 | 48 00 00 18 */	b .L_8135358C
.L_81353578:
/* 81353578 | 7F 03 C3 78 */	mr r3, r24
/* 8135357C | 38 C0 00 02 */	li r6, 0x2
/* 81353580 | 38 A0 00 01 */	li r5, 0x1
/* 81353584 | 48 00 06 29 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353588 | 7F C3 F3 78 */	mr r3, r30
.L_8135358C:
/* 8135358C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81353590 | 48 2A 5F 71 */	bl _restgpr_24
/* 81353594 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81353598 | 7C 08 03 A6 */	mtlr r0
/* 8135359C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 813535A0 | 4E 80 00 20 */	blr
.endfn recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl

# .text:0xB1B8 | 0x813535A4 | size: 0x4F8
# ipl::NandSDWorker::recursion_nand(const char*, const char*, ipl::NandSDWorker::RecursiveProcess, const char**, unsigned long)
.fn recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl, global
/* 813535A4 | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 813535A8 | 7C 08 02 A6 */	mflr r0
/* 813535AC | 90 01 01 04 */	stw r0, 0x104(r1)
/* 813535B0 | 39 61 01 00 */	addi r11, r1, 0x100
/* 813535B4 | 48 2A 5E DD */	bl _savegpr_15
/* 813535B8 | 3B E0 00 00 */	li r31, 0x0
/* 813535BC | 3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 813535C0 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 813535C4 | 7C 73 1B 78 */	mr r19, r3
/* 813535C8 | 7C 98 23 78 */	mr r24, r4
/* 813535CC | 7C B4 2B 78 */	mr r20, r5
/* 813535D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813535D4 | 7C D5 33 78 */	mr r21, r6
/* 813535D8 | 7C F6 3B 78 */	mr r22, r7
/* 813535DC | 7D 17 43 78 */	mr r23, r8
/* 813535E0 | 3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 813535E4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813535E8 | 48 00 15 65 */	bl iplNandSD_81354B4C
/* 813535EC | 2C 17 00 00 */	cmpwi r23, 0x0
/* 813535F0 | 41 82 00 90 */	beq .L_81353680
/* 813535F4 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 813535F8 | 1C 97 00 44 */	mulli r4, r23, 0x44
/* 813535FC | 38 A0 00 20 */	li r5, 0x20
/* 81353600 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81353604 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353608 | 48 20 71 4D */	bl fn_8155A754
/* 8135360C | 7C 7C 1B 78 */	mr r28, r3
/* 81353610 | 7F F9 FB 78 */	mr r25, r31
/* 81353614 | 3B 60 00 00 */	li r27, 0x0
/* 81353618 | 3A 40 00 00 */	li r18, 0x0
/* 8135361C | 3A 20 00 01 */	li r17, 0x1
/* 81353620 | 3B 40 00 02 */	li r26, 0x2
/* 81353624 | 48 00 00 54 */	b .L_81353678
.L_81353628:
/* 81353628 | 7D F6 C8 2E */	lwzx r15, r22, r25
/* 8135362C | 7D E3 7B 78 */	mr r3, r15
/* 81353630 | 48 2A 58 CD */	bl strlen
/* 81353634 | 7F BC 92 14 */	add r29, r28, r18
/* 81353638 | 7C 70 1B 78 */	mr r16, r3
/* 8135363C | 7D E4 7B 78 */	mr r4, r15
/* 81353640 | 38 A0 00 40 */	li r5, 0x40
/* 81353644 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 81353648 | 48 2A ED 7D */	bl strncpy
/* 8135364C | 7C 7D 82 14 */	add r3, r29, r16
/* 81353650 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81353654 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81353658 | 40 82 00 10 */	bne .L_81353668
/* 8135365C | 9B E3 00 03 */	stb r31, 0x3(r3)
/* 81353660 | 93 5D 00 00 */	stw r26, 0x0(r29)
/* 81353664 | 48 00 00 08 */	b .L_8135366C
.L_81353668:
/* 81353668 | 92 3D 00 00 */	stw r17, 0x0(r29)
.L_8135366C:
/* 8135366C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81353670 | 3A 52 00 44 */	addi r18, r18, 0x44
/* 81353674 | 3B 39 00 04 */	addi r25, r25, 0x4
.L_81353678:
/* 81353678 | 7C 1B B8 40 */	cmplw r27, r23
/* 8135367C | 41 80 FF AC */	blt .L_81353628
.L_81353680:
/* 81353680 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353684 | 38 80 01 A0 */	li r4, 0x1a0
/* 81353688 | 38 A0 00 20 */	li r5, 0x20
/* 8135368C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81353690 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353694 | 48 20 70 C1 */	bl fn_8155A754
/* 81353698 | 80 D3 00 00 */	lwz r6, 0x0(r19)
/* 8135369C | 7C 7D 1B 78 */	mr r29, r3
/* 813536A0 | 38 80 08 80 */	li r4, 0x880
/* 813536A4 | 38 A0 00 04 */	li r5, 0x4
/* 813536A8 | 3C 66 00 02 */	addis r3, r6, 0x2
/* 813536AC | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813536B0 | 48 20 70 A5 */	bl fn_8155A754
/* 813536B4 | 7C 64 1B 78 */	mr r4, r3
/* 813536B8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813536BC | 38 A0 00 40 */	li r5, 0x40
/* 813536C0 | 38 C0 00 20 */	li r6, 0x20
/* 813536C4 | 48 00 14 C9 */	bl iplNandSD_81354B8C
/* 813536C8 | 7F 03 C3 78 */	mr r3, r24
/* 813536CC | 48 2A 58 31 */	bl strlen
/* 813536D0 | 7C 72 1B 78 */	mr r18, r3
/* 813536D4 | 7F 04 C3 78 */	mr r4, r24
/* 813536D8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813536DC | 48 00 14 FD */	bl iplNandSD_81354BD8
/* 813536E0 | 3B E1 00 2C */	addi r31, r1, 0x2c
/* 813536E4 | 7C 72 FA 14 */	add r3, r18, r31
/* 813536E8 | 7F F1 FB 78 */	mr r17, r31
/* 813536EC | 3B E3 00 01 */	addi r31, r3, 0x1
/* 813536F0 | 48 00 03 38 */	b .L_81353A28
.L_813536F4:
/* 813536F4 | 38 61 00 6C */	addi r3, r1, 0x6c
/* 813536F8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813536FC | 38 80 00 00 */	li r4, 0x0
/* 81353700 | 48 00 CB F9 */	bl PrivateReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81353704 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353708 | 41 82 00 24 */	beq .L_8135372C
/* 8135370C | 7C 65 1B 78 */	mr r5, r3
/* 81353710 | 38 7E 2C 05 */	addi r3, r30, 0x2c05
/* 81353714 | 38 81 00 6C */	addi r4, r1, 0x6c
/* 81353718 | 4C C6 31 82 */	crclr cr1eq
/* 8135371C | 48 1D AF 85 */	bl OSReport
/* 81353720 | 38 00 FF FE */	li r0, -0x2
/* 81353724 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81353728 | 48 00 03 14 */	b .L_81353A3C
.L_8135372C:
/* 8135372C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81353730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81353734 | 41 82 02 F4 */	beq .L_81353A28
/* 81353738 | 7F A4 EB 78 */	mr r4, r29
/* 8135373C | 38 61 00 6C */	addi r3, r1, 0x6c
/* 81353740 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81353744 | 48 00 CB B5 */	bl PrivateReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81353748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135374C | 41 82 00 24 */	beq .L_81353770
/* 81353750 | 7C 65 1B 78 */	mr r5, r3
/* 81353754 | 38 7E 2C 05 */	addi r3, r30, 0x2c05
/* 81353758 | 38 81 00 6C */	addi r4, r1, 0x6c
/* 8135375C | 4C C6 31 82 */	crclr cr1eq
/* 81353760 | 48 1D AF 41 */	bl OSReport
/* 81353764 | 38 00 FF FE */	li r0, -0x2
/* 81353768 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8135376C | 48 00 02 D0 */	b .L_81353A3C
.L_81353770:
/* 81353770 | 3B 60 00 00 */	li r27, 0x0
/* 81353774 | 3B 40 00 00 */	li r26, 0x0
/* 81353778 | 9B 61 00 08 */	stb r27, 0x8(r1)
/* 8135377C | 48 00 02 A0 */	b .L_81353A1C
.L_81353780:
/* 81353780 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81353784 | 38 81 00 6C */	addi r4, r1, 0x6c
/* 81353788 | 38 A0 00 40 */	li r5, 0x40
/* 8135378C | 48 2A EC 39 */	bl strncpy
/* 81353790 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81353794 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 81353798 | 38 A0 00 40 */	li r5, 0x40
/* 8135379C | 48 2A EC 99 */	bl strncat
/* 813537A0 | 7D FD DA 14 */	add r15, r29, r27
/* 813537A4 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813537A8 | 7D E4 7B 78 */	mr r4, r15
/* 813537AC | 38 A0 00 40 */	li r5, 0x40
/* 813537B0 | 48 2A EC 85 */	bl strncat
/* 813537B4 | 7D E3 7B 78 */	mr r3, r15
/* 813537B8 | 48 2A 57 45 */	bl strlen
/* 813537BC | 2C 17 00 00 */	cmpwi r23, 0x0
/* 813537C0 | 7C 63 DA 14 */	add r3, r3, r27
/* 813537C4 | 3B 63 00 01 */	addi r27, r3, 0x1
/* 813537C8 | 41 82 00 9C */	beq .L_81353864
/* 813537CC | 3B 20 00 00 */	li r25, 0x0
/* 813537D0 | 3B 00 00 00 */	li r24, 0x0
/* 813537D4 | 3A 40 00 00 */	li r18, 0x0
/* 813537D8 | 48 00 00 7C */	b .L_81353854
.L_813537DC:
/* 813537DC | 7D FC 92 14 */	add r15, r28, r18
/* 813537E0 | 7F E3 FB 78 */	mr r3, r31
/* 813537E4 | 38 8F 00 04 */	addi r4, r15, 0x4
/* 813537E8 | 48 2A EC 99 */	bl strcmp
/* 813537EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813537F0 | 40 82 00 5C */	bne .L_8135384C
/* 813537F4 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813537F8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813537FC | 48 00 CC B5 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 81353800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353804 | 41 82 00 24 */	beq .L_81353828
/* 81353808 | 7C 65 1B 78 */	mr r5, r3
/* 8135380C | 38 7E 2C 35 */	addi r3, r30, 0x2c35
/* 81353810 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81353814 | 4C C6 31 82 */	crclr cr1eq
/* 81353818 | 48 1D AE 89 */	bl OSReport
/* 8135381C | 38 00 FF FE */	li r0, -0x2
/* 81353820 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81353824 | 48 00 02 18 */	b .L_81353A3C
.L_81353828:
/* 81353828 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 8135382C | 80 0F 00 00 */	lwz r0, 0x0(r15)
/* 81353830 | 7C 03 00 00 */	cmpw r3, r0
/* 81353834 | 40 82 00 18 */	bne .L_8135384C
/* 81353838 | 38 7E 2C 65 */	addi r3, r30, 0x2c65
/* 8135383C | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81353840 | 4C C6 31 82 */	crclr cr1eq
/* 81353844 | 48 1D AE 5D */	bl OSReport
/* 81353848 | 3B 20 00 01 */	li r25, 0x1
.L_8135384C:
/* 8135384C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81353850 | 3A 52 00 44 */	addi r18, r18, 0x44
.L_81353854:
/* 81353854 | 7C 18 B8 40 */	cmplw r24, r23
/* 81353858 | 41 80 FF 84 */	blt .L_813537DC
/* 8135385C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81353860 | 40 82 01 B8 */	bne .L_81353A18
.L_81353864:
/* 81353864 | 2C 15 00 01 */	cmpwi r21, 0x1
/* 81353868 | 41 82 00 C4 */	beq .L_8135392C
/* 8135386C | 40 80 00 10 */	bge .L_8135387C
/* 81353870 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 81353874 | 40 80 00 14 */	bge .L_81353888
/* 81353878 | 48 00 01 A0 */	b .L_81353A18
.L_8135387C:
/* 8135387C | 2C 15 00 03 */	cmpwi r21, 0x3
/* 81353880 | 40 80 01 98 */	bge .L_81353A18
/* 81353884 | 48 00 01 08 */	b .L_8135398C
.L_81353888:
/* 81353888 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8135388C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81353890 | 48 00 CC 21 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 81353894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353898 | 41 82 00 24 */	beq .L_813538BC
/* 8135389C | 7C 65 1B 78 */	mr r5, r3
/* 813538A0 | 38 7E 2C 35 */	addi r3, r30, 0x2c35
/* 813538A4 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813538A8 | 4C C6 31 82 */	crclr cr1eq
/* 813538AC | 48 1D AD F5 */	bl OSReport
/* 813538B0 | 38 00 FF FE */	li r0, -0x2
/* 813538B4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813538B8 | 48 00 01 84 */	b .L_81353A3C
.L_813538BC:
/* 813538BC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813538C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813538C4 | 40 82 00 30 */	bne .L_813538F4
/* 813538C8 | 7E 63 9B 78 */	mr r3, r19
/* 813538CC | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813538D0 | 48 00 01 CD */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 813538D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813538D8 | 40 80 00 0C */	bge .L_813538E4
/* 813538DC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813538E0 | 48 00 01 5C */	b .L_81353A3C
.L_813538E4:
/* 813538E4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813538E8 | 7C 00 1A 14 */	add r0, r0, r3
/* 813538EC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813538F0 | 48 00 01 28 */	b .L_81353A18
.L_813538F4:
/* 813538F4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813538F8 | 40 82 01 20 */	bne .L_81353A18
/* 813538FC | 38 61 00 14 */	addi r3, r1, 0x14
/* 81353900 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81353904 | 48 00 12 D5 */	bl iplNandSD_81354BD8
/* 81353908 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135390C | 40 82 01 0C */	bne .L_81353A18
/* 81353910 | 38 7E 2C 80 */	addi r3, r30, 0x2c80
/* 81353914 | 38 81 00 6C */	addi r4, r1, 0x6c
/* 81353918 | 4C C6 31 82 */	crclr cr1eq
/* 8135391C | 48 1D AD 85 */	bl OSReport
/* 81353920 | 38 00 FF FC */	li r0, -0x4
/* 81353924 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81353928 | 48 00 01 14 */	b .L_81353A3C
.L_8135392C:
/* 8135392C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81353930 | 48 00 CA B1 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 81353934 | 7C 6F 1B 78 */	mr r15, r3
/* 81353938 | 7E 63 9B 78 */	mr r3, r19
/* 8135393C | 7D E4 7B 78 */	mr r4, r15
/* 81353940 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81353944 | 48 00 03 15 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81353948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135394C | 40 82 00 F0 */	bne .L_81353A3C
/* 81353950 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 81353954 | 41 82 00 24 */	beq .L_81353978
/* 81353958 | 7D E5 7B 78 */	mr r5, r15
/* 8135395C | 38 7E 2C A4 */	addi r3, r30, 0x2ca4
/* 81353960 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81353964 | 4C C6 31 82 */	crclr cr1eq
/* 81353968 | 48 1D AD 39 */	bl OSReport
/* 8135396C | 38 00 FF FE */	li r0, -0x2
/* 81353970 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81353974 | 48 00 00 C8 */	b .L_81353A3C
.L_81353978:
/* 81353978 | 38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 8135397C | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81353980 | 4C C6 31 82 */	crclr cr1eq
/* 81353984 | 48 1D AD 1D */	bl OSReport
/* 81353988 | 48 00 00 90 */	b .L_81353A18
.L_8135398C:
/* 8135398C | 7E 84 A3 78 */	mr r4, r20
/* 81353990 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81353994 | 48 00 CA B1 */	bl PrivateMove__Q33ipl4nand7wrapperFPCcPCc
/* 81353998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135399C | 7C 6F 1B 78 */	mr r15, r3
/* 813539A0 | 41 82 00 54 */	beq .L_813539F4
/* 813539A4 | 7D E5 7B 78 */	mr r5, r15
/* 813539A8 | 38 7E 2C D3 */	addi r3, r30, 0x2cd3
/* 813539AC | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813539B0 | 4C C6 31 82 */	crclr cr1eq
/* 813539B4 | 48 1D AC ED */	bl OSReport
/* 813539B8 | 7E 63 9B 78 */	mr r3, r19
/* 813539BC | 7E 84 A3 78 */	mr r4, r20
/* 813539C0 | 7E C7 B3 78 */	mr r7, r22
/* 813539C4 | 7E E8 BB 78 */	mr r8, r23
/* 813539C8 | 38 A0 00 00 */	li r5, 0x0
/* 813539CC | 38 C0 00 01 */	li r6, 0x1
/* 813539D0 | 4B FF FB D5 */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 813539D4 | 2C 0F FF FC */	cmpwi r15, -0x4
/* 813539D8 | 40 82 00 10 */	bne .L_813539E8
/* 813539DC | 38 00 FF FB */	li r0, -0x5
/* 813539E0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813539E4 | 48 00 00 58 */	b .L_81353A3C
.L_813539E8:
/* 813539E8 | 38 00 FF FE */	li r0, -0x2
/* 813539EC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813539F0 | 48 00 00 4C */	b .L_81353A3C
.L_813539F4:
/* 813539F4 | 38 61 00 6C */	addi r3, r1, 0x6c
/* 813539F8 | 48 2A 55 05 */	bl strlen
/* 813539FC | 7C 83 8A 14 */	add r4, r3, r17
/* 81353A00 | 7E 86 A3 78 */	mr r6, r20
/* 81353A04 | 38 7E 2D 01 */	addi r3, r30, 0x2d01
/* 81353A08 | 38 A1 00 6C */	addi r5, r1, 0x6c
/* 81353A0C | 38 84 00 01 */	addi r4, r4, 0x1
/* 81353A10 | 4C C6 31 82 */	crclr cr1eq
/* 81353A14 | 48 1D AC 8D */	bl OSReport
.L_81353A18:
/* 81353A18 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_81353A1C:
/* 81353A1C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81353A20 | 7C 1A 00 40 */	cmplw r26, r0
/* 81353A24 | 41 80 FD 5C */	blt .L_81353780
.L_81353A28:
/* 81353A28 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81353A2C | 38 81 00 6C */	addi r4, r1, 0x6c
/* 81353A30 | 48 00 12 21 */	bl iplNandSD_81354C50
/* 81353A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353A38 | 40 82 FC BC */	bne .L_813536F4
.L_81353A3C:
/* 81353A3C | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353A40 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81353A44 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81353A48 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353A4C | 48 20 6F B9 */	bl fn_8155AA04
/* 81353A50 | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353A54 | 7F A4 EB 78 */	mr r4, r29
/* 81353A58 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81353A5C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353A60 | 48 20 6F A5 */	bl fn_8155AA04
/* 81353A64 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81353A68 | 41 82 00 18 */	beq .L_81353A80
/* 81353A6C | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353A70 | 7F 84 E3 78 */	mr r4, r28
/* 81353A74 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81353A78 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353A7C | 48 20 6F 89 */	bl fn_8155AA04
.L_81353A80:
/* 81353A80 | 39 61 01 00 */	addi r11, r1, 0x100
/* 81353A84 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81353A88 | 48 2A 5A 55 */	bl _restgpr_15
/* 81353A8C | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 81353A90 | 7C 08 03 A6 */	mtlr r0
/* 81353A94 | 38 21 01 00 */	addi r1, r1, 0x100
/* 81353A98 | 4E 80 00 20 */	blr
.endfn recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl

# .text:0xB6B0 | 0x81353A9C | size: 0x110
# ipl::NandSDWorker::nand_get_length(const char*)
.fn nand_get_length__Q23ipl12NandSDWorkerFPCc, global
/* 81353A9C | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 81353AA0 | 7C 08 02 A6 */	mflr r0
/* 81353AA4 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 81353AA8 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81353AAC | 48 2A 5A 15 */	bl _savegpr_27
/* 81353AB0 | 38 00 00 00 */	li r0, 0x0
/* 81353AB4 | 7C 9C 23 78 */	mr r28, r4
/* 81353AB8 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81353ABC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81353AC0 | 7C 7B 1B 78 */	mr r27, r3
/* 81353AC4 | 7F 83 E3 78 */	mr r3, r28
/* 81353AC8 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81353ACC | 38 81 00 0C */	addi r4, r1, 0xc
/* 81353AD0 | 38 A0 00 01 */	li r5, 0x1
/* 81353AD4 | 48 00 C7 85 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 81353AD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353ADC | 41 82 00 20 */	beq .L_81353AFC
/* 81353AE0 | 7C 65 1B 78 */	mr r5, r3
/* 81353AE4 | 7F 84 E3 78 */	mr r4, r28
/* 81353AE8 | 38 7F 2D 26 */	addi r3, r31, 0x2d26
/* 81353AEC | 4C C6 31 82 */	crclr cr1eq
/* 81353AF0 | 48 1D AB B1 */	bl OSReport
/* 81353AF4 | 38 60 FF FE */	li r3, -0x2
/* 81353AF8 | 48 00 00 9C */	b .L_81353B94
.L_81353AFC:
/* 81353AFC | 38 61 00 0C */	addi r3, r1, 0xc
/* 81353B00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81353B04 | 48 00 C3 C1 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 81353B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353B0C | 41 82 00 20 */	beq .L_81353B2C
/* 81353B10 | 7C 65 1B 78 */	mr r5, r3
/* 81353B14 | 7F 84 E3 78 */	mr r4, r28
/* 81353B18 | 38 7F 2D 53 */	addi r3, r31, 0x2d53
/* 81353B1C | 4C C6 31 82 */	crclr cr1eq
/* 81353B20 | 48 1D AB 81 */	bl OSReport
/* 81353B24 | 3B A0 FF FE */	li r29, -0x2
/* 81353B28 | 48 00 00 1C */	b .L_81353B44
.L_81353B2C:
/* 81353B2C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81353B30 | 7F 84 E3 78 */	mr r4, r28
/* 81353B34 | 38 7F 2D 7E */	addi r3, r31, 0x2d7e
/* 81353B38 | 4C C6 31 82 */	crclr cr1eq
/* 81353B3C | 48 1D AB 65 */	bl OSReport
/* 81353B40 | 83 A1 00 08 */	lwz r29, 0x8(r1)
.L_81353B44:
/* 81353B44 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81353B48 | 48 00 C1 BD */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 81353B4C | 7C 7E 1B 78 */	mr r30, r3
/* 81353B50 | 7F 63 DB 78 */	mr r3, r27
/* 81353B54 | 7F C4 F3 78 */	mr r4, r30
/* 81353B58 | 38 A0 00 00 */	li r5, 0x0
/* 81353B5C | 48 00 00 FD */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81353B60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353B64 | 41 82 00 0C */	beq .L_81353B70
/* 81353B68 | 38 60 FF FB */	li r3, -0x5
/* 81353B6C | 48 00 00 28 */	b .L_81353B94
.L_81353B70:
/* 81353B70 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81353B74 | 41 82 00 1C */	beq .L_81353B90
/* 81353B78 | 7F 84 E3 78 */	mr r4, r28
/* 81353B7C | 7F C5 F3 78 */	mr r5, r30
/* 81353B80 | 38 7F 2D A0 */	addi r3, r31, 0x2da0
/* 81353B84 | 4C C6 31 82 */	crclr cr1eq
/* 81353B88 | 48 1D AB 19 */	bl OSReport
/* 81353B8C | 3B A0 FF FE */	li r29, -0x2
.L_81353B90:
/* 81353B90 | 7F A3 EB 78 */	mr r3, r29
.L_81353B94:
/* 81353B94 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81353B98 | 48 2A 59 75 */	bl _restgpr_27
/* 81353B9C | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81353BA0 | 7C 08 03 A6 */	mtlr r0
/* 81353BA4 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 81353BA8 | 4E 80 00 20 */	blr
.endfn nand_get_length__Q23ipl12NandSDWorkerFPCc

# .text:0xB7C0 | 0x81353BAC | size: 0xAC
# ipl::NandSDWorker::change_uid(unsigned long long)
.fn change_uid__Q23ipl12NandSDWorkerFUx, global
/* 81353BAC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81353BB0 | 7C 08 02 A6 */	mflr r0
/* 81353BB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81353BB8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81353BBC | 48 2A 59 0D */	bl _savegpr_29
/* 81353BC0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81353BC4 | 7C 7D 1B 78 */	mr r29, r3
/* 81353BC8 | 7C BF 2B 78 */	mr r31, r5
/* 81353BCC | 7C DE 33 78 */	mr r30, r6
/* 81353BD0 | 3C 64 00 04 */	addis r3, r4, 0x4
/* 81353BD4 | 80 03 EA 50 */	lwz r0, -0x15b0(r3)
/* 81353BD8 | 80 63 EA 54 */	lwz r3, -0x15ac(r3)
/* 81353BDC | 7C 00 2A 78 */	xor r0, r0, r5
/* 81353BE0 | 7C 63 32 78 */	xor r3, r3, r6
/* 81353BE4 | 7C 60 03 79 */	or. r0, r3, r0
/* 81353BE8 | 41 82 00 54 */	beq .L_81353C3C
/* 81353BEC | 7F C4 F3 78 */	mr r4, r30
/* 81353BF0 | 7F E3 FB 78 */	mr r3, r31
/* 81353BF4 | 48 26 B2 C5 */	bl ES_SetUid
/* 81353BF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353BFC | 7C 64 1B 78 */	mr r4, r3
/* 81353C00 | 41 82 00 24 */	beq .L_81353C24
/* 81353C04 | 3C 60 81 64 */	lis r3, lbl_8163884F@ha
/* 81353C08 | 7F C6 F3 78 */	mr r6, r30
/* 81353C0C | 7F E5 FB 78 */	mr r5, r31
/* 81353C10 | 38 63 88 4F */	addi r3, r3, lbl_8163884F@l
/* 81353C14 | 4C C6 31 82 */	crclr cr1eq
/* 81353C18 | 48 1D AA 89 */	bl OSReport
/* 81353C1C | 38 60 00 00 */	li r3, 0x0
/* 81353C20 | 48 00 00 20 */	b .L_81353C40
.L_81353C24:
/* 81353C24 | 48 22 08 81 */	bl fn_815744A4
/* 81353C28 | 48 22 07 49 */	bl ISFS_OpenLib
/* 81353C2C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81353C30 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81353C34 | 93 C3 EA 54 */	stw r30, -0x15ac(r3)
/* 81353C38 | 93 E3 EA 50 */	stw r31, -0x15b0(r3)
.L_81353C3C:
/* 81353C3C | 38 60 00 01 */	li r3, 0x1
.L_81353C40:
/* 81353C40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81353C44 | 48 2A 58 D1 */	bl _restgpr_29
/* 81353C48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81353C4C | 7C 08 03 A6 */	mtlr r0
/* 81353C50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81353C54 | 4E 80 00 20 */	blr
.endfn change_uid__Q23ipl12NandSDWorkerFUx

# .text:0xB86C | 0x81353C58 | size: 0x5C
# ipl::NandSDWorker::check_nand_corrupt(long, long*)
.fn check_nand_corrupt__Q23ipl12NandSDWorkerFlPl, global
/* 81353C58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81353C5C | 7C 08 02 A6 */	mflr r0
/* 81353C60 | 2C 04 FF FC */	cmpwi r4, -0x4
/* 81353C64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81353C68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81353C6C | 7C BF 2B 78 */	mr r31, r5
/* 81353C70 | 40 82 00 2C */	bne .L_81353C9C
/* 81353C74 | 3C 60 81 64 */	lis r3, lbl_81638870@ha
/* 81353C78 | 38 63 88 70 */	addi r3, r3, lbl_81638870@l
/* 81353C7C | 4C C6 31 82 */	crclr cr1eq
/* 81353C80 | 48 1D AA 21 */	bl OSReport
/* 81353C84 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81353C88 | 41 82 00 0C */	beq .L_81353C94
/* 81353C8C | 38 00 FF FB */	li r0, -0x5
/* 81353C90 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81353C94:
/* 81353C94 | 38 60 00 01 */	li r3, 0x1
/* 81353C98 | 48 00 00 08 */	b .L_81353CA0
.L_81353C9C:
/* 81353C9C | 38 60 00 00 */	li r3, 0x0
.L_81353CA0:
/* 81353CA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81353CA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81353CA8 | 7C 08 03 A6 */	mtlr r0
/* 81353CAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81353CB0 | 4E 80 00 20 */	blr
.endfn check_nand_corrupt__Q23ipl12NandSDWorkerFlPl

# .text:0xB8C8 | 0x81353CB4 | size: 0x14C
# ipl::NandSDWorker::handle_sd_error(long, long*)
.fn handle_sd_error__Q23ipl12NandSDWorkerFlPl, global
/* 81353CB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81353CB8 | 7C 08 02 A6 */	mflr r0
/* 81353CBC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81353CC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81353CC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81353CC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81353CCC | 7C BE 2B 78 */	mr r30, r5
/* 81353CD0 | 40 82 00 0C */	bne .L_81353CDC
/* 81353CD4 | 38 60 00 00 */	li r3, 0x0
/* 81353CD8 | 48 00 01 10 */	b .L_81353DE8
.L_81353CDC:
/* 81353CDC | 3B E0 FF FE */	li r31, -0x2
/* 81353CE0 | 48 29 42 C9 */	bl fn_815E7FA8
/* 81353CE4 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 81353CE8 | 40 80 00 6C */	bge .L_81353D54
/* 81353CEC | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81353CF0 | 41 82 00 CC */	beq .L_81353DBC
/* 81353CF4 | 40 80 00 30 */	bge .L_81353D24
/* 81353CF8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81353CFC | 40 80 00 1C */	bge .L_81353D18
/* 81353D00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353D04 | 41 82 00 BC */	beq .L_81353DC0
/* 81353D08 | 40 80 00 9C */	bge .L_81353DA4
/* 81353D0C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81353D10 | 40 80 00 94 */	bge .L_81353DA4
/* 81353D14 | 48 00 00 AC */	b .L_81353DC0
.L_81353D18:
/* 81353D18 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81353D1C | 41 82 00 A0 */	beq .L_81353DBC
/* 81353D20 | 48 00 00 A0 */	b .L_81353DC0
.L_81353D24:
/* 81353D24 | 2C 03 00 0E */	cmpwi r3, 0xe
/* 81353D28 | 40 80 00 18 */	bge .L_81353D40
/* 81353D2C | 2C 03 00 0C */	cmpwi r3, 0xc
/* 81353D30 | 40 80 00 74 */	bge .L_81353DA4
/* 81353D34 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 81353D38 | 40 80 00 88 */	bge .L_81353DC0
/* 81353D3C | 48 00 00 68 */	b .L_81353DA4
.L_81353D40:
/* 81353D40 | 2C 03 00 12 */	cmpwi r3, 0x12
/* 81353D44 | 40 80 00 7C */	bge .L_81353DC0
/* 81353D48 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 81353D4C | 40 80 00 58 */	bge .L_81353DA4
/* 81353D50 | 48 00 00 70 */	b .L_81353DC0
.L_81353D54:
/* 81353D54 | 2C 03 00 58 */	cmpwi r3, 0x58
/* 81353D58 | 41 82 00 4C */	beq .L_81353DA4
/* 81353D5C | 40 80 00 30 */	bge .L_81353D8C
/* 81353D60 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81353D64 | 41 82 00 48 */	beq .L_81353DAC
/* 81353D68 | 40 80 00 18 */	bge .L_81353D80
/* 81353D6C | 2C 03 00 1B */	cmpwi r3, 0x1b
/* 81353D70 | 40 80 00 34 */	bge .L_81353DA4
/* 81353D74 | 2C 03 00 19 */	cmpwi r3, 0x19
/* 81353D78 | 40 80 00 48 */	bge .L_81353DC0
/* 81353D7C | 48 00 00 28 */	b .L_81353DA4
.L_81353D80:
/* 81353D80 | 2C 03 00 2E */	cmpwi r3, 0x2e
/* 81353D84 | 41 82 00 20 */	beq .L_81353DA4
/* 81353D88 | 48 00 00 38 */	b .L_81353DC0
.L_81353D8C:
/* 81353D8C | 2C 03 00 C9 */	cmpwi r3, 0xc9
/* 81353D90 | 41 82 00 24 */	beq .L_81353DB4
/* 81353D94 | 40 80 00 2C */	bge .L_81353DC0
/* 81353D98 | 2C 03 00 5A */	cmpwi r3, 0x5a
/* 81353D9C | 41 82 00 08 */	beq .L_81353DA4
/* 81353DA0 | 48 00 00 20 */	b .L_81353DC0
.L_81353DA4:
/* 81353DA4 | 3B E0 FF FE */	li r31, -0x2
/* 81353DA8 | 48 00 00 18 */	b .L_81353DC0
.L_81353DAC:
/* 81353DAC | 3B E0 FF F9 */	li r31, -0x7
/* 81353DB0 | 48 00 00 10 */	b .L_81353DC0
.L_81353DB4:
/* 81353DB4 | 3B E0 FF F5 */	li r31, -0xb
/* 81353DB8 | 48 00 00 08 */	b .L_81353DC0
.L_81353DBC:
/* 81353DBC | 3B E0 FF FE */	li r31, -0x2
.L_81353DC0:
/* 81353DC0 | 48 29 41 E9 */	bl fn_815E7FA8
/* 81353DC4 | 3C A0 81 64 */	lis r5, lbl_81638894@ha
/* 81353DC8 | 7C 64 1B 78 */	mr r4, r3
/* 81353DCC | 38 65 88 94 */	addi r3, r5, lbl_81638894@l
/* 81353DD0 | 4C C6 31 82 */	crclr cr1eq
/* 81353DD4 | 48 1D A8 CD */	bl OSReport
/* 81353DD8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81353DDC | 41 82 00 08 */	beq .L_81353DE4
/* 81353DE0 | 93 FE 00 00 */	stw r31, 0x0(r30)
.L_81353DE4:
/* 81353DE4 | 7F E3 FB 78 */	mr r3, r31
.L_81353DE8:
/* 81353DE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81353DEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81353DF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81353DF4 | 7C 08 03 A6 */	mtlr r0
/* 81353DF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81353DFC | 4E 80 00 20 */	blr
.endfn handle_sd_error__Q23ipl12NandSDWorkerFlPl

# .text:0xBA14 | 0x81353E00 | size: 0x84
# ipl::NandSDWorker::handle_sd_error_for_entry(long, long*)
.fn handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl, global
/* 81353E00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81353E04 | 7C 08 02 A6 */	mflr r0
/* 81353E08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81353E0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81353E10 | 48 2A 56 B9 */	bl _savegpr_29
/* 81353E14 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81353E18 | 7C 7D 1B 78 */	mr r29, r3
/* 81353E1C | 7C 9E 23 78 */	mr r30, r4
/* 81353E20 | 7C BF 2B 78 */	mr r31, r5
/* 81353E24 | 40 82 00 0C */	bne .L_81353E30
/* 81353E28 | 38 60 00 00 */	li r3, 0x0
/* 81353E2C | 48 00 00 40 */	b .L_81353E6C
.L_81353E30:
/* 81353E30 | 48 29 41 79 */	bl fn_815E7FA8
/* 81353E34 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81353E38 | 41 82 00 0C */	beq .L_81353E44
/* 81353E3C | 2C 03 00 16 */	cmpwi r3, 0x16
/* 81353E40 | 40 82 00 1C */	bne .L_81353E5C
.L_81353E44:
/* 81353E44 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81353E48 | 41 82 00 0C */	beq .L_81353E54
/* 81353E4C | 38 00 FF FE */	li r0, -0x2
/* 81353E50 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81353E54:
/* 81353E54 | 38 60 FF FE */	li r3, -0x2
/* 81353E58 | 48 00 00 14 */	b .L_81353E6C
.L_81353E5C:
/* 81353E5C | 7F A3 EB 78 */	mr r3, r29
/* 81353E60 | 7F C4 F3 78 */	mr r4, r30
/* 81353E64 | 7F E5 FB 78 */	mr r5, r31
/* 81353E68 | 4B FF FE 4D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
.L_81353E6C:
/* 81353E6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81353E70 | 48 2A 56 A5 */	bl _restgpr_29
/* 81353E74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81353E78 | 7C 08 03 A6 */	mtlr r0
/* 81353E7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81353E80 | 4E 80 00 20 */	blr
.endfn handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl

# .text:0xBA98 | 0x81353E84 | size: 0x18
# ipl::NandSDWorker::is_all_region(unsigned long long)
.fn is_all_region__Q23ipl12NandSDWorkerFUx, global
/* 81353E84 | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 81353E88 | 7C 03 07 74 */	extsb r3, r0
/* 81353E8C | 38 03 FF BF */	subi r0, r3, 0x41
/* 81353E90 | 7C 00 00 34 */	cntlzw r0, r0
/* 81353E94 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81353E98 | 4E 80 00 20 */	blr
.endfn is_all_region__Q23ipl12NandSDWorkerFUx

# .text:0xBAB0 | 0x81353E9C | size: 0x30
# ipl::NandSDWorker::is_same_title(unsigned long long, unsigned long long)
.fn is_same_title__Q23ipl12NandSDWorkerFUxUx, global
/* 81353E9C | 38 60 FF 00 */	li r3, -0x100
/* 81353EA0 | 38 00 FF FF */	li r0, -0x1
/* 81353EA4 | 7C C6 18 38 */	and r6, r6, r3
/* 81353EA8 | 7D 03 18 38 */	and r3, r8, r3
/* 81353EAC | 7C A4 00 38 */	and r4, r5, r0
/* 81353EB0 | 7C E0 00 38 */	and r0, r7, r0
/* 81353EB4 | 7C C3 1A 78 */	xor r3, r6, r3
/* 81353EB8 | 7C 80 02 78 */	xor r0, r4, r0
/* 81353EBC | 7C 60 03 78 */	or r0, r3, r0
/* 81353EC0 | 7C 00 00 34 */	cntlzw r0, r0
/* 81353EC4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81353EC8 | 4E 80 00 20 */	blr
.endfn is_same_title__Q23ipl12NandSDWorkerFUxUx

# .text:0xBAE0 | 0x81353ECC | size: 0x10C
# ipl::NandSDWorker::item_exist_nand_save_folder(unsigned long long, const char*)
.fn item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc, global
/* 81353ECC | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81353ED0 | 7C 08 02 A6 */	mflr r0
/* 81353ED4 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81353ED8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81353EDC | 48 2A 55 E5 */	bl _savegpr_27
/* 81353EE0 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81353EE4 | 7C 7B 1B 78 */	mr r27, r3
/* 81353EE8 | 7C BD 2B 78 */	mr r29, r5
/* 81353EEC | 7C DC 33 78 */	mr r28, r6
/* 81353EF0 | 7C FE 3B 78 */	mr r30, r7
/* 81353EF4 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81353EF8 | 4B FF FC B5 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353F00 | 40 82 00 0C */	bne .L_81353F0C
/* 81353F04 | 38 60 FF F2 */	li r3, -0xe
/* 81353F08 | 48 00 00 B8 */	b .L_81353FC0
.L_81353F0C:
/* 81353F0C | 38 00 FF FF */	li r0, -0x1
/* 81353F10 | 7F A6 EB 78 */	mr r6, r29
/* 81353F14 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81353F18 | 38 BF 01 1C */	addi r5, r31, 0x11c
/* 81353F1C | 7F 87 00 38 */	and r7, r28, r0
/* 81353F20 | 38 80 00 40 */	li r4, 0x40
/* 81353F24 | 4C C6 31 82 */	crclr cr1eq
/* 81353F28 | 48 2A CA 81 */	bl snprintf
/* 81353F2C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81353F30 | 38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 81353F34 | 38 A0 00 40 */	li r5, 0x40
/* 81353F38 | 48 2A E4 FD */	bl strncat
/* 81353F3C | 7F C4 F3 78 */	mr r4, r30
/* 81353F40 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81353F44 | 38 A0 00 40 */	li r5, 0x40
/* 81353F48 | 48 2A E4 ED */	bl strncat
/* 81353F4C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81353F50 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81353F54 | 38 80 00 00 */	li r4, 0x0
/* 81353F58 | 48 00 C0 05 */	bl ReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81353F5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81353F60 | 40 82 00 34 */	bne .L_81353F94
/* 81353F64 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81353F68 | 38 7F 2E 31 */	addi r3, r31, 0x2e31
/* 81353F6C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81353F70 | 4C C6 31 82 */	crclr cr1eq
/* 81353F74 | 48 1D A7 2D */	bl OSReport
/* 81353F78 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81353F7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81353F80 | 41 82 00 0C */	beq .L_81353F8C
/* 81353F84 | 3B E0 00 01 */	li r31, 0x1
/* 81353F88 | 48 00 00 24 */	b .L_81353FAC
.L_81353F8C:
/* 81353F8C | 3B E0 00 00 */	li r31, 0x0
/* 81353F90 | 48 00 00 1C */	b .L_81353FAC
.L_81353F94:
/* 81353F94 | 7C 65 1B 78 */	mr r5, r3
/* 81353F98 | 38 7F 2E 4F */	addi r3, r31, 0x2e4f
/* 81353F9C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81353FA0 | 4C C6 31 82 */	crclr cr1eq
/* 81353FA4 | 48 1D A6 FD */	bl OSReport
/* 81353FA8 | 3B E0 00 00 */	li r31, 0x0
.L_81353FAC:
/* 81353FAC | 7F 63 DB 78 */	mr r3, r27
/* 81353FB0 | 38 C0 00 02 */	li r6, 0x2
/* 81353FB4 | 38 A0 00 01 */	li r5, 0x1
/* 81353FB8 | 4B FF FB F5 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353FBC | 7F E3 FB 78 */	mr r3, r31
.L_81353FC0:
/* 81353FC0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81353FC4 | 48 2A 55 49 */	bl _restgpr_27
/* 81353FC8 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81353FCC | 7C 08 03 A6 */	mtlr r0
/* 81353FD0 | 38 21 00 70 */	addi r1, r1, 0x70
/* 81353FD4 | 4E 80 00 20 */	blr
.endfn item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc

# .text:0xBBEC | 0x81353FD8 | size: 0x98
# ipl::NandSDWorker::encrypt(const void*, unsigned long, void*)
.fn encrypt__Q23ipl12NandSDWorkerFPCvUlPv, global
/* 81353FD8 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81353FDC | 7C 2C 0B 78 */	mr r12, r1
/* 81353FE0 | 21 6B FF A0 */	subfic r11, r11, -0x60
/* 81353FE4 | 7C 21 59 6E */	stwux r1, r1, r11
/* 81353FE8 | 7C 08 02 A6 */	mflr r0
/* 81353FEC | 7D 8B 63 78 */	mr r11, r12
/* 81353FF0 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81353FF4 | 48 2A 54 D5 */	bl _savegpr_29
/* 81353FF8 | 3C C0 81 61 */	lis r6, c_es_encrypt_iv__Q23ipl12NandSDWorker@ha
/* 81353FFC | 7C 7D 1B 78 */	mr r29, r3
/* 81354000 | 7C 9E 23 78 */	mr r30, r4
/* 81354004 | 7C BF 2B 78 */	mr r31, r5
/* 81354008 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8135400C | 38 86 D6 38 */	addi r4, r6, c_es_encrypt_iv__Q23ipl12NandSDWorker@l
/* 81354010 | 38 A0 00 10 */	li r5, 0x10
/* 81354014 | 4B FD C2 1D */	bl memcpy
/* 81354018 | 7F A5 EB 78 */	mr r5, r29
/* 8135401C | 7F C6 F3 78 */	mr r6, r30
/* 81354020 | 7F E7 FB 78 */	mr r7, r31
/* 81354024 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81354028 | 38 60 00 06 */	li r3, 0x6
/* 8135402C | 48 26 B3 85 */	bl fn_815BF3B0
/* 81354030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354034 | 7C 7F 1B 78 */	mr r31, r3
/* 81354038 | 41 82 00 18 */	beq .L_81354050
/* 8135403C | 3C 60 81 64 */	lis r3, lbl_81638901@ha
/* 81354040 | 7F E4 FB 78 */	mr r4, r31
/* 81354044 | 38 63 89 01 */	addi r3, r3, lbl_81638901@l
/* 81354048 | 4C C6 31 82 */	crclr cr1eq
/* 8135404C | 48 1D A6 55 */	bl OSReport
.L_81354050:
/* 81354050 | 7F E3 FB 78 */	mr r3, r31
/* 81354054 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81354058 | 7D 4B 53 78 */	mr r11, r10
/* 8135405C | 48 2A 54 B9 */	bl _restgpr_29
/* 81354060 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81354064 | 7C 08 03 A6 */	mtlr r0
/* 81354068 | 7D 41 53 78 */	mr r1, r10
/* 8135406C | 4E 80 00 20 */	blr
.endfn encrypt__Q23ipl12NandSDWorkerFPCvUlPv

# .text:0xBC84 | 0x81354070 | size: 0x98
# ipl::NandSDWorker::decrypt(const void*, unsigned long, void*)
.fn decrypt__Q23ipl12NandSDWorkerFPCvUlPv, global
/* 81354070 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81354074 | 7C 2C 0B 78 */	mr r12, r1
/* 81354078 | 21 6B FF A0 */	subfic r11, r11, -0x60
/* 8135407C | 7C 21 59 6E */	stwux r1, r1, r11
/* 81354080 | 7C 08 02 A6 */	mflr r0
/* 81354084 | 7D 8B 63 78 */	mr r11, r12
/* 81354088 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8135408C | 48 2A 54 3D */	bl _savegpr_29
/* 81354090 | 3C C0 81 61 */	lis r6, c_es_encrypt_iv__Q23ipl12NandSDWorker@ha
/* 81354094 | 7C 7D 1B 78 */	mr r29, r3
/* 81354098 | 7C 9E 23 78 */	mr r30, r4
/* 8135409C | 7C BF 2B 78 */	mr r31, r5
/* 813540A0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813540A4 | 38 86 D6 38 */	addi r4, r6, c_es_encrypt_iv__Q23ipl12NandSDWorker@l
/* 813540A8 | 38 A0 00 10 */	li r5, 0x10
/* 813540AC | 4B FD C1 85 */	bl memcpy
/* 813540B0 | 7F A5 EB 78 */	mr r5, r29
/* 813540B4 | 7F C6 F3 78 */	mr r6, r30
/* 813540B8 | 7F E7 FB 78 */	mr r7, r31
/* 813540BC | 38 81 00 20 */	addi r4, r1, 0x20
/* 813540C0 | 38 60 00 06 */	li r3, 0x6
/* 813540C4 | 48 26 B3 85 */	bl fn_815BF448
/* 813540C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813540CC | 7C 7F 1B 78 */	mr r31, r3
/* 813540D0 | 41 82 00 18 */	beq .L_813540E8
/* 813540D4 | 3C 60 81 64 */	lis r3, lbl_81638927@ha
/* 813540D8 | 7F E4 FB 78 */	mr r4, r31
/* 813540DC | 38 63 89 27 */	addi r3, r3, lbl_81638927@l
/* 813540E0 | 4C C6 31 82 */	crclr cr1eq
/* 813540E4 | 48 1D A5 BD */	bl OSReport
.L_813540E8:
/* 813540E8 | 7F E3 FB 78 */	mr r3, r31
/* 813540EC | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 813540F0 | 7D 4B 53 78 */	mr r11, r10
/* 813540F4 | 48 2A 54 21 */	bl _restgpr_29
/* 813540F8 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 813540FC | 7C 08 03 A6 */	mtlr r0
/* 81354100 | 7D 41 53 78 */	mr r1, r10
/* 81354104 | 4E 80 00 20 */	blr
.endfn decrypt__Q23ipl12NandSDWorkerFPCvUlPv

# .text:0xBD1C | 0x81354108 | size: 0x1C
# ipl::NandSDWorker::is_fa_file(unsigned char)
.fn is_fa_file__Q23ipl12NandSDWorkerFUc, global
/* 81354108 | 54 80 06 F7 */	rlwinm. r0, r4, 0, 27, 27
/* 8135410C | 38 60 00 00 */	li r3, 0x0
/* 81354110 | 4C 82 00 20 */	bnelr
/* 81354114 | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 81354118 | 4C 82 00 20 */	bnelr
/* 8135411C | 38 60 00 01 */	li r3, 0x1
/* 81354120 | 4E 80 00 20 */	blr
.endfn is_fa_file__Q23ipl12NandSDWorkerFUc

# .text:0xBD38 | 0x81354124 | size: 0x180
# ipl::ut::FreeList::FreeList()
.fn __ct__Q33ipl2ut8FreeListFv, global
/* 81354124 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81354128 | 7C 08 02 A6 */	mflr r0
/* 8135412C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81354130 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81354134 | 48 2A 53 8D */	bl _savegpr_27
/* 81354138 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8135413C | 7C 7B 1B 78 */	mr r27, r3
/* 81354140 | 3C 80 00 01 */	lis r4, 0x1
/* 81354144 | 7C BD 2B 78 */	mr r29, r5
/* 81354148 | 3C 67 00 02 */	addis r3, r7, 0x2
/* 8135414C | 7C DC 33 78 */	mr r28, r6
/* 81354150 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81354154 | 38 84 F0 A0 */	subi r4, r4, 0xf60
/* 81354158 | 38 A0 00 20 */	li r5, 0x20
/* 8135415C | 48 20 65 F9 */	bl fn_8155A754
/* 81354160 | 7C 7F 1B 78 */	mr r31, r3
/* 81354164 | 7F 63 DB 78 */	mr r3, r27
/* 81354168 | 7F 86 E3 78 */	mr r6, r28
/* 8135416C | 7F A5 EB 78 */	mr r5, r29
/* 81354170 | 7F E7 FB 78 */	mr r7, r31
/* 81354174 | 39 00 00 00 */	li r8, 0x0
/* 81354178 | 4B FF 6E D5 */	bl get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 8135417C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354180 | 7C 7E 1B 78 */	mr r30, r3
/* 81354184 | 40 82 00 E8 */	bne .L_8135426C
/* 81354188 | 7F 84 E3 78 */	mr r4, r28
/* 8135418C | 7F A3 EB 78 */	mr r3, r29
/* 81354190 | 4B FF 51 6D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81354194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354198 | 41 82 00 0C */	beq .L_813541A4
/* 8135419C | 3B C0 00 05 */	li r30, 0x5
/* 813541A0 | 48 00 00 CC */	b .L_8135426C
.L_813541A4:
/* 813541A4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813541A8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813541AC | 41 82 00 0C */	beq .L_813541B8
/* 813541B0 | 3B C0 00 01 */	li r30, 0x1
/* 813541B4 | 48 00 00 B8 */	b .L_8135426C
.L_813541B8:
/* 813541B8 | 80 ED 81 64 */	lwz r7, c_nocopy_folder_name__Q23ipl12NandSDWorker@sda21(r0)
/* 813541BC | 7F 63 DB 78 */	mr r3, r27
/* 813541C0 | 7F 86 E3 78 */	mr r6, r28
/* 813541C4 | 7F A5 EB 78 */	mr r5, r29
/* 813541C8 | 4B FF FD 05 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 813541CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813541D0 | 41 82 00 40 */	beq .L_81354210
/* 813541D4 | 7F 63 DB 78 */	mr r3, r27
/* 813541D8 | 7F 86 E3 78 */	mr r6, r28
/* 813541DC | 7F A5 EB 78 */	mr r5, r29
/* 813541E0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813541E4 | 48 00 00 C1 */	bl init__Q33ipl2ut8FreeListFPvUlUl
/* 813541E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813541EC | 7C 7E 1B 78 */	mr r30, r3
/* 813541F0 | 40 82 00 7C */	bne .L_8135426C
/* 813541F4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813541F8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813541FC | 40 82 00 0C */	bne .L_81354208
/* 81354200 | 3B C0 00 01 */	li r30, 0x1
/* 81354204 | 48 00 00 68 */	b .L_8135426C
.L_81354208:
/* 81354208 | 3B C0 00 02 */	li r30, 0x2
/* 8135420C | 48 00 00 60 */	b .L_8135426C
.L_81354210:
/* 81354210 | 80 ED 81 68 */	lwz r7, c_notransfer_folder_name__Q23ipl12NandSDWorker@sda21(r0)
/* 81354214 | 7F 63 DB 78 */	mr r3, r27
/* 81354218 | 7F 86 E3 78 */	mr r6, r28
/* 8135421C | 7F A5 EB 78 */	mr r5, r29
/* 81354220 | 4B FF FC AD */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 81354224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354228 | 41 82 00 40 */	beq .L_81354268
/* 8135422C | 7F 63 DB 78 */	mr r3, r27
/* 81354230 | 7F 86 E3 78 */	mr r6, r28
/* 81354234 | 7F A5 EB 78 */	mr r5, r29
/* 81354238 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8135423C | 48 00 00 69 */	bl init__Q33ipl2ut8FreeListFPvUlUl
/* 81354240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354244 | 7C 7E 1B 78 */	mr r30, r3
/* 81354248 | 40 82 00 24 */	bne .L_8135426C
/* 8135424C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81354250 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81354254 | 40 82 00 0C */	bne .L_81354260
/* 81354258 | 3B C0 00 03 */	li r30, 0x3
/* 8135425C | 48 00 00 10 */	b .L_8135426C
.L_81354260:
/* 81354260 | 3B C0 00 04 */	li r30, 0x4
/* 81354264 | 48 00 00 08 */	b .L_8135426C
.L_81354268:
/* 81354268 | 3B C0 00 00 */	li r30, 0x0
.L_8135426C:
/* 8135426C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81354270 | 41 82 00 18 */	beq .L_81354288
/* 81354274 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81354278 | 7F E4 FB 78 */	mr r4, r31
/* 8135427C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81354280 | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81354284 | 48 20 67 81 */	bl fn_8155AA04
.L_81354288:
/* 81354288 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135428C | 7F C3 F3 78 */	mr r3, r30
/* 81354290 | 48 2A 52 7D */	bl _restgpr_27
/* 81354294 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81354298 | 7C 08 03 A6 */	mtlr r0
/* 8135429C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813542A0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl2ut8FreeListFv

# .text:0xBEB8 | 0x813542A4 | size: 0xBC
# ipl::ut::FreeList::init(void*, unsigned long, unsigned long)
.fn init__Q33ipl2ut8FreeListFPvUlUl, global
/* 813542A4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813542A8 | 7C 08 02 A6 */	mflr r0
/* 813542AC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813542B0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813542B4 | 48 2A 52 11 */	bl _savegpr_28
/* 813542B8 | 7C 7C 1B 78 */	mr r28, r3
/* 813542BC | 7C BE 2B 78 */	mr r30, r5
/* 813542C0 | 7C DD 33 78 */	mr r29, r6
/* 813542C4 | 7C FF 3B 78 */	mr r31, r7
/* 813542C8 | 4B FF F8 E5 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 813542CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813542D0 | 40 82 00 0C */	bne .L_813542DC
/* 813542D4 | 38 60 FF F2 */	li r3, -0xe
/* 813542D8 | 48 00 00 70 */	b .L_81354348
.L_813542DC:
/* 813542DC | 3C A0 81 63 */	lis r5, lbl_81635BA4@ha
/* 813542E0 | 38 00 FF FF */	li r0, -0x1
/* 813542E4 | 7F C6 F3 78 */	mr r6, r30
/* 813542E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813542EC | 38 A5 5B A4 */	addi r5, r5, lbl_81635BA4@l
/* 813542F0 | 7F A7 00 38 */	and r7, r29, r0
/* 813542F4 | 38 80 00 40 */	li r4, 0x40
/* 813542F8 | 4C C6 31 82 */	crclr cr1eq
/* 813542FC | 48 2A C6 AD */	bl snprintf
/* 81354300 | 7F E5 FB 78 */	mr r5, r31
/* 81354304 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81354308 | 38 80 00 00 */	li r4, 0x0
/* 8135430C | 48 00 BC 51 */	bl ReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81354310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354314 | 7C 7F 1B 78 */	mr r31, r3
/* 81354318 | 41 82 00 1C */	beq .L_81354334
/* 8135431C | 3C 60 81 64 */	lis r3, lbl_816388D7@ha
/* 81354320 | 7F E5 FB 78 */	mr r5, r31
/* 81354324 | 38 63 88 D7 */	addi r3, r3, lbl_816388D7@l
/* 81354328 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135432C | 4C C6 31 82 */	crclr cr1eq
/* 81354330 | 48 1D A3 71 */	bl OSReport
.L_81354334:
/* 81354334 | 7F 83 E3 78 */	mr r3, r28
/* 81354338 | 38 C0 00 02 */	li r6, 0x2
/* 8135433C | 38 A0 00 01 */	li r5, 0x1
/* 81354340 | 4B FF F8 6D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81354344 | 7F E3 FB 78 */	mr r3, r31
.L_81354348:
/* 81354348 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135434C | 48 2A 51 C5 */	bl _restgpr_28
/* 81354350 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81354354 | 7C 08 03 A6 */	mtlr r0
/* 81354358 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8135435C | 4E 80 00 20 */	blr
.endfn init__Q33ipl2ut8FreeListFPvUlUl

# .text:0xBF74 | 0x81354360 | size: 0x58
# ipl::ut::FreeList::get()
.fn get__Q33ipl2ut8FreeListFv, global
/* 81354360 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354364 | 7C 08 02 A6 */	mflr r0
/* 81354368 | 7C 86 23 78 */	mr r6, r4
/* 8135436C | 38 A0 00 00 */	li r5, 0x0
/* 81354370 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354374 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81354378 | 3C 87 00 02 */	addis r4, r7, 0x2
/* 8135437C | 38 84 E6 6C */	subi r4, r4, 0x1994
/* 81354380 | 4B FF E8 35 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81354384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354388 | 41 82 00 10 */	beq .L_81354398
/* 8135438C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81354390 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81354394 | 40 82 00 0C */	bne .L_813543A0
.L_81354398:
/* 81354398 | 38 60 FF FE */	li r3, -0x2
/* 8135439C | 48 00 00 0C */	b .L_813543A8
.L_813543A0:
/* 813543A0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813543A4 | 54 03 07 FE */	clrlwi r3, r0, 31
.L_813543A8:
/* 813543A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813543AC | 7C 08 03 A6 */	mtlr r0
/* 813543B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813543B4 | 4E 80 00 20 */	blr
.endfn get__Q33ipl2ut8FreeListFv

# .text:0xBFCC | 0x813543B8 | size: 0xA8
# ipl::ut::Stack::Stack()
.fn __ct__Q33ipl2ut5StackFv, global
/* 813543B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813543BC | 7C 08 02 A6 */	mflr r0
/* 813543C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813543C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813543C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813543CC | 4B FF BC 11 */	bl do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv
/* 813543D0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813543D4 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 813543D8 | 80 04 EA 24 */	lwz r0, -0x15dc(r4)
/* 813543DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813543E0 | 41 80 00 6C */	blt .L_8135444C
/* 813543E4 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 813543E8 | 7F E3 FB 78 */	mr r3, r31
/* 813543EC | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 813543F0 | 4B FF BA B9 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 813543F4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813543F8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813543FC | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81354400 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354404 | 3C C3 00 04 */	addis r6, r3, 0x4
/* 81354408 | 80 06 EA 24 */	lwz r0, -0x15dc(r6)
/* 8135440C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81354410 | 40 82 00 3C */	bne .L_8135444C
/* 81354414 | 80 A6 EA 2C */	lwz r5, -0x15d4(r6)
/* 81354418 | 7F E3 FB 78 */	mr r3, r31
/* 8135441C | 38 80 FF FF */	li r4, -0x1
/* 81354420 | 38 05 FF FF */	subi r0, r5, 0x1
/* 81354424 | 90 06 EA 2C */	stw r0, -0x15d4(r6)
/* 81354428 | 4B FF D1 7D */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
/* 8135442C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354430 | 7F E3 FB 78 */	mr r3, r31
/* 81354434 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 81354438 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8135443C | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81354440 | 38 84 E6 78 */	subi r4, r4, 0x1988
/* 81354444 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81354448 | 4B FF EA 81 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
.L_8135444C:
/* 8135444C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354450 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354454 | 7C 08 03 A6 */	mtlr r0
/* 81354458 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135445C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl2ut5StackFv

# .text:0xC074 | 0x81354460 | size: 0x4C
# ipl::ut::Stack::init(void*, unsigned long, unsigned long)
.fn init__Q33ipl2ut5StackFPvUlUl, global
/* 81354460 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354464 | 7C 08 02 A6 */	mflr r0
/* 81354468 | 38 80 00 00 */	li r4, 0x0
/* 8135446C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354470 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354474 | 7C 7F 1B 78 */	mr r31, r3
/* 81354478 | 4B FF CC 7D */	bl do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv
/* 8135447C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354480 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81354484 | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 81354488 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135448C | 41 80 00 0C */	blt .L_81354498
/* 81354490 | 7F E3 FB 78 */	mr r3, r31
/* 81354494 | 4B FF 8E 1D */	bl do_delete_sd_app__Q23ipl12NandSDWorkerFv
.L_81354498:
/* 81354498 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135449C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813544A0 | 7C 08 03 A6 */	mtlr r0
/* 813544A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813544A8 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2ut5StackFPvUlUl

# .text:0xC0C0 | 0x813544AC | size: 0x160
# ipl::ut::Stack::push(const void*)
.fn push__Q33ipl2ut5StackFPCv, global
/* 813544AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813544B0 | 7C 08 02 A6 */	mflr r0
/* 813544B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813544B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813544BC | 7C 7F 1B 78 */	mr r31, r3
/* 813544C0 | 4B FF 9C 91 */	bl do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv
/* 813544C4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813544C8 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 813544CC | 80 04 EA 24 */	lwz r0, -0x15dc(r4)
/* 813544D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813544D4 | 41 80 01 24 */	blt .L_813545F8
/* 813544D8 | 80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 813544DC | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813544E0 | 4B FF 4E 1D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 813544E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813544E8 | 41 82 00 8C */	beq .L_81354574
/* 813544EC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813544F0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813544F4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813544F8 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 813544FC | 80 65 00 0C */	lwz r3, 0xc(r5)
/* 81354500 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81354504 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81354508 | 48 01 24 39 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8135450C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354510 | 7C 64 1B 78 */	mr r4, r3
/* 81354514 | 41 82 00 28 */	beq .L_8135453C
/* 81354518 | 3C 60 81 63 */	lis r3, lbl_81635D1B@ha
/* 8135451C | 38 63 5D 1B */	addi r3, r3, lbl_81635D1B@l
/* 81354520 | 4C C6 31 82 */	crclr cr1eq
/* 81354524 | 48 1D A1 7D */	bl OSReport
/* 81354528 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8135452C | 38 00 FF FE */	li r0, -0x2
/* 81354530 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81354534 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81354538 | 48 00 00 14 */	b .L_8135454C
.L_8135453C:
/* 8135453C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354540 | 38 00 00 00 */	li r0, 0x0
/* 81354544 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81354548 | 90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8135454C:
/* 8135454C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354550 | 7F E3 FB 78 */	mr r3, r31
/* 81354554 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81354558 | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8135455C | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81354560 | 4B FF 4F 79 */	bl delete_meta_file__Q23ipl12NandSDWorkerFUx
/* 81354564 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354568 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 8135456C | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81354570 | 48 00 00 48 */	b .L_813545B8
.L_81354574:
/* 81354574 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354578 | 7F E3 FB 78 */	mr r3, r31
/* 8135457C | 38 E0 00 01 */	li r7, 0x1
/* 81354580 | 39 00 00 00 */	li r8, 0x0
/* 81354584 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 81354588 | 39 20 00 00 */	li r9, 0x0
/* 8135458C | 80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81354590 | 80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81354594 | 4B FF EE 4D */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 81354598 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8135459C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813545A0 | 90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813545A4 | 7F E3 FB 78 */	mr r3, r31
/* 813545A8 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813545AC | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813545B0 | 80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813545B4 | 4B FF B6 E1 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
.L_813545B8:
/* 813545B8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813545BC | 3C A3 00 04 */	addis r5, r3, 0x4
/* 813545C0 | 80 05 EA 24 */	lwz r0, -0x15dc(r5)
/* 813545C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813545C8 | 40 82 00 30 */	bne .L_813545F8
/* 813545CC | 80 85 EA 28 */	lwz r4, -0x15d8(r5)
/* 813545D0 | 7F E3 FB 78 */	mr r3, r31
/* 813545D4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813545D8 | 90 05 EA 28 */	stw r0, -0x15d8(r5)
/* 813545DC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813545E0 | 3C C4 00 04 */	addis r6, r4, 0x4
/* 813545E4 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 813545E8 | 80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 813545EC | 38 84 E6 60 */	subi r4, r4, 0x19a0
/* 813545F0 | 80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 813545F4 | 4B FF E6 3D */	bl delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
.L_813545F8:
/* 813545F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813545FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354600 | 7C 08 03 A6 */	mtlr r0
/* 81354604 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354608 | 4E 80 00 20 */	blr
.endfn push__Q33ipl2ut5StackFPCv

# .text:0xC220 | 0x8135460C | size: 0x48
# ipl::ut::Stack::pop(void*)
.fn pop__Q33ipl2ut5StackFPv, global
/* 8135460C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354610 | 7C 08 02 A6 */	mflr r0
/* 81354614 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354618 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135461C | 7C 7F 1B 78 */	mr r31, r3
/* 81354620 | 4B FF A7 9D */	bl do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv
/* 81354624 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354628 | 3C 63 00 04 */	addis r3, r3, 0x4
/* 8135462C | 80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 81354630 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81354634 | 40 82 00 0C */	bne .L_81354640
/* 81354638 | 7F E3 FB 78 */	mr r3, r31
/* 8135463C | 4B FF 8B A1 */	bl do_delete_sd_save__Q23ipl12NandSDWorkerFv
.L_81354640:
/* 81354640 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354644 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354648 | 7C 08 03 A6 */	mtlr r0
/* 8135464C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354650 | 4E 80 00 20 */	blr
.endfn pop__Q33ipl2ut5StackFPv

# .text:0xC268 | 0x81354654 | size: 0xA4
.fn iplNandSD_81354654, local
/* 81354654 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81354658 | 7C 08 02 A6 */	mflr r0
/* 8135465C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81354660 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81354664 | 48 2A 4E 61 */	bl _savegpr_28
/* 81354668 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135466C | 7C 7C 1B 78 */	mr r28, r3
/* 81354670 | 7C 9D 23 78 */	mr r29, r4
/* 81354674 | 3B E0 00 00 */	li r31, 0x0
/* 81354678 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8135467C | 38 80 06 40 */	li r4, 0x640
/* 81354680 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354684 | 48 20 6F E5 */	bl fn_8155B668
/* 81354688 | 7C 7E 1B 78 */	mr r30, r3
/* 8135468C | 7F 83 E3 78 */	mr r3, r28
/* 81354690 | 7F A4 EB 78 */	mr r4, r29
/* 81354694 | 7F C5 F3 78 */	mr r5, r30
/* 81354698 | 4B FF CF C9 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8135469C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813546A0 | 40 82 00 20 */	bne .L_813546C0
/* 813546A4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813546A8 | 7F 83 E3 78 */	mr r3, r28
/* 813546AC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813546B0 | 4B FF D5 01 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 813546B4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813546B8 | 40 82 00 08 */	bne .L_813546C0
/* 813546BC | 3B E0 00 01 */	li r31, 0x1
.L_813546C0:
/* 813546C0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813546C4 | 41 82 00 18 */	beq .L_813546DC
/* 813546C8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813546CC | 7F C4 F3 78 */	mr r4, r30
/* 813546D0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813546D4 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813546D8 | 48 20 6F A1 */	bl fn_8155B678
.L_813546DC:
/* 813546DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813546E0 | 7F E3 FB 78 */	mr r3, r31
/* 813546E4 | 48 2A 4E 2D */	bl _restgpr_28
/* 813546E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813546EC | 7C 08 03 A6 */	mtlr r0
/* 813546F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813546F4 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354654

# .text:0xC30C | 0x813546F8 | size: 0xC8
.fn iplNandSD_813546F8, local
/* 813546F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813546FC | 7C 08 02 A6 */	mflr r0
/* 81354700 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81354704 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81354708 | 48 2A 4D BD */	bl _savegpr_28
/* 8135470C | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81354710 | 7C 7C 1B 78 */	mr r28, r3
/* 81354714 | 3C A0 00 01 */	lis r5, 0x1
/* 81354718 | 7C 9D 23 78 */	mr r29, r4
/* 8135471C | 3C 66 00 02 */	addis r3, r6, 0x2
/* 81354720 | 3B E0 00 00 */	li r31, 0x0
/* 81354724 | 38 85 F0 C0 */	subi r4, r5, 0xf40
/* 81354728 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8135472C | 48 20 6F 3D */	bl fn_8155B668
/* 81354730 | 7C 7E 1B 78 */	mr r30, r3
/* 81354734 | 7F 83 E3 78 */	mr r3, r28
/* 81354738 | 7F A4 EB 78 */	mr r4, r29
/* 8135473C | 7F C5 F3 78 */	mr r5, r30
/* 81354740 | 4B FF AF 49 */	bl get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner
/* 81354744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354748 | 40 82 00 40 */	bne .L_81354788
/* 8135474C | 7F A4 EB 78 */	mr r4, r29
/* 81354750 | 38 60 00 00 */	li r3, 0x0
/* 81354754 | 4B FF 4B A9 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81354758 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135475C | 41 82 00 18 */	beq .L_81354774
/* 81354760 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81354764 | 7F 83 E3 78 */	mr r3, r28
/* 81354768 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8135476C | 4B FF D4 19 */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 81354770 | 48 00 00 14 */	b .L_81354784
.L_81354774:
/* 81354774 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81354778 | 7F 83 E3 78 */	mr r3, r28
/* 8135477C | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81354780 | 4B FF 67 E9 */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
.L_81354784:
/* 81354784 | 7C 7F 1B 78 */	mr r31, r3
.L_81354788:
/* 81354788 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8135478C | 41 82 00 18 */	beq .L_813547A4
/* 81354790 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81354794 | 7F C4 F3 78 */	mr r4, r30
/* 81354798 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135479C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813547A0 | 48 20 6E D9 */	bl fn_8155B678
.L_813547A4:
/* 813547A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813547A8 | 7F E3 FB 78 */	mr r3, r31
/* 813547AC | 48 2A 4D 65 */	bl _restgpr_28
/* 813547B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813547B4 | 7C 08 03 A6 */	mtlr r0
/* 813547B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813547BC | 4E 80 00 20 */	blr
.endfn iplNandSD_813546F8

# .text:0xC3D4 | 0x813547C0 | size: 0x80
.fn iplNandSD_813547C0, local
/* 813547C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813547C4 | 7C 08 02 A6 */	mflr r0
/* 813547C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813547CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813547D0 | 48 2A 4C F9 */	bl _savegpr_29
/* 813547D4 | 3B E0 00 00 */	li r31, 0x0
/* 813547D8 | 7C FE 3B 78 */	mr r30, r7
/* 813547DC | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 813547E0 | 7C 7D 1B 78 */	mr r29, r3
/* 813547E4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813547E8 | 4B FF D7 51 */	bl get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView
/* 813547EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813547F0 | 40 82 00 14 */	bne .L_81354804
/* 813547F4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813547F8 | A0 03 00 58 */	lhz r0, 0x58(r3)
/* 813547FC | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 81354800 | 48 00 00 08 */	b .L_81354808
.L_81354804:
/* 81354804 | B3 FE 00 00 */	sth r31, 0x0(r30)
.L_81354808:
/* 81354808 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8135480C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81354810 | 41 82 00 14 */	beq .L_81354824
/* 81354814 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81354818 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135481C | 80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81354820 | 48 20 61 E5 */	bl fn_8155AA04
.L_81354824:
/* 81354824 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81354828 | 38 60 00 00 */	li r3, 0x0
/* 8135482C | 48 2A 4C E9 */	bl _restgpr_29
/* 81354830 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81354834 | 7C 08 03 A6 */	mtlr r0
/* 81354838 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135483C | 4E 80 00 20 */	blr
.endfn iplNandSD_813547C0

# .text:0xC454 | 0x81354840 | size: 0xF4
.fn iplNandSD_81354840, local
/* 81354840 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81354844 | 7C 08 02 A6 */	mflr r0
/* 81354848 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8135484C | 39 61 00 70 */	addi r11, r1, 0x70
/* 81354850 | 48 2A 4C 71 */	bl _savegpr_27
/* 81354854 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81354858 | 7C 7B 1B 78 */	mr r27, r3
/* 8135485C | 7C 9C 23 78 */	mr r28, r4
/* 81354860 | 7C BD 2B 78 */	mr r29, r5
/* 81354864 | 3C 66 00 02 */	addis r3, r6, 0x2
/* 81354868 | 38 80 06 40 */	li r4, 0x640
/* 8135486C | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354870 | 48 20 6D F9 */	bl fn_8155B668
/* 81354874 | 7C 7F 1B 78 */	mr r31, r3
/* 81354878 | 7F 63 DB 78 */	mr r3, r27
/* 8135487C | 7F 84 E3 78 */	mr r4, r28
/* 81354880 | 7F E5 FB 78 */	mr r5, r31
/* 81354884 | 4B FF CD DD */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 81354888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135488C | 7C 7E 1B 78 */	mr r30, r3
/* 81354890 | 41 82 00 20 */	beq .L_813548B0
/* 81354894 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81354898 | 7F E4 FB 78 */	mr r4, r31
/* 8135489C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 813548A0 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813548A4 | 48 20 6D D5 */	bl fn_8155B678
/* 813548A8 | 38 60 FF FE */	li r3, -0x2
/* 813548AC | 48 00 00 70 */	b .L_8135491C
.L_813548B0:
/* 813548B0 | 7F 84 E3 78 */	mr r4, r28
/* 813548B4 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813548B8 | 38 60 00 00 */	li r3, 0x0
/* 813548BC | 4B FF 4B 79 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 813548C0 | 80 DF 00 08 */	lwz r6, 0x8(r31)
/* 813548C4 | 7F A5 EB 78 */	mr r5, r29
/* 813548C8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813548CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813548D0 | 38 06 00 3F */	addi r0, r6, 0x3f
/* 813548D4 | 38 C0 00 03 */	li r6, 0x3
/* 813548D8 | 54 07 00 32 */	clrrwi r7, r0, 6
/* 813548DC | 38 E7 06 40 */	addi r7, r7, 0x640
/* 813548E0 | 48 26 AE 55 */	bl fn_815BF734
/* 813548E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813548E8 | 7C 64 1B 78 */	mr r4, r3
/* 813548EC | 41 82 00 18 */	beq .L_81354904
/* 813548F0 | 3C 60 81 63 */	lis r3, lbl_81636585@ha
/* 813548F4 | 38 63 65 85 */	addi r3, r3, lbl_81636585@l
/* 813548F8 | 4C C6 31 82 */	crclr cr1eq
/* 813548FC | 48 1D 9D A5 */	bl OSReport
/* 81354900 | 3B C0 FF FE */	li r30, -0x2
.L_81354904:
/* 81354904 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81354908 | 7F E4 FB 78 */	mr r4, r31
/* 8135490C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81354910 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354914 | 48 20 6D 65 */	bl fn_8155B678
/* 81354918 | 7F C3 F3 78 */	mr r3, r30
.L_8135491C:
/* 8135491C | 39 61 00 70 */	addi r11, r1, 0x70
/* 81354920 | 48 2A 4B ED */	bl _restgpr_27
/* 81354924 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81354928 | 7C 08 03 A6 */	mtlr r0
/* 8135492C | 38 21 00 70 */	addi r1, r1, 0x70
/* 81354930 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354840

# .text:0xC548 | 0x81354934 | size: 0x184
.fn iplNandSD_81354934, local
/* 81354934 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 81354938 | 7C 08 02 A6 */	mflr r0
/* 8135493C | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 81354940 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 81354944 | 48 2A 4B 75 */	bl _savegpr_25
/* 81354948 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135494C | 7C 79 1B 78 */	mr r25, r3
/* 81354950 | 3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81354954 | 7C 9A 23 78 */	mr r26, r4
/* 81354958 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8135495C | 38 80 06 40 */	li r4, 0x640
/* 81354960 | 3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81354964 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354968 | 48 20 6D 01 */	bl fn_8155B668
/* 8135496C | 38 00 00 00 */	li r0, 0x0
/* 81354970 | 7C 7E 1B 78 */	mr r30, r3
/* 81354974 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81354978 | 7F 23 CB 78 */	mr r3, r25
/* 8135497C | 7F 44 D3 78 */	mr r4, r26
/* 81354980 | 7F C5 F3 78 */	mr r5, r30
/* 81354984 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81354988 | 4B FF CC D9 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8135498C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354990 | 7C 7B 1B 78 */	mr r27, r3
/* 81354994 | 40 82 00 F4 */	bne .L_81354A88
/* 81354998 | 83 BE 00 00 */	lwz r29, 0x0(r30)
/* 8135499C | 7F 23 CB 78 */	mr r3, r25
/* 813549A0 | 83 9E 00 04 */	lwz r28, 0x4(r30)
/* 813549A4 | 7F 44 D3 78 */	mr r4, r26
/* 813549A8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813549AC | 4B FF FE 95 */	bl iplNandSD_81354840
/* 813549B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813549B4 | 7C 7B 1B 78 */	mr r27, r3
/* 813549B8 | 40 82 00 D0 */	bne .L_81354A88
/* 813549BC | 7F 23 CB 78 */	mr r3, r25
/* 813549C0 | 7F 86 E3 78 */	mr r6, r28
/* 813549C4 | 7F A5 EB 78 */	mr r5, r29
/* 813549C8 | 38 E1 00 0A */	addi r7, r1, 0xa
/* 813549CC | 4B FF FD F5 */	bl iplNandSD_813547C0
/* 813549D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813549D4 | 7C 7B 1B 78 */	mr r27, r3
/* 813549D8 | 40 82 00 B0 */	bne .L_81354A88
/* 813549DC | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 813549E0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 813549E4 | 54 66 C4 3E */	extrwi r6, r3, 16, 8
/* 813549E8 | 54 05 C4 3E */	extrwi r5, r0, 16, 8
/* 813549EC | B0 C1 00 0A */	sth r6, 0xa(r1)
/* 813549F0 | 7C 06 28 40 */	cmplw r6, r5
/* 813549F4 | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813549F8 | 40 81 00 1C */	ble .L_81354A14
/* 813549FC | 7F 44 D3 78 */	mr r4, r26
/* 81354A00 | 38 7F 2E C5 */	addi r3, r31, 0x2ec5
/* 81354A04 | 4C C6 31 82 */	crclr cr1eq
/* 81354A08 | 48 1D 9C 99 */	bl OSReport
/* 81354A0C | 3B 60 FF F0 */	li r27, -0x10
/* 81354A10 | 48 00 00 78 */	b .L_81354A88
.L_81354A14:
/* 81354A14 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81354A18 | 7F 23 CB 78 */	mr r3, r25
/* 81354A1C | 7F 44 D3 78 */	mr r4, r26
/* 81354A20 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81354A24 | 38 06 00 3F */	addi r0, r6, 0x3f
/* 81354A28 | 54 06 00 32 */	clrrwi r6, r0, 6
/* 81354A2C | 4B FF AE 95 */	bl get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader
/* 81354A30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354A34 | 7C 7B 1B 78 */	mr r27, r3
/* 81354A38 | 40 82 00 50 */	bne .L_81354A88
/* 81354A3C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81354A40 | 48 26 92 35 */	bl ES_GetDeviceId
/* 81354A44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354A48 | 7C 7B 1B 78 */	mr r27, r3
/* 81354A4C | 41 82 00 1C */	beq .L_81354A68
/* 81354A50 | 7F 64 DB 78 */	mr r4, r27
/* 81354A54 | 38 7F 2F 00 */	addi r3, r31, 0x2f00
/* 81354A58 | 4C C6 31 82 */	crclr cr1eq
/* 81354A5C | 48 1D 9C 45 */	bl OSReport
/* 81354A60 | 3B 60 FF FE */	li r27, -0x2
/* 81354A64 | 48 00 00 24 */	b .L_81354A88
.L_81354A68:
/* 81354A68 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81354A6C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 81354A70 | 7C 04 28 40 */	cmplw r4, r5
/* 81354A74 | 41 82 00 14 */	beq .L_81354A88
/* 81354A78 | 38 7F 2F 29 */	addi r3, r31, 0x2f29
/* 81354A7C | 4C C6 31 82 */	crclr cr1eq
/* 81354A80 | 48 1D 9C 21 */	bl OSReport
/* 81354A84 | 3B 60 FF F1 */	li r27, -0xf
.L_81354A88:
/* 81354A88 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81354A8C | 7F C4 F3 78 */	mr r4, r30
/* 81354A90 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 81354A94 | 38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354A98 | 48 20 6B E1 */	bl fn_8155B678
/* 81354A9C | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 81354AA0 | 7F 63 DB 78 */	mr r3, r27
/* 81354AA4 | 48 2A 4A 61 */	bl _restgpr_25
/* 81354AA8 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 81354AAC | 7C 08 03 A6 */	mtlr r0
/* 81354AB0 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 81354AB4 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354934

# .text:0xC6CC | 0x81354AB8 | size: 0x14
.fn iplNandSD_81354AB8, local
/* 81354AB8 | 38 00 00 00 */	li r0, 0x0
/* 81354ABC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81354AC0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81354AC4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81354AC8 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354AB8

# .text:0xC6E0 | 0x81354ACC | size: 0x5C
.fn iplNandSD_81354ACC, local
/* 81354ACC | 38 06 FF FF */	subi r0, r6, 0x1
/* 81354AD0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81354AD4 | 54 A9 F0 BE */	srwi r9, r5, 2
/* 81354AD8 | 39 00 00 00 */	li r8, 0x0
/* 81354ADC | 7C 09 03 A6 */	mtctr r0
/* 81354AE0 | 28 00 00 00 */	cmplwi r0, 0x0
/* 81354AE4 | 40 81 00 28 */	ble .L_81354B0C
.L_81354AE8:
/* 81354AE8 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81354AEC | 7C E9 31 D6 */	mullw r7, r9, r6
/* 81354AF0 | 7C C9 41 D6 */	mullw r6, r9, r8
/* 81354AF4 | 39 08 00 01 */	addi r8, r8, 0x1
/* 81354AF8 | 54 E7 10 3A */	slwi r7, r7, 2
/* 81354AFC | 7C E4 3A 14 */	add r7, r4, r7
/* 81354B00 | 54 C6 10 3A */	slwi r6, r6, 2
/* 81354B04 | 7C E4 31 2E */	stwx r7, r4, r6
/* 81354B08 | 42 00 FF E0 */	bdnz .L_81354AE8
.L_81354B0C:
/* 81354B0C | 7C 09 01 D6 */	mullw r0, r9, r0
/* 81354B10 | 38 C0 00 00 */	li r6, 0x0
/* 81354B14 | 54 00 10 3A */	slwi r0, r0, 2
/* 81354B18 | 7C C4 01 2E */	stwx r6, r4, r0
/* 81354B1C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81354B20 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81354B24 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354ACC

# .text:0xC73C | 0x81354B28 | size: 0x24
.fn iplNandSD_81354B28, local
/* 81354B28 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81354B2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81354B30 | 40 82 00 0C */	bne .L_81354B3C
/* 81354B34 | 38 60 00 00 */	li r3, 0x0
/* 81354B38 | 4E 80 00 20 */	blr
.L_81354B3C:
/* 81354B3C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 81354B40 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81354B44 | 7C 83 23 78 */	mr r3, r4
/* 81354B48 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354B28

# .text:0xC760 | 0x81354B4C | size: 0x40
.fn iplNandSD_81354B4C, local
/* 81354B4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354B50 | 7C 08 02 A6 */	mflr r0
/* 81354B54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354B58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354B5C | 7C 7F 1B 78 */	mr r31, r3
/* 81354B60 | 4B FF FF 59 */	bl iplNandSD_81354AB8
/* 81354B64 | 38 00 00 00 */	li r0, 0x0
/* 81354B68 | 7F E3 FB 78 */	mr r3, r31
/* 81354B6C | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81354B70 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81354B74 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81354B78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354B7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354B80 | 7C 08 03 A6 */	mtlr r0
/* 81354B84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354B88 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354B4C

# .text:0xC7A0 | 0x81354B8C | size: 0x4C
.fn iplNandSD_81354B8C, local
/* 81354B8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354B90 | 7C 08 02 A6 */	mflr r0
/* 81354B94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354B98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354B9C | 7C BF 2B 78 */	mr r31, r5
/* 81354BA0 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81354BA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81354BA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81354BAC | 4B FF FF 21 */	bl iplNandSD_81354ACC
/* 81354BB0 | 38 00 00 00 */	li r0, 0x0
/* 81354BB4 | 93 FE 00 10 */	stw r31, 0x10(r30)
/* 81354BB8 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 81354BBC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81354BC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354BC4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81354BC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354BCC | 7C 08 03 A6 */	mtlr r0
/* 81354BD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354BD4 | 4E 80 00 20 */	blr
.endfn iplNandSD_81354B8C

# .text:0xC7EC | 0x81354BD8 | size: 0x78
.fn iplNandSD_81354BD8, local
/* 81354BD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81354BDC | 7C 08 02 A6 */	mflr r0
/* 81354BE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81354BE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81354BE8 | 48 2A 48 E1 */	bl _savegpr_29
/* 81354BEC | 7C 7D 1B 78 */	mr r29, r3
/* 81354BF0 | 7C 9E 23 78 */	mr r30, r4
/* 81354BF4 | 4B FF FF 35 */	bl iplNandSD_81354B28
/* 81354BF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354BFC | 7C 7F 1B 78 */	mr r31, r3
/* 81354C00 | 41 82 00 34 */	beq .L_81354C34
/* 81354C04 | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 81354C08 | 7F C4 F3 78 */	mr r4, r30
/* 81354C0C | 38 63 00 04 */	addi r3, r3, 0x4
/* 81354C10 | 4B FD B6 21 */	bl memcpy
/* 81354C14 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 81354C18 | 38 60 00 01 */	li r3, 0x1
/* 81354C1C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81354C20 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 81354C24 | 93 FD 00 0C */	stw r31, 0xc(r29)
/* 81354C28 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81354C2C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81354C30 | 48 00 00 08 */	b .L_81354C38
.L_81354C34:
/* 81354C34 | 38 60 00 00 */	li r3, 0x0
.L_81354C38:
/* 81354C38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81354C3C | 48 2A 48 D9 */	bl _restgpr_29
/* 81354C40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81354C44 | 7C 08 03 A6 */	mtlr r0
/* 81354C48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81354C4C | 4E 80 00 20 */	blr
.endfn iplNandSD_81354BD8

# .text:0xC864 | 0x81354C50 | size: 0x80
.fn iplNandSD_81354C50, local
/* 81354C50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354C54 | 7C 08 02 A6 */	mflr r0
/* 81354C58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354C5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354C60 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81354C64 | 7C 7E 1B 78 */	mr r30, r3
/* 81354C68 | 83 E3 00 0C */	lwz r31, 0xc(r3)
/* 81354C6C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81354C70 | 41 82 00 44 */	beq .L_81354CB4
/* 81354C74 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81354C78 | 41 82 00 14 */	beq .L_81354C8C
/* 81354C7C | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 81354C80 | 7C 83 23 78 */	mr r3, r4
/* 81354C84 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 81354C88 | 4B FD B5 A9 */	bl memcpy
.L_81354C8C:
/* 81354C8C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354C90 | 38 60 00 01 */	li r3, 0x1
/* 81354C94 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81354C98 | 90 9E 00 0C */	stw r4, 0xc(r30)
/* 81354C9C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81354CA0 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 81354CA4 | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 81354CA8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81354CAC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81354CB0 | 48 00 00 08 */	b .L_81354CB8
.L_81354CB4:
/* 81354CB4 | 38 60 00 00 */	li r3, 0x0
.L_81354CB8:
/* 81354CB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354CBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354CC0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81354CC4 | 7C 08 03 A6 */	mtlr r0
/* 81354CC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354CCC | 4E 80 00 20 */	blr
.endfn iplNandSD_81354C50

# 0x8160D638..0x8160D668 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x8160D638 | size: 0x10
# ipl::NandSDWorker::c_es_encrypt_iv
.obj c_es_encrypt_iv__Q23ipl12NandSDWorker, global
	.4byte 0x216712E6
	.4byte 0xAA1F689F
	.4byte 0x95C5A223
	.4byte 0x24DC6A98
.endobj c_es_encrypt_iv__Q23ipl12NandSDWorker

# .rodata:0x10 | 0x8160D648 | size: 0x10
# ipl::NandSDWorker::c_md5_secret_key
.obj c_md5_secret_key__Q23ipl12NandSDWorker, global
	.4byte 0x0E653781
	.4byte 0x99BE4517
	.4byte 0xAB06EC22
	.4byte 0x451A5793
.endobj c_md5_secret_key__Q23ipl12NandSDWorker

# .rodata:0x20 | 0x8160D658 | size: 0x10
.obj lbl_8160D658, global
	.4byte 0x00000000
	.4byte lbl_816373CA
	.4byte lbl_816373DD
	.4byte lbl_816373EA
.endobj lbl_8160D658

# 0x81635A88..0x816389E8 | size: 0x2F60
.data
.balign 8

# .data:0x0 | 0x81635A88 | size: 0xB
.obj lbl_81635A88, global
	.string "banner.bin"
.endobj lbl_81635A88

# .data:0xB | 0x81635A93 | size: 0xB
.obj lbl_81635A93, global
	.string "notransfer"
.endobj lbl_81635A93

# .data:0x16 | 0x81635A9E | size: 0x14
.obj lbl_81635A9E, global
	.string "/private/wii/title/"
.endobj lbl_81635A9E

# .data:0x2A | 0x81635AB2 | size: 0x9
.obj lbl_81635AB2, global
	.string "data.bin"
.endobj lbl_81635AB2

# .data:0x33 | 0x81635ABB | size: 0xC
.obj lbl_81635ABB, global
	.string "content.bin"
.endobj lbl_81635ABB

# .data:0x3F | 0x81635AC7 | size: 0x14
.obj lbl_81635AC7, global
	.string "/shared2/succession"
.endobj lbl_81635AC7

# .data:0x53 | 0x81635ADB | size: 0x20
.obj lbl_81635ADB, global
	.string "/shared2/succession/transfer.id"
.endobj lbl_81635ADB

# .data:0x73 | 0x81635AFB | size: 0x10
.obj lbl_81635AFB, global
	.string "/tmp/nandsdwork"
.endobj lbl_81635AFB

# .data:0x83 | 0x81635B0B | size: 0xD
.obj lbl_81635B0B, global
	.4byte 0x73756363
	.4byte 0x65737369
	.4byte 0x6F6E2F00
	.byte 0x00
.endobj lbl_81635B0B

# .data:0x90 | 0x81635B18 | size: 0x14
# ipl::NandSDWorker::c_ignore_list_for_shared2
.obj c_ignore_list_for_shared2__Q23ipl12NandSDWorker, global
	.4byte lbl_816961C4
	.4byte lbl_816961CA
	.4byte lbl_81635B0B
	.4byte lbl_816961D1
	.4byte lbl_816961D7
.endobj c_ignore_list_for_shared2__Q23ipl12NandSDWorker

# .data:0xA4 | 0x81635B2C | size: 0xC
.obj lbl_81635B2C, global
	.string "setting.txt"
.endobj lbl_81635B2C

# .data:0xB0 | 0x81635B38 | size: 0xA
.obj lbl_81635B38, global
	.string "cache.dat"
.endobj lbl_81635B38

# .data:0xBA | 0x81635B42 | size: 0x1E
.obj lbl_81635B42, global
	.string "/title/00000001/00000002/data"
.endobj lbl_81635B42

# .data:0xD8 | 0x81635B60 | size: 0x22
.obj lbl_81635B60, global
	.string "NandSDWorker: num FAT cache : %d\n"
.endobj lbl_81635B60

# .data:0xFA | 0x81635B82 | size: 0x22
.obj lbl_81635B82, global
	.string "NandSDWorker: num Data cache: %d\n"
.endobj lbl_81635B82

# .data:0x11C | 0x81635BA4 | size: 0x6A
.obj lbl_81635BA4, global
	.4byte 0x2F746974
	.4byte 0x6C652F25
	.4byte 0x3038782F
	.4byte 0x25303878
	.4byte 0x2F646174
	.4byte 0x61002F74
	.4byte 0x69746C65
	.4byte 0x2F253038
	.4byte 0x782F2530
	.4byte 0x3878002F
	.4byte 0x7469746C
	.4byte 0x652F2530
	.4byte 0x38782F25
	.4byte 0x3038782F
	.4byte 0x636F6E74
	.4byte 0x656E7400
	.4byte 0x2F6D6574
	.4byte 0x612F2530
	.4byte 0x38782F25
	.4byte 0x3038782F
	.4byte 0x7469746C
	.4byte 0x652E6D65
	.4byte 0x74002F6D
	.4byte 0x6574612F
	.4byte 0x25303878
	.4byte 0x2F253038
	.2byte 0x7800
.endobj lbl_81635BA4

# .data:0x186 | 0x81635C0E | size: 0x21
.obj lbl_81635C0E, global
	.string "/private/wii/title/%08x/data.bin"
.endobj lbl_81635C0E

# .data:0x1A7 | 0x81635C2F | size: 0x25
.obj lbl_81635C2F, global
	.string "/private/wii/title/%c%c%c%c/data.bin"
.endobj lbl_81635C2F

# .data:0x1CC | 0x81635C54 | size: 0xC7
.obj lbl_81635C54, global
	.4byte 0x2F707269
	.4byte 0x76617465
	.4byte 0x2F776969
	.4byte 0x2F746974
	.4byte 0x6C652F25
	.4byte 0x63256325
	.4byte 0x6325632F
	.4byte 0x636F6E74
	.4byte 0x656E742E
	.4byte 0x62696E00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206465
	.4byte 0x6C657465
	.4byte 0x205B2573
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x205B2573
	.4byte 0x5D206E6F
	.4byte 0x20657869
	.4byte 0x7374730A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4444
	.4byte 0x656C6574
	.4byte 0x65202573
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x756E6D6F
	.4byte 0x756E7420
	.4byte 0x7364205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2064
	.4byte 0x65746163
	.4byte 0x68207364
	.4byte 0x205B2564
	.byte 0x5D, 0x0A, 0x00
.endobj lbl_81635C54

# .data:0x293 | 0x81635D1B | size: 0x95
.obj lbl_81635D1B, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204553
	.4byte 0x4D697363
	.4byte 0x3A3A4465
	.4byte 0x6C657465
	.4byte 0x5469746C
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x206E616E
	.4byte 0x64207573
	.4byte 0x65722061
	.4byte 0x72656120
	.4byte 0x6C696D69
	.4byte 0x74206F76
	.4byte 0x65722E20
	.4byte 0x72657475
	.4byte 0x726E2030
	.4byte 0x2E0A0069
	.4byte 0x706C4E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65722E63
	.4byte 0x7070004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20737461
	.4byte 0x636B206F
	.4byte 0x76657221
	.4byte 0x0A000000
	.byte 0x00
.endobj lbl_81635D1B

# .data:0x328 | 0x81635DB0 | size: 0xD0
.obj jumptable_81635DB0, local
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349E04
	.rel run__Q23ipl12NandSDWorkerFv, .L_8134961C
	.rel run__Q23ipl12NandSDWorkerFv, .L_813496D4
	.rel run__Q23ipl12NandSDWorkerFv, .L_813496E0
	.rel run__Q23ipl12NandSDWorkerFv, .L_8134971C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349728
	.rel run__Q23ipl12NandSDWorkerFv, .L_813497AC
	.rel run__Q23ipl12NandSDWorkerFv, .L_813497F4
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349854
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349860
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349978
	.rel run__Q23ipl12NandSDWorkerFv, .L_8134999C
	.rel run__Q23ipl12NandSDWorkerFv, .L_813499B4
	.rel run__Q23ipl12NandSDWorkerFv, .L_813499C0
	.rel run__Q23ipl12NandSDWorkerFv, .L_813499F8
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349A04
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349A10
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349A1C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349B84
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349B9C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349A7C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349B58
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349B64
	.rel run__Q23ipl12NandSDWorkerFv, .L_813497D0
	.rel run__Q23ipl12NandSDWorkerFv, .L_813499A8
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349BCC
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349800
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349BF0
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349BFC
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349C28
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349C60
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349C94
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349CBC
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349CE0
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349D18
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349D50
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349D78
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349DB4
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349DC0
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349D9C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349DA8
	.rel run__Q23ipl12NandSDWorkerFv, .L_8134980C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349818
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349824
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349830
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349B90
	.rel run__Q23ipl12NandSDWorkerFv, .L_8134983C
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349B74
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349AF0
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349848
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349DCC
	.rel run__Q23ipl12NandSDWorkerFv, .L_81349DE4
.endobj jumptable_81635DB0

# .data:0x3F8 | 0x81635E80 | size: 0x54B
.obj lbl_81635E80, local
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206E61
	.4byte 0x6E642061
	.4byte 0x7070206E
	.4byte 0x756D203D
	.4byte 0x2025640A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A206E
	.4byte 0x616E6420
	.4byte 0x73617665
	.4byte 0x206E756D
	.4byte 0x203D2025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44507269
	.4byte 0x76617465
	.4byte 0x44656C65
	.4byte 0x74652025
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2063616E
	.4byte 0x6E6F7420
	.4byte 0x6D616B65
	.4byte 0x20257320
	.4byte 0x62656361
	.4byte 0x75736520
	.4byte 0x6F662073
	.4byte 0x79737465
	.4byte 0x6D206172
	.4byte 0x65612073
	.4byte 0x686F7274
	.4byte 0x6167652E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E414E44
	.4byte 0x50726976
	.4byte 0x61746543
	.4byte 0x72656174
	.4byte 0x65446972
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4450
	.4byte 0x72697661
	.4byte 0x74654372
	.4byte 0x65617465
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4450
	.4byte 0x72697661
	.4byte 0x74654F70
	.4byte 0x656E2025
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44577269
	.4byte 0x74652025
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44436C6F
	.4byte 0x73652025
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20257320
	.4byte 0x63726561
	.4byte 0x7465642E
	.4byte 0x5B253032
	.4byte 0x78253032
	.4byte 0x78253032
	.4byte 0x78253032
	.4byte 0x78253032
	.4byte 0x78253032
	.4byte 0x785D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A202573
	.4byte 0x20616C72
	.4byte 0x65616479
	.4byte 0x20657869
	.4byte 0x73742E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2063
	.4byte 0x6C65616E
	.4byte 0x696E6720
	.4byte 0x6475706C
	.4byte 0x69636174
	.4byte 0x6564206E
	.4byte 0x616E6420
	.4byte 0x6170702E
	.4byte 0x2E2E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206465
	.4byte 0x6C657465
	.4byte 0x20746963
	.4byte 0x6B657420
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2064656C
	.4byte 0x65746520
	.4byte 0x7469746C
	.4byte 0x65203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x636F6E74
	.4byte 0x656E7420
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2064
	.4byte 0x656C6574
	.4byte 0x65207469
	.4byte 0x746C6520
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78206475
	.4byte 0x706C6963
	.4byte 0x61746564
	.4byte 0x20627920
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x782E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A20636C
	.4byte 0x65616E69
	.4byte 0x6E672070
	.4byte 0x61727469
	.4byte 0x616C206E
	.4byte 0x616E6420
	.4byte 0x6170702E
	.4byte 0x2E2E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206465
	.4byte 0x6C657465
	.4byte 0x20746974
	.4byte 0x6C652030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x636C6561
	.4byte 0x6E20656D
	.4byte 0x70747920
	.4byte 0x7469746C
	.4byte 0x65202530
	.4byte 0x31366C6C
	.4byte 0x780A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20636C65
	.4byte 0x616E696E
	.4byte 0x67207061
	.4byte 0x72746961
	.4byte 0x6C206E61
	.4byte 0x6E642073
	.4byte 0x6176652E
	.4byte 0x2E2E0A00
	.4byte 0x2F6E6F65
	.4byte 0x72617365
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2069
	.4byte 0x676E6F72
	.4byte 0x65206E61
	.4byte 0x6E642073
	.4byte 0x61766520
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78206265
	.4byte 0x63617365
	.4byte 0x206F6620
	.4byte 0x6E6F6572
	.4byte 0x6173650A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2063
	.4byte 0x6C65616E
	.4byte 0x20646174
	.4byte 0x61207469
	.4byte 0x746C6520
	.4byte 0x25303136
	.4byte 0x6C6C780A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2061
	.4byte 0x74746163
	.4byte 0x68205344
	.4byte 0x20636172
	.4byte 0x64206472
	.4byte 0x69766520
	.4byte 0x3D202563
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A3A
	.4byte 0x2042726F
	.4byte 0x6B656E20
	.4byte 0x4D656469
	.4byte 0x610A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x3A20496C
	.4byte 0x6C656761
	.4byte 0x6C204D65
	.4byte 0x6469610A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A3A20
	.4byte 0x6E6F7420
	.4byte 0x696E7365
	.4byte 0x72746564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x46414174
	.4byte 0x74616368
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x666F7263
	.4byte 0x6520756E
	.4byte 0x6D6F756E
	.4byte 0x74207364
	.4byte 0x20626566
	.4byte 0x6F726520
	.4byte 0x6D6F756E
	.4byte 0x74696E67
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x61747461
	.4byte 0x63682073
	.4byte 0x64205B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206D6F
	.4byte 0x756E7420
	.4byte 0x53442063
	.4byte 0x61726420
	.4byte 0x64726976
	.4byte 0x65203D20
	.4byte 0x25630A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A205344
	.4byte 0x20636172
	.4byte 0x64206973
	.4byte 0x20777269
	.4byte 0x74652070
	.4byte 0x726F7465
	.4byte 0x63746564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x3A207374
	.4byte 0x6174203A
	.4byte 0x20253038
	.byte 0x78, 0x0A, 0x00
.endobj lbl_81635E80

# .data:0x943 | 0x816363CB | size: 0x163
.obj lbl_816363CB, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204E41
	.4byte 0x4E444765
	.4byte 0x74547970
	.4byte 0x65202573
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25642F
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x206F7065
	.4byte 0x6E202573
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x746F2067
	.4byte 0x6574206C
	.4byte 0x656E6774
	.4byte 0x68202573
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2062616E
	.4byte 0x6E657220
	.4byte 0x66696C65
	.4byte 0x20257320
	.4byte 0x69732074
	.4byte 0x6F6F2073
	.4byte 0x6D616C6C
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2062616E
	.4byte 0x6E657220
	.4byte 0x66696C65
	.4byte 0x20257320
	.4byte 0x69732074
	.4byte 0x6F6F206C
	.4byte 0x61726765
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x746F2072
	.4byte 0x65616420
	.4byte 0x2573205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x20636C6F
	.4byte 0x73652025
	.4byte 0x73205B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206261
	.4byte 0x6E6E6572
	.4byte 0x2066696C
	.4byte 0x65202573
	.4byte 0x20736967
	.4byte 0x6E617475
	.4byte 0x72652069
	.4byte 0x73206E6F
	.4byte 0x7420636F
	.4byte 0x72726563
	.byte 0x74, 0x0A, 0x00
.endobj lbl_816363CB

# .data:0xAA6 | 0x8163652E | size: 0x15
.obj lbl_8163652E, global
	.string "/private/wii/loc.dat"
.endobj lbl_8163652E

# .data:0xABB | 0x81636543 | size: 0x42
.obj lbl_81636543, global
	.4byte 0x2F707269
	.4byte 0x76617465
	.4byte 0x2F776969
	.4byte 0x2F6C6F63
	.4byte 0x2E62616B
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F4765
	.4byte 0x74546963
	.4byte 0x6B657456
	.4byte 0x69657773
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x5B25645D
	.2byte 0x0A00
.endobj lbl_81636543

# .data:0xAFD | 0x81636585 | size: 0x170
.obj lbl_81636585, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A205741
	.4byte 0x44476574
	.4byte 0x5469746C
	.4byte 0x65566572
	.4byte 0x73696F6E
	.4byte 0x45782066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207469
	.4byte 0x746C6569
	.4byte 0x64202530
	.4byte 0x31366C6C
	.4byte 0x7820696E
	.4byte 0x20776164
	.4byte 0x20697320
	.4byte 0x64696666
	.4byte 0x6572656E
	.4byte 0x74206672
	.4byte 0x6F6D2025
	.4byte 0x3031366C
	.4byte 0x6C782069
	.4byte 0x6E206261
	.4byte 0x6E6E6572
	.4byte 0x2025732E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x57414449
	.4byte 0x6D706F72
	.4byte 0x74476574
	.4byte 0x426C6F63
	.4byte 0x6B732066
	.4byte 0x61696C65
	.4byte 0x642C206E
	.4byte 0x6F74206F
	.4byte 0x72696769
	.4byte 0x6E616C20
	.4byte 0x5769692E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x57414449
	.4byte 0x6D706F72
	.4byte 0x74476574
	.4byte 0x426C6F63
	.4byte 0x6B732066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207469
	.4byte 0x746C6569
	.4byte 0x64203D20
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78206973
	.4byte 0x20616C72
	.4byte 0x65616479
	.4byte 0x20696E20
	.4byte 0x6E616E64
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20746974
	.4byte 0x6C656964
	.4byte 0x20253031
	.4byte 0x366C6C78
	.4byte 0x20686173
	.4byte 0x20686967
	.4byte 0x68657220
	.4byte 0x76657273
	.4byte 0x696F6E20
	.4byte 0x7468616E
	.4byte 0x20746861
	.4byte 0x74206F66
	.4byte 0x20736420
	.4byte 0x28256420
	.4byte 0x76732025
	.4byte 0x64290A00
.endobj lbl_81636585

# .data:0xC6D | 0x816366F5 | size: 0x25
.obj lbl_816366F5, global
	.string "NandSDWorker: WADBackup failed.[%d]\n"
.endobj lbl_816366F5

# .data:0xC92 | 0x8163671A | size: 0xAE
.obj lbl_8163671A, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A20746F
	.4byte 0x74616C20
	.4byte 0x6261636B
	.4byte 0x75702073
	.4byte 0x697A6520
	.4byte 0x5B25645D
	.4byte 0x20697320
	.4byte 0x746F6F20
	.4byte 0x6C617267
	.4byte 0x6520666F
	.4byte 0x72205344
	.4byte 0x20636172
	.4byte 0x642E200A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4453
	.4byte 0x65637265
	.4byte 0x74476574
	.4byte 0x55736167
	.4byte 0x655B2573
	.4byte 0x5D206661
	.4byte 0x696C6564
	.4byte 0x2025640A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A206E
	.4byte 0x616E6420
	.4byte 0x61707020
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78207369
	.4byte 0x7A652069
	.4byte 0x73205B25
	.4byte 0x645D2069
	.4byte 0x6E6F6465
	.4byte 0x20697320
	.4byte 0x5B25645D
	.2byte 0x0A00
.endobj lbl_8163671A

# .data:0xD40 | 0x816367C8 | size: 0xE0
.obj lbl_816367C8, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207469
	.4byte 0x746C6569
	.4byte 0x6420256C
	.4byte 0x6C782069
	.4byte 0x6E207761
	.4byte 0x64206973
	.4byte 0x20646966
	.4byte 0x66657265
	.4byte 0x6E742066
	.4byte 0x726F6D20
	.4byte 0x256C6C78
	.4byte 0x20696E20
	.4byte 0x62616E6E
	.4byte 0x65722025
	.4byte 0x732E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x67657420
	.4byte 0x6D657461
	.4byte 0x2066696C
	.4byte 0x65207369
	.4byte 0x7A652E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2073
	.4byte 0x61766520
	.4byte 0x73697A65
	.4byte 0x20756E64
	.4byte 0x65722025
	.4byte 0x73206973
	.4byte 0x205B2564
	.4byte 0x5D203A20
	.4byte 0x5B696E6F
	.4byte 0x6465733A
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A206E
	.4byte 0x616E6420
	.4byte 0x61707020
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78207369
	.4byte 0x7A652069
	.4byte 0x73205B25
	.4byte 0x645D0A00
.endobj lbl_816367C8

# .data:0xE20 | 0x816368A8 | size: 0x21
.obj lbl_816368A8, global
	.string "NandSDWorker: file %s size = %d\n"
.endobj lbl_816368A8

# .data:0xE41 | 0x816368C9 | size: 0x1F
.obj lbl_816368C9, global
	.string "NandSDWorker: FAFstat failed.\n"
.endobj lbl_816368C9

# .data:0xE60 | 0x816368E8 | size: 0x1E
.obj lbl_816368E8, global
	.string "NandSDWorker: delete file %s\n"
.endobj lbl_816368E8

# .data:0xE7E | 0x81636906 | size: 0x450
.obj lbl_81636906, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204641
	.4byte 0x52656D6F
	.4byte 0x76652066
	.4byte 0x61696C65
	.4byte 0x642E0A00
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2073
	.4byte 0x75636365
	.4byte 0x73736675
	.4byte 0x6C6C7920
	.4byte 0x696E6974
	.4byte 0x69616C69
	.4byte 0x7A652075
	.4byte 0x6E646572
	.4byte 0x202F7368
	.4byte 0x61726564
	.4byte 0x322E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207375
	.4byte 0x63636573
	.4byte 0x7366756C
	.4byte 0x6C792069
	.4byte 0x6E697469
	.4byte 0x616C697A
	.4byte 0x6520756E
	.4byte 0x64657220
	.4byte 0x2F6D6574
	.4byte 0x612E0A00
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F737973
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4450
	.4byte 0x72697661
	.4byte 0x74654465
	.4byte 0x6C657465
	.4byte 0x202F7368
	.4byte 0x61726564
	.4byte 0x322F7379
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20737563
	.4byte 0x63657373
	.4byte 0x66756C6C
	.4byte 0x79206465
	.4byte 0x6C657465
	.4byte 0x202F7368
	.4byte 0x61726564
	.4byte 0x322F7379
	.4byte 0x732E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A205343
	.4byte 0x53657442
	.4byte 0x74446576
	.4byte 0x69636549
	.4byte 0x6E666F41
	.4byte 0x72726179
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x53434765
	.4byte 0x74427444
	.4byte 0x65766963
	.4byte 0x65496E66
	.4byte 0x6F417272
	.4byte 0x61792066
	.4byte 0x61696C65
	.4byte 0x642E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A205343
	.4byte 0x53657443
	.4byte 0x6F6E6669
	.4byte 0x67446F6E
	.4byte 0x65466C61
	.4byte 0x67206661
	.4byte 0x696C6564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20534353
	.4byte 0x6574436F
	.4byte 0x6E666967
	.4byte 0x446F6E65
	.4byte 0x466C6167
	.4byte 0x32206661
	.4byte 0x696C6564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20737563
	.4byte 0x63657373
	.4byte 0x66756C6C
	.4byte 0x7920696E
	.4byte 0x69746961
	.4byte 0x6C697A65
	.4byte 0x2053432E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x5343466C
	.4byte 0x75736820
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x57433234
	.4byte 0x496E6974
	.4byte 0x46696C65
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x20776974
	.4byte 0x68204E41
	.4byte 0x4E442063
	.4byte 0x75727275
	.4byte 0x70742E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2073
	.4byte 0x75636365
	.4byte 0x73736675
	.4byte 0x6C6C7920
	.4byte 0x696E6974
	.4byte 0x69616C69
	.4byte 0x7A65204E
	.4byte 0x57433234
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E5743
	.4byte 0x3234496E
	.4byte 0x69744669
	.4byte 0x6C657320
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x002F6D65
	.4byte 0x74612F30
	.4byte 0x30303130
	.4byte 0x30303000
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204E41
	.4byte 0x4E445072
	.4byte 0x69766174
	.4byte 0x6544656C
	.4byte 0x65746520
	.4byte 0x2F6D6574
	.4byte 0x612F3030
	.4byte 0x30313030
	.4byte 0x30302066
	.4byte 0x61696C65
	.4byte 0x64205B25
	.4byte 0x645D0A00
	.4byte 0x2F6D6574
	.4byte 0x612F3030
	.4byte 0x30313030
	.4byte 0x3031004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44507269
	.4byte 0x76617465
	.4byte 0x44656C65
	.4byte 0x7465202F
	.4byte 0x6D657461
	.4byte 0x2F303030
	.4byte 0x31303030
	.4byte 0x31206661
	.4byte 0x696C6564
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x4F776E65
	.4byte 0x64546974
	.4byte 0x6C657320
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2064
	.4byte 0x656C6574
	.4byte 0x65207469
	.4byte 0x636B6574
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782066
	.4byte 0x61696C65
	.4byte 0x64205B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204553
	.4byte 0x4D697363
	.4byte 0x3A3A4465
	.4byte 0x6C657465
	.4byte 0x5469746C
	.4byte 0x65203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2064
	.4byte 0x656C6574
	.4byte 0x65207469
	.4byte 0x746C6520
	.4byte 0x5B307825
	.4byte 0x3031366C
	.4byte 0x6C785D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F4465
	.4byte 0x6C657465
	.4byte 0x5469636B
	.4byte 0x65742066
	.4byte 0x61696C65
	.4byte 0x64205B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206465
	.4byte 0x6C657465
	.4byte 0x20746963
	.4byte 0x6B657420
	.4byte 0x5B232564
	.4byte 0x5D20696E
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C780A00
.endobj lbl_81636906

# .data:0x12CE | 0x81636D56 | size: 0x64E
.obj lbl_81636D56, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204553
	.4byte 0x4D697363
	.4byte 0x3A3A4368
	.4byte 0x65636B53
	.4byte 0x61666544
	.4byte 0x656C6574
	.4byte 0x65546974
	.4byte 0x6C652066
	.4byte 0x61696C65
	.4byte 0x64205B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204553
	.4byte 0x5F4C6973
	.4byte 0x74546974
	.4byte 0x6C65734F
	.4byte 0x6E436172
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x205B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x746F2064
	.4byte 0x656C6574
	.4byte 0x65207769
	.4byte 0x69206D65
	.4byte 0x6E752064
	.4byte 0x6174612E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x73756363
	.4byte 0x65737366
	.4byte 0x756C6C79
	.4byte 0x20696E69
	.4byte 0x7469616C
	.4byte 0x697A6520
	.4byte 0x77696920
	.4byte 0x6D656E75
	.4byte 0x20646174
	.4byte 0x612E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207375
	.4byte 0x63636573
	.4byte 0x7366756C
	.4byte 0x6C792064
	.4byte 0x656C6574
	.4byte 0x65206170
	.4byte 0x70205B30
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x5D2E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x64656C65
	.4byte 0x74652030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x20736176
	.4byte 0x65206461
	.4byte 0x74612E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2064
	.4byte 0x6F6E2774
	.4byte 0x2070726F
	.4byte 0x63657373
	.4byte 0x20666F72
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204E41
	.4byte 0x4E445365
	.4byte 0x63726574
	.4byte 0x47657455
	.4byte 0x73657255
	.4byte 0x73616765
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x75736572
	.4byte 0x20667342
	.4byte 0x6C6F636B
	.4byte 0x203D2025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20757365
	.4byte 0x7220696E
	.4byte 0x6F646520
	.4byte 0x20203D20
	.4byte 0x25640A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207573
	.4byte 0x65722066
	.4byte 0x72656520
	.4byte 0x61726561
	.4byte 0x203D2025
	.4byte 0x642F2564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x75736572
	.4byte 0x20667265
	.4byte 0x65206172
	.4byte 0x65612066
	.4byte 0x73626C6F
	.4byte 0x636B732F
	.4byte 0x696E6F64
	.4byte 0x6573203D
	.4byte 0x2025642F
	.4byte 0x25640A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207379
	.4byte 0x7374656D
	.4byte 0x20667265
	.4byte 0x65206172
	.4byte 0x65612066
	.4byte 0x73626C6F
	.4byte 0x636B732F
	.4byte 0x696E6F64
	.4byte 0x6573203D
	.4byte 0x2025642F
	.4byte 0x25640A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207573
	.4byte 0x65722061
	.4byte 0x72656120
	.4byte 0x6F766572
	.4byte 0x73206C69
	.4byte 0x6D69742E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x696E2073
	.4byte 0x686F7274
	.4byte 0x206F6620
	.4byte 0x73797374
	.4byte 0x656D2069
	.4byte 0x6E6F6465
	.4byte 0x732E2025
	.4byte 0x642F2564
	.4byte 0x200A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20696E20
	.4byte 0x73686F72
	.4byte 0x74206F66
	.4byte 0x20737973
	.4byte 0x74656D20
	.4byte 0x6673626C
	.4byte 0x6F636B73
	.4byte 0x2E202564
	.4byte 0x2F256420
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x696E2073
	.4byte 0x686F7274
	.4byte 0x206F6620
	.4byte 0x75736572
	.4byte 0x20696E6F
	.4byte 0x6465732E
	.4byte 0x2025642F
	.4byte 0x2564200A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2069
	.4byte 0x6E207368
	.4byte 0x6F727420
	.4byte 0x6F662075
	.4byte 0x73657220
	.4byte 0x6673626C
	.4byte 0x6F636B73
	.4byte 0x2E202564
	.4byte 0x2F256420
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x67657420
	.4byte 0x62616E6E
	.4byte 0x65722066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207468
	.4byte 0x69732073
	.4byte 0x61766520
	.4byte 0x64617461
	.4byte 0x20686173
	.4byte 0x206E6F63
	.4byte 0x6F707920
	.4byte 0x666C6167
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44476574
	.4byte 0x53746174
	.4byte 0x75735B25
	.4byte 0x735D2066
	.4byte 0x61696C65
	.4byte 0x64202564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E414E44
	.4byte 0x4368616E
	.4byte 0x67654469
	.4byte 0x72202573
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x57414442
	.4byte 0x61636B75
	.4byte 0x70203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x6661696C
	.4byte 0x65642C20
	.4byte 0x74686973
	.4byte 0x20736176
	.4byte 0x65206461
	.4byte 0x74612068
	.4byte 0x6173206E
	.4byte 0x6F636F70
	.4byte 0x79206F6E
	.4byte 0x6C792E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2057
	.4byte 0x41444261
	.4byte 0x636B7570
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2062
	.4byte 0x61636B75
	.4byte 0x70207369
	.4byte 0x7A65205B
	.4byte 0x25645D20
	.4byte 0x69732074
	.4byte 0x6F6F206C
	.4byte 0x61726765
	.4byte 0x20666F72
	.4byte 0x20534420
	.4byte 0x63617264
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x206D616B
	.4byte 0x65207761
	.4byte 0x64206261
	.4byte 0x636B7570
	.4byte 0x2C207369
	.4byte 0x7A65203D
	.4byte 0x205B2564
	.4byte 0x5D2E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204641
	.4byte 0x466F7065
	.4byte 0x6E202573
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x63726561
	.4byte 0x74652025
	.4byte 0x7320696E
	.4byte 0x2073642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x46414673
	.4byte 0x65656B20
	.4byte 0x25732066
	.4byte 0x61696C65
	.4byte 0x642E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204641
	.4byte 0x46777269
	.4byte 0x74652025
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20464146
	.4byte 0x636C6F73
	.4byte 0x65202573
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x72656D6F
	.4byte 0x76652025
	.4byte 0x73206265
	.4byte 0x63617573
	.4byte 0x6520636F
	.4byte 0x70792069
	.4byte 0x73206E6F
	.4byte 0x7420646F
	.4byte 0x6E652063
	.4byte 0x6F727265
	.4byte 0x63746C79
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20464152
	.4byte 0x656D6F76
	.4byte 0x65202573
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x73642064
	.4byte 0x61746120
	.4byte 0x5B25735D
	.4byte 0x20616C72
	.4byte 0x65616479
	.4byte 0x20657869
	.4byte 0x7374732E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x63726561
	.4byte 0x74652073
	.4byte 0x64206261
	.4byte 0x636B7570
	.4byte 0x20646972
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.2byte 0x0A00
.endobj lbl_81636D56

# .data:0x191C | 0x816373A4 | size: 0x26
.obj lbl_816373A4, global
	.string "NandSDWorker: FAFstat %s failed.[%d]\n"
.endobj lbl_816373A4

# .data:0x1942 | 0x816373CA | size: 0x13
.obj lbl_816373CA, global
	.string "/private/wii/title"
.endobj lbl_816373CA

# .data:0x1955 | 0x816373DD | size: 0xD
.obj lbl_816373DD, global
	.string "/private/wii"
.endobj lbl_816373DD

# .data:0x1962 | 0x816373EA | size: 0x61
.obj lbl_816373EA, global
	.4byte 0x2F707269
	.4byte 0x76617465
	.4byte 0x002F7072
	.4byte 0x69766174
	.4byte 0x652F7769
	.4byte 0x692F7469
	.4byte 0x746C652F
	.4byte 0x25303878
	.4byte 0x002F7072
	.4byte 0x69766174
	.4byte 0x652F7769
	.4byte 0x692F7469
	.4byte 0x746C652F
	.4byte 0x25632563
	.4byte 0x25632563
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2025
	.4byte 0x73206973
	.4byte 0x206E6F74
	.4byte 0x20612064
	.4byte 0x69722E5B
	.4byte 0x25645D0A
	.byte 0x00
.endobj lbl_816373EA

# .data:0x19C3 | 0x8163744B | size: 0x2A
.obj lbl_8163744B, global
	.string "NandSDWorker: FACreatedir %s failed.[%d]\n"
.endobj lbl_8163744B

# .data:0x19ED | 0x81637475 | size: 0x425
.obj lbl_81637475, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206372
	.4byte 0x65617465
	.4byte 0x20736420
	.4byte 0x63617264
	.4byte 0x20646972
	.4byte 0x205B2573
	.4byte 0x5D2E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207469
	.4byte 0x746C6569
	.4byte 0x64203D20
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78206973
	.4byte 0x206E6F74
	.4byte 0x20696E73
	.4byte 0x74616C6C
	.4byte 0x65642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4443
	.4byte 0x72656174
	.4byte 0x65446972
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2073
	.4byte 0x68617265
	.4byte 0x6420636F
	.4byte 0x6E74656E
	.4byte 0x7420696E
	.4byte 0x6F646573
	.4byte 0x2F626C6F
	.4byte 0x636B7320
	.4byte 0x3D202564
	.4byte 0x2F25640A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2070
	.4byte 0x72697661
	.4byte 0x74652063
	.4byte 0x6F6E7465
	.4byte 0x6E742069
	.4byte 0x6E6F6465
	.4byte 0x732F626C
	.4byte 0x6F636B73
	.4byte 0x203D2025
	.4byte 0x642F2564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x66696C65
	.4byte 0x20696E6F
	.4byte 0x6465732F
	.4byte 0x626C6F63
	.4byte 0x6B73203D
	.4byte 0x2025642F
	.4byte 0x25640A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207468
	.4byte 0x69732073
	.4byte 0x61766520
	.4byte 0x64617461
	.4byte 0x20696E63
	.4byte 0x6C756465
	.4byte 0x73206F6E
	.4byte 0x6C79206E
	.4byte 0x6F747261
	.4byte 0x6E736665
	.4byte 0x722E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207468
	.4byte 0x69732073
	.4byte 0x61766520
	.4byte 0x64617461
	.4byte 0x20696E63
	.4byte 0x6C756465
	.4byte 0x73206E6F
	.4byte 0x7472616E
	.4byte 0x73666572
	.4byte 0x2C202564
	.4byte 0x2066696C
	.4byte 0x65732F64
	.4byte 0x69726563
	.4byte 0x74726965
	.4byte 0x73206E6F
	.4byte 0x7420636F
	.4byte 0x70696564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20574144
	.4byte 0x52657374
	.4byte 0x6F726553
	.4byte 0x44457820
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4443
	.4byte 0x72656174
	.4byte 0x65202573
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E414E44
	.4byte 0x4F70656E
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4457
	.4byte 0x72697465
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4443
	.4byte 0x6C6F7365
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x206D6F76
	.4byte 0x65206669
	.4byte 0x6C657320
	.4byte 0x66726F6D
	.4byte 0x20257320
	.4byte 0x746F2025
	.4byte 0x732E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A20696D
	.4byte 0x706F7274
	.4byte 0x20736176
	.4byte 0x65206461
	.4byte 0x74612074
	.4byte 0x69746C65
	.4byte 0x6964203D
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2046
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x20616C6C
	.4byte 0x6F636174
	.4byte 0x65206275
	.4byte 0x66666572
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20464146
	.4byte 0x636C6F73
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2062616E
	.4byte 0x6E657220
	.4byte 0x66696C65
	.4byte 0x20257320
	.4byte 0x6D643520
	.4byte 0x64696765
	.4byte 0x73742069
	.4byte 0x73206E6F
	.4byte 0x7420636F
	.4byte 0x72726563
	.4byte 0x742E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206361
	.4byte 0x6E6E6F74
	.4byte 0x20666F72
	.4byte 0x6D617420
	.4byte 0x73642062
	.4byte 0x65636175
	.4byte 0x7365206F
	.4byte 0x6620696C
	.4byte 0x6C656761
	.4byte 0x6C207364
	.4byte 0x20737461
	.4byte 0x74652E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2053
	.4byte 0x44206361
	.4byte 0x7264204D
	.4byte 0x42522069
	.4byte 0x73206272
	.4byte 0x6F6B656E
	.4byte 0x2E206361
	.4byte 0x6E6E6F74
	.4byte 0x20757365
	.4byte 0x20746869
	.4byte 0x73206D65
	.4byte 0x6469612E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x73756363
	.4byte 0x65737366
	.4byte 0x756C6C79
	.4byte 0x20666F72
	.4byte 0x6D617420
	.4byte 0x73642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2046
	.4byte 0x41466F72
	.4byte 0x6D617420
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.byte 0x00
.endobj lbl_81637475

# .data:0x1E12 | 0x8163789A | size: 0x28
.obj lbl_8163789A, global
	.string "NandSDWorker: SD card free area = %llu\n"
.endobj lbl_8163789A

# .data:0x1E3A | 0x816378C2 | size: 0x6D9
.obj lbl_816378C2, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204641
	.4byte 0x47657464
	.4byte 0x65762066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207761
	.4byte 0x6974696E
	.4byte 0x67204E57
	.4byte 0x4332344F
	.4byte 0x70656E2E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E574332
	.4byte 0x344F7065
	.4byte 0x6E206661
	.4byte 0x696C6564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E5743
	.4byte 0x32344765
	.4byte 0x74446C54
	.4byte 0x61736B20
	.4byte 0x6661696C
	.4byte 0x6564202D
	.4byte 0x205B2564
	.4byte 0x5D20202D
	.4byte 0x3E20636F
	.4byte 0x6E74696E
	.4byte 0x75650A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204E57
	.4byte 0x43323447
	.4byte 0x6574446C
	.4byte 0x41707049
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x202D205B
	.4byte 0x25645D20
	.4byte 0x202D3E20
	.4byte 0x636F6E74
	.4byte 0x696E7565
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x666F756E
	.4byte 0x6420646C
	.4byte 0x20746173
	.4byte 0x6B206F77
	.4byte 0x6E656420
	.4byte 0x73616D65
	.4byte 0x20746974
	.4byte 0x6C656964
	.4byte 0x205B2570
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2064656C
	.4byte 0x65746520
	.4byte 0x646F776E
	.4byte 0x6C6F6164
	.4byte 0x20746173
	.4byte 0x6B20666F
	.4byte 0x7220696E
	.4byte 0x64657820
	.4byte 0x3A202564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x69676E6F
	.4byte 0x72652074
	.4byte 0x69746C65
	.4byte 0x20696420
	.4byte 0x25643A20
	.4byte 0x25303878
	.4byte 0x200A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E5743
	.4byte 0x3234436C
	.4byte 0x6F73654C
	.4byte 0x69622066
	.4byte 0x61696C65
	.4byte 0x64202D20
	.4byte 0x5B25645D
	.4byte 0x20202D3E
	.4byte 0x20636F6E
	.4byte 0x74696E75
	.4byte 0x650A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2064656C
	.4byte 0x65746520
	.4byte 0x646F776E
	.4byte 0x6C6F6164
	.4byte 0x20746173
	.4byte 0x6B20666F
	.4byte 0x72202530
	.4byte 0x38780A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x6973206E
	.4byte 0x6F74206E
	.4byte 0x616E6420
	.4byte 0x6170702C
	.4byte 0x2063616E
	.4byte 0x6E6F7420
	.4byte 0x64656C65
	.4byte 0x74652E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F4465
	.4byte 0x6C657465
	.4byte 0x5469746C
	.4byte 0x65436F6E
	.4byte 0x74656E74
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x64656C65
	.4byte 0x74652074
	.4byte 0x69746C65
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782063
	.4byte 0x6F6E7465
	.4byte 0x6E742E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2064
	.4byte 0x656C6574
	.4byte 0x6520646F
	.4byte 0x776E6C6F
	.4byte 0x61642074
	.4byte 0x61736B20
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2063
	.4byte 0x616E2774
	.4byte 0x206F7065
	.4byte 0x6E206261
	.4byte 0x6E6E6572
	.4byte 0x2066696C
	.4byte 0x6520666F
	.4byte 0x72206461
	.4byte 0x7461206F
	.4byte 0x6E6C7920
	.4byte 0x7469746C
	.4byte 0x65205B30
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2062616E
	.4byte 0x6E657220
	.4byte 0x66696C65
	.4byte 0x20697320
	.4byte 0x746F6F20
	.4byte 0x736D616C
	.4byte 0x6C205B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206261
	.4byte 0x6E6E6572
	.4byte 0x2066696C
	.4byte 0x65206973
	.4byte 0x20746F6F
	.4byte 0x206C6172
	.4byte 0x6765205B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x20726561
	.4byte 0x64206672
	.4byte 0x6F6D2063
	.4byte 0x6F6E7465
	.4byte 0x6E742E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2062
	.4byte 0x616E6E65
	.4byte 0x72206669
	.4byte 0x6C652073
	.4byte 0x69676E61
	.4byte 0x74757265
	.4byte 0x20697320
	.4byte 0x6E6F7420
	.4byte 0x636F7272
	.4byte 0x6563740A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E444F
	.4byte 0x70656E20
	.4byte 0x25732066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206361
	.4byte 0x6E6E6F74
	.4byte 0x2066696E
	.4byte 0x64206D65
	.4byte 0x7461206F
	.4byte 0x66667365
	.4byte 0x743A2025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20696C6C
	.4byte 0x6567616C
	.4byte 0x20686561
	.4byte 0x6465722E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x68656164
	.4byte 0x64657220
	.4byte 0x73697A65
	.4byte 0x203D2025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20686173
	.4byte 0x68206368
	.4byte 0x65636B20
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2041
	.4byte 0x5243496E
	.4byte 0x69744861
	.4byte 0x6E646C65
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A002F6D
	.4byte 0x6574612F
	.4byte 0x69636F6E
	.4byte 0x2E62696E
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2041
	.4byte 0x52434F70
	.4byte 0x656E2066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A20696C
	.4byte 0x6C656761
	.4byte 0x6C207468
	.4byte 0x756D626E
	.4byte 0x61696C20
	.4byte 0x73697A65
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20746875
	.4byte 0x6D626E61
	.4byte 0x696C2073
	.4byte 0x697A6520
	.4byte 0x3D202564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x7469746C
	.4byte 0x65696420
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x78206369
	.4byte 0x64782025
	.4byte 0x64206E6F
	.4byte 0x74206578
	.4byte 0x6973742E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x45535F47
	.4byte 0x65745469
	.4byte 0x636B6574
	.4byte 0x56696577
	.4byte 0x73207469
	.4byte 0x746C6569
	.4byte 0x64203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x6661696C
	.4byte 0x65642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2074
	.4byte 0x69746C65
	.4byte 0x69642030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x20686173
	.4byte 0x206E6F20
	.4byte 0x7469636B
	.4byte 0x65742E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F4F70
	.4byte 0x656E5469
	.4byte 0x746C6543
	.4byte 0x6F6E7465
	.4byte 0x6E744669
	.4byte 0x6C652074
	.4byte 0x69746C65
	.4byte 0x69642030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x20636964
	.4byte 0x78202564
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x73756363
	.4byte 0x65737366
	.4byte 0x756C6C79
	.4byte 0x206F7065
	.4byte 0x6E207469
	.4byte 0x746C6569
	.4byte 0x64203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x63696478
	.4byte 0x2025642E
	.4byte 0x20666420
	.4byte 0x3D202564
	.4byte 0x2C207369
	.4byte 0x7A65203D
	.4byte 0x2025642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E414E44
	.4byte 0x5365656B
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4452
	.4byte 0x65616420
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F5365
	.4byte 0x656B436F
	.4byte 0x6E74656E
	.4byte 0x7446696C
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2045535F
	.4byte 0x52656164
	.4byte 0x436F6E74
	.4byte 0x656E7446
	.4byte 0x696C6520
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.byte 0x00
.endobj lbl_816378C2

# .data:0x2513 | 0x81637F9B | size: 0x35
.obj lbl_81637F9B, global
	.string "BANNER WARNING: invalid signature or header size %d\n"
.endobj lbl_81637F9B

# .data:0x2548 | 0x81637FD0 | size: 0x34
.obj lbl_81637FD0, global
	.string "BANNER WARNING: different version v.%d ( now v.%d)\n"
.endobj lbl_81637FD0

# .data:0x257C | 0x81638004 | size: 0x448
.obj lbl_81638004, global
	.4byte 0x42414E4E
	.4byte 0x45522057
	.4byte 0x41524E49
	.4byte 0x4E473A20
	.4byte 0x696E7661
	.4byte 0x6C696420
	.4byte 0x6D643520
	.4byte 0x76616C75
	.4byte 0x65202820
	.4byte 0x64617461
	.4byte 0x20290A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206672
	.4byte 0x6565206E
	.4byte 0x616E6420
	.4byte 0x61707020
	.4byte 0x636F756E
	.4byte 0x74203D20
	.4byte 0x25642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2074
	.4byte 0x68657265
	.4byte 0x20697320
	.4byte 0x6E6F2066
	.4byte 0x72656520
	.4byte 0x636F756E
	.4byte 0x7420746F
	.4byte 0x20696E73
	.4byte 0x74616C6C
	.4byte 0x20617070
	.4byte 0x6C696361
	.4byte 0x74696F6E
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20534347
	.4byte 0x65744672
	.4byte 0x65654368
	.4byte 0x616E6E65
	.4byte 0x6C417070
	.4byte 0x436F756E
	.4byte 0x74206661
	.4byte 0x696C6564
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20574144
	.4byte 0x52657374
	.4byte 0x6F726553
	.4byte 0x44457820
	.4byte 0x6661696C
	.4byte 0x65642C20
	.4byte 0x6E6F7420
	.4byte 0x6F726967
	.4byte 0x696E616C
	.4byte 0x20576969
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20696D70
	.4byte 0x6F727420
	.4byte 0x61707020
	.4byte 0x64617461
	.4byte 0x20746974
	.4byte 0x6C656964
	.4byte 0x203D2030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20534347
	.4byte 0x6574496E
	.4byte 0x7374616C
	.4byte 0x6C656443
	.4byte 0x68616E6E
	.4byte 0x656C4170
	.4byte 0x70436F75
	.4byte 0x6E742066
	.4byte 0x61696C65
	.4byte 0x642E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206F6C
	.4byte 0x6420696E
	.4byte 0x7374616C
	.4byte 0x6C656420
	.4byte 0x6E616E64
	.4byte 0x20617070
	.4byte 0x20636F75
	.4byte 0x6E74203D
	.4byte 0x2025642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x6E657720
	.4byte 0x696E7374
	.4byte 0x616C6C65
	.4byte 0x64206E61
	.4byte 0x6E642061
	.4byte 0x70702063
	.4byte 0x6F756E74
	.4byte 0x203D2025
	.4byte 0x642E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206E65
	.4byte 0x77206672
	.4byte 0x6565206E
	.4byte 0x616E6420
	.4byte 0x61707020
	.4byte 0x636F756E
	.4byte 0x74203D20
	.4byte 0x25642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2025
	.4byte 0x73206861
	.4byte 0x7320696C
	.4byte 0x6C656761
	.4byte 0x6C207468
	.4byte 0x756D626E
	.4byte 0x61696C20
	.4byte 0x73697A65
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20464146
	.4byte 0x7365656B
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x63616E6E
	.4byte 0x6F742075
	.4byte 0x6E636F6D
	.4byte 0x70726573
	.4byte 0x73207468
	.4byte 0x756D626E
	.4byte 0x61696C20
	.4byte 0x6F662025
	.4byte 0x3031366C
	.4byte 0x6C78205B
	.4byte 0x25645D2E
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x756E636F
	.4byte 0x6D707265
	.4byte 0x73732074
	.4byte 0x68756D62
	.4byte 0x6E61696C
	.4byte 0x2073697A
	.4byte 0x65203D20
	.4byte 0x25642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4453
	.4byte 0x65637265
	.4byte 0x74476574
	.4byte 0x55736167
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x206E6F20
	.4byte 0x636F6E74
	.4byte 0x656E7420
	.4byte 0x666F7220
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x782E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207072
	.4byte 0x69766174
	.4byte 0x6520636F
	.4byte 0x6E74656E
	.4byte 0x74206E75
	.4byte 0x6D20666F
	.4byte 0x72203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x6973206E
	.4byte 0x6F772F74
	.4byte 0x6D64203D
	.4byte 0x2025642F
	.4byte 0x25642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F4C69
	.4byte 0x73745469
	.4byte 0x746C6543
	.4byte 0x6F6E7465
	.4byte 0x6E74734F
	.4byte 0x6E436172
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782069
	.4byte 0x7320616C
	.4byte 0x72656164
	.4byte 0x79206465
	.4byte 0x6C657465
	.4byte 0x642E0A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206E6F
	.4byte 0x7420636F
	.4byte 0x6D706C65
	.4byte 0x74653A20
	.4byte 0x6E6F6E2D
	.4byte 0x6F707469
	.4byte 0x6F6E616C
	.4byte 0x20636964
	.4byte 0x78202564
	.4byte 0x206D6973
	.4byte 0x73696E67
	.4byte 0x20666F72
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2063
	.4byte 0x6F6D706C
	.4byte 0x6574653A
	.4byte 0x206F6E6C
	.4byte 0x79206D69
	.4byte 0x7373696E
	.4byte 0x67206E6F
	.4byte 0x6E2D6F70
	.4byte 0x74696F6E
	.4byte 0x616C2063
	.4byte 0x6F6E7465
	.4byte 0x6E747320
	.4byte 0x666F7220
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x782E0A00
.endobj lbl_81638004

# .data:0x29C4 | 0x8163844C | size: 0x69
.obj lbl_8163844C, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A206661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x67657420
	.4byte 0x544D4420
	.4byte 0x6F662030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20676574
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782061
	.4byte 0x70702074
	.4byte 0x68756D62
	.4byte 0x6E61696C
	.4byte 0x2066726F
	.4byte 0x6D206D65
	.4byte 0x74612E0A
	.byte 0x00
.endobj lbl_8163844C

# .data:0x2A2D | 0x816384B5 | size: 0x24
.obj lbl_816384B5, global
	.string "NandSDWorker: recieve message = %d\n"
.endobj lbl_816384B5

# .data:0x2A51 | 0x816384D9 | size: 0x2E
.obj lbl_816384D9, global
	.string "NandSDWorker: SD card inserted !!   %c drive\n"
.endobj lbl_816384D9

# .data:0x2A7F | 0x81638507 | size: 0x79
.obj lbl_81638507, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A205344
	.4byte 0x20636172
	.4byte 0x6420656A
	.4byte 0x65637465
	.4byte 0x64202021
	.4byte 0x21202020
	.4byte 0x25632064
	.4byte 0x72697665
	.4byte 0x0A002F70
	.4byte 0x72697661
	.4byte 0x74652F77
	.4byte 0x69692F74
	.4byte 0x69746C65
	.4byte 0x2F2A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20464146
	.4byte 0x73666972
	.4byte 0x7374202F
	.4byte 0x70726976
	.4byte 0x6174652F
	.4byte 0x7769692F
	.4byte 0x7469746C
	.4byte 0x652F2A20
	.4byte 0x6661696C
	.4byte 0x65642E0A
	.byte 0x00
.endobj lbl_81638507

# .data:0x2AF8 | 0x81638580 | size: 0xCE
.obj lbl_81638580, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A20666F
	.4byte 0x756E6420
	.4byte 0x73642064
	.4byte 0x61746120
	.4byte 0x2573205B
	.4byte 0x73697A65
	.4byte 0x3A202564
	.4byte 0x5D0A004F
	.4byte 0x4B3A2025
	.4byte 0x3038780A
	.4byte 0x004E473A
	.4byte 0x20253038
	.4byte 0x780A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20546865
	.4byte 0x72652069
	.4byte 0x7320746F
	.4byte 0x6F206D61
	.4byte 0x6E792065
	.4byte 0x6E747279
	.4byte 0x206F6E20
	.4byte 0x74686973
	.4byte 0x20534420
	.4byte 0x63617264
	.4byte 0x2E0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x20464146
	.4byte 0x73746174
	.4byte 0x20257320
	.4byte 0x6661696C
	.4byte 0x65642E0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2046
	.4byte 0x4146736E
	.4byte 0x65787420
	.4byte 0x2F707269
	.4byte 0x76617465
	.4byte 0x2F776969
	.4byte 0x2F746974
	.4byte 0x6C652F2A
	.4byte 0x20666169
	.4byte 0x6C65642E
	.2byte 0x0A00
.endobj lbl_81638580

# .data:0x2BC6 | 0x8163864E | size: 0x20
.obj lbl_8163864E, global
	.string "NandSDWorker: sd save num = %d\n"
.endobj lbl_8163864E

# .data:0x2BE6 | 0x8163866E | size: 0x1E1
.obj lbl_8163866E, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207364
	.4byte 0x20617070
	.4byte 0x206E756D
	.4byte 0x203D2025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44507269
	.4byte 0x76617465
	.4byte 0x52656164
	.4byte 0x4469725B
	.4byte 0x25735D20
	.4byte 0x6661696C
	.4byte 0x65642025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x204E414E
	.4byte 0x44507269
	.4byte 0x76617465
	.4byte 0x47657454
	.4byte 0x7970655B
	.4byte 0x25735D20
	.4byte 0x6661696C
	.4byte 0x65642025
	.4byte 0x640A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x2069676E
	.4byte 0x6F726520
	.4byte 0x5B25735D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x746F6F20
	.4byte 0x6D616E79
	.4byte 0x2066696C
	.4byte 0x65732069
	.4byte 0x6E202573
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E414E44
	.4byte 0x50726976
	.4byte 0x61746544
	.4byte 0x656C6574
	.4byte 0x655B2573
	.4byte 0x5D206661
	.4byte 0x696C6564
	.4byte 0x2025640A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4450
	.4byte 0x72697661
	.4byte 0x74654D6F
	.4byte 0x76652025
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A004E
	.4byte 0x616E6453
	.4byte 0x44576F72
	.4byte 0x6B65723A
	.4byte 0x206D6F76
	.4byte 0x65202573
	.4byte 0x2066726F
	.4byte 0x6D202573
	.4byte 0x20746F20
	.4byte 0x25730A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204E41
	.4byte 0x4E445072
	.4byte 0x69766174
	.4byte 0x654F7065
	.4byte 0x6E5B2573
	.4byte 0x5D206661
	.4byte 0x696C6564
	.4byte 0x2025640A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A204E
	.4byte 0x414E4447
	.4byte 0x65744C65
	.4byte 0x6E677468
	.4byte 0x5B25735D
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x25640A00
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A207369
	.4byte 0x7A65206F
	.4byte 0x66202573
	.4byte 0x20697320
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4E414E44
	.4byte 0x436C6F73
	.4byte 0x655B2573
	.4byte 0x5D206661
	.4byte 0x696C6564
	.4byte 0x2025640A
	.byte 0x00
.endobj lbl_8163866E

# .data:0x2DC7 | 0x8163884F | size: 0x21
.obj lbl_8163884F, global
	.string "ES_SetUid failed[%d]: 0x%016llx\n"
.endobj lbl_8163884F

# .data:0x2DE8 | 0x81638870 | size: 0x24
.obj lbl_81638870, global
	.string "NandSDWorker: nand memory corrupt!\n"
.endobj lbl_81638870

# .data:0x2E0C | 0x81638894 | size: 0x43
.obj lbl_81638894, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204641
	.4byte 0x206C6962
	.4byte 0x72617279
	.4byte 0x20657272
	.4byte 0x6F722E5B
	.4byte 0x25645D0A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2025
	.4byte 0x64206974
	.4byte 0x656D2069
	.4byte 0x6E202573
	.byte 0x2E, 0x0A, 0x00
.endobj lbl_81638894

# .data:0x2E4F | 0x816388D7 | size: 0x2A
.obj lbl_816388D7, global
	.string "NandSDWorker: NANDReadDir %s failed.[%d]\n"
.endobj lbl_816388D7

# .data:0x2E79 | 0x81638901 | size: 0x26
.obj lbl_81638901, global
	.string "NandSDWorker: ES_Encrypt failed.[%d]\n"
.endobj lbl_81638901

# .data:0x2E9F | 0x81638927 | size: 0xC1
.obj lbl_81638927, global
	.4byte 0x4E616E64
	.4byte 0x5344576F
	.4byte 0x726B6572
	.4byte 0x3A204553
	.4byte 0x5F446563
	.4byte 0x72797074
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x53442061
	.4byte 0x70702025
	.4byte 0x30387820
	.4byte 0x6973206F
	.4byte 0x6C646572
	.4byte 0x20766572
	.4byte 0x73696F6E
	.4byte 0x3A202564
	.4byte 0x20284E41
	.4byte 0x4E443A20
	.4byte 0x2564290A
	.4byte 0x004E616E
	.4byte 0x64534457
	.4byte 0x6F726B65
	.4byte 0x723A2045
	.4byte 0x535F4765
	.4byte 0x74446576
	.4byte 0x69636549
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x64657669
	.4byte 0x63652069
	.4byte 0x64206973
	.4byte 0x20646966
	.4byte 0x66657265
	.4byte 0x6E743A20
	.4byte 0x25642076
	.4byte 0x73202564
	.4byte 0x0A000000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81638927

# 0x81694570..0x81694590 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694570 | size: 0x4
.obj lbl_81694570, global
	.4byte lbl_8163652E
.endobj lbl_81694570

# .sdata2:0x4 | 0x81694574 | size: 0x4
.obj lbl_81694574, global
	.4byte lbl_81636543
.endobj lbl_81694574

# .sdata2:0x8 | 0x81694578 | size: 0x4
.obj lbl_81694578, global
	.4byte lbl_8163652E
.endobj lbl_81694578

# .sdata2:0xC | 0x8169457C | size: 0x4
.obj lbl_8169457C, global
	.4byte lbl_81636543
.endobj lbl_8169457C

# .sdata2:0x10 | 0x81694580 | size: 0x4
.obj lbl_81694580, global
	.float 100
.endobj lbl_81694580

# .sdata2:0x14 | 0x81694584 | size: 0x4
.obj gap_09_81694584_sdata2, global
.hidden gap_09_81694584_sdata2
	.4byte 0x00000000
.endobj gap_09_81694584_sdata2

# .sdata2:0x18 | 0x81694588 | size: 0x8
.obj lbl_81694588, global
	.double 4503599627370496
.endobj lbl_81694588

# 0x81696198..0x816961F8 | size: 0x60
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696198 | size: 0x4
# ipl::NandSDWorker::c_banner_file_name
.obj c_banner_file_name__Q23ipl12NandSDWorker, global
	.4byte lbl_81635A88
.endobj c_banner_file_name__Q23ipl12NandSDWorker

# .sdata:0x4 | 0x8169619C | size: 0x8
.obj fn_8169619C, local
	.string "nocopy\000"
.endobj fn_8169619C

# .sdata:0xC | 0x816961A4 | size: 0x4
# ipl::NandSDWorker::c_nocopy_folder_name
.obj c_nocopy_folder_name__Q23ipl12NandSDWorker, global
	.4byte fn_8169619C
.endobj c_nocopy_folder_name__Q23ipl12NandSDWorker

# .sdata:0x10 | 0x816961A8 | size: 0x4
# ipl::NandSDWorker::c_notransfer_folder_name
.obj c_notransfer_folder_name__Q23ipl12NandSDWorker, global
	.4byte lbl_81635A93
.endobj c_notransfer_folder_name__Q23ipl12NandSDWorker

# .sdata:0x14 | 0x816961AC | size: 0x4
# ipl::NandSDWorker::c_wii_sd_title_root
.obj c_wii_sd_title_root__Q23ipl12NandSDWorker, global
	.4byte lbl_81635A9E
.endobj c_wii_sd_title_root__Q23ipl12NandSDWorker

# .sdata:0x18 | 0x816961B0 | size: 0x4
# ipl::NandSDWorker::c_sd_save_file_name
.obj c_sd_save_file_name__Q23ipl12NandSDWorker, global
	.4byte lbl_81635AB2
.endobj c_sd_save_file_name__Q23ipl12NandSDWorker

# .sdata:0x1C | 0x816961B4 | size: 0x4
# ipl::NandSDWorker::c_sd_app_file_name
.obj c_sd_app_file_name__Q23ipl12NandSDWorker, global
	.4byte lbl_81635ABB
.endobj c_sd_app_file_name__Q23ipl12NandSDWorker

# .sdata:0x20 | 0x816961B8 | size: 0x4
# ipl::NandSDWorker::c_succession_path
.obj c_succession_path__Q23ipl12NandSDWorker, global
	.4byte lbl_81635AC7
.endobj c_succession_path__Q23ipl12NandSDWorker

# .sdata:0x24 | 0x816961BC | size: 0x4
# ipl::NandSDWorker::c_transferid_path
.obj c_transferid_path__Q23ipl12NandSDWorker, global
	.4byte lbl_81635ADB
.endobj c_transferid_path__Q23ipl12NandSDWorker

# .sdata:0x28 | 0x816961C0 | size: 0x4
# ipl::NandSDWorker::c_tmp_work_path
.obj c_tmp_work_path__Q23ipl12NandSDWorker, global
	.4byte lbl_81635AFB
.endobj c_tmp_work_path__Q23ipl12NandSDWorker

# .sdata:0x2C | 0x816961C4 | size: 0x6
.obj lbl_816961C4, global
	.string "test/"
.endobj lbl_816961C4

# .sdata:0x32 | 0x816961CA | size: 0x7
.obj lbl_816961CA, global
	.string "test2/"
.endobj lbl_816961CA

# .sdata:0x39 | 0x816961D1 | size: 0x6
.obj lbl_816961D1, global
	.string "wc24/"
.endobj lbl_816961D1

# .sdata:0x3F | 0x816961D7 | size: 0x5
.obj lbl_816961D7, global
	.string "sys/"
.endobj lbl_816961D7

# .sdata:0x44 | 0x816961DC | size: 0x8
# ipl::NandSDWorker::c_ignore_list_for_wiimenu
.obj c_ignore_list_for_wiimenu__Q23ipl12NandSDWorker, global
	.4byte lbl_81635B2C
	.4byte lbl_81635B38
.endobj c_ignore_list_for_wiimenu__Q23ipl12NandSDWorker

# .sdata:0x4C | 0x816961E4 | size: 0x4
# ipl::NandSDWorker::c_wii_menu_save_path
.obj c_wii_menu_save_path__Q23ipl12NandSDWorker, global
	.4byte lbl_81635B42
.endobj c_wii_menu_save_path__Q23ipl12NandSDWorker

# .sdata:0x50 | 0x816961E8 | size: 0x2
.obj lbl_816961E8, global
	.string "/"
.endobj lbl_816961E8

# .sdata:0x52 | 0x816961EA | size: 0x3
.obj lbl_816961EA, global
	.string "r+"
.endobj lbl_816961EA

# .sdata:0x55 | 0x816961ED | size: 0x2
.obj lbl_816961ED, global
	.string "r"
.endobj lbl_816961ED

# .sdata:0x57 | 0x816961EF | size: 0x5
.obj lbl_816961EF, global
	.string "IMET"
.endobj lbl_816961EF

# .sdata:0x5C | 0x816961F4 | size: 0x4
.obj lbl_816961F4, global
	.string "%s/"
.endobj lbl_816961F4

# 0x816986D8..0x816986E0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986D8 | size: 0x4
# ipl::NandSDWorker::s_sd_state
.obj s_sd_state__Q23ipl12NandSDWorker, global
	.skip 0x4
.endobj s_sd_state__Q23ipl12NandSDWorker

# .sbss:0x4 | 0x816986DC | size: 0x4
.obj lbl_816986DC, global
	.skip 0x4
.endobj lbl_816986DC
