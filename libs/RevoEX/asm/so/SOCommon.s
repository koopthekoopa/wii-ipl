.include "macros.inc"
.file "SOCommon.c"

# 0x810C9BC0..0x810C9BD8 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C9BC0 | size: 0x18
.obj soWork, local
	.skip 0x18
.endobj soWork

# 0x814B1F38..0x814B306C | size: 0x1134
.text
.balign 4

# .text:0x0 | 0x814B1F38 | size: 0x1C8
.fn SOInit, global
/* 814B1F38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B1F3C | 7C 08 02 A6 */	mflr r0
/* 814B1F40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B1F44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B1F48 | 48 14 75 79 */	bl _savegpr_27
/* 814B1F4C | 7C 7B 1B 78 */	mr r27, r3
/* 814B1F50 | 3B E0 00 00 */	li r31, 0x0
/* 814B1F54 | 48 07 E9 31 */	bl OSDisableInterrupts
/* 814B1F58 | 80 0D AE 18 */	lwz r0, soRegistered@sda21(r0)
/* 814B1F5C | 7C 7E 1B 78 */	mr r30, r3
/* 814B1F60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1F64 | 40 82 00 14 */	bne .L_814B1F78
/* 814B1F68 | 80 6D 9C 90 */	lwz r3, __SOVersion@sda21(r0)
/* 814B1F6C | 48 07 A8 6D */	bl OSRegisterVersion
/* 814B1F70 | 38 00 00 01 */	li r0, 0x1
/* 814B1F74 | 90 0D AE 18 */	stw r0, soRegistered@sda21(r0)
.L_814B1F78:
/* 814B1F78 | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B1F7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1F80 | 41 82 00 18 */	beq .L_814B1F98
/* 814B1F84 | 41 80 00 14 */	blt .L_814B1F98
/* 814B1F88 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B1F8C | 40 80 00 0C */	bge .L_814B1F98
/* 814B1F90 | 3B E0 FF F9 */	li r31, -0x7
/* 814B1F94 | 48 00 01 30 */	b .L_814B20C4
.L_814B1F98:
/* 814B1F98 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B1F9C | 41 82 00 1C */	beq .L_814B1FB8
/* 814B1FA0 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814B1FA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1FA8 | 41 82 00 10 */	beq .L_814B1FB8
/* 814B1FAC | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814B1FB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1FB4 | 40 82 00 0C */	bne .L_814B1FC0
.L_814B1FB8:
/* 814B1FB8 | 3B E0 FF E4 */	li r31, -0x1c
/* 814B1FBC | 48 00 01 08 */	b .L_814B20C4
.L_814B1FC0:
/* 814B1FC0 | 3F 80 81 0D */	lis r28, soWork@ha
/* 814B1FC4 | 38 80 00 00 */	li r4, 0x0
/* 814B1FC8 | 38 7C 9B C0 */	addi r3, r28, soWork@l
/* 814B1FCC | 38 A0 00 18 */	li r5, 0x18
/* 814B1FD0 | 4B E7 E3 65 */	bl memset
/* 814B1FD4 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 814B1FD8 | 3B BC 9B C0 */	addi r29, r28, soWork@l
/* 814B1FDC | 38 80 00 00 */	li r4, 0x0
/* 814B1FE0 | 38 60 FF FE */	li r3, -0x2
/* 814B1FE4 | 91 9C 9B C0 */	stw r12, soWork@l(r28)
/* 814B1FE8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814B1FEC | 38 00 FF FF */	li r0, -0x1
/* 814B1FF0 | 80 BB 00 04 */	lwz r5, 0x4(r27)
/* 814B1FF4 | 90 BD 00 04 */	stw r5, 0x4(r29)
/* 814B1FF8 | 90 9D 00 14 */	stw r4, 0x14(r29)
/* 814B1FFC | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 814B2000 | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 814B2004 | 41 82 00 94 */	beq .L_814B2098
/* 814B2008 | 38 60 00 0B */	li r3, 0xb
/* 814B200C | 38 80 04 60 */	li r4, 0x460
/* 814B2010 | 7D 89 03 A6 */	mtctr r12
/* 814B2014 | 4E 80 04 21 */	bctrl
/* 814B2018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B201C | 41 82 00 80 */	beq .L_814B209C
/* 814B2020 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 814B2024 | 80 0D 9C 94 */	lwz r0, lbl_81697CD4@sda21(r0)
/* 814B2028 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B202C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B2030 | 90 9D 00 14 */	stw r4, 0x14(r29)
/* 814B2034 | 41 82 00 68 */	beq .L_814B209C
/* 814B2038 | 54 64 00 FE */	clrlwi r4, r3, 3
/* 814B203C | 3C 00 10 00 */	lis r0, 0x1000
/* 814B2040 | 7C 04 00 40 */	cmplw r4, r0
/* 814B2044 | 41 80 00 10 */	blt .L_814B2054
/* 814B2048 | 3C 00 18 00 */	lis r0, 0x1800
/* 814B204C | 7C 04 00 40 */	cmplw r4, r0
/* 814B2050 | 41 80 00 4C */	blt .L_814B209C
.L_814B2054:
/* 814B2054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2058 | 41 82 00 38 */	beq .L_814B2090
/* 814B205C | 3C C0 81 0D */	lis r6, soWork@ha
/* 814B2060 | 38 C6 9B C0 */	addi r6, r6, soWork@l
/* 814B2064 | 81 86 00 04 */	lwz r12, 0x4(r6)
/* 814B2068 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814B206C | 41 82 00 24 */	beq .L_814B2090
/* 814B2070 | 80 A6 00 14 */	lwz r5, 0x14(r6)
/* 814B2074 | 7C 64 1B 78 */	mr r4, r3
/* 814B2078 | 38 60 00 0B */	li r3, 0xb
/* 814B207C | 38 05 FF FF */	subi r0, r5, 0x1
/* 814B2080 | 38 A0 04 60 */	li r5, 0x460
/* 814B2084 | 90 06 00 14 */	stw r0, 0x14(r6)
/* 814B2088 | 7D 89 03 A6 */	mtctr r12
/* 814B208C | 4E 80 04 21 */	bctrl
.L_814B2090:
/* 814B2090 | 38 60 00 00 */	li r3, 0x0
/* 814B2094 | 48 00 00 08 */	b .L_814B209C
.L_814B2098:
/* 814B2098 | 38 60 00 00 */	li r3, 0x0
.L_814B209C:
/* 814B209C | 3C 80 81 0D */	lis r4, soWork@ha
/* 814B20A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B20A4 | 38 84 9B C0 */	addi r4, r4, soWork@l
/* 814B20A8 | 90 64 00 10 */	stw r3, 0x10(r4)
/* 814B20AC | 40 82 00 08 */	bne .L_814B20B4
/* 814B20B0 | 3B E0 FF CF */	li r31, -0x31
.L_814B20B4:
/* 814B20B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B20B8 | 41 82 00 0C */	beq .L_814B20C4
/* 814B20BC | 38 00 00 01 */	li r0, 0x1
/* 814B20C0 | 98 0D AE 10 */	stb r0, soState@sda21(r0)
.L_814B20C4:
/* 814B20C4 | 48 08 1E 9D */	bl OSGetCurrentThread
/* 814B20C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B20CC | 41 82 00 0C */	beq .L_814B20D8
/* 814B20D0 | 93 E3 03 0C */	stw r31, 0x30c(r3)
/* 814B20D4 | 48 00 00 08 */	b .L_814B20DC
.L_814B20D8:
/* 814B20D8 | 93 ED AE 14 */	stw r31, soError@sda21(r0)
.L_814B20DC:
/* 814B20DC | 7F C3 F3 78 */	mr r3, r30
/* 814B20E0 | 48 07 E7 CD */	bl OSRestoreInterrupts
/* 814B20E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B20E8 | 7F E3 FB 78 */	mr r3, r31
/* 814B20EC | 48 14 74 21 */	bl _restgpr_27
/* 814B20F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B20F4 | 7C 08 03 A6 */	mtlr r0
/* 814B20F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B20FC | 4E 80 00 20 */	blr
.endfn SOInit

