.include "macros.inc"
.file "predictlang.cpp"

# 0x8142F468..0x81430A08 | size: 0x15A0
.text
.balign 4

# .text:0x0 | 0x8142F468 | size: 0xE8
# textinput::predictlang::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8142F468 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142F46C | 7C 08 02 A6 */	mflr r0
/* 8142F470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F474 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142F478 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142F47C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142F480 | 7C 9E 23 78 */	mr r30, r4
/* 8142F484 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142F488 | 7C 7D 1B 78 */	mr r29, r3
/* 8142F48C | 41 82 00 A4 */	beq .L_8142F530
/* 8142F490 | 3C C0 81 66 */	lis r6, __vt__Q39textinput11predictlang12LayoutByNW4R@ha
/* 8142F494 | 38 80 FF FF */	li r4, -0x1
/* 8142F498 | 38 C6 E9 B0 */	addi r6, r6, __vt__Q39textinput11predictlang12LayoutByNW4R@l
/* 8142F49C | 38 A6 00 24 */	addi r5, r6, 0x24
/* 8142F4A0 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8142F4A4 | 38 06 00 9C */	addi r0, r6, 0x9c
/* 8142F4A8 | 90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8142F4AC | 90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8142F4B0 | 80 63 00 CC */	lwz r3, 0xcc(r3)
/* 8142F4B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F4B8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142F4BC | 7D 89 03 A6 */	mtctr r12
/* 8142F4C0 | 4E 80 04 21 */	bctrl
/* 8142F4C4 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8142F4C8 | 80 9D 00 CC */	lwz r4, 0xcc(r29)
/* 8142F4CC | 48 12 C1 AD */	bl fn_8155B678
/* 8142F4D0 | 38 7D 00 88 */	addi r3, r29, 0x88
/* 8142F4D4 | 38 80 00 00 */	li r4, 0x0
/* 8142F4D8 | 48 0E 2E 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8142F4DC | 7C 7F 1B 78 */	mr r31, r3
/* 8142F4E0 | 48 00 00 2C */	b .L_8142F50C
.L_8142F4E4:
/* 8142F4E4 | 7F E4 FB 78 */	mr r4, r31
/* 8142F4E8 | 38 7D 00 88 */	addi r3, r29, 0x88
/* 8142F4EC | 48 0E 2D 85 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8142F4F0 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8142F4F4 | 7F E3 FB 78 */	mr r3, r31
/* 8142F4F8 | 48 00 7E F9 */	bl destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator
/* 8142F4FC | 38 7D 00 88 */	addi r3, r29, 0x88
/* 8142F500 | 38 80 00 00 */	li r4, 0x0
/* 8142F504 | 48 0E 2D D9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8142F508 | 7C 7F 1B 78 */	mr r31, r3
.L_8142F50C:
/* 8142F50C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142F510 | 40 82 FF D4 */	bne .L_8142F4E4
/* 8142F514 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 8142F518 | 38 80 00 00 */	li r4, 0x0
/* 8142F51C | 48 00 6B DD */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 8142F520 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142F524 | 40 81 00 0C */	ble .L_8142F530
/* 8142F528 | 7F A3 EB 78 */	mr r3, r29
/* 8142F52C | 48 1C 8B B9 */	bl __dl__FPv
.L_8142F530:
/* 8142F530 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142F534 | 7F A3 EB 78 */	mr r3, r29
/* 8142F538 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142F53C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142F540 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142F544 | 7C 08 03 A6 */	mtlr r0
/* 8142F548 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142F54C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0xE8 | 0x8142F550 | size: 0x40
# textinput::predictlang::EventHandler::~EventHandler()
.fn __dt__Q39textinput11predictlang12EventHandlerFv, global
/* 8142F550 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142F554 | 7C 08 02 A6 */	mflr r0
/* 8142F558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F55C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142F560 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142F564 | 7C 7F 1B 78 */	mr r31, r3
/* 8142F568 | 41 82 00 10 */	beq .L_8142F578
/* 8142F56C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142F570 | 40 81 00 08 */	ble .L_8142F578
/* 8142F574 | 48 1C 8B 71 */	bl __dl__FPv
.L_8142F578:
/* 8142F578 | 7F E3 FB 78 */	mr r3, r31
/* 8142F57C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142F580 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142F584 | 7C 08 03 A6 */	mtlr r0
/* 8142F588 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142F58C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11predictlang12EventHandlerFv

# .text:0x128 | 0x8142F590 | size: 0x328
# textinput::predictlang::LayoutByNW4R::create(MEMAllocator*)
.fn create__Q39textinput11predictlang12LayoutByNW4RFP12MEMAllocator, global
/* 8142F590 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8142F594 | 7C 08 02 A6 */	mflr r0
/* 8142F598 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8142F59C | 39 61 00 50 */	addi r11, r1, 0x50
/* 8142F5A0 | 48 1C 9E ED */	bl _savegpr_14
/* 8142F5A4 | 7C 90 23 78 */	mr r16, r4
/* 8142F5A8 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 8142F5AC | 7C 6F 1B 78 */	mr r15, r3
/* 8142F5B0 | 38 80 00 10 */	li r4, 0x10
/* 8142F5B4 | 7E 03 83 78 */	mr r3, r16
/* 8142F5B8 | 48 12 C0 B1 */	bl fn_8155B668
/* 8142F5BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F5C0 | 41 82 00 1C */	beq .L_8142F5DC
/* 8142F5C4 | 38 00 00 00 */	li r0, 0x0
/* 8142F5C8 | 3C 80 81 66 */	lis r4, __vt__Q39textinput11predictlang12EventHandler@ha
/* 8142F5CC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8142F5D0 | 38 84 E9 90 */	addi r4, r4, __vt__Q39textinput11predictlang12EventHandler@l
/* 8142F5D4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8142F5D8 | 91 E3 00 0C */	stw r15, 0xc(r3)
.L_8142F5DC:
/* 8142F5DC | 90 6F 00 CC */	stw r3, 0xcc(r15)
/* 8142F5E0 | 7C 65 1B 78 */	mr r5, r3
/* 8142F5E4 | 7E 04 83 78 */	mr r4, r16
/* 8142F5E8 | 38 6F 00 1C */	addi r3, r15, 0x1c
/* 8142F5EC | 48 00 6C 29 */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 8142F5F0 | 80 6F 00 2C */	lwz r3, 0x2c(r15)
/* 8142F5F4 | 38 80 00 00 */	li r4, 0x0
/* 8142F5F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F5FC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8142F600 | 7D 89 03 A6 */	mtctr r12
/* 8142F604 | 4E 80 04 21 */	bctrl
/* 8142F608 | 80 6F 00 2C */	lwz r3, 0x2c(r15)
/* 8142F60C | 38 80 00 01 */	li r4, 0x1
/* 8142F610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F614 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8142F618 | 7D 89 03 A6 */	mtctr r12
/* 8142F61C | 4E 80 04 21 */	bctrl
/* 8142F620 | 3F 20 81 66 */	lis r25, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 8142F624 | 3F 60 81 66 */	lis r27, __vt__Q39textinput11predictlang12WholeAnmPane@ha
/* 8142F628 | 3F A0 81 66 */	lis r29, __vt__Q39textinput11predictlang19NormalButtonAnmPane@ha
/* 8142F62C | 3F 00 81 66 */	lis r24, lbl_8165E430@ha
/* 8142F630 | 3F C0 81 66 */	lis r30, __vt__Q39textinput11predictlang19ChangeButtonAnmPane@ha
/* 8142F634 | 3B 39 F8 C8 */	addi r25, r25, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 8142F638 | 3B 7B E9 40 */	addi r27, r27, __vt__Q39textinput11predictlang12WholeAnmPane@l
/* 8142F63C | 3B BD E9 18 */	addi r29, r29, __vt__Q39textinput11predictlang19NormalButtonAnmPane@l
/* 8142F640 | 3B 18 E4 30 */	addi r24, r24, lbl_8165E430@l
/* 8142F644 | 3B DE E8 F0 */	addi r30, r30, __vt__Q39textinput11predictlang19ChangeButtonAnmPane@l
/* 8142F648 | 3A A0 00 00 */	li r21, 0x0
/* 8142F64C | 3B 40 00 00 */	li r26, 0x0
/* 8142F650 | 3B 80 00 02 */	li r28, 0x2
/* 8142F654 | 39 C0 00 01 */	li r14, 0x1
.L_8142F658:
/* 8142F658 | 56 A0 32 B2 */	clrlslwi r0, r21, 16, 6
/* 8142F65C | 3A 60 00 00 */	li r19, 0x0
/* 8142F660 | 7E 98 02 14 */	add r20, r24, r0
/* 8142F664 | 7C 18 00 2E */	lwzx r0, r24, r0
/* 8142F668 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8142F66C | 41 82 00 E4 */	beq .L_8142F750
/* 8142F670 | 40 80 00 10 */	bge .L_8142F680
/* 8142F674 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142F678 | 40 80 00 7C */	bge .L_8142F6F4
/* 8142F67C | 48 00 01 30 */	b .L_8142F7AC
.L_8142F680:
/* 8142F680 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8142F684 | 40 80 01 28 */	bge .L_8142F7AC
/* 8142F688 | 7E 03 83 78 */	mr r3, r16
/* 8142F68C | 38 80 00 34 */	li r4, 0x34
/* 8142F690 | 48 12 BF D9 */	bl fn_8155B668
/* 8142F694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F698 | 7C 73 1B 78 */	mr r19, r3
/* 8142F69C | 41 82 01 10 */	beq .L_8142F7AC
/* 8142F6A0 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 8142F6A4 | 7D F1 7B 78 */	mr r17, r15
/* 8142F6A8 | 41 82 00 08 */	beq .L_8142F6B0
/* 8142F6AC | 3A 2F 00 C4 */	addi r17, r15, 0xc4
.L_8142F6B0:
/* 8142F6B0 | 81 8F 00 1C */	lwz r12, 0x1c(r15)
/* 8142F6B4 | 38 6F 00 1C */	addi r3, r15, 0x1c
/* 8142F6B8 | 38 94 00 04 */	addi r4, r20, 0x4
/* 8142F6BC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142F6C0 | 7D 89 03 A6 */	mtctr r12
/* 8142F6C4 | 4E 80 04 21 */	bctrl
/* 8142F6C8 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 8142F6CC | 38 80 00 10 */	li r4, 0x10
/* 8142F6D0 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 8142F6D4 | 38 73 00 08 */	addi r3, r19, 0x8
/* 8142F6D8 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 8142F6DC | 92 33 00 18 */	stw r17, 0x18(r19)
/* 8142F6E0 | 48 0E 29 7D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8142F6E4 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 8142F6E8 | 93 73 00 00 */	stw r27, 0x0(r19)
/* 8142F6EC | 93 93 00 30 */	stw r28, 0x30(r19)
/* 8142F6F0 | 48 00 00 BC */	b .L_8142F7AC
.L_8142F6F4:
/* 8142F6F4 | 7E 03 83 78 */	mr r3, r16
/* 8142F6F8 | 38 80 00 34 */	li r4, 0x34
/* 8142F6FC | 48 12 BF 6D */	bl fn_8155B668
/* 8142F700 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F704 | 7C 73 1B 78 */	mr r19, r3
/* 8142F708 | 41 82 00 A4 */	beq .L_8142F7AC
/* 8142F70C | 81 8F 00 1C */	lwz r12, 0x1c(r15)
/* 8142F710 | 38 6F 00 1C */	addi r3, r15, 0x1c
/* 8142F714 | 38 94 00 04 */	addi r4, r20, 0x4
/* 8142F718 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142F71C | 7D 89 03 A6 */	mtctr r12
/* 8142F720 | 4E 80 04 21 */	bctrl
/* 8142F724 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 8142F728 | 38 80 00 10 */	li r4, 0x10
/* 8142F72C | 90 73 00 04 */	stw r3, 0x4(r19)
/* 8142F730 | 38 73 00 08 */	addi r3, r19, 0x8
/* 8142F734 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 8142F738 | 93 53 00 18 */	stw r26, 0x18(r19)
/* 8142F73C | 48 0E 29 21 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8142F740 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 8142F744 | 93 B3 00 00 */	stw r29, 0x0(r19)
/* 8142F748 | 93 53 00 30 */	stw r26, 0x30(r19)
/* 8142F74C | 48 00 00 60 */	b .L_8142F7AC
.L_8142F750:
/* 8142F750 | 7E 03 83 78 */	mr r3, r16
/* 8142F754 | 38 80 00 38 */	li r4, 0x38
/* 8142F758 | 48 12 BF 11 */	bl fn_8155B668
/* 8142F75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F760 | 7C 73 1B 78 */	mr r19, r3
/* 8142F764 | 41 82 00 48 */	beq .L_8142F7AC
/* 8142F768 | 81 8F 00 1C */	lwz r12, 0x1c(r15)
/* 8142F76C | 38 6F 00 1C */	addi r3, r15, 0x1c
/* 8142F770 | 38 94 00 04 */	addi r4, r20, 0x4
/* 8142F774 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142F778 | 7D 89 03 A6 */	mtctr r12
/* 8142F77C | 4E 80 04 21 */	bctrl
/* 8142F780 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 8142F784 | 38 80 00 10 */	li r4, 0x10
/* 8142F788 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 8142F78C | 38 73 00 08 */	addi r3, r19, 0x8
/* 8142F790 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 8142F794 | 93 53 00 18 */	stw r26, 0x18(r19)
/* 8142F798 | 48 0E 28 C5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8142F79C | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 8142F7A0 | 93 D3 00 00 */	stw r30, 0x0(r19)
/* 8142F7A4 | 91 F3 00 34 */	stw r15, 0x34(r19)
/* 8142F7A8 | 91 D3 00 30 */	stw r14, 0x30(r19)
.L_8142F7AC:
/* 8142F7AC | 7E 64 9B 78 */	mr r4, r19
/* 8142F7B0 | 38 6F 00 88 */	addi r3, r15, 0x88
/* 8142F7B4 | 48 0E 28 C1 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8142F7B8 | 82 D4 00 1C */	lwz r22, 0x1c(r20)
/* 8142F7BC | 3A 40 00 00 */	li r18, 0x0
/* 8142F7C0 | 83 F4 00 18 */	lwz r31, 0x18(r20)
/* 8142F7C4 | 48 00 00 B0 */	b .L_8142F874
.L_8142F7C8:
/* 8142F7C8 | 80 6F 00 28 */	lwz r3, 0x28(r15)
/* 8142F7CC | 56 40 13 BA */	clrlslwi r0, r18, 16, 2
/* 8142F7D0 | 7E F4 02 14 */	add r23, r20, r0
/* 8142F7D4 | 38 80 00 00 */	li r4, 0x0
/* 8142F7D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F7DC | 38 C0 00 00 */	li r6, 0x0
/* 8142F7E0 | 80 B7 00 20 */	lwz r5, 0x20(r23)
/* 8142F7E4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142F7E8 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8142F7EC | 7D 89 03 A6 */	mtctr r12
/* 8142F7F0 | 4E 80 04 21 */	bctrl
/* 8142F7F4 | 81 8F 00 1C */	lwz r12, 0x1c(r15)
/* 8142F7F8 | 7C 71 1B 78 */	mr r17, r3
/* 8142F7FC | 38 6F 00 1C */	addi r3, r15, 0x1c
/* 8142F800 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142F804 | 7D 89 03 A6 */	mtctr r12
/* 8142F808 | 4E 80 04 21 */	bctrl
/* 8142F80C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F810 | 7E 24 8B 78 */	mr r4, r17
/* 8142F814 | 80 AF 00 28 */	lwz r5, 0x28(r15)
/* 8142F818 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F81C | 7D 89 03 A6 */	mtctr r12
/* 8142F820 | 4E 80 04 21 */	bctrl
/* 8142F824 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8142F828 | 7C 66 1B 78 */	mr r6, r3
/* 8142F82C | 40 82 00 24 */	bne .L_8142F850
/* 8142F830 | 80 B7 00 20 */	lwz r5, 0x20(r23)
/* 8142F834 | 7E 63 9B 78 */	mr r3, r19
/* 8142F838 | 7E 04 83 78 */	mr r4, r16
/* 8142F83C | 38 E0 00 00 */	li r7, 0x0
/* 8142F840 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8142F844 | 39 00 00 01 */	li r8, 0x1
/* 8142F848 | 48 00 77 19 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 8142F84C | 48 00 00 24 */	b .L_8142F870
.L_8142F850:
/* 8142F850 | 80 B7 00 20 */	lwz r5, 0x20(r23)
/* 8142F854 | 7E 63 9B 78 */	mr r3, r19
/* 8142F858 | 7E 04 83 78 */	mr r4, r16
/* 8142F85C | 7E C7 B3 78 */	mr r7, r22
/* 8142F860 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8142F864 | 39 00 00 00 */	li r8, 0x0
/* 8142F868 | 39 20 00 01 */	li r9, 0x1
/* 8142F86C | 48 00 77 A9 */	bl forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb
.L_8142F870:
/* 8142F870 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_8142F874:
/* 8142F874 | 56 40 04 3E */	clrlwi r0, r18, 16
/* 8142F878 | 7C 00 F8 40 */	cmplw r0, r31
/* 8142F87C | 41 80 FF 4C */	blt .L_8142F7C8
/* 8142F880 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8142F884 | 28 15 00 0A */	cmplwi r21, 0xa
/* 8142F888 | 41 80 FD D0 */	blt .L_8142F658
/* 8142F88C | 81 8F 00 00 */	lwz r12, 0x0(r15)
/* 8142F890 | 7D E3 7B 78 */	mr r3, r15
/* 8142F894 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F898 | 7D 89 03 A6 */	mtctr r12
/* 8142F89C | 4E 80 04 21 */	bctrl
/* 8142F8A0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8142F8A4 | 48 1C 9C 35 */	bl _restgpr_14
/* 8142F8A8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8142F8AC | 7C 08 03 A6 */	mtlr r0
/* 8142F8B0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8142F8B4 | 4E 80 00 20 */	blr
.endfn create__Q39textinput11predictlang12LayoutByNW4RFP12MEMAllocator

