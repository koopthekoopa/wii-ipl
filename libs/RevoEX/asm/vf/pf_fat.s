.include "macros.inc"
.file "pf_fat.c"

# 0x814C205C..0x814C5024 | size: 0x2FC8
.text
.balign 4

# .text:0x0 | 0x814C205C | size: 0x130
.fn VFiPFFAT_ReadFATSector, global
/* 814C205C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C2060 | 7C 08 02 A6 */	mflr r0
/* 814C2064 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C2068 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C206C | 48 13 74 55 */	bl _savegpr_27
/* 814C2070 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2074 | 7C 7B 1B 78 */	mr r27, r3
/* 814C2078 | 7C 9C 23 78 */	mr r28, r4
/* 814C207C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C2080 | 41 82 00 30 */	beq .L_814C20B0
/* 814C2084 | 40 80 00 10 */	bge .L_814C2094
/* 814C2088 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C208C | 40 80 00 14 */	bge .L_814C20A0
/* 814C2090 | 48 00 00 30 */	b .L_814C20C0
.L_814C2094:
/* 814C2094 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C2098 | 40 80 00 28 */	bge .L_814C20C0
/* 814C209C | 48 00 00 1C */	b .L_814C20B8
.L_814C20A0:
/* 814C20A0 | 54 A0 F8 7E */	srwi r0, r5, 1
/* 814C20A4 | 7C 05 02 14 */	add r0, r5, r0
/* 814C20A8 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 814C20AC | 48 00 00 1C */	b .L_814C20C8
.L_814C20B0:
/* 814C20B0 | 54 A6 08 3C */	slwi r6, r5, 1
/* 814C20B4 | 48 00 00 14 */	b .L_814C20C8
.L_814C20B8:
/* 814C20B8 | 54 A6 10 3A */	slwi r6, r5, 2
/* 814C20BC | 48 00 00 0C */	b .L_814C20C8
.L_814C20C0:
/* 814C20C0 | 38 60 00 0F */	li r3, 0xf
/* 814C20C4 | 48 00 00 B0 */	b .L_814C2174
.L_814C20C8:
/* 814C20C8 | A0 A3 00 18 */	lhz r5, 0x18(r3)
/* 814C20CC | 3B C0 00 01 */	li r30, 0x1
/* 814C20D0 | 88 83 00 20 */	lbz r4, 0x20(r3)
/* 814C20D4 | 54 A0 06 31 */	rlwinm. r0, r5, 0, 24, 24
/* 814C20D8 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814C20DC | 7C C0 24 30 */	srw r0, r6, r4
/* 814C20E0 | 7C 03 02 14 */	add r0, r3, r0
/* 814C20E4 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814C20E8 | 41 82 00 08 */	beq .L_814C20F0
/* 814C20EC | 54 BE 07 7E */	clrlwi r30, r5, 29
.L_814C20F0:
/* 814C20F0 | 7F 63 DB 78 */	mr r3, r27
/* 814C20F4 | 7F A4 EB 78 */	mr r4, r29
/* 814C20F8 | 7F 85 E3 78 */	mr r5, r28
/* 814C20FC | 4B FF 9E 61 */	bl VFiPFCACHE_ReadFATPage
/* 814C2100 | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C2104 | 7C 7F 1B 78 */	mr r31, r3
/* 814C2108 | 40 82 00 50 */	bne .L_814C2158
/* 814C210C | 81 9B 18 78 */	lwz r12, 0x1878(r27)
/* 814C2110 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C2114 | 41 82 00 44 */	beq .L_814C2158
/* 814C2118 | 80 7B 18 58 */	lwz r3, 0x1858(r27)
/* 814C211C | 7D 89 03 A6 */	mtctr r12
/* 814C2120 | 4E 80 04 21 */	bctrl
/* 814C2124 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2128 | 41 82 00 40 */	beq .L_814C2168
/* 814C212C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C2130 | 40 82 00 28 */	bne .L_814C2158
/* 814C2134 | 88 1B 00 22 */	lbz r0, 0x22(r27)
/* 814C2138 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C213C | 41 80 00 1C */	blt .L_814C2158
/* 814C2140 | 7C 1E 00 40 */	cmplw r30, r0
/* 814C2144 | 40 80 00 14 */	bge .L_814C2158
/* 814C2148 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 814C214C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814C2150 | 7F BD 02 14 */	add r29, r29, r0
/* 814C2154 | 48 00 00 14 */	b .L_814C2168
.L_814C2158:
/* 814C2158 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C215C | 41 82 00 0C */	beq .L_814C2168
/* 814C2160 | 7F E3 FB 78 */	mr r3, r31
/* 814C2164 | 48 00 00 10 */	b .L_814C2174
.L_814C2168:
/* 814C2168 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C216C | 40 82 FF 84 */	bne .L_814C20F0
/* 814C2170 | 7F E3 FB 78 */	mr r3, r31
.L_814C2174:
/* 814C2174 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C2178 | 48 13 73 95 */	bl _restgpr_27
/* 814C217C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C2180 | 7C 08 03 A6 */	mtlr r0
/* 814C2184 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C2188 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_ReadFATSector

# .text:0x130 | 0x814C218C | size: 0x204
.fn VFiPFFAT_SearchForNumFreeClusters, global
/* 814C218C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814C2190 | 7C 08 02 A6 */	mflr r0
/* 814C2194 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814C2198 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C219C | 48 13 73 05 */	bl _savegpr_19
/* 814C21A0 | 38 00 FF FF */	li r0, -0x1
/* 814C21A4 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C21A8 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C21AC | 7C 74 1B 78 */	mr r20, r3
/* 814C21B0 | 7C 95 23 78 */	mr r21, r4
/* 814C21B4 | 7C B6 2B 78 */	mr r22, r5
/* 814C21B8 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814C21BC | 7C D7 33 78 */	mr r23, r6
/* 814C21C0 | 7C F8 3B 78 */	mr r24, r7
/* 814C21C4 | 7D 19 43 78 */	mr r25, r8
/* 814C21C8 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814C21CC | 3B 60 00 00 */	li r27, 0x0
/* 814C21D0 | 3B C0 00 00 */	li r30, 0x0
/* 814C21D4 | 3B A0 FF FF */	li r29, -0x1
/* 814C21D8 | 3B E3 00 02 */	addi r31, r3, 0x2
/* 814C21DC | 3B 80 00 00 */	li r28, 0x0
/* 814C21E0 | 41 80 00 0C */	blt .L_814C21EC
/* 814C21E4 | 7C 04 F8 40 */	cmplw r4, r31
/* 814C21E8 | 41 80 00 08 */	blt .L_814C21F0
.L_814C21EC:
/* 814C21EC | 3A A0 00 02 */	li r21, 0x2
.L_814C21F0:
/* 814C21F0 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814C21F4 | 41 80 00 0C */	blt .L_814C2200
/* 814C21F8 | 7C 05 F8 40 */	cmplw r5, r31
/* 814C21FC | 41 80 00 08 */	blt .L_814C2204
.L_814C2200:
/* 814C2200 | 3A DF FF FF */	subi r22, r31, 0x1
.L_814C2204:
/* 814C2204 | 7E BA AB 78 */	mr r26, r21
/* 814C2208 | 7E 83 A3 78 */	mr r3, r20
/* 814C220C | 7E A5 AB 78 */	mr r5, r21
/* 814C2210 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C2214 | 4B FF FE 49 */	bl VFiPFFAT_ReadFATSector
/* 814C2218 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C221C | 41 82 00 08 */	beq .L_814C2224
/* 814C2220 | 48 00 01 58 */	b .L_814C2378
.L_814C2224:
/* 814C2224 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C2228 | 38 00 00 00 */	li r0, 0x0
/* 814C222C | 3A 60 FF FF */	li r19, -0x1
/* 814C2230 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 814C2234 | 48 00 01 10 */	b .L_814C2344
.L_814C2238:
/* 814C2238 | 7C 1F A8 40 */	cmplw r31, r21
/* 814C223C | 41 81 00 08 */	bgt .L_814C2244
/* 814C2240 | 3A A0 00 02 */	li r21, 0x2
.L_814C2244:
/* 814C2244 | 80 14 00 1C */	lwz r0, 0x1c(r20)
/* 814C2248 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C224C | 41 82 00 38 */	beq .L_814C2284
/* 814C2250 | 40 80 00 10 */	bge .L_814C2260
/* 814C2254 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2258 | 40 80 00 14 */	bge .L_814C226C
/* 814C225C | 48 00 00 58 */	b .L_814C22B4
.L_814C2260:
/* 814C2260 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C2264 | 40 80 00 50 */	bge .L_814C22B4
/* 814C2268 | 48 00 00 34 */	b .L_814C229C
.L_814C226C:
/* 814C226C | 7E 83 A3 78 */	mr r3, r20
/* 814C2270 | 56 A4 04 3E */	clrlwi r4, r21, 16
/* 814C2274 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2278 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C227C | 48 00 2F 8D */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C2280 | 48 00 00 38 */	b .L_814C22B8
.L_814C2284:
/* 814C2284 | 7E 83 A3 78 */	mr r3, r20
/* 814C2288 | 7E A4 AB 78 */	mr r4, r21
/* 814C228C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2290 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2294 | 48 00 3A 2D */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C2298 | 48 00 00 20 */	b .L_814C22B8
.L_814C229C:
/* 814C229C | 7E 83 A3 78 */	mr r3, r20
/* 814C22A0 | 7E A4 AB 78 */	mr r4, r21
/* 814C22A4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C22A8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C22AC | 48 00 3F B1 */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C22B0 | 48 00 00 08 */	b .L_814C22B8
.L_814C22B4:
/* 814C22B4 | 38 60 00 0F */	li r3, 0xf
.L_814C22B8:
/* 814C22B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C22BC | 41 82 00 08 */	beq .L_814C22C4
/* 814C22C0 | 48 00 00 B8 */	b .L_814C2378
.L_814C22C4:
/* 814C22C4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C22C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C22CC | 40 82 00 30 */	bne .L_814C22FC
/* 814C22D0 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 814C22D4 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C22D8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C22DC | 40 82 00 08 */	bne .L_814C22E4
/* 814C22E0 | 92 B8 00 00 */	stw r21, 0x0(r24)
.L_814C22E4:
/* 814C22E4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814C22E8 | 7C 1E B8 40 */	cmplw r30, r23
/* 814C22EC | 41 80 00 28 */	blt .L_814C2314
/* 814C22F0 | 92 B9 00 00 */	stw r21, 0x0(r25)
/* 814C22F4 | 38 60 00 00 */	li r3, 0x0
/* 814C22F8 | 48 00 00 80 */	b .L_814C2378
.L_814C22FC:
/* 814C22FC | 7C 1C F0 40 */	cmplw r28, r30
/* 814C2300 | 40 80 00 0C */	bge .L_814C230C
/* 814C2304 | 83 B8 00 00 */	lwz r29, 0x0(r24)
/* 814C2308 | 7F DC F3 78 */	mr r28, r30
.L_814C230C:
/* 814C230C | 92 78 00 00 */	stw r19, 0x0(r24)
/* 814C2310 | 3B C0 00 00 */	li r30, 0x0
.L_814C2314:
/* 814C2314 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C2318 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814C231C | 40 82 00 28 */	bne .L_814C2344
/* 814C2320 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C2324 | 40 82 00 20 */	bne .L_814C2344
/* 814C2328 | 28 15 00 02 */	cmplwi r21, 0x2
/* 814C232C | 40 81 00 18 */	ble .L_814C2344
/* 814C2330 | 7C 15 F8 40 */	cmplw r21, r31
/* 814C2334 | 40 82 00 10 */	bne .L_814C2344
/* 814C2338 | 7F 56 D3 78 */	mr r22, r26
/* 814C233C | 3A A0 00 02 */	li r21, 0x2
/* 814C2340 | 3B 60 00 01 */	li r27, 0x1
.L_814C2344:
/* 814C2344 | 7C 15 B0 40 */	cmplw r21, r22
/* 814C2348 | 40 81 FE F0 */	ble .L_814C2238
/* 814C234C | 7C 1C F0 40 */	cmplw r28, r30
/* 814C2350 | 40 80 00 0C */	bge .L_814C235C
/* 814C2354 | 83 B8 00 00 */	lwz r29, 0x0(r24)
/* 814C2358 | 7F DC F3 78 */	mr r28, r30
.L_814C235C:
/* 814C235C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C2360 | 41 82 00 14 */	beq .L_814C2374
/* 814C2364 | 7C 7C EA 14 */	add r3, r28, r29
/* 814C2368 | 93 B8 00 00 */	stw r29, 0x0(r24)
/* 814C236C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C2370 | 90 19 00 00 */	stw r0, 0x0(r25)
.L_814C2374:
/* 814C2374 | 38 60 00 00 */	li r3, 0x0
.L_814C2378:
/* 814C2378 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C237C | 48 13 71 71 */	bl _restgpr_19
/* 814C2380 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814C2384 | 7C 08 03 A6 */	mtlr r0
/* 814C2388 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814C238C | 4E 80 00 20 */	blr
.endfn VFiPFFAT_SearchForNumFreeClusters