# .text:0x1C8 | 0x814B2100 | size: 0xFC
.fn SOFinish, global
/* 814B2100 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B2104 | 7C 08 02 A6 */	mflr r0
/* 814B2108 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B210C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B2110 | 3B E0 00 00 */	li r31, 0x0
/* 814B2114 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B2118 | 48 07 E7 6D */	bl OSDisableInterrupts
/* 814B211C | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B2120 | 7C 7E 1B 78 */	mr r30, r3
/* 814B2124 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814B2128 | 41 82 00 28 */	beq .L_814B2150
/* 814B212C | 40 80 00 10 */	bge .L_814B213C
/* 814B2130 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B2134 | 40 80 00 14 */	bge .L_814B2148
/* 814B2138 | 48 00 00 88 */	b .L_814B21C0
.L_814B213C:
/* 814B213C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B2140 | 40 80 00 80 */	bge .L_814B21C0
/* 814B2144 | 48 00 00 78 */	b .L_814B21BC
.L_814B2148:
/* 814B2148 | 3B E0 FF F9 */	li r31, -0x7
/* 814B214C | 48 00 00 74 */	b .L_814B21C0
.L_814B2150:
/* 814B2150 | 3C A0 81 0D */	lis r5, soWork@ha
/* 814B2154 | 38 A5 9B C0 */	addi r5, r5, soWork@l
/* 814B2158 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 814B215C | 2C 00 FF FE */	cmpwi r0, -0x2
/* 814B2160 | 40 81 00 0C */	ble .L_814B216C
/* 814B2164 | 3B E0 FF F6 */	li r31, -0xa
/* 814B2168 | 48 00 00 58 */	b .L_814B21C0
.L_814B216C:
/* 814B216C | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 814B2170 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814B2174 | 40 81 00 0C */	ble .L_814B2180
/* 814B2178 | 3B E0 FF FA */	li r31, -0x6
/* 814B217C | 48 00 00 44 */	b .L_814B21C0
.L_814B2180:
/* 814B2180 | 80 85 00 10 */	lwz r4, 0x10(r5)
/* 814B2184 | 38 00 00 00 */	li r0, 0x0
/* 814B2188 | 98 0D AE 10 */	stb r0, soState@sda21(r0)
/* 814B218C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B2190 | 41 82 00 30 */	beq .L_814B21C0
/* 814B2194 | 81 85 00 04 */	lwz r12, 0x4(r5)
/* 814B2198 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814B219C | 41 82 00 24 */	beq .L_814B21C0
/* 814B21A0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814B21A4 | 38 60 00 0B */	li r3, 0xb
/* 814B21A8 | 90 05 00 14 */	stw r0, 0x14(r5)
/* 814B21AC | 38 A0 04 60 */	li r5, 0x460
/* 814B21B0 | 7D 89 03 A6 */	mtctr r12
/* 814B21B4 | 4E 80 04 21 */	bctrl
/* 814B21B8 | 48 00 00 08 */	b .L_814B21C0
.L_814B21BC:
/* 814B21BC | 3B E0 FF E6 */	li r31, -0x1a
.L_814B21C0:
/* 814B21C0 | 48 08 1D A1 */	bl OSGetCurrentThread
/* 814B21C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B21C8 | 41 82 00 0C */	beq .L_814B21D4
/* 814B21CC | 93 E3 03 0C */	stw r31, 0x30c(r3)
/* 814B21D0 | 48 00 00 08 */	b .L_814B21D8
.L_814B21D4:
/* 814B21D4 | 93 ED AE 14 */	stw r31, soError@sda21(r0)
.L_814B21D8:
/* 814B21D8 | 7F C3 F3 78 */	mr r3, r30
/* 814B21DC | 48 07 E6 D1 */	bl OSRestoreInterrupts
/* 814B21E0 | 7F E3 FB 78 */	mr r3, r31
/* 814B21E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B21E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B21EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B21F0 | 7C 08 03 A6 */	mtlr r0
/* 814B21F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B21F8 | 4E 80 00 20 */	blr
.endfn SOFinish

# .text:0x2C4 | 0x814B21FC | size: 0xC
.fn SOStartup, global
/* 814B21FC | 3C 60 00 09 */	lis r3, 0x9
/* 814B2200 | 38 63 27 C0 */	addi r3, r3, 0x27c0
/* 814B2204 | 48 00 00 04 */	b SOStartupEx
.endfn SOStartup

