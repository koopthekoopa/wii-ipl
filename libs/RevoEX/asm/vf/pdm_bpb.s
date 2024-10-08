.include "macros.inc"
.file "pdm_bpb.c"

# 0x814B6CAC..0x814B7610 | size: 0x964
.text
.balign 4

# .text:0x0 | 0x814B6CAC | size: 0x114
.fn VFipdm_bpb_calculate_common_bpb_fields, global
/* 814B6CAC | 38 00 00 00 */	li r0, 0x0
/* 814B6CB0 | A0 A3 00 08 */	lhz r5, 0x8(r3)
/* 814B6CB4 | 98 03 00 54 */	stb r0, 0x54(r3)
/* 814B6CB8 | 48 00 00 10 */	b .L_814B6CC8
.L_814B6CBC:
/* 814B6CBC | 88 83 00 54 */	lbz r4, 0x54(r3)
/* 814B6CC0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814B6CC4 | 98 03 00 54 */	stb r0, 0x54(r3)
.L_814B6CC8:
/* 814B6CC8 | 54 A5 FC 7F */	extrwi. r5, r5, 15, 16
/* 814B6CCC | 40 82 FF F0 */	bne .L_814B6CBC
/* 814B6CD0 | 38 00 00 00 */	li r0, 0x0
/* 814B6CD4 | 88 A3 00 0A */	lbz r5, 0xa(r3)
/* 814B6CD8 | 98 03 00 55 */	stb r0, 0x55(r3)
/* 814B6CDC | 48 00 00 10 */	b .L_814B6CEC
.L_814B6CE0:
/* 814B6CE0 | 88 83 00 55 */	lbz r4, 0x55(r3)
/* 814B6CE4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814B6CE8 | 98 03 00 55 */	stb r0, 0x55(r3)
.L_814B6CEC:
/* 814B6CEC | 54 A5 FC 7F */	extrwi. r5, r5, 15, 16
/* 814B6CF0 | 40 82 FF F0 */	bne .L_814B6CE0
/* 814B6CF4 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 814B6CF8 | A0 83 00 08 */	lhz r4, 0x8(r3)
/* 814B6CFC | 54 05 28 34 */	slwi r5, r0, 5
/* 814B6D00 | 88 03 00 0B */	lbz r0, 0xb(r3)
/* 814B6D04 | 80 E3 00 6C */	lwz r7, 0x6c(r3)
/* 814B6D08 | 7C 84 2A 14 */	add r4, r4, r5
/* 814B6D0C | 89 43 00 54 */	lbz r10, 0x54(r3)
/* 814B6D10 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814B6D14 | 7C C0 39 D6 */	mullw r6, r0, r7
/* 814B6D18 | A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 814B6D1C | 7C 89 56 30 */	sraw r9, r4, r10
/* 814B6D20 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 814B6D24 | 88 03 00 55 */	lbz r0, 0x55(r3)
/* 814B6D28 | 55 28 04 3E */	clrlwi r8, r9, 16
/* 814B6D2C | 7C A8 2A 14 */	add r5, r8, r5
/* 814B6D30 | B1 23 00 56 */	sth r9, 0x56(r3)
/* 814B6D34 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B6D38 | 7C 85 20 50 */	subf r4, r5, r4
/* 814B6D3C | 90 A3 00 60 */	stw r5, 0x60(r3)
/* 814B6D40 | 7C 80 04 30 */	srw r0, r4, r0
/* 814B6D44 | 28 00 0F F5 */	cmplwi r0, 0xff5
/* 814B6D48 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 814B6D4C | 40 80 00 2C */	bge .L_814B6D78
/* 814B6D50 | 7C E0 50 30 */	slw r0, r7, r10
/* 814B6D54 | 3C 80 AA AB */	lis r4, 0xaaab
/* 814B6D58 | 54 00 08 3C */	slwi r0, r0, 1
/* 814B6D5C | 38 A0 00 00 */	li r5, 0x0
/* 814B6D60 | 38 84 AA AB */	subi r4, r4, 0x5555
/* 814B6D64 | 90 A3 00 50 */	stw r5, 0x50(r3)
/* 814B6D68 | 7C 04 00 16 */	mulhwu r0, r4, r0
/* 814B6D6C | 54 04 F8 7E */	srwi r4, r0, 1
/* 814B6D70 | 38 84 FF FE */	subi r4, r4, 0x2
/* 814B6D74 | 48 00 00 38 */	b .L_814B6DAC
.L_814B6D78:
/* 814B6D78 | 28 00 FF F5 */	cmplwi r0, 0xfff5
/* 814B6D7C | 40 80 00 1C */	bge .L_814B6D98
/* 814B6D80 | 7C E0 50 30 */	slw r0, r7, r10
/* 814B6D84 | 38 A0 00 01 */	li r5, 0x1
/* 814B6D88 | 54 04 F8 7E */	srwi r4, r0, 1
/* 814B6D8C | 90 A3 00 50 */	stw r5, 0x50(r3)
/* 814B6D90 | 38 84 FF FE */	subi r4, r4, 0x2
/* 814B6D94 | 48 00 00 18 */	b .L_814B6DAC
.L_814B6D98:
/* 814B6D98 | 7C E0 50 30 */	slw r0, r7, r10
/* 814B6D9C | 38 A0 00 02 */	li r5, 0x2
/* 814B6DA0 | 54 04 F0 BE */	srwi r4, r0, 2
/* 814B6DA4 | 90 A3 00 50 */	stw r5, 0x50(r3)
/* 814B6DA8 | 38 84 FF FE */	subi r4, r4, 0x2
.L_814B6DAC:
/* 814B6DAC | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 814B6DB0 | 7C 00 20 40 */	cmplw r0, r4
/* 814B6DB4 | 4C 81 00 20 */	blelr
/* 814B6DB8 | 90 83 00 64 */	stw r4, 0x64(r3)
/* 814B6DBC | 4E 80 00 20 */	blr
.endfn VFipdm_bpb_calculate_common_bpb_fields

