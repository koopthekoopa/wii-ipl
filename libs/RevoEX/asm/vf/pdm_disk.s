.include "macros.inc"
.file "pdm_disk.c"

# 0x814B7610..0x814B8BE0 | size: 0x15D0
.text
.balign 4

# .text:0x0 | 0x814B7610 | size: 0x1E4
.fn VFipdm_disk_get_handle, global
/* 814B7610 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B7614 | 7C 08 02 A6 */	mflr r0
/* 814B7618 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B761C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B7620 | 48 14 1E A1 */	bl _savegpr_27
/* 814B7624 | 38 E0 00 00 */	li r7, 0x0
/* 814B7628 | 3D 00 81 0D */	lis r8, VFipdm_disk_set_810CCC20@ha
/* 814B762C | 38 00 00 0D */	li r0, 0xd
/* 814B7630 | 7C 7B 1B 78 */	mr r27, r3
/* 814B7634 | 7C 9C 23 78 */	mr r28, r4
/* 814B7638 | 7C BD 2B 78 */	mr r29, r5
/* 814B763C | 90 E4 00 00 */	stw r7, 0x0(r4)
/* 814B7640 | 39 08 CC 20 */	addi r8, r8, VFipdm_disk_set_810CCC20@l
/* 814B7644 | 3B C0 00 00 */	li r30, 0x0
/* 814B7648 | 3B E0 00 00 */	li r31, 0x0
/* 814B764C | 39 20 00 00 */	li r9, 0x0
/* 814B7650 | 7C 09 03 A6 */	mtctr r0
.L_814B7654:
/* 814B7654 | 55 20 1B 78 */	clrlslwi r0, r9, 16, 3
/* 814B7658 | 7C E8 02 14 */	add r7, r8, r0
/* 814B765C | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814B7660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7664 | 41 82 00 24 */	beq .L_814B7688
/* 814B7668 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814B766C | 55 20 1B 78 */	clrlslwi r0, r9, 16, 3
/* 814B7670 | 7C E8 02 14 */	add r7, r8, r0
/* 814B7674 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814B7678 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B767C | 41 82 00 0C */	beq .L_814B7688
/* 814B7680 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814B7684 | 42 00 FF D0 */	bdnz .L_814B7654
.L_814B7688:
/* 814B7688 | 55 20 04 3E */	clrlwi r0, r9, 16
/* 814B768C | 28 00 00 1A */	cmplwi r0, 0x1a
/* 814B7690 | 41 80 00 0C */	blt .L_814B769C
/* 814B7694 | 38 60 00 08 */	li r3, 0x8
/* 814B7698 | 48 00 01 44 */	b .L_814B77DC
.L_814B769C:
/* 814B769C | 3C E0 81 0D */	lis r7, VFipdm_disk_set_810CCC20@ha
/* 814B76A0 | 38 00 00 0D */	li r0, 0xd
/* 814B76A4 | B1 26 00 00 */	sth r9, 0x0(r6)
/* 814B76A8 | 38 E7 CC 20 */	addi r7, r7, VFipdm_disk_set_810CCC20@l
/* 814B76AC | 39 40 00 00 */	li r10, 0x0
/* 814B76B0 | 7C 09 03 A6 */	mtctr r0
.L_814B76B4:
/* 814B76B4 | 55 40 04 3E */	clrlwi r0, r10, 16
/* 814B76B8 | 1C 00 00 38 */	mulli r0, r0, 0x38
/* 814B76BC | 7C C7 02 14 */	add r6, r7, r0
/* 814B76C0 | 80 06 01 A4 */	lwz r0, 0x1a4(r6)
/* 814B76C4 | 39 06 01 A4 */	addi r8, r6, 0x1a4
/* 814B76C8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814B76CC | 40 82 00 18 */	bne .L_814B76E4
/* 814B76D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B76D4 | 40 82 00 44 */	bne .L_814B7718
/* 814B76D8 | 7D 1E 43 78 */	mr r30, r8
/* 814B76DC | 7D 5F 53 78 */	mr r31, r10
/* 814B76E0 | 48 00 00 38 */	b .L_814B7718
.L_814B76E4:
/* 814B76E4 | 81 26 01 D0 */	lwz r9, 0x1d0(r6)
/* 814B76E8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814B76EC | 80 C9 00 00 */	lwz r6, 0x0(r9)
/* 814B76F0 | 7C 06 00 40 */	cmplw r6, r0
/* 814B76F4 | 40 82 00 24 */	bne .L_814B7718
/* 814B76F8 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814B76FC | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7700 | 7C 06 00 40 */	cmplw r6, r0
/* 814B7704 | 40 82 00 14 */	bne .L_814B7718
/* 814B7708 | 91 04 00 00 */	stw r8, 0x0(r4)
/* 814B770C | 38 60 00 00 */	li r3, 0x0
/* 814B7710 | B1 45 00 00 */	sth r10, 0x0(r5)
/* 814B7714 | 48 00 00 C8 */	b .L_814B77DC
.L_814B7718:
/* 814B7718 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814B771C | 55 40 04 3E */	clrlwi r0, r10, 16
/* 814B7720 | 1C 00 00 38 */	mulli r0, r0, 0x38
/* 814B7724 | 7C C7 02 14 */	add r6, r7, r0
/* 814B7728 | 80 06 01 A4 */	lwz r0, 0x1a4(r6)
/* 814B772C | 39 06 01 A4 */	addi r8, r6, 0x1a4
/* 814B7730 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814B7734 | 40 82 00 18 */	bne .L_814B774C
/* 814B7738 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B773C | 40 82 00 44 */	bne .L_814B7780
/* 814B7740 | 7D 1E 43 78 */	mr r30, r8
/* 814B7744 | 7D 5F 53 78 */	mr r31, r10
/* 814B7748 | 48 00 00 38 */	b .L_814B7780
.L_814B774C:
/* 814B774C | 81 26 01 D0 */	lwz r9, 0x1d0(r6)
/* 814B7750 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814B7754 | 80 C9 00 00 */	lwz r6, 0x0(r9)
/* 814B7758 | 7C 06 00 40 */	cmplw r6, r0
/* 814B775C | 40 82 00 24 */	bne .L_814B7780
/* 814B7760 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814B7764 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7768 | 7C 06 00 40 */	cmplw r6, r0
/* 814B776C | 40 82 00 14 */	bne .L_814B7780
/* 814B7770 | 91 04 00 00 */	stw r8, 0x0(r4)
/* 814B7774 | 38 60 00 00 */	li r3, 0x0
/* 814B7778 | B1 45 00 00 */	sth r10, 0x0(r5)
/* 814B777C | 48 00 00 60 */	b .L_814B77DC
.L_814B7780:
/* 814B7780 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814B7784 | 42 00 FF 30 */	bdnz .L_814B76B4
/* 814B7788 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B778C | 40 82 00 0C */	bne .L_814B7798
/* 814B7790 | 38 60 00 08 */	li r3, 0x8
/* 814B7794 | 48 00 00 48 */	b .L_814B77DC
.L_814B7798:
/* 814B7798 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 814B779C | 38 7E 00 04 */	addi r3, r30, 0x4
/* 814B77A0 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 814B77A4 | 7D 89 03 A6 */	mtctr r12
/* 814B77A8 | 4E 80 04 21 */	bctrl
/* 814B77AC | 93 7E 00 2C */	stw r27, 0x2c(r30)
/* 814B77B0 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B77B4 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B77B8 | 38 60 00 00 */	li r3, 0x0
/* 814B77BC | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B77C0 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814B77C4 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814B77C8 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 814B77CC | 38 04 00 01 */	addi r0, r4, 0x1
/* 814B77D0 | B0 05 00 02 */	sth r0, 0x2(r5)
/* 814B77D4 | 93 DC 00 00 */	stw r30, 0x0(r28)
/* 814B77D8 | B3 FD 00 00 */	sth r31, 0x0(r29)
.L_814B77DC:
/* 814B77DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B77E0 | 48 14 1D 2D */	bl _restgpr_27
/* 814B77E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B77E8 | 7C 08 03 A6 */	mtlr r0
/* 814B77EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B77F0 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_get_handle

# .text:0x1E4 | 0x814B77F4 | size: 0x144
.fn VFipdm_disk_do_get_permission, global
/* 814B77F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B77F8 | 7C 08 02 A6 */	mflr r0
/* 814B77FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B7800 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B7804 | 7C 9F 23 78 */	mr r31, r4
/* 814B7808 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B780C | 7C 7E 1B 78 */	mr r30, r3
/* 814B7810 | A0 04 00 12 */	lhz r0, 0x12(r4)
/* 814B7814 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7818 | 41 82 00 10 */	beq .L_814B7828
/* 814B781C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814B7820 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 814B7824 | 41 82 00 EC */	beq .L_814B7910
.L_814B7828:
/* 814B7828 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814B782C | 7F C3 F3 78 */	mr r3, r30
/* 814B7830 | 81 84 00 08 */	lwz r12, 0x8(r4)
/* 814B7834 | 7D 89 03 A6 */	mtctr r12
/* 814B7838 | 4E 80 04 21 */	bctrl
/* 814B783C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7840 | 7C 64 1B 78 */	mr r4, r3
/* 814B7844 | 41 82 00 1C */	beq .L_814B7860
/* 814B7848 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 814B784C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7850 | 41 82 00 08 */	beq .L_814B7858
/* 814B7854 | 48 00 2B 31 */	bl VFipdm_part_set_driver_error_code
.L_814B7858:
/* 814B7858 | 38 60 00 15 */	li r3, 0x15
/* 814B785C | 48 00 00 C4 */	b .L_814B7920
.L_814B7860:
/* 814B7860 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 814B7864 | 7F C3 F3 78 */	mr r3, r30
/* 814B7868 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 814B786C | 81 85 00 1C */	lwz r12, 0x1c(r5)
/* 814B7870 | 7D 89 03 A6 */	mtctr r12
/* 814B7874 | 4E 80 04 21 */	bctrl
/* 814B7878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B787C | 7C 64 1B 78 */	mr r4, r3
/* 814B7880 | 41 82 00 30 */	beq .L_814B78B0
/* 814B7884 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 814B7888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B788C | 41 82 00 08 */	beq .L_814B7894
/* 814B7890 | 48 00 2A F5 */	bl VFipdm_part_set_driver_error_code
.L_814B7894:
/* 814B7894 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814B7898 | 7F C3 F3 78 */	mr r3, r30
/* 814B789C | 81 84 00 0C */	lwz r12, 0xc(r4)
/* 814B78A0 | 7D 89 03 A6 */	mtctr r12
/* 814B78A4 | 4E 80 04 21 */	bctrl
/* 814B78A8 | 38 60 00 15 */	li r3, 0x15
/* 814B78AC | 48 00 00 74 */	b .L_814B7920
.L_814B78B0:
/* 814B78B0 | A0 1F 00 20 */	lhz r0, 0x20(r31)
/* 814B78B4 | 54 00 05 FF */	clrlwi. r0, r0, 23
/* 814B78B8 | 41 82 00 20 */	beq .L_814B78D8
/* 814B78BC | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814B78C0 | 7F C3 F3 78 */	mr r3, r30
/* 814B78C4 | 81 84 00 0C */	lwz r12, 0xc(r4)
/* 814B78C8 | 7D 89 03 A6 */	mtctr r12
/* 814B78CC | 4E 80 04 21 */	bctrl
/* 814B78D0 | 38 60 00 16 */	li r3, 0x16
/* 814B78D4 | 48 00 00 4C */	b .L_814B7920
.L_814B78D8:
/* 814B78D8 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 814B78DC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814B78E0 | 41 82 00 14 */	beq .L_814B78F4
/* 814B78E4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B78E8 | 60 00 00 10 */	ori r0, r0, 0x10
/* 814B78EC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B78F0 | 48 00 00 10 */	b .L_814B7900
.L_814B78F4:
/* 814B78F4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B78F8 | 54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 814B78FC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814B7900:
/* 814B7900 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B7904 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814B7908 | 54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 814B790C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814B7910:
/* 814B7910 | A0 9F 00 12 */	lhz r4, 0x12(r31)
/* 814B7914 | 38 60 00 00 */	li r3, 0x0
/* 814B7918 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814B791C | B0 1F 00 12 */	sth r0, 0x12(r31)
.L_814B7920:
/* 814B7920 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B7924 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B7928 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B792C | 7C 08 03 A6 */	mtlr r0
/* 814B7930 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B7934 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_do_get_permission

# .text:0x328 | 0x814B7938 | size: 0xB0
.fn VFipdm_disk_check_disk_handle, global
/* 814B7938 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814B793C | 54 64 04 2E */	rlwinm r4, r3, 0, 16, 23
/* 814B7940 | 28 00 00 1A */	cmplwi r0, 0x1a
/* 814B7944 | 40 80 00 0C */	bge .L_814B7950
/* 814B7948 | 28 04 03 00 */	cmplwi r4, 0x300
/* 814B794C | 41 82 00 0C */	beq .L_814B7958
.L_814B7950:
/* 814B7950 | 38 60 00 01 */	li r3, 0x1
/* 814B7954 | 4E 80 00 20 */	blr
.L_814B7958:
/* 814B7958 | 1C 80 00 38 */	mulli r4, r0, 0x38
/* 814B795C | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B7960 | 38 00 00 0D */	li r0, 0xd
/* 814B7964 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B7968 | 7C 85 22 14 */	add r4, r5, r4
/* 814B796C | 38 E4 01 A4 */	addi r7, r4, 0x1a4
/* 814B7970 | 54 64 84 3E */	srwi r4, r3, 16
/* 814B7974 | 38 60 00 00 */	li r3, 0x0
/* 814B7978 | 7C 09 03 A6 */	mtctr r0
.L_814B797C:
/* 814B797C | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B7980 | 7C C5 02 14 */	add r6, r5, r0
/* 814B7984 | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 814B7988 | 7C 00 38 40 */	cmplw r0, r7
/* 814B798C | 40 82 00 10 */	bne .L_814B799C
/* 814B7990 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 814B7994 | 7C 04 00 40 */	cmplw r4, r0
/* 814B7998 | 41 82 00 30 */	beq .L_814B79C8
.L_814B799C:
/* 814B799C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B79A0 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B79A4 | 7C C5 02 14 */	add r6, r5, r0
/* 814B79A8 | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 814B79AC | 7C 00 38 40 */	cmplw r0, r7
/* 814B79B0 | 40 82 00 10 */	bne .L_814B79C0
/* 814B79B4 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 814B79B8 | 7C 04 00 40 */	cmplw r4, r0
/* 814B79BC | 41 82 00 0C */	beq .L_814B79C8
.L_814B79C0:
/* 814B79C0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B79C4 | 42 00 FF B8 */	bdnz .L_814B797C
.L_814B79C8:
/* 814B79C8 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 814B79CC | 38 60 00 1A */	li r3, 0x1a
/* 814B79D0 | 38 04 FF E6 */	subi r0, r4, 0x1a
/* 814B79D4 | 7C 83 1B 38 */	orc r3, r4, r3
/* 814B79D8 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B79DC | 7C 00 18 50 */	subf r0, r0, r3
/* 814B79E0 | 54 03 0F FE */	srwi r3, r0, 31
/* 814B79E4 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_check_disk_handle

# .text:0x3D8 | 0x814B79E8 | size: 0x174
.fn VFipdm_disk_open_disk, global
/* 814B79E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B79EC | 7C 08 02 A6 */	mflr r0
/* 814B79F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B79F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B79F8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B79FC | 7C 9F 23 78 */	mr r31, r4
/* 814B7A00 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B7A04 | 41 82 00 18 */	beq .L_814B7A1C
/* 814B7A08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7A0C | 41 82 00 10 */	beq .L_814B7A1C
/* 814B7A10 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814B7A14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7A18 | 40 82 00 0C */	bne .L_814B7A24
.L_814B7A1C:
/* 814B7A1C | 38 60 00 01 */	li r3, 0x1
/* 814B7A20 | 48 00 01 24 */	b .L_814B7B44
.L_814B7A24:
/* 814B7A24 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814B7A28 | 38 A1 00 0A */	addi r5, r1, 0xa
/* 814B7A2C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814B7A30 | 4B FF FB E1 */	bl VFipdm_disk_get_handle
/* 814B7A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7A38 | 41 82 00 08 */	beq .L_814B7A40
/* 814B7A3C | 48 00 01 08 */	b .L_814B7B44
.L_814B7A40:
/* 814B7A40 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B7A44 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 814B7A48 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814B7A4C | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814B7A50 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B7A54 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814B7A58 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814B7A5C | 40 81 00 0C */	ble .L_814B7A68
/* 814B7A60 | 38 00 00 00 */	li r0, 0x0
/* 814B7A64 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814B7A68:
/* 814B7A68 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B7A6C | 3F C0 81 0D */	lis r30, VFipdm_disk_set_810CCC20@ha
/* 814B7A70 | 3B DE CC 20 */	addi r30, r30, VFipdm_disk_set_810CCC20@l
/* 814B7A74 | A0 64 00 10 */	lhz r3, 0x10(r4)
/* 814B7A78 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814B7A7C | B0 04 00 10 */	sth r0, 0x10(r4)
/* 814B7A80 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814B7A84 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 814B7A88 | 54 00 18 38 */	slwi r0, r0, 3
/* 814B7A8C | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814B7A90 | 7C 9E 02 14 */	add r4, r30, r0
/* 814B7A94 | 80 A6 00 0C */	lwz r5, 0xc(r6)
/* 814B7A98 | 1C 03 00 38 */	mulli r0, r3, 0x38
/* 814B7A9C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814B7AA0 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 814B7AA4 | 60 63 03 00 */	ori r3, r3, 0x300
/* 814B7AA8 | 90 C4 00 08 */	stw r6, 0x8(r4)
/* 814B7AAC | 7C 9E 02 14 */	add r4, r30, r0
/* 814B7AB0 | 80 04 01 B0 */	lwz r0, 0x1b0(r4)
/* 814B7AB4 | 50 03 80 1E */	rlwimi r3, r0, 16, 0, 15
/* 814B7AB8 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 814B7ABC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B7AC0 | A0 04 00 10 */	lhz r0, 0x10(r4)
/* 814B7AC4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B7AC8 | 40 82 00 78 */	bne .L_814B7B40
/* 814B7ACC | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814B7AD0 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 814B7AD4 | 7D 89 03 A6 */	mtctr r12
/* 814B7AD8 | 4E 80 04 21 */	bctrl
/* 814B7ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7AE0 | 41 82 00 60 */	beq .L_814B7B40
/* 814B7AE4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B7AE8 | A0 03 00 10 */	lhz r0, 0x10(r3)
/* 814B7AEC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B7AF0 | 40 82 00 1C */	bne .L_814B7B0C
/* 814B7AF4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814B7AF8 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814B7AFC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814B7B00 | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 814B7B04 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814B7B08 | B0 1E 00 02 */	sth r0, 0x2(r30)
.L_814B7B0C:
/* 814B7B0C | 80 E1 00 0C */	lwz r7, 0xc(r1)
/* 814B7B10 | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B7B14 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B7B18 | 38 A0 00 00 */	li r5, 0x0
/* 814B7B1C | A0 C7 00 10 */	lhz r6, 0x10(r7)
/* 814B7B20 | 38 60 00 15 */	li r3, 0x15
/* 814B7B24 | 38 06 FF FF */	subi r0, r6, 0x1
/* 814B7B28 | B0 07 00 10 */	sth r0, 0x10(r7)
/* 814B7B2C | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814B7B30 | 54 00 18 38 */	slwi r0, r0, 3
/* 814B7B34 | 7C 84 02 14 */	add r4, r4, r0
/* 814B7B38 | 90 A4 00 08 */	stw r5, 0x8(r4)
/* 814B7B3C | 48 00 00 08 */	b .L_814B7B44
.L_814B7B40:
/* 814B7B40 | 38 60 00 00 */	li r3, 0x0
.L_814B7B44:
/* 814B7B44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B7B48 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B7B4C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B7B50 | 7C 08 03 A6 */	mtlr r0
/* 814B7B54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B7B58 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_open_disk

# .text:0x54C | 0x814B7B5C | size: 0x250
.fn VFipdm_disk_close_disk, global
/* 814B7B5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B7B60 | 7C 08 02 A6 */	mflr r0
/* 814B7B64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7B68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B7B6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B7B70 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B7B74 | 40 82 00 0C */	bne .L_814B7B80
/* 814B7B78 | 38 60 00 01 */	li r3, 0x1
/* 814B7B7C | 48 00 02 18 */	b .L_814B7D94
.L_814B7B80:
/* 814B7B80 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B7B84 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B7B88 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B7B8C | 40 80 00 0C */	bge .L_814B7B98
/* 814B7B90 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B7B94 | 41 82 00 0C */	beq .L_814B7BA0
.L_814B7B98:
/* 814B7B98 | 38 00 00 01 */	li r0, 0x1
/* 814B7B9C | 48 00 00 90 */	b .L_814B7C2C
.L_814B7BA0:
/* 814B7BA0 | 1C 88 00 38 */	mulli r4, r8, 0x38
/* 814B7BA4 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B7BA8 | 38 00 00 0D */	li r0, 0xd
/* 814B7BAC | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B7BB0 | 7C 85 22 14 */	add r4, r5, r4
/* 814B7BB4 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B7BB8 | 38 C4 01 A4 */	addi r6, r4, 0x1a4
/* 814B7BBC | 38 80 00 00 */	li r4, 0x0
/* 814B7BC0 | 7C 09 03 A6 */	mtctr r0
.L_814B7BC4:
/* 814B7BC4 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7BC8 | 7D 25 02 14 */	add r9, r5, r0
/* 814B7BCC | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B7BD0 | 7C 00 30 40 */	cmplw r0, r6
/* 814B7BD4 | 40 82 00 10 */	bne .L_814B7BE4
/* 814B7BD8 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7BDC | 7C 07 00 40 */	cmplw r7, r0
/* 814B7BE0 | 41 82 00 30 */	beq .L_814B7C10
.L_814B7BE4:
/* 814B7BE4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7BE8 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7BEC | 7D 25 02 14 */	add r9, r5, r0
/* 814B7BF0 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B7BF4 | 7C 00 30 40 */	cmplw r0, r6
/* 814B7BF8 | 40 82 00 10 */	bne .L_814B7C08
/* 814B7BFC | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7C00 | 7C 07 00 40 */	cmplw r7, r0
/* 814B7C04 | 41 82 00 0C */	beq .L_814B7C10
.L_814B7C08:
/* 814B7C08 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7C0C | 42 00 FF B8 */	bdnz .L_814B7BC4
.L_814B7C10:
/* 814B7C10 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B7C14 | 38 80 00 1A */	li r4, 0x1a
/* 814B7C18 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B7C1C | 7C A4 23 38 */	orc r4, r5, r4
/* 814B7C20 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B7C24 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B7C28 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B7C2C:
/* 814B7C2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7C30 | 41 82 00 0C */	beq .L_814B7C3C
/* 814B7C34 | 7C 03 03 78 */	mr r3, r0
/* 814B7C38 | 48 00 01 5C */	b .L_814B7D94
.L_814B7C3C:
/* 814B7C3C | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B7C40 | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B7C44 | 38 A4 CC 20 */	addi r5, r4, VFipdm_disk_set_810CCC20@l
/* 814B7C48 | 7C 85 02 14 */	add r4, r5, r0
/* 814B7C4C | 3B C4 01 A4 */	addi r30, r4, 0x1a4
/* 814B7C50 | 80 84 01 A4 */	lwz r4, 0x1a4(r4)
/* 814B7C54 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814B7C58 | 40 82 00 0C */	bne .L_814B7C64
/* 814B7C5C | 38 60 00 0D */	li r3, 0xd
/* 814B7C60 | 48 00 01 34 */	b .L_814B7D94
.L_814B7C64:
/* 814B7C64 | 54 80 07 BC */	rlwinm r0, r4, 0, 30, 30
/* 814B7C68 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814B7C6C | 40 82 00 0C */	bne .L_814B7C78
/* 814B7C70 | 38 60 00 0D */	li r3, 0xd
/* 814B7C74 | 48 00 01 20 */	b .L_814B7D94
.L_814B7C78:
/* 814B7C78 | 38 00 00 0D */	li r0, 0xd
/* 814B7C7C | 54 66 84 3E */	srwi r6, r3, 16
/* 814B7C80 | 38 80 00 00 */	li r4, 0x0
/* 814B7C84 | 7C 09 03 A6 */	mtctr r0
.L_814B7C88:
/* 814B7C88 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7C8C | 7C E5 02 14 */	add r7, r5, r0
/* 814B7C90 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814B7C94 | 7C 00 F0 40 */	cmplw r0, r30
/* 814B7C98 | 40 82 00 10 */	bne .L_814B7CA8
/* 814B7C9C | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 814B7CA0 | 7C 06 00 40 */	cmplw r6, r0
/* 814B7CA4 | 41 82 00 30 */	beq .L_814B7CD4
.L_814B7CA8:
/* 814B7CA8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7CAC | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7CB0 | 7C E5 02 14 */	add r7, r5, r0
/* 814B7CB4 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814B7CB8 | 7C 00 F0 40 */	cmplw r0, r30
/* 814B7CBC | 40 82 00 10 */	bne .L_814B7CCC
/* 814B7CC0 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 814B7CC4 | 7C 06 00 40 */	cmplw r6, r0
/* 814B7CC8 | 41 82 00 0C */	beq .L_814B7CD4
.L_814B7CCC:
/* 814B7CCC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7CD0 | 42 00 FF B8 */	bdnz .L_814B7C88
.L_814B7CD4:
/* 814B7CD4 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814B7CD8 | 28 00 00 1A */	cmplwi r0, 0x1a
/* 814B7CDC | 41 80 00 0C */	blt .L_814B7CE8
/* 814B7CE0 | 38 00 00 01 */	li r0, 0x1
/* 814B7CE4 | 48 00 00 0C */	b .L_814B7CF0
.L_814B7CE8:
/* 814B7CE8 | 7C 9F 23 78 */	mr r31, r4
/* 814B7CEC | 38 00 00 00 */	li r0, 0x0
.L_814B7CF0:
/* 814B7CF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7CF4 | 41 82 00 0C */	beq .L_814B7D00
/* 814B7CF8 | 7C 03 03 78 */	mr r3, r0
/* 814B7CFC | 48 00 00 98 */	b .L_814B7D94
.L_814B7D00:
/* 814B7D00 | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 814B7D04 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B7D08 | 40 82 00 38 */	bne .L_814B7D40
/* 814B7D0C | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814B7D10 | 81 84 00 04 */	lwz r12, 0x4(r4)
/* 814B7D14 | 7D 89 03 A6 */	mtctr r12
/* 814B7D18 | 4E 80 04 21 */	bctrl
/* 814B7D1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7D20 | 7C 64 1B 78 */	mr r4, r3
/* 814B7D24 | 41 82 00 1C */	beq .L_814B7D40
/* 814B7D28 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 814B7D2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7D30 | 41 82 00 08 */	beq .L_814B7D38
/* 814B7D34 | 48 00 26 51 */	bl VFipdm_part_set_driver_error_code
.L_814B7D38:
/* 814B7D38 | 38 60 00 15 */	li r3, 0x15
/* 814B7D3C | 48 00 00 58 */	b .L_814B7D94
.L_814B7D40:
/* 814B7D40 | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 814B7D44 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B7D48 | 40 82 00 24 */	bne .L_814B7D6C
/* 814B7D4C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B7D50 | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B7D54 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B7D58 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814B7D5C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814B7D60 | A0 64 00 02 */	lhz r3, 0x2(r4)
/* 814B7D64 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814B7D68 | B0 04 00 02 */	sth r0, 0x2(r4)
.L_814B7D6C:
/* 814B7D6C | A0 9E 00 10 */	lhz r4, 0x10(r30)
/* 814B7D70 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B7D74 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B7D78 | 57 E0 1B 78 */	clrlslwi r0, r31, 16, 3
/* 814B7D7C | 38 84 FF FF */	subi r4, r4, 0x1
/* 814B7D80 | 38 A0 00 00 */	li r5, 0x0
/* 814B7D84 | B0 9E 00 10 */	sth r4, 0x10(r30)
/* 814B7D88 | 7C 83 02 14 */	add r4, r3, r0
/* 814B7D8C | 38 60 00 00 */	li r3, 0x0
/* 814B7D90 | 90 A4 00 08 */	stw r5, 0x8(r4)
.L_814B7D94:
/* 814B7D94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B7D98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B7D9C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B7DA0 | 7C 08 03 A6 */	mtlr r0
/* 814B7DA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B7DA8 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_close_disk

# .text:0x79C | 0x814B7DAC | size: 0xE8
.fn VFipdm_disk_get_part_permission, global
/* 814B7DAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7DB0 | 40 82 00 0C */	bne .L_814B7DBC
/* 814B7DB4 | 38 60 00 01 */	li r3, 0x1
/* 814B7DB8 | 4E 80 00 20 */	blr
.L_814B7DBC:
/* 814B7DBC | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B7DC0 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B7DC4 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B7DC8 | 40 80 00 0C */	bge .L_814B7DD4
/* 814B7DCC | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B7DD0 | 41 82 00 0C */	beq .L_814B7DDC
.L_814B7DD4:
/* 814B7DD4 | 38 00 00 01 */	li r0, 0x1
/* 814B7DD8 | 48 00 00 90 */	b .L_814B7E68
.L_814B7DDC:
/* 814B7DDC | 1C 88 00 38 */	mulli r4, r8, 0x38
/* 814B7DE0 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B7DE4 | 38 00 00 0D */	li r0, 0xd
/* 814B7DE8 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B7DEC | 7C 85 22 14 */	add r4, r5, r4
/* 814B7DF0 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B7DF4 | 38 C4 01 A4 */	addi r6, r4, 0x1a4
/* 814B7DF8 | 38 80 00 00 */	li r4, 0x0
/* 814B7DFC | 7C 09 03 A6 */	mtctr r0
.L_814B7E00:
/* 814B7E00 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7E04 | 7D 25 02 14 */	add r9, r5, r0
/* 814B7E08 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B7E0C | 7C 00 30 40 */	cmplw r0, r6
/* 814B7E10 | 40 82 00 10 */	bne .L_814B7E20
/* 814B7E14 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7E18 | 7C 07 00 40 */	cmplw r7, r0
/* 814B7E1C | 41 82 00 30 */	beq .L_814B7E4C
.L_814B7E20:
/* 814B7E20 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7E24 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7E28 | 7D 25 02 14 */	add r9, r5, r0
/* 814B7E2C | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B7E30 | 7C 00 30 40 */	cmplw r0, r6
/* 814B7E34 | 40 82 00 10 */	bne .L_814B7E44
/* 814B7E38 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7E3C | 7C 07 00 40 */	cmplw r7, r0
/* 814B7E40 | 41 82 00 0C */	beq .L_814B7E4C
.L_814B7E44:
/* 814B7E44 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7E48 | 42 00 FF B8 */	bdnz .L_814B7E00
.L_814B7E4C:
/* 814B7E4C | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B7E50 | 38 80 00 1A */	li r4, 0x1a
/* 814B7E54 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B7E58 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B7E5C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B7E60 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B7E64 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B7E68:
/* 814B7E68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7E6C | 41 82 00 0C */	beq .L_814B7E78
/* 814B7E70 | 7C 03 03 78 */	mr r3, r0
/* 814B7E74 | 4E 80 00 20 */	blr
.L_814B7E78:
/* 814B7E78 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B7E7C | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B7E80 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B7E84 | 7C 84 02 14 */	add r4, r4, r0
/* 814B7E88 | 38 84 01 A4 */	addi r4, r4, 0x1a4
/* 814B7E8C | 4B FF F9 68 */	b VFipdm_disk_do_get_permission
/* 814B7E90 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_get_part_permission

# .text:0x884 | 0x814B7E94 | size: 0x190
.fn VFipdm_disk_release_part_permission, global
/* 814B7E94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B7E98 | 7C 08 02 A6 */	mflr r0
/* 814B7E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7EA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B7EA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B7EA8 | 7C 9F 23 78 */	mr r31, r4
/* 814B7EAC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B7EB0 | 40 82 00 0C */	bne .L_814B7EBC
/* 814B7EB4 | 38 60 00 01 */	li r3, 0x1
/* 814B7EB8 | 48 00 01 54 */	b .L_814B800C
.L_814B7EBC:
/* 814B7EBC | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B7EC0 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B7EC4 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B7EC8 | 40 80 00 0C */	bge .L_814B7ED4
/* 814B7ECC | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B7ED0 | 41 82 00 0C */	beq .L_814B7EDC
.L_814B7ED4:
/* 814B7ED4 | 38 00 00 01 */	li r0, 0x1
/* 814B7ED8 | 48 00 00 90 */	b .L_814B7F68
.L_814B7EDC:
/* 814B7EDC | 1C 88 00 38 */	mulli r4, r8, 0x38
/* 814B7EE0 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B7EE4 | 38 00 00 0D */	li r0, 0xd
/* 814B7EE8 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B7EEC | 7C 85 22 14 */	add r4, r5, r4
/* 814B7EF0 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B7EF4 | 38 C4 01 A4 */	addi r6, r4, 0x1a4
/* 814B7EF8 | 38 80 00 00 */	li r4, 0x0
/* 814B7EFC | 7C 09 03 A6 */	mtctr r0
.L_814B7F00:
/* 814B7F00 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7F04 | 7D 25 02 14 */	add r9, r5, r0
/* 814B7F08 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B7F0C | 7C 00 30 40 */	cmplw r0, r6
/* 814B7F10 | 40 82 00 10 */	bne .L_814B7F20
/* 814B7F14 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7F18 | 7C 07 00 40 */	cmplw r7, r0
/* 814B7F1C | 41 82 00 30 */	beq .L_814B7F4C
.L_814B7F20:
/* 814B7F20 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7F24 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B7F28 | 7D 25 02 14 */	add r9, r5, r0
/* 814B7F2C | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B7F30 | 7C 00 30 40 */	cmplw r0, r6
/* 814B7F34 | 40 82 00 10 */	bne .L_814B7F44
/* 814B7F38 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B7F3C | 7C 07 00 40 */	cmplw r7, r0
/* 814B7F40 | 41 82 00 0C */	beq .L_814B7F4C
.L_814B7F44:
/* 814B7F44 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B7F48 | 42 00 FF B8 */	bdnz .L_814B7F00
.L_814B7F4C:
/* 814B7F4C | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B7F50 | 38 80 00 1A */	li r4, 0x1a
/* 814B7F54 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B7F58 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B7F5C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B7F60 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B7F64 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B7F68:
/* 814B7F68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7F6C | 41 82 00 0C */	beq .L_814B7F78
/* 814B7F70 | 7C 03 03 78 */	mr r3, r0
/* 814B7F74 | 48 00 00 98 */	b .L_814B800C
.L_814B7F78:
/* 814B7F78 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B7F7C | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B7F80 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B7F84 | 7F C4 02 14 */	add r30, r4, r0
/* 814B7F88 | A0 1E 01 B6 */	lhz r0, 0x1b6(r30)
/* 814B7F8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7F90 | 40 82 00 0C */	bne .L_814B7F9C
/* 814B7F94 | 38 60 00 0E */	li r3, 0xe
/* 814B7F98 | 48 00 00 74 */	b .L_814B800C
.L_814B7F9C:
/* 814B7F9C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B7FA0 | 38 80 00 00 */	li r4, 0x0
/* 814B7FA4 | 40 82 00 34 */	bne .L_814B7FD8
/* 814B7FA8 | 80 9E 01 A8 */	lwz r4, 0x1a8(r30)
/* 814B7FAC | 81 84 00 0C */	lwz r12, 0xc(r4)
/* 814B7FB0 | 7D 89 03 A6 */	mtctr r12
/* 814B7FB4 | 4E 80 04 21 */	bctrl
/* 814B7FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7FBC | 7C 64 1B 78 */	mr r4, r3
/* 814B7FC0 | 41 82 00 18 */	beq .L_814B7FD8
/* 814B7FC4 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 814B7FC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7FCC | 41 82 00 08 */	beq .L_814B7FD4
/* 814B7FD0 | 48 00 23 B5 */	bl VFipdm_part_set_driver_error_code
.L_814B7FD4:
/* 814B7FD4 | 38 80 00 15 */	li r4, 0x15
.L_814B7FD8:
/* 814B7FD8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B7FDC | 41 82 00 0C */	beq .L_814B7FE8
/* 814B7FE0 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814B7FE4 | 40 82 00 24 */	bne .L_814B8008
.L_814B7FE8:
/* 814B7FE8 | A0 7E 01 B6 */	lhz r3, 0x1b6(r30)
/* 814B7FEC | 38 63 FF FF */	subi r3, r3, 0x1
/* 814B7FF0 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814B7FF4 | B0 7E 01 B6 */	sth r3, 0x1b6(r30)
/* 814B7FF8 | 40 82 00 10 */	bne .L_814B8008
/* 814B7FFC | 80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 814B8000 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814B8004 | 90 1E 01 A4 */	stw r0, 0x1a4(r30)
.L_814B8008:
/* 814B8008 | 7C 83 23 78 */	mr r3, r4
.L_814B800C:
/* 814B800C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B8010 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B8014 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B8018 | 7C 08 03 A6 */	mtlr r0
/* 814B801C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B8020 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_release_part_permission

# .text:0xA14 | 0x814B8024 | size: 0x150
.fn VFipdm_disk_physical_read, global
/* 814B8024 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B8028 | 7C 08 02 A6 */	mflr r0
/* 814B802C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8030 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B8034 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B8038 | 41 82 00 1C */	beq .L_814B8054
/* 814B803C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8040 | 41 82 00 14 */	beq .L_814B8054
/* 814B8044 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B8048 | 41 82 00 0C */	beq .L_814B8054
/* 814B804C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814B8050 | 40 82 00 0C */	bne .L_814B805C
.L_814B8054:
/* 814B8054 | 38 60 00 01 */	li r3, 0x1
/* 814B8058 | 48 00 01 08 */	b .L_814B8160
.L_814B805C:
/* 814B805C | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 814B8060 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B8064 | 28 0C 00 1A */	cmplwi r12, 0x1a
/* 814B8068 | 40 80 00 0C */	bge .L_814B8074
/* 814B806C | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8070 | 41 82 00 0C */	beq .L_814B807C
.L_814B8074:
/* 814B8074 | 38 00 00 01 */	li r0, 0x1
/* 814B8078 | 48 00 00 90 */	b .L_814B8108
.L_814B807C:
/* 814B807C | 1D 0C 00 38 */	mulli r8, r12, 0x38
/* 814B8080 | 3D 20 81 0D */	lis r9, VFipdm_disk_set_810CCC20@ha
/* 814B8084 | 38 00 00 0D */	li r0, 0xd
/* 814B8088 | 39 29 CC 20 */	addi r9, r9, VFipdm_disk_set_810CCC20@l
/* 814B808C | 7D 09 42 14 */	add r8, r9, r8
/* 814B8090 | 54 6B 84 3E */	srwi r11, r3, 16
/* 814B8094 | 39 48 01 A4 */	addi r10, r8, 0x1a4
/* 814B8098 | 39 00 00 00 */	li r8, 0x0
/* 814B809C | 7C 09 03 A6 */	mtctr r0
.L_814B80A0:
/* 814B80A0 | 55 00 1B 78 */	clrlslwi r0, r8, 16, 3
/* 814B80A4 | 7F E9 02 14 */	add r31, r9, r0
/* 814B80A8 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B80AC | 7C 00 50 40 */	cmplw r0, r10
/* 814B80B0 | 40 82 00 10 */	bne .L_814B80C0
/* 814B80B4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814B80B8 | 7C 0B 00 40 */	cmplw r11, r0
/* 814B80BC | 41 82 00 30 */	beq .L_814B80EC
.L_814B80C0:
/* 814B80C0 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814B80C4 | 55 00 1B 78 */	clrlslwi r0, r8, 16, 3
/* 814B80C8 | 7F E9 02 14 */	add r31, r9, r0
/* 814B80CC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B80D0 | 7C 00 50 40 */	cmplw r0, r10
/* 814B80D4 | 40 82 00 10 */	bne .L_814B80E4
/* 814B80D8 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814B80DC | 7C 0B 00 40 */	cmplw r11, r0
/* 814B80E0 | 41 82 00 0C */	beq .L_814B80EC
.L_814B80E4:
/* 814B80E4 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814B80E8 | 42 00 FF B8 */	bdnz .L_814B80A0
.L_814B80EC:
/* 814B80EC | 55 09 04 3E */	clrlwi r9, r8, 16
/* 814B80F0 | 39 00 00 1A */	li r8, 0x1a
/* 814B80F4 | 38 09 FF E6 */	subi r0, r9, 0x1a
/* 814B80F8 | 7D 28 43 38 */	orc r8, r9, r8
/* 814B80FC | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B8100 | 7C 00 40 50 */	subf r0, r0, r8
/* 814B8104 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B8108:
/* 814B8108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B810C | 41 82 00 0C */	beq .L_814B8118
/* 814B8110 | 7C 03 03 78 */	mr r3, r0
/* 814B8114 | 48 00 00 4C */	b .L_814B8160
.L_814B8118:
/* 814B8118 | 1C 0C 00 38 */	mulli r0, r12, 0x38
/* 814B811C | 3D 00 81 0D */	lis r8, VFipdm_disk_set_810CCC20@ha
/* 814B8120 | 39 08 CC 20 */	addi r8, r8, VFipdm_disk_set_810CCC20@l
/* 814B8124 | 7F E8 02 14 */	add r31, r8, r0
/* 814B8128 | 81 1F 01 A8 */	lwz r8, 0x1a8(r31)
/* 814B812C | 81 88 00 14 */	lwz r12, 0x14(r8)
/* 814B8130 | 7D 89 03 A6 */	mtctr r12
/* 814B8134 | 4E 80 04 21 */	bctrl
/* 814B8138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B813C | 7C 64 1B 78 */	mr r4, r3
/* 814B8140 | 41 82 00 1C */	beq .L_814B815C
/* 814B8144 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814B8148 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B814C | 41 82 00 08 */	beq .L_814B8154
/* 814B8150 | 48 00 22 35 */	bl VFipdm_part_set_driver_error_code
.L_814B8154:
/* 814B8154 | 38 60 00 15 */	li r3, 0x15
/* 814B8158 | 48 00 00 08 */	b .L_814B8160
.L_814B815C:
/* 814B815C | 38 60 00 00 */	li r3, 0x0
.L_814B8160:
/* 814B8160 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B8164 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B8168 | 7C 08 03 A6 */	mtlr r0
/* 814B816C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B8170 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_physical_read

# .text:0xB64 | 0x814B8174 | size: 0x150
.fn VFipdm_disk_physical_write, global
/* 814B8174 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B8178 | 7C 08 02 A6 */	mflr r0
/* 814B817C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8180 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B8184 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B8188 | 41 82 00 1C */	beq .L_814B81A4
/* 814B818C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8190 | 41 82 00 14 */	beq .L_814B81A4
/* 814B8194 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B8198 | 41 82 00 0C */	beq .L_814B81A4
/* 814B819C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814B81A0 | 40 82 00 0C */	bne .L_814B81AC
.L_814B81A4:
/* 814B81A4 | 38 60 00 01 */	li r3, 0x1
/* 814B81A8 | 48 00 01 08 */	b .L_814B82B0
.L_814B81AC:
/* 814B81AC | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 814B81B0 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B81B4 | 28 0C 00 1A */	cmplwi r12, 0x1a
/* 814B81B8 | 40 80 00 0C */	bge .L_814B81C4
/* 814B81BC | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B81C0 | 41 82 00 0C */	beq .L_814B81CC
.L_814B81C4:
/* 814B81C4 | 38 00 00 01 */	li r0, 0x1
/* 814B81C8 | 48 00 00 90 */	b .L_814B8258
.L_814B81CC:
/* 814B81CC | 1D 0C 00 38 */	mulli r8, r12, 0x38
/* 814B81D0 | 3D 20 81 0D */	lis r9, VFipdm_disk_set_810CCC20@ha
/* 814B81D4 | 38 00 00 0D */	li r0, 0xd
/* 814B81D8 | 39 29 CC 20 */	addi r9, r9, VFipdm_disk_set_810CCC20@l
/* 814B81DC | 7D 09 42 14 */	add r8, r9, r8
/* 814B81E0 | 54 6B 84 3E */	srwi r11, r3, 16
/* 814B81E4 | 39 48 01 A4 */	addi r10, r8, 0x1a4
/* 814B81E8 | 39 00 00 00 */	li r8, 0x0
/* 814B81EC | 7C 09 03 A6 */	mtctr r0
.L_814B81F0:
/* 814B81F0 | 55 00 1B 78 */	clrlslwi r0, r8, 16, 3
/* 814B81F4 | 7F E9 02 14 */	add r31, r9, r0
/* 814B81F8 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B81FC | 7C 00 50 40 */	cmplw r0, r10
/* 814B8200 | 40 82 00 10 */	bne .L_814B8210
/* 814B8204 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814B8208 | 7C 0B 00 40 */	cmplw r11, r0
/* 814B820C | 41 82 00 30 */	beq .L_814B823C
.L_814B8210:
/* 814B8210 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814B8214 | 55 00 1B 78 */	clrlslwi r0, r8, 16, 3
/* 814B8218 | 7F E9 02 14 */	add r31, r9, r0
/* 814B821C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B8220 | 7C 00 50 40 */	cmplw r0, r10
/* 814B8224 | 40 82 00 10 */	bne .L_814B8234
/* 814B8228 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814B822C | 7C 0B 00 40 */	cmplw r11, r0
/* 814B8230 | 41 82 00 0C */	beq .L_814B823C
.L_814B8234:
/* 814B8234 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814B8238 | 42 00 FF B8 */	bdnz .L_814B81F0
.L_814B823C:
/* 814B823C | 55 09 04 3E */	clrlwi r9, r8, 16
/* 814B8240 | 39 00 00 1A */	li r8, 0x1a
/* 814B8244 | 38 09 FF E6 */	subi r0, r9, 0x1a
/* 814B8248 | 7D 28 43 38 */	orc r8, r9, r8
/* 814B824C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B8250 | 7C 00 40 50 */	subf r0, r0, r8
/* 814B8254 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B8258:
/* 814B8258 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B825C | 41 82 00 0C */	beq .L_814B8268
/* 814B8260 | 7C 03 03 78 */	mr r3, r0
/* 814B8264 | 48 00 00 4C */	b .L_814B82B0
.L_814B8268:
/* 814B8268 | 1C 0C 00 38 */	mulli r0, r12, 0x38
/* 814B826C | 3D 00 81 0D */	lis r8, VFipdm_disk_set_810CCC20@ha
/* 814B8270 | 39 08 CC 20 */	addi r8, r8, VFipdm_disk_set_810CCC20@l
/* 814B8274 | 7F E8 02 14 */	add r31, r8, r0
/* 814B8278 | 81 1F 01 A8 */	lwz r8, 0x1a8(r31)
/* 814B827C | 81 88 00 18 */	lwz r12, 0x18(r8)
/* 814B8280 | 7D 89 03 A6 */	mtctr r12
/* 814B8284 | 4E 80 04 21 */	bctrl
/* 814B8288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B828C | 7C 64 1B 78 */	mr r4, r3
/* 814B8290 | 41 82 00 1C */	beq .L_814B82AC
/* 814B8294 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814B8298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B829C | 41 82 00 08 */	beq .L_814B82A4
/* 814B82A0 | 48 00 20 E5 */	bl VFipdm_part_set_driver_error_code
.L_814B82A4:
/* 814B82A4 | 38 60 00 15 */	li r3, 0x15
/* 814B82A8 | 48 00 00 08 */	b .L_814B82B0
.L_814B82AC:
/* 814B82AC | 38 60 00 00 */	li r3, 0x0
.L_814B82B0:
/* 814B82B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B82B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B82B8 | 7C 08 03 A6 */	mtlr r0
/* 814B82BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B82C0 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_physical_write

# .text:0xCB4 | 0x814B82C4 | size: 0x140
.fn VFipdm_disk_physical_erase, global
/* 814B82C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B82C8 | 7C 08 02 A6 */	mflr r0
/* 814B82CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B82D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B82D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B82D8 | 41 82 00 0C */	beq .L_814B82E4
/* 814B82DC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B82E0 | 40 82 00 0C */	bne .L_814B82EC
.L_814B82E4:
/* 814B82E4 | 38 60 00 01 */	li r3, 0x1
/* 814B82E8 | 48 00 01 08 */	b .L_814B83F0
.L_814B82EC:
/* 814B82EC | 54 69 06 3E */	clrlwi r9, r3, 24
/* 814B82F0 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B82F4 | 28 09 00 1A */	cmplwi r9, 0x1a
/* 814B82F8 | 40 80 00 0C */	bge .L_814B8304
/* 814B82FC | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8300 | 41 82 00 0C */	beq .L_814B830C
.L_814B8304:
/* 814B8304 | 38 60 00 01 */	li r3, 0x1
/* 814B8308 | 48 00 00 90 */	b .L_814B8398
.L_814B830C:
/* 814B830C | 1C C9 00 38 */	mulli r6, r9, 0x38
/* 814B8310 | 3C E0 81 0D */	lis r7, VFipdm_disk_set_810CCC20@ha
/* 814B8314 | 54 68 84 3E */	srwi r8, r3, 16
/* 814B8318 | 38 E7 CC 20 */	addi r7, r7, VFipdm_disk_set_810CCC20@l
/* 814B831C | 7C C7 32 14 */	add r6, r7, r6
/* 814B8320 | 38 00 00 0D */	li r0, 0xd
/* 814B8324 | 38 C6 01 A4 */	addi r6, r6, 0x1a4
/* 814B8328 | 38 60 00 00 */	li r3, 0x0
/* 814B832C | 7C 09 03 A6 */	mtctr r0
.L_814B8330:
/* 814B8330 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B8334 | 7D 47 02 14 */	add r10, r7, r0
/* 814B8338 | 80 0A 00 08 */	lwz r0, 0x8(r10)
/* 814B833C | 7C 00 30 40 */	cmplw r0, r6
/* 814B8340 | 40 82 00 10 */	bne .L_814B8350
/* 814B8344 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B8348 | 7C 08 00 40 */	cmplw r8, r0
/* 814B834C | 41 82 00 30 */	beq .L_814B837C
.L_814B8350:
/* 814B8350 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B8354 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B8358 | 7D 47 02 14 */	add r10, r7, r0
/* 814B835C | 80 0A 00 08 */	lwz r0, 0x8(r10)
/* 814B8360 | 7C 00 30 40 */	cmplw r0, r6
/* 814B8364 | 40 82 00 10 */	bne .L_814B8374
/* 814B8368 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B836C | 7C 08 00 40 */	cmplw r8, r0
/* 814B8370 | 41 82 00 0C */	beq .L_814B837C
.L_814B8374:
/* 814B8374 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B8378 | 42 00 FF B8 */	bdnz .L_814B8330
.L_814B837C:
/* 814B837C | 54 66 04 3E */	clrlwi r6, r3, 16
/* 814B8380 | 38 60 00 1A */	li r3, 0x1a
/* 814B8384 | 38 06 FF E6 */	subi r0, r6, 0x1a
/* 814B8388 | 7C C3 1B 38 */	orc r3, r6, r3
/* 814B838C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B8390 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B8394 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B8398:
/* 814B8398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B839C | 41 82 00 08 */	beq .L_814B83A4
/* 814B83A0 | 48 00 00 50 */	b .L_814B83F0
.L_814B83A4:
/* 814B83A4 | 1C 09 00 38 */	mulli r0, r9, 0x38
/* 814B83A8 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B83AC | 7C 83 23 78 */	mr r3, r4
/* 814B83B0 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B83B4 | 7F E6 02 14 */	add r31, r6, r0
/* 814B83B8 | 7C A4 2B 78 */	mr r4, r5
/* 814B83BC | 81 9F 01 D8 */	lwz r12, 0x1d8(r31)
/* 814B83C0 | 7D 89 03 A6 */	mtctr r12
/* 814B83C4 | 4E 80 04 21 */	bctrl
/* 814B83C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B83CC | 7C 64 1B 78 */	mr r4, r3
/* 814B83D0 | 41 82 00 1C */	beq .L_814B83EC
/* 814B83D4 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814B83D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B83DC | 41 82 00 08 */	beq .L_814B83E4
/* 814B83E0 | 48 00 1F A5 */	bl VFipdm_part_set_driver_error_code
.L_814B83E4:
/* 814B83E4 | 38 60 00 15 */	li r3, 0x15
/* 814B83E8 | 48 00 00 08 */	b .L_814B83F0
.L_814B83EC:
/* 814B83EC | 38 60 00 00 */	li r3, 0x0
.L_814B83F0:
/* 814B83F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B83F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B83F8 | 7C 08 03 A6 */	mtlr r0
/* 814B83FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B8400 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_physical_erase

# .text:0xDF4 | 0x814B8404 | size: 0x138
.fn VFipdm_disk_format, global
/* 814B8404 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B8408 | 7C 08 02 A6 */	mflr r0
/* 814B840C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8410 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B8414 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B8418 | 40 82 00 0C */	bne .L_814B8424
/* 814B841C | 38 60 00 01 */	li r3, 0x1
/* 814B8420 | 48 00 01 08 */	b .L_814B8528
.L_814B8424:
/* 814B8424 | 54 69 06 3E */	clrlwi r9, r3, 24
/* 814B8428 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B842C | 28 09 00 1A */	cmplwi r9, 0x1a
/* 814B8430 | 40 80 00 0C */	bge .L_814B843C
/* 814B8434 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8438 | 41 82 00 0C */	beq .L_814B8444
.L_814B843C:
/* 814B843C | 38 00 00 01 */	li r0, 0x1
/* 814B8440 | 48 00 00 90 */	b .L_814B84D0
.L_814B8444:
/* 814B8444 | 1C A9 00 38 */	mulli r5, r9, 0x38
/* 814B8448 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B844C | 38 00 00 0D */	li r0, 0xd
/* 814B8450 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B8454 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B8458 | 54 68 84 3E */	srwi r8, r3, 16
/* 814B845C | 38 E5 01 A4 */	addi r7, r5, 0x1a4
/* 814B8460 | 38 A0 00 00 */	li r5, 0x0
/* 814B8464 | 7C 09 03 A6 */	mtctr r0
.L_814B8468:
/* 814B8468 | 54 A0 1B 78 */	clrlslwi r0, r5, 16, 3
/* 814B846C | 7D 46 02 14 */	add r10, r6, r0
/* 814B8470 | 80 0A 00 08 */	lwz r0, 0x8(r10)
/* 814B8474 | 7C 00 38 40 */	cmplw r0, r7
/* 814B8478 | 40 82 00 10 */	bne .L_814B8488
/* 814B847C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B8480 | 7C 08 00 40 */	cmplw r8, r0
/* 814B8484 | 41 82 00 30 */	beq .L_814B84B4
.L_814B8488:
/* 814B8488 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814B848C | 54 A0 1B 78 */	clrlslwi r0, r5, 16, 3
/* 814B8490 | 7D 46 02 14 */	add r10, r6, r0
/* 814B8494 | 80 0A 00 08 */	lwz r0, 0x8(r10)
/* 814B8498 | 7C 00 38 40 */	cmplw r0, r7
/* 814B849C | 40 82 00 10 */	bne .L_814B84AC
/* 814B84A0 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B84A4 | 7C 08 00 40 */	cmplw r8, r0
/* 814B84A8 | 41 82 00 0C */	beq .L_814B84B4
.L_814B84AC:
/* 814B84AC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814B84B0 | 42 00 FF B8 */	bdnz .L_814B8468
.L_814B84B4:
/* 814B84B4 | 54 A6 04 3E */	clrlwi r6, r5, 16
/* 814B84B8 | 38 A0 00 1A */	li r5, 0x1a
/* 814B84BC | 38 06 FF E6 */	subi r0, r6, 0x1a
/* 814B84C0 | 7C C5 2B 38 */	orc r5, r6, r5
/* 814B84C4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B84C8 | 7C 00 28 50 */	subf r0, r0, r5
/* 814B84CC | 54 00 0F FE */	srwi r0, r0, 31
.L_814B84D0:
/* 814B84D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B84D4 | 41 82 00 0C */	beq .L_814B84E0
/* 814B84D8 | 7C 03 03 78 */	mr r3, r0
/* 814B84DC | 48 00 00 4C */	b .L_814B8528
.L_814B84E0:
/* 814B84E0 | 1C 09 00 38 */	mulli r0, r9, 0x38
/* 814B84E4 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B84E8 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B84EC | 7F E5 02 14 */	add r31, r5, r0
/* 814B84F0 | 80 BF 01 A8 */	lwz r5, 0x1a8(r31)
/* 814B84F4 | 81 85 00 10 */	lwz r12, 0x10(r5)
/* 814B84F8 | 7D 89 03 A6 */	mtctr r12
/* 814B84FC | 4E 80 04 21 */	bctrl
/* 814B8500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8504 | 7C 64 1B 78 */	mr r4, r3
/* 814B8508 | 41 82 00 1C */	beq .L_814B8524
/* 814B850C | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814B8510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8514 | 41 82 00 08 */	beq .L_814B851C
/* 814B8518 | 48 00 1E 6D */	bl VFipdm_part_set_driver_error_code
.L_814B851C:
/* 814B851C | 38 60 00 15 */	li r3, 0x15
/* 814B8520 | 48 00 00 08 */	b .L_814B8528
.L_814B8524:
/* 814B8524 | 38 60 00 00 */	li r3, 0x0
.L_814B8528:
/* 814B8528 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B852C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B8530 | 7C 08 03 A6 */	mtlr r0
/* 814B8534 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B8538 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_format

# .text:0xF2C | 0x814B853C | size: 0xEC
.fn VFipdm_disk_get_lba_size, global
/* 814B853C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8540 | 41 82 00 0C */	beq .L_814B854C
/* 814B8544 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8548 | 40 82 00 0C */	bne .L_814B8554
.L_814B854C:
/* 814B854C | 38 60 00 01 */	li r3, 0x1
/* 814B8550 | 4E 80 00 20 */	blr
.L_814B8554:
/* 814B8554 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8558 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B855C | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B8560 | 40 80 00 0C */	bge .L_814B856C
/* 814B8564 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8568 | 41 82 00 0C */	beq .L_814B8574
.L_814B856C:
/* 814B856C | 38 60 00 01 */	li r3, 0x1
/* 814B8570 | 48 00 00 90 */	b .L_814B8600
.L_814B8574:
/* 814B8574 | 1C A8 00 38 */	mulli r5, r8, 0x38
/* 814B8578 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B857C | 54 67 84 3E */	srwi r7, r3, 16
/* 814B8580 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B8584 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B8588 | 38 00 00 0D */	li r0, 0xd
/* 814B858C | 38 A5 01 A4 */	addi r5, r5, 0x1a4
/* 814B8590 | 38 60 00 00 */	li r3, 0x0
/* 814B8594 | 7C 09 03 A6 */	mtctr r0
.L_814B8598:
/* 814B8598 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B859C | 7D 26 02 14 */	add r9, r6, r0
/* 814B85A0 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B85A4 | 7C 00 28 40 */	cmplw r0, r5
/* 814B85A8 | 40 82 00 10 */	bne .L_814B85B8
/* 814B85AC | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B85B0 | 7C 07 00 40 */	cmplw r7, r0
/* 814B85B4 | 41 82 00 30 */	beq .L_814B85E4
.L_814B85B8:
/* 814B85B8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B85BC | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B85C0 | 7D 26 02 14 */	add r9, r6, r0
/* 814B85C4 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B85C8 | 7C 00 28 40 */	cmplw r0, r5
/* 814B85CC | 40 82 00 10 */	bne .L_814B85DC
/* 814B85D0 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B85D4 | 7C 07 00 40 */	cmplw r7, r0
/* 814B85D8 | 41 82 00 0C */	beq .L_814B85E4
.L_814B85DC:
/* 814B85DC | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B85E0 | 42 00 FF B8 */	bdnz .L_814B8598
.L_814B85E4:
/* 814B85E4 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B85E8 | 38 60 00 1A */	li r3, 0x1a
/* 814B85EC | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B85F0 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B85F4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B85F8 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B85FC | 54 03 0F FE */	srwi r3, r0, 31
.L_814B8600:
/* 814B8600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8604 | 4C 82 00 20 */	bnelr
/* 814B8608 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B860C | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B8610 | 38 60 00 00 */	li r3, 0x0
/* 814B8614 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B8618 | 7C A5 02 14 */	add r5, r5, r0
/* 814B861C | A0 05 01 C4 */	lhz r0, 0x1c4(r5)
/* 814B8620 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814B8624 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_get_lba_size

# .text:0x1018 | 0x814B8628 | size: 0x10C
.fn VFipdm_disk_get_media_information, global
/* 814B8628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B862C | 41 82 00 0C */	beq .L_814B8638
/* 814B8630 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8634 | 40 82 00 0C */	bne .L_814B8640
.L_814B8638:
/* 814B8638 | 38 60 00 01 */	li r3, 0x1
/* 814B863C | 4E 80 00 20 */	blr
.L_814B8640:
/* 814B8640 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8644 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B8648 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B864C | 40 80 00 0C */	bge .L_814B8658
/* 814B8650 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8654 | 41 82 00 0C */	beq .L_814B8660
.L_814B8658:
/* 814B8658 | 38 60 00 01 */	li r3, 0x1
/* 814B865C | 48 00 00 90 */	b .L_814B86EC
.L_814B8660:
/* 814B8660 | 1C A8 00 38 */	mulli r5, r8, 0x38
/* 814B8664 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B8668 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B866C | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B8670 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B8674 | 38 00 00 0D */	li r0, 0xd
/* 814B8678 | 38 A5 01 A4 */	addi r5, r5, 0x1a4
/* 814B867C | 38 60 00 00 */	li r3, 0x0
/* 814B8680 | 7C 09 03 A6 */	mtctr r0
.L_814B8684:
/* 814B8684 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B8688 | 7D 26 02 14 */	add r9, r6, r0
/* 814B868C | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B8690 | 7C 00 28 40 */	cmplw r0, r5
/* 814B8694 | 40 82 00 10 */	bne .L_814B86A4
/* 814B8698 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B869C | 7C 07 00 40 */	cmplw r7, r0
/* 814B86A0 | 41 82 00 30 */	beq .L_814B86D0
.L_814B86A4:
/* 814B86A4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B86A8 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B86AC | 7D 26 02 14 */	add r9, r6, r0
/* 814B86B0 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B86B4 | 7C 00 28 40 */	cmplw r0, r5
/* 814B86B8 | 40 82 00 10 */	bne .L_814B86C8
/* 814B86BC | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B86C0 | 7C 07 00 40 */	cmplw r7, r0
/* 814B86C4 | 41 82 00 0C */	beq .L_814B86D0
.L_814B86C8:
/* 814B86C8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B86CC | 42 00 FF B8 */	bdnz .L_814B8684
.L_814B86D0:
/* 814B86D0 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B86D4 | 38 60 00 1A */	li r3, 0x1a
/* 814B86D8 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B86DC | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B86E0 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B86E4 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B86E8 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B86EC:
/* 814B86EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B86F0 | 4C 82 00 20 */	bnelr
/* 814B86F4 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B86F8 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B86FC | 38 60 00 00 */	li r3, 0x0
/* 814B8700 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B8704 | 7C C5 02 14 */	add r6, r5, r0
/* 814B8708 | 80 A6 01 BC */	lwz r5, 0x1bc(r6)
/* 814B870C | 80 06 01 C0 */	lwz r0, 0x1c0(r6)
/* 814B8710 | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 814B8714 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814B8718 | 80 A6 01 C4 */	lwz r5, 0x1c4(r6)
/* 814B871C | 80 06 01 C8 */	lwz r0, 0x1c8(r6)
/* 814B8720 | 90 A4 00 08 */	stw r5, 0x8(r4)
/* 814B8724 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814B8728 | 80 06 01 CC */	lwz r0, 0x1cc(r6)
/* 814B872C | 90 04 00 10 */	stw r0, 0x10(r4)
/* 814B8730 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_get_media_information

# .text:0x1124 | 0x814B8734 | size: 0x104
.fn VFipdm_disk_check_media_insert, global
/* 814B8734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8738 | 41 82 00 0C */	beq .L_814B8744
/* 814B873C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8740 | 40 82 00 0C */	bne .L_814B874C
.L_814B8744:
/* 814B8744 | 38 60 00 01 */	li r3, 0x1
/* 814B8748 | 4E 80 00 20 */	blr
.L_814B874C:
/* 814B874C | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8750 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B8754 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B8758 | 40 80 00 0C */	bge .L_814B8764
/* 814B875C | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8760 | 41 82 00 0C */	beq .L_814B876C
.L_814B8764:
/* 814B8764 | 38 60 00 01 */	li r3, 0x1
/* 814B8768 | 48 00 00 90 */	b .L_814B87F8
.L_814B876C:
/* 814B876C | 1C A8 00 38 */	mulli r5, r8, 0x38
/* 814B8770 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B8774 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B8778 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B877C | 7C A6 2A 14 */	add r5, r6, r5
/* 814B8780 | 38 00 00 0D */	li r0, 0xd
/* 814B8784 | 38 A5 01 A4 */	addi r5, r5, 0x1a4
/* 814B8788 | 38 60 00 00 */	li r3, 0x0
/* 814B878C | 7C 09 03 A6 */	mtctr r0
.L_814B8790:
/* 814B8790 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B8794 | 7D 26 02 14 */	add r9, r6, r0
/* 814B8798 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B879C | 7C 00 28 40 */	cmplw r0, r5
/* 814B87A0 | 40 82 00 10 */	bne .L_814B87B0
/* 814B87A4 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B87A8 | 7C 07 00 40 */	cmplw r7, r0
/* 814B87AC | 41 82 00 30 */	beq .L_814B87DC
.L_814B87B0:
/* 814B87B0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B87B4 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B87B8 | 7D 26 02 14 */	add r9, r6, r0
/* 814B87BC | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B87C0 | 7C 00 28 40 */	cmplw r0, r5
/* 814B87C4 | 40 82 00 10 */	bne .L_814B87D4
/* 814B87C8 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B87CC | 7C 07 00 40 */	cmplw r7, r0
/* 814B87D0 | 41 82 00 0C */	beq .L_814B87DC
.L_814B87D4:
/* 814B87D4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B87D8 | 42 00 FF B8 */	bdnz .L_814B8790
.L_814B87DC:
/* 814B87DC | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B87E0 | 38 60 00 1A */	li r3, 0x1a
/* 814B87E4 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B87E8 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B87EC | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B87F0 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B87F4 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B87F8:
/* 814B87F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B87FC | 4C 82 00 20 */	bnelr
/* 814B8800 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B8804 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B8808 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B880C | 7C 63 02 14 */	add r3, r3, r0
/* 814B8810 | 80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 814B8814 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814B8818 | 41 82 00 10 */	beq .L_814B8828
/* 814B881C | 38 00 00 01 */	li r0, 0x1
/* 814B8820 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B8824 | 48 00 00 0C */	b .L_814B8830
.L_814B8828:
/* 814B8828 | 38 00 00 00 */	li r0, 0x0
/* 814B882C | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B8830:
/* 814B8830 | 38 60 00 00 */	li r3, 0x0
/* 814B8834 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_check_media_insert

# .text:0x1228 | 0x814B8838 | size: 0x104
.fn VFipdm_disk_check_data_erase, global
/* 814B8838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B883C | 41 82 00 0C */	beq .L_814B8848
/* 814B8840 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8844 | 40 82 00 0C */	bne .L_814B8850
.L_814B8848:
/* 814B8848 | 38 60 00 01 */	li r3, 0x1
/* 814B884C | 4E 80 00 20 */	blr
.L_814B8850:
/* 814B8850 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8854 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B8858 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B885C | 40 80 00 0C */	bge .L_814B8868
/* 814B8860 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8864 | 41 82 00 0C */	beq .L_814B8870
.L_814B8868:
/* 814B8868 | 38 60 00 01 */	li r3, 0x1
/* 814B886C | 48 00 00 90 */	b .L_814B88FC
.L_814B8870:
/* 814B8870 | 1C A8 00 38 */	mulli r5, r8, 0x38
/* 814B8874 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B8878 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B887C | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B8880 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B8884 | 38 00 00 0D */	li r0, 0xd
/* 814B8888 | 38 A5 01 A4 */	addi r5, r5, 0x1a4
/* 814B888C | 38 60 00 00 */	li r3, 0x0
/* 814B8890 | 7C 09 03 A6 */	mtctr r0
.L_814B8894:
/* 814B8894 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B8898 | 7D 26 02 14 */	add r9, r6, r0
/* 814B889C | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B88A0 | 7C 00 28 40 */	cmplw r0, r5
/* 814B88A4 | 40 82 00 10 */	bne .L_814B88B4
/* 814B88A8 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B88AC | 7C 07 00 40 */	cmplw r7, r0
/* 814B88B0 | 41 82 00 30 */	beq .L_814B88E0
.L_814B88B4:
/* 814B88B4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B88B8 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B88BC | 7D 26 02 14 */	add r9, r6, r0
/* 814B88C0 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B88C4 | 7C 00 28 40 */	cmplw r0, r5
/* 814B88C8 | 40 82 00 10 */	bne .L_814B88D8
/* 814B88CC | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B88D0 | 7C 07 00 40 */	cmplw r7, r0
/* 814B88D4 | 41 82 00 0C */	beq .L_814B88E0
.L_814B88D8:
/* 814B88D8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B88DC | 42 00 FF B8 */	bdnz .L_814B8894
.L_814B88E0:
/* 814B88E0 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B88E4 | 38 60 00 1A */	li r3, 0x1a
/* 814B88E8 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B88EC | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B88F0 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B88F4 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B88F8 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B88FC:
/* 814B88FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8900 | 4C 82 00 20 */	bnelr
/* 814B8904 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B8908 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B890C | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B8910 | 7C 63 02 14 */	add r3, r3, r0
/* 814B8914 | 80 03 01 D8 */	lwz r0, 0x1d8(r3)
/* 814B8918 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B891C | 41 82 00 10 */	beq .L_814B892C
/* 814B8920 | 38 00 00 01 */	li r0, 0x1
/* 814B8924 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B8928 | 48 00 00 0C */	b .L_814B8934
.L_814B892C:
/* 814B892C | 38 00 00 00 */	li r0, 0x0
/* 814B8930 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B8934:
/* 814B8934 | 38 60 00 00 */	li r3, 0x0
/* 814B8938 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_check_data_erase

# .text:0x132C | 0x814B893C | size: 0xE8
.fn VFipdm_disk_set_disk, global
/* 814B893C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8940 | 41 82 00 0C */	beq .L_814B894C
/* 814B8944 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B8948 | 40 82 00 0C */	bne .L_814B8954
.L_814B894C:
/* 814B894C | 38 60 00 01 */	li r3, 0x1
/* 814B8950 | 4E 80 00 20 */	blr
.L_814B8954:
/* 814B8954 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8958 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B895C | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B8960 | 40 80 00 0C */	bge .L_814B896C
/* 814B8964 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8968 | 41 82 00 0C */	beq .L_814B8974
.L_814B896C:
/* 814B896C | 38 60 00 01 */	li r3, 0x1
/* 814B8970 | 48 00 00 90 */	b .L_814B8A00
.L_814B8974:
/* 814B8974 | 1C A8 00 38 */	mulli r5, r8, 0x38
/* 814B8978 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B897C | 54 67 84 3E */	srwi r7, r3, 16
/* 814B8980 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B8984 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B8988 | 38 00 00 0D */	li r0, 0xd
/* 814B898C | 38 A5 01 A4 */	addi r5, r5, 0x1a4
/* 814B8990 | 38 60 00 00 */	li r3, 0x0
/* 814B8994 | 7C 09 03 A6 */	mtctr r0
.L_814B8998:
/* 814B8998 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B899C | 7D 26 02 14 */	add r9, r6, r0
/* 814B89A0 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B89A4 | 7C 00 28 40 */	cmplw r0, r5
/* 814B89A8 | 40 82 00 10 */	bne .L_814B89B8
/* 814B89AC | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B89B0 | 7C 07 00 40 */	cmplw r7, r0
/* 814B89B4 | 41 82 00 30 */	beq .L_814B89E4
.L_814B89B8:
/* 814B89B8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B89BC | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B89C0 | 7D 26 02 14 */	add r9, r6, r0
/* 814B89C4 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B89C8 | 7C 00 28 40 */	cmplw r0, r5
/* 814B89CC | 40 82 00 10 */	bne .L_814B89DC
/* 814B89D0 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B89D4 | 7C 07 00 40 */	cmplw r7, r0
/* 814B89D8 | 41 82 00 0C */	beq .L_814B89E4
.L_814B89DC:
/* 814B89DC | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B89E0 | 42 00 FF B8 */	bdnz .L_814B8998
.L_814B89E4:
/* 814B89E4 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B89E8 | 38 60 00 1A */	li r3, 0x1a
/* 814B89EC | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B89F0 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B89F4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B89F8 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B89FC | 54 03 0F FE */	srwi r3, r0, 31
.L_814B8A00:
/* 814B8A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8A04 | 4C 82 00 20 */	bnelr
/* 814B8A08 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B8A0C | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B8A10 | 38 60 00 00 */	li r3, 0x0
/* 814B8A14 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B8A18 | 7C A5 02 14 */	add r5, r5, r0
/* 814B8A1C | 90 85 01 D4 */	stw r4, 0x1d4(r5)
/* 814B8A20 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_set_disk

# .text:0x1414 | 0x814B8A24 | size: 0xE0
.fn VFipdm_disk_notify_media_eject, global
/* 814B8A24 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8A28 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B8A2C | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B8A30 | 40 80 00 0C */	bge .L_814B8A3C
/* 814B8A34 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8A38 | 41 82 00 0C */	beq .L_814B8A44
.L_814B8A3C:
/* 814B8A3C | 38 00 00 01 */	li r0, 0x1
/* 814B8A40 | 48 00 00 90 */	b .L_814B8AD0
.L_814B8A44:
/* 814B8A44 | 1C 88 00 38 */	mulli r4, r8, 0x38
/* 814B8A48 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B8A4C | 38 00 00 0D */	li r0, 0xd
/* 814B8A50 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B8A54 | 7C 85 22 14 */	add r4, r5, r4
/* 814B8A58 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B8A5C | 38 C4 01 A4 */	addi r6, r4, 0x1a4
/* 814B8A60 | 38 80 00 00 */	li r4, 0x0
/* 814B8A64 | 7C 09 03 A6 */	mtctr r0
.L_814B8A68:
/* 814B8A68 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B8A6C | 7D 25 02 14 */	add r9, r5, r0
/* 814B8A70 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B8A74 | 7C 00 30 40 */	cmplw r0, r6
/* 814B8A78 | 40 82 00 10 */	bne .L_814B8A88
/* 814B8A7C | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B8A80 | 7C 07 00 40 */	cmplw r7, r0
/* 814B8A84 | 41 82 00 30 */	beq .L_814B8AB4
.L_814B8A88:
/* 814B8A88 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B8A8C | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B8A90 | 7D 25 02 14 */	add r9, r5, r0
/* 814B8A94 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B8A98 | 7C 00 30 40 */	cmplw r0, r6
/* 814B8A9C | 40 82 00 10 */	bne .L_814B8AAC
/* 814B8AA0 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B8AA4 | 7C 07 00 40 */	cmplw r7, r0
/* 814B8AA8 | 41 82 00 0C */	beq .L_814B8AB4
.L_814B8AAC:
/* 814B8AAC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B8AB0 | 42 00 FF B8 */	bdnz .L_814B8A68
.L_814B8AB4:
/* 814B8AB4 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B8AB8 | 38 80 00 1A */	li r4, 0x1a
/* 814B8ABC | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B8AC0 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B8AC4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B8AC8 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B8ACC | 54 00 0F FE */	srwi r0, r0, 31
.L_814B8AD0:
/* 814B8AD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B8AD4 | 4C 82 00 20 */	bnelr
/* 814B8AD8 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B8ADC | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B8AE0 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B8AE4 | 7C A4 02 14 */	add r5, r4, r0
/* 814B8AE8 | 80 05 01 A4 */	lwz r0, 0x1a4(r5)
/* 814B8AEC | 38 80 00 00 */	li r4, 0x0
/* 814B8AF0 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814B8AF4 | 60 00 00 08 */	ori r0, r0, 0x8
/* 814B8AF8 | 90 05 01 A4 */	stw r0, 0x1a4(r5)
/* 814B8AFC | 48 00 17 CC */	b VFipdm_part_set_change_media_state
/* 814B8B00 | 4E 80 00 20 */	blr
.endfn VFipdm_disk_notify_media_eject

