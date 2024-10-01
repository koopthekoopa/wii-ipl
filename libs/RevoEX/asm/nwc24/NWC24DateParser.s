.include "macros.inc"
.file "NWC24DateParser.c"

# 0x814ABD64..0x814AC6A8 | size: 0x944
.text
.balign 4

# .text:0x0 | 0x814ABD64 | size: 0xA8
.fn NWC24iDateToMinutes, global
/* 814ABD64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814ABD68 | 7C 08 02 A6 */	mflr r0
/* 814ABD6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814ABD70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814ABD74 | 7C 9F 23 78 */	mr r31, r4
/* 814ABD78 | 88 BF 00 03 */	lbz r5, 0x3(r31)
/* 814ABD7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814ABD80 | 7C 7E 1B 78 */	mr r30, r3
/* 814ABD84 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814ABD88 | 88 84 00 02 */	lbz r4, 0x2(r4)
/* 814ABD8C | 48 00 05 BD */	bl ConvertDateToDays
/* 814ABD90 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814ABD94 | 40 82 00 0C */	bne .L_814ABDA0
/* 814ABD98 | 38 60 FF FE */	li r3, -0x2
/* 814ABD9C | 48 00 00 58 */	b .L_814ABDF4
.L_814ABDA0:
/* 814ABDA0 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 814ABDA4 | 88 9F 00 06 */	lbz r4, 0x6(r31)
/* 814ABDA8 | 28 00 00 17 */	cmplwi r0, 0x17
/* 814ABDAC | 41 81 00 0C */	bgt .L_814ABDB8
/* 814ABDB0 | 28 04 00 3B */	cmplwi r4, 0x3b
/* 814ABDB4 | 40 81 00 0C */	ble .L_814ABDC0
.L_814ABDB8:
/* 814ABDB8 | 38 80 FF FF */	li r4, -0x1
/* 814ABDBC | 48 00 00 0C */	b .L_814ABDC8
.L_814ABDC0:
/* 814ABDC0 | 1C 00 00 3C */	mulli r0, r0, 0x3c
/* 814ABDC4 | 7C 84 02 14 */	add r4, r4, r0
.L_814ABDC8:
/* 814ABDC8 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 814ABDCC | 41 82 00 10 */	beq .L_814ABDDC
/* 814ABDD0 | 88 1F 00 05 */	lbz r0, 0x5(r31)
/* 814ABDD4 | 28 00 00 3C */	cmplwi r0, 0x3c
/* 814ABDD8 | 40 81 00 0C */	ble .L_814ABDE4
.L_814ABDDC:
/* 814ABDDC | 38 60 FF FE */	li r3, -0x2
/* 814ABDE0 | 48 00 00 14 */	b .L_814ABDF4
.L_814ABDE4:
/* 814ABDE4 | 1C 03 05 A0 */	mulli r0, r3, 0x5a0
/* 814ABDE8 | 38 60 00 00 */	li r3, 0x0
/* 814ABDEC | 7C 04 02 14 */	add r0, r4, r0
/* 814ABDF0 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814ABDF4:
/* 814ABDF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814ABDF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814ABDFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814ABE00 | 7C 08 03 A6 */	mtlr r0
/* 814ABE04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814ABE08 | 4E 80 00 20 */	blr
.endfn NWC24iDateToMinutes

# .text:0xA8 | 0x814ABE0C | size: 0xA4
.fn NWC24iMinutesToDate, global
/* 814ABE0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814ABE10 | 7C 08 02 A6 */	mflr r0
/* 814ABE14 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814ABE18 | 7C 8A 23 78 */	mr r10, r4
/* 814ABE1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814ABE20 | 40 80 00 08 */	bge .L_814ABE28
/* 814ABE24 | 39 40 00 00 */	li r10, 0x0
.L_814ABE28:
/* 814ABE28 | 3C 80 B6 0B */	lis r4, 0xb60b
/* 814ABE2C | 3C A0 88 89 */	lis r5, 0x8889
/* 814ABE30 | 38 04 60 B7 */	addi r0, r4, 0x60b7
/* 814ABE34 | 7C C0 50 96 */	mulhw r6, r0, r10
/* 814ABE38 | 38 83 00 02 */	addi r4, r3, 0x2
/* 814ABE3C | 38 05 88 89 */	subi r0, r5, 0x7777
/* 814ABE40 | 38 A3 00 03 */	addi r5, r3, 0x3
/* 814ABE44 | 7C C6 52 14 */	add r6, r6, r10
/* 814ABE48 | 7C C8 56 70 */	srawi r8, r6, 10
/* 814ABE4C | 7C C6 56 70 */	srawi r6, r6, 10
/* 814ABE50 | 54 C7 0F FE */	srwi r7, r6, 31
/* 814ABE54 | 55 09 0F FE */	srwi r9, r8, 31
/* 814ABE58 | 7C C6 3A 14 */	add r6, r6, r7
/* 814ABE5C | 1C E6 05 A0 */	mulli r7, r6, 0x5a0
/* 814ABE60 | 7C C8 4A 14 */	add r6, r8, r9
/* 814ABE64 | 7D 47 50 50 */	subf r10, r7, r10
/* 814ABE68 | 7C 00 50 96 */	mulhw r0, r0, r10
/* 814ABE6C | 7C 00 52 14 */	add r0, r0, r10
/* 814ABE70 | 7C 08 2E 70 */	srawi r8, r0, 5
/* 814ABE74 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 814ABE78 | 54 07 0F FE */	srwi r7, r0, 31
/* 814ABE7C | 55 09 0F FE */	srwi r9, r8, 31
/* 814ABE80 | 7C 00 3A 14 */	add r0, r0, r7
/* 814ABE84 | 1C 00 00 3C */	mulli r0, r0, 0x3c
/* 814ABE88 | 7C E8 4A 14 */	add r7, r8, r9
/* 814ABE8C | 98 E3 00 04 */	stb r7, 0x4(r3)
/* 814ABE90 | 7C 00 50 50 */	subf r0, r0, r10
/* 814ABE94 | 98 03 00 06 */	stb r0, 0x6(r3)
/* 814ABE98 | 48 00 06 75 */	bl ConvertDaysToDate
/* 814ABE9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814ABEA0 | 38 60 00 00 */	li r3, 0x0
/* 814ABEA4 | 7C 08 03 A6 */	mtlr r0
/* 814ABEA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814ABEAC | 4E 80 00 20 */	blr
.endfn NWC24iMinutesToDate

