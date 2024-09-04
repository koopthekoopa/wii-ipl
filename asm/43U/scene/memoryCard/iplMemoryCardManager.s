.include "macros.inc"
.file "iplMemoryCardManager.cpp"

# 0x813CD034..0x813CE548 | size: 0x1514
.text
.balign 4

# .text:0x0 | 0x813CD034 | size: 0x78
.fn iplMemoryCardManager_813CD034, global
/* 813CD034 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CD038 | 81 03 00 08 */	lwz r8, 0x8(r3)
/* 813CD03C | 80 E4 00 0C */	lwz r7, 0xc(r4)
/* 813CD040 | 6C 06 80 00 */	xoris r6, r0, 0x8000
/* 813CD044 | 81 23 00 0C */	lwz r9, 0xc(r3)
/* 813CD048 | 6D 05 80 00 */	xoris r5, r8, 0x8000
/* 813CD04C | 7C 09 38 10 */	subfc r0, r9, r7
/* 813CD050 | 7C A5 31 10 */	subfe r5, r5, r6
/* 813CD054 | 7C A6 31 10 */	subfe r5, r6, r6
/* 813CD058 | 7C A5 00 D1 */	neg. r5, r5
/* 813CD05C | 41 82 00 0C */	beq .L_813CD068
/* 813CD060 | 38 60 00 01 */	li r3, 0x1
/* 813CD064 | 4E 80 00 20 */	blr
.L_813CD068:
/* 813CD068 | 6D 00 80 00 */	xoris r0, r8, 0x8000
/* 813CD06C | 7C A7 48 10 */	subfc r5, r7, r9
/* 813CD070 | 7C A6 01 10 */	subfe r5, r6, r0
/* 813CD074 | 7C A0 01 10 */	subfe r5, r0, r0
/* 813CD078 | 7C A5 00 D1 */	neg. r5, r5
/* 813CD07C | 41 82 00 0C */	beq .L_813CD088
/* 813CD080 | 38 60 FF FF */	li r3, -0x1
/* 813CD084 | 4E 80 00 20 */	blr
.L_813CD088:
/* 813CD088 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813CD08C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813CD090 | 7C 03 00 40 */	cmplw r3, r0
/* 813CD094 | 40 81 00 0C */	ble .L_813CD0A0
/* 813CD098 | 38 60 00 01 */	li r3, 0x1
/* 813CD09C | 4E 80 00 20 */	blr
.L_813CD0A0:
/* 813CD0A0 | 7C 00 18 10 */	subfc r0, r0, r3
/* 813CD0A4 | 7C 60 01 10 */	subfe r3, r0, r0
/* 813CD0A8 | 4E 80 00 20 */	blr
.endfn iplMemoryCardManager_813CD034

# .text:0x78 | 0x813CD0AC | size: 0x4C
# ipl::scene::MemoryCardManager::calc()
.fn calc__Q33ipl5scene17MemoryCardManagerFv, global
/* 813CD0AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD0B0 | 7C 08 02 A6 */	mflr r0
/* 813CD0B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD0B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD0BC | 7C 7F 1B 78 */	mr r31, r3
/* 813CD0C0 | 48 00 53 19 */	bl probeCard__Q23ipl10memorycardFv
/* 813CD0C4 | 7F E3 FB 78 */	mr r3, r31
/* 813CD0C8 | 38 80 00 00 */	li r4, 0x0
/* 813CD0CC | 48 00 0B E1 */	bl update_change_cardstate__Q33ipl5scene17MemoryCardManagerFUc
/* 813CD0D0 | 7F E3 FB 78 */	mr r3, r31
/* 813CD0D4 | 38 80 00 01 */	li r4, 0x1
/* 813CD0D8 | 48 00 0B D5 */	bl update_change_cardstate__Q33ipl5scene17MemoryCardManagerFUc
/* 813CD0DC | 7F E3 FB 78 */	mr r3, r31
/* 813CD0E0 | 48 00 09 11 */	bl update_icon_anm__Q33ipl5scene17MemoryCardManagerFv
/* 813CD0E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD0E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD0EC | 7C 08 03 A6 */	mtlr r0
/* 813CD0F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD0F4 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene17MemoryCardManagerFv

# .text:0xC4 | 0x813CD0F8 | size: 0x44
# ipl::scene::MemoryCardManager::isSlotReady(unsigned char)
.fn isSlotReady__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CD0F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD0FC | 7C 08 02 A6 */	mflr r0
/* 813CD100 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD104 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD108 | 7C 9F 23 78 */	mr r31, r4
/* 813CD10C | 48 00 4F 19 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CD110 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CD114 | 7C 63 02 14 */	add r3, r3, r0
/* 813CD118 | A8 63 00 02 */	lha r3, 0x2(r3)
/* 813CD11C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD120 | 38 03 FF FC */	subi r0, r3, 0x4
/* 813CD124 | 7C 00 00 34 */	cntlzw r0, r0
/* 813CD128 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813CD12C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD130 | 7C 08 03 A6 */	mtlr r0
/* 813CD134 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD138 | 4E 80 00 20 */	blr
.endfn isSlotReady__Q33ipl5scene17MemoryCardManagerFUc

# .text:0x108 | 0x813CD13C | size: 0x40
# ipl::scene::MemoryCardManager::isSlotNoCard(unsigned char)
.fn isSlotNoCard__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CD13C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD140 | 7C 08 02 A6 */	mflr r0
/* 813CD144 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD148 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD14C | 7C 9F 23 78 */	mr r31, r4
/* 813CD150 | 48 00 4E D5 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CD154 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CD158 | 7C 63 02 14 */	add r3, r3, r0
/* 813CD15C | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD160 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD164 | 7C 00 00 34 */	cntlzw r0, r0
/* 813CD168 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813CD16C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD170 | 7C 08 03 A6 */	mtlr r0
/* 813CD174 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD178 | 4E 80 00 20 */	blr
.endfn isSlotNoCard__Q33ipl5scene17MemoryCardManagerFUc

# .text:0x148 | 0x813CD17C | size: 0xC8
# ipl::scene::MemoryCardManager::isSlotWrongDevice(unsigned char)
.fn isSlotWrongDevice__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CD17C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD180 | 7C 08 02 A6 */	mflr r0
/* 813CD184 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD188 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD18C | 7C 9F 23 78 */	mr r31, r4
/* 813CD190 | 48 00 4E 95 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CD194 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CD198 | 38 80 00 01 */	li r4, 0x1
/* 813CD19C | 38 A0 00 01 */	li r5, 0x1
/* 813CD1A0 | 38 C0 00 01 */	li r6, 0x1
/* 813CD1A4 | 7C 63 02 14 */	add r3, r3, r0
/* 813CD1A8 | 38 E0 00 01 */	li r7, 0x1
/* 813CD1AC | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD1B0 | 39 00 00 01 */	li r8, 0x1
/* 813CD1B4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813CD1B8 | 41 82 00 14 */	beq .L_813CD1CC
/* 813CD1BC | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD1C0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813CD1C4 | 41 82 00 08 */	beq .L_813CD1CC
/* 813CD1C8 | 39 00 00 00 */	li r8, 0x0
.L_813CD1CC:
/* 813CD1CC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 813CD1D0 | 40 82 00 14 */	bne .L_813CD1E4
/* 813CD1D4 | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD1D8 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813CD1DC | 41 82 00 08 */	beq .L_813CD1E4
/* 813CD1E0 | 38 E0 00 00 */	li r7, 0x0
.L_813CD1E4:
/* 813CD1E4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813CD1E8 | 40 82 00 14 */	bne .L_813CD1FC
/* 813CD1EC | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD1F0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813CD1F4 | 41 82 00 08 */	beq .L_813CD1FC
/* 813CD1F8 | 38 C0 00 00 */	li r6, 0x0
.L_813CD1FC:
/* 813CD1FC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813CD200 | 40 82 00 14 */	bne .L_813CD214
/* 813CD204 | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD208 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813CD20C | 41 82 00 08 */	beq .L_813CD214
/* 813CD210 | 38 A0 00 00 */	li r5, 0x0
.L_813CD214:
/* 813CD214 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813CD218 | 40 82 00 14 */	bne .L_813CD22C
/* 813CD21C | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD220 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813CD224 | 41 82 00 08 */	beq .L_813CD22C
/* 813CD228 | 38 80 00 00 */	li r4, 0x0
.L_813CD22C:
/* 813CD22C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD230 | 7C 83 23 78 */	mr r3, r4
/* 813CD234 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD238 | 7C 08 03 A6 */	mtlr r0
/* 813CD23C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD240 | 4E 80 00 20 */	blr
.endfn isSlotWrongDevice__Q33ipl5scene17MemoryCardManagerFUc

# .text:0x210 | 0x813CD244 | size: 0xCC
# ipl::scene::MemoryCardManager::sort_file_array(unsigned char)
.fn sort_file_array__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CD244 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD248 | 7C 08 02 A6 */	mflr r0
/* 813CD24C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD250 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD254 | 7C 7F 1B 78 */	mr r31, r3
/* 813CD258 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CD25C | 7C 9E 23 78 */	mr r30, r4
/* 813CD260 | 48 00 4D B9 */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CD264 | 1C 9E 05 F4 */	mulli r4, r30, 0x5f4
/* 813CD268 | 39 80 00 00 */	li r12, 0x0
/* 813CD26C | 38 00 00 7F */	li r0, 0x7f
/* 813CD270 | 7D 85 63 78 */	mr r5, r12
/* 813CD274 | 7C E3 22 14 */	add r7, r3, r4
/* 813CD278 | 7D 86 63 78 */	mr r6, r12
/* 813CD27C | 1D 7E 07 F0 */	mulli r11, r30, 0x7f0
/* 813CD280 | 38 60 00 00 */	li r3, 0x0
/* 813CD284 | 38 80 00 00 */	li r4, 0x0
/* 813CD288 | 7D 1F 5A 14 */	add r8, r31, r11
/* 813CD28C | 7C 09 03 A6 */	mtctr r0
.L_813CD290:
/* 813CD290 | 7C 07 22 2E */	lhzx r0, r7, r4
/* 813CD294 | 7D 27 22 14 */	add r9, r7, r4
/* 813CD298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD29C | 41 82 00 1C */	beq .L_813CD2B8
/* 813CD2A0 | 7D 48 1A 14 */	add r10, r8, r3
/* 813CD2A4 | 91 8A 00 08 */	stw r12, 0x8(r10)
/* 813CD2A8 | 80 09 00 08 */	lwz r0, 0x8(r9)
/* 813CD2AC | 90 0A 00 14 */	stw r0, 0x14(r10)
/* 813CD2B0 | 90 CA 00 10 */	stw r6, 0x10(r10)
/* 813CD2B4 | 48 00 00 18 */	b .L_813CD2CC
.L_813CD2B8:
/* 813CD2B8 | 7D 28 1A 14 */	add r9, r8, r3
/* 813CD2BC | 20 0C FF FF */	subfic r0, r12, -0x1
/* 813CD2C0 | 91 89 00 08 */	stw r12, 0x8(r9)
/* 813CD2C4 | 90 09 00 14 */	stw r0, 0x14(r9)
/* 813CD2C8 | 90 A9 00 10 */	stw r5, 0x10(r9)
.L_813CD2CC:
/* 813CD2CC | 39 8C 00 01 */	addi r12, r12, 0x1
/* 813CD2D0 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CD2D4 | 38 84 00 0C */	addi r4, r4, 0xc
/* 813CD2D8 | 42 00 FF B8 */	bdnz .L_813CD290
/* 813CD2DC | 7C 7F 5A 14 */	add r3, r31, r11
/* 813CD2E0 | 3C C0 81 3D */	lis r6, iplMemoryCardManager_813CD034@ha
/* 813CD2E4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813CD2E8 | 38 80 00 7F */	li r4, 0x7f
/* 813CD2EC | 38 C6 D0 34 */	addi r6, r6, iplMemoryCardManager_813CD034@l
/* 813CD2F0 | 38 A0 00 10 */	li r5, 0x10
/* 813CD2F4 | 48 23 38 5D */	bl qsort
/* 813CD2F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD2FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD300 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CD304 | 7C 08 03 A6 */	mtlr r0
/* 813CD308 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD30C | 4E 80 00 20 */	blr
.endfn sort_file_array__Q33ipl5scene17MemoryCardManagerFUc