# .text:0x114 | 0x814B6DC0 | size: 0x538
.fn VFipdm_bpb_get_bpb_information, global
/* 814B6DC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B6DC4 | 7C 08 02 A6 */	mflr r0
/* 814B6DC8 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814B6DCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B6DD0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B6DD4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B6DD8 | 7C 9E 23 78 */	mr r30, r4
/* 814B6DDC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B6DE0 | 7C 7D 1B 78 */	mr r29, r3
/* 814B6DE4 | 41 86 00 0C */	beq cr1, .L_814B6DF0
/* 814B6DE8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B6DEC | 40 82 00 0C */	bne .L_814B6DF8
.L_814B6DF0:
/* 814B6DF0 | 38 60 00 01 */	li r3, 0x1
/* 814B6DF4 | 48 00 04 E8 */	b .L_814B72DC
.L_814B6DF8:
/* 814B6DF8 | 3B E0 00 00 */	li r31, 0x0
/* 814B6DFC | 41 86 00 24 */	beq cr1, .L_814B6E20
/* 814B6E00 | 34 04 00 4C */	addic. r0, r4, 0x4c
/* 814B6E04 | 41 82 00 1C */	beq .L_814B6E20
/* 814B6E08 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814B6E0C | 98 04 00 4C */	stb r0, 0x4c(r4)
/* 814B6E10 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814B6E14 | 98 04 00 4D */	stb r0, 0x4d(r4)
/* 814B6E18 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 814B6E1C | 98 04 00 4E */	stb r0, 0x4e(r4)
.L_814B6E20:
/* 814B6E20 | 34 03 00 03 */	addic. r0, r3, 0x3
/* 814B6E24 | 41 82 00 4C */	beq .L_814B6E70
/* 814B6E28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B6E2C | 41 82 00 44 */	beq .L_814B6E70
/* 814B6E30 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 814B6E34 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814B6E38 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 814B6E3C | 98 04 00 01 */	stb r0, 0x1(r4)
/* 814B6E40 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 814B6E44 | 98 04 00 02 */	stb r0, 0x2(r4)
/* 814B6E48 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 814B6E4C | 98 04 00 03 */	stb r0, 0x3(r4)
/* 814B6E50 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 814B6E54 | 98 04 00 04 */	stb r0, 0x4(r4)
/* 814B6E58 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 814B6E5C | 98 04 00 05 */	stb r0, 0x5(r4)
/* 814B6E60 | 88 03 00 09 */	lbz r0, 0x9(r3)
/* 814B6E64 | 98 04 00 06 */	stb r0, 0x6(r4)
/* 814B6E68 | 88 03 00 0A */	lbz r0, 0xa(r3)
/* 814B6E6C | 98 04 00 07 */	stb r0, 0x7(r4)
.L_814B6E70:
/* 814B6E70 | 88 A3 00 0C */	lbz r5, 0xc(r3)
/* 814B6E74 | 88 03 00 0B */	lbz r0, 0xb(r3)
/* 814B6E78 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6E7C | B0 04 00 08 */	sth r0, 0x8(r4)
/* 814B6E80 | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 814B6E84 | 98 04 00 0A */	stb r0, 0xa(r4)
/* 814B6E88 | 88 A3 00 0F */	lbz r5, 0xf(r3)
/* 814B6E8C | 88 03 00 0E */	lbz r0, 0xe(r3)
/* 814B6E90 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6E94 | B0 04 00 0C */	sth r0, 0xc(r4)
/* 814B6E98 | 88 03 00 10 */	lbz r0, 0x10(r3)
/* 814B6E9C | 98 04 00 0B */	stb r0, 0xb(r4)
/* 814B6EA0 | 88 A3 00 12 */	lbz r5, 0x12(r3)
/* 814B6EA4 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 814B6EA8 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6EAC | B0 04 00 0E */	sth r0, 0xe(r4)
/* 814B6EB0 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814B6EB4 | 88 E3 00 13 */	lbz r7, 0x13(r3)
/* 814B6EB8 | 50 07 44 2F */	rlwimi. r7, r0, 8, 16, 23
/* 814B6EBC | B0 E4 00 10 */	sth r7, 0x10(r4)
/* 814B6EC0 | 88 03 00 15 */	lbz r0, 0x15(r3)
/* 814B6EC4 | 98 04 00 22 */	stb r0, 0x22(r4)
/* 814B6EC8 | 88 A3 00 17 */	lbz r5, 0x17(r3)
/* 814B6ECC | 88 03 00 16 */	lbz r0, 0x16(r3)
/* 814B6ED0 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6ED4 | B0 04 00 12 */	sth r0, 0x12(r4)
/* 814B6ED8 | 88 A3 00 19 */	lbz r5, 0x19(r3)
/* 814B6EDC | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 814B6EE0 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6EE4 | B0 04 00 14 */	sth r0, 0x14(r4)
/* 814B6EE8 | 88 A3 00 1B */	lbz r5, 0x1b(r3)
/* 814B6EEC | 88 03 00 1A */	lbz r0, 0x1a(r3)
/* 814B6EF0 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6EF4 | B0 04 00 20 */	sth r0, 0x20(r4)
/* 814B6EF8 | 88 A3 00 1D */	lbz r5, 0x1d(r3)
/* 814B6EFC | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 814B6F00 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6F04 | 88 C3 00 1E */	lbz r6, 0x1e(r3)
/* 814B6F08 | 88 A3 00 1F */	lbz r5, 0x1f(r3)
/* 814B6F0C | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814B6F10 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
/* 814B6F14 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814B6F18 | 88 A3 00 21 */	lbz r5, 0x21(r3)
/* 814B6F1C | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814B6F20 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6F24 | 88 C3 00 22 */	lbz r6, 0x22(r3)
/* 814B6F28 | 88 A3 00 23 */	lbz r5, 0x23(r3)
/* 814B6F2C | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814B6F30 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
/* 814B6F34 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814B6F38 | 40 82 00 08 */	bne .L_814B6F40
/* 814B6F3C | 48 00 00 08 */	b .L_814B6F44
.L_814B6F40:
/* 814B6F40 | 54 E0 04 3E */	clrlwi r0, r7, 16
.L_814B6F44:
/* 814B6F44 | A0 A4 00 12 */	lhz r5, 0x12(r4)
/* 814B6F48 | 90 04 00 68 */	stw r0, 0x68(r4)
/* 814B6F4C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B6F50 | 40 82 00 2C */	bne .L_814B6F7C
/* 814B6F54 | 88 A3 00 25 */	lbz r5, 0x25(r3)
/* 814B6F58 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 814B6F5C | 88 C3 00 26 */	lbz r6, 0x26(r3)
/* 814B6F60 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B6F64 | 88 63 00 27 */	lbz r3, 0x27(r3)
/* 814B6F68 | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814B6F6C | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 814B6F70 | 90 04 00 3C */	stw r0, 0x3c(r4)
/* 814B6F74 | 90 04 00 6C */	stw r0, 0x6c(r4)
/* 814B6F78 | 48 00 00 10 */	b .L_814B6F88
.L_814B6F7C:
/* 814B6F7C | 38 00 00 00 */	li r0, 0x0
/* 814B6F80 | 90 A4 00 6C */	stw r5, 0x6c(r4)
/* 814B6F84 | 90 04 00 3C */	stw r0, 0x3c(r4)
.L_814B6F88:
/* 814B6F88 | 7F C3 F3 78 */	mr r3, r30
/* 814B6F8C | 4B FF FD 21 */	bl VFipdm_bpb_calculate_common_bpb_fields
/* 814B6F90 | 80 1E 00 50 */	lwz r0, 0x50(r30)
/* 814B6F94 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814B6F98 | 41 82 01 28 */	beq .L_814B70C0
/* 814B6F9C | 40 80 02 9C */	bge .L_814B7238
/* 814B6FA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6FA4 | 40 80 00 08 */	bge .L_814B6FAC
/* 814B6FA8 | 48 00 02 90 */	b .L_814B7238
.L_814B6FAC:
/* 814B6FAC | A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 814B6FB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6FB4 | 40 82 00 08 */	bne .L_814B6FBC
/* 814B6FB8 | 3B E0 00 04 */	li r31, 0x4
.L_814B6FBC:
/* 814B6FBC | 38 60 00 00 */	li r3, 0x0
/* 814B6FC0 | 34 1D 00 2B */	addic. r0, r29, 0x2b
/* 814B6FC4 | B0 7E 00 40 */	sth r3, 0x40(r30)
/* 814B6FC8 | B0 7E 00 42 */	sth r3, 0x42(r30)
/* 814B6FCC | 90 7E 00 44 */	stw r3, 0x44(r30)
/* 814B6FD0 | B0 7E 00 48 */	sth r3, 0x48(r30)
/* 814B6FD4 | B0 7E 00 4A */	sth r3, 0x4a(r30)
/* 814B6FD8 | 88 1D 00 24 */	lbz r0, 0x24(r29)
/* 814B6FDC | 98 1E 00 23 */	stb r0, 0x23(r30)
/* 814B6FE0 | 88 1D 00 26 */	lbz r0, 0x26(r29)
/* 814B6FE4 | 98 1E 00 28 */	stb r0, 0x28(r30)
/* 814B6FE8 | 88 7D 00 28 */	lbz r3, 0x28(r29)
/* 814B6FEC | 88 1D 00 27 */	lbz r0, 0x27(r29)
/* 814B6FF0 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B6FF4 | 88 9D 00 29 */	lbz r4, 0x29(r29)
/* 814B6FF8 | 88 7D 00 2A */	lbz r3, 0x2a(r29)
/* 814B6FFC | 50 80 82 1E */	rlwimi r0, r4, 16, 8, 15
/* 814B7000 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 814B7004 | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 814B7008 | 41 82 00 64 */	beq .L_814B706C
/* 814B700C | 34 1E 00 29 */	addic. r0, r30, 0x29
/* 814B7010 | 41 82 00 5C */	beq .L_814B706C
/* 814B7014 | 88 1D 00 2B */	lbz r0, 0x2b(r29)
/* 814B7018 | 98 1E 00 29 */	stb r0, 0x29(r30)
/* 814B701C | 88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 814B7020 | 98 1E 00 2A */	stb r0, 0x2a(r30)
/* 814B7024 | 88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 814B7028 | 98 1E 00 2B */	stb r0, 0x2b(r30)
/* 814B702C | 88 1D 00 2E */	lbz r0, 0x2e(r29)
/* 814B7030 | 98 1E 00 2C */	stb r0, 0x2c(r30)
/* 814B7034 | 88 1D 00 2F */	lbz r0, 0x2f(r29)
/* 814B7038 | 98 1E 00 2D */	stb r0, 0x2d(r30)
/* 814B703C | 88 1D 00 30 */	lbz r0, 0x30(r29)
/* 814B7040 | 98 1E 00 2E */	stb r0, 0x2e(r30)
/* 814B7044 | 88 1D 00 31 */	lbz r0, 0x31(r29)
/* 814B7048 | 98 1E 00 2F */	stb r0, 0x2f(r30)
/* 814B704C | 88 1D 00 32 */	lbz r0, 0x32(r29)
/* 814B7050 | 98 1E 00 30 */	stb r0, 0x30(r30)
/* 814B7054 | 88 1D 00 33 */	lbz r0, 0x33(r29)
/* 814B7058 | 98 1E 00 31 */	stb r0, 0x31(r30)
/* 814B705C | 88 1D 00 34 */	lbz r0, 0x34(r29)
/* 814B7060 | 98 1E 00 32 */	stb r0, 0x32(r30)
/* 814B7064 | 88 1D 00 35 */	lbz r0, 0x35(r29)
/* 814B7068 | 98 1E 00 33 */	stb r0, 0x33(r30)
.L_814B706C:
/* 814B706C | 34 1D 00 36 */	addic. r0, r29, 0x36
/* 814B7070 | 41 82 01 CC */	beq .L_814B723C
/* 814B7074 | 34 1E 00 34 */	addic. r0, r30, 0x34
/* 814B7078 | 41 82 01 C4 */	beq .L_814B723C
/* 814B707C | 88 1D 00 36 */	lbz r0, 0x36(r29)
/* 814B7080 | 98 1E 00 34 */	stb r0, 0x34(r30)
/* 814B7084 | 88 1D 00 37 */	lbz r0, 0x37(r29)
/* 814B7088 | 98 1E 00 35 */	stb r0, 0x35(r30)
/* 814B708C | 88 1D 00 38 */	lbz r0, 0x38(r29)
/* 814B7090 | 98 1E 00 36 */	stb r0, 0x36(r30)
/* 814B7094 | 88 1D 00 39 */	lbz r0, 0x39(r29)
/* 814B7098 | 98 1E 00 37 */	stb r0, 0x37(r30)
/* 814B709C | 88 1D 00 3A */	lbz r0, 0x3a(r29)
/* 814B70A0 | 98 1E 00 38 */	stb r0, 0x38(r30)
/* 814B70A4 | 88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 814B70A8 | 98 1E 00 39 */	stb r0, 0x39(r30)
/* 814B70AC | 88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 814B70B0 | 98 1E 00 3A */	stb r0, 0x3a(r30)
/* 814B70B4 | 88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 814B70B8 | 98 1E 00 3B */	stb r0, 0x3b(r30)
/* 814B70BC | 48 00 01 80 */	b .L_814B723C
.L_814B70C0:
/* 814B70C0 | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 814B70C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B70C8 | 40 82 00 10 */	bne .L_814B70D8
/* 814B70CC | A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 814B70D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B70D4 | 41 82 00 08 */	beq .L_814B70DC
.L_814B70D8:
/* 814B70D8 | 3B E0 00 04 */	li r31, 0x4
.L_814B70DC:
/* 814B70DC | 34 1D 00 47 */	addic. r0, r29, 0x47
/* 814B70E0 | 88 7D 00 29 */	lbz r3, 0x29(r29)
/* 814B70E4 | 88 1D 00 28 */	lbz r0, 0x28(r29)
/* 814B70E8 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B70EC | B0 1E 00 40 */	sth r0, 0x40(r30)
/* 814B70F0 | 88 7D 00 2B */	lbz r3, 0x2b(r29)
/* 814B70F4 | 88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 814B70F8 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B70FC | B0 1E 00 42 */	sth r0, 0x42(r30)
/* 814B7100 | 88 7D 00 2D */	lbz r3, 0x2d(r29)
/* 814B7104 | 88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 814B7108 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B710C | 88 9D 00 2E */	lbz r4, 0x2e(r29)
/* 814B7110 | 88 7D 00 2F */	lbz r3, 0x2f(r29)
/* 814B7114 | 50 80 82 1E */	rlwimi r0, r4, 16, 8, 15
/* 814B7118 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 814B711C | 90 1E 00 44 */	stw r0, 0x44(r30)
/* 814B7120 | 88 7D 00 31 */	lbz r3, 0x31(r29)
/* 814B7124 | 88 1D 00 30 */	lbz r0, 0x30(r29)
/* 814B7128 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B712C | B0 1E 00 48 */	sth r0, 0x48(r30)
/* 814B7130 | 88 7D 00 33 */	lbz r3, 0x33(r29)
/* 814B7134 | 88 1D 00 32 */	lbz r0, 0x32(r29)
/* 814B7138 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B713C | B0 1E 00 4A */	sth r0, 0x4a(r30)
/* 814B7140 | 88 1D 00 40 */	lbz r0, 0x40(r29)
/* 814B7144 | 98 1E 00 23 */	stb r0, 0x23(r30)
/* 814B7148 | 88 1D 00 42 */	lbz r0, 0x42(r29)
/* 814B714C | 98 1E 00 28 */	stb r0, 0x28(r30)
/* 814B7150 | 88 7D 00 44 */	lbz r3, 0x44(r29)
/* 814B7154 | 88 1D 00 43 */	lbz r0, 0x43(r29)
/* 814B7158 | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 814B715C | 88 9D 00 45 */	lbz r4, 0x45(r29)
/* 814B7160 | 88 7D 00 46 */	lbz r3, 0x46(r29)
/* 814B7164 | 50 80 82 1E */	rlwimi r0, r4, 16, 8, 15
/* 814B7168 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 814B716C | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 814B7170 | 41 82 00 64 */	beq .L_814B71D4
/* 814B7174 | 34 1E 00 29 */	addic. r0, r30, 0x29
/* 814B7178 | 41 82 00 5C */	beq .L_814B71D4
/* 814B717C | 88 1D 00 47 */	lbz r0, 0x47(r29)
/* 814B7180 | 98 1E 00 29 */	stb r0, 0x29(r30)
/* 814B7184 | 88 1D 00 48 */	lbz r0, 0x48(r29)
/* 814B7188 | 98 1E 00 2A */	stb r0, 0x2a(r30)
/* 814B718C | 88 1D 00 49 */	lbz r0, 0x49(r29)
/* 814B7190 | 98 1E 00 2B */	stb r0, 0x2b(r30)
/* 814B7194 | 88 1D 00 4A */	lbz r0, 0x4a(r29)
/* 814B7198 | 98 1E 00 2C */	stb r0, 0x2c(r30)
/* 814B719C | 88 1D 00 4B */	lbz r0, 0x4b(r29)
/* 814B71A0 | 98 1E 00 2D */	stb r0, 0x2d(r30)
/* 814B71A4 | 88 1D 00 4C */	lbz r0, 0x4c(r29)
/* 814B71A8 | 98 1E 00 2E */	stb r0, 0x2e(r30)
/* 814B71AC | 88 1D 00 4D */	lbz r0, 0x4d(r29)
/* 814B71B0 | 98 1E 00 2F */	stb r0, 0x2f(r30)
/* 814B71B4 | 88 1D 00 4E */	lbz r0, 0x4e(r29)
/* 814B71B8 | 98 1E 00 30 */	stb r0, 0x30(r30)
/* 814B71BC | 88 1D 00 4F */	lbz r0, 0x4f(r29)
/* 814B71C0 | 98 1E 00 31 */	stb r0, 0x31(r30)
/* 814B71C4 | 88 1D 00 50 */	lbz r0, 0x50(r29)
/* 814B71C8 | 98 1E 00 32 */	stb r0, 0x32(r30)
/* 814B71CC | 88 1D 00 51 */	lbz r0, 0x51(r29)
/* 814B71D0 | 98 1E 00 33 */	stb r0, 0x33(r30)
.L_814B71D4:
/* 814B71D4 | 34 1D 00 52 */	addic. r0, r29, 0x52
/* 814B71D8 | 41 82 00 4C */	beq .L_814B7224
/* 814B71DC | 34 1E 00 34 */	addic. r0, r30, 0x34
/* 814B71E0 | 41 82 00 44 */	beq .L_814B7224
/* 814B71E4 | 88 1D 00 52 */	lbz r0, 0x52(r29)
/* 814B71E8 | 98 1E 00 34 */	stb r0, 0x34(r30)
/* 814B71EC | 88 1D 00 53 */	lbz r0, 0x53(r29)
/* 814B71F0 | 98 1E 00 35 */	stb r0, 0x35(r30)
/* 814B71F4 | 88 1D 00 54 */	lbz r0, 0x54(r29)
/* 814B71F8 | 98 1E 00 36 */	stb r0, 0x36(r30)
/* 814B71FC | 88 1D 00 55 */	lbz r0, 0x55(r29)
/* 814B7200 | 98 1E 00 37 */	stb r0, 0x37(r30)
/* 814B7204 | 88 1D 00 56 */	lbz r0, 0x56(r29)
/* 814B7208 | 98 1E 00 38 */	stb r0, 0x38(r30)
/* 814B720C | 88 1D 00 57 */	lbz r0, 0x57(r29)
/* 814B7210 | 98 1E 00 39 */	stb r0, 0x39(r30)
/* 814B7214 | 88 1D 00 58 */	lbz r0, 0x58(r29)
/* 814B7218 | 98 1E 00 3A */	stb r0, 0x3a(r30)
/* 814B721C | 88 1D 00 59 */	lbz r0, 0x59(r29)
/* 814B7220 | 98 1E 00 3B */	stb r0, 0x3b(r30)
.L_814B7224:
/* 814B7224 | A0 1E 00 42 */	lhz r0, 0x42(r30)
/* 814B7228 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B722C | 41 82 00 10 */	beq .L_814B723C
/* 814B7230 | 3B E0 00 04 */	li r31, 0x4
/* 814B7234 | 48 00 00 08 */	b .L_814B723C
.L_814B7238:
/* 814B7238 | 3B E0 00 04 */	li r31, 0x4
.L_814B723C:
/* 814B723C | 80 1E 00 50 */	lwz r0, 0x50(r30)
/* 814B7240 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814B7244 | 41 82 00 38 */	beq .L_814B727C
/* 814B7248 | 40 80 00 90 */	bge .L_814B72D8
/* 814B724C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B7250 | 40 80 00 08 */	bge .L_814B7258
/* 814B7254 | 48 00 00 84 */	b .L_814B72D8
.L_814B7258:
/* 814B7258 | 88 7E 00 0B */	lbz r3, 0xb(r30)
/* 814B725C | 80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 814B7260 | A0 9E 00 0C */	lhz r4, 0xc(r30)
/* 814B7264 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 814B7268 | 98 7E 00 4F */	stb r3, 0x4f(r30)
/* 814B726C | 90 9E 00 58 */	stw r4, 0x58(r30)
/* 814B7270 | 7C 04 02 14 */	add r0, r4, r0
/* 814B7274 | 90 1E 00 5C */	stw r0, 0x5c(r30)
/* 814B7278 | 48 00 00 60 */	b .L_814B72D8
.L_814B727C:
/* 814B727C | A0 7E 00 40 */	lhz r3, 0x40(r30)
/* 814B7280 | 80 BE 00 44 */	lwz r5, 0x44(r30)
/* 814B7284 | 88 9E 00 55 */	lbz r4, 0x55(r30)
/* 814B7288 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 814B728C | 38 A5 FF FE */	subi r5, r5, 0x2
/* 814B7290 | 80 DE 00 60 */	lwz r6, 0x60(r30)
/* 814B7294 | 7C A0 20 30 */	slw r0, r5, r4
/* 814B7298 | 7C 06 02 14 */	add r0, r6, r0
/* 814B729C | 90 1E 00 5C */	stw r0, 0x5c(r30)
/* 814B72A0 | 41 82 00 28 */	beq .L_814B72C8
/* 814B72A4 | 80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 814B72A8 | 54 63 07 7E */	clrlwi r3, r3, 29
/* 814B72AC | 38 A0 00 01 */	li r5, 0x1
/* 814B72B0 | A0 9E 00 0C */	lhz r4, 0xc(r30)
/* 814B72B4 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 814B72B8 | 98 BE 00 4F */	stb r5, 0x4f(r30)
/* 814B72BC | 7C 04 02 14 */	add r0, r4, r0
/* 814B72C0 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 814B72C4 | 48 00 00 14 */	b .L_814B72D8
.L_814B72C8:
/* 814B72C8 | 88 7E 00 0B */	lbz r3, 0xb(r30)
/* 814B72CC | A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 814B72D0 | 98 7E 00 4F */	stb r3, 0x4f(r30)
/* 814B72D4 | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_814B72D8:
/* 814B72D8 | 7F E3 FB 78 */	mr r3, r31
.L_814B72DC:
/* 814B72DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B72E0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B72E4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B72E8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B72EC | 7C 08 03 A6 */	mtlr r0
/* 814B72F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B72F4 | 4E 80 00 20 */	blr
.endfn VFipdm_bpb_get_bpb_information

