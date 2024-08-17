.include "macros.inc"
.file "BS2Reset.c"

# 0x8138049C..0x81380A34 | size: 0x598
.text
.balign 4

# .text:0x0 | 0x8138049C | size: 0xA0
.fn __OSLaunchMenu, global
/* 8138049C 0004E89C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813804A0 0004E8A0  7C 08 02 A6 */	mflr r0
/* 813804A4 0004E8A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 813804A8 0004E8A8  38 00 00 01 */	li r0, 0x1
/* 813804AC 0004E8AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813804B0 0004E8B0  83 ED 85 70 */	lwz r31, lbl_816965B0@sda21(r0)
/* 813804B4 0004E8B4  90 01 00 08 */	stw r0, 0x8(r1)
/* 813804B8 0004E8B8  48 23 D4 E9 */	bl ES_InitLib
/* 813804BC 0004E8BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813804C0 0004E8C0  40 82 00 68 */	bne .L_81380528
/* 813804C4 0004E8C4  38 C1 00 08 */	addi r6, r1, 0x8
/* 813804C8 0004E8C8  38 80 00 02 */	li r4, 0x2
/* 813804CC 0004E8CC  38 60 00 01 */	li r3, 0x1
/* 813804D0 0004E8D0  38 A0 00 00 */	li r5, 0x0
/* 813804D4 0004E8D4  48 23 E4 35 */	bl fn_815BE908
/* 813804D8 0004E8D8  80 01 00 08 */	lwz r0, 0x8(r1)
/* 813804DC 0004E8DC  28 00 00 01 */	cmplwi r0, 0x1
/* 813804E0 0004E8E0  40 82 00 48 */	bne .L_81380528
/* 813804E4 0004E8E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813804E8 0004E8E8  41 82 00 08 */	beq .L_813804F0
/* 813804EC 0004E8EC  48 00 00 3C */	b .L_81380528
.L_813804F0:
/* 813804F0 0004E8F0  7F E5 FB 78 */	mr r5, r31
/* 813804F4 0004E8F4  38 C1 00 08 */	addi r6, r1, 0x8
/* 813804F8 0004E8F8  38 80 00 02 */	li r4, 0x2
/* 813804FC 0004E8FC  38 60 00 01 */	li r3, 0x1
/* 81380500 0004E900  48 23 E4 09 */	bl fn_815BE908
/* 81380504 0004E904  2C 03 00 00 */	cmpwi r3, 0x0
/* 81380508 0004E908  40 82 00 20 */	bne .L_81380528
/* 8138050C 0004E90C  7F E5 FB 78 */	mr r5, r31
/* 81380510 0004E910  38 80 00 02 */	li r4, 0x2
/* 81380514 0004E914  38 60 00 01 */	li r3, 0x1
/* 81380518 0004E918  48 23 DB A1 */	bl ES_LaunchTitle
/* 8138051C 0004E91C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81380520 0004E920  40 82 00 08 */	bne .L_81380528
.L_81380524:
/* 81380524 0004E924  48 00 00 00 */	b .L_81380524
.L_81380528:
/* 81380528 0004E928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138052C 0004E92C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81380530 0004E930  7C 08 03 A6 */	mtlr r0
/* 81380534 0004E934  38 21 00 20 */	addi r1, r1, 0x20
/* 81380538 0004E938  4E 80 00 20 */	blr
.endfn __OSLaunchMenu