# .text:0x450 | 0x8142F8B8 | size: 0x58
# textinput::predictlang::AnmPane::~AnmPane()
.fn __dt__Q39textinput11predictlang7AnmPaneFv, global
/* 8142F8B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142F8BC | 7C 08 02 A6 */	mflr r0
/* 8142F8C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F8C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142F8C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142F8CC | 7C 9F 23 78 */	mr r31, r4
/* 8142F8D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142F8D4 | 7C 7E 1B 78 */	mr r30, r3
/* 8142F8D8 | 41 82 00 1C */	beq .L_8142F8F4
/* 8142F8DC | 38 80 00 00 */	li r4, 0x0
/* 8142F8E0 | 48 00 76 41 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 8142F8E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142F8E8 | 40 81 00 0C */	ble .L_8142F8F4
/* 8142F8EC | 7F C3 F3 78 */	mr r3, r30
/* 8142F8F0 | 48 1C 87 F5 */	bl __dl__FPv
.L_8142F8F4:
/* 8142F8F4 | 7F C3 F3 78 */	mr r3, r30
/* 8142F8F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142F8FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142F900 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142F904 | 7C 08 03 A6 */	mtlr r0
/* 8142F908 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142F90C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11predictlang7AnmPaneFv

# .text:0x4A8 | 0x8142F910 | size: 0xAC
# textinput::predictlang::LayoutByNW4R::init()
.fn init__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8142F910 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142F914 | 7C 08 02 A6 */	mflr r0
/* 8142F918 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142F91C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142F920 | 3F E0 81 66 */	lis r31, lbl_8165E818@ha
/* 8142F924 | 38 9F E8 18 */	addi r4, r31, lbl_8165E818@l
/* 8142F928 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142F92C | 7C 7E 1B 78 */	mr r30, r3
/* 8142F930 | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8142F934 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142F938 | 7D 89 03 A6 */	mtctr r12
/* 8142F93C | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8142F940 | 4E 80 04 21 */	bctrl
/* 8142F944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F948 | 38 80 00 00 */	li r4, 0x0
/* 8142F94C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F950 | 7D 89 03 A6 */	mtctr r12
/* 8142F954 | 4E 80 04 21 */	bctrl
/* 8142F958 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142F95C | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142F960 | 38 9F E8 18 */	addi r4, r31, lbl_8165E818@l
/* 8142F964 | 38 A0 00 00 */	li r5, 0x0
/* 8142F968 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142F96C | 7D 89 03 A6 */	mtctr r12
/* 8142F970 | 4E 80 04 21 */	bctrl
/* 8142F974 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8142F978 | 38 80 00 00 */	li r4, 0x0
/* 8142F97C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F980 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142F984 | 7D 89 03 A6 */	mtctr r12
/* 8142F988 | 4E 80 04 21 */	bctrl
/* 8142F98C | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8142F990 | 38 9E 00 34 */	addi r4, r30, 0x34
/* 8142F994 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F998 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142F99C | 7D 89 03 A6 */	mtctr r12
/* 8142F9A0 | 4E 80 04 21 */	bctrl
/* 8142F9A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142F9A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142F9AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142F9B0 | 7C 08 03 A6 */	mtlr r0
/* 8142F9B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142F9B8 | 4E 80 00 20 */	blr
.endfn init__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x554 | 0x8142F9BC | size: 0xEC
# textinput::predictlang::LayoutByNW4R::open(textinput::inputform::Base::PredictMode, textinput::keyboard::KeyboardBase*)
.fn open__Q39textinput11predictlang12LayoutByNW4RFQ49textinput9inputform4Base11PredictModePQ39textinput8keyboard12KeyboardBase, global
/* 8142F9BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142F9C0 | 7C 08 02 A6 */	mflr r0
/* 8142F9C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142F9C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142F9CC | 7C 9F 23 78 */	mr r31, r4
/* 8142F9D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142F9D4 | 7C 7E 1B 78 */	mr r30, r3
/* 8142F9D8 | 90 A3 00 D4 */	stw r5, 0xd4(r3)
/* 8142F9DC | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8142F9E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F9E4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8142F9E8 | 7D 89 03 A6 */	mtctr r12
/* 8142F9EC | 4E 80 04 21 */	bctrl
/* 8142F9F0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F9F4 | 7F C3 F3 78 */	mr r3, r30
/* 8142F9F8 | 7F E4 FB 78 */	mr r4, r31
/* 8142F9FC | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8142FA00 | 7D 89 03 A6 */	mtctr r12
/* 8142FA04 | 4E 80 04 21 */	bctrl
/* 8142FA08 | 38 60 00 01 */	li r3, 0x1
/* 8142FA0C | 38 00 00 00 */	li r0, 0x0
/* 8142FA10 | 98 7E 00 C8 */	stb r3, 0xc8(r30)
/* 8142FA14 | 3F E0 81 66 */	lis r31, lbl_8165E818@ha
/* 8142FA18 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FA1C | 38 A0 00 01 */	li r5, 0x1
/* 8142FA20 | 98 1E 00 C9 */	stb r0, 0xc9(r30)
/* 8142FA24 | 38 9F E8 18 */	addi r4, r31, lbl_8165E818@l
/* 8142FA28 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FA2C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FA30 | 7D 89 03 A6 */	mtctr r12
/* 8142FA34 | 4E 80 04 21 */	bctrl
/* 8142FA38 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142FA3C | 7F C3 F3 78 */	mr r3, r30
/* 8142FA40 | 81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 8142FA44 | 7D 89 03 A6 */	mtctr r12
/* 8142FA48 | 4E 80 04 21 */	bctrl
/* 8142FA4C | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FA50 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FA54 | 38 9F E8 18 */	addi r4, r31, lbl_8165E818@l
/* 8142FA58 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142FA5C | 7D 89 03 A6 */	mtctr r12
/* 8142FA60 | 4E 80 04 21 */	bctrl
/* 8142FA64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FA68 | 38 80 00 05 */	li r4, 0x5
/* 8142FA6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142FA70 | 7D 89 03 A6 */	mtctr r12
/* 8142FA74 | 4E 80 04 21 */	bctrl
/* 8142FA78 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 8142FA7C | 38 80 00 13 */	li r4, 0x13
/* 8142FA80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FA84 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142FA88 | 7D 89 03 A6 */	mtctr r12
/* 8142FA8C | 4E 80 04 21 */	bctrl
/* 8142FA90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142FA94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142FA98 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142FA9C | 7C 08 03 A6 */	mtlr r0
/* 8142FAA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142FAA4 | 4E 80 00 20 */	blr
.endfn open__Q39textinput11predictlang12LayoutByNW4RFQ49textinput9inputform4Base11PredictModePQ39textinput8keyboard12KeyboardBase