# .text:0x2DC | 0x813CD310 | size: 0x98
# ipl::scene::MemoryCardManager::sendCardCmdMove(unsigned char, short)
.fn sendCardCmdMove__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CD310 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CD314 | 7C 08 02 A6 */	mflr r0
/* 813CD318 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CD31C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD320 | 48 22 C1 A9 */	bl _savegpr_29
/* 813CD324 | 1C 04 07 F0 */	mulli r0, r4, 0x7f0
/* 813CD328 | 7C 9E 23 78 */	mr r30, r4
/* 813CD32C | 54 A5 20 36 */	slwi r5, r5, 4
/* 813CD330 | 3C C3 00 01 */	addis r6, r3, 0x1
/* 813CD334 | 7C 83 02 14 */	add r4, r3, r0
/* 813CD338 | 7C 7D 1B 78 */	mr r29, r3
/* 813CD33C | 7C 84 2A 14 */	add r4, r4, r5
/* 813CD340 | 38 00 00 02 */	li r0, 0x2
/* 813CD344 | 83 E4 00 08 */	lwz r31, 0x8(r4)
/* 813CD348 | 7F C4 F3 78 */	mr r4, r30
/* 813CD34C | 38 A0 00 00 */	li r5, 0x0
/* 813CD350 | 90 06 69 34 */	stw r0, 0x6934(r6)
/* 813CD354 | 48 00 01 7D */	bl isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl
/* 813CD358 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD35C | 41 82 00 28 */	beq .L_813CD384
/* 813CD360 | 7F C3 F3 78 */	mr r3, r30
/* 813CD364 | 7F E4 07 34 */	extsh r4, r31
/* 813CD368 | 48 00 4D DD */	bl sendCardMoveCmd__Q23ipl10memorycardFUcs
/* 813CD36C | 3C 7D 00 01 */	addis r3, r29, 0x1
/* 813CD370 | 38 80 FF EB */	li r4, -0x15
/* 813CD374 | 38 00 00 03 */	li r0, 0x3
/* 813CD378 | 90 83 69 30 */	stw r4, 0x6930(r3)
/* 813CD37C | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CD380 | 48 00 00 10 */	b .L_813CD390
.L_813CD384:
/* 813CD384 | 3C 7D 00 01 */	addis r3, r29, 0x1
/* 813CD388 | 38 00 FF E9 */	li r0, -0x17
/* 813CD38C | 90 03 69 30 */	stw r0, 0x6930(r3)
.L_813CD390:
/* 813CD390 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD394 | 48 22 C1 81 */	bl _restgpr_29
/* 813CD398 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CD39C | 7C 08 03 A6 */	mtlr r0
/* 813CD3A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CD3A4 | 4E 80 00 20 */	blr
.endfn sendCardCmdMove__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x374 | 0x813CD3A8 | size: 0x88
# ipl::scene::MemoryCardManager::sendCardCmdCopy(unsigned char, short)
.fn sendCardCmdCopy__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CD3A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CD3AC | 7C 08 02 A6 */	mflr r0
/* 813CD3B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CD3B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD3B8 | 48 22 C1 11 */	bl _savegpr_29
/* 813CD3BC | 1C C4 07 F0 */	mulli r6, r4, 0x7f0
/* 813CD3C0 | 54 A0 20 36 */	slwi r0, r5, 4
/* 813CD3C4 | 7C 9E 23 78 */	mr r30, r4
/* 813CD3C8 | 7C 7D 1B 78 */	mr r29, r3
/* 813CD3CC | 7C A3 32 14 */	add r5, r3, r6
/* 813CD3D0 | 7C C5 02 14 */	add r6, r5, r0
/* 813CD3D4 | 83 E6 00 08 */	lwz r31, 0x8(r6)
/* 813CD3D8 | 38 A0 00 00 */	li r5, 0x0
/* 813CD3DC | 48 00 00 F5 */	bl isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl
/* 813CD3E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD3E4 | 41 82 00 28 */	beq .L_813CD40C
/* 813CD3E8 | 7F C3 F3 78 */	mr r3, r30
/* 813CD3EC | 7F E4 07 34 */	extsh r4, r31
/* 813CD3F0 | 48 00 4D 01 */	bl sendCardCopyCmd__Q23ipl10memorycardFUcs
/* 813CD3F4 | 3C 7D 00 01 */	addis r3, r29, 0x1
/* 813CD3F8 | 38 80 FF EB */	li r4, -0x15
/* 813CD3FC | 38 00 00 02 */	li r0, 0x2
/* 813CD400 | 90 83 69 30 */	stw r4, 0x6930(r3)
/* 813CD404 | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CD408 | 48 00 00 10 */	b .L_813CD418
.L_813CD40C:
/* 813CD40C | 3C 7D 00 01 */	addis r3, r29, 0x1
/* 813CD410 | 38 00 FF E9 */	li r0, -0x17
/* 813CD414 | 90 03 69 30 */	stw r0, 0x6930(r3)
.L_813CD418:
/* 813CD418 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD41C | 48 22 C0 F9 */	bl _restgpr_29
/* 813CD420 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CD424 | 7C 08 03 A6 */	mtlr r0
/* 813CD428 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CD42C | 4E 80 00 20 */	blr
.endfn sendCardCmdCopy__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x3FC | 0x813CD430 | size: 0x5C
# ipl::scene::MemoryCardManager::sendCardCmdDelete(unsigned char, short)
.fn sendCardCmdDelete__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CD430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD434 | 7C 08 02 A6 */	mflr r0
/* 813CD438 | 1C C4 07 F0 */	mulli r6, r4, 0x7f0
/* 813CD43C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD440 | 54 A0 20 36 */	slwi r0, r5, 4
/* 813CD444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD448 | 7C 7F 1B 78 */	mr r31, r3
/* 813CD44C | 7C 83 23 78 */	mr r3, r4
/* 813CD450 | 7C 9F 32 14 */	add r4, r31, r6
/* 813CD454 | 7C 84 02 14 */	add r4, r4, r0
/* 813CD458 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CD45C | 7C 04 07 34 */	extsh r4, r0
/* 813CD460 | 48 00 4D 39 */	bl sendCardDeleteCmd__Q23ipl10memorycardFUcs
/* 813CD464 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813CD468 | 38 80 FF EB */	li r4, -0x15
/* 813CD46C | 38 00 00 04 */	li r0, 0x4
/* 813CD470 | 90 83 69 30 */	stw r4, 0x6930(r3)
/* 813CD474 | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CD478 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD47C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD480 | 7C 08 03 A6 */	mtlr r0
/* 813CD484 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD488 | 4E 80 00 20 */	blr
.endfn sendCardCmdDelete__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x458 | 0x813CD48C | size: 0x44
# ipl::scene::MemoryCardManager::sendCardCmdFormat(unsigned char)
.fn sendCardCmdFormat__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CD48C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD490 | 7C 08 02 A6 */	mflr r0
/* 813CD494 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD498 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD49C | 7C 7F 1B 78 */	mr r31, r3
/* 813CD4A0 | 7C 83 23 78 */	mr r3, r4
/* 813CD4A4 | 48 00 4B FD */	bl sendCardFormatCmd__Q23ipl10memorycardFUc
/* 813CD4A8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813CD4AC | 38 80 FF EB */	li r4, -0x15
/* 813CD4B0 | 38 00 00 01 */	li r0, 0x1
/* 813CD4B4 | 90 83 69 30 */	stw r4, 0x6930(r3)
/* 813CD4B8 | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CD4BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD4C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD4C4 | 7C 08 03 A6 */	mtlr r0
/* 813CD4C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD4CC | 4E 80 00 20 */	blr
.endfn sendCardCmdFormat__Q33ipl5scene17MemoryCardManagerFUc

# .text:0x49C | 0x813CD4D0 | size: 0x70
# ipl::scene::MemoryCardManager::isDistSlot(unsigned char, long*)
.fn isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl, global
/* 813CD4D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CD4D4 | 7C 08 02 A6 */	mflr r0
/* 813CD4D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD4DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD4E0 | 68 9F 00 01 */	xori r31, r4, 0x1
/* 813CD4E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CD4E8 | 7C BE 2B 78 */	mr r30, r5
/* 813CD4EC | 48 00 4B 39 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CD4F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813CD4F4 | 41 82 00 14 */	beq .L_813CD508
/* 813CD4F8 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CD4FC | 7C 83 02 14 */	add r4, r3, r0
/* 813CD500 | A8 04 00 02 */	lha r0, 0x2(r4)
/* 813CD504 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_813CD508:
/* 813CD508 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CD50C | 7C 63 02 14 */	add r3, r3, r0
/* 813CD510 | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CD514 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813CD518 | 40 82 00 0C */	bne .L_813CD524
/* 813CD51C | 38 60 00 01 */	li r3, 0x1
/* 813CD520 | 48 00 00 08 */	b .L_813CD528
.L_813CD524:
/* 813CD524 | 38 60 00 00 */	li r3, 0x0
.L_813CD528:
/* 813CD528 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD52C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD530 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CD534 | 7C 08 03 A6 */	mtlr r0
/* 813CD538 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD53C | 4E 80 00 20 */	blr
.endfn isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl

# .text:0x50C | 0x813CD540 | size: 0x1D8
# ipl::scene::MemoryCardManager::isMoveEnable(unsigned char, unsigned long, long*)
.fn isMoveEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl, global
/* 813CD540 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CD544 | 7C 08 02 A6 */	mflr r0
/* 813CD548 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CD54C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CD550 | 48 22 BF 69 */	bl _savegpr_25
/* 813CD554 | 7C 79 1B 78 */	mr r25, r3
/* 813CD558 | 7C 9A 23 78 */	mr r26, r4
/* 813CD55C | 7C BC 2B 78 */	mr r28, r5
/* 813CD560 | 7C DB 33 78 */	mr r27, r6
/* 813CD564 | 48 00 4A B5 */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CD568 | 7C 7E 1B 78 */	mr r30, r3
/* 813CD56C | 48 00 4A B9 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CD570 | 1C 9A 07 F0 */	mulli r4, r26, 0x7f0
/* 813CD574 | 57 80 20 36 */	slwi r0, r28, 4
/* 813CD578 | 7C 7F 1B 78 */	mr r31, r3
/* 813CD57C | 7F 23 CB 78 */	mr r3, r25
/* 813CD580 | 7C 99 22 14 */	add r4, r25, r4
/* 813CD584 | 3B 80 00 00 */	li r28, 0x0
/* 813CD588 | 7C A4 02 14 */	add r5, r4, r0
/* 813CD58C | 83 A5 00 08 */	lwz r29, 0x8(r5)
/* 813CD590 | 7F 44 D3 78 */	mr r4, r26
/* 813CD594 | 38 A0 00 00 */	li r5, 0x0
/* 813CD598 | 4B FF FF 39 */	bl isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl
/* 813CD59C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD5A0 | 41 82 00 78 */	beq .L_813CD618
/* 813CD5A4 | 1C 1A 05 F4 */	mulli r0, r26, 0x5f4
/* 813CD5A8 | 1C 7D 00 0C */	mulli r3, r29, 0xc
/* 813CD5AC | 7C 1E 02 14 */	add r0, r30, r0
/* 813CD5B0 | 7C A0 1A 14 */	add r5, r0, r3
/* 813CD5B4 | 88 05 00 05 */	lbz r0, 0x5(r5)
/* 813CD5B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD5BC | 41 82 00 5C */	beq .L_813CD618
/* 813CD5C0 | 6B 40 00 01 */	xori r0, r26, 0x1
/* 813CD5C4 | 1C 60 00 14 */	mulli r3, r0, 0x14
/* 813CD5C8 | 1C 1A 00 14 */	mulli r0, r26, 0x14
/* 813CD5CC | 7C 9F 1A 14 */	add r4, r31, r3
/* 813CD5D0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CD5D4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813CD5D8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CD5DC | 7C 03 00 40 */	cmplw r3, r0
/* 813CD5E0 | 40 82 00 38 */	bne .L_813CD618
/* 813CD5E4 | A0 64 00 10 */	lhz r3, 0x10(r4)
/* 813CD5E8 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 813CD5EC | 7C 03 00 40 */	cmplw r3, r0
/* 813CD5F0 | 41 80 00 28 */	blt .L_813CD618
/* 813CD5F4 | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 813CD5F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD5FC | 41 82 00 1C */	beq .L_813CD618
/* 813CD600 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 813CD604 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD608 | 40 82 00 10 */	bne .L_813CD618
/* 813CD60C | 3B A0 FF EB */	li r29, -0x15
/* 813CD610 | 3B 80 00 01 */	li r28, 0x1
/* 813CD614 | 48 00 00 DC */	b .L_813CD6F0
.L_813CD618:
/* 813CD618 | 7F 23 CB 78 */	mr r3, r25
/* 813CD61C | 7F 44 D3 78 */	mr r4, r26
/* 813CD620 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813CD624 | 4B FF FE AD */	bl isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl
/* 813CD628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD62C | 40 82 00 40 */	bne .L_813CD66C
/* 813CD630 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813CD634 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD638 | 40 82 00 0C */	bne .L_813CD644
/* 813CD63C | 3B A0 FF E9 */	li r29, -0x17
/* 813CD640 | 48 00 00 B0 */	b .L_813CD6F0
.L_813CD644:
/* 813CD644 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813CD648 | 41 82 00 14 */	beq .L_813CD65C
/* 813CD64C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813CD650 | 41 82 00 0C */	beq .L_813CD65C
/* 813CD654 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813CD658 | 40 82 00 0C */	bne .L_813CD664
.L_813CD65C:
/* 813CD65C | 3B A0 FF EA */	li r29, -0x16
/* 813CD660 | 48 00 00 90 */	b .L_813CD6F0
.L_813CD664:
/* 813CD664 | 3B A0 FF E4 */	li r29, -0x1c
/* 813CD668 | 48 00 00 88 */	b .L_813CD6F0
.L_813CD66C:
/* 813CD66C | 1C 1A 05 F4 */	mulli r0, r26, 0x5f4
/* 813CD670 | 1C 7D 00 0C */	mulli r3, r29, 0xc
/* 813CD674 | 7C 1E 02 14 */	add r0, r30, r0
/* 813CD678 | 7C A0 1A 14 */	add r5, r0, r3
/* 813CD67C | 88 05 00 05 */	lbz r0, 0x5(r5)
/* 813CD680 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD684 | 40 82 00 0C */	bne .L_813CD690
/* 813CD688 | 3B A0 FF E6 */	li r29, -0x1a
/* 813CD68C | 48 00 00 64 */	b .L_813CD6F0
.L_813CD690:
/* 813CD690 | 6B 40 00 01 */	xori r0, r26, 0x1
/* 813CD694 | 1C 60 00 14 */	mulli r3, r0, 0x14
/* 813CD698 | 1C 1A 00 14 */	mulli r0, r26, 0x14
/* 813CD69C | 7C 9F 1A 14 */	add r4, r31, r3
/* 813CD6A0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CD6A4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813CD6A8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CD6AC | 7C 03 00 40 */	cmplw r3, r0
/* 813CD6B0 | 41 82 00 0C */	beq .L_813CD6BC
/* 813CD6B4 | 3B A0 FF E5 */	li r29, -0x1b
/* 813CD6B8 | 48 00 00 38 */	b .L_813CD6F0
.L_813CD6BC:
/* 813CD6BC | A0 64 00 10 */	lhz r3, 0x10(r4)
/* 813CD6C0 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 813CD6C4 | 7C 03 00 40 */	cmplw r3, r0
/* 813CD6C8 | 41 80 00 10 */	blt .L_813CD6D8
/* 813CD6CC | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 813CD6D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD6D4 | 40 82 00 0C */	bne .L_813CD6E0
.L_813CD6D8:
/* 813CD6D8 | 3B A0 FF E7 */	li r29, -0x19
/* 813CD6DC | 48 00 00 14 */	b .L_813CD6F0
.L_813CD6E0:
/* 813CD6E0 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 813CD6E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD6E8 | 41 82 00 08 */	beq .L_813CD6F0
/* 813CD6EC | 3B A0 FF E8 */	li r29, -0x18
.L_813CD6F0:
/* 813CD6F0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813CD6F4 | 41 82 00 08 */	beq .L_813CD6FC
/* 813CD6F8 | 93 BB 00 00 */	stw r29, 0x0(r27)
.L_813CD6FC:
/* 813CD6FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CD700 | 7F 83 E3 78 */	mr r3, r28
/* 813CD704 | 48 22 BE 01 */	bl _restgpr_25
/* 813CD708 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CD70C | 7C 08 03 A6 */	mtlr r0
/* 813CD710 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CD714 | 4E 80 00 20 */	blr
.endfn isMoveEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl

# .text:0x6E4 | 0x813CD718 | size: 0x1D8
# ipl::scene::MemoryCardManager::isCopyEnable(unsigned char, unsigned long, long*)
.fn isCopyEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl, global
/* 813CD718 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CD71C | 7C 08 02 A6 */	mflr r0
/* 813CD720 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CD724 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CD728 | 48 22 BD 91 */	bl _savegpr_25
/* 813CD72C | 7C 79 1B 78 */	mr r25, r3
/* 813CD730 | 7C 9A 23 78 */	mr r26, r4
/* 813CD734 | 7C BC 2B 78 */	mr r28, r5
/* 813CD738 | 7C DB 33 78 */	mr r27, r6
/* 813CD73C | 48 00 48 DD */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CD740 | 7C 7E 1B 78 */	mr r30, r3
/* 813CD744 | 48 00 48 E1 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CD748 | 1C 9A 07 F0 */	mulli r4, r26, 0x7f0
/* 813CD74C | 57 80 20 36 */	slwi r0, r28, 4
/* 813CD750 | 7C 7F 1B 78 */	mr r31, r3
/* 813CD754 | 7F 23 CB 78 */	mr r3, r25
/* 813CD758 | 7C 99 22 14 */	add r4, r25, r4
/* 813CD75C | 3B 80 00 00 */	li r28, 0x0
/* 813CD760 | 7C A4 02 14 */	add r5, r4, r0
/* 813CD764 | 83 A5 00 08 */	lwz r29, 0x8(r5)
/* 813CD768 | 7F 44 D3 78 */	mr r4, r26
/* 813CD76C | 38 A0 00 00 */	li r5, 0x0
/* 813CD770 | 4B FF FD 61 */	bl isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl
/* 813CD774 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD778 | 41 82 00 78 */	beq .L_813CD7F0
/* 813CD77C | 1C 1A 05 F4 */	mulli r0, r26, 0x5f4
/* 813CD780 | 1C 7D 00 0C */	mulli r3, r29, 0xc
/* 813CD784 | 7C 1E 02 14 */	add r0, r30, r0
/* 813CD788 | 7C A0 1A 14 */	add r5, r0, r3
/* 813CD78C | 88 05 00 04 */	lbz r0, 0x4(r5)
/* 813CD790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD794 | 41 82 00 5C */	beq .L_813CD7F0
/* 813CD798 | 6B 40 00 01 */	xori r0, r26, 0x1
/* 813CD79C | 1C 60 00 14 */	mulli r3, r0, 0x14
/* 813CD7A0 | 1C 1A 00 14 */	mulli r0, r26, 0x14
/* 813CD7A4 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813CD7A8 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CD7AC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813CD7B0 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CD7B4 | 7C 03 00 40 */	cmplw r3, r0
/* 813CD7B8 | 40 82 00 38 */	bne .L_813CD7F0
/* 813CD7BC | A0 64 00 10 */	lhz r3, 0x10(r4)
/* 813CD7C0 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 813CD7C4 | 7C 03 00 40 */	cmplw r3, r0
/* 813CD7C8 | 41 80 00 28 */	blt .L_813CD7F0
/* 813CD7CC | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 813CD7D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD7D4 | 41 82 00 1C */	beq .L_813CD7F0
/* 813CD7D8 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 813CD7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD7E0 | 40 82 00 10 */	bne .L_813CD7F0
/* 813CD7E4 | 3B A0 FF EB */	li r29, -0x15
/* 813CD7E8 | 3B 80 00 01 */	li r28, 0x1
/* 813CD7EC | 48 00 00 DC */	b .L_813CD8C8
.L_813CD7F0:
/* 813CD7F0 | 7F 23 CB 78 */	mr r3, r25
/* 813CD7F4 | 7F 44 D3 78 */	mr r4, r26
/* 813CD7F8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813CD7FC | 4B FF FC D5 */	bl isDistSlot__Q33ipl5scene17MemoryCardManagerFUcPl
/* 813CD800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD804 | 40 82 00 40 */	bne .L_813CD844
/* 813CD808 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813CD80C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD810 | 40 82 00 0C */	bne .L_813CD81C
/* 813CD814 | 3B A0 FF E9 */	li r29, -0x17
/* 813CD818 | 48 00 00 B0 */	b .L_813CD8C8
.L_813CD81C:
/* 813CD81C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813CD820 | 41 82 00 14 */	beq .L_813CD834
/* 813CD824 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813CD828 | 41 82 00 0C */	beq .L_813CD834
/* 813CD82C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813CD830 | 40 82 00 0C */	bne .L_813CD83C
.L_813CD834:
/* 813CD834 | 3B A0 FF EA */	li r29, -0x16
/* 813CD838 | 48 00 00 90 */	b .L_813CD8C8
.L_813CD83C:
/* 813CD83C | 3B A0 FF E4 */	li r29, -0x1c
/* 813CD840 | 48 00 00 88 */	b .L_813CD8C8
.L_813CD844:
/* 813CD844 | 1C 1A 05 F4 */	mulli r0, r26, 0x5f4
/* 813CD848 | 1C 7D 00 0C */	mulli r3, r29, 0xc
/* 813CD84C | 7C 1E 02 14 */	add r0, r30, r0
/* 813CD850 | 7C A0 1A 14 */	add r5, r0, r3
/* 813CD854 | 88 05 00 04 */	lbz r0, 0x4(r5)
/* 813CD858 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD85C | 40 82 00 0C */	bne .L_813CD868
/* 813CD860 | 3B A0 FF E6 */	li r29, -0x1a
/* 813CD864 | 48 00 00 64 */	b .L_813CD8C8
.L_813CD868:
/* 813CD868 | 6B 40 00 01 */	xori r0, r26, 0x1
/* 813CD86C | 1C 60 00 14 */	mulli r3, r0, 0x14
/* 813CD870 | 1C 1A 00 14 */	mulli r0, r26, 0x14
/* 813CD874 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813CD878 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CD87C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813CD880 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CD884 | 7C 03 00 40 */	cmplw r3, r0
/* 813CD888 | 41 82 00 0C */	beq .L_813CD894
/* 813CD88C | 3B A0 FF E5 */	li r29, -0x1b
/* 813CD890 | 48 00 00 38 */	b .L_813CD8C8
.L_813CD894:
/* 813CD894 | A0 64 00 10 */	lhz r3, 0x10(r4)
/* 813CD898 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 813CD89C | 7C 03 00 40 */	cmplw r3, r0
/* 813CD8A0 | 41 80 00 10 */	blt .L_813CD8B0
/* 813CD8A4 | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 813CD8A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD8AC | 40 82 00 0C */	bne .L_813CD8B8
.L_813CD8B0:
/* 813CD8B0 | 3B A0 FF E7 */	li r29, -0x19
/* 813CD8B4 | 48 00 00 14 */	b .L_813CD8C8
.L_813CD8B8:
/* 813CD8B8 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 813CD8BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CD8C0 | 41 82 00 08 */	beq .L_813CD8C8
/* 813CD8C4 | 3B A0 FF E8 */	li r29, -0x18
.L_813CD8C8:
/* 813CD8C8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813CD8CC | 41 82 00 08 */	beq .L_813CD8D4
/* 813CD8D0 | 93 BB 00 00 */	stw r29, 0x0(r27)
.L_813CD8D4:
/* 813CD8D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CD8D8 | 7F 83 E3 78 */	mr r3, r28
/* 813CD8DC | 48 22 BC 29 */	bl _restgpr_25
/* 813CD8E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CD8E4 | 7C 08 03 A6 */	mtlr r0
/* 813CD8E8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CD8EC | 4E 80 00 20 */	blr
.endfn isCopyEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl

# .text:0x8BC | 0x813CD8F0 | size: 0x98
# ipl::scene::MemoryCardManager::isIconValidate(unsigned char, short)
.fn isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CD8F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CD8F4 | 7C 08 02 A6 */	mflr r0
/* 813CD8F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CD8FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD900 | 48 22 BB C9 */	bl _savegpr_29
/* 813CD904 | 28 04 00 01 */	cmplwi r4, 0x1
/* 813CD908 | 7C 7D 1B 78 */	mr r29, r3
/* 813CD90C | 7C 9E 23 78 */	mr r30, r4
/* 813CD910 | 7C BF 2B 78 */	mr r31, r5
/* 813CD914 | 41 81 00 14 */	bgt .L_813CD928
/* 813CD918 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813CD91C | 41 80 00 0C */	blt .L_813CD928
/* 813CD920 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 813CD924 | 41 80 00 0C */	blt .L_813CD930
.L_813CD928:
/* 813CD928 | 38 60 00 00 */	li r3, 0x0
/* 813CD92C | 48 00 00 44 */	b .L_813CD970
.L_813CD930:
/* 813CD930 | 48 00 46 E9 */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CD934 | 1C 9E 07 F0 */	mulli r4, r30, 0x7f0
/* 813CD938 | 57 E0 20 36 */	slwi r0, r31, 4
/* 813CD93C | 7C 9D 22 14 */	add r4, r29, r4
/* 813CD940 | 7C 84 02 14 */	add r4, r4, r0
/* 813CD944 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813CD948 | 28 04 00 7F */	cmplwi r4, 0x7f
/* 813CD94C | 41 80 00 0C */	blt .L_813CD958
/* 813CD950 | 38 60 00 00 */	li r3, 0x0
/* 813CD954 | 48 00 00 1C */	b .L_813CD970
.L_813CD958:
/* 813CD958 | 1C 1E 05 F4 */	mulli r0, r30, 0x5f4
/* 813CD95C | 1C 84 00 0C */	mulli r4, r4, 0xc
/* 813CD960 | 7C 03 02 14 */	add r0, r3, r0
/* 813CD964 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 813CD968 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813CD96C | 7C 60 19 10 */	subfe r3, r0, r3
.L_813CD970:
/* 813CD970 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD974 | 48 22 BB A1 */	bl _restgpr_29
/* 813CD978 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CD97C | 7C 08 03 A6 */	mtlr r0
/* 813CD980 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CD984 | 4E 80 00 20 */	blr
.endfn isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x954 | 0x813CD988 | size: 0x68
# ipl::scene::MemoryCardManager::isBannerEnable(unsigned char, short)
.fn isBannerEnable__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CD988 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CD98C | 7C 08 02 A6 */	mflr r0
/* 813CD990 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CD994 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD998 | 48 22 BB 31 */	bl _savegpr_29
/* 813CD99C | 7C 7D 1B 78 */	mr r29, r3
/* 813CD9A0 | 7C 9E 23 78 */	mr r30, r4
/* 813CD9A4 | 7C BF 2B 78 */	mr r31, r5
/* 813CD9A8 | 48 00 50 9D */	bl getIconStateArray__Q23ipl10memorycardFv
/* 813CD9AC | 1C 9E 07 F0 */	mulli r4, r30, 0x7f0
/* 813CD9B0 | 57 E0 20 36 */	slwi r0, r31, 4
/* 813CD9B4 | 7C 9D 22 14 */	add r4, r29, r4
/* 813CD9B8 | 7C 84 02 14 */	add r4, r4, r0
/* 813CD9BC | 1C BE 1F C0 */	mulli r5, r30, 0x1fc0
/* 813CD9C0 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813CD9C4 | 7C 03 2A 14 */	add r0, r3, r5
/* 813CD9C8 | 54 83 30 32 */	slwi r3, r4, 6
/* 813CD9CC | 7C 63 00 AE */	lbzx r3, r3, r0
/* 813CD9D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CD9D4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813CD9D8 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813CD9DC | 48 22 BB 39 */	bl _restgpr_29
/* 813CD9E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CD9E4 | 7C 08 03 A6 */	mtlr r0
/* 813CD9E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CD9EC | 4E 80 00 20 */	blr
.endfn isBannerEnable__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x9BC | 0x813CD9F0 | size: 0x150
# ipl::scene::MemoryCardManager::update_icon_anm()
.fn update_icon_anm__Q33ipl5scene17MemoryCardManagerFv, global
/* 813CD9F0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CD9F4 | 7C 08 02 A6 */	mflr r0
/* 813CD9F8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CD9FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CDA00 | 48 22 BA AD */	bl _savegpr_22
/* 813CDA04 | 7C 7E 1B 78 */	mr r30, r3
/* 813CDA08 | 48 00 50 3D */	bl getIconStateArray__Q23ipl10memorycardFv
/* 813CDA0C | 7C 7F 1B 78 */	mr r31, r3
/* 813CDA10 | 48 00 46 09 */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CDA14 | 3C 80 00 01 */	lis r4, 0x1
/* 813CDA18 | 39 40 00 00 */	li r10, 0x0
/* 813CDA1C | 38 04 AC A4 */	subi r0, r4, 0x535c
/* 813CDA20 | 39 80 00 00 */	li r12, 0x0
/* 813CDA24 | 3B A0 00 00 */	li r29, 0x0
/* 813CDA28 | 3B 80 00 00 */	li r28, 0x0
/* 813CDA2C | 3B 00 00 00 */	li r24, 0x0
/* 813CDA30 | 3B 20 00 01 */	li r25, 0x1
/* 813CDA34 | 3A E0 FF FF */	li r23, -0x1
/* 813CDA38 | 39 60 00 7F */	li r11, 0x7f
.L_813CDA3C:
/* 813CDA3C | 7C EA 01 D6 */	mullw r7, r10, r0
/* 813CDA40 | 7C 9E EA 14 */	add r4, r30, r29
/* 813CDA44 | 7C A3 E2 14 */	add r5, r3, r28
/* 813CDA48 | 7C DF 62 14 */	add r6, r31, r12
/* 813CDA4C | 3B 60 00 00 */	li r27, 0x0
/* 813CDA50 | 7C FE 3A 14 */	add r7, r30, r7
/* 813CDA54 | 7D 69 03 A6 */	mtctr r11
.L_813CDA58:
/* 813CDA58 | 7D 04 DA 14 */	add r8, r4, r27
/* 813CDA5C | 81 28 00 08 */	lwz r9, 0x8(r8)
/* 813CDA60 | 28 09 00 7F */	cmplwi r9, 0x7f
/* 813CDA64 | 40 80 00 A4 */	bge .L_813CDB08
/* 813CDA68 | 1D 09 00 0C */	mulli r8, r9, 0xc
/* 813CDA6C | 7D 05 42 2E */	lhzx r8, r5, r8
/* 813CDA70 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 813CDA74 | 41 82 00 94 */	beq .L_813CDB08
/* 813CDA78 | 1D 09 01 5C */	mulli r8, r9, 0x15c
/* 813CDA7C | 55 29 30 32 */	slwi r9, r9, 6
/* 813CDA80 | 7D 26 4A 14 */	add r9, r6, r9
/* 813CDA84 | 7D 07 42 14 */	add r8, r7, r8
/* 813CDA88 | 8A C9 00 04 */	lbz r22, 0x4(r9)
/* 813CDA8C | AB 48 10 E8 */	lha r26, 0x10e8(r8)
/* 813CDA90 | 7E D6 07 74 */	extsb r22, r22
/* 813CDA94 | 7E DA B2 14 */	add r22, r26, r22
/* 813CDA98 | B2 C8 10 E8 */	sth r22, 0x10e8(r8)
/* 813CDA9C | 7E DA 07 34 */	extsh r26, r22
/* 813CDAA0 | AA C9 00 12 */	lha r22, 0x12(r9)
/* 813CDAA4 | 7C 1A B0 00 */	cmpw r26, r22
/* 813CDAA8 | 41 80 00 34 */	blt .L_813CDADC
/* 813CDAAC | 8A C9 00 05 */	lbz r22, 0x5(r9)
/* 813CDAB0 | 28 16 00 04 */	cmplwi r22, 0x4
/* 813CDAB4 | 40 82 00 20 */	bne .L_813CDAD4
/* 813CDAB8 | 8A C9 00 07 */	lbz r22, 0x7(r9)
/* 813CDABC | AB 49 00 12 */	lha r26, 0x12(r9)
/* 813CDAC0 | 7F 56 D0 50 */	subf r26, r22, r26
/* 813CDAC4 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 813CDAC8 | B3 48 10 E8 */	sth r26, 0x10e8(r8)
/* 813CDACC | 9A E9 00 04 */	stb r23, 0x4(r9)
/* 813CDAD0 | 48 00 00 0C */	b .L_813CDADC
.L_813CDAD4:
/* 813CDAD4 | B3 08 10 E8 */	sth r24, 0x10e8(r8)
/* 813CDAD8 | 9B 29 00 04 */	stb r25, 0x4(r9)
.L_813CDADC:
/* 813CDADC | AB 48 10 E8 */	lha r26, 0x10e8(r8)
/* 813CDAE0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813CDAE4 | 40 80 00 24 */	bge .L_813CDB08
/* 813CDAE8 | 8B 49 00 05 */	lbz r26, 0x5(r9)
/* 813CDAEC | 28 1A 00 04 */	cmplwi r26, 0x4
/* 813CDAF0 | 40 82 00 10 */	bne .L_813CDB00
/* 813CDAF4 | 8B 49 00 06 */	lbz r26, 0x6(r9)
/* 813CDAF8 | B3 48 10 E8 */	sth r26, 0x10e8(r8)
/* 813CDAFC | 48 00 00 08 */	b .L_813CDB04
.L_813CDB00:
/* 813CDB00 | B3 08 10 E8 */	sth r24, 0x10e8(r8)
.L_813CDB04:
/* 813CDB04 | 9B 29 00 04 */	stb r25, 0x4(r9)
.L_813CDB08:
/* 813CDB08 | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 813CDB0C | 42 00 FF 4C */	bdnz .L_813CDA58
/* 813CDB10 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 813CDB14 | 3B BD 07 F0 */	addi r29, r29, 0x7f0
/* 813CDB18 | 2C 0A 00 02 */	cmpwi r10, 0x2
/* 813CDB1C | 3B 9C 05 F4 */	addi r28, r28, 0x5f4
/* 813CDB20 | 39 8C 1F C0 */	addi r12, r12, 0x1fc0
/* 813CDB24 | 41 80 FF 18 */	blt .L_813CDA3C
/* 813CDB28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CDB2C | 48 22 B9 CD */	bl _restgpr_22
/* 813CDB30 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CDB34 | 7C 08 03 A6 */	mtlr r0
/* 813CDB38 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CDB3C | 4E 80 00 20 */	blr
.endfn update_icon_anm__Q33ipl5scene17MemoryCardManagerFv

