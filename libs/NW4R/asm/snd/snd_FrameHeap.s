.include "macros.inc"
.file "snd_FrameHeap.cpp"

# 0x814FF49C..0x814FFD6C | size: 0x8D0
.text
.balign 4

# .text:0x0 | 0x814FF49C | size: 0x24
# nw4r::snd::detail::FrameHeap::FrameHeap()
.fn __ct__Q44nw4r3snd6detail9FrameHeapFv, global
/* 814FF49C | 38 00 00 00 */	li r0, 0x0
/* 814FF4A0 | 38 83 00 08 */	addi r4, r3, 0x8
/* 814FF4A4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FF4A8 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FF4AC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF4B0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FF4B4 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 814FF4B8 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FF4BC | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail9FrameHeapFv

# .text:0x24 | 0x814FF4C0 | size: 0x114
# nw4r::snd::detail::FrameHeap::~FrameHeap()
.fn __dt__Q44nw4r3snd6detail9FrameHeapFv, global
/* 814FF4C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF4C4 | 7C 08 02 A6 */	mflr r0
/* 814FF4C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FF4CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814FF4D0 | 48 0F 9F F1 */	bl _savegpr_27
/* 814FF4D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FF4D8 | 7C 7B 1B 78 */	mr r27, r3
/* 814FF4DC | 7C 9C 23 78 */	mr r28, r4
/* 814FF4E0 | 41 82 00 D8 */	beq .L_814FF5B8
/* 814FF4E4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FF4E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF4EC | 41 82 00 AC */	beq .L_814FF598
/* 814FF4F0 | 41 82 00 A8 */	beq .L_814FF598
/* 814FF4F4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814FF4F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF4FC | 41 82 00 80 */	beq .L_814FF57C
/* 814FF500 | 3B E3 00 08 */	addi r31, r3, 0x8
/* 814FF504 | 48 00 00 6C */	b .L_814FF570
.L_814FF508:
/* 814FF508 | 83 BF 00 04 */	lwz r29, 0x4(r31)
/* 814FF50C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FF510 | 41 82 00 54 */	beq .L_814FF564
/* 814FF514 | 3B DD 00 0C */	addi r30, r29, 0xc
/* 814FF518 | 48 00 00 30 */	b .L_814FF548
.L_814FF51C:
/* 814FF51C | 83 DE 00 04 */	lwz r30, 0x4(r30)
/* 814FF520 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FF524 | 41 82 00 24 */	beq .L_814FF548
/* 814FF528 | 81 9E 00 0C */	lwz r12, 0xc(r30)
/* 814FF52C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FF530 | 41 82 00 18 */	beq .L_814FF548
/* 814FF534 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FF538 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814FF53C | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 814FF540 | 7D 89 03 A6 */	mtctr r12
/* 814FF544 | 4E 80 04 21 */	bctrl
.L_814FF548:
/* 814FF548 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814FF54C | 7C 1E 00 40 */	cmplw r30, r0
/* 814FF550 | 40 82 FF CC */	bne .L_814FF51C
/* 814FF554 | 34 7D 00 08 */	addic. r3, r29, 0x8
/* 814FF558 | 41 82 00 0C */	beq .L_814FF564
/* 814FF55C | 38 80 00 00 */	li r4, 0x0
/* 814FF560 | 48 01 2E 05 */	bl fn_81512364
.L_814FF564:
/* 814FF564 | 7F A4 EB 78 */	mr r4, r29
/* 814FF568 | 38 7B 00 04 */	addi r3, r27, 0x4
/* 814FF56C | 48 01 2F 35 */	bl fn_815124A0
.L_814FF570:
/* 814FF570 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814FF574 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF578 | 40 82 FF 90 */	bne .L_814FF508
.L_814FF57C:
/* 814FF57C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814FF580 | 38 80 00 03 */	li r4, 0x3
/* 814FF584 | 48 05 B9 E9 */	bl fn_8155AF6C
/* 814FF588 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814FF58C | 48 05 B8 91 */	bl fn_8155AE1C
/* 814FF590 | 38 00 00 00 */	li r0, 0x0
/* 814FF594 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814FF598:
/* 814FF598 | 34 7B 00 04 */	addic. r3, r27, 0x4
/* 814FF59C | 41 82 00 0C */	beq .L_814FF5A8
/* 814FF5A0 | 38 80 00 00 */	li r4, 0x0
/* 814FF5A4 | 48 01 2D C1 */	bl fn_81512364
.L_814FF5A8:
/* 814FF5A8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814FF5AC | 40 81 00 0C */	ble .L_814FF5B8
/* 814FF5B0 | 7F 63 DB 78 */	mr r3, r27
/* 814FF5B4 | 48 0F 8B 31 */	bl __dl__FPv
.L_814FF5B8:
/* 814FF5B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814FF5BC | 7F 63 DB 78 */	mr r3, r27
/* 814FF5C0 | 48 0F 9F 4D */	bl _restgpr_27
/* 814FF5C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FF5C8 | 7C 08 03 A6 */	mtlr r0
/* 814FF5CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF5D0 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9FrameHeapFv

# .text:0x138 | 0x814FF5D4 | size: 0x19C
# nw4r::snd::detail::FrameHeap::Create(void*, unsigned long)
.fn Create__Q44nw4r3snd6detail9FrameHeapFPvUl, global
/* 814FF5D4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FF5D8 | 7C 08 02 A6 */	mflr r0
/* 814FF5DC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FF5E0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FF5E4 | 48 0F 9E D9 */	bl _savegpr_26
/* 814FF5E8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FF5EC | 7C 7A 1B 78 */	mr r26, r3
/* 814FF5F0 | 7C 9B 23 78 */	mr r27, r4
/* 814FF5F4 | 7C BC 2B 78 */	mr r28, r5
/* 814FF5F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF5FC | 41 82 00 AC */	beq .L_814FF6A8
/* 814FF600 | 41 82 00 A8 */	beq .L_814FF6A8
/* 814FF604 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814FF608 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF60C | 41 82 00 80 */	beq .L_814FF68C
/* 814FF610 | 3B E3 00 08 */	addi r31, r3, 0x8
/* 814FF614 | 48 00 00 6C */	b .L_814FF680
.L_814FF618:
/* 814FF618 | 83 BF 00 04 */	lwz r29, 0x4(r31)
/* 814FF61C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FF620 | 41 82 00 54 */	beq .L_814FF674
/* 814FF624 | 3B DD 00 0C */	addi r30, r29, 0xc
/* 814FF628 | 48 00 00 30 */	b .L_814FF658
.L_814FF62C:
/* 814FF62C | 83 DE 00 04 */	lwz r30, 0x4(r30)
/* 814FF630 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FF634 | 41 82 00 24 */	beq .L_814FF658
/* 814FF638 | 81 9E 00 0C */	lwz r12, 0xc(r30)
/* 814FF63C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FF640 | 41 82 00 18 */	beq .L_814FF658
/* 814FF644 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FF648 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814FF64C | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 814FF650 | 7D 89 03 A6 */	mtctr r12
/* 814FF654 | 4E 80 04 21 */	bctrl
.L_814FF658:
/* 814FF658 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814FF65C | 7C 1E 00 40 */	cmplw r30, r0
/* 814FF660 | 40 82 FF CC */	bne .L_814FF62C
/* 814FF664 | 34 7D 00 08 */	addic. r3, r29, 0x8
/* 814FF668 | 41 82 00 0C */	beq .L_814FF674
/* 814FF66C | 38 80 00 00 */	li r4, 0x0
/* 814FF670 | 48 01 2C F5 */	bl fn_81512364
.L_814FF674:
/* 814FF674 | 7F A4 EB 78 */	mr r4, r29
/* 814FF678 | 38 7A 00 04 */	addi r3, r26, 0x4
/* 814FF67C | 48 01 2E 25 */	bl fn_815124A0
.L_814FF680:
/* 814FF680 | 80 1A 00 04 */	lwz r0, 0x4(r26)
/* 814FF684 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF688 | 40 82 FF 90 */	bne .L_814FF618
.L_814FF68C:
/* 814FF68C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814FF690 | 38 80 00 03 */	li r4, 0x3
/* 814FF694 | 48 05 B8 D9 */	bl fn_8155AF6C
/* 814FF698 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814FF69C | 48 05 B7 81 */	bl fn_8155AE1C
/* 814FF6A0 | 38 00 00 00 */	li r0, 0x0
/* 814FF6A4 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_814FF6A8:
/* 814FF6A8 | 38 1B 00 03 */	addi r0, r27, 0x3
/* 814FF6AC | 7C 9B E2 14 */	add r4, r27, r28
/* 814FF6B0 | 54 03 00 3A */	clrrwi r3, r0, 2
/* 814FF6B4 | 7C 03 20 40 */	cmplw r3, r4
/* 814FF6B8 | 40 81 00 0C */	ble .L_814FF6C4
/* 814FF6BC | 38 60 00 00 */	li r3, 0x0
/* 814FF6C0 | 48 00 00 98 */	b .L_814FF758
.L_814FF6C4:
/* 814FF6C4 | 7C 83 20 50 */	subf r4, r3, r4
/* 814FF6C8 | 38 A0 00 00 */	li r5, 0x0
/* 814FF6CC | 48 05 B6 CD */	bl fn_8155AD98
/* 814FF6D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FF6D4 | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 814FF6D8 | 40 82 00 0C */	bne .L_814FF6E4
/* 814FF6DC | 38 60 00 00 */	li r3, 0x0
/* 814FF6E0 | 48 00 00 78 */	b .L_814FF758
.L_814FF6E4:
/* 814FF6E4 | 38 80 00 14 */	li r4, 0x14
/* 814FF6E8 | 38 A0 00 04 */	li r5, 0x4
/* 814FF6EC | 48 05 B7 61 */	bl fn_8155AE4C
/* 814FF6F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FF6F4 | 40 82 00 0C */	bne .L_814FF700
/* 814FF6F8 | 38 00 00 00 */	li r0, 0x0
/* 814FF6FC | 48 00 00 48 */	b .L_814FF744
.L_814FF700:
/* 814FF700 | 7C 65 1B 78 */	mr r5, r3
/* 814FF704 | 41 82 00 28 */	beq .L_814FF72C
/* 814FF708 | 38 00 00 00 */	li r0, 0x0
/* 814FF70C | 38 83 00 0C */	addi r4, r3, 0xc
/* 814FF710 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF714 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FF718 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FF71C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FF720 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FF724 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FF728 | 90 83 00 10 */	stw r4, 0x10(r3)
.L_814FF72C:
/* 814FF72C | 38 1A 00 08 */	addi r0, r26, 0x8
/* 814FF730 | 38 7A 00 04 */	addi r3, r26, 0x4
/* 814FF734 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FF738 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FF73C | 48 01 2D 39 */	bl fn_81512474
/* 814FF740 | 38 00 00 01 */	li r0, 0x1
.L_814FF744:
/* 814FF744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF748 | 40 82 00 0C */	bne .L_814FF754
/* 814FF74C | 38 60 00 00 */	li r3, 0x0
/* 814FF750 | 48 00 00 08 */	b .L_814FF758
.L_814FF754:
/* 814FF754 | 38 60 00 01 */	li r3, 0x1
.L_814FF758:
/* 814FF758 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FF75C | 48 0F 9D AD */	bl _restgpr_26
/* 814FF760 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FF764 | 7C 08 03 A6 */	mtlr r0
/* 814FF768 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FF76C | 4E 80 00 20 */	blr
.endfn Create__Q44nw4r3snd6detail9FrameHeapFPvUl

