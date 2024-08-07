.include "macros.inc"
.file "iplErrorHandler.cpp"

# 0x81356458..0x813567FC | size: 0x3A4
.text
.balign 4

# .text:0x0 | 0x81356458 | size: 0xBC
# ipl::ErrorHandler::ErrorHandler(EGG::Heap*)
.fn __ct__Q23ipl12ErrorHandlerFPQ23EGG4Heap, global
/* 81356458 00024858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135645C 0002485C  7C 08 02 A6 */	mflr r0
/* 81356460 00024860  90 01 00 24 */	stw r0, 0x24(r1)
/* 81356464 00024864  39 61 00 20 */	addi r11, r1, 0x20
/* 81356468 00024868  48 2A 30 61 */	bl _savegpr_29
/* 8135646C 0002486C  38 00 00 00 */	li r0, 0x0
/* 81356470 00024870  3F E0 81 64 */	lis r31, fatalDlg_ash@ha
/* 81356474 00024874  90 03 00 00 */	stw r0, 0x0(r3)
/* 81356478 00024878  3B FF B7 E0 */	addi r31, r31, fatalDlg_ash@l
/* 8135647C 0002487C  7C 7D 1B 78 */	mr r29, r3
/* 81356480 00024880  7C 9E 23 78 */	mr r30, r4
/* 81356484 00024884  90 03 00 04 */	stw r0, 0x4(r3)
/* 81356488 00024888  38 A0 00 20 */	li r5, 0x20
/* 8135648C 0002488C  90 03 00 08 */	stw r0, 0x8(r3)
/* 81356490 00024890  90 03 00 18 */	stw r0, 0x18(r3)
/* 81356494 00024894  88 1F 00 06 */	lbz r0, 0x6(r31)
/* 81356498 00024898  88 DF 00 05 */	lbz r6, 0x5(r31)
/* 8135649C 0002489C  54 00 40 2E */	slwi r0, r0, 8
/* 813564A0 000248A0  88 FF 00 07 */	lbz r7, 0x7(r31)
/* 813564A4 000248A4  50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 813564A8 000248A8  7C E0 03 78 */	or r0, r7, r0
/* 813564AC 000248AC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 813564B0 000248B0  7C 03 03 78 */	mr r3, r0
/* 813564B4 000248B4  48 2A 1C 21 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813564B8 000248B8  90 7D 00 18 */	stw r3, 0x18(r29)
/* 813564BC 000248BC  7F E4 FB 78 */	mr r4, r31
/* 813564C0 000248C0  4B FD BC 61 */	bl Rvl_decode
/* 813564C4 000248C4  7F C4 F3 78 */	mr r4, r30
/* 813564C8 000248C8  38 60 05 80 */	li r3, 0x580
/* 813564CC 000248CC  38 A0 00 04 */	li r5, 0x4
/* 813564D0 000248D0  48 2A 1B E1 */	bl __nw__FUlPQ23EGG4Heapi
/* 813564D4 000248D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813564D8 000248D8  41 82 00 1C */	beq .L_813564F4
/* 813564DC 000248DC  3C E0 81 64 */	lis r7, lbl_81638E78@ha
/* 813564E0 000248E0  80 BD 00 18 */	lwz r5, 0x18(r29)
/* 813564E4 000248E4  7F C4 F3 78 */	mr r4, r30
/* 813564E8 000248E8  38 CD 81 C0 */	li r6, lbl_81696200@sda21
/* 813564EC 000248EC  38 E7 8E 78 */	addi r7, r7, lbl_81638E78@l
/* 813564F0 000248F0  48 01 3A 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc
.L_813564F4:
/* 813564F4 000248F4  90 7D 00 20 */	stw r3, 0x20(r29)
/* 813564F8 000248F8  39 61 00 20 */	addi r11, r1, 0x20
/* 813564FC 000248FC  7F A3 EB 78 */	mr r3, r29
/* 81356500 00024900  48 2A 30 15 */	bl _restgpr_29
/* 81356504 00024904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81356508 00024908  7C 08 03 A6 */	mtlr r0
/* 8135650C 0002490C  38 21 00 20 */	addi r1, r1, 0x20
/* 81356510 00024910  4E 80 00 20 */	blr
.endfn __ct__Q23ipl12ErrorHandlerFPQ23EGG4Heap