# .text:0xB0C | 0x813CDB40 | size: 0x168
# ipl::scene::MemoryCardManager::update_file_array(unsigned char)
.fn update_file_array__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CDB40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CDB44 | 7C 08 02 A6 */	mflr r0
/* 813CDB48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CDB4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CDB50 | 7C 9F 23 78 */	mr r31, r4
/* 813CDB54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CDB58 | 7C 7E 1B 78 */	mr r30, r3
/* 813CDB5C | 48 00 44 C9 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CDB60 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CDB64 | 38 C0 00 00 */	li r6, 0x0
/* 813CDB68 | 7F E4 FB 78 */	mr r4, r31
/* 813CDB6C | 7C A3 02 14 */	add r5, r3, r0
/* 813CDB70 | 7F C3 F3 78 */	mr r3, r30
/* 813CDB74 | 98 C5 00 01 */	stb r6, 0x1(r5)
/* 813CDB78 | 4B FF F6 CD */	bl sort_file_array__Q33ipl5scene17MemoryCardManagerFUc
/* 813CDB7C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813CDB80 | 80 83 69 34 */	lwz r4, 0x6934(r3)
/* 813CDB84 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813CDB88 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813CDB8C | 41 81 01 04 */	bgt .L_813CDC90
/* 813CDB90 | 80 03 69 30 */	lwz r0, 0x6930(r3)
/* 813CDB94 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 813CDB98 | 40 82 00 10 */	bne .L_813CDBA8
/* 813CDB9C | 48 00 44 B1 */	bl getCardLastCMDFCmdResult__Q23ipl10memorycardFv
/* 813CDBA0 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 813CDBA4 | 90 64 69 30 */	stw r3, 0x6930(r4)
.L_813CDBA8:
/* 813CDBA8 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813CDBAC | 80 03 69 30 */	lwz r0, 0x6930(r3)
/* 813CDBB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CDBB4 | 40 82 00 DC */	bne .L_813CDC90
/* 813CDBB8 | 80 03 69 34 */	lwz r0, 0x6934(r3)
/* 813CDBBC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813CDBC0 | 41 82 00 24 */	beq .L_813CDBE4
/* 813CDBC4 | 40 80 00 14 */	bge .L_813CDBD8
/* 813CDBC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CDBCC | 41 82 00 9C */	beq .L_813CDC68
/* 813CDBD0 | 40 80 00 40 */	bge .L_813CDC10
/* 813CDBD4 | 48 00 00 BC */	b .L_813CDC90
.L_813CDBD8:
/* 813CDBD8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813CDBDC | 40 80 00 B4 */	bge .L_813CDC90
/* 813CDBE0 | 48 00 00 5C */	b .L_813CDC3C
.L_813CDBE4:
/* 813CDBE4 | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDBE8 | 7F E5 FB 78 */	mr r5, r31
/* 813CDBEC | 38 80 00 02 */	li r4, 0x2
/* 813CDBF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDBF4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDBF8 | 7D 89 03 A6 */	mtctr r12
/* 813CDBFC | 4E 80 04 21 */	bctrl
/* 813CDC00 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813CDC04 | 38 00 00 06 */	li r0, 0x6
/* 813CDC08 | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CDC0C | 48 00 00 84 */	b .L_813CDC90
.L_813CDC10:
/* 813CDC10 | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDC14 | 7F E5 FB 78 */	mr r5, r31
/* 813CDC18 | 38 80 00 01 */	li r4, 0x1
/* 813CDC1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDC20 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDC24 | 7D 89 03 A6 */	mtctr r12
/* 813CDC28 | 4E 80 04 21 */	bctrl
/* 813CDC2C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813CDC30 | 38 00 00 05 */	li r0, 0x5
/* 813CDC34 | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CDC38 | 48 00 00 58 */	b .L_813CDC90
.L_813CDC3C:
/* 813CDC3C | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDC40 | 7F E5 FB 78 */	mr r5, r31
/* 813CDC44 | 38 80 00 03 */	li r4, 0x3
/* 813CDC48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDC4C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDC50 | 7D 89 03 A6 */	mtctr r12
/* 813CDC54 | 4E 80 04 21 */	bctrl
/* 813CDC58 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813CDC5C | 38 00 00 07 */	li r0, 0x7
/* 813CDC60 | 90 03 69 34 */	stw r0, 0x6934(r3)
/* 813CDC64 | 48 00 00 2C */	b .L_813CDC90
.L_813CDC68:
/* 813CDC68 | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDC6C | 7F E5 FB 78 */	mr r5, r31
/* 813CDC70 | 38 80 00 04 */	li r4, 0x4
/* 813CDC74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDC78 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDC7C | 7D 89 03 A6 */	mtctr r12
/* 813CDC80 | 4E 80 04 21 */	bctrl
/* 813CDC84 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813CDC88 | 38 00 00 08 */	li r0, 0x8
/* 813CDC8C | 90 03 69 34 */	stw r0, 0x6934(r3)
.L_813CDC90:
/* 813CDC90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CDC94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CDC98 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CDC9C | 7C 08 03 A6 */	mtlr r0
/* 813CDCA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CDCA4 | 4E 80 00 20 */	blr
.endfn update_file_array__Q33ipl5scene17MemoryCardManagerFUc

# .text:0xC74 | 0x813CDCA8 | size: 0x4
# ipl::scene::MemCardEventHandler::onMemEvent(long, unsigned char)
.fn onMemEvent__Q33ipl5scene19MemCardEventHandlerFlUc, global
/* 813CDCA8 | 4E 80 00 20 */	blr
.endfn onMemEvent__Q33ipl5scene19MemCardEventHandlerFlUc

# .text:0xC78 | 0x813CDCAC | size: 0x1AC
# ipl::scene::MemoryCardManager::update_change_cardstate(unsigned char)
.fn update_change_cardstate__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CDCAC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813CDCB0 | 7C 08 02 A6 */	mflr r0
/* 813CDCB4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813CDCB8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813CDCBC | 48 22 B7 E9 */	bl _savegpr_20
/* 813CDCC0 | 7C 7C 1B 78 */	mr r28, r3
/* 813CDCC4 | 7C 9D 23 78 */	mr r29, r4
/* 813CDCC8 | 48 00 43 5D */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CDCCC | 1F DD 00 14 */	mulli r30, r29, 0x14
/* 813CDCD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CDCD4 | 7F 23 F2 14 */	add r25, r3, r30
/* 813CDCD8 | 88 19 00 01 */	lbz r0, 0x1(r25)
/* 813CDCDC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813CDCE0 | 40 82 01 18 */	bne .L_813CDDF8
/* 813CDCE4 | A8 19 00 02 */	lha r0, 0x2(r25)
/* 813CDCE8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813CDCEC | 40 82 00 14 */	bne .L_813CDD00
/* 813CDCF0 | 7F 83 E3 78 */	mr r3, r28
/* 813CDCF4 | 7F A4 EB 78 */	mr r4, r29
/* 813CDCF8 | 4B FF FE 49 */	bl update_file_array__Q33ipl5scene17MemoryCardManagerFUc
/* 813CDCFC | 48 00 00 44 */	b .L_813CDD40
.L_813CDD00:
/* 813CDD00 | A8 19 00 02 */	lha r0, 0x2(r25)
/* 813CDD04 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813CDD08 | 41 82 00 10 */	beq .L_813CDD18
/* 813CDD0C | A8 19 00 02 */	lha r0, 0x2(r25)
/* 813CDD10 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813CDD14 | 40 82 00 2C */	bne .L_813CDD40
.L_813CDD18:
/* 813CDD18 | 3C 7C 00 01 */	addis r3, r28, 0x1
/* 813CDD1C | 7F A5 EB 78 */	mr r5, r29
/* 813CDD20 | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDD24 | 38 80 00 00 */	li r4, 0x0
/* 813CDD28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDD2C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDD30 | 7D 89 03 A6 */	mtctr r12
/* 813CDD34 | 4E 80 04 21 */	bctrl
/* 813CDD38 | 38 00 00 00 */	li r0, 0x0
/* 813CDD3C | 98 19 00 01 */	stb r0, 0x1(r25)
.L_813CDD40:
/* 813CDD40 | 3C 7C 00 01 */	addis r3, r28, 0x1
/* 813CDD44 | 80 03 69 30 */	lwz r0, 0x6930(r3)
/* 813CDD48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CDD4C | 40 82 00 AC */	bne .L_813CDDF8
/* 813CDD50 | 48 00 42 ED */	bl getCardLastSendCmd__Q23ipl10memorycardFv
/* 813CDD54 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 813CDD58 | 40 82 00 A0 */	bne .L_813CDDF8
/* 813CDD5C | 48 00 42 D1 */	bl getCardLastSrcSlot__Q23ipl10memorycardFv
/* 813CDD60 | 7C 1D 18 00 */	cmpw r29, r3
/* 813CDD64 | 40 82 00 94 */	bne .L_813CDDF8
/* 813CDD68 | 3C 7C 00 01 */	addis r3, r28, 0x1
/* 813CDD6C | 7F A5 EB 78 */	mr r5, r29
/* 813CDD70 | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDD74 | 38 80 00 05 */	li r4, 0x5
/* 813CDD78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDD7C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDD80 | 7D 89 03 A6 */	mtctr r12
/* 813CDD84 | 4E 80 04 21 */	bctrl
/* 813CDD88 | 3C 60 00 01 */	lis r3, 0x1
/* 813CDD8C | 3B 00 00 00 */	li r24, 0x0
/* 813CDD90 | 38 03 AC A4 */	subi r0, r3, 0x535c
/* 813CDD94 | 9B 19 00 01 */	stb r24, 0x1(r25)
/* 813CDD98 | 7C 7D 01 D6 */	mullw r3, r29, r0
/* 813CDD9C | 7F 1A C3 78 */	mr r26, r24
/* 813CDDA0 | 3A 80 00 00 */	li r20, 0x0
/* 813CDDA4 | 3B 60 00 00 */	li r27, 0x0
/* 813CDDA8 | 3B 20 FF FF */	li r25, -0x1
/* 813CDDAC | 1C 1D 07 F0 */	mulli r0, r29, 0x7f0
/* 813CDDB0 | 7E DC 1A 14 */	add r22, r28, r3
/* 813CDDB4 | 7E FC 02 14 */	add r23, r28, r0
/* 813CDDB8 | 3A B6 0F E8 */	addi r21, r22, 0xfe8
.L_813CDDBC:
/* 813CDDBC | 7C F7 D2 14 */	add r7, r23, r26
/* 813CDDC0 | 7C D6 DA 14 */	add r6, r22, r27
/* 813CDDC4 | 93 27 00 08 */	stw r25, 0x8(r7)
/* 813CDDC8 | 7C 75 DA 14 */	add r3, r21, r27
/* 813CDDCC | 38 80 00 00 */	li r4, 0x0
/* 813CDDD0 | 38 A0 00 40 */	li r5, 0x40
/* 813CDDD4 | 93 27 00 14 */	stw r25, 0x14(r7)
/* 813CDDD8 | 93 07 00 10 */	stw r24, 0x10(r7)
/* 813CDDDC | B3 06 10 E8 */	sth r24, 0x10e8(r6)
/* 813CDDE0 | 48 23 86 89 */	bl fn_81606468
/* 813CDDE4 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 813CDDE8 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 813CDDEC | 2C 14 00 7F */	cmpwi r20, 0x7f
/* 813CDDF0 | 3B 7B 01 5C */	addi r27, r27, 0x15c
/* 813CDDF4 | 41 80 FF C8 */	blt .L_813CDDBC
.L_813CDDF8:
/* 813CDDF8 | 7C 7F F2 14 */	add r3, r31, r30
/* 813CDDFC | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CDE00 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813CDE04 | 41 82 00 3C */	beq .L_813CDE40
/* 813CDE08 | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CDE0C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813CDE10 | 41 82 00 30 */	beq .L_813CDE40
/* 813CDE14 | A8 03 00 02 */	lha r0, 0x2(r3)
/* 813CDE18 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813CDE1C | 41 82 00 24 */	beq .L_813CDE40
/* 813CDE20 | 3C 7C 00 01 */	addis r3, r28, 0x1
/* 813CDE24 | 7F A5 EB 78 */	mr r5, r29
/* 813CDE28 | 80 63 69 3C */	lwz r3, 0x693c(r3)
/* 813CDE2C | 38 80 00 06 */	li r4, 0x6
/* 813CDE30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CDE34 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CDE38 | 7D 89 03 A6 */	mtctr r12
/* 813CDE3C | 4E 80 04 21 */	bctrl
.L_813CDE40:
/* 813CDE40 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813CDE44 | 48 22 B6 AD */	bl _restgpr_20
/* 813CDE48 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813CDE4C | 7C 08 03 A6 */	mtlr r0
/* 813CDE50 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813CDE54 | 4E 80 00 20 */	blr
.endfn update_change_cardstate__Q33ipl5scene17MemoryCardManagerFUc