# .text:0x640 | 0x8142FAA8 | size: 0x8
# textinput::predictlang::Base::setPredictMode(textinput::inputform::Base::PredictMode)
.fn setPredictMode__Q39textinput11predictlang4BaseFQ49textinput9inputform4Base11PredictMode, global
/* 8142FAA8 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8142FAAC | 4E 80 00 20 */	blr
.endfn setPredictMode__Q39textinput11predictlang4BaseFQ49textinput9inputform4Base11PredictMode

# .text:0x648 | 0x8142FAB0 | size: 0x1C
# textinput::predictlang::LayoutByNW4R::endToOpen()
.fn endToOpen__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8142FAB0 | 38 00 00 01 */	li r0, 0x1
/* 8142FAB4 | 98 03 00 C9 */	stb r0, 0xc9(r3)
/* 8142FAB8 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8142FABC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FAC0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142FAC4 | 7D 89 03 A6 */	mtctr r12
/* 8142FAC8 | 4E 80 04 20 */	bctr
.endfn endToOpen__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x664 | 0x8142FACC | size: 0x60
# textinput::predictlang::LayoutByNW4R::startToClose()
.fn startToClose__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8142FACC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142FAD0 | 7C 08 02 A6 */	mflr r0
/* 8142FAD4 | 3C 80 81 66 */	lis r4, lbl_8165E818@ha
/* 8142FAD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142FADC | 38 84 E8 18 */	addi r4, r4, lbl_8165E818@l
/* 8142FAE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142FAE4 | 7C 7F 1B 78 */	mr r31, r3
/* 8142FAE8 | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8142FAEC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142FAF0 | 7D 89 03 A6 */	mtctr r12
/* 8142FAF4 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8142FAF8 | 4E 80 04 21 */	bctrl
/* 8142FAFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FB00 | 38 80 00 06 */	li r4, 0x6
/* 8142FB04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142FB08 | 7D 89 03 A6 */	mtctr r12
/* 8142FB0C | 4E 80 04 21 */	bctrl
/* 8142FB10 | 38 00 00 00 */	li r0, 0x0
/* 8142FB14 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 8142FB18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142FB1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142FB20 | 7C 08 03 A6 */	mtlr r0
/* 8142FB24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142FB28 | 4E 80 00 20 */	blr
.endfn startToClose__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x6C4 | 0x8142FB2C | size: 0xA8
# textinput::predictlang::LayoutByNW4R::endToClose()
.fn endToClose__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8142FB2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142FB30 | 7C 08 02 A6 */	mflr r0
/* 8142FB34 | 38 80 00 1F */	li r4, 0x1f
/* 8142FB38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142FB3C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8142FB40 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142FB44 | 7C 7F 1B 78 */	mr r31, r3
/* 8142FB48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FB4C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142FB50 | 7D 89 03 A6 */	mtctr r12
/* 8142FB54 | 4E 80 04 21 */	bctrl
/* 8142FB58 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8142FB5C | 7F E3 FB 78 */	mr r3, r31
/* 8142FB60 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8142FB64 | 38 80 00 1D */	li r4, 0x1d
/* 8142FB68 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8142FB6C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142FB70 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142FB74 | 7D 89 03 A6 */	mtctr r12
/* 8142FB78 | 4E 80 04 21 */	bctrl
/* 8142FB7C | 80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 8142FB80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142FB84 | 41 82 00 14 */	beq .L_8142FB98
/* 8142FB88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FB8C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8142FB90 | 7D 89 03 A6 */	mtctr r12
/* 8142FB94 | 4E 80 04 21 */	bctrl
.L_8142FB98:
/* 8142FB98 | 38 00 00 00 */	li r0, 0x0
/* 8142FB9C | 3C 80 81 66 */	lis r4, lbl_8165E818@ha
/* 8142FBA0 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 8142FBA4 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8142FBA8 | 38 84 E8 18 */	addi r4, r4, lbl_8165E818@l
/* 8142FBAC | 38 A0 00 00 */	li r5, 0x0
/* 8142FBB0 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8142FBB4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FBB8 | 7D 89 03 A6 */	mtctr r12
/* 8142FBBC | 4E 80 04 21 */	bctrl
/* 8142FBC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142FBC4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142FBC8 | 7C 08 03 A6 */	mtlr r0
/* 8142FBCC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142FBD0 | 4E 80 00 20 */	blr
.endfn endToClose__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x76C | 0x8142FBD4 | size: 0x208
# textinput::predictlang::LayoutByNW4R::changeDestination(textinput::Destination)
.fn changeDestination__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11Destination, global
/* 8142FBD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142FBD8 | 7C 08 02 A6 */	mflr r0
/* 8142FBDC | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8142FBE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142FBE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142FBE8 | 3F E0 81 66 */	lis r31, lbl_8165E420@ha
/* 8142FBEC | 3B FF E4 20 */	addi r31, r31, lbl_8165E420@l
/* 8142FBF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142FBF4 | 7C 7E 1B 78 */	mr r30, r3
/* 8142FBF8 | 90 83 00 D0 */	stw r4, 0xd0(r3)
/* 8142FBFC | 41 82 00 D0 */	beq .L_8142FCCC
/* 8142FC00 | 40 80 00 14 */	bge .L_8142FC14
/* 8142FC04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142FC08 | 41 82 00 1C */	beq .L_8142FC24
/* 8142FC0C | 40 80 00 6C */	bge .L_8142FC78
/* 8142FC10 | 48 00 01 B4 */	b .L_8142FDC4
.L_8142FC14:
/* 8142FC14 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142FC18 | 41 82 01 5C */	beq .L_8142FD74
/* 8142FC1C | 40 80 01 A8 */	bge .L_8142FDC4
/* 8142FC20 | 48 00 01 00 */	b .L_8142FD20
.L_8142FC24:
/* 8142FC24 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8142FC28 | 38 9F 04 0C */	addi r4, r31, 0x40c
/* 8142FC2C | 38 A0 00 01 */	li r5, 0x1
/* 8142FC30 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FC34 | 7D 89 03 A6 */	mtctr r12
/* 8142FC38 | 4E 80 04 21 */	bctrl
/* 8142FC3C | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FC40 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FC44 | 38 9F 04 1C */	addi r4, r31, 0x41c
/* 8142FC48 | 38 A0 00 00 */	li r5, 0x0
/* 8142FC4C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FC50 | 7D 89 03 A6 */	mtctr r12
/* 8142FC54 | 4E 80 04 21 */	bctrl
/* 8142FC58 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FC5C | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FC60 | 38 9F 04 2C */	addi r4, r31, 0x42c
/* 8142FC64 | 38 A0 00 00 */	li r5, 0x0
/* 8142FC68 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FC6C | 7D 89 03 A6 */	mtctr r12
/* 8142FC70 | 4E 80 04 21 */	bctrl
/* 8142FC74 | 48 00 01 50 */	b .L_8142FDC4
.L_8142FC78:
/* 8142FC78 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8142FC7C | 38 9F 04 0C */	addi r4, r31, 0x40c
/* 8142FC80 | 38 A0 00 00 */	li r5, 0x0
/* 8142FC84 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FC88 | 7D 89 03 A6 */	mtctr r12
/* 8142FC8C | 4E 80 04 21 */	bctrl
/* 8142FC90 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FC94 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FC98 | 38 9F 04 1C */	addi r4, r31, 0x41c
/* 8142FC9C | 38 A0 00 01 */	li r5, 0x1
/* 8142FCA0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FCA4 | 7D 89 03 A6 */	mtctr r12
/* 8142FCA8 | 4E 80 04 21 */	bctrl
/* 8142FCAC | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FCB0 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FCB4 | 38 9F 04 2C */	addi r4, r31, 0x42c
/* 8142FCB8 | 38 A0 00 00 */	li r5, 0x0
/* 8142FCBC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FCC0 | 7D 89 03 A6 */	mtctr r12
/* 8142FCC4 | 4E 80 04 21 */	bctrl
/* 8142FCC8 | 48 00 00 FC */	b .L_8142FDC4
.L_8142FCCC:
/* 8142FCCC | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8142FCD0 | 38 9F 04 0C */	addi r4, r31, 0x40c
/* 8142FCD4 | 38 A0 00 00 */	li r5, 0x0
/* 8142FCD8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FCDC | 7D 89 03 A6 */	mtctr r12
/* 8142FCE0 | 4E 80 04 21 */	bctrl
/* 8142FCE4 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FCE8 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FCEC | 38 9F 04 1C */	addi r4, r31, 0x41c
/* 8142FCF0 | 38 A0 00 00 */	li r5, 0x0
/* 8142FCF4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FCF8 | 7D 89 03 A6 */	mtctr r12
/* 8142FCFC | 4E 80 04 21 */	bctrl
/* 8142FD00 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FD04 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FD08 | 38 9F 04 2C */	addi r4, r31, 0x42c
/* 8142FD0C | 38 A0 00 01 */	li r5, 0x1
/* 8142FD10 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FD14 | 7D 89 03 A6 */	mtctr r12
/* 8142FD18 | 4E 80 04 21 */	bctrl
/* 8142FD1C | 48 00 00 A8 */	b .L_8142FDC4
.L_8142FD20:
/* 8142FD20 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8142FD24 | 38 9F 04 0C */	addi r4, r31, 0x40c
/* 8142FD28 | 38 A0 00 00 */	li r5, 0x0
/* 8142FD2C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FD30 | 7D 89 03 A6 */	mtctr r12
/* 8142FD34 | 4E 80 04 21 */	bctrl
/* 8142FD38 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FD3C | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FD40 | 38 9F 04 1C */	addi r4, r31, 0x41c
/* 8142FD44 | 38 A0 00 01 */	li r5, 0x1
/* 8142FD48 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FD4C | 7D 89 03 A6 */	mtctr r12
/* 8142FD50 | 4E 80 04 21 */	bctrl
/* 8142FD54 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FD58 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FD5C | 38 9F 04 2C */	addi r4, r31, 0x42c
/* 8142FD60 | 38 A0 00 00 */	li r5, 0x0
/* 8142FD64 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FD68 | 7D 89 03 A6 */	mtctr r12
/* 8142FD6C | 4E 80 04 21 */	bctrl
/* 8142FD70 | 48 00 00 54 */	b .L_8142FDC4
.L_8142FD74:
/* 8142FD74 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8142FD78 | 38 9F 04 0C */	addi r4, r31, 0x40c
/* 8142FD7C | 38 A0 00 00 */	li r5, 0x0
/* 8142FD80 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FD84 | 7D 89 03 A6 */	mtctr r12
/* 8142FD88 | 4E 80 04 21 */	bctrl
/* 8142FD8C | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FD90 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FD94 | 38 9F 04 1C */	addi r4, r31, 0x41c
/* 8142FD98 | 38 A0 00 01 */	li r5, 0x1
/* 8142FD9C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FDA0 | 7D 89 03 A6 */	mtctr r12
/* 8142FDA4 | 4E 80 04 21 */	bctrl
/* 8142FDA8 | 81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 8142FDAC | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8142FDB0 | 38 9F 04 2C */	addi r4, r31, 0x42c
/* 8142FDB4 | 38 A0 00 00 */	li r5, 0x0
/* 8142FDB8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142FDBC | 7D 89 03 A6 */	mtctr r12
/* 8142FDC0 | 4E 80 04 21 */	bctrl
.L_8142FDC4:
/* 8142FDC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142FDC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142FDCC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142FDD0 | 7C 08 03 A6 */	mtlr r0
/* 8142FDD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142FDD8 | 4E 80 00 20 */	blr
.endfn changeDestination__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11Destination

