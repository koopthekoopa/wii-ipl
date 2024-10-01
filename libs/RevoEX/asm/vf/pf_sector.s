.include "macros.inc"
.file "pf_sector.c"

# 0x814CC7B0..0x814CD058 | size: 0x8A8
.text
.balign 4

# .text:0x0 | 0x814CC7B0 | size: 0xB8
.fn VFiPFSEC_ReadFAT, global
/* 814CC7B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CC7B4 | 7C 08 02 A6 */	mflr r0
/* 814CC7B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CC7BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC7C0 | 48 12 CD 01 */	bl _savegpr_27
/* 814CC7C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC7C8 | 7C 7B 1B 78 */	mr r27, r3
/* 814CC7CC | 7C 9C 23 78 */	mr r28, r4
/* 814CC7D0 | 7C BD 2B 78 */	mr r29, r5
/* 814CC7D4 | 7C DE 33 78 */	mr r30, r6
/* 814CC7D8 | 7C FF 3B 78 */	mr r31, r7
/* 814CC7DC | 40 82 00 0C */	bne .L_814CC7E8
/* 814CC7E0 | 38 60 00 0A */	li r3, 0xa
/* 814CC7E4 | 48 00 00 6C */	b .L_814CC850
.L_814CC7E8:
/* 814CC7E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CC7EC | 40 82 00 0C */	bne .L_814CC7F8
/* 814CC7F0 | 38 60 00 0A */	li r3, 0xa
/* 814CC7F4 | 48 00 00 5C */	b .L_814CC850
.L_814CC7F8:
/* 814CC7F8 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CC7FC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CC800 | 41 82 00 10 */	beq .L_814CC810
/* 814CC804 | 4B FE 9E 1D */	bl VFiPFDRV_IsInserted
/* 814CC808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC80C | 40 82 00 0C */	bne .L_814CC818
.L_814CC810:
/* 814CC810 | 38 60 00 09 */	li r3, 0x9
/* 814CC814 | 48 00 00 3C */	b .L_814CC850
.L_814CC818:
/* 814CC818 | 7F 63 DB 78 */	mr r3, r27
/* 814CC81C | 7F A4 EB 78 */	mr r4, r29
/* 814CC820 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CC824 | 4B FE F7 39 */	bl VFiPFCACHE_ReadFATPage
/* 814CC828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC82C | 41 82 00 08 */	beq .L_814CC834
/* 814CC830 | 48 00 00 20 */	b .L_814CC850
.L_814CC834:
/* 814CC834 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CC838 | 7F 83 E3 78 */	mr r3, r28
/* 814CC83C | 7F E5 FB 78 */	mr r5, r31
/* 814CC840 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814CC844 | 7C 80 F2 14 */	add r4, r0, r30
/* 814CC848 | 4B FE 8F 99 */	bl VFipf_memcpy
/* 814CC84C | 38 60 00 00 */	li r3, 0x0
.L_814CC850:
/* 814CC850 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC854 | 48 12 CC B9 */	bl _restgpr_27
/* 814CC858 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CC85C | 7C 08 03 A6 */	mtlr r0
/* 814CC860 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CC864 | 4E 80 00 20 */	blr
.endfn VFiPFSEC_ReadFAT