# .text:0x14C | 0x814ABEB0 | size: 0x13C
.fn NWC24iEpochSecondsToDate, global
/* 814ABEB0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ABEB4 | 7C 08 02 A6 */	mflr r0
/* 814ABEB8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ABEBC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814ABEC0 | 48 14 D6 01 */	bl _savegpr_27
/* 814ABEC4 | 3C 80 83 AA */	lis r4, 0x83aa
/* 814ABEC8 | 38 E0 00 00 */	li r7, 0x0
/* 814ABECC | 38 04 7E 80 */	addi r0, r4, 0x7e80
/* 814ABED0 | 7C 7F 1B 78 */	mr r31, r3
/* 814ABED4 | 7C 66 00 14 */	addc r3, r6, r0
/* 814ABED8 | 6C E4 80 00 */	xoris r4, r7, 0x8000
/* 814ABEDC | 7C 05 39 14 */	adde r0, r5, r7
/* 814ABEE0 | 7C BC 2B 78 */	mr r28, r5
/* 814ABEE4 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814ABEE8 | 7C 67 18 10 */	subfc r3, r7, r3
/* 814ABEEC | 7C 84 01 10 */	subfe r4, r4, r0
/* 814ABEF0 | 7C DB 33 78 */	mr r27, r6
/* 814ABEF4 | 7C 80 01 10 */	subfe r4, r0, r0
/* 814ABEF8 | 7C 84 00 D1 */	neg. r4, r4
/* 814ABEFC | 41 82 00 10 */	beq .L_814ABF0C
/* 814ABF00 | 3C 60 7C 56 */	lis r3, 0x7c56
/* 814ABF04 | 3B 80 FF FF */	li r28, -0x1
/* 814ABF08 | 3B 63 81 80 */	subi r27, r3, 0x7e80
.L_814ABF0C:
/* 814ABF0C | 3F C0 83 AA */	lis r30, 0x83aa
/* 814ABF10 | 3B A0 00 00 */	li r29, 0x0
/* 814ABF14 | 38 1E 7E 80 */	addi r0, r30, 0x7e80
/* 814ABF18 | 38 C0 00 3C */	li r6, 0x3c
/* 814ABF1C | 7C 9B 00 14 */	addc r4, r27, r0
/* 814ABF20 | 38 A0 00 00 */	li r5, 0x0
/* 814ABF24 | 7C 7C E9 14 */	adde r3, r28, r29
/* 814ABF28 | 48 14 D9 05 */	bl __mod2i
/* 814ABF2C | 38 1E 7E 80 */	addi r0, r30, 0x7e80
/* 814ABF30 | 98 9F 00 05 */	stb r4, 0x5(r31)
/* 814ABF34 | 7C 9B 00 14 */	addc r4, r27, r0
/* 814ABF38 | 38 C0 00 3C */	li r6, 0x3c
/* 814ABF3C | 7C 7C E9 14 */	adde r3, r28, r29
/* 814ABF40 | 38 A0 00 00 */	li r5, 0x0
/* 814ABF44 | 48 14 D6 CD */	bl __div2i
/* 814ABF48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814ABF4C | 7C 8A 23 78 */	mr r10, r4
/* 814ABF50 | 40 80 00 08 */	bge .L_814ABF58
/* 814ABF54 | 39 40 00 00 */	li r10, 0x0
.L_814ABF58:
/* 814ABF58 | 3C 60 B6 0B */	lis r3, 0xb60b
/* 814ABF5C | 3C 80 88 89 */	lis r4, 0x8889
/* 814ABF60 | 38 03 60 B7 */	addi r0, r3, 0x60b7
/* 814ABF64 | 38 BF 00 03 */	addi r5, r31, 0x3
/* 814ABF68 | 7C C0 50 96 */	mulhw r6, r0, r10
/* 814ABF6C | 7F E3 FB 78 */	mr r3, r31
/* 814ABF70 | 38 04 88 89 */	subi r0, r4, 0x7777
/* 814ABF74 | 38 9F 00 02 */	addi r4, r31, 0x2
/* 814ABF78 | 7C C6 52 14 */	add r6, r6, r10
/* 814ABF7C | 7C C8 56 70 */	srawi r8, r6, 10
/* 814ABF80 | 7C C6 56 70 */	srawi r6, r6, 10
/* 814ABF84 | 54 C7 0F FE */	srwi r7, r6, 31
/* 814ABF88 | 55 09 0F FE */	srwi r9, r8, 31
/* 814ABF8C | 7C C6 3A 14 */	add r6, r6, r7
/* 814ABF90 | 1C E6 05 A0 */	mulli r7, r6, 0x5a0
/* 814ABF94 | 7C C8 4A 14 */	add r6, r8, r9
/* 814ABF98 | 7D 47 50 50 */	subf r10, r7, r10
/* 814ABF9C | 7C 00 50 96 */	mulhw r0, r0, r10
/* 814ABFA0 | 7C 00 52 14 */	add r0, r0, r10
/* 814ABFA4 | 7C 08 2E 70 */	srawi r8, r0, 5
/* 814ABFA8 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 814ABFAC | 54 07 0F FE */	srwi r7, r0, 31
/* 814ABFB0 | 55 09 0F FE */	srwi r9, r8, 31
/* 814ABFB4 | 7C 00 3A 14 */	add r0, r0, r7
/* 814ABFB8 | 1C 00 00 3C */	mulli r0, r0, 0x3c
/* 814ABFBC | 7C E8 4A 14 */	add r7, r8, r9
/* 814ABFC0 | 98 FF 00 04 */	stb r7, 0x4(r31)
/* 814ABFC4 | 7C 00 50 50 */	subf r0, r0, r10
/* 814ABFC8 | 98 1F 00 06 */	stb r0, 0x6(r31)
/* 814ABFCC | 48 00 05 41 */	bl ConvertDaysToDate
/* 814ABFD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814ABFD4 | 38 60 00 00 */	li r3, 0x0
/* 814ABFD8 | 48 14 D5 35 */	bl _restgpr_27
/* 814ABFDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ABFE0 | 7C 08 03 A6 */	mtlr r0
/* 814ABFE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ABFE8 | 4E 80 00 20 */	blr
.endfn NWC24iEpochSecondsToDate