# .text:0x974 | 0x8142FDDC | size: 0xE4
# textinput::predictlang::LayoutByNW4R::onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim, global
/* 8142FDDC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142FDE0 | 7C 08 02 A6 */	mflr r0
/* 8142FDE4 | 3C E0 81 66 */	lis r7, lbl_8165E818@ha
/* 8142FDE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142FDEC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142FDF0 | 7C DF 33 78 */	mr r31, r6
/* 8142FDF4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142FDF8 | 7C 9E 23 78 */	mr r30, r4
/* 8142FDFC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142FE00 | 7C 7D 1B 78 */	mr r29, r3
/* 8142FE04 | 38 67 E8 18 */	addi r3, r7, lbl_8165E818@l
/* 8142FE08 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 8142FE0C | 38 85 00 B4 */	addi r4, r5, 0xb4
/* 8142FE10 | 48 00 A3 E5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8142FE14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142FE18 | 41 82 00 8C */	beq .L_8142FEA4
/* 8142FE1C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8142FE20 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8142FE24 | 41 82 00 64 */	beq .L_8142FE88
/* 8142FE28 | 40 80 00 7C */	bge .L_8142FEA4
/* 8142FE2C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8142FE30 | 40 80 00 08 */	bge .L_8142FE38
/* 8142FE34 | 48 00 00 70 */	b .L_8142FEA4
.L_8142FE38:
/* 8142FE38 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 8142FE3C | 40 82 00 68 */	bne .L_8142FEA4
/* 8142FE40 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142FE44 | 7F A3 EB 78 */	mr r3, r29
/* 8142FE48 | 80 9D 00 D0 */	lwz r4, 0xd0(r29)
/* 8142FE4C | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8142FE50 | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8142FE54 | 7D 89 03 A6 */	mtctr r12
/* 8142FE58 | 4E 80 04 21 */	bctrl
/* 8142FE5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FE60 | 38 80 00 04 */	li r4, 0x4
/* 8142FE64 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142FE68 | 7D 89 03 A6 */	mtctr r12
/* 8142FE6C | 4E 80 04 21 */	bctrl
/* 8142FE70 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142FE74 | 7F A3 EB 78 */	mr r3, r29
/* 8142FE78 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8142FE7C | 7D 89 03 A6 */	mtctr r12
/* 8142FE80 | 4E 80 04 21 */	bctrl
/* 8142FE84 | 48 00 00 20 */	b .L_8142FEA4
.L_8142FE88:
/* 8142FE88 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 8142FE8C | 40 82 00 18 */	bne .L_8142FEA4
/* 8142FE90 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142FE94 | 7F A3 EB 78 */	mr r3, r29
/* 8142FE98 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8142FE9C | 7D 89 03 A6 */	mtctr r12
/* 8142FEA0 | 4E 80 04 21 */	bctrl
.L_8142FEA4:
/* 8142FEA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142FEA8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142FEAC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142FEB0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142FEB4 | 7C 08 03 A6 */	mtlr r0
/* 8142FEB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142FEBC | 4E 80 00 20 */	blr
.endfn onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim

# .text:0xA58 | 0x8142FEC0 | size: 0xAC
# textinput::predictlang::LayoutByNW4R::setAllButtonToggleOffWithout(const char*)
.fn setAllButtonToggleOffWithout__Q39textinput11predictlang12LayoutByNW4RFPCc, global
/* 8142FEC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142FEC4 | 7C 08 02 A6 */	mflr r0
/* 8142FEC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142FECC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8142FED0 | 48 1C 95 F1 */	bl _savegpr_27
/* 8142FED4 | 80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 8142FED8 | 3F E0 81 66 */	lis r31, csszToggleGroup__Q29textinput11predictlang@ha
/* 8142FEDC | 3B FF E7 30 */	addi r31, r31, csszToggleGroup__Q29textinput11predictlang@l
/* 8142FEE0 | 7C 7B 1B 78 */	mr r27, r3
/* 8142FEE4 | 54 00 28 34 */	slwi r0, r0, 5
/* 8142FEE8 | 7C 9C 23 78 */	mr r28, r4
/* 8142FEEC | 7F BF 00 2E */	lwzx r29, r31, r0
/* 8142FEF0 | 3B C0 00 00 */	li r30, 0x0
/* 8142FEF4 | 48 00 00 58 */	b .L_8142FF4C
.L_8142FEF8:
/* 8142FEF8 | 7F A3 EB 78 */	mr r3, r29
/* 8142FEFC | 7F 84 E3 78 */	mr r4, r28
/* 8142FF00 | 48 00 A2 F5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8142FF04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142FF08 | 40 82 00 30 */	bne .L_8142FF38
/* 8142FF0C | 81 9B 00 1C */	lwz r12, 0x1c(r27)
/* 8142FF10 | 38 7B 00 1C */	addi r3, r27, 0x1c
/* 8142FF14 | 7F A4 EB 78 */	mr r4, r29
/* 8142FF18 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142FF1C | 7D 89 03 A6 */	mtctr r12
/* 8142FF20 | 4E 80 04 21 */	bctrl
/* 8142FF24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FF28 | 38 80 00 05 */	li r4, 0x5
/* 8142FF2C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142FF30 | 7D 89 03 A6 */	mtctr r12
/* 8142FF34 | 4E 80 04 21 */	bctrl
.L_8142FF38:
/* 8142FF38 | 80 1B 00 D0 */	lwz r0, 0xd0(r27)
/* 8142FF3C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8142FF40 | 54 00 28 34 */	slwi r0, r0, 5
/* 8142FF44 | 7C 1E 02 14 */	add r0, r30, r0
/* 8142FF48 | 7F BF 00 2E */	lwzx r29, r31, r0
.L_8142FF4C:
/* 8142FF4C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8142FF50 | 40 82 FF A8 */	bne .L_8142FEF8
/* 8142FF54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8142FF58 | 48 1C 95 B5 */	bl _restgpr_27
/* 8142FF5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142FF60 | 7C 08 03 A6 */	mtlr r0
/* 8142FF64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142FF68 | 4E 80 00 20 */	blr
.endfn setAllButtonToggleOffWithout__Q39textinput11predictlang12LayoutByNW4RFPCc

# .text:0xB04 | 0x8142FF6C | size: 0x98
# textinput::predictlang::LayoutByNW4R::setAllButtonNormal()
.fn setAllButtonNormal__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8142FF6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142FF70 | 7C 08 02 A6 */	mflr r0
/* 8142FF74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142FF78 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142FF7C | 3F E0 81 66 */	lis r31, csszToggleGroup__Q29textinput11predictlang@ha
/* 8142FF80 | 3B FF E7 30 */	addi r31, r31, csszToggleGroup__Q29textinput11predictlang@l
/* 8142FF84 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142FF88 | 3B C0 00 00 */	li r30, 0x0
/* 8142FF8C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142FF90 | 7C 7D 1B 78 */	mr r29, r3
/* 8142FF94 | 80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 8142FF98 | 54 00 28 34 */	slwi r0, r0, 5
/* 8142FF9C | 7C 9F 00 2E */	lwzx r4, r31, r0
/* 8142FFA0 | 48 00 00 40 */	b .L_8142FFE0
.L_8142FFA4:
/* 8142FFA4 | 81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 8142FFA8 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 8142FFAC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142FFB0 | 7D 89 03 A6 */	mtctr r12
/* 8142FFB4 | 4E 80 04 21 */	bctrl
/* 8142FFB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142FFBC | 38 80 00 00 */	li r4, 0x0
/* 8142FFC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142FFC4 | 7D 89 03 A6 */	mtctr r12
/* 8142FFC8 | 4E 80 04 21 */	bctrl
/* 8142FFCC | 80 1D 00 D0 */	lwz r0, 0xd0(r29)
/* 8142FFD0 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8142FFD4 | 54 00 28 34 */	slwi r0, r0, 5
/* 8142FFD8 | 7C 1E 02 14 */	add r0, r30, r0
/* 8142FFDC | 7C 9F 00 2E */	lwzx r4, r31, r0
.L_8142FFE0:
/* 8142FFE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142FFE4 | 40 82 FF C0 */	bne .L_8142FFA4
/* 8142FFE8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142FFEC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142FFF0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142FFF4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142FFF8 | 7C 08 03 A6 */	mtlr r0
/* 8142FFFC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81430000 | 4E 80 00 20 */	blr
.endfn setAllButtonNormal__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0xB9C | 0x81430004 | size: 0x54
# textinput::predictlang::LayoutByNW4R::getTargetAnmPane(textinput::Destination, textinput::inputform::Base::PredictMode)
.fn getTargetAnmPane__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11DestinationQ49textinput9inputform4Base11PredictMode, global
/* 81430004 | 3C C0 81 66 */	lis r6, csPaneToPredictMode__Q29textinput11predictlang@ha
/* 81430008 | 38 00 00 09 */	li r0, 0x9
/* 8143000C | 38 C6 E7 D0 */	addi r6, r6, csPaneToPredictMode__Q29textinput11predictlang@l
/* 81430010 | 38 E0 00 00 */	li r7, 0x0
/* 81430014 | 7C 09 03 A6 */	mtctr r0
.L_81430018:
/* 81430018 | 54 E0 1B 78 */	clrlslwi r0, r7, 16, 3
/* 8143001C | 7C 86 02 14 */	add r4, r6, r0
/* 81430020 | 7C 06 00 2E */	lwzx r0, r6, r0
/* 81430024 | 7C 05 00 00 */	cmpw r5, r0
/* 81430028 | 40 82 00 20 */	bne .L_81430048
/* 8143002C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81430030 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81430034 | 41 82 00 14 */	beq .L_81430048
/* 81430038 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8143003C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81430040 | 7D 89 03 A6 */	mtctr r12
/* 81430044 | 4E 80 04 20 */	bctr
.L_81430048:
/* 81430048 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8143004C | 42 00 FF CC */	bdnz .L_81430018
/* 81430050 | 38 60 00 00 */	li r3, 0x0
/* 81430054 | 4E 80 00 20 */	blr
.endfn getTargetAnmPane__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11DestinationQ49textinput9inputform4Base11PredictMode

