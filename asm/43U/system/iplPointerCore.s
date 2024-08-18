.include "macros.inc"
.file "iplPointerCore.cpp"

# 0x813444C4..0x81344818 | size: 0x354
.text
.balign 4

# .text:0x0 | 0x813444C4 | size: 0x24
# ipl::PointerCoreObject::PointerCoreObject()
.fn __ct__Q23ipl17PointerCoreObjectFv, global
/* 813444C4 000128C4  C0 02 81 08 */	lfs f0, lbl_81694508@sda21(r0)
/* 813444C8 000128C8  38 80 00 00 */	li r4, 0x0
/* 813444CC 000128CC  38 00 00 03 */	li r0, 0x3
/* 813444D0 000128D0  90 83 00 00 */	stw r4, 0x0(r3)
/* 813444D4 000128D4  90 83 00 04 */	stw r4, 0x4(r3)
/* 813444D8 000128D8  90 03 00 08 */	stw r0, 0x8(r3)
/* 813444DC 000128DC  90 83 00 0C */	stw r4, 0xc(r3)
/* 813444E0 000128E0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 813444E4 000128E4  4E 80 00 20 */	blr
.endfn __ct__Q23ipl17PointerCoreObjectFv

# .text:0x24 | 0x813444E8 | size: 0x19C
# ipl::PointerCoreObject::calc(ipl::Pointer*, const ipl::controller::Interface*)
.fn calc__Q23ipl17PointerCoreObjectFPQ23ipl7PointerPCQ33ipl10controller9Interface, global
/* 813444E8 000128E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813444EC 000128EC  7C 08 02 A6 */	mflr r0
/* 813444F0 000128F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 813444F4 000128F4  39 61 00 50 */	addi r11, r1, 0x50
/* 813444F8 000128F8  48 2B 4F D1 */	bl _savegpr_29
/* 813444FC 000128FC  38 00 00 00 */	li r0, 0x0
/* 81344500 00012900  2C 05 00 00 */	cmpwi r5, 0x0
/* 81344504 00012904  90 03 00 00 */	stw r0, 0x0(r3)
/* 81344508 00012908  7C 7D 1B 78 */	mr r29, r3
/* 8134450C 0001290C  7C 9E 23 78 */	mr r30, r4
/* 81344510 00012910  7C BF 2B 78 */	mr r31, r5
/* 81344514 00012914  41 82 01 58 */	beq .L_8134466C
/* 81344518 00012918  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8134451C 0001291C  7F E3 FB 78 */	mr r3, r31
/* 81344520 00012920  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81344524 00012924  7D 89 03 A6 */	mtctr r12
/* 81344528 00012928  4E 80 04 21 */	bctrl
/* 8134452C 0001292C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81344530 00012930  41 82 01 3C */	beq .L_8134466C
/* 81344534 00012934  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81344538 00012938  7F C3 F3 78 */	mr r3, r30
/* 8134453C 0001293C  80 BD 00 08 */	lwz r5, 0x8(r29)
/* 81344540 00012940  4B FF FF 49 */	bl get_layout__Q23ipl7PointerFii
/* 81344544 00012944  90 7D 00 00 */	stw r3, 0x0(r29)
/* 81344548 00012948  38 8D 80 D8 */	li r4, lbl_81696118@sda21
/* 8134454C 0001294C  38 A0 00 01 */	li r5, 0x1
/* 81344550 00012950  80 63 00 14 */	lwz r3, 0x14(r3)
/* 81344554 00012954  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344558 00012958  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8134455C 0001295C  7D 89 03 A6 */	mtctr r12
/* 81344560 00012960  4E 80 04 21 */	bctrl
/* 81344564 00012964  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81344568 00012968  7C 7E 1B 78 */	mr r30, r3
/* 8134456C 0001296C  7F E3 FB 78 */	mr r3, r31
/* 81344570 00012970  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81344574 00012974  7D 89 03 A6 */	mtctr r12
/* 81344578 00012978  4E 80 04 21 */	bctrl
/* 8134457C 0001297C  90 61 00 10 */	stw r3, 0x10(r1)
/* 81344580 00012980  38 61 00 10 */	addi r3, r1, 0x10
/* 81344584 00012984  90 81 00 14 */	stw r4, 0x14(r1)
/* 81344588 00012988  48 02 00 6D */	bl get_cursor_pos__Q23ipl7utilityFRCQ33ipl4math4VEC2
/* 8134458C 0001298C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 81344590 00012990  38 81 00 28 */	addi r4, r1, 0x28
/* 81344594 00012994  C0 02 81 08 */	lfs f0, lbl_81694508@sda21(r0)
/* 81344598 00012998  90 61 00 18 */	stw r3, 0x18(r1)
/* 8134459C 0001299C  38 7E 00 2C */	addi r3, r30, 0x2c
/* 813445A0 000129A0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 813445A4 000129A4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813445A8 000129A8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 813445AC 000129AC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 813445B0 000129B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 813445B4 000129B4  48 00 00 D1 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813445B8 000129B8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813445BC 000129BC  7F E3 FB 78 */	mr r3, r31
/* 813445C0 000129C0  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813445C4 000129C4  7D 89 03 A6 */	mtctr r12
/* 813445C8 000129C8  4E 80 04 21 */	bctrl
/* 813445CC 000129CC  90 81 00 24 */	stw r4, 0x24(r1)
/* 813445D0 000129D0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 813445D4 000129D4  90 61 00 20 */	stw r3, 0x20(r1)
/* 813445D8 000129D8  FC 20 00 50 */	fneg f1, f0
/* 813445DC 000129DC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 813445E0 000129E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 813445E4 000129E4  90 61 00 08 */	stw r3, 0x8(r1)
/* 813445E8 000129E8  48 1D A0 95 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 813445EC 000129EC  C0 42 81 0C */	lfs f2, lbl_8169450C@sda21(r0)
/* 813445F0 000129F0  38 8D 80 E0 */	li r4, lbl_81696120@sda21
/* 813445F4 000129F4  C0 02 81 08 */	lfs f0, lbl_81694508@sda21(r0)
/* 813445F8 000129F8  38 A0 00 01 */	li r5, 0x1
/* 813445FC 000129FC  EC 22 00 72 */	fmuls f1, f2, f1
/* 81344600 00012A00  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 81344604 00012A04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 81344608 00012A08  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8134460C 00012A0C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81344610 00012A10  80 63 00 14 */	lwz r3, 0x14(r3)
/* 81344614 00012A14  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344618 00012A18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8134461C 00012A1C  7D 89 03 A6 */	mtctr r12
/* 81344620 00012A20  4E 80 04 21 */	bctrl
/* 81344624 00012A24  80 DD 00 00 */	lwz r6, 0x0(r29)
/* 81344628 00012A28  7C 7E 1B 78 */	mr r30, r3
/* 8134462C 00012A2C  38 8D 80 E6 */	li r4, lbl_81696126@sda21
/* 81344630 00012A30  38 A0 00 01 */	li r5, 0x1
/* 81344634 00012A34  80 66 00 14 */	lwz r3, 0x14(r6)
/* 81344638 00012A38  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8134463C 00012A3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81344640 00012A40  7D 89 03 A6 */	mtctr r12
/* 81344644 00012A44  4E 80 04 21 */	bctrl
/* 81344648 00012A48  7C 7F 1B 78 */	mr r31, r3
/* 8134464C 00012A4C  38 7E 00 38 */	addi r3, r30, 0x38
/* 81344650 00012A50  38 81 00 34 */	addi r4, r1, 0x34
/* 81344654 00012A54  48 00 00 31 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 81344658 00012A58  38 7F 00 38 */	addi r3, r31, 0x38
/* 8134465C 00012A5C  38 81 00 34 */	addi r4, r1, 0x34
/* 81344660 00012A60  48 00 00 25 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 81344664 00012A64  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81344668 00012A68  48 02 60 9D */	bl calc__Q33ipl6layout6ObjectFv
.L_8134466C:
/* 8134466C 00012A6C  39 61 00 50 */	addi r11, r1, 0x50
/* 81344670 00012A70  48 2B 4E A5 */	bl _restgpr_29
/* 81344674 00012A74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 81344678 00012A78  7C 08 03 A6 */	mtlr r0
/* 8134467C 00012A7C  38 21 00 50 */	addi r1, r1, 0x50
/* 81344680 00012A80  4E 80 00 20 */	blr
.endfn calc__Q23ipl17PointerCoreObjectFPQ23ipl7PointerPCQ33ipl10controller9Interface