# .text:0x2D0 | 0x814B2208 | size: 0x428
.fn SOStartupEx, global
/* 814B2208 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814B220C | 7C 08 02 A6 */	mflr r0
/* 814B2210 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814B2214 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814B2218 | 48 14 72 75 */	bl _savegpr_14
/* 814B221C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2220 | 7C 6E 1B 78 */	mr r14, r3
/* 814B2224 | 3A 00 00 00 */	li r16, 0x0
/* 814B2228 | 3A 20 00 00 */	li r17, 0x0
/* 814B222C | 41 82 00 34 */	beq .L_814B2260
/* 814B2230 | 48 08 3B 09 */	bl __OSGetSystemTime
/* 814B2234 | 3C C0 80 00 */	lis r6, 0x8000
/* 814B2238 | 3C A0 10 62 */	lis r5, 0x1062
/* 814B223C | 80 C6 00 F8 */	lwz r6, 0xf8(r6)
/* 814B2240 | 38 E5 4D D3 */	addi r7, r5, 0x4dd3
/* 814B2244 | 38 00 00 00 */	li r0, 0x0
/* 814B2248 | 54 C5 F0 BE */	srwi r5, r6, 2
/* 814B224C | 7C A7 28 16 */	mulhwu r5, r7, r5
/* 814B2250 | 54 A5 D1 BE */	srwi r5, r5, 6
/* 814B2254 | 7C AE 29 D6 */	mullw r5, r14, r5
/* 814B2258 | 7E 05 20 14 */	addc r16, r5, r4
/* 814B225C | 7E 20 19 14 */	adde r17, r0, r3
.L_814B2260:
/* 814B2260 | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B2264 | 39 E0 00 04 */	li r15, 0x4
/* 814B2268 | 3E 80 80 00 */	lis r20, 0x8000
/* 814B226C | 3E A0 10 62 */	lis r21, 0x1062
/* 814B2270 | 3B 23 9B C0 */	addi r25, r3, soWork@l
/* 814B2274 | 3A C0 00 00 */	li r22, 0x0
/* 814B2278 | 3A E0 00 64 */	li r23, 0x64
/* 814B227C | 3F 00 81 67 */	lis r24, lbl_8166E2A8@ha
/* 814B2280 | 3A 60 FF FF */	li r19, -0x1
/* 814B2284 | 3F E0 81 67 */	lis r31, jumptable_8166E2B8@ha
/* 814B2288 | 39 C0 00 02 */	li r14, 0x2
.L_814B228C:
/* 814B228C | 48 07 E5 F9 */	bl OSDisableInterrupts
/* 814B2290 | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B2294 | 7C 7A 1B 78 */	mr r26, r3
/* 814B2298 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814B229C | 41 82 00 28 */	beq .L_814B22C4
/* 814B22A0 | 40 80 00 08 */	bge .L_814B22A8
/* 814B22A4 | 48 00 00 10 */	b .L_814B22B4
.L_814B22A8:
/* 814B22A8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B22AC | 40 80 00 08 */	bge .L_814B22B4
/* 814B22B0 | 48 00 00 0C */	b .L_814B22BC
.L_814B22B4:
/* 814B22B4 | 3A 40 FF D9 */	li r18, -0x27
/* 814B22B8 | 48 00 02 8C */	b .L_814B2544
.L_814B22BC:
/* 814B22BC | 3A 40 FF F9 */	li r18, -0x7
/* 814B22C0 | 48 00 02 84 */	b .L_814B2544
.L_814B22C4:
/* 814B22C4 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814B22C8 | 2C 00 FF FE */	cmpwi r0, -0x2
/* 814B22CC | 40 81 00 0C */	ble .L_814B22D8
/* 814B22D0 | 3A 40 FF F6 */	li r18, -0xa
/* 814B22D4 | 48 00 02 70 */	b .L_814B2544
.L_814B22D8:
/* 814B22D8 | 48 08 1C 89 */	bl OSGetCurrentThread
/* 814B22DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B22E0 | 40 82 00 0C */	bne .L_814B22EC
/* 814B22E4 | 3E 40 80 00 */	lis r18, 0x8000
/* 814B22E8 | 48 00 02 5C */	b .L_814B2544
.L_814B22EC:
/* 814B22EC | 92 79 00 08 */	stw r19, 0x8(r25)
/* 814B22F0 | 7F 43 D3 78 */	mr r3, r26
/* 814B22F4 | 48 07 E5 B9 */	bl OSRestoreInterrupts
/* 814B22F8 | 7F 56 B9 D6 */	mullw r26, r22, r23
/* 814B22FC | 3B 75 4D D3 */	addi r27, r21, 0x4dd3
/* 814B2300 | 7E 12 8B 78 */	or r18, r16, r17
/* 814B2304 | 6E 3D 80 00 */	xoris r29, r17, 0x8000
.L_814B2308:
/* 814B2308 | 4B FE 07 B5 */	bl NCDGetLinkStatus
/* 814B230C | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814B2310 | 7C 7C 1B 78 */	mr r28, r3
/* 814B2314 | 41 82 00 0C */	beq .L_814B2320
/* 814B2318 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814B231C | 40 82 00 60 */	bne .L_814B237C
.L_814B2320:
/* 814B2320 | 80 14 00 F8 */	lwz r0, 0xf8(r20)
/* 814B2324 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B2328 | 7C 1B 00 16 */	mulhwu r0, r27, r0
/* 814B232C | 54 03 D1 BE */	srwi r3, r0, 6
/* 814B2330 | 7C 03 B8 16 */	mulhwu r0, r3, r23
/* 814B2334 | 1C 83 00 64 */	mulli r4, r3, 0x64
/* 814B2338 | 7C 60 D2 14 */	add r3, r0, r26
/* 814B233C | 48 08 38 91 */	bl OSSleepTicks
/* 814B2340 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B2344 | 41 82 FF C4 */	beq .L_814B2308
/* 814B2348 | 48 08 39 F1 */	bl __OSGetSystemTime
/* 814B234C | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 814B2350 | 7C 04 80 10 */	subfc r0, r4, r16
/* 814B2354 | 7C 63 E9 10 */	subfe r3, r3, r29
/* 814B2358 | 7C 7D E9 10 */	subfe r3, r29, r29
/* 814B235C | 7C 63 00 D1 */	neg. r3, r3
/* 814B2360 | 41 82 FF A8 */	beq .L_814B2308
/* 814B2364 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814B2368 | 40 82 00 0C */	bne .L_814B2374
/* 814B236C | 3A 40 FF 87 */	li r18, -0x79
/* 814B2370 | 48 00 01 9C */	b .L_814B250C
.L_814B2374:
/* 814B2374 | 3E 40 80 00 */	lis r18, 0x8000
/* 814B2378 | 48 00 01 94 */	b .L_814B250C
.L_814B237C:
/* 814B237C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2380 | 40 80 00 0C */	bge .L_814B238C
/* 814B2384 | 3E 40 80 00 */	lis r18, 0x8000
/* 814B2388 | 48 00 01 84 */	b .L_814B250C
.L_814B238C:
/* 814B238C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814B2390 | 40 82 00 0C */	bne .L_814B239C
/* 814B2394 | 3A 40 FF D3 */	li r18, -0x2d
/* 814B2398 | 48 00 01 74 */	b .L_814B250C
.L_814B239C:
/* 814B239C | 7F 56 B9 D6 */	mullw r26, r22, r23
/* 814B23A0 | 3B 75 4D D3 */	addi r27, r21, 0x4dd3
/* 814B23A4 | 7E 12 8B 78 */	or r18, r16, r17
/* 814B23A8 | 6E 3C 80 00 */	xoris r28, r17, 0x8000
.L_814B23AC:
/* 814B23AC | 38 78 E2 A8 */	addi r3, r24, lbl_8166E2A8@l
/* 814B23B0 | 38 80 00 00 */	li r4, 0x0
/* 814B23B4 | 48 0C 07 5D */	bl IOS_Open
/* 814B23B8 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 814B23BC | 90 79 00 0C */	stw r3, 0xc(r25)
/* 814B23C0 | 40 82 00 50 */	bne .L_814B2410
/* 814B23C4 | 80 14 00 F8 */	lwz r0, 0xf8(r20)
/* 814B23C8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B23CC | 7C 1B 00 16 */	mulhwu r0, r27, r0
/* 814B23D0 | 54 03 D1 BE */	srwi r3, r0, 6
/* 814B23D4 | 7C 03 B8 16 */	mulhwu r0, r3, r23
/* 814B23D8 | 1C 83 00 64 */	mulli r4, r3, 0x64
/* 814B23DC | 7C 60 D2 14 */	add r3, r0, r26
/* 814B23E0 | 48 08 37 ED */	bl OSSleepTicks
/* 814B23E4 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B23E8 | 41 82 FF C4 */	beq .L_814B23AC
/* 814B23EC | 48 08 39 4D */	bl __OSGetSystemTime
/* 814B23F0 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 814B23F4 | 7C 04 80 10 */	subfc r0, r4, r16
/* 814B23F8 | 7C 63 E1 10 */	subfe r3, r3, r28
/* 814B23FC | 7C 7C E1 10 */	subfe r3, r28, r28
/* 814B2400 | 7C 63 00 D1 */	neg. r3, r3
/* 814B2404 | 41 82 FF A8 */	beq .L_814B23AC
/* 814B2408 | 3E 40 80 00 */	lis r18, 0x8000
/* 814B240C | 48 00 01 00 */	b .L_814B250C
.L_814B2410:
/* 814B2410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2414 | 40 80 00 0C */	bge .L_814B2420
/* 814B2418 | 3E 40 80 00 */	lis r18, 0x8000
/* 814B241C | 48 00 00 F0 */	b .L_814B250C
.L_814B2420:
/* 814B2420 | 7F 96 B9 D6 */	mullw r28, r22, r23
/* 814B2424 | 3A 40 00 00 */	li r18, 0x0
/* 814B2428 | 92 41 00 08 */	stw r18, 0x8(r1)
/* 814B242C | 3B 75 4D D3 */	addi r27, r21, 0x4dd3
/* 814B2430 | 7E 1D 8B 78 */	or r29, r16, r17
/* 814B2434 | 6E 3E 80 00 */	xoris r30, r17, 0x8000
.L_814B2438:
/* 814B2438 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B243C | 4B FF 92 11 */	bl NWC24iStartupSocket
/* 814B2440 | 2C 03 FF E3 */	cmpwi r3, -0x1d
/* 814B2444 | 7C 7A 1B 78 */	mr r26, r3
/* 814B2448 | 40 82 00 4C */	bne .L_814B2494
/* 814B244C | 80 14 00 F8 */	lwz r0, 0xf8(r20)
/* 814B2450 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B2454 | 7C 1B 00 16 */	mulhwu r0, r27, r0
/* 814B2458 | 54 03 D1 BE */	srwi r3, r0, 6
/* 814B245C | 7C 03 B8 16 */	mulhwu r0, r3, r23
/* 814B2460 | 1C 83 00 64 */	mulli r4, r3, 0x64
/* 814B2464 | 7C 60 E2 14 */	add r3, r0, r28
/* 814B2468 | 48 08 37 65 */	bl OSSleepTicks
/* 814B246C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B2470 | 41 82 FF C8 */	beq .L_814B2438
/* 814B2474 | 48 08 38 C5 */	bl __OSGetSystemTime
/* 814B2478 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 814B247C | 7C 04 80 10 */	subfc r0, r4, r16
/* 814B2480 | 7C 63 F1 10 */	subfe r3, r3, r30
/* 814B2484 | 7C 7E F1 10 */	subfe r3, r30, r30
/* 814B2488 | 7C 63 00 D1 */	neg. r3, r3
/* 814B248C | 41 82 FF AC */	beq .L_814B2438
/* 814B2490 | 3E 40 80 00 */	lis r18, 0x8000
.L_814B2494:
/* 814B2494 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B2498 | 40 82 00 50 */	bne .L_814B24E8
/* 814B249C | 38 1A 00 21 */	addi r0, r26, 0x21
/* 814B24A0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814B24A4 | 28 00 00 21 */	cmplwi r0, 0x21
/* 814B24A8 | 3A 40 FF E4 */	li r18, -0x1c
/* 814B24AC | 41 81 00 3C */	bgt .L_814B24E8
/* 814B24B0 | 38 7F E2 B8 */	addi r3, r31, jumptable_8166E2B8@l
/* 814B24B4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814B24B8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814B24BC | 7C 69 03 A6 */	mtctr r3
/* 814B24C0 | 4E 80 04 20 */	bctr
.L_814B24C4:
/* 814B24C4 | 3A 40 00 00 */	li r18, 0x0
/* 814B24C8 | 48 00 00 20 */	b .L_814B24E8
.L_814B24CC:
/* 814B24CC | 3A 40 FF D0 */	li r18, -0x30
/* 814B24D0 | 48 00 00 18 */	b .L_814B24E8
.L_814B24D4:
/* 814B24D4 | 7C 92 23 78 */	mr r18, r4
/* 814B24D8 | 48 00 00 10 */	b .L_814B24E8
.L_814B24DC:
/* 814B24DC | 3E 40 80 00 */	lis r18, 0x8000
/* 814B24E0 | 48 00 00 08 */	b .L_814B24E8
.L_814B24E4:
/* 814B24E4 | 3A 40 FF E6 */	li r18, -0x1a
.L_814B24E8:
/* 814B24E8 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B24EC | 41 82 00 20 */	beq .L_814B250C
/* 814B24F0 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 814B24F4 | 48 0C 07 FD */	bl fn_81572CF0
/* 814B24F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B24FC | 40 80 00 0C */	bge .L_814B2508
/* 814B2500 | 3E 40 80 00 */	lis r18, 0x8000
/* 814B2504 | 48 00 00 08 */	b .L_814B250C
.L_814B2508:
/* 814B2508 | 92 79 00 0C */	stw r19, 0xc(r25)
.L_814B250C:
/* 814B250C | 48 07 E3 79 */	bl OSDisableInterrupts
/* 814B2510 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B2514 | 7C 7A 1B 78 */	mr r26, r3
/* 814B2518 | 40 82 00 10 */	bne .L_814B2528
/* 814B251C | 99 CD AE 10 */	stb r14, soState@sda21(r0)
/* 814B2520 | 92 D9 00 08 */	stw r22, 0x8(r25)
/* 814B2524 | 48 00 00 20 */	b .L_814B2544
.L_814B2528:
/* 814B2528 | 3C 72 80 00 */	addis r3, r18, 0x8000
/* 814B252C | 38 00 00 01 */	li r0, 0x1
/* 814B2530 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814B2534 | 98 0D AE 10 */	stb r0, soState@sda21(r0)
/* 814B2538 | 41 82 00 0C */	beq .L_814B2544
/* 814B253C | 38 00 FF FE */	li r0, -0x2
/* 814B2540 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814B2544:
/* 814B2544 | 48 08 1A 1D */	bl OSGetCurrentThread
/* 814B2548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B254C | 41 82 00 0C */	beq .L_814B2558
/* 814B2550 | 92 43 03 0C */	stw r18, 0x30c(r3)
/* 814B2554 | 48 00 00 08 */	b .L_814B255C
.L_814B2558:
/* 814B2558 | 92 4D AE 14 */	stw r18, soError@sda21(r0)
.L_814B255C:
/* 814B255C | 7F 43 D3 78 */	mr r3, r26
/* 814B2560 | 48 07 E3 4D */	bl OSRestoreInterrupts
/* 814B2564 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B2568 | 40 82 00 84 */	bne .L_814B25EC
/* 814B256C | 7E 00 8B 79 */	or. r0, r16, r17
/* 814B2570 | 41 82 00 14 */	beq .L_814B2584
/* 814B2574 | 48 08 37 C5 */	bl __OSGetSystemTime
/* 814B2578 | 7C 84 80 10 */	subfc r4, r4, r16
/* 814B257C | 7C 63 89 10 */	subfe r3, r3, r17
/* 814B2580 | 48 00 00 0C */	b .L_814B258C
.L_814B2584:
/* 814B2584 | 38 80 00 00 */	li r4, 0x0
/* 814B2588 | 7C 83 23 78 */	mr r3, r4
.L_814B258C:
/* 814B258C | 7E 00 8B 79 */	or. r0, r16, r17
/* 814B2590 | 41 82 00 28 */	beq .L_814B25B8
/* 814B2594 | 6E C0 80 00 */	xoris r0, r22, 0x8000
/* 814B2598 | 6C 66 80 00 */	xoris r6, r3, 0x8000
/* 814B259C | 7C A4 B0 10 */	subfc r5, r4, r22
/* 814B25A0 | 7C C6 01 10 */	subfe r6, r6, r0
/* 814B25A4 | 7C C0 01 10 */	subfe r6, r0, r0
/* 814B25A8 | 7C C6 00 D1 */	neg. r6, r6
/* 814B25AC | 40 82 00 0C */	bne .L_814B25B8
/* 814B25B0 | 3A 40 FF B4 */	li r18, -0x4c
/* 814B25B4 | 48 00 00 2C */	b .L_814B25E0
.L_814B25B8:
/* 814B25B8 | 80 14 00 F8 */	lwz r0, 0xf8(r20)
/* 814B25BC | 38 D5 4D D3 */	addi r6, r21, 0x4dd3
/* 814B25C0 | 38 A0 00 00 */	li r5, 0x0
/* 814B25C4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B25C8 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 814B25CC | 54 06 D1 BE */	srwi r6, r0, 6
/* 814B25D0 | 48 14 70 41 */	bl __div2i
/* 814B25D4 | 7C 83 23 78 */	mr r3, r4
/* 814B25D8 | 48 00 08 89 */	bl SOiWaitForDHCPEx
/* 814B25DC | 7C 72 1B 78 */	mr r18, r3
.L_814B25E0:
/* 814B25E0 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814B25E4 | 41 82 00 08 */	beq .L_814B25EC
/* 814B25E8 | 48 00 00 49 */	bl SOCleanup
.L_814B25EC:
/* 814B25EC | 48 08 19 75 */	bl OSGetCurrentThread
/* 814B25F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B25F4 | 41 82 00 0C */	beq .L_814B2600
/* 814B25F8 | 92 43 03 0C */	stw r18, 0x30c(r3)
/* 814B25FC | 48 00 00 08 */	b .L_814B2604
.L_814B2600:
/* 814B2600 | 92 4D AE 14 */	stw r18, soError@sda21(r0)
.L_814B2604:
/* 814B2604 | 2C 12 FF 90 */	cmpwi r18, -0x70
/* 814B2608 | 40 82 00 0C */	bne .L_814B2614
/* 814B260C | 35 EF FF FF */	subic. r15, r15, 0x1
/* 814B2610 | 40 80 FC 7C */	bge .L_814B228C
.L_814B2614:
/* 814B2614 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814B2618 | 7E 43 93 78 */	mr r3, r18
/* 814B261C | 48 14 6E BD */	bl _restgpr_14
/* 814B2620 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814B2624 | 7C 08 03 A6 */	mtlr r0
/* 814B2628 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814B262C | 4E 80 00 20 */	blr
.endfn SOStartupEx