# .text:0x2D4 | 0x814FF770 | size: 0xF0
# nw4r::snd::detail::FrameHeap::Destroy()
.fn Destroy__Q44nw4r3snd6detail9FrameHeapFv, global
/* 814FF770 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF774 | 7C 08 02 A6 */	mflr r0
/* 814FF778 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FF77C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FF780 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FF784 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FF788 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814FF78C | 7C 7C 1B 78 */	mr r28, r3
/* 814FF790 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FF794 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF798 | 41 82 00 A8 */	beq .L_814FF840
/* 814FF79C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814FF7A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF7A4 | 41 82 00 80 */	beq .L_814FF824
/* 814FF7A8 | 3B E3 00 08 */	addi r31, r3, 0x8
/* 814FF7AC | 48 00 00 6C */	b .L_814FF818
.L_814FF7B0:
/* 814FF7B0 | 83 BF 00 04 */	lwz r29, 0x4(r31)
/* 814FF7B4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FF7B8 | 41 82 00 54 */	beq .L_814FF80C
/* 814FF7BC | 3B DD 00 0C */	addi r30, r29, 0xc
/* 814FF7C0 | 48 00 00 30 */	b .L_814FF7F0
.L_814FF7C4:
/* 814FF7C4 | 83 DE 00 04 */	lwz r30, 0x4(r30)
/* 814FF7C8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FF7CC | 41 82 00 24 */	beq .L_814FF7F0
/* 814FF7D0 | 81 9E 00 0C */	lwz r12, 0xc(r30)
/* 814FF7D4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FF7D8 | 41 82 00 18 */	beq .L_814FF7F0
/* 814FF7DC | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FF7E0 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814FF7E4 | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 814FF7E8 | 7D 89 03 A6 */	mtctr r12
/* 814FF7EC | 4E 80 04 21 */	bctrl
.L_814FF7F0:
/* 814FF7F0 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814FF7F4 | 7C 1E 00 40 */	cmplw r30, r0
/* 814FF7F8 | 40 82 FF CC */	bne .L_814FF7C4
/* 814FF7FC | 34 7D 00 08 */	addic. r3, r29, 0x8
/* 814FF800 | 41 82 00 0C */	beq .L_814FF80C
/* 814FF804 | 38 80 00 00 */	li r4, 0x0
/* 814FF808 | 48 01 2B 5D */	bl fn_81512364
.L_814FF80C:
/* 814FF80C | 7F A4 EB 78 */	mr r4, r29
/* 814FF810 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 814FF814 | 48 01 2C 8D */	bl fn_815124A0
.L_814FF818:
/* 814FF818 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 814FF81C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF820 | 40 82 FF 90 */	bne .L_814FF7B0
.L_814FF824:
/* 814FF824 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814FF828 | 38 80 00 03 */	li r4, 0x3
/* 814FF82C | 48 05 B7 41 */	bl fn_8155AF6C
/* 814FF830 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814FF834 | 48 05 B5 E9 */	bl fn_8155AE1C
/* 814FF838 | 38 00 00 00 */	li r0, 0x0
/* 814FF83C | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814FF840:
/* 814FF840 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FF844 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FF848 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FF84C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FF850 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814FF854 | 7C 08 03 A6 */	mtlr r0
/* 814FF858 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF85C | 4E 80 00 20 */	blr
.endfn Destroy__Q44nw4r3snd6detail9FrameHeapFv

