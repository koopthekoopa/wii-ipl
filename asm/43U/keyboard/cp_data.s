.include "macros.inc"
.file "cp_data.cpp"

# 0x8143A3CC..0x8143A8E4 | size: 0x518
.text
.balign 4

# .text:0x0 | 0x8143A3CC | size: 0x518
.fn "__sinit_\\cp_data_cpp", global
/* 8143A3CC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8143A3D0 | 7C 08 02 A6 */	mflr r0
/* 8143A3D4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8143A3D8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8143A3DC | 48 1B F0 D1 */	bl _savegpr_22
/* 8143A3E0 | 3C 80 81 66 */	lis r4, lbl_81660598@ha
/* 8143A3E4 | 38 84 05 98 */	addi r4, r4, lbl_81660598@l
/* 8143A3E8 | 38 64 02 48 */	addi r3, r4, 0x248
/* 8143A3EC | 83 A4 02 48 */	lwz r29, 0x248(r4)
/* 8143A3F0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8143A3F4 | 3B 24 02 B0 */	addi r25, r4, 0x2b0
/* 8143A3F8 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8143A3FC | 3B 04 05 20 */	addi r24, r4, 0x520
/* 8143A400 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8143A404 | 3A E4 07 90 */	addi r23, r4, 0x790
/* 8143A408 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8143A40C | 3B 44 0A 00 */	addi r26, r4, 0xa00
/* 8143A410 | 81 03 00 14 */	lwz r8, 0x14(r3)
/* 8143A414 | 81 23 00 18 */	lwz r9, 0x18(r3)
/* 8143A418 | 81 43 00 1C */	lwz r10, 0x1c(r3)
/* 8143A41C | 81 63 00 20 */	lwz r11, 0x20(r3)
/* 8143A420 | 81 83 00 24 */	lwz r12, 0x24(r3)
/* 8143A424 | 83 E3 00 28 */	lwz r31, 0x28(r3)
/* 8143A428 | 83 C3 00 3C */	lwz r30, 0x3c(r3)
/* 8143A42C | 93 A4 02 B0 */	stw r29, 0x2b0(r4)
/* 8143A430 | 90 19 00 34 */	stw r0, 0x34(r25)
/* 8143A434 | 90 B9 00 68 */	stw r5, 0x68(r25)
/* 8143A438 | 90 D9 00 9C */	stw r6, 0x9c(r25)
/* 8143A43C | 90 F9 00 D0 */	stw r7, 0xd0(r25)
/* 8143A440 | 91 19 01 04 */	stw r8, 0x104(r25)
/* 8143A444 | 91 39 01 38 */	stw r9, 0x138(r25)
/* 8143A448 | 91 59 01 6C */	stw r10, 0x16c(r25)
/* 8143A44C | 91 79 01 A0 */	stw r11, 0x1a0(r25)
/* 8143A450 | 91 99 01 D4 */	stw r12, 0x1d4(r25)
/* 8143A454 | 93 F9 02 08 */	stw r31, 0x208(r25)
/* 8143A458 | 93 D9 02 3C */	stw r30, 0x23c(r25)
/* 8143A45C | 93 A4 05 20 */	stw r29, 0x520(r4)
/* 8143A460 | 90 18 00 34 */	stw r0, 0x34(r24)
/* 8143A464 | 90 B8 00 68 */	stw r5, 0x68(r24)
/* 8143A468 | 90 D8 00 9C */	stw r6, 0x9c(r24)
/* 8143A46C | 90 F8 00 D0 */	stw r7, 0xd0(r24)
/* 8143A470 | 91 18 01 04 */	stw r8, 0x104(r24)
/* 8143A474 | 91 38 01 38 */	stw r9, 0x138(r24)
/* 8143A478 | 91 58 01 6C */	stw r10, 0x16c(r24)
/* 8143A47C | 91 78 01 A0 */	stw r11, 0x1a0(r24)
/* 8143A480 | 91 98 01 D4 */	stw r12, 0x1d4(r24)
/* 8143A484 | 93 F8 02 08 */	stw r31, 0x208(r24)
/* 8143A488 | 93 D8 02 3C */	stw r30, 0x23c(r24)
/* 8143A48C | 93 A4 07 90 */	stw r29, 0x790(r4)
/* 8143A490 | 90 17 00 34 */	stw r0, 0x34(r23)
/* 8143A494 | 90 B7 00 68 */	stw r5, 0x68(r23)
/* 8143A498 | 90 D7 00 9C */	stw r6, 0x9c(r23)
/* 8143A49C | 90 F7 00 D0 */	stw r7, 0xd0(r23)
/* 8143A4A0 | 91 17 01 04 */	stw r8, 0x104(r23)
/* 8143A4A4 | 91 37 01 38 */	stw r9, 0x138(r23)
/* 8143A4A8 | 91 57 01 6C */	stw r10, 0x16c(r23)
/* 8143A4AC | 91 77 01 A0 */	stw r11, 0x1a0(r23)
/* 8143A4B0 | 91 97 01 D4 */	stw r12, 0x1d4(r23)
/* 8143A4B4 | 93 F7 02 08 */	stw r31, 0x208(r23)
/* 8143A4B8 | 93 D7 02 3C */	stw r30, 0x23c(r23)
/* 8143A4BC | 93 A4 0A 00 */	stw r29, 0xa00(r4)
/* 8143A4C0 | 90 1A 00 34 */	stw r0, 0x34(r26)
/* 8143A4C4 | 90 BA 00 68 */	stw r5, 0x68(r26)
/* 8143A4C8 | 90 DA 00 9C */	stw r6, 0x9c(r26)
/* 8143A4CC | 3B 24 0C 70 */	addi r25, r4, 0xc70
/* 8143A4D0 | 3B 04 0E E0 */	addi r24, r4, 0xee0
/* 8143A4D4 | 3A E4 11 50 */	addi r23, r4, 0x1150
/* 8143A4D8 | 3B 84 13 C0 */	addi r28, r4, 0x13c0
/* 8143A4DC | 90 FA 00 D0 */	stw r7, 0xd0(r26)
/* 8143A4E0 | 91 1A 01 04 */	stw r8, 0x104(r26)
/* 8143A4E4 | 91 3A 01 38 */	stw r9, 0x138(r26)
/* 8143A4E8 | 91 5A 01 6C */	stw r10, 0x16c(r26)
/* 8143A4EC | 91 7A 01 A0 */	stw r11, 0x1a0(r26)
/* 8143A4F0 | 91 9A 01 D4 */	stw r12, 0x1d4(r26)
/* 8143A4F4 | 93 FA 02 08 */	stw r31, 0x208(r26)
/* 8143A4F8 | 93 DA 02 3C */	stw r30, 0x23c(r26)
/* 8143A4FC | 93 A4 0C 70 */	stw r29, 0xc70(r4)
/* 8143A500 | 90 19 00 34 */	stw r0, 0x34(r25)
/* 8143A504 | 90 B9 00 68 */	stw r5, 0x68(r25)
/* 8143A508 | 90 D9 00 9C */	stw r6, 0x9c(r25)
/* 8143A50C | 90 F9 00 D0 */	stw r7, 0xd0(r25)
/* 8143A510 | 91 19 01 04 */	stw r8, 0x104(r25)
/* 8143A514 | 91 39 01 38 */	stw r9, 0x138(r25)
/* 8143A518 | 91 59 01 6C */	stw r10, 0x16c(r25)
/* 8143A51C | 91 79 01 A0 */	stw r11, 0x1a0(r25)
/* 8143A520 | 91 99 01 D4 */	stw r12, 0x1d4(r25)
/* 8143A524 | 93 F9 02 08 */	stw r31, 0x208(r25)
/* 8143A528 | 93 D9 02 3C */	stw r30, 0x23c(r25)
/* 8143A52C | 93 A4 0E E0 */	stw r29, 0xee0(r4)
/* 8143A530 | 90 18 00 34 */	stw r0, 0x34(r24)
/* 8143A534 | 90 B8 00 68 */	stw r5, 0x68(r24)
/* 8143A538 | 90 D8 00 9C */	stw r6, 0x9c(r24)
/* 8143A53C | 90 F8 00 D0 */	stw r7, 0xd0(r24)
/* 8143A540 | 91 18 01 04 */	stw r8, 0x104(r24)
/* 8143A544 | 91 38 01 38 */	stw r9, 0x138(r24)
/* 8143A548 | 91 58 01 6C */	stw r10, 0x16c(r24)
/* 8143A54C | 91 78 01 A0 */	stw r11, 0x1a0(r24)
/* 8143A550 | 91 98 01 D4 */	stw r12, 0x1d4(r24)
/* 8143A554 | 93 F8 02 08 */	stw r31, 0x208(r24)
/* 8143A558 | 93 D8 02 3C */	stw r30, 0x23c(r24)
/* 8143A55C | 93 A4 11 50 */	stw r29, 0x1150(r4)
/* 8143A560 | 90 17 00 34 */	stw r0, 0x34(r23)
/* 8143A564 | 90 B7 00 68 */	stw r5, 0x68(r23)
/* 8143A568 | 90 D7 00 9C */	stw r6, 0x9c(r23)
/* 8143A56C | 90 F7 00 D0 */	stw r7, 0xd0(r23)
/* 8143A570 | 91 17 01 04 */	stw r8, 0x104(r23)
/* 8143A574 | 91 37 01 38 */	stw r9, 0x138(r23)
/* 8143A578 | 91 57 01 6C */	stw r10, 0x16c(r23)
/* 8143A57C | 91 77 01 A0 */	stw r11, 0x1a0(r23)
/* 8143A580 | 91 97 01 D4 */	stw r12, 0x1d4(r23)
/* 8143A584 | 93 F7 02 08 */	stw r31, 0x208(r23)
/* 8143A588 | 93 D7 02 3C */	stw r30, 0x23c(r23)
/* 8143A58C | 93 A4 13 C0 */	stw r29, 0x13c0(r4)
/* 8143A590 | 90 1C 00 34 */	stw r0, 0x34(r28)
/* 8143A594 | 90 BC 00 68 */	stw r5, 0x68(r28)
/* 8143A598 | 90 DC 00 9C */	stw r6, 0x9c(r28)
/* 8143A59C | 90 FC 00 D0 */	stw r7, 0xd0(r28)
/* 8143A5A0 | 91 1C 01 04 */	stw r8, 0x104(r28)
/* 8143A5A4 | 91 3C 01 38 */	stw r9, 0x138(r28)
/* 8143A5A8 | 91 5C 01 6C */	stw r10, 0x16c(r28)
/* 8143A5AC | 91 7C 01 A0 */	stw r11, 0x1a0(r28)
/* 8143A5B0 | 3B 44 16 30 */	addi r26, r4, 0x1630
/* 8143A5B4 | 3B 24 18 A0 */	addi r25, r4, 0x18a0
/* 8143A5B8 | 3B 04 1B 10 */	addi r24, r4, 0x1b10
/* 8143A5BC | 3A E4 1D 80 */	addi r23, r4, 0x1d80
/* 8143A5C0 | 3B 64 1F F0 */	addi r27, r4, 0x1ff0
/* 8143A5C4 | 91 9C 01 D4 */	stw r12, 0x1d4(r28)
/* 8143A5C8 | 93 FC 02 08 */	stw r31, 0x208(r28)
/* 8143A5CC | 93 DC 02 3C */	stw r30, 0x23c(r28)
/* 8143A5D0 | 93 A4 16 30 */	stw r29, 0x1630(r4)
/* 8143A5D4 | 90 1A 00 34 */	stw r0, 0x34(r26)
/* 8143A5D8 | 90 BA 00 68 */	stw r5, 0x68(r26)
/* 8143A5DC | 90 DA 00 9C */	stw r6, 0x9c(r26)
/* 8143A5E0 | 90 FA 00 D0 */	stw r7, 0xd0(r26)
/* 8143A5E4 | 91 1A 01 04 */	stw r8, 0x104(r26)
/* 8143A5E8 | 91 3A 01 38 */	stw r9, 0x138(r26)
/* 8143A5EC | 91 5A 01 6C */	stw r10, 0x16c(r26)
/* 8143A5F0 | 91 7A 01 A0 */	stw r11, 0x1a0(r26)
/* 8143A5F4 | 91 9A 01 D4 */	stw r12, 0x1d4(r26)
/* 8143A5F8 | 93 FA 02 08 */	stw r31, 0x208(r26)
/* 8143A5FC | 93 DA 02 3C */	stw r30, 0x23c(r26)
/* 8143A600 | 93 A4 18 A0 */	stw r29, 0x18a0(r4)
/* 8143A604 | 90 19 00 34 */	stw r0, 0x34(r25)
/* 8143A608 | 90 B9 00 68 */	stw r5, 0x68(r25)
/* 8143A60C | 90 D9 00 9C */	stw r6, 0x9c(r25)
/* 8143A610 | 90 F9 00 D0 */	stw r7, 0xd0(r25)
/* 8143A614 | 91 19 01 04 */	stw r8, 0x104(r25)
/* 8143A618 | 91 39 01 38 */	stw r9, 0x138(r25)
/* 8143A61C | 91 59 01 6C */	stw r10, 0x16c(r25)
/* 8143A620 | 91 79 01 A0 */	stw r11, 0x1a0(r25)
/* 8143A624 | 91 99 01 D4 */	stw r12, 0x1d4(r25)
/* 8143A628 | 93 F9 02 08 */	stw r31, 0x208(r25)
/* 8143A62C | 93 D9 02 3C */	stw r30, 0x23c(r25)
/* 8143A630 | 93 A4 1B 10 */	stw r29, 0x1b10(r4)
/* 8143A634 | 90 18 00 34 */	stw r0, 0x34(r24)
/* 8143A638 | 90 B8 00 68 */	stw r5, 0x68(r24)
/* 8143A63C | 90 D8 00 9C */	stw r6, 0x9c(r24)
/* 8143A640 | 90 F8 00 D0 */	stw r7, 0xd0(r24)
/* 8143A644 | 91 18 01 04 */	stw r8, 0x104(r24)
/* 8143A648 | 91 38 01 38 */	stw r9, 0x138(r24)
/* 8143A64C | 91 58 01 6C */	stw r10, 0x16c(r24)
/* 8143A650 | 91 78 01 A0 */	stw r11, 0x1a0(r24)
/* 8143A654 | 91 98 01 D4 */	stw r12, 0x1d4(r24)
/* 8143A658 | 93 F8 02 08 */	stw r31, 0x208(r24)
/* 8143A65C | 93 D8 02 3C */	stw r30, 0x23c(r24)
/* 8143A660 | 93 A4 1D 80 */	stw r29, 0x1d80(r4)
/* 8143A664 | 90 17 00 34 */	stw r0, 0x34(r23)
/* 8143A668 | 90 B7 00 68 */	stw r5, 0x68(r23)
/* 8143A66C | 90 D7 00 9C */	stw r6, 0x9c(r23)
/* 8143A670 | 90 F7 00 D0 */	stw r7, 0xd0(r23)
/* 8143A674 | 91 17 01 04 */	stw r8, 0x104(r23)
/* 8143A678 | 91 37 01 38 */	stw r9, 0x138(r23)
/* 8143A67C | 91 57 01 6C */	stw r10, 0x16c(r23)
/* 8143A680 | 91 77 01 A0 */	stw r11, 0x1a0(r23)
/* 8143A684 | 91 97 01 D4 */	stw r12, 0x1d4(r23)
/* 8143A688 | 93 F7 02 08 */	stw r31, 0x208(r23)
/* 8143A68C | 93 D7 02 3C */	stw r30, 0x23c(r23)
/* 8143A690 | 93 A4 1F F0 */	stw r29, 0x1ff0(r4)
/* 8143A694 | 90 1B 00 34 */	stw r0, 0x34(r27)
/* 8143A698 | 3B 44 22 60 */	addi r26, r4, 0x2260
/* 8143A69C | 3B 24 24 D0 */	addi r25, r4, 0x24d0
/* 8143A6A0 | 3B 04 27 40 */	addi r24, r4, 0x2740
/* 8143A6A4 | 3A E4 29 B0 */	addi r23, r4, 0x29b0
/* 8143A6A8 | 90 BB 00 68 */	stw r5, 0x68(r27)
/* 8143A6AC | 90 DB 00 9C */	stw r6, 0x9c(r27)
/* 8143A6B0 | 90 FB 00 D0 */	stw r7, 0xd0(r27)
/* 8143A6B4 | 91 1B 01 04 */	stw r8, 0x104(r27)
/* 8143A6B8 | 91 3B 01 38 */	stw r9, 0x138(r27)
/* 8143A6BC | 91 5B 01 6C */	stw r10, 0x16c(r27)
/* 8143A6C0 | 91 7B 01 A0 */	stw r11, 0x1a0(r27)
/* 8143A6C4 | 91 9B 01 D4 */	stw r12, 0x1d4(r27)
/* 8143A6C8 | 93 FB 02 08 */	stw r31, 0x208(r27)
/* 8143A6CC | 93 DB 02 3C */	stw r30, 0x23c(r27)
/* 8143A6D0 | 93 A4 22 60 */	stw r29, 0x2260(r4)
/* 8143A6D4 | 90 1A 00 34 */	stw r0, 0x34(r26)
/* 8143A6D8 | 90 BA 00 68 */	stw r5, 0x68(r26)
/* 8143A6DC | 90 DA 00 9C */	stw r6, 0x9c(r26)
/* 8143A6E0 | 90 FA 00 D0 */	stw r7, 0xd0(r26)
/* 8143A6E4 | 91 1A 01 04 */	stw r8, 0x104(r26)
/* 8143A6E8 | 91 3A 01 38 */	stw r9, 0x138(r26)
/* 8143A6EC | 91 5A 01 6C */	stw r10, 0x16c(r26)
/* 8143A6F0 | 91 7A 01 A0 */	stw r11, 0x1a0(r26)
/* 8143A6F4 | 91 9A 01 D4 */	stw r12, 0x1d4(r26)
/* 8143A6F8 | 93 FA 02 08 */	stw r31, 0x208(r26)
/* 8143A6FC | 93 DA 02 3C */	stw r30, 0x23c(r26)
/* 8143A700 | 93 A4 24 D0 */	stw r29, 0x24d0(r4)
/* 8143A704 | 90 19 00 34 */	stw r0, 0x34(r25)
/* 8143A708 | 90 B9 00 68 */	stw r5, 0x68(r25)
/* 8143A70C | 90 D9 00 9C */	stw r6, 0x9c(r25)
/* 8143A710 | 90 F9 00 D0 */	stw r7, 0xd0(r25)
/* 8143A714 | 91 19 01 04 */	stw r8, 0x104(r25)
/* 8143A718 | 91 39 01 38 */	stw r9, 0x138(r25)
/* 8143A71C | 91 59 01 6C */	stw r10, 0x16c(r25)
/* 8143A720 | 91 79 01 A0 */	stw r11, 0x1a0(r25)
/* 8143A724 | 91 99 01 D4 */	stw r12, 0x1d4(r25)
/* 8143A728 | 93 F9 02 08 */	stw r31, 0x208(r25)
/* 8143A72C | 93 D9 02 3C */	stw r30, 0x23c(r25)
/* 8143A730 | 93 A4 27 40 */	stw r29, 0x2740(r4)
/* 8143A734 | 90 18 00 34 */	stw r0, 0x34(r24)
/* 8143A738 | 90 B8 00 68 */	stw r5, 0x68(r24)
/* 8143A73C | 90 D8 00 9C */	stw r6, 0x9c(r24)
/* 8143A740 | 90 F8 00 D0 */	stw r7, 0xd0(r24)
/* 8143A744 | 91 18 01 04 */	stw r8, 0x104(r24)
/* 8143A748 | 91 38 01 38 */	stw r9, 0x138(r24)
/* 8143A74C | 91 58 01 6C */	stw r10, 0x16c(r24)
/* 8143A750 | 91 78 01 A0 */	stw r11, 0x1a0(r24)
/* 8143A754 | 91 98 01 D4 */	stw r12, 0x1d4(r24)
/* 8143A758 | 93 F8 02 08 */	stw r31, 0x208(r24)
/* 8143A75C | 93 D8 02 3C */	stw r30, 0x23c(r24)
/* 8143A760 | 93 A4 29 B0 */	stw r29, 0x29b0(r4)
/* 8143A764 | 90 17 00 34 */	stw r0, 0x34(r23)
/* 8143A768 | 90 B7 00 68 */	stw r5, 0x68(r23)
/* 8143A76C | 90 D7 00 9C */	stw r6, 0x9c(r23)
/* 8143A770 | 90 F7 00 D0 */	stw r7, 0xd0(r23)
/* 8143A774 | 91 17 01 04 */	stw r8, 0x104(r23)
/* 8143A778 | 91 37 01 38 */	stw r9, 0x138(r23)
/* 8143A77C | 3B 04 2C 20 */	addi r24, r4, 0x2c20
/* 8143A780 | 3B 24 2E 90 */	addi r25, r4, 0x2e90
/* 8143A784 | 3B 44 31 00 */	addi r26, r4, 0x3100
/* 8143A788 | 3B 64 33 70 */	addi r27, r4, 0x3370
/* 8143A78C | 3B 84 35 E0 */	addi r28, r4, 0x35e0
/* 8143A790 | 82 C3 00 2C */	lwz r22, 0x2c(r3)
/* 8143A794 | 38 64 38 50 */	addi r3, r4, 0x3850
/* 8143A798 | 91 77 01 A0 */	stw r11, 0x1a0(r23)
/* 8143A79C | 91 78 01 A0 */	stw r11, 0x1a0(r24)
/* 8143A7A0 | 91 79 01 A0 */	stw r11, 0x1a0(r25)
/* 8143A7A4 | 91 7A 01 A0 */	stw r11, 0x1a0(r26)
/* 8143A7A8 | 91 7B 01 A0 */	stw r11, 0x1a0(r27)
/* 8143A7AC | 91 7C 01 A0 */	stw r11, 0x1a0(r28)
/* 8143A7B0 | 91 63 01 A0 */	stw r11, 0x1a0(r3)
/* 8143A7B4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8143A7B8 | 91 57 01 6C */	stw r10, 0x16c(r23)
/* 8143A7BC | 91 97 01 D4 */	stw r12, 0x1d4(r23)
/* 8143A7C0 | 93 F7 02 08 */	stw r31, 0x208(r23)
/* 8143A7C4 | 93 D7 02 3C */	stw r30, 0x23c(r23)
/* 8143A7C8 | 93 A4 2C 20 */	stw r29, 0x2c20(r4)
/* 8143A7CC | 90 18 00 34 */	stw r0, 0x34(r24)
/* 8143A7D0 | 90 B8 00 68 */	stw r5, 0x68(r24)
/* 8143A7D4 | 90 D8 00 9C */	stw r6, 0x9c(r24)
/* 8143A7D8 | 90 F8 00 D0 */	stw r7, 0xd0(r24)
/* 8143A7DC | 91 18 01 04 */	stw r8, 0x104(r24)
/* 8143A7E0 | 91 38 01 38 */	stw r9, 0x138(r24)
/* 8143A7E4 | 91 58 01 6C */	stw r10, 0x16c(r24)
/* 8143A7E8 | 91 98 01 D4 */	stw r12, 0x1d4(r24)
/* 8143A7EC | 93 F8 02 08 */	stw r31, 0x208(r24)
/* 8143A7F0 | 92 D8 02 3C */	stw r22, 0x23c(r24)
/* 8143A7F4 | 93 A4 2E 90 */	stw r29, 0x2e90(r4)
/* 8143A7F8 | 90 19 00 34 */	stw r0, 0x34(r25)
/* 8143A7FC | 90 B9 00 68 */	stw r5, 0x68(r25)
/* 8143A800 | 90 D9 00 9C */	stw r6, 0x9c(r25)
/* 8143A804 | 90 F9 00 D0 */	stw r7, 0xd0(r25)
/* 8143A808 | 91 19 01 04 */	stw r8, 0x104(r25)
/* 8143A80C | 91 39 01 38 */	stw r9, 0x138(r25)
/* 8143A810 | 91 59 01 6C */	stw r10, 0x16c(r25)
/* 8143A814 | 91 99 01 D4 */	stw r12, 0x1d4(r25)
/* 8143A818 | 93 F9 02 08 */	stw r31, 0x208(r25)
/* 8143A81C | 92 D9 02 3C */	stw r22, 0x23c(r25)
/* 8143A820 | 93 A4 31 00 */	stw r29, 0x3100(r4)
/* 8143A824 | 90 1A 00 34 */	stw r0, 0x34(r26)
/* 8143A828 | 90 BA 00 68 */	stw r5, 0x68(r26)
/* 8143A82C | 90 DA 00 9C */	stw r6, 0x9c(r26)
/* 8143A830 | 90 FA 00 D0 */	stw r7, 0xd0(r26)
/* 8143A834 | 91 1A 01 04 */	stw r8, 0x104(r26)
/* 8143A838 | 91 3A 01 38 */	stw r9, 0x138(r26)
/* 8143A83C | 91 5A 01 6C */	stw r10, 0x16c(r26)
/* 8143A840 | 91 9A 01 D4 */	stw r12, 0x1d4(r26)
/* 8143A844 | 93 FA 02 08 */	stw r31, 0x208(r26)
/* 8143A848 | 92 DA 02 3C */	stw r22, 0x23c(r26)
/* 8143A84C | 93 A4 33 70 */	stw r29, 0x3370(r4)
/* 8143A850 | 90 1B 00 34 */	stw r0, 0x34(r27)
/* 8143A854 | 90 BB 00 68 */	stw r5, 0x68(r27)
/* 8143A858 | 90 DB 00 9C */	stw r6, 0x9c(r27)
/* 8143A85C | 90 FB 00 D0 */	stw r7, 0xd0(r27)
/* 8143A860 | 91 1B 01 04 */	stw r8, 0x104(r27)
/* 8143A864 | 91 3B 01 38 */	stw r9, 0x138(r27)
/* 8143A868 | 91 5B 01 6C */	stw r10, 0x16c(r27)
/* 8143A86C | 91 9B 01 D4 */	stw r12, 0x1d4(r27)
/* 8143A870 | 93 FB 02 08 */	stw r31, 0x208(r27)
/* 8143A874 | 92 DB 02 3C */	stw r22, 0x23c(r27)
/* 8143A878 | 93 A4 35 E0 */	stw r29, 0x35e0(r4)
/* 8143A87C | 90 1C 00 34 */	stw r0, 0x34(r28)
/* 8143A880 | 90 BC 00 68 */	stw r5, 0x68(r28)
/* 8143A884 | 90 DC 00 9C */	stw r6, 0x9c(r28)
/* 8143A888 | 90 FC 00 D0 */	stw r7, 0xd0(r28)
/* 8143A88C | 91 1C 01 04 */	stw r8, 0x104(r28)
/* 8143A890 | 91 3C 01 38 */	stw r9, 0x138(r28)
/* 8143A894 | 91 5C 01 6C */	stw r10, 0x16c(r28)
/* 8143A898 | 91 9C 01 D4 */	stw r12, 0x1d4(r28)
/* 8143A89C | 93 FC 02 08 */	stw r31, 0x208(r28)
/* 8143A8A0 | 92 DC 02 3C */	stw r22, 0x23c(r28)
/* 8143A8A4 | 93 A4 38 50 */	stw r29, 0x3850(r4)
/* 8143A8A8 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 8143A8AC | 90 A3 00 68 */	stw r5, 0x68(r3)
/* 8143A8B0 | 90 C3 00 9C */	stw r6, 0x9c(r3)
/* 8143A8B4 | 90 E3 00 D0 */	stw r7, 0xd0(r3)
/* 8143A8B8 | 91 03 01 04 */	stw r8, 0x104(r3)
/* 8143A8BC | 91 23 01 38 */	stw r9, 0x138(r3)
/* 8143A8C0 | 91 43 01 6C */	stw r10, 0x16c(r3)
/* 8143A8C4 | 91 83 01 D4 */	stw r12, 0x1d4(r3)
/* 8143A8C8 | 93 E3 02 08 */	stw r31, 0x208(r3)
/* 8143A8CC | 93 C3 02 3C */	stw r30, 0x23c(r3)
/* 8143A8D0 | 48 1B EC 29 */	bl _restgpr_22
/* 8143A8D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8143A8D8 | 7C 08 03 A6 */	mtlr r0
/* 8143A8DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8143A8E0 | 4E 80 00 20 */	blr
.endfn "__sinit_\\cp_data_cpp"