# .text:0xE24 | 0x813CDE58 | size: 0xCC
# ipl::scene::MemoryCardManager::create_icon(unsigned char, short)
.fn create_icon__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CDE58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CDE5C | 7C 08 02 A6 */	mflr r0
/* 813CDE60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CDE64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CDE68 | 48 22 B6 61 */	bl _savegpr_29
/* 813CDE6C | 7C 7E 1B 78 */	mr r30, r3
/* 813CDE70 | 7C 9F 23 78 */	mr r31, r4
/* 813CDE74 | 7C BD 2B 78 */	mr r29, r5
/* 813CDE78 | 48 00 4B CD */	bl getIconStateArray__Q23ipl10memorycardFv
/* 813CDE7C | 1C DF 07 F0 */	mulli r6, r31, 0x7f0
/* 813CDE80 | 3C 80 00 01 */	lis r4, 0x1
/* 813CDE84 | 57 A5 20 36 */	slwi r5, r29, 4
/* 813CDE88 | 38 04 AC A4 */	subi r0, r4, 0x535c
/* 813CDE8C | 7C 9E 32 14 */	add r4, r30, r6
/* 813CDE90 | 38 E0 00 00 */	li r7, 0x0
/* 813CDE94 | 7C 84 2A 14 */	add r4, r4, r5
/* 813CDE98 | 39 00 00 00 */	li r8, 0x0
/* 813CDE9C | 81 24 00 08 */	lwz r9, 0x8(r4)
/* 813CDEA0 | 7C 1F 01 D6 */	mullw r0, r31, r0
/* 813CDEA4 | 55 26 30 32 */	slwi r6, r9, 6
/* 813CDEA8 | 1C BF 1F C0 */	mulli r5, r31, 0x1fc0
/* 813CDEAC | 7C 1E 02 14 */	add r0, r30, r0
/* 813CDEB0 | 1C 89 01 5C */	mulli r4, r9, 0x15c
/* 813CDEB4 | 7C A3 2A 14 */	add r5, r3, r5
/* 813CDEB8 | 7C 64 02 14 */	add r3, r4, r0
/* 813CDEBC | 7C 86 2A 14 */	add r4, r6, r5
/* 813CDEC0 | A8 A3 10 E8 */	lha r5, 0x10e8(r3)
.L_813CDEC4:
/* 813CDEC4 | 7D 00 07 34 */	extsh r0, r8
/* 813CDEC8 | A0 64 00 10 */	lhz r3, 0x10(r4)
/* 813CDECC | 54 00 08 3C */	slwi r0, r0, 1
/* 813CDED0 | 39 08 00 01 */	addi r8, r8, 0x1
/* 813CDED4 | 7C 60 06 30 */	sraw r0, r3, r0
/* 813CDED8 | 54 00 17 3A */	clrlslwi r0, r0, 30, 2
/* 813CDEDC | 7C E7 02 14 */	add r7, r7, r0
/* 813CDEE0 | 7C 05 38 00 */	cmpw r5, r7
/* 813CDEE4 | 40 81 00 10 */	ble .L_813CDEF4
/* 813CDEE8 | 7D 00 07 34 */	extsh r0, r8
/* 813CDEEC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813CDEF0 | 40 81 FF D4 */	ble .L_813CDEC4
.L_813CDEF4:
/* 813CDEF4 | 7D 06 07 34 */	extsh r6, r8
/* 813CDEF8 | 7F C3 F3 78 */	mr r3, r30
/* 813CDEFC | 7F E4 FB 78 */	mr r4, r31
/* 813CDF00 | 7D 25 07 34 */	extsh r5, r9
/* 813CDF04 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 813CDF08 | 48 00 00 81 */	bl _create_icon__Q33ipl5scene17MemoryCardManagerFUcsl
/* 813CDF0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CDF10 | 48 22 B6 05 */	bl _restgpr_29
/* 813CDF14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CDF18 | 7C 08 03 A6 */	mtlr r0
/* 813CDF1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CDF20 | 4E 80 00 20 */	blr
.endfn create_icon__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0xEF0 | 0x813CDF24 | size: 0x64
# ipl::scene::MemoryCardManager::create_icon(unsigned char, short, long)
.fn create_icon__Q33ipl5scene17MemoryCardManagerFUcsl, global
/* 813CDF24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CDF28 | 7C 08 02 A6 */	mflr r0
/* 813CDF2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CDF30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CDF34 | 48 22 B5 95 */	bl _savegpr_29
/* 813CDF38 | 7C 7D 1B 78 */	mr r29, r3
/* 813CDF3C | 7C 9E 23 78 */	mr r30, r4
/* 813CDF40 | 7C BF 2B 78 */	mr r31, r5
/* 813CDF44 | 48 00 4B 01 */	bl getIconStateArray__Q23ipl10memorycardFv
/* 813CDF48 | 7F C4 F3 78 */	mr r4, r30
/* 813CDF4C | 57 E0 20 36 */	slwi r0, r31, 4
/* 813CDF50 | 1C A4 07 F0 */	mulli r5, r4, 0x7f0
/* 813CDF54 | 7F A3 EB 78 */	mr r3, r29
/* 813CDF58 | 38 C0 00 00 */	li r6, 0x0
/* 813CDF5C | 7C BD 2A 14 */	add r5, r29, r5
/* 813CDF60 | 7C A5 02 14 */	add r5, r5, r0
/* 813CDF64 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 813CDF68 | 7C 05 07 34 */	extsh r5, r0
/* 813CDF6C | 48 00 00 1D */	bl _create_icon__Q33ipl5scene17MemoryCardManagerFUcsl
/* 813CDF70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CDF74 | 48 22 B5 A1 */	bl _restgpr_29
/* 813CDF78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CDF7C | 7C 08 03 A6 */	mtlr r0
/* 813CDF80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CDF84 | 4E 80 00 20 */	blr
.endfn create_icon__Q33ipl5scene17MemoryCardManagerFUcsl

# .text:0xF54 | 0x813CDF88 | size: 0x190
# ipl::scene::MemoryCardManager::_create_icon(unsigned char, short, long)
.fn _create_icon__Q33ipl5scene17MemoryCardManagerFUcsl, global
/* 813CDF88 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CDF8C | 7C 08 02 A6 */	mflr r0
/* 813CDF90 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CDF94 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CDF98 | 48 22 B5 1D */	bl _savegpr_24
/* 813CDF9C | 7C 79 1B 78 */	mr r25, r3
/* 813CDFA0 | 7C 9A 23 78 */	mr r26, r4
/* 813CDFA4 | 7C BB 2B 78 */	mr r27, r5
/* 813CDFA8 | 7C DC 33 78 */	mr r28, r6
/* 813CDFAC | 48 00 40 6D */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CDFB0 | 1C 1A 05 F4 */	mulli r0, r26, 0x5f4
/* 813CDFB4 | 1C 9B 00 0C */	mulli r4, r27, 0xc
/* 813CDFB8 | 7C 03 02 14 */	add r0, r3, r0
/* 813CDFBC | 7C 04 02 2E */	lhzx r0, r4, r0
/* 813CDFC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CDFC4 | 40 82 00 0C */	bne .L_813CDFD0
/* 813CDFC8 | 38 60 00 00 */	li r3, 0x0
/* 813CDFCC | 48 00 01 34 */	b .L_813CE100
.L_813CDFD0:
/* 813CDFD0 | 48 00 4A 75 */	bl getIconStateArray__Q23ipl10memorycardFv
/* 813CDFD4 | 1F BA 1F C0 */	mulli r29, r26, 0x1fc0
/* 813CDFD8 | 57 7E 30 32 */	slwi r30, r27, 6
/* 813CDFDC | 7C 78 1B 78 */	mr r24, r3
/* 813CDFE0 | 7C 03 EA 14 */	add r0, r3, r29
/* 813CDFE4 | 7F E0 F2 14 */	add r31, r0, r30
/* 813CDFE8 | 7C 7F E2 14 */	add r3, r31, r28
/* 813CDFEC | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813CDFF0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813CDFF4 | 40 82 00 60 */	bne .L_813CE054
/* 813CDFF8 | 3C 60 00 01 */	lis r3, 0x1
/* 813CDFFC | 57 80 10 3A */	slwi r0, r28, 2
/* 813CE000 | 38 63 AC A4 */	subi r3, r3, 0x535c
/* 813CE004 | 38 A0 00 20 */	li r5, 0x20
/* 813CE008 | 7D 1A 19 D6 */	mullw r8, r26, r3
/* 813CE00C | 38 C0 00 20 */	li r6, 0x20
/* 813CE010 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CE014 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 813CE018 | 38 E0 00 05 */	li r7, 0x5
/* 813CE01C | 39 20 00 00 */	li r9, 0x0
/* 813CE020 | 7C 79 42 14 */	add r3, r25, r8
/* 813CE024 | 7C 80 FA 14 */	add r4, r0, r31
/* 813CE028 | 1F 1B 01 5C */	mulli r24, r27, 0x15c
/* 813CE02C | 39 00 00 00 */	li r8, 0x0
/* 813CE030 | 3B 23 10 EC */	addi r25, r3, 0x10ec
/* 813CE034 | 39 40 00 00 */	li r10, 0x0
/* 813CE038 | 7C 79 C2 14 */	add r3, r25, r24
/* 813CE03C | 48 17 7C 35 */	bl GXInitTexObj
/* 813CE040 | 7F 19 C2 14 */	add r24, r25, r24
/* 813CE044 | 38 80 00 00 */	li r4, 0x0
/* 813CE048 | 7F 03 C3 78 */	mr r3, r24
/* 813CE04C | 48 17 81 61 */	bl GXLoadTexObj
/* 813CE050 | 48 00 00 AC */	b .L_813CE0FC
.L_813CE054:
/* 813CE054 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813CE058 | 40 82 00 9C */	bne .L_813CE0F4
/* 813CE05C | 3C 80 00 01 */	lis r4, 0x1
/* 813CE060 | 38 60 00 00 */	li r3, 0x0
/* 813CE064 | 38 84 AC A4 */	subi r4, r4, 0x535c
/* 813CE068 | 57 80 10 3A */	slwi r0, r28, 2
/* 813CE06C | 7F 5A 21 D6 */	mullw r26, r26, r4
/* 813CE070 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813CE074 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CE078 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 813CE07C | 38 A0 00 20 */	li r5, 0x20
/* 813CE080 | 38 C0 00 20 */	li r6, 0x20
/* 813CE084 | 7C 79 D2 14 */	add r3, r25, r26
/* 813CE088 | 7C 9F 02 14 */	add r4, r31, r0
/* 813CE08C | 1F 7B 01 5C */	mulli r27, r27, 0x15c
/* 813CE090 | 38 E0 00 09 */	li r7, 0x9
/* 813CE094 | 3B 83 10 EC */	addi r28, r3, 0x10ec
/* 813CE098 | 39 00 00 00 */	li r8, 0x0
/* 813CE09C | 7C 7C DA 14 */	add r3, r28, r27
/* 813CE0A0 | 39 20 00 00 */	li r9, 0x0
/* 813CE0A4 | 39 40 00 00 */	li r10, 0x0
/* 813CE0A8 | 48 17 7D D5 */	bl GXInitTexObjCI
/* 813CE0AC | 7C 18 EA 14 */	add r0, r24, r29
/* 813CE0B0 | 7C 99 D2 14 */	add r4, r25, r26
/* 813CE0B4 | 7C 60 F2 14 */	add r3, r0, r30
/* 813CE0B8 | 38 A0 00 02 */	li r5, 0x2
/* 813CE0BC | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813CE0C0 | 3B 04 11 2C */	addi r24, r4, 0x112c
/* 813CE0C4 | 7C 78 DA 14 */	add r3, r24, r27
/* 813CE0C8 | 38 C0 01 00 */	li r6, 0x100
/* 813CE0CC | 7C 9F 02 14 */	add r4, r31, r0
/* 813CE0D0 | 48 17 81 31 */	bl GXInitTlutObj
/* 813CE0D4 | 7C 78 DA 14 */	add r3, r24, r27
/* 813CE0D8 | 38 80 00 00 */	li r4, 0x0
/* 813CE0DC | 48 17 81 4D */	bl GXLoadTlut
/* 813CE0E0 | 7F 1C DA 14 */	add r24, r28, r27
/* 813CE0E4 | 38 80 00 00 */	li r4, 0x0
/* 813CE0E8 | 7F 03 C3 78 */	mr r3, r24
/* 813CE0EC | 48 17 80 C1 */	bl GXLoadTexObj
/* 813CE0F0 | 48 00 00 0C */	b .L_813CE0FC
.L_813CE0F4:
/* 813CE0F4 | 38 60 00 00 */	li r3, 0x0
/* 813CE0F8 | 48 00 00 08 */	b .L_813CE100
.L_813CE0FC:
/* 813CE0FC | 7F 03 C3 78 */	mr r3, r24
.L_813CE100:
/* 813CE100 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CE104 | 48 22 B3 FD */	bl _restgpr_24
/* 813CE108 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CE10C | 7C 08 03 A6 */	mtlr r0
/* 813CE110 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CE114 | 4E 80 00 20 */	blr
.endfn _create_icon__Q33ipl5scene17MemoryCardManagerFUcsl