# .text:0xB8 | 0x814CC868 | size: 0xF0
.fn VFiPFSEC_WriteFAT, global
/* 814CC868 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CC86C | 7C 08 02 A6 */	mflr r0
/* 814CC870 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CC874 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC878 | 48 12 CC 49 */	bl _savegpr_27
/* 814CC87C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC880 | 7C 7B 1B 78 */	mr r27, r3
/* 814CC884 | 7C 9C 23 78 */	mr r28, r4
/* 814CC888 | 7C BD 2B 78 */	mr r29, r5
/* 814CC88C | 7C DE 33 78 */	mr r30, r6
/* 814CC890 | 7C FF 3B 78 */	mr r31, r7
/* 814CC894 | 40 82 00 0C */	bne .L_814CC8A0
/* 814CC898 | 38 60 00 0A */	li r3, 0xa
/* 814CC89C | 48 00 00 A4 */	b .L_814CC940
.L_814CC8A0:
/* 814CC8A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CC8A4 | 40 82 00 0C */	bne .L_814CC8B0
/* 814CC8A8 | 38 60 00 0A */	li r3, 0xa
/* 814CC8AC | 48 00 00 94 */	b .L_814CC940
.L_814CC8B0:
/* 814CC8B0 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CC8B4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CC8B8 | 41 82 00 20 */	beq .L_814CC8D8
/* 814CC8BC | 4B FE 9D 65 */	bl VFiPFDRV_IsInserted
/* 814CC8C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC8C4 | 41 82 00 14 */	beq .L_814CC8D8
/* 814CC8C8 | 7F 63 DB 78 */	mr r3, r27
/* 814CC8CC | 4B FE 9D AD */	bl VFiPFDRV_IsWProtected
/* 814CC8D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC8D4 | 41 82 00 0C */	beq .L_814CC8E0
.L_814CC8D8:
/* 814CC8D8 | 38 60 00 09 */	li r3, 0x9
/* 814CC8DC | 48 00 00 64 */	b .L_814CC940
.L_814CC8E0:
/* 814CC8E0 | 7F 63 DB 78 */	mr r3, r27
/* 814CC8E4 | 7F A4 EB 78 */	mr r4, r29
/* 814CC8E8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CC8EC | 4B FE F6 71 */	bl VFiPFCACHE_ReadFATPage
/* 814CC8F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC8F4 | 41 82 00 08 */	beq .L_814CC8FC
/* 814CC8F8 | 48 00 00 48 */	b .L_814CC940
.L_814CC8FC:
/* 814CC8FC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CC900 | 7F 84 E3 78 */	mr r4, r28
/* 814CC904 | 7F E5 FB 78 */	mr r5, r31
/* 814CC908 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814CC90C | 7C 60 F2 14 */	add r3, r0, r30
/* 814CC910 | 4B FE 8E D1 */	bl VFipf_memcpy
/* 814CC914 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CC918 | 7F 63 DB 78 */	mr r3, r27
/* 814CC91C | 38 A0 00 01 */	li r5, 0x1
/* 814CC920 | 4B FE F4 D1 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814CC924 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CC928 | 7F 63 DB 78 */	mr r3, r27
/* 814CC92C | 4B FE F7 61 */	bl VFiPFCACHE_WriteFATPage
/* 814CC930 | 7C 03 00 D0 */	neg r0, r3
/* 814CC934 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CC938 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814CC93C | 7C 63 00 38 */	and r3, r3, r0
.L_814CC940:
/* 814CC940 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC944 | 48 12 CB C9 */	bl _restgpr_27
/* 814CC948 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CC94C | 7C 08 03 A6 */	mtlr r0
/* 814CC950 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CC954 | 4E 80 00 20 */	blr
.endfn VFiPFSEC_WriteFAT

# .text:0x1A8 | 0x814CC958 | size: 0xEC
.fn VFiPFSEC_ReadData, global
/* 814CC958 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CC95C | 7C 08 02 A6 */	mflr r0
/* 814CC960 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CC964 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC968 | 48 12 CB 51 */	bl _savegpr_25
/* 814CC96C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC970 | 7C 79 1B 78 */	mr r25, r3
/* 814CC974 | 7C 9A 23 78 */	mr r26, r4
/* 814CC978 | 7C BB 2B 78 */	mr r27, r5
/* 814CC97C | 7C DC 33 78 */	mr r28, r6
/* 814CC980 | 7C FD 3B 78 */	mr r29, r7
/* 814CC984 | 7D 1E 43 78 */	mr r30, r8
/* 814CC988 | 7D 3F 4B 78 */	mr r31, r9
/* 814CC98C | 41 82 00 14 */	beq .L_814CC9A0
/* 814CC990 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CC994 | 41 82 00 0C */	beq .L_814CC9A0
/* 814CC998 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CC99C | 40 82 00 0C */	bne .L_814CC9A8
.L_814CC9A0:
/* 814CC9A0 | 38 60 00 0A */	li r3, 0xa
/* 814CC9A4 | 48 00 00 88 */	b .L_814CCA2C
.L_814CC9A8:
/* 814CC9A8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814CC9AC | 41 82 00 10 */	beq .L_814CC9BC
/* 814CC9B0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814CC9B4 | 7C 07 00 40 */	cmplw r7, r0
/* 814CC9B8 | 41 80 00 0C */	blt .L_814CC9C4
.L_814CC9BC:
/* 814CC9BC | 38 60 00 0A */	li r3, 0xa
/* 814CC9C0 | 48 00 00 6C */	b .L_814CCA2C
.L_814CC9C4:
/* 814CC9C4 | 38 00 00 00 */	li r0, 0x0
/* 814CC9C8 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814CC9CC | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CC9D0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CC9D4 | 41 82 00 10 */	beq .L_814CC9E4
/* 814CC9D8 | 4B FE 9C 49 */	bl VFiPFDRV_IsInserted
/* 814CC9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC9E0 | 40 82 00 0C */	bne .L_814CC9EC
.L_814CC9E4:
/* 814CC9E4 | 38 60 00 09 */	li r3, 0x9
/* 814CC9E8 | 48 00 00 44 */	b .L_814CCA2C
.L_814CC9EC:
/* 814CC9EC | 7F 23 CB 78 */	mr r3, r25
/* 814CC9F0 | 7F 64 DB 78 */	mr r4, r27
/* 814CC9F4 | 7F E6 FB 78 */	mr r6, r31
/* 814CC9F8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CC9FC | 4B FE F5 A1 */	bl VFiPFCACHE_ReadDataPage
/* 814CCA00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCA04 | 41 82 00 08 */	beq .L_814CCA0C
/* 814CCA08 | 48 00 00 24 */	b .L_814CCA2C
.L_814CCA0C:
/* 814CCA0C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CCA10 | 7F 43 D3 78 */	mr r3, r26
/* 814CCA14 | 7F A5 EB 78 */	mr r5, r29
/* 814CCA18 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814CCA1C | 7C 80 E2 14 */	add r4, r0, r28
/* 814CCA20 | 4B FE 8D C1 */	bl VFipf_memcpy
/* 814CCA24 | 93 BE 00 00 */	stw r29, 0x0(r30)
/* 814CCA28 | 38 60 00 00 */	li r3, 0x0
.L_814CCA2C:
/* 814CCA2C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CCA30 | 48 12 CA D5 */	bl _restgpr_25
/* 814CCA34 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CCA38 | 7C 08 03 A6 */	mtlr r0
/* 814CCA3C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CCA40 | 4E 80 00 20 */	blr
.endfn VFiPFSEC_ReadData