# .text:0x6F8 | 0x814B2630 | size: 0x1B0
.fn SOCleanup, global
/* 814B2630 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B2634 | 7C 08 02 A6 */	mflr r0
/* 814B2638 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B263C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B2640 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B2644 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B2648 | 48 07 E2 3D */	bl OSDisableInterrupts
/* 814B264C | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B2650 | 38 80 00 00 */	li r4, 0x0
/* 814B2654 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814B2658 | 7C 7D 1B 78 */	mr r29, r3
/* 814B265C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814B2660 | 41 82 00 20 */	beq .L_814B2680
/* 814B2664 | 40 80 00 08 */	bge .L_814B266C
/* 814B2668 | 48 00 00 10 */	b .L_814B2678
.L_814B266C:
/* 814B266C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B2670 | 40 80 00 08 */	bge .L_814B2678
/* 814B2674 | 48 00 00 14 */	b .L_814B2688
.L_814B2678:
/* 814B2678 | 3B C0 FF D9 */	li r30, -0x27
/* 814B267C | 48 00 01 24 */	b .L_814B27A0
.L_814B2680:
/* 814B2680 | 3B C0 FF F9 */	li r30, -0x7
/* 814B2684 | 48 00 01 1C */	b .L_814B27A0
.L_814B2688:
/* 814B2688 | 3F E0 81 0D */	lis r31, soWork@ha
/* 814B268C | 3B FF 9B C0 */	addi r31, r31, soWork@l
/* 814B2690 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B2694 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B2698 | 40 80 00 0C */	bge .L_814B26A4
/* 814B269C | 3B C0 FF F6 */	li r30, -0xa
/* 814B26A0 | 48 00 01 00 */	b .L_814B27A0
.L_814B26A4:
/* 814B26A4 | 48 08 18 BD */	bl OSGetCurrentThread
/* 814B26A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B26AC | 40 82 00 0C */	bne .L_814B26B8
/* 814B26B0 | 3F C0 80 00 */	lis r30, 0x8000
/* 814B26B4 | 48 00 00 EC */	b .L_814B27A0
.L_814B26B8:
/* 814B26B8 | 38 00 FF FF */	li r0, -0x1
/* 814B26BC | 7F A3 EB 78 */	mr r3, r29
/* 814B26C0 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814B26C4 | 48 07 E1 E9 */	bl OSRestoreInterrupts
/* 814B26C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B26CC | 4B FF 8F 91 */	bl NWC24iCleanupSocket
/* 814B26D0 | 38 03 00 21 */	addi r0, r3, 0x21
/* 814B26D4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814B26D8 | 28 00 00 21 */	cmplwi r0, 0x21
/* 814B26DC | 3B C0 FF E4 */	li r30, -0x1c
/* 814B26E0 | 41 81 00 40 */	bgt .L_814B2720
/* 814B26E4 | 3C 60 81 67 */	lis r3, jumptable_8166E340@ha
/* 814B26E8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814B26EC | 38 63 E3 40 */	addi r3, r3, jumptable_8166E340@l
/* 814B26F0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814B26F4 | 7C 69 03 A6 */	mtctr r3
/* 814B26F8 | 4E 80 04 20 */	bctr
.L_814B26FC:
/* 814B26FC | 3B C0 00 00 */	li r30, 0x0
/* 814B2700 | 48 00 00 20 */	b .L_814B2720
.L_814B2704:
/* 814B2704 | 3B C0 FF D0 */	li r30, -0x30
/* 814B2708 | 48 00 00 18 */	b .L_814B2720
.L_814B270C:
/* 814B270C | 7C 9E 23 78 */	mr r30, r4
/* 814B2710 | 48 00 00 10 */	b .L_814B2720
.L_814B2714:
/* 814B2714 | 3F C0 80 00 */	lis r30, 0x8000
/* 814B2718 | 48 00 00 08 */	b .L_814B2720
.L_814B271C:
/* 814B271C | 3B C0 FF E6 */	li r30, -0x1a
.L_814B2720:
/* 814B2720 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B2724 | 40 82 00 2C */	bne .L_814B2750
/* 814B2728 | 3F E0 81 0D */	lis r31, soWork@ha
/* 814B272C | 3B FF 9B C0 */	addi r31, r31, soWork@l
/* 814B2730 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814B2734 | 48 0C 05 BD */	bl fn_81572CF0
/* 814B2738 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B273C | 40 80 00 0C */	bge .L_814B2748
/* 814B2740 | 3F C0 80 00 */	lis r30, 0x8000
/* 814B2744 | 48 00 00 0C */	b .L_814B2750
.L_814B2748:
/* 814B2748 | 38 00 FF FF */	li r0, -0x1
/* 814B274C | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_814B2750:
/* 814B2750 | 48 07 E1 35 */	bl OSDisableInterrupts
/* 814B2754 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B2758 | 7C 7D 1B 78 */	mr r29, r3
/* 814B275C | 40 82 00 20 */	bne .L_814B277C
/* 814B2760 | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B2764 | 38 80 00 01 */	li r4, 0x1
/* 814B2768 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B276C | 38 00 FF FE */	li r0, -0x2
/* 814B2770 | 98 8D AE 10 */	stb r4, soState@sda21(r0)
/* 814B2774 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814B2778 | 48 00 00 28 */	b .L_814B27A0
.L_814B277C:
/* 814B277C | 3C 1E 80 00 */	addis r0, r30, 0x8000
/* 814B2780 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814B2784 | 41 82 00 1C */	beq .L_814B27A0
/* 814B2788 | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B278C | 38 80 00 02 */	li r4, 0x2
/* 814B2790 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B2794 | 38 00 00 00 */	li r0, 0x0
/* 814B2798 | 98 8D AE 10 */	stb r4, soState@sda21(r0)
/* 814B279C | 90 03 00 08 */	stw r0, 0x8(r3)
.L_814B27A0:
/* 814B27A0 | 48 08 17 C1 */	bl OSGetCurrentThread
/* 814B27A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B27A8 | 41 82 00 0C */	beq .L_814B27B4
/* 814B27AC | 93 C3 03 0C */	stw r30, 0x30c(r3)
/* 814B27B0 | 48 00 00 08 */	b .L_814B27B8
.L_814B27B4:
/* 814B27B4 | 93 CD AE 14 */	stw r30, soError@sda21(r0)
.L_814B27B8:
/* 814B27B8 | 7F A3 EB 78 */	mr r3, r29
/* 814B27BC | 48 07 E0 F1 */	bl OSRestoreInterrupts
/* 814B27C0 | 7F C3 F3 78 */	mr r3, r30
/* 814B27C4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B27C8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B27CC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B27D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B27D4 | 7C 08 03 A6 */	mtlr r0
/* 814B27D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B27DC | 4E 80 00 20 */	blr
.endfn SOCleanup

# .text:0x8A8 | 0x814B27E0 | size: 0xC
.fn SOiGetSysWork, global
/* 814B27E0 | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B27E4 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B27E8 | 4E 80 00 20 */	blr
.endfn SOiGetSysWork

# .text:0x8B4 | 0x814B27EC | size: 0x8
.fn SOiIsBufferAddrCheck, global
/* 814B27EC | 80 6D 9C 94 */	lwz r3, lbl_81697CD4@sda21(r0)
/* 814B27F0 | 4E 80 00 20 */	blr
.endfn SOiIsBufferAddrCheck

