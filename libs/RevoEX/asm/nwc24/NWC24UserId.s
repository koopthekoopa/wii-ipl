.include "macros.inc"
.file "NWC24UserId.c"

# 0x814ADFAC..0x814AE3B4 | size: 0x408
.text
.balign 4

# .text:0x0 | 0x814ADFAC | size: 0xEC
.fn NWC24CheckUserId, global
/* 814ADFAC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814ADFB0 | 7C 08 02 A6 */	mflr r0
/* 814ADFB4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814ADFB8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814ADFBC | 48 14 B5 05 */	bl _savegpr_27
/* 814ADFC0 | 7C 7C 1B 78 */	mr r28, r3
/* 814ADFC4 | 7C 9B 23 78 */	mr r27, r4
/* 814ADFC8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADFCC | 4B FF 13 65 */	bl NWC24GetMyUserId
/* 814ADFD0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814ADFD4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814ADFD8 | 7C 60 E2 78 */	xor r0, r3, r28
/* 814ADFDC | 7C 85 DA 78 */	xor r5, r4, r27
/* 814ADFE0 | 7C A0 03 79 */	or. r0, r5, r0
/* 814ADFE4 | 40 82 00 0C */	bne .L_814ADFF0
/* 814ADFE8 | 38 60 FF DD */	li r3, -0x23
/* 814ADFEC | 48 00 00 94 */	b .L_814AE080
.L_814ADFF0:
/* 814ADFF0 | 48 00 01 41 */	bl getUnScrambleId
/* 814ADFF4 | 7F 64 DB 78 */	mr r4, r27
/* 814ADFF8 | 54 7B 8F 7E */	extrwi r27, r3, 3, 14
/* 814ADFFC | 7F 83 E3 78 */	mr r3, r28
/* 814AE000 | 48 00 01 31 */	bl getUnScrambleId
/* 814AE004 | 7C 9E 23 78 */	mr r30, r4
/* 814AE008 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE00C | 54 7C 8F 7E */	extrwi r28, r3, 3, 14
/* 814AE010 | 3B A0 00 00 */	li r29, 0x0
.L_814AE014:
/* 814AE014 | 38 1D 00 01 */	addi r0, r29, 0x1
/* 814AE018 | 7F E3 FB 78 */	mr r3, r31
/* 814AE01C | 7F C4 F3 78 */	mr r4, r30
/* 814AE020 | 20 A0 00 35 */	subfic r5, r0, 0x35
/* 814AE024 | 48 14 B9 39 */	bl __shr2u
/* 814AE028 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814AE02C | 41 82 00 1C */	beq .L_814AE048
/* 814AE030 | 20 BD 00 2A */	subfic r5, r29, 0x2a
/* 814AE034 | 38 80 06 35 */	li r4, 0x635
/* 814AE038 | 38 60 00 00 */	li r3, 0x0
/* 814AE03C | 48 14 B8 FD */	bl __shl2i
/* 814AE040 | 7F DE 22 78 */	xor r30, r30, r4
/* 814AE044 | 7F FF 1A 78 */	xor r31, r31, r3
.L_814AE048:
/* 814AE048 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814AE04C | 2C 1D 00 2B */	cmpwi r29, 0x2b
/* 814AE050 | 41 80 FF C4 */	blt .L_814AE014
/* 814AE054 | 7F C0 FB 79 */	or. r0, r30, r31
/* 814AE058 | 41 82 00 0C */	beq .L_814AE064
/* 814AE05C | 38 60 FF DB */	li r3, -0x25
/* 814AE060 | 48 00 00 20 */	b .L_814AE080
.L_814AE064:
/* 814AE064 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AE068 | 40 82 00 14 */	bne .L_814AE07C
/* 814AE06C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AE070 | 41 82 00 0C */	beq .L_814AE07C
/* 814AE074 | 38 60 FF F9 */	li r3, -0x7
/* 814AE078 | 48 00 00 08 */	b .L_814AE080
.L_814AE07C:
/* 814AE07C | 38 60 00 00 */	li r3, 0x0
.L_814AE080:
/* 814AE080 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AE084 | 48 14 B4 89 */	bl _restgpr_27
/* 814AE088 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AE08C | 7C 08 03 A6 */	mtlr r0
/* 814AE090 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AE094 | 4E 80 00 20 */	blr
.endfn NWC24CheckUserId