# .text:0x10E4 | 0x813CE118 | size: 0x1EC
# ipl::scene::MemoryCardManager::getComment(unsigned char, short, int)
.fn getComment__Q33ipl5scene17MemoryCardManagerFUcsi, global
/* 813CE118 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813CE11C | 7C 08 02 A6 */	mflr r0
/* 813CE120 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813CE124 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813CE128 | 48 22 B3 89 */	bl _savegpr_23
/* 813CE12C | 1D 04 07 F0 */	mulli r8, r4, 0x7f0
/* 813CE130 | 3C E0 00 01 */	lis r7, 0x1
/* 813CE134 | 54 A5 20 36 */	slwi r5, r5, 4
/* 813CE138 | 38 07 AC A4 */	subi r0, r7, 0x535c
/* 813CE13C | 7C E3 42 14 */	add r7, r3, r8
/* 813CE140 | 7C 7A 1B 78 */	mr r26, r3
/* 813CE144 | 7C A7 2A 14 */	add r5, r7, r5
/* 813CE148 | 54 DB 38 30 */	slwi r27, r6, 7
/* 813CE14C | 83 25 00 08 */	lwz r25, 0x8(r5)
/* 813CE150 | 7F A4 01 D6 */	mullw r29, r4, r0
/* 813CE154 | 7C 97 23 78 */	mr r23, r4
/* 813CE158 | 7C D8 33 78 */	mr r24, r6
/* 813CE15C | 38 80 00 00 */	li r4, 0x0
/* 813CE160 | 38 A0 00 40 */	li r5, 0x40
/* 813CE164 | 1F 99 01 5C */	mulli r28, r25, 0x15c
/* 813CE168 | 7C 03 EA 14 */	add r0, r3, r29
/* 813CE16C | 7C 60 E2 14 */	add r3, r0, r28
/* 813CE170 | 3B E3 0F E8 */	addi r31, r3, 0xfe8
/* 813CE174 | 7F DF DA 14 */	add r30, r31, r27
/* 813CE178 | 7F C3 F3 78 */	mr r3, r30
/* 813CE17C | 48 23 82 ED */	bl fn_81606468
/* 813CE180 | 38 00 00 10 */	li r0, 0x10
/* 813CE184 | 38 81 00 07 */	addi r4, r1, 0x7
/* 813CE188 | 38 60 00 00 */	li r3, 0x0
/* 813CE18C | 7C 09 03 A6 */	mtctr r0
.L_813CE190:
/* 813CE190 | 98 64 00 01 */	stb r3, 0x1(r4)
/* 813CE194 | 9C 64 00 02 */	stbu r3, 0x2(r4)
/* 813CE198 | 42 00 FF F8 */	bdnz .L_813CE190
/* 813CE19C | 98 64 00 01 */	stb r3, 0x1(r4)
/* 813CE1A0 | 7E E3 BB 78 */	mr r3, r23
/* 813CE1A4 | 7F 24 07 34 */	extsh r4, r25
/* 813CE1A8 | 48 00 48 AD */	bl getIconComment__Q23ipl10memorycardFUcs
/* 813CE1AC | 7C 64 1B 78 */	mr r4, r3
/* 813CE1B0 | 57 00 28 34 */	slwi r0, r24, 5
/* 813CE1B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CE1B8 | 38 A0 00 20 */	li r5, 0x20
/* 813CE1BC | 7C 84 02 14 */	add r4, r4, r0
/* 813CE1C0 | 4B F6 20 71 */	bl memcpy
/* 813CE1C4 | 38 81 00 27 */	addi r4, r1, 0x27
/* 813CE1C8 | 3B 21 00 08 */	addi r25, r1, 0x8
/* 813CE1CC | 7C 83 23 78 */	mr r3, r4
/* 813CE1D0 | 38 A0 00 00 */	li r5, 0x0
/* 813CE1D4 | 48 00 00 10 */	b .L_813CE1E4
.L_813CE1D8:
/* 813CE1D8 | 98 A4 00 00 */	stb r5, 0x0(r4)
/* 813CE1DC | 38 63 FF FF */	subi r3, r3, 0x1
/* 813CE1E0 | 38 84 FF FF */	subi r4, r4, 0x1
.L_813CE1E4:
/* 813CE1E4 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813CE1E8 | 7C 00 07 74 */	extsb r0, r0
/* 813CE1EC | 2C 00 00 20 */	cmpwi r0, 0x20
/* 813CE1F0 | 41 82 FF E8 */	beq .L_813CE1D8
/* 813CE1F4 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813CE1F8 | 41 82 FF E0 */	beq .L_813CE1D8
/* 813CE1FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CE200 | 41 82 FF D8 */	beq .L_813CE1D8
/* 813CE204 | 48 19 BF 01 */	bl SCGetLanguage
/* 813CE208 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813CE20C | 40 82 00 64 */	bne .L_813CE270
/* 813CE210 | 7F C3 F3 78 */	mr r3, r30
/* 813CE214 | 7F 24 CB 78 */	mr r4, r25
/* 813CE218 | 38 A0 00 20 */	li r5, 0x20
/* 813CE21C | 4B F9 5D B1 */	bl shiftJISToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl
/* 813CE220 | 7C 7A EA 14 */	add r3, r26, r29
/* 813CE224 | 7C 1B E2 14 */	add r0, r27, r28
/* 813CE228 | 7C A3 02 14 */	add r5, r3, r0
/* 813CE22C | 38 60 00 3E */	li r3, 0x3e
/* 813CE230 | 38 00 00 00 */	li r0, 0x0
/* 813CE234 | 48 00 00 10 */	b .L_813CE244
.L_813CE238:
/* 813CE238 | 7C 85 1A 14 */	add r4, r5, r3
/* 813CE23C | 38 63 FF FE */	subi r3, r3, 0x2
/* 813CE240 | B0 04 0F E8 */	sth r0, 0xfe8(r4)
.L_813CE244:
/* 813CE244 | 7C 85 1A 14 */	add r4, r5, r3
/* 813CE248 | A0 84 0F E8 */	lhz r4, 0xfe8(r4)
/* 813CE24C | 28 04 00 20 */	cmplwi r4, 0x20
/* 813CE250 | 41 82 FF E8 */	beq .L_813CE238
/* 813CE254 | 28 04 30 00 */	cmplwi r4, 0x3000
/* 813CE258 | 41 82 FF E0 */	beq .L_813CE238
/* 813CE25C | 28 04 00 0A */	cmplwi r4, 0xa
/* 813CE260 | 41 82 FF D8 */	beq .L_813CE238
/* 813CE264 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CE268 | 41 82 FF D0 */	beq .L_813CE238
/* 813CE26C | 48 00 00 14 */	b .L_813CE280
.L_813CE270:
/* 813CE270 | 7F C3 F3 78 */	mr r3, r30
/* 813CE274 | 7F 24 CB 78 */	mr r4, r25
/* 813CE278 | 38 A0 00 20 */	li r5, 0x20
/* 813CE27C | 4B F9 5D 81 */	bl ANSIToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl
.L_813CE280:
/* 813CE280 | 7C 7A EA 14 */	add r3, r26, r29
/* 813CE284 | 7C 1B E2 14 */	add r0, r27, r28
/* 813CE288 | 7C 83 02 14 */	add r4, r3, r0
/* 813CE28C | 38 E0 00 00 */	li r7, 0x0
/* 813CE290 | 39 00 00 00 */	li r8, 0x0
/* 813CE294 | 38 60 00 00 */	li r3, 0x0
/* 813CE298 | 38 00 00 00 */	li r0, 0x0
/* 813CE29C | 48 00 00 34 */	b .L_813CE2D0
.L_813CE2A0:
/* 813CE2A0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813CE2A4 | 41 82 00 0C */	beq .L_813CE2B0
/* 813CE2A8 | B0 05 0F E8 */	sth r0, 0xfe8(r5)
/* 813CE2AC | 48 00 00 1C */	b .L_813CE2C8
.L_813CE2B0:
/* 813CE2B0 | 28 06 00 0A */	cmplwi r6, 0xa
/* 813CE2B4 | 41 82 00 0C */	beq .L_813CE2C0
/* 813CE2B8 | 28 06 0D 0A */	cmplwi r6, 0xd0a
/* 813CE2BC | 40 82 00 0C */	bne .L_813CE2C8
.L_813CE2C0:
/* 813CE2C0 | B0 05 0F E8 */	sth r0, 0xfe8(r5)
/* 813CE2C4 | 38 E0 00 01 */	li r7, 0x1
.L_813CE2C8:
/* 813CE2C8 | 39 08 00 01 */	addi r8, r8, 0x1
/* 813CE2CC | 38 63 00 02 */	addi r3, r3, 0x2
.L_813CE2D0:
/* 813CE2D0 | 7C A4 1A 14 */	add r5, r4, r3
/* 813CE2D4 | A0 C5 0F E8 */	lhz r6, 0xfe8(r5)
/* 813CE2D8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813CE2DC | 41 82 00 0C */	beq .L_813CE2E8
/* 813CE2E0 | 2C 08 00 20 */	cmpwi r8, 0x20
/* 813CE2E4 | 41 80 FF BC */	blt .L_813CE2A0
.L_813CE2E8:
/* 813CE2E8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813CE2EC | 7C 7F DA 14 */	add r3, r31, r27
/* 813CE2F0 | 48 22 B2 0D */	bl _restgpr_23
/* 813CE2F4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813CE2F8 | 7C 08 03 A6 */	mtlr r0
/* 813CE2FC | 38 21 00 60 */	addi r1, r1, 0x60
/* 813CE300 | 4E 80 00 20 */	blr
.endfn getComment__Q33ipl5scene17MemoryCardManagerFUcsi

