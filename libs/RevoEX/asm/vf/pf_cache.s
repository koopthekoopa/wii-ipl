.include "macros.inc"
.file "pf_cache.c"

# 0x814BAB98..0x814BC784 | size: 0x1BEC
.text
.balign 4

# .text:0x0 | 0x814BAB98 | size: 0x280
.fn VFiPFCACHE_InitPageList, global
/* 814BAB98 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814BAB9C | 7C 08 02 A6 */	mflr r0
/* 814BABA0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814BABA4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BABA8 | 48 13 E9 11 */	bl _savegpr_25
/* 814BABAC | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 814BABB0 | 28 09 00 01 */	cmplwi r9, 0x1
/* 814BABB4 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814BABB8 | 7C 00 4E 70 */	srawi r0, r0, 9
/* 814BABBC | 7D 80 41 D6 */	mullw r12, r0, r8
/* 814BABC0 | 40 82 00 10 */	bne .L_814BABD0
/* 814BABC4 | 7C 07 63 96 */	divwu r0, r7, r12
/* 814BABC8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BABCC | 41 80 00 18 */	blt .L_814BABE4
.L_814BABD0:
/* 814BABD0 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BABD4 | 40 82 00 18 */	bne .L_814BABEC
/* 814BABD8 | 7C 07 63 96 */	divwu r0, r7, r12
/* 814BABDC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BABE0 | 40 80 00 0C */	bge .L_814BABEC
.L_814BABE4:
/* 814BABE4 | 38 60 00 1E */	li r3, 0x1e
/* 814BABE8 | 48 00 02 18 */	b .L_814BAE00
.L_814BABEC:
/* 814BABEC | 7C 07 63 96 */	divwu r0, r7, r12
/* 814BABF0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BABF4 | 40 82 00 64 */	bne .L_814BAC58
/* 814BABF8 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 814BABFC | 38 80 00 00 */	li r4, 0x0
/* 814BAC00 | 38 60 FF FF */	li r3, -0x1
/* 814BAC04 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BAC08 | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814BAC0C | 90 A5 00 24 */	stw r5, 0x24(r5)
/* 814BAC10 | 90 A5 00 20 */	stw r5, 0x20(r5)
/* 814BAC14 | 90 C5 00 04 */	stw r6, 0x4(r5)
/* 814BAC18 | 90 C5 00 08 */	stw r6, 0x8(r5)
/* 814BAC1C | 90 85 00 0C */	stw r4, 0xc(r5)
/* 814BAC20 | 90 85 00 10 */	stw r4, 0x10(r5)
/* 814BAC24 | 91 05 00 14 */	stw r8, 0x14(r5)
/* 814BAC28 | 90 65 00 18 */	stw r3, 0x18(r5)
/* 814BAC2C | B0 85 00 02 */	sth r4, 0x2(r5)
/* 814BAC30 | 90 85 00 1C */	stw r4, 0x1c(r5)
/* 814BAC34 | B0 05 00 00 */	sth r0, 0x0(r5)
/* 814BAC38 | 41 82 00 10 */	beq .L_814BAC48
/* 814BAC3C | 60 00 00 04 */	ori r0, r0, 0x4
/* 814BAC40 | B0 05 00 00 */	sth r0, 0x0(r5)
/* 814BAC44 | 48 00 00 0C */	b .L_814BAC50
.L_814BAC48:
/* 814BAC48 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814BAC4C | B0 05 00 00 */	sth r0, 0x0(r5)
.L_814BAC50:
/* 814BAC50 | 38 60 00 00 */	li r3, 0x0
/* 814BAC54 | 48 00 01 AC */	b .L_814BAE00
.L_814BAC58:
/* 814BAC58 | 7C 60 61 D6 */	mullw r3, r0, r12
/* 814BAC5C | 3B C0 00 00 */	li r30, 0x0
/* 814BAC60 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 814BAC64 | 3B A0 FF FF */	li r29, -0x1
/* 814BAC68 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BAC6C | 90 C5 00 04 */	stw r6, 0x4(r5)
/* 814BAC70 | 54 1C 04 3A */	rlwinm r28, r0, 0, 16, 29
/* 814BAC74 | 7D 63 38 50 */	subf r11, r3, r7
/* 814BAC78 | 7C 0B 38 50 */	subf r0, r11, r7
/* 814BAC7C | 90 C5 00 08 */	stw r6, 0x8(r5)
/* 814BAC80 | 7D 4C 00 50 */	subf r10, r12, r0
/* 814BAC84 | 1C 6A 00 28 */	mulli r3, r10, 0x28
/* 814BAC88 | 93 C5 00 0C */	stw r30, 0xc(r5)
/* 814BAC8C | 93 C5 00 10 */	stw r30, 0x10(r5)
/* 814BAC90 | 7C 85 1A 14 */	add r4, r5, r3
/* 814BAC94 | 1C 0C 00 28 */	mulli r0, r12, 0x28
/* 814BAC98 | 91 05 00 14 */	stw r8, 0x14(r5)
/* 814BAC9C | 90 85 00 24 */	stw r4, 0x24(r5)
/* 814BACA0 | 7C 65 02 14 */	add r3, r5, r0
/* 814BACA4 | 90 65 00 20 */	stw r3, 0x20(r5)
/* 814BACA8 | 93 A5 00 18 */	stw r29, 0x18(r5)
/* 814BACAC | B3 C5 00 02 */	sth r30, 0x2(r5)
/* 814BACB0 | 93 C5 00 1C */	stw r30, 0x1c(r5)
/* 814BACB4 | B3 85 00 00 */	sth r28, 0x0(r5)
/* 814BACB8 | 41 82 00 10 */	beq .L_814BACC8
/* 814BACBC | 63 9C 00 04 */	ori r28, r28, 0x4
/* 814BACC0 | B3 85 00 00 */	sth r28, 0x0(r5)
/* 814BACC4 | 48 00 00 0C */	b .L_814BACD0
.L_814BACC8:
/* 814BACC8 | 57 9C 07 B8 */	rlwinm r28, r28, 0, 30, 28
/* 814BACCC | B3 85 00 00 */	sth r28, 0x0(r5)
.L_814BACD0:
/* 814BACD0 | 55 9A 48 2C */	slwi r26, r12, 9
/* 814BACD4 | 7D 99 63 78 */	mr r25, r12
/* 814BACD8 | 3B A0 00 00 */	li r29, 0x0
/* 814BACDC | 3B C0 FF FF */	li r30, -0x1
/* 814BACE0 | 7F 66 D2 14 */	add r27, r6, r26
/* 814BACE4 | 48 00 00 80 */	b .L_814BAD64
.L_814BACE8:
/* 814BACE8 | 7F 8C C8 50 */	subf r28, r12, r25
/* 814BACEC | 7F F9 62 14 */	add r31, r25, r12
/* 814BACF0 | 1F 9C 00 28 */	mulli r28, r28, 0x28
/* 814BACF4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BACF8 | 1F FF 00 28 */	mulli r31, r31, 0x28
/* 814BACFC | 7F 85 E2 14 */	add r28, r5, r28
/* 814BAD00 | 93 83 00 24 */	stw r28, 0x24(r3)
/* 814BAD04 | 7F E5 FA 14 */	add r31, r5, r31
/* 814BAD08 | 93 E3 00 20 */	stw r31, 0x20(r3)
/* 814BAD0C | 93 63 00 04 */	stw r27, 0x4(r3)
/* 814BAD10 | 93 63 00 08 */	stw r27, 0x8(r3)
/* 814BAD14 | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 814BAD18 | 93 A3 00 10 */	stw r29, 0x10(r3)
/* 814BAD1C | 91 03 00 14 */	stw r8, 0x14(r3)
/* 814BAD20 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 814BAD24 | B3 A3 00 02 */	sth r29, 0x2(r3)
/* 814BAD28 | 93 A3 00 1C */	stw r29, 0x1c(r3)
/* 814BAD2C | A3 E3 00 00 */	lhz r31, 0x0(r3)
/* 814BAD30 | 57 FF 04 3A */	rlwinm r31, r31, 0, 16, 29
/* 814BAD34 | B3 E3 00 00 */	sth r31, 0x0(r3)
/* 814BAD38 | 41 82 00 14 */	beq .L_814BAD4C
/* 814BAD3C | A3 E3 00 00 */	lhz r31, 0x0(r3)
/* 814BAD40 | 63 FF 00 04 */	ori r31, r31, 0x4
/* 814BAD44 | B3 E3 00 00 */	sth r31, 0x0(r3)
/* 814BAD48 | 48 00 00 10 */	b .L_814BAD58
.L_814BAD4C:
/* 814BAD4C | A3 E3 00 00 */	lhz r31, 0x0(r3)
/* 814BAD50 | 57 FF 07 B8 */	rlwinm r31, r31, 0, 30, 28
/* 814BAD54 | B3 E3 00 00 */	sth r31, 0x0(r3)
.L_814BAD58:
/* 814BAD58 | 7C 63 02 14 */	add r3, r3, r0
/* 814BAD5C | 7F 7B D2 14 */	add r27, r27, r26
/* 814BAD60 | 7F 39 62 14 */	add r25, r25, r12
.L_814BAD64:
/* 814BAD64 | 7C 19 50 40 */	cmplw r25, r10
/* 814BAD68 | 41 80 FF 80 */	blt .L_814BACE8
/* 814BAD6C | 55 80 08 3C */	slwi r0, r12, 1
/* 814BAD70 | 7D 4B 38 50 */	subf r10, r11, r7
/* 814BAD74 | 7C 00 00 D0 */	neg r0, r0
/* 814BAD78 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BAD7C | 7C 0B 00 50 */	subf r0, r11, r0
/* 814BAD80 | 7D 6C 50 50 */	subf r11, r12, r10
/* 814BAD84 | 7D 40 3A 14 */	add r10, r0, r7
/* 814BAD88 | 38 60 00 00 */	li r3, 0x0
/* 814BAD8C | 55 67 48 2C */	slwi r7, r11, 9
/* 814BAD90 | 38 00 FF FF */	li r0, -0x1
/* 814BAD94 | 7D 26 3A 14 */	add r9, r6, r7
/* 814BAD98 | 1D 8B 00 28 */	mulli r12, r11, 0x28
/* 814BAD9C | 1C EA 00 28 */	mulli r7, r10, 0x28
/* 814BADA0 | 7C C5 62 14 */	add r6, r5, r12
/* 814BADA4 | 7C E5 3A 14 */	add r7, r5, r7
/* 814BADA8 | 90 E6 00 24 */	stw r7, 0x24(r6)
/* 814BADAC | 90 A6 00 20 */	stw r5, 0x20(r6)
/* 814BADB0 | 91 26 00 04 */	stw r9, 0x4(r6)
/* 814BADB4 | 91 26 00 08 */	stw r9, 0x8(r6)
/* 814BADB8 | 90 66 00 0C */	stw r3, 0xc(r6)
/* 814BADBC | 90 66 00 10 */	stw r3, 0x10(r6)
/* 814BADC0 | 91 06 00 14 */	stw r8, 0x14(r6)
/* 814BADC4 | 90 06 00 18 */	stw r0, 0x18(r6)
/* 814BADC8 | B0 66 00 02 */	sth r3, 0x2(r6)
/* 814BADCC | 90 66 00 1C */	stw r3, 0x1c(r6)
/* 814BADD0 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BADD4 | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814BADD8 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814BADDC | 41 82 00 14 */	beq .L_814BADF0
/* 814BADE0 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BADE4 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814BADE8 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814BADEC | 48 00 00 10 */	b .L_814BADFC
.L_814BADF0:
/* 814BADF0 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BADF4 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814BADF8 | B0 04 00 00 */	sth r0, 0x0(r4)
.L_814BADFC:
/* 814BADFC | 38 60 00 00 */	li r3, 0x0
.L_814BAE00:
/* 814BAE00 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BAE04 | 48 13 E7 01 */	bl _restgpr_25
/* 814BAE08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814BAE0C | 7C 08 03 A6 */	mtlr r0
/* 814BAE10 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814BAE14 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_InitPageList

# .text:0x280 | 0x814BAE18 | size: 0x100
.fn VFiPFCACHE_FlushPageIfNeeded, global
/* 814BAE18 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814BAE1C | 7C 08 02 A6 */	mflr r0
/* 814BAE20 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814BAE24 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BAE28 | 48 13 E6 99 */	bl _savegpr_27
/* 814BAE2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BAE30 | 7C 7E 1B 78 */	mr r30, r3
/* 814BAE34 | 7C 9F 23 78 */	mr r31, r4
/* 814BAE38 | 41 82 00 C4 */	beq .L_814BAEFC
/* 814BAE3C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BAE40 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BAE44 | 41 82 00 B8 */	beq .L_814BAEFC
/* 814BAE48 | 81 04 00 18 */	lwz r8, 0x18(r4)
/* 814BAE4C | 3C 08 00 01 */	addis r0, r8, 0x1
/* 814BAE50 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BAE54 | 41 82 00 A8 */	beq .L_814BAEFC
/* 814BAE58 | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 814BAE5C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BAE60 | 89 23 00 20 */	lbz r9, 0x20(r3)
/* 814BAE64 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 814BAE68 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814BAE6C | 7F A5 4C 30 */	srw r5, r29, r9
/* 814BAE70 | 7C C6 E8 50 */	subf r6, r6, r29
/* 814BAE74 | 7F A4 EB 78 */	mr r4, r29
/* 814BAE78 | 7C 00 4C 30 */	srw r0, r0, r9
/* 814BAE7C | 7C C6 4C 30 */	srw r6, r6, r9
/* 814BAE80 | 7C A5 00 50 */	subf r5, r5, r0
/* 814BAE84 | 7F 68 32 14 */	add r27, r8, r6
/* 814BAE88 | 3B 85 00 01 */	addi r28, r5, 0x1
/* 814BAE8C | 7F 65 DB 78 */	mr r5, r27
/* 814BAE90 | 7F 86 E3 78 */	mr r6, r28
/* 814BAE94 | 4B FF BD 15 */	bl VFiPFDRV_lwrite
/* 814BAE98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BAE9C | 41 82 00 08 */	beq .L_814BAEA4
/* 814BAEA0 | 48 00 00 60 */	b .L_814BAF00
.L_814BAEA4:
/* 814BAEA4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BAEA8 | 7C 00 E0 40 */	cmplw r0, r28
/* 814BAEAC | 41 82 00 0C */	beq .L_814BAEB8
/* 814BAEB0 | 38 60 00 11 */	li r3, 0x11
/* 814BAEB4 | 48 00 00 4C */	b .L_814BAF00
.L_814BAEB8:
/* 814BAEB8 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BAEBC | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BAEC0 | 41 82 00 24 */	beq .L_814BAEE4
/* 814BAEC4 | 7F C3 F3 78 */	mr r3, r30
/* 814BAEC8 | 7F A4 EB 78 */	mr r4, r29
/* 814BAECC | 7F 65 DB 78 */	mr r5, r27
/* 814BAED0 | 7F 86 E3 78 */	mr r6, r28
/* 814BAED4 | 48 00 8B 1D */	bl VFiPFFAT_UpdateAlternateFATEntry
/* 814BAED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BAEDC | 41 82 00 08 */	beq .L_814BAEE4
/* 814BAEE0 | 48 00 00 20 */	b .L_814BAF00
.L_814BAEE4:
/* 814BAEE4 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814BAEE8 | 38 00 00 00 */	li r0, 0x0
/* 814BAEEC | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814BAEF0 | 54 63 07 FA */	rlwinm r3, r3, 0, 31, 29
/* 814BAEF4 | B0 7F 00 00 */	sth r3, 0x0(r31)
/* 814BAEF8 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_814BAEFC:
/* 814BAEFC | 38 60 00 00 */	li r3, 0x0
.L_814BAF00:
/* 814BAF00 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BAF04 | 48 13 E6 09 */	bl _restgpr_27
/* 814BAF08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814BAF0C | 7C 08 03 A6 */	mtlr r0
/* 814BAF10 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814BAF14 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FlushPageIfNeeded

# .text:0x380 | 0x814BAF18 | size: 0x30C
.fn VFiPFCACHE_DoAllocatePage, global
/* 814BAF18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BAF1C | 7C 08 02 A6 */	mflr r0
/* 814BAF20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BAF24 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814BAF28 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BAF2C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BAF30 | 7C DF 33 78 */	mr r31, r6
/* 814BAF34 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BAF38 | 7C BE 2B 78 */	mr r30, r5
/* 814BAF3C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BAF40 | 7C 9D 23 78 */	mr r29, r4
/* 814BAF44 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BAF48 | 7C 7C 1B 78 */	mr r28, r3
/* 814BAF4C | 81 24 00 00 */	lwz r9, 0x0(r4)
/* 814BAF50 | 40 82 00 0C */	bne .L_814BAF5C
/* 814BAF54 | 39 40 00 00 */	li r10, 0x0
/* 814BAF58 | 48 00 00 68 */	b .L_814BAFC0
.L_814BAF5C:
/* 814BAF5C | 7D 2A 4B 78 */	mr r10, r9
.L_814BAF60:
/* 814BAF60 | A0 0A 00 00 */	lhz r0, 0x0(r10)
/* 814BAF64 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BAF68 | 40 82 00 0C */	bne .L_814BAF74
/* 814BAF6C | 39 40 00 00 */	li r10, 0x0
/* 814BAF70 | 48 00 00 50 */	b .L_814BAFC0
.L_814BAF74:
/* 814BAF74 | 81 6A 00 18 */	lwz r11, 0x18(r10)
/* 814BAF78 | 7C 0B 28 40 */	cmplw r11, r5
/* 814BAF7C | 41 81 00 34 */	bgt .L_814BAFB0
/* 814BAF80 | 80 0A 00 14 */	lwz r0, 0x14(r10)
/* 814BAF84 | 7D 0B 02 14 */	add r8, r11, r0
/* 814BAF88 | 38 08 FF FF */	subi r0, r8, 0x1
/* 814BAF8C | 7C 00 28 40 */	cmplw r0, r5
/* 814BAF90 | 41 80 00 20 */	blt .L_814BAFB0
/* 814BAF94 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814BAF98 | 7C 6B 28 50 */	subf r3, r11, r5
/* 814BAF9C | 80 AA 00 04 */	lwz r5, 0x4(r10)
/* 814BAFA0 | 7C 60 00 30 */	slw r0, r3, r0
/* 814BAFA4 | 7C 05 02 14 */	add r0, r5, r0
/* 814BAFA8 | 90 0A 00 08 */	stw r0, 0x8(r10)
/* 814BAFAC | 48 00 00 14 */	b .L_814BAFC0
.L_814BAFB0:
/* 814BAFB0 | 81 4A 00 20 */	lwz r10, 0x20(r10)
/* 814BAFB4 | 7C 0A 48 40 */	cmplw r10, r9
/* 814BAFB8 | 40 82 FF A8 */	bne .L_814BAF60
/* 814BAFBC | 39 40 00 00 */	li r10, 0x0
.L_814BAFC0:
/* 814BAFC0 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814BAFC4 | 91 46 00 00 */	stw r10, 0x0(r6)
/* 814BAFC8 | 41 82 00 10 */	beq .L_814BAFD8
/* 814BAFCC | 38 00 00 01 */	li r0, 0x1
/* 814BAFD0 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814BAFD4 | 48 00 01 CC */	b .L_814BB1A0
.L_814BAFD8:
/* 814BAFD8 | 38 00 00 00 */	li r0, 0x0
/* 814BAFDC | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814BAFE0 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814BAFE4 | 7C 85 23 78 */	mr r5, r4
.L_814BAFE8:
/* 814BAFE8 | 80 A5 00 24 */	lwz r5, 0x24(r5)
/* 814BAFEC | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 814BAFF0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BAFF4 | 40 82 00 10 */	bne .L_814BB004
/* 814BAFF8 | 90 A6 00 00 */	stw r5, 0x0(r6)
/* 814BAFFC | 38 60 00 01 */	li r3, 0x1
/* 814BB000 | 48 00 00 34 */	b .L_814BB034
.L_814BB004:
/* 814BB004 | 80 65 00 18 */	lwz r3, 0x18(r5)
/* 814BB008 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BB00C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BB010 | 41 82 00 10 */	beq .L_814BB020
/* 814BB014 | 90 A6 00 00 */	stw r5, 0x0(r6)
/* 814BB018 | 38 60 00 00 */	li r3, 0x0
/* 814BB01C | 48 00 00 18 */	b .L_814BB034
.L_814BB020:
/* 814BB020 | 7C 05 20 40 */	cmplw r5, r4
/* 814BB024 | 40 82 FF C4 */	bne .L_814BAFE8
/* 814BB028 | 38 00 00 00 */	li r0, 0x0
/* 814BB02C | 38 60 00 00 */	li r3, 0x0
/* 814BB030 | 90 06 00 00 */	stw r0, 0x0(r6)
.L_814BB034:
/* 814BB034 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB038 | 40 82 00 58 */	bne .L_814BB090
/* 814BB03C | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 814BB040 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BB044 | 40 82 00 14 */	bne .L_814BB058
/* 814BB048 | 38 00 00 00 */	li r0, 0x0
/* 814BB04C | 38 60 00 1E */	li r3, 0x1e
/* 814BB050 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814BB054 | 48 00 01 B0 */	b .L_814BB204
.L_814BB058:
/* 814BB058 | 7F 83 E3 78 */	mr r3, r28
/* 814BB05C | 4B FF FD BD */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BB060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB064 | 41 82 00 10 */	beq .L_814BB074
/* 814BB068 | 38 00 00 00 */	li r0, 0x0
/* 814BB06C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BB070 | 48 00 01 94 */	b .L_814BB204
.L_814BB074:
/* 814BB074 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB078 | 38 00 00 00 */	li r0, 0x0
/* 814BB07C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814BB080 | 54 63 07 FA */	rlwinm r3, r3, 0, 31, 29
/* 814BB084 | B0 64 00 00 */	sth r3, 0x0(r4)
/* 814BB088 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814BB08C | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814BB090:
/* 814BB090 | 3C 1E 00 01 */	addis r0, r30, 0x1
/* 814BB094 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BB098 | 41 82 00 E4 */	beq .L_814BB17C
/* 814BB09C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB0A0 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BB0A4 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BB0A8 | 41 82 00 48 */	beq .L_814BB0F0
/* 814BB0AC | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 814BB0B0 | 7C 1E 1B 96 */	divwu r0, r30, r3
/* 814BB0B4 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 814BB0B8 | 7C 00 F0 50 */	subf r0, r0, r30
/* 814BB0BC | 7C 00 F0 50 */	subf r0, r0, r30
/* 814BB0C0 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814BB0C4 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814BB0C8 | 88 1C 00 20 */	lbz r0, 0x20(r28)
/* 814BB0CC | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 814BB0D0 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 814BB0D4 | 7C 7E 23 96 */	divwu r3, r30, r4
/* 814BB0D8 | 7C 63 21 D6 */	mullw r3, r3, r4
/* 814BB0DC | 7C 63 F0 50 */	subf r3, r3, r30
/* 814BB0E0 | 7C 60 00 30 */	slw r0, r3, r0
/* 814BB0E4 | 7C 05 02 14 */	add r0, r5, r0
/* 814BB0E8 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 814BB0EC | 48 00 00 A4 */	b .L_814BB190
.L_814BB0F0:
/* 814BB0F0 | 80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 814BB0F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814BB0F8 | 40 82 00 3C */	bne .L_814BB134
/* 814BB0FC | 80 1C 00 30 */	lwz r0, 0x30(r28)
/* 814BB100 | 7C 1E 00 40 */	cmplw r30, r0
/* 814BB104 | 41 80 00 10 */	blt .L_814BB114
/* 814BB108 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814BB10C | 7C 1E 00 40 */	cmplw r30, r0
/* 814BB110 | 41 80 00 24 */	blt .L_814BB134
.L_814BB114:
/* 814BB114 | A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 814BB118 | 7C 1E 00 40 */	cmplw r30, r0
/* 814BB11C | 40 82 00 10 */	bne .L_814BB12C
/* 814BB120 | 38 00 00 01 */	li r0, 0x1
/* 814BB124 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 814BB128 | 48 00 00 0C */	b .L_814BB134
.L_814BB12C:
/* 814BB12C | 38 60 00 22 */	li r3, 0x22
/* 814BB130 | 48 00 00 D4 */	b .L_814BB204
.L_814BB134:
/* 814BB134 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB138 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 814BB13C | 7C 1E 1B 96 */	divwu r0, r30, r3
/* 814BB140 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 814BB144 | 7C 00 F0 50 */	subf r0, r0, r30
/* 814BB148 | 7C 00 F0 50 */	subf r0, r0, r30
/* 814BB14C | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814BB150 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814BB154 | 88 1C 00 20 */	lbz r0, 0x20(r28)
/* 814BB158 | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 814BB15C | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 814BB160 | 7C 7E 23 96 */	divwu r3, r30, r4
/* 814BB164 | 7C 63 21 D6 */	mullw r3, r3, r4
/* 814BB168 | 7C 63 F0 50 */	subf r3, r3, r30
/* 814BB16C | 7C 60 00 30 */	slw r0, r3, r0
/* 814BB170 | 7C 05 02 14 */	add r0, r5, r0
/* 814BB174 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 814BB178 | 48 00 00 18 */	b .L_814BB190
.L_814BB17C:
/* 814BB17C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB180 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 814BB184 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB188 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814BB18C | 90 03 00 08 */	stw r0, 0x8(r3)
.L_814BB190:
/* 814BB190 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB194 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814BB198 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814BB19C | B0 03 00 00 */	sth r0, 0x0(r3)
.L_814BB1A0:
/* 814BB1A0 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 814BB1A4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814BB1A8 | 7C 05 18 40 */	cmplw r5, r3
/* 814BB1AC | 41 82 00 54 */	beq .L_814BB200
/* 814BB1B0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BB1B4 | 7C 05 00 40 */	cmplw r5, r0
/* 814BB1B8 | 40 82 00 0C */	bne .L_814BB1C4
/* 814BB1BC | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 814BB1C0 | 48 00 00 40 */	b .L_814BB200
.L_814BB1C4:
/* 814BB1C4 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 814BB1C8 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814BB1CC | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814BB1D0 | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 814BB1D4 | 80 65 00 20 */	lwz r3, 0x20(r5)
/* 814BB1D8 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814BB1DC | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814BB1E0 | 90 85 00 20 */	stw r4, 0x20(r5)
/* 814BB1E4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814BB1E8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BB1EC | 90 05 00 24 */	stw r0, 0x24(r5)
/* 814BB1F0 | 90 A4 00 24 */	stw r5, 0x24(r4)
/* 814BB1F4 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814BB1F8 | 90 A3 00 20 */	stw r5, 0x20(r3)
/* 814BB1FC | 90 BD 00 00 */	stw r5, 0x0(r29)
.L_814BB200:
/* 814BB200 | 38 60 00 00 */	li r3, 0x0
.L_814BB204:
/* 814BB204 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BB208 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BB20C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BB210 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BB214 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BB218 | 7C 08 03 A6 */	mtlr r0
/* 814BB21C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BB220 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_DoAllocatePage

# .text:0x68C | 0x814BB224 | size: 0x204
.fn VFiPFCACHE_DoReadPage, global
/* 814BB224 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BB228 | 7C 08 02 A6 */	mflr r0
/* 814BB22C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BB230 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BB234 | 7C 9F 23 78 */	mr r31, r4
/* 814BB238 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BB23C | 7C FE 3B 78 */	mr r30, r7
/* 814BB240 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BB244 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BB248 | 7C DD 33 78 */	mr r29, r6
/* 814BB24C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BB250 | 7C 7C 1B 78 */	mr r28, r3
/* 814BB254 | 4B FF FC C5 */	bl VFiPFCACHE_DoAllocatePage
/* 814BB258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB25C | 41 82 00 08 */	beq .L_814BB264
/* 814BB260 | 48 00 01 A8 */	b .L_814BB408
.L_814BB264:
/* 814BB264 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BB268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BB26C | 40 82 01 98 */	bne .L_814BB404
/* 814BB270 | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 814BB274 | 7F 83 E3 78 */	mr r3, r28
/* 814BB278 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814BB27C | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 814BB280 | 80 A6 00 18 */	lwz r5, 0x18(r6)
/* 814BB284 | 80 C6 00 14 */	lwz r6, 0x14(r6)
/* 814BB288 | 4B FF B8 9D */	bl VFiPFDRV_lread
/* 814BB28C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB290 | 41 82 00 8C */	beq .L_814BB31C
/* 814BB294 | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 814BB298 | 38 A0 00 00 */	li r5, 0x0
/* 814BB29C | 38 00 FF FF */	li r0, -0x1
/* 814BB2A0 | A0 86 00 00 */	lhz r4, 0x0(r6)
/* 814BB2A4 | 90 A6 00 0C */	stw r5, 0xc(r6)
/* 814BB2A8 | 54 84 04 3A */	rlwinm r4, r4, 0, 16, 29
/* 814BB2AC | 90 A6 00 10 */	stw r5, 0x10(r6)
/* 814BB2B0 | B0 86 00 00 */	sth r4, 0x0(r6)
/* 814BB2B4 | 90 06 00 18 */	stw r0, 0x18(r6)
/* 814BB2B8 | 90 A6 00 1C */	stw r5, 0x1c(r6)
/* 814BB2BC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB2C0 | 7C 06 20 40 */	cmplw r6, r4
/* 814BB2C4 | 40 82 00 10 */	bne .L_814BB2D4
/* 814BB2C8 | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 814BB2CC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BB2D0 | 48 00 01 38 */	b .L_814BB408
.L_814BB2D4:
/* 814BB2D4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BB2D8 | 7C 06 00 40 */	cmplw r6, r0
/* 814BB2DC | 41 82 01 2C */	beq .L_814BB408
/* 814BB2E0 | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 814BB2E4 | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 814BB2E8 | 90 04 00 20 */	stw r0, 0x20(r4)
/* 814BB2EC | 80 06 00 24 */	lwz r0, 0x24(r6)
/* 814BB2F0 | 80 86 00 20 */	lwz r4, 0x20(r6)
/* 814BB2F4 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BB2F8 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 814BB2FC | 90 A6 00 20 */	stw r5, 0x20(r6)
/* 814BB300 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB304 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BB308 | 90 06 00 24 */	stw r0, 0x24(r6)
/* 814BB30C | 90 C5 00 24 */	stw r6, 0x24(r5)
/* 814BB310 | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 814BB314 | 90 C4 00 20 */	stw r6, 0x20(r4)
/* 814BB318 | 48 00 00 F0 */	b .L_814BB408
.L_814BB31C:
/* 814BB31C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 814BB320 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BB324 | 80 05 00 14 */	lwz r0, 0x14(r5)
/* 814BB328 | 7C 04 00 40 */	cmplw r4, r0
/* 814BB32C | 41 82 00 A0 */	beq .L_814BB3CC
/* 814BB330 | 80 05 00 18 */	lwz r0, 0x18(r5)
/* 814BB334 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814BB338 | 7C 00 22 14 */	add r0, r0, r4
/* 814BB33C | 7C 03 00 40 */	cmplw r3, r0
/* 814BB340 | 41 82 00 8C */	beq .L_814BB3CC
/* 814BB344 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814BB348 | 38 80 00 00 */	li r4, 0x0
/* 814BB34C | 38 00 FF FF */	li r0, -0x1
/* 814BB350 | 90 85 00 0C */	stw r4, 0xc(r5)
/* 814BB354 | 54 63 04 3A */	rlwinm r3, r3, 0, 16, 29
/* 814BB358 | 90 85 00 10 */	stw r4, 0x10(r5)
/* 814BB35C | B0 65 00 00 */	sth r3, 0x0(r5)
/* 814BB360 | 90 05 00 18 */	stw r0, 0x18(r5)
/* 814BB364 | 90 85 00 1C */	stw r4, 0x1c(r5)
/* 814BB368 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB36C | 7C 05 18 40 */	cmplw r5, r3
/* 814BB370 | 40 82 00 10 */	bne .L_814BB380
/* 814BB374 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 814BB378 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BB37C | 48 00 00 48 */	b .L_814BB3C4
.L_814BB380:
/* 814BB380 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BB384 | 7C 05 00 40 */	cmplw r5, r0
/* 814BB388 | 41 82 00 3C */	beq .L_814BB3C4
/* 814BB38C | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 814BB390 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814BB394 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814BB398 | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 814BB39C | 80 65 00 20 */	lwz r3, 0x20(r5)
/* 814BB3A0 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814BB3A4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB3A8 | 90 85 00 20 */	stw r4, 0x20(r5)
/* 814BB3AC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB3B0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BB3B4 | 90 05 00 24 */	stw r0, 0x24(r5)
/* 814BB3B8 | 90 A4 00 24 */	stw r5, 0x24(r4)
/* 814BB3BC | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814BB3C0 | 90 A3 00 20 */	stw r5, 0x20(r3)
.L_814BB3C4:
/* 814BB3C4 | 38 60 00 11 */	li r3, 0x11
/* 814BB3C8 | 48 00 00 40 */	b .L_814BB408
.L_814BB3CC:
/* 814BB3CC | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814BB3D0 | 38 00 00 00 */	li r0, 0x0
/* 814BB3D4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BB3D8 | 54 63 07 FA */	rlwinm r3, r3, 0, 31, 29
/* 814BB3DC | B0 65 00 00 */	sth r3, 0x0(r5)
/* 814BB3E0 | 90 05 00 0C */	stw r0, 0xc(r5)
/* 814BB3E4 | 90 05 00 10 */	stw r0, 0x10(r5)
/* 814BB3E8 | 41 82 00 14 */	beq .L_814BB3FC
/* 814BB3EC | 80 1C 15 F0 */	lwz r0, 0x15f0(r28)
/* 814BB3F0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814BB3F4 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814BB3F8 | 48 00 00 0C */	b .L_814BB404
.L_814BB3FC:
/* 814BB3FC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814BB400 | 90 03 00 1C */	stw r0, 0x1c(r3)
.L_814BB404:
/* 814BB404 | 38 60 00 00 */	li r3, 0x0
.L_814BB408:
/* 814BB408 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BB40C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BB410 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BB414 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BB418 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BB41C | 7C 08 03 A6 */	mtlr r0
/* 814BB420 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BB424 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_DoReadPage

# .text:0x890 | 0x814BB428 | size: 0x258
.fn VFiPFCACHE_DoReadPageAndFlushIfNeeded, global
/* 814BB428 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BB42C | 7C 08 02 A6 */	mflr r0
/* 814BB430 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BB434 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BB438 | 7C DF 33 78 */	mr r31, r6
/* 814BB43C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BB440 | 7C 9E 23 78 */	mr r30, r4
/* 814BB444 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BB448 | 7C 7D 1B 78 */	mr r29, r3
/* 814BB44C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BB450 | 7C FC 3B 78 */	mr r28, r7
/* 814BB454 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BB458 | 4B FF FA C1 */	bl VFiPFCACHE_DoAllocatePage
/* 814BB45C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB460 | 41 82 00 08 */	beq .L_814BB468
/* 814BB464 | 48 00 01 FC */	b .L_814BB660
.L_814BB468:
/* 814BB468 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BB46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BB470 | 40 82 01 9C */	bne .L_814BB60C
/* 814BB474 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814BB478 | 7F A3 EB 78 */	mr r3, r29
/* 814BB47C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814BB480 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 814BB484 | 80 A6 00 18 */	lwz r5, 0x18(r6)
/* 814BB488 | 80 C6 00 14 */	lwz r6, 0x14(r6)
/* 814BB48C | 4B FF B6 99 */	bl VFiPFDRV_lread
/* 814BB490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB494 | 41 82 00 8C */	beq .L_814BB520
/* 814BB498 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814BB49C | 38 A0 00 00 */	li r5, 0x0
/* 814BB4A0 | 38 00 FF FF */	li r0, -0x1
/* 814BB4A4 | A0 86 00 00 */	lhz r4, 0x0(r6)
/* 814BB4A8 | 90 A6 00 0C */	stw r5, 0xc(r6)
/* 814BB4AC | 54 84 04 3A */	rlwinm r4, r4, 0, 16, 29
/* 814BB4B0 | 90 A6 00 10 */	stw r5, 0x10(r6)
/* 814BB4B4 | B0 86 00 00 */	sth r4, 0x0(r6)
/* 814BB4B8 | 90 06 00 18 */	stw r0, 0x18(r6)
/* 814BB4BC | 90 A6 00 1C */	stw r5, 0x1c(r6)
/* 814BB4C0 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814BB4C4 | 7C 06 20 40 */	cmplw r6, r4
/* 814BB4C8 | 40 82 00 10 */	bne .L_814BB4D8
/* 814BB4CC | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 814BB4D0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814BB4D4 | 48 00 01 8C */	b .L_814BB660
.L_814BB4D8:
/* 814BB4D8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BB4DC | 7C 06 00 40 */	cmplw r6, r0
/* 814BB4E0 | 41 82 01 80 */	beq .L_814BB660
/* 814BB4E4 | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 814BB4E8 | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 814BB4EC | 90 04 00 20 */	stw r0, 0x20(r4)
/* 814BB4F0 | 80 06 00 24 */	lwz r0, 0x24(r6)
/* 814BB4F4 | 80 86 00 20 */	lwz r4, 0x20(r6)
/* 814BB4F8 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BB4FC | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814BB500 | 90 A6 00 20 */	stw r5, 0x20(r6)
/* 814BB504 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814BB508 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BB50C | 90 06 00 24 */	stw r0, 0x24(r6)
/* 814BB510 | 90 C5 00 24 */	stw r6, 0x24(r5)
/* 814BB514 | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 814BB518 | 90 C4 00 20 */	stw r6, 0x20(r4)
/* 814BB51C | 48 00 01 44 */	b .L_814BB660
.L_814BB520:
/* 814BB520 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 814BB524 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BB528 | 80 05 00 14 */	lwz r0, 0x14(r5)
/* 814BB52C | 7C 04 00 40 */	cmplw r4, r0
/* 814BB530 | 41 82 00 A0 */	beq .L_814BB5D0
/* 814BB534 | 80 05 00 18 */	lwz r0, 0x18(r5)
/* 814BB538 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814BB53C | 7C 00 22 14 */	add r0, r0, r4
/* 814BB540 | 7C 03 00 40 */	cmplw r3, r0
/* 814BB544 | 41 82 00 8C */	beq .L_814BB5D0
/* 814BB548 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814BB54C | 38 80 00 00 */	li r4, 0x0
/* 814BB550 | 38 00 FF FF */	li r0, -0x1
/* 814BB554 | 90 85 00 0C */	stw r4, 0xc(r5)
/* 814BB558 | 54 63 04 3A */	rlwinm r3, r3, 0, 16, 29
/* 814BB55C | 90 85 00 10 */	stw r4, 0x10(r5)
/* 814BB560 | B0 65 00 00 */	sth r3, 0x0(r5)
/* 814BB564 | 90 05 00 18 */	stw r0, 0x18(r5)
/* 814BB568 | 90 85 00 1C */	stw r4, 0x1c(r5)
/* 814BB56C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814BB570 | 7C 05 18 40 */	cmplw r5, r3
/* 814BB574 | 40 82 00 10 */	bne .L_814BB584
/* 814BB578 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 814BB57C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814BB580 | 48 00 00 48 */	b .L_814BB5C8
.L_814BB584:
/* 814BB584 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BB588 | 7C 05 00 40 */	cmplw r5, r0
/* 814BB58C | 41 82 00 3C */	beq .L_814BB5C8
/* 814BB590 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 814BB594 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814BB598 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814BB59C | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 814BB5A0 | 80 65 00 20 */	lwz r3, 0x20(r5)
/* 814BB5A4 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814BB5A8 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814BB5AC | 90 85 00 20 */	stw r4, 0x20(r5)
/* 814BB5B0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814BB5B4 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BB5B8 | 90 05 00 24 */	stw r0, 0x24(r5)
/* 814BB5BC | 90 A4 00 24 */	stw r5, 0x24(r4)
/* 814BB5C0 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814BB5C4 | 90 A3 00 20 */	stw r5, 0x20(r3)
.L_814BB5C8:
/* 814BB5C8 | 38 60 00 11 */	li r3, 0x11
/* 814BB5CC | 48 00 00 94 */	b .L_814BB660
.L_814BB5D0:
/* 814BB5D0 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814BB5D4 | 38 00 00 00 */	li r0, 0x0
/* 814BB5D8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814BB5DC | 54 63 07 FA */	rlwinm r3, r3, 0, 31, 29
/* 814BB5E0 | B0 65 00 00 */	sth r3, 0x0(r5)
/* 814BB5E4 | 90 05 00 0C */	stw r0, 0xc(r5)
/* 814BB5E8 | 90 05 00 10 */	stw r0, 0x10(r5)
/* 814BB5EC | 41 82 00 14 */	beq .L_814BB600
/* 814BB5F0 | 80 1D 15 F0 */	lwz r0, 0x15f0(r29)
/* 814BB5F4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB5F8 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814BB5FC | 48 00 00 60 */	b .L_814BB65C
.L_814BB600:
/* 814BB600 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814BB604 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814BB608 | 48 00 00 54 */	b .L_814BB65C
.L_814BB60C:
/* 814BB60C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814BB610 | 41 82 00 4C */	beq .L_814BB65C
/* 814BB614 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814BB618 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BB61C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BB620 | 41 82 00 3C */	beq .L_814BB65C
/* 814BB624 | 80 1D 15 D0 */	lwz r0, 0x15d0(r29)
/* 814BB628 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BB62C | 41 82 00 30 */	beq .L_814BB65C
/* 814BB630 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 814BB634 | 80 1D 15 F0 */	lwz r0, 0x15f0(r29)
/* 814BB638 | 7C 03 00 40 */	cmplw r3, r0
/* 814BB63C | 41 82 00 20 */	beq .L_814BB65C
/* 814BB640 | 7F A3 EB 78 */	mr r3, r29
/* 814BB644 | 4B FF F7 D5 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BB648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB64C | 41 82 00 10 */	beq .L_814BB65C
/* 814BB650 | 38 00 00 00 */	li r0, 0x0
/* 814BB654 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814BB658 | 48 00 00 08 */	b .L_814BB660
.L_814BB65C:
/* 814BB65C | 38 60 00 00 */	li r3, 0x0
.L_814BB660:
/* 814BB660 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BB664 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BB668 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BB66C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BB670 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BB674 | 7C 08 03 A6 */	mtlr r0
/* 814BB678 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BB67C | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_DoReadPageAndFlushIfNeeded

# .text:0xAE8 | 0x814BB680 | size: 0x254
.fn VFiPFCACHE_DoReadNumSector, global
/* 814BB680 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814BB684 | 7C 08 02 A6 */	mflr r0
/* 814BB688 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814BB68C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814BB690 | 48 13 DE 19 */	bl _savegpr_21
/* 814BB694 | 38 00 00 00 */	li r0, 0x0
/* 814BB698 | 7C B8 2B 78 */	mr r24, r5
/* 814BB69C | 7C D9 33 78 */	mr r25, r6
/* 814BB6A0 | 7C FA 3B 78 */	mr r26, r7
/* 814BB6A4 | 7D 1B 43 78 */	mr r27, r8
/* 814BB6A8 | 7C 97 23 78 */	mr r23, r4
/* 814BB6AC | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814BB6B0 | 7C 76 1B 78 */	mr r22, r3
/* 814BB6B4 | 7F 04 C3 78 */	mr r4, r24
/* 814BB6B8 | 7F 25 CB 78 */	mr r5, r25
/* 814BB6BC | 7F 46 D3 78 */	mr r6, r26
/* 814BB6C0 | 7F 67 DB 78 */	mr r7, r27
/* 814BB6C4 | 4B FF B4 61 */	bl VFiPFDRV_lread
/* 814BB6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BB6CC | 41 82 00 08 */	beq .L_814BB6D4
/* 814BB6D0 | 48 00 01 EC */	b .L_814BB8BC
.L_814BB6D4:
/* 814BB6D4 | 83 FB 00 00 */	lwz r31, 0x0(r27)
/* 814BB6D8 | 3B A0 00 00 */	li r29, 0x0
/* 814BB6DC | 7F FC FB 78 */	mr r28, r31
/* 814BB6E0 | 7F D9 FA 14 */	add r30, r25, r31
.L_814BB6E4:
/* 814BB6E4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BB6E8 | 40 82 00 0C */	bne .L_814BB6F4
/* 814BB6EC | 83 B7 00 00 */	lwz r29, 0x0(r23)
/* 814BB6F0 | 48 00 00 40 */	b .L_814BB730
.L_814BB6F4:
/* 814BB6F4 | 83 BD 00 20 */	lwz r29, 0x20(r29)
/* 814BB6F8 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814BB6FC | 7C 1D 00 40 */	cmplw r29, r0
/* 814BB700 | 40 82 00 30 */	bne .L_814BB730
/* 814BB704 | 3B A0 00 00 */	li r29, 0x0
/* 814BB708 | 48 00 00 38 */	b .L_814BB740
/* 814BB70C | 48 00 00 24 */	b .L_814BB730
.L_814BB710:
/* 814BB710 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 814BB714 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BB718 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BB71C | 41 82 00 10 */	beq .L_814BB72C
/* 814BB720 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814BB724 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 814BB728 | 48 00 00 18 */	b .L_814BB740
.L_814BB72C:
/* 814BB72C | 83 BD 00 20 */	lwz r29, 0x20(r29)
.L_814BB730:
/* 814BB730 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814BB734 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BB738 | 40 82 FF D8 */	bne .L_814BB710
/* 814BB73C | 3B A0 00 00 */	li r29, 0x0
.L_814BB740:
/* 814BB740 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BB744 | 41 82 01 40 */	beq .L_814BB884
/* 814BB748 | 80 FD 00 18 */	lwz r7, 0x18(r29)
/* 814BB74C | 3C 07 00 01 */	addis r0, r7, 0x1
/* 814BB750 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BB754 | 41 82 01 30 */	beq .L_814BB884
/* 814BB758 | 7C 07 C8 40 */	cmplw r7, r25
/* 814BB75C | 41 81 00 3C */	bgt .L_814BB798
/* 814BB760 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814BB764 | 7C 07 02 14 */	add r0, r7, r0
/* 814BB768 | 7C 00 F0 40 */	cmplw r0, r30
/* 814BB76C | 41 80 00 2C */	blt .L_814BB798
/* 814BB770 | 88 B6 00 20 */	lbz r5, 0x20(r22)
/* 814BB774 | 7C 07 C8 50 */	subf r0, r7, r25
/* 814BB778 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814BB77C | 7F 03 C3 78 */	mr r3, r24
/* 814BB780 | 7C 00 28 30 */	slw r0, r0, r5
/* 814BB784 | 7F E5 28 30 */	slw r5, r31, r5
/* 814BB788 | 7C 84 02 14 */	add r4, r4, r0
/* 814BB78C | 4B FF A0 55 */	bl VFipf_memcpy
/* 814BB790 | 7F 9F E0 50 */	subf r28, r31, r28
/* 814BB794 | 48 00 00 F0 */	b .L_814BB884
.L_814BB798:
/* 814BB798 | 7C 07 C8 40 */	cmplw r7, r25
/* 814BB79C | 41 80 00 3C */	blt .L_814BB7D8
/* 814BB7A0 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 814BB7A4 | 7C 07 1A 14 */	add r0, r7, r3
/* 814BB7A8 | 7C 00 F0 40 */	cmplw r0, r30
/* 814BB7AC | 41 81 00 2C */	bgt .L_814BB7D8
/* 814BB7B0 | 88 B6 00 20 */	lbz r5, 0x20(r22)
/* 814BB7B4 | 7C 19 38 50 */	subf r0, r25, r7
/* 814BB7B8 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814BB7BC | 7C 00 28 30 */	slw r0, r0, r5
/* 814BB7C0 | 7C 65 28 30 */	slw r5, r3, r5
/* 814BB7C4 | 7C 78 02 14 */	add r3, r24, r0
/* 814BB7C8 | 4B FF A0 19 */	bl VFipf_memcpy
/* 814BB7CC | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814BB7D0 | 7F 80 E0 50 */	subf r28, r0, r28
/* 814BB7D4 | 48 00 00 B0 */	b .L_814BB884
.L_814BB7D8:
/* 814BB7D8 | 7C 07 C8 40 */	cmplw r7, r25
/* 814BB7DC | 40 81 00 50 */	ble .L_814BB82C
/* 814BB7E0 | 7C 07 F0 40 */	cmplw r7, r30
/* 814BB7E4 | 40 80 00 48 */	bge .L_814BB82C
/* 814BB7E8 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814BB7EC | 7C 07 02 14 */	add r0, r7, r0
/* 814BB7F0 | 7C 00 F0 40 */	cmplw r0, r30
/* 814BB7F4 | 41 80 00 38 */	blt .L_814BB82C
/* 814BB7F8 | 88 B6 00 20 */	lbz r5, 0x20(r22)
/* 814BB7FC | 7C 19 38 50 */	subf r0, r25, r7
/* 814BB800 | 7E BF CA 14 */	add r21, r31, r25
/* 814BB804 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814BB808 | 7C 03 28 30 */	slw r3, r0, r5
/* 814BB80C | 7C 07 A8 50 */	subf r0, r7, r21
/* 814BB810 | 7C 78 1A 14 */	add r3, r24, r3
/* 814BB814 | 7C 05 28 30 */	slw r5, r0, r5
/* 814BB818 | 4B FF 9F C9 */	bl VFipf_memcpy
/* 814BB81C | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 814BB820 | 7C 00 A8 50 */	subf r0, r0, r21
/* 814BB824 | 7F 80 E0 50 */	subf r28, r0, r28
/* 814BB828 | 48 00 00 5C */	b .L_814BB884
.L_814BB82C:
/* 814BB82C | 7C 07 C8 40 */	cmplw r7, r25
/* 814BB830 | 40 80 00 54 */	bge .L_814BB884
/* 814BB834 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814BB838 | 7C 67 02 14 */	add r3, r7, r0
/* 814BB83C | 7C 03 C8 40 */	cmplw r3, r25
/* 814BB840 | 40 81 00 44 */	ble .L_814BB884
/* 814BB844 | 7C 03 F0 40 */	cmplw r3, r30
/* 814BB848 | 41 81 00 3C */	bgt .L_814BB884
/* 814BB84C | 88 D6 00 20 */	lbz r6, 0x20(r22)
/* 814BB850 | 7C 67 C8 50 */	subf r3, r7, r25
/* 814BB854 | 80 BD 00 04 */	lwz r5, 0x4(r29)
/* 814BB858 | 7C 03 00 50 */	subf r0, r3, r0
/* 814BB85C | 7C 64 30 30 */	slw r4, r3, r6
/* 814BB860 | 7F 03 C3 78 */	mr r3, r24
/* 814BB864 | 7C 85 22 14 */	add r4, r5, r4
/* 814BB868 | 7C 05 30 30 */	slw r5, r0, r6
/* 814BB86C | 4B FF 9F 75 */	bl VFipf_memcpy
/* 814BB870 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 814BB874 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814BB878 | 7C 63 C8 50 */	subf r3, r3, r25
/* 814BB87C | 7C 03 00 50 */	subf r0, r3, r0
/* 814BB880 | 7F 80 E0 50 */	subf r28, r0, r28
.L_814BB884:
/* 814BB884 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BB888 | 41 82 00 0C */	beq .L_814BB894
/* 814BB88C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814BB890 | 40 82 FE 54 */	bne .L_814BB6E4
.L_814BB894:
/* 814BB894 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814BB898 | 7C 00 D0 40 */	cmplw r0, r26
/* 814BB89C | 41 82 00 1C */	beq .L_814BB8B8
/* 814BB8A0 | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 814BB8A4 | 7C 19 02 14 */	add r0, r25, r0
/* 814BB8A8 | 7C 03 00 40 */	cmplw r3, r0
/* 814BB8AC | 41 82 00 0C */	beq .L_814BB8B8
/* 814BB8B0 | 38 60 00 11 */	li r3, 0x11
/* 814BB8B4 | 48 00 00 08 */	b .L_814BB8BC
.L_814BB8B8:
/* 814BB8B8 | 38 60 00 00 */	li r3, 0x0
.L_814BB8BC:
/* 814BB8BC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814BB8C0 | 48 13 DC 35 */	bl _restgpr_21
/* 814BB8C4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814BB8C8 | 7C 08 03 A6 */	mtlr r0
/* 814BB8CC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814BB8D0 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_DoReadNumSector

# .text:0xD3C | 0x814BB8D4 | size: 0x420
.fn VFiPFCACHE_DoWriteNumSectorAndFreeIfNeeded, global
/* 814BB8D4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814BB8D8 | 7C 08 02 A6 */	mflr r0
/* 814BB8DC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814BB8E0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BB8E4 | 48 13 DB CD */	bl _savegpr_23
/* 814BB8E8 | 3B C0 00 00 */	li r30, 0x0
/* 814BB8EC | 7C FB 3B 78 */	mr r27, r7
/* 814BB8F0 | 93 C8 00 00 */	stw r30, 0x0(r8)
/* 814BB8F4 | 7C 77 1B 78 */	mr r23, r3
/* 814BB8F8 | 7C 98 23 78 */	mr r24, r4
/* 814BB8FC | 7C B9 2B 78 */	mr r25, r5
/* 814BB900 | 7C DA 33 78 */	mr r26, r6
/* 814BB904 | 7D 1C 43 78 */	mr r28, r8
/* 814BB908 | 7F 7D DB 78 */	mr r29, r27
/* 814BB90C | 7F E6 3A 14 */	add r31, r6, r7
.L_814BB910:
/* 814BB910 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BB914 | 40 82 00 0C */	bne .L_814BB920
/* 814BB918 | 83 D8 00 00 */	lwz r30, 0x0(r24)
/* 814BB91C | 48 00 00 40 */	b .L_814BB95C
.L_814BB920:
/* 814BB920 | 83 DE 00 20 */	lwz r30, 0x20(r30)
/* 814BB924 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 814BB928 | 7C 1E 00 40 */	cmplw r30, r0
/* 814BB92C | 40 82 00 30 */	bne .L_814BB95C
/* 814BB930 | 3B C0 00 00 */	li r30, 0x0
/* 814BB934 | 48 00 00 38 */	b .L_814BB96C
/* 814BB938 | 48 00 00 24 */	b .L_814BB95C
.L_814BB93C:
/* 814BB93C | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 814BB940 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BB944 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BB948 | 41 82 00 10 */	beq .L_814BB958
/* 814BB94C | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814BB950 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 814BB954 | 48 00 00 18 */	b .L_814BB96C
.L_814BB958:
/* 814BB958 | 83 DE 00 20 */	lwz r30, 0x20(r30)
.L_814BB95C:
/* 814BB95C | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814BB960 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BB964 | 40 82 FF D8 */	bne .L_814BB93C
/* 814BB968 | 3B C0 00 00 */	li r30, 0x0
.L_814BB96C:
/* 814BB96C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BB970 | 41 82 02 D8 */	beq .L_814BBC48
/* 814BB974 | 80 FE 00 18 */	lwz r7, 0x18(r30)
/* 814BB978 | 3C 07 00 01 */	addis r0, r7, 0x1
/* 814BB97C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BB980 | 41 82 02 C8 */	beq .L_814BBC48
/* 814BB984 | 7C 07 D0 40 */	cmplw r7, r26
/* 814BB988 | 41 81 00 B8 */	bgt .L_814BBA40
/* 814BB98C | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BB990 | 7C 07 02 14 */	add r0, r7, r0
/* 814BB994 | 7C 00 F8 40 */	cmplw r0, r31
/* 814BB998 | 41 80 00 A8 */	blt .L_814BBA40
/* 814BB99C | 88 B7 00 20 */	lbz r5, 0x20(r23)
/* 814BB9A0 | 7C 07 D0 50 */	subf r0, r7, r26
/* 814BB9A4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814BB9A8 | 7F 24 CB 78 */	mr r4, r25
/* 814BB9AC | 7C 00 28 30 */	slw r0, r0, r5
/* 814BB9B0 | 7F 65 28 30 */	slw r5, r27, r5
/* 814BB9B4 | 7C 63 02 14 */	add r3, r3, r0
/* 814BB9B8 | 4B FF 9E 29 */	bl VFipf_memcpy
/* 814BB9BC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814BB9C0 | 38 1B FF FF */	subi r0, r27, 0x1
/* 814BB9C4 | 7C 63 EA 14 */	add r3, r3, r29
/* 814BB9C8 | 3B A0 00 00 */	li r29, 0x0
/* 814BB9CC | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 814BB9D0 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 814BB9D4 | 88 B7 00 20 */	lbz r5, 0x20(r23)
/* 814BB9D8 | 80 DE 00 0C */	lwz r6, 0xc(r30)
/* 814BB9DC | 7C 63 D0 50 */	subf r3, r3, r26
/* 814BB9E0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814BB9E4 | 7C 63 28 30 */	slw r3, r3, r5
/* 814BB9E8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BB9EC | 7C 00 28 30 */	slw r0, r0, r5
/* 814BB9F0 | 7C 64 1A 14 */	add r3, r4, r3
/* 814BB9F4 | 7C 83 02 14 */	add r4, r3, r0
/* 814BB9F8 | 41 82 00 20 */	beq .L_814BBA18
/* 814BB9FC | 7C 03 30 40 */	cmplw r3, r6
/* 814BBA00 | 41 80 00 08 */	blt .L_814BBA08
/* 814BBA04 | 38 60 00 00 */	li r3, 0x0
.L_814BBA08:
/* 814BBA08 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 814BBA0C | 7C 00 20 40 */	cmplw r0, r4
/* 814BBA10 | 41 80 00 08 */	blt .L_814BBA18
/* 814BBA14 | 38 80 00 00 */	li r4, 0x0
.L_814BBA18:
/* 814BBA18 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814BBA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BBA20 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BBA24 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814BBA28 | 41 82 00 08 */	beq .L_814BBA30
/* 814BBA2C | 90 7E 00 0C */	stw r3, 0xc(r30)
.L_814BBA30:
/* 814BBA30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BBA34 | 41 82 02 14 */	beq .L_814BBC48
/* 814BBA38 | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 814BBA3C | 48 00 02 0C */	b .L_814BBC48
.L_814BBA40:
/* 814BBA40 | 7C 07 D0 40 */	cmplw r7, r26
/* 814BBA44 | 41 80 00 84 */	blt .L_814BBAC8
/* 814BBA48 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 814BBA4C | 7C 07 22 14 */	add r0, r7, r4
/* 814BBA50 | 7C 00 F8 40 */	cmplw r0, r31
/* 814BBA54 | 41 81 00 74 */	bgt .L_814BBAC8
/* 814BBA58 | 88 B7 00 20 */	lbz r5, 0x20(r23)
/* 814BBA5C | 7C 1A 38 50 */	subf r0, r26, r7
/* 814BBA60 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814BBA64 | 7C 00 28 30 */	slw r0, r0, r5
/* 814BBA68 | 7C 85 28 30 */	slw r5, r4, r5
/* 814BBA6C | 7C 99 02 14 */	add r4, r25, r0
/* 814BBA70 | 4B FF 9D 71 */	bl VFipf_memcpy
/* 814BBA74 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814BBA78 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814BBA7C | 7F A3 E8 50 */	subf r29, r3, r29
/* 814BBA80 | 7C 00 1A 14 */	add r0, r0, r3
/* 814BBA84 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814BBA88 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 814BBA8C | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 814BBA90 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814BBA94 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BBA98 | 88 77 00 20 */	lbz r3, 0x20(r23)
/* 814BBA9C | 38 84 FF FF */	subi r4, r4, 0x1
/* 814BBAA0 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BBAA4 | 7C 83 18 30 */	slw r3, r4, r3
/* 814BBAA8 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814BBAAC | 7C 05 1A 14 */	add r0, r5, r3
/* 814BBAB0 | 41 82 00 08 */	beq .L_814BBAB8
/* 814BBAB4 | 90 BE 00 0C */	stw r5, 0xc(r30)
.L_814BBAB8:
/* 814BBAB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BBABC | 41 82 01 8C */	beq .L_814BBC48
/* 814BBAC0 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 814BBAC4 | 48 00 01 84 */	b .L_814BBC48
.L_814BBAC8:
/* 814BBAC8 | 7C 07 D0 40 */	cmplw r7, r26
/* 814BBACC | 40 81 00 B4 */	ble .L_814BBB80
/* 814BBAD0 | 7C 07 F8 40 */	cmplw r7, r31
/* 814BBAD4 | 40 80 00 AC */	bge .L_814BBB80
/* 814BBAD8 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BBADC | 7C 07 02 14 */	add r0, r7, r0
/* 814BBAE0 | 7C 00 F8 40 */	cmplw r0, r31
/* 814BBAE4 | 41 80 00 9C */	blt .L_814BBB80
/* 814BBAE8 | 88 B7 00 20 */	lbz r5, 0x20(r23)
/* 814BBAEC | 7C 9A 38 50 */	subf r4, r26, r7
/* 814BBAF0 | 7C 07 F8 50 */	subf r0, r7, r31
/* 814BBAF4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814BBAF8 | 7C 84 28 30 */	slw r4, r4, r5
/* 814BBAFC | 7C 99 22 14 */	add r4, r25, r4
/* 814BBB00 | 7C 05 28 30 */	slw r5, r0, r5
/* 814BBB04 | 4B FF 9C DD */	bl VFipf_memcpy
/* 814BBB08 | 80 BE 00 18 */	lwz r5, 0x18(r30)
/* 814BBB0C | 7C 9B D2 14 */	add r4, r27, r26
/* 814BBB10 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814BBB14 | 38 64 FF FF */	subi r3, r4, 0x1
/* 814BBB18 | 7C 85 20 50 */	subf r4, r5, r4
/* 814BBB1C | 7C 00 22 14 */	add r0, r0, r4
/* 814BBB20 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814BBB24 | 7F A4 E8 50 */	subf r29, r4, r29
/* 814BBB28 | 80 9E 00 18 */	lwz r4, 0x18(r30)
/* 814BBB2C | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 814BBB30 | 7C 64 18 50 */	subf r3, r4, r3
/* 814BBB34 | 88 17 00 20 */	lbz r0, 0x20(r23)
/* 814BBB38 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BBB3C | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814BBB40 | 7C 60 00 30 */	slw r0, r3, r0
/* 814BBB44 | 7C 64 02 14 */	add r3, r4, r0
/* 814BBB48 | 41 82 00 10 */	beq .L_814BBB58
/* 814BBB4C | 7C 05 18 40 */	cmplw r5, r3
/* 814BBB50 | 41 80 00 08 */	blt .L_814BBB58
/* 814BBB54 | 38 60 00 00 */	li r3, 0x0
.L_814BBB58:
/* 814BBB58 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814BBB5C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BBB60 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BBB64 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814BBB68 | 41 82 00 08 */	beq .L_814BBB70
/* 814BBB6C | 90 9E 00 0C */	stw r4, 0xc(r30)
.L_814BBB70:
/* 814BBB70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BBB74 | 41 82 00 D4 */	beq .L_814BBC48
/* 814BBB78 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 814BBB7C | 48 00 00 CC */	b .L_814BBC48
.L_814BBB80:
/* 814BBB80 | 7C 07 D0 40 */	cmplw r7, r26
/* 814BBB84 | 40 80 00 C4 */	bge .L_814BBC48
/* 814BBB88 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BBB8C | 7C 67 02 14 */	add r3, r7, r0
/* 814BBB90 | 7C 03 D0 40 */	cmplw r3, r26
/* 814BBB94 | 40 81 00 B4 */	ble .L_814BBC48
/* 814BBB98 | 7C 03 F8 40 */	cmplw r3, r31
/* 814BBB9C | 41 81 00 AC */	bgt .L_814BBC48
/* 814BBBA0 | 88 D7 00 20 */	lbz r6, 0x20(r23)
/* 814BBBA4 | 7C 67 D0 50 */	subf r3, r7, r26
/* 814BBBA8 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 814BBBAC | 7C 03 00 50 */	subf r0, r3, r0
/* 814BBBB0 | 7C 63 30 30 */	slw r3, r3, r6
/* 814BBBB4 | 7F 24 CB 78 */	mr r4, r25
/* 814BBBB8 | 7C 65 1A 14 */	add r3, r5, r3
/* 814BBBBC | 7C 05 30 30 */	slw r5, r0, r6
/* 814BBBC0 | 4B FF 9C 21 */	bl VFipf_memcpy
/* 814BBBC4 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 814BBBC8 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814BBBCC | 7C 80 D0 50 */	subf r4, r0, r26
/* 814BBBD0 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814BBBD4 | 7C 64 18 50 */	subf r3, r4, r3
/* 814BBBD8 | 7C 00 1A 14 */	add r0, r0, r3
/* 814BBBDC | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814BBBE0 | 7F A3 E8 50 */	subf r29, r3, r29
/* 814BBBE4 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 814BBBE8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814BBBEC | 88 97 00 20 */	lbz r4, 0x20(r23)
/* 814BBBF0 | 7C 00 D0 50 */	subf r0, r0, r26
/* 814BBBF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BBBF8 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 814BBBFC | 7C 00 20 30 */	slw r0, r0, r4
/* 814BBC00 | 7C C5 02 14 */	add r6, r5, r0
/* 814BBC04 | 41 82 00 10 */	beq .L_814BBC14
/* 814BBC08 | 7C 06 18 40 */	cmplw r6, r3
/* 814BBC0C | 41 80 00 08 */	blt .L_814BBC14
/* 814BBC10 | 38 C0 00 00 */	li r6, 0x0
.L_814BBC14:
/* 814BBC14 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814BBC18 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BBC1C | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814BBC20 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814BBC24 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BBC28 | 7C 63 20 30 */	slw r3, r3, r4
/* 814BBC2C | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814BBC30 | 7C 05 1A 14 */	add r0, r5, r3
/* 814BBC34 | 41 82 00 08 */	beq .L_814BBC3C
/* 814BBC38 | 90 DE 00 0C */	stw r6, 0xc(r30)
.L_814BBC3C:
/* 814BBC3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BBC40 | 41 82 00 08 */	beq .L_814BBC48
/* 814BBC44 | 90 1E 00 10 */	stw r0, 0x10(r30)
.L_814BBC48:
/* 814BBC48 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BBC4C | 41 82 00 0C */	beq .L_814BBC58
/* 814BBC50 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BBC54 | 40 82 FC BC */	bne .L_814BB910
.L_814BBC58:
/* 814BBC58 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BBC5C | 40 82 00 10 */	bne .L_814BBC6C
/* 814BBC60 | 80 17 15 D0 */	lwz r0, 0x15d0(r23)
/* 814BBC64 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BBC68 | 41 82 00 28 */	beq .L_814BBC90
.L_814BBC6C:
/* 814BBC6C | 7E E3 BB 78 */	mr r3, r23
/* 814BBC70 | 7F 24 CB 78 */	mr r4, r25
/* 814BBC74 | 7F 45 D3 78 */	mr r5, r26
/* 814BBC78 | 7F 66 DB 78 */	mr r6, r27
/* 814BBC7C | 7F 87 E3 78 */	mr r7, r28
/* 814BBC80 | 4B FF AF 29 */	bl VFiPFDRV_lwrite
/* 814BBC84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BBC88 | 41 82 00 08 */	beq .L_814BBC90
/* 814BBC8C | 48 00 00 50 */	b .L_814BBCDC
.L_814BBC90:
/* 814BBC90 | 80 17 15 D0 */	lwz r0, 0x15d0(r23)
/* 814BBC94 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BBC98 | 41 82 00 40 */	beq .L_814BBCD8
/* 814BBC9C | 7C 1B E8 40 */	cmplw r27, r29
/* 814BBCA0 | 41 82 00 38 */	beq .L_814BBCD8
/* 814BBCA4 | 80 B7 15 E0 */	lwz r5, 0x15e0(r23)
/* 814BBCA8 | 38 00 00 00 */	li r0, 0x0
/* 814BBCAC | 7C A6 2B 78 */	mr r6, r5
.L_814BBCB0:
/* 814BBCB0 | A0 86 00 00 */	lhz r4, 0x0(r6)
/* 814BBCB4 | 54 83 07 FF */	clrlwi. r3, r4, 31
/* 814BBCB8 | 41 82 00 20 */	beq .L_814BBCD8
/* 814BBCBC | 54 83 07 FA */	rlwinm r3, r4, 0, 31, 29
/* 814BBCC0 | B0 66 00 00 */	sth r3, 0x0(r6)
/* 814BBCC4 | 90 06 00 0C */	stw r0, 0xc(r6)
/* 814BBCC8 | 90 06 00 10 */	stw r0, 0x10(r6)
/* 814BBCCC | 80 C6 00 20 */	lwz r6, 0x20(r6)
/* 814BBCD0 | 7C 06 28 40 */	cmplw r6, r5
/* 814BBCD4 | 40 82 FF DC */	bne .L_814BBCB0
.L_814BBCD8:
/* 814BBCD8 | 38 60 00 00 */	li r3, 0x0
.L_814BBCDC:
/* 814BBCDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814BBCE0 | 48 13 D8 1D */	bl _restgpr_23
/* 814BBCE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814BBCE8 | 7C 08 03 A6 */	mtlr r0
/* 814BBCEC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814BBCF0 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_DoWriteNumSectorAndFreeIfNeeded

# .text:0x115C | 0x814BBCF4 | size: 0x14
.fn VFiPFCACHE_SetCache, global
/* 814BBCF4 | 90 83 15 D8 */	stw r4, 0x15d8(r3)
/* 814BBCF8 | 90 A3 15 E4 */	stw r5, 0x15e4(r3)
/* 814BBCFC | B0 C3 15 D4 */	sth r6, 0x15d4(r3)
/* 814BBD00 | B0 E3 15 D6 */	sth r7, 0x15d6(r3)
/* 814BBD04 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_SetCache

# .text:0x1170 | 0x814BBD08 | size: 0x10
.fn VFiPFCACHE_SetFATBufferSize, global
/* 814BBD08 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BBD0C | 4D 82 00 20 */	beqlr
/* 814BBD10 | 90 83 15 E8 */	stw r4, 0x15e8(r3)
/* 814BBD14 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_SetFATBufferSize

# .text:0x1180 | 0x814BBD18 | size: 0x10
.fn VFiPFCACHE_SetDataBufferSize, global
/* 814BBD18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BBD1C | 4D 82 00 20 */	beqlr
/* 814BBD20 | 90 83 15 EC */	stw r4, 0x15ec(r3)
/* 814BBD24 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_SetDataBufferSize

# .text:0x1190 | 0x814BBD28 | size: 0xC8
.fn VFiPFCACHE_InitCaches, global
/* 814BBD28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BBD2C | 7C 08 02 A6 */	mflr r0
/* 814BBD30 | 38 80 00 00 */	li r4, 0x0
/* 814BBD34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BBD38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BBD3C | 7C 7F 1B 78 */	mr r31, r3
/* 814BBD40 | 80 03 15 D0 */	lwz r0, 0x15d0(r3)
/* 814BBD44 | A0 A3 15 D4 */	lhz r5, 0x15d4(r3)
/* 814BBD48 | 54 06 00 3C */	clrrwi r6, r0, 1
/* 814BBD4C | A0 03 15 D6 */	lhz r0, 0x15d6(r3)
/* 814BBD50 | 60 C6 00 02 */	ori r6, r6, 0x2
/* 814BBD54 | 54 C6 07 B8 */	rlwinm r6, r6, 0, 30, 28
/* 814BBD58 | 7C 05 02 14 */	add r0, r5, r0
/* 814BBD5C | 90 C3 15 D0 */	stw r6, 0x15d0(r3)
/* 814BBD60 | 54 05 48 2C */	slwi r5, r0, 9
/* 814BBD64 | 80 63 15 E4 */	lwz r3, 0x15e4(r3)
/* 814BBD68 | 4B FF 9B A1 */	bl VFipf_memset
/* 814BBD6C | 80 BF 15 D8 */	lwz r5, 0x15d8(r31)
/* 814BBD70 | 7F E3 FB 78 */	mr r3, r31
/* 814BBD74 | 80 DF 15 E4 */	lwz r6, 0x15e4(r31)
/* 814BBD78 | 38 9F 15 DC */	addi r4, r31, 0x15dc
/* 814BBD7C | A0 FF 15 D4 */	lhz r7, 0x15d4(r31)
/* 814BBD80 | 39 20 00 01 */	li r9, 0x1
/* 814BBD84 | 81 1F 15 E8 */	lwz r8, 0x15e8(r31)
/* 814BBD88 | 4B FF EE 11 */	bl VFiPFCACHE_InitPageList
/* 814BBD8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BBD90 | 41 82 00 08 */	beq .L_814BBD98
/* 814BBD94 | 48 00 00 48 */	b .L_814BBDDC
.L_814BBD98:
/* 814BBD98 | A0 1F 15 D4 */	lhz r0, 0x15d4(r31)
/* 814BBD9C | 7F E3 FB 78 */	mr r3, r31
/* 814BBDA0 | 81 5F 15 D8 */	lwz r10, 0x15d8(r31)
/* 814BBDA4 | 38 9F 15 E0 */	addi r4, r31, 0x15e0
/* 814BBDA8 | 1C A0 00 28 */	mulli r5, r0, 0x28
/* 814BBDAC | 80 DF 15 E4 */	lwz r6, 0x15e4(r31)
/* 814BBDB0 | 54 00 48 2C */	slwi r0, r0, 9
/* 814BBDB4 | A0 FF 15 D6 */	lhz r7, 0x15d6(r31)
/* 814BBDB8 | 81 1F 15 EC */	lwz r8, 0x15ec(r31)
/* 814BBDBC | 39 20 00 00 */	li r9, 0x0
/* 814BBDC0 | 7C AA 2A 14 */	add r5, r10, r5
/* 814BBDC4 | 7C C6 02 14 */	add r6, r6, r0
/* 814BBDC8 | 4B FF ED D1 */	bl VFiPFCACHE_InitPageList
/* 814BBDCC | 7C 03 00 D0 */	neg r0, r3
/* 814BBDD0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BBDD4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BBDD8 | 7C 63 00 38 */	and r3, r3, r0
.L_814BBDDC:
/* 814BBDDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BBDE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BBDE4 | 7C 08 03 A6 */	mtlr r0
/* 814BBDE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BBDEC | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_InitCaches

# .text:0x1258 | 0x814BBDF0 | size: 0x68
.fn VFiPFCACHE_UpdateModifiedSector, global
/* 814BBDF0 | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 814BBDF4 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814BBDF8 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814BBDFC | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814BBE00 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BBE04 | 7C A0 00 30 */	slw r0, r5, r0
/* 814BBE08 | 7C A3 02 14 */	add r5, r3, r0
/* 814BBE0C | 41 82 00 20 */	beq .L_814BBE2C
/* 814BBE10 | 7C 03 30 40 */	cmplw r3, r6
/* 814BBE14 | 41 80 00 08 */	blt .L_814BBE1C
/* 814BBE18 | 38 60 00 00 */	li r3, 0x0
.L_814BBE1C:
/* 814BBE1C | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814BBE20 | 7C 05 00 40 */	cmplw r5, r0
/* 814BBE24 | 41 81 00 08 */	bgt .L_814BBE2C
/* 814BBE28 | 38 A0 00 00 */	li r5, 0x0
.L_814BBE2C:
/* 814BBE2C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BBE30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BBE34 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BBE38 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814BBE3C | 41 82 00 08 */	beq .L_814BBE44
/* 814BBE40 | 90 64 00 0C */	stw r3, 0xc(r4)
.L_814BBE44:
/* 814BBE44 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BBE48 | 41 82 00 08 */	beq .L_814BBE50
/* 814BBE4C | 90 A4 00 10 */	stw r5, 0x10(r4)
.L_814BBE50:
/* 814BBE50 | 38 60 00 00 */	li r3, 0x0
/* 814BBE54 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_UpdateModifiedSector

# .text:0x12C0 | 0x814BBE58 | size: 0x74
.fn VFiPFCACHE_AllocateDataPage, global
/* 814BBE58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BBE5C | 7C 08 02 A6 */	mflr r0
/* 814BBE60 | 7C A6 2B 78 */	mr r6, r5
/* 814BBE64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BBE68 | 80 03 15 E0 */	lwz r0, 0x15e0(r3)
/* 814BBE6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BBE70 | 40 82 00 2C */	bne .L_814BBE9C
/* 814BBE74 | 80 03 15 E4 */	lwz r0, 0x15e4(r3)
/* 814BBE78 | 80 83 15 D8 */	lwz r4, 0x15d8(r3)
/* 814BBE7C | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814BBE80 | 80 03 15 E4 */	lwz r0, 0x15e4(r3)
/* 814BBE84 | 80 83 15 D8 */	lwz r4, 0x15d8(r3)
/* 814BBE88 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814BBE8C | 80 03 15 D8 */	lwz r0, 0x15d8(r3)
/* 814BBE90 | 38 60 00 00 */	li r3, 0x0
/* 814BBE94 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814BBE98 | 48 00 00 24 */	b .L_814BBEBC
.L_814BBE9C:
/* 814BBE9C | 7C 85 23 78 */	mr r5, r4
/* 814BBEA0 | 38 83 15 E0 */	addi r4, r3, 0x15e0
/* 814BBEA4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BBEA8 | 4B FF F0 71 */	bl VFiPFCACHE_DoAllocatePage
/* 814BBEAC | 7C 03 00 D0 */	neg r0, r3
/* 814BBEB0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BBEB4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BBEB8 | 7C 63 00 38 */	and r3, r3, r0
.L_814BBEBC:
/* 814BBEBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BBEC0 | 7C 08 03 A6 */	mtlr r0
/* 814BBEC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BBEC8 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_AllocateDataPage

# .text:0x1334 | 0x814BBECC | size: 0x90
.fn VFiPFCACHE_FreeDataPage, global
/* 814BBECC | 80 03 15 E0 */	lwz r0, 0x15e0(r3)
/* 814BBED0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BBED4 | 4D 82 00 20 */	beqlr
/* 814BBED8 | A0 A4 00 00 */	lhz r5, 0x0(r4)
/* 814BBEDC | 38 C0 00 00 */	li r6, 0x0
/* 814BBEE0 | 38 00 FF FF */	li r0, -0x1
/* 814BBEE4 | 90 C4 00 0C */	stw r6, 0xc(r4)
/* 814BBEE8 | 54 A5 04 3A */	rlwinm r5, r5, 0, 16, 29
/* 814BBEEC | 90 C4 00 10 */	stw r6, 0x10(r4)
/* 814BBEF0 | B0 A4 00 00 */	sth r5, 0x0(r4)
/* 814BBEF4 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814BBEF8 | 90 C4 00 1C */	stw r6, 0x1c(r4)
/* 814BBEFC | 80 A3 15 E0 */	lwz r5, 0x15e0(r3)
/* 814BBF00 | 7C 04 28 40 */	cmplw r4, r5
/* 814BBF04 | 40 82 00 10 */	bne .L_814BBF14
/* 814BBF08 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814BBF0C | 90 03 15 E0 */	stw r0, 0x15e0(r3)
/* 814BBF10 | 4E 80 00 20 */	blr
.L_814BBF14:
/* 814BBF14 | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 814BBF18 | 7C 04 00 40 */	cmplw r4, r0
/* 814BBF1C | 4D 82 00 20 */	beqlr
/* 814BBF20 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814BBF24 | 80 A4 00 24 */	lwz r5, 0x24(r4)
/* 814BBF28 | 90 05 00 20 */	stw r0, 0x20(r5)
/* 814BBF2C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BBF30 | 80 A4 00 20 */	lwz r5, 0x20(r4)
/* 814BBF34 | 90 05 00 24 */	stw r0, 0x24(r5)
/* 814BBF38 | 80 A3 15 E0 */	lwz r5, 0x15e0(r3)
/* 814BBF3C | 90 A4 00 20 */	stw r5, 0x20(r4)
/* 814BBF40 | 80 63 15 E0 */	lwz r3, 0x15e0(r3)
/* 814BBF44 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814BBF48 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BBF4C | 90 85 00 24 */	stw r4, 0x24(r5)
/* 814BBF50 | 80 64 00 24 */	lwz r3, 0x24(r4)
/* 814BBF54 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 814BBF58 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FreeDataPage

# .text:0x13C4 | 0x814BBF5C | size: 0x40
.fn VFiPFCACHE_ReadFATPage, global
/* 814BBF5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BBF60 | 7C 08 02 A6 */	mflr r0
/* 814BBF64 | 7C A6 2B 78 */	mr r6, r5
/* 814BBF68 | 7C 85 23 78 */	mr r5, r4
/* 814BBF6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BBF70 | 38 83 15 DC */	addi r4, r3, 0x15dc
/* 814BBF74 | 38 E0 00 00 */	li r7, 0x0
/* 814BBF78 | 4B FF F2 AD */	bl VFiPFCACHE_DoReadPage
/* 814BBF7C | 7C 03 00 D0 */	neg r0, r3
/* 814BBF80 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BBF84 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BBF88 | 7C 63 00 38 */	and r3, r3, r0
/* 814BBF8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BBF90 | 7C 08 03 A6 */	mtlr r0
/* 814BBF94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BBF98 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_ReadFATPage

# .text:0x1404 | 0x814BBF9C | size: 0x48
.fn VFiPFCACHE_ReadDataPage, global
/* 814BBF9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BBFA0 | 7C 08 02 A6 */	mflr r0
/* 814BBFA4 | 7C 88 23 78 */	mr r8, r4
/* 814BBFA8 | 7C C7 33 78 */	mr r7, r6
/* 814BBFAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BBFB0 | 7C A0 2B 78 */	mr r0, r5
/* 814BBFB4 | 38 83 15 E0 */	addi r4, r3, 0x15e0
/* 814BBFB8 | 7D 05 43 78 */	mr r5, r8
/* 814BBFBC | 7C 06 03 78 */	mr r6, r0
/* 814BBFC0 | 4B FF F2 65 */	bl VFiPFCACHE_DoReadPage
/* 814BBFC4 | 7C 03 00 D0 */	neg r0, r3
/* 814BBFC8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BBFCC | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BBFD0 | 7C 63 00 38 */	and r3, r3, r0
/* 814BBFD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BBFD8 | 7C 08 03 A6 */	mtlr r0
/* 814BBFDC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BBFE0 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_ReadDataPage

# .text:0x144C | 0x814BBFE4 | size: 0x48
.fn VFiPFCACHE_ReadDataPageAndFlushIfNeeded, global
/* 814BBFE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BBFE8 | 7C 08 02 A6 */	mflr r0
/* 814BBFEC | 7C 88 23 78 */	mr r8, r4
/* 814BBFF0 | 7C C7 33 78 */	mr r7, r6
/* 814BBFF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BBFF8 | 7C A0 2B 78 */	mr r0, r5
/* 814BBFFC | 38 83 15 E0 */	addi r4, r3, 0x15e0
/* 814BC000 | 7D 05 43 78 */	mr r5, r8
/* 814BC004 | 7C 06 03 78 */	mr r6, r0
/* 814BC008 | 4B FF F4 21 */	bl VFiPFCACHE_DoReadPageAndFlushIfNeeded
/* 814BC00C | 7C 03 00 D0 */	neg r0, r3
/* 814BC010 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BC014 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BC018 | 7C 63 00 38 */	and r3, r3, r0
/* 814BC01C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BC020 | 7C 08 03 A6 */	mtlr r0
/* 814BC024 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BC028 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_ReadDataPageAndFlushIfNeeded

# .text:0x1494 | 0x814BC02C | size: 0x60
.fn VFiPFCACHE_ReadDataNumSector, global
/* 814BC02C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BC030 | 7C 08 02 A6 */	mflr r0
/* 814BC034 | 7C AA 2B 78 */	mr r10, r5
/* 814BC038 | 7C C9 33 78 */	mr r9, r6
/* 814BC03C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BC040 | 7C E8 3B 78 */	mr r8, r7
/* 814BC044 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814BC048 | 7C 05 00 40 */	cmplw r5, r0
/* 814BC04C | 41 80 00 0C */	blt .L_814BC058
/* 814BC050 | 38 60 00 10 */	li r3, 0x10
/* 814BC054 | 48 00 00 28 */	b .L_814BC07C
.L_814BC058:
/* 814BC058 | 7C 85 23 78 */	mr r5, r4
/* 814BC05C | 7D 46 53 78 */	mr r6, r10
/* 814BC060 | 7D 27 4B 78 */	mr r7, r9
/* 814BC064 | 38 83 15 E0 */	addi r4, r3, 0x15e0
/* 814BC068 | 4B FF F6 19 */	bl VFiPFCACHE_DoReadNumSector
/* 814BC06C | 7C 03 00 D0 */	neg r0, r3
/* 814BC070 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BC074 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BC078 | 7C 63 00 38 */	and r3, r3, r0
.L_814BC07C:
/* 814BC07C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BC080 | 7C 08 03 A6 */	mtlr r0
/* 814BC084 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BC088 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_ReadDataNumSector

# .text:0x14F4 | 0x814BC08C | size: 0xC4
.fn VFiPFCACHE_WriteFATPage, global
/* 814BC08C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BC090 | 7C 08 02 A6 */	mflr r0
/* 814BC094 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BC098 | 80 A3 15 DC */	lwz r5, 0x15dc(r3)
/* 814BC09C | 7C 04 28 40 */	cmplw r4, r5
/* 814BC0A0 | 41 82 00 54 */	beq .L_814BC0F4
/* 814BC0A4 | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 814BC0A8 | 7C 04 00 40 */	cmplw r4, r0
/* 814BC0AC | 40 82 00 0C */	bne .L_814BC0B8
/* 814BC0B0 | 90 83 15 DC */	stw r4, 0x15dc(r3)
/* 814BC0B4 | 48 00 00 40 */	b .L_814BC0F4
.L_814BC0B8:
/* 814BC0B8 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814BC0BC | 80 A4 00 24 */	lwz r5, 0x24(r4)
/* 814BC0C0 | 90 05 00 20 */	stw r0, 0x20(r5)
/* 814BC0C4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BC0C8 | 80 A4 00 20 */	lwz r5, 0x20(r4)
/* 814BC0CC | 90 05 00 24 */	stw r0, 0x24(r5)
/* 814BC0D0 | 80 C3 15 DC */	lwz r6, 0x15dc(r3)
/* 814BC0D4 | 90 C4 00 20 */	stw r6, 0x20(r4)
/* 814BC0D8 | 80 A3 15 DC */	lwz r5, 0x15dc(r3)
/* 814BC0DC | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 814BC0E0 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BC0E4 | 90 86 00 24 */	stw r4, 0x24(r6)
/* 814BC0E8 | 80 A4 00 24 */	lwz r5, 0x24(r4)
/* 814BC0EC | 90 85 00 20 */	stw r4, 0x20(r5)
/* 814BC0F0 | 90 83 15 DC */	stw r4, 0x15dc(r3)
.L_814BC0F4:
/* 814BC0F4 | 38 00 00 00 */	li r0, 0x0
/* 814BC0F8 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BC0FC | 80 A3 15 D0 */	lwz r5, 0x15d0(r3)
/* 814BC100 | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814BC104 | 40 82 00 18 */	bne .L_814BC11C
/* 814BC108 | 54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 814BC10C | 41 82 00 20 */	beq .L_814BC12C
/* 814BC110 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BC114 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BC118 | 41 82 00 14 */	beq .L_814BC12C
.L_814BC11C:
/* 814BC11C | 4B FF EC FD */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC124 | 41 82 00 08 */	beq .L_814BC12C
/* 814BC128 | 48 00 00 08 */	b .L_814BC130
.L_814BC12C:
/* 814BC12C | 38 60 00 00 */	li r3, 0x0
.L_814BC130:
/* 814BC130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC134 | 41 82 00 08 */	beq .L_814BC13C
/* 814BC138 | 48 00 00 08 */	b .L_814BC140
.L_814BC13C:
/* 814BC13C | 38 60 00 00 */	li r3, 0x0
.L_814BC140:
/* 814BC140 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BC144 | 7C 08 03 A6 */	mtlr r0
/* 814BC148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BC14C | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_WriteFATPage

# .text:0x15B8 | 0x814BC150 | size: 0xD8
.fn VFiPFCACHE_WriteDataPage, global
/* 814BC150 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BC154 | 7C 08 02 A6 */	mflr r0
/* 814BC158 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BC15C | 80 C3 15 E0 */	lwz r6, 0x15e0(r3)
/* 814BC160 | 7C 04 30 40 */	cmplw r4, r6
/* 814BC164 | 41 82 00 54 */	beq .L_814BC1B8
/* 814BC168 | 80 06 00 24 */	lwz r0, 0x24(r6)
/* 814BC16C | 7C 04 00 40 */	cmplw r4, r0
/* 814BC170 | 40 82 00 0C */	bne .L_814BC17C
/* 814BC174 | 90 83 15 E0 */	stw r4, 0x15e0(r3)
/* 814BC178 | 48 00 00 40 */	b .L_814BC1B8
.L_814BC17C:
/* 814BC17C | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814BC180 | 80 C4 00 24 */	lwz r6, 0x24(r4)
/* 814BC184 | 90 06 00 20 */	stw r0, 0x20(r6)
/* 814BC188 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BC18C | 80 C4 00 20 */	lwz r6, 0x20(r4)
/* 814BC190 | 90 06 00 24 */	stw r0, 0x24(r6)
/* 814BC194 | 80 E3 15 E0 */	lwz r7, 0x15e0(r3)
/* 814BC198 | 90 E4 00 20 */	stw r7, 0x20(r4)
/* 814BC19C | 80 C3 15 E0 */	lwz r6, 0x15e0(r3)
/* 814BC1A0 | 80 06 00 24 */	lwz r0, 0x24(r6)
/* 814BC1A4 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BC1A8 | 90 87 00 24 */	stw r4, 0x24(r7)
/* 814BC1AC | 80 C4 00 24 */	lwz r6, 0x24(r4)
/* 814BC1B0 | 90 86 00 20 */	stw r4, 0x20(r6)
/* 814BC1B4 | 90 83 15 E0 */	stw r4, 0x15e0(r3)
.L_814BC1B8:
/* 814BC1B8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BC1BC | 41 82 00 10 */	beq .L_814BC1CC
/* 814BC1C0 | 80 03 15 F0 */	lwz r0, 0x15f0(r3)
/* 814BC1C4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BC1C8 | 48 00 00 0C */	b .L_814BC1D4
.L_814BC1CC:
/* 814BC1CC | 38 00 00 00 */	li r0, 0x0
/* 814BC1D0 | 90 04 00 1C */	stw r0, 0x1c(r4)
.L_814BC1D4:
/* 814BC1D4 | 80 A3 15 D0 */	lwz r5, 0x15d0(r3)
/* 814BC1D8 | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814BC1DC | 40 82 00 18 */	bne .L_814BC1F4
/* 814BC1E0 | 54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 814BC1E4 | 41 82 00 20 */	beq .L_814BC204
/* 814BC1E8 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814BC1EC | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BC1F0 | 41 82 00 14 */	beq .L_814BC204
.L_814BC1F4:
/* 814BC1F4 | 4B FF EC 25 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC1F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC1FC | 41 82 00 08 */	beq .L_814BC204
/* 814BC200 | 48 00 00 08 */	b .L_814BC208
.L_814BC204:
/* 814BC204 | 38 60 00 00 */	li r3, 0x0
.L_814BC208:
/* 814BC208 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC20C | 41 82 00 08 */	beq .L_814BC214
/* 814BC210 | 48 00 00 08 */	b .L_814BC218
.L_814BC214:
/* 814BC214 | 38 60 00 00 */	li r3, 0x0
.L_814BC218:
/* 814BC218 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BC21C | 7C 08 03 A6 */	mtlr r0
/* 814BC220 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BC224 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_WriteDataPage

# .text:0x1690 | 0x814BC228 | size: 0x60
.fn VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded, global
/* 814BC228 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BC22C | 7C 08 02 A6 */	mflr r0
/* 814BC230 | 7C AA 2B 78 */	mr r10, r5
/* 814BC234 | 7C C9 33 78 */	mr r9, r6
/* 814BC238 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BC23C | 7C E8 3B 78 */	mr r8, r7
/* 814BC240 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814BC244 | 7C 05 00 40 */	cmplw r5, r0
/* 814BC248 | 41 80 00 0C */	blt .L_814BC254
/* 814BC24C | 38 60 00 10 */	li r3, 0x10
/* 814BC250 | 48 00 00 28 */	b .L_814BC278
.L_814BC254:
/* 814BC254 | 7C 85 23 78 */	mr r5, r4
/* 814BC258 | 7D 46 53 78 */	mr r6, r10
/* 814BC25C | 7D 27 4B 78 */	mr r7, r9
/* 814BC260 | 38 83 15 E0 */	addi r4, r3, 0x15e0
/* 814BC264 | 4B FF F6 71 */	bl VFiPFCACHE_DoWriteNumSectorAndFreeIfNeeded
/* 814BC268 | 7C 03 00 D0 */	neg r0, r3
/* 814BC26C | 7C 00 1B 78 */	or r0, r0, r3
/* 814BC270 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BC274 | 7C 63 00 38 */	and r3, r3, r0
.L_814BC278:
/* 814BC278 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BC27C | 7C 08 03 A6 */	mtlr r0
/* 814BC280 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BC284 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded

# .text:0x16F0 | 0x814BC288 | size: 0x84
.fn VFiPFCACHE_SearchDataCache, global
/* 814BC288 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814BC28C | 80 C3 15 E0 */	lwz r6, 0x15e0(r3)
/* 814BC290 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BC294 | 40 82 00 0C */	bne .L_814BC2A0
/* 814BC298 | 38 E0 00 00 */	li r7, 0x0
/* 814BC29C | 48 00 00 68 */	b .L_814BC304
.L_814BC2A0:
/* 814BC2A0 | 7C C7 33 78 */	mr r7, r6
.L_814BC2A4:
/* 814BC2A4 | A0 07 00 00 */	lhz r0, 0x0(r7)
/* 814BC2A8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC2AC | 40 82 00 0C */	bne .L_814BC2B8
/* 814BC2B0 | 38 E0 00 00 */	li r7, 0x0
/* 814BC2B4 | 48 00 00 50 */	b .L_814BC304
.L_814BC2B8:
/* 814BC2B8 | 81 07 00 18 */	lwz r8, 0x18(r7)
/* 814BC2BC | 7C 08 20 40 */	cmplw r8, r4
/* 814BC2C0 | 41 81 00 34 */	bgt .L_814BC2F4
/* 814BC2C4 | 80 07 00 14 */	lwz r0, 0x14(r7)
/* 814BC2C8 | 7C A8 02 14 */	add r5, r8, r0
/* 814BC2CC | 38 05 FF FF */	subi r0, r5, 0x1
/* 814BC2D0 | 7C 00 20 40 */	cmplw r0, r4
/* 814BC2D4 | 41 80 00 20 */	blt .L_814BC2F4
/* 814BC2D8 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814BC2DC | 7C 68 20 50 */	subf r3, r8, r4
/* 814BC2E0 | 80 87 00 04 */	lwz r4, 0x4(r7)
/* 814BC2E4 | 7C 60 00 30 */	slw r0, r3, r0
/* 814BC2E8 | 7C 04 02 14 */	add r0, r4, r0
/* 814BC2EC | 90 07 00 08 */	stw r0, 0x8(r7)
/* 814BC2F0 | 48 00 00 14 */	b .L_814BC304
.L_814BC2F4:
/* 814BC2F4 | 80 E7 00 20 */	lwz r7, 0x20(r7)
/* 814BC2F8 | 7C 07 30 40 */	cmplw r7, r6
/* 814BC2FC | 40 82 FF A8 */	bne .L_814BC2A4
/* 814BC300 | 38 E0 00 00 */	li r7, 0x0
.L_814BC304:
/* 814BC304 | 7C E3 3B 78 */	mr r3, r7
/* 814BC308 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_SearchDataCache

# .text:0x1774 | 0x814BC30C | size: 0xAC
.fn VFiPFCACHE_FlushFATCache, global
/* 814BC30C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BC310 | 7C 08 02 A6 */	mflr r0
/* 814BC314 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BC318 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BC31C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BC320 | 3B C0 00 00 */	li r30, 0x0
/* 814BC324 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BC328 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BC32C | 7C 7C 1B 78 */	mr r28, r3
/* 814BC330 | 83 E3 15 DC */	lwz r31, 0x15dc(r3)
/* 814BC334 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BC338 | 7F FD FB 78 */	mr r29, r31
/* 814BC33C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC340 | 40 82 00 0C */	bne .L_814BC34C
/* 814BC344 | 3B C0 00 00 */	li r30, 0x0
/* 814BC348 | 48 00 00 3C */	b .L_814BC384
.L_814BC34C:
/* 814BC34C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814BC350 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC354 | 41 82 00 30 */	beq .L_814BC384
/* 814BC358 | 7F 83 E3 78 */	mr r3, r28
/* 814BC35C | 7F A4 EB 78 */	mr r4, r29
/* 814BC360 | 4B FF EA B9 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC368 | 41 82 00 10 */	beq .L_814BC378
/* 814BC36C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC370 | 40 82 00 08 */	bne .L_814BC378
/* 814BC374 | 7C 7E 1B 78 */	mr r30, r3
.L_814BC378:
/* 814BC378 | 83 BD 00 20 */	lwz r29, 0x20(r29)
/* 814BC37C | 7C 1D F8 40 */	cmplw r29, r31
/* 814BC380 | 40 82 FF CC */	bne .L_814BC34C
.L_814BC384:
/* 814BC384 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC388 | 41 82 00 0C */	beq .L_814BC394
/* 814BC38C | 7F C3 F3 78 */	mr r3, r30
/* 814BC390 | 48 00 00 08 */	b .L_814BC398
.L_814BC394:
/* 814BC394 | 38 60 00 00 */	li r3, 0x0
.L_814BC398:
/* 814BC398 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BC39C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BC3A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BC3A4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BC3A8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BC3AC | 7C 08 03 A6 */	mtlr r0
/* 814BC3B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BC3B4 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FlushFATCache

# .text:0x1820 | 0x814BC3B8 | size: 0xAC
.fn VFiPFCACHE_FlushDataCache, global
/* 814BC3B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BC3BC | 7C 08 02 A6 */	mflr r0
/* 814BC3C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BC3C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BC3C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BC3CC | 3B C0 00 00 */	li r30, 0x0
/* 814BC3D0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BC3D4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BC3D8 | 7C 7C 1B 78 */	mr r28, r3
/* 814BC3DC | 83 E3 15 E0 */	lwz r31, 0x15e0(r3)
/* 814BC3E0 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BC3E4 | 7F FD FB 78 */	mr r29, r31
/* 814BC3E8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC3EC | 40 82 00 0C */	bne .L_814BC3F8
/* 814BC3F0 | 3B C0 00 00 */	li r30, 0x0
/* 814BC3F4 | 48 00 00 3C */	b .L_814BC430
.L_814BC3F8:
/* 814BC3F8 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814BC3FC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC400 | 41 82 00 30 */	beq .L_814BC430
/* 814BC404 | 7F 83 E3 78 */	mr r3, r28
/* 814BC408 | 7F A4 EB 78 */	mr r4, r29
/* 814BC40C | 4B FF EA 0D */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC414 | 41 82 00 10 */	beq .L_814BC424
/* 814BC418 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC41C | 40 82 00 08 */	bne .L_814BC424
/* 814BC420 | 7C 7E 1B 78 */	mr r30, r3
.L_814BC424:
/* 814BC424 | 83 BD 00 20 */	lwz r29, 0x20(r29)
/* 814BC428 | 7C 1D F8 40 */	cmplw r29, r31
/* 814BC42C | 40 82 FF CC */	bne .L_814BC3F8
.L_814BC430:
/* 814BC430 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC434 | 41 82 00 0C */	beq .L_814BC440
/* 814BC438 | 7F C3 F3 78 */	mr r3, r30
/* 814BC43C | 48 00 00 08 */	b .L_814BC444
.L_814BC440:
/* 814BC440 | 38 60 00 00 */	li r3, 0x0
.L_814BC444:
/* 814BC444 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BC448 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BC44C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BC450 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BC454 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BC458 | 7C 08 03 A6 */	mtlr r0
/* 814BC45C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BC460 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FlushDataCache

# .text:0x18CC | 0x814BC464 | size: 0xD0
.fn VFiPFCACHE_FlushDataCacheSpecific, global
/* 814BC464 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BC468 | 7C 08 02 A6 */	mflr r0
/* 814BC46C | 38 A0 00 00 */	li r5, 0x0
/* 814BC470 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BC474 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BC478 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BC47C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BC480 | 7C 9D 23 78 */	mr r29, r4
/* 814BC484 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BC488 | 7C 7C 1B 78 */	mr r28, r3
/* 814BC48C | 80 03 15 D0 */	lwz r0, 0x15d0(r3)
/* 814BC490 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC494 | 40 82 00 7C */	bne .L_814BC510
/* 814BC498 | 83 E3 15 E0 */	lwz r31, 0x15e0(r3)
/* 814BC49C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814BC4A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BC4A4 | 41 82 00 0C */	beq .L_814BC4B0
/* 814BC4A8 | 7C 00 20 40 */	cmplw r0, r4
/* 814BC4AC | 40 82 00 20 */	bne .L_814BC4CC
.L_814BC4B0:
/* 814BC4B0 | 7F 83 E3 78 */	mr r3, r28
/* 814BC4B4 | 7F E4 FB 78 */	mr r4, r31
/* 814BC4B8 | 4B FF E9 61 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC4BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC4C0 | 7C 65 1B 78 */	mr r5, r3
/* 814BC4C4 | 41 82 00 08 */	beq .L_814BC4CC
/* 814BC4C8 | 48 00 00 4C */	b .L_814BC514
.L_814BC4CC:
/* 814BC4CC | 83 DF 00 20 */	lwz r30, 0x20(r31)
/* 814BC4D0 | 48 00 00 38 */	b .L_814BC508
.L_814BC4D4:
/* 814BC4D4 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 814BC4D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BC4DC | 41 82 00 0C */	beq .L_814BC4E8
/* 814BC4E0 | 7C 00 E8 40 */	cmplw r0, r29
/* 814BC4E4 | 40 82 00 20 */	bne .L_814BC504
.L_814BC4E8:
/* 814BC4E8 | 7F 83 E3 78 */	mr r3, r28
/* 814BC4EC | 7F C4 F3 78 */	mr r4, r30
/* 814BC4F0 | 4B FF E9 29 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC4F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC4F8 | 7C 65 1B 78 */	mr r5, r3
/* 814BC4FC | 41 82 00 08 */	beq .L_814BC504
/* 814BC500 | 48 00 00 14 */	b .L_814BC514
.L_814BC504:
/* 814BC504 | 83 DE 00 20 */	lwz r30, 0x20(r30)
.L_814BC508:
/* 814BC508 | 7C 1E F8 40 */	cmplw r30, r31
/* 814BC50C | 40 82 FF C8 */	bne .L_814BC4D4
.L_814BC510:
/* 814BC510 | 7C A3 2B 78 */	mr r3, r5
.L_814BC514:
/* 814BC514 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BC518 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BC51C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BC520 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BC524 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BC528 | 7C 08 03 A6 */	mtlr r0
/* 814BC52C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BC530 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FlushDataCacheSpecific

# .text:0x199C | 0x814BC534 | size: 0x114
.fn VFiPFCACHE_FlushAllCaches, global
/* 814BC534 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BC538 | 7C 08 02 A6 */	mflr r0
/* 814BC53C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BC540 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BC544 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BC548 | 3B C0 00 00 */	li r30, 0x0
/* 814BC54C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BC550 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BC554 | 7C 7C 1B 78 */	mr r28, r3
/* 814BC558 | 83 E3 15 DC */	lwz r31, 0x15dc(r3)
/* 814BC55C | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BC560 | 7F FD FB 78 */	mr r29, r31
/* 814BC564 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC568 | 40 82 00 0C */	bne .L_814BC574
/* 814BC56C | 3B C0 00 00 */	li r30, 0x0
/* 814BC570 | 48 00 00 3C */	b .L_814BC5AC
.L_814BC574:
/* 814BC574 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814BC578 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC57C | 41 82 00 30 */	beq .L_814BC5AC
/* 814BC580 | 7F 83 E3 78 */	mr r3, r28
/* 814BC584 | 7F A4 EB 78 */	mr r4, r29
/* 814BC588 | 4B FF E8 91 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC58C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC590 | 41 82 00 10 */	beq .L_814BC5A0
/* 814BC594 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC598 | 40 82 00 08 */	bne .L_814BC5A0
/* 814BC59C | 7C 7E 1B 78 */	mr r30, r3
.L_814BC5A0:
/* 814BC5A0 | 83 BD 00 20 */	lwz r29, 0x20(r29)
/* 814BC5A4 | 7C 1D F8 40 */	cmplw r29, r31
/* 814BC5A8 | 40 82 FF CC */	bne .L_814BC574
.L_814BC5AC:
/* 814BC5AC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC5B0 | 41 82 00 0C */	beq .L_814BC5BC
/* 814BC5B4 | 7F C3 F3 78 */	mr r3, r30
/* 814BC5B8 | 48 00 00 70 */	b .L_814BC628
.L_814BC5BC:
/* 814BC5BC | 83 BC 15 E0 */	lwz r29, 0x15e0(r28)
/* 814BC5C0 | 3B C0 00 00 */	li r30, 0x0
/* 814BC5C4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814BC5C8 | 7F BF EB 78 */	mr r31, r29
/* 814BC5CC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC5D0 | 40 82 00 0C */	bne .L_814BC5DC
/* 814BC5D4 | 3B C0 00 00 */	li r30, 0x0
/* 814BC5D8 | 48 00 00 3C */	b .L_814BC614
.L_814BC5DC:
/* 814BC5DC | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814BC5E0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC5E4 | 41 82 00 30 */	beq .L_814BC614
/* 814BC5E8 | 7F 83 E3 78 */	mr r3, r28
/* 814BC5EC | 7F E4 FB 78 */	mr r4, r31
/* 814BC5F0 | 4B FF E8 29 */	bl VFiPFCACHE_FlushPageIfNeeded
/* 814BC5F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BC5F8 | 41 82 00 10 */	beq .L_814BC608
/* 814BC5FC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC600 | 40 82 00 08 */	bne .L_814BC608
/* 814BC604 | 7C 7E 1B 78 */	mr r30, r3
.L_814BC608:
/* 814BC608 | 83 FF 00 20 */	lwz r31, 0x20(r31)
/* 814BC60C | 7C 1F E8 40 */	cmplw r31, r29
/* 814BC610 | 40 82 FF CC */	bne .L_814BC5DC
.L_814BC614:
/* 814BC614 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BC618 | 41 82 00 0C */	beq .L_814BC624
/* 814BC61C | 7F C3 F3 78 */	mr r3, r30
/* 814BC620 | 48 00 00 08 */	b .L_814BC628
.L_814BC624:
/* 814BC624 | 38 60 00 00 */	li r3, 0x0
.L_814BC628:
/* 814BC628 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BC62C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BC630 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BC634 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BC638 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BC63C | 7C 08 03 A6 */	mtlr r0
/* 814BC640 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BC644 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FlushAllCaches

# .text:0x1AB0 | 0x814BC648 | size: 0x13C
.fn VFiPFCACHE_FreeAllCaches, global
/* 814BC648 | 38 E0 00 00 */	li r7, 0x0
/* 814BC64C | 38 C0 FF FF */	li r6, -0x1
/* 814BC650 | 48 00 00 84 */	b .L_814BC6D4
.L_814BC654:
/* 814BC654 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814BC658 | 41 82 00 7C */	beq .L_814BC6D4
/* 814BC65C | A0 08 00 00 */	lhz r0, 0x0(r8)
/* 814BC660 | 90 E8 00 0C */	stw r7, 0xc(r8)
/* 814BC664 | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814BC668 | 90 E8 00 10 */	stw r7, 0x10(r8)
/* 814BC66C | B0 08 00 00 */	sth r0, 0x0(r8)
/* 814BC670 | 90 C8 00 18 */	stw r6, 0x18(r8)
/* 814BC674 | 90 E8 00 1C */	stw r7, 0x1c(r8)
/* 814BC678 | 80 83 15 DC */	lwz r4, 0x15dc(r3)
/* 814BC67C | 7C 08 20 40 */	cmplw r8, r4
/* 814BC680 | 40 82 00 10 */	bne .L_814BC690
/* 814BC684 | 80 08 00 20 */	lwz r0, 0x20(r8)
/* 814BC688 | 90 03 15 DC */	stw r0, 0x15dc(r3)
/* 814BC68C | 48 00 00 48 */	b .L_814BC6D4
.L_814BC690:
/* 814BC690 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BC694 | 7C 08 00 40 */	cmplw r8, r0
/* 814BC698 | 41 82 00 3C */	beq .L_814BC6D4
/* 814BC69C | 80 08 00 20 */	lwz r0, 0x20(r8)
/* 814BC6A0 | 80 88 00 24 */	lwz r4, 0x24(r8)
/* 814BC6A4 | 90 04 00 20 */	stw r0, 0x20(r4)
/* 814BC6A8 | 80 08 00 24 */	lwz r0, 0x24(r8)
/* 814BC6AC | 80 88 00 20 */	lwz r4, 0x20(r8)
/* 814BC6B0 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BC6B4 | 80 A3 15 DC */	lwz r5, 0x15dc(r3)
/* 814BC6B8 | 90 A8 00 20 */	stw r5, 0x20(r8)
/* 814BC6BC | 80 83 15 DC */	lwz r4, 0x15dc(r3)
/* 814BC6C0 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BC6C4 | 90 08 00 24 */	stw r0, 0x24(r8)
/* 814BC6C8 | 91 05 00 24 */	stw r8, 0x24(r5)
/* 814BC6CC | 80 88 00 24 */	lwz r4, 0x24(r8)
/* 814BC6D0 | 91 04 00 20 */	stw r8, 0x20(r4)
.L_814BC6D4:
/* 814BC6D4 | 81 03 15 DC */	lwz r8, 0x15dc(r3)
/* 814BC6D8 | A0 08 00 00 */	lhz r0, 0x0(r8)
/* 814BC6DC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC6E0 | 40 82 FF 74 */	bne .L_814BC654
/* 814BC6E4 | 38 E0 00 00 */	li r7, 0x0
/* 814BC6E8 | 38 C0 FF FF */	li r6, -0x1
/* 814BC6EC | 48 00 00 84 */	b .L_814BC770
.L_814BC6F0:
/* 814BC6F0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814BC6F4 | 41 82 00 7C */	beq .L_814BC770
/* 814BC6F8 | A0 08 00 00 */	lhz r0, 0x0(r8)
/* 814BC6FC | 90 E8 00 0C */	stw r7, 0xc(r8)
/* 814BC700 | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814BC704 | 90 E8 00 10 */	stw r7, 0x10(r8)
/* 814BC708 | B0 08 00 00 */	sth r0, 0x0(r8)
/* 814BC70C | 90 C8 00 18 */	stw r6, 0x18(r8)
/* 814BC710 | 90 E8 00 1C */	stw r7, 0x1c(r8)
/* 814BC714 | 80 83 15 E0 */	lwz r4, 0x15e0(r3)
/* 814BC718 | 7C 08 20 40 */	cmplw r8, r4
/* 814BC71C | 40 82 00 10 */	bne .L_814BC72C
/* 814BC720 | 80 08 00 20 */	lwz r0, 0x20(r8)
/* 814BC724 | 90 03 15 E0 */	stw r0, 0x15e0(r3)
/* 814BC728 | 48 00 00 48 */	b .L_814BC770
.L_814BC72C:
/* 814BC72C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BC730 | 7C 08 00 40 */	cmplw r8, r0
/* 814BC734 | 41 82 00 3C */	beq .L_814BC770
/* 814BC738 | 80 08 00 20 */	lwz r0, 0x20(r8)
/* 814BC73C | 80 88 00 24 */	lwz r4, 0x24(r8)
/* 814BC740 | 90 04 00 20 */	stw r0, 0x20(r4)
/* 814BC744 | 80 08 00 24 */	lwz r0, 0x24(r8)
/* 814BC748 | 80 88 00 20 */	lwz r4, 0x20(r8)
/* 814BC74C | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814BC750 | 80 A3 15 E0 */	lwz r5, 0x15e0(r3)
/* 814BC754 | 90 A8 00 20 */	stw r5, 0x20(r8)
/* 814BC758 | 80 83 15 E0 */	lwz r4, 0x15e0(r3)
/* 814BC75C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814BC760 | 90 08 00 24 */	stw r0, 0x24(r8)
/* 814BC764 | 91 05 00 24 */	stw r8, 0x24(r5)
/* 814BC768 | 80 88 00 24 */	lwz r4, 0x24(r8)
/* 814BC76C | 91 04 00 20 */	stw r8, 0x20(r4)
.L_814BC770:
/* 814BC770 | 81 03 15 E0 */	lwz r8, 0x15e0(r3)
/* 814BC774 | A0 08 00 00 */	lhz r0, 0x0(r8)
/* 814BC778 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BC77C | 40 82 FF 74 */	bne .L_814BC6F0
/* 814BC780 | 4E 80 00 20 */	blr
.endfn VFiPFCACHE_FreeAllCaches