# .text:0xEC | 0x814AE098 | size: 0x98
.fn NWC24iCheckUserIdCRC, global
/* 814AE098 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AE09C | 7C 08 02 A6 */	mflr r0
/* 814AE0A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AE0A4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AE0A8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AE0AC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AE0B0 | 48 00 00 81 */	bl getUnScrambleId
/* 814AE0B4 | 7C 9E 23 78 */	mr r30, r4
/* 814AE0B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE0BC | 3B A0 00 00 */	li r29, 0x0
.L_814AE0C0:
/* 814AE0C0 | 38 1D 00 01 */	addi r0, r29, 0x1
/* 814AE0C4 | 7F E3 FB 78 */	mr r3, r31
/* 814AE0C8 | 7F C4 F3 78 */	mr r4, r30
/* 814AE0CC | 20 A0 00 35 */	subfic r5, r0, 0x35
/* 814AE0D0 | 48 14 B8 8D */	bl __shr2u
/* 814AE0D4 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814AE0D8 | 41 82 00 1C */	beq .L_814AE0F4
/* 814AE0DC | 20 BD 00 2A */	subfic r5, r29, 0x2a
/* 814AE0E0 | 38 80 06 35 */	li r4, 0x635
/* 814AE0E4 | 38 60 00 00 */	li r3, 0x0
/* 814AE0E8 | 48 14 B8 51 */	bl __shl2i
/* 814AE0EC | 7F DE 22 78 */	xor r30, r30, r4
/* 814AE0F0 | 7F FF 1A 78 */	xor r31, r31, r3
.L_814AE0F4:
/* 814AE0F4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814AE0F8 | 2C 1D 00 2B */	cmpwi r29, 0x2b
/* 814AE0FC | 41 80 FF C4 */	blt .L_814AE0C0
/* 814AE100 | 7F C0 FB 79 */	or. r0, r30, r31
/* 814AE104 | 41 82 00 0C */	beq .L_814AE110
/* 814AE108 | 38 60 FF DB */	li r3, -0x25
/* 814AE10C | 48 00 00 08 */	b .L_814AE114
.L_814AE110:
/* 814AE110 | 38 60 00 00 */	li r3, 0x0
.L_814AE114:
/* 814AE114 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AE118 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AE11C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AE120 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AE124 | 7C 08 03 A6 */	mtlr r0
/* 814AE128 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AE12C | 4E 80 00 20 */	blr
.endfn NWC24iCheckUserIdCRC

