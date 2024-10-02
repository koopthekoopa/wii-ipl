.include "macros.inc"
.file "RFL_Model.c"

# 0x81330970..0x813309C0 | size: 0x50
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330970 | size: 0x8
.obj "@etb_81330970", local
.hidden "@etb_81330970"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330970"

# extab:0x8 | 0x81330978 | size: 0x8
.obj "@etb_81330978", local
.hidden "@etb_81330978"
	.4byte 0x484A0000
	.4byte 0x00000000
.endobj "@etb_81330978"

# extab:0x10 | 0x81330980 | size: 0x8
.obj "@etb_81330980", local
.hidden "@etb_81330980"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330980"

# extab:0x18 | 0x81330988 | size: 0x8
.obj "@etb_81330988", local
.hidden "@etb_81330988"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330988"

# extab:0x20 | 0x81330990 | size: 0x8
.obj "@etb_81330990", local
.hidden "@etb_81330990"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330990"

# extab:0x28 | 0x81330998 | size: 0x8
.obj "@etb_81330998", local
.hidden "@etb_81330998"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330998"

# extab:0x30 | 0x813309A0 | size: 0x8
.obj "@etb_813309A0", local
.hidden "@etb_813309A0"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_813309A0"

# extab:0x38 | 0x813309A8 | size: 0x8
.obj "@etb_813309A8", local
.hidden "@etb_813309A8"
	.4byte 0x484A0000
	.4byte 0x00000000
.endobj "@etb_813309A8"

# extab:0x40 | 0x813309B0 | size: 0x8
.obj "@etb_813309B0", local
.hidden "@etb_813309B0"
	.4byte 0x400A0000
	.4byte 0x00000000
.endobj "@etb_813309B0"

# extab:0x48 | 0x813309B8 | size: 0x8
.obj "@etb_813309B8", local
.hidden "@etb_813309B8"
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_813309B8"

# 0x813317B8..0x81331830 | size: 0x78
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813317B8 | size: 0xC
.obj "@eti_813317B8", local
.hidden "@eti_813317B8"
	.4byte RFLGetModelBufferSize
	.4byte 0x000000DC
	.4byte "@etb_81330970"
.endobj "@eti_813317B8"

# extabindex:0xC | 0x813317C4 | size: 0xC
.obj "@eti_813317C4", local
.hidden "@eti_813317C4"
	.4byte RFLiInitCharModel
	.4byte 0x00000374
	.4byte "@etb_81330978"
.endobj "@eti_813317C4"

# extabindex:0x18 | 0x813317D0 | size: 0xC
.obj "@eti_813317D0", local
.hidden "@eti_813317D0"
	.4byte RFLSetMtx
	.4byte 0x0000004C
	.4byte "@etb_81330980"
.endobj "@eti_813317D0"

# extabindex:0x24 | 0x813317DC | size: 0xC
.obj "@eti_813317DC", local
.hidden "@eti_813317DC"
	.4byte RFLLoadDrawSetting
	.4byte 0x000002E4
	.4byte "@etb_81330988"
.endobj "@eti_813317DC"

# extabindex:0x30 | 0x813317E8 | size: 0xC
.obj "@eti_813317E8", local
.hidden "@eti_813317E8"
	.4byte RFLLoadMaterialSetting
	.4byte 0x000000C0
	.4byte "@etb_81330990"
.endobj "@eti_813317E8"

# extabindex:0x3C | 0x813317F4 | size: 0xC
.obj "@eti_813317F4", local
.hidden "@eti_813317F4"
	.4byte RFLDrawOpaCore
	.4byte 0x0000050C
	.4byte "@etb_81330998"
.endobj "@eti_813317F4"

# extabindex:0x48 | 0x81331800 | size: 0xC
.obj "@eti_81331800", local
.hidden "@eti_81331800"
	.4byte RFLDrawXluCore
	.4byte 0x00000284
	.4byte "@etb_813309A0"
.endobj "@eti_81331800"

# extabindex:0x54 | 0x8133180C | size: 0xC
.obj "@eti_8133180C", local
.hidden "@eti_8133180C"
	.4byte RFLiInitCharModelRes
	.4byte 0x00000738
	.4byte "@etb_813309A8"
.endobj "@eti_8133180C"

# extabindex:0x60 | 0x81331818 | size: 0xC
.obj "@eti_81331818", local
.hidden "@eti_81331818"
	.4byte RFLiInitShapeRes
	.4byte 0x000005E8
	.4byte "@etb_813309B0"
.endobj "@eti_81331818"

# extabindex:0x6C | 0x81331824 | size: 0xC
.obj "@eti_81331824", local
.hidden "@eti_81331824"
	.4byte RFLiInitTexRes
	.4byte 0x0000011C
	.4byte "@etb_813309B8"
.endobj "@eti_81331824"

# 0x814DF45C..0x814E12C8 | size: 0x1E6C
.text
.balign 4

# .text:0x0 | 0x814DF45C | size: 0xDC
.fn RFLGetModelBufferSize, global
/* 814DF45C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DF460 | 7C 08 02 A6 */	mflr r0
/* 814DF464 | 38 A0 00 01 */	li r5, 0x1
/* 814DF468 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DF46C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814DF470 | 3B E0 00 00 */	li r31, 0x0
/* 814DF474 | 7C A0 F8 30 */	slw r0, r5, r31
/* 814DF478 | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF47C | 41 82 00 08 */	beq .L_814DF484
/* 814DF480 | 3B E0 00 01 */	li r31, 0x1
.L_814DF484:
/* 814DF484 | 38 00 00 01 */	li r0, 0x1
/* 814DF488 | 7C A0 00 30 */	slw r0, r5, r0
/* 814DF48C | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF490 | 41 82 00 08 */	beq .L_814DF498
/* 814DF494 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814DF498:
/* 814DF498 | 38 00 00 02 */	li r0, 0x2
/* 814DF49C | 7C A0 00 30 */	slw r0, r5, r0
/* 814DF4A0 | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF4A4 | 41 82 00 08 */	beq .L_814DF4AC
/* 814DF4A8 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814DF4AC:
/* 814DF4AC | 38 00 00 03 */	li r0, 0x3
/* 814DF4B0 | 7C A0 00 30 */	slw r0, r5, r0
/* 814DF4B4 | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF4B8 | 41 82 00 08 */	beq .L_814DF4C0
/* 814DF4BC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814DF4C0:
/* 814DF4C0 | 38 00 00 04 */	li r0, 0x4
/* 814DF4C4 | 7C A0 00 30 */	slw r0, r5, r0
/* 814DF4C8 | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF4CC | 41 82 00 08 */	beq .L_814DF4D4
/* 814DF4D0 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814DF4D4:
/* 814DF4D4 | 38 00 00 05 */	li r0, 0x5
/* 814DF4D8 | 7C A0 00 30 */	slw r0, r5, r0
/* 814DF4DC | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF4E0 | 41 82 00 08 */	beq .L_814DF4E8
/* 814DF4E4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814DF4E8:
/* 814DF4E8 | 38 00 00 06 */	li r0, 0x6
/* 814DF4EC | 7C A0 00 30 */	slw r0, r5, r0
/* 814DF4F0 | 7C 80 00 39 */	and. r0, r4, r0
/* 814DF4F4 | 41 82 00 08 */	beq .L_814DF4FC
/* 814DF4F8 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814DF4FC:
/* 814DF4FC | 48 00 46 29 */	bl RFLiGetMaskBufSize
/* 814DF500 | 7C 63 F9 D6 */	mullw r3, r3, r31
/* 814DF504 | 57 E4 28 34 */	slwi r4, r31, 5
/* 814DF508 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814DF50C | 38 04 00 1F */	addi r0, r4, 0x1f
/* 814DF510 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 814DF514 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 814DF518 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 814DF51C | 54 00 00 34 */	clrrwi r0, r0, 5
/* 814DF520 | 7C 63 02 14 */	add r3, r3, r0
/* 814DF524 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DF528 | 38 63 82 60 */	subi r3, r3, 0x7da0
/* 814DF52C | 7C 08 03 A6 */	mtlr r0
/* 814DF530 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DF534 | 4E 80 00 20 */	blr
.endfn RFLGetModelBufferSize

# .text:0xDC | 0x814DF538 | size: 0x374
.fn RFLiInitCharModel, global
/* 814DF538 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814DF53C | 7C 08 02 A6 */	mflr r0
/* 814DF540 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814DF544 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 814DF548 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 814DF54C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814DF550 | 48 11 9F 61 */	bl _savegpr_23
/* 814DF554 | 7C DD 33 78 */	mr r29, r6
/* 814DF558 | 90 C3 00 64 */	stw r6, 0x64(r3)
/* 814DF55C | 7C 7F 1B 78 */	mr r31, r3
/* 814DF560 | 7C 9C 23 78 */	mr r28, r4
/* 814DF564 | 7C B7 2B 78 */	mr r23, r5
/* 814DF568 | 7C FE 3B 78 */	mr r30, r7
/* 814DF56C | 7F A3 EB 78 */	mr r3, r29
/* 814DF570 | 48 00 45 B5 */	bl RFLiGetMaskBufSize
/* 814DF574 | 7C 7A 1B 78 */	mr r26, r3
/* 814DF578 | 7F A3 EB 78 */	mr r3, r29
/* 814DF57C | 48 00 45 41 */	bl RFLiGetMaxMaskRsl
/* 814DF580 | 38 80 00 00 */	li r4, 0x0
/* 814DF584 | 38 A0 00 01 */	li r5, 0x1
/* 814DF588 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF58C | 3C D7 00 01 */	addis r6, r23, 0x1
/* 814DF590 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF594 | 92 FF 00 68 */	stw r23, 0x68(r31)
/* 814DF598 | 38 86 82 7F */	subi r4, r6, 0x7d81
/* 814DF59C | 7C 7B 1B 78 */	mr r27, r3
/* 814DF5A0 | 38 00 00 00 */	li r0, 0x0
/* 814DF5A4 | 54 86 00 34 */	clrrwi r6, r4, 5
/* 814DF5A8 | 41 82 00 10 */	beq .L_814DF5B8
/* 814DF5AC | 90 DF 00 6C */	stw r6, 0x6c(r31)
/* 814DF5B0 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF5B4 | 48 00 00 08 */	b .L_814DF5BC
.L_814DF5B8:
/* 814DF5B8 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_814DF5BC:
/* 814DF5BC | 38 80 00 01 */	li r4, 0x1
/* 814DF5C0 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF5C4 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF5C8 | 41 82 00 10 */	beq .L_814DF5D8
/* 814DF5CC | 90 DF 00 70 */	stw r6, 0x70(r31)
/* 814DF5D0 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF5D4 | 48 00 00 08 */	b .L_814DF5DC
.L_814DF5D8:
/* 814DF5D8 | 90 1F 00 70 */	stw r0, 0x70(r31)
.L_814DF5DC:
/* 814DF5DC | 38 80 00 02 */	li r4, 0x2
/* 814DF5E0 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF5E4 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF5E8 | 41 82 00 10 */	beq .L_814DF5F8
/* 814DF5EC | 90 DF 00 74 */	stw r6, 0x74(r31)
/* 814DF5F0 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF5F4 | 48 00 00 08 */	b .L_814DF5FC
.L_814DF5F8:
/* 814DF5F8 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_814DF5FC:
/* 814DF5FC | 38 80 00 03 */	li r4, 0x3
/* 814DF600 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF604 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF608 | 41 82 00 10 */	beq .L_814DF618
/* 814DF60C | 90 DF 00 78 */	stw r6, 0x78(r31)
/* 814DF610 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF614 | 48 00 00 08 */	b .L_814DF61C
.L_814DF618:
/* 814DF618 | 90 1F 00 78 */	stw r0, 0x78(r31)
.L_814DF61C:
/* 814DF61C | 38 80 00 04 */	li r4, 0x4
/* 814DF620 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF624 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF628 | 41 82 00 10 */	beq .L_814DF638
/* 814DF62C | 90 DF 00 7C */	stw r6, 0x7c(r31)
/* 814DF630 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF634 | 48 00 00 08 */	b .L_814DF63C
.L_814DF638:
/* 814DF638 | 90 1F 00 7C */	stw r0, 0x7c(r31)
.L_814DF63C:
/* 814DF63C | 38 80 00 05 */	li r4, 0x5
/* 814DF640 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF644 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF648 | 41 82 00 10 */	beq .L_814DF658
/* 814DF64C | 90 DF 00 80 */	stw r6, 0x80(r31)
/* 814DF650 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF654 | 48 00 00 08 */	b .L_814DF65C
.L_814DF658:
/* 814DF658 | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_814DF65C:
/* 814DF65C | 38 80 00 06 */	li r4, 0x6
/* 814DF660 | 7C A4 20 30 */	slw r4, r5, r4
/* 814DF664 | 7F C4 20 39 */	and. r4, r30, r4
/* 814DF668 | 41 82 00 10 */	beq .L_814DF678
/* 814DF66C | 90 DF 00 84 */	stw r6, 0x84(r31)
/* 814DF670 | 38 C6 00 20 */	addi r6, r6, 0x20
/* 814DF674 | 48 00 00 08 */	b .L_814DF67C
.L_814DF678:
/* 814DF678 | 90 1F 00 84 */	stw r0, 0x84(r31)
.L_814DF67C:
/* 814DF67C | 38 60 00 00 */	li r3, 0x0
/* 814DF680 | 38 80 00 01 */	li r4, 0x1
/* 814DF684 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF688 | 38 A6 00 1F */	addi r5, r6, 0x1f
/* 814DF68C | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF690 | 38 00 00 00 */	li r0, 0x0
/* 814DF694 | 54 A5 00 34 */	clrrwi r5, r5, 5
/* 814DF698 | 41 82 00 10 */	beq .L_814DF6A8
/* 814DF69C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814DF6A0 | 7C A5 D2 14 */	add r5, r5, r26
/* 814DF6A4 | 48 00 00 08 */	b .L_814DF6AC
.L_814DF6A8:
/* 814DF6A8 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_814DF6AC:
/* 814DF6AC | 38 60 00 01 */	li r3, 0x1
/* 814DF6B0 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF6B4 | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF6B8 | 41 82 00 10 */	beq .L_814DF6C8
/* 814DF6BC | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 814DF6C0 | 7C A5 D2 14 */	add r5, r5, r26
/* 814DF6C4 | 48 00 00 08 */	b .L_814DF6CC
.L_814DF6C8:
/* 814DF6C8 | 90 01 00 0C */	stw r0, 0xc(r1)
.L_814DF6CC:
/* 814DF6CC | 38 60 00 02 */	li r3, 0x2
/* 814DF6D0 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF6D4 | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF6D8 | 41 82 00 10 */	beq .L_814DF6E8
/* 814DF6DC | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814DF6E0 | 7C A5 D2 14 */	add r5, r5, r26
/* 814DF6E4 | 48 00 00 08 */	b .L_814DF6EC
.L_814DF6E8:
/* 814DF6E8 | 90 01 00 10 */	stw r0, 0x10(r1)
.L_814DF6EC:
/* 814DF6EC | 38 60 00 03 */	li r3, 0x3
/* 814DF6F0 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF6F4 | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF6F8 | 41 82 00 10 */	beq .L_814DF708
/* 814DF6FC | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 814DF700 | 7C A5 D2 14 */	add r5, r5, r26
/* 814DF704 | 48 00 00 08 */	b .L_814DF70C
.L_814DF708:
/* 814DF708 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_814DF70C:
/* 814DF70C | 38 60 00 04 */	li r3, 0x4
/* 814DF710 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF714 | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF718 | 41 82 00 10 */	beq .L_814DF728
/* 814DF71C | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 814DF720 | 7C A5 D2 14 */	add r5, r5, r26
/* 814DF724 | 48 00 00 08 */	b .L_814DF72C
.L_814DF728:
/* 814DF728 | 90 01 00 18 */	stw r0, 0x18(r1)
.L_814DF72C:
/* 814DF72C | 38 60 00 05 */	li r3, 0x5
/* 814DF730 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF734 | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF738 | 41 82 00 10 */	beq .L_814DF748
/* 814DF73C | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 814DF740 | 7C A5 D2 14 */	add r5, r5, r26
/* 814DF744 | 48 00 00 08 */	b .L_814DF74C
.L_814DF748:
/* 814DF748 | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_814DF74C:
/* 814DF74C | 38 60 00 06 */	li r3, 0x6
/* 814DF750 | 7C 83 18 30 */	slw r3, r4, r3
/* 814DF754 | 7F C3 18 39 */	and. r3, r30, r3
/* 814DF758 | 41 82 00 0C */	beq .L_814DF764
/* 814DF75C | 90 A1 00 20 */	stw r5, 0x20(r1)
/* 814DF760 | 48 00 00 08 */	b .L_814DF768
.L_814DF764:
/* 814DF764 | 90 01 00 20 */	stw r0, 0x20(r1)
.L_814DF768:
/* 814DF768 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 814DF76C | 7F 84 E3 78 */	mr r4, r28
/* 814DF770 | 48 00 0D 1D */	bl RFLiInitCharModelRes
/* 814DF774 | 2C 1D 00 E0 */	cmpwi r29, 0xe0
/* 814DF778 | C3 E2 8C 74 */	lfs f31, lbl_81695074@sda21(r0)
/* 814DF77C | 3B 00 00 00 */	li r24, 0x0
/* 814DF780 | 3A E0 00 00 */	li r23, 0x0
/* 814DF784 | 41 82 00 2C */	beq .L_814DF7B0
/* 814DF788 | 40 80 00 10 */	bge .L_814DF798
/* 814DF78C | 2C 1D 00 60 */	cmpwi r29, 0x60
/* 814DF790 | 41 82 00 14 */	beq .L_814DF7A4
/* 814DF794 | 48 00 00 30 */	b .L_814DF7C4
.L_814DF798:
/* 814DF798 | 2C 1D 01 E0 */	cmpwi r29, 0x1e0
/* 814DF79C | 41 82 00 20 */	beq .L_814DF7BC
/* 814DF7A0 | 48 00 00 24 */	b .L_814DF7C4
.L_814DF7A4:
/* 814DF7A4 | C3 E2 8C 78 */	lfs f31, lbl_81695078@sda21(r0)
/* 814DF7A8 | 3A E0 00 01 */	li r23, 0x1
/* 814DF7AC | 48 00 00 18 */	b .L_814DF7C4
.L_814DF7B0:
/* 814DF7B0 | C3 E2 8C 7C */	lfs f31, lbl_8169507C@sda21(r0)
/* 814DF7B4 | 3A E0 00 01 */	li r23, 0x1
/* 814DF7B8 | 48 00 00 0C */	b .L_814DF7C4
.L_814DF7BC:
/* 814DF7BC | C3 E2 8C 80 */	lfs f31, lbl_81695080@sda21(r0)
/* 814DF7C0 | 3A E0 00 01 */	li r23, 0x1
.L_814DF7C4:
/* 814DF7C4 | 7F FA FB 78 */	mr r26, r31
/* 814DF7C8 | 3B C1 00 08 */	addi r30, r1, 0x8
/* 814DF7CC | 3B 20 00 00 */	li r25, 0x0
.L_814DF7D0:
/* 814DF7D0 | 80 7A 00 6C */	lwz r3, 0x6c(r26)
/* 814DF7D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DF7D8 | 41 82 00 90 */	beq .L_814DF868
/* 814DF7DC | 57 65 04 3E */	clrlwi r5, r27, 16
/* 814DF7E0 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814DF7E4 | 7E EA BB 78 */	mr r10, r23
/* 814DF7E8 | 38 E0 00 05 */	li r7, 0x5
/* 814DF7EC | 7C A6 2B 78 */	mr r6, r5
/* 814DF7F0 | 39 00 00 00 */	li r8, 0x0
/* 814DF7F4 | 39 20 00 00 */	li r9, 0x0
/* 814DF7F8 | 48 06 64 79 */	bl GXInitTexObj
/* 814DF7FC | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814DF800 | 41 82 00 30 */	beq .L_814DF830
/* 814DF804 | C0 22 8C 74 */	lfs f1, lbl_81695074@sda21(r0)
/* 814DF808 | FC 40 F8 90 */	fmr f2, f31
/* 814DF80C | 80 7A 00 6C */	lwz r3, 0x6c(r26)
/* 814DF810 | 38 80 00 05 */	li r4, 0x5
/* 814DF814 | FC 60 08 90 */	fmr f3, f1
/* 814DF818 | 38 A0 00 01 */	li r5, 0x1
/* 814DF81C | 38 C0 00 00 */	li r6, 0x0
/* 814DF820 | 38 E0 00 00 */	li r7, 0x0
/* 814DF824 | 39 00 00 00 */	li r8, 0x0
/* 814DF828 | 48 06 66 9D */	bl GXInitTexObjLOD
/* 814DF82C | 48 00 00 2C */	b .L_814DF858
.L_814DF830:
/* 814DF830 | C0 22 8C 74 */	lfs f1, lbl_81695074@sda21(r0)
/* 814DF834 | 38 80 00 01 */	li r4, 0x1
/* 814DF838 | 80 7A 00 6C */	lwz r3, 0x6c(r26)
/* 814DF83C | 38 A0 00 01 */	li r5, 0x1
/* 814DF840 | FC 40 08 90 */	fmr f2, f1
/* 814DF844 | 38 C0 00 00 */	li r6, 0x0
/* 814DF848 | FC 60 08 90 */	fmr f3, f1
/* 814DF84C | 38 E0 00 00 */	li r7, 0x0
/* 814DF850 | 39 00 00 00 */	li r8, 0x0
/* 814DF854 | 48 06 66 71 */	bl GXInitTexObjLOD
.L_814DF858:
/* 814DF858 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814DF85C | 40 82 00 0C */	bne .L_814DF868
/* 814DF860 | 93 3F 00 60 */	stw r25, 0x60(r31)
/* 814DF864 | 3B 00 00 01 */	li r24, 0x1
.L_814DF868:
/* 814DF868 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814DF86C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 814DF870 | 2C 19 00 07 */	cmpwi r25, 0x7
/* 814DF874 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 814DF878 | 41 80 FF 58 */	blt .L_814DF7D0
/* 814DF87C | 7F 83 E3 78 */	mr r3, r28
/* 814DF880 | 7F A5 EB 78 */	mr r5, r29
/* 814DF884 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814DF888 | 48 00 1B 71 */	bl RFLiMakeTexture
/* 814DF88C | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 814DF890 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814DF894 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 814DF898 | 48 11 9C 65 */	bl _restgpr_23
/* 814DF89C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814DF8A0 | 7C 08 03 A6 */	mtlr r0
/* 814DF8A4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814DF8A8 | 4E 80 00 20 */	blr
.endfn RFLiInitCharModel

