.include "macros.inc"
.file "pdm_dskmng.c"

# 0x810CCC20..0x810CD7F0 | size: 0xBD0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810CCC20 | size: 0xBCC
.obj VFipdm_disk_set_810CCC20, global
	.skip 0xBCC
.endobj VFipdm_disk_set_810CCC20

# .bss:0xBCC | 0x810CD7EC | size: 0x4
.obj gap_00_810CD7EC_bss, global
.hidden gap_00_810CD7EC_bss
	.skip 0x4
.endobj gap_00_810CD7EC_bss

# 0x814BA974..0x814BAB98 | size: 0x224
.text
.balign 4

# .text:0x0 | 0x814BA974 | size: 0x128
.fn VFipdm_init_diskmanager, global
/* 814BA974 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BA978 | 7C 08 02 A6 */	mflr r0
/* 814BA97C | 38 80 00 00 */	li r4, 0x0
/* 814BA980 | 38 A0 0B CC */	li r5, 0xbcc
/* 814BA984 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BA988 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BA98C | 3F E0 81 0D */	lis r31, VFipdm_disk_set_810CCC20@ha
/* 814BA990 | 38 7F CC 20 */	addi r3, r31, VFipdm_disk_set_810CCC20@l
/* 814BA994 | 4B FF AF 75 */	bl VFipf_memset
/* 814BA998 | 38 FF CC 20 */	addi r7, r31, VFipdm_disk_set_810CCC20@l
/* 814BA99C | 38 C0 00 00 */	li r6, 0x0
/* 814BA9A0 | 90 C7 01 B8 */	stw r6, 0x1b8(r7)
/* 814BA9A4 | 38 00 00 18 */	li r0, 0x18
/* 814BA9A8 | 1C 60 00 38 */	mulli r3, r0, 0x38
/* 814BA9AC | 90 C7 01 F0 */	stw r6, 0x1f0(r7)
/* 814BA9B0 | 90 C7 02 28 */	stw r6, 0x228(r7)
/* 814BA9B4 | 7C A7 1A 14 */	add r5, r7, r3
/* 814BA9B8 | 1C 00 00 2C */	mulli r0, r0, 0x2c
/* 814BA9BC | 38 60 00 00 */	li r3, 0x0
/* 814BA9C0 | 90 C7 02 60 */	stw r6, 0x260(r7)
/* 814BA9C4 | 90 C7 02 98 */	stw r6, 0x298(r7)
/* 814BA9C8 | 7C 87 02 14 */	add r4, r7, r0
/* 814BA9CC | 90 C7 02 D0 */	stw r6, 0x2d0(r7)
/* 814BA9D0 | 90 C7 03 08 */	stw r6, 0x308(r7)
/* 814BA9D4 | 90 C7 03 40 */	stw r6, 0x340(r7)
/* 814BA9D8 | 90 C7 03 78 */	stw r6, 0x378(r7)
/* 814BA9DC | 90 C7 03 B0 */	stw r6, 0x3b0(r7)
/* 814BA9E0 | 90 C7 03 E8 */	stw r6, 0x3e8(r7)
/* 814BA9E4 | 90 C7 04 20 */	stw r6, 0x420(r7)
/* 814BA9E8 | 90 C7 04 58 */	stw r6, 0x458(r7)
/* 814BA9EC | 90 C7 04 90 */	stw r6, 0x490(r7)
/* 814BA9F0 | 90 C7 04 C8 */	stw r6, 0x4c8(r7)
/* 814BA9F4 | 90 C7 05 00 */	stw r6, 0x500(r7)
/* 814BA9F8 | 90 C7 05 38 */	stw r6, 0x538(r7)
/* 814BA9FC | 90 C7 05 70 */	stw r6, 0x570(r7)
/* 814BAA00 | 90 C7 05 A8 */	stw r6, 0x5a8(r7)
/* 814BAA04 | 90 C7 05 E0 */	stw r6, 0x5e0(r7)
/* 814BAA08 | 90 C7 06 18 */	stw r6, 0x618(r7)
/* 814BAA0C | 90 C7 06 50 */	stw r6, 0x650(r7)
/* 814BAA10 | 90 C7 06 88 */	stw r6, 0x688(r7)
/* 814BAA14 | 90 C7 06 C0 */	stw r6, 0x6c0(r7)
/* 814BAA18 | 90 C5 01 B8 */	stw r6, 0x1b8(r5)
/* 814BAA1C | 90 C5 01 F0 */	stw r6, 0x1f0(r5)
/* 814BAA20 | 90 C7 07 64 */	stw r6, 0x764(r7)
/* 814BAA24 | 90 C7 07 90 */	stw r6, 0x790(r7)
/* 814BAA28 | 90 C7 07 BC */	stw r6, 0x7bc(r7)
/* 814BAA2C | 90 C7 07 E8 */	stw r6, 0x7e8(r7)
/* 814BAA30 | 90 C7 08 14 */	stw r6, 0x814(r7)
/* 814BAA34 | 90 C7 08 40 */	stw r6, 0x840(r7)
/* 814BAA38 | 90 C7 08 6C */	stw r6, 0x86c(r7)
/* 814BAA3C | 90 C7 08 98 */	stw r6, 0x898(r7)
/* 814BAA40 | 90 C7 08 C4 */	stw r6, 0x8c4(r7)
/* 814BAA44 | 90 C7 08 F0 */	stw r6, 0x8f0(r7)
/* 814BAA48 | 90 C7 09 1C */	stw r6, 0x91c(r7)
/* 814BAA4C | 90 C7 09 48 */	stw r6, 0x948(r7)
/* 814BAA50 | 90 C7 09 74 */	stw r6, 0x974(r7)
/* 814BAA54 | 90 C7 09 A0 */	stw r6, 0x9a0(r7)
/* 814BAA58 | 90 C7 09 CC */	stw r6, 0x9cc(r7)
/* 814BAA5C | 90 C7 09 F8 */	stw r6, 0x9f8(r7)
/* 814BAA60 | 90 C7 0A 24 */	stw r6, 0xa24(r7)
/* 814BAA64 | 90 C7 0A 50 */	stw r6, 0xa50(r7)
/* 814BAA68 | 90 C7 0A 7C */	stw r6, 0xa7c(r7)
/* 814BAA6C | 90 C7 0A A8 */	stw r6, 0xaa8(r7)
/* 814BAA70 | 90 C7 0A D4 */	stw r6, 0xad4(r7)
/* 814BAA74 | 90 C7 0B 00 */	stw r6, 0xb00(r7)
/* 814BAA78 | 90 C7 0B 2C */	stw r6, 0xb2c(r7)
/* 814BAA7C | 90 C7 0B 58 */	stw r6, 0xb58(r7)
/* 814BAA80 | 90 C4 07 64 */	stw r6, 0x764(r4)
/* 814BAA84 | 90 C4 07 90 */	stw r6, 0x790(r4)
/* 814BAA88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BAA8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BAA90 | 7C 08 03 A6 */	mtlr r0
/* 814BAA94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BAA98 | 4E 80 00 20 */	blr
.endfn VFipdm_init_diskmanager