# .text:0x64C | 0x814B72F8 | size: 0x60
.fn VFipdm_bpb_get_fsinfo_information, global
/* 814B72F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B72FC | 41 82 00 0C */	beq .L_814B7308
/* 814B7300 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B7304 | 40 82 00 0C */	bne .L_814B7310
.L_814B7308:
/* 814B7308 | 38 60 00 01 */	li r3, 0x1
/* 814B730C | 4E 80 00 20 */	blr
.L_814B7310:
/* 814B7310 | 88 A3 01 E9 */	lbz r5, 0x1e9(r3)
/* 814B7314 | 88 03 01 E8 */	lbz r0, 0x1e8(r3)
/* 814B7318 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B731C | 88 C3 01 EA */	lbz r6, 0x1ea(r3)
/* 814B7320 | 88 A3 01 EB */	lbz r5, 0x1eb(r3)
/* 814B7324 | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814B7328 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
/* 814B732C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B7330 | 88 C3 01 EE */	lbz r6, 0x1ee(r3)
/* 814B7334 | 88 A3 01 ED */	lbz r5, 0x1ed(r3)
/* 814B7338 | 88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 814B733C | 88 E3 01 EF */	lbz r7, 0x1ef(r3)
/* 814B7340 | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B7344 | 50 C0 82 1E */	rlwimi r0, r6, 16, 8, 15
/* 814B7348 | 38 60 00 00 */	li r3, 0x0
/* 814B734C | 50 E0 C0 0E */	rlwimi r0, r7, 24, 0, 7
/* 814B7350 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814B7354 | 4E 80 00 20 */	blr
.endfn VFipdm_bpb_get_fsinfo_information