# .text:0x450 | 0x814DF8AC | size: 0x4C
.fn RFLSetMtx, global
/* 814DF8AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DF8B0 | 7C 08 02 A6 */	mflr r0
/* 814DF8B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DF8B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814DF8BC | 7C 7F 1B 78 */	mr r31, r3
/* 814DF8C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814DF8C4 | 7C 9E 23 78 */	mr r30, r4
/* 814DF8C8 | 7F C3 F3 78 */	mr r3, r30
/* 814DF8CC | 7F E4 FB 78 */	mr r4, r31
/* 814DF8D0 | 48 06 15 8D */	bl fn_81540E5C
/* 814DF8D4 | 7F C3 F3 78 */	mr r3, r30
/* 814DF8D8 | 38 9F 00 30 */	addi r4, r31, 0x30
/* 814DF8DC | 48 06 17 79 */	bl fn_81541054
/* 814DF8E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DF8E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814DF8E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814DF8EC | 7C 08 03 A6 */	mtlr r0
/* 814DF8F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DF8F4 | 4E 80 00 20 */	blr
.endfn RFLSetMtx

# .text:0x49C | 0x814DF8F8 | size: 0x8
.fn RFLSetExpression, global
/* 814DF8F8 | 90 83 00 60 */	stw r4, 0x60(r3)
/* 814DF8FC | 4E 80 00 20 */	blr
.endfn RFLSetExpression

# .text:0x4A4 | 0x814DF900 | size: 0x14
.fn RFLGetFavoriteColor, global
/* 814DF900 | 3C 80 81 62 */	lis r4, cFavoriteColor@ha
/* 814DF904 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DF908 | 38 84 D3 00 */	addi r4, r4, cFavoriteColor@l
/* 814DF90C | 7C 64 00 2E */	lwzx r3, r4, r0
/* 814DF910 | 4E 80 00 20 */	blr
.endfn RFLGetFavoriteColor

# .text:0x4B8 | 0x814DF914 | size: 0x2C
.fn RFLiGetFacelineColor, global
/* 814DF914 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814DF918 | 38 80 00 00 */	li r4, 0x0
/* 814DF91C | 54 00 B7 7E */	extrwi r0, r0, 3, 19
/* 814DF920 | 28 00 00 06 */	cmplwi r0, 0x6
/* 814DF924 | 40 80 00 08 */	bge .L_814DF92C
/* 814DF928 | 7C 04 03 78 */	mr r4, r0
.L_814DF92C:
/* 814DF92C | 3C 60 81 62 */	lis r3, cFacelineColor@ha
/* 814DF930 | 54 80 10 3A */	slwi r0, r4, 2
/* 814DF934 | 38 63 D2 90 */	addi r3, r3, cFacelineColor@l
/* 814DF938 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814DF93C | 4E 80 00 20 */	blr
.endfn RFLiGetFacelineColor

# .text:0x4E4 | 0x814DF940 | size: 0x2E4
.fn RFLLoadDrawSetting, global
/* 814DF940 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814DF944 | 7C 08 02 A6 */	mflr r0
/* 814DF948 | 38 80 00 00 */	li r4, 0x0
/* 814DF94C | 38 A0 00 01 */	li r5, 0x1
/* 814DF950 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814DF954 | 38 C0 00 00 */	li r6, 0x0
/* 814DF958 | 38 E0 00 00 */	li r7, 0x0
/* 814DF95C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814DF960 | 7C 7F 1B 78 */	mr r31, r3
/* 814DF964 | 38 60 00 04 */	li r3, 0x4
/* 814DF968 | 48 06 78 6D */	bl GXSetAlphaCompare
/* 814DF96C | 38 60 00 01 */	li r3, 0x1
/* 814DF970 | 38 80 00 04 */	li r4, 0x4
/* 814DF974 | 38 A0 00 05 */	li r5, 0x5
/* 814DF978 | 38 C0 00 03 */	li r6, 0x3
/* 814DF97C | 48 06 7D ED */	bl GXSetBlendMode
/* 814DF980 | 38 60 00 01 */	li r3, 0x1
/* 814DF984 | 38 80 00 03 */	li r4, 0x3
/* 814DF988 | 38 A0 00 01 */	li r5, 0x1
/* 814DF98C | 48 06 7E 85 */	bl GXSetZMode
/* 814DF990 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 814DF994 | 48 06 7E B1 */	bl GXSetZCompLoc
/* 814DF998 | 38 60 00 01 */	li r3, 0x1
/* 814DF99C | 48 06 7E 1D */	bl GXSetColorUpdate
/* 814DF9A0 | 38 60 00 01 */	li r3, 0x1
/* 814DF9A4 | 48 06 7E 41 */	bl GXSetAlphaUpdate
/* 814DF9A8 | 38 60 00 00 */	li r3, 0x0
/* 814DF9AC | 48 06 7F 71 */	bl GXSetDither
/* 814DF9B0 | 38 60 00 00 */	li r3, 0x0
/* 814DF9B4 | 38 80 00 00 */	li r4, 0x0
/* 814DF9B8 | 48 06 7F 91 */	bl GXSetDstAlpha
/* 814DF9BC | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 814DF9C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DF9C4 | 41 82 01 C0 */	beq .L_814DFB84
/* 814DF9C8 | 38 60 00 01 */	li r3, 0x1
/* 814DF9CC | 48 06 73 2D */	bl GXSetTevDirect
/* 814DF9D0 | 38 60 00 01 */	li r3, 0x1
/* 814DF9D4 | 38 80 00 00 */	li r4, 0x0
/* 814DF9D8 | 38 A0 00 00 */	li r5, 0x0
/* 814DF9DC | 48 06 77 41 */	bl GXSetTevSwapMode
/* 814DF9E0 | 38 60 00 01 */	li r3, 0x1
/* 814DF9E4 | 38 80 00 FF */	li r4, 0xff
/* 814DF9E8 | 38 A0 00 FF */	li r5, 0xff
/* 814DF9EC | 38 C0 00 04 */	li r6, 0x4
/* 814DF9F0 | 48 06 78 A9 */	bl GXSetTevOrder
/* 814DF9F4 | 38 60 00 01 */	li r3, 0x1
/* 814DF9F8 | 38 80 00 0F */	li r4, 0xf
/* 814DF9FC | 38 A0 00 00 */	li r5, 0x0
/* 814DFA00 | 38 C0 00 0A */	li r6, 0xa
/* 814DFA04 | 38 E0 00 0F */	li r7, 0xf
/* 814DFA08 | 48 06 74 25 */	bl GXSetTevColorIn
/* 814DFA0C | 38 60 00 01 */	li r3, 0x1
/* 814DFA10 | 38 80 00 00 */	li r4, 0x0
/* 814DFA14 | 38 A0 00 00 */	li r5, 0x0
/* 814DFA18 | 38 C0 00 00 */	li r6, 0x0
/* 814DFA1C | 38 E0 00 01 */	li r7, 0x1
/* 814DFA20 | 39 00 00 00 */	li r8, 0x0
/* 814DFA24 | 48 06 74 89 */	bl GXSetTevColorOp
/* 814DFA28 | 38 60 00 01 */	li r3, 0x1
/* 814DFA2C | 38 80 00 07 */	li r4, 0x7
/* 814DFA30 | 38 A0 00 07 */	li r5, 0x7
/* 814DFA34 | 38 C0 00 07 */	li r6, 0x7
/* 814DFA38 | 38 E0 00 00 */	li r7, 0x0
/* 814DFA3C | 48 06 74 31 */	bl GXSetTevAlphaIn
/* 814DFA40 | 38 60 00 01 */	li r3, 0x1
/* 814DFA44 | 38 80 00 00 */	li r4, 0x0
/* 814DFA48 | 38 A0 00 00 */	li r5, 0x0
/* 814DFA4C | 38 C0 00 00 */	li r6, 0x0
/* 814DFA50 | 38 E0 00 01 */	li r7, 0x1
/* 814DFA54 | 39 00 00 00 */	li r8, 0x0
/* 814DFA58 | 48 06 74 AD */	bl GXSetTevAlphaOp
/* 814DFA5C | 3C 60 81 62 */	lis r3, cDefaultDrawCoreSetting2Tev@ha
/* 814DFA60 | 38 63 D2 48 */	addi r3, r3, cDefaultDrawCoreSetting2Tev@l
/* 814DFA64 | 48 00 01 D9 */	bl RFLLoadMaterialSetting
/* 814DFA68 | 48 06 3E 65 */	bl GXClearVtxDesc
/* 814DFA6C | 38 60 00 09 */	li r3, 0x9
/* 814DFA70 | 38 80 00 02 */	li r4, 0x2
/* 814DFA74 | 48 06 3A 19 */	bl GXSetVtxDesc
/* 814DFA78 | 38 60 00 0A */	li r3, 0xa
/* 814DFA7C | 38 80 00 02 */	li r4, 0x2
/* 814DFA80 | 48 06 3A 0D */	bl GXSetVtxDesc
/* 814DFA84 | 38 60 00 0D */	li r3, 0xd
/* 814DFA88 | 38 80 00 02 */	li r4, 0x2
/* 814DFA8C | 48 06 3A 01 */	bl GXSetVtxDesc
/* 814DFA90 | 38 60 00 00 */	li r3, 0x0
/* 814DFA94 | 38 80 00 09 */	li r4, 0x9
/* 814DFA98 | 38 A0 00 01 */	li r5, 0x1
/* 814DFA9C | 38 C0 00 03 */	li r6, 0x3
/* 814DFAA0 | 38 E0 00 08 */	li r7, 0x8
/* 814DFAA4 | 48 06 3E 5D */	bl GXSetVtxAttrFmt
/* 814DFAA8 | 38 60 00 00 */	li r3, 0x0
/* 814DFAAC | 38 80 00 0A */	li r4, 0xa
/* 814DFAB0 | 38 A0 00 00 */	li r5, 0x0
/* 814DFAB4 | 38 C0 00 03 */	li r6, 0x3
/* 814DFAB8 | 38 E0 00 0E */	li r7, 0xe
/* 814DFABC | 48 06 3E 45 */	bl GXSetVtxAttrFmt
/* 814DFAC0 | 38 60 00 00 */	li r3, 0x0
/* 814DFAC4 | 38 80 00 0D */	li r4, 0xd
/* 814DFAC8 | 38 A0 00 01 */	li r5, 0x1
/* 814DFACC | 38 C0 00 03 */	li r6, 0x3
/* 814DFAD0 | 38 E0 00 0D */	li r7, 0xd
/* 814DFAD4 | 48 06 3E 2D */	bl GXSetVtxAttrFmt
/* 814DFAD8 | 38 60 00 01 */	li r3, 0x1
/* 814DFADC | 48 06 44 81 */	bl GXSetNumTexGens
/* 814DFAE0 | 38 60 00 01 */	li r3, 0x1
/* 814DFAE4 | 48 06 5E E1 */	bl GXSetNumChans
/* 814DFAE8 | 80 FF 00 04 */	lwz r7, 0x4(r31)
/* 814DFAEC | 38 60 00 00 */	li r3, 0x0
/* 814DFAF0 | 81 1F 00 08 */	lwz r8, 0x8(r31)
/* 814DFAF4 | 38 80 00 01 */	li r4, 0x1
/* 814DFAF8 | 81 3F 00 0C */	lwz r9, 0xc(r31)
/* 814DFAFC | 38 A0 00 00 */	li r5, 0x0
/* 814DFB00 | 38 C0 00 00 */	li r6, 0x0
/* 814DFB04 | 48 06 5E E5 */	bl GXSetChanCtrl
/* 814DFB08 | 38 60 00 02 */	li r3, 0x2
/* 814DFB0C | 38 80 00 00 */	li r4, 0x0
/* 814DFB10 | 38 A0 00 00 */	li r5, 0x0
/* 814DFB14 | 38 C0 00 00 */	li r6, 0x0
/* 814DFB18 | 38 E0 00 00 */	li r7, 0x0
/* 814DFB1C | 39 00 00 00 */	li r8, 0x0
/* 814DFB20 | 39 20 00 02 */	li r9, 0x2
/* 814DFB24 | 48 06 5E C5 */	bl GXSetChanCtrl
/* 814DFB28 | 88 FF 00 10 */	lbz r7, 0x10(r31)
/* 814DFB2C | 38 81 00 0C */	addi r4, r1, 0xc
/* 814DFB30 | 88 DF 00 11 */	lbz r6, 0x11(r31)
/* 814DFB34 | 38 60 00 00 */	li r3, 0x0
/* 814DFB38 | 88 BF 00 12 */	lbz r5, 0x12(r31)
/* 814DFB3C | 88 1F 00 13 */	lbz r0, 0x13(r31)
/* 814DFB40 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 814DFB44 | 98 C1 00 0D */	stb r6, 0xd(r1)
/* 814DFB48 | 98 A1 00 0E */	stb r5, 0xe(r1)
/* 814DFB4C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 814DFB50 | 48 06 5C C5 */	bl GXSetChanAmbColor
/* 814DFB54 | 88 E2 8C 70 */	lbz r7, cWhite@sda21(r0)
/* 814DFB58 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814DFB5C | 88 C2 8C 71 */	lbz r6, cWhite+0x1@sda21(r0)
/* 814DFB60 | 38 60 00 00 */	li r3, 0x0
/* 814DFB64 | 88 A2 8C 72 */	lbz r5, cWhite+0x2@sda21(r0)
/* 814DFB68 | 88 02 8C 73 */	lbz r0, cWhite+0x3@sda21(r0)
/* 814DFB6C | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814DFB70 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814DFB74 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814DFB78 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814DFB7C | 48 06 5D 71 */	bl GXSetChanMatColor
/* 814DFB80 | 48 00 00 90 */	b .L_814DFC10
.L_814DFB84:
/* 814DFB84 | 3C 60 81 62 */	lis r3, cDefaultDrawCoreSetting1Tev@ha
/* 814DFB88 | 38 63 D2 6C */	addi r3, r3, cDefaultDrawCoreSetting1Tev@l
/* 814DFB8C | 48 00 00 B1 */	bl RFLLoadMaterialSetting
/* 814DFB90 | 48 06 3D 3D */	bl GXClearVtxDesc
/* 814DFB94 | 38 60 00 09 */	li r3, 0x9
/* 814DFB98 | 38 80 00 02 */	li r4, 0x2
/* 814DFB9C | 48 06 38 F1 */	bl GXSetVtxDesc
/* 814DFBA0 | 38 60 00 0A */	li r3, 0xa
/* 814DFBA4 | 38 80 00 02 */	li r4, 0x2
/* 814DFBA8 | 48 06 38 E5 */	bl GXSetVtxDesc
/* 814DFBAC | 38 60 00 0D */	li r3, 0xd
/* 814DFBB0 | 38 80 00 02 */	li r4, 0x2
/* 814DFBB4 | 48 06 38 D9 */	bl GXSetVtxDesc
/* 814DFBB8 | 38 60 00 00 */	li r3, 0x0
/* 814DFBBC | 38 80 00 09 */	li r4, 0x9
/* 814DFBC0 | 38 A0 00 01 */	li r5, 0x1
/* 814DFBC4 | 38 C0 00 03 */	li r6, 0x3
/* 814DFBC8 | 38 E0 00 08 */	li r7, 0x8
/* 814DFBCC | 48 06 3D 35 */	bl GXSetVtxAttrFmt
/* 814DFBD0 | 38 60 00 00 */	li r3, 0x0
/* 814DFBD4 | 38 80 00 0A */	li r4, 0xa
/* 814DFBD8 | 38 A0 00 00 */	li r5, 0x0
/* 814DFBDC | 38 C0 00 03 */	li r6, 0x3
/* 814DFBE0 | 38 E0 00 0E */	li r7, 0xe
/* 814DFBE4 | 48 06 3D 1D */	bl GXSetVtxAttrFmt
/* 814DFBE8 | 38 60 00 00 */	li r3, 0x0
/* 814DFBEC | 38 80 00 0D */	li r4, 0xd
/* 814DFBF0 | 38 A0 00 01 */	li r5, 0x1
/* 814DFBF4 | 38 C0 00 03 */	li r6, 0x3
/* 814DFBF8 | 38 E0 00 0D */	li r7, 0xd
/* 814DFBFC | 48 06 3D 05 */	bl GXSetVtxAttrFmt
/* 814DFC00 | 38 60 00 01 */	li r3, 0x1
/* 814DFC04 | 48 06 43 59 */	bl GXSetNumTexGens
/* 814DFC08 | 38 60 00 00 */	li r3, 0x0
/* 814DFC0C | 48 06 5D B9 */	bl GXSetNumChans
.L_814DFC10:
/* 814DFC10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DFC14 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814DFC18 | 7C 08 03 A6 */	mtlr r0
/* 814DFC1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DFC20 | 4E 80 00 20 */	blr
.endfn RFLLoadDrawSetting

