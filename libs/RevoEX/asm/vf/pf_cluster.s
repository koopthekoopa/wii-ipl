.include "macros.inc"
.file "pf_cluster.c"

# 0x814BC784..0x814BCED4 | size: 0x750
.text
.balign 4

# .text:0x0 | 0x814BC784 | size: 0x10
.fn VFiPFCLUSTER_InitLastAccessCluster, global
/* 814BC784 | 38 00 00 00 */	li r0, 0x0
/* 814BC788 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814BC78C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814BC790 | 4E 80 00 20 */	blr
.endfn VFiPFCLUSTER_InitLastAccessCluster

# .text:0x10 | 0x814BC794 | size: 0xBC
.fn VFiPFCLUSTER_UpdateLastAccessCluster, global
/* 814BC794 | 80 E3 00 20 */	lwz r7, 0x20(r3)
/* 814BC798 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BC79C | 40 82 00 14 */	bne .L_814BC7B0
/* 814BC7A0 | 38 00 00 00 */	li r0, 0x0
/* 814BC7A4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814BC7A8 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814BC7AC | 4E 80 00 20 */	blr
.L_814BC7B0:
/* 814BC7B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC7B4 | 40 82 00 0C */	bne .L_814BC7C0
/* 814BC7B8 | 38 C0 00 00 */	li r6, 0x0
/* 814BC7BC | 48 00 00 0C */	b .L_814BC7C8
.L_814BC7C0:
/* 814BC7C0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814BC7C4 | 80 C5 02 64 */	lwz r6, 0x264(r5)
.L_814BC7C8:
/* 814BC7C8 | A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 814BC7CC | 38 05 FF FF */	subi r0, r5, 0x1
/* 814BC7D0 | 7C E0 00 39 */	and. r0, r7, r0
/* 814BC7D4 | 40 82 00 50 */	bne .L_814BC824
/* 814BC7D8 | 88 A6 00 06 */	lbz r5, 0x6(r6)
/* 814BC7DC | 80 E3 00 28 */	lwz r7, 0x28(r3)
/* 814BC7E0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814BC7E4 | 7C E0 00 39 */	and. r0, r7, r0
/* 814BC7E8 | 40 82 00 3C */	bne .L_814BC824
/* 814BC7EC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BC7F0 | 4D 82 00 20 */	beqlr
/* 814BC7F4 | 88 06 00 21 */	lbz r0, 0x21(r6)
/* 814BC7F8 | 38 A7 FF FF */	subi r5, r7, 0x1
/* 814BC7FC | 38 84 FF FF */	subi r4, r4, 0x1
/* 814BC800 | 7C A0 04 30 */	srw r0, r5, r0
/* 814BC804 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814BC808 | 80 A6 00 30 */	lwz r5, 0x30(r6)
/* 814BC80C | 88 06 00 21 */	lbz r0, 0x21(r6)
/* 814BC810 | 7C 85 20 50 */	subf r4, r5, r4
/* 814BC814 | 7C 84 04 30 */	srw r4, r4, r0
/* 814BC818 | 38 04 00 02 */	addi r0, r4, 0x2
/* 814BC81C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814BC820 | 4E 80 00 20 */	blr
.L_814BC824:
/* 814BC824 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 814BC828 | 88 06 00 21 */	lbz r0, 0x21(r6)
/* 814BC82C | 7C A0 04 30 */	srw r0, r5, r0
/* 814BC830 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814BC834 | 80 A6 00 30 */	lwz r5, 0x30(r6)
/* 814BC838 | 88 06 00 21 */	lbz r0, 0x21(r6)
/* 814BC83C | 7C 85 20 50 */	subf r4, r5, r4
/* 814BC840 | 7C 84 04 30 */	srw r4, r4, r0
/* 814BC844 | 38 04 00 02 */	addi r0, r4, 0x2
/* 814BC848 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814BC84C | 4E 80 00 20 */	blr
.endfn VFiPFCLUSTER_UpdateLastAccessCluster