# .text:0x334 | 0x814C2390 | size: 0x1BC
.fn VFiPFFAT_FindClusterLink, global
/* 814C2390 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C2394 | 7C 08 02 A6 */	mflr r0
/* 814C2398 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C239C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C23A0 | 48 13 71 21 */	bl _savegpr_27
/* 814C23A4 | 38 E0 FF FF */	li r7, -0x1
/* 814C23A8 | 38 00 00 00 */	li r0, 0x0
/* 814C23AC | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814C23B0 | 7C 7B 1B 78 */	mr r27, r3
/* 814C23B4 | 7C BE 2B 78 */	mr r30, r5
/* 814C23B8 | 7C DF 33 78 */	mr r31, r6
/* 814C23BC | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C23C0 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814C23C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C23C8 | 40 82 00 0C */	bne .L_814C23D4
/* 814C23CC | 38 60 00 00 */	li r3, 0x0
/* 814C23D0 | 48 00 01 64 */	b .L_814C2534
.L_814C23D4:
/* 814C23D4 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 814C23D8 | 7C 00 20 40 */	cmplw r0, r4
/* 814C23DC | 41 80 01 4C */	blt .L_814C2528
/* 814C23E0 | A0 E3 00 1C */	lhz r7, 0x1c(r3)
/* 814C23E4 | 38 07 00 01 */	addi r0, r7, 0x1
/* 814C23E8 | 7C E4 03 96 */	divwu r7, r4, r0
/* 814C23EC | 7C 07 01 D6 */	mullw r0, r7, r0
/* 814C23F0 | 7F 80 20 51 */	subf. r28, r0, r4
/* 814C23F4 | 40 82 00 20 */	bne .L_814C2414
/* 814C23F8 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 814C23FC | 54 E3 10 3A */	slwi r3, r7, 2
/* 814C2400 | 38 00 00 01 */	li r0, 0x1
/* 814C2404 | 7C 64 18 2E */	lwzx r3, r4, r3
/* 814C2408 | 90 65 00 00 */	stw r3, 0x0(r5)
/* 814C240C | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C2410 | 48 00 01 20 */	b .L_814C2530
.L_814C2414:
/* 814C2414 | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 814C2418 | 54 E0 10 3A */	slwi r0, r7, 2
/* 814C241C | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 814C2420 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C2424 | 7F A5 00 2E */	lwzx r29, r5, r0
/* 814C2428 | 7F A5 EB 78 */	mr r5, r29
/* 814C242C | 4B FF FC 31 */	bl VFiPFFAT_ReadFATSector
/* 814C2430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2434 | 41 82 00 9C */	beq .L_814C24D0
/* 814C2438 | 48 00 00 FC */	b .L_814C2534
/* 814C243C | 48 00 00 94 */	b .L_814C24D0
.L_814C2440:
/* 814C2440 | 80 7B 00 30 */	lwz r3, 0x30(r27)
/* 814C2444 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2448 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C244C | 41 82 00 34 */	beq .L_814C2480
/* 814C2450 | 40 80 00 10 */	bge .L_814C2460
/* 814C2454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2458 | 40 80 00 14 */	bge .L_814C246C
/* 814C245C | 48 00 00 4C */	b .L_814C24A8
.L_814C2460:
/* 814C2460 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C2464 | 40 80 00 44 */	bge .L_814C24A8
/* 814C2468 | 48 00 00 2C */	b .L_814C2494
.L_814C246C:
/* 814C246C | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 814C2470 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2474 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2478 | 48 00 2D 91 */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C247C | 48 00 00 30 */	b .L_814C24AC
.L_814C2480:
/* 814C2480 | 7F A4 EB 78 */	mr r4, r29
/* 814C2484 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2488 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C248C | 48 00 38 35 */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C2490 | 48 00 00 1C */	b .L_814C24AC
.L_814C2494:
/* 814C2494 | 7F A4 EB 78 */	mr r4, r29
/* 814C2498 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C249C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C24A0 | 48 00 3D BD */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C24A4 | 48 00 00 08 */	b .L_814C24AC
.L_814C24A8:
/* 814C24A8 | 38 60 00 0F */	li r3, 0xf
.L_814C24AC:
/* 814C24AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C24B0 | 41 82 00 08 */	beq .L_814C24B8
/* 814C24B4 | 48 00 00 80 */	b .L_814C2534
.L_814C24B8:
/* 814C24B8 | 83 A1 00 0C */	lwz r29, 0xc(r1)
/* 814C24BC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C24C0 | 40 82 00 0C */	bne .L_814C24CC
/* 814C24C4 | 38 60 00 0D */	li r3, 0xd
/* 814C24C8 | 48 00 00 6C */	b .L_814C2534
.L_814C24CC:
/* 814C24CC | 3B 9C FF FF */	subi r28, r28, 0x1
.L_814C24D0:
/* 814C24D0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C24D4 | 40 82 FF 6C */	bne .L_814C2440
/* 814C24D8 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814C24DC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C24E0 | 40 82 00 0C */	bne .L_814C24EC
/* 814C24E4 | 38 60 00 0D */	li r3, 0xd
/* 814C24E8 | 48 00 00 4C */	b .L_814C2534
.L_814C24EC:
/* 814C24EC | 80 7B 00 30 */	lwz r3, 0x30(r27)
/* 814C24F0 | 3C 80 81 62 */	lis r4, fat_special_values@ha
/* 814C24F4 | 38 84 8D F0 */	addi r4, r4, fat_special_values@l
/* 814C24F8 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C24FC | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C2500 | 7C 64 02 14 */	add r3, r4, r0
/* 814C2504 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C2508 | 7C 05 00 40 */	cmplw r5, r0
/* 814C250C | 40 82 00 0C */	bne .L_814C2518
/* 814C2510 | 38 60 00 00 */	li r3, 0x0
/* 814C2514 | 48 00 00 20 */	b .L_814C2534
.L_814C2518:
/* 814C2518 | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 814C251C | 38 00 00 01 */	li r0, 0x1
/* 814C2520 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814C2524 | 48 00 00 0C */	b .L_814C2530
.L_814C2528:
/* 814C2528 | 38 60 00 00 */	li r3, 0x0
/* 814C252C | 48 00 00 08 */	b .L_814C2534
.L_814C2530:
/* 814C2530 | 38 60 00 00 */	li r3, 0x0
.L_814C2534:
/* 814C2534 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C2538 | 48 13 6F D5 */	bl _restgpr_27
/* 814C253C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C2540 | 7C 08 03 A6 */	mtlr r0
/* 814C2544 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C2548 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_FindClusterLink

# .text:0x4F0 | 0x814C254C | size: 0x1AC
.fn VFiPFFAT_FindClusterLinkPage, global
/* 814C254C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C2550 | 7C 08 02 A6 */	mflr r0
/* 814C2554 | 39 00 FF FF */	li r8, -0x1
/* 814C2558 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C255C | 38 00 00 00 */	li r0, 0x0
/* 814C2560 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C2564 | 7C DF 33 78 */	mr r31, r6
/* 814C2568 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C256C | 7C BE 2B 78 */	mr r30, r5
/* 814C2570 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C2574 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C2578 | 7C 7C 1B 78 */	mr r28, r3
/* 814C257C | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 814C2580 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 814C2584 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C2588 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814C258C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2590 | 40 82 00 0C */	bne .L_814C259C
/* 814C2594 | 38 60 00 00 */	li r3, 0x0
/* 814C2598 | 48 00 01 40 */	b .L_814C26D8
.L_814C259C:
/* 814C259C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 814C25A0 | 7C 00 20 40 */	cmplw r0, r4
/* 814C25A4 | 41 80 01 28 */	blt .L_814C26CC
/* 814C25A8 | A0 E3 00 1C */	lhz r7, 0x1c(r3)
/* 814C25AC | 38 07 00 01 */	addi r0, r7, 0x1
/* 814C25B0 | 7C E4 03 96 */	divwu r7, r4, r0
/* 814C25B4 | 7C 07 01 D6 */	mullw r0, r7, r0
/* 814C25B8 | 7F A0 20 51 */	subf. r29, r0, r4
/* 814C25BC | 40 82 00 20 */	bne .L_814C25DC
/* 814C25C0 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 814C25C4 | 54 E3 10 3A */	slwi r3, r7, 2
/* 814C25C8 | 38 00 00 01 */	li r0, 0x1
/* 814C25CC | 7C 64 18 2E */	lwzx r3, r4, r3
/* 814C25D0 | 90 65 00 00 */	stw r3, 0x0(r5)
/* 814C25D4 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C25D8 | 48 00 00 FC */	b .L_814C26D4
.L_814C25DC:
/* 814C25DC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 814C25E0 | 54 E0 10 3A */	slwi r0, r7, 2
/* 814C25E4 | 7C 83 00 2E */	lwzx r4, r3, r0
/* 814C25E8 | 48 00 00 8C */	b .L_814C2674
.L_814C25EC:
/* 814C25EC | 80 7C 00 30 */	lwz r3, 0x30(r28)
/* 814C25F0 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C25F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C25F8 | 41 82 00 34 */	beq .L_814C262C
/* 814C25FC | 40 80 00 10 */	bge .L_814C260C
/* 814C2600 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2604 | 40 80 00 14 */	bge .L_814C2618
/* 814C2608 | 48 00 00 44 */	b .L_814C264C
.L_814C260C:
/* 814C260C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C2610 | 40 80 00 3C */	bge .L_814C264C
/* 814C2614 | 48 00 00 28 */	b .L_814C263C
.L_814C2618:
/* 814C2618 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814C261C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2620 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2624 | 48 00 2B E5 */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C2628 | 48 00 00 28 */	b .L_814C2650
.L_814C262C:
/* 814C262C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2630 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2634 | 48 00 36 8D */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C2638 | 48 00 00 18 */	b .L_814C2650
.L_814C263C:
/* 814C263C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2640 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2644 | 48 00 3C 19 */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C2648 | 48 00 00 08 */	b .L_814C2650
.L_814C264C:
/* 814C264C | 38 60 00 0F */	li r3, 0xf
.L_814C2650:
/* 814C2650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2654 | 41 82 00 08 */	beq .L_814C265C
/* 814C2658 | 48 00 00 80 */	b .L_814C26D8
.L_814C265C:
/* 814C265C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C2660 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C2664 | 40 82 00 0C */	bne .L_814C2670
/* 814C2668 | 38 60 00 0D */	li r3, 0xd
/* 814C266C | 48 00 00 6C */	b .L_814C26D8
.L_814C2670:
/* 814C2670 | 3B BD FF FF */	subi r29, r29, 0x1
.L_814C2674:
/* 814C2674 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C2678 | 40 82 FF 74 */	bne .L_814C25EC
/* 814C267C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814C2680 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C2684 | 40 82 00 0C */	bne .L_814C2690
/* 814C2688 | 38 60 00 0D */	li r3, 0xd
/* 814C268C | 48 00 00 4C */	b .L_814C26D8
.L_814C2690:
/* 814C2690 | 80 7C 00 30 */	lwz r3, 0x30(r28)
/* 814C2694 | 3C 80 81 62 */	lis r4, fat_special_values@ha
/* 814C2698 | 38 84 8D F0 */	addi r4, r4, fat_special_values@l
/* 814C269C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C26A0 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C26A4 | 7C 64 02 14 */	add r3, r4, r0
/* 814C26A8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C26AC | 7C 05 00 40 */	cmplw r5, r0
/* 814C26B0 | 40 82 00 0C */	bne .L_814C26BC
/* 814C26B4 | 38 60 00 00 */	li r3, 0x0
/* 814C26B8 | 48 00 00 20 */	b .L_814C26D8
.L_814C26BC:
/* 814C26BC | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 814C26C0 | 38 00 00 01 */	li r0, 0x1
/* 814C26C4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814C26C8 | 48 00 00 0C */	b .L_814C26D4
.L_814C26CC:
/* 814C26CC | 38 60 00 00 */	li r3, 0x0
/* 814C26D0 | 48 00 00 08 */	b .L_814C26D8
.L_814C26D4:
/* 814C26D4 | 38 60 00 00 */	li r3, 0x0
.L_814C26D8:
/* 814C26D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C26DC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C26E0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C26E4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C26E8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C26EC | 7C 08 03 A6 */	mtlr r0
/* 814C26F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C26F4 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_FindClusterLinkPage

# .text:0x69C | 0x814C26F8 | size: 0x1CC
.fn VFiPFFAT_ReadClusterPage, global
/* 814C26F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C26FC | 7C 08 02 A6 */	mflr r0
/* 814C2700 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C2704 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C2708 | 48 13 6D B5 */	bl _savegpr_26
/* 814C270C | 38 00 FF FF */	li r0, -0x1
/* 814C2710 | 7C 7E 1B 78 */	mr r30, r3
/* 814C2714 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C2718 | 7C 9A 23 78 */	mr r26, r4
/* 814C271C | 7C BF 2B 78 */	mr r31, r5
/* 814C2720 | 7C DB 33 78 */	mr r27, r6
/* 814C2724 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814C2728 | 7C FC 3B 78 */	mr r28, r7
/* 814C272C | 7D 1D 43 78 */	mr r29, r8
/* 814C2730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2734 | 41 82 00 30 */	beq .L_814C2764
/* 814C2738 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814C273C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2740 | 41 82 00 24 */	beq .L_814C2764
/* 814C2744 | 80 E8 00 00 */	lwz r7, 0x0(r8)
/* 814C2748 | 7F E4 FB 78 */	mr r4, r31
/* 814C274C | 7F 65 DB 78 */	mr r5, r27
/* 814C2750 | 7F 86 E3 78 */	mr r6, r28
/* 814C2754 | 4B FF FD F9 */	bl VFiPFFAT_FindClusterLinkPage
/* 814C2758 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C275C | 41 82 00 08 */	beq .L_814C2764
/* 814C2760 | 48 00 01 4C */	b .L_814C28AC
.L_814C2764:
/* 814C2764 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 814C2768 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C276C | 41 82 00 10 */	beq .L_814C277C
/* 814C2770 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814C2774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2778 | 40 82 01 30 */	bne .L_814C28A8
.L_814C277C:
/* 814C277C | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 814C2780 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2784 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C2788 | 41 82 00 34 */	beq .L_814C27BC
/* 814C278C | 40 80 00 10 */	bge .L_814C279C
/* 814C2790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2794 | 40 80 00 14 */	bge .L_814C27A8
/* 814C2798 | 48 00 00 4C */	b .L_814C27E4
.L_814C279C:
/* 814C279C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C27A0 | 40 80 00 44 */	bge .L_814C27E4
/* 814C27A4 | 48 00 00 2C */	b .L_814C27D0
.L_814C27A8:
/* 814C27A8 | 7F 65 DB 78 */	mr r5, r27
/* 814C27AC | 7F A6 EB 78 */	mr r6, r29
/* 814C27B0 | 57 44 04 3E */	clrlwi r4, r26, 16
/* 814C27B4 | 48 00 2A 55 */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C27B8 | 48 00 00 30 */	b .L_814C27E8
.L_814C27BC:
/* 814C27BC | 7F 44 D3 78 */	mr r4, r26
/* 814C27C0 | 7F 65 DB 78 */	mr r5, r27
/* 814C27C4 | 7F A6 EB 78 */	mr r6, r29
/* 814C27C8 | 48 00 34 F9 */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C27CC | 48 00 00 1C */	b .L_814C27E8
.L_814C27D0:
/* 814C27D0 | 7F 44 D3 78 */	mr r4, r26
/* 814C27D4 | 7F 65 DB 78 */	mr r5, r27
/* 814C27D8 | 7F A6 EB 78 */	mr r6, r29
/* 814C27DC | 48 00 3A 81 */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C27E0 | 48 00 00 08 */	b .L_814C27E8
.L_814C27E4:
/* 814C27E4 | 38 60 00 0F */	li r3, 0xf
.L_814C27E8:
/* 814C27E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C27EC | 41 82 00 08 */	beq .L_814C27F4
/* 814C27F0 | 48 00 00 BC */	b .L_814C28AC
.L_814C27F4:
/* 814C27F4 | 80 DB 00 00 */	lwz r6, 0x0(r27)
/* 814C27F8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C27FC | 40 82 00 0C */	bne .L_814C2808
/* 814C2800 | 38 60 00 0D */	li r3, 0xd
/* 814C2804 | 48 00 00 A8 */	b .L_814C28AC
.L_814C2808:
/* 814C2808 | 3C 06 00 01 */	addis r0, r6, 0x1
/* 814C280C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2810 | 40 82 00 0C */	bne .L_814C281C
/* 814C2814 | 38 60 00 06 */	li r3, 0x6
/* 814C2818 | 48 00 00 94 */	b .L_814C28AC
.L_814C281C:
/* 814C281C | 80 BE 00 18 */	lwz r5, 0x18(r30)
/* 814C2820 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C2824 | 41 82 00 84 */	beq .L_814C28A8
/* 814C2828 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 814C282C | 3C 80 81 62 */	lis r4, fat_special_values@ha
/* 814C2830 | 38 84 8D F0 */	addi r4, r4, fat_special_values@l
/* 814C2834 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2838 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C283C | 7C 64 02 14 */	add r3, r4, r0
/* 814C2840 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C2844 | 7C 06 00 40 */	cmplw r6, r0
/* 814C2848 | 41 82 00 60 */	beq .L_814C28A8
/* 814C284C | 80 9E 00 20 */	lwz r4, 0x20(r30)
/* 814C2850 | 80 1E 00 24 */	lwz r0, 0x24(r30)
/* 814C2854 | 7C 00 20 40 */	cmplw r0, r4
/* 814C2858 | 40 81 00 50 */	ble .L_814C28A8
/* 814C285C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2860 | 41 82 00 48 */	beq .L_814C28A8
/* 814C2864 | A0 7E 00 1C */	lhz r3, 0x1c(r30)
/* 814C2868 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C286C | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814C2870 | 7C 1F 00 40 */	cmplw r31, r0
/* 814C2874 | 40 82 00 24 */	bne .L_814C2898
/* 814C2878 | 38 60 00 00 */	li r3, 0x0
/* 814C287C | 54 80 10 3A */	slwi r0, r4, 2
/* 814C2880 | B0 7E 00 1E */	sth r3, 0x1e(r30)
/* 814C2884 | 7C C5 01 2E */	stwx r6, r5, r0
/* 814C2888 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 814C288C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2890 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 814C2894 | 48 00 00 10 */	b .L_814C28A4
.L_814C2898:
/* 814C2898 | A0 7E 00 1E */	lhz r3, 0x1e(r30)
/* 814C289C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C28A0 | B0 1E 00 1E */	sth r0, 0x1e(r30)
.L_814C28A4:
/* 814C28A4 | 93 FE 00 28 */	stw r31, 0x28(r30)
.L_814C28A8:
/* 814C28A8 | 38 60 00 00 */	li r3, 0x0
.L_814C28AC:
/* 814C28AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C28B0 | 48 13 6C 59 */	bl _restgpr_26
/* 814C28B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C28B8 | 7C 08 03 A6 */	mtlr r0
/* 814C28BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C28C0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_ReadClusterPage

# .text:0x868 | 0x814C28C4 | size: 0x224
.fn VFiPFFAT_WriteCluster, global
/* 814C28C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C28C8 | 7C 08 02 A6 */	mflr r0
/* 814C28CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C28D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C28D4 | 7C BF 2B 78 */	mr r31, r5
/* 814C28D8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C28DC | 7C 9E 23 78 */	mr r30, r4
/* 814C28E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C28E4 | 7C 7D 1B 78 */	mr r29, r3
/* 814C28E8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C28EC | 7C DC 33 78 */	mr r28, r6
/* 814C28F0 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 814C28F4 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 814C28F8 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C28FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C2900 | 41 82 00 40 */	beq .L_814C2940
/* 814C2904 | 40 80 00 10 */	bge .L_814C2914
/* 814C2908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C290C | 40 80 00 14 */	bge .L_814C2920
/* 814C2910 | 48 00 00 70 */	b .L_814C2980
.L_814C2914:
/* 814C2914 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C2918 | 40 80 00 68 */	bge .L_814C2980
/* 814C291C | 48 00 00 40 */	b .L_814C295C
.L_814C2920:
/* 814C2920 | 28 06 0F FF */	cmplwi r6, 0xfff
/* 814C2924 | 40 81 00 0C */	ble .L_814C2930
/* 814C2928 | 38 60 00 10 */	li r3, 0x10
/* 814C292C | 48 00 00 58 */	b .L_814C2984
.L_814C2930:
/* 814C2930 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814C2934 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 814C2938 | 48 00 2B AD */	bl VFiPFFAT12_WriteFATEntry
/* 814C293C | 48 00 00 48 */	b .L_814C2984
.L_814C2940:
/* 814C2940 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814C2944 | 40 81 00 0C */	ble .L_814C2950
/* 814C2948 | 38 60 00 10 */	li r3, 0x10
/* 814C294C | 48 00 00 38 */	b .L_814C2984
.L_814C2950:
/* 814C2950 | 7F 85 E3 78 */	mr r5, r28
/* 814C2954 | 48 00 35 2D */	bl VFiPFFAT16_WriteFATEntry
/* 814C2958 | 48 00 00 2C */	b .L_814C2984
.L_814C295C:
/* 814C295C | 3C A0 10 00 */	lis r5, 0x1000
/* 814C2960 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C2964 | 7C 06 00 40 */	cmplw r6, r0
/* 814C2968 | 40 81 00 0C */	ble .L_814C2974
/* 814C296C | 38 60 00 10 */	li r3, 0x10
/* 814C2970 | 48 00 00 14 */	b .L_814C2984
.L_814C2974:
/* 814C2974 | 7F 85 E3 78 */	mr r5, r28
/* 814C2978 | 48 00 3A B5 */	bl VFiPFFAT32_WriteFATEntry
/* 814C297C | 48 00 00 08 */	b .L_814C2984
.L_814C2980:
/* 814C2980 | 38 60 00 0F */	li r3, 0xf
.L_814C2984:
/* 814C2984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2988 | 41 82 00 08 */	beq .L_814C2990
/* 814C298C | 48 00 01 3C */	b .L_814C2AC8
.L_814C2990:
/* 814C2990 | 80 BD 00 18 */	lwz r5, 0x18(r29)
/* 814C2994 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C2998 | 41 82 01 2C */	beq .L_814C2AC4
/* 814C299C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C29A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C29A4 | 41 82 01 20 */	beq .L_814C2AC4
/* 814C29A8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C29AC | 40 82 00 68 */	bne .L_814C2A14
/* 814C29B0 | A0 7D 00 1C */	lhz r3, 0x1c(r29)
/* 814C29B4 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 814C29B8 | 38 83 00 01 */	addi r4, r3, 0x1
/* 814C29BC | 7C 7F 23 96 */	divwu r3, r31, r4
/* 814C29C0 | 7C 00 18 40 */	cmplw r0, r3
/* 814C29C4 | 41 80 01 00 */	blt .L_814C2AC4
/* 814C29C8 | 7C 03 21 D6 */	mullw r0, r3, r4
/* 814C29CC | 7C 00 F8 51 */	subf. r0, r0, r31
/* 814C29D0 | 40 82 00 10 */	bne .L_814C29E0
/* 814C29D4 | 54 60 10 3A */	slwi r0, r3, 2
/* 814C29D8 | 38 60 00 00 */	li r3, 0x0
/* 814C29DC | 7C 65 01 2E */	stwx r3, r5, r0
.L_814C29E0:
/* 814C29E0 | 80 1D 00 28 */	lwz r0, 0x28(r29)
/* 814C29E4 | 7C 00 F8 40 */	cmplw r0, r31
/* 814C29E8 | 41 80 00 DC */	blt .L_814C2AC4
/* 814C29EC | A0 7D 00 1C */	lhz r3, 0x1c(r29)
/* 814C29F0 | 38 9F FF FF */	subi r4, r31, 0x1
/* 814C29F4 | 90 9D 00 28 */	stw r4, 0x28(r29)
/* 814C29F8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C29FC | 7C 64 03 96 */	divwu r3, r4, r0
/* 814C2A00 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 814C2A04 | 90 7D 00 20 */	stw r3, 0x20(r29)
/* 814C2A08 | 7C 00 20 50 */	subf r0, r0, r4
/* 814C2A0C | B0 1D 00 1E */	sth r0, 0x1e(r29)
/* 814C2A10 | 48 00 00 B4 */	b .L_814C2AC4
.L_814C2A14:
/* 814C2A14 | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 814C2A18 | 3C 80 81 62 */	lis r4, fat_special_values@ha
/* 814C2A1C | 38 84 8D F0 */	addi r4, r4, fat_special_values@l
/* 814C2A20 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2A24 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C2A28 | 7C 64 02 14 */	add r3, r4, r0
/* 814C2A2C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C2A30 | 7C 1E 00 40 */	cmplw r30, r0
/* 814C2A34 | 41 82 00 90 */	beq .L_814C2AC4
/* 814C2A38 | 7F A3 EB 78 */	mr r3, r29
/* 814C2A3C | 7F E4 FB 78 */	mr r4, r31
/* 814C2A40 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2A44 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2A48 | 4B FF F9 49 */	bl VFiPFFAT_FindClusterLink
/* 814C2A4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2A50 | 41 82 00 08 */	beq .L_814C2A58
/* 814C2A54 | 48 00 00 74 */	b .L_814C2AC8
.L_814C2A58:
/* 814C2A58 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C2A5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2A60 | 40 82 00 64 */	bne .L_814C2AC4
/* 814C2A64 | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 814C2A68 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 814C2A6C | 7C 00 20 40 */	cmplw r0, r4
/* 814C2A70 | 40 81 00 54 */	ble .L_814C2AC4
/* 814C2A74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2A78 | 41 82 00 4C */	beq .L_814C2AC4
/* 814C2A7C | A0 7D 00 1C */	lhz r3, 0x1c(r29)
/* 814C2A80 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2A84 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814C2A88 | 7C 1F 00 40 */	cmplw r31, r0
/* 814C2A8C | 40 82 00 28 */	bne .L_814C2AB4
/* 814C2A90 | 38 00 00 00 */	li r0, 0x0
/* 814C2A94 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 814C2A98 | B0 1D 00 1E */	sth r0, 0x1e(r29)
/* 814C2A9C | 54 80 10 3A */	slwi r0, r4, 2
/* 814C2AA0 | 7F C3 01 2E */	stwx r30, r3, r0
/* 814C2AA4 | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 814C2AA8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2AAC | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 814C2AB0 | 48 00 00 10 */	b .L_814C2AC0
.L_814C2AB4:
/* 814C2AB4 | A0 7D 00 1E */	lhz r3, 0x1e(r29)
/* 814C2AB8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2ABC | B0 1D 00 1E */	sth r0, 0x1e(r29)
.L_814C2AC0:
/* 814C2AC0 | 93 FD 00 28 */	stw r31, 0x28(r29)
.L_814C2AC4:
/* 814C2AC4 | 38 60 00 00 */	li r3, 0x0
.L_814C2AC8:
/* 814C2AC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C2ACC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C2AD0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C2AD4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C2AD8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C2ADC | 7C 08 03 A6 */	mtlr r0
/* 814C2AE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C2AE4 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_WriteCluster

# .text:0xA8C | 0x814C2AE8 | size: 0x228
.fn VFiPFFAT_WriteClusterPage, global
/* 814C2AE8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C2AEC | 7C 08 02 A6 */	mflr r0
/* 814C2AF0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C2AF4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C2AF8 | 48 13 69 C9 */	bl _savegpr_27
/* 814C2AFC | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 814C2B00 | 7C 7D 1B 78 */	mr r29, r3
/* 814C2B04 | 7C 9E 23 78 */	mr r30, r4
/* 814C2B08 | 7C BF 2B 78 */	mr r31, r5
/* 814C2B0C | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 814C2B10 | 7C DB 33 78 */	mr r27, r6
/* 814C2B14 | 7D 1C 43 78 */	mr r28, r8
/* 814C2B18 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2B1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C2B20 | 41 82 00 44 */	beq .L_814C2B64
/* 814C2B24 | 40 80 00 10 */	bge .L_814C2B34
/* 814C2B28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2B2C | 40 80 00 14 */	bge .L_814C2B40
/* 814C2B30 | 48 00 00 7C */	b .L_814C2BAC
.L_814C2B34:
/* 814C2B34 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C2B38 | 40 80 00 74 */	bge .L_814C2BAC
/* 814C2B3C | 48 00 00 48 */	b .L_814C2B84
.L_814C2B40:
/* 814C2B40 | 28 06 0F FF */	cmplwi r6, 0xfff
/* 814C2B44 | 40 81 00 0C */	ble .L_814C2B50
/* 814C2B48 | 38 60 00 10 */	li r3, 0x10
/* 814C2B4C | 48 00 00 64 */	b .L_814C2BB0
.L_814C2B50:
/* 814C2B50 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 814C2B54 | 7F 86 E3 78 */	mr r6, r28
/* 814C2B58 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814C2B5C | 48 00 2B 2D */	bl VFiPFFAT12_WriteFATEntryPage
/* 814C2B60 | 48 00 00 50 */	b .L_814C2BB0
.L_814C2B64:
/* 814C2B64 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814C2B68 | 40 81 00 0C */	ble .L_814C2B74
/* 814C2B6C | 38 60 00 10 */	li r3, 0x10
/* 814C2B70 | 48 00 00 40 */	b .L_814C2BB0
.L_814C2B74:
/* 814C2B74 | 7F 65 DB 78 */	mr r5, r27
/* 814C2B78 | 7F 86 E3 78 */	mr r6, r28
/* 814C2B7C | 48 00 33 9D */	bl VFiPFFAT16_WriteFATEntryPage
/* 814C2B80 | 48 00 00 30 */	b .L_814C2BB0
.L_814C2B84:
/* 814C2B84 | 3C A0 10 00 */	lis r5, 0x1000
/* 814C2B88 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C2B8C | 7C 06 00 40 */	cmplw r6, r0
/* 814C2B90 | 40 81 00 0C */	ble .L_814C2B9C
/* 814C2B94 | 38 60 00 10 */	li r3, 0x10
/* 814C2B98 | 48 00 00 18 */	b .L_814C2BB0
.L_814C2B9C:
/* 814C2B9C | 7F 65 DB 78 */	mr r5, r27
/* 814C2BA0 | 7F 86 E3 78 */	mr r6, r28
/* 814C2BA4 | 48 00 39 A9 */	bl VFiPFFAT32_WriteFATEntryPage
/* 814C2BA8 | 48 00 00 08 */	b .L_814C2BB0
.L_814C2BAC:
/* 814C2BAC | 38 60 00 0F */	li r3, 0xf
.L_814C2BB0:
/* 814C2BB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2BB4 | 41 82 00 08 */	beq .L_814C2BBC
/* 814C2BB8 | 48 00 01 40 */	b .L_814C2CF8
.L_814C2BBC:
/* 814C2BBC | 80 BD 00 18 */	lwz r5, 0x18(r29)
/* 814C2BC0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C2BC4 | 41 82 01 30 */	beq .L_814C2CF4
/* 814C2BC8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C2BCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2BD0 | 41 82 01 24 */	beq .L_814C2CF4
/* 814C2BD4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C2BD8 | 40 82 00 68 */	bne .L_814C2C40
/* 814C2BDC | A0 7D 00 1C */	lhz r3, 0x1c(r29)
/* 814C2BE0 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 814C2BE4 | 38 83 00 01 */	addi r4, r3, 0x1
/* 814C2BE8 | 7C 7F 23 96 */	divwu r3, r31, r4
/* 814C2BEC | 7C 00 18 40 */	cmplw r0, r3
/* 814C2BF0 | 41 80 01 04 */	blt .L_814C2CF4
/* 814C2BF4 | 7C 03 21 D6 */	mullw r0, r3, r4
/* 814C2BF8 | 7C 00 F8 51 */	subf. r0, r0, r31
/* 814C2BFC | 40 82 00 10 */	bne .L_814C2C0C
/* 814C2C00 | 54 60 10 3A */	slwi r0, r3, 2
/* 814C2C04 | 38 60 00 00 */	li r3, 0x0
/* 814C2C08 | 7C 65 01 2E */	stwx r3, r5, r0
.L_814C2C0C:
/* 814C2C0C | 80 1D 00 28 */	lwz r0, 0x28(r29)
/* 814C2C10 | 7C 00 F8 40 */	cmplw r0, r31
/* 814C2C14 | 41 80 00 E0 */	blt .L_814C2CF4
/* 814C2C18 | A0 7D 00 1C */	lhz r3, 0x1c(r29)
/* 814C2C1C | 38 9F FF FF */	subi r4, r31, 0x1
/* 814C2C20 | 90 9D 00 28 */	stw r4, 0x28(r29)
/* 814C2C24 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2C28 | 7C 64 03 96 */	divwu r3, r4, r0
/* 814C2C2C | 7C 03 01 D6 */	mullw r0, r3, r0
/* 814C2C30 | 90 7D 00 20 */	stw r3, 0x20(r29)
/* 814C2C34 | 7C 00 20 50 */	subf r0, r0, r4
/* 814C2C38 | B0 1D 00 1E */	sth r0, 0x1e(r29)
/* 814C2C3C | 48 00 00 B8 */	b .L_814C2CF4
.L_814C2C40:
/* 814C2C40 | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 814C2C44 | 3C 80 81 62 */	lis r4, fat_special_values@ha
/* 814C2C48 | 38 84 8D F0 */	addi r4, r4, fat_special_values@l
/* 814C2C4C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C2C50 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C2C54 | 7C 64 02 14 */	add r3, r4, r0
/* 814C2C58 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C2C5C | 7C 1E 00 40 */	cmplw r30, r0
/* 814C2C60 | 41 82 00 94 */	beq .L_814C2CF4
/* 814C2C64 | 80 FC 00 00 */	lwz r7, 0x0(r28)
/* 814C2C68 | 7F A3 EB 78 */	mr r3, r29
/* 814C2C6C | 7F E4 FB 78 */	mr r4, r31
/* 814C2C70 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C2C74 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C2C78 | 4B FF F8 D5 */	bl VFiPFFAT_FindClusterLinkPage
/* 814C2C7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2C80 | 41 82 00 08 */	beq .L_814C2C88
/* 814C2C84 | 48 00 00 74 */	b .L_814C2CF8
.L_814C2C88:
/* 814C2C88 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C2C8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2C90 | 40 82 00 64 */	bne .L_814C2CF4
/* 814C2C94 | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 814C2C98 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 814C2C9C | 7C 00 20 40 */	cmplw r0, r4
/* 814C2CA0 | 40 81 00 54 */	ble .L_814C2CF4
/* 814C2CA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C2CA8 | 41 82 00 4C */	beq .L_814C2CF4
/* 814C2CAC | A0 7D 00 1C */	lhz r3, 0x1c(r29)
/* 814C2CB0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2CB4 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814C2CB8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814C2CBC | 40 82 00 28 */	bne .L_814C2CE4
/* 814C2CC0 | 38 00 00 00 */	li r0, 0x0
/* 814C2CC4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 814C2CC8 | B0 1D 00 1E */	sth r0, 0x1e(r29)
/* 814C2CCC | 54 80 10 3A */	slwi r0, r4, 2
/* 814C2CD0 | 7F C3 01 2E */	stwx r30, r3, r0
/* 814C2CD4 | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 814C2CD8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2CDC | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 814C2CE0 | 48 00 00 10 */	b .L_814C2CF0
.L_814C2CE4:
/* 814C2CE4 | A0 7D 00 1E */	lhz r3, 0x1e(r29)
/* 814C2CE8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C2CEC | B0 1D 00 1E */	sth r0, 0x1e(r29)
.L_814C2CF0:
/* 814C2CF0 | 93 FD 00 28 */	stw r31, 0x28(r29)
.L_814C2CF4:
/* 814C2CF4 | 38 60 00 00 */	li r3, 0x0
.L_814C2CF8:
/* 814C2CF8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C2CFC | 48 13 68 11 */	bl _restgpr_27
/* 814C2D00 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C2D04 | 7C 08 03 A6 */	mtlr r0
/* 814C2D08 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C2D0C | 4E 80 00 20 */	blr
.endfn VFiPFFAT_WriteClusterPage