# .text:0x7C8 | 0x814DFC24 | size: 0xC
.fn RFLDrawOpa, global
/* 814DFC24 | 3C 80 81 62 */	lis r4, cDefaultDrawCoreSetting2Tev@ha
/* 814DFC28 | 38 84 D2 48 */	addi r4, r4, cDefaultDrawCoreSetting2Tev@l
/* 814DFC2C | 48 00 00 D0 */	b RFLDrawOpaCore
.endfn RFLDrawOpa

# .text:0x7D4 | 0x814DFC30 | size: 0xC
.fn RFLDrawXlu, global
/* 814DFC30 | 3C 80 81 62 */	lis r4, cDefaultDrawCoreSetting2Tev@ha
/* 814DFC34 | 38 84 D2 48 */	addi r4, r4, cDefaultDrawCoreSetting2Tev@l
/* 814DFC38 | 48 00 05 D0 */	b RFLDrawXluCore
.endfn RFLDrawXlu

# .text:0x7E0 | 0x814DFC3C | size: 0xC0
.fn RFLLoadMaterialSetting, global
/* 814DFC3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DFC40 | 7C 08 02 A6 */	mflr r0
/* 814DFC44 | 38 80 00 00 */	li r4, 0x0
/* 814DFC48 | 38 A0 00 01 */	li r5, 0x1
/* 814DFC4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DFC50 | 38 C0 00 02 */	li r6, 0x2
/* 814DFC54 | 38 E0 00 03 */	li r7, 0x3
/* 814DFC58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814DFC5C | 7C 7F 1B 78 */	mr r31, r3
/* 814DFC60 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814DFC64 | 48 06 74 F5 */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 814DFC68 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814DFC6C | 38 80 00 00 */	li r4, 0x0
/* 814DFC70 | 38 A0 00 03 */	li r5, 0x3
/* 814DFC74 | 38 C0 00 02 */	li r6, 0x2
/* 814DFC78 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814DFC7C | 38 E0 00 01 */	li r7, 0x1
/* 814DFC80 | 48 06 74 D9 */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 814DFC84 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 814DFC88 | 48 06 77 6D */	bl GXSetNumTevStages
/* 814DFC8C | 38 60 00 00 */	li r3, 0x0
/* 814DFC90 | 48 06 70 69 */	bl GXSetTevDirect
/* 814DFC94 | 81 1F 00 18 */	lwz r8, 0x18(r31)
/* 814DFC98 | 38 60 00 00 */	li r3, 0x0
/* 814DFC9C | 38 80 00 00 */	li r4, 0x0
/* 814DFCA0 | 38 A0 00 00 */	li r5, 0x0
/* 814DFCA4 | 38 C0 00 00 */	li r6, 0x0
/* 814DFCA8 | 38 E0 00 01 */	li r7, 0x1
/* 814DFCAC | 48 06 72 59 */	bl GXSetTevAlphaOp
/* 814DFCB0 | 81 1F 00 18 */	lwz r8, 0x18(r31)
/* 814DFCB4 | 38 60 00 00 */	li r3, 0x0
/* 814DFCB8 | 38 80 00 00 */	li r4, 0x0
/* 814DFCBC | 38 A0 00 00 */	li r5, 0x0
/* 814DFCC0 | 38 C0 00 00 */	li r6, 0x0
/* 814DFCC4 | 38 E0 00 01 */	li r7, 0x1
/* 814DFCC8 | 48 06 71 E5 */	bl GXSetTevColorOp
/* 814DFCCC | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 814DFCD0 | 38 60 00 00 */	li r3, 0x0
/* 814DFCD4 | 38 84 00 0C */	addi r4, r4, 0xc
/* 814DFCD8 | 48 06 73 A5 */	bl GXSetTevKColorSel
/* 814DFCDC | 38 60 00 00 */	li r3, 0x0
/* 814DFCE0 | 38 80 00 00 */	li r4, 0x0
/* 814DFCE4 | 48 06 73 E9 */	bl GXSetTevKAlphaSel
/* 814DFCE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DFCEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814DFCF0 | 7C 08 03 A6 */	mtlr r0
/* 814DFCF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DFCF8 | 4E 80 00 20 */	blr
.endfn RFLLoadMaterialSetting

# .text:0x8A0 | 0x814DFCFC | size: 0x50C
.fn RFLDrawOpaCore, global
/* 814DFCFC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814DFD00 | 7C 08 02 A6 */	mflr r0
/* 814DFD04 | 38 A0 00 07 */	li r5, 0x7
/* 814DFD08 | 38 C0 00 07 */	li r6, 0x7
/* 814DFD0C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814DFD10 | 38 E0 00 06 */	li r7, 0x6
/* 814DFD14 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814DFD18 | 3F E0 81 62 */	lis r31, cDefaultDrawCoreSetting2Tev@ha
/* 814DFD1C | 3B FF D2 48 */	addi r31, r31, cDefaultDrawCoreSetting2Tev@l
/* 814DFD20 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814DFD24 | 83 C3 00 68 */	lwz r30, 0x68(r3)
/* 814DFD28 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814DFD2C | 7C 9D 23 78 */	mr r29, r4
/* 814DFD30 | 38 80 00 07 */	li r4, 0x7
/* 814DFD34 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814DFD38 | 7C 7C 1B 78 */	mr r28, r3
/* 814DFD3C | 38 60 00 00 */	li r3, 0x0
/* 814DFD40 | 48 06 71 2D */	bl GXSetTevAlphaIn
/* 814DFD44 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 814DFD48 | 38 60 00 00 */	li r3, 0x0
/* 814DFD4C | 7C 85 23 78 */	mr r5, r4
/* 814DFD50 | 48 06 73 CD */	bl GXSetTevSwapMode
/* 814DFD54 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 814DFD58 | 38 60 00 00 */	li r3, 0x0
/* 814DFD5C | 7C 85 23 78 */	mr r5, r4
/* 814DFD60 | 48 06 73 BD */	bl GXSetTevSwapMode
/* 814DFD64 | 88 1D 00 20 */	lbz r0, 0x20(r29)
/* 814DFD68 | 38 60 00 02 */	li r3, 0x2
/* 814DFD6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFD70 | 41 82 00 08 */	beq .L_814DFD78
/* 814DFD74 | 38 60 00 01 */	li r3, 0x1
.L_814DFD78:
/* 814DFD78 | 48 06 4F 45 */	bl GXSetCullMode
/* 814DFD7C | 80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 814DFD80 | 7F 83 E3 78 */	mr r3, r28
/* 814DFD84 | 48 06 7F 9D */	bl GXLoadPosMtxImm
/* 814DFD88 | 80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 814DFD8C | 38 7C 00 30 */	addi r3, r28, 0x30
/* 814DFD90 | 48 06 7F E1 */	bl GXLoadNrmMtxImm
/* 814DFD94 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 814DFD98 | 48 06 80 31 */	bl GXSetCurrentMtx
/* 814DFD9C | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814DFDA0 | 38 80 00 01 */	li r4, 0x1
/* 814DFDA4 | 38 A0 00 00 */	li r5, 0x0
/* 814DFDA8 | 38 C0 00 3C */	li r6, 0x3c
/* 814DFDAC | 38 E0 00 00 */	li r7, 0x0
/* 814DFDB0 | 39 00 00 7D */	li r8, 0x7d
/* 814DFDB4 | 48 06 3F 81 */	bl GXSetTexCoordGen2
/* 814DFDB8 | 38 60 00 0D */	li r3, 0xd
/* 814DFDBC | 38 80 00 00 */	li r4, 0x0
/* 814DFDC0 | 48 06 36 CD */	bl GXSetVtxDesc
/* 814DFDC4 | 38 60 00 00 */	li r3, 0x0
/* 814DFDC8 | 38 80 00 FF */	li r4, 0xff
/* 814DFDCC | 38 A0 00 FF */	li r5, 0xff
/* 814DFDD0 | 38 C0 00 FF */	li r6, 0xff
/* 814DFDD4 | 48 06 74 C5 */	bl GXSetTevOrder
/* 814DFDD8 | 38 60 00 00 */	li r3, 0x0
/* 814DFDDC | 38 80 00 0F */	li r4, 0xf
/* 814DFDE0 | 38 A0 00 0F */	li r5, 0xf
/* 814DFDE4 | 38 C0 00 0F */	li r6, 0xf
/* 814DFDE8 | 38 E0 00 0E */	li r7, 0xe
/* 814DFDEC | 48 06 70 41 */	bl GXSetTevColorIn
/* 814DFDF0 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814DFDF4 | A0 03 82 3E */	lhz r0, -0x7dc2(r3)
/* 814DFDF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFDFC | 41 82 00 70 */	beq .L_814DFE6C
/* 814DFE00 | 88 A3 82 48 */	lbz r5, -0x7db8(r3)
/* 814DFE04 | 38 1F 00 80 */	addi r0, r31, 0x80
/* 814DFE08 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 814DFE0C | 38 81 00 18 */	addi r4, r1, 0x18
/* 814DFE10 | 54 A5 10 3A */	slwi r5, r5, 2
/* 814DFE14 | 7D 00 2A 14 */	add r8, r0, r5
/* 814DFE18 | 7C E5 00 AE */	lbzx r7, r5, r0
/* 814DFE1C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814DFE20 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814DFE24 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814DFE28 | 98 E1 00 18 */	stb r7, 0x18(r1)
/* 814DFE2C | 98 C1 00 19 */	stb r6, 0x19(r1)
/* 814DFE30 | 98 A1 00 1A */	stb r5, 0x1a(r1)
/* 814DFE34 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 814DFE38 | 48 06 71 E9 */	bl GXSetTevKColor
/* 814DFE3C | 38 9E 77 C6 */	addi r4, r30, 0x77c6
/* 814DFE40 | 38 60 00 09 */	li r3, 0x9
/* 814DFE44 | 38 A0 00 06 */	li r5, 0x6
/* 814DFE48 | 48 06 3E 9D */	bl GXSetArray
/* 814DFE4C | 38 9E 78 B6 */	addi r4, r30, 0x78b6
/* 814DFE50 | 38 60 00 0A */	li r3, 0xa
/* 814DFE54 | 38 A0 00 06 */	li r5, 0x6
/* 814DFE58 | 48 06 3E 8D */	bl GXSetArray
/* 814DFE5C | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFE60 | 38 7E 09 00 */	addi r3, r30, 0x900
/* 814DFE64 | A0 84 82 3E */	lhz r4, -0x7dc2(r4)
/* 814DFE68 | 48 06 7D 11 */	bl GXCallDisplayList
.L_814DFE6C:
/* 814DFE6C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814DFE70 | 38 1F 00 48 */	addi r0, r31, 0x48
/* 814DFE74 | 88 A3 82 46 */	lbz r5, -0x7dba(r3)
/* 814DFE78 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814DFE7C | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 814DFE80 | 54 A5 10 3A */	slwi r5, r5, 2
/* 814DFE84 | 7D 00 2A 14 */	add r8, r0, r5
/* 814DFE88 | 7C E5 00 AE */	lbzx r7, r5, r0
/* 814DFE8C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814DFE90 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814DFE94 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814DFE98 | 98 E1 00 14 */	stb r7, 0x14(r1)
/* 814DFE9C | 98 C1 00 15 */	stb r6, 0x15(r1)
/* 814DFEA0 | 98 A1 00 16 */	stb r5, 0x16(r1)
/* 814DFEA4 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 814DFEA8 | 48 06 71 79 */	bl GXSetTevKColor
/* 814DFEAC | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814DFEB0 | A0 03 82 34 */	lhz r0, -0x7dcc(r3)
/* 814DFEB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFEB8 | 41 82 00 34 */	beq .L_814DFEEC
/* 814DFEBC | 38 9E 66 80 */	addi r4, r30, 0x6680
/* 814DFEC0 | 38 60 00 09 */	li r3, 0x9
/* 814DFEC4 | 38 A0 00 06 */	li r5, 0x6
/* 814DFEC8 | 48 06 3E 1D */	bl GXSetArray
/* 814DFECC | 38 9E 67 0A */	addi r4, r30, 0x670a
/* 814DFED0 | 38 60 00 0A */	li r3, 0xa
/* 814DFED4 | 38 A0 00 06 */	li r5, 0x6
/* 814DFED8 | 48 06 3E 0D */	bl GXSetArray
/* 814DFEDC | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFEE0 | 7F C3 F3 78 */	mr r3, r30
/* 814DFEE4 | A0 84 82 34 */	lhz r4, -0x7dcc(r4)
/* 814DFEE8 | 48 06 7C 91 */	bl GXCallDisplayList
.L_814DFEEC:
/* 814DFEEC | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814DFEF0 | 80 03 82 4C */	lwz r0, -0x7db4(r3)
/* 814DFEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFEF8 | 41 82 00 1C */	beq .L_814DFF14
/* 814DFEFC | 88 1D 00 20 */	lbz r0, 0x20(r29)
/* 814DFF00 | 38 60 00 01 */	li r3, 0x1
/* 814DFF04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFF08 | 41 82 00 08 */	beq .L_814DFF10
/* 814DFF0C | 38 60 00 02 */	li r3, 0x2
.L_814DFF10:
/* 814DFF10 | 48 06 4D AD */	bl GXSetCullMode
.L_814DFF14:
/* 814DFF14 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814DFF18 | A0 03 82 3C */	lhz r0, -0x7dc4(r3)
/* 814DFF1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFF20 | 41 82 00 38 */	beq .L_814DFF58
/* 814DFF24 | 80 83 82 28 */	lwz r4, -0x7dd8(r3)
/* 814DFF28 | 38 60 00 09 */	li r3, 0x9
/* 814DFF2C | 38 A0 00 06 */	li r5, 0x6
/* 814DFF30 | 48 06 3D B5 */	bl GXSetArray
/* 814DFF34 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFF38 | 38 60 00 0A */	li r3, 0xa
/* 814DFF3C | 80 84 82 2C */	lwz r4, -0x7dd4(r4)
/* 814DFF40 | 38 A0 00 06 */	li r5, 0x6
/* 814DFF44 | 48 06 3D A1 */	bl GXSetArray
/* 814DFF48 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFF4C | 80 64 82 30 */	lwz r3, -0x7dd0(r4)
/* 814DFF50 | A0 84 82 3C */	lhz r4, -0x7dc4(r4)
/* 814DFF54 | 48 06 7C 25 */	bl GXCallDisplayList
.L_814DFF58:
/* 814DFF58 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814DFF5C | A0 03 82 38 */	lhz r0, -0x7dc8(r3)
/* 814DFF60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DFF64 | 41 82 00 78 */	beq .L_814DFFDC
/* 814DFF68 | 88 A3 82 47 */	lbz r5, -0x7db9(r3)
/* 814DFF6C | 38 1F 00 60 */	addi r0, r31, 0x60
/* 814DFF70 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 814DFF74 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814DFF78 | 54 A5 10 3A */	slwi r5, r5, 2
/* 814DFF7C | 7D 00 2A 14 */	add r8, r0, r5
/* 814DFF80 | 7C E5 00 AE */	lbzx r7, r5, r0
/* 814DFF84 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814DFF88 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814DFF8C | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814DFF90 | 98 E1 00 10 */	stb r7, 0x10(r1)
/* 814DFF94 | 98 C1 00 11 */	stb r6, 0x11(r1)
/* 814DFF98 | 98 A1 00 12 */	stb r5, 0x12(r1)
/* 814DFF9C | 98 01 00 13 */	stb r0, 0x13(r1)
/* 814DFFA0 | 48 06 70 81 */	bl GXSetTevKColor
/* 814DFFA4 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFFA8 | 38 60 00 09 */	li r3, 0x9
/* 814DFFAC | 80 84 82 1C */	lwz r4, -0x7de4(r4)
/* 814DFFB0 | 38 A0 00 06 */	li r5, 0x6
/* 814DFFB4 | 48 06 3D 31 */	bl GXSetArray
/* 814DFFB8 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFFBC | 38 60 00 0A */	li r3, 0xa
/* 814DFFC0 | 80 84 82 20 */	lwz r4, -0x7de0(r4)
/* 814DFFC4 | 38 A0 00 06 */	li r5, 0x6
/* 814DFFC8 | 48 06 3D 1D */	bl GXSetArray
/* 814DFFCC | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814DFFD0 | 80 64 82 24 */	lwz r3, -0x7ddc(r4)
/* 814DFFD4 | A0 84 82 38 */	lhz r4, -0x7dc8(r4)
/* 814DFFD8 | 48 06 7B A1 */	bl GXCallDisplayList
.L_814DFFDC:
/* 814DFFDC | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814DFFE0 | 38 60 00 00 */	li r3, 0x0
/* 814DFFE4 | 80 BD 00 08 */	lwz r5, 0x8(r29)
/* 814DFFE8 | 38 C0 00 FF */	li r6, 0xff
/* 814DFFEC | 48 06 72 AD */	bl GXSetTevOrder
/* 814DFFF0 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814DFFF4 | 38 80 00 01 */	li r4, 0x1
/* 814DFFF8 | 38 A0 00 04 */	li r5, 0x4
/* 814DFFFC | 38 C0 00 3C */	li r6, 0x3c
/* 814E0000 | 38 E0 00 00 */	li r7, 0x0
/* 814E0004 | 39 00 00 7D */	li r8, 0x7d
/* 814E0008 | 48 06 3D 2D */	bl GXSetTexCoordGen2
/* 814E000C | 38 60 00 0D */	li r3, 0xd
/* 814E0010 | 38 80 00 02 */	li r4, 0x2
/* 814E0014 | 48 06 34 79 */	bl GXSetVtxDesc
/* 814E0018 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814E001C | A0 03 82 3A */	lhz r0, -0x7dc6(r3)
/* 814E0020 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E0024 | 41 82 00 E4 */	beq .L_814E0108
/* 814E0028 | 38 60 00 00 */	li r3, 0x0
/* 814E002C | 38 80 00 0F */	li r4, 0xf
/* 814E0030 | 38 A0 00 0E */	li r5, 0xe
/* 814E0034 | 38 C0 00 08 */	li r6, 0x8
/* 814E0038 | 38 E0 00 0E */	li r7, 0xe
/* 814E003C | 48 06 6D F1 */	bl GXSetTevColorIn
/* 814E0040 | 81 1D 00 18 */	lwz r8, 0x18(r29)
/* 814E0044 | 38 60 00 00 */	li r3, 0x0
/* 814E0048 | 38 80 00 00 */	li r4, 0x0
/* 814E004C | 38 A0 00 00 */	li r5, 0x0
/* 814E0050 | 38 C0 00 03 */	li r6, 0x3
/* 814E0054 | 38 E0 00 01 */	li r7, 0x1
/* 814E0058 | 48 06 6E 55 */	bl GXSetTevColorOp
/* 814E005C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814E0060 | 38 1F 00 B8 */	addi r0, r31, 0xb8
/* 814E0064 | 88 A3 82 4A */	lbz r5, -0x7db6(r3)
/* 814E0068 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814E006C | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 814E0070 | 54 A5 10 3A */	slwi r5, r5, 2
/* 814E0074 | 7D 00 2A 14 */	add r8, r0, r5
/* 814E0078 | 7C E5 00 AE */	lbzx r7, r5, r0
/* 814E007C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E0080 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E0084 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E0088 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 814E008C | 98 C1 00 0D */	stb r6, 0xd(r1)
/* 814E0090 | 98 A1 00 0E */	stb r5, 0xe(r1)
/* 814E0094 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 814E0098 | 48 06 6F 89 */	bl GXSetTevKColor
/* 814E009C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814E00A0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814E00A4 | 38 63 81 BC */	subi r3, r3, 0x7e44
/* 814E00A8 | 48 06 61 05 */	bl GXLoadTexObj
/* 814E00AC | 38 9E 67 94 */	addi r4, r30, 0x6794
/* 814E00B0 | 38 60 00 09 */	li r3, 0x9
/* 814E00B4 | 38 A0 00 06 */	li r5, 0x6
/* 814E00B8 | 48 06 3C 2D */	bl GXSetArray
/* 814E00BC | 38 9E 6B A2 */	addi r4, r30, 0x6ba2
/* 814E00C0 | 38 60 00 0A */	li r3, 0xa
/* 814E00C4 | 38 A0 00 06 */	li r5, 0x6
/* 814E00C8 | 48 06 3C 1D */	bl GXSetArray
/* 814E00CC | 38 9E 71 66 */	addi r4, r30, 0x7166
/* 814E00D0 | 38 60 00 0D */	li r3, 0xd
/* 814E00D4 | 38 A0 00 04 */	li r5, 0x4
/* 814E00D8 | 48 06 3C 0D */	bl GXSetArray
/* 814E00DC | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814E00E0 | 38 7E 00 C0 */	addi r3, r30, 0xc0
/* 814E00E4 | A0 84 82 3A */	lhz r4, -0x7dc6(r4)
/* 814E00E8 | 48 06 7A 91 */	bl GXCallDisplayList
/* 814E00EC | 81 1D 00 18 */	lwz r8, 0x18(r29)
/* 814E00F0 | 38 60 00 00 */	li r3, 0x0
/* 814E00F4 | 38 80 00 00 */	li r4, 0x0
/* 814E00F8 | 38 A0 00 00 */	li r5, 0x0
/* 814E00FC | 38 C0 00 00 */	li r6, 0x0
/* 814E0100 | 38 E0 00 01 */	li r7, 0x1
/* 814E0104 | 48 06 6D A9 */	bl GXSetTevColorOp
.L_814E0108:
/* 814E0108 | 38 60 00 00 */	li r3, 0x0
/* 814E010C | 38 80 00 0E */	li r4, 0xe
/* 814E0110 | 38 A0 00 08 */	li r5, 0x8
/* 814E0114 | 38 C0 00 09 */	li r6, 0x9
/* 814E0118 | 38 E0 00 0F */	li r7, 0xf
/* 814E011C | 48 06 6D 11 */	bl GXSetTevColorIn
/* 814E0120 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814E0124 | 38 1F 00 48 */	addi r0, r31, 0x48
/* 814E0128 | 88 A3 82 46 */	lbz r5, -0x7dba(r3)
/* 814E012C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E0130 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 814E0134 | 54 A5 10 3A */	slwi r5, r5, 2
/* 814E0138 | 7D 00 2A 14 */	add r8, r0, r5
/* 814E013C | 7C E5 00 AE */	lbzx r7, r5, r0
/* 814E0140 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E0144 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E0148 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E014C | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E0150 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E0154 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E0158 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E015C | 48 06 6E C5 */	bl GXSetTevKColor
/* 814E0160 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 814E0164 | 38 60 00 00 */	li r3, 0x0
/* 814E0168 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 814E016C | 48 06 6F B1 */	bl GXSetTevSwapMode
/* 814E0170 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814E0174 | 80 03 82 4C */	lwz r0, -0x7db4(r3)
/* 814E0178 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E017C | 41 82 00 1C */	beq .L_814E0198
/* 814E0180 | 88 1D 00 20 */	lbz r0, 0x20(r29)
/* 814E0184 | 38 60 00 02 */	li r3, 0x2
/* 814E0188 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E018C | 41 82 00 08 */	beq .L_814E0194
/* 814E0190 | 38 60 00 01 */	li r3, 0x1
.L_814E0194:
/* 814E0194 | 48 06 4B 29 */	bl GXSetCullMode
.L_814E0198:
/* 814E0198 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814E019C | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814E01A0 | 38 63 81 9C */	subi r3, r3, 0x7e64
/* 814E01A4 | 48 06 60 09 */	bl GXLoadTexObj
/* 814E01A8 | 38 9E 72 E2 */	addi r4, r30, 0x72e2
/* 814E01AC | 38 60 00 09 */	li r3, 0x9
/* 814E01B0 | 38 A0 00 06 */	li r5, 0x6
/* 814E01B4 | 48 06 3B 31 */	bl GXSetArray
/* 814E01B8 | 38 9E 74 6E */	addi r4, r30, 0x746e
/* 814E01BC | 38 60 00 0A */	li r3, 0xa
/* 814E01C0 | 38 A0 00 06 */	li r5, 0x6
/* 814E01C4 | 48 06 3B 21 */	bl GXSetArray
/* 814E01C8 | 38 9E 75 FA */	addi r4, r30, 0x75fa
/* 814E01CC | 38 60 00 0D */	li r3, 0xd
/* 814E01D0 | 38 A0 00 04 */	li r5, 0x4
/* 814E01D4 | 48 06 3B 11 */	bl GXSetArray
/* 814E01D8 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814E01DC | 38 7E 06 20 */	addi r3, r30, 0x620
/* 814E01E0 | A0 84 82 36 */	lhz r4, -0x7dca(r4)
/* 814E01E4 | 48 06 79 95 */	bl GXCallDisplayList
/* 814E01E8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814E01EC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814E01F0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814E01F4 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814E01F8 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814E01FC | 7C 08 03 A6 */	mtlr r0
/* 814E0200 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814E0204 | 4E 80 00 20 */	blr
.endfn RFLDrawOpaCore