# .text:0x288 | 0x814ABFEC | size: 0x1D8
.fn NWC24iMinutesToOSCalendarTime, global
/* 814ABFEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ABFF0 | 7C 08 02 A6 */	mflr r0
/* 814ABFF4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814ABFF8 | 7C 8A 23 78 */	mr r10, r4
/* 814ABFFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AC000 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AC004 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AC008 | 7C 7E 1B 78 */	mr r30, r3
/* 814AC00C | 40 80 00 08 */	bge .L_814AC014
/* 814AC010 | 39 40 00 00 */	li r10, 0x0
.L_814AC014:
/* 814AC014 | 3C 60 B6 0B */	lis r3, 0xb60b
/* 814AC018 | 3C 80 88 89 */	lis r4, 0x8889
/* 814AC01C | 38 03 60 B7 */	addi r0, r3, 0x60b7
/* 814AC020 | 38 A1 00 0B */	addi r5, r1, 0xb
/* 814AC024 | 7C C0 50 96 */	mulhw r6, r0, r10
/* 814AC028 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AC02C | 38 04 88 89 */	subi r0, r4, 0x7777
/* 814AC030 | 38 81 00 0A */	addi r4, r1, 0xa
/* 814AC034 | 7C C6 52 14 */	add r6, r6, r10
/* 814AC038 | 7C C8 56 70 */	srawi r8, r6, 10
/* 814AC03C | 7C C6 56 70 */	srawi r6, r6, 10
/* 814AC040 | 54 C7 0F FE */	srwi r7, r6, 31
/* 814AC044 | 55 09 0F FE */	srwi r9, r8, 31
/* 814AC048 | 7C C6 3A 14 */	add r6, r6, r7
/* 814AC04C | 1C E6 05 A0 */	mulli r7, r6, 0x5a0
/* 814AC050 | 7F E8 4A 14 */	add r31, r8, r9
/* 814AC054 | 7F E6 FB 78 */	mr r6, r31
/* 814AC058 | 7D 47 50 50 */	subf r10, r7, r10
/* 814AC05C | 7C 00 50 96 */	mulhw r0, r0, r10
/* 814AC060 | 7C 00 52 14 */	add r0, r0, r10
/* 814AC064 | 7C 08 2E 70 */	srawi r8, r0, 5
/* 814AC068 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 814AC06C | 54 07 0F FE */	srwi r7, r0, 31
/* 814AC070 | 55 09 0F FE */	srwi r9, r8, 31
/* 814AC074 | 7C 00 3A 14 */	add r0, r0, r7
/* 814AC078 | 1C 00 00 3C */	mulli r0, r0, 0x3c
/* 814AC07C | 7C E8 4A 14 */	add r7, r8, r9
/* 814AC080 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 814AC084 | 7C 00 50 50 */	subf r0, r0, r10
/* 814AC088 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 814AC08C | 48 00 04 81 */	bl ConvertDaysToDate
/* 814AC090 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814AC094 | 3C 80 81 62 */	lis r4, DAYS_OF_YEAR@ha
/* 814AC098 | 38 00 00 00 */	li r0, 0x0
/* 814AC09C | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 814AC0A0 | 38 84 8D 58 */	addi r4, r4, DAYS_OF_YEAR@l
/* 814AC0A4 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 814AC0A8 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814AC0AC | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 814AC0B0 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 814AC0B4 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 814AC0B8 | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 814AC0BC | 90 7E 00 08 */	stw r3, 0x8(r30)
/* 814AC0C0 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 814AC0C4 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 814AC0C8 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814AC0CC | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 814AC0D0 | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 814AC0D4 | 88 A1 00 0A */	lbz r5, 0xa(r1)
/* 814AC0D8 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 814AC0DC | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814AC0E0 | 54 A5 08 3C */	slwi r5, r5, 1
/* 814AC0E4 | 7C 84 2A 2E */	lhzx r4, r4, r5
/* 814AC0E8 | 7C 63 22 14 */	add r3, r3, r4
/* 814AC0EC | 38 63 FF FF */	subi r3, r3, 0x1
/* 814AC0F0 | 90 7E 00 1C */	stw r3, 0x1c(r30)
/* 814AC0F4 | A0 A1 00 08 */	lhz r5, 0x8(r1)
/* 814AC0F8 | 54 A3 F0 02 */	slwi r3, r5, 30
/* 814AC0FC | 54 A4 0F FE */	srwi r4, r5, 31
/* 814AC100 | 7C 64 18 50 */	subf r3, r4, r3
/* 814AC104 | 54 63 10 3E */	rotlwi r3, r3, 2
/* 814AC108 | 7C 63 22 15 */	add. r3, r3, r4
/* 814AC10C | 40 82 00 28 */	bne .L_814AC134
/* 814AC110 | 3C 60 51 EC */	lis r3, 0x51ec
/* 814AC114 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 814AC118 | 7C 63 28 96 */	mulhw r3, r3, r5
/* 814AC11C | 7C 63 2E 70 */	srawi r3, r3, 5
/* 814AC120 | 54 64 0F FE */	srwi r4, r3, 31
/* 814AC124 | 7C 63 22 14 */	add r3, r3, r4
/* 814AC128 | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 814AC12C | 7C 63 28 51 */	subf. r3, r3, r5
/* 814AC130 | 40 82 00 28 */	bne .L_814AC158
.L_814AC134:
/* 814AC134 | 3C 60 51 EC */	lis r3, 0x51ec
/* 814AC138 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 814AC13C | 7C 63 28 96 */	mulhw r3, r3, r5
/* 814AC140 | 7C 63 3E 70 */	srawi r3, r3, 7
/* 814AC144 | 54 64 0F FE */	srwi r4, r3, 31
/* 814AC148 | 7C 63 22 14 */	add r3, r3, r4
/* 814AC14C | 1C 63 01 90 */	mulli r3, r3, 0x190
/* 814AC150 | 7C 63 28 51 */	subf. r3, r3, r5
/* 814AC154 | 40 82 00 08 */	bne .L_814AC15C
.L_814AC158:
/* 814AC158 | 38 00 00 01 */	li r0, 0x1
.L_814AC15C:
/* 814AC15C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AC160 | 41 82 00 1C */	beq .L_814AC17C
/* 814AC164 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 814AC168 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814AC16C | 40 81 00 10 */	ble .L_814AC17C
/* 814AC170 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 814AC174 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814AC178 | 90 1E 00 1C */	stw r0, 0x1c(r30)
.L_814AC17C:
/* 814AC17C | 3C 60 92 49 */	lis r3, 0x9249
/* 814AC180 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 814AC184 | 38 03 24 93 */	addi r0, r3, 0x2493
/* 814AC188 | 7C 00 28 96 */	mulhw r0, r0, r5
/* 814AC18C | 38 60 00 00 */	li r3, 0x0
/* 814AC190 | 7C 00 2A 14 */	add r0, r0, r5
/* 814AC194 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814AC198 | 54 04 0F FE */	srwi r4, r0, 31
/* 814AC19C | 7C 00 22 14 */	add r0, r0, r4
/* 814AC1A0 | 1C 00 00 07 */	mulli r0, r0, 0x7
/* 814AC1A4 | 7C 00 28 50 */	subf r0, r0, r5
/* 814AC1A8 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 814AC1AC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AC1B0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AC1B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AC1B8 | 7C 08 03 A6 */	mtlr r0
/* 814AC1BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AC1C0 | 4E 80 00 20 */	blr
.endfn NWC24iMinutesToOSCalendarTime