# .text:0x6AC | 0x814B7358 | size: 0xC4
.fn VFipdm_bpb_set_fsinfo_information, global
/* 814B7358 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B735C | 41 82 00 0C */	beq .L_814B7368
/* 814B7360 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7364 | 40 82 00 0C */	bne .L_814B7370
.L_814B7368:
/* 814B7368 | 38 60 00 01 */	li r3, 0x1
/* 814B736C | 4E 80 00 20 */	blr
.L_814B7370:
/* 814B7370 | 39 40 00 52 */	li r10, 0x52
/* 814B7374 | 39 20 00 61 */	li r9, 0x61
/* 814B7378 | 39 00 00 41 */	li r8, 0x41
/* 814B737C | 38 E0 00 72 */	li r7, 0x72
/* 814B7380 | 99 44 00 00 */	stb r10, 0x0(r4)
/* 814B7384 | 38 C0 00 00 */	li r6, 0x0
/* 814B7388 | 38 A0 00 55 */	li r5, 0x55
/* 814B738C | 38 00 00 AA */	li r0, 0xaa
/* 814B7390 | 99 44 00 01 */	stb r10, 0x1(r4)
/* 814B7394 | 99 24 00 02 */	stb r9, 0x2(r4)
/* 814B7398 | 99 04 00 03 */	stb r8, 0x3(r4)
/* 814B739C | 98 E4 01 E4 */	stb r7, 0x1e4(r4)
/* 814B73A0 | 98 E4 01 E5 */	stb r7, 0x1e5(r4)
/* 814B73A4 | 99 04 01 E6 */	stb r8, 0x1e6(r4)
/* 814B73A8 | 99 24 01 E7 */	stb r9, 0x1e7(r4)
/* 814B73AC | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 814B73B0 | 98 E4 01 E8 */	stb r7, 0x1e8(r4)
/* 814B73B4 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 814B73B8 | 54 E7 C6 3E */	extrwi r7, r7, 8, 16
/* 814B73BC | 98 E4 01 E9 */	stb r7, 0x1e9(r4)
/* 814B73C0 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 814B73C4 | 54 E7 86 3E */	extrwi r7, r7, 8, 8
/* 814B73C8 | 98 E4 01 EA */	stb r7, 0x1ea(r4)
/* 814B73CC | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 814B73D0 | 54 E7 46 3E */	srwi r7, r7, 24
/* 814B73D4 | 98 E4 01 EB */	stb r7, 0x1eb(r4)
/* 814B73D8 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814B73DC | 98 E4 01 EC */	stb r7, 0x1ec(r4)
/* 814B73E0 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814B73E4 | 54 E7 C6 3E */	extrwi r7, r7, 8, 16
/* 814B73E8 | 98 E4 01 ED */	stb r7, 0x1ed(r4)
/* 814B73EC | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814B73F0 | 54 E7 86 3E */	extrwi r7, r7, 8, 8
/* 814B73F4 | 98 E4 01 EE */	stb r7, 0x1ee(r4)
/* 814B73F8 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814B73FC | 38 60 00 00 */	li r3, 0x0
/* 814B7400 | 54 E7 46 3E */	srwi r7, r7, 24
/* 814B7404 | 98 C4 01 FC */	stb r6, 0x1fc(r4)
/* 814B7408 | 98 E4 01 EF */	stb r7, 0x1ef(r4)
/* 814B740C | 98 C4 01 FD */	stb r6, 0x1fd(r4)
/* 814B7410 | 98 A4 01 FE */	stb r5, 0x1fe(r4)
/* 814B7414 | 98 04 01 FF */	stb r0, 0x1ff(r4)
/* 814B7418 | 4E 80 00 20 */	blr
.endfn VFipdm_bpb_set_fsinfo_information

