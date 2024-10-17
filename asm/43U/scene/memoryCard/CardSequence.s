.include "macros.inc"
.file "CardSequence.cpp"

# 0x813D2018..0x813D4694 | size: 0x267C
.text
.balign 4

# .text:0x0 | 0x813D2018 | size: 0xC
# ipl::memorycard::getCardDirState()
.fn getCardDirState__Q23ipl10memorycardFv, global
/* 813D2018 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D201C | 38 63 00 28 */	addi r3, r3, 0x28
/* 813D2020 | 4E 80 00 20 */	blr
.endfn getCardDirState__Q23ipl10memorycardFv

# .text:0xC | 0x813D2024 | size: 0x8
# ipl::memorycard::getCardSlotState()
.fn getCardSlotState__Q23ipl10memorycardFv, global
/* 813D2024 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2028 | 4E 80 00 20 */	blr
.endfn getCardSlotState__Q23ipl10memorycardFv

# .text:0x14 | 0x813D202C | size: 0x10
# ipl::memorycard::getCardLastSrcSlot()
.fn getCardLastSrcSlot__Q23ipl10memorycardFv, global
/* 813D202C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2030 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2034 | 88 63 DB DC */	lbz r3, -0x2424(r3)
/* 813D2038 | 4E 80 00 20 */	blr
.endfn getCardLastSrcSlot__Q23ipl10memorycardFv

# .text:0x24 | 0x813D203C | size: 0x10
# ipl::memorycard::getCardLastSendCmd()
.fn getCardLastSendCmd__Q23ipl10memorycardFv, global
/* 813D203C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2040 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2044 | 80 63 DB C4 */	lwz r3, -0x243c(r3)
/* 813D2048 | 4E 80 00 20 */	blr
.endfn getCardLastSendCmd__Q23ipl10memorycardFv

# .text:0x34 | 0x813D204C | size: 0x10
# ipl::memorycard::getCardLastCMDFCmdResult()
.fn getCardLastCMDFCmdResult__Q23ipl10memorycardFv, global
/* 813D204C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2050 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2054 | 80 63 DB CC */	lwz r3, -0x2434(r3)
/* 813D2058 | 4E 80 00 20 */	blr
.endfn getCardLastCMDFCmdResult__Q23ipl10memorycardFv

# .text:0x44 | 0x813D205C | size: 0x44
.fn CardSequence_813D205C, global
/* 813D205C | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2060 | 54 60 80 1E */	slwi r0, r3, 16
/* 813D2064 | 38 E0 00 09 */	li r7, 0x9
/* 813D2068 | 38 C0 FF EB */	li r6, -0x15
/* 813D206C | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D2070 | 38 A0 00 00 */	li r5, 0x0
/* 813D2074 | 98 64 DB DC */	stb r3, -0x2424(r4)
/* 813D2078 | 60 04 00 09 */	ori r4, r0, 0x9
/* 813D207C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2080 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2084 | 90 E3 DB C4 */	stw r7, -0x243c(r3)
/* 813D2088 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D208C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2090 | 90 C3 DB C8 */	stw r6, -0x2438(r3)
/* 813D2094 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2098 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D209C | 48 15 EF E4 */	b OSSendMessage
.endfn CardSequence_813D205C

# .text:0x88 | 0x813D20A0 | size: 0x50
# ipl::memorycard::sendCardFormatCmd(unsigned char)
.fn sendCardFormatCmd__Q23ipl10memorycardFUc, global
/* 813D20A0 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D20A4 | 54 60 80 1E */	slwi r0, r3, 16
/* 813D20A8 | 38 E0 00 01 */	li r7, 0x1
/* 813D20AC | 38 C0 FF EB */	li r6, -0x15
/* 813D20B0 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D20B4 | 38 A0 00 00 */	li r5, 0x0
/* 813D20B8 | 98 64 DB DC */	stb r3, -0x2424(r4)
/* 813D20BC | 60 04 00 01 */	ori r4, r0, 0x1
/* 813D20C0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D20C4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D20C8 | 90 E3 DB C4 */	stw r7, -0x243c(r3)
/* 813D20CC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D20D0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D20D4 | 90 C3 DB C8 */	stw r6, -0x2438(r3)
/* 813D20D8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D20DC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D20E0 | 90 C3 DB CC */	stw r6, -0x2434(r3)
/* 813D20E4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D20E8 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D20EC | 48 15 EF 94 */	b OSSendMessage
.endfn sendCardFormatCmd__Q23ipl10memorycardFUc

# .text:0xD8 | 0x813D20F0 | size: 0x54
# ipl::memorycard::sendCardCopyCmd(unsigned char, short)
.fn sendCardCopyCmd__Q23ipl10memorycardFUcs, global
/* 813D20F0 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D20F4 | 54 60 83 DE */	clrlslwi r0, r3, 31, 16
/* 813D20F8 | 50 80 C0 0E */	rlwimi r0, r4, 24, 0, 7
/* 813D20FC | 38 E0 00 02 */	li r7, 0x2
/* 813D2100 | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D2104 | 38 C0 FF EB */	li r6, -0x15
/* 813D2108 | 98 65 DB DC */	stb r3, -0x2424(r5)
/* 813D210C | 38 A0 00 00 */	li r5, 0x0
/* 813D2110 | 60 04 00 02 */	ori r4, r0, 0x2
/* 813D2114 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2118 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D211C | 90 E3 DB C4 */	stw r7, -0x243c(r3)
/* 813D2120 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2124 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2128 | 90 C3 DB C8 */	stw r6, -0x2438(r3)
/* 813D212C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2130 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2134 | 90 C3 DB CC */	stw r6, -0x2434(r3)
/* 813D2138 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D213C | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D2140 | 48 15 EF 40 */	b OSSendMessage
.endfn sendCardCopyCmd__Q23ipl10memorycardFUcs

# .text:0x12C | 0x813D2144 | size: 0x54
# ipl::memorycard::sendCardMoveCmd(unsigned char, short)
.fn sendCardMoveCmd__Q23ipl10memorycardFUcs, global
/* 813D2144 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2148 | 54 60 83 DE */	clrlslwi r0, r3, 31, 16
/* 813D214C | 50 80 C0 0E */	rlwimi r0, r4, 24, 0, 7
/* 813D2150 | 38 E0 00 03 */	li r7, 0x3
/* 813D2154 | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D2158 | 38 C0 FF EB */	li r6, -0x15
/* 813D215C | 98 65 DB DC */	stb r3, -0x2424(r5)
/* 813D2160 | 38 A0 00 00 */	li r5, 0x0
/* 813D2164 | 60 04 00 03 */	ori r4, r0, 0x3
/* 813D2168 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D216C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2170 | 90 E3 DB C4 */	stw r7, -0x243c(r3)
/* 813D2174 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2178 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D217C | 90 C3 DB C8 */	stw r6, -0x2438(r3)
/* 813D2180 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2184 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2188 | 90 C3 DB CC */	stw r6, -0x2434(r3)
/* 813D218C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2190 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D2194 | 48 15 EE EC */	b OSSendMessage
.endfn sendCardMoveCmd__Q23ipl10memorycardFUcs

# .text:0x180 | 0x813D2198 | size: 0x54
# ipl::memorycard::sendCardDeleteCmd(unsigned char, short)
.fn sendCardDeleteCmd__Q23ipl10memorycardFUcs, global
/* 813D2198 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D219C | 54 60 83 DE */	clrlslwi r0, r3, 31, 16
/* 813D21A0 | 50 80 C0 0E */	rlwimi r0, r4, 24, 0, 7
/* 813D21A4 | 38 E0 00 04 */	li r7, 0x4
/* 813D21A8 | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D21AC | 38 C0 FF EB */	li r6, -0x15
/* 813D21B0 | 98 65 DB DC */	stb r3, -0x2424(r5)
/* 813D21B4 | 38 A0 00 00 */	li r5, 0x0
/* 813D21B8 | 60 04 00 04 */	ori r4, r0, 0x4
/* 813D21BC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D21C0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D21C4 | 90 E3 DB C4 */	stw r7, -0x243c(r3)
/* 813D21C8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D21CC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D21D0 | 90 C3 DB C8 */	stw r6, -0x2438(r3)
/* 813D21D4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D21D8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D21DC | 90 C3 DB CC */	stw r6, -0x2434(r3)
/* 813D21E0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D21E4 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D21E8 | 48 15 EE 98 */	b OSSendMessage
.endfn sendCardDeleteCmd__Q23ipl10memorycardFUcs

# .text:0x1D4 | 0x813D21EC | size: 0x40
# ipl::memorycard::sendCardThreadStopCmd()
.fn sendCardThreadStopCmd__Q23ipl10memorycardFv, global
/* 813D21EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D21F0 | 7C 08 02 A6 */	mflr r0
/* 813D21F4 | 38 60 00 00 */	li r3, 0x0
/* 813D21F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D21FC | 4B FF FE 61 */	bl CardSequence_813D205C
/* 813D2200 | 38 60 00 01 */	li r3, 0x1
/* 813D2204 | 4B FF FE 59 */	bl CardSequence_813D205C
/* 813D2208 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D220C | 38 80 00 0B */	li r4, 0xb
/* 813D2210 | 38 A0 00 00 */	li r5, 0x0
/* 813D2214 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D2218 | 48 15 EE 69 */	bl OSSendMessage
/* 813D221C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D2220 | 7C 08 03 A6 */	mtlr r0
/* 813D2224 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D2228 | 4E 80 00 20 */	blr
.endfn sendCardThreadStopCmd__Q23ipl10memorycardFv

# .text:0x214 | 0x813D222C | size: 0x110
.fn CardSequence_813D222C, global
/* 813D222C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D2230 | 7C 08 02 A6 */	mflr r0
/* 813D2234 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D2238 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D223C | 48 22 72 8D */	bl _savegpr_29
/* 813D2240 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2244 | 7C 7D 1B 78 */	mr r29, r3
/* 813D2248 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 813D224C | 88 03 DB DD */	lbz r0, -0x2423(r3)
/* 813D2250 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D2254 | 40 82 00 D0 */	bne .L_813D2324
/* 813D2258 | 7F A3 EB 78 */	mr r3, r29
/* 813D225C | 48 18 F3 A5 */	bl fn_81561600
/* 813D2260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2264 | 41 82 00 80 */	beq .L_813D22E4
/* 813D2268 | 1F DD 00 14 */	mulli r30, r29, 0x14
/* 813D226C | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2270 | 7C 85 F2 14 */	add r4, r5, r30
/* 813D2274 | A8 04 00 02 */	lha r0, 0x2(r4)
/* 813D2278 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D227C | 40 80 00 68 */	bge .L_813D22E4
/* 813D2280 | 3C 65 00 01 */	addis r3, r5, 0x1
/* 813D2284 | 3B E0 00 00 */	li r31, 0x0
/* 813D2288 | 9B A3 DB DC */	stb r29, -0x2424(r3)
/* 813D228C | 38 00 FF EB */	li r0, -0x15
/* 813D2290 | 57 A4 82 1E */	clrlslwi r4, r29, 24, 16
/* 813D2294 | 38 A0 00 00 */	li r5, 0x0
/* 813D2298 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D229C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D22A0 | 93 E3 DB C4 */	stw r31, -0x243c(r3)
/* 813D22A4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D22A8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D22AC | 90 03 DB C8 */	stw r0, -0x2438(r3)
/* 813D22B0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D22B4 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D22B8 | 48 15 ED C9 */	bl OSSendMessage
/* 813D22BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D22C0 | 41 82 00 64 */	beq .L_813D2324
/* 813D22C4 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D22C8 | 38 80 00 03 */	li r4, 0x3
/* 813D22CC | 7C 60 F2 14 */	add r3, r0, r30
/* 813D22D0 | B0 83 00 02 */	sth r4, 0x2(r3)
/* 813D22D4 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D22D8 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D22DC | 9B E3 00 01 */	stb r31, 0x1(r3)
/* 813D22E0 | 48 00 00 44 */	b .L_813D2324
.L_813D22E4:
/* 813D22E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D22E8 | 40 82 00 3C */	bne .L_813D2324
/* 813D22EC | 1F FD 00 14 */	mulli r31, r29, 0x14
/* 813D22F0 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D22F4 | 7C 60 FA 14 */	add r3, r0, r31
/* 813D22F8 | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813D22FC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D2300 | 40 81 00 24 */	ble .L_813D2324
/* 813D2304 | 7F A3 EB 78 */	mr r3, r29
/* 813D2308 | 4B FF FD 55 */	bl CardSequence_813D205C
/* 813D230C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2310 | 41 82 00 14 */	beq .L_813D2324
/* 813D2314 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2318 | 38 80 00 00 */	li r4, 0x0
/* 813D231C | 7C 60 FA 14 */	add r3, r0, r31
/* 813D2320 | 98 83 00 01 */	stb r4, 0x1(r3)
.L_813D2324:
/* 813D2324 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D2328 | 48 22 71 ED */	bl _restgpr_29
/* 813D232C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D2330 | 7C 08 03 A6 */	mtlr r0
/* 813D2334 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D2338 | 4E 80 00 20 */	blr
.endfn CardSequence_813D222C

# .text:0x324 | 0x813D233C | size: 0x9C
.fn CardSequence_813D233C, global
/* 813D233C | 38 03 00 1B */	addi r0, r3, 0x1b
/* 813D2340 | 28 00 00 1B */	cmplwi r0, 0x1b
/* 813D2344 | 41 81 00 8C */	bgt .L_813D23D0
/* 813D2348 | 3C 60 81 65 */	lis r3, jumptable_81652F68@ha
/* 813D234C | 54 00 10 3A */	slwi r0, r0, 2
/* 813D2350 | 38 63 2F 68 */	addi r3, r3, jumptable_81652F68@l
/* 813D2354 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D2358 | 7C 69 03 A6 */	mtctr r3
/* 813D235C | 4E 80 04 20 */	bctr
.L_813D2360:
/* 813D2360 | 38 60 00 00 */	li r3, 0x0
/* 813D2364 | 4E 80 00 20 */	blr
.L_813D2368:
/* 813D2368 | 38 60 FF E4 */	li r3, -0x1c
/* 813D236C | 4E 80 00 20 */	blr
.L_813D2370:
/* 813D2370 | 38 60 FF E4 */	li r3, -0x1c
/* 813D2374 | 4E 80 00 20 */	blr
.L_813D2378:
/* 813D2378 | 38 60 FF E4 */	li r3, -0x1c
/* 813D237C | 4E 80 00 20 */	blr
.L_813D2380:
/* 813D2380 | 38 60 FF E4 */	li r3, -0x1c
/* 813D2384 | 4E 80 00 20 */	blr
.L_813D2388:
/* 813D2388 | 38 60 FF E4 */	li r3, -0x1c
/* 813D238C | 4E 80 00 20 */	blr
.L_813D2390:
/* 813D2390 | 38 60 FF E8 */	li r3, -0x18
/* 813D2394 | 4E 80 00 20 */	blr
.L_813D2398:
/* 813D2398 | 38 60 FF E7 */	li r3, -0x19
/* 813D239C | 4E 80 00 20 */	blr
.L_813D23A0:
/* 813D23A0 | 38 60 FF E7 */	li r3, -0x19
/* 813D23A4 | 4E 80 00 20 */	blr
.L_813D23A8:
/* 813D23A8 | 38 60 FF E4 */	li r3, -0x1c
/* 813D23AC | 4E 80 00 20 */	blr
.L_813D23B0:
/* 813D23B0 | 38 60 FF E4 */	li r3, -0x1c
/* 813D23B4 | 4E 80 00 20 */	blr
.L_813D23B8:
/* 813D23B8 | 38 60 FF E4 */	li r3, -0x1c
/* 813D23BC | 4E 80 00 20 */	blr
.L_813D23C0:
/* 813D23C0 | 38 60 FF E4 */	li r3, -0x1c
/* 813D23C4 | 4E 80 00 20 */	blr
.L_813D23C8:
/* 813D23C8 | 38 60 FF E5 */	li r3, -0x1b
/* 813D23CC | 4E 80 00 20 */	blr
.L_813D23D0:
/* 813D23D0 | 38 60 FF E4 */	li r3, -0x1c
/* 813D23D4 | 4E 80 00 20 */	blr
.endfn CardSequence_813D233C

# .text:0x3C0 | 0x813D23D8 | size: 0x288
# ipl::memorycard::probeCard()
.fn probeCard__Q23ipl10memorycardFv, global
/* 813D23D8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813D23DC | 7C 08 02 A6 */	mflr r0
/* 813D23E0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813D23E4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813D23E8 | 48 22 70 C5 */	bl _savegpr_22
/* 813D23EC | 3F 00 81 65 */	lis r24, jumptable_81652F68@ha
/* 813D23F0 | 38 60 00 00 */	li r3, 0x0
/* 813D23F4 | 3B 18 2F 68 */	addi r24, r24, jumptable_81652F68@l
/* 813D23F8 | 4B FF FE 35 */	bl CardSequence_813D222C
/* 813D23FC | 38 60 00 01 */	li r3, 0x1
/* 813D2400 | 4B FF FE 2D */	bl CardSequence_813D222C
/* 813D2404 | 3F 20 81 65 */	lis r25, jumptable_81653068@ha
/* 813D2408 | 3B E0 00 0A */	li r31, 0xa
/* 813D240C | 3B C0 00 00 */	li r30, 0x0
/* 813D2410 | 3B A0 00 08 */	li r29, 0x8
/* 813D2414 | 3B 80 00 06 */	li r28, 0x6
/* 813D2418 | 3B 60 00 05 */	li r27, 0x5
/* 813D241C | 3B 40 00 04 */	li r26, 0x4
/* 813D2420 | 3A C0 00 01 */	li r22, 0x1
/* 813D2424 | 48 00 02 08 */	b .L_813D262C
.L_813D2428:
/* 813D2428 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813D242C | 54 80 06 3E */	clrlwi r0, r4, 24
/* 813D2430 | 54 83 87 FE */	extrwi r3, r4, 1, 15
/* 813D2434 | 7C 00 07 74 */	extsb r0, r0
/* 813D2438 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813D243C | 7C 77 07 34 */	extsh r23, r3
/* 813D2440 | 41 82 00 0C */	beq .L_813D244C
/* 813D2444 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813D2448 | 40 82 00 18 */	bne .L_813D2460
.L_813D244C:
/* 813D244C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2450 | 54 80 C6 3E */	extrwi r0, r4, 8, 16
/* 813D2454 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2458 | 98 03 DB DD */	stb r0, -0x2423(r3)
/* 813D245C | 48 00 01 D0 */	b .L_813D262C
.L_813D2460:
/* 813D2460 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813D2464 | 40 82 00 20 */	bne .L_813D2484
/* 813D2468 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D246C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2470 | 92 C3 DB D0 */	stw r22, -0x2430(r3)
/* 813D2474 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2478 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D247C | 92 C3 DB D4 */	stw r22, -0x242c(r3)
/* 813D2480 | 48 00 01 AC */	b .L_813D262C
.L_813D2484:
/* 813D2484 | 54 80 C6 3E */	extrwi r0, r4, 8, 16
/* 813D2488 | 7C 03 07 74 */	extsb r3, r0
/* 813D248C | 38 03 00 1B */	addi r0, r3, 0x1b
/* 813D2490 | 28 00 00 1B */	cmplwi r0, 0x1b
/* 813D2494 | 41 81 00 D8 */	bgt .L_813D256C
/* 813D2498 | 38 79 30 68 */	addi r3, r25, jumptable_81653068@l
/* 813D249C | 54 00 10 3A */	slwi r0, r0, 2
/* 813D24A0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D24A4 | 7C 69 03 A6 */	mtctr r3
/* 813D24A8 | 4E 80 04 20 */	bctr
.L_813D24AC:
/* 813D24AC | 38 78 00 70 */	addi r3, r24, 0x70
/* 813D24B0 | 4C C6 31 82 */	crclr cr1eq
/* 813D24B4 | 48 15 C1 ED */	bl OSReport
/* 813D24B8 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D24BC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D24C0 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D24C4 | B3 43 00 02 */	sth r26, 0x2(r3)
/* 813D24C8 | 48 00 00 C0 */	b .L_813D2588
.L_813D24CC:
/* 813D24CC | 38 78 00 7F */	addi r3, r24, 0x7f
/* 813D24D0 | 4C C6 31 82 */	crclr cr1eq
/* 813D24D4 | 48 15 C1 CD */	bl OSReport
/* 813D24D8 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D24DC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D24E0 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D24E4 | B3 43 00 02 */	sth r26, 0x2(r3)
/* 813D24E8 | 48 00 00 A0 */	b .L_813D2588
.L_813D24EC:
/* 813D24EC | 38 78 00 99 */	addi r3, r24, 0x99
/* 813D24F0 | 4C C6 31 82 */	crclr cr1eq
/* 813D24F4 | 48 15 C1 AD */	bl OSReport
/* 813D24F8 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D24FC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2500 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D2504 | B3 63 00 02 */	sth r27, 0x2(r3)
/* 813D2508 | 48 00 00 80 */	b .L_813D2588
.L_813D250C:
/* 813D250C | 38 78 00 A7 */	addi r3, r24, 0xa7
/* 813D2510 | 4C C6 31 82 */	crclr cr1eq
/* 813D2514 | 48 15 C1 8D */	bl OSReport
/* 813D2518 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D251C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2520 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D2524 | B3 83 00 02 */	sth r28, 0x2(r3)
/* 813D2528 | 48 00 00 60 */	b .L_813D2588
.L_813D252C:
/* 813D252C | 38 78 00 B4 */	addi r3, r24, 0xb4
/* 813D2530 | 4C C6 31 82 */	crclr cr1eq
/* 813D2534 | 48 15 C1 6D */	bl OSReport
/* 813D2538 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D253C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2540 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D2544 | B3 A3 00 02 */	sth r29, 0x2(r3)
/* 813D2548 | 48 00 00 40 */	b .L_813D2588
.L_813D254C:
/* 813D254C | 38 78 00 C4 */	addi r3, r24, 0xc4
/* 813D2550 | 4C C6 31 82 */	crclr cr1eq
/* 813D2554 | 48 15 C1 4D */	bl OSReport
/* 813D2558 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D255C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2560 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D2564 | B3 C3 00 02 */	sth r30, 0x2(r3)
/* 813D2568 | 48 00 00 20 */	b .L_813D2588
.L_813D256C:
/* 813D256C | 38 78 00 D1 */	addi r3, r24, 0xd1
/* 813D2570 | 4C C6 31 82 */	crclr cr1eq
/* 813D2574 | 48 15 C1 2D */	bl OSReport
/* 813D2578 | 1E F7 00 14 */	mulli r23, r23, 0x14
/* 813D257C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2580 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D2584 | B3 E3 00 02 */	sth r31, 0x2(r3)
.L_813D2588:
/* 813D2588 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813D258C | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 813D2590 | 7C 03 07 74 */	extsb r3, r0
/* 813D2594 | 4B FF FD A9 */	bl CardSequence_813D233C
/* 813D2598 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D259C | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D25A0 | 90 64 DB C8 */	stw r3, -0x2438(r4)
/* 813D25A4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813D25A8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813D25AC | 7C 00 07 75 */	extsb. r0, r0
/* 813D25B0 | 41 82 00 4C */	beq .L_813D25FC
/* 813D25B4 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813D25B8 | 41 82 00 44 */	beq .L_813D25FC
/* 813D25BC | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 813D25C0 | 7C 03 07 74 */	extsb r3, r0
/* 813D25C4 | 4B FF FD 79 */	bl CardSequence_813D233C
/* 813D25C8 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D25CC | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D25D0 | 90 64 DB CC */	stw r3, -0x2434(r4)
/* 813D25D4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D25D8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813D25DC | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813D25E0 | 54 A0 87 FE */	extrwi r0, r5, 1, 15
/* 813D25E4 | 88 64 DB DC */	lbz r3, -0x2424(r4)
/* 813D25E8 | 7C 00 07 34 */	extsh r0, r0
/* 813D25EC | 7C 03 00 00 */	cmpw r3, r0
/* 813D25F0 | 41 82 00 0C */	beq .L_813D25FC
/* 813D25F4 | 54 A0 46 3E */	srwi r0, r5, 24
/* 813D25F8 | 98 04 DB DE */	stb r0, -0x2422(r4)
.L_813D25FC:
/* 813D25FC | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2600 | 38 78 00 DE */	addi r3, r24, 0xde
/* 813D2604 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D2608 | 80 84 DB C8 */	lwz r4, -0x2438(r4)
/* 813D260C | 4C C6 31 82 */	crclr cr1eq
/* 813D2610 | 48 15 C0 91 */	bl OSReport
/* 813D2614 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2618 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D261C | 9A C3 00 01 */	stb r22, 0x1(r3)
/* 813D2620 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2624 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2628 | 93 C3 DB D4 */	stw r30, -0x242c(r3)
.L_813D262C:
/* 813D262C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2630 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D2634 | 38 A0 00 00 */	li r5, 0x0
/* 813D2638 | 38 63 0C 20 */	addi r3, r3, 0xc20
/* 813D263C | 48 15 EB 0D */	bl OSReceiveMessage
/* 813D2640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2644 | 40 82 FD E4 */	bne .L_813D2428
/* 813D2648 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813D264C | 48 22 6E AD */	bl _restgpr_22
/* 813D2650 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813D2654 | 7C 08 03 A6 */	mtlr r0
/* 813D2658 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813D265C | 4E 80 00 20 */	blr
.endfn probeCard__Q23ipl10memorycardFv