# .text:0x1C0 | 0x81344684 | size: 0x1C
# nw4r::math::VEC3::operator=(const nw4r::math::VEC3&)
.fn __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3, weak
/* 81344684 00012A84  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 81344688 00012A88  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8134468C 00012A8C  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 81344690 00012A90  D0 43 00 00 */	stfs f2, 0x0(r3)
/* 81344694 00012A94  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 81344698 00012A98  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8134469C 00012A9C  4E 80 00 20 */	blr
.endfn __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3

# .text:0x1DC | 0x813446A0 | size: 0x24
# ipl::PointerCoreObject::draw()
.fn draw__Q23ipl17PointerCoreObjectFv, global
/* 813446A0 00012AA0  80 83 00 00 */	lwz r4, 0x0(r3)
/* 813446A4 00012AA4  2C 04 00 00 */	cmpwi r4, 0x0
/* 813446A8 00012AA8  4D 82 00 20 */	beqlr
/* 813446AC 00012AAC  80 03 00 04 */	lwz r0, 0x4(r3)
/* 813446B0 00012AB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813446B4 00012AB4  4C 82 00 20 */	bnelr
/* 813446B8 00012AB8  7C 83 23 78 */	mr r3, r4
/* 813446BC 00012ABC  48 02 60 E0 */	b draw__Q33ipl6layout6ObjectFv
/* 813446C0 00012AC0  4E 80 00 20 */	blr
.endfn draw__Q23ipl17PointerCoreObjectFv