# .text:0x770 | 0x814B741C | size: 0x148
.fn VFipdm_bpb_check_boot_sector, global
/* 814B741C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7420 | 41 82 00 0C */	beq .L_814B742C
/* 814B7424 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B7428 | 40 82 00 0C */	bne .L_814B7434
.L_814B742C:
/* 814B742C | 38 60 00 01 */	li r3, 0x1
/* 814B7430 | 4E 80 00 20 */	blr
.L_814B7434:
/* 814B7434 | 38 00 00 01 */	li r0, 0x1
/* 814B7438 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B743C | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 814B7440 | 28 05 00 EB */	cmplwi r5, 0xeb
/* 814B7444 | 40 82 00 10 */	bne .L_814B7454
/* 814B7448 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 814B744C | 28 00 00 90 */	cmplwi r0, 0x90
/* 814B7450 | 41 82 00 14 */	beq .L_814B7464
.L_814B7454:
/* 814B7454 | 28 05 00 E9 */	cmplwi r5, 0xe9
/* 814B7458 | 41 82 00 0C */	beq .L_814B7464
/* 814B745C | 38 00 00 00 */	li r0, 0x0
/* 814B7460 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B7464:
/* 814B7464 | 88 03 01 FE */	lbz r0, 0x1fe(r3)
/* 814B7468 | 28 00 00 55 */	cmplwi r0, 0x55
/* 814B746C | 40 82 00 10 */	bne .L_814B747C
/* 814B7470 | 88 03 01 FF */	lbz r0, 0x1ff(r3)
/* 814B7474 | 28 00 00 AA */	cmplwi r0, 0xaa
/* 814B7478 | 41 82 00 0C */	beq .L_814B7484
.L_814B747C:
/* 814B747C | 38 00 00 00 */	li r0, 0x0
/* 814B7480 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B7484:
/* 814B7484 | 88 A3 00 0C */	lbz r5, 0xc(r3)
/* 814B7488 | 88 03 00 0B */	lbz r0, 0xb(r3)
/* 814B748C | 50 A0 44 2E */	rlwimi r0, r5, 8, 16, 23
/* 814B7490 | 28 00 02 00 */	cmplwi r0, 0x200
/* 814B7494 | 41 82 00 28 */	beq .L_814B74BC
/* 814B7498 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814B749C | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B74A0 | 41 82 00 1C */	beq .L_814B74BC
/* 814B74A4 | 28 00 08 00 */	cmplwi r0, 0x800
/* 814B74A8 | 41 82 00 14 */	beq .L_814B74BC
/* 814B74AC | 28 00 10 00 */	cmplwi r0, 0x1000
/* 814B74B0 | 41 82 00 0C */	beq .L_814B74BC
/* 814B74B4 | 38 00 00 00 */	li r0, 0x0
/* 814B74B8 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B74BC:
/* 814B74BC | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 814B74C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B74C4 | 41 82 00 44 */	beq .L_814B7508
/* 814B74C8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814B74CC | 41 82 00 3C */	beq .L_814B7508
/* 814B74D0 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814B74D4 | 41 82 00 34 */	beq .L_814B7508
/* 814B74D8 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B74DC | 41 82 00 2C */	beq .L_814B7508
/* 814B74E0 | 28 00 00 10 */	cmplwi r0, 0x10
/* 814B74E4 | 41 82 00 24 */	beq .L_814B7508
/* 814B74E8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814B74EC | 41 82 00 1C */	beq .L_814B7508
/* 814B74F0 | 28 00 00 40 */	cmplwi r0, 0x40
/* 814B74F4 | 41 82 00 14 */	beq .L_814B7508
/* 814B74F8 | 28 00 00 80 */	cmplwi r0, 0x80
/* 814B74FC | 41 82 00 0C */	beq .L_814B7508
/* 814B7500 | 38 00 00 00 */	li r0, 0x0
/* 814B7504 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B7508:
/* 814B7508 | 88 03 00 15 */	lbz r0, 0x15(r3)
/* 814B750C | 28 00 00 F0 */	cmplwi r0, 0xf0
/* 814B7510 | 41 82 00 4C */	beq .L_814B755C
/* 814B7514 | 28 00 00 F8 */	cmplwi r0, 0xf8
/* 814B7518 | 41 82 00 44 */	beq .L_814B755C
/* 814B751C | 28 00 00 F9 */	cmplwi r0, 0xf9
/* 814B7520 | 41 82 00 3C */	beq .L_814B755C
/* 814B7524 | 28 00 00 FA */	cmplwi r0, 0xfa
/* 814B7528 | 41 82 00 34 */	beq .L_814B755C
/* 814B752C | 28 00 00 FB */	cmplwi r0, 0xfb
/* 814B7530 | 41 82 00 2C */	beq .L_814B755C
/* 814B7534 | 28 00 00 FC */	cmplwi r0, 0xfc
/* 814B7538 | 41 82 00 24 */	beq .L_814B755C
/* 814B753C | 28 00 00 FD */	cmplwi r0, 0xfd
/* 814B7540 | 41 82 00 1C */	beq .L_814B755C
/* 814B7544 | 28 00 00 FE */	cmplwi r0, 0xfe
/* 814B7548 | 41 82 00 14 */	beq .L_814B755C
/* 814B754C | 28 00 00 FF */	cmplwi r0, 0xff
/* 814B7550 | 41 82 00 0C */	beq .L_814B755C
/* 814B7554 | 38 00 00 00 */	li r0, 0x0
/* 814B7558 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B755C:
/* 814B755C | 38 60 00 00 */	li r3, 0x0
/* 814B7560 | 4E 80 00 20 */	blr
.endfn VFipdm_bpb_check_boot_sector