# .text:0x14F4 | 0x814B8B04 | size: 0xDC
.fn VFipdm_disk_notify_media_insert, global
/* 814B8B04 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B8B08 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B8B0C | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B8B10 | 40 80 00 0C */	bge .L_814B8B1C
/* 814B8B14 | 28 00 03 00 */	cmplwi r0, 0x300
/* 814B8B18 | 41 82 00 0C */	beq .L_814B8B24
.L_814B8B1C:
/* 814B8B1C | 38 00 00 01 */	li r0, 0x1
/* 814B8B20 | 48 00 00 90 */	b .L_814B8BB0
.L_814B8B24:
/* 814B8B24 | 1C 88 00 38 */	mulli r4, r8, 0x38
/* 814B8B28 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B8B2C | 38 00 00 0D */	li r0, 0xd
/* 814B8B30 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B8B34 | 7C 85 22 14 */	add r4, r5, r4
/* 814B8B38 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B8B3C | 38 C4 01 A4 */	addi r6, r4, 0x1a4
/* 814B8B40 | 38 80 00 00 */	li r4, 0x0
/* 814B8B44 | 7C 09 03 A6 */	mtctr r0
.L_814B8B48:
/* 814B8B48 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B8B4C | 7D 25 02 14 */	add r9, r5, r0
/* 814B8B50 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B8B54 | 7C 00 30 40 */	cmplw r0, r6
/* 814B8B58 | 40 82 00 10 */	bne .L_814B8B68
/* 814B8B5C | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B8B60 | 7C 07 00 40 */	cmplw r7, r0
/* 814B8B64 | 41 82 00 30 */	beq .L_814B8B94
.L_814B8B68:
/* 814B8B68 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B8B6C | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B8B70 | 7D 25 02 14 */	add r9, r5, r0
/* 814B8B74 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 814B8B78 | 7C 00 30 40 */	cmplw r0, r6
/* 814B8B7C | 40 82 00 10 */	bne .L_814B8B8C
/* 814B8B80 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814B8B84 | 7C 07 00 40 */	cmplw r7, r0
/* 814B8B88 | 41 82 00 0C */	beq .L_814B8B94
.L_814B8B8C:
/* 814B8B8C | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B8B90 | 42 00 FF B8 */	bdnz .L_814B8B48
.L_814B8B94:
/* 814B8B94 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B8B98 | 38 80 00 1A */	li r4, 0x1a
/* 814B8B9C | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B8BA0 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B8BA4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B8BA8 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B8BAC | 54 00 0F FE */	srwi r0, r0, 31
.L_814B8BB0:
/* 814B8BB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B8BB4 | 4C 82 00 20 */	bnelr
/* 814B8BB8 | 1C 08 00 38 */	mulli r0, r8, 0x38
/* 814B8BBC | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B8BC0 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B8BC4 | 7C A4 02 14 */	add r5, r4, r0
/* 814B8BC8 | 80 05 01 A4 */	lwz r0, 0x1a4(r5)
/* 814B8BCC | 38 80 00 01 */	li r4, 0x1
/* 814B8BD0 | 60 00 00 2C */	ori r0, r0, 0x2c
/* 814B8BD4 | 90 05 01 A4 */	stw r0, 0x1a4(r5)
/* 814B8BD8 | 48 00 16 F0 */	b VFipdm_part_set_change_media_state
/* 814B8BDC | 4E 80 00 20 */	blr
.endfn VFipdm_disk_notify_media_insert
