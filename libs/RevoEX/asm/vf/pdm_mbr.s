.include "macros.inc"
.file "pdm_mbr.c"

# 0x814BA3BC..0x814BA974 | size: 0x5B8
.text
.balign 4

# .text:0x0 | 0x814BA3BC | size: 0x114
.fn VFipdm_mbr_get_table, global
/* 814BA3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA3C0 | 41 82 00 0C */	beq .L_814BA3CC
/* 814BA3C4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BA3C8 | 40 82 00 0C */	bne .L_814BA3D4
.L_814BA3CC:
/* 814BA3CC | 38 60 00 01 */	li r3, 0x1
/* 814BA3D0 | 4E 80 00 20 */	blr
.L_814BA3D4:
/* 814BA3D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA3D8 | 40 82 00 14 */	bne .L_814BA3EC
/* 814BA3DC | 38 00 00 00 */	li r0, 0x0
/* 814BA3E0 | 90 05 00 04 */	stw r0, 0x4(r5)
/* 814BA3E4 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814BA3E8 | 48 00 00 18 */	b .L_814BA400
.L_814BA3EC:
/* 814BA3EC | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 814BA3F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA3F4 | 40 82 00 08 */	bne .L_814BA3FC
/* 814BA3F8 | 90 85 00 04 */	stw r4, 0x4(r5)
.L_814BA3FC:
/* 814BA3FC | 90 85 00 00 */	stw r4, 0x0(r5)
.L_814BA400:
/* 814BA400 | 38 00 00 04 */	li r0, 0x4
/* 814BA404 | 38 63 01 BE */	addi r3, r3, 0x1be
/* 814BA408 | 7C 09 03 A6 */	mtctr r0
.L_814BA40C:
/* 814BA40C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814BA410 | 98 05 00 08 */	stb r0, 0x8(r5)
/* 814BA414 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 814BA418 | 98 05 00 09 */	stb r0, 0x9(r5)
/* 814BA41C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814BA420 | 98 05 00 0C */	stb r0, 0xc(r5)
/* 814BA424 | 88 83 00 03 */	lbz r4, 0x3(r3)
/* 814BA428 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 814BA42C | 50 80 44 2E */	rlwimi r0, r4, 8, 16, 23
/* 814BA430 | 54 06 15 AE */	rlwinm r6, r0, 2, 22, 23
/* 814BA434 | 7C 04 46 70 */	srawi r4, r0, 8
/* 814BA438 | 54 00 06 BE */	clrlwi r0, r0, 26
/* 814BA43C | 7C 86 22 14 */	add r4, r6, r4
/* 814BA440 | B0 85 00 0A */	sth r4, 0xa(r5)
/* 814BA444 | 98 05 00 0D */	stb r0, 0xd(r5)
/* 814BA448 | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 814BA44C | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 814BA450 | 50 80 44 2E */	rlwimi r0, r4, 8, 16, 23
/* 814BA454 | 98 05 00 10 */	stb r0, 0x10(r5)
/* 814BA458 | 88 83 00 07 */	lbz r4, 0x7(r3)
/* 814BA45C | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 814BA460 | 50 80 44 2E */	rlwimi r0, r4, 8, 16, 23
/* 814BA464 | 54 06 15 AE */	rlwinm r6, r0, 2, 22, 23
/* 814BA468 | 7C 04 46 70 */	srawi r4, r0, 8
/* 814BA46C | 54 00 06 BE */	clrlwi r0, r0, 26
/* 814BA470 | 7C 86 22 14 */	add r4, r6, r4
/* 814BA474 | B0 85 00 0E */	sth r4, 0xe(r5)
/* 814BA478 | 98 05 00 11 */	stb r0, 0x11(r5)
/* 814BA47C | 88 83 00 09 */	lbz r4, 0x9(r3)
/* 814BA480 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 814BA484 | 50 80 44 2E */	rlwimi r0, r4, 8, 16, 23
/* 814BA488 | 88 C3 00 0A */	lbz r6, 0xa(r3)
/* 814BA48C | 88 83 00 0B */	lbz r4, 0xb(r3)
/* 814BA490 | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814BA494 | 50 80 C0 0E */	rlwimi r0, r4, 24, 0, 7
/* 814BA498 | 90 05 00 14 */	stw r0, 0x14(r5)
/* 814BA49C | 88 C3 00 0E */	lbz r6, 0xe(r3)
/* 814BA4A0 | 88 83 00 0D */	lbz r4, 0xd(r3)
/* 814BA4A4 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 814BA4A8 | 88 E3 00 0F */	lbz r7, 0xf(r3)
/* 814BA4AC | 50 80 44 2E */	rlwimi r0, r4, 8, 16, 23
/* 814BA4B0 | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814BA4B4 | 38 63 00 10 */	addi r3, r3, 0x10
/* 814BA4B8 | 50 E0 C0 0E */	rlwimi r0, r7, 24, 0, 7
/* 814BA4BC | 90 05 00 18 */	stw r0, 0x18(r5)
/* 814BA4C0 | 38 A5 00 14 */	addi r5, r5, 0x14
/* 814BA4C4 | 42 00 FF 48 */	bdnz .L_814BA40C
/* 814BA4C8 | 38 60 00 00 */	li r3, 0x0
/* 814BA4CC | 4E 80 00 20 */	blr
.endfn VFipdm_mbr_get_table