# .text:0xBC | 0x81356514 | size: 0x98
# ipl::ErrorHandler::set(ipl::ErrorHandler::Type, unsigned long, const char*, int, int)
.fn set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii, global
/* 81356514 00024914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356518 00024918  7C 08 02 A6 */	mflr r0
/* 8135651C 0002491C  2C 06 00 00 */	cmpwi r6, 0x0
/* 81356520 00024920  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356524 00024924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356528 00024928  7C 7F 1B 78 */	mr r31, r3
/* 8135652C 0002492C  90 83 00 04 */	stw r4, 0x4(r3)
/* 81356530 00024930  90 A3 00 08 */	stw r5, 0x8(r3)
/* 81356534 00024934  90 E3 00 0C */	stw r7, 0xc(r3)
/* 81356538 00024938  91 03 00 10 */	stw r8, 0x10(r3)
/* 8135653C 0002493C  41 82 00 20 */	beq .L_8135655C
/* 81356540 00024940  7C C4 33 78 */	mr r4, r6
/* 81356544 00024944  38 A0 00 04 */	li r5, 0x4
/* 81356548 00024948  38 63 00 14 */	addi r3, r3, 0x14
/* 8135654C 0002494C  48 2A BE 79 */	bl strncpy
/* 81356550 00024950  38 00 00 00 */	li r0, 0x0
/* 81356554 00024954  98 1F 00 17 */	stb r0, 0x17(r31)
/* 81356558 00024958  48 00 00 14 */	b .L_8135656C
.L_8135655C:
/* 8135655C 0002495C  38 80 00 00 */	li r4, 0x0
/* 81356560 00024960  38 A0 00 04 */	li r5, 0x4
/* 81356564 00024964  38 63 00 14 */	addi r3, r3, 0x14
/* 81356568 00024968  4B FD 9D CD */	bl memset
.L_8135656C:
/* 8135656C 0002496C  48 1D D9 F5 */	bl fn_81533F60
/* 81356570 00024970  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81356574 00024974  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81356578 00024978  80 84 00 C0 */	lwz r4, 0xc0(r4)
/* 8135657C 0002497C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 81356580 00024980  7C 03 00 40 */	cmplw r3, r0
/* 81356584 00024984  40 82 00 10 */	bne .L_81356594
/* 81356588 00024988  7F E3 FB 78 */	mr r3, r31
/* 8135658C 0002498C  48 00 00 21 */	bl check__Q23ipl12ErrorHandlerFv
/* 81356590 00024990  48 00 00 08 */	b .L_81356598
.L_81356594:
/* 81356594 00024994  48 1D E3 05 */	bl fn_81534898
.L_81356598:
/* 81356598 00024998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135659C 0002499C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813565A0 000249A0  7C 08 03 A6 */	mtlr r0
/* 813565A4 000249A4  38 21 00 10 */	addi r1, r1, 0x10
/* 813565A8 000249A8  4E 80 00 20 */	blr
.endfn set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii

# .text:0x154 | 0x813565AC | size: 0x14C
# ipl::ErrorHandler::check()
.fn check__Q23ipl12ErrorHandlerFv, global
/* 813565AC 000249AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813565B0 000249B0  7C 08 02 A6 */	mflr r0
/* 813565B4 000249B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 813565B8 000249B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813565BC 000249BC  7C 7F 1B 78 */	mr r31, r3
/* 813565C0 000249C0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 813565C4 000249C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813565C8 000249C8  41 82 01 1C */	beq .L_813566E4
/* 813565CC 000249CC  38 61 00 08 */	addi r3, r1, 0x8
/* 813565D0 000249D0  4B FE 81 2D */	bl __ct__Q33ipl7message7MessageFv
/* 813565D4 000249D4  4B FD F4 19 */	bl getLanguage__Q23ipl6SystemFv
/* 813565D8 000249D8  28 03 00 09 */	cmplwi r3, 0x9
/* 813565DC 000249DC  41 81 00 7C */	bgt .L_81356658
/* 813565E0 000249E0  3C 80 81 64 */	lis r4, jumptable_81638E94@ha
/* 813565E4 000249E4  54 60 10 3A */	slwi r0, r3, 2
/* 813565E8 000249E8  38 84 8E 94 */	addi r4, r4, jumptable_81638E94@l
/* 813565EC 000249EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 813565F0 000249F0  7C 89 03 A6 */	mtctr r4
/* 813565F4 000249F4  4E 80 04 20 */	bctr
.L_813565F8:
/* 813565F8 000249F8  3C 80 81 64 */	lis r4, ipl_error_fra_bmg@ha
/* 813565FC 000249FC  38 84 9C E0 */	addi r4, r4, ipl_error_fra_bmg@l
/* 81356600 00024A00  48 00 00 60 */	b .L_81356660
.L_81356604:
/* 81356604 00024A04  3C 80 81 64 */	lis r4, ipl_error_ger_bmg@ha
/* 81356608 00024A08  38 84 A1 00 */	addi r4, r4, ipl_error_ger_bmg@l
/* 8135660C 00024A0C  48 00 00 54 */	b .L_81356660
.L_81356610:
/* 81356610 00024A10  3C 80 81 64 */	lis r4, ipl_error_ita_bmg@ha
/* 81356614 00024A14  38 84 A5 60 */	addi r4, r4, ipl_error_ita_bmg@l
/* 81356618 00024A18  48 00 00 48 */	b .L_81356660
.L_8135661C:
/* 8135661C 00024A1C  3C 80 81 64 */	lis r4, ipl_error_jpn_bmg@ha
/* 81356620 00024A20  38 84 A9 C0 */	addi r4, r4, ipl_error_jpn_bmg@l
/* 81356624 00024A24  48 00 00 3C */	b .L_81356660
.L_81356628:
/* 81356628 00024A28  3C 80 81 64 */	lis r4, ipl_error_ned_bmg@ha
/* 8135662C 00024A2C  38 84 AC 40 */	addi r4, r4, ipl_error_ned_bmg@l
/* 81356630 00024A30  48 00 00 30 */	b .L_81356660
.L_81356634:
/* 81356634 00024A34  3C 80 81 64 */	lis r4, ipl_error_spa_bmg@ha
/* 81356638 00024A38  38 84 AF E0 */	addi r4, r4, ipl_error_spa_bmg@l
/* 8135663C 00024A3C  48 00 00 24 */	b .L_81356660
.L_81356640:
/* 81356640 00024A40  3C 80 81 64 */	lis r4, ipl_error_chn_bmg@ha
/* 81356644 00024A44  38 84 B6 20 */	addi r4, r4, ipl_error_chn_bmg@l
/* 81356648 00024A48  48 00 00 18 */	b .L_81356660
.L_8135664C:
/* 8135664C 00024A4C  3C 80 81 64 */	lis r4, ipl_error_kor_bmg@ha
/* 81356650 00024A50  38 84 B4 00 */	addi r4, r4, ipl_error_kor_bmg@l
/* 81356654 00024A54  48 00 00 0C */	b .L_81356660
.L_81356658:
/* 81356658 00024A58  3C 80 81 64 */	lis r4, ipl_error_eng_bmg@ha
/* 8135665C 00024A5C  38 84 99 00 */	addi r4, r4, ipl_error_eng_bmg@l
.L_81356660:
/* 81356660 00024A60  38 61 00 08 */	addi r3, r1, 0x8
/* 81356664 00024A64  4B FE 80 ED */	bl setResource__Q33ipl7message7MessageFPUc
/* 81356668 00024A68  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8135666C 00024A6C  3C 80 81 64 */	lis r4, lbl_81638E87@ha
/* 81356670 00024A70  38 84 8E 87 */	addi r4, r4, lbl_81638E87@l
/* 81356674 00024A74  38 A0 00 01 */	li r5, 0x1
/* 81356678 00024A78  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8135667C 00024A7C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356680 00024A80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81356684 00024A84  7D 89 03 A6 */	mtctr r12
/* 81356688 00024A88  4E 80 04 21 */	bctrl
/* 8135668C 00024A8C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81356690 00024A90  7C 7F 1B 78 */	mr r31, r3
/* 81356694 00024A94  38 61 00 08 */	addi r3, r1, 0x8
/* 81356698 00024A98  4B FE 81 25 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8135669C 00024A9C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813566A0 00024AA0  7C 64 1B 78 */	mr r4, r3
/* 813566A4 00024AA4  7F E3 FB 78 */	mr r3, r31
/* 813566A8 00024AA8  38 A0 00 00 */	li r5, 0x0
/* 813566AC 00024AAC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813566B0 00024AB0  7D 89 03 A6 */	mtctr r12
/* 813566B4 00024AB4  4E 80 04 21 */	bctrl
/* 813566B8 00024AB8  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813566BC 00024ABC  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813566C0 00024AC0  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813566C4 00024AC4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813566C8 00024AC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813566CC 00024ACC  7D 89 03 A6 */	mtctr r12
/* 813566D0 00024AD0  4E 80 04 21 */	bctrl
/* 813566D4 00024AD4  4B FD E8 39 */	bl err_run__Q23ipl6SystemFv
/* 813566D8 00024AD8  38 61 00 08 */	addi r3, r1, 0x8
/* 813566DC 00024ADC  38 80 FF FF */	li r4, -0x1
/* 813566E0 00024AE0  4B FE 80 31 */	bl __dt__Q33ipl7message7MessageFv
.L_813566E4:
/* 813566E4 00024AE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813566E8 00024AE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813566EC 00024AEC  7C 08 03 A6 */	mtlr r0
/* 813566F0 00024AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 813566F4 00024AF4  4E 80 00 20 */	blr
.endfn check__Q23ipl12ErrorHandlerFv