# .text:0xDAC | 0x814E0208 | size: 0x284
.fn RFLDrawXluCore, global
/* 814E0208 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E020C | 7C 08 02 A6 */	mflr r0
/* 814E0210 | 38 C0 00 FF */	li r6, 0xff
/* 814E0214 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E0218 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E021C | 83 E3 00 68 */	lwz r31, 0x68(r3)
/* 814E0220 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E0224 | 7C 9E 23 78 */	mr r30, r4
/* 814E0228 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814E022C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E0230 | 7C 7D 1B 78 */	mr r29, r3
/* 814E0234 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 814E0238 | 38 60 00 00 */	li r3, 0x0
/* 814E023C | 48 06 70 5D */	bl GXSetTevOrder
/* 814E0240 | 38 60 00 00 */	li r3, 0x0
/* 814E0244 | 38 80 00 07 */	li r4, 0x7
/* 814E0248 | 38 A0 00 07 */	li r5, 0x7
/* 814E024C | 38 C0 00 07 */	li r6, 0x7
/* 814E0250 | 38 E0 00 04 */	li r7, 0x4
/* 814E0254 | 48 06 6C 19 */	bl GXSetTevAlphaIn
/* 814E0258 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 814E025C | 38 60 00 00 */	li r3, 0x0
/* 814E0260 | 7C 85 23 78 */	mr r5, r4
/* 814E0264 | 48 06 6E B9 */	bl GXSetTevSwapMode
/* 814E0268 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 814E026C | 7F A3 EB 78 */	mr r3, r29
/* 814E0270 | 48 06 7A B1 */	bl GXLoadPosMtxImm
/* 814E0274 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 814E0278 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 814E027C | 48 06 7A F5 */	bl GXLoadNrmMtxImm
/* 814E0280 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 814E0284 | 48 06 7B 45 */	bl GXSetCurrentMtx
/* 814E0288 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814E028C | 38 80 00 01 */	li r4, 0x1
/* 814E0290 | 38 A0 00 04 */	li r5, 0x4
/* 814E0294 | 38 C0 00 3C */	li r6, 0x3c
/* 814E0298 | 38 E0 00 00 */	li r7, 0x0
/* 814E029C | 39 00 00 7D */	li r8, 0x7d
/* 814E02A0 | 48 06 3A 95 */	bl GXSetTexCoordGen2
/* 814E02A4 | 38 60 00 00 */	li r3, 0x0
/* 814E02A8 | 38 80 00 0F */	li r4, 0xf
/* 814E02AC | 38 A0 00 0F */	li r5, 0xf
/* 814E02B0 | 38 C0 00 0F */	li r6, 0xf
/* 814E02B4 | 38 E0 00 08 */	li r7, 0x8
/* 814E02B8 | 48 06 6B 75 */	bl GXSetTevColorIn
/* 814E02BC | 88 1E 00 20 */	lbz r0, 0x20(r30)
/* 814E02C0 | 38 60 00 02 */	li r3, 0x2
/* 814E02C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E02C8 | 41 82 00 08 */	beq .L_814E02D0
/* 814E02CC | 38 60 00 01 */	li r3, 0x1
.L_814E02D0:
/* 814E02D0 | 48 06 49 ED */	bl GXSetCullMode
/* 814E02D4 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 814E02D8 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814E02DC | 54 00 10 3A */	slwi r0, r0, 2
/* 814E02E0 | 7C 7D 02 14 */	add r3, r29, r0
/* 814E02E4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 814E02E8 | 48 06 5E C5 */	bl GXLoadTexObj
/* 814E02EC | 38 9F 7A 9A */	addi r4, r31, 0x7a9a
/* 814E02F0 | 38 60 00 09 */	li r3, 0x9
/* 814E02F4 | 38 A0 00 06 */	li r5, 0x6
/* 814E02F8 | 48 06 39 ED */	bl GXSetArray
/* 814E02FC | 38 9F 7C AA */	addi r4, r31, 0x7caa
/* 814E0300 | 38 60 00 0A */	li r3, 0xa
/* 814E0304 | 38 A0 00 06 */	li r5, 0x6
/* 814E0308 | 48 06 39 DD */	bl GXSetArray
/* 814E030C | 38 9F 7E AE */	addi r4, r31, 0x7eae
/* 814E0310 | 38 60 00 0D */	li r3, 0xd
/* 814E0314 | 38 A0 00 04 */	li r5, 0x4
/* 814E0318 | 48 06 39 CD */	bl GXSetArray
/* 814E031C | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814E0320 | 38 7F 0A C0 */	addi r3, r31, 0xac0
/* 814E0324 | A0 84 82 42 */	lhz r4, -0x7dbe(r4)
/* 814E0328 | 48 06 78 51 */	bl GXCallDisplayList
/* 814E032C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814E0330 | A0 03 82 40 */	lhz r0, -0x7dc0(r3)
/* 814E0334 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E0338 | 41 82 00 6C */	beq .L_814E03A4
/* 814E033C | 38 60 00 00 */	li r3, 0x0
/* 814E0340 | 38 80 00 0F */	li r4, 0xf
/* 814E0344 | 38 A0 00 0F */	li r5, 0xf
/* 814E0348 | 38 C0 00 0F */	li r6, 0xf
/* 814E034C | 38 E0 00 0F */	li r7, 0xf
/* 814E0350 | 48 06 6A DD */	bl GXSetTevColorIn
/* 814E0354 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814E0358 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814E035C | 38 63 81 DC */	subi r3, r3, 0x7e24
/* 814E0360 | 48 06 5E 4D */	bl GXLoadTexObj
/* 814E0364 | 38 9F 7A 4E */	addi r4, r31, 0x7a4e
/* 814E0368 | 38 60 00 09 */	li r3, 0x9
/* 814E036C | 38 A0 00 06 */	li r5, 0x6
/* 814E0370 | 48 06 39 75 */	bl GXSetArray
/* 814E0374 | 38 9F 7A 72 */	addi r4, r31, 0x7a72
/* 814E0378 | 38 60 00 0A */	li r3, 0xa
/* 814E037C | 38 A0 00 06 */	li r5, 0x6
/* 814E0380 | 48 06 39 65 */	bl GXSetArray
/* 814E0384 | 38 9F 7A 7E */	addi r4, r31, 0x7a7e
/* 814E0388 | 38 60 00 0D */	li r3, 0xd
/* 814E038C | 38 A0 00 04 */	li r5, 0x4
/* 814E0390 | 48 06 39 55 */	bl GXSetArray
/* 814E0394 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814E0398 | 38 7F 0A 60 */	addi r3, r31, 0xa60
/* 814E039C | A0 84 82 40 */	lhz r4, -0x7dc0(r4)
/* 814E03A0 | 48 06 77 D9 */	bl GXCallDisplayList
.L_814E03A4:
/* 814E03A4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814E03A8 | A0 03 82 44 */	lhz r0, -0x7dbc(r3)
/* 814E03AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E03B0 | 41 82 00 C0 */	beq .L_814E0470
/* 814E03B4 | 88 03 82 49 */	lbz r0, -0x7db7(r3)
/* 814E03B8 | 3C A0 81 62 */	lis r5, cGlassColor@ha
/* 814E03BC | 38 A5 D2 E8 */	addi r5, r5, cGlassColor@l
/* 814E03C0 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814E03C4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814E03C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E03CC | 7D 05 02 14 */	add r8, r5, r0
/* 814E03D0 | 7C E5 00 AE */	lbzx r7, r5, r0
/* 814E03D4 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E03D8 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E03DC | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E03E0 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E03E4 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E03E8 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E03EC | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E03F0 | 48 06 6C 31 */	bl GXSetTevKColor
/* 814E03F4 | 38 60 00 00 */	li r3, 0x0
/* 814E03F8 | 48 06 48 C5 */	bl GXSetCullMode
/* 814E03FC | 38 60 00 00 */	li r3, 0x0
/* 814E0400 | 38 80 00 0F */	li r4, 0xf
/* 814E0404 | 38 A0 00 0E */	li r5, 0xe
/* 814E0408 | 38 C0 00 08 */	li r6, 0x8
/* 814E040C | 38 E0 00 0F */	li r7, 0xf
/* 814E0410 | 48 06 6A 1D */	bl GXSetTevColorIn
/* 814E0414 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814E0418 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814E041C | 38 63 81 FC */	subi r3, r3, 0x7e04
/* 814E0420 | 48 06 5D 8D */	bl GXLoadTexObj
/* 814E0424 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814E0428 | 38 60 00 09 */	li r3, 0x9
/* 814E042C | 38 A0 00 06 */	li r5, 0x6
/* 814E0430 | 38 84 81 6E */	subi r4, r4, 0x7e92
/* 814E0434 | 48 06 38 B1 */	bl GXSetArray
/* 814E0438 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814E043C | 38 60 00 0A */	li r3, 0xa
/* 814E0440 | 38 A0 00 06 */	li r5, 0x6
/* 814E0444 | 38 84 81 86 */	subi r4, r4, 0x7e7a
/* 814E0448 | 48 06 38 9D */	bl GXSetArray
/* 814E044C | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814E0450 | 38 60 00 0D */	li r3, 0xd
/* 814E0454 | 38 A0 00 04 */	li r5, 0x4
/* 814E0458 | 38 84 81 8C */	subi r4, r4, 0x7e74
/* 814E045C | 48 06 38 89 */	bl GXSetArray
/* 814E0460 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814E0464 | 38 7F 0E 40 */	addi r3, r31, 0xe40
/* 814E0468 | A0 84 82 44 */	lhz r4, -0x7dbc(r4)
/* 814E046C | 48 06 77 0D */	bl GXCallDisplayList
.L_814E0470:
/* 814E0470 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E0474 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E0478 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E047C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E0480 | 7C 08 03 A6 */	mtlr r0
/* 814E0484 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E0488 | 4E 80 00 20 */	blr
.endfn RFLDrawXluCore