# .text:0x648 | 0x813D2660 | size: 0x29C
# ipl::memorycard::initCardThread()
.fn initCardThread__Q23ipl10memorycardFv, global
/* 813D2660 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D2664 | 7C 08 02 A6 */	mflr r0
/* 813D2668 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D266C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D2670 | 48 22 6E 59 */	bl _savegpr_29
/* 813D2674 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2678 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D267C | 40 82 01 2C */	bne .L_813D27A8
/* 813D2680 | 4B F6 07 B5 */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813D2684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D2688 | 38 80 00 04 */	li r4, 0x4
/* 813D268C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813D2690 | 7D 89 03 A6 */	mtctr r12
/* 813D2694 | 4E 80 04 21 */	bctrl
/* 813D2698 | 7C 7F 1B 78 */	mr r31, r3
/* 813D269C | 4B F6 07 99 */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813D26A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D26A4 | 7F E4 FB 78 */	mr r4, r31
/* 813D26A8 | 38 A0 00 04 */	li r5, 0x4
/* 813D26AC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D26B0 | 7D 89 03 A6 */	mtctr r12
/* 813D26B4 | 4E 80 04 21 */	bctrl
/* 813D26B8 | 7C 7D 1B 78 */	mr r29, r3
/* 813D26BC | 7F E4 FB 78 */	mr r4, r31
/* 813D26C0 | 38 A0 00 00 */	li r5, 0x0
/* 813D26C4 | 48 18 7F B1 */	bl fn_8155A674
/* 813D26C8 | 3F C0 81 0B */	lis r30, sAllocator___Q23ipl10memorycard@ha
/* 813D26CC | 7C 64 1B 78 */	mr r4, r3
/* 813D26D0 | 38 7E 74 F8 */	addi r3, r30, sAllocator___Q23ipl10memorycard@l
/* 813D26D4 | 38 A0 00 20 */	li r5, 0x20
/* 813D26D8 | 48 18 8F B1 */	bl fn_8155B688
/* 813D26DC | 3B DE 74 F8 */	addi r30, r30, sAllocator___Q23ipl10memorycard@l
/* 813D26E0 | 3C 60 81 65 */	lis r3, lbl_816530D8@ha
/* 813D26E4 | 93 BE 00 0C */	stw r29, 0xc(r30)
/* 813D26E8 | 7F A4 EB 78 */	mr r4, r29
/* 813D26EC | 7F E5 FB 78 */	mr r5, r31
/* 813D26F0 | 38 63 30 D8 */	addi r3, r3, lbl_816530D8@l
/* 813D26F4 | 4C C6 31 82 */	crclr cr1eq
/* 813D26F8 | 48 15 BF A9 */	bl OSReport
/* 813D26FC | 3F E0 00 01 */	lis r31, 0x1
/* 813D2700 | 7F C3 F3 78 */	mr r3, r30
/* 813D2704 | 38 9F DB E0 */	subi r4, r31, 0x2420
/* 813D2708 | 48 18 8F 61 */	bl fn_8155B668
/* 813D270C | 90 6D AB 28 */	stw r3, lbl_81698B68@sda21(r0)
/* 813D2710 | 38 BF DB E0 */	subi r5, r31, 0x2420
/* 813D2714 | 38 80 00 00 */	li r4, 0x0
/* 813D2718 | 4B F5 DC 1D */	bl memset
/* 813D271C | 3C 80 00 59 */	lis r4, 0x59
/* 813D2720 | 7F C3 F3 78 */	mr r3, r30
/* 813D2724 | 38 84 4C 00 */	addi r4, r4, 0x4c00
/* 813D2728 | 48 18 8F 41 */	bl fn_8155B668
/* 813D272C | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2730 | 38 80 3F 80 */	li r4, 0x3f80
/* 813D2734 | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D2738 | 90 65 CF C4 */	stw r3, -0x303c(r5)
/* 813D273C | 7F C3 F3 78 */	mr r3, r30
/* 813D2740 | 48 18 8F 29 */	bl fn_8155B668
/* 813D2744 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2748 | 38 80 5A 00 */	li r4, 0x5a00
/* 813D274C | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D2750 | 90 65 D3 BC */	stw r3, -0x2c44(r5)
/* 813D2754 | 7F C3 F3 78 */	mr r3, r30
/* 813D2758 | 48 18 8F 11 */	bl fn_8155B668
/* 813D275C | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2760 | 3C 80 00 04 */	lis r4, 0x4
/* 813D2764 | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D2768 | 90 65 DB C0 */	stw r3, -0x2440(r5)
/* 813D276C | 7F C3 F3 78 */	mr r3, r30
/* 813D2770 | 48 18 8E F9 */	bl fn_8155B668
/* 813D2774 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2778 | 38 9F A0 00 */	subi r4, r31, 0x6000
/* 813D277C | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D2780 | 90 65 90 40 */	stw r3, -0x6fc0(r5)
/* 813D2784 | 7F C3 F3 78 */	mr r3, r30
/* 813D2788 | 48 18 8E E1 */	bl fn_8155B668
/* 813D278C | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2790 | 38 9F A0 00 */	subi r4, r31, 0x6000
/* 813D2794 | 90 65 0C 10 */	stw r3, 0xc10(r5)
/* 813D2798 | 7F C3 F3 78 */	mr r3, r30
/* 813D279C | 48 18 8E CD */	bl fn_8155B668
/* 813D27A0 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D27A4 | 90 64 0C 14 */	stw r3, 0xc14(r4)
.L_813D27A8:
/* 813D27A8 | 38 00 00 7F */	li r0, 0x7f
/* 813D27AC | 38 60 00 00 */	li r3, 0x0
/* 813D27B0 | 38 80 00 00 */	li r4, 0x0
/* 813D27B4 | 38 A0 00 00 */	li r5, 0x0
/* 813D27B8 | 7C 09 03 A6 */	mtctr r0
.L_813D27BC:
/* 813D27BC | 81 2D AB 28 */	lwz r9, lbl_81698B68@sda21(r0)
/* 813D27C0 | 3C C5 00 01 */	addis r6, r5, 0x1
/* 813D27C4 | 38 E6 CF C4 */	subi r7, r6, 0x303c
/* 813D27C8 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 813D27CC | 3D 09 00 01 */	addis r8, r9, 0x1
/* 813D27D0 | 38 06 D3 BC */	subi r0, r6, 0x2c44
/* 813D27D4 | 80 C8 CF C4 */	lwz r6, -0x303c(r8)
/* 813D27D8 | 7C C6 1A 14 */	add r6, r6, r3
/* 813D27DC | 38 63 5A 00 */	addi r3, r3, 0x5a00
/* 813D27E0 | 7C C9 39 2E */	stwx r6, r9, r7
/* 813D27E4 | 80 ED AB 28 */	lwz r7, lbl_81698B68@sda21(r0)
/* 813D27E8 | 3C C7 00 01 */	addis r6, r7, 0x1
/* 813D27EC | 80 C6 D3 BC */	lwz r6, -0x2c44(r6)
/* 813D27F0 | 7C C6 22 14 */	add r6, r6, r4
/* 813D27F4 | 38 84 00 40 */	addi r4, r4, 0x40
/* 813D27F8 | 7C C7 01 2E */	stwx r6, r7, r0
/* 813D27FC | 42 00 FF C0 */	bdnz .L_813D27BC
/* 813D2800 | 38 00 00 7F */	li r0, 0x7f
/* 813D2804 | 39 40 00 00 */	li r10, 0x0
/* 813D2808 | 38 60 00 00 */	li r3, 0x0
/* 813D280C | 7C 09 03 A6 */	mtctr r0
.L_813D2810:
/* 813D2810 | 81 2D AB 28 */	lwz r9, lbl_81698B68@sda21(r0)
/* 813D2814 | 38 0A 00 7F */	addi r0, r10, 0x7f
/* 813D2818 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 813D281C | 39 4A 00 01 */	addi r10, r10, 0x1
/* 813D2820 | 3C C9 00 01 */	addis r6, r9, 0x1
/* 813D2824 | 54 04 30 32 */	slwi r4, r0, 6
/* 813D2828 | 1C E0 5A 00 */	mulli r7, r0, 0x5a00
/* 813D282C | 81 06 CF C4 */	lwz r8, -0x303c(r6)
/* 813D2830 | 38 C5 D1 C0 */	subi r6, r5, 0x2e40
/* 813D2834 | 38 05 D5 B8 */	subi r0, r5, 0x2a48
/* 813D2838 | 7C A8 3A 14 */	add r5, r8, r7
/* 813D283C | 38 63 00 04 */	addi r3, r3, 0x4
/* 813D2840 | 7C A9 31 2E */	stwx r5, r9, r6
/* 813D2844 | 80 CD AB 28 */	lwz r6, lbl_81698B68@sda21(r0)
/* 813D2848 | 3C A6 00 01 */	addis r5, r6, 0x1
/* 813D284C | 80 A5 D3 BC */	lwz r5, -0x2c44(r5)
/* 813D2850 | 7C 85 22 14 */	add r4, r5, r4
/* 813D2854 | 7C 86 01 2E */	stwx r4, r6, r0
/* 813D2858 | 42 00 FF B8 */	bdnz .L_813D2810
/* 813D285C | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2860 | 38 A0 00 10 */	li r5, 0x10
/* 813D2864 | 38 64 0C 20 */	addi r3, r4, 0xc20
/* 813D2868 | 38 84 0C 60 */	addi r4, r4, 0xc60
/* 813D286C | 48 15 E7 B5 */	bl OSInitMessageQueue
/* 813D2870 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2874 | 38 A0 00 10 */	li r5, 0x10
/* 813D2878 | 38 64 0C 40 */	addi r3, r4, 0xc40
/* 813D287C | 38 84 0C A0 */	addi r4, r4, 0xca0
/* 813D2880 | 48 15 E7 A1 */	bl OSInitMessageQueue
/* 813D2884 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2888 | 3C 80 81 3D */	lis r4, CardSequence_813D2C8C@ha
/* 813D288C | 3C E0 00 01 */	lis r7, 0x1
/* 813D2890 | 38 A0 00 00 */	li r5, 0x0
/* 813D2894 | 3C C3 00 01 */	addis r6, r3, 0x1
/* 813D2898 | 38 63 0C E0 */	addi r3, r3, 0xce0
/* 813D289C | 38 84 2C 8C */	addi r4, r4, CardSequence_813D2C8C@l
/* 813D28A0 | 38 E7 80 00 */	addi r7, r7, -0x8000
/* 813D28A4 | 39 00 00 11 */	li r8, 0x11
/* 813D28A8 | 39 20 00 00 */	li r9, 0x0
/* 813D28AC | 38 C6 8F F8 */	subi r6, r6, 0x7008
/* 813D28B0 | 48 16 1C 99 */	bl OSCreateThread
/* 813D28B4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D28B8 | 38 63 0C E0 */	addi r3, r3, 0xce0
/* 813D28BC | 48 16 23 95 */	bl OSResumeThread
/* 813D28C0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D28C4 | 38 80 00 0A */	li r4, 0xa
/* 813D28C8 | 38 A0 00 00 */	li r5, 0x0
/* 813D28CC | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D28D0 | 48 15 E7 B1 */	bl OSSendMessage
/* 813D28D4 | 3C 60 81 65 */	lis r3, lbl_816530EC@ha
/* 813D28D8 | 38 63 30 EC */	addi r3, r3, lbl_816530EC@l
/* 813D28DC | 4C C6 31 82 */	crclr cr1eq
/* 813D28E0 | 48 15 BD C1 */	bl OSReport
/* 813D28E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D28E8 | 48 22 6C 2D */	bl _restgpr_29
/* 813D28EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D28F0 | 7C 08 03 A6 */	mtlr r0
/* 813D28F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D28F8 | 4E 80 00 20 */	blr
.endfn initCardThread__Q23ipl10memorycardFv

# .text:0x8E4 | 0x813D28FC | size: 0x148
# ipl::memorycard::shutdownCardThread()
.fn shutdownCardThread__Q23ipl10memorycardFv, global
/* 813D28FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D2900 | 7C 08 02 A6 */	mflr r0
/* 813D2904 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D2908 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D290C | 3B E0 00 01 */	li r31, 0x1
/* 813D2910 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2918 | 41 82 01 14 */	beq .L_813D2A2C
/* 813D291C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2920 | 3B E0 00 00 */	li r31, 0x0
/* 813D2924 | 88 03 DB DF */	lbz r0, -0x2421(r3)
/* 813D2928 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D292C | 40 82 00 18 */	bne .L_813D2944
/* 813D2930 | 4B FF F8 BD */	bl sendCardThreadStopCmd__Q23ipl10memorycardFv
/* 813D2934 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2938 | 38 00 00 01 */	li r0, 0x1
/* 813D293C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2940 | 98 03 DB DF */	stb r0, -0x2421(r3)
.L_813D2944:
/* 813D2944 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2948 | 38 63 0C E0 */	addi r3, r3, 0xce0
/* 813D294C | 48 16 16 35 */	bl OSIsThreadTerminated
/* 813D2950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2954 | 41 82 00 D8 */	beq .L_813D2A2C
/* 813D2958 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D295C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D2960 | 38 63 0C E0 */	addi r3, r3, 0xce0
/* 813D2964 | 48 16 21 0D */	bl OSJoinThread
/* 813D2968 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D296C | 3F E0 81 0B */	lis r31, sAllocator___Q23ipl10memorycard@ha
/* 813D2970 | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D2974 | 80 84 0C 14 */	lwz r4, 0xc14(r4)
/* 813D2978 | 48 18 8D 01 */	bl fn_8155B678
/* 813D297C | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2980 | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D2984 | 80 84 0C 10 */	lwz r4, 0xc10(r4)
/* 813D2988 | 48 18 8C F1 */	bl fn_8155B678
/* 813D298C | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2990 | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D2994 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D2998 | 80 84 90 40 */	lwz r4, -0x6fc0(r4)
/* 813D299C | 48 18 8C DD */	bl fn_8155B678
/* 813D29A0 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D29A4 | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D29A8 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D29AC | 80 84 DB C0 */	lwz r4, -0x2440(r4)
/* 813D29B0 | 48 18 8C C9 */	bl fn_8155B678
/* 813D29B4 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D29B8 | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D29BC | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D29C0 | 80 84 CF C4 */	lwz r4, -0x303c(r4)
/* 813D29C4 | 48 18 8C B5 */	bl fn_8155B678
/* 813D29C8 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D29CC | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D29D0 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D29D4 | 80 84 D3 BC */	lwz r4, -0x2c44(r4)
/* 813D29D8 | 48 18 8C A1 */	bl fn_8155B678
/* 813D29DC | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D29E0 | 38 7F 74 F8 */	addi r3, r31, sAllocator___Q23ipl10memorycard@l
/* 813D29E4 | 48 18 8C 95 */	bl fn_8155B678
/* 813D29E8 | 3B FF 74 F8 */	addi r31, r31, sAllocator___Q23ipl10memorycard@l
/* 813D29EC | 38 00 00 00 */	li r0, 0x0
/* 813D29F0 | 90 0D AB 28 */	stw r0, lbl_81698B68@sda21(r0)
/* 813D29F4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D29F8 | 48 18 7D 2D */	bl fn_8155A724
/* 813D29FC | 4B F6 04 39 */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813D2A00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D2A04 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813D2A08 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D2A0C | 7D 89 03 A6 */	mtctr r12
/* 813D2A10 | 4E 80 04 21 */	bctrl
/* 813D2A14 | 4B F6 04 85 */	bl destroyMem1AppHeap__Q23ipl6SystemFv
/* 813D2A18 | 3C 60 81 65 */	lis r3, lbl_81653109@ha
/* 813D2A1C | 38 63 31 09 */	addi r3, r3, lbl_81653109@l
/* 813D2A20 | 4C C6 31 82 */	crclr cr1eq
/* 813D2A24 | 48 15 BC 7D */	bl OSReport
/* 813D2A28 | 3B E0 00 01 */	li r31, 0x1
.L_813D2A2C:
/* 813D2A2C | 7F E3 FB 78 */	mr r3, r31
/* 813D2A30 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D2A34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D2A38 | 7C 08 03 A6 */	mtlr r0
/* 813D2A3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D2A40 | 4E 80 00 20 */	blr
.endfn shutdownCardThread__Q23ipl10memorycardFv

# .text:0xA2C | 0x813D2A44 | size: 0x10
# ipl::memorycard::getIconStateArray()
.fn getIconStateArray__Q23ipl10memorycardFv, global
/* 813D2A44 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2A48 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D2A4C | 38 63 90 44 */	subi r3, r3, 0x6fbc
/* 813D2A50 | 4E 80 00 20 */	blr
.endfn getIconStateArray__Q23ipl10memorycardFv

# .text:0xA3C | 0x813D2A54 | size: 0x20
# ipl::memorycard::getIconComment(unsigned char, short)
.fn getIconComment__Q23ipl10memorycardFUcs, global
/* 813D2A54 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D2A58 | 1C 63 01 FC */	mulli r3, r3, 0x1fc
/* 813D2A5C | 54 80 10 3A */	slwi r0, r4, 2
/* 813D2A60 | 3C 85 00 01 */	addis r4, r5, 0x1
/* 813D2A64 | 7C 64 1A 14 */	add r3, r4, r3
/* 813D2A68 | 7C 63 02 14 */	add r3, r3, r0
/* 813D2A6C | 80 63 D3 BC */	lwz r3, -0x2c44(r3)
/* 813D2A70 | 4E 80 00 20 */	blr
.endfn getIconComment__Q23ipl10memorycardFUcs