# .text:0x3C4 | 0x814FF860 | size: 0x12C
# nw4r::snd::detail::FrameHeap::Clear()
.fn Clear__Q44nw4r3snd6detail9FrameHeapFv, global
/* 814FF860 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF864 | 7C 08 02 A6 */	mflr r0
/* 814FF868 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FF86C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FF870 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FF874 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FF878 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814FF87C | 7C 7C 1B 78 */	mr r28, r3
/* 814FF880 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814FF884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF888 | 41 82 00 80 */	beq .L_814FF908
/* 814FF88C | 3B E3 00 08 */	addi r31, r3, 0x8
/* 814FF890 | 48 00 00 6C */	b .L_814FF8FC
.L_814FF894:
/* 814FF894 | 83 BF 00 04 */	lwz r29, 0x4(r31)
/* 814FF898 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FF89C | 41 82 00 54 */	beq .L_814FF8F0
/* 814FF8A0 | 3B DD 00 0C */	addi r30, r29, 0xc
/* 814FF8A4 | 48 00 00 30 */	b .L_814FF8D4
.L_814FF8A8:
/* 814FF8A8 | 83 DE 00 04 */	lwz r30, 0x4(r30)
/* 814FF8AC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FF8B0 | 41 82 00 24 */	beq .L_814FF8D4
/* 814FF8B4 | 81 9E 00 0C */	lwz r12, 0xc(r30)
/* 814FF8B8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FF8BC | 41 82 00 18 */	beq .L_814FF8D4
/* 814FF8C0 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FF8C4 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814FF8C8 | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 814FF8CC | 7D 89 03 A6 */	mtctr r12
/* 814FF8D0 | 4E 80 04 21 */	bctrl
.L_814FF8D4:
/* 814FF8D4 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814FF8D8 | 7C 1E 00 40 */	cmplw r30, r0
/* 814FF8DC | 40 82 FF CC */	bne .L_814FF8A8
/* 814FF8E0 | 34 7D 00 08 */	addic. r3, r29, 0x8
/* 814FF8E4 | 41 82 00 0C */	beq .L_814FF8F0
/* 814FF8E8 | 38 80 00 00 */	li r4, 0x0
/* 814FF8EC | 48 01 2A 79 */	bl fn_81512364
.L_814FF8F0:
/* 814FF8F0 | 7F A4 EB 78 */	mr r4, r29
/* 814FF8F4 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 814FF8F8 | 48 01 2B A9 */	bl fn_815124A0
.L_814FF8FC:
/* 814FF8FC | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 814FF900 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF904 | 40 82 FF 90 */	bne .L_814FF894
.L_814FF908:
/* 814FF908 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814FF90C | 38 80 00 03 */	li r4, 0x3
/* 814FF910 | 48 05 B6 5D */	bl fn_8155AF6C
/* 814FF914 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814FF918 | 38 80 00 14 */	li r4, 0x14
/* 814FF91C | 38 A0 00 04 */	li r5, 0x4
/* 814FF920 | 48 05 B5 2D */	bl fn_8155AE4C
/* 814FF924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FF928 | 41 82 00 44 */	beq .L_814FF96C
/* 814FF92C | 7C 65 1B 78 */	mr r5, r3
/* 814FF930 | 41 82 00 28 */	beq .L_814FF958
/* 814FF934 | 38 00 00 00 */	li r0, 0x0
/* 814FF938 | 38 83 00 0C */	addi r4, r3, 0xc
/* 814FF93C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF940 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FF944 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FF948 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FF94C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FF950 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FF954 | 90 83 00 10 */	stw r4, 0x10(r3)
.L_814FF958:
/* 814FF958 | 38 1C 00 08 */	addi r0, r28, 0x8
/* 814FF95C | 38 7C 00 04 */	addi r3, r28, 0x4
/* 814FF960 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FF964 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FF968 | 48 01 2B 0D */	bl fn_81512474
.L_814FF96C:
/* 814FF96C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FF970 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FF974 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FF978 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FF97C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814FF980 | 7C 08 03 A6 */	mtlr r0
/* 814FF984 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF988 | 4E 80 00 20 */	blr
.endfn Clear__Q44nw4r3snd6detail9FrameHeapFv