# .text:0x1030 | 0x814E048C | size: 0x738
.fn RFLiInitCharModelRes, global
/* 814E048C | 94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 814E0490 | 7C 08 02 A6 */	mflr r0
/* 814E0494 | 90 01 02 F4 */	stw r0, 0x2f4(r1)
/* 814E0498 | DB E1 02 E0 */	stfd f31, 0x2e0(r1)
/* 814E049C | F3 E1 02 E8 */	psq_st f31, 0x2e8(r1), 0, qr0
/* 814E04A0 | 39 61 02 E0 */	addi r11, r1, 0x2e0
/* 814E04A4 | 48 11 90 0D */	bl _savegpr_23
/* 814E04A8 | 3C 00 43 30 */	lis r0, 0x4330
/* 814E04AC | 7C 77 1B 78 */	mr r23, r3
/* 814E04B0 | 90 01 02 A8 */	stw r0, 0x2a8(r1)
/* 814E04B4 | 7C 98 23 78 */	mr r24, r4
/* 814E04B8 | 38 60 00 01 */	li r3, 0x1
/* 814E04BC | 38 80 00 00 */	li r4, 0x0
/* 814E04C0 | 90 01 02 B0 */	stw r0, 0x2b0(r1)
/* 814E04C4 | 48 06 3A BD */	bl GXSetMisc
/* 814E04C8 | 38 60 00 02 */	li r3, 0x2
/* 814E04CC | 38 80 00 01 */	li r4, 0x1
/* 814E04D0 | 48 06 3A B1 */	bl GXSetMisc
/* 814E04D4 | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 814E04D8 | 38 C0 00 42 */	li r6, 0x42
/* 814E04DC | 3B 60 00 00 */	li r27, 0x0
/* 814E04E0 | 39 57 72 E2 */	addi r10, r23, 0x72e2
/* 814E04E4 | 54 0B 9F 7E */	extrwi r11, r0, 3, 16
/* 814E04E8 | 39 37 74 6E */	addi r9, r23, 0x746e
/* 814E04EC | 39 17 75 FA */	addi r8, r23, 0x75fa
/* 814E04F0 | 38 F7 06 20 */	addi r7, r23, 0x620
/* 814E04F4 | 38 01 00 38 */	addi r0, r1, 0x38
/* 814E04F8 | 3B 41 00 2C */	addi r26, r1, 0x2c
/* 814E04FC | 3B E1 00 20 */	addi r31, r1, 0x20
/* 814E0500 | 3B 20 00 02 */	li r25, 0x2
/* 814E0504 | 38 A0 00 73 */	li r5, 0x73
/* 814E0508 | 38 80 02 E0 */	li r4, 0x2e0
/* 814E050C | 93 21 02 64 */	stw r25, 0x264(r1)
/* 814E0510 | 38 61 02 64 */	addi r3, r1, 0x264
/* 814E0514 | B1 61 02 68 */	sth r11, 0x268(r1)
/* 814E0518 | 91 41 02 74 */	stw r10, 0x274(r1)
/* 814E051C | 91 21 02 78 */	stw r9, 0x278(r1)
/* 814E0520 | 91 01 02 7C */	stw r8, 0x27c(r1)
/* 814E0524 | 90 E1 02 80 */	stw r7, 0x280(r1)
/* 814E0528 | B0 C1 02 84 */	sth r6, 0x284(r1)
/* 814E052C | B0 C1 02 86 */	sth r6, 0x286(r1)
/* 814E0530 | B0 A1 02 88 */	sth r5, 0x288(r1)
/* 814E0534 | B0 81 02 8A */	sth r4, 0x28a(r1)
/* 814E0538 | 90 01 02 9C */	stw r0, 0x29c(r1)
/* 814E053C | 93 41 02 A0 */	stw r26, 0x2a0(r1)
/* 814E0540 | 93 E1 02 A4 */	stw r31, 0x2a4(r1)
/* 814E0544 | 93 61 02 70 */	stw r27, 0x270(r1)
/* 814E0548 | 93 61 02 6C */	stw r27, 0x26c(r1)
/* 814E054C | 48 00 06 79 */	bl RFLiInitShapeRes
/* 814E0550 | A0 81 02 92 */	lhz r4, 0x292(r1)
/* 814E0554 | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0558 | A0 18 00 02 */	lhz r0, 0x2(r24)
/* 814E055C | 39 77 67 94 */	addi r11, r23, 0x6794
/* 814E0560 | B0 83 82 36 */	sth r4, -0x7dca(r3)
/* 814E0564 | 39 57 6B A2 */	addi r10, r23, 0x6ba2
/* 814E0568 | 54 0C BE 7E */	extrwi r12, r0, 7, 16
/* 814E056C | C0 02 8C 78 */	lfs f0, lbl_81695078@sda21(r0)
/* 814E0570 | 39 37 71 66 */	addi r9, r23, 0x7166
/* 814E0574 | 39 17 00 C0 */	addi r8, r23, 0xc0
/* 814E0578 | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 814E057C | 3B 80 00 04 */	li r28, 0x4
/* 814E0580 | 38 E0 00 AD */	li r7, 0xad
/* 814E0584 | 38 C0 00 F6 */	li r6, 0xf6
/* 814E0588 | 38 A0 00 5F */	li r5, 0x5f
/* 814E058C | 38 80 05 60 */	li r4, 0x560
/* 814E0590 | 3B A0 00 01 */	li r29, 0x1
/* 814E0594 | 93 81 02 20 */	stw r28, 0x220(r1)
/* 814E0598 | 38 61 02 20 */	addi r3, r1, 0x220
/* 814E059C | B1 81 02 24 */	sth r12, 0x224(r1)
/* 814E05A0 | 91 61 02 30 */	stw r11, 0x230(r1)
/* 814E05A4 | 91 41 02 34 */	stw r10, 0x234(r1)
/* 814E05A8 | 91 21 02 38 */	stw r9, 0x238(r1)
/* 814E05AC | 91 01 02 3C */	stw r8, 0x23c(r1)
/* 814E05B0 | B0 E1 02 40 */	sth r7, 0x240(r1)
/* 814E05B4 | B0 C1 02 42 */	sth r6, 0x242(r1)
/* 814E05B8 | B0 A1 02 44 */	sth r5, 0x244(r1)
/* 814E05BC | B0 81 02 46 */	sth r4, 0x246(r1)
/* 814E05C0 | 90 01 02 2C */	stw r0, 0x22c(r1)
/* 814E05C4 | 93 A1 02 28 */	stw r29, 0x228(r1)
/* 814E05C8 | D0 01 02 50 */	stfs f0, 0x250(r1)
/* 814E05CC | 93 E1 02 54 */	stw r31, 0x254(r1)
/* 814E05D0 | 48 00 05 F5 */	bl RFLiInitShapeRes
/* 814E05D4 | A0 61 02 4E */	lhz r3, 0x24e(r1)
/* 814E05D8 | 3C 97 00 01 */	addis r4, r23, 0x1
/* 814E05DC | A0 18 00 02 */	lhz r0, 0x2(r24)
/* 814E05E0 | 3F C0 AA AB */	lis r30, 0xaaab
/* 814E05E4 | B0 64 82 3A */	sth r3, -0x7dc6(r4)
/* 814E05E8 | 39 40 00 03 */	li r10, 0x3
/* 814E05EC | 54 06 BE 7E */	extrwi r6, r0, 7, 16
/* 814E05F0 | 39 17 67 94 */	addi r8, r23, 0x6794
/* 814E05F4 | A1 61 02 48 */	lhz r11, 0x248(r1)
/* 814E05F8 | 39 3E AA AB */	subi r9, r30, 0x5555
/* 814E05FC | 38 F7 6B A2 */	addi r7, r23, 0x6ba2
/* 814E0600 | 38 B7 00 C0 */	addi r5, r23, 0xc0
/* 814E0604 | 55 63 10 3A */	slwi r3, r11, 2
/* 814E0608 | C0 02 8C 78 */	lfs f0, lbl_81695078@sda21(r0)
/* 814E060C | 7C 6B 18 50 */	subf r3, r11, r3
/* 814E0610 | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 814E0614 | 54 63 08 3C */	slwi r3, r3, 1
/* 814E0618 | 7D 77 1A 14 */	add r11, r23, r3
/* 814E061C | 39 6B 67 94 */	addi r11, r11, 0x6794
/* 814E0620 | 38 61 01 DC */	addi r3, r1, 0x1dc
/* 814E0624 | 91 64 82 1C */	stw r11, -0x7de4(r4)
/* 814E0628 | A1 81 02 4A */	lhz r12, 0x24a(r1)
/* 814E062C | 55 8B 10 3A */	slwi r11, r12, 2
/* 814E0630 | 7D 6C 58 50 */	subf r11, r12, r11
/* 814E0634 | 55 6B 08 3C */	slwi r11, r11, 1
/* 814E0638 | 7D 77 5A 14 */	add r11, r23, r11
/* 814E063C | 39 6B 6B A2 */	addi r11, r11, 0x6ba2
/* 814E0640 | 91 64 82 20 */	stw r11, -0x7de0(r4)
/* 814E0644 | A1 61 02 4E */	lhz r11, 0x24e(r1)
/* 814E0648 | 39 6B 00 1F */	addi r11, r11, 0x1f
/* 814E064C | 55 6B 00 34 */	clrrwi r11, r11, 5
/* 814E0650 | 7D 77 5A 14 */	add r11, r23, r11
/* 814E0654 | 39 6B 00 C0 */	addi r11, r11, 0xc0
/* 814E0658 | 91 64 82 24 */	stw r11, -0x7ddc(r4)
/* 814E065C | 91 41 01 DC */	stw r10, 0x1dc(r1)
/* 814E0660 | B0 C1 01 E0 */	sth r6, 0x1e0(r1)
/* 814E0664 | 80 C4 82 1C */	lwz r6, -0x7de4(r4)
/* 814E0668 | 90 C1 01 EC */	stw r6, 0x1ec(r1)
/* 814E066C | 80 C4 82 20 */	lwz r6, -0x7de0(r4)
/* 814E0670 | 90 C1 01 F0 */	stw r6, 0x1f0(r1)
/* 814E0674 | 80 C4 82 24 */	lwz r6, -0x7ddc(r4)
/* 814E0678 | 90 C1 01 F8 */	stw r6, 0x1f8(r1)
/* 814E067C | 80 C4 82 1C */	lwz r6, -0x7de4(r4)
/* 814E0680 | 7C C8 30 50 */	subf r6, r8, r6
/* 814E0684 | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E0688 | 7C C9 30 16 */	mulhwu r6, r9, r6
/* 814E068C | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E0690 | 20 C6 00 AD */	subfic r6, r6, 0xad
/* 814E0694 | B0 C1 01 FC */	sth r6, 0x1fc(r1)
/* 814E0698 | 80 C4 82 20 */	lwz r6, -0x7de0(r4)
/* 814E069C | 7C C7 30 50 */	subf r6, r7, r6
/* 814E06A0 | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E06A4 | 7C C9 30 16 */	mulhwu r6, r9, r6
/* 814E06A8 | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E06AC | 20 C6 00 F6 */	subfic r6, r6, 0xf6
/* 814E06B0 | B0 C1 01 FE */	sth r6, 0x1fe(r1)
/* 814E06B4 | 80 84 82 24 */	lwz r4, -0x7ddc(r4)
/* 814E06B8 | 7C 85 20 50 */	subf r4, r5, r4
/* 814E06BC | 90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 814E06C0 | 20 04 05 60 */	subfic r0, r4, 0x560
/* 814E06C4 | B0 01 02 02 */	sth r0, 0x202(r1)
/* 814E06C8 | 93 A1 01 E4 */	stw r29, 0x1e4(r1)
/* 814E06CC | D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 814E06D0 | 93 E1 02 10 */	stw r31, 0x210(r1)
/* 814E06D4 | 48 00 04 F1 */	bl RFLiInitShapeRes
/* 814E06D8 | A0 01 02 0A */	lhz r0, 0x20a(r1)
/* 814E06DC | 3C 97 00 01 */	addis r4, r23, 0x1
/* 814E06E0 | A0 78 00 02 */	lhz r3, 0x2(r24)
/* 814E06E4 | 39 3E AA AB */	subi r9, r30, 0x5555
/* 814E06E8 | B0 04 82 38 */	sth r0, -0x7dc8(r4)
/* 814E06EC | 39 17 67 94 */	addi r8, r23, 0x6794
/* 814E06F0 | 54 60 DF FE */	extrwi r0, r3, 1, 26
/* 814E06F4 | 54 66 BE 7E */	extrwi r6, r3, 7, 16
/* 814E06F8 | A0 A1 02 04 */	lhz r5, 0x204(r1)
/* 814E06FC | 38 F7 6B A2 */	addi r7, r23, 0x6ba2
/* 814E0700 | 81 44 82 1C */	lwz r10, -0x7de4(r4)
/* 814E0704 | 54 A3 10 3A */	slwi r3, r5, 2
/* 814E0708 | 83 C4 82 20 */	lwz r30, -0x7de0(r4)
/* 814E070C | 7C 65 18 50 */	subf r3, r5, r3
/* 814E0710 | 81 64 82 24 */	lwz r11, -0x7ddc(r4)
/* 814E0714 | 54 63 08 3C */	slwi r3, r3, 1
/* 814E0718 | 38 B7 00 C0 */	addi r5, r23, 0xc0
/* 814E071C | 7C 6A 1A 14 */	add r3, r10, r3
/* 814E0720 | C0 02 8C 78 */	lfs f0, lbl_81695078@sda21(r0)
/* 814E0724 | 90 64 82 28 */	stw r3, -0x7dd8(r4)
/* 814E0728 | 38 61 01 98 */	addi r3, r1, 0x198
/* 814E072C | A1 81 02 06 */	lhz r12, 0x206(r1)
/* 814E0730 | 55 8A 10 3A */	slwi r10, r12, 2
/* 814E0734 | 7D 4C 50 50 */	subf r10, r12, r10
/* 814E0738 | 55 4A 08 3C */	slwi r10, r10, 1
/* 814E073C | 7D 5E 52 14 */	add r10, r30, r10
/* 814E0740 | 91 44 82 2C */	stw r10, -0x7dd4(r4)
/* 814E0744 | A1 41 02 0A */	lhz r10, 0x20a(r1)
/* 814E0748 | 39 4A 00 1F */	addi r10, r10, 0x1f
/* 814E074C | 90 04 82 4C */	stw r0, -0x7db4(r4)
/* 814E0750 | 55 4A 00 34 */	clrrwi r10, r10, 5
/* 814E0754 | 7D 4B 52 14 */	add r10, r11, r10
/* 814E0758 | 91 44 82 30 */	stw r10, -0x7dd0(r4)
/* 814E075C | 93 A1 01 98 */	stw r29, 0x198(r1)
/* 814E0760 | B0 C1 01 9C */	sth r6, 0x19c(r1)
/* 814E0764 | 80 C4 82 28 */	lwz r6, -0x7dd8(r4)
/* 814E0768 | 90 C1 01 A8 */	stw r6, 0x1a8(r1)
/* 814E076C | 80 C4 82 2C */	lwz r6, -0x7dd4(r4)
/* 814E0770 | 90 C1 01 AC */	stw r6, 0x1ac(r1)
/* 814E0774 | 80 C4 82 30 */	lwz r6, -0x7dd0(r4)
/* 814E0778 | 90 C1 01 B4 */	stw r6, 0x1b4(r1)
/* 814E077C | 80 C4 82 28 */	lwz r6, -0x7dd8(r4)
/* 814E0780 | 7C C8 30 50 */	subf r6, r8, r6
/* 814E0784 | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E0788 | 7C C9 30 16 */	mulhwu r6, r9, r6
/* 814E078C | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E0790 | 20 C6 00 AD */	subfic r6, r6, 0xad
/* 814E0794 | B0 C1 01 B8 */	sth r6, 0x1b8(r1)
/* 814E0798 | 80 C4 82 2C */	lwz r6, -0x7dd4(r4)
/* 814E079C | 7C C7 30 50 */	subf r6, r7, r6
/* 814E07A0 | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E07A4 | 7C C9 30 16 */	mulhwu r6, r9, r6
/* 814E07A8 | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814E07AC | 20 C6 00 F6 */	subfic r6, r6, 0xf6
/* 814E07B0 | B0 C1 01 BA */	sth r6, 0x1ba(r1)
/* 814E07B4 | 80 84 82 30 */	lwz r4, -0x7dd0(r4)
/* 814E07B8 | 7C 85 20 50 */	subf r4, r5, r4
/* 814E07BC | 90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 814E07C0 | 20 04 05 60 */	subfic r0, r4, 0x560
/* 814E07C4 | B0 01 01 BE */	sth r0, 0x1be(r1)
/* 814E07C8 | 93 A1 01 A0 */	stw r29, 0x1a0(r1)
/* 814E07CC | D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 814E07D0 | 93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 814E07D4 | 48 00 03 F1 */	bl RFLiInitShapeRes
/* 814E07D8 | A0 81 01 C6 */	lhz r4, 0x1c6(r1)
/* 814E07DC | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E07E0 | A0 18 00 10 */	lhz r0, 0x10(r24)
/* 814E07E4 | 39 17 77 C6 */	addi r8, r23, 0x77c6
/* 814E07E8 | B0 83 82 3C */	sth r4, -0x7dc4(r3)
/* 814E07EC | 38 F7 78 B6 */	addi r7, r23, 0x78b6
/* 814E07F0 | 54 03 A7 BE */	extrwi r3, r0, 2, 18
/* 814E07F4 | C0 02 8C 78 */	lfs f0, lbl_81695078@sda21(r0)
/* 814E07F8 | 38 D7 09 00 */	addi r6, r23, 0x900
/* 814E07FC | 39 20 00 05 */	li r9, 0x5
/* 814E0800 | 38 A0 00 28 */	li r5, 0x28
/* 814E0804 | 38 80 00 44 */	li r4, 0x44
/* 814E0808 | 38 00 01 60 */	li r0, 0x160
/* 814E080C | B0 61 01 58 */	sth r3, 0x158(r1)
/* 814E0810 | 38 61 01 54 */	addi r3, r1, 0x154
/* 814E0814 | 91 21 01 54 */	stw r9, 0x154(r1)
/* 814E0818 | 91 01 01 64 */	stw r8, 0x164(r1)
/* 814E081C | 90 E1 01 68 */	stw r7, 0x168(r1)
/* 814E0820 | 90 C1 01 70 */	stw r6, 0x170(r1)
/* 814E0824 | B0 A1 01 74 */	sth r5, 0x174(r1)
/* 814E0828 | B0 81 01 76 */	sth r4, 0x176(r1)
/* 814E082C | B0 01 01 7A */	sth r0, 0x17a(r1)
/* 814E0830 | 93 61 01 60 */	stw r27, 0x160(r1)
/* 814E0834 | 93 A1 01 5C */	stw r29, 0x15c(r1)
/* 814E0838 | D0 01 01 84 */	stfs f0, 0x184(r1)
/* 814E083C | 93 41 01 88 */	stw r26, 0x188(r1)
/* 814E0840 | 48 00 03 85 */	bl RFLiInitShapeRes
/* 814E0844 | A0 F8 00 0C */	lhz r7, 0xc(r24)
/* 814E0848 | 3C 97 00 01 */	addis r4, r23, 0x1
/* 814E084C | A1 01 01 82 */	lhz r8, 0x182(r1)
/* 814E0850 | 38 D7 66 80 */	addi r6, r23, 0x6680
/* 814E0854 | 54 E3 EE FE */	extrwi r3, r7, 5, 24
/* 814E0858 | 54 E5 C7 3E */	extrwi r5, r7, 4, 20
/* 814E085C | 38 03 FF F8 */	subi r0, r3, 0x8
/* 814E0860 | B1 04 82 3E */	sth r8, -0x7dc2(r4)
/* 814E0864 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E0868 | 38 80 00 17 */	li r4, 0x17
/* 814E086C | 90 A1 02 AC */	stw r5, 0x2ac(r1)
/* 814E0870 | 54 E7 A7 3E */	extrwi r7, r7, 4, 16
/* 814E0874 | C0 61 00 38 */	lfs f3, 0x38(r1)
/* 814E0878 | 38 B7 67 0A */	addi r5, r23, 0x670a
/* 814E087C | 90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 814E0880 | 3B C1 00 14 */	addi r30, r1, 0x14
/* 814E0884 | C8 82 8C 98 */	lfd f4, lbl_81695098@sda21(r0)
/* 814E0888 | 38 00 00 C0 */	li r0, 0xc0
/* 814E088C | C8 41 02 A8 */	lfd f2, 0x2a8(r1)
/* 814E0890 | 38 61 01 10 */	addi r3, r1, 0x110
/* 814E0894 | C8 22 8C A0 */	lfd f1, lbl_816950A0@sda21(r0)
/* 814E0898 | EC A2 20 28 */	fsubs f5, f2, f4
/* 814E089C | C8 01 02 B0 */	lfd f0, 0x2b0(r1)
/* 814E08A0 | C0 82 8C 88 */	lfs f4, lbl_81695088@sda21(r0)
/* 814E08A4 | EC 40 08 28 */	fsubs f2, f0, f1
/* 814E08A8 | C0 22 8C 8C */	lfs f1, lbl_8169508C@sda21(r0)
/* 814E08AC | EC A4 01 72 */	fmuls f5, f4, f5
/* 814E08B0 | C0 82 8C 84 */	lfs f4, lbl_81695084@sda21(r0)
/* 814E08B4 | EC 41 00 B2 */	fmuls f2, f1, f2
/* 814E08B8 | C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 814E08BC | EF E4 28 2A */	fadds f31, f4, f5
/* 814E08C0 | C0 01 00 40 */	lfs f0, 0x40(r1)
/* 814E08C4 | D0 61 00 14 */	stfs f3, 0x14(r1)
/* 814E08C8 | EC 21 10 2A */	fadds f1, f1, f2
/* 814E08CC | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 814E08D0 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 814E08D4 | 93 61 01 10 */	stw r27, 0x110(r1)
/* 814E08D8 | B0 E1 01 14 */	sth r7, 0x114(r1)
/* 814E08DC | 90 C1 01 20 */	stw r6, 0x120(r1)
/* 814E08E0 | 90 A1 01 24 */	stw r5, 0x124(r1)
/* 814E08E4 | 92 E1 01 2C */	stw r23, 0x12c(r1)
/* 814E08E8 | B0 81 01 30 */	sth r4, 0x130(r1)
/* 814E08EC | B0 81 01 32 */	sth r4, 0x132(r1)
/* 814E08F0 | B0 01 01 36 */	sth r0, 0x136(r1)
/* 814E08F4 | 93 61 01 1C */	stw r27, 0x11c(r1)
/* 814E08F8 | 93 A1 01 18 */	stw r29, 0x118(r1)
/* 814E08FC | D3 E1 01 40 */	stfs f31, 0x140(r1)
/* 814E0900 | 93 C1 01 44 */	stw r30, 0x144(r1)
/* 814E0904 | 48 00 02 C1 */	bl RFLiInitShapeRes
/* 814E0908 | A0 81 01 3E */	lhz r4, 0x13e(r1)
/* 814E090C | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0910 | A0 18 00 0C */	lhz r0, 0xc(r24)
/* 814E0914 | 38 F7 7A 4E */	addi r7, r23, 0x7a4e
/* 814E0918 | B0 83 82 34 */	sth r4, -0x7dcc(r3)
/* 814E091C | 39 00 00 06 */	li r8, 0x6
/* 814E0920 | 54 03 A7 3E */	extrwi r3, r0, 4, 16
/* 814E0924 | 38 D7 7A 72 */	addi r6, r23, 0x7a72
/* 814E0928 | 38 B7 7A 7E */	addi r5, r23, 0x7a7e
/* 814E092C | 38 97 0A 60 */	addi r4, r23, 0xa60
/* 814E0930 | 3B E0 00 07 */	li r31, 0x7
/* 814E0934 | 38 00 00 60 */	li r0, 0x60
/* 814E0938 | B0 61 00 D0 */	sth r3, 0xd0(r1)
/* 814E093C | 38 61 00 CC */	addi r3, r1, 0xcc
/* 814E0940 | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 814E0944 | 90 E1 00 DC */	stw r7, 0xdc(r1)
/* 814E0948 | 90 C1 00 E0 */	stw r6, 0xe0(r1)
/* 814E094C | 90 A1 00 E4 */	stw r5, 0xe4(r1)
/* 814E0950 | 90 81 00 E8 */	stw r4, 0xe8(r1)
/* 814E0954 | B1 01 00 EC */	sth r8, 0xec(r1)
/* 814E0958 | B3 21 00 EE */	sth r25, 0xee(r1)
/* 814E095C | B3 E1 00 F0 */	sth r31, 0xf0(r1)
/* 814E0960 | B0 01 00 F2 */	sth r0, 0xf2(r1)
/* 814E0964 | 93 61 00 D8 */	stw r27, 0xd8(r1)
/* 814E0968 | 93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 814E096C | D3 E1 00 FC */	stfs f31, 0xfc(r1)
/* 814E0970 | 93 C1 01 00 */	stw r30, 0x100(r1)
/* 814E0974 | 48 00 02 51 */	bl RFLiInitShapeRes
/* 814E0978 | A0 81 00 FA */	lhz r4, 0xfa(r1)
/* 814E097C | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0980 | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 814E0984 | 39 57 7A 9A */	addi r10, r23, 0x7a9a
/* 814E0988 | B0 83 82 40 */	sth r4, -0x7dc0(r3)
/* 814E098C | 39 37 7C AA */	addi r9, r23, 0x7caa
/* 814E0990 | 54 03 9F 7E */	extrwi r3, r0, 3, 16
/* 814E0994 | 39 17 7E AE */	addi r8, r23, 0x7eae
/* 814E0998 | 38 F7 0A C0 */	addi r7, r23, 0xac0
/* 814E099C | 38 C0 00 58 */	li r6, 0x58
/* 814E09A0 | 38 A0 00 56 */	li r5, 0x56
/* 814E09A4 | 38 80 00 B0 */	li r4, 0xb0
/* 814E09A8 | 38 00 03 80 */	li r0, 0x380
/* 814E09AC | B0 61 00 8C */	sth r3, 0x8c(r1)
/* 814E09B0 | 38 61 00 88 */	addi r3, r1, 0x88
/* 814E09B4 | 93 E1 00 88 */	stw r31, 0x88(r1)
/* 814E09B8 | 91 41 00 98 */	stw r10, 0x98(r1)
/* 814E09BC | 91 21 00 9C */	stw r9, 0x9c(r1)
/* 814E09C0 | 91 01 00 A0 */	stw r8, 0xa0(r1)
/* 814E09C4 | 90 E1 00 A4 */	stw r7, 0xa4(r1)
/* 814E09C8 | B0 C1 00 A8 */	sth r6, 0xa8(r1)
/* 814E09CC | B0 A1 00 AA */	sth r5, 0xaa(r1)
/* 814E09D0 | B0 81 00 AC */	sth r4, 0xac(r1)
/* 814E09D4 | B0 01 00 AE */	sth r0, 0xae(r1)
/* 814E09D8 | 93 61 00 94 */	stw r27, 0x94(r1)
/* 814E09DC | 93 61 00 90 */	stw r27, 0x90(r1)
/* 814E09E0 | 48 00 01 E5 */	bl RFLiInitShapeRes
/* 814E09E4 | A0 18 00 12 */	lhz r0, 0x12(r24)
/* 814E09E8 | 3C B7 00 01 */	addis r5, r23, 0x1
/* 814E09EC | A0 C1 00 B6 */	lhz r6, 0xb6(r1)
/* 814E09F0 | 39 05 81 6E */	subi r8, r5, 0x7e92
/* 814E09F4 | 54 03 06 FE */	clrlwi r3, r0, 27
/* 814E09F8 | 54 04 DF 3E */	extrwi r4, r0, 4, 23
/* 814E09FC | 38 03 FF F5 */	subi r0, r3, 0xb
/* 814E0A00 | B0 C5 82 42 */	sth r6, -0x7dbe(r5)
/* 814E0A04 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E0A08 | 38 E5 81 86 */	subi r7, r5, 0x7e7a
/* 814E0A0C | 90 81 02 AC */	stw r4, 0x2ac(r1)
/* 814E0A10 | 38 C5 81 8C */	subi r6, r5, 0x7e74
/* 814E0A14 | C0 81 00 38 */	lfs f4, 0x38(r1)
/* 814E0A18 | 38 B7 0E 40 */	addi r5, r23, 0xe40
/* 814E0A1C | 90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 814E0A20 | 38 01 00 08 */	addi r0, r1, 0x8
/* 814E0A24 | C8 62 8C 98 */	lfd f3, lbl_81695098@sda21(r0)
/* 814E0A28 | 38 60 00 08 */	li r3, 0x8
/* 814E0A2C | C8 41 02 A8 */	lfd f2, 0x2a8(r1)
/* 814E0A30 | 38 80 00 40 */	li r4, 0x40
/* 814E0A34 | C8 22 8C A0 */	lfd f1, lbl_816950A0@sda21(r0)
/* 814E0A38 | EC C2 18 28 */	fsubs f6, f2, f3
/* 814E0A3C | C8 01 02 B0 */	lfd f0, 0x2b0(r1)
/* 814E0A40 | C0 A2 8C 90 */	lfs f5, lbl_81695090@sda21(r0)
/* 814E0A44 | EC 40 08 28 */	fsubs f2, f0, f1
/* 814E0A48 | C0 02 8C 8C */	lfs f0, lbl_8169508C@sda21(r0)
/* 814E0A4C | EC C5 01 B2 */	fmuls f6, f5, f6
/* 814E0A50 | C0 A2 8C 84 */	lfs f5, lbl_81695084@sda21(r0)
/* 814E0A54 | EC 40 00 B2 */	fmuls f2, f0, f2
/* 814E0A58 | C0 62 8C 94 */	lfs f3, lbl_81695094@sda21(r0)
/* 814E0A5C | C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 814E0A60 | EC A5 30 2A */	fadds f5, f5, f6
/* 814E0A64 | 90 61 00 44 */	stw r3, 0x44(r1)
/* 814E0A68 | 38 61 00 44 */	addi r3, r1, 0x44
/* 814E0A6C | EC 63 08 2A */	fadds f3, f3, f1
/* 814E0A70 | C0 22 8C 7C */	lfs f1, lbl_8169507C@sda21(r0)
/* 814E0A74 | C0 01 00 40 */	lfs f0, 0x40(r1)
/* 814E0A78 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 814E0A7C | EC 43 10 2A */	fadds f2, f3, f2
/* 814E0A80 | EC 01 00 2A */	fadds f0, f1, f0
/* 814E0A84 | B3 61 00 48 */	sth r27, 0x48(r1)
/* 814E0A88 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 814E0A8C | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 814E0A90 | 91 01 00 54 */	stw r8, 0x54(r1)
/* 814E0A94 | 90 E1 00 58 */	stw r7, 0x58(r1)
/* 814E0A98 | 90 C1 00 5C */	stw r6, 0x5c(r1)
/* 814E0A9C | 90 A1 00 60 */	stw r5, 0x60(r1)
/* 814E0AA0 | B3 81 00 64 */	sth r28, 0x64(r1)
/* 814E0AA4 | B3 A1 00 66 */	sth r29, 0x66(r1)
/* 814E0AA8 | B3 81 00 68 */	sth r28, 0x68(r1)
/* 814E0AAC | B0 81 00 6A */	sth r4, 0x6a(r1)
/* 814E0AB0 | 93 61 00 50 */	stw r27, 0x50(r1)
/* 814E0AB4 | 93 A1 00 4C */	stw r29, 0x4c(r1)
/* 814E0AB8 | D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 814E0ABC | 90 01 00 78 */	stw r0, 0x78(r1)
/* 814E0AC0 | 48 00 01 05 */	bl RFLiInitShapeRes
/* 814E0AC4 | A0 81 00 72 */	lhz r4, 0x72(r1)
/* 814E0AC8 | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0ACC | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 814E0AD0 | 38 D7 0E 80 */	addi r6, r23, 0xe80
/* 814E0AD4 | B0 83 82 44 */	sth r4, -0x7dbc(r3)
/* 814E0AD8 | 38 80 00 00 */	li r4, 0x0
/* 814E0ADC | 54 05 D7 3E */	extrwi r5, r0, 4, 22
/* 814E0AE0 | 38 63 81 9C */	subi r3, r3, 0x7e64
/* 814E0AE4 | 48 00 06 C9 */	bl RFLiInitTexRes
/* 814E0AE8 | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0AEC | A0 03 82 3A */	lhz r0, -0x7dc6(r3)
/* 814E0AF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E0AF4 | 41 82 00 1C */	beq .L_814E0B10
/* 814E0AF8 | A0 18 00 02 */	lhz r0, 0x2(r24)
/* 814E0AFC | 38 D7 4E 80 */	addi r6, r23, 0x4e80
/* 814E0B00 | 38 80 00 01 */	li r4, 0x1
/* 814E0B04 | 38 63 81 BC */	subi r3, r3, 0x7e44
/* 814E0B08 | 54 05 BE 7E */	extrwi r5, r0, 7, 16
/* 814E0B0C | 48 00 06 A1 */	bl RFLiInitTexRes
.L_814E0B10:
/* 814E0B10 | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0B14 | A0 03 82 40 */	lhz r0, -0x7dc0(r3)
/* 814E0B18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E0B1C | 41 82 00 1C */	beq .L_814E0B38
/* 814E0B20 | A0 18 00 0C */	lhz r0, 0xc(r24)
/* 814E0B24 | 38 D7 52 80 */	addi r6, r23, 0x5280
/* 814E0B28 | 38 80 00 02 */	li r4, 0x2
/* 814E0B2C | 38 63 81 DC */	subi r3, r3, 0x7e24
/* 814E0B30 | 54 05 A7 3E */	extrwi r5, r0, 4, 16
/* 814E0B34 | 48 00 06 79 */	bl RFLiInitTexRes
.L_814E0B38:
/* 814E0B38 | A0 18 00 12 */	lhz r0, 0x12(r24)
/* 814E0B3C | 3C 77 00 01 */	addis r3, r23, 0x1
/* 814E0B40 | 38 D7 56 80 */	addi r6, r23, 0x5680
/* 814E0B44 | 38 80 00 03 */	li r4, 0x3
/* 814E0B48 | 54 05 A7 3E */	extrwi r5, r0, 4, 16
/* 814E0B4C | 38 63 81 FC */	subi r3, r3, 0x7e04
/* 814E0B50 | 48 00 06 5D */	bl RFLiInitTexRes
/* 814E0B54 | A0 78 00 00 */	lhz r3, 0x0(r24)
/* 814E0B58 | 3C 80 00 01 */	lis r4, 0x1
/* 814E0B5C | A0 18 00 02 */	lhz r0, 0x2(r24)
/* 814E0B60 | 3D 17 00 01 */	addis r8, r23, 0x1
/* 814E0B64 | 54 69 B7 7E */	extrwi r9, r3, 3, 19
/* 814E0B68 | A0 B8 00 10 */	lhz r5, 0x10(r24)
/* 814E0B6C | 54 07 D7 7E */	extrwi r7, r0, 3, 23
/* 814E0B70 | A0 18 00 44 */	lhz r0, 0x44(r24)
/* 814E0B74 | 54 A6 BF 7E */	extrwi r6, r5, 3, 20
/* 814E0B78 | A0 78 00 12 */	lhz r3, 0x12(r24)
/* 814E0B7C | 54 00 F7 3E */	extrwi r0, r0, 4, 26
/* 814E0B80 | 99 28 82 46 */	stb r9, -0x7dba(r8)
/* 814E0B84 | 54 65 BF 7E */	extrwi r5, r3, 3, 20
/* 814E0B88 | 7E E3 BB 78 */	mr r3, r23
/* 814E0B8C | 98 E8 82 47 */	stb r7, -0x7db9(r8)
/* 814E0B90 | 38 84 82 60 */	subi r4, r4, 0x7da0
/* 814E0B94 | 98 C8 82 48 */	stb r6, -0x7db8(r8)
/* 814E0B98 | 98 A8 82 49 */	stb r5, -0x7db7(r8)
/* 814E0B9C | 98 08 82 4A */	stb r0, -0x7db6(r8)
/* 814E0BA0 | 48 04 CD 95 */	bl DCFlushRange
/* 814E0BA4 | E3 E1 02 E8 */	psq_l f31, 0x2e8(r1), 0, qr0
/* 814E0BA8 | 39 61 02 E0 */	addi r11, r1, 0x2e0
/* 814E0BAC | CB E1 02 E0 */	lfd f31, 0x2e0(r1)
/* 814E0BB0 | 48 11 89 4D */	bl _restgpr_23
/* 814E0BB4 | 80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 814E0BB8 | 7C 08 03 A6 */	mtlr r0
/* 814E0BBC | 38 21 02 F0 */	addi r1, r1, 0x2f0
/* 814E0BC0 | 4E 80 00 20 */	blr
.endfn RFLiInitCharModelRes