# 0x8160D210..0x8160D214 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\cp_data_cpp"

# 0x81660598..0x81664058 | size: 0x3AC0
.data
.balign 8

# .data:0x0 | 0x81660598 | size: 0x74
.obj lbl_81660598, global
	.4byte 0x00610062
	.4byte 0x00630064
	.4byte 0x00650066
	.4byte 0x00670068
	.4byte 0x0069006A
	.4byte 0x006B006C
	.4byte 0x006D006E
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00730074
	.4byte 0x00750076
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00E000E1
	.4byte 0x00E200E4
	.4byte 0x00E500E6
	.4byte 0x00E300E8
	.4byte 0x00E900EA
	.4byte 0x00EB00EC
	.4byte 0x00ED00EE
	.4byte 0x00EF00F2
	.4byte 0x00F300F4
	.4byte 0x00F600F8
	.4byte 0x00F50153
	.4byte 0x00F900FA
	.4byte 0x00FB00FC
	.4byte 0x00E700F1
	.4byte 0x00FD00FF
	.4byte 0x00000000
.endobj lbl_81660598

# .data:0x74 | 0x8166060C | size: 0x74
.obj lbl_8166060C, global
	.4byte 0x00410042
	.4byte 0x00430044
	.4byte 0x00450046
	.4byte 0x00470048
	.4byte 0x0049004A
	.4byte 0x004B004C
	.4byte 0x004D004E
	.4byte 0x004F0050
	.4byte 0x00510052
	.4byte 0x00530054
	.4byte 0x00550056
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00C000C1
	.4byte 0x00C200C4
	.4byte 0x00C500C6
	.4byte 0x00C300C8
	.4byte 0x00C900CA
	.4byte 0x00CB00CC
	.4byte 0x00CD00CE
	.4byte 0x00CF00D2
	.4byte 0x00D300D4
	.4byte 0x00D600D8
	.4byte 0x00D50152
	.4byte 0x00D900DA
	.4byte 0x00DB00DC
	.4byte 0x00C700D1
	.4byte 0x00DD0178
	.4byte 0x00000000