# .text:0x294 | 0x814CCA44 | size: 0x290
.fn VFiPFSEC_ReadDataSector, global
/* 814CCA44 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CCA48 | 7C 08 02 A6 */	mflr r0
/* 814CCA4C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CCA50 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CCA54 | 48 12 CA 65 */	bl _savegpr_25
/* 814CCA58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCA5C | 7C 7A 1B 78 */	mr r26, r3
/* 814CCA60 | 7C 9B 23 78 */	mr r27, r4
/* 814CCA64 | 7C BC 2B 78 */	mr r28, r5
/* 814CCA68 | 7C DF 33 78 */	mr r31, r6
/* 814CCA6C | 7C FD 3B 78 */	mr r29, r7
/* 814CCA70 | 7D 1E 43 78 */	mr r30, r8
/* 814CCA74 | 41 82 00 14 */	beq .L_814CCA88
/* 814CCA78 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CCA7C | 41 82 00 0C */	beq .L_814CCA88
/* 814CCA80 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814CCA84 | 40 82 00 0C */	bne .L_814CCA90
.L_814CCA88:
/* 814CCA88 | 38 60 00 0A */	li r3, 0xa
/* 814CCA8C | 48 00 02 30 */	b .L_814CCCBC
.L_814CCA90:
/* 814CCA90 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814CCA94 | 41 82 00 10 */	beq .L_814CCAA4
/* 814CCA98 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814CCA9C | 7C 06 00 40 */	cmplw r6, r0
/* 814CCAA0 | 40 80 00 0C */	bge .L_814CCAAC
.L_814CCAA4:
/* 814CCAA4 | 38 60 00 0A */	li r3, 0xa
/* 814CCAA8 | 48 00 02 14 */	b .L_814CCCBC
.L_814CCAAC:
/* 814CCAAC | 38 00 00 00 */	li r0, 0x0
/* 814CCAB0 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814CCAB4 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CCAB8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CCABC | 41 82 00 10 */	beq .L_814CCACC
/* 814CCAC0 | 4B FE 9B 61 */	bl VFiPFDRV_IsInserted
/* 814CCAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCAC8 | 40 82 00 0C */	bne .L_814CCAD4
.L_814CCACC:
/* 814CCACC | 38 60 00 09 */	li r3, 0x9
/* 814CCAD0 | 48 00 01 EC */	b .L_814CCCBC
.L_814CCAD4:
/* 814CCAD4 | A0 7A 00 00 */	lhz r3, 0x0(r26)
/* 814CCAD8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CCADC | 7F E0 00 39 */	and. r0, r31, r0
/* 814CCAE0 | 40 82 00 60 */	bne .L_814CCB40
/* 814CCAE4 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCAE8 | 7F 43 D3 78 */	mr r3, r26
/* 814CCAEC | 7F 64 DB 78 */	mr r4, r27
/* 814CCAF0 | 7F 85 E3 78 */	mr r5, r28
/* 814CCAF4 | 7F E6 04 30 */	srw r6, r31, r0
/* 814CCAF8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814CCAFC | 4B FE F5 31 */	bl VFiPFCACHE_ReadDataNumSector
/* 814CCB00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCB04 | 41 82 00 08 */	beq .L_814CCB0C
/* 814CCB08 | 48 00 01 B4 */	b .L_814CCCBC
.L_814CCB0C:
/* 814CCB0C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCB10 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCB14 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814CCB18 | 7C 60 00 30 */	slw r0, r3, r0
/* 814CCB1C | 7C 04 02 14 */	add r0, r4, r0
/* 814CCB20 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814CCB24 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCB28 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCB2C | 7F E0 04 30 */	srw r0, r31, r0
/* 814CCB30 | 7C 03 00 40 */	cmplw r3, r0
/* 814CCB34 | 41 82 01 84 */	beq .L_814CCCB8
/* 814CCB38 | 38 60 00 11 */	li r3, 0x11
/* 814CCB3C | 48 00 01 80 */	b .L_814CCCBC
.L_814CCB40:
/* 814CCB40 | 7F 43 D3 78 */	mr r3, r26
/* 814CCB44 | 7F 84 E3 78 */	mr r4, r28
/* 814CCB48 | 4B FE F7 41 */	bl VFiPFCACHE_SearchDataCache
/* 814CCB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCB50 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814CCB54 | 41 82 00 80 */	beq .L_814CCBD4
/* 814CCB58 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 814CCB5C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814CCB60 | 88 BA 00 20 */	lbz r5, 0x20(r26)
/* 814CCB64 | 7C 04 02 14 */	add r0, r4, r0
/* 814CCB68 | 7F 3C 00 50 */	subf r25, r28, r0
/* 814CCB6C | 7F E0 2C 30 */	srw r0, r31, r5
/* 814CCB70 | 7C 19 00 40 */	cmplw r25, r0
/* 814CCB74 | 41 81 00 3C */	bgt .L_814CCBB0
/* 814CCB78 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814CCB7C | 7F 63 DB 78 */	mr r3, r27
/* 814CCB80 | 7F 25 28 30 */	slw r5, r25, r5
/* 814CCB84 | 4B FE 8C 5D */	bl VFipf_memcpy
/* 814CCB88 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCB8C | 7F 9C CA 14 */	add r28, r28, r25
/* 814CCB90 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814CCB94 | 7F 20 00 30 */	slw r0, r25, r0
/* 814CCB98 | 7C 03 02 14 */	add r0, r3, r0
/* 814CCB9C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814CCBA0 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCBA4 | 7F 20 00 30 */	slw r0, r25, r0
/* 814CCBA8 | 7F E0 F8 50 */	subf r31, r0, r31
/* 814CCBAC | 48 00 00 28 */	b .L_814CCBD4
.L_814CCBB0:
/* 814CCBB0 | 40 81 00 24 */	ble .L_814CCBD4
/* 814CCBB4 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814CCBB8 | 7F 63 DB 78 */	mr r3, r27
/* 814CCBBC | 7F E5 FB 78 */	mr r5, r31
/* 814CCBC0 | 4B FE 8C 21 */	bl VFipf_memcpy
/* 814CCBC4 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814CCBC8 | 7C 00 FA 14 */	add r0, r0, r31
/* 814CCBCC | 3B E0 00 00 */	li r31, 0x0
/* 814CCBD0 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814CCBD4:
/* 814CCBD4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CCBD8 | 41 82 00 E0 */	beq .L_814CCCB8
/* 814CCBDC | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCBE0 | 80 7A 15 EC */	lwz r3, 0x15ec(r26)
/* 814CCBE4 | 7F FF 04 30 */	srw r31, r31, r0
/* 814CCBE8 | 7C 9C FA 14 */	add r4, r28, r31
/* 814CCBEC | 7C 04 1B 96 */	divwu r0, r4, r3
/* 814CCBF0 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 814CCBF4 | 7C 60 20 50 */	subf r3, r0, r4
/* 814CCBF8 | 7C 1F 18 40 */	cmplw r31, r3
/* 814CCBFC | 40 81 00 64 */	ble .L_814CCC60
/* 814CCC00 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814CCC04 | 7F 23 F8 50 */	subf r25, r3, r31
/* 814CCC08 | 7F 43 D3 78 */	mr r3, r26
/* 814CCC0C | 7F 85 E3 78 */	mr r5, r28
/* 814CCC10 | 7F 26 CB 78 */	mr r6, r25
/* 814CCC14 | 7C 9B 02 14 */	add r4, r27, r0
/* 814CCC18 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814CCC1C | 4B FE F4 11 */	bl VFiPFCACHE_ReadDataNumSector
/* 814CCC20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCC24 | 41 82 00 08 */	beq .L_814CCC2C
/* 814CCC28 | 48 00 00 94 */	b .L_814CCCBC
.L_814CCC2C:
/* 814CCC2C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCC30 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCC34 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814CCC38 | 7C 60 00 30 */	slw r0, r3, r0
/* 814CCC3C | 7C 04 02 14 */	add r0, r4, r0
/* 814CCC40 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814CCC44 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814CCC48 | 7C 00 C8 40 */	cmplw r0, r25
/* 814CCC4C | 41 82 00 0C */	beq .L_814CCC58
/* 814CCC50 | 38 60 00 11 */	li r3, 0x11
/* 814CCC54 | 48 00 00 68 */	b .L_814CCCBC
.L_814CCC58:
/* 814CCC58 | 7F 9C CA 14 */	add r28, r28, r25
/* 814CCC5C | 7F F9 F8 50 */	subf r31, r25, r31
.L_814CCC60:
/* 814CCC60 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CCC64 | 41 82 00 54 */	beq .L_814CCCB8
/* 814CCC68 | 7F 43 D3 78 */	mr r3, r26
/* 814CCC6C | 7F 84 E3 78 */	mr r4, r28
/* 814CCC70 | 7F C6 F3 78 */	mr r6, r30
/* 814CCC74 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814CCC78 | 4B FE F3 25 */	bl VFiPFCACHE_ReadDataPage
/* 814CCC7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCC80 | 41 82 00 08 */	beq .L_814CCC88
/* 814CCC84 | 48 00 00 38 */	b .L_814CCCBC
.L_814CCC88:
/* 814CCC88 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814CCC8C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 814CCC90 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814CCC94 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCC98 | 7C 7B 2A 14 */	add r3, r27, r5
/* 814CCC9C | 7F E5 00 30 */	slw r5, r31, r0
/* 814CCCA0 | 4B FE 8B 41 */	bl VFipf_memcpy
/* 814CCCA4 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 814CCCA8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814CCCAC | 7F E0 00 30 */	slw r0, r31, r0
/* 814CCCB0 | 7C 03 02 14 */	add r0, r3, r0
/* 814CCCB4 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814CCCB8:
/* 814CCCB8 | 38 60 00 00 */	li r3, 0x0
.L_814CCCBC:
/* 814CCCBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CCCC0 | 48 12 C8 45 */	bl _restgpr_25
/* 814CCCC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CCCC8 | 7C 08 03 A6 */	mtlr r0
/* 814CCCCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CCCD0 | 4E 80 00 20 */	blr
.endfn VFiPFSEC_ReadDataSector