# .text:0x12D0 | 0x813CE304 | size: 0x1A8
# ipl::scene::MemoryCardManager::create_banner(unsigned char, short)
.fn create_banner__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CE304 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813CE308 | 7C 08 02 A6 */	mflr r0
/* 813CE30C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813CE310 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813CE314 | 48 22 B1 99 */	bl _savegpr_22
/* 813CE318 | 7C 7A 1B 78 */	mr r26, r3
/* 813CE31C | 7C 9B 23 78 */	mr r27, r4
/* 813CE320 | 7C B6 2B 78 */	mr r22, r5
/* 813CE324 | 48 00 3C F5 */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CE328 | 7C 79 1B 78 */	mr r25, r3
/* 813CE32C | 48 00 47 19 */	bl getIconStateArray__Q23ipl10memorycardFv
/* 813CE330 | 1C 9B 07 F0 */	mulli r4, r27, 0x7f0
/* 813CE334 | 56 C0 20 36 */	slwi r0, r22, 4
/* 813CE338 | 7C 7F 1B 78 */	mr r31, r3
/* 813CE33C | 7C 9A 22 14 */	add r4, r26, r4
/* 813CE340 | 7C 84 02 14 */	add r4, r4, r0
/* 813CE344 | 83 84 00 08 */	lwz r28, 0x8(r4)
/* 813CE348 | 1C 1B 05 F4 */	mulli r0, r27, 0x5f4
/* 813CE34C | 1C 9C 00 0C */	mulli r4, r28, 0xc
/* 813CE350 | 7C 19 02 14 */	add r0, r25, r0
/* 813CE354 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 813CE358 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CE35C | 41 82 00 20 */	beq .L_813CE37C
/* 813CE360 | 1F BB 1F C0 */	mulli r29, r27, 0x1fc0
/* 813CE364 | 57 9E 30 32 */	slwi r30, r28, 6
/* 813CE368 | 7C 1E 1A 14 */	add r0, r30, r3
/* 813CE36C | 7C 9D 02 14 */	add r4, r29, r0
/* 813CE370 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 813CE374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CE378 | 40 82 00 0C */	bne .L_813CE384
.L_813CE37C:
/* 813CE37C | 38 60 00 00 */	li r3, 0x0
/* 813CE380 | 48 00 01 14 */	b .L_813CE494
.L_813CE384:
/* 813CE384 | 7C 03 EA 14 */	add r0, r3, r29
/* 813CE388 | 7F 20 F2 14 */	add r25, r0, r30
/* 813CE38C | 88 19 00 03 */	lbz r0, 0x3(r25)
/* 813CE390 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813CE394 | 40 82 00 54 */	bne .L_813CE3E8
/* 813CE398 | 3C 60 00 01 */	lis r3, 0x1
/* 813CE39C | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 813CE3A0 | 38 63 AC A4 */	subi r3, r3, 0x535c
/* 813CE3A4 | 38 A0 00 60 */	li r5, 0x60
/* 813CE3A8 | 7C 7B 19 D6 */	mullw r3, r27, r3
/* 813CE3AC | 7C 84 02 14 */	add r4, r4, r0
/* 813CE3B0 | 38 C0 00 20 */	li r6, 0x20
/* 813CE3B4 | 38 E0 00 05 */	li r7, 0x5
/* 813CE3B8 | 39 00 00 00 */	li r8, 0x0
/* 813CE3BC | 39 20 00 00 */	li r9, 0x0
/* 813CE3C0 | 7C 7A 1A 14 */	add r3, r26, r3
/* 813CE3C4 | 39 40 00 00 */	li r10, 0x0
/* 813CE3C8 | 1F 3C 01 5C */	mulli r25, r28, 0x15c
/* 813CE3CC | 3B A3 11 0C */	addi r29, r3, 0x110c
/* 813CE3D0 | 7C 7D CA 14 */	add r3, r29, r25
/* 813CE3D4 | 48 17 78 9D */	bl GXInitTexObj
/* 813CE3D8 | 7C 7D CA 14 */	add r3, r29, r25
/* 813CE3DC | 38 80 00 00 */	li r4, 0x0
/* 813CE3E0 | 48 17 7D CD */	bl GXLoadTexObj
/* 813CE3E4 | 48 00 00 94 */	b .L_813CE478
.L_813CE3E8:
/* 813CE3E8 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813CE3EC | 40 82 00 8C */	bne .L_813CE478
/* 813CE3F0 | 3C 60 00 01 */	lis r3, 0x1
/* 813CE3F4 | 38 00 00 00 */	li r0, 0x0
/* 813CE3F8 | 38 63 AC A4 */	subi r3, r3, 0x535c
/* 813CE3FC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813CE400 | 7E FB 19 D6 */	mullw r23, r27, r3
/* 813CE404 | 38 A0 00 60 */	li r5, 0x60
/* 813CE408 | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 813CE40C | 38 C0 00 20 */	li r6, 0x20
/* 813CE410 | 38 E0 00 09 */	li r7, 0x9
/* 813CE414 | 7C 99 02 14 */	add r4, r25, r0
/* 813CE418 | 7C 7A BA 14 */	add r3, r26, r23
/* 813CE41C | 39 00 00 00 */	li r8, 0x0
/* 813CE420 | 1F 1C 01 5C */	mulli r24, r28, 0x15c
/* 813CE424 | 39 20 00 00 */	li r9, 0x0
/* 813CE428 | 3A C3 11 0C */	addi r22, r3, 0x110c
/* 813CE42C | 39 40 00 00 */	li r10, 0x0
/* 813CE430 | 7C 76 C2 14 */	add r3, r22, r24
/* 813CE434 | 48 17 7A 49 */	bl GXInitTexObjCI
/* 813CE438 | 7C 1F EA 14 */	add r0, r31, r29
/* 813CE43C | 7C 9A BA 14 */	add r4, r26, r23
/* 813CE440 | 7C 60 F2 14 */	add r3, r0, r30
/* 813CE444 | 38 A0 00 02 */	li r5, 0x2
/* 813CE448 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813CE44C | 3A E4 11 38 */	addi r23, r4, 0x1138
/* 813CE450 | 7C 77 C2 14 */	add r3, r23, r24
/* 813CE454 | 38 C0 01 00 */	li r6, 0x100
/* 813CE458 | 7C 99 02 14 */	add r4, r25, r0
/* 813CE45C | 48 17 7D A5 */	bl GXInitTlutObj
/* 813CE460 | 7C 77 C2 14 */	add r3, r23, r24
/* 813CE464 | 38 80 00 00 */	li r4, 0x0
/* 813CE468 | 48 17 7D C1 */	bl GXLoadTlut
/* 813CE46C | 7C 76 C2 14 */	add r3, r22, r24
/* 813CE470 | 38 80 00 00 */	li r4, 0x0
/* 813CE474 | 48 17 7D 39 */	bl GXLoadTexObj
.L_813CE478:
/* 813CE478 | 3C 60 00 01 */	lis r3, 0x1
/* 813CE47C | 38 03 AC A4 */	subi r0, r3, 0x535c
/* 813CE480 | 7C 7B 01 D6 */	mullw r3, r27, r0
/* 813CE484 | 1C 1C 01 5C */	mulli r0, r28, 0x15c
/* 813CE488 | 7C 7A 1A 14 */	add r3, r26, r3
/* 813CE48C | 7C 63 02 14 */	add r3, r3, r0
/* 813CE490 | 38 63 11 0C */	addi r3, r3, 0x110c
.L_813CE494:
/* 813CE494 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813CE498 | 48 22 B0 61 */	bl _restgpr_22
/* 813CE49C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813CE4A0 | 7C 08 03 A6 */	mtlr r0
/* 813CE4A4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813CE4A8 | 4E 80 00 20 */	blr
.endfn create_banner__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x1478 | 0x813CE4AC | size: 0x64
# ipl::scene::MemoryCardManager::getBlocks(unsigned char, short)
.fn getBlocks__Q33ipl5scene17MemoryCardManagerFUcs, global
/* 813CE4AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CE4B0 | 7C 08 02 A6 */	mflr r0
/* 813CE4B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CE4B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CE4BC | 48 22 B0 0D */	bl _savegpr_29
/* 813CE4C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813CE4C4 | 7C 9E 23 78 */	mr r30, r4
/* 813CE4C8 | 7C BF 2B 78 */	mr r31, r5
/* 813CE4CC | 48 00 3B 4D */	bl getCardDirState__Q23ipl10memorycardFv
/* 813CE4D0 | 1C 9E 07 F0 */	mulli r4, r30, 0x7f0
/* 813CE4D4 | 57 E0 20 36 */	slwi r0, r31, 4
/* 813CE4D8 | 7C 9D 22 14 */	add r4, r29, r4
/* 813CE4DC | 7C 84 02 14 */	add r4, r4, r0
/* 813CE4E0 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813CE4E4 | 1C 9E 05 F4 */	mulli r4, r30, 0x5f4
/* 813CE4E8 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813CE4EC | 7C 63 22 14 */	add r3, r3, r4
/* 813CE4F0 | 7C 63 02 14 */	add r3, r3, r0
/* 813CE4F4 | A0 63 00 02 */	lhz r3, 0x2(r3)
/* 813CE4F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CE4FC | 48 22 B0 19 */	bl _restgpr_29
/* 813CE500 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CE504 | 7C 08 03 A6 */	mtlr r0
/* 813CE508 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CE50C | 4E 80 00 20 */	blr
.endfn getBlocks__Q33ipl5scene17MemoryCardManagerFUcs

# .text:0x14DC | 0x813CE510 | size: 0x38
# ipl::scene::MemoryCardManager::getFreeBlocks(unsigned char)
.fn getFreeBlocks__Q33ipl5scene17MemoryCardManagerFUc, global
/* 813CE510 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CE514 | 7C 08 02 A6 */	mflr r0
/* 813CE518 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CE51C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CE520 | 7C 9F 23 78 */	mr r31, r4
/* 813CE524 | 48 00 3B 01 */	bl getCardSlotState__Q23ipl10memorycardFv
/* 813CE528 | 1C 1F 00 14 */	mulli r0, r31, 0x14
/* 813CE52C | 7C 63 02 14 */	add r3, r3, r0
/* 813CE530 | A0 63 00 10 */	lhz r3, 0x10(r3)
/* 813CE534 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CE538 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CE53C | 7C 08 03 A6 */	mtlr r0
/* 813CE540 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CE544 | 4E 80 00 20 */	blr
.endfn getFreeBlocks__Q33ipl5scene17MemoryCardManagerFUc