.endobj lbl_8166060C

# .data:0xE8 | 0x81660680 | size: 0xC
.obj lbl_81660680, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30300000
.endobj lbl_81660680

# .data:0xF4 | 0x8166068C | size: 0xC
.obj lbl_8166068C, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30310000
.endobj lbl_8166068C

# .data:0x100 | 0x81660698 | size: 0xC
.obj lbl_81660698, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30320000
.endobj lbl_81660698

# .data:0x10C | 0x816606A4 | size: 0xC
.obj lbl_816606A4, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30330000
.endobj lbl_816606A4

# .data:0x118 | 0x816606B0 | size: 0xC
.obj lbl_816606B0, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30340000
.endobj lbl_816606B0

# .data:0x124 | 0x816606BC | size: 0xC
.obj lbl_816606BC, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30350000
.endobj lbl_816606BC

# .data:0x130 | 0x816606C8 | size: 0xC
.obj lbl_816606C8, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30360000
.endobj lbl_816606C8

# .data:0x13C | 0x816606D4 | size: 0xC
.obj lbl_816606D4, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30370000
.endobj lbl_816606D4

# .data:0x148 | 0x816606E0 | size: 0xC
.obj lbl_816606E0, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30380000
.endobj lbl_816606E0

# .data:0x154 | 0x816606EC | size: 0xC
.obj lbl_816606EC, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x30390000
.endobj lbl_816606EC

