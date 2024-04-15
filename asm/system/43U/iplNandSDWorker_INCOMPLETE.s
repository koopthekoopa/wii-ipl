.include "macros.inc"
.file "iplNandSDWorker_INCOMPLETE.cpp"

# 0x813483EC - 0x81348DFC
.text
.balign 4

# ipl::NandSDWorker::NandSDWorker()
.fn __ct__Q23ipl12NandSDWorkerFv, global
/* 813483EC 000167EC  38 00 00 00 */	li r0, 0x0
/* 813483F0 000167F0  90 03 00 00 */	stw r0, 0x0(r3)
/* 813483F4 000167F4  4E 80 00 20 */	blr
.endfn __ct__Q23ipl12NandSDWorkerFv

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
/* 8134841C 0001681C  48 2A FC C9 */	bl fn_815F80E4
.L_81348420:
/* 81348420 00016820  7F E3 FB 78 */	mr r3, r31
/* 81348424 00016824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348428 00016828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134842C 0001682C  7C 08 03 A6 */	mtlr r0
/* 81348430 00016830  38 21 00 10 */	addi r1, r1, 0x10
/* 81348434 00016834  4E 80 00 20 */	blr
.endfn __dt__Q23ipl12NandSDWorkerFv

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
/* 81348468 00016868  3C 80 81 35 */	lis r4, fn_8134949C@ha
/* 8134846C 0001686C  7C BD 2B 78 */	mr r29, r5
/* 81348470 00016870  7F 85 E3 78 */	mr r5, r28
/* 81348474 00016874  7F E8 FB 78 */	mr r8, r31
/* 81348478 00016878  38 84 94 9C */	addi r4, r4, fn_8134949C@l
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
/* 813484A8 000168A8  48 1E 8B 79 */	bl fn_81531020
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
/* 81348510 00016910  48 1C 9B 4D */	bl fn_8151205C
/* 81348514 00016914  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81348518 00016918  38 1B F0 AC */	subi r0, r27, 0xf54
/* 8134851C 0001691C  54 04 04 3E */	clrlwi r4, r0, 16
/* 81348520 00016920  3C 63 00 02 */	addis r3, r3, 0x2
/* 81348524 00016924  38 63 E6 6C */	subi r3, r3, 0x1994
/* 81348528 00016928  48 1C 9B 35 */	bl fn_8151205C
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
/* 813485CC 000169CC  48 1C 9A 91 */	bl fn_8151205C
/* 813485D0 000169D0  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813485D4 000169D4  38 80 00 10 */	li r4, 0x10
/* 813485D8 000169D8  3C 63 00 02 */	addis r3, r3, 0x2
/* 813485DC 000169DC  38 63 E6 84 */	subi r3, r3, 0x197c
/* 813485E0 000169E0  48 1C 9A 7D */	bl fn_8151205C
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
/* 81348698 00016A98  3C 80 81 35 */	lis r4, fn_81352868@ha
/* 8134869C 00016A9C  3C A0 81 35 */	lis r5, fn_813528B0@ha
/* 813486A0 00016AA0  38 84 28 68 */	addi r4, r4, fn_81352868@l
/* 813486A4 00016AA4  38 60 00 00 */	li r3, 0x0
/* 813486A8 00016AA8  38 A5 28 B0 */	addi r5, r5, fn_813528B0@l
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

# ipl::NandSDWorker::is_terminated()
.fn is_terminated__Q23ipl12NandSDWorkerFv, global
/* 813487F8 00016BF8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 813487FC 00016BFC  7C 00 00 34 */	cntlzw r0, r0
/* 81348800 00016C00  54 03 D9 7E */	srwi r3, r0, 5
/* 81348804 00016C04  4E 80 00 20 */	blr
.endfn is_terminated__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::is_terminated()
.fn is_terminated__Q23ipl12NandSDWorkerFv, global
/* 81348808 00016C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134880C 00016C0C  7C 08 02 A6 */	mflr r0
/* 81348810 00016C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348814 00016C14  48 00 9F A5 */	bl fn_813527B8
/* 81348818 00016C18  38 03 FF FF */	subi r0, r3, 0x1
/* 8134881C 00016C1C  7C 00 00 34 */	cntlzw r0, r0
/* 81348820 00016C20  54 03 D9 7E */	srwi r3, r0, 5
/* 81348824 00016C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348828 00016C28  7C 08 03 A6 */	mtlr r0
/* 8134882C 00016C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 81348830 00016C30  4E 80 00 20 */	blr
.endfn is_terminated__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::get_async_result()
.fn get_async_result__Q23ipl12NandSDWorkerFv, global
/* 81348834 00016C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348838 00016C38  7C 08 02 A6 */	mflr r0
/* 8134883C 00016C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348840 00016C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348844 00016C44  7C 7F 1B 78 */	mr r31, r3
/* 81348848 00016C48  48 00 9F 71 */	bl fn_813527B8
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