# .text:0x184 | 0x814AE130 | size: 0x284
.fn getUnScrambleId, local
/* 814AE130 | 39 20 FF FF */	li r9, -0x1
/* 814AE134 | 3C E0 00 20 */	lis r7, 0x20
/* 814AE138 | 3C C0 5E 5E */	lis r6, 0x5e5e
/* 814AE13C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AE140 | 38 E7 FF FF */	subi r7, r7, 0x1
/* 814AE144 | 7C 88 48 38 */	and r8, r4, r9
/* 814AE148 | 38 06 5E 5E */	addi r0, r6, 0x5e5e
/* 814AE14C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AE150 | 7C 63 38 38 */	and r3, r3, r7
/* 814AE154 | 3C A0 FF FF */	lis r5, 0xffff
/* 814AE158 | 7D 08 02 78 */	xor r8, r8, r0
/* 814AE15C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AE160 | 7D 08 48 38 */	and r8, r8, r9
/* 814AE164 | 68 63 5E 5E */	xori r3, r3, 0x5e5e
/* 814AE168 | 55 00 AA 94 */	clrlslwi r0, r8, 31, 21
/* 814AE16C | 38 C0 FF 00 */	li r6, -0x100
/* 814AE170 | 7C 63 38 38 */	and r3, r3, r7
/* 814AE174 | 55 08 F8 3E */	rotrwi r8, r8, 1
/* 814AE178 | 7C 63 03 78 */	or r3, r3, r0
/* 814AE17C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AE180 | 50 68 F8 00 */	rlwimi r8, r3, 31, 0, 0
/* 814AE184 | 3C 80 FF 01 */	lis r4, 0xff01
/* 814AE188 | 54 67 F8 7E */	srwi r7, r3, 1
/* 814AE18C | 38 A5 00 FF */	addi r5, r5, 0xff
/* 814AE190 | 55 1E C0 3E */	rotrwi r30, r8, 8
/* 814AE194 | 54 7D BE 3E */	extrwi r29, r3, 8, 15
/* 814AE198 | 7C EC 48 38 */	and r12, r7, r9
/* 814AE19C | 38 00 00 00 */	li r0, 0x0
/* 814AE1A0 | 50 7E B8 0E */	rlwimi r30, r3, 23, 0, 7
/* 814AE1A4 | 7D 1F 30 38 */	and r31, r8, r6
/* 814AE1A8 | 53 DF 06 3E */	rlwimi r31, r30, 0, 24, 31
/* 814AE1AC | 54 6B FC 2E */	rlwinm r11, r3, 31, 16, 23
/* 814AE1B0 | 7F FE 28 38 */	and r30, r31, r5
/* 814AE1B4 | 7D 8C 48 38 */	and r12, r12, r9
/* 814AE1B8 | 53 A0 46 3E */	rlwimi r0, r29, 8, 24, 31
/* 814AE1BC | 38 84 FF FF */	subi r4, r4, 0x1
/* 814AE1C0 | 7D 8C 03 78 */	or r12, r12, r0
/* 814AE1C4 | 7F CB 5B 78 */	or r11, r30, r11
/* 814AE1C8 | 7D 7E 20 38 */	and r30, r11, r4
/* 814AE1CC | 55 1F 06 3E */	clrlwi r31, r8, 24
/* 814AE1D0 | 38 00 00 00 */	li r0, 0x0
/* 814AE1D4 | 55 0B 82 1E */	clrlslwi r11, r8, 24, 16
/* 814AE1D8 | 3D 40 01 00 */	lis r10, 0x100
/* 814AE1DC | 7D 8C 48 38 */	and r12, r12, r9
/* 814AE1E0 | 53 E0 84 3E */	rlwimi r0, r31, 16, 16, 31
/* 814AE1E4 | 7F DE 5B 78 */	or r30, r30, r11
/* 814AE1E8 | 7D 9D 03 78 */	or r29, r12, r0
/* 814AE1EC | 54 6C FE 3E */	extrwi r12, r3, 8, 23
/* 814AE1F0 | 38 0A FF FF */	subi r0, r10, 0x1
/* 814AE1F4 | 39 40 00 00 */	li r10, 0x0
/* 814AE1F8 | 51 8A C2 3E */	rlwimi r10, r12, 24, 8, 31
/* 814AE1FC | 7F AB 48 38 */	and r11, r29, r9
/* 814AE200 | 7F CC 00 38 */	and r12, r30, r0
/* 814AE204 | 54 63 B8 0E */	extlwi r3, r3, 8, 23
/* 814AE208 | 7D 83 1B 78 */	or r3, r12, r3
/* 814AE20C | 7D 6C 53 78 */	or r12, r11, r10
/* 814AE210 | 7C 6A 48 38 */	and r10, r3, r9
/* 814AE214 | 3C 60 81 62 */	lis r3, TtableInv@ha
/* 814AE218 | 7D 5F 48 38 */	and r31, r10, r9
/* 814AE21C | 55 1E 80 3E */	rotlwi r30, r8, 16
/* 814AE220 | 57 EB E7 3E */	extrwi r11, r31, 4, 24
/* 814AE224 | 38 63 8D 80 */	addi r3, r3, TtableInv@l
/* 814AE228 | 50 FE 80 1E */	rlwimi r30, r7, 16, 0, 15
/* 814AE22C | 57 EA 07 3E */	clrlwi r10, r31, 28
/* 814AE230 | 7D 9D 30 38 */	and r29, r12, r6
/* 814AE234 | 55 0C 40 3E */	rotlwi r12, r8, 8
/* 814AE238 | 7D 63 58 AE */	lbzx r11, r3, r11
/* 814AE23C | 50 EC 40 2E */	rlwimi r12, r7, 8, 0, 23
/* 814AE240 | 7C E3 50 AE */	lbzx r7, r3, r10
/* 814AE244 | 53 DD 06 3E */	rlwimi r29, r30, 0, 24, 31
/* 814AE248 | 55 68 20 36 */	slwi r8, r11, 4
/* 814AE24C | 55 8A 44 2E */	clrlslwi r10, r12, 24, 8
/* 814AE250 | 7F AB 28 38 */	and r11, r29, r5
/* 814AE254 | 7D 6A 53 78 */	or r10, r11, r10
/* 814AE258 | 7D 07 3B 78 */	or r7, r8, r7
/* 814AE25C | 7F EB 30 38 */	and r11, r31, r6
/* 814AE260 | 39 00 00 00 */	li r8, 0x0
/* 814AE264 | 50 EB 06 3E */	rlwimi r11, r7, 0, 24, 31
/* 814AE268 | 7D 4C 48 38 */	and r12, r10, r9
/* 814AE26C | 55 6A C0 3E */	rotrwi r10, r11, 8
/* 814AE270 | 38 E0 00 00 */	li r7, 0x0
/* 814AE274 | 51 8A C0 0E */	rlwimi r10, r12, 24, 0, 7
/* 814AE278 | 7D 7F 28 38 */	and r31, r11, r5
/* 814AE27C | 55 4B E7 3E */	extrwi r11, r10, 4, 24
/* 814AE280 | 7D 8C 48 38 */	and r12, r12, r9
/* 814AE284 | 55 4A 07 3E */	clrlwi r10, r10, 28
/* 814AE288 | 7D 63 58 AE */	lbzx r11, r3, r11
/* 814AE28C | 7D 43 50 AE */	lbzx r10, r3, r10
/* 814AE290 | 55 6B 20 36 */	slwi r11, r11, 4
/* 814AE294 | 7D 6A 53 78 */	or r10, r11, r10
/* 814AE298 | 55 4B 06 3E */	clrlwi r11, r10, 24
/* 814AE29C | 55 4A 44 2E */	clrlslwi r10, r10, 24, 8
/* 814AE2A0 | 51 68 46 3E */	rlwimi r8, r11, 8, 24, 31
/* 814AE2A4 | 7F EA 53 78 */	or r10, r31, r10
/* 814AE2A8 | 7D 88 43 78 */	or r8, r12, r8
/* 814AE2AC | 55 4C 80 3E */	rotlwi r12, r10, 16
/* 814AE2B0 | 7D 4B 20 38 */	and r11, r10, r4
/* 814AE2B4 | 51 0C 80 1E */	rlwimi r12, r8, 16, 0, 15
/* 814AE2B8 | 7D 0A 48 38 */	and r10, r8, r9
/* 814AE2BC | 55 88 E7 3E */	extrwi r8, r12, 4, 24
/* 814AE2C0 | 55 84 07 3E */	clrlwi r4, r12, 28
/* 814AE2C4 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 814AE2C8 | 7C 83 20 AE */	lbzx r4, r3, r4
/* 814AE2CC | 55 08 20 36 */	slwi r8, r8, 4
/* 814AE2D0 | 7D 04 23 78 */	or r4, r8, r4
/* 814AE2D4 | 54 88 06 3E */	clrlwi r8, r4, 24
/* 814AE2D8 | 54 84 82 1E */	clrlslwi r4, r4, 24, 16
/* 814AE2DC | 7D 7D 23 78 */	or r29, r11, r4
/* 814AE2E0 | 51 07 84 3E */	rlwimi r7, r8, 16, 16, 31
/* 814AE2E4 | 7D 4B 3B 78 */	or r11, r10, r7
/* 814AE2E8 | 3C 80 00 01 */	lis r4, 0x1
/* 814AE2EC | 57 A8 40 3E */	rotlwi r8, r29, 8
/* 814AE2F0 | 7F BF 00 38 */	and r31, r29, r0
/* 814AE2F4 | 51 68 40 2E */	rlwimi r8, r11, 8, 0, 23
/* 814AE2F8 | 7D 6C 48 38 */	and r12, r11, r9
/* 814AE2FC | 55 0A E7 3E */	extrwi r10, r8, 4, 24
/* 814AE300 | 38 04 B3 B3 */	subi r0, r4, 0x4c4d
/* 814AE304 | 7D 63 50 AE */	lbzx r11, r3, r10
/* 814AE308 | 55 08 07 3E */	clrlwi r8, r8, 28
/* 814AE30C | 7D 43 40 AE */	lbzx r10, r3, r8
/* 814AE310 | 39 00 00 00 */	li r8, 0x0
/* 814AE314 | 55 6B 20 36 */	slwi r11, r11, 4
/* 814AE318 | 3C E0 B3 B4 */	lis r7, 0xb3b4
/* 814AE31C | 7D 6B 53 78 */	or r11, r11, r10
/* 814AE320 | 55 6A 06 3E */	clrlwi r10, r11, 24
/* 814AE324 | 38 E7 B3 B3 */	subi r7, r7, 0x4c4d
/* 814AE328 | 51 48 C2 3E */	rlwimi r8, r10, 24, 8, 31
/* 814AE32C | 55 64 C0 0E */	slwi r4, r11, 24
/* 814AE330 | 7D 8A 43 78 */	or r10, r12, r8
/* 814AE334 | 55 48 E7 3E */	extrwi r8, r10, 4, 24
/* 814AE338 | 7F EC 23 78 */	or r12, r31, r4
/* 814AE33C | 55 44 07 3E */	clrlwi r4, r10, 28
/* 814AE340 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 814AE344 | 7D 4B 30 38 */	and r11, r10, r6
/* 814AE348 | 7C 83 20 AE */	lbzx r4, r3, r4
/* 814AE34C | 55 06 20 36 */	slwi r6, r8, 4
/* 814AE350 | 7D 88 48 38 */	and r8, r12, r9
/* 814AE354 | 7C C4 23 78 */	or r4, r6, r4
/* 814AE358 | 50 8B 06 3E */	rlwimi r11, r4, 0, 24, 31
/* 814AE35C | 7D 0A 48 38 */	and r10, r8, r9
/* 814AE360 | 55 66 A7 3E */	extrwi r6, r11, 4, 16
/* 814AE364 | 55 64 C7 3E */	extrwi r4, r11, 4, 20
/* 814AE368 | 7C C3 30 AE */	lbzx r6, r3, r6
/* 814AE36C | 7C 63 20 AE */	lbzx r3, r3, r4
/* 814AE370 | 7D 68 28 38 */	and r8, r11, r5
/* 814AE374 | 54 C5 20 36 */	slwi r5, r6, 4
/* 814AE378 | 7D 44 48 38 */	and r4, r10, r9
/* 814AE37C | 7C A3 1B 78 */	or r3, r5, r3
/* 814AE380 | 54 63 44 2E */	clrlslwi r3, r3, 24, 8
/* 814AE384 | 7D 03 1B 78 */	or r3, r8, r3
/* 814AE388 | 54 65 52 EA */	clrlslwi r5, r3, 21, 10
/* 814AE38C | 54 63 AD BE */	extrwi r3, r3, 10, 11
/* 814AE390 | 50 85 55 BE */	rlwimi r5, r4, 10, 22, 31
/* 814AE394 | 50 83 50 2A */	rlwimi r3, r4, 10, 0, 21
/* 814AE398 | 7C 64 3A 78 */	xor r4, r3, r7
/* 814AE39C | 7C A3 02 78 */	xor r3, r5, r0
/* 814AE3A0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AE3A4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AE3A8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AE3AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AE3B0 | 4E 80 00 20 */	blr
.endfn getUnScrambleId

# 0x81618D80..0x81618D90 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x81618D80 | size: 0x10
.obj TtableInv, local
	.4byte 0x0D050907
	.4byte 0x000F0A02
	.4byte 0x0C030E01
	.4byte 0x08060B04
.endobj TtableInv
