.include "macros.inc"
.file "iplSceneManager.cpp"

# 0x8140A4F8..0x8140B208 | size: 0xD10
.text
.balign 4

# .text:0x0 | 0x8140A4F8 | size: 0x48
# ipl::scene::Command::clear()
.fn clear__Q33ipl5scene7CommandFv, global
/* 8140A4F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A4FC | 7C 08 02 A6 */	mflr r0
/* 8140A500 | 38 80 00 00 */	li r4, 0x0
/* 8140A504 | 38 A0 00 1C */	li r5, 0x1c
/* 8140A508 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A50C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140A510 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A514 | 4B F2 5E 21 */	bl memset
/* 8140A518 | 38 00 00 00 */	li r0, 0x0
/* 8140A51C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8140A520 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8140A524 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8140A528 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8140A52C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140A530 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140A534 | 7C 08 03 A6 */	mtlr r0
/* 8140A538 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140A53C | 4E 80 00 20 */	blr
.endfn clear__Q33ipl5scene7CommandFv

# .text:0x48 | 0x8140A540 | size: 0x10C
# ipl::scene::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl5scene7ManagerFPQ23EGG4Heap, global
/* 8140A540 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140A544 | 7C 08 02 A6 */	mflr r0
/* 8140A548 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140A54C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140A550 | 48 1E EF 75 */	bl _savegpr_28
/* 8140A554 | 38 00 00 00 */	li r0, 0x0
/* 8140A558 | 7C 7C 1B 78 */	mr r28, r3
/* 8140A55C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8140A560 | 7C 9D 23 78 */	mr r29, r4
/* 8140A564 | 3B E3 00 10 */	addi r31, r3, 0x10
/* 8140A568 | 3B C3 00 F0 */	addi r30, r3, 0xf0
.L_8140A56C:
/* 8140A56C | 7F E3 FB 78 */	mr r3, r31
/* 8140A570 | 4B FF FF 89 */	bl clear__Q33ipl5scene7CommandFv
/* 8140A574 | 3B FF 00 1C */	addi r31, r31, 0x1c
/* 8140A578 | 7C 1F F0 40 */	cmplw r31, r30
/* 8140A57C | 41 80 FF F0 */	blt .L_8140A56C
/* 8140A580 | 3B C0 00 00 */	li r30, 0x0
/* 8140A584 | 38 00 00 08 */	li r0, 0x8
/* 8140A588 | 90 1C 00 F0 */	stw r0, 0xf0(r28)
/* 8140A58C | 38 7C 01 08 */	addi r3, r28, 0x108
/* 8140A590 | 93 DC 00 F4 */	stw r30, 0xf4(r28)
/* 8140A594 | 93 DC 00 F8 */	stw r30, 0xf8(r28)
/* 8140A598 | 93 DC 00 FC */	stw r30, 0xfc(r28)
/* 8140A59C | 93 DC 01 04 */	stw r30, 0x104(r28)
/* 8140A5A0 | 4B FF FF 59 */	bl clear__Q33ipl5scene7CommandFv
/* 8140A5A4 | 3F E0 00 13 */	lis r31, 0x13
/* 8140A5A8 | 9B DC 01 24 */	stb r30, 0x124(r28)
/* 8140A5AC | 38 80 00 03 */	li r4, 0x3
/* 8140A5B0 | 38 A0 00 04 */	li r5, 0x4
/* 8140A5B4 | 9B DC 01 25 */	stb r30, 0x125(r28)
/* 8140A5B8 | 38 7F C0 00 */	subi r3, r31, 0x4000
/* 8140A5BC | 48 1E E6 AD */	bl fn_815F8C68
/* 8140A5C0 | 7F A5 EB 78 */	mr r5, r29
/* 8140A5C4 | 38 9F C0 00 */	subi r4, r31, 0x4000
/* 8140A5C8 | 38 C0 00 04 */	li r6, 0x4
/* 8140A5CC | 38 E0 00 02 */	li r7, 0x2
/* 8140A5D0 | 48 1E E4 F5 */	bl fn_815F8AC4
/* 8140A5D4 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 8140A5D8 | 3F E0 00 0B */	lis r31, 0xb
/* 8140A5DC | 38 7F F0 00 */	subi r3, r31, 0x1000
/* 8140A5E0 | 38 80 00 04 */	li r4, 0x4
/* 8140A5E4 | 38 A0 00 04 */	li r5, 0x4
/* 8140A5E8 | 48 1E E6 81 */	bl fn_815F8C68
/* 8140A5EC | 7F A5 EB 78 */	mr r5, r29
/* 8140A5F0 | 38 9F F0 00 */	subi r4, r31, 0x1000
/* 8140A5F4 | 38 C0 00 04 */	li r6, 0x4
/* 8140A5F8 | 38 E0 00 02 */	li r7, 0x2
/* 8140A5FC | 48 1E E4 C9 */	bl fn_815F8AC4
/* 8140A600 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 8140A604 | 3F E0 00 01 */	lis r31, 0x1
/* 8140A608 | 38 7F DC 00 */	subi r3, r31, 0x2400
/* 8140A60C | 38 80 00 06 */	li r4, 0x6
/* 8140A610 | 38 A0 00 04 */	li r5, 0x4
/* 8140A614 | 48 1E E6 55 */	bl fn_815F8C68
/* 8140A618 | 7F A5 EB 78 */	mr r5, r29
/* 8140A61C | 38 9F DC 00 */	subi r4, r31, 0x2400
/* 8140A620 | 38 C0 00 04 */	li r6, 0x4
/* 8140A624 | 38 E0 00 02 */	li r7, 0x2
/* 8140A628 | 48 1E E4 9D */	bl fn_815F8AC4
/* 8140A62C | 90 7C 00 08 */	stw r3, 0x8(r28)
/* 8140A630 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140A634 | 7F 83 E3 78 */	mr r3, r28
/* 8140A638 | 48 1E EE D9 */	bl _restgpr_28
/* 8140A63C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140A640 | 7C 08 03 A6 */	mtlr r0
/* 8140A644 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140A648 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene7ManagerFPQ23EGG4Heap

# .text:0x154 | 0x8140A64C | size: 0x64
# ipl::scene::Manager::init()
.fn init__Q33ipl5scene7ManagerFv, global
/* 8140A64C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140A650 | 7C 08 02 A6 */	mflr r0
/* 8140A654 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140A658 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140A65C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140A660 | 3B E0 00 00 */	li r31, 0x0
/* 8140A664 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8140A668 | 7C 7E 1B 78 */	mr r30, r3
/* 8140A66C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8140A670 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140A674 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8140A678 | 4B FD 02 85 */	bl proc_boot_scene__Q33ipl5scene9RootSceneFPiPi
/* 8140A67C | 93 FE 01 2C */	stw r31, 0x12c(r30)
/* 8140A680 | 7F C3 F3 78 */	mr r3, r30
/* 8140A684 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140A688 | 90 1E 01 28 */	stw r0, 0x128(r30)
/* 8140A68C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140A690 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8140A694 | 48 00 00 1D */	bl createRootScene__Q33ipl5scene7ManagerFiPv
/* 8140A698 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140A69C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140A6A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8140A6A4 | 7C 08 03 A6 */	mtlr r0
/* 8140A6A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140A6AC | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene7ManagerFv

# .text:0x1B8 | 0x8140A6B0 | size: 0x6C
# ipl::scene::Manager::createRootScene(int, void*)
.fn createRootScene__Q33ipl5scene7ManagerFiPv, global
/* 8140A6B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A6B4 | 7C 08 02 A6 */	mflr r0
/* 8140A6B8 | 7C 86 23 78 */	mr r6, r4
/* 8140A6BC | 38 80 00 01 */	li r4, 0x1
/* 8140A6C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A6C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140A6C8 | 7C BF 2B 78 */	mr r31, r5
/* 8140A6CC | 38 A0 00 00 */	li r5, 0x0
/* 8140A6D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140A6D4 | 7C 7E 1B 78 */	mr r30, r3
/* 8140A6D8 | 48 00 07 19 */	bl createScene__Q33ipl5scene7ManagerFiiPv
/* 8140A6DC | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 8140A6E0 | 93 E3 00 54 */	stw r31, 0x54(r3)
/* 8140A6E4 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8140A6E8 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8140A6EC | 4B F2 97 3D */	bl setCurrentHeap__Q23ipl6SystemFPQ23EGG4Heap
/* 8140A6F0 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8140A6F4 | 4B FF F6 19 */	bl do_create__Q33ipl5scene4BaseFv
/* 8140A6F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140A6FC | 80 63 90 08 */	lwz r3, smArg__Q23ipl6System@l(r3)
/* 8140A700 | 48 1E D9 3D */	bl fn_815F803C
/* 8140A704 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140A708 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140A70C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140A710 | 7C 08 03 A6 */	mtlr r0
/* 8140A714 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140A718 | 4E 80 00 20 */	blr
.endfn createRootScene__Q33ipl5scene7ManagerFiPv