# .text:0xBF0 | 0x81430058 | size: 0x22C
# textinput::predictlang::LayoutByNW4R::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, global
/* 81430058 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143005C | 7C 08 02 A6 */	mflr r0
/* 81430060 | 3C A0 81 66 */	lis r5, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 81430064 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81430068 | 38 A5 7C 88 */	addi r5, r5, cLanguageIndependentString__Q29textinput15langindependent@l
/* 8143006C | 54 80 10 3A */	slwi r0, r4, 2
/* 81430070 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81430074 | 3F E0 81 66 */	lis r31, lbl_8165E420@ha
/* 81430078 | 3B FF E4 20 */	addi r31, r31, lbl_8165E420@l
/* 8143007C | 7C A5 02 14 */	add r5, r5, r0
/* 81430080 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81430084 | 7C 9E 23 78 */	mr r30, r4
/* 81430088 | 38 9F 04 3C */	addi r4, r31, 0x43c
/* 8143008C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81430090 | 7C 7D 1B 78 */	mr r29, r3
/* 81430094 | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 81430098 | 80 A5 00 50 */	lwz r5, 0x50(r5)
/* 8143009C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814300A0 | 7D 89 03 A6 */	mtctr r12
/* 814300A4 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 814300A8 | 4E 80 04 21 */	bctrl
/* 814300AC | 28 1E 00 09 */	cmplwi r30, 0x9
/* 814300B0 | 41 81 01 B8 */	bgt .L_81430268
/* 814300B4 | 3C 60 81 66 */	lis r3, jumptable_8165E8A4@ha
/* 814300B8 | 57 C0 10 3A */	slwi r0, r30, 2
/* 814300BC | 38 63 E8 A4 */	addi r3, r3, jumptable_8165E8A4@l
/* 814300C0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814300C4 | 7C 69 03 A6 */	mtctr r3
/* 814300C8 | 4E 80 04 20 */	bctr
.L_814300CC:
/* 814300CC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814300D0 | 7F A3 EB 78 */	mr r3, r29
/* 814300D4 | 38 80 00 01 */	li r4, 0x1
/* 814300D8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814300DC | 7D 89 03 A6 */	mtctr r12
/* 814300E0 | 4E 80 04 21 */	bctrl
/* 814300E4 | 48 00 01 84 */	b .L_81430268
.L_814300E8:
/* 814300E8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814300EC | 7F A3 EB 78 */	mr r3, r29
/* 814300F0 | 38 80 00 02 */	li r4, 0x2
/* 814300F4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814300F8 | 7D 89 03 A6 */	mtctr r12
/* 814300FC | 4E 80 04 21 */	bctrl
/* 81430100 | 48 00 01 68 */	b .L_81430268
.L_81430104:
/* 81430104 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430108 | 7F A3 EB 78 */	mr r3, r29
/* 8143010C | 38 80 00 05 */	li r4, 0x5
/* 81430110 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430114 | 7D 89 03 A6 */	mtctr r12
/* 81430118 | 4E 80 04 21 */	bctrl
/* 8143011C | 48 00 01 4C */	b .L_81430268
.L_81430120:
/* 81430120 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430124 | 7F A3 EB 78 */	mr r3, r29
/* 81430128 | 38 80 00 06 */	li r4, 0x6
/* 8143012C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430130 | 7D 89 03 A6 */	mtctr r12
/* 81430134 | 4E 80 04 21 */	bctrl
/* 81430138 | 48 00 01 30 */	b .L_81430268
.L_8143013C:
/* 8143013C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430140 | 7F A3 EB 78 */	mr r3, r29
/* 81430144 | 38 80 00 09 */	li r4, 0x9
/* 81430148 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143014C | 7D 89 03 A6 */	mtctr r12
/* 81430150 | 4E 80 04 21 */	bctrl
/* 81430154 | 48 00 01 14 */	b .L_81430268
.L_81430158:
/* 81430158 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143015C | 7F A3 EB 78 */	mr r3, r29
/* 81430160 | 38 80 00 0A */	li r4, 0xa
/* 81430164 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430168 | 7D 89 03 A6 */	mtctr r12
/* 8143016C | 4E 80 04 21 */	bctrl
/* 81430170 | 48 00 00 F8 */	b .L_81430268
.L_81430174:
/* 81430174 | 80 1D 00 D0 */	lwz r0, 0xd0(r29)
/* 81430178 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8143017C | 40 82 00 20 */	bne .L_8143019C
/* 81430180 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430184 | 7F A3 EB 78 */	mr r3, r29
/* 81430188 | 38 80 00 08 */	li r4, 0x8
/* 8143018C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430190 | 7D 89 03 A6 */	mtctr r12
/* 81430194 | 4E 80 04 21 */	bctrl
/* 81430198 | 48 00 00 D0 */	b .L_81430268
.L_8143019C:
/* 8143019C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814301A0 | 7F A3 EB 78 */	mr r3, r29
/* 814301A4 | 38 80 00 04 */	li r4, 0x4
/* 814301A8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814301AC | 7D 89 03 A6 */	mtctr r12
/* 814301B0 | 4E 80 04 21 */	bctrl
/* 814301B4 | 81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 814301B8 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 814301BC | 38 9F 04 3C */	addi r4, r31, 0x43c
/* 814301C0 | 38 BF 04 50 */	addi r5, r31, 0x450
/* 814301C4 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814301C8 | 7D 89 03 A6 */	mtctr r12
/* 814301CC | 4E 80 04 21 */	bctrl
/* 814301D0 | 48 00 00 98 */	b .L_81430268
.L_814301D4:
/* 814301D4 | 80 1D 00 D0 */	lwz r0, 0xd0(r29)
/* 814301D8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814301DC | 40 82 00 20 */	bne .L_814301FC
/* 814301E0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814301E4 | 7F A3 EB 78 */	mr r3, r29
/* 814301E8 | 38 80 00 07 */	li r4, 0x7
/* 814301EC | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814301F0 | 7D 89 03 A6 */	mtctr r12
/* 814301F4 | 4E 80 04 21 */	bctrl
/* 814301F8 | 48 00 00 70 */	b .L_81430268
.L_814301FC:
/* 814301FC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430200 | 7F A3 EB 78 */	mr r3, r29
/* 81430204 | 38 80 00 03 */	li r4, 0x3
/* 81430208 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143020C | 7D 89 03 A6 */	mtctr r12
/* 81430210 | 4E 80 04 21 */	bctrl
/* 81430214 | 81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 81430218 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 8143021C | 38 9F 04 3C */	addi r4, r31, 0x43c
/* 81430220 | 38 BF 04 68 */	addi r5, r31, 0x468
/* 81430224 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81430228 | 7D 89 03 A6 */	mtctr r12
/* 8143022C | 4E 80 04 21 */	bctrl
/* 81430230 | 48 00 00 38 */	b .L_81430268
.L_81430234:
/* 81430234 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430238 | 7F A3 EB 78 */	mr r3, r29
/* 8143023C | 38 80 00 0B */	li r4, 0xb
/* 81430240 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430244 | 7D 89 03 A6 */	mtctr r12
/* 81430248 | 4E 80 04 21 */	bctrl
/* 8143024C | 48 00 00 1C */	b .L_81430268
.L_81430250:
/* 81430250 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81430254 | 7F A3 EB 78 */	mr r3, r29
/* 81430258 | 38 80 00 0C */	li r4, 0xc
/* 8143025C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430260 | 7D 89 03 A6 */	mtctr r12
/* 81430264 | 4E 80 04 21 */	bctrl
.L_81430268:
/* 81430268 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143026C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81430270 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81430274 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81430278 | 7C 08 03 A6 */	mtlr r0
/* 8143027C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81430280 | 4E 80 00 20 */	blr
.endfn setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language