# .text:0xCC | 0x814BC850 | size: 0x10
.fn VFiPFCLUSTER_SetLastAccessCluster, global
/* 814BC850 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814BC854 | 38 83 00 14 */	addi r4, r3, 0x14
/* 814BC858 | 38 65 00 04 */	addi r3, r5, 0x4
/* 814BC85C | 48 00 87 98 */	b VFiPFFAT_SetLastAccess
.endfn VFiPFCLUSTER_SetLastAccessCluster

# .text:0xDC | 0x814BC860 | size: 0x21C
.fn VFiPFCLUSTER_AppendCluster, global
/* 814BC860 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814BC864 | 7C 08 02 A6 */	mflr r0
/* 814BC868 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814BC86C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814BC870 | 48 13 CC 51 */	bl _savegpr_27
/* 814BC874 | 3C E0 81 0D */	lis r7, VFipf_vol_set_810CD7F0@ha
/* 814BC878 | 38 00 00 00 */	li r0, 0x0
/* 814BC87C | 38 E7 D7 F0 */	addi r7, r7, VFipf_vol_set_810CD7F0@l
/* 814BC880 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814BC884 | 7C 07 18 40 */	cmplw r7, r3
/* 814BC888 | 7C 7B 1B 78 */	mr r27, r3
/* 814BC88C | 7C 9C 23 78 */	mr r28, r4
/* 814BC890 | 7C BD 2B 78 */	mr r29, r5
/* 814BC894 | 7C DE 33 78 */	mr r30, r6
/* 814BC898 | 41 81 00 14 */	bgt .L_814BC8AC
/* 814BC89C | 3C A7 00 02 */	addis r5, r7, 0x2
/* 814BC8A0 | 38 05 7D 48 */	addi r0, r5, 0x7d48
/* 814BC8A4 | 7C 00 18 40 */	cmplw r0, r3
/* 814BC8A8 | 40 80 00 0C */	bge .L_814BC8B4
.L_814BC8AC:
/* 814BC8AC | 38 60 00 0A */	li r3, 0xa
/* 814BC8B0 | 48 00 01 B4 */	b .L_814BCA64
.L_814BC8B4:
/* 814BC8B4 | 2F 03 00 00 */	cmpwi cr6, r3, 0x0
/* 814BC8B8 | 41 9A 00 34 */	beq cr6, .L_814BC8EC
/* 814BC8BC | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814BC8C0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BC8C4 | 41 82 00 28 */	beq .L_814BC8EC
/* 814BC8C8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814BC8CC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC8D0 | 41 82 00 1C */	beq .L_814BC8EC
/* 814BC8D4 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814BC8D8 | 54 07 07 FE */	clrlwi r7, r0, 31
/* 814BC8DC | 2C 87 00 00 */	cmpwi cr1, r7, 0x0
/* 814BC8E0 | 41 86 00 0C */	beq cr1, .L_814BC8EC
/* 814BC8E4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BC8E8 | 40 82 00 0C */	bne .L_814BC8F4
.L_814BC8EC:
/* 814BC8EC | 38 60 00 26 */	li r3, 0x26
/* 814BC8F0 | 48 00 01 74 */	b .L_814BCA64
.L_814BC8F4:
/* 814BC8F4 | 41 86 00 08 */	beq cr1, .L_814BC8FC
/* 814BC8F8 | 40 82 00 0C */	bne .L_814BC904
.L_814BC8FC:
/* 814BC8FC | 38 60 00 26 */	li r3, 0x26
/* 814BC900 | 48 00 01 64 */	b .L_814BCA64
.L_814BC904:
/* 814BC904 | 40 9A 00 0C */	bne cr6, .L_814BC910
/* 814BC908 | 3B E0 00 00 */	li r31, 0x0
/* 814BC90C | 48 00 00 08 */	b .L_814BC914
.L_814BC910:
/* 814BC910 | 83 E5 02 64 */	lwz r31, 0x264(r5)
.L_814BC914:
/* 814BC914 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BC918 | 40 82 00 0C */	bne .L_814BC924
/* 814BC91C | 38 60 00 26 */	li r3, 0x26
/* 814BC920 | 48 00 01 44 */	b .L_814BCA64
.L_814BC924:
/* 814BC924 | 81 43 00 20 */	lwz r10, 0x20(r3)
/* 814BC928 | 38 00 FF FF */	li r0, -0x1
/* 814BC92C | 81 23 00 24 */	lwz r9, 0x24(r3)
/* 814BC930 | 81 03 00 28 */	lwz r8, 0x28(r3)
/* 814BC934 | 80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 814BC938 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 814BC93C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814BC940 | 91 41 00 18 */	stw r10, 0x18(r1)
/* 814BC944 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814BC948 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814BC94C | 91 21 00 1C */	stw r9, 0x1c(r1)
/* 814BC950 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BC954 | 91 01 00 20 */	stw r8, 0x20(r1)
/* 814BC958 | 90 E1 00 24 */	stw r7, 0x24(r1)
/* 814BC95C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814BC960 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814BC964 | 41 82 00 24 */	beq .L_814BC988
/* 814BC968 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 814BC96C | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BC970 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BC974 | 41 82 00 14 */	beq .L_814BC988
/* 814BC978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC97C | 40 82 00 0C */	bne .L_814BC988
/* 814BC980 | 38 60 00 06 */	li r3, 0x6
/* 814BC984 | 48 00 00 E0 */	b .L_814BCA64
.L_814BC988:
/* 814BC988 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814BC98C | 7F 63 DB 78 */	mr r3, r27
/* 814BC990 | 80 05 02 60 */	lwz r0, 0x260(r5)
/* 814BC994 | 7C 80 22 14 */	add r4, r0, r4
/* 814BC998 | 48 00 B2 35 */	bl VFiPFFILE_Cursor_MoveToClusterEnd
/* 814BC99C | 80 7B 00 20 */	lwz r3, 0x20(r27)
/* 814BC9A0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BC9A4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BC9A8 | 40 82 00 14 */	bne .L_814BC9BC
/* 814BC9AC | 38 00 00 00 */	li r0, 0x0
/* 814BC9B0 | 38 60 00 25 */	li r3, 0x25
/* 814BC9B4 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814BC9B8 | 48 00 00 AC */	b .L_814BCA64
.L_814BC9BC:
/* 814BC9BC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 814BC9C0 | 7F 85 E3 78 */	mr r5, r28
/* 814BC9C4 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 814BC9C8 | 7F C6 F3 78 */	mr r6, r30
/* 814BC9CC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814BC9D0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BC9D4 | 48 00 71 91 */	bl VFiPFFAT_GetSectorAllocated
/* 814BC9D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC9DC | 41 82 00 38 */	beq .L_814BCA14
/* 814BC9E0 | 81 01 00 18 */	lwz r8, 0x18(r1)
/* 814BC9E4 | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 814BC9E8 | 80 C1 00 20 */	lwz r6, 0x20(r1)
/* 814BC9EC | 80 A1 00 24 */	lwz r5, 0x24(r1)
/* 814BC9F0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814BC9F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BC9F8 | 91 1B 00 20 */	stw r8, 0x20(r27)
/* 814BC9FC | 90 FB 00 24 */	stw r7, 0x24(r27)
/* 814BCA00 | 90 DB 00 28 */	stw r6, 0x28(r27)
/* 814BCA04 | 90 BB 00 2C */	stw r5, 0x2c(r27)
/* 814BCA08 | 90 9B 00 0C */	stw r4, 0xc(r27)
/* 814BCA0C | 90 1B 00 10 */	stw r0, 0x10(r27)
/* 814BCA10 | 48 00 00 54 */	b .L_814BCA64
.L_814BCA14:
/* 814BCA14 | 80 E1 00 18 */	lwz r7, 0x18(r1)
/* 814BCA18 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 814BCA1C | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 814BCA20 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 814BCA24 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814BCA28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BCA2C | 90 FB 00 20 */	stw r7, 0x20(r27)
/* 814BCA30 | 90 DB 00 24 */	stw r6, 0x24(r27)
/* 814BCA34 | 90 BB 00 28 */	stw r5, 0x28(r27)
/* 814BCA38 | 90 9B 00 2C */	stw r4, 0x2c(r27)
/* 814BCA3C | 90 7B 00 0C */	stw r3, 0xc(r27)
/* 814BCA40 | 90 1B 00 10 */	stw r0, 0x10(r27)
/* 814BCA44 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814BCA48 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 814BCA4C | 7C 60 00 30 */	slw r0, r3, r0
/* 814BCA50 | 7C 1C 00 40 */	cmplw r28, r0
/* 814BCA54 | 40 80 00 08 */	bge .L_814BCA5C
/* 814BCA58 | 7F 80 E3 78 */	mr r0, r28
.L_814BCA5C:
/* 814BCA5C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814BCA60 | 38 60 00 00 */	li r3, 0x0
.L_814BCA64:
/* 814BCA64 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814BCA68 | 48 13 CA A5 */	bl _restgpr_27
/* 814BCA6C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814BCA70 | 7C 08 03 A6 */	mtlr r0
/* 814BCA74 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814BCA78 | 4E 80 00 20 */	blr
.endfn VFiPFCLUSTER_AppendCluster