# .text:0x4F0 | 0x814FF98C | size: 0xA4
# nw4r::snd::detail::FrameHeap::Alloc(unsigned long, void (*)(void*, unsigned long, void*), void*)
.fn Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv, global
/* 814FF98C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FF990 | 7C 08 02 A6 */	mflr r0
/* 814FF994 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FF998 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FF99C | 48 0F 9B 25 */	bl _savegpr_27
/* 814FF9A0 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 814FF9A4 | 7C 7B 1B 78 */	mr r27, r3
/* 814FF9A8 | 54 07 00 34 */	clrrwi r7, r0, 5
/* 814FF9AC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814FF9B0 | 7C 9C 23 78 */	mr r28, r4
/* 814FF9B4 | 7C BD 2B 78 */	mr r29, r5
/* 814FF9B8 | 7C DE 33 78 */	mr r30, r6
/* 814FF9BC | 38 87 00 20 */	addi r4, r7, 0x20
/* 814FF9C0 | 38 A0 00 20 */	li r5, 0x20
/* 814FF9C4 | 48 05 B4 89 */	bl fn_8155AE4C
/* 814FF9C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FF9CC | 7C 7F 1B 78 */	mr r31, r3
/* 814FF9D0 | 40 82 00 0C */	bne .L_814FF9DC
/* 814FF9D4 | 38 60 00 00 */	li r3, 0x0
/* 814FF9D8 | 48 00 00 40 */	b .L_814FFA18
.L_814FF9DC:
/* 814FF9DC | 41 82 00 1C */	beq .L_814FF9F8
/* 814FF9E0 | 38 00 00 00 */	li r0, 0x0
/* 814FF9E4 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF9E8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FF9EC | 93 83 00 08 */	stw r28, 0x8(r3)
/* 814FF9F0 | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 814FF9F4 | 93 C3 00 10 */	stw r30, 0x10(r3)
.L_814FF9F8:
/* 814FF9F8 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 814FF9FC | 7F E5 FB 78 */	mr r5, r31
/* 814FFA00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FFA04 | 38 03 00 0C */	addi r0, r3, 0xc
/* 814FFA08 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814FFA0C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FFA10 | 48 01 2A 65 */	bl fn_81512474
/* 814FFA14 | 38 7F 00 20 */	addi r3, r31, 0x20
.L_814FFA18:
/* 814FFA18 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FFA1C | 48 0F 9A F1 */	bl _restgpr_27
/* 814FFA20 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FFA24 | 7C 08 03 A6 */	mtlr r0
/* 814FFA28 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FFA2C | 4E 80 00 20 */	blr
.endfn Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv

# .text:0x594 | 0x814FFA30 | size: 0xCC
# nw4r::snd::detail::FrameHeap::SaveState()
.fn SaveState__Q44nw4r3snd6detail9FrameHeapFv, global
/* 814FFA30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FFA34 | 7C 08 02 A6 */	mflr r0
/* 814FFA38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FFA3C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FFA40 | 7C 7F 1B 78 */	mr r31, r3
/* 814FFA44 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814FFA48 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814FFA4C | 48 05 B6 39 */	bl fn_8155B084
/* 814FFA50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FFA54 | 40 82 00 0C */	bne .L_814FFA60
/* 814FFA58 | 38 60 FF FF */	li r3, -0x1
/* 814FFA5C | 48 00 00 8C */	b .L_814FFAE8
.L_814FFA60:
/* 814FFA60 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFA64 | 38 80 00 14 */	li r4, 0x14
/* 814FFA68 | 38 A0 00 04 */	li r5, 0x4
/* 814FFA6C | 48 05 B3 E1 */	bl fn_8155AE4C
/* 814FFA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FFA74 | 40 82 00 0C */	bne .L_814FFA80
/* 814FFA78 | 38 00 00 00 */	li r0, 0x0
/* 814FFA7C | 48 00 00 48 */	b .L_814FFAC4
.L_814FFA80:
/* 814FFA80 | 7C 65 1B 78 */	mr r5, r3
/* 814FFA84 | 41 82 00 28 */	beq .L_814FFAAC
/* 814FFA88 | 38 00 00 00 */	li r0, 0x0
/* 814FFA8C | 38 83 00 0C */	addi r4, r3, 0xc
/* 814FFA90 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FFA94 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FFA98 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FFA9C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FFAA0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FFAA4 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FFAA8 | 90 83 00 10 */	stw r4, 0x10(r3)
.L_814FFAAC:
/* 814FFAAC | 38 1F 00 08 */	addi r0, r31, 0x8
/* 814FFAB0 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 814FFAB4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FFAB8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FFABC | 48 01 29 B9 */	bl fn_81512474
/* 814FFAC0 | 38 00 00 01 */	li r0, 0x1
.L_814FFAC4:
/* 814FFAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FFAC8 | 40 82 00 18 */	bne .L_814FFAE0
/* 814FFACC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFAD0 | 38 80 00 00 */	li r4, 0x0
/* 814FFAD4 | 48 05 B6 85 */	bl fn_8155B158
/* 814FFAD8 | 38 60 FF FF */	li r3, -0x1
/* 814FFADC | 48 00 00 0C */	b .L_814FFAE8
.L_814FFAE0:
/* 814FFAE0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814FFAE4 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FFAE8:
/* 814FFAE8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FFAEC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FFAF0 | 7C 08 03 A6 */	mtlr r0
/* 814FFAF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FFAF8 | 4E 80 00 20 */	blr
.endfn SaveState__Q44nw4r3snd6detail9FrameHeapFv