# .text:0x224 | 0x8140A71C | size: 0x130
# ipl::scene::Manager::calc()
.fn calc__Q33ipl5scene7ManagerFv, global
/* 8140A71C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A720 | 7C 08 02 A6 */	mflr r0
/* 8140A724 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A728 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140A72C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140A730 | 7C 7E 1B 78 */	mr r30, r3
/* 8140A734 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 8140A738 | 48 00 01 15 */	bl calc__Q33ipl5scene7ManagerFPQ33ipl5scene4Base
/* 8140A73C | 80 1E 01 04 */	lwz r0, 0x104(r30)
/* 8140A740 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140A744 | 41 82 00 1C */	beq .L_8140A760
/* 8140A748 | 88 1E 01 24 */	lbz r0, 0x124(r30)
/* 8140A74C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140A750 | 41 82 00 D8 */	beq .L_8140A828
/* 8140A754 | 7F C3 F3 78 */	mr r3, r30
/* 8140A758 | 48 00 08 29 */	bl attachReservedScene__Q33ipl5scene7ManagerFv
/* 8140A75C | 48 00 00 CC */	b .L_8140A828
.L_8140A760:
/* 8140A760 | 80 1E 00 F4 */	lwz r0, 0xf4(r30)
/* 8140A764 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140A768 | 41 82 00 C0 */	beq .L_8140A828
/* 8140A76C | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 8140A770 | 1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8140A774 | 7C 7E 02 14 */	add r3, r30, r0
/* 8140A778 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8140A77C | 3B E3 00 10 */	addi r31, r3, 0x10
/* 8140A780 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140A784 | 41 82 00 40 */	beq .L_8140A7C4
/* 8140A788 | 40 80 00 10 */	bge .L_8140A798
/* 8140A78C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140A790 | 40 80 00 14 */	bge .L_8140A7A4
/* 8140A794 | 48 00 00 94 */	b .L_8140A828
.L_8140A798:
/* 8140A798 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140A79C | 40 80 00 8C */	bge .L_8140A828
/* 8140A7A0 | 48 00 00 3C */	b .L_8140A7DC
.L_8140A7A4:
/* 8140A7A4 | 7F C3 F3 78 */	mr r3, r30
/* 8140A7A8 | 7F E4 FB 78 */	mr r4, r31
/* 8140A7AC | 48 00 05 B5 */	bl createScene__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command
/* 8140A7B0 | 38 00 00 01 */	li r0, 0x1
/* 8140A7B4 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8140A7B8 | 98 1E 01 24 */	stb r0, 0x124(r30)
/* 8140A7BC | 48 00 0A 01 */	bl "pop__Q33ipl7utility29Queue<Q33ipl5scene7Command,8>Fv"
/* 8140A7C0 | 48 00 00 68 */	b .L_8140A828
.L_8140A7C4:
/* 8140A7C4 | 7F C3 F3 78 */	mr r3, r30
/* 8140A7C8 | 7F E4 FB 78 */	mr r4, r31
/* 8140A7CC | 48 00 05 95 */	bl createScene__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command
/* 8140A7D0 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8140A7D4 | 48 00 09 E9 */	bl "pop__Q33ipl7utility29Queue<Q33ipl5scene7Command,8>Fv"
/* 8140A7D8 | 48 00 00 50 */	b .L_8140A828
.L_8140A7DC:
/* 8140A7DC | 88 1E 01 25 */	lbz r0, 0x125(r30)
/* 8140A7E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140A7E4 | 41 82 00 44 */	beq .L_8140A828
/* 8140A7E8 | 80 1E 01 28 */	lwz r0, 0x128(r30)
/* 8140A7EC | 7F C3 F3 78 */	mr r3, r30
/* 8140A7F0 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8140A7F4 | 90 1E 01 2C */	stw r0, 0x12c(r30)
/* 8140A7F8 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8140A7FC | 90 1E 01 28 */	stw r0, 0x128(r30)
/* 8140A800 | 48 00 06 E9 */	bl destroyScene__Q33ipl5scene7ManagerFPQ33ipl5scene4Base
/* 8140A804 | 4B F2 B0 1D */	bl reinit__Q23ipl6SystemFv
/* 8140A808 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8140A80C | 7F C3 F3 78 */	mr r3, r30
/* 8140A810 | 80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8140A814 | 4B FF FE 9D */	bl createRootScene__Q33ipl5scene7ManagerFiPv
/* 8140A818 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8140A81C | 48 00 09 A1 */	bl "pop__Q33ipl7utility29Queue<Q33ipl5scene7Command,8>Fv"
/* 8140A820 | 38 00 00 00 */	li r0, 0x0
/* 8140A824 | 98 1E 01 25 */	stb r0, 0x125(r30)
.L_8140A828:
/* 8140A828 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8140A82C | 7F C3 F3 78 */	mr r3, r30
/* 8140A830 | 48 00 03 59 */	bl detach__Q33ipl5scene7ManagerFPQ33ipl5scene4Base
/* 8140A834 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140A838 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140A83C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140A840 | 7C 08 03 A6 */	mtlr r0
/* 8140A844 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140A848 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene7ManagerFv

# .text:0x354 | 0x8140A84C | size: 0x48
# ipl::scene::Manager::calc(ipl::scene::Base*)
.fn calc__Q33ipl5scene7ManagerFPQ33ipl5scene4Base, global
/* 8140A84C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A850 | 7C 08 02 A6 */	mflr r0
/* 8140A854 | 3C 60 81 66 */	lis r3, __vt__Q43ipl5scene4Base8iterator@ha
/* 8140A858 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A85C | 38 63 89 14 */	addi r3, r3, __vt__Q43ipl5scene4Base8iterator@l
/* 8140A860 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140A864 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8140A868 | 48 00 00 10 */	b .L_8140A878
.L_8140A86C:
/* 8140A86C | 4B FF F4 E5 */	bl do_calc__Q33ipl5scene4BaseFv
/* 8140A870 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140A874 | 48 00 00 29 */	bl __pp__Q43ipl7utility4Tree8iteratorFv
.L_8140A878:
/* 8140A878 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140A87C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A880 | 40 82 FF EC */	bne .L_8140A86C
/* 8140A884 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140A888 | 7C 08 03 A6 */	mtlr r0
/* 8140A88C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140A890 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene7ManagerFPQ33ipl5scene4Base

# .text:0x39C | 0x8140A894 | size: 0x8
# ipl::scene::Base::iterator::operator*()
.fn __ml__Q43ipl5scene4Base8iteratorFv, global
/* 8140A894 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140A898 | 4E 80 00 20 */	blr
.endfn __ml__Q43ipl5scene4Base8iteratorFv