# .text:0xA0 | 0x8138053C | size: 0xC4
.fn OSRebootSystem, global
/* 8138053C 0004E93C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81380540 0004E940  7C 08 02 A6 */	mflr r0
/* 81380544 0004E944  90 01 00 34 */	stw r0, 0x34(r1)
/* 81380548 0004E948  48 1B 6F 85 */	bl fn_815374CC
/* 8138054C 0004E94C  48 1B 66 49 */	bl fn_81536B94
/* 81380550 0004E950  48 1C E0 3D */	bl fn_8154E58C
/* 81380554 0004E954  38 61 00 0C */	addi r3, r1, 0xc
/* 81380558 0004E958  48 1B 72 AD */	bl fn_81537804
/* 8138055C 0004E95C  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 81380560 0004E960  38 60 00 84 */	li r3, 0x84
/* 81380564 0004E964  98 61 00 10 */	stb r3, 0x10(r1)
/* 81380568 0004E968  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138056C 0004E96C  41 82 00 0C */	beq .L_81380578
/* 81380570 0004E970  60 60 00 40 */	ori r0, r3, 0x40
/* 81380574 0004E974  98 01 00 10 */	stb r0, 0x10(r1)
.L_81380578:
/* 81380578 0004E978  48 1C DE FD */	bl fn_8154E474
/* 8138057C 0004E97C  28 03 00 02 */	cmplwi r3, 0x2
/* 81380580 0004E980  41 82 00 10 */	beq .L_81380590
/* 81380584 0004E984  38 00 00 03 */	li r0, 0x3
/* 81380588 0004E988  98 01 00 12 */	stb r0, 0x12(r1)
/* 8138058C 0004E98C  48 00 00 40 */	b .L_813805CC
.L_81380590:
/* 81380590 0004E990  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 81380594 0004E994  2C 00 00 00 */	cmpwi r0, 0x0
/* 81380598 0004E998  41 82 00 20 */	beq .L_813805B8
/* 8138059C 0004E99C  38 61 00 08 */	addi r3, r1, 0x8
/* 813805A0 0004E9A0  48 1B 32 E5 */	bl fn_81533884
/* 813805A4 0004E9A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813805A8 0004E9A8  41 82 00 1C */	beq .L_813805C4
/* 813805AC 0004E9AC  80 01 00 08 */	lwz r0, 0x8(r1)
/* 813805B0 0004E9B0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813805B4 0004E9B4  41 82 00 10 */	beq .L_813805C4
.L_813805B8:
/* 813805B8 0004E9B8  38 00 00 02 */	li r0, 0x2
/* 813805BC 0004E9BC  98 01 00 12 */	stb r0, 0x12(r1)
/* 813805C0 0004E9C0  48 00 00 0C */	b .L_813805CC
.L_813805C4:
/* 813805C4 0004E9C4  38 00 00 01 */	li r0, 0x1
/* 813805C8 0004E9C8  98 01 00 12 */	stb r0, 0x12(r1)
.L_813805CC:
/* 813805CC 0004E9CC  38 00 00 02 */	li r0, 0x2
/* 813805D0 0004E9D0  98 01 00 11 */	stb r0, 0x11(r1)
/* 813805D4 0004E9D4  48 1B 33 CD */	bl fn_815339A0
/* 813805D8 0004E9D8  38 61 00 0C */	addi r3, r1, 0xc
/* 813805DC 0004E9DC  48 1B 71 45 */	bl fn_81537720
/* 813805E0 0004E9E0  48 1B 39 CD */	bl fn_81533FAC
/* 813805E4 0004E9E4  38 60 00 01 */	li r3, 0x1
/* 813805E8 0004E9E8  48 1B 1C B1 */	bl fn_81532298
/* 813805EC 0004E9EC  48 1B 64 01 */	bl fn_815369EC
/* 813805F0 0004E9F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 813805F4 0004E9F4  7C 08 03 A6 */	mtlr r0
/* 813805F8 0004E9F8  38 21 00 30 */	addi r1, r1, 0x30
/* 813805FC 0004E9FC  4E 80 00 20 */	blr
.endfn OSRebootSystem