# .text:0x200 | 0x813446C4 | size: 0x7C
# ipl::PointerCore::PointerCore()
.fn __ct__Q23ipl11PointerCoreFv, global
/* 813446C4 00012AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813446C8 00012AC8  7C 08 02 A6 */	mflr r0
/* 813446CC 00012ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 813446D0 00012AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 813446D4 00012AD4  48 2B 4D F5 */	bl _savegpr_29
/* 813446D8 00012AD8  7C 7D 1B 78 */	mr r29, r3
/* 813446DC 00012ADC  3B E3 00 50 */	addi r31, r3, 0x50
/* 813446E0 00012AE0  7F BE EB 78 */	mr r30, r29
.L_813446E4:
/* 813446E4 00012AE4  7F C3 F3 78 */	mr r3, r30
/* 813446E8 00012AE8  4B FF FD DD */	bl __ct__Q23ipl17PointerCoreObjectFv
/* 813446EC 00012AEC  3B DE 00 14 */	addi r30, r30, 0x14
/* 813446F0 00012AF0  7C 1E F8 40 */	cmplw r30, r31
/* 813446F4 00012AF4  41 80 FF F0 */	blt .L_813446E4
/* 813446F8 00012AF8  38 C0 00 00 */	li r6, 0x0
/* 813446FC 00012AFC  38 00 00 04 */	li r0, 0x4
/* 81344700 00012B00  7C C4 33 78 */	mr r4, r6
/* 81344704 00012B04  38 60 00 00 */	li r3, 0x0
/* 81344708 00012B08  7C 09 03 A6 */	mtctr r0
.L_8134470C:
/* 8134470C 00012B0C  7C BD 1A 14 */	add r5, r29, r3
/* 81344710 00012B10  38 63 00 14 */	addi r3, r3, 0x14
/* 81344714 00012B14  90 85 00 08 */	stw r4, 0x8(r5)
/* 81344718 00012B18  90 C5 00 0C */	stw r6, 0xc(r5)
/* 8134471C 00012B1C  38 C6 00 01 */	addi r6, r6, 0x1
/* 81344720 00012B20  42 00 FF EC */	bdnz .L_8134470C
/* 81344724 00012B24  39 61 00 20 */	addi r11, r1, 0x20
/* 81344728 00012B28  7F A3 EB 78 */	mr r3, r29
/* 8134472C 00012B2C  48 2B 4D E9 */	bl _restgpr_29
/* 81344730 00012B30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81344734 00012B34  7C 08 03 A6 */	mtlr r0
/* 81344738 00012B38  38 21 00 20 */	addi r1, r1, 0x20
/* 8134473C 00012B3C  4E 80 00 20 */	blr
.endfn __ct__Q23ipl11PointerCoreFv

# .text:0x27C | 0x81344740 | size: 0x10
# ipl::PointerCore::setState(int, int)
.fn setState__Q23ipl11PointerCoreFii, global
/* 81344740 00012B40  1C 04 00 14 */	mulli r0, r4, 0x14
/* 81344744 00012B44  7C 63 02 14 */	add r3, r3, r0
/* 81344748 00012B48  90 A3 00 04 */	stw r5, 0x4(r3)
/* 8134474C 00012B4C  4E 80 00 20 */	blr
.endfn setState__Q23ipl11PointerCoreFii