# .text:0x114 | 0x814BA4D0 | size: 0xBC
.fn VFipdm_mbr_get_mbr_part_table, global
/* 814BA4D0 | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 814BA4D4 | 7C 08 02 A6 */	mflr r0
/* 814BA4D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA4DC | 90 01 02 24 */	stw r0, 0x224(r1)
/* 814BA4E0 | 93 E1 02 1C */	stw r31, 0x21c(r1)
/* 814BA4E4 | 7C 9F 23 78 */	mr r31, r4
/* 814BA4E8 | 93 C1 02 18 */	stw r30, 0x218(r1)
/* 814BA4EC | 7C 7E 1B 78 */	mr r30, r3
/* 814BA4F0 | 41 82 00 0C */	beq .L_814BA4FC
/* 814BA4F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA4F8 | 40 82 00 0C */	bne .L_814BA504
.L_814BA4FC:
/* 814BA4FC | 38 60 00 01 */	li r3, 0x1
/* 814BA500 | 48 00 00 74 */	b .L_814BA574
.L_814BA504:
/* 814BA504 | 4B FF D4 35 */	bl VFipdm_disk_check_disk_handle
/* 814BA508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA50C | 41 82 00 08 */	beq .L_814BA514
/* 814BA510 | 48 00 00 64 */	b .L_814BA574
.L_814BA514:
/* 814BA514 | 7F C3 F3 78 */	mr r3, r30
/* 814BA518 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BA51C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814BA520 | 38 A0 00 00 */	li r5, 0x0
/* 814BA524 | 38 C0 00 01 */	li r6, 0x1
/* 814BA528 | 4B FF DA FD */	bl VFipdm_disk_physical_read
/* 814BA52C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA530 | 41 82 00 08 */	beq .L_814BA538
/* 814BA534 | 48 00 00 40 */	b .L_814BA574
.L_814BA538:
/* 814BA538 | 7F C3 F3 78 */	mr r3, r30
/* 814BA53C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BA540 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BA544 | 48 00 02 15 */	bl VFipdm_mbr_check_master_boot_record
/* 814BA548 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BA54C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA550 | 41 82 00 18 */	beq .L_814BA568
/* 814BA554 | 7F E5 FB 78 */	mr r5, r31
/* 814BA558 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814BA55C | 38 80 00 00 */	li r4, 0x0
/* 814BA560 | 4B FF FE 5D */	bl VFipdm_mbr_get_table
/* 814BA564 | 48 00 00 0C */	b .L_814BA570
.L_814BA568:
/* 814BA568 | 38 60 00 05 */	li r3, 0x5
/* 814BA56C | 48 00 00 08 */	b .L_814BA574
.L_814BA570:
/* 814BA570 | 38 60 00 00 */	li r3, 0x0
.L_814BA574:
/* 814BA574 | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 814BA578 | 83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 814BA57C | 83 C1 02 18 */	lwz r30, 0x218(r1)
/* 814BA580 | 7C 08 03 A6 */	mtlr r0
/* 814BA584 | 38 21 02 20 */	addi r1, r1, 0x220
/* 814BA588 | 4E 80 00 20 */	blr
.endfn VFipdm_mbr_get_mbr_part_table