# .text:0xCB4 | 0x814C2D10 | size: 0x2AC
.fn VFiPFFAT_DoAllocateChain, global
/* 814C2D10 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C2D14 | 7C 08 02 A6 */	mflr r0
/* 814C2D18 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C2D1C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C2D20 | 48 13 67 99 */	bl _savegpr_25
/* 814C2D24 | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C2D28 | 7C 79 1B 78 */	mr r25, r3
/* 814C2D2C | 3D 00 81 62 */	lis r8, fat_special_values@ha
/* 814C2D30 | 38 00 FF FF */	li r0, -0x1
/* 814C2D34 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 814C2D38 | 39 08 8D F0 */	addi r8, r8, fat_special_values@l
/* 814C2D3C | 7C BA 2B 78 */	mr r26, r5
/* 814C2D40 | 7C DB 33 78 */	mr r27, r6
/* 814C2D44 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C2D48 | 1C 63 00 14 */	mulli r3, r3, 0x14
/* 814C2D4C | 7C 86 23 78 */	mr r6, r4
/* 814C2D50 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C2D54 | 7C FC 3B 78 */	mr r28, r7
/* 814C2D58 | 7C A8 1A 14 */	add r5, r8, r3
/* 814C2D5C | 38 E1 00 10 */	addi r7, r1, 0x10
/* 814C2D60 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C2D64 | 7F E3 FB 78 */	mr r3, r31
/* 814C2D68 | 83 C5 00 08 */	lwz r30, 0x8(r5)
/* 814C2D6C | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C2D70 | 80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 814C2D74 | 38 A0 FF FF */	li r5, -0x1
/* 814C2D78 | 4B FF F4 15 */	bl VFiPFFAT_SearchForNumFreeClusters
/* 814C2D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2D80 | 41 82 00 08 */	beq .L_814C2D88
/* 814C2D84 | 48 00 02 20 */	b .L_814C2FA4
.L_814C2D88:
/* 814C2D88 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 814C2D8C | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C2D90 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2D94 | 40 82 00 0C */	bne .L_814C2DA0
/* 814C2D98 | 38 60 00 00 */	li r3, 0x0
/* 814C2D9C | 48 00 02 08 */	b .L_814C2FA4
.L_814C2DA0:
/* 814C2DA0 | 7F E3 FB 78 */	mr r3, r31
/* 814C2DA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C2DA8 | 4B FF F2 B5 */	bl VFiPFFAT_ReadFATSector
/* 814C2DAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2DB0 | 41 82 00 08 */	beq .L_814C2DB8
/* 814C2DB4 | 48 00 01 F0 */	b .L_814C2FA4
.L_814C2DB8:
/* 814C2DB8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C2DBC | 38 00 00 00 */	li r0, 0x0
/* 814C2DC0 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 814C2DC4 | 83 A1 00 10 */	lwz r29, 0x10(r1)
/* 814C2DC8 | 48 00 00 98 */	b .L_814C2E60
.L_814C2DCC:
/* 814C2DCC | 7F 23 CB 78 */	mr r3, r25
/* 814C2DD0 | 7F A4 EB 78 */	mr r4, r29
/* 814C2DD4 | 7F 45 D3 78 */	mr r5, r26
/* 814C2DD8 | 38 DD 00 01 */	addi r6, r29, 0x1
/* 814C2DDC | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C2DE0 | 38 E0 00 01 */	li r7, 0x1
/* 814C2DE4 | 4B FF FD 05 */	bl VFiPFFAT_WriteClusterPage
/* 814C2DE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2DEC | 41 82 00 08 */	beq .L_814C2DF4
/* 814C2DF0 | 48 00 01 B4 */	b .L_814C2FA4
.L_814C2DF4:
/* 814C2DF4 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814C2DF8 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C2DFC | 41 82 00 44 */	beq .L_814C2E40
/* 814C2E00 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 814C2E04 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C2E08 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2E0C | 41 82 00 34 */	beq .L_814C2E40
/* 814C2E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2E14 | 41 82 00 2C */	beq .L_814C2E40
/* 814C2E18 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C2E1C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C2E20 | 40 82 00 14 */	bne .L_814C2E34
/* 814C2E24 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C2E28 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814C2E2C | 7C 03 00 40 */	cmplw r3, r0
/* 814C2E30 | 41 82 00 10 */	beq .L_814C2E40
.L_814C2E34:
/* 814C2E34 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 814C2E38 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C2E3C | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_814C2E40:
/* 814C2E40 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814C2E44 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C2E48 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2E4C | 40 82 00 08 */	bne .L_814C2E54
/* 814C2E50 | 93 BB 00 00 */	stw r29, 0x0(r27)
.L_814C2E54:
/* 814C2E54 | 93 BC 00 00 */	stw r29, 0x0(r28)
/* 814C2E58 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814C2E5C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814C2E60:
/* 814C2E60 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C2E64 | 7C 1D 20 40 */	cmplw r29, r4
/* 814C2E68 | 41 80 FF 64 */	blt .L_814C2DCC
/* 814C2E6C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814C2E70 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2E74 | 41 82 00 80 */	beq .L_814C2EF4
/* 814C2E78 | 7F 23 CB 78 */	mr r3, r25
/* 814C2E7C | 7F 45 D3 78 */	mr r5, r26
/* 814C2E80 | 7F C6 F3 78 */	mr r6, r30
/* 814C2E84 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C2E88 | 38 E0 00 01 */	li r7, 0x1
/* 814C2E8C | 4B FF FC 5D */	bl VFiPFFAT_WriteClusterPage
/* 814C2E90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2E94 | 41 82 00 08 */	beq .L_814C2E9C
/* 814C2E98 | 48 00 01 0C */	b .L_814C2FA4
.L_814C2E9C:
/* 814C2E9C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814C2EA0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C2EA4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2EA8 | 40 82 00 08 */	bne .L_814C2EB0
/* 814C2EAC | 93 BB 00 00 */	stw r29, 0x0(r27)
.L_814C2EB0:
/* 814C2EB0 | 93 BC 00 00 */	stw r29, 0x0(r28)
/* 814C2EB4 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 814C2EB8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C2EBC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C2EC0 | 41 82 00 34 */	beq .L_814C2EF4
/* 814C2EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2EC8 | 41 82 00 2C */	beq .L_814C2EF4
/* 814C2ECC | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C2ED0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C2ED4 | 40 82 00 14 */	bne .L_814C2EE8
/* 814C2ED8 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C2EDC | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814C2EE0 | 7C 03 00 40 */	cmplw r3, r0
/* 814C2EE4 | 41 82 00 10 */	beq .L_814C2EF4
.L_814C2EE8:
/* 814C2EE8 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 814C2EEC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C2EF0 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_814C2EF4:
/* 814C2EF4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C2EF8 | 38 60 00 00 */	li r3, 0x0
/* 814C2EFC | 38 04 00 01 */	addi r0, r4, 0x1
/* 814C2F00 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 814C2F04 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C2F08 | 90 19 00 08 */	stw r0, 0x8(r25)
/* 814C2F0C | 93 59 00 0C */	stw r26, 0xc(r25)
/* 814C2F10 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C2F14 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814C2F18 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C2F1C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814C2F20 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C2F24 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C2F28 | 40 82 00 0C */	bne .L_814C2F34
/* 814C2F2C | 7F E3 FB 78 */	mr r3, r31
/* 814C2F30 | 4B FF 91 5D */	bl VFiPFCACHE_WriteFATPage
.L_814C2F34:
/* 814C2F34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2F38 | 41 82 00 08 */	beq .L_814C2F40
/* 814C2F3C | 48 00 00 68 */	b .L_814C2FA4
.L_814C2F40:
/* 814C2F40 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C2F44 | 2C 80 00 02 */	cmpwi cr1, r0, 0x2
/* 814C2F48 | 40 86 00 58 */	bne cr1, .L_814C2FA0
/* 814C2F4C | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814C2F50 | 54 03 07 BD */	rlwinm. r3, r0, 0, 30, 30
/* 814C2F54 | 41 82 00 4C */	beq .L_814C2FA0
/* 814C2F58 | 38 60 00 00 */	li r3, 0x0
/* 814C2F5C | 41 86 00 0C */	beq cr1, .L_814C2F68
/* 814C2F60 | 38 60 00 0C */	li r3, 0xc
/* 814C2F64 | 48 00 00 20 */	b .L_814C2F84
.L_814C2F68:
/* 814C2F68 | 40 82 00 0C */	bne .L_814C2F74
/* 814C2F6C | 38 60 00 24 */	li r3, 0x24
/* 814C2F70 | 48 00 00 14 */	b .L_814C2F84
.L_814C2F74:
/* 814C2F74 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C2F78 | 41 82 00 0C */	beq .L_814C2F84
/* 814C2F7C | 7F E3 FB 78 */	mr r3, r31
/* 814C2F80 | 4B FF 34 ED */	bl VFiPFDRV_StoreFreeCountToFSINFO
.L_814C2F84:
/* 814C2F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C2F88 | 41 82 00 18 */	beq .L_814C2FA0
/* 814C2F8C | 38 00 FF FF */	li r0, -0x1
/* 814C2F90 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 814C2F94 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814C2F98 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814C2F9C | B0 1F 18 64 */	sth r0, 0x1864(r31)
.L_814C2FA0:
/* 814C2FA0 | 38 60 00 00 */	li r3, 0x0
.L_814C2FA4:
/* 814C2FA4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C2FA8 | 48 13 65 5D */	bl _restgpr_25
/* 814C2FAC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C2FB0 | 7C 08 03 A6 */	mtlr r0
/* 814C2FB4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814C2FB8 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_DoAllocateChain

# .text:0xF60 | 0x814C2FBC | size: 0x368
.fn VFiPFFAT_GetClusterInChain, global
/* 814C2FBC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814C2FC0 | 7C 08 02 A6 */	mflr r0
/* 814C2FC4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814C2FC8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C2FCC | 48 13 64 DD */	bl _savegpr_21
/* 814C2FD0 | 38 00 00 00 */	li r0, 0x0
/* 814C2FD4 | 3D 20 81 62 */	lis r9, fat_special_values@ha
/* 814C2FD8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814C2FDC | 38 00 FF FF */	li r0, -0x1
/* 814C2FE0 | 7D 19 43 78 */	mr r25, r8
/* 814C2FE4 | 39 29 8D F0 */	addi r9, r9, fat_special_values@l
/* 814C2FE8 | 81 43 00 30 */	lwz r10, 0x30(r3)
/* 814C2FEC | 7C F8 3B 78 */	mr r24, r7
/* 814C2FF0 | 7C 76 1B 78 */	mr r22, r3
/* 814C2FF4 | 7C B7 2B 78 */	mr r23, r5
/* 814C2FF8 | 81 4A 00 1C */	lwz r10, 0x1c(r10)
/* 814C2FFC | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814C3000 | 1D 0A 00 14 */	mulli r8, r10, 0x14
/* 814C3004 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C3008 | 7C E9 42 14 */	add r7, r9, r8
/* 814C300C | 7F E9 40 2E */	lwzx r31, r9, r8
/* 814C3010 | 81 03 00 2C */	lwz r8, 0x2c(r3)
/* 814C3014 | 83 C7 00 04 */	lwz r30, 0x4(r7)
/* 814C3018 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 814C301C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3020 | 41 82 00 2C */	beq .L_814C304C
/* 814C3024 | 7C 00 20 40 */	cmplw r0, r4
/* 814C3028 | 41 81 00 24 */	bgt .L_814C304C
/* 814C302C | 80 08 00 04 */	lwz r0, 0x4(r8)
/* 814C3030 | 3B 41 00 10 */	addi r26, r1, 0x10
/* 814C3034 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814C3038 | 80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 814C303C | 80 E7 00 00 */	lwz r7, 0x0(r7)
/* 814C3040 | 7F 87 20 50 */	subf r28, r7, r4
/* 814C3044 | 3B 67 00 01 */	addi r27, r7, 0x1
/* 814C3048 | 48 00 00 10 */	b .L_814C3058
.L_814C304C:
/* 814C304C | 83 43 00 04 */	lwz r26, 0x4(r3)
/* 814C3050 | 7C 9C 23 78 */	mr r28, r4
/* 814C3054 | 3B 60 00 01 */	li r27, 0x1
.L_814C3058:
/* 814C3058 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 814C305C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C3060 | 41 82 00 30 */	beq .L_814C3090
/* 814C3064 | 7C 07 20 40 */	cmplw r7, r4
/* 814C3068 | 41 81 00 28 */	bgt .L_814C3090
/* 814C306C | 38 1B FF FF */	subi r0, r27, 0x1
/* 814C3070 | 7C 07 00 40 */	cmplw r7, r0
/* 814C3074 | 40 81 00 1C */	ble .L_814C3090
/* 814C3078 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814C307C | 3B 41 00 10 */	addi r26, r1, 0x10
/* 814C3080 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814C3084 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 814C3088 | 7F 87 20 50 */	subf r28, r7, r4
/* 814C308C | 3B 67 00 01 */	addi r27, r7, 0x1
.L_814C3090:
/* 814C3090 | 83 BA 00 00 */	lwz r29, 0x0(r26)
/* 814C3094 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814C3098 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C309C | 40 82 00 74 */	bne .L_814C3110
/* 814C30A0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C30A4 | 41 82 00 18 */	beq .L_814C30BC
/* 814C30A8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C30AC | 41 82 00 10 */	beq .L_814C30BC
/* 814C30B0 | 7C BC 32 14 */	add r5, r28, r6
/* 814C30B4 | 3B 85 FF FF */	subi r28, r5, 0x1
/* 814C30B8 | 48 00 00 08 */	b .L_814C30C0
.L_814C30BC:
/* 814C30BC | 7C DC 33 78 */	mr r28, r6
.L_814C30C0:
/* 814C30C0 | 81 23 00 08 */	lwz r9, 0x8(r3)
/* 814C30C4 | 7F 88 E3 78 */	mr r8, r28
/* 814C30C8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C30CC | 41 82 00 5C */	beq .L_814C3128
/* 814C30D0 | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 814C30D4 | 3C E0 81 62 */	lis r7, fat_special_values@ha
/* 814C30D8 | 81 03 00 0C */	lwz r8, 0xc(r3)
/* 814C30DC | 38 E7 8D F0 */	addi r7, r7, fat_special_values@l
/* 814C30E0 | 80 05 00 1C */	lwz r0, 0x1c(r5)
/* 814C30E4 | 7D 3D 4B 78 */	mr r29, r9
/* 814C30E8 | 7C A8 32 14 */	add r5, r8, r6
/* 814C30EC | 3B 80 00 00 */	li r28, 0x0
/* 814C30F0 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C30F4 | 7D 04 28 50 */	subf r8, r4, r5
/* 814C30F8 | 7C 87 02 14 */	add r4, r7, r0
/* 814C30FC | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C3100 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C3104 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 814C3108 | 3B 64 00 01 */	addi r27, r4, 0x1
/* 814C310C | 48 00 00 1C */	b .L_814C3128
.L_814C3110:
/* 814C3110 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814C3114 | 40 82 00 10 */	bne .L_814C3124
/* 814C3118 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C311C | 40 82 00 08 */	bne .L_814C3124
/* 814C3120 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814C3124:
/* 814C3124 | 7F 88 E3 78 */	mr r8, r28
.L_814C3128:
/* 814C3128 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C312C | 41 82 00 FC */	beq .L_814C3228
/* 814C3130 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 814C3134 | 7F A5 EB 78 */	mr r5, r29
/* 814C3138 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C313C | 4B FF EF 21 */	bl VFiPFFAT_ReadFATSector
/* 814C3140 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3144 | 41 82 00 08 */	beq .L_814C314C
/* 814C3148 | 48 00 01 C4 */	b .L_814C330C
.L_814C314C:
/* 814C314C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C3150 | 38 80 00 00 */	li r4, 0x0
/* 814C3154 | 3E A0 81 62 */	lis r21, fat_special_values@ha
/* 814C3158 | 38 00 00 01 */	li r0, 0x1
/* 814C315C | B0 83 00 02 */	sth r4, 0x2(r3)
/* 814C3160 | 3A B5 8D F0 */	addi r21, r21, fat_special_values@l
/* 814C3164 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C3168 | 48 00 00 A8 */	b .L_814C3210
.L_814C316C:
/* 814C316C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C3170 | 41 82 00 3C */	beq .L_814C31AC
/* 814C3174 | 7E C3 B3 78 */	mr r3, r22
/* 814C3178 | 7F A4 EB 78 */	mr r4, r29
/* 814C317C | 7F 65 DB 78 */	mr r5, r27
/* 814C3180 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 814C3184 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814C3188 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C318C | 4B FF F5 6D */	bl VFiPFFAT_ReadClusterPage
/* 814C3190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3194 | 41 82 00 34 */	beq .L_814C31C8
/* 814C3198 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 814C319C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814C31A0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C31A4 | 41 82 00 24 */	beq .L_814C31C8
/* 814C31A8 | 48 00 01 64 */	b .L_814C330C
.L_814C31AC:
/* 814C31AC | 80 76 00 30 */	lwz r3, 0x30(r22)
/* 814C31B0 | 3B 7B FF FF */	subi r27, r27, 0x1
/* 814C31B4 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C31B8 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C31BC | 7C 75 02 14 */	add r3, r21, r0
/* 814C31C0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C31C4 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_814C31C8:
/* 814C31C8 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 814C31CC | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C31D0 | 41 80 00 18 */	blt .L_814C31E8
/* 814C31D4 | 80 76 00 30 */	lwz r3, 0x30(r22)
/* 814C31D8 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814C31DC | 38 03 00 02 */	addi r0, r3, 0x2
/* 814C31E0 | 7C 04 00 40 */	cmplw r4, r0
/* 814C31E4 | 41 80 00 14 */	blt .L_814C31F8
.L_814C31E8:
/* 814C31E8 | 7C 04 F0 40 */	cmplw r4, r30
/* 814C31EC | 40 80 00 0C */	bge .L_814C31F8
/* 814C31F0 | 38 60 00 0E */	li r3, 0xe
/* 814C31F4 | 48 00 01 18 */	b .L_814C330C
.L_814C31F8:
/* 814C31F8 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814C31FC | 41 82 00 0C */	beq .L_814C3208
/* 814C3200 | 7C 04 F0 40 */	cmplw r4, r30
/* 814C3204 | 40 80 00 20 */	bge .L_814C3224
.L_814C3208:
/* 814C3208 | 7C 9D 23 78 */	mr r29, r4
/* 814C320C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814C3210:
/* 814C3210 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C3214 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814C3218 | 41 82 00 0C */	beq .L_814C3224
/* 814C321C | 7C 1D F8 40 */	cmplw r29, r31
/* 814C3220 | 41 80 FF 4C */	blt .L_814C316C
.L_814C3224:
/* 814C3224 | 7F 88 E3 78 */	mr r8, r28
.L_814C3228:
/* 814C3228 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814C322C | 41 82 00 D8 */	beq .L_814C3304
/* 814C3230 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C3234 | 7C 00 F0 40 */	cmplw r0, r30
/* 814C3238 | 41 80 00 CC */	blt .L_814C3304
/* 814C323C | 38 00 00 00 */	li r0, 0x0
/* 814C3240 | 7E C3 B3 78 */	mr r3, r22
/* 814C3244 | 90 18 00 00 */	stw r0, 0x0(r24)
/* 814C3248 | 7F 65 DB 78 */	mr r5, r27
/* 814C324C | 7F 06 C3 78 */	mr r6, r24
/* 814C3250 | 38 88 00 01 */	addi r4, r8, 0x1
/* 814C3254 | 38 E1 00 14 */	addi r7, r1, 0x14
/* 814C3258 | 4B FF FA B9 */	bl VFiPFFAT_DoAllocateChain
/* 814C325C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3260 | 7C 75 1B 78 */	mr r21, r3
/* 814C3264 | 41 82 00 34 */	beq .L_814C3298
/* 814C3268 | 80 98 00 00 */	lwz r4, 0x0(r24)
/* 814C326C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814C3270 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3274 | 41 82 00 14 */	beq .L_814C3288
/* 814C3278 | 7E C3 B3 78 */	mr r3, r22
/* 814C327C | 7F 65 DB 78 */	mr r5, r27
/* 814C3280 | 38 C0 FF FF */	li r6, -0x1
/* 814C3284 | 48 00 0E 95 */	bl VFiPFFAT_FreeChain
.L_814C3288:
/* 814C3288 | 38 00 FF FF */	li r0, -0x1
/* 814C328C | 90 18 00 00 */	stw r0, 0x0(r24)
/* 814C3290 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C3294 | 48 00 00 08 */	b .L_814C329C
.L_814C3298:
/* 814C3298 | 3A A0 00 00 */	li r21, 0x0
.L_814C329C:
/* 814C329C | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814C32A0 | 41 82 00 0C */	beq .L_814C32AC
/* 814C32A4 | 7E A3 AB 78 */	mr r3, r21
/* 814C32A8 | 48 00 00 64 */	b .L_814C330C
.L_814C32AC:
/* 814C32AC | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814C32B0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C32B4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C32B8 | 40 82 00 0C */	bne .L_814C32C4
/* 814C32BC | 38 60 00 06 */	li r3, 0x6
/* 814C32C0 | 48 00 00 4C */	b .L_814C330C
.L_814C32C4:
/* 814C32C4 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814C32C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C32CC | 40 82 00 10 */	bne .L_814C32DC
/* 814C32D0 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 814C32D4 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C32D8 | 48 00 00 28 */	b .L_814C3300
.L_814C32DC:
/* 814C32DC | 80 D8 00 00 */	lwz r6, 0x0(r24)
/* 814C32E0 | 7E C3 B3 78 */	mr r3, r22
/* 814C32E4 | 7F A4 EB 78 */	mr r4, r29
/* 814C32E8 | 38 BB FF FF */	subi r5, r27, 0x1
/* 814C32EC | 38 E0 00 01 */	li r7, 0x1
/* 814C32F0 | 4B FF F5 D5 */	bl VFiPFFAT_WriteCluster
/* 814C32F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C32F8 | 41 82 00 08 */	beq .L_814C3300
/* 814C32FC | 48 00 00 10 */	b .L_814C330C
.L_814C3300:
/* 814C3300 | 83 A1 00 14 */	lwz r29, 0x14(r1)
.L_814C3304:
/* 814C3304 | 93 B9 00 00 */	stw r29, 0x0(r25)
/* 814C3308 | 38 60 00 00 */	li r3, 0x0
.L_814C330C:
/* 814C330C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C3310 | 48 13 61 E5 */	bl _restgpr_21
/* 814C3314 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814C3318 | 7C 08 03 A6 */	mtlr r0
/* 814C331C | 38 21 00 50 */	addi r1, r1, 0x50
/* 814C3320 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetClusterInChain

# .text:0x12C8 | 0x814C3324 | size: 0x130
.fn VFiPFFAT_GetClusterContinuousSectorInChain, global
/* 814C3324 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C3328 | 7C 08 02 A6 */	mflr r0
/* 814C332C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C3330 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3334 | 48 13 61 89 */	bl _savegpr_26
/* 814C3338 | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C333C | 39 00 FF FF */	li r8, -0x1
/* 814C3340 | 38 00 00 01 */	li r0, 0x1
/* 814C3344 | 7C 7B 1B 78 */	mr r27, r3
/* 814C3348 | 91 01 00 10 */	stw r8, 0x10(r1)
/* 814C334C | 7C BC 2B 78 */	mr r28, r5
/* 814C3350 | 7C DD 33 78 */	mr r29, r6
/* 814C3354 | 7C FE 3B 78 */	mr r30, r7
/* 814C3358 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C335C | 7C 9A 23 78 */	mr r26, r4
/* 814C3360 | 7C 85 23 78 */	mr r5, r4
/* 814C3364 | 7F E3 FB 78 */	mr r3, r31
/* 814C3368 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C336C | 4B FF EC F1 */	bl VFiPFFAT_ReadFATSector
/* 814C3370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3374 | 41 82 00 B8 */	beq .L_814C342C
/* 814C3378 | 48 00 00 C4 */	b .L_814C343C
/* 814C337C | 48 00 00 B0 */	b .L_814C342C
.L_814C3380:
/* 814C3380 | 7F 63 DB 78 */	mr r3, r27
/* 814C3384 | 7F 44 D3 78 */	mr r4, r26
/* 814C3388 | 7F 85 E3 78 */	mr r5, r28
/* 814C338C | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C3390 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814C3394 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C3398 | 4B FF F3 61 */	bl VFiPFFAT_ReadClusterPage
/* 814C339C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C33A0 | 41 82 00 08 */	beq .L_814C33A8
/* 814C33A4 | 48 00 00 98 */	b .L_814C343C
.L_814C33A8:
/* 814C33A8 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814C33AC | 38 1A 00 01 */	addi r0, r26, 0x1
/* 814C33B0 | 7C 00 20 40 */	cmplw r0, r4
/* 814C33B4 | 41 82 00 34 */	beq .L_814C33E8
/* 814C33B8 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C33BC | 3C 60 81 62 */	lis r3, fat_special_values@ha
/* 814C33C0 | 38 63 8D F0 */	addi r3, r3, fat_special_values@l
/* 814C33C4 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C33C8 | 7C 63 02 14 */	add r3, r3, r0
/* 814C33CC | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C33D0 | 7C 04 00 40 */	cmplw r4, r0
/* 814C33D4 | 40 82 00 64 */	bne .L_814C3438
/* 814C33D8 | 38 1C FF FF */	subi r0, r28, 0x1
/* 814C33DC | 93 5B 00 08 */	stw r26, 0x8(r27)
/* 814C33E0 | 90 1B 00 0C */	stw r0, 0xc(r27)
/* 814C33E4 | 48 00 00 54 */	b .L_814C3438
.L_814C33E8:
/* 814C33E8 | 80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 814C33EC | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814C33F0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C33F4 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814C33F8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C33FC | 80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 814C3400 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814C3404 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814C3408 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 814C340C | 7C 63 02 14 */	add r3, r3, r0
/* 814C3410 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 814C3414 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 814C3418 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C341C | 7C 00 E8 40 */	cmplw r0, r29
/* 814C3420 | 40 80 00 18 */	bge .L_814C3438
/* 814C3424 | 83 41 00 10 */	lwz r26, 0x10(r1)
/* 814C3428 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814C342C:
/* 814C342C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C3430 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3434 | 40 82 FF 4C */	bne .L_814C3380
.L_814C3438:
/* 814C3438 | 38 60 00 00 */	li r3, 0x0
.L_814C343C:
/* 814C343C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3440 | 48 13 60 C9 */	bl _restgpr_26
/* 814C3444 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C3448 | 7C 08 03 A6 */	mtlr r0
/* 814C344C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C3450 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetClusterContinuousSectorInChain

# .text:0x13F8 | 0x814C3454 | size: 0x110
.fn VFiPFFAT_GetClusterAllocatedInChain, global
/* 814C3454 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C3458 | 7C 08 02 A6 */	mflr r0
/* 814C345C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C3460 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C3464 | 48 13 60 51 */	bl _savegpr_24
/* 814C3468 | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C346C | 39 00 FF FF */	li r8, -0x1
/* 814C3470 | 38 00 00 01 */	li r0, 0x1
/* 814C3474 | 7C 79 1B 78 */	mr r25, r3
/* 814C3478 | 91 01 00 10 */	stw r8, 0x10(r1)
/* 814C347C | 7C BA 2B 78 */	mr r26, r5
/* 814C3480 | 7C DB 33 78 */	mr r27, r6
/* 814C3484 | 7C FC 3B 78 */	mr r28, r7
/* 814C3488 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C348C | 7C 9E 23 78 */	mr r30, r4
/* 814C3490 | 7C 85 23 78 */	mr r5, r4
/* 814C3494 | 7F E3 FB 78 */	mr r3, r31
/* 814C3498 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C349C | 3B A0 00 00 */	li r29, 0x0
/* 814C34A0 | 4B FF EB BD */	bl VFiPFFAT_ReadFATSector
/* 814C34A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C34A8 | 41 82 00 08 */	beq .L_814C34B0
/* 814C34AC | 48 00 00 A0 */	b .L_814C354C
.L_814C34B0:
/* 814C34B0 | 3F 00 81 62 */	lis r24, fat_special_values@ha
/* 814C34B4 | 3B 18 8D F0 */	addi r24, r24, fat_special_values@l
/* 814C34B8 | 48 00 00 84 */	b .L_814C353C
.L_814C34BC:
/* 814C34BC | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 814C34C0 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C34C4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814C34C8 | 7C 80 00 30 */	slw r0, r4, r0
/* 814C34CC | 7F BD 02 14 */	add r29, r29, r0
/* 814C34D0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C34D4 | 7C 1D D8 40 */	cmplw r29, r27
/* 814C34D8 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814C34DC | 40 80 00 6C */	bge .L_814C3548
/* 814C34E0 | 7F 23 CB 78 */	mr r3, r25
/* 814C34E4 | 7F C4 F3 78 */	mr r4, r30
/* 814C34E8 | 7F 45 D3 78 */	mr r5, r26
/* 814C34EC | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C34F0 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814C34F4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C34F8 | 4B FF F2 01 */	bl VFiPFFAT_ReadClusterPage
/* 814C34FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3500 | 41 82 00 08 */	beq .L_814C3508
/* 814C3504 | 48 00 00 48 */	b .L_814C354C
.L_814C3508:
/* 814C3508 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C350C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814C3510 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C3514 | 7C 78 02 14 */	add r3, r24, r0
/* 814C3518 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C351C | 7C 04 00 40 */	cmplw r4, r0
/* 814C3520 | 40 82 00 14 */	bne .L_814C3534
/* 814C3524 | 38 1A FF FF */	subi r0, r26, 0x1
/* 814C3528 | 93 D9 00 08 */	stw r30, 0x8(r25)
/* 814C352C | 90 19 00 0C */	stw r0, 0xc(r25)
/* 814C3530 | 48 00 00 18 */	b .L_814C3548
.L_814C3534:
/* 814C3534 | 7C 9E 23 78 */	mr r30, r4
/* 814C3538 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814C353C:
/* 814C353C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C3540 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3544 | 40 82 FF 78 */	bne .L_814C34BC
.L_814C3548:
/* 814C3548 | 38 60 00 00 */	li r3, 0x0
.L_814C354C:
/* 814C354C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C3550 | 48 13 5F B1 */	bl _restgpr_24
/* 814C3554 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C3558 | 7C 08 03 A6 */	mtlr r0
/* 814C355C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814C3560 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetClusterAllocatedInChain

# .text:0x1508 | 0x814C3564 | size: 0x180
.fn VFiPFFAT_GetClusterSpecified, global
/* 814C3564 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C3568 | 7C 08 02 A6 */	mflr r0
/* 814C356C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C3570 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3574 | 48 13 5F 4D */	bl _savegpr_27
/* 814C3578 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814C357C | 7C 9D 23 78 */	mr r29, r4
/* 814C3580 | 81 03 00 30 */	lwz r8, 0x30(r3)
/* 814C3584 | 7C 7B 1B 78 */	mr r27, r3
/* 814C3588 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814C358C | 7C BC 2B 78 */	mr r28, r5
/* 814C3590 | 80 88 00 1C */	lwz r4, 0x1c(r8)
/* 814C3594 | 7C DE 33 78 */	mr r30, r6
/* 814C3598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C359C | 83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 814C35A0 | 40 82 00 1C */	bne .L_814C35BC
/* 814C35A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C35A8 | 40 82 00 14 */	bne .L_814C35BC
/* 814C35AC | 38 00 FF FF */	li r0, -0x1
/* 814C35B0 | 38 60 00 00 */	li r3, 0x0
/* 814C35B4 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C35B8 | 48 00 01 14 */	b .L_814C36CC
.L_814C35BC:
/* 814C35BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C35C0 | 40 82 00 24 */	bne .L_814C35E4
/* 814C35C4 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C35C8 | 41 81 00 14 */	bgt .L_814C35DC
/* 814C35CC | 38 00 FF FF */	li r0, -0x1
/* 814C35D0 | 38 60 00 00 */	li r3, 0x0
/* 814C35D4 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C35D8 | 48 00 00 F4 */	b .L_814C36CC
.L_814C35DC:
/* 814C35DC | 80 08 00 10 */	lwz r0, 0x10(r8)
/* 814C35E0 | 90 07 00 00 */	stw r0, 0x0(r7)
.L_814C35E4:
/* 814C35E4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814C35E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C35EC | 41 82 00 4C */	beq .L_814C3638
/* 814C35F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C35F4 | 40 82 00 44 */	bne .L_814C3638
/* 814C35F8 | 7F 63 DB 78 */	mr r3, r27
/* 814C35FC | 7F A4 EB 78 */	mr r4, r29
/* 814C3600 | 7F C5 F3 78 */	mr r5, r30
/* 814C3604 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C3608 | 4B FF ED 89 */	bl VFiPFFAT_FindClusterLink
/* 814C360C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3610 | 41 82 00 08 */	beq .L_814C3618
/* 814C3614 | 48 00 00 B8 */	b .L_814C36CC
.L_814C3618:
/* 814C3618 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C361C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3620 | 41 82 00 18 */	beq .L_814C3638
/* 814C3624 | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 814C3628 | 38 60 00 00 */	li r3, 0x0
/* 814C362C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C3630 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814C3634 | 48 00 00 98 */	b .L_814C36CC
.L_814C3638:
/* 814C3638 | 7C 1C 00 D0 */	neg r0, r28
/* 814C363C | 38 60 FF FF */	li r3, -0x1
/* 814C3640 | 7C 00 E3 78 */	or r0, r0, r28
/* 814C3644 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 814C3648 | 7F 63 DB 78 */	mr r3, r27
/* 814C364C | 7F A4 EB 78 */	mr r4, r29
/* 814C3650 | 54 05 0F FE */	srwi r5, r0, 31
/* 814C3654 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C3658 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C365C | 38 C0 00 00 */	li r6, 0x0
/* 814C3660 | 4B FF F9 5D */	bl VFiPFFAT_GetClusterInChain
/* 814C3664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3668 | 41 82 00 08 */	beq .L_814C3670
/* 814C366C | 48 00 00 2C */	b .L_814C3698
.L_814C3670:
/* 814C3670 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C3674 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C3678 | 41 80 00 1C */	blt .L_814C3694
/* 814C367C | 80 7B 00 30 */	lwz r3, 0x30(r27)
/* 814C3680 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814C3684 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814C3688 | 7C 04 00 40 */	cmplw r4, r0
/* 814C368C | 40 80 00 08 */	bge .L_814C3694
/* 814C3690 | 90 9E 00 00 */	stw r4, 0x0(r30)
.L_814C3694:
/* 814C3694 | 38 60 00 00 */	li r3, 0x0
.L_814C3698:
/* 814C3698 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C369C | 41 82 00 08 */	beq .L_814C36A4
/* 814C36A0 | 48 00 00 2C */	b .L_814C36CC
.L_814C36A4:
/* 814C36A4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814C36A8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C36AC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C36B0 | 40 82 00 0C */	bne .L_814C36BC
/* 814C36B4 | 38 60 00 00 */	li r3, 0x0
/* 814C36B8 | 48 00 00 14 */	b .L_814C36CC
.L_814C36BC:
/* 814C36BC | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 814C36C0 | 38 60 00 00 */	li r3, 0x0
/* 814C36C4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C36C8 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_814C36CC:
/* 814C36CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C36D0 | 48 13 5E 3D */	bl _restgpr_27
/* 814C36D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C36D8 | 7C 08 03 A6 */	mtlr r0
/* 814C36DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C36E0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetClusterSpecified

# .text:0x1688 | 0x814C36E4 | size: 0x118
.fn VFiPFFAT_GetClusterAllocated, global
/* 814C36E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C36E8 | 7C 08 02 A6 */	mflr r0
/* 814C36EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C36F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C36F4 | 48 13 5D CD */	bl _savegpr_27
/* 814C36F8 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814C36FC | 7C 9D 23 78 */	mr r29, r4
/* 814C3700 | 81 23 00 30 */	lwz r9, 0x30(r3)
/* 814C3704 | 7C 7B 1B 78 */	mr r27, r3
/* 814C3708 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 814C370C | 7C DE 33 78 */	mr r30, r6
/* 814C3710 | 80 89 00 1C */	lwz r4, 0x1c(r9)
/* 814C3714 | 7C FC 3B 78 */	mr r28, r7
/* 814C3718 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C371C | 83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 814C3720 | 40 82 00 24 */	bne .L_814C3744
/* 814C3724 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C3728 | 41 81 00 14 */	bgt .L_814C373C
/* 814C372C | 38 00 FF FF */	li r0, -0x1
/* 814C3730 | 38 60 00 00 */	li r3, 0x0
/* 814C3734 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C3738 | 48 00 00 AC */	b .L_814C37E4
.L_814C373C:
/* 814C373C | 80 09 00 10 */	lwz r0, 0x10(r9)
/* 814C3740 | 90 08 00 00 */	stw r0, 0x0(r8)
.L_814C3744:
/* 814C3744 | 38 00 FF FF */	li r0, -0x1
/* 814C3748 | 7F 63 DB 78 */	mr r3, r27
/* 814C374C | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C3750 | 7C A6 2B 78 */	mr r6, r5
/* 814C3754 | 7F A4 EB 78 */	mr r4, r29
/* 814C3758 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C375C | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C3760 | 38 A0 00 02 */	li r5, 0x2
/* 814C3764 | 4B FF F8 59 */	bl VFiPFFAT_GetClusterInChain
/* 814C3768 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C376C | 41 82 00 08 */	beq .L_814C3774
/* 814C3770 | 48 00 00 40 */	b .L_814C37B0
.L_814C3774:
/* 814C3774 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C3778 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C377C | 7C 63 00 50 */	subf r3, r3, r0
/* 814C3780 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C3784 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814C3788 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C378C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C3790 | 41 80 00 1C */	blt .L_814C37AC
/* 814C3794 | 80 7B 00 30 */	lwz r3, 0x30(r27)
/* 814C3798 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814C379C | 38 03 00 02 */	addi r0, r3, 0x2
/* 814C37A0 | 7C 04 00 40 */	cmplw r4, r0
/* 814C37A4 | 40 80 00 08 */	bge .L_814C37AC
/* 814C37A8 | 90 9E 00 00 */	stw r4, 0x0(r30)
.L_814C37AC:
/* 814C37AC | 38 60 00 00 */	li r3, 0x0
.L_814C37B0:
/* 814C37B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C37B4 | 41 82 00 08 */	beq .L_814C37BC
/* 814C37B8 | 48 00 00 2C */	b .L_814C37E4
.L_814C37BC:
/* 814C37BC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814C37C0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C37C4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C37C8 | 40 82 00 0C */	bne .L_814C37D4
/* 814C37CC | 38 60 00 00 */	li r3, 0x0
/* 814C37D0 | 48 00 00 14 */	b .L_814C37E4
.L_814C37D4:
/* 814C37D4 | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 814C37D8 | 38 60 00 00 */	li r3, 0x0
/* 814C37DC | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C37E0 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_814C37E4:
/* 814C37E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C37E8 | 48 13 5D 25 */	bl _restgpr_27
/* 814C37EC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C37F0 | 7C 08 03 A6 */	mtlr r0
/* 814C37F4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C37F8 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetClusterAllocated

# .text:0x17A0 | 0x814C37FC | size: 0x1B8
.fn VFiPFFAT_GetSector, global
/* 814C37FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C3800 | 7C 08 02 A6 */	mflr r0
/* 814C3804 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C3808 | 38 00 00 00 */	li r0, 0x0
/* 814C380C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C3810 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C3814 | 7D 1E 43 78 */	mr r30, r8
/* 814C3818 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C381C | 7C FD 3B 78 */	mr r29, r7
/* 814C3820 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C3824 | 7C 9C 23 78 */	mr r28, r4
/* 814C3828 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814C382C | 81 23 00 04 */	lwz r9, 0x4(r3)
/* 814C3830 | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C3834 | 80 09 00 00 */	lwz r0, 0x0(r9)
/* 814C3838 | 81 1F 00 1C */	lwz r8, 0x1c(r31)
/* 814C383C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C3840 | 40 82 00 64 */	bne .L_814C38A4
/* 814C3844 | 28 08 00 01 */	cmplwi r8, 0x1
/* 814C3848 | 41 81 00 5C */	bgt .L_814C38A4
/* 814C384C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814C3850 | 41 82 00 14 */	beq .L_814C3864
/* 814C3854 | 2C 08 00 01 */	cmpwi r8, 0x1
/* 814C3858 | 41 82 00 0C */	beq .L_814C3864
/* 814C385C | 38 60 00 0C */	li r3, 0xc
/* 814C3860 | 48 00 00 30 */	b .L_814C3890
.L_814C3864:
/* 814C3864 | A0 1F 00 24 */	lhz r0, 0x24(r31)
/* 814C3868 | 7C 04 00 40 */	cmplw r4, r0
/* 814C386C | 41 80 00 14 */	blt .L_814C3880
/* 814C3870 | 38 00 FF FF */	li r0, -0x1
/* 814C3874 | 38 60 00 00 */	li r3, 0x0
/* 814C3878 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C387C | 48 00 00 14 */	b .L_814C3890
.L_814C3880:
/* 814C3880 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 814C3884 | 38 60 00 00 */	li r3, 0x0
/* 814C3888 | 7C 00 22 14 */	add r0, r0, r4
/* 814C388C | 90 07 00 00 */	stw r0, 0x0(r7)
.L_814C3890:
/* 814C3890 | 7C 03 00 D0 */	neg r0, r3
/* 814C3894 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C3898 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C389C | 7C 63 00 38 */	and r3, r3, r0
/* 814C38A0 | 48 00 00 F4 */	b .L_814C3994
.L_814C38A4:
/* 814C38A4 | 89 3F 00 21 */	lbz r9, 0x21(r31)
/* 814C38A8 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814C38AC | 7C 84 4C 30 */	srw r4, r4, r9
/* 814C38B0 | 40 82 00 74 */	bne .L_814C3924
/* 814C38B4 | A0 BF 00 00 */	lhz r5, 0x0(r31)
/* 814C38B8 | 89 1F 00 20 */	lbz r8, 0x20(r31)
/* 814C38BC | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C38C0 | 88 BF 00 06 */	lbz r5, 0x6(r31)
/* 814C38C4 | 7C C7 00 38 */	and r7, r6, r0
/* 814C38C8 | 7C C8 44 30 */	srw r8, r6, r8
/* 814C38CC | 7C C7 00 D0 */	neg r6, r7
/* 814C38D0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C38D4 | 7C C5 3B 78 */	or r5, r6, r7
/* 814C38D8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C38DC | 54 A5 0F FE */	srwi r5, r5, 31
/* 814C38E0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814C38E4 | 7D 08 2A 14 */	add r8, r8, r5
/* 814C38E8 | 7C 05 40 38 */	and r5, r0, r8
/* 814C38EC | 7C 05 00 D0 */	neg r0, r5
/* 814C38F0 | 7D 08 4C 30 */	srw r8, r8, r9
/* 814C38F4 | 7C 00 2B 78 */	or r0, r0, r5
/* 814C38F8 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C38FC | 7C A8 02 14 */	add r5, r8, r0
/* 814C3900 | 4B FF FD E5 */	bl VFiPFFAT_GetClusterAllocated
/* 814C3904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3908 | 41 82 00 08 */	beq .L_814C3910
/* 814C390C | 48 00 00 88 */	b .L_814C3994
.L_814C3910:
/* 814C3910 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C3914 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C3918 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C391C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C3920 | 48 00 00 28 */	b .L_814C3948
.L_814C3924:
/* 814C3924 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814C3928 | 4B FF FC 3D */	bl VFiPFFAT_GetClusterSpecified
/* 814C392C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3930 | 41 82 00 08 */	beq .L_814C3938
/* 814C3934 | 48 00 00 60 */	b .L_814C3994
.L_814C3938:
/* 814C3938 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C393C | 38 60 00 01 */	li r3, 0x1
/* 814C3940 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C3944 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C3948:
/* 814C3948 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C394C | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C3950 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3954 | 40 82 00 14 */	bne .L_814C3968
/* 814C3958 | 38 00 FF FF */	li r0, -0x1
/* 814C395C | 38 60 00 00 */	li r3, 0x0
/* 814C3960 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814C3964 | 48 00 00 30 */	b .L_814C3994
.L_814C3968:
/* 814C3968 | 88 9F 00 06 */	lbz r4, 0x6(r31)
/* 814C396C | 38 C3 FF FE */	subi r6, r3, 0x2
/* 814C3970 | 88 BF 00 21 */	lbz r5, 0x21(r31)
/* 814C3974 | 38 60 00 00 */	li r3, 0x0
/* 814C3978 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C397C | 80 FF 00 30 */	lwz r7, 0x30(r31)
/* 814C3980 | 7C C5 28 30 */	slw r5, r6, r5
/* 814C3984 | 7F 84 00 38 */	and r4, r28, r0
/* 814C3988 | 7C 07 2A 14 */	add r0, r7, r5
/* 814C398C | 7C 04 02 14 */	add r0, r4, r0
/* 814C3990 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814C3994:
/* 814C3994 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C3998 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C399C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C39A0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C39A4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C39A8 | 7C 08 03 A6 */	mtlr r0
/* 814C39AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C39B0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetSector

# .text:0x1958 | 0x814C39B4 | size: 0x3C
.fn VFiPFFAT_UpdateFATEntry, global
/* 814C39B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C39B8 | 7C 08 02 A6 */	mflr r0
/* 814C39BC | 38 A0 00 00 */	li r5, 0x0
/* 814C39C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C39C4 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814C39C8 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C39CC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C39D0 | 40 82 00 0C */	bne .L_814C39DC
/* 814C39D4 | 4B FF 86 B9 */	bl VFiPFCACHE_WriteFATPage
/* 814C39D8 | 7C 65 1B 78 */	mr r5, r3
.L_814C39DC:
/* 814C39DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C39E0 | 7C A3 2B 78 */	mr r3, r5
/* 814C39E4 | 7C 08 03 A6 */	mtlr r0
/* 814C39E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C39EC | 4E 80 00 20 */	blr
.endfn VFiPFFAT_UpdateFATEntry