# .text:0x660 | 0x814FFAFC | size: 0x224
# nw4r::snd::detail::FrameHeap::LoadState(int)
.fn LoadState__Q44nw4r3snd6detail9FrameHeapFi, global
/* 814FFAFC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FFB00 | 7C 08 02 A6 */	mflr r0
/* 814FFB04 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FFB08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FFB0C | 48 0F 99 B5 */	bl _savegpr_27
/* 814FFB10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FFB14 | 7C 7F 1B 78 */	mr r31, r3
/* 814FFB18 | 7C 9B 23 78 */	mr r27, r4
/* 814FFB1C | 40 82 00 F4 */	bne .L_814FFC10
/* 814FFB20 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814FFB24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FFB28 | 41 82 00 80 */	beq .L_814FFBA8
/* 814FFB2C | 3B C3 00 08 */	addi r30, r3, 0x8
/* 814FFB30 | 48 00 00 6C */	b .L_814FFB9C
.L_814FFB34:
/* 814FFB34 | 83 9E 00 04 */	lwz r28, 0x4(r30)
/* 814FFB38 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814FFB3C | 41 82 00 54 */	beq .L_814FFB90
/* 814FFB40 | 3B BC 00 0C */	addi r29, r28, 0xc
/* 814FFB44 | 48 00 00 30 */	b .L_814FFB74
.L_814FFB48:
/* 814FFB48 | 83 BD 00 04 */	lwz r29, 0x4(r29)
/* 814FFB4C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FFB50 | 41 82 00 24 */	beq .L_814FFB74
/* 814FFB54 | 81 9D 00 0C */	lwz r12, 0xc(r29)
/* 814FFB58 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FFB5C | 41 82 00 18 */	beq .L_814FFB74
/* 814FFB60 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 814FFB64 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814FFB68 | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 814FFB6C | 7D 89 03 A6 */	mtctr r12
/* 814FFB70 | 4E 80 04 21 */	bctrl
.L_814FFB74:
/* 814FFB74 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814FFB78 | 7C 1D 00 40 */	cmplw r29, r0
/* 814FFB7C | 40 82 FF CC */	bne .L_814FFB48
/* 814FFB80 | 34 7C 00 08 */	addic. r3, r28, 0x8
/* 814FFB84 | 41 82 00 0C */	beq .L_814FFB90
/* 814FFB88 | 38 80 00 00 */	li r4, 0x0
/* 814FFB8C | 48 01 27 D9 */	bl fn_81512364
.L_814FFB90:
/* 814FFB90 | 7F 84 E3 78 */	mr r4, r28
/* 814FFB94 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 814FFB98 | 48 01 29 09 */	bl fn_815124A0
.L_814FFB9C:
/* 814FFB9C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814FFBA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FFBA4 | 40 82 FF 90 */	bne .L_814FFB34
.L_814FFBA8:
/* 814FFBA8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFBAC | 38 80 00 03 */	li r4, 0x3
/* 814FFBB0 | 48 05 B3 BD */	bl fn_8155AF6C
/* 814FFBB4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFBB8 | 38 80 00 14 */	li r4, 0x14
/* 814FFBBC | 38 A0 00 04 */	li r5, 0x4
/* 814FFBC0 | 48 05 B2 8D */	bl fn_8155AE4C
/* 814FFBC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FFBC8 | 41 82 01 40 */	beq .L_814FFD08
/* 814FFBCC | 7C 65 1B 78 */	mr r5, r3
/* 814FFBD0 | 41 82 00 28 */	beq .L_814FFBF8
/* 814FFBD4 | 38 00 00 00 */	li r0, 0x0
/* 814FFBD8 | 38 83 00 0C */	addi r4, r3, 0xc
/* 814FFBDC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FFBE0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FFBE4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FFBE8 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FFBEC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FFBF0 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FFBF4 | 90 83 00 10 */	stw r4, 0x10(r3)
.L_814FFBF8:
/* 814FFBF8 | 38 1F 00 08 */	addi r0, r31, 0x8
/* 814FFBFC | 38 7F 00 04 */	addi r3, r31, 0x4
/* 814FFC00 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FFC04 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814FFC08 | 48 01 28 6D */	bl fn_81512474
/* 814FFC0C | 48 00 00 FC */	b .L_814FFD08
.L_814FFC10:
/* 814FFC10 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814FFC14 | 7C 04 00 00 */	cmpw r4, r0
/* 814FFC18 | 40 80 00 80 */	bge .L_814FFC98
/* 814FFC1C | 3B C3 00 08 */	addi r30, r3, 0x8
/* 814FFC20 | 48 00 00 6C */	b .L_814FFC8C
.L_814FFC24:
/* 814FFC24 | 83 9E 00 04 */	lwz r28, 0x4(r30)
/* 814FFC28 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814FFC2C | 41 82 00 54 */	beq .L_814FFC80
/* 814FFC30 | 3B BC 00 0C */	addi r29, r28, 0xc
/* 814FFC34 | 48 00 00 30 */	b .L_814FFC64
.L_814FFC38:
/* 814FFC38 | 83 BD 00 04 */	lwz r29, 0x4(r29)
/* 814FFC3C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FFC40 | 41 82 00 24 */	beq .L_814FFC64
/* 814FFC44 | 81 9D 00 0C */	lwz r12, 0xc(r29)
/* 814FFC48 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FFC4C | 41 82 00 18 */	beq .L_814FFC64
/* 814FFC50 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 814FFC54 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814FFC58 | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 814FFC5C | 7D 89 03 A6 */	mtctr r12
/* 814FFC60 | 4E 80 04 21 */	bctrl
.L_814FFC64:
/* 814FFC64 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814FFC68 | 7C 1D 00 40 */	cmplw r29, r0
/* 814FFC6C | 40 82 FF CC */	bne .L_814FFC38
/* 814FFC70 | 34 7C 00 08 */	addic. r3, r28, 0x8
/* 814FFC74 | 41 82 00 0C */	beq .L_814FFC80
/* 814FFC78 | 38 80 00 00 */	li r4, 0x0
/* 814FFC7C | 48 01 26 E9 */	bl fn_81512364
.L_814FFC80:
/* 814FFC80 | 7F 84 E3 78 */	mr r4, r28
/* 814FFC84 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 814FFC88 | 48 01 28 19 */	bl fn_815124A0
.L_814FFC8C:
/* 814FFC8C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814FFC90 | 7C 1B 00 00 */	cmpw r27, r0
/* 814FFC94 | 41 80 FF 90 */	blt .L_814FFC24
.L_814FFC98:
/* 814FFC98 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFC9C | 7F 64 DB 78 */	mr r4, r27
/* 814FFCA0 | 48 05 B4 B9 */	bl fn_8155B158
/* 814FFCA4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFCA8 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814FFCAC | 48 05 B3 D9 */	bl fn_8155B084
/* 814FFCB0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814FFCB4 | 38 80 00 14 */	li r4, 0x14
/* 814FFCB8 | 38 A0 00 04 */	li r5, 0x4
/* 814FFCBC | 48 05 B1 91 */	bl fn_8155AE4C
/* 814FFCC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FFCC4 | 41 82 00 44 */	beq .L_814FFD08
/* 814FFCC8 | 7C 65 1B 78 */	mr r5, r3
/* 814FFCCC | 41 82 00 28 */	beq .L_814FFCF4
/* 814FFCD0 | 38 00 00 00 */	li r0, 0x0
/* 814FFCD4 | 38 83 00 0C */	addi r4, r3, 0xc
/* 814FFCD8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FFCDC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FFCE0 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FFCE4 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FFCE8 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FFCEC | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FFCF0 | 90 83 00 10 */	stw r4, 0x10(r3)
.L_814FFCF4:
/* 814FFCF4 | 38 1F 00 08 */	addi r0, r31, 0x8
/* 814FFCF8 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 814FFCFC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FFD00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FFD04 | 48 01 27 71 */	bl fn_81512474
.L_814FFD08:
/* 814FFD08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FFD0C | 48 0F 98 01 */	bl _restgpr_27
/* 814FFD10 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FFD14 | 7C 08 03 A6 */	mtlr r0
/* 814FFD18 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FFD1C | 4E 80 00 20 */	blr
.endfn LoadState__Q44nw4r3snd6detail9FrameHeapFi