# .text:0x1D0 | 0x814BA58C | size: 0x1CC
.fn VFipdm_mbr_get_epbr_part_table, global
/* 814BA58C | 94 21 FD D0 */	stwu r1, -0x230(r1)
/* 814BA590 | 7C 08 02 A6 */	mflr r0
/* 814BA594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA598 | 90 01 02 34 */	stw r0, 0x234(r1)
/* 814BA59C | 93 E1 02 2C */	stw r31, 0x22c(r1)
/* 814BA5A0 | 93 C1 02 28 */	stw r30, 0x228(r1)
/* 814BA5A4 | 7C 9E 23 78 */	mr r30, r4
/* 814BA5A8 | 93 A1 02 24 */	stw r29, 0x224(r1)
/* 814BA5AC | 7C 7D 1B 78 */	mr r29, r3
/* 814BA5B0 | 41 82 00 0C */	beq .L_814BA5BC
/* 814BA5B4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA5B8 | 40 82 00 0C */	bne .L_814BA5C4
.L_814BA5BC:
/* 814BA5BC | 38 60 00 01 */	li r3, 0x1
/* 814BA5C0 | 48 00 01 7C */	b .L_814BA73C
.L_814BA5C4:
/* 814BA5C4 | 4B FF D3 75 */	bl VFipdm_disk_check_disk_handle
/* 814BA5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA5CC | 41 82 00 08 */	beq .L_814BA5D4
/* 814BA5D0 | 48 00 01 6C */	b .L_814BA73C
.L_814BA5D4:
/* 814BA5D4 | 3B E0 00 00 */	li r31, 0x0
/* 814BA5D8 | 38 A0 00 00 */	li r5, 0x0
/* 814BA5DC | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 814BA5E0 | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA5E4 | 88 63 00 09 */	lbz r3, 0x9(r3)
/* 814BA5E8 | 28 03 00 05 */	cmplwi r3, 0x5
/* 814BA5EC | 41 82 00 0C */	beq .L_814BA5F8
/* 814BA5F0 | 28 03 00 0F */	cmplwi r3, 0xf
/* 814BA5F4 | 40 82 00 18 */	bne .L_814BA60C
.L_814BA5F8:
/* 814BA5F8 | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA5FC | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814BA600 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814BA604 | 7F E4 02 14 */	add r31, r4, r0
/* 814BA608 | 48 00 00 A4 */	b .L_814BA6AC
.L_814BA60C:
/* 814BA60C | 38 A0 00 01 */	li r5, 0x1
/* 814BA610 | 1C 05 00 14 */	mulli r0, r5, 0x14
/* 814BA614 | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA618 | 88 63 00 09 */	lbz r3, 0x9(r3)
/* 814BA61C | 28 03 00 05 */	cmplwi r3, 0x5
/* 814BA620 | 41 82 00 0C */	beq .L_814BA62C
/* 814BA624 | 28 03 00 0F */	cmplwi r3, 0xf
/* 814BA628 | 40 82 00 18 */	bne .L_814BA640
.L_814BA62C:
/* 814BA62C | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA630 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814BA634 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814BA638 | 7F E4 02 14 */	add r31, r4, r0
/* 814BA63C | 48 00 00 70 */	b .L_814BA6AC
.L_814BA640:
/* 814BA640 | 38 A0 00 02 */	li r5, 0x2
/* 814BA644 | 1C 05 00 14 */	mulli r0, r5, 0x14
/* 814BA648 | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA64C | 88 63 00 09 */	lbz r3, 0x9(r3)
/* 814BA650 | 28 03 00 05 */	cmplwi r3, 0x5
/* 814BA654 | 41 82 00 0C */	beq .L_814BA660
/* 814BA658 | 28 03 00 0F */	cmplwi r3, 0xf
/* 814BA65C | 40 82 00 18 */	bne .L_814BA674
.L_814BA660:
/* 814BA660 | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA664 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814BA668 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814BA66C | 7F E4 02 14 */	add r31, r4, r0
/* 814BA670 | 48 00 00 3C */	b .L_814BA6AC
.L_814BA674:
/* 814BA674 | 38 A0 00 03 */	li r5, 0x3
/* 814BA678 | 1C 05 00 14 */	mulli r0, r5, 0x14
/* 814BA67C | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA680 | 88 63 00 09 */	lbz r3, 0x9(r3)
/* 814BA684 | 28 03 00 05 */	cmplwi r3, 0x5
/* 814BA688 | 41 82 00 0C */	beq .L_814BA694
/* 814BA68C | 28 03 00 0F */	cmplwi r3, 0xf
/* 814BA690 | 40 82 00 18 */	bne .L_814BA6A8
.L_814BA694:
/* 814BA694 | 7C 7E 02 14 */	add r3, r30, r0
/* 814BA698 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814BA69C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814BA6A0 | 7F E4 02 14 */	add r31, r4, r0
/* 814BA6A4 | 48 00 00 08 */	b .L_814BA6AC
.L_814BA6A8:
/* 814BA6A8 | 38 A0 00 04 */	li r5, 0x4
.L_814BA6AC:
/* 814BA6AC | 28 05 00 04 */	cmplwi r5, 0x4
/* 814BA6B0 | 40 82 00 0C */	bne .L_814BA6BC
/* 814BA6B4 | 38 60 00 07 */	li r3, 0x7
/* 814BA6B8 | 48 00 00 84 */	b .L_814BA73C
.L_814BA6BC:
/* 814BA6BC | 7F A3 EB 78 */	mr r3, r29
/* 814BA6C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BA6C4 | 4B FF DE 79 */	bl VFipdm_disk_get_lba_size
/* 814BA6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA6CC | 41 82 00 08 */	beq .L_814BA6D4
/* 814BA6D0 | 48 00 00 6C */	b .L_814BA73C
.L_814BA6D4:
/* 814BA6D4 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814BA6D8 | 7F A3 EB 78 */	mr r3, r29
/* 814BA6DC | 38 81 00 18 */	addi r4, r1, 0x18
/* 814BA6E0 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 814BA6E4 | 7C 00 4E 70 */	srawi r0, r0, 9
/* 814BA6E8 | 38 C0 00 01 */	li r6, 0x1
/* 814BA6EC | 7C BF 01 D6 */	mullw r5, r31, r0
/* 814BA6F0 | 4B FF D9 35 */	bl VFipdm_disk_physical_read
/* 814BA6F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA6F8 | 41 82 00 08 */	beq .L_814BA700
/* 814BA6FC | 48 00 00 40 */	b .L_814BA73C
.L_814BA700:
/* 814BA700 | 7F A3 EB 78 */	mr r3, r29
/* 814BA704 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814BA708 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814BA70C | 48 00 00 4D */	bl VFipdm_mbr_check_master_boot_record
/* 814BA710 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814BA714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA718 | 41 82 00 18 */	beq .L_814BA730
/* 814BA71C | 7F E4 FB 78 */	mr r4, r31
/* 814BA720 | 7F C5 F3 78 */	mr r5, r30
/* 814BA724 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BA728 | 4B FF FC 95 */	bl VFipdm_mbr_get_table
/* 814BA72C | 48 00 00 0C */	b .L_814BA738
.L_814BA730:
/* 814BA730 | 38 60 00 06 */	li r3, 0x6
/* 814BA734 | 48 00 00 08 */	b .L_814BA73C
.L_814BA738:
/* 814BA738 | 38 60 00 00 */	li r3, 0x0
.L_814BA73C:
/* 814BA73C | 80 01 02 34 */	lwz r0, 0x234(r1)
/* 814BA740 | 83 E1 02 2C */	lwz r31, 0x22c(r1)
/* 814BA744 | 83 C1 02 28 */	lwz r30, 0x228(r1)
/* 814BA748 | 83 A1 02 24 */	lwz r29, 0x224(r1)
/* 814BA74C | 7C 08 03 A6 */	mtlr r0
/* 814BA750 | 38 21 02 30 */	addi r1, r1, 0x230
/* 814BA754 | 4E 80 00 20 */	blr
.endfn VFipdm_mbr_get_epbr_part_table