# .text:0x3A4 | 0x8140A89C | size: 0xF4
# ipl::utility::Tree::iterator::operator++()
.fn __pp__Q43ipl7utility4Tree8iteratorFv, global
/* 8140A89C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A8A0 | 7C 08 02 A6 */	mflr r0
/* 8140A8A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A8A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140A8AC | 7C 7F 1B 78 */	mr r31, r3
/* 8140A8B0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140A8B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A8B8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140A8BC | 7D 89 03 A6 */	mtctr r12
/* 8140A8C0 | 4E 80 04 21 */	bctrl
/* 8140A8C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A8C8 | 41 82 00 20 */	beq .L_8140A8E8
/* 8140A8CC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140A8D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A8D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140A8D8 | 7D 89 03 A6 */	mtctr r12
/* 8140A8DC | 4E 80 04 21 */	bctrl
/* 8140A8E0 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8140A8E4 | 48 00 00 98 */	b .L_8140A97C
.L_8140A8E8:
/* 8140A8E8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140A8EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A8F0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140A8F4 | 7D 89 03 A6 */	mtctr r12
/* 8140A8F8 | 4E 80 04 21 */	bctrl
/* 8140A8FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A900 | 41 82 00 5C */	beq .L_8140A95C
/* 8140A904 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140A908 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A90C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140A910 | 7D 89 03 A6 */	mtctr r12
/* 8140A914 | 4E 80 04 21 */	bctrl
/* 8140A918 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8140A91C | 48 00 00 60 */	b .L_8140A97C
/* 8140A920 | 48 00 00 3C */	b .L_8140A95C
.L_8140A924:
/* 8140A924 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140A928 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A92C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140A930 | 7D 89 03 A6 */	mtctr r12
/* 8140A934 | 4E 80 04 21 */	bctrl
/* 8140A938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A93C | 41 82 00 20 */	beq .L_8140A95C
/* 8140A940 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140A944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A948 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140A94C | 7D 89 03 A6 */	mtctr r12
/* 8140A950 | 4E 80 04 21 */	bctrl
/* 8140A954 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8140A958 | 48 00 00 24 */	b .L_8140A97C
.L_8140A95C:
/* 8140A95C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140A960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140A964 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8140A968 | 7D 89 03 A6 */	mtctr r12
/* 8140A96C | 4E 80 04 21 */	bctrl
/* 8140A970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A974 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8140A978 | 40 82 FF AC */	bne .L_8140A924
.L_8140A97C:
/* 8140A97C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140A980 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140A984 | 7C 08 03 A6 */	mtlr r0
/* 8140A988 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140A98C | 4E 80 00 20 */	blr
.endfn __pp__Q43ipl7utility4Tree8iteratorFv