# .text:0x8BC | 0x814B27F4 | size: 0x50
.fn SOiIsInitialized, global
/* 814B27F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B27F8 | 7C 08 02 A6 */	mflr r0
/* 814B27FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B2800 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B2804 | 3B E0 00 00 */	li r31, 0x0
/* 814B2808 | 48 07 E0 7D */	bl OSDisableInterrupts
/* 814B280C | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B2810 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B2814 | 40 80 00 14 */	bge .L_814B2828
/* 814B2818 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814B281C | 40 80 00 08 */	bge .L_814B2824
/* 814B2820 | 48 00 00 08 */	b .L_814B2828
.L_814B2824:
/* 814B2824 | 3B E0 00 01 */	li r31, 0x1
.L_814B2828:
/* 814B2828 | 48 07 E0 85 */	bl OSRestoreInterrupts
/* 814B282C | 7F E3 FB 78 */	mr r3, r31
/* 814B2830 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B2834 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B2838 | 7C 08 03 A6 */	mtlr r0
/* 814B283C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B2840 | 4E 80 00 20 */	blr
.endfn SOiIsInitialized

# .text:0x90C | 0x814B2844 | size: 0xE8
.fn SOiAlloc, global
/* 814B2844 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B2848 | 7C 08 02 A6 */	mflr r0
/* 814B284C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B2850 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B2854 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B2858 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B285C | 7C 9E 23 78 */	mr r30, r4
/* 814B2860 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B2864 | 7C 7D 1B 78 */	mr r29, r3
/* 814B2868 | 40 81 00 A4 */	ble .L_814B290C
/* 814B286C | 3F E0 81 0D */	lis r31, soWork@ha
/* 814B2870 | 81 9F 9B C0 */	lwz r12, soWork@l(r31)
/* 814B2874 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814B2878 | 41 82 00 94 */	beq .L_814B290C
/* 814B287C | 7D 89 03 A6 */	mtctr r12
/* 814B2880 | 4E 80 04 21 */	bctrl
/* 814B2884 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2888 | 7C 64 1B 78 */	mr r4, r3
/* 814B288C | 41 82 00 78 */	beq .L_814B2904
/* 814B2890 | 38 DF 9B C0 */	addi r6, r31, soWork@l
/* 814B2894 | 80 0D 9C 94 */	lwz r0, lbl_81697CD4@sda21(r0)
/* 814B2898 | 80 A6 00 14 */	lwz r5, 0x14(r6)
/* 814B289C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B28A0 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814B28A4 | 90 06 00 14 */	stw r0, 0x14(r6)
/* 814B28A8 | 41 82 00 5C */	beq .L_814B2904
/* 814B28AC | 54 65 00 FE */	clrlwi r5, r3, 3
/* 814B28B0 | 3C 00 10 00 */	lis r0, 0x1000
/* 814B28B4 | 7C 05 00 40 */	cmplw r5, r0
/* 814B28B8 | 41 80 00 10 */	blt .L_814B28C8
/* 814B28BC | 3C 00 18 00 */	lis r0, 0x1800
/* 814B28C0 | 7C 05 00 40 */	cmplw r5, r0
/* 814B28C4 | 41 80 00 40 */	blt .L_814B2904
.L_814B28C8:
/* 814B28C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B28CC | 41 82 00 34 */	beq .L_814B2900
/* 814B28D0 | 3C C0 81 0D */	lis r6, soWork@ha
/* 814B28D4 | 38 C6 9B C0 */	addi r6, r6, soWork@l
/* 814B28D8 | 81 86 00 04 */	lwz r12, 0x4(r6)
/* 814B28DC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814B28E0 | 41 82 00 20 */	beq .L_814B2900
/* 814B28E4 | 80 A6 00 14 */	lwz r5, 0x14(r6)
/* 814B28E8 | 7F A3 EB 78 */	mr r3, r29
/* 814B28EC | 38 05 FF FF */	subi r0, r5, 0x1
/* 814B28F0 | 7F C5 F3 78 */	mr r5, r30
/* 814B28F4 | 90 06 00 14 */	stw r0, 0x14(r6)
/* 814B28F8 | 7D 89 03 A6 */	mtctr r12
/* 814B28FC | 4E 80 04 21 */	bctrl
.L_814B2900:
/* 814B2900 | 38 80 00 00 */	li r4, 0x0
.L_814B2904:
/* 814B2904 | 7C 83 23 78 */	mr r3, r4
/* 814B2908 | 48 00 00 08 */	b .L_814B2910
.L_814B290C:
/* 814B290C | 38 60 00 00 */	li r3, 0x0
.L_814B2910:
/* 814B2910 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B2914 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B2918 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B291C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B2920 | 7C 08 03 A6 */	mtlr r0
/* 814B2924 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B2928 | 4E 80 00 20 */	blr
.endfn SOiAlloc

# .text:0x9F4 | 0x814B292C | size: 0x34
.fn SOiFree, global
/* 814B292C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B2930 | 4D 82 00 20 */	beqlr
/* 814B2934 | 3C E0 81 0D */	lis r7, soWork@ha
/* 814B2938 | 38 E7 9B C0 */	addi r7, r7, soWork@l
/* 814B293C | 81 87 00 04 */	lwz r12, 0x4(r7)
/* 814B2940 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814B2944 | 4D 82 00 20 */	beqlr
/* 814B2948 | 80 C7 00 14 */	lwz r6, 0x14(r7)
/* 814B294C | 38 06 FF FF */	subi r0, r6, 0x1
/* 814B2950 | 90 07 00 14 */	stw r0, 0x14(r7)
/* 814B2954 | 7D 89 03 A6 */	mtctr r12
/* 814B2958 | 4E 80 04 20 */	bctr
/* 814B295C | 4E 80 00 20 */	blr
.endfn SOiFree

# .text:0xA28 | 0x814B2960 | size: 0xE8
.fn SOiPrepare, global
/* 814B2960 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B2964 | 7C 08 02 A6 */	mflr r0
/* 814B2968 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B296C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B2970 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B2974 | 3B C0 00 00 */	li r30, 0x0
/* 814B2978 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B297C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814B2980 | 7C 9C 23 78 */	mr r28, r4
/* 814B2984 | 48 07 DF 01 */	bl OSDisableInterrupts
/* 814B2988 | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B298C | 7C 7D 1B 78 */	mr r29, r3
/* 814B2990 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814B2994 | 41 82 00 28 */	beq .L_814B29BC
/* 814B2998 | 40 80 00 10 */	bge .L_814B29A8
/* 814B299C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B29A0 | 40 80 00 14 */	bge .L_814B29B4
/* 814B29A4 | 48 00 00 18 */	b .L_814B29BC
.L_814B29A8:
/* 814B29A8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B29AC | 40 80 00 10 */	bge .L_814B29BC
/* 814B29B0 | 48 00 00 14 */	b .L_814B29C4
.L_814B29B4:
/* 814B29B4 | 3B C0 FF D9 */	li r30, -0x27
/* 814B29B8 | 48 00 00 44 */	b .L_814B29FC
.L_814B29BC:
/* 814B29BC | 3B C0 FF E4 */	li r30, -0x1c
/* 814B29C0 | 48 00 00 3C */	b .L_814B29FC
.L_814B29C4:
/* 814B29C4 | 3F E0 81 0D */	lis r31, soWork@ha
/* 814B29C8 | 3B FF 9B C0 */	addi r31, r31, soWork@l
/* 814B29CC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B29D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B29D4 | 40 80 00 0C */	bge .L_814B29E0
/* 814B29D8 | 3B C0 FF F6 */	li r30, -0xa
/* 814B29DC | 48 00 00 20 */	b .L_814B29FC
.L_814B29E0:
/* 814B29E0 | 48 08 15 81 */	bl OSGetCurrentThread
/* 814B29E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B29E8 | 40 82 00 0C */	bne .L_814B29F4
/* 814B29EC | 3F C0 80 00 */	lis r30, 0x8000
/* 814B29F0 | 48 00 00 0C */	b .L_814B29FC
.L_814B29F4:
/* 814B29F4 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814B29F8 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814B29FC:
/* 814B29FC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B2A00 | 41 82 00 1C */	beq .L_814B2A1C
/* 814B2A04 | 48 08 15 5D */	bl OSGetCurrentThread
/* 814B2A08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2A0C | 41 82 00 0C */	beq .L_814B2A18
/* 814B2A10 | 93 C3 03 0C */	stw r30, 0x30c(r3)
/* 814B2A14 | 48 00 00 08 */	b .L_814B2A1C
.L_814B2A18:
/* 814B2A18 | 93 CD AE 14 */	stw r30, soError@sda21(r0)
.L_814B2A1C:
/* 814B2A1C | 7F A3 EB 78 */	mr r3, r29
/* 814B2A20 | 48 07 DE 8D */	bl OSRestoreInterrupts
/* 814B2A24 | 7F C3 F3 78 */	mr r3, r30
/* 814B2A28 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B2A2C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B2A30 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B2A34 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814B2A38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B2A3C | 7C 08 03 A6 */	mtlr r0
/* 814B2A40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B2A44 | 4E 80 00 20 */	blr
.endfn SOiPrepare

# .text:0xB10 | 0x814B2A48 | size: 0x5C
.fn SOiConclude, global
/* 814B2A48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B2A4C | 7C 08 02 A6 */	mflr r0
/* 814B2A50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B2A54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B2A58 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B2A5C | 7C 9E 23 78 */	mr r30, r4
/* 814B2A60 | 48 07 DE 25 */	bl OSDisableInterrupts
/* 814B2A64 | 7C 7F 1B 78 */	mr r31, r3
/* 814B2A68 | 48 08 14 F9 */	bl OSGetCurrentThread
/* 814B2A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2A70 | 41 82 00 0C */	beq .L_814B2A7C
/* 814B2A74 | 93 C3 03 0C */	stw r30, 0x30c(r3)
/* 814B2A78 | 48 00 00 08 */	b .L_814B2A80
.L_814B2A7C:
/* 814B2A7C | 93 CD AE 14 */	stw r30, soError@sda21(r0)
.L_814B2A80:
/* 814B2A80 | 7F E3 FB 78 */	mr r3, r31
/* 814B2A84 | 48 07 DE 29 */	bl OSRestoreInterrupts
/* 814B2A88 | 7F C3 F3 78 */	mr r3, r30
/* 814B2A8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B2A90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B2A94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B2A98 | 7C 08 03 A6 */	mtlr r0
/* 814B2A9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B2AA0 | 4E 80 00 20 */	blr
.endfn SOiConclude