# .data:0x160 | 0x816606F8 | size: 0xC
.obj lbl_816606F8, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x31300000
.endobj lbl_816606F8

# .data:0x16C | 0x81660704 | size: 0xC
.obj lbl_81660704, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x31310000
.endobj lbl_81660704

# .data:0x178 | 0x81660710 | size: 0xC
.obj lbl_81660710, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x4C460000
.endobj lbl_81660710

# .data:0x184 | 0x8166071C | size: 0x10
.obj lbl_8166071C, global
	.4byte 0x425F4350
	.4byte 0x6B65795F
	.4byte 0x44454C45
	.4byte 0x54450000
.endobj lbl_8166071C

# .data:0x194 | 0x8166072C | size: 0x10
.obj lbl_8166072C, global
	.4byte 0x425F6F74
	.4byte 0x68657273
	.4byte 0x42545F4A
	.4byte 0x50000000
.endobj lbl_8166072C

# .data:0x1A4 | 0x8166073C | size: 0x10
.obj lbl_8166073C, global
	.4byte 0x425F6F74
	.4byte 0x68657273
	.4byte 0x42545F45
	.4byte 0x55000000
.endobj lbl_8166073C

# .data:0x1B4 | 0x8166074C | size: 0x10
.obj lbl_8166074C, global
	.4byte 0x425F4368
	.4byte 0x6E675461
	.4byte 0x675F3030
	.4byte 0x00000000