# .text:0x8B8 | 0x814B7564 | size: 0xAC
.fn VFipdm_bpb_check_fsinfo_sector, global
/* 814B7564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B7568 | 41 82 00 0C */	beq .L_814B7574
/* 814B756C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B7570 | 40 82 00 0C */	bne .L_814B757C
.L_814B7574:
/* 814B7574 | 38 60 00 01 */	li r3, 0x1
/* 814B7578 | 4E 80 00 20 */	blr
.L_814B757C:
/* 814B757C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814B7580 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 814B7584 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 814B7588 | 88 C3 00 02 */	lbz r6, 0x2(r3)
/* 814B758C | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 814B7590 | 50 C5 82 1E */	rlwimi r5, r6, 16, 8, 15
/* 814B7594 | 88 E3 01 E5 */	lbz r7, 0x1e5(r3)
/* 814B7598 | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 814B759C | 89 23 01 E4 */	lbz r9, 0x1e4(r3)
/* 814B75A0 | 3C 05 BE 9F */	subis r0, r5, 0x4161
/* 814B75A4 | 88 A3 01 FD */	lbz r5, 0x1fd(r3)
/* 814B75A8 | 50 E9 44 2E */	rlwimi r9, r7, 8, 16, 23
/* 814B75AC | 89 03 01 E6 */	lbz r8, 0x1e6(r3)
/* 814B75B0 | 88 E3 01 FC */	lbz r7, 0x1fc(r3)
/* 814B75B4 | 50 A7 44 2E */	rlwimi r7, r5, 8, 16, 23
/* 814B75B8 | 88 C3 01 FE */	lbz r6, 0x1fe(r3)
/* 814B75BC | 28 00 52 52 */	cmplwi r0, 0x5252
/* 814B75C0 | 88 A3 01 E7 */	lbz r5, 0x1e7(r3)
/* 814B75C4 | 51 09 82 1E */	rlwimi r9, r8, 16, 8, 15
/* 814B75C8 | 88 03 01 FF */	lbz r0, 0x1ff(r3)
/* 814B75CC | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814B75D0 | 50 A9 C0 0E */	rlwimi r9, r5, 24, 0, 7
/* 814B75D4 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814B75D8 | 40 82 00 28 */	bne .L_814B7600
/* 814B75DC | 3C 09 9E BF */	subis r0, r9, 0x6141
/* 814B75E0 | 28 00 72 72 */	cmplwi r0, 0x7272
/* 814B75E4 | 40 82 00 1C */	bne .L_814B7600
/* 814B75E8 | 3C 07 55 AB */	addis r0, r7, 0x55ab
/* 814B75EC | 28 00 00 00 */	cmplwi r0, 0x0
/* 814B75F0 | 40 82 00 10 */	bne .L_814B7600
/* 814B75F4 | 38 00 00 01 */	li r0, 0x1
/* 814B75F8 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B75FC | 48 00 00 0C */	b .L_814B7608
.L_814B7600:
/* 814B7600 | 38 00 00 00 */	li r0, 0x0
/* 814B7604 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B7608:
/* 814B7608 | 38 60 00 00 */	li r3, 0x0
/* 814B760C | 4E 80 00 20 */	blr
.endfn VFipdm_bpb_check_fsinfo_sector