# .text:0x1994 | 0x814C39F0 | size: 0xC4
.fn VFiPFFAT_UpdateAlternateFATEntry, global
/* 814C39F0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C39F4 | 7C 08 02 A6 */	mflr r0
/* 814C39F8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C39FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3A00 | 48 13 5A BD */	bl _savegpr_26
/* 814C3A04 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 814C3A08 | 7C 7A 1B 78 */	mr r26, r3
/* 814C3A0C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814C3A10 | 7C 9B 23 78 */	mr r27, r4
/* 814C3A14 | 7C 80 28 50 */	subf r4, r0, r5
/* 814C3A18 | 7C DD 33 78 */	mr r29, r6
/* 814C3A1C | 7C 04 1B 97 */	divwu. r0, r4, r3
/* 814C3A20 | 3B E0 00 00 */	li r31, 0x0
/* 814C3A24 | 41 82 00 14 */	beq .L_814C3A38
/* 814C3A28 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 814C3A2C | 3B C0 00 00 */	li r30, 0x0
/* 814C3A30 | 7F 80 20 50 */	subf r28, r0, r4
/* 814C3A34 | 48 00 00 58 */	b .L_814C3A8C
.L_814C3A38:
/* 814C3A38 | 7F 85 1A 14 */	add r28, r5, r3
/* 814C3A3C | 3B C0 00 01 */	li r30, 0x1
/* 814C3A40 | 48 00 00 4C */	b .L_814C3A8C
.L_814C3A44:
/* 814C3A44 | 7F 43 D3 78 */	mr r3, r26
/* 814C3A48 | 7F 64 DB 78 */	mr r4, r27
/* 814C3A4C | 7F 85 E3 78 */	mr r5, r28
/* 814C3A50 | 7F A6 EB 78 */	mr r6, r29
/* 814C3A54 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C3A58 | 4B FF 31 51 */	bl VFiPFDRV_lwrite
/* 814C3A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3A60 | 41 82 00 10 */	beq .L_814C3A70
/* 814C3A64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C3A68 | 40 82 00 08 */	bne .L_814C3A70
/* 814C3A6C | 7C 7F 1B 78 */	mr r31, r3
.L_814C3A70:
/* 814C3A70 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C3A74 | 7C 00 E8 40 */	cmplw r0, r29
/* 814C3A78 | 41 82 00 08 */	beq .L_814C3A80
/* 814C3A7C | 3B E0 00 11 */	li r31, 0x11
.L_814C3A80:
/* 814C3A80 | 80 1A 00 0C */	lwz r0, 0xc(r26)
/* 814C3A84 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814C3A88 | 7F 9C 02 14 */	add r28, r28, r0
.L_814C3A8C:
/* 814C3A8C | 88 1A 00 22 */	lbz r0, 0x22(r26)
/* 814C3A90 | 7C 1E 00 40 */	cmplw r30, r0
/* 814C3A94 | 41 80 FF B0 */	blt .L_814C3A44
/* 814C3A98 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3A9C | 7F E3 FB 78 */	mr r3, r31
/* 814C3AA0 | 48 13 5A 69 */	bl _restgpr_26
/* 814C3AA4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C3AA8 | 7C 08 03 A6 */	mtlr r0
/* 814C3AAC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C3AB0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_UpdateAlternateFATEntry

# .text:0x1A58 | 0x814C3AB4 | size: 0xB0
.fn VFiPFFAT_GetSectorSpecified, global
/* 814C3AB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C3AB8 | 7C 08 02 A6 */	mflr r0
/* 814C3ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3AC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C3AC4 | 40 82 00 0C */	bne .L_814C3AD0
/* 814C3AC8 | 38 60 00 0A */	li r3, 0xa
/* 814C3ACC | 48 00 00 88 */	b .L_814C3B54
.L_814C3AD0:
/* 814C3AD0 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814C3AD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3AD8 | 40 82 00 0C */	bne .L_814C3AE4
/* 814C3ADC | 38 60 00 0A */	li r3, 0xa
/* 814C3AE0 | 48 00 00 74 */	b .L_814C3B54
.L_814C3AE4:
/* 814C3AE4 | 80 E3 00 30 */	lwz r7, 0x30(r3)
/* 814C3AE8 | 88 07 18 62 */	lbz r0, 0x1862(r7)
/* 814C3AEC | 7C 00 07 74 */	extsb r0, r0
/* 814C3AF0 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814C3AF4 | 41 80 00 0C */	blt .L_814C3B00
/* 814C3AF8 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814C3AFC | 40 81 00 0C */	ble .L_814C3B08
.L_814C3B00:
/* 814C3B00 | 38 60 00 23 */	li r3, 0x23
/* 814C3B04 | 48 00 00 50 */	b .L_814C3B54
.L_814C3B08:
/* 814C3B08 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814C3B0C | 38 E0 FF FF */	li r7, -0x1
/* 814C3B10 | 7C E7 04 30 */	srw r7, r7, r0
/* 814C3B14 | 38 07 00 01 */	addi r0, r7, 0x1
/* 814C3B18 | 7C 04 00 40 */	cmplw r4, r0
/* 814C3B1C | 41 80 00 0C */	blt .L_814C3B28
/* 814C3B20 | 38 60 00 25 */	li r3, 0x25
/* 814C3B24 | 48 00 00 30 */	b .L_814C3B54
.L_814C3B28:
/* 814C3B28 | 7C 05 00 D0 */	neg r0, r5
/* 814C3B2C | 7C C7 33 78 */	mr r7, r6
/* 814C3B30 | 7C 00 2B 78 */	or r0, r0, r5
/* 814C3B34 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C3B38 | 54 05 0F FE */	srwi r5, r0, 31
/* 814C3B3C | 38 C0 00 00 */	li r6, 0x0
/* 814C3B40 | 4B FF FC BD */	bl VFiPFFAT_GetSector
/* 814C3B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3B48 | 41 82 00 08 */	beq .L_814C3B50
/* 814C3B4C | 48 00 00 08 */	b .L_814C3B54
.L_814C3B50:
/* 814C3B50 | 38 60 00 00 */	li r3, 0x0
.L_814C3B54:
/* 814C3B54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C3B58 | 7C 08 03 A6 */	mtlr r0
/* 814C3B5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C3B60 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetSectorSpecified

# .text:0x1B08 | 0x814C3B64 | size: 0xAC
.fn VFiPFFAT_GetSectorAllocated, global
/* 814C3B64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C3B68 | 7C 08 02 A6 */	mflr r0
/* 814C3B6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3B70 | 7C C9 33 78 */	mr r9, r6
/* 814C3B74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C3B78 | 7C E8 3B 78 */	mr r8, r7
/* 814C3B7C | 40 82 00 0C */	bne .L_814C3B88
/* 814C3B80 | 38 60 00 0A */	li r3, 0xa
/* 814C3B84 | 48 00 00 7C */	b .L_814C3C00
.L_814C3B88:
/* 814C3B88 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814C3B8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3B90 | 40 82 00 0C */	bne .L_814C3B9C
/* 814C3B94 | 38 60 00 0A */	li r3, 0xa
/* 814C3B98 | 48 00 00 68 */	b .L_814C3C00
.L_814C3B9C:
/* 814C3B9C | 80 C3 00 30 */	lwz r6, 0x30(r3)
/* 814C3BA0 | 88 06 18 62 */	lbz r0, 0x1862(r6)
/* 814C3BA4 | 7C 00 07 74 */	extsb r0, r0
/* 814C3BA8 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814C3BAC | 41 80 00 0C */	blt .L_814C3BB8
/* 814C3BB0 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814C3BB4 | 40 81 00 0C */	ble .L_814C3BC0
.L_814C3BB8:
/* 814C3BB8 | 38 60 00 23 */	li r3, 0x23
/* 814C3BBC | 48 00 00 44 */	b .L_814C3C00
.L_814C3BC0:
/* 814C3BC0 | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814C3BC4 | 38 C0 FF FF */	li r6, -0x1
/* 814C3BC8 | 7C C6 04 30 */	srw r6, r6, r0
/* 814C3BCC | 38 06 00 01 */	addi r0, r6, 0x1
/* 814C3BD0 | 7C 04 00 40 */	cmplw r4, r0
/* 814C3BD4 | 41 80 00 0C */	blt .L_814C3BE0
/* 814C3BD8 | 38 60 00 25 */	li r3, 0x25
/* 814C3BDC | 48 00 00 24 */	b .L_814C3C00
.L_814C3BE0:
/* 814C3BE0 | 7C A6 2B 78 */	mr r6, r5
/* 814C3BE4 | 7D 27 4B 78 */	mr r7, r9
/* 814C3BE8 | 38 A0 00 02 */	li r5, 0x2
/* 814C3BEC | 4B FF FC 11 */	bl VFiPFFAT_GetSector
/* 814C3BF0 | 7C 03 00 D0 */	neg r0, r3
/* 814C3BF4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C3BF8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C3BFC | 7C 63 00 38 */	and r3, r3, r0
.L_814C3C00:
/* 814C3C00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C3C04 | 7C 08 03 A6 */	mtlr r0
/* 814C3C08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C3C0C | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetSectorAllocated

# .text:0x1BB4 | 0x814C3C10 | size: 0x194
.fn VFiPFFAT_GetContinuousSector, global
/* 814C3C10 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C3C14 | 7C 08 02 A6 */	mflr r0
/* 814C3C18 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C3C1C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3C20 | 48 13 58 99 */	bl _savegpr_25
/* 814C3C24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3C28 | 7C 79 1B 78 */	mr r25, r3
/* 814C3C2C | 7C 9A 23 78 */	mr r26, r4
/* 814C3C30 | 7C BB 2B 78 */	mr r27, r5
/* 814C3C34 | 7C DC 33 78 */	mr r28, r6
/* 814C3C38 | 7C FD 3B 78 */	mr r29, r7
/* 814C3C3C | 3B C0 FF FF */	li r30, -0x1
/* 814C3C40 | 40 82 00 0C */	bne .L_814C3C4C
/* 814C3C44 | 38 60 00 0A */	li r3, 0xa
/* 814C3C48 | 48 00 01 44 */	b .L_814C3D8C
.L_814C3C4C:
/* 814C3C4C | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814C3C50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3C54 | 40 82 00 0C */	bne .L_814C3C60
/* 814C3C58 | 38 60 00 0A */	li r3, 0xa
/* 814C3C5C | 48 00 01 30 */	b .L_814C3D8C
.L_814C3C60:
/* 814C3C60 | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C3C64 | 88 1F 18 62 */	lbz r0, 0x1862(r31)
/* 814C3C68 | 7C 00 07 74 */	extsb r0, r0
/* 814C3C6C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814C3C70 | 41 80 00 0C */	blt .L_814C3C7C
/* 814C3C74 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814C3C78 | 40 81 00 0C */	ble .L_814C3C84
.L_814C3C7C:
/* 814C3C7C | 38 60 00 23 */	li r3, 0x23
/* 814C3C80 | 48 00 01 0C */	b .L_814C3D8C
.L_814C3C84:
/* 814C3C84 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 814C3C88 | 38 A0 FF FF */	li r5, -0x1
/* 814C3C8C | 7C A5 04 30 */	srw r5, r5, r0
/* 814C3C90 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814C3C94 | 7C 04 00 40 */	cmplw r4, r0
/* 814C3C98 | 41 80 00 0C */	blt .L_814C3CA4
/* 814C3C9C | 38 60 00 25 */	li r3, 0x25
/* 814C3CA0 | 48 00 00 EC */	b .L_814C3D8C
.L_814C3CA4:
/* 814C3CA4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 814C3CA8 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C3CAC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3CB0 | 41 82 00 1C */	beq .L_814C3CCC
/* 814C3CB4 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 814C3CB8 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C3CBC | 7C 63 28 50 */	subf r3, r3, r5
/* 814C3CC0 | 7C 63 04 30 */	srw r3, r3, r0
/* 814C3CC4 | 3B C3 00 02 */	addi r30, r3, 0x2
/* 814C3CC8 | 48 00 00 3C */	b .L_814C3D04
.L_814C3CCC:
/* 814C3CCC | 38 A0 00 00 */	li r5, 0x0
/* 814C3CD0 | 4B FF FD E5 */	bl VFiPFFAT_GetSectorSpecified
/* 814C3CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3CD8 | 41 82 00 08 */	beq .L_814C3CE0
/* 814C3CDC | 48 00 00 B0 */	b .L_814C3D8C
.L_814C3CE0:
/* 814C3CE0 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 814C3CE4 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C3CE8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3CEC | 41 82 00 18 */	beq .L_814C3D04
/* 814C3CF0 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 814C3CF4 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C3CF8 | 7C 63 28 50 */	subf r3, r3, r5
/* 814C3CFC | 7C 63 04 30 */	srw r3, r3, r0
/* 814C3D00 | 3B C3 00 02 */	addi r30, r3, 0x2
.L_814C3D04:
/* 814C3D04 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C3D08 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3D0C | 41 82 00 24 */	beq .L_814C3D30
/* 814C3D10 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C3D14 | 38 7E FF FF */	subi r3, r30, 0x1
/* 814C3D18 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 814C3D1C | 7C 60 00 30 */	slw r0, r3, r0
/* 814C3D20 | 7C 04 02 14 */	add r0, r4, r0
/* 814C3D24 | 7C 05 00 50 */	subf r0, r5, r0
/* 814C3D28 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814C3D2C | 48 00 00 0C */	b .L_814C3D38
.L_814C3D30:
/* 814C3D30 | 38 00 00 00 */	li r0, 0x0
/* 814C3D34 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814C3D38:
/* 814C3D38 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814C3D3C | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C3D40 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3D44 | 41 82 00 44 */	beq .L_814C3D88
/* 814C3D48 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814C3D4C | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 814C3D50 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C3D54 | 7C 00 D8 40 */	cmplw r0, r27
/* 814C3D58 | 40 80 00 30 */	bge .L_814C3D88
/* 814C3D5C | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C3D60 | 7F 23 CB 78 */	mr r3, r25
/* 814C3D64 | 7F C4 F3 78 */	mr r4, r30
/* 814C3D68 | 7F 66 DB 78 */	mr r6, r27
/* 814C3D6C | 7F 45 04 30 */	srw r5, r26, r0
/* 814C3D70 | 7F A7 EB 78 */	mr r7, r29
/* 814C3D74 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814C3D78 | 4B FF F5 AD */	bl VFiPFFAT_GetClusterContinuousSectorInChain
/* 814C3D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3D80 | 41 82 00 08 */	beq .L_814C3D88
/* 814C3D84 | 48 00 00 08 */	b .L_814C3D8C
.L_814C3D88:
/* 814C3D88 | 38 60 00 00 */	li r3, 0x0
.L_814C3D8C:
/* 814C3D8C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C3D90 | 48 13 57 75 */	bl _restgpr_25
/* 814C3D94 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C3D98 | 7C 08 03 A6 */	mtlr r0
/* 814C3D9C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C3DA0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetContinuousSector

# .text:0x1D48 | 0x814C3DA4 | size: 0x130
.fn VFiPFFAT_CountAllocatedClusters, global
/* 814C3DA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C3DA8 | 7C 08 02 A6 */	mflr r0
/* 814C3DAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3DB0 | 7C 86 23 78 */	mr r6, r4
/* 814C3DB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C3DB8 | 38 00 00 00 */	li r0, 0x0
/* 814C3DBC | 7C A7 2B 78 */	mr r7, r5
/* 814C3DC0 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C3DC4 | 40 82 00 0C */	bne .L_814C3DD0
/* 814C3DC8 | 38 60 00 0A */	li r3, 0xa
/* 814C3DCC | 48 00 00 F8 */	b .L_814C3EC4
.L_814C3DD0:
/* 814C3DD0 | 81 23 00 2C */	lwz r9, 0x2c(r3)
/* 814C3DD4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C3DD8 | 40 82 00 0C */	bne .L_814C3DE4
/* 814C3DDC | 38 60 00 0A */	li r3, 0xa
/* 814C3DE0 | 48 00 00 E4 */	b .L_814C3EC4
.L_814C3DE4:
/* 814C3DE4 | 81 43 00 30 */	lwz r10, 0x30(r3)
/* 814C3DE8 | 88 0A 18 62 */	lbz r0, 0x1862(r10)
/* 814C3DEC | 7C 00 07 74 */	extsb r0, r0
/* 814C3DF0 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814C3DF4 | 41 80 00 0C */	blt .L_814C3E00
/* 814C3DF8 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814C3DFC | 40 81 00 0C */	ble .L_814C3E08
.L_814C3E00:
/* 814C3E00 | 38 60 00 23 */	li r3, 0x23
/* 814C3E04 | 48 00 00 C0 */	b .L_814C3EC4
.L_814C3E08:
/* 814C3E08 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814C3E0C | 81 68 00 00 */	lwz r11, 0x0(r8)
/* 814C3E10 | 28 0B 00 02 */	cmplwi r11, 0x2
/* 814C3E14 | 40 80 00 0C */	bge .L_814C3E20
/* 814C3E18 | 38 60 00 00 */	li r3, 0x0
/* 814C3E1C | 48 00 00 A8 */	b .L_814C3EC4
.L_814C3E20:
/* 814C3E20 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C3E24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3E28 | 41 82 00 18 */	beq .L_814C3E40
/* 814C3E2C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 814C3E30 | 38 60 00 00 */	li r3, 0x0
/* 814C3E34 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814C3E38 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C3E3C | 48 00 00 88 */	b .L_814C3EC4
.L_814C3E40:
/* 814C3E40 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 814C3E44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3E48 | 41 82 00 60 */	beq .L_814C3EA8
/* 814C3E4C | 81 09 00 00 */	lwz r8, 0x0(r9)
/* 814C3E50 | 88 CA 00 20 */	lbz r6, 0x20(r10)
/* 814C3E54 | 88 0A 00 21 */	lbz r0, 0x21(r10)
/* 814C3E58 | 39 28 00 01 */	addi r9, r8, 0x1
/* 814C3E5C | 7C 06 02 14 */	add r0, r6, r0
/* 814C3E60 | 7D 20 00 30 */	slw r0, r9, r0
/* 814C3E64 | 7C 04 00 40 */	cmplw r4, r0
/* 814C3E68 | 41 81 00 10 */	bgt .L_814C3E78
/* 814C3E6C | 91 25 00 00 */	stw r9, 0x0(r5)
/* 814C3E70 | 38 60 00 00 */	li r3, 0x0
/* 814C3E74 | 48 00 00 50 */	b .L_814C3EC4
.L_814C3E78:
/* 814C3E78 | 91 05 00 00 */	stw r8, 0x0(r5)
/* 814C3E7C | 81 03 00 30 */	lwz r8, 0x30(r3)
/* 814C3E80 | 80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 814C3E84 | 88 A8 00 20 */	lbz r5, 0x20(r8)
/* 814C3E88 | 88 08 00 21 */	lbz r0, 0x21(r8)
/* 814C3E8C | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 814C3E90 | 7C 05 02 14 */	add r0, r5, r0
/* 814C3E94 | 81 66 00 04 */	lwz r11, 0x4(r6)
/* 814C3E98 | 7D 00 00 30 */	slw r0, r8, r0
/* 814C3E9C | 38 A8 00 01 */	addi r5, r8, 0x1
/* 814C3EA0 | 7C C0 20 50 */	subf r6, r0, r4
/* 814C3EA4 | 48 00 00 08 */	b .L_814C3EAC
.L_814C3EA8:
/* 814C3EA8 | 38 A0 00 01 */	li r5, 0x1
.L_814C3EAC:
/* 814C3EAC | 7D 64 5B 78 */	mr r4, r11
/* 814C3EB0 | 4B FF F5 A5 */	bl VFiPFFAT_GetClusterAllocatedInChain
/* 814C3EB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3EB8 | 41 82 00 08 */	beq .L_814C3EC0
/* 814C3EBC | 48 00 00 08 */	b .L_814C3EC4
.L_814C3EC0:
/* 814C3EC0 | 38 60 00 00 */	li r3, 0x0
.L_814C3EC4:
/* 814C3EC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C3EC8 | 7C 08 03 A6 */	mtlr r0
/* 814C3ECC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C3ED0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_CountAllocatedClusters

# .text:0x1E78 | 0x814C3ED4 | size: 0x244
.fn VFiPFFAT_CountFreeClusters, global
/* 814C3ED4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C3ED8 | 7C 08 02 A6 */	mflr r0
/* 814C3EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3EE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C3EE4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C3EE8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C3EEC | 7C 9E 23 78 */	mr r30, r4
/* 814C3EF0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C3EF4 | 7C 7D 1B 78 */	mr r29, r3
/* 814C3EF8 | 40 82 00 0C */	bne .L_814C3F04
/* 814C3EFC | 38 60 00 0A */	li r3, 0xa
/* 814C3F00 | 48 00 01 FC */	b .L_814C40FC
.L_814C3F04:
/* 814C3F04 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C3F08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3F0C | 41 82 00 1C */	beq .L_814C3F28
/* 814C3F10 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C3F14 | 41 82 00 14 */	beq .L_814C3F28
/* 814C3F18 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C3F1C | 41 82 00 0C */	beq .L_814C3F28
/* 814C3F20 | 38 60 00 0F */	li r3, 0xf
/* 814C3F24 | 48 00 01 D8 */	b .L_814C40FC
.L_814C3F28:
/* 814C3F28 | A0 03 18 64 */	lhz r0, 0x1864(r3)
/* 814C3F2C | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C3F30 | 41 82 00 20 */	beq .L_814C3F50
/* 814C3F34 | 80 A3 00 38 */	lwz r5, 0x38(r3)
/* 814C3F38 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C3F3C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3F40 | 41 82 00 10 */	beq .L_814C3F50
/* 814C3F44 | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 814C3F48 | 38 60 00 00 */	li r3, 0x0
/* 814C3F4C | 48 00 01 B0 */	b .L_814C40FC
.L_814C3F50:
/* 814C3F50 | 38 00 FF FF */	li r0, -0x1
/* 814C3F54 | 3B E0 00 02 */	li r31, 0x2
/* 814C3F58 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814C3F5C | A0 03 18 64 */	lhz r0, 0x1864(r3)
/* 814C3F60 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C3F64 | 41 82 00 2C */	beq .L_814C3F90
/* 814C3F68 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C3F6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C3F70 | 40 82 00 20 */	bne .L_814C3F90
/* 814C3F74 | 7F A3 EB 78 */	mr r3, r29
/* 814C3F78 | 4B FF 23 39 */	bl VFiPFDRV_GetFSINFOInformation
/* 814C3F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3F80 | 41 82 00 08 */	beq .L_814C3F88
/* 814C3F84 | 48 00 01 78 */	b .L_814C40FC
.L_814C3F88:
/* 814C3F88 | 80 1D 00 38 */	lwz r0, 0x38(r29)
/* 814C3F8C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C3F90:
/* 814C3F90 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814C3F94 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C3F98 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C3F9C | 40 82 01 50 */	bne .L_814C40EC
/* 814C3FA0 | 7F A3 EB 78 */	mr r3, r29
/* 814C3FA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C3FA8 | 38 A0 00 02 */	li r5, 0x2
/* 814C3FAC | 4B FF E0 B1 */	bl VFiPFFAT_ReadFATSector
/* 814C3FB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C3FB4 | 41 82 00 08 */	beq .L_814C3FBC
/* 814C3FB8 | 48 00 01 44 */	b .L_814C40FC
.L_814C3FBC:
/* 814C3FBC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C3FC0 | 38 00 00 00 */	li r0, 0x0
/* 814C3FC4 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 814C3FC8 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C3FCC | 48 00 00 A0 */	b .L_814C406C
.L_814C3FD0:
/* 814C3FD0 | 80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 814C3FD4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C3FD8 | 41 82 00 38 */	beq .L_814C4010
/* 814C3FDC | 40 80 00 10 */	bge .L_814C3FEC
/* 814C3FE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C3FE4 | 40 80 00 14 */	bge .L_814C3FF8
/* 814C3FE8 | 48 00 00 58 */	b .L_814C4040
.L_814C3FEC:
/* 814C3FEC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C3FF0 | 40 80 00 50 */	bge .L_814C4040
/* 814C3FF4 | 48 00 00 34 */	b .L_814C4028
.L_814C3FF8:
/* 814C3FF8 | 7F A3 EB 78 */	mr r3, r29
/* 814C3FFC | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814C4000 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4004 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4008 | 48 00 12 01 */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C400C | 48 00 00 38 */	b .L_814C4044
.L_814C4010:
/* 814C4010 | 7F A3 EB 78 */	mr r3, r29
/* 814C4014 | 7F E4 FB 78 */	mr r4, r31
/* 814C4018 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C401C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4020 | 48 00 1C A1 */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C4024 | 48 00 00 20 */	b .L_814C4044
.L_814C4028:
/* 814C4028 | 7F A3 EB 78 */	mr r3, r29
/* 814C402C | 7F E4 FB 78 */	mr r4, r31
/* 814C4030 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4034 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4038 | 48 00 22 25 */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C403C | 48 00 00 08 */	b .L_814C4044
.L_814C4040:
/* 814C4040 | 38 60 00 0F */	li r3, 0xf
.L_814C4044:
/* 814C4044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4048 | 41 82 00 08 */	beq .L_814C4050
/* 814C404C | 48 00 00 B0 */	b .L_814C40FC
.L_814C4050:
/* 814C4050 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C4054 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C4058 | 40 82 00 10 */	bne .L_814C4068
/* 814C405C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814C4060 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C4064 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C4068:
/* 814C4068 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814C406C:
/* 814C406C | 28 1F 00 02 */	cmplwi r31, 0x2
/* 814C4070 | 41 80 00 14 */	blt .L_814C4084
/* 814C4074 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 814C4078 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814C407C | 7C 1F 00 40 */	cmplw r31, r0
/* 814C4080 | 41 80 FF 50 */	blt .L_814C3FD0
.L_814C4084:
/* 814C4084 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 814C4088 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C408C | 2C 83 00 02 */	cmpwi cr1, r3, 0x2
/* 814C4090 | 90 1D 00 38 */	stw r0, 0x38(r29)
/* 814C4094 | 40 86 00 58 */	bne cr1, .L_814C40EC
/* 814C4098 | A0 1D 18 64 */	lhz r0, 0x1864(r29)
/* 814C409C | 54 03 07 BD */	rlwinm. r3, r0, 0, 30, 30
/* 814C40A0 | 41 82 00 4C */	beq .L_814C40EC
/* 814C40A4 | 38 60 00 00 */	li r3, 0x0
/* 814C40A8 | 41 86 00 0C */	beq cr1, .L_814C40B4
/* 814C40AC | 38 60 00 0C */	li r3, 0xc
/* 814C40B0 | 48 00 00 20 */	b .L_814C40D0
.L_814C40B4:
/* 814C40B4 | 40 82 00 0C */	bne .L_814C40C0
/* 814C40B8 | 38 60 00 24 */	li r3, 0x24
/* 814C40BC | 48 00 00 14 */	b .L_814C40D0
.L_814C40C0:
/* 814C40C0 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C40C4 | 41 82 00 0C */	beq .L_814C40D0
/* 814C40C8 | 7F A3 EB 78 */	mr r3, r29
/* 814C40CC | 4B FF 23 A1 */	bl VFiPFDRV_StoreFreeCountToFSINFO
.L_814C40D0:
/* 814C40D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C40D4 | 41 82 00 18 */	beq .L_814C40EC
/* 814C40D8 | A0 1D 18 64 */	lhz r0, 0x1864(r29)
/* 814C40DC | 38 60 FF FF */	li r3, -0x1
/* 814C40E0 | 90 7D 00 38 */	stw r3, 0x38(r29)
/* 814C40E4 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814C40E8 | B0 1D 18 64 */	sth r0, 0x1864(r29)
.L_814C40EC:
/* 814C40EC | A0 1D 18 64 */	lhz r0, 0x1864(r29)
/* 814C40F0 | 38 60 00 00 */	li r3, 0x0
/* 814C40F4 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814C40F8 | B0 1D 18 64 */	sth r0, 0x1864(r29)
.L_814C40FC:
/* 814C40FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C4100 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C4104 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C4108 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C410C | 7C 08 03 A6 */	mtlr r0
/* 814C4110 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C4114 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_CountFreeClusters

# .text:0x20BC | 0x814C4118 | size: 0x3E0
.fn VFiPFFAT_FreeChain, global
/* 814C4118 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C411C | 7C 08 02 A6 */	mflr r0
/* 814C4120 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C4124 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C4128 | 48 13 53 81 */	bl _savegpr_21
/* 814C412C | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C4130 | 7C 76 1B 78 */	mr r22, r3
/* 814C4134 | 7C 97 23 78 */	mr r23, r4
/* 814C4138 | 7C B8 2B 78 */	mr r24, r5
/* 814C413C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C4140 | 7C D9 33 78 */	mr r25, r6
/* 814C4144 | 40 82 00 0C */	bne .L_814C4150
/* 814C4148 | 38 60 00 0A */	li r3, 0xa
/* 814C414C | 48 00 03 94 */	b .L_814C44E0
.L_814C4150:
/* 814C4150 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C4154 | 41 80 00 14 */	blt .L_814C4168
/* 814C4158 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814C415C | 38 03 00 02 */	addi r0, r3, 0x2
/* 814C4160 | 7C 04 00 40 */	cmplw r4, r0
/* 814C4164 | 41 80 00 14 */	blt .L_814C4178
.L_814C4168:
/* 814C4168 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C416C | 41 82 00 0C */	beq .L_814C4178
/* 814C4170 | 38 60 00 0E */	li r3, 0xe
/* 814C4174 | 48 00 03 6C */	b .L_814C44E0
.L_814C4178:
/* 814C4178 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C417C | 40 82 00 0C */	bne .L_814C4188
/* 814C4180 | 38 60 00 00 */	li r3, 0x0
/* 814C4184 | 48 00 03 5C */	b .L_814C44E0
.L_814C4188:
/* 814C4188 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C418C | 3C 60 81 62 */	lis r3, fat_special_values@ha
/* 814C4190 | 38 63 8D F0 */	addi r3, r3, fat_special_values@l
/* 814C4194 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C4198 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C419C | 7C 63 02 14 */	add r3, r3, r0
/* 814C41A0 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 814C41A4 | 41 82 00 18 */	beq .L_814C41BC
/* 814C41A8 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814C41AC | 7F 3D CB 78 */	mr r29, r25
/* 814C41B0 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C41B4 | 7C 7C 00 30 */	slw r28, r3, r0
/* 814C41B8 | 48 00 00 0C */	b .L_814C41C4
.L_814C41BC:
/* 814C41BC | 38 60 00 00 */	li r3, 0x0
/* 814C41C0 | 48 00 03 20 */	b .L_814C44E0
.L_814C41C4:
/* 814C41C4 | 7F E3 FB 78 */	mr r3, r31
/* 814C41C8 | 7E E5 BB 78 */	mr r5, r23
/* 814C41CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C41D0 | 4B FF DE 8D */	bl VFiPFFAT_ReadFATSector
/* 814C41D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C41D8 | 41 82 00 08 */	beq .L_814C41E0
/* 814C41DC | 48 00 03 04 */	b .L_814C44E0
.L_814C41E0:
/* 814C41E0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C41E4 | 38 00 00 01 */	li r0, 0x1
/* 814C41E8 | 7E FB BB 78 */	mr r27, r23
/* 814C41EC | 3B 40 00 01 */	li r26, 0x1
/* 814C41F0 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 814C41F4 | 92 E1 00 0C */	stw r23, 0xc(r1)
/* 814C41F8 | 48 00 02 50 */	b .L_814C4448
.L_814C41FC:
/* 814C41FC | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814C4200 | 41 82 00 0C */	beq .L_814C420C
/* 814C4204 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C4208 | 41 82 02 48 */	beq .L_814C4450
.L_814C420C:
/* 814C420C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C4210 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C4214 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C4218 | 82 A3 00 18 */	lwz r21, 0x18(r3)
/* 814C421C | 41 82 00 38 */	beq .L_814C4254
/* 814C4220 | 40 80 00 10 */	bge .L_814C4230
/* 814C4224 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C4228 | 40 80 00 14 */	bge .L_814C423C
/* 814C422C | 48 00 00 58 */	b .L_814C4284
.L_814C4230:
/* 814C4230 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C4234 | 40 80 00 50 */	bge .L_814C4284
/* 814C4238 | 48 00 00 34 */	b .L_814C426C
.L_814C423C:
/* 814C423C | 7F E3 FB 78 */	mr r3, r31
/* 814C4240 | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 814C4244 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4248 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C424C | 48 00 0F BD */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C4250 | 48 00 00 38 */	b .L_814C4288
.L_814C4254:
/* 814C4254 | 7F E3 FB 78 */	mr r3, r31
/* 814C4258 | 7E E4 BB 78 */	mr r4, r23
/* 814C425C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4260 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4264 | 48 00 1A 5D */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C4268 | 48 00 00 20 */	b .L_814C4288
.L_814C426C:
/* 814C426C | 7F E3 FB 78 */	mr r3, r31
/* 814C4270 | 7E E4 BB 78 */	mr r4, r23
/* 814C4274 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4278 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C427C | 48 00 1F E1 */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C4280 | 48 00 00 08 */	b .L_814C4288
.L_814C4284:
/* 814C4284 | 38 60 00 0F */	li r3, 0xf
.L_814C4288:
/* 814C4288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C428C | 41 82 00 08 */	beq .L_814C4294
/* 814C4290 | 48 00 02 50 */	b .L_814C44E0
.L_814C4294:
/* 814C4294 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C4298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C429C | 40 82 00 38 */	bne .L_814C42D4
/* 814C42A0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C42A4 | 38 60 00 00 */	li r3, 0x0
/* 814C42A8 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814C42AC | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C42B0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C42B4 | 40 82 00 0C */	bne .L_814C42C0
/* 814C42B8 | 7F E3 FB 78 */	mr r3, r31
/* 814C42BC | 4B FF 7D D1 */	bl VFiPFCACHE_WriteFATPage
.L_814C42C0:
/* 814C42C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C42C4 | 41 82 00 08 */	beq .L_814C42CC
/* 814C42C8 | 48 00 02 18 */	b .L_814C44E0
.L_814C42CC:
/* 814C42CC | 38 60 00 00 */	li r3, 0x0
/* 814C42D0 | 48 00 02 10 */	b .L_814C44E0
.L_814C42D4:
/* 814C42D4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C42D8 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814C42DC | 7C 15 00 40 */	cmplw r21, r0
/* 814C42E0 | 41 82 00 20 */	beq .L_814C4300
/* 814C42E4 | 7F E3 FB 78 */	mr r3, r31
/* 814C42E8 | 7E E5 BB 78 */	mr r5, r23
/* 814C42EC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C42F0 | 4B FF DD 6D */	bl VFiPFFAT_ReadFATSector
/* 814C42F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C42F8 | 41 82 00 08 */	beq .L_814C4300
/* 814C42FC | 48 00 01 E4 */	b .L_814C44E0
.L_814C4300:
/* 814C4300 | 3C 18 00 01 */	addis r0, r24, 0x1
/* 814C4304 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C4308 | 41 82 00 28 */	beq .L_814C4330
/* 814C430C | 7E C3 B3 78 */	mr r3, r22
/* 814C4310 | 7E E4 BB 78 */	mr r4, r23
/* 814C4314 | 7F 05 C3 78 */	mr r5, r24
/* 814C4318 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C431C | 38 C0 00 00 */	li r6, 0x0
/* 814C4320 | 38 E0 00 01 */	li r7, 0x1
/* 814C4324 | 4B FF E7 C5 */	bl VFiPFFAT_WriteClusterPage
/* 814C4328 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814C432C | 48 00 00 78 */	b .L_814C43A4
.L_814C4330:
/* 814C4330 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C4334 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C4338 | 41 82 00 38 */	beq .L_814C4370
/* 814C433C | 40 80 00 10 */	bge .L_814C434C
/* 814C4340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C4344 | 40 80 00 14 */	bge .L_814C4358
/* 814C4348 | 48 00 00 58 */	b .L_814C43A0
.L_814C434C:
/* 814C434C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C4350 | 40 80 00 50 */	bge .L_814C43A0
/* 814C4354 | 48 00 00 34 */	b .L_814C4388
.L_814C4358:
/* 814C4358 | 7F E3 FB 78 */	mr r3, r31
/* 814C435C | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 814C4360 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4364 | 38 A0 00 00 */	li r5, 0x0
/* 814C4368 | 48 00 13 21 */	bl VFiPFFAT12_WriteFATEntryPage
/* 814C436C | 48 00 00 38 */	b .L_814C43A4
.L_814C4370:
/* 814C4370 | 7F E3 FB 78 */	mr r3, r31
/* 814C4374 | 7E E4 BB 78 */	mr r4, r23
/* 814C4378 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C437C | 38 A0 00 00 */	li r5, 0x0
/* 814C4380 | 48 00 1B 99 */	bl VFiPFFAT16_WriteFATEntryPage
/* 814C4384 | 48 00 00 20 */	b .L_814C43A4
.L_814C4388:
/* 814C4388 | 7F E3 FB 78 */	mr r3, r31
/* 814C438C | 7E E4 BB 78 */	mr r4, r23
/* 814C4390 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4394 | 38 A0 00 00 */	li r5, 0x0
/* 814C4398 | 48 00 21 B5 */	bl VFiPFFAT32_WriteFATEntryPage
/* 814C439C | 48 00 00 08 */	b .L_814C43A4
.L_814C43A0:
/* 814C43A0 | 38 60 00 0F */	li r3, 0xf
.L_814C43A4:
/* 814C43A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C43A8 | 41 82 00 08 */	beq .L_814C43B0
/* 814C43AC | 48 00 01 34 */	b .L_814C44E0
.L_814C43B0:
/* 814C43B0 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814C43B4 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814C43B8 | 41 82 00 50 */	beq .L_814C4408
/* 814C43BC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C43C0 | 38 17 00 01 */	addi r0, r23, 0x1
/* 814C43C4 | 7C 03 00 40 */	cmplw r3, r0
/* 814C43C8 | 40 82 00 0C */	bne .L_814C43D4
/* 814C43CC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814C43D0 | 48 00 00 38 */	b .L_814C4408
.L_814C43D4:
/* 814C43D4 | 88 BF 00 21 */	lbz r5, 0x21(r31)
/* 814C43D8 | 38 1B FF FE */	subi r0, r27, 0x2
/* 814C43DC | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 814C43E0 | 7F E3 FB 78 */	mr r3, r31
/* 814C43E4 | 7C 00 28 30 */	slw r0, r0, r5
/* 814C43E8 | 7F 45 28 30 */	slw r5, r26, r5
/* 814C43EC | 7C 84 02 14 */	add r4, r4, r0
/* 814C43F0 | 4B FF 28 3D */	bl VFiPFDRV_lerase
/* 814C43F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C43F8 | 41 82 00 08 */	beq .L_814C4400
/* 814C43FC | 48 00 00 E4 */	b .L_814C44E0
.L_814C4400:
/* 814C4400 | 83 61 00 0C */	lwz r27, 0xc(r1)
/* 814C4404 | 3B 40 00 01 */	li r26, 0x1
.L_814C4408:
/* 814C4408 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814C440C | 41 82 00 20 */	beq .L_814C442C
/* 814C4410 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C4414 | 41 82 00 18 */	beq .L_814C442C
/* 814C4418 | 7C 1D E0 10 */	subfc r0, r29, r28
/* 814C441C | 7C 7D 01 94 */	addze r3, r29
/* 814C4420 | 7C 1C E8 50 */	subf r0, r28, r29
/* 814C4424 | 7C 63 E8 50 */	subf r3, r3, r29
/* 814C4428 | 7C 1D 18 78 */	andc r29, r0, r3
.L_814C442C:
/* 814C442C | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 814C4430 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C4434 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C4438 | 41 82 00 0C */	beq .L_814C4444
/* 814C443C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C4440 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_814C4444:
/* 814C4444 | 82 E1 00 0C */	lwz r23, 0xc(r1)
.L_814C4448:
/* 814C4448 | 7C 17 F0 40 */	cmplw r23, r30
/* 814C444C | 41 80 FD B0 */	blt .L_814C41FC
.L_814C4450:
/* 814C4450 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C4454 | 38 60 00 00 */	li r3, 0x0
/* 814C4458 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814C445C | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C4460 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C4464 | 40 82 00 0C */	bne .L_814C4470
/* 814C4468 | 7F E3 FB 78 */	mr r3, r31
/* 814C446C | 4B FF 7C 21 */	bl VFiPFCACHE_WriteFATPage
.L_814C4470:
/* 814C4470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4474 | 41 82 00 08 */	beq .L_814C447C
/* 814C4478 | 48 00 00 68 */	b .L_814C44E0
.L_814C447C:
/* 814C447C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C4480 | 2C 80 00 02 */	cmpwi cr1, r0, 0x2
/* 814C4484 | 40 86 00 58 */	bne cr1, .L_814C44DC
/* 814C4488 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814C448C | 54 03 07 BD */	rlwinm. r3, r0, 0, 30, 30
/* 814C4490 | 41 82 00 4C */	beq .L_814C44DC
/* 814C4494 | 38 60 00 00 */	li r3, 0x0
/* 814C4498 | 41 86 00 0C */	beq cr1, .L_814C44A4
/* 814C449C | 38 60 00 0C */	li r3, 0xc
/* 814C44A0 | 48 00 00 20 */	b .L_814C44C0
.L_814C44A4:
/* 814C44A4 | 40 82 00 0C */	bne .L_814C44B0
/* 814C44A8 | 38 60 00 24 */	li r3, 0x24
/* 814C44AC | 48 00 00 14 */	b .L_814C44C0
.L_814C44B0:
/* 814C44B0 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C44B4 | 41 82 00 0C */	beq .L_814C44C0
/* 814C44B8 | 7F E3 FB 78 */	mr r3, r31
/* 814C44BC | 4B FF 1F B1 */	bl VFiPFDRV_StoreFreeCountToFSINFO
.L_814C44C0:
/* 814C44C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C44C4 | 41 82 00 18 */	beq .L_814C44DC
/* 814C44C8 | 38 00 FF FF */	li r0, -0x1
/* 814C44CC | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 814C44D0 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814C44D4 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814C44D8 | B0 1F 18 64 */	sth r0, 0x1864(r31)
.L_814C44DC:
/* 814C44DC | 38 60 00 00 */	li r3, 0x0
.L_814C44E0:
/* 814C44E0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C44E4 | 48 13 50 11 */	bl _restgpr_21
/* 814C44E8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C44EC | 7C 08 03 A6 */	mtlr r0
/* 814C44F0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814C44F4 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_FreeChain

# .text:0x249C | 0x814C44F8 | size: 0x198
.fn VFiPFFAT_GetBeforeChain, global
/* 814C44F8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C44FC | 7C 08 02 A6 */	mflr r0
/* 814C4500 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C4504 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C4508 | 48 13 4F B9 */	bl _savegpr_27
/* 814C450C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4510 | 7C 7C 1B 78 */	mr r28, r3
/* 814C4514 | 7C 9D 23 78 */	mr r29, r4
/* 814C4518 | 7C BE 2B 78 */	mr r30, r5
/* 814C451C | 7C DF 33 78 */	mr r31, r6
/* 814C4520 | 40 82 00 14 */	bne .L_814C4534
/* 814C4524 | 38 00 FF FF */	li r0, -0x1
/* 814C4528 | 38 60 00 0A */	li r3, 0xa
/* 814C452C | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C4530 | 48 00 01 48 */	b .L_814C4678
.L_814C4534:
/* 814C4534 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C4538 | 41 80 00 14 */	blt .L_814C454C
/* 814C453C | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814C4540 | 38 05 00 02 */	addi r0, r5, 0x2
/* 814C4544 | 7C 04 00 40 */	cmplw r4, r0
/* 814C4548 | 41 80 00 14 */	blt .L_814C455C
.L_814C454C:
/* 814C454C | 38 00 FF FF */	li r0, -0x1
/* 814C4550 | 38 60 00 0A */	li r3, 0xa
/* 814C4554 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C4558 | 48 00 01 20 */	b .L_814C4678
.L_814C455C:
/* 814C455C | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 814C4560 | 3D 00 81 62 */	lis r8, fat_special_values@ha
/* 814C4564 | 38 00 FF FF */	li r0, -0x1
/* 814C4568 | 7F A5 EB 78 */	mr r5, r29
/* 814C456C | 1C E4 00 14 */	mulli r7, r4, 0x14
/* 814C4570 | 39 08 8D F0 */	addi r8, r8, fat_special_values@l
/* 814C4574 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C4578 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C457C | 7C C8 3A 14 */	add r6, r8, r7
/* 814C4580 | 83 66 00 04 */	lwz r27, 0x4(r6)
/* 814C4584 | 4B FF DA D9 */	bl VFiPFFAT_ReadFATSector
/* 814C4588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C458C | 41 82 00 08 */	beq .L_814C4594
/* 814C4590 | 48 00 00 E8 */	b .L_814C4678
.L_814C4594:
/* 814C4594 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C4598 | 38 00 00 00 */	li r0, 0x0
/* 814C459C | B0 03 00 02 */	sth r0, 0x2(r3)
/* 814C45A0 | 48 00 00 CC */	b .L_814C466C
.L_814C45A4:
/* 814C45A4 | 80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 814C45A8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C45AC | 41 82 00 38 */	beq .L_814C45E4
/* 814C45B0 | 40 80 00 10 */	bge .L_814C45C0
/* 814C45B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C45B8 | 40 80 00 14 */	bge .L_814C45CC
/* 814C45BC | 48 00 00 58 */	b .L_814C4614
.L_814C45C0:
/* 814C45C0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C45C4 | 40 80 00 50 */	bge .L_814C4614
/* 814C45C8 | 48 00 00 34 */	b .L_814C45FC
.L_814C45CC:
/* 814C45CC | 7F 83 E3 78 */	mr r3, r28
/* 814C45D0 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 814C45D4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C45D8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C45DC | 48 00 0C 2D */	bl VFiPFFAT12_ReadFATEntryPage
/* 814C45E0 | 48 00 00 38 */	b .L_814C4618
.L_814C45E4:
/* 814C45E4 | 7F 83 E3 78 */	mr r3, r28
/* 814C45E8 | 7F A4 EB 78 */	mr r4, r29
/* 814C45EC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C45F0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C45F4 | 48 00 16 CD */	bl VFiPFFAT16_ReadFATEntryPage
/* 814C45F8 | 48 00 00 20 */	b .L_814C4618
.L_814C45FC:
/* 814C45FC | 7F 83 E3 78 */	mr r3, r28
/* 814C4600 | 7F A4 EB 78 */	mr r4, r29
/* 814C4604 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4608 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C460C | 48 00 1C 51 */	bl VFiPFFAT32_ReadFATEntryPage
/* 814C4610 | 48 00 00 08 */	b .L_814C4618
.L_814C4614:
/* 814C4614 | 38 60 00 0F */	li r3, 0xf
.L_814C4618:
/* 814C4618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C461C | 41 82 00 08 */	beq .L_814C4624
/* 814C4620 | 48 00 00 58 */	b .L_814C4678
.L_814C4624:
/* 814C4624 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C4628 | 7C 1E 00 40 */	cmplw r30, r0
/* 814C462C | 40 82 00 10 */	bne .L_814C463C
/* 814C4630 | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 814C4634 | 38 60 00 00 */	li r3, 0x0
/* 814C4638 | 48 00 00 40 */	b .L_814C4678
.L_814C463C:
/* 814C463C | 3B BD FF FF */	subi r29, r29, 0x1
/* 814C4640 | 28 1D 00 02 */	cmplwi r29, 0x2
/* 814C4644 | 41 80 00 14 */	blt .L_814C4658
/* 814C4648 | 80 7C 00 34 */	lwz r3, 0x34(r28)
/* 814C464C | 38 03 00 02 */	addi r0, r3, 0x2
/* 814C4650 | 7C 1D 00 40 */	cmplw r29, r0
/* 814C4654 | 41 80 00 18 */	blt .L_814C466C
.L_814C4658:
/* 814C4658 | 7C 1D D8 40 */	cmplw r29, r27
/* 814C465C | 40 80 00 10 */	bge .L_814C466C
/* 814C4660 | 93 DF 00 00 */	stw r30, 0x0(r31)
/* 814C4664 | 38 60 00 00 */	li r3, 0x0
/* 814C4668 | 48 00 00 10 */	b .L_814C4678
.L_814C466C:
/* 814C466C | 7C 1D D8 40 */	cmplw r29, r27
/* 814C4670 | 41 80 FF 34 */	blt .L_814C45A4
/* 814C4674 | 38 60 00 0D */	li r3, 0xd
.L_814C4678:
/* 814C4678 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C467C | 48 13 4E 91 */	bl _restgpr_27
/* 814C4680 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C4684 | 7C 08 03 A6 */	mtlr r0
/* 814C4688 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C468C | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetBeforeChain

# .text:0x2634 | 0x814C4690 | size: 0x130
.fn VFiPFFAT_GetBeforeSector, global
/* 814C4690 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C4694 | 7C 08 02 A6 */	mflr r0
/* 814C4698 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C469C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C46A0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C46A4 | 7C 9F 23 78 */	mr r31, r4
/* 814C46A8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C46AC | 7C 7E 1B 78 */	mr r30, r3
/* 814C46B0 | 38 60 00 00 */	li r3, 0x0
/* 814C46B4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C46B8 | 7C BD 2B 78 */	mr r29, r5
/* 814C46BC | 41 82 00 0C */	beq .L_814C46C8
/* 814C46C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C46C4 | 40 82 00 0C */	bne .L_814C46D0
.L_814C46C8:
/* 814C46C8 | 38 60 00 0A */	li r3, 0xa
/* 814C46CC | 48 00 00 D8 */	b .L_814C47A4
.L_814C46D0:
/* 814C46D0 | 80 C4 00 2C */	lwz r6, 0x2c(r4)
/* 814C46D4 | 7C 05 30 40 */	cmplw r5, r6
/* 814C46D8 | 40 80 00 0C */	bge .L_814C46E4
/* 814C46DC | 38 60 00 0A */	li r3, 0xa
/* 814C46E0 | 48 00 00 C4 */	b .L_814C47A4
.L_814C46E4:
/* 814C46E4 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 814C46E8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C46EC | 41 82 00 24 */	beq .L_814C4710
/* 814C46F0 | 80 04 00 30 */	lwz r0, 0x30(r4)
/* 814C46F4 | 7C 05 00 40 */	cmplw r5, r0
/* 814C46F8 | 40 80 00 18 */	bge .L_814C4710
/* 814C46FC | 3B A5 FF FF */	subi r29, r5, 0x1
/* 814C4700 | 7C 1D 30 40 */	cmplw r29, r6
/* 814C4704 | 40 80 00 88 */	bge .L_814C478C
/* 814C4708 | 38 60 00 22 */	li r3, 0x22
/* 814C470C | 48 00 00 80 */	b .L_814C478C
.L_814C4710:
/* 814C4710 | 80 04 00 30 */	lwz r0, 0x30(r4)
/* 814C4714 | 88 C4 00 06 */	lbz r6, 0x6(r4)
/* 814C4718 | 7C E0 28 50 */	subf r7, r0, r5
/* 814C471C | 38 06 FF FF */	subi r0, r6, 0x1
/* 814C4720 | 7C 00 38 39 */	and. r0, r0, r7
/* 814C4724 | 40 82 00 64 */	bne .L_814C4788
/* 814C4728 | 88 04 00 21 */	lbz r0, 0x21(r4)
/* 814C472C | 7F E3 FB 78 */	mr r3, r31
/* 814C4730 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C4734 | 7C E4 04 30 */	srw r4, r7, r0
/* 814C4738 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814C473C | 7C 85 23 78 */	mr r5, r4
/* 814C4740 | 4B FF FD B9 */	bl VFiPFFAT_GetBeforeChain
/* 814C4744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4748 | 40 82 00 44 */	bne .L_814C478C
/* 814C474C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C4750 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814C4754 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C4758 | 40 82 00 0C */	bne .L_814C4764
/* 814C475C | 3B A0 FF FF */	li r29, -0x1
/* 814C4760 | 48 00 00 2C */	b .L_814C478C
.L_814C4764:
/* 814C4764 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 814C4768 | 88 9F 00 21 */	lbz r4, 0x21(r31)
/* 814C476C | 88 DF 00 06 */	lbz r6, 0x6(r31)
/* 814C4770 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 814C4774 | 7C A4 20 30 */	slw r4, r5, r4
/* 814C4778 | 7C 06 02 14 */	add r0, r6, r0
/* 814C477C | 7F A0 22 14 */	add r29, r0, r4
/* 814C4780 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814C4784 | 48 00 00 08 */	b .L_814C478C
.L_814C4788:
/* 814C4788 | 3B A5 FF FF */	subi r29, r5, 0x1
.L_814C478C:
/* 814C478C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4790 | 40 82 00 0C */	bne .L_814C479C
/* 814C4794 | 93 BE 00 00 */	stw r29, 0x0(r30)
/* 814C4798 | 48 00 00 0C */	b .L_814C47A4
.L_814C479C:
/* 814C479C | 38 00 FF FF */	li r0, -0x1
/* 814C47A0 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C47A4:
/* 814C47A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C47A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C47AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C47B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C47B4 | 7C 08 03 A6 */	mtlr r0
/* 814C47B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C47BC | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetBeforeSector

# .text:0x2764 | 0x814C47C0 | size: 0x2B0
.fn VFiPFFAT_InitFATRegion, global
/* 814C47C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C47C4 | 7C 08 02 A6 */	mflr r0
/* 814C47C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C47CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C47D0 | 48 13 4C F1 */	bl _savegpr_27
/* 814C47D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C47D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814C47DC | 40 82 00 0C */	bne .L_814C47E8
/* 814C47E0 | 38 60 00 0A */	li r3, 0xa
/* 814C47E4 | 48 00 02 74 */	b .L_814C4A58
.L_814C47E8:
/* 814C47E8 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C47EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C47F0 | 41 82 00 1C */	beq .L_814C480C
/* 814C47F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C47F8 | 41 82 00 14 */	beq .L_814C480C
/* 814C47FC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C4800 | 41 82 00 0C */	beq .L_814C480C
/* 814C4804 | 38 60 00 0F */	li r3, 0xf
/* 814C4808 | 48 00 02 50 */	b .L_814C4A58
.L_814C480C:
/* 814C480C | 7F E3 FB 78 */	mr r3, r31
/* 814C4810 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C4814 | 38 80 FF FF */	li r4, -0x1
/* 814C4818 | 4B FF 76 41 */	bl VFiPFCACHE_AllocateDataPage
/* 814C481C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4820 | 41 82 00 08 */	beq .L_814C4828
/* 814C4824 | 48 00 02 34 */	b .L_814C4A58
.L_814C4828:
/* 814C4828 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C482C | 38 80 00 00 */	li r4, 0x0
/* 814C4830 | 83 9F 15 EC */	lwz r28, 0x15ec(r31)
/* 814C4834 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 814C4838 | 83 7F 00 2C */	lwz r27, 0x2c(r31)
/* 814C483C | 7F 9D 00 30 */	slw r29, r28, r0
/* 814C4840 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814C4844 | 7F A5 EB 78 */	mr r5, r29
/* 814C4848 | 4B FF 10 C1 */	bl VFipf_memset
/* 814C484C | A3 DF 00 02 */	lhz r30, 0x2(r31)
/* 814C4850 | 48 00 00 64 */	b .L_814C48B4
.L_814C4854:
/* 814C4854 | 7C 1E E2 14 */	add r0, r30, r28
/* 814C4858 | 7C 00 D8 40 */	cmplw r0, r27
/* 814C485C | 40 81 00 10 */	ble .L_814C486C
/* 814C4860 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 814C4864 | 7F 9E D8 50 */	subf r28, r30, r27
/* 814C4868 | 7F 9D 00 30 */	slw r29, r28, r0
.L_814C486C:
/* 814C486C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C4870 | 7F E3 FB 78 */	mr r3, r31
/* 814C4874 | 7F C5 F3 78 */	mr r5, r30
/* 814C4878 | 7F A6 EB 78 */	mr r6, r29
/* 814C487C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814C4880 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C4884 | 39 00 00 01 */	li r8, 0x1
/* 814C4888 | 39 20 00 00 */	li r9, 0x0
/* 814C488C | 48 00 85 91 */	bl VFiPFSEC_WriteDataSector
/* 814C4890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4894 | 41 82 00 0C */	beq .L_814C48A0
/* 814C4898 | 7F 7E DB 78 */	mr r30, r27
/* 814C489C | 48 00 00 14 */	b .L_814C48B0
.L_814C48A0:
/* 814C48A0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C48A4 | 7C 00 E8 40 */	cmplw r0, r29
/* 814C48A8 | 41 82 00 08 */	beq .L_814C48B0
/* 814C48AC | 7F 7E DB 78 */	mr r30, r27
.L_814C48B0:
/* 814C48B0 | 7F DE E2 14 */	add r30, r30, r28
.L_814C48B4:
/* 814C48B4 | 7C 1E D8 40 */	cmplw r30, r27
/* 814C48B8 | 41 80 FF 9C */	blt .L_814C4854
/* 814C48BC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C48C0 | 7F E3 FB 78 */	mr r3, r31
/* 814C48C4 | 4B FF 76 09 */	bl VFiPFCACHE_FreeDataPage
/* 814C48C8 | 80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 814C48CC | 3C 60 81 62 */	lis r3, fat_special_values@ha
/* 814C48D0 | 38 63 8D F0 */	addi r3, r3, fat_special_values@l
/* 814C48D4 | 88 9F 00 1A */	lbz r4, 0x1a(r31)
/* 814C48D8 | 1C 06 00 14 */	mulli r0, r6, 0x14
/* 814C48DC | 2C 06 00 01 */	cmpwi r6, 0x1
/* 814C48E0 | 7C 63 02 14 */	add r3, r3, r0
/* 814C48E4 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814C48E8 | 7C 85 03 78 */	or r5, r4, r0
/* 814C48EC | 41 82 00 44 */	beq .L_814C4930
/* 814C48F0 | 40 80 00 10 */	bge .L_814C4900
/* 814C48F4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C48F8 | 40 80 00 14 */	bge .L_814C490C
/* 814C48FC | 48 00 00 7C */	b .L_814C4978
.L_814C4900:
/* 814C4900 | 2C 06 00 03 */	cmpwi r6, 0x3
/* 814C4904 | 40 80 00 74 */	bge .L_814C4978
/* 814C4908 | 48 00 00 48 */	b .L_814C4950
.L_814C490C:
/* 814C490C | 28 05 0F FF */	cmplwi r5, 0xfff
/* 814C4910 | 40 81 00 0C */	ble .L_814C491C
/* 814C4914 | 38 60 00 10 */	li r3, 0x10
/* 814C4918 | 48 00 00 64 */	b .L_814C497C
.L_814C491C:
/* 814C491C | 7F E3 FB 78 */	mr r3, r31
/* 814C4920 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814C4924 | 38 80 00 00 */	li r4, 0x0
/* 814C4928 | 48 00 0B BD */	bl VFiPFFAT12_WriteFATEntry
/* 814C492C | 48 00 00 50 */	b .L_814C497C
.L_814C4930:
/* 814C4930 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 814C4934 | 40 81 00 0C */	ble .L_814C4940
/* 814C4938 | 38 60 00 10 */	li r3, 0x10
/* 814C493C | 48 00 00 40 */	b .L_814C497C
.L_814C4940:
/* 814C4940 | 7F E3 FB 78 */	mr r3, r31
/* 814C4944 | 38 80 00 00 */	li r4, 0x0
/* 814C4948 | 48 00 15 39 */	bl VFiPFFAT16_WriteFATEntry
/* 814C494C | 48 00 00 30 */	b .L_814C497C
.L_814C4950:
/* 814C4950 | 3C 60 10 00 */	lis r3, 0x1000
/* 814C4954 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C4958 | 7C 05 00 40 */	cmplw r5, r0
/* 814C495C | 40 81 00 0C */	ble .L_814C4968
/* 814C4960 | 38 60 00 10 */	li r3, 0x10
/* 814C4964 | 48 00 00 18 */	b .L_814C497C
.L_814C4968:
/* 814C4968 | 7F E3 FB 78 */	mr r3, r31
/* 814C496C | 38 80 00 00 */	li r4, 0x0
/* 814C4970 | 48 00 1A BD */	bl VFiPFFAT32_WriteFATEntry
/* 814C4974 | 48 00 00 08 */	b .L_814C497C
.L_814C4978:
/* 814C4978 | 38 60 00 0F */	li r3, 0xf
.L_814C497C:
/* 814C497C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4980 | 41 82 00 08 */	beq .L_814C4988
/* 814C4984 | 48 00 00 D4 */	b .L_814C4A58
.L_814C4988:
/* 814C4988 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 814C498C | 3C 60 81 62 */	lis r3, fat_special_values@ha
/* 814C4990 | 38 63 8D F0 */	addi r3, r3, fat_special_values@l
/* 814C4994 | 1C 04 00 14 */	mulli r0, r4, 0x14
/* 814C4998 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814C499C | 7C 63 02 14 */	add r3, r3, r0
/* 814C49A0 | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 814C49A4 | 41 82 00 44 */	beq .L_814C49E8
/* 814C49A8 | 40 80 00 10 */	bge .L_814C49B8
/* 814C49AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C49B0 | 40 80 00 14 */	bge .L_814C49C4
/* 814C49B4 | 48 00 00 7C */	b .L_814C4A30
.L_814C49B8:
/* 814C49B8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 814C49BC | 40 80 00 74 */	bge .L_814C4A30
/* 814C49C0 | 48 00 00 48 */	b .L_814C4A08
.L_814C49C4:
/* 814C49C4 | 28 05 0F FF */	cmplwi r5, 0xfff
/* 814C49C8 | 40 81 00 0C */	ble .L_814C49D4
/* 814C49CC | 38 60 00 10 */	li r3, 0x10
/* 814C49D0 | 48 00 00 64 */	b .L_814C4A34
.L_814C49D4:
/* 814C49D4 | 7F E3 FB 78 */	mr r3, r31
/* 814C49D8 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814C49DC | 38 80 00 01 */	li r4, 0x1
/* 814C49E0 | 48 00 0B 05 */	bl VFiPFFAT12_WriteFATEntry
/* 814C49E4 | 48 00 00 50 */	b .L_814C4A34
.L_814C49E8:
/* 814C49E8 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 814C49EC | 40 81 00 0C */	ble .L_814C49F8
/* 814C49F0 | 38 60 00 10 */	li r3, 0x10
/* 814C49F4 | 48 00 00 40 */	b .L_814C4A34
.L_814C49F8:
/* 814C49F8 | 7F E3 FB 78 */	mr r3, r31
/* 814C49FC | 38 80 00 01 */	li r4, 0x1
/* 814C4A00 | 48 00 14 81 */	bl VFiPFFAT16_WriteFATEntry
/* 814C4A04 | 48 00 00 30 */	b .L_814C4A34
.L_814C4A08:
/* 814C4A08 | 3C 60 10 00 */	lis r3, 0x1000
/* 814C4A0C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C4A10 | 7C 05 00 40 */	cmplw r5, r0
/* 814C4A14 | 40 81 00 0C */	ble .L_814C4A20
/* 814C4A18 | 38 60 00 10 */	li r3, 0x10
/* 814C4A1C | 48 00 00 18 */	b .L_814C4A34
.L_814C4A20:
/* 814C4A20 | 7F E3 FB 78 */	mr r3, r31
/* 814C4A24 | 38 80 00 01 */	li r4, 0x1
/* 814C4A28 | 48 00 1A 05 */	bl VFiPFFAT32_WriteFATEntry
/* 814C4A2C | 48 00 00 08 */	b .L_814C4A34
.L_814C4A30:
/* 814C4A30 | 38 60 00 0F */	li r3, 0xf
.L_814C4A34:
/* 814C4A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4A38 | 41 82 00 08 */	beq .L_814C4A40
/* 814C4A3C | 48 00 00 1C */	b .L_814C4A58
.L_814C4A40:
/* 814C4A40 | 7F E3 FB 78 */	mr r3, r31
/* 814C4A44 | 4B FF 78 C9 */	bl VFiPFCACHE_FlushFATCache
/* 814C4A48 | 7C 03 00 D0 */	neg r0, r3
/* 814C4A4C | 7C 00 1B 78 */	or r0, r0, r3
/* 814C4A50 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C4A54 | 7C 63 00 38 */	and r3, r3, r0
.L_814C4A58:
/* 814C4A58 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C4A5C | 48 13 4A B1 */	bl _restgpr_27
/* 814C4A60 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C4A64 | 7C 08 03 A6 */	mtlr r0
/* 814C4A68 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C4A6C | 4E 80 00 20 */	blr
.endfn VFiPFFAT_InitFATRegion