# .text:0x2A0 | 0x813566F8 | size: 0x30
# ipl::ErrorHandler::log(const char*, int, const char*, int)
.fn log__Q23ipl12ErrorHandlerFPCciPCci, global
/* 813566F8 00024AF8  7C 89 23 78 */	mr r9, r4
/* 813566FC 00024AFC  7C A3 2B 78 */	mr r3, r5
/* 81356700 00024B00  7C C0 33 78 */	mr r0, r6
/* 81356704 00024B04  3C 80 81 64 */	lis r4, lbl_81638EBC@ha
/* 81356708 00024B08  7C E8 3B 78 */	mr r8, r7
/* 8135670C 00024B0C  7C 66 1B 78 */	mr r6, r3
/* 81356710 00024B10  7D 25 4B 78 */	mr r5, r9
/* 81356714 00024B14  7C 07 03 78 */	mr r7, r0
/* 81356718 00024B18  38 84 8E BC */	addi r4, r4, lbl_81638EBC@l
/* 8135671C 00024B1C  38 60 00 00 */	li r3, 0x0
/* 81356720 00024B20  4C C6 31 82 */	crclr cr1eq
/* 81356724 00024B24  48 21 16 04 */	b NANDLoggingAddMessageAsync
.endfn log__Q23ipl12ErrorHandlerFPCciPCci

# .text:0x2D0 | 0x81356728 | size: 0x90
# ipl::ErrorHandler::calc()
.fn calc__Q23ipl12ErrorHandlerFv, global
/* 81356728 00024B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135672C 00024B2C  7C 08 02 A6 */	mflr r0
/* 81356730 00024B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356734 00024B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356738 00024B38  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135673C 00024B3C  7C 7E 1B 78 */	mr r30, r3
/* 81356740 00024B40  80 03 00 00 */	lwz r0, 0x0(r3)
/* 81356744 00024B44  2C 00 00 00 */	cmpwi r0, 0x0
/* 81356748 00024B48  40 82 00 44 */	bne .L_8135678C
/* 8135674C 00024B4C  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81356750 00024B50  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81356754 00024B54  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 81356758 00024B58  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135675C 00024B5C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81356760 00024B60  7D 89 03 A6 */	mtctr r12
/* 81356764 00024B64  4E 80 04 21 */	bctrl
/* 81356768 00024B68  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135676C 00024B6C  40 82 00 20 */	bne .L_8135678C
/* 81356770 00024B70  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 81356774 00024B74  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356778 00024B78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8135677C 00024B7C  7D 89 03 A6 */	mtctr r12
/* 81356780 00024B80  4E 80 04 21 */	bctrl
/* 81356784 00024B84  38 00 00 01 */	li r0, 0x1
/* 81356788 00024B88  90 1E 00 00 */	stw r0, 0x0(r30)
.L_8135678C:
/* 8135678C 00024B8C  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81356790 00024B90  2C 00 00 01 */	cmpwi r0, 0x1
/* 81356794 00024B94  40 82 00 0C */	bne .L_813567A0
/* 81356798 00024B98  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8135679C 00024B9C  48 01 3F 69 */	bl calc__Q33ipl6layout6ObjectFv
.L_813567A0:
/* 813567A0 00024BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813567A4 00024BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813567A8 00024BA8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813567AC 00024BAC  7C 08 03 A6 */	mtlr r0
/* 813567B0 00024BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 813567B4 00024BB4  4E 80 00 20 */	blr
.endfn calc__Q23ipl12ErrorHandlerFv

# .text:0x360 | 0x813567B8 | size: 0x44
# ipl::ErrorHandler::draw()
.fn draw__Q23ipl12ErrorHandlerFv, global
/* 813567B8 00024BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813567BC 00024BBC  7C 08 02 A6 */	mflr r0
/* 813567C0 00024BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813567C4 00024BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813567C8 00024BC8  7C 7F 1B 78 */	mr r31, r3
/* 813567CC 00024BCC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 813567D0 00024BD0  2C 00 00 01 */	cmpwi r0, 0x1
/* 813567D4 00024BD4  40 82 00 14 */	bne .L_813567E8
/* 813567D8 00024BD8  38 60 00 00 */	li r3, 0x0
/* 813567DC 00024BDC  48 00 C2 F1 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813567E0 00024BE0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 813567E4 00024BE4  48 01 3F B9 */	bl draw__Q33ipl6layout6ObjectFv
.L_813567E8:
/* 813567E8 00024BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813567EC 00024BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813567F0 00024BF0  7C 08 03 A6 */	mtlr r0
/* 813567F4 00024BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 813567F8 00024BF8  4E 80 00 20 */	blr
.endfn draw__Q23ipl12ErrorHandlerFv

# 0x81638E78..0x81638ED8 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x81638E78 | size: 0xF
.obj lbl_81638E78, global
	.string "my_Fatal.brlyt"
.endobj lbl_81638E78

# .data:0xF | 0x81638E87 | size: 0xD
.obj lbl_81638E87, global
	.4byte 0x54657874
	.4byte 0x426F785F
	.4byte 0x30300000
	.byte 0x00
.endobj lbl_81638E87

# .data:0x1C | 0x81638E94 | size: 0x28
.obj jumptable_81638E94, local
	.rel check__Q23ipl12ErrorHandlerFv, .L_8135661C
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356658
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356604
	.rel check__Q23ipl12ErrorHandlerFv, .L_813565F8
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356634
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356610
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356628
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356640
	.rel check__Q23ipl12ErrorHandlerFv, .L_81356658
	.rel check__Q23ipl12ErrorHandlerFv, .L_8135664C
.endobj jumptable_81638E94

# .data:0x44 | 0x81638EBC | size: 0x1C
.obj lbl_81638EBC, global
	.4byte 0x25732065
	.4byte 0x72726F72
	.4byte 0x2E205B25
	.4byte 0x645D2025
	.4byte 0x73206C69
	.4byte 0x6E653A20
	.4byte 0x25640000
.endobj lbl_81638EBC

# 0x81696200..0x81696208 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696200 | size: 0x8
.obj lbl_81696200, global
	.4byte 0x61726300
	.4byte 0x00000000
.endobj lbl_81696200