# .text:0x1768 | 0x814E0BC4 | size: 0x5E8
.fn RFLiInitShapeRes, global
/* 814E0BC4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814E0BC8 | 7C 08 02 A6 */	mflr r0
/* 814E0BCC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814E0BD0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814E0BD4 | 48 11 88 E1 */	bl _savegpr_24
/* 814E0BD8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814E0BDC | 7C 7C 1B 78 */	mr r28, r3
/* 814E0BE0 | 3B E0 00 00 */	li r31, 0x0
/* 814E0BE4 | 28 04 00 05 */	cmplwi r4, 0x5
/* 814E0BE8 | 41 81 00 18 */	bgt .L_814E0C00
/* 814E0BEC | 38 00 00 01 */	li r0, 0x1
/* 814E0BF0 | 7C 00 20 30 */	slw r0, r0, r4
/* 814E0BF4 | 70 00 00 2B */	andi. r0, r0, 0x2b
/* 814E0BF8 | 41 82 00 08 */	beq .L_814E0C00
/* 814E0BFC | 3B E0 00 01 */	li r31, 0x1
.L_814E0C00:
/* 814E0C00 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814E0C04 | A0 9C 00 04 */	lhz r4, 0x4(r28)
/* 814E0C08 | 4B FF B0 7D */	bl RFLiGetShapeSize
/* 814E0C0C | 4B FF A0 51 */	bl RFLiAlloc32
/* 814E0C10 | 7C 7E 1B 78 */	mr r30, r3
/* 814E0C14 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814E0C18 | A0 9C 00 04 */	lhz r4, 0x4(r28)
/* 814E0C1C | 7F C5 F3 78 */	mr r5, r30
/* 814E0C20 | 4B FF B1 D1 */	bl RFLiLoadShape
/* 814E0C24 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814E0C28 | 3B BE 00 04 */	addi r29, r30, 0x4
/* 814E0C2C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814E0C30 | 40 82 00 38 */	bne .L_814E0C68
/* 814E0C34 | 80 7C 00 38 */	lwz r3, 0x38(r28)
/* 814E0C38 | 7F A4 EB 78 */	mr r4, r29
/* 814E0C3C | 38 A0 00 0C */	li r5, 0xc
/* 814E0C40 | 4B E4 F5 F1 */	bl memcpy
/* 814E0C44 | 80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 814E0C48 | 38 9D 00 0C */	addi r4, r29, 0xc
/* 814E0C4C | 38 A0 00 0C */	li r5, 0xc
/* 814E0C50 | 4B E4 F5 E1 */	bl memcpy
/* 814E0C54 | 80 7C 00 40 */	lwz r3, 0x40(r28)
/* 814E0C58 | 38 9D 00 18 */	addi r4, r29, 0x18
/* 814E0C5C | 38 A0 00 0C */	li r5, 0xc
/* 814E0C60 | 4B E4 F5 D1 */	bl memcpy
/* 814E0C64 | 3B BD 00 24 */	addi r29, r29, 0x24
.L_814E0C68:
/* 814E0C68 | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 814E0C6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E0C70 | 40 82 00 24 */	bne .L_814E0C94
/* 814E0C74 | 38 00 00 00 */	li r0, 0x0
/* 814E0C78 | 7F C3 F3 78 */	mr r3, r30
/* 814E0C7C | B0 1C 00 28 */	sth r0, 0x28(r28)
/* 814E0C80 | B0 1C 00 2A */	sth r0, 0x2a(r28)
/* 814E0C84 | B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 814E0C88 | B0 1C 00 2E */	sth r0, 0x2e(r28)
/* 814E0C8C | 4B FF 9F E5 */	bl RFLiFree
/* 814E0C90 | 48 00 05 04 */	b .L_814E1194
.L_814E0C94:
/* 814E0C94 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814E0C98 | 1C 04 00 06 */	mulli r0, r4, 0x6
/* 814E0C9C | B0 9C 00 28 */	sth r4, 0x28(r28)
/* 814E0CA0 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814E0CA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E0CA8 | 7F A4 EB 78 */	mr r4, r29
/* 814E0CAC | 41 82 01 4C */	beq .L_814E0DF8
/* 814E0CB0 | 80 7C 00 34 */	lwz r3, 0x34(r28)
/* 814E0CB4 | 3F 40 81 67 */	lis r26, coordinateData@ha
/* 814E0CB8 | C0 82 8C A8 */	lfs f4, lbl_816950A8@sda21(r0)
/* 814E0CBC | 39 9A EA 90 */	addi r12, r26, coordinateData@l
/* 814E0CC0 | C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 814E0CC4 | 38 A0 00 00 */	li r5, 0x0
/* 814E0CC8 | C0 43 00 00 */	lfs f2, 0x0(r3)
/* 814E0CCC | 39 40 00 00 */	li r10, 0x0
/* 814E0CD0 | EC 64 00 32 */	fmuls f3, f4, f0
/* 814E0CD4 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 814E0CD8 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 814E0CDC | EC 44 00 B2 */	fmuls f2, f4, f2
/* 814E0CE0 | EC 24 00 72 */	fmuls f1, f4, f1
/* 814E0CE4 | EC 04 00 32 */	fmuls f0, f4, f0
/* 814E0CE8 | FC 60 18 1E */	fctiwz f3, f3
/* 814E0CEC | FC 40 10 1E */	fctiwz f2, f2
/* 814E0CF0 | FC 20 08 1E */	fctiwz f1, f1
/* 814E0CF4 | FC 00 00 1E */	fctiwz f0, f0
/* 814E0CF8 | D8 61 00 08 */	stfd f3, 0x8(r1)
/* 814E0CFC | D8 41 00 10 */	stfd f2, 0x10(r1)
/* 814E0D00 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 814E0D04 | D8 21 00 18 */	stfd f1, 0x18(r1)
/* 814E0D08 | 80 E1 00 14 */	lwz r7, 0x14(r1)
/* 814E0D0C | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 814E0D10 | 81 01 00 1C */	lwz r8, 0x1c(r1)
/* 814E0D14 | 81 21 00 24 */	lwz r9, 0x24(r1)
/* 814E0D18 | 48 00 00 D0 */	b .L_814E0DE8
.L_814E0D1C:
/* 814E0D1C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814E0D20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E0D24 | 41 82 00 20 */	beq .L_814E0D44
/* 814E0D28 | A8 64 00 00 */	lha r3, 0x0(r4)
/* 814E0D2C | 7C 63 00 D0 */	neg r3, r3
/* 814E0D30 | 7C 63 31 D6 */	mullw r3, r3, r6
/* 814E0D34 | 7C 63 46 70 */	srawi r3, r3, 8
/* 814E0D38 | 7C 67 1A 14 */	add r3, r7, r3
/* 814E0D3C | 7C 78 07 34 */	extsh r24, r3
/* 814E0D40 | 48 00 00 18 */	b .L_814E0D58
.L_814E0D44:
/* 814E0D44 | A8 64 00 00 */	lha r3, 0x0(r4)
/* 814E0D48 | 7C 63 31 D6 */	mullw r3, r3, r6
/* 814E0D4C | 7C 63 46 70 */	srawi r3, r3, 8
/* 814E0D50 | 7C 67 1A 14 */	add r3, r7, r3
/* 814E0D54 | 7C 78 07 34 */	extsh r24, r3
.L_814E0D58:
/* 814E0D58 | A8 64 00 02 */	lha r3, 0x2(r4)
/* 814E0D5C | AB 64 00 04 */	lha r27, 0x4(r4)
/* 814E0D60 | 7F 23 31 D6 */	mullw r25, r3, r6
/* 814E0D64 | 80 6C 00 0C */	lwz r3, 0xc(r12)
/* 814E0D68 | 81 7C 00 10 */	lwz r11, 0x10(r28)
/* 814E0D6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E0D70 | 7C 6B 52 14 */	add r3, r11, r10
/* 814E0D74 | 7D 7B 31 D6 */	mullw r11, r27, r6
/* 814E0D78 | 7F 39 46 70 */	srawi r25, r25, 8
/* 814E0D7C | 7F 68 CA 14 */	add r27, r8, r25
/* 814E0D80 | 7D 6B 46 70 */	srawi r11, r11, 8
/* 814E0D84 | 7F 79 07 34 */	extsh r25, r27
/* 814E0D88 | 7D 69 5A 14 */	add r11, r9, r11
/* 814E0D8C | 7D 7B 07 34 */	extsh r27, r11
/* 814E0D90 | 41 82 00 08 */	beq .L_814E0D98
/* 814E0D94 | 7F 18 00 D0 */	neg r24, r24
.L_814E0D98:
/* 814E0D98 | 89 6C 00 02 */	lbz r11, 0x2(r12)
/* 814E0D9C | 55 6B 08 3C */	slwi r11, r11, 1
/* 814E0DA0 | 7F 03 5B 2E */	sthx r24, r3, r11
/* 814E0DA4 | 81 6C 00 04 */	lwz r11, 0x4(r12)
/* 814E0DA8 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814E0DAC | 41 82 00 08 */	beq .L_814E0DB4
/* 814E0DB0 | 7F 39 00 D0 */	neg r25, r25
.L_814E0DB4:
/* 814E0DB4 | 89 7A EA 90 */	lbz r11, coordinateData@l(r26)
/* 814E0DB8 | 55 6B 08 3C */	slwi r11, r11, 1
/* 814E0DBC | 7F 23 5B 2E */	sthx r25, r3, r11
/* 814E0DC0 | 81 6C 00 08 */	lwz r11, 0x8(r12)
/* 814E0DC4 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814E0DC8 | 41 82 00 08 */	beq .L_814E0DD0
/* 814E0DCC | 7F 7B 00 D0 */	neg r27, r27
.L_814E0DD0:
/* 814E0DD0 | 89 6C 00 01 */	lbz r11, 0x1(r12)
/* 814E0DD4 | 38 84 00 06 */	addi r4, r4, 0x6
/* 814E0DD8 | 39 4A 00 06 */	addi r10, r10, 0x6
/* 814E0DDC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814E0DE0 | 55 6B 08 3C */	slwi r11, r11, 1
/* 814E0DE4 | 7F 63 5B 2E */	sthx r27, r3, r11
.L_814E0DE8:
/* 814E0DE8 | A0 7C 00 28 */	lhz r3, 0x28(r28)
/* 814E0DEC | 7C 05 18 00 */	cmpw r5, r3
/* 814E0DF0 | 41 80 FF 2C */	blt .L_814E0D1C
/* 814E0DF4 | 48 00 01 5C */	b .L_814E0F50
.L_814E0DF8:
/* 814E0DF8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814E0DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E0E00 | 41 82 00 A4 */	beq .L_814E0EA4
/* 814E0E04 | 3C E0 81 67 */	lis r7, coordinateData@ha
/* 814E0E08 | 39 80 00 00 */	li r12, 0x0
/* 814E0E0C | 38 C7 EA 90 */	addi r6, r7, coordinateData@l
/* 814E0E10 | 38 60 00 00 */	li r3, 0x0
/* 814E0E14 | 48 00 00 80 */	b .L_814E0E94
.L_814E0E18:
/* 814E0E18 | A9 04 00 00 */	lha r8, 0x0(r4)
/* 814E0E1C | 80 A6 00 0C */	lwz r5, 0xc(r6)
/* 814E0E20 | 7D 28 00 D0 */	neg r9, r8
/* 814E0E24 | 81 1C 00 10 */	lwz r8, 0x10(r28)
/* 814E0E28 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E0E2C | A9 44 00 02 */	lha r10, 0x2(r4)
/* 814E0E30 | A9 64 00 04 */	lha r11, 0x4(r4)
/* 814E0E34 | 7D 29 07 34 */	extsh r9, r9
/* 814E0E38 | 7D 08 1A 14 */	add r8, r8, r3
/* 814E0E3C | 41 82 00 08 */	beq .L_814E0E44
/* 814E0E40 | 7D 29 00 D0 */	neg r9, r9
.L_814E0E44:
/* 814E0E44 | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 814E0E48 | 54 A5 08 3C */	slwi r5, r5, 1
/* 814E0E4C | 7D 28 2B 2E */	sthx r9, r8, r5
/* 814E0E50 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 814E0E54 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E0E58 | 41 82 00 08 */	beq .L_814E0E60
/* 814E0E5C | 7D 4A 00 D0 */	neg r10, r10
.L_814E0E60:
/* 814E0E60 | 88 A7 EA 90 */	lbz r5, coordinateData@l(r7)
/* 814E0E64 | 54 A5 08 3C */	slwi r5, r5, 1
/* 814E0E68 | 7D 48 2B 2E */	sthx r10, r8, r5
/* 814E0E6C | 80 A6 00 08 */	lwz r5, 0x8(r6)
/* 814E0E70 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E0E74 | 41 82 00 08 */	beq .L_814E0E7C
/* 814E0E78 | 7D 6B 00 D0 */	neg r11, r11
.L_814E0E7C:
/* 814E0E7C | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 814E0E80 | 38 84 00 06 */	addi r4, r4, 0x6
/* 814E0E84 | 38 63 00 06 */	addi r3, r3, 0x6
/* 814E0E88 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814E0E8C | 54 A5 08 3C */	slwi r5, r5, 1
/* 814E0E90 | 7D 68 2B 2E */	sthx r11, r8, r5
.L_814E0E94:
/* 814E0E94 | A0 BC 00 28 */	lhz r5, 0x28(r28)
/* 814E0E98 | 7C 0C 28 00 */	cmpw r12, r5
/* 814E0E9C | 41 80 FF 7C */	blt .L_814E0E18
/* 814E0EA0 | 48 00 00 B0 */	b .L_814E0F50
.L_814E0EA4:
/* 814E0EA4 | 3D 20 81 67 */	lis r9, coordinateData@ha
/* 814E0EA8 | 38 60 00 00 */	li r3, 0x0
/* 814E0EAC | 39 09 EA 90 */	addi r8, r9, coordinateData@l
/* 814E0EB0 | 38 A0 00 00 */	li r5, 0x0
/* 814E0EB4 | 48 00 00 90 */	b .L_814E0F44
.L_814E0EB8:
/* 814E0EB8 | 80 C8 00 0C */	lwz r6, 0xc(r8)
/* 814E0EBC | 80 FC 00 10 */	lwz r7, 0x10(r28)
/* 814E0EC0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814E0EC4 | 7D 47 2A 14 */	add r10, r7, r5
/* 814E0EC8 | 41 82 00 10 */	beq .L_814E0ED8
/* 814E0ECC | A8 C4 00 00 */	lha r6, 0x0(r4)
/* 814E0ED0 | 7C E6 00 D0 */	neg r7, r6
/* 814E0ED4 | 48 00 00 08 */	b .L_814E0EDC
.L_814E0ED8:
/* 814E0ED8 | A8 E4 00 00 */	lha r7, 0x0(r4)
.L_814E0EDC:
/* 814E0EDC | 88 C8 00 02 */	lbz r6, 0x2(r8)
/* 814E0EE0 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814E0EE4 | 7C EA 33 2E */	sthx r7, r10, r6
/* 814E0EE8 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 814E0EEC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814E0EF0 | 41 82 00 10 */	beq .L_814E0F00
/* 814E0EF4 | A8 C4 00 02 */	lha r6, 0x2(r4)
/* 814E0EF8 | 7C E6 00 D0 */	neg r7, r6
/* 814E0EFC | 48 00 00 08 */	b .L_814E0F04
.L_814E0F00:
/* 814E0F00 | A8 E4 00 02 */	lha r7, 0x2(r4)
.L_814E0F04:
/* 814E0F04 | 88 C9 EA 90 */	lbz r6, coordinateData@l(r9)
/* 814E0F08 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814E0F0C | 7C EA 33 2E */	sthx r7, r10, r6
/* 814E0F10 | 80 C8 00 08 */	lwz r6, 0x8(r8)
/* 814E0F14 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814E0F18 | 41 82 00 10 */	beq .L_814E0F28
/* 814E0F1C | A8 C4 00 04 */	lha r6, 0x4(r4)
/* 814E0F20 | 7C E6 00 D0 */	neg r7, r6
/* 814E0F24 | 48 00 00 08 */	b .L_814E0F2C
.L_814E0F28:
/* 814E0F28 | A8 E4 00 04 */	lha r7, 0x4(r4)
.L_814E0F2C:
/* 814E0F2C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E0F30 | 38 84 00 06 */	addi r4, r4, 0x6
/* 814E0F34 | 38 A5 00 06 */	addi r5, r5, 0x6
/* 814E0F38 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814E0F3C | 54 C6 08 3C */	slwi r6, r6, 1
/* 814E0F40 | 7C EA 33 2E */	sthx r7, r10, r6
.L_814E0F44:
/* 814E0F44 | A0 DC 00 28 */	lhz r6, 0x28(r28)
/* 814E0F48 | 7C 03 30 00 */	cmpw r3, r6
/* 814E0F4C | 41 80 FF 6C */	blt .L_814E0EB8
.L_814E0F50:
/* 814E0F50 | 7F BD 02 14 */	add r29, r29, r0
/* 814E0F54 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814E0F58 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814E0F5C | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814E0F60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E0F64 | 1C 03 00 06 */	mulli r0, r3, 0x6
/* 814E0F68 | B0 7C 00 2A */	sth r3, 0x2a(r28)
/* 814E0F6C | 7F A3 EB 78 */	mr r3, r29
/* 814E0F70 | 41 82 00 A4 */	beq .L_814E1014
/* 814E0F74 | 3C E0 81 67 */	lis r7, coordinateData@ha
/* 814E0F78 | 39 80 00 00 */	li r12, 0x0
/* 814E0F7C | 38 C7 EA 90 */	addi r6, r7, coordinateData@l
/* 814E0F80 | 38 80 00 00 */	li r4, 0x0
/* 814E0F84 | 48 00 00 80 */	b .L_814E1004
.L_814E0F88:
/* 814E0F88 | A9 03 00 00 */	lha r8, 0x0(r3)
/* 814E0F8C | 80 A6 00 0C */	lwz r5, 0xc(r6)
/* 814E0F90 | 7D 28 00 D0 */	neg r9, r8
/* 814E0F94 | 81 1C 00 14 */	lwz r8, 0x14(r28)
/* 814E0F98 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E0F9C | A9 43 00 02 */	lha r10, 0x2(r3)
/* 814E0FA0 | A9 63 00 04 */	lha r11, 0x4(r3)
/* 814E0FA4 | 7D 29 07 34 */	extsh r9, r9
/* 814E0FA8 | 7D 08 22 14 */	add r8, r8, r4
/* 814E0FAC | 41 82 00 08 */	beq .L_814E0FB4
/* 814E0FB0 | 7D 29 00 D0 */	neg r9, r9
.L_814E0FB4:
/* 814E0FB4 | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 814E0FB8 | 54 A5 08 3C */	slwi r5, r5, 1
/* 814E0FBC | 7D 28 2B 2E */	sthx r9, r8, r5
/* 814E0FC0 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 814E0FC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E0FC8 | 41 82 00 08 */	beq .L_814E0FD0
/* 814E0FCC | 7D 4A 00 D0 */	neg r10, r10
.L_814E0FD0:
/* 814E0FD0 | 88 A7 EA 90 */	lbz r5, coordinateData@l(r7)
/* 814E0FD4 | 54 A5 08 3C */	slwi r5, r5, 1
/* 814E0FD8 | 7D 48 2B 2E */	sthx r10, r8, r5
/* 814E0FDC | 80 A6 00 08 */	lwz r5, 0x8(r6)
/* 814E0FE0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E0FE4 | 41 82 00 08 */	beq .L_814E0FEC
/* 814E0FE8 | 7D 6B 00 D0 */	neg r11, r11
.L_814E0FEC:
/* 814E0FEC | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 814E0FF0 | 38 63 00 06 */	addi r3, r3, 0x6
/* 814E0FF4 | 38 84 00 06 */	addi r4, r4, 0x6
/* 814E0FF8 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814E0FFC | 54 A5 08 3C */	slwi r5, r5, 1
/* 814E1000 | 7D 68 2B 2E */	sthx r11, r8, r5
.L_814E1004:
/* 814E1004 | A0 BC 00 2A */	lhz r5, 0x2a(r28)
/* 814E1008 | 7C 0C 28 00 */	cmpw r12, r5
/* 814E100C | 41 80 FF 7C */	blt .L_814E0F88
/* 814E1010 | 48 00 00 B0 */	b .L_814E10C0
.L_814E1014:
/* 814E1014 | 3D 20 81 67 */	lis r9, coordinateData@ha
/* 814E1018 | 38 80 00 00 */	li r4, 0x0
/* 814E101C | 39 09 EA 90 */	addi r8, r9, coordinateData@l
/* 814E1020 | 38 A0 00 00 */	li r5, 0x0
/* 814E1024 | 48 00 00 90 */	b .L_814E10B4
.L_814E1028:
/* 814E1028 | 80 C8 00 0C */	lwz r6, 0xc(r8)
/* 814E102C | 80 FC 00 14 */	lwz r7, 0x14(r28)
/* 814E1030 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814E1034 | 7D 47 2A 14 */	add r10, r7, r5
/* 814E1038 | 41 82 00 10 */	beq .L_814E1048
/* 814E103C | A8 C3 00 00 */	lha r6, 0x0(r3)
/* 814E1040 | 7C E6 00 D0 */	neg r7, r6
/* 814E1044 | 48 00 00 08 */	b .L_814E104C
.L_814E1048:
/* 814E1048 | A8 E3 00 00 */	lha r7, 0x0(r3)
.L_814E104C:
/* 814E104C | 88 C8 00 02 */	lbz r6, 0x2(r8)
/* 814E1050 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814E1054 | 7C EA 33 2E */	sthx r7, r10, r6
/* 814E1058 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 814E105C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814E1060 | 41 82 00 10 */	beq .L_814E1070
/* 814E1064 | A8 C3 00 02 */	lha r6, 0x2(r3)
/* 814E1068 | 7C E6 00 D0 */	neg r7, r6
/* 814E106C | 48 00 00 08 */	b .L_814E1074
.L_814E1070:
/* 814E1070 | A8 E3 00 02 */	lha r7, 0x2(r3)
.L_814E1074:
/* 814E1074 | 88 C9 EA 90 */	lbz r6, coordinateData@l(r9)
/* 814E1078 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814E107C | 7C EA 33 2E */	sthx r7, r10, r6
/* 814E1080 | 80 C8 00 08 */	lwz r6, 0x8(r8)
/* 814E1084 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814E1088 | 41 82 00 10 */	beq .L_814E1098
/* 814E108C | A8 C3 00 04 */	lha r6, 0x4(r3)
/* 814E1090 | 7C E6 00 D0 */	neg r7, r6
/* 814E1094 | 48 00 00 08 */	b .L_814E109C
.L_814E1098:
/* 814E1098 | A8 E3 00 04 */	lha r7, 0x4(r3)
.L_814E109C:
/* 814E109C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E10A0 | 38 63 00 06 */	addi r3, r3, 0x6
/* 814E10A4 | 38 A5 00 06 */	addi r5, r5, 0x6
/* 814E10A8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814E10AC | 54 C6 08 3C */	slwi r6, r6, 1
/* 814E10B0 | 7C EA 33 2E */	sthx r7, r10, r6
.L_814E10B4:
/* 814E10B4 | A0 DC 00 2A */	lhz r6, 0x2a(r28)
/* 814E10B8 | 7C 04 30 00 */	cmpw r4, r6
/* 814E10BC | 41 80 FF 6C */	blt .L_814E1028
.L_814E10C0:
/* 814E10C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E10C4 | 7F BD 02 14 */	add r29, r29, r0
/* 814E10C8 | 41 82 00 10 */	beq .L_814E10D8
/* 814E10CC | 38 00 00 00 */	li r0, 0x0
/* 814E10D0 | B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 814E10D4 | 48 00 00 28 */	b .L_814E10FC
.L_814E10D8:
/* 814E10D8 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814E10DC | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814E10E0 | 80 7C 00 18 */	lwz r3, 0x18(r28)
/* 814E10E4 | 7F A4 EB 78 */	mr r4, r29
/* 814E10E8 | 54 18 10 3A */	slwi r24, r0, 2
/* 814E10EC | B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 814E10F0 | 7F 05 C3 78 */	mr r5, r24
/* 814E10F4 | 4B E4 F1 3D */	bl memcpy
/* 814E10F8 | 7F BD C2 14 */	add r29, r29, r24
.L_814E10FC:
/* 814E10FC | 8B 5D 00 00 */	lbz r26, 0x0(r29)
/* 814E1100 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814E1104 | 80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 814E1108 | A0 9C 00 26 */	lhz r4, 0x26(r28)
/* 814E110C | 48 04 C7 FD */	bl DCInvalidateRange
/* 814E1110 | 80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 814E1114 | A0 9C 00 26 */	lhz r4, 0x26(r28)
/* 814E1118 | 48 06 69 05 */	bl GXBeginDisplayList
/* 814E111C | 3B 00 00 00 */	li r24, 0x0
/* 814E1120 | 3F 60 CC 01 */	lis r27, 0xcc01
/* 814E1124 | 48 00 00 58 */	b .L_814E117C
.L_814E1128:
/* 814E1128 | 8B 3D 00 00 */	lbz r25, 0x0(r29)
/* 814E112C | 38 80 00 00 */	li r4, 0x0
/* 814E1130 | 88 7D 00 01 */	lbz r3, 0x1(r29)
/* 814E1134 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814E1138 | 7F 25 CB 78 */	mr r5, r25
/* 814E113C | 48 06 38 B9 */	bl GXBegin
/* 814E1140 | 7F 29 03 A6 */	mtctr r25
/* 814E1144 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814E1148 | 40 81 00 30 */	ble .L_814E1178
.L_814E114C:
/* 814E114C | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814E1150 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E1154 | 98 1B 80 00 */	stb r0, -0x8000(r27)
/* 814E1158 | 88 1D 00 01 */	lbz r0, 0x1(r29)
/* 814E115C | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814E1160 | 98 1B 80 00 */	stb r0, -0x8000(r27)
/* 814E1164 | 40 82 00 10 */	bne .L_814E1174
/* 814E1168 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814E116C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814E1170 | 98 1B 80 00 */	stb r0, -0x8000(r27)
.L_814E1174:
/* 814E1174 | 42 00 FF D8 */	bdnz .L_814E114C
.L_814E1178:
/* 814E1178 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814E117C:
/* 814E117C | 7C 18 D0 00 */	cmpw r24, r26
/* 814E1180 | 41 80 FF A8 */	blt .L_814E1128
/* 814E1184 | 48 06 69 49 */	bl GXEndDisplayList
/* 814E1188 | B0 7C 00 2E */	sth r3, 0x2e(r28)
/* 814E118C | 7F C3 F3 78 */	mr r3, r30
/* 814E1190 | 4B FF 9A E1 */	bl RFLiFree
.L_814E1194:
/* 814E1194 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814E1198 | 48 11 83 69 */	bl _restgpr_24
/* 814E119C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814E11A0 | 7C 08 03 A6 */	mtlr r0
/* 814E11A4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814E11A8 | 4E 80 00 20 */	blr
.endfn RFLiInitShapeRes