# .text:0xE1C | 0x81430284 | size: 0x21C
# textinput::predictlang::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q39textinput11predictlang12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81430284 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81430288 | 7C 08 02 A6 */	mflr r0
/* 8143028C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81430290 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81430294 | 48 1C 92 2D */	bl _savegpr_27
/* 81430298 | 7C 7F 1B 78 */	mr r31, r3
/* 8143029C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814302A0 | 7C 9C 23 78 */	mr r28, r4
/* 814302A4 | 7C BB 2B 78 */	mr r27, r5
/* 814302A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814302AC | 7C DE 33 78 */	mr r30, r6
/* 814302B0 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814302B4 | 7D 89 03 A6 */	mtctr r12
/* 814302B8 | 4E 80 04 21 */	bctrl
/* 814302BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814302C0 | 41 82 01 C8 */	beq .L_81430488
/* 814302C4 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 814302C8 | 88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 814302CC | 3B A3 00 B4 */	addi r29, r3, 0xb4
/* 814302D0 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 814302D4 | 40 82 01 B4 */	bne .L_81430488
/* 814302D8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814302DC | 38 80 00 00 */	li r4, 0x0
/* 814302E0 | 38 A0 00 11 */	li r5, 0x11
/* 814302E4 | 4B F0 00 51 */	bl memset
/* 814302E8 | 7F A3 EB 78 */	mr r3, r29
/* 814302EC | 48 1C 8C 11 */	bl strlen
/* 814302F0 | 7C 65 1B 78 */	mr r5, r3
/* 814302F4 | 7F A4 EB 78 */	mr r4, r29
/* 814302F8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814302FC | 48 1D 20 C9 */	bl strncpy
/* 81430300 | 38 00 00 50 */	li r0, 0x50
/* 81430304 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81430308 | 98 01 00 1C */	stb r0, 0x1c(r1)
/* 8143030C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81430310 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 81430314 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81430318 | 7D 89 03 A6 */	mtctr r12
/* 8143031C | 4E 80 04 21 */	bctrl
/* 81430320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430324 | 7C 7C 1B 78 */	mr r28, r3
/* 81430328 | 41 82 00 94 */	beq .L_814303BC
/* 8143032C | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 81430330 | 41 82 00 44 */	beq .L_81430374
/* 81430334 | 40 80 00 10 */	bge .L_81430344
/* 81430338 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8143033C | 40 80 00 50 */	bge .L_8143038C
/* 81430340 | 48 00 00 7C */	b .L_814303BC
.L_81430344:
/* 81430344 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81430348 | 41 82 00 08 */	beq .L_81430350
/* 8143034C | 48 00 00 70 */	b .L_814303BC
.L_81430350:
/* 81430350 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81430354 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81430358 | 41 82 00 64 */	beq .L_814303BC
/* 8143035C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430360 | 38 80 00 00 */	li r4, 0x0
/* 81430364 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81430368 | 7D 89 03 A6 */	mtctr r12
/* 8143036C | 4E 80 04 21 */	bctrl
/* 81430370 | 48 00 00 4C */	b .L_814303BC
.L_81430374:
/* 81430374 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430378 | 38 80 00 02 */	li r4, 0x2
/* 8143037C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81430380 | 7D 89 03 A6 */	mtctr r12
/* 81430384 | 4E 80 04 21 */	bctrl
/* 81430388 | 48 00 00 34 */	b .L_814303BC
.L_8143038C:
/* 8143038C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81430390 | 38 80 00 04 */	li r4, 0x4
/* 81430394 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430398 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143039C | 7D 89 03 A6 */	mtctr r12
/* 814303A0 | 4E 80 04 21 */	bctrl
/* 814303A4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814303A8 | 7F 83 E3 78 */	mr r3, r28
/* 814303AC | 38 80 00 01 */	li r4, 0x1
/* 814303B0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814303B4 | 7D 89 03 A6 */	mtctr r12
/* 814303B8 | 4E 80 04 21 */	bctrl
.L_814303BC:
/* 814303BC | 28 1B 00 04 */	cmplwi r27, 0x4
/* 814303C0 | 40 82 00 C8 */	bne .L_81430488
/* 814303C4 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 814303C8 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 814303CC | 41 82 00 BC */	beq .L_81430488
/* 814303D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814303D4 | 38 80 00 00 */	li r4, 0x0
/* 814303D8 | 38 A0 00 11 */	li r5, 0x11
/* 814303DC | 4B EF FF 59 */	bl memset
/* 814303E0 | 7F A3 EB 78 */	mr r3, r29
/* 814303E4 | 48 1C 8B 19 */	bl strlen
/* 814303E8 | 7C 65 1B 78 */	mr r5, r3
/* 814303EC | 7F A4 EB 78 */	mr r4, r29
/* 814303F0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814303F4 | 48 1D 1F D1 */	bl strncpy
/* 814303F8 | 38 00 00 50 */	li r0, 0x50
/* 814303FC | 3F C0 81 66 */	lis r30, csPaneToPredictMode__Q29textinput11predictlang@ha
/* 81430400 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81430404 | 3B DE E7 D0 */	addi r30, r30, csPaneToPredictMode__Q29textinput11predictlang@l
/* 81430408 | 3B A0 00 00 */	li r29, 0x0
.L_8143040C:
/* 8143040C | 57 BC 1B 78 */	clrlslwi r28, r29, 16, 3
/* 81430410 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81430414 | 7C 7E E2 14 */	add r3, r30, r28
/* 81430418 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143041C | 48 00 9D D9 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81430420 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430424 | 41 82 00 0C */	beq .L_81430430
/* 81430428 | 7C 9E E0 2E */	lwzx r4, r30, r28
/* 8143042C | 48 00 00 14 */	b .L_81430440
.L_81430430:
/* 81430430 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81430434 | 28 1D 00 09 */	cmplwi r29, 0x9
/* 81430438 | 41 80 FF D4 */	blt .L_8143040C
/* 8143043C | 38 80 00 0D */	li r4, 0xd
.L_81430440:
/* 81430440 | 2C 04 00 0D */	cmpwi r4, 0xd
/* 81430444 | 41 82 00 44 */	beq .L_81430488
/* 81430448 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8143044C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430450 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81430454 | 7D 89 03 A6 */	mtctr r12
/* 81430458 | 4E 80 04 21 */	bctrl
/* 8143045C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81430460 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430464 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 81430468 | 7D 89 03 A6 */	mtctr r12
/* 8143046C | 4E 80 04 21 */	bctrl
/* 81430470 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81430474 | 38 80 00 03 */	li r4, 0x3
/* 81430478 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143047C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430480 | 7D 89 03 A6 */	mtctr r12
/* 81430484 | 4E 80 04 21 */	bctrl
.L_81430488:
/* 81430488 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8143048C | 48 1C 90 81 */	bl _restgpr_27
/* 81430490 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81430494 | 7C 08 03 A6 */	mtlr r0
/* 81430498 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8143049C | 4E 80 00 20 */	blr
.endfn onTiEvent__Q39textinput11predictlang12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x1038 | 0x814304A0 | size: 0x8
# textinput::predictlang::LayoutByNW4R::canBeInputed()
.fn canBeInputed__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 814304A0 | 88 63 00 C9 */	lbz r3, 0xc9(r3)
/* 814304A4 | 4E 80 00 20 */	blr
.endfn canBeInputed__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x1040 | 0x814304A8 | size: 0x2C
# textinput::predictlang::WholeAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput11predictlang12WholeAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 814304A8 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814304AC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814304B0 | 4C 82 00 20 */	bnelr
/* 814304B4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814304B8 | 4C 82 00 20 */	bnelr
/* 814304BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814304C0 | 38 80 00 00 */	li r4, 0x0
/* 814304C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814304C8 | 7D 89 03 A6 */	mtctr r12
/* 814304CC | 4E 80 04 20 */	bctr
/* 814304D0 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput11predictlang12WholeAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x106C | 0x814304D4 | size: 0x8
# textinput::predictlang::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q39textinput11predictlang7AnmPaneFUl, global
/* 814304D4 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 814304D8 | 48 00 6B E8 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q39textinput11predictlang7AnmPaneFUl

# .text:0x1074 | 0x814304DC | size: 0x170
# textinput::predictlang::NormalButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput11predictlang19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 814304DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814304E0 | 7C 08 02 A6 */	mflr r0
/* 814304E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814304E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814304EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814304F0 | 7C 9F 23 78 */	mr r31, r4
/* 814304F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814304F8 | 7C 7E 1B 78 */	mr r30, r3
/* 814304FC | 40 82 00 18 */	bne .L_81430514
/* 81430500 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430504 | 38 80 00 04 */	li r4, 0x4
/* 81430508 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143050C | 7D 89 03 A6 */	mtctr r12
/* 81430510 | 4E 80 04 21 */	bctrl
.L_81430514:
/* 81430514 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 81430518 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8143051C | 41 82 00 B4 */	beq .L_814305D0
/* 81430520 | 40 80 00 14 */	bge .L_81430534
/* 81430524 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81430528 | 41 82 00 1C */	beq .L_81430544
/* 8143052C | 40 80 00 3C */	bge .L_81430568
/* 81430530 | 48 00 01 04 */	b .L_81430634
.L_81430534:
/* 81430534 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81430538 | 41 82 00 BC */	beq .L_814305F4
/* 8143053C | 40 80 00 F8 */	bge .L_81430634
/* 81430540 | 48 00 00 6C */	b .L_814305AC
.L_81430544:
/* 81430544 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81430548 | 40 82 00 EC */	bne .L_81430634
/* 8143054C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430550 | 7F C3 F3 78 */	mr r3, r30
/* 81430554 | 38 80 00 01 */	li r4, 0x1
/* 81430558 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143055C | 7D 89 03 A6 */	mtctr r12
/* 81430560 | 4E 80 04 21 */	bctrl
/* 81430564 | 48 00 00 D0 */	b .L_81430634
.L_81430568:
/* 81430568 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8143056C | 40 82 00 1C */	bne .L_81430588
/* 81430570 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430574 | 7F C3 F3 78 */	mr r3, r30
/* 81430578 | 38 80 00 03 */	li r4, 0x3
/* 8143057C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430580 | 7D 89 03 A6 */	mtctr r12
/* 81430584 | 4E 80 04 21 */	bctrl
.L_81430588:
/* 81430588 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8143058C | 40 82 00 A8 */	bne .L_81430634
/* 81430590 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430594 | 7F C3 F3 78 */	mr r3, r30
/* 81430598 | 38 80 00 02 */	li r4, 0x2
/* 8143059C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814305A0 | 7D 89 03 A6 */	mtctr r12
/* 814305A4 | 4E 80 04 21 */	bctrl
/* 814305A8 | 48 00 00 8C */	b .L_81430634
.L_814305AC:
/* 814305AC | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 814305B0 | 40 82 00 84 */	bne .L_81430634
/* 814305B4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814305B8 | 7F C3 F3 78 */	mr r3, r30
/* 814305BC | 38 80 00 02 */	li r4, 0x2
/* 814305C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814305C4 | 7D 89 03 A6 */	mtctr r12
/* 814305C8 | 4E 80 04 21 */	bctrl
/* 814305CC | 48 00 00 68 */	b .L_81430634
.L_814305D0:
/* 814305D0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 814305D4 | 40 82 00 60 */	bne .L_81430634
/* 814305D8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814305DC | 7F C3 F3 78 */	mr r3, r30
/* 814305E0 | 38 80 00 00 */	li r4, 0x0
/* 814305E4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814305E8 | 7D 89 03 A6 */	mtctr r12
/* 814305EC | 4E 80 04 21 */	bctrl
/* 814305F0 | 48 00 00 44 */	b .L_81430634
.L_814305F4:
/* 814305F4 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 814305F8 | 40 82 00 1C */	bne .L_81430614
/* 814305FC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430600 | 7F C3 F3 78 */	mr r3, r30
/* 81430604 | 38 80 00 03 */	li r4, 0x3
/* 81430608 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143060C | 7D 89 03 A6 */	mtctr r12
/* 81430610 | 4E 80 04 21 */	bctrl
.L_81430614:
/* 81430614 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81430618 | 40 82 00 1C */	bne .L_81430634
/* 8143061C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430620 | 7F C3 F3 78 */	mr r3, r30
/* 81430624 | 38 80 00 02 */	li r4, 0x2
/* 81430628 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143062C | 7D 89 03 A6 */	mtctr r12
/* 81430630 | 4E 80 04 21 */	bctrl
.L_81430634:
/* 81430634 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430638 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143063C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81430640 | 7C 08 03 A6 */	mtlr r0
/* 81430644 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430648 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput11predictlang19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x11E4 | 0x8143064C | size: 0x1B4
# textinput::predictlang::ChangeButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8143064C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430650 | 7C 08 02 A6 */	mflr r0
/* 81430654 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81430658 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143065C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81430660 | 7C 9F 23 78 */	mr r31, r4
/* 81430664 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81430668 | 7C 7E 1B 78 */	mr r30, r3
/* 8143066C | 40 82 00 18 */	bne .L_81430684
/* 81430670 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430674 | 38 80 00 04 */	li r4, 0x4
/* 81430678 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143067C | 7D 89 03 A6 */	mtctr r12
/* 81430680 | 4E 80 04 21 */	bctrl
.L_81430684:
/* 81430684 | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 81430688 | 40 82 00 28 */	bne .L_814306B0
/* 8143068C | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 81430690 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81430694 | 41 82 00 1C */	beq .L_814306B0
/* 81430698 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143069C | 7F C3 F3 78 */	mr r3, r30
/* 814306A0 | 38 80 00 08 */	li r4, 0x8
/* 814306A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814306A8 | 7D 89 03 A6 */	mtctr r12
/* 814306AC | 4E 80 04 21 */	bctrl
.L_814306B0:
/* 814306B0 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 814306B4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814306B8 | 41 81 01 30 */	bgt .L_814307E8
/* 814306BC | 3C 60 81 66 */	lis r3, jumptable_8165E8CC@ha
/* 814306C0 | 54 00 10 3A */	slwi r0, r0, 2
/* 814306C4 | 38 63 E8 CC */	addi r3, r3, jumptable_8165E8CC@l
/* 814306C8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814306CC | 7C 69 03 A6 */	mtctr r3
/* 814306D0 | 4E 80 04 20 */	bctr
.L_814306D4:
/* 814306D4 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814306D8 | 40 82 01 10 */	bne .L_814307E8
/* 814306DC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814306E0 | 7F C3 F3 78 */	mr r3, r30
/* 814306E4 | 38 80 00 01 */	li r4, 0x1
/* 814306E8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814306EC | 7D 89 03 A6 */	mtctr r12
/* 814306F0 | 4E 80 04 21 */	bctrl
/* 814306F4 | 48 00 00 F4 */	b .L_814307E8
.L_814306F8:
/* 814306F8 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 814306FC | 40 82 00 1C */	bne .L_81430718
/* 81430700 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430704 | 7F C3 F3 78 */	mr r3, r30
/* 81430708 | 38 80 00 03 */	li r4, 0x3
/* 8143070C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430710 | 7D 89 03 A6 */	mtctr r12
/* 81430714 | 4E 80 04 21 */	bctrl
.L_81430718:
/* 81430718 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8143071C | 40 82 00 CC */	bne .L_814307E8
/* 81430720 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430724 | 7F C3 F3 78 */	mr r3, r30
/* 81430728 | 38 80 00 02 */	li r4, 0x2
/* 8143072C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430730 | 7D 89 03 A6 */	mtctr r12
/* 81430734 | 4E 80 04 21 */	bctrl
/* 81430738 | 48 00 00 B0 */	b .L_814307E8
.L_8143073C:
/* 8143073C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81430740 | 40 82 00 A8 */	bne .L_814307E8
/* 81430744 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81430748 | 7F C3 F3 78 */	mr r3, r30
/* 8143074C | 38 80 00 02 */	li r4, 0x2
/* 81430750 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430754 | 7D 89 03 A6 */	mtctr r12
/* 81430758 | 4E 80 04 21 */	bctrl
/* 8143075C | 48 00 00 8C */	b .L_814307E8
.L_81430760:
/* 81430760 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81430764 | 40 82 00 1C */	bne .L_81430780
/* 81430768 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143076C | 7F C3 F3 78 */	mr r3, r30
/* 81430770 | 38 80 00 00 */	li r4, 0x0
/* 81430774 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430778 | 7D 89 03 A6 */	mtctr r12
/* 8143077C | 4E 80 04 21 */	bctrl
.L_81430780:
/* 81430780 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81430784 | 40 82 00 64 */	bne .L_814307E8
/* 81430788 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143078C | 7F C3 F3 78 */	mr r3, r30
/* 81430790 | 38 80 00 01 */	li r4, 0x1
/* 81430794 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81430798 | 7D 89 03 A6 */	mtctr r12
/* 8143079C | 4E 80 04 21 */	bctrl
/* 814307A0 | 48 00 00 48 */	b .L_814307E8
.L_814307A4:
/* 814307A4 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 814307A8 | 40 82 00 20 */	bne .L_814307C8
/* 814307AC | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814307B0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814307B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814307B8 | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 814307BC | 81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 814307C0 | 7D 89 03 A6 */	mtctr r12
/* 814307C4 | 4E 80 04 21 */	bctrl
.L_814307C8:
/* 814307C8 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 814307CC | 40 82 00 1C */	bne .L_814307E8
/* 814307D0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814307D4 | 7F C3 F3 78 */	mr r3, r30
/* 814307D8 | 38 80 00 07 */	li r4, 0x7
/* 814307DC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814307E0 | 7D 89 03 A6 */	mtctr r12
/* 814307E4 | 4E 80 04 21 */	bctrl
.L_814307E8:
/* 814307E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814307EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814307F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814307F4 | 7C 08 03 A6 */	mtlr r0
/* 814307F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814307FC | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x1398 | 0x81430800 | size: 0x4
# textinput::CommandSender::updateFromReceiver(unsigned long, void*)
.fn updateFromReceiver__Q29textinput13CommandSenderFUlPv, global
/* 81430800 | 4E 80 00 20 */	blr
.endfn updateFromReceiver__Q29textinput13CommandSenderFUlPv