# .text:0xA5C | 0x813D2A74 | size: 0xCC
.fn CardSequence_813D2A74, global
/* 813D2A74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D2A78 | 7C 08 02 A6 */	mflr r0
/* 813D2A7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D2A80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D2A84 | 7C 9F 23 78 */	mr r31, r4
/* 813D2A88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D2A8C | 7C 7E 1B 78 */	mr r30, r3
/* 813D2A90 | 48 15 DD F5 */	bl OSDisableInterrupts
/* 813D2A94 | 1D 1E 05 F4 */	mulli r8, r30, 0x5f4
/* 813D2A98 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2A9C | 38 C0 00 00 */	li r6, 0x0
/* 813D2AA0 | 38 A0 00 01 */	li r5, 0x1
/* 813D2AA4 | 1C FF 00 0C */	mulli r7, r31, 0xc
/* 813D2AA8 | 57 E9 30 32 */	slwi r9, r31, 6
/* 813D2AAC | 7C 00 42 14 */	add r0, r0, r8
/* 813D2AB0 | 7C 80 3A 14 */	add r4, r0, r7
/* 813D2AB4 | B0 C4 00 28 */	sth r6, 0x28(r4)
/* 813D2AB8 | 1D 5E 1F C0 */	mulli r10, r30, 0x1fc0
/* 813D2ABC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2AC0 | 7C 00 42 14 */	add r0, r0, r8
/* 813D2AC4 | 7C 80 3A 14 */	add r4, r0, r7
/* 813D2AC8 | B0 C4 00 2A */	sth r6, 0x2a(r4)
/* 813D2ACC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2AD0 | 7C 00 42 14 */	add r0, r0, r8
/* 813D2AD4 | 7C 80 3A 14 */	add r4, r0, r7
/* 813D2AD8 | 98 A4 00 2C */	stb r5, 0x2c(r4)
/* 813D2ADC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2AE0 | 7C 00 42 14 */	add r0, r0, r8
/* 813D2AE4 | 7C 80 3A 14 */	add r4, r0, r7
/* 813D2AE8 | 98 A4 00 2D */	stb r5, 0x2d(r4)
/* 813D2AEC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2AF0 | 7C 00 42 14 */	add r0, r0, r8
/* 813D2AF4 | 7C 80 3A 14 */	add r4, r0, r7
/* 813D2AF8 | B0 C4 00 2E */	sth r6, 0x2e(r4)
/* 813D2AFC | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2B00 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D2B04 | 7C 00 52 14 */	add r0, r0, r10
/* 813D2B08 | 7C 80 4A 14 */	add r4, r0, r9
/* 813D2B0C | 98 C4 90 45 */	stb r6, -0x6fbb(r4)
/* 813D2B10 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2B14 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D2B18 | 7C 00 52 14 */	add r0, r0, r10
/* 813D2B1C | 7C 80 4A 14 */	add r4, r0, r9
/* 813D2B20 | 98 C4 90 44 */	stb r6, -0x6fbc(r4)
/* 813D2B24 | 48 15 DD 89 */	bl OSRestoreInterrupts
/* 813D2B28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D2B2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D2B30 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D2B34 | 7C 08 03 A6 */	mtlr r0
/* 813D2B38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D2B3C | 4E 80 00 20 */	blr
.endfn CardSequence_813D2A74

# .text:0xB28 | 0x813D2B40 | size: 0x14C
.fn CardSequence_813D2B40, global
/* 813D2B40 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D2B44 | 7C 08 02 A6 */	mflr r0
/* 813D2B48 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D2B4C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D2B50 | 48 22 69 79 */	bl _savegpr_29
/* 813D2B54 | 3F E0 81 65 */	lis r31, jumptable_81652F68@ha
/* 813D2B58 | 7C 7D 1B 78 */	mr r29, r3
/* 813D2B5C | 3B FF 2F 68 */	addi r31, r31, jumptable_81652F68@l
/* 813D2B60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D2B64 | 48 18 BF FD */	bl fn_8155EB60
/* 813D2B68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2B6C | 40 80 00 1C */	bge .L_813D2B88
/* 813D2B70 | A0 C1 00 08 */	lhz r6, 0x8(r1)
/* 813D2B74 | 7C 65 1B 78 */	mr r5, r3
/* 813D2B78 | 7F A4 EB 78 */	mr r4, r29
/* 813D2B7C | 38 7F 01 AF */	addi r3, r31, 0x1af
/* 813D2B80 | 4C C6 31 82 */	crclr cr1eq
/* 813D2B84 | 48 15 BB 1D */	bl OSReport
.L_813D2B88:
/* 813D2B88 | 7F A3 EB 78 */	mr r3, r29
/* 813D2B8C | 38 81 00 14 */	addi r4, r1, 0x14
/* 813D2B90 | 48 18 C0 55 */	bl fn_8155EBE4
/* 813D2B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2B98 | 40 80 00 18 */	bge .L_813D2BB0
/* 813D2B9C | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 813D2BA0 | 7C 64 1B 78 */	mr r4, r3
/* 813D2BA4 | 38 7F 01 CD */	addi r3, r31, 0x1cd
/* 813D2BA8 | 4C C6 31 82 */	crclr cr1eq
/* 813D2BAC | 48 15 BA F5 */	bl OSReport
.L_813D2BB0:
/* 813D2BB0 | 7F A3 EB 78 */	mr r3, r29
/* 813D2BB4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813D2BB8 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813D2BBC | 48 18 BE 55 */	bl fn_8155EA10
/* 813D2BC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2BC4 | 40 80 00 18 */	bge .L_813D2BDC
/* 813D2BC8 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813D2BCC | 7C 64 1B 78 */	mr r4, r3
/* 813D2BD0 | 38 7F 01 E7 */	addi r3, r31, 0x1e7
/* 813D2BD4 | 4C C6 31 82 */	crclr cr1eq
/* 813D2BD8 | 48 15 BA C9 */	bl OSReport
.L_813D2BDC:
/* 813D2BDC | 7F A3 EB 78 */	mr r3, r29
/* 813D2BE0 | 48 18 BE 01 */	bl fn_8155E9E0
/* 813D2BE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2BE8 | 41 80 00 8C */	blt .L_813D2C74
/* 813D2BEC | 48 15 DC 99 */	bl OSDisableInterrupts
/* 813D2BF0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 813D2BF4 | 1F DD 00 14 */	mulli r30, r29, 0x14
/* 813D2BF8 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 813D2BFC | 54 05 88 1C */	slwi r5, r0, 17
/* 813D2C00 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2C04 | 7C A5 23 96 */	divwu r5, r5, r4
/* 813D2C08 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D2C0C | 38 05 FF FB */	subi r0, r5, 0x5
/* 813D2C10 | B0 04 00 0C */	sth r0, 0xc(r4)
/* 813D2C14 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2C18 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 813D2C1C | 7C 80 F2 14 */	add r4, r0, r30
/* 813D2C20 | 90 A4 00 08 */	stw r5, 0x8(r4)
/* 813D2C24 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2C28 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813D2C2C | 7C 80 F2 14 */	add r4, r0, r30
/* 813D2C30 | B0 A4 00 0E */	sth r5, 0xe(r4)
/* 813D2C34 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813D2C38 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 813D2C3C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2C40 | 7C A5 23 96 */	divwu r5, r5, r4
/* 813D2C44 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D2C48 | B0 A4 00 10 */	sth r5, 0x10(r4)
/* 813D2C4C | 48 15 DC 61 */	bl OSRestoreInterrupts
/* 813D2C50 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2C54 | 7F A4 EB 78 */	mr r4, r29
/* 813D2C58 | 38 7F 02 04 */	addi r3, r31, 0x204
/* 813D2C5C | 7C E0 F2 14 */	add r7, r0, r30
/* 813D2C60 | 80 A7 00 08 */	lwz r5, 0x8(r7)
/* 813D2C64 | A0 C7 00 10 */	lhz r6, 0x10(r7)
/* 813D2C68 | A0 E7 00 0E */	lhz r7, 0xe(r7)
/* 813D2C6C | 4C C6 31 82 */	crclr cr1eq
/* 813D2C70 | 48 15 BA 31 */	bl OSReport
.L_813D2C74:
/* 813D2C74 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D2C78 | 48 22 68 9D */	bl _restgpr_29
/* 813D2C7C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D2C80 | 7C 08 03 A6 */	mtlr r0
/* 813D2C84 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D2C88 | 4E 80 00 20 */	blr
.endfn CardSequence_813D2B40

# .text:0xC74 | 0x813D2C8C | size: 0x4B4
.fn CardSequence_813D2C8C, global
/* 813D2C8C | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 813D2C90 | 7C 08 02 A6 */	mflr r0
/* 813D2C94 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 813D2C98 | 39 61 01 30 */	addi r11, r1, 0x130
/* 813D2C9C | 48 22 68 05 */	bl _savegpr_19
/* 813D2CA0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2CA4 | 3B 00 00 00 */	li r24, 0x0
/* 813D2CA8 | 3F 60 81 65 */	lis r27, jumptable_81652F68@ha
/* 813D2CAC | 3B 20 00 01 */	li r25, 0x1
/* 813D2CB0 | 93 03 0C 18 */	stw r24, 0xc18(r3)
/* 813D2CB4 | 3B 7B 2F 68 */	addi r27, r27, jumptable_81652F68@l
/* 813D2CB8 | 3E A0 80 00 */	lis r21, 0x8000
/* 813D2CBC | 3B E0 00 00 */	li r31, 0x0
/* 813D2CC0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2CC4 | 3B A0 00 01 */	li r29, 0x1
/* 813D2CC8 | 3B CD 8C B8 */	li r30, lbl_81696CF8@sda21
/* 813D2CCC | 3F 80 81 65 */	lis r28, jumptable_8165321C@ha
/* 813D2CD0 | 93 03 0C 1C */	stw r24, 0xc1c(r3)
/* 813D2CD4 | 48 00 04 48 */	b .L_813D311C
.L_813D2CD8:
/* 813D2CD8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2CDC | 38 81 00 10 */	addi r4, r1, 0x10
/* 813D2CE0 | 38 A0 00 01 */	li r5, 0x1
/* 813D2CE4 | 38 63 0C 40 */	addi r3, r3, 0xc40
/* 813D2CE8 | 48 15 E4 61 */	bl OSReceiveMessage
/* 813D2CEC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D2CF0 | 38 7B 02 36 */	addi r3, r27, 0x236
/* 813D2CF4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813D2CF8 | 7C 04 07 74 */	extsb r4, r0
/* 813D2CFC | 4C C6 31 82 */	crclr cr1eq
/* 813D2D00 | 48 15 B9 A1 */	bl OSReport
/* 813D2D04 | 28 19 00 01 */	cmplwi r25, 0x1
/* 813D2D08 | 40 82 04 14 */	bne .L_813D311C
/* 813D2D0C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813D2D10 | 54 93 06 3E */	clrlwi r19, r4, 24
/* 813D2D14 | 7E 65 07 74 */	extsb r5, r19
/* 813D2D18 | 28 05 00 0C */	cmplwi r5, 0xc
/* 813D2D1C | 41 81 04 00 */	bgt .L_813D311C
/* 813D2D20 | 38 7C 32 1C */	addi r3, r28, jumptable_8165321C@l
/* 813D2D24 | 54 A0 10 3A */	slwi r0, r5, 2
/* 813D2D28 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D2D2C | 7C 69 03 A6 */	mtctr r3
/* 813D2D30 | 4E 80 04 20 */	bctr
.L_813D2D34:
/* 813D2D34 | 38 7B 02 58 */	addi r3, r27, 0x258
/* 813D2D38 | 3B 20 00 01 */	li r25, 0x1
/* 813D2D3C | 38 80 00 01 */	li r4, 0x1
/* 813D2D40 | 4C C6 31 82 */	crclr cr1eq
/* 813D2D44 | 48 15 B9 5D */	bl OSReport
/* 813D2D48 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D2D4C | 7E 64 9B 78 */	mr r4, r19
/* 813D2D50 | 53 24 44 2E */	rlwimi r4, r25, 8, 16, 23
/* 813D2D54 | 38 A0 00 01 */	li r5, 0x1
/* 813D2D58 | 38 63 0C 20 */	addi r3, r3, 0xc20
/* 813D2D5C | 48 15 E3 25 */	bl OSSendMessage
/* 813D2D60 | 48 00 03 BC */	b .L_813D311C
.L_813D2D64:
/* 813D2D64 | 3B 00 00 01 */	li r24, 0x1
/* 813D2D68 | 48 00 03 B4 */	b .L_813D311C
.L_813D2D6C:
/* 813D2D6C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2D70 | 54 93 97 7A */	rlwinm r19, r4, 18, 29, 29
/* 813D2D74 | 54 96 87 FE */	extrwi r22, r4, 1, 15
/* 813D2D78 | 38 A0 00 00 */	li r5, 0x0
/* 813D2D7C | 7C 60 9A 14 */	add r3, r0, r19
/* 813D2D80 | 80 83 0C 10 */	lwz r4, 0xc10(r3)
/* 813D2D84 | 7E C3 B3 78 */	mr r3, r22
/* 813D2D88 | 48 18 F0 05 */	bl fn_81561D8C
/* 813D2D8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2D90 | 7C 64 1B 78 */	mr r4, r3
/* 813D2D94 | 40 80 00 18 */	bge .L_813D2DAC
/* 813D2D98 | 7E C3 B3 78 */	mr r3, r22
/* 813D2D9C | 48 00 04 71 */	bl CardSequence_813D320C
/* 813D2DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2DA4 | 40 82 00 1C */	bne .L_813D2DC0
/* 813D2DA8 | 48 00 03 74 */	b .L_813D311C
.L_813D2DAC:
/* 813D2DAC | 7E C3 B3 78 */	mr r3, r22
/* 813D2DB0 | 48 18 E7 31 */	bl fn_815614E0
/* 813D2DB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2DB8 | 7C 74 1B 78 */	mr r20, r3
/* 813D2DBC | 41 80 01 88 */	blt .L_813D2F44
.L_813D2DC0:
/* 813D2DC0 | 7E C3 B3 78 */	mr r3, r22
/* 813D2DC4 | 48 00 06 15 */	bl CardSequence_813D33D8
/* 813D2DC8 | 3A E0 00 00 */	li r23, 0x0
.L_813D2DCC:
/* 813D2DCC | 7E C3 B3 78 */	mr r3, r22
/* 813D2DD0 | 7E E4 07 34 */	extsh r4, r23
/* 813D2DD4 | 38 A1 00 54 */	addi r5, r1, 0x54
/* 813D2DD8 | 48 19 09 FD */	bl fn_815637D4
/* 813D2DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2DE0 | 7C 64 1B 78 */	mr r4, r3
/* 813D2DE4 | 40 80 00 18 */	bge .L_813D2DFC
/* 813D2DE8 | 7E C3 B3 78 */	mr r3, r22
/* 813D2DEC | 48 00 04 21 */	bl CardSequence_813D320C
/* 813D2DF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2DF4 | 40 82 00 B4 */	bne .L_813D2EA8
/* 813D2DF8 | 48 00 03 24 */	b .L_813D311C
.L_813D2DFC:
/* 813D2DFC | 9B E1 00 08 */	stb r31, 0x8(r1)
/* 813D2E00 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813D2E04 | 38 9B 02 7C */	addi r4, r27, 0x27c
/* 813D2E08 | 38 A0 00 0B */	li r5, 0xb
/* 813D2E0C | 9B E1 00 09 */	stb r31, 0x9(r1)
/* 813D2E10 | 9B E1 00 0A */	stb r31, 0xa(r1)
/* 813D2E14 | 9B E1 00 0B */	stb r31, 0xb(r1)
/* 813D2E18 | 9B E1 00 0C */	stb r31, 0xc(r1)
/* 813D2E1C | 9B E1 00 0D */	stb r31, 0xd(r1)
/* 813D2E20 | 48 22 F7 7D */	bl strncmp
/* 813D2E24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2E28 | 40 82 00 3C */	bne .L_813D2E64
/* 813D2E2C | 38 61 00 54 */	addi r3, r1, 0x54
/* 813D2E30 | 38 81 00 0A */	addi r4, r1, 0xa
/* 813D2E34 | 38 A0 00 04 */	li r5, 0x4
/* 813D2E38 | 48 22 B3 9D */	bl memcmp
/* 813D2E3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2E40 | 40 82 00 24 */	bne .L_813D2E64
/* 813D2E44 | 38 61 00 58 */	addi r3, r1, 0x58
/* 813D2E48 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D2E4C | 38 A0 00 02 */	li r5, 0x2
/* 813D2E50 | 48 22 B3 85 */	bl memcmp
/* 813D2E54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2E58 | 40 82 00 0C */	bne .L_813D2E64
/* 813D2E5C | 38 00 00 01 */	li r0, 0x1
/* 813D2E60 | 48 00 00 08 */	b .L_813D2E68
.L_813D2E64:
/* 813D2E64 | 38 00 00 00 */	li r0, 0x0
.L_813D2E68:
/* 813D2E68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D2E6C | 41 82 00 20 */	beq .L_813D2E8C
/* 813D2E70 | 7E C3 B3 78 */	mr r3, r22
/* 813D2E74 | 7E E4 07 34 */	extsh r4, r23
/* 813D2E78 | 48 19 09 15 */	bl fn_8156378C
/* 813D2E7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2E80 | 7C 74 1B 78 */	mr r20, r3
/* 813D2E84 | 41 80 00 C0 */	blt .L_813D2F44
/* 813D2E88 | 48 00 00 20 */	b .L_813D2EA8
.L_813D2E8C:
/* 813D2E8C | 7E C3 B3 78 */	mr r3, r22
/* 813D2E90 | 7E E4 07 34 */	extsh r4, r23
/* 813D2E94 | 38 A1 00 54 */	addi r5, r1, 0x54
/* 813D2E98 | 48 00 05 8D */	bl CardSequence_813D3424
/* 813D2E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2EA0 | 7C 74 1B 78 */	mr r20, r3
/* 813D2EA4 | 41 80 00 A0 */	blt .L_813D2F44
.L_813D2EA8:
/* 813D2EA8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813D2EAC | 2C 17 00 7F */	cmpwi r23, 0x7f
/* 813D2EB0 | 41 80 FF 1C */	blt .L_813D2DCC
/* 813D2EB4 | 7E C3 B3 78 */	mr r3, r22
/* 813D2EB8 | 4B FF FC 89 */	bl CardSequence_813D2B40
/* 813D2EBC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D2EC0 | 7E C3 B3 78 */	mr r3, r22
/* 813D2EC4 | 38 80 00 00 */	li r4, 0x0
/* 813D2EC8 | 38 A0 00 00 */	li r5, 0x0
/* 813D2ECC | 7C C0 9A 14 */	add r6, r0, r19
/* 813D2ED0 | 93 A6 0C 18 */	stw r29, 0xc18(r6)
/* 813D2ED4 | 48 00 04 AD */	bl CardSequence_813D3380
/* 813D2ED8 | 7C 9E B0 AE */	lbzx r4, r30, r22
/* 813D2EDC | 38 7B 02 88 */	addi r3, r27, 0x288
/* 813D2EE0 | 7C 84 07 74 */	extsb r4, r4
/* 813D2EE4 | 4C C6 31 82 */	crclr cr1eq
/* 813D2EE8 | 48 15 B7 B9 */	bl OSReport
/* 813D2EEC | 3A E0 00 00 */	li r23, 0x0
.L_813D2EF0:
/* 813D2EF0 | 7E C3 B3 78 */	mr r3, r22
/* 813D2EF4 | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 813D2EF8 | 38 A1 00 94 */	addi r5, r1, 0x94
/* 813D2EFC | 48 19 08 D9 */	bl fn_815637D4
/* 813D2F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2F04 | 40 82 00 30 */	bne .L_813D2F34
/* 813D2F08 | 38 61 00 D4 */	addi r3, r1, 0xd4
/* 813D2F0C | 38 81 00 9C */	addi r4, r1, 0x9c
/* 813D2F10 | 38 A0 00 20 */	li r5, 0x20
/* 813D2F14 | 4B F5 D3 1D */	bl memcpy
/* 813D2F18 | 9B E1 00 F4 */	stb r31, 0xf4(r1)
/* 813D2F1C | 38 7B 02 91 */	addi r3, r27, 0x291
/* 813D2F20 | A0 C1 00 CC */	lhz r6, 0xcc(r1)
/* 813D2F24 | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 813D2F28 | 38 A1 00 D4 */	addi r5, r1, 0xd4
/* 813D2F2C | 4C C6 31 82 */	crclr cr1eq
/* 813D2F30 | 48 15 B7 71 */	bl OSReport
.L_813D2F34:
/* 813D2F34 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813D2F38 | 28 17 00 7F */	cmplwi r23, 0x7f
/* 813D2F3C | 41 80 FF B4 */	blt .L_813D2EF0
/* 813D2F40 | 48 00 01 DC */	b .L_813D311C
.L_813D2F44:
/* 813D2F44 | 38 7B 02 A5 */	addi r3, r27, 0x2a5
/* 813D2F48 | 4C C6 31 82 */	crclr cr1eq
/* 813D2F4C | 48 15 B7 55 */	bl OSReport
/* 813D2F50 | 7E C3 B3 78 */	mr r3, r22
/* 813D2F54 | 7E 85 A3 78 */	mr r5, r20
/* 813D2F58 | 38 80 00 00 */	li r4, 0x0
/* 813D2F5C | 48 00 03 4D */	bl CardSequence_813D32A8
/* 813D2F60 | 48 00 01 BC */	b .L_813D311C
.L_813D2F64:
/* 813D2F64 | 54 83 87 FE */	extrwi r3, r4, 1, 15
/* 813D2F68 | 38 80 00 09 */	li r4, 0x9
/* 813D2F6C | 38 A0 FF FD */	li r5, -0x3
/* 813D2F70 | 48 00 03 39 */	bl CardSequence_813D32A8
/* 813D2F74 | 48 00 01 A8 */	b .L_813D311C
.L_813D2F78:
/* 813D2F78 | 54 96 87 FE */	extrwi r22, r4, 1, 15
/* 813D2F7C | 7E C3 B3 78 */	mr r3, r22
/* 813D2F80 | 48 18 F4 FD */	bl fn_8156247C
/* 813D2F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D2F88 | 7C 65 1B 78 */	mr r5, r3
/* 813D2F8C | 40 80 00 14 */	bge .L_813D2FA0
/* 813D2F90 | 7E C3 B3 78 */	mr r3, r22
/* 813D2F94 | 38 80 00 01 */	li r4, 0x1
/* 813D2F98 | 48 00 03 11 */	bl CardSequence_813D32A8
/* 813D2F9C | 48 00 01 80 */	b .L_813D311C
.L_813D2FA0:
/* 813D2FA0 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D2FA4 | 56 C0 15 BA */	clrlslwi r0, r22, 24, 2
/* 813D2FA8 | 7E C3 B3 78 */	mr r3, r22
/* 813D2FAC | 7C 84 02 14 */	add r4, r4, r0
/* 813D2FB0 | 93 A4 0C 18 */	stw r29, 0xc18(r4)
/* 813D2FB4 | 4B FF FB 8D */	bl CardSequence_813D2B40
/* 813D2FB8 | 7E C3 B3 78 */	mr r3, r22
/* 813D2FBC | 38 80 00 01 */	li r4, 0x1
/* 813D2FC0 | 38 A0 00 00 */	li r5, 0x0
/* 813D2FC4 | 48 00 03 BD */	bl CardSequence_813D3380
/* 813D2FC8 | 48 00 01 54 */	b .L_813D311C
.L_813D2FCC:
/* 813D2FCC | 54 80 46 3E */	srwi r0, r4, 24
/* 813D2FD0 | 54 83 87 FE */	extrwi r3, r4, 1, 15
/* 813D2FD4 | 7C 04 07 34 */	extsh r4, r0
/* 813D2FD8 | 48 00 0D 3D */	bl CardSequence_813D3D14
/* 813D2FDC | 48 00 01 40 */	b .L_813D311C
.L_813D2FE0:
/* 813D2FE0 | 54 80 46 3E */	srwi r0, r4, 24
/* 813D2FE4 | 54 83 87 FE */	extrwi r3, r4, 1, 15
/* 813D2FE8 | 7C 04 07 34 */	extsh r4, r0
/* 813D2FEC | 48 00 0D 29 */	bl CardSequence_813D3D14
/* 813D2FF0 | 48 00 01 2C */	b .L_813D311C
.L_813D2FF4:
/* 813D2FF4 | 54 80 46 3E */	srwi r0, r4, 24
/* 813D2FF8 | 54 96 87 FE */	extrwi r22, r4, 1, 15
/* 813D2FFC | 7C 17 07 34 */	extsh r23, r0
/* 813D3000 | 7E C3 B3 78 */	mr r3, r22
/* 813D3004 | 7E E4 BB 78 */	mr r4, r23
/* 813D3008 | 48 19 07 85 */	bl fn_8156378C
/* 813D300C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3010 | 7C 65 1B 78 */	mr r5, r3
/* 813D3014 | 40 80 00 14 */	bge .L_813D3028
/* 813D3018 | 7E C3 B3 78 */	mr r3, r22
/* 813D301C | 38 80 00 04 */	li r4, 0x4
/* 813D3020 | 48 00 02 89 */	bl CardSequence_813D32A8
/* 813D3024 | 48 00 00 F8 */	b .L_813D311C
.L_813D3028:
/* 813D3028 | 7E C3 B3 78 */	mr r3, r22
/* 813D302C | 7E E4 BB 78 */	mr r4, r23
/* 813D3030 | 4B FF FA 45 */	bl CardSequence_813D2A74
/* 813D3034 | 7E C3 B3 78 */	mr r3, r22
/* 813D3038 | 4B FF FB 09 */	bl CardSequence_813D2B40
/* 813D303C | 7E C3 B3 78 */	mr r3, r22
/* 813D3040 | 56 E5 06 3E */	clrlwi r5, r23, 24
/* 813D3044 | 38 80 00 04 */	li r4, 0x4
/* 813D3048 | 48 00 03 39 */	bl CardSequence_813D3380
/* 813D304C | 48 00 00 D0 */	b .L_813D311C
.L_813D3050:
/* 813D3050 | 3B 40 00 00 */	li r26, 0x0
/* 813D3054 | 3A E0 00 00 */	li r23, 0x0
/* 813D3058 | 3A C0 00 00 */	li r22, 0x0
.L_813D305C:
/* 813D305C | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D3060 | 7C 60 B2 14 */	add r3, r0, r22
/* 813D3064 | 80 03 0C 18 */	lwz r0, 0xc18(r3)
/* 813D3068 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D306C | 41 82 00 8C */	beq .L_813D30F8
/* 813D3070 | 3A 80 00 00 */	li r20, 0x0
/* 813D3074 | 3A 60 00 00 */	li r19, 0x0
.L_813D3078:
/* 813D3078 | 7F 43 D3 78 */	mr r3, r26
/* 813D307C | 7E 64 9B 78 */	mr r4, r19
/* 813D3080 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D3084 | 48 19 07 51 */	bl fn_815637D4
/* 813D3088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D308C | 40 80 00 14 */	bge .L_813D30A0
/* 813D3090 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 813D3094 | 41 82 00 0C */	beq .L_813D30A0
/* 813D3098 | 3A 80 FF FF */	li r20, -0x1
/* 813D309C | 48 00 00 50 */	b .L_813D30EC
.L_813D30A0:
/* 813D30A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D30A4 | 40 82 00 3C */	bne .L_813D30E0
/* 813D30A8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813D30AC | 3C 80 80 00 */	lis r4, 0x8000
/* 813D30B0 | 38 A0 00 04 */	li r5, 0x4
/* 813D30B4 | 48 22 B1 21 */	bl memcmp
/* 813D30B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D30BC | 40 82 00 24 */	bne .L_813D30E0
/* 813D30C0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D30C4 | 38 95 00 04 */	addi r4, r21, 0x4
/* 813D30C8 | 38 A0 00 02 */	li r5, 0x2
/* 813D30CC | 48 22 B1 09 */	bl memcmp
/* 813D30D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D30D4 | 40 82 00 0C */	bne .L_813D30E0
/* 813D30D8 | A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 813D30DC | 7E 94 02 14 */	add r20, r20, r0
.L_813D30E0:
/* 813D30E0 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 813D30E4 | 2C 13 00 7F */	cmpwi r19, 0x7f
/* 813D30E8 | 41 80 FF 90 */	blt .L_813D3078
.L_813D30EC:
/* 813D30EC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D30F0 | 7C 60 BA 14 */	add r3, r0, r23
/* 813D30F4 | B2 83 00 12 */	sth r20, 0x12(r3)
.L_813D30F8:
/* 813D30F8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813D30FC | 3A D6 00 04 */	addi r22, r22, 0x4
/* 813D3100 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 813D3104 | 3A F7 00 14 */	addi r23, r23, 0x14
/* 813D3108 | 41 80 FF 54 */	blt .L_813D305C
/* 813D310C | 38 60 00 00 */	li r3, 0x0
/* 813D3110 | 38 80 00 0C */	li r4, 0xc
/* 813D3114 | 38 A0 00 00 */	li r5, 0x0
/* 813D3118 | 48 00 02 69 */	bl CardSequence_813D3380
.L_813D311C:
/* 813D311C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813D3120 | 41 82 FB B8 */	beq .L_813D2CD8
/* 813D3124 | 39 61 01 30 */	addi r11, r1, 0x130
/* 813D3128 | 38 60 00 00 */	li r3, 0x0
/* 813D312C | 48 22 63 C1 */	bl _restgpr_19
/* 813D3130 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 813D3134 | 7C 08 03 A6 */	mtlr r0
/* 813D3138 | 38 21 01 30 */	addi r1, r1, 0x130
/* 813D313C | 4E 80 00 20 */	blr
.endfn CardSequence_813D2C8C