# .text:0x1D50 | 0x814E11AC | size: 0x11C
.fn RFLiInitTexRes, global
/* 814E11AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E11B0 | 7C 08 02 A6 */	mflr r0
/* 814E11B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E11B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814E11BC | 48 11 83 05 */	bl _savegpr_27
/* 814E11C0 | 7C 9C 23 78 */	mr r28, r4
/* 814E11C4 | 7C BD 2B 78 */	mr r29, r5
/* 814E11C8 | 7C 7B 1B 78 */	mr r27, r3
/* 814E11CC | 7C DE 33 78 */	mr r30, r6
/* 814E11D0 | 7F 83 E3 78 */	mr r3, r28
/* 814E11D4 | 7F A4 EB 78 */	mr r4, r29
/* 814E11D8 | 4B FF A8 1D */	bl RFLiGetShpTexSize
/* 814E11DC | 4B FF 9A 81 */	bl RFLiAlloc32
/* 814E11E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814E11E4 | 7F 83 E3 78 */	mr r3, r28
/* 814E11E8 | 7F A4 EB 78 */	mr r4, r29
/* 814E11EC | 7F E5 FB 78 */	mr r5, r31
/* 814E11F0 | 4B FF A9 71 */	bl RFLiLoadShpTexture
/* 814E11F4 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 814E11F8 | 41 82 00 48 */	beq .L_814E1240
/* 814E11FC | 40 80 00 50 */	bge .L_814E124C
/* 814E1200 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814E1204 | 41 82 00 0C */	beq .L_814E1210
/* 814E1208 | 40 80 00 1C */	bge .L_814E1224
/* 814E120C | 48 00 00 40 */	b .L_814E124C
.L_814E1210:
/* 814E1210 | A0 7F 00 04 */	lhz r3, 0x4(r31)
/* 814E1214 | A0 1F 00 02 */	lhz r0, 0x2(r31)
/* 814E1218 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 814E121C | 54 05 08 3C */	slwi r5, r0, 1
/* 814E1220 | 48 00 00 2C */	b .L_814E124C
.L_814E1224:
/* 814E1224 | A0 7F 00 04 */	lhz r3, 0x4(r31)
/* 814E1228 | A0 1F 00 02 */	lhz r0, 0x2(r31)
/* 814E122C | 7C 63 01 D6 */	mullw r3, r3, r0
/* 814E1230 | 54 60 0F FE */	srwi r0, r3, 31
/* 814E1234 | 7C 00 1A 14 */	add r0, r0, r3
/* 814E1238 | 7C 05 0E 70 */	srawi r5, r0, 1
/* 814E123C | 48 00 00 10 */	b .L_814E124C
.L_814E1240:
/* 814E1240 | A0 7F 00 04 */	lhz r3, 0x4(r31)
/* 814E1244 | A0 1F 00 02 */	lhz r0, 0x2(r31)
/* 814E1248 | 7C A3 01 D6 */	mullw r5, r3, r0
.L_814E124C:
/* 814E124C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814E1250 | 7F C3 F3 78 */	mr r3, r30
/* 814E1254 | 7C 9F 02 14 */	add r4, r31, r0
/* 814E1258 | 4B E4 EF D9 */	bl memcpy
/* 814E125C | A0 BF 00 02 */	lhz r5, 0x2(r31)
/* 814E1260 | 7F 63 DB 78 */	mr r3, r27
/* 814E1264 | A0 DF 00 04 */	lhz r6, 0x4(r31)
/* 814E1268 | 7F C4 F3 78 */	mr r4, r30
/* 814E126C | 88 FF 00 00 */	lbz r7, 0x0(r31)
/* 814E1270 | 39 40 00 00 */	li r10, 0x0
/* 814E1274 | 89 1F 00 06 */	lbz r8, 0x6(r31)
/* 814E1278 | 89 3F 00 07 */	lbz r9, 0x7(r31)
/* 814E127C | 48 06 49 F5 */	bl GXInitTexObj
/* 814E1280 | C0 22 8C 74 */	lfs f1, lbl_81695074@sda21(r0)
/* 814E1284 | 7F 63 DB 78 */	mr r3, r27
/* 814E1288 | 38 80 00 01 */	li r4, 0x1
/* 814E128C | 38 A0 00 01 */	li r5, 0x1
/* 814E1290 | FC 40 08 90 */	fmr f2, f1
/* 814E1294 | 38 C0 00 00 */	li r6, 0x0
/* 814E1298 | FC 60 08 90 */	fmr f3, f1
/* 814E129C | 38 E0 00 00 */	li r7, 0x0
/* 814E12A0 | 39 00 00 00 */	li r8, 0x0
/* 814E12A4 | 48 06 4C 21 */	bl GXInitTexObjLOD
/* 814E12A8 | 7F E3 FB 78 */	mr r3, r31
/* 814E12AC | 4B FF 99 C5 */	bl RFLiFree
/* 814E12B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814E12B4 | 48 11 82 59 */	bl _restgpr_27
/* 814E12B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E12BC | 7C 08 03 A6 */	mtlr r0
/* 814E12C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E12C4 | 4E 80 00 20 */	blr
.endfn RFLiInitTexRes