# .text:0x2A14 | 0x814C4A70 | size: 0xE8
.fn VFiPFFAT_MakeRootDir, global
/* 814C4A70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C4A74 | 7C 08 02 A6 */	mflr r0
/* 814C4A78 | 3C A0 81 62 */	lis r5, fat_special_values@ha
/* 814C4A7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C4A80 | 38 A5 8D F0 */	addi r5, r5, fat_special_values@l
/* 814C4A84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814C4A88 | 7C 7F 1B 78 */	mr r31, r3
/* 814C4A8C | 80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 814C4A90 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814C4A94 | 1C 06 00 14 */	mulli r0, r6, 0x14
/* 814C4A98 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 814C4A9C | 7C A5 02 14 */	add r5, r5, r0
/* 814C4AA0 | 80 A5 00 08 */	lwz r5, 0x8(r5)
/* 814C4AA4 | 41 82 00 40 */	beq .L_814C4AE4
/* 814C4AA8 | 40 80 00 10 */	bge .L_814C4AB8
/* 814C4AAC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C4AB0 | 40 80 00 14 */	bge .L_814C4AC4
/* 814C4AB4 | 48 00 00 68 */	b .L_814C4B1C
.L_814C4AB8:
/* 814C4AB8 | 2C 06 00 03 */	cmpwi r6, 0x3
/* 814C4ABC | 40 80 00 60 */	bge .L_814C4B1C
/* 814C4AC0 | 48 00 00 3C */	b .L_814C4AFC
.L_814C4AC4:
/* 814C4AC4 | 28 05 0F FF */	cmplwi r5, 0xfff
/* 814C4AC8 | 40 81 00 0C */	ble .L_814C4AD4
/* 814C4ACC | 38 60 00 10 */	li r3, 0x10
/* 814C4AD0 | 48 00 00 50 */	b .L_814C4B20
.L_814C4AD4:
/* 814C4AD4 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814C4AD8 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814C4ADC | 48 00 0A 09 */	bl VFiPFFAT12_WriteFATEntry
/* 814C4AE0 | 48 00 00 40 */	b .L_814C4B20
.L_814C4AE4:
/* 814C4AE4 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 814C4AE8 | 40 81 00 0C */	ble .L_814C4AF4
/* 814C4AEC | 38 60 00 10 */	li r3, 0x10
/* 814C4AF0 | 48 00 00 30 */	b .L_814C4B20
.L_814C4AF4:
/* 814C4AF4 | 48 00 13 8D */	bl VFiPFFAT16_WriteFATEntry
/* 814C4AF8 | 48 00 00 28 */	b .L_814C4B20
.L_814C4AFC:
/* 814C4AFC | 3C C0 10 00 */	lis r6, 0x1000
/* 814C4B00 | 38 06 FF FF */	subi r0, r6, 0x1
/* 814C4B04 | 7C 05 00 40 */	cmplw r5, r0
/* 814C4B08 | 40 81 00 0C */	ble .L_814C4B14
/* 814C4B0C | 38 60 00 10 */	li r3, 0x10
/* 814C4B10 | 48 00 00 10 */	b .L_814C4B20
.L_814C4B14:
/* 814C4B14 | 48 00 19 19 */	bl VFiPFFAT32_WriteFATEntry
/* 814C4B18 | 48 00 00 08 */	b .L_814C4B20
.L_814C4B1C:
/* 814C4B1C | 38 60 00 0F */	li r3, 0xf
.L_814C4B20:
/* 814C4B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4B24 | 41 82 00 08 */	beq .L_814C4B2C
/* 814C4B28 | 48 00 00 1C */	b .L_814C4B44
.L_814C4B2C:
/* 814C4B2C | 7F E3 FB 78 */	mr r3, r31
/* 814C4B30 | 4B FF 77 DD */	bl VFiPFCACHE_FlushFATCache
/* 814C4B34 | 7C 03 00 D0 */	neg r0, r3
/* 814C4B38 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C4B3C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C4B40 | 7C 63 00 38 */	and r3, r3, r0
.L_814C4B44:
/* 814C4B44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C4B48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814C4B4C | 7C 08 03 A6 */	mtlr r0
/* 814C4B50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C4B54 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_MakeRootDir

# .text:0x2AFC | 0x814C4B58 | size: 0x5C
.fn VFiPFFAT_RefreshFSINFO, global
/* 814C4B58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C4B5C | 7C 08 02 A6 */	mflr r0
/* 814C4B60 | 38 A0 00 00 */	li r5, 0x0
/* 814C4B64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C4B68 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C4B6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C4B70 | 41 82 00 0C */	beq .L_814C4B7C
/* 814C4B74 | 38 60 00 0C */	li r3, 0xc
/* 814C4B78 | 48 00 00 2C */	b .L_814C4BA4
.L_814C4B7C:
/* 814C4B7C | A0 83 18 64 */	lhz r4, 0x1864(r3)
/* 814C4B80 | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 814C4B84 | 40 82 00 0C */	bne .L_814C4B90
/* 814C4B88 | 38 60 00 24 */	li r3, 0x24
/* 814C4B8C | 48 00 00 18 */	b .L_814C4BA4
.L_814C4B90:
/* 814C4B90 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814C4B94 | 41 82 00 0C */	beq .L_814C4BA0
/* 814C4B98 | 4B FF 18 D5 */	bl VFiPFDRV_StoreFreeCountToFSINFO
/* 814C4B9C | 7C 65 1B 78 */	mr r5, r3
.L_814C4BA0:
/* 814C4BA0 | 7C A3 2B 78 */	mr r3, r5
.L_814C4BA4:
/* 814C4BA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C4BA8 | 7C 08 03 A6 */	mtlr r0
/* 814C4BAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C4BB0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_RefreshFSINFO

# .text:0x2B58 | 0x814C4BB4 | size: 0x218
.fn VFiPFFATVFiPFFAT_RefreshFSINFO_TraceClustersChain, global
/* 814C4BB4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C4BB8 | 7C 08 02 A6 */	mflr r0
/* 814C4BBC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C4BC0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C4BC4 | 48 13 48 E9 */	bl _savegpr_22
/* 814C4BC8 | 38 00 00 00 */	li r0, 0x0
/* 814C4BCC | 7C 99 23 78 */	mr r25, r4
/* 814C4BD0 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C4BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4BD8 | 7C 78 1B 78 */	mr r24, r3
/* 814C4BDC | 7C DA 33 78 */	mr r26, r6
/* 814C4BE0 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C4BE4 | 7C FB 3B 78 */	mr r27, r7
/* 814C4BE8 | 7F 3E CB 78 */	mr r30, r25
/* 814C4BEC | 40 82 00 0C */	bne .L_814C4BF8
/* 814C4BF0 | 38 60 00 0A */	li r3, 0xa
/* 814C4BF4 | 48 00 01 C0 */	b .L_814C4DB4
.L_814C4BF8:
/* 814C4BF8 | 81 23 00 2C */	lwz r9, 0x2c(r3)
/* 814C4BFC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C4C00 | 40 82 00 0C */	bne .L_814C4C0C
/* 814C4C04 | 38 60 00 0A */	li r3, 0xa
/* 814C4C08 | 48 00 01 AC */	b .L_814C4DB4
.L_814C4C0C:
/* 814C4C0C | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 814C4C10 | 88 1F 18 62 */	lbz r0, 0x1862(r31)
/* 814C4C14 | 7C 00 07 74 */	extsb r0, r0
/* 814C4C18 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814C4C1C | 41 80 00 0C */	blt .L_814C4C28
/* 814C4C20 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814C4C24 | 40 81 00 0C */	ble .L_814C4C30
.L_814C4C28:
/* 814C4C28 | 38 60 00 23 */	li r3, 0x23
/* 814C4C2C | 48 00 01 88 */	b .L_814C4DB4
.L_814C4C30:
/* 814C4C30 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C4C34 | 40 82 00 0C */	bne .L_814C4C40
/* 814C4C38 | 38 60 00 0A */	li r3, 0xa
/* 814C4C3C | 48 00 01 78 */	b .L_814C4DB4
.L_814C4C40:
/* 814C4C40 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814C4C44 | 81 08 00 00 */	lwz r8, 0x0(r8)
/* 814C4C48 | 28 08 00 02 */	cmplwi r8, 0x2
/* 814C4C4C | 40 80 00 0C */	bge .L_814C4C58
/* 814C4C50 | 38 60 00 00 */	li r3, 0x0
/* 814C4C54 | 48 00 01 60 */	b .L_814C4DB4
.L_814C4C58:
/* 814C4C58 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C4C5C | 40 80 00 0C */	bge .L_814C4C68
/* 814C4C60 | 38 60 00 00 */	li r3, 0x0
/* 814C4C64 | 48 00 01 50 */	b .L_814C4DB4
.L_814C4C68:
/* 814C4C68 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C4C6C | 40 82 00 0C */	bne .L_814C4C78
/* 814C4C70 | 38 60 00 00 */	li r3, 0x0
/* 814C4C74 | 48 00 01 40 */	b .L_814C4DB4
.L_814C4C78:
/* 814C4C78 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C4C7C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C4C80 | 40 82 00 38 */	bne .L_814C4CB8
/* 814C4C84 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C4C88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C4C8C | 41 82 00 2C */	beq .L_814C4CB8
/* 814C4C90 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C4C94 | 3C 80 81 62 */	lis r4, fat_special_values@ha
/* 814C4C98 | 38 84 8D F0 */	addi r4, r4, fat_special_values@l
/* 814C4C9C | 38 60 00 00 */	li r3, 0x0
/* 814C4CA0 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C4CA4 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C4CA8 | 7C 84 02 14 */	add r4, r4, r0
/* 814C4CAC | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C4CB0 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C4CB4 | 48 00 01 00 */	b .L_814C4DB4
.L_814C4CB8:
/* 814C4CB8 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814C4CBC | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 814C4CC0 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C4CC4 | 7F 85 03 96 */	divwu r28, r5, r0
/* 814C4CC8 | 7C 1C 01 D6 */	mullw r0, r28, r0
/* 814C4CCC | 7C 00 28 51 */	subf. r0, r0, r5
/* 814C4CD0 | 41 82 00 08 */	beq .L_814C4CD8
/* 814C4CD4 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814C4CD8:
/* 814C4CD8 | 7C 08 20 40 */	cmplw r8, r4
/* 814C4CDC | 40 82 00 0C */	bne .L_814C4CE8
/* 814C4CE0 | 3B A0 00 01 */	li r29, 0x1
/* 814C4CE4 | 48 00 00 0C */	b .L_814C4CF0
.L_814C4CE8:
/* 814C4CE8 | 80 69 00 00 */	lwz r3, 0x0(r9)
/* 814C4CEC | 3B A3 00 01 */	addi r29, r3, 0x1
.L_814C4CF0:
/* 814C4CF0 | 38 60 FF FF */	li r3, -0x1
/* 814C4CF4 | 38 00 00 01 */	li r0, 0x1
/* 814C4CF8 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 814C4CFC | 7F E3 FB 78 */	mr r3, r31
/* 814C4D00 | 7F 25 CB 78 */	mr r5, r25
/* 814C4D04 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C4D08 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C4D0C | 4B FF D3 51 */	bl VFiPFFAT_ReadFATSector
/* 814C4D10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4D14 | 41 82 00 08 */	beq .L_814C4D1C
/* 814C4D18 | 48 00 00 9C */	b .L_814C4DB4
.L_814C4D1C:
/* 814C4D1C | 3E E0 81 62 */	lis r23, fat_special_values@ha
/* 814C4D20 | 3A C0 00 00 */	li r22, 0x0
/* 814C4D24 | 3A F7 8D F0 */	addi r23, r23, fat_special_values@l
/* 814C4D28 | 48 00 00 68 */	b .L_814C4D90
.L_814C4D2C:
/* 814C4D2C | 7F 03 C3 78 */	mr r3, r24
/* 814C4D30 | 7F 24 CB 78 */	mr r4, r25
/* 814C4D34 | 7F A5 EB 78 */	mr r5, r29
/* 814C4D38 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C4D3C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814C4D40 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C4D44 | 4B FF D9 B5 */	bl VFiPFFAT_ReadClusterPage
/* 814C4D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4D4C | 41 82 00 08 */	beq .L_814C4D54
/* 814C4D50 | 48 00 00 64 */	b .L_814C4DB4
.L_814C4D54:
/* 814C4D54 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814C4D58 | 7F 3E CB 78 */	mr r30, r25
/* 814C4D5C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814C4D60 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C4D64 | 7C 77 02 14 */	add r3, r23, r0
/* 814C4D68 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C4D6C | 7C 04 00 40 */	cmplw r4, r0
/* 814C4D70 | 40 82 00 14 */	bne .L_814C4D84
/* 814C4D74 | 38 1D FF FF */	subi r0, r29, 0x1
/* 814C4D78 | 93 38 00 08 */	stw r25, 0x8(r24)
/* 814C4D7C | 90 18 00 0C */	stw r0, 0xc(r24)
/* 814C4D80 | 48 00 00 18 */	b .L_814C4D98
.L_814C4D84:
/* 814C4D84 | 7C 99 23 78 */	mr r25, r4
/* 814C4D88 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814C4D8C | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814C4D90:
/* 814C4D90 | 7C 16 E0 40 */	cmplw r22, r28
/* 814C4D94 | 41 80 FF 98 */	blt .L_814C4D2C
.L_814C4D98:
/* 814C4D98 | 80 98 00 2C */	lwz r4, 0x2c(r24)
/* 814C4D9C | 38 1D FF FF */	subi r0, r29, 0x1
/* 814C4DA0 | 38 60 00 00 */	li r3, 0x0
/* 814C4DA4 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814C4DA8 | 93 DA 00 00 */	stw r30, 0x0(r26)
/* 814C4DAC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C4DB0 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814C4DB4:
/* 814C4DB4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C4DB8 | 48 13 47 41 */	bl _restgpr_22
/* 814C4DBC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C4DC0 | 7C 08 03 A6 */	mtlr r0
/* 814C4DC4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814C4DC8 | 4E 80 00 20 */	blr
.endfn VFiPFFATVFiPFFAT_RefreshFSINFO_TraceClustersChain