# .text:0x1128 | 0x813D3140 | size: 0xCC
.fn CardSequence_813D3140, global
/* 813D3140 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D3144 | 7C 08 02 A6 */	mflr r0
/* 813D3148 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D314C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D3150 | 48 22 63 65 */	bl _savegpr_24
/* 813D3154 | 3B A0 00 00 */	li r29, 0x0
/* 813D3158 | 3B 60 00 00 */	li r27, 0x0
/* 813D315C | 3B 40 00 00 */	li r26, 0x0
/* 813D3160 | 3B 00 00 01 */	li r24, 0x1
/* 813D3164 | 3B E0 00 00 */	li r31, 0x0
.L_813D3168:
/* 813D3168 | 6B A0 00 01 */	xori r0, r29, 0x1
/* 813D316C | 3B 80 00 00 */	li r28, 0x0
/* 813D3170 | 54 1E 10 3A */	slwi r30, r0, 2
/* 813D3174 | 3B 20 00 00 */	li r25, 0x0
.L_813D3178:
/* 813D3178 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D317C | 7C 19 DA 14 */	add r0, r25, r27
/* 813D3180 | 7C 63 02 14 */	add r3, r3, r0
/* 813D3184 | B3 E3 00 2E */	sth r31, 0x2e(r3)
/* 813D3188 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D318C | 7C 7A 22 14 */	add r3, r26, r4
/* 813D3190 | 80 03 0C 18 */	lwz r0, 0xc18(r3)
/* 813D3194 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D3198 | 41 82 00 38 */	beq .L_813D31D0
/* 813D319C | 7C 7E 22 14 */	add r3, r30, r4
/* 813D31A0 | 80 03 0C 18 */	lwz r0, 0xc18(r3)
/* 813D31A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D31A8 | 41 82 00 28 */	beq .L_813D31D0
/* 813D31AC | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 813D31B0 | 7F 84 07 34 */	extsh r4, r28
/* 813D31B4 | 48 00 0A 85 */	bl CardSequence_813D3C38
/* 813D31B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D31BC | 40 80 00 14 */	bge .L_813D31D0
/* 813D31C0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D31C4 | 7C 19 DA 14 */	add r0, r25, r27
/* 813D31C8 | 7C 63 02 14 */	add r3, r3, r0
/* 813D31CC | B3 03 00 2E */	sth r24, 0x2e(r3)
.L_813D31D0:
/* 813D31D0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813D31D4 | 3B 39 00 0C */	addi r25, r25, 0xc
/* 813D31D8 | 2C 1C 00 7F */	cmpwi r28, 0x7f
/* 813D31DC | 41 80 FF 9C */	blt .L_813D3178
/* 813D31E0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813D31E4 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 813D31E8 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813D31EC | 3B 7B 05 F4 */	addi r27, r27, 0x5f4
/* 813D31F0 | 41 80 FF 78 */	blt .L_813D3168
/* 813D31F4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D31F8 | 48 22 63 09 */	bl _restgpr_24
/* 813D31FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D3200 | 7C 08 03 A6 */	mtlr r0
/* 813D3204 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D3208 | 4E 80 00 20 */	blr
.endfn CardSequence_813D3140

# .text:0x11F4 | 0x813D320C | size: 0x9C
.fn CardSequence_813D320C, global
/* 813D320C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D3210 | 7C 08 02 A6 */	mflr r0
/* 813D3214 | 2C 04 FF FB */	cmpwi r4, -0x5
/* 813D3218 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D321C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D3220 | 7C 7F 1B 78 */	mr r31, r3
/* 813D3224 | 41 82 00 60 */	beq .L_813D3284
/* 813D3228 | 40 80 00 10 */	bge .L_813D3238
/* 813D322C | 2C 04 FF FA */	cmpwi r4, -0x6
/* 813D3230 | 40 80 00 18 */	bge .L_813D3248
/* 813D3234 | 48 00 00 50 */	b .L_813D3284
.L_813D3238:
/* 813D3238 | 2C 04 FF FD */	cmpwi r4, -0x3
/* 813D323C | 40 80 00 48 */	bge .L_813D3284
/* 813D3240 | 38 60 00 01 */	li r3, 0x1
/* 813D3244 | 48 00 00 50 */	b .L_813D3294
.L_813D3248:
/* 813D3248 | 48 18 E2 99 */	bl fn_815614E0
/* 813D324C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3250 | 7C 64 1B 78 */	mr r4, r3
/* 813D3254 | 40 80 00 18 */	bge .L_813D326C
/* 813D3258 | 7C 85 23 78 */	mr r5, r4
/* 813D325C | 7F E3 FB 78 */	mr r3, r31
/* 813D3260 | 38 80 00 00 */	li r4, 0x0
/* 813D3264 | 48 00 00 45 */	bl CardSequence_813D32A8
/* 813D3268 | 48 00 00 2C */	b .L_813D3294
.L_813D326C:
/* 813D326C | 3C 60 81 65 */	lis r3, lbl_81653250@ha
/* 813D3270 | 38 63 32 50 */	addi r3, r3, lbl_81653250@l
/* 813D3274 | 4C C6 31 82 */	crclr cr1eq
/* 813D3278 | 48 15 B4 29 */	bl OSReport
/* 813D327C | 38 60 00 01 */	li r3, 0x1
/* 813D3280 | 48 00 00 14 */	b .L_813D3294
.L_813D3284:
/* 813D3284 | 7C 85 23 78 */	mr r5, r4
/* 813D3288 | 7F E3 FB 78 */	mr r3, r31
/* 813D328C | 38 80 00 00 */	li r4, 0x0
/* 813D3290 | 48 00 00 19 */	bl CardSequence_813D32A8
.L_813D3294:
/* 813D3294 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D3298 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D329C | 7C 08 03 A6 */	mtlr r0
/* 813D32A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D32A4 | 4E 80 00 20 */	blr
.endfn CardSequence_813D320C

# .text:0x1290 | 0x813D32A8 | size: 0xD8
.fn CardSequence_813D32A8, global
/* 813D32A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D32AC | 7C 08 02 A6 */	mflr r0
/* 813D32B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D32B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D32B8 | 48 22 62 11 */	bl _savegpr_29
/* 813D32BC | 2C 05 FF F9 */	cmpwi r5, -0x7
/* 813D32C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813D32C4 | 7C 9E 23 78 */	mr r30, r4
/* 813D32C8 | 7C BF 2B 78 */	mr r31, r5
/* 813D32CC | 41 82 00 60 */	beq .L_813D332C
/* 813D32D0 | 2C 05 FF E5 */	cmpwi r5, -0x1b
/* 813D32D4 | 41 82 00 58 */	beq .L_813D332C
/* 813D32D8 | 2C 05 FF F8 */	cmpwi r5, -0x8
/* 813D32DC | 41 82 00 50 */	beq .L_813D332C
/* 813D32E0 | 2C 05 FF F7 */	cmpwi r5, -0x9
/* 813D32E4 | 41 82 00 48 */	beq .L_813D332C
/* 813D32E8 | 48 00 00 F1 */	bl CardSequence_813D33D8
/* 813D32EC | 2C 1F FF FA */	cmpwi r31, -0x6
/* 813D32F0 | 41 82 00 3C */	beq .L_813D332C
/* 813D32F4 | 2C 1F FF F3 */	cmpwi r31, -0xd
/* 813D32F8 | 41 82 00 34 */	beq .L_813D332C
/* 813D32FC | 3C 60 81 65 */	lis r3, lbl_81653271@ha
/* 813D3300 | 7F A4 EB 78 */	mr r4, r29
/* 813D3304 | 38 63 32 71 */	addi r3, r3, lbl_81653271@l
/* 813D3308 | 4C C6 31 82 */	crclr cr1eq
/* 813D330C | 48 15 B3 95 */	bl OSReport
/* 813D3310 | 7F A3 EB 78 */	mr r3, r29
/* 813D3314 | 48 18 EA C1 */	bl fn_81561DD4
/* 813D3318 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D331C | 57 A0 15 BA */	clrlslwi r0, r29, 24, 2
/* 813D3320 | 38 80 00 00 */	li r4, 0x0
/* 813D3324 | 7C 63 02 14 */	add r3, r3, r0
/* 813D3328 | 90 83 0C 18 */	stw r4, 0xc18(r3)
.L_813D332C:
/* 813D332C | 3C 60 81 65 */	lis r3, lbl_81653289@ha
/* 813D3330 | 7F C4 F3 78 */	mr r4, r30
/* 813D3334 | 7F E5 FB 78 */	mr r5, r31
/* 813D3338 | 38 63 32 89 */	addi r3, r3, lbl_81653289@l
/* 813D333C | 4C C6 31 82 */	crclr cr1eq
/* 813D3340 | 48 15 B3 61 */	bl OSReport
/* 813D3344 | 4B FF FD FD */	bl CardSequence_813D3140
/* 813D3348 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D334C | 57 A4 83 DE */	clrlslwi r4, r29, 31, 16
/* 813D3350 | 53 E4 44 2E */	rlwimi r4, r31, 8, 16, 23
/* 813D3354 | 38 A0 00 01 */	li r5, 0x1
/* 813D3358 | 38 63 0C 20 */	addi r3, r3, 0xc20
/* 813D335C | 53 C4 06 3E */	rlwimi r4, r30, 0, 24, 31
/* 813D3360 | 48 15 DD 21 */	bl OSSendMessage
/* 813D3364 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D3368 | 38 60 00 00 */	li r3, 0x0
/* 813D336C | 48 22 61 A9 */	bl _restgpr_29
/* 813D3370 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D3374 | 7C 08 03 A6 */	mtlr r0
/* 813D3378 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D337C | 4E 80 00 20 */	blr
.endfn CardSequence_813D32A8

# .text:0x1368 | 0x813D3380 | size: 0x58
.fn CardSequence_813D3380, global
/* 813D3380 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D3384 | 7C 08 02 A6 */	mflr r0
/* 813D3388 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D338C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D3390 | 48 22 61 39 */	bl _savegpr_29
/* 813D3394 | 7C 7D 1B 78 */	mr r29, r3
/* 813D3398 | 7C 9E 23 78 */	mr r30, r4
/* 813D339C | 7C BF 2B 78 */	mr r31, r5
/* 813D33A0 | 4B FF FD A1 */	bl CardSequence_813D3140
/* 813D33A4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D33A8 | 57 E4 C0 0E */	slwi r4, r31, 24
/* 813D33AC | 53 A4 83 DE */	rlwimi r4, r29, 16, 15, 15
/* 813D33B0 | 38 A0 00 01 */	li r5, 0x1
/* 813D33B4 | 38 63 0C 20 */	addi r3, r3, 0xc20
/* 813D33B8 | 53 C4 06 3E */	rlwimi r4, r30, 0, 24, 31
/* 813D33BC | 48 15 DC C5 */	bl OSSendMessage
/* 813D33C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D33C4 | 48 22 61 51 */	bl _restgpr_29
/* 813D33C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D33CC | 7C 08 03 A6 */	mtlr r0
/* 813D33D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D33D4 | 4E 80 00 20 */	blr
.endfn CardSequence_813D3380

# .text:0x13C0 | 0x813D33D8 | size: 0x4C
.fn CardSequence_813D33D8, global
/* 813D33D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D33DC | 7C 08 02 A6 */	mflr r0
/* 813D33E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D33E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D33E8 | 3B E0 00 00 */	li r31, 0x0
/* 813D33EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D33F0 | 7C 7E 1B 78 */	mr r30, r3
.L_813D33F4:
/* 813D33F4 | 7F C3 F3 78 */	mr r3, r30
/* 813D33F8 | 7F E4 07 34 */	extsh r4, r31
/* 813D33FC | 4B FF F6 79 */	bl CardSequence_813D2A74
/* 813D3400 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813D3404 | 2C 1F 00 7F */	cmpwi r31, 0x7f
/* 813D3408 | 41 80 FF EC */	blt .L_813D33F4
/* 813D340C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D3410 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D3414 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D3418 | 7C 08 03 A6 */	mtlr r0
/* 813D341C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D3420 | 4E 80 00 20 */	blr
.endfn CardSequence_813D33D8