# .text:0x460 | 0x814AC1C4 | size: 0x154
.fn NWC24iDateToOSCalendarTime, global
/* 814AC1C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AC1C8 | 7C 08 02 A6 */	mflr r0
/* 814AC1CC | 3C C0 81 62 */	lis r6, DAYS_OF_YEAR@ha
/* 814AC1D0 | 88 E4 00 02 */	lbz r7, 0x2(r4)
/* 814AC1D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AC1D8 | 38 C6 8D 58 */	addi r6, r6, DAYS_OF_YEAR@l
/* 814AC1DC | A0 A4 00 00 */	lhz r5, 0x0(r4)
/* 814AC1E0 | 38 00 00 00 */	li r0, 0x0
/* 814AC1E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AC1E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814AC1EC | 89 84 00 03 */	lbz r12, 0x3(r4)
/* 814AC1F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AC1F4 | 3B C7 FF FF */	subi r30, r7, 0x1
/* 814AC1F8 | 57 C7 08 3C */	slwi r7, r30, 1
/* 814AC1FC | 89 64 00 04 */	lbz r11, 0x4(r4)
/* 814AC200 | 7D 06 3A 2E */	lhzx r8, r6, r7
/* 814AC204 | 54 A6 F0 02 */	slwi r6, r5, 30
/* 814AC208 | 54 A7 0F FE */	srwi r7, r5, 31
/* 814AC20C | 89 44 00 06 */	lbz r10, 0x6(r4)
/* 814AC210 | 7C C7 30 50 */	subf r6, r7, r6
/* 814AC214 | 89 24 00 05 */	lbz r9, 0x5(r4)
/* 814AC218 | 54 C6 10 3E */	rotlwi r6, r6, 2
/* 814AC21C | 7D 0C 42 14 */	add r8, r12, r8
/* 814AC220 | 7C C6 3A 15 */	add. r6, r6, r7
/* 814AC224 | 90 A3 00 14 */	stw r5, 0x14(r3)
/* 814AC228 | 38 E8 FF FF */	subi r7, r8, 0x1
/* 814AC22C | 93 C3 00 10 */	stw r30, 0x10(r3)
/* 814AC230 | 7C 86 23 78 */	mr r6, r4
/* 814AC234 | 91 83 00 0C */	stw r12, 0xc(r3)
/* 814AC238 | 91 63 00 08 */	stw r11, 0x8(r3)
/* 814AC23C | 91 43 00 04 */	stw r10, 0x4(r3)
/* 814AC240 | 91 23 00 00 */	stw r9, 0x0(r3)
/* 814AC244 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814AC248 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814AC24C | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 814AC250 | 40 82 00 28 */	bne .L_814AC278
/* 814AC254 | 3C E0 51 EC */	lis r7, 0x51ec
/* 814AC258 | 38 E7 85 1F */	subi r7, r7, 0x7ae1
/* 814AC25C | 7C E7 28 96 */	mulhw r7, r7, r5
/* 814AC260 | 7C E7 2E 70 */	srawi r7, r7, 5
/* 814AC264 | 54 E8 0F FE */	srwi r8, r7, 31
/* 814AC268 | 7C E7 42 14 */	add r7, r7, r8
/* 814AC26C | 1C E7 00 64 */	mulli r7, r7, 0x64
/* 814AC270 | 7C E7 28 51 */	subf. r7, r7, r5
/* 814AC274 | 40 82 00 28 */	bne .L_814AC29C
.L_814AC278:
/* 814AC278 | 3C E0 51 EC */	lis r7, 0x51ec
/* 814AC27C | 38 E7 85 1F */	subi r7, r7, 0x7ae1
/* 814AC280 | 7C E7 28 96 */	mulhw r7, r7, r5
/* 814AC284 | 7C E7 3E 70 */	srawi r7, r7, 7
/* 814AC288 | 54 E8 0F FE */	srwi r8, r7, 31
/* 814AC28C | 7C E7 42 14 */	add r7, r7, r8
/* 814AC290 | 1C E7 01 90 */	mulli r7, r7, 0x190
/* 814AC294 | 7C A7 28 51 */	subf. r5, r7, r5
/* 814AC298 | 40 82 00 08 */	bne .L_814AC2A0
.L_814AC29C:
/* 814AC29C | 38 00 00 01 */	li r0, 0x1
.L_814AC2A0:
/* 814AC2A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AC2A4 | 41 82 00 1C */	beq .L_814AC2C0
/* 814AC2A8 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 814AC2AC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814AC2B0 | 40 81 00 10 */	ble .L_814AC2C0
/* 814AC2B4 | 80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 814AC2B8 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814AC2BC | 90 03 00 1C */	stw r0, 0x1c(r3)
.L_814AC2C0:
/* 814AC2C0 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814AC2C4 | 88 84 00 02 */	lbz r4, 0x2(r4)
/* 814AC2C8 | 88 A6 00 03 */	lbz r5, 0x3(r6)
/* 814AC2CC | 48 00 00 7D */	bl ConvertDateToDays
/* 814AC2D0 | 3C 80 92 49 */	lis r4, 0x9249
/* 814AC2D4 | 38 A3 00 01 */	addi r5, r3, 0x1
/* 814AC2D8 | 38 04 24 93 */	addi r0, r4, 0x2493
/* 814AC2DC | 38 60 00 00 */	li r3, 0x0
/* 814AC2E0 | 7C 00 28 96 */	mulhw r0, r0, r5
/* 814AC2E4 | 7C 00 2A 14 */	add r0, r0, r5
/* 814AC2E8 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814AC2EC | 54 04 0F FE */	srwi r4, r0, 31
/* 814AC2F0 | 7C 00 22 14 */	add r0, r0, r4
/* 814AC2F4 | 1C 00 00 07 */	mulli r0, r0, 0x7
/* 814AC2F8 | 7C 00 28 50 */	subf r0, r0, r5
/* 814AC2FC | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 814AC300 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AC304 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814AC308 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AC30C | 7C 08 03 A6 */	mtlr r0
/* 814AC310 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AC314 | 4E 80 00 20 */	blr
.endfn NWC24iDateToOSCalendarTime