# .text:0x2F8 | 0x814BCA7C | size: 0x2B0
.fn VFiPFCLUSTER_AdjustCluster, global
/* 814BCA7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BCA80 | 7C 08 02 A6 */	mflr r0
/* 814BCA84 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BCA88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BCA8C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BCA90 | 7C 04 18 40 */	cmplw r4, r3
/* 814BCA94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BCA98 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BCA9C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BCAA0 | 7C 7D 1B 78 */	mr r29, r3
/* 814BCAA4 | 41 81 00 14 */	bgt .L_814BCAB8
/* 814BCAA8 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 814BCAAC | 38 04 7D 48 */	addi r0, r4, 0x7d48
/* 814BCAB0 | 7C 00 18 40 */	cmplw r0, r3
/* 814BCAB4 | 40 80 00 0C */	bge .L_814BCAC0
.L_814BCAB8:
/* 814BCAB8 | 38 60 00 0A */	li r3, 0xa
/* 814BCABC | 48 00 02 54 */	b .L_814BCD10
.L_814BCAC0:
/* 814BCAC0 | 2F 03 00 00 */	cmpwi cr6, r3, 0x0
/* 814BCAC4 | 41 9A 00 34 */	beq cr6, .L_814BCAF8
/* 814BCAC8 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 814BCACC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BCAD0 | 41 82 00 28 */	beq .L_814BCAF8
/* 814BCAD4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814BCAD8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BCADC | 41 82 00 1C */	beq .L_814BCAF8
/* 814BCAE0 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814BCAE4 | 54 04 07 FE */	clrlwi r4, r0, 31
/* 814BCAE8 | 2C 84 00 00 */	cmpwi cr1, r4, 0x0
/* 814BCAEC | 41 86 00 0C */	beq cr1, .L_814BCAF8
/* 814BCAF0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BCAF4 | 40 82 00 0C */	bne .L_814BCB00
.L_814BCAF8:
/* 814BCAF8 | 38 60 00 26 */	li r3, 0x26
/* 814BCAFC | 48 00 02 14 */	b .L_814BCD10
.L_814BCB00:
/* 814BCB00 | 41 86 00 08 */	beq cr1, .L_814BCB08
/* 814BCB04 | 40 82 00 0C */	bne .L_814BCB10
.L_814BCB08:
/* 814BCB08 | 38 60 00 26 */	li r3, 0x26
/* 814BCB0C | 48 00 02 04 */	b .L_814BCD10
.L_814BCB10:
/* 814BCB10 | 40 9A 00 0C */	bne cr6, .L_814BCB1C
/* 814BCB14 | 3B E0 00 00 */	li r31, 0x0
/* 814BCB18 | 48 00 00 08 */	b .L_814BCB20
.L_814BCB1C:
/* 814BCB1C | 83 E6 02 64 */	lwz r31, 0x264(r6)
.L_814BCB20:
/* 814BCB20 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BCB24 | 40 82 00 0C */	bne .L_814BCB30
/* 814BCB28 | 38 60 00 26 */	li r3, 0x26
/* 814BCB2C | 48 00 01 E4 */	b .L_814BCD10
.L_814BCB30:
/* 814BCB30 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 814BCB34 | 3B C0 FF FF */	li r30, -0x1
/* 814BCB38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BCB3C | 41 82 00 50 */	beq .L_814BCB8C
/* 814BCB40 | 89 1F 00 21 */	lbz r8, 0x21(r31)
/* 814BCB44 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BCB48 | 81 26 02 60 */	lwz r9, 0x260(r6)
/* 814BCB4C | 7C 04 40 30 */	slw r4, r0, r8
/* 814BCB50 | 88 BF 00 20 */	lbz r5, 0x20(r31)
/* 814BCB54 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814BCB58 | 80 E6 00 10 */	lwz r7, 0x10(r6)
/* 814BCB5C | 7D 24 00 38 */	and r4, r9, r0
/* 814BCB60 | 7C A5 42 14 */	add r5, r5, r8
/* 814BCB64 | 7C 04 00 D0 */	neg r0, r4
/* 814BCB68 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814BCB6C | 7C 00 23 78 */	or r0, r0, r4
/* 814BCB70 | 7D 24 2C 30 */	srw r4, r9, r5
/* 814BCB74 | 54 00 0F FE */	srwi r0, r0, 31
/* 814BCB78 | 7C 04 02 14 */	add r0, r4, r0
/* 814BCB7C | 7C 07 00 40 */	cmplw r7, r0
/* 814BCB80 | 40 82 00 0C */	bne .L_814BCB8C
/* 814BCB84 | 38 60 00 00 */	li r3, 0x0
/* 814BCB88 | 48 00 01 88 */	b .L_814BCD10
.L_814BCB8C:
/* 814BCB8C | 80 A6 02 60 */	lwz r5, 0x260(r6)
/* 814BCB90 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BCB94 | 41 82 00 24 */	beq .L_814BCBB8
/* 814BCB98 | 80 86 02 6C */	lwz r4, 0x26c(r6)
/* 814BCB9C | 38 66 00 04 */	addi r3, r6, 0x4
/* 814BCBA0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814BCBA4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BCBA8 | 48 00 80 0D */	bl VFiPFFATVFiPFFAT_RefreshFSINFO_TraceClustersChain
/* 814BCBAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCBB0 | 41 82 00 1C */	beq .L_814BCBCC
/* 814BCBB4 | 48 00 01 5C */	b .L_814BCD10
.L_814BCBB8:
/* 814BCBB8 | 38 00 00 00 */	li r0, 0x0
/* 814BCBBC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814BCBC0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814BCBC4 | 80 03 02 6C */	lwz r0, 0x26c(r3)
/* 814BCBC8 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_814BCBCC:
/* 814BCBCC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BCBD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BCBD4 | 41 82 01 38 */	beq .L_814BCD0C
/* 814BCBD8 | 7F E3 FB 78 */	mr r3, r31
/* 814BCBDC | 48 00 84 2D */	bl VFiPFFAT_GetValueOfEOC2
/* 814BCBE0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BCBE4 | 7C 65 1B 78 */	mr r5, r3
/* 814BCBE8 | 7C 00 18 40 */	cmplw r0, r3
/* 814BCBEC | 41 82 01 20 */	beq .L_814BCD0C
/* 814BCBF0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BCBF4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BCBF8 | 41 82 00 74 */	beq .L_814BCC6C
/* 814BCBFC | 7F E3 FB 78 */	mr r3, r31
/* 814BCC00 | 48 00 81 CD */	bl VFiPFFAT_WriteValueToSpecifiedCluster
/* 814BCC04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCC08 | 41 82 00 08 */	beq .L_814BCC10
/* 814BCC0C | 48 00 01 04 */	b .L_814BCD10
.L_814BCC10:
/* 814BCC10 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814BCC14 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC18 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814BCC1C | 80 FD 00 08 */	lwz r7, 0x8(r29)
/* 814BCC20 | 88 BF 00 21 */	lbz r5, 0x21(r31)
/* 814BCC24 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BCC28 | 88 9F 00 20 */	lbz r4, 0x20(r31)
/* 814BCC2C | 7C 03 28 30 */	slw r3, r0, r5
/* 814BCC30 | 80 C7 02 60 */	lwz r6, 0x260(r7)
/* 814BCC34 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814BCC38 | 7C 84 2A 14 */	add r4, r4, r5
/* 814BCC3C | 7C C3 00 38 */	and r3, r6, r0
/* 814BCC40 | 7C 03 00 D0 */	neg r0, r3
/* 814BCC44 | 7C C4 24 30 */	srw r4, r6, r4
/* 814BCC48 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BCC4C | 54 00 0F FE */	srwi r0, r0, 31
/* 814BCC50 | 7C 64 02 14 */	add r3, r4, r0
/* 814BCC54 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814BCC58 | 90 07 00 10 */	stw r0, 0x10(r7)
/* 814BCC5C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC60 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814BCC64 | 3B C3 00 01 */	addi r30, r3, 0x1
/* 814BCC68 | 48 00 00 80 */	b .L_814BCCE8
.L_814BCC6C:
/* 814BCC6C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC70 | 38 00 00 00 */	li r0, 0x0
/* 814BCC74 | 90 03 02 6C */	stw r0, 0x26c(r3)
/* 814BCC78 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC7C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814BCC80 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814BCC84 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC88 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814BCC8C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC90 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814BCC94 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 814BCC98 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCC9C | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 814BCCA0 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 814BCCA4 | 48 00 82 55 */	bl VFiPFFAT_InitHint
/* 814BCCA8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCCAC | 38 80 00 01 */	li r4, 0x1
/* 814BCCB0 | 38 63 00 38 */	addi r3, r3, 0x38
/* 814BCCB4 | 48 00 26 21 */	bl VFiPFENT_UpdateSFNEntry
/* 814BCCB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCCBC | 41 82 00 08 */	beq .L_814BCCC4
/* 814BCCC0 | 48 00 00 50 */	b .L_814BCD10
.L_814BCCC4:
/* 814BCCC4 | 80 1F 15 D0 */	lwz r0, 0x15d0(r31)
/* 814BCCC8 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BCCCC | 41 82 00 1C */	beq .L_814BCCE8
/* 814BCCD0 | 7F E3 FB 78 */	mr r3, r31
/* 814BCCD4 | 7F A4 EB 78 */	mr r4, r29
/* 814BCCD8 | 4B FF F7 8D */	bl VFiPFCACHE_FlushDataCacheSpecific
/* 814BCCDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCCE0 | 41 82 00 08 */	beq .L_814BCCE8
/* 814BCCE4 | 48 00 00 2C */	b .L_814BCD10
.L_814BCCE8:
/* 814BCCE8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BCCEC | 7F C5 F3 78 */	mr r5, r30
/* 814BCCF0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814BCCF4 | 38 C0 FF FF */	li r6, -0x1
/* 814BCCF8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814BCCFC | 48 00 74 1D */	bl VFiPFFAT_FreeChain
/* 814BCD00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCD04 | 41 82 00 08 */	beq .L_814BCD0C
/* 814BCD08 | 48 00 00 08 */	b .L_814BCD10
.L_814BCD0C:
/* 814BCD0C | 38 60 00 00 */	li r3, 0x0
.L_814BCD10:
/* 814BCD10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BCD14 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BCD18 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BCD1C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BCD20 | 7C 08 03 A6 */	mtlr r0
/* 814BCD24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BCD28 | 4E 80 00 20 */	blr
.endfn VFiPFCLUSTER_AdjustCluster