.endobj lbl_8166074C

# .data:0x1C4 | 0x8166075C | size: 0x10
.obj lbl_8166075C, global
	.4byte 0x425F4368
	.4byte 0x6E675461
	.4byte 0x675F3031
	.4byte 0x00000000
.endobj lbl_8166075C

# .data:0x1D4 | 0x8166076C | size: 0x10
.obj lbl_8166076C, global
	.4byte 0x425F4368
	.4byte 0x6E675461
	.4byte 0x675F3032
	.4byte 0x00000000
.endobj lbl_8166076C

# .data:0x1E4 | 0x8166077C | size: 0x10
.obj lbl_8166077C, global
	.4byte 0x425F4368
	.4byte 0x6E675461
	.4byte 0x675F3033
	.4byte 0x00000000
.endobj lbl_8166077C

# .data:0x1F4 | 0x8166078C | size: 0x10
.obj lbl_8166078C, global
	.4byte 0x425F5347
	.4byte 0x4E6B6579
	.4byte 0x5F636C6F
	.4byte 0x73650000
.endobj lbl_8166078C

# .data:0x204 | 0x8166079C | size: 0x10
.obj lbl_8166079C, global
	.4byte 0x425F5347
	.4byte 0x4E6B6579
	.4byte 0x5F707265
	.4byte 0x76000000