# .text:0x2D70 | 0x814C4DCC | size: 0xB0
.fn VFiPFFAT_WriteValueToSpecifiedCluster, global
/* 814C4DCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C4DD0 | 7C 08 02 A6 */	mflr r0
/* 814C4DD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C4DD8 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C4DDC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C4DE0 | 41 82 00 40 */	beq .L_814C4E20
/* 814C4DE4 | 40 80 00 10 */	bge .L_814C4DF4
/* 814C4DE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C4DEC | 40 80 00 14 */	bge .L_814C4E00
/* 814C4DF0 | 48 00 00 68 */	b .L_814C4E58
.L_814C4DF4:
/* 814C4DF4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C4DF8 | 40 80 00 60 */	bge .L_814C4E58
/* 814C4DFC | 48 00 00 3C */	b .L_814C4E38
.L_814C4E00:
/* 814C4E00 | 28 05 0F FF */	cmplwi r5, 0xfff
/* 814C4E04 | 40 81 00 0C */	ble .L_814C4E10
/* 814C4E08 | 38 60 00 10 */	li r3, 0x10
/* 814C4E0C | 48 00 00 50 */	b .L_814C4E5C
.L_814C4E10:
/* 814C4E10 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814C4E14 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814C4E18 | 48 00 06 CD */	bl VFiPFFAT12_WriteFATEntry
/* 814C4E1C | 48 00 00 40 */	b .L_814C4E5C
.L_814C4E20:
/* 814C4E20 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 814C4E24 | 40 81 00 0C */	ble .L_814C4E30
/* 814C4E28 | 38 60 00 10 */	li r3, 0x10
/* 814C4E2C | 48 00 00 30 */	b .L_814C4E5C
.L_814C4E30:
/* 814C4E30 | 48 00 10 51 */	bl VFiPFFAT16_WriteFATEntry
/* 814C4E34 | 48 00 00 28 */	b .L_814C4E5C
.L_814C4E38:
/* 814C4E38 | 3C C0 10 00 */	lis r6, 0x1000
/* 814C4E3C | 38 06 FF FF */	subi r0, r6, 0x1
/* 814C4E40 | 7C 05 00 40 */	cmplw r5, r0
/* 814C4E44 | 40 81 00 0C */	ble .L_814C4E50
/* 814C4E48 | 38 60 00 10 */	li r3, 0x10
/* 814C4E4C | 48 00 00 10 */	b .L_814C4E5C
.L_814C4E50:
/* 814C4E50 | 48 00 15 DD */	bl VFiPFFAT32_WriteFATEntry
/* 814C4E54 | 48 00 00 08 */	b .L_814C4E5C
.L_814C4E58:
/* 814C4E58 | 38 60 00 0F */	li r3, 0xf
.L_814C4E5C:
/* 814C4E5C | 7C 03 00 D0 */	neg r0, r3
/* 814C4E60 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C4E64 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C4E68 | 7C 63 00 38 */	and r3, r3, r0
/* 814C4E6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C4E70 | 7C 08 03 A6 */	mtlr r0
/* 814C4E74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C4E78 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_WriteValueToSpecifiedCluster

# .text:0x2E20 | 0x814C4E7C | size: 0x7C
.fn VFiPFFAT_ReadValueToSpecifiedCluster, global
/* 814C4E7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C4E80 | 7C 08 02 A6 */	mflr r0
/* 814C4E84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C4E88 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C4E8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814C4E90 | 41 82 00 2C */	beq .L_814C4EBC
/* 814C4E94 | 40 80 00 10 */	bge .L_814C4EA4
/* 814C4E98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C4E9C | 40 80 00 14 */	bge .L_814C4EB0
/* 814C4EA0 | 48 00 00 2C */	b .L_814C4ECC
.L_814C4EA4:
/* 814C4EA4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814C4EA8 | 40 80 00 24 */	bge .L_814C4ECC
/* 814C4EAC | 48 00 00 18 */	b .L_814C4EC4
.L_814C4EB0:
/* 814C4EB0 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814C4EB4 | 48 00 01 71 */	bl VFiPFFAT12_ReadFATEntry
/* 814C4EB8 | 48 00 00 20 */	b .L_814C4ED8
.L_814C4EBC:
/* 814C4EBC | 48 00 0C A1 */	bl VFiPFFAT16_ReadFATEntry
/* 814C4EC0 | 48 00 00 18 */	b .L_814C4ED8
.L_814C4EC4:
/* 814C4EC4 | 48 00 12 25 */	bl VFiPFFAT32_ReadFATEntry
/* 814C4EC8 | 48 00 00 10 */	b .L_814C4ED8
.L_814C4ECC:
/* 814C4ECC | 38 00 FF FF */	li r0, -0x1
/* 814C4ED0 | 38 60 00 0F */	li r3, 0xf
/* 814C4ED4 | 90 05 00 00 */	stw r0, 0x0(r5)
.L_814C4ED8:
/* 814C4ED8 | 7C 03 00 D0 */	neg r0, r3
/* 814C4EDC | 7C 00 1B 78 */	or r0, r0, r3
/* 814C4EE0 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C4EE4 | 7C 63 00 38 */	and r3, r3, r0
/* 814C4EE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C4EEC | 7C 08 03 A6 */	mtlr r0
/* 814C4EF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C4EF4 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_ReadValueToSpecifiedCluster

# .text:0x2E9C | 0x814C4EF8 | size: 0x10
.fn VFiPFFAT_InitHint, global
/* 814C4EF8 | 38 00 00 00 */	li r0, 0x0
/* 814C4EFC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814C4F00 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814C4F04 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_InitHint

# .text:0x2EAC | 0x814C4F08 | size: 0x8
.fn VFiPFFAT_SetHint, global
/* 814C4F08 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 814C4F0C | 4E 80 00 20 */	blr
.endfn VFiPFFAT_SetHint