# .text:0x498 | 0x8140A990 | size: 0x58
# ipl::scene::Manager::draw()
.fn draw__Q33ipl5scene7ManagerFv, global
/* 8140A990 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A994 | 7C 08 02 A6 */	mflr r0
/* 8140A998 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A99C | 38 00 00 00 */	li r0, 0x0
/* 8140A9A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140A9A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A9A8 | 90 03 01 00 */	stw r0, 0x100(r3)
/* 8140A9AC | 48 00 00 1C */	b .L_8140A9C8
.L_8140A9B0:
/* 8140A9B0 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8140A9B4 | 7F E3 FB 78 */	mr r3, r31
/* 8140A9B8 | 48 00 00 31 */	bl draw__Q33ipl5scene7ManagerFPQ33ipl5scene4Base
/* 8140A9BC | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8140A9C0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140A9C4 | 90 1F 01 00 */	stw r0, 0x100(r31)
.L_8140A9C8:
/* 8140A9C8 | 80 1F 01 00 */	lwz r0, 0x100(r31)
/* 8140A9CC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8140A9D0 | 41 80 FF E0 */	blt .L_8140A9B0
/* 8140A9D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140A9D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140A9DC | 7C 08 03 A6 */	mtlr r0
/* 8140A9E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140A9E4 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene7ManagerFv

# .text:0x4F0 | 0x8140A9E8 | size: 0x48
# ipl::scene::Manager::draw(ipl::scene::Base*)
.fn draw__Q33ipl5scene7ManagerFPQ33ipl5scene4Base, global
/* 8140A9E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140A9EC | 7C 08 02 A6 */	mflr r0
/* 8140A9F0 | 3C 60 81 66 */	lis r3, __vt__Q43ipl5scene4Base8iterator@ha
/* 8140A9F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140A9F8 | 38 63 89 14 */	addi r3, r3, __vt__Q43ipl5scene4Base8iterator@l
/* 8140A9FC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140AA00 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8140AA04 | 48 00 00 10 */	b .L_8140AA14
.L_8140AA08:
/* 8140AA08 | 4B FF F3 B5 */	bl do_draw__Q33ipl5scene4BaseFv
/* 8140AA0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140AA10 | 4B FF FE 8D */	bl __pp__Q43ipl7utility4Tree8iteratorFv
.L_8140AA14:
/* 8140AA14 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140AA18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AA1C | 40 82 FF EC */	bne .L_8140AA08
/* 8140AA20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AA24 | 7C 08 03 A6 */	mtlr r0
/* 8140AA28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140AA2C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene7ManagerFPQ33ipl5scene4Base

# .text:0x538 | 0x8140AA30 | size: 0x7C
# ipl::scene::Manager::isResetAcceptable()
.fn isResetAcceptable__Q33ipl5scene7ManagerFv, global
/* 8140AA30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AA34 | 7C 08 02 A6 */	mflr r0
/* 8140AA38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AA3C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8140AA40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140AA44 | 40 82 00 0C */	bne .L_8140AA50
/* 8140AA48 | 38 60 00 01 */	li r3, 0x1
/* 8140AA4C | 48 00 00 50 */	b .L_8140AA9C
.L_8140AA50:
/* 8140AA50 | 3C 60 81 66 */	lis r3, __vt__Q43ipl5scene4Base8iterator@ha
/* 8140AA54 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140AA58 | 38 63 89 14 */	addi r3, r3, __vt__Q43ipl5scene4Base8iterator@l
/* 8140AA5C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8140AA60 | 48 00 00 2C */	b .L_8140AA8C
.L_8140AA64:
/* 8140AA64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AA68 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8140AA6C | 7D 89 03 A6 */	mtctr r12
/* 8140AA70 | 4E 80 04 21 */	bctrl
/* 8140AA74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AA78 | 40 82 00 0C */	bne .L_8140AA84
/* 8140AA7C | 38 60 00 00 */	li r3, 0x0
/* 8140AA80 | 48 00 00 1C */	b .L_8140AA9C
.L_8140AA84:
/* 8140AA84 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140AA88 | 4B FF FE 15 */	bl __pp__Q43ipl7utility4Tree8iteratorFv
.L_8140AA8C:
/* 8140AA8C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140AA90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AA94 | 40 82 FF D0 */	bne .L_8140AA64
/* 8140AA98 | 38 60 00 01 */	li r3, 0x1
.L_8140AA9C:
/* 8140AA9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AAA0 | 7C 08 03 A6 */	mtlr r0
/* 8140AAA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140AAA8 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene7ManagerFv

# .text:0x5B4 | 0x8140AAAC | size: 0x60
# ipl::scene::Manager::startResetting()
.fn startResetting__Q33ipl5scene7ManagerFv, global
/* 8140AAAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AAB0 | 7C 08 02 A6 */	mflr r0
/* 8140AAB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AAB8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8140AABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140AAC0 | 41 82 00 3C */	beq .L_8140AAFC
/* 8140AAC4 | 3C 60 81 66 */	lis r3, __vt__Q43ipl5scene4Base8iterator@ha
/* 8140AAC8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140AACC | 38 63 89 14 */	addi r3, r3, __vt__Q43ipl5scene4Base8iterator@l
/* 8140AAD0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8140AAD4 | 48 00 00 1C */	b .L_8140AAF0
.L_8140AAD8:
/* 8140AAD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AADC | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8140AAE0 | 7D 89 03 A6 */	mtctr r12
/* 8140AAE4 | 4E 80 04 21 */	bctrl
/* 8140AAE8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140AAEC | 4B FF FD B1 */	bl __pp__Q43ipl7utility4Tree8iteratorFv
.L_8140AAF0:
/* 8140AAF0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140AAF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AAF8 | 40 82 FF E0 */	bne .L_8140AAD8
.L_8140AAFC:
/* 8140AAFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AB00 | 7C 08 03 A6 */	mtlr r0
/* 8140AB04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140AB08 | 4E 80 00 20 */	blr
.endfn startResetting__Q33ipl5scene7ManagerFv

# .text:0x614 | 0x8140AB0C | size: 0x7C
# ipl::scene::Manager::isResetProcessDone()
.fn isResetProcessDone__Q33ipl5scene7ManagerFv, global
/* 8140AB0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AB10 | 7C 08 02 A6 */	mflr r0
/* 8140AB14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AB18 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8140AB1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140AB20 | 40 82 00 0C */	bne .L_8140AB2C
/* 8140AB24 | 38 60 00 01 */	li r3, 0x1
/* 8140AB28 | 48 00 00 50 */	b .L_8140AB78
.L_8140AB2C:
/* 8140AB2C | 3C 60 81 66 */	lis r3, __vt__Q43ipl5scene4Base8iterator@ha
/* 8140AB30 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140AB34 | 38 63 89 14 */	addi r3, r3, __vt__Q43ipl5scene4Base8iterator@l
/* 8140AB38 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8140AB3C | 48 00 00 2C */	b .L_8140AB68
.L_8140AB40:
/* 8140AB40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AB44 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8140AB48 | 7D 89 03 A6 */	mtctr r12
/* 8140AB4C | 4E 80 04 21 */	bctrl
/* 8140AB50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AB54 | 40 82 00 0C */	bne .L_8140AB60
/* 8140AB58 | 38 60 00 00 */	li r3, 0x0
/* 8140AB5C | 48 00 00 1C */	b .L_8140AB78
.L_8140AB60:
/* 8140AB60 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140AB64 | 4B FF FD 39 */	bl __pp__Q43ipl7utility4Tree8iteratorFv
.L_8140AB68:
/* 8140AB68 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140AB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AB70 | 40 82 FF D0 */	bne .L_8140AB40
/* 8140AB74 | 38 60 00 01 */	li r3, 0x1
.L_8140AB78:
/* 8140AB78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AB7C | 7C 08 03 A6 */	mtlr r0
/* 8140AB80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140AB84 | 4E 80 00 20 */	blr
.endfn isResetProcessDone__Q33ipl5scene7ManagerFv

# .text:0x690 | 0x8140AB88 | size: 0xEC
# ipl::scene::Manager::detach(ipl::scene::Base*)
.fn detach__Q33ipl5scene7ManagerFPQ33ipl5scene4Base, global
/* 8140AB88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140AB8C | 7C 08 02 A6 */	mflr r0
/* 8140AB90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140AB94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140AB98 | 7C 9F 23 78 */	mr r31, r4
/* 8140AB9C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8140ABA0 | 7C 7E 1B 78 */	mr r30, r3
/* 8140ABA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8140ABA8 | 48 00 00 CD */	bl __ct__Q43ipl5scene4Base16reverse_iteratorFPQ33ipl5scene4Base
/* 8140ABAC | 7F E4 FB 78 */	mr r4, r31
/* 8140ABB0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140ABB4 | 48 00 00 C1 */	bl __ct__Q43ipl5scene4Base16reverse_iteratorFPQ33ipl5scene4Base
/* 8140ABB8 | 3B E0 00 01 */	li r31, 0x1
/* 8140ABBC | 48 00 00 94 */	b .L_8140AC50
.L_8140ABC0:
/* 8140ABC0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140ABC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140ABC8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8140ABCC | 7D 89 03 A6 */	mtctr r12
/* 8140ABD0 | 4E 80 04 21 */	bctrl
/* 8140ABD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140ABD8 | 41 82 00 28 */	beq .L_8140AC00
/* 8140ABDC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140ABE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140ABE4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8140ABE8 | 7D 89 03 A6 */	mtctr r12
/* 8140ABEC | 4E 80 04 21 */	bctrl
/* 8140ABF0 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140ABF4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140ABF8 | 48 00 00 C9 */	bl reverse__Q43ipl7utility4Tree16reverse_iteratorFv
/* 8140ABFC | 48 00 00 1C */	b .L_8140AC18
.L_8140AC00:
/* 8140AC00 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140AC04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AC08 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8140AC0C | 7D 89 03 A6 */	mtctr r12
/* 8140AC10 | 4E 80 04 21 */	bctrl
/* 8140AC14 | 90 61 00 0C */	stw r3, 0xc(r1)
.L_8140AC18:
/* 8140AC18 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8140AC1C | 80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8140AC20 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8140AC24 | 41 82 00 24 */	beq .L_8140AC48
/* 8140AC28 | 80 7E 01 10 */	lwz r3, 0x110(r30)
/* 8140AC2C | 80 04 00 30 */	lwz r0, 0x30(r4)
/* 8140AC30 | 7C 03 00 00 */	cmpw r3, r0
/* 8140AC34 | 40 82 00 08 */	bne .L_8140AC3C
/* 8140AC38 | 9B FE 01 24 */	stb r31, 0x124(r30)
.L_8140AC3C:
/* 8140AC3C | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8140AC40 | 7F C3 F3 78 */	mr r3, r30
/* 8140AC44 | 48 00 02 A5 */	bl destroyScene__Q33ipl5scene7ManagerFPQ33ipl5scene4Base
.L_8140AC48:
/* 8140AC48 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140AC4C | 90 01 00 14 */	stw r0, 0x14(r1)
.L_8140AC50:
/* 8140AC50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AC54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140AC58 | 40 82 FF 68 */	bne .L_8140ABC0
/* 8140AC5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140AC60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140AC64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8140AC68 | 7C 08 03 A6 */	mtlr r0
/* 8140AC6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140AC70 | 4E 80 00 20 */	blr
.endfn detach__Q33ipl5scene7ManagerFPQ33ipl5scene4Base