.endobj lbl_8166079C

# .data:0x214 | 0x816607AC | size: 0x14
.obj lbl_816607AC, global
	.4byte 0x425F5347
	.4byte 0x4E6B6579
	.4byte 0x5F6E6578
	.4byte 0x74000000
	.4byte 0x00000000
.endobj lbl_816607AC

# .data:0x228 | 0x816607C0 | size: 0x10
.obj lbl_816607C0, global
	.string "B_CPkey_Prdc_JP"
.endobj lbl_816607C0

# .data:0x238 | 0x816607D0 | size: 0x10
.obj lbl_816607D0, global
	.string "B_prdcModeBT_EU"
.endobj lbl_816607D0

# .data:0x248 | 0x816607E0 | size: 0x68
# textinput::keyboard::cellphonetype::csPaneNameNormalKey
.obj csPaneNameNormalKey__Q39textinput8keyboard13cellphonetype, global
	.4byte lbl_81660680
	.4byte lbl_8166068C
	.4byte lbl_81660698
	.4byte lbl_816606A4
	.4byte lbl_816606B0
	.4byte lbl_816606BC
	.4byte lbl_816606C8
	.4byte lbl_816606D4
	.4byte lbl_816606E0
	.4byte lbl_816606EC
	.4byte lbl_816606F8
	.4byte lbl_81660704
	.4byte lbl_81660710
	.4byte lbl_8166071C
	.4byte lbl_8166072C
	.4byte lbl_8166073C
	.4byte lbl_8166074C
	.4byte lbl_8166075C
	.4byte lbl_8166076C
	.4byte lbl_8166077C
	.4byte lbl_8166078C
	.4byte lbl_8166079C
	.4byte lbl_816607AC
	.4byte lbl_816607C0
	.4byte lbl_816607D0
	.4byte 0x00000000
.endobj csPaneNameNormalKey__Q39textinput8keyboard13cellphonetype

# .data:0x2B0 | 0x81660848 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCUS
.obj csAlphabetKeyABCUS__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0021
	.4byte 0x002D0027
	.4byte 0x003A0040
	.4byte 0x002F0024
	.4byte 0x00230026
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D006F
	.4byte 0x00720065
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
.endobj csAlphabetKeyABCUS__Q39textinput8keyboard13cellphonetype

# .data:0x520 | 0x81660AB8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcUS
.obj csAlphabetKeyabcUS__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0021
	.4byte 0x002D0027
	.4byte 0x003A0040
	.4byte 0x002F0024
	.4byte 0x00230026
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D006F
	.4byte 0x00720065
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
.endobj csAlphabetKeyabcUS__Q39textinput8keyboard13cellphonetype

# .data:0x790 | 0x81660D28 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCCN
.obj csAlphabetKeyABCCN__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x003F0021
	.4byte 0x0040002D
	.4byte 0x00240023
	.4byte 0x00260031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A003B
	.4byte 0x0022002F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A003B
	.4byte 0x00220027
	.4byte 0x002F005C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x7B2653F7
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
.endobj csAlphabetKeyABCCN__Q39textinput8keyboard13cellphonetype

# .data:0xA00 | 0x81660F98 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcCN
.obj csAlphabetKeyabcCN__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x003F0021
	.4byte 0x0040002D
	.4byte 0x00240023
	.4byte 0x00260031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A003B
	.4byte 0x0022002F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A003B
	.4byte 0x00220027
	.4byte 0x002F005C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x7B2653F7
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
.endobj csAlphabetKeyabcCN__Q39textinput8keyboard13cellphonetype

# .data:0xC70 | 0x81661208 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyPinyinCN
.obj csAlphabetKeyPinyinCN__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0xFF0C3002
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF0C3002
	.4byte 0x3001FF1F
	.4byte 0xFF010040
	.4byte 0x002D0024
	.4byte 0x00230026
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A003B
	.4byte 0x201D002F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1AFF1B
	.4byte 0x201C201D
	.4byte 0x20182019
	.4byte 0x002F005C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00310032
	.4byte 0x00330034
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00310032
	.4byte 0x00330034
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x7B2653F7
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
.endobj csAlphabetKeyPinyinCN__Q39textinput8keyboard13cellphonetype

# .data:0xEE0 | 0x81661478 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCUK
.obj csAlphabetKeyABCUK__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0021
	.4byte 0x002D0027
	.4byte 0x003A0040
	.4byte 0x002F00A3
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E9
	.4byte 0x03B10000
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
.endobj csAlphabetKeyABCUK__Q39textinput8keyboard13cellphonetype

# .data:0x1150 | 0x816616E8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcUK
.obj csAlphabetKeyabcUK__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0021
	.4byte 0x002D0027
	.4byte 0x003A0040
	.4byte 0x002F00A3
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E9
	.4byte 0x03B10000
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
.endobj csAlphabetKeyabcUK__Q39textinput8keyboard13cellphonetype

# .data:0x13C0 | 0x81661958 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCDE
.obj csAlphabetKeyABCDE__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x00270040
	.4byte 0x005F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x0021003F
	.4byte 0x003A003B
	.4byte 0x002D0028
	.4byte 0x00290027
	.4byte 0x0040005F
	.4byte 0x002F0026
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x004300C4
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F00D6
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x005600DC
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E9
	.4byte 0x03B10000
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
.endobj csAlphabetKeyABCDE__Q39textinput8keyboard13cellphonetype