# .text:0x5A8 | 0x814BCD2C | size: 0x1A8
.fn VFiPFCLUSTER_GetAppendSize, global
/* 814BCD2C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814BCD30 | 7C 08 02 A6 */	mflr r0
/* 814BCD34 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814BCD38 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BCD3C | 48 13 C7 81 */	bl _savegpr_26
/* 814BCD40 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814BCD44 | 38 00 00 00 */	li r0, 0x0
/* 814BCD48 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814BCD4C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814BCD50 | 7C 05 18 40 */	cmplw r5, r3
/* 814BCD54 | 7C 9F 23 78 */	mr r31, r4
/* 814BCD58 | 41 81 00 14 */	bgt .L_814BCD6C
/* 814BCD5C | 3C 85 00 02 */	addis r4, r5, 0x2
/* 814BCD60 | 38 04 7D 48 */	addi r0, r4, 0x7d48
/* 814BCD64 | 7C 00 18 40 */	cmplw r0, r3
/* 814BCD68 | 40 80 00 0C */	bge .L_814BCD74
.L_814BCD6C:
/* 814BCD6C | 38 60 00 0A */	li r3, 0xa
/* 814BCD70 | 48 00 01 4C */	b .L_814BCEBC
.L_814BCD74:
/* 814BCD74 | 2F 03 00 00 */	cmpwi cr6, r3, 0x0
/* 814BCD78 | 41 9A 00 34 */	beq cr6, .L_814BCDAC
/* 814BCD7C | 81 03 00 08 */	lwz r8, 0x8(r3)
/* 814BCD80 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814BCD84 | 41 82 00 28 */	beq .L_814BCDAC
/* 814BCD88 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814BCD8C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BCD90 | 41 82 00 1C */	beq .L_814BCDAC
/* 814BCD94 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 814BCD98 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814BCD9C | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814BCDA0 | 41 86 00 0C */	beq cr1, .L_814BCDAC
/* 814BCDA4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BCDA8 | 40 82 00 0C */	bne .L_814BCDB4
.L_814BCDAC:
/* 814BCDAC | 38 60 00 26 */	li r3, 0x26
/* 814BCDB0 | 48 00 01 0C */	b .L_814BCEBC
.L_814BCDB4:
/* 814BCDB4 | 41 86 00 08 */	beq cr1, .L_814BCDBC
/* 814BCDB8 | 40 82 00 0C */	bne .L_814BCDC4
.L_814BCDBC:
/* 814BCDBC | 38 60 00 26 */	li r3, 0x26
/* 814BCDC0 | 48 00 00 FC */	b .L_814BCEBC
.L_814BCDC4:
/* 814BCDC4 | 40 9A 00 0C */	bne cr6, .L_814BCDD0
/* 814BCDC8 | 3B A0 00 00 */	li r29, 0x0
/* 814BCDCC | 48 00 00 08 */	b .L_814BCDD4
.L_814BCDD0:
/* 814BCDD0 | 83 A8 02 64 */	lwz r29, 0x264(r8)
.L_814BCDD4:
/* 814BCDD4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BCDD8 | 40 82 00 0C */	bne .L_814BCDE4
/* 814BCDDC | 38 60 00 26 */	li r3, 0x26
/* 814BCDE0 | 48 00 00 DC */	b .L_814BCEBC
.L_814BCDE4:
/* 814BCDE4 | 80 88 02 6C */	lwz r4, 0x26c(r8)
/* 814BCDE8 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814BCDEC | 88 1D 00 21 */	lbz r0, 0x21(r29)
/* 814BCDF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BCDF4 | 7C 7C 00 30 */	slw r28, r3, r0
/* 814BCDF8 | 41 82 00 C0 */	beq .L_814BCEB8
/* 814BCDFC | 80 A8 02 60 */	lwz r5, 0x260(r8)
/* 814BCE00 | 80 E8 00 10 */	lwz r7, 0x10(r8)
/* 814BCE04 | 7C 05 E3 96 */	divwu r0, r5, r28
/* 814BCE08 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BCE0C | 7C 00 E1 D6 */	mullw r0, r0, r28
/* 814BCE10 | 7C C0 28 50 */	subf r6, r0, r5
/* 814BCE14 | 7C 06 00 D0 */	neg r0, r6
/* 814BCE18 | 7C 03 33 78 */	or r3, r0, r6
/* 814BCE1C | 7C 06 E0 50 */	subf r0, r6, r28
/* 814BCE20 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814BCE24 | 7C 00 18 38 */	and r0, r0, r3
/* 814BCE28 | 7F 65 02 14 */	add r27, r5, r0
/* 814BCE2C | 41 82 00 10 */	beq .L_814BCE3C
/* 814BCE30 | 38 07 00 01 */	addi r0, r7, 0x1
/* 814BCE34 | 7C 00 E1 D6 */	mullw r0, r0, r28
/* 814BCE38 | 48 00 00 78 */	b .L_814BCEB0
.L_814BCE3C:
/* 814BCE3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BCE40 | 41 82 00 20 */	beq .L_814BCE60
/* 814BCE44 | 38 68 00 04 */	addi r3, r8, 0x4
/* 814BCE48 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814BCE4C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814BCE50 | 48 00 7D 65 */	bl VFiPFFATVFiPFFAT_RefreshFSINFO_TraceClustersChain
/* 814BCE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCE58 | 41 82 00 0C */	beq .L_814BCE64
/* 814BCE5C | 48 00 00 60 */	b .L_814BCEBC
.L_814BCE60:
/* 814BCE60 | 90 81 00 0C */	stw r4, 0xc(r1)
.L_814BCE64:
/* 814BCE64 | 7F A3 EB 78 */	mr r3, r29
/* 814BCE68 | 48 00 81 A1 */	bl VFiPFFAT_GetValueOfEOC2
/* 814BCE6C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BCE70 | 7C 7E 1B 78 */	mr r30, r3
/* 814BCE74 | 3B 40 00 00 */	li r26, 0x0
/* 814BCE78 | 48 00 00 28 */	b .L_814BCEA0
.L_814BCE7C:
/* 814BCE7C | 7F A3 EB 78 */	mr r3, r29
/* 814BCE80 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BCE84 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814BCE88 | 48 00 7F F5 */	bl VFiPFFAT_ReadValueToSpecifiedCluster
/* 814BCE8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCE90 | 41 82 00 08 */	beq .L_814BCE98
/* 814BCE94 | 48 00 00 28 */	b .L_814BCEBC
.L_814BCE98:
/* 814BCE98 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814BCE9C | 90 81 00 0C */	stw r4, 0xc(r1)
.L_814BCEA0:
/* 814BCEA0 | 7C 04 F0 40 */	cmplw r4, r30
/* 814BCEA4 | 40 82 FF D8 */	bne .L_814BCE7C
/* 814BCEA8 | 7C 1A E1 D6 */	mullw r0, r26, r28
/* 814BCEAC | 7C 1B 02 14 */	add r0, r27, r0
.L_814BCEB0:
/* 814BCEB0 | 7C 1B 00 50 */	subf r0, r27, r0
/* 814BCEB4 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814BCEB8:
/* 814BCEB8 | 38 60 00 00 */	li r3, 0x0
.L_814BCEBC:
/* 814BCEBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BCEC0 | 48 13 C6 49 */	bl _restgpr_26
/* 814BCEC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814BCEC8 | 7C 08 03 A6 */	mtlr r0
/* 814BCECC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814BCED0 | 4E 80 00 20 */	blr
.endfn VFiPFCLUSTER_GetAppendSize