# .text:0x884 | 0x814FFD20 | size: 0xC
# nw4r::snd::detail::FrameHeap::GetCurrentLevel() const
.fn GetCurrentLevel__Q44nw4r3snd6detail9FrameHeapCFv, global
/* 814FFD20 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814FFD24 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814FFD28 | 4E 80 00 20 */	blr
.endfn GetCurrentLevel__Q44nw4r3snd6detail9FrameHeapCFv

# .text:0x890 | 0x814FFD2C | size: 0x40
# nw4r::snd::detail::FrameHeap::GetFreeSize() const
.fn GetFreeSize__Q44nw4r3snd6detail9FrameHeapCFv, global
/* 814FFD2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FFD30 | 7C 08 02 A6 */	mflr r0
/* 814FFD34 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814FFD38 | 38 80 00 20 */	li r4, 0x20
/* 814FFD3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FFD40 | 48 05 B2 CD */	bl fn_8155B00C
/* 814FFD44 | 38 80 00 20 */	li r4, 0x20
/* 814FFD48 | 38 03 FF E0 */	subi r0, r3, 0x20
/* 814FFD4C | 7C 64 18 10 */	subfc r3, r4, r3
/* 814FFD50 | 7C 63 19 10 */	subfe r3, r3, r3
/* 814FFD54 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 814FFD58 | 7C 03 18 78 */	andc r3, r0, r3
/* 814FFD5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FFD60 | 7C 08 03 A6 */	mtlr r0
/* 814FFD64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FFD68 | 4E 80 00 20 */	blr
.endfn GetFreeSize__Q44nw4r3snd6detail9FrameHeapCFv