# .data:0x1630 | 0x81661BC8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcDE
.obj csAlphabetKeyabcDE__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x00270040
	.4byte 0x005F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x0021003F
	.4byte 0x003A003B
	.4byte 0x002D0028
	.4byte 0x00290027
	.4byte 0x0040005F
	.4byte 0x002F0026
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x006300E4
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F00F6
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00DF0037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x007600FC
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E9
	.4byte 0x03B10000
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
.endobj csAlphabetKeyabcDE__Q39textinput8keyboard13cellphonetype

# .data:0x18A0 | 0x81661E38 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCIT
.obj csAlphabetKeyABCIT__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0021
	.4byte 0x003A003B
	.4byte 0x00270022
	.4byte 0x002D0028
	.4byte 0x00290040
	.4byte 0x002F005F
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x004300C0
	.4byte 0x00C100C4
	.4byte 0x00C200C7
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x004600C8
	.4byte 0x00C900CB
	.4byte 0x00CA0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x004900CC
	.4byte 0x00CD00CF
	.4byte 0x00CE0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F00D2
	.4byte 0x00D300D6
	.4byte 0x00D400D1
	.4byte 0x01520036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x005600D9
	.4byte 0x00DA00DC
	.4byte 0x00DB0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E5
	.4byte 0x03B10000
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
.endobj csAlphabetKeyABCIT__Q39textinput8keyboard13cellphonetype

# .data:0x1B10 | 0x816620A8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcIT
.obj csAlphabetKeyabcIT__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0021
	.4byte 0x003A003B
	.4byte 0x00270022
	.4byte 0x002D0028
	.4byte 0x00290040
	.4byte 0x002F005F
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x006300E0
	.4byte 0x00E100E4
	.4byte 0x00E200E7
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x006600E8
	.4byte 0x00E900EB
	.4byte 0x00EA0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x006900EC
	.4byte 0x00ED00EF
	.4byte 0x00EE0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F00F2
	.4byte 0x00F300F6
	.4byte 0x00F400F1
	.4byte 0x01530036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00DF0037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x007600F9
	.4byte 0x00FA00FC
	.4byte 0x00FB0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E5
	.4byte 0x03B10000
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
.endobj csAlphabetKeyabcIT__Q39textinput8keyboard13cellphonetype

# .data:0x1D80 | 0x81662318 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCNL
.obj csAlphabetKeyABCNL__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x002D003F
	.4byte 0x00210027
	.4byte 0x0040003A
	.4byte 0x003B002F
	.4byte 0x00280029
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x004300C4
	.4byte 0x00C100C0
	.4byte 0x00C200C7
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x004600CB
	.4byte 0x00C900C8
	.4byte 0x00CA0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x004900CF
	.4byte 0x00CD00CC
	.4byte 0x00CE0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F00D6
	.4byte 0x00D300D2
	.4byte 0x00D40036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x005600DC
	.4byte 0x00DA00D9
	.4byte 0x00DB0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E9
	.4byte 0x03B10000
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
.endobj csAlphabetKeyABCNL__Q39textinput8keyboard13cellphonetype

# .data:0x1FF0 | 0x81662588 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcNL
.obj csAlphabetKeyabcNL__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x002D003F
	.4byte 0x00210027
	.4byte 0x0040003A
	.4byte 0x003B002F
	.4byte 0x00280029
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x006300E4
	.4byte 0x00E100E0
	.4byte 0x00E200E7
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x006600EB
	.4byte 0x00E900E8
	.4byte 0x00EA0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x006900EF
	.4byte 0x00ED00EC
	.4byte 0x00EE0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F00F6
	.4byte 0x00F300F2
	.4byte 0x00F40036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x007600FC
	.4byte 0x00FA00F9
	.4byte 0x00FB0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E9
	.4byte 0x03B10000
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
.endobj csAlphabetKeyabcNL__Q39textinput8keyboard13cellphonetype

# .data:0x2260 | 0x816627F8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCSP
.obj csAlphabetKeyABCSP__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003A003B
	.4byte 0x00270022
	.4byte 0x00A10021
	.4byte 0x00BF003F
	.4byte 0x0040002F
	.4byte 0x002D005F
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x004300C7
	.4byte 0x00C100C0
	.4byte 0x00C400C2
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x004600C9
	.4byte 0x00C800CB
	.4byte 0x00CA0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x004900CD
	.4byte 0x00CC00CF
	.4byte 0x00CE0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x00D1004F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x00D1004F
	.4byte 0x00D300D2
	.4byte 0x00D600D4
	.4byte 0x01520036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x005600DA
	.4byte 0x00D900DC
	.4byte 0x00DB0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E5
	.4byte 0x03B10000
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
.endobj csAlphabetKeyABCSP__Q39textinput8keyboard13cellphonetype

# .data:0x24D0 | 0x81662A68 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcSP
.obj csAlphabetKeyabcSP__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x003A003B
	.4byte 0x00270022
	.4byte 0x00A10021
	.4byte 0x00BF003F
	.4byte 0x0040002F
	.4byte 0x002D005F
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x006300E7
	.4byte 0x00E100E0
	.4byte 0x00E400E2
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x006600E9
	.4byte 0x00E800EB
	.4byte 0x00EA0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x006900ED
	.4byte 0x00EC00EF
	.4byte 0x00EE0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x00F1006F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x00F1006F
	.4byte 0x00F300F2
	.4byte 0x00F600F4
	.4byte 0x01530036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00DF0037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x007600FA
	.4byte 0x00F900FC
	.4byte 0x00FB0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E5
	.4byte 0x03B10000
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
.endobj csAlphabetKeyabcSP__Q39textinput8keyboard13cellphonetype

# .data:0x2740 | 0x81662CD8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCFR
.obj csAlphabetKeyABCFR__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E0021
	.4byte 0x00400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x00270021
	.4byte 0x003F0040
	.4byte 0x002D005F
	.4byte 0x003A002F
	.4byte 0x00220031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x004300C0
	.4byte 0x00C200C4
	.4byte 0x00C100C7
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x004600C9
	.4byte 0x00C800CA
	.4byte 0x00CB0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x004900CE
	.4byte 0x00CF00CD
	.4byte 0x00CC0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F00D1
	.4byte 0x00D40152
	.4byte 0x00D600D3
	.4byte 0x00D20036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x005600D9
	.4byte 0x00DB00DC
	.4byte 0x00DA0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E5
	.4byte 0x03B10000
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
.endobj csAlphabetKeyABCFR__Q39textinput8keyboard13cellphonetype