# .text:0x128 | 0x814BAA9C | size: 0x48
.fn VFipdm_open_disk, global
/* 814BAA9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BAAA0 | 7C 08 02 A6 */	mflr r0
/* 814BAAA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BAAA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BAAAC | 40 82 00 0C */	bne .L_814BAAB8
/* 814BAAB0 | 38 60 00 01 */	li r3, 0x1
/* 814BAAB4 | 48 00 00 20 */	b .L_814BAAD4
.L_814BAAB8:
/* 814BAAB8 | 38 00 00 00 */	li r0, 0x0
/* 814BAABC | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814BAAC0 | 4B FF CF 29 */	bl VFipdm_disk_open_disk
/* 814BAAC4 | 7C 03 00 D0 */	neg r0, r3
/* 814BAAC8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BAACC | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BAAD0 | 7C 63 00 38 */	and r3, r3, r0
.L_814BAAD4:
/* 814BAAD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BAAD8 | 7C 08 03 A6 */	mtlr r0
/* 814BAADC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BAAE0 | 4E 80 00 20 */	blr
.endfn VFipdm_open_disk

# .text:0x170 | 0x814BAAE4 | size: 0x18
.fn VFipdm_close_disk, global
/* 814BAAE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BAAE8 | 40 82 00 0C */	bne .L_814BAAF4
/* 814BAAEC | 38 60 00 01 */	li r3, 0x1
/* 814BAAF0 | 4E 80 00 20 */	blr
.L_814BAAF4:
/* 814BAAF4 | 4B FF D0 68 */	b VFipdm_disk_close_disk
/* 814BAAF8 | 4E 80 00 20 */	blr
.endfn VFipdm_close_disk

# .text:0x188 | 0x814BAAFC | size: 0x5C
.fn VFipdm_open_partition, global
/* 814BAAFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BAB00 | 7C 08 02 A6 */	mflr r0
/* 814BAB04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BAB08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BAB0C | 40 82 00 0C */	bne .L_814BAB18
/* 814BAB10 | 38 60 00 01 */	li r3, 0x1
/* 814BAB14 | 48 00 00 34 */	b .L_814BAB48
.L_814BAB18:
/* 814BAB18 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BAB1C | 40 82 00 0C */	bne .L_814BAB28
/* 814BAB20 | 38 60 00 01 */	li r3, 0x1
/* 814BAB24 | 48 00 00 24 */	b .L_814BAB48
.L_814BAB28:
/* 814BAB28 | 38 00 00 00 */	li r0, 0x0
/* 814BAB2C | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814BAB30 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814BAB34 | 4B FF E5 11 */	bl VFipdm_part_open_partition
/* 814BAB38 | 7C 03 00 D0 */	neg r0, r3
/* 814BAB3C | 7C 00 1B 78 */	or r0, r0, r3
/* 814BAB40 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BAB44 | 7C 63 00 38 */	and r3, r3, r0
.L_814BAB48:
/* 814BAB48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BAB4C | 7C 08 03 A6 */	mtlr r0
/* 814BAB50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BAB54 | 4E 80 00 20 */	blr
.endfn VFipdm_open_partition

# .text:0x1E4 | 0x814BAB58 | size: 0x40
.fn VFipdm_close_partition, global
/* 814BAB58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BAB5C | 7C 08 02 A6 */	mflr r0
/* 814BAB60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BAB64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BAB68 | 40 82 00 0C */	bne .L_814BAB74
/* 814BAB6C | 38 60 00 01 */	li r3, 0x1
/* 814BAB70 | 48 00 00 18 */	b .L_814BAB88
.L_814BAB74:
/* 814BAB74 | 4B FF E5 F5 */	bl VFipdm_part_close_partition
/* 814BAB78 | 7C 03 00 D0 */	neg r0, r3
/* 814BAB7C | 7C 00 1B 78 */	or r0, r0, r3
/* 814BAB80 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BAB84 | 7C 63 00 38 */	and r3, r3, r0
.L_814BAB88:
/* 814BAB88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BAB8C | 7C 08 03 A6 */	mtlr r0
/* 814BAB90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BAB94 | 4E 80 00 20 */	blr
.endfn VFipdm_close_partition