# .text:0x139C | 0x81430804 | size: 0x8
# textinput::predictlang::LayoutByNW4R::draw()
.fn draw__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 81430804 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 81430808 | 48 00 5C C8 */	b draw__Q39textinput11nw4rmanager6LayoutFv
.endfn draw__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x13A4 | 0x8143080C | size: 0x10
# textinput::predictlang::LayoutByNW4R::setDestination(textinput::Destination)
.fn setDestination__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11Destination, global
/* 8143080C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430810 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81430814 | 7D 89 03 A6 */	mtctr r12
/* 81430818 | 4E 80 04 20 */	bctr
.endfn setDestination__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11Destination

# .text:0x13B4 | 0x8143081C | size: 0x8
# textinput::predictlang::LayoutByNW4R::isActive()
.fn isActive__Q39textinput11predictlang12LayoutByNW4RFv, global
/* 8143081C | 88 63 00 C8 */	lbz r3, 0xc8(r3)
/* 81430820 | 4E 80 00 20 */	blr
.endfn isActive__Q39textinput11predictlang12LayoutByNW4RFv

# .text:0x13BC | 0x81430824 | size: 0x8
# textinput::predictlang::AnmPane::getKeyType() const
.fn getKeyType__Q39textinput11predictlang7AnmPaneCFv, global
/* 81430824 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 81430828 | 4E 80 00 20 */	blr
.endfn getKeyType__Q39textinput11predictlang7AnmPaneCFv

# .text:0x13C4 | 0x8143082C | size: 0xC
# textinput::predictlang::AnmPane::init()
.fn init__Q39textinput11predictlang7AnmPaneFv, global
/* 8143082C | 38 00 00 00 */	li r0, 0x0
/* 81430830 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81430834 | 4E 80 00 20 */	blr
.endfn init__Q39textinput11predictlang7AnmPaneFv

# .text:0x13D0 | 0x81430838 | size: 0x5C
# textinput::predictlang::ChangeButtonAnmPane::~ChangeButtonAnmPane()
.fn __dt__Q39textinput11predictlang19ChangeButtonAnmPaneFv, global
/* 81430838 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143083C | 7C 08 02 A6 */	mflr r0
/* 81430840 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430844 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81430848 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143084C | 7C 9F 23 78 */	mr r31, r4
/* 81430850 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81430854 | 7C 7E 1B 78 */	mr r30, r3
/* 81430858 | 41 82 00 20 */	beq .L_81430878
/* 8143085C | 41 82 00 0C */	beq .L_81430868
/* 81430860 | 38 80 00 00 */	li r4, 0x0
/* 81430864 | 48 00 66 BD */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81430868:
/* 81430868 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143086C | 40 81 00 0C */	ble .L_81430878
/* 81430870 | 7F C3 F3 78 */	mr r3, r30
/* 81430874 | 48 1C 78 71 */	bl __dl__FPv
.L_81430878:
/* 81430878 | 7F C3 F3 78 */	mr r3, r30
/* 8143087C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81430880 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81430884 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430888 | 7C 08 03 A6 */	mtlr r0
/* 8143088C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430890 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11predictlang19ChangeButtonAnmPaneFv

# .text:0x142C | 0x81430894 | size: 0x5C
# textinput::predictlang::NormalButtonAnmPane::~NormalButtonAnmPane()
.fn __dt__Q39textinput11predictlang19NormalButtonAnmPaneFv, global
/* 81430894 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430898 | 7C 08 02 A6 */	mflr r0
/* 8143089C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814308A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814308A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814308A8 | 7C 9F 23 78 */	mr r31, r4
/* 814308AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814308B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814308B4 | 41 82 00 20 */	beq .L_814308D4
/* 814308B8 | 41 82 00 0C */	beq .L_814308C4
/* 814308BC | 38 80 00 00 */	li r4, 0x0
/* 814308C0 | 48 00 66 61 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_814308C4:
/* 814308C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814308C8 | 40 81 00 0C */	ble .L_814308D4
/* 814308CC | 7F C3 F3 78 */	mr r3, r30
/* 814308D0 | 48 1C 78 15 */	bl __dl__FPv
.L_814308D4:
/* 814308D4 | 7F C3 F3 78 */	mr r3, r30
/* 814308D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814308DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814308E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814308E4 | 7C 08 03 A6 */	mtlr r0
/* 814308E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814308EC | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11predictlang19NormalButtonAnmPaneFv

# .text:0x1488 | 0x814308F0 | size: 0x5C
# textinput::predictlang::WholeAnmPane::~WholeAnmPane()
.fn __dt__Q39textinput11predictlang12WholeAnmPaneFv, global
/* 814308F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814308F4 | 7C 08 02 A6 */	mflr r0
/* 814308F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814308FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81430900 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81430904 | 7C 9F 23 78 */	mr r31, r4
/* 81430908 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143090C | 7C 7E 1B 78 */	mr r30, r3
/* 81430910 | 41 82 00 20 */	beq .L_81430930
/* 81430914 | 41 82 00 0C */	beq .L_81430920
/* 81430918 | 38 80 00 00 */	li r4, 0x0
/* 8143091C | 48 00 66 05 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81430920:
/* 81430920 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81430924 | 40 81 00 0C */	ble .L_81430930
/* 81430928 | 7F C3 F3 78 */	mr r3, r30
/* 8143092C | 48 1C 77 B9 */	bl __dl__FPv
.L_81430930:
/* 81430930 | 7F C3 F3 78 */	mr r3, r30
/* 81430934 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81430938 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143093C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430940 | 7C 08 03 A6 */	mtlr r0
/* 81430944 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430948 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11predictlang12WholeAnmPaneFv

# .text:0x14E4 | 0x8143094C | size: 0x9C
.fn "__sinit_\\predictlang_cpp", global
/* 8143094C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430950 | 3C 60 81 66 */	lis r3, lbl_8165E420@ha
/* 81430954 | 38 63 E4 20 */	addi r3, r3, lbl_8165E420@l
/* 81430958 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143095C | 39 83 03 10 */	addi r12, r3, 0x310
/* 81430960 | 3B E3 00 10 */	addi r31, r3, 0x10
/* 81430964 | 39 43 03 B0 */	addi r10, r3, 0x3b0
/* 81430968 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143096C | 83 CD 93 B8 */	lwz r30, lbl_816973F8@sda21(r0)
/* 81430970 | 81 6C 00 20 */	lwz r11, 0x20(r12)
/* 81430974 | 81 2C 00 24 */	lwz r9, 0x24(r12)
/* 81430978 | 81 0C 00 28 */	lwz r8, 0x28(r12)
/* 8143097C | 80 EC 00 40 */	lwz r7, 0x40(r12)
/* 81430980 | 80 CC 00 44 */	lwz r6, 0x44(r12)
/* 81430984 | 80 AC 00 48 */	lwz r5, 0x48(r12)
/* 81430988 | 80 8C 00 4C */	lwz r4, 0x4c(r12)
/* 8143098C | 80 6C 00 50 */	lwz r3, 0x50(r12)
/* 81430990 | 80 0C 00 54 */	lwz r0, 0x54(r12)
/* 81430994 | 93 DF 00 5C */	stw r30, 0x5c(r31)
/* 81430998 | 93 DF 00 9C */	stw r30, 0x9c(r31)
/* 8143099C | 93 DF 00 DC */	stw r30, 0xdc(r31)
/* 814309A0 | 93 DF 01 1C */	stw r30, 0x11c(r31)
/* 814309A4 | 93 DF 01 5C */	stw r30, 0x15c(r31)
/* 814309A8 | 93 DF 01 9C */	stw r30, 0x19c(r31)
/* 814309AC | 93 DF 02 1C */	stw r30, 0x21c(r31)
/* 814309B0 | 93 DF 02 5C */	stw r30, 0x25c(r31)
/* 814309B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814309B8 | 91 6A 00 04 */	stw r11, 0x4(r10)
/* 814309BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814309C0 | 91 2A 00 0C */	stw r9, 0xc(r10)
/* 814309C4 | 91 0A 00 14 */	stw r8, 0x14(r10)
/* 814309C8 | 90 EA 00 1C */	stw r7, 0x1c(r10)
/* 814309CC | 90 CA 00 24 */	stw r6, 0x24(r10)
/* 814309D0 | 90 AA 00 2C */	stw r5, 0x2c(r10)
/* 814309D4 | 90 8A 00 34 */	stw r4, 0x34(r10)
/* 814309D8 | 90 6A 00 3C */	stw r3, 0x3c(r10)
/* 814309DC | 90 0A 00 44 */	stw r0, 0x44(r10)
/* 814309E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814309E4 | 4E 80 00 20 */	blr
.endfn "__sinit_\\predictlang_cpp"

# .text:0x1580 | 0x814309E8 | size: 0x8
.fn "@28@__dt__Q39textinput11predictlang12LayoutByNW4RFv", global
/* 814309E8 | 38 63 FF E4 */	subi r3, r3, 0x1c
/* 814309EC | 4B FF EA 7C */	b __dt__Q39textinput11predictlang12LayoutByNW4RFv
.endfn "@28@__dt__Q39textinput11predictlang12LayoutByNW4RFv"

# .text:0x1588 | 0x814309F0 | size: 0x8
# textinput::predictlang::LayoutByNW4R::@28@draw()
.fn "@28@draw__Q39textinput11predictlang12LayoutByNW4RFv", global
/* 814309F0 | 38 63 FF E4 */	subi r3, r3, 0x1c
/* 814309F4 | 4B FF FE 10 */	b draw__Q39textinput11predictlang12LayoutByNW4RFv
.endfn "@28@draw__Q39textinput11predictlang12LayoutByNW4RFv"

# .text:0x1590 | 0x814309F8 | size: 0x8
# textinput::predictlang::LayoutByNW4R::@28@init()
.fn "@28@init__Q39textinput11predictlang12LayoutByNW4RFv", global
/* 814309F8 | 38 63 FF E4 */	subi r3, r3, 0x1c
/* 814309FC | 4B FF EF 14 */	b init__Q39textinput11predictlang12LayoutByNW4RFv
.endfn "@28@init__Q39textinput11predictlang12LayoutByNW4RFv"

# .text:0x1598 | 0x81430A00 | size: 0x8
# textinput::predictlang::LayoutByNW4R::@196@onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn "@196@onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim", global
/* 81430A00 | 38 63 FF 3C */	subi r3, r3, 0xc4
/* 81430A04 | 4B FF F3 D8 */	b onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
.endfn "@196@onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"