# ipl::NandSDWorker::get_sd_state()
.fn get_sd_state__Q23ipl12NandSDWorkerFv, global
/* 81348884 00016C84  80 6D A6 98 */	lwz r3, lbl_816986D8@sda21(r0)
/* 81348888 00016C88  4E 80 00 20 */	blr
.endfn get_sd_state__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::get_nand_save_num()
.fn get_nand_save_num__Q23ipl12NandSDWorkerFv, global
/* 8134888C 00016C8C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81348890 00016C90  3C 63 00 04 */	addis r3, r3, 0x4
/* 81348894 00016C94  80 63 EA 28 */	lwz r3, -0x15d8(r3)
/* 81348898 00016C98  4E 80 00 20 */	blr
.endfn get_nand_save_num__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::get_nand_app_num()
.fn get_nand_app_num__Q23ipl12NandSDWorkerFv, global
/* 8134889C 00016C9C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 813488A0 00016CA0  3C 63 00 04 */	addis r3, r3, 0x4
/* 813488A4 00016CA4  80 63 EA 2C */	lwz r3, -0x15d4(r3)
/* 813488A8 00016CA8  4E 80 00 20 */	blr
.endfn get_nand_app_num__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::get_cached_nand_save_banner(unsigned long long)
.fn get_cached_nand_save_banner__Q23ipl12NandSDWorkerFUx, global
/* 813488AC 00016CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813488B0 00016CB0  7C 08 02 A6 */	mflr r0
/* 813488B4 00016CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813488B8 00016CB8  80 83 00 00 */	lwz r4, 0x0(r3)
/* 813488BC 00016CBC  3C 84 00 02 */	addis r4, r4, 0x2
/* 813488C0 00016CC0  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 813488C4 00016CC4  48 00 A2 F1 */	bl fn_81352BB4
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
/* 81348914 00016D14  48 00 A4 E5 */	bl fn_81352DF8
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

# ipl::NandSDWorker::get_cached_nand_app_meta_header(unsigned long long)
.fn get_cached_nand_app_meta_header__Q23ipl12NandSDWorkerFUx, global
/* 81348958 00016D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134895C 00016D5C  7C 08 02 A6 */	mflr r0
/* 81348960 00016D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348964 00016D64  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348968 00016D68  3C 84 00 02 */	addis r4, r4, 0x2
/* 8134896C 00016D6C  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348970 00016D70  48 00 A4 89 */	bl fn_81352DF8
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
/* 813489DC 00016DDC  48 00 A4 1D */	bl fn_81352DF8
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

# ipl::NandSDWorker::get_cached_nand_save_size(unsigned long long)
.fn get_cached_nand_save_size__Q23ipl12NandSDWorkerFUx, global
/* 81348A14 00016E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348A18 00016E18  7C 08 02 A6 */	mflr r0
/* 81348A1C 00016E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348A20 00016E20  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348A24 00016E24  3C 84 00 02 */	addis r4, r4, 0x2
/* 81348A28 00016E28  38 84 E6 60 */	subi r4, r4, 0x19a0
/* 81348A2C 00016E2C  48 00 A1 89 */	bl fn_81352BB4
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

# ipl::NandSDWorker::get_cached_nand_app_size(unsigned long long)
.fn get_cached_nand_app_size__Q23ipl12NandSDWorkerFUx, global
/* 81348A60 00016E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348A64 00016E64  7C 08 02 A6 */	mflr r0
/* 81348A68 00016E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348A6C 00016E6C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 81348A70 00016E70  3C 84 00 02 */	addis r4, r4, 0x2
/* 81348A74 00016E74  38 84 E6 78 */	subi r4, r4, 0x1988
/* 81348A78 00016E78  48 00 A3 81 */	bl fn_81352DF8
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
/* 81348B24 00016F24  48 00 A0 91 */	bl fn_81352BB4
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
/* 81348B90 00016F90  48 00 A2 69 */	bl fn_81352DF8
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
/* 81348C08 00017008  48 00 9F AD */	bl fn_81352BB4
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
/* 81348C70 00017070  48 00 A1 89 */	bl fn_81352DF8
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