# .text:0x77C | 0x8140AC74 | size: 0x4C
# ipl::scene::Base::reverse_iterator::reverse_iterator(ipl::scene::Base*)
.fn __ct__Q43ipl5scene4Base16reverse_iteratorFPQ33ipl5scene4Base, global
/* 8140AC74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AC78 | 7C 08 02 A6 */	mflr r0
/* 8140AC7C | 3C A0 81 66 */	lis r5, __vt__Q43ipl7utility4Tree16reverse_iterator@ha
/* 8140AC80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AC84 | 38 A5 89 20 */	addi r5, r5, __vt__Q43ipl7utility4Tree16reverse_iterator@l
/* 8140AC88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140AC8C | 7C 7F 1B 78 */	mr r31, r3
/* 8140AC90 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8140AC94 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8140AC98 | 48 00 00 29 */	bl reverse__Q43ipl7utility4Tree16reverse_iteratorFv
/* 8140AC9C | 3C 80 81 66 */	lis r4, __vt__Q43ipl5scene4Base16reverse_iterator@ha
/* 8140ACA0 | 7F E3 FB 78 */	mr r3, r31
/* 8140ACA4 | 38 84 89 08 */	addi r4, r4, __vt__Q43ipl5scene4Base16reverse_iterator@l
/* 8140ACA8 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 8140ACAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140ACB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140ACB4 | 7C 08 03 A6 */	mtlr r0
/* 8140ACB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140ACBC | 4E 80 00 20 */	blr
.endfn __ct__Q43ipl5scene4Base16reverse_iteratorFPQ33ipl5scene4Base

# .text:0x7C8 | 0x8140ACC0 | size: 0x98
# ipl::utility::Tree::reverse_iterator::reverse()
.fn reverse__Q43ipl7utility4Tree16reverse_iteratorFv, global
/* 8140ACC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140ACC4 | 7C 08 02 A6 */	mflr r0
/* 8140ACC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140ACCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140ACD0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140ACD4 | 48 00 00 54 */	b .L_8140AD28
.L_8140ACD8:
/* 8140ACD8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140ACDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140ACE0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140ACE4 | 7D 89 03 A6 */	mtctr r12
/* 8140ACE8 | 4E 80 04 21 */	bctrl
/* 8140ACEC | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8140ACF0 | 48 00 00 1C */	b .L_8140AD0C
.L_8140ACF4:
/* 8140ACF4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140ACF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140ACFC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140AD00 | 7D 89 03 A6 */	mtctr r12
/* 8140AD04 | 4E 80 04 21 */	bctrl
/* 8140AD08 | 90 7F 00 04 */	stw r3, 0x4(r31)
.L_8140AD0C:
/* 8140AD0C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140AD10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AD14 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140AD18 | 7D 89 03 A6 */	mtctr r12
/* 8140AD1C | 4E 80 04 21 */	bctrl
/* 8140AD20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AD24 | 40 82 FF D0 */	bne .L_8140ACF4
.L_8140AD28:
/* 8140AD28 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140AD2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AD30 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140AD34 | 7D 89 03 A6 */	mtctr r12
/* 8140AD38 | 4E 80 04 21 */	bctrl
/* 8140AD3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AD40 | 40 82 FF 98 */	bne .L_8140ACD8
/* 8140AD44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AD48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140AD4C | 7C 08 03 A6 */	mtlr r0
/* 8140AD50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140AD54 | 4E 80 00 20 */	blr
.endfn reverse__Q43ipl7utility4Tree16reverse_iteratorFv

# .text:0x860 | 0x8140AD58 | size: 0x8
# ipl::scene::Base::reverse_iterator::operator*()
.fn __ml__Q43ipl5scene4Base16reverse_iteratorFv, global
/* 8140AD58 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140AD5C | 4E 80 00 20 */	blr
.endfn __ml__Q43ipl5scene4Base16reverse_iteratorFv

# .text:0x868 | 0x8140AD60 | size: 0x90
# ipl::scene::Manager::createScene(const ipl::scene::Command&)
.fn createScene__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command, global
/* 8140AD60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AD64 | 7C 08 02 A6 */	mflr r0
/* 8140AD68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AD6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140AD70 | 7C 9F 23 78 */	mr r31, r4
/* 8140AD74 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140AD78 | 7C 7E 1B 78 */	mr r30, r3
/* 8140AD7C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8140AD80 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 8140AD84 | 80 DF 00 18 */	lwz r6, 0x18(r31)
/* 8140AD88 | 48 00 00 69 */	bl createScene__Q33ipl5scene7ManagerFiiPv
/* 8140AD8C | 38 00 00 03 */	li r0, 0x3
/* 8140AD90 | 90 7E 01 04 */	stw r3, 0x104(r30)
/* 8140AD94 | 38 BE 01 04 */	addi r5, r30, 0x104
/* 8140AD98 | 38 9F FF FC */	subi r4, r31, 0x4
/* 8140AD9C | 7C 09 03 A6 */	mtctr r0
.L_8140ADA0:
/* 8140ADA0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140ADA4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8140ADA8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8140ADAC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8140ADB0 | 42 00 FF F0 */	bdnz .L_8140ADA0
/* 8140ADB4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8140ADB8 | 38 00 00 00 */	li r0, 0x0
/* 8140ADBC | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8140ADC0 | 98 1E 01 24 */	stb r0, 0x124(r30)
/* 8140ADC4 | 80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8140ADC8 | 4B FF EE F9 */	bl do_prepare__Q33ipl5scene4BaseFv
/* 8140ADCC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140ADD0 | 80 63 90 08 */	lwz r3, smArg__Q23ipl6System@l(r3)
/* 8140ADD4 | 48 1E D2 69 */	bl fn_815F803C
/* 8140ADD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140ADDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140ADE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140ADE4 | 7C 08 03 A6 */	mtlr r0
/* 8140ADE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140ADEC | 4E 80 00 20 */	blr
.endfn createScene__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command