# 0x8160D200..0x8160D204 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\predictlang_cpp"

# 0x816158D8..0x81615B40 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x816158D8 | size: 0x268
# textinput::predictlang::csAninationFile
.obj csAninationFile__Q29textinput11predictlang, local
	.4byte 0x00000000
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F6E
	.4byte 0x6F726D61
	.4byte 0x6C2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_8161591C:
	.4byte 0x00000001
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F46
	.4byte 0x6F637573
	.4byte 0x2D494E2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615960:
	.4byte 0x00000002
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F46
	.4byte 0x6F637573
	.4byte 0x2D4F5554
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816159A4:
	.4byte 0x00000004
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F50
	.4byte 0x75736865
	.4byte 0x642E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816159E8:
	.4byte 0x00000005
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F46
	.4byte 0x4144452D
	.4byte 0x494E2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615A2C:
	.4byte 0x00000006
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F46
	.4byte 0x4144452D
	.4byte 0x4F55542E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615A70:
	.4byte 0x00000003
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F52
	.4byte 0x6F6C6C5F
	.4byte 0x6F766572
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615AB4:
	.4byte 0x00000008
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F74
	.4byte 0x6F67676C
	.4byte 0x652D4F46
	.4byte 0x462E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615AF8:
	.4byte 0x00000007
	.4byte 0x66735F70
	.4byte 0x72646963
	.4byte 0x53656C57
	.4byte 0x6964775F
	.4byte 0x615F5052
	.4byte 0x44435F74
	.4byte 0x6F67676C
	.4byte 0x652D4F4E
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAninationFile__Q29textinput11predictlang

# 0x8165E420..0x8165EAA8 | size: 0x688
.data
.balign 8

# .data:0x0 | 0x8165E420 | size: 0x10
.obj lbl_8165E420, global
	.4byte 0x505F5052
	.4byte 0x44435F55
	.4byte 0x535F5553
	.4byte 0x00000000
.endobj lbl_8165E420

# .data:0x10 | 0x8165E430 | size: 0x280
.obj lbl_8165E430, global
	.4byte 0x00000002
	.4byte 0x4E5F5052
	.4byte 0x44436B65
	.4byte 0x79746F70
	.4byte 0x5F616C6C
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_816159E8
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F554B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4765
	.4byte 0x72000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4672
	.4byte 0x65000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F5370
	.4byte 0x61000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4974
	.4byte 0x61000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4475
	.4byte 0x74000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F55
	.4byte 0x535F5553
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F55
	.4byte 0x535F4672
	.4byte 0x65000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x505F5052
	.4byte 0x44435F55
	.4byte 0x535F5370
	.4byte 0x61000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput11predictlang
	.rel csAninationFile__Q29textinput11predictlang, .L_8161591C
	.rel csAninationFile__Q29textinput11predictlang, .L_81615960
	.rel csAninationFile__Q29textinput11predictlang, .L_816159A4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615A70
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AB4
	.rel csAninationFile__Q29textinput11predictlang, .L_81615AF8
	.4byte 0x00000000
.endobj lbl_8165E430

# .data:0x290 | 0x8165E6B0 | size: 0x10
.obj lbl_8165E6B0, global
	.4byte 0x505F5052
	.4byte 0x44435F55
	.4byte 0x535F4672
	.4byte 0x65000000
.endobj lbl_8165E6B0

# .data:0x2A0 | 0x8165E6C0 | size: 0x10
.obj lbl_8165E6C0, global
	.4byte 0x505F5052
	.4byte 0x44435F55
	.4byte 0x535F5370
	.4byte 0x61000000
.endobj lbl_8165E6C0

# .data:0x2B0 | 0x8165E6D0 | size: 0x10
.obj lbl_8165E6D0, global
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F554B
	.4byte 0x00000000
.endobj lbl_8165E6D0

# .data:0x2C0 | 0x8165E6E0 | size: 0x10
.obj lbl_8165E6E0, global
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4765
	.4byte 0x72000000
.endobj lbl_8165E6E0

# .data:0x2D0 | 0x8165E6F0 | size: 0x10
.obj lbl_8165E6F0, global
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4672
	.4byte 0x65000000
.endobj lbl_8165E6F0

# .data:0x2E0 | 0x8165E700 | size: 0x10
.obj lbl_8165E700, global
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F5370
	.4byte 0x61000000
.endobj lbl_8165E700

# .data:0x2F0 | 0x8165E710 | size: 0x10
.obj lbl_8165E710, global
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4974
	.4byte 0x61000000
.endobj lbl_8165E710

# .data:0x300 | 0x8165E720 | size: 0x10
.obj lbl_8165E720, global
	.4byte 0x505F5052
	.4byte 0x44435F45
	.4byte 0x555F4475
	.4byte 0x74000000
.endobj lbl_8165E720

# .data:0x310 | 0x8165E730 | size: 0xA0
# textinput::predictlang::csszToggleGroup
.obj csszToggleGroup__Q29textinput11predictlang, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165E420
	.4byte lbl_8165E6B0
	.4byte lbl_8165E6C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165E6D0
	.4byte lbl_8165E6E0
	.4byte lbl_8165E6F0
	.4byte lbl_8165E700
	.4byte lbl_8165E710
	.4byte lbl_8165E720
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
.endobj csszToggleGroup__Q29textinput11predictlang

# .data:0x3B0 | 0x8165E7D0 | size: 0x48
# textinput::predictlang::csPaneToPredictMode
.obj csPaneToPredictMode__Q29textinput11predictlang, local
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
.endobj csPaneToPredictMode__Q29textinput11predictlang

# .data:0x3F8 | 0x8165E818 | size: 0x8C
.obj lbl_8165E818, global
	.4byte 0x4E5F5052
	.4byte 0x44436B65
	.4byte 0x79746F70
	.4byte 0x5F616C6C
	.4byte 0x00000000
	.4byte 0x4E5F5052
	.4byte 0x44436B65
	.4byte 0x795F4A50
	.4byte 0x00000000
	.4byte 0x4E5F5052
	.4byte 0x44436B65
	.4byte 0x795F5553
	.4byte 0x00000000
	.4byte 0x4E5F5052
	.4byte 0x44436B65
	.4byte 0x795F4555
	.4byte 0x00000000
	.4byte 0x545F5052
	.4byte 0x44435F74
	.4byte 0x69746C65
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440069
	.4byte 0x00630063
	.4byte 0x0069006F
	.4byte 0x006E0061
	.4byte 0x00720069
	.4byte 0x006F0000
	.4byte 0x00440069
	.4byte 0x00630074
	.4byte 0x0069006F
	.4byte 0x006E006E
	.4byte 0x00610069
	.4byte 0x00720065
	.4byte 0x00000000
.endobj lbl_8165E818

# .data:0x484 | 0x8165E8A4 | size: 0x28
.obj jumptable_8165E8A4, local
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_814300CC
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_814300E8
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_81430104
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_814301D4
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_81430120
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_8143013C
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_81430174
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_81430158
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_81430234
	.rel setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language, .L_81430250
.endobj jumptable_8165E8A4

# .data:0x4AC | 0x8165E8CC | size: 0x24
.obj jumptable_8165E8CC, local
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814306D4
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814306F8
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81430760
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8143073C
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814307A4
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814307E8
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814307E8
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814307E8
	.rel onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81430760
.endobj jumptable_8165E8CC

# .data:0x4D0 | 0x8165E8F0 | size: 0x28
# textinput::predictlang::ChangeButtonAnmPane::__vtable
.obj __vt__Q39textinput11predictlang19ChangeButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput11predictlang7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11predictlang19ChangeButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput11predictlang7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput11predictlang19ChangeButtonAnmPaneFv
	.4byte getKeyType__Q39textinput11predictlang7AnmPaneCFv
.endobj __vt__Q39textinput11predictlang19ChangeButtonAnmPane

# .data:0x4F8 | 0x8165E918 | size: 0x28
# textinput::predictlang::NormalButtonAnmPane::__vtable
.obj __vt__Q39textinput11predictlang19NormalButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput11predictlang7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11predictlang19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput11predictlang7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput11predictlang19NormalButtonAnmPaneFv
	.4byte getKeyType__Q39textinput11predictlang7AnmPaneCFv
.endobj __vt__Q39textinput11predictlang19NormalButtonAnmPane

# .data:0x520 | 0x8165E940 | size: 0x28
# textinput::predictlang::WholeAnmPane::__vtable
.obj __vt__Q39textinput11predictlang12WholeAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput11predictlang7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11predictlang12WholeAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput11predictlang7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput11predictlang12WholeAnmPaneFv
	.4byte getKeyType__Q39textinput11predictlang7AnmPaneCFv
.endobj __vt__Q39textinput11predictlang12WholeAnmPane

# .data:0x548 | 0x8165E968 | size: 0x28
# textinput::predictlang::AnmPane::__vtable
.obj __vt__Q39textinput11predictlang7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput11predictlang7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput11predictlang7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput11predictlang7AnmPaneFv
	.4byte getKeyType__Q39textinput11predictlang7AnmPaneCFv
.endobj __vt__Q39textinput11predictlang7AnmPane

# .data:0x570 | 0x8165E990 | size: 0x20
# textinput::predictlang::EventHandler::__vtable
.obj __vt__Q39textinput11predictlang12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput11predictlang12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q39textinput11predictlang12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q39textinput11predictlang12EventHandler

# .data:0x590 | 0x8165E9B0 | size: 0xF8
# textinput::predictlang::LayoutByNW4R::__vtable
.obj __vt__Q39textinput11predictlang12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte create__Q39textinput11predictlang12LayoutByNW4RFP12MEMAllocator
	.4byte init__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q29textinput13CommandSenderFUlPv
	.4byte setPredictMode__Q39textinput11predictlang4BaseFQ49textinput9inputform4Base11PredictMode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@28@__dt__Q39textinput11predictlang12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@28@init__Q39textinput11predictlang12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@28@draw__Q39textinput11predictlang12LayoutByNW4RFv"
	.4byte calc__Q39textinput11nw4rmanager6LayoutFv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
	.4byte setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
	.4byte setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv
	.4byte setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane
	.4byte initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv
	.4byte setVisible__Q39textinput11nw4rmanager6LayoutFPCcb
	.4byte isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb
	.4byte setString__Q39textinput11nw4rmanager6LayoutFPCcPCw
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFw
	.4byte getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34
	.4byte createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@196@onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"
	.4byte draw__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte open__Q39textinput11predictlang12LayoutByNW4RFQ49textinput9inputform4Base11PredictModePQ39textinput8keyboard12KeyboardBase
	.4byte endToOpen__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte startToClose__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte endToClose__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte isActive__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte canBeInputed__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte onChangeAnmState__Q39textinput11predictlang12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
	.4byte setAllButtonToggleOffWithout__Q39textinput11predictlang12LayoutByNW4RFPCc
	.4byte setAllButtonNormal__Q39textinput11predictlang12LayoutByNW4RFv
	.4byte setDestination__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11Destination
	.4byte setLanguage__Q39textinput11predictlang12LayoutByNW4RFQ29textinput8Language
	.4byte changeDestination__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11Destination
	.4byte getTargetAnmPane__Q39textinput11predictlang12LayoutByNW4RFQ29textinput11DestinationQ49textinput9inputform4Base11PredictMode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q39textinput11predictlang12LayoutByNW4R

# 0x816973F8..0x81697400 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816973F8 | size: 0x4
.obj lbl_816973F8, global
	.4byte lbl_8165E420
.endobj lbl_816973F8

# .sdata:0x4 | 0x816973FC | size: 0x4
.obj gap_11_816973FC_sdata, global
.hidden gap_11_816973FC_sdata
	.4byte 0x00000000
.endobj gap_11_816973FC_sdata