# ipl::NandSDWorker::startup_async()
.fn startup_async__Q23ipl12NandSDWorkerFv, global
/* 81348CE8 000170E8  38 80 00 02 */	li r4, 0x2
/* 81348CEC 000170EC  48 00 9A 0C */	b fn_813526F8
.endfn startup_async__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::terminate_async()
.fn terminate_async__Q23ipl12NandSDWorkerFv, global
/* 81348CF0 000170F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81348CF4 000170F4  7C 08 02 A6 */	mflr r0
/* 81348CF8 000170F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 81348CFC 000170FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81348D00 00017100  7C 7F 1B 78 */	mr r31, r3
/* 81348D04 00017104  48 00 9A B5 */	bl fn_813527B8
/* 81348D08 00017108  38 03 FF FF */	subi r0, r3, 0x1
/* 81348D0C 0001710C  7C 00 00 34 */	cntlzw r0, r0
/* 81348D10 00017110  54 00 D9 7F */	srwi. r0, r0, 5
/* 81348D14 00017114  40 82 00 10 */	bne .L_81348D24
/* 81348D18 00017118  7F E3 FB 78 */	mr r3, r31
/* 81348D1C 0001711C  38 80 00 01 */	li r4, 0x1
/* 81348D20 00017120  48 00 99 D9 */	bl fn_813526F8
.L_81348D24:
/* 81348D24 00017124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348D28 00017128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81348D2C 0001712C  7C 08 03 A6 */	mtlr r0
/* 81348D30 00017130  38 21 00 10 */	addi r1, r1, 0x10
/* 81348D34 00017134  4E 80 00 20 */	blr
.endfn terminate_async__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::mount_sd_async()
.fn mount_sd_async__Q23ipl12NandSDWorkerFv, global
/* 81348D38 00017138  38 80 00 03 */	li r4, 0x3
/* 81348D3C 0001713C  48 00 99 BC */	b fn_813526F8
.endfn mount_sd_async__Q23ipl12NandSDWorkerFv

# ipl::NandSDWorker::list_nand_save_async(unsigned long long*)
.fn list_nand_save_async__Q23ipl12NandSDWorkerFPUx, global
/* 81348D40 00017140  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D44 00017144  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D48 00017148  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D4C 0001714C  38 80 00 04 */	li r4, 0x4
/* 81348D50 00017150  48 00 99 A8 */	b fn_813526F8
.endfn list_nand_save_async__Q23ipl12NandSDWorkerFPUx

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
/* 81348D74 00017174  48 00 99 84 */	b fn_813526F8
.endfn get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile

# ipl::NandSDWorker::list_sd_save_async(unsigned long*)
.fn list_sd_save_async__Q23ipl12NandSDWorkerFPUl, global
/* 81348D78 00017178  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D7C 0001717C  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D80 00017180  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D84 00017184  38 80 00 06 */	li r4, 0x6
/* 81348D88 00017188  48 00 99 70 */	b fn_813526F8
.endfn list_sd_save_async__Q23ipl12NandSDWorkerFPUl

# ipl::NandSDWorker::list_sd_app_async(unsigned long*)
.fn list_sd_app_async__Q23ipl12NandSDWorkerFPUl, global
/* 81348D8C 0001718C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81348D90 00017190  3C A5 00 04 */	addis r5, r5, 0x4
/* 81348D94 00017194  90 85 EA 38 */	stw r4, -0x15c8(r5)
/* 81348D98 00017198  38 80 00 17 */	li r4, 0x17
/* 81348D9C 0001719C  48 00 99 5C */	b fn_813526F8
.endfn list_sd_app_async__Q23ipl12NandSDWorkerFPUl

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
/* 81348DC4 000171C4  48 00 99 34 */	b fn_813526F8
.endfn get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile

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
/* 81348DF8 000171F8  48 00 99 00 */	b fn_813526F8
.endfn get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader
