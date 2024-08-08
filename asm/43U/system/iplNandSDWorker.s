.include "macros.inc"
.file "iplNandSDWorker.cpp"

# 0x813483EC..0x81354CD0 | size: 0xC8E4
.text
.balign 4

# .text:0x0 | 0x813483EC | size: 0xC
# ipl::NandSDWorker::NandSDWorker()
.fn __ct__Q23ipl12NandSDWorkerFv, global
/* 813483EC 000167EC  38 00 00 00 */	li r0, 0x0
/* 813483F0 000167F0  90 03 00 00 */	stw r0, 0x0(r3)
/* 813483F4 000167F4  4E 80 00 20 */	blr
.endfn __ct__Q23ipl12NandSDWorkerFv

# .text:0xC | 0x813483F8 | size: 0x40
# ipl::NandSDWorker::~NandSDWorker()
.fn __dt__Q23ipl12NandSDWorkerFv, global
/* 813483F8 000167F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813483FC 000167FC  7C 08 02 A6 */	mflr r0
/* 81348400 00016800  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348404 00016804  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348408 00016808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134840C 0001680C  7C 7F 1B 78 */	mr r31, r3
/* 81348410 00016810  41 82 00 10 */	beq .L_81348420
/* 81348414 00016814  2C 04 00 00 */	cmpwi r4, 0x0
/* 81348418 00016818  40 81 00 08 */	ble .L_81348420
/* 8134841C 0001681C  48 2A FC C9 */	bl __dl__FPv
.L_81348420:
/* 81348420 00016820  7F E3 FB 78 */	mr r3, r31
/* 81348424 00016824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348428 00016828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134842C 0001682C  7C 08 03 A6 */	mtlr r0
/* 81348430 00016830  38 21 00 10 */	addi r1, r1, 0x10
/* 81348434 00016834  4E 80 00 20 */	blr
.endfn __dt__Q23ipl12NandSDWorkerFv

# .text:0x4C | 0x81348438 | size: 0x3C0
# ipl::NandSDWorker::create(void*, void*, void*, int)
.fn create__Q23ipl12NandSDWorkerFPvPvPvi, global
/* 81348438 00016838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134843C 0001683C  7C 08 02 A6 */	mflr r0
/* 81348440 00016840  90 01 00 24 */	stw r0, 0x24(r1)
/* 81348444 00016844  39 61 00 20 */	addi r11, r1, 0x20
/* 81348448 00016848  48 2B 10 79 */	bl _savegpr_27
/* 8134844C 0001684C  7C FF 3B 78 */	mr r31, r7
/* 81348450 00016850  3C E4 00 02 */	addis r7, r4, 0x2
/* 81348454 00016854  7C DE 33 78 */	mr r30, r6
/* 81348458 00016858  7C 7C 1B 78 */	mr r28, r3
/* 8134845C 0001685C  3C C7 00 02 */	addis r6, r7, 0x2
/* 81348460 00016860  90 83 00 00 */	stw r4, 0x0(r3)
/* 81348464 00016864  3C 64 00 04 */	addis r3, r4, 0x4
/* 81348468 00016868  3C 80 81 35 */	lis r4, thread_main__Q23ipl12NandSDWorkerFPv@ha
/* 8134846C 0001686C  7C BD 2B 78 */	mr r29, r5
/* 81348470 00016870  7F 85 E3 78 */	mr r5, r28
/* 81348474 00016874  7F E8 FB 78 */	mr r8, r31
/* 81348478 00016878  38 84 94 9C */	addi r4, r4, thread_main__Q23ipl12NandSDWorkerFPv@l
/* 8134847C 0001687C  3C E0 00 02 */	lis r7, 0x2
/* 81348480 00016880  39 20 00 01 */	li r9, 0x1
/* 81348484 00016884  38 63 E6 B0 */	subi r3, r3, 0x1950
/* 81348488 00016888  38 C6 E6 B0 */	subi r6, r6, 0x1950
/* 8134848C 0001688C  48 1E C0 BD */	bl fn_81534548
/* 81348490 00016890  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348494 00016894  38 A0 00 08 */	li r5, 0x8
/* 81348498 00016898  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134849C 0001689C  7C 64 1B 78 */	mr r4, r3
/* 813484A0 000168A0  38 63 E9 E0 */	subi r3, r3, 0x1620
/* 813484A4 000168A4  38 84 EA 00 */	subi r4, r4, 0x1600
/* 813484A8 000168A8  48 1E 8B 79 */	bl OSInitMessageQueue
/* 813484AC 000168AC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813484B0 000168B0  3C 63 00 04 */	addis r3, r3, 0x4
/* 813484B4 000168B4  38 63 E9 C8 */	subi r3, r3, 0x1638
/* 813484B8 000168B8  48 1E 97 19 */	bl fn_81531BD0
/* 813484BC 000168BC  80 DC 00 00 */	lwz r6, 0x0(r28)
/* 813484C0 000168C0  3C 60 00 02 */	lis r3, 0x2
/* 813484C4 000168C4  38 83 90 00 */	subi r4, r3, 0x7000
/* 813484C8 000168C8  38 A0 00 00 */	li r5, 0x0
/* 813484CC 000168CC  38 66 56 40 */	addi r3, r6, 0x5640
/* 813484D0 000168D0  48 21 21 A5 */	bl fn_8155A674
/* 813484D4 000168D4  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813484D8 000168D8  2C 1D 00 00 */	cmpwi r29, 0x0
/* 813484DC 000168DC  38 00 00 00 */	li r0, 0x0
/* 813484E0 000168E0  3C 84 00 02 */	addis r4, r4, 0x2
/* 813484E4 000168E4  90 64 E6 90 */	stw r3, -0x1970(r4)
/* 813484E8 000168E8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813484EC 000168EC  3C 63 00 02 */	addis r3, r3, 0x2
/* 813484F0 000168F0  90 03 E6 9C */	stw r0, -0x1964(r3)
/* 813484F4 000168F4  41 82 00 B4 */	beq .L_813485A8
/* 813484F8 000168F8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813484FC 000168FC  3F 60 00 01 */	lis r27, 0x1
/* 81348500 00016900  38 1B F0 AC */	subi r0, r27, 0xf54
/* 81348504 00016904  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348508 00016908  54 04 04 3E */	clrlwi r4, r0, 16
/* 8134850C 0001690C  38 63 E6 60 */	subi r3, r3, 0x19a0
/* 81348510 00016910  48 1C 9B 4D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81348514 00016914  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348518 00016918  38 1B F0 AC */	subi r0, r27, 0xf54
/* 8134851C 0001691C  54 04 04 3E */	clrlwi r4, r0, 16
/* 81348520 00016920  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348524 00016924  38 63 E6 6C */	subi r3, r3, 0x1994
/* 81348528 00016928  48 1C 9B 35 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8134852C 0001692C  38 7B F0 C0 */	subi r3, r27, 0xf40
/* 81348530 00016930  38 80 00 5A */	li r4, 0x5a
/* 81348534 00016934  38 A0 00 20 */	li r5, 0x20
/* 81348538 00016938  48 21 30 B9 */	bl fn_8155B5F0
/* 8134853C 0001693C  7C 64 1B 78 */	mr r4, r3
/* 81348540 00016940  7F A3 EB 78 */	mr r3, r29
/* 81348544 00016944  38 BB F0 C0 */	subi r5, r27, 0xf40
/* 81348548 00016948  38 C0 00 20 */	li r6, 0x20
/* 8134854C 0001694C  38 E0 00 00 */	li r7, 0x0
/* 81348550 00016950  48 21 2E 11 */	bl fn_8155B360
/* 81348554 00016954  80 DC 00 00 */	lwz r6, 0x0(r28)
/* 81348558 00016958  38 80 00 5A */	li r4, 0x5a
/* 8134855C 0001695C  38 A0 00 20 */	li r5, 0x20
/* 81348560 00016960  3C C6 00 02 */	addis r6, r6, 0x2
/* 81348564 00016964  90 66 E6 94 */	stw r3, -0x196c(r6)
/* 81348568 00016968  38 7B F0 C0 */	subi r3, r27, 0xf40
/* 8134856C 0001696C  48 21 30 85 */	bl fn_8155B5F0
/* 81348570 00016970  7C 7D 1A 14 */	add r3, r29, r3
/* 81348574 00016974  3C 80 00 04 */	lis r4, 0x4
/* 81348578 00016978  38 A0 00 00 */	li r5, 0x0
/* 8134857C 0001697C  48 21 20 F9 */	bl fn_8155A674
/* 81348580 00016980  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81348584 00016984  38 A0 00 40 */	li r5, 0x40
/* 81348588 00016988  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134858C 0001698C  90 64 E6 9C */	stw r3, -0x1964(r4)
/* 81348590 00016990  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348594 00016994  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348598 00016998  80 83 E6 9C */	lwz r4, -0x1964(r3)
/* 8134859C 0001699C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813485A0 000169A0  48 21 30 E9 */	bl fn_8155B688
/* 813485A4 000169A4  48 00 00 10 */	b .L_813485B4
.L_813485A8:
/* 813485A8 000169A8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485AC 000169AC  3C 63 00 02 */	addis r3, r3, 0x2
/* 813485B0 000169B0  90 03 E6 94 */	stw r0, -0x196c(r3)
.L_813485B4:
/* 813485B4 000169B4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 813485B8 000169B8  41 82 00 C0 */	beq .L_81348678
/* 813485BC 000169BC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485C0 000169C0  38 80 00 10 */	li r4, 0x10
/* 813485C4 000169C4  3C 63 00 02 */	addis r3, r3, 0x2
/* 813485C8 000169C8  38 63 E6 78 */	subi r3, r3, 0x1988
/* 813485CC 000169CC  48 1C 9A 91 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813485D0 000169D0  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485D4 000169D4  38 80 00 10 */	li r4, 0x10
/* 813485D8 000169D8  3C 63 00 02 */	addis r3, r3, 0x2
/* 813485DC 000169DC  38 63 E6 84 */	subi r3, r3, 0x197c
/* 813485E0 000169E0  48 1C 9A 7D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813485E4 000169E4  3F A0 00 02 */	lis r29, 0x2
/* 813485E8 000169E8  38 80 00 60 */	li r4, 0x60
/* 813485EC 000169EC  38 7D 96 20 */	subi r3, r29, 0x69e0
/* 813485F0 000169F0  38 A0 00 20 */	li r5, 0x20
/* 813485F4 000169F4  48 21 2F FD */	bl fn_8155B5F0
/* 813485F8 000169F8  7C 64 1B 78 */	mr r4, r3
/* 813485FC 000169FC  7F C3 F3 78 */	mr r3, r30
/* 81348600 00016A00  38 BD 96 20 */	subi r5, r29, 0x69e0
/* 81348604 00016A04  38 C0 00 20 */	li r6, 0x20
/* 81348608 00016A08  38 E0 00 00 */	li r7, 0x0
/* 8134860C 00016A0C  48 21 2D 55 */	bl fn_8155B360
/* 81348610 00016A10  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81348614 00016A14  3C 84 00 02 */	addis r4, r4, 0x2
/* 81348618 00016A18  90 64 E6 98 */	stw r3, -0x1968(r4)
/* 8134861C 00016A1C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348620 00016A20  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348624 00016A24  80 03 E6 9C */	lwz r0, -0x1964(r3)
/* 81348628 00016A28  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134862C 00016A2C  40 82 00 5C */	bne .L_81348688
/* 81348630 00016A30  38 7D 96 20 */	subi r3, r29, 0x69e0
/* 81348634 00016A34  38 80 00 60 */	li r4, 0x60
/* 81348638 00016A38  38 A0 00 20 */	li r5, 0x20
/* 8134863C 00016A3C  48 21 2F B5 */	bl fn_8155B5F0
/* 81348640 00016A40  7C 7E 1A 14 */	add r3, r30, r3
/* 81348644 00016A44  3C 80 00 04 */	lis r4, 0x4
/* 81348648 00016A48  38 A0 00 00 */	li r5, 0x0
/* 8134864C 00016A4C  48 21 20 29 */	bl fn_8155A674
/* 81348650 00016A50  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81348654 00016A54  38 A0 00 40 */	li r5, 0x40
/* 81348658 00016A58  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134865C 00016A5C  90 64 E6 9C */	stw r3, -0x1964(r4)
/* 81348660 00016A60  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348664 00016A64  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348668 00016A68  80 83 E6 9C */	lwz r4, -0x1964(r3)
/* 8134866C 00016A6C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81348670 00016A70  48 21 30 19 */	bl fn_8155B688
/* 81348674 00016A74  48 00 00 14 */	b .L_81348688
.L_81348678:
/* 81348678 00016A78  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134867C 00016A7C  38 00 00 00 */	li r0, 0x0
/* 81348680 00016A80  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348684 00016A84  90 03 E6 98 */	stw r0, -0x1968(r3)
.L_81348688:
/* 81348688 00016A88  3C 60 00 02 */	lis r3, 0x2
/* 8134868C 00016A8C  48 29 FA F9 */	bl fn_815E8184
/* 81348690 00016A90  7F E3 FB 78 */	mr r3, r31
/* 81348694 00016A94  48 29 FD 49 */	bl fn_815E83DC
/* 81348698 00016A98  3C 80 81 35 */	lis r4, sd_insert_callback__Q23ipl12NandSDWorkerFSc@ha
/* 8134869C 00016A9C  3C A0 81 35 */	lis r5, sd_eject_callback__Q23ipl12NandSDWorkerFSc@ha
/* 813486A0 00016AA0  38 84 28 68 */	addi r4, r4, sd_insert_callback__Q23ipl12NandSDWorkerFSc@l
/* 813486A4 00016AA4  38 60 00 00 */	li r3, 0x0
/* 813486A8 00016AA8  38 A5 28 B0 */	addi r5, r5, sd_eject_callback__Q23ipl12NandSDWorkerFSc@l
/* 813486AC 00016AAC  48 29 FB D9 */	bl fn_815E8284
/* 813486B0 00016AB0  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813486B4 00016AB4  3C 60 81 63 */	lis r3, lbl_81635B60@ha
/* 813486B8 00016AB8  38 C0 00 08 */	li r6, 0x8
/* 813486BC 00016ABC  38 00 00 20 */	li r0, 0x20
/* 813486C0 00016AC0  38 A4 50 00 */	addi r5, r4, 0x5000
/* 813486C4 00016AC4  3C 84 00 02 */	addis r4, r4, 0x2
/* 813486C8 00016AC8  90 A4 E6 4C */	stw r5, -0x19b4(r4)
/* 813486CC 00016ACC  3B E0 00 01 */	li r31, 0x1
/* 813486D0 00016AD0  38 63 5B 60 */	addi r3, r3, lbl_81635B60@l
/* 813486D4 00016AD4  38 80 00 08 */	li r4, 0x8
/* 813486D8 00016AD8  80 FC 00 00 */	lwz r7, 0x0(r28)
/* 813486DC 00016ADC  3C A7 00 02 */	addis r5, r7, 0x2
/* 813486E0 00016AE0  90 E5 E6 50 */	stw r7, -0x19b0(r5)
/* 813486E4 00016AE4  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813486E8 00016AE8  3C A5 00 02 */	addis r5, r5, 0x2
/* 813486EC 00016AEC  B0 C5 E6 54 */	sth r6, -0x19ac(r5)
/* 813486F0 00016AF0  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813486F4 00016AF4  3C A5 00 02 */	addis r5, r5, 0x2
/* 813486F8 00016AF8  B0 05 E6 56 */	sth r0, -0x19aa(r5)
/* 813486FC 00016AFC  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81348700 00016B00  3C A5 00 02 */	addis r5, r5, 0x2
/* 81348704 00016B04  93 E5 E6 58 */	stw r31, -0x19a8(r5)
/* 81348708 00016B08  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134870C 00016B0C  3C A5 00 02 */	addis r5, r5, 0x2
/* 81348710 00016B10  93 E5 E6 5C */	stw r31, -0x19a4(r5)
/* 81348714 00016B14  4C C6 31 82 */	crclr cr1eq
/* 81348718 00016B18  48 1E 5F 89 */	bl OSReport
/* 8134871C 00016B1C  3C 60 81 63 */	lis r3, lbl_81635B82@ha
/* 81348720 00016B20  38 80 00 20 */	li r4, 0x20
/* 81348724 00016B24  38 63 5B 82 */	addi r3, r3, lbl_81635B82@l
/* 81348728 00016B28  4C C6 31 82 */	crclr cr1eq
/* 8134872C 00016B2C  48 1E 5F 75 */	bl OSReport
/* 81348730 00016B30  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348734 00016B34  38 C0 00 00 */	li r6, 0x0
/* 81348738 00016B38  38 80 FF FF */	li r4, -0x1
/* 8134873C 00016B3C  38 00 00 02 */	li r0, 0x2
/* 81348740 00016B40  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348744 00016B44  90 C3 E6 40 */	stw r6, -0x19c0(r3)
/* 81348748 00016B48  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134874C 00016B4C  3C A3 00 02 */	addis r5, r3, 0x2
/* 81348750 00016B50  38 65 E6 4C */	subi r3, r5, 0x19b4
/* 81348754 00016B54  90 65 E6 44 */	stw r3, -0x19bc(r5)
/* 81348758 00016B58  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134875C 00016B5C  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348760 00016B60  90 C3 EA 20 */	stw r6, -0x15e0(r3)
/* 81348764 00016B64  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348768 00016B68  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134876C 00016B6C  90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 81348770 00016B70  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348774 00016B74  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348778 00016B78  90 83 EA 28 */	stw r4, -0x15d8(r3)
/* 8134877C 00016B7C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348780 00016B80  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348784 00016B84  90 83 EA 2C */	stw r4, -0x15d4(r3)
/* 81348788 00016B88  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134878C 00016B8C  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348790 00016B90  90 83 EA 30 */	stw r4, -0x15d0(r3)
/* 81348794 00016B94  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348798 00016B98  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134879C 00016B9C  90 83 EA 34 */	stw r4, -0x15cc(r3)
/* 813487A0 00016BA0  90 CD A6 98 */	stw r6, lbl_816986D8@sda21(r0)
/* 813487A4 00016BA4  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487A8 00016BA8  3C 63 00 04 */	addis r3, r3, 0x4
/* 813487AC 00016BAC  90 03 EA 54 */	stw r0, -0x15ac(r3)
/* 813487B0 00016BB0  93 E3 EA 50 */	stw r31, -0x15b0(r3)
/* 813487B4 00016BB4  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487B8 00016BB8  3C 63 00 04 */	addis r3, r3, 0x4
/* 813487BC 00016BBC  90 C3 EA 58 */	stw r6, -0x15a8(r3)
/* 813487C0 00016BC0  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487C4 00016BC4  3C 63 00 04 */	addis r3, r3, 0x4
/* 813487C8 00016BC8  90 83 EA 5C */	stw r4, -0x15a4(r3)
/* 813487CC 00016BCC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813487D0 00016BD0  98 DC 00 04 */	stb r6, 0x4(r28)
/* 813487D4 00016BD4  3C 63 00 04 */	addis r3, r3, 0x4
/* 813487D8 00016BD8  38 63 E6 B0 */	subi r3, r3, 0x1950
/* 813487DC 00016BDC  48 1E C4 75 */	bl fn_81534C50
/* 813487E0 00016BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 813487E4 00016BE4  48 2B 0D 29 */	bl _restgpr_27
/* 813487E8 00016BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813487EC 00016BEC  7C 08 03 A6 */	mtlr r0
/* 813487F0 00016BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 813487F4 00016BF4  4E 80 00 20 */	blr
.endfn create__Q23ipl12NandSDWorkerFPvPvPvi

# .text:0x40C | 0x813487F8 | size: 0x10
# ipl::NandSDWorker::is_terminated()
.fn is_terminated__Q23ipl12NandSDWorkerFv, global
/* 813487F8 00016BF8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 813487FC 00016BFC  7C 00 00 34 */	cntlzw r0, r0
/* 81348800 00016C00  54 03 D9 7E */	srwi r3, r0, 5
/* 81348804 00016C04  4E 80 00 20 */	blr
.endfn is_terminated__Q23ipl12NandSDWorkerFv

# .text:0x41C | 0x81348808 | size: 0x2C
# ipl::NandSDWorker::is_working()
.fn is_working__Q23ipl12NandSDWorkerFv, global
/* 81348808 00016C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134880C 00016C0C  7C 08 02 A6 */	mflr r0
/* 81348810 00016C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348814 00016C14  48 00 9F A5 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 81348818 00016C18  38 03 FF FF */	subi r0, r3, 0x1
/* 8134881C 00016C1C  7C 00 00 34 */	cntlzw r0, r0
/* 81348820 00016C20  54 03 D9 7E */	srwi r3, r0, 5
/* 81348824 00016C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348828 00016C28  7C 08 03 A6 */	mtlr r0
/* 8134882C 00016C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 81348830 00016C30  4E 80 00 20 */	blr
.endfn is_working__Q23ipl12NandSDWorkerFv

# .text:0x448 | 0x81348834 | size: 0x50
# ipl::NandSDWorker::get_async_result()
.fn get_async_result__Q23ipl12NandSDWorkerFv, global
/* 81348834 00016C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348838 00016C38  7C 08 02 A6 */	mflr r0
/* 8134883C 00016C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348840 00016C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348844 00016C44  7C 7F 1B 78 */	mr r31, r3
/* 81348848 00016C48  48 00 9F 71 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 8134884C 00016C4C  38 03 FF FF */	subi r0, r3, 0x1
/* 81348850 00016C50  7C 00 00 34 */	cntlzw r0, r0
/* 81348854 00016C54  54 00 D9 7F */	srwi. r0, r0, 5
/* 81348858 00016C58  41 82 00 0C */	beq .L_81348864
/* 8134885C 00016C5C  38 60 FF FF */	li r3, -0x1
/* 81348860 00016C60  48 00 00 10 */	b .L_81348870
.L_81348864:
/* 81348864 00016C64  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81348868 00016C68  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134886C 00016C6C  80 63 EA 24 */	lwz r3, -0x15dc(r3)
.L_81348870:
/* 81348870 00016C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348874 00016C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348878 00016C78  7C 08 03 A6 */	mtlr r0
/* 8134887C 00016C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 81348880 00016C80  4E 80 00 20 */	blr
.endfn get_async_result__Q23ipl12NandSDWorkerFv

# .text:0x498 | 0x81348884 | size: 0x8
# ipl::NandSDWorker::get_sd_state()
.fn get_sd_state__Q23ipl12NandSDWorkerFv, global
/* 81348884 00016C84  80 6D A6 98 */	lwz r3, lbl_816986D8@sda21(r0)
/* 81348888 00016C88  4E 80 00 20 */	blr
.endfn get_sd_state__Q23ipl12NandSDWorkerFv

# .text:0x4A0 | 0x8134888C | size: 0x10
# ipl::NandSDWorker::get_nand_save_num()
.fn get_nand_save_num__Q23ipl12NandSDWorkerFv, global
/* 8134888C 00016C8C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348890 00016C90  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348894 00016C94  80 63 EA 28 */	lwz r3, -0x15d8(r3)
/* 81348898 00016C98  4E 80 00 20 */	blr
.endfn get_nand_save_num__Q23ipl12NandSDWorkerFv

# .text:0x4B0 | 0x8134889C | size: 0x10
# ipl::NandSDWorker::get_nand_app_num()
.fn get_nand_app_num__Q23ipl12NandSDWorkerFv, global
/* 8134889C 00016C9C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 813488A0 00016CA0  3C 63 00 04 */	addis r3, r3, 0x4
/* 813488A4 00016CA4  80 63 EA 2C */	lwz r3, -0x15d4(r3)
/* 813488A8 00016CA8  4E 80 00 20 */	blr
.endfn get_nand_app_num__Q23ipl12NandSDWorkerFv

# .text:0x4C0 | 0x813488AC | size: 0x48
# ipl::NandSDWorker::get_cached_nand_save_banner(unsigned long long)
.fn get_cached_nand_save_banner__Q23ipl12NandSDWorkerFUx, global
/* 813488AC 00016CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813488B0 00016CB0  7C 08 02 A6 */	mflr r0
/* 813488B4 00016CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813488B8 00016CB8  80 83 00 00 */	lwz r4, 0x0(r3)
/* 813488BC 00016CBC  3C 84 00 02 */	addis r4, r4, 0x2
/* 813488C0 00016CC0  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 813488C4 00016CC4  48 00 A2 F1 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 813488C8 00016CC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813488CC 00016CCC  41 82 00 14 */	beq .L_813488E0
/* 813488D0 00016CD0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 813488D4 00016CD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813488D8 00016CD8  41 82 00 08 */	beq .L_813488E0
/* 813488DC 00016CDC  48 00 00 08 */	b .L_813488E4
.L_813488E0:
/* 813488E0 00016CE0  38 60 00 00 */	li r3, 0x0
.L_813488E4:
/* 813488E4 00016CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813488E8 00016CE8  7C 08 03 A6 */	mtlr r0
/* 813488EC 00016CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 813488F0 00016CF0  4E 80 00 20 */	blr
.endfn get_cached_nand_save_banner__Q23ipl12NandSDWorkerFUx

# .text:0x508 | 0x813488F4 | size: 0x64
# ipl::NandSDWorker::get_cached_nand_app_thumbnail(unsigned long long, unsigned long*)
.fn get_cached_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUl, global
/* 813488F4 00016CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813488F8 00016CF8  7C 08 02 A6 */	mflr r0
/* 813488FC 00016CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348900 00016D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348904 00016D04  7C FF 3B 78 */	mr r31, r7
/* 81348908 00016D08  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134890C 00016D0C  3C 84 00 02 */	addis r4, r4, 0x2
/* 81348910 00016D10  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348914 00016D14  48 00 A4 E5 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348918 00016D18  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134891C 00016D1C  41 82 00 24 */	beq .L_81348940
/* 81348920 00016D20  80 03 00 0C */	lwz r0, 0xc(r3)
/* 81348924 00016D24  2C 00 FF FF */	cmpwi r0, -0x1
/* 81348928 00016D28  41 82 00 18 */	beq .L_81348940
/* 8134892C 00016D2C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81348930 00016D30  41 82 00 08 */	beq .L_81348938
/* 81348934 00016D34  90 1F 00 00 */	stw r0, 0x0(r31)
.L_81348938:
/* 81348938 00016D38  38 63 00 18 */	addi r3, r3, 0x18
/* 8134893C 00016D3C  48 00 00 08 */	b .L_81348944
.L_81348940:
/* 81348940 00016D40  38 60 00 00 */	li r3, 0x0
.L_81348944:
/* 81348944 00016D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348948 00016D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134894C 00016D4C  7C 08 03 A6 */	mtlr r0
/* 81348950 00016D50  38 21 00 10 */	addi r1, r1, 0x10
/* 81348954 00016D54  4E 80 00 20 */	blr
.endfn get_cached_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUl

# .text:0x56C | 0x81348958 | size: 0x50
# ipl::NandSDWorker::get_cached_nand_app_meta_header(unsigned long long)
.fn get_cached_nand_app_meta_header__Q23ipl12NandSDWorkerFUx, global
/* 81348958 00016D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134895C 00016D5C  7C 08 02 A6 */	mflr r0
/* 81348960 00016D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348964 00016D64  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348968 00016D68  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134896C 00016D6C  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348970 00016D70  48 00 A4 89 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348974 00016D74  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348978 00016D78  41 82 00 1C */	beq .L_81348994
/* 8134897C 00016D7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 81348980 00016D80  2C 00 FF FF */	cmpwi r0, -0x1
/* 81348984 00016D84  41 82 00 10 */	beq .L_81348994
/* 81348988 00016D88  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134898C 00016D8C  38 63 90 18 */	subi r3, r3, 0x6fe8
/* 81348990 00016D90  48 00 00 08 */	b .L_81348998
.L_81348994:
/* 81348994 00016D94  38 60 00 00 */	li r3, 0x0
.L_81348998:
/* 81348998 00016D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134899C 00016D9C  7C 08 03 A6 */	mtlr r0
/* 813489A0 00016DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 813489A4 00016DA4  4E 80 00 20 */	blr
.endfn get_cached_nand_app_meta_header__Q23ipl12NandSDWorkerFUx

# .text:0x5BC | 0x813489A8 | size: 0x6C
# ipl::NandSDWorker::get_cached_sd_app_meta_header(unsigned long)
.fn get_cached_sd_app_meta_header__Q23ipl12NandSDWorkerFUl, global
/* 813489A8 00016DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813489AC 00016DAC  7C 08 02 A6 */	mflr r0
/* 813489B0 00016DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813489B4 00016DB4  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 813489B8 00016DB8  2C 00 00 06 */	cmpwi r0, 0x6
/* 813489BC 00016DBC  41 82 00 0C */	beq .L_813489C8
/* 813489C0 00016DC0  38 60 00 00 */	li r3, 0x0
/* 813489C4 00016DC4  48 00 00 40 */	b .L_81348A04
.L_813489C8:
/* 813489C8 00016DC8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813489CC 00016DCC  7C 86 23 78 */	mr r6, r4
/* 813489D0 00016DD0  38 A0 00 00 */	li r5, 0x0
/* 813489D4 00016DD4  3C 87 00 02 */	addis r4, r7, 0x2
/* 813489D8 00016DD8  38 84 E6 84 */	subi r4, r4, 0x197c
/* 813489DC 00016DDC  48 00 A4 1D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 813489E0 00016DE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813489E4 00016DE4  41 82 00 1C */	beq .L_81348A00
/* 813489E8 00016DE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 813489EC 00016DEC  2C 00 FF FF */	cmpwi r0, -0x1
/* 813489F0 00016DF0  41 82 00 10 */	beq .L_81348A00
/* 813489F4 00016DF4  3C 63 00 02 */	addis r3, r3, 0x2
/* 813489F8 00016DF8  38 63 90 18 */	subi r3, r3, 0x6fe8
/* 813489FC 00016DFC  48 00 00 08 */	b .L_81348A04
.L_81348A00:
/* 81348A00 00016E00  38 60 00 00 */	li r3, 0x0
.L_81348A04:
/* 81348A04 00016E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348A08 00016E08  7C 08 03 A6 */	mtlr r0
/* 81348A0C 00016E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 81348A10 00016E10  4E 80 00 20 */	blr
.endfn get_cached_sd_app_meta_header__Q23ipl12NandSDWorkerFUl

# .text:0x628 | 0x81348A14 | size: 0x4C
# ipl::NandSDWorker::get_cached_nand_save_size(unsigned long long)
.fn get_cached_nand_save_size__Q23ipl12NandSDWorkerFUx, global
/* 81348A14 00016E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348A18 00016E18  7C 08 02 A6 */	mflr r0
/* 81348A1C 00016E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348A20 00016E20  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348A24 00016E24  3C 84 00 02 */	addis r4, r4, 0x2
/* 81348A28 00016E28  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 81348A2C 00016E2C  48 00 A1 89 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348A30 00016E30  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348A34 00016E34  41 82 00 18 */	beq .L_81348A4C
/* 81348A38 00016E38  3C 63 00 01 */	addis r3, r3, 0x1
/* 81348A3C 00016E3C  80 63 F0 A8 */	lwz r3, -0xf58(r3)
/* 81348A40 00016E40  2C 03 FF FF */	cmpwi r3, -0x1
/* 81348A44 00016E44  41 82 00 08 */	beq .L_81348A4C
/* 81348A48 00016E48  48 00 00 08 */	b .L_81348A50
.L_81348A4C:
/* 81348A4C 00016E4C  38 60 FF FF */	li r3, -0x1
.L_81348A50:
/* 81348A50 00016E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348A54 00016E54  7C 08 03 A6 */	mtlr r0
/* 81348A58 00016E58  38 21 00 10 */	addi r1, r1, 0x10
/* 81348A5C 00016E5C  4E 80 00 20 */	blr
.endfn get_cached_nand_save_size__Q23ipl12NandSDWorkerFUx

# .text:0x674 | 0x81348A60 | size: 0x48
# ipl::NandSDWorker::get_cached_nand_app_size(unsigned long long)
.fn get_cached_nand_app_size__Q23ipl12NandSDWorkerFUx, global
/* 81348A60 00016E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348A64 00016E64  7C 08 02 A6 */	mflr r0
/* 81348A68 00016E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348A6C 00016E6C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348A70 00016E70  3C 84 00 02 */	addis r4, r4, 0x2
/* 81348A74 00016E74  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348A78 00016E78  48 00 A3 81 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348A7C 00016E7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348A80 00016E80  41 82 00 14 */	beq .L_81348A94
/* 81348A84 00016E84  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81348A88 00016E88  2C 03 FF FF */	cmpwi r3, -0x1
/* 81348A8C 00016E8C  41 82 00 08 */	beq .L_81348A94
/* 81348A90 00016E90  48 00 00 08 */	b .L_81348A98
.L_81348A94:
/* 81348A94 00016E94  38 60 FF FF */	li r3, -0x1
.L_81348A98:
/* 81348A98 00016E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348A9C 00016E9C  7C 08 03 A6 */	mtlr r0
/* 81348AA0 00016EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 81348AA4 00016EA4  4E 80 00 20 */	blr
.endfn get_cached_nand_app_size__Q23ipl12NandSDWorkerFUx

# .text:0x6BC | 0x81348AA8 | size: 0x24
# ipl::NandSDWorker::get_sd_save_num()
.fn get_sd_save_num__Q23ipl12NandSDWorkerFv, global
/* 81348AA8 00016EA8  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348AAC 00016EAC  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348AB0 00016EB0  40 82 00 14 */	bne .L_81348AC4
/* 81348AB4 00016EB4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348AB8 00016EB8  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348ABC 00016EBC  80 63 EA 30 */	lwz r3, -0x15d0(r3)
/* 81348AC0 00016EC0  4E 80 00 20 */	blr
.L_81348AC4:
/* 81348AC4 00016EC4  38 60 FF FF */	li r3, -0x1
/* 81348AC8 00016EC8  4E 80 00 20 */	blr
.endfn get_sd_save_num__Q23ipl12NandSDWorkerFv

# .text:0x6E0 | 0x81348ACC | size: 0x24
# ipl::NandSDWorker::get_sd_app_num()
.fn get_sd_app_num__Q23ipl12NandSDWorkerFv, global
/* 81348ACC 00016ECC  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348AD0 00016ED0  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348AD4 00016ED4  40 82 00 14 */	bne .L_81348AE8
/* 81348AD8 00016ED8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348ADC 00016EDC  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348AE0 00016EE0  80 63 EA 34 */	lwz r3, -0x15cc(r3)
/* 81348AE4 00016EE4  4E 80 00 20 */	blr
.L_81348AE8:
/* 81348AE8 00016EE8  38 60 FF FF */	li r3, -0x1
/* 81348AEC 00016EEC  4E 80 00 20 */	blr
.endfn get_sd_app_num__Q23ipl12NandSDWorkerFv

# .text:0x704 | 0x81348AF0 | size: 0x64
# ipl::NandSDWorker::get_cached_sd_save_banner(unsigned long)
.fn get_cached_sd_save_banner__Q23ipl12NandSDWorkerFUl, global
/* 81348AF0 00016EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348AF4 00016EF4  7C 08 02 A6 */	mflr r0
/* 81348AF8 00016EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348AFC 00016EFC  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348B00 00016F00  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348B04 00016F04  41 82 00 0C */	beq .L_81348B10
/* 81348B08 00016F08  38 60 00 00 */	li r3, 0x0
/* 81348B0C 00016F0C  48 00 00 38 */	b .L_81348B44
.L_81348B10:
/* 81348B10 00016F10  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348B14 00016F14  7C 86 23 78 */	mr r6, r4
/* 81348B18 00016F18  38 A0 00 00 */	li r5, 0x0
/* 81348B1C 00016F1C  3C 87 00 02 */	addis r4, r7, 0x2
/* 81348B20 00016F20  38 84 E6 6C */	subi r4, r4, 0x1994
/* 81348B24 00016F24  48 00 A0 91 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348B28 00016F28  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348B2C 00016F2C  41 82 00 14 */	beq .L_81348B40
/* 81348B30 00016F30  80 03 00 00 */	lwz r0, 0x0(r3)
/* 81348B34 00016F34  2C 00 00 00 */	cmpwi r0, 0x0
/* 81348B38 00016F38  41 82 00 08 */	beq .L_81348B40
/* 81348B3C 00016F3C  48 00 00 08 */	b .L_81348B44
.L_81348B40:
/* 81348B40 00016F40  38 60 00 00 */	li r3, 0x0
.L_81348B44:
/* 81348B44 00016F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348B48 00016F48  7C 08 03 A6 */	mtlr r0
/* 81348B4C 00016F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 81348B50 00016F50  4E 80 00 20 */	blr
.endfn get_cached_sd_save_banner__Q23ipl12NandSDWorkerFUl

# .text:0x768 | 0x81348B54 | size: 0x80
# ipl::NandSDWorker::get_cached_sd_app_thumbnail(unsigned long, unsigned long*)
.fn get_cached_sd_app_thumbnail__Q23ipl12NandSDWorkerFUlPUl, global
/* 81348B54 00016F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348B58 00016F58  7C 08 02 A6 */	mflr r0
/* 81348B5C 00016F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348B60 00016F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348B64 00016F64  7C BF 2B 78 */	mr r31, r5
/* 81348B68 00016F68  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348B6C 00016F6C  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348B70 00016F70  41 82 00 0C */	beq .L_81348B7C
/* 81348B74 00016F74  38 60 00 00 */	li r3, 0x0
/* 81348B78 00016F78  48 00 00 48 */	b .L_81348BC0
.L_81348B7C:
/* 81348B7C 00016F7C  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348B80 00016F80  7C 86 23 78 */	mr r6, r4
/* 81348B84 00016F84  38 A0 00 00 */	li r5, 0x0
/* 81348B88 00016F88  3C 87 00 02 */	addis r4, r7, 0x2
/* 81348B8C 00016F8C  38 84 E6 84 */	subi r4, r4, 0x197c
/* 81348B90 00016F90  48 00 A2 69 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348B94 00016F94  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348B98 00016F98  41 82 00 24 */	beq .L_81348BBC
/* 81348B9C 00016F9C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 81348BA0 00016FA0  2C 00 FF FF */	cmpwi r0, -0x1
/* 81348BA4 00016FA4  41 82 00 18 */	beq .L_81348BBC
/* 81348BA8 00016FA8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81348BAC 00016FAC  41 82 00 08 */	beq .L_81348BB4
/* 81348BB0 00016FB0  90 1F 00 00 */	stw r0, 0x0(r31)
.L_81348BB4:
/* 81348BB4 00016FB4  38 63 00 18 */	addi r3, r3, 0x18
/* 81348BB8 00016FB8  48 00 00 08 */	b .L_81348BC0
.L_81348BBC:
/* 81348BBC 00016FBC  38 60 00 00 */	li r3, 0x0
.L_81348BC0:
/* 81348BC0 00016FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348BC4 00016FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348BC8 00016FC8  7C 08 03 A6 */	mtlr r0
/* 81348BCC 00016FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 81348BD0 00016FD0  4E 80 00 20 */	blr
.endfn get_cached_sd_app_thumbnail__Q23ipl12NandSDWorkerFUlPUl

# .text:0x7E8 | 0x81348BD4 | size: 0x68
# ipl::NandSDWorker::get_cached_sd_save_size(unsigned long)
.fn get_cached_sd_save_size__Q23ipl12NandSDWorkerFUl, global
/* 81348BD4 00016FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348BD8 00016FD8  7C 08 02 A6 */	mflr r0
/* 81348BDC 00016FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348BE0 00016FE0  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348BE4 00016FE4  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348BE8 00016FE8  41 82 00 0C */	beq .L_81348BF4
/* 81348BEC 00016FEC  38 60 00 00 */	li r3, 0x0
/* 81348BF0 00016FF0  48 00 00 3C */	b .L_81348C2C
.L_81348BF4:
/* 81348BF4 00016FF4  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348BF8 00016FF8  7C 86 23 78 */	mr r6, r4
/* 81348BFC 00016FFC  38 A0 00 00 */	li r5, 0x0
/* 81348C00 00017000  3C 87 00 02 */	addis r4, r7, 0x2
/* 81348C04 00017004  38 84 E6 6C */	subi r4, r4, 0x1994
/* 81348C08 00017008  48 00 9F AD */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348C0C 0001700C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348C10 00017010  41 82 00 18 */	beq .L_81348C28
/* 81348C14 00017014  3C 63 00 01 */	addis r3, r3, 0x1
/* 81348C18 00017018  80 63 F0 A8 */	lwz r3, -0xf58(r3)
/* 81348C1C 0001701C  2C 03 FF FF */	cmpwi r3, -0x1
/* 81348C20 00017020  41 82 00 08 */	beq .L_81348C28
/* 81348C24 00017024  48 00 00 08 */	b .L_81348C2C
.L_81348C28:
/* 81348C28 00017028  38 60 FF FF */	li r3, -0x1
.L_81348C2C:
/* 81348C2C 0001702C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348C30 00017030  7C 08 03 A6 */	mtlr r0
/* 81348C34 00017034  38 21 00 10 */	addi r1, r1, 0x10
/* 81348C38 00017038  4E 80 00 20 */	blr
.endfn get_cached_sd_save_size__Q23ipl12NandSDWorkerFUl

# .text:0x850 | 0x81348C3C | size: 0x64
# ipl::NandSDWorker::get_cached_sd_app_size(unsigned long)
.fn get_cached_sd_app_size__Q23ipl12NandSDWorkerFUl, global
/* 81348C3C 0001703C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348C40 00017040  7C 08 02 A6 */	mflr r0
/* 81348C44 00017044  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348C48 00017048  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348C4C 0001704C  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348C50 00017050  41 82 00 0C */	beq .L_81348C5C
/* 81348C54 00017054  38 60 00 00 */	li r3, 0x0
/* 81348C58 00017058  48 00 00 38 */	b .L_81348C90
.L_81348C5C:
/* 81348C5C 0001705C  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348C60 00017060  7C 86 23 78 */	mr r6, r4
/* 81348C64 00017064  38 A0 00 00 */	li r5, 0x0
/* 81348C68 00017068  3C 87 00 02 */	addis r4, r7, 0x2
/* 81348C6C 0001706C  38 84 E6 84 */	subi r4, r4, 0x197c
/* 81348C70 00017070  48 00 A1 89 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81348C74 00017074  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348C78 00017078  41 82 00 14 */	beq .L_81348C8C
/* 81348C7C 0001707C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81348C80 00017080  2C 03 FF FF */	cmpwi r3, -0x1
/* 81348C84 00017084  41 82 00 08 */	beq .L_81348C8C
/* 81348C88 00017088  48 00 00 08 */	b .L_81348C90
.L_81348C8C:
/* 81348C8C 0001708C  38 60 FF FF */	li r3, -0x1
.L_81348C90:
/* 81348C90 00017090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348C94 00017094  7C 08 03 A6 */	mtlr r0
/* 81348C98 00017098  38 21 00 10 */	addi r1, r1, 0x10
/* 81348C9C 0001709C  4E 80 00 20 */	blr
.endfn get_cached_sd_app_size__Q23ipl12NandSDWorkerFUl

# .text:0x8B4 | 0x81348CA0 | size: 0x24
# ipl::NandSDWorker::is_sd_write_protected()
.fn is_sd_write_protected__Q23ipl12NandSDWorkerFv, global
/* 81348CA0 000170A0  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348CA4 000170A4  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348CA8 000170A8  40 82 00 14 */	bne .L_81348CBC
/* 81348CAC 000170AC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348CB0 000170B0  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348CB4 000170B4  80 63 EA 58 */	lwz r3, -0x15a8(r3)
/* 81348CB8 000170B8  4E 80 00 20 */	blr
.L_81348CBC:
/* 81348CBC 000170BC  38 60 00 00 */	li r3, 0x0
/* 81348CC0 000170C0  4E 80 00 20 */	blr
.endfn is_sd_write_protected__Q23ipl12NandSDWorkerFv

# .text:0x8D8 | 0x81348CC4 | size: 0x24
# ipl::NandSDWorker::get_sd_drive_letter()
.fn get_sd_drive_letter__Q23ipl12NandSDWorkerFv, global
/* 81348CC4 000170C4  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81348CC8 000170C8  2C 00 00 06 */	cmpwi r0, 0x6
/* 81348CCC 000170CC  40 82 00 14 */	bne .L_81348CE0
/* 81348CD0 000170D0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348CD4 000170D4  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348CD8 000170D8  88 63 E6 48 */	lbz r3, -0x19b8(r3)
/* 81348CDC 000170DC  4E 80 00 20 */	blr
.L_81348CE0:
/* 81348CE0 000170E0  38 60 00 00 */	li r3, 0x0
/* 81348CE4 000170E4  4E 80 00 20 */	blr
.endfn get_sd_drive_letter__Q23ipl12NandSDWorkerFv

# .text:0x8FC | 0x81348CE8 | size: 0x8
# ipl::NandSDWorker::startup_async()
.fn startup_async__Q23ipl12NandSDWorkerFv, global
/* 81348CE8 000170E8  38 80 00 02 */	li r4, 0x2
/* 81348CEC 000170EC  48 00 9A 0C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn startup_async__Q23ipl12NandSDWorkerFv

# .text:0x904 | 0x81348CF0 | size: 0x48
# ipl::NandSDWorker::terminate_async()
.fn terminate_async__Q23ipl12NandSDWorkerFv, global
/* 81348CF0 000170F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348CF4 000170F4  7C 08 02 A6 */	mflr r0
/* 81348CF8 000170F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348CFC 000170FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348D00 00017100  7C 7F 1B 78 */	mr r31, r3
/* 81348D04 00017104  48 00 9A B5 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 81348D08 00017108  38 03 FF FF */	subi r0, r3, 0x1
/* 81348D0C 0001710C  7C 00 00 34 */	cntlzw r0, r0
/* 81348D10 00017110  54 00 D9 7F */	srwi. r0, r0, 5
/* 81348D14 00017114  40 82 00 10 */	bne .L_81348D24
/* 81348D18 00017118  7F E3 FB 78 */	mr r3, r31
/* 81348D1C 0001711C  38 80 00 01 */	li r4, 0x1
/* 81348D20 00017120  48 00 99 D9 */	bl send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.L_81348D24:
/* 81348D24 00017124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348D28 00017128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348D2C 0001712C  7C 08 03 A6 */	mtlr r0
/* 81348D30 00017130  38 21 00 10 */	addi r1, r1, 0x10
/* 81348D34 00017134  4E 80 00 20 */	blr
.endfn terminate_async__Q23ipl12NandSDWorkerFv

# .text:0x94C | 0x81348D38 | size: 0x8
# ipl::NandSDWorker::mount_sd_async()
.fn mount_sd_async__Q23ipl12NandSDWorkerFv, global
/* 81348D38 00017138  38 80 00 03 */	li r4, 0x3
/* 81348D3C 0001713C  48 00 99 BC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn mount_sd_async__Q23ipl12NandSDWorkerFv

# .text:0x954 | 0x81348D40 | size: 0x14
# ipl::NandSDWorker::list_nand_save_async(unsigned long long*)
.fn list_nand_save_async__Q23ipl12NandSDWorkerFPUx, global
/* 81348D40 00017140  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D44 00017144  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D48 00017148  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D4C 0001714C  38 80 00 04 */	li r4, 0x4
/* 81348D50 00017150  48 00 99 A8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_nand_save_async__Q23ipl12NandSDWorkerFPUx

# .text:0x968 | 0x81348D54 | size: 0x24
# ipl::NandSDWorker::get_nand_save_banner_async(unsigned long long, WIISaveBannerFile*)
.fn get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile, global
/* 81348D54 00017154  81 03 00 00 */	lwz r8, 0x0(r3)
/* 81348D58 00017158  38 80 00 05 */	li r4, 0x5
/* 81348D5C 0001715C  3D 08 00 04 */	addis r8, r8, 0x4
/* 81348D60 00017160  90 C8 EA 4C */	stw r6, -0x15b4(r8)
/* 81348D64 00017164  90 A8 EA 48 */	stw r5, -0x15b8(r8)
/* 81348D68 00017168  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D6C 0001716C  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D70 00017170  90 E5 EA 38 */	stw r7, -0x15c8(r5)
/* 81348D74 00017174  48 00 99 84 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile

# .text:0x98C | 0x81348D78 | size: 0x14
# ipl::NandSDWorker::list_sd_save_async(unsigned long*)
.fn list_sd_save_async__Q23ipl12NandSDWorkerFPUl, global
/* 81348D78 00017178  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D7C 0001717C  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D80 00017180  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D84 00017184  38 80 00 06 */	li r4, 0x6
/* 81348D88 00017188  48 00 99 70 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_sd_save_async__Q23ipl12NandSDWorkerFPUl

# .text:0x9A0 | 0x81348D8C | size: 0x14
# ipl::NandSDWorker::list_sd_app_async(unsigned long*)
.fn list_sd_app_async__Q23ipl12NandSDWorkerFPUl, global
/* 81348D8C 0001718C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D90 00017190  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D94 00017194  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D98 00017198  38 80 00 17 */	li r4, 0x17
/* 81348D9C 0001719C  48 00 99 5C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_sd_app_async__Q23ipl12NandSDWorkerFPUl

# .text:0x9B4 | 0x81348DA0 | size: 0x28
# ipl::NandSDWorker::get_sd_save_banner_async(unsigned long, WIISaveBannerFile*)
.fn get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile, global
/* 81348DA0 000171A0  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348DA4 000171A4  38 00 00 00 */	li r0, 0x0
/* 81348DA8 000171A8  3C C6 00 04 */	addis r6, r6, 0x4
/* 81348DAC 000171AC  90 86 EA 4C */	stw r4, -0x15b4(r6)
/* 81348DB0 000171B0  38 80 00 07 */	li r4, 0x7
/* 81348DB4 000171B4  90 06 EA 48 */	stw r0, -0x15b8(r6)
/* 81348DB8 000171B8  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348DBC 000171BC  3C C6 00 04 */	addis r6, r6, 0x4
/* 81348DC0 000171C0  90 A6 EA 38 */	stw r5, -0x15c8(r6)
/* 81348DC4 000171C4  48 00 99 34 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile

# .text:0x9DC | 0x81348DC8 | size: 0x34
# ipl::NandSDWorker::get_sd_app_thumbnail_async(unsigned long, unsigned char*, ipl::channel::SChanMgrMetaHeader*)
.fn get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader, global
/* 81348DC8 000171C8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348DCC 000171CC  38 00 00 00 */	li r0, 0x0
/* 81348DD0 000171D0  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348DD4 000171D4  90 87 EA 4C */	stw r4, -0x15b4(r7)
/* 81348DD8 000171D8  38 80 00 1A */	li r4, 0x1a
/* 81348DDC 000171DC  90 07 EA 48 */	stw r0, -0x15b8(r7)
/* 81348DE0 000171E0  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348DE4 000171E4  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348DE8 000171E8  90 A7 EA 38 */	stw r5, -0x15c8(r7)
/* 81348DEC 000171EC  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348DF0 000171F0  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348DF4 000171F4  90 C5 EA 3C */	stw r6, -0x15c4(r5)
/* 81348DF8 000171F8  48 00 99 00 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader

# .text:0xA10 | 0x81348DFC | size: 0x34
.fn iplNandSD_81348DFC, global
/* 81348DFC 000171FC  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348E00 00017200  38 00 00 00 */	li r0, 0x0
/* 81348E04 00017204  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348E08 00017208  90 87 EA 4C */	stw r4, -0x15b4(r7)
/* 81348E0C 0001720C  38 80 00 29 */	li r4, 0x29
/* 81348E10 00017210  90 07 EA 48 */	stw r0, -0x15b8(r7)
/* 81348E14 00017214  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348E18 00017218  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348E1C 0001721C  90 A7 EA 38 */	stw r5, -0x15c8(r7)
/* 81348E20 00017220  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E24 00017224  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E28 00017228  90 C5 EA 3C */	stw r6, -0x15c4(r5)
/* 81348E2C 0001722C  48 00 98 CC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348DFC

# .text:0xA44 | 0x81348E30 | size: 0x14
.fn iplNandSD_81348E30, global
/* 81348E30 00017230  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E34 00017234  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E38 00017238  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348E3C 0001723C  38 80 00 2A */	li r4, 0x2a
/* 81348E40 00017240  48 00 98 B8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E30

# .text:0xA58 | 0x81348E44 | size: 0x14
.fn iplNandSD_81348E44, global
/* 81348E44 00017244  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E48 00017248  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E4C 0001724C  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348E50 00017250  38 80 00 2B */	li r4, 0x2b
/* 81348E54 00017254  48 00 98 A4 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E44

# .text:0xA6C | 0x81348E58 | size: 0x30
.fn iplNandSD_81348E58, global
/* 81348E58 00017258  81 23 00 00 */	lwz r9, 0x0(r3)
/* 81348E5C 0001725C  38 80 00 2C */	li r4, 0x2c
/* 81348E60 00017260  3D 29 00 04 */	addis r9, r9, 0x4
/* 81348E64 00017264  90 C9 EA 4C */	stw r6, -0x15b4(r9)
/* 81348E68 00017268  90 A9 EA 48 */	stw r5, -0x15b8(r9)
/* 81348E6C 0001726C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E70 00017270  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E74 00017274  90 E5 EA 38 */	stw r7, -0x15c8(r5)
/* 81348E78 00017278  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348E7C 0001727C  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348E80 00017280  91 05 EA 3C */	stw r8, -0x15c4(r5)
/* 81348E84 00017284  48 00 98 74 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E58

# .text:0xA9C | 0x81348E88 | size: 0x20
.fn iplNandSD_81348E88, global
/* 81348E88 00017288  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348E8C 0001728C  3C C6 00 04 */	addis r6, r6, 0x4
/* 81348E90 00017290  90 86 EA 38 */	stw r4, -0x15c8(r6)
/* 81348E94 00017294  38 80 00 2E */	li r4, 0x2e
/* 81348E98 00017298  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81348E9C 0001729C  3C C6 00 04 */	addis r6, r6, 0x4
/* 81348EA0 000172A0  90 A6 EA 3C */	stw r5, -0x15c4(r6)
/* 81348EA4 000172A4  48 00 98 54 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348E88

# .text:0xABC | 0x81348EA8 | size: 0x2C
.fn iplNandSD_81348EA8, global
/* 81348EA8 000172A8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348EAC 000172AC  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EB0 000172B0  90 87 EA 38 */	stw r4, -0x15c8(r7)
/* 81348EB4 000172B4  38 80 00 31 */	li r4, 0x31
/* 81348EB8 000172B8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348EBC 000172BC  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EC0 000172C0  90 A7 EA 3C */	stw r5, -0x15c4(r7)
/* 81348EC4 000172C4  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348EC8 000172C8  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348ECC 000172CC  90 C5 EA 40 */	stw r6, -0x15c0(r5)
/* 81348ED0 000172D0  48 00 98 28 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81348EA8

# .text:0xAE8 | 0x81348ED4 | size: 0x18
# ipl::NandSDWorker::get_nand_save_size_async(unsigned long long)
.fn get_nand_save_size_async__Q23ipl12NandSDWorkerFUx, global
/* 81348ED4 000172D4  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348ED8 000172D8  38 80 00 08 */	li r4, 0x8
/* 81348EDC 000172DC  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EE0 000172E0  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348EE4 000172E4  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348EE8 000172E8  48 00 98 10 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_save_size_async__Q23ipl12NandSDWorkerFUx

# .text:0xB00 | 0x81348EEC | size: 0x18
# ipl::NandSDWorker::get_nand_app_size_async(unsigned long long)
.fn get_nand_app_size_async__Q23ipl12NandSDWorkerFUx, global
/* 81348EEC 000172EC  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348EF0 000172F0  38 80 00 1B */	li r4, 0x1b
/* 81348EF4 000172F4  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348EF8 000172F8  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348EFC 000172FC  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348F00 00017300  48 00 97 F8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_app_size_async__Q23ipl12NandSDWorkerFUx

# .text:0xB18 | 0x81348F04 | size: 0x18
# ipl::NandSDWorker::delete_nand_save_async(unsigned long long)
.fn delete_nand_save_async__Q23ipl12NandSDWorkerFUx, global
/* 81348F04 00017304  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348F08 00017308  38 80 00 09 */	li r4, 0x9
/* 81348F0C 0001730C  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348F10 00017310  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348F14 00017314  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348F18 00017318  48 00 97 E0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_nand_save_async__Q23ipl12NandSDWorkerFUx

# .text:0xB30 | 0x81348F1C | size: 0x1C
# ipl::NandSDWorker::get_sd_save_size_async(unsigned long)
.fn get_sd_save_size_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F1C 0001731C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F20 00017320  38 00 00 00 */	li r0, 0x0
/* 81348F24 00017324  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F28 00017328  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F2C 0001732C  38 80 00 0A */	li r4, 0xa
/* 81348F30 00017330  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F34 00017334  48 00 97 C4 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_save_size_async__Q23ipl12NandSDWorkerFUl

# .text:0xB4C | 0x81348F38 | size: 0x1C
# ipl::NandSDWorker::get_sd_app_size_async(unsigned long)
.fn get_sd_app_size_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F38 00017338  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F3C 0001733C  38 00 00 00 */	li r0, 0x0
/* 81348F40 00017340  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F44 00017344  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F48 00017348  38 80 00 19 */	li r4, 0x19
/* 81348F4C 0001734C  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F50 00017350  48 00 97 A8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_app_size_async__Q23ipl12NandSDWorkerFUl

# .text:0xB68 | 0x81348F54 | size: 0x1C
# ipl::NandSDWorker::delete_sd_save_async(unsigned long)
.fn delete_sd_save_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F54 00017354  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F58 00017358  38 00 00 00 */	li r0, 0x0
/* 81348F5C 0001735C  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F60 00017360  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F64 00017364  38 80 00 0B */	li r4, 0xb
/* 81348F68 00017368  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F6C 0001736C  48 00 97 8C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_sd_save_async__Q23ipl12NandSDWorkerFUl

# .text:0xB84 | 0x81348F70 | size: 0x1C
# ipl::NandSDWorker::delete_sd_app_async(unsigned long)
.fn delete_sd_app_async__Q23ipl12NandSDWorkerFUl, global
/* 81348F70 00017370  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348F74 00017374  38 00 00 00 */	li r0, 0x0
/* 81348F78 00017378  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348F7C 0001737C  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348F80 00017380  38 80 00 18 */	li r4, 0x18
/* 81348F84 00017384  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348F88 00017388  48 00 97 70 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_sd_app_async__Q23ipl12NandSDWorkerFUl

# .text:0xBA0 | 0x81348F8C | size: 0x8
# ipl::NandSDWorker::initialize_nand_async()
.fn initialize_nand_async__Q23ipl12NandSDWorkerFv, global
/* 81348F8C 0001738C  38 80 00 0C */	li r4, 0xc
/* 81348F90 00017390  48 00 97 68 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn initialize_nand_async__Q23ipl12NandSDWorkerFv

# .text:0xBA8 | 0x81348F94 | size: 0x8
# ipl::NandSDWorker::get_nand_user_free_area_async()
.fn get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv, global
/* 81348F94 00017394  38 80 00 0D */	li r4, 0xd
/* 81348F98 00017398  48 00 97 60 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv

# .text:0xBB0 | 0x81348F9C | size: 0x18
# ipl::NandSDWorker::copy_nand_save_to_sd_async(unsigned long long)
.fn copy_nand_save_to_sd_async__Q23ipl12NandSDWorkerFUx, global
/* 81348F9C 0001739C  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81348FA0 000173A0  38 80 00 0E */	li r4, 0xe
/* 81348FA4 000173A4  3C E7 00 04 */	addis r7, r7, 0x4
/* 81348FA8 000173A8  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81348FAC 000173AC  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81348FB0 000173B0  48 00 97 48 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_nand_save_to_sd_async__Q23ipl12NandSDWorkerFUx

# .text:0xBC8 | 0x81348FB4 | size: 0x1C
# ipl::NandSDWorker::copy_sd_save_to_nand_async(unsigned long)
.fn copy_sd_save_to_nand_async__Q23ipl12NandSDWorkerFUl, global
/* 81348FB4 000173B4  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348FB8 000173B8  38 00 00 00 */	li r0, 0x0
/* 81348FBC 000173BC  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348FC0 000173C0  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81348FC4 000173C4  38 80 00 0F */	li r4, 0xf
/* 81348FC8 000173C8  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81348FCC 000173CC  48 00 97 2C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_sd_save_to_nand_async__Q23ipl12NandSDWorkerFUl

# .text:0xBE4 | 0x81348FD0 | size: 0x8
# ipl::NandSDWorker::format_sd_async()
.fn format_sd_async__Q23ipl12NandSDWorkerFv, global
/* 81348FD0 000173D0  38 80 00 10 */	li r4, 0x10
/* 81348FD4 000173D4  48 00 97 24 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn format_sd_async__Q23ipl12NandSDWorkerFv

# .text:0xBEC | 0x81348FD8 | size: 0x14
# ipl::NandSDWorker::get_sd_free_area_async()
.fn get_sd_free_area_async__Q23ipl12NandSDWorkerFv, global
/* 81348FD8 000173D8  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348FDC 000173DC  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348FE0 000173E0  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348FE4 000173E4  38 80 00 11 */	li r4, 0x11
/* 81348FE8 000173E8  48 00 97 10 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_sd_free_area_async__Q23ipl12NandSDWorkerFv

# .text:0xC00 | 0x81348FEC | size: 0x14
# ipl::NandSDWorker::list_nand_app_async(unsigned long long*)
.fn list_nand_app_async__Q23ipl12NandSDWorkerFPUx, global
/* 81348FEC 000173EC  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348FF0 000173F0  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348FF4 000173F4  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348FF8 000173F8  38 80 00 12 */	li r4, 0x12
/* 81348FFC 000173FC  48 00 96 FC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn list_nand_app_async__Q23ipl12NandSDWorkerFPUx

# .text:0xC14 | 0x81349000 | size: 0x20
.fn iplNandSD_81349000, global
/* 81349000 00017400  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81349004 00017404  3C C6 00 04 */	addis r6, r6, 0x4
/* 81349008 00017408  90 86 EA 38 */	stw r4, -0x15c8(r6)
/* 8134900C 0001740C  38 80 00 2D */	li r4, 0x2d
/* 81349010 00017410  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81349014 00017414  3C C6 00 04 */	addis r6, r6, 0x4
/* 81349018 00017418  90 A6 EA 3C */	stw r5, -0x15c4(r6)
/* 8134901C 0001741C  48 00 96 DC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349000

# .text:0xC34 | 0x81349020 | size: 0x30
# ipl::NandSDWorker::get_nand_app_thumbnail_async(unsigned long long, void*, ipl::channel::SChanMgrMetaHeader*)
.fn get_nand_app_thumbnail_async__Q23ipl12NandSDWorkerFUxPvPQ33ipl7channel18SChanMgrMetaHeader, global
/* 81349020 00017420  81 23 00 00 */	lwz r9, 0x0(r3)
/* 81349024 00017424  38 80 00 13 */	li r4, 0x13
/* 81349028 00017428  3D 29 00 04 */	addis r9, r9, 0x4
/* 8134902C 0001742C  90 C9 EA 4C */	stw r6, -0x15b4(r9)
/* 81349030 00017430  90 A9 EA 48 */	stw r5, -0x15b8(r9)
/* 81349034 00017434  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349038 00017438  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134903C 0001743C  90 E5 EA 38 */	stw r7, -0x15c8(r5)
/* 81349040 00017440  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349044 00017444  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349048 00017448  91 05 EA 3C */	stw r8, -0x15c4(r5)
/* 8134904C 0001744C  48 00 96 AC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn get_nand_app_thumbnail_async__Q23ipl12NandSDWorkerFUxPvPQ33ipl7channel18SChanMgrMetaHeader

# .text:0xC64 | 0x81349050 | size: 0x28
# ipl::NandSDWorker::delete_nand_app_async(unsigned long long)
.fn delete_nand_app_async__Q23ipl12NandSDWorkerFUx, global
/* 81349050 00017450  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81349054 00017454  2C 07 00 00 */	cmpwi r7, 0x0
/* 81349058 00017458  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134905C 0001745C  90 C4 EA 4C */	stw r6, -0x15b4(r4)
/* 81349060 00017460  90 A4 EA 48 */	stw r5, -0x15b8(r4)
/* 81349064 00017464  41 82 00 0C */	beq .L_81349070
/* 81349068 00017468  38 80 00 30 */	li r4, 0x30
/* 8134906C 0001746C  48 00 96 8C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.L_81349070:
/* 81349070 00017470  38 80 00 14 */	li r4, 0x14
/* 81349074 00017474  48 00 96 84 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn delete_nand_app_async__Q23ipl12NandSDWorkerFUx

# .text:0xC8C | 0x81349078 | size: 0x20
# ipl::NandSDWorker::copy_nand_app_to_sd_async(unsigned long long)
.fn copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx, global
/* 81349078 00017478  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8134907C 0001747C  38 00 00 00 */	li r0, 0x0
/* 81349080 00017480  38 80 00 15 */	li r4, 0x15
/* 81349084 00017484  3C E7 00 04 */	addis r7, r7, 0x4
/* 81349088 00017488  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 8134908C 0001748C  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81349090 00017490  90 0D A6 9C */	stw r0, lbl_816986DC@sda21(r0)
/* 81349094 00017494  48 00 96 64 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx

# .text:0xCAC | 0x81349098 | size: 0x30
# ipl::NandSDWorker::copy_sd_app_to_nand_async(unsigned long)
.fn copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl, global
/* 81349098 00017498  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134909C 0001749C  2C 05 00 00 */	cmpwi r5, 0x0
/* 813490A0 000174A0  38 00 00 00 */	li r0, 0x0
/* 813490A4 000174A4  3C A6 00 04 */	addis r5, r6, 0x4
/* 813490A8 000174A8  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 813490AC 000174AC  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 813490B0 000174B0  90 0D A6 9C */	stw r0, lbl_816986DC@sda21(r0)
/* 813490B4 000174B4  41 82 00 0C */	beq .L_813490C0
/* 813490B8 000174B8  38 80 00 2F */	li r4, 0x2f
/* 813490BC 000174BC  48 00 96 3C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.L_813490C0:
/* 813490C0 000174C0  38 80 00 16 */	li r4, 0x16
/* 813490C4 000174C4  48 00 96 34 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl

# .text:0xCDC | 0x813490C8 | size: 0x18
# ipl::NandSDWorker::nocopy_exist_nand_save_async(unsigned long long)
.fn nocopy_exist_nand_save_async__Q23ipl12NandSDWorkerFUx, global
/* 813490C8 000174C8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813490CC 000174CC  38 80 00 1C */	li r4, 0x1c
/* 813490D0 000174D0  3C E7 00 04 */	addis r7, r7, 0x4
/* 813490D4 000174D4  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813490D8 000174D8  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813490DC 000174DC  48 00 96 1C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nocopy_exist_nand_save_async__Q23ipl12NandSDWorkerFUx

# .text:0xCF4 | 0x813490E0 | size: 0x18
# ipl::NandSDWorker::nand_save_exist_async(unsigned long long)
.fn nand_save_exist_async__Q23ipl12NandSDWorkerFUx, global
/* 813490E0 000174E0  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813490E4 000174E4  38 80 00 1D */	li r4, 0x1d
/* 813490E8 000174E8  3C E7 00 04 */	addis r7, r7, 0x4
/* 813490EC 000174EC  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813490F0 000174F0  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813490F4 000174F4  48 00 96 04 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nand_save_exist_async__Q23ipl12NandSDWorkerFUx

# .text:0xD0C | 0x813490F8 | size: 0x1C
# ipl::NandSDWorker::nand_save_exist_lo_async(unsigned long)
.fn nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl, global
/* 813490F8 000174F8  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813490FC 000174FC  38 00 00 00 */	li r0, 0x0
/* 81349100 00017500  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349104 00017504  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349108 00017508  38 80 00 1E */	li r4, 0x1e
/* 8134910C 0001750C  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349110 00017510  48 00 95 E8 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl

# .text:0xD28 | 0x81349114 | size: 0x18
# ipl::NandSDWorker::nand_app_exist_async(unsigned long long)
.fn nand_app_exist_async__Q23ipl12NandSDWorkerFUx, global
/* 81349114 00017514  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81349118 00017518  38 80 00 1F */	li r4, 0x1f
/* 8134911C 0001751C  3C E7 00 04 */	addis r7, r7, 0x4
/* 81349120 00017520  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81349124 00017524  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81349128 00017528  48 00 95 D0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn nand_app_exist_async__Q23ipl12NandSDWorkerFUx

# .text:0xD40 | 0x8134912C | size: 0x1C
# ipl::NandSDWorker::sd_save_exist_async(unsigned long)
.fn sd_save_exist_async__Q23ipl12NandSDWorkerFUl, global
/* 8134912C 0001752C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349130 00017530  38 00 00 00 */	li r0, 0x0
/* 81349134 00017534  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349138 00017538  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 8134913C 0001753C  38 80 00 20 */	li r4, 0x20
/* 81349140 00017540  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349144 00017544  48 00 95 B4 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn sd_save_exist_async__Q23ipl12NandSDWorkerFUl

# .text:0xD5C | 0x81349148 | size: 0x1C
# ipl::NandSDWorker::sd_app_exist_async(unsigned long)
.fn sd_app_exist_async__Q23ipl12NandSDWorkerFUl, global
/* 81349148 00017548  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134914C 0001754C  38 00 00 00 */	li r0, 0x0
/* 81349150 00017550  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349154 00017554  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349158 00017558  38 80 00 21 */	li r4, 0x21
/* 8134915C 0001755C  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349160 00017560  48 00 95 98 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn sd_app_exist_async__Q23ipl12NandSDWorkerFUl

# .text:0xD78 | 0x81349164 | size: 0x1C
.fn iplNandSD_81349164, global
/* 81349164 00017564  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349168 00017568  38 00 00 00 */	li r0, 0x0
/* 8134916C 0001756C  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349170 00017570  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349174 00017574  38 80 00 22 */	li r4, 0x22
/* 81349178 00017578  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 8134917C 0001757C  48 00 95 7C */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349164

# .text:0xD94 | 0x81349180 | size: 0x18
.fn iplNandSD_81349180, global
/* 81349180 00017580  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81349184 00017584  38 80 00 23 */	li r4, 0x23
/* 81349188 00017588  3C E7 00 04 */	addis r7, r7, 0x4
/* 8134918C 0001758C  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 81349190 00017590  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 81349194 00017594  48 00 95 64 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349180

# .text:0xDAC | 0x81349198 | size: 0x1C
.fn iplNandSD_81349198, global
/* 81349198 00017598  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134919C 0001759C  38 00 00 00 */	li r0, 0x0
/* 813491A0 000175A0  3C A5 00 04 */	addis r5, r5, 0x4
/* 813491A4 000175A4  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 813491A8 000175A8  38 80 00 24 */	li r4, 0x24
/* 813491AC 000175AC  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 813491B0 000175B0  48 00 95 48 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349198

# .text:0xDC8 | 0x813491B4 | size: 0x18
.fn iplNandSD_813491B4, global
/* 813491B4 000175B4  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813491B8 000175B8  38 80 00 27 */	li r4, 0x27
/* 813491BC 000175BC  3C E7 00 04 */	addis r7, r7, 0x4
/* 813491C0 000175C0  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813491C4 000175C4  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813491C8 000175C8  48 00 95 30 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_813491B4

# .text:0xDE0 | 0x813491CC | size: 0x1C
.fn iplNandSD_813491CC, global
/* 813491CC 000175CC  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813491D0 000175D0  38 00 00 00 */	li r0, 0x0
/* 813491D4 000175D4  3C A5 00 04 */	addis r5, r5, 0x4
/* 813491D8 000175D8  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 813491DC 000175DC  38 80 00 28 */	li r4, 0x28
/* 813491E0 000175E0  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 813491E4 000175E4  48 00 95 14 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_813491CC

# .text:0xDFC | 0x813491E8 | size: 0x18
.fn iplNandSD_813491E8, global
/* 813491E8 000175E8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813491EC 000175EC  38 80 00 25 */	li r4, 0x25
/* 813491F0 000175F0  3C E7 00 04 */	addis r7, r7, 0x4
/* 813491F4 000175F4  90 C7 EA 4C */	stw r6, -0x15b4(r7)
/* 813491F8 000175F8  90 A7 EA 48 */	stw r5, -0x15b8(r7)
/* 813491FC 000175FC  48 00 94 FC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_813491E8

# .text:0xE14 | 0x81349200 | size: 0x1C
.fn iplNandSD_81349200, global
/* 81349200 00017600  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349204 00017604  38 00 00 00 */	li r0, 0x0
/* 81349208 00017608  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134920C 0001760C  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349210 00017610  38 80 00 26 */	li r4, 0x26
/* 81349214 00017614  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349218 00017618  48 00 94 E0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349200

# .text:0xE30 | 0x8134921C | size: 0x14
.fn iplNandSD_8134921C, global
/* 8134921C 0001761C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349220 00017620  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349224 00017624  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81349228 00017628  38 80 00 32 */	li r4, 0x32
/* 8134922C 0001762C  48 00 94 CC */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_8134921C

# .text:0xE44 | 0x81349230 | size: 0x1C
.fn iplNandSD_81349230, global
/* 81349230 00017630  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349234 00017634  38 00 00 00 */	li r0, 0x0
/* 81349238 00017638  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134923C 0001763C  90 85 EA 4C */	stw r4, -0x15b4(r5)
/* 81349240 00017640  38 80 00 33 */	li r4, 0x33
/* 81349244 00017644  90 05 EA 48 */	stw r0, -0x15b8(r5)
/* 81349248 00017648  48 00 94 B0 */	b send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage
.endfn iplNandSD_81349230

# .text:0xE60 | 0x8134924C | size: 0x48
# ipl::NandSDWorker::is_disk_or_user_nand_app(unsigned long long)
.fn is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx, global
/* 8134924C 0001764C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81349250 00017650  7C 08 02 A6 */	mflr r0
/* 81349254 00017654  90 01 00 14 */	stw r0, 0x14(r1)
/* 81349258 00017658  3C 03 FF FF */	subis r0, r3, 0x1
/* 8134925C 0001765C  28 00 00 00 */	cmplwi r0, 0x0
/* 81349260 00017660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81349264 00017664  3B E0 00 00 */	li r31, 0x0
/* 81349268 00017668  41 82 00 10 */	beq .L_81349278
/* 8134926C 0001766C  48 00 00 29 */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 81349270 00017670  2C 03 00 00 */	cmpwi r3, 0x0
/* 81349274 00017674  41 82 00 08 */	beq .L_8134927C
.L_81349278:
/* 81349278 00017678  3B E0 00 01 */	li r31, 0x1
.L_8134927C:
/* 8134927C 0001767C  7F E3 FB 78 */	mr r3, r31
/* 81349280 00017680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81349284 00017684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81349288 00017688  7C 08 03 A6 */	mtlr r0
/* 8134928C 0001768C  38 21 00 10 */	addi r1, r1, 0x10
/* 81349290 00017690  4E 80 00 20 */	blr
.endfn is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx

# .text:0xEA8 | 0x81349294 | size: 0x68
# ipl::NandSDWorker::is_user_nand_app(unsigned long long)
.fn is_user_nand_app__Q23ipl12NandSDWorkerFUx, global
/* 81349294 00017694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81349298 00017698  7C 08 02 A6 */	mflr r0
/* 8134929C 0001769C  3C C3 FF FF */	subis r6, r3, 0x1
/* 813492A0 000176A0  38 A0 00 00 */	li r5, 0x0
/* 813492A4 000176A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813492A8 000176A8  28 06 00 07 */	cmplwi r6, 0x7
/* 813492AC 000176AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813492B0 000176B0  3B E0 00 00 */	li r31, 0x0
/* 813492B4 000176B4  41 81 00 18 */	bgt .L_813492CC
/* 813492B8 000176B8  38 00 00 01 */	li r0, 0x1
/* 813492BC 000176BC  7C 00 30 30 */	slw r0, r0, r6
/* 813492C0 000176C0  70 00 00 D3 */	andi. r0, r0, 0xd3
/* 813492C4 000176C4  41 82 00 08 */	beq .L_813492CC
/* 813492C8 000176C8  38 A0 00 01 */	li r5, 0x1
.L_813492CC:
/* 813492CC 000176CC  2C 05 00 00 */	cmpwi r5, 0x0
/* 813492D0 000176D0  41 82 00 14 */	beq .L_813492E4
/* 813492D4 000176D4  48 00 00 29 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 813492D8 000176D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813492DC 000176DC  40 82 00 08 */	bne .L_813492E4
/* 813492E0 000176E0  3B E0 00 01 */	li r31, 0x1
.L_813492E4:
/* 813492E4 000176E4  7F E3 FB 78 */	mr r3, r31
/* 813492E8 000176E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813492EC 000176EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813492F0 000176F0  7C 08 03 A6 */	mtlr r0
/* 813492F4 000176F4  38 21 00 10 */	addi r1, r1, 0x10
/* 813492F8 000176F8  4E 80 00 20 */	blr
.endfn is_user_nand_app__Q23ipl12NandSDWorkerFUx

# .text:0xF10 | 0x813492FC | size: 0x48
# ipl::NandSDWorker::is_data_only_title(unsigned long long)
.fn is_data_only_title__Q23ipl12NandSDWorkerFUx, global
/* 813492FC 000176FC  38 00 FF FF */	li r0, -0x1
/* 81349300 00017700  38 60 00 00 */	li r3, 0x0
/* 81349304 00017704  7C 80 00 38 */	and r0, r4, r0
/* 81349308 00017708  54 00 46 3E */	srwi r0, r0, 24
/* 8134930C 0001770C  28 00 00 20 */	cmplwi r0, 0x20
/* 81349310 00017710  4D 80 00 20 */	bltlr
/* 81349314 00017714  28 00 00 7E */	cmplwi r0, 0x7e
/* 81349318 00017718  4D 81 00 20 */	bgtlr
/* 8134931C 0001771C  2C 00 00 41 */	cmpwi r0, 0x41
/* 81349320 00017720  41 80 00 0C */	blt .L_8134932C
/* 81349324 00017724  2C 00 00 5A */	cmpwi r0, 0x5a
/* 81349328 00017728  4C 81 00 20 */	blelr
.L_8134932C:
/* 8134932C 0001772C  2C 00 00 30 */	cmpwi r0, 0x30
/* 81349330 00017730  41 80 00 0C */	blt .L_8134933C
/* 81349334 00017734  2C 00 00 39 */	cmpwi r0, 0x39
/* 81349338 00017738  4C 81 00 20 */	blelr
.L_8134933C:
/* 8134933C 0001773C  38 60 00 01 */	li r3, 0x1
/* 81349340 00017740  4E 80 00 20 */	blr
.endfn is_data_only_title__Q23ipl12NandSDWorkerFUx

# .text:0xF58 | 0x81349344 | size: 0x64
# ipl::NandSDWorker::is_available_data_only_titleidlo(unsigned long)
.fn is_available_data_only_titleidlo__Q23ipl12NandSDWorkerFUl, global
/* 81349344 00017744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81349348 00017748  7C 08 02 A6 */	mflr r0
/* 8134934C 0001774C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81349350 00017750  54 60 00 0F */	clrrwi. r0, r3, 24
/* 81349354 00017754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81349358 00017758  3B E0 00 00 */	li r31, 0x0
/* 8134935C 0001775C  41 82 00 34 */	beq .L_81349390
/* 81349360 00017760  54 60 02 1F */	rlwinm. r0, r3, 0, 8, 15
/* 81349364 00017764  41 82 00 2C */	beq .L_81349390
/* 81349368 00017768  54 60 04 2F */	rlwinm. r0, r3, 0, 16, 23
/* 8134936C 0001776C  41 82 00 24 */	beq .L_81349390
/* 81349370 00017770  54 60 06 3F */	clrlwi. r0, r3, 24
/* 81349374 00017774  41 82 00 1C */	beq .L_81349390
/* 81349378 00017778  7C 64 1B 78 */	mr r4, r3
/* 8134937C 0001777C  38 60 00 00 */	li r3, 0x0
/* 81349380 00017780  4B FF FF 7D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81349384 00017784  2C 03 00 00 */	cmpwi r3, 0x0
/* 81349388 00017788  41 82 00 08 */	beq .L_81349390
/* 8134938C 0001778C  3B E0 00 01 */	li r31, 0x1
.L_81349390:
/* 81349390 00017790  7F E3 FB 78 */	mr r3, r31
/* 81349394 00017794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81349398 00017798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134939C 0001779C  7C 08 03 A6 */	mtlr r0
/* 813493A0 000177A0  38 21 00 10 */	addi r1, r1, 0x10
/* 813493A4 000177A4  4E 80 00 20 */	blr
.endfn is_available_data_only_titleidlo__Q23ipl12NandSDWorkerFUl

# .text:0xFBC | 0x813493A8 | size: 0x8C
# ipl::NandSDWorker::get_sd_save_path(unsigned long long, char*)
.fn get_sd_save_path__Q23ipl12NandSDWorkerFUxPc, global
/* 813493A8 000177A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813493AC 000177AC  7C 08 02 A6 */	mflr r0
/* 813493B0 000177B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813493B4 000177B4  38 00 FF FF */	li r0, -0x1
/* 813493B8 000177B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813493BC 000177BC  7C 9F 00 38 */	and r31, r4, r0
/* 813493C0 000177C0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813493C4 000177C4  7C BE 2B 78 */	mr r30, r5
/* 813493C8 000177C8  4B FF FF 35 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 813493CC 000177CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813493D0 000177D0  41 82 00 24 */	beq .L_813493F4
/* 813493D4 000177D4  3C A0 81 63 */	lis r5, lbl_81635C0E@ha
/* 813493D8 000177D8  7F C3 F3 78 */	mr r3, r30
/* 813493DC 000177DC  7F E6 FB 78 */	mr r6, r31
/* 813493E0 000177E0  38 80 00 40 */	li r4, 0x40
/* 813493E4 000177E4  38 A5 5C 0E */	addi r5, r5, lbl_81635C0E@l
/* 813493E8 000177E8  4C C6 31 82 */	crclr cr1eq
/* 813493EC 000177EC  48 2B 75 BD */	bl fn_816009A8
/* 813493F0 000177F0  48 00 00 2C */	b .L_8134941C
.L_813493F4:
/* 813493F4 000177F4  3C A0 81 63 */	lis r5, lbl_81635C2F@ha
/* 813493F8 000177F8  7F C3 F3 78 */	mr r3, r30
/* 813493FC 000177FC  38 A5 5C 2F */	addi r5, r5, lbl_81635C2F@l
/* 81349400 00017800  57 E6 46 3E */	srwi r6, r31, 24
/* 81349404 00017804  57 E7 86 3E */	extrwi r7, r31, 8, 8
/* 81349408 00017808  57 E8 C6 3E */	extrwi r8, r31, 8, 16
/* 8134940C 0001780C  57 E9 06 3E */	clrlwi r9, r31, 24
/* 81349410 00017810  38 80 00 40 */	li r4, 0x40
/* 81349414 00017814  4C C6 31 82 */	crclr cr1eq
/* 81349418 00017818  48 2B 75 91 */	bl fn_816009A8
.L_8134941C:
/* 8134941C 0001781C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81349420 00017820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81349424 00017824  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81349428 00017828  7C 08 03 A6 */	mtlr r0
/* 8134942C 0001782C  38 21 00 10 */	addi r1, r1, 0x10
/* 81349430 00017830  4E 80 00 20 */	blr
.endfn get_sd_save_path__Q23ipl12NandSDWorkerFUxPc

# .text:0x1048 | 0x81349434 | size: 0x30
# ipl::NandSDWorker::get_sd_app_path(unsigned long long, char*)
.fn get_sd_app_path__Q23ipl12NandSDWorkerFUxPc, global
/* 81349434 00017834  38 00 FF FF */	li r0, -0x1
/* 81349438 00017838  3C C0 81 63 */	lis r6, lbl_81635C54@ha
/* 8134943C 0001783C  7C 80 00 38 */	and r0, r4, r0
/* 81349440 00017840  7C A3 2B 78 */	mr r3, r5
/* 81349444 00017844  38 A6 5C 54 */	addi r5, r6, lbl_81635C54@l
/* 81349448 00017848  38 80 00 40 */	li r4, 0x40
/* 8134944C 0001784C  54 06 46 3E */	srwi r6, r0, 24
/* 81349450 00017850  54 07 86 3E */	extrwi r7, r0, 8, 8
/* 81349454 00017854  54 08 C6 3E */	extrwi r8, r0, 8, 16
/* 81349458 00017858  54 09 06 3E */	clrlwi r9, r0, 24
/* 8134945C 0001785C  4C C6 31 82 */	crclr cr1eq
/* 81349460 00017860  48 2B 75 48 */	b fn_816009A8
.endfn get_sd_app_path__Q23ipl12NandSDWorkerFUxPc

# .text:0x1078 | 0x81349464 | size: 0x38
# ipl::NandSDWorker::gamecode_to_titleid_lo(const char*)
.fn gamecode_to_titleid_lo__Q23ipl12NandSDWorkerFPCc, global
/* 81349464 00017864  88 83 00 02 */	lbz r4, 0x2(r3)
/* 81349468 00017868  88 03 00 01 */	lbz r0, 0x1(r3)
/* 8134946C 0001786C  88 A3 00 03 */	lbz r5, 0x3(r3)
/* 81349470 00017870  7C 84 07 74 */	extsb r4, r4
/* 81349474 00017874  7C 00 07 74 */	extsb r0, r0
/* 81349478 00017878  88 63 00 00 */	lbz r3, 0x0(r3)
/* 8134947C 0001787C  7C A6 07 74 */	extsb r6, r5
/* 81349480 00017880  54 85 40 2E */	slwi r5, r4, 8
/* 81349484 00017884  54 64 C0 0E */	slwi r4, r3, 24
/* 81349488 00017888  54 00 80 1E */	slwi r0, r0, 16
/* 8134948C 0001788C  7C 66 2A 14 */	add r3, r6, r5
/* 81349490 00017890  7C 04 02 14 */	add r0, r4, r0
/* 81349494 00017894  7C 63 02 14 */	add r3, r3, r0
/* 81349498 00017898  4E 80 00 20 */	blr
.endfn gamecode_to_titleid_lo__Q23ipl12NandSDWorkerFPCc

# .text:0x10B0 | 0x8134949C | size: 0x3C
# ipl::NandSDWorker::thread_main(void*)
.fn thread_main__Q23ipl12NandSDWorkerFPv, global
/* 8134949C 0001789C  7C 60 1B 78 */	mr r0, r3
/* 813494A0 000178A0  38 60 00 04 */	li r3, 0x4
/* 813494A4 000178A4  64 63 00 04 */	oris r3, r3, 0x4
/* 813494A8 000178A8  7C 72 E3 A6 */	mtspr GQR2, r3
/* 813494AC 000178AC  38 60 00 05 */	li r3, 0x5
/* 813494B0 000178B0  64 63 00 05 */	oris r3, r3, 0x5
/* 813494B4 000178B4  7C 73 E3 A6 */	mtspr GQR3, r3
/* 813494B8 000178B8  38 60 00 06 */	li r3, 0x6
/* 813494BC 000178BC  64 63 00 06 */	oris r3, r3, 0x6
/* 813494C0 000178C0  7C 74 E3 A6 */	mtspr GQR4, r3
/* 813494C4 000178C4  38 60 00 07 */	li r3, 0x7
/* 813494C8 000178C8  64 63 00 07 */	oris r3, r3, 0x7
/* 813494CC 000178CC  7C 75 E3 A6 */	mtspr GQR5, r3
/* 813494D0 000178D0  7C 03 03 78 */	mr r3, r0
/* 813494D4 000178D4  48 00 00 E4 */	b run__Q23ipl12NandSDWorkerFv
.endfn thread_main__Q23ipl12NandSDWorkerFPv

# .text:0x10EC | 0x813494D8 | size: 0xE0
# ipl::NandSDWorker::delete_meta_file(unsigned long long)
.fn delete_meta_file__Q23ipl12NandSDWorkerFUx, global
/* 813494D8 000178D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813494DC 000178DC  7C 08 02 A6 */	mflr r0
/* 813494E0 000178E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 813494E4 000178E4  39 61 00 60 */	addi r11, r1, 0x60
/* 813494E8 000178E8  48 2A FF E1 */	bl _savegpr_29
/* 813494EC 000178EC  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813494F0 000178F0  7C C4 33 78 */	mr r4, r6
/* 813494F4 000178F4  38 00 FF FF */	li r0, -0x1
/* 813494F8 000178F8  7C 7D 1B 78 */	mr r29, r3
/* 813494FC 000178FC  7C 87 00 38 */	and r7, r4, r0
/* 81349500 00017900  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81349504 00017904  7C A6 2B 78 */	mr r6, r5
/* 81349508 00017908  38 61 00 08 */	addi r3, r1, 0x8
/* 8134950C 0001790C  38 BF 01 76 */	addi r5, r31, 0x176
/* 81349510 00017910  38 80 00 40 */	li r4, 0x40
/* 81349514 00017914  4C C6 31 82 */	crclr cr1eq
/* 81349518 00017918  48 2B 74 91 */	bl fn_816009A8
/* 8134951C 0001791C  38 61 00 08 */	addi r3, r1, 0x8
/* 81349520 00017920  48 01 6B 89 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 81349524 00017924  7C 7E 1B 78 */	mr r30, r3
/* 81349528 00017928  7F A3 EB 78 */	mr r3, r29
/* 8134952C 0001792C  7F C4 F3 78 */	mr r4, r30
/* 81349530 00017930  38 A0 00 00 */	li r5, 0x0
/* 81349534 00017934  48 00 A7 25 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81349538 00017938  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134953C 0001793C  41 82 00 0C */	beq .L_81349548
/* 81349540 00017940  38 60 FF FB */	li r3, -0x5
/* 81349544 00017944  48 00 00 5C */	b .L_813495A0
.L_81349548:
/* 81349548 00017948  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134954C 0001794C  40 82 00 18 */	bne .L_81349564
/* 81349550 00017950  38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 81349554 00017954  38 81 00 08 */	addi r4, r1, 0x8
/* 81349558 00017958  4C C6 31 82 */	crclr cr1eq
/* 8134955C 0001795C  48 1E 51 45 */	bl OSReport
/* 81349560 00017960  48 00 00 3C */	b .L_8134959C
.L_81349564:
/* 81349564 00017964  2C 1E FF F4 */	cmpwi r30, -0xc
/* 81349568 00017968  40 82 00 18 */	bne .L_81349580
/* 8134956C 0001796C  38 7F 02 0F */	addi r3, r31, 0x20f
/* 81349570 00017970  38 81 00 08 */	addi r4, r1, 0x8
/* 81349574 00017974  4C C6 31 82 */	crclr cr1eq
/* 81349578 00017978  48 1E 51 29 */	bl OSReport
/* 8134957C 0001797C  48 00 00 20 */	b .L_8134959C
.L_81349580:
/* 81349580 00017980  7F C5 F3 78 */	mr r5, r30
/* 81349584 00017984  38 7F 02 2D */	addi r3, r31, 0x22d
/* 81349588 00017988  38 81 00 08 */	addi r4, r1, 0x8
/* 8134958C 0001798C  4C C6 31 82 */	crclr cr1eq
/* 81349590 00017990  48 1E 51 11 */	bl OSReport
/* 81349594 00017994  38 60 FF FE */	li r3, -0x2
/* 81349598 00017998  48 00 00 08 */	b .L_813495A0
.L_8134959C:
/* 8134959C 0001799C  38 60 00 00 */	li r3, 0x0
.L_813495A0:
/* 813495A0 000179A0  39 61 00 60 */	addi r11, r1, 0x60
/* 813495A4 000179A4  48 2A FF 71 */	bl _restgpr_29
/* 813495A8 000179A8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 813495AC 000179AC  7C 08 03 A6 */	mtlr r0
/* 813495B0 000179B0  38 21 00 60 */	addi r1, r1, 0x60
/* 813495B4 000179B4  4E 80 00 20 */	blr
.endfn delete_meta_file__Q23ipl12NandSDWorkerFUx

# .text:0x11CC | 0x813495B8 | size: 0x8BC
# ipl::NandSDWorker::run()
.fn run__Q23ipl12NandSDWorkerFv, global
/* 813495B8 000179B8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813495BC 000179BC  7C 08 02 A6 */	mflr r0
/* 813495C0 000179C0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813495C4 000179C4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 813495C8 000179C8  48 2A FE E5 */	bl _savegpr_22
/* 813495CC 000179CC  3F 20 81 63 */	lis r25, lbl_81635A88@ha
/* 813495D0 000179D0  3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813495D4 000179D4  7C 76 1B 78 */	mr r22, r3
/* 813495D8 000179D8  3B 00 00 00 */	li r24, 0x0
/* 813495DC 000179DC  3B 39 5A 88 */	addi r25, r25, lbl_81635A88@l
/* 813495E0 000179E0  3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813495E4 000179E4  3F 80 00 01 */	lis r28, 0x1
/* 813495E8 000179E8  3B E0 00 00 */	li r31, 0x0
/* 813495EC 000179EC  3B C0 FF FE */	li r30, -0x2
/* 813495F0 000179F0  3B 60 FF FF */	li r27, -0x1
/* 813495F4 000179F4  3F 40 81 63 */	lis r26, jumptable_81635DB0@ha
.L_813495F8:
/* 813495F8 000179F8  7E C3 B3 78 */	mr r3, r22
/* 813495FC 000179FC  48 00 91 69 */	bl wait_work__Q23ipl12NandSDWorkerFv
/* 81349600 00017A00  28 03 00 33 */	cmplwi r3, 0x33
/* 81349604 00017A04  41 81 08 00 */	bgt .L_81349E04
/* 81349608 00017A08  38 9A 5D B0 */	addi r4, r26, jumptable_81635DB0@l
/* 8134960C 00017A0C  54 60 10 3A */	slwi r0, r3, 2
/* 81349610 00017A10  7C 84 00 2E */	lwzx r4, r4, r0
/* 81349614 00017A14  7C 89 03 A6 */	mtctr r4
/* 81349618 00017A18  4E 80 04 20 */	bctr
.L_8134961C:
/* 8134961C 00017A1C  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81349620 00017A20  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349624 00017A24  41 82 00 50 */	beq .L_81349674
/* 81349628 00017A28  80 76 00 00 */	lwz r3, 0x0(r22)
/* 8134962C 00017A2C  38 80 00 01 */	li r4, 0x1
/* 81349630 00017A30  3C 63 00 02 */	addis r3, r3, 0x2
/* 81349634 00017A34  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 81349638 00017A38  7C 03 07 74 */	extsb r3, r0
/* 8134963C 00017A3C  48 29 EE 01 */	bl fn_815E843C
/* 81349640 00017A40  7C 64 1B 78 */	mr r4, r3
/* 81349644 00017A44  38 79 02 56 */	addi r3, r25, 0x256
/* 81349648 00017A48  4C C6 31 82 */	crclr cr1eq
/* 8134964C 00017A4C  48 1E 50 55 */	bl OSReport
/* 81349650 00017A50  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349654 00017A54  3C 63 00 02 */	addis r3, r3, 0x2
/* 81349658 00017A58  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134965C 00017A5C  7C 03 07 74 */	extsb r3, r0
/* 81349660 00017A60  48 29 E8 A1 */	bl fn_815E7F00
/* 81349664 00017A64  7C 64 1B 78 */	mr r4, r3
/* 81349668 00017A68  38 79 02 75 */	addi r3, r25, 0x275
/* 8134966C 00017A6C  4C C6 31 82 */	crclr cr1eq
/* 81349670 00017A70  48 1E 50 31 */	bl OSReport
.L_81349674:
/* 81349674 00017A74  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349678 00017A78  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134967C 00017A7C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81349680 00017A80  48 21 10 A5 */	bl fn_8155A724
/* 81349684 00017A84  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349688 00017A88  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134968C 00017A8C  80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 81349690 00017A90  2C 03 00 00 */	cmpwi r3, 0x0
/* 81349694 00017A94  41 82 00 08 */	beq .L_8134969C
/* 81349698 00017A98  48 21 1E 25 */	bl fn_8155B4BC
.L_8134969C:
/* 8134969C 00017A9C  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813496A0 00017AA0  3C 63 00 02 */	addis r3, r3, 0x2
/* 813496A4 00017AA4  80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 813496A8 00017AA8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813496AC 00017AAC  41 82 00 08 */	beq .L_813496B4
/* 813496B0 00017AB0  48 21 1E 0D */	bl fn_8155B4BC
.L_813496B4:
/* 813496B4 00017AB4  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813496B8 00017AB8  3C 63 00 02 */	addis r3, r3, 0x2
/* 813496BC 00017ABC  80 63 E6 9C */	lwz r3, -0x1964(r3)
/* 813496C0 00017AC0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813496C4 00017AC4  41 82 00 08 */	beq .L_813496CC
/* 813496C8 00017AC8  48 21 10 5D */	bl fn_8155A724
.L_813496CC:
/* 813496CC 00017ACC  3B 00 00 01 */	li r24, 0x1
/* 813496D0 00017AD0  48 00 07 34 */	b .L_81349E04
.L_813496D4:
/* 813496D4 00017AD4  7E C3 B3 78 */	mr r3, r22
/* 813496D8 00017AD8  48 00 07 9D */	bl do_startup__Q23ipl12NandSDWorkerFv
/* 813496DC 00017ADC  48 00 07 28 */	b .L_81349E04
.L_813496E0:
/* 813496E0 00017AE0  7E C3 B3 78 */	mr r3, r22
/* 813496E4 00017AE4  48 00 12 55 */	bl do_mount_sd__Q23ipl12NandSDWorkerFv
/* 813496E8 00017AE8  80 6D A6 98 */	lwz r3, lbl_816986D8@sda21(r0)
/* 813496EC 00017AEC  38 03 FF FD */	subi r0, r3, 0x3
/* 813496F0 00017AF0  28 00 00 01 */	cmplwi r0, 0x1
/* 813496F4 00017AF4  41 81 00 18 */	bgt .L_8134970C
/* 813496F8 00017AF8  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813496FC 00017AFC  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349700 00017B00  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 81349704 00017B04  90 03 EA 5C */	stw r0, -0x15a4(r3)
/* 81349708 00017B08  48 00 06 FC */	b .L_81349E04
.L_8134970C:
/* 8134970C 00017B0C  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349710 00017B10  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349714 00017B14  93 63 EA 5C */	stw r27, -0x15a4(r3)
/* 81349718 00017B18  48 00 06 EC */	b .L_81349E04
.L_8134971C:
/* 8134971C 00017B1C  7E C3 B3 78 */	mr r3, r22
/* 81349720 00017B20  48 00 16 D1 */	bl do_list_nand_save__Q23ipl12NandSDWorkerFv
/* 81349724 00017B24  48 00 06 E0 */	b .L_81349E04
.L_81349728:
/* 81349728 00017B28  80 76 00 00 */	lwz r3, 0x0(r22)
/* 8134972C 00017B2C  38 9C F0 A0 */	subi r4, r28, 0xf60
/* 81349730 00017B30  38 A0 00 20 */	li r5, 0x20
/* 81349734 00017B34  3C 63 00 02 */	addis r3, r3, 0x2
/* 81349738 00017B38  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134973C 00017B3C  48 21 10 19 */	bl fn_8155A754
/* 81349740 00017B40  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349744 00017B44  7C 77 1B 78 */	mr r23, r3
/* 81349748 00017B48  7E C3 B3 78 */	mr r3, r22
/* 8134974C 00017B4C  39 00 00 00 */	li r8, 0x0
/* 81349750 00017B50  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349754 00017B54  7E E7 BB 78 */	mr r7, r23
/* 81349758 00017B58  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134975C 00017B5C  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349760 00017B60  48 00 18 ED */	bl get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 81349764 00017B64  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349768 00017B68  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134976C 00017B6C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349770 00017B70  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349774 00017B74  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349778 00017B78  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134977C 00017B7C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349780 00017B80  40 82 00 14 */	bne .L_81349794
/* 81349784 00017B84  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 81349788 00017B88  7E E4 BB 78 */	mr r4, r23
/* 8134978C 00017B8C  38 BC F0 A0 */	subi r5, r28, 0xf60
/* 81349790 00017B90  4B FE 6A A1 */	bl memcpy
.L_81349794:
/* 81349794 00017B94  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349798 00017B98  7E E4 BB 78 */	mr r4, r23
/* 8134979C 00017B9C  3C 63 00 02 */	addis r3, r3, 0x2
/* 813497A0 00017BA0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813497A4 00017BA4  48 21 12 61 */	bl fn_8155AA04
/* 813497A8 00017BA8  48 00 06 5C */	b .L_81349E04
.L_813497AC:
/* 813497AC 00017BAC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497B0 00017BB0  7E C3 B3 78 */	mr r3, r22
/* 813497B4 00017BB4  3C 84 00 04 */	addis r4, r4, 0x4
/* 813497B8 00017BB8  80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 813497BC 00017BBC  48 00 9B 31 */	bl get_sd_save_list__Q23ipl12NandSDWorkerFPUl
/* 813497C0 00017BC0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497C4 00017BC4  3C 84 00 04 */	addis r4, r4, 0x4
/* 813497C8 00017BC8  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813497CC 00017BCC  48 00 06 38 */	b .L_81349E04
.L_813497D0:
/* 813497D0 00017BD0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497D4 00017BD4  7E C3 B3 78 */	mr r3, r22
/* 813497D8 00017BD8  3C 84 00 04 */	addis r4, r4, 0x4
/* 813497DC 00017BDC  80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 813497E0 00017BE0  48 00 9B 89 */	bl get_sd_app_list__Q23ipl12NandSDWorkerFPUl
/* 813497E4 00017BE4  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813497E8 00017BE8  3C 84 00 04 */	addis r4, r4, 0x4
/* 813497EC 00017BEC  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813497F0 00017BF0  48 00 06 14 */	b .L_81349E04
.L_813497F4:
/* 813497F4 00017BF4  7E C3 B3 78 */	mr r3, r22
/* 813497F8 00017BF8  48 00 1C 05 */	bl do_get_sd_save_banner__Q23ipl12NandSDWorkerFv
/* 813497FC 00017BFC  48 00 06 08 */	b .L_81349E04
.L_81349800:
/* 81349800 00017C00  7E C3 B3 78 */	mr r3, r22
/* 81349804 00017C04  48 00 1D 59 */	bl do_get_sd_app_thumbnail__Q23ipl12NandSDWorkerFv
/* 81349808 00017C08  48 00 05 FC */	b .L_81349E04
.L_8134980C:
/* 8134980C 00017C0C  7E C3 B3 78 */	mr r3, r22
/* 81349810 00017C10  48 00 1F 19 */	bl iplNandSD_8134B728
/* 81349814 00017C14  48 00 05 F0 */	b .L_81349E04
.L_81349818:
/* 81349818 00017C18  7E C3 B3 78 */	mr r3, r22
/* 8134981C 00017C1C  48 00 21 01 */	bl iplNandSD_8134B91C
/* 81349820 00017C20  48 00 05 E4 */	b .L_81349E04
.L_81349824:
/* 81349824 00017C24  7E C3 B3 78 */	mr r3, r22
/* 81349828 00017C28  48 00 24 39 */	bl iplNandSD_8134BC60
/* 8134982C 00017C2C  48 00 05 D8 */	b .L_81349E04
.L_81349830:
/* 81349830 00017C30  7E C3 B3 78 */	mr r3, r22
/* 81349834 00017C34  48 00 26 9D */	bl iplNandSD_8134BED0
/* 81349838 00017C38  48 00 05 CC */	b .L_81349E04
.L_8134983C:
/* 8134983C 00017C3C  7E C3 B3 78 */	mr r3, r22
/* 81349840 00017C40  48 00 2A 59 */	bl iplNandSD_8134C298
/* 81349844 00017C44  48 00 05 C0 */	b .L_81349E04
.L_81349848:
/* 81349848 00017C48  7E C3 B3 78 */	mr r3, r22
/* 8134984C 00017C4C  48 00 2F ED */	bl iplNandSD_8134C838
/* 81349850 00017C50  48 00 05 B4 */	b .L_81349E04
.L_81349854:
/* 81349854 00017C54  7E C3 B3 78 */	mr r3, r22
/* 81349858 00017C58  48 00 32 B1 */	bl do_get_nand_save_size__Q23ipl12NandSDWorkerFv
/* 8134985C 00017C5C  48 00 05 A8 */	b .L_81349E04
.L_81349860:
/* 81349860 00017C60  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349864 00017C64  3C 83 00 04 */	addis r4, r3, 0x4
/* 81349868 00017C68  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134986C 00017C6C  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349870 00017C70  4B FF FA 8D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81349874 00017C74  2C 03 00 00 */	cmpwi r3, 0x0
/* 81349878 00017C78  41 82 00 78 */	beq .L_813498F0
/* 8134987C 00017C7C  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349880 00017C80  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81349884 00017C84  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349888 00017C88  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134988C 00017C8C  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349890 00017C90  48 01 D0 B1 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 81349894 00017C94  2C 03 00 00 */	cmpwi r3, 0x0
/* 81349898 00017C98  41 82 00 24 */	beq .L_813498BC
/* 8134989C 00017C9C  7C 64 1B 78 */	mr r4, r3
/* 813498A0 00017CA0  38 79 02 93 */	addi r3, r25, 0x293
/* 813498A4 00017CA4  4C C6 31 82 */	crclr cr1eq
/* 813498A8 00017CA8  48 1E 4D F9 */	bl OSReport
/* 813498AC 00017CAC  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813498B0 00017CB0  3C 63 00 04 */	addis r3, r3, 0x4
/* 813498B4 00017CB4  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 813498B8 00017CB8  48 00 00 10 */	b .L_813498C8
.L_813498BC:
/* 813498BC 00017CBC  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813498C0 00017CC0  3C 63 00 04 */	addis r3, r3, 0x4
/* 813498C4 00017CC4  93 E3 EA 24 */	stw r31, -0x15dc(r3)
.L_813498C8:
/* 813498C8 00017CC8  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813498CC 00017CCC  7E C3 B3 78 */	mr r3, r22
/* 813498D0 00017CD0  3C 84 00 04 */	addis r4, r4, 0x4
/* 813498D4 00017CD4  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 813498D8 00017CD8  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 813498DC 00017CDC  4B FF FB FD */	bl delete_meta_file__Q23ipl12NandSDWorkerFUx
/* 813498E0 00017CE0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813498E4 00017CE4  3C 84 00 04 */	addis r4, r4, 0x4
/* 813498E8 00017CE8  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813498EC 00017CEC  48 00 00 48 */	b .L_81349934
.L_813498F0:
/* 813498F0 00017CF0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 813498F4 00017CF4  7E C3 B3 78 */	mr r3, r22
/* 813498F8 00017CF8  38 E0 00 01 */	li r7, 0x1
/* 813498FC 00017CFC  39 00 00 00 */	li r8, 0x0
/* 81349900 00017D00  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349904 00017D04  39 20 00 00 */	li r9, 0x0
/* 81349908 00017D08  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134990C 00017D0C  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349910 00017D10  48 00 9A D1 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 81349914 00017D14  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349918 00017D18  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134991C 00017D1C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349920 00017D20  7E C3 B3 78 */	mr r3, r22
/* 81349924 00017D24  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349928 00017D28  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134992C 00017D2C  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349930 00017D30  48 00 63 65 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
.L_81349934:
/* 81349934 00017D34  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349938 00017D38  3C A3 00 04 */	addis r5, r3, 0x4
/* 8134993C 00017D3C  80 05 EA 24 */	lwz r0, -0x15dc(r5)
/* 81349940 00017D40  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349944 00017D44  40 82 04 C0 */	bne .L_81349E04
/* 81349948 00017D48  80 85 EA 28 */	lwz r4, -0x15d8(r5)
/* 8134994C 00017D4C  7E C3 B3 78 */	mr r3, r22
/* 81349950 00017D50  38 04 FF FF */	subi r0, r4, 0x1
/* 81349954 00017D54  90 05 EA 28 */	stw r0, -0x15d8(r5)
/* 81349958 00017D58  80 96 00 00 */	lwz r4, 0x0(r22)
/* 8134995C 00017D5C  3C C4 00 04 */	addis r6, r4, 0x4
/* 81349960 00017D60  3C 84 00 02 */	addis r4, r4, 0x2
/* 81349964 00017D64  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81349968 00017D68  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134996C 00017D6C  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81349970 00017D70  48 00 92 C1 */	bl delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81349974 00017D74  48 00 04 90 */	b .L_81349E04
.L_81349978:
/* 81349978 00017D78  80 96 00 00 */	lwz r4, 0x0(r22)
/* 8134997C 00017D7C  7E C3 B3 78 */	mr r3, r22
/* 81349980 00017D80  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349984 00017D84  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349988 00017D88  48 00 35 D5 */	bl get_sd_save_size__Q23ipl12NandSDWorkerFUl
/* 8134998C 00017D8C  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349990 00017D90  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349994 00017D94  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349998 00017D98  48 00 04 6C */	b .L_81349E04
.L_8134999C:
/* 8134999C 00017D9C  7E C3 B3 78 */	mr r3, r22
/* 813499A0 00017DA0  48 00 38 3D */	bl do_delete_sd_save__Q23ipl12NandSDWorkerFv
/* 813499A4 00017DA4  48 00 04 60 */	b .L_81349E04
.L_813499A8:
/* 813499A8 00017DA8  7E C3 B3 78 */	mr r3, r22
/* 813499AC 00017DAC  48 00 39 05 */	bl do_delete_sd_app__Q23ipl12NandSDWorkerFv
/* 813499B0 00017DB0  48 00 04 54 */	b .L_81349E04
.L_813499B4:
/* 813499B4 00017DB4  7E C3 B3 78 */	mr r3, r22
/* 813499B8 00017DB8  48 00 39 CD */	bl do_initialize_nand__Q23ipl12NandSDWorkerFv
/* 813499BC 00017DBC  48 00 04 48 */	b .L_81349E04
.L_813499C0:
/* 813499C0 00017DC0  7E C3 B3 78 */	mr r3, r22
/* 813499C4 00017DC4  48 00 44 C5 */	bl do_get_nand_user_free_area__Q23ipl12NandSDWorkerFv
/* 813499C8 00017DC8  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813499CC 00017DCC  3C 63 00 04 */	addis r3, r3, 0x4
/* 813499D0 00017DD0  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 813499D4 00017DD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813499D8 00017DD8  40 80 04 2C */	bge .L_81349E04
/* 813499DC 00017DDC  38 79 02 C2 */	addi r3, r25, 0x2c2
/* 813499E0 00017DE0  4C C6 31 82 */	crclr cr1eq
/* 813499E4 00017DE4  48 1E 4C BD */	bl OSReport
/* 813499E8 00017DE8  80 76 00 00 */	lwz r3, 0x0(r22)
/* 813499EC 00017DEC  3C 63 00 04 */	addis r3, r3, 0x4
/* 813499F0 00017DF0  93 E3 EA 24 */	stw r31, -0x15dc(r3)
/* 813499F4 00017DF4  48 00 04 10 */	b .L_81349E04
.L_813499F8:
/* 813499F8 00017DF8  7E C3 B3 78 */	mr r3, r22
/* 813499FC 00017DFC  48 00 47 55 */	bl do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv
/* 81349A00 00017E00  48 00 04 04 */	b .L_81349E04
.L_81349A04:
/* 81349A04 00017E04  7E C3 B3 78 */	mr r3, r22
/* 81349A08 00017E08  48 00 53 B5 */	bl do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv
/* 81349A0C 00017E0C  48 00 03 F8 */	b .L_81349E04
.L_81349A10:
/* 81349A10 00017E10  7E C3 B3 78 */	mr r3, r22
/* 81349A14 00017E14  48 00 60 1D */	bl do_format_sd__Q23ipl12NandSDWorkerFv
/* 81349A18 00017E18  48 00 03 EC */	b .L_81349E04
.L_81349A1C:
/* 81349A1C 00017E1C  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349A20 00017E20  7E C3 B3 78 */	mr r3, r22
/* 81349A24 00017E24  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349A28 00017E28  82 E4 EA 38 */	lwz r23, -0x15c8(r4)
/* 81349A2C 00017E2C  48 00 61 79 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 81349A30 00017E30  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81349A34 00017E34  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 81349A38 00017E38  7C BF 20 10 */	subfc r5, r31, r4
/* 81349A3C 00017E3C  7C C6 01 10 */	subfe r6, r6, r0
/* 81349A40 00017E40  7C C0 01 10 */	subfe r6, r0, r0
/* 81349A44 00017E44  7C C6 00 D1 */	neg. r6, r6
/* 81349A48 00017E48  40 82 00 1C */	bne .L_81349A64
/* 81349A4C 00017E4C  80 B6 00 00 */	lwz r5, 0x0(r22)
/* 81349A50 00017E50  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349A54 00017E54  93 E5 EA 24 */	stw r31, -0x15dc(r5)
/* 81349A58 00017E58  90 97 00 04 */	stw r4, 0x4(r23)
/* 81349A5C 00017E5C  90 77 00 00 */	stw r3, 0x0(r23)
/* 81349A60 00017E60  48 00 03 A4 */	b .L_81349E04
.L_81349A64:
/* 81349A64 00017E64  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349A68 00017E68  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349A6C 00017E6C  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 81349A70 00017E70  93 F7 00 04 */	stw r31, 0x4(r23)
/* 81349A74 00017E74  93 F7 00 00 */	stw r31, 0x0(r23)
/* 81349A78 00017E78  48 00 03 8C */	b .L_81349E04
.L_81349A7C:
/* 81349A7C 00017E7C  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349A80 00017E80  7E C3 B3 78 */	mr r3, r22
/* 81349A84 00017E84  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349A88 00017E88  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349A8C 00017E8C  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349A90 00017E90  48 00 64 19 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 81349A94 00017E94  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349A98 00017E98  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349A9C 00017E9C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349AA0 00017EA0  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349AA4 00017EA4  3C C3 00 04 */	addis r6, r3, 0x4
/* 81349AA8 00017EA8  80 06 EA 24 */	lwz r0, -0x15dc(r6)
/* 81349AAC 00017EAC  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349AB0 00017EB0  40 82 03 54 */	bne .L_81349E04
/* 81349AB4 00017EB4  80 A6 EA 2C */	lwz r5, -0x15d4(r6)
/* 81349AB8 00017EB8  7E C3 B3 78 */	mr r3, r22
/* 81349ABC 00017EBC  38 80 FF FF */	li r4, -0x1
/* 81349AC0 00017EC0  38 05 FF FF */	subi r0, r5, 0x1
/* 81349AC4 00017EC4  90 06 EA 2C */	stw r0, -0x15d4(r6)
/* 81349AC8 00017EC8  48 00 7A DD */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
/* 81349ACC 00017ECC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349AD0 00017ED0  7E C3 B3 78 */	mr r3, r22
/* 81349AD4 00017ED4  3C C4 00 04 */	addis r6, r4, 0x4
/* 81349AD8 00017ED8  3C 84 00 02 */	addis r4, r4, 0x2
/* 81349ADC 00017EDC  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81349AE0 00017EE0  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81349AE4 00017EE4  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81349AE8 00017EE8  48 00 93 E1 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81349AEC 00017EEC  48 00 03 18 */	b .L_81349E04
.L_81349AF0:
/* 81349AF0 00017EF0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349AF4 00017EF4  7E C3 B3 78 */	mr r3, r22
/* 81349AF8 00017EF8  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349AFC 00017EFC  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349B00 00017F00  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349B04 00017F04  48 00 63 A5 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 81349B08 00017F08  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349B0C 00017F0C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349B10 00017F10  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349B14 00017F14  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349B18 00017F18  3C A3 00 04 */	addis r5, r3, 0x4
/* 81349B1C 00017F1C  80 05 EA 24 */	lwz r0, -0x15dc(r5)
/* 81349B20 00017F20  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349B24 00017F24  40 82 02 E0 */	bne .L_81349E04
/* 81349B28 00017F28  80 85 EA 2C */	lwz r4, -0x15d4(r5)
/* 81349B2C 00017F2C  7E C3 B3 78 */	mr r3, r22
/* 81349B30 00017F30  38 04 FF FF */	subi r0, r4, 0x1
/* 81349B34 00017F34  90 05 EA 2C */	stw r0, -0x15d4(r5)
/* 81349B38 00017F38  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349B3C 00017F3C  3C C4 00 04 */	addis r6, r4, 0x4
/* 81349B40 00017F40  3C 84 00 02 */	addis r4, r4, 0x2
/* 81349B44 00017F44  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81349B48 00017F48  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81349B4C 00017F4C  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81349B50 00017F50  48 00 93 79 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81349B54 00017F54  48 00 02 B0 */	b .L_81349E04
.L_81349B58:
/* 81349B58 00017F58  7E C3 B3 78 */	mr r3, r22
/* 81349B5C 00017F5C  48 00 64 81 */	bl do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv
/* 81349B60 00017F60  48 00 02 A4 */	b .L_81349E04
.L_81349B64:
/* 81349B64 00017F64  7E C3 B3 78 */	mr r3, r22
/* 81349B68 00017F68  38 80 00 00 */	li r4, 0x0
/* 81349B6C 00017F6C  48 00 75 89 */	bl do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv
/* 81349B70 00017F70  48 00 02 94 */	b .L_81349E04
.L_81349B74:
/* 81349B74 00017F74  7E C3 B3 78 */	mr r3, r22
/* 81349B78 00017F78  38 80 00 01 */	li r4, 0x1
/* 81349B7C 00017F7C  48 00 75 79 */	bl do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv
/* 81349B80 00017F80  48 00 02 84 */	b .L_81349E04
.L_81349B84:
/* 81349B84 00017F84  7E C3 B3 78 */	mr r3, r22
/* 81349B88 00017F88  48 00 85 A5 */	bl do_list_nand_app__Q23ipl12NandSDWorkerFv
/* 81349B8C 00017F8C  48 00 02 78 */	b .L_81349E04
.L_81349B90:
/* 81349B90 00017F90  7E C3 B3 78 */	mr r3, r22
/* 81349B94 00017F94  48 00 2A DD */	bl iplNandSD_8134C670
/* 81349B98 00017F98  48 00 02 6C */	b .L_81349E04
.L_81349B9C:
/* 81349B9C 00017F9C  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BA0 00017FA0  7E C3 B3 78 */	mr r3, r22
/* 81349BA4 00017FA4  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BA8 00017FA8  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349BAC 00017FAC  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349BB0 00017FB0  80 E4 EA 38 */	lwz r7, -0x15c8(r4)
/* 81349BB4 00017FB4  81 04 EA 3C */	lwz r8, -0x15c4(r4)
/* 81349BB8 00017FB8  48 00 86 79 */	bl get_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUcPQ33ipl7channel18SChanMgrMetaHeader
/* 81349BBC 00017FBC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BC0 00017FC0  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BC4 00017FC4  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349BC8 00017FC8  48 00 02 3C */	b .L_81349E04
.L_81349BCC:
/* 81349BCC 00017FCC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BD0 00017FD0  7E C3 B3 78 */	mr r3, r22
/* 81349BD4 00017FD4  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BD8 00017FD8  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349BDC 00017FDC  48 00 34 C1 */	bl get_sd_app_size__Q23ipl12NandSDWorkerFUl
/* 81349BE0 00017FE0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349BE4 00017FE4  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349BE8 00017FE8  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349BEC 00017FEC  48 00 02 18 */	b .L_81349E04
.L_81349BF0:
/* 81349BF0 00017FF0  7E C3 B3 78 */	mr r3, r22
/* 81349BF4 00017FF4  48 00 31 75 */	bl do_get_nand_app_size__Q23ipl12NandSDWorkerFv
/* 81349BF8 00017FF8  48 00 02 0C */	b .L_81349E04
.L_81349BFC:
/* 81349BFC 00017FFC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C00 00018000  7E C3 B3 78 */	mr r3, r22
/* 81349C04 00018004  80 ED 81 64 */	lwz r7, lbl_816961A4@sda21(r0)
/* 81349C08 00018008  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C0C 0001800C  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349C10 00018010  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349C14 00018014  48 00 A2 B9 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 81349C18 00018018  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C1C 0001801C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C20 00018020  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349C24 00018024  48 00 01 E0 */	b .L_81349E04
.L_81349C28:
/* 81349C28 00018028  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C2C 0001802C  7E C3 B3 78 */	mr r3, r22
/* 81349C30 00018030  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C34 00018034  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349C38 00018038  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349C3C 0001803C  48 00 13 2D */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
/* 81349C40 00018040  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C44 00018044  38 C0 00 02 */	li r6, 0x2
/* 81349C48 00018048  38 A0 00 01 */	li r5, 0x1
/* 81349C4C 0001804C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C50 00018050  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349C54 00018054  7E C3 B3 78 */	mr r3, r22
/* 81349C58 00018058  48 00 9F 55 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81349C5C 0001805C  48 00 01 A8 */	b .L_81349E04
.L_81349C60:
/* 81349C60 00018060  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C64 00018064  7E C3 B3 78 */	mr r3, r22
/* 81349C68 00018068  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C6C 0001806C  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349C70 00018070  48 00 AA 89 */	bl iplNandSD_813546F8
/* 81349C74 00018074  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C78 00018078  38 C0 00 02 */	li r6, 0x2
/* 81349C7C 0001807C  38 A0 00 01 */	li r5, 0x1
/* 81349C80 00018080  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349C84 00018084  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349C88 00018088  7E C3 B3 78 */	mr r3, r22
/* 81349C8C 0001808C  48 00 9F 21 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81349C90 00018090  48 00 01 74 */	b .L_81349E04
.L_81349C94:
/* 81349C94 00018094  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349C98 00018098  7E C3 B3 78 */	mr r3, r22
/* 81349C9C 0001809C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CA0 000180A0  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349CA4 000180A4  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349CA8 000180A8  48 00 7E DD */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 81349CAC 000180AC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349CB0 000180B0  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CB4 000180B4  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349CB8 000180B8  48 00 01 4C */	b .L_81349E04
.L_81349CBC:
/* 81349CBC 000180BC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349CC0 000180C0  7E C3 B3 78 */	mr r3, r22
/* 81349CC4 000180C4  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CC8 000180C8  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349CCC 000180CC  48 00 A9 89 */	bl iplNandSD_81354654
/* 81349CD0 000180D0  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349CD4 000180D4  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349CD8 000180D8  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349CDC 000180DC  48 00 01 28 */	b .L_81349E04
.L_81349CE0:
/* 81349CE0 000180E0  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349CE4 000180E4  38 A1 00 48 */	addi r5, r1, 0x48
/* 81349CE8 000180E8  3C 83 00 04 */	addis r4, r3, 0x4
/* 81349CEC 000180EC  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81349CF0 000180F0  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349CF4 000180F4  4B FF F6 B5 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 81349CF8 000180F8  7E C3 B3 78 */	mr r3, r22
/* 81349CFC 000180FC  38 81 00 48 */	addi r4, r1, 0x48
/* 81349D00 00018100  38 BC F0 C0 */	subi r5, r28, 0xf40
/* 81349D04 00018104  48 00 95 11 */	bl sd_file_exist__Q23ipl12NandSDWorkerFPCcUl
/* 81349D08 00018108  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D0C 0001810C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D10 00018110  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D14 00018114  48 00 00 F0 */	b .L_81349E04
.L_81349D18:
/* 81349D18 00018118  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349D1C 0001811C  38 A1 00 08 */	addi r5, r1, 0x8
/* 81349D20 00018120  3C 83 00 04 */	addis r4, r3, 0x4
/* 81349D24 00018124  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81349D28 00018128  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349D2C 0001812C  4B FF F7 09 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 81349D30 00018130  7E C3 B3 78 */	mr r3, r22
/* 81349D34 00018134  38 81 00 08 */	addi r4, r1, 0x8
/* 81349D38 00018138  38 A0 06 40 */	li r5, 0x640
/* 81349D3C 0001813C  48 00 94 D9 */	bl sd_file_exist__Q23ipl12NandSDWorkerFPCcUl
/* 81349D40 00018140  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D44 00018144  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D48 00018148  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D4C 0001814C  48 00 00 B8 */	b .L_81349E04
.L_81349D50:
/* 81349D50 00018150  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D54 00018154  7E C3 B3 78 */	mr r3, r22
/* 81349D58 00018158  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D5C 0001815C  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81349D60 00018160  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81349D64 00018164  48 00 A3 C1 */	bl __ct__Q33ipl2ut8FreeListFv
/* 81349D68 00018168  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D6C 0001816C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D70 00018170  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D74 00018174  48 00 00 90 */	b .L_81349E04
.L_81349D78:
/* 81349D78 00018178  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D7C 0001817C  7E C3 B3 78 */	mr r3, r22
/* 81349D80 00018180  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D84 00018184  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349D88 00018188  48 00 A5 D9 */	bl get__Q33ipl2ut8FreeListFv
/* 81349D8C 0001818C  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349D90 00018190  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349D94 00018194  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81349D98 00018198  48 00 00 6C */	b .L_81349E04
.L_81349D9C:
/* 81349D9C 0001819C  7E C3 B3 78 */	mr r3, r22
/* 81349DA0 000181A0  48 00 A6 19 */	bl __ct__Q33ipl2ut5StackFv
/* 81349DA4 000181A4  48 00 00 60 */	b .L_81349E04
.L_81349DA8:
/* 81349DA8 000181A8  7E C3 B3 78 */	mr r3, r22
/* 81349DAC 000181AC  48 00 A6 B5 */	bl init__Q33ipl2ut5StackFPvUlUl
/* 81349DB0 000181B0  48 00 00 54 */	b .L_81349E04
.L_81349DB4:
/* 81349DB4 000181B4  7E C3 B3 78 */	mr r3, r22
/* 81349DB8 000181B8  48 00 A6 F5 */	bl push__Q33ipl2ut5StackFPCv
/* 81349DBC 000181BC  48 00 00 48 */	b .L_81349E04
.L_81349DC0:
/* 81349DC0 000181C0  7E C3 B3 78 */	mr r3, r22
/* 81349DC4 000181C4  48 00 A8 49 */	bl pop__Q33ipl2ut5StackFPv
/* 81349DC8 000181C8  48 00 00 3C */	b .L_81349E04
.L_81349DCC:
/* 81349DCC 000181CC  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349DD0 000181D0  7E C3 B3 78 */	mr r3, r22
/* 81349DD4 000181D4  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349DD8 000181D8  80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 81349DDC 000181DC  48 00 77 C9 */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
/* 81349DE0 000181E0  48 00 00 24 */	b .L_81349E04
.L_81349DE4:
/* 81349DE4 000181E4  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349DE8 000181E8  7E C3 B3 78 */	mr r3, r22
/* 81349DEC 000181EC  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349DF0 000181F0  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81349DF4 000181F4  48 00 AB 41 */	bl iplNandSD_81354934
/* 81349DF8 000181F8  80 96 00 00 */	lwz r4, 0x0(r22)
/* 81349DFC 000181FC  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349E00 00018200  90 64 EA 24 */	stw r3, -0x15dc(r4)
.L_81349E04:
/* 81349E04 00018204  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81349E08 00018208  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349E0C 0001820C  80 63 E9 B8 */	lwz r3, -0x1648(r3)
/* 81349E10 00018210  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81349E14 00018214  3C 03 21 53 */	addis r0, r3, 0x2153
/* 81349E18 00018218  28 00 BA BE */	cmplwi r0, 0xbabe
/* 81349E1C 0001821C  41 82 00 18 */	beq .L_81349E34
/* 81349E20 00018220  38 79 02 F6 */	addi r3, r25, 0x2f6
/* 81349E24 00018224  38 B9 03 0A */	addi r5, r25, 0x30a
/* 81349E28 00018228  38 80 08 D3 */	li r4, 0x8d3
/* 81349E2C 0001822C  4C C6 31 82 */	crclr cr1eq
/* 81349E30 00018230  48 1E 49 01 */	bl fn_8152E730
.L_81349E34:
/* 81349E34 00018234  2C 18 00 00 */	cmpwi r24, 0x0
/* 81349E38 00018238  40 82 00 14 */	bne .L_81349E4C
/* 81349E3C 0001823C  7E C3 B3 78 */	mr r3, r22
/* 81349E40 00018240  38 80 00 00 */	li r4, 0x0
/* 81349E44 00018244  48 00 89 C5 */	bl set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState
/* 81349E48 00018248  4B FF F7 B0 */	b .L_813495F8
.L_81349E4C:
/* 81349E4C 0001824C  38 00 00 00 */	li r0, 0x0
/* 81349E50 00018250  39 61 00 B0 */	addi r11, r1, 0xb0
/* 81349E54 00018254  90 16 00 00 */	stw r0, 0x0(r22)
/* 81349E58 00018258  7E C3 B3 78 */	mr r3, r22
/* 81349E5C 0001825C  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 81349E60 00018260  48 2A F6 99 */	bl _restgpr_22
/* 81349E64 00018264  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81349E68 00018268  7C 08 03 A6 */	mtlr r0
/* 81349E6C 0001826C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 81349E70 00018270  4E 80 00 20 */	blr
.endfn run__Q23ipl12NandSDWorkerFv

# .text:0x1A88 | 0x81349E74 | size: 0x50C
# ipl::NandSDWorker::do_startup()
.fn do_startup__Q23ipl12NandSDWorkerFv, global
/* 81349E74 00018274  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 81349E78 00018278  7C 08 02 A6 */	mflr r0
/* 81349E7C 0001827C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 81349E80 00018280  39 61 00 C0 */	addi r11, r1, 0xc0
/* 81349E84 00018284  48 2A F6 3D */	bl _savegpr_27
/* 81349E88 00018288  3B 60 00 00 */	li r27, 0x0
/* 81349E8C 0001828C  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81349E90 00018290  93 61 00 14 */	stw r27, 0x14(r1)
/* 81349E94 00018294  7C 7C 1B 78 */	mr r28, r3
/* 81349E98 00018298  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81349E9C 0001829C  38 81 00 14 */	addi r4, r1, 0x14
/* 81349EA0 000182A0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81349EA4 000182A4  3B A0 00 00 */	li r29, 0x0
/* 81349EA8 000182A8  38 60 00 00 */	li r3, 0x0
/* 81349EAC 000182AC  3C A5 00 04 */	addis r5, r5, 0x4
/* 81349EB0 000182B0  93 65 EA 24 */	stw r27, -0x15dc(r5)
/* 81349EB4 000182B4  48 27 46 31 */	bl fn_815BE4E4
/* 81349EB8 000182B8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349EBC 000182BC  38 A0 00 20 */	li r5, 0x20
/* 81349EC0 000182C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81349EC4 000182C4  3C 63 00 02 */	addis r3, r3, 0x2
/* 81349EC8 000182C8  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81349ECC 000182CC  54 04 18 38 */	slwi r4, r0, 3
/* 81349ED0 000182D0  48 21 08 85 */	bl fn_8155A754
/* 81349ED4 000182D4  7C 7E 1B 78 */	mr r30, r3
/* 81349ED8 000182D8  38 81 00 14 */	addi r4, r1, 0x14
/* 81349EDC 000182DC  48 27 46 09 */	bl fn_815BE4E4
/* 81349EE0 000182E0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81349EE4 000182E4  7F 83 E3 78 */	mr r3, r28
/* 81349EE8 000182E8  7F C4 F3 78 */	mr r4, r30
/* 81349EEC 000182EC  48 00 04 95 */	bl clean_duplicated_nand_app__Q23ipl12NandSDWorkerFv
/* 81349EF0 000182F0  2C 03 FF FB */	cmpwi r3, -0x5
/* 81349EF4 000182F4  40 82 00 18 */	bne .L_81349F0C
/* 81349EF8 000182F8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349EFC 000182FC  38 00 FF FB */	li r0, -0x5
/* 81349F00 00018300  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349F04 00018304  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349F08 00018308  48 00 04 18 */	b .L_8134A320
.L_81349F0C:
/* 81349F0C 0001830C  93 61 00 10 */	stw r27, 0x10(r1)
/* 81349F10 00018310  93 61 00 0C */	stw r27, 0xc(r1)
/* 81349F14 00018314  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349F18 00018318  3C 63 00 02 */	addis r3, r3, 0x2
/* 81349F1C 0001831C  80 03 E6 98 */	lwz r0, -0x1968(r3)
/* 81349F20 00018320  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349F24 00018324  41 82 00 78 */	beq .L_81349F9C
/* 81349F28 00018328  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81349F2C 0001832C  7F 83 E3 78 */	mr r3, r28
/* 81349F30 00018330  7F C4 F3 78 */	mr r4, r30
/* 81349F34 00018334  38 C1 00 0C */	addi r6, r1, 0xc
/* 81349F38 00018338  48 00 06 51 */	bl iplNandSD_8134A588
/* 81349F3C 0001833C  2C 03 FF FB */	cmpwi r3, -0x5
/* 81349F40 00018340  40 82 00 18 */	bne .L_81349F58
/* 81349F44 00018344  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349F48 00018348  38 00 FF FB */	li r0, -0x5
/* 81349F4C 0001834C  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349F50 00018350  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349F54 00018354  48 00 03 CC */	b .L_8134A320
.L_81349F58:
/* 81349F58 00018358  2C 03 FF EE */	cmpwi r3, -0x12
/* 81349F5C 0001835C  40 82 00 18 */	bne .L_81349F74
/* 81349F60 00018360  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349F64 00018364  38 00 FF EE */	li r0, -0x12
/* 81349F68 00018368  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349F6C 0001836C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349F70 00018370  48 00 03 B0 */	b .L_8134A320
.L_81349F74:
/* 81349F74 00018374  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349F78 00018378  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 81349F7C 0001837C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 81349F80 00018380  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349F84 00018384  90 04 EA 2C */	stw r0, -0x15d4(r4)
/* 81349F88 00018388  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349F8C 0001838C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349F90 00018390  80 84 EA 2C */	lwz r4, -0x15d4(r4)
/* 81349F94 00018394  4C C6 31 82 */	crclr cr1eq
/* 81349F98 00018398  48 1E 47 09 */	bl OSReport
.L_81349F9C:
/* 81349F9C 0001839C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349FA0 000183A0  3C 63 00 02 */	addis r3, r3, 0x2
/* 81349FA4 000183A4  80 03 E6 94 */	lwz r0, -0x196c(r3)
/* 81349FA8 000183A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 81349FAC 000183AC  41 82 00 5C */	beq .L_8134A008
/* 81349FB0 000183B0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81349FB4 000183B4  7F 83 E3 78 */	mr r3, r28
/* 81349FB8 000183B8  7F C4 F3 78 */	mr r4, r30
/* 81349FBC 000183BC  38 C1 00 10 */	addi r6, r1, 0x10
/* 81349FC0 000183C0  48 00 07 59 */	bl clean_partial_nand_app__Q23ipl12NandSDWorkerFv
/* 81349FC4 000183C4  2C 03 FF FB */	cmpwi r3, -0x5
/* 81349FC8 000183C8  40 82 00 18 */	bne .L_81349FE0
/* 81349FCC 000183CC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81349FD0 000183D0  38 00 FF FB */	li r0, -0x5
/* 81349FD4 000183D4  3C 63 00 04 */	addis r3, r3, 0x4
/* 81349FD8 000183D8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81349FDC 000183DC  48 00 03 44 */	b .L_8134A320
.L_81349FE0:
/* 81349FE0 000183E0  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349FE4 000183E4  38 7F 04 19 */	addi r3, r31, 0x419
/* 81349FE8 000183E8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81349FEC 000183EC  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349FF0 000183F0  90 04 EA 28 */	stw r0, -0x15d8(r4)
/* 81349FF4 000183F4  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81349FF8 000183F8  3C 84 00 04 */	addis r4, r4, 0x4
/* 81349FFC 000183FC  80 84 EA 28 */	lwz r4, -0x15d8(r4)
/* 8134A000 00018400  4C C6 31 82 */	crclr cr1eq
/* 8134A004 00018404  48 1E 46 9D */	bl OSReport
.L_8134A008:
/* 8134A008 00018408  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A00C 0001840C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A010 00018410  80 03 E6 94 */	lwz r0, -0x196c(r3)
/* 8134A014 00018414  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A018 00018418  41 82 03 08 */	beq .L_8134A320
/* 8134A01C 0001841C  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A020 00018420  7F 83 E3 78 */	mr r3, r28
/* 8134A024 00018424  48 00 9A 79 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134A028 00018428  2C 03 00 20 */	cmpwi r3, 0x20
/* 8134A02C 0001842C  41 82 02 E4 */	beq .L_8134A310
/* 8134A030 00018430  80 6D 81 7C */	lwz r3, lbl_816961BC@sda21(r0)
/* 8134A034 00018434  48 01 63 AD */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134A038 00018438  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A03C 0001843C  7C 7B 1B 78 */	mr r27, r3
/* 8134A040 00018440  41 82 00 34 */	beq .L_8134A074
/* 8134A044 00018444  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A048 00018448  7F 65 DB 78 */	mr r5, r27
/* 8134A04C 0001844C  38 7F 04 3B */	addi r3, r31, 0x43b
/* 8134A050 00018450  4C C6 31 82 */	crclr cr1eq
/* 8134A054 00018454  48 1E 46 4D */	bl OSReport
/* 8134A058 00018458  2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A05C 0001845C  40 82 00 18 */	bne .L_8134A074
/* 8134A060 00018460  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A064 00018464  38 00 FF FB */	li r0, -0x5
/* 8134A068 00018468  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A06C 0001846C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A070 00018470  48 00 02 B0 */	b .L_8134A320
.L_8134A074:
/* 8134A074 00018474  80 6D 81 78 */	lwz r3, lbl_816961B8@sda21(r0)
/* 8134A078 00018478  38 81 00 08 */	addi r4, r1, 0x8
/* 8134A07C 0001847C  48 01 64 35 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 8134A080 00018480  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A084 00018484  40 82 00 10 */	bne .L_8134A094
/* 8134A088 00018488  88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134A08C 0001848C  28 00 00 02 */	cmplwi r0, 0x2
/* 8134A090 00018490  41 82 00 DC */	beq .L_8134A16C
.L_8134A094:
/* 8134A094 00018494  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A098 00018498  40 82 00 54 */	bne .L_8134A0EC
/* 8134A09C 0001849C  88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134A0A0 000184A0  28 00 00 02 */	cmplwi r0, 0x2
/* 8134A0A4 000184A4  41 82 00 48 */	beq .L_8134A0EC
/* 8134A0A8 000184A8  80 6D 81 78 */	lwz r3, lbl_816961B8@sda21(r0)
/* 8134A0AC 000184AC  48 01 63 35 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134A0B0 000184B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A0B4 000184B4  7C 7B 1B 78 */	mr r27, r3
/* 8134A0B8 000184B8  41 82 00 68 */	beq .L_8134A120
/* 8134A0BC 000184BC  80 8D 81 78 */	lwz r4, lbl_816961B8@sda21(r0)
/* 8134A0C0 000184C0  7F 65 DB 78 */	mr r5, r27
/* 8134A0C4 000184C4  38 7F 04 3B */	addi r3, r31, 0x43b
/* 8134A0C8 000184C8  4C C6 31 82 */	crclr cr1eq
/* 8134A0CC 000184CC  48 1E 45 D5 */	bl OSReport
/* 8134A0D0 000184D0  2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A0D4 000184D4  40 82 00 4C */	bne .L_8134A120
/* 8134A0D8 000184D8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A0DC 000184DC  38 00 FF FB */	li r0, -0x5
/* 8134A0E0 000184E0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A0E4 000184E4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A0E8 000184E8  48 00 02 38 */	b .L_8134A320
.L_8134A0EC:
/* 8134A0EC 000184EC  7F 83 E3 78 */	mr r3, r28
/* 8134A0F0 000184F0  38 80 00 01 */	li r4, 0x1
/* 8134A0F4 000184F4  38 A0 00 00 */	li r5, 0x0
/* 8134A0F8 000184F8  38 C0 00 00 */	li r6, 0x0
/* 8134A0FC 000184FC  38 E0 00 00 */	li r7, 0x0
/* 8134A100 00018500  48 00 3F 55 */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8134A104 00018504  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A108 00018508  41 82 00 18 */	beq .L_8134A120
/* 8134A10C 0001850C  80 8D 81 78 */	lwz r4, lbl_816961B8@sda21(r0)
/* 8134A110 00018510  38 7F 04 6B */	addi r3, r31, 0x46b
/* 8134A114 00018514  4C C6 31 82 */	crclr cr1eq
/* 8134A118 00018518  48 1E 45 89 */	bl OSReport
/* 8134A11C 0001851C  48 00 02 04 */	b .L_8134A320
.L_8134A120:
/* 8134A120 00018520  80 6D 81 78 */	lwz r3, lbl_816961B8@sda21(r0)
/* 8134A124 00018524  38 80 00 3F */	li r4, 0x3f
/* 8134A128 00018528  38 A0 00 00 */	li r5, 0x0
/* 8134A12C 0001852C  48 01 62 41 */	bl PrivateCreateDir__Q33ipl4nand7wrapperFPCcUcUc
/* 8134A130 00018530  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A134 00018534  7C 7B 1B 78 */	mr r27, r3
/* 8134A138 00018538  41 82 00 34 */	beq .L_8134A16C
/* 8134A13C 0001853C  80 8D 81 78 */	lwz r4, lbl_816961B8@sda21(r0)
/* 8134A140 00018540  7F 65 DB 78 */	mr r5, r27
/* 8134A144 00018544  38 7F 04 AA */	addi r3, r31, 0x4aa
/* 8134A148 00018548  4C C6 31 82 */	crclr cr1eq
/* 8134A14C 0001854C  48 1E 45 55 */	bl OSReport
/* 8134A150 00018550  2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A154 00018554  40 82 01 CC */	bne .L_8134A320
/* 8134A158 00018558  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A15C 0001855C  38 00 FF FB */	li r0, -0x5
/* 8134A160 00018560  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A164 00018564  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A168 00018568  48 00 01 B8 */	b .L_8134A320
.L_8134A16C:
/* 8134A16C 0001856C  7F 83 E3 78 */	mr r3, r28
/* 8134A170 00018570  38 80 00 01 */	li r4, 0x1
/* 8134A174 00018574  38 A0 00 01 */	li r5, 0x1
/* 8134A178 00018578  38 C0 00 00 */	li r6, 0x0
/* 8134A17C 0001857C  38 E0 00 00 */	li r7, 0x0
/* 8134A180 00018580  48 00 3E D5 */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8134A184 00018584  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A188 00018588  41 82 00 18 */	beq .L_8134A1A0
/* 8134A18C 0001858C  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A190 00018590  38 7F 04 6B */	addi r3, r31, 0x46b
/* 8134A194 00018594  4C C6 31 82 */	crclr cr1eq
/* 8134A198 00018598  48 1E 45 09 */	bl OSReport
/* 8134A19C 0001859C  48 00 01 84 */	b .L_8134A320
.L_8134A1A0:
/* 8134A1A0 000185A0  80 6D 81 7C */	lwz r3, lbl_816961BC@sda21(r0)
/* 8134A1A4 000185A4  38 80 00 3F */	li r4, 0x3f
/* 8134A1A8 000185A8  38 A0 00 00 */	li r5, 0x0
/* 8134A1AC 000185AC  48 01 60 39 */	bl PrivateCreate__Q33ipl4nand7wrapperFPCcUcUc
/* 8134A1B0 000185B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A1B4 000185B4  7C 7B 1B 78 */	mr r27, r3
/* 8134A1B8 000185B8  41 82 00 34 */	beq .L_8134A1EC
/* 8134A1BC 000185BC  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A1C0 000185C0  7F 65 DB 78 */	mr r5, r27
/* 8134A1C4 000185C4  38 7F 04 DD */	addi r3, r31, 0x4dd
/* 8134A1C8 000185C8  4C C6 31 82 */	crclr cr1eq
/* 8134A1CC 000185CC  48 1E 44 D5 */	bl OSReport
/* 8134A1D0 000185D0  2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A1D4 000185D4  40 82 01 4C */	bne .L_8134A320
/* 8134A1D8 000185D8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A1DC 000185DC  38 00 FF FB */	li r0, -0x5
/* 8134A1E0 000185E0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A1E4 000185E4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A1E8 000185E8  48 00 01 38 */	b .L_8134A320
.L_8134A1EC:
/* 8134A1EC 000185EC  80 6D 81 7C */	lwz r3, lbl_816961BC@sda21(r0)
/* 8134A1F0 000185F0  38 81 00 18 */	addi r4, r1, 0x18
/* 8134A1F4 000185F4  38 A0 00 02 */	li r5, 0x2
/* 8134A1F8 000185F8  48 01 60 61 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8134A1FC 000185FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A200 00018600  41 82 00 1C */	beq .L_8134A21C
/* 8134A204 00018604  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A208 00018608  7C 65 1B 78 */	mr r5, r3
/* 8134A20C 0001860C  38 7F 05 0D */	addi r3, r31, 0x50d
/* 8134A210 00018610  4C C6 31 82 */	crclr cr1eq
/* 8134A214 00018614  48 1E 44 8D */	bl OSReport
/* 8134A218 00018618  48 00 01 08 */	b .L_8134A320
.L_8134A21C:
/* 8134A21C 0001861C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A220 00018620  38 80 00 20 */	li r4, 0x20
/* 8134A224 00018624  38 A0 00 20 */	li r5, 0x20
/* 8134A228 00018628  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A22C 0001862C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134A230 00018630  48 21 05 25 */	bl fn_8155A754
/* 8134A234 00018634  7C 7D 1B 78 */	mr r29, r3
/* 8134A238 00018638  38 80 00 00 */	li r4, 0x0
/* 8134A23C 0001863C  38 A0 00 20 */	li r5, 0x20
/* 8134A240 00018640  4B FE 60 F5 */	bl memset
/* 8134A244 00018644  7F A3 EB 78 */	mr r3, r29
/* 8134A248 00018648  48 14 B5 FD */	bl fn_81495844
/* 8134A24C 0001864C  7F A4 EB 78 */	mr r4, r29
/* 8134A250 00018650  38 61 00 18 */	addi r3, r1, 0x18
/* 8134A254 00018654  38 A0 00 20 */	li r5, 0x20
/* 8134A258 00018658  48 01 5B 85 */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 8134A25C 0001865C  2C 03 00 20 */	cmpwi r3, 0x20
/* 8134A260 00018660  7C 7B 1B 78 */	mr r27, r3
/* 8134A264 00018664  41 82 00 3C */	beq .L_8134A2A0
/* 8134A268 00018668  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A26C 0001866C  7F 65 DB 78 */	mr r5, r27
/* 8134A270 00018670  38 7F 05 3B */	addi r3, r31, 0x53b
/* 8134A274 00018674  4C C6 31 82 */	crclr cr1eq
/* 8134A278 00018678  48 1E 44 29 */	bl OSReport
/* 8134A27C 0001867C  2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A280 00018680  40 82 00 14 */	bne .L_8134A294
/* 8134A284 00018684  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A288 00018688  38 00 FF FB */	li r0, -0x5
/* 8134A28C 0001868C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A290 00018690  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134A294:
/* 8134A294 00018694  38 61 00 18 */	addi r3, r1, 0x18
/* 8134A298 00018698  48 01 5A 6D */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134A29C 0001869C  48 00 00 84 */	b .L_8134A320
.L_8134A2A0:
/* 8134A2A0 000186A0  38 61 00 18 */	addi r3, r1, 0x18
/* 8134A2A4 000186A4  48 01 5A 61 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134A2A8 000186A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A2AC 000186AC  7C 7B 1B 78 */	mr r27, r3
/* 8134A2B0 000186B0  41 82 00 34 */	beq .L_8134A2E4
/* 8134A2B4 000186B4  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A2B8 000186B8  7F 65 DB 78 */	mr r5, r27
/* 8134A2BC 000186BC  38 7F 05 63 */	addi r3, r31, 0x563
/* 8134A2C0 000186C0  4C C6 31 82 */	crclr cr1eq
/* 8134A2C4 000186C4  48 1E 43 DD */	bl OSReport
/* 8134A2C8 000186C8  2C 1B FF FC */	cmpwi r27, -0x4
/* 8134A2CC 000186CC  40 82 00 54 */	bne .L_8134A320
/* 8134A2D0 000186D0  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A2D4 000186D4  38 00 FF FB */	li r0, -0x5
/* 8134A2D8 000186D8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134A2DC 000186DC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134A2E0 000186E0  48 00 00 40 */	b .L_8134A320
.L_8134A2E4:
/* 8134A2E4 000186E4  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A2E8 000186E8  38 7F 05 8B */	addi r3, r31, 0x58b
/* 8134A2EC 000186EC  88 BD 00 00 */	lbz r5, 0x0(r29)
/* 8134A2F0 000186F0  88 DD 00 01 */	lbz r6, 0x1(r29)
/* 8134A2F4 000186F4  88 FD 00 02 */	lbz r7, 0x2(r29)
/* 8134A2F8 000186F8  89 1D 00 03 */	lbz r8, 0x3(r29)
/* 8134A2FC 000186FC  89 3D 00 04 */	lbz r9, 0x4(r29)
/* 8134A300 00018700  89 5D 00 05 */	lbz r10, 0x5(r29)
/* 8134A304 00018704  4C C6 31 82 */	crclr cr1eq
/* 8134A308 00018708  48 1E 43 99 */	bl OSReport
/* 8134A30C 0001870C  48 00 00 14 */	b .L_8134A320
.L_8134A310:
/* 8134A310 00018710  80 8D 81 7C */	lwz r4, lbl_816961BC@sda21(r0)
/* 8134A314 00018714  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8134A318 00018718  4C C6 31 82 */	crclr cr1eq
/* 8134A31C 0001871C  48 1E 43 85 */	bl OSReport
.L_8134A320:
/* 8134A320 00018720  7F 83 E3 78 */	mr r3, r28
/* 8134A324 00018724  38 C0 00 02 */	li r6, 0x2
/* 8134A328 00018728  38 A0 00 01 */	li r5, 0x1
/* 8134A32C 0001872C  48 00 98 81 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134A330 00018730  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134A334 00018734  41 82 00 18 */	beq .L_8134A34C
/* 8134A338 00018738  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A33C 0001873C  7F C4 F3 78 */	mr r4, r30
/* 8134A340 00018740  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A344 00018744  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134A348 00018748  48 21 06 BD */	bl fn_8155AA04
.L_8134A34C:
/* 8134A34C 0001874C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134A350 00018750  41 82 00 18 */	beq .L_8134A368
/* 8134A354 00018754  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134A358 00018758  7F A4 EB 78 */	mr r4, r29
/* 8134A35C 0001875C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134A360 00018760  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134A364 00018764  48 21 06 A1 */	bl fn_8155AA04
.L_8134A368:
/* 8134A368 00018768  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8134A36C 0001876C  48 2A F1 A1 */	bl _restgpr_27
/* 8134A370 00018770  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8134A374 00018774  7C 08 03 A6 */	mtlr r0
/* 8134A378 00018778  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8134A37C 0001877C  4E 80 00 20 */	blr
.endfn do_startup__Q23ipl12NandSDWorkerFv

# .text:0x1F94 | 0x8134A380 | size: 0x208
# ipl::NandSDWorker::clean_duplicated_nand_app()
.fn clean_duplicated_nand_app__Q23ipl12NandSDWorkerFv, global
/* 8134A380 00018780  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8134A384 00018784  7C 08 02 A6 */	mflr r0
/* 8134A388 00018788  90 01 00 44 */	stw r0, 0x44(r1)
/* 8134A38C 0001878C  39 61 00 40 */	addi r11, r1, 0x40
/* 8134A390 00018790  48 2A F1 11 */	bl _savegpr_19
/* 8134A394 00018794  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134A398 00018798  7C 73 1B 78 */	mr r19, r3
/* 8134A39C 0001879C  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134A3A0 000187A0  7C 94 23 78 */	mr r20, r4
/* 8134A3A4 000187A4  7C B5 2B 78 */	mr r21, r5
/* 8134A3A8 000187A8  38 7C 05 E1 */	addi r3, r28, 0x5e1
/* 8134A3AC 000187AC  4C C6 31 82 */	crclr cr1eq
/* 8134A3B0 000187B0  48 1E 42 F1 */	bl OSReport
/* 8134A3B4 000187B4  3B 20 00 00 */	li r25, 0x0
/* 8134A3B8 000187B8  3B E0 00 00 */	li r31, 0x0
/* 8134A3BC 000187BC  3B A0 00 00 */	li r29, 0x0
/* 8134A3C0 000187C0  48 00 01 A4 */	b .L_8134A564
.L_8134A3C4:
/* 8134A3C4 000187C4  7F 54 FA 14 */	add r26, r20, r31
/* 8134A3C8 000187C8  7F 14 F8 2E */	lwzx r24, r20, r31
/* 8134A3CC 000187CC  82 FA 00 04 */	lwz r23, 0x4(r26)
/* 8134A3D0 000187D0  7F 03 C3 78 */	mr r3, r24
/* 8134A3D4 000187D4  7E E4 BB 78 */	mr r4, r23
/* 8134A3D8 000187D8  4B FF EE BD */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134A3DC 000187DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A3E0 000187E0  41 82 01 7C */	beq .L_8134A55C
/* 8134A3E4 000187E4  7E 63 9B 78 */	mr r3, r19
/* 8134A3E8 000187E8  7E E6 BB 78 */	mr r6, r23
/* 8134A3EC 000187EC  7F 05 C3 78 */	mr r5, r24
/* 8134A3F0 000187F0  48 00 9A 95 */	bl is_all_region__Q23ipl12NandSDWorkerFUx
/* 8134A3F4 000187F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A3F8 000187F8  41 82 01 64 */	beq .L_8134A55C
/* 8134A3FC 000187FC  7E 63 9B 78 */	mr r3, r19
/* 8134A400 00018800  7E E6 BB 78 */	mr r6, r23
/* 8134A404 00018804  7F 05 C3 78 */	mr r5, r24
/* 8134A408 00018808  48 00 77 A9 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A40C 0001880C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A410 00018810  41 82 01 4C */	beq .L_8134A55C
/* 8134A414 00018814  3A C0 00 00 */	li r22, 0x0
/* 8134A418 00018818  3B C0 00 00 */	li r30, 0x0
/* 8134A41C 0001881C  48 00 01 38 */	b .L_8134A554
.L_8134A420:
/* 8134A420 00018820  7F 74 F2 14 */	add r27, r20, r30
/* 8134A424 00018824  7C F4 F0 2E */	lwzx r7, r20, r30
/* 8134A428 00018828  81 1B 00 04 */	lwz r8, 0x4(r27)
/* 8134A42C 0001882C  7F 00 3A 78 */	xor r0, r24, r7
/* 8134A430 00018830  7E E3 42 78 */	xor r3, r23, r8
/* 8134A434 00018834  7C 60 03 79 */	or. r0, r3, r0
/* 8134A438 00018838  41 82 01 14 */	beq .L_8134A54C
/* 8134A43C 0001883C  7E 63 9B 78 */	mr r3, r19
/* 8134A440 00018840  7E E6 BB 78 */	mr r6, r23
/* 8134A444 00018844  7F 05 C3 78 */	mr r5, r24
/* 8134A448 00018848  48 00 9A 55 */	bl is_same_title__Q23ipl12NandSDWorkerFUxUx
/* 8134A44C 0001884C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A450 00018850  41 82 00 FC */	beq .L_8134A54C
/* 8134A454 00018854  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A458 00018858  7E 63 9B 78 */	mr r3, r19
/* 8134A45C 0001885C  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A460 00018860  48 00 77 51 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A464 00018864  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A468 00018868  41 82 00 E4 */	beq .L_8134A54C
/* 8134A46C 0001886C  7E 63 9B 78 */	mr r3, r19
/* 8134A470 00018870  7E E6 BB 78 */	mr r6, r23
/* 8134A474 00018874  7F 05 C3 78 */	mr r5, r24
/* 8134A478 00018878  48 00 34 49 */	bl delete_ticket__Q23ipl12NandSDWorkerFUx
/* 8134A47C 0001887C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A480 00018880  41 82 00 1C */	beq .L_8134A49C
/* 8134A484 00018884  7C 67 1B 78 */	mr r7, r3
/* 8134A488 00018888  7E E6 BB 78 */	mr r6, r23
/* 8134A48C 0001888C  7F 05 C3 78 */	mr r5, r24
/* 8134A490 00018890  38 7C 06 10 */	addi r3, r28, 0x610
/* 8134A494 00018894  4C C6 31 82 */	crclr cr1eq
/* 8134A498 00018898  48 1E 42 09 */	bl OSReport
.L_8134A49C:
/* 8134A49C 0001889C  7E 63 9B 78 */	mr r3, r19
/* 8134A4A0 000188A0  7E E6 BB 78 */	mr r6, r23
/* 8134A4A4 000188A4  7F 05 C3 78 */	mr r5, r24
/* 8134A4A8 000188A8  48 00 5A 01 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 8134A4AC 000188AC  2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A4B0 000188B0  41 82 00 C0 */	beq .L_8134A570
/* 8134A4B4 000188B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A4B8 000188B8  41 82 00 1C */	beq .L_8134A4D4
/* 8134A4BC 000188BC  7C 67 1B 78 */	mr r7, r3
/* 8134A4C0 000188C0  7E E6 BB 78 */	mr r6, r23
/* 8134A4C4 000188C4  7F 05 C3 78 */	mr r5, r24
/* 8134A4C8 000188C8  38 7C 06 43 */	addi r3, r28, 0x643
/* 8134A4CC 000188CC  4C C6 31 82 */	crclr cr1eq
/* 8134A4D0 000188D0  48 1E 41 D1 */	bl OSReport
.L_8134A4D4:
/* 8134A4D4 000188D4  7E 63 9B 78 */	mr r3, r19
/* 8134A4D8 000188D8  7E E6 BB 78 */	mr r6, r23
/* 8134A4DC 000188DC  7F 05 C3 78 */	mr r5, r24
/* 8134A4E0 000188E0  38 E0 00 01 */	li r7, 0x1
/* 8134A4E4 000188E4  39 00 00 00 */	li r8, 0x0
/* 8134A4E8 000188E8  39 20 00 00 */	li r9, 0x0
/* 8134A4EC 000188EC  48 00 8E F5 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134A4F0 000188F0  2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A4F4 000188F4  41 82 00 7C */	beq .L_8134A570
/* 8134A4F8 000188F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A4FC 000188FC  41 82 00 1C */	beq .L_8134A518
/* 8134A500 00018900  7C 67 1B 78 */	mr r7, r3
/* 8134A504 00018904  7E E6 BB 78 */	mr r6, r23
/* 8134A508 00018908  7F 05 C3 78 */	mr r5, r24
/* 8134A50C 0001890C  38 7C 06 43 */	addi r3, r28, 0x643
/* 8134A510 00018910  4C C6 31 82 */	crclr cr1eq
/* 8134A514 00018914  48 1E 41 8D */	bl OSReport
.L_8134A518:
/* 8134A518 00018918  80 FB 00 00 */	lwz r7, 0x0(r27)
/* 8134A51C 0001891C  7E E6 BB 78 */	mr r6, r23
/* 8134A520 00018920  81 1B 00 04 */	lwz r8, 0x4(r27)
/* 8134A524 00018924  7F 05 C3 78 */	mr r5, r24
/* 8134A528 00018928  38 7C 06 7D */	addi r3, r28, 0x67d
/* 8134A52C 0001892C  4C C6 31 82 */	crclr cr1eq
/* 8134A530 00018930  48 1E 41 71 */	bl OSReport
/* 8134A534 00018934  7E 63 9B 78 */	mr r3, r19
/* 8134A538 00018938  7E E4 BB 78 */	mr r4, r23
/* 8134A53C 0001893C  48 00 57 59 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
/* 8134A540 00018940  93 BA 00 04 */	stw r29, 0x4(r26)
/* 8134A544 00018944  93 BA 00 00 */	stw r29, 0x0(r26)
/* 8134A548 00018948  48 00 00 14 */	b .L_8134A55C
.L_8134A54C:
/* 8134A54C 0001894C  3A D6 00 01 */	addi r22, r22, 0x1
/* 8134A550 00018950  3B DE 00 08 */	addi r30, r30, 0x8
.L_8134A554:
/* 8134A554 00018954  7C 16 A8 40 */	cmplw r22, r21
/* 8134A558 00018958  41 80 FE C8 */	blt .L_8134A420
.L_8134A55C:
/* 8134A55C 0001895C  3B 39 00 01 */	addi r25, r25, 0x1
/* 8134A560 00018960  3B FF 00 08 */	addi r31, r31, 0x8
.L_8134A564:
/* 8134A564 00018964  7C 19 A8 40 */	cmplw r25, r21
/* 8134A568 00018968  41 80 FE 5C */	blt .L_8134A3C4
/* 8134A56C 0001896C  38 60 00 00 */	li r3, 0x0
.L_8134A570:
/* 8134A570 00018970  39 61 00 40 */	addi r11, r1, 0x40
/* 8134A574 00018974  48 2A EF 79 */	bl _restgpr_19
/* 8134A578 00018978  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8134A57C 0001897C  7C 08 03 A6 */	mtlr r0
/* 8134A580 00018980  38 21 00 40 */	addi r1, r1, 0x40
/* 8134A584 00018984  4E 80 00 20 */	blr
.endfn clean_duplicated_nand_app__Q23ipl12NandSDWorkerFv

# .text:0x219C | 0x8134A588 | size: 0x190
.fn iplNandSD_8134A588, global
/* 8134A588 00018988  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134A58C 0001898C  7C 08 02 A6 */	mflr r0
/* 8134A590 00018990  90 01 00 34 */	stw r0, 0x34(r1)
/* 8134A594 00018994  39 61 00 30 */	addi r11, r1, 0x30
/* 8134A598 00018998  48 2A EF 15 */	bl _savegpr_22
/* 8134A59C 0001899C  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134A5A0 000189A0  7C 76 1B 78 */	mr r22, r3
/* 8134A5A4 000189A4  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134A5A8 000189A8  7C 97 23 78 */	mr r23, r4
/* 8134A5AC 000189AC  7C B8 2B 78 */	mr r24, r5
/* 8134A5B0 000189B0  7C D9 33 78 */	mr r25, r6
/* 8134A5B4 000189B4  38 7C 06 BC */	addi r3, r28, 0x6bc
/* 8134A5B8 000189B8  4C C6 31 82 */	crclr cr1eq
/* 8134A5BC 000189BC  48 1E 40 E5 */	bl OSReport
/* 8134A5C0 000189C0  3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8134A5C4 000189C4  3B 40 00 00 */	li r26, 0x0
/* 8134A5C8 000189C8  3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8134A5CC 000189CC  3B E0 00 00 */	li r31, 0x0
/* 8134A5D0 000189D0  3B A0 FF FF */	li r29, -0x1
/* 8134A5D4 000189D4  48 00 01 20 */	b .L_8134A6F4
.L_8134A5D8:
/* 8134A5D8 000189D8  88 16 00 04 */	lbz r0, 0x4(r22)
/* 8134A5DC 000189DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A5E0 000189E0  41 82 00 0C */	beq .L_8134A5EC
/* 8134A5E4 000189E4  38 60 FF EE */	li r3, -0x12
/* 8134A5E8 000189E8  48 00 01 18 */	b .L_8134A700
.L_8134A5EC:
/* 8134A5EC 000189EC  7F 77 FA 14 */	add r27, r23, r31
/* 8134A5F0 000189F0  7C 77 F8 2E */	lwzx r3, r23, r31
/* 8134A5F4 000189F4  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 8134A5F8 000189F8  4B FF EC 9D */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134A5FC 000189FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A600 00018A00  41 82 00 EC */	beq .L_8134A6EC
/* 8134A604 00018A04  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A608 00018A08  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A60C 00018A0C  7C C0 E8 38 */	and r0, r6, r29
/* 8134A610 00018A10  54 03 00 2E */	clrrwi r3, r0, 8
/* 8134A614 00018A14  3C 03 FF AB */	subis r0, r3, 0x55
/* 8134A618 00018A18  28 00 50 00 */	cmplwi r0, 0x5000
/* 8134A61C 00018A1C  41 82 00 D0 */	beq .L_8134A6EC
/* 8134A620 00018A20  7E C3 B3 78 */	mr r3, r22
/* 8134A624 00018A24  48 00 75 8D */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A628 00018A28  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A62C 00018A2C  40 82 00 68 */	bne .L_8134A694
/* 8134A630 00018A30  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8134A634 00018A34  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A638 00018A38  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A63C 00018A3C  48 01 C1 1D */	bl CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134A640 00018A40  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A644 00018A44  40 81 00 A8 */	ble .L_8134A6EC
/* 8134A648 00018A48  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8134A64C 00018A4C  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A650 00018A50  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A654 00018A54  48 01 C2 ED */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134A658 00018A58  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A65C 00018A5C  41 82 00 20 */	beq .L_8134A67C
/* 8134A660 00018A60  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A664 00018A64  7C 67 1B 78 */	mr r7, r3
/* 8134A668 00018A68  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A66C 00018A6C  38 7C 06 E8 */	addi r3, r28, 0x6e8
/* 8134A670 00018A70  4C C6 31 82 */	crclr cr1eq
/* 8134A674 00018A74  48 1E 40 2D */	bl OSReport
/* 8134A678 00018A78  48 00 00 74 */	b .L_8134A6EC
.L_8134A67C:
/* 8134A67C 00018A7C  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A680 00018A80  38 7C 07 1A */	addi r3, r28, 0x71a
/* 8134A684 00018A84  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A688 00018A88  4C C6 31 82 */	crclr cr1eq
/* 8134A68C 00018A8C  48 1E 40 15 */	bl OSReport
/* 8134A690 00018A90  48 00 00 5C */	b .L_8134A6EC
.L_8134A694:
/* 8134A694 00018A94  2C 03 00 01 */	cmpwi r3, 0x1
/* 8134A698 00018A98  40 82 00 40 */	bne .L_8134A6D8
/* 8134A69C 00018A9C  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A6A0 00018AA0  7E C3 B3 78 */	mr r3, r22
/* 8134A6A4 00018AA4  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A6A8 00018AA8  48 00 58 01 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 8134A6AC 00018AAC  2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A6B0 00018AB0  41 82 00 50 */	beq .L_8134A700
/* 8134A6B4 00018AB4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A6B8 00018AB8  41 82 00 34 */	beq .L_8134A6EC
/* 8134A6BC 00018ABC  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134A6C0 00018AC0  7C 67 1B 78 */	mr r7, r3
/* 8134A6C4 00018AC4  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 8134A6C8 00018AC8  38 7C 06 43 */	addi r3, r28, 0x643
/* 8134A6CC 00018ACC  4C C6 31 82 */	crclr cr1eq
/* 8134A6D0 00018AD0  48 1E 3F D1 */	bl OSReport
/* 8134A6D4 00018AD4  48 00 00 18 */	b .L_8134A6EC
.L_8134A6D8:
/* 8134A6D8 00018AD8  2C 03 00 02 */	cmpwi r3, 0x2
/* 8134A6DC 00018ADC  40 82 00 10 */	bne .L_8134A6EC
/* 8134A6E0 00018AE0  80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134A6E4 00018AE4  38 03 00 01 */	addi r0, r3, 0x1
/* 8134A6E8 00018AE8  90 19 00 00 */	stw r0, 0x0(r25)
.L_8134A6EC:
/* 8134A6EC 00018AEC  3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134A6F0 00018AF0  3B FF 00 08 */	addi r31, r31, 0x8
.L_8134A6F4:
/* 8134A6F4 00018AF4  7C 1A C0 40 */	cmplw r26, r24
/* 8134A6F8 00018AF8  41 80 FE E0 */	blt .L_8134A5D8
/* 8134A6FC 00018AFC  38 60 00 00 */	li r3, 0x0
.L_8134A700:
/* 8134A700 00018B00  39 61 00 30 */	addi r11, r1, 0x30
/* 8134A704 00018B04  48 2A ED F5 */	bl _restgpr_22
/* 8134A708 00018B08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8134A70C 00018B0C  7C 08 03 A6 */	mtlr r0
/* 8134A710 00018B10  38 21 00 30 */	addi r1, r1, 0x30
/* 8134A714 00018B14  4E 80 00 20 */	blr
.endfn iplNandSD_8134A588

# .text:0x232C | 0x8134A718 | size: 0x220
# ipl::NandSDWorker::clean_partial_nand_app()
.fn clean_partial_nand_app__Q23ipl12NandSDWorkerFv, global
/* 8134A718 00018B18  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134A71C 00018B1C  7C 08 02 A6 */	mflr r0
/* 8134A720 00018B20  90 01 00 94 */	stw r0, 0x94(r1)
/* 8134A724 00018B24  39 61 00 90 */	addi r11, r1, 0x90
/* 8134A728 00018B28  48 2A ED 81 */	bl _savegpr_21
/* 8134A72C 00018B2C  3E C0 81 63 */	lis r22, lbl_81635A88@ha
/* 8134A730 00018B30  7C 7B 1B 78 */	mr r27, r3
/* 8134A734 00018B34  3A D6 5A 88 */	addi r22, r22, lbl_81635A88@l
/* 8134A738 00018B38  7C 9C 23 78 */	mr r28, r4
/* 8134A73C 00018B3C  7C BD 2B 78 */	mr r29, r5
/* 8134A740 00018B40  7C DE 33 78 */	mr r30, r6
/* 8134A744 00018B44  38 76 07 43 */	addi r3, r22, 0x743
/* 8134A748 00018B48  4C C6 31 82 */	crclr cr1eq
/* 8134A74C 00018B4C  48 1E 3F 55 */	bl OSReport
/* 8134A750 00018B50  3B E0 00 00 */	li r31, 0x0
/* 8134A754 00018B54  3F 20 81 09 */	lis r25, smArg__Q23ipl6System@ha
/* 8134A758 00018B58  7F F7 FB 78 */	mr r23, r31
/* 8134A75C 00018B5C  3B 40 00 00 */	li r26, 0x0
/* 8134A760 00018B60  3B 39 90 08 */	addi r25, r25, smArg__Q23ipl6System@l
/* 8134A764 00018B64  3B 00 FF FF */	li r24, -0x1
/* 8134A768 00018B68  48 00 01 AC */	b .L_8134A914
.L_8134A76C:
/* 8134A76C 00018B6C  7E BC D2 14 */	add r21, r28, r26
/* 8134A770 00018B70  7C 7C D0 2E */	lwzx r3, r28, r26
/* 8134A774 00018B74  80 95 00 04 */	lwz r4, 0x4(r21)
/* 8134A778 00018B78  4B FF EA D5 */	bl is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134A77C 00018B7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A780 00018B80  41 82 01 0C */	beq .L_8134A88C
/* 8134A784 00018B84  92 E1 00 0C */	stw r23, 0xc(r1)
/* 8134A788 00018B88  7F 63 DB 78 */	mr r3, r27
/* 8134A78C 00018B8C  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A790 00018B90  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A794 00018B94  48 00 94 19 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134A798 00018B98  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A79C 00018B9C  41 82 00 F0 */	beq .L_8134A88C
/* 8134A7A0 00018BA0  80 15 00 04 */	lwz r0, 0x4(r21)
/* 8134A7A4 00018BA4  38 61 00 10 */	addi r3, r1, 0x10
/* 8134A7A8 00018BA8  80 D5 00 00 */	lwz r6, 0x0(r21)
/* 8134A7AC 00018BAC  38 B6 01 1C */	addi r5, r22, 0x11c
/* 8134A7B0 00018BB0  7C 07 C0 38 */	and r7, r0, r24
/* 8134A7B4 00018BB4  38 80 00 40 */	li r4, 0x40
/* 8134A7B8 00018BB8  4C C6 31 82 */	crclr cr1eq
/* 8134A7BC 00018BBC  48 2B 61 ED */	bl fn_816009A8
/* 8134A7C0 00018BC0  38 61 00 10 */	addi r3, r1, 0x10
/* 8134A7C4 00018BC4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8134A7C8 00018BC8  38 80 00 00 */	li r4, 0x0
/* 8134A7CC 00018BCC  48 01 57 91 */	bl ReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 8134A7D0 00018BD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A7D4 00018BD4  40 82 00 B8 */	bne .L_8134A88C
/* 8134A7D8 00018BD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134A7DC 00018BDC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A7E0 00018BE0  41 82 00 AC */	beq .L_8134A88C
/* 8134A7E4 00018BE4  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A7E8 00018BE8  7F 63 DB 78 */	mr r3, r27
/* 8134A7EC 00018BEC  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A7F0 00018BF0  48 00 07 79 */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
/* 8134A7F4 00018BF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A7F8 00018BF8  41 82 00 14 */	beq .L_8134A80C
/* 8134A7FC 00018BFC  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134A800 00018C00  38 03 00 01 */	addi r0, r3, 0x1
/* 8134A804 00018C04  90 1E 00 00 */	stw r0, 0x0(r30)
/* 8134A808 00018C08  48 00 00 84 */	b .L_8134A88C
.L_8134A80C:
/* 8134A80C 00018C0C  38 61 00 10 */	addi r3, r1, 0x10
/* 8134A810 00018C10  38 96 07 70 */	addi r4, r22, 0x770
/* 8134A814 00018C14  38 A0 00 40 */	li r5, 0x40
/* 8134A818 00018C18  48 2B 7C 1D */	bl fn_81602434
/* 8134A81C 00018C1C  38 61 00 10 */	addi r3, r1, 0x10
/* 8134A820 00018C20  38 81 00 08 */	addi r4, r1, 0x8
/* 8134A824 00018C24  48 01 59 55 */	bl GetType__Q33ipl4nand7wrapperFPCcPUc
/* 8134A828 00018C28  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A82C 00018C2C  40 82 00 28 */	bne .L_8134A854
/* 8134A830 00018C30  88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134A834 00018C34  28 00 00 02 */	cmplwi r0, 0x2
/* 8134A838 00018C38  40 82 00 1C */	bne .L_8134A854
/* 8134A83C 00018C3C  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A840 00018C40  38 76 07 79 */	addi r3, r22, 0x779
/* 8134A844 00018C44  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A848 00018C48  4C C6 31 82 */	crclr cr1eq
/* 8134A84C 00018C4C  48 1E 3E 55 */	bl OSReport
/* 8134A850 00018C50  48 00 00 3C */	b .L_8134A88C
.L_8134A854:
/* 8134A854 00018C54  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A858 00018C58  7F 63 DB 78 */	mr r3, r27
/* 8134A85C 00018C5C  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A860 00018C60  38 E0 00 01 */	li r7, 0x1
/* 8134A864 00018C64  39 00 00 00 */	li r8, 0x0
/* 8134A868 00018C68  39 20 00 00 */	li r9, 0x0
/* 8134A86C 00018C6C  48 00 8B 75 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134A870 00018C70  2C 03 FF FB */	cmpwi r3, -0x5
/* 8134A874 00018C74  40 82 00 0C */	bne .L_8134A880
/* 8134A878 00018C78  38 60 FF FB */	li r3, -0x5
/* 8134A87C 00018C7C  48 00 00 A4 */	b .L_8134A920
.L_8134A880:
/* 8134A880 00018C80  80 95 00 04 */	lwz r4, 0x4(r21)
/* 8134A884 00018C84  7F 63 DB 78 */	mr r3, r27
/* 8134A888 00018C88  48 00 54 0D */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
.L_8134A88C:
/* 8134A88C 00018C8C  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134A890 00018C90  80 95 00 04 */	lwz r4, 0x4(r21)
/* 8134A894 00018C94  4B FF EA 69 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134A898 00018C98  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A89C 00018C9C  41 82 00 70 */	beq .L_8134A90C
/* 8134A8A0 00018CA0  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A8A4 00018CA4  7F 63 DB 78 */	mr r3, r27
/* 8134A8A8 00018CA8  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A8AC 00018CAC  48 00 73 05 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134A8B0 00018CB0  2C 03 00 02 */	cmpwi r3, 0x2
/* 8134A8B4 00018CB4  40 82 00 14 */	bne .L_8134A8C8
/* 8134A8B8 00018CB8  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134A8BC 00018CBC  38 03 00 01 */	addi r0, r3, 0x1
/* 8134A8C0 00018CC0  90 1E 00 00 */	stw r0, 0x0(r30)
/* 8134A8C4 00018CC4  48 00 00 48 */	b .L_8134A90C
.L_8134A8C8:
/* 8134A8C8 00018CC8  80 79 00 0C */	lwz r3, 0xc(r25)
/* 8134A8CC 00018CCC  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A8D0 00018CD0  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A8D4 00018CD4  48 01 C0 6D */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134A8D8 00018CD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A8DC 00018CDC  41 82 00 1C */	beq .L_8134A8F8
/* 8134A8E0 00018CE0  7C 64 1B 78 */	mr r4, r3
/* 8134A8E4 00018CE4  38 76 02 93 */	addi r3, r22, 0x293
/* 8134A8E8 00018CE8  4C C6 31 82 */	crclr cr1eq
/* 8134A8EC 00018CEC  48 1E 3D B5 */	bl OSReport
/* 8134A8F0 00018CF0  38 60 FF FE */	li r3, -0x2
/* 8134A8F4 00018CF4  48 00 00 2C */	b .L_8134A920
.L_8134A8F8:
/* 8134A8F8 00018CF8  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134A8FC 00018CFC  38 76 07 B5 */	addi r3, r22, 0x7b5
/* 8134A900 00018D00  80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8134A904 00018D04  4C C6 31 82 */	crclr cr1eq
/* 8134A908 00018D08  48 1E 3D 99 */	bl OSReport
.L_8134A90C:
/* 8134A90C 00018D0C  3B FF 00 01 */	addi r31, r31, 0x1
/* 8134A910 00018D10  3B 5A 00 08 */	addi r26, r26, 0x8
.L_8134A914:
/* 8134A914 00018D14  7C 1F E8 40 */	cmplw r31, r29
/* 8134A918 00018D18  41 80 FE 54 */	blt .L_8134A76C
/* 8134A91C 00018D1C  38 60 00 00 */	li r3, 0x0
.L_8134A920:
/* 8134A920 00018D20  39 61 00 90 */	addi r11, r1, 0x90
/* 8134A924 00018D24  48 2A EB D1 */	bl _restgpr_21
/* 8134A928 00018D28  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134A92C 00018D2C  7C 08 03 A6 */	mtlr r0
/* 8134A930 00018D30  38 21 00 90 */	addi r1, r1, 0x90
/* 8134A934 00018D34  4E 80 00 20 */	blr
.endfn clean_partial_nand_app__Q23ipl12NandSDWorkerFv

# .text:0x254C | 0x8134A938 | size: 0x2CC
# ipl::NandSDWorker::do_mount_sd()
.fn do_mount_sd__Q23ipl12NandSDWorkerFv, global
/* 8134A938 00018D38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134A93C 00018D3C  7C 08 02 A6 */	mflr r0
/* 8134A940 00018D40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134A944 00018D44  39 61 00 20 */	addi r11, r1, 0x20
/* 8134A948 00018D48  48 2A EB 81 */	bl _savegpr_29
/* 8134A94C 00018D4C  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134A950 00018D50  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134A954 00018D54  7C 7F 1B 78 */	mr r31, r3
/* 8134A958 00018D58  2C 00 00 02 */	cmpwi r0, 0x2
/* 8134A95C 00018D5C  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134A960 00018D60  41 82 01 B4 */	beq .L_8134AB14
/* 8134A964 00018D64  40 80 00 14 */	bge .L_8134A978
/* 8134A968 00018D68  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A96C 00018D6C  41 82 00 18 */	beq .L_8134A984
/* 8134A970 00018D70  40 80 01 7C */	bge .L_8134AAEC
/* 8134A974 00018D74  48 00 02 78 */	b .L_8134ABEC
.L_8134A978:
/* 8134A978 00018D78  2C 00 00 06 */	cmpwi r0, 0x6
/* 8134A97C 00018D7C  41 82 02 60 */	beq .L_8134ABDC
/* 8134A980 00018D80  48 00 02 6C */	b .L_8134ABEC
.L_8134A984:
/* 8134A984 00018D84  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8134A988 00018D88  38 60 00 00 */	li r3, 0x0
/* 8134A98C 00018D8C  38 80 00 00 */	li r4, 0x0
/* 8134A990 00018D90  38 A0 00 00 */	li r5, 0x0
/* 8134A994 00018D94  3C C6 00 02 */	addis r6, r6, 0x2
/* 8134A998 00018D98  38 C6 E6 40 */	subi r6, r6, 0x19c0
/* 8134A99C 00018D9C  48 29 D2 E9 */	bl fn_815E7C84
/* 8134A9A0 00018DA0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A9A4 00018DA4  40 82 01 18 */	bne .L_8134AABC
/* 8134A9A8 00018DA8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134A9AC 00018DAC  38 7D 07 DD */	addi r3, r29, 0x7dd
/* 8134A9B0 00018DB0  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134A9B4 00018DB4  88 84 E6 48 */	lbz r4, -0x19b8(r4)
/* 8134A9B8 00018DB8  7C 84 07 74 */	extsb r4, r4
/* 8134A9BC 00018DBC  4C C6 31 82 */	crclr cr1eq
/* 8134A9C0 00018DC0  48 1E 3C E1 */	bl OSReport
/* 8134A9C4 00018DC4  38 00 00 05 */	li r0, 0x5
/* 8134A9C8 00018DC8  7F E3 FB 78 */	mr r3, r31
/* 8134A9CC 00018DCC  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134A9D0 00018DD0  48 00 02 35 */	bl call_fa_mount__Q23ipl12NandSDWorkerFv
/* 8134A9D4 00018DD4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134A9D8 00018DD8  7C 7E 1B 78 */	mr r30, r3
/* 8134A9DC 00018DDC  40 82 00 7C */	bne .L_8134AA58
/* 8134A9E0 00018DE0  38 00 00 07 */	li r0, 0x7
/* 8134A9E4 00018DE4  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134A9E8 00018DE8  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134A9EC 00018DEC  3C 83 00 02 */	addis r4, r3, 0x2
/* 8134A9F0 00018DF0  80 04 E6 94 */	lwz r0, -0x196c(r4)
/* 8134A9F4 00018DF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134A9F8 00018DF8  41 82 00 1C */	beq .L_8134AA14
/* 8134A9FC 00018DFC  7F E3 FB 78 */	mr r3, r31
/* 8134AA00 00018E00  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134AA04 00018E04  48 00 82 91 */	bl clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AA08 00018E08  7F E3 FB 78 */	mr r3, r31
/* 8134AA0C 00018E0C  38 80 00 00 */	li r4, 0x0
/* 8134AA10 00018E10  48 00 88 DD */	bl get_sd_save_list__Q23ipl12NandSDWorkerFPUl
.L_8134AA14:
/* 8134AA14 00018E14  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AA18 00018E18  3C 83 00 02 */	addis r4, r3, 0x2
/* 8134AA1C 00018E1C  80 04 E6 98 */	lwz r0, -0x1968(r4)
/* 8134AA20 00018E20  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AA24 00018E24  41 82 00 1C */	beq .L_8134AA40
/* 8134AA28 00018E28  7F E3 FB 78 */	mr r3, r31
/* 8134AA2C 00018E2C  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134AA30 00018E30  48 00 84 FD */	bl clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AA34 00018E34  7F E3 FB 78 */	mr r3, r31
/* 8134AA38 00018E38  38 80 00 00 */	li r4, 0x0
/* 8134AA3C 00018E3C  48 00 89 2D */	bl get_sd_app_list__Q23ipl12NandSDWorkerFPUl
.L_8134AA40:
/* 8134AA40 00018E40  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134AA44 00018E44  2C 00 00 07 */	cmpwi r0, 0x7
/* 8134AA48 00018E48  40 82 00 64 */	bne .L_8134AAAC
/* 8134AA4C 00018E4C  38 00 00 06 */	li r0, 0x6
/* 8134AA50 00018E50  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134AA54 00018E54  48 00 00 58 */	b .L_8134AAAC
.L_8134AA58:
/* 8134AA58 00018E58  2C 03 FF F7 */	cmpwi r3, -0x9
/* 8134AA5C 00018E5C  40 82 00 1C */	bne .L_8134AA78
/* 8134AA60 00018E60  38 7D 08 06 */	addi r3, r29, 0x806
/* 8134AA64 00018E64  4C C6 31 82 */	crclr cr1eq
/* 8134AA68 00018E68  48 1E 3C 39 */	bl OSReport
/* 8134AA6C 00018E6C  38 00 00 03 */	li r0, 0x3
/* 8134AA70 00018E70  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134AA74 00018E74  48 00 00 38 */	b .L_8134AAAC
.L_8134AA78:
/* 8134AA78 00018E78  2C 03 FF F6 */	cmpwi r3, -0xa
/* 8134AA7C 00018E7C  40 82 00 1C */	bne .L_8134AA98
/* 8134AA80 00018E80  38 7D 08 23 */	addi r3, r29, 0x823
/* 8134AA84 00018E84  4C C6 31 82 */	crclr cr1eq
/* 8134AA88 00018E88  48 1E 3C 19 */	bl OSReport
/* 8134AA8C 00018E8C  38 00 00 04 */	li r0, 0x4
/* 8134AA90 00018E90  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134AA94 00018E94  48 00 00 18 */	b .L_8134AAAC
.L_8134AA98:
/* 8134AA98 00018E98  38 7D 08 41 */	addi r3, r29, 0x841
/* 8134AA9C 00018E9C  4C C6 31 82 */	crclr cr1eq
/* 8134AAA0 00018EA0  48 1E 3C 01 */	bl OSReport
/* 8134AAA4 00018EA4  38 00 00 01 */	li r0, 0x1
/* 8134AAA8 00018EA8  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
.L_8134AAAC:
/* 8134AAAC 00018EAC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AAB0 00018EB0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AAB4 00018EB4  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134AAB8 00018EB8  48 00 01 34 */	b .L_8134ABEC
.L_8134AABC:
/* 8134AABC 00018EBC  48 29 D4 ED */	bl fn_815E7FA8
/* 8134AAC0 00018EC0  7C 64 1B 78 */	mr r4, r3
/* 8134AAC4 00018EC4  38 7D 08 5E */	addi r3, r29, 0x85e
/* 8134AAC8 00018EC8  4C C6 31 82 */	crclr cr1eq
/* 8134AACC 00018ECC  48 1E 3B D5 */	bl OSReport
/* 8134AAD0 00018ED0  38 60 00 00 */	li r3, 0x0
/* 8134AAD4 00018ED4  38 00 FF FE */	li r0, -0x2
/* 8134AAD8 00018ED8  90 6D A6 98 */	stw r3, lbl_816986D8@sda21(r0)
/* 8134AADC 00018EDC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AAE0 00018EE0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AAE4 00018EE4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AAE8 00018EE8  48 00 01 04 */	b .L_8134ABEC
.L_8134AAEC:
/* 8134AAEC 00018EEC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134AAF0 00018EF0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AAF4 00018EF4  80 03 EA 5C */	lwz r0, -0x15a4(r3)
/* 8134AAF8 00018EF8  2C 00 FF FF */	cmpwi r0, -0x1
/* 8134AAFC 00018EFC  40 82 00 10 */	bne .L_8134AB0C
/* 8134AB00 00018F00  38 00 FF FE */	li r0, -0x2
/* 8134AB04 00018F04  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AB08 00018F08  48 00 00 E4 */	b .L_8134ABEC
.L_8134AB0C:
/* 8134AB0C 00018F0C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AB10 00018F10  48 00 00 DC */	b .L_8134ABEC
.L_8134AB14:
/* 8134AB14 00018F14  38 00 00 05 */	li r0, 0x5
/* 8134AB18 00018F18  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134AB1C 00018F1C  48 00 00 E9 */	bl call_fa_mount__Q23ipl12NandSDWorkerFv
/* 8134AB20 00018F20  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AB24 00018F24  7C 7E 1B 78 */	mr r30, r3
/* 8134AB28 00018F28  40 82 00 7C */	bne .L_8134ABA4
/* 8134AB2C 00018F2C  38 00 00 07 */	li r0, 0x7
/* 8134AB30 00018F30  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134AB34 00018F34  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AB38 00018F38  3C 83 00 02 */	addis r4, r3, 0x2
/* 8134AB3C 00018F3C  80 04 E6 94 */	lwz r0, -0x196c(r4)
/* 8134AB40 00018F40  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AB44 00018F44  41 82 00 1C */	beq .L_8134AB60
/* 8134AB48 00018F48  7F E3 FB 78 */	mr r3, r31
/* 8134AB4C 00018F4C  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134AB50 00018F50  48 00 81 45 */	bl clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AB54 00018F54  7F E3 FB 78 */	mr r3, r31
/* 8134AB58 00018F58  38 80 00 00 */	li r4, 0x0
/* 8134AB5C 00018F5C  48 00 87 91 */	bl get_sd_save_list__Q23ipl12NandSDWorkerFPUl
.L_8134AB60:
/* 8134AB60 00018F60  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134AB64 00018F64  3C 83 00 02 */	addis r4, r3, 0x2
/* 8134AB68 00018F68  80 04 E6 98 */	lwz r0, -0x1968(r4)
/* 8134AB6C 00018F6C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AB70 00018F70  41 82 00 1C */	beq .L_8134AB8C
/* 8134AB74 00018F74  7F E3 FB 78 */	mr r3, r31
/* 8134AB78 00018F78  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134AB7C 00018F7C  48 00 83 B1 */	bl clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134AB80 00018F80  7F E3 FB 78 */	mr r3, r31
/* 8134AB84 00018F84  38 80 00 00 */	li r4, 0x0
/* 8134AB88 00018F88  48 00 87 E1 */	bl get_sd_app_list__Q23ipl12NandSDWorkerFPUl
.L_8134AB8C:
/* 8134AB8C 00018F8C  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134AB90 00018F90  2C 00 00 07 */	cmpwi r0, 0x7
/* 8134AB94 00018F94  40 82 00 38 */	bne .L_8134ABCC
/* 8134AB98 00018F98  38 00 00 06 */	li r0, 0x6
/* 8134AB9C 00018F9C  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134ABA0 00018FA0  48 00 00 2C */	b .L_8134ABCC
.L_8134ABA4:
/* 8134ABA4 00018FA4  2C 03 FF F7 */	cmpwi r3, -0x9
/* 8134ABA8 00018FA8  40 82 00 10 */	bne .L_8134ABB8
/* 8134ABAC 00018FAC  38 00 00 03 */	li r0, 0x3
/* 8134ABB0 00018FB0  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134ABB4 00018FB4  48 00 00 18 */	b .L_8134ABCC
.L_8134ABB8:
/* 8134ABB8 00018FB8  2C 03 FF F6 */	cmpwi r3, -0xa
/* 8134ABBC 00018FBC  38 00 00 01 */	li r0, 0x1
/* 8134ABC0 00018FC0  40 82 00 08 */	bne .L_8134ABC8
/* 8134ABC4 00018FC4  38 00 00 04 */	li r0, 0x4
.L_8134ABC8:
/* 8134ABC8 00018FC8  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
.L_8134ABCC:
/* 8134ABCC 00018FCC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134ABD0 00018FD0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134ABD4 00018FD4  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134ABD8 00018FD8  48 00 00 14 */	b .L_8134ABEC
.L_8134ABDC:
/* 8134ABDC 00018FDC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134ABE0 00018FE0  38 00 00 00 */	li r0, 0x0
/* 8134ABE4 00018FE4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134ABE8 00018FE8  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134ABEC:
/* 8134ABEC 00018FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8134ABF0 00018FF0  48 2A E9 25 */	bl _restgpr_29
/* 8134ABF4 00018FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134ABF8 00018FF8  7C 08 03 A6 */	mtlr r0
/* 8134ABFC 00018FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8134AC00 00019000  4E 80 00 20 */	blr
.endfn do_mount_sd__Q23ipl12NandSDWorkerFv

# .text:0x2818 | 0x8134AC04 | size: 0x1EC
# ipl::NandSDWorker::call_fa_mount()
.fn call_fa_mount__Q23ipl12NandSDWorkerFv, global
/* 8134AC04 00019004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134AC08 00019008  7C 08 02 A6 */	mflr r0
/* 8134AC0C 0001900C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134AC10 00019010  39 61 00 20 */	addi r11, r1, 0x20
/* 8134AC14 00019014  48 2A E8 B5 */	bl _savegpr_29
/* 8134AC18 00019018  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134AC1C 0001901C  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134AC20 00019020  7C 7E 1B 78 */	mr r30, r3
/* 8134AC24 00019024  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134AC28 00019028  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134AC2C 0001902C  41 82 00 7C */	beq .L_8134ACA8
/* 8134AC30 00019030  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134AC34 00019034  38 80 00 01 */	li r4, 0x1
/* 8134AC38 00019038  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AC3C 0001903C  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134AC40 00019040  7C 03 07 74 */	extsb r3, r0
/* 8134AC44 00019044  48 29 D7 F9 */	bl fn_815E843C
/* 8134AC48 00019048  7C 64 1B 78 */	mr r4, r3
/* 8134AC4C 0001904C  38 7F 08 82 */	addi r3, r31, 0x882
/* 8134AC50 00019050  4C C6 31 82 */	crclr cr1eq
/* 8134AC54 00019054  48 1E 3A 4D */	bl OSReport
/* 8134AC58 00019058  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134AC5C 0001905C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AC60 00019060  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134AC64 00019064  7C 03 07 74 */	extsb r3, r0
/* 8134AC68 00019068  48 29 D2 99 */	bl fn_815E7F00
/* 8134AC6C 0001906C  7C 64 1B 78 */	mr r4, r3
/* 8134AC70 00019070  38 7F 02 75 */	addi r3, r31, 0x275
/* 8134AC74 00019074  4C C6 31 82 */	crclr cr1eq
/* 8134AC78 00019078  48 1E 3A 29 */	bl OSReport
/* 8134AC7C 0001907C  80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8134AC80 00019080  38 60 00 00 */	li r3, 0x0
/* 8134AC84 00019084  38 80 00 00 */	li r4, 0x0
/* 8134AC88 00019088  38 A0 00 00 */	li r5, 0x0
/* 8134AC8C 0001908C  3C C6 00 02 */	addis r6, r6, 0x2
/* 8134AC90 00019090  38 C6 E6 40 */	subi r6, r6, 0x19c0
/* 8134AC94 00019094  48 29 CF F1 */	bl fn_815E7C84
/* 8134AC98 00019098  7C 64 1B 78 */	mr r4, r3
/* 8134AC9C 0001909C  38 7F 08 B6 */	addi r3, r31, 0x8b6
/* 8134ACA0 000190A0  4C C6 31 82 */	crclr cr1eq
/* 8134ACA4 000190A4  48 1E 39 FD */	bl OSReport
.L_8134ACA8:
/* 8134ACA8 000190A8  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134ACAC 000190AC  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134ACB0 000190B0  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134ACB4 000190B4  7C 03 07 74 */	extsb r3, r0
/* 8134ACB8 000190B8  48 29 D5 9D */	bl fn_815E8254
/* 8134ACBC 000190BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ACC0 000190C0  40 82 00 A0 */	bne .L_8134AD60
/* 8134ACC4 000190C4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134ACC8 000190C8  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 8134ACCC 000190CC  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134ACD0 000190D0  88 84 E6 48 */	lbz r4, -0x19b8(r4)
/* 8134ACD4 000190D4  7C 84 07 74 */	extsb r4, r4
/* 8134ACD8 000190D8  4C C6 31 82 */	crclr cr1eq
/* 8134ACDC 000190DC  48 1E 39 C5 */	bl OSReport
/* 8134ACE0 000190E0  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134ACE4 000190E4  38 80 00 02 */	li r4, 0x2
/* 8134ACE8 000190E8  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134ACEC 000190EC  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134ACF0 000190F0  7C 03 07 74 */	extsb r3, r0
/* 8134ACF4 000190F4  48 29 D1 85 */	bl fn_815E7E78
/* 8134ACF8 000190F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ACFC 000190FC  7C 7D 1B 78 */	mr r29, r3
/* 8134AD00 00019100  40 82 00 1C */	bne .L_8134AD1C
/* 8134AD04 00019104  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134AD08 00019108  38 00 00 00 */	li r0, 0x0
/* 8134AD0C 0001910C  38 60 00 00 */	li r3, 0x0
/* 8134AD10 00019110  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134AD14 00019114  90 04 EA 58 */	stw r0, -0x15a8(r4)
/* 8134AD18 00019118  48 00 00 C0 */	b .L_8134ADD8
.L_8134AD1C:
/* 8134AD1C 0001911C  48 29 D2 8D */	bl fn_815E7FA8
/* 8134AD20 00019120  2C 03 00 C9 */	cmpwi r3, 0xc9
/* 8134AD24 00019124  40 82 00 28 */	bne .L_8134AD4C
/* 8134AD28 00019128  38 7F 08 FC */	addi r3, r31, 0x8fc
/* 8134AD2C 0001912C  4C C6 31 82 */	crclr cr1eq
/* 8134AD30 00019130  48 1E 39 71 */	bl OSReport
/* 8134AD34 00019134  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134AD38 00019138  38 00 00 01 */	li r0, 0x1
/* 8134AD3C 0001913C  38 60 00 00 */	li r3, 0x0
/* 8134AD40 00019140  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134AD44 00019144  90 04 EA 58 */	stw r0, -0x15a8(r4)
/* 8134AD48 00019148  48 00 00 90 */	b .L_8134ADD8
.L_8134AD4C:
/* 8134AD4C 0001914C  7F C3 F3 78 */	mr r3, r30
/* 8134AD50 00019150  7F A4 EB 78 */	mr r4, r29
/* 8134AD54 00019154  38 A0 00 00 */	li r5, 0x0
/* 8134AD58 00019158  48 00 8F 5D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134AD5C 0001915C  48 00 00 7C */	b .L_8134ADD8
.L_8134AD60:
/* 8134AD60 00019160  48 29 D2 49 */	bl fn_815E7FA8
/* 8134AD64 00019164  2C 03 00 08 */	cmpwi r3, 0x8
/* 8134AD68 00019168  40 82 00 24 */	bne .L_8134AD8C
/* 8134AD6C 0001916C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134AD70 00019170  38 60 FF FE */	li r3, -0x2
/* 8134AD74 00019174  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134AD78 00019178  88 04 E6 49 */	lbz r0, -0x19b7(r4)
/* 8134AD7C 0001917C  54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 8134AD80 00019180  41 82 00 58 */	beq .L_8134ADD8
/* 8134AD84 00019184  38 60 FF F7 */	li r3, -0x9
/* 8134AD88 00019188  48 00 00 50 */	b .L_8134ADD8
.L_8134AD8C:
/* 8134AD8C 0001918C  2C 03 00 16 */	cmpwi r3, 0x16
/* 8134AD90 00019190  40 82 00 0C */	bne .L_8134AD9C
/* 8134AD94 00019194  38 60 FF FE */	li r3, -0x2
/* 8134AD98 00019198  48 00 00 40 */	b .L_8134ADD8
.L_8134AD9C:
/* 8134AD9C 0001919C  2C 03 00 05 */	cmpwi r3, 0x5
/* 8134ADA0 000191A0  40 82 00 34 */	bne .L_8134ADD4
/* 8134ADA4 000191A4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134ADA8 000191A8  38 7F 09 27 */	addi r3, r31, 0x927
/* 8134ADAC 000191AC  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134ADB0 000191B0  88 84 E6 49 */	lbz r4, -0x19b7(r4)
/* 8134ADB4 000191B4  4C C6 31 82 */	crclr cr1eq
/* 8134ADB8 000191B8  48 1E 38 E9 */	bl OSReport
/* 8134ADBC 000191BC  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134ADC0 000191C0  38 60 FF F6 */	li r3, -0xa
/* 8134ADC4 000191C4  2C 00 00 01 */	cmpwi r0, 0x1
/* 8134ADC8 000191C8  40 82 00 10 */	bne .L_8134ADD8
/* 8134ADCC 000191CC  38 60 FF FE */	li r3, -0x2
/* 8134ADD0 000191D0  48 00 00 08 */	b .L_8134ADD8
.L_8134ADD4:
/* 8134ADD4 000191D4  38 60 FF F6 */	li r3, -0xa
.L_8134ADD8:
/* 8134ADD8 000191D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8134ADDC 000191DC  48 2A E7 39 */	bl _restgpr_29
/* 8134ADE0 000191E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134ADE4 000191E4  7C 08 03 A6 */	mtlr r0
/* 8134ADE8 000191E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8134ADEC 000191EC  4E 80 00 20 */	blr
.endfn call_fa_mount__Q23ipl12NandSDWorkerFv

# .text:0x2A04 | 0x8134ADF0 | size: 0x178
# ipl::NandSDWorker::do_list_nand_save()
.fn do_list_nand_save__Q23ipl12NandSDWorkerFv, global
/* 8134ADF0 000191F0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8134ADF4 000191F4  7C 08 02 A6 */	mflr r0
/* 8134ADF8 000191F8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8134ADFC 000191FC  39 61 00 80 */	addi r11, r1, 0x80
/* 8134AE00 00019200  48 2A E6 B1 */	bl _savegpr_23
/* 8134AE04 00019204  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134AE08 00019208  7C 7B 1B 78 */	mr r27, r3
/* 8134AE0C 0001920C  3B E0 00 00 */	li r31, 0x0
/* 8134AE10 00019210  38 81 00 10 */	addi r4, r1, 0x10
/* 8134AE14 00019214  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134AE18 00019218  38 60 00 00 */	li r3, 0x0
/* 8134AE1C 0001921C  83 A5 EA 38 */	lwz r29, -0x15c8(r5)
/* 8134AE20 00019220  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8134AE24 00019224  48 27 36 C1 */	bl fn_815BE4E4
/* 8134AE28 00019228  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134AE2C 0001922C  38 A0 00 20 */	li r5, 0x20
/* 8134AE30 00019230  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134AE34 00019234  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AE38 00019238  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134AE3C 0001923C  54 04 18 38 */	slwi r4, r0, 3
/* 8134AE40 00019240  48 20 F9 15 */	bl fn_8155A754
/* 8134AE44 00019244  7C 7E 1B 78 */	mr r30, r3
/* 8134AE48 00019248  38 81 00 10 */	addi r4, r1, 0x10
/* 8134AE4C 0001924C  48 27 36 99 */	bl fn_815BE4E4
/* 8134AE50 00019250  3B 40 00 00 */	li r26, 0x0
/* 8134AE54 00019254  3B 80 00 00 */	li r28, 0x0
/* 8134AE58 00019258  3F 00 81 63 */	lis r24, lbl_81635BA4@ha
/* 8134AE5C 0001925C  3B 20 FF FF */	li r25, -0x1
/* 8134AE60 00019260  48 00 00 B0 */	b .L_8134AF10
.L_8134AE64:
/* 8134AE64 00019264  7E FE FA 14 */	add r23, r30, r31
/* 8134AE68 00019268  7C 7E F8 2E */	lwzx r3, r30, r31
/* 8134AE6C 0001926C  80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AE70 00019270  4B FF E3 DD */	bl is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134AE74 00019274  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AE78 00019278  41 82 00 64 */	beq .L_8134AEDC
/* 8134AE7C 0001927C  80 17 00 04 */	lwz r0, 0x4(r23)
/* 8134AE80 00019280  38 61 00 14 */	addi r3, r1, 0x14
/* 8134AE84 00019284  80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8134AE88 00019288  38 B8 5B A4 */	addi r5, r24, lbl_81635BA4@l
/* 8134AE8C 0001928C  7C 07 C8 38 */	and r7, r0, r25
/* 8134AE90 00019290  38 80 00 40 */	li r4, 0x40
/* 8134AE94 00019294  4C C6 31 82 */	crclr cr1eq
/* 8134AE98 00019298  48 2B 5B 11 */	bl fn_816009A8
/* 8134AE9C 0001929C  38 61 00 14 */	addi r3, r1, 0x14
/* 8134AEA0 000192A0  38 81 00 0C */	addi r4, r1, 0xc
/* 8134AEA4 000192A4  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134AEA8 000192A8  48 01 56 75 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134AEAC 000192AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AEB0 000192B0  40 82 00 58 */	bne .L_8134AF08
/* 8134AEB4 000192B4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134AEB8 000192B8  28 00 00 01 */	cmplwi r0, 0x1
/* 8134AEBC 000192BC  40 81 00 4C */	ble .L_8134AF08
/* 8134AEC0 000192C0  80 17 00 00 */	lwz r0, 0x0(r23)
/* 8134AEC4 000192C4  7C 7D D2 14 */	add r3, r29, r26
/* 8134AEC8 000192C8  80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AECC 000192CC  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134AED0 000192D0  7C 1D D1 2E */	stwx r0, r29, r26
/* 8134AED4 000192D4  3B 5A 00 08 */	addi r26, r26, 0x8
/* 8134AED8 000192D8  48 00 00 30 */	b .L_8134AF08
.L_8134AEDC:
/* 8134AEDC 000192DC  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134AEE0 000192E0  80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AEE4 000192E4  4B FF E4 19 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134AEE8 000192E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AEEC 000192EC  41 82 00 1C */	beq .L_8134AF08
/* 8134AEF0 000192F0  80 17 00 00 */	lwz r0, 0x0(r23)
/* 8134AEF4 000192F4  7C 7D D2 14 */	add r3, r29, r26
/* 8134AEF8 000192F8  80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134AEFC 000192FC  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134AF00 00019300  7C 1D D1 2E */	stwx r0, r29, r26
/* 8134AF04 00019304  3B 5A 00 08 */	addi r26, r26, 0x8
.L_8134AF08:
/* 8134AF08 00019308  3B 9C 00 01 */	addi r28, r28, 0x1
/* 8134AF0C 0001930C  3B FF 00 08 */	addi r31, r31, 0x8
.L_8134AF10:
/* 8134AF10 00019310  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134AF14 00019314  7C 1C 00 40 */	cmplw r28, r0
/* 8134AF18 00019318  41 80 FF 4C */	blt .L_8134AE64
/* 8134AF1C 0001931C  7F 63 DB 78 */	mr r3, r27
/* 8134AF20 00019320  38 C0 00 02 */	li r6, 0x2
/* 8134AF24 00019324  38 A0 00 01 */	li r5, 0x1
/* 8134AF28 00019328  48 00 8C 85 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134AF2C 0001932C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134AF30 00019330  7F C4 F3 78 */	mr r4, r30
/* 8134AF34 00019334  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134AF38 00019338  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134AF3C 0001933C  48 20 FA C9 */	bl fn_8155AA04
/* 8134AF40 00019340  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134AF44 00019344  38 00 00 00 */	li r0, 0x0
/* 8134AF48 00019348  39 61 00 80 */	addi r11, r1, 0x80
/* 8134AF4C 0001934C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134AF50 00019350  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134AF54 00019354  48 2A E5 A9 */	bl _restgpr_23
/* 8134AF58 00019358  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8134AF5C 0001935C  7C 08 03 A6 */	mtlr r0
/* 8134AF60 00019360  38 21 00 80 */	addi r1, r1, 0x80
/* 8134AF64 00019364  4E 80 00 20 */	blr
.endfn do_list_nand_save__Q23ipl12NandSDWorkerFv

# .text:0x2B7C | 0x8134AF68 | size: 0xE4
# ipl::NandSDWorker::check_nand_save_banner_exist(unsigned long long)
.fn check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx, global
/* 8134AF68 00019368  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134AF6C 0001936C  7C 08 02 A6 */	mflr r0
/* 8134AF70 00019370  90 01 00 64 */	stw r0, 0x64(r1)
/* 8134AF74 00019374  38 00 00 00 */	li r0, 0x0
/* 8134AF78 00019378  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8134AF7C 0001937C  7C BF 2B 78 */	mr r31, r5
/* 8134AF80 00019380  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8134AF84 00019384  7C DE 33 78 */	mr r30, r6
/* 8134AF88 00019388  98 01 00 08 */	stb r0, 0x8(r1)
/* 8134AF8C 0001938C  48 00 8C 21 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134AF90 00019390  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AF94 00019394  40 82 00 0C */	bne .L_8134AFA0
/* 8134AF98 00019398  38 60 00 00 */	li r3, 0x0
/* 8134AF9C 0001939C  48 00 00 98 */	b .L_8134B034
.L_8134AFA0:
/* 8134AFA0 000193A0  3C A0 81 63 */	lis r5, lbl_81635BA4@ha
/* 8134AFA4 000193A4  38 00 FF FF */	li r0, -0x1
/* 8134AFA8 000193A8  7F E6 FB 78 */	mr r6, r31
/* 8134AFAC 000193AC  38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFB0 000193B0  38 A5 5B A4 */	addi r5, r5, lbl_81635BA4@l
/* 8134AFB4 000193B4  7F C7 00 38 */	and r7, r30, r0
/* 8134AFB8 000193B8  38 80 00 40 */	li r4, 0x40
/* 8134AFBC 000193BC  4C C6 31 82 */	crclr cr1eq
/* 8134AFC0 000193C0  48 2B 59 E9 */	bl fn_816009A8
/* 8134AFC4 000193C4  38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFC8 000193C8  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134AFCC 000193CC  38 A0 00 40 */	li r5, 0x40
/* 8134AFD0 000193D0  48 2B 74 65 */	bl fn_81602434
/* 8134AFD4 000193D4  80 8D 81 58 */	lwz r4, lbl_81696198@sda21(r0)
/* 8134AFD8 000193D8  38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFDC 000193DC  38 A0 00 40 */	li r5, 0x40
/* 8134AFE0 000193E0  48 2B 74 55 */	bl fn_81602434
/* 8134AFE4 000193E4  38 61 00 09 */	addi r3, r1, 0x9
/* 8134AFE8 000193E8  38 81 00 08 */	addi r4, r1, 0x8
/* 8134AFEC 000193EC  48 01 51 8D */	bl GetType__Q33ipl4nand7wrapperFPCcPUc
/* 8134AFF0 000193F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134AFF4 000193F4  7C 65 1B 78 */	mr r5, r3
/* 8134AFF8 000193F8  40 82 00 18 */	bne .L_8134B010
/* 8134AFFC 000193FC  88 01 00 08 */	lbz r0, 0x8(r1)
/* 8134B000 00019400  28 00 00 01 */	cmplwi r0, 0x1
/* 8134B004 00019404  40 82 00 0C */	bne .L_8134B010
/* 8134B008 00019408  38 60 00 01 */	li r3, 0x1
/* 8134B00C 0001940C  48 00 00 28 */	b .L_8134B034
.L_8134B010:
/* 8134B010 00019410  2C 03 FF F4 */	cmpwi r3, -0xc
/* 8134B014 00019414  41 82 00 1C */	beq .L_8134B030
/* 8134B018 00019418  3C 60 81 63 */	lis r3, lbl_816363CB@ha
/* 8134B01C 0001941C  88 C1 00 08 */	lbz r6, 0x8(r1)
/* 8134B020 00019420  38 81 00 09 */	addi r4, r1, 0x9
/* 8134B024 00019424  38 63 63 CB */	addi r3, r3, lbl_816363CB@l
/* 8134B028 00019428  4C C6 31 82 */	crclr cr1eq
/* 8134B02C 0001942C  48 1E 36 75 */	bl OSReport
.L_8134B030:
/* 8134B030 00019430  38 60 00 00 */	li r3, 0x0
.L_8134B034:
/* 8134B034 00019434  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134B038 00019438  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8134B03C 0001943C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8134B040 00019440  7C 08 03 A6 */	mtlr r0
/* 8134B044 00019444  38 21 00 60 */	addi r1, r1, 0x60
/* 8134B048 00019448  4E 80 00 20 */	blr
.endfn check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx

# .text:0x2C60 | 0x8134B04C | size: 0x3B0
# ipl::NandSDWorker::get_nand_save_banner(unsigned long long, WIISaveBannerFile*, unsigned long*)
.fn get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl, global
/* 8134B04C 0001944C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8134B050 00019450  7C 08 02 A6 */	mflr r0
/* 8134B054 00019454  90 01 01 04 */	stw r0, 0x104(r1)
/* 8134B058 00019458  39 61 01 00 */	addi r11, r1, 0x100
/* 8134B05C 0001945C  48 2A E4 59 */	bl _savegpr_24
/* 8134B060 00019460  3B A0 00 00 */	li r29, 0x0
/* 8134B064 00019464  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134B068 00019468  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8134B06C 0001946C  7C DA 33 78 */	mr r26, r6
/* 8134B070 00019470  7C BB 2B 78 */	mr r27, r5
/* 8134B074 00019474  7C 79 1B 78 */	mr r25, r3
/* 8134B078 00019478  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B07C 0001947C  7C FC 3B 78 */	mr r28, r7
/* 8134B080 00019480  7D 18 43 78 */	mr r24, r8
/* 8134B084 00019484  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134B088 00019488  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B08C 0001948C  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B090 00019490  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B094 00019494  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134B098 00019498  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B09C 0001949C  48 00 7B 19 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B0A0 000194A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B0A4 000194A4  7C 7E 1B 78 */	mr r30, r3
/* 8134B0A8 000194A8  41 82 00 10 */	beq .L_8134B0B8
/* 8134B0AC 000194AC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8134B0B0 000194B0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134B0B4 000194B4  40 82 03 14 */	bne .L_8134B3C8
.L_8134B0B8:
/* 8134B0B8 000194B8  38 00 00 00 */	li r0, 0x0
/* 8134B0BC 000194BC  3C 80 00 01 */	lis r4, 0x1
/* 8134B0C0 000194C0  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134B0C4 000194C4  38 A4 F0 A0 */	subi r5, r4, 0xf60
/* 8134B0C8 000194C8  7F 83 E3 78 */	mr r3, r28
/* 8134B0CC 000194CC  3B A0 00 00 */	li r29, 0x0
/* 8134B0D0 000194D0  38 80 00 00 */	li r4, 0x0
/* 8134B0D4 000194D4  4B FE 52 61 */	bl memset
/* 8134B0D8 000194D8  7F 44 D3 78 */	mr r4, r26
/* 8134B0DC 000194DC  7F 63 DB 78 */	mr r3, r27
/* 8134B0E0 000194E0  4B FF E2 1D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134B0E4 000194E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B0E8 000194E8  41 82 00 24 */	beq .L_8134B10C
/* 8134B0EC 000194EC  7F 23 CB 78 */	mr r3, r25
/* 8134B0F0 000194F0  7F 46 D3 78 */	mr r6, r26
/* 8134B0F4 000194F4  7F 65 DB 78 */	mr r5, r27
/* 8134B0F8 000194F8  7F 87 E3 78 */	mr r7, r28
/* 8134B0FC 000194FC  7F 08 C3 78 */	mr r8, r24
/* 8134B100 00019500  48 00 54 0D */	bl get_save_banner_for_data_only_title__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 8134B104 00019504  90 61 00 0C */	stw r3, 0xc(r1)
/* 8134B108 00019508  48 00 02 6C */	b .L_8134B374
.L_8134B10C:
/* 8134B10C 0001950C  38 00 FF FF */	li r0, -0x1
/* 8134B110 00019510  7F 66 DB 78 */	mr r6, r27
/* 8134B114 00019514  38 61 00 10 */	addi r3, r1, 0x10
/* 8134B118 00019518  38 BF 01 1C */	addi r5, r31, 0x11c
/* 8134B11C 0001951C  7F 47 00 38 */	and r7, r26, r0
/* 8134B120 00019520  38 80 00 40 */	li r4, 0x40
/* 8134B124 00019524  4C C6 31 82 */	crclr cr1eq
/* 8134B128 00019528  48 2B 58 81 */	bl fn_816009A8
/* 8134B12C 0001952C  38 61 00 10 */	addi r3, r1, 0x10
/* 8134B130 00019530  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134B134 00019534  38 A0 00 40 */	li r5, 0x40
/* 8134B138 00019538  48 2B 72 FD */	bl fn_81602434
/* 8134B13C 0001953C  80 8D 81 58 */	lwz r4, lbl_81696198@sda21(r0)
/* 8134B140 00019540  38 61 00 10 */	addi r3, r1, 0x10
/* 8134B144 00019544  38 A0 00 40 */	li r5, 0x40
/* 8134B148 00019548  48 2B 72 ED */	bl fn_81602434
/* 8134B14C 0001954C  7F 23 CB 78 */	mr r3, r25
/* 8134B150 00019550  7F 46 D3 78 */	mr r6, r26
/* 8134B154 00019554  7F 65 DB 78 */	mr r5, r27
/* 8134B158 00019558  48 00 8A 55 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134B15C 0001955C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B160 00019560  40 82 00 10 */	bne .L_8134B170
/* 8134B164 00019564  38 00 FF FE */	li r0, -0x2
/* 8134B168 00019568  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B16C 0001956C  48 00 01 A8 */	b .L_8134B314
.L_8134B170:
/* 8134B170 00019570  38 61 00 10 */	addi r3, r1, 0x10
/* 8134B174 00019574  38 81 00 50 */	addi r4, r1, 0x50
/* 8134B178 00019578  38 A0 00 01 */	li r5, 0x1
/* 8134B17C 0001957C  48 01 4B 15 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8134B180 00019580  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B184 00019584  41 82 00 24 */	beq .L_8134B1A8
/* 8134B188 00019588  7C 65 1B 78 */	mr r5, r3
/* 8134B18C 0001958C  38 7F 09 70 */	addi r3, r31, 0x970
/* 8134B190 00019590  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B194 00019594  4C C6 31 82 */	crclr cr1eq
/* 8134B198 00019598  48 1E 35 09 */	bl OSReport
/* 8134B19C 0001959C  38 00 FF FE */	li r0, -0x2
/* 8134B1A0 000195A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B1A4 000195A4  48 00 01 70 */	b .L_8134B314
.L_8134B1A8:
/* 8134B1A8 000195A8  38 61 00 50 */	addi r3, r1, 0x50
/* 8134B1AC 000195AC  38 81 00 08 */	addi r4, r1, 0x8
/* 8134B1B0 000195B0  3B A0 00 01 */	li r29, 0x1
/* 8134B1B4 000195B4  48 01 4D 11 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 8134B1B8 000195B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B1BC 000195BC  41 82 00 24 */	beq .L_8134B1E0
/* 8134B1C0 000195C0  7C 65 1B 78 */	mr r5, r3
/* 8134B1C4 000195C4  38 7F 09 96 */	addi r3, r31, 0x996
/* 8134B1C8 000195C8  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B1CC 000195CC  4C C6 31 82 */	crclr cr1eq
/* 8134B1D0 000195D0  48 1E 34 D1 */	bl OSReport
/* 8134B1D4 000195D4  38 00 FF FE */	li r0, -0x2
/* 8134B1D8 000195D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B1DC 000195DC  48 00 01 38 */	b .L_8134B314
.L_8134B1E0:
/* 8134B1E0 000195E0  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134B1E4 000195E4  28 05 72 A0 */	cmplwi r5, 0x72a0
/* 8134B1E8 000195E8  40 80 00 20 */	bge .L_8134B208
/* 8134B1EC 000195EC  38 7F 09 C2 */	addi r3, r31, 0x9c2
/* 8134B1F0 000195F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B1F4 000195F4  4C C6 31 82 */	crclr cr1eq
/* 8134B1F8 000195F8  48 1E 34 A9 */	bl OSReport
/* 8134B1FC 000195FC  38 00 FF FD */	li r0, -0x3
/* 8134B200 00019600  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B204 00019604  48 00 01 10 */	b .L_8134B314
.L_8134B208:
/* 8134B208 00019608  28 05 F0 A0 */	cmplwi r5, 0xf0a0
/* 8134B20C 0001960C  40 81 00 20 */	ble .L_8134B22C
/* 8134B210 00019610  38 7F 09 F2 */	addi r3, r31, 0x9f2
/* 8134B214 00019614  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B218 00019618  4C C6 31 82 */	crclr cr1eq
/* 8134B21C 0001961C  48 1E 34 85 */	bl OSReport
/* 8134B220 00019620  38 00 FF FD */	li r0, -0x3
/* 8134B224 00019624  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B228 00019628  48 00 00 EC */	b .L_8134B314
.L_8134B22C:
/* 8134B22C 0001962C  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134B230 00019630  41 82 00 08 */	beq .L_8134B238
/* 8134B234 00019634  90 B8 00 00 */	stw r5, 0x0(r24)
.L_8134B238:
/* 8134B238 00019638  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134B23C 0001963C  7F 84 E3 78 */	mr r4, r28
/* 8134B240 00019640  38 61 00 50 */	addi r3, r1, 0x50
/* 8134B244 00019644  48 01 4B 25 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8134B248 00019648  7C 78 1B 78 */	mr r24, r3
/* 8134B24C 0001964C  7F 23 CB 78 */	mr r3, r25
/* 8134B250 00019650  7F 04 C3 78 */	mr r4, r24
/* 8134B254 00019654  38 A1 00 0C */	addi r5, r1, 0xc
/* 8134B258 00019658  48 00 8A 01 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134B25C 0001965C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B260 00019660  40 82 00 B4 */	bne .L_8134B314
/* 8134B264 00019664  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134B268 00019668  7C 18 00 40 */	cmplw r24, r0
/* 8134B26C 0001966C  41 82 00 24 */	beq .L_8134B290
/* 8134B270 00019670  7F 05 C3 78 */	mr r5, r24
/* 8134B274 00019674  38 7F 0A 22 */	addi r3, r31, 0xa22
/* 8134B278 00019678  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B27C 0001967C  4C C6 31 82 */	crclr cr1eq
/* 8134B280 00019680  48 1E 34 21 */	bl OSReport
/* 8134B284 00019684  38 00 FF FE */	li r0, -0x2
/* 8134B288 00019688  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B28C 0001968C  48 00 00 88 */	b .L_8134B314
.L_8134B290:
/* 8134B290 00019690  38 61 00 50 */	addi r3, r1, 0x50
/* 8134B294 00019694  48 01 4A 71 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134B298 00019698  7C 78 1B 78 */	mr r24, r3
/* 8134B29C 0001969C  7F 23 CB 78 */	mr r3, r25
/* 8134B2A0 000196A0  7F 04 C3 78 */	mr r4, r24
/* 8134B2A4 000196A4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8134B2A8 000196A8  48 00 89 B1 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134B2AC 000196AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B2B0 000196B0  40 82 00 64 */	bne .L_8134B314
/* 8134B2B4 000196B4  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134B2B8 000196B8  41 82 00 24 */	beq .L_8134B2DC
/* 8134B2BC 000196BC  7F 05 C3 78 */	mr r5, r24
/* 8134B2C0 000196C0  38 7F 0A 48 */	addi r3, r31, 0xa48
/* 8134B2C4 000196C4  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B2C8 000196C8  4C C6 31 82 */	crclr cr1eq
/* 8134B2CC 000196CC  48 1E 33 D5 */	bl OSReport
/* 8134B2D0 000196D0  38 00 FF FE */	li r0, -0x2
/* 8134B2D4 000196D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B2D8 000196D8  48 00 00 3C */	b .L_8134B314
.L_8134B2DC:
/* 8134B2DC 000196DC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134B2E0 000196E0  3B A0 00 00 */	li r29, 0x0
/* 8134B2E4 000196E4  3C 03 A8 B7 */	subis r0, r3, 0x5749
/* 8134B2E8 000196E8  28 00 42 4E */	cmplwi r0, 0x424e
/* 8134B2EC 000196EC  41 82 00 20 */	beq .L_8134B30C
/* 8134B2F0 000196F0  38 7F 0A 6F */	addi r3, r31, 0xa6f
/* 8134B2F4 000196F4  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B2F8 000196F8  4C C6 31 82 */	crclr cr1eq
/* 8134B2FC 000196FC  48 1E 33 A5 */	bl OSReport
/* 8134B300 00019700  38 00 FF FD */	li r0, -0x3
/* 8134B304 00019704  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B308 00019708  48 00 00 0C */	b .L_8134B314
.L_8134B30C:
/* 8134B30C 0001970C  38 00 00 00 */	li r0, 0x0
/* 8134B310 00019710  90 01 00 0C */	stw r0, 0xc(r1)
.L_8134B314:
/* 8134B314 00019714  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B318 00019718  41 82 00 4C */	beq .L_8134B364
/* 8134B31C 0001971C  38 61 00 50 */	addi r3, r1, 0x50
/* 8134B320 00019720  48 01 49 E5 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134B324 00019724  7C 7D 1B 78 */	mr r29, r3
/* 8134B328 00019728  7F 23 CB 78 */	mr r3, r25
/* 8134B32C 0001972C  7F A4 EB 78 */	mr r4, r29
/* 8134B330 00019730  38 A1 00 0C */	addi r5, r1, 0xc
/* 8134B334 00019734  48 00 89 25 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134B338 00019738  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B33C 0001973C  40 82 00 28 */	bne .L_8134B364
/* 8134B340 00019740  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B344 00019744  41 82 00 20 */	beq .L_8134B364
/* 8134B348 00019748  7F A5 EB 78 */	mr r5, r29
/* 8134B34C 0001974C  38 7F 0A 48 */	addi r3, r31, 0xa48
/* 8134B350 00019750  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B354 00019754  4C C6 31 82 */	crclr cr1eq
/* 8134B358 00019758  48 1E 33 49 */	bl OSReport
/* 8134B35C 0001975C  38 00 FF FE */	li r0, -0x2
/* 8134B360 00019760  90 01 00 0C */	stw r0, 0xc(r1)
.L_8134B364:
/* 8134B364 00019764  7F 23 CB 78 */	mr r3, r25
/* 8134B368 00019768  38 C0 00 02 */	li r6, 0x2
/* 8134B36C 0001976C  38 A0 00 01 */	li r5, 0x1
/* 8134B370 00019770  48 00 88 3D */	bl change_uid__Q23ipl12NandSDWorkerFUx
.L_8134B374:
/* 8134B374 00019774  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134B378 00019778  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134B37C 0001977C  40 82 00 64 */	bne .L_8134B3E0
/* 8134B380 00019780  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134B384 00019784  41 82 00 1C */	beq .L_8134B3A0
/* 8134B388 00019788  3C A0 00 01 */	lis r5, 0x1
/* 8134B38C 0001978C  7F C3 F3 78 */	mr r3, r30
/* 8134B390 00019790  7F 84 E3 78 */	mr r4, r28
/* 8134B394 00019794  38 A5 F0 A0 */	subi r5, r5, 0xf60
/* 8134B398 00019798  4B FE 4E 99 */	bl memcpy
/* 8134B39C 0001979C  48 00 00 44 */	b .L_8134B3E0
.L_8134B3A0:
/* 8134B3A0 000197A0  80 99 00 00 */	lwz r4, 0x0(r25)
/* 8134B3A4 000197A4  7F 23 CB 78 */	mr r3, r25
/* 8134B3A8 000197A8  7F 46 D3 78 */	mr r6, r26
/* 8134B3AC 000197AC  7F 65 DB 78 */	mr r5, r27
/* 8134B3B0 000197B0  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B3B4 000197B4  7F 87 E3 78 */	mr r7, r28
/* 8134B3B8 000197B8  39 00 FF FF */	li r8, -0x1
/* 8134B3BC 000197BC  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134B3C0 000197C0  48 00 75 39 */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
/* 8134B3C4 000197C4  48 00 00 1C */	b .L_8134B3E0
.L_8134B3C8:
/* 8134B3C8 000197C8  3C A0 00 01 */	lis r5, 0x1
/* 8134B3CC 000197CC  7F 83 E3 78 */	mr r3, r28
/* 8134B3D0 000197D0  7F C4 F3 78 */	mr r4, r30
/* 8134B3D4 000197D4  38 A5 F0 A0 */	subi r5, r5, 0xf60
/* 8134B3D8 000197D8  4B FE 4E 59 */	bl memcpy
/* 8134B3DC 000197DC  93 A1 00 0C */	stw r29, 0xc(r1)
.L_8134B3E0:
/* 8134B3E0 000197E0  39 61 01 00 */	addi r11, r1, 0x100
/* 8134B3E4 000197E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134B3E8 000197E8  48 2A E1 19 */	bl _restgpr_24
/* 8134B3EC 000197EC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8134B3F0 000197F0  7C 08 03 A6 */	mtlr r0
/* 8134B3F4 000197F4  38 21 01 00 */	addi r1, r1, 0x100
/* 8134B3F8 000197F8  4E 80 00 20 */	blr
.endfn get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl

# .text:0x3010 | 0x8134B3FC | size: 0x160
# ipl::NandSDWorker::do_get_sd_save_banner()
.fn do_get_sd_save_banner__Q23ipl12NandSDWorkerFv, global
/* 8134B3FC 000197FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134B400 00019800  7C 08 02 A6 */	mflr r0
/* 8134B404 00019804  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134B408 00019808  39 61 00 20 */	addi r11, r1, 0x20
/* 8134B40C 0001980C  48 2A E0 B9 */	bl _savegpr_28
/* 8134B410 00019810  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B414 00019814  7C 7F 1B 78 */	mr r31, r3
/* 8134B418 00019818  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B41C 0001981C  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B420 00019820  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B424 00019824  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134B428 00019828  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B42C 0001982C  48 00 77 89 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B430 00019830  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B434 00019834  7C 7D 1B 78 */	mr r29, r3
/* 8134B438 00019838  41 82 00 10 */	beq .L_8134B448
/* 8134B43C 0001983C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8134B440 00019840  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134B444 00019844  40 82 00 D4 */	bne .L_8134B518
.L_8134B448:
/* 8134B448 00019848  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B44C 0001984C  3F C0 00 01 */	lis r30, 0x1
/* 8134B450 00019850  38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134B454 00019854  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B458 00019858  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B45C 0001985C  48 21 02 0D */	bl fn_8155B668
/* 8134B460 00019860  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134B464 00019864  7C 7C 1B 78 */	mr r28, r3
/* 8134B468 00019868  7F E3 FB 78 */	mr r3, r31
/* 8134B46C 0001986C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B470 00019870  7F 85 E3 78 */	mr r5, r28
/* 8134B474 00019874  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134B478 00019878  48 00 42 11 */	bl get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner
/* 8134B47C 0001987C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B480 00019880  40 82 00 74 */	bne .L_8134B4F4
/* 8134B484 00019884  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B488 00019888  38 9C 00 20 */	addi r4, r28, 0x20
/* 8134B48C 0001988C  38 BE F0 A0 */	subi r5, r30, 0xf60
/* 8134B490 00019890  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B494 00019894  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134B498 00019898  4B FE 4D 99 */	bl memcpy
/* 8134B49C 0001989C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B4A0 000198A0  41 82 00 18 */	beq .L_8134B4B8
/* 8134B4A4 000198A4  7F A3 EB 78 */	mr r3, r29
/* 8134B4A8 000198A8  38 9C 00 20 */	addi r4, r28, 0x20
/* 8134B4AC 000198AC  38 BE F0 A0 */	subi r5, r30, 0xf60
/* 8134B4B0 000198B0  4B FE 4D 81 */	bl memcpy
/* 8134B4B4 000198B4  48 00 00 2C */	b .L_8134B4E0
.L_8134B4B8:
/* 8134B4B8 000198B8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134B4BC 000198BC  7F E3 FB 78 */	mr r3, r31
/* 8134B4C0 000198C0  38 FC 00 20 */	addi r7, r28, 0x20
/* 8134B4C4 000198C4  39 00 FF FF */	li r8, -0x1
/* 8134B4C8 000198C8  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B4CC 000198CC  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B4D0 000198D0  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B4D4 000198D4  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134B4D8 000198D8  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B4DC 000198DC  48 00 74 1D */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
.L_8134B4E0:
/* 8134B4E0 000198E0  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B4E4 000198E4  38 00 00 00 */	li r0, 0x0
/* 8134B4E8 000198E8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B4EC 000198EC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134B4F0 000198F0  48 00 00 10 */	b .L_8134B500
.L_8134B4F4:
/* 8134B4F4 000198F4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134B4F8 000198F8  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B4FC 000198FC  90 64 EA 24 */	stw r3, -0x15dc(r4)
.L_8134B500:
/* 8134B500 00019900  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B504 00019904  7F 84 E3 78 */	mr r4, r28
/* 8134B508 00019908  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B50C 0001990C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B510 00019910  48 21 01 69 */	bl fn_8155B678
/* 8134B514 00019914  48 00 00 30 */	b .L_8134B544
.L_8134B518:
/* 8134B518 00019918  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8134B51C 0001991C  3C 60 00 01 */	lis r3, 0x1
/* 8134B520 00019920  7F A4 EB 78 */	mr r4, r29
/* 8134B524 00019924  3C C5 00 04 */	addis r6, r5, 0x4
/* 8134B528 00019928  38 A3 F0 A0 */	subi r5, r3, 0xf60
/* 8134B52C 0001992C  80 66 EA 38 */	lwz r3, -0x15c8(r6)
/* 8134B530 00019930  4B FE 4D 01 */	bl memcpy
/* 8134B534 00019934  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134B538 00019938  38 00 00 00 */	li r0, 0x0
/* 8134B53C 0001993C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B540 00019940  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134B544:
/* 8134B544 00019944  39 61 00 20 */	addi r11, r1, 0x20
/* 8134B548 00019948  48 2A DF C9 */	bl _restgpr_28
/* 8134B54C 0001994C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134B550 00019950  7C 08 03 A6 */	mtlr r0
/* 8134B554 00019954  38 21 00 20 */	addi r1, r1, 0x20
/* 8134B558 00019958  4E 80 00 20 */	blr
.endfn do_get_sd_save_banner__Q23ipl12NandSDWorkerFv

# .text:0x3170 | 0x8134B55C | size: 0x1CC
# ipl::NandSDWorker::do_get_sd_app_thumbnail()
.fn do_get_sd_app_thumbnail__Q23ipl12NandSDWorkerFv, global
/* 8134B55C 0001995C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134B560 00019960  7C 08 02 A6 */	mflr r0
/* 8134B564 00019964  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134B568 00019968  39 61 00 20 */	addi r11, r1, 0x20
/* 8134B56C 0001996C  48 2A DF 59 */	bl _savegpr_28
/* 8134B570 00019970  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B574 00019974  7C 7E 1B 78 */	mr r30, r3
/* 8134B578 00019978  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B57C 0001997C  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B580 00019980  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B584 00019984  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B588 00019988  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B58C 0001998C  48 00 78 6D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B590 00019990  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B594 00019994  7C 7D 1B 78 */	mr r29, r3
/* 8134B598 00019998  41 82 00 10 */	beq .L_8134B5A8
/* 8134B59C 0001999C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8134B5A0 000199A0  2C 05 FF FF */	cmpwi r5, -0x1
/* 8134B5A4 000199A4  40 82 01 24 */	bne .L_8134B6C8
.L_8134B5A8:
/* 8134B5A8 000199A8  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B5AC 000199AC  38 80 06 40 */	li r4, 0x640
/* 8134B5B0 000199B0  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B5B4 000199B4  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B5B8 000199B8  48 21 00 B1 */	bl fn_8155B668
/* 8134B5BC 000199BC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B5C0 000199C0  7C 7F 1B 78 */	mr r31, r3
/* 8134B5C4 000199C4  7F C3 F3 78 */	mr r3, r30
/* 8134B5C8 000199C8  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B5CC 000199CC  7F E5 FB 78 */	mr r5, r31
/* 8134B5D0 000199D0  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134B5D4 000199D4  48 00 60 8D */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134B5D8 000199D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B5DC 000199DC  41 82 00 14 */	beq .L_8134B5F0
/* 8134B5E0 000199E0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B5E4 000199E4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B5E8 000199E8  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B5EC 000199EC  48 00 00 BC */	b .L_8134B6A8
.L_8134B5F0:
/* 8134B5F0 000199F0  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8134B5F4 000199F4  7F C3 F3 78 */	mr r3, r30
/* 8134B5F8 000199F8  7F E4 FB 78 */	mr r4, r31
/* 8134B5FC 000199FC  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134B600 00019A00  80 A5 EA 38 */	lwz r5, -0x15c8(r5)
/* 8134B604 00019A04  48 00 62 D1 */	bl get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc
/* 8134B608 00019A08  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B60C 00019A0C  7C 7C 1B 78 */	mr r28, r3
/* 8134B610 00019A10  40 80 00 14 */	bge .L_8134B624
/* 8134B614 00019A14  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B618 00019A18  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B61C 00019A1C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B620 00019A20  48 00 00 88 */	b .L_8134B6A8
.L_8134B624:
/* 8134B624 00019A24  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B628 00019A28  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B62C 00019A2C  80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134B630 00019A30  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B634 00019A34  41 82 00 10 */	beq .L_8134B644
/* 8134B638 00019A38  38 9F 00 40 */	addi r4, r31, 0x40
/* 8134B63C 00019A3C  38 A0 06 00 */	li r5, 0x600
/* 8134B640 00019A40  4B FE 4B F1 */	bl memcpy
.L_8134B644:
/* 8134B644 00019A44  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134B648 00019A48  41 82 00 24 */	beq .L_8134B66C
/* 8134B64C 00019A4C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B650 00019A50  7F 85 E3 78 */	mr r5, r28
/* 8134B654 00019A54  38 7D 00 18 */	addi r3, r29, 0x18
/* 8134B658 00019A58  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B65C 00019A5C  80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 8134B660 00019A60  4B FE 4B D1 */	bl memcpy
/* 8134B664 00019A64  93 9D 00 0C */	stw r28, 0xc(r29)
/* 8134B668 00019A68  48 00 00 34 */	b .L_8134B69C
.L_8134B66C:
/* 8134B66C 00019A6C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134B670 00019A70  7F C3 F3 78 */	mr r3, r30
/* 8134B674 00019A74  7F 88 E3 78 */	mr r8, r28
/* 8134B678 00019A78  39 3F 00 40 */	addi r9, r31, 0x40
/* 8134B67C 00019A7C  3C E4 00 04 */	addis r7, r4, 0x4
/* 8134B680 00019A80  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B684 00019A84  80 A7 EA 48 */	lwz r5, -0x15b8(r7)
/* 8134B688 00019A88  39 40 FF FF */	li r10, -0x1
/* 8134B68C 00019A8C  80 C7 EA 4C */	lwz r6, -0x15b4(r7)
/* 8134B690 00019A90  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B694 00019A94  80 E7 EA 38 */	lwz r7, -0x15c8(r7)
/* 8134B698 00019A98  48 00 76 71 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
.L_8134B69C:
/* 8134B69C 00019A9C  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6A0 00019AA0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B6A4 00019AA4  93 83 EA 24 */	stw r28, -0x15dc(r3)
.L_8134B6A8:
/* 8134B6A8 00019AA8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134B6AC 00019AAC  41 82 00 64 */	beq .L_8134B710
/* 8134B6B0 00019AB0  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6B4 00019AB4  7F E4 FB 78 */	mr r4, r31
/* 8134B6B8 00019AB8  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B6BC 00019ABC  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B6C0 00019AC0  48 20 FF B9 */	bl fn_8155B678
/* 8134B6C4 00019AC4  48 00 00 4C */	b .L_8134B710
.L_8134B6C8:
/* 8134B6C8 00019AC8  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6CC 00019ACC  38 9D 00 18 */	addi r4, r29, 0x18
/* 8134B6D0 00019AD0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B6D4 00019AD4  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134B6D8 00019AD8  4B FE 4B 59 */	bl memcpy
/* 8134B6DC 00019ADC  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B6E0 00019AE0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B6E4 00019AE4  80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134B6E8 00019AE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B6EC 00019AEC  41 82 00 14 */	beq .L_8134B700
/* 8134B6F0 00019AF0  3C 9D 00 02 */	addis r4, r29, 0x2
/* 8134B6F4 00019AF4  38 A0 06 00 */	li r5, 0x600
/* 8134B6F8 00019AF8  38 84 90 18 */	subi r4, r4, 0x6fe8
/* 8134B6FC 00019AFC  4B FE 4B 35 */	bl memcpy
.L_8134B700:
/* 8134B700 00019B00  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134B704 00019B04  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8134B708 00019B08  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B70C 00019B0C  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134B710:
/* 8134B710 00019B10  39 61 00 20 */	addi r11, r1, 0x20
/* 8134B714 00019B14  48 2A DD FD */	bl _restgpr_28
/* 8134B718 00019B18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134B71C 00019B1C  7C 08 03 A6 */	mtlr r0
/* 8134B720 00019B20  38 21 00 20 */	addi r1, r1, 0x20
/* 8134B724 00019B24  4E 80 00 20 */	blr
.endfn do_get_sd_app_thumbnail__Q23ipl12NandSDWorkerFv

# .text:0x333C | 0x8134B728 | size: 0x1F4
.fn iplNandSD_8134B728, global
/* 8134B728 00019B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134B72C 00019B2C  7C 08 02 A6 */	mflr r0
/* 8134B730 00019B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134B734 00019B34  39 61 00 20 */	addi r11, r1, 0x20
/* 8134B738 00019B38  48 2A DD 8D */	bl _savegpr_28
/* 8134B73C 00019B3C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134B740 00019B40  7C 7D 1B 78 */	mr r29, r3
/* 8134B744 00019B44  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134B748 00019B48  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B74C 00019B4C  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134B750 00019B50  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B754 00019B54  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134B758 00019B58  48 00 76 A1 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134B75C 00019B5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B760 00019B60  7C 7F 1B 78 */	mr r31, r3
/* 8134B764 00019B64  41 82 00 10 */	beq .L_8134B774
/* 8134B768 00019B68  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8134B76C 00019B6C  2C 05 FF FF */	cmpwi r5, -0x1
/* 8134B770 00019B70  40 82 01 38 */	bne .L_8134B8A8
.L_8134B774:
/* 8134B774 00019B74  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B778 00019B78  38 80 06 40 */	li r4, 0x640
/* 8134B77C 00019B7C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B780 00019B80  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B784 00019B84  48 20 FE E5 */	bl fn_8155B668
/* 8134B788 00019B88  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B78C 00019B8C  7C 7E 1B 78 */	mr r30, r3
/* 8134B790 00019B90  7F A3 EB 78 */	mr r3, r29
/* 8134B794 00019B94  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B798 00019B98  7F C5 F3 78 */	mr r5, r30
/* 8134B79C 00019B9C  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134B7A0 00019BA0  48 00 5E C1 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134B7A4 00019BA4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B7A8 00019BA8  41 82 00 14 */	beq .L_8134B7BC
/* 8134B7AC 00019BAC  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B7B0 00019BB0  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B7B4 00019BB4  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B7B8 00019BB8  48 00 00 D0 */	b .L_8134B888
.L_8134B7BC:
/* 8134B7BC 00019BBC  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134B7C0 00019BC0  7F A3 EB 78 */	mr r3, r29
/* 8134B7C4 00019BC4  7F C4 F3 78 */	mr r4, r30
/* 8134B7C8 00019BC8  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134B7CC 00019BCC  80 A5 EA 38 */	lwz r5, -0x15c8(r5)
/* 8134B7D0 00019BD0  48 00 61 05 */	bl get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc
/* 8134B7D4 00019BD4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134B7D8 00019BD8  7C 7C 1B 78 */	mr r28, r3
/* 8134B7DC 00019BDC  40 80 00 14 */	bge .L_8134B7F0
/* 8134B7E0 00019BE0  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B7E4 00019BE4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B7E8 00019BE8  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134B7EC 00019BEC  48 00 00 9C */	b .L_8134B888
.L_8134B7F0:
/* 8134B7F0 00019BF0  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B7F4 00019BF4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B7F8 00019BF8  80 E3 EA 3C */	lwz r7, -0x15c4(r3)
/* 8134B7FC 00019BFC  2C 07 00 00 */	cmpwi r7, 0x0
/* 8134B800 00019C00  41 82 00 24 */	beq .L_8134B824
/* 8134B804 00019C04  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8134B808 00019C08  38 67 00 08 */	addi r3, r7, 0x8
/* 8134B80C 00019C0C  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8134B810 00019C10  38 9E 00 40 */	addi r4, r30, 0x40
/* 8134B814 00019C14  38 A0 06 00 */	li r5, 0x600
/* 8134B818 00019C18  90 C7 00 04 */	stw r6, 0x4(r7)
/* 8134B81C 00019C1C  90 07 00 00 */	stw r0, 0x0(r7)
/* 8134B820 00019C20  4B FE 4A 11 */	bl memcpy
.L_8134B824:
/* 8134B824 00019C24  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134B828 00019C28  41 82 00 24 */	beq .L_8134B84C
/* 8134B82C 00019C2C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B830 00019C30  7F 85 E3 78 */	mr r5, r28
/* 8134B834 00019C34  38 7F 00 18 */	addi r3, r31, 0x18
/* 8134B838 00019C38  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B83C 00019C3C  80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 8134B840 00019C40  4B FE 49 F1 */	bl memcpy
/* 8134B844 00019C44  93 9F 00 0C */	stw r28, 0xc(r31)
/* 8134B848 00019C48  48 00 00 34 */	b .L_8134B87C
.L_8134B84C:
/* 8134B84C 00019C4C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B850 00019C50  7F A3 EB 78 */	mr r3, r29
/* 8134B854 00019C54  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8134B858 00019C58  7F 88 E3 78 */	mr r8, r28
/* 8134B85C 00019C5C  3C E4 00 04 */	addis r7, r4, 0x4
/* 8134B860 00019C60  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134B864 00019C64  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8134B868 00019C68  39 3E 00 40 */	addi r9, r30, 0x40
/* 8134B86C 00019C6C  80 E7 EA 38 */	lwz r7, -0x15c8(r7)
/* 8134B870 00019C70  39 40 FF FF */	li r10, -0x1
/* 8134B874 00019C74  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134B878 00019C78  48 00 74 91 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
.L_8134B87C:
/* 8134B87C 00019C7C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B880 00019C80  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B884 00019C84  93 83 EA 24 */	stw r28, -0x15dc(r3)
.L_8134B888:
/* 8134B888 00019C88  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134B88C 00019C8C  41 82 00 78 */	beq .L_8134B904
/* 8134B890 00019C90  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B894 00019C94  7F C4 F3 78 */	mr r4, r30
/* 8134B898 00019C98  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B89C 00019C9C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B8A0 00019CA0  48 20 FD D9 */	bl fn_8155B678
/* 8134B8A4 00019CA4  48 00 00 60 */	b .L_8134B904
.L_8134B8A8:
/* 8134B8A8 00019CA8  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B8AC 00019CAC  38 9F 00 18 */	addi r4, r31, 0x18
/* 8134B8B0 00019CB0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B8B4 00019CB4  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134B8B8 00019CB8  4B FE 49 79 */	bl memcpy
/* 8134B8BC 00019CBC  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B8C0 00019CC0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B8C4 00019CC4  80 E3 EA 3C */	lwz r7, -0x15c4(r3)
/* 8134B8C8 00019CC8  2C 07 00 00 */	cmpwi r7, 0x0
/* 8134B8CC 00019CCC  41 82 00 28 */	beq .L_8134B8F4
/* 8134B8D0 00019CD0  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8134B8D4 00019CD4  3C 9F 00 02 */	addis r4, r31, 0x2
/* 8134B8D8 00019CD8  80 DF 00 04 */	lwz r6, 0x4(r31)
/* 8134B8DC 00019CDC  38 67 00 08 */	addi r3, r7, 0x8
/* 8134B8E0 00019CE0  38 A0 06 00 */	li r5, 0x600
/* 8134B8E4 00019CE4  38 84 90 18 */	subi r4, r4, 0x6fe8
/* 8134B8E8 00019CE8  90 C7 00 04 */	stw r6, 0x4(r7)
/* 8134B8EC 00019CEC  90 07 00 00 */	stw r0, 0x0(r7)
/* 8134B8F0 00019CF0  4B FE 49 41 */	bl memcpy
.L_8134B8F4:
/* 8134B8F4 00019CF4  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134B8F8 00019CF8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8134B8FC 00019CFC  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134B900 00019D00  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134B904:
/* 8134B904 00019D04  39 61 00 20 */	addi r11, r1, 0x20
/* 8134B908 00019D08  48 2A DC 09 */	bl _restgpr_28
/* 8134B90C 00019D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134B910 00019D10  7C 08 03 A6 */	mtlr r0
/* 8134B914 00019D14  38 21 00 20 */	addi r1, r1, 0x20
/* 8134B918 00019D18  4E 80 00 20 */	blr
.endfn iplNandSD_8134B728

# .text:0x3530 | 0x8134B91C | size: 0x344
.fn iplNandSD_8134B91C, global
/* 8134B91C 00019D1C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8134B920 00019D20  7C 08 02 A6 */	mflr r0
/* 8134B924 00019D24  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8134B928 00019D28  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8134B92C 00019D2C  48 2A DB 81 */	bl _savegpr_22
/* 8134B930 00019D30  80 A2 81 70 */	lwz r5, lbl_81694570@sda21(r0)
/* 8134B934 00019D34  7C 7D 1B 78 */	mr r29, r3
/* 8134B938 00019D38  80 02 81 74 */	lwz r0, lbl_81694574@sda21(r0)
/* 8134B93C 00019D3C  38 80 03 E0 */	li r4, 0x3e0
/* 8134B940 00019D40  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134B944 00019D44  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8134B948 00019D48  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134B94C 00019D4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134B950 00019D50  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B954 00019D54  48 20 FD 15 */	bl fn_8155B668
/* 8134B958 00019D58  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134B95C 00019D5C  7C 7F 1B 78 */	mr r31, r3
/* 8134B960 00019D60  38 80 03 E0 */	li r4, 0x3e0
/* 8134B964 00019D64  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134B968 00019D68  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134B96C 00019D6C  48 20 FC FD */	bl fn_8155B668
/* 8134B970 00019D70  38 00 00 73 */	li r0, 0x73
/* 8134B974 00019D74  3C 80 81 61 */	lis r4, lbl_8160D648@ha
/* 8134B978 00019D78  98 1F 00 00 */	stb r0, 0x0(r31)
/* 8134B97C 00019D7C  38 00 00 64 */	li r0, 0x64
/* 8134B980 00019D80  7C 7E 1B 78 */	mr r30, r3
/* 8134B984 00019D84  38 A0 00 61 */	li r5, 0x61
/* 8134B988 00019D88  98 1F 00 01 */	stb r0, 0x1(r31)
/* 8134B98C 00019D8C  38 00 00 6C */	li r0, 0x6c
/* 8134B990 00019D90  38 7F 00 04 */	addi r3, r31, 0x4
/* 8134B994 00019D94  38 84 D6 48 */	addi r4, r4, lbl_8160D648@l
/* 8134B998 00019D98  98 BF 00 02 */	stb r5, 0x2(r31)
/* 8134B99C 00019D9C  38 A0 00 10 */	li r5, 0x10
/* 8134B9A0 00019DA0  98 1F 00 03 */	stb r0, 0x3(r31)
/* 8134B9A4 00019DA4  4B FE 48 8D */	bl memcpy
/* 8134B9A8 00019DA8  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134B9AC 00019DAC  38 7F 00 14 */	addi r3, r31, 0x14
/* 8134B9B0 00019DB0  38 A0 03 C0 */	li r5, 0x3c0
/* 8134B9B4 00019DB4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134B9B8 00019DB8  80 84 EA 38 */	lwz r4, -0x15c8(r4)
/* 8134B9BC 00019DBC  4B FE 48 75 */	bl memcpy
/* 8134B9C0 00019DC0  38 7F 03 D4 */	addi r3, r31, 0x3d4
/* 8134B9C4 00019DC4  38 80 00 00 */	li r4, 0x0
/* 8134B9C8 00019DC8  38 A0 00 0C */	li r5, 0xc
/* 8134B9CC 00019DCC  4B FE 49 69 */	bl memset
/* 8134B9D0 00019DD0  38 61 00 38 */	addi r3, r1, 0x38
/* 8134B9D4 00019DD4  48 14 7E 21 */	bl fn_814937F4
/* 8134B9D8 00019DD8  7F E4 FB 78 */	mr r4, r31
/* 8134B9DC 00019DDC  38 61 00 38 */	addi r3, r1, 0x38
/* 8134B9E0 00019DE0  38 A0 03 E0 */	li r5, 0x3e0
/* 8134B9E4 00019DE4  48 14 7E 51 */	bl fn_81493834
/* 8134B9E8 00019DE8  38 61 00 38 */	addi r3, r1, 0x38
/* 8134B9EC 00019DEC  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B9F0 00019DF0  48 14 7F 35 */	bl fn_81493924
/* 8134B9F4 00019DF4  38 7F 00 04 */	addi r3, r31, 0x4
/* 8134B9F8 00019DF8  38 81 00 10 */	addi r4, r1, 0x10
/* 8134B9FC 00019DFC  38 A0 00 10 */	li r5, 0x10
/* 8134BA00 00019E00  4B FE 48 31 */	bl memcpy
/* 8134BA04 00019E04  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134BA08 00019E08  3B 00 FF FE */	li r24, -0x2
/* 8134BA0C 00019E0C  7F E3 FB 78 */	mr r3, r31
/* 8134BA10 00019E10  7F C5 F3 78 */	mr r5, r30
/* 8134BA14 00019E14  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134BA18 00019E18  38 80 03 E0 */	li r4, 0x3e0
/* 8134BA1C 00019E1C  93 06 EA 24 */	stw r24, -0x15dc(r6)
/* 8134BA20 00019E20  48 00 85 B9 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134BA24 00019E24  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BA28 00019E28  41 82 00 14 */	beq .L_8134BA3C
/* 8134BA2C 00019E2C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BA30 00019E30  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BA34 00019E34  93 03 EA 24 */	stw r24, -0x15dc(r3)
/* 8134BA38 00019E38  48 00 01 E8 */	b .L_8134BC20
.L_8134BA3C:
/* 8134BA3C 00019E3C  3A C0 00 00 */	li r22, 0x0
/* 8134BA40 00019E40  3B 01 00 08 */	addi r24, r1, 0x8
/* 8134BA44 00019E44  7E D9 B3 78 */	mr r25, r22
/* 8134BA48 00019E48  3B 80 00 00 */	li r28, 0x0
/* 8134BA4C 00019E4C  7E DB B3 78 */	mr r27, r22
/* 8134BA50 00019E50  3B 40 03 E0 */	li r26, 0x3e0
.L_8134BA54:
/* 8134BA54 00019E54  7E F8 E0 2E */	lwzx r23, r24, r28
/* 8134BA58 00019E58  38 81 00 20 */	addi r4, r1, 0x20
/* 8134BA5C 00019E5C  7E E3 BB 78 */	mr r3, r23
/* 8134BA60 00019E60  48 29 C6 C5 */	bl fn_815E8124
/* 8134BA64 00019E64  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BA68 00019E68  40 82 00 34 */	bne .L_8134BA9C
/* 8134BA6C 00019E6C  88 81 00 30 */	lbz r4, 0x30(r1)
/* 8134BA70 00019E70  7F A3 EB 78 */	mr r3, r29
/* 8134BA74 00019E74  48 00 86 95 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134BA78 00019E78  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BA7C 00019E7C  41 82 00 0C */	beq .L_8134BA88
/* 8134BA80 00019E80  38 00 00 01 */	li r0, 0x1
/* 8134BA84 00019E84  48 00 00 50 */	b .L_8134BAD4
.L_8134BA88:
/* 8134BA88 00019E88  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BA8C 00019E8C  38 00 FF FE */	li r0, -0x2
/* 8134BA90 00019E90  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BA94 00019E94  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134BA98 00019E98  48 00 01 88 */	b .L_8134BC20
.L_8134BA9C:
/* 8134BA9C 00019E9C  48 29 C5 0D */	bl fn_815E7FA8
/* 8134BAA0 00019EA0  2C 03 00 02 */	cmpwi r3, 0x2
/* 8134BAA4 00019EA4  41 82 00 0C */	beq .L_8134BAB0
/* 8134BAA8 00019EA8  2C 03 00 16 */	cmpwi r3, 0x16
/* 8134BAAC 00019EAC  40 82 00 0C */	bne .L_8134BAB8
.L_8134BAB0:
/* 8134BAB0 00019EB0  38 00 00 00 */	li r0, 0x0
/* 8134BAB4 00019EB4  48 00 00 20 */	b .L_8134BAD4
.L_8134BAB8:
/* 8134BAB8 00019EB8  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BABC 00019EBC  7F A3 EB 78 */	mr r3, r29
/* 8134BAC0 00019EC0  38 80 FF FF */	li r4, -0x1
/* 8134BAC4 00019EC4  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BAC8 00019EC8  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BACC 00019ECC  48 00 83 35 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BAD0 00019ED0  48 00 01 50 */	b .L_8134BC20
.L_8134BAD4:
/* 8134BAD4 00019ED4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134BAD8 00019ED8  40 82 00 98 */	bne .L_8134BB70
/* 8134BADC 00019EDC  7F A3 EB 78 */	mr r3, r29
/* 8134BAE0 00019EE0  48 00 40 C5 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134BAE4 00019EE4  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8134BAE8 00019EE8  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 8134BAEC 00019EEC  7C 19 20 10 */	subfc r0, r25, r4
/* 8134BAF0 00019EF0  7C 63 29 10 */	subfe r3, r3, r5
/* 8134BAF4 00019EF4  7C 65 29 10 */	subfe r3, r5, r5
/* 8134BAF8 00019EF8  7C 63 00 D1 */	neg. r3, r3
/* 8134BAFC 00019EFC  41 82 00 14 */	beq .L_8134BB10
/* 8134BB00 00019F00  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BB04 00019F04  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BB08 00019F08  90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8134BB0C 00019F0C  48 00 01 14 */	b .L_8134BC20
.L_8134BB10:
/* 8134BB10 00019F10  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 8134BB14 00019F14  7C 1A 20 10 */	subfc r0, r26, r4
/* 8134BB18 00019F18  7C 63 29 10 */	subfe r3, r3, r5
/* 8134BB1C 00019F1C  7C 65 29 10 */	subfe r3, r5, r5
/* 8134BB20 00019F20  7C 63 00 D1 */	neg. r3, r3
/* 8134BB24 00019F24  41 82 00 18 */	beq .L_8134BB3C
/* 8134BB28 00019F28  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BB2C 00019F2C  38 00 FF F9 */	li r0, -0x7
/* 8134BB30 00019F30  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BB34 00019F34  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134BB38 00019F38  48 00 00 E8 */	b .L_8134BC20
.L_8134BB3C:
/* 8134BB3C 00019F3C  7E E3 BB 78 */	mr r3, r23
/* 8134BB40 00019F40  38 80 00 00 */	li r4, 0x0
/* 8134BB44 00019F44  48 29 C3 65 */	bl fn_815E7EA8
/* 8134BB48 00019F48  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BB4C 00019F4C  7C 77 1B 78 */	mr r23, r3
/* 8134BB50 00019F50  40 82 00 54 */	bne .L_8134BBA4
/* 8134BB54 00019F54  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BB58 00019F58  7F A3 EB 78 */	mr r3, r29
/* 8134BB5C 00019F5C  38 80 FF FF */	li r4, -0x1
/* 8134BB60 00019F60  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BB64 00019F64  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BB68 00019F68  48 00 82 99 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BB6C 00019F6C  48 00 00 B4 */	b .L_8134BC20
.L_8134BB70:
/* 8134BB70 00019F70  7E E3 BB 78 */	mr r3, r23
/* 8134BB74 00019F74  38 8D 81 AA */	li r4, lbl_816961EA@sda21
/* 8134BB78 00019F78  48 29 C4 C9 */	bl fn_815E8040
/* 8134BB7C 00019F7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BB80 00019F80  7C 77 1B 78 */	mr r23, r3
/* 8134BB84 00019F84  40 82 00 20 */	bne .L_8134BBA4
/* 8134BB88 00019F88  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BB8C 00019F8C  7F A3 EB 78 */	mr r3, r29
/* 8134BB90 00019F90  38 80 FF FF */	li r4, -0x1
/* 8134BB94 00019F94  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BB98 00019F98  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BB9C 00019F9C  48 00 82 65 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BBA0 00019FA0  48 00 00 80 */	b .L_8134BC20
.L_8134BBA4:
/* 8134BBA4 00019FA4  7F C3 F3 78 */	mr r3, r30
/* 8134BBA8 00019FA8  7E E6 BB 78 */	mr r6, r23
/* 8134BBAC 00019FAC  38 80 03 E0 */	li r4, 0x3e0
/* 8134BBB0 00019FB0  38 A0 00 01 */	li r5, 0x1
/* 8134BBB4 00019FB4  48 29 C5 9D */	bl fn_815E8150
/* 8134BBB8 00019FB8  28 03 00 01 */	cmplwi r3, 0x1
/* 8134BBBC 00019FBC  41 82 00 28 */	beq .L_8134BBE4
/* 8134BBC0 00019FC0  7E E3 BB 78 */	mr r3, r23
/* 8134BBC4 00019FC4  48 29 C4 25 */	bl fn_815E7FE8
/* 8134BBC8 00019FC8  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BBCC 00019FCC  7F A3 EB 78 */	mr r3, r29
/* 8134BBD0 00019FD0  38 80 FF FF */	li r4, -0x1
/* 8134BBD4 00019FD4  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BBD8 00019FD8  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BBDC 00019FDC  48 00 82 25 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BBE0 00019FE0  48 00 00 40 */	b .L_8134BC20
.L_8134BBE4:
/* 8134BBE4 00019FE4  7E E3 BB 78 */	mr r3, r23
/* 8134BBE8 00019FE8  48 29 C4 01 */	bl fn_815E7FE8
/* 8134BBEC 00019FEC  2C 03 FF FF */	cmpwi r3, -0x1
/* 8134BBF0 00019FF0  40 82 00 20 */	bne .L_8134BC10
/* 8134BBF4 00019FF4  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134BBF8 00019FF8  7F A3 EB 78 */	mr r3, r29
/* 8134BBFC 00019FFC  38 80 FF FF */	li r4, -0x1
/* 8134BC00 0001A000  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BC04 0001A004  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BC08 0001A008  48 00 81 F9 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BC0C 0001A00C  48 00 00 14 */	b .L_8134BC20
.L_8134BC10:
/* 8134BC10 0001A010  3A D6 00 01 */	addi r22, r22, 0x1
/* 8134BC14 0001A014  3B 9C 00 04 */	addi r28, r28, 0x4
/* 8134BC18 0001A018  2C 16 00 02 */	cmpwi r22, 0x2
/* 8134BC1C 0001A01C  41 80 FE 38 */	blt .L_8134BA54
.L_8134BC20:
/* 8134BC20 0001A020  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BC24 0001A024  7F E4 FB 78 */	mr r4, r31
/* 8134BC28 0001A028  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BC2C 0001A02C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BC30 0001A030  48 20 FA 49 */	bl fn_8155B678
/* 8134BC34 0001A034  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134BC38 0001A038  7F C4 F3 78 */	mr r4, r30
/* 8134BC3C 0001A03C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BC40 0001A040  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BC44 0001A044  48 20 FA 35 */	bl fn_8155B678
/* 8134BC48 0001A048  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8134BC4C 0001A04C  48 2A D8 AD */	bl _restgpr_22
/* 8134BC50 0001A050  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8134BC54 0001A054  7C 08 03 A6 */	mtlr r0
/* 8134BC58 0001A058  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8134BC5C 0001A05C  4E 80 00 20 */	blr
.endfn iplNandSD_8134B91C

# .text:0x3874 | 0x8134BC60 | size: 0x270
.fn iplNandSD_8134BC60, global
/* 8134BC60 0001A060  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134BC64 0001A064  7C 08 02 A6 */	mflr r0
/* 8134BC68 0001A068  90 01 00 64 */	stw r0, 0x64(r1)
/* 8134BC6C 0001A06C  39 61 00 60 */	addi r11, r1, 0x60
/* 8134BC70 0001A070  48 2A D8 31 */	bl _savegpr_19
/* 8134BC74 0001A074  80 A2 81 78 */	lwz r5, lbl_81694578@sda21(r0)
/* 8134BC78 0001A078  7C 75 1B 78 */	mr r21, r3
/* 8134BC7C 0001A07C  80 02 81 7C */	lwz r0, lbl_8169457C@sda21(r0)
/* 8134BC80 0001A080  38 80 03 E0 */	li r4, 0x3e0
/* 8134BC84 0001A084  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134BC88 0001A088  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8134BC8C 0001A08C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BC90 0001A090  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134BC94 0001A094  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BC98 0001A098  48 20 F9 D1 */	bl fn_8155B668
/* 8134BC9C 0001A09C  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BCA0 0001A0A0  7C 7A 1B 78 */	mr r26, r3
/* 8134BCA4 0001A0A4  38 80 03 E0 */	li r4, 0x3e0
/* 8134BCA8 0001A0A8  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134BCAC 0001A0AC  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BCB0 0001A0B0  48 20 F9 B9 */	bl fn_8155B668
/* 8134BCB4 0001A0B4  80 95 00 00 */	lwz r4, 0x0(r21)
/* 8134BCB8 0001A0B8  7C 79 1B 78 */	mr r25, r3
/* 8134BCBC 0001A0BC  3B 60 FF FE */	li r27, -0x2
/* 8134BCC0 0001A0C0  7E A3 AB 78 */	mr r3, r21
/* 8134BCC4 0001A0C4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134BCC8 0001A0C8  93 64 EA 24 */	stw r27, -0x15dc(r4)
/* 8134BCCC 0001A0CC  48 00 3E D9 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134BCD0 0001A0D0  3B 00 00 00 */	li r24, 0x0
/* 8134BCD4 0001A0D4  3B 81 00 08 */	addi r28, r1, 0x8
/* 8134BCD8 0001A0D8  7F 1E C3 78 */	mr r30, r24
/* 8134BCDC 0001A0DC  3A E0 00 00 */	li r23, 0x0
/* 8134BCE0 0001A0E0  3A C0 00 00 */	li r22, 0x0
/* 8134BCE4 0001A0E4  3A 80 00 00 */	li r20, 0x0
/* 8134BCE8 0001A0E8  3F A0 81 61 */	lis r29, lbl_8160D648@ha
/* 8134BCEC 0001A0EC  3B E0 FF FD */	li r31, -0x3
.L_8134BCF0:
/* 8134BCF0 0001A0F0  7E 7C A0 2E */	lwzx r19, r28, r20
/* 8134BCF4 0001A0F4  7E A3 AB 78 */	mr r3, r21
/* 8134BCF8 0001A0F8  38 A0 03 DF */	li r5, 0x3df
/* 8134BCFC 0001A0FC  7E 64 9B 78 */	mr r4, r19
/* 8134BD00 0001A100  48 00 75 15 */	bl sd_file_exist__Q23ipl12NandSDWorkerFPCcUl
/* 8134BD04 0001A104  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BD08 0001A108  40 81 01 34 */	ble .L_8134BE3C
/* 8134BD0C 0001A10C  7E 63 9B 78 */	mr r3, r19
/* 8134BD10 0001A110  38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 8134BD14 0001A114  48 29 C3 2D */	bl fn_815E8040
/* 8134BD18 0001A118  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BD1C 0001A11C  7C 73 1B 78 */	mr r19, r3
/* 8134BD20 0001A120  41 82 01 00 */	beq .L_8134BE20
/* 8134BD24 0001A124  7F 43 D3 78 */	mr r3, r26
/* 8134BD28 0001A128  7E 66 9B 78 */	mr r6, r19
/* 8134BD2C 0001A12C  38 80 03 E0 */	li r4, 0x3e0
/* 8134BD30 0001A130  38 A0 00 01 */	li r5, 0x1
/* 8134BD34 0001A134  48 29 C3 69 */	bl fn_815E809C
/* 8134BD38 0001A138  28 03 00 01 */	cmplwi r3, 0x1
/* 8134BD3C 0001A13C  40 82 00 C8 */	bne .L_8134BE04
/* 8134BD40 0001A140  7E 63 9B 78 */	mr r3, r19
/* 8134BD44 0001A144  48 29 C2 A5 */	bl fn_815E7FE8
/* 8134BD48 0001A148  2C 03 FF FF */	cmpwi r3, -0x1
/* 8134BD4C 0001A14C  41 82 00 9C */	beq .L_8134BDE8
/* 8134BD50 0001A150  7F 43 D3 78 */	mr r3, r26
/* 8134BD54 0001A154  7F 25 CB 78 */	mr r5, r25
/* 8134BD58 0001A158  38 80 03 E0 */	li r4, 0x3e0
/* 8134BD5C 0001A15C  48 00 83 15 */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134BD60 0001A160  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BD64 0001A164  40 82 00 E4 */	bne .L_8134BE48
/* 8134BD68 0001A168  38 61 00 10 */	addi r3, r1, 0x10
/* 8134BD6C 0001A16C  38 99 00 04 */	addi r4, r25, 0x4
/* 8134BD70 0001A170  38 A0 00 10 */	li r5, 0x10
/* 8134BD74 0001A174  4B FE 44 BD */	bl memcpy
/* 8134BD78 0001A178  38 79 00 04 */	addi r3, r25, 0x4
/* 8134BD7C 0001A17C  38 9D D6 48 */	addi r4, r29, lbl_8160D648@l
/* 8134BD80 0001A180  38 A0 00 10 */	li r5, 0x10
/* 8134BD84 0001A184  4B FE 44 AD */	bl memcpy
/* 8134BD88 0001A188  7E A3 AB 78 */	mr r3, r21
/* 8134BD8C 0001A18C  7F 25 CB 78 */	mr r5, r25
/* 8134BD90 0001A190  38 81 00 10 */	addi r4, r1, 0x10
/* 8134BD94 0001A194  38 C0 03 E0 */	li r6, 0x3e0
/* 8134BD98 0001A198  48 00 52 65 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 8134BD9C 0001A19C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BDA0 0001A1A0  41 82 00 38 */	beq .L_8134BDD8
/* 8134BDA4 0001A1A4  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BDA8 0001A1A8  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134BDAC 0001A1AC  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BDB0 0001A1B0  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134BDB4 0001A1B4  40 82 00 94 */	bne .L_8134BE48
/* 8134BDB8 0001A1B8  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BDBC 0001A1BC  38 99 00 14 */	addi r4, r25, 0x14
/* 8134BDC0 0001A1C0  3B 00 00 01 */	li r24, 0x1
/* 8134BDC4 0001A1C4  38 A0 03 C0 */	li r5, 0x3c0
/* 8134BDC8 0001A1C8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BDCC 0001A1CC  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134BDD0 0001A1D0  4B FE 44 61 */	bl memcpy
/* 8134BDD4 0001A1D4  48 00 00 74 */	b .L_8134BE48
.L_8134BDD8:
/* 8134BDD8 0001A1D8  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BDDC 0001A1DC  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BDE0 0001A1E0  93 E3 EA 24 */	stw r31, -0x15dc(r3)
/* 8134BDE4 0001A1E4  48 00 00 64 */	b .L_8134BE48
.L_8134BDE8:
/* 8134BDE8 0001A1E8  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BDEC 0001A1EC  7E A3 AB 78 */	mr r3, r21
/* 8134BDF0 0001A1F0  38 80 FF FF */	li r4, -0x1
/* 8134BDF4 0001A1F4  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BDF8 0001A1F8  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BDFC 0001A1FC  48 00 80 05 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BE00 0001A200  48 00 00 48 */	b .L_8134BE48
.L_8134BE04:
/* 8134BE04 0001A204  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BE08 0001A208  7E A3 AB 78 */	mr r3, r21
/* 8134BE0C 0001A20C  38 80 FF FF */	li r4, -0x1
/* 8134BE10 0001A210  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BE14 0001A214  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BE18 0001A218  48 00 7F E9 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BE1C 0001A21C  48 00 00 2C */	b .L_8134BE48
.L_8134BE20:
/* 8134BE20 0001A220  80 B5 00 00 */	lwz r5, 0x0(r21)
/* 8134BE24 0001A224  7E A3 AB 78 */	mr r3, r21
/* 8134BE28 0001A228  38 80 FF FF */	li r4, -0x1
/* 8134BE2C 0001A22C  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134BE30 0001A230  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134BE34 0001A234  48 00 7F CD */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134BE38 0001A238  48 00 00 10 */	b .L_8134BE48
.L_8134BE3C:
/* 8134BE3C 0001A23C  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE40 0001A240  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BE44 0001A244  93 63 EA 24 */	stw r27, -0x15dc(r3)
.L_8134BE48:
/* 8134BE48 0001A248  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE4C 0001A24C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BE50 0001A250  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134BE54 0001A254  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134BE58 0001A258  41 82 00 08 */	beq .L_8134BE60
/* 8134BE5C 0001A25C  3A E0 00 01 */	li r23, 0x1
.L_8134BE60:
/* 8134BE60 0001A260  3A D6 00 01 */	addi r22, r22, 0x1
/* 8134BE64 0001A264  3A 94 00 04 */	addi r20, r20, 0x4
/* 8134BE68 0001A268  2C 16 00 02 */	cmpwi r22, 0x2
/* 8134BE6C 0001A26C  41 80 FE 84 */	blt .L_8134BCF0
/* 8134BE70 0001A270  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134BE74 0001A274  41 82 00 1C */	beq .L_8134BE90
/* 8134BE78 0001A278  2C 17 00 00 */	cmpwi r23, 0x0
/* 8134BE7C 0001A27C  41 82 00 14 */	beq .L_8134BE90
/* 8134BE80 0001A280  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE84 0001A284  38 00 FF EF */	li r0, -0x11
/* 8134BE88 0001A288  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BE8C 0001A28C  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134BE90:
/* 8134BE90 0001A290  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BE94 0001A294  7F 44 D3 78 */	mr r4, r26
/* 8134BE98 0001A298  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BE9C 0001A29C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BEA0 0001A2A0  48 20 F7 D9 */	bl fn_8155B678
/* 8134BEA4 0001A2A4  80 75 00 00 */	lwz r3, 0x0(r21)
/* 8134BEA8 0001A2A8  7F 24 CB 78 */	mr r4, r25
/* 8134BEAC 0001A2AC  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134BEB0 0001A2B0  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BEB4 0001A2B4  48 20 F7 C5 */	bl fn_8155B678
/* 8134BEB8 0001A2B8  39 61 00 60 */	addi r11, r1, 0x60
/* 8134BEBC 0001A2BC  48 2A D6 31 */	bl _restgpr_19
/* 8134BEC0 0001A2C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134BEC4 0001A2C4  7C 08 03 A6 */	mtlr r0
/* 8134BEC8 0001A2C8  38 21 00 60 */	addi r1, r1, 0x60
/* 8134BECC 0001A2CC  4E 80 00 20 */	blr
.endfn iplNandSD_8134BC60

# .text:0x3AE4 | 0x8134BED0 | size: 0x3C8
.fn iplNandSD_8134BED0, global
/* 8134BED0 0001A2D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134BED4 0001A2D4  7C 08 02 A6 */	mflr r0
/* 8134BED8 0001A2D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8134BEDC 0001A2DC  39 61 00 90 */	addi r11, r1, 0x90
/* 8134BEE0 0001A2E0  48 2A D5 E1 */	bl _savegpr_27
/* 8134BEE4 0001A2E4  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134BEE8 0001A2E8  7C 7B 1B 78 */	mr r27, r3
/* 8134BEEC 0001A2EC  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134BEF0 0001A2F0  38 80 06 40 */	li r4, 0x640
/* 8134BEF4 0001A2F4  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134BEF8 0001A2F8  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134BEFC 0001A2FC  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134BF00 0001A300  48 20 F7 69 */	bl fn_8155B668
/* 8134BF04 0001A304  38 00 00 00 */	li r0, 0x0
/* 8134BF08 0001A308  7C 7C 1B 78 */	mr r28, r3
/* 8134BF0C 0001A30C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8134BF10 0001A310  3B C0 FF FE */	li r30, -0x2
/* 8134BF14 0001A314  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8134BF18 0001A318  38 A0 00 00 */	li r5, 0x0
/* 8134BF1C 0001A31C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF20 0001A320  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BF24 0001A324  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134BF28 0001A328  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8134BF2C 0001A32C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF30 0001A330  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134BF34 0001A334  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134BF38 0001A338  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134BF3C 0001A33C  48 27 29 CD */	bl fn_815BE908
/* 8134BF40 0001A340  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BF44 0001A344  41 82 00 24 */	beq .L_8134BF68
/* 8134BF48 0001A348  7C 64 1B 78 */	mr r4, r3
/* 8134BF4C 0001A34C  38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8134BF50 0001A350  4C C6 31 82 */	crclr cr1eq
/* 8134BF54 0001A354  48 1E 27 4D */	bl OSReport
/* 8134BF58 0001A358  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF5C 0001A35C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BF60 0001A360  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134BF64 0001A364  48 00 03 08 */	b .L_8134C26C
.L_8134BF68:
/* 8134BF68 0001A368  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8134BF6C 0001A36C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134BF70 0001A370  40 82 00 18 */	bne .L_8134BF88
/* 8134BF74 0001A374  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BF78 0001A378  38 00 FF F2 */	li r0, -0xe
/* 8134BF7C 0001A37C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134BF80 0001A380  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134BF84 0001A384  48 00 02 E8 */	b .L_8134C26C
.L_8134BF88:
/* 8134BF88 0001A388  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134BF8C 0001A38C  7F 63 DB 78 */	mr r3, r27
/* 8134BF90 0001A390  7F 85 E3 78 */	mr r5, r28
/* 8134BF94 0001A394  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134BF98 0001A398  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134BF9C 0001A39C  48 00 56 C5 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134BFA0 0001A3A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BFA4 0001A3A4  7C 7F 1B 78 */	mr r31, r3
/* 8134BFA8 0001A3A8  41 82 00 14 */	beq .L_8134BFBC
/* 8134BFAC 0001A3AC  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134BFB0 0001A3B0  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134BFB4 0001A3B4  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134BFB8 0001A3B8  48 00 02 B4 */	b .L_8134C26C
.L_8134BFBC:
/* 8134BFBC 0001A3BC  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134BFC0 0001A3C0  38 A1 00 38 */	addi r5, r1, 0x38
/* 8134BFC4 0001A3C4  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134BFC8 0001A3C8  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134BFCC 0001A3CC  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134BFD0 0001A3D0  4B FF D4 65 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134BFD4 0001A3D4  80 DC 00 08 */	lwz r6, 0x8(r28)
/* 8134BFD8 0001A3D8  38 61 00 38 */	addi r3, r1, 0x38
/* 8134BFDC 0001A3DC  38 81 00 20 */	addi r4, r1, 0x20
/* 8134BFE0 0001A3E0  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134BFE4 0001A3E4  38 06 00 3F */	addi r0, r6, 0x3f
/* 8134BFE8 0001A3E8  38 C0 00 03 */	li r6, 0x3
/* 8134BFEC 0001A3EC  54 07 00 32 */	clrrwi r7, r0, 6
/* 8134BFF0 0001A3F0  38 E7 06 40 */	addi r7, r7, 0x640
/* 8134BFF4 0001A3F4  48 27 37 41 */	bl fn_815BF734
/* 8134BFF8 0001A3F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134BFFC 0001A3FC  41 82 00 24 */	beq .L_8134C020
/* 8134C000 0001A400  7C 64 1B 78 */	mr r4, r3
/* 8134C004 0001A404  38 7D 0A FD */	addi r3, r29, 0xafd
/* 8134C008 0001A408  4C C6 31 82 */	crclr cr1eq
/* 8134C00C 0001A40C  48 1E 26 95 */	bl OSReport
/* 8134C010 0001A410  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C014 0001A414  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C018 0001A418  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134C01C 0001A41C  48 00 02 50 */	b .L_8134C26C
.L_8134C020:
/* 8134C020 0001A420  80 FC 00 00 */	lwz r7, 0x0(r28)
/* 8134C024 0001A424  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8134C028 0001A428  81 1C 00 04 */	lwz r8, 0x4(r28)
/* 8134C02C 0001A42C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8134C030 0001A430  7C A0 3A 78 */	xor r0, r5, r7
/* 8134C034 0001A434  7C C3 42 78 */	xor r3, r6, r8
/* 8134C038 0001A438  7C 60 03 79 */	or. r0, r3, r0
/* 8134C03C 0001A43C  41 82 00 24 */	beq .L_8134C060
/* 8134C040 0001A440  38 7D 0B 2D */	addi r3, r29, 0xb2d
/* 8134C044 0001A444  39 21 00 38 */	addi r9, r1, 0x38
/* 8134C048 0001A448  4C C6 31 82 */	crclr cr1eq
/* 8134C04C 0001A44C  48 1E 26 55 */	bl OSReport
/* 8134C050 0001A450  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C054 0001A454  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C058 0001A458  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134C05C 0001A45C  48 00 02 10 */	b .L_8134C26C
.L_8134C060:
/* 8134C060 0001A460  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 8134C064 0001A464  38 61 00 38 */	addi r3, r1, 0x38
/* 8134C068 0001A468  80 DB 00 00 */	lwz r6, 0x0(r27)
/* 8134C06C 0001A46C  39 01 00 28 */	addi r8, r1, 0x28
/* 8134C070 0001A470  38 04 00 3F */	addi r0, r4, 0x3f
/* 8134C074 0001A474  38 A0 00 03 */	li r5, 0x3
/* 8134C078 0001A478  3C 86 00 02 */	addis r4, r6, 0x2
/* 8134C07C 0001A47C  38 E0 00 01 */	li r7, 0x1
/* 8134C080 0001A480  54 06 00 32 */	clrrwi r6, r0, 6
/* 8134C084 0001A484  39 20 00 00 */	li r9, 0x0
/* 8134C088 0001A488  38 C6 06 40 */	addi r6, r6, 0x640
/* 8134C08C 0001A48C  38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8134C090 0001A490  48 27 3A 71 */	bl fn_815BFB00
/* 8134C094 0001A494  2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 8134C098 0001A498  40 82 00 28 */	bne .L_8134C0C0
/* 8134C09C 0001A49C  7C 64 1B 78 */	mr r4, r3
/* 8134C0A0 0001A4A0  38 7D 0B 7B */	addi r3, r29, 0xb7b
/* 8134C0A4 0001A4A4  4C C6 31 82 */	crclr cr1eq
/* 8134C0A8 0001A4A8  48 1E 25 F9 */	bl OSReport
/* 8134C0AC 0001A4AC  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C0B0 0001A4B0  38 00 FF F1 */	li r0, -0xf
/* 8134C0B4 0001A4B4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C0B8 0001A4B8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C0BC 0001A4BC  48 00 01 B0 */	b .L_8134C26C
.L_8134C0C0:
/* 8134C0C0 0001A4C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C0C4 0001A4C4  41 82 00 28 */	beq .L_8134C0EC
/* 8134C0C8 0001A4C8  7C 64 1B 78 */	mr r4, r3
/* 8134C0CC 0001A4CC  38 7D 0B BB */	addi r3, r29, 0xbbb
/* 8134C0D0 0001A4D0  4C C6 31 82 */	crclr cr1eq
/* 8134C0D4 0001A4D4  48 1E 25 CD */	bl OSReport
/* 8134C0D8 0001A4D8  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C0DC 0001A4DC  38 00 FF FD */	li r0, -0x3
/* 8134C0E0 0001A4E0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C0E4 0001A4E4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C0E8 0001A4E8  48 00 01 84 */	b .L_8134C26C
.L_8134C0EC:
/* 8134C0EC 0001A4EC  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C0F0 0001A4F0  A0 81 00 2C */	lhz r4, 0x2c(r1)
/* 8134C0F4 0001A4F4  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 8134C0F8 0001A4F8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C0FC 0001A4FC  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134C100 0001A500  7C 04 02 14 */	add r0, r4, r0
/* 8134C104 0001A504  54 00 70 22 */	slwi r0, r0, 14
/* 8134C108 0001A508  90 03 00 00 */	stw r0, 0x0(r3)
/* 8134C10C 0001A50C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C110 0001A510  A0 81 00 2E */	lhz r4, 0x2e(r1)
/* 8134C114 0001A514  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C118 0001A518  A0 01 00 2A */	lhz r0, 0x2a(r1)
/* 8134C11C 0001A51C  80 63 EA 38 */	lwz r3, -0x15c8(r3)
/* 8134C120 0001A520  7C 04 02 14 */	add r0, r4, r0
/* 8134C124 0001A524  90 03 00 04 */	stw r0, 0x4(r3)
/* 8134C128 0001A528  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C12C 0001A52C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C130 0001A530  80 03 EA 3C */	lwz r0, -0x15c4(r3)
/* 8134C134 0001A534  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134C138 0001A538  41 82 00 60 */	beq .L_8134C198
/* 8134C13C 0001A53C  7F 63 DB 78 */	mr r3, r27
/* 8134C140 0001A540  38 81 00 18 */	addi r4, r1, 0x18
/* 8134C144 0001A544  38 A1 00 14 */	addi r5, r1, 0x14
/* 8134C148 0001A548  38 C1 00 10 */	addi r6, r1, 0x10
/* 8134C14C 0001A54C  38 E1 00 0C */	addi r7, r1, 0xc
/* 8134C150 0001A550  48 00 1E 0D */	bl get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl
/* 8134C154 0001A554  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C158 0001A558  41 82 00 14 */	beq .L_8134C16C
/* 8134C15C 0001A55C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C160 0001A560  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C164 0001A564  93 C3 EA 24 */	stw r30, -0x15dc(r3)
/* 8134C168 0001A568  48 00 01 04 */	b .L_8134C26C
.L_8134C16C:
/* 8134C16C 0001A56C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C170 0001A570  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134C174 0001A574  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C178 0001A578  80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134C17C 0001A57C  54 00 70 22 */	slwi r0, r0, 14
/* 8134C180 0001A580  90 03 00 00 */	stw r0, 0x0(r3)
/* 8134C184 0001A584  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C188 0001A588  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C18C 0001A58C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C190 0001A590  80 63 EA 3C */	lwz r3, -0x15c4(r3)
/* 8134C194 0001A594  90 03 00 04 */	stw r0, 0x4(r3)
.L_8134C198:
/* 8134C198 0001A598  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134C19C 0001A59C  41 82 00 14 */	beq .L_8134C1B0
/* 8134C1A0 0001A5A0  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C1A4 0001A5A4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C1A8 0001A5A8  93 E3 EA 24 */	stw r31, -0x15dc(r3)
/* 8134C1AC 0001A5AC  48 00 00 C0 */	b .L_8134C26C
.L_8134C1B0:
/* 8134C1B0 0001A5B0  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C1B4 0001A5B4  7F 63 DB 78 */	mr r3, r27
/* 8134C1B8 0001A5B8  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C1BC 0001A5BC  48 00 59 F5 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134C1C0 0001A5C0  2C 03 00 02 */	cmpwi r3, 0x2
/* 8134C1C4 0001A5C4  40 82 00 2C */	bne .L_8134C1F0
/* 8134C1C8 0001A5C8  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C1CC 0001A5CC  38 7D 0B E9 */	addi r3, r29, 0xbe9
/* 8134C1D0 0001A5D0  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C1D4 0001A5D4  4C C6 31 82 */	crclr cr1eq
/* 8134C1D8 0001A5D8  48 1E 24 C9 */	bl OSReport
/* 8134C1DC 0001A5DC  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C1E0 0001A5E0  38 00 FF FA */	li r0, -0x6
/* 8134C1E4 0001A5E4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C1E8 0001A5E8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C1EC 0001A5EC  48 00 00 80 */	b .L_8134C26C
.L_8134C1F0:
/* 8134C1F0 0001A5F0  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C1F4 0001A5F4  7F 63 DB 78 */	mr r3, r27
/* 8134C1F8 0001A5F8  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C1FC 0001A5FC  38 E1 00 0A */	addi r7, r1, 0xa
/* 8134C200 0001A600  48 00 85 C1 */	bl iplNandSD_813547C0
/* 8134C204 0001A604  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C208 0001A608  41 82 00 14 */	beq .L_8134C21C
/* 8134C20C 0001A60C  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134C210 0001A610  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C214 0001A614  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134C218 0001A618  48 00 00 54 */	b .L_8134C26C
.L_8134C21C:
/* 8134C21C 0001A61C  A0 E1 00 0A */	lhz r7, 0xa(r1)
/* 8134C220 0001A620  A1 01 00 08 */	lhz r8, 0x8(r1)
/* 8134C224 0001A624  7C E3 46 70 */	srawi r3, r7, 8
/* 8134C228 0001A628  7D 00 46 70 */	srawi r0, r8, 8
/* 8134C22C 0001A62C  7C 03 00 00 */	cmpw r3, r0
/* 8134C230 0001A630  40 81 00 2C */	ble .L_8134C25C
/* 8134C234 0001A634  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134C238 0001A638  38 7D 0C 20 */	addi r3, r29, 0xc20
/* 8134C23C 0001A63C  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C240 0001A640  4C C6 31 82 */	crclr cr1eq
/* 8134C244 0001A644  48 1E 24 5D */	bl OSReport
/* 8134C248 0001A648  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C24C 0001A64C  38 00 FF F0 */	li r0, -0x10
/* 8134C250 0001A650  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C254 0001A654  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C258 0001A658  48 00 00 14 */	b .L_8134C26C
.L_8134C25C:
/* 8134C25C 0001A65C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C260 0001A660  38 00 00 00 */	li r0, 0x0
/* 8134C264 0001A664  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C268 0001A668  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134C26C:
/* 8134C26C 0001A66C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C270 0001A670  7F 84 E3 78 */	mr r4, r28
/* 8134C274 0001A674  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C278 0001A678  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134C27C 0001A67C  48 20 F3 FD */	bl fn_8155B678
/* 8134C280 0001A680  39 61 00 90 */	addi r11, r1, 0x90
/* 8134C284 0001A684  48 2A D2 89 */	bl _restgpr_27
/* 8134C288 0001A688  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134C28C 0001A68C  7C 08 03 A6 */	mtlr r0
/* 8134C290 0001A690  38 21 00 90 */	addi r1, r1, 0x90
/* 8134C294 0001A694  4E 80 00 20 */	blr
.endfn iplNandSD_8134BED0

# .text:0x3EAC | 0x8134C298 | size: 0x3D8
.fn iplNandSD_8134C298, global
/* 8134C298 0001A698  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8134C29C 0001A69C  7C 08 02 A6 */	mflr r0
/* 8134C2A0 0001A6A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8134C2A4 0001A6A4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8134C2A8 0001A6A8  48 2A D1 F1 */	bl _savegpr_17
/* 8134C2AC 0001A6AC  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8134C2B0 0001A6B0  7C 73 1B 78 */	mr r19, r3
/* 8134C2B4 0001A6B4  3C 80 00 01 */	lis r4, 0x1
/* 8134C2B8 0001A6B8  38 A0 00 20 */	li r5, 0x20
/* 8134C2BC 0001A6BC  3C C7 00 04 */	addis r6, r7, 0x4
/* 8134C2C0 0001A6C0  3C 67 00 02 */	addis r3, r7, 0x2
/* 8134C2C4 0001A6C4  80 E6 EA 38 */	lwz r7, -0x15c8(r6)
/* 8134C2C8 0001A6C8  38 84 CE 40 */	subi r4, r4, 0x31c0
/* 8134C2CC 0001A6CC  80 C6 EA 3C */	lwz r6, -0x15c4(r6)
/* 8134C2D0 0001A6D0  83 67 00 04 */	lwz r27, 0x4(r7)
/* 8134C2D4 0001A6D4  83 47 00 00 */	lwz r26, 0x0(r7)
/* 8134C2D8 0001A6D8  83 26 00 04 */	lwz r25, 0x4(r6)
/* 8134C2DC 0001A6DC  83 06 00 00 */	lwz r24, 0x0(r6)
/* 8134C2E0 0001A6E0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C2E4 0001A6E4  48 20 E4 71 */	bl fn_8155A754
/* 8134C2E8 0001A6E8  7C 77 1B 78 */	mr r23, r3
/* 8134C2EC 0001A6EC  7E 63 9B 78 */	mr r3, r19
/* 8134C2F0 0001A6F0  48 00 38 B5 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134C2F4 0001A6F4  3B E0 00 00 */	li r31, 0x0
/* 8134C2F8 0001A6F8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8134C2FC 0001A6FC  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 8134C300 0001A700  7C 9D 23 78 */	mr r29, r4
/* 8134C304 0001A704  7C BF 20 10 */	subfc r5, r31, r4
/* 8134C308 0001A708  7C 7E 1B 78 */	mr r30, r3
/* 8134C30C 0001A70C  7C C6 01 10 */	subfe r6, r6, r0
/* 8134C310 0001A710  7C C0 01 10 */	subfe r6, r0, r0
/* 8134C314 0001A714  7C C6 00 D1 */	neg. r6, r6
/* 8134C318 0001A718  41 82 00 14 */	beq .L_8134C32C
/* 8134C31C 0001A71C  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C320 0001A720  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C324 0001A724  90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8134C328 0001A728  48 00 03 1C */	b .L_8134C644
.L_8134C32C:
/* 8134C32C 0001A72C  7F F2 FB 78 */	mr r18, r31
/* 8134C330 0001A730  3A A0 00 00 */	li r21, 0x0
/* 8134C334 0001A734  3A C0 00 00 */	li r22, 0x0
/* 8134C338 0001A738  3A 80 00 00 */	li r20, 0x0
/* 8134C33C 0001A73C  48 00 00 E4 */	b .L_8134C420
.L_8134C340:
/* 8134C340 0001A740  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134C344 0001A744  2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C348 0001A748  41 82 00 18 */	beq .L_8134C360
/* 8134C34C 0001A74C  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C350 0001A750  38 00 FF FE */	li r0, -0x2
/* 8134C354 0001A754  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C358 0001A758  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C35C 0001A75C  48 00 02 E8 */	b .L_8134C644
.L_8134C360:
/* 8134C360 0001A760  7F 9A 92 14 */	add r28, r26, r18
/* 8134C364 0001A764  7C BA 90 2E */	lwzx r5, r26, r18
/* 8134C368 0001A768  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134C36C 0001A76C  7E 63 9B 78 */	mr r3, r19
/* 8134C370 0001A770  7E E7 BB 78 */	mr r7, r23
/* 8134C374 0001A774  48 00 42 F9 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 8134C378 0001A778  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C37C 0001A77C  41 82 00 14 */	beq .L_8134C390
/* 8134C380 0001A780  80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C384 0001A784  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C388 0001A788  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134C38C 0001A78C  48 00 02 B8 */	b .L_8134C644
.L_8134C390:
/* 8134C390 0001A790  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8134C394 0001A794  39 01 00 14 */	addi r8, r1, 0x14
/* 8134C398 0001A798  38 A0 00 01 */	li r5, 0x1
/* 8134C39C 0001A79C  38 E0 00 00 */	li r7, 0x0
/* 8134C3A0 0001A7A0  80 77 00 08 */	lwz r3, 0x8(r23)
/* 8134C3A4 0001A7A4  39 20 00 03 */	li r9, 0x3
/* 8134C3A8 0001A7A8  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8134C3AC 0001A7AC  38 03 00 3F */	addi r0, r3, 0x3f
/* 8134C3B0 0001A7B0  54 03 00 32 */	clrrwi r3, r0, 6
/* 8134C3B4 0001A7B4  80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C3B8 0001A7B8  3A 23 06 40 */	addi r17, r3, 0x640
/* 8134C3BC 0001A7BC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134C3C0 0001A7C0  7E 2A 8B 78 */	mr r10, r17
/* 8134C3C4 0001A7C4  3C C4 00 02 */	addis r6, r4, 0x2
/* 8134C3C8 0001A7C8  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8134C3CC 0001A7CC  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134C3D0 0001A7D0  48 27 4F AD */	bl fn_815C137C
/* 8134C3D4 0001A7D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C3D8 0001A7D8  7C 64 1B 78 */	mr r4, r3
/* 8134C3DC 0001A7DC  41 82 00 28 */	beq .L_8134C404
/* 8134C3E0 0001A7E0  3C 60 81 63 */	lis r3, lbl_816366F5@ha
/* 8134C3E4 0001A7E4  38 63 66 F5 */	addi r3, r3, lbl_816366F5@l
/* 8134C3E8 0001A7E8  4C C6 31 82 */	crclr cr1eq
/* 8134C3EC 0001A7EC  48 1E 22 B5 */	bl OSReport
/* 8134C3F0 0001A7F0  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C3F4 0001A7F4  38 00 FF FE */	li r0, -0x2
/* 8134C3F8 0001A7F8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C3FC 0001A7FC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C400 0001A800  48 00 02 44 */	b .L_8134C644
.L_8134C404:
/* 8134C404 0001A804  7C 95 88 14 */	addc r4, r21, r17
/* 8134C408 0001A808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134C40C 0001A80C  7C 76 01 94 */	addze r3, r22
/* 8134C410 0001A810  3A 94 00 01 */	addi r20, r20, 0x1
/* 8134C414 0001A814  7E A4 00 14 */	addc r21, r4, r0
/* 8134C418 0001A818  3A 52 00 08 */	addi r18, r18, 0x8
/* 8134C41C 0001A81C  7E C3 01 94 */	addze r22, r3
.L_8134C420:
/* 8134C420 0001A820  7C 14 D8 40 */	cmplw r20, r27
/* 8134C424 0001A824  41 80 FF 1C */	blt .L_8134C340
/* 8134C428 0001A828  3A 80 00 00 */	li r20, 0x0
/* 8134C42C 0001A82C  3B 40 00 00 */	li r26, 0x0
/* 8134C430 0001A830  3B E0 00 00 */	li r31, 0x0
/* 8134C434 0001A834  48 00 00 E4 */	b .L_8134C518
.L_8134C438:
/* 8134C438 0001A838  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134C43C 0001A83C  2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C440 0001A840  41 82 00 18 */	beq .L_8134C458
/* 8134C444 0001A844  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C448 0001A848  38 00 FF FE */	li r0, -0x2
/* 8134C44C 0001A84C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C450 0001A850  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C454 0001A854  48 00 01 F0 */	b .L_8134C644
.L_8134C458:
/* 8134C458 0001A858  7E 58 D2 14 */	add r18, r24, r26
/* 8134C45C 0001A85C  7C B8 D0 2E */	lwzx r5, r24, r26
/* 8134C460 0001A860  80 D2 00 04 */	lwz r6, 0x4(r18)
/* 8134C464 0001A864  7E 63 9B 78 */	mr r3, r19
/* 8134C468 0001A868  7E E7 BB 78 */	mr r7, r23
/* 8134C46C 0001A86C  48 00 42 01 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 8134C470 0001A870  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C474 0001A874  41 82 00 14 */	beq .L_8134C488
/* 8134C478 0001A878  80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C47C 0001A87C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C480 0001A880  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134C484 0001A884  48 00 01 C0 */	b .L_8134C644
.L_8134C488:
/* 8134C488 0001A888  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8134C48C 0001A88C  39 01 00 10 */	addi r8, r1, 0x10
/* 8134C490 0001A890  38 A0 00 01 */	li r5, 0x1
/* 8134C494 0001A894  38 E0 00 00 */	li r7, 0x0
/* 8134C498 0001A898  80 77 00 08 */	lwz r3, 0x8(r23)
/* 8134C49C 0001A89C  39 20 00 03 */	li r9, 0x3
/* 8134C4A0 0001A8A0  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8134C4A4 0001A8A4  38 03 00 3F */	addi r0, r3, 0x3f
/* 8134C4A8 0001A8A8  54 03 00 32 */	clrrwi r3, r0, 6
/* 8134C4AC 0001A8AC  80 93 00 00 */	lwz r4, 0x0(r19)
/* 8134C4B0 0001A8B0  3A 23 06 40 */	addi r17, r3, 0x640
/* 8134C4B4 0001A8B4  80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134C4B8 0001A8B8  7E 2A 8B 78 */	mr r10, r17
/* 8134C4BC 0001A8BC  3C C4 00 02 */	addis r6, r4, 0x2
/* 8134C4C0 0001A8C0  80 92 00 04 */	lwz r4, 0x4(r18)
/* 8134C4C4 0001A8C4  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134C4C8 0001A8C8  48 27 4E B5 */	bl fn_815C137C
/* 8134C4CC 0001A8CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C4D0 0001A8D0  7C 64 1B 78 */	mr r4, r3
/* 8134C4D4 0001A8D4  41 82 00 28 */	beq .L_8134C4FC
/* 8134C4D8 0001A8D8  3C 60 81 63 */	lis r3, lbl_816366F5@ha
/* 8134C4DC 0001A8DC  38 63 66 F5 */	addi r3, r3, lbl_816366F5@l
/* 8134C4E0 0001A8E0  4C C6 31 82 */	crclr cr1eq
/* 8134C4E4 0001A8E4  48 1E 21 BD */	bl OSReport
/* 8134C4E8 0001A8E8  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C4EC 0001A8EC  38 00 FF FE */	li r0, -0x2
/* 8134C4F0 0001A8F0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C4F4 0001A8F4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C4F8 0001A8F8  48 00 01 4C */	b .L_8134C644
.L_8134C4FC:
/* 8134C4FC 0001A8FC  7C 95 88 14 */	addc r4, r21, r17
/* 8134C500 0001A900  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C504 0001A904  7C 76 01 94 */	addze r3, r22
/* 8134C508 0001A908  3A 94 00 01 */	addi r20, r20, 0x1
/* 8134C50C 0001A90C  7E A4 00 14 */	addc r21, r4, r0
/* 8134C510 0001A910  3B 5A 00 08 */	addi r26, r26, 0x8
/* 8134C514 0001A914  7E C3 01 94 */	addze r22, r3
.L_8134C518:
/* 8134C518 0001A918  7C 14 C8 40 */	cmplw r20, r25
/* 8134C51C 0001A91C  41 80 FF 1C */	blt .L_8134C438
/* 8134C520 0001A920  3A 40 00 00 */	li r18, 0x0
/* 8134C524 0001A924  3A 20 00 00 */	li r17, 0x0
/* 8134C528 0001A928  3B 40 00 00 */	li r26, 0x0
/* 8134C52C 0001A92C  3A 80 00 00 */	li r20, 0x0
/* 8134C530 0001A930  48 00 00 A0 */	b .L_8134C5D0
.L_8134C534:
/* 8134C534 0001A934  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134C538 0001A938  2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C53C 0001A93C  41 82 00 18 */	beq .L_8134C554
/* 8134C540 0001A940  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C544 0001A944  38 00 FF FE */	li r0, -0x2
/* 8134C548 0001A948  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C54C 0001A94C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C550 0001A950  48 00 00 F4 */	b .L_8134C644
.L_8134C554:
/* 8134C554 0001A954  7C 98 A2 14 */	add r4, r24, r20
/* 8134C558 0001A958  7C 78 A0 2E */	lwzx r3, r24, r20
/* 8134C55C 0001A95C  80 84 00 04 */	lwz r4, 0x4(r4)
/* 8134C560 0001A960  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8134C564 0001A964  4B FF CE D1 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134C568 0001A968  38 61 00 2C */	addi r3, r1, 0x2c
/* 8134C56C 0001A96C  38 81 00 18 */	addi r4, r1, 0x18
/* 8134C570 0001A970  48 29 BB B5 */	bl fn_815E8124
/* 8134C574 0001A974  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C578 0001A978  40 82 00 3C */	bne .L_8134C5B4
/* 8134C57C 0001A97C  88 81 00 28 */	lbz r4, 0x28(r1)
/* 8134C580 0001A980  7E 63 9B 78 */	mr r3, r19
/* 8134C584 0001A984  48 00 7B 85 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134C588 0001A988  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C58C 0001A98C  41 82 00 14 */	beq .L_8134C5A0
/* 8134C590 0001A990  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8134C594 0001A994  7E 52 00 14 */	addc r18, r18, r0
/* 8134C598 0001A998  7E 31 01 94 */	addze r17, r17
/* 8134C59C 0001A99C  48 00 00 2C */	b .L_8134C5C8
.L_8134C5A0:
/* 8134C5A0 0001A9A0  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C5A4 0001A9A4  38 00 FF FE */	li r0, -0x2
/* 8134C5A8 0001A9A8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C5AC 0001A9AC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C5B0 0001A9B0  48 00 00 94 */	b .L_8134C644
.L_8134C5B4:
/* 8134C5B4 0001A9B4  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C5B8 0001A9B8  38 00 FF FE */	li r0, -0x2
/* 8134C5BC 0001A9BC  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C5C0 0001A9C0  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C5C4 0001A9C4  48 00 00 80 */	b .L_8134C644
.L_8134C5C8:
/* 8134C5C8 0001A9C8  3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134C5CC 0001A9CC  3A 94 00 08 */	addi r20, r20, 0x8
.L_8134C5D0:
/* 8134C5D0 0001A9D0  7C 1A C8 40 */	cmplw r26, r25
/* 8134C5D4 0001A9D4  41 80 FF 60 */	blt .L_8134C534
/* 8134C5D8 0001A9D8  7E 92 A8 10 */	subfc r20, r18, r21
/* 8134C5DC 0001A9DC  3E 40 00 02 */	lis r18, 0x2
/* 8134C5E0 0001A9E0  7C F1 B1 10 */	subfe r7, r17, r22
/* 8134C5E4 0001A9E4  38 80 00 00 */	li r4, 0x0
/* 8134C5E8 0001A9E8  38 B2 90 00 */	subi r5, r18, 0x7000
/* 8134C5EC 0001A9EC  7C 14 28 14 */	addc r0, r20, r5
/* 8134C5F0 0001A9F0  7C 67 21 14 */	adde r3, r7, r4
/* 8134C5F4 0001A9F4  7C 00 E8 10 */	subfc r0, r0, r29
/* 8134C5F8 0001A9F8  7C 03 F1 10 */	subfe r0, r3, r30
/* 8134C5FC 0001A9FC  7C 1D E9 10 */	subfe r0, r29, r29
/* 8134C600 0001AA00  7C 00 00 D1 */	neg. r0, r0
/* 8134C604 0001AA04  41 82 00 34 */	beq .L_8134C638
/* 8134C608 0001AA08  7C D4 28 14 */	addc r6, r20, r5
/* 8134C60C 0001AA0C  3C 60 81 63 */	lis r3, lbl_8163671A@ha
/* 8134C610 0001AA10  38 63 67 1A */	addi r3, r3, lbl_8163671A@l
/* 8134C614 0001AA14  7C A7 21 14 */	adde r5, r7, r4
/* 8134C618 0001AA18  4C C6 31 82 */	crclr cr1eq
/* 8134C61C 0001AA1C  48 1E 20 85 */	bl OSReport
/* 8134C620 0001AA20  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C624 0001AA24  38 12 90 00 */	subi r0, r18, 0x7000
/* 8134C628 0001AA28  7C 14 00 14 */	addc r0, r20, r0
/* 8134C62C 0001AA2C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C630 0001AA30  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C634 0001AA34  48 00 00 10 */	b .L_8134C644
.L_8134C638:
/* 8134C638 0001AA38  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C63C 0001AA3C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C640 0001AA40  90 83 EA 24 */	stw r4, -0x15dc(r3)
.L_8134C644:
/* 8134C644 0001AA44  80 73 00 00 */	lwz r3, 0x0(r19)
/* 8134C648 0001AA48  7E E4 BB 78 */	mr r4, r23
/* 8134C64C 0001AA4C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C650 0001AA50  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C654 0001AA54  48 20 E3 B1 */	bl fn_8155AA04
/* 8134C658 0001AA58  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8134C65C 0001AA5C  48 2A CE 89 */	bl _restgpr_17
/* 8134C660 0001AA60  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8134C664 0001AA64  7C 08 03 A6 */	mtlr r0
/* 8134C668 0001AA68  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8134C66C 0001AA6C  4E 80 00 20 */	blr
.endfn iplNandSD_8134C298

# .text:0x4284 | 0x8134C670 | size: 0x1C8
.fn iplNandSD_8134C670, global
/* 8134C670 0001AA70  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134C674 0001AA74  7C 08 02 A6 */	mflr r0
/* 8134C678 0001AA78  90 01 00 94 */	stw r0, 0x94(r1)
/* 8134C67C 0001AA7C  39 61 00 90 */	addi r11, r1, 0x90
/* 8134C680 0001AA80  48 2A CE 25 */	bl _savegpr_20
/* 8134C684 0001AA84  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134C688 0001AA88  3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8134C68C 0001AA8C  3B E0 00 00 */	li r31, 0x0
/* 8134C690 0001AA90  38 00 FF FE */	li r0, -0x2
/* 8134C694 0001AA94  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C698 0001AA98  7C 7B 1B 78 */	mr r27, r3
/* 8134C69C 0001AA9C  83 84 EA 38 */	lwz r28, -0x15c8(r4)
/* 8134C6A0 0001AAA0  3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 8134C6A4 0001AAA4  38 81 00 10 */	addi r4, r1, 0x10
/* 8134C6A8 0001AAA8  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8134C6AC 0001AAAC  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134C6B0 0001AAB0  38 60 00 00 */	li r3, 0x0
/* 8134C6B4 0001AAB4  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134C6B8 0001AAB8  90 05 EA 24 */	stw r0, -0x15dc(r5)
/* 8134C6BC 0001AABC  48 27 1E 29 */	bl fn_815BE4E4
/* 8134C6C0 0001AAC0  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C6C4 0001AAC4  38 A0 00 20 */	li r5, 0x20
/* 8134C6C8 0001AAC8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C6CC 0001AACC  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C6D0 0001AAD0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C6D4 0001AAD4  54 04 18 38 */	slwi r4, r0, 3
/* 8134C6D8 0001AAD8  48 20 E0 7D */	bl fn_8155A754
/* 8134C6DC 0001AADC  7C 7D 1B 78 */	mr r29, r3
/* 8134C6E0 0001AAE0  38 81 00 10 */	addi r4, r1, 0x10
/* 8134C6E4 0001AAE4  48 27 1E 01 */	bl fn_815BE4E4
/* 8134C6E8 0001AAE8  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C6EC 0001AAEC  7F F9 FB 78 */	mr r25, r31
/* 8134C6F0 0001AAF0  3A C0 00 00 */	li r22, 0x0
/* 8134C6F4 0001AAF4  3B 40 00 00 */	li r26, 0x0
/* 8134C6F8 0001AAF8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C6FC 0001AAFC  3A 80 00 00 */	li r20, 0x0
/* 8134C700 0001AB00  82 A3 EA 3C */	lwz r21, -0x15c4(r3)
/* 8134C704 0001AB04  3B 00 FF FF */	li r24, -0x1
/* 8134C708 0001AB08  48 00 00 E8 */	b .L_8134C7F0
.L_8134C70C:
/* 8134C70C 0001AB0C  7C 16 A8 40 */	cmplw r22, r21
/* 8134C710 0001AB10  40 80 00 EC */	bge .L_8134C7FC
/* 8134C714 0001AB14  7E FD CA 14 */	add r23, r29, r25
/* 8134C718 0001AB18  7C 7D C8 2E */	lwzx r3, r29, r25
/* 8134C71C 0001AB1C  80 97 00 04 */	lwz r4, 0x4(r23)
/* 8134C720 0001AB20  4B FF CB 75 */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134C724 0001AB24  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C728 0001AB28  41 82 00 C0 */	beq .L_8134C7E8
/* 8134C72C 0001AB2C  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134C730 0001AB30  7F 63 DB 78 */	mr r3, r27
/* 8134C734 0001AB34  80 D7 00 04 */	lwz r6, 0x4(r23)
/* 8134C738 0001AB38  48 00 54 4D */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 8134C73C 0001AB3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C740 0001AB40  41 82 00 A8 */	beq .L_8134C7E8
/* 8134C744 0001AB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134C748 0001AB48  38 61 00 14 */	addi r3, r1, 0x14
/* 8134C74C 0001AB4C  38 BE 01 43 */	addi r5, r30, 0x143
/* 8134C750 0001AB50  38 80 00 40 */	li r4, 0x40
/* 8134C754 0001AB54  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8134C758 0001AB58  80 17 00 04 */	lwz r0, 0x4(r23)
/* 8134C75C 0001AB5C  80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8134C760 0001AB60  7C 07 C0 38 */	and r7, r0, r24
/* 8134C764 0001AB64  4C C6 31 82 */	crclr cr1eq
/* 8134C768 0001AB68  48 2B 42 41 */	bl fn_816009A8
/* 8134C76C 0001AB6C  38 61 00 14 */	addi r3, r1, 0x14
/* 8134C770 0001AB70  38 81 00 0C */	addi r4, r1, 0xc
/* 8134C774 0001AB74  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134C778 0001AB78  48 01 3D A5 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134C77C 0001AB7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C780 0001AB80  41 82 00 2C */	beq .L_8134C7AC
/* 8134C784 0001AB84  7C 65 1B 78 */	mr r5, r3
/* 8134C788 0001AB88  38 7E 0C D3 */	addi r3, r30, 0xcd3
/* 8134C78C 0001AB8C  38 81 00 14 */	addi r4, r1, 0x14
/* 8134C790 0001AB90  4C C6 31 82 */	crclr cr1eq
/* 8134C794 0001AB94  48 1E 1F 0D */	bl OSReport
/* 8134C798 0001AB98  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C79C 0001AB9C  38 00 FF FE */	li r0, -0x2
/* 8134C7A0 0001ABA0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C7A4 0001ABA4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C7A8 0001ABA8  48 00 00 64 */	b .L_8134C80C
.L_8134C7AC:
/* 8134C7AC 0001ABAC  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134C7B0 0001ABB0  7C 9C D2 14 */	add r4, r28, r26
/* 8134C7B4 0001ABB4  80 D7 00 04 */	lwz r6, 0x4(r23)
/* 8134C7B8 0001ABB8  38 7E 0D 03 */	addi r3, r30, 0xd03
/* 8134C7BC 0001ABBC  90 C4 00 04 */	stw r6, 0x4(r4)
/* 8134C7C0 0001ABC0  7C BC D1 2E */	stwx r5, r28, r26
/* 8134C7C4 0001ABC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134C7C8 0001ABC8  54 07 70 22 */	slwi r7, r0, 14
/* 8134C7CC 0001ABCC  90 E4 00 08 */	stw r7, 0x8(r4)
/* 8134C7D0 0001ABD0  81 01 00 08 */	lwz r8, 0x8(r1)
/* 8134C7D4 0001ABD4  91 04 00 0C */	stw r8, 0xc(r4)
/* 8134C7D8 0001ABD8  4C C6 31 82 */	crclr cr1eq
/* 8134C7DC 0001ABDC  48 1E 1E C5 */	bl OSReport
/* 8134C7E0 0001ABE0  3A D6 00 01 */	addi r22, r22, 0x1
/* 8134C7E4 0001ABE4  3B 5A 00 10 */	addi r26, r26, 0x10
.L_8134C7E8:
/* 8134C7E8 0001ABE8  3A 94 00 01 */	addi r20, r20, 0x1
/* 8134C7EC 0001ABEC  3B 39 00 08 */	addi r25, r25, 0x8
.L_8134C7F0:
/* 8134C7F0 0001ABF0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8134C7F4 0001ABF4  7C 14 00 40 */	cmplw r20, r0
/* 8134C7F8 0001ABF8  41 80 FF 14 */	blt .L_8134C70C
.L_8134C7FC:
/* 8134C7FC 0001ABFC  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C800 0001AC00  38 00 00 00 */	li r0, 0x0
/* 8134C804 0001AC04  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C808 0001AC08  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134C80C:
/* 8134C80C 0001AC0C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8134C810 0001AC10  7F A4 EB 78 */	mr r4, r29
/* 8134C814 0001AC14  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134C818 0001AC18  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134C81C 0001AC1C  48 20 E1 E9 */	bl fn_8155AA04
/* 8134C820 0001AC20  39 61 00 90 */	addi r11, r1, 0x90
/* 8134C824 0001AC24  48 2A CC CD */	bl _restgpr_20
/* 8134C828 0001AC28  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134C82C 0001AC2C  7C 08 03 A6 */	mtlr r0
/* 8134C830 0001AC30  38 21 00 90 */	addi r1, r1, 0x90
/* 8134C834 0001AC34  4E 80 00 20 */	blr
.endfn iplNandSD_8134C670

# .text:0x444C | 0x8134C838 | size: 0x2D0
.fn iplNandSD_8134C838, global
/* 8134C838 0001AC38  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8134C83C 0001AC3C  7C 08 02 A6 */	mflr r0
/* 8134C840 0001AC40  90 01 01 14 */	stw r0, 0x114(r1)
/* 8134C844 0001AC44  39 61 01 10 */	addi r11, r1, 0x110
/* 8134C848 0001AC48  48 2A CC 49 */	bl _savegpr_15
/* 8134C84C 0001AC4C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134C850 0001AC50  7C 72 1B 78 */	mr r18, r3
/* 8134C854 0001AC54  38 80 06 40 */	li r4, 0x640
/* 8134C858 0001AC58  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134C85C 0001AC5C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134C860 0001AC60  48 20 EE 09 */	bl fn_8155B668
/* 8134C864 0001AC64  80 92 00 00 */	lwz r4, 0x0(r18)
/* 8134C868 0001AC68  7C 7C 1B 78 */	mr r28, r3
/* 8134C86C 0001AC6C  38 00 FF FE */	li r0, -0x2
/* 8134C870 0001AC70  38 61 00 0C */	addi r3, r1, 0xc
/* 8134C874 0001AC74  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134C878 0001AC78  80 A4 EA 38 */	lwz r5, -0x15c8(r4)
/* 8134C87C 0001AC7C  83 64 EA 3C */	lwz r27, -0x15c4(r4)
/* 8134C880 0001AC80  83 44 EA 40 */	lwz r26, -0x15c0(r4)
/* 8134C884 0001AC84  83 25 00 00 */	lwz r25, 0x0(r5)
/* 8134C888 0001AC88  83 1B 00 00 */	lwz r24, 0x0(r27)
/* 8134C88C 0001AC8C  82 FA 00 00 */	lwz r23, 0x0(r26)
/* 8134C890 0001AC90  82 C5 00 04 */	lwz r22, 0x4(r5)
/* 8134C894 0001AC94  90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134C898 0001AC98  48 27 13 DD */	bl ES_GetDeviceId
/* 8134C89C 0001AC9C  3A A0 00 00 */	li r21, 0x0
/* 8134C8A0 0001ACA0  3A 20 00 00 */	li r17, 0x0
/* 8134C8A4 0001ACA4  3A 80 00 00 */	li r20, 0x0
/* 8134C8A8 0001ACA8  3A 00 00 00 */	li r16, 0x0
/* 8134C8AC 0001ACAC  3A 60 00 00 */	li r19, 0x0
/* 8134C8B0 0001ACB0  39 E0 00 00 */	li r15, 0x0
/* 8134C8B4 0001ACB4  3F C0 81 63 */	lis r30, lbl_81636585@ha
/* 8134C8B8 0001ACB8  3F E0 81 63 */	lis r31, lbl_816367C8@ha
/* 8134C8BC 0001ACBC  48 00 02 00 */	b .L_8134CABC
.L_8134C8C0:
/* 8134C8C0 0001ACC0  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 8134C8C4 0001ACC4  2C 00 00 06 */	cmpwi r0, 0x6
/* 8134C8C8 0001ACC8  41 82 00 18 */	beq .L_8134C8E0
/* 8134C8CC 0001ACCC  80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134C8D0 0001ACD0  38 00 FF FE */	li r0, -0x2
/* 8134C8D4 0001ACD4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134C8D8 0001ACD8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134C8DC 0001ACDC  48 00 01 E8 */	b .L_8134CAC4
.L_8134C8E0:
/* 8134C8E0 0001ACE0  7F B9 7A 14 */	add r29, r25, r15
/* 8134C8E4 0001ACE4  7C 79 78 2E */	lwzx r3, r25, r15
/* 8134C8E8 0001ACE8  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C8EC 0001ACEC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8134C8F0 0001ACF0  4B FF CB 45 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134C8F4 0001ACF4  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C8F8 0001ACF8  7E 43 93 78 */	mr r3, r18
/* 8134C8FC 0001ACFC  7F 85 E3 78 */	mr r5, r28
/* 8134C900 0001AD00  48 00 4D 61 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8134C904 0001AD04  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C908 0001AD08  40 82 01 68 */	bne .L_8134CA70
/* 8134C90C 0001AD0C  80 DC 00 08 */	lwz r6, 0x8(r28)
/* 8134C910 0001AD10  38 61 00 18 */	addi r3, r1, 0x18
/* 8134C914 0001AD14  38 81 00 10 */	addi r4, r1, 0x10
/* 8134C918 0001AD18  38 A1 00 0A */	addi r5, r1, 0xa
/* 8134C91C 0001AD1C  38 06 00 3F */	addi r0, r6, 0x3f
/* 8134C920 0001AD20  38 C0 00 03 */	li r6, 0x3
/* 8134C924 0001AD24  54 07 00 32 */	clrrwi r7, r0, 6
/* 8134C928 0001AD28  38 E7 06 40 */	addi r7, r7, 0x640
/* 8134C92C 0001AD2C  48 27 2E 09 */	bl fn_815BF734
/* 8134C930 0001AD30  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C934 0001AD34  41 82 00 34 */	beq .L_8134C968
/* 8134C938 0001AD38  7C 64 1B 78 */	mr r4, r3
/* 8134C93C 0001AD3C  38 7E 65 85 */	addi r3, r30, lbl_81636585@l
/* 8134C940 0001AD40  4C C6 31 82 */	crclr cr1eq
/* 8134C944 0001AD44  48 1E 1D 5D */	bl OSReport
/* 8134C948 0001AD48  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C94C 0001AD4C  7C 78 8A 14 */	add r3, r24, r17
/* 8134C950 0001AD50  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C954 0001AD54  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134C958 0001AD58  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134C95C 0001AD5C  7C 18 89 2E */	stwx r0, r24, r17
/* 8134C960 0001AD60  3A 31 00 08 */	addi r17, r17, 0x8
/* 8134C964 0001AD64  48 00 01 50 */	b .L_8134CAB4
.L_8134C968:
/* 8134C968 0001AD68  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C96C 0001AD6C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8134C970 0001AD70  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C974 0001AD74  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8134C978 0001AD78  7C A0 02 78 */	xor r0, r5, r0
/* 8134C97C 0001AD7C  7C C3 22 78 */	xor r3, r6, r4
/* 8134C980 0001AD80  7C 60 03 79 */	or. r0, r3, r0
/* 8134C984 0001AD84  41 82 00 3C */	beq .L_8134C9C0
/* 8134C988 0001AD88  80 FC 00 00 */	lwz r7, 0x0(r28)
/* 8134C98C 0001AD8C  38 7F 67 C8 */	addi r3, r31, lbl_816367C8@l
/* 8134C990 0001AD90  81 1C 00 04 */	lwz r8, 0x4(r28)
/* 8134C994 0001AD94  39 21 00 18 */	addi r9, r1, 0x18
/* 8134C998 0001AD98  4C C6 31 82 */	crclr cr1eq
/* 8134C99C 0001AD9C  48 1E 1D 05 */	bl OSReport
/* 8134C9A0 0001ADA0  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C9A4 0001ADA4  7C 78 8A 14 */	add r3, r24, r17
/* 8134C9A8 0001ADA8  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C9AC 0001ADAC  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134C9B0 0001ADB0  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134C9B4 0001ADB4  7C 18 89 2E */	stwx r0, r24, r17
/* 8134C9B8 0001ADB8  3A 31 00 08 */	addi r17, r17, 0x8
/* 8134C9BC 0001ADBC  48 00 00 F8 */	b .L_8134CAB4
.L_8134C9C0:
/* 8134C9C0 0001ADC0  80 DC 00 08 */	lwz r6, 0x8(r28)
/* 8134C9C4 0001ADC4  7E 43 93 78 */	mr r3, r18
/* 8134C9C8 0001ADC8  38 A1 00 58 */	addi r5, r1, 0x58
/* 8134C9CC 0001ADCC  38 06 00 3F */	addi r0, r6, 0x3f
/* 8134C9D0 0001ADD0  54 06 00 32 */	clrrwi r6, r0, 6
/* 8134C9D4 0001ADD4  48 00 2E ED */	bl get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader
/* 8134C9D8 0001ADD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134C9DC 0001ADDC  41 82 00 20 */	beq .L_8134C9FC
/* 8134C9E0 0001ADE0  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134C9E4 0001ADE4  7C 78 8A 14 */	add r3, r24, r17
/* 8134C9E8 0001ADE8  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134C9EC 0001ADEC  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134C9F0 0001ADF0  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134C9F4 0001ADF4  7C 18 89 2E */	stwx r0, r24, r17
/* 8134C9F8 0001ADF8  3A 31 00 08 */	addi r17, r17, 0x8
.L_8134C9FC:
/* 8134C9FC 0001ADFC  80 61 00 60 */	lwz r3, 0x60(r1)
/* 8134CA00 0001AE00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CA04 0001AE04  7C 03 00 40 */	cmplw r3, r0
/* 8134CA08 0001AE08  40 82 00 48 */	bne .L_8134CA50
/* 8134CA0C 0001AE0C  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134CA10 0001AE10  7E 43 93 78 */	mr r3, r18
/* 8134CA14 0001AE14  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134CA18 0001AE18  38 E1 00 08 */	addi r7, r1, 0x8
/* 8134CA1C 0001AE1C  48 00 7D A5 */	bl iplNandSD_813547C0
/* 8134CA20 0001AE20  A0 61 00 08 */	lhz r3, 0x8(r1)
/* 8134CA24 0001AE24  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8134CA28 0001AE28  7C 03 00 40 */	cmplw r3, r0
/* 8134CA2C 0001AE2C  41 82 00 88 */	beq .L_8134CAB4
/* 8134CA30 0001AE30  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA34 0001AE34  7C 78 8A 14 */	add r3, r24, r17
/* 8134CA38 0001AE38  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CA3C 0001AE3C  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134CA40 0001AE40  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CA44 0001AE44  7C 18 89 2E */	stwx r0, r24, r17
/* 8134CA48 0001AE48  3A 31 00 08 */	addi r17, r17, 0x8
/* 8134CA4C 0001AE4C  48 00 00 68 */	b .L_8134CAB4
.L_8134CA50:
/* 8134CA50 0001AE50  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA54 0001AE54  7C 78 8A 14 */	add r3, r24, r17
/* 8134CA58 0001AE58  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CA5C 0001AE5C  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134CA60 0001AE60  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CA64 0001AE64  7C 18 89 2E */	stwx r0, r24, r17
/* 8134CA68 0001AE68  3A 31 00 08 */	addi r17, r17, 0x8
/* 8134CA6C 0001AE6C  48 00 00 48 */	b .L_8134CAB4
.L_8134CA70:
/* 8134CA70 0001AE70  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134CA74 0001AE74  40 82 00 24 */	bne .L_8134CA98
/* 8134CA78 0001AE78  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA7C 0001AE7C  7C 77 82 14 */	add r3, r23, r16
/* 8134CA80 0001AE80  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CA84 0001AE84  3A 94 00 01 */	addi r20, r20, 0x1
/* 8134CA88 0001AE88  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CA8C 0001AE8C  7C 17 81 2E */	stwx r0, r23, r16
/* 8134CA90 0001AE90  3A 10 00 08 */	addi r16, r16, 0x8
/* 8134CA94 0001AE94  48 00 00 20 */	b .L_8134CAB4
.L_8134CA98:
/* 8134CA98 0001AE98  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8134CA9C 0001AE9C  7C 78 8A 14 */	add r3, r24, r17
/* 8134CAA0 0001AEA0  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134CAA4 0001AEA4  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134CAA8 0001AEA8  90 83 00 04 */	stw r4, 0x4(r3)
/* 8134CAAC 0001AEAC  7C 18 89 2E */	stwx r0, r24, r17
/* 8134CAB0 0001AEB0  3A 31 00 08 */	addi r17, r17, 0x8
.L_8134CAB4:
/* 8134CAB4 0001AEB4  3A 73 00 01 */	addi r19, r19, 0x1
/* 8134CAB8 0001AEB8  39 EF 00 08 */	addi r15, r15, 0x8
.L_8134CABC:
/* 8134CABC 0001AEBC  7C 13 B0 40 */	cmplw r19, r22
/* 8134CAC0 0001AEC0  41 80 FE 00 */	blt .L_8134C8C0
.L_8134CAC4:
/* 8134CAC4 0001AEC4  92 9A 00 04 */	stw r20, 0x4(r26)
/* 8134CAC8 0001AEC8  38 00 00 00 */	li r0, 0x0
/* 8134CACC 0001AECC  7F 84 E3 78 */	mr r4, r28
/* 8134CAD0 0001AED0  92 BB 00 04 */	stw r21, 0x4(r27)
/* 8134CAD4 0001AED4  80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134CAD8 0001AED8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CADC 0001AEDC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134CAE0 0001AEE0  80 72 00 00 */	lwz r3, 0x0(r18)
/* 8134CAE4 0001AEE4  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134CAE8 0001AEE8  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134CAEC 0001AEEC  48 20 EB 8D */	bl fn_8155B678
/* 8134CAF0 0001AEF0  39 61 01 10 */	addi r11, r1, 0x110
/* 8134CAF4 0001AEF4  48 2A C9 E9 */	bl _restgpr_15
/* 8134CAF8 0001AEF8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8134CAFC 0001AEFC  7C 08 03 A6 */	mtlr r0
/* 8134CB00 0001AF00  38 21 01 10 */	addi r1, r1, 0x110
/* 8134CB04 0001AF04  4E 80 00 20 */	blr
.endfn iplNandSD_8134C838

# .text:0x471C | 0x8134CB08 | size: 0x260
# ipl::NandSDWorker::do_get_nand_save_size()
.fn do_get_nand_save_size__Q23ipl12NandSDWorkerFv, global
/* 8134CB08 0001AF08  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134CB0C 0001AF0C  7C 08 02 A6 */	mflr r0
/* 8134CB10 0001AF10  90 01 00 64 */	stw r0, 0x64(r1)
/* 8134CB14 0001AF14  39 61 00 60 */	addi r11, r1, 0x60
/* 8134CB18 0001AF18  48 2A C9 AD */	bl _savegpr_28
/* 8134CB1C 0001AF1C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134CB20 0001AF20  3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8134CB24 0001AF24  7C 7D 1B 78 */	mr r29, r3
/* 8134CB28 0001AF28  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CB2C 0001AF2C  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CB30 0001AF30  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134CB34 0001AF34  3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 8134CB38 0001AF38  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134CB3C 0001AF3C  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134CB40 0001AF40  48 00 60 75 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134CB44 0001AF44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CB48 0001AF48  7C 7F 1B 78 */	mr r31, r3
/* 8134CB4C 0001AF4C  41 82 00 14 */	beq .L_8134CB60
/* 8134CB50 0001AF50  3C 63 00 01 */	addis r3, r3, 0x1
/* 8134CB54 0001AF54  80 03 F0 A8 */	lwz r0, -0xf58(r3)
/* 8134CB58 0001AF58  2C 00 FF FF */	cmpwi r0, -0x1
/* 8134CB5C 0001AF5C  40 82 01 E8 */	bne .L_8134CD44
.L_8134CB60:
/* 8134CB60 0001AF60  38 00 00 00 */	li r0, 0x0
/* 8134CB64 0001AF64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CB68 0001AF68  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134CB6C 0001AF6C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CB70 0001AF70  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134CB74 0001AF74  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134CB78 0001AF78  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134CB7C 0001AF7C  4B FF C7 81 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134CB80 0001AF80  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CB84 0001AF84  41 82 00 34 */	beq .L_8134CBB8
/* 8134CB88 0001AF88  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CB8C 0001AF8C  38 00 FF FF */	li r0, -0x1
/* 8134CB90 0001AF90  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CB94 0001AF94  38 BE 01 32 */	addi r5, r30, 0x132
/* 8134CB98 0001AF98  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CB9C 0001AF9C  38 80 00 40 */	li r4, 0x40
/* 8134CBA0 0001AFA0  80 E6 EA 4C */	lwz r7, -0x15b4(r6)
/* 8134CBA4 0001AFA4  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CBA8 0001AFA8  7C E7 00 38 */	and r7, r7, r0
/* 8134CBAC 0001AFAC  4C C6 31 82 */	crclr cr1eq
/* 8134CBB0 0001AFB0  48 2B 3D F9 */	bl fn_816009A8
/* 8134CBB4 0001AFB4  48 00 00 30 */	b .L_8134CBE4
.L_8134CBB8:
/* 8134CBB8 0001AFB8  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CBBC 0001AFBC  38 00 FF FF */	li r0, -0x1
/* 8134CBC0 0001AFC0  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CBC4 0001AFC4  38 BE 01 1C */	addi r5, r30, 0x11c
/* 8134CBC8 0001AFC8  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CBCC 0001AFCC  38 80 00 40 */	li r4, 0x40
/* 8134CBD0 0001AFD0  80 E6 EA 4C */	lwz r7, -0x15b4(r6)
/* 8134CBD4 0001AFD4  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CBD8 0001AFD8  7C E7 00 38 */	and r7, r7, r0
/* 8134CBDC 0001AFDC  4C C6 31 82 */	crclr cr1eq
/* 8134CBE0 0001AFE0  48 2B 3D C9 */	bl fn_816009A8
.L_8134CBE4:
/* 8134CBE4 0001AFE4  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CBE8 0001AFE8  38 81 00 0C */	addi r4, r1, 0xc
/* 8134CBEC 0001AFEC  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134CBF0 0001AFF0  48 01 39 2D */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134CBF4 0001AFF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CBF8 0001AFF8  41 82 00 2C */	beq .L_8134CC24
/* 8134CBFC 0001AFFC  7C 65 1B 78 */	mr r5, r3
/* 8134CC00 0001B000  38 7E 0C D3 */	addi r3, r30, 0xcd3
/* 8134CC04 0001B004  38 81 00 10 */	addi r4, r1, 0x10
/* 8134CC08 0001B008  4C C6 31 82 */	crclr cr1eq
/* 8134CC0C 0001B00C  48 1E 1A 95 */	bl OSReport
/* 8134CC10 0001B010  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CC14 0001B014  38 00 FF FE */	li r0, -0x2
/* 8134CC18 0001B018  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CC1C 0001B01C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134CC20 0001B020  48 00 01 30 */	b .L_8134CD50
.L_8134CC24:
/* 8134CC24 0001B024  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CC28 0001B028  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134CC2C 0001B02C  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134CC30 0001B030  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134CC34 0001B034  4B FF C6 C9 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134CC38 0001B038  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CC3C 0001B03C  41 82 00 88 */	beq .L_8134CCC4
/* 8134CC40 0001B040  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CC44 0001B044  38 00 FF FF */	li r0, -0x1
/* 8134CC48 0001B048  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CC4C 0001B04C  38 BE 01 5C */	addi r5, r30, 0x15c
/* 8134CC50 0001B050  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CC54 0001B054  38 80 00 40 */	li r4, 0x40
/* 8134CC58 0001B058  80 E6 EA 4C */	lwz r7, -0x15b4(r6)
/* 8134CC5C 0001B05C  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CC60 0001B060  7C E7 00 38 */	and r7, r7, r0
/* 8134CC64 0001B064  4C C6 31 82 */	crclr cr1eq
/* 8134CC68 0001B068  48 2B 3D 41 */	bl fn_816009A8
/* 8134CC6C 0001B06C  7F A3 EB 78 */	mr r3, r29
/* 8134CC70 0001B070  38 81 00 10 */	addi r4, r1, 0x10
/* 8134CC74 0001B074  48 00 6E 29 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134CC78 0001B078  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CC7C 0001B07C  7C 7C 1B 78 */	mr r28, r3
/* 8134CC80 0001B080  40 81 00 1C */	ble .L_8134CC9C
/* 8134CC84 0001B084  38 03 3F FF */	addi r0, r3, 0x3fff
/* 8134CC88 0001B088  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134CC8C 0001B08C  54 00 93 BE */	srwi r0, r0, 14
/* 8134CC90 0001B090  7C 03 02 14 */	add r0, r3, r0
/* 8134CC94 0001B094  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CC98 0001B098  48 00 00 2C */	b .L_8134CCC4
.L_8134CC9C:
/* 8134CC9C 0001B09C  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134CCA0 0001B0A0  41 82 00 24 */	beq .L_8134CCC4
/* 8134CCA4 0001B0A4  7F 84 E3 78 */	mr r4, r28
/* 8134CCA8 0001B0A8  38 7E 0D 88 */	addi r3, r30, 0xd88
/* 8134CCAC 0001B0AC  4C C6 31 82 */	crclr cr1eq
/* 8134CCB0 0001B0B0  48 1E 19 F1 */	bl OSReport
/* 8134CCB4 0001B0B4  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CCB8 0001B0B8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CCBC 0001B0BC  93 83 EA 24 */	stw r28, -0x15dc(r3)
/* 8134CCC0 0001B0C0  48 00 00 90 */	b .L_8134CD50
.L_8134CCC4:
/* 8134CCC4 0001B0C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CCC8 0001B0C8  38 7E 0D B9 */	addi r3, r30, 0xdb9
/* 8134CCCC 0001B0CC  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134CCD0 0001B0D0  38 81 00 10 */	addi r4, r1, 0x10
/* 8134CCD4 0001B0D4  54 00 70 22 */	slwi r0, r0, 14
/* 8134CCD8 0001B0D8  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134CCDC 0001B0DC  90 05 EA 24 */	stw r0, -0x15dc(r5)
/* 8134CCE0 0001B0E0  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134CCE4 0001B0E4  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 8134CCE8 0001B0E8  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134CCEC 0001B0EC  80 A5 EA 24 */	lwz r5, -0x15dc(r5)
/* 8134CCF0 0001B0F0  4C C6 31 82 */	crclr cr1eq
/* 8134CCF4 0001B0F4  48 1E 19 AD */	bl OSReport
/* 8134CCF8 0001B0F8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134CCFC 0001B0FC  41 82 00 1C */	beq .L_8134CD18
/* 8134CD00 0001B100  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CD04 0001B104  3C 7F 00 01 */	addis r3, r31, 0x1
/* 8134CD08 0001B108  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134CD0C 0001B10C  80 04 EA 24 */	lwz r0, -0x15dc(r4)
/* 8134CD10 0001B110  90 03 F0 A8 */	stw r0, -0xf58(r3)
/* 8134CD14 0001B114  48 00 00 3C */	b .L_8134CD50
.L_8134CD18:
/* 8134CD18 0001B118  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134CD1C 0001B11C  7F A3 EB 78 */	mr r3, r29
/* 8134CD20 0001B120  38 E0 00 00 */	li r7, 0x0
/* 8134CD24 0001B124  3D 04 00 04 */	addis r8, r4, 0x4
/* 8134CD28 0001B128  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CD2C 0001B12C  80 A8 EA 48 */	lwz r5, -0x15b8(r8)
/* 8134CD30 0001B130  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 8134CD34 0001B134  80 C8 EA 4C */	lwz r6, -0x15b4(r8)
/* 8134CD38 0001B138  81 08 EA 24 */	lwz r8, -0x15dc(r8)
/* 8134CD3C 0001B13C  48 00 5B BD */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
/* 8134CD40 0001B140  48 00 00 10 */	b .L_8134CD50
.L_8134CD44:
/* 8134CD44 0001B144  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134CD48 0001B148  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CD4C 0001B14C  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134CD50:
/* 8134CD50 0001B150  39 61 00 60 */	addi r11, r1, 0x60
/* 8134CD54 0001B154  48 2A C7 BD */	bl _restgpr_28
/* 8134CD58 0001B158  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134CD5C 0001B15C  7C 08 03 A6 */	mtlr r0
/* 8134CD60 0001B160  38 21 00 60 */	addi r1, r1, 0x60
/* 8134CD64 0001B164  4E 80 00 20 */	blr
.endfn do_get_nand_save_size__Q23ipl12NandSDWorkerFv

# .text:0x497C | 0x8134CD68 | size: 0x1F4
# ipl::NandSDWorker::do_get_nand_app_size()
.fn do_get_nand_app_size__Q23ipl12NandSDWorkerFv, global
/* 8134CD68 0001B168  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134CD6C 0001B16C  7C 08 02 A6 */	mflr r0
/* 8134CD70 0001B170  90 01 00 64 */	stw r0, 0x64(r1)
/* 8134CD74 0001B174  39 61 00 60 */	addi r11, r1, 0x60
/* 8134CD78 0001B178  48 2A C7 4D */	bl _savegpr_28
/* 8134CD7C 0001B17C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134CD80 0001B180  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134CD84 0001B184  7C 7E 1B 78 */	mr r30, r3
/* 8134CD88 0001B188  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CD8C 0001B18C  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CD90 0001B190  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134CD94 0001B194  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134CD98 0001B198  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134CD9C 0001B19C  38 84 E6 78 */	subi r4, r4, 0x1988
/* 8134CDA0 0001B1A0  48 00 60 59 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134CDA4 0001B1A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CDA8 0001B1A8  7C 7F 1B 78 */	mr r31, r3
/* 8134CDAC 0001B1AC  41 82 00 10 */	beq .L_8134CDBC
/* 8134CDB0 0001B1B0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8134CDB4 0001B1B4  2C 00 FF FF */	cmpwi r0, -0x1
/* 8134CDB8 0001B1B8  40 82 01 80 */	bne .L_8134CF38
.L_8134CDBC:
/* 8134CDBC 0001B1BC  38 00 00 00 */	li r0, 0x0
/* 8134CDC0 0001B1C0  3B A0 FF FF */	li r29, -0x1
/* 8134CDC4 0001B1C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CDC8 0001B1C8  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CDCC 0001B1CC  38 BC 01 43 */	addi r5, r28, 0x143
/* 8134CDD0 0001B1D0  38 80 00 40 */	li r4, 0x40
/* 8134CDD4 0001B1D4  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134CDD8 0001B1D8  80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8134CDDC 0001B1DC  3C C6 00 04 */	addis r6, r6, 0x4
/* 8134CDE0 0001B1E0  80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134CDE4 0001B1E4  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CDE8 0001B1E8  7C 07 E8 38 */	and r7, r0, r29
/* 8134CDEC 0001B1EC  4C C6 31 82 */	crclr cr1eq
/* 8134CDF0 0001B1F0  48 2B 3B B9 */	bl fn_816009A8
/* 8134CDF4 0001B1F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CDF8 0001B1F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8134CDFC 0001B1FC  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134CE00 0001B200  48 01 37 1D */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8134CE04 0001B204  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CE08 0001B208  41 82 00 2C */	beq .L_8134CE34
/* 8134CE0C 0001B20C  7C 65 1B 78 */	mr r5, r3
/* 8134CE10 0001B210  38 7C 0C D3 */	addi r3, r28, 0xcd3
/* 8134CE14 0001B214  38 81 00 10 */	addi r4, r1, 0x10
/* 8134CE18 0001B218  4C C6 31 82 */	crclr cr1eq
/* 8134CE1C 0001B21C  48 1E 18 85 */	bl OSReport
/* 8134CE20 0001B220  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CE24 0001B224  38 00 FF FE */	li r0, -0x2
/* 8134CE28 0001B228  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CE2C 0001B22C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134CE30 0001B230  48 00 01 14 */	b .L_8134CF44
.L_8134CE34:
/* 8134CE34 0001B234  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CE38 0001B238  38 61 00 10 */	addi r3, r1, 0x10
/* 8134CE3C 0001B23C  38 BC 01 5C */	addi r5, r28, 0x15c
/* 8134CE40 0001B240  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134CE44 0001B244  38 80 00 40 */	li r4, 0x40
/* 8134CE48 0001B248  80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134CE4C 0001B24C  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134CE50 0001B250  7C 07 E8 38 */	and r7, r0, r29
/* 8134CE54 0001B254  4C C6 31 82 */	crclr cr1eq
/* 8134CE58 0001B258  48 2B 3B 51 */	bl fn_816009A8
/* 8134CE5C 0001B25C  7F C3 F3 78 */	mr r3, r30
/* 8134CE60 0001B260  38 81 00 10 */	addi r4, r1, 0x10
/* 8134CE64 0001B264  48 00 6C 39 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134CE68 0001B268  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CE6C 0001B26C  7C 7D 1B 78 */	mr r29, r3
/* 8134CE70 0001B270  40 81 00 1C */	ble .L_8134CE8C
/* 8134CE74 0001B274  38 03 3F FF */	addi r0, r3, 0x3fff
/* 8134CE78 0001B278  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134CE7C 0001B27C  54 00 93 BE */	srwi r0, r0, 14
/* 8134CE80 0001B280  7C 03 02 14 */	add r0, r3, r0
/* 8134CE84 0001B284  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134CE88 0001B288  48 00 00 2C */	b .L_8134CEB4
.L_8134CE8C:
/* 8134CE8C 0001B28C  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134CE90 0001B290  41 82 00 24 */	beq .L_8134CEB4
/* 8134CE94 0001B294  7F A4 EB 78 */	mr r4, r29
/* 8134CE98 0001B298  38 7C 0D 88 */	addi r3, r28, 0xd88
/* 8134CE9C 0001B29C  4C C6 31 82 */	crclr cr1eq
/* 8134CEA0 0001B2A0  48 1E 18 01 */	bl OSReport
/* 8134CEA4 0001B2A4  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CEA8 0001B2A8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CEAC 0001B2AC  93 A3 EA 24 */	stw r29, -0x15dc(r3)
/* 8134CEB0 0001B2B0  48 00 00 94 */	b .L_8134CF44
.L_8134CEB4:
/* 8134CEB4 0001B2B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CEB8 0001B2B8  38 7C 0D F1 */	addi r3, r28, 0xdf1
/* 8134CEBC 0001B2BC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CEC0 0001B2C0  54 00 70 22 */	slwi r0, r0, 14
/* 8134CEC4 0001B2C4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134CEC8 0001B2C8  90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134CECC 0001B2CC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CED0 0001B2D0  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134CED4 0001B2D4  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134CED8 0001B2D8  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134CEDC 0001B2DC  80 E4 EA 24 */	lwz r7, -0x15dc(r4)
/* 8134CEE0 0001B2E0  4C C6 31 82 */	crclr cr1eq
/* 8134CEE4 0001B2E4  48 1E 17 BD */	bl OSReport
/* 8134CEE8 0001B2E8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134CEEC 0001B2EC  41 82 00 18 */	beq .L_8134CF04
/* 8134CEF0 0001B2F0  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CEF4 0001B2F4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CEF8 0001B2F8  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134CEFC 0001B2FC  90 1F 00 08 */	stw r0, 0x8(r31)
/* 8134CF00 0001B300  48 00 00 44 */	b .L_8134CF44
.L_8134CF04:
/* 8134CF04 0001B304  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134CF08 0001B308  7F C3 F3 78 */	mr r3, r30
/* 8134CF0C 0001B30C  38 E0 00 00 */	li r7, 0x0
/* 8134CF10 0001B310  39 00 00 00 */	li r8, 0x0
/* 8134CF14 0001B314  3D 44 00 04 */	addis r10, r4, 0x4
/* 8134CF18 0001B318  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134CF1C 0001B31C  80 AA EA 48 */	lwz r5, -0x15b8(r10)
/* 8134CF20 0001B320  39 20 00 00 */	li r9, 0x0
/* 8134CF24 0001B324  80 CA EA 4C */	lwz r6, -0x15b4(r10)
/* 8134CF28 0001B328  38 84 E6 78 */	subi r4, r4, 0x1988
/* 8134CF2C 0001B32C  81 4A EA 24 */	lwz r10, -0x15dc(r10)
/* 8134CF30 0001B330  48 00 5D D9 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
/* 8134CF34 0001B334  48 00 00 10 */	b .L_8134CF44
.L_8134CF38:
/* 8134CF38 0001B338  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134CF3C 0001B33C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134CF40 0001B340  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134CF44:
/* 8134CF44 0001B344  39 61 00 60 */	addi r11, r1, 0x60
/* 8134CF48 0001B348  48 2A C5 C9 */	bl _restgpr_28
/* 8134CF4C 0001B34C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8134CF50 0001B350  7C 08 03 A6 */	mtlr r0
/* 8134CF54 0001B354  38 21 00 60 */	addi r1, r1, 0x60
/* 8134CF58 0001B358  4E 80 00 20 */	blr
.endfn do_get_nand_app_size__Q23ipl12NandSDWorkerFv

# .text:0x4B70 | 0x8134CF5C | size: 0x140
# ipl::NandSDWorker::get_sd_save_size(unsigned long)
.fn get_sd_save_size__Q23ipl12NandSDWorkerFUl, global
/* 8134CF5C 0001B35C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8134CF60 0001B360  7C 08 02 A6 */	mflr r0
/* 8134CF64 0001B364  90 01 00 74 */	stw r0, 0x74(r1)
/* 8134CF68 0001B368  39 61 00 70 */	addi r11, r1, 0x70
/* 8134CF6C 0001B36C  48 2A C5 5D */	bl _savegpr_29
/* 8134CF70 0001B370  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134CF74 0001B374  7C 9E 23 78 */	mr r30, r4
/* 8134CF78 0001B378  7C 7D 1B 78 */	mr r29, r3
/* 8134CF7C 0001B37C  38 A0 00 00 */	li r5, 0x0
/* 8134CF80 0001B380  3C 86 00 02 */	addis r4, r6, 0x2
/* 8134CF84 0001B384  7F C6 F3 78 */	mr r6, r30
/* 8134CF88 0001B388  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134CF8C 0001B38C  48 00 5C 29 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134CF90 0001B390  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CF94 0001B394  7C 7F 1B 78 */	mr r31, r3
/* 8134CF98 0001B398  41 82 00 14 */	beq .L_8134CFAC
/* 8134CF9C 0001B39C  3C 63 00 01 */	addis r3, r3, 0x1
/* 8134CFA0 0001B3A0  80 03 F0 A8 */	lwz r0, -0xf58(r3)
/* 8134CFA4 0001B3A4  2C 00 FF FF */	cmpwi r0, -0x1
/* 8134CFA8 0001B3A8  40 82 00 D4 */	bne .L_8134D07C
.L_8134CFAC:
/* 8134CFAC 0001B3AC  7F C4 F3 78 */	mr r4, r30
/* 8134CFB0 0001B3B0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8134CFB4 0001B3B4  38 60 00 00 */	li r3, 0x0
/* 8134CFB8 0001B3B8  4B FF C3 F1 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134CFBC 0001B3BC  38 61 00 20 */	addi r3, r1, 0x20
/* 8134CFC0 0001B3C0  38 81 00 0C */	addi r4, r1, 0xc
/* 8134CFC4 0001B3C4  48 29 B1 61 */	bl fn_815E8124
/* 8134CFC8 0001B3C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CFCC 0001B3CC  40 82 00 8C */	bne .L_8134D058
/* 8134CFD0 0001B3D0  40 82 00 7C */	bne .L_8134D04C
/* 8134CFD4 0001B3D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134CFD8 0001B3D8  28 00 F0 C0 */	cmplwi r0, 0xf0c0
/* 8134CFDC 0001B3DC  40 81 00 70 */	ble .L_8134D04C
/* 8134CFE0 0001B3E0  88 81 00 1C */	lbz r4, 0x1c(r1)
/* 8134CFE4 0001B3E4  7F A3 EB 78 */	mr r3, r29
/* 8134CFE8 0001B3E8  48 00 71 21 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134CFEC 0001B3EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134CFF0 0001B3F0  41 82 00 5C */	beq .L_8134D04C
/* 8134CFF4 0001B3F4  3C 60 81 63 */	lis r3, lbl_816368A8@ha
/* 8134CFF8 0001B3F8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134CFFC 0001B3FC  38 63 68 A8 */	addi r3, r3, lbl_816368A8@l
/* 8134D000 0001B400  38 81 00 20 */	addi r4, r1, 0x20
/* 8134D004 0001B404  4C C6 31 82 */	crclr cr1eq
/* 8134D008 0001B408  48 1E 16 99 */	bl OSReport
/* 8134D00C 0001B40C  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8134D010 0001B410  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134D014 0001B414  91 01 00 08 */	stw r8, 0x8(r1)
/* 8134D018 0001B418  41 82 00 10 */	beq .L_8134D028
/* 8134D01C 0001B41C  3C 7F 00 01 */	addis r3, r31, 0x1
/* 8134D020 0001B420  91 03 F0 A8 */	stw r8, -0xf58(r3)
/* 8134D024 0001B424  48 00 00 5C */	b .L_8134D080
.L_8134D028:
/* 8134D028 0001B428  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134D02C 0001B42C  7F A3 EB 78 */	mr r3, r29
/* 8134D030 0001B430  7F C6 F3 78 */	mr r6, r30
/* 8134D034 0001B434  38 A0 00 00 */	li r5, 0x0
/* 8134D038 0001B438  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D03C 0001B43C  38 E0 00 00 */	li r7, 0x0
/* 8134D040 0001B440  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134D044 0001B444  48 00 58 B5 */	bl add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel
/* 8134D048 0001B448  48 00 00 38 */	b .L_8134D080
.L_8134D04C:
/* 8134D04C 0001B44C  38 00 FF FE */	li r0, -0x2
/* 8134D050 0001B450  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134D054 0001B454  48 00 00 2C */	b .L_8134D080
.L_8134D058:
/* 8134D058 0001B458  3C 60 81 63 */	lis r3, lbl_816368C9@ha
/* 8134D05C 0001B45C  38 63 68 C9 */	addi r3, r3, lbl_816368C9@l
/* 8134D060 0001B460  4C C6 31 82 */	crclr cr1eq
/* 8134D064 0001B464  48 1E 16 3D */	bl OSReport
/* 8134D068 0001B468  7F A3 EB 78 */	mr r3, r29
/* 8134D06C 0001B46C  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D070 0001B470  38 80 FF FF */	li r4, -0x1
/* 8134D074 0001B474  48 00 6D 8D */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134D078 0001B478  48 00 00 08 */	b .L_8134D080
.L_8134D07C:
/* 8134D07C 0001B47C  90 01 00 08 */	stw r0, 0x8(r1)
.L_8134D080:
/* 8134D080 0001B480  39 61 00 70 */	addi r11, r1, 0x70
/* 8134D084 0001B484  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134D088 0001B488  48 2A C4 8D */	bl _restgpr_29
/* 8134D08C 0001B48C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8134D090 0001B490  7C 08 03 A6 */	mtlr r0
/* 8134D094 0001B494  38 21 00 70 */	addi r1, r1, 0x70
/* 8134D098 0001B498  4E 80 00 20 */	blr
.endfn get_sd_save_size__Q23ipl12NandSDWorkerFUl

# .text:0x4CB0 | 0x8134D09C | size: 0x140
# ipl::NandSDWorker::get_sd_app_size(unsigned long)
.fn get_sd_app_size__Q23ipl12NandSDWorkerFUl, global
/* 8134D09C 0001B49C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8134D0A0 0001B4A0  7C 08 02 A6 */	mflr r0
/* 8134D0A4 0001B4A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8134D0A8 0001B4A8  39 61 00 70 */	addi r11, r1, 0x70
/* 8134D0AC 0001B4AC  48 2A C4 1D */	bl _savegpr_29
/* 8134D0B0 0001B4B0  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134D0B4 0001B4B4  7C 9E 23 78 */	mr r30, r4
/* 8134D0B8 0001B4B8  7C 7D 1B 78 */	mr r29, r3
/* 8134D0BC 0001B4BC  38 A0 00 00 */	li r5, 0x0
/* 8134D0C0 0001B4C0  3C 86 00 02 */	addis r4, r6, 0x2
/* 8134D0C4 0001B4C4  7F C6 F3 78 */	mr r6, r30
/* 8134D0C8 0001B4C8  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134D0CC 0001B4CC  48 00 5D 2D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134D0D0 0001B4D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D0D4 0001B4D4  7C 7F 1B 78 */	mr r31, r3
/* 8134D0D8 0001B4D8  41 82 00 10 */	beq .L_8134D0E8
/* 8134D0DC 0001B4DC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8134D0E0 0001B4E0  2C 00 FF FF */	cmpwi r0, -0x1
/* 8134D0E4 0001B4E4  40 82 00 D8 */	bne .L_8134D1BC
.L_8134D0E8:
/* 8134D0E8 0001B4E8  7F C4 F3 78 */	mr r4, r30
/* 8134D0EC 0001B4EC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8134D0F0 0001B4F0  38 60 00 00 */	li r3, 0x0
/* 8134D0F4 0001B4F4  4B FF C3 41 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134D0F8 0001B4F8  38 61 00 20 */	addi r3, r1, 0x20
/* 8134D0FC 0001B4FC  38 81 00 0C */	addi r4, r1, 0xc
/* 8134D100 0001B500  48 29 B0 25 */	bl fn_815E8124
/* 8134D104 0001B504  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D108 0001B508  40 82 00 90 */	bne .L_8134D198
/* 8134D10C 0001B50C  40 82 00 80 */	bne .L_8134D18C
/* 8134D110 0001B510  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134D114 0001B514  28 00 06 40 */	cmplwi r0, 0x640
/* 8134D118 0001B518  40 81 00 74 */	ble .L_8134D18C
/* 8134D11C 0001B51C  88 81 00 1C */	lbz r4, 0x1c(r1)
/* 8134D120 0001B520  7F A3 EB 78 */	mr r3, r29
/* 8134D124 0001B524  48 00 6F E5 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134D128 0001B528  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D12C 0001B52C  41 82 00 60 */	beq .L_8134D18C
/* 8134D130 0001B530  3C 60 81 63 */	lis r3, lbl_816368A8@ha
/* 8134D134 0001B534  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134D138 0001B538  38 63 68 A8 */	addi r3, r3, lbl_816368A8@l
/* 8134D13C 0001B53C  38 81 00 20 */	addi r4, r1, 0x20
/* 8134D140 0001B540  4C C6 31 82 */	crclr cr1eq
/* 8134D144 0001B544  48 1E 15 5D */	bl OSReport
/* 8134D148 0001B548  81 41 00 0C */	lwz r10, 0xc(r1)
/* 8134D14C 0001B54C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8134D150 0001B550  91 41 00 08 */	stw r10, 0x8(r1)
/* 8134D154 0001B554  41 82 00 0C */	beq .L_8134D160
/* 8134D158 0001B558  91 5F 00 08 */	stw r10, 0x8(r31)
/* 8134D15C 0001B55C  48 00 00 64 */	b .L_8134D1C0
.L_8134D160:
/* 8134D160 0001B560  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134D164 0001B564  7F A3 EB 78 */	mr r3, r29
/* 8134D168 0001B568  7F C6 F3 78 */	mr r6, r30
/* 8134D16C 0001B56C  38 A0 00 00 */	li r5, 0x0
/* 8134D170 0001B570  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D174 0001B574  38 E0 00 00 */	li r7, 0x0
/* 8134D178 0001B578  39 00 00 00 */	li r8, 0x0
/* 8134D17C 0001B57C  39 20 00 00 */	li r9, 0x0
/* 8134D180 0001B580  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134D184 0001B584  48 00 5B 85 */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
/* 8134D188 0001B588  48 00 00 38 */	b .L_8134D1C0
.L_8134D18C:
/* 8134D18C 0001B58C  38 00 FF FE */	li r0, -0x2
/* 8134D190 0001B590  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134D194 0001B594  48 00 00 2C */	b .L_8134D1C0
.L_8134D198:
/* 8134D198 0001B598  3C 60 81 63 */	lis r3, lbl_816368C9@ha
/* 8134D19C 0001B59C  38 63 68 C9 */	addi r3, r3, lbl_816368C9@l
/* 8134D1A0 0001B5A0  4C C6 31 82 */	crclr cr1eq
/* 8134D1A4 0001B5A4  48 1E 14 FD */	bl OSReport
/* 8134D1A8 0001B5A8  7F A3 EB 78 */	mr r3, r29
/* 8134D1AC 0001B5AC  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D1B0 0001B5B0  38 80 FF FF */	li r4, -0x1
/* 8134D1B4 0001B5B4  48 00 6C 4D */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134D1B8 0001B5B8  48 00 00 08 */	b .L_8134D1C0
.L_8134D1BC:
/* 8134D1BC 0001B5BC  90 01 00 08 */	stw r0, 0x8(r1)
.L_8134D1C0:
/* 8134D1C0 0001B5C0  39 61 00 70 */	addi r11, r1, 0x70
/* 8134D1C4 0001B5C4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134D1C8 0001B5C8  48 2A C3 4D */	bl _restgpr_29
/* 8134D1CC 0001B5CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8134D1D0 0001B5D0  7C 08 03 A6 */	mtlr r0
/* 8134D1D4 0001B5D4  38 21 00 70 */	addi r1, r1, 0x70
/* 8134D1D8 0001B5D8  4E 80 00 20 */	blr
.endfn get_sd_app_size__Q23ipl12NandSDWorkerFUl

# .text:0x4DF0 | 0x8134D1DC | size: 0xD4
# ipl::NandSDWorker::do_delete_sd_save()
.fn do_delete_sd_save__Q23ipl12NandSDWorkerFv, global
/* 8134D1DC 0001B5DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8134D1E0 0001B5E0  7C 08 02 A6 */	mflr r0
/* 8134D1E4 0001B5E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8134D1E8 0001B5E8  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D1EC 0001B5EC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8134D1F0 0001B5F0  7C 7F 1B 78 */	mr r31, r3
/* 8134D1F4 0001B5F4  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134D1F8 0001B5F8  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D1FC 0001B5FC  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134D200 0001B600  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134D204 0001B604  4B FF C1 A5 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134D208 0001B608  38 61 00 08 */	addi r3, r1, 0x8
/* 8134D20C 0001B60C  48 29 B1 A5 */	bl fn_815E83B0
/* 8134D210 0001B610  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D214 0001B614  40 82 00 60 */	bne .L_8134D274
/* 8134D218 0001B618  3C 60 81 63 */	lis r3, lbl_816368E8@ha
/* 8134D21C 0001B61C  38 81 00 08 */	addi r4, r1, 0x8
/* 8134D220 0001B620  38 63 68 E8 */	addi r3, r3, lbl_816368E8@l
/* 8134D224 0001B624  4C C6 31 82 */	crclr cr1eq
/* 8134D228 0001B628  48 1E 14 79 */	bl OSReport
/* 8134D22C 0001B62C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D230 0001B630  7F E3 FB 78 */	mr r3, r31
/* 8134D234 0001B634  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134D238 0001B638  80 85 EA 30 */	lwz r4, -0x15d0(r5)
/* 8134D23C 0001B63C  38 04 FF FF */	subi r0, r4, 0x1
/* 8134D240 0001B640  90 05 EA 30 */	stw r0, -0x15d0(r5)
/* 8134D244 0001B644  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D248 0001B648  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134D24C 0001B64C  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D250 0001B650  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134D254 0001B654  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134D258 0001B658  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134D25C 0001B65C  48 00 59 D5 */	bl delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134D260 0001B660  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134D264 0001B664  38 00 00 00 */	li r0, 0x0
/* 8134D268 0001B668  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D26C 0001B66C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D270 0001B670  48 00 00 2C */	b .L_8134D29C
.L_8134D274:
/* 8134D274 0001B674  3C 60 81 63 */	lis r3, lbl_81636906@ha
/* 8134D278 0001B678  38 63 69 06 */	addi r3, r3, lbl_81636906@l
/* 8134D27C 0001B67C  4C C6 31 82 */	crclr cr1eq
/* 8134D280 0001B680  48 1E 14 21 */	bl OSReport
/* 8134D284 0001B684  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8134D288 0001B688  7F E3 FB 78 */	mr r3, r31
/* 8134D28C 0001B68C  38 80 FF FF */	li r4, -0x1
/* 8134D290 0001B690  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134D294 0001B694  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134D298 0001B698  48 00 6B 69 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
.L_8134D29C:
/* 8134D29C 0001B69C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8134D2A0 0001B6A0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8134D2A4 0001B6A4  7C 08 03 A6 */	mtlr r0
/* 8134D2A8 0001B6A8  38 21 00 50 */	addi r1, r1, 0x50
/* 8134D2AC 0001B6AC  4E 80 00 20 */	blr
.endfn do_delete_sd_save__Q23ipl12NandSDWorkerFv

# .text:0x4EC4 | 0x8134D2B0 | size: 0xD4
# ipl::NandSDWorker::do_delete_sd_app()
.fn do_delete_sd_app__Q23ipl12NandSDWorkerFv, global
/* 8134D2B0 0001B6B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8134D2B4 0001B6B4  7C 08 02 A6 */	mflr r0
/* 8134D2B8 0001B6B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8134D2BC 0001B6BC  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134D2C0 0001B6C0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8134D2C4 0001B6C4  7C 7F 1B 78 */	mr r31, r3
/* 8134D2C8 0001B6C8  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8134D2CC 0001B6CC  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D2D0 0001B6D0  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134D2D4 0001B6D4  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134D2D8 0001B6D8  4B FF C1 5D */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8134D2DC 0001B6DC  38 61 00 08 */	addi r3, r1, 0x8
/* 8134D2E0 0001B6E0  48 29 B0 D1 */	bl fn_815E83B0
/* 8134D2E4 0001B6E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D2E8 0001B6E8  40 82 00 60 */	bne .L_8134D348
/* 8134D2EC 0001B6EC  3C 60 81 63 */	lis r3, lbl_816368E8@ha
/* 8134D2F0 0001B6F0  38 81 00 08 */	addi r4, r1, 0x8
/* 8134D2F4 0001B6F4  38 63 68 E8 */	addi r3, r3, lbl_816368E8@l
/* 8134D2F8 0001B6F8  4C C6 31 82 */	crclr cr1eq
/* 8134D2FC 0001B6FC  48 1E 13 A5 */	bl OSReport
/* 8134D300 0001B700  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D304 0001B704  7F E3 FB 78 */	mr r3, r31
/* 8134D308 0001B708  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134D30C 0001B70C  80 85 EA 34 */	lwz r4, -0x15cc(r5)
/* 8134D310 0001B710  38 04 FF FF */	subi r0, r4, 0x1
/* 8134D314 0001B714  90 05 EA 34 */	stw r0, -0x15cc(r5)
/* 8134D318 0001B718  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8134D31C 0001B71C  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134D320 0001B720  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134D324 0001B724  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 8134D328 0001B728  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134D32C 0001B72C  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 8134D330 0001B730  48 00 5B 99 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 8134D334 0001B734  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134D338 0001B738  38 00 00 00 */	li r0, 0x0
/* 8134D33C 0001B73C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D340 0001B740  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D344 0001B744  48 00 00 2C */	b .L_8134D370
.L_8134D348:
/* 8134D348 0001B748  3C 60 81 63 */	lis r3, lbl_81636906@ha
/* 8134D34C 0001B74C  38 63 69 06 */	addi r3, r3, lbl_81636906@l
/* 8134D350 0001B750  4C C6 31 82 */	crclr cr1eq
/* 8134D354 0001B754  48 1E 13 4D */	bl OSReport
/* 8134D358 0001B758  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8134D35C 0001B75C  7F E3 FB 78 */	mr r3, r31
/* 8134D360 0001B760  38 80 FF FF */	li r4, -0x1
/* 8134D364 0001B764  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134D368 0001B768  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134D36C 0001B76C  48 00 6A 95 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
.L_8134D370:
/* 8134D370 0001B770  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8134D374 0001B774  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8134D378 0001B778  7C 08 03 A6 */	mtlr r0
/* 8134D37C 0001B77C  38 21 00 50 */	addi r1, r1, 0x50
/* 8134D380 0001B780  4E 80 00 20 */	blr
.endfn do_delete_sd_app__Q23ipl12NandSDWorkerFv

# .text:0x4F98 | 0x8134D384 | size: 0x2B8
# ipl::NandSDWorker::do_initialize_nand()
.fn do_initialize_nand__Q23ipl12NandSDWorkerFv, global
/* 8134D384 0001B784  94 21 FB 80 */	stwu r1, -0x480(r1)
/* 8134D388 0001B788  7C 08 02 A6 */	mflr r0
/* 8134D38C 0001B78C  90 01 04 84 */	stw r0, 0x484(r1)
/* 8134D390 0001B790  39 61 04 80 */	addi r11, r1, 0x480
/* 8134D394 0001B794  48 2A C1 31 */	bl _savegpr_28
/* 8134D398 0001B798  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134D39C 0001B79C  7C 7C 1B 78 */	mr r28, r3
/* 8134D3A0 0001B7A0  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134D3A4 0001B7A4  38 A0 00 00 */	li r5, 0x0
/* 8134D3A8 0001B7A8  38 9F 0E 9E */	addi r4, r31, 0xe9e
/* 8134D3AC 0001B7AC  38 C0 00 01 */	li r6, 0x1
/* 8134D3B0 0001B7B0  38 FF 00 90 */	addi r7, r31, 0x90
/* 8134D3B4 0001B7B4  39 00 00 05 */	li r8, 0x5
/* 8134D3B8 0001B7B8  48 00 61 ED */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134D3BC 0001B7BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D3C0 0001B7C0  41 82 00 1C */	beq .L_8134D3DC
/* 8134D3C4 0001B7C4  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D3C8 0001B7C8  41 82 00 14 */	beq .L_8134D3DC
/* 8134D3CC 0001B7CC  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D3D0 0001B7D0  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D3D4 0001B7D4  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D3D8 0001B7D8  48 00 02 4C */	b .L_8134D624
.L_8134D3DC:
/* 8134D3DC 0001B7DC  38 7F 0E A7 */	addi r3, r31, 0xea7
/* 8134D3E0 0001B7E0  4C C6 31 82 */	crclr cr1eq
/* 8134D3E4 0001B7E4  48 1E 12 BD */	bl OSReport
/* 8134D3E8 0001B7E8  7F 83 E3 78 */	mr r3, r28
/* 8134D3EC 0001B7EC  48 00 02 51 */	bl initialize_meta__Q23ipl12NandSDWorkerFv
/* 8134D3F0 0001B7F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D3F4 0001B7F4  41 82 00 1C */	beq .L_8134D410
/* 8134D3F8 0001B7F8  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D3FC 0001B7FC  41 82 00 14 */	beq .L_8134D410
/* 8134D400 0001B800  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D404 0001B804  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D408 0001B808  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D40C 0001B80C  48 00 02 18 */	b .L_8134D624
.L_8134D410:
/* 8134D410 0001B810  38 7F 0E DE */	addi r3, r31, 0xede
/* 8134D414 0001B814  4C C6 31 82 */	crclr cr1eq
/* 8134D418 0001B818  48 1E 12 89 */	bl OSReport
/* 8134D41C 0001B81C  7F 83 E3 78 */	mr r3, r28
/* 8134D420 0001B820  48 00 02 F1 */	bl delete_nand_disk_app_with_ticket__Q23ipl12NandSDWorkerFv
/* 8134D424 0001B824  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D428 0001B828  41 82 00 1C */	beq .L_8134D444
/* 8134D42C 0001B82C  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D430 0001B830  41 82 00 14 */	beq .L_8134D444
/* 8134D434 0001B834  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D438 0001B838  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D43C 0001B83C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D440 0001B840  48 00 01 E4 */	b .L_8134D624
.L_8134D444:
/* 8134D444 0001B844  7F 83 E3 78 */	mr r3, r28
/* 8134D448 0001B848  48 00 07 F9 */	bl delete_nand_titles__Q23ipl12NandSDWorkerFv
/* 8134D44C 0001B84C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D450 0001B850  41 82 00 1C */	beq .L_8134D46C
/* 8134D454 0001B854  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134D458 0001B858  41 82 00 14 */	beq .L_8134D46C
/* 8134D45C 0001B85C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134D460 0001B860  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134D464 0001B864  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134D468 0001B868  48 00 01 BC */	b .L_8134D624
.L_8134D46C:
/* 8134D46C 0001B86C  38 7F 0F 12 */	addi r3, r31, 0xf12
/* 8134D470 0001B870  48 01 2F 71 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134D474 0001B874  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D478 0001B878  7C 7E 1B 78 */	mr r30, r3
/* 8134D47C 0001B87C  41 82 00 30 */	beq .L_8134D4AC
/* 8134D480 0001B880  7F C4 F3 78 */	mr r4, r30
/* 8134D484 0001B884  38 7F 0F 1F */	addi r3, r31, 0xf1f
/* 8134D488 0001B888  4C C6 31 82 */	crclr cr1eq
/* 8134D48C 0001B88C  48 1E 12 15 */	bl OSReport
/* 8134D490 0001B890  2C 1E FF FC */	cmpwi r30, -0x4
/* 8134D494 0001B894  40 82 00 18 */	bne .L_8134D4AC
/* 8134D498 0001B898  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D49C 0001B89C  38 00 FF FB */	li r0, -0x5
/* 8134D4A0 0001B8A0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D4A4 0001B8A4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D4A8 0001B8A8  48 00 01 7C */	b .L_8134D624
.L_8134D4AC:
/* 8134D4AC 0001B8AC  38 7F 0F 59 */	addi r3, r31, 0xf59
/* 8134D4B0 0001B8B0  4C C6 31 82 */	crclr cr1eq
/* 8134D4B4 0001B8B4  48 1E 11 ED */	bl OSReport
/* 8134D4B8 0001B8B8  48 1E 33 CD */	bl OSDisableInterrupts
/* 8134D4BC 0001B8BC  7C 7E 1B 78 */	mr r30, r3
/* 8134D4C0 0001B8C0  38 61 00 08 */	addi r3, r1, 0x8
/* 8134D4C4 0001B8C4  38 80 00 00 */	li r4, 0x0
/* 8134D4C8 0001B8C8  38 A0 04 61 */	li r5, 0x461
/* 8134D4CC 0001B8CC  4B FE 2E 69 */	bl memset
/* 8134D4D0 0001B8D0  38 61 00 08 */	addi r3, r1, 0x8
/* 8134D4D4 0001B8D4  48 21 CE 29 */	bl fn_8156A2FC
/* 8134D4D8 0001B8D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D4DC 0001B8DC  41 82 00 28 */	beq .L_8134D504
/* 8134D4E0 0001B8E0  48 21 CA 31 */	bl fn_81569F10
/* 8134D4E4 0001B8E4  38 61 00 08 */	addi r3, r1, 0x8
/* 8134D4E8 0001B8E8  48 21 CE 21 */	bl fn_8156A308
/* 8134D4EC 0001B8EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D4F0 0001B8F0  40 82 00 20 */	bne .L_8134D510
/* 8134D4F4 0001B8F4  38 7F 0F 8A */	addi r3, r31, 0xf8a
/* 8134D4F8 0001B8F8  4C C6 31 82 */	crclr cr1eq
/* 8134D4FC 0001B8FC  48 1E 11 A5 */	bl OSReport
/* 8134D500 0001B900  48 00 00 10 */	b .L_8134D510
.L_8134D504:
/* 8134D504 0001B904  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 8134D508 0001B908  4C C6 31 82 */	crclr cr1eq
/* 8134D50C 0001B90C  48 1E 11 95 */	bl OSReport
.L_8134D510:
/* 8134D510 0001B910  38 60 00 00 */	li r3, 0x0
/* 8134D514 0001B914  48 21 D2 19 */	bl fn_8156A72C
/* 8134D518 0001B918  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D51C 0001B91C  40 82 00 10 */	bne .L_8134D52C
/* 8134D520 0001B920  38 7F 0F E6 */	addi r3, r31, 0xfe6
/* 8134D524 0001B924  4C C6 31 82 */	crclr cr1eq
/* 8134D528 0001B928  48 1E 11 79 */	bl OSReport
.L_8134D52C:
/* 8134D52C 0001B92C  38 60 00 00 */	li r3, 0x0
/* 8134D530 0001B930  48 21 D2 41 */	bl fn_8156A770
/* 8134D534 0001B934  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D538 0001B938  40 82 00 10 */	bne .L_8134D548
/* 8134D53C 0001B93C  38 7F 10 11 */	addi r3, r31, 0x1011
/* 8134D540 0001B940  4C C6 31 82 */	crclr cr1eq
/* 8134D544 0001B944  48 1E 11 5D */	bl OSReport
.L_8134D548:
/* 8134D548 0001B948  7F C3 F3 78 */	mr r3, r30
/* 8134D54C 0001B94C  48 1E 33 61 */	bl OSRestoreInterrupts
/* 8134D550 0001B950  48 21 C3 FD */	bl fn_8156994C
/* 8134D554 0001B954  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D558 0001B958  40 82 00 14 */	bne .L_8134D56C
/* 8134D55C 0001B95C  38 7F 10 3D */	addi r3, r31, 0x103d
/* 8134D560 0001B960  4C C6 31 82 */	crclr cr1eq
/* 8134D564 0001B964  48 1E 11 3D */	bl OSReport
/* 8134D568 0001B968  48 00 00 14 */	b .L_8134D57C
.L_8134D56C:
/* 8134D56C 0001B96C  7C 64 1B 78 */	mr r4, r3
/* 8134D570 0001B970  38 7F 10 68 */	addi r3, r31, 0x1068
/* 8134D574 0001B974  4C C6 31 82 */	crclr cr1eq
/* 8134D578 0001B978  48 1E 11 29 */	bl OSReport
.L_8134D57C:
/* 8134D57C 0001B97C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D580 0001B980  38 80 40 00 */	li r4, 0x4000
/* 8134D584 0001B984  38 A0 00 20 */	li r5, 0x20
/* 8134D588 0001B988  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D58C 0001B98C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D590 0001B990  48 20 D1 C5 */	bl fn_8155A754
/* 8134D594 0001B994  7C 7E 1B 78 */	mr r30, r3
/* 8134D598 0001B998  38 80 00 00 */	li r4, 0x0
/* 8134D59C 0001B99C  38 A0 00 01 */	li r5, 0x1
/* 8134D5A0 0001B9A0  38 C0 00 01 */	li r6, 0x1
/* 8134D5A4 0001B9A4  38 E0 00 01 */	li r7, 0x1
/* 8134D5A8 0001B9A8  48 15 31 5D */	bl fn_814A0704
/* 8134D5AC 0001B9AC  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D5B0 0001B9B0  7C 7D 1B 78 */	mr r29, r3
/* 8134D5B4 0001B9B4  7F C4 F3 78 */	mr r4, r30
/* 8134D5B8 0001B9B8  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134D5BC 0001B9BC  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D5C0 0001B9C0  48 20 D4 45 */	bl fn_8155AA04
/* 8134D5C4 0001B9C4  2C 1D FF DA */	cmpwi r29, -0x26
/* 8134D5C8 0001B9C8  40 82 00 24 */	bne .L_8134D5EC
/* 8134D5CC 0001B9CC  38 7F 10 8B */	addi r3, r31, 0x108b
/* 8134D5D0 0001B9D0  4C C6 31 82 */	crclr cr1eq
/* 8134D5D4 0001B9D4  48 1E 10 CD */	bl OSReport
/* 8134D5D8 0001B9D8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D5DC 0001B9DC  38 00 FF FB */	li r0, -0x5
/* 8134D5E0 0001B9E0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D5E4 0001B9E4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134D5E8 0001B9E8  48 00 00 3C */	b .L_8134D624
.L_8134D5EC:
/* 8134D5EC 0001B9EC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134D5F0 0001B9F0  40 82 00 14 */	bne .L_8134D604
/* 8134D5F4 0001B9F4  38 7F 10 C3 */	addi r3, r31, 0x10c3
/* 8134D5F8 0001B9F8  4C C6 31 82 */	crclr cr1eq
/* 8134D5FC 0001B9FC  48 1E 10 A5 */	bl OSReport
/* 8134D600 0001BA00  48 00 00 14 */	b .L_8134D614
.L_8134D604:
/* 8134D604 0001BA04  7F A4 EB 78 */	mr r4, r29
/* 8134D608 0001BA08  38 7F 10 F1 */	addi r3, r31, 0x10f1
/* 8134D60C 0001BA0C  4C C6 31 82 */	crclr cr1eq
/* 8134D610 0001BA10  48 1E 10 91 */	bl OSReport
.L_8134D614:
/* 8134D614 0001BA14  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D618 0001BA18  38 00 00 00 */	li r0, 0x0
/* 8134D61C 0001BA1C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134D620 0001BA20  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134D624:
/* 8134D624 0001BA24  39 61 04 80 */	addi r11, r1, 0x480
/* 8134D628 0001BA28  48 2A BE E9 */	bl _restgpr_28
/* 8134D62C 0001BA2C  80 01 04 84 */	lwz r0, 0x484(r1)
/* 8134D630 0001BA30  7C 08 03 A6 */	mtlr r0
/* 8134D634 0001BA34  38 21 04 80 */	addi r1, r1, 0x480
/* 8134D638 0001BA38  4E 80 00 20 */	blr
.endfn do_initialize_nand__Q23ipl12NandSDWorkerFv

# .text:0x5250 | 0x8134D63C | size: 0xD4
# ipl::NandSDWorker::initialize_meta()
.fn initialize_meta__Q23ipl12NandSDWorkerFv, global
/* 8134D63C 0001BA3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134D640 0001BA40  7C 08 02 A6 */	mflr r0
/* 8134D644 0001BA44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134D648 0001BA48  39 61 00 20 */	addi r11, r1, 0x20
/* 8134D64C 0001BA4C  48 2A BE 7D */	bl _savegpr_29
/* 8134D650 0001BA50  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134D654 0001BA54  7C 7D 1B 78 */	mr r29, r3
/* 8134D658 0001BA58  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134D65C 0001BA5C  38 7F 11 1B */	addi r3, r31, 0x111b
/* 8134D660 0001BA60  48 01 2D 81 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134D664 0001BA64  7C 7E 1B 78 */	mr r30, r3
/* 8134D668 0001BA68  7F A3 EB 78 */	mr r3, r29
/* 8134D66C 0001BA6C  7F C4 F3 78 */	mr r4, r30
/* 8134D670 0001BA70  38 A0 00 00 */	li r5, 0x0
/* 8134D674 0001BA74  48 00 65 E5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134D678 0001BA78  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D67C 0001BA7C  41 82 00 0C */	beq .L_8134D688
/* 8134D680 0001BA80  38 60 FF FB */	li r3, -0x5
/* 8134D684 0001BA84  48 00 00 74 */	b .L_8134D6F8
.L_8134D688:
/* 8134D688 0001BA88  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134D68C 0001BA8C  41 82 00 1C */	beq .L_8134D6A8
/* 8134D690 0001BA90  2C 1E FF F4 */	cmpwi r30, -0xc
/* 8134D694 0001BA94  41 82 00 14 */	beq .L_8134D6A8
/* 8134D698 0001BA98  7F C4 F3 78 */	mr r4, r30
/* 8134D69C 0001BA9C  38 7F 11 2A */	addi r3, r31, 0x112a
/* 8134D6A0 0001BAA0  4C C6 31 82 */	crclr cr1eq
/* 8134D6A4 0001BAA4  48 1E 0F FD */	bl OSReport
.L_8134D6A8:
/* 8134D6A8 0001BAA8  38 7F 11 66 */	addi r3, r31, 0x1166
/* 8134D6AC 0001BAAC  48 01 2D 35 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 8134D6B0 0001BAB0  7C 7E 1B 78 */	mr r30, r3
/* 8134D6B4 0001BAB4  7F A3 EB 78 */	mr r3, r29
/* 8134D6B8 0001BAB8  7F C4 F3 78 */	mr r4, r30
/* 8134D6BC 0001BABC  38 A0 00 00 */	li r5, 0x0
/* 8134D6C0 0001BAC0  48 00 65 99 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134D6C4 0001BAC4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D6C8 0001BAC8  41 82 00 0C */	beq .L_8134D6D4
/* 8134D6CC 0001BACC  38 60 FF FB */	li r3, -0x5
/* 8134D6D0 0001BAD0  48 00 00 28 */	b .L_8134D6F8
.L_8134D6D4:
/* 8134D6D4 0001BAD4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134D6D8 0001BAD8  41 82 00 1C */	beq .L_8134D6F4
/* 8134D6DC 0001BADC  2C 1E FF F4 */	cmpwi r30, -0xc
/* 8134D6E0 0001BAE0  41 82 00 14 */	beq .L_8134D6F4
/* 8134D6E4 0001BAE4  7F C4 F3 78 */	mr r4, r30
/* 8134D6E8 0001BAE8  38 7F 11 75 */	addi r3, r31, 0x1175
/* 8134D6EC 0001BAEC  4C C6 31 82 */	crclr cr1eq
/* 8134D6F0 0001BAF0  48 1E 0F B1 */	bl OSReport
.L_8134D6F4:
/* 8134D6F4 0001BAF4  38 60 00 00 */	li r3, 0x0
.L_8134D6F8:
/* 8134D6F8 0001BAF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8134D6FC 0001BAFC  48 2A BE 19 */	bl _restgpr_29
/* 8134D700 0001BB00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134D704 0001BB04  7C 08 03 A6 */	mtlr r0
/* 8134D708 0001BB08  38 21 00 20 */	addi r1, r1, 0x20
/* 8134D70C 0001BB0C  4E 80 00 20 */	blr
.endfn initialize_meta__Q23ipl12NandSDWorkerFv

# .text:0x5324 | 0x8134D710 | size: 0x1B0
# ipl::NandSDWorker::delete_nand_disk_app_with_ticket()
.fn delete_nand_disk_app_with_ticket__Q23ipl12NandSDWorkerFv, global
/* 8134D710 0001BB10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134D714 0001BB14  7C 08 02 A6 */	mflr r0
/* 8134D718 0001BB18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8134D71C 0001BB1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8134D720 0001BB20  48 2A BD 99 */	bl _savegpr_25
/* 8134D724 0001BB24  3B 60 00 00 */	li r27, 0x0
/* 8134D728 0001BB28  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134D72C 0001BB2C  93 61 00 08 */	stw r27, 0x8(r1)
/* 8134D730 0001BB30  7C 79 1B 78 */	mr r25, r3
/* 8134D734 0001BB34  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134D738 0001BB38  38 81 00 08 */	addi r4, r1, 0x8
/* 8134D73C 0001BB3C  38 60 00 00 */	li r3, 0x0
/* 8134D740 0001BB40  48 27 0C B1 */	bl ES_ListOwnedTitles
/* 8134D744 0001BB44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D748 0001BB48  41 82 00 1C */	beq .L_8134D764
/* 8134D74C 0001BB4C  7C 64 1B 78 */	mr r4, r3
/* 8134D750 0001BB50  38 7D 11 B1 */	addi r3, r29, 0x11b1
/* 8134D754 0001BB54  4C C6 31 82 */	crclr cr1eq
/* 8134D758 0001BB58  48 1E 0F 49 */	bl OSReport
/* 8134D75C 0001BB5C  3B 80 FF FE */	li r28, -0x2
/* 8134D760 0001BB60  48 00 01 28 */	b .L_8134D888
.L_8134D764:
/* 8134D764 0001BB64  80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134D768 0001BB68  38 A0 00 20 */	li r5, 0x20
/* 8134D76C 0001BB6C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134D770 0001BB70  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D774 0001BB74  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D778 0001BB78  54 04 18 38 */	slwi r4, r0, 3
/* 8134D77C 0001BB7C  48 20 CF D9 */	bl fn_8155A754
/* 8134D780 0001BB80  7C 7B 1B 78 */	mr r27, r3
/* 8134D784 0001BB84  38 81 00 08 */	addi r4, r1, 0x8
/* 8134D788 0001BB88  48 27 0C 69 */	bl ES_ListOwnedTitles
/* 8134D78C 0001BB8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D790 0001BB90  41 82 00 1C */	beq .L_8134D7AC
/* 8134D794 0001BB94  7C 64 1B 78 */	mr r4, r3
/* 8134D798 0001BB98  38 7D 11 B1 */	addi r3, r29, 0x11b1
/* 8134D79C 0001BB9C  4C C6 31 82 */	crclr cr1eq
/* 8134D7A0 0001BBA0  48 1E 0F 01 */	bl OSReport
/* 8134D7A4 0001BBA4  3B 80 FF FE */	li r28, -0x2
/* 8134D7A8 0001BBA8  48 00 00 E0 */	b .L_8134D888
.L_8134D7AC:
/* 8134D7AC 0001BBAC  3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8134D7B0 0001BBB0  3B 40 00 00 */	li r26, 0x0
/* 8134D7B4 0001BBB4  3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8134D7B8 0001BBB8  3B E0 00 00 */	li r31, 0x0
/* 8134D7BC 0001BBBC  48 00 00 BC */	b .L_8134D878
.L_8134D7C0:
/* 8134D7C0 0001BBC0  7F 9B FA 14 */	add r28, r27, r31
/* 8134D7C4 0001BBC4  7C 7B F8 2E */	lwzx r3, r27, r31
/* 8134D7C8 0001BBC8  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8134D7CC 0001BBCC  4B FF BA 81 */	bl is_disk_or_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134D7D0 0001BBD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D7D4 0001BBD4  40 82 00 18 */	bne .L_8134D7EC
/* 8134D7D8 0001BBD8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8134D7DC 0001BBDC  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8134D7E0 0001BBE0  4B FF BB 1D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134D7E4 0001BBE4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D7E8 0001BBE8  41 82 00 88 */	beq .L_8134D870
.L_8134D7EC:
/* 8134D7EC 0001BBEC  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D7F0 0001BBF0  7F 23 CB 78 */	mr r3, r25
/* 8134D7F4 0001BBF4  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D7F8 0001BBF8  48 00 00 C9 */	bl delete_ticket__Q23ipl12NandSDWorkerFUx
/* 8134D7FC 0001BBFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D800 0001BC00  41 82 00 24 */	beq .L_8134D824
/* 8134D804 0001BC04  2C 03 FF F2 */	cmpwi r3, -0xe
/* 8134D808 0001BC08  41 82 00 1C */	beq .L_8134D824
/* 8134D80C 0001BC0C  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D810 0001BC10  7C 67 1B 78 */	mr r7, r3
/* 8134D814 0001BC14  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D818 0001BC18  38 7D 11 DF */	addi r3, r29, 0x11df
/* 8134D81C 0001BC1C  4C C6 31 82 */	crclr cr1eq
/* 8134D820 0001BC20  48 1E 0E 81 */	bl OSReport
.L_8134D824:
/* 8134D824 0001BC24  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8134D828 0001BC28  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D82C 0001BC2C  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D830 0001BC30  48 01 91 11 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134D834 0001BC34  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D838 0001BC38  41 82 00 24 */	beq .L_8134D85C
/* 8134D83C 0001BC3C  2C 03 FF 96 */	cmpwi r3, -0x6a
/* 8134D840 0001BC40  41 82 00 1C */	beq .L_8134D85C
/* 8134D844 0001BC44  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D848 0001BC48  7C 67 1B 78 */	mr r7, r3
/* 8134D84C 0001BC4C  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D850 0001BC50  38 7D 12 12 */	addi r3, r29, 0x1212
/* 8134D854 0001BC54  4C C6 31 82 */	crclr cr1eq
/* 8134D858 0001BC58  48 1E 0E 49 */	bl OSReport
.L_8134D85C:
/* 8134D85C 0001BC5C  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8134D860 0001BC60  38 7D 12 4B */	addi r3, r29, 0x124b
/* 8134D864 0001BC64  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 8134D868 0001BC68  4C C6 31 82 */	crclr cr1eq
/* 8134D86C 0001BC6C  48 1E 0E 35 */	bl OSReport
.L_8134D870:
/* 8134D870 0001BC70  3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134D874 0001BC74  3B FF 00 08 */	addi r31, r31, 0x8
.L_8134D878:
/* 8134D878 0001BC78  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134D87C 0001BC7C  7C 1A 00 40 */	cmplw r26, r0
/* 8134D880 0001BC80  41 80 FF 40 */	blt .L_8134D7C0
/* 8134D884 0001BC84  3B 80 00 00 */	li r28, 0x0
.L_8134D888:
/* 8134D888 0001BC88  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134D88C 0001BC8C  41 82 00 18 */	beq .L_8134D8A4
/* 8134D890 0001BC90  80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134D894 0001BC94  7F 64 DB 78 */	mr r4, r27
/* 8134D898 0001BC98  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D89C 0001BC9C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D8A0 0001BCA0  48 20 D1 65 */	bl fn_8155AA04
.L_8134D8A4:
/* 8134D8A4 0001BCA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8134D8A8 0001BCA8  7F 83 E3 78 */	mr r3, r28
/* 8134D8AC 0001BCAC  48 2A BC 59 */	bl _restgpr_25
/* 8134D8B0 0001BCB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8134D8B4 0001BCB4  7C 08 03 A6 */	mtlr r0
/* 8134D8B8 0001BCB8  38 21 00 30 */	addi r1, r1, 0x30
/* 8134D8BC 0001BCBC  4E 80 00 20 */	blr
.endfn delete_nand_disk_app_with_ticket__Q23ipl12NandSDWorkerFv

# .text:0x54D4 | 0x8134D8C0 | size: 0x2BC
# ipl::NandSDWorker::delete_ticket(unsigned long long)
.fn delete_ticket__Q23ipl12NandSDWorkerFUx, global
/* 8134D8C0 0001BCC0  54 2B 06 FE */	clrlwi r11, r1, 27
/* 8134D8C4 0001BCC4  7C 2C 0B 78 */	mr r12, r1
/* 8134D8C8 0001BCC8  21 6B FE A0 */	subfic r11, r11, -0x160
/* 8134D8CC 0001BCCC  7C 21 59 6E */	stwux r1, r1, r11
/* 8134D8D0 0001BCD0  7C 08 02 A6 */	mflr r0
/* 8134D8D4 0001BCD4  7D 8B 63 78 */	mr r11, r12
/* 8134D8D8 0001BCD8  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8134D8DC 0001BCDC  48 2A BB CD */	bl _savegpr_21
/* 8134D8E0 0001BCE0  3B 80 00 00 */	li r28, 0x0
/* 8134D8E4 0001BCE4  7C D9 33 78 */	mr r25, r6
/* 8134D8E8 0001BCE8  7C BA 2B 78 */	mr r26, r5
/* 8134D8EC 0001BCEC  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134D8F0 0001BCF0  7C 78 1B 78 */	mr r24, r3
/* 8134D8F4 0001BCF4  93 81 00 20 */	stw r28, 0x20(r1)
/* 8134D8F8 0001BCF8  7F 24 CB 78 */	mr r4, r25
/* 8134D8FC 0001BCFC  7F 43 D3 78 */	mr r3, r26
/* 8134D900 0001BD00  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134D904 0001BD04  38 C1 00 20 */	addi r6, r1, 0x20
/* 8134D908 0001BD08  38 A0 00 00 */	li r5, 0x0
/* 8134D90C 0001BD0C  48 27 0F FD */	bl fn_815BE908
/* 8134D910 0001BD10  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D914 0001BD14  7C 75 1B 78 */	mr r21, r3
/* 8134D918 0001BD18  41 82 00 2C */	beq .L_8134D944
/* 8134D91C 0001BD1C  7E A4 AB 78 */	mr r4, r21
/* 8134D920 0001BD20  38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8134D924 0001BD24  4C C6 31 82 */	crclr cr1eq
/* 8134D928 0001BD28  48 1E 0D 79 */	bl OSReport
/* 8134D92C 0001BD2C  2C 15 FF 96 */	cmpwi r21, -0x6a
/* 8134D930 0001BD30  40 82 00 0C */	bne .L_8134D93C
/* 8134D934 0001BD34  38 60 FF F2 */	li r3, -0xe
/* 8134D938 0001BD38  48 00 02 28 */	b .L_8134DB60
.L_8134D93C:
/* 8134D93C 0001BD3C  38 60 FF FE */	li r3, -0x2
/* 8134D940 0001BD40  48 00 02 20 */	b .L_8134DB60
.L_8134D944:
/* 8134D944 0001BD44  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8134D948 0001BD48  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134D94C 0001BD4C  41 82 02 10 */	beq .L_8134DB5C
/* 8134D950 0001BD50  1C 80 00 D8 */	mulli r4, r0, 0xd8
/* 8134D954 0001BD54  80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134D958 0001BD58  38 A0 00 20 */	li r5, 0x20
/* 8134D95C 0001BD5C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D960 0001BD60  38 04 00 1F */	addi r0, r4, 0x1f
/* 8134D964 0001BD64  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D968 0001BD68  54 04 00 34 */	clrrwi r4, r0, 5
/* 8134D96C 0001BD6C  48 20 CD E9 */	bl fn_8155A754
/* 8134D970 0001BD70  7C 7C 1B 78 */	mr r28, r3
/* 8134D974 0001BD74  7F 24 CB 78 */	mr r4, r25
/* 8134D978 0001BD78  7F 43 D3 78 */	mr r3, r26
/* 8134D97C 0001BD7C  38 C1 00 20 */	addi r6, r1, 0x20
/* 8134D980 0001BD80  7F 85 E3 78 */	mr r5, r28
/* 8134D984 0001BD84  48 27 0F 85 */	bl fn_815BE908
/* 8134D988 0001BD88  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134D98C 0001BD8C  7C 75 1B 78 */	mr r21, r3
/* 8134D990 0001BD90  41 82 00 40 */	beq .L_8134D9D0
/* 8134D994 0001BD94  7E A4 AB 78 */	mr r4, r21
/* 8134D998 0001BD98  38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8134D99C 0001BD9C  4C C6 31 82 */	crclr cr1eq
/* 8134D9A0 0001BDA0  48 1E 0D 01 */	bl OSReport
/* 8134D9A4 0001BDA4  80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134D9A8 0001BDA8  7F 84 E3 78 */	mr r4, r28
/* 8134D9AC 0001BDAC  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134D9B0 0001BDB0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134D9B4 0001BDB4  48 20 D0 51 */	bl fn_8155AA04
/* 8134D9B8 0001BDB8  2C 15 FF 96 */	cmpwi r21, -0x6a
/* 8134D9BC 0001BDBC  40 82 00 0C */	bne .L_8134D9C8
/* 8134D9C0 0001BDC0  38 60 FF F2 */	li r3, -0xe
/* 8134D9C4 0001BDC4  48 00 01 9C */	b .L_8134DB60
.L_8134D9C8:
/* 8134D9C8 0001BDC8  38 60 FF FE */	li r3, -0x2
/* 8134D9CC 0001BDCC  48 00 01 94 */	b .L_8134DB60
.L_8134D9D0:
/* 8134D9D0 0001BDD0  3B 60 00 00 */	li r27, 0x0
/* 8134D9D4 0001BDD4  3A E0 00 00 */	li r23, 0x0
/* 8134D9D8 0001BDD8  3B C0 00 17 */	li r30, 0x17
/* 8134D9DC 0001BDDC  3B E0 00 20 */	li r31, 0x20
/* 8134D9E0 0001BDE0  3A C0 00 08 */	li r22, 0x8
/* 8134D9E4 0001BDE4  48 00 01 58 */	b .L_8134DB3C
.L_8134D9E8:
/* 8134D9E8 0001BDE8  7C 1C B8 AE */	lbzx r0, r28, r23
/* 8134D9EC 0001BDEC  7C BC BA 14 */	add r5, r28, r23
/* 8134D9F0 0001BDF0  38 C1 00 65 */	addi r6, r1, 0x65
/* 8134D9F4 0001BDF4  98 01 00 40 */	stb r0, 0x40(r1)
/* 8134D9F8 0001BDF8  38 85 00 25 */	addi r4, r5, 0x25
/* 8134D9FC 0001BDFC  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8134DA00 0001BE00  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8134DA04 0001BE04  90 61 00 48 */	stw r3, 0x48(r1)
/* 8134DA08 0001BE08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8134DA0C 0001BE0C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8134DA10 0001BE10  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8134DA14 0001BE14  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8134DA18 0001BE18  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8134DA1C 0001BE1C  90 61 00 54 */	stw r3, 0x54(r1)
/* 8134DA20 0001BE20  90 01 00 50 */	stw r0, 0x50(r1)
/* 8134DA24 0001BE24  88 05 00 18 */	lbz r0, 0x18(r5)
/* 8134DA28 0001BE28  98 01 00 58 */	stb r0, 0x58(r1)
/* 8134DA2C 0001BE2C  88 05 00 19 */	lbz r0, 0x19(r5)
/* 8134DA30 0001BE30  98 01 00 59 */	stb r0, 0x59(r1)
/* 8134DA34 0001BE34  A0 05 00 1A */	lhz r0, 0x1a(r5)
/* 8134DA38 0001BE38  B0 01 00 5A */	sth r0, 0x5a(r1)
/* 8134DA3C 0001BE3C  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 8134DA40 0001BE40  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8134DA44 0001BE44  80 05 00 20 */	lwz r0, 0x20(r5)
/* 8134DA48 0001BE48  90 01 00 60 */	stw r0, 0x60(r1)
/* 8134DA4C 0001BE4C  88 05 00 24 */	lbz r0, 0x24(r5)
/* 8134DA50 0001BE50  98 01 00 64 */	stb r0, 0x64(r1)
/* 8134DA54 0001BE54  88 05 00 25 */	lbz r0, 0x25(r5)
/* 8134DA58 0001BE58  98 01 00 65 */	stb r0, 0x65(r1)
/* 8134DA5C 0001BE5C  7F C9 03 A6 */	mtctr r30
.L_8134DA60:
/* 8134DA60 0001BE60  88 64 00 01 */	lbz r3, 0x1(r4)
/* 8134DA64 0001BE64  8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 8134DA68 0001BE68  98 66 00 01 */	stb r3, 0x1(r6)
/* 8134DA6C 0001BE6C  9C 06 00 02 */	stbu r0, 0x2(r6)
/* 8134DA70 0001BE70  42 00 FF F0 */	bdnz .L_8134DA60
/* 8134DA74 0001BE74  88 04 00 01 */	lbz r0, 0x1(r4)
/* 8134DA78 0001BE78  7C 7C BA 14 */	add r3, r28, r23
/* 8134DA7C 0001BE7C  38 A1 00 95 */	addi r5, r1, 0x95
/* 8134DA80 0001BE80  98 06 00 01 */	stb r0, 0x1(r6)
/* 8134DA84 0001BE84  38 83 00 55 */	addi r4, r3, 0x55
/* 8134DA88 0001BE88  88 03 00 55 */	lbz r0, 0x55(r3)
/* 8134DA8C 0001BE8C  98 01 00 95 */	stb r0, 0x95(r1)
/* 8134DA90 0001BE90  7F E9 03 A6 */	mtctr r31
.L_8134DA94:
/* 8134DA94 0001BE94  88 64 00 01 */	lbz r3, 0x1(r4)
/* 8134DA98 0001BE98  8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 8134DA9C 0001BE9C  98 65 00 01 */	stb r3, 0x1(r5)
/* 8134DAA0 0001BEA0  9C 05 00 02 */	stbu r0, 0x2(r5)
/* 8134DAA4 0001BEA4  42 00 FF F0 */	bdnz .L_8134DA94
/* 8134DAA8 0001BEA8  7C 7C BA 14 */	add r3, r28, r23
/* 8134DAAC 0001BEAC  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 8134DAB0 0001BEB0  38 83 00 94 */	addi r4, r3, 0x94
/* 8134DAB4 0001BEB4  7E C9 03 A6 */	mtctr r22
.L_8134DAB8:
/* 8134DAB8 0001BEB8  80 64 00 04 */	lwz r3, 0x4(r4)
/* 8134DABC 0001BEBC  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8134DAC0 0001BEC0  90 65 00 04 */	stw r3, 0x4(r5)
/* 8134DAC4 0001BEC4  94 05 00 08 */	stwu r0, 0x8(r5)
/* 8134DAC8 0001BEC8  42 00 FF F0 */	bdnz .L_8134DAB8
/* 8134DACC 0001BECC  38 61 00 40 */	addi r3, r1, 0x40
/* 8134DAD0 0001BED0  48 27 12 DD */	bl fn_815BEDAC
/* 8134DAD4 0001BED4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DAD8 0001BED8  7C 75 1B 78 */	mr r21, r3
/* 8134DADC 0001BEDC  41 82 00 40 */	beq .L_8134DB1C
/* 8134DAE0 0001BEE0  7E A4 AB 78 */	mr r4, r21
/* 8134DAE4 0001BEE4  38 7D 12 73 */	addi r3, r29, 0x1273
/* 8134DAE8 0001BEE8  4C C6 31 82 */	crclr cr1eq
/* 8134DAEC 0001BEEC  48 1E 0B B5 */	bl OSReport
/* 8134DAF0 0001BEF0  80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134DAF4 0001BEF4  7F 84 E3 78 */	mr r4, r28
/* 8134DAF8 0001BEF8  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DAFC 0001BEFC  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DB00 0001BF00  48 20 CF 05 */	bl fn_8155AA04
/* 8134DB04 0001BF04  2C 15 FF 96 */	cmpwi r21, -0x6a
/* 8134DB08 0001BF08  40 82 00 0C */	bne .L_8134DB14
/* 8134DB0C 0001BF0C  38 60 FF F2 */	li r3, -0xe
/* 8134DB10 0001BF10  48 00 00 50 */	b .L_8134DB60
.L_8134DB14:
/* 8134DB14 0001BF14  38 60 FF FE */	li r3, -0x2
/* 8134DB18 0001BF18  48 00 00 48 */	b .L_8134DB60
.L_8134DB1C:
/* 8134DB1C 0001BF1C  7F 64 DB 78 */	mr r4, r27
/* 8134DB20 0001BF20  7F 26 CB 78 */	mr r6, r25
/* 8134DB24 0001BF24  7F 45 D3 78 */	mr r5, r26
/* 8134DB28 0001BF28  38 7D 12 9E */	addi r3, r29, 0x129e
/* 8134DB2C 0001BF2C  4C C6 31 82 */	crclr cr1eq
/* 8134DB30 0001BF30  48 1E 0B 71 */	bl OSReport
/* 8134DB34 0001BF34  3B 7B 00 01 */	addi r27, r27, 0x1
/* 8134DB38 0001BF38  3A F7 00 D8 */	addi r23, r23, 0xd8
.L_8134DB3C:
/* 8134DB3C 0001BF3C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8134DB40 0001BF40  7C 1B 00 40 */	cmplw r27, r0
/* 8134DB44 0001BF44  41 80 FE A4 */	blt .L_8134D9E8
/* 8134DB48 0001BF48  80 78 00 00 */	lwz r3, 0x0(r24)
/* 8134DB4C 0001BF4C  7F 84 E3 78 */	mr r4, r28
/* 8134DB50 0001BF50  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DB54 0001BF54  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DB58 0001BF58  48 20 CE AD */	bl fn_8155AA04
.L_8134DB5C:
/* 8134DB5C 0001BF5C  38 60 00 00 */	li r3, 0x0
.L_8134DB60:
/* 8134DB60 0001BF60  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8134DB64 0001BF64  7D 4B 53 78 */	mr r11, r10
/* 8134DB68 0001BF68  48 2A B9 8D */	bl _restgpr_21
/* 8134DB6C 0001BF6C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8134DB70 0001BF70  7C 08 03 A6 */	mtlr r0
/* 8134DB74 0001BF74  7D 41 53 78 */	mr r1, r10
/* 8134DB78 0001BF78  4E 80 00 20 */	blr
.endfn delete_ticket__Q23ipl12NandSDWorkerFUx

# .text:0x5790 | 0x8134DB7C | size: 0xC4
# ipl::NandSDWorker::delete_empty_title(unsigned long long, bool)
.fn delete_empty_title__Q23ipl12NandSDWorkerFUxb, global
/* 8134DB7C 0001BF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134DB80 0001BF80  7C 08 02 A6 */	mflr r0
/* 8134DB84 0001BF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134DB88 0001BF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8134DB8C 0001BF8C  48 2A B9 39 */	bl _savegpr_28
/* 8134DB90 0001BF90  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8134DB94 0001BF94  7C BD 2B 78 */	mr r29, r5
/* 8134DB98 0001BF98  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8134DB9C 0001BF9C  7C DC 33 78 */	mr r28, r6
/* 8134DBA0 0001BFA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8134DBA4 0001BFA4  7C FE 3B 78 */	mr r30, r7
/* 8134DBA8 0001BFA8  48 01 8B B1 */	bl CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134DBAC 0001BFAC  2C 03 00 01 */	cmpwi r3, 0x1
/* 8134DBB0 0001BFB0  7C 7F 1B 78 */	mr r31, r3
/* 8134DBB4 0001BFB4  41 82 00 0C */	beq .L_8134DBC0
/* 8134DBB8 0001BFB8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134DBBC 0001BFBC  41 82 00 44 */	beq .L_8134DC00
.L_8134DBC0:
/* 8134DBC0 0001BFC0  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8134DBC4 0001BFC4  7F 86 E3 78 */	mr r6, r28
/* 8134DBC8 0001BFC8  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8134DBCC 0001BFCC  7F A5 EB 78 */	mr r5, r29
/* 8134DBD0 0001BFD0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8134DBD4 0001BFD4  48 01 8D 6D */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134DBD8 0001BFD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DBDC 0001BFDC  7C 7F 1B 78 */	mr r31, r3
/* 8134DBE0 0001BFE0  41 82 00 44 */	beq .L_8134DC24
/* 8134DBE4 0001BFE4  3C 60 81 63 */	lis r3, lbl_81635D1B@ha
/* 8134DBE8 0001BFE8  7F E4 FB 78 */	mr r4, r31
/* 8134DBEC 0001BFEC  38 63 5D 1B */	addi r3, r3, lbl_81635D1B@l
/* 8134DBF0 0001BFF0  4C C6 31 82 */	crclr cr1eq
/* 8134DBF4 0001BFF4  48 1E 0A AD */	bl OSReport
/* 8134DBF8 0001BFF8  7F E3 FB 78 */	mr r3, r31
/* 8134DBFC 0001BFFC  48 00 00 2C */	b .L_8134DC28
.L_8134DC00:
/* 8134DC00 0001C000  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DC04 0001C004  40 80 00 20 */	bge .L_8134DC24
/* 8134DC08 0001C008  3C 60 81 63 */	lis r3, lbl_81636D56@ha
/* 8134DC0C 0001C00C  7F E4 FB 78 */	mr r4, r31
/* 8134DC10 0001C010  38 63 6D 56 */	addi r3, r3, lbl_81636D56@l
/* 8134DC14 0001C014  4C C6 31 82 */	crclr cr1eq
/* 8134DC18 0001C018  48 1E 0A 89 */	bl OSReport
/* 8134DC1C 0001C01C  7F E3 FB 78 */	mr r3, r31
/* 8134DC20 0001C020  48 00 00 08 */	b .L_8134DC28
.L_8134DC24:
/* 8134DC24 0001C024  38 60 00 00 */	li r3, 0x0
.L_8134DC28:
/* 8134DC28 0001C028  39 61 00 20 */	addi r11, r1, 0x20
/* 8134DC2C 0001C02C  48 2A B8 E5 */	bl _restgpr_28
/* 8134DC30 0001C030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134DC34 0001C034  7C 08 03 A6 */	mtlr r0
/* 8134DC38 0001C038  38 21 00 20 */	addi r1, r1, 0x20
/* 8134DC3C 0001C03C  4E 80 00 20 */	blr
.endfn delete_empty_title__Q23ipl12NandSDWorkerFUxb

# .text:0x5854 | 0x8134DC40 | size: 0x248
# ipl::NandSDWorker::delete_nand_titles()
.fn delete_nand_titles__Q23ipl12NandSDWorkerFv, global
/* 8134DC40 0001C040  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8134DC44 0001C044  7C 08 02 A6 */	mflr r0
/* 8134DC48 0001C048  90 01 00 44 */	stw r0, 0x44(r1)
/* 8134DC4C 0001C04C  39 61 00 40 */	addi r11, r1, 0x40
/* 8134DC50 0001C050  48 2A B8 59 */	bl _savegpr_21
/* 8134DC54 0001C054  3A C0 00 00 */	li r22, 0x0
/* 8134DC58 0001C058  3F 20 81 63 */	lis r25, lbl_81635A88@ha
/* 8134DC5C 0001C05C  92 C1 00 08 */	stw r22, 0x8(r1)
/* 8134DC60 0001C060  7C 7F 1B 78 */	mr r31, r3
/* 8134DC64 0001C064  3B 39 5A 88 */	addi r25, r25, lbl_81635A88@l
/* 8134DC68 0001C068  38 81 00 08 */	addi r4, r1, 0x8
/* 8134DC6C 0001C06C  38 60 00 00 */	li r3, 0x0
/* 8134DC70 0001C070  48 27 08 75 */	bl fn_815BE4E4
/* 8134DC74 0001C074  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DC78 0001C078  41 82 00 1C */	beq .L_8134DC94
/* 8134DC7C 0001C07C  7C 64 1B 78 */	mr r4, r3
/* 8134DC80 0001C080  38 79 13 06 */	addi r3, r25, 0x1306
/* 8134DC84 0001C084  4C C6 31 82 */	crclr cr1eq
/* 8134DC88 0001C088  48 1E 0A 19 */	bl OSReport
/* 8134DC8C 0001C08C  3A E0 FF FE */	li r23, -0x2
/* 8134DC90 0001C090  48 00 01 C0 */	b .L_8134DE50
.L_8134DC94:
/* 8134DC94 0001C094  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134DC98 0001C098  38 A0 00 20 */	li r5, 0x20
/* 8134DC9C 0001C09C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134DCA0 0001C0A0  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DCA4 0001C0A4  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DCA8 0001C0A8  54 04 18 38 */	slwi r4, r0, 3
/* 8134DCAC 0001C0AC  48 20 CA A9 */	bl fn_8155A754
/* 8134DCB0 0001C0B0  7C 76 1B 78 */	mr r22, r3
/* 8134DCB4 0001C0B4  38 81 00 08 */	addi r4, r1, 0x8
/* 8134DCB8 0001C0B8  48 27 08 2D */	bl fn_815BE4E4
/* 8134DCBC 0001C0BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DCC0 0001C0C0  41 82 00 1C */	beq .L_8134DCDC
/* 8134DCC4 0001C0C4  7C 64 1B 78 */	mr r4, r3
/* 8134DCC8 0001C0C8  38 79 13 06 */	addi r3, r25, 0x1306
/* 8134DCCC 0001C0CC  4C C6 31 82 */	crclr cr1eq
/* 8134DCD0 0001C0D0  48 1E 09 D1 */	bl OSReport
/* 8134DCD4 0001C0D4  3A E0 FF FE */	li r23, -0x2
/* 8134DCD8 0001C0D8  48 00 01 78 */	b .L_8134DE50
.L_8134DCDC:
/* 8134DCDC 0001C0DC  3F 60 00 01 */	lis r27, 0x1
/* 8134DCE0 0001C0E0  3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8134DCE4 0001C0E4  3A A0 00 00 */	li r21, 0x0
/* 8134DCE8 0001C0E8  3B C0 00 00 */	li r30, 0x0
/* 8134DCEC 0001C0EC  3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8134DCF0 0001C0F0  3B 5B 00 02 */	addi r26, r27, 0x2
/* 8134DCF4 0001C0F4  3B 80 FF FF */	li r28, -0x1
/* 8134DCF8 0001C0F8  48 00 01 48 */	b .L_8134DE40
.L_8134DCFC:
/* 8134DCFC 0001C0FC  7C B6 F0 2E */	lwzx r5, r22, r30
/* 8134DD00 0001C100  7F 16 F2 14 */	add r24, r22, r30
/* 8134DD04 0001C104  80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DD08 0001C108  7C 05 D0 00 */	cmpw r5, r26
/* 8134DD0C 0001C10C  40 80 00 1C */	bge .L_8134DD28
/* 8134DD10 0001C110  2C 05 00 01 */	cmpwi r5, 0x1
/* 8134DD14 0001C114  41 82 00 34 */	beq .L_8134DD48
/* 8134DD18 0001C118  41 80 01 14 */	blt .L_8134DE2C
/* 8134DD1C 0001C11C  7C 05 D8 00 */	cmpw r5, r27
/* 8134DD20 0001C120  40 80 00 7C */	bge .L_8134DD9C
/* 8134DD24 0001C124  48 00 01 08 */	b .L_8134DE2C
.L_8134DD28:
/* 8134DD28 0001C128  38 1B 00 08 */	addi r0, r27, 0x8
/* 8134DD2C 0001C12C  7C 05 00 00 */	cmpw r5, r0
/* 8134DD30 0001C130  41 82 00 BC */	beq .L_8134DDEC
/* 8134DD34 0001C134  40 80 00 F8 */	bge .L_8134DE2C
/* 8134DD38 0001C138  38 1B 00 04 */	addi r0, r27, 0x4
/* 8134DD3C 0001C13C  7C 05 00 00 */	cmpw r5, r0
/* 8134DD40 0001C140  40 80 00 5C */	bge .L_8134DD9C
/* 8134DD44 0001C144  48 00 00 A8 */	b .L_8134DDEC
.L_8134DD48:
/* 8134DD48 0001C148  7C C0 E0 38 */	and r0, r6, r28
/* 8134DD4C 0001C14C  28 00 00 02 */	cmplwi r0, 0x2
/* 8134DD50 0001C150  40 82 00 E8 */	bne .L_8134DE38
/* 8134DD54 0001C154  7F E3 FB 78 */	mr r3, r31
/* 8134DD58 0001C158  38 E0 00 01 */	li r7, 0x1
/* 8134DD5C 0001C15C  39 0D 81 9C */	li r8, lbl_816961DC@sda21
/* 8134DD60 0001C160  39 20 00 02 */	li r9, 0x2
/* 8134DD64 0001C164  48 00 56 7D */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134DD68 0001C168  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DD6C 0001C16C  7C 77 1B 78 */	mr r23, r3
/* 8134DD70 0001C170  41 82 00 1C */	beq .L_8134DD8C
/* 8134DD74 0001C174  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134DD78 0001C178  41 82 00 14 */	beq .L_8134DD8C
/* 8134DD7C 0001C17C  38 79 13 35 */	addi r3, r25, 0x1335
/* 8134DD80 0001C180  4C C6 31 82 */	crclr cr1eq
/* 8134DD84 0001C184  48 1E 09 1D */	bl OSReport
/* 8134DD88 0001C188  48 00 00 C8 */	b .L_8134DE50
.L_8134DD8C:
/* 8134DD8C 0001C18C  38 79 13 64 */	addi r3, r25, 0x1364
/* 8134DD90 0001C190  4C C6 31 82 */	crclr cr1eq
/* 8134DD94 0001C194  48 1E 09 0D */	bl OSReport
/* 8134DD98 0001C198  48 00 00 A0 */	b .L_8134DE38
.L_8134DD9C:
/* 8134DD9C 0001C19C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8134DDA0 0001C1A0  48 01 8B A1 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8134DDA4 0001C1A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DDA8 0001C1A8  41 82 00 2C */	beq .L_8134DDD4
/* 8134DDAC 0001C1AC  2C 03 FF 96 */	cmpwi r3, -0x6a
/* 8134DDB0 0001C1B0  41 82 00 24 */	beq .L_8134DDD4
/* 8134DDB4 0001C1B4  80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8134DDB8 0001C1B8  7C 67 1B 78 */	mr r7, r3
/* 8134DDBC 0001C1BC  80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DDC0 0001C1C0  38 79 12 12 */	addi r3, r25, 0x1212
/* 8134DDC4 0001C1C4  4C C6 31 82 */	crclr cr1eq
/* 8134DDC8 0001C1C8  48 1E 08 D9 */	bl OSReport
/* 8134DDCC 0001C1CC  3A E0 FF FE */	li r23, -0x2
/* 8134DDD0 0001C1D0  48 00 00 80 */	b .L_8134DE50
.L_8134DDD4:
/* 8134DDD4 0001C1D4  80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8134DDD8 0001C1D8  38 79 13 9A */	addi r3, r25, 0x139a
/* 8134DDDC 0001C1DC  80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DDE0 0001C1E0  4C C6 31 82 */	crclr cr1eq
/* 8134DDE4 0001C1E4  48 1E 08 BD */	bl OSReport
/* 8134DDE8 0001C1E8  48 00 00 50 */	b .L_8134DE38
.L_8134DDEC:
/* 8134DDEC 0001C1EC  7F E3 FB 78 */	mr r3, r31
/* 8134DDF0 0001C1F0  38 E0 00 01 */	li r7, 0x1
/* 8134DDF4 0001C1F4  39 00 00 00 */	li r8, 0x0
/* 8134DDF8 0001C1F8  39 20 00 00 */	li r9, 0x0
/* 8134DDFC 0001C1FC  48 00 55 E5 */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134DE00 0001C200  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DE04 0001C204  7C 77 1B 78 */	mr r23, r3
/* 8134DE08 0001C208  41 82 00 30 */	beq .L_8134DE38
/* 8134DE0C 0001C20C  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134DE10 0001C210  41 82 00 28 */	beq .L_8134DE38
/* 8134DE14 0001C214  80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8134DE18 0001C218  38 79 13 CE */	addi r3, r25, 0x13ce
/* 8134DE1C 0001C21C  80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8134DE20 0001C220  4C C6 31 82 */	crclr cr1eq
/* 8134DE24 0001C224  48 1E 08 7D */	bl OSReport
/* 8134DE28 0001C228  48 00 00 28 */	b .L_8134DE50
.L_8134DE2C:
/* 8134DE2C 0001C22C  38 79 14 03 */	addi r3, r25, 0x1403
/* 8134DE30 0001C230  4C C6 31 82 */	crclr cr1eq
/* 8134DE34 0001C234  48 1E 08 6D */	bl OSReport
.L_8134DE38:
/* 8134DE38 0001C238  3A B5 00 01 */	addi r21, r21, 0x1
/* 8134DE3C 0001C23C  3B DE 00 08 */	addi r30, r30, 0x8
.L_8134DE40:
/* 8134DE40 0001C240  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134DE44 0001C244  7C 15 00 40 */	cmplw r21, r0
/* 8134DE48 0001C248  41 80 FE B4 */	blt .L_8134DCFC
/* 8134DE4C 0001C24C  3A E0 00 00 */	li r23, 0x0
.L_8134DE50:
/* 8134DE50 0001C250  2C 16 00 00 */	cmpwi r22, 0x0
/* 8134DE54 0001C254  41 82 00 18 */	beq .L_8134DE6C
/* 8134DE58 0001C258  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134DE5C 0001C25C  7E C4 B3 78 */	mr r4, r22
/* 8134DE60 0001C260  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134DE64 0001C264  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134DE68 0001C268  48 20 CB 9D */	bl fn_8155AA04
.L_8134DE6C:
/* 8134DE6C 0001C26C  39 61 00 40 */	addi r11, r1, 0x40
/* 8134DE70 0001C270  7E E3 BB 78 */	mr r3, r23
/* 8134DE74 0001C274  48 2A B6 81 */	bl _restgpr_21
/* 8134DE78 0001C278  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8134DE7C 0001C27C  7C 08 03 A6 */	mtlr r0
/* 8134DE80 0001C280  38 21 00 40 */	addi r1, r1, 0x40
/* 8134DE84 0001C284  4E 80 00 20 */	blr
.endfn delete_nand_titles__Q23ipl12NandSDWorkerFv

# .text:0x5A9C | 0x8134DE88 | size: 0xD4
# ipl::NandSDWorker::do_get_nand_user_free_area()
.fn do_get_nand_user_free_area__Q23ipl12NandSDWorkerFv, global
/* 8134DE88 0001C288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134DE8C 0001C28C  7C 08 02 A6 */	mflr r0
/* 8134DE90 0001C290  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134DE94 0001C294  38 00 00 00 */	li r0, 0x0
/* 8134DE98 0001C298  38 81 00 08 */	addi r4, r1, 0x8
/* 8134DE9C 0001C29C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8134DEA0 0001C2A0  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134DEA4 0001C2A4  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134DEA8 0001C2A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8134DEAC 0001C2AC  7C 7E 1B 78 */	mr r30, r3
/* 8134DEB0 0001C2B0  38 61 00 0C */	addi r3, r1, 0xc
/* 8134DEB4 0001C2B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8134DEB8 0001C2B8  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134DEBC 0001C2BC  48 01 26 D5 */	bl SecretGetUserUsage__Q33ipl4nand7wrapperFPUlPUl
/* 8134DEC0 0001C2C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DEC4 0001C2C4  41 82 00 28 */	beq .L_8134DEEC
/* 8134DEC8 0001C2C8  7C 64 1B 78 */	mr r4, r3
/* 8134DECC 0001C2CC  38 7F 14 2E */	addi r3, r31, 0x142e
/* 8134DED0 0001C2D0  4C C6 31 82 */	crclr cr1eq
/* 8134DED4 0001C2D4  48 1E 07 CD */	bl OSReport
/* 8134DED8 0001C2D8  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8134DEDC 0001C2DC  38 00 FF FE */	li r0, -0x2
/* 8134DEE0 0001C2E0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134DEE4 0001C2E4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134DEE8 0001C2E8  48 00 00 5C */	b .L_8134DF44
.L_8134DEEC:
/* 8134DEEC 0001C2EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8134DEF0 0001C2F0  38 7F 14 60 */	addi r3, r31, 0x1460
/* 8134DEF4 0001C2F4  4C C6 31 82 */	crclr cr1eq
/* 8134DEF8 0001C2F8  48 1E 07 A9 */	bl OSReport
/* 8134DEFC 0001C2FC  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8134DF00 0001C300  38 7F 14 81 */	addi r3, r31, 0x1481
/* 8134DF04 0001C304  4C C6 31 82 */	crclr cr1eq
/* 8134DF08 0001C308  48 1E 07 99 */	bl OSReport
/* 8134DF0C 0001C30C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134DF10 0001C310  3C 00 11 00 */	lis r0, 0x1100
/* 8134DF14 0001C314  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134DF18 0001C318  38 7F 14 A2 */	addi r3, r31, 0x14a2
/* 8134DF1C 0001C31C  54 A6 70 22 */	slwi r6, r5, 14
/* 8134DF20 0001C320  3C A0 11 00 */	lis r5, 0x1100
/* 8134DF24 0001C324  7C 06 00 50 */	subf r0, r6, r0
/* 8134DF28 0001C328  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134DF2C 0001C32C  90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134DF30 0001C330  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134DF34 0001C334  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134DF38 0001C338  80 84 EA 24 */	lwz r4, -0x15dc(r4)
/* 8134DF3C 0001C33C  4C C6 31 82 */	crclr cr1eq
/* 8134DF40 0001C340  48 1E 07 61 */	bl OSReport
.L_8134DF44:
/* 8134DF44 0001C344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134DF48 0001C348  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8134DF4C 0001C34C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8134DF50 0001C350  7C 08 03 A6 */	mtlr r0
/* 8134DF54 0001C354  38 21 00 20 */	addi r1, r1, 0x20
/* 8134DF58 0001C358  4E 80 00 20 */	blr
.endfn do_get_nand_user_free_area__Q23ipl12NandSDWorkerFv

# .text:0x5B70 | 0x8134DF5C | size: 0xF8
# ipl::NandSDWorker::get_nand_free_area(unsigned long*, unsigned long*, long*, long*)
.fn get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl, global
/* 8134DF5C 0001C35C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8134DF60 0001C360  7C 08 02 A6 */	mflr r0
/* 8134DF64 0001C364  90 01 00 54 */	stw r0, 0x54(r1)
/* 8134DF68 0001C368  39 61 00 50 */	addi r11, r1, 0x50
/* 8134DF6C 0001C36C  48 2A B5 55 */	bl _savegpr_27
/* 8134DF70 0001C370  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134DF74 0001C374  7C 9B 23 78 */	mr r27, r4
/* 8134DF78 0001C378  7C BC 2B 78 */	mr r28, r5
/* 8134DF7C 0001C37C  7C DD 33 78 */	mr r29, r6
/* 8134DF80 0001C380  7C FE 3B 78 */	mr r30, r7
/* 8134DF84 0001C384  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134DF88 0001C388  38 61 00 10 */	addi r3, r1, 0x10
/* 8134DF8C 0001C38C  48 01 26 F5 */	bl SecretGetFileSystemStatus__Q33ipl4nand7wrapperFP20NANDFileSystemStatus
/* 8134DF90 0001C390  38 61 00 0C */	addi r3, r1, 0xc
/* 8134DF94 0001C394  38 81 00 08 */	addi r4, r1, 0x8
/* 8134DF98 0001C398  48 01 25 F9 */	bl SecretGetUserUsage__Q33ipl4nand7wrapperFPUlPUl
/* 8134DF9C 0001C39C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134DFA0 0001C3A0  41 82 00 1C */	beq .L_8134DFBC
/* 8134DFA4 0001C3A4  7C 64 1B 78 */	mr r4, r3
/* 8134DFA8 0001C3A8  38 7F 14 2E */	addi r3, r31, 0x142e
/* 8134DFAC 0001C3AC  4C C6 31 82 */	crclr cr1eq
/* 8134DFB0 0001C3B0  48 1E 06 F1 */	bl OSReport
/* 8134DFB4 0001C3B4  38 60 FF FE */	li r3, -0x2
/* 8134DFB8 0001C3B8  48 00 00 84 */	b .L_8134E03C
.L_8134DFBC:
/* 8134DFBC 0001C3BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8134DFC0 0001C3C0  38 7F 14 C8 */	addi r3, r31, 0x14c8
/* 8134DFC4 0001C3C4  20 00 44 00 */	subfic r0, r0, 0x4400
/* 8134DFC8 0001C3C8  90 1E 00 00 */	stw r0, 0x0(r30)
/* 8134DFCC 0001C3CC  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134DFD0 0001C3D0  20 A0 0F A0 */	subfic r5, r0, 0xfa0
/* 8134DFD4 0001C3D4  90 BD 00 00 */	stw r5, 0x0(r29)
/* 8134DFD8 0001C3D8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8134DFDC 0001C3DC  4C C6 31 82 */	crclr cr1eq
/* 8134DFE0 0001C3E0  48 1E 06 C1 */	bl OSReport
/* 8134DFE4 0001C3E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8134DFE8 0001C3E8  7F 86 E3 78 */	mr r6, r28
/* 8134DFEC 0001C3EC  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134DFF0 0001C3F0  7F 67 DB 78 */	mr r7, r27
/* 8134DFF4 0001C3F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8134DFF8 0001C3F8  48 01 26 05 */	bl SecretGetSystemAvailableArea__Q33ipl4nand7wrapperFPC20NANDFileSystemStatusUlUlPUlPUl
/* 8134DFFC 0001C3FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E000 0001C400  40 82 00 1C */	bne .L_8134E01C
/* 8134E004 0001C404  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8134E008 0001C408  38 7F 14 FE */	addi r3, r31, 0x14fe
/* 8134E00C 0001C40C  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8134E010 0001C410  4C C6 31 82 */	crclr cr1eq
/* 8134E014 0001C414  48 1E 06 8D */	bl OSReport
/* 8134E018 0001C418  48 00 00 20 */	b .L_8134E038
.L_8134E01C:
/* 8134E01C 0001C41C  7C 64 1B 78 */	mr r4, r3
/* 8134E020 0001C420  38 7F 15 36 */	addi r3, r31, 0x1536
/* 8134E024 0001C424  4C C6 31 82 */	crclr cr1eq
/* 8134E028 0001C428  48 1E 06 79 */	bl OSReport
/* 8134E02C 0001C42C  38 00 00 00 */	li r0, 0x0
/* 8134E030 0001C430  90 1C 00 00 */	stw r0, 0x0(r28)
/* 8134E034 0001C434  90 1B 00 00 */	stw r0, 0x0(r27)
.L_8134E038:
/* 8134E038 0001C438  38 60 00 00 */	li r3, 0x0
.L_8134E03C:
/* 8134E03C 0001C43C  39 61 00 50 */	addi r11, r1, 0x50
/* 8134E040 0001C440  48 2A B4 CD */	bl _restgpr_27
/* 8134E044 0001C444  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8134E048 0001C448  7C 08 03 A6 */	mtlr r0
/* 8134E04C 0001C44C  38 21 00 50 */	addi r1, r1, 0x50
/* 8134E050 0001C450  4E 80 00 20 */	blr
.endfn get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl

# .text:0x5C68 | 0x8134E054 | size: 0xFC
# ipl::NandSDWorker::check_nand_free_area(unsigned long, unsigned long, long, long)
.fn check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll, global
/* 8134E054 0001C454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8134E058 0001C458  7C 08 02 A6 */	mflr r0
/* 8134E05C 0001C45C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8134E060 0001C460  39 61 00 30 */	addi r11, r1, 0x30
/* 8134E064 0001C464  48 2A B4 5D */	bl _savegpr_27
/* 8134E068 0001C468  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134E06C 0001C46C  7C 9B 23 78 */	mr r27, r4
/* 8134E070 0001C470  7C BC 2B 78 */	mr r28, r5
/* 8134E074 0001C474  7C DD 33 78 */	mr r29, r6
/* 8134E078 0001C478  7C FE 3B 78 */	mr r30, r7
/* 8134E07C 0001C47C  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134E080 0001C480  38 81 00 14 */	addi r4, r1, 0x14
/* 8134E084 0001C484  38 A1 00 10 */	addi r5, r1, 0x10
/* 8134E088 0001C488  38 C1 00 0C */	addi r6, r1, 0xc
/* 8134E08C 0001C48C  38 E1 00 08 */	addi r7, r1, 0x8
/* 8134E090 0001C490  4B FF FE CD */	bl get_nand_free_area__Q23ipl12NandSDWorkerFPUlPUlPlPl
/* 8134E094 0001C494  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E098 0001C498  41 82 00 0C */	beq .L_8134E0A4
/* 8134E09C 0001C49C  38 60 FF FE */	li r3, -0x2
/* 8134E0A0 0001C4A0  48 00 00 98 */	b .L_8134E138
.L_8134E0A4:
/* 8134E0A4 0001C4A4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8134E0A8 0001C4A8  7C 05 D8 40 */	cmplw r5, r27
/* 8134E0AC 0001C4AC  40 80 00 1C */	bge .L_8134E0C8
/* 8134E0B0 0001C4B0  7F 64 DB 78 */	mr r4, r27
/* 8134E0B4 0001C4B4  38 7F 15 60 */	addi r3, r31, 0x1560
/* 8134E0B8 0001C4B8  4C C6 31 82 */	crclr cr1eq
/* 8134E0BC 0001C4BC  48 1E 05 E5 */	bl OSReport
/* 8134E0C0 0001C4C0  38 60 FF F9 */	li r3, -0x7
/* 8134E0C4 0001C4C4  48 00 00 74 */	b .L_8134E138
.L_8134E0C8:
/* 8134E0C8 0001C4C8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8134E0CC 0001C4CC  7C 05 E0 40 */	cmplw r5, r28
/* 8134E0D0 0001C4D0  40 80 00 1C */	bge .L_8134E0EC
/* 8134E0D4 0001C4D4  7F 84 E3 78 */	mr r4, r28
/* 8134E0D8 0001C4D8  38 7F 15 91 */	addi r3, r31, 0x1591
/* 8134E0DC 0001C4DC  4C C6 31 82 */	crclr cr1eq
/* 8134E0E0 0001C4E0  48 1E 05 C1 */	bl OSReport
/* 8134E0E4 0001C4E4  38 60 FF F9 */	li r3, -0x7
/* 8134E0E8 0001C4E8  48 00 00 50 */	b .L_8134E138
.L_8134E0EC:
/* 8134E0EC 0001C4EC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134E0F0 0001C4F0  7C 05 E8 00 */	cmpw r5, r29
/* 8134E0F4 0001C4F4  40 80 00 1C */	bge .L_8134E110
/* 8134E0F8 0001C4F8  7F A4 EB 78 */	mr r4, r29
/* 8134E0FC 0001C4FC  38 7F 15 C4 */	addi r3, r31, 0x15c4
/* 8134E100 0001C500  4C C6 31 82 */	crclr cr1eq
/* 8134E104 0001C504  48 1E 05 9D */	bl OSReport
/* 8134E108 0001C508  38 60 FF F9 */	li r3, -0x7
/* 8134E10C 0001C50C  48 00 00 2C */	b .L_8134E138
.L_8134E110:
/* 8134E110 0001C510  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8134E114 0001C514  7C 05 F0 00 */	cmpw r5, r30
/* 8134E118 0001C518  40 80 00 1C */	bge .L_8134E134
/* 8134E11C 0001C51C  7F C4 F3 78 */	mr r4, r30
/* 8134E120 0001C520  38 7F 15 F3 */	addi r3, r31, 0x15f3
/* 8134E124 0001C524  4C C6 31 82 */	crclr cr1eq
/* 8134E128 0001C528  48 1E 05 79 */	bl OSReport
/* 8134E12C 0001C52C  38 60 FF F9 */	li r3, -0x7
/* 8134E130 0001C530  48 00 00 08 */	b .L_8134E138
.L_8134E134:
/* 8134E134 0001C534  38 60 00 00 */	li r3, 0x0
.L_8134E138:
/* 8134E138 0001C538  39 61 00 30 */	addi r11, r1, 0x30
/* 8134E13C 0001C53C  48 2A B3 D1 */	bl _restgpr_27
/* 8134E140 0001C540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8134E144 0001C544  7C 08 03 A6 */	mtlr r0
/* 8134E148 0001C548  38 21 00 30 */	addi r1, r1, 0x30
/* 8134E14C 0001C54C  4E 80 00 20 */	blr
.endfn check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll

# .text:0x5D64 | 0x8134E150 | size: 0x87C
# ipl::NandSDWorker::do_copy_nand_save_to_sd()
.fn do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv, global
/* 8134E150 0001C550  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8134E154 0001C554  7C 08 02 A6 */	mflr r0
/* 8134E158 0001C558  90 01 01 44 */	stw r0, 0x144(r1)
/* 8134E15C 0001C55C  39 61 01 40 */	addi r11, r1, 0x140
/* 8134E160 0001C560  48 2A B3 49 */	bl _savegpr_21
/* 8134E164 0001C564  3A C0 00 00 */	li r22, 0x0
/* 8134E168 0001C568  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134E16C 0001C56C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8134E170 0001C570  7C 77 1B 78 */	mr r23, r3
/* 8134E174 0001C574  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134E178 0001C578  38 A1 00 30 */	addi r5, r1, 0x30
/* 8134E17C 0001C57C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134E180 0001C580  3B 80 00 00 */	li r28, 0x0
/* 8134E184 0001C584  3B 60 00 00 */	li r27, 0x0
/* 8134E188 0001C588  3B 40 00 00 */	li r26, 0x0
/* 8134E18C 0001C58C  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E190 0001C590  3B 20 00 00 */	li r25, 0x0
/* 8134E194 0001C594  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E198 0001C598  3B 00 00 00 */	li r24, 0x0
/* 8134E19C 0001C59C  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E1A0 0001C5A0  4B FF B2 09 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134E1A4 0001C5A4  7E E3 BB 78 */	mr r3, r23
/* 8134E1A8 0001C5A8  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E1AC 0001C5AC  48 00 08 21 */	bl prepare_sd_copy__Q23ipl12NandSDWorkerFPCc
/* 8134E1B0 0001C5B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E1B4 0001C5B4  41 82 00 14 */	beq .L_8134E1C8
/* 8134E1B8 0001C5B8  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E1BC 0001C5BC  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E1C0 0001C5C0  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134E1C4 0001C5C4  48 00 07 18 */	b .L_8134E8DC
.L_8134E1C8:
/* 8134E1C8 0001C5C8  7E E3 BB 78 */	mr r3, r23
/* 8134E1CC 0001C5CC  48 00 19 D9 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 8134E1D0 0001C5D0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8134E1D4 0001C5D4  6E C6 80 00 */	xoris r6, r22, 0x8000
/* 8134E1D8 0001C5D8  7C B6 20 10 */	subfc r5, r22, r4
/* 8134E1DC 0001C5DC  7C 9E 23 78 */	mr r30, r4
/* 8134E1E0 0001C5E0  7C C6 01 10 */	subfe r6, r6, r0
/* 8134E1E4 0001C5E4  7C 7F 1B 78 */	mr r31, r3
/* 8134E1E8 0001C5E8  7C C0 01 10 */	subfe r6, r0, r0
/* 8134E1EC 0001C5EC  7C C6 00 D1 */	neg. r6, r6
/* 8134E1F0 0001C5F0  41 82 00 14 */	beq .L_8134E204
/* 8134E1F4 0001C5F4  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E1F8 0001C5F8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E1FC 0001C5FC  90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8134E200 0001C600  48 00 06 DC */	b .L_8134E8DC
.L_8134E204:
/* 8134E204 0001C604  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E208 0001C608  3E C0 00 01 */	lis r22, 0x1
/* 8134E20C 0001C60C  38 96 F0 C0 */	subi r4, r22, 0xf40
/* 8134E210 0001C610  38 A0 00 20 */	li r5, 0x20
/* 8134E214 0001C614  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E218 0001C618  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134E21C 0001C61C  48 20 C5 39 */	bl fn_8155A754
/* 8134E220 0001C620  7C 7C 1B 78 */	mr r28, r3
/* 8134E224 0001C624  38 B6 F0 C0 */	subi r5, r22, 0xf40
/* 8134E228 0001C628  38 80 00 00 */	li r4, 0x0
/* 8134E22C 0001C62C  4B FE 21 09 */	bl memset
/* 8134E230 0001C630  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E234 0001C634  7E E3 BB 78 */	mr r3, r23
/* 8134E238 0001C638  38 FC 00 20 */	addi r7, r28, 0x20
/* 8134E23C 0001C63C  39 01 00 14 */	addi r8, r1, 0x14
/* 8134E240 0001C640  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E244 0001C644  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E248 0001C648  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E24C 0001C64C  4B FF CE 01 */	bl get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 8134E250 0001C650  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E254 0001C654  7C 76 1B 78 */	mr r22, r3
/* 8134E258 0001C658  41 82 00 24 */	beq .L_8134E27C
/* 8134E25C 0001C65C  7E C4 B3 78 */	mr r4, r22
/* 8134E260 0001C660  38 7D 16 24 */	addi r3, r29, 0x1624
/* 8134E264 0001C664  4C C6 31 82 */	crclr cr1eq
/* 8134E268 0001C668  48 1E 04 39 */	bl OSReport
/* 8134E26C 0001C66C  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E270 0001C670  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E274 0001C674  92 C3 EA 24 */	stw r22, -0x15dc(r3)
/* 8134E278 0001C678  48 00 06 64 */	b .L_8134E8DC
.L_8134E27C:
/* 8134E27C 0001C67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134E280 0001C680  90 1C 00 08 */	stw r0, 0x8(r28)
/* 8134E284 0001C684  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8134E288 0001C688  54 00 07 FF */	clrlwi. r0, r0, 31
/* 8134E28C 0001C68C  41 82 00 24 */	beq .L_8134E2B0
/* 8134E290 0001C690  38 7D 16 4A */	addi r3, r29, 0x164a
/* 8134E294 0001C694  4C C6 31 82 */	crclr cr1eq
/* 8134E298 0001C698  48 1E 04 09 */	bl OSReport
/* 8134E29C 0001C69C  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E2A0 0001C6A0  38 00 FF F3 */	li r0, -0xd
/* 8134E2A4 0001C6A4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E2A8 0001C6A8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E2AC 0001C6AC  48 00 06 30 */	b .L_8134E8DC
.L_8134E2B0:
/* 8134E2B0 0001C6B0  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E2B4 0001C6B4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E2B8 0001C6B8  80 03 EA 48 */	lwz r0, -0x15b8(r3)
/* 8134E2BC 0001C6BC  80 63 EA 4C */	lwz r3, -0x15b4(r3)
/* 8134E2C0 0001C6C0  90 7C 00 04 */	stw r3, 0x4(r28)
/* 8134E2C4 0001C6C4  90 1C 00 00 */	stw r0, 0x0(r28)
/* 8134E2C8 0001C6C8  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E2CC 0001C6CC  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E2D0 0001C6D0  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E2D4 0001C6D4  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E2D8 0001C6D8  4B FF B0 25 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134E2DC 0001C6DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E2E0 0001C6E0  41 82 00 08 */	beq .L_8134E2E8
/* 8134E2E4 0001C6E4  3B 00 00 01 */	li r24, 0x1
.L_8134E2E8:
/* 8134E2E8 0001C6E8  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E2EC 0001C6EC  40 82 01 80 */	bne .L_8134E46C
/* 8134E2F0 0001C6F0  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E2F4 0001C6F4  7E E3 BB 78 */	mr r3, r23
/* 8134E2F8 0001C6F8  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E2FC 0001C6FC  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E300 0001C700  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E304 0001C704  48 00 58 A9 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134E308 0001C708  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E30C 0001C70C  40 82 00 18 */	bne .L_8134E324
/* 8134E310 0001C710  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E314 0001C714  38 00 FF FE */	li r0, -0x2
/* 8134E318 0001C718  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E31C 0001C71C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E320 0001C720  48 00 05 BC */	b .L_8134E8DC
.L_8134E324:
/* 8134E324 0001C724  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E328 0001C728  3A C0 FF FF */	li r22, -0x1
/* 8134E32C 0001C72C  38 61 00 70 */	addi r3, r1, 0x70
/* 8134E330 0001C730  38 BD 01 1C */	addi r5, r29, 0x11c
/* 8134E334 0001C734  3C C4 00 04 */	addis r6, r4, 0x4
/* 8134E338 0001C738  38 80 00 40 */	li r4, 0x40
/* 8134E33C 0001C73C  80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134E340 0001C740  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134E344 0001C744  7C 07 B0 38 */	and r7, r0, r22
/* 8134E348 0001C748  4C C6 31 82 */	crclr cr1eq
/* 8134E34C 0001C74C  48 2B 26 5D */	bl fn_816009A8
/* 8134E350 0001C750  38 61 00 70 */	addi r3, r1, 0x70
/* 8134E354 0001C754  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134E358 0001C758  38 A0 00 40 */	li r5, 0x40
/* 8134E35C 0001C75C  48 2B 40 D9 */	bl fn_81602434
/* 8134E360 0001C760  80 8D 81 58 */	lwz r4, lbl_81696198@sda21(r0)
/* 8134E364 0001C764  38 61 00 70 */	addi r3, r1, 0x70
/* 8134E368 0001C768  38 A0 00 40 */	li r5, 0x40
/* 8134E36C 0001C76C  48 2B 40 C9 */	bl fn_81602434
/* 8134E370 0001C770  38 61 00 70 */	addi r3, r1, 0x70
/* 8134E374 0001C774  38 81 00 18 */	addi r4, r1, 0x18
/* 8134E378 0001C778  48 01 1D 95 */	bl GetStatus__Q33ipl4nand7wrapperFPCcP10NANDStatus
/* 8134E37C 0001C77C  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E380 0001C780  7C 75 1B 78 */	mr r21, r3
/* 8134E384 0001C784  7E E3 BB 78 */	mr r3, r23
/* 8134E388 0001C788  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134E38C 0001C78C  7E A4 AB 78 */	mr r4, r21
/* 8134E390 0001C790  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E394 0001C794  48 00 58 C5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134E398 0001C798  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E39C 0001C79C  40 82 05 40 */	bne .L_8134E8DC
/* 8134E3A0 0001C7A0  2C 15 00 00 */	cmpwi r21, 0x0
/* 8134E3A4 0001C7A4  41 82 00 2C */	beq .L_8134E3D0
/* 8134E3A8 0001C7A8  7E A5 AB 78 */	mr r5, r21
/* 8134E3AC 0001C7AC  38 7D 16 79 */	addi r3, r29, 0x1679
/* 8134E3B0 0001C7B0  38 81 00 70 */	addi r4, r1, 0x70
/* 8134E3B4 0001C7B4  4C C6 31 82 */	crclr cr1eq
/* 8134E3B8 0001C7B8  48 1E 02 E9 */	bl OSReport
/* 8134E3BC 0001C7BC  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E3C0 0001C7C0  38 00 FF FE */	li r0, -0x2
/* 8134E3C4 0001C7C4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E3C8 0001C7C8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E3CC 0001C7CC  48 00 05 10 */	b .L_8134E8DC
.L_8134E3D0:
/* 8134E3D0 0001C7D0  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 8134E3D4 0001C7D4  7E E3 BB 78 */	mr r3, r23
/* 8134E3D8 0001C7D8  38 81 00 70 */	addi r4, r1, 0x70
/* 8134E3DC 0001C7DC  98 1C 00 0C */	stb r0, 0xc(r28)
/* 8134E3E0 0001C7E0  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 8134E3E4 0001C7E4  98 1C 00 0D */	stb r0, 0xd(r28)
/* 8134E3E8 0001C7E8  48 00 56 B5 */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 8134E3EC 0001C7EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E3F0 0001C7F0  40 80 00 14 */	bge .L_8134E404
/* 8134E3F4 0001C7F4  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E3F8 0001C7F8  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E3FC 0001C7FC  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134E400 0001C800  48 00 04 DC */	b .L_8134E8DC
.L_8134E404:
/* 8134E404 0001C804  90 7C 00 08 */	stw r3, 0x8(r28)
/* 8134E408 0001C808  38 61 00 70 */	addi r3, r1, 0x70
/* 8134E40C 0001C80C  38 BD 01 1C */	addi r5, r29, 0x11c
/* 8134E410 0001C810  38 80 00 40 */	li r4, 0x40
/* 8134E414 0001C814  80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8134E418 0001C818  3C C6 00 04 */	addis r6, r6, 0x4
/* 8134E41C 0001C81C  80 06 EA 4C */	lwz r0, -0x15b4(r6)
/* 8134E420 0001C820  80 C6 EA 48 */	lwz r6, -0x15b8(r6)
/* 8134E424 0001C824  7C 07 B0 38 */	and r7, r0, r22
/* 8134E428 0001C828  4C C6 31 82 */	crclr cr1eq
/* 8134E42C 0001C82C  48 2B 25 7D */	bl fn_816009A8
/* 8134E430 0001C830  38 61 00 70 */	addi r3, r1, 0x70
/* 8134E434 0001C834  48 01 1C 11 */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134E438 0001C838  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E43C 0001C83C  41 82 00 2C */	beq .L_8134E468
/* 8134E440 0001C840  7C 65 1B 78 */	mr r5, r3
/* 8134E444 0001C844  38 7D 16 A4 */	addi r3, r29, 0x16a4
/* 8134E448 0001C848  38 81 00 70 */	addi r4, r1, 0x70
/* 8134E44C 0001C84C  4C C6 31 82 */	crclr cr1eq
/* 8134E450 0001C850  48 1E 02 51 */	bl OSReport
/* 8134E454 0001C854  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E458 0001C858  38 00 FF FE */	li r0, -0x2
/* 8134E45C 0001C85C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E460 0001C860  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E464 0001C864  48 00 04 78 */	b .L_8134E8DC
.L_8134E468:
/* 8134E468 0001C868  3B 40 00 01 */	li r26, 0x1
.L_8134E46C:
/* 8134E46C 0001C86C  38 00 00 00 */	li r0, 0x0
/* 8134E470 0001C870  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E474 0001C874  90 01 00 10 */	stw r0, 0x10(r1)
/* 8134E478 0001C878  41 82 00 40 */	beq .L_8134E4B8
/* 8134E47C 0001C87C  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E480 0001C880  3C 60 00 01 */	lis r3, 0x1
/* 8134E484 0001C884  39 43 F0 C0 */	subi r10, r3, 0xf40
/* 8134E488 0001C888  39 01 00 10 */	addi r8, r1, 0x10
/* 8134E48C 0001C88C  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134E490 0001C890  3C 85 00 04 */	addis r4, r5, 0x4
/* 8134E494 0001C894  3C C5 00 02 */	addis r6, r5, 0x2
/* 8134E498 0001C898  38 A0 00 01 */	li r5, 0x1
/* 8134E49C 0001C89C  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E4A0 0001C8A0  38 E0 00 00 */	li r7, 0x0
/* 8134E4A4 0001C8A4  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E4A8 0001C8A8  39 20 00 03 */	li r9, 0x3
/* 8134E4AC 0001C8AC  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E4B0 0001C8B0  48 27 2E CD */	bl fn_815C137C
/* 8134E4B4 0001C8B4  48 00 00 3C */	b .L_8134E4F0
.L_8134E4B8:
/* 8134E4B8 0001C8B8  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E4BC 0001C8BC  3C 60 00 01 */	lis r3, 0x1
/* 8134E4C0 0001C8C0  39 43 F0 C0 */	subi r10, r3, 0xf40
/* 8134E4C4 0001C8C4  39 01 00 10 */	addi r8, r1, 0x10
/* 8134E4C8 0001C8C8  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134E4CC 0001C8CC  3C 85 00 04 */	addis r4, r5, 0x4
/* 8134E4D0 0001C8D0  3C C5 00 02 */	addis r6, r5, 0x2
/* 8134E4D4 0001C8D4  38 A0 00 0E */	li r5, 0xe
/* 8134E4D8 0001C8D8  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E4DC 0001C8DC  38 E0 00 00 */	li r7, 0x0
/* 8134E4E0 0001C8E0  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E4E4 0001C8E4  39 20 00 03 */	li r9, 0x3
/* 8134E4E8 0001C8E8  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E4EC 0001C8EC  48 27 2E 91 */	bl fn_815C137C
.L_8134E4F0:
/* 8134E4F0 0001C8F0  2C 03 F4 46 */	cmpwi r3, -0xbba
/* 8134E4F4 0001C8F4  40 82 00 38 */	bne .L_8134E52C
/* 8134E4F8 0001C8F8  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E4FC 0001C8FC  7C 67 1B 78 */	mr r7, r3
/* 8134E500 0001C900  38 7D 16 D0 */	addi r3, r29, 0x16d0
/* 8134E504 0001C904  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E508 0001C908  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E50C 0001C90C  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E510 0001C910  4C C6 31 82 */	crclr cr1eq
/* 8134E514 0001C914  48 1E 01 8D */	bl OSReport
/* 8134E518 0001C918  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E51C 0001C91C  38 00 FF F3 */	li r0, -0xd
/* 8134E520 0001C920  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E524 0001C924  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E528 0001C928  48 00 03 B4 */	b .L_8134E8DC
.L_8134E52C:
/* 8134E52C 0001C92C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E530 0001C930  41 82 00 2C */	beq .L_8134E55C
/* 8134E534 0001C934  7C 65 1B 78 */	mr r5, r3
/* 8134E538 0001C938  38 7D 17 1F */	addi r3, r29, 0x171f
/* 8134E53C 0001C93C  38 81 00 70 */	addi r4, r1, 0x70
/* 8134E540 0001C940  4C C6 31 82 */	crclr cr1eq
/* 8134E544 0001C944  48 1E 01 5D */	bl OSReport
/* 8134E548 0001C948  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E54C 0001C94C  38 00 FF FE */	li r0, -0x2
/* 8134E550 0001C950  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E554 0001C954  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E558 0001C958  48 00 03 84 */	b .L_8134E8DC
.L_8134E55C:
/* 8134E55C 0001C95C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8134E560 0001C960  3A C0 00 00 */	li r22, 0x0
/* 8134E564 0001C964  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8134E568 0001C968  3C 64 00 01 */	addis r3, r4, 0x1
/* 8134E56C 0001C96C  6E C5 80 00 */	xoris r5, r22, 0x8000
/* 8134E570 0001C970  38 63 F0 C0 */	subi r3, r3, 0xf40
/* 8134E574 0001C974  7C 63 F0 10 */	subfc r3, r3, r30
/* 8134E578 0001C978  7C A5 01 10 */	subfe r5, r5, r0
/* 8134E57C 0001C97C  7C A0 01 10 */	subfe r5, r0, r0
/* 8134E580 0001C980  7C A5 00 D1 */	neg. r5, r5
/* 8134E584 0001C984  41 82 00 24 */	beq .L_8134E5A8
/* 8134E588 0001C988  38 7D 17 47 */	addi r3, r29, 0x1747
/* 8134E58C 0001C98C  4C C6 31 82 */	crclr cr1eq
/* 8134E590 0001C990  48 1E 01 11 */	bl OSReport
/* 8134E594 0001C994  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E598 0001C998  38 00 FF F9 */	li r0, -0x7
/* 8134E59C 0001C99C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E5A0 0001C9A0  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E5A4 0001C9A4  48 00 03 38 */	b .L_8134E8DC
.L_8134E5A8:
/* 8134E5A8 0001C9A8  3C 80 81 61 */	lis r4, lbl_8160D648@ha
/* 8134E5AC 0001C9AC  38 7C 00 0E */	addi r3, r28, 0xe
/* 8134E5B0 0001C9B0  38 84 D6 48 */	addi r4, r4, lbl_8160D648@l
/* 8134E5B4 0001C9B4  38 A0 00 10 */	li r5, 0x10
/* 8134E5B8 0001C9B8  4B FE 1C 79 */	bl memcpy
/* 8134E5BC 0001C9BC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8134E5C0 0001C9C0  48 14 52 35 */	bl fn_814937F4
/* 8134E5C4 0001C9C4  3F C0 00 01 */	lis r30, 0x1
/* 8134E5C8 0001C9C8  7F 84 E3 78 */	mr r4, r28
/* 8134E5CC 0001C9CC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8134E5D0 0001C9D0  38 BE F0 C0 */	subi r5, r30, 0xf40
/* 8134E5D4 0001C9D4  48 14 52 61 */	bl fn_81493834
/* 8134E5D8 0001C9D8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8134E5DC 0001C9DC  38 81 00 20 */	addi r4, r1, 0x20
/* 8134E5E0 0001C9E0  48 14 53 45 */	bl fn_81493924
/* 8134E5E4 0001C9E4  38 7C 00 0E */	addi r3, r28, 0xe
/* 8134E5E8 0001C9E8  38 81 00 20 */	addi r4, r1, 0x20
/* 8134E5EC 0001C9EC  38 A0 00 10 */	li r5, 0x10
/* 8134E5F0 0001C9F0  4B FE 1C 41 */	bl memcpy
/* 8134E5F4 0001C9F4  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E5F8 0001C9F8  38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134E5FC 0001C9FC  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E600 0001CA00  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134E604 0001CA04  48 20 D0 65 */	bl fn_8155B668
/* 8134E608 0001CA08  7C 7B 1B 78 */	mr r27, r3
/* 8134E60C 0001CA0C  7F 83 E3 78 */	mr r3, r28
/* 8134E610 0001CA10  38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134E614 0001CA14  7F 65 DB 78 */	mr r5, r27
/* 8134E618 0001CA18  48 00 59 C1 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134E61C 0001CA1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E620 0001CA20  41 82 00 18 */	beq .L_8134E638
/* 8134E624 0001CA24  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E628 0001CA28  38 00 FF FE */	li r0, -0x2
/* 8134E62C 0001CA2C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E630 0001CA30  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E634 0001CA34  48 00 02 A8 */	b .L_8134E8DC
.L_8134E638:
/* 8134E638 0001CA38  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E63C 0001CA3C  3B 20 00 01 */	li r25, 0x1
/* 8134E640 0001CA40  41 82 00 3C */	beq .L_8134E67C
/* 8134E644 0001CA44  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E648 0001CA48  38 E1 00 30 */	addi r7, r1, 0x30
/* 8134E64C 0001CA4C  39 01 00 10 */	addi r8, r1, 0x10
/* 8134E650 0001CA50  39 5E F0 C0 */	subi r10, r30, 0xf40
/* 8134E654 0001CA54  92 C1 00 08 */	stw r22, 0x8(r1)
/* 8134E658 0001CA58  3C C3 00 02 */	addis r6, r3, 0x2
/* 8134E65C 0001CA5C  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E660 0001CA60  38 A0 00 01 */	li r5, 0x1
/* 8134E664 0001CA64  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E668 0001CA68  39 20 00 03 */	li r9, 0x3
/* 8134E66C 0001CA6C  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E670 0001CA70  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E674 0001CA74  48 27 2D 09 */	bl fn_815C137C
/* 8134E678 0001CA78  48 00 00 38 */	b .L_8134E6B0
.L_8134E67C:
/* 8134E67C 0001CA7C  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E680 0001CA80  38 E1 00 30 */	addi r7, r1, 0x30
/* 8134E684 0001CA84  39 01 00 10 */	addi r8, r1, 0x10
/* 8134E688 0001CA88  39 5E F0 C0 */	subi r10, r30, 0xf40
/* 8134E68C 0001CA8C  92 C1 00 08 */	stw r22, 0x8(r1)
/* 8134E690 0001CA90  3C C3 00 02 */	addis r6, r3, 0x2
/* 8134E694 0001CA94  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E698 0001CA98  38 A0 00 0E */	li r5, 0xe
/* 8134E69C 0001CA9C  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134E6A0 0001CAA0  39 20 00 03 */	li r9, 0x3
/* 8134E6A4 0001CAA4  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134E6A8 0001CAA8  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 8134E6AC 0001CAAC  48 27 2C D1 */	bl fn_815C137C
.L_8134E6B0:
/* 8134E6B0 0001CAB0  2C 03 F4 46 */	cmpwi r3, -0xbba
/* 8134E6B4 0001CAB4  40 82 00 38 */	bne .L_8134E6EC
/* 8134E6B8 0001CAB8  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E6BC 0001CABC  7C 67 1B 78 */	mr r7, r3
/* 8134E6C0 0001CAC0  38 7D 16 D0 */	addi r3, r29, 0x16d0
/* 8134E6C4 0001CAC4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E6C8 0001CAC8  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E6CC 0001CACC  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E6D0 0001CAD0  4C C6 31 82 */	crclr cr1eq
/* 8134E6D4 0001CAD4  48 1D FF CD */	bl OSReport
/* 8134E6D8 0001CAD8  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E6DC 0001CADC  38 00 FF F3 */	li r0, -0xd
/* 8134E6E0 0001CAE0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E6E4 0001CAE4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E6E8 0001CAE8  48 00 01 F4 */	b .L_8134E8DC
.L_8134E6EC:
/* 8134E6EC 0001CAEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E6F0 0001CAF0  41 82 00 2C */	beq .L_8134E71C
/* 8134E6F4 0001CAF4  7C 65 1B 78 */	mr r5, r3
/* 8134E6F8 0001CAF8  38 7D 17 1F */	addi r3, r29, 0x171f
/* 8134E6FC 0001CAFC  38 81 00 70 */	addi r4, r1, 0x70
/* 8134E700 0001CB00  4C C6 31 82 */	crclr cr1eq
/* 8134E704 0001CB04  48 1D FF 9D */	bl OSReport
/* 8134E708 0001CB08  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E70C 0001CB0C  38 00 FF FE */	li r0, -0x2
/* 8134E710 0001CB10  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E714 0001CB14  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E718 0001CB18  48 00 01 C4 */	b .L_8134E8DC
.L_8134E71C:
/* 8134E71C 0001CB1C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8134E720 0001CB20  38 7D 17 81 */	addi r3, r29, 0x1781
/* 8134E724 0001CB24  4C C6 31 82 */	crclr cr1eq
/* 8134E728 0001CB28  48 1D FF 79 */	bl OSReport
/* 8134E72C 0001CB2C  38 61 00 30 */	addi r3, r1, 0x30
/* 8134E730 0001CB30  38 8D 81 AA */	li r4, lbl_816961EA@sda21
/* 8134E734 0001CB34  48 29 99 0D */	bl fn_815E8040
/* 8134E738 0001CB38  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E73C 0001CB3C  7C 75 1B 78 */	mr r21, r3
/* 8134E740 0001CB40  40 82 00 30 */	bne .L_8134E770
/* 8134E744 0001CB44  38 7D 17 AE */	addi r3, r29, 0x17ae
/* 8134E748 0001CB48  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E74C 0001CB4C  4C C6 31 82 */	crclr cr1eq
/* 8134E750 0001CB50  48 1D FF 51 */	bl OSReport
/* 8134E754 0001CB54  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E758 0001CB58  7E E3 BB 78 */	mr r3, r23
/* 8134E75C 0001CB5C  38 80 FF FF */	li r4, -0x1
/* 8134E760 0001CB60  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E764 0001CB64  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E768 0001CB68  48 00 55 4D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E76C 0001CB6C  48 00 01 70 */	b .L_8134E8DC
.L_8134E770:
/* 8134E770 0001CB70  38 7D 17 D0 */	addi r3, r29, 0x17d0
/* 8134E774 0001CB74  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E778 0001CB78  4C C6 31 82 */	crclr cr1eq
/* 8134E77C 0001CB7C  48 1D FF 25 */	bl OSReport
/* 8134E780 0001CB80  7E A3 AB 78 */	mr r3, r21
/* 8134E784 0001CB84  38 80 00 00 */	li r4, 0x0
/* 8134E788 0001CB88  38 A0 00 00 */	li r5, 0x0
/* 8134E78C 0001CB8C  48 29 99 15 */	bl fn_815E80A0
/* 8134E790 0001CB90  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E794 0001CB94  7C 64 1B 78 */	mr r4, r3
/* 8134E798 0001CB98  7E E3 BB 78 */	mr r3, r23
/* 8134E79C 0001CB9C  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E7A0 0001CBA0  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E7A4 0001CBA4  48 00 55 11 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E7A8 0001CBA8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E7AC 0001CBAC  41 82 00 20 */	beq .L_8134E7CC
/* 8134E7B0 0001CBB0  38 7D 17 F0 */	addi r3, r29, 0x17f0
/* 8134E7B4 0001CBB4  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E7B8 0001CBB8  4C C6 31 82 */	crclr cr1eq
/* 8134E7BC 0001CBBC  48 1D FE E5 */	bl OSReport
/* 8134E7C0 0001CBC0  7E A3 AB 78 */	mr r3, r21
/* 8134E7C4 0001CBC4  48 29 98 25 */	bl fn_815E7FE8
/* 8134E7C8 0001CBC8  48 00 01 14 */	b .L_8134E8DC
.L_8134E7CC:
/* 8134E7CC 0001CBCC  3C 80 00 01 */	lis r4, 0x1
/* 8134E7D0 0001CBD0  7F 63 DB 78 */	mr r3, r27
/* 8134E7D4 0001CBD4  7E A6 AB 78 */	mr r6, r21
/* 8134E7D8 0001CBD8  38 A0 00 01 */	li r5, 0x1
/* 8134E7DC 0001CBDC  38 84 F0 C0 */	subi r4, r4, 0xf40
/* 8134E7E0 0001CBE0  48 29 99 71 */	bl fn_815E8150
/* 8134E7E4 0001CBE4  28 03 00 01 */	cmplwi r3, 0x1
/* 8134E7E8 0001CBE8  41 82 00 3C */	beq .L_8134E824
/* 8134E7EC 0001CBEC  7C 65 1B 78 */	mr r5, r3
/* 8134E7F0 0001CBF0  38 7D 18 12 */	addi r3, r29, 0x1812
/* 8134E7F4 0001CBF4  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E7F8 0001CBF8  4C C6 31 82 */	crclr cr1eq
/* 8134E7FC 0001CBFC  48 1D FE A5 */	bl OSReport
/* 8134E800 0001CC00  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E804 0001CC04  7E E3 BB 78 */	mr r3, r23
/* 8134E808 0001CC08  38 80 FF FF */	li r4, -0x1
/* 8134E80C 0001CC0C  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E810 0001CC10  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E814 0001CC14  48 00 54 A1 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E818 0001CC18  7E A3 AB 78 */	mr r3, r21
/* 8134E81C 0001CC1C  48 29 97 CD */	bl fn_815E7FE8
/* 8134E820 0001CC20  48 00 00 BC */	b .L_8134E8DC
.L_8134E824:
/* 8134E824 0001CC24  7E A3 AB 78 */	mr r3, r21
/* 8134E828 0001CC28  48 29 97 C1 */	bl fn_815E7FE8
/* 8134E82C 0001CC2C  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8134E830 0001CC30  7C 64 1B 78 */	mr r4, r3
/* 8134E834 0001CC34  7E E3 BB 78 */	mr r3, r23
/* 8134E838 0001CC38  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134E83C 0001CC3C  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134E840 0001CC40  48 00 54 75 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134E844 0001CC44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E848 0001CC48  41 82 00 18 */	beq .L_8134E860
/* 8134E84C 0001CC4C  38 7D 18 39 */	addi r3, r29, 0x1839
/* 8134E850 0001CC50  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E854 0001CC54  4C C6 31 82 */	crclr cr1eq
/* 8134E858 0001CC58  48 1D FE 49 */	bl OSReport
/* 8134E85C 0001CC5C  48 00 00 80 */	b .L_8134E8DC
.L_8134E860:
/* 8134E860 0001CC60  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E864 0001CC64  7E E3 BB 78 */	mr r3, r23
/* 8134E868 0001CC68  80 ED 81 64 */	lwz r7, lbl_816961A4@sda21(r0)
/* 8134E86C 0001CC6C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E870 0001CC70  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E874 0001CC74  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E878 0001CC78  48 00 56 55 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 8134E87C 0001CC7C  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E880 0001CC80  7C 7E 1B 78 */	mr r30, r3
/* 8134E884 0001CC84  80 ED 81 68 */	lwz r7, lbl_816961A8@sda21(r0)
/* 8134E888 0001CC88  7E E3 BB 78 */	mr r3, r23
/* 8134E88C 0001CC8C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134E890 0001CC90  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134E894 0001CC94  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134E898 0001CC98  48 00 56 35 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 8134E89C 0001CC9C  2C 18 00 00 */	cmpwi r24, 0x0
/* 8134E8A0 0001CCA0  38 00 00 00 */	li r0, 0x0
/* 8134E8A4 0001CCA4  41 82 00 08 */	beq .L_8134E8AC
/* 8134E8A8 0001CCA8  38 00 00 01 */	li r0, 0x1
.L_8134E8AC:
/* 8134E8AC 0001CCAC  54 00 10 3A */	slwi r0, r0, 2
/* 8134E8B0 0001CCB0  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8134E8B4 0001CCB4  7C 05 F3 78 */	or r5, r0, r30
/* 8134E8B8 0001CCB8  54 60 08 3C */	slwi r0, r3, 1
/* 8134E8BC 0001CCBC  3C 64 00 04 */	addis r3, r4, 0x4
/* 8134E8C0 0001CCC0  7C A0 03 78 */	or r0, r5, r0
/* 8134E8C4 0001CCC4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134E8C8 0001CCC8  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E8CC 0001CCCC  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134E8D0 0001CCD0  80 64 EA 30 */	lwz r3, -0x15d0(r4)
/* 8134E8D4 0001CCD4  38 03 00 01 */	addi r0, r3, 0x1
/* 8134E8D8 0001CCD8  90 04 EA 30 */	stw r0, -0x15d0(r4)
.L_8134E8DC:
/* 8134E8DC 0001CCDC  2C 1C 00 00 */	cmpwi r28, 0x0
/* 8134E8E0 0001CCE0  41 82 00 18 */	beq .L_8134E8F8
/* 8134E8E4 0001CCE4  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E8E8 0001CCE8  7F 84 E3 78 */	mr r4, r28
/* 8134E8EC 0001CCEC  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E8F0 0001CCF0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134E8F4 0001CCF4  48 20 C1 11 */	bl fn_8155AA04
.L_8134E8F8:
/* 8134E8F8 0001CCF8  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134E8FC 0001CCFC  41 82 00 18 */	beq .L_8134E914
/* 8134E900 0001CD00  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E904 0001CD04  7F 64 DB 78 */	mr r4, r27
/* 8134E908 0001CD08  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134E90C 0001CD0C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134E910 0001CD10  48 20 CD 69 */	bl fn_8155B678
.L_8134E914:
/* 8134E914 0001CD14  7E E3 BB 78 */	mr r3, r23
/* 8134E918 0001CD18  38 C0 00 02 */	li r6, 0x2
/* 8134E91C 0001CD1C  38 A0 00 01 */	li r5, 0x1
/* 8134E920 0001CD20  48 00 52 8D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134E924 0001CD24  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8134E928 0001CD28  41 82 00 28 */	beq .L_8134E950
/* 8134E92C 0001CD2C  80 6D 81 A4 */	lwz r3, lbl_816961E4@sda21(r0)
/* 8134E930 0001CD30  48 01 17 15 */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134E934 0001CD34  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E938 0001CD38  41 82 00 18 */	beq .L_8134E950
/* 8134E93C 0001CD3C  80 8D 81 A4 */	lwz r4, lbl_816961E4@sda21(r0)
/* 8134E940 0001CD40  7C 65 1B 78 */	mr r5, r3
/* 8134E944 0001CD44  38 7D 16 A4 */	addi r3, r29, 0x16a4
/* 8134E948 0001CD48  4C C6 31 82 */	crclr cr1eq
/* 8134E94C 0001CD4C  48 1D FD 55 */	bl OSReport
.L_8134E950:
/* 8134E950 0001CD50  80 77 00 00 */	lwz r3, 0x0(r23)
/* 8134E954 0001CD54  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134E958 0001CD58  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8134E95C 0001CD5C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134E960 0001CD60  40 80 00 54 */	bge .L_8134E9B4
/* 8134E964 0001CD64  2C 19 00 00 */	cmpwi r25, 0x0
/* 8134E968 0001CD68  41 82 00 4C */	beq .L_8134E9B4
/* 8134E96C 0001CD6C  38 61 00 30 */	addi r3, r1, 0x30
/* 8134E970 0001CD70  48 29 9A 41 */	bl fn_815E83B0
/* 8134E974 0001CD74  7C 64 1B 78 */	mr r4, r3
/* 8134E978 0001CD78  7E E3 BB 78 */	mr r3, r23
/* 8134E97C 0001CD7C  38 A0 00 00 */	li r5, 0x0
/* 8134E980 0001CD80  48 00 54 81 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134E984 0001CD84  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134E988 0001CD88  40 82 00 18 */	bne .L_8134E9A0
/* 8134E98C 0001CD8C  38 7D 18 5C */	addi r3, r29, 0x185c
/* 8134E990 0001CD90  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E994 0001CD94  4C C6 31 82 */	crclr cr1eq
/* 8134E998 0001CD98  48 1D FD 09 */	bl OSReport
/* 8134E99C 0001CD9C  48 00 00 18 */	b .L_8134E9B4
.L_8134E9A0:
/* 8134E9A0 0001CDA0  7C 65 1B 78 */	mr r5, r3
/* 8134E9A4 0001CDA4  38 7D 18 99 */	addi r3, r29, 0x1899
/* 8134E9A8 0001CDA8  38 81 00 30 */	addi r4, r1, 0x30
/* 8134E9AC 0001CDAC  4C C6 31 82 */	crclr cr1eq
/* 8134E9B0 0001CDB0  48 1D FC F1 */	bl OSReport
.L_8134E9B4:
/* 8134E9B4 0001CDB4  39 61 01 40 */	addi r11, r1, 0x140
/* 8134E9B8 0001CDB8  48 2A AB 3D */	bl _restgpr_21
/* 8134E9BC 0001CDBC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8134E9C0 0001CDC0  7C 08 03 A6 */	mtlr r0
/* 8134E9C4 0001CDC4  38 21 01 40 */	addi r1, r1, 0x140
/* 8134E9C8 0001CDC8  4E 80 00 20 */	blr
.endfn do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv

# .text:0x65E0 | 0x8134E9CC | size: 0x154
# ipl::NandSDWorker::prepare_sd_copy(const char*)
.fn prepare_sd_copy__Q23ipl12NandSDWorkerFPCc, global
/* 8134E9CC 0001CDCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8134E9D0 0001CDD0  7C 08 02 A6 */	mflr r0
/* 8134E9D4 0001CDD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8134E9D8 0001CDD8  39 61 00 40 */	addi r11, r1, 0x40
/* 8134E9DC 0001CDDC  48 2A AA E5 */	bl _savegpr_27
/* 8134E9E0 0001CDE0  7C 9C 23 78 */	mr r28, r4
/* 8134E9E4 0001CDE4  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134E9E8 0001CDE8  7C 7B 1B 78 */	mr r27, r3
/* 8134E9EC 0001CDEC  38 81 00 08 */	addi r4, r1, 0x8
/* 8134E9F0 0001CDF0  7F 83 E3 78 */	mr r3, r28
/* 8134E9F4 0001CDF4  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134E9F8 0001CDF8  48 29 97 2D */	bl fn_815E8124
/* 8134E9FC 0001CDFC  7C 7D 1B 78 */	mr r29, r3
/* 8134EA00 0001CE00  7F 63 DB 78 */	mr r3, r27
/* 8134EA04 0001CE04  7F A4 EB 78 */	mr r4, r29
/* 8134EA08 0001CE08  38 A0 00 00 */	li r5, 0x0
/* 8134EA0C 0001CE0C  48 00 53 F5 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134EA10 0001CE10  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EA14 0001CE14  7C 7E 1B 78 */	mr r30, r3
/* 8134EA18 0001CE18  40 82 00 8C */	bne .L_8134EAA4
/* 8134EA1C 0001CE1C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8134EA20 0001CE20  28 00 F0 C0 */	cmplwi r0, 0xf0c0
/* 8134EA24 0001CE24  40 81 00 30 */	ble .L_8134EA54
/* 8134EA28 0001CE28  88 81 00 18 */	lbz r4, 0x18(r1)
/* 8134EA2C 0001CE2C  7F 63 DB 78 */	mr r3, r27
/* 8134EA30 0001CE30  48 00 56 D9 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 8134EA34 0001CE34  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EA38 0001CE38  41 82 00 1C */	beq .L_8134EA54
/* 8134EA3C 0001CE3C  7F 84 E3 78 */	mr r4, r28
/* 8134EA40 0001CE40  38 7F 18 C0 */	addi r3, r31, 0x18c0
/* 8134EA44 0001CE44  4C C6 31 82 */	crclr cr1eq
/* 8134EA48 0001CE48  48 1D FC 59 */	bl OSReport
/* 8134EA4C 0001CE4C  38 60 FF FA */	li r3, -0x6
/* 8134EA50 0001CE50  48 00 00 B8 */	b .L_8134EB08
.L_8134EA54:
/* 8134EA54 0001CE54  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134EA58 0001CE58  40 82 00 AC */	bne .L_8134EB04
/* 8134EA5C 0001CE5C  7F 83 E3 78 */	mr r3, r28
/* 8134EA60 0001CE60  48 29 99 51 */	bl fn_815E83B0
/* 8134EA64 0001CE64  7C 64 1B 78 */	mr r4, r3
/* 8134EA68 0001CE68  7F 63 DB 78 */	mr r3, r27
/* 8134EA6C 0001CE6C  38 A0 00 00 */	li r5, 0x0
/* 8134EA70 0001CE70  48 00 53 91 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134EA74 0001CE74  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EA78 0001CE78  7C 7E 1B 78 */	mr r30, r3
/* 8134EA7C 0001CE7C  41 82 00 88 */	beq .L_8134EB04
/* 8134EA80 0001CE80  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134EA84 0001CE84  41 82 00 80 */	beq .L_8134EB04
/* 8134EA88 0001CE88  7F 84 E3 78 */	mr r4, r28
/* 8134EA8C 0001CE8C  7F C5 F3 78 */	mr r5, r30
/* 8134EA90 0001CE90  38 7F 18 99 */	addi r3, r31, 0x1899
/* 8134EA94 0001CE94  4C C6 31 82 */	crclr cr1eq
/* 8134EA98 0001CE98  48 1D FC 09 */	bl OSReport
/* 8134EA9C 0001CE9C  7F C3 F3 78 */	mr r3, r30
/* 8134EAA0 0001CEA0  48 00 00 68 */	b .L_8134EB08
.L_8134EAA4:
/* 8134EAA4 0001CEA4  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134EAA8 0001CEA8  40 82 00 40 */	bne .L_8134EAE8
/* 8134EAAC 0001CEAC  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8134EAB0 0001CEB0  7F 63 DB 78 */	mr r3, r27
/* 8134EAB4 0001CEB4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134EAB8 0001CEB8  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8134EABC 0001CEBC  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 8134EAC0 0001CEC0  48 00 00 61 */	bl create_sd_backup_dir__Q23ipl12NandSDWorkerFUx
/* 8134EAC4 0001CEC4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EAC8 0001CEC8  7C 7E 1B 78 */	mr r30, r3
/* 8134EACC 0001CECC  41 82 00 38 */	beq .L_8134EB04
/* 8134EAD0 0001CED0  7F C4 F3 78 */	mr r4, r30
/* 8134EAD4 0001CED4  38 7F 18 EC */	addi r3, r31, 0x18ec
/* 8134EAD8 0001CED8  4C C6 31 82 */	crclr cr1eq
/* 8134EADC 0001CEDC  48 1D FB C5 */	bl OSReport
/* 8134EAE0 0001CEE0  7F C3 F3 78 */	mr r3, r30
/* 8134EAE4 0001CEE4  48 00 00 24 */	b .L_8134EB08
.L_8134EAE8:
/* 8134EAE8 0001CEE8  7F 84 E3 78 */	mr r4, r28
/* 8134EAEC 0001CEEC  7F C5 F3 78 */	mr r5, r30
/* 8134EAF0 0001CEF0  38 7F 19 1C */	addi r3, r31, 0x191c
/* 8134EAF4 0001CEF4  4C C6 31 82 */	crclr cr1eq
/* 8134EAF8 0001CEF8  48 1D FB A9 */	bl OSReport
/* 8134EAFC 0001CEFC  7F C3 F3 78 */	mr r3, r30
/* 8134EB00 0001CF00  48 00 00 08 */	b .L_8134EB08
.L_8134EB04:
/* 8134EB04 0001CF04  38 60 00 00 */	li r3, 0x0
.L_8134EB08:
/* 8134EB08 0001CF08  39 61 00 40 */	addi r11, r1, 0x40
/* 8134EB0C 0001CF0C  48 2A AA 01 */	bl _restgpr_27
/* 8134EB10 0001CF10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8134EB14 0001CF14  7C 08 03 A6 */	mtlr r0
/* 8134EB18 0001CF18  38 21 00 40 */	addi r1, r1, 0x40
/* 8134EB1C 0001CF1C  4E 80 00 20 */	blr
.endfn prepare_sd_copy__Q23ipl12NandSDWorkerFPCc

# .text:0x6734 | 0x8134EB20 | size: 0x178
# ipl::NandSDWorker::create_sd_backup_dir(unsigned long long)
.fn create_sd_backup_dir__Q23ipl12NandSDWorkerFUx, global
/* 8134EB20 0001CF20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8134EB24 0001CF24  7C 08 02 A6 */	mflr r0
/* 8134EB28 0001CF28  90 01 00 94 */	stw r0, 0x94(r1)
/* 8134EB2C 0001CF2C  39 61 00 90 */	addi r11, r1, 0x90
/* 8134EB30 0001CF30  48 2A A9 89 */	bl _savegpr_25
/* 8134EB34 0001CF34  3D 40 81 61 */	lis r10, lbl_8160D658@ha
/* 8134EB38 0001CF38  85 2A D6 58 */	lwzu r9, lbl_8160D658@l(r10)
/* 8134EB3C 0001CF3C  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134EB40 0001CF40  39 60 FF FF */	li r11, -0x1
/* 8134EB44 0001CF44  81 0A 00 04 */	lwz r8, 0x4(r10)
/* 8134EB48 0001CF48  7C 7F 1B 78 */	mr r31, r3
/* 8134EB4C 0001CF4C  80 EA 00 08 */	lwz r7, 0x8(r10)
/* 8134EB50 0001CF50  7C C4 33 78 */	mr r4, r6
/* 8134EB54 0001CF54  80 0A 00 0C */	lwz r0, 0xc(r10)
/* 8134EB58 0001CF58  7C A3 2B 78 */	mr r3, r5
/* 8134EB5C 0001CF5C  91 21 00 08 */	stw r9, 0x8(r1)
/* 8134EB60 0001CF60  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 8134EB64 0001CF64  7C DD 58 38 */	and r29, r6, r11
/* 8134EB68 0001CF68  91 01 00 0C */	stw r8, 0xc(r1)
/* 8134EB6C 0001CF6C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8134EB70 0001CF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8134EB74 0001CF74  4B FF A7 89 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134EB78 0001CF78  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EB7C 0001CF7C  41 82 00 20 */	beq .L_8134EB9C
/* 8134EB80 0001CF80  7F A6 EB 78 */	mr r6, r29
/* 8134EB84 0001CF84  38 61 00 2C */	addi r3, r1, 0x2c
/* 8134EB88 0001CF88  38 BC 19 6B */	addi r5, r28, 0x196b
/* 8134EB8C 0001CF8C  38 80 00 40 */	li r4, 0x40
/* 8134EB90 0001CF90  4C C6 31 82 */	crclr cr1eq
/* 8134EB94 0001CF94  48 2B 1E 15 */	bl fn_816009A8
/* 8134EB98 0001CF98  48 00 00 28 */	b .L_8134EBC0
.L_8134EB9C:
/* 8134EB9C 0001CF9C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8134EBA0 0001CFA0  38 BC 19 83 */	addi r5, r28, 0x1983
/* 8134EBA4 0001CFA4  57 A6 46 3E */	srwi r6, r29, 24
/* 8134EBA8 0001CFA8  57 A7 86 3E */	extrwi r7, r29, 8, 8
/* 8134EBAC 0001CFAC  57 A8 C6 3E */	extrwi r8, r29, 8, 16
/* 8134EBB0 0001CFB0  57 A9 06 3E */	clrlwi r9, r29, 24
/* 8134EBB4 0001CFB4  38 80 00 40 */	li r4, 0x40
/* 8134EBB8 0001CFB8  4C C6 31 82 */	crclr cr1eq
/* 8134EBBC 0001CFBC  48 2B 1D ED */	bl fn_816009A8
.L_8134EBC0:
/* 8134EBC0 0001CFC0  38 01 00 2C */	addi r0, r1, 0x2c
/* 8134EBC4 0001CFC4  3B A1 00 08 */	addi r29, r1, 0x8
/* 8134EBC8 0001CFC8  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134EBCC 0001CFCC  3B 40 00 00 */	li r26, 0x0
/* 8134EBD0 0001CFD0  3B C0 00 00 */	li r30, 0x0
.L_8134EBD4:
/* 8134EBD4 0001CFD4  7F 7D F0 2E */	lwzx r27, r29, r30
/* 8134EBD8 0001CFD8  38 81 00 18 */	addi r4, r1, 0x18
/* 8134EBDC 0001CFDC  7F 63 DB 78 */	mr r3, r27
/* 8134EBE0 0001CFE0  48 29 95 45 */	bl fn_815E8124
/* 8134EBE4 0001CFE4  7C 64 1B 78 */	mr r4, r3
/* 8134EBE8 0001CFE8  7F E3 FB 78 */	mr r3, r31
/* 8134EBEC 0001CFEC  38 A0 00 00 */	li r5, 0x0
/* 8134EBF0 0001CFF0  48 00 52 11 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134EBF4 0001CFF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EBF8 0001CFF8  7C 79 1B 78 */	mr r25, r3
/* 8134EBFC 0001CFFC  40 82 00 28 */	bne .L_8134EC24
/* 8134EC00 0001D000  88 A1 00 28 */	lbz r5, 0x28(r1)
/* 8134EC04 0001D004  54 A0 06 F7 */	rlwinm. r0, r5, 0, 27, 27
/* 8134EC08 0001D008  40 82 00 50 */	bne .L_8134EC58
/* 8134EC0C 0001D00C  7F 64 DB 78 */	mr r4, r27
/* 8134EC10 0001D010  38 7C 19 9F */	addi r3, r28, 0x199f
/* 8134EC14 0001D014  4C C6 31 82 */	crclr cr1eq
/* 8134EC18 0001D018  48 1D FA 89 */	bl OSReport
/* 8134EC1C 0001D01C  38 60 FF F4 */	li r3, -0xc
/* 8134EC20 0001D020  48 00 00 60 */	b .L_8134EC80
.L_8134EC24:
/* 8134EC24 0001D024  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134EC28 0001D028  41 82 00 20 */	beq .L_8134EC48
/* 8134EC2C 0001D02C  7F 64 DB 78 */	mr r4, r27
/* 8134EC30 0001D030  7F 25 CB 78 */	mr r5, r25
/* 8134EC34 0001D034  38 7C 19 1C */	addi r3, r28, 0x191c
/* 8134EC38 0001D038  4C C6 31 82 */	crclr cr1eq
/* 8134EC3C 0001D03C  48 1D FA 65 */	bl OSReport
/* 8134EC40 0001D040  7F 23 CB 78 */	mr r3, r25
/* 8134EC44 0001D044  48 00 00 3C */	b .L_8134EC80
.L_8134EC48:
/* 8134EC48 0001D048  3B 5A 00 01 */	addi r26, r26, 0x1
/* 8134EC4C 0001D04C  3B DE 00 04 */	addi r30, r30, 0x4
/* 8134EC50 0001D050  28 1A 00 04 */	cmplwi r26, 0x4
/* 8134EC54 0001D054  41 80 FF 80 */	blt .L_8134EBD4
.L_8134EC58:
/* 8134EC58 0001D058  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8134EC5C 0001D05C  41 82 00 20 */	beq .L_8134EC7C
/* 8134EC60 0001D060  57 40 10 3A */	slwi r0, r26, 2
/* 8134EC64 0001D064  38 61 00 04 */	addi r3, r1, 0x4
/* 8134EC68 0001D068  7C 83 00 2E */	lwzx r4, r3, r0
/* 8134EC6C 0001D06C  7F E3 FB 78 */	mr r3, r31
/* 8134EC70 0001D070  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8134EC74 0001D074  48 00 00 25 */	bl create_sd_dir__Q23ipl12NandSDWorkerFPCcPCc
/* 8134EC78 0001D078  48 00 00 08 */	b .L_8134EC80
.L_8134EC7C:
/* 8134EC7C 0001D07C  38 60 00 00 */	li r3, 0x0
.L_8134EC80:
/* 8134EC80 0001D080  39 61 00 90 */	addi r11, r1, 0x90
/* 8134EC84 0001D084  48 2A A8 81 */	bl _restgpr_25
/* 8134EC88 0001D088  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8134EC8C 0001D08C  7C 08 03 A6 */	mtlr r0
/* 8134EC90 0001D090  38 21 00 90 */	addi r1, r1, 0x90
/* 8134EC94 0001D094  4E 80 00 20 */	blr
.endfn create_sd_backup_dir__Q23ipl12NandSDWorkerFUx

# .text:0x68AC | 0x8134EC98 | size: 0x124
# ipl::NandSDWorker::create_sd_dir(const char*, const char*)
.fn create_sd_dir__Q23ipl12NandSDWorkerFPCcPCc, global
/* 8134EC98 0001D098  94 21 FB 50 */	stwu r1, -0x4b0(r1)
/* 8134EC9C 0001D09C  7C 08 02 A6 */	mflr r0
/* 8134ECA0 0001D0A0  90 01 04 B4 */	stw r0, 0x4b4(r1)
/* 8134ECA4 0001D0A4  39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8134ECA8 0001D0A8  48 2A A8 11 */	bl _savegpr_25
/* 8134ECAC 0001D0AC  7C 9C 23 78 */	mr r28, r4
/* 8134ECB0 0001D0B0  7C 79 1B 78 */	mr r25, r3
/* 8134ECB4 0001D0B4  7C BA 2B 78 */	mr r26, r5
/* 8134ECB8 0001D0B8  7F 83 E3 78 */	mr r3, r28
/* 8134ECBC 0001D0BC  48 2A A2 41 */	bl strlen
/* 8134ECC0 0001D0C0  7C 7B 1B 78 */	mr r27, r3
/* 8134ECC4 0001D0C4  7F 43 D3 78 */	mr r3, r26
/* 8134ECC8 0001D0C8  48 2A A2 35 */	bl strlen
/* 8134ECCC 0001D0CC  7C 7D 1B 78 */	mr r29, r3
/* 8134ECD0 0001D0D0  7F 84 E3 78 */	mr r4, r28
/* 8134ECD4 0001D0D4  38 61 00 08 */	addi r3, r1, 0x8
/* 8134ECD8 0001D0D8  38 A0 00 40 */	li r5, 0x40
/* 8134ECDC 0001D0DC  48 2B 36 E9 */	bl strncpy
/* 8134ECE0 0001D0E0  3F C0 81 63 */	lis r30, lbl_81637475@ha
/* 8134ECE4 0001D0E4  3B E0 00 00 */	li r31, 0x0
.L_8134ECE8:
/* 8134ECE8 0001D0E8  38 61 00 48 */	addi r3, r1, 0x48
/* 8134ECEC 0001D0EC  38 80 00 00 */	li r4, 0x0
/* 8134ECF0 0001D0F0  38 A0 04 44 */	li r5, 0x444
/* 8134ECF4 0001D0F4  4B FE 16 41 */	bl memset
/* 8134ECF8 0001D0F8  38 61 00 08 */	addi r3, r1, 0x8
/* 8134ECFC 0001D0FC  38 A1 00 48 */	addi r5, r1, 0x48
/* 8134ED00 0001D100  38 80 00 00 */	li r4, 0x0
/* 8134ED04 0001D104  48 29 91 D1 */	bl fn_815E7ED4
/* 8134ED08 0001D108  7C 64 1B 78 */	mr r4, r3
/* 8134ED0C 0001D10C  7F 23 CB 78 */	mr r3, r25
/* 8134ED10 0001D110  38 A0 00 00 */	li r5, 0x0
/* 8134ED14 0001D114  48 00 50 ED */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134ED18 0001D118  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ED1C 0001D11C  7C 7C 1B 78 */	mr r28, r3
/* 8134ED20 0001D120  41 82 00 24 */	beq .L_8134ED44
/* 8134ED24 0001D124  3C 60 81 63 */	lis r3, lbl_8163744B@ha
/* 8134ED28 0001D128  7F 85 E3 78 */	mr r5, r28
/* 8134ED2C 0001D12C  38 63 74 4B */	addi r3, r3, lbl_8163744B@l
/* 8134ED30 0001D130  38 81 00 08 */	addi r4, r1, 0x8
/* 8134ED34 0001D134  4C C6 31 82 */	crclr cr1eq
/* 8134ED38 0001D138  48 1D F9 69 */	bl OSReport
/* 8134ED3C 0001D13C  7F 83 E3 78 */	mr r3, r28
/* 8134ED40 0001D140  48 00 00 64 */	b .L_8134EDA4
.L_8134ED44:
/* 8134ED44 0001D144  38 7E 74 75 */	addi r3, r30, lbl_81637475@l
/* 8134ED48 0001D148  38 81 00 08 */	addi r4, r1, 0x8
/* 8134ED4C 0001D14C  4C C6 31 82 */	crclr cr1eq
/* 8134ED50 0001D150  48 1D F9 51 */	bl OSReport
/* 8134ED54 0001D154  38 1B 00 01 */	addi r0, r27, 0x1
/* 8134ED58 0001D158  7C 00 E8 40 */	cmplw r0, r29
/* 8134ED5C 0001D15C  40 80 00 44 */	bge .L_8134EDA0
/* 8134ED60 0001D160  7F 44 D3 78 */	mr r4, r26
/* 8134ED64 0001D164  38 61 00 08 */	addi r3, r1, 0x8
/* 8134ED68 0001D168  38 A0 00 40 */	li r5, 0x40
/* 8134ED6C 0001D16C  48 2B 36 59 */	bl strncpy
/* 8134ED70 0001D170  38 61 00 08 */	addi r3, r1, 0x8
/* 8134ED74 0001D174  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134ED78 0001D178  7C 7B 1A 14 */	add r3, r27, r3
/* 8134ED7C 0001D17C  38 63 00 01 */	addi r3, r3, 0x1
/* 8134ED80 0001D180  48 2B 3B E9 */	bl fn_81602968
/* 8134ED84 0001D184  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134ED88 0001D188  41 82 00 08 */	beq .L_8134ED90
/* 8134ED8C 0001D18C  9B E3 00 00 */	stb r31, 0x0(r3)
.L_8134ED90:
/* 8134ED90 0001D190  38 61 00 08 */	addi r3, r1, 0x8
/* 8134ED94 0001D194  48 2A A1 69 */	bl strlen
/* 8134ED98 0001D198  7C 7B 1B 78 */	mr r27, r3
/* 8134ED9C 0001D19C  4B FF FF 4C */	b .L_8134ECE8
.L_8134EDA0:
/* 8134EDA0 0001D1A0  38 60 00 00 */	li r3, 0x0
.L_8134EDA4:
/* 8134EDA4 0001D1A4  39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8134EDA8 0001D1A8  48 2A A7 5D */	bl _restgpr_25
/* 8134EDAC 0001D1AC  80 01 04 B4 */	lwz r0, 0x4b4(r1)
/* 8134EDB0 0001D1B0  7C 08 03 A6 */	mtlr r0
/* 8134EDB4 0001D1B4  38 21 04 B0 */	addi r1, r1, 0x4b0
/* 8134EDB8 0001D1B8  4E 80 00 20 */	blr
.endfn create_sd_dir__Q23ipl12NandSDWorkerFPCcPCc

# .text:0x69D0 | 0x8134EDBC | size: 0x8CC
# ipl::NandSDWorker::do_copy_sd_save_to_nand()
.fn do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv, global
/* 8134EDBC 0001D1BC  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8134EDC0 0001D1C0  7C 08 02 A6 */	mflr r0
/* 8134EDC4 0001D1C4  90 01 02 54 */	stw r0, 0x254(r1)
/* 8134EDC8 0001D1C8  39 61 02 50 */	addi r11, r1, 0x250
/* 8134EDCC 0001D1CC  48 2A A6 ED */	bl _savegpr_25
/* 8134EDD0 0001D1D0  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134EDD4 0001D1D4  38 00 00 20 */	li r0, 0x20
/* 8134EDD8 0001D1D8  7C 7A 1B 78 */	mr r26, r3
/* 8134EDDC 0001D1DC  38 A1 00 27 */	addi r5, r1, 0x27
/* 8134EDE0 0001D1E0  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134EDE4 0001D1E4  3B C0 00 00 */	li r30, 0x0
/* 8134EDE8 0001D1E8  38 80 00 00 */	li r4, 0x0
/* 8134EDEC 0001D1EC  7C 09 03 A6 */	mtctr r0
.L_8134EDF0:
/* 8134EDF0 0001D1F0  98 85 00 01 */	stb r4, 0x1(r5)
/* 8134EDF4 0001D1F4  9C 85 00 02 */	stbu r4, 0x2(r5)
/* 8134EDF8 0001D1F8  42 00 FF F8 */	bdnz .L_8134EDF0
/* 8134EDFC 0001D1FC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134EE00 0001D200  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 8134EE04 0001D204  3B 80 00 00 */	li r28, 0x0
/* 8134EE08 0001D208  3B 60 00 00 */	li r27, 0x0
/* 8134EE0C 0001D20C  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134EE10 0001D210  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 8134EE14 0001D214  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134EE18 0001D218  4B FF A5 91 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134EE1C 0001D21C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EE20 0001D220  3F 20 00 01 */	lis r25, 0x1
/* 8134EE24 0001D224  38 99 F0 C0 */	subi r4, r25, 0xf40
/* 8134EE28 0001D228  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134EE2C 0001D22C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134EE30 0001D230  48 20 C8 39 */	bl fn_8155B668
/* 8134EE34 0001D234  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134EE38 0001D238  7C 7D 1B 78 */	mr r29, r3
/* 8134EE3C 0001D23C  7F 43 D3 78 */	mr r3, r26
/* 8134EE40 0001D240  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134EE44 0001D244  7F A5 EB 78 */	mr r5, r29
/* 8134EE48 0001D248  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134EE4C 0001D24C  48 00 08 3D */	bl get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner
/* 8134EE50 0001D250  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EE54 0001D254  41 82 00 14 */	beq .L_8134EE68
/* 8134EE58 0001D258  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134EE5C 0001D25C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134EE60 0001D260  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134EE64 0001D264  48 00 07 7C */	b .L_8134F5E0
.L_8134EE68:
/* 8134EE68 0001D268  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8134EE6C 0001D26C  38 81 00 10 */	addi r4, r1, 0x10
/* 8134EE70 0001D270  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134EE74 0001D274  38 F9 F0 C0 */	subi r7, r25, 0xf40
/* 8134EE78 0001D278  38 C0 00 03 */	li r6, 0x3
/* 8134EE7C 0001D27C  48 27 08 B9 */	bl fn_815BF734
/* 8134EE80 0001D280  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EE84 0001D284  41 82 00 28 */	beq .L_8134EEAC
/* 8134EE88 0001D288  7C 64 1B 78 */	mr r4, r3
/* 8134EE8C 0001D28C  38 7F 0A FD */	addi r3, r31, 0xafd
/* 8134EE90 0001D290  4C C6 31 82 */	crclr cr1eq
/* 8134EE94 0001D294  48 1D F8 0D */	bl OSReport
/* 8134EE98 0001D298  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EE9C 0001D29C  38 00 FF FE */	li r0, -0x2
/* 8134EEA0 0001D2A0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EEA4 0001D2A4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EEA8 0001D2A8  48 00 07 38 */	b .L_8134F5E0
.L_8134EEAC:
/* 8134EEAC 0001D2AC  80 FD 00 00 */	lwz r7, 0x0(r29)
/* 8134EEB0 0001D2B0  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8134EEB4 0001D2B4  81 1D 00 04 */	lwz r8, 0x4(r29)
/* 8134EEB8 0001D2B8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8134EEBC 0001D2BC  7C A0 3A 78 */	xor r0, r5, r7
/* 8134EEC0 0001D2C0  7C C3 42 78 */	xor r3, r6, r8
/* 8134EEC4 0001D2C4  7C 60 03 79 */	or. r0, r3, r0
/* 8134EEC8 0001D2C8  41 82 00 28 */	beq .L_8134EEF0
/* 8134EECC 0001D2CC  38 7F 0B 2D */	addi r3, r31, 0xb2d
/* 8134EED0 0001D2D0  39 21 00 E8 */	addi r9, r1, 0xe8
/* 8134EED4 0001D2D4  4C C6 31 82 */	crclr cr1eq
/* 8134EED8 0001D2D8  48 1D F7 C9 */	bl OSReport
/* 8134EEDC 0001D2DC  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EEE0 0001D2E0  38 00 FF FD */	li r0, -0x3
/* 8134EEE4 0001D2E4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EEE8 0001D2E8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EEEC 0001D2EC  48 00 06 F4 */	b .L_8134F5E0
.L_8134EEF0:
/* 8134EEF0 0001D2F0  7D 04 43 78 */	mr r4, r8
/* 8134EEF4 0001D2F4  7C E3 3B 78 */	mr r3, r7
/* 8134EEF8 0001D2F8  4B FF A4 05 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 8134EEFC 0001D2FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EF00 0001D300  41 82 00 48 */	beq .L_8134EF48
/* 8134EF04 0001D304  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EF08 0001D308  7F 43 D3 78 */	mr r3, r26
/* 8134EF0C 0001D30C  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EF10 0001D310  3B 60 00 01 */	li r27, 0x1
/* 8134EF14 0001D314  48 00 2C 9D */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134EF18 0001D318  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EF1C 0001D31C  41 82 00 2C */	beq .L_8134EF48
/* 8134EF20 0001D320  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EF24 0001D324  38 7F 0B E9 */	addi r3, r31, 0xbe9
/* 8134EF28 0001D328  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EF2C 0001D32C  4C C6 31 82 */	crclr cr1eq
/* 8134EF30 0001D330  48 1D F7 71 */	bl OSReport
/* 8134EF34 0001D334  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EF38 0001D338  38 00 FF FA */	li r0, -0x6
/* 8134EF3C 0001D33C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EF40 0001D340  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EF44 0001D344  48 00 06 9C */	b .L_8134F5E0
.L_8134EF48:
/* 8134EF48 0001D348  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134EF4C 0001D34C  40 82 01 D4 */	bne .L_8134F120
/* 8134EF50 0001D350  3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8134EF54 0001D354  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134EF58 0001D358  38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8134EF5C 0001D35C  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134EF60 0001D360  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8134EF64 0001D364  48 01 81 3D */	bl PrepareTitleDir__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap
/* 8134EF68 0001D368  2C 03 FB FF */	cmpwi r3, -0x401
/* 8134EF6C 0001D36C  40 82 00 2C */	bne .L_8134EF98
/* 8134EF70 0001D370  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EF74 0001D374  38 7F 1A 15 */	addi r3, r31, 0x1a15
/* 8134EF78 0001D378  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EF7C 0001D37C  4C C6 31 82 */	crclr cr1eq
/* 8134EF80 0001D380  48 1D F7 21 */	bl OSReport
/* 8134EF84 0001D384  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EF88 0001D388  38 00 FF F2 */	li r0, -0xe
/* 8134EF8C 0001D38C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EF90 0001D390  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EF94 0001D394  48 00 06 4C */	b .L_8134F5E0
.L_8134EF98:
/* 8134EF98 0001D398  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EF9C 0001D39C  41 82 00 18 */	beq .L_8134EFB4
/* 8134EFA0 0001D3A0  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EFA4 0001D3A4  38 00 FF FE */	li r0, -0x2
/* 8134EFA8 0001D3A8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EFAC 0001D3AC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EFB0 0001D3B0  48 00 06 30 */	b .L_8134F5E0
.L_8134EFB4:
/* 8134EFB4 0001D3B4  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EFB8 0001D3B8  7F 43 D3 78 */	mr r3, r26
/* 8134EFBC 0001D3BC  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EFC0 0001D3C0  48 00 4B ED */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134EFC4 0001D3C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134EFC8 0001D3C8  40 82 00 2C */	bne .L_8134EFF4
/* 8134EFCC 0001D3CC  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EFD0 0001D3D0  38 7F 1A 15 */	addi r3, r31, 0x1a15
/* 8134EFD4 0001D3D4  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134EFD8 0001D3D8  4C C6 31 82 */	crclr cr1eq
/* 8134EFDC 0001D3DC  48 1D F6 C5 */	bl OSReport
/* 8134EFE0 0001D3E0  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134EFE4 0001D3E4  38 00 FF F2 */	li r0, -0xe
/* 8134EFE8 0001D3E8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134EFEC 0001D3EC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134EFF0 0001D3F0  48 00 05 F0 */	b .L_8134F5E0
.L_8134EFF4:
/* 8134EFF4 0001D3F4  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134EFF8 0001D3F8  7F 43 D3 78 */	mr r3, r26
/* 8134EFFC 0001D3FC  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F000 0001D400  4B FF BF 69 */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
/* 8134F004 0001D404  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F008 0001D408  41 82 00 2C */	beq .L_8134F034
/* 8134F00C 0001D40C  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F010 0001D410  38 7F 0B E9 */	addi r3, r31, 0xbe9
/* 8134F014 0001D414  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F018 0001D418  4C C6 31 82 */	crclr cr1eq
/* 8134F01C 0001D41C  48 1D F6 85 */	bl OSReport
/* 8134F020 0001D420  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F024 0001D424  38 00 FF FA */	li r0, -0x6
/* 8134F028 0001D428  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F02C 0001D42C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F030 0001D430  48 00 05 B0 */	b .L_8134F5E0
.L_8134F034:
/* 8134F034 0001D434  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8134F038 0001D438  38 00 FF FF */	li r0, -0x1
/* 8134F03C 0001D43C  80 DD 00 00 */	lwz r6, 0x0(r29)
/* 8134F040 0001D440  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8134F044 0001D444  7C 87 00 38 */	and r7, r4, r0
/* 8134F048 0001D448  38 BF 01 1C */	addi r5, r31, 0x11c
/* 8134F04C 0001D44C  38 80 00 40 */	li r4, 0x40
/* 8134F050 0001D450  4C C6 31 82 */	crclr cr1eq
/* 8134F054 0001D454  48 2B 19 55 */	bl fn_816009A8
/* 8134F058 0001D458  80 6D 81 80 */	lwz r3, lbl_816961C0@sda21(r0)
/* 8134F05C 0001D45C  48 01 10 4D */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 8134F060 0001D460  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 8134F064 0001D464  7C 64 1B 78 */	mr r4, r3
/* 8134F068 0001D468  7F 43 D3 78 */	mr r3, r26
/* 8134F06C 0001D46C  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134F070 0001D470  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F074 0001D474  48 00 4B E5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F078 0001D478  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F07C 0001D47C  40 82 05 64 */	bne .L_8134F5E0
/* 8134F080 0001D480  80 6D 81 80 */	lwz r3, lbl_816961C0@sda21(r0)
/* 8134F084 0001D484  38 80 00 30 */	li r4, 0x30
/* 8134F088 0001D488  38 A0 00 00 */	li r5, 0x0
/* 8134F08C 0001D48C  48 01 0F 45 */	bl CreateDir__Q33ipl4nand7wrapperFPCcUcUc
/* 8134F090 0001D490  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F094 0001D494  7C 79 1B 78 */	mr r25, r3
/* 8134F098 0001D498  7F 43 D3 78 */	mr r3, r26
/* 8134F09C 0001D49C  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F0A0 0001D4A0  7F 24 CB 78 */	mr r4, r25
/* 8134F0A4 0001D4A4  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F0A8 0001D4A8  48 00 4B B1 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F0AC 0001D4AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F0B0 0001D4B0  40 82 05 30 */	bne .L_8134F5E0
/* 8134F0B4 0001D4B4  2C 19 00 00 */	cmpwi r25, 0x0
/* 8134F0B8 0001D4B8  41 82 00 2C */	beq .L_8134F0E4
/* 8134F0BC 0001D4BC  80 8D 81 80 */	lwz r4, lbl_816961C0@sda21(r0)
/* 8134F0C0 0001D4C0  7F 25 CB 78 */	mr r5, r25
/* 8134F0C4 0001D4C4  38 7F 1A 4A */	addi r3, r31, 0x1a4a
/* 8134F0C8 0001D4C8  4C C6 31 82 */	crclr cr1eq
/* 8134F0CC 0001D4CC  48 1D F5 D5 */	bl OSReport
/* 8134F0D0 0001D4D0  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F0D4 0001D4D4  38 00 FF FE */	li r0, -0x2
/* 8134F0D8 0001D4D8  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F0DC 0001D4DC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F0E0 0001D4E0  48 00 05 00 */	b .L_8134F5E0
.L_8134F0E4:
/* 8134F0E4 0001D4E4  80 6D 81 80 */	lwz r3, lbl_816961C0@sda21(r0)
/* 8134F0E8 0001D4E8  48 01 0F 5D */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134F0EC 0001D4EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F0F0 0001D4F0  41 82 00 2C */	beq .L_8134F11C
/* 8134F0F4 0001D4F4  80 8D 81 80 */	lwz r4, lbl_816961C0@sda21(r0)
/* 8134F0F8 0001D4F8  7C 65 1B 78 */	mr r5, r3
/* 8134F0FC 0001D4FC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 8134F100 0001D500  4C C6 31 82 */	crclr cr1eq
/* 8134F104 0001D504  48 1D F5 9D */	bl OSReport
/* 8134F108 0001D508  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F10C 0001D50C  38 00 FF FE */	li r0, -0x2
/* 8134F110 0001D510  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F114 0001D514  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F118 0001D518  48 00 04 C8 */	b .L_8134F5E0
.L_8134F11C:
/* 8134F11C 0001D51C  3B 80 00 01 */	li r28, 0x1
.L_8134F120:
/* 8134F120 0001D520  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F124 0001D524  3C A0 00 01 */	lis r5, 0x1
/* 8134F128 0001D528  38 C5 F0 C0 */	subi r6, r5, 0xf40
/* 8134F12C 0001D52C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8134F130 0001D530  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134F134 0001D534  39 01 00 18 */	addi r8, r1, 0x18
/* 8134F138 0001D538  38 A0 00 03 */	li r5, 0x3
/* 8134F13C 0001D53C  38 E0 00 01 */	li r7, 0x1
/* 8134F140 0001D540  39 20 00 00 */	li r9, 0x0
/* 8134F144 0001D544  38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8134F148 0001D548  48 27 09 B9 */	bl fn_815BFB00
/* 8134F14C 0001D54C  2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 8134F150 0001D550  40 82 00 28 */	bne .L_8134F178
/* 8134F154 0001D554  7C 64 1B 78 */	mr r4, r3
/* 8134F158 0001D558  38 7F 0B 7B */	addi r3, r31, 0xb7b
/* 8134F15C 0001D55C  4C C6 31 82 */	crclr cr1eq
/* 8134F160 0001D560  48 1D F5 41 */	bl OSReport
/* 8134F164 0001D564  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F168 0001D568  38 00 FF F1 */	li r0, -0xf
/* 8134F16C 0001D56C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F170 0001D570  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F174 0001D574  48 00 04 6C */	b .L_8134F5E0
.L_8134F178:
/* 8134F178 0001D578  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F17C 0001D57C  41 82 00 28 */	beq .L_8134F1A4
/* 8134F180 0001D580  7C 64 1B 78 */	mr r4, r3
/* 8134F184 0001D584  38 7F 0B BB */	addi r3, r31, 0xbbb
/* 8134F188 0001D588  4C C6 31 82 */	crclr cr1eq
/* 8134F18C 0001D58C  48 1D F5 15 */	bl OSReport
/* 8134F190 0001D590  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F194 0001D594  38 00 FF FD */	li r0, -0x3
/* 8134F198 0001D598  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F19C 0001D59C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F1A0 0001D5A0  48 00 04 40 */	b .L_8134F5E0
.L_8134F1A4:
/* 8134F1A4 0001D5A4  A0 81 00 22 */	lhz r4, 0x22(r1)
/* 8134F1A8 0001D5A8  38 7F 1A 76 */	addi r3, r31, 0x1a76
/* 8134F1AC 0001D5AC  A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 8134F1B0 0001D5B0  4C C6 31 82 */	crclr cr1eq
/* 8134F1B4 0001D5B4  48 1D F4 ED */	bl OSReport
/* 8134F1B8 0001D5B8  A0 81 00 1E */	lhz r4, 0x1e(r1)
/* 8134F1BC 0001D5BC  38 7F 1A AA */	addi r3, r31, 0x1aaa
/* 8134F1C0 0001D5C0  A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 8134F1C4 0001D5C4  4C C6 31 82 */	crclr cr1eq
/* 8134F1C8 0001D5C8  48 1D F4 D9 */	bl OSReport
/* 8134F1CC 0001D5CC  A0 81 00 26 */	lhz r4, 0x26(r1)
/* 8134F1D0 0001D5D0  38 7F 1A DF */	addi r3, r31, 0x1adf
/* 8134F1D4 0001D5D4  A0 A1 00 24 */	lhz r5, 0x24(r1)
/* 8134F1D8 0001D5D8  4C C6 31 82 */	crclr cr1eq
/* 8134F1DC 0001D5DC  48 1D F4 C5 */	bl OSReport
/* 8134F1E0 0001D5E0  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 8134F1E4 0001D5E4  7F 43 D3 78 */	mr r3, r26
/* 8134F1E8 0001D5E8  A1 01 00 1E */	lhz r8, 0x1e(r1)
/* 8134F1EC 0001D5EC  38 04 3F FF */	addi r0, r4, 0x3fff
/* 8134F1F0 0001D5F0  A0 C1 00 26 */	lhz r6, 0x26(r1)
/* 8134F1F4 0001D5F4  54 07 93 BE */	srwi r7, r0, 14
/* 8134F1F8 0001D5F8  A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 8134F1FC 0001D5FC  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 8134F200 0001D600  7C C8 32 14 */	add r6, r8, r6
/* 8134F204 0001D604  A0 81 00 22 */	lhz r4, 0x22(r1)
/* 8134F208 0001D608  38 C6 00 01 */	addi r6, r6, 0x1
/* 8134F20C 0001D60C  7C 05 02 14 */	add r0, r5, r0
/* 8134F210 0001D610  A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 8134F214 0001D614  7C E7 02 14 */	add r7, r7, r0
/* 8134F218 0001D618  4B FF EE 3D */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8134F21C 0001D61C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F220 0001D620  41 82 00 14 */	beq .L_8134F234
/* 8134F224 0001D624  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F228 0001D628  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F22C 0001D62C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134F230 0001D630  48 00 03 B0 */	b .L_8134F5E0
.L_8134F234:
/* 8134F234 0001D634  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F238 0001D638  40 82 00 94 */	bne .L_8134F2CC
/* 8134F23C 0001D63C  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F240 0001D640  7F 43 D3 78 */	mr r3, r26
/* 8134F244 0001D644  38 A1 01 28 */	addi r5, r1, 0x128
/* 8134F248 0001D648  38 C0 00 00 */	li r6, 0x0
/* 8134F24C 0001D64C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F250 0001D650  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8134F254 0001D654  48 00 06 6D */	bl get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader
/* 8134F258 0001D658  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F25C 0001D65C  41 82 00 14 */	beq .L_8134F270
/* 8134F260 0001D660  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F264 0001D664  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F268 0001D668  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8134F26C 0001D66C  48 00 03 74 */	b .L_8134F5E0
.L_8134F270:
/* 8134F270 0001D670  A0 81 00 26 */	lhz r4, 0x26(r1)
/* 8134F274 0001D674  2C 04 00 00 */	cmpwi r4, 0x0
/* 8134F278 0001D678  40 82 00 30 */	bne .L_8134F2A8
/* 8134F27C 0001D67C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8134F280 0001D680  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134F284 0001D684  41 82 00 24 */	beq .L_8134F2A8
/* 8134F288 0001D688  38 7F 1B 09 */	addi r3, r31, 0x1b09
/* 8134F28C 0001D68C  4C C6 31 82 */	crclr cr1eq
/* 8134F290 0001D690  48 1D F4 11 */	bl OSReport
/* 8134F294 0001D694  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F298 0001D698  38 00 FF F1 */	li r0, -0xf
/* 8134F29C 0001D69C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F2A0 0001D6A0  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F2A4 0001D6A4  48 00 03 3C */	b .L_8134F5E0
.L_8134F2A8:
/* 8134F2A8 0001D6A8  80 A1 01 34 */	lwz r5, 0x134(r1)
/* 8134F2AC 0001D6AC  38 05 FF FF */	subi r0, r5, 0x1
/* 8134F2B0 0001D6B0  7C 04 00 40 */	cmplw r4, r0
/* 8134F2B4 0001D6B4  40 80 00 18 */	bge .L_8134F2CC
/* 8134F2B8 0001D6B8  38 7F 1B 41 */	addi r3, r31, 0x1b41
/* 8134F2BC 0001D6BC  7C 84 28 50 */	subf r4, r4, r5
/* 8134F2C0 0001D6C0  4C C6 31 82 */	crclr cr1eq
/* 8134F2C4 0001D6C4  48 1D F3 DD */	bl OSReport
/* 8134F2C8 0001D6C8  3B C0 00 01 */	li r30, 0x1
.L_8134F2CC:
/* 8134F2CC 0001D6CC  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F2D0 0001D6D0  3C C0 00 01 */	lis r6, 0x1
/* 8134F2D4 0001D6D4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8134F2D8 0001D6D8  38 A0 00 03 */	li r5, 0x3
/* 8134F2DC 0001D6DC  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134F2E0 0001D6E0  38 C6 F0 C0 */	subi r6, r6, 0xf40
/* 8134F2E4 0001D6E4  38 E0 00 08 */	li r7, 0x8
/* 8134F2E8 0001D6E8  39 00 00 00 */	li r8, 0x0
/* 8134F2EC 0001D6EC  38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8134F2F0 0001D6F0  48 27 0D B1 */	bl fn_815C00A0
/* 8134F2F4 0001D6F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F2F8 0001D6F8  41 82 00 94 */	beq .L_8134F38C
/* 8134F2FC 0001D6FC  7C 64 1B 78 */	mr r4, r3
/* 8134F300 0001D700  38 7F 1B 94 */	addi r3, r31, 0x1b94
/* 8134F304 0001D704  4C C6 31 82 */	crclr cr1eq
/* 8134F308 0001D708  48 1D F3 99 */	bl OSReport
/* 8134F30C 0001D70C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F310 0001D710  41 82 00 68 */	beq .L_8134F378
/* 8134F314 0001D714  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F318 0001D718  7F 43 D3 78 */	mr r3, r26
/* 8134F31C 0001D71C  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F320 0001D720  48 00 28 91 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 8134F324 0001D724  2C 03 00 02 */	cmpwi r3, 0x2
/* 8134F328 0001D728  41 82 00 50 */	beq .L_8134F378
/* 8134F32C 0001D72C  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F330 0001D730  7F 43 D3 78 */	mr r3, r26
/* 8134F334 0001D734  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F338 0001D738  48 00 0B 71 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 8134F33C 0001D73C  2C 03 FF FB */	cmpwi r3, -0x5
/* 8134F340 0001D740  40 82 00 18 */	bne .L_8134F358
/* 8134F344 0001D744  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F348 0001D748  38 00 FF FB */	li r0, -0x5
/* 8134F34C 0001D74C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F350 0001D750  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F354 0001D754  48 00 02 8C */	b .L_8134F5E0
.L_8134F358:
/* 8134F358 0001D758  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F35C 0001D75C  41 82 00 1C */	beq .L_8134F378
/* 8134F360 0001D760  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F364 0001D764  7C 67 1B 78 */	mr r7, r3
/* 8134F368 0001D768  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F36C 0001D76C  38 7F 06 43 */	addi r3, r31, 0x643
/* 8134F370 0001D770  4C C6 31 82 */	crclr cr1eq
/* 8134F374 0001D774  48 1D F3 2D */	bl OSReport
.L_8134F378:
/* 8134F378 0001D778  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F37C 0001D77C  38 00 FF FD */	li r0, -0x3
/* 8134F380 0001D780  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F384 0001D784  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F388 0001D788  48 00 02 58 */	b .L_8134F5E0
.L_8134F38C:
/* 8134F38C 0001D78C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F390 0001D790  40 82 02 3C */	bne .L_8134F5CC
/* 8134F394 0001D794  80 8D 81 80 */	lwz r4, lbl_816961C0@sda21(r0)
/* 8134F398 0001D798  38 61 00 68 */	addi r3, r1, 0x68
/* 8134F39C 0001D79C  38 A0 00 40 */	li r5, 0x40
/* 8134F3A0 0001D7A0  48 2B 30 25 */	bl strncpy
/* 8134F3A4 0001D7A4  38 61 00 68 */	addi r3, r1, 0x68
/* 8134F3A8 0001D7A8  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 8134F3AC 0001D7AC  38 A0 00 40 */	li r5, 0x40
/* 8134F3B0 0001D7B0  48 2B 30 85 */	bl fn_81602434
/* 8134F3B4 0001D7B4  80 8D 81 58 */	lwz r4, lbl_81696198@sda21(r0)
/* 8134F3B8 0001D7B8  38 61 00 68 */	addi r3, r1, 0x68
/* 8134F3BC 0001D7BC  38 A0 00 40 */	li r5, 0x40
/* 8134F3C0 0001D7C0  48 2B 30 75 */	bl fn_81602434
/* 8134F3C4 0001D7C4  88 9D 00 0C */	lbz r4, 0xc(r29)
/* 8134F3C8 0001D7C8  38 61 00 68 */	addi r3, r1, 0x68
/* 8134F3CC 0001D7CC  88 BD 00 0D */	lbz r5, 0xd(r29)
/* 8134F3D0 0001D7D0  48 01 08 4D */	bl Create__Q33ipl4nand7wrapperFPCcUcUc
/* 8134F3D4 0001D7D4  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F3D8 0001D7D8  7C 79 1B 78 */	mr r25, r3
/* 8134F3DC 0001D7DC  7F 43 D3 78 */	mr r3, r26
/* 8134F3E0 0001D7E0  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F3E4 0001D7E4  7F 24 CB 78 */	mr r4, r25
/* 8134F3E8 0001D7E8  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F3EC 0001D7EC  48 00 48 6D */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F3F0 0001D7F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F3F4 0001D7F4  40 82 01 EC */	bne .L_8134F5E0
/* 8134F3F8 0001D7F8  2C 19 00 00 */	cmpwi r25, 0x0
/* 8134F3FC 0001D7FC  41 82 00 2C */	beq .L_8134F428
/* 8134F400 0001D800  7F 25 CB 78 */	mr r5, r25
/* 8134F404 0001D804  38 7F 1B BE */	addi r3, r31, 0x1bbe
/* 8134F408 0001D808  38 81 00 68 */	addi r4, r1, 0x68
/* 8134F40C 0001D80C  4C C6 31 82 */	crclr cr1eq
/* 8134F410 0001D810  48 1D F2 91 */	bl OSReport
/* 8134F414 0001D814  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F418 0001D818  38 00 FF FE */	li r0, -0x2
/* 8134F41C 0001D81C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F420 0001D820  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F424 0001D824  48 00 01 BC */	b .L_8134F5E0
.L_8134F428:
/* 8134F428 0001D828  38 61 00 68 */	addi r3, r1, 0x68
/* 8134F42C 0001D82C  38 81 01 98 */	addi r4, r1, 0x198
/* 8134F430 0001D830  38 A0 00 02 */	li r5, 0x2
/* 8134F434 0001D834  48 01 08 5D */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8134F438 0001D838  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F43C 0001D83C  41 82 00 2C */	beq .L_8134F468
/* 8134F440 0001D840  7C 65 1B 78 */	mr r5, r3
/* 8134F444 0001D844  38 7F 1B E7 */	addi r3, r31, 0x1be7
/* 8134F448 0001D848  38 81 00 68 */	addi r4, r1, 0x68
/* 8134F44C 0001D84C  4C C6 31 82 */	crclr cr1eq
/* 8134F450 0001D850  48 1D F2 51 */	bl OSReport
/* 8134F454 0001D854  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F458 0001D858  38 00 FF FE */	li r0, -0x2
/* 8134F45C 0001D85C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F460 0001D860  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F464 0001D864  48 00 01 7C */	b .L_8134F5E0
.L_8134F468:
/* 8134F468 0001D868  80 BD 00 08 */	lwz r5, 0x8(r29)
/* 8134F46C 0001D86C  38 61 01 98 */	addi r3, r1, 0x198
/* 8134F470 0001D870  38 9D 00 20 */	addi r4, r29, 0x20
/* 8134F474 0001D874  48 01 09 69 */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 8134F478 0001D878  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F47C 0001D87C  7C 79 1B 78 */	mr r25, r3
/* 8134F480 0001D880  7F 43 D3 78 */	mr r3, r26
/* 8134F484 0001D884  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F488 0001D888  7F 24 CB 78 */	mr r4, r25
/* 8134F48C 0001D88C  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F490 0001D890  48 00 47 C9 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F494 0001D894  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F498 0001D898  41 82 00 10 */	beq .L_8134F4A8
/* 8134F49C 0001D89C  38 61 01 98 */	addi r3, r1, 0x198
/* 8134F4A0 0001D8A0  48 01 08 65 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134F4A4 0001D8A4  48 00 01 3C */	b .L_8134F5E0
.L_8134F4A8:
/* 8134F4A8 0001D8A8  80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8134F4AC 0001D8AC  7C 19 00 40 */	cmplw r25, r0
/* 8134F4B0 0001D8B0  40 80 00 34 */	bge .L_8134F4E4
/* 8134F4B4 0001D8B4  7F 25 CB 78 */	mr r5, r25
/* 8134F4B8 0001D8B8  38 7F 1C 0E */	addi r3, r31, 0x1c0e
/* 8134F4BC 0001D8BC  38 81 00 68 */	addi r4, r1, 0x68
/* 8134F4C0 0001D8C0  4C C6 31 82 */	crclr cr1eq
/* 8134F4C4 0001D8C4  48 1D F1 DD */	bl OSReport
/* 8134F4C8 0001D8C8  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F4CC 0001D8CC  38 00 FF FE */	li r0, -0x2
/* 8134F4D0 0001D8D0  38 61 01 98 */	addi r3, r1, 0x198
/* 8134F4D4 0001D8D4  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134F4D8 0001D8D8  90 04 EA 24 */	stw r0, -0x15dc(r4)
/* 8134F4DC 0001D8DC  48 01 08 29 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134F4E0 0001D8E0  48 00 01 00 */	b .L_8134F5E0
.L_8134F4E4:
/* 8134F4E4 0001D8E4  38 61 01 98 */	addi r3, r1, 0x198
/* 8134F4E8 0001D8E8  48 01 08 1D */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8134F4EC 0001D8EC  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8134F4F0 0001D8F0  7C 79 1B 78 */	mr r25, r3
/* 8134F4F4 0001D8F4  7F 43 D3 78 */	mr r3, r26
/* 8134F4F8 0001D8F8  3C A4 00 04 */	addis r5, r4, 0x4
/* 8134F4FC 0001D8FC  7F 24 CB 78 */	mr r4, r25
/* 8134F500 0001D900  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F504 0001D904  48 00 47 55 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F508 0001D908  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F50C 0001D90C  40 82 00 D4 */	bne .L_8134F5E0
/* 8134F510 0001D910  2C 19 00 00 */	cmpwi r25, 0x0
/* 8134F514 0001D914  41 82 00 2C */	beq .L_8134F540
/* 8134F518 0001D918  7F 25 CB 78 */	mr r5, r25
/* 8134F51C 0001D91C  38 7F 1C 36 */	addi r3, r31, 0x1c36
/* 8134F520 0001D920  38 81 00 68 */	addi r4, r1, 0x68
/* 8134F524 0001D924  4C C6 31 82 */	crclr cr1eq
/* 8134F528 0001D928  48 1D F1 79 */	bl OSReport
/* 8134F52C 0001D92C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F530 0001D930  38 00 FF FE */	li r0, -0x2
/* 8134F534 0001D934  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F538 0001D938  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F53C 0001D93C  48 00 00 A4 */	b .L_8134F5E0
.L_8134F540:
/* 8134F540 0001D940  80 8D 81 80 */	lwz r4, lbl_816961C0@sda21(r0)
/* 8134F544 0001D944  7F 43 D3 78 */	mr r3, r26
/* 8134F548 0001D948  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8134F54C 0001D94C  38 C0 00 02 */	li r6, 0x2
/* 8134F550 0001D950  38 E0 00 00 */	li r7, 0x0
/* 8134F554 0001D954  39 00 00 00 */	li r8, 0x0
/* 8134F558 0001D958  48 00 40 4D */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 8134F55C 0001D95C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F560 0001D960  7C 79 1B 78 */	mr r25, r3
/* 8134F564 0001D964  41 82 00 28 */	beq .L_8134F58C
/* 8134F568 0001D968  80 8D 81 80 */	lwz r4, lbl_816961C0@sda21(r0)
/* 8134F56C 0001D96C  38 7F 1C 5E */	addi r3, r31, 0x1c5e
/* 8134F570 0001D970  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8134F574 0001D974  4C C6 31 82 */	crclr cr1eq
/* 8134F578 0001D978  48 1D F1 29 */	bl OSReport
/* 8134F57C 0001D97C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F580 0001D980  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F584 0001D984  93 23 EA 24 */	stw r25, -0x15dc(r3)
/* 8134F588 0001D988  48 00 00 58 */	b .L_8134F5E0
.L_8134F58C:
/* 8134F58C 0001D98C  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134F590 0001D990  38 7F 1C 91 */	addi r3, r31, 0x1c91
/* 8134F594 0001D994  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8134F598 0001D998  4C C6 31 82 */	crclr cr1eq
/* 8134F59C 0001D99C  48 1D F1 05 */	bl OSReport
/* 8134F5A0 0001D9A0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8134F5A4 0001D9A4  41 82 00 18 */	beq .L_8134F5BC
/* 8134F5A8 0001D9A8  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F5AC 0001D9AC  38 00 00 01 */	li r0, 0x1
/* 8134F5B0 0001D9B0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F5B4 0001D9B4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134F5B8 0001D9B8  48 00 00 14 */	b .L_8134F5CC
.L_8134F5BC:
/* 8134F5BC 0001D9BC  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F5C0 0001D9C0  38 00 00 00 */	li r0, 0x0
/* 8134F5C4 0001D9C4  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F5C8 0001D9C8  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134F5CC:
/* 8134F5CC 0001D9CC  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F5D0 0001D9D0  3C 83 00 04 */	addis r4, r3, 0x4
/* 8134F5D4 0001D9D4  80 64 EA 28 */	lwz r3, -0x15d8(r4)
/* 8134F5D8 0001D9D8  38 03 00 01 */	addi r0, r3, 0x1
/* 8134F5DC 0001D9DC  90 04 EA 28 */	stw r0, -0x15d8(r4)
.L_8134F5E0:
/* 8134F5E0 0001D9E0  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8134F5E4 0001D9E4  40 82 00 70 */	bne .L_8134F654
/* 8134F5E8 0001D9E8  80 6D 81 80 */	lwz r3, lbl_816961C0@sda21(r0)
/* 8134F5EC 0001D9EC  48 01 0A BD */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 8134F5F0 0001D9F0  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 8134F5F4 0001D9F4  7C 64 1B 78 */	mr r4, r3
/* 8134F5F8 0001D9F8  7F 43 D3 78 */	mr r3, r26
/* 8134F5FC 0001D9FC  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134F600 0001DA00  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134F604 0001DA04  48 00 46 55 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 8134F608 0001DA08  7F 43 D3 78 */	mr r3, r26
/* 8134F60C 0001DA0C  38 C0 00 02 */	li r6, 0x2
/* 8134F610 0001DA10  38 A0 00 01 */	li r5, 0x1
/* 8134F614 0001DA14  48 00 45 99 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 8134F618 0001DA18  2C 1C 00 00 */	cmpwi r28, 0x0
/* 8134F61C 0001DA1C  41 82 00 38 */	beq .L_8134F654
/* 8134F620 0001DA20  80 6D 81 A4 */	lwz r3, lbl_816961E4@sda21(r0)
/* 8134F624 0001DA24  48 01 0A 21 */	bl ChangeDir__Q33ipl4nand7wrapperFPCc
/* 8134F628 0001DA28  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F62C 0001DA2C  41 82 00 28 */	beq .L_8134F654
/* 8134F630 0001DA30  80 8D 81 A4 */	lwz r4, lbl_816961E4@sda21(r0)
/* 8134F634 0001DA34  7C 65 1B 78 */	mr r5, r3
/* 8134F638 0001DA38  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 8134F63C 0001DA3C  4C C6 31 82 */	crclr cr1eq
/* 8134F640 0001DA40  48 1D F0 61 */	bl OSReport
/* 8134F644 0001DA44  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F648 0001DA48  38 00 FF FE */	li r0, -0x2
/* 8134F64C 0001DA4C  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134F650 0001DA50  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8134F654:
/* 8134F654 0001DA54  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8134F658 0001DA58  41 82 00 18 */	beq .L_8134F670
/* 8134F65C 0001DA5C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8134F660 0001DA60  7F A4 EB 78 */	mr r4, r29
/* 8134F664 0001DA64  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134F668 0001DA68  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8134F66C 0001DA6C  48 20 C0 0D */	bl fn_8155B678
.L_8134F670:
/* 8134F670 0001DA70  39 61 02 50 */	addi r11, r1, 0x250
/* 8134F674 0001DA74  48 2A 9E 91 */	bl _restgpr_25
/* 8134F678 0001DA78  80 01 02 54 */	lwz r0, 0x254(r1)
/* 8134F67C 0001DA7C  7C 08 03 A6 */	mtlr r0
/* 8134F680 0001DA80  38 21 02 50 */	addi r1, r1, 0x250
/* 8134F684 0001DA84  4E 80 00 20 */	blr
.endfn do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv

# .text:0x729C | 0x8134F688 | size: 0x238
# ipl::NandSDWorker::get_sd_save_banner(unsigned long, ipl::NandSDWorker::SDSaveBanner*)
.fn get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner, global
/* 8134F688 0001DA88  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8134F68C 0001DA8C  7C 08 02 A6 */	mflr r0
/* 8134F690 0001DA90  90 01 00 84 */	stw r0, 0x84(r1)
/* 8134F694 0001DA94  39 61 00 80 */	addi r11, r1, 0x80
/* 8134F698 0001DA98  48 2A 9E 21 */	bl _savegpr_25
/* 8134F69C 0001DA9C  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8134F6A0 0001DAA0  7C 7F 1B 78 */	mr r31, r3
/* 8134F6A4 0001DAA4  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134F6A8 0001DAA8  7C BA 2B 78 */	mr r26, r5
/* 8134F6AC 0001DAAC  3C 66 00 02 */	addis r3, r6, 0x2
/* 8134F6B0 0001DAB0  3F C0 00 01 */	lis r30, 0x1
/* 8134F6B4 0001DAB4  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134F6B8 0001DAB8  7C 99 23 78 */	mr r25, r4
/* 8134F6BC 0001DABC  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134F6C0 0001DAC0  38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134F6C4 0001DAC4  38 A0 00 20 */	li r5, 0x20
/* 8134F6C8 0001DAC8  48 20 B0 8D */	bl fn_8155A754
/* 8134F6CC 0001DACC  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8134F6D0 0001DAD0  7C 7C 1B 78 */	mr r28, r3
/* 8134F6D4 0001DAD4  41 82 00 0C */	beq .L_8134F6E0
/* 8134F6D8 0001DAD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F6DC 0001DADC  40 82 00 1C */	bne .L_8134F6F8
.L_8134F6E0:
/* 8134F6E0 0001DAE0  38 7D 1C C6 */	addi r3, r29, 0x1cc6
/* 8134F6E4 0001DAE4  4C C6 31 82 */	crclr cr1eq
/* 8134F6E8 0001DAE8  48 1D EF B9 */	bl OSReport
/* 8134F6EC 0001DAEC  38 00 FF FE */	li r0, -0x2
/* 8134F6F0 0001DAF0  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F6F4 0001DAF4  48 00 01 9C */	b .L_8134F890
.L_8134F6F8:
/* 8134F6F8 0001DAF8  7F 24 CB 78 */	mr r4, r25
/* 8134F6FC 0001DAFC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8134F700 0001DB00  38 60 00 00 */	li r3, 0x0
/* 8134F704 0001DB04  4B FF 9C A5 */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134F708 0001DB08  38 61 00 1C */	addi r3, r1, 0x1c
/* 8134F70C 0001DB0C  38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 8134F710 0001DB10  48 29 89 31 */	bl fn_815E8040
/* 8134F714 0001DB14  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F718 0001DB18  7C 7B 1B 78 */	mr r27, r3
/* 8134F71C 0001DB1C  40 82 00 28 */	bne .L_8134F744
/* 8134F720 0001DB20  38 7D 17 AE */	addi r3, r29, 0x17ae
/* 8134F724 0001DB24  38 81 00 1C */	addi r4, r1, 0x1c
/* 8134F728 0001DB28  4C C6 31 82 */	crclr cr1eq
/* 8134F72C 0001DB2C  48 1D EF 75 */	bl OSReport
/* 8134F730 0001DB30  7F E3 FB 78 */	mr r3, r31
/* 8134F734 0001DB34  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F738 0001DB38  38 80 FF FF */	li r4, -0x1
/* 8134F73C 0001DB3C  48 00 46 C5 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F740 0001DB40  48 00 01 50 */	b .L_8134F890
.L_8134F744:
/* 8134F744 0001DB44  7F 83 E3 78 */	mr r3, r28
/* 8134F748 0001DB48  7F 66 DB 78 */	mr r6, r27
/* 8134F74C 0001DB4C  38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134F750 0001DB50  38 A0 00 01 */	li r5, 0x1
/* 8134F754 0001DB54  48 29 89 49 */	bl fn_815E809C
/* 8134F758 0001DB58  28 03 00 01 */	cmplwi r3, 0x1
/* 8134F75C 0001DB5C  41 82 00 3C */	beq .L_8134F798
/* 8134F760 0001DB60  7F E3 FB 78 */	mr r3, r31
/* 8134F764 0001DB64  38 80 FF FF */	li r4, -0x1
/* 8134F768 0001DB68  38 A0 00 00 */	li r5, 0x0
/* 8134F76C 0001DB6C  48 00 46 95 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F770 0001DB70  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F774 0001DB74  90 61 00 08 */	stw r3, 0x8(r1)
/* 8134F778 0001DB78  41 82 00 0C */	beq .L_8134F784
/* 8134F77C 0001DB7C  2C 03 FF FE */	cmpwi r3, -0x2
/* 8134F780 0001DB80  40 82 00 0C */	bne .L_8134F78C
.L_8134F784:
/* 8134F784 0001DB84  38 00 FF FD */	li r0, -0x3
/* 8134F788 0001DB88  90 01 00 08 */	stw r0, 0x8(r1)
.L_8134F78C:
/* 8134F78C 0001DB8C  7F 63 DB 78 */	mr r3, r27
/* 8134F790 0001DB90  48 29 88 59 */	bl fn_815E7FE8
/* 8134F794 0001DB94  48 00 00 FC */	b .L_8134F890
.L_8134F798:
/* 8134F798 0001DB98  7F 63 DB 78 */	mr r3, r27
/* 8134F79C 0001DB9C  48 29 88 4D */	bl fn_815E7FE8
/* 8134F7A0 0001DBA0  7C 64 1B 78 */	mr r4, r3
/* 8134F7A4 0001DBA4  7F E3 FB 78 */	mr r3, r31
/* 8134F7A8 0001DBA8  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F7AC 0001DBAC  48 00 46 55 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F7B0 0001DBB0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F7B4 0001DBB4  41 82 00 14 */	beq .L_8134F7C8
/* 8134F7B8 0001DBB8  38 7D 1C F0 */	addi r3, r29, 0x1cf0
/* 8134F7BC 0001DBBC  4C C6 31 82 */	crclr cr1eq
/* 8134F7C0 0001DBC0  48 1D EE E1 */	bl OSReport
/* 8134F7C4 0001DBC4  48 00 00 CC */	b .L_8134F890
.L_8134F7C8:
/* 8134F7C8 0001DBC8  7F 83 E3 78 */	mr r3, r28
/* 8134F7CC 0001DBCC  7F 45 D3 78 */	mr r5, r26
/* 8134F7D0 0001DBD0  38 9E F0 C0 */	subi r4, r30, 0xf40
/* 8134F7D4 0001DBD4  48 00 48 9D */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8134F7D8 0001DBD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F7DC 0001DBDC  41 82 00 10 */	beq .L_8134F7EC
/* 8134F7E0 0001DBE0  38 00 FF FD */	li r0, -0x3
/* 8134F7E4 0001DBE4  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F7E8 0001DBE8  48 00 00 A8 */	b .L_8134F890
.L_8134F7EC:
/* 8134F7EC 0001DBEC  38 61 00 0C */	addi r3, r1, 0xc
/* 8134F7F0 0001DBF0  38 9A 00 0E */	addi r4, r26, 0xe
/* 8134F7F4 0001DBF4  38 A0 00 10 */	li r5, 0x10
/* 8134F7F8 0001DBF8  4B FE 0A 39 */	bl memcpy
/* 8134F7FC 0001DBFC  3C 80 81 61 */	lis r4, lbl_8160D648@ha
/* 8134F800 0001DC00  38 7A 00 0E */	addi r3, r26, 0xe
/* 8134F804 0001DC04  38 84 D6 48 */	addi r4, r4, lbl_8160D648@l
/* 8134F808 0001DC08  38 A0 00 10 */	li r5, 0x10
/* 8134F80C 0001DC0C  4B FE 0A 25 */	bl memcpy
/* 8134F810 0001DC10  7F E3 FB 78 */	mr r3, r31
/* 8134F814 0001DC14  7F 45 D3 78 */	mr r5, r26
/* 8134F818 0001DC18  38 81 00 0C */	addi r4, r1, 0xc
/* 8134F81C 0001DC1C  38 DE F0 C0 */	subi r6, r30, 0xf40
/* 8134F820 0001DC20  48 00 17 DD */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 8134F824 0001DC24  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F828 0001DC28  40 82 00 20 */	bne .L_8134F848
/* 8134F82C 0001DC2C  38 7D 1D 10 */	addi r3, r29, 0x1d10
/* 8134F830 0001DC30  38 81 00 1C */	addi r4, r1, 0x1c
/* 8134F834 0001DC34  4C C6 31 82 */	crclr cr1eq
/* 8134F838 0001DC38  48 1D EE 69 */	bl OSReport
/* 8134F83C 0001DC3C  38 00 FF FD */	li r0, -0x3
/* 8134F840 0001DC40  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F844 0001DC44  48 00 00 4C */	b .L_8134F890
.L_8134F848:
/* 8134F848 0001DC48  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 8134F84C 0001DC4C  38 00 FF FF */	li r0, -0x1
/* 8134F850 0001DC50  7C 60 00 38 */	and r0, r3, r0
/* 8134F854 0001DC54  7C 19 00 40 */	cmplw r25, r0
/* 8134F858 0001DC58  40 82 00 20 */	bne .L_8134F878
/* 8134F85C 0001DC5C  80 7A 00 20 */	lwz r3, 0x20(r26)
/* 8134F860 0001DC60  3C 03 A8 B7 */	subis r0, r3, 0x5749
/* 8134F864 0001DC64  28 00 42 4E */	cmplwi r0, 0x424e
/* 8134F868 0001DC68  40 82 00 10 */	bne .L_8134F878
/* 8134F86C 0001DC6C  38 00 00 00 */	li r0, 0x0
/* 8134F870 0001DC70  90 01 00 08 */	stw r0, 0x8(r1)
/* 8134F874 0001DC74  48 00 00 1C */	b .L_8134F890
.L_8134F878:
/* 8134F878 0001DC78  38 7D 0A 6F */	addi r3, r29, 0xa6f
/* 8134F87C 0001DC7C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8134F880 0001DC80  4C C6 31 82 */	crclr cr1eq
/* 8134F884 0001DC84  48 1D EE 1D */	bl OSReport
/* 8134F888 0001DC88  38 00 FF FD */	li r0, -0x3
/* 8134F88C 0001DC8C  90 01 00 08 */	stw r0, 0x8(r1)
.L_8134F890:
/* 8134F890 0001DC90  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8134F894 0001DC94  7F 84 E3 78 */	mr r4, r28
/* 8134F898 0001DC98  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134F89C 0001DC9C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134F8A0 0001DCA0  48 20 B1 65 */	bl fn_8155AA04
/* 8134F8A4 0001DCA4  39 61 00 80 */	addi r11, r1, 0x80
/* 8134F8A8 0001DCA8  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134F8AC 0001DCAC  48 2A 9C 59 */	bl _restgpr_25
/* 8134F8B0 0001DCB0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8134F8B4 0001DCB4  7C 08 03 A6 */	mtlr r0
/* 8134F8B8 0001DCB8  38 21 00 80 */	addi r1, r1, 0x80
/* 8134F8BC 0001DCBC  4E 80 00 20 */	blr
.endfn get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner

# .text:0x74D4 | 0x8134F8C0 | size: 0x170
# ipl::NandSDWorker::get_sd_wad_header(unsigned long, WADBackupHeader*)
.fn get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader, global
/* 8134F8C0 0001DCC0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8134F8C4 0001DCC4  7C 08 02 A6 */	mflr r0
/* 8134F8C8 0001DCC8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8134F8CC 0001DCCC  39 61 00 70 */	addi r11, r1, 0x70
/* 8134F8D0 0001DCD0  48 2A 9B F1 */	bl _savegpr_27
/* 8134F8D4 0001DCD4  2C 06 00 00 */	cmpwi r6, 0x0
/* 8134F8D8 0001DCD8  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134F8DC 0001DCDC  7C 7B 1B 78 */	mr r27, r3
/* 8134F8E0 0001DCE0  7C BC 2B 78 */	mr r28, r5
/* 8134F8E4 0001DCE4  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134F8E8 0001DCE8  40 82 00 1C */	bne .L_8134F904
/* 8134F8EC 0001DCEC  3C 60 00 01 */	lis r3, 0x1
/* 8134F8F0 0001DCF0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8134F8F4 0001DCF4  3B C3 F0 C0 */	subi r30, r3, 0xf40
/* 8134F8F8 0001DCF8  38 60 00 00 */	li r3, 0x0
/* 8134F8FC 0001DCFC  4B FF 9A AD */	bl get_sd_save_path__Q23ipl12NandSDWorkerFUxPc
/* 8134F900 0001DD00  48 00 00 14 */	b .L_8134F914
.L_8134F904:
/* 8134F904 0001DD04  3B C6 06 40 */	addi r30, r6, 0x640
/* 8134F908 0001DD08  38 A1 00 0C */	addi r5, r1, 0xc
/* 8134F90C 0001DD0C  38 60 00 00 */	li r3, 0x0
/* 8134F910 0001DD10  4B FF 9B 25 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
.L_8134F914:
/* 8134F914 0001DD14  38 61 00 0C */	addi r3, r1, 0xc
/* 8134F918 0001DD18  38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 8134F91C 0001DD1C  48 29 87 25 */	bl fn_815E8040
/* 8134F920 0001DD20  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F924 0001DD24  7C 7D 1B 78 */	mr r29, r3
/* 8134F928 0001DD28  40 82 00 28 */	bne .L_8134F950
/* 8134F92C 0001DD2C  38 7F 17 AE */	addi r3, r31, 0x17ae
/* 8134F930 0001DD30  38 81 00 0C */	addi r4, r1, 0xc
/* 8134F934 0001DD34  4C C6 31 82 */	crclr cr1eq
/* 8134F938 0001DD38  48 1D ED 69 */	bl OSReport
/* 8134F93C 0001DD3C  7F 63 DB 78 */	mr r3, r27
/* 8134F940 0001DD40  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F944 0001DD44  38 80 FF FF */	li r4, -0x1
/* 8134F948 0001DD48  48 00 44 B9 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F94C 0001DD4C  48 00 00 C8 */	b .L_8134FA14
.L_8134F950:
/* 8134F950 0001DD50  7F C4 F3 78 */	mr r4, r30
/* 8134F954 0001DD54  38 A0 00 00 */	li r5, 0x0
/* 8134F958 0001DD58  48 29 87 49 */	bl fn_815E80A0
/* 8134F95C 0001DD5C  7C 64 1B 78 */	mr r4, r3
/* 8134F960 0001DD60  7F 63 DB 78 */	mr r3, r27
/* 8134F964 0001DD64  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F968 0001DD68  48 00 44 99 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F96C 0001DD6C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F970 0001DD70  41 82 00 20 */	beq .L_8134F990
/* 8134F974 0001DD74  38 7F 17 F0 */	addi r3, r31, 0x17f0
/* 8134F978 0001DD78  38 81 00 0C */	addi r4, r1, 0xc
/* 8134F97C 0001DD7C  4C C6 31 82 */	crclr cr1eq
/* 8134F980 0001DD80  48 1D ED 21 */	bl OSReport
/* 8134F984 0001DD84  7F A3 EB 78 */	mr r3, r29
/* 8134F988 0001DD88  48 29 86 61 */	bl fn_815E7FE8
/* 8134F98C 0001DD8C  48 00 00 88 */	b .L_8134FA14
.L_8134F990:
/* 8134F990 0001DD90  7F 83 E3 78 */	mr r3, r28
/* 8134F994 0001DD94  7F A6 EB 78 */	mr r6, r29
/* 8134F998 0001DD98  38 80 00 70 */	li r4, 0x70
/* 8134F99C 0001DD9C  38 A0 00 01 */	li r5, 0x1
/* 8134F9A0 0001DDA0  48 29 86 FD */	bl fn_815E809C
/* 8134F9A4 0001DDA4  28 03 00 01 */	cmplwi r3, 0x1
/* 8134F9A8 0001DDA8  41 82 00 34 */	beq .L_8134F9DC
/* 8134F9AC 0001DDAC  7F 63 DB 78 */	mr r3, r27
/* 8134F9B0 0001DDB0  38 80 FF FF */	li r4, -0x1
/* 8134F9B4 0001DDB4  38 A0 00 00 */	li r5, 0x0
/* 8134F9B8 0001DDB8  48 00 44 49 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F9BC 0001DDBC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F9C0 0001DDC0  90 61 00 08 */	stw r3, 0x8(r1)
/* 8134F9C4 0001DDC4  40 82 00 0C */	bne .L_8134F9D0
/* 8134F9C8 0001DDC8  38 00 FF FD */	li r0, -0x3
/* 8134F9CC 0001DDCC  90 01 00 08 */	stw r0, 0x8(r1)
.L_8134F9D0:
/* 8134F9D0 0001DDD0  7F A3 EB 78 */	mr r3, r29
/* 8134F9D4 0001DDD4  48 29 86 15 */	bl fn_815E7FE8
/* 8134F9D8 0001DDD8  48 00 00 3C */	b .L_8134FA14
.L_8134F9DC:
/* 8134F9DC 0001DDDC  7F A3 EB 78 */	mr r3, r29
/* 8134F9E0 0001DDE0  48 29 86 09 */	bl fn_815E7FE8
/* 8134F9E4 0001DDE4  7C 64 1B 78 */	mr r4, r3
/* 8134F9E8 0001DDE8  7F 63 DB 78 */	mr r3, r27
/* 8134F9EC 0001DDEC  38 A1 00 08 */	addi r5, r1, 0x8
/* 8134F9F0 0001DDF0  48 00 44 11 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8134F9F4 0001DDF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134F9F8 0001DDF8  41 82 00 14 */	beq .L_8134FA0C
/* 8134F9FC 0001DDFC  38 7F 1C F0 */	addi r3, r31, 0x1cf0
/* 8134FA00 0001DE00  4C C6 31 82 */	crclr cr1eq
/* 8134FA04 0001DE04  48 1D EC 9D */	bl OSReport
/* 8134FA08 0001DE08  48 00 00 0C */	b .L_8134FA14
.L_8134FA0C:
/* 8134FA0C 0001DE0C  38 00 00 00 */	li r0, 0x0
/* 8134FA10 0001DE10  90 01 00 08 */	stw r0, 0x8(r1)
.L_8134FA14:
/* 8134FA14 0001DE14  39 61 00 70 */	addi r11, r1, 0x70
/* 8134FA18 0001DE18  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8134FA1C 0001DE1C  48 2A 9A F1 */	bl _restgpr_27
/* 8134FA20 0001DE20  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8134FA24 0001DE24  7C 08 03 A6 */	mtlr r0
/* 8134FA28 0001DE28  38 21 00 70 */	addi r1, r1, 0x70
/* 8134FA2C 0001DE2C  4E 80 00 20 */	blr
.endfn get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader

# .text:0x7644 | 0x8134FA30 | size: 0x174
# ipl::NandSDWorker::do_format_sd()
.fn do_format_sd__Q23ipl12NandSDWorkerFv, global
/* 8134FA30 0001DE30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134FA34 0001DE34  7C 08 02 A6 */	mflr r0
/* 8134FA38 0001DE38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134FA3C 0001DE3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8134FA40 0001DE40  48 2A 9A 89 */	bl _savegpr_29
/* 8134FA44 0001DE44  80 8D A6 98 */	lwz r4, lbl_816986D8@sda21(r0)
/* 8134FA48 0001DE48  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134FA4C 0001DE4C  7C 7D 1B 78 */	mr r29, r3
/* 8134FA50 0001DE50  2C 04 00 06 */	cmpwi r4, 0x6
/* 8134FA54 0001DE54  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134FA58 0001DE58  41 82 00 2C */	beq .L_8134FA84
/* 8134FA5C 0001DE5C  2C 04 00 03 */	cmpwi r4, 0x3
/* 8134FA60 0001DE60  41 82 00 24 */	beq .L_8134FA84
/* 8134FA64 0001DE64  38 7F 1D 49 */	addi r3, r31, 0x1d49
/* 8134FA68 0001DE68  4C C6 31 82 */	crclr cr1eq
/* 8134FA6C 0001DE6C  48 1D EC 35 */	bl OSReport
/* 8134FA70 0001DE70  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FA74 0001DE74  38 00 FF FE */	li r0, -0x2
/* 8134FA78 0001DE78  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FA7C 0001DE7C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134FA80 0001DE80  48 00 01 0C */	b .L_8134FB8C
.L_8134FA84:
/* 8134FA84 0001DE84  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8134FA88 0001DE88  38 80 00 00 */	li r4, 0x0
/* 8134FA8C 0001DE8C  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134FA90 0001DE90  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134FA94 0001DE94  7C 03 07 74 */	extsb r3, r0
/* 8134FA98 0001DE98  48 29 85 D5 */	bl fn_815E806C
/* 8134FA9C 0001DE9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FAA0 0001DEA0  7C 7E 1B 78 */	mr r30, r3
/* 8134FAA4 0001DEA4  41 82 00 38 */	beq .L_8134FADC
/* 8134FAA8 0001DEA8  48 29 85 01 */	bl fn_815E7FA8
/* 8134FAAC 0001DEAC  2C 03 00 08 */	cmpwi r3, 0x8
/* 8134FAB0 0001DEB0  40 82 00 2C */	bne .L_8134FADC
/* 8134FAB4 0001DEB4  38 7F 1D 8A */	addi r3, r31, 0x1d8a
/* 8134FAB8 0001DEB8  4C C6 31 82 */	crclr cr1eq
/* 8134FABC 0001DEBC  48 1D EB E5 */	bl OSReport
/* 8134FAC0 0001DEC0  38 60 00 03 */	li r3, 0x3
/* 8134FAC4 0001DEC4  38 00 FF F7 */	li r0, -0x9
/* 8134FAC8 0001DEC8  90 6D A6 98 */	stw r3, lbl_816986D8@sda21(r0)
/* 8134FACC 0001DECC  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FAD0 0001DED0  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FAD4 0001DED4  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8134FAD8 0001DED8  48 00 00 B4 */	b .L_8134FB8C
.L_8134FADC:
/* 8134FADC 0001DEDC  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8134FAE0 0001DEE0  7F A3 EB 78 */	mr r3, r29
/* 8134FAE4 0001DEE4  7F C4 F3 78 */	mr r4, r30
/* 8134FAE8 0001DEE8  3C A5 00 04 */	addis r5, r5, 0x4
/* 8134FAEC 0001DEEC  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8134FAF0 0001DEF0  48 00 41 C5 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134FAF4 0001DEF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FAF8 0001DEF8  40 82 00 7C */	bne .L_8134FB74
/* 8134FAFC 0001DEFC  38 7F 1D C7 */	addi r3, r31, 0x1dc7
/* 8134FB00 0001DF00  4C C6 31 82 */	crclr cr1eq
/* 8134FB04 0001DF04  48 1D EB 9D */	bl OSReport
/* 8134FB08 0001DF08  38 00 00 06 */	li r0, 0x6
/* 8134FB0C 0001DF0C  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
/* 8134FB10 0001DF10  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB14 0001DF14  3C 83 00 02 */	addis r4, r3, 0x2
/* 8134FB18 0001DF18  80 04 E6 94 */	lwz r0, -0x196c(r4)
/* 8134FB1C 0001DF1C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134FB20 0001DF20  41 82 00 20 */	beq .L_8134FB40
/* 8134FB24 0001DF24  7F A3 EB 78 */	mr r3, r29
/* 8134FB28 0001DF28  38 84 E6 6C */	subi r4, r4, 0x1994
/* 8134FB2C 0001DF2C  48 00 31 69 */	bl clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134FB30 0001DF30  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB34 0001DF34  38 00 00 00 */	li r0, 0x0
/* 8134FB38 0001DF38  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FB3C 0001DF3C  90 03 EA 30 */	stw r0, -0x15d0(r3)
.L_8134FB40:
/* 8134FB40 0001DF40  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB44 0001DF44  3C 83 00 02 */	addis r4, r3, 0x2
/* 8134FB48 0001DF48  80 04 E6 98 */	lwz r0, -0x1968(r4)
/* 8134FB4C 0001DF4C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134FB50 0001DF50  41 82 00 3C */	beq .L_8134FB8C
/* 8134FB54 0001DF54  7F A3 EB 78 */	mr r3, r29
/* 8134FB58 0001DF58  38 84 E6 84 */	subi r4, r4, 0x197c
/* 8134FB5C 0001DF5C  48 00 33 D1 */	bl clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List
/* 8134FB60 0001DF60  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8134FB64 0001DF64  38 00 00 00 */	li r0, 0x0
/* 8134FB68 0001DF68  3C 63 00 04 */	addis r3, r3, 0x4
/* 8134FB6C 0001DF6C  90 03 EA 34 */	stw r0, -0x15cc(r3)
/* 8134FB70 0001DF70  48 00 00 1C */	b .L_8134FB8C
.L_8134FB74:
/* 8134FB74 0001DF74  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8134FB78 0001DF78  38 7F 1D EE */	addi r3, r31, 0x1dee
/* 8134FB7C 0001DF7C  3C 84 00 04 */	addis r4, r4, 0x4
/* 8134FB80 0001DF80  80 84 EA 24 */	lwz r4, -0x15dc(r4)
/* 8134FB84 0001DF84  4C C6 31 82 */	crclr cr1eq
/* 8134FB88 0001DF88  48 1D EB 19 */	bl OSReport
.L_8134FB8C:
/* 8134FB8C 0001DF8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8134FB90 0001DF90  48 2A 99 85 */	bl _restgpr_29
/* 8134FB94 0001DF94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134FB98 0001DF98  7C 08 03 A6 */	mtlr r0
/* 8134FB9C 0001DF9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8134FBA0 0001DFA0  4E 80 00 20 */	blr
.endfn do_format_sd__Q23ipl12NandSDWorkerFv

# .text:0x77B8 | 0x8134FBA4 | size: 0xF0
# ipl::NandSDWorker::get_sd_free_area()
.fn get_sd_free_area__Q23ipl12NandSDWorkerFv, global
/* 8134FBA4 0001DFA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134FBA8 0001DFA8  7C 08 02 A6 */	mflr r0
/* 8134FBAC 0001DFAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134FBB0 0001DFB0  38 81 00 08 */	addi r4, r1, 0x8
/* 8134FBB4 0001DFB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8134FBB8 0001DFB8  7C 7F 1B 78 */	mr r31, r3
/* 8134FBBC 0001DFBC  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134FBC0 0001DFC0  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134FBC4 0001DFC4  88 03 E6 48 */	lbz r0, -0x19b8(r3)
/* 8134FBC8 0001DFC8  7C 03 07 74 */	extsb r3, r0
/* 8134FBCC 0001DFCC  48 29 85 89 */	bl fn_815E8154
/* 8134FBD0 0001DFD0  7C 64 1B 78 */	mr r4, r3
/* 8134FBD4 0001DFD4  7F E3 FB 78 */	mr r3, r31
/* 8134FBD8 0001DFD8  38 A0 00 00 */	li r5, 0x0
/* 8134FBDC 0001DFDC  48 00 40 D9 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8134FBE0 0001DFE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FBE4 0001DFE4  7C 7F 1B 78 */	mr r31, r3
/* 8134FBE8 0001DFE8  40 82 00 7C */	bne .L_8134FC64
/* 8134FBEC 0001DFEC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8134FBF0 0001DFF0  3C 60 81 63 */	lis r3, lbl_8163789A@ha
/* 8134FBF4 0001DFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134FBF8 0001DFF8  38 63 78 9A */	addi r3, r3, lbl_8163789A@l
/* 8134FBFC 0001DFFC  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8134FC00 0001E000  7C A4 01 D6 */	mullw r5, r4, r0
/* 8134FC04 0001E004  7C 84 00 16 */	mulhwu r4, r4, r0
/* 8134FC08 0001E008  7C 05 30 16 */	mulhwu r0, r5, r6
/* 8134FC0C 0001E00C  7C 84 31 D6 */	mullw r4, r4, r6
/* 8134FC10 0001E010  7C C5 31 D6 */	mullw r6, r5, r6
/* 8134FC14 0001E014  7C A0 22 14 */	add r5, r0, r4
/* 8134FC18 0001E018  4C C6 31 82 */	crclr cr1eq
/* 8134FC1C 0001E01C  48 1D EA 85 */	bl OSReport
/* 8134FC20 0001E020  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8134FC24 0001E024  38 C0 00 00 */	li r6, 0x0
/* 8134FC28 0001E028  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8134FC2C 0001E02C  7C 03 31 D6 */	mullw r0, r3, r6
/* 8134FC30 0001E030  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 8134FC34 0001E034  7C A3 21 D6 */	mullw r5, r3, r4
/* 8134FC38 0001E038  7C 63 20 16 */	mulhwu r3, r3, r4
/* 8134FC3C 0001E03C  7C 86 21 D6 */	mullw r4, r6, r4
/* 8134FC40 0001E040  7C 63 22 14 */	add r3, r3, r4
/* 8134FC44 0001E044  7C 03 02 14 */	add r0, r3, r0
/* 8134FC48 0001E048  7C 67 28 16 */	mulhwu r3, r7, r5
/* 8134FC4C 0001E04C  7C 86 29 D6 */	mullw r4, r6, r5
/* 8134FC50 0001E050  7C 63 22 14 */	add r3, r3, r4
/* 8134FC54 0001E054  7C 07 01 D6 */	mullw r0, r7, r0
/* 8134FC58 0001E058  7C 87 29 D6 */	mullw r4, r7, r5
/* 8134FC5C 0001E05C  7C 63 02 14 */	add r3, r3, r0
/* 8134FC60 0001E060  48 00 00 20 */	b .L_8134FC80
.L_8134FC64:
/* 8134FC64 0001E064  3C 60 81 63 */	lis r3, lbl_816378C2@ha
/* 8134FC68 0001E068  7F E4 FB 78 */	mr r4, r31
/* 8134FC6C 0001E06C  38 63 78 C2 */	addi r3, r3, lbl_816378C2@l
/* 8134FC70 0001E070  4C C6 31 82 */	crclr cr1eq
/* 8134FC74 0001E074  48 1D EA 2D */	bl OSReport
/* 8134FC78 0001E078  7F E3 FE 70 */	srawi r3, r31, 31
/* 8134FC7C 0001E07C  7F E4 FB 78 */	mr r4, r31
.L_8134FC80:
/* 8134FC80 0001E080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134FC84 0001E084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8134FC88 0001E088  7C 08 03 A6 */	mtlr r0
/* 8134FC8C 0001E08C  38 21 00 20 */	addi r1, r1, 0x20
/* 8134FC90 0001E090  4E 80 00 20 */	blr
.endfn get_sd_free_area__Q23ipl12NandSDWorkerFv

# .text:0x78A8 | 0x8134FC94 | size: 0x214
# ipl::NandSDWorker::delete_download_task(unsigned long)
.fn delete_download_task__Q23ipl12NandSDWorkerFUl, global
/* 8134FC94 0001E094  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8134FC98 0001E098  7C 08 02 A6 */	mflr r0
/* 8134FC9C 0001E09C  90 01 02 44 */	stw r0, 0x244(r1)
/* 8134FCA0 0001E0A0  39 61 02 40 */	addi r11, r1, 0x240
/* 8134FCA4 0001E0A4  48 2A 98 09 */	bl _savegpr_22
/* 8134FCA8 0001E0A8  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134FCAC 0001E0AC  7C 79 1B 78 */	mr r25, r3
/* 8134FCB0 0001E0B0  3F A0 81 63 */	lis r29, lbl_81635A88@ha
/* 8134FCB4 0001E0B4  7C 9A 23 78 */	mr r26, r4
/* 8134FCB8 0001E0B8  3C 65 00 02 */	addis r3, r5, 0x2
/* 8134FCBC 0001E0BC  3B 60 00 00 */	li r27, 0x0
/* 8134FCC0 0001E0C0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134FCC4 0001E0C4  3B BD 5A 88 */	addi r29, r29, lbl_81635A88@l
/* 8134FCC8 0001E0C8  38 80 40 00 */	li r4, 0x4000
/* 8134FCCC 0001E0CC  38 A0 00 20 */	li r5, 0x20
/* 8134FCD0 0001E0D0  48 20 AA 85 */	bl fn_8155A754
/* 8134FCD4 0001E0D4  7C 7C 1B 78 */	mr r28, r3
/* 8134FCD8 0001E0D8  48 1E 5F C1 */	bl fn_81535C98
/* 8134FCDC 0001E0DC  38 00 00 00 */	li r0, 0x0
/* 8134FCE0 0001E0E0  3A E0 00 1E */	li r23, 0x1e
/* 8134FCE4 0001E0E4  7F 00 B9 D6 */	mullw r24, r0, r23
/* 8134FCE8 0001E0E8  7C 7E 1B 78 */	mr r30, r3
/* 8134FCEC 0001E0EC  3F E0 80 00 */	lis r31, 0x8000
/* 8134FCF0 0001E0F0  3A C0 03 E8 */	li r22, 0x3e8
/* 8134FCF4 0001E0F4  48 00 00 60 */	b .L_8134FD54
.L_8134FCF8:
/* 8134FCF8 0001E0F8  38 7D 1E 5E */	addi r3, r29, 0x1e5e
/* 8134FCFC 0001E0FC  4C C6 31 82 */	crclr cr1eq
/* 8134FD00 0001E100  48 1D E9 A1 */	bl OSReport
/* 8134FD04 0001E104  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8134FD08 0001E108  54 00 F0 BE */	srwi r0, r0, 2
/* 8134FD0C 0001E10C  7C 60 B3 96 */	divwu r3, r0, r22
/* 8134FD10 0001E110  7C 03 B8 16 */	mulhwu r0, r3, r23
/* 8134FD14 0001E114  1C 83 00 1E */	mulli r4, r3, 0x1e
/* 8134FD18 0001E118  7C 60 C2 14 */	add r3, r0, r24
/* 8134FD1C 0001E11C  48 1E 5E B1 */	bl fn_81535BCC
/* 8134FD20 0001E120  48 1E 5F 79 */	bl fn_81535C98
/* 8134FD24 0001E124  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8134FD28 0001E128  7C 7E 18 50 */	subf r3, r30, r3
/* 8134FD2C 0001E12C  54 00 F0 BE */	srwi r0, r0, 2
/* 8134FD30 0001E130  7C 00 B3 96 */	divwu r0, r0, r22
/* 8134FD34 0001E134  7C 03 03 96 */	divwu r0, r3, r0
/* 8134FD38 0001E138  28 00 0B B8 */	cmplwi r0, 0xbb8
/* 8134FD3C 0001E13C  40 81 00 18 */	ble .L_8134FD54
/* 8134FD40 0001E140  38 7D 1E 80 */	addi r3, r29, 0x1e80
/* 8134FD44 0001E144  3B 60 FF FE */	li r27, -0x2
/* 8134FD48 0001E148  4C C6 31 82 */	crclr cr1eq
/* 8134FD4C 0001E14C  48 1D E9 55 */	bl OSReport
/* 8134FD50 0001E150  48 00 01 10 */	b .L_8134FE60
.L_8134FD54:
/* 8134FD54 0001E154  7F 83 E3 78 */	mr r3, r28
/* 8134FD58 0001E158  48 15 02 BD */	bl fn_814A0014
/* 8134FD5C 0001E15C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FD60 0001E160  40 82 FF 98 */	bne .L_8134FCF8
/* 8134FD64 0001E164  38 00 00 00 */	li r0, 0x0
/* 8134FD68 0001E168  38 61 00 08 */	addi r3, r1, 0x8
/* 8134FD6C 0001E16C  B0 01 00 08 */	sth r0, 0x8(r1)
/* 8134FD70 0001E170  38 80 00 01 */	li r4, 0x1
/* 8134FD74 0001E174  48 15 F6 95 */	bl fn_814AF408
/* 8134FD78 0001E178  48 00 00 C4 */	b .L_8134FE3C
.L_8134FD7C:
/* 8134FD7C 0001E17C  A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8134FD80 0001E180  38 61 00 10 */	addi r3, r1, 0x10
/* 8134FD84 0001E184  48 16 01 D9 */	bl fn_814AFF5C
/* 8134FD88 0001E188  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FD8C 0001E18C  41 82 00 18 */	beq .L_8134FDA4
/* 8134FD90 0001E190  7C 64 1B 78 */	mr r4, r3
/* 8134FD94 0001E194  38 7D 1E A1 */	addi r3, r29, 0x1ea1
/* 8134FD98 0001E198  4C C6 31 82 */	crclr cr1eq
/* 8134FD9C 0001E19C  48 1D E9 05 */	bl OSReport
/* 8134FDA0 0001E1A0  48 00 00 90 */	b .L_8134FE30
.L_8134FDA4:
/* 8134FDA4 0001E1A4  38 61 00 10 */	addi r3, r1, 0x10
/* 8134FDA8 0001E1A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8134FDAC 0001E1AC  48 15 F5 61 */	bl fn_814AF30C
/* 8134FDB0 0001E1B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FDB4 0001E1B4  41 82 00 18 */	beq .L_8134FDCC
/* 8134FDB8 0001E1B8  7C 64 1B 78 */	mr r4, r3
/* 8134FDBC 0001E1BC  38 7D 1E DA */	addi r3, r29, 0x1eda
/* 8134FDC0 0001E1C0  4C C6 31 82 */	crclr cr1eq
/* 8134FDC4 0001E1C4  48 1D E8 DD */	bl OSReport
/* 8134FDC8 0001E1C8  48 00 00 68 */	b .L_8134FE30
.L_8134FDCC:
/* 8134FDCC 0001E1CC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8134FDD0 0001E1D0  7C 05 D0 40 */	cmplw r5, r26
/* 8134FDD4 0001E1D4  40 82 00 4C */	bne .L_8134FE20
/* 8134FDD8 0001E1D8  38 7D 1F 14 */	addi r3, r29, 0x1f14
/* 8134FDDC 0001E1DC  38 81 00 10 */	addi r4, r1, 0x10
/* 8134FDE0 0001E1E0  4C C6 31 82 */	crclr cr1eq
/* 8134FDE4 0001E1E4  48 1D E8 BD */	bl OSReport
/* 8134FDE8 0001E1E8  38 61 00 10 */	addi r3, r1, 0x10
/* 8134FDEC 0001E1EC  48 15 FD 91 */	bl fn_814AFB7C
/* 8134FDF0 0001E1F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FDF4 0001E1F4  41 82 00 18 */	beq .L_8134FE0C
/* 8134FDF8 0001E1F8  7C 64 1B 78 */	mr r4, r3
/* 8134FDFC 0001E1FC  38 7D 1E DA */	addi r3, r29, 0x1eda
/* 8134FE00 0001E200  4C C6 31 82 */	crclr cr1eq
/* 8134FE04 0001E204  48 1D E8 9D */	bl OSReport
/* 8134FE08 0001E208  48 00 00 28 */	b .L_8134FE30
.L_8134FE0C:
/* 8134FE0C 0001E20C  A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8134FE10 0001E210  38 7D 1F 49 */	addi r3, r29, 0x1f49
/* 8134FE14 0001E214  4C C6 31 82 */	crclr cr1eq
/* 8134FE18 0001E218  48 1D E8 89 */	bl OSReport
/* 8134FE1C 0001E21C  48 00 00 14 */	b .L_8134FE30
.L_8134FE20:
/* 8134FE20 0001E220  A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8134FE24 0001E224  38 7D 1F 7C */	addi r3, r29, 0x1f7c
/* 8134FE28 0001E228  4C C6 31 82 */	crclr cr1eq
/* 8134FE2C 0001E22C  48 1D E8 75 */	bl OSReport
.L_8134FE30:
/* 8134FE30 0001E230  38 61 00 08 */	addi r3, r1, 0x8
/* 8134FE34 0001E234  38 80 00 00 */	li r4, 0x0
/* 8134FE38 0001E238  48 15 F5 D1 */	bl fn_814AF408
.L_8134FE3C:
/* 8134FE3C 0001E23C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FE40 0001E240  40 80 FF 3C */	bge .L_8134FD7C
/* 8134FE44 0001E244  48 15 03 DD */	bl fn_814A0220
/* 8134FE48 0001E248  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FE4C 0001E24C  41 82 00 14 */	beq .L_8134FE60
/* 8134FE50 0001E250  7C 64 1B 78 */	mr r4, r3
/* 8134FE54 0001E254  38 7D 1F A5 */	addi r3, r29, 0x1fa5
/* 8134FE58 0001E258  4C C6 31 82 */	crclr cr1eq
/* 8134FE5C 0001E25C  48 1D E8 45 */	bl OSReport
.L_8134FE60:
/* 8134FE60 0001E260  2C 1C 00 00 */	cmpwi r28, 0x0
/* 8134FE64 0001E264  41 82 00 18 */	beq .L_8134FE7C
/* 8134FE68 0001E268  80 79 00 00 */	lwz r3, 0x0(r25)
/* 8134FE6C 0001E26C  7F 84 E3 78 */	mr r4, r28
/* 8134FE70 0001E270  3C 63 00 02 */	addis r3, r3, 0x2
/* 8134FE74 0001E274  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8134FE78 0001E278  48 20 AB 8D */	bl fn_8155AA04
.L_8134FE7C:
/* 8134FE7C 0001E27C  7F 44 D3 78 */	mr r4, r26
/* 8134FE80 0001E280  38 7D 1F DD */	addi r3, r29, 0x1fdd
/* 8134FE84 0001E284  4C C6 31 82 */	crclr cr1eq
/* 8134FE88 0001E288  48 1D E8 19 */	bl OSReport
/* 8134FE8C 0001E28C  39 61 02 40 */	addi r11, r1, 0x240
/* 8134FE90 0001E290  7F 63 DB 78 */	mr r3, r27
/* 8134FE94 0001E294  48 2A 96 65 */	bl _restgpr_22
/* 8134FE98 0001E298  80 01 02 44 */	lwz r0, 0x244(r1)
/* 8134FE9C 0001E29C  7C 08 03 A6 */	mtlr r0
/* 8134FEA0 0001E2A0  38 21 02 40 */	addi r1, r1, 0x240
/* 8134FEA4 0001E2A4  4E 80 00 20 */	blr
.endfn delete_download_task__Q23ipl12NandSDWorkerFUl

# .text:0x7ABC | 0x8134FEA8 | size: 0x134
# ipl::NandSDWorker::delete_nand_app_content(unsigned long long)
.fn delete_nand_app_content__Q23ipl12NandSDWorkerFUx, global
/* 8134FEA8 0001E2A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134FEAC 0001E2AC  7C 08 02 A6 */	mflr r0
/* 8134FEB0 0001E2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134FEB4 0001E2B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8134FEB8 0001E2B8  48 2A 96 0D */	bl _savegpr_28
/* 8134FEBC 0001E2BC  7C DD 33 78 */	mr r29, r6
/* 8134FEC0 0001E2C0  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 8134FEC4 0001E2C4  7C BE 2B 78 */	mr r30, r5
/* 8134FEC8 0001E2C8  7C 7C 1B 78 */	mr r28, r3
/* 8134FECC 0001E2CC  7F A4 EB 78 */	mr r4, r29
/* 8134FED0 0001E2D0  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 8134FED4 0001E2D4  7F C3 F3 78 */	mr r3, r30
/* 8134FED8 0001E2D8  4B FF 93 BD */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 8134FEDC 0001E2DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FEE0 0001E2E0  40 82 00 20 */	bne .L_8134FF00
/* 8134FEE4 0001E2E4  7F A6 EB 78 */	mr r6, r29
/* 8134FEE8 0001E2E8  7F C5 F3 78 */	mr r5, r30
/* 8134FEEC 0001E2EC  38 7F 20 0A */	addi r3, r31, 0x200a
/* 8134FEF0 0001E2F0  4C C6 31 82 */	crclr cr1eq
/* 8134FEF4 0001E2F4  48 1D E7 AD */	bl OSReport
/* 8134FEF8 0001E2F8  38 60 FF FE */	li r3, -0x2
/* 8134FEFC 0001E2FC  48 00 00 C8 */	b .L_8134FFC4
.L_8134FF00:
/* 8134FF00 0001E300  7F 83 E3 78 */	mr r3, r28
/* 8134FF04 0001E304  7F A6 EB 78 */	mr r6, r29
/* 8134FF08 0001E308  7F C5 F3 78 */	mr r5, r30
/* 8134FF0C 0001E30C  4B FF 95 CD */	bl delete_meta_file__Q23ipl12NandSDWorkerFUx
/* 8134FF10 0001E310  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FF14 0001E314  41 82 00 08 */	beq .L_8134FF1C
/* 8134FF18 0001E318  48 00 00 AC */	b .L_8134FFC4
.L_8134FF1C:
/* 8134FF1C 0001E31C  7F A4 EB 78 */	mr r4, r29
/* 8134FF20 0001E320  7F C3 F3 78 */	mr r3, r30
/* 8134FF24 0001E324  48 26 ED 25 */	bl fn_815BEC48
/* 8134FF28 0001E328  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FF2C 0001E32C  41 82 00 1C */	beq .L_8134FF48
/* 8134FF30 0001E330  7C 64 1B 78 */	mr r4, r3
/* 8134FF34 0001E334  38 7F 20 43 */	addi r3, r31, 0x2043
/* 8134FF38 0001E338  4C C6 31 82 */	crclr cr1eq
/* 8134FF3C 0001E33C  48 1D E7 65 */	bl OSReport
/* 8134FF40 0001E340  38 60 FF FE */	li r3, -0x2
/* 8134FF44 0001E344  48 00 00 80 */	b .L_8134FFC4
.L_8134FF48:
/* 8134FF48 0001E348  7F A6 EB 78 */	mr r6, r29
/* 8134FF4C 0001E34C  7F C5 F3 78 */	mr r5, r30
/* 8134FF50 0001E350  38 7F 20 74 */	addi r3, r31, 0x2074
/* 8134FF54 0001E354  4C C6 31 82 */	crclr cr1eq
/* 8134FF58 0001E358  48 1D E7 49 */	bl OSReport
/* 8134FF5C 0001E35C  38 00 FF 00 */	li r0, -0x100
/* 8134FF60 0001E360  3C 80 48 41 */	lis r4, 0x4841
/* 8134FF64 0001E364  7F A5 00 38 */	and r5, r29, r0
/* 8134FF68 0001E368  7F 83 E3 78 */	mr r3, r28
/* 8134FF6C 0001E36C  38 04 4F 00 */	addi r0, r4, 0x4f00
/* 8134FF70 0001E370  7F A6 EB 78 */	mr r6, r29
/* 8134FF74 0001E374  7C A0 02 78 */	xor r0, r5, r0
/* 8134FF78 0001E378  7F C5 F3 78 */	mr r5, r30
/* 8134FF7C 0001E37C  7C 00 00 34 */	cntlzw r0, r0
/* 8134FF80 0001E380  54 07 D9 7E */	srwi r7, r0, 5
/* 8134FF84 0001E384  4B FF DB F9 */	bl delete_empty_title__Q23ipl12NandSDWorkerFUxb
/* 8134FF88 0001E388  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FF8C 0001E38C  41 82 00 0C */	beq .L_8134FF98
/* 8134FF90 0001E390  38 60 FF FE */	li r3, -0x2
/* 8134FF94 0001E394  48 00 00 30 */	b .L_8134FFC4
.L_8134FF98:
/* 8134FF98 0001E398  7F 83 E3 78 */	mr r3, r28
/* 8134FF9C 0001E39C  7F A4 EB 78 */	mr r4, r29
/* 8134FFA0 0001E3A0  4B FF FC F5 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
/* 8134FFA4 0001E3A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134FFA8 0001E3A8  7C 7E 1B 78 */	mr r30, r3
/* 8134FFAC 0001E3AC  41 82 00 14 */	beq .L_8134FFC0
/* 8134FFB0 0001E3B0  7F C4 F3 78 */	mr r4, r30
/* 8134FFB4 0001E3B4  38 7F 20 A3 */	addi r3, r31, 0x20a3
/* 8134FFB8 0001E3B8  4C C6 31 82 */	crclr cr1eq
/* 8134FFBC 0001E3BC  48 1D E6 E5 */	bl OSReport
.L_8134FFC0:
/* 8134FFC0 0001E3C0  7F C3 F3 78 */	mr r3, r30
.L_8134FFC4:
/* 8134FFC4 0001E3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8134FFC8 0001E3C8  48 2A 95 49 */	bl _restgpr_28
/* 8134FFCC 0001E3CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134FFD0 0001E3D0  7C 08 03 A6 */	mtlr r0
/* 8134FFD4 0001E3D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8134FFD8 0001E3D8  4E 80 00 20 */	blr
.endfn delete_nand_app_content__Q23ipl12NandSDWorkerFUx

# .text:0x7BF0 | 0x8134FFDC | size: 0x530
# ipl::NandSDWorker::do_copy_nand_app_to_sd()
.fn do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv, global
/* 8134FFDC 0001E3DC  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8134FFE0 0001E3E0  7C 08 02 A6 */	mflr r0
/* 8134FFE4 0001E3E4  90 01 01 44 */	stw r0, 0x144(r1)
/* 8134FFE8 0001E3E8  39 61 01 40 */	addi r11, r1, 0x140
/* 8134FFEC 0001E3EC  48 2A 94 C5 */	bl _savegpr_23
/* 8134FFF0 0001E3F0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8134FFF4 0001E3F4  7C 77 1B 78 */	mr r23, r3
/* 8134FFF8 0001E3F8  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 8134FFFC 0001E3FC  3C 80 00 01 */	lis r4, 0x1
/* 81350000 0001E400  3C 65 00 02 */	addis r3, r5, 0x2
/* 81350004 0001E404  38 A0 00 20 */	li r5, 0x20
/* 81350008 0001E408  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8135000C 0001E40C  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 81350010 0001E410  38 84 CE 40 */	subi r4, r4, 0x31c0
/* 81350014 0001E414  48 20 A7 41 */	bl fn_8155A754
/* 81350018 0001E418  80 97 00 00 */	lwz r4, 0x0(r23)
/* 8135001C 0001E41C  7C 7B 1B 78 */	mr r27, r3
/* 81350020 0001E420  38 A1 00 24 */	addi r5, r1, 0x24
/* 81350024 0001E424  3B 40 00 00 */	li r26, 0x0
/* 81350028 0001E428  3C 84 00 04 */	addis r4, r4, 0x4
/* 8135002C 0001E42C  3B 20 00 00 */	li r25, 0x0
/* 81350030 0001E430  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81350034 0001E434  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 81350038 0001E438  4B FF 93 FD */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 8135003C 0001E43C  7E E3 BB 78 */	mr r3, r23
/* 81350040 0001E440  38 81 00 24 */	addi r4, r1, 0x24
/* 81350044 0001E444  4B FF E9 89 */	bl prepare_sd_copy__Q23ipl12NandSDWorkerFPCc
/* 81350048 0001E448  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135004C 0001E44C  41 82 00 14 */	beq .L_81350060
/* 81350050 0001E450  80 97 00 00 */	lwz r4, 0x0(r23)
/* 81350054 0001E454  3C 84 00 04 */	addis r4, r4, 0x4
/* 81350058 0001E458  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 8135005C 0001E45C  48 00 04 04 */	b .L_81350460
.L_81350060:
/* 81350060 0001E460  7E E3 BB 78 */	mr r3, r23
/* 81350064 0001E464  4B FF FB 41 */	bl get_sd_free_area__Q23ipl12NandSDWorkerFv
/* 81350068 0001E468  3B E0 00 00 */	li r31, 0x0
/* 8135006C 0001E46C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81350070 0001E470  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 81350074 0001E474  7C 9D 23 78 */	mr r29, r4
/* 81350078 0001E478  7C BF 20 10 */	subfc r5, r31, r4
/* 8135007C 0001E47C  7C 7E 1B 78 */	mr r30, r3
/* 81350080 0001E480  7C C6 01 10 */	subfe r6, r6, r0
/* 81350084 0001E484  7C C0 01 10 */	subfe r6, r0, r0
/* 81350088 0001E488  7C C6 00 D1 */	neg. r6, r6
/* 8135008C 0001E48C  41 82 00 14 */	beq .L_813500A0
/* 81350090 0001E490  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350094 0001E494  3C 63 00 04 */	addis r3, r3, 0x4
/* 81350098 0001E498  90 83 EA 24 */	stw r4, -0x15dc(r3)
/* 8135009C 0001E49C  48 00 03 C4 */	b .L_81350460
.L_813500A0:
/* 813500A0 0001E4A0  80 97 00 00 */	lwz r4, 0x0(r23)
/* 813500A4 0001E4A4  7E E3 BB 78 */	mr r3, r23
/* 813500A8 0001E4A8  7F 67 DB 78 */	mr r7, r27
/* 813500AC 0001E4AC  3C 84 00 04 */	addis r4, r4, 0x4
/* 813500B0 0001E4B0  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 813500B4 0001E4B4  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 813500B8 0001E4B8  48 00 05 B5 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 813500BC 0001E4BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813500C0 0001E4C0  41 82 00 14 */	beq .L_813500D4
/* 813500C4 0001E4C4  80 97 00 00 */	lwz r4, 0x0(r23)
/* 813500C8 0001E4C8  3C 84 00 04 */	addis r4, r4, 0x4
/* 813500CC 0001E4CC  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813500D0 0001E4D0  48 00 03 90 */	b .L_81350460
.L_813500D4:
/* 813500D4 0001E4D4  80 77 00 00 */	lwz r3, 0x0(r23)
/* 813500D8 0001E4D8  39 01 00 10 */	addi r8, r1, 0x10
/* 813500DC 0001E4DC  38 A0 00 01 */	li r5, 0x1
/* 813500E0 0001E4E0  38 E0 00 00 */	li r7, 0x0
/* 813500E4 0001E4E4  3C 63 00 04 */	addis r3, r3, 0x4
/* 813500E8 0001E4E8  39 20 00 03 */	li r9, 0x3
/* 813500EC 0001E4EC  80 03 EA 48 */	lwz r0, -0x15b8(r3)
/* 813500F0 0001E4F0  80 63 EA 4C */	lwz r3, -0x15b4(r3)
/* 813500F4 0001E4F4  90 7B 00 04 */	stw r3, 0x4(r27)
/* 813500F8 0001E4F8  90 1B 00 00 */	stw r0, 0x0(r27)
/* 813500FC 0001E4FC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 81350100 0001E500  80 D7 00 00 */	lwz r6, 0x0(r23)
/* 81350104 0001E504  80 7B 00 08 */	lwz r3, 0x8(r27)
/* 81350108 0001E508  3C 86 00 04 */	addis r4, r6, 0x4
/* 8135010C 0001E50C  3C C6 00 02 */	addis r6, r6, 0x2
/* 81350110 0001E510  38 03 00 3F */	addi r0, r3, 0x3f
/* 81350114 0001E514  93 E1 00 08 */	stw r31, 0x8(r1)
/* 81350118 0001E518  54 03 00 32 */	clrrwi r3, r0, 6
/* 8135011C 0001E51C  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 81350120 0001E520  3B 03 06 40 */	addi r24, r3, 0x640
/* 81350124 0001E524  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81350128 0001E528  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8135012C 0001E52C  7F 0A C3 78 */	mr r10, r24
/* 81350130 0001E530  48 27 12 4D */	bl fn_815C137C
/* 81350134 0001E534  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350138 0001E538  41 82 00 28 */	beq .L_81350160
/* 8135013C 0001E53C  7C 64 1B 78 */	mr r4, r3
/* 81350140 0001E540  38 7C 0C 6D */	addi r3, r28, 0xc6d
/* 81350144 0001E544  4C C6 31 82 */	crclr cr1eq
/* 81350148 0001E548  48 1D E5 59 */	bl OSReport
/* 8135014C 0001E54C  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350150 0001E550  38 00 FF FE */	li r0, -0x2
/* 81350154 0001E554  3C 63 00 04 */	addis r3, r3, 0x4
/* 81350158 0001E558  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135015C 0001E55C  48 00 03 04 */	b .L_81350460
.L_81350160:
/* 81350160 0001E560  80 81 00 10 */	lwz r4, 0x10(r1)
/* 81350164 0001E564  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 81350168 0001E568  6F E5 80 00 */	xoris r5, r31, 0x8000
/* 8135016C 0001E56C  7C 78 22 14 */	add r3, r24, r4
/* 81350170 0001E570  7C 63 E8 10 */	subfc r3, r3, r29
/* 81350174 0001E574  7C A5 01 10 */	subfe r5, r5, r0
/* 81350178 0001E578  7C A0 01 10 */	subfe r5, r0, r0
/* 8135017C 0001E57C  7C A5 00 D1 */	neg. r5, r5
/* 81350180 0001E580  41 82 00 24 */	beq .L_813501A4
/* 81350184 0001E584  38 7C 17 47 */	addi r3, r28, 0x1747
/* 81350188 0001E588  4C C6 31 82 */	crclr cr1eq
/* 8135018C 0001E58C  48 1D E5 15 */	bl OSReport
/* 81350190 0001E590  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350194 0001E594  38 00 FF F9 */	li r0, -0x7
/* 81350198 0001E598  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135019C 0001E59C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813501A0 0001E5A0  48 00 02 C0 */	b .L_81350460
.L_813501A4:
/* 813501A4 0001E5A4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 813501A8 0001E5A8  48 14 36 4D */	bl fn_814937F4
/* 813501AC 0001E5AC  3B BB 06 40 */	addi r29, r27, 0x640
/* 813501B0 0001E5B0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 813501B4 0001E5B4  7F A4 EB 78 */	mr r4, r29
/* 813501B8 0001E5B8  38 B8 F9 C0 */	subi r5, r24, 0x640
/* 813501BC 0001E5BC  48 14 36 79 */	bl fn_81493834
/* 813501C0 0001E5C0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 813501C4 0001E5C4  38 81 00 14 */	addi r4, r1, 0x14
/* 813501C8 0001E5C8  48 14 37 5D */	bl fn_81493924
/* 813501CC 0001E5CC  38 7B 00 1C */	addi r3, r27, 0x1c
/* 813501D0 0001E5D0  38 81 00 14 */	addi r4, r1, 0x14
/* 813501D4 0001E5D4  38 A0 00 10 */	li r5, 0x10
/* 813501D8 0001E5D8  4B FE 00 59 */	bl memcpy
/* 813501DC 0001E5DC  3C 80 81 61 */	lis r4, lbl_8160D648@ha
/* 813501E0 0001E5E0  38 7B 00 0C */	addi r3, r27, 0xc
/* 813501E4 0001E5E4  38 84 D6 48 */	addi r4, r4, lbl_8160D648@l
/* 813501E8 0001E5E8  38 A0 00 10 */	li r5, 0x10
/* 813501EC 0001E5EC  4B FE 00 45 */	bl memcpy
/* 813501F0 0001E5F0  38 61 00 68 */	addi r3, r1, 0x68
/* 813501F4 0001E5F4  48 14 36 01 */	bl fn_814937F4
/* 813501F8 0001E5F8  7F 64 DB 78 */	mr r4, r27
/* 813501FC 0001E5FC  38 61 00 68 */	addi r3, r1, 0x68
/* 81350200 0001E600  38 A0 06 40 */	li r5, 0x640
/* 81350204 0001E604  48 14 36 31 */	bl fn_81493834
/* 81350208 0001E608  38 61 00 68 */	addi r3, r1, 0x68
/* 8135020C 0001E60C  38 81 00 14 */	addi r4, r1, 0x14
/* 81350210 0001E610  48 14 37 15 */	bl fn_81493924
/* 81350214 0001E614  38 7B 00 0C */	addi r3, r27, 0xc
/* 81350218 0001E618  38 81 00 14 */	addi r4, r1, 0x14
/* 8135021C 0001E61C  38 A0 00 10 */	li r5, 0x10
/* 81350220 0001E620  4B FE 00 11 */	bl memcpy
/* 81350224 0001E624  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350228 0001E628  7F 04 C3 78 */	mr r4, r24
/* 8135022C 0001E62C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350230 0001E630  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81350234 0001E634  48 20 B4 35 */	bl fn_8155B668
/* 81350238 0001E638  7C 7A 1B 78 */	mr r26, r3
/* 8135023C 0001E63C  7F 63 DB 78 */	mr r3, r27
/* 81350240 0001E640  7F 45 D3 78 */	mr r5, r26
/* 81350244 0001E644  38 80 06 40 */	li r4, 0x640
/* 81350248 0001E648  48 00 3D 91 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 8135024C 0001E64C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350250 0001E650  41 82 00 18 */	beq .L_81350268
/* 81350254 0001E654  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350258 0001E658  38 00 FF FE */	li r0, -0x2
/* 8135025C 0001E65C  3C 63 00 04 */	addis r3, r3, 0x4
/* 81350260 0001E660  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81350264 0001E664  48 00 01 FC */	b .L_81350460
.L_81350268:
/* 81350268 0001E668  7F A3 EB 78 */	mr r3, r29
/* 8135026C 0001E66C  38 98 F9 C0 */	subi r4, r24, 0x640
/* 81350270 0001E670  38 BA 06 40 */	addi r5, r26, 0x640
/* 81350274 0001E674  48 00 3D 65 */	bl encrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 81350278 0001E678  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135027C 0001E67C  41 82 00 18 */	beq .L_81350294
/* 81350280 0001E680  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350284 0001E684  38 00 FF FE */	li r0, -0x2
/* 81350288 0001E688  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135028C 0001E68C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81350290 0001E690  48 00 01 D0 */	b .L_81350460
.L_81350294:
/* 81350294 0001E694  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 81350298 0001E698  3C 60 81 35 */	lis r3, iplNandSD_8135109C@ha
/* 8135029C 0001E69C  38 63 10 9C */	addi r3, r3, iplNandSD_8135109C@l
/* 813502A0 0001E6A0  7F 0A C3 78 */	mr r10, r24
/* 813502A4 0001E6A4  90 61 00 08 */	stw r3, 0x8(r1)
/* 813502A8 0001E6A8  3C 85 00 04 */	addis r4, r5, 0x4
/* 813502AC 0001E6AC  3C C5 00 02 */	addis r6, r5, 0x2
/* 813502B0 0001E6B0  38 E1 00 24 */	addi r7, r1, 0x24
/* 813502B4 0001E6B4  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 813502B8 0001E6B8  39 01 00 10 */	addi r8, r1, 0x10
/* 813502BC 0001E6BC  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813502C0 0001E6C0  3B 20 00 01 */	li r25, 0x1
/* 813502C4 0001E6C4  38 A0 00 01 */	li r5, 0x1
/* 813502C8 0001E6C8  39 20 00 03 */	li r9, 0x3
/* 813502CC 0001E6CC  38 C6 E6 A0 */	subi r6, r6, 0x1960
/* 813502D0 0001E6D0  48 27 10 AD */	bl fn_815C137C
/* 813502D4 0001E6D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813502D8 0001E6D8  41 82 00 28 */	beq .L_81350300
/* 813502DC 0001E6DC  7C 64 1B 78 */	mr r4, r3
/* 813502E0 0001E6E0  38 7C 0C 6D */	addi r3, r28, 0xc6d
/* 813502E4 0001E6E4  4C C6 31 82 */	crclr cr1eq
/* 813502E8 0001E6E8  48 1D E3 B9 */	bl OSReport
/* 813502EC 0001E6EC  80 77 00 00 */	lwz r3, 0x0(r23)
/* 813502F0 0001E6F0  38 00 FF FE */	li r0, -0x2
/* 813502F4 0001E6F4  3C 63 00 04 */	addis r3, r3, 0x4
/* 813502F8 0001E6F8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813502FC 0001E6FC  48 00 01 64 */	b .L_81350460
.L_81350300:
/* 81350300 0001E700  80 81 00 10 */	lwz r4, 0x10(r1)
/* 81350304 0001E704  38 7C 17 81 */	addi r3, r28, 0x1781
/* 81350308 0001E708  4C C6 31 82 */	crclr cr1eq
/* 8135030C 0001E70C  48 1D E3 95 */	bl OSReport
/* 81350310 0001E710  38 61 00 24 */	addi r3, r1, 0x24
/* 81350314 0001E714  38 8D 81 AA */	li r4, lbl_816961EA@sda21
/* 81350318 0001E718  48 29 7D 29 */	bl fn_815E8040
/* 8135031C 0001E71C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350320 0001E720  7C 7D 1B 78 */	mr r29, r3
/* 81350324 0001E724  40 82 00 30 */	bne .L_81350354
/* 81350328 0001E728  38 7C 17 AE */	addi r3, r28, 0x17ae
/* 8135032C 0001E72C  38 81 00 24 */	addi r4, r1, 0x24
/* 81350330 0001E730  4C C6 31 82 */	crclr cr1eq
/* 81350334 0001E734  48 1D E3 6D */	bl OSReport
/* 81350338 0001E738  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 8135033C 0001E73C  7E E3 BB 78 */	mr r3, r23
/* 81350340 0001E740  38 80 FF FF */	li r4, -0x1
/* 81350344 0001E744  3C A5 00 04 */	addis r5, r5, 0x4
/* 81350348 0001E748  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 8135034C 0001E74C  48 00 39 69 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 81350350 0001E750  48 00 01 10 */	b .L_81350460
.L_81350354:
/* 81350354 0001E754  38 7C 17 D0 */	addi r3, r28, 0x17d0
/* 81350358 0001E758  38 81 00 24 */	addi r4, r1, 0x24
/* 8135035C 0001E75C  4C C6 31 82 */	crclr cr1eq
/* 81350360 0001E760  48 1D E3 41 */	bl OSReport
/* 81350364 0001E764  7F A3 EB 78 */	mr r3, r29
/* 81350368 0001E768  38 80 00 00 */	li r4, 0x0
/* 8135036C 0001E76C  38 A0 00 00 */	li r5, 0x0
/* 81350370 0001E770  48 29 7D 31 */	bl fn_815E80A0
/* 81350374 0001E774  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 81350378 0001E778  7C 64 1B 78 */	mr r4, r3
/* 8135037C 0001E77C  7E E3 BB 78 */	mr r3, r23
/* 81350380 0001E780  3C A5 00 04 */	addis r5, r5, 0x4
/* 81350384 0001E784  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 81350388 0001E788  48 00 39 2D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 8135038C 0001E78C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350390 0001E790  41 82 00 20 */	beq .L_813503B0
/* 81350394 0001E794  38 7C 17 F0 */	addi r3, r28, 0x17f0
/* 81350398 0001E798  38 81 00 24 */	addi r4, r1, 0x24
/* 8135039C 0001E79C  4C C6 31 82 */	crclr cr1eq
/* 813503A0 0001E7A0  48 1D E3 01 */	bl OSReport
/* 813503A4 0001E7A4  7F A3 EB 78 */	mr r3, r29
/* 813503A8 0001E7A8  48 29 7C 41 */	bl fn_815E7FE8
/* 813503AC 0001E7AC  48 00 00 B4 */	b .L_81350460
.L_813503B0:
/* 813503B0 0001E7B0  7F 43 D3 78 */	mr r3, r26
/* 813503B4 0001E7B4  7F 04 C3 78 */	mr r4, r24
/* 813503B8 0001E7B8  7F A6 EB 78 */	mr r6, r29
/* 813503BC 0001E7BC  38 A0 00 01 */	li r5, 0x1
/* 813503C0 0001E7C0  48 29 7D 91 */	bl fn_815E8150
/* 813503C4 0001E7C4  28 03 00 01 */	cmplwi r3, 0x1
/* 813503C8 0001E7C8  41 82 00 3C */	beq .L_81350404
/* 813503CC 0001E7CC  7C 65 1B 78 */	mr r5, r3
/* 813503D0 0001E7D0  38 7C 18 12 */	addi r3, r28, 0x1812
/* 813503D4 0001E7D4  38 81 00 24 */	addi r4, r1, 0x24
/* 813503D8 0001E7D8  4C C6 31 82 */	crclr cr1eq
/* 813503DC 0001E7DC  48 1D E2 C5 */	bl OSReport
/* 813503E0 0001E7E0  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 813503E4 0001E7E4  7E E3 BB 78 */	mr r3, r23
/* 813503E8 0001E7E8  38 80 FF FF */	li r4, -0x1
/* 813503EC 0001E7EC  3C A5 00 04 */	addis r5, r5, 0x4
/* 813503F0 0001E7F0  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 813503F4 0001E7F4  48 00 38 C1 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 813503F8 0001E7F8  7F A3 EB 78 */	mr r3, r29
/* 813503FC 0001E7FC  48 29 7B ED */	bl fn_815E7FE8
/* 81350400 0001E800  48 00 00 60 */	b .L_81350460
.L_81350404:
/* 81350404 0001E804  7F A3 EB 78 */	mr r3, r29
/* 81350408 0001E808  48 29 7B E1 */	bl fn_815E7FE8
/* 8135040C 0001E80C  80 B7 00 00 */	lwz r5, 0x0(r23)
/* 81350410 0001E810  7C 64 1B 78 */	mr r4, r3
/* 81350414 0001E814  7E E3 BB 78 */	mr r3, r23
/* 81350418 0001E818  3C A5 00 04 */	addis r5, r5, 0x4
/* 8135041C 0001E81C  38 A5 EA 24 */	subi r5, r5, 0x15dc
/* 81350420 0001E820  48 00 38 95 */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
/* 81350424 0001E824  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350428 0001E828  41 82 00 18 */	beq .L_81350440
/* 8135042C 0001E82C  38 7C 18 39 */	addi r3, r28, 0x1839
/* 81350430 0001E830  38 81 00 24 */	addi r4, r1, 0x24
/* 81350434 0001E834  4C C6 31 82 */	crclr cr1eq
/* 81350438 0001E838  48 1D E2 69 */	bl OSReport
/* 8135043C 0001E83C  48 00 00 24 */	b .L_81350460
.L_81350440:
/* 81350440 0001E840  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350444 0001E844  3C 83 00 04 */	addis r4, r3, 0x4
/* 81350448 0001E848  80 64 EA 34 */	lwz r3, -0x15cc(r4)
/* 8135044C 0001E84C  38 03 00 01 */	addi r0, r3, 0x1
/* 81350450 0001E850  90 04 EA 34 */	stw r0, -0x15cc(r4)
/* 81350454 0001E854  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350458 0001E858  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135045C 0001E85C  93 E3 EA 24 */	stw r31, -0x15dc(r3)
.L_81350460:
/* 81350460 0001E860  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350464 0001E864  7F 64 DB 78 */	mr r4, r27
/* 81350468 0001E868  3C 63 00 02 */	addis r3, r3, 0x2
/* 8135046C 0001E86C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350470 0001E870  48 20 A5 95 */	bl fn_8155AA04
/* 81350474 0001E874  2C 1A 00 00 */	cmpwi r26, 0x0
/* 81350478 0001E878  41 82 00 18 */	beq .L_81350490
/* 8135047C 0001E87C  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350480 0001E880  7F 44 D3 78 */	mr r4, r26
/* 81350484 0001E884  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350488 0001E888  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8135048C 0001E88C  48 20 B1 ED */	bl fn_8155B678
.L_81350490:
/* 81350490 0001E890  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81350494 0001E894  3C 63 00 04 */	addis r3, r3, 0x4
/* 81350498 0001E898  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 8135049C 0001E89C  2C 00 00 00 */	cmpwi r0, 0x0
/* 813504A0 0001E8A0  40 80 00 54 */	bge .L_813504F4
/* 813504A4 0001E8A4  2C 19 00 00 */	cmpwi r25, 0x0
/* 813504A8 0001E8A8  41 82 00 4C */	beq .L_813504F4
/* 813504AC 0001E8AC  38 61 00 24 */	addi r3, r1, 0x24
/* 813504B0 0001E8B0  48 29 7F 01 */	bl fn_815E83B0
/* 813504B4 0001E8B4  7C 64 1B 78 */	mr r4, r3
/* 813504B8 0001E8B8  7E E3 BB 78 */	mr r3, r23
/* 813504BC 0001E8BC  38 A0 00 00 */	li r5, 0x0
/* 813504C0 0001E8C0  48 00 39 41 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813504C4 0001E8C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813504C8 0001E8C8  40 82 00 18 */	bne .L_813504E0
/* 813504CC 0001E8CC  38 7C 18 5C */	addi r3, r28, 0x185c
/* 813504D0 0001E8D0  38 81 00 24 */	addi r4, r1, 0x24
/* 813504D4 0001E8D4  4C C6 31 82 */	crclr cr1eq
/* 813504D8 0001E8D8  48 1D E1 C9 */	bl OSReport
/* 813504DC 0001E8DC  48 00 00 18 */	b .L_813504F4
.L_813504E0:
/* 813504E0 0001E8E0  7C 65 1B 78 */	mr r5, r3
/* 813504E4 0001E8E4  38 7C 18 99 */	addi r3, r28, 0x1899
/* 813504E8 0001E8E8  38 81 00 24 */	addi r4, r1, 0x24
/* 813504EC 0001E8EC  4C C6 31 82 */	crclr cr1eq
/* 813504F0 0001E8F0  48 1D E1 B1 */	bl OSReport
.L_813504F4:
/* 813504F4 0001E8F4  39 61 01 40 */	addi r11, r1, 0x140
/* 813504F8 0001E8F8  48 2A 90 05 */	bl _restgpr_23
/* 813504FC 0001E8FC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 81350500 0001E900  7C 08 03 A6 */	mtlr r0
/* 81350504 0001E904  38 21 01 40 */	addi r1, r1, 0x140
/* 81350508 0001E908  4E 80 00 20 */	blr
.endfn do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv

# .text:0x8120 | 0x8135050C | size: 0x160
# ipl::NandSDWorker::get_save_banner_for_data_only_title(unsigned long long, WIISaveBannerFile*, unsigned long*)
.fn get_save_banner_for_data_only_title__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl, global
/* 8135050C 0001E90C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81350510 0001E910  7C 08 02 A6 */	mflr r0
/* 81350514 0001E914  90 01 00 34 */	stw r0, 0x34(r1)
/* 81350518 0001E918  39 61 00 30 */	addi r11, r1, 0x30
/* 8135051C 0001E91C  48 2A 8F A1 */	bl _savegpr_26
/* 81350520 0001E920  38 00 00 00 */	li r0, 0x0
/* 81350524 0001E924  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81350528 0001E928  90 01 00 08 */	stw r0, 0x8(r1)
/* 8135052C 0001E92C  7C FC 3B 78 */	mr r28, r7
/* 81350530 0001E930  7D 1D 43 78 */	mr r29, r8
/* 81350534 0001E934  7C 7A 1B 78 */	mr r26, r3
/* 81350538 0001E938  7C BE 2B 78 */	mr r30, r5
/* 8135053C 0001E93C  7C DB 33 78 */	mr r27, r6
/* 81350540 0001E940  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81350544 0001E944  39 01 00 0C */	addi r8, r1, 0xc
/* 81350548 0001E948  39 21 00 08 */	addi r9, r1, 0x8
/* 8135054C 0001E94C  38 E0 00 00 */	li r7, 0x0
/* 81350550 0001E950  48 00 05 9D */	bl open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView
/* 81350554 0001E954  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350558 0001E958  40 80 00 20 */	bge .L_81350578
/* 8135055C 0001E95C  7F 66 DB 78 */	mr r6, r27
/* 81350560 0001E960  7F C5 F3 78 */	mr r5, r30
/* 81350564 0001E964  38 7F 20 D3 */	addi r3, r31, 0x20d3
/* 81350568 0001E968  4C C6 31 82 */	crclr cr1eq
/* 8135056C 0001E96C  48 1D E1 35 */	bl OSReport
/* 81350570 0001E970  38 60 FF FE */	li r3, -0x2
/* 81350574 0001E974  48 00 00 E0 */	b .L_81350654
.L_81350578:
/* 81350578 0001E978  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8135057C 0001E97C  7C 7E 1B 78 */	mr r30, r3
/* 81350580 0001E980  38 84 FF C0 */	subi r4, r4, 0x40
/* 81350584 0001E984  28 04 72 A0 */	cmplwi r4, 0x72a0
/* 81350588 0001E988  90 81 00 0C */	stw r4, 0xc(r1)
/* 8135058C 0001E98C  40 80 00 18 */	bge .L_813505A4
/* 81350590 0001E990  38 7F 21 19 */	addi r3, r31, 0x2119
/* 81350594 0001E994  4C C6 31 82 */	crclr cr1eq
/* 81350598 0001E998  48 1D E1 09 */	bl OSReport
/* 8135059C 0001E99C  3B E0 FF FD */	li r31, -0x3
/* 813505A0 0001E9A0  48 00 00 8C */	b .L_8135062C
.L_813505A4:
/* 813505A4 0001E9A4  28 04 F0 A0 */	cmplwi r4, 0xf0a0
/* 813505A8 0001E9A8  40 81 00 18 */	ble .L_813505C0
/* 813505AC 0001E9AC  38 7F 21 46 */	addi r3, r31, 0x2146
/* 813505B0 0001E9B0  4C C6 31 82 */	crclr cr1eq
/* 813505B4 0001E9B4  48 1D E0 ED */	bl OSReport
/* 813505B8 0001E9B8  3B E0 FF FD */	li r31, -0x3
/* 813505BC 0001E9BC  48 00 00 70 */	b .L_8135062C
.L_813505C0:
/* 813505C0 0001E9C0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 813505C4 0001E9C4  41 82 00 08 */	beq .L_813505CC
/* 813505C8 0001E9C8  90 9D 00 00 */	stw r4, 0x0(r29)
.L_813505CC:
/* 813505CC 0001E9CC  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 813505D0 0001E9D0  7F 43 D3 78 */	mr r3, r26
/* 813505D4 0001E9D4  7F C4 F3 78 */	mr r4, r30
/* 813505D8 0001E9D8  7F 88 E3 78 */	mr r8, r28
/* 813505DC 0001E9DC  38 A0 00 02 */	li r5, 0x2
/* 813505E0 0001E9E0  38 C0 00 40 */	li r6, 0x40
/* 813505E4 0001E9E4  48 00 07 25 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 813505E8 0001E9E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813505EC 0001E9EC  41 82 00 18 */	beq .L_81350604
/* 813505F0 0001E9F0  38 7F 21 73 */	addi r3, r31, 0x2173
/* 813505F4 0001E9F4  4C C6 31 82 */	crclr cr1eq
/* 813505F8 0001E9F8  48 1D E0 A9 */	bl OSReport
/* 813505FC 0001E9FC  3B E0 FF FE */	li r31, -0x2
/* 81350600 0001EA00  48 00 00 2C */	b .L_8135062C
.L_81350604:
/* 81350604 0001EA04  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81350608 0001EA08  3C 03 A8 B7 */	subis r0, r3, 0x5749
/* 8135060C 0001EA0C  28 00 42 4E */	cmplwi r0, 0x424e
/* 81350610 0001EA10  41 82 00 18 */	beq .L_81350628
/* 81350614 0001EA14  38 7F 21 9F */	addi r3, r31, 0x219f
/* 81350618 0001EA18  4C C6 31 82 */	crclr cr1eq
/* 8135061C 0001EA1C  48 1D E0 85 */	bl OSReport
/* 81350620 0001EA20  3B E0 FF FD */	li r31, -0x3
/* 81350624 0001EA24  48 00 00 08 */	b .L_8135062C
.L_81350628:
/* 81350628 0001EA28  3B E0 00 00 */	li r31, 0x0
.L_8135062C:
/* 8135062C 0001EA2C  7F C3 F3 78 */	mr r3, r30
/* 81350630 0001EA30  48 26 DD 4D */	bl ES_CloseContentFile
/* 81350634 0001EA34  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350638 0001EA38  2C 04 00 00 */	cmpwi r4, 0x0
/* 8135063C 0001EA3C  41 82 00 14 */	beq .L_81350650
/* 81350640 0001EA40  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81350644 0001EA44  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350648 0001EA48  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8135064C 0001EA4C  48 20 A3 B9 */	bl fn_8155AA04
.L_81350650:
/* 81350650 0001EA50  7F E3 FB 78 */	mr r3, r31
.L_81350654:
/* 81350654 0001EA54  39 61 00 30 */	addi r11, r1, 0x30
/* 81350658 0001EA58  48 2A 8E B1 */	bl _restgpr_26
/* 8135065C 0001EA5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81350660 0001EA60  7C 08 03 A6 */	mtlr r0
/* 81350664 0001EA64  38 21 00 30 */	addi r1, r1, 0x30
/* 81350668 0001EA68  4E 80 00 20 */	blr
.endfn get_save_banner_for_data_only_title__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl

# .text:0x8280 | 0x8135066C | size: 0x480
# ipl::NandSDWorker::get_app_banner_from_meta(unsigned long long, ipl::NandSDWorker::SDAppBanner*)
.fn get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner, global
/* 8135066C 0001EA6C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 81350670 0001EA70  7C 08 02 A6 */	mflr r0
/* 81350674 0001EA74  90 01 01 44 */	stw r0, 0x144(r1)
/* 81350678 0001EA78  39 61 01 40 */	addi r11, r1, 0x140
/* 8135067C 0001EA7C  48 2A 8E 2D */	bl _savegpr_21
/* 81350680 0001EA80  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81350684 0001EA84  7C 76 1B 78 */	mr r22, r3
/* 81350688 0001EA88  3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8135068C 0001EA8C  7C B5 2B 78 */	mr r21, r5
/* 81350690 0001EA90  3C 64 00 02 */	addis r3, r4, 0x2
/* 81350694 0001EA94  7C D8 33 78 */	mr r24, r6
/* 81350698 0001EA98  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 8135069C 0001EA9C  7C F7 3B 78 */	mr r23, r7
/* 813506A0 0001EAA0  3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 813506A4 0001EAA4  38 80 14 00 */	li r4, 0x1400
/* 813506A8 0001EAA8  38 A0 00 20 */	li r5, 0x20
/* 813506AC 0001EAAC  48 20 A0 A9 */	bl fn_8155A754
/* 813506B0 0001EAB0  80 D6 00 00 */	lwz r6, 0x0(r22)
/* 813506B4 0001EAB4  7C 7D 1B 78 */	mr r29, r3
/* 813506B8 0001EAB8  38 80 00 A0 */	li r4, 0xa0
/* 813506BC 0001EABC  38 A0 00 20 */	li r5, 0x20
/* 813506C0 0001EAC0  3C 66 00 02 */	addis r3, r6, 0x2
/* 813506C4 0001EAC4  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813506C8 0001EAC8  48 20 A0 8D */	bl fn_8155A754
/* 813506CC 0001EACC  80 D6 00 00 */	lwz r6, 0x0(r22)
/* 813506D0 0001EAD0  7C 7C 1B 78 */	mr r28, r3
/* 813506D4 0001EAD4  38 80 00 20 */	li r4, 0x20
/* 813506D8 0001EAD8  38 A0 00 20 */	li r5, 0x20
/* 813506DC 0001EADC  3C 66 00 02 */	addis r3, r6, 0x2
/* 813506E0 0001EAE0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813506E4 0001EAE4  48 20 A0 71 */	bl fn_8155A754
/* 813506E8 0001EAE8  3B 20 00 00 */	li r25, 0x0
/* 813506EC 0001EAEC  7C 7B 1B 78 */	mr r27, r3
/* 813506F0 0001EAF0  93 21 00 0C */	stw r25, 0xc(r1)
/* 813506F4 0001EAF4  7E C3 B3 78 */	mr r3, r22
/* 813506F8 0001EAF8  7F 06 C3 78 */	mr r6, r24
/* 813506FC 0001EAFC  7E A5 AB 78 */	mr r5, r21
/* 81350700 0001EB00  39 01 00 10 */	addi r8, r1, 0x10
/* 81350704 0001EB04  39 21 00 0C */	addi r9, r1, 0xc
/* 81350708 0001EB08  38 E0 00 00 */	li r7, 0x0
/* 8135070C 0001EB0C  48 00 03 E1 */	bl open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView
/* 81350710 0001EB10  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350714 0001EB14  90 61 00 14 */	stw r3, 0x14(r1)
/* 81350718 0001EB18  41 80 00 1C */	blt .L_81350734
/* 8135071C 0001EB1C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81350720 0001EB20  28 00 00 04 */	cmplwi r0, 0x4
/* 81350724 0001EB24  40 81 00 10 */	ble .L_81350734
/* 81350728 0001EB28  7C 7A 1B 78 */	mr r26, r3
/* 8135072C 0001EB2C  3B 20 00 02 */	li r25, 0x2
/* 81350730 0001EB30  48 00 00 80 */	b .L_813507B0
.L_81350734:
/* 81350734 0001EB34  38 00 FF FF */	li r0, -0x1
/* 81350738 0001EB38  7E A6 AB 78 */	mr r6, r21
/* 8135073C 0001EB3C  38 61 00 40 */	addi r3, r1, 0x40
/* 81350740 0001EB40  38 BE 01 5C */	addi r5, r30, 0x15c
/* 81350744 0001EB44  7F 07 00 38 */	and r7, r24, r0
/* 81350748 0001EB48  38 80 00 40 */	li r4, 0x40
/* 8135074C 0001EB4C  4C C6 31 82 */	crclr cr1eq
/* 81350750 0001EB50  48 2B 02 59 */	bl fn_816009A8
/* 81350754 0001EB54  38 61 00 40 */	addi r3, r1, 0x40
/* 81350758 0001EB58  38 81 00 80 */	addi r4, r1, 0x80
/* 8135075C 0001EB5C  38 A0 00 01 */	li r5, 0x1
/* 81350760 0001EB60  48 00 F5 31 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 81350764 0001EB64  7C 75 1B 78 */	mr r21, r3
/* 81350768 0001EB68  7E C3 B3 78 */	mr r3, r22
/* 8135076C 0001EB6C  7E A4 AB 78 */	mr r4, r21
/* 81350770 0001EB70  38 A1 00 14 */	addi r5, r1, 0x14
/* 81350774 0001EB74  48 00 34 E5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81350778 0001EB78  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135077C 0001EB7C  40 82 02 98 */	bne .L_81350A14
/* 81350780 0001EB80  2C 15 00 00 */	cmpwi r21, 0x0
/* 81350784 0001EB84  41 82 00 24 */	beq .L_813507A8
/* 81350788 0001EB88  7E A5 AB 78 */	mr r5, r21
/* 8135078C 0001EB8C  38 7E 21 D3 */	addi r3, r30, 0x21d3
/* 81350790 0001EB90  38 81 00 40 */	addi r4, r1, 0x40
/* 81350794 0001EB94  4C C6 31 82 */	crclr cr1eq
/* 81350798 0001EB98  48 1D DF 09 */	bl OSReport
/* 8135079C 0001EB9C  38 00 FF FD */	li r0, -0x3
/* 813507A0 0001EBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813507A4 0001EBA4  48 00 02 70 */	b .L_81350A14
.L_813507A8:
/* 813507A8 0001EBA8  3B 41 00 80 */	addi r26, r1, 0x80
/* 813507AC 0001EBAC  3B 20 00 01 */	li r25, 0x1
.L_813507B0:
/* 813507B0 0001EBB0  7F 83 E3 78 */	mr r3, r28
/* 813507B4 0001EBB4  38 80 00 00 */	li r4, 0x0
/* 813507B8 0001EBB8  38 A0 00 A0 */	li r5, 0xa0
/* 813507BC 0001EBBC  4B FD FB 79 */	bl memset
/* 813507C0 0001EBC0  7E C3 B3 78 */	mr r3, r22
/* 813507C4 0001EBC4  7F 44 D3 78 */	mr r4, r26
/* 813507C8 0001EBC8  7F 25 CB 78 */	mr r5, r25
/* 813507CC 0001EBCC  7F 88 E3 78 */	mr r8, r28
/* 813507D0 0001EBD0  38 C0 00 40 */	li r6, 0x40
/* 813507D4 0001EBD4  38 E0 00 8C */	li r7, 0x8c
/* 813507D8 0001EBD8  48 00 05 31 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 813507DC 0001EBDC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813507E0 0001EBE0  90 61 00 14 */	stw r3, 0x14(r1)
/* 813507E4 0001EBE4  40 82 02 30 */	bne .L_81350A14
/* 813507E8 0001EBE8  7E C3 B3 78 */	mr r3, r22
/* 813507EC 0001EBEC  7F 84 E3 78 */	mr r4, r28
/* 813507F0 0001EBF0  48 00 06 71 */	bl search_meta_header__Q23ipl12NandSDWorkerFPCUc
/* 813507F4 0001EBF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813507F8 0001EBF8  7C 78 1B 78 */	mr r24, r3
/* 813507FC 0001EBFC  40 80 00 20 */	bge .L_8135081C
/* 81350800 0001EC00  7F 04 C3 78 */	mr r4, r24
/* 81350804 0001EC04  38 7E 21 FA */	addi r3, r30, 0x21fa
/* 81350808 0001EC08  4C C6 31 82 */	crclr cr1eq
/* 8135080C 0001EC0C  48 1D DE 95 */	bl OSReport
/* 81350810 0001EC10  38 00 FF FD */	li r0, -0x3
/* 81350814 0001EC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 81350818 0001EC18  48 00 01 FC */	b .L_81350A14
.L_8135081C:
/* 8135081C 0001EC1C  3B E0 00 00 */	li r31, 0x0
/* 81350820 0001EC20  7E C3 B3 78 */	mr r3, r22
/* 81350824 0001EC24  93 E1 00 08 */	stw r31, 0x8(r1)
/* 81350828 0001EC28  7C 9C C2 14 */	add r4, r28, r24
/* 8135082C 0001EC2C  38 A1 00 08 */	addi r5, r1, 0x8
/* 81350830 0001EC30  48 00 06 85 */	bl check_header_base__Q23ipl12NandSDWorkerFPCUcPUl
/* 81350834 0001EC34  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350838 0001EC38  40 82 00 1C */	bne .L_81350854
/* 8135083C 0001EC3C  38 7E 22 25 */	addi r3, r30, 0x2225
/* 81350840 0001EC40  4C C6 31 82 */	crclr cr1eq
/* 81350844 0001EC44  48 1D DE 5D */	bl OSReport
/* 81350848 0001EC48  38 00 FF FD */	li r0, -0x3
/* 8135084C 0001EC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81350850 0001EC50  48 00 01 C4 */	b .L_81350A14
.L_81350854:
/* 81350854 0001EC54  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350858 0001EC58  38 7E 22 44 */	addi r3, r30, 0x2244
/* 8135085C 0001EC5C  4C C6 31 82 */	crclr cr1eq
/* 81350860 0001EC60  48 1D DE 41 */	bl OSReport
/* 81350864 0001EC64  38 77 00 40 */	addi r3, r23, 0x40
/* 81350868 0001EC68  38 80 00 00 */	li r4, 0x0
/* 8135086C 0001EC6C  38 A0 06 00 */	li r5, 0x600
/* 81350870 0001EC70  4B FD FA C5 */	bl memset
/* 81350874 0001EC74  80 E1 00 08 */	lwz r7, 0x8(r1)
/* 81350878 0001EC78  7E C3 B3 78 */	mr r3, r22
/* 8135087C 0001EC7C  7F 44 D3 78 */	mr r4, r26
/* 81350880 0001EC80  7F 25 CB 78 */	mr r5, r25
/* 81350884 0001EC84  7F 06 C3 78 */	mr r6, r24
/* 81350888 0001EC88  39 17 00 40 */	addi r8, r23, 0x40
/* 8135088C 0001EC8C  48 00 04 7D */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 81350890 0001EC90  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350894 0001EC94  90 61 00 14 */	stw r3, 0x14(r1)
/* 81350898 0001EC98  40 82 01 7C */	bne .L_81350A14
/* 8135089C 0001EC9C  7E C3 B3 78 */	mr r3, r22
/* 813508A0 0001ECA0  38 97 00 40 */	addi r4, r23, 0x40
/* 813508A4 0001ECA4  48 00 06 BD */	bl check_header_md5__Q23ipl12NandSDWorkerFPUc
/* 813508A8 0001ECA8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813508AC 0001ECAC  40 82 00 1C */	bne .L_813508C8
/* 813508B0 0001ECB0  38 7E 22 65 */	addi r3, r30, 0x2265
/* 813508B4 0001ECB4  4C C6 31 82 */	crclr cr1eq
/* 813508B8 0001ECB8  48 1D DD E9 */	bl OSReport
/* 813508BC 0001ECBC  38 00 FF FD */	li r0, -0x3
/* 813508C0 0001ECC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813508C4 0001ECC4  48 00 01 50 */	b .L_81350A14
.L_813508C8:
/* 813508C8 0001ECC8  80 01 00 08 */	lwz r0, 0x8(r1)
/* 813508CC 0001ECCC  7E C3 B3 78 */	mr r3, r22
/* 813508D0 0001ECD0  7F 44 D3 78 */	mr r4, r26
/* 813508D4 0001ECD4  7F 25 CB 78 */	mr r5, r25
/* 813508D8 0001ECD8  7F 68 DB 78 */	mr r8, r27
/* 813508DC 0001ECDC  7C D8 02 14 */	add r6, r24, r0
/* 813508E0 0001ECE0  38 E0 00 20 */	li r7, 0x20
/* 813508E4 0001ECE4  48 00 04 25 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 813508E8 0001ECE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813508EC 0001ECEC  90 61 00 14 */	stw r3, 0x14(r1)
/* 813508F0 0001ECF0  40 82 01 24 */	bne .L_81350A14
/* 813508F4 0001ECF4  80 BB 00 0C */	lwz r5, 0xc(r27)
/* 813508F8 0001ECF8  7E C3 B3 78 */	mr r3, r22
/* 813508FC 0001ECFC  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81350900 0001ED00  7F 44 D3 78 */	mr r4, r26
/* 81350904 0001ED04  38 05 00 1F */	addi r0, r5, 0x1f
/* 81350908 0001ED08  7F 25 CB 78 */	mr r5, r25
/* 8135090C 0001ED0C  7F A8 EB 78 */	mr r8, r29
/* 81350910 0001ED10  7C D8 32 14 */	add r6, r24, r6
/* 81350914 0001ED14  54 07 00 34 */	clrrwi r7, r0, 5
/* 81350918 0001ED18  48 00 03 F1 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 8135091C 0001ED1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350920 0001ED20  90 61 00 14 */	stw r3, 0x14(r1)
/* 81350924 0001ED24  40 82 00 F0 */	bne .L_81350A14
/* 81350928 0001ED28  7F A3 EB 78 */	mr r3, r29
/* 8135092C 0001ED2C  38 81 00 24 */	addi r4, r1, 0x24
/* 81350930 0001ED30  48 22 04 71 */	bl fn_81570DA0
/* 81350934 0001ED34  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350938 0001ED38  40 82 00 20 */	bne .L_81350958
/* 8135093C 0001ED3C  7E A4 AB 78 */	mr r4, r21
/* 81350940 0001ED40  38 7E 22 8B */	addi r3, r30, 0x228b
/* 81350944 0001ED44  4C C6 31 82 */	crclr cr1eq
/* 81350948 0001ED48  48 1D DD 59 */	bl OSReport
/* 8135094C 0001ED4C  38 00 FF FD */	li r0, -0x3
/* 81350950 0001ED50  90 01 00 14 */	stw r0, 0x14(r1)
/* 81350954 0001ED54  48 00 00 C0 */	b .L_81350A14
.L_81350958:
/* 81350958 0001ED58  38 61 00 24 */	addi r3, r1, 0x24
/* 8135095C 0001ED5C  38 9E 22 B4 */	addi r4, r30, 0x22b4
/* 81350960 0001ED60  38 A1 00 18 */	addi r5, r1, 0x18
/* 81350964 0001ED64  48 22 04 DD */	bl fn_81570E40
/* 81350968 0001ED68  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135096C 0001ED6C  40 82 00 20 */	bne .L_8135098C
/* 81350970 0001ED70  7E A4 AB 78 */	mr r4, r21
/* 81350974 0001ED74  38 7E 22 C3 */	addi r3, r30, 0x22c3
/* 81350978 0001ED78  4C C6 31 82 */	crclr cr1eq
/* 8135097C 0001ED7C  48 1D DD 25 */	bl OSReport
/* 81350980 0001ED80  38 00 FF FD */	li r0, -0x3
/* 81350984 0001ED84  90 01 00 14 */	stw r0, 0x14(r1)
/* 81350988 0001ED88  48 00 00 8C */	b .L_81350A14
.L_8135098C:
/* 8135098C 0001ED8C  38 61 00 18 */	addi r3, r1, 0x18
/* 81350990 0001ED90  48 22 0C 0D */	bl fn_8157159C
/* 81350994 0001ED94  38 03 00 1F */	addi r0, r3, 0x1f
/* 81350998 0001ED98  7C 75 1B 78 */	mr r21, r3
/* 8135099C 0001ED9C  54 00 00 34 */	clrrwi r0, r0, 5
/* 813509A0 0001EDA0  28 00 C8 00 */	cmplwi r0, 0xc800
/* 813509A4 0001EDA4  40 81 00 20 */	ble .L_813509C4
/* 813509A8 0001EDA8  7E A4 AB 78 */	mr r4, r21
/* 813509AC 0001EDAC  38 7E 22 E6 */	addi r3, r30, 0x22e6
/* 813509B0 0001EDB0  4C C6 31 82 */	crclr cr1eq
/* 813509B4 0001EDB4  48 1D DC ED */	bl OSReport
/* 813509B8 0001EDB8  38 00 FF FD */	li r0, -0x3
/* 813509BC 0001EDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 813509C0 0001EDC0  48 00 00 54 */	b .L_81350A14
.L_813509C4:
/* 813509C4 0001EDC4  90 77 00 08 */	stw r3, 0x8(r23)
/* 813509C8 0001EDC8  7E A4 AB 78 */	mr r4, r21
/* 813509CC 0001EDCC  38 7E 23 11 */	addi r3, r30, 0x2311
/* 813509D0 0001EDD0  4C C6 31 82 */	crclr cr1eq
/* 813509D4 0001EDD4  48 1D DC CD */	bl OSReport
/* 813509D8 0001EDD8  38 61 00 18 */	addi r3, r1, 0x18
/* 813509DC 0001EDDC  48 22 0B B9 */	bl fn_81571594
/* 813509E0 0001EDE0  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 813509E4 0001EDE4  7C 03 C2 14 */	add r0, r3, r24
/* 813509E8 0001EDE8  7E C3 B3 78 */	mr r3, r22
/* 813509EC 0001EDEC  7F 44 D3 78 */	mr r4, r26
/* 813509F0 0001EDF0  7F 25 CB 78 */	mr r5, r25
/* 813509F4 0001EDF4  7E A7 AB 78 */	mr r7, r21
/* 813509F8 0001EDF8  7C C6 02 14 */	add r6, r6, r0
/* 813509FC 0001EDFC  39 17 06 40 */	addi r8, r23, 0x640
/* 81350A00 0001EE00  48 00 03 09 */	bl read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv
/* 81350A04 0001EE04  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350A08 0001EE08  90 61 00 14 */	stw r3, 0x14(r1)
/* 81350A0C 0001EE0C  40 82 00 08 */	bne .L_81350A14
/* 81350A10 0001EE10  93 E1 00 14 */	stw r31, 0x14(r1)
.L_81350A14:
/* 81350A14 0001EE14  2C 19 00 02 */	cmpwi r25, 0x2
/* 81350A18 0001EE18  40 82 00 10 */	bne .L_81350A28
/* 81350A1C 0001EE1C  7F 43 D3 78 */	mr r3, r26
/* 81350A20 0001EE20  48 26 D9 5D */	bl ES_CloseContentFile
/* 81350A24 0001EE24  48 00 00 54 */	b .L_81350A78
.L_81350A28:
/* 81350A28 0001EE28  2C 19 00 01 */	cmpwi r25, 0x1
/* 81350A2C 0001EE2C  40 82 00 4C */	bne .L_81350A78
/* 81350A30 0001EE30  38 61 00 80 */	addi r3, r1, 0x80
/* 81350A34 0001EE34  48 00 F2 D1 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 81350A38 0001EE38  7C 75 1B 78 */	mr r21, r3
/* 81350A3C 0001EE3C  7E C3 B3 78 */	mr r3, r22
/* 81350A40 0001EE40  7E A4 AB 78 */	mr r4, r21
/* 81350A44 0001EE44  38 A1 00 14 */	addi r5, r1, 0x14
/* 81350A48 0001EE48  48 00 32 11 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81350A4C 0001EE4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350A50 0001EE50  40 82 00 28 */	bne .L_81350A78
/* 81350A54 0001EE54  2C 15 00 00 */	cmpwi r21, 0x0
/* 81350A58 0001EE58  41 82 00 20 */	beq .L_81350A78
/* 81350A5C 0001EE5C  7E A5 AB 78 */	mr r5, r21
/* 81350A60 0001EE60  38 7E 0A 48 */	addi r3, r30, 0xa48
/* 81350A64 0001EE64  38 81 00 40 */	addi r4, r1, 0x40
/* 81350A68 0001EE68  4C C6 31 82 */	crclr cr1eq
/* 81350A6C 0001EE6C  48 1D DC 35 */	bl OSReport
/* 81350A70 0001EE70  38 00 FF FE */	li r0, -0x2
/* 81350A74 0001EE74  90 01 00 14 */	stw r0, 0x14(r1)
.L_81350A78:
/* 81350A78 0001EE78  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350A7C 0001EE7C  7F A4 EB 78 */	mr r4, r29
/* 81350A80 0001EE80  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350A84 0001EE84  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350A88 0001EE88  48 20 9F 7D */	bl fn_8155AA04
/* 81350A8C 0001EE8C  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350A90 0001EE90  7F 84 E3 78 */	mr r4, r28
/* 81350A94 0001EE94  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350A98 0001EE98  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350A9C 0001EE9C  48 20 9F 69 */	bl fn_8155AA04
/* 81350AA0 0001EEA0  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350AA4 0001EEA4  7F 64 DB 78 */	mr r4, r27
/* 81350AA8 0001EEA8  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350AAC 0001EEAC  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350AB0 0001EEB0  48 20 9F 55 */	bl fn_8155AA04
/* 81350AB4 0001EEB4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 81350AB8 0001EEB8  2C 04 00 00 */	cmpwi r4, 0x0
/* 81350ABC 0001EEBC  41 82 00 14 */	beq .L_81350AD0
/* 81350AC0 0001EEC0  80 76 00 00 */	lwz r3, 0x0(r22)
/* 81350AC4 0001EEC4  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350AC8 0001EEC8  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350ACC 0001EECC  48 20 9F 39 */	bl fn_8155AA04
.L_81350AD0:
/* 81350AD0 0001EED0  39 61 01 40 */	addi r11, r1, 0x140
/* 81350AD4 0001EED4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 81350AD8 0001EED8  48 2A 8A 1D */	bl _restgpr_21
/* 81350ADC 0001EEDC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 81350AE0 0001EEE0  7C 08 03 A6 */	mtlr r0
/* 81350AE4 0001EEE4  38 21 01 40 */	addi r1, r1, 0x140
/* 81350AE8 0001EEE8  4E 80 00 20 */	blr
.endfn get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner

# .text:0x8700 | 0x81350AEC | size: 0x21C
# ipl::NandSDWorker::open_nand_app_content(unsigned long long, unsigned short, unsigned long*, ESTicketView**)
.fn open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView, global
/* 81350AEC 0001EEEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81350AF0 0001EEF0  7C 08 02 A6 */	mflr r0
/* 81350AF4 0001EEF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 81350AF8 0001EEF8  39 61 00 30 */	addi r11, r1, 0x30
/* 81350AFC 0001EEFC  48 2A 89 B9 */	bl _savegpr_24
/* 81350B00 0001EF00  38 00 00 00 */	li r0, 0x0
/* 81350B04 0001EF04  3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 81350B08 0001EF08  90 09 00 00 */	stw r0, 0x0(r9)
/* 81350B0C 0001EF0C  7C FA 3B 78 */	mr r26, r7
/* 81350B10 0001EF10  7C 7F 1B 78 */	mr r31, r3
/* 81350B14 0001EF14  7C B9 2B 78 */	mr r25, r5
/* 81350B18 0001EF18  90 01 00 08 */	stw r0, 0x8(r1)
/* 81350B1C 0001EF1C  7C D8 33 78 */	mr r24, r6
/* 81350B20 0001EF20  7D 1B 43 78 */	mr r27, r8
/* 81350B24 0001EF24  7D 3C 4B 78 */	mr r28, r9
/* 81350B28 0001EF28  3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 81350B2C 0001EF2C  38 E1 00 08 */	addi r7, r1, 0x8
/* 81350B30 0001EF30  48 00 14 09 */	bl get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView
/* 81350B34 0001EF34  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350B38 0001EF38  7C 7D 1B 78 */	mr r29, r3
/* 81350B3C 0001EF3C  40 82 01 68 */	bne .L_81350CA4
/* 81350B40 0001EF40  80 61 00 08 */	lwz r3, 0x8(r1)
/* 81350B44 0001EF44  7F 44 D3 78 */	mr r4, r26
/* 81350B48 0001EF48  48 00 14 D5 */	bl content_exist__Q23ipl12NandSDWorkerFP9ESTmdViewUl
/* 81350B4C 0001EF4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350B50 0001EF50  40 82 00 24 */	bne .L_81350B74
/* 81350B54 0001EF54  7F 06 C3 78 */	mr r6, r24
/* 81350B58 0001EF58  7F 25 CB 78 */	mr r5, r25
/* 81350B5C 0001EF5C  7F 47 D3 78 */	mr r7, r26
/* 81350B60 0001EF60  38 7E 23 34 */	addi r3, r30, 0x2334
/* 81350B64 0001EF64  4C C6 31 82 */	crclr cr1eq
/* 81350B68 0001EF68  48 1D DB 39 */	bl OSReport
/* 81350B6C 0001EF6C  3B A0 FF FE */	li r29, -0x2
/* 81350B70 0001EF70  48 00 01 34 */	b .L_81350CA4
.L_81350B74:
/* 81350B74 0001EF74  7F 04 C3 78 */	mr r4, r24
/* 81350B78 0001EF78  7F 23 CB 78 */	mr r3, r25
/* 81350B7C 0001EF7C  38 C1 00 0C */	addi r6, r1, 0xc
/* 81350B80 0001EF80  38 A0 00 00 */	li r5, 0x0
/* 81350B84 0001EF84  48 26 DD 85 */	bl fn_815BE908
/* 81350B88 0001EF88  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350B8C 0001EF8C  41 82 00 20 */	beq .L_81350BAC
/* 81350B90 0001EF90  7F 06 C3 78 */	mr r6, r24
/* 81350B94 0001EF94  7F 25 CB 78 */	mr r5, r25
/* 81350B98 0001EF98  38 7E 23 68 */	addi r3, r30, 0x2368
/* 81350B9C 0001EF9C  4C C6 31 82 */	crclr cr1eq
/* 81350BA0 0001EFA0  48 1D DB 01 */	bl OSReport
/* 81350BA4 0001EFA4  3B A0 FF FE */	li r29, -0x2
/* 81350BA8 0001EFA8  48 00 00 FC */	b .L_81350CA4
.L_81350BAC:
/* 81350BAC 0001EFAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 81350BB0 0001EFB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 81350BB4 0001EFB4  40 82 00 20 */	bne .L_81350BD4
/* 81350BB8 0001EFB8  7F 06 C3 78 */	mr r6, r24
/* 81350BBC 0001EFBC  7F 25 CB 78 */	mr r5, r25
/* 81350BC0 0001EFC0  38 7E 23 A3 */	addi r3, r30, 0x23a3
/* 81350BC4 0001EFC4  4C C6 31 82 */	crclr cr1eq
/* 81350BC8 0001EFC8  48 1D DA D9 */	bl OSReport
/* 81350BCC 0001EFCC  3B A0 FF FE */	li r29, -0x2
/* 81350BD0 0001EFD0  48 00 00 D4 */	b .L_81350CA4
.L_81350BD4:
/* 81350BD4 0001EFD4  1C 60 00 D8 */	mulli r3, r0, 0xd8
/* 81350BD8 0001EFD8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81350BDC 0001EFDC  38 A0 00 20 */	li r5, 0x20
/* 81350BE0 0001EFE0  3C 84 00 02 */	addis r4, r4, 0x2
/* 81350BE4 0001EFE4  38 03 00 1F */	addi r0, r3, 0x1f
/* 81350BE8 0001EFE8  80 64 E6 90 */	lwz r3, -0x1970(r4)
/* 81350BEC 0001EFEC  54 04 00 34 */	clrrwi r4, r0, 5
/* 81350BF0 0001EFF0  48 20 9B 65 */	bl fn_8155A754
/* 81350BF4 0001EFF4  90 7C 00 00 */	stw r3, 0x0(r28)
/* 81350BF8 0001EFF8  7C 65 1B 78 */	mr r5, r3
/* 81350BFC 0001EFFC  7F 04 C3 78 */	mr r4, r24
/* 81350C00 0001F000  7F 23 CB 78 */	mr r3, r25
/* 81350C04 0001F004  38 C1 00 0C */	addi r6, r1, 0xc
/* 81350C08 0001F008  48 26 DD 01 */	bl fn_815BE908
/* 81350C0C 0001F00C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350C10 0001F010  41 82 00 20 */	beq .L_81350C30
/* 81350C14 0001F014  7F 06 C3 78 */	mr r6, r24
/* 81350C18 0001F018  7F 25 CB 78 */	mr r5, r25
/* 81350C1C 0001F01C  38 7E 23 68 */	addi r3, r30, 0x2368
/* 81350C20 0001F020  4C C6 31 82 */	crclr cr1eq
/* 81350C24 0001F024  48 1D DA 7D */	bl OSReport
/* 81350C28 0001F028  3B A0 FF FE */	li r29, -0x2
/* 81350C2C 0001F02C  48 00 00 78 */	b .L_81350CA4
.L_81350C30:
/* 81350C30 0001F030  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81350C34 0001F034  7F 04 C3 78 */	mr r4, r24
/* 81350C38 0001F038  7F 23 CB 78 */	mr r3, r25
/* 81350C3C 0001F03C  7F 46 D3 78 */	mr r6, r26
/* 81350C40 0001F040  48 26 D5 79 */	bl ES_OpenTitleContentFile
/* 81350C44 0001F044  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350C48 0001F048  40 80 00 28 */	bge .L_81350C70
/* 81350C4C 0001F04C  7C 68 1B 78 */	mr r8, r3
/* 81350C50 0001F050  7F 06 C3 78 */	mr r6, r24
/* 81350C54 0001F054  7F 25 CB 78 */	mr r5, r25
/* 81350C58 0001F058  7F 47 D3 78 */	mr r7, r26
/* 81350C5C 0001F05C  38 7E 23 D3 */	addi r3, r30, 0x23d3
/* 81350C60 0001F060  4C C6 31 82 */	crclr cr1eq
/* 81350C64 0001F064  48 1D DA 3D */	bl OSReport
/* 81350C68 0001F068  3B A0 FF FE */	li r29, -0x2
/* 81350C6C 0001F06C  48 00 00 38 */	b .L_81350CA4
.L_81350C70:
/* 81350C70 0001F070  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350C74 0001F074  57 40 23 36 */	clrlslwi r0, r26, 16, 4
/* 81350C78 0001F078  7C 7D 1B 78 */	mr r29, r3
/* 81350C7C 0001F07C  7C 68 1B 78 */	mr r8, r3
/* 81350C80 0001F080  7C 84 02 14 */	add r4, r4, r0
/* 81350C84 0001F084  7F 06 C3 78 */	mr r6, r24
/* 81350C88 0001F088  81 24 00 68 */	lwz r9, 0x68(r4)
/* 81350C8C 0001F08C  7F 25 CB 78 */	mr r5, r25
/* 81350C90 0001F090  7F 47 D3 78 */	mr r7, r26
/* 81350C94 0001F094  38 7E 24 20 */	addi r3, r30, 0x2420
/* 81350C98 0001F098  91 3B 00 00 */	stw r9, 0x0(r27)
/* 81350C9C 0001F09C  4C C6 31 82 */	crclr cr1eq
/* 81350CA0 0001F0A0  48 1D DA 01 */	bl OSReport
.L_81350CA4:
/* 81350CA4 0001F0A4  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81350CA8 0001F0A8  2C 04 00 00 */	cmpwi r4, 0x0
/* 81350CAC 0001F0AC  41 82 00 14 */	beq .L_81350CC0
/* 81350CB0 0001F0B0  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81350CB4 0001F0B4  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350CB8 0001F0B8  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350CBC 0001F0BC  48 20 9D 49 */	bl fn_8155AA04
.L_81350CC0:
/* 81350CC0 0001F0C0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 81350CC4 0001F0C4  41 82 00 28 */	beq .L_81350CEC
/* 81350CC8 0001F0C8  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81350CCC 0001F0CC  2C 04 00 00 */	cmpwi r4, 0x0
/* 81350CD0 0001F0D0  41 82 00 14 */	beq .L_81350CE4
/* 81350CD4 0001F0D4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81350CD8 0001F0D8  3C 63 00 02 */	addis r3, r3, 0x2
/* 81350CDC 0001F0DC  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81350CE0 0001F0E0  48 20 9D 25 */	bl fn_8155AA04
.L_81350CE4:
/* 81350CE4 0001F0E4  38 00 00 00 */	li r0, 0x0
/* 81350CE8 0001F0E8  90 1C 00 00 */	stw r0, 0x0(r28)
.L_81350CEC:
/* 81350CEC 0001F0EC  39 61 00 30 */	addi r11, r1, 0x30
/* 81350CF0 0001F0F0  7F A3 EB 78 */	mr r3, r29
/* 81350CF4 0001F0F4  48 2A 88 0D */	bl _restgpr_24
/* 81350CF8 0001F0F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81350CFC 0001F0FC  7C 08 03 A6 */	mtlr r0
/* 81350D00 0001F100  38 21 00 30 */	addi r1, r1, 0x30
/* 81350D04 0001F104  4E 80 00 20 */	blr
.endfn open_nand_app_content__Q23ipl12NandSDWorkerFUxUsPUlPP12ESTicketView

# .text:0x891C | 0x81350D08 | size: 0x158
# ipl::NandSDWorker::read_file(void*, ipl::NandSDWorker::FileKind, long, unsigned long, void*)
.fn read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv, global
/* 81350D08 0001F108  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81350D0C 0001F10C  7C 08 02 A6 */	mflr r0
/* 81350D10 0001F110  90 01 00 24 */	stw r0, 0x24(r1)
/* 81350D14 0001F114  39 61 00 20 */	addi r11, r1, 0x20
/* 81350D18 0001F118  48 2A 87 A5 */	bl _savegpr_26
/* 81350D1C 0001F11C  2C 05 00 01 */	cmpwi r5, 0x1
/* 81350D20 0001F120  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81350D24 0001F124  7C 7A 1B 78 */	mr r26, r3
/* 81350D28 0001F128  7C 9B 23 78 */	mr r27, r4
/* 81350D2C 0001F12C  7C DC 33 78 */	mr r28, r6
/* 81350D30 0001F130  7C FD 3B 78 */	mr r29, r7
/* 81350D34 0001F134  7D 1E 43 78 */	mr r30, r8
/* 81350D38 0001F138  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81350D3C 0001F13C  40 82 00 94 */	bne .L_81350DD0
/* 81350D40 0001F140  7F 63 DB 78 */	mr r3, r27
/* 81350D44 0001F144  7F 84 E3 78 */	mr r4, r28
/* 81350D48 0001F148  38 A0 00 00 */	li r5, 0x0
/* 81350D4C 0001F14C  48 00 F1 05 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 81350D50 0001F150  7C 03 E0 00 */	cmpw r3, r28
/* 81350D54 0001F154  40 80 00 1C */	bge .L_81350D70
/* 81350D58 0001F158  7C 64 1B 78 */	mr r4, r3
/* 81350D5C 0001F15C  38 7F 24 70 */	addi r3, r31, 0x2470
/* 81350D60 0001F160  4C C6 31 82 */	crclr cr1eq
/* 81350D64 0001F164  48 1D D9 3D */	bl OSReport
/* 81350D68 0001F168  38 60 FF FD */	li r3, -0x3
/* 81350D6C 0001F16C  48 00 00 DC */	b .L_81350E48
.L_81350D70:
/* 81350D70 0001F170  38 1D 00 1F */	addi r0, r29, 0x1f
/* 81350D74 0001F174  7F 63 DB 78 */	mr r3, r27
/* 81350D78 0001F178  7F C4 F3 78 */	mr r4, r30
/* 81350D7C 0001F17C  54 05 00 34 */	clrrwi r5, r0, 5
/* 81350D80 0001F180  48 00 EF E9 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 81350D84 0001F184  7C 7E 1B 78 */	mr r30, r3
/* 81350D88 0001F188  7F 43 D3 78 */	mr r3, r26
/* 81350D8C 0001F18C  7F C4 F3 78 */	mr r4, r30
/* 81350D90 0001F190  38 A0 00 00 */	li r5, 0x0
/* 81350D94 0001F194  48 00 2E C5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81350D98 0001F198  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350D9C 0001F19C  41 82 00 0C */	beq .L_81350DA8
/* 81350DA0 0001F1A0  38 60 FF FB */	li r3, -0x5
/* 81350DA4 0001F1A4  48 00 00 A4 */	b .L_81350E48
.L_81350DA8:
/* 81350DA8 0001F1A8  7C 1E E8 40 */	cmplw r30, r29
/* 81350DAC 0001F1AC  40 80 00 1C */	bge .L_81350DC8
/* 81350DB0 0001F1B0  7F C4 F3 78 */	mr r4, r30
/* 81350DB4 0001F1B4  38 7F 24 93 */	addi r3, r31, 0x2493
/* 81350DB8 0001F1B8  4C C6 31 82 */	crclr cr1eq
/* 81350DBC 0001F1BC  48 1D D8 E5 */	bl OSReport
/* 81350DC0 0001F1C0  38 60 FF FD */	li r3, -0x3
/* 81350DC4 0001F1C4  48 00 00 84 */	b .L_81350E48
.L_81350DC8:
/* 81350DC8 0001F1C8  38 60 00 00 */	li r3, 0x0
/* 81350DCC 0001F1CC  48 00 00 7C */	b .L_81350E48
.L_81350DD0:
/* 81350DD0 0001F1D0  2C 05 00 02 */	cmpwi r5, 0x2
/* 81350DD4 0001F1D4  40 82 00 70 */	bne .L_81350E44
/* 81350DD8 0001F1D8  7F 63 DB 78 */	mr r3, r27
/* 81350DDC 0001F1DC  7F 84 E3 78 */	mr r4, r28
/* 81350DE0 0001F1E0  38 A0 00 00 */	li r5, 0x0
/* 81350DE4 0001F1E4  48 26 D5 0D */	bl ES_SeekContentFile
/* 81350DE8 0001F1E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81350DEC 0001F1EC  40 80 00 1C */	bge .L_81350E08
/* 81350DF0 0001F1F0  7C 64 1B 78 */	mr r4, r3
/* 81350DF4 0001F1F4  38 7F 24 B7 */	addi r3, r31, 0x24b7
/* 81350DF8 0001F1F8  4C C6 31 82 */	crclr cr1eq
/* 81350DFC 0001F1FC  48 1D D8 A5 */	bl OSReport
/* 81350E00 0001F200  38 60 FF FD */	li r3, -0x3
/* 81350E04 0001F204  48 00 00 44 */	b .L_81350E48
.L_81350E08:
/* 81350E08 0001F208  38 1D 00 1F */	addi r0, r29, 0x1f
/* 81350E0C 0001F20C  7F 63 DB 78 */	mr r3, r27
/* 81350E10 0001F210  7F C4 F3 78 */	mr r4, r30
/* 81350E14 0001F214  54 05 00 34 */	clrrwi r5, r0, 5
/* 81350E18 0001F218  48 26 D4 39 */	bl ES_ReadContentFile
/* 81350E1C 0001F21C  7C 03 E8 40 */	cmplw r3, r29
/* 81350E20 0001F220  40 80 00 1C */	bge .L_81350E3C
/* 81350E24 0001F224  7C 64 1B 78 */	mr r4, r3
/* 81350E28 0001F228  38 7F 24 E5 */	addi r3, r31, 0x24e5
/* 81350E2C 0001F22C  4C C6 31 82 */	crclr cr1eq
/* 81350E30 0001F230  48 1D D8 71 */	bl OSReport
/* 81350E34 0001F234  38 60 FF FD */	li r3, -0x3
/* 81350E38 0001F238  48 00 00 10 */	b .L_81350E48
.L_81350E3C:
/* 81350E3C 0001F23C  38 60 00 00 */	li r3, 0x0
/* 81350E40 0001F240  48 00 00 08 */	b .L_81350E48
.L_81350E44:
/* 81350E44 0001F244  38 60 FF FE */	li r3, -0x2
.L_81350E48:
/* 81350E48 0001F248  39 61 00 20 */	addi r11, r1, 0x20
/* 81350E4C 0001F24C  48 2A 86 BD */	bl _restgpr_26
/* 81350E50 0001F250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81350E54 0001F254  7C 08 03 A6 */	mtlr r0
/* 81350E58 0001F258  38 21 00 20 */	addi r1, r1, 0x20
/* 81350E5C 0001F25C  4E 80 00 20 */	blr
.endfn read_file__Q23ipl12NandSDWorkerFPvQ33ipl12NandSDWorker8FileKindlUlPv

# .text:0x8A74 | 0x81350E60 | size: 0x54
# ipl::NandSDWorker::search_meta_header(const unsigned char*)
.fn search_meta_header__Q23ipl12NandSDWorkerFPCUc, global
/* 81350E60 0001F260  38 00 00 A0 */	li r0, 0xa0
/* 81350E64 0001F264  38 AD 81 AF */	li r5, lbl_816961EF@sda21
/* 81350E68 0001F268  38 C0 00 00 */	li r6, 0x0
/* 81350E6C 0001F26C  38 E0 00 00 */	li r7, 0x0
/* 81350E70 0001F270  7C 09 03 A6 */	mtctr r0
.L_81350E74:
/* 81350E74 0001F274  7C 05 30 AE */	lbzx r0, r5, r6
/* 81350E78 0001F278  88 64 00 00 */	lbz r3, 0x0(r4)
/* 81350E7C 0001F27C  7C 00 07 74 */	extsb r0, r0
/* 81350E80 0001F280  7C 03 00 00 */	cmpw r3, r0
/* 81350E84 0001F284  40 82 00 18 */	bne .L_81350E9C
/* 81350E88 0001F288  38 C6 00 01 */	addi r6, r6, 0x1
/* 81350E8C 0001F28C  2C 06 00 04 */	cmpwi r6, 0x4
/* 81350E90 0001F290  40 82 00 10 */	bne .L_81350EA0
/* 81350E94 0001F294  38 67 FF FD */	subi r3, r7, 0x3
/* 81350E98 0001F298  4E 80 00 20 */	blr
.L_81350E9C:
/* 81350E9C 0001F29C  38 C0 00 00 */	li r6, 0x0
.L_81350EA0:
/* 81350EA0 0001F2A0  38 E7 00 01 */	addi r7, r7, 0x1
/* 81350EA4 0001F2A4  38 84 00 01 */	addi r4, r4, 0x1
/* 81350EA8 0001F2A8  42 00 FF CC */	bdnz .L_81350E74
/* 81350EAC 0001F2AC  38 60 FF FF */	li r3, -0x1
/* 81350EB0 0001F2B0  4E 80 00 20 */	blr
.endfn search_meta_header__Q23ipl12NandSDWorkerFPCUc

# .text:0x8AC8 | 0x81350EB4 | size: 0xAC
# ipl::NandSDWorker::check_header_base(const unsigned char*, unsigned long*)
.fn check_header_base__Q23ipl12NandSDWorkerFPCUcPUl, global
/* 81350EB4 0001F2B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81350EB8 0001F2B8  7C 08 02 A6 */	mflr r0
/* 81350EBC 0001F2BC  2C 05 00 00 */	cmpwi r5, 0x0
/* 81350EC0 0001F2C0  80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81350EC4 0001F2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 81350EC8 0001F2C8  41 82 00 08 */	beq .L_81350ED0
/* 81350ECC 0001F2CC  90 C5 00 00 */	stw r6, 0x0(r5)
.L_81350ED0:
/* 81350ED0 0001F2D0  88 04 00 00 */	lbz r0, 0x0(r4)
/* 81350ED4 0001F2D4  2C 00 00 49 */	cmpwi r0, 0x49
/* 81350ED8 0001F2D8  40 82 00 30 */	bne .L_81350F08
/* 81350EDC 0001F2DC  88 04 00 01 */	lbz r0, 0x1(r4)
/* 81350EE0 0001F2E0  2C 00 00 4D */	cmpwi r0, 0x4d
/* 81350EE4 0001F2E4  40 82 00 24 */	bne .L_81350F08
/* 81350EE8 0001F2E8  88 04 00 02 */	lbz r0, 0x2(r4)
/* 81350EEC 0001F2EC  2C 00 00 45 */	cmpwi r0, 0x45
/* 81350EF0 0001F2F0  40 82 00 18 */	bne .L_81350F08
/* 81350EF4 0001F2F4  88 04 00 03 */	lbz r0, 0x3(r4)
/* 81350EF8 0001F2F8  2C 00 00 54 */	cmpwi r0, 0x54
/* 81350EFC 0001F2FC  40 82 00 0C */	bne .L_81350F08
/* 81350F00 0001F300  28 06 00 1C */	cmplwi r6, 0x1c
/* 81350F04 0001F304  40 80 00 20 */	bge .L_81350F24
.L_81350F08:
/* 81350F08 0001F308  3C 60 81 63 */	lis r3, lbl_81637F9B@ha
/* 81350F0C 0001F30C  7C C4 33 78 */	mr r4, r6
/* 81350F10 0001F310  38 63 7F 9B */	addi r3, r3, lbl_81637F9B@l
/* 81350F14 0001F314  4C C6 31 82 */	crclr cr1eq
/* 81350F18 0001F318  48 1D D7 89 */	bl OSReport
/* 81350F1C 0001F31C  38 60 00 00 */	li r3, 0x0
/* 81350F20 0001F320  48 00 00 30 */	b .L_81350F50
.L_81350F24:
/* 81350F24 0001F324  80 84 00 08 */	lwz r4, 0x8(r4)
/* 81350F28 0001F328  28 04 00 03 */	cmplwi r4, 0x3
/* 81350F2C 0001F32C  41 82 00 20 */	beq .L_81350F4C
/* 81350F30 0001F330  3C 60 81 63 */	lis r3, lbl_81637FD0@ha
/* 81350F34 0001F334  38 A0 00 03 */	li r5, 0x3
/* 81350F38 0001F338  38 63 7F D0 */	addi r3, r3, lbl_81637FD0@l
/* 81350F3C 0001F33C  4C C6 31 82 */	crclr cr1eq
/* 81350F40 0001F340  48 1D D7 61 */	bl OSReport
/* 81350F44 0001F344  38 60 00 00 */	li r3, 0x0
/* 81350F48 0001F348  48 00 00 08 */	b .L_81350F50
.L_81350F4C:
/* 81350F4C 0001F34C  38 60 00 01 */	li r3, 0x1
.L_81350F50:
/* 81350F50 0001F350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81350F54 0001F354  7C 08 03 A6 */	mtlr r0
/* 81350F58 0001F358  38 21 00 10 */	addi r1, r1, 0x10
/* 81350F5C 0001F35C  4E 80 00 20 */	blr
.endfn check_header_base__Q23ipl12NandSDWorkerFPCUcPUl

# .text:0x8B74 | 0x81350F60 | size: 0x9C
# ipl::NandSDWorker::check_header_md5(unsigned char*)
.fn check_header_md5__Q23ipl12NandSDWorkerFPUc, global
/* 81350F60 0001F360  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81350F64 0001F364  7C 08 02 A6 */	mflr r0
/* 81350F68 0001F368  90 01 00 34 */	stw r0, 0x34(r1)
/* 81350F6C 0001F36C  39 61 00 30 */	addi r11, r1, 0x30
/* 81350F70 0001F370  48 2A 85 59 */	bl _savegpr_29
/* 81350F74 0001F374  83 E4 00 44 */	lwz r31, 0x44(r4)
/* 81350F78 0001F378  7C 7D 1B 78 */	mr r29, r3
/* 81350F7C 0001F37C  38 00 00 10 */	li r0, 0x10
/* 81350F80 0001F380  7C 9E 23 78 */	mr r30, r4
/* 81350F84 0001F384  7C A4 FA 14 */	add r5, r4, r31
/* 81350F88 0001F388  38 61 00 08 */	addi r3, r1, 0x8
/* 81350F8C 0001F38C  38 C0 00 00 */	li r6, 0x0
/* 81350F90 0001F390  7C 09 03 A6 */	mtctr r0
.L_81350F94:
/* 81350F94 0001F394  7C 85 32 14 */	add r4, r5, r6
/* 81350F98 0001F398  38 C6 00 01 */	addi r6, r6, 0x1
/* 81350F9C 0001F39C  88 04 FF F0 */	lbz r0, -0x10(r4)
/* 81350FA0 0001F3A0  98 03 00 00 */	stb r0, 0x0(r3)
/* 81350FA4 0001F3A4  38 63 00 01 */	addi r3, r3, 0x1
/* 81350FA8 0001F3A8  42 00 FF EC */	bdnz .L_81350F94
/* 81350FAC 0001F3AC  7F C3 F3 78 */	mr r3, r30
/* 81350FB0 0001F3B0  38 80 00 00 */	li r4, 0x0
/* 81350FB4 0001F3B4  38 A0 00 40 */	li r5, 0x40
/* 81350FB8 0001F3B8  4B FD F3 7D */	bl memset
/* 81350FBC 0001F3BC  7C 7F F2 14 */	add r3, r31, r30
/* 81350FC0 0001F3C0  38 80 00 00 */	li r4, 0x0
/* 81350FC4 0001F3C4  38 63 FF F0 */	subi r3, r3, 0x10
/* 81350FC8 0001F3C8  38 A0 00 10 */	li r5, 0x10
/* 81350FCC 0001F3CC  4B FD F3 69 */	bl memset
/* 81350FD0 0001F3D0  7F A3 EB 78 */	mr r3, r29
/* 81350FD4 0001F3D4  7F C5 F3 78 */	mr r5, r30
/* 81350FD8 0001F3D8  7F E6 FB 78 */	mr r6, r31
/* 81350FDC 0001F3DC  38 81 00 08 */	addi r4, r1, 0x8
/* 81350FE0 0001F3E0  48 00 00 1D */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 81350FE4 0001F3E4  39 61 00 30 */	addi r11, r1, 0x30
/* 81350FE8 0001F3E8  48 2A 85 2D */	bl _restgpr_29
/* 81350FEC 0001F3EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81350FF0 0001F3F0  7C 08 03 A6 */	mtlr r0
/* 81350FF4 0001F3F4  38 21 00 30 */	addi r1, r1, 0x30
/* 81350FF8 0001F3F8  4E 80 00 20 */	blr
.endfn check_header_md5__Q23ipl12NandSDWorkerFPUc

# .text:0x8C10 | 0x81350FFC | size: 0xA0
# ipl::NandSDWorker::check_md5(const unsigned char*, const unsigned char*, unsigned long)
.fn check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl, global
/* 81350FFC 0001F3FC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81351000 0001F400  7C 08 02 A6 */	mflr r0
/* 81351004 0001F404  90 01 00 84 */	stw r0, 0x84(r1)
/* 81351008 0001F408  39 61 00 80 */	addi r11, r1, 0x80
/* 8135100C 0001F40C  48 2A 84 BD */	bl _savegpr_29
/* 81351010 0001F410  7C 9D 23 78 */	mr r29, r4
/* 81351014 0001F414  7C BE 2B 78 */	mr r30, r5
/* 81351018 0001F418  7C DF 33 78 */	mr r31, r6
/* 8135101C 0001F41C  38 61 00 18 */	addi r3, r1, 0x18
/* 81351020 0001F420  48 14 27 D5 */	bl fn_814937F4
/* 81351024 0001F424  7F C4 F3 78 */	mr r4, r30
/* 81351028 0001F428  7F E5 FB 78 */	mr r5, r31
/* 8135102C 0001F42C  38 61 00 18 */	addi r3, r1, 0x18
/* 81351030 0001F430  48 14 28 05 */	bl fn_81493834
/* 81351034 0001F434  38 61 00 18 */	addi r3, r1, 0x18
/* 81351038 0001F438  38 81 00 08 */	addi r4, r1, 0x8
/* 8135103C 0001F43C  48 14 28 E9 */	bl fn_81493924
/* 81351040 0001F440  38 00 00 10 */	li r0, 0x10
/* 81351044 0001F444  38 61 00 08 */	addi r3, r1, 0x8
/* 81351048 0001F448  7C 09 03 A6 */	mtctr r0
.L_8135104C:
/* 8135104C 0001F44C  88 83 00 00 */	lbz r4, 0x0(r3)
/* 81351050 0001F450  88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81351054 0001F454  7C 04 00 40 */	cmplw r4, r0
/* 81351058 0001F458  41 82 00 1C */	beq .L_81351074
/* 8135105C 0001F45C  3C 60 81 64 */	lis r3, lbl_81638004@ha
/* 81351060 0001F460  38 63 80 04 */	addi r3, r3, lbl_81638004@l
/* 81351064 0001F464  4C C6 31 82 */	crclr cr1eq
/* 81351068 0001F468  48 1D D6 39 */	bl OSReport
/* 8135106C 0001F46C  38 60 00 00 */	li r3, 0x0
/* 81351070 0001F470  48 00 00 14 */	b .L_81351084
.L_81351074:
/* 81351074 0001F474  3B BD 00 01 */	addi r29, r29, 0x1
/* 81351078 0001F478  38 63 00 01 */	addi r3, r3, 0x1
/* 8135107C 0001F47C  42 00 FF D0 */	bdnz .L_8135104C
/* 81351080 0001F480  38 60 00 01 */	li r3, 0x1
.L_81351084:
/* 81351084 0001F484  39 61 00 80 */	addi r11, r1, 0x80
/* 81351088 0001F488  48 2A 84 8D */	bl _restgpr_29
/* 8135108C 0001F48C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 81351090 0001F490  7C 08 03 A6 */	mtlr r0
/* 81351094 0001F494  38 21 00 80 */	addi r1, r1, 0x80
/* 81351098 0001F498  4E 80 00 20 */	blr
.endfn check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl

# .text:0x8CB0 | 0x8135109C | size: 0x58
.fn iplNandSD_8135109C, global
/* 8135109C 0001F49C  2C 04 00 00 */	cmpwi r4, 0x0
/* 813510A0 0001F4A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813510A4 0001F4A4  41 82 00 48 */	beq .L_813510EC
/* 813510A8 0001F4A8  3C 00 43 30 */	lis r0, 0x4330
/* 813510AC 0001F4AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 813510B0 0001F4B0  C8 62 81 88 */	lfd f3, lbl_81694588@sda21(r0)
/* 813510B4 0001F4B4  90 01 00 08 */	stw r0, 0x8(r1)
/* 813510B8 0001F4B8  C0 22 81 80 */	lfs f1, lbl_81694580@sda21(r0)
/* 813510BC 0001F4BC  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813510C0 0001F4C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 813510C4 0001F4C4  EC 40 18 28 */	fsubs f2, f0, f3
/* 813510C8 0001F4C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 813510CC 0001F4CC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813510D0 0001F4D0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 813510D4 0001F4D4  EC 00 18 28 */	fsubs f0, f0, f3
/* 813510D8 0001F4D8  EC 01 00 24 */	fdivs f0, f1, f0
/* 813510DC 0001F4DC  FC 00 00 1E */	fctiwz f0, f0
/* 813510E0 0001F4E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 813510E4 0001F4E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813510E8 0001F4E8  90 0D A6 9C */	stw r0, lbl_816986DC@sda21(r0)
.L_813510EC:
/* 813510EC 0001F4EC  38 21 00 20 */	addi r1, r1, 0x20
/* 813510F0 0001F4F0  4E 80 00 20 */	blr
.endfn iplNandSD_8135109C

# .text:0x8D08 | 0x813510F4 | size: 0x4B0
# ipl::NandSDWorker::do_copy_sd_app_to_nand()
.fn do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv, global
/* 813510F4 0001F4F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813510F8 0001F4F8  7C 08 02 A6 */	mflr r0
/* 813510FC 0001F4FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 81351100 0001F500  39 61 00 80 */	addi r11, r1, 0x80
/* 81351104 0001F504  48 2A 83 C1 */	bl _savegpr_28
/* 81351108 0001F508  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135110C 0001F50C  7C 7C 1B 78 */	mr r28, r3
/* 81351110 0001F510  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81351114 0001F514  7C 9D 23 78 */	mr r29, r4
/* 81351118 0001F518  3C 65 00 02 */	addis r3, r5, 0x2
/* 8135111C 0001F51C  38 80 06 40 */	li r4, 0x640
/* 81351120 0001F520  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81351124 0001F524  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351128 0001F528  48 20 A5 41 */	bl fn_8155B668
/* 8135112C 0001F52C  38 00 00 00 */	li r0, 0x0
/* 81351130 0001F530  2C 1D 00 00 */	cmpwi r29, 0x0
/* 81351134 0001F534  B0 01 00 0A */	sth r0, 0xa(r1)
/* 81351138 0001F538  7C 7E 1B 78 */	mr r30, r3
/* 8135113C 0001F53C  B0 01 00 08 */	sth r0, 0x8(r1)
/* 81351140 0001F540  40 82 00 5C */	bne .L_8135119C
/* 81351144 0001F544  38 61 00 0C */	addi r3, r1, 0xc
/* 81351148 0001F548  48 21 97 1D */	bl fn_8156A864
/* 8135114C 0001F54C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351150 0001F550  41 82 00 40 */	beq .L_81351190
/* 81351154 0001F554  80 81 00 0C */	lwz r4, 0xc(r1)
/* 81351158 0001F558  38 7F 25 A8 */	addi r3, r31, 0x25a8
/* 8135115C 0001F55C  4C C6 31 82 */	crclr cr1eq
/* 81351160 0001F560  48 1D D5 41 */	bl OSReport
/* 81351164 0001F564  80 01 00 0C */	lwz r0, 0xc(r1)
/* 81351168 0001F568  2C 00 00 00 */	cmpwi r0, 0x0
/* 8135116C 0001F56C  40 82 00 30 */	bne .L_8135119C
/* 81351170 0001F570  38 7F 25 D1 */	addi r3, r31, 0x25d1
/* 81351174 0001F574  4C C6 31 82 */	crclr cr1eq
/* 81351178 0001F578  48 1D D5 29 */	bl OSReport
/* 8135117C 0001F57C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351180 0001F580  38 00 FF F9 */	li r0, -0x7
/* 81351184 0001F584  3C 63 00 04 */	addis r3, r3, 0x4
/* 81351188 0001F588  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135118C 0001F58C  48 00 03 E4 */	b .L_81351570
.L_81351190:
/* 81351190 0001F590  38 7F 26 0F */	addi r3, r31, 0x260f
/* 81351194 0001F594  4C C6 31 82 */	crclr cr1eq
/* 81351198 0001F598  48 1D D5 09 */	bl OSReport
.L_8135119C:
/* 8135119C 0001F59C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813511A0 0001F5A0  7F 83 E3 78 */	mr r3, r28
/* 813511A4 0001F5A4  7F C5 F3 78 */	mr r5, r30
/* 813511A8 0001F5A8  3C 84 00 04 */	addis r4, r4, 0x4
/* 813511AC 0001F5AC  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813511B0 0001F5B0  48 00 04 B1 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 813511B4 0001F5B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813511B8 0001F5B8  41 82 00 14 */	beq .L_813511CC
/* 813511BC 0001F5BC  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813511C0 0001F5C0  3C 84 00 04 */	addis r4, r4, 0x4
/* 813511C4 0001F5C4  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813511C8 0001F5C8  48 00 03 A8 */	b .L_81351570
.L_813511CC:
/* 813511CC 0001F5CC  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813511D0 0001F5D0  7F 83 E3 78 */	mr r3, r28
/* 813511D4 0001F5D4  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813511D8 0001F5D8  48 00 09 D9 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 813511DC 0001F5DC  2C 03 00 02 */	cmpwi r3, 0x2
/* 813511E0 0001F5E0  40 82 00 2C */	bne .L_8135120C
/* 813511E4 0001F5E4  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813511E8 0001F5E8  38 7F 0B E9 */	addi r3, r31, 0xbe9
/* 813511EC 0001F5EC  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813511F0 0001F5F0  4C C6 31 82 */	crclr cr1eq
/* 813511F4 0001F5F4  48 1D D4 AD */	bl OSReport
/* 813511F8 0001F5F8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813511FC 0001F5FC  38 00 FF FA */	li r0, -0x6
/* 81351200 0001F600  3C 63 00 04 */	addis r3, r3, 0x4
/* 81351204 0001F604  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351208 0001F608  48 00 03 68 */	b .L_81351570
.L_8135120C:
/* 8135120C 0001F60C  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81351210 0001F610  7F 83 E3 78 */	mr r3, r28
/* 81351214 0001F614  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81351218 0001F618  38 E1 00 0A */	addi r7, r1, 0xa
/* 8135121C 0001F61C  48 00 35 A5 */	bl iplNandSD_813547C0
/* 81351220 0001F620  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351224 0001F624  41 82 00 14 */	beq .L_81351238
/* 81351228 0001F628  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8135122C 0001F62C  3C 84 00 04 */	addis r4, r4, 0x4
/* 81351230 0001F630  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81351234 0001F634  48 00 03 3C */	b .L_81351570
.L_81351238:
/* 81351238 0001F638  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135123C 0001F63C  38 A1 00 28 */	addi r5, r1, 0x28
/* 81351240 0001F640  3C 83 00 04 */	addis r4, r3, 0x4
/* 81351244 0001F644  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 81351248 0001F648  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 8135124C 0001F64C  4B FF 81 E9 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 81351250 0001F650  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81351254 0001F654  38 61 00 28 */	addi r3, r1, 0x28
/* 81351258 0001F658  38 81 00 10 */	addi r4, r1, 0x10
/* 8135125C 0001F65C  38 A1 00 08 */	addi r5, r1, 0x8
/* 81351260 0001F660  38 06 00 3F */	addi r0, r6, 0x3f
/* 81351264 0001F664  38 C0 00 03 */	li r6, 0x3
/* 81351268 0001F668  54 07 00 32 */	clrrwi r7, r0, 6
/* 8135126C 0001F66C  38 E7 06 40 */	addi r7, r7, 0x640
/* 81351270 0001F670  48 26 E4 C5 */	bl fn_815BF734
/* 81351274 0001F674  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351278 0001F678  41 82 00 28 */	beq .L_813512A0
/* 8135127C 0001F67C  7C 64 1B 78 */	mr r4, r3
/* 81351280 0001F680  38 7F 0A FD */	addi r3, r31, 0xafd
/* 81351284 0001F684  4C C6 31 82 */	crclr cr1eq
/* 81351288 0001F688  48 1D D4 19 */	bl OSReport
/* 8135128C 0001F68C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351290 0001F690  38 00 FF FE */	li r0, -0x2
/* 81351294 0001F694  3C 63 00 04 */	addis r3, r3, 0x4
/* 81351298 0001F698  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135129C 0001F69C  48 00 02 D4 */	b .L_81351570
.L_813512A0:
/* 813512A0 0001F6A0  80 FE 00 00 */	lwz r7, 0x0(r30)
/* 813512A4 0001F6A4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813512A8 0001F6A8  81 1E 00 04 */	lwz r8, 0x4(r30)
/* 813512AC 0001F6AC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 813512B0 0001F6B0  7C A0 3A 78 */	xor r0, r5, r7
/* 813512B4 0001F6B4  7C C3 42 78 */	xor r3, r6, r8
/* 813512B8 0001F6B8  7C 60 03 79 */	or. r0, r3, r0
/* 813512BC 0001F6BC  41 82 00 28 */	beq .L_813512E4
/* 813512C0 0001F6C0  38 7F 0B 2D */	addi r3, r31, 0xb2d
/* 813512C4 0001F6C4  39 21 00 28 */	addi r9, r1, 0x28
/* 813512C8 0001F6C8  4C C6 31 82 */	crclr cr1eq
/* 813512CC 0001F6CC  48 1D D3 D5 */	bl OSReport
/* 813512D0 0001F6D0  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813512D4 0001F6D4  38 00 FF FD */	li r0, -0x3
/* 813512D8 0001F6D8  3C 63 00 04 */	addis r3, r3, 0x4
/* 813512DC 0001F6DC  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813512E0 0001F6E0  48 00 02 90 */	b .L_81351570
.L_813512E4:
/* 813512E4 0001F6E4  A1 21 00 0A */	lhz r9, 0xa(r1)
/* 813512E8 0001F6E8  A0 81 00 08 */	lhz r4, 0x8(r1)
/* 813512EC 0001F6EC  7D 23 46 70 */	srawi r3, r9, 8
/* 813512F0 0001F6F0  7C 80 46 70 */	srawi r0, r4, 8
/* 813512F4 0001F6F4  7C 03 00 00 */	cmpw r3, r0
/* 813512F8 0001F6F8  40 81 00 34 */	ble .L_8135132C
/* 813512FC 0001F6FC  7D 06 43 78 */	mr r6, r8
/* 81351300 0001F700  7C E5 3B 78 */	mr r5, r7
/* 81351304 0001F704  7D 27 4B 78 */	mr r7, r9
/* 81351308 0001F708  7C 88 23 78 */	mr r8, r4
/* 8135130C 0001F70C  38 7F 0C 20 */	addi r3, r31, 0xc20
/* 81351310 0001F710  4C C6 31 82 */	crclr cr1eq
/* 81351314 0001F714  48 1D D3 8D */	bl OSReport
/* 81351318 0001F718  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135131C 0001F71C  38 00 FF F0 */	li r0, -0x10
/* 81351320 0001F720  3C 63 00 04 */	addis r3, r3, 0x4
/* 81351324 0001F724  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351328 0001F728  48 00 02 48 */	b .L_81351570
.L_8135132C:
/* 8135132C 0001F72C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81351330 0001F730  38 61 00 28 */	addi r3, r1, 0x28
/* 81351334 0001F734  80 DC 00 00 */	lwz r6, 0x0(r28)
/* 81351338 0001F738  39 01 00 18 */	addi r8, r1, 0x18
/* 8135133C 0001F73C  38 04 00 3F */	addi r0, r4, 0x3f
/* 81351340 0001F740  38 A0 00 03 */	li r5, 0x3
/* 81351344 0001F744  3C 86 00 02 */	addis r4, r6, 0x2
/* 81351348 0001F748  38 E0 00 01 */	li r7, 0x1
/* 8135134C 0001F74C  54 06 00 32 */	clrrwi r6, r0, 6
/* 81351350 0001F750  39 20 00 00 */	li r9, 0x0
/* 81351354 0001F754  38 C6 06 40 */	addi r6, r6, 0x640
/* 81351358 0001F758  38 84 E6 A0 */	subi r4, r4, 0x1960
/* 8135135C 0001F75C  48 26 E7 A5 */	bl fn_815BFB00
/* 81351360 0001F760  2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 81351364 0001F764  40 82 00 28 */	bne .L_8135138C
/* 81351368 0001F768  7C 64 1B 78 */	mr r4, r3
/* 8135136C 0001F76C  38 7F 0B 7B */	addi r3, r31, 0xb7b
/* 81351370 0001F770  4C C6 31 82 */	crclr cr1eq
/* 81351374 0001F774  48 1D D3 2D */	bl OSReport
/* 81351378 0001F778  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135137C 0001F77C  38 00 FF F1 */	li r0, -0xf
/* 81351380 0001F780  3C 63 00 04 */	addis r3, r3, 0x4
/* 81351384 0001F784  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351388 0001F788  48 00 01 E8 */	b .L_81351570
.L_8135138C:
/* 8135138C 0001F78C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351390 0001F790  41 82 00 28 */	beq .L_813513B8
/* 81351394 0001F794  7C 64 1B 78 */	mr r4, r3
/* 81351398 0001F798  38 7F 0B BB */	addi r3, r31, 0xbbb
/* 8135139C 0001F79C  4C C6 31 82 */	crclr cr1eq
/* 813513A0 0001F7A0  48 1D D3 01 */	bl OSReport
/* 813513A4 0001F7A4  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813513A8 0001F7A8  38 00 FF FD */	li r0, -0x3
/* 813513AC 0001F7AC  3C 63 00 04 */	addis r3, r3, 0x4
/* 813513B0 0001F7B0  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813513B4 0001F7B4  48 00 01 BC */	b .L_81351570
.L_813513B8:
/* 813513B8 0001F7B8  A0 81 00 22 */	lhz r4, 0x22(r1)
/* 813513BC 0001F7BC  38 7F 1A 76 */	addi r3, r31, 0x1a76
/* 813513C0 0001F7C0  A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 813513C4 0001F7C4  4C C6 31 82 */	crclr cr1eq
/* 813513C8 0001F7C8  48 1D D2 D9 */	bl OSReport
/* 813513CC 0001F7CC  A0 81 00 1E */	lhz r4, 0x1e(r1)
/* 813513D0 0001F7D0  38 7F 1A AA */	addi r3, r31, 0x1aaa
/* 813513D4 0001F7D4  A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 813513D8 0001F7D8  4C C6 31 82 */	crclr cr1eq
/* 813513DC 0001F7DC  48 1D D2 C5 */	bl OSReport
/* 813513E0 0001F7E0  A0 81 00 26 */	lhz r4, 0x26(r1)
/* 813513E4 0001F7E4  38 7F 1A DF */	addi r3, r31, 0x1adf
/* 813513E8 0001F7E8  A0 A1 00 24 */	lhz r5, 0x24(r1)
/* 813513EC 0001F7EC  4C C6 31 82 */	crclr cr1eq
/* 813513F0 0001F7F0  48 1D D2 B1 */	bl OSReport
/* 813513F4 0001F7F4  A0 A1 00 1E */	lhz r5, 0x1e(r1)
/* 813513F8 0001F7F8  7F 83 E3 78 */	mr r3, r28
/* 813513FC 0001F7FC  A0 81 00 26 */	lhz r4, 0x26(r1)
/* 81351400 0001F800  A0 E1 00 1C */	lhz r7, 0x1c(r1)
/* 81351404 0001F804  7C C5 22 14 */	add r6, r5, r4
/* 81351408 0001F808  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 8135140C 0001F80C  A0 81 00 22 */	lhz r4, 0x22(r1)
/* 81351410 0001F810  A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 81351414 0001F814  7C E7 02 14 */	add r7, r7, r0
/* 81351418 0001F818  4B FF CC 3D */	bl check_nand_free_area__Q23ipl12NandSDWorkerFUlUlll
/* 8135141C 0001F81C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351420 0001F820  41 82 00 14 */	beq .L_81351434
/* 81351424 0001F824  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81351428 0001F828  3C 84 00 04 */	addis r4, r4, 0x4
/* 8135142C 0001F82C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81351430 0001F830  48 00 01 40 */	b .L_81351570
.L_81351434:
/* 81351434 0001F834  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81351438 0001F838  3D 00 81 35 */	lis r8, iplNandSD_8135109C@ha
/* 8135143C 0001F83C  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81351440 0001F840  38 61 00 28 */	addi r3, r1, 0x28
/* 81351444 0001F844  38 04 00 3F */	addi r0, r4, 0x3f
/* 81351448 0001F848  39 08 10 9C */	addi r8, r8, iplNandSD_8135109C@l
/* 8135144C 0001F84C  3C 85 00 02 */	addis r4, r5, 0x2
/* 81351450 0001F850  38 A0 00 03 */	li r5, 0x3
/* 81351454 0001F854  54 06 00 32 */	clrrwi r6, r0, 6
/* 81351458 0001F858  38 E0 00 08 */	li r7, 0x8
/* 8135145C 0001F85C  38 C6 06 40 */	addi r6, r6, 0x640
/* 81351460 0001F860  38 84 E6 A0 */	subi r4, r4, 0x1960
/* 81351464 0001F864  48 26 EC 3D */	bl fn_815C00A0
/* 81351468 0001F868  2C 03 F4 40 */	cmpwi r3, -0xbc0
/* 8135146C 0001F86C  40 82 00 28 */	bne .L_81351494
/* 81351470 0001F870  7C 64 1B 78 */	mr r4, r3
/* 81351474 0001F874  38 7F 26 3F */	addi r3, r31, 0x263f
/* 81351478 0001F878  4C C6 31 82 */	crclr cr1eq
/* 8135147C 0001F87C  48 1D D2 25 */	bl OSReport
/* 81351480 0001F880  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351484 0001F884  38 00 FF F1 */	li r0, -0xf
/* 81351488 0001F888  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135148C 0001F88C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351490 0001F890  48 00 00 E0 */	b .L_81351570
.L_81351494:
/* 81351494 0001F894  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351498 0001F898  41 82 00 8C */	beq .L_81351524
/* 8135149C 0001F89C  7C 64 1B 78 */	mr r4, r3
/* 813514A0 0001F8A0  38 7F 1B 94 */	addi r3, r31, 0x1b94
/* 813514A4 0001F8A4  4C C6 31 82 */	crclr cr1eq
/* 813514A8 0001F8A8  48 1D D1 F9 */	bl OSReport
/* 813514AC 0001F8AC  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813514B0 0001F8B0  7F 83 E3 78 */	mr r3, r28
/* 813514B4 0001F8B4  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813514B8 0001F8B8  48 00 06 F9 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 813514BC 0001F8BC  2C 03 00 01 */	cmpwi r3, 0x1
/* 813514C0 0001F8C0  40 82 00 50 */	bne .L_81351510
/* 813514C4 0001F8C4  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813514C8 0001F8C8  7F 83 E3 78 */	mr r3, r28
/* 813514CC 0001F8CC  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813514D0 0001F8D0  4B FF E9 D9 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 813514D4 0001F8D4  2C 03 FF FB */	cmpwi r3, -0x5
/* 813514D8 0001F8D8  40 82 00 18 */	bne .L_813514F0
/* 813514DC 0001F8DC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813514E0 0001F8E0  38 00 FF FB */	li r0, -0x5
/* 813514E4 0001F8E4  3C 63 00 04 */	addis r3, r3, 0x4
/* 813514E8 0001F8E8  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 813514EC 0001F8EC  48 00 00 84 */	b .L_81351570
.L_813514F0:
/* 813514F0 0001F8F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813514F4 0001F8F4  41 82 00 1C */	beq .L_81351510
/* 813514F8 0001F8F8  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813514FC 0001F8FC  7C 67 1B 78 */	mr r7, r3
/* 81351500 0001F900  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81351504 0001F904  38 7F 06 43 */	addi r3, r31, 0x643
/* 81351508 0001F908  4C C6 31 82 */	crclr cr1eq
/* 8135150C 0001F90C  48 1D D1 95 */	bl OSReport
.L_81351510:
/* 81351510 0001F910  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351514 0001F914  38 00 FF FD */	li r0, -0x3
/* 81351518 0001F918  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135151C 0001F91C  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81351520 0001F920  48 00 00 50 */	b .L_81351570
.L_81351524:
/* 81351524 0001F924  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81351528 0001F928  38 7F 26 7B */	addi r3, r31, 0x267b
/* 8135152C 0001F92C  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81351530 0001F930  4C C6 31 82 */	crclr cr1eq
/* 81351534 0001F934  48 1D D1 6D */	bl OSReport
/* 81351538 0001F938  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135153C 0001F93C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 81351540 0001F940  3C 83 00 04 */	addis r4, r3, 0x4
/* 81351544 0001F944  80 64 EA 2C */	lwz r3, -0x15d4(r4)
/* 81351548 0001F948  38 03 00 01 */	addi r0, r3, 0x1
/* 8135154C 0001F94C  90 04 EA 2C */	stw r0, -0x15d4(r4)
/* 81351550 0001F950  40 82 00 10 */	bne .L_81351560
/* 81351554 0001F954  7F 83 E3 78 */	mr r3, r28
/* 81351558 0001F958  38 80 00 01 */	li r4, 0x1
/* 8135155C 0001F95C  48 00 00 49 */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
.L_81351560:
/* 81351560 0001F960  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351564 0001F964  38 00 00 00 */	li r0, 0x0
/* 81351568 0001F968  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135156C 0001F96C  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_81351570:
/* 81351570 0001F970  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81351574 0001F974  41 82 00 18 */	beq .L_8135158C
/* 81351578 0001F978  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8135157C 0001F97C  7F C4 F3 78 */	mr r4, r30
/* 81351580 0001F980  3C 63 00 02 */	addis r3, r3, 0x2
/* 81351584 0001F984  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351588 0001F988  48 20 A0 F1 */	bl fn_8155B678
.L_8135158C:
/* 8135158C 0001F98C  39 61 00 80 */	addi r11, r1, 0x80
/* 81351590 0001F990  48 2A 7F 81 */	bl _restgpr_28
/* 81351594 0001F994  80 01 00 84 */	lwz r0, 0x84(r1)
/* 81351598 0001F998  7C 08 03 A6 */	mtlr r0
/* 8135159C 0001F99C  38 21 00 80 */	addi r1, r1, 0x80
/* 813515A0 0001F9A0  4E 80 00 20 */	blr
.endfn do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv

# .text:0x91B8 | 0x813515A4 | size: 0xBC
# ipl::NandSDWorker::change_nand_app_count(long)
.fn change_nand_app_count__Q23ipl12NandSDWorkerFl, global
/* 813515A4 0001F9A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813515A8 0001F9A8  7C 08 02 A6 */	mflr r0
/* 813515AC 0001F9AC  2C 04 00 00 */	cmpwi r4, 0x0
/* 813515B0 0001F9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 813515B4 0001F9B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813515B8 0001F9B8  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813515BC 0001F9BC  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 813515C0 0001F9C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 813515C4 0001F9C4  7C 9E 23 78 */	mr r30, r4
/* 813515C8 0001F9C8  41 82 00 80 */	beq .L_81351648
/* 813515CC 0001F9CC  38 00 00 00 */	li r0, 0x0
/* 813515D0 0001F9D0  38 61 00 08 */	addi r3, r1, 0x8
/* 813515D4 0001F9D4  90 01 00 08 */	stw r0, 0x8(r1)
/* 813515D8 0001F9D8  48 21 92 A5 */	bl fn_8156A87C
/* 813515DC 0001F9DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813515E0 0001F9E0  40 82 00 14 */	bne .L_813515F4
/* 813515E4 0001F9E4  38 7F 26 AF */	addi r3, r31, 0x26af
/* 813515E8 0001F9E8  4C C6 31 82 */	crclr cr1eq
/* 813515EC 0001F9EC  48 1D D0 B5 */	bl OSReport
/* 813515F0 0001F9F0  48 00 00 58 */	b .L_81351648
.L_813515F4:
/* 813515F4 0001F9F4  80 81 00 08 */	lwz r4, 0x8(r1)
/* 813515F8 0001F9F8  38 7F 26 E4 */	addi r3, r31, 0x26e4
/* 813515FC 0001F9FC  4C C6 31 82 */	crclr cr1eq
/* 81351600 0001FA00  48 1D D0 A1 */	bl OSReport
/* 81351604 0001FA04  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81351608 0001FA08  7C 60 F2 14 */	add r3, r0, r30
/* 8135160C 0001FA0C  90 61 00 08 */	stw r3, 0x8(r1)
/* 81351610 0001FA10  48 21 92 7D */	bl fn_8156A88C
/* 81351614 0001FA14  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81351618 0001FA18  20 60 00 30 */	subfic r3, r0, 0x30
/* 8135161C 0001FA1C  48 21 92 59 */	bl fn_8156A874
/* 81351620 0001FA20  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81351624 0001FA24  38 7F 27 16 */	addi r3, r31, 0x2716
/* 81351628 0001FA28  4C C6 31 82 */	crclr cr1eq
/* 8135162C 0001FA2C  48 1D D0 75 */	bl OSReport
/* 81351630 0001FA30  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81351634 0001FA34  38 7F 27 48 */	addi r3, r31, 0x2748
/* 81351638 0001FA38  20 80 00 30 */	subfic r4, r0, 0x30
/* 8135163C 0001FA3C  4C C6 31 82 */	crclr cr1eq
/* 81351640 0001FA40  48 1D D0 61 */	bl OSReport
/* 81351644 0001FA44  48 21 83 09 */	bl fn_8156994C
.L_81351648:
/* 81351648 0001FA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135164C 0001FA4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81351650 0001FA50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81351654 0001FA54  7C 08 03 A6 */	mtlr r0
/* 81351658 0001FA58  38 21 00 20 */	addi r1, r1, 0x20
/* 8135165C 0001FA5C  4E 80 00 20 */	blr
.endfn change_nand_app_count__Q23ipl12NandSDWorkerFl

# .text:0x9274 | 0x81351660 | size: 0x274
# ipl::NandSDWorker::get_sd_app_banner(unsigned long, ipl::NandSDWorker::SDAppBanner*)
.fn get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner, global
/* 81351660 0001FA60  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81351664 0001FA64  7C 08 02 A6 */	mflr r0
/* 81351668 0001FA68  90 01 00 94 */	stw r0, 0x94(r1)
/* 8135166C 0001FA6C  39 61 00 90 */	addi r11, r1, 0x90
/* 81351670 0001FA70  48 2A 7E 4D */	bl _savegpr_26
/* 81351674 0001FA74  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81351678 0001FA78  7C 9A 23 78 */	mr r26, r4
/* 8135167C 0001FA7C  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 81351680 0001FA80  7C BB 2B 78 */	mr r27, r5
/* 81351684 0001FA84  3C 86 00 02 */	addis r4, r6, 0x2
/* 81351688 0001FA88  7C 7E 1B 78 */	mr r30, r3
/* 8135168C 0001FA8C  80 64 E6 90 */	lwz r3, -0x1970(r4)
/* 81351690 0001FA90  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 81351694 0001FA94  38 80 06 40 */	li r4, 0x640
/* 81351698 0001FA98  38 A0 00 20 */	li r5, 0x20
/* 8135169C 0001FA9C  48 20 90 B9 */	bl fn_8155A754
/* 813516A0 0001FAA0  2C 1B 00 00 */	cmpwi r27, 0x0
/* 813516A4 0001FAA4  7C 7F 1B 78 */	mr r31, r3
/* 813516A8 0001FAA8  41 82 00 0C */	beq .L_813516B4
/* 813516AC 0001FAAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813516B0 0001FAB0  40 82 00 1C */	bne .L_813516CC
.L_813516B4:
/* 813516B4 0001FAB4  38 7C 1C C6 */	addi r3, r28, 0x1cc6
/* 813516B8 0001FAB8  4C C6 31 82 */	crclr cr1eq
/* 813516BC 0001FABC  48 1D CF E5 */	bl OSReport
/* 813516C0 0001FAC0  38 00 FF FE */	li r0, -0x2
/* 813516C4 0001FAC4  90 01 00 08 */	stw r0, 0x8(r1)
/* 813516C8 0001FAC8  48 00 01 DC */	b .L_813518A4
.L_813516CC:
/* 813516CC 0001FACC  7F 44 D3 78 */	mr r4, r26
/* 813516D0 0001FAD0  38 A1 00 30 */	addi r5, r1, 0x30
/* 813516D4 0001FAD4  38 60 00 00 */	li r3, 0x0
/* 813516D8 0001FAD8  4B FF 7D 5D */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 813516DC 0001FADC  38 61 00 30 */	addi r3, r1, 0x30
/* 813516E0 0001FAE0  38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 813516E4 0001FAE4  48 29 69 5D */	bl fn_815E8040
/* 813516E8 0001FAE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813516EC 0001FAEC  7C 7D 1B 78 */	mr r29, r3
/* 813516F0 0001FAF0  40 82 00 28 */	bne .L_81351718
/* 813516F4 0001FAF4  38 7C 17 AE */	addi r3, r28, 0x17ae
/* 813516F8 0001FAF8  38 81 00 30 */	addi r4, r1, 0x30
/* 813516FC 0001FAFC  4C C6 31 82 */	crclr cr1eq
/* 81351700 0001FB00  48 1D CF A1 */	bl OSReport
/* 81351704 0001FB04  7F C3 F3 78 */	mr r3, r30
/* 81351708 0001FB08  38 A1 00 08 */	addi r5, r1, 0x8
/* 8135170C 0001FB0C  38 80 FF FF */	li r4, -0x1
/* 81351710 0001FB10  48 00 26 F1 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351714 0001FB14  48 00 01 90 */	b .L_813518A4
.L_81351718:
/* 81351718 0001FB18  7F E3 FB 78 */	mr r3, r31
/* 8135171C 0001FB1C  7F A6 EB 78 */	mr r6, r29
/* 81351720 0001FB20  38 80 06 40 */	li r4, 0x640
/* 81351724 0001FB24  38 A0 00 01 */	li r5, 0x1
/* 81351728 0001FB28  48 29 69 75 */	bl fn_815E809C
/* 8135172C 0001FB2C  28 03 00 01 */	cmplwi r3, 0x1
/* 81351730 0001FB30  41 82 00 3C */	beq .L_8135176C
/* 81351734 0001FB34  7F C3 F3 78 */	mr r3, r30
/* 81351738 0001FB38  38 80 FF FF */	li r4, -0x1
/* 8135173C 0001FB3C  38 A0 00 00 */	li r5, 0x0
/* 81351740 0001FB40  48 00 26 C1 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351744 0001FB44  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351748 0001FB48  90 61 00 08 */	stw r3, 0x8(r1)
/* 8135174C 0001FB4C  41 82 00 0C */	beq .L_81351758
/* 81351750 0001FB50  2C 03 FF FE */	cmpwi r3, -0x2
/* 81351754 0001FB54  40 82 00 0C */	bne .L_81351760
.L_81351758:
/* 81351758 0001FB58  38 00 FF FD */	li r0, -0x3
/* 8135175C 0001FB5C  90 01 00 08 */	stw r0, 0x8(r1)
.L_81351760:
/* 81351760 0001FB60  7F A3 EB 78 */	mr r3, r29
/* 81351764 0001FB64  48 29 68 85 */	bl fn_815E7FE8
/* 81351768 0001FB68  48 00 01 3C */	b .L_813518A4
.L_8135176C:
/* 8135176C 0001FB6C  7F A3 EB 78 */	mr r3, r29
/* 81351770 0001FB70  48 29 68 79 */	bl fn_815E7FE8
/* 81351774 0001FB74  7C 64 1B 78 */	mr r4, r3
/* 81351778 0001FB78  7F C3 F3 78 */	mr r3, r30
/* 8135177C 0001FB7C  38 A1 00 08 */	addi r5, r1, 0x8
/* 81351780 0001FB80  48 00 26 81 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351784 0001FB84  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351788 0001FB88  41 82 00 14 */	beq .L_8135179C
/* 8135178C 0001FB8C  38 7C 1C F0 */	addi r3, r28, 0x1cf0
/* 81351790 0001FB90  4C C6 31 82 */	crclr cr1eq
/* 81351794 0001FB94  48 1D CF 0D */	bl OSReport
/* 81351798 0001FB98  48 00 01 0C */	b .L_813518A4
.L_8135179C:
/* 8135179C 0001FB9C  7F E3 FB 78 */	mr r3, r31
/* 813517A0 0001FBA0  7F 65 DB 78 */	mr r5, r27
/* 813517A4 0001FBA4  38 80 06 40 */	li r4, 0x640
/* 813517A8 0001FBA8  48 00 28 C9 */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 813517AC 0001FBAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813517B0 0001FBB0  41 82 00 10 */	beq .L_813517C0
/* 813517B4 0001FBB4  38 00 FF FD */	li r0, -0x3
/* 813517B8 0001FBB8  90 01 00 08 */	stw r0, 0x8(r1)
/* 813517BC 0001FBBC  48 00 00 E8 */	b .L_813518A4
.L_813517C0:
/* 813517C0 0001FBC0  38 61 00 0C */	addi r3, r1, 0xc
/* 813517C4 0001FBC4  38 9B 00 0C */	addi r4, r27, 0xc
/* 813517C8 0001FBC8  38 A0 00 10 */	li r5, 0x10
/* 813517CC 0001FBCC  4B FD EA 65 */	bl memcpy
/* 813517D0 0001FBD0  3C 80 81 61 */	lis r4, lbl_8160D648@ha
/* 813517D4 0001FBD4  38 7B 00 0C */	addi r3, r27, 0xc
/* 813517D8 0001FBD8  38 84 D6 48 */	addi r4, r4, lbl_8160D648@l
/* 813517DC 0001FBDC  38 A0 00 10 */	li r5, 0x10
/* 813517E0 0001FBE0  4B FD EA 51 */	bl memcpy
/* 813517E4 0001FBE4  7F C3 F3 78 */	mr r3, r30
/* 813517E8 0001FBE8  7F 65 DB 78 */	mr r5, r27
/* 813517EC 0001FBEC  38 81 00 0C */	addi r4, r1, 0xc
/* 813517F0 0001FBF0  38 C0 06 40 */	li r6, 0x640
/* 813517F4 0001FBF4  4B FF F8 09 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 813517F8 0001FBF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813517FC 0001FBFC  40 82 00 20 */	bne .L_8135181C
/* 81351800 0001FC00  38 7C 1D 10 */	addi r3, r28, 0x1d10
/* 81351804 0001FC04  38 81 00 30 */	addi r4, r1, 0x30
/* 81351808 0001FC08  4C C6 31 82 */	crclr cr1eq
/* 8135180C 0001FC0C  48 1D CE 95 */	bl OSReport
/* 81351810 0001FC10  38 00 FF FD */	li r0, -0x3
/* 81351814 0001FC14  90 01 00 08 */	stw r0, 0x8(r1)
/* 81351818 0001FC18  48 00 00 8C */	b .L_813518A4
.L_8135181C:
/* 8135181C 0001FC1C  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 81351820 0001FC20  38 00 FF FF */	li r0, -0x1
/* 81351824 0001FC24  3B A0 FF FD */	li r29, -0x3
/* 81351828 0001FC28  38 61 00 1C */	addi r3, r1, 0x1c
/* 8135182C 0001FC2C  7C 80 00 38 */	and r0, r4, r0
/* 81351830 0001FC30  38 80 00 00 */	li r4, 0x0
/* 81351834 0001FC34  7C 00 D0 50 */	subf r0, r0, r26
/* 81351838 0001FC38  38 A0 00 14 */	li r5, 0x14
/* 8135183C 0001FC3C  30 00 FF FF */	subic r0, r0, 0x1
/* 81351840 0001FC40  7C 00 01 10 */	subfe r0, r0, r0
/* 81351844 0001FC44  7F A0 00 78 */	andc r0, r29, r0
/* 81351848 0001FC48  90 01 00 08 */	stw r0, 0x8(r1)
/* 8135184C 0001FC4C  4B FD EA E9 */	bl memset
/* 81351850 0001FC50  38 61 00 30 */	addi r3, r1, 0x30
/* 81351854 0001FC54  38 81 00 1C */	addi r4, r1, 0x1c
/* 81351858 0001FC58  48 29 68 CD */	bl fn_815E8124
/* 8135185C 0001FC5C  7C 64 1B 78 */	mr r4, r3
/* 81351860 0001FC60  7F C3 F3 78 */	mr r3, r30
/* 81351864 0001FC64  38 A1 00 08 */	addi r5, r1, 0x8
/* 81351868 0001FC68  48 00 25 99 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 8135186C 0001FC6C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351870 0001FC70  41 82 00 14 */	beq .L_81351884
/* 81351874 0001FC74  38 7C 1C F0 */	addi r3, r28, 0x1cf0
/* 81351878 0001FC78  4C C6 31 82 */	crclr cr1eq
/* 8135187C 0001FC7C  48 1D CE 25 */	bl OSReport
/* 81351880 0001FC80  48 00 00 24 */	b .L_813518A4
.L_81351884:
/* 81351884 0001FC84  80 7B 00 08 */	lwz r3, 0x8(r27)
/* 81351888 0001FC88  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8135188C 0001FC8C  38 03 00 3F */	addi r0, r3, 0x3f
/* 81351890 0001FC90  54 03 00 32 */	clrrwi r3, r0, 6
/* 81351894 0001FC94  38 03 06 40 */	addi r0, r3, 0x640
/* 81351898 0001FC98  7C 04 00 40 */	cmplw r4, r0
/* 8135189C 0001FC9C  41 81 00 08 */	bgt .L_813518A4
/* 813518A0 0001FCA0  93 A1 00 08 */	stw r29, 0x8(r1)
.L_813518A4:
/* 813518A4 0001FCA4  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813518A8 0001FCA8  7F E4 FB 78 */	mr r4, r31
/* 813518AC 0001FCAC  3C 63 00 02 */	addis r3, r3, 0x2
/* 813518B0 0001FCB0  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813518B4 0001FCB4  48 20 91 51 */	bl fn_8155AA04
/* 813518B8 0001FCB8  39 61 00 90 */	addi r11, r1, 0x90
/* 813518BC 0001FCBC  80 61 00 08 */	lwz r3, 0x8(r1)
/* 813518C0 0001FCC0  48 2A 7C 49 */	bl _restgpr_26
/* 813518C4 0001FCC4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 813518C8 0001FCC8  7C 08 03 A6 */	mtlr r0
/* 813518CC 0001FCCC  38 21 00 90 */	addi r1, r1, 0x90
/* 813518D0 0001FCD0  4E 80 00 20 */	blr
.endfn get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner

# .text:0x94E8 | 0x813518D4 | size: 0x2B0
# ipl::NandSDWorker::get_sd_app_thumbnail(const ipl::NandSDWorker::SDAppBanner*, unsigned char*)
.fn get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc, global
/* 813518D4 0001FCD4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813518D8 0001FCD8  7C 08 02 A6 */	mflr r0
/* 813518DC 0001FCDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 813518E0 0001FCE0  39 61 00 70 */	addi r11, r1, 0x70
/* 813518E4 0001FCE4  48 2A 7B D5 */	bl _savegpr_25
/* 813518E8 0001FCE8  7C 7A 1B 78 */	mr r26, r3
/* 813518EC 0001FCEC  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813518F0 0001FCF0  7C BC 2B 78 */	mr r28, r5
/* 813518F4 0001FCF4  7C 9B 23 78 */	mr r27, r4
/* 813518F8 0001FCF8  80 64 00 00 */	lwz r3, 0x0(r4)
/* 813518FC 0001FCFC  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81351900 0001FD00  80 84 00 04 */	lwz r4, 0x4(r4)
/* 81351904 0001FD04  38 A1 00 0C */	addi r5, r1, 0xc
/* 81351908 0001FD08  3B C0 00 00 */	li r30, 0x0
/* 8135190C 0001FD0C  3B A0 00 00 */	li r29, 0x0
/* 81351910 0001FD10  4B FF 7B 25 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 81351914 0001FD14  80 BB 00 08 */	lwz r5, 0x8(r27)
/* 81351918 0001FD18  28 05 C8 00 */	cmplwi r5, 0xc800
/* 8135191C 0001FD1C  40 81 00 20 */	ble .L_8135193C
/* 81351920 0001FD20  38 7F 27 75 */	addi r3, r31, 0x2775
/* 81351924 0001FD24  38 81 00 0C */	addi r4, r1, 0xc
/* 81351928 0001FD28  4C C6 31 82 */	crclr cr1eq
/* 8135192C 0001FD2C  48 1D CD 75 */	bl OSReport
/* 81351930 0001FD30  38 00 FF FD */	li r0, -0x3
/* 81351934 0001FD34  90 01 00 08 */	stw r0, 0x8(r1)
/* 81351938 0001FD38  48 00 02 08 */	b .L_81351B40
.L_8135193C:
/* 8135193C 0001FD3C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351940 0001FD40  38 05 00 3F */	addi r0, r5, 0x3f
/* 81351944 0001FD44  54 04 00 32 */	clrrwi r4, r0, 6
/* 81351948 0001FD48  38 A0 00 20 */	li r5, 0x20
/* 8135194C 0001FD4C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81351950 0001FD50  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351954 0001FD54  48 20 8E 01 */	bl fn_8155A754
/* 81351958 0001FD58  80 9B 00 08 */	lwz r4, 0x8(r27)
/* 8135195C 0001FD5C  7C 7E 1B 78 */	mr r30, r3
/* 81351960 0001FD60  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351964 0001FD64  38 04 00 3F */	addi r0, r4, 0x3f
/* 81351968 0001FD68  3C 63 00 02 */	addis r3, r3, 0x2
/* 8135196C 0001FD6C  54 04 00 32 */	clrrwi r4, r0, 6
/* 81351970 0001FD70  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351974 0001FD74  48 20 9C F5 */	bl fn_8155B668
/* 81351978 0001FD78  7C 7D 1B 78 */	mr r29, r3
/* 8135197C 0001FD7C  38 61 00 0C */	addi r3, r1, 0xc
/* 81351980 0001FD80  38 8D 81 AD */	li r4, lbl_816961ED@sda21
/* 81351984 0001FD84  48 29 66 BD */	bl fn_815E8040
/* 81351988 0001FD88  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135198C 0001FD8C  7C 79 1B 78 */	mr r25, r3
/* 81351990 0001FD90  40 82 00 28 */	bne .L_813519B8
/* 81351994 0001FD94  38 7F 17 AE */	addi r3, r31, 0x17ae
/* 81351998 0001FD98  38 81 00 0C */	addi r4, r1, 0xc
/* 8135199C 0001FD9C  4C C6 31 82 */	crclr cr1eq
/* 813519A0 0001FDA0  48 1D CD 01 */	bl OSReport
/* 813519A4 0001FDA4  7F 43 D3 78 */	mr r3, r26
/* 813519A8 0001FDA8  38 A1 00 08 */	addi r5, r1, 0x8
/* 813519AC 0001FDAC  38 80 FF FF */	li r4, -0x1
/* 813519B0 0001FDB0  48 00 24 51 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813519B4 0001FDB4  48 00 01 8C */	b .L_81351B40
.L_813519B8:
/* 813519B8 0001FDB8  38 80 06 40 */	li r4, 0x640
/* 813519BC 0001FDBC  38 A0 00 00 */	li r5, 0x0
/* 813519C0 0001FDC0  48 29 66 E1 */	bl fn_815E80A0
/* 813519C4 0001FDC4  7C 64 1B 78 */	mr r4, r3
/* 813519C8 0001FDC8  7F 43 D3 78 */	mr r3, r26
/* 813519CC 0001FDCC  38 A1 00 08 */	addi r5, r1, 0x8
/* 813519D0 0001FDD0  48 00 24 31 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813519D4 0001FDD4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813519D8 0001FDD8  41 82 00 1C */	beq .L_813519F4
/* 813519DC 0001FDDC  38 7F 27 A7 */	addi r3, r31, 0x27a7
/* 813519E0 0001FDE0  4C C6 31 82 */	crclr cr1eq
/* 813519E4 0001FDE4  48 1D CC BD */	bl OSReport
/* 813519E8 0001FDE8  7F 23 CB 78 */	mr r3, r25
/* 813519EC 0001FDEC  48 29 65 FD */	bl fn_815E7FE8
/* 813519F0 0001FDF0  48 00 01 50 */	b .L_81351B40
.L_813519F4:
/* 813519F4 0001FDF4  80 9B 00 08 */	lwz r4, 0x8(r27)
/* 813519F8 0001FDF8  7F A3 EB 78 */	mr r3, r29
/* 813519FC 0001FDFC  7F 26 CB 78 */	mr r6, r25
/* 81351A00 0001FE00  38 A0 00 01 */	li r5, 0x1
/* 81351A04 0001FE04  38 04 00 3F */	addi r0, r4, 0x3f
/* 81351A08 0001FE08  54 04 00 32 */	clrrwi r4, r0, 6
/* 81351A0C 0001FE0C  48 29 66 91 */	bl fn_815E809C
/* 81351A10 0001FE10  28 03 00 01 */	cmplwi r3, 0x1
/* 81351A14 0001FE14  41 82 00 3C */	beq .L_81351A50
/* 81351A18 0001FE18  7F 43 D3 78 */	mr r3, r26
/* 81351A1C 0001FE1C  38 80 FF FF */	li r4, -0x1
/* 81351A20 0001FE20  38 A0 00 00 */	li r5, 0x0
/* 81351A24 0001FE24  48 00 23 DD */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351A28 0001FE28  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351A2C 0001FE2C  90 61 00 08 */	stw r3, 0x8(r1)
/* 81351A30 0001FE30  41 82 00 0C */	beq .L_81351A3C
/* 81351A34 0001FE34  2C 03 FF FE */	cmpwi r3, -0x2
/* 81351A38 0001FE38  40 82 00 0C */	bne .L_81351A44
.L_81351A3C:
/* 81351A3C 0001FE3C  38 00 FF FD */	li r0, -0x3
/* 81351A40 0001FE40  90 01 00 08 */	stw r0, 0x8(r1)
.L_81351A44:
/* 81351A44 0001FE44  7F 23 CB 78 */	mr r3, r25
/* 81351A48 0001FE48  48 29 65 A1 */	bl fn_815E7FE8
/* 81351A4C 0001FE4C  48 00 00 F4 */	b .L_81351B40
.L_81351A50:
/* 81351A50 0001FE50  7F 23 CB 78 */	mr r3, r25
/* 81351A54 0001FE54  48 29 65 95 */	bl fn_815E7FE8
/* 81351A58 0001FE58  7C 64 1B 78 */	mr r4, r3
/* 81351A5C 0001FE5C  7F 43 D3 78 */	mr r3, r26
/* 81351A60 0001FE60  38 A1 00 08 */	addi r5, r1, 0x8
/* 81351A64 0001FE64  48 00 23 9D */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81351A68 0001FE68  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351A6C 0001FE6C  41 82 00 14 */	beq .L_81351A80
/* 81351A70 0001FE70  38 7F 1C F0 */	addi r3, r31, 0x1cf0
/* 81351A74 0001FE74  4C C6 31 82 */	crclr cr1eq
/* 81351A78 0001FE78  48 1D CC 29 */	bl OSReport
/* 81351A7C 0001FE7C  48 00 00 C4 */	b .L_81351B40
.L_81351A80:
/* 81351A80 0001FE80  80 9B 00 08 */	lwz r4, 0x8(r27)
/* 81351A84 0001FE84  7F A3 EB 78 */	mr r3, r29
/* 81351A88 0001FE88  7F C5 F3 78 */	mr r5, r30
/* 81351A8C 0001FE8C  38 04 00 3F */	addi r0, r4, 0x3f
/* 81351A90 0001FE90  54 04 00 32 */	clrrwi r4, r0, 6
/* 81351A94 0001FE94  48 00 25 DD */	bl decrypt__Q23ipl12NandSDWorkerFPCvUlPv
/* 81351A98 0001FE98  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351A9C 0001FE9C  41 82 00 10 */	beq .L_81351AAC
/* 81351AA0 0001FEA0  38 00 FF FD */	li r0, -0x3
/* 81351AA4 0001FEA4  90 01 00 08 */	stw r0, 0x8(r1)
/* 81351AA8 0001FEA8  48 00 00 98 */	b .L_81351B40
.L_81351AAC:
/* 81351AAC 0001FEAC  80 DB 00 08 */	lwz r6, 0x8(r27)
/* 81351AB0 0001FEB0  7F 43 D3 78 */	mr r3, r26
/* 81351AB4 0001FEB4  7F C5 F3 78 */	mr r5, r30
/* 81351AB8 0001FEB8  38 9B 00 1C */	addi r4, r27, 0x1c
/* 81351ABC 0001FEBC  38 06 00 3F */	addi r0, r6, 0x3f
/* 81351AC0 0001FEC0  54 06 00 32 */	clrrwi r6, r0, 6
/* 81351AC4 0001FEC4  4B FF F5 39 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 81351AC8 0001FEC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351ACC 0001FECC  40 82 00 20 */	bne .L_81351AEC
/* 81351AD0 0001FED0  38 7F 1D 10 */	addi r3, r31, 0x1d10
/* 81351AD4 0001FED4  38 81 00 0C */	addi r4, r1, 0xc
/* 81351AD8 0001FED8  4C C6 31 82 */	crclr cr1eq
/* 81351ADC 0001FEDC  48 1D CB C5 */	bl OSReport
/* 81351AE0 0001FEE0  38 00 FF FD */	li r0, -0x3
/* 81351AE4 0001FEE4  90 01 00 08 */	stw r0, 0x8(r1)
/* 81351AE8 0001FEE8  48 00 00 58 */	b .L_81351B40
.L_81351AEC:
/* 81351AEC 0001FEEC  80 BB 00 08 */	lwz r5, 0x8(r27)
/* 81351AF0 0001FEF0  7F 43 D3 78 */	mr r3, r26
/* 81351AF4 0001FEF4  7F C4 F3 78 */	mr r4, r30
/* 81351AF8 0001FEF8  7F 86 E3 78 */	mr r6, r28
/* 81351AFC 0001FEFC  48 00 08 F5 */	bl uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc
/* 81351B00 0001FF00  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351B04 0001FF04  90 61 00 08 */	stw r3, 0x8(r1)
/* 81351B08 0001FF08  40 80 00 28 */	bge .L_81351B30
/* 81351B0C 0001FF0C  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81351B10 0001FF10  7C 67 1B 78 */	mr r7, r3
/* 81351B14 0001FF14  80 DB 00 04 */	lwz r6, 0x4(r27)
/* 81351B18 0001FF18  38 7F 27 C6 */	addi r3, r31, 0x27c6
/* 81351B1C 0001FF1C  4C C6 31 82 */	crclr cr1eq
/* 81351B20 0001FF20  48 1D CB 81 */	bl OSReport
/* 81351B24 0001FF24  38 00 FF FD */	li r0, -0x3
/* 81351B28 0001FF28  90 01 00 08 */	stw r0, 0x8(r1)
/* 81351B2C 0001FF2C  48 00 00 14 */	b .L_81351B40
.L_81351B30:
/* 81351B30 0001FF30  7C 64 1B 78 */	mr r4, r3
/* 81351B34 0001FF34  38 7F 28 02 */	addi r3, r31, 0x2802
/* 81351B38 0001FF38  4C C6 31 82 */	crclr cr1eq
/* 81351B3C 0001FF3C  48 1D CB 65 */	bl OSReport
.L_81351B40:
/* 81351B40 0001FF40  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351B44 0001FF44  7F C4 F3 78 */	mr r4, r30
/* 81351B48 0001FF48  3C 63 00 02 */	addis r3, r3, 0x2
/* 81351B4C 0001FF4C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351B50 0001FF50  48 20 8E B5 */	bl fn_8155AA04
/* 81351B54 0001FF54  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 81351B58 0001FF58  7F A4 EB 78 */	mr r4, r29
/* 81351B5C 0001FF5C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81351B60 0001FF60  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81351B64 0001FF64  48 20 9B 15 */	bl fn_8155B678
/* 81351B68 0001FF68  39 61 00 70 */	addi r11, r1, 0x70
/* 81351B6C 0001FF6C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 81351B70 0001FF70  48 2A 79 95 */	bl _restgpr_25
/* 81351B74 0001FF74  80 01 00 74 */	lwz r0, 0x74(r1)
/* 81351B78 0001FF78  7C 08 03 A6 */	mtlr r0
/* 81351B7C 0001FF7C  38 21 00 70 */	addi r1, r1, 0x70
/* 81351B80 0001FF80  4E 80 00 20 */	blr
.endfn get_sd_app_thumbnail__Q23ipl12NandSDWorkerFPCQ33ipl12NandSDWorker11SDAppBannerPUc

# .text:0x9798 | 0x81351B84 | size: 0x2C
# ipl::NandSDWorker::nand_app_exist(unsigned long long)
.fn nand_app_exist__Q23ipl12NandSDWorkerFUx, global
/* 81351B84 0001FF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81351B88 0001FF88  7C 08 02 A6 */	mflr r0
/* 81351B8C 0001FF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81351B90 0001FF90  48 00 00 21 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 81351B94 0001FF94  38 03 FF FE */	subi r0, r3, 0x2
/* 81351B98 0001FF98  7C 00 00 34 */	cntlzw r0, r0
/* 81351B9C 0001FF9C  54 03 D9 7E */	srwi r3, r0, 5
/* 81351BA0 0001FFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81351BA4 0001FFA4  7C 08 03 A6 */	mtlr r0
/* 81351BA8 0001FFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 81351BAC 0001FFAC  4E 80 00 20 */	blr
.endfn nand_app_exist__Q23ipl12NandSDWorkerFUx

# .text:0x97C4 | 0x81351BB0 | size: 0x388
# ipl::NandSDWorker::nand_app_exist_ex(unsigned long long)
.fn nand_app_exist_ex__Q23ipl12NandSDWorkerFUx, global
/* 81351BB0 0001FFB0  54 2B 06 FE */	clrlwi r11, r1, 27
/* 81351BB4 0001FFB4  7C 2C 0B 78 */	mr r12, r1
/* 81351BB8 0001FFB8  21 6B F7 60 */	subfic r11, r11, -0x8a0
/* 81351BBC 0001FFBC  7C 21 59 6E */	stwux r1, r1, r11
/* 81351BC0 0001FFC0  7C 08 02 A6 */	mflr r0
/* 81351BC4 0001FFC4  7D 8B 63 78 */	mr r11, r12
/* 81351BC8 0001FFC8  90 0C 00 04 */	stw r0, 0x4(r12)
/* 81351BCC 0001FFCC  48 2A 78 F1 */	bl _savegpr_26
/* 81351BD0 0001FFD0  38 80 00 00 */	li r4, 0x0
/* 81351BD4 0001FFD4  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81351BD8 0001FFD8  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81351BDC 0001FFDC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 81351BE0 0001FFE0  7C 7C 1B 78 */	mr r28, r3
/* 81351BE4 0001FFE4  38 00 FF FF */	li r0, -0x1
/* 81351BE8 0001FFE8  7C DD 33 78 */	mr r29, r6
/* 81351BEC 0001FFEC  90 81 00 24 */	stw r4, 0x24(r1)
/* 81351BF0 0001FFF0  7C BE 2B 78 */	mr r30, r5
/* 81351BF4 0001FFF4  7C C6 00 38 */	and r6, r6, r0
/* 81351BF8 0001FFF8  90 81 00 20 */	stw r4, 0x20(r1)
/* 81351BFC 0001FFFC  38 61 00 30 */	addi r3, r1, 0x30
/* 81351C00 00020000  38 9F 01 43 */	addi r4, r31, 0x143
/* 81351C04 00020004  3B 40 00 00 */	li r26, 0x0
/* 81351C08 00020008  4C C6 31 82 */	crclr cr1eq
/* 81351C0C 0002000C  48 2A EE 75 */	bl sprintf
/* 81351C10 00020010  38 61 00 30 */	addi r3, r1, 0x30
/* 81351C14 00020014  38 81 00 24 */	addi r4, r1, 0x24
/* 81351C18 00020018  38 A1 00 20 */	addi r5, r1, 0x20
/* 81351C1C 0002001C  48 00 E9 01 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 81351C20 00020020  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351C24 00020024  41 82 00 24 */	beq .L_81351C48
/* 81351C28 00020028  2C 03 FF F4 */	cmpwi r3, -0xc
/* 81351C2C 0002002C  41 82 00 1C */	beq .L_81351C48
/* 81351C30 00020030  7C 64 1B 78 */	mr r4, r3
/* 81351C34 00020034  38 7F 28 31 */	addi r3, r31, 0x2831
/* 81351C38 00020038  4C C6 31 82 */	crclr cr1eq
/* 81351C3C 0002003C  48 1D CA 65 */	bl OSReport
/* 81351C40 00020040  3B 40 00 00 */	li r26, 0x0
/* 81351C44 00020044  48 00 02 B8 */	b .L_81351EFC
.L_81351C48:
/* 81351C48 00020048  2C 03 FF F4 */	cmpwi r3, -0xc
/* 81351C4C 0002004C  41 82 00 10 */	beq .L_81351C5C
/* 81351C50 00020050  80 81 00 20 */	lwz r4, 0x20(r1)
/* 81351C54 00020054  28 04 00 02 */	cmplwi r4, 0x2
/* 81351C58 00020058  41 81 00 20 */	bgt .L_81351C78
.L_81351C5C:
/* 81351C5C 0002005C  7F A6 EB 78 */	mr r6, r29
/* 81351C60 00020060  7F C5 F3 78 */	mr r5, r30
/* 81351C64 00020064  38 7F 28 5F */	addi r3, r31, 0x285f
/* 81351C68 00020068  4C C6 31 82 */	crclr cr1eq
/* 81351C6C 0002006C  48 1D CA 35 */	bl OSReport
/* 81351C70 00020070  3B 40 00 00 */	li r26, 0x0
/* 81351C74 00020074  48 00 02 88 */	b .L_81351EFC
.L_81351C78:
/* 81351C78 00020078  7F 83 E3 78 */	mr r3, r28
/* 81351C7C 0002007C  7F A6 EB 78 */	mr r6, r29
/* 81351C80 00020080  7F C5 F3 78 */	mr r5, r30
/* 81351C84 00020084  3B 64 FF FE */	subi r27, r4, 0x2
/* 81351C88 00020088  38 E1 00 2C */	addi r7, r1, 0x2c
/* 81351C8C 0002008C  48 00 02 AD */	bl get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView
/* 81351C90 00020090  2C 03 FF FE */	cmpwi r3, -0x2
/* 81351C94 00020094  40 82 00 20 */	bne .L_81351CB4
/* 81351C98 00020098  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351C9C 0002009C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 81351CA0 000200A0  3C 63 00 02 */	addis r3, r3, 0x2
/* 81351CA4 000200A4  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351CA8 000200A8  48 20 8D 5D */	bl fn_8155AA04
/* 81351CAC 000200AC  3B 40 00 00 */	li r26, 0x0
/* 81351CB0 000200B0  48 00 02 4C */	b .L_81351EFC
.L_81351CB4:
/* 81351CB4 000200B4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 81351CB8 000200B8  38 C0 00 00 */	li r6, 0x0
/* 81351CBC 000200BC  38 60 00 00 */	li r3, 0x0
/* 81351CC0 000200C0  48 00 00 20 */	b .L_81351CE0
.L_81351CC4:
/* 81351CC4 000200C4  7C 85 1A 14 */	add r4, r5, r3
/* 81351CC8 000200C8  A0 04 00 62 */	lhz r0, 0x62(r4)
/* 81351CCC 000200CC  54 00 04 21 */	rlwinm. r0, r0, 0, 16, 16
/* 81351CD0 000200D0  40 82 00 08 */	bne .L_81351CD8
/* 81351CD4 000200D4  3B 5A 00 01 */	addi r26, r26, 0x1
.L_81351CD8:
/* 81351CD8 000200D8  38 C6 00 01 */	addi r6, r6, 0x1
/* 81351CDC 000200DC  38 63 00 10 */	addi r3, r3, 0x10
.L_81351CE0:
/* 81351CE0 000200E0  A0 05 00 5A */	lhz r0, 0x5a(r5)
/* 81351CE4 000200E4  7C 06 00 40 */	cmplw r6, r0
/* 81351CE8 000200E8  41 80 FF DC */	blt .L_81351CC4
/* 81351CEC 000200EC  7C 1B D0 40 */	cmplw r27, r26
/* 81351CF0 000200F0  40 82 00 0C */	bne .L_81351CFC
/* 81351CF4 000200F4  3B 40 00 02 */	li r26, 0x2
/* 81351CF8 000200F8  48 00 02 04 */	b .L_81351EFC
.L_81351CFC:
/* 81351CFC 000200FC  7F A6 EB 78 */	mr r6, r29
/* 81351D00 00020100  7F C5 F3 78 */	mr r5, r30
/* 81351D04 00020104  7F 67 DB 78 */	mr r7, r27
/* 81351D08 00020108  7F 48 D3 78 */	mr r8, r26
/* 81351D0C 0002010C  38 7F 28 88 */	addi r3, r31, 0x2888
/* 81351D10 00020110  4C C6 31 82 */	crclr cr1eq
/* 81351D14 00020114  48 1D C9 8D */	bl OSReport
/* 81351D18 00020118  7F A4 EB 78 */	mr r4, r29
/* 81351D1C 0002011C  7F C3 F3 78 */	mr r3, r30
/* 81351D20 00020120  38 C1 00 28 */	addi r6, r1, 0x28
/* 81351D24 00020124  38 A0 00 00 */	li r5, 0x0
/* 81351D28 00020128  48 26 C8 B1 */	bl fn_815BE5D8
/* 81351D2C 0002012C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351D30 00020130  41 82 00 1C */	beq .L_81351D4C
/* 81351D34 00020134  7C 64 1B 78 */	mr r4, r3
/* 81351D38 00020138  38 7F 28 CD */	addi r3, r31, 0x28cd
/* 81351D3C 0002013C  4C C6 31 82 */	crclr cr1eq
/* 81351D40 00020140  48 1D C9 61 */	bl OSReport
/* 81351D44 00020144  3B 40 00 00 */	li r26, 0x0
/* 81351D48 00020148  48 00 01 B4 */	b .L_81351EFC
.L_81351D4C:
/* 81351D4C 0002014C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 81351D50 00020150  2C 00 00 00 */	cmpwi r0, 0x0
/* 81351D54 00020154  40 82 00 20 */	bne .L_81351D74
/* 81351D58 00020158  7F A6 EB 78 */	mr r6, r29
/* 81351D5C 0002015C  7F C5 F3 78 */	mr r5, r30
/* 81351D60 00020160  38 7F 28 5F */	addi r3, r31, 0x285f
/* 81351D64 00020164  4C C6 31 82 */	crclr cr1eq
/* 81351D68 00020168  48 1D C9 39 */	bl OSReport
/* 81351D6C 0002016C  3B 40 00 00 */	li r26, 0x0
/* 81351D70 00020170  48 00 01 8C */	b .L_81351EFC
.L_81351D74:
/* 81351D74 00020174  7F A4 EB 78 */	mr r4, r29
/* 81351D78 00020178  7F C3 F3 78 */	mr r3, r30
/* 81351D7C 0002017C  38 A1 00 80 */	addi r5, r1, 0x80
/* 81351D80 00020180  38 C1 00 28 */	addi r6, r1, 0x28
/* 81351D84 00020184  48 26 C8 55 */	bl fn_815BE5D8
/* 81351D88 00020188  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351D8C 0002018C  40 82 01 5C */	bne .L_81351EE8
/* 81351D90 00020190  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 81351D94 00020194  39 21 00 80 */	addi r9, r1, 0x80
/* 81351D98 00020198  80 01 00 28 */	lwz r0, 0x28(r1)
/* 81351D9C 0002019C  39 40 00 00 */	li r10, 0x0
/* 81351DA0 000201A0  39 60 00 00 */	li r11, 0x0
/* 81351DA4 000201A4  38 60 00 00 */	li r3, 0x0
/* 81351DA8 000201A8  48 00 00 54 */	b .L_81351DFC
.L_81351DAC:
/* 81351DAC 000201AC  7D 09 18 2E */	lwzx r8, r9, r3
/* 81351DB0 000201B0  39 80 00 00 */	li r12, 0x0
/* 81351DB4 000201B4  38 80 00 00 */	li r4, 0x0
/* 81351DB8 000201B8  48 00 00 30 */	b .L_81351DE8
.L_81351DBC:
/* 81351DBC 000201BC  7C C7 22 14 */	add r6, r7, r4
/* 81351DC0 000201C0  80 A6 00 5C */	lwz r5, 0x5c(r6)
/* 81351DC4 000201C4  7C 08 28 40 */	cmplw r8, r5
/* 81351DC8 000201C8  40 82 00 18 */	bne .L_81351DE0
/* 81351DCC 000201CC  A0 A6 00 62 */	lhz r5, 0x62(r6)
/* 81351DD0 000201D0  54 A5 04 21 */	rlwinm. r5, r5, 0, 16, 16
/* 81351DD4 000201D4  40 82 00 0C */	bne .L_81351DE0
/* 81351DD8 000201D8  39 40 00 01 */	li r10, 0x1
/* 81351DDC 000201DC  48 00 00 18 */	b .L_81351DF4
.L_81351DE0:
/* 81351DE0 000201E0  39 8C 00 01 */	addi r12, r12, 0x1
/* 81351DE4 000201E4  38 84 00 10 */	addi r4, r4, 0x10
.L_81351DE8:
/* 81351DE8 000201E8  A0 A7 00 5A */	lhz r5, 0x5a(r7)
/* 81351DEC 000201EC  7C 0C 28 40 */	cmplw r12, r5
/* 81351DF0 000201F0  41 80 FF CC */	blt .L_81351DBC
.L_81351DF4:
/* 81351DF4 000201F4  39 6B 00 01 */	addi r11, r11, 0x1
/* 81351DF8 000201F8  38 63 00 04 */	addi r3, r3, 0x4
.L_81351DFC:
/* 81351DFC 000201FC  7C 0B 00 40 */	cmplw r11, r0
/* 81351E00 00020200  40 80 00 0C */	bge .L_81351E0C
/* 81351E04 00020204  2C 0A 00 00 */	cmpwi r10, 0x0
/* 81351E08 00020208  41 82 FF A4 */	beq .L_81351DAC
.L_81351E0C:
/* 81351E0C 0002020C  2C 0A 00 00 */	cmpwi r10, 0x0
/* 81351E10 00020210  40 82 00 20 */	bne .L_81351E30
/* 81351E14 00020214  7F A6 EB 78 */	mr r6, r29
/* 81351E18 00020218  7F C5 F3 78 */	mr r5, r30
/* 81351E1C 0002021C  38 7F 29 03 */	addi r3, r31, 0x2903
/* 81351E20 00020220  4C C6 31 82 */	crclr cr1eq
/* 81351E24 00020224  48 1D C8 7D */	bl OSReport
/* 81351E28 00020228  3B 40 00 00 */	li r26, 0x0
/* 81351E2C 0002022C  48 00 00 D0 */	b .L_81351EFC
.L_81351E30:
/* 81351E30 00020230  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 81351E34 00020234  39 21 00 80 */	addi r9, r1, 0x80
/* 81351E38 00020238  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 81351E3C 0002023C  39 60 00 00 */	li r11, 0x0
/* 81351E40 00020240  38 60 00 00 */	li r3, 0x0
/* 81351E44 00020244  48 00 00 7C */	b .L_81351EC0
.L_81351E48:
/* 81351E48 00020248  7C C7 1A 14 */	add r6, r7, r3
/* 81351E4C 0002024C  39 40 00 00 */	li r10, 0x0
/* 81351E50 00020250  38 80 00 00 */	li r4, 0x0
/* 81351E54 00020254  7C A9 03 A6 */	mtctr r5
/* 81351E58 00020258  28 05 00 00 */	cmplwi r5, 0x0
/* 81351E5C 0002025C  40 81 00 20 */	ble .L_81351E7C
.L_81351E60:
/* 81351E60 00020260  7D 09 20 2E */	lwzx r8, r9, r4
/* 81351E64 00020264  80 06 00 5C */	lwz r0, 0x5c(r6)
/* 81351E68 00020268  7C 08 00 40 */	cmplw r8, r0
/* 81351E6C 0002026C  41 82 00 10 */	beq .L_81351E7C
/* 81351E70 00020270  39 4A 00 01 */	addi r10, r10, 0x1
/* 81351E74 00020274  38 84 00 04 */	addi r4, r4, 0x4
/* 81351E78 00020278  42 00 FF E8 */	bdnz .L_81351E60
.L_81351E7C:
/* 81351E7C 0002027C  7C 0A 28 40 */	cmplw r10, r5
/* 81351E80 00020280  40 82 00 38 */	bne .L_81351EB8
/* 81351E84 00020284  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81351E88 00020288  7C 80 1A 14 */	add r4, r0, r3
/* 81351E8C 0002028C  A0 04 00 62 */	lhz r0, 0x62(r4)
/* 81351E90 00020290  54 00 04 63 */	rlwinm. r0, r0, 0, 17, 17
/* 81351E94 00020294  40 82 00 24 */	bne .L_81351EB8
/* 81351E98 00020298  A0 84 00 60 */	lhz r4, 0x60(r4)
/* 81351E9C 0002029C  7F A6 EB 78 */	mr r6, r29
/* 81351EA0 000202A0  7F C5 F3 78 */	mr r5, r30
/* 81351EA4 000202A4  38 7F 29 30 */	addi r3, r31, 0x2930
/* 81351EA8 000202A8  4C C6 31 82 */	crclr cr1eq
/* 81351EAC 000202AC  48 1D C7 F5 */	bl OSReport
/* 81351EB0 000202B0  3B 40 00 01 */	li r26, 0x1
/* 81351EB4 000202B4  48 00 00 48 */	b .L_81351EFC
.L_81351EB8:
/* 81351EB8 000202B8  39 6B 00 01 */	addi r11, r11, 0x1
/* 81351EBC 000202BC  38 63 00 10 */	addi r3, r3, 0x10
.L_81351EC0:
/* 81351EC0 000202C0  A0 07 00 5A */	lhz r0, 0x5a(r7)
/* 81351EC4 000202C4  7C 0B 00 40 */	cmplw r11, r0
/* 81351EC8 000202C8  41 80 FF 80 */	blt .L_81351E48
/* 81351ECC 000202CC  7F A6 EB 78 */	mr r6, r29
/* 81351ED0 000202D0  7F C5 F3 78 */	mr r5, r30
/* 81351ED4 000202D4  38 7F 29 79 */	addi r3, r31, 0x2979
/* 81351ED8 000202D8  4C C6 31 82 */	crclr cr1eq
/* 81351EDC 000202DC  48 1D C7 C5 */	bl OSReport
/* 81351EE0 000202E0  3B 40 00 02 */	li r26, 0x2
/* 81351EE4 000202E4  48 00 00 18 */	b .L_81351EFC
.L_81351EE8:
/* 81351EE8 000202E8  7C 64 1B 78 */	mr r4, r3
/* 81351EEC 000202EC  38 7F 28 CD */	addi r3, r31, 0x28cd
/* 81351EF0 000202F0  4C C6 31 82 */	crclr cr1eq
/* 81351EF4 000202F4  48 1D C7 AD */	bl OSReport
/* 81351EF8 000202F8  3B 40 00 00 */	li r26, 0x0
.L_81351EFC:
/* 81351EFC 000202FC  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 81351F00 00020300  2C 04 00 00 */	cmpwi r4, 0x0
/* 81351F04 00020304  41 82 00 14 */	beq .L_81351F18
/* 81351F08 00020308  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81351F0C 0002030C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81351F10 00020310  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81351F14 00020314  48 20 8A F1 */	bl fn_8155AA04
.L_81351F18:
/* 81351F18 00020318  7F 43 D3 78 */	mr r3, r26
/* 81351F1C 0002031C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 81351F20 00020320  7D 4B 53 78 */	mr r11, r10
/* 81351F24 00020324  48 2A 75 E5 */	bl _restgpr_26
/* 81351F28 00020328  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81351F2C 0002032C  7C 08 03 A6 */	mtlr r0
/* 81351F30 00020330  7D 41 53 78 */	mr r1, r10
/* 81351F34 00020334  4E 80 00 20 */	blr
.endfn nand_app_exist_ex__Q23ipl12NandSDWorkerFUx

# .text:0x9B4C | 0x81351F38 | size: 0xE4
# ipl::NandSDWorker::get_nand_app_tmdview(unsigned long long, ESTmdView*)
.fn get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView, global
/* 81351F38 00020338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81351F3C 0002033C  7C 08 02 A6 */	mflr r0
/* 81351F40 00020340  90 01 00 24 */	stw r0, 0x24(r1)
/* 81351F44 00020344  39 61 00 20 */	addi r11, r1, 0x20
/* 81351F48 00020348  48 2A 75 7D */	bl _savegpr_28
/* 81351F4C 0002034C  7C DD 33 78 */	mr r29, r6
/* 81351F50 00020350  7C BE 2B 78 */	mr r30, r5
/* 81351F54 00020354  7C 7C 1B 78 */	mr r28, r3
/* 81351F58 00020358  7C FF 3B 78 */	mr r31, r7
/* 81351F5C 0002035C  7F A4 EB 78 */	mr r4, r29
/* 81351F60 00020360  7F C3 F3 78 */	mr r3, r30
/* 81351F64 00020364  38 C1 00 08 */	addi r6, r1, 0x8
/* 81351F68 00020368  38 A0 00 00 */	li r5, 0x0
/* 81351F6C 0002036C  48 26 CB C9 */	bl fn_815BEB34
/* 81351F70 00020370  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351F74 00020374  7C 67 1B 78 */	mr r7, r3
/* 81351F78 00020378  41 82 00 24 */	beq .L_81351F9C
/* 81351F7C 0002037C  3C 60 81 64 */	lis r3, lbl_8163844C@ha
/* 81351F80 00020380  7F A6 EB 78 */	mr r6, r29
/* 81351F84 00020384  7F C5 F3 78 */	mr r5, r30
/* 81351F88 00020388  38 63 84 4C */	addi r3, r3, lbl_8163844C@l
/* 81351F8C 0002038C  4C C6 31 82 */	crclr cr1eq
/* 81351F90 00020390  48 1D C7 11 */	bl OSReport
/* 81351F94 00020394  38 60 FF FE */	li r3, -0x2
/* 81351F98 00020398  48 00 00 6C */	b .L_81352004
.L_81351F9C:
/* 81351F9C 0002039C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81351FA0 000203A0  38 A0 00 20 */	li r5, 0x20
/* 81351FA4 000203A4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 81351FA8 000203A8  3C 84 00 02 */	addis r4, r4, 0x2
/* 81351FAC 000203AC  38 03 00 1F */	addi r0, r3, 0x1f
/* 81351FB0 000203B0  80 64 E6 90 */	lwz r3, -0x1970(r4)
/* 81351FB4 000203B4  54 04 00 34 */	clrrwi r4, r0, 5
/* 81351FB8 000203B8  48 20 87 9D */	bl fn_8155A754
/* 81351FBC 000203BC  90 7F 00 00 */	stw r3, 0x0(r31)
/* 81351FC0 000203C0  7C 65 1B 78 */	mr r5, r3
/* 81351FC4 000203C4  7F A4 EB 78 */	mr r4, r29
/* 81351FC8 000203C8  7F C3 F3 78 */	mr r3, r30
/* 81351FCC 000203CC  38 C1 00 08 */	addi r6, r1, 0x8
/* 81351FD0 000203D0  48 26 CB 65 */	bl fn_815BEB34
/* 81351FD4 000203D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 81351FD8 000203D8  7C 67 1B 78 */	mr r7, r3
/* 81351FDC 000203DC  41 82 00 24 */	beq .L_81352000
/* 81351FE0 000203E0  3C 60 81 64 */	lis r3, lbl_8163844C@ha
/* 81351FE4 000203E4  7F A6 EB 78 */	mr r6, r29
/* 81351FE8 000203E8  7F C5 F3 78 */	mr r5, r30
/* 81351FEC 000203EC  38 63 84 4C */	addi r3, r3, lbl_8163844C@l
/* 81351FF0 000203F0  4C C6 31 82 */	crclr cr1eq
/* 81351FF4 000203F4  48 1D C6 AD */	bl OSReport
/* 81351FF8 000203F8  38 60 FF FE */	li r3, -0x2
/* 81351FFC 000203FC  48 00 00 08 */	b .L_81352004
.L_81352000:
/* 81352000 00020400  38 60 00 00 */	li r3, 0x0
.L_81352004:
/* 81352004 00020404  39 61 00 20 */	addi r11, r1, 0x20
/* 81352008 00020408  48 2A 75 09 */	bl _restgpr_28
/* 8135200C 0002040C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352010 00020410  7C 08 03 A6 */	mtlr r0
/* 81352014 00020414  38 21 00 20 */	addi r1, r1, 0x20
/* 81352018 00020418  4E 80 00 20 */	blr
.endfn get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView

# .text:0x9C30 | 0x8135201C | size: 0x110
# ipl::NandSDWorker::content_exist(ESTmdView*, unsigned long)
.fn content_exist__Q23ipl12NandSDWorkerFP9ESTmdViewUl, global
/* 8135201C 0002041C  54 2B 06 FE */	clrlwi r11, r1, 27
/* 81352020 00020420  7C 2C 0B 78 */	mr r12, r1
/* 81352024 00020424  21 6B F7 A0 */	subfic r11, r11, -0x860
/* 81352028 00020428  7C 21 59 6E */	stwux r1, r1, r11
/* 8135202C 0002042C  7C 08 02 A6 */	mflr r0
/* 81352030 00020430  7D 8B 63 78 */	mr r11, r12
/* 81352034 00020434  90 0C 00 04 */	stw r0, 0x4(r12)
/* 81352038 00020438  48 2A 74 91 */	bl _savegpr_29
/* 8135203C 0002043C  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 81352040 00020440  38 E0 00 00 */	li r7, 0x0
/* 81352044 00020444  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 81352048 00020448  38 A0 00 00 */	li r5, 0x0
/* 8135204C 0002044C  48 00 00 24 */	b .L_81352070
.L_81352050:
/* 81352050 00020450  7C C3 2A 14 */	add r6, r3, r5
/* 81352054 00020454  A0 06 00 60 */	lhz r0, 0x60(r6)
/* 81352058 00020458  7C 04 00 40 */	cmplw r4, r0
/* 8135205C 0002045C  40 82 00 0C */	bne .L_81352068
/* 81352060 00020460  83 A6 00 5C */	lwz r29, 0x5c(r6)
/* 81352064 00020464  48 00 00 18 */	b .L_8135207C
.L_81352068:
/* 81352068 00020468  38 E7 00 01 */	addi r7, r7, 0x1
/* 8135206C 0002046C  38 A5 00 10 */	addi r5, r5, 0x10
.L_81352070:
/* 81352070 00020470  A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 81352074 00020474  7C 07 00 40 */	cmplw r7, r0
/* 81352078 00020478  41 80 FF D8 */	blt .L_81352050
.L_8135207C:
/* 8135207C 0002047C  A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 81352080 00020480  7C 07 00 40 */	cmplw r7, r0
/* 81352084 00020484  40 82 00 0C */	bne .L_81352090
/* 81352088 00020488  38 60 00 00 */	li r3, 0x0
/* 8135208C 0002048C  48 00 00 84 */	b .L_81352110
.L_81352090:
/* 81352090 00020490  7F C4 F3 78 */	mr r4, r30
/* 81352094 00020494  7F E3 FB 78 */	mr r3, r31
/* 81352098 00020498  38 C1 00 20 */	addi r6, r1, 0x20
/* 8135209C 0002049C  38 A0 00 00 */	li r5, 0x0
/* 813520A0 000204A0  48 26 C5 39 */	bl fn_815BE5D8
/* 813520A4 000204A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813520A8 000204A8  41 82 00 0C */	beq .L_813520B4
/* 813520AC 000204AC  38 60 00 00 */	li r3, 0x0
/* 813520B0 000204B0  48 00 00 60 */	b .L_81352110
.L_813520B4:
/* 813520B4 000204B4  7F C4 F3 78 */	mr r4, r30
/* 813520B8 000204B8  7F E3 FB 78 */	mr r3, r31
/* 813520BC 000204BC  38 A1 00 40 */	addi r5, r1, 0x40
/* 813520C0 000204C0  38 C1 00 20 */	addi r6, r1, 0x20
/* 813520C4 000204C4  48 26 C5 15 */	bl fn_815BE5D8
/* 813520C8 000204C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813520CC 000204CC  41 82 00 0C */	beq .L_813520D8
/* 813520D0 000204D0  38 60 00 00 */	li r3, 0x0
/* 813520D4 000204D4  48 00 00 3C */	b .L_81352110
.L_813520D8:
/* 813520D8 000204D8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 813520DC 000204DC  38 81 00 40 */	addi r4, r1, 0x40
/* 813520E0 000204E0  38 60 00 00 */	li r3, 0x0
/* 813520E4 000204E4  7C 09 03 A6 */	mtctr r0
/* 813520E8 000204E8  28 00 00 00 */	cmplwi r0, 0x0
/* 813520EC 000204EC  40 81 00 20 */	ble .L_8135210C
.L_813520F0:
/* 813520F0 000204F0  7C 04 18 2E */	lwzx r0, r4, r3
/* 813520F4 000204F4  7C 1D 00 40 */	cmplw r29, r0
/* 813520F8 000204F8  40 82 00 0C */	bne .L_81352104
/* 813520FC 000204FC  38 60 00 01 */	li r3, 0x1
/* 81352100 00020500  48 00 00 10 */	b .L_81352110
.L_81352104:
/* 81352104 00020504  38 63 00 04 */	addi r3, r3, 0x4
/* 81352108 00020508  42 00 FF E8 */	bdnz .L_813520F0
.L_8135210C:
/* 8135210C 0002050C  38 60 00 00 */	li r3, 0x0
.L_81352110:
/* 81352110 00020510  81 41 00 00 */	lwz r10, 0x0(r1)
/* 81352114 00020514  7D 4B 53 78 */	mr r11, r10
/* 81352118 00020518  48 2A 73 FD */	bl _restgpr_29
/* 8135211C 0002051C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81352120 00020520  7C 08 03 A6 */	mtlr r0
/* 81352124 00020524  7D 41 53 78 */	mr r1, r10
/* 81352128 00020528  4E 80 00 20 */	blr
.endfn content_exist__Q23ipl12NandSDWorkerFP9ESTmdViewUl

# .text:0x9D40 | 0x8135212C | size: 0x104
# ipl::NandSDWorker::do_list_nand_app()
.fn do_list_nand_app__Q23ipl12NandSDWorkerFv, global
/* 8135212C 0002052C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81352130 00020530  7C 08 02 A6 */	mflr r0
/* 81352134 00020534  90 01 00 34 */	stw r0, 0x34(r1)
/* 81352138 00020538  39 61 00 30 */	addi r11, r1, 0x30
/* 8135213C 0002053C  48 2A 73 7D */	bl _savegpr_25
/* 81352140 00020540  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81352144 00020544  7C 7F 1B 78 */	mr r31, r3
/* 81352148 00020548  3B A0 00 00 */	li r29, 0x0
/* 8135214C 0002054C  38 81 00 08 */	addi r4, r1, 0x8
/* 81352150 00020550  3C A5 00 04 */	addis r5, r5, 0x4
/* 81352154 00020554  38 60 00 00 */	li r3, 0x0
/* 81352158 00020558  83 45 EA 38 */	lwz r26, -0x15c8(r5)
/* 8135215C 0002055C  93 A1 00 08 */	stw r29, 0x8(r1)
/* 81352160 00020560  48 26 C3 85 */	bl fn_815BE4E4
/* 81352164 00020564  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81352168 00020568  38 A0 00 20 */	li r5, 0x20
/* 8135216C 0002056C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81352170 00020570  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352174 00020574  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81352178 00020578  54 04 18 38 */	slwi r4, r0, 3
/* 8135217C 0002057C  48 20 85 D9 */	bl fn_8155A754
/* 81352180 00020580  7C 7B 1B 78 */	mr r27, r3
/* 81352184 00020584  38 81 00 08 */	addi r4, r1, 0x8
/* 81352188 00020588  48 26 C3 5D */	bl fn_815BE4E4
/* 8135218C 0002058C  3B C0 00 00 */	li r30, 0x0
/* 81352190 00020590  3B 20 00 00 */	li r25, 0x0
/* 81352194 00020594  48 00 00 54 */	b .L_813521E8
.L_81352198:
/* 81352198 00020598  7F 9B EA 14 */	add r28, r27, r29
/* 8135219C 0002059C  7C 7B E8 2E */	lwzx r3, r27, r29
/* 813521A0 000205A0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 813521A4 000205A4  4B FF 70 F1 */	bl is_user_nand_app__Q23ipl12NandSDWorkerFUx
/* 813521A8 000205A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813521AC 000205AC  41 82 00 34 */	beq .L_813521E0
/* 813521B0 000205B0  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813521B4 000205B4  7F E3 FB 78 */	mr r3, r31
/* 813521B8 000205B8  80 DC 00 04 */	lwz r6, 0x4(r28)
/* 813521BC 000205BC  4B FF F9 C9 */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 813521C0 000205C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813521C4 000205C4  41 82 00 1C */	beq .L_813521E0
/* 813521C8 000205C8  80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813521CC 000205CC  7C 7A F2 14 */	add r3, r26, r30
/* 813521D0 000205D0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 813521D4 000205D4  90 83 00 04 */	stw r4, 0x4(r3)
/* 813521D8 000205D8  7C 1A F1 2E */	stwx r0, r26, r30
/* 813521DC 000205DC  3B DE 00 08 */	addi r30, r30, 0x8
.L_813521E0:
/* 813521E0 000205E0  3B 39 00 01 */	addi r25, r25, 0x1
/* 813521E4 000205E4  3B BD 00 08 */	addi r29, r29, 0x8
.L_813521E8:
/* 813521E8 000205E8  80 01 00 08 */	lwz r0, 0x8(r1)
/* 813521EC 000205EC  7C 19 00 40 */	cmplw r25, r0
/* 813521F0 000205F0  41 80 FF A8 */	blt .L_81352198
/* 813521F4 000205F4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813521F8 000205F8  7F 64 DB 78 */	mr r4, r27
/* 813521FC 000205FC  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352200 00020600  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81352204 00020604  48 20 88 01 */	bl fn_8155AA04
/* 81352208 00020608  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8135220C 0002060C  38 00 00 00 */	li r0, 0x0
/* 81352210 00020610  39 61 00 30 */	addi r11, r1, 0x30
/* 81352214 00020614  3C 63 00 04 */	addis r3, r3, 0x4
/* 81352218 00020618  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 8135221C 0002061C  48 2A 72 E9 */	bl _restgpr_25
/* 81352220 00020620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81352224 00020624  7C 08 03 A6 */	mtlr r0
/* 81352228 00020628  38 21 00 30 */	addi r1, r1, 0x30
/* 8135222C 0002062C  4E 80 00 20 */	blr
.endfn do_list_nand_app__Q23ipl12NandSDWorkerFv

# .text:0x9E44 | 0x81352230 | size: 0x1C0
# ipl::NandSDWorker::get_nand_app_thumbnail(unsigned long long, unsigned char*, ipl::channel::SChanMgrMetaHeader*)
.fn get_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUcPQ33ipl7channel18SChanMgrMetaHeader, global
/* 81352230 00020630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81352234 00020634  7C 08 02 A6 */	mflr r0
/* 81352238 00020638  90 01 00 34 */	stw r0, 0x34(r1)
/* 8135223C 0002063C  39 61 00 30 */	addi r11, r1, 0x30
/* 81352240 00020640  48 2A 72 71 */	bl _savegpr_23
/* 81352244 00020644  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81352248 00020648  3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 8135224C 0002064C  7C 77 1B 78 */	mr r23, r3
/* 81352250 00020650  7C B9 2B 78 */	mr r25, r5
/* 81352254 00020654  3C 84 00 02 */	addis r4, r4, 0x2
/* 81352258 00020658  7C D8 33 78 */	mr r24, r6
/* 8135225C 0002065C  7C FA 3B 78 */	mr r26, r7
/* 81352260 00020660  7D 1B 43 78 */	mr r27, r8
/* 81352264 00020664  3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 81352268 00020668  38 84 E6 78 */	subi r4, r4, 0x1988
/* 8135226C 0002066C  48 00 0B 8D */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81352270 00020670  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352274 00020674  7C 7F 1B 78 */	mr r31, r3
/* 81352278 00020678  41 82 00 10 */	beq .L_81352288
/* 8135227C 0002067C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 81352280 00020680  2C 05 FF FF */	cmpwi r5, -0x1
/* 81352284 00020684  40 82 01 24 */	bne .L_813523A8
.L_81352288:
/* 81352288 00020688  80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8135228C 0002068C  3C 60 00 01 */	lis r3, 0x1
/* 81352290 00020690  38 83 CE 40 */	subi r4, r3, 0x31c0
/* 81352294 00020694  38 A0 00 20 */	li r5, 0x20
/* 81352298 00020698  3C 66 00 02 */	addis r3, r6, 0x2
/* 8135229C 0002069C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813522A0 000206A0  48 20 84 B5 */	bl fn_8155A754
/* 813522A4 000206A4  7C 7C 1B 78 */	mr r28, r3
/* 813522A8 000206A8  7E E3 BB 78 */	mr r3, r23
/* 813522AC 000206AC  7F 06 C3 78 */	mr r6, r24
/* 813522B0 000206B0  7F 25 CB 78 */	mr r5, r25
/* 813522B4 000206B4  7F 87 E3 78 */	mr r7, r28
/* 813522B8 000206B8  4B FF E3 B5 */	bl get_app_banner_from_meta__Q23ipl12NandSDWorkerFUxPQ33ipl12NandSDWorker11SDAppBanner
/* 813522BC 000206BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813522C0 000206C0  7C 7D 1B 78 */	mr r29, r3
/* 813522C4 000206C4  40 82 00 CC */	bne .L_81352390
/* 813522C8 000206C8  7F 06 C3 78 */	mr r6, r24
/* 813522CC 000206CC  7F 25 CB 78 */	mr r5, r25
/* 813522D0 000206D0  38 7E 29 F7 */	addi r3, r30, 0x29f7
/* 813522D4 000206D4  4C C6 31 82 */	crclr cr1eq
/* 813522D8 000206D8  48 1D C3 C9 */	bl OSReport
/* 813522DC 000206DC  80 BC 00 08 */	lwz r5, 0x8(r28)
/* 813522E0 000206E0  7E E3 BB 78 */	mr r3, r23
/* 813522E4 000206E4  7F 46 D3 78 */	mr r6, r26
/* 813522E8 000206E8  38 9C 06 40 */	addi r4, r28, 0x640
/* 813522EC 000206EC  48 00 01 05 */	bl uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc
/* 813522F0 000206F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813522F4 000206F4  7C 7D 1B 78 */	mr r29, r3
/* 813522F8 000206F8  40 80 00 24 */	bge .L_8135231C
/* 813522FC 000206FC  7F 06 C3 78 */	mr r6, r24
/* 81352300 00020700  7F 25 CB 78 */	mr r5, r25
/* 81352304 00020704  7F A7 EB 78 */	mr r7, r29
/* 81352308 00020708  38 7E 27 C6 */	addi r3, r30, 0x27c6
/* 8135230C 0002070C  4C C6 31 82 */	crclr cr1eq
/* 81352310 00020710  48 1D C3 91 */	bl OSReport
/* 81352314 00020714  3B A0 FF FD */	li r29, -0x3
/* 81352318 00020718  48 00 00 78 */	b .L_81352390
.L_8135231C:
/* 8135231C 0002071C  7F A4 EB 78 */	mr r4, r29
/* 81352320 00020720  38 7E 28 02 */	addi r3, r30, 0x2802
/* 81352324 00020724  4C C6 31 82 */	crclr cr1eq
/* 81352328 00020728  48 1D C3 79 */	bl OSReport
/* 8135232C 0002072C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 81352330 00020730  41 82 00 14 */	beq .L_81352344
/* 81352334 00020734  7F 63 DB 78 */	mr r3, r27
/* 81352338 00020738  38 9C 00 40 */	addi r4, r28, 0x40
/* 8135233C 0002073C  38 A0 06 00 */	li r5, 0x600
/* 81352340 00020740  4B FD DE F1 */	bl memcpy
.L_81352344:
/* 81352344 00020744  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81352348 00020748  41 82 00 1C */	beq .L_81352364
/* 8135234C 0002074C  80 BC 00 08 */	lwz r5, 0x8(r28)
/* 81352350 00020750  7F 44 D3 78 */	mr r4, r26
/* 81352354 00020754  38 7F 00 18 */	addi r3, r31, 0x18
/* 81352358 00020758  4B FD DE D9 */	bl memcpy
/* 8135235C 0002075C  93 BF 00 0C */	stw r29, 0xc(r31)
/* 81352360 00020760  48 00 00 30 */	b .L_81352390
.L_81352364:
/* 81352364 00020764  80 97 00 00 */	lwz r4, 0x0(r23)
/* 81352368 00020768  7E E3 BB 78 */	mr r3, r23
/* 8135236C 0002076C  7F 06 C3 78 */	mr r6, r24
/* 81352370 00020770  7F 25 CB 78 */	mr r5, r25
/* 81352374 00020774  3C 84 00 02 */	addis r4, r4, 0x2
/* 81352378 00020778  7F 47 D3 78 */	mr r7, r26
/* 8135237C 0002077C  7F A8 EB 78 */	mr r8, r29
/* 81352380 00020780  39 3C 00 40 */	addi r9, r28, 0x40
/* 81352384 00020784  39 40 FF FF */	li r10, -0x1
/* 81352388 00020788  38 84 E6 78 */	subi r4, r4, 0x1988
/* 8135238C 0002078C  48 00 09 7D */	bl add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl
.L_81352390:
/* 81352390 00020790  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81352394 00020794  7F 84 E3 78 */	mr r4, r28
/* 81352398 00020798  3C 63 00 02 */	addis r3, r3, 0x2
/* 8135239C 0002079C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813523A0 000207A0  48 20 86 65 */	bl fn_8155AA04
/* 813523A4 000207A4  48 00 00 30 */	b .L_813523D4
.L_813523A8:
/* 813523A8 000207A8  7F 43 D3 78 */	mr r3, r26
/* 813523AC 000207AC  38 9F 00 18 */	addi r4, r31, 0x18
/* 813523B0 000207B0  4B FD DE 81 */	bl memcpy
/* 813523B4 000207B4  2C 1B 00 00 */	cmpwi r27, 0x0
/* 813523B8 000207B8  41 82 00 18 */	beq .L_813523D0
/* 813523BC 000207BC  3C 9F 00 02 */	addis r4, r31, 0x2
/* 813523C0 000207C0  7F 63 DB 78 */	mr r3, r27
/* 813523C4 000207C4  38 A0 06 00 */	li r5, 0x600
/* 813523C8 000207C8  38 84 90 18 */	subi r4, r4, 0x6fe8
/* 813523CC 000207CC  4B FD DE 65 */	bl memcpy
.L_813523D0:
/* 813523D0 000207D0  83 BF 00 0C */	lwz r29, 0xc(r31)
.L_813523D4:
/* 813523D4 000207D4  39 61 00 30 */	addi r11, r1, 0x30
/* 813523D8 000207D8  7F A3 EB 78 */	mr r3, r29
/* 813523DC 000207DC  48 2A 71 21 */	bl _restgpr_23
/* 813523E0 000207E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 813523E4 000207E4  7C 08 03 A6 */	mtlr r0
/* 813523E8 000207E8  38 21 00 30 */	addi r1, r1, 0x30
/* 813523EC 000207EC  4E 80 00 20 */	blr
.endfn get_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUcPQ33ipl7channel18SChanMgrMetaHeader

# .text:0xA004 | 0x813523F0 | size: 0x168
# ipl::NandSDWorker::uncompress_app_thumbnail(const unsigned char*, unsigned long, unsigned char*)
.fn uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc, global
/* 813523F0 000207F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813523F4 000207F4  7C 08 02 A6 */	mflr r0
/* 813523F8 000207F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 813523FC 000207FC  39 61 00 40 */	addi r11, r1, 0x40
/* 81352400 00020800  48 2A 70 B5 */	bl _savegpr_24
/* 81352404 00020804  88 04 00 00 */	lbz r0, 0x0(r4)
/* 81352408 00020808  7C 78 1B 78 */	mr r24, r3
/* 8135240C 0002080C  7C 99 23 78 */	mr r25, r4
/* 81352410 00020810  7C BE 2B 78 */	mr r30, r5
/* 81352414 00020814  2C 00 00 49 */	cmpwi r0, 0x49
/* 81352418 00020818  7C DA 33 78 */	mr r26, r6
/* 8135241C 0002081C  3B A0 00 00 */	li r29, 0x0
/* 81352420 00020820  3B 80 00 00 */	li r28, 0x0
/* 81352424 00020824  3B 60 00 00 */	li r27, 0x0
/* 81352428 00020828  40 82 00 44 */	bne .L_8135246C
/* 8135242C 0002082C  88 04 00 01 */	lbz r0, 0x1(r4)
/* 81352430 00020830  2C 00 00 4D */	cmpwi r0, 0x4d
/* 81352434 00020834  40 82 00 38 */	bne .L_8135246C
/* 81352438 00020838  88 04 00 02 */	lbz r0, 0x2(r4)
/* 8135243C 0002083C  2C 00 00 44 */	cmpwi r0, 0x44
/* 81352440 00020840  40 82 00 2C */	bne .L_8135246C
/* 81352444 00020844  88 04 00 03 */	lbz r0, 0x3(r4)
/* 81352448 00020848  2C 00 00 35 */	cmpwi r0, 0x35
/* 8135244C 0002084C  40 82 00 20 */	bne .L_8135246C
/* 81352450 00020850  83 84 00 04 */	lwz r28, 0x4(r4)
/* 81352454 00020854  38 61 00 08 */	addi r3, r1, 0x8
/* 81352458 00020858  3B A0 00 01 */	li r29, 0x1
/* 8135245C 0002085C  38 A0 00 10 */	li r5, 0x10
/* 81352460 00020860  38 84 00 10 */	addi r4, r4, 0x10
/* 81352464 00020864  4B FD DD CD */	bl memcpy
/* 81352468 00020868  3B 60 00 20 */	li r27, 0x20
.L_8135246C:
/* 8135246C 0002086C  7F F9 DA 14 */	add r31, r25, r27
/* 81352470 00020870  7F E3 FB 78 */	mr r3, r31
/* 81352474 00020874  48 00 01 B9 */	bl is_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352478 00020878  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135247C 0002087C  41 82 00 84 */	beq .L_81352500
/* 81352480 00020880  7F E3 FB 78 */	mr r3, r31
/* 81352484 00020884  48 00 02 19 */	bl get_decode_size__Q23ipl12NandSDWorkerFPCUc
/* 81352488 00020888  3C 80 00 02 */	lis r4, 0x2
/* 8135248C 0002088C  7C 7E 1B 78 */	mr r30, r3
/* 81352490 00020890  38 04 90 00 */	subi r0, r4, 0x7000
/* 81352494 00020894  7C 03 00 00 */	cmpw r3, r0
/* 81352498 00020898  40 81 00 0C */	ble .L_813524A4
/* 8135249C 0002089C  38 60 FF FE */	li r3, -0x2
/* 813524A0 000208A0  48 00 00 A0 */	b .L_81352540
.L_813524A4:
/* 813524A4 000208A4  7F E3 FB 78 */	mr r3, r31
/* 813524A8 000208A8  48 00 01 4D */	bl is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc
/* 813524AC 000208AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813524B0 000208B0  41 82 00 18 */	beq .L_813524C8
/* 813524B4 000208B4  7F E3 FB 78 */	mr r3, r31
/* 813524B8 000208B8  7F 44 D3 78 */	mr r4, r26
/* 813524BC 000208BC  38 63 00 04 */	addi r3, r3, 0x4
/* 813524C0 000208C0  48 20 9D ED */	bl fn_8155C2AC
/* 813524C4 000208C4  48 00 00 10 */	b .L_813524D4
.L_813524C8:
/* 813524C8 000208C8  7F 43 D3 78 */	mr r3, r26
/* 813524CC 000208CC  7F E4 FB 78 */	mr r4, r31
/* 813524D0 000208D0  4B FD FC 51 */	bl Rvl_decode
.L_813524D4:
/* 813524D4 000208D4  2C 1D 00 00 */	cmpwi r29, 0x0
/* 813524D8 000208D8  41 82 00 64 */	beq .L_8135253C
/* 813524DC 000208DC  7F 03 C3 78 */	mr r3, r24
/* 813524E0 000208E0  7F E5 FB 78 */	mr r5, r31
/* 813524E4 000208E4  7F 86 E3 78 */	mr r6, r28
/* 813524E8 000208E8  38 81 00 08 */	addi r4, r1, 0x8
/* 813524EC 000208EC  4B FF EB 11 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 813524F0 000208F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813524F4 000208F4  40 82 00 48 */	bne .L_8135253C
/* 813524F8 000208F8  3B C0 FF FF */	li r30, -0x1
/* 813524FC 000208FC  48 00 00 40 */	b .L_8135253C
.L_81352500:
/* 81352500 00020900  7F DB F0 50 */	subf r30, r27, r30
/* 81352504 00020904  7F 43 D3 78 */	mr r3, r26
/* 81352508 00020908  7F E4 FB 78 */	mr r4, r31
/* 8135250C 0002090C  7F C5 F3 78 */	mr r5, r30
/* 81352510 00020910  4B FD DD 21 */	bl memcpy
/* 81352514 00020914  2C 1D 00 00 */	cmpwi r29, 0x0
/* 81352518 00020918  41 82 00 24 */	beq .L_8135253C
/* 8135251C 0002091C  7F 03 C3 78 */	mr r3, r24
/* 81352520 00020920  7F 45 D3 78 */	mr r5, r26
/* 81352524 00020924  7F 86 E3 78 */	mr r6, r28
/* 81352528 00020928  38 81 00 08 */	addi r4, r1, 0x8
/* 8135252C 0002092C  4B FF EA D1 */	bl check_md5__Q23ipl12NandSDWorkerFPCUcPCUcUl
/* 81352530 00020930  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352534 00020934  40 82 00 08 */	bne .L_8135253C
/* 81352538 00020938  3B C0 FF FF */	li r30, -0x1
.L_8135253C:
/* 8135253C 0002093C  7F C3 F3 78 */	mr r3, r30
.L_81352540:
/* 81352540 00020940  39 61 00 40 */	addi r11, r1, 0x40
/* 81352544 00020944  48 2A 6F BD */	bl _restgpr_24
/* 81352548 00020948  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8135254C 0002094C  7C 08 03 A6 */	mtlr r0
/* 81352550 00020950  38 21 00 40 */	addi r1, r1, 0x40
/* 81352554 00020954  4E 80 00 20 */	blr
.endfn uncompress_app_thumbnail__Q23ipl12NandSDWorkerFPCUcUlPUc

# .text:0xA16C | 0x81352558 | size: 0x34
# ipl::NandSDWorker::is_sli_compressed(const unsigned char*)
.fn is_sli_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 81352558 00020958  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8135255C 0002095C  38 80 00 00 */	li r4, 0x0
/* 81352560 00020960  2C 00 00 59 */	cmpwi r0, 0x59
/* 81352564 00020964  40 82 00 20 */	bne .L_81352584
/* 81352568 00020968  88 03 00 01 */	lbz r0, 0x1(r3)
/* 8135256C 0002096C  2C 00 00 61 */	cmpwi r0, 0x61
/* 81352570 00020970  40 82 00 14 */	bne .L_81352584
/* 81352574 00020974  88 03 00 02 */	lbz r0, 0x2(r3)
/* 81352578 00020978  2C 00 00 7A */	cmpwi r0, 0x7a
/* 8135257C 0002097C  40 82 00 08 */	bne .L_81352584
/* 81352580 00020980  38 80 00 01 */	li r4, 0x1
.L_81352584:
/* 81352584 00020984  7C 83 23 78 */	mr r3, r4
/* 81352588 00020988  4E 80 00 20 */	blr
.endfn is_sli_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA1A0 | 0x8135258C | size: 0x34
# ipl::NandSDWorker::is_asr_compressed(const unsigned char*)
.fn is_asr_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 8135258C 0002098C  88 03 00 00 */	lbz r0, 0x0(r3)
/* 81352590 00020990  38 80 00 00 */	li r4, 0x0
/* 81352594 00020994  2C 00 00 41 */	cmpwi r0, 0x41
/* 81352598 00020998  40 82 00 20 */	bne .L_813525B8
/* 8135259C 0002099C  88 03 00 01 */	lbz r0, 0x1(r3)
/* 813525A0 000209A0  2C 00 00 53 */	cmpwi r0, 0x53
/* 813525A4 000209A4  40 82 00 14 */	bne .L_813525B8
/* 813525A8 000209A8  88 03 00 02 */	lbz r0, 0x2(r3)
/* 813525AC 000209AC  2C 00 00 52 */	cmpwi r0, 0x52
/* 813525B0 000209B0  40 82 00 08 */	bne .L_813525B8
/* 813525B4 000209B4  38 80 00 01 */	li r4, 0x1
.L_813525B8:
/* 813525B8 000209B8  7C 83 23 78 */	mr r3, r4
/* 813525BC 000209BC  4E 80 00 20 */	blr
.endfn is_asr_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA1D4 | 0x813525C0 | size: 0x34
# ipl::NandSDWorker::is_ash_compressed(const unsigned char*)
.fn is_ash_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 813525C0 000209C0  88 03 00 00 */	lbz r0, 0x0(r3)
/* 813525C4 000209C4  38 80 00 00 */	li r4, 0x0
/* 813525C8 000209C8  2C 00 00 41 */	cmpwi r0, 0x41
/* 813525CC 000209CC  40 82 00 20 */	bne .L_813525EC
/* 813525D0 000209D0  88 03 00 01 */	lbz r0, 0x1(r3)
/* 813525D4 000209D4  2C 00 00 53 */	cmpwi r0, 0x53
/* 813525D8 000209D8  40 82 00 14 */	bne .L_813525EC
/* 813525DC 000209DC  88 03 00 02 */	lbz r0, 0x2(r3)
/* 813525E0 000209E0  2C 00 00 48 */	cmpwi r0, 0x48
/* 813525E4 000209E4  40 82 00 08 */	bne .L_813525EC
/* 813525E8 000209E8  38 80 00 01 */	li r4, 0x1
.L_813525EC:
/* 813525EC 000209EC  7C 83 23 78 */	mr r3, r4
/* 813525F0 000209F0  4E 80 00 20 */	blr
.endfn is_ash_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA208 | 0x813525F4 | size: 0x38
# ipl::NandSDWorker::is_lz7_compressed(const unsigned char*)
.fn is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 813525F4 000209F4  88 03 00 00 */	lbz r0, 0x0(r3)
/* 813525F8 000209F8  38 80 00 00 */	li r4, 0x0
/* 813525FC 000209FC  2C 00 00 4C */	cmpwi r0, 0x4c
/* 81352600 00020A00  40 82 00 24 */	bne .L_81352624
/* 81352604 00020A04  88 03 00 01 */	lbz r0, 0x1(r3)
/* 81352608 00020A08  2C 00 00 5A */	cmpwi r0, 0x5a
/* 8135260C 00020A0C  40 82 00 18 */	bne .L_81352624
/* 81352610 00020A10  88 03 00 02 */	lbz r0, 0x2(r3)
/* 81352614 00020A14  2C 00 00 37 */	cmpwi r0, 0x37
/* 81352618 00020A18  40 82 00 0C */	bne .L_81352624
/* 8135261C 00020A1C  40 82 00 08 */	bne .L_81352624
/* 81352620 00020A20  38 80 00 01 */	li r4, 0x1
.L_81352624:
/* 81352624 00020A24  7C 83 23 78 */	mr r3, r4
/* 81352628 00020A28  4E 80 00 20 */	blr
.endfn is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA240 | 0x8135262C | size: 0x70
# ipl::NandSDWorker::is_compressed(const unsigned char*)
.fn is_compressed__Q23ipl12NandSDWorkerFPCUc, global
/* 8135262C 00020A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81352630 00020A30  7C 08 02 A6 */	mflr r0
/* 81352634 00020A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 81352638 00020A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135263C 00020A3C  7C 7F 1B 78 */	mr r31, r3
/* 81352640 00020A40  4B FF FF 19 */	bl is_sli_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352644 00020A44  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352648 00020A48  40 82 00 34 */	bne .L_8135267C
/* 8135264C 00020A4C  7F E3 FB 78 */	mr r3, r31
/* 81352650 00020A50  4B FF FF 3D */	bl is_asr_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352654 00020A54  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352658 00020A58  40 82 00 24 */	bne .L_8135267C
/* 8135265C 00020A5C  7F E3 FB 78 */	mr r3, r31
/* 81352660 00020A60  4B FF FF 61 */	bl is_ash_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352664 00020A64  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352668 00020A68  40 82 00 14 */	bne .L_8135267C
/* 8135266C 00020A6C  7F E3 FB 78 */	mr r3, r31
/* 81352670 00020A70  4B FF FF 85 */	bl is_lz7_compressed__Q23ipl12NandSDWorkerFPCUc
/* 81352674 00020A74  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352678 00020A78  41 82 00 0C */	beq .L_81352684
.L_8135267C:
/* 8135267C 00020A7C  38 60 00 01 */	li r3, 0x1
/* 81352680 00020A80  48 00 00 08 */	b .L_81352688
.L_81352684:
/* 81352684 00020A84  38 60 00 00 */	li r3, 0x0
.L_81352688:
/* 81352688 00020A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135268C 00020A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81352690 00020A90  7C 08 03 A6 */	mtlr r0
/* 81352694 00020A94  38 21 00 10 */	addi r1, r1, 0x10
/* 81352698 00020A98  4E 80 00 20 */	blr
.endfn is_compressed__Q23ipl12NandSDWorkerFPCUc

# .text:0xA2B0 | 0x8135269C | size: 0x5C
# ipl::NandSDWorker::get_decode_size(const unsigned char*)
.fn get_decode_size__Q23ipl12NandSDWorkerFPCUc, global
/* 8135269C 00020A9C  88 03 00 00 */	lbz r0, 0x0(r3)
/* 813526A0 00020AA0  2C 00 00 59 */	cmpwi r0, 0x59
/* 813526A4 00020AA4  40 82 00 28 */	bne .L_813526CC
/* 813526A8 00020AA8  88 03 00 05 */	lbz r0, 0x5(r3)
/* 813526AC 00020AAC  88 A3 00 06 */	lbz r5, 0x6(r3)
/* 813526B0 00020AB0  88 83 00 07 */	lbz r4, 0x7(r3)
/* 813526B4 00020AB4  54 00 80 1E */	slwi r0, r0, 16
/* 813526B8 00020AB8  88 63 00 04 */	lbz r3, 0x4(r3)
/* 813526BC 00020ABC  50 A4 44 2E */	rlwimi r4, r5, 8, 16, 23
/* 813526C0 00020AC0  50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 813526C4 00020AC4  7C 83 03 78 */	or r3, r4, r0
/* 813526C8 00020AC8  4E 80 00 20 */	blr
.L_813526CC:
/* 813526CC 00020ACC  2C 00 00 4C */	cmpwi r0, 0x4c
/* 813526D0 00020AD0  40 82 00 0C */	bne .L_813526DC
/* 813526D4 00020AD4  38 63 00 04 */	addi r3, r3, 0x4
/* 813526D8 00020AD8  48 20 9B 94 */	b fn_8155C26C
.L_813526DC:
/* 813526DC 00020ADC  88 03 00 06 */	lbz r0, 0x6(r3)
/* 813526E0 00020AE0  88 83 00 05 */	lbz r4, 0x5(r3)
/* 813526E4 00020AE4  54 00 40 2E */	slwi r0, r0, 8
/* 813526E8 00020AE8  88 63 00 07 */	lbz r3, 0x7(r3)
/* 813526EC 00020AEC  50 80 82 1E */	rlwimi r0, r4, 16, 8, 15
/* 813526F0 00020AF0  7C 63 03 78 */	or r3, r3, r0
/* 813526F4 00020AF4  4E 80 00 20 */	blr
.endfn get_decode_size__Q23ipl12NandSDWorkerFPCUc

# .text:0xA30C | 0x813526F8 | size: 0x6C
# ipl::NandSDWorker::send_work(ipl::NandSDWorker::WorkMessage)
.fn send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage, global
/* 813526F8 00020AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813526FC 00020AFC  7C 08 02 A6 */	mflr r0
/* 81352700 00020B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 81352704 00020B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81352708 00020B08  7C 9F 23 78 */	mr r31, r4
/* 8135270C 00020B0C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81352710 00020B10  7C 7E 1B 78 */	mr r30, r3
/* 81352714 00020B14  48 00 00 A5 */	bl get_state__Q23ipl12NandSDWorkerFv
/* 81352718 00020B18  38 03 FF FF */	subi r0, r3, 0x1
/* 8135271C 00020B1C  7C 00 00 34 */	cntlzw r0, r0
/* 81352720 00020B20  54 00 D9 7F */	srwi. r0, r0, 5
/* 81352724 00020B24  40 82 00 28 */	bne .L_8135274C
/* 81352728 00020B28  7F C3 F3 78 */	mr r3, r30
/* 8135272C 00020B2C  38 80 00 01 */	li r4, 0x1
/* 81352730 00020B30  48 00 00 D9 */	bl set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState
/* 81352734 00020B34  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81352738 00020B38  7F E4 FB 78 */	mr r4, r31
/* 8135273C 00020B3C  38 A0 00 00 */	li r5, 0x0
/* 81352740 00020B40  3C 63 00 04 */	addis r3, r3, 0x4
/* 81352744 00020B44  38 63 E9 E0 */	subi r3, r3, 0x1620
/* 81352748 00020B48  48 1D E9 39 */	bl OSSendMessage
.L_8135274C:
/* 8135274C 00020B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81352750 00020B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81352754 00020B54  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81352758 00020B58  7C 08 03 A6 */	mtlr r0
/* 8135275C 00020B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 81352760 00020B60  4E 80 00 20 */	blr
.endfn send_work__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker11WorkMessage

# .text:0xA378 | 0x81352764 | size: 0x54
# ipl::NandSDWorker::wait_work()
.fn wait_work__Q23ipl12NandSDWorkerFv, global
/* 81352764 00020B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81352768 00020B68  7C 08 02 A6 */	mflr r0
/* 8135276C 00020B6C  38 A0 00 01 */	li r5, 0x1
/* 81352770 00020B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 81352774 00020B74  38 00 00 00 */	li r0, 0x0
/* 81352778 00020B78  38 81 00 08 */	addi r4, r1, 0x8
/* 8135277C 00020B7C  90 01 00 08 */	stw r0, 0x8(r1)
/* 81352780 00020B80  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81352784 00020B84  3C 63 00 04 */	addis r3, r3, 0x4
/* 81352788 00020B88  38 63 E9 E0 */	subi r3, r3, 0x1620
/* 8135278C 00020B8C  48 1D E9 BD */	bl OSReceiveMessage
/* 81352790 00020B90  3C 60 81 64 */	lis r3, lbl_816384B5@ha
/* 81352794 00020B94  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81352798 00020B98  38 63 84 B5 */	addi r3, r3, lbl_816384B5@l
/* 8135279C 00020B9C  4C C6 31 82 */	crclr cr1eq
/* 813527A0 00020BA0  48 1D BF 01 */	bl OSReport
/* 813527A4 00020BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813527A8 00020BA8  80 61 00 08 */	lwz r3, 0x8(r1)
/* 813527AC 00020BAC  7C 08 03 A6 */	mtlr r0
/* 813527B0 00020BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 813527B4 00020BB4  4E 80 00 20 */	blr
.endfn wait_work__Q23ipl12NandSDWorkerFv

# .text:0xA3CC | 0x813527B8 | size: 0x50
# ipl::NandSDWorker::get_state()
.fn get_state__Q23ipl12NandSDWorkerFv, global
/* 813527B8 00020BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813527BC 00020BBC  7C 08 02 A6 */	mflr r0
/* 813527C0 00020BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813527C4 00020BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813527C8 00020BC8  7C 7F 1B 78 */	mr r31, r3
/* 813527CC 00020BCC  80 83 00 00 */	lwz r4, 0x0(r3)
/* 813527D0 00020BD0  3C 64 00 04 */	addis r3, r4, 0x4
/* 813527D4 00020BD4  38 63 E9 C8 */	subi r3, r3, 0x1638
/* 813527D8 00020BD8  48 1D F4 31 */	bl fn_81531C08
/* 813527DC 00020BDC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813527E0 00020BE0  3C 63 00 04 */	addis r3, r3, 0x4
/* 813527E4 00020BE4  83 E3 EA 20 */	lwz r31, -0x15e0(r3)
/* 813527E8 00020BE8  38 63 E9 C8 */	subi r3, r3, 0x1638
/* 813527EC 00020BEC  48 1D F4 F9 */	bl fn_81531CE4
/* 813527F0 00020BF0  7F E3 FB 78 */	mr r3, r31
/* 813527F4 00020BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813527F8 00020BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813527FC 00020BFC  7C 08 03 A6 */	mtlr r0
/* 81352800 00020C00  38 21 00 10 */	addi r1, r1, 0x10
/* 81352804 00020C04  4E 80 00 20 */	blr
.endfn get_state__Q23ipl12NandSDWorkerFv

# .text:0xA41C | 0x81352808 | size: 0x60
# ipl::NandSDWorker::set_state(ipl::NandSDWorker::WorkState)
.fn set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState, global
/* 81352808 00020C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135280C 00020C0C  7C 08 02 A6 */	mflr r0
/* 81352810 00020C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 81352814 00020C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81352818 00020C18  7C 9F 23 78 */	mr r31, r4
/* 8135281C 00020C1C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81352820 00020C20  7C 7E 1B 78 */	mr r30, r3
/* 81352824 00020C24  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81352828 00020C28  3C 65 00 04 */	addis r3, r5, 0x4
/* 8135282C 00020C2C  38 63 E9 C8 */	subi r3, r3, 0x1638
/* 81352830 00020C30  48 1D F3 D9 */	bl fn_81531C08
/* 81352834 00020C34  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81352838 00020C38  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135283C 00020C3C  93 E3 EA 20 */	stw r31, -0x15e0(r3)
/* 81352840 00020C40  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81352844 00020C44  3C 63 00 04 */	addis r3, r3, 0x4
/* 81352848 00020C48  38 63 E9 C8 */	subi r3, r3, 0x1638
/* 8135284C 00020C4C  48 1D F4 99 */	bl fn_81531CE4
/* 81352850 00020C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81352854 00020C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81352858 00020C58  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135285C 00020C5C  7C 08 03 A6 */	mtlr r0
/* 81352860 00020C60  38 21 00 10 */	addi r1, r1, 0x10
/* 81352864 00020C64  4E 80 00 20 */	blr
.endfn set_state__Q23ipl12NandSDWorkerFQ33ipl12NandSDWorker9WorkState

# .text:0xA47C | 0x81352868 | size: 0x48
# ipl::NandSDWorker::sd_insert_callback(signed char)
.fn sd_insert_callback__Q23ipl12NandSDWorkerFSc, global
/* 81352868 00020C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135286C 00020C6C  7C 08 02 A6 */	mflr r0
/* 81352870 00020C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 81352874 00020C74  7C 60 1B 78 */	mr r0, r3
/* 81352878 00020C78  3C 60 81 64 */	lis r3, lbl_816384D9@ha
/* 8135287C 00020C7C  38 63 84 D9 */	addi r3, r3, lbl_816384D9@l
/* 81352880 00020C80  7C 04 07 74 */	extsb r4, r0
/* 81352884 00020C84  4C C6 31 82 */	crclr cr1eq
/* 81352888 00020C88  48 1D BE 19 */	bl OSReport
/* 8135288C 00020C8C  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 81352890 00020C90  2C 00 00 00 */	cmpwi r0, 0x0
/* 81352894 00020C94  41 82 00 0C */	beq .L_813528A0
/* 81352898 00020C98  38 00 00 02 */	li r0, 0x2
/* 8135289C 00020C9C  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
.L_813528A0:
/* 813528A0 00020CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813528A4 00020CA4  7C 08 03 A6 */	mtlr r0
/* 813528A8 00020CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 813528AC 00020CAC  4E 80 00 20 */	blr
.endfn sd_insert_callback__Q23ipl12NandSDWorkerFSc

# .text:0xA4C4 | 0x813528B0 | size: 0x48
# ipl::NandSDWorker::sd_eject_callback(signed char)
.fn sd_eject_callback__Q23ipl12NandSDWorkerFSc, global
/* 813528B0 00020CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813528B4 00020CB4  7C 08 02 A6 */	mflr r0
/* 813528B8 00020CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 813528BC 00020CBC  7C 60 1B 78 */	mr r0, r3
/* 813528C0 00020CC0  3C 60 81 64 */	lis r3, lbl_81638507@ha
/* 813528C4 00020CC4  38 63 85 07 */	addi r3, r3, lbl_81638507@l
/* 813528C8 00020CC8  7C 04 07 74 */	extsb r4, r0
/* 813528CC 00020CCC  4C C6 31 82 */	crclr cr1eq
/* 813528D0 00020CD0  48 1D BD D1 */	bl OSReport
/* 813528D4 00020CD4  80 0D A6 98 */	lwz r0, lbl_816986D8@sda21(r0)
/* 813528D8 00020CD8  2C 00 00 00 */	cmpwi r0, 0x0
/* 813528DC 00020CDC  41 82 00 0C */	beq .L_813528E8
/* 813528E0 00020CE0  38 00 00 01 */	li r0, 0x1
/* 813528E4 00020CE4  90 0D A6 98 */	stw r0, lbl_816986D8@sda21(r0)
.L_813528E8:
/* 813528E8 00020CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813528EC 00020CEC  7C 08 03 A6 */	mtlr r0
/* 813528F0 00020CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 813528F4 00020CF4  4E 80 00 20 */	blr
.endfn sd_eject_callback__Q23ipl12NandSDWorkerFSc

# .text:0xA50C | 0x813528F8 | size: 0x2BC
# ipl::NandSDWorker::add_save_cache(nw4r::ut::List*, unsigned long long, WIISaveBannerFile*, long)
.fn add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel, global
/* 813528F8 00020CF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813528FC 00020CFC  7C 08 02 A6 */	mflr r0
/* 81352900 00020D00  90 01 00 34 */	stw r0, 0x34(r1)
/* 81352904 00020D04  39 61 00 30 */	addi r11, r1, 0x30
/* 81352908 00020D08  48 2A 6B B1 */	bl _savegpr_25
/* 8135290C 00020D0C  A0 04 00 08 */	lhz r0, 0x8(r4)
/* 81352910 00020D10  7C 79 1B 78 */	mr r25, r3
/* 81352914 00020D14  7C 9D 23 78 */	mr r29, r4
/* 81352918 00020D18  7C BB 2B 78 */	mr r27, r5
/* 8135291C 00020D1C  28 00 00 2D */	cmplwi r0, 0x2d
/* 81352920 00020D20  7C DA 33 78 */	mr r26, r6
/* 81352924 00020D24  7C FE 3B 78 */	mr r30, r7
/* 81352928 00020D28  7D 1F 43 78 */	mr r31, r8
/* 8135292C 00020D2C  41 80 00 34 */	blt .L_81352960
/* 81352930 00020D30  7F A3 EB 78 */	mr r3, r29
/* 81352934 00020D34  38 80 00 00 */	li r4, 0x0
/* 81352938 00020D38  48 1B F9 C5 */	bl fn_815122FC
/* 8135293C 00020D3C  7C 7C 1B 78 */	mr r28, r3
/* 81352940 00020D40  7F A3 EB 78 */	mr r3, r29
/* 81352944 00020D44  7F 84 E3 78 */	mr r4, r28
/* 81352948 00020D48  48 1B F9 29 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8135294C 00020D4C  80 79 00 00 */	lwz r3, 0x0(r25)
/* 81352950 00020D50  7F 84 E3 78 */	mr r4, r28
/* 81352954 00020D54  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352958 00020D58  80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 8135295C 00020D5C  48 20 8C 25 */	bl fn_8155B580
.L_81352960:
/* 81352960 00020D60  80 79 00 00 */	lwz r3, 0x0(r25)
/* 81352964 00020D64  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352968 00020D68  80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 8135296C 00020D6C  48 20 8B 81 */	bl fn_8155B4EC
/* 81352970 00020D70  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352974 00020D74  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81352978 00020D78  93 45 F0 A4 */	stw r26, -0xf5c(r5)
/* 8135297C 00020D7C  7C 64 1B 78 */	mr r4, r3
/* 81352980 00020D80  93 65 F0 A0 */	stw r27, -0xf60(r5)
/* 81352984 00020D84  41 82 02 00 */	beq .L_81352B84
/* 81352988 00020D88  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8135298C 00020D8C  38 00 00 0B */	li r0, 0xb
/* 81352990 00020D90  38 E3 00 09 */	addi r7, r3, 0x9
/* 81352994 00020D94  38 DE 00 09 */	addi r6, r30, 0x9
/* 81352998 00020D98  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8135299C 00020D9C  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813529A0 00020DA0  90 A3 00 04 */	stw r5, 0x4(r3)
/* 813529A4 00020DA4  A0 BE 00 08 */	lhz r5, 0x8(r30)
/* 813529A8 00020DA8  B0 A3 00 08 */	sth r5, 0x8(r3)
/* 813529AC 00020DAC  7C 09 03 A6 */	mtctr r0
.L_813529B0:
/* 813529B0 00020DB0  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 813529B4 00020DB4  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 813529B8 00020DB8  98 A7 00 01 */	stb r5, 0x1(r7)
/* 813529BC 00020DBC  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 813529C0 00020DC0  42 00 FF F0 */	bdnz .L_813529B0
/* 813529C4 00020DC4  38 00 00 10 */	li r0, 0x10
/* 813529C8 00020DC8  38 E3 00 1E */	addi r7, r3, 0x1e
/* 813529CC 00020DCC  38 DE 00 1E */	addi r6, r30, 0x1e
/* 813529D0 00020DD0  7C 09 03 A6 */	mtctr r0
.L_813529D4:
/* 813529D4 00020DD4  A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 813529D8 00020DD8  A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 813529DC 00020DDC  B0 A7 00 02 */	sth r5, 0x2(r7)
/* 813529E0 00020DE0  B4 07 00 04 */	sthu r0, 0x4(r7)
/* 813529E4 00020DE4  42 00 FF F0 */	bdnz .L_813529D4
/* 813529E8 00020DE8  38 00 00 10 */	li r0, 0x10
/* 813529EC 00020DEC  38 E3 00 5E */	addi r7, r3, 0x5e
/* 813529F0 00020DF0  38 DE 00 5E */	addi r6, r30, 0x5e
/* 813529F4 00020DF4  7C 09 03 A6 */	mtctr r0
.L_813529F8:
/* 813529F8 00020DF8  A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 813529FC 00020DFC  A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 81352A00 00020E00  B0 A7 00 02 */	sth r5, 0x2(r7)
/* 81352A04 00020E04  B4 07 00 04 */	sthu r0, 0x4(r7)
/* 81352A08 00020E08  42 00 FF F0 */	bdnz .L_813529F8
/* 81352A0C 00020E0C  38 00 30 00 */	li r0, 0x3000
/* 81352A10 00020E10  38 E3 00 9F */	addi r7, r3, 0x9f
/* 81352A14 00020E14  38 DE 00 9F */	addi r6, r30, 0x9f
/* 81352A18 00020E18  7C 09 03 A6 */	mtctr r0
.L_81352A1C:
/* 81352A1C 00020E1C  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A20 00020E20  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A24 00020E24  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A28 00020E28  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352A2C 00020E2C  42 00 FF F0 */	bdnz .L_81352A1C
/* 81352A30 00020E30  38 00 09 00 */	li r0, 0x900
/* 81352A34 00020E34  38 E3 60 9F */	addi r7, r3, 0x609f
/* 81352A38 00020E38  38 DE 60 9F */	addi r6, r30, 0x609f
/* 81352A3C 00020E3C  7C 09 03 A6 */	mtctr r0
.L_81352A40:
/* 81352A40 00020E40  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A44 00020E44  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A48 00020E48  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A4C 00020E4C  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352A50 00020E50  42 00 FF F0 */	bdnz .L_81352A40
/* 81352A54 00020E54  38 00 09 00 */	li r0, 0x900
/* 81352A58 00020E58  38 E3 72 9F */	addi r7, r3, 0x729f
/* 81352A5C 00020E5C  38 DE 72 9F */	addi r6, r30, 0x729f
/* 81352A60 00020E60  7C 09 03 A6 */	mtctr r0
.L_81352A64:
/* 81352A64 00020E64  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A68 00020E68  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A6C 00020E6C  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A70 00020E70  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352A74 00020E74  42 00 FF F0 */	bdnz .L_81352A64
/* 81352A78 00020E78  3C DE 00 01 */	addis r6, r30, 0x1
/* 81352A7C 00020E7C  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352A80 00020E80  38 00 09 00 */	li r0, 0x900
/* 81352A84 00020E84  38 E5 84 9F */	subi r7, r5, 0x7b61
/* 81352A88 00020E88  38 C6 84 9F */	subi r6, r6, 0x7b61
/* 81352A8C 00020E8C  7C 09 03 A6 */	mtctr r0
.L_81352A90:
/* 81352A90 00020E90  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352A94 00020E94  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352A98 00020E98  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352A9C 00020E9C  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352AA0 00020EA0  42 00 FF F0 */	bdnz .L_81352A90
/* 81352AA4 00020EA4  3C DE 00 01 */	addis r6, r30, 0x1
/* 81352AA8 00020EA8  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352AAC 00020EAC  38 00 09 00 */	li r0, 0x900
/* 81352AB0 00020EB0  38 E5 96 9F */	subi r7, r5, 0x6961
/* 81352AB4 00020EB4  38 C6 96 9F */	subi r6, r6, 0x6961
/* 81352AB8 00020EB8  7C 09 03 A6 */	mtctr r0
.L_81352ABC:
/* 81352ABC 00020EBC  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352AC0 00020EC0  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352AC4 00020EC4  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352AC8 00020EC8  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352ACC 00020ECC  42 00 FF F0 */	bdnz .L_81352ABC
/* 81352AD0 00020ED0  3C DE 00 01 */	addis r6, r30, 0x1
/* 81352AD4 00020ED4  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352AD8 00020ED8  38 00 09 00 */	li r0, 0x900
/* 81352ADC 00020EDC  38 E5 A8 9F */	subi r7, r5, 0x5761
/* 81352AE0 00020EE0  38 C6 A8 9F */	subi r6, r6, 0x5761
/* 81352AE4 00020EE4  7C 09 03 A6 */	mtctr r0
.L_81352AE8:
/* 81352AE8 00020EE8  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352AEC 00020EEC  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352AF0 00020EF0  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352AF4 00020EF4  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352AF8 00020EF8  42 00 FF F0 */	bdnz .L_81352AE8
/* 81352AFC 00020EFC  3C DE 00 01 */	addis r6, r30, 0x1
/* 81352B00 00020F00  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B04 00020F04  38 00 09 00 */	li r0, 0x900
/* 81352B08 00020F08  38 E5 BA 9F */	subi r7, r5, 0x4561
/* 81352B0C 00020F0C  38 C6 BA 9F */	subi r6, r6, 0x4561
/* 81352B10 00020F10  7C 09 03 A6 */	mtctr r0
.L_81352B14:
/* 81352B14 00020F14  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352B18 00020F18  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352B1C 00020F1C  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352B20 00020F20  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352B24 00020F24  42 00 FF F0 */	bdnz .L_81352B14
/* 81352B28 00020F28  3C DE 00 01 */	addis r6, r30, 0x1
/* 81352B2C 00020F2C  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B30 00020F30  38 00 09 00 */	li r0, 0x900
/* 81352B34 00020F34  38 E5 CC 9F */	subi r7, r5, 0x3361
/* 81352B38 00020F38  38 C6 CC 9F */	subi r6, r6, 0x3361
/* 81352B3C 00020F3C  7C 09 03 A6 */	mtctr r0
.L_81352B40:
/* 81352B40 00020F40  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352B44 00020F44  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352B48 00020F48  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352B4C 00020F4C  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352B50 00020F50  42 00 FF F0 */	bdnz .L_81352B40
/* 81352B54 00020F54  3C DE 00 01 */	addis r6, r30, 0x1
/* 81352B58 00020F58  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B5C 00020F5C  38 00 09 00 */	li r0, 0x900
/* 81352B60 00020F60  38 E5 DE 9F */	subi r7, r5, 0x2161
/* 81352B64 00020F64  38 C6 DE 9F */	subi r6, r6, 0x2161
/* 81352B68 00020F68  7C 09 03 A6 */	mtctr r0
.L_81352B6C:
/* 81352B6C 00020F6C  88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81352B70 00020F70  8C 06 00 02 */	lbzu r0, 0x2(r6)
/* 81352B74 00020F74  98 A7 00 01 */	stb r5, 0x1(r7)
/* 81352B78 00020F78  9C 07 00 02 */	stbu r0, 0x2(r7)
/* 81352B7C 00020F7C  42 00 FF F0 */	bdnz .L_81352B6C
/* 81352B80 00020F80  48 00 00 0C */	b .L_81352B8C
.L_81352B84:
/* 81352B84 00020F84  38 00 00 00 */	li r0, 0x0
/* 81352B88 00020F88  90 03 00 00 */	stw r0, 0x0(r3)
.L_81352B8C:
/* 81352B8C 00020F8C  3C A3 00 01 */	addis r5, r3, 0x1
/* 81352B90 00020F90  7F A3 EB 78 */	mr r3, r29
/* 81352B94 00020F94  93 E5 F0 A8 */	stw r31, -0xf58(r5)
/* 81352B98 00020F98  48 1B F5 4D */	bl List_Prepend__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352B9C 00020F9C  39 61 00 30 */	addi r11, r1, 0x30
/* 81352BA0 00020FA0  48 2A 69 65 */	bl _restgpr_25
/* 81352BA4 00020FA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81352BA8 00020FA8  7C 08 03 A6 */	mtlr r0
/* 81352BAC 00020FAC  38 21 00 30 */	addi r1, r1, 0x30
/* 81352BB0 00020FB0  4E 80 00 20 */	blr
.endfn add_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxP17WIISaveBannerFilel

# .text:0xA7C8 | 0x81352BB4 | size: 0x7C
# ipl::NandSDWorker::find_save_cache(nw4r::ut::List*, unsigned long long)
.fn find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352BB4 00020FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352BB8 00020FB8  7C 08 02 A6 */	mflr r0
/* 81352BBC 00020FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 81352BC0 00020FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 81352BC4 00020FC4  48 2A 69 05 */	bl _savegpr_29
/* 81352BC8 00020FC8  7C 9D 23 78 */	mr r29, r4
/* 81352BCC 00020FCC  7C BF 2B 78 */	mr r31, r5
/* 81352BD0 00020FD0  7C DE 33 78 */	mr r30, r6
/* 81352BD4 00020FD4  38 80 00 00 */	li r4, 0x0
/* 81352BD8 00020FD8  48 00 00 28 */	b .L_81352C00
.L_81352BDC:
/* 81352BDC 00020FDC  3C 63 00 01 */	addis r3, r3, 0x1
/* 81352BE0 00020FE0  80 03 F0 A0 */	lwz r0, -0xf60(r3)
/* 81352BE4 00020FE4  80 63 F0 A4 */	lwz r3, -0xf5c(r3)
/* 81352BE8 00020FE8  7C 00 FA 78 */	xor r0, r0, r31
/* 81352BEC 00020FEC  7C 63 F2 78 */	xor r3, r3, r30
/* 81352BF0 00020FF0  7C 60 03 79 */	or. r0, r3, r0
/* 81352BF4 00020FF4  40 82 00 0C */	bne .L_81352C00
/* 81352BF8 00020FF8  7C 83 23 78 */	mr r3, r4
/* 81352BFC 00020FFC  48 00 00 1C */	b .L_81352C18
.L_81352C00:
/* 81352C00 00021000  7F A3 EB 78 */	mr r3, r29
/* 81352C04 00021004  48 1B F6 D9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352C08 00021008  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352C0C 0002100C  7C 64 1B 78 */	mr r4, r3
/* 81352C10 00021010  40 82 FF CC */	bne .L_81352BDC
/* 81352C14 00021014  38 60 00 00 */	li r3, 0x0
.L_81352C18:
/* 81352C18 00021018  39 61 00 20 */	addi r11, r1, 0x20
/* 81352C1C 0002101C  48 2A 68 F9 */	bl _restgpr_29
/* 81352C20 00021020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352C24 00021024  7C 08 03 A6 */	mtlr r0
/* 81352C28 00021028  38 21 00 20 */	addi r1, r1, 0x20
/* 81352C2C 0002102C  4E 80 00 20 */	blr
.endfn find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xA844 | 0x81352C30 | size: 0x64
# ipl::NandSDWorker::delete_save_cache(nw4r::ut::List*, unsigned long long)
.fn delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352C30 00021030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352C34 00021034  7C 08 02 A6 */	mflr r0
/* 81352C38 00021038  90 01 00 24 */	stw r0, 0x24(r1)
/* 81352C3C 0002103C  39 61 00 20 */	addi r11, r1, 0x20
/* 81352C40 00021040  48 2A 68 89 */	bl _savegpr_29
/* 81352C44 00021044  7C 7D 1B 78 */	mr r29, r3
/* 81352C48 00021048  7C 9E 23 78 */	mr r30, r4
/* 81352C4C 0002104C  4B FF FF 69 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81352C50 00021050  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352C54 00021054  7C 7F 1B 78 */	mr r31, r3
/* 81352C58 00021058  41 82 00 24 */	beq .L_81352C7C
/* 81352C5C 0002105C  7F C3 F3 78 */	mr r3, r30
/* 81352C60 00021060  7F E4 FB 78 */	mr r4, r31
/* 81352C64 00021064  48 1B F6 0D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352C68 00021068  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352C6C 0002106C  7F E4 FB 78 */	mr r4, r31
/* 81352C70 00021070  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352C74 00021074  80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 81352C78 00021078  48 20 89 09 */	bl fn_8155B580
.L_81352C7C:
/* 81352C7C 0002107C  39 61 00 20 */	addi r11, r1, 0x20
/* 81352C80 00021080  48 2A 68 95 */	bl _restgpr_29
/* 81352C84 00021084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352C88 00021088  7C 08 03 A6 */	mtlr r0
/* 81352C8C 0002108C  38 21 00 20 */	addi r1, r1, 0x20
/* 81352C90 00021090  4E 80 00 20 */	blr
.endfn delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xA8A8 | 0x81352C94 | size: 0x74
# ipl::NandSDWorker::clear_save_cache(nw4r::ut::List*)
.fn clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List, global
/* 81352C94 00021094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352C98 00021098  7C 08 02 A6 */	mflr r0
/* 81352C9C 0002109C  90 01 00 24 */	stw r0, 0x24(r1)
/* 81352CA0 000210A0  39 61 00 20 */	addi r11, r1, 0x20
/* 81352CA4 000210A4  48 2A 68 25 */	bl _savegpr_29
/* 81352CA8 000210A8  7C 7D 1B 78 */	mr r29, r3
/* 81352CAC 000210AC  7C 9E 23 78 */	mr r30, r4
/* 81352CB0 000210B0  3B E0 00 00 */	li r31, 0x0
/* 81352CB4 000210B4  48 00 00 24 */	b .L_81352CD8
.L_81352CB8:
/* 81352CB8 000210B8  7F C3 F3 78 */	mr r3, r30
/* 81352CBC 000210BC  7F E4 FB 78 */	mr r4, r31
/* 81352CC0 000210C0  48 1B F5 B1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352CC4 000210C4  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352CC8 000210C8  7F E4 FB 78 */	mr r4, r31
/* 81352CCC 000210CC  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352CD0 000210D0  80 63 E6 94 */	lwz r3, -0x196c(r3)
/* 81352CD4 000210D4  48 20 88 AD */	bl fn_8155B580
.L_81352CD8:
/* 81352CD8 000210D8  7F C3 F3 78 */	mr r3, r30
/* 81352CDC 000210DC  7F E4 FB 78 */	mr r4, r31
/* 81352CE0 000210E0  48 1B F5 FD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352CE4 000210E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352CE8 000210E8  7C 7F 1B 78 */	mr r31, r3
/* 81352CEC 000210EC  40 82 FF CC */	bne .L_81352CB8
/* 81352CF0 000210F0  39 61 00 20 */	addi r11, r1, 0x20
/* 81352CF4 000210F4  48 2A 68 21 */	bl _restgpr_29
/* 81352CF8 000210F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352CFC 000210FC  7C 08 03 A6 */	mtlr r0
/* 81352D00 00021100  38 21 00 20 */	addi r1, r1, 0x20
/* 81352D04 00021104  4E 80 00 20 */	blr
.endfn clear_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List

# .text:0xA91C | 0x81352D08 | size: 0xF0
# ipl::NandSDWorker::add_app_cache(nw4r::ut::List*, unsigned long long, unsigned char*, unsigned long, ipl::channel::SChanMgrMetaHeader*, long)
.fn add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl, global
/* 81352D08 00021108  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81352D0C 0002110C  7C 08 02 A6 */	mflr r0
/* 81352D10 00021110  90 01 00 34 */	stw r0, 0x34(r1)
/* 81352D14 00021114  39 61 00 30 */	addi r11, r1, 0x30
/* 81352D18 00021118  48 2A 67 99 */	bl _savegpr_23
/* 81352D1C 0002111C  A0 04 00 08 */	lhz r0, 0x8(r4)
/* 81352D20 00021120  7C 77 1B 78 */	mr r23, r3
/* 81352D24 00021124  7C 98 23 78 */	mr r24, r4
/* 81352D28 00021128  7C BA 2B 78 */	mr r26, r5
/* 81352D2C 0002112C  28 00 00 30 */	cmplwi r0, 0x30
/* 81352D30 00021130  7C D9 33 78 */	mr r25, r6
/* 81352D34 00021134  7C FB 3B 78 */	mr r27, r7
/* 81352D38 00021138  7D 1C 43 78 */	mr r28, r8
/* 81352D3C 0002113C  7D 3D 4B 78 */	mr r29, r9
/* 81352D40 00021140  7D 5E 53 78 */	mr r30, r10
/* 81352D44 00021144  41 80 00 34 */	blt .L_81352D78
/* 81352D48 00021148  7F 03 C3 78 */	mr r3, r24
/* 81352D4C 0002114C  38 80 00 00 */	li r4, 0x0
/* 81352D50 00021150  48 1B F5 AD */	bl fn_815122FC
/* 81352D54 00021154  7C 7F 1B 78 */	mr r31, r3
/* 81352D58 00021158  7F 03 C3 78 */	mr r3, r24
/* 81352D5C 0002115C  7F E4 FB 78 */	mr r4, r31
/* 81352D60 00021160  48 1B F5 11 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352D64 00021164  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81352D68 00021168  7F E4 FB 78 */	mr r4, r31
/* 81352D6C 0002116C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352D70 00021170  80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352D74 00021174  48 20 88 0D */	bl fn_8155B580
.L_81352D78:
/* 81352D78 00021178  80 77 00 00 */	lwz r3, 0x0(r23)
/* 81352D7C 0002117C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352D80 00021180  80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352D84 00021184  48 20 87 69 */	bl fn_8155B4EC
/* 81352D88 00021188  93 23 00 04 */	stw r25, 0x4(r3)
/* 81352D8C 0002118C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 81352D90 00021190  7C 7F 1B 78 */	mr r31, r3
/* 81352D94 00021194  93 43 00 00 */	stw r26, 0x0(r3)
/* 81352D98 00021198  41 82 00 30 */	beq .L_81352DC8
/* 81352D9C 0002119C  7F 64 DB 78 */	mr r4, r27
/* 81352DA0 000211A0  7F 85 E3 78 */	mr r5, r28
/* 81352DA4 000211A4  38 63 00 18 */	addi r3, r3, 0x18
/* 81352DA8 000211A8  4B FD D4 89 */	bl memcpy
/* 81352DAC 000211AC  3C 7F 00 02 */	addis r3, r31, 0x2
/* 81352DB0 000211B0  7F A4 EB 78 */	mr r4, r29
/* 81352DB4 000211B4  38 A0 06 00 */	li r5, 0x600
/* 81352DB8 000211B8  38 63 90 18 */	subi r3, r3, 0x6fe8
/* 81352DBC 000211BC  4B FD D4 75 */	bl memcpy
/* 81352DC0 000211C0  93 9F 00 0C */	stw r28, 0xc(r31)
/* 81352DC4 000211C4  48 00 00 0C */	b .L_81352DD0
.L_81352DC8:
/* 81352DC8 000211C8  38 00 FF FF */	li r0, -0x1
/* 81352DCC 000211CC  90 03 00 0C */	stw r0, 0xc(r3)
.L_81352DD0:
/* 81352DD0 000211D0  93 DF 00 08 */	stw r30, 0x8(r31)
/* 81352DD4 000211D4  7F 03 C3 78 */	mr r3, r24
/* 81352DD8 000211D8  7F E4 FB 78 */	mr r4, r31
/* 81352DDC 000211DC  48 1B F3 09 */	bl List_Prepend__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352DE0 000211E0  39 61 00 30 */	addi r11, r1, 0x30
/* 81352DE4 000211E4  48 2A 67 19 */	bl _restgpr_23
/* 81352DE8 000211E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81352DEC 000211EC  7C 08 03 A6 */	mtlr r0
/* 81352DF0 000211F0  38 21 00 30 */	addi r1, r1, 0x30
/* 81352DF4 000211F4  4E 80 00 20 */	blr
.endfn add_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUxPUcUlPQ33ipl7channel18SChanMgrMetaHeaderl

# .text:0xAA0C | 0x81352DF8 | size: 0xD0
# ipl::NandSDWorker::find_app_cache(nw4r::ut::List*, unsigned long long)
.fn find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352DF8 000211F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352DFC 000211FC  7C 08 02 A6 */	mflr r0
/* 81352E00 00021200  90 01 00 24 */	stw r0, 0x24(r1)
/* 81352E04 00021204  39 61 00 20 */	addi r11, r1, 0x20
/* 81352E08 00021208  48 2A 66 BD */	bl _savegpr_28
/* 81352E0C 0002120C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81352E10 00021210  7C BE 2B 78 */	mr r30, r5
/* 81352E14 00021214  7C 9C 23 78 */	mr r28, r4
/* 81352E18 00021218  7C DD 33 78 */	mr r29, r6
/* 81352E1C 0002121C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352E20 00021220  38 A0 00 00 */	li r5, 0x0
/* 81352E24 00021224  38 03 E6 84 */	subi r0, r3, 0x197c
/* 81352E28 00021228  7C 04 00 40 */	cmplw r4, r0
/* 81352E2C 0002122C  40 82 00 68 */	bne .L_81352E94
/* 81352E30 00021230  3B E0 FF FF */	li r31, -0x1
/* 81352E34 00021234  48 00 00 20 */	b .L_81352E54
.L_81352E38:
/* 81352E38 00021238  80 03 00 04 */	lwz r0, 0x4(r3)
/* 81352E3C 0002123C  7C 00 F8 38 */	and r0, r0, r31
/* 81352E40 00021240  7C 00 EA 78 */	xor r0, r0, r29
/* 81352E44 00021244  7C 00 F3 79 */	or. r0, r0, r30
/* 81352E48 00021248  40 82 00 0C */	bne .L_81352E54
/* 81352E4C 0002124C  7C A3 2B 78 */	mr r3, r5
/* 81352E50 00021250  48 00 00 60 */	b .L_81352EB0
.L_81352E54:
/* 81352E54 00021254  7F 83 E3 78 */	mr r3, r28
/* 81352E58 00021258  7C A4 2B 78 */	mr r4, r5
/* 81352E5C 0002125C  48 1B F4 81 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352E60 00021260  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352E64 00021264  7C 65 1B 78 */	mr r5, r3
/* 81352E68 00021268  40 82 FF D0 */	bne .L_81352E38
/* 81352E6C 0002126C  48 00 00 40 */	b .L_81352EAC
/* 81352E70 00021270  48 00 00 24 */	b .L_81352E94
.L_81352E74:
/* 81352E74 00021274  80 03 00 00 */	lwz r0, 0x0(r3)
/* 81352E78 00021278  80 63 00 04 */	lwz r3, 0x4(r3)
/* 81352E7C 0002127C  7C 00 F2 78 */	xor r0, r0, r30
/* 81352E80 00021280  7C 63 EA 78 */	xor r3, r3, r29
/* 81352E84 00021284  7C 60 03 79 */	or. r0, r3, r0
/* 81352E88 00021288  40 82 00 0C */	bne .L_81352E94
/* 81352E8C 0002128C  7C A3 2B 78 */	mr r3, r5
/* 81352E90 00021290  48 00 00 20 */	b .L_81352EB0
.L_81352E94:
/* 81352E94 00021294  7F 83 E3 78 */	mr r3, r28
/* 81352E98 00021298  7C A4 2B 78 */	mr r4, r5
/* 81352E9C 0002129C  48 1B F4 41 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352EA0 000212A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352EA4 000212A4  7C 65 1B 78 */	mr r5, r3
/* 81352EA8 000212A8  40 82 FF CC */	bne .L_81352E74
.L_81352EAC:
/* 81352EAC 000212AC  38 60 00 00 */	li r3, 0x0
.L_81352EB0:
/* 81352EB0 000212B0  39 61 00 20 */	addi r11, r1, 0x20
/* 81352EB4 000212B4  48 2A 66 5D */	bl _restgpr_28
/* 81352EB8 000212B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352EBC 000212BC  7C 08 03 A6 */	mtlr r0
/* 81352EC0 000212C0  38 21 00 20 */	addi r1, r1, 0x20
/* 81352EC4 000212C4  4E 80 00 20 */	blr
.endfn find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xAADC | 0x81352EC8 | size: 0x64
# ipl::NandSDWorker::delete_app_cache(nw4r::ut::List*, unsigned long long)
.fn delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx, global
/* 81352EC8 000212C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352ECC 000212CC  7C 08 02 A6 */	mflr r0
/* 81352ED0 000212D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 81352ED4 000212D4  39 61 00 20 */	addi r11, r1, 0x20
/* 81352ED8 000212D8  48 2A 65 F1 */	bl _savegpr_29
/* 81352EDC 000212DC  7C 7D 1B 78 */	mr r29, r3
/* 81352EE0 000212E0  7C 9E 23 78 */	mr r30, r4
/* 81352EE4 000212E4  4B FF FF 15 */	bl find_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81352EE8 000212E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352EEC 000212EC  7C 7F 1B 78 */	mr r31, r3
/* 81352EF0 000212F0  41 82 00 24 */	beq .L_81352F14
/* 81352EF4 000212F4  7F C3 F3 78 */	mr r3, r30
/* 81352EF8 000212F8  7F E4 FB 78 */	mr r4, r31
/* 81352EFC 000212FC  48 1B F3 75 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352F00 00021300  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352F04 00021304  7F E4 FB 78 */	mr r4, r31
/* 81352F08 00021308  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352F0C 0002130C  80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352F10 00021310  48 20 86 71 */	bl fn_8155B580
.L_81352F14:
/* 81352F14 00021314  39 61 00 20 */	addi r11, r1, 0x20
/* 81352F18 00021318  48 2A 65 FD */	bl _restgpr_29
/* 81352F1C 0002131C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352F20 00021320  7C 08 03 A6 */	mtlr r0
/* 81352F24 00021324  38 21 00 20 */	addi r1, r1, 0x20
/* 81352F28 00021328  4E 80 00 20 */	blr
.endfn delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx

# .text:0xAB40 | 0x81352F2C | size: 0x70
# ipl::NandSDWorker::clear_app_cache(nw4r::ut::List*)
.fn clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List, global
/* 81352F2C 0002132C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81352F30 00021330  7C 08 02 A6 */	mflr r0
/* 81352F34 00021334  90 01 00 24 */	stw r0, 0x24(r1)
/* 81352F38 00021338  39 61 00 20 */	addi r11, r1, 0x20
/* 81352F3C 0002133C  48 2A 65 8D */	bl _savegpr_29
/* 81352F40 00021340  7C 7D 1B 78 */	mr r29, r3
/* 81352F44 00021344  7C 9E 23 78 */	mr r30, r4
/* 81352F48 00021348  48 00 00 24 */	b .L_81352F6C
.L_81352F4C:
/* 81352F4C 0002134C  7F C3 F3 78 */	mr r3, r30
/* 81352F50 00021350  7F E4 FB 78 */	mr r4, r31
/* 81352F54 00021354  48 1B F3 1D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81352F58 00021358  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81352F5C 0002135C  7F E4 FB 78 */	mr r4, r31
/* 81352F60 00021360  3C 63 00 02 */	addis r3, r3, 0x2
/* 81352F64 00021364  80 63 E6 98 */	lwz r3, -0x1968(r3)
/* 81352F68 00021368  48 20 86 19 */	bl fn_8155B580
.L_81352F6C:
/* 81352F6C 0002136C  7F C3 F3 78 */	mr r3, r30
/* 81352F70 00021370  38 80 00 00 */	li r4, 0x0
/* 81352F74 00021374  48 1B F3 69 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81352F78 00021378  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352F7C 0002137C  7C 7F 1B 78 */	mr r31, r3
/* 81352F80 00021380  40 82 FF CC */	bne .L_81352F4C
/* 81352F84 00021384  39 61 00 20 */	addi r11, r1, 0x20
/* 81352F88 00021388  48 2A 65 8D */	bl _restgpr_29
/* 81352F8C 0002138C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81352F90 00021390  7C 08 03 A6 */	mtlr r0
/* 81352F94 00021394  38 21 00 20 */	addi r1, r1, 0x20
/* 81352F98 00021398  4E 80 00 20 */	blr
.endfn clear_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4List

# .text:0xABB0 | 0x81352F9C | size: 0x278
# ipl::NandSDWorker::get_sd_entry_list(const char*, unsigned long*, unsigned long)
.fn get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl, global
/* 81352F9C 0002139C  94 21 FA F0 */	stwu r1, -0x510(r1)
/* 81352FA0 000213A0  7C 08 02 A6 */	mflr r0
/* 81352FA4 000213A4  90 01 05 14 */	stw r0, 0x514(r1)
/* 81352FA8 000213A8  39 61 05 10 */	addi r11, r1, 0x510
/* 81352FAC 000213AC  48 2A 65 09 */	bl _savegpr_24
/* 81352FB0 000213B0  3F 80 81 63 */	lis r28, lbl_81635A88@ha
/* 81352FB4 000213B4  7C 9E 23 78 */	mr r30, r4
/* 81352FB8 000213B8  3B 9C 5A 88 */	addi r28, r28, lbl_81635A88@l
/* 81352FBC 000213BC  7C 78 1B 78 */	mr r24, r3
/* 81352FC0 000213C0  7C B9 2B 78 */	mr r25, r5
/* 81352FC4 000213C4  7C DA 33 78 */	mr r26, r6
/* 81352FC8 000213C8  38 7C 2A AD */	addi r3, r28, 0x2aad
/* 81352FCC 000213CC  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 81352FD0 000213D0  3B 60 00 00 */	li r27, 0x0
/* 81352FD4 000213D4  3B E0 00 00 */	li r31, 0x0
/* 81352FD8 000213D8  38 80 00 10 */	li r4, 0x10
/* 81352FDC 000213DC  48 29 50 F1 */	bl fn_815E80CC
/* 81352FE0 000213E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 81352FE4 000213E4  7C 7D 1B 78 */	mr r29, r3
/* 81352FE8 000213E8  41 82 00 24 */	beq .L_8135300C
/* 81352FEC 000213EC  38 7C 2A C2 */	addi r3, r28, 0x2ac2
/* 81352FF0 000213F0  4C C6 31 82 */	crclr cr1eq
/* 81352FF4 000213F4  48 1D B6 AD */	bl OSReport
/* 81352FF8 000213F8  7F 03 C3 78 */	mr r3, r24
/* 81352FFC 000213FC  38 80 FF FF */	li r4, -0x1
/* 81353000 00021400  38 A0 00 00 */	li r5, 0x0
/* 81353004 00021404  48 00 0D FD */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 81353008 00021408  48 00 01 F4 */	b .L_813531FC
.L_8135300C:
/* 8135300C 0002140C  80 8D 81 6C */	lwz r4, lbl_816961AC@sda21(r0)
/* 81353010 00021410  38 61 00 64 */	addi r3, r1, 0x64
/* 81353014 00021414  38 A0 00 40 */	li r5, 0x40
/* 81353018 00021418  48 2A F3 AD */	bl strncpy
/* 8135301C 0002141C  38 61 00 64 */	addi r3, r1, 0x64
/* 81353020 00021420  38 8D 81 B4 */	li r4, lbl_816961F4@sda21
/* 81353024 00021424  38 A0 00 40 */	li r5, 0x40
/* 81353028 00021428  48 2A F4 0D */	bl fn_81602434
/* 8135302C 0002142C  7F C4 F3 78 */	mr r4, r30
/* 81353030 00021430  38 61 00 64 */	addi r3, r1, 0x64
/* 81353034 00021434  38 A0 00 40 */	li r5, 0x40
/* 81353038 00021438  48 2A F3 FD */	bl fn_81602434
/* 8135303C 0002143C  7F FE FB 78 */	mr r30, r31
/* 81353040 00021440  48 00 01 B0 */	b .L_813531F0
.L_81353044:
/* 81353044 00021444  88 18 00 04 */	lbz r0, 0x4(r24)
/* 81353048 00021448  2C 00 00 00 */	cmpwi r0, 0x0
/* 8135304C 0002144C  41 82 00 0C */	beq .L_81353058
/* 81353050 00021450  38 60 FF EE */	li r3, -0x12
/* 81353054 00021454  48 00 01 A8 */	b .L_813531FC
.L_81353058:
/* 81353058 00021458  88 01 02 D0 */	lbz r0, 0x2d0(r1)
/* 8135305C 0002145C  54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 81353060 00021460  41 82 01 50 */	beq .L_813531B0
/* 81353064 00021464  38 61 02 D1 */	addi r3, r1, 0x2d1
/* 81353068 00021468  48 2A 5E 95 */	bl strlen
/* 8135306C 0002146C  28 03 00 04 */	cmplwi r3, 0x4
/* 81353070 00021470  7C 7D 1B 78 */	mr r29, r3
/* 81353074 00021474  41 82 00 0C */	beq .L_81353080
/* 81353078 00021478  28 03 00 08 */	cmplwi r3, 0x8
/* 8135307C 0002147C  40 82 01 34 */	bne .L_813531B0
.L_81353080:
/* 81353080 00021480  38 61 00 24 */	addi r3, r1, 0x24
/* 81353084 00021484  38 A1 00 64 */	addi r5, r1, 0x64
/* 81353088 00021488  38 C1 02 D1 */	addi r6, r1, 0x2d1
/* 8135308C 0002148C  38 80 00 40 */	li r4, 0x40
/* 81353090 00021490  4C C6 31 82 */	crclr cr1eq
/* 81353094 00021494  48 2A D9 15 */	bl fn_816009A8
/* 81353098 00021498  38 61 00 24 */	addi r3, r1, 0x24
/* 8135309C 0002149C  38 81 00 10 */	addi r4, r1, 0x10
/* 813530A0 000214A0  48 29 50 85 */	bl fn_815E8124
/* 813530A4 000214A4  7C 64 1B 78 */	mr r4, r3
/* 813530A8 000214A8  7F 03 C3 78 */	mr r3, r24
/* 813530AC 000214AC  38 A1 00 0C */	addi r5, r1, 0xc
/* 813530B0 000214B0  48 00 0D 51 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813530B4 000214B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813530B8 000214B8  40 82 00 D4 */	bne .L_8135318C
/* 813530BC 000214BC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 813530C0 000214C0  7C 00 D0 40 */	cmplw r0, r26
/* 813530C4 000214C4  40 81 00 EC */	ble .L_813531B0
/* 813530C8 000214C8  88 81 00 20 */	lbz r4, 0x20(r1)
/* 813530CC 000214CC  7F 03 C3 78 */	mr r3, r24
/* 813530D0 000214D0  48 00 10 39 */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 813530D4 000214D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813530D8 000214D8  41 82 00 D8 */	beq .L_813531B0
/* 813530DC 000214DC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813530E0 000214E0  38 7C 2A F8 */	addi r3, r28, 0x2af8
/* 813530E4 000214E4  38 81 00 24 */	addi r4, r1, 0x24
/* 813530E8 000214E8  4C C6 31 82 */	crclr cr1eq
/* 813530EC 000214EC  48 1D B5 B5 */	bl OSReport
/* 813530F0 000214F0  28 1D 00 08 */	cmplwi r29, 0x8
/* 813530F4 000214F4  40 82 00 64 */	bne .L_81353158
/* 813530F8 000214F8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813530FC 000214FC  38 61 02 D1 */	addi r3, r1, 0x2d1
/* 81353100 00021500  38 81 00 08 */	addi r4, r1, 0x8
/* 81353104 00021504  38 A0 00 10 */	li r5, 0x10
/* 81353108 00021508  48 2B 16 65 */	bl fn_8160476C
/* 8135310C 0002150C  7C 7D 1B 78 */	mr r29, r3
/* 81353110 00021510  4B FF 62 35 */	bl is_available_data_only_titleidlo__Q23ipl12NandSDWorkerFUl
/* 81353114 00021514  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353118 00021518  41 82 00 2C */	beq .L_81353144
/* 8135311C 0002151C  2C 19 00 00 */	cmpwi r25, 0x0
/* 81353120 00021520  41 82 00 08 */	beq .L_81353128
/* 81353124 00021524  7F B9 F9 2E */	stwx r29, r25, r31
.L_81353128:
/* 81353128 00021528  7F A4 EB 78 */	mr r4, r29
/* 8135312C 0002152C  38 7C 2B 23 */	addi r3, r28, 0x2b23
/* 81353130 00021530  4C C6 31 82 */	crclr cr1eq
/* 81353134 00021534  3B 7B 00 01 */	addi r27, r27, 0x1
/* 81353138 00021538  3B FF 00 04 */	addi r31, r31, 0x4
/* 8135313C 0002153C  48 1D B5 65 */	bl OSReport
/* 81353140 00021540  48 00 00 34 */	b .L_81353174
.L_81353144:
/* 81353144 00021544  7F A4 EB 78 */	mr r4, r29
/* 81353148 00021548  38 7C 2B 2D */	addi r3, r28, 0x2b2d
/* 8135314C 0002154C  4C C6 31 82 */	crclr cr1eq
/* 81353150 00021550  48 1D B5 51 */	bl OSReport
/* 81353154 00021554  48 00 00 20 */	b .L_81353174
.L_81353158:
/* 81353158 00021558  2C 19 00 00 */	cmpwi r25, 0x0
/* 8135315C 0002155C  41 82 00 10 */	beq .L_8135316C
/* 81353160 00021560  38 61 02 D1 */	addi r3, r1, 0x2d1
/* 81353164 00021564  4B FF 63 01 */	bl gamecode_to_titleid_lo__Q23ipl12NandSDWorkerFPCc
/* 81353168 00021568  7C 79 F9 2E */	stwx r3, r25, r31
.L_8135316C:
/* 8135316C 0002156C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 81353170 00021570  3B FF 00 04 */	addi r31, r31, 0x4
.L_81353174:
/* 81353174 00021574  28 1B 09 60 */	cmplwi r27, 0x960
/* 81353178 00021578  41 80 00 38 */	blt .L_813531B0
/* 8135317C 0002157C  38 7C 2B 37 */	addi r3, r28, 0x2b37
/* 81353180 00021580  4C C6 31 82 */	crclr cr1eq
/* 81353184 00021584  48 1D B5 1D */	bl OSReport
/* 81353188 00021588  48 00 00 70 */	b .L_813531F8
.L_8135318C:
/* 8135318C 0002158C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 81353190 00021590  2C 00 FF FE */	cmpwi r0, -0x2
/* 81353194 00021594  41 82 00 1C */	beq .L_813531B0
/* 81353198 00021598  38 7C 2B 6F */	addi r3, r28, 0x2b6f
/* 8135319C 0002159C  38 81 00 24 */	addi r4, r1, 0x24
/* 813531A0 000215A0  4C C6 31 82 */	crclr cr1eq
/* 813531A4 000215A4  48 1D B4 FD */	bl OSReport
/* 813531A8 000215A8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 813531AC 000215AC  48 00 00 50 */	b .L_813531FC
.L_813531B0:
/* 813531B0 000215B0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 813531B4 000215B4  48 29 4F 45 */	bl fn_815E80F8
/* 813531B8 000215B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813531BC 000215BC  7C 7D 1B 78 */	mr r29, r3
/* 813531C0 000215C0  41 82 00 30 */	beq .L_813531F0
/* 813531C4 000215C4  7F 03 C3 78 */	mr r3, r24
/* 813531C8 000215C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 813531CC 000215CC  38 80 FF FF */	li r4, -0x1
/* 813531D0 000215D0  48 00 0C 31 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
/* 813531D4 000215D4  2C 03 FF FE */	cmpwi r3, -0x2
/* 813531D8 000215D8  41 82 00 18 */	beq .L_813531F0
/* 813531DC 000215DC  38 7C 2B 91 */	addi r3, r28, 0x2b91
/* 813531E0 000215E0  4C C6 31 82 */	crclr cr1eq
/* 813531E4 000215E4  48 1D B4 BD */	bl OSReport
/* 813531E8 000215E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 813531EC 000215EC  48 00 00 10 */	b .L_813531FC
.L_813531F0:
/* 813531F0 000215F0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 813531F4 000215F4  41 82 FE 50 */	beq .L_81353044
.L_813531F8:
/* 813531F8 000215F8  7F 63 DB 78 */	mr r3, r27
.L_813531FC:
/* 813531FC 000215FC  39 61 05 10 */	addi r11, r1, 0x510
/* 81353200 00021600  48 2A 63 01 */	bl _restgpr_24
/* 81353204 00021604  80 01 05 14 */	lwz r0, 0x514(r1)
/* 81353208 00021608  7C 08 03 A6 */	mtlr r0
/* 8135320C 0002160C  38 21 05 10 */	addi r1, r1, 0x510
/* 81353210 00021610  4E 80 00 20 */	blr
.endfn get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl

# .text:0xAE28 | 0x81353214 | size: 0xD8
# ipl::NandSDWorker::sd_file_exist(const char*, unsigned long)
.fn sd_file_exist__Q23ipl12NandSDWorkerFPCcUl, global
/* 81353214 00021614  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81353218 00021618  7C 08 02 A6 */	mflr r0
/* 8135321C 0002161C  90 01 00 34 */	stw r0, 0x34(r1)
/* 81353220 00021620  39 61 00 30 */	addi r11, r1, 0x30
/* 81353224 00021624  48 2A 62 A5 */	bl _savegpr_29
/* 81353228 00021628  7C 9E 23 78 */	mr r30, r4
/* 8135322C 0002162C  7C 7D 1B 78 */	mr r29, r3
/* 81353230 00021630  7C BF 2B 78 */	mr r31, r5
/* 81353234 00021634  38 81 00 08 */	addi r4, r1, 0x8
/* 81353238 00021638  7F C3 F3 78 */	mr r3, r30
/* 8135323C 0002163C  48 29 4E E9 */	bl fn_815E8124
/* 81353240 00021640  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353244 00021644  40 82 00 4C */	bne .L_81353290
/* 81353248 00021648  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8135324C 0002164C  7C 00 F8 40 */	cmplw r0, r31
/* 81353250 00021650  40 81 00 38 */	ble .L_81353288
/* 81353254 00021654  88 81 00 18 */	lbz r4, 0x18(r1)
/* 81353258 00021658  7F A3 EB 78 */	mr r3, r29
/* 8135325C 0002165C  48 00 0E AD */	bl is_fa_file__Q23ipl12NandSDWorkerFUc
/* 81353260 00021660  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353264 00021664  41 82 00 24 */	beq .L_81353288
/* 81353268 00021668  3C 60 81 64 */	lis r3, lbl_81638580@ha
/* 8135326C 0002166C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81353270 00021670  7F C4 F3 78 */	mr r4, r30
/* 81353274 00021674  38 63 85 80 */	addi r3, r3, lbl_81638580@l
/* 81353278 00021678  4C C6 31 82 */	crclr cr1eq
/* 8135327C 0002167C  48 1D B4 25 */	bl OSReport
/* 81353280 00021680  38 60 00 01 */	li r3, 0x1
/* 81353284 00021684  48 00 00 50 */	b .L_813532D4
.L_81353288:
/* 81353288 00021688  38 60 00 00 */	li r3, 0x0
/* 8135328C 0002168C  48 00 00 48 */	b .L_813532D4
.L_81353290:
/* 81353290 00021690  48 29 4D 19 */	bl fn_815E7FA8
/* 81353294 00021694  2C 03 00 02 */	cmpwi r3, 0x2
/* 81353298 00021698  7C 65 1B 78 */	mr r5, r3
/* 8135329C 0002169C  41 82 00 0C */	beq .L_813532A8
/* 813532A0 000216A0  2C 03 00 16 */	cmpwi r3, 0x16
/* 813532A4 000216A4  40 82 00 0C */	bne .L_813532B0
.L_813532A8:
/* 813532A8 000216A8  38 60 00 00 */	li r3, 0x0
/* 813532AC 000216AC  48 00 00 28 */	b .L_813532D4
.L_813532B0:
/* 813532B0 000216B0  3C 60 81 63 */	lis r3, lbl_816373A4@ha
/* 813532B4 000216B4  7F C4 F3 78 */	mr r4, r30
/* 813532B8 000216B8  38 63 73 A4 */	addi r3, r3, lbl_816373A4@l
/* 813532BC 000216BC  4C C6 31 82 */	crclr cr1eq
/* 813532C0 000216C0  48 1D B3 E1 */	bl OSReport
/* 813532C4 000216C4  7F A3 EB 78 */	mr r3, r29
/* 813532C8 000216C8  38 80 FF FF */	li r4, -0x1
/* 813532CC 000216CC  38 A0 00 00 */	li r5, 0x0
/* 813532D0 000216D0  48 00 0B 31 */	bl handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl
.L_813532D4:
/* 813532D4 000216D4  39 61 00 30 */	addi r11, r1, 0x30
/* 813532D8 000216D8  48 2A 62 3D */	bl _restgpr_29
/* 813532DC 000216DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 813532E0 000216E0  7C 08 03 A6 */	mtlr r0
/* 813532E4 000216E4  38 21 00 30 */	addi r1, r1, 0x30
/* 813532E8 000216E8  4E 80 00 20 */	blr
.endfn sd_file_exist__Q23ipl12NandSDWorkerFPCcUl

# .text:0xAF00 | 0x813532EC | size: 0x7C
# ipl::NandSDWorker::get_sd_save_list(unsigned long*)
.fn get_sd_save_list__Q23ipl12NandSDWorkerFPUl, global
/* 813532EC 000216EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813532F0 000216F0  7C 08 02 A6 */	mflr r0
/* 813532F4 000216F4  3C C0 00 01 */	lis r6, 0x1
/* 813532F8 000216F8  7C 85 23 78 */	mr r5, r4
/* 813532FC 000216FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81353300 00021700  38 00 00 00 */	li r0, 0x0
/* 81353304 00021704  38 C6 F0 C0 */	subi r6, r6, 0xf40
/* 81353308 00021708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135330C 0002170C  7C 7F 1B 78 */	mr r31, r3
/* 81353310 00021710  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81353314 00021714  3C 87 00 04 */	addis r4, r7, 0x4
/* 81353318 00021718  90 04 EA 30 */	stw r0, -0x15d0(r4)
/* 8135331C 0002171C  80 8D 81 70 */	lwz r4, lbl_816961B0@sda21(r0)
/* 81353320 00021720  4B FF FC 7D */	bl get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl
/* 81353324 00021724  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353328 00021728  40 80 00 08 */	bge .L_81353330
/* 8135332C 0002172C  48 00 00 28 */	b .L_81353354
.L_81353330:
/* 81353330 00021730  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81353334 00021734  3C A0 81 64 */	lis r5, lbl_8163864E@ha
/* 81353338 00021738  7C 64 1B 78 */	mr r4, r3
/* 8135333C 0002173C  3C C6 00 04 */	addis r6, r6, 0x4
/* 81353340 00021740  90 66 EA 30 */	stw r3, -0x15d0(r6)
/* 81353344 00021744  38 65 86 4E */	addi r3, r5, lbl_8163864E@l
/* 81353348 00021748  4C C6 31 82 */	crclr cr1eq
/* 8135334C 0002174C  48 1D B3 55 */	bl OSReport
/* 81353350 00021750  38 60 00 00 */	li r3, 0x0
.L_81353354:
/* 81353354 00021754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81353358 00021758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135335C 0002175C  7C 08 03 A6 */	mtlr r0
/* 81353360 00021760  38 21 00 10 */	addi r1, r1, 0x10
/* 81353364 00021764  4E 80 00 20 */	blr
.endfn get_sd_save_list__Q23ipl12NandSDWorkerFPUl

# .text:0xAF7C | 0x81353368 | size: 0x78
# ipl::NandSDWorker::get_sd_app_list(unsigned long*)
.fn get_sd_app_list__Q23ipl12NandSDWorkerFPUl, global
/* 81353368 00021768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135336C 0002176C  7C 08 02 A6 */	mflr r0
/* 81353370 00021770  7C 85 23 78 */	mr r5, r4
/* 81353374 00021774  90 01 00 14 */	stw r0, 0x14(r1)
/* 81353378 00021778  38 00 00 00 */	li r0, 0x0
/* 8135337C 0002177C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81353380 00021780  7C 7F 1B 78 */	mr r31, r3
/* 81353384 00021784  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81353388 00021788  3C 86 00 04 */	addis r4, r6, 0x4
/* 8135338C 0002178C  38 C0 06 40 */	li r6, 0x640
/* 81353390 00021790  90 04 EA 34 */	stw r0, -0x15cc(r4)
/* 81353394 00021794  80 8D 81 74 */	lwz r4, lbl_816961B4@sda21(r0)
/* 81353398 00021798  4B FF FC 05 */	bl get_sd_entry_list__Q23ipl12NandSDWorkerFPCcPUlUl
/* 8135339C 0002179C  2C 03 00 00 */	cmpwi r3, 0x0
/* 813533A0 000217A0  40 80 00 08 */	bge .L_813533A8
/* 813533A4 000217A4  48 00 00 28 */	b .L_813533CC
.L_813533A8:
/* 813533A8 000217A8  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 813533AC 000217AC  3C A0 81 64 */	lis r5, lbl_8163866E@ha
/* 813533B0 000217B0  7C 64 1B 78 */	mr r4, r3
/* 813533B4 000217B4  3C C6 00 04 */	addis r6, r6, 0x4
/* 813533B8 000217B8  90 66 EA 34 */	stw r3, -0x15cc(r6)
/* 813533BC 000217BC  38 65 86 6E */	addi r3, r5, lbl_8163866E@l
/* 813533C0 000217C0  4C C6 31 82 */	crclr cr1eq
/* 813533C4 000217C4  48 1D B2 DD */	bl OSReport
/* 813533C8 000217C8  38 60 00 00 */	li r3, 0x0
.L_813533CC:
/* 813533CC 000217CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813533D0 000217D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813533D4 000217D4  7C 08 03 A6 */	mtlr r0
/* 813533D8 000217D8  38 21 00 10 */	addi r1, r1, 0x10
/* 813533DC 000217DC  4E 80 00 20 */	blr
.endfn get_sd_app_list__Q23ipl12NandSDWorkerFPUl

# .text:0xAFF4 | 0x813533E0 | size: 0x1C4
# ipl::NandSDWorker::recursion_nand_save(unsigned long long, ipl::NandSDWorker::RecursiveProcess, const char**, unsigned long)
.fn recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl, global
/* 813533E0 000217E0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813533E4 000217E4  7C 08 02 A6 */	mflr r0
/* 813533E8 000217E8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813533EC 000217EC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 813533F0 000217F0  48 2A 60 C5 */	bl _savegpr_24
/* 813533F4 000217F4  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 813533F8 000217F8  7C 78 1B 78 */	mr r24, r3
/* 813533FC 000217FC  7C BA 2B 78 */	mr r26, r5
/* 81353400 00021800  7C D9 33 78 */	mr r25, r6
/* 81353404 00021804  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81353408 00021808  38 00 FF FF */	li r0, -0x1
/* 8135340C 0002180C  7C FB 3B 78 */	mr r27, r7
/* 81353410 00021810  7D 1C 43 78 */	mr r28, r8
/* 81353414 00021814  7D 3D 4B 78 */	mr r29, r9
/* 81353418 00021818  7F 46 D3 78 */	mr r6, r26
/* 8135341C 0002181C  38 61 00 48 */	addi r3, r1, 0x48
/* 81353420 00021820  38 BF 01 1C */	addi r5, r31, 0x11c
/* 81353424 00021824  7F 27 00 38 */	and r7, r25, r0
/* 81353428 00021828  38 80 00 40 */	li r4, 0x40
/* 8135342C 0002182C  4C C6 31 82 */	crclr cr1eq
/* 81353430 00021830  48 2A D5 79 */	bl fn_816009A8
/* 81353434 00021834  7F 03 C3 78 */	mr r3, r24
/* 81353438 00021838  7F 26 CB 78 */	mr r6, r25
/* 8135343C 0002183C  7F 45 D3 78 */	mr r5, r26
/* 81353440 00021840  48 00 07 6D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353444 00021844  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353448 00021848  40 82 00 0C */	bne .L_81353454
/* 8135344C 0002184C  38 60 FF FE */	li r3, -0x2
/* 81353450 00021850  48 00 01 3C */	b .L_8135358C
.L_81353454:
/* 81353454 00021854  2C 1B 00 01 */	cmpwi r27, 0x1
/* 81353458 00021858  40 82 00 D4 */	bne .L_8135352C
/* 8135345C 0002185C  38 61 00 08 */	addi r3, r1, 0x8
/* 81353460 00021860  38 81 00 48 */	addi r4, r1, 0x48
/* 81353464 00021864  38 A0 00 40 */	li r5, 0x40
/* 81353468 00021868  48 2A EF 5D */	bl strncpy
/* 8135346C 0002186C  38 61 00 08 */	addi r3, r1, 0x8
/* 81353470 00021870  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 81353474 00021874  38 A0 00 40 */	li r5, 0x40
/* 81353478 00021878  48 2A EF BD */	bl fn_81602434
/* 8135347C 0002187C  80 8D 81 58 */	lwz r4, lbl_81696198@sda21(r0)
/* 81353480 00021880  38 61 00 08 */	addi r3, r1, 0x8
/* 81353484 00021884  38 A0 00 40 */	li r5, 0x40
/* 81353488 00021888  48 2A EF AD */	bl fn_81602434
/* 8135348C 0002188C  38 61 00 08 */	addi r3, r1, 0x8
/* 81353490 00021890  48 00 CC 19 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 81353494 00021894  7C 7E 1B 78 */	mr r30, r3
/* 81353498 00021898  7F 03 C3 78 */	mr r3, r24
/* 8135349C 0002189C  7F C4 F3 78 */	mr r4, r30
/* 813534A0 000218A0  38 A0 00 00 */	li r5, 0x0
/* 813534A4 000218A4  48 00 07 B5 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 813534A8 000218A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813534AC 000218AC  41 82 00 1C */	beq .L_813534C8
/* 813534B0 000218B0  7F 03 C3 78 */	mr r3, r24
/* 813534B4 000218B4  38 C0 00 02 */	li r6, 0x2
/* 813534B8 000218B8  38 A0 00 01 */	li r5, 0x1
/* 813534BC 000218BC  48 00 06 F1 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 813534C0 000218C0  38 60 FF FB */	li r3, -0x5
/* 813534C4 000218C4  48 00 00 C8 */	b .L_8135358C
.L_813534C8:
/* 813534C8 000218C8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 813534CC 000218CC  40 82 00 18 */	bne .L_813534E4
/* 813534D0 000218D0  38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 813534D4 000218D4  38 81 00 08 */	addi r4, r1, 0x8
/* 813534D8 000218D8  4C C6 31 82 */	crclr cr1eq
/* 813534DC 000218DC  48 1D B1 C5 */	bl OSReport
/* 813534E0 000218E0  48 00 00 4C */	b .L_8135352C
.L_813534E4:
/* 813534E4 000218E4  2C 1E FF F4 */	cmpwi r30, -0xc
/* 813534E8 000218E8  40 82 00 18 */	bne .L_81353500
/* 813534EC 000218EC  38 7F 02 0F */	addi r3, r31, 0x20f
/* 813534F0 000218F0  38 81 00 08 */	addi r4, r1, 0x8
/* 813534F4 000218F4  4C C6 31 82 */	crclr cr1eq
/* 813534F8 000218F8  48 1D B1 A9 */	bl OSReport
/* 813534FC 000218FC  48 00 00 30 */	b .L_8135352C
.L_81353500:
/* 81353500 00021900  7F C5 F3 78 */	mr r5, r30
/* 81353504 00021904  38 7F 02 2D */	addi r3, r31, 0x22d
/* 81353508 00021908  38 81 00 08 */	addi r4, r1, 0x8
/* 8135350C 0002190C  4C C6 31 82 */	crclr cr1eq
/* 81353510 00021910  48 1D B1 91 */	bl OSReport
/* 81353514 00021914  7F 03 C3 78 */	mr r3, r24
/* 81353518 00021918  38 C0 00 02 */	li r6, 0x2
/* 8135351C 0002191C  38 A0 00 01 */	li r5, 0x1
/* 81353520 00021920  48 00 06 8D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353524 00021924  38 60 FF FE */	li r3, -0x2
/* 81353528 00021928  48 00 00 64 */	b .L_8135358C
.L_8135352C:
/* 8135352C 0002192C  7F 03 C3 78 */	mr r3, r24
/* 81353530 00021930  7F 66 DB 78 */	mr r6, r27
/* 81353534 00021934  7F 87 E3 78 */	mr r7, r28
/* 81353538 00021938  7F A8 EB 78 */	mr r8, r29
/* 8135353C 0002193C  38 81 00 48 */	addi r4, r1, 0x48
/* 81353540 00021940  38 A0 00 00 */	li r5, 0x0
/* 81353544 00021944  48 00 00 61 */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 81353548 00021948  2C 1B 00 01 */	cmpwi r27, 0x1
/* 8135354C 0002194C  7C 7E 1B 78 */	mr r30, r3
/* 81353550 00021950  40 82 00 28 */	bne .L_81353578
/* 81353554 00021954  7F 03 C3 78 */	mr r3, r24
/* 81353558 00021958  7F 26 CB 78 */	mr r6, r25
/* 8135355C 0002195C  7F 45 D3 78 */	mr r5, r26
/* 81353560 00021960  38 E0 00 00 */	li r7, 0x0
/* 81353564 00021964  4B FF A6 19 */	bl delete_empty_title__Q23ipl12NandSDWorkerFUxb
/* 81353568 00021968  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135356C 0002196C  41 82 00 0C */	beq .L_81353578
/* 81353570 00021970  38 60 FF FE */	li r3, -0x2
/* 81353574 00021974  48 00 00 18 */	b .L_8135358C
.L_81353578:
/* 81353578 00021978  7F 03 C3 78 */	mr r3, r24
/* 8135357C 0002197C  38 C0 00 02 */	li r6, 0x2
/* 81353580 00021980  38 A0 00 01 */	li r5, 0x1
/* 81353584 00021984  48 00 06 29 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353588 00021988  7F C3 F3 78 */	mr r3, r30
.L_8135358C:
/* 8135358C 0002198C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 81353590 00021990  48 2A 5F 71 */	bl _restgpr_24
/* 81353594 00021994  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81353598 00021998  7C 08 03 A6 */	mtlr r0
/* 8135359C 0002199C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 813535A0 000219A0  4E 80 00 20 */	blr
.endfn recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl

# .text:0xB1B8 | 0x813535A4 | size: 0x4F8
# ipl::NandSDWorker::recursion_nand(const char*, const char*, ipl::NandSDWorker::RecursiveProcess, const char**, unsigned long)
.fn recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl, global
/* 813535A4 000219A4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 813535A8 000219A8  7C 08 02 A6 */	mflr r0
/* 813535AC 000219AC  90 01 01 04 */	stw r0, 0x104(r1)
/* 813535B0 000219B0  39 61 01 00 */	addi r11, r1, 0x100
/* 813535B4 000219B4  48 2A 5E DD */	bl _savegpr_15
/* 813535B8 000219B8  3B E0 00 00 */	li r31, 0x0
/* 813535BC 000219BC  3F C0 81 63 */	lis r30, lbl_81635A88@ha
/* 813535C0 000219C0  93 E1 00 10 */	stw r31, 0x10(r1)
/* 813535C4 000219C4  7C 73 1B 78 */	mr r19, r3
/* 813535C8 000219C8  7C 98 23 78 */	mr r24, r4
/* 813535CC 000219CC  7C B4 2B 78 */	mr r20, r5
/* 813535D0 000219D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813535D4 000219D4  7C D5 33 78 */	mr r21, r6
/* 813535D8 000219D8  7C F6 3B 78 */	mr r22, r7
/* 813535DC 000219DC  7D 17 43 78 */	mr r23, r8
/* 813535E0 000219E0  3B DE 5A 88 */	addi r30, r30, lbl_81635A88@l
/* 813535E4 000219E4  38 61 00 14 */	addi r3, r1, 0x14
/* 813535E8 000219E8  48 00 15 65 */	bl iplNandSD_81354B4C
/* 813535EC 000219EC  2C 17 00 00 */	cmpwi r23, 0x0
/* 813535F0 000219F0  41 82 00 90 */	beq .L_81353680
/* 813535F4 000219F4  80 73 00 00 */	lwz r3, 0x0(r19)
/* 813535F8 000219F8  1C 97 00 44 */	mulli r4, r23, 0x44
/* 813535FC 000219FC  38 A0 00 20 */	li r5, 0x20
/* 81353600 00021A00  3C 63 00 02 */	addis r3, r3, 0x2
/* 81353604 00021A04  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353608 00021A08  48 20 71 4D */	bl fn_8155A754
/* 8135360C 00021A0C  7C 7C 1B 78 */	mr r28, r3
/* 81353610 00021A10  7F F9 FB 78 */	mr r25, r31
/* 81353614 00021A14  3B 60 00 00 */	li r27, 0x0
/* 81353618 00021A18  3A 40 00 00 */	li r18, 0x0
/* 8135361C 00021A1C  3A 20 00 01 */	li r17, 0x1
/* 81353620 00021A20  3B 40 00 02 */	li r26, 0x2
/* 81353624 00021A24  48 00 00 54 */	b .L_81353678
.L_81353628:
/* 81353628 00021A28  7D F6 C8 2E */	lwzx r15, r22, r25
/* 8135362C 00021A2C  7D E3 7B 78 */	mr r3, r15
/* 81353630 00021A30  48 2A 58 CD */	bl strlen
/* 81353634 00021A34  7F BC 92 14 */	add r29, r28, r18
/* 81353638 00021A38  7C 70 1B 78 */	mr r16, r3
/* 8135363C 00021A3C  7D E4 7B 78 */	mr r4, r15
/* 81353640 00021A40  38 A0 00 40 */	li r5, 0x40
/* 81353644 00021A44  38 7D 00 04 */	addi r3, r29, 0x4
/* 81353648 00021A48  48 2A ED 7D */	bl strncpy
/* 8135364C 00021A4C  7C 7D 82 14 */	add r3, r29, r16
/* 81353650 00021A50  88 03 00 03 */	lbz r0, 0x3(r3)
/* 81353654 00021A54  2C 00 00 2F */	cmpwi r0, 0x2f
/* 81353658 00021A58  40 82 00 10 */	bne .L_81353668
/* 8135365C 00021A5C  9B E3 00 03 */	stb r31, 0x3(r3)
/* 81353660 00021A60  93 5D 00 00 */	stw r26, 0x0(r29)
/* 81353664 00021A64  48 00 00 08 */	b .L_8135366C
.L_81353668:
/* 81353668 00021A68  92 3D 00 00 */	stw r17, 0x0(r29)
.L_8135366C:
/* 8135366C 00021A6C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 81353670 00021A70  3A 52 00 44 */	addi r18, r18, 0x44
/* 81353674 00021A74  3B 39 00 04 */	addi r25, r25, 0x4
.L_81353678:
/* 81353678 00021A78  7C 1B B8 40 */	cmplw r27, r23
/* 8135367C 00021A7C  41 80 FF AC */	blt .L_81353628
.L_81353680:
/* 81353680 00021A80  80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353684 00021A84  38 80 01 A0 */	li r4, 0x1a0
/* 81353688 00021A88  38 A0 00 20 */	li r5, 0x20
/* 8135368C 00021A8C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81353690 00021A90  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353694 00021A94  48 20 70 C1 */	bl fn_8155A754
/* 81353698 00021A98  80 D3 00 00 */	lwz r6, 0x0(r19)
/* 8135369C 00021A9C  7C 7D 1B 78 */	mr r29, r3
/* 813536A0 00021AA0  38 80 08 80 */	li r4, 0x880
/* 813536A4 00021AA4  38 A0 00 04 */	li r5, 0x4
/* 813536A8 00021AA8  3C 66 00 02 */	addis r3, r6, 0x2
/* 813536AC 00021AAC  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 813536B0 00021AB0  48 20 70 A5 */	bl fn_8155A754
/* 813536B4 00021AB4  7C 64 1B 78 */	mr r4, r3
/* 813536B8 00021AB8  38 61 00 14 */	addi r3, r1, 0x14
/* 813536BC 00021ABC  38 A0 00 40 */	li r5, 0x40
/* 813536C0 00021AC0  38 C0 00 20 */	li r6, 0x20
/* 813536C4 00021AC4  48 00 14 C9 */	bl iplNandSD_81354B8C
/* 813536C8 00021AC8  7F 03 C3 78 */	mr r3, r24
/* 813536CC 00021ACC  48 2A 58 31 */	bl strlen
/* 813536D0 00021AD0  7C 72 1B 78 */	mr r18, r3
/* 813536D4 00021AD4  7F 04 C3 78 */	mr r4, r24
/* 813536D8 00021AD8  38 61 00 14 */	addi r3, r1, 0x14
/* 813536DC 00021ADC  48 00 14 FD */	bl iplNandSD_81354BD8
/* 813536E0 00021AE0  3B E1 00 2C */	addi r31, r1, 0x2c
/* 813536E4 00021AE4  7C 72 FA 14 */	add r3, r18, r31
/* 813536E8 00021AE8  7F F1 FB 78 */	mr r17, r31
/* 813536EC 00021AEC  3B E3 00 01 */	addi r31, r3, 0x1
/* 813536F0 00021AF0  48 00 03 38 */	b .L_81353A28
.L_813536F4:
/* 813536F4 00021AF4  38 61 00 6C */	addi r3, r1, 0x6c
/* 813536F8 00021AF8  38 A1 00 10 */	addi r5, r1, 0x10
/* 813536FC 00021AFC  38 80 00 00 */	li r4, 0x0
/* 81353700 00021B00  48 00 CB F9 */	bl PrivateReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81353704 00021B04  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353708 00021B08  41 82 00 24 */	beq .L_8135372C
/* 8135370C 00021B0C  7C 65 1B 78 */	mr r5, r3
/* 81353710 00021B10  38 7E 2C 05 */	addi r3, r30, 0x2c05
/* 81353714 00021B14  38 81 00 6C */	addi r4, r1, 0x6c
/* 81353718 00021B18  4C C6 31 82 */	crclr cr1eq
/* 8135371C 00021B1C  48 1D AF 85 */	bl OSReport
/* 81353720 00021B20  38 00 FF FE */	li r0, -0x2
/* 81353724 00021B24  90 01 00 0C */	stw r0, 0xc(r1)
/* 81353728 00021B28  48 00 03 14 */	b .L_81353A3C
.L_8135372C:
/* 8135372C 00021B2C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81353730 00021B30  2C 00 00 00 */	cmpwi r0, 0x0
/* 81353734 00021B34  41 82 02 F4 */	beq .L_81353A28
/* 81353738 00021B38  7F A4 EB 78 */	mr r4, r29
/* 8135373C 00021B3C  38 61 00 6C */	addi r3, r1, 0x6c
/* 81353740 00021B40  38 A1 00 10 */	addi r5, r1, 0x10
/* 81353744 00021B44  48 00 CB B5 */	bl PrivateReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81353748 00021B48  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135374C 00021B4C  41 82 00 24 */	beq .L_81353770
/* 81353750 00021B50  7C 65 1B 78 */	mr r5, r3
/* 81353754 00021B54  38 7E 2C 05 */	addi r3, r30, 0x2c05
/* 81353758 00021B58  38 81 00 6C */	addi r4, r1, 0x6c
/* 8135375C 00021B5C  4C C6 31 82 */	crclr cr1eq
/* 81353760 00021B60  48 1D AF 41 */	bl OSReport
/* 81353764 00021B64  38 00 FF FE */	li r0, -0x2
/* 81353768 00021B68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8135376C 00021B6C  48 00 02 D0 */	b .L_81353A3C
.L_81353770:
/* 81353770 00021B70  3B 60 00 00 */	li r27, 0x0
/* 81353774 00021B74  3B 40 00 00 */	li r26, 0x0
/* 81353778 00021B78  9B 61 00 08 */	stb r27, 0x8(r1)
/* 8135377C 00021B7C  48 00 02 A0 */	b .L_81353A1C
.L_81353780:
/* 81353780 00021B80  38 61 00 2C */	addi r3, r1, 0x2c
/* 81353784 00021B84  38 81 00 6C */	addi r4, r1, 0x6c
/* 81353788 00021B88  38 A0 00 40 */	li r5, 0x40
/* 8135378C 00021B8C  48 2A EC 39 */	bl strncpy
/* 81353790 00021B90  38 61 00 2C */	addi r3, r1, 0x2c
/* 81353794 00021B94  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 81353798 00021B98  38 A0 00 40 */	li r5, 0x40
/* 8135379C 00021B9C  48 2A EC 99 */	bl fn_81602434
/* 813537A0 00021BA0  7D FD DA 14 */	add r15, r29, r27
/* 813537A4 00021BA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 813537A8 00021BA8  7D E4 7B 78 */	mr r4, r15
/* 813537AC 00021BAC  38 A0 00 40 */	li r5, 0x40
/* 813537B0 00021BB0  48 2A EC 85 */	bl fn_81602434
/* 813537B4 00021BB4  7D E3 7B 78 */	mr r3, r15
/* 813537B8 00021BB8  48 2A 57 45 */	bl strlen
/* 813537BC 00021BBC  2C 17 00 00 */	cmpwi r23, 0x0
/* 813537C0 00021BC0  7C 63 DA 14 */	add r3, r3, r27
/* 813537C4 00021BC4  3B 63 00 01 */	addi r27, r3, 0x1
/* 813537C8 00021BC8  41 82 00 9C */	beq .L_81353864
/* 813537CC 00021BCC  3B 20 00 00 */	li r25, 0x0
/* 813537D0 00021BD0  3B 00 00 00 */	li r24, 0x0
/* 813537D4 00021BD4  3A 40 00 00 */	li r18, 0x0
/* 813537D8 00021BD8  48 00 00 7C */	b .L_81353854
.L_813537DC:
/* 813537DC 00021BDC  7D FC 92 14 */	add r15, r28, r18
/* 813537E0 00021BE0  7F E3 FB 78 */	mr r3, r31
/* 813537E4 00021BE4  38 8F 00 04 */	addi r4, r15, 0x4
/* 813537E8 00021BE8  48 2A EC 99 */	bl fn_81602480
/* 813537EC 00021BEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813537F0 00021BF0  40 82 00 5C */	bne .L_8135384C
/* 813537F4 00021BF4  38 61 00 2C */	addi r3, r1, 0x2c
/* 813537F8 00021BF8  38 81 00 08 */	addi r4, r1, 0x8
/* 813537FC 00021BFC  48 00 CC B5 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 81353800 00021C00  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353804 00021C04  41 82 00 24 */	beq .L_81353828
/* 81353808 00021C08  7C 65 1B 78 */	mr r5, r3
/* 8135380C 00021C0C  38 7E 2C 35 */	addi r3, r30, 0x2c35
/* 81353810 00021C10  38 81 00 2C */	addi r4, r1, 0x2c
/* 81353814 00021C14  4C C6 31 82 */	crclr cr1eq
/* 81353818 00021C18  48 1D AE 89 */	bl OSReport
/* 8135381C 00021C1C  38 00 FF FE */	li r0, -0x2
/* 81353820 00021C20  90 01 00 0C */	stw r0, 0xc(r1)
/* 81353824 00021C24  48 00 02 18 */	b .L_81353A3C
.L_81353828:
/* 81353828 00021C28  88 61 00 08 */	lbz r3, 0x8(r1)
/* 8135382C 00021C2C  80 0F 00 00 */	lwz r0, 0x0(r15)
/* 81353830 00021C30  7C 03 00 00 */	cmpw r3, r0
/* 81353834 00021C34  40 82 00 18 */	bne .L_8135384C
/* 81353838 00021C38  38 7E 2C 65 */	addi r3, r30, 0x2c65
/* 8135383C 00021C3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 81353840 00021C40  4C C6 31 82 */	crclr cr1eq
/* 81353844 00021C44  48 1D AE 5D */	bl OSReport
/* 81353848 00021C48  3B 20 00 01 */	li r25, 0x1
.L_8135384C:
/* 8135384C 00021C4C  3B 18 00 01 */	addi r24, r24, 0x1
/* 81353850 00021C50  3A 52 00 44 */	addi r18, r18, 0x44
.L_81353854:
/* 81353854 00021C54  7C 18 B8 40 */	cmplw r24, r23
/* 81353858 00021C58  41 80 FF 84 */	blt .L_813537DC
/* 8135385C 00021C5C  2C 19 00 00 */	cmpwi r25, 0x0
/* 81353860 00021C60  40 82 01 B8 */	bne .L_81353A18
.L_81353864:
/* 81353864 00021C64  2C 15 00 01 */	cmpwi r21, 0x1
/* 81353868 00021C68  41 82 00 C4 */	beq .L_8135392C
/* 8135386C 00021C6C  40 80 00 10 */	bge .L_8135387C
/* 81353870 00021C70  2C 15 00 00 */	cmpwi r21, 0x0
/* 81353874 00021C74  40 80 00 14 */	bge .L_81353888
/* 81353878 00021C78  48 00 01 A0 */	b .L_81353A18
.L_8135387C:
/* 8135387C 00021C7C  2C 15 00 03 */	cmpwi r21, 0x3
/* 81353880 00021C80  40 80 01 98 */	bge .L_81353A18
/* 81353884 00021C84  48 00 01 08 */	b .L_8135398C
.L_81353888:
/* 81353888 00021C88  38 61 00 2C */	addi r3, r1, 0x2c
/* 8135388C 00021C8C  38 81 00 08 */	addi r4, r1, 0x8
/* 81353890 00021C90  48 00 CC 21 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 81353894 00021C94  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353898 00021C98  41 82 00 24 */	beq .L_813538BC
/* 8135389C 00021C9C  7C 65 1B 78 */	mr r5, r3
/* 813538A0 00021CA0  38 7E 2C 35 */	addi r3, r30, 0x2c35
/* 813538A4 00021CA4  38 81 00 2C */	addi r4, r1, 0x2c
/* 813538A8 00021CA8  4C C6 31 82 */	crclr cr1eq
/* 813538AC 00021CAC  48 1D AD F5 */	bl OSReport
/* 813538B0 00021CB0  38 00 FF FE */	li r0, -0x2
/* 813538B4 00021CB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 813538B8 00021CB8  48 00 01 84 */	b .L_81353A3C
.L_813538BC:
/* 813538BC 00021CBC  88 01 00 08 */	lbz r0, 0x8(r1)
/* 813538C0 00021CC0  28 00 00 01 */	cmplwi r0, 0x1
/* 813538C4 00021CC4  40 82 00 30 */	bne .L_813538F4
/* 813538C8 00021CC8  7E 63 9B 78 */	mr r3, r19
/* 813538CC 00021CCC  38 81 00 2C */	addi r4, r1, 0x2c
/* 813538D0 00021CD0  48 00 01 CD */	bl nand_get_length__Q23ipl12NandSDWorkerFPCc
/* 813538D4 00021CD4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813538D8 00021CD8  40 80 00 0C */	bge .L_813538E4
/* 813538DC 00021CDC  90 61 00 0C */	stw r3, 0xc(r1)
/* 813538E0 00021CE0  48 00 01 5C */	b .L_81353A3C
.L_813538E4:
/* 813538E4 00021CE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 813538E8 00021CE8  7C 00 1A 14 */	add r0, r0, r3
/* 813538EC 00021CEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 813538F0 00021CF0  48 00 01 28 */	b .L_81353A18
.L_813538F4:
/* 813538F4 00021CF4  28 00 00 02 */	cmplwi r0, 0x2
/* 813538F8 00021CF8  40 82 01 20 */	bne .L_81353A18
/* 813538FC 00021CFC  38 61 00 14 */	addi r3, r1, 0x14
/* 81353900 00021D00  38 81 00 2C */	addi r4, r1, 0x2c
/* 81353904 00021D04  48 00 12 D5 */	bl iplNandSD_81354BD8
/* 81353908 00021D08  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135390C 00021D0C  40 82 01 0C */	bne .L_81353A18
/* 81353910 00021D10  38 7E 2C 80 */	addi r3, r30, 0x2c80
/* 81353914 00021D14  38 81 00 6C */	addi r4, r1, 0x6c
/* 81353918 00021D18  4C C6 31 82 */	crclr cr1eq
/* 8135391C 00021D1C  48 1D AD 85 */	bl OSReport
/* 81353920 00021D20  38 00 FF FC */	li r0, -0x4
/* 81353924 00021D24  90 01 00 0C */	stw r0, 0xc(r1)
/* 81353928 00021D28  48 00 01 14 */	b .L_81353A3C
.L_8135392C:
/* 8135392C 00021D2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 81353930 00021D30  48 00 CA B1 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 81353934 00021D34  7C 6F 1B 78 */	mr r15, r3
/* 81353938 00021D38  7E 63 9B 78 */	mr r3, r19
/* 8135393C 00021D3C  7D E4 7B 78 */	mr r4, r15
/* 81353940 00021D40  38 A1 00 0C */	addi r5, r1, 0xc
/* 81353944 00021D44  48 00 03 15 */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81353948 00021D48  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135394C 00021D4C  40 82 00 F0 */	bne .L_81353A3C
/* 81353950 00021D50  2C 0F 00 00 */	cmpwi r15, 0x0
/* 81353954 00021D54  41 82 00 24 */	beq .L_81353978
/* 81353958 00021D58  7D E5 7B 78 */	mr r5, r15
/* 8135395C 00021D5C  38 7E 2C A4 */	addi r3, r30, 0x2ca4
/* 81353960 00021D60  38 81 00 2C */	addi r4, r1, 0x2c
/* 81353964 00021D64  4C C6 31 82 */	crclr cr1eq
/* 81353968 00021D68  48 1D AD 39 */	bl OSReport
/* 8135396C 00021D6C  38 00 FF FE */	li r0, -0x2
/* 81353970 00021D70  90 01 00 0C */	stw r0, 0xc(r1)
/* 81353974 00021D74  48 00 00 C8 */	b .L_81353A3C
.L_81353978:
/* 81353978 00021D78  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 8135397C 00021D7C  38 81 00 2C */	addi r4, r1, 0x2c
/* 81353980 00021D80  4C C6 31 82 */	crclr cr1eq
/* 81353984 00021D84  48 1D AD 1D */	bl OSReport
/* 81353988 00021D88  48 00 00 90 */	b .L_81353A18
.L_8135398C:
/* 8135398C 00021D8C  7E 84 A3 78 */	mr r4, r20
/* 81353990 00021D90  38 61 00 2C */	addi r3, r1, 0x2c
/* 81353994 00021D94  48 00 CA B1 */	bl PrivateMove__Q33ipl4nand7wrapperFPCcPCc
/* 81353998 00021D98  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135399C 00021D9C  7C 6F 1B 78 */	mr r15, r3
/* 813539A0 00021DA0  41 82 00 54 */	beq .L_813539F4
/* 813539A4 00021DA4  7D E5 7B 78 */	mr r5, r15
/* 813539A8 00021DA8  38 7E 2C D3 */	addi r3, r30, 0x2cd3
/* 813539AC 00021DAC  38 81 00 2C */	addi r4, r1, 0x2c
/* 813539B0 00021DB0  4C C6 31 82 */	crclr cr1eq
/* 813539B4 00021DB4  48 1D AC ED */	bl OSReport
/* 813539B8 00021DB8  7E 63 9B 78 */	mr r3, r19
/* 813539BC 00021DBC  7E 84 A3 78 */	mr r4, r20
/* 813539C0 00021DC0  7E C7 B3 78 */	mr r7, r22
/* 813539C4 00021DC4  7E E8 BB 78 */	mr r8, r23
/* 813539C8 00021DC8  38 A0 00 00 */	li r5, 0x0
/* 813539CC 00021DCC  38 C0 00 01 */	li r6, 0x1
/* 813539D0 00021DD0  4B FF FB D5 */	bl recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 813539D4 00021DD4  2C 0F FF FC */	cmpwi r15, -0x4
/* 813539D8 00021DD8  40 82 00 10 */	bne .L_813539E8
/* 813539DC 00021DDC  38 00 FF FB */	li r0, -0x5
/* 813539E0 00021DE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 813539E4 00021DE4  48 00 00 58 */	b .L_81353A3C
.L_813539E8:
/* 813539E8 00021DE8  38 00 FF FE */	li r0, -0x2
/* 813539EC 00021DEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 813539F0 00021DF0  48 00 00 4C */	b .L_81353A3C
.L_813539F4:
/* 813539F4 00021DF4  38 61 00 6C */	addi r3, r1, 0x6c
/* 813539F8 00021DF8  48 2A 55 05 */	bl strlen
/* 813539FC 00021DFC  7C 83 8A 14 */	add r4, r3, r17
/* 81353A00 00021E00  7E 86 A3 78 */	mr r6, r20
/* 81353A04 00021E04  38 7E 2D 01 */	addi r3, r30, 0x2d01
/* 81353A08 00021E08  38 A1 00 6C */	addi r5, r1, 0x6c
/* 81353A0C 00021E0C  38 84 00 01 */	addi r4, r4, 0x1
/* 81353A10 00021E10  4C C6 31 82 */	crclr cr1eq
/* 81353A14 00021E14  48 1D AC 8D */	bl OSReport
.L_81353A18:
/* 81353A18 00021E18  3B 5A 00 01 */	addi r26, r26, 0x1
.L_81353A1C:
/* 81353A1C 00021E1C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81353A20 00021E20  7C 1A 00 40 */	cmplw r26, r0
/* 81353A24 00021E24  41 80 FD 5C */	blt .L_81353780
.L_81353A28:
/* 81353A28 00021E28  38 61 00 14 */	addi r3, r1, 0x14
/* 81353A2C 00021E2C  38 81 00 6C */	addi r4, r1, 0x6c
/* 81353A30 00021E30  48 00 12 21 */	bl iplNandSD_81354C50
/* 81353A34 00021E34  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353A38 00021E38  40 82 FC BC */	bne .L_813536F4
.L_81353A3C:
/* 81353A3C 00021E3C  80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353A40 00021E40  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81353A44 00021E44  3C 63 00 02 */	addis r3, r3, 0x2
/* 81353A48 00021E48  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353A4C 00021E4C  48 20 6F B9 */	bl fn_8155AA04
/* 81353A50 00021E50  80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353A54 00021E54  7F A4 EB 78 */	mr r4, r29
/* 81353A58 00021E58  3C 63 00 02 */	addis r3, r3, 0x2
/* 81353A5C 00021E5C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353A60 00021E60  48 20 6F A5 */	bl fn_8155AA04
/* 81353A64 00021E64  2C 17 00 00 */	cmpwi r23, 0x0
/* 81353A68 00021E68  41 82 00 18 */	beq .L_81353A80
/* 81353A6C 00021E6C  80 73 00 00 */	lwz r3, 0x0(r19)
/* 81353A70 00021E70  7F 84 E3 78 */	mr r4, r28
/* 81353A74 00021E74  3C 63 00 02 */	addis r3, r3, 0x2
/* 81353A78 00021E78  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81353A7C 00021E7C  48 20 6F 89 */	bl fn_8155AA04
.L_81353A80:
/* 81353A80 00021E80  39 61 01 00 */	addi r11, r1, 0x100
/* 81353A84 00021E84  80 61 00 0C */	lwz r3, 0xc(r1)
/* 81353A88 00021E88  48 2A 5A 55 */	bl _restgpr_15
/* 81353A8C 00021E8C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 81353A90 00021E90  7C 08 03 A6 */	mtlr r0
/* 81353A94 00021E94  38 21 01 00 */	addi r1, r1, 0x100
/* 81353A98 00021E98  4E 80 00 20 */	blr
.endfn recursion_nand__Q23ipl12NandSDWorkerFPCcPCcQ33ipl12NandSDWorker16RecursiveProcessPPCcUl

# .text:0xB6B0 | 0x81353A9C | size: 0x110
# ipl::NandSDWorker::nand_get_length(const char*)
.fn nand_get_length__Q23ipl12NandSDWorkerFPCc, global
/* 81353A9C 00021E9C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 81353AA0 00021EA0  7C 08 02 A6 */	mflr r0
/* 81353AA4 00021EA4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 81353AA8 00021EA8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 81353AAC 00021EAC  48 2A 5A 15 */	bl _savegpr_27
/* 81353AB0 00021EB0  38 00 00 00 */	li r0, 0x0
/* 81353AB4 00021EB4  7C 9C 23 78 */	mr r28, r4
/* 81353AB8 00021EB8  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81353ABC 00021EBC  90 01 00 08 */	stw r0, 0x8(r1)
/* 81353AC0 00021EC0  7C 7B 1B 78 */	mr r27, r3
/* 81353AC4 00021EC4  7F 83 E3 78 */	mr r3, r28
/* 81353AC8 00021EC8  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81353ACC 00021ECC  38 81 00 0C */	addi r4, r1, 0xc
/* 81353AD0 00021ED0  38 A0 00 01 */	li r5, 0x1
/* 81353AD4 00021ED4  48 00 C7 85 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 81353AD8 00021ED8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353ADC 00021EDC  41 82 00 20 */	beq .L_81353AFC
/* 81353AE0 00021EE0  7C 65 1B 78 */	mr r5, r3
/* 81353AE4 00021EE4  7F 84 E3 78 */	mr r4, r28
/* 81353AE8 00021EE8  38 7F 2D 26 */	addi r3, r31, 0x2d26
/* 81353AEC 00021EEC  4C C6 31 82 */	crclr cr1eq
/* 81353AF0 00021EF0  48 1D AB B1 */	bl OSReport
/* 81353AF4 00021EF4  38 60 FF FE */	li r3, -0x2
/* 81353AF8 00021EF8  48 00 00 9C */	b .L_81353B94
.L_81353AFC:
/* 81353AFC 00021EFC  38 61 00 0C */	addi r3, r1, 0xc
/* 81353B00 00021F00  38 81 00 08 */	addi r4, r1, 0x8
/* 81353B04 00021F04  48 00 C3 C1 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 81353B08 00021F08  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353B0C 00021F0C  41 82 00 20 */	beq .L_81353B2C
/* 81353B10 00021F10  7C 65 1B 78 */	mr r5, r3
/* 81353B14 00021F14  7F 84 E3 78 */	mr r4, r28
/* 81353B18 00021F18  38 7F 2D 53 */	addi r3, r31, 0x2d53
/* 81353B1C 00021F1C  4C C6 31 82 */	crclr cr1eq
/* 81353B20 00021F20  48 1D AB 81 */	bl OSReport
/* 81353B24 00021F24  3B A0 FF FE */	li r29, -0x2
/* 81353B28 00021F28  48 00 00 1C */	b .L_81353B44
.L_81353B2C:
/* 81353B2C 00021F2C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81353B30 00021F30  7F 84 E3 78 */	mr r4, r28
/* 81353B34 00021F34  38 7F 2D 7E */	addi r3, r31, 0x2d7e
/* 81353B38 00021F38  4C C6 31 82 */	crclr cr1eq
/* 81353B3C 00021F3C  48 1D AB 65 */	bl OSReport
/* 81353B40 00021F40  83 A1 00 08 */	lwz r29, 0x8(r1)
.L_81353B44:
/* 81353B44 00021F44  38 61 00 0C */	addi r3, r1, 0xc
/* 81353B48 00021F48  48 00 C1 BD */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 81353B4C 00021F4C  7C 7E 1B 78 */	mr r30, r3
/* 81353B50 00021F50  7F 63 DB 78 */	mr r3, r27
/* 81353B54 00021F54  7F C4 F3 78 */	mr r4, r30
/* 81353B58 00021F58  38 A0 00 00 */	li r5, 0x0
/* 81353B5C 00021F5C  48 00 00 FD */	bl check_nand_corrupt__Q23ipl12NandSDWorkerFlPl
/* 81353B60 00021F60  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353B64 00021F64  41 82 00 0C */	beq .L_81353B70
/* 81353B68 00021F68  38 60 FF FB */	li r3, -0x5
/* 81353B6C 00021F6C  48 00 00 28 */	b .L_81353B94
.L_81353B70:
/* 81353B70 00021F70  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81353B74 00021F74  41 82 00 1C */	beq .L_81353B90
/* 81353B78 00021F78  7F 84 E3 78 */	mr r4, r28
/* 81353B7C 00021F7C  7F C5 F3 78 */	mr r5, r30
/* 81353B80 00021F80  38 7F 2D A0 */	addi r3, r31, 0x2da0
/* 81353B84 00021F84  4C C6 31 82 */	crclr cr1eq
/* 81353B88 00021F88  48 1D AB 19 */	bl OSReport
/* 81353B8C 00021F8C  3B A0 FF FE */	li r29, -0x2
.L_81353B90:
/* 81353B90 00021F90  7F A3 EB 78 */	mr r3, r29
.L_81353B94:
/* 81353B94 00021F94  39 61 00 B0 */	addi r11, r1, 0xb0
/* 81353B98 00021F98  48 2A 59 75 */	bl _restgpr_27
/* 81353B9C 00021F9C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81353BA0 00021FA0  7C 08 03 A6 */	mtlr r0
/* 81353BA4 00021FA4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 81353BA8 00021FA8  4E 80 00 20 */	blr
.endfn nand_get_length__Q23ipl12NandSDWorkerFPCc

# .text:0xB7C0 | 0x81353BAC | size: 0xAC
# ipl::NandSDWorker::change_uid(unsigned long long)
.fn change_uid__Q23ipl12NandSDWorkerFUx, global
/* 81353BAC 00021FAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81353BB0 00021FB0  7C 08 02 A6 */	mflr r0
/* 81353BB4 00021FB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 81353BB8 00021FB8  39 61 00 20 */	addi r11, r1, 0x20
/* 81353BBC 00021FBC  48 2A 59 0D */	bl _savegpr_29
/* 81353BC0 00021FC0  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81353BC4 00021FC4  7C 7D 1B 78 */	mr r29, r3
/* 81353BC8 00021FC8  7C BF 2B 78 */	mr r31, r5
/* 81353BCC 00021FCC  7C DE 33 78 */	mr r30, r6
/* 81353BD0 00021FD0  3C 64 00 04 */	addis r3, r4, 0x4
/* 81353BD4 00021FD4  80 03 EA 50 */	lwz r0, -0x15b0(r3)
/* 81353BD8 00021FD8  80 63 EA 54 */	lwz r3, -0x15ac(r3)
/* 81353BDC 00021FDC  7C 00 2A 78 */	xor r0, r0, r5
/* 81353BE0 00021FE0  7C 63 32 78 */	xor r3, r3, r6
/* 81353BE4 00021FE4  7C 60 03 79 */	or. r0, r3, r0
/* 81353BE8 00021FE8  41 82 00 54 */	beq .L_81353C3C
/* 81353BEC 00021FEC  7F C4 F3 78 */	mr r4, r30
/* 81353BF0 00021FF0  7F E3 FB 78 */	mr r3, r31
/* 81353BF4 00021FF4  48 26 B2 C5 */	bl fn_815BEEB8
/* 81353BF8 00021FF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353BFC 00021FFC  7C 64 1B 78 */	mr r4, r3
/* 81353C00 00022000  41 82 00 24 */	beq .L_81353C24
/* 81353C04 00022004  3C 60 81 64 */	lis r3, lbl_8163884F@ha
/* 81353C08 00022008  7F C6 F3 78 */	mr r6, r30
/* 81353C0C 0002200C  7F E5 FB 78 */	mr r5, r31
/* 81353C10 00022010  38 63 88 4F */	addi r3, r3, lbl_8163884F@l
/* 81353C14 00022014  4C C6 31 82 */	crclr cr1eq
/* 81353C18 00022018  48 1D AA 89 */	bl OSReport
/* 81353C1C 0002201C  38 60 00 00 */	li r3, 0x0
/* 81353C20 00022020  48 00 00 20 */	b .L_81353C40
.L_81353C24:
/* 81353C24 00022024  48 22 08 81 */	bl fn_815744A4
/* 81353C28 00022028  48 22 07 49 */	bl ISFS_OpenLib
/* 81353C2C 0002202C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81353C30 00022030  3C 63 00 04 */	addis r3, r3, 0x4
/* 81353C34 00022034  93 C3 EA 54 */	stw r30, -0x15ac(r3)
/* 81353C38 00022038  93 E3 EA 50 */	stw r31, -0x15b0(r3)
.L_81353C3C:
/* 81353C3C 0002203C  38 60 00 01 */	li r3, 0x1
.L_81353C40:
/* 81353C40 00022040  39 61 00 20 */	addi r11, r1, 0x20
/* 81353C44 00022044  48 2A 58 D1 */	bl _restgpr_29
/* 81353C48 00022048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81353C4C 0002204C  7C 08 03 A6 */	mtlr r0
/* 81353C50 00022050  38 21 00 20 */	addi r1, r1, 0x20
/* 81353C54 00022054  4E 80 00 20 */	blr
.endfn change_uid__Q23ipl12NandSDWorkerFUx

# .text:0xB86C | 0x81353C58 | size: 0x5C
# ipl::NandSDWorker::check_nand_corrupt(long, long*)
.fn check_nand_corrupt__Q23ipl12NandSDWorkerFlPl, global
/* 81353C58 00022058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81353C5C 0002205C  7C 08 02 A6 */	mflr r0
/* 81353C60 00022060  2C 04 FF FC */	cmpwi r4, -0x4
/* 81353C64 00022064  90 01 00 14 */	stw r0, 0x14(r1)
/* 81353C68 00022068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81353C6C 0002206C  7C BF 2B 78 */	mr r31, r5
/* 81353C70 00022070  40 82 00 2C */	bne .L_81353C9C
/* 81353C74 00022074  3C 60 81 64 */	lis r3, lbl_81638870@ha
/* 81353C78 00022078  38 63 88 70 */	addi r3, r3, lbl_81638870@l
/* 81353C7C 0002207C  4C C6 31 82 */	crclr cr1eq
/* 81353C80 00022080  48 1D AA 21 */	bl OSReport
/* 81353C84 00022084  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81353C88 00022088  41 82 00 0C */	beq .L_81353C94
/* 81353C8C 0002208C  38 00 FF FB */	li r0, -0x5
/* 81353C90 00022090  90 1F 00 00 */	stw r0, 0x0(r31)
.L_81353C94:
/* 81353C94 00022094  38 60 00 01 */	li r3, 0x1
/* 81353C98 00022098  48 00 00 08 */	b .L_81353CA0
.L_81353C9C:
/* 81353C9C 0002209C  38 60 00 00 */	li r3, 0x0
.L_81353CA0:
/* 81353CA0 000220A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81353CA4 000220A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81353CA8 000220A8  7C 08 03 A6 */	mtlr r0
/* 81353CAC 000220AC  38 21 00 10 */	addi r1, r1, 0x10
/* 81353CB0 000220B0  4E 80 00 20 */	blr
.endfn check_nand_corrupt__Q23ipl12NandSDWorkerFlPl

# .text:0xB8C8 | 0x81353CB4 | size: 0x14C
# ipl::NandSDWorker::handle_sd_error(long, long*)
.fn handle_sd_error__Q23ipl12NandSDWorkerFlPl, global
/* 81353CB4 000220B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81353CB8 000220B8  7C 08 02 A6 */	mflr r0
/* 81353CBC 000220BC  2C 04 00 00 */	cmpwi r4, 0x0
/* 81353CC0 000220C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81353CC4 000220C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81353CC8 000220C8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81353CCC 000220CC  7C BE 2B 78 */	mr r30, r5
/* 81353CD0 000220D0  40 82 00 0C */	bne .L_81353CDC
/* 81353CD4 000220D4  38 60 00 00 */	li r3, 0x0
/* 81353CD8 000220D8  48 00 01 10 */	b .L_81353DE8
.L_81353CDC:
/* 81353CDC 000220DC  3B E0 FF FE */	li r31, -0x2
/* 81353CE0 000220E0  48 29 42 C9 */	bl fn_815E7FA8
/* 81353CE4 000220E4  2C 03 00 15 */	cmpwi r3, 0x15
/* 81353CE8 000220E8  40 80 00 6C */	bge .L_81353D54
/* 81353CEC 000220EC  2C 03 00 08 */	cmpwi r3, 0x8
/* 81353CF0 000220F0  41 82 00 CC */	beq .L_81353DBC
/* 81353CF4 000220F4  40 80 00 30 */	bge .L_81353D24
/* 81353CF8 000220F8  2C 03 00 03 */	cmpwi r3, 0x3
/* 81353CFC 000220FC  40 80 00 1C */	bge .L_81353D18
/* 81353D00 00022100  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353D04 00022104  41 82 00 BC */	beq .L_81353DC0
/* 81353D08 00022108  40 80 00 9C */	bge .L_81353DA4
/* 81353D0C 0002210C  2C 03 FF FF */	cmpwi r3, -0x1
/* 81353D10 00022110  40 80 00 94 */	bge .L_81353DA4
/* 81353D14 00022114  48 00 00 AC */	b .L_81353DC0
.L_81353D18:
/* 81353D18 00022118  2C 03 00 05 */	cmpwi r3, 0x5
/* 81353D1C 0002211C  41 82 00 A0 */	beq .L_81353DBC
/* 81353D20 00022120  48 00 00 A0 */	b .L_81353DC0
.L_81353D24:
/* 81353D24 00022124  2C 03 00 0E */	cmpwi r3, 0xe
/* 81353D28 00022128  40 80 00 18 */	bge .L_81353D40
/* 81353D2C 0002212C  2C 03 00 0C */	cmpwi r3, 0xc
/* 81353D30 00022130  40 80 00 74 */	bge .L_81353DA4
/* 81353D34 00022134  2C 03 00 0A */	cmpwi r3, 0xa
/* 81353D38 00022138  40 80 00 88 */	bge .L_81353DC0
/* 81353D3C 0002213C  48 00 00 68 */	b .L_81353DA4
.L_81353D40:
/* 81353D40 00022140  2C 03 00 12 */	cmpwi r3, 0x12
/* 81353D44 00022144  40 80 00 7C */	bge .L_81353DC0
/* 81353D48 00022148  2C 03 00 10 */	cmpwi r3, 0x10
/* 81353D4C 0002214C  40 80 00 58 */	bge .L_81353DA4
/* 81353D50 00022150  48 00 00 70 */	b .L_81353DC0
.L_81353D54:
/* 81353D54 00022154  2C 03 00 58 */	cmpwi r3, 0x58
/* 81353D58 00022158  41 82 00 4C */	beq .L_81353DA4
/* 81353D5C 0002215C  40 80 00 30 */	bge .L_81353D8C
/* 81353D60 00022160  2C 03 00 1C */	cmpwi r3, 0x1c
/* 81353D64 00022164  41 82 00 48 */	beq .L_81353DAC
/* 81353D68 00022168  40 80 00 18 */	bge .L_81353D80
/* 81353D6C 0002216C  2C 03 00 1B */	cmpwi r3, 0x1b
/* 81353D70 00022170  40 80 00 34 */	bge .L_81353DA4
/* 81353D74 00022174  2C 03 00 19 */	cmpwi r3, 0x19
/* 81353D78 00022178  40 80 00 48 */	bge .L_81353DC0
/* 81353D7C 0002217C  48 00 00 28 */	b .L_81353DA4
.L_81353D80:
/* 81353D80 00022180  2C 03 00 2E */	cmpwi r3, 0x2e
/* 81353D84 00022184  41 82 00 20 */	beq .L_81353DA4
/* 81353D88 00022188  48 00 00 38 */	b .L_81353DC0
.L_81353D8C:
/* 81353D8C 0002218C  2C 03 00 C9 */	cmpwi r3, 0xc9
/* 81353D90 00022190  41 82 00 24 */	beq .L_81353DB4
/* 81353D94 00022194  40 80 00 2C */	bge .L_81353DC0
/* 81353D98 00022198  2C 03 00 5A */	cmpwi r3, 0x5a
/* 81353D9C 0002219C  41 82 00 08 */	beq .L_81353DA4
/* 81353DA0 000221A0  48 00 00 20 */	b .L_81353DC0
.L_81353DA4:
/* 81353DA4 000221A4  3B E0 FF FE */	li r31, -0x2
/* 81353DA8 000221A8  48 00 00 18 */	b .L_81353DC0
.L_81353DAC:
/* 81353DAC 000221AC  3B E0 FF F9 */	li r31, -0x7
/* 81353DB0 000221B0  48 00 00 10 */	b .L_81353DC0
.L_81353DB4:
/* 81353DB4 000221B4  3B E0 FF F5 */	li r31, -0xb
/* 81353DB8 000221B8  48 00 00 08 */	b .L_81353DC0
.L_81353DBC:
/* 81353DBC 000221BC  3B E0 FF FE */	li r31, -0x2
.L_81353DC0:
/* 81353DC0 000221C0  48 29 41 E9 */	bl fn_815E7FA8
/* 81353DC4 000221C4  3C A0 81 64 */	lis r5, lbl_81638894@ha
/* 81353DC8 000221C8  7C 64 1B 78 */	mr r4, r3
/* 81353DCC 000221CC  38 65 88 94 */	addi r3, r5, lbl_81638894@l
/* 81353DD0 000221D0  4C C6 31 82 */	crclr cr1eq
/* 81353DD4 000221D4  48 1D A8 CD */	bl OSReport
/* 81353DD8 000221D8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81353DDC 000221DC  41 82 00 08 */	beq .L_81353DE4
/* 81353DE0 000221E0  93 FE 00 00 */	stw r31, 0x0(r30)
.L_81353DE4:
/* 81353DE4 000221E4  7F E3 FB 78 */	mr r3, r31
.L_81353DE8:
/* 81353DE8 000221E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81353DEC 000221EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81353DF0 000221F0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81353DF4 000221F4  7C 08 03 A6 */	mtlr r0
/* 81353DF8 000221F8  38 21 00 10 */	addi r1, r1, 0x10
/* 81353DFC 000221FC  4E 80 00 20 */	blr
.endfn handle_sd_error__Q23ipl12NandSDWorkerFlPl

# .text:0xBA14 | 0x81353E00 | size: 0x84
# ipl::NandSDWorker::handle_sd_error_for_entry(long, long*)
.fn handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl, global
/* 81353E00 00022200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81353E04 00022204  7C 08 02 A6 */	mflr r0
/* 81353E08 00022208  90 01 00 24 */	stw r0, 0x24(r1)
/* 81353E0C 0002220C  39 61 00 20 */	addi r11, r1, 0x20
/* 81353E10 00022210  48 2A 56 B9 */	bl _savegpr_29
/* 81353E14 00022214  2C 04 00 00 */	cmpwi r4, 0x0
/* 81353E18 00022218  7C 7D 1B 78 */	mr r29, r3
/* 81353E1C 0002221C  7C 9E 23 78 */	mr r30, r4
/* 81353E20 00022220  7C BF 2B 78 */	mr r31, r5
/* 81353E24 00022224  40 82 00 0C */	bne .L_81353E30
/* 81353E28 00022228  38 60 00 00 */	li r3, 0x0
/* 81353E2C 0002222C  48 00 00 40 */	b .L_81353E6C
.L_81353E30:
/* 81353E30 00022230  48 29 41 79 */	bl fn_815E7FA8
/* 81353E34 00022234  2C 03 00 02 */	cmpwi r3, 0x2
/* 81353E38 00022238  41 82 00 0C */	beq .L_81353E44
/* 81353E3C 0002223C  2C 03 00 16 */	cmpwi r3, 0x16
/* 81353E40 00022240  40 82 00 1C */	bne .L_81353E5C
.L_81353E44:
/* 81353E44 00022244  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81353E48 00022248  41 82 00 0C */	beq .L_81353E54
/* 81353E4C 0002224C  38 00 FF FE */	li r0, -0x2
/* 81353E50 00022250  90 1F 00 00 */	stw r0, 0x0(r31)
.L_81353E54:
/* 81353E54 00022254  38 60 FF FE */	li r3, -0x2
/* 81353E58 00022258  48 00 00 14 */	b .L_81353E6C
.L_81353E5C:
/* 81353E5C 0002225C  7F A3 EB 78 */	mr r3, r29
/* 81353E60 00022260  7F C4 F3 78 */	mr r4, r30
/* 81353E64 00022264  7F E5 FB 78 */	mr r5, r31
/* 81353E68 00022268  4B FF FE 4D */	bl handle_sd_error__Q23ipl12NandSDWorkerFlPl
.L_81353E6C:
/* 81353E6C 0002226C  39 61 00 20 */	addi r11, r1, 0x20
/* 81353E70 00022270  48 2A 56 A5 */	bl _restgpr_29
/* 81353E74 00022274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81353E78 00022278  7C 08 03 A6 */	mtlr r0
/* 81353E7C 0002227C  38 21 00 20 */	addi r1, r1, 0x20
/* 81353E80 00022280  4E 80 00 20 */	blr
.endfn handle_sd_error_for_entry__Q23ipl12NandSDWorkerFlPl

# .text:0xBA98 | 0x81353E84 | size: 0x18
# ipl::NandSDWorker::is_all_region(unsigned long long)
.fn is_all_region__Q23ipl12NandSDWorkerFUx, global
/* 81353E84 00022284  54 C0 06 3E */	clrlwi r0, r6, 24
/* 81353E88 00022288  7C 03 07 74 */	extsb r3, r0
/* 81353E8C 0002228C  38 03 FF BF */	subi r0, r3, 0x41
/* 81353E90 00022290  7C 00 00 34 */	cntlzw r0, r0
/* 81353E94 00022294  54 03 D9 7E */	srwi r3, r0, 5
/* 81353E98 00022298  4E 80 00 20 */	blr
.endfn is_all_region__Q23ipl12NandSDWorkerFUx

# .text:0xBAB0 | 0x81353E9C | size: 0x30
# ipl::NandSDWorker::is_same_title(unsigned long long, unsigned long long)
.fn is_same_title__Q23ipl12NandSDWorkerFUxUx, global
/* 81353E9C 0002229C  38 60 FF 00 */	li r3, -0x100
/* 81353EA0 000222A0  38 00 FF FF */	li r0, -0x1
/* 81353EA4 000222A4  7C C6 18 38 */	and r6, r6, r3
/* 81353EA8 000222A8  7D 03 18 38 */	and r3, r8, r3
/* 81353EAC 000222AC  7C A4 00 38 */	and r4, r5, r0
/* 81353EB0 000222B0  7C E0 00 38 */	and r0, r7, r0
/* 81353EB4 000222B4  7C C3 1A 78 */	xor r3, r6, r3
/* 81353EB8 000222B8  7C 80 02 78 */	xor r0, r4, r0
/* 81353EBC 000222BC  7C 60 03 78 */	or r0, r3, r0
/* 81353EC0 000222C0  7C 00 00 34 */	cntlzw r0, r0
/* 81353EC4 000222C4  54 03 D9 7E */	srwi r3, r0, 5
/* 81353EC8 000222C8  4E 80 00 20 */	blr
.endfn is_same_title__Q23ipl12NandSDWorkerFUxUx

# .text:0xBAE0 | 0x81353ECC | size: 0x10C
# ipl::NandSDWorker::item_exist_nand_save_folder(unsigned long long, const char*)
.fn item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc, global
/* 81353ECC 000222CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81353ED0 000222D0  7C 08 02 A6 */	mflr r0
/* 81353ED4 000222D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 81353ED8 000222D8  39 61 00 70 */	addi r11, r1, 0x70
/* 81353EDC 000222DC  48 2A 55 E5 */	bl _savegpr_27
/* 81353EE0 000222E0  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81353EE4 000222E4  7C 7B 1B 78 */	mr r27, r3
/* 81353EE8 000222E8  7C BD 2B 78 */	mr r29, r5
/* 81353EEC 000222EC  7C DC 33 78 */	mr r28, r6
/* 81353EF0 000222F0  7C FE 3B 78 */	mr r30, r7
/* 81353EF4 000222F4  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81353EF8 000222F8  4B FF FC B5 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353EFC 000222FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353F00 00022300  40 82 00 0C */	bne .L_81353F0C
/* 81353F04 00022304  38 60 FF F2 */	li r3, -0xe
/* 81353F08 00022308  48 00 00 B8 */	b .L_81353FC0
.L_81353F0C:
/* 81353F0C 0002230C  38 00 FF FF */	li r0, -0x1
/* 81353F10 00022310  7F A6 EB 78 */	mr r6, r29
/* 81353F14 00022314  38 61 00 0C */	addi r3, r1, 0xc
/* 81353F18 00022318  38 BF 01 1C */	addi r5, r31, 0x11c
/* 81353F1C 0002231C  7F 87 00 38 */	and r7, r28, r0
/* 81353F20 00022320  38 80 00 40 */	li r4, 0x40
/* 81353F24 00022324  4C C6 31 82 */	crclr cr1eq
/* 81353F28 00022328  48 2A CA 81 */	bl fn_816009A8
/* 81353F2C 0002232C  38 61 00 0C */	addi r3, r1, 0xc
/* 81353F30 00022330  38 8D 81 A8 */	li r4, lbl_816961E8@sda21
/* 81353F34 00022334  38 A0 00 40 */	li r5, 0x40
/* 81353F38 00022338  48 2A E4 FD */	bl fn_81602434
/* 81353F3C 0002233C  7F C4 F3 78 */	mr r4, r30
/* 81353F40 00022340  38 61 00 0C */	addi r3, r1, 0xc
/* 81353F44 00022344  38 A0 00 40 */	li r5, 0x40
/* 81353F48 00022348  48 2A E4 ED */	bl fn_81602434
/* 81353F4C 0002234C  38 61 00 0C */	addi r3, r1, 0xc
/* 81353F50 00022350  38 A1 00 08 */	addi r5, r1, 0x8
/* 81353F54 00022354  38 80 00 00 */	li r4, 0x0
/* 81353F58 00022358  48 00 C0 05 */	bl ReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81353F5C 0002235C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81353F60 00022360  40 82 00 34 */	bne .L_81353F94
/* 81353F64 00022364  80 81 00 08 */	lwz r4, 0x8(r1)
/* 81353F68 00022368  38 7F 2E 31 */	addi r3, r31, 0x2e31
/* 81353F6C 0002236C  38 A1 00 0C */	addi r5, r1, 0xc
/* 81353F70 00022370  4C C6 31 82 */	crclr cr1eq
/* 81353F74 00022374  48 1D A7 2D */	bl OSReport
/* 81353F78 00022378  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81353F7C 0002237C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81353F80 00022380  41 82 00 0C */	beq .L_81353F8C
/* 81353F84 00022384  3B E0 00 01 */	li r31, 0x1
/* 81353F88 00022388  48 00 00 24 */	b .L_81353FAC
.L_81353F8C:
/* 81353F8C 0002238C  3B E0 00 00 */	li r31, 0x0
/* 81353F90 00022390  48 00 00 1C */	b .L_81353FAC
.L_81353F94:
/* 81353F94 00022394  7C 65 1B 78 */	mr r5, r3
/* 81353F98 00022398  38 7F 2E 4F */	addi r3, r31, 0x2e4f
/* 81353F9C 0002239C  38 81 00 0C */	addi r4, r1, 0xc
/* 81353FA0 000223A0  4C C6 31 82 */	crclr cr1eq
/* 81353FA4 000223A4  48 1D A6 FD */	bl OSReport
/* 81353FA8 000223A8  3B E0 00 00 */	li r31, 0x0
.L_81353FAC:
/* 81353FAC 000223AC  7F 63 DB 78 */	mr r3, r27
/* 81353FB0 000223B0  38 C0 00 02 */	li r6, 0x2
/* 81353FB4 000223B4  38 A0 00 01 */	li r5, 0x1
/* 81353FB8 000223B8  4B FF FB F5 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81353FBC 000223BC  7F E3 FB 78 */	mr r3, r31
.L_81353FC0:
/* 81353FC0 000223C0  39 61 00 70 */	addi r11, r1, 0x70
/* 81353FC4 000223C4  48 2A 55 49 */	bl _restgpr_27
/* 81353FC8 000223C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 81353FCC 000223CC  7C 08 03 A6 */	mtlr r0
/* 81353FD0 000223D0  38 21 00 70 */	addi r1, r1, 0x70
/* 81353FD4 000223D4  4E 80 00 20 */	blr
.endfn item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc

# .text:0xBBEC | 0x81353FD8 | size: 0x98
# ipl::NandSDWorker::encrypt(const void*, unsigned long, void*)
.fn encrypt__Q23ipl12NandSDWorkerFPCvUlPv, global
/* 81353FD8 000223D8  54 2B 06 FE */	clrlwi r11, r1, 27
/* 81353FDC 000223DC  7C 2C 0B 78 */	mr r12, r1
/* 81353FE0 000223E0  21 6B FF A0 */	subfic r11, r11, -0x60
/* 81353FE4 000223E4  7C 21 59 6E */	stwux r1, r1, r11
/* 81353FE8 000223E8  7C 08 02 A6 */	mflr r0
/* 81353FEC 000223EC  7D 8B 63 78 */	mr r11, r12
/* 81353FF0 000223F0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 81353FF4 000223F4  48 2A 54 D5 */	bl _savegpr_29
/* 81353FF8 000223F8  3C C0 81 61 */	lis r6, lbl_8160D638@ha
/* 81353FFC 000223FC  7C 7D 1B 78 */	mr r29, r3
/* 81354000 00022400  7C 9E 23 78 */	mr r30, r4
/* 81354004 00022404  7C BF 2B 78 */	mr r31, r5
/* 81354008 00022408  38 61 00 20 */	addi r3, r1, 0x20
/* 8135400C 0002240C  38 86 D6 38 */	addi r4, r6, lbl_8160D638@l
/* 81354010 00022410  38 A0 00 10 */	li r5, 0x10
/* 81354014 00022414  4B FD C2 1D */	bl memcpy
/* 81354018 00022418  7F A5 EB 78 */	mr r5, r29
/* 8135401C 0002241C  7F C6 F3 78 */	mr r6, r30
/* 81354020 00022420  7F E7 FB 78 */	mr r7, r31
/* 81354024 00022424  38 81 00 20 */	addi r4, r1, 0x20
/* 81354028 00022428  38 60 00 06 */	li r3, 0x6
/* 8135402C 0002242C  48 26 B3 85 */	bl fn_815BF3B0
/* 81354030 00022430  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354034 00022434  7C 7F 1B 78 */	mr r31, r3
/* 81354038 00022438  41 82 00 18 */	beq .L_81354050
/* 8135403C 0002243C  3C 60 81 64 */	lis r3, lbl_81638901@ha
/* 81354040 00022440  7F E4 FB 78 */	mr r4, r31
/* 81354044 00022444  38 63 89 01 */	addi r3, r3, lbl_81638901@l
/* 81354048 00022448  4C C6 31 82 */	crclr cr1eq
/* 8135404C 0002244C  48 1D A6 55 */	bl OSReport
.L_81354050:
/* 81354050 00022450  7F E3 FB 78 */	mr r3, r31
/* 81354054 00022454  81 41 00 00 */	lwz r10, 0x0(r1)
/* 81354058 00022458  7D 4B 53 78 */	mr r11, r10
/* 8135405C 0002245C  48 2A 54 B9 */	bl _restgpr_29
/* 81354060 00022460  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81354064 00022464  7C 08 03 A6 */	mtlr r0
/* 81354068 00022468  7D 41 53 78 */	mr r1, r10
/* 8135406C 0002246C  4E 80 00 20 */	blr
.endfn encrypt__Q23ipl12NandSDWorkerFPCvUlPv

# .text:0xBC84 | 0x81354070 | size: 0x98
# ipl::NandSDWorker::decrypt(const void*, unsigned long, void*)
.fn decrypt__Q23ipl12NandSDWorkerFPCvUlPv, global
/* 81354070 00022470  54 2B 06 FE */	clrlwi r11, r1, 27
/* 81354074 00022474  7C 2C 0B 78 */	mr r12, r1
/* 81354078 00022478  21 6B FF A0 */	subfic r11, r11, -0x60
/* 8135407C 0002247C  7C 21 59 6E */	stwux r1, r1, r11
/* 81354080 00022480  7C 08 02 A6 */	mflr r0
/* 81354084 00022484  7D 8B 63 78 */	mr r11, r12
/* 81354088 00022488  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8135408C 0002248C  48 2A 54 3D */	bl _savegpr_29
/* 81354090 00022490  3C C0 81 61 */	lis r6, lbl_8160D638@ha
/* 81354094 00022494  7C 7D 1B 78 */	mr r29, r3
/* 81354098 00022498  7C 9E 23 78 */	mr r30, r4
/* 8135409C 0002249C  7C BF 2B 78 */	mr r31, r5
/* 813540A0 000224A0  38 61 00 20 */	addi r3, r1, 0x20
/* 813540A4 000224A4  38 86 D6 38 */	addi r4, r6, lbl_8160D638@l
/* 813540A8 000224A8  38 A0 00 10 */	li r5, 0x10
/* 813540AC 000224AC  4B FD C1 85 */	bl memcpy
/* 813540B0 000224B0  7F A5 EB 78 */	mr r5, r29
/* 813540B4 000224B4  7F C6 F3 78 */	mr r6, r30
/* 813540B8 000224B8  7F E7 FB 78 */	mr r7, r31
/* 813540BC 000224BC  38 81 00 20 */	addi r4, r1, 0x20
/* 813540C0 000224C0  38 60 00 06 */	li r3, 0x6
/* 813540C4 000224C4  48 26 B3 85 */	bl fn_815BF448
/* 813540C8 000224C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813540CC 000224CC  7C 7F 1B 78 */	mr r31, r3
/* 813540D0 000224D0  41 82 00 18 */	beq .L_813540E8
/* 813540D4 000224D4  3C 60 81 64 */	lis r3, lbl_81638927@ha
/* 813540D8 000224D8  7F E4 FB 78 */	mr r4, r31
/* 813540DC 000224DC  38 63 89 27 */	addi r3, r3, lbl_81638927@l
/* 813540E0 000224E0  4C C6 31 82 */	crclr cr1eq
/* 813540E4 000224E4  48 1D A5 BD */	bl OSReport
.L_813540E8:
/* 813540E8 000224E8  7F E3 FB 78 */	mr r3, r31
/* 813540EC 000224EC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 813540F0 000224F0  7D 4B 53 78 */	mr r11, r10
/* 813540F4 000224F4  48 2A 54 21 */	bl _restgpr_29
/* 813540F8 000224F8  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 813540FC 000224FC  7C 08 03 A6 */	mtlr r0
/* 81354100 00022500  7D 41 53 78 */	mr r1, r10
/* 81354104 00022504  4E 80 00 20 */	blr
.endfn decrypt__Q23ipl12NandSDWorkerFPCvUlPv

# .text:0xBD1C | 0x81354108 | size: 0x1C
# ipl::NandSDWorker::is_fa_file(unsigned char)
.fn is_fa_file__Q23ipl12NandSDWorkerFUc, global
/* 81354108 00022508  54 80 06 F7 */	rlwinm. r0, r4, 0, 27, 27
/* 8135410C 0002250C  38 60 00 00 */	li r3, 0x0
/* 81354110 00022510  4C 82 00 20 */	bnelr
/* 81354114 00022514  54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 81354118 00022518  4C 82 00 20 */	bnelr
/* 8135411C 0002251C  38 60 00 01 */	li r3, 0x1
/* 81354120 00022520  4E 80 00 20 */	blr
.endfn is_fa_file__Q23ipl12NandSDWorkerFUc

# .text:0xBD38 | 0x81354124 | size: 0x180
# ipl::ut::FreeList::FreeList()
.fn __ct__Q33ipl2ut8FreeListFv, global
/* 81354124 00022524  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81354128 00022528  7C 08 02 A6 */	mflr r0
/* 8135412C 0002252C  90 01 00 34 */	stw r0, 0x34(r1)
/* 81354130 00022530  39 61 00 30 */	addi r11, r1, 0x30
/* 81354134 00022534  48 2A 53 8D */	bl _savegpr_27
/* 81354138 00022538  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8135413C 0002253C  7C 7B 1B 78 */	mr r27, r3
/* 81354140 00022540  3C 80 00 01 */	lis r4, 0x1
/* 81354144 00022544  7C BD 2B 78 */	mr r29, r5
/* 81354148 00022548  3C 67 00 02 */	addis r3, r7, 0x2
/* 8135414C 0002254C  7C DC 33 78 */	mr r28, r6
/* 81354150 00022550  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81354154 00022554  38 84 F0 A0 */	subi r4, r4, 0xf60
/* 81354158 00022558  38 A0 00 20 */	li r5, 0x20
/* 8135415C 0002255C  48 20 65 F9 */	bl fn_8155A754
/* 81354160 00022560  7C 7F 1B 78 */	mr r31, r3
/* 81354164 00022564  7F 63 DB 78 */	mr r3, r27
/* 81354168 00022568  7F 86 E3 78 */	mr r6, r28
/* 8135416C 0002256C  7F A5 EB 78 */	mr r5, r29
/* 81354170 00022570  7F E7 FB 78 */	mr r7, r31
/* 81354174 00022574  39 00 00 00 */	li r8, 0x0
/* 81354178 00022578  4B FF 6E D5 */	bl get_nand_save_banner__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFilePUl
/* 8135417C 0002257C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354180 00022580  7C 7E 1B 78 */	mr r30, r3
/* 81354184 00022584  40 82 00 E8 */	bne .L_8135426C
/* 81354188 00022588  7F 84 E3 78 */	mr r4, r28
/* 8135418C 0002258C  7F A3 EB 78 */	mr r3, r29
/* 81354190 00022590  4B FF 51 6D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81354194 00022594  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354198 00022598  41 82 00 0C */	beq .L_813541A4
/* 8135419C 0002259C  3B C0 00 05 */	li r30, 0x5
/* 813541A0 000225A0  48 00 00 CC */	b .L_8135426C
.L_813541A4:
/* 813541A4 000225A4  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813541A8 000225A8  54 00 07 FF */	clrlwi. r0, r0, 31
/* 813541AC 000225AC  41 82 00 0C */	beq .L_813541B8
/* 813541B0 000225B0  3B C0 00 01 */	li r30, 0x1
/* 813541B4 000225B4  48 00 00 B8 */	b .L_8135426C
.L_813541B8:
/* 813541B8 000225B8  80 ED 81 64 */	lwz r7, lbl_816961A4@sda21(r0)
/* 813541BC 000225BC  7F 63 DB 78 */	mr r3, r27
/* 813541C0 000225C0  7F 86 E3 78 */	mr r6, r28
/* 813541C4 000225C4  7F A5 EB 78 */	mr r5, r29
/* 813541C8 000225C8  4B FF FD 05 */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 813541CC 000225CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813541D0 000225D0  41 82 00 40 */	beq .L_81354210
/* 813541D4 000225D4  7F 63 DB 78 */	mr r3, r27
/* 813541D8 000225D8  7F 86 E3 78 */	mr r6, r28
/* 813541DC 000225DC  7F A5 EB 78 */	mr r5, r29
/* 813541E0 000225E0  38 E1 00 08 */	addi r7, r1, 0x8
/* 813541E4 000225E4  48 00 00 C1 */	bl init__Q33ipl2ut8FreeListFPvUlUl
/* 813541E8 000225E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813541EC 000225EC  7C 7E 1B 78 */	mr r30, r3
/* 813541F0 000225F0  40 82 00 7C */	bne .L_8135426C
/* 813541F4 000225F4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 813541F8 000225F8  28 00 00 02 */	cmplwi r0, 0x2
/* 813541FC 000225FC  40 82 00 0C */	bne .L_81354208
/* 81354200 00022600  3B C0 00 01 */	li r30, 0x1
/* 81354204 00022604  48 00 00 68 */	b .L_8135426C
.L_81354208:
/* 81354208 00022608  3B C0 00 02 */	li r30, 0x2
/* 8135420C 0002260C  48 00 00 60 */	b .L_8135426C
.L_81354210:
/* 81354210 00022610  80 ED 81 68 */	lwz r7, lbl_816961A8@sda21(r0)
/* 81354214 00022614  7F 63 DB 78 */	mr r3, r27
/* 81354218 00022618  7F 86 E3 78 */	mr r6, r28
/* 8135421C 0002261C  7F A5 EB 78 */	mr r5, r29
/* 81354220 00022620  4B FF FC AD */	bl item_exist_nand_save_folder__Q23ipl12NandSDWorkerFUxPCc
/* 81354224 00022624  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354228 00022628  41 82 00 40 */	beq .L_81354268
/* 8135422C 0002262C  7F 63 DB 78 */	mr r3, r27
/* 81354230 00022630  7F 86 E3 78 */	mr r6, r28
/* 81354234 00022634  7F A5 EB 78 */	mr r5, r29
/* 81354238 00022638  38 E1 00 08 */	addi r7, r1, 0x8
/* 8135423C 0002263C  48 00 00 69 */	bl init__Q33ipl2ut8FreeListFPvUlUl
/* 81354240 00022640  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354244 00022644  7C 7E 1B 78 */	mr r30, r3
/* 81354248 00022648  40 82 00 24 */	bne .L_8135426C
/* 8135424C 0002264C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81354250 00022650  28 00 00 02 */	cmplwi r0, 0x2
/* 81354254 00022654  40 82 00 0C */	bne .L_81354260
/* 81354258 00022658  3B C0 00 03 */	li r30, 0x3
/* 8135425C 0002265C  48 00 00 10 */	b .L_8135426C
.L_81354260:
/* 81354260 00022660  3B C0 00 04 */	li r30, 0x4
/* 81354264 00022664  48 00 00 08 */	b .L_8135426C
.L_81354268:
/* 81354268 00022668  3B C0 00 00 */	li r30, 0x0
.L_8135426C:
/* 8135426C 0002266C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81354270 00022670  41 82 00 18 */	beq .L_81354288
/* 81354274 00022674  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81354278 00022678  7F E4 FB 78 */	mr r4, r31
/* 8135427C 0002267C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81354280 00022680  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81354284 00022684  48 20 67 81 */	bl fn_8155AA04
.L_81354288:
/* 81354288 00022688  39 61 00 30 */	addi r11, r1, 0x30
/* 8135428C 0002268C  7F C3 F3 78 */	mr r3, r30
/* 81354290 00022690  48 2A 52 7D */	bl _restgpr_27
/* 81354294 00022694  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81354298 00022698  7C 08 03 A6 */	mtlr r0
/* 8135429C 0002269C  38 21 00 30 */	addi r1, r1, 0x30
/* 813542A0 000226A0  4E 80 00 20 */	blr
.endfn __ct__Q33ipl2ut8FreeListFv

# .text:0xBEB8 | 0x813542A4 | size: 0xBC
# ipl::ut::FreeList::init(void*, unsigned long, unsigned long)
.fn init__Q33ipl2ut8FreeListFPvUlUl, global
/* 813542A4 000226A4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813542A8 000226A8  7C 08 02 A6 */	mflr r0
/* 813542AC 000226AC  90 01 00 64 */	stw r0, 0x64(r1)
/* 813542B0 000226B0  39 61 00 60 */	addi r11, r1, 0x60
/* 813542B4 000226B4  48 2A 52 11 */	bl _savegpr_28
/* 813542B8 000226B8  7C 7C 1B 78 */	mr r28, r3
/* 813542BC 000226BC  7C BE 2B 78 */	mr r30, r5
/* 813542C0 000226C0  7C DD 33 78 */	mr r29, r6
/* 813542C4 000226C4  7C FF 3B 78 */	mr r31, r7
/* 813542C8 000226C8  4B FF F8 E5 */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 813542CC 000226CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813542D0 000226D0  40 82 00 0C */	bne .L_813542DC
/* 813542D4 000226D4  38 60 FF F2 */	li r3, -0xe
/* 813542D8 000226D8  48 00 00 70 */	b .L_81354348
.L_813542DC:
/* 813542DC 000226DC  3C A0 81 63 */	lis r5, lbl_81635BA4@ha
/* 813542E0 000226E0  38 00 FF FF */	li r0, -0x1
/* 813542E4 000226E4  7F C6 F3 78 */	mr r6, r30
/* 813542E8 000226E8  38 61 00 08 */	addi r3, r1, 0x8
/* 813542EC 000226EC  38 A5 5B A4 */	addi r5, r5, lbl_81635BA4@l
/* 813542F0 000226F0  7F A7 00 38 */	and r7, r29, r0
/* 813542F4 000226F4  38 80 00 40 */	li r4, 0x40
/* 813542F8 000226F8  4C C6 31 82 */	crclr cr1eq
/* 813542FC 000226FC  48 2A C6 AD */	bl fn_816009A8
/* 81354300 00022700  7F E5 FB 78 */	mr r5, r31
/* 81354304 00022704  38 61 00 08 */	addi r3, r1, 0x8
/* 81354308 00022708  38 80 00 00 */	li r4, 0x0
/* 8135430C 0002270C  48 00 BC 51 */	bl ReadDir__Q33ipl4nand7wrapperFPCcPcPUl
/* 81354310 00022710  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354314 00022714  7C 7F 1B 78 */	mr r31, r3
/* 81354318 00022718  41 82 00 1C */	beq .L_81354334
/* 8135431C 0002271C  3C 60 81 64 */	lis r3, lbl_816388D7@ha
/* 81354320 00022720  7F E5 FB 78 */	mr r5, r31
/* 81354324 00022724  38 63 88 D7 */	addi r3, r3, lbl_816388D7@l
/* 81354328 00022728  38 81 00 08 */	addi r4, r1, 0x8
/* 8135432C 0002272C  4C C6 31 82 */	crclr cr1eq
/* 81354330 00022730  48 1D A3 71 */	bl OSReport
.L_81354334:
/* 81354334 00022734  7F 83 E3 78 */	mr r3, r28
/* 81354338 00022738  38 C0 00 02 */	li r6, 0x2
/* 8135433C 0002273C  38 A0 00 01 */	li r5, 0x1
/* 81354340 00022740  4B FF F8 6D */	bl change_uid__Q23ipl12NandSDWorkerFUx
/* 81354344 00022744  7F E3 FB 78 */	mr r3, r31
.L_81354348:
/* 81354348 00022748  39 61 00 60 */	addi r11, r1, 0x60
/* 8135434C 0002274C  48 2A 51 C5 */	bl _restgpr_28
/* 81354350 00022750  80 01 00 64 */	lwz r0, 0x64(r1)
/* 81354354 00022754  7C 08 03 A6 */	mtlr r0
/* 81354358 00022758  38 21 00 60 */	addi r1, r1, 0x60
/* 8135435C 0002275C  4E 80 00 20 */	blr
.endfn init__Q33ipl2ut8FreeListFPvUlUl

# .text:0xBF74 | 0x81354360 | size: 0x58
# ipl::ut::FreeList::get()
.fn get__Q33ipl2ut8FreeListFv, global
/* 81354360 00022760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354364 00022764  7C 08 02 A6 */	mflr r0
/* 81354368 00022768  7C 86 23 78 */	mr r6, r4
/* 8135436C 0002276C  38 A0 00 00 */	li r5, 0x0
/* 81354370 00022770  90 01 00 14 */	stw r0, 0x14(r1)
/* 81354374 00022774  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81354378 00022778  3C 87 00 02 */	addis r4, r7, 0x2
/* 8135437C 0002277C  38 84 E6 6C */	subi r4, r4, 0x1994
/* 81354380 00022780  4B FF E8 35 */	bl find_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
/* 81354384 00022784  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354388 00022788  41 82 00 10 */	beq .L_81354398
/* 8135438C 0002278C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 81354390 00022790  2C 00 00 00 */	cmpwi r0, 0x0
/* 81354394 00022794  40 82 00 0C */	bne .L_813543A0
.L_81354398:
/* 81354398 00022798  38 60 FF FE */	li r3, -0x2
/* 8135439C 0002279C  48 00 00 0C */	b .L_813543A8
.L_813543A0:
/* 813543A0 000227A0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 813543A4 000227A4  54 03 07 FE */	clrlwi r3, r0, 31
.L_813543A8:
/* 813543A8 000227A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813543AC 000227AC  7C 08 03 A6 */	mtlr r0
/* 813543B0 000227B0  38 21 00 10 */	addi r1, r1, 0x10
/* 813543B4 000227B4  4E 80 00 20 */	blr
.endfn get__Q33ipl2ut8FreeListFv

# .text:0xBFCC | 0x813543B8 | size: 0xA8
# ipl::ut::Stack::Stack()
.fn __ct__Q33ipl2ut5StackFv, global
/* 813543B8 000227B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813543BC 000227BC  7C 08 02 A6 */	mflr r0
/* 813543C0 000227C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813543C4 000227C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813543C8 000227C8  7C 7F 1B 78 */	mr r31, r3
/* 813543CC 000227CC  4B FF BC 11 */	bl do_copy_nand_app_to_sd__Q23ipl12NandSDWorkerFv
/* 813543D0 000227D0  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813543D4 000227D4  3C 83 00 04 */	addis r4, r3, 0x4
/* 813543D8 000227D8  80 04 EA 24 */	lwz r0, -0x15dc(r4)
/* 813543DC 000227DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813543E0 000227E0  41 80 00 6C */	blt .L_8135444C
/* 813543E4 000227E4  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 813543E8 000227E8  7F E3 FB 78 */	mr r3, r31
/* 813543EC 000227EC  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 813543F0 000227F0  4B FF BA B9 */	bl delete_nand_app_content__Q23ipl12NandSDWorkerFUx
/* 813543F4 000227F4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813543F8 000227F8  3C 84 00 04 */	addis r4, r4, 0x4
/* 813543FC 000227FC  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81354400 00022800  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354404 00022804  3C C3 00 04 */	addis r6, r3, 0x4
/* 81354408 00022808  80 06 EA 24 */	lwz r0, -0x15dc(r6)
/* 8135440C 0002280C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81354410 00022810  40 82 00 3C */	bne .L_8135444C
/* 81354414 00022814  80 A6 EA 2C */	lwz r5, -0x15d4(r6)
/* 81354418 00022818  7F E3 FB 78 */	mr r3, r31
/* 8135441C 0002281C  38 80 FF FF */	li r4, -0x1
/* 81354420 00022820  38 05 FF FF */	subi r0, r5, 0x1
/* 81354424 00022824  90 06 EA 2C */	stw r0, -0x15d4(r6)
/* 81354428 00022828  4B FF D1 7D */	bl change_nand_app_count__Q23ipl12NandSDWorkerFl
/* 8135442C 0002282C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354430 00022830  7F E3 FB 78 */	mr r3, r31
/* 81354434 00022834  3C C4 00 04 */	addis r6, r4, 0x4
/* 81354438 00022838  3C 84 00 02 */	addis r4, r4, 0x2
/* 8135443C 0002283C  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 81354440 00022840  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81354444 00022844  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 81354448 00022848  4B FF EA 81 */	bl delete_app_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
.L_8135444C:
/* 8135444C 0002284C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354450 00022850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354454 00022854  7C 08 03 A6 */	mtlr r0
/* 81354458 00022858  38 21 00 10 */	addi r1, r1, 0x10
/* 8135445C 0002285C  4E 80 00 20 */	blr
.endfn __ct__Q33ipl2ut5StackFv

# .text:0xC074 | 0x81354460 | size: 0x4C
# ipl::ut::Stack::init(void*, unsigned long, unsigned long)
.fn init__Q33ipl2ut5StackFPvUlUl, global
/* 81354460 00022860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354464 00022864  7C 08 02 A6 */	mflr r0
/* 81354468 00022868  38 80 00 00 */	li r4, 0x0
/* 8135446C 0002286C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81354470 00022870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354474 00022874  7C 7F 1B 78 */	mr r31, r3
/* 81354478 00022878  4B FF CC 7D */	bl do_copy_sd_app_to_nand__Q23ipl12NandSDWorkerFv
/* 8135447C 0002287C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354480 00022880  3C 63 00 04 */	addis r3, r3, 0x4
/* 81354484 00022884  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 81354488 00022888  2C 00 00 00 */	cmpwi r0, 0x0
/* 8135448C 0002288C  41 80 00 0C */	blt .L_81354498
/* 81354490 00022890  7F E3 FB 78 */	mr r3, r31
/* 81354494 00022894  4B FF 8E 1D */	bl do_delete_sd_app__Q23ipl12NandSDWorkerFv
.L_81354498:
/* 81354498 00022898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135449C 0002289C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813544A0 000228A0  7C 08 03 A6 */	mtlr r0
/* 813544A4 000228A4  38 21 00 10 */	addi r1, r1, 0x10
/* 813544A8 000228A8  4E 80 00 20 */	blr
.endfn init__Q33ipl2ut5StackFPvUlUl

# .text:0xC0C0 | 0x813544AC | size: 0x160
# ipl::ut::Stack::push(const void*)
.fn push__Q33ipl2ut5StackFPCv, global
/* 813544AC 000228AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813544B0 000228B0  7C 08 02 A6 */	mflr r0
/* 813544B4 000228B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813544B8 000228B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813544BC 000228BC  7C 7F 1B 78 */	mr r31, r3
/* 813544C0 000228C0  4B FF 9C 91 */	bl do_copy_nand_save_to_sd__Q23ipl12NandSDWorkerFv
/* 813544C4 000228C4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813544C8 000228C8  3C 83 00 04 */	addis r4, r3, 0x4
/* 813544CC 000228CC  80 04 EA 24 */	lwz r0, -0x15dc(r4)
/* 813544D0 000228D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813544D4 000228D4  41 80 01 24 */	blt .L_813545F8
/* 813544D8 000228D8  80 64 EA 48 */	lwz r3, -0x15b8(r4)
/* 813544DC 000228DC  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813544E0 000228E0  4B FF 4E 1D */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 813544E4 000228E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813544E8 000228E8  41 82 00 8C */	beq .L_81354574
/* 813544EC 000228EC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813544F0 000228F0  3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813544F4 000228F4  38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813544F8 000228F8  3C 83 00 04 */	addis r4, r3, 0x4
/* 813544FC 000228FC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 81354500 00022900  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81354504 00022904  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81354508 00022908  48 01 24 39 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8135450C 0002290C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354510 00022910  7C 64 1B 78 */	mr r4, r3
/* 81354514 00022914  41 82 00 28 */	beq .L_8135453C
/* 81354518 00022918  3C 60 81 63 */	lis r3, lbl_81635D1B@ha
/* 8135451C 0002291C  38 63 5D 1B */	addi r3, r3, lbl_81635D1B@l
/* 81354520 00022920  4C C6 31 82 */	crclr cr1eq
/* 81354524 00022924  48 1D A1 7D */	bl OSReport
/* 81354528 00022928  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8135452C 0002292C  38 00 FF FE */	li r0, -0x2
/* 81354530 00022930  3C 63 00 04 */	addis r3, r3, 0x4
/* 81354534 00022934  90 03 EA 24 */	stw r0, -0x15dc(r3)
/* 81354538 00022938  48 00 00 14 */	b .L_8135454C
.L_8135453C:
/* 8135453C 0002293C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354540 00022940  38 00 00 00 */	li r0, 0x0
/* 81354544 00022944  3C 63 00 04 */	addis r3, r3, 0x4
/* 81354548 00022948  90 03 EA 24 */	stw r0, -0x15dc(r3)
.L_8135454C:
/* 8135454C 0002294C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354550 00022950  7F E3 FB 78 */	mr r3, r31
/* 81354554 00022954  3C 84 00 04 */	addis r4, r4, 0x4
/* 81354558 00022958  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 8135455C 0002295C  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81354560 00022960  4B FF 4F 79 */	bl delete_meta_file__Q23ipl12NandSDWorkerFUx
/* 81354564 00022964  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354568 00022968  3C 84 00 04 */	addis r4, r4, 0x4
/* 8135456C 0002296C  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 81354570 00022970  48 00 00 48 */	b .L_813545B8
.L_81354574:
/* 81354574 00022974  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354578 00022978  7F E3 FB 78 */	mr r3, r31
/* 8135457C 0002297C  38 E0 00 01 */	li r7, 0x1
/* 81354580 00022980  39 00 00 00 */	li r8, 0x0
/* 81354584 00022984  3C 84 00 04 */	addis r4, r4, 0x4
/* 81354588 00022988  39 20 00 00 */	li r9, 0x0
/* 8135458C 0002298C  80 A4 EA 48 */	lwz r5, -0x15b8(r4)
/* 81354590 00022990  80 C4 EA 4C */	lwz r6, -0x15b4(r4)
/* 81354594 00022994  4B FF EE 4D */	bl recursion_nand_save__Q23ipl12NandSDWorkerFUxQ33ipl12NandSDWorker16RecursiveProcessPPCcUl
/* 81354598 00022998  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8135459C 0002299C  3C 84 00 04 */	addis r4, r4, 0x4
/* 813545A0 000229A0  90 64 EA 24 */	stw r3, -0x15dc(r4)
/* 813545A4 000229A4  7F E3 FB 78 */	mr r3, r31
/* 813545A8 000229A8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813545AC 000229AC  3C 84 00 04 */	addis r4, r4, 0x4
/* 813545B0 000229B0  80 84 EA 4C */	lwz r4, -0x15b4(r4)
/* 813545B4 000229B4  4B FF B6 E1 */	bl delete_download_task__Q23ipl12NandSDWorkerFUl
.L_813545B8:
/* 813545B8 000229B8  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813545BC 000229BC  3C A3 00 04 */	addis r5, r3, 0x4
/* 813545C0 000229C0  80 05 EA 24 */	lwz r0, -0x15dc(r5)
/* 813545C4 000229C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813545C8 000229C8  40 82 00 30 */	bne .L_813545F8
/* 813545CC 000229CC  80 85 EA 28 */	lwz r4, -0x15d8(r5)
/* 813545D0 000229D0  7F E3 FB 78 */	mr r3, r31
/* 813545D4 000229D4  38 04 FF FF */	subi r0, r4, 0x1
/* 813545D8 000229D8  90 05 EA 28 */	stw r0, -0x15d8(r5)
/* 813545DC 000229DC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813545E0 000229E0  3C C4 00 04 */	addis r6, r4, 0x4
/* 813545E4 000229E4  3C 84 00 02 */	addis r4, r4, 0x2
/* 813545E8 000229E8  80 A6 EA 48 */	lwz r5, -0x15b8(r6)
/* 813545EC 000229EC  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 813545F0 000229F0  80 C6 EA 4C */	lwz r6, -0x15b4(r6)
/* 813545F4 000229F4  4B FF E6 3D */	bl delete_save_cache__Q23ipl12NandSDWorkerFPQ34nw4r2ut4ListUx
.L_813545F8:
/* 813545F8 000229F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813545FC 000229FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354600 00022A00  7C 08 03 A6 */	mtlr r0
/* 81354604 00022A04  38 21 00 10 */	addi r1, r1, 0x10
/* 81354608 00022A08  4E 80 00 20 */	blr
.endfn push__Q33ipl2ut5StackFPCv

# .text:0xC220 | 0x8135460C | size: 0x48
# ipl::ut::Stack::pop(void*)
.fn pop__Q33ipl2ut5StackFPv, global
/* 8135460C 00022A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354610 00022A10  7C 08 02 A6 */	mflr r0
/* 81354614 00022A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 81354618 00022A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135461C 00022A1C  7C 7F 1B 78 */	mr r31, r3
/* 81354620 00022A20  4B FF A7 9D */	bl do_copy_sd_save_to_nand__Q23ipl12NandSDWorkerFv
/* 81354624 00022A24  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81354628 00022A28  3C 63 00 04 */	addis r3, r3, 0x4
/* 8135462C 00022A2C  80 03 EA 24 */	lwz r0, -0x15dc(r3)
/* 81354630 00022A30  2C 00 00 00 */	cmpwi r0, 0x0
/* 81354634 00022A34  40 82 00 0C */	bne .L_81354640
/* 81354638 00022A38  7F E3 FB 78 */	mr r3, r31
/* 8135463C 00022A3C  4B FF 8B A1 */	bl do_delete_sd_save__Q23ipl12NandSDWorkerFv
.L_81354640:
/* 81354640 00022A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354644 00022A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354648 00022A48  7C 08 03 A6 */	mtlr r0
/* 8135464C 00022A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 81354650 00022A50  4E 80 00 20 */	blr
.endfn pop__Q33ipl2ut5StackFPv

# .text:0xC268 | 0x81354654 | size: 0xA4
.fn iplNandSD_81354654, global
/* 81354654 00022A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81354658 00022A58  7C 08 02 A6 */	mflr r0
/* 8135465C 00022A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 81354660 00022A60  39 61 00 20 */	addi r11, r1, 0x20
/* 81354664 00022A64  48 2A 4E 61 */	bl _savegpr_28
/* 81354668 00022A68  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135466C 00022A6C  7C 7C 1B 78 */	mr r28, r3
/* 81354670 00022A70  7C 9D 23 78 */	mr r29, r4
/* 81354674 00022A74  3B E0 00 00 */	li r31, 0x0
/* 81354678 00022A78  3C 65 00 02 */	addis r3, r5, 0x2
/* 8135467C 00022A7C  38 80 06 40 */	li r4, 0x640
/* 81354680 00022A80  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354684 00022A84  48 20 6F E5 */	bl fn_8155B668
/* 81354688 00022A88  7C 7E 1B 78 */	mr r30, r3
/* 8135468C 00022A8C  7F 83 E3 78 */	mr r3, r28
/* 81354690 00022A90  7F A4 EB 78 */	mr r4, r29
/* 81354694 00022A94  7F C5 F3 78 */	mr r5, r30
/* 81354698 00022A98  4B FF CF C9 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8135469C 00022A9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 813546A0 00022AA0  40 82 00 20 */	bne .L_813546C0
/* 813546A4 00022AA4  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 813546A8 00022AA8  7F 83 E3 78 */	mr r3, r28
/* 813546AC 00022AAC  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 813546B0 00022AB0  4B FF D5 01 */	bl nand_app_exist_ex__Q23ipl12NandSDWorkerFUx
/* 813546B4 00022AB4  2C 03 00 02 */	cmpwi r3, 0x2
/* 813546B8 00022AB8  40 82 00 08 */	bne .L_813546C0
/* 813546BC 00022ABC  3B E0 00 01 */	li r31, 0x1
.L_813546C0:
/* 813546C0 00022AC0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 813546C4 00022AC4  41 82 00 18 */	beq .L_813546DC
/* 813546C8 00022AC8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813546CC 00022ACC  7F C4 F3 78 */	mr r4, r30
/* 813546D0 00022AD0  3C 63 00 02 */	addis r3, r3, 0x2
/* 813546D4 00022AD4  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813546D8 00022AD8  48 20 6F A1 */	bl fn_8155B678
.L_813546DC:
/* 813546DC 00022ADC  39 61 00 20 */	addi r11, r1, 0x20
/* 813546E0 00022AE0  7F E3 FB 78 */	mr r3, r31
/* 813546E4 00022AE4  48 2A 4E 2D */	bl _restgpr_28
/* 813546E8 00022AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813546EC 00022AEC  7C 08 03 A6 */	mtlr r0
/* 813546F0 00022AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 813546F4 00022AF4  4E 80 00 20 */	blr
.endfn iplNandSD_81354654

# .text:0xC30C | 0x813546F8 | size: 0xC8
.fn iplNandSD_813546F8, global
/* 813546F8 00022AF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813546FC 00022AFC  7C 08 02 A6 */	mflr r0
/* 81354700 00022B00  90 01 00 24 */	stw r0, 0x24(r1)
/* 81354704 00022B04  39 61 00 20 */	addi r11, r1, 0x20
/* 81354708 00022B08  48 2A 4D BD */	bl _savegpr_28
/* 8135470C 00022B0C  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81354710 00022B10  7C 7C 1B 78 */	mr r28, r3
/* 81354714 00022B14  3C A0 00 01 */	lis r5, 0x1
/* 81354718 00022B18  7C 9D 23 78 */	mr r29, r4
/* 8135471C 00022B1C  3C 66 00 02 */	addis r3, r6, 0x2
/* 81354720 00022B20  3B E0 00 00 */	li r31, 0x0
/* 81354724 00022B24  38 85 F0 C0 */	subi r4, r5, 0xf40
/* 81354728 00022B28  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 8135472C 00022B2C  48 20 6F 3D */	bl fn_8155B668
/* 81354730 00022B30  7C 7E 1B 78 */	mr r30, r3
/* 81354734 00022B34  7F 83 E3 78 */	mr r3, r28
/* 81354738 00022B38  7F A4 EB 78 */	mr r4, r29
/* 8135473C 00022B3C  7F C5 F3 78 */	mr r5, r30
/* 81354740 00022B40  4B FF AF 49 */	bl get_sd_save_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker12SDSaveBanner
/* 81354744 00022B44  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354748 00022B48  40 82 00 40 */	bne .L_81354788
/* 8135474C 00022B4C  7F A4 EB 78 */	mr r4, r29
/* 81354750 00022B50  38 60 00 00 */	li r3, 0x0
/* 81354754 00022B54  4B FF 4B A9 */	bl is_data_only_title__Q23ipl12NandSDWorkerFUx
/* 81354758 00022B58  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135475C 00022B5C  41 82 00 18 */	beq .L_81354774
/* 81354760 00022B60  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81354764 00022B64  7F 83 E3 78 */	mr r3, r28
/* 81354768 00022B68  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8135476C 00022B6C  4B FF D4 19 */	bl nand_app_exist__Q23ipl12NandSDWorkerFUx
/* 81354770 00022B70  48 00 00 14 */	b .L_81354784
.L_81354774:
/* 81354774 00022B74  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81354778 00022B78  7F 83 E3 78 */	mr r3, r28
/* 8135477C 00022B7C  80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81354780 00022B80  4B FF 67 E9 */	bl check_nand_save_banner_exist__Q23ipl12NandSDWorkerFUx
.L_81354784:
/* 81354784 00022B84  7C 7F 1B 78 */	mr r31, r3
.L_81354788:
/* 81354788 00022B88  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8135478C 00022B8C  41 82 00 18 */	beq .L_813547A4
/* 81354790 00022B90  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81354794 00022B94  7F C4 F3 78 */	mr r4, r30
/* 81354798 00022B98  3C 63 00 02 */	addis r3, r3, 0x2
/* 8135479C 00022B9C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813547A0 00022BA0  48 20 6E D9 */	bl fn_8155B678
.L_813547A4:
/* 813547A4 00022BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 813547A8 00022BA8  7F E3 FB 78 */	mr r3, r31
/* 813547AC 00022BAC  48 2A 4D 65 */	bl _restgpr_28
/* 813547B0 00022BB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813547B4 00022BB4  7C 08 03 A6 */	mtlr r0
/* 813547B8 00022BB8  38 21 00 20 */	addi r1, r1, 0x20
/* 813547BC 00022BBC  4E 80 00 20 */	blr
.endfn iplNandSD_813546F8

# .text:0xC3D4 | 0x813547C0 | size: 0x80
.fn iplNandSD_813547C0, global
/* 813547C0 00022BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813547C4 00022BC4  7C 08 02 A6 */	mflr r0
/* 813547C8 00022BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 813547CC 00022BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 813547D0 00022BD0  48 2A 4C F9 */	bl _savegpr_29
/* 813547D4 00022BD4  3B E0 00 00 */	li r31, 0x0
/* 813547D8 00022BD8  7C FE 3B 78 */	mr r30, r7
/* 813547DC 00022BDC  93 E1 00 08 */	stw r31, 0x8(r1)
/* 813547E0 00022BE0  7C 7D 1B 78 */	mr r29, r3
/* 813547E4 00022BE4  38 E1 00 08 */	addi r7, r1, 0x8
/* 813547E8 00022BE8  4B FF D7 51 */	bl get_nand_app_tmdview__Q23ipl12NandSDWorkerFUxP9ESTmdView
/* 813547EC 00022BEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813547F0 00022BF0  40 82 00 14 */	bne .L_81354804
/* 813547F4 00022BF4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 813547F8 00022BF8  A0 03 00 58 */	lhz r0, 0x58(r3)
/* 813547FC 00022BFC  B0 1E 00 00 */	sth r0, 0x0(r30)
/* 81354800 00022C00  48 00 00 08 */	b .L_81354808
.L_81354804:
/* 81354804 00022C04  B3 FE 00 00 */	sth r31, 0x0(r30)
.L_81354808:
/* 81354808 00022C08  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8135480C 00022C0C  2C 04 00 00 */	cmpwi r4, 0x0
/* 81354810 00022C10  41 82 00 14 */	beq .L_81354824
/* 81354814 00022C14  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81354818 00022C18  3C 63 00 02 */	addis r3, r3, 0x2
/* 8135481C 00022C1C  80 63 E6 90 */	lwz r3, -0x1970(r3)
/* 81354820 00022C20  48 20 61 E5 */	bl fn_8155AA04
.L_81354824:
/* 81354824 00022C24  39 61 00 20 */	addi r11, r1, 0x20
/* 81354828 00022C28  38 60 00 00 */	li r3, 0x0
/* 8135482C 00022C2C  48 2A 4C E9 */	bl _restgpr_29
/* 81354830 00022C30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81354834 00022C34  7C 08 03 A6 */	mtlr r0
/* 81354838 00022C38  38 21 00 20 */	addi r1, r1, 0x20
/* 8135483C 00022C3C  4E 80 00 20 */	blr
.endfn iplNandSD_813547C0

# .text:0xC454 | 0x81354840 | size: 0xF4
.fn iplNandSD_81354840, global
/* 81354840 00022C40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81354844 00022C44  7C 08 02 A6 */	mflr r0
/* 81354848 00022C48  90 01 00 74 */	stw r0, 0x74(r1)
/* 8135484C 00022C4C  39 61 00 70 */	addi r11, r1, 0x70
/* 81354850 00022C50  48 2A 4C 71 */	bl _savegpr_27
/* 81354854 00022C54  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81354858 00022C58  7C 7B 1B 78 */	mr r27, r3
/* 8135485C 00022C5C  7C 9C 23 78 */	mr r28, r4
/* 81354860 00022C60  7C BD 2B 78 */	mr r29, r5
/* 81354864 00022C64  3C 66 00 02 */	addis r3, r6, 0x2
/* 81354868 00022C68  38 80 06 40 */	li r4, 0x640
/* 8135486C 00022C6C  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354870 00022C70  48 20 6D F9 */	bl fn_8155B668
/* 81354874 00022C74  7C 7F 1B 78 */	mr r31, r3
/* 81354878 00022C78  7F 63 DB 78 */	mr r3, r27
/* 8135487C 00022C7C  7F 84 E3 78 */	mr r4, r28
/* 81354880 00022C80  7F E5 FB 78 */	mr r5, r31
/* 81354884 00022C84  4B FF CD DD */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 81354888 00022C88  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135488C 00022C8C  7C 7E 1B 78 */	mr r30, r3
/* 81354890 00022C90  41 82 00 20 */	beq .L_813548B0
/* 81354894 00022C94  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81354898 00022C98  7F E4 FB 78 */	mr r4, r31
/* 8135489C 00022C9C  3C 63 00 02 */	addis r3, r3, 0x2
/* 813548A0 00022CA0  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 813548A4 00022CA4  48 20 6D D5 */	bl fn_8155B678
/* 813548A8 00022CA8  38 60 FF FE */	li r3, -0x2
/* 813548AC 00022CAC  48 00 00 70 */	b .L_8135491C
.L_813548B0:
/* 813548B0 00022CB0  7F 84 E3 78 */	mr r4, r28
/* 813548B4 00022CB4  38 A1 00 10 */	addi r5, r1, 0x10
/* 813548B8 00022CB8  38 60 00 00 */	li r3, 0x0
/* 813548BC 00022CBC  4B FF 4B 79 */	bl get_sd_app_path__Q23ipl12NandSDWorkerFUxPc
/* 813548C0 00022CC0  80 DF 00 08 */	lwz r6, 0x8(r31)
/* 813548C4 00022CC4  7F A5 EB 78 */	mr r5, r29
/* 813548C8 00022CC8  38 61 00 10 */	addi r3, r1, 0x10
/* 813548CC 00022CCC  38 81 00 08 */	addi r4, r1, 0x8
/* 813548D0 00022CD0  38 06 00 3F */	addi r0, r6, 0x3f
/* 813548D4 00022CD4  38 C0 00 03 */	li r6, 0x3
/* 813548D8 00022CD8  54 07 00 32 */	clrrwi r7, r0, 6
/* 813548DC 00022CDC  38 E7 06 40 */	addi r7, r7, 0x640
/* 813548E0 00022CE0  48 26 AE 55 */	bl fn_815BF734
/* 813548E4 00022CE4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813548E8 00022CE8  7C 64 1B 78 */	mr r4, r3
/* 813548EC 00022CEC  41 82 00 18 */	beq .L_81354904
/* 813548F0 00022CF0  3C 60 81 63 */	lis r3, lbl_81636585@ha
/* 813548F4 00022CF4  38 63 65 85 */	addi r3, r3, lbl_81636585@l
/* 813548F8 00022CF8  4C C6 31 82 */	crclr cr1eq
/* 813548FC 00022CFC  48 1D 9D A5 */	bl OSReport
/* 81354900 00022D00  3B C0 FF FE */	li r30, -0x2
.L_81354904:
/* 81354904 00022D04  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81354908 00022D08  7F E4 FB 78 */	mr r4, r31
/* 8135490C 00022D0C  3C 63 00 02 */	addis r3, r3, 0x2
/* 81354910 00022D10  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354914 00022D14  48 20 6D 65 */	bl fn_8155B678
/* 81354918 00022D18  7F C3 F3 78 */	mr r3, r30
.L_8135491C:
/* 8135491C 00022D1C  39 61 00 70 */	addi r11, r1, 0x70
/* 81354920 00022D20  48 2A 4B ED */	bl _restgpr_27
/* 81354924 00022D24  80 01 00 74 */	lwz r0, 0x74(r1)
/* 81354928 00022D28  7C 08 03 A6 */	mtlr r0
/* 8135492C 00022D2C  38 21 00 70 */	addi r1, r1, 0x70
/* 81354930 00022D30  4E 80 00 20 */	blr
.endfn iplNandSD_81354840

# .text:0xC548 | 0x81354934 | size: 0x184
.fn iplNandSD_81354934, global
/* 81354934 00022D34  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 81354938 00022D38  7C 08 02 A6 */	mflr r0
/* 8135493C 00022D3C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 81354940 00022D40  39 61 00 A0 */	addi r11, r1, 0xa0
/* 81354944 00022D44  48 2A 4B 75 */	bl _savegpr_25
/* 81354948 00022D48  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135494C 00022D4C  7C 79 1B 78 */	mr r25, r3
/* 81354950 00022D50  3F E0 81 63 */	lis r31, lbl_81635A88@ha
/* 81354954 00022D54  7C 9A 23 78 */	mr r26, r4
/* 81354958 00022D58  3C 65 00 02 */	addis r3, r5, 0x2
/* 8135495C 00022D5C  38 80 06 40 */	li r4, 0x640
/* 81354960 00022D60  3B FF 5A 88 */	addi r31, r31, lbl_81635A88@l
/* 81354964 00022D64  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354968 00022D68  48 20 6D 01 */	bl fn_8155B668
/* 8135496C 00022D6C  38 00 00 00 */	li r0, 0x0
/* 81354970 00022D70  7C 7E 1B 78 */	mr r30, r3
/* 81354974 00022D74  B0 01 00 0A */	sth r0, 0xa(r1)
/* 81354978 00022D78  7F 23 CB 78 */	mr r3, r25
/* 8135497C 00022D7C  7F 44 D3 78 */	mr r4, r26
/* 81354980 00022D80  7F C5 F3 78 */	mr r5, r30
/* 81354984 00022D84  B0 01 00 08 */	sth r0, 0x8(r1)
/* 81354988 00022D88  4B FF CC D9 */	bl get_sd_app_banner__Q23ipl12NandSDWorkerFUlPQ33ipl12NandSDWorker11SDAppBanner
/* 8135498C 00022D8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354990 00022D90  7C 7B 1B 78 */	mr r27, r3
/* 81354994 00022D94  40 82 00 F4 */	bne .L_81354A88
/* 81354998 00022D98  83 BE 00 00 */	lwz r29, 0x0(r30)
/* 8135499C 00022D9C  7F 23 CB 78 */	mr r3, r25
/* 813549A0 00022DA0  83 9E 00 04 */	lwz r28, 0x4(r30)
/* 813549A4 00022DA4  7F 44 D3 78 */	mr r4, r26
/* 813549A8 00022DA8  38 A1 00 08 */	addi r5, r1, 0x8
/* 813549AC 00022DAC  4B FF FE 95 */	bl iplNandSD_81354840
/* 813549B0 00022DB0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813549B4 00022DB4  7C 7B 1B 78 */	mr r27, r3
/* 813549B8 00022DB8  40 82 00 D0 */	bne .L_81354A88
/* 813549BC 00022DBC  7F 23 CB 78 */	mr r3, r25
/* 813549C0 00022DC0  7F 86 E3 78 */	mr r6, r28
/* 813549C4 00022DC4  7F A5 EB 78 */	mr r5, r29
/* 813549C8 00022DC8  38 E1 00 0A */	addi r7, r1, 0xa
/* 813549CC 00022DCC  4B FF FD F5 */	bl iplNandSD_813547C0
/* 813549D0 00022DD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813549D4 00022DD4  7C 7B 1B 78 */	mr r27, r3
/* 813549D8 00022DD8  40 82 00 B0 */	bne .L_81354A88
/* 813549DC 00022DDC  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 813549E0 00022DE0  A0 01 00 08 */	lhz r0, 0x8(r1)
/* 813549E4 00022DE4  54 66 C4 3E */	extrwi r6, r3, 16, 8
/* 813549E8 00022DE8  54 05 C4 3E */	extrwi r5, r0, 16, 8
/* 813549EC 00022DEC  B0 C1 00 0A */	sth r6, 0xa(r1)
/* 813549F0 00022DF0  7C 06 28 40 */	cmplw r6, r5
/* 813549F4 00022DF4  B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813549F8 00022DF8  40 81 00 1C */	ble .L_81354A14
/* 813549FC 00022DFC  7F 44 D3 78 */	mr r4, r26
/* 81354A00 00022E00  38 7F 2E C5 */	addi r3, r31, 0x2ec5
/* 81354A04 00022E04  4C C6 31 82 */	crclr cr1eq
/* 81354A08 00022E08  48 1D 9C 99 */	bl OSReport
/* 81354A0C 00022E0C  3B 60 FF F0 */	li r27, -0x10
/* 81354A10 00022E10  48 00 00 78 */	b .L_81354A88
.L_81354A14:
/* 81354A14 00022E14  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81354A18 00022E18  7F 23 CB 78 */	mr r3, r25
/* 81354A1C 00022E1C  7F 44 D3 78 */	mr r4, r26
/* 81354A20 00022E20  38 A1 00 10 */	addi r5, r1, 0x10
/* 81354A24 00022E24  38 06 00 3F */	addi r0, r6, 0x3f
/* 81354A28 00022E28  54 06 00 32 */	clrrwi r6, r0, 6
/* 81354A2C 00022E2C  4B FF AE 95 */	bl get_sd_wad_header__Q23ipl12NandSDWorkerFUlP15WADBackupHeader
/* 81354A30 00022E30  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354A34 00022E34  7C 7B 1B 78 */	mr r27, r3
/* 81354A38 00022E38  40 82 00 50 */	bne .L_81354A88
/* 81354A3C 00022E3C  38 61 00 0C */	addi r3, r1, 0xc
/* 81354A40 00022E40  48 26 92 35 */	bl ES_GetDeviceId
/* 81354A44 00022E44  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354A48 00022E48  7C 7B 1B 78 */	mr r27, r3
/* 81354A4C 00022E4C  41 82 00 1C */	beq .L_81354A68
/* 81354A50 00022E50  7F 64 DB 78 */	mr r4, r27
/* 81354A54 00022E54  38 7F 2F 00 */	addi r3, r31, 0x2f00
/* 81354A58 00022E58  4C C6 31 82 */	crclr cr1eq
/* 81354A5C 00022E5C  48 1D 9C 45 */	bl OSReport
/* 81354A60 00022E60  3B 60 FF FE */	li r27, -0x2
/* 81354A64 00022E64  48 00 00 24 */	b .L_81354A88
.L_81354A68:
/* 81354A68 00022E68  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81354A6C 00022E6C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 81354A70 00022E70  7C 04 28 40 */	cmplw r4, r5
/* 81354A74 00022E74  41 82 00 14 */	beq .L_81354A88
/* 81354A78 00022E78  38 7F 2F 29 */	addi r3, r31, 0x2f29
/* 81354A7C 00022E7C  4C C6 31 82 */	crclr cr1eq
/* 81354A80 00022E80  48 1D 9C 21 */	bl OSReport
/* 81354A84 00022E84  3B 60 FF F1 */	li r27, -0xf
.L_81354A88:
/* 81354A88 00022E88  80 79 00 00 */	lwz r3, 0x0(r25)
/* 81354A8C 00022E8C  7F C4 F3 78 */	mr r4, r30
/* 81354A90 00022E90  3C 63 00 02 */	addis r3, r3, 0x2
/* 81354A94 00022E94  38 63 E6 A0 */	subi r3, r3, 0x1960
/* 81354A98 00022E98  48 20 6B E1 */	bl fn_8155B678
/* 81354A9C 00022E9C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 81354AA0 00022EA0  7F 63 DB 78 */	mr r3, r27
/* 81354AA4 00022EA4  48 2A 4A 61 */	bl _restgpr_25
/* 81354AA8 00022EA8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 81354AAC 00022EAC  7C 08 03 A6 */	mtlr r0
/* 81354AB0 00022EB0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 81354AB4 00022EB4  4E 80 00 20 */	blr
.endfn iplNandSD_81354934

# .text:0xC6CC | 0x81354AB8 | size: 0x14
.fn iplNandSD_81354AB8, global
/* 81354AB8 00022EB8  38 00 00 00 */	li r0, 0x0
/* 81354ABC 00022EBC  90 03 00 00 */	stw r0, 0x0(r3)
/* 81354AC0 00022EC0  90 03 00 04 */	stw r0, 0x4(r3)
/* 81354AC4 00022EC4  90 03 00 08 */	stw r0, 0x8(r3)
/* 81354AC8 00022EC8  4E 80 00 20 */	blr
.endfn iplNandSD_81354AB8

# .text:0xC6E0 | 0x81354ACC | size: 0x5C
.fn iplNandSD_81354ACC, global
/* 81354ACC 00022ECC  38 06 FF FF */	subi r0, r6, 0x1
/* 81354AD0 00022ED0  90 83 00 00 */	stw r4, 0x0(r3)
/* 81354AD4 00022ED4  54 A9 F0 BE */	srwi r9, r5, 2
/* 81354AD8 00022ED8  39 00 00 00 */	li r8, 0x0
/* 81354ADC 00022EDC  7C 09 03 A6 */	mtctr r0
/* 81354AE0 00022EE0  28 00 00 00 */	cmplwi r0, 0x0
/* 81354AE4 00022EE4  40 81 00 28 */	ble .L_81354B0C
.L_81354AE8:
/* 81354AE8 00022EE8  38 C8 00 01 */	addi r6, r8, 0x1
/* 81354AEC 00022EEC  7C E9 31 D6 */	mullw r7, r9, r6
/* 81354AF0 00022EF0  7C C9 41 D6 */	mullw r6, r9, r8
/* 81354AF4 00022EF4  39 08 00 01 */	addi r8, r8, 0x1
/* 81354AF8 00022EF8  54 E7 10 3A */	slwi r7, r7, 2
/* 81354AFC 00022EFC  7C E4 3A 14 */	add r7, r4, r7
/* 81354B00 00022F00  54 C6 10 3A */	slwi r6, r6, 2
/* 81354B04 00022F04  7C E4 31 2E */	stwx r7, r4, r6
/* 81354B08 00022F08  42 00 FF E0 */	bdnz .L_81354AE8
.L_81354B0C:
/* 81354B0C 00022F0C  7C 09 01 D6 */	mullw r0, r9, r0
/* 81354B10 00022F10  38 C0 00 00 */	li r6, 0x0
/* 81354B14 00022F14  54 00 10 3A */	slwi r0, r0, 2
/* 81354B18 00022F18  7C C4 01 2E */	stwx r6, r4, r0
/* 81354B1C 00022F1C  90 A3 00 04 */	stw r5, 0x4(r3)
/* 81354B20 00022F20  90 83 00 08 */	stw r4, 0x8(r3)
/* 81354B24 00022F24  4E 80 00 20 */	blr
.endfn iplNandSD_81354ACC

# .text:0xC73C | 0x81354B28 | size: 0x24
.fn iplNandSD_81354B28, global
/* 81354B28 00022F28  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81354B2C 00022F2C  2C 04 00 00 */	cmpwi r4, 0x0
/* 81354B30 00022F30  40 82 00 0C */	bne .L_81354B3C
/* 81354B34 00022F34  38 60 00 00 */	li r3, 0x0
/* 81354B38 00022F38  4E 80 00 20 */	blr
.L_81354B3C:
/* 81354B3C 00022F3C  80 04 00 00 */	lwz r0, 0x0(r4)
/* 81354B40 00022F40  90 03 00 00 */	stw r0, 0x0(r3)
/* 81354B44 00022F44  7C 83 23 78 */	mr r3, r4
/* 81354B48 00022F48  4E 80 00 20 */	blr
.endfn iplNandSD_81354B28

# .text:0xC760 | 0x81354B4C | size: 0x40
.fn iplNandSD_81354B4C, global
/* 81354B4C 00022F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354B50 00022F50  7C 08 02 A6 */	mflr r0
/* 81354B54 00022F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 81354B58 00022F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354B5C 00022F5C  7C 7F 1B 78 */	mr r31, r3
/* 81354B60 00022F60  4B FF FF 59 */	bl iplNandSD_81354AB8
/* 81354B64 00022F64  38 00 00 00 */	li r0, 0x0
/* 81354B68 00022F68  7F E3 FB 78 */	mr r3, r31
/* 81354B6C 00022F6C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 81354B70 00022F70  90 1F 00 10 */	stw r0, 0x10(r31)
/* 81354B74 00022F74  90 1F 00 14 */	stw r0, 0x14(r31)
/* 81354B78 00022F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354B7C 00022F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354B80 00022F80  7C 08 03 A6 */	mtlr r0
/* 81354B84 00022F84  38 21 00 10 */	addi r1, r1, 0x10
/* 81354B88 00022F88  4E 80 00 20 */	blr
.endfn iplNandSD_81354B4C

# .text:0xC7A0 | 0x81354B8C | size: 0x4C
.fn iplNandSD_81354B8C, global
/* 81354B8C 00022F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354B90 00022F90  7C 08 02 A6 */	mflr r0
/* 81354B94 00022F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 81354B98 00022F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354B9C 00022F9C  7C BF 2B 78 */	mr r31, r5
/* 81354BA0 00022FA0  38 A5 00 04 */	addi r5, r5, 0x4
/* 81354BA4 00022FA4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81354BA8 00022FA8  7C 7E 1B 78 */	mr r30, r3
/* 81354BAC 00022FAC  4B FF FF 21 */	bl iplNandSD_81354ACC
/* 81354BB0 00022FB0  38 00 00 00 */	li r0, 0x0
/* 81354BB4 00022FB4  93 FE 00 10 */	stw r31, 0x10(r30)
/* 81354BB8 00022FB8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 81354BBC 00022FBC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 81354BC0 00022FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354BC4 00022FC4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81354BC8 00022FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354BCC 00022FCC  7C 08 03 A6 */	mtlr r0
/* 81354BD0 00022FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 81354BD4 00022FD4  4E 80 00 20 */	blr
.endfn iplNandSD_81354B8C

# .text:0xC7EC | 0x81354BD8 | size: 0x78
.fn iplNandSD_81354BD8, global
/* 81354BD8 00022FD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81354BDC 00022FDC  7C 08 02 A6 */	mflr r0
/* 81354BE0 00022FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 81354BE4 00022FE4  39 61 00 20 */	addi r11, r1, 0x20
/* 81354BE8 00022FE8  48 2A 48 E1 */	bl _savegpr_29
/* 81354BEC 00022FEC  7C 7D 1B 78 */	mr r29, r3
/* 81354BF0 00022FF0  7C 9E 23 78 */	mr r30, r4
/* 81354BF4 00022FF4  4B FF FF 35 */	bl iplNandSD_81354B28
/* 81354BF8 00022FF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81354BFC 00022FFC  7C 7F 1B 78 */	mr r31, r3
/* 81354C00 00023000  41 82 00 34 */	beq .L_81354C34
/* 81354C04 00023004  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 81354C08 00023008  7F C4 F3 78 */	mr r4, r30
/* 81354C0C 0002300C  38 63 00 04 */	addi r3, r3, 0x4
/* 81354C10 00023010  4B FD B6 21 */	bl memcpy
/* 81354C14 00023014  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 81354C18 00023018  38 60 00 01 */	li r3, 0x1
/* 81354C1C 0002301C  90 1F 00 00 */	stw r0, 0x0(r31)
/* 81354C20 00023020  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 81354C24 00023024  93 FD 00 0C */	stw r31, 0xc(r29)
/* 81354C28 00023028  38 04 00 01 */	addi r0, r4, 0x1
/* 81354C2C 0002302C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 81354C30 00023030  48 00 00 08 */	b .L_81354C38
.L_81354C34:
/* 81354C34 00023034  38 60 00 00 */	li r3, 0x0
.L_81354C38:
/* 81354C38 00023038  39 61 00 20 */	addi r11, r1, 0x20
/* 81354C3C 0002303C  48 2A 48 D9 */	bl _restgpr_29
/* 81354C40 00023040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81354C44 00023044  7C 08 03 A6 */	mtlr r0
/* 81354C48 00023048  38 21 00 20 */	addi r1, r1, 0x20
/* 81354C4C 0002304C  4E 80 00 20 */	blr
.endfn iplNandSD_81354BD8

# .text:0xC864 | 0x81354C50 | size: 0x80
.fn iplNandSD_81354C50, global
/* 81354C50 00023050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354C54 00023054  7C 08 02 A6 */	mflr r0
/* 81354C58 00023058  90 01 00 14 */	stw r0, 0x14(r1)
/* 81354C5C 0002305C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354C60 00023060  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81354C64 00023064  7C 7E 1B 78 */	mr r30, r3
/* 81354C68 00023068  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 81354C6C 0002306C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81354C70 00023070  41 82 00 44 */	beq .L_81354CB4
/* 81354C74 00023074  2C 04 00 00 */	cmpwi r4, 0x0
/* 81354C78 00023078  41 82 00 14 */	beq .L_81354C8C
/* 81354C7C 0002307C  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 81354C80 00023080  7C 83 23 78 */	mr r3, r4
/* 81354C84 00023084  38 9F 00 04 */	addi r4, r31, 0x4
/* 81354C88 00023088  4B FD B5 A9 */	bl memcpy
.L_81354C8C:
/* 81354C8C 0002308C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81354C90 00023090  38 60 00 01 */	li r3, 0x1
/* 81354C94 00023094  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81354C98 00023098  90 9E 00 0C */	stw r4, 0xc(r30)
/* 81354C9C 0002309C  90 1F 00 00 */	stw r0, 0x0(r31)
/* 81354CA0 000230A0  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 81354CA4 000230A4  93 FE 00 00 */	stw r31, 0x0(r30)
/* 81354CA8 000230A8  38 04 FF FF */	subi r0, r4, 0x1
/* 81354CAC 000230AC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 81354CB0 000230B0  48 00 00 08 */	b .L_81354CB8
.L_81354CB4:
/* 81354CB4 000230B4  38 60 00 00 */	li r3, 0x0
.L_81354CB8:
/* 81354CB8 000230B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354CBC 000230BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354CC0 000230C0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81354CC4 000230C4  7C 08 03 A6 */	mtlr r0
/* 81354CC8 000230C8  38 21 00 10 */	addi r1, r1, 0x10
/* 81354CCC 000230CC  4E 80 00 20 */	blr
.endfn iplNandSD_81354C50

# 0x8160D638..0x8160D668 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x8160D638 | size: 0x10
.obj lbl_8160D638, global
	.4byte 0x216712E6
	.4byte 0xAA1F689F
	.4byte 0x95C5A223
	.4byte 0x24DC6A98
.endobj lbl_8160D638

# .rodata:0x10 | 0x8160D648 | size: 0x10
.obj lbl_8160D648, global
	.4byte 0x0E653781
	.4byte 0x99BE4517
	.4byte 0xAB06EC22
	.4byte 0x451A5793
.endobj lbl_8160D648

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
.obj gap_08_81635E80_data, global
.hidden gap_08_81635E80_data
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
.endobj gap_08_81635E80_data

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
.obj lbl_81696198, global
	.4byte lbl_81635A88
.endobj lbl_81696198

# .sdata:0x4 | 0x8169619C | size: 0x8
.obj lbl_8169619C, global
	.4byte 0x6E6F636F
	.4byte 0x70790000
.endobj lbl_8169619C

# .sdata:0xC | 0x816961A4 | size: 0x4
.obj lbl_816961A4, global
	.4byte lbl_8169619C
.endobj lbl_816961A4

# .sdata:0x10 | 0x816961A8 | size: 0x4
.obj lbl_816961A8, global
	.4byte lbl_81635A93
.endobj lbl_816961A8

# .sdata:0x14 | 0x816961AC | size: 0x4
.obj lbl_816961AC, global
	.4byte lbl_81635A9E
.endobj lbl_816961AC

# .sdata:0x18 | 0x816961B0 | size: 0x4
.obj lbl_816961B0, global
	.4byte lbl_81635AB2
.endobj lbl_816961B0

# .sdata:0x1C | 0x816961B4 | size: 0x4
.obj lbl_816961B4, global
	.4byte lbl_81635ABB
.endobj lbl_816961B4

# .sdata:0x20 | 0x816961B8 | size: 0x4
.obj lbl_816961B8, global
	.4byte lbl_81635AC7
.endobj lbl_816961B8

# .sdata:0x24 | 0x816961BC | size: 0x4
.obj lbl_816961BC, global
	.4byte lbl_81635ADB
.endobj lbl_816961BC

# .sdata:0x28 | 0x816961C0 | size: 0x4
.obj lbl_816961C0, global
	.4byte lbl_81635AFB
.endobj lbl_816961C0

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
.obj lbl_816961DC, global
	.4byte lbl_81635B2C
	.4byte lbl_81635B38
.endobj lbl_816961DC

# .sdata:0x4C | 0x816961E4 | size: 0x4
.obj lbl_816961E4, global
	.4byte lbl_81635B42
.endobj lbl_816961E4

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
.obj lbl_816986D8, global
	.skip 0x4
.endobj lbl_816986D8

# .sbss:0x4 | 0x816986DC | size: 0x4
.obj lbl_816986DC, global
	.skip 0x4
.endobj lbl_816986DC