# .text:0x164 | 0x81380600 | size: 0x138
.fn OSShutdownSystem, global
/* 81380600 0004EA00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81380604 0004EA04  7C 08 02 A6 */	mflr r0
/* 81380608 0004EA08  38 80 00 00 */	li r4, 0x0
/* 8138060C 0004EA0C  38 A0 00 02 */	li r5, 0x2
/* 81380610 0004EA10  90 01 00 44 */	stw r0, 0x44(r1)
/* 81380614 0004EA14  38 61 00 08 */	addi r3, r1, 0x8
/* 81380618 0004EA18  4B FA FD 1D */	bl memset
/* 8138061C 0004EA1C  48 1E 7C 89 */	bl fn_815682A4
.L_81380620:
/* 81380620 0004EA20  48 1E 7D 25 */	bl fn_81568344
/* 81380624 0004EA24  28 03 00 01 */	cmplwi r3, 0x1
/* 81380628 0004EA28  41 82 FF F8 */	beq .L_81380620
/* 8138062C 0004EA2C  38 61 00 08 */	addi r3, r1, 0x8
/* 81380630 0004EA30  48 1E 9A BD */	bl fn_8156A0EC
/* 81380634 0004EA34  48 1B 6E 99 */	bl fn_815374CC
/* 81380638 0004EA38  48 1B 65 5D */	bl fn_81536B94
/* 8138063C 0004EA3C  48 1C DF 51 */	bl fn_8154E58C
/* 81380640 0004EA40  38 61 00 18 */	addi r3, r1, 0x18
/* 81380644 0004EA44  48 1B 71 C1 */	bl fn_81537804
/* 81380648 0004EA48  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 8138064C 0004EA4C  38 60 00 84 */	li r3, 0x84
/* 81380650 0004EA50  98 61 00 1C */	stb r3, 0x1c(r1)
/* 81380654 0004EA54  2C 00 00 00 */	cmpwi r0, 0x0
/* 81380658 0004EA58  41 82 00 0C */	beq .L_81380664
/* 8138065C 0004EA5C  60 60 00 40 */	ori r0, r3, 0x40
/* 81380660 0004EA60  98 01 00 1C */	stb r0, 0x1c(r1)
.L_81380664:
/* 81380664 0004EA64  48 1C DE 11 */	bl fn_8154E474
/* 81380668 0004EA68  28 03 00 02 */	cmplwi r3, 0x2
/* 8138066C 0004EA6C  41 82 00 10 */	beq .L_8138067C
/* 81380670 0004EA70  38 00 00 03 */	li r0, 0x3
/* 81380674 0004EA74  98 01 00 1E */	stb r0, 0x1e(r1)
/* 81380678 0004EA78  48 00 00 40 */	b .L_813806B8
.L_8138067C:
/* 8138067C 0004EA7C  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 81380680 0004EA80  2C 00 00 00 */	cmpwi r0, 0x0
/* 81380684 0004EA84  41 82 00 20 */	beq .L_813806A4
/* 81380688 0004EA88  38 61 00 0C */	addi r3, r1, 0xc
/* 8138068C 0004EA8C  48 1B 31 F9 */	bl fn_81533884
/* 81380690 0004EA90  2C 03 00 00 */	cmpwi r3, 0x0
/* 81380694 0004EA94  41 82 00 1C */	beq .L_813806B0
/* 81380698 0004EA98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8138069C 0004EA9C  2C 00 00 00 */	cmpwi r0, 0x0
/* 813806A0 0004EAA0  41 82 00 10 */	beq .L_813806B0
.L_813806A4:
/* 813806A4 0004EAA4  38 00 00 02 */	li r0, 0x2
/* 813806A8 0004EAA8  98 01 00 1E */	stb r0, 0x1e(r1)
/* 813806AC 0004EAAC  48 00 00 0C */	b .L_813806B8
.L_813806B0:
/* 813806B0 0004EAB0  38 00 00 01 */	li r0, 0x1
/* 813806B4 0004EAB4  98 01 00 1E */	stb r0, 0x1e(r1)
.L_813806B8:
/* 813806B8 0004EAB8  88 01 00 08 */	lbz r0, 0x8(r1)
/* 813806BC 0004EABC  28 00 00 01 */	cmplwi r0, 0x1
/* 813806C0 0004EAC0  40 82 00 10 */	bne .L_813806D0
/* 813806C4 0004EAC4  38 00 00 05 */	li r0, 0x5
/* 813806C8 0004EAC8  98 01 00 1D */	stb r0, 0x1d(r1)
/* 813806CC 0004EACC  48 00 00 0C */	b .L_813806D8
.L_813806D0:
/* 813806D0 0004EAD0  38 00 00 01 */	li r0, 0x1
/* 813806D4 0004EAD4  98 01 00 1D */	stb r0, 0x1d(r1)
.L_813806D8:
/* 813806D8 0004EAD8  48 1B 32 C9 */	bl fn_815339A0
/* 813806DC 0004EADC  38 61 00 18 */	addi r3, r1, 0x18
/* 813806E0 0004EAE0  48 1B 70 41 */	bl fn_81537720
/* 813806E4 0004EAE4  38 61 00 10 */	addi r3, r1, 0x10
/* 813806E8 0004EAE8  48 1A AE FD */	bl fn_8152B5E4
/* 813806EC 0004EAEC  88 01 00 08 */	lbz r0, 0x8(r1)
/* 813806F0 0004EAF0  28 00 00 01 */	cmplwi r0, 0x1
/* 813806F4 0004EAF4  40 82 00 24 */	bne .L_81380718
/* 813806F8 0004EAF8  38 00 00 01 */	li r0, 0x1
/* 813806FC 0004EAFC  90 0D B0 30 */	stw r0, lbl_81699070@sda21(r0)
/* 81380700 0004EB00  48 1B 38 AD */	bl fn_81533FAC
/* 81380704 0004EB04  38 60 00 05 */	li r3, 0x5
/* 81380708 0004EB08  48 1B 1B 91 */	bl fn_81532298
/* 8138070C 0004EB0C  48 1B 38 DD */	bl fn_81533FE8
/* 81380710 0004EB10  4B FF FD 8D */	bl __OSLaunchMenu
/* 81380714 0004EB14  48 00 00 14 */	b .L_81380728
.L_81380718:
/* 81380718 0004EB18  48 1B 38 95 */	bl fn_81533FAC
/* 8138071C 0004EB1C  38 60 00 02 */	li r3, 0x2
/* 81380720 0004EB20  48 1B 1B 79 */	bl fn_81532298
/* 81380724 0004EB24  48 1B 61 99 */	bl fn_815368BC
.L_81380728:
/* 81380728 0004EB28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8138072C 0004EB2C  7C 08 03 A6 */	mtlr r0
/* 81380730 0004EB30  38 21 00 40 */	addi r1, r1, 0x40
/* 81380734 0004EB34  4E 80 00 20 */	blr
.endfn OSShutdownSystem

# .text:0x29C | 0x81380738 | size: 0x168
.fn OSShutdownSystemForBS, global
/* 81380738 0004EB38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8138073C 0004EB3C  7C 08 02 A6 */	mflr r0
/* 81380740 0004EB40  38 80 00 00 */	li r4, 0x0
/* 81380744 0004EB44  38 A0 00 02 */	li r5, 0x2
/* 81380748 0004EB48  90 01 00 44 */	stw r0, 0x44(r1)
/* 8138074C 0004EB4C  38 61 00 08 */	addi r3, r1, 0x8
/* 81380750 0004EB50  4B FA FB E5 */	bl memset
/* 81380754 0004EB54  48 1E 7B 51 */	bl fn_815682A4
.L_81380758:
/* 81380758 0004EB58  48 1E 7B ED */	bl fn_81568344
/* 8138075C 0004EB5C  28 03 00 01 */	cmplwi r3, 0x1
/* 81380760 0004EB60  41 82 FF F8 */	beq .L_81380758
/* 81380764 0004EB64  38 61 00 08 */	addi r3, r1, 0x8
/* 81380768 0004EB68  48 1E 99 85 */	bl fn_8156A0EC
/* 8138076C 0004EB6C  48 1B 6D 61 */	bl fn_815374CC
/* 81380770 0004EB70  48 1B 64 25 */	bl fn_81536B94
/* 81380774 0004EB74  48 1C DE 19 */	bl fn_8154E58C
/* 81380778 0004EB78  38 61 00 18 */	addi r3, r1, 0x18
/* 8138077C 0004EB7C  48 1B 70 89 */	bl fn_81537804
/* 81380780 0004EB80  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 81380784 0004EB84  38 60 00 84 */	li r3, 0x84
/* 81380788 0004EB88  98 61 00 1C */	stb r3, 0x1c(r1)
/* 8138078C 0004EB8C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81380790 0004EB90  41 82 00 0C */	beq .L_8138079C
/* 81380794 0004EB94  60 60 00 40 */	ori r0, r3, 0x40
/* 81380798 0004EB98  98 01 00 1C */	stb r0, 0x1c(r1)
.L_8138079C:
/* 8138079C 0004EB9C  48 1C DC D9 */	bl fn_8154E474
/* 813807A0 0004EBA0  28 03 00 02 */	cmplwi r3, 0x2
/* 813807A4 0004EBA4  41 82 00 10 */	beq .L_813807B4
/* 813807A8 0004EBA8  38 00 00 03 */	li r0, 0x3
/* 813807AC 0004EBAC  98 01 00 1E */	stb r0, 0x1e(r1)
/* 813807B0 0004EBB0  48 00 00 40 */	b .L_813807F0
.L_813807B4:
/* 813807B4 0004EBB4  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 813807B8 0004EBB8  2C 00 00 00 */	cmpwi r0, 0x0
/* 813807BC 0004EBBC  41 82 00 20 */	beq .L_813807DC
/* 813807C0 0004EBC0  38 61 00 0C */	addi r3, r1, 0xc
/* 813807C4 0004EBC4  48 1B 30 C1 */	bl fn_81533884
/* 813807C8 0004EBC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813807CC 0004EBCC  41 82 00 1C */	beq .L_813807E8
/* 813807D0 0004EBD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 813807D4 0004EBD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813807D8 0004EBD8  41 82 00 10 */	beq .L_813807E8
.L_813807DC:
/* 813807DC 0004EBDC  38 00 00 02 */	li r0, 0x2
/* 813807E0 0004EBE0  98 01 00 1E */	stb r0, 0x1e(r1)
/* 813807E4 0004EBE4  48 00 00 0C */	b .L_813807F0
.L_813807E8:
/* 813807E8 0004EBE8  38 00 00 01 */	li r0, 0x1
/* 813807EC 0004EBEC  98 01 00 1E */	stb r0, 0x1e(r1)
.L_813807F0:
/* 813807F0 0004EBF0  38 61 00 10 */	addi r3, r1, 0x10
/* 813807F4 0004EBF4  48 1A AD F1 */	bl fn_8152B5E4
/* 813807F8 0004EBF8  88 01 00 08 */	lbz r0, 0x8(r1)
/* 813807FC 0004EBFC  28 00 00 01 */	cmplwi r0, 0x1
/* 81380800 0004EC00  40 82 00 1C */	bne .L_8138081C
/* 81380804 0004EC04  88 01 00 11 */	lbz r0, 0x11(r1)
/* 81380808 0004EC08  28 00 00 09 */	cmplwi r0, 0x9
/* 8138080C 0004EC0C  41 82 00 10 */	beq .L_8138081C
/* 81380810 0004EC10  38 00 00 04 */	li r0, 0x4
/* 81380814 0004EC14  98 01 00 1D */	stb r0, 0x1d(r1)
/* 81380818 0004EC18  48 00 00 0C */	b .L_81380824
.L_8138081C:
/* 8138081C 0004EC1C  38 00 00 01 */	li r0, 0x1
/* 81380820 0004EC20  98 01 00 1D */	stb r0, 0x1d(r1)
.L_81380824:
/* 81380824 0004EC24  48 1B 31 7D */	bl fn_815339A0
/* 81380828 0004EC28  38 61 00 18 */	addi r3, r1, 0x18
/* 8138082C 0004EC2C  48 1B 6E F5 */	bl fn_81537720
/* 81380830 0004EC30  38 60 00 00 */	li r3, 0x0
/* 81380834 0004EC34  38 80 00 00 */	li r4, 0x0
/* 81380838 0004EC38  48 1B EA B9 */	bl fn_8153F2F0
/* 8138083C 0004EC3C  88 01 00 08 */	lbz r0, 0x8(r1)
/* 81380840 0004EC40  28 00 00 01 */	cmplwi r0, 0x1
/* 81380844 0004EC44  40 82 00 3C */	bne .L_81380880
/* 81380848 0004EC48  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8138084C 0004EC4C  28 00 00 09 */	cmplwi r0, 0x9
/* 81380850 0004EC50  41 82 00 30 */	beq .L_81380880
/* 81380854 0004EC54  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 81380858 0004EC58  28 00 00 03 */	cmplwi r0, 0x3
/* 8138085C 0004EC5C  41 82 00 08 */	beq .L_81380864
/* 81380860 0004EC60  48 1C DC DD */	bl fn_8154E53C
.L_81380864:
/* 81380864 0004EC64  88 61 00 09 */	lbz r3, 0x9(r1)
/* 81380868 0004EC68  48 1B 62 ED */	bl fn_81536B54
/* 8138086C 0004EC6C  48 1B 37 41 */	bl fn_81533FAC
/* 81380870 0004EC70  38 60 00 03 */	li r3, 0x3
/* 81380874 0004EC74  48 1B 1A 25 */	bl fn_81532298
/* 81380878 0004EC78  48 1B 60 BD */	bl fn_81536934
/* 8138087C 0004EC7C  48 00 00 14 */	b .L_81380890
.L_81380880:
/* 81380880 0004EC80  48 1B 37 2D */	bl fn_81533FAC
/* 81380884 0004EC84  38 60 00 02 */	li r3, 0x2
/* 81380888 0004EC88  48 1B 1A 11 */	bl fn_81532298
/* 8138088C 0004EC8C  48 1B 60 31 */	bl fn_815368BC
.L_81380890:
/* 81380890 0004EC90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 81380894 0004EC94  7C 08 03 A6 */	mtlr r0
/* 81380898 0004EC98  38 21 00 40 */	addi r1, r1, 0x40
/* 8138089C 0004EC9C  4E 80 00 20 */	blr
.endfn OSShutdownSystemForBS

# .text:0x404 | 0x813808A0 | size: 0xF0
.fn OSReturnToMenu, global
/* 813808A0 0004ECA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813808A4 0004ECA4  7C 08 02 A6 */	mflr r0
/* 813808A8 0004ECA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 813808AC 0004ECAC  48 1B 6C 21 */	bl fn_815374CC
/* 813808B0 0004ECB0  48 1B 62 E5 */	bl fn_81536B94
/* 813808B4 0004ECB4  48 1C DC D9 */	bl fn_8154E58C
/* 813808B8 0004ECB8  38 61 00 0C */	addi r3, r1, 0xc
/* 813808BC 0004ECBC  48 1B 6F 49 */	bl fn_81537804
/* 813808C0 0004ECC0  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 813808C4 0004ECC4  38 60 00 84 */	li r3, 0x84
/* 813808C8 0004ECC8  98 61 00 10 */	stb r3, 0x10(r1)
/* 813808CC 0004ECCC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813808D0 0004ECD0  41 82 00 0C */	beq .L_813808DC
/* 813808D4 0004ECD4  60 60 00 40 */	ori r0, r3, 0x40
/* 813808D8 0004ECD8  98 01 00 10 */	stb r0, 0x10(r1)
.L_813808DC:
/* 813808DC 0004ECDC  48 1C DB 99 */	bl fn_8154E474
/* 813808E0 0004ECE0  28 03 00 02 */	cmplwi r3, 0x2
/* 813808E4 0004ECE4  41 82 00 10 */	beq .L_813808F4
/* 813808E8 0004ECE8  38 00 00 03 */	li r0, 0x3
/* 813808EC 0004ECEC  98 01 00 12 */	stb r0, 0x12(r1)
/* 813808F0 0004ECF0  48 00 00 40 */	b .L_81380930
.L_813808F4:
/* 813808F4 0004ECF4  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 813808F8 0004ECF8  2C 00 00 00 */	cmpwi r0, 0x0
/* 813808FC 0004ECFC  41 82 00 20 */	beq .L_8138091C
/* 81380900 0004ED00  38 61 00 08 */	addi r3, r1, 0x8
/* 81380904 0004ED04  48 1B 2F 81 */	bl fn_81533884
/* 81380908 0004ED08  2C 03 00 00 */	cmpwi r3, 0x0
/* 8138090C 0004ED0C  41 82 00 1C */	beq .L_81380928
/* 81380910 0004ED10  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81380914 0004ED14  2C 00 00 00 */	cmpwi r0, 0x0
/* 81380918 0004ED18  41 82 00 10 */	beq .L_81380928
.L_8138091C:
/* 8138091C 0004ED1C  38 00 00 02 */	li r0, 0x2
/* 81380920 0004ED20  98 01 00 12 */	stb r0, 0x12(r1)
/* 81380924 0004ED24  48 00 00 0C */	b .L_81380930
.L_81380928:
/* 81380928 0004ED28  38 00 00 01 */	li r0, 0x1
/* 8138092C 0004ED2C  98 01 00 12 */	stb r0, 0x12(r1)
.L_81380930:
/* 81380930 0004ED30  38 00 00 03 */	li r0, 0x3
/* 81380934 0004ED34  98 01 00 11 */	stb r0, 0x11(r1)
/* 81380938 0004ED38  48 1B 30 69 */	bl fn_815339A0
/* 8138093C 0004ED3C  38 61 00 0C */	addi r3, r1, 0xc
/* 81380940 0004ED40  48 1B 6D E1 */	bl fn_81537720
/* 81380944 0004ED44  48 1B 36 69 */	bl fn_81533FAC
/* 81380948 0004ED48  38 60 00 05 */	li r3, 0x5
/* 8138094C 0004ED4C  48 1B 19 4D */	bl fn_81532298
/* 81380950 0004ED50  48 1B 36 99 */	bl fn_81533FE8
/* 81380954 0004ED54  4B FF FB 49 */	bl __OSLaunchMenu
/* 81380958 0004ED58  48 1B 36 55 */	bl fn_81533FAC
/* 8138095C 0004ED5C  48 1B FD 39 */	bl fn_81540694
/* 81380960 0004ED60  48 1B 60 8D */	bl fn_815369EC
/* 81380964 0004ED64  3C 60 81 64 */	lis r3, lbl_81646EC8@ha
/* 81380968 0004ED68  3C A0 81 64 */	lis r5, lbl_81646ED3@ha
/* 8138096C 0004ED6C  38 63 6E C8 */	addi r3, r3, lbl_81646EC8@l
/* 81380970 0004ED70  38 80 01 BE */	li r4, 0x1be
/* 81380974 0004ED74  38 A5 6E D3 */	addi r5, r5, lbl_81646ED3@l
/* 81380978 0004ED78  4C C6 31 82 */	crclr cr1eq
/* 8138097C 0004ED7C  48 1A DD B5 */	bl fn_8152E730
/* 81380980 0004ED80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81380984 0004ED84  7C 08 03 A6 */	mtlr r0
/* 81380988 0004ED88  38 21 00 30 */	addi r1, r1, 0x30
/* 8138098C 0004ED8C  4E 80 00 20 */	blr
.endfn OSReturnToMenu