# .text:0xB6C | 0x814B2AA4 | size: 0x2D8
.fn SOiPrepareTempRm, global
/* 814B2AA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B2AA8 | 7C 08 02 A6 */	mflr r0
/* 814B2AAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B2AB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B2AB4 | 48 14 6A 09 */	bl _savegpr_26
/* 814B2AB8 | 7C 7A 1B 78 */	mr r26, r3
/* 814B2ABC | 7C 9B 23 78 */	mr r27, r4
/* 814B2AC0 | 7C BC 2B 78 */	mr r28, r5
/* 814B2AC4 | 3B C0 00 00 */	li r30, 0x0
/* 814B2AC8 | 48 07 DD BD */	bl OSDisableInterrupts
/* 814B2ACC | 88 0D AE 10 */	lbz r0, soState@sda21(r0)
/* 814B2AD0 | 7C 7D 1B 78 */	mr r29, r3
/* 814B2AD4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814B2AD8 | 41 82 00 28 */	beq .L_814B2B00
/* 814B2ADC | 40 80 00 10 */	bge .L_814B2AEC
/* 814B2AE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B2AE4 | 40 80 00 14 */	bge .L_814B2AF8
/* 814B2AE8 | 48 00 00 18 */	b .L_814B2B00
.L_814B2AEC:
/* 814B2AEC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814B2AF0 | 40 80 00 10 */	bge .L_814B2B00
/* 814B2AF4 | 48 00 02 04 */	b .L_814B2CF8
.L_814B2AF8:
/* 814B2AF8 | 3B C0 FF D9 */	li r30, -0x27
/* 814B2AFC | 48 00 02 3C */	b .L_814B2D38
.L_814B2B00:
/* 814B2B00 | 3F E0 81 0D */	lis r31, soWork@ha
/* 814B2B04 | 3B FF 9B C0 */	addi r31, r31, soWork@l
/* 814B2B08 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B2B0C | 2C 00 FF FE */	cmpwi r0, -0x2
/* 814B2B10 | 40 81 00 0C */	ble .L_814B2B1C
/* 814B2B14 | 3B C0 FF F6 */	li r30, -0xa
/* 814B2B18 | 48 00 02 20 */	b .L_814B2D38
.L_814B2B1C:
/* 814B2B1C | 48 08 14 45 */	bl OSGetCurrentThread
/* 814B2B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2B24 | 40 82 00 0C */	bne .L_814B2B30
/* 814B2B28 | 3F C0 80 00 */	lis r30, 0x8000
/* 814B2B2C | 48 00 02 0C */	b .L_814B2D38
.L_814B2B30:
/* 814B2B30 | 38 00 FF FF */	li r0, -0x1
/* 814B2B34 | 7F A3 EB 78 */	mr r3, r29
/* 814B2B38 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814B2B3C | 48 07 DD 71 */	bl OSRestoreInterrupts
/* 814B2B40 | 3C 60 81 67 */	lis r3, lbl_8166E2A8@ha
/* 814B2B44 | 38 80 00 00 */	li r4, 0x0
/* 814B2B48 | 38 63 E2 A8 */	addi r3, r3, lbl_8166E2A8@l
/* 814B2B4C | 48 0B FF C5 */	bl IOS_Open
/* 814B2B50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2B54 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814B2B58 | 40 80 00 30 */	bge .L_814B2B88
/* 814B2B5C | 48 07 DD 29 */	bl OSDisableInterrupts
/* 814B2B60 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814B2B64 | 7C 7D 1B 78 */	mr r29, r3
/* 814B2B68 | 2C 00 FF FA */	cmpwi r0, -0x6
/* 814B2B6C | 40 82 00 14 */	bne .L_814B2B80
/* 814B2B70 | 38 00 FF FE */	li r0, -0x2
/* 814B2B74 | 3B C0 FF E6 */	li r30, -0x1a
/* 814B2B78 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814B2B7C | 48 00 01 BC */	b .L_814B2D38
.L_814B2B80:
/* 814B2B80 | 3F C0 80 00 */	lis r30, 0x8000
/* 814B2B84 | 48 00 01 B4 */	b .L_814B2D38
.L_814B2B88:
/* 814B2B88 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 814B2B8C | 4B FF 8A E1 */	bl NWC24iLockSocket
/* 814B2B90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2B94 | 40 82 00 D8 */	bne .L_814B2C6C
/* 814B2B98 | 4B FD FF 25 */	bl NCDGetLinkStatus
/* 814B2B9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2BA0 | 40 80 00 1C */	bge .L_814B2BBC
/* 814B2BA4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814B2BA8 | 41 82 00 74 */	beq .L_814B2C1C
/* 814B2BAC | 41 80 00 A0 */	blt .L_814B2C4C
/* 814B2BB0 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814B2BB4 | 40 80 00 80 */	bge .L_814B2C34
/* 814B2BB8 | 48 00 00 94 */	b .L_814B2C4C
.L_814B2BBC:
/* 814B2BBC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814B2BC0 | 40 80 00 8C */	bge .L_814B2C4C
/* 814B2BC4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 814B2BC8 | 40 80 00 08 */	bge .L_814B2BD0
/* 814B2BCC | 48 00 00 80 */	b .L_814B2C4C
.L_814B2BD0:
/* 814B2BD0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814B2BD4 | 38 80 00 1F */	li r4, 0x1f
/* 814B2BD8 | 38 A0 00 00 */	li r5, 0x0
/* 814B2BDC | 38 C0 00 00 */	li r6, 0x0
/* 814B2BE0 | 38 E0 00 00 */	li r7, 0x0
/* 814B2BE4 | 39 00 00 00 */	li r8, 0x0
/* 814B2BE8 | 48 0C 08 C1 */	bl fn_815734A8
/* 814B2BEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2BF0 | 7C 7E 1B 78 */	mr r30, r3
/* 814B2BF4 | 40 82 00 10 */	bne .L_814B2C04
/* 814B2BF8 | 38 00 00 01 */	li r0, 0x1
/* 814B2BFC | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814B2C00 | 48 00 00 60 */	b .L_814B2C60
.L_814B2C04:
/* 814B2C04 | 7F 43 D3 78 */	mr r3, r26
/* 814B2C08 | 7F C4 F3 78 */	mr r4, r30
/* 814B2C0C | 38 A0 00 01 */	li r5, 0x1
/* 814B2C10 | 48 00 01 6D */	bl SOiConcludeTempRm
/* 814B2C14 | 7C 7E 1B 78 */	mr r30, r3
/* 814B2C18 | 48 00 00 48 */	b .L_814B2C60
.L_814B2C1C:
/* 814B2C1C | 7F 43 D3 78 */	mr r3, r26
/* 814B2C20 | 38 80 FF E6 */	li r4, -0x1a
/* 814B2C24 | 38 A0 00 01 */	li r5, 0x1
/* 814B2C28 | 48 00 01 55 */	bl SOiConcludeTempRm
/* 814B2C2C | 7C 7E 1B 78 */	mr r30, r3
/* 814B2C30 | 48 00 00 30 */	b .L_814B2C60
.L_814B2C34:
/* 814B2C34 | 7F 43 D3 78 */	mr r3, r26
/* 814B2C38 | 3C 80 80 00 */	lis r4, 0x8000
/* 814B2C3C | 38 A0 00 01 */	li r5, 0x1
/* 814B2C40 | 48 00 01 3D */	bl SOiConcludeTempRm
/* 814B2C44 | 7C 7E 1B 78 */	mr r30, r3
/* 814B2C48 | 48 00 00 18 */	b .L_814B2C60
.L_814B2C4C:
/* 814B2C4C | 7F 43 D3 78 */	mr r3, r26
/* 814B2C50 | 38 80 FF D0 */	li r4, -0x30
/* 814B2C54 | 38 A0 00 01 */	li r5, 0x1
/* 814B2C58 | 48 00 01 25 */	bl SOiConcludeTempRm
/* 814B2C5C | 7C 7E 1B 78 */	mr r30, r3
.L_814B2C60:
/* 814B2C60 | 48 07 DC 25 */	bl OSDisableInterrupts
/* 814B2C64 | 7C 7D 1B 78 */	mr r29, r3
/* 814B2C68 | 48 00 00 D0 */	b .L_814B2D38
.L_814B2C6C:
/* 814B2C6C | 38 03 00 1D */	addi r0, r3, 0x1d
/* 814B2C70 | 28 00 00 1C */	cmplwi r0, 0x1c
/* 814B2C74 | 41 81 00 34 */	bgt .L_814B2CA8
/* 814B2C78 | 3C 60 81 67 */	lis r3, jumptable_8166E3C8@ha
/* 814B2C7C | 54 00 10 3A */	slwi r0, r0, 2
/* 814B2C80 | 38 63 E3 C8 */	addi r3, r3, jumptable_8166E3C8@l
/* 814B2C84 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814B2C88 | 7C 69 03 A6 */	mtctr r3
/* 814B2C8C | 4E 80 04 20 */	bctr
.L_814B2C90:
/* 814B2C90 | 3B C0 FF E6 */	li r30, -0x1a
/* 814B2C94 | 48 00 00 18 */	b .L_814B2CAC
.L_814B2C98:
/* 814B2C98 | 3B C0 FF D9 */	li r30, -0x27
/* 814B2C9C | 48 00 00 10 */	b .L_814B2CAC
.L_814B2CA0:
/* 814B2CA0 | 3B C0 FF D0 */	li r30, -0x30
/* 814B2CA4 | 48 00 00 08 */	b .L_814B2CAC
.L_814B2CA8:
/* 814B2CA8 | 3F C0 80 00 */	lis r30, 0x8000
.L_814B2CAC:
/* 814B2CAC | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B2CB0 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B2CB4 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814B2CB8 | 48 0C 00 39 */	bl fn_81572CF0
/* 814B2CBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2CC0 | 40 80 00 08 */	bge .L_814B2CC8
/* 814B2CC4 | 3F C0 80 00 */	lis r30, 0x8000
.L_814B2CC8:
/* 814B2CC8 | 48 07 DB BD */	bl OSDisableInterrupts
/* 814B2CCC | 3C 1E 80 00 */	addis r0, r30, 0x8000
/* 814B2CD0 | 7C 7D 1B 78 */	mr r29, r3
/* 814B2CD4 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814B2CD8 | 41 82 00 60 */	beq .L_814B2D38
/* 814B2CDC | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B2CE0 | 38 80 FF FF */	li r4, -0x1
/* 814B2CE4 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B2CE8 | 38 00 FF FE */	li r0, -0x2
/* 814B2CEC | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814B2CF0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814B2CF4 | 48 00 00 44 */	b .L_814B2D38
.L_814B2CF8:
/* 814B2CF8 | 3F E0 81 0D */	lis r31, soWork@ha
/* 814B2CFC | 3B FF 9B C0 */	addi r31, r31, soWork@l
/* 814B2D00 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814B2D04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B2D08 | 40 80 00 0C */	bge .L_814B2D14
/* 814B2D0C | 3B C0 FF F6 */	li r30, -0xa
/* 814B2D10 | 48 00 00 28 */	b .L_814B2D38
.L_814B2D14:
/* 814B2D14 | 48 08 12 4D */	bl OSGetCurrentThread
/* 814B2D18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2D1C | 40 82 00 0C */	bne .L_814B2D28
/* 814B2D20 | 3F C0 80 00 */	lis r30, 0x8000
/* 814B2D24 | 48 00 00 14 */	b .L_814B2D38
.L_814B2D28:
/* 814B2D28 | 38 00 00 00 */	li r0, 0x0
/* 814B2D2C | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814B2D30 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814B2D34 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814B2D38:
/* 814B2D38 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B2D3C | 41 82 00 1C */	beq .L_814B2D58
/* 814B2D40 | 48 08 12 21 */	bl OSGetCurrentThread
/* 814B2D44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2D48 | 41 82 00 0C */	beq .L_814B2D54
/* 814B2D4C | 93 C3 03 0C */	stw r30, 0x30c(r3)
/* 814B2D50 | 48 00 00 08 */	b .L_814B2D58
.L_814B2D54:
/* 814B2D54 | 93 CD AE 14 */	stw r30, soError@sda21(r0)
.L_814B2D58:
/* 814B2D58 | 7F A3 EB 78 */	mr r3, r29
/* 814B2D5C | 48 07 DB 51 */	bl OSRestoreInterrupts
/* 814B2D60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B2D64 | 7F C3 F3 78 */	mr r3, r30
/* 814B2D68 | 48 14 67 A1 */	bl _restgpr_26
/* 814B2D6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B2D70 | 7C 08 03 A6 */	mtlr r0
/* 814B2D74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B2D78 | 4E 80 00 20 */	blr
.endfn SOiPrepareTempRm