# .text:0x140C | 0x813D3424 | size: 0x800
.fn CardSequence_813D3424, global
/* 813D3424 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813D3428 | 7C 08 02 A6 */	mflr r0
/* 813D342C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813D3430 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813D3434 | 48 22 60 75 */	bl _savegpr_21
/* 813D3438 | 7C BA 2B 78 */	mr r26, r5
/* 813D343C | 7C 78 1B 78 */	mr r24, r3
/* 813D3440 | 7C 99 23 78 */	mr r25, r4
/* 813D3444 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813D3448 | 48 18 F3 75 */	bl fn_815627BC
/* 813D344C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3450 | 40 80 00 08 */	bge .L_813D3458
/* 813D3454 | 48 00 07 B8 */	b .L_813D3C0C
.L_813D3458:
/* 813D3458 | 88 1A 00 07 */	lbz r0, 0x7(r26)
/* 813D345C | 39 00 00 00 */	li r8, 0x0
/* 813D3460 | 80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 813D3464 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 813D3468 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D346C | 54 7F 00 2C */	clrrwi r31, r3, 9
/* 813D3470 | 7E FF 18 50 */	subf r23, r31, r3
/* 813D3474 | 41 82 00 BC */	beq .L_813D3530
/* 813D3478 | 40 80 01 44 */	bge .L_813D35BC
/* 813D347C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D3480 | 40 80 00 08 */	bge .L_813D3488
/* 813D3484 | 48 00 01 38 */	b .L_813D35BC
.L_813D3488:
/* 813D3488 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D348C | 1F B8 1F C0 */	mulli r29, r24, 0x1fc0
/* 813D3490 | 57 3E 30 32 */	slwi r30, r25, 6
/* 813D3494 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3498 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D349C | 38 80 00 09 */	li r4, 0x9
/* 813D34A0 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D34A4 | 57 3C 10 3A */	slwi r28, r25, 2
/* 813D34A8 | 38 00 00 01 */	li r0, 0x1
/* 813D34AC | 39 00 0E 00 */	li r8, 0xe00
/* 813D34B0 | 98 03 90 44 */	stb r0, -0x6fbc(r3)
/* 813D34B4 | 1F 78 01 FC */	mulli r27, r24, 0x1fc
/* 813D34B8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D34BC | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D34C0 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D34C4 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D34C8 | 98 83 90 47 */	stb r4, -0x6fb9(r3)
/* 813D34CC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D34D0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D34D4 | 7C 83 EA 14 */	add r4, r3, r29
/* 813D34D8 | 7C 03 DA 14 */	add r0, r3, r27
/* 813D34DC | 7C 60 E2 14 */	add r3, r0, r28
/* 813D34E0 | 7C 84 F2 14 */	add r4, r4, r30
/* 813D34E4 | 80 03 CF C4 */	lwz r0, -0x303c(r3)
/* 813D34E8 | 38 64 90 44 */	subi r3, r4, 0x6fbc
/* 813D34EC | 7C 03 00 50 */	subf r0, r3, r0
/* 813D34F0 | 90 04 90 58 */	stw r0, -0x6fa8(r4)
/* 813D34F4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D34F8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D34FC | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3500 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D3504 | 80 64 90 58 */	lwz r3, -0x6fa8(r4)
/* 813D3508 | 38 03 0C 00 */	addi r0, r3, 0xc00
/* 813D350C | 90 04 90 5C */	stw r0, -0x6fa4(r4)
/* 813D3510 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3514 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3518 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D351C | 7C 80 F2 14 */	add r4, r0, r30
/* 813D3520 | 80 64 90 5C */	lwz r3, -0x6fa4(r4)
/* 813D3524 | 38 03 02 00 */	addi r0, r3, 0x200
/* 813D3528 | 90 04 90 60 */	stw r0, -0x6fa0(r4)
/* 813D352C | 48 00 00 F4 */	b .L_813D3620
.L_813D3530:
/* 813D3530 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3534 | 1F B8 1F C0 */	mulli r29, r24, 0x1fc0
/* 813D3538 | 57 3E 30 32 */	slwi r30, r25, 6
/* 813D353C | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3540 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3544 | 38 80 00 05 */	li r4, 0x5
/* 813D3548 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D354C | 57 3C 10 3A */	slwi r28, r25, 2
/* 813D3550 | 38 00 00 01 */	li r0, 0x1
/* 813D3554 | 39 00 18 00 */	li r8, 0x1800
/* 813D3558 | 98 03 90 44 */	stb r0, -0x6fbc(r3)
/* 813D355C | 1F 78 01 FC */	mulli r27, r24, 0x1fc
/* 813D3560 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3564 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3568 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D356C | 7C 60 F2 14 */	add r3, r0, r30
/* 813D3570 | 98 83 90 47 */	stb r4, -0x6fb9(r3)
/* 813D3574 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3578 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D357C | 7C 83 EA 14 */	add r4, r3, r29
/* 813D3580 | 7C 03 DA 14 */	add r0, r3, r27
/* 813D3584 | 7C 60 E2 14 */	add r3, r0, r28
/* 813D3588 | 7C 84 F2 14 */	add r4, r4, r30
/* 813D358C | 80 03 CF C4 */	lwz r0, -0x303c(r3)
/* 813D3590 | 38 64 90 44 */	subi r3, r4, 0x6fbc
/* 813D3594 | 7C 03 00 50 */	subf r0, r3, r0
/* 813D3598 | 90 04 90 58 */	stw r0, -0x6fa8(r4)
/* 813D359C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D35A0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D35A4 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D35A8 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D35AC | 80 64 90 58 */	lwz r3, -0x6fa8(r4)
/* 813D35B0 | 38 03 18 00 */	addi r0, r3, 0x1800
/* 813D35B4 | 90 04 90 60 */	stw r0, -0x6fa0(r4)
/* 813D35B8 | 48 00 00 68 */	b .L_813D3620
.L_813D35BC:
/* 813D35BC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D35C0 | 1F B8 1F C0 */	mulli r29, r24, 0x1fc0
/* 813D35C4 | 57 3E 30 32 */	slwi r30, r25, 6
/* 813D35C8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D35CC | 7C 00 EA 14 */	add r0, r0, r29
/* 813D35D0 | 38 80 00 00 */	li r4, 0x0
/* 813D35D4 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D35D8 | 57 3C 10 3A */	slwi r28, r25, 2
/* 813D35DC | 98 83 90 44 */	stb r4, -0x6fbc(r3)
/* 813D35E0 | 1F 78 01 FC */	mulli r27, r24, 0x1fc
/* 813D35E4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D35E8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D35EC | 7C 00 EA 14 */	add r0, r0, r29
/* 813D35F0 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D35F4 | 98 83 90 47 */	stb r4, -0x6fb9(r3)
/* 813D35F8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D35FC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D3600 | 7C 03 DA 14 */	add r0, r3, r27
/* 813D3604 | 7C 83 EA 14 */	add r4, r3, r29
/* 813D3608 | 7C 60 E2 14 */	add r3, r0, r28
/* 813D360C | 7C 84 F2 14 */	add r4, r4, r30
/* 813D3610 | 80 03 CF C4 */	lwz r0, -0x303c(r3)
/* 813D3614 | 38 64 90 44 */	subi r3, r4, 0x6fbc
/* 813D3618 | 7C 03 00 50 */	subf r0, r3, r0
/* 813D361C | 90 04 90 60 */	stw r0, -0x6fa0(r4)
.L_813D3620:
/* 813D3620 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3624 | 38 60 00 00 */	li r3, 0x0
/* 813D3628 | 38 00 00 08 */	li r0, 0x8
/* 813D362C | 7D 3D F2 14 */	add r9, r29, r30
/* 813D3630 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D3634 | 38 A0 00 00 */	li r5, 0x0
/* 813D3638 | 7C 84 EA 14 */	add r4, r4, r29
/* 813D363C | 38 E0 00 00 */	li r7, 0x0
/* 813D3640 | 7C 84 F2 14 */	add r4, r4, r30
/* 813D3644 | 98 64 90 46 */	stb r3, -0x6fba(r4)
/* 813D3648 | 38 80 00 00 */	li r4, 0x0
/* 813D364C | 81 4D AB 28 */	lwz r10, lbl_81698B68@sda21(r0)
/* 813D3650 | 3D 4A 00 01 */	addis r10, r10, 0x1
/* 813D3654 | 7D 4A EA 14 */	add r10, r10, r29
/* 813D3658 | 7D 4A F2 14 */	add r10, r10, r30
/* 813D365C | B0 6A 90 56 */	sth r3, -0x6faa(r10)
/* 813D3660 | 81 4D AB 28 */	lwz r10, lbl_81698B68@sda21(r0)
/* 813D3664 | A1 7A 00 32 */	lhz r11, 0x32(r26)
/* 813D3668 | 3D 4A 00 01 */	addis r10, r10, 0x1
/* 813D366C | 7D 4A EA 14 */	add r10, r10, r29
/* 813D3670 | 7D 4A F2 14 */	add r10, r10, r30
/* 813D3674 | B1 6A 90 54 */	sth r11, -0x6fac(r10)
/* 813D3678 | 81 4D AB 28 */	lwz r10, lbl_81698B68@sda21(r0)
/* 813D367C | A1 7A 00 32 */	lhz r11, 0x32(r26)
/* 813D3680 | 3D 4A 00 01 */	addis r10, r10, 0x1
/* 813D3684 | 7D 4A EA 14 */	add r10, r10, r29
/* 813D3688 | 55 6B 17 3A */	clrlslwi r11, r11, 30, 2
/* 813D368C | 7D 4A F2 14 */	add r10, r10, r30
/* 813D3690 | 99 6A 90 4A */	stb r11, -0x6fb6(r10)
/* 813D3694 | 7C 09 03 A6 */	mtctr r0
.L_813D3698:
/* 813D3698 | A1 5A 00 32 */	lhz r10, 0x32(r26)
/* 813D369C | 7D 40 1E 30 */	sraw r0, r10, r3
/* 813D36A0 | 54 00 07 BF */	clrlwi. r0, r0, 30
/* 813D36A4 | 41 82 00 24 */	beq .L_813D36C8
/* 813D36A8 | 81 4D AB 28 */	lwz r10, lbl_81698B68@sda21(r0)
/* 813D36AC | 54 00 10 3A */	slwi r0, r0, 2
/* 813D36B0 | 3D 4A 00 01 */	addis r10, r10, 0x1
/* 813D36B4 | 39 6A 90 56 */	subi r11, r10, 0x6faa
/* 813D36B8 | 7D 49 5A AE */	lhax r10, r9, r11
/* 813D36BC | 7C 0A 02 14 */	add r0, r10, r0
/* 813D36C0 | 7C 09 5B 2E */	sthx r0, r9, r11
/* 813D36C4 | 48 00 00 2C */	b .L_813D36F0
.L_813D36C8:
/* 813D36C8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D36CC | 38 04 FF FF */	subi r0, r4, 0x1
/* 813D36D0 | 54 04 08 3C */	slwi r4, r0, 1
/* 813D36D4 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D36D8 | 7D 43 26 30 */	sraw r3, r10, r4
/* 813D36DC | 7C 00 EA 14 */	add r0, r0, r29
/* 813D36E0 | 54 64 17 3A */	clrlslwi r4, r3, 30, 2
/* 813D36E4 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D36E8 | 98 83 90 4B */	stb r4, -0x6fb5(r3)
/* 813D36EC | 48 00 00 2C */	b .L_813D3718
.L_813D36F0:
/* 813D36F0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813D36F4 | 38 63 00 02 */	addi r3, r3, 0x2
/* 813D36F8 | 42 00 FF A0 */	bdnz .L_813D3698
/* 813D36FC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3700 | A0 9A 00 32 */	lhz r4, 0x32(r26)
/* 813D3704 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3708 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D370C | 54 84 A7 3A */	rlwinm r4, r4, 20, 28, 29
/* 813D3710 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D3714 | 98 83 90 4B */	stb r4, -0x6fb5(r3)
.L_813D3718:
/* 813D3718 | A0 1A 00 32 */	lhz r0, 0x32(r26)
/* 813D371C | 54 00 07 BF */	clrlwi. r0, r0, 30
/* 813D3720 | 41 82 00 10 */	beq .L_813D3730
/* 813D3724 | A0 1A 00 30 */	lhz r0, 0x30(r26)
/* 813D3728 | 54 00 07 BF */	clrlwi. r0, r0, 30
/* 813D372C | 40 82 00 24 */	bne .L_813D3750
.L_813D3730:
/* 813D3730 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3734 | 38 80 00 00 */	li r4, 0x0
/* 813D3738 | 38 E0 00 00 */	li r7, 0x0
/* 813D373C | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3740 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3744 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D3748 | 98 83 90 45 */	stb r4, -0x6fbb(r3)
/* 813D374C | 48 00 01 BC */	b .L_813D3908
.L_813D3750:
/* 813D3750 | 38 80 00 08 */	li r4, 0x8
/* 813D3754 | 39 40 00 00 */	li r10, 0x0
/* 813D3758 | 39 60 00 00 */	li r11, 0x0
/* 813D375C | 39 80 00 00 */	li r12, 0x0
/* 813D3760 | 38 00 00 05 */	li r0, 0x5
/* 813D3764 | 38 60 00 09 */	li r3, 0x9
/* 813D3768 | 7C 89 03 A6 */	mtctr r4
.L_813D376C:
/* 813D376C | A0 9A 00 32 */	lhz r4, 0x32(r26)
/* 813D3770 | 7C 84 66 30 */	sraw r4, r4, r12
/* 813D3774 | 54 84 07 BF */	clrlwi. r4, r4, 30
/* 813D3778 | 41 82 01 08 */	beq .L_813D3880
/* 813D377C | A0 9A 00 30 */	lhz r4, 0x30(r26)
/* 813D3780 | 7C 84 66 30 */	sraw r4, r4, r12
/* 813D3784 | 54 84 07 BE */	clrlwi r4, r4, 30
/* 813D3788 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813D378C | 41 82 00 20 */	beq .L_813D37AC
/* 813D3790 | 40 80 00 10 */	bge .L_813D37A0
/* 813D3794 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D3798 | 40 80 00 50 */	bge .L_813D37E8
/* 813D379C | 48 00 00 6C */	b .L_813D3808
.L_813D37A0:
/* 813D37A0 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813D37A4 | 40 80 00 64 */	bge .L_813D3808
/* 813D37A8 | 48 00 00 24 */	b .L_813D37CC
.L_813D37AC:
/* 813D37AC | 7C 8A 4A 14 */	add r4, r10, r9
/* 813D37B0 | 82 AD AB 28 */	lwz r21, lbl_81698B68@sda21(r0)
/* 813D37B4 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D37B8 | 38 C0 04 00 */	li r6, 0x400
/* 813D37BC | 38 84 90 4C */	subi r4, r4, 0x6fb4
/* 813D37C0 | 38 A0 00 01 */	li r5, 0x1
/* 813D37C4 | 7C 75 21 AE */	stbx r3, r21, r4
/* 813D37C8 | 48 00 00 40 */	b .L_813D3808
.L_813D37CC:
/* 813D37CC | 7C 8A 4A 14 */	add r4, r10, r9
/* 813D37D0 | 82 AD AB 28 */	lwz r21, lbl_81698B68@sda21(r0)
/* 813D37D4 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D37D8 | 38 C0 08 00 */	li r6, 0x800
/* 813D37DC | 38 84 90 4C */	subi r4, r4, 0x6fb4
/* 813D37E0 | 7C 15 21 AE */	stbx r0, r21, r4
/* 813D37E4 | 48 00 00 24 */	b .L_813D3808
.L_813D37E8:
/* 813D37E8 | 7C 8A 4A 14 */	add r4, r10, r9
/* 813D37EC | 82 AD AB 28 */	lwz r21, lbl_81698B68@sda21(r0)
/* 813D37F0 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D37F4 | 38 C0 00 00 */	li r6, 0x0
/* 813D37F8 | 3A C4 90 4C */	subi r22, r4, 0x6fb4
/* 813D37FC | 7E D5 B2 14 */	add r22, r21, r22
/* 813D3800 | 88 96 FF FF */	lbz r4, -0x1(r22)
/* 813D3804 | 98 96 00 00 */	stb r4, 0x0(r22)
.L_813D3808:
/* 813D3808 | 2C 0A 00 07 */	cmpwi r10, 0x7
/* 813D380C | 40 80 00 34 */	bge .L_813D3840
/* 813D3810 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3814 | 3E CB 00 01 */	addis r22, r11, 0x1
/* 813D3818 | 3A AA 00 01 */	addi r21, r10, 0x1
/* 813D381C | 7C 89 22 14 */	add r4, r9, r4
/* 813D3820 | 3A D6 90 60 */	subi r22, r22, 0x6fa0
/* 813D3824 | 56 B5 10 3A */	slwi r21, r21, 2
/* 813D3828 | 7E C4 B0 2E */	lwzx r22, r4, r22
/* 813D382C | 3E B5 00 01 */	addis r21, r21, 0x1
/* 813D3830 | 7E C6 B2 14 */	add r22, r6, r22
/* 813D3834 | 3A B5 90 60 */	subi r21, r21, 0x6fa0
/* 813D3838 | 7E C4 A9 2E */	stwx r22, r4, r21
/* 813D383C | 48 00 00 24 */	b .L_813D3860
.L_813D3840:
/* 813D3840 | 82 AD AB 28 */	lwz r21, lbl_81698B68@sda21(r0)
/* 813D3844 | 3C 8B 00 01 */	addis r4, r11, 0x1
/* 813D3848 | 38 84 90 60 */	subi r4, r4, 0x6fa0
/* 813D384C | 7E C9 AA 14 */	add r22, r9, r21
/* 813D3850 | 7E B6 20 2E */	lwzx r21, r22, r4
/* 813D3854 | 3C 96 00 01 */	addis r4, r22, 0x1
/* 813D3858 | 7E A6 AA 14 */	add r21, r6, r21
/* 813D385C | 92 A4 90 80 */	stw r21, -0x6f80(r4)
.L_813D3860:
/* 813D3860 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3864 | 7C E7 32 14 */	add r7, r7, r6
/* 813D3868 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D386C | 3A A4 90 46 */	subi r21, r4, 0x6fba
/* 813D3870 | 7C 89 A8 AE */	lbzx r4, r9, r21
/* 813D3874 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813D3878 | 7C 89 A9 AE */	stbx r4, r9, r21
/* 813D387C | 48 00 00 28 */	b .L_813D38A4
.L_813D3880:
/* 813D3880 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3884 | 55 40 10 3A */	slwi r0, r10, 2
/* 813D3888 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D388C | 7C 63 EA 14 */	add r3, r3, r29
/* 813D3890 | 7C 83 F2 14 */	add r4, r3, r30
/* 813D3894 | 7C 64 02 14 */	add r3, r4, r0
/* 813D3898 | 80 03 90 60 */	lwz r0, -0x6fa0(r3)
/* 813D389C | 90 04 90 80 */	stw r0, -0x6f80(r4)
/* 813D38A0 | 48 00 00 14 */	b .L_813D38B4
.L_813D38A4:
/* 813D38A4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 813D38A8 | 39 6B 00 04 */	addi r11, r11, 0x4
/* 813D38AC | 39 8C 00 02 */	addi r12, r12, 0x2
/* 813D38B0 | 42 00 FE BC */	bdnz .L_813D376C
.L_813D38B4:
/* 813D38B4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D38B8 | 41 82 00 08 */	beq .L_813D38C0
/* 813D38BC | 38 E7 02 00 */	addi r7, r7, 0x200
.L_813D38C0:
/* 813D38C0 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D38C4 | 38 A0 00 01 */	li r5, 0x1
/* 813D38C8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D38CC | 7C 00 EA 14 */	add r0, r0, r29
/* 813D38D0 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D38D4 | 98 A3 90 45 */	stb r5, -0x6fbb(r3)
/* 813D38D8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D38DC | 88 9A 00 07 */	lbz r4, 0x7(r26)
/* 813D38E0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D38E4 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D38E8 | 54 84 07 7A */	rlwinm r4, r4, 0, 29, 29
/* 813D38EC | 7C 60 F2 14 */	add r3, r0, r30
/* 813D38F0 | 98 83 90 49 */	stb r4, -0x6fb7(r3)
/* 813D38F4 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D38F8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D38FC | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3900 | 7C 60 F2 14 */	add r3, r0, r30
/* 813D3904 | 98 A3 90 48 */	stb r5, -0x6fb8(r3)
.L_813D3908:
/* 813D3908 | 7E A8 3A 14 */	add r21, r8, r7
/* 813D390C | 7F 03 C3 78 */	mr r3, r24
/* 813D3910 | 7C B5 BA 14 */	add r5, r21, r23
/* 813D3914 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813D3918 | 38 05 01 FF */	addi r0, r5, 0x1ff
/* 813D391C | 54 16 00 2C */	clrrwi r22, r0, 9
/* 813D3920 | 48 18 B2 C5 */	bl fn_8155EBE4
/* 813D3924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3928 | 40 80 00 38 */	bge .L_813D3960
/* 813D392C | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3930 | 38 A0 00 00 */	li r5, 0x0
/* 813D3934 | 38 60 00 00 */	li r3, 0x0
/* 813D3938 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D393C | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3940 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D3944 | 98 A4 90 44 */	stb r5, -0x6fbc(r4)
/* 813D3948 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D394C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D3950 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3954 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D3958 | 98 A4 90 45 */	stb r5, -0x6fbb(r4)
/* 813D395C | 48 00 01 00 */	b .L_813D3A5C
.L_813D3960:
/* 813D3960 | A0 7A 00 38 */	lhz r3, 0x38(r26)
/* 813D3964 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813D3968 | 7C 63 01 D6 */	mullw r3, r3, r0
/* 813D396C | 7C 1F 18 40 */	cmplw r31, r3
/* 813D3970 | 40 81 00 38 */	ble .L_813D39A8
/* 813D3974 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3978 | 38 A0 00 00 */	li r5, 0x0
/* 813D397C | 38 60 00 00 */	li r3, 0x0
/* 813D3980 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D3984 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D3988 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D398C | 98 A4 90 44 */	stb r5, -0x6fbc(r4)
/* 813D3990 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3994 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D3998 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D399C | 7C 80 F2 14 */	add r4, r0, r30
/* 813D39A0 | 98 A4 90 45 */	stb r5, -0x6fbb(r4)
/* 813D39A4 | 48 00 00 B8 */	b .L_813D3A5C
.L_813D39A8:
/* 813D39A8 | 7C 1F B2 14 */	add r0, r31, r22
/* 813D39AC | 7C 00 18 40 */	cmplw r0, r3
/* 813D39B0 | 40 81 00 38 */	ble .L_813D39E8
/* 813D39B4 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D39B8 | 38 A0 00 00 */	li r5, 0x0
/* 813D39BC | 38 60 00 00 */	li r3, 0x0
/* 813D39C0 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D39C4 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D39C8 | 7C 80 F2 14 */	add r4, r0, r30
/* 813D39CC | 98 A4 90 44 */	stb r5, -0x6fbc(r4)
/* 813D39D0 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D39D4 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 813D39D8 | 7C 00 EA 14 */	add r0, r0, r29
/* 813D39DC | 7C 80 F2 14 */	add r4, r0, r30
/* 813D39E0 | 98 A4 90 45 */	stb r5, -0x6fbb(r4)
/* 813D39E4 | 48 00 00 78 */	b .L_813D3A5C
.L_813D39E8:
/* 813D39E8 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 813D39EC | 40 81 00 6C */	ble .L_813D3A58
/* 813D39F0 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D39F4 | 7E C5 B3 78 */	mr r5, r22
/* 813D39F8 | 7F E6 FB 78 */	mr r6, r31
/* 813D39FC | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D3A00 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D3A04 | 80 84 DB C0 */	lwz r4, -0x2440(r4)
/* 813D3A08 | 48 18 F7 A1 */	bl fn_815631A8
/* 813D3A0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3A10 | 40 80 00 08 */	bge .L_813D3A18
/* 813D3A14 | 48 00 00 48 */	b .L_813D3A5C
.L_813D3A18:
/* 813D3A18 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3A1C | 7E A5 AB 78 */	mr r5, r21
/* 813D3A20 | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813D3A24 | 7C 64 DA 14 */	add r3, r4, r27
/* 813D3A28 | 80 04 DB C0 */	lwz r0, -0x2440(r4)
/* 813D3A2C | 7C 63 E2 14 */	add r3, r3, r28
/* 813D3A30 | 80 63 CF C4 */	lwz r3, -0x303c(r3)
/* 813D3A34 | 7C 80 BA 14 */	add r4, r0, r23
/* 813D3A38 | 4B F5 C7 F9 */	bl memcpy
/* 813D3A3C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3A40 | 7E C4 B3 78 */	mr r4, r22
/* 813D3A44 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3A48 | 7C 00 DA 14 */	add r0, r0, r27
/* 813D3A4C | 7C 60 E2 14 */	add r3, r0, r28
/* 813D3A50 | 80 63 CF C4 */	lwz r3, -0x303c(r3)
/* 813D3A54 | 48 15 9F 11 */	bl DCStoreRange
.L_813D3A58:
/* 813D3A58 | 38 60 00 00 */	li r3, 0x0
.L_813D3A5C:
/* 813D3A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3A60 | 40 80 00 08 */	bge .L_813D3A68
/* 813D3A64 | 48 00 01 A8 */	b .L_813D3C0C
.L_813D3A68:
/* 813D3A68 | 80 BA 00 3C */	lwz r5, 0x3c(r26)
/* 813D3A6C | 7F 03 C3 78 */	mr r3, r24
/* 813D3A70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D3A74 | 38 05 02 3F */	addi r0, r5, 0x23f
/* 813D3A78 | 54 B7 00 2C */	clrrwi r23, r5, 9
/* 813D3A7C | 54 00 00 2C */	clrrwi r0, r0, 9
/* 813D3A80 | 7E B7 28 50 */	subf r21, r23, r5
/* 813D3A84 | 7E D7 00 50 */	subf r22, r23, r0
/* 813D3A88 | 48 18 B1 5D */	bl fn_8155EBE4
/* 813D3A8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3A90 | 7C 7D 1B 78 */	mr r29, r3
/* 813D3A94 | 41 80 00 B4 */	blt .L_813D3B48
/* 813D3A98 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 813D3A9C | 41 80 00 18 */	blt .L_813D3AB4
/* 813D3AA0 | A0 7A 00 38 */	lhz r3, 0x38(r26)
/* 813D3AA4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813D3AA8 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 813D3AAC | 7C 17 00 40 */	cmplw r23, r0
/* 813D3AB0 | 40 81 00 0C */	ble .L_813D3ABC
.L_813D3AB4:
/* 813D3AB4 | 3B A0 00 00 */	li r29, 0x0
/* 813D3AB8 | 48 00 00 90 */	b .L_813D3B48
.L_813D3ABC:
/* 813D3ABC | 7C 77 B2 15 */	add. r3, r23, r22
/* 813D3AC0 | 41 80 00 0C */	blt .L_813D3ACC
/* 813D3AC4 | 7C 03 00 40 */	cmplw r3, r0
/* 813D3AC8 | 40 81 00 0C */	ble .L_813D3AD4
.L_813D3ACC:
/* 813D3ACC | 3B A0 00 00 */	li r29, 0x0
/* 813D3AD0 | 48 00 00 78 */	b .L_813D3B48
.L_813D3AD4:
/* 813D3AD4 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3AD8 | 7E C5 B3 78 */	mr r5, r22
/* 813D3ADC | 7E E6 BB 78 */	mr r6, r23
/* 813D3AE0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D3AE4 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D3AE8 | 38 84 D7 C0 */	subi r4, r4, 0x2840
/* 813D3AEC | 48 18 F6 BD */	bl fn_815631A8
/* 813D3AF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3AF4 | 7C 7D 1B 78 */	mr r29, r3
/* 813D3AF8 | 41 80 00 50 */	blt .L_813D3B48
/* 813D3AFC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3B00 | 38 80 00 00 */	li r4, 0x0
/* 813D3B04 | 38 A0 00 40 */	li r5, 0x40
/* 813D3B08 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3B0C | 7C 00 DA 14 */	add r0, r0, r27
/* 813D3B10 | 7C 60 E2 14 */	add r3, r0, r28
/* 813D3B14 | 80 63 D3 BC */	lwz r3, -0x2c44(r3)
/* 813D3B18 | 4B F5 C8 1D */	bl memset
/* 813D3B1C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3B20 | 38 A0 00 40 */	li r5, 0x40
/* 813D3B24 | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813D3B28 | 7C 04 DA 14 */	add r0, r4, r27
/* 813D3B2C | 7C 60 E2 14 */	add r3, r0, r28
/* 813D3B30 | 7C 84 AA 14 */	add r4, r4, r21
/* 813D3B34 | 80 63 D3 BC */	lwz r3, -0x2c44(r3)
/* 813D3B38 | 38 84 D7 C0 */	subi r4, r4, 0x2840
/* 813D3B3C | 4B F5 C6 F5 */	bl memcpy
/* 813D3B40 | 3B A0 00 00 */	li r29, 0x0
/* 813D3B44 | 48 00 00 24 */	b .L_813D3B68
.L_813D3B48:
/* 813D3B48 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3B4C | 38 80 00 00 */	li r4, 0x0
/* 813D3B50 | 38 A0 00 40 */	li r5, 0x40
/* 813D3B54 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D3B58 | 7C 00 DA 14 */	add r0, r0, r27
/* 813D3B5C | 7C 60 E2 14 */	add r3, r0, r28
/* 813D3B60 | 80 63 D3 BC */	lwz r3, -0x2c44(r3)
/* 813D3B64 | 4B F5 C7 D1 */	bl memset
.L_813D3B68:
/* 813D3B68 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D3B6C | 40 80 00 0C */	bge .L_813D3B78
/* 813D3B70 | 7F A3 EB 78 */	mr r3, r29
/* 813D3B74 | 48 00 00 98 */	b .L_813D3C0C
.L_813D3B78:
/* 813D3B78 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D3B7C | 48 18 EE 25 */	bl fn_815629A0
/* 813D3B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3B84 | 40 80 00 08 */	bge .L_813D3B8C
/* 813D3B88 | 48 00 00 84 */	b .L_813D3C0C
.L_813D3B8C:
/* 813D3B8C | 1C F8 05 F4 */	mulli r7, r24, 0x5f4
/* 813D3B90 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D3B94 | 38 A0 00 01 */	li r5, 0x1
/* 813D3B98 | 38 60 00 00 */	li r3, 0x0
/* 813D3B9C | 1C D9 00 0C */	mulli r6, r25, 0xc
/* 813D3BA0 | 7C 00 3A 14 */	add r0, r0, r7
/* 813D3BA4 | 7C 80 32 14 */	add r4, r0, r6
/* 813D3BA8 | B0 A4 00 28 */	sth r5, 0x28(r4)
/* 813D3BAC | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D3BB0 | A0 BA 00 38 */	lhz r5, 0x38(r26)
/* 813D3BB4 | 7C 00 3A 14 */	add r0, r0, r7
/* 813D3BB8 | 7C 80 32 14 */	add r4, r0, r6
/* 813D3BBC | B0 A4 00 2A */	sth r5, 0x2a(r4)
/* 813D3BC0 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D3BC4 | 80 BA 00 28 */	lwz r5, 0x28(r26)
/* 813D3BC8 | 7C 00 3A 14 */	add r0, r0, r7
/* 813D3BCC | 7C 80 32 14 */	add r4, r0, r6
/* 813D3BD0 | 90 A4 00 30 */	stw r5, 0x30(r4)
/* 813D3BD4 | 88 9A 00 34 */	lbz r4, 0x34(r26)
/* 813D3BD8 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D3BDC | 54 84 EF FE */	extrwi r4, r4, 1, 28
/* 813D3BE0 | 7C 00 3A 14 */	add r0, r0, r7
/* 813D3BE4 | 68 85 00 01 */	xori r5, r4, 0x1
/* 813D3BE8 | 7C 80 32 14 */	add r4, r0, r6
/* 813D3BEC | 98 A4 00 2C */	stb r5, 0x2c(r4)
/* 813D3BF0 | 88 9A 00 34 */	lbz r4, 0x34(r26)
/* 813D3BF4 | 80 0D AB 28 */	lwz r0, lbl_81698B68@sda21(r0)
/* 813D3BF8 | 54 84 E7 FE */	extrwi r4, r4, 1, 27
/* 813D3BFC | 7C 00 3A 14 */	add r0, r0, r7
/* 813D3C00 | 68 85 00 01 */	xori r5, r4, 0x1
/* 813D3C04 | 7C 80 32 14 */	add r4, r0, r6
/* 813D3C08 | 98 A4 00 2D */	stb r5, 0x2d(r4)
.L_813D3C0C:
/* 813D3C0C | 39 61 00 60 */	addi r11, r1, 0x60
/* 813D3C10 | 48 22 58 E5 */	bl _restgpr_21
/* 813D3C14 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813D3C18 | 7C 08 03 A6 */	mtlr r0
/* 813D3C1C | 38 21 00 60 */	addi r1, r1, 0x60
/* 813D3C20 | 4E 80 00 20 */	blr
.endfn CardSequence_813D3424