# .text:0x5B4 | 0x814AC318 | size: 0x30
.fn NWC24iIsValidDate, global
/* 814AC318 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AC31C | 7C 08 02 A6 */	mflr r0
/* 814AC320 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AC324 | 48 00 00 25 */	bl ConvertDateToDays
/* 814AC328 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814AC32C | 38 60 00 00 */	li r3, 0x0
/* 814AC330 | 40 82 00 08 */	bne .L_814AC338
/* 814AC334 | 38 60 FF FD */	li r3, -0x3
.L_814AC338:
/* 814AC338 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AC33C | 7C 08 03 A6 */	mtlr r0
/* 814AC340 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AC344 | 4E 80 00 20 */	blr
.endfn NWC24iIsValidDate

# .text:0x5E4 | 0x814AC348 | size: 0x1C4
.fn ConvertDateToDays, global
/* 814AC348 | 28 03 07 6C */	cmplwi r3, 0x76c
/* 814AC34C | 41 80 00 14 */	blt .L_814AC360
/* 814AC350 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814AC354 | 41 80 00 0C */	blt .L_814AC360
/* 814AC358 | 28 04 00 0C */	cmplwi r4, 0xc
/* 814AC35C | 40 81 00 0C */	ble .L_814AC368
.L_814AC360:
/* 814AC360 | 38 60 FF FF */	li r3, -0x1
/* 814AC364 | 4E 80 00 20 */	blr
.L_814AC368:
/* 814AC368 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814AC36C | 40 82 00 8C */	bne .L_814AC3F8
/* 814AC370 | 54 60 F0 02 */	slwi r0, r3, 30
/* 814AC374 | 54 66 0F FE */	srwi r6, r3, 31
/* 814AC378 | 7C 06 00 50 */	subf r0, r6, r0
/* 814AC37C | 38 E0 00 00 */	li r7, 0x0
/* 814AC380 | 54 00 10 3E */	rotlwi r0, r0, 2
/* 814AC384 | 7C 00 32 15 */	add. r0, r0, r6
/* 814AC388 | 40 82 00 28 */	bne .L_814AC3B0
/* 814AC38C | 3C C0 51 EC */	lis r6, 0x51ec
/* 814AC390 | 38 06 85 1F */	subi r0, r6, 0x7ae1
/* 814AC394 | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814AC398 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 814AC39C | 54 06 0F FE */	srwi r6, r0, 31
/* 814AC3A0 | 7C 00 32 14 */	add r0, r0, r6
/* 814AC3A4 | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 814AC3A8 | 7C 00 18 51 */	subf. r0, r0, r3
/* 814AC3AC | 40 82 00 28 */	bne .L_814AC3D4
.L_814AC3B0:
/* 814AC3B0 | 3C C0 51 EC */	lis r6, 0x51ec
/* 814AC3B4 | 38 06 85 1F */	subi r0, r6, 0x7ae1
/* 814AC3B8 | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814AC3BC | 7C 00 3E 70 */	srawi r0, r0, 7
/* 814AC3C0 | 54 06 0F FE */	srwi r6, r0, 31
/* 814AC3C4 | 7C 00 32 14 */	add r0, r0, r6
/* 814AC3C8 | 1C 00 01 90 */	mulli r0, r0, 0x190
/* 814AC3CC | 7C 00 18 51 */	subf. r0, r0, r3
/* 814AC3D0 | 40 82 00 08 */	bne .L_814AC3D8
.L_814AC3D4:
/* 814AC3D4 | 38 E0 00 01 */	li r7, 0x1
.L_814AC3D8:
/* 814AC3D8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AC3DC | 41 82 00 1C */	beq .L_814AC3F8
/* 814AC3E0 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814AC3E4 | 41 80 00 0C */	blt .L_814AC3F0
/* 814AC3E8 | 28 05 00 1D */	cmplwi r5, 0x1d
/* 814AC3EC | 40 81 00 34 */	ble .L_814AC420
.L_814AC3F0:
/* 814AC3F0 | 38 60 FF FF */	li r3, -0x1
/* 814AC3F4 | 4E 80 00 20 */	blr
.L_814AC3F8:
/* 814AC3F8 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814AC3FC | 41 80 00 1C */	blt .L_814AC418
/* 814AC400 | 3C C0 81 62 */	lis r6, DAYS_OF_MONTH@ha
/* 814AC404 | 38 C6 8D 48 */	addi r6, r6, DAYS_OF_MONTH@l
/* 814AC408 | 7C C4 32 14 */	add r6, r4, r6
/* 814AC40C | 88 06 FF FF */	lbz r0, -0x1(r6)
/* 814AC410 | 7C 00 28 40 */	cmplw r0, r5
/* 814AC414 | 40 80 00 0C */	bge .L_814AC420
.L_814AC418:
/* 814AC418 | 38 60 FF FF */	li r3, -0x1
/* 814AC41C | 4E 80 00 20 */	blr
.L_814AC420:
/* 814AC420 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814AC424 | 3C C0 81 62 */	lis r6, DAYS_OF_YEAR@ha
/* 814AC428 | 54 00 08 3C */	slwi r0, r0, 1
/* 814AC42C | 28 04 00 03 */	cmplwi r4, 0x3
/* 814AC430 | 38 C6 8D 58 */	addi r6, r6, DAYS_OF_YEAR@l
/* 814AC434 | 38 85 FF FF */	subi r4, r5, 0x1
/* 814AC438 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 814AC43C | 7C 84 02 14 */	add r4, r4, r0
/* 814AC440 | 41 80 00 78 */	blt .L_814AC4B8
/* 814AC444 | 54 60 F0 02 */	slwi r0, r3, 30
/* 814AC448 | 54 65 0F FE */	srwi r5, r3, 31
/* 814AC44C | 7C 05 00 50 */	subf r0, r5, r0
/* 814AC450 | 38 C0 00 00 */	li r6, 0x0
/* 814AC454 | 54 00 10 3E */	rotlwi r0, r0, 2
/* 814AC458 | 7C 00 2A 15 */	add. r0, r0, r5
/* 814AC45C | 40 82 00 28 */	bne .L_814AC484
/* 814AC460 | 3C A0 51 EC */	lis r5, 0x51ec
/* 814AC464 | 38 05 85 1F */	subi r0, r5, 0x7ae1
/* 814AC468 | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814AC46C | 7C 00 2E 70 */	srawi r0, r0, 5
/* 814AC470 | 54 05 0F FE */	srwi r5, r0, 31
/* 814AC474 | 7C 00 2A 14 */	add r0, r0, r5
/* 814AC478 | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 814AC47C | 7C 00 18 51 */	subf. r0, r0, r3
/* 814AC480 | 40 82 00 28 */	bne .L_814AC4A8
.L_814AC484:
/* 814AC484 | 3C A0 51 EC */	lis r5, 0x51ec
/* 814AC488 | 38 05 85 1F */	subi r0, r5, 0x7ae1
/* 814AC48C | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814AC490 | 7C 00 3E 70 */	srawi r0, r0, 7
/* 814AC494 | 54 05 0F FE */	srwi r5, r0, 31
/* 814AC498 | 7C 00 2A 14 */	add r0, r0, r5
/* 814AC49C | 1C 00 01 90 */	mulli r0, r0, 0x190
/* 814AC4A0 | 7C 00 18 51 */	subf. r0, r0, r3
/* 814AC4A4 | 40 82 00 08 */	bne .L_814AC4AC
.L_814AC4A8:
/* 814AC4A8 | 38 C0 00 01 */	li r6, 0x1
.L_814AC4AC:
/* 814AC4AC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814AC4B0 | 41 82 00 08 */	beq .L_814AC4B8
/* 814AC4B4 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814AC4B8:
/* 814AC4B8 | 38 C3 F8 94 */	subi r6, r3, 0x76c
/* 814AC4BC | 3C 60 51 EC */	lis r3, 0x51ec
/* 814AC4C0 | 38 A3 85 1F */	subi r5, r3, 0x7ae1
/* 814AC4C4 | 38 06 01 2B */	addi r0, r6, 0x12b
/* 814AC4C8 | 38 66 FF FF */	subi r3, r6, 0x1
/* 814AC4CC | 7C 05 00 96 */	mulhw r0, r5, r0
/* 814AC4D0 | 1C E6 01 6D */	mulli r7, r6, 0x16d
/* 814AC4D4 | 7C 00 3E 70 */	srawi r0, r0, 7
/* 814AC4D8 | 54 06 0F FE */	srwi r6, r0, 31
/* 814AC4DC | 7C A5 18 96 */	mulhw r5, r5, r3
/* 814AC4E0 | 7C 84 3A 14 */	add r4, r4, r7
/* 814AC4E4 | 7C 00 32 14 */	add r0, r0, r6
/* 814AC4E8 | 7C 04 02 14 */	add r0, r4, r0
/* 814AC4EC | 7C A4 2E 70 */	srawi r4, r5, 5
/* 814AC4F0 | 54 85 0F FE */	srwi r5, r4, 31
/* 814AC4F4 | 7C 63 16 70 */	srawi r3, r3, 2
/* 814AC4F8 | 7C 84 2A 14 */	add r4, r4, r5
/* 814AC4FC | 7C 63 01 94 */	addze r3, r3
/* 814AC500 | 7C 64 18 50 */	subf r3, r4, r3
/* 814AC504 | 7C 63 02 14 */	add r3, r3, r0
/* 814AC508 | 4E 80 00 20 */	blr
.endfn ConvertDateToDays