# .text:0x8F8 | 0x8140ADF0 | size: 0xC4
# ipl::scene::Manager::createScene(int, int, void*)
.fn createScene__Q33ipl5scene7ManagerFiiPv, global
/* 8140ADF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140ADF4 | 7C 08 02 A6 */	mflr r0
/* 8140ADF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140ADFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140AE00 | 48 1E E6 C1 */	bl _savegpr_27
/* 8140AE04 | 7C 9C 23 78 */	mr r28, r4
/* 8140AE08 | 7C 7B 1B 78 */	mr r27, r3
/* 8140AE0C | 7C BD 2B 78 */	mr r29, r5
/* 8140AE10 | 7C DE 33 78 */	mr r30, r6
/* 8140AE14 | 7F 83 E3 78 */	mr r3, r28
/* 8140AE18 | 3B E0 00 00 */	li r31, 0x0
/* 8140AE1C | 4B FF F1 A9 */	bl size__Q33ipl5scene7CreatorFi
/* 8140AE20 | 3C 80 00 0B */	lis r4, 0xb
/* 8140AE24 | 38 04 F0 00 */	subi r0, r4, 0x1000
/* 8140AE28 | 7C 03 00 00 */	cmpw r3, r0
/* 8140AE2C | 41 82 00 38 */	beq .L_8140AE64
/* 8140AE30 | 40 80 00 18 */	bge .L_8140AE48
/* 8140AE34 | 3C 80 00 01 */	lis r4, 0x1
/* 8140AE38 | 38 04 DC 00 */	subi r0, r4, 0x2400
/* 8140AE3C | 7C 03 00 00 */	cmpw r3, r0
/* 8140AE40 | 41 82 00 2C */	beq .L_8140AE6C
/* 8140AE44 | 48 00 00 2C */	b .L_8140AE70
.L_8140AE48:
/* 8140AE48 | 3C 80 00 13 */	lis r4, 0x13
/* 8140AE4C | 38 04 C0 00 */	subi r0, r4, 0x4000
/* 8140AE50 | 7C 03 00 00 */	cmpw r3, r0
/* 8140AE54 | 41 82 00 08 */	beq .L_8140AE5C
/* 8140AE58 | 48 00 00 18 */	b .L_8140AE70
.L_8140AE5C:
/* 8140AE5C | 83 FB 00 00 */	lwz r31, 0x0(r27)
/* 8140AE60 | 48 00 00 10 */	b .L_8140AE70
.L_8140AE64:
/* 8140AE64 | 83 FB 00 04 */	lwz r31, 0x4(r27)
/* 8140AE68 | 48 00 00 08 */	b .L_8140AE70
.L_8140AE6C:
/* 8140AE6C | 83 FB 00 08 */	lwz r31, 0x8(r27)
.L_8140AE70:
/* 8140AE70 | 7F E4 FB 78 */	mr r4, r31
/* 8140AE74 | 38 A0 00 02 */	li r5, 0x2
/* 8140AE78 | 48 1E CB 6D */	bl fn_815F79E4
/* 8140AE7C | 7C 7F 1B 78 */	mr r31, r3
/* 8140AE80 | 4B F2 8F A9 */	bl setCurrentHeap__Q23ipl6SystemFPQ23EGG4Heap
/* 8140AE84 | 7F 83 E3 78 */	mr r3, r28
/* 8140AE88 | 7F E4 FB 78 */	mr r4, r31
/* 8140AE8C | 7F C5 F3 78 */	mr r5, r30
/* 8140AE90 | 4B FF F1 79 */	bl create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv
/* 8140AE94 | 93 83 00 30 */	stw r28, 0x30(r3)
/* 8140AE98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140AE9C | 93 A3 00 34 */	stw r29, 0x34(r3)
/* 8140AEA0 | 48 1E E6 6D */	bl _restgpr_27
/* 8140AEA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140AEA8 | 7C 08 03 A6 */	mtlr r0
/* 8140AEAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140AEB0 | 4E 80 00 20 */	blr
.endfn createScene__Q33ipl5scene7ManagerFiiPv

# .text:0x9BC | 0x8140AEB4 | size: 0xC
# ipl::scene::destruct_sync_task_(void*)
.fn destruct_sync_task___Q23ipl5sceneFPv, global
/* 8140AEB4 | 38 00 00 01 */	li r0, 0x1
/* 8140AEB8 | 98 03 01 25 */	stb r0, 0x125(r3)
/* 8140AEBC | 4E 80 00 20 */	blr
.endfn destruct_sync_task___Q23ipl5sceneFPv

# .text:0x9C8 | 0x8140AEC0 | size: 0x28
# ipl::scene::Manager::setDestructSync()
.fn setDestructSync__Q33ipl5scene7ManagerFv, global
/* 8140AEC0 | 38 00 00 00 */	li r0, 0x0
/* 8140AEC4 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8140AEC8 | 98 03 01 25 */	stb r0, 0x125(r3)
/* 8140AECC | 3C 80 81 41 */	lis r4, destruct_sync_task___Q23ipl5sceneFPv@ha
/* 8140AED0 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8140AED4 | 7C 65 1B 78 */	mr r5, r3
/* 8140AED8 | 80 66 00 D0 */	lwz r3, 0xd0(r6)
/* 8140AEDC | 38 84 AE B4 */	addi r4, r4, destruct_sync_task___Q23ipl5sceneFPv@l
/* 8140AEE0 | 38 C0 00 00 */	li r6, 0x0
/* 8140AEE4 | 48 1E D3 64 */	b fn_815F8248
.endfn setDestructSync__Q33ipl5scene7ManagerFv