# .text:0x39C | 0x814BA758 | size: 0x21C
.fn VFipdm_mbr_check_master_boot_record, global
/* 814BA758 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 814BA75C | 7C 08 02 A6 */	mflr r0
/* 814BA760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA764 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 814BA768 | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 814BA76C | 7C BF 2B 78 */	mr r31, r5
/* 814BA770 | 93 C1 00 78 */	stw r30, 0x78(r1)
/* 814BA774 | 7C 9E 23 78 */	mr r30, r4
/* 814BA778 | 93 A1 00 74 */	stw r29, 0x74(r1)
/* 814BA77C | 7C 7D 1B 78 */	mr r29, r3
/* 814BA780 | 41 82 00 14 */	beq .L_814BA794
/* 814BA784 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA788 | 41 82 00 0C */	beq .L_814BA794
/* 814BA78C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BA790 | 40 82 00 0C */	bne .L_814BA79C
.L_814BA794:
/* 814BA794 | 38 60 00 01 */	li r3, 0x1
/* 814BA798 | 48 00 01 C0 */	b .L_814BA958
.L_814BA79C:
/* 814BA79C | 4B FF D1 9D */	bl VFipdm_disk_check_disk_handle
/* 814BA7A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA7A4 | 41 82 00 08 */	beq .L_814BA7AC
/* 814BA7A8 | 48 00 01 B0 */	b .L_814BA958
.L_814BA7AC:
/* 814BA7AC | 38 00 00 00 */	li r0, 0x0
/* 814BA7B0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BA7B4 | 88 1E 01 FE */	lbz r0, 0x1fe(r30)
/* 814BA7B8 | 28 00 00 55 */	cmplwi r0, 0x55
/* 814BA7BC | 40 82 00 10 */	bne .L_814BA7CC
/* 814BA7C0 | 88 1E 01 FF */	lbz r0, 0x1ff(r30)
/* 814BA7C4 | 28 00 00 AA */	cmplwi r0, 0xaa
/* 814BA7C8 | 41 82 00 0C */	beq .L_814BA7D4
.L_814BA7CC:
/* 814BA7CC | 38 60 00 00 */	li r3, 0x0
/* 814BA7D0 | 48 00 01 88 */	b .L_814BA958
.L_814BA7D4:
/* 814BA7D4 | 7F C3 F3 78 */	mr r3, r30
/* 814BA7D8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814BA7DC | 38 80 00 00 */	li r4, 0x0
/* 814BA7E0 | 4B FF FB DD */	bl VFipdm_mbr_get_table
/* 814BA7E4 | 80 E1 00 24 */	lwz r7, 0x24(r1)
/* 814BA7E8 | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 814BA7EC | 80 C1 00 28 */	lwz r6, 0x28(r1)
/* 814BA7F0 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814BA7F4 | 20 67 FF FF */	subfic r3, r7, -0x1
/* 814BA7F8 | 38 00 00 01 */	li r0, 0x1
/* 814BA7FC | 1C 84 00 38 */	mulli r4, r4, 0x38
/* 814BA800 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814BA804 | 7C 06 18 40 */	cmplw r6, r3
/* 814BA808 | 7C A5 22 14 */	add r5, r5, r4
/* 814BA80C | 41 81 00 14 */	bgt .L_814BA820
/* 814BA810 | 80 65 01 BC */	lwz r3, 0x1bc(r5)
/* 814BA814 | 7C 87 32 14 */	add r4, r7, r6
/* 814BA818 | 7C 04 18 40 */	cmplw r4, r3
/* 814BA81C | 40 81 00 10 */	ble .L_814BA82C
.L_814BA820:
/* 814BA820 | 38 00 00 00 */	li r0, 0x0
/* 814BA824 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BA828 | 48 00 00 C4 */	b .L_814BA8EC
.L_814BA82C:
/* 814BA82C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BA830 | 41 82 00 08 */	beq .L_814BA838
/* 814BA834 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814BA838:
/* 814BA838 | 80 E1 00 38 */	lwz r7, 0x38(r1)
/* 814BA83C | 80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 814BA840 | 20 67 FF FF */	subfic r3, r7, -0x1
/* 814BA844 | 7C 06 18 40 */	cmplw r6, r3
/* 814BA848 | 41 81 00 14 */	bgt .L_814BA85C
/* 814BA84C | 80 65 01 BC */	lwz r3, 0x1bc(r5)
/* 814BA850 | 7C 87 32 14 */	add r4, r7, r6
/* 814BA854 | 7C 04 18 40 */	cmplw r4, r3
/* 814BA858 | 40 81 00 10 */	ble .L_814BA868
.L_814BA85C:
/* 814BA85C | 38 00 00 00 */	li r0, 0x0
/* 814BA860 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BA864 | 48 00 00 88 */	b .L_814BA8EC
.L_814BA868:
/* 814BA868 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BA86C | 41 82 00 08 */	beq .L_814BA874
/* 814BA870 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814BA874:
/* 814BA874 | 80 E1 00 4C */	lwz r7, 0x4c(r1)
/* 814BA878 | 80 C1 00 50 */	lwz r6, 0x50(r1)
/* 814BA87C | 20 67 FF FF */	subfic r3, r7, -0x1
/* 814BA880 | 7C 06 18 40 */	cmplw r6, r3
/* 814BA884 | 41 81 00 14 */	bgt .L_814BA898
/* 814BA888 | 80 65 01 BC */	lwz r3, 0x1bc(r5)
/* 814BA88C | 7C 87 32 14 */	add r4, r7, r6
/* 814BA890 | 7C 04 18 40 */	cmplw r4, r3
/* 814BA894 | 40 81 00 10 */	ble .L_814BA8A4
.L_814BA898:
/* 814BA898 | 38 00 00 00 */	li r0, 0x0
/* 814BA89C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BA8A0 | 48 00 00 4C */	b .L_814BA8EC
.L_814BA8A4:
/* 814BA8A4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BA8A8 | 41 82 00 08 */	beq .L_814BA8B0
/* 814BA8AC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814BA8B0:
/* 814BA8B0 | 80 E1 00 60 */	lwz r7, 0x60(r1)
/* 814BA8B4 | 80 C1 00 64 */	lwz r6, 0x64(r1)
/* 814BA8B8 | 20 67 FF FF */	subfic r3, r7, -0x1
/* 814BA8BC | 7C 06 18 40 */	cmplw r6, r3
/* 814BA8C0 | 41 81 00 14 */	bgt .L_814BA8D4
/* 814BA8C4 | 80 65 01 BC */	lwz r3, 0x1bc(r5)
/* 814BA8C8 | 7C 87 32 14 */	add r4, r7, r6
/* 814BA8CC | 7C 04 18 40 */	cmplw r4, r3
/* 814BA8D0 | 40 81 00 10 */	ble .L_814BA8E0
.L_814BA8D4:
/* 814BA8D4 | 38 00 00 00 */	li r0, 0x0
/* 814BA8D8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BA8DC | 48 00 00 10 */	b .L_814BA8EC
.L_814BA8E0:
/* 814BA8E0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BA8E4 | 41 82 00 08 */	beq .L_814BA8EC
/* 814BA8E8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814BA8EC:
/* 814BA8EC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814BA8F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA8F4 | 40 82 00 60 */	bne .L_814BA954
/* 814BA8F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BA8FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA900 | 40 82 00 54 */	bne .L_814BA954
/* 814BA904 | 80 01 00 38 */	lwz r0, 0x38(r1)
/* 814BA908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA90C | 40 82 00 48 */	bne .L_814BA954
/* 814BA910 | 80 01 00 4C */	lwz r0, 0x4c(r1)
/* 814BA914 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA918 | 40 82 00 3C */	bne .L_814BA954
/* 814BA91C | 80 01 00 60 */	lwz r0, 0x60(r1)
/* 814BA920 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA924 | 40 82 00 30 */	bne .L_814BA954
/* 814BA928 | 7F C3 F3 78 */	mr r3, r30
/* 814BA92C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BA930 | 4B FF CA ED */	bl VFipdm_bpb_check_boot_sector
/* 814BA934 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BA938 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BA93C | 40 82 00 10 */	bne .L_814BA94C
/* 814BA940 | 38 00 00 01 */	li r0, 0x1
/* 814BA944 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BA948 | 48 00 00 0C */	b .L_814BA954
.L_814BA94C:
/* 814BA94C | 38 00 00 00 */	li r0, 0x0
/* 814BA950 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814BA954:
/* 814BA954 | 38 60 00 00 */	li r3, 0x0
.L_814BA958:
/* 814BA958 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814BA95C | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 814BA960 | 83 C1 00 78 */	lwz r30, 0x78(r1)
/* 814BA964 | 83 A1 00 74 */	lwz r29, 0x74(r1)
/* 814BA968 | 7C 08 03 A6 */	mtlr r0
/* 814BA96C | 38 21 00 80 */	addi r1, r1, 0x80
/* 814BA970 | 4E 80 00 20 */	blr
.endfn VFipdm_mbr_check_master_boot_record