# .text:0x7A8 | 0x814AC50C | size: 0x19C
.fn ConvertDaysToDate, global
/* 814AC50C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AC510 | 38 E0 07 6C */	li r7, 0x76c
/* 814AC514 | 38 00 00 01 */	li r0, 0x1
/* 814AC518 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814AC51C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AC520 | B0 E3 00 00 */	sth r7, 0x0(r3)
/* 814AC524 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814AC528 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 814AC52C | 41 80 01 70 */	blt .L_814AC69C
/* 814AC530 | 3D 20 51 EC */	lis r9, 0x51ec
.L_814AC534:
/* 814AC534 | A1 43 00 00 */	lhz r10, 0x0(r3)
/* 814AC538 | 7C C0 33 78 */	mr r0, r6
/* 814AC53C | 39 60 00 01 */	li r11, 0x1
/* 814AC540 | 39 80 00 00 */	li r12, 0x0
/* 814AC544 | 55 47 F0 02 */	slwi r7, r10, 30
/* 814AC548 | 55 48 0F FE */	srwi r8, r10, 31
/* 814AC54C | 7C E8 38 50 */	subf r7, r8, r7
/* 814AC550 | 54 E7 10 3E */	rotlwi r7, r7, 2
/* 814AC554 | 7C E7 42 15 */	add. r7, r7, r8
/* 814AC558 | 40 82 00 28 */	bne .L_814AC580
/* 814AC55C | 38 E9 85 1F */	subi r7, r9, 0x7ae1
/* 814AC560 | 7C E7 50 96 */	mulhw r7, r7, r10
/* 814AC564 | 7C E7 2E 70 */	srawi r7, r7, 5
/* 814AC568 | 54 E8 0F FE */	srwi r8, r7, 31
/* 814AC56C | 7C E7 42 14 */	add r7, r7, r8
/* 814AC570 | 1C E7 00 64 */	mulli r7, r7, 0x64
/* 814AC574 | 7C E7 50 51 */	subf. r7, r7, r10
/* 814AC578 | 41 82 00 08 */	beq .L_814AC580
/* 814AC57C | 39 80 00 01 */	li r12, 0x1
.L_814AC580:
/* 814AC580 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814AC584 | 40 82 00 28 */	bne .L_814AC5AC
/* 814AC588 | 38 E9 85 1F */	subi r7, r9, 0x7ae1
/* 814AC58C | 7C E7 50 96 */	mulhw r7, r7, r10
/* 814AC590 | 7C E7 3E 70 */	srawi r7, r7, 7
/* 814AC594 | 54 E8 0F FE */	srwi r8, r7, 31
/* 814AC598 | 7C E7 42 14 */	add r7, r7, r8
/* 814AC59C | 1C E7 01 90 */	mulli r7, r7, 0x190
/* 814AC5A0 | 7C E7 50 51 */	subf. r7, r7, r10
/* 814AC5A4 | 41 82 00 08 */	beq .L_814AC5AC
/* 814AC5A8 | 39 60 00 00 */	li r11, 0x0
.L_814AC5AC:
/* 814AC5AC | 7C EB 00 D0 */	neg r7, r11
/* 814AC5B0 | 7C E7 5B 78 */	or r7, r7, r11
/* 814AC5B4 | 54 E7 0F FE */	srwi r7, r7, 31
/* 814AC5B8 | 38 E7 01 6D */	addi r7, r7, 0x16d
/* 814AC5BC | 7C C7 30 51 */	subf. r6, r7, r6
/* 814AC5C0 | 40 80 00 0C */	bge .L_814AC5CC
/* 814AC5C4 | 7C 06 03 78 */	mr r6, r0
/* 814AC5C8 | 48 00 00 14 */	b .L_814AC5DC
.L_814AC5CC:
/* 814AC5CC | A0 E3 00 00 */	lhz r7, 0x0(r3)
/* 814AC5D0 | 38 07 00 01 */	addi r0, r7, 0x1
/* 814AC5D4 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 814AC5D8 | 4B FF FF 5C */	b .L_814AC534
.L_814AC5DC:
/* 814AC5DC | 3D 20 81 62 */	lis r9, DAYS_OF_MONTH@ha
/* 814AC5E0 | 3D 60 51 EC */	lis r11, 0x51ec
/* 814AC5E4 | 39 29 8D 48 */	addi r9, r9, DAYS_OF_MONTH@l
.L_814AC5E8:
/* 814AC5E8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814AC5EC | 7C C7 33 78 */	mr r7, r6
/* 814AC5F0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814AC5F4 | 40 82 00 78 */	bne .L_814AC66C
/* 814AC5F8 | A3 E3 00 00 */	lhz r31, 0x0(r3)
/* 814AC5FC | 39 80 00 00 */	li r12, 0x0
/* 814AC600 | 57 E8 F0 02 */	slwi r8, r31, 30
/* 814AC604 | 57 EA 0F FE */	srwi r10, r31, 31
/* 814AC608 | 7D 0A 40 50 */	subf r8, r10, r8
/* 814AC60C | 55 08 10 3E */	rotlwi r8, r8, 2
/* 814AC610 | 7D 08 52 15 */	add. r8, r8, r10
/* 814AC614 | 40 82 00 24 */	bne .L_814AC638
/* 814AC618 | 39 0B 85 1F */	subi r8, r11, 0x7ae1
/* 814AC61C | 7D 08 F8 96 */	mulhw r8, r8, r31
/* 814AC620 | 7D 08 2E 70 */	srawi r8, r8, 5
/* 814AC624 | 55 0A 0F FE */	srwi r10, r8, 31
/* 814AC628 | 7D 08 52 14 */	add r8, r8, r10
/* 814AC62C | 1D 08 00 64 */	mulli r8, r8, 0x64
/* 814AC630 | 7D 08 F8 51 */	subf. r8, r8, r31
/* 814AC634 | 40 82 00 24 */	bne .L_814AC658
.L_814AC638:
/* 814AC638 | 39 0B 85 1F */	subi r8, r11, 0x7ae1
/* 814AC63C | 7D 08 F8 96 */	mulhw r8, r8, r31
/* 814AC640 | 7D 08 3E 70 */	srawi r8, r8, 7
/* 814AC644 | 55 0A 0F FE */	srwi r10, r8, 31
/* 814AC648 | 7D 08 52 14 */	add r8, r8, r10
/* 814AC64C | 1D 08 01 90 */	mulli r8, r8, 0x190
/* 814AC650 | 7D 08 F8 51 */	subf. r8, r8, r31
/* 814AC654 | 40 82 00 08 */	bne .L_814AC65C
.L_814AC658:
/* 814AC658 | 39 80 00 01 */	li r12, 0x1
.L_814AC65C:
/* 814AC65C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814AC660 | 41 82 00 0C */	beq .L_814AC66C
/* 814AC664 | 38 C6 FF E3 */	subi r6, r6, 0x1d
/* 814AC668 | 48 00 00 10 */	b .L_814AC678
.L_814AC66C:
/* 814AC66C | 7D 09 02 14 */	add r8, r9, r0
/* 814AC670 | 88 08 FF FF */	lbz r0, -0x1(r8)
/* 814AC674 | 7C C0 30 50 */	subf r6, r0, r6
.L_814AC678:
/* 814AC678 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814AC67C | 41 80 00 14 */	blt .L_814AC690
/* 814AC680 | 88 E4 00 00 */	lbz r7, 0x0(r4)
/* 814AC684 | 38 07 00 01 */	addi r0, r7, 0x1
/* 814AC688 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814AC68C | 4B FF FF 5C */	b .L_814AC5E8
.L_814AC690:
/* 814AC690 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814AC694 | 7C 00 3A 14 */	add r0, r0, r7
/* 814AC698 | 98 05 00 00 */	stb r0, 0x0(r5)
.L_814AC69C:
/* 814AC69C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AC6A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AC6A4 | 4E 80 00 20 */	blr
.endfn ConvertDaysToDate

# 0x81618D48..0x81618D80 | size: 0x38
.rodata
.balign 8

# .rodata:0x0 | 0x81618D48 | size: 0x10
.obj DAYS_OF_MONTH, local
	.4byte 0x1F1C1F1E
	.4byte 0x1F1E1F1F
	.4byte 0x1E1F1E1F
	.4byte 0x00000000
.endobj DAYS_OF_MONTH

# .rodata:0x10 | 0x81618D58 | size: 0x18
.obj DAYS_OF_YEAR, local
	.4byte 0x0000001F
	.4byte 0x003B005A
	.4byte 0x00780097
	.4byte 0x00B500D4
	.4byte 0x00F30111
	.4byte 0x0130014E
.endobj DAYS_OF_YEAR

# .rodata:0x28 | 0x81618D70 | size: 0x10
.obj specials$2166, global
	.byte 0x28, 0x29, 0x3C, 0x3E, 0x5B, 0x5D, 0x3A, 0x3B
	.byte 0x5C, 0x2C, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00
.endobj specials$2166