# .text:0x9F0 | 0x8140AEE8 | size: 0x98
# ipl::scene::Manager::destroyScene(ipl::scene::Base*)
.fn destroyScene__Q33ipl5scene7ManagerFPQ33ipl5scene4Base, global
/* 8140AEE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AEEC | 7C 08 02 A6 */	mflr r0
/* 8140AEF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AEF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140AEF8 | 7C 9F 23 78 */	mr r31, r4
/* 8140AEFC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140AF00 | 7C 7E 1B 78 */	mr r30, r3
/* 8140AF04 | 48 00 00 24 */	b .L_8140AF28
.L_8140AF08:
/* 8140AF08 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140AF0C | 7F E3 FB 78 */	mr r3, r31
/* 8140AF10 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140AF14 | 7D 89 03 A6 */	mtctr r12
/* 8140AF18 | 4E 80 04 21 */	bctrl
/* 8140AF1C | 7C 64 1B 78 */	mr r4, r3
/* 8140AF20 | 7F C3 F3 78 */	mr r3, r30
/* 8140AF24 | 4B FF FF C5 */	bl destroyScene__Q33ipl5scene7ManagerFPQ33ipl5scene4Base
.L_8140AF28:
/* 8140AF28 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140AF2C | 7F E3 FB 78 */	mr r3, r31
/* 8140AF30 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140AF34 | 7D 89 03 A6 */	mtctr r12
/* 8140AF38 | 4E 80 04 21 */	bctrl
/* 8140AF3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AF40 | 40 82 FF C8 */	bne .L_8140AF08
/* 8140AF44 | 7F E3 FB 78 */	mr r3, r31
/* 8140AF48 | 4B FF EE E1 */	bl do_destroy__Q33ipl5scene4BaseFv
/* 8140AF4C | 7F E3 FB 78 */	mr r3, r31
/* 8140AF50 | 4B F5 78 55 */	bl detach__Q33ipl7utility4TreeFv
/* 8140AF54 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8140AF58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AF5C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8140AF60 | 7D 89 03 A6 */	mtctr r12
/* 8140AF64 | 4E 80 04 21 */	bctrl
/* 8140AF68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140AF6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140AF70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140AF74 | 7C 08 03 A6 */	mtlr r0
/* 8140AF78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140AF7C | 4E 80 00 20 */	blr
.endfn destroyScene__Q33ipl5scene7ManagerFPQ33ipl5scene4Base

# .text:0xA88 | 0x8140AF80 | size: 0xC8
# ipl::scene::Manager::attachReservedScene()
.fn attachReservedScene__Q33ipl5scene7ManagerFv, global
/* 8140AF80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140AF84 | 7C 08 02 A6 */	mflr r0
/* 8140AF88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140AF8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140AF90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140AF94 | 7C 7E 1B 78 */	mr r30, r3
/* 8140AF98 | 80 83 01 0C */	lwz r4, 0x10c(r3)
/* 8140AF9C | 48 00 01 35 */	bl isReady__Q33ipl5scene7ManagerFi
/* 8140AFA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AFA4 | 40 82 00 28 */	bne .L_8140AFCC
/* 8140AFA8 | 80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8140AFAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AFB0 | 41 82 00 80 */	beq .L_8140B030
/* 8140AFB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140AFB8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8140AFBC | 7D 89 03 A6 */	mtctr r12
/* 8140AFC0 | 4E 80 04 21 */	bctrl
/* 8140AFC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AFC8 | 41 82 00 68 */	beq .L_8140B030
.L_8140AFCC:
/* 8140AFCC | 80 7E 01 18 */	lwz r3, 0x118(r30)
/* 8140AFD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140AFD4 | 40 82 00 08 */	bne .L_8140AFDC
/* 8140AFD8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
.L_8140AFDC:
/* 8140AFDC | 80 BE 01 1C */	lwz r5, 0x11c(r30)
/* 8140AFE0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8140AFE4 | 41 82 00 10 */	beq .L_8140AFF4
/* 8140AFE8 | 80 9E 01 04 */	lwz r4, 0x104(r30)
/* 8140AFEC | 4B F5 77 81 */	bl insert__Q33ipl7utility4TreeFPQ33ipl7utility4TreePQ33ipl7utility4Tree
/* 8140AFF0 | 48 00 00 0C */	b .L_8140AFFC
.L_8140AFF4:
/* 8140AFF4 | 80 9E 01 04 */	lwz r4, 0x104(r30)
/* 8140AFF8 | 4B F5 77 39 */	bl attach__Q33ipl7utility4TreeFPQ33ipl7utility4Tree
.L_8140AFFC:
/* 8140AFFC | 80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8140B000 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8140B004 | 4B F2 8E 25 */	bl setCurrentHeap__Q23ipl6SystemFPQ23EGG4Heap
/* 8140B008 | 80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8140B00C | 4B FF ED 01 */	bl do_create__Q33ipl5scene4BaseFv
/* 8140B010 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140B014 | 80 63 90 08 */	lwz r3, smArg__Q23ipl6System@l(r3)
/* 8140B018 | 48 1E D0 25 */	bl fn_815F803C
/* 8140B01C | 3B E0 00 00 */	li r31, 0x0
/* 8140B020 | 38 7E 01 08 */	addi r3, r30, 0x108
/* 8140B024 | 93 FE 01 04 */	stw r31, 0x104(r30)
/* 8140B028 | 4B FF F4 D1 */	bl clear__Q33ipl5scene7CommandFv
/* 8140B02C | 9B FE 01 24 */	stb r31, 0x124(r30)
.L_8140B030:
/* 8140B030 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B034 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B038 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140B03C | 7C 08 03 A6 */	mtlr r0
/* 8140B040 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B044 | 4E 80 00 20 */	blr
.endfn attachReservedScene__Q33ipl5scene7ManagerFv

# .text:0xB50 | 0x8140B048 | size: 0x88
# ipl::scene::Manager::pushCommand(const ipl::scene::Command&)
.fn pushCommand__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command, global
/* 8140B048 | 80 A3 00 F0 */	lwz r5, 0xf0(r3)
/* 8140B04C | 80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8140B050 | 7C 05 00 00 */	cmpw r5, r0
/* 8140B054 | 40 82 00 0C */	bne .L_8140B060
/* 8140B058 | 38 A0 00 00 */	li r5, 0x0
/* 8140B05C | 48 00 00 6C */	b .L_8140B0C8
.L_8140B060:
/* 8140B060 | 80 C3 00 FC */	lwz r6, 0xfc(r3)
/* 8140B064 | 38 A4 FF FC */	subi r5, r4, 0x4
/* 8140B068 | 38 00 00 03 */	li r0, 0x3
/* 8140B06C | 1C 86 00 1C */	mulli r4, r6, 0x1c
/* 8140B070 | 7C 83 22 14 */	add r4, r3, r4
/* 8140B074 | 38 C4 00 0C */	addi r6, r4, 0xc
/* 8140B078 | 7C 09 03 A6 */	mtctr r0
.L_8140B07C:
/* 8140B07C | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8140B080 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 8140B084 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 8140B088 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 8140B08C | 42 00 FF F0 */	bdnz .L_8140B07C
/* 8140B090 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8140B094 | 90 06 00 04 */	stw r0, 0x4(r6)
/* 8140B098 | 80 83 00 FC */	lwz r4, 0xfc(r3)
/* 8140B09C | 80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 8140B0A0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8140B0A4 | 7C 04 00 00 */	cmpw r4, r0
/* 8140B0A8 | 90 83 00 FC */	stw r4, 0xfc(r3)
/* 8140B0AC | 41 80 00 0C */	blt .L_8140B0B8
/* 8140B0B0 | 38 00 00 00 */	li r0, 0x0
/* 8140B0B4 | 90 03 00 FC */	stw r0, 0xfc(r3)
.L_8140B0B8:
/* 8140B0B8 | 80 83 00 F4 */	lwz r4, 0xf4(r3)
/* 8140B0BC | 38 A0 00 01 */	li r5, 0x1
/* 8140B0C0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8140B0C4 | 90 03 00 F4 */	stw r0, 0xf4(r3)
.L_8140B0C8:
/* 8140B0C8 | 7C A3 2B 78 */	mr r3, r5
/* 8140B0CC | 4E 80 00 20 */	blr
.endfn pushCommand__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command