# .text:0x1C0C | 0x813D3C24 | size: 0x14
.fn CardSequence_813D3C24, global
/* 813D3C24 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3C28 | 38 00 00 00 */	li r0, 0x0
/* 813D3C2C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D3C30 | 90 03 DB D8 */	stw r0, -0x2428(r3)
/* 813D3C34 | 4E 80 00 20 */	blr
.endfn CardSequence_813D3C24

# .text:0x1C20 | 0x813D3C38 | size: 0xDC
.fn CardSequence_813D3C38, global
/* 813D3C38 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813D3C3C | 7C 08 02 A6 */	mflr r0
/* 813D3C40 | 7C 84 07 34 */	extsh r4, r4
/* 813D3C44 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813D3C48 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 813D3C4C | 93 E1 00 8C */	stw r31, 0x8c(r1)
/* 813D3C50 | 93 C1 00 88 */	stw r30, 0x88(r1)
/* 813D3C54 | 7C 7E 1B 78 */	mr r30, r3
/* 813D3C58 | 48 18 FB 7D */	bl fn_815637D4
/* 813D3C5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3C60 | 40 80 00 08 */	bge .L_813D3C68
/* 813D3C64 | 48 00 00 98 */	b .L_813D3CFC
.L_813D3C68:
/* 813D3C68 | 6B DF 00 01 */	xori r31, r30, 0x1
/* 813D3C6C | 3B C0 00 00 */	li r30, 0x0
.L_813D3C70:
/* 813D3C70 | 7F E3 FB 78 */	mr r3, r31
/* 813D3C74 | 7F C4 F3 78 */	mr r4, r30
/* 813D3C78 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813D3C7C | 48 18 FB 59 */	bl fn_815637D4
/* 813D3C80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3C84 | 40 80 00 10 */	bge .L_813D3C94
/* 813D3C88 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 813D3C8C | 41 82 00 08 */	beq .L_813D3C94
/* 813D3C90 | 48 00 00 6C */	b .L_813D3CFC
.L_813D3C94:
/* 813D3C94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3C98 | 40 82 00 54 */	bne .L_813D3CEC
/* 813D3C9C | 38 61 00 48 */	addi r3, r1, 0x48
/* 813D3CA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D3CA4 | 38 A0 00 04 */	li r5, 0x4
/* 813D3CA8 | 48 22 A5 2D */	bl memcmp
/* 813D3CAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3CB0 | 40 82 00 3C */	bne .L_813D3CEC
/* 813D3CB4 | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813D3CB8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813D3CBC | 38 A0 00 02 */	li r5, 0x2
/* 813D3CC0 | 48 22 A5 15 */	bl memcmp
/* 813D3CC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3CC8 | 40 82 00 24 */	bne .L_813D3CEC
/* 813D3CCC | 38 61 00 50 */	addi r3, r1, 0x50
/* 813D3CD0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813D3CD4 | 38 A0 00 20 */	li r5, 0x20
/* 813D3CD8 | 48 22 A4 FD */	bl memcmp
/* 813D3CDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3CE0 | 40 82 00 0C */	bne .L_813D3CEC
/* 813D3CE4 | 38 60 FF F9 */	li r3, -0x7
/* 813D3CE8 | 48 00 00 14 */	b .L_813D3CFC
.L_813D3CEC:
/* 813D3CEC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813D3CF0 | 2C 1E 00 7F */	cmpwi r30, 0x7f
/* 813D3CF4 | 41 80 FF 7C */	blt .L_813D3C70
/* 813D3CF8 | 38 60 00 00 */	li r3, 0x0
.L_813D3CFC:
/* 813D3CFC | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813D3D00 | 83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 813D3D04 | 83 C1 00 88 */	lwz r30, 0x88(r1)
/* 813D3D08 | 7C 08 03 A6 */	mtlr r0
/* 813D3D0C | 38 21 00 90 */	addi r1, r1, 0x90
/* 813D3D10 | 4E 80 00 20 */	blr
.endfn CardSequence_813D3C38