# .data:0x29B0 | 0x81662F48 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcFR
.obj csAlphabetKeyabcFR__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x002E0021
	.4byte 0x00400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E002C
	.4byte 0x00270021
	.4byte 0x003F0040
	.4byte 0x002D005F
	.4byte 0x003A002F
	.4byte 0x00220031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x006300E0
	.4byte 0x00E200E4
	.4byte 0x00E100E7
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x006600E9
	.4byte 0x00E800EA
	.4byte 0x00EB0033
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x006900EE
	.4byte 0x00EF00ED
	.4byte 0x00EC0034
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0035
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F00F1
	.4byte 0x00F40153
	.4byte 0x00F600F3
	.4byte 0x00F20036
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00DF0037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x007600F9
	.4byte 0x00FB00FC
	.4byte 0x00FA0038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20AC00E5
	.4byte 0x03B10000
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
.endobj csAlphabetKeyabcFR__Q39textinput8keyboard13cellphonetype

# .data:0x2C20 | 0x816631B8 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyAIUJP
.obj csAlphabetKeyAIUJP__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x30420000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30423044
	.4byte 0x30463048
	.4byte 0x304A3041
	.4byte 0x30433045
	.4byte 0x30473049
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x304B0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x304B304D
	.4byte 0x304F3051
	.4byte 0x30530000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30550000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30553057
	.4byte 0x3059305B
	.4byte 0x305D0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x305F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x305F3061
	.4byte 0x30643066
	.4byte 0x30683063
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x306A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x306A306B
	.4byte 0x306C306D
	.4byte 0x306E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x306F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x306F3072
	.4byte 0x30753078
	.4byte 0x307B0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x307E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x307E307F
	.4byte 0x30803081
	.4byte 0x30820000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30840000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30843086
	.4byte 0x30883083
	.4byte 0x30853087
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30890000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3089308A
	.4byte 0x308B308C
	.4byte 0x308D0000
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
	.4byte 0x309B309C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x308F3092
	.4byte 0x30930000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x308F3092
	.4byte 0x3093308E
	.4byte 0x30FC0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30013002
	.4byte 0xFF01FF1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30013002
	.4byte 0xFF01FF1F
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAlphabetKeyAIUJP__Q39textinput8keyboard13cellphonetype

# .data:0x2E90 | 0x81663428 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyaiuJP
.obj csAlphabetKeyaiuJP__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x30A20000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30A230A4
	.4byte 0x30A630A8
	.4byte 0x30AA30A1
	.4byte 0x30A330A5
	.4byte 0x30A730A9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30AB0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30AB30AD
	.4byte 0x30AF30B1
	.4byte 0x30B30000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30B50000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30B530B7
	.4byte 0x30B930BB
	.4byte 0x30BD0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30BF0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30BF30C1
	.4byte 0x30C430C6
	.4byte 0x30C830C3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30CA0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30CA30CB
	.4byte 0x30CC30CD
	.4byte 0x30CE0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30CF0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30CF30D2
	.4byte 0x30D530D8
	.4byte 0x30DB0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30DE0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30DE30DF
	.4byte 0x30E030E1
	.4byte 0x30E20000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30E40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30E430E6
	.4byte 0x30E830E3
	.4byte 0x30E530E7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30E90000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30E930EA
	.4byte 0x30EB30EC
	.4byte 0x30ED0000
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
	.4byte 0x309B309C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30EF30F2
	.4byte 0x30F30000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30EF30F2
	.4byte 0x30F330EE
	.4byte 0x30FC0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30013002
	.4byte 0xFF01FF1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30013002
	.4byte 0xFF01FF1F
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAlphabetKeyaiuJP__Q39textinput8keyboard13cellphonetype

# .data:0x3100 | 0x81663698 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyABCJP
.obj csAlphabetKeyABCJP__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x00400031
	.4byte 0x005F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0040002E
	.4byte 0x002F005F
	.4byte 0x002D0031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430061
	.4byte 0x00620063
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460064
	.4byte 0x00650066
	.4byte 0x00330000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490067
	.4byte 0x00680069
	.4byte 0x00340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C006A
	.4byte 0x006B006C
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F006D
	.4byte 0x006E006F
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560074
	.4byte 0x00750076
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x0021003F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x0021003F
	.4byte 0x003A0020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAlphabetKeyABCJP__Q39textinput8keyboard13cellphonetype

# .data:0x3370 | 0x81663908 | size: 0x270
# textinput::keyboard::cellphonetype::csAlphabetKeyabcJP
.obj csAlphabetKeyabcJP__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x00400031
	.4byte 0x005F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0040002E
	.4byte 0x002F005F
	.4byte 0x002D0031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00610062
	.4byte 0x00630041
	.4byte 0x00420043
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640065
	.4byte 0x00660044
	.4byte 0x00450046
	.4byte 0x00330000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00670068
	.4byte 0x00690047
	.4byte 0x00480049
	.4byte 0x00340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006A006B
	.4byte 0x006C004A
	.4byte 0x004B004C
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x006D006E
	.4byte 0x006F004D
	.4byte 0x004E004F
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00740075
	.4byte 0x00760054
	.4byte 0x00550056
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00390000
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
	.4byte 0xE0570030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00200030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x0021003F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C002E
	.4byte 0x0021003F
	.4byte 0x003A0020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAlphabetKeyabcJP__Q39textinput8keyboard13cellphonetype

# .data:0x35E0 | 0x81663B78 | size: 0x270
# textinput::keyboard::cellphonetype::csNumberKey
.obj csNumberKey__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00310000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00330000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00330000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00390000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00390000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csNumberKey__Q39textinput8keyboard13cellphonetype

# .data:0x3850 | 0x81663DE8 | size: 0x270
# textinput::keyboard::cellphonetype::csHangulKey
.obj csHangulKey__Q39textinput8keyboard13cellphonetype, global
	.4byte 0x00000000
	.4byte 0x31313134
	.4byte 0x314F3151
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0040002E
	.4byte 0x002F005F
	.4byte 0x002D0031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x31373139
	.4byte 0x31533155
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00410042
	.4byte 0x00430061
	.4byte 0x00620063
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x31413142
	.4byte 0x3157315B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00440045
	.4byte 0x00460064
	.4byte 0x00650066
	.4byte 0x00330000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x31453147
	.4byte 0x315C3160
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00470048
	.4byte 0x00490067
	.4byte 0x00680069
	.4byte 0x00340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3145314A
	.4byte 0x31610000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004A004B
	.4byte 0x004C006A
	.4byte 0x006B006C
	.4byte 0x00350000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x314B314C
	.4byte 0x31630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x004D004E
	.4byte 0x004F006D
	.4byte 0x006E006F
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x314D314E
	.4byte 0x31500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00370000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x31323138
	.4byte 0x31520000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00540055
	.4byte 0x00560074
	.4byte 0x00750076
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x31433146
	.4byte 0x31540000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00570058
	.4byte 0x0059005A
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0x00390000
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
	.4byte 0x31493156
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xAE30D638
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
.endobj csHangulKey__Q39textinput8keyboard13cellphonetype