# .text:0x28C | 0x81344750 | size: 0x64
# ipl::PointerCore::calc(ipl::Pointer*)
.fn calc__Q23ipl11PointerCoreFPQ23ipl7Pointer, global
/* 81344750 00012B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81344754 00012B54  7C 08 02 A6 */	mflr r0
/* 81344758 00012B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134475C 00012B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 81344760 00012B60  48 2B 4D 65 */	bl _savegpr_28
/* 81344764 00012B64  7C 7C 1B 78 */	mr r28, r3
/* 81344768 00012B68  7C 9D 23 78 */	mr r29, r4
/* 8134476C 00012B6C  3B C0 00 00 */	li r30, 0x0
/* 81344770 00012B70  3B E0 00 00 */	li r31, 0x0
.L_81344774:
/* 81344774 00012B74  7F C3 F3 78 */	mr r3, r30
/* 81344778 00012B78  4B FF 12 51 */	bl getController__Q23ipl6SystemFi
/* 8134477C 00012B7C  7C 65 1B 78 */	mr r5, r3
/* 81344780 00012B80  7F A4 EB 78 */	mr r4, r29
/* 81344784 00012B84  7C 7C FA 14 */	add r3, r28, r31
/* 81344788 00012B88  4B FF FD 61 */	bl calc__Q23ipl17PointerCoreObjectFPQ23ipl7PointerPCQ33ipl10controller9Interface
/* 8134478C 00012B8C  3B DE 00 01 */	addi r30, r30, 0x1
/* 81344790 00012B90  3B FF 00 14 */	addi r31, r31, 0x14
/* 81344794 00012B94  2C 1E 00 04 */	cmpwi r30, 0x4
/* 81344798 00012B98  41 80 FF DC */	blt .L_81344774
/* 8134479C 00012B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 813447A0 00012BA0  48 2B 4D 71 */	bl _restgpr_28
/* 813447A4 00012BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813447A8 00012BA8  7C 08 03 A6 */	mtlr r0
/* 813447AC 00012BAC  38 21 00 20 */	addi r1, r1, 0x20
/* 813447B0 00012BB0  4E 80 00 20 */	blr
.endfn calc__Q23ipl11PointerCoreFPQ23ipl7Pointer

# .text:0x2F0 | 0x813447B4 | size: 0x54
# ipl::PointerCore::draw()
.fn draw__Q23ipl11PointerCoreFv, global
/* 813447B4 00012BB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813447B8 00012BB8  7C 08 02 A6 */	mflr r0
/* 813447BC 00012BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 813447C0 00012BC0  39 61 00 20 */	addi r11, r1, 0x20
/* 813447C4 00012BC4  48 2B 4D 05 */	bl _savegpr_29
/* 813447C8 00012BC8  7C 7D 1B 78 */	mr r29, r3
/* 813447CC 00012BCC  38 60 00 00 */	li r3, 0x0
/* 813447D0 00012BD0  48 01 E2 FD */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813447D4 00012BD4  3B C0 00 03 */	li r30, 0x3
/* 813447D8 00012BD8  3B E0 00 3C */	li r31, 0x3c
.L_813447DC:
/* 813447DC 00012BDC  7C 7D FA 14 */	add r3, r29, r31
/* 813447E0 00012BE0  4B FF FE C1 */	bl draw__Q23ipl17PointerCoreObjectFv
/* 813447E4 00012BE4  37 DE FF FF */	subic. r30, r30, 0x1
/* 813447E8 00012BE8  3B FF FF EC */	subi r31, r31, 0x14
/* 813447EC 00012BEC  40 80 FF F0 */	bge .L_813447DC
/* 813447F0 00012BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 813447F4 00012BF4  48 2B 4D 21 */	bl _restgpr_29
/* 813447F8 00012BF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813447FC 00012BFC  7C 08 03 A6 */	mtlr r0
/* 81344800 00012C00  38 21 00 20 */	addi r1, r1, 0x20
/* 81344804 00012C04  4E 80 00 20 */	blr
.endfn draw__Q23ipl11PointerCoreFv

# .text:0x344 | 0x81344808 | size: 0x10
# ipl::PointerCore::changeType(int, int)
.fn changeType__Q23ipl11PointerCoreFii, global
/* 81344808 00012C08  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8134480C 00012C0C  7C 63 02 14 */	add r3, r3, r0
/* 81344810 00012C10  90 A3 00 08 */	stw r5, 0x8(r3)
/* 81344814 00012C14  4E 80 00 20 */	blr
.endfn changeType__Q23ipl11PointerCoreFii

# 0x81694508..0x81694510 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694508 | size: 0x4
.obj lbl_81694508, global
	.float 0
.endobj lbl_81694508

# .sdata2:0x4 | 0x8169450C | size: 0x4
.obj lbl_8169450C, global
	.float 1.40625
.endobj lbl_8169450C

# 0x81696118..0x81696130 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696118 | size: 0x8
.obj lbl_81696118, global
	.string "N_Trans"
.endobj lbl_81696118

# .sdata:0x8 | 0x81696120 | size: 0x6
.obj lbl_81696120, global
	.string "N_Rot"
.endobj lbl_81696120

# .sdata:0xE | 0x81696126 | size: 0xA
.obj lbl_81696126, global
	.4byte 0x4E5F5352
	.4byte 0x6F740000
	.2byte 0x0000
.endobj lbl_81696126