# .text:0x524 | 0x814CCCD4 | size: 0x148
.fn VFiPFSEC_WriteData, global
/* 814CCCD4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CCCD8 | 7C 08 02 A6 */	mflr r0
/* 814CCCDC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CCCE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CCCE4 | 48 12 C7 D1 */	bl _savegpr_24
/* 814CCCE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCCEC | 7C 78 1B 78 */	mr r24, r3
/* 814CCCF0 | 7C 99 23 78 */	mr r25, r4
/* 814CCCF4 | 7C BA 2B 78 */	mr r26, r5
/* 814CCCF8 | 7C DB 33 78 */	mr r27, r6
/* 814CCCFC | 7C FC 3B 78 */	mr r28, r7
/* 814CCD00 | 7D 1D 43 78 */	mr r29, r8
/* 814CCD04 | 7D 3E 4B 78 */	mr r30, r9
/* 814CCD08 | 7D 5F 53 78 */	mr r31, r10
/* 814CCD0C | 41 82 00 14 */	beq .L_814CCD20
/* 814CCD10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CCD14 | 41 82 00 0C */	beq .L_814CCD20
/* 814CCD18 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CCD1C | 40 82 00 0C */	bne .L_814CCD28
.L_814CCD20:
/* 814CCD20 | 38 60 00 0A */	li r3, 0xa
/* 814CCD24 | 48 00 00 E0 */	b .L_814CCE04
.L_814CCD28:
/* 814CCD28 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814CCD2C | 41 82 00 10 */	beq .L_814CCD3C
/* 814CCD30 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814CCD34 | 7C 07 00 40 */	cmplw r7, r0
/* 814CCD38 | 41 80 00 0C */	blt .L_814CCD44
.L_814CCD3C:
/* 814CCD3C | 38 60 00 0A */	li r3, 0xa
/* 814CCD40 | 48 00 00 C4 */	b .L_814CCE04
.L_814CCD44:
/* 814CCD44 | 38 00 00 00 */	li r0, 0x0
/* 814CCD48 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814CCD4C | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CCD50 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CCD54 | 41 82 00 20 */	beq .L_814CCD74
/* 814CCD58 | 4B FE 98 C9 */	bl VFiPFDRV_IsInserted
/* 814CCD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCD60 | 41 82 00 14 */	beq .L_814CCD74
/* 814CCD64 | 7F 03 C3 78 */	mr r3, r24
/* 814CCD68 | 4B FE 99 11 */	bl VFiPFDRV_IsWProtected
/* 814CCD6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCD70 | 41 82 00 0C */	beq .L_814CCD7C
.L_814CCD74:
/* 814CCD74 | 38 60 00 09 */	li r3, 0x9
/* 814CCD78 | 48 00 00 8C */	b .L_814CCE04
.L_814CCD7C:
/* 814CCD7C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814CCD80 | 41 82 00 18 */	beq .L_814CCD98
/* 814CCD84 | 7F 03 C3 78 */	mr r3, r24
/* 814CCD88 | 7F 44 D3 78 */	mr r4, r26
/* 814CCD8C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CCD90 | 4B FE F0 C9 */	bl VFiPFCACHE_AllocateDataPage
/* 814CCD94 | 48 00 00 18 */	b .L_814CCDAC
.L_814CCD98:
/* 814CCD98 | 7F 03 C3 78 */	mr r3, r24
/* 814CCD9C | 7F 44 D3 78 */	mr r4, r26
/* 814CCDA0 | 7F E6 FB 78 */	mr r6, r31
/* 814CCDA4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CCDA8 | 4B FE F2 3D */	bl VFiPFCACHE_ReadDataPageAndFlushIfNeeded
.L_814CCDAC:
/* 814CCDAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCDB0 | 41 82 00 08 */	beq .L_814CCDB8
/* 814CCDB4 | 48 00 00 50 */	b .L_814CCE04
.L_814CCDB8:
/* 814CCDB8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCDBC | 7F 24 CB 78 */	mr r4, r25
/* 814CCDC0 | 7F 85 E3 78 */	mr r5, r28
/* 814CCDC4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814CCDC8 | 7C 60 DA 14 */	add r3, r0, r27
/* 814CCDCC | 4B FE 8A 15 */	bl VFipf_memcpy
/* 814CCDD0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CCDD4 | 7F 03 C3 78 */	mr r3, r24
/* 814CCDD8 | 38 A0 00 01 */	li r5, 0x1
/* 814CCDDC | 4B FE F0 15 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814CCDE0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CCDE4 | 7F 03 C3 78 */	mr r3, r24
/* 814CCDE8 | 7F E5 FB 78 */	mr r5, r31
/* 814CCDEC | 4B FE F3 65 */	bl VFiPFCACHE_WriteDataPage
/* 814CCDF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCDF4 | 41 82 00 08 */	beq .L_814CCDFC
/* 814CCDF8 | 48 00 00 0C */	b .L_814CCE04
.L_814CCDFC:
/* 814CCDFC | 93 9D 00 00 */	stw r28, 0x0(r29)
/* 814CCE00 | 38 60 00 00 */	li r3, 0x0
.L_814CCE04:
/* 814CCE04 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CCE08 | 48 12 C6 F9 */	bl _restgpr_24
/* 814CCE0C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CCE10 | 7C 08 03 A6 */	mtlr r0
/* 814CCE14 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CCE18 | 4E 80 00 20 */	blr
.endfn VFiPFSEC_WriteData