# .text:0x2EB4 | 0x814C4F10 | size: 0x5C
.fn VFiPFFAT_ResetFFD, global
/* 814C4F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4F14 | 40 82 00 0C */	bne .L_814C4F20
/* 814C4F18 | 38 60 00 0A */	li r3, 0xa
/* 814C4F1C | 4E 80 00 20 */	blr
.L_814C4F20:
/* 814C4F20 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C4F24 | 40 82 00 0C */	bne .L_814C4F30
/* 814C4F28 | 38 60 00 0A */	li r3, 0xa
/* 814C4F2C | 4E 80 00 20 */	blr
.L_814C4F30:
/* 814C4F30 | 80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 814C4F34 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814C4F38 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C4F3C | 41 82 00 10 */	beq .L_814C4F4C
/* 814C4F40 | 38 00 00 00 */	li r0, 0x0
/* 814C4F44 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C4F48 | 90 05 00 04 */	stw r0, 0x4(r5)
.L_814C4F4C:
/* 814C4F4C | 38 00 00 00 */	li r0, 0x0
/* 814C4F50 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814C4F54 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814C4F58 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814C4F5C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814C4F60 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814C4F64 | 38 60 00 00 */	li r3, 0x0
/* 814C4F68 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_ResetFFD

# .text:0x2F10 | 0x814C4F6C | size: 0x68
.fn VFiPFFAT_InitFFD, global
/* 814C4F6C | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814C4F70 | 40 86 00 0C */	bne cr1, .L_814C4F7C
/* 814C4F74 | 38 60 00 0A */	li r3, 0xa
/* 814C4F78 | 4E 80 00 20 */	blr
.L_814C4F7C:
/* 814C4F7C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C4F80 | 40 82 00 0C */	bne .L_814C4F8C
/* 814C4F84 | 38 60 00 0A */	li r3, 0xa
/* 814C4F88 | 4E 80 00 20 */	blr
.L_814C4F8C:
/* 814C4F8C | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 814C4F90 | 90 A3 00 30 */	stw r5, 0x30(r3)
/* 814C4F94 | 41 86 00 38 */	beq cr1, .L_814C4FCC
/* 814C4F98 | 41 82 00 34 */	beq .L_814C4FCC
/* 814C4F9C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C4FA0 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 814C4FA4 | 41 82 00 10 */	beq .L_814C4FB4
/* 814C4FA8 | 38 00 00 00 */	li r0, 0x0
/* 814C4FAC | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814C4FB0 | 90 04 00 04 */	stw r0, 0x4(r4)
.L_814C4FB4:
/* 814C4FB4 | 38 00 00 00 */	li r0, 0x0
/* 814C4FB8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814C4FBC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814C4FC0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814C4FC4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814C4FC8 | 90 03 00 18 */	stw r0, 0x18(r3)
.L_814C4FCC:
/* 814C4FCC | 38 60 00 00 */	li r3, 0x0
/* 814C4FD0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_InitFFD

# .text:0x2F78 | 0x814C4FD4 | size: 0x20
.fn VFiPFFAT_FinalizeFFD, global
/* 814C4FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C4FD8 | 40 82 00 0C */	bne .L_814C4FE4
/* 814C4FDC | 38 60 00 0A */	li r3, 0xa
/* 814C4FE0 | 4E 80 00 20 */	blr
.L_814C4FE4:
/* 814C4FE4 | 38 00 00 00 */	li r0, 0x0
/* 814C4FE8 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814C4FEC | 38 60 00 00 */	li r3, 0x0
/* 814C4FF0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_FinalizeFFD

# .text:0x2F98 | 0x814C4FF4 | size: 0x14
.fn VFiPFFAT_SetLastAccess, global
/* 814C4FF4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814C4FF8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814C4FFC | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814C5000 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814C5004 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_SetLastAccess

# .text:0x2FAC | 0x814C5008 | size: 0x1C
.fn VFiPFFAT_GetValueOfEOC2, global
/* 814C5008 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C500C | 3C 60 81 62 */	lis r3, fat_special_values@ha
/* 814C5010 | 38 63 8D F0 */	addi r3, r3, fat_special_values@l
/* 814C5014 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 814C5018 | 7C 63 02 14 */	add r3, r3, r0
/* 814C501C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C5020 | 4E 80 00 20 */	blr
.endfn VFiPFFAT_GetValueOfEOC2

# 0x81618DF0..0x81618E30 | size: 0x40
.rodata
.balign 8

# .rodata:0x0 | 0x81618DF0 | size: 0x3C
.obj fat_special_values, local
	.4byte 0x00000FF7
	.4byte 0x00000FF8
	.4byte 0x00000FFF
	.4byte 0x00000F00
	.4byte 0x00000FFF
	.4byte 0x0000FFF7
	.4byte 0x0000FFF8
	.4byte 0x0000FFFF
	.4byte 0x0000FF00
	.4byte 0x0000FFFF
	.4byte 0x0FFFFFF7
	.4byte 0x0FFFFFF8
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFFF
.endobj fat_special_values

# .rodata:0x3C | 0x81618E2C | size: 0x4
.obj gap_07_81618E2C_rodata, global
.hidden gap_07_81618E2C_rodata
	.4byte 0x00000000
.endobj gap_07_81618E2C_rodata