# 0x8161D248..0x8161D358 | size: 0x110
.rodata
.balign 8

# .rodata:0x0 | 0x8161D248 | size: 0x24
.obj cDefaultDrawCoreSetting2Tev, local
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj cDefaultDrawCoreSetting2Tev

# .rodata:0x24 | 0x8161D26C | size: 0x24
.obj cDefaultDrawCoreSetting1Tev, local
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj cDefaultDrawCoreSetting1Tev

# .rodata:0x48 | 0x8161D290 | size: 0x18
.obj cFacelineColor, local
	.4byte 0xF0D8C4FF
	.4byte 0xFFBC80FF
	.4byte 0xD88850FF
	.4byte 0xFFB090FF
	.4byte 0x985030FF
	.4byte 0x522E1CFF
.endobj cFacelineColor

# .rodata:0x60 | 0x8161D2A8 | size: 0x20
.obj cHairColor, local
	.4byte 0x1E1A18FF
	.4byte 0x382015FF
	.4byte 0x552617FF
	.4byte 0x704024FF
	.4byte 0x727278FF
	.4byte 0x49361AFF
	.4byte 0x7A5928FF
	.4byte 0xC19F64FF
.endobj cHairColor

# .rodata:0x80 | 0x8161D2C8 | size: 0x20
.obj cBeardColor, local
	.4byte 0x1E1A18FF
	.4byte 0x382015FF
	.4byte 0x552617FF
	.4byte 0x704024FF
	.4byte 0x727278FF
	.4byte 0x49361AFF
	.4byte 0x7A5928FF
	.4byte 0xC19F64FF
.endobj cBeardColor

# .rodata:0xA0 | 0x8161D2E8 | size: 0x18
.obj cGlassColor, local
	.4byte 0x101010FF
	.4byte 0x603810FF
	.4byte 0x981810FF
	.4byte 0x203060FF
	.4byte 0x905800FF
	.4byte 0x605850FF
.endobj cGlassColor

# .rodata:0xB8 | 0x8161D300 | size: 0x30
.obj cFavoriteColor, local
	.4byte 0xB84030FF
	.4byte 0xF07828FF
	.4byte 0xF8D820FF
	.4byte 0x80C828FF
	.4byte 0x007428FF
	.4byte 0x204898FF
	.4byte 0x40A0D8FF
	.4byte 0xE86078FF
	.4byte 0x702CA8FF
	.4byte 0x483818FF
	.4byte 0xE0E0E0FF
	.4byte 0x181814FF
.endobj cFavoriteColor

# .rodata:0xE8 | 0x8161D330 | size: 0x24
.obj csHeader$3556, local
	.ascii "nosefrhdfacehaircap_berdnslnmaskglas"
.endobj csHeader$3556

# .rodata:0x10C | 0x8161D354 | size: 0x4
.obj gap_07_8161D354_rodata, global
.hidden gap_07_8161D354_rodata
	.4byte 0x00000000
.endobj gap_07_8161D354_rodata

# 0x8166EA90..0x8166EAA0 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166EA90 | size: 0x10
.obj coordinateData, global
	.4byte 0x01020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj coordinateData

# 0x81695070..0x816950B0 | size: 0x40
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695070 | size: 0x4
.obj cWhite, local
	.byte 0xFF, 0xFF, 0xFF, 0xFF
.endobj cWhite

# .sdata2:0x4 | 0x81695074 | size: 0x4
.obj lbl_81695074, global
	.float 0
.endobj lbl_81695074

# .sdata2:0x8 | 0x81695078 | size: 0x4
.obj lbl_81695078, global
	.float 1
.endobj lbl_81695078

# .sdata2:0xC | 0x8169507C | size: 0x4
.obj lbl_8169507C, global
	.float 2
.endobj lbl_8169507C

# .sdata2:0x10 | 0x81695080 | size: 0x4
.obj lbl_81695080, global
	.float 3
.endobj lbl_81695080

# .sdata2:0x14 | 0x81695084 | size: 0x4
.obj lbl_81695084, global
	.float 0.4
.endobj lbl_81695084

# .sdata2:0x18 | 0x81695088 | size: 0x4
.obj lbl_81695088, global
	.float 0.175
.endobj lbl_81695088

# .sdata2:0x1C | 0x8169508C | size: 0x4
.obj lbl_8169508C, global
	.float -1.5
.endobj lbl_8169508C

# .sdata2:0x20 | 0x81695090 | size: 0x4
.obj lbl_81695090, global
	.float 0.15
.endobj lbl_81695090

# .sdata2:0x24 | 0x81695094 | size: 0x4
.obj lbl_81695094, global
	.float 5
.endobj lbl_81695094

# .sdata2:0x28 | 0x81695098 | size: 0x8
.obj lbl_81695098, global
	.double 4503599627370496
.endobj lbl_81695098

# .sdata2:0x30 | 0x816950A0 | size: 0x8
.obj lbl_816950A0, global
	.double 4503601774854144
.endobj lbl_816950A0

# .sdata2:0x38 | 0x816950A8 | size: 0x4
.obj lbl_816950A8, global
	.float 256
.endobj lbl_816950A8

# .sdata2:0x3C | 0x816950AC | size: 0x4
.obj gap_09_816950AC_sdata2, global
.hidden gap_09_816950AC_sdata2
	.4byte 0x00000000
.endobj gap_09_816950AC_sdata2