# .text:0x66C | 0x814CCE1C | size: 0x23C
.fn VFiPFSEC_WriteDataSector, global
/* 814CCE1C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CCE20 | 7C 08 02 A6 */	mflr r0
/* 814CCE24 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CCE28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CCE2C | 48 12 C6 89 */	bl _savegpr_24
/* 814CCE30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCE34 | 7C 79 1B 78 */	mr r25, r3
/* 814CCE38 | 7C 9A 23 78 */	mr r26, r4
/* 814CCE3C | 7C BB 2B 78 */	mr r27, r5
/* 814CCE40 | 7C DF 33 78 */	mr r31, r6
/* 814CCE44 | 7C FC 3B 78 */	mr r28, r7
/* 814CCE48 | 7D 1D 43 78 */	mr r29, r8
/* 814CCE4C | 7D 3E 4B 78 */	mr r30, r9
/* 814CCE50 | 41 82 00 14 */	beq .L_814CCE64
/* 814CCE54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CCE58 | 41 82 00 0C */	beq .L_814CCE64
/* 814CCE5C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814CCE60 | 40 82 00 0C */	bne .L_814CCE6C
.L_814CCE64:
/* 814CCE64 | 38 60 00 0A */	li r3, 0xa
/* 814CCE68 | 48 00 01 D8 */	b .L_814CD040
.L_814CCE6C:
/* 814CCE6C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814CCE70 | 41 82 00 10 */	beq .L_814CCE80
/* 814CCE74 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814CCE78 | 7C 06 00 40 */	cmplw r6, r0
/* 814CCE7C | 40 80 00 0C */	bge .L_814CCE88
.L_814CCE80:
/* 814CCE80 | 38 60 00 0A */	li r3, 0xa
/* 814CCE84 | 48 00 01 BC */	b .L_814CD040
.L_814CCE88:
/* 814CCE88 | 38 00 00 00 */	li r0, 0x0
/* 814CCE8C | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814CCE90 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CCE94 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CCE98 | 41 82 00 20 */	beq .L_814CCEB8
/* 814CCE9C | 4B FE 97 85 */	bl VFiPFDRV_IsInserted
/* 814CCEA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCEA4 | 41 82 00 14 */	beq .L_814CCEB8
/* 814CCEA8 | 7F 23 CB 78 */	mr r3, r25
/* 814CCEAC | 4B FE 97 CD */	bl VFiPFDRV_IsWProtected
/* 814CCEB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCEB4 | 41 82 00 0C */	beq .L_814CCEC0
.L_814CCEB8:
/* 814CCEB8 | 38 60 00 09 */	li r3, 0x9
/* 814CCEBC | 48 00 01 84 */	b .L_814CD040
.L_814CCEC0:
/* 814CCEC0 | A0 79 00 00 */	lhz r3, 0x0(r25)
/* 814CCEC4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CCEC8 | 7F E0 00 39 */	and. r0, r31, r0
/* 814CCECC | 40 82 00 58 */	bne .L_814CCF24
/* 814CCED0 | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CCED4 | 7F 23 CB 78 */	mr r3, r25
/* 814CCED8 | 7F 44 D3 78 */	mr r4, r26
/* 814CCEDC | 7F 65 DB 78 */	mr r5, r27
/* 814CCEE0 | 7F E6 04 30 */	srw r6, r31, r0
/* 814CCEE4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814CCEE8 | 4B FE F3 41 */	bl VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded
/* 814CCEEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCEF0 | 41 82 00 08 */	beq .L_814CCEF8
/* 814CCEF4 | 48 00 01 4C */	b .L_814CD040
.L_814CCEF8:
/* 814CCEF8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCEFC | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CCF00 | 7C 60 00 30 */	slw r0, r3, r0
/* 814CCF04 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814CCF08 | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CCF0C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCF10 | 7F E0 04 30 */	srw r0, r31, r0
/* 814CCF14 | 7C 03 00 40 */	cmplw r3, r0
/* 814CCF18 | 41 82 01 24 */	beq .L_814CD03C
/* 814CCF1C | 38 60 00 11 */	li r3, 0x11
/* 814CCF20 | 48 00 01 20 */	b .L_814CD040
.L_814CCF24:
/* 814CCF24 | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CCF28 | 80 79 15 EC */	lwz r3, 0x15ec(r25)
/* 814CCF2C | 7F FF 04 30 */	srw r31, r31, r0
/* 814CCF30 | 7C 9B FA 14 */	add r4, r27, r31
/* 814CCF34 | 7C 04 1B 96 */	divwu r0, r4, r3
/* 814CCF38 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 814CCF3C | 7C 00 20 50 */	subf r0, r0, r4
/* 814CCF40 | 7C 1F 00 40 */	cmplw r31, r0
/* 814CCF44 | 40 81 00 58 */	ble .L_814CCF9C
/* 814CCF48 | 7F 00 F8 50 */	subf r24, r0, r31
/* 814CCF4C | 7F 23 CB 78 */	mr r3, r25
/* 814CCF50 | 7F 44 D3 78 */	mr r4, r26
/* 814CCF54 | 7F 65 DB 78 */	mr r5, r27
/* 814CCF58 | 7F 06 C3 78 */	mr r6, r24
/* 814CCF5C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814CCF60 | 4B FE F2 C9 */	bl VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded
/* 814CCF64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCF68 | 41 82 00 08 */	beq .L_814CCF70
/* 814CCF6C | 48 00 00 D4 */	b .L_814CD040
.L_814CCF70:
/* 814CCF70 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CCF74 | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CCF78 | 7C 60 00 30 */	slw r0, r3, r0
/* 814CCF7C | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814CCF80 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814CCF84 | 7C 00 C0 40 */	cmplw r0, r24
/* 814CCF88 | 41 82 00 0C */	beq .L_814CCF94
/* 814CCF8C | 38 60 00 11 */	li r3, 0x11
/* 814CCF90 | 48 00 00 B0 */	b .L_814CD040
.L_814CCF94:
/* 814CCF94 | 7F 7B C2 14 */	add r27, r27, r24
/* 814CCF98 | 7F F8 F8 50 */	subf r31, r24, r31
.L_814CCF9C:
/* 814CCF9C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CCFA0 | 41 82 00 9C */	beq .L_814CD03C
/* 814CCFA4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814CCFA8 | 41 82 00 18 */	beq .L_814CCFC0
/* 814CCFAC | 7F 23 CB 78 */	mr r3, r25
/* 814CCFB0 | 7F 64 DB 78 */	mr r4, r27
/* 814CCFB4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814CCFB8 | 4B FE EE A1 */	bl VFiPFCACHE_AllocateDataPage
/* 814CCFBC | 48 00 00 18 */	b .L_814CCFD4
.L_814CCFC0:
/* 814CCFC0 | 7F 23 CB 78 */	mr r3, r25
/* 814CCFC4 | 7F 64 DB 78 */	mr r4, r27
/* 814CCFC8 | 7F C6 F3 78 */	mr r6, r30
/* 814CCFCC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814CCFD0 | 4B FE F0 15 */	bl VFiPFCACHE_ReadDataPageAndFlushIfNeeded
.L_814CCFD4:
/* 814CCFD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CCFD8 | 41 82 00 08 */	beq .L_814CCFE0
/* 814CCFDC | 48 00 00 64 */	b .L_814CD040
.L_814CCFE0:
/* 814CCFE0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814CCFE4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814CCFE8 | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CCFEC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814CCFF0 | 7C 9A 22 14 */	add r4, r26, r4
/* 814CCFF4 | 7F E5 00 30 */	slw r5, r31, r0
/* 814CCFF8 | 4B FE 87 E9 */	bl VFipf_memcpy
/* 814CCFFC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814CD000 | 7F 23 CB 78 */	mr r3, r25
/* 814CD004 | 7F E5 FB 78 */	mr r5, r31
/* 814CD008 | 4B FE ED E9 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814CD00C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814CD010 | 7F 23 CB 78 */	mr r3, r25
/* 814CD014 | 7F C5 F3 78 */	mr r5, r30
/* 814CD018 | 4B FE F1 39 */	bl VFiPFCACHE_WriteDataPage
/* 814CD01C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD020 | 41 82 00 08 */	beq .L_814CD028
/* 814CD024 | 48 00 00 1C */	b .L_814CD040
.L_814CD028:
/* 814CD028 | 88 19 00 20 */	lbz r0, 0x20(r25)
/* 814CD02C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814CD030 | 7F E0 00 30 */	slw r0, r31, r0
/* 814CD034 | 7C 03 02 14 */	add r0, r3, r0
/* 814CD038 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814CD03C:
/* 814CD03C | 38 60 00 00 */	li r3, 0x0
.L_814CD040:
/* 814CD040 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CD044 | 48 12 C4 BD */	bl _restgpr_24
/* 814CD048 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CD04C | 7C 08 03 A6 */	mtlr r0
/* 814CD050 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CD054 | 4E 80 00 20 */	blr
.endfn VFiPFSEC_WriteDataSector