# .text:0xE44 | 0x814B2D7C | size: 0xE4
.fn SOiConcludeTempRm, global
/* 814B2D7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B2D80 | 7C 08 02 A6 */	mflr r0
/* 814B2D84 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814B2D88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B2D8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B2D90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B2D94 | 7C 9E 23 78 */	mr r30, r4
/* 814B2D98 | 40 82 00 84 */	bne .L_814B2E1C
/* 814B2D9C | 4B FF 88 E1 */	bl NWC24iUnlockSocket
/* 814B2DA0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814B2DA4 | 41 82 00 28 */	beq .L_814B2DCC
/* 814B2DA8 | 40 80 00 10 */	bge .L_814B2DB8
/* 814B2DAC | 2C 03 FF E3 */	cmpwi r3, -0x1d
/* 814B2DB0 | 41 82 00 14 */	beq .L_814B2DC4
/* 814B2DB4 | 48 00 00 18 */	b .L_814B2DCC
.L_814B2DB8:
/* 814B2DB8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814B2DBC | 40 80 00 10 */	bge .L_814B2DCC
/* 814B2DC0 | 48 00 00 10 */	b .L_814B2DD0
.L_814B2DC4:
/* 814B2DC4 | 3B C0 FF E6 */	li r30, -0x1a
/* 814B2DC8 | 48 00 00 08 */	b .L_814B2DD0
.L_814B2DCC:
/* 814B2DCC | 3F C0 80 00 */	lis r30, 0x8000
.L_814B2DD0:
/* 814B2DD0 | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B2DD4 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B2DD8 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814B2DDC | 48 0B FF 15 */	bl fn_81572CF0
/* 814B2DE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2DE4 | 40 80 00 08 */	bge .L_814B2DEC
/* 814B2DE8 | 3F C0 80 00 */	lis r30, 0x8000
.L_814B2DEC:
/* 814B2DEC | 48 07 DA 99 */	bl OSDisableInterrupts
/* 814B2DF0 | 3C 1E 80 00 */	addis r0, r30, 0x8000
/* 814B2DF4 | 7C 7F 1B 78 */	mr r31, r3
/* 814B2DF8 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814B2DFC | 41 82 00 28 */	beq .L_814B2E24
/* 814B2E00 | 3C 60 81 0D */	lis r3, soWork@ha
/* 814B2E04 | 38 80 FF FF */	li r4, -0x1
/* 814B2E08 | 38 63 9B C0 */	addi r3, r3, soWork@l
/* 814B2E0C | 38 00 FF FE */	li r0, -0x2
/* 814B2E10 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814B2E14 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814B2E18 | 48 00 00 0C */	b .L_814B2E24
.L_814B2E1C:
/* 814B2E1C | 48 07 DA 69 */	bl OSDisableInterrupts
/* 814B2E20 | 7C 7F 1B 78 */	mr r31, r3
.L_814B2E24:
/* 814B2E24 | 48 08 11 3D */	bl OSGetCurrentThread
/* 814B2E28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2E2C | 41 82 00 0C */	beq .L_814B2E38
/* 814B2E30 | 93 C3 03 0C */	stw r30, 0x30c(r3)
/* 814B2E34 | 48 00 00 08 */	b .L_814B2E3C
.L_814B2E38:
/* 814B2E38 | 93 CD AE 14 */	stw r30, soError@sda21(r0)
.L_814B2E3C:
/* 814B2E3C | 7F E3 FB 78 */	mr r3, r31
/* 814B2E40 | 48 07 DA 6D */	bl OSRestoreInterrupts
/* 814B2E44 | 7F C3 F3 78 */	mr r3, r30
/* 814B2E48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B2E4C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B2E50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B2E54 | 7C 08 03 A6 */	mtlr r0
/* 814B2E58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B2E5C | 4E 80 00 20 */	blr
.endfn SOiConcludeTempRm