# .text:0xBD8 | 0x8140B0D0 | size: 0x68
# ipl::scene::Manager::isReady(int)
.fn isReady__Q33ipl5scene7ManagerFi, global
/* 8140B0D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140B0D4 | 7C 08 02 A6 */	mflr r0
/* 8140B0D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140B0DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140B0E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140B0E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140B0E8 | 3B E0 00 00 */	li r31, 0x0
/* 8140B0EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8140B0F0 | 7C 9E 23 78 */	mr r30, r4
/* 8140B0F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140B0F8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8140B0FC | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8140B100 | 4B F3 2A 95 */	bl receiveToken__Q33ipl4nand7ManagerFPi
/* 8140B104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B108 | 41 82 00 14 */	beq .L_8140B11C
/* 8140B10C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140B110 | 7C 1E 00 00 */	cmpw r30, r0
/* 8140B114 | 40 82 00 08 */	bne .L_8140B11C
/* 8140B118 | 3B E0 00 01 */	li r31, 0x1
.L_8140B11C:
/* 8140B11C | 7F E3 FB 78 */	mr r3, r31
/* 8140B120 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140B124 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8140B128 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140B12C | 7C 08 03 A6 */	mtlr r0
/* 8140B130 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140B134 | 4E 80 00 20 */	blr
.endfn isReady__Q33ipl5scene7ManagerFi

# .text:0xC40 | 0x8140B138 | size: 0x8
# ipl::scene::Manager::getScene(int)
.fn getScene__Q33ipl5scene7ManagerFi, global
/* 8140B138 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8140B13C | 48 00 00 04 */	b getScene__Q33ipl5scene7ManagerFiPQ33ipl5scene4Base
.endfn getScene__Q33ipl5scene7ManagerFi

# .text:0xC48 | 0x8140B140 | size: 0x74
# ipl::scene::Manager::getScene(int, ipl::scene::Base*)
.fn getScene__Q33ipl5scene7ManagerFiPQ33ipl5scene4Base, global
/* 8140B140 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140B144 | 7C 08 02 A6 */	mflr r0
/* 8140B148 | 3C 60 81 66 */	lis r3, __vt__Q43ipl5scene4Base8iterator@ha
/* 8140B14C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140B150 | 38 63 89 14 */	addi r3, r3, __vt__Q43ipl5scene4Base8iterator@l
/* 8140B154 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140B158 | 3B E0 00 00 */	li r31, 0x0
/* 8140B15C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8140B160 | 7C 9E 23 78 */	mr r30, r4
/* 8140B164 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8140B168 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8140B16C | 48 00 00 20 */	b .L_8140B18C
.L_8140B170:
/* 8140B170 | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 8140B174 | 7C 1E 00 00 */	cmpw r30, r0
/* 8140B178 | 40 82 00 0C */	bne .L_8140B184
/* 8140B17C | 7C 7F 1B 78 */	mr r31, r3
/* 8140B180 | 48 00 00 18 */	b .L_8140B198
.L_8140B184:
/* 8140B184 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140B188 | 4B FF F7 15 */	bl __pp__Q43ipl7utility4Tree8iteratorFv
.L_8140B18C:
/* 8140B18C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140B190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B194 | 40 82 FF DC */	bne .L_8140B170
.L_8140B198:
/* 8140B198 | 7F E3 FB 78 */	mr r3, r31
/* 8140B19C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140B1A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8140B1A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140B1A8 | 7C 08 03 A6 */	mtlr r0
/* 8140B1AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140B1B0 | 4E 80 00 20 */	blr
.endfn getScene__Q33ipl5scene7ManagerFiPQ33ipl5scene4Base

# .text:0xCBC | 0x8140B1B4 | size: 0x8
# ipl::utility::Tree::reverse_iterator::operator*()
.fn __ml__Q43ipl7utility4Tree16reverse_iteratorFv, global
/* 8140B1B4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8140B1B8 | 4E 80 00 20 */	blr
.endfn __ml__Q43ipl7utility4Tree16reverse_iteratorFv

# .text:0xCC4 | 0x8140B1BC | size: 0x4C
# ipl::utility::Queue<ipl::scene::Command, 8>::pop()
.fn "pop__Q33ipl7utility29Queue<Q33ipl5scene7Command,8>Fv", global
/* 8140B1BC | 80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 8140B1C0 | 38 A0 00 01 */	li r5, 0x1
/* 8140B1C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140B1C8 | 40 82 00 0C */	bne .L_8140B1D4
/* 8140B1CC | 38 A0 00 00 */	li r5, 0x0
/* 8140B1D0 | 48 00 00 30 */	b .L_8140B200
.L_8140B1D4:
/* 8140B1D4 | 80 83 00 E8 */	lwz r4, 0xe8(r3)
/* 8140B1D8 | 80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 8140B1DC | 38 84 00 01 */	addi r4, r4, 0x1
/* 8140B1E0 | 7C 04 00 00 */	cmpw r4, r0
/* 8140B1E4 | 90 83 00 E8 */	stw r4, 0xe8(r3)
/* 8140B1E8 | 41 80 00 0C */	blt .L_8140B1F4
/* 8140B1EC | 38 00 00 00 */	li r0, 0x0
/* 8140B1F0 | 90 03 00 E8 */	stw r0, 0xe8(r3)
.L_8140B1F4:
/* 8140B1F4 | 80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 8140B1F8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8140B1FC | 90 03 00 E4 */	stw r0, 0xe4(r3)
.L_8140B200:
/* 8140B200 | 7C A3 2B 78 */	mr r3, r5
/* 8140B204 | 4E 80 00 20 */	blr
.endfn "pop__Q33ipl7utility29Queue<Q33ipl5scene7Command,8>Fv"

# 0x81658908..0x81658930 | size: 0x28
.data
.balign 8

# .data:0x0 | 0x81658908 | size: 0xC
# ipl::scene::Base::reverse_iterator::__vtable
.obj __vt__Q43ipl5scene4Base16reverse_iterator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __ml__Q43ipl5scene4Base16reverse_iteratorFv
.endobj __vt__Q43ipl5scene4Base16reverse_iterator

# .data:0xC | 0x81658914 | size: 0xC
# ipl::scene::Base::iterator::__vtable
.obj __vt__Q43ipl5scene4Base8iterator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __ml__Q43ipl5scene4Base8iteratorFv
.endobj __vt__Q43ipl5scene4Base8iterator

# .data:0x18 | 0x81658920 | size: 0xC
# ipl::utility::Tree::reverse_iterator::__vtable
.obj __vt__Q43ipl7utility4Tree16reverse_iterator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __ml__Q43ipl7utility4Tree16reverse_iteratorFv
.endobj __vt__Q43ipl7utility4Tree16reverse_iterator

# .data:0x24 | 0x8165892C | size: 0x4
.obj gap_08_8165892C_data, global
.hidden gap_08_8165892C_data
	.4byte 0x00000000
.endobj gap_08_8165892C_data