# .text:0x1CFC | 0x813D3D14 | size: 0x980
.fn CardSequence_813D3D14, global
/* 813D3D14 | 94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 813D3D18 | 7C 08 02 A6 */	mflr r0
/* 813D3D1C | 90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 813D3D20 | 39 61 01 E0 */	addi r11, r1, 0x1e0
/* 813D3D24 | 48 22 57 6D */	bl _savegpr_15
/* 813D3D28 | 3E C0 81 65 */	lis r22, jumptable_81652F68@ha
/* 813D3D2C | 7C 79 1B 78 */	mr r25, r3
/* 813D3D30 | 7C 9A 23 78 */	mr r26, r4
/* 813D3D34 | 7C BB 2B 78 */	mr r27, r5
/* 813D3D38 | 3A D6 2F 68 */	addi r22, r22, jumptable_81652F68@l
/* 813D3D3C | 3B C0 FF FF */	li r30, -0x1
/* 813D3D40 | 3B A0 00 00 */	li r29, 0x0
/* 813D3D44 | 3B 80 00 00 */	li r28, 0x0
/* 813D3D48 | 4B FF FE F1 */	bl CardSequence_813D3C38
/* 813D3D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3D50 | 7C 65 1B 78 */	mr r5, r3
/* 813D3D54 | 40 80 00 14 */	bge .L_813D3D68
/* 813D3D58 | 7F 23 CB 78 */	mr r3, r25
/* 813D3D5C | 7F 64 DB 78 */	mr r4, r27
/* 813D3D60 | 4B FF F5 49 */	bl CardSequence_813D32A8
/* 813D3D64 | 48 00 09 18 */	b .L_813D467C
.L_813D3D68:
/* 813D3D68 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813D3D6C | 39 E0 00 00 */	li r15, 0x0
/* 813D3D70 | 38 60 00 00 */	li r3, 0x0
/* 813D3D74 | 48 18 AE 71 */	bl fn_8155EBE4
/* 813D3D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3D7C | 40 80 00 0C */	bge .L_813D3D88
/* 813D3D80 | 7C 65 1B 78 */	mr r5, r3
/* 813D3D84 | 48 00 00 40 */	b .L_813D3DC4
.L_813D3D88:
/* 813D3D88 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813D3D8C | 38 60 00 01 */	li r3, 0x1
/* 813D3D90 | 48 18 AE 55 */	bl fn_8155EBE4
/* 813D3D94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3D98 | 40 80 00 0C */	bge .L_813D3DA4
/* 813D3D9C | 7C 65 1B 78 */	mr r5, r3
/* 813D3DA0 | 48 00 00 24 */	b .L_813D3DC4
.L_813D3DA4:
/* 813D3DA4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813D3DA8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D3DAC | 7C 03 00 40 */	cmplw r3, r0
/* 813D3DB0 | 41 82 00 0C */	beq .L_813D3DBC
/* 813D3DB4 | 38 A0 FF E5 */	li r5, -0x1b
/* 813D3DB8 | 48 00 00 0C */	b .L_813D3DC4
.L_813D3DBC:
/* 813D3DBC | 7C 6F 1B 78 */	mr r15, r3
/* 813D3DC0 | 38 A0 00 00 */	li r5, 0x0
.L_813D3DC4:
/* 813D3DC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D3DC8 | 40 80 00 14 */	bge .L_813D3DDC
/* 813D3DCC | 7F 23 CB 78 */	mr r3, r25
/* 813D3DD0 | 7F 64 DB 78 */	mr r4, r27
/* 813D3DD4 | 4B FF F4 D5 */	bl CardSequence_813D32A8
/* 813D3DD8 | 48 00 08 A4 */	b .L_813D467C
.L_813D3DDC:
/* 813D3DDC | 7F 23 CB 78 */	mr r3, r25
/* 813D3DE0 | 7F 44 D3 78 */	mr r4, r26
/* 813D3DE4 | 38 A1 01 14 */	addi r5, r1, 0x114
/* 813D3DE8 | 3A 00 00 00 */	li r16, 0x0
/* 813D3DEC | 48 18 F9 E9 */	bl fn_815637D4
/* 813D3DF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3DF4 | 41 80 00 44 */	blt .L_813D3E38
/* 813D3DF8 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813D3DFC | 41 82 00 28 */	beq .L_813D3E24
/* 813D3E00 | 40 80 00 44 */	bge .L_813D3E44
/* 813D3E04 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 813D3E08 | 40 80 00 08 */	bge .L_813D3E10
/* 813D3E0C | 48 00 00 38 */	b .L_813D3E44
.L_813D3E10:
/* 813D3E10 | 88 01 01 48 */	lbz r0, 0x148(r1)
/* 813D3E14 | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 813D3E18 | 41 82 00 2C */	beq .L_813D3E44
/* 813D3E1C | 3A 00 FF F6 */	li r16, -0xa
/* 813D3E20 | 48 00 00 24 */	b .L_813D3E44
.L_813D3E24:
/* 813D3E24 | 88 01 01 48 */	lbz r0, 0x148(r1)
/* 813D3E28 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 813D3E2C | 41 82 00 18 */	beq .L_813D3E44
/* 813D3E30 | 3A 00 FF F6 */	li r16, -0xa
/* 813D3E34 | 48 00 00 10 */	b .L_813D3E44
.L_813D3E38:
/* 813D3E38 | 7F 23 CB 78 */	mr r3, r25
/* 813D3E3C | 48 18 AB A5 */	bl fn_8155E9E0
/* 813D3E40 | 7C 70 1B 78 */	mr r16, r3
.L_813D3E44:
/* 813D3E44 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 813D3E48 | 40 80 00 18 */	bge .L_813D3E60
/* 813D3E4C | 7F 23 CB 78 */	mr r3, r25
/* 813D3E50 | 7F 64 DB 78 */	mr r4, r27
/* 813D3E54 | 7E 05 83 78 */	mr r5, r16
/* 813D3E58 | 4B FF F4 51 */	bl CardSequence_813D32A8
/* 813D3E5C | 48 00 08 20 */	b .L_813D467C
.L_813D3E60:
/* 813D3E60 | 7F 23 CB 78 */	mr r3, r25
/* 813D3E64 | 7F 44 D3 78 */	mr r4, r26
/* 813D3E68 | 38 A1 01 54 */	addi r5, r1, 0x154
/* 813D3E6C | 48 18 F9 69 */	bl fn_815637D4
/* 813D3E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3E74 | 41 80 07 40 */	blt .L_813D45B4
/* 813D3E78 | A0 01 01 8C */	lhz r0, 0x18c(r1)
/* 813D3E7C | 6B 3F 00 01 */	xori r31, r25, 0x1
/* 813D3E80 | 3A 20 00 00 */	li r17, 0x0
/* 813D3E84 | 7E 00 79 D6 */	mullw r16, r0, r15
.L_813D3E88:
/* 813D3E88 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3E8C | 7E 25 8B 78 */	mr r5, r17
/* 813D3E90 | 38 96 03 40 */	addi r4, r22, 0x340
/* 813D3E94 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D3E98 | 4C C6 31 82 */	crclr cr1eq
/* 813D3E9C | 38 63 8F F8 */	subi r3, r3, 0x7008
/* 813D3EA0 | 48 22 CB E1 */	bl sprintf
/* 813D3EA4 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D3EA8 | 7F E3 FB 78 */	mr r3, r31
/* 813D3EAC | 7E 05 83 78 */	mr r5, r16
/* 813D3EB0 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D3EB4 | 7C 86 23 78 */	mr r6, r4
/* 813D3EB8 | 38 C6 90 2C */	subi r6, r6, 0x6fd4
/* 813D3EBC | 38 84 8F F8 */	subi r4, r4, 0x7008
/* 813D3EC0 | 48 18 EE 81 */	bl fn_81562D40
/* 813D3EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3EC8 | 7C 6F 1B 78 */	mr r15, r3
/* 813D3ECC | 40 80 00 20 */	bge .L_813D3EEC
/* 813D3ED0 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 813D3ED4 | 41 82 00 18 */	beq .L_813D3EEC
/* 813D3ED8 | 38 76 03 50 */	addi r3, r22, 0x350
/* 813D3EDC | 4C C6 31 82 */	crclr cr1eq
/* 813D3EE0 | 48 15 A7 C1 */	bl OSReport
/* 813D3EE4 | 7D FE 07 34 */	extsh r30, r15
/* 813D3EE8 | 48 00 00 38 */	b .L_813D3F20
.L_813D3EEC:
/* 813D3EEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3EF0 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 813D3EF4 | 41 82 00 0C */	beq .L_813D3F00
/* 813D3EF8 | 2C 11 00 80 */	cmpwi r17, 0x80
/* 813D3EFC | 41 80 FF 8C */	blt .L_813D3E88
.L_813D3F00:
/* 813D3F00 | 2C 11 00 80 */	cmpwi r17, 0x80
/* 813D3F04 | 40 80 00 18 */	bge .L_813D3F1C
/* 813D3F08 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3F0C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D3F10 | 80 03 90 30 */	lwz r0, -0x6fd0(r3)
/* 813D3F14 | 7C 1E 07 34 */	extsh r30, r0
/* 813D3F18 | 48 00 00 08 */	b .L_813D3F20
.L_813D3F1C:
/* 813D3F1C | 3B C0 FF 80 */	li r30, -0x80
.L_813D3F20:
/* 813D3F20 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813D3F24 | 40 80 00 18 */	bge .L_813D3F3C
/* 813D3F28 | 7F E3 FB 78 */	mr r3, r31
/* 813D3F2C | 7F 64 DB 78 */	mr r4, r27
/* 813D3F30 | 7F C5 F3 78 */	mr r5, r30
/* 813D3F34 | 4B FF F3 75 */	bl CardSequence_813D32A8
/* 813D3F38 | 48 00 07 44 */	b .L_813D467C
.L_813D3F3C:
/* 813D3F3C | 7F 23 CB 78 */	mr r3, r25
/* 813D3F40 | 7F 44 D3 78 */	mr r4, r26
/* 813D3F44 | 38 A1 00 D4 */	addi r5, r1, 0xd4
/* 813D3F48 | 3B A0 00 01 */	li r29, 0x1
/* 813D3F4C | 3A 80 00 00 */	li r20, 0x0
/* 813D3F50 | 3A A0 00 00 */	li r21, 0x0
/* 813D3F54 | 48 18 F8 81 */	bl fn_815637D4
/* 813D3F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3F5C | 7C 6F 1B 78 */	mr r15, r3
/* 813D3F60 | 41 80 01 80 */	blt .L_813D40E0
/* 813D3F64 | 7F 23 CB 78 */	mr r3, r25
/* 813D3F68 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D3F6C | 3A 80 00 01 */	li r20, 0x1
/* 813D3F70 | 48 18 AC 75 */	bl fn_8155EBE4
/* 813D3F74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3F78 | 7C 6F 1B 78 */	mr r15, r3
/* 813D3F7C | 41 80 01 64 */	blt .L_813D40E0
/* 813D3F80 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813D3F84 | 3C 80 00 04 */	lis r4, 0x4
/* 813D3F88 | 80 AD AB 28 */	lwz r5, lbl_81698B68@sda21(r0)
/* 813D3F8C | 7F 23 CB 78 */	mr r3, r25
/* 813D3F90 | 7E 24 03 96 */	divwu r17, r4, r0
/* 813D3F94 | 7F 44 D3 78 */	mr r4, r26
/* 813D3F98 | 3C A5 00 01 */	addis r5, r5, 0x1
/* 813D3F9C | 3A 80 00 02 */	li r20, 0x2
/* 813D3FA0 | 38 A5 90 18 */	subi r5, r5, 0x6fe8
/* 813D3FA4 | 48 18 E8 19 */	bl fn_815627BC
/* 813D3FA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D3FAC | 7C 6F 1B 78 */	mr r15, r3
/* 813D3FB0 | 41 80 01 30 */	blt .L_813D40E0
/* 813D3FB4 | 3A 00 00 00 */	li r16, 0x0
/* 813D3FB8 | 3A 80 00 03 */	li r20, 0x3
/* 813D3FBC | 3A E0 00 01 */	li r23, 0x1
/* 813D3FC0 | 3F 00 81 3D */	lis r24, CardSequence_813D3C24@ha
/* 813D3FC4 | 48 00 00 C8 */	b .L_813D408C
.L_813D3FC8:
/* 813D3FC8 | 7C 10 00 50 */	subf r0, r16, r0
/* 813D3FCC | 7C 00 88 40 */	cmplw r0, r17
/* 813D3FD0 | 40 81 00 08 */	ble .L_813D3FD8
/* 813D3FD4 | 7E 20 8B 78 */	mr r0, r17
.L_813D3FD8:
/* 813D3FD8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813D3FDC | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D3FE0 | 7E 70 29 D6 */	mullw r19, r16, r5
/* 813D3FE4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D3FE8 | 80 83 90 40 */	lwz r4, -0x6fc0(r3)
/* 813D3FEC | 38 63 90 18 */	subi r3, r3, 0x6fe8
/* 813D3FF0 | 7E 40 29 D6 */	mullw r18, r0, r5
/* 813D3FF4 | 7E 66 9B 78 */	mr r6, r19
/* 813D3FF8 | 7E 45 93 78 */	mr r5, r18
/* 813D3FFC | 48 18 F1 AD */	bl fn_815631A8
/* 813D4000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4004 | 7C 6F 1B 78 */	mr r15, r3
/* 813D4008 | 41 80 00 D8 */	blt .L_813D40E0
/* 813D400C | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D4010 | 7E 45 93 78 */	mr r5, r18
/* 813D4014 | 7E 66 9B 78 */	mr r6, r19
/* 813D4018 | 38 F8 3C 24 */	addi r7, r24, CardSequence_813D3C24@l
/* 813D401C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D4020 | 92 E3 DB D8 */	stw r23, -0x2428(r3)
/* 813D4024 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D4028 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D402C | 80 83 90 40 */	lwz r4, -0x6fc0(r3)
/* 813D4030 | 38 63 90 2C */	subi r3, r3, 0x6fd4
/* 813D4034 | 48 18 F4 5D */	bl fn_81563490
/* 813D4038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D403C | 7C 6F 1B 78 */	mr r15, r3
/* 813D4040 | 41 80 00 A0 */	blt .L_813D40E0
/* 813D4044 | 48 00 00 30 */	b .L_813D4074
.L_813D4048:
/* 813D4048 | 7F 23 CB 78 */	mr r3, r25
/* 813D404C | 48 18 D5 B5 */	bl fn_81561600
/* 813D4050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4054 | 40 82 00 20 */	bne .L_813D4074
/* 813D4058 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 813D405C | 40 82 00 18 */	bne .L_813D4074
/* 813D4060 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D4064 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D4068 | 38 63 90 2C */	subi r3, r3, 0x6fd4
/* 813D406C | 48 18 F1 85 */	bl fn_815631F0
/* 813D4070 | 3A A0 00 01 */	li r21, 0x1
.L_813D4074:
/* 813D4074 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D4078 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D407C | 80 03 DB D8 */	lwz r0, -0x2428(r3)
/* 813D4080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D4084 | 40 82 FF C4 */	bne .L_813D4048
/* 813D4088 | 7E 10 8A 14 */	add r16, r16, r17
.L_813D408C:
/* 813D408C | A0 01 01 0C */	lhz r0, 0x10c(r1)
/* 813D4090 | 7C 10 00 00 */	cmpw r16, r0
/* 813D4094 | 41 80 FF 34 */	blt .L_813D3FC8
/* 813D4098 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D409C | 3A 80 00 04 */	li r20, 0x4
/* 813D40A0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D40A4 | 38 63 90 18 */	subi r3, r3, 0x6fe8
/* 813D40A8 | 48 18 E8 F9 */	bl fn_815629A0
/* 813D40AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D40B0 | 7C 6F 1B 78 */	mr r15, r3
/* 813D40B4 | 41 80 00 2C */	blt .L_813D40E0
/* 813D40B8 | 80 6D AB 28 */	lwz r3, lbl_81698B68@sda21(r0)
/* 813D40BC | 3A 80 00 05 */	li r20, 0x5
/* 813D40C0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D40C4 | 38 63 90 2C */	subi r3, r3, 0x6fd4
/* 813D40C8 | 48 18 E8 D9 */	bl fn_815629A0
/* 813D40CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D40D0 | 7C 6F 1B 78 */	mr r15, r3
/* 813D40D4 | 41 80 00 0C */	blt .L_813D40E0
/* 813D40D8 | 39 E0 00 00 */	li r15, 0x0
/* 813D40DC | 48 00 00 A8 */	b .L_813D4184
.L_813D40E0:
/* 813D40E0 | 2C 14 00 03 */	cmpwi r20, 0x3
/* 813D40E4 | 41 82 00 60 */	beq .L_813D4144
/* 813D40E8 | 40 80 00 1C */	bge .L_813D4104
/* 813D40EC | 2C 14 00 01 */	cmpwi r20, 0x1
/* 813D40F0 | 41 82 00 34 */	beq .L_813D4124
/* 813D40F4 | 40 80 00 40 */	bge .L_813D4134
/* 813D40F8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 813D40FC | 40 80 00 18 */	bge .L_813D4114
/* 813D4100 | 48 00 00 70 */	b .L_813D4170
.L_813D4104:
/* 813D4104 | 2C 14 00 05 */	cmpwi r20, 0x5
/* 813D4108 | 41 82 00 5C */	beq .L_813D4164
/* 813D410C | 40 80 00 64 */	bge .L_813D4170
/* 813D4110 | 48 00 00 44 */	b .L_813D4154
.L_813D4114:
/* 813D4114 | 38 76 03 73 */	addi r3, r22, 0x373
/* 813D4118 | 4C C6 31 82 */	crclr cr1eq
/* 813D411C | 48 15 A5 85 */	bl OSReport
/* 813D4120 | 48 00 00 50 */	b .L_813D4170
.L_813D4124:
/* 813D4124 | 38 76 03 9A */	addi r3, r22, 0x39a
/* 813D4128 | 4C C6 31 82 */	crclr cr1eq
/* 813D412C | 48 15 A5 75 */	bl OSReport
/* 813D4130 | 48 00 00 40 */	b .L_813D4170
.L_813D4134:
/* 813D4134 | 38 76 03 C6 */	addi r3, r22, 0x3c6
/* 813D4138 | 4C C6 31 82 */	crclr cr1eq
/* 813D413C | 48 15 A5 65 */	bl OSReport
/* 813D4140 | 48 00 00 30 */	b .L_813D4170
.L_813D4144:
/* 813D4144 | 38 76 03 E4 */	addi r3, r22, 0x3e4
/* 813D4148 | 4C C6 31 82 */	crclr cr1eq
/* 813D414C | 48 15 A5 55 */	bl OSReport
/* 813D4150 | 48 00 00 20 */	b .L_813D4170
.L_813D4154:
/* 813D4154 | 38 76 03 FF */	addi r3, r22, 0x3ff
/* 813D4158 | 4C C6 31 82 */	crclr cr1eq
/* 813D415C | 48 15 A5 45 */	bl OSReport
/* 813D4160 | 48 00 00 10 */	b .L_813D4170
.L_813D4164:
/* 813D4164 | 38 76 04 1B */	addi r3, r22, 0x41b
/* 813D4168 | 4C C6 31 82 */	crclr cr1eq
/* 813D416C | 48 15 A5 35 */	bl OSReport
.L_813D4170:
/* 813D4170 | 80 8D AB 28 */	lwz r4, lbl_81698B68@sda21(r0)
/* 813D4174 | 7F E3 FB 78 */	mr r3, r31
/* 813D4178 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813D417C | 80 84 90 30 */	lwz r4, -0x6fd0(r4)
/* 813D4180 | 48 18 F6 0D */	bl fn_8156378C
.L_813D4184:
/* 813D4184 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 813D4188 | 41 80 04 2C */	blt .L_813D45B4
/* 813D418C | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 813D4190 | 40 82 01 34 */	bne .L_813D42C4
/* 813D4194 | 7F 23 CB 78 */	mr r3, r25
/* 813D4198 | 7F 44 D3 78 */	mr r4, r26
/* 813D419C | 38 A1 00 94 */	addi r5, r1, 0x94
/* 813D41A0 | 48 18 F6 35 */	bl fn_815637D4
/* 813D41A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D41A8 | 7C 70 1B 78 */	mr r16, r3
/* 813D41AC | 40 80 00 14 */	bge .L_813D41C0
/* 813D41B0 | 38 76 04 37 */	addi r3, r22, 0x437
/* 813D41B4 | 4C C6 31 82 */	crclr cr1eq
/* 813D41B8 | 48 15 A4 E9 */	bl OSReport
/* 813D41BC | 48 00 00 FC */	b .L_813D42B8
.L_813D41C0:
/* 813D41C0 | 88 C1 00 C9 */	lbz r6, 0xc9(r1)
/* 813D41C4 | 7F 23 CB 78 */	mr r3, r25
/* 813D41C8 | 7F 44 D3 78 */	mr r4, r26
/* 813D41CC | 38 A1 00 94 */	addi r5, r1, 0x94
/* 813D41D0 | 38 06 00 01 */	addi r0, r6, 0x1
/* 813D41D4 | 98 01 00 C9 */	stb r0, 0xc9(r1)
/* 813D41D8 | 48 18 F9 51 */	bl fn_81563B28
/* 813D41DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D41E0 | 7C 70 1B 78 */	mr r16, r3
/* 813D41E4 | 40 80 00 18 */	bge .L_813D41FC
/* 813D41E8 | 7E 04 83 78 */	mr r4, r16
/* 813D41EC | 38 76 04 56 */	addi r3, r22, 0x456
/* 813D41F0 | 4C C6 31 82 */	crclr cr1eq
/* 813D41F4 | 48 15 A4 AD */	bl OSReport
/* 813D41F8 | 48 00 00 C0 */	b .L_813D42B8
.L_813D41FC:
/* 813D41FC | 81 E1 00 BC */	lwz r15, 0xbc(r1)
/* 813D4200 | 48 16 1A 81 */	bl OSGetTime
/* 813D4204 | 3C C0 80 00 */	lis r6, 0x8000
/* 813D4208 | 38 A0 00 00 */	li r5, 0x0
/* 813D420C | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 813D4210 | 54 06 F0 BE */	srwi r6, r0, 2
/* 813D4214 | 48 22 53 FD */	bl __div2i
/* 813D4218 | 90 81 00 BC */	stw r4, 0xbc(r1)
/* 813D421C | 7F E3 FB 78 */	mr r3, r31
/* 813D4220 | 7F C4 F3 78 */	mr r4, r30
/* 813D4224 | 38 A1 00 94 */	addi r5, r1, 0x94
/* 813D4228 | 48 18 F9 01 */	bl fn_81563B28
/* 813D422C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4230 | 7C 70 1B 78 */	mr r16, r3
/* 813D4234 | 40 80 00 50 */	bge .L_813D4284
/* 813D4238 | 38 76 04 78 */	addi r3, r22, 0x478
/* 813D423C | 4C C6 31 82 */	crclr cr1eq
/* 813D4240 | 48 15 A4 61 */	bl OSReport
/* 813D4244 | 2C 10 FF FD */	cmpwi r16, -0x3
/* 813D4248 | 41 82 00 10 */	beq .L_813D4258
/* 813D424C | 88 61 00 C9 */	lbz r3, 0xc9(r1)
/* 813D4250 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813D4254 | 98 01 00 C9 */	stb r0, 0xc9(r1)
.L_813D4258:
/* 813D4258 | 91 E1 00 BC */	stw r15, 0xbc(r1)
/* 813D425C | 7F 23 CB 78 */	mr r3, r25
/* 813D4260 | 7F 44 D3 78 */	mr r4, r26
/* 813D4264 | 38 A1 00 94 */	addi r5, r1, 0x94
/* 813D4268 | 48 18 F8 C1 */	bl fn_81563B28
/* 813D426C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4270 | 40 80 00 48 */	bge .L_813D42B8
/* 813D4274 | 38 76 04 AE */	addi r3, r22, 0x4ae
/* 813D4278 | 4C C6 31 82 */	crclr cr1eq
/* 813D427C | 48 15 A4 25 */	bl OSReport
/* 813D4280 | 48 00 00 38 */	b .L_813D42B8
.L_813D4284:
/* 813D4284 | 7F E3 FB 78 */	mr r3, r31
/* 813D4288 | 7F C4 F3 78 */	mr r4, r30
/* 813D428C | 38 A1 00 94 */	addi r5, r1, 0x94
/* 813D4290 | 3B 80 00 01 */	li r28, 0x1
/* 813D4294 | 4B FF F1 91 */	bl CardSequence_813D3424
/* 813D4298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D429C | 7C 70 1B 78 */	mr r16, r3
/* 813D42A0 | 40 80 00 14 */	bge .L_813D42B4
/* 813D42A4 | 38 76 04 E3 */	addi r3, r22, 0x4e3
/* 813D42A8 | 4C C6 31 82 */	crclr cr1eq
/* 813D42AC | 48 15 A3 F5 */	bl OSReport
/* 813D42B0 | 48 00 00 08 */	b .L_813D42B8
.L_813D42B4:
/* 813D42B4 | 3A 00 00 00 */	li r16, 0x0
.L_813D42B8:
/* 813D42B8 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 813D42BC | 41 80 02 F8 */	blt .L_813D45B4
/* 813D42C0 | 48 00 02 C0 */	b .L_813D4580
.L_813D42C4:
/* 813D42C4 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813D42C8 | 40 82 02 B8 */	bne .L_813D4580
/* 813D42CC | 7F 23 CB 78 */	mr r3, r25
/* 813D42D0 | 7F 44 D3 78 */	mr r4, r26
/* 813D42D4 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D42D8 | 3A 00 00 00 */	li r16, 0x0
/* 813D42DC | 39 E0 00 00 */	li r15, 0x0
/* 813D42E0 | 48 18 F4 F5 */	bl fn_815637D4
/* 813D42E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D42E8 | 7C 71 1B 78 */	mr r17, r3
/* 813D42EC | 41 80 01 FC */	blt .L_813D44E8
/* 813D42F0 | 81 01 00 14 */	lwz r8, 0x14(r1)
/* 813D42F4 | 38 00 00 04 */	li r0, 0x4
/* 813D42F8 | A0 E1 00 18 */	lhz r7, 0x18(r1)
/* 813D42FC | 38 A1 00 58 */	addi r5, r1, 0x58
/* 813D4300 | 88 C1 00 1A */	lbz r6, 0x1a(r1)
/* 813D4304 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813D4308 | 88 61 00 1B */	lbz r3, 0x1b(r1)
/* 813D430C | 91 01 00 54 */	stw r8, 0x54(r1)
/* 813D4310 | B0 E1 00 58 */	sth r7, 0x58(r1)
/* 813D4314 | 98 C1 00 5A */	stb r6, 0x5a(r1)
/* 813D4318 | 98 61 00 5B */	stb r3, 0x5b(r1)
/* 813D431C | 7C 09 03 A6 */	mtctr r0
/* 813D4320 | 39 E0 00 01 */	li r15, 0x1
.L_813D4324:
/* 813D4324 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813D4328 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813D432C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813D4330 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813D4334 | 42 00 FF F0 */	bdnz .L_813D4324
/* 813D4338 | 82 41 00 3C */	lwz r18, 0x3c(r1)
/* 813D433C | 38 61 00 58 */	addi r3, r1, 0x58
/* 813D4340 | 82 21 00 40 */	lwz r17, 0x40(r1)
/* 813D4344 | 38 80 00 00 */	li r4, 0x0
/* 813D4348 | A1 81 00 44 */	lhz r12, 0x44(r1)
/* 813D434C | 38 A0 00 02 */	li r5, 0x2
/* 813D4350 | A1 61 00 46 */	lhz r11, 0x46(r1)
/* 813D4354 | 89 41 00 48 */	lbz r10, 0x48(r1)
/* 813D4358 | 89 21 00 49 */	lbz r9, 0x49(r1)
/* 813D435C | A1 01 00 4A */	lhz r8, 0x4a(r1)
/* 813D4360 | A0 E1 00 4C */	lhz r7, 0x4c(r1)
/* 813D4364 | A0 C1 00 4E */	lhz r6, 0x4e(r1)
/* 813D4368 | 80 01 00 50 */	lwz r0, 0x50(r1)
/* 813D436C | 92 41 00 7C */	stw r18, 0x7c(r1)
/* 813D4370 | 92 21 00 80 */	stw r17, 0x80(r1)
/* 813D4374 | B1 81 00 84 */	sth r12, 0x84(r1)
/* 813D4378 | B1 61 00 86 */	sth r11, 0x86(r1)
/* 813D437C | 99 41 00 88 */	stb r10, 0x88(r1)
/* 813D4380 | 99 21 00 89 */	stb r9, 0x89(r1)
/* 813D4384 | B1 01 00 8A */	sth r8, 0x8a(r1)
/* 813D4388 | B0 E1 00 8C */	sth r7, 0x8c(r1)
/* 813D438C | B0 C1 00 8E */	sth r6, 0x8e(r1)
/* 813D4390 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 813D4394 | 4B F5 BF A1 */	bl memset
/* 813D4398 | 38 61 00 54 */	addi r3, r1, 0x54
/* 813D439C | 38 80 00 00 */	li r4, 0x0
/* 813D43A0 | 38 A0 00 04 */	li r5, 0x4
/* 813D43A4 | 4B F5 BF 91 */	bl memset
.L_813D43A8:
/* 813D43A8 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813D43AC | 38 80 00 00 */	li r4, 0x0
/* 813D43B0 | 38 A0 00 20 */	li r5, 0x20
/* 813D43B4 | 4B F5 BF 81 */	bl memset
/* 813D43B8 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813D43BC | 38 96 03 40 */	addi r4, r22, 0x340
/* 813D43C0 | 7E 05 07 34 */	extsh r5, r16
/* 813D43C4 | 4C C6 31 82 */	crclr cr1eq
/* 813D43C8 | 48 22 C6 B9 */	bl sprintf
/* 813D43CC | 7F 23 CB 78 */	mr r3, r25
/* 813D43D0 | 7F 44 D3 78 */	mr r4, r26
/* 813D43D4 | 38 A1 00 54 */	addi r5, r1, 0x54
/* 813D43D8 | 48 18 F7 51 */	bl fn_81563B28
/* 813D43DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D43E0 | 7C 71 1B 78 */	mr r17, r3
/* 813D43E4 | 40 80 00 0C */	bge .L_813D43F0
/* 813D43E8 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 813D43EC | 40 82 00 FC */	bne .L_813D44E8
.L_813D43F0:
/* 813D43F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D43F4 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 813D43F8 | 41 82 00 10 */	beq .L_813D4408
/* 813D43FC | 7E 00 07 34 */	extsh r0, r16
/* 813D4400 | 2C 00 00 80 */	cmpwi r0, 0x80
/* 813D4404 | 41 80 FF A4 */	blt .L_813D43A8
.L_813D4408:
/* 813D4408 | 7F E3 FB 78 */	mr r3, r31
/* 813D440C | 7F C4 F3 78 */	mr r4, r30
/* 813D4410 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D4414 | 39 E0 00 02 */	li r15, 0x2
/* 813D4418 | 48 18 F7 11 */	bl fn_81563B28
/* 813D441C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4420 | 7C 71 1B 78 */	mr r17, r3
/* 813D4424 | 40 80 00 50 */	bge .L_813D4474
/* 813D4428 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813D442C | 40 82 00 20 */	bne .L_813D444C
/* 813D4430 | 7F 23 CB 78 */	mr r3, r25
/* 813D4434 | 7F 44 D3 78 */	mr r4, r26
/* 813D4438 | 48 18 F3 55 */	bl fn_8156378C
/* 813D443C | 7F 23 CB 78 */	mr r3, r25
/* 813D4440 | 7F 44 D3 78 */	mr r4, r26
/* 813D4444 | 4B FF E6 31 */	bl CardSequence_813D2A74
/* 813D4448 | 48 00 00 A0 */	b .L_813D44E8
.L_813D444C:
/* 813D444C | 7F 23 CB 78 */	mr r3, r25
/* 813D4450 | 7F 44 D3 78 */	mr r4, r26
/* 813D4454 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D4458 | 48 18 F6 D1 */	bl fn_81563B28
/* 813D445C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4460 | 40 80 00 88 */	bge .L_813D44E8
/* 813D4464 | 38 76 05 05 */	addi r3, r22, 0x505
/* 813D4468 | 4C C6 31 82 */	crclr cr1eq
/* 813D446C | 48 15 A2 35 */	bl OSReport
/* 813D4470 | 48 00 00 78 */	b .L_813D44E8
.L_813D4474:
/* 813D4474 | 7F 23 CB 78 */	mr r3, r25
/* 813D4478 | 7F 44 D3 78 */	mr r4, r26
/* 813D447C | 3B 80 00 01 */	li r28, 0x1
/* 813D4480 | 39 E0 00 03 */	li r15, 0x3
/* 813D4484 | 48 18 F3 09 */	bl fn_8156378C
/* 813D4488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D448C | 7C 71 1B 78 */	mr r17, r3
/* 813D4490 | 41 80 00 58 */	blt .L_813D44E8
/* 813D4494 | 7F 23 CB 78 */	mr r3, r25
/* 813D4498 | 7F 44 D3 78 */	mr r4, r26
/* 813D449C | 4B FF E5 D9 */	bl CardSequence_813D2A74
/* 813D44A0 | 7F E3 FB 78 */	mr r3, r31
/* 813D44A4 | 7F C4 F3 78 */	mr r4, r30
/* 813D44A8 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D44AC | 39 E0 00 04 */	li r15, 0x4
/* 813D44B0 | 48 18 F3 25 */	bl fn_815637D4
/* 813D44B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D44B8 | 7C 71 1B 78 */	mr r17, r3
/* 813D44BC | 41 80 00 2C */	blt .L_813D44E8
/* 813D44C0 | 7F E3 FB 78 */	mr r3, r31
/* 813D44C4 | 7F C4 F3 78 */	mr r4, r30
/* 813D44C8 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D44CC | 39 E0 00 05 */	li r15, 0x5
/* 813D44D0 | 4B FF EF 55 */	bl CardSequence_813D3424
/* 813D44D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D44D8 | 7C 71 1B 78 */	mr r17, r3
/* 813D44DC | 41 80 00 0C */	blt .L_813D44E8
/* 813D44E0 | 3A 20 00 00 */	li r17, 0x0
/* 813D44E4 | 48 00 00 94 */	b .L_813D4578
.L_813D44E8:
/* 813D44E8 | 2C 0F 00 03 */	cmpwi r15, 0x3
/* 813D44EC | 41 82 00 60 */	beq .L_813D454C
/* 813D44F0 | 40 80 00 1C */	bge .L_813D450C
/* 813D44F4 | 2C 0F 00 01 */	cmpwi r15, 0x1
/* 813D44F8 | 41 82 00 34 */	beq .L_813D452C
/* 813D44FC | 40 80 00 40 */	bge .L_813D453C
/* 813D4500 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 813D4504 | 40 80 00 18 */	bge .L_813D451C
/* 813D4508 | 48 00 00 70 */	b .L_813D4578
.L_813D450C:
/* 813D450C | 2C 0F 00 05 */	cmpwi r15, 0x5
/* 813D4510 | 41 82 00 5C */	beq .L_813D456C
/* 813D4514 | 40 80 00 64 */	bge .L_813D4578
/* 813D4518 | 48 00 00 44 */	b .L_813D455C
.L_813D451C:
/* 813D451C | 38 76 05 26 */	addi r3, r22, 0x526
/* 813D4520 | 4C C6 31 82 */	crclr cr1eq
/* 813D4524 | 48 15 A1 7D */	bl OSReport
/* 813D4528 | 48 00 00 50 */	b .L_813D4578
.L_813D452C:
/* 813D452C | 38 76 05 46 */	addi r3, r22, 0x546
/* 813D4530 | 4C C6 31 82 */	crclr cr1eq
/* 813D4534 | 48 15 A1 6D */	bl OSReport
/* 813D4538 | 48 00 00 40 */	b .L_813D4578
.L_813D453C:
/* 813D453C | 38 76 05 65 */	addi r3, r22, 0x565
/* 813D4540 | 4C C6 31 82 */	crclr cr1eq
/* 813D4544 | 48 15 A1 5D */	bl OSReport
/* 813D4548 | 48 00 00 30 */	b .L_813D4578
.L_813D454C:
/* 813D454C | 38 76 05 7C */	addi r3, r22, 0x57c
/* 813D4550 | 4C C6 31 82 */	crclr cr1eq
/* 813D4554 | 48 15 A1 4D */	bl OSReport
/* 813D4558 | 48 00 00 20 */	b .L_813D4578
.L_813D455C:
/* 813D455C | 38 76 05 93 */	addi r3, r22, 0x593
/* 813D4560 | 4C C6 31 82 */	crclr cr1eq
/* 813D4564 | 48 15 A1 3D */	bl OSReport
/* 813D4568 | 48 00 00 10 */	b .L_813D4578
.L_813D456C:
/* 813D456C | 38 76 04 E3 */	addi r3, r22, 0x4e3
/* 813D4570 | 4C C6 31 82 */	crclr cr1eq
/* 813D4574 | 48 15 A1 2D */	bl OSReport
.L_813D4578:
/* 813D4578 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 813D457C | 41 80 00 38 */	blt .L_813D45B4
.L_813D4580:
/* 813D4580 | 7F 23 CB 78 */	mr r3, r25
/* 813D4584 | 4B FF E5 BD */	bl CardSequence_813D2B40
/* 813D4588 | 7F E3 FB 78 */	mr r3, r31
/* 813D458C | 4B FF E5 B5 */	bl CardSequence_813D2B40
/* 813D4590 | 7F 23 CB 78 */	mr r3, r25
/* 813D4594 | 57 45 06 3E */	clrlwi r5, r26, 24
/* 813D4598 | 38 80 00 00 */	li r4, 0x0
/* 813D459C | 4B FF ED E5 */	bl CardSequence_813D3380
/* 813D45A0 | 7F E3 FB 78 */	mr r3, r31
/* 813D45A4 | 7F 64 DB 78 */	mr r4, r27
/* 813D45A8 | 57 C5 06 3E */	clrlwi r5, r30, 24
/* 813D45AC | 4B FF ED D5 */	bl CardSequence_813D3380
/* 813D45B0 | 48 00 00 CC */	b .L_813D467C
.L_813D45B4:
/* 813D45B4 | 6B 2F 00 01 */	xori r15, r25, 0x1
/* 813D45B8 | 7D E3 7B 78 */	mr r3, r15
/* 813D45BC | 48 18 A4 25 */	bl fn_8155E9E0
/* 813D45C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D45C4 | 7C 65 1B 78 */	mr r5, r3
/* 813D45C8 | 40 80 00 14 */	bge .L_813D45DC
/* 813D45CC | 7D E3 7B 78 */	mr r3, r15
/* 813D45D0 | 7F 64 DB 78 */	mr r4, r27
/* 813D45D4 | 4B FF EC D5 */	bl CardSequence_813D32A8
/* 813D45D8 | 48 00 00 68 */	b .L_813D4640
.L_813D45DC:
/* 813D45DC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D45E0 | 41 82 00 18 */	beq .L_813D45F8
/* 813D45E4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813D45E8 | 40 82 00 10 */	bne .L_813D45F8
/* 813D45EC | 7D E3 7B 78 */	mr r3, r15
/* 813D45F0 | 7F C4 07 34 */	extsh r4, r30
/* 813D45F4 | 48 18 F1 99 */	bl fn_8156378C
.L_813D45F8:
/* 813D45F8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813D45FC | 41 82 00 2C */	beq .L_813D4628
/* 813D4600 | 7D E3 7B 78 */	mr r3, r15
/* 813D4604 | 7F C4 07 34 */	extsh r4, r30
/* 813D4608 | 38 A1 01 54 */	addi r5, r1, 0x154
/* 813D460C | 48 18 F1 C9 */	bl fn_815637D4
/* 813D4610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4614 | 40 82 00 14 */	bne .L_813D4628
/* 813D4618 | 7D E3 7B 78 */	mr r3, r15
/* 813D461C | 7F C4 07 34 */	extsh r4, r30
/* 813D4620 | 38 A1 01 54 */	addi r5, r1, 0x154
/* 813D4624 | 4B FF EE 01 */	bl CardSequence_813D3424
.L_813D4628:
/* 813D4628 | 7D E3 7B 78 */	mr r3, r15
/* 813D462C | 4B FF E5 15 */	bl CardSequence_813D2B40
/* 813D4630 | 7D E3 7B 78 */	mr r3, r15
/* 813D4634 | 57 45 06 3E */	clrlwi r5, r26, 24
/* 813D4638 | 38 80 00 00 */	li r4, 0x0
/* 813D463C | 4B FF ED 45 */	bl CardSequence_813D3380
.L_813D4640:
/* 813D4640 | 7F 23 CB 78 */	mr r3, r25
/* 813D4644 | 48 18 A3 9D */	bl fn_8155E9E0
/* 813D4648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D464C | 7C 65 1B 78 */	mr r5, r3
/* 813D4650 | 40 80 00 14 */	bge .L_813D4664
/* 813D4654 | 7F 23 CB 78 */	mr r3, r25
/* 813D4658 | 7F 64 DB 78 */	mr r4, r27
/* 813D465C | 4B FF EC 4D */	bl CardSequence_813D32A8
/* 813D4660 | 48 00 00 1C */	b .L_813D467C
.L_813D4664:
/* 813D4664 | 7F 23 CB 78 */	mr r3, r25
/* 813D4668 | 4B FF E4 D9 */	bl CardSequence_813D2B40
/* 813D466C | 7F 23 CB 78 */	mr r3, r25
/* 813D4670 | 57 45 06 3E */	clrlwi r5, r26, 24
/* 813D4674 | 38 80 00 00 */	li r4, 0x0
/* 813D4678 | 4B FF ED 09 */	bl CardSequence_813D3380
.L_813D467C:
/* 813D467C | 39 61 01 E0 */	addi r11, r1, 0x1e0
/* 813D4680 | 48 22 4E 5D */	bl _restgpr_15
/* 813D4684 | 80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 813D4688 | 7C 08 03 A6 */	mtlr r0
/* 813D468C | 38 21 01 E0 */	addi r1, r1, 0x1e0
/* 813D4690 | 4E 80 00 20 */	blr
.endfn CardSequence_813D3D14