# .text:0xF28 | 0x814B2E60 | size: 0x138
.fn SOiWaitForDHCPEx, global
/* 814B2E60 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814B2E64 | 7C 08 02 A6 */	mflr r0
/* 814B2E68 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814B2E6C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B2E70 | 48 14 66 3D */	bl _savegpr_22
/* 814B2E74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2E78 | 7C 76 1B 78 */	mr r22, r3
/* 814B2E7C | 3B E0 00 00 */	li r31, 0x0
/* 814B2E80 | 3B A0 00 00 */	li r29, 0x0
/* 814B2E84 | 3B C0 00 00 */	li r30, 0x0
/* 814B2E88 | 41 82 00 34 */	beq .L_814B2EBC
/* 814B2E8C | 48 08 2E AD */	bl __OSGetSystemTime
/* 814B2E90 | 3C C0 80 00 */	lis r6, 0x8000
/* 814B2E94 | 3C A0 10 62 */	lis r5, 0x1062
/* 814B2E98 | 80 C6 00 F8 */	lwz r6, 0xf8(r6)
/* 814B2E9C | 38 E5 4D D3 */	addi r7, r5, 0x4dd3
/* 814B2EA0 | 38 00 00 00 */	li r0, 0x0
/* 814B2EA4 | 54 C5 F0 BE */	srwi r5, r6, 2
/* 814B2EA8 | 7C A7 28 16 */	mulhwu r5, r7, r5
/* 814B2EAC | 54 A5 D1 BE */	srwi r5, r5, 6
/* 814B2EB0 | 7C B6 29 D6 */	mullw r5, r22, r5
/* 814B2EB4 | 7F A5 20 14 */	addc r29, r5, r4
/* 814B2EB8 | 7F C0 19 14 */	adde r30, r0, r3
.L_814B2EBC:
/* 814B2EBC | 38 00 00 00 */	li r0, 0x0
/* 814B2EC0 | 3B 00 00 0A */	li r24, 0xa
/* 814B2EC4 | 7F 20 C1 D6 */	mullw r25, r0, r24
/* 814B2EC8 | 3C 60 10 62 */	lis r3, 0x1062
/* 814B2ECC | 7F BC F3 78 */	or r28, r29, r30
/* 814B2ED0 | 3A C3 4D D3 */	addi r22, r3, 0x4dd3
/* 814B2ED4 | 3B 40 00 04 */	li r26, 0x4
/* 814B2ED8 | 3F 60 00 01 */	lis r27, 0x1
/* 814B2EDC | 3E E0 80 00 */	lis r23, 0x8000
.L_814B2EE0:
/* 814B2EE0 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814B2EE4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B2EE8 | 7C 16 00 16 */	mulhwu r0, r22, r0
/* 814B2EEC | 54 03 D1 BE */	srwi r3, r0, 6
/* 814B2EF0 | 7C 03 C0 16 */	mulhwu r0, r3, r24
/* 814B2EF4 | 1C 83 00 0A */	mulli r4, r3, 0xa
/* 814B2EF8 | 7C 60 CA 14 */	add r3, r0, r25
/* 814B2EFC | 48 08 2C D1 */	bl OSSleepTicks
/* 814B2F00 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 814B2F04 | 38 9B FF FE */	subi r4, r27, 0x2
/* 814B2F08 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814B2F0C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814B2F10 | 38 60 00 00 */	li r3, 0x0
/* 814B2F14 | 38 A0 10 03 */	li r5, 0x1003
/* 814B2F18 | 48 00 18 55 */	bl SOGetInterfaceOpt
/* 814B2F1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2F20 | 41 82 00 0C */	beq .L_814B2F2C
/* 814B2F24 | 7C 7F 1B 78 */	mr r31, r3
/* 814B2F28 | 48 00 00 54 */	b .L_814B2F7C
.L_814B2F2C:
/* 814B2F2C | 40 82 00 18 */	bne .L_814B2F44
/* 814B2F30 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814B2F34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B2F38 | 41 82 00 0C */	beq .L_814B2F44
/* 814B2F3C | 7C 1F 03 78 */	mr r31, r0
/* 814B2F40 | 48 00 00 3C */	b .L_814B2F7C
.L_814B2F44:
/* 814B2F44 | 48 00 11 21 */	bl SOGetHostID
/* 814B2F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2F4C | 40 82 00 30 */	bne .L_814B2F7C
/* 814B2F50 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B2F54 | 41 82 FF 8C */	beq .L_814B2EE0
/* 814B2F58 | 48 08 2D E1 */	bl __OSGetSystemTime
/* 814B2F5C | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 814B2F60 | 6F C0 80 00 */	xoris r0, r30, 0x8000
/* 814B2F64 | 7C 64 E8 10 */	subfc r3, r4, r29
/* 814B2F68 | 7C A5 01 10 */	subfe r5, r5, r0
/* 814B2F6C | 7C A0 01 10 */	subfe r5, r0, r0
/* 814B2F70 | 7C A5 00 D1 */	neg. r5, r5
/* 814B2F74 | 41 82 FF 6C */	beq .L_814B2EE0
/* 814B2F78 | 3B E0 FF B4 */	li r31, -0x4c
.L_814B2F7C:
/* 814B2F7C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B2F80 | 7F E3 FB 78 */	mr r3, r31
/* 814B2F84 | 48 14 65 75 */	bl _restgpr_22
/* 814B2F88 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814B2F8C | 7C 08 03 A6 */	mtlr r0
/* 814B2F90 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814B2F94 | 4E 80 00 20 */	blr
.endfn SOiWaitForDHCPEx

# .text:0x1060 | 0x814B2F98 | size: 0xD4
.fn __SOCreateSocket, global
/* 814B2F98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B2F9C | 7C 08 02 A6 */	mflr r0
/* 814B2FA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B2FA4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B2FA8 | 7C BF 2B 78 */	mr r31, r5
/* 814B2FAC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B2FB0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B2FB4 | 7C 9D 23 78 */	mr r29, r4
/* 814B2FB8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B2FBC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814B2FC0 | 7C 7C 1B 78 */	mr r28, r3
/* 814B2FC4 | 38 60 00 00 */	li r3, 0x0
/* 814B2FC8 | 4B FF F9 99 */	bl SOiPrepare
/* 814B2FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2FD0 | 40 82 00 7C */	bne .L_814B304C
/* 814B2FD4 | 2C 1C 00 17 */	cmpwi r28, 0x17
/* 814B2FD8 | 40 82 00 0C */	bne .L_814B2FE4
/* 814B2FDC | 3B E0 FF FB */	li r31, -0x5
/* 814B2FE0 | 48 00 00 60 */	b .L_814B3040
.L_814B2FE4:
/* 814B2FE4 | 38 60 00 0C */	li r3, 0xc
/* 814B2FE8 | 38 80 00 20 */	li r4, 0x20
/* 814B2FEC | 4B FF F8 59 */	bl SOiAlloc
/* 814B2FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B2FF4 | 7C 7E 1B 78 */	mr r30, r3
/* 814B2FF8 | 40 82 00 0C */	bne .L_814B3004
/* 814B2FFC | 3B E0 FF CF */	li r31, -0x31
/* 814B3000 | 48 00 00 40 */	b .L_814B3040
.L_814B3004:
/* 814B3004 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 814B3008 | 7F C5 F3 78 */	mr r5, r30
/* 814B300C | 38 80 00 0F */	li r4, 0xf
/* 814B3010 | 38 C0 00 0C */	li r6, 0xc
/* 814B3014 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 814B3018 | 38 E0 00 00 */	li r7, 0x0
/* 814B301C | 39 00 00 00 */	li r8, 0x0
/* 814B3020 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 814B3024 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B3028 | 48 0C 04 81 */	bl fn_815734A8
/* 814B302C | 7C 7F 1B 78 */	mr r31, r3
/* 814B3030 | 7F C4 F3 78 */	mr r4, r30
/* 814B3034 | 38 60 00 0C */	li r3, 0xc
/* 814B3038 | 38 A0 00 20 */	li r5, 0x20
/* 814B303C | 4B FF F8 F1 */	bl SOiFree
.L_814B3040:
/* 814B3040 | 7F E4 FB 78 */	mr r4, r31
/* 814B3044 | 38 60 00 00 */	li r3, 0x0
/* 814B3048 | 4B FF FA 01 */	bl SOiConclude
.L_814B304C:
/* 814B304C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B3050 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B3054 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B3058 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B305C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814B3060 | 7C 08 03 A6 */	mtlr r0
/* 814B3064 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B3068 | 4E 80 00 20 */	blr
.endfn __SOCreateSocket

# 0x8166E260..0x8166E440 | size: 0x1E0
.data
.balign 8

# .data:0x0 | 0x8166E260 | size: 0x48
.obj lbl_8166E260, global
	.4byte 0x3C3C2052
	.4byte 0x564C5F53
	.4byte 0x444B202D
	.4byte 0x20534F20
	.4byte 0x0972656C
	.4byte 0x65617365
	.4byte 0x20627569
	.4byte 0x6C643A20
	.4byte 0x44656320
	.4byte 0x31322032
	.4byte 0x30303820
	.4byte 0x30333A30
	.4byte 0x363A3136
	.4byte 0x20283078
	.4byte 0x34313939
	.4byte 0x5F363038
	.4byte 0x33312920
	.4byte 0x3E3E0000
.endobj lbl_8166E260

# .data:0x48 | 0x8166E2A8 | size: 0x10
.obj lbl_8166E2A8, global
	.string "/dev/net/ip/top"
.endobj lbl_8166E2A8

# .data:0x58 | 0x8166E2B8 | size: 0x88
.obj jumptable_8166E2B8, local
	.rel SOStartupEx, .L_814B24D4
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E4
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24CC
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24CC
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24E8
	.rel SOStartupEx, .L_814B24D4
	.rel SOStartupEx, .L_814B24DC
	.rel SOStartupEx, .L_814B24C4
.endobj jumptable_8166E2B8

# .data:0xE0 | 0x8166E340 | size: 0x88
.obj jumptable_8166E340, local
	.rel SOCleanup, .L_814B270C
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B271C
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2704
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2704
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B2720
	.rel SOCleanup, .L_814B270C
	.rel SOCleanup, .L_814B2714
	.rel SOCleanup, .L_814B26FC
.endobj jumptable_8166E340

# .data:0x168 | 0x8166E3C8 | size: 0x74
.obj jumptable_8166E3C8, local
	.rel SOiPrepareTempRm, .L_814B2C90
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA0
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2CA8
	.rel SOiPrepareTempRm, .L_814B2C98
	.rel SOiPrepareTempRm, .L_814B2CA8
.endobj jumptable_8166E3C8

# .data:0x1DC | 0x8166E43C | size: 0x4
.obj gap_08_8166E43C_data, global
.hidden gap_08_8166E43C_data
	.4byte 0x00000000
.endobj gap_08_8166E43C_data

# 0x81697CD0..0x81697CD8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CD0 | size: 0x4
.obj __SOVersion, global
	.4byte lbl_8166E260
.endobj __SOVersion

# .sdata:0x4 | 0x81697CD4 | size: 0x4
.obj lbl_81697CD4, global
	.4byte 0x00000001
.endobj lbl_81697CD4

# 0x81698E50..0x81698E60 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E50 | size: 0x1
.obj soState, local
	.skip 0x1
.endobj soState

# .sbss:0x1 | 0x81698E51 | size: 0x3
.obj gap_12_81698E51_sbss, global
.hidden gap_12_81698E51_sbss
	.skip 0x3
.endobj gap_12_81698E51_sbss

# .sbss:0x4 | 0x81698E54 | size: 0x4
.obj soError, local
	.skip 0x4
.endobj soError

# .sbss:0x8 | 0x81698E58 | size: 0x4
.obj soRegistered, local
	.skip 0x4
.endobj soRegistered

# .sbss:0xC | 0x81698E5C | size: 0x4
.obj gap_12_81698E5C_sbss, global
.hidden gap_12_81698E5C_sbss
	.skip 0x4
.endobj gap_12_81698E5C_sbss