# .text:0x4F4 | 0x81380990 | size: 0xA4
.fn BS2SetStateFlags, global
/* 81380990 0004ED90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81380994 0004ED94  7C 08 02 A6 */	mflr r0
/* 81380998 0004ED98  90 01 00 34 */	stw r0, 0x34(r1)
/* 8138099C 0004ED9C  38 61 00 0C */	addi r3, r1, 0xc
/* 813809A0 0004EDA0  48 1B 6E 65 */	bl fn_81537804
/* 813809A4 0004EDA4  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 813809A8 0004EDA8  38 60 00 81 */	li r3, 0x81
/* 813809AC 0004EDAC  98 61 00 10 */	stb r3, 0x10(r1)
/* 813809B0 0004EDB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813809B4 0004EDB4  41 82 00 0C */	beq .L_813809C0
/* 813809B8 0004EDB8  60 60 00 40 */	ori r0, r3, 0x40
/* 813809BC 0004EDBC  98 01 00 10 */	stb r0, 0x10(r1)
.L_813809C0:
/* 813809C0 0004EDC0  38 00 00 FF */	li r0, 0xff
/* 813809C4 0004EDC4  98 01 00 11 */	stb r0, 0x11(r1)
/* 813809C8 0004EDC8  48 1C DA AD */	bl fn_8154E474
/* 813809CC 0004EDCC  28 03 00 02 */	cmplwi r3, 0x2
/* 813809D0 0004EDD0  41 82 00 10 */	beq .L_813809E0
/* 813809D4 0004EDD4  38 00 00 03 */	li r0, 0x3
/* 813809D8 0004EDD8  98 01 00 12 */	stb r0, 0x12(r1)
/* 813809DC 0004EDDC  48 00 00 40 */	b .L_81380A1C
.L_813809E0:
/* 813809E0 0004EDE0  80 0D A9 9C */	lwz r0, lbl_816989DC@sda21(r0)
/* 813809E4 0004EDE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813809E8 0004EDE8  41 82 00 20 */	beq .L_81380A08
/* 813809EC 0004EDEC  38 61 00 08 */	addi r3, r1, 0x8
/* 813809F0 0004EDF0  48 1B 2E 95 */	bl fn_81533884
/* 813809F4 0004EDF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813809F8 0004EDF8  41 82 00 1C */	beq .L_81380A14
/* 813809FC 0004EDFC  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81380A00 0004EE00  2C 00 00 00 */	cmpwi r0, 0x0
/* 81380A04 0004EE04  41 82 00 10 */	beq .L_81380A14
.L_81380A08:
/* 81380A08 0004EE08  38 00 00 02 */	li r0, 0x2
/* 81380A0C 0004EE0C  98 01 00 12 */	stb r0, 0x12(r1)
/* 81380A10 0004EE10  48 00 00 0C */	b .L_81380A1C
.L_81380A14:
/* 81380A14 0004EE14  38 00 00 01 */	li r0, 0x1
/* 81380A18 0004EE18  98 01 00 12 */	stb r0, 0x12(r1)
.L_81380A1C:
/* 81380A1C 0004EE1C  38 61 00 0C */	addi r3, r1, 0xc
/* 81380A20 0004EE20  48 1B 6D 01 */	bl fn_81537720
/* 81380A24 0004EE24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81380A28 0004EE28  7C 08 03 A6 */	mtlr r0
/* 81380A2C 0004EE2C  38 21 00 30 */	addi r1, r1, 0x30
/* 81380A30 0004EE30  4E 80 00 20 */	blr
.endfn BS2SetStateFlags

# 0x81646EC8..0x81646F08 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x81646EC8 | size: 0xB
.obj lbl_81646EC8, global
	.string "BS2Reset.c"
.endobj lbl_81646EC8

# .data:0xB | 0x81646ED3 | size: 0x35
.obj lbl_81646ED3, global
	.4byte 0x4F535265
	.4byte 0x7475726E
	.4byte 0x546F4D65
	.4byte 0x6E752829
	.4byte 0x3A204661
	.4byte 0x6C696564
	.4byte 0x20746F20
	.4byte 0x626F6F74
	.4byte 0x20737973
	.4byte 0x74656D20
	.4byte 0x6D656E75
	.4byte 0x2E0A0000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81646ED3

# 0x816965B0..0x816965C0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816965B0 | size: 0x8
.obj lbl_816965B0, global
	.4byte BS2Update_810B38E0
	.4byte 0x00000000
.endobj lbl_816965B0

# .sdata:0x8 | 0x816965B8 | size: 0x8
.obj lbl_816965B8, global
	.4byte 0x25730A00
	.4byte 0x00000000
.endobj lbl_816965B8