# 0x81652F68..0x81653520 | size: 0x5B8
.data
.balign 8

# .data:0x0 | 0x81652F68 | size: 0x70
.obj jumptable_81652F68, local
	.rel CardSequence_813D233C, .L_813D23C8
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D23C0
	.rel CardSequence_813D233C, .L_813D23B8
	.rel CardSequence_813D233C, .L_813D23B0
	.rel CardSequence_813D233C, .L_813D23A8
	.rel CardSequence_813D233C, .L_813D23A0
	.rel CardSequence_813D233C, .L_813D2398
	.rel CardSequence_813D233C, .L_813D2390
	.rel CardSequence_813D233C, .L_813D2388
	.rel CardSequence_813D233C, .L_813D2380
	.rel CardSequence_813D233C, .L_813D2378
	.rel CardSequence_813D233C, .L_813D2370
	.rel CardSequence_813D233C, .L_813D2368
	.rel CardSequence_813D233C, .L_813D23D0
	.rel CardSequence_813D233C, .L_813D2360
.endobj jumptable_81652F68

# .data:0x70 | 0x81652FD8 | size: 0x90
.obj gap_08_81652FD8_data, global
.hidden gap_08_81652FD8_data
	.4byte 0x72656164
	.4byte 0x79206F72
	.4byte 0x20657869
	.4byte 0x740A0043
	.4byte 0x61726420
	.4byte 0x6861736E
	.4byte 0x27742065
	.4byte 0x6E6F7567
	.4byte 0x68207370
	.4byte 0x6163650A
	.4byte 0x0057726F
	.4byte 0x6E672044
	.4byte 0x65766963
	.4byte 0x650A0042
	.4byte 0x726F6B65
	.4byte 0x6E204361
	.4byte 0x72640A00
	.4byte 0x4F746865
	.4byte 0x72204C61
	.4byte 0x6E677561
	.4byte 0x67650A00
	.4byte 0x44657461
	.4byte 0x63682043
	.4byte 0x6172640A
	.4byte 0x004F7468
	.4byte 0x65722045
	.4byte 0x72726F72
	.4byte 0x0A007365
	.4byte 0x7420736C
	.4byte 0x6F742073
	.4byte 0x74617465
	.4byte 0x203A2045
	.4byte 0x72726F72
	.4byte 0x436F6465
	.4byte 0x3A202564
	.4byte 0x0A000000
.endobj gap_08_81652FD8_data

# .data:0x100 | 0x81653068 | size: 0x70
.obj jumptable_81653068, local
	.rel probeCard__Q23ipl10memorycardFv, .L_813D24AC
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D252C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D24CC
	.rel probeCard__Q23ipl10memorycardFv, .L_813D24CC
	.rel probeCard__Q23ipl10memorycardFv, .L_813D24AC
	.rel probeCard__Q23ipl10memorycardFv, .L_813D250C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D254C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D24EC
	.rel probeCard__Q23ipl10memorycardFv, .L_813D256C
	.rel probeCard__Q23ipl10memorycardFv, .L_813D24AC
.endobj jumptable_81653068

# .data:0x170 | 0x816530D8 | size: 0x14
.obj lbl_816530D8, global
	.string "HEAP CREATE: %p %d\n"
.endobj lbl_816530D8

# .data:0x184 | 0x816530EC | size: 0x1D
.obj lbl_816530EC, global
	.string "initCardThread successfully\n"
.endobj lbl_816530EC

# .data:0x1A1 | 0x81653109 | size: 0x113
.obj lbl_81653109, global
	.4byte 0x48454150
	.4byte 0x20444553
	.4byte 0x54524F59
	.4byte 0x0A004765
	.4byte 0x74204D65
	.4byte 0x6D73697A
	.4byte 0x65204572
	.4byte 0x726F722D
	.4byte 0x25643A20
	.4byte 0x25643A20
	.4byte 0x25640A00
	.4byte 0x47657420
	.4byte 0x53656374
	.4byte 0x6F722045
	.4byte 0x72726F72
	.4byte 0x2D202564
	.4byte 0x3A202564
	.4byte 0x0A004765
	.4byte 0x74204672
	.4byte 0x6565426C
	.4byte 0x6F636B73
	.4byte 0x20457272
	.4byte 0x6F722D20
	.4byte 0x25642025
	.4byte 0x640A0025
	.4byte 0x643A2564
	.4byte 0x62797465
	.4byte 0x73207365
	.4byte 0x63746F72
	.4byte 0x73697A65
	.4byte 0x202C2025
	.4byte 0x6420626C
	.4byte 0x6F636B73
	.4byte 0x202C2025
	.4byte 0x64206672
	.4byte 0x6565456E
	.4byte 0x7472790A
	.4byte 0x00434152
	.4byte 0x44205448
	.4byte 0x52454144
	.4byte 0x3A204D65
	.4byte 0x73736167
	.4byte 0x65207265
	.4byte 0x63656976
	.4byte 0x65642025
	.4byte 0x640A0063
	.4byte 0x61726420
	.4byte 0x74687265
	.4byte 0x61642076
	.4byte 0x616C6964
	.4byte 0x20737461
	.4byte 0x74652063
	.4byte 0x68616E67
	.4byte 0x65643A25
	.4byte 0x640A0042
	.4byte 0x726F6B65
	.4byte 0x6E204669
	.4byte 0x6C650053
	.4byte 0x6C6F7420
	.4byte 0x25630A00
	.4byte 0x2564202D
	.4byte 0x2025733A
	.4byte 0x20256420
	.4byte 0x626C6F63
	.4byte 0x6B730A00
	.4byte 0x4D6F756E
	.4byte 0x74457272
	.4byte 0x6F720A00
	.byte 0x00, 0x00, 0x00
.endobj lbl_81653109

# .data:0x2B4 | 0x8165321C | size: 0x34
.obj jumptable_8165321C, local
	.rel CardSequence_813D2C8C, .L_813D2D6C
	.rel CardSequence_813D2C8C, .L_813D2F78
	.rel CardSequence_813D2C8C, .L_813D2FCC
	.rel CardSequence_813D2C8C, .L_813D2FE0
	.rel CardSequence_813D2C8C, .L_813D2FF4
	.rel CardSequence_813D2C8C, .L_813D311C
	.rel CardSequence_813D2C8C, .L_813D311C
	.rel CardSequence_813D2C8C, .L_813D311C
	.rel CardSequence_813D2C8C, .L_813D311C
	.rel CardSequence_813D2C8C, .L_813D2F64
	.rel CardSequence_813D2C8C, .L_813D2D34
	.rel CardSequence_813D2C8C, .L_813D2D64
	.rel CardSequence_813D2C8C, .L_813D3050
.endobj jumptable_8165321C

# .data:0x2E8 | 0x81653250 | size: 0x21
.obj lbl_81653250, global
	.string "CardThread:Broken Card Repaired\n"
.endobj lbl_81653250

# .data:0x309 | 0x81653271 | size: 0x18
.obj lbl_81653271, global
	.string "DEBUG: UnmountCard %d \n"
.endobj lbl_81653271

# .data:0x321 | 0x81653289 | size: 0x292
.obj lbl_81653289, global
	.string "DEBUG: CardThread error %d %d\n\000Broken File%03d\000Can't Create temp File with Error.\000Can't get status of Copy source File.\n\000Can't get sector size of Copy source card.\n\000Can't Open Copy source File.\n\000Can't read or write data.\n\000Can't Close Copy src File.\n\000Can't Close Copy dst File.\n\000Can't get status for src file\n\000Can't set status for src file %d\n\000Can't set status for dst file (src file copyTimes--)\n\000Can't set status for src file(src file copyTimes--)\n\000Can't read icon for move dstfile\n\000Can't repair src file - carddir\n\000Cant' get status for src file.\n\000Can't set status for src file\n\000Can't rename dst file\n\000Can't Delete src file\n\000Cant' get status for dst file.\n"
.endobj lbl_81653289

# .data:0x5B3 | 0x8165351B | size: 0x5
.obj gap_08_8165351B_data, global
.hidden gap_08_8165351B_data
	.4byte 0x00000000
	.byte 0x00
.endobj gap_08_8165351B_data

# 0x81696CF8..0x81696D00 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696CF8 | size: 0x4
.obj lbl_81696CF8, global
	.4byte 0x41420000
.endobj lbl_81696CF8

# .sdata:0x4 | 0x81696CFC | size: 0x4
.obj gap_11_81696CFC_sdata, global
.hidden gap_11_81696CFC_sdata
	.4byte 0x00000000
.endobj gap_11_81696CFC_sdata

# 0x81698B68..0x81698B70 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B68 | size: 0x4
.obj lbl_81698B68, global
	.skip 0x4
.endobj lbl_81698B68

# .sbss:0x4 | 0x81698B6C | size: 0x4
.obj gap_12_81698B6C_sbss, global
.hidden gap_12_81698B6C_sbss
	.skip 0x4
.endobj gap_12_81698B6C_sbss
