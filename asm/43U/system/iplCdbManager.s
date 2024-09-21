.include "macros.inc"
.file "iplCdbManager.cpp"

# 0x8133F068..0x81340584 | size: 0x151C
.text
.balign 4

# .text:0x0 | 0x8133F068 | size: 0xC4
# ipl::cdb::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl3cdb7ManagerFPQ23EGG4Heap, global
/* 8133F068 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133F06C | 7C 08 02 A6 */	mflr r0
/* 8133F070 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133F074 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133F078 | 48 2B A4 4D */	bl _savegpr_28
/* 8133F07C | 3B C0 00 00 */	li r30, 0x0
/* 8133F080 | 7C 7C 1B 78 */	mr r28, r3
/* 8133F084 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 8133F088 | 7C 9D 23 78 */	mr r29, r4
/* 8133F08C | 9B C3 00 14 */	stb r30, 0x14(r3)
/* 8133F090 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8133F094 | 48 01 FE 05 */	bl __ct__Q23ipl10SDVFWorkerFv
/* 8133F098 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 8133F09C | 48 1F 2B 35 */	bl fn_81531BD0
/* 8133F0A0 | 3B FC 00 20 */	addi r31, r28, 0x20
/* 8133F0A4 | 7F E3 FB 78 */	mr r3, r31
/* 8133F0A8 | 48 1F 2B 61 */	bl fn_81531C08
/* 8133F0AC | 9B DC 00 39 */	stb r30, 0x39(r28)
/* 8133F0B0 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8133F0B4 | 9B DC 00 38 */	stb r30, 0x38(r28)
/* 8133F0B8 | 48 14 82 E9 */	bl CDBDatabaseInit
/* 8133F0BC | 7C 64 1B 78 */	mr r4, r3
/* 8133F0C0 | 7F 83 E3 78 */	mr r3, r28
/* 8133F0C4 | 38 A0 00 34 */	li r5, 0x34
/* 8133F0C8 | 48 00 13 35 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133F0CC | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8133F0D0 | 48 14 83 15 */	bl CDBDatabaseOpen
/* 8133F0D4 | 7C 64 1B 78 */	mr r4, r3
/* 8133F0D8 | 7F 83 E3 78 */	mr r3, r28
/* 8133F0DC | 38 A0 00 35 */	li r5, 0x35
/* 8133F0E0 | 48 00 13 1D */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133F0E4 | 7F 83 E3 78 */	mr r3, r28
/* 8133F0E8 | 38 80 00 00 */	li r4, 0x0
/* 8133F0EC | 48 00 12 6D */	bl getFreeSize__Q33ipl3cdb7ManagerFv
/* 8133F0F0 | 3C 60 00 02 */	lis r3, 0x2
/* 8133F0F4 | 7F A4 EB 78 */	mr r4, r29
/* 8133F0F8 | 38 63 14 E8 */	addi r3, r3, 0x14e8
/* 8133F0FC | 38 A0 00 40 */	li r5, 0x40
/* 8133F100 | 48 2B 8F D5 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133F104 | 90 7C 00 1C */	stw r3, 0x1c(r28)
/* 8133F108 | 7F E3 FB 78 */	mr r3, r31
/* 8133F10C | 48 1F 2B D9 */	bl fn_81531CE4
/* 8133F110 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133F114 | 7F 83 E3 78 */	mr r3, r28
/* 8133F118 | 48 2B A3 F9 */	bl _restgpr_28
/* 8133F11C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133F120 | 7C 08 03 A6 */	mtlr r0
/* 8133F124 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133F128 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl3cdb7ManagerFPQ23EGG4Heap

# .text:0xC4 | 0x8133F12C | size: 0x40
# ipl::cdb::Manager::closeDatabase()
.fn closeDatabase__Q33ipl3cdb7ManagerFv, global
/* 8133F12C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133F130 | 7C 08 02 A6 */	mflr r0
/* 8133F134 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133F138 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133F13C | 7C 7F 1B 78 */	mr r31, r3
/* 8133F140 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133F144 | 48 14 82 F1 */	bl CDBDatabaseClose
/* 8133F148 | 7C 64 1B 78 */	mr r4, r3
/* 8133F14C | 7F E3 FB 78 */	mr r3, r31
/* 8133F150 | 38 A0 00 4D */	li r5, 0x4d
/* 8133F154 | 48 00 12 A9 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133F158 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133F15C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133F160 | 7C 08 03 A6 */	mtlr r0
/* 8133F164 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133F168 | 4E 80 00 20 */	blr
.endfn closeDatabase__Q33ipl3cdb7ManagerFv

# .text:0x104 | 0x8133F16C | size: 0xE8
# ipl::cdb::Manager::createNewRecord(const char*, const char*, const OSCalendarTime*, unsigned long*, unsigned short*, const ipl::math::VEC2&, unsigned long, const NWC24FriendAddr&, unsigned short, unsigned short, const wchar_t*, const wchar_t*, const void*, const void**, unsigned long*, RBRAttachmentType*)
.fn createNewRecord__Q33ipl3cdb7ManagerFPCcPCcPC14OSCalendarTimePUlPUsRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType, global
/* 8133F16C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8133F170 | 7C 08 02 A6 */	mflr r0
/* 8133F174 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8133F178 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8133F17C | 48 2B A3 39 */	bl _savegpr_24
/* 8133F180 | 3B E0 00 00 */	li r31, 0x0
/* 8133F184 | 7C 99 23 78 */	mr r25, r4
/* 8133F188 | 93 E1 00 20 */	stw r31, 0x20(r1)
/* 8133F18C | 7C DB 33 78 */	mr r27, r6
/* 8133F190 | 80 81 00 AC */	lwz r4, 0xac(r1)
/* 8133F194 | 7C FC 3B 78 */	mr r28, r7
/* 8133F198 | 80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 8133F19C | 7C BA 2B 78 */	mr r26, r5
/* 8133F1A0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8133F1A4 | 7D 1D 43 78 */	mr r29, r8
/* 8133F1A8 | 80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 8133F1AC | 7D 24 4B 78 */	mr r4, r9
/* 8133F1B0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8133F1B4 | 7D 45 53 78 */	mr r5, r10
/* 8133F1B8 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 8133F1BC | 38 01 00 20 */	addi r0, r1, 0x20
/* 8133F1C0 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 8133F1C4 | 7C 78 1B 78 */	mr r24, r3
/* 8133F1C8 | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 8133F1CC | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 8133F1D0 | A0 E1 00 9E */	lhz r7, 0x9e(r1)
/* 8133F1D4 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8133F1D8 | A1 01 00 A2 */	lhz r8, 0xa2(r1)
/* 8133F1DC | 81 21 00 A4 */	lwz r9, 0xa4(r1)
/* 8133F1E0 | 81 41 00 A8 */	lwz r10, 0xa8(r1)
/* 8133F1E4 | 48 00 03 7D */	bl makeBuffer__Q33ipl3cdb7ManagerFRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentTypePUl
/* 8133F1E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F1EC | 7C 7E 1B 78 */	mr r30, r3
/* 8133F1F0 | 41 82 00 3C */	beq .L_8133F22C
/* 8133F1F4 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8133F1F8 | 7F 03 C3 78 */	mr r3, r24
/* 8133F1FC | 7F 25 CB 78 */	mr r5, r25
/* 8133F200 | 7F 46 D3 78 */	mr r6, r26
/* 8133F204 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133F208 | 7F 87 E3 78 */	mr r7, r28
/* 8133F20C | 7F A8 EB 78 */	mr r8, r29
/* 8133F210 | 7F 69 DB 78 */	mr r9, r27
/* 8133F214 | 7F CA F3 78 */	mr r10, r30
/* 8133F218 | 38 81 00 28 */	addi r4, r1, 0x28
/* 8133F21C | 48 00 08 99 */	bl createAtOnce__Q33ipl3cdb7ManagerFP10_CDBRecordPCcPCcPUlPUsPC14OSCalendarTimePUcUl
/* 8133F220 | 7C 7F 1B 78 */	mr r31, r3
/* 8133F224 | 7F C3 F3 78 */	mr r3, r30
/* 8133F228 | 48 2B 8E C5 */	bl __dla__FPv
.L_8133F22C:
/* 8133F22C | 7F 03 C3 78 */	mr r3, r24
/* 8133F230 | 38 80 00 00 */	li r4, 0x0
/* 8133F234 | 48 00 11 25 */	bl getFreeSize__Q33ipl3cdb7ManagerFv
/* 8133F238 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8133F23C | 7F E3 FB 78 */	mr r3, r31
/* 8133F240 | 48 2B A2 C1 */	bl _restgpr_24
/* 8133F244 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8133F248 | 7C 08 03 A6 */	mtlr r0
/* 8133F24C | 38 21 00 90 */	addi r1, r1, 0x90
/* 8133F250 | 4E 80 00 20 */	blr
.endfn createNewRecord__Q33ipl3cdb7ManagerFPCcPCcPC14OSCalendarTimePUlPUsRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType

# .text:0x1EC | 0x8133F254 | size: 0x30C
# ipl::cdb::Manager::writeRecord(_CDBRecord*, const ipl::math::VEC2&, unsigned long, const NWC24FriendAddr&, unsigned short, unsigned short, const wchar_t*, const wchar_t*, const void*, const void**, unsigned long*, RBRAttachmentType*)
.fn writeRecord__Q33ipl3cdb7ManagerFP10_CDBRecordRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType, global
/* 8133F254 | 94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8133F258 | 7C 08 02 A6 */	mflr r0
/* 8133F25C | 90 01 01 94 */	stw r0, 0x194(r1)
/* 8133F260 | 39 61 01 90 */	addi r11, r1, 0x190
/* 8133F264 | 48 2B A2 39 */	bl _savegpr_18
/* 8133F268 | 82 E1 01 98 */	lwz r23, 0x198(r1)
/* 8133F26C | 7C 74 1B 78 */	mr r20, r3
/* 8133F270 | 7C 95 23 78 */	mr r21, r4
/* 8133F274 | 7C B2 2B 78 */	mr r18, r5
/* 8133F278 | 83 01 01 9C */	lwz r24, 0x19c(r1)
/* 8133F27C | 7C D3 33 78 */	mr r19, r6
/* 8133F280 | 83 21 01 A0 */	lwz r25, 0x1a0(r1)
/* 8133F284 | 7C FF 3B 78 */	mr r31, r7
/* 8133F288 | 83 41 01 A4 */	lwz r26, 0x1a4(r1)
/* 8133F28C | 7D 1D 43 78 */	mr r29, r8
/* 8133F290 | 83 61 01 A8 */	lwz r27, 0x1a8(r1)
/* 8133F294 | 7D 3E 4B 78 */	mr r30, r9
/* 8133F298 | 7D 56 53 78 */	mr r22, r10
/* 8133F29C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133F2A0 | 3B 80 00 00 */	li r28, 0x0
/* 8133F2A4 | 38 80 00 00 */	li r4, 0x0
/* 8133F2A8 | 38 A0 01 48 */	li r5, 0x148
/* 8133F2AC | 4B FF 10 89 */	bl memset
/* 8133F2B0 | C0 32 00 00 */	lfs f1, 0x0(r18)
/* 8133F2B4 | 3C 60 52 49 */	lis r3, 0x5249
/* 8133F2B8 | C0 12 00 04 */	lfs f0, 0x4(r18)
/* 8133F2BC | 38 03 5F 35 */	addi r0, r3, 0x5f35
/* 8133F2C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133F2C4 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8133F2C8 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8133F2CC | 92 61 00 14 */	stw r19, 0x14(r1)
/* 8133F2D0 | 48 1F 69 B1 */	bl OSGetTime
/* 8133F2D4 | 38 00 00 20 */	li r0, 0x20
/* 8133F2D8 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8133F2DC | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 8133F2E0 | 38 9F FF FC */	subi r4, r31, 0x4
/* 8133F2E4 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8133F2E8 | 7C 09 03 A6 */	mtctr r0
.L_8133F2EC:
/* 8133F2EC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8133F2F0 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8133F2F4 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8133F2F8 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8133F2FC | 42 00 FF F0 */	bdnz .L_8133F2EC
/* 8133F300 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8133F304 | B3 A1 01 20 */	sth r29, 0x120(r1)
/* 8133F308 | 3B A0 01 48 */	li r29, 0x148
/* 8133F30C | 38 60 00 00 */	li r3, 0x0
/* 8133F310 | B3 C1 01 22 */	sth r30, 0x122(r1)
/* 8133F314 | 41 82 00 10 */	beq .L_8133F324
/* 8133F318 | A0 16 00 00 */	lhz r0, 0x0(r22)
/* 8133F31C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133F320 | 40 82 00 08 */	bne .L_8133F328
.L_8133F324:
/* 8133F324 | 38 60 00 01 */	li r3, 0x1
.L_8133F328:
/* 8133F328 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F32C | 41 82 00 0C */	beq .L_8133F338
/* 8133F330 | 3B E0 00 00 */	li r31, 0x0
/* 8133F334 | 48 00 00 14 */	b .L_8133F348
.L_8133F338:
/* 8133F338 | 7E C3 B3 78 */	mr r3, r22
/* 8133F33C | 48 2C 93 71 */	bl fn_816086AC
/* 8133F340 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8133F344 | 54 1F 08 38 */	extlwi r31, r0, 29, 1
.L_8133F348:
/* 8133F348 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8133F34C | 38 60 00 00 */	li r3, 0x0
/* 8133F350 | 41 82 00 10 */	beq .L_8133F360
/* 8133F354 | A0 17 00 00 */	lhz r0, 0x0(r23)
/* 8133F358 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133F35C | 40 82 00 08 */	bne .L_8133F364
.L_8133F360:
/* 8133F360 | 38 60 00 01 */	li r3, 0x1
.L_8133F364:
/* 8133F364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F368 | 41 82 00 0C */	beq .L_8133F374
/* 8133F36C | 3B C0 00 00 */	li r30, 0x0
/* 8133F370 | 48 00 00 14 */	b .L_8133F384
.L_8133F374:
/* 8133F374 | 7E E3 BB 78 */	mr r3, r23
/* 8133F378 | 48 2C 93 35 */	bl fn_816086AC
/* 8133F37C | 38 03 00 04 */	addi r0, r3, 0x4
/* 8133F380 | 54 1E 08 38 */	extlwi r30, r0, 29, 1
.L_8133F384:
/* 8133F384 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133F388 | 41 82 00 10 */	beq .L_8133F398
/* 8133F38C | 38 00 01 48 */	li r0, 0x148
/* 8133F390 | 3B BF 01 48 */	addi r29, r31, 0x148
/* 8133F394 | 90 01 01 24 */	stw r0, 0x124(r1)
.L_8133F398:
/* 8133F398 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133F39C | 41 82 00 0C */	beq .L_8133F3A8
/* 8133F3A0 | 93 A1 01 28 */	stw r29, 0x128(r1)
/* 8133F3A4 | 7F BD F2 14 */	add r29, r29, r30
.L_8133F3A8:
/* 8133F3A8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8133F3AC | 41 82 00 0C */	beq .L_8133F3B8
/* 8133F3B0 | 93 A1 01 2C */	stw r29, 0x12c(r1)
/* 8133F3B4 | 3B BD 00 4C */	addi r29, r29, 0x4c
.L_8133F3B8:
/* 8133F3B8 | 38 7D 00 1F */	addi r3, r29, 0x1f
/* 8133F3BC | 38 00 00 02 */	li r0, 0x2
/* 8133F3C0 | 54 7D 00 34 */	clrrwi r29, r3, 5
/* 8133F3C4 | 38 80 00 00 */	li r4, 0x0
/* 8133F3C8 | 38 60 00 00 */	li r3, 0x0
/* 8133F3CC | 7C 09 03 A6 */	mtctr r0
.L_8133F3D0:
/* 8133F3D0 | 7C 19 20 2E */	lwzx r0, r25, r4
/* 8133F3D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133F3D8 | 41 82 00 30 */	beq .L_8133F408
/* 8133F3DC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133F3E0 | 7C 1B 20 2E */	lwzx r0, r27, r4
/* 8133F3E4 | 7C A5 1A 14 */	add r5, r5, r3
/* 8133F3E8 | 90 05 01 28 */	stw r0, 0x128(r5)
/* 8133F3EC | 93 A5 01 2C */	stw r29, 0x12c(r5)
/* 8133F3F0 | 7C 1A 20 2E */	lwzx r0, r26, r4
/* 8133F3F4 | 90 05 01 30 */	stw r0, 0x130(r5)
/* 8133F3F8 | 7C BA 20 2E */	lwzx r5, r26, r4
/* 8133F3FC | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8133F400 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8133F404 | 7F BD 02 14 */	add r29, r29, r0
.L_8133F408:
/* 8133F408 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8133F40C | 38 84 00 04 */	addi r4, r4, 0x4
/* 8133F410 | 42 00 FF C0 */	bdnz .L_8133F3D0
/* 8133F414 | 7E 83 A3 78 */	mr r3, r20
/* 8133F418 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133F41C | 48 00 05 F1 */	bl calcCRC__Q33ipl3cdb7ManagerFPC9RBRHeader
/* 8133F420 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133F424 | 90 61 01 48 */	stw r3, 0x148(r1)
/* 8133F428 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133F42C | 7F A3 EB 78 */	mr r3, r29
/* 8133F430 | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 8133F434 | 38 A0 00 20 */	li r5, 0x20
/* 8133F438 | 48 2B 8C 9D */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133F43C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F440 | 7C 7B 1B 78 */	mr r27, r3
/* 8133F444 | 41 82 01 00 */	beq .L_8133F544
/* 8133F448 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133F44C | 38 A0 01 48 */	li r5, 0x148
/* 8133F450 | 4B FF 0D E1 */	bl memcpy
/* 8133F454 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133F458 | 41 82 00 18 */	beq .L_8133F470
/* 8133F45C | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8133F460 | 7E C4 B3 78 */	mr r4, r22
/* 8133F464 | 7F E5 FB 78 */	mr r5, r31
/* 8133F468 | 7C 7B 02 14 */	add r3, r27, r0
/* 8133F46C | 4B FF 0D C5 */	bl memcpy
.L_8133F470:
/* 8133F470 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133F474 | 41 82 00 18 */	beq .L_8133F48C
/* 8133F478 | 80 01 01 28 */	lwz r0, 0x128(r1)
/* 8133F47C | 7E E4 BB 78 */	mr r4, r23
/* 8133F480 | 7F C5 F3 78 */	mr r5, r30
/* 8133F484 | 7C 7B 02 14 */	add r3, r27, r0
/* 8133F488 | 4B FF 0D A9 */	bl memcpy
.L_8133F48C:
/* 8133F48C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8133F490 | 41 82 00 18 */	beq .L_8133F4A8
/* 8133F494 | 80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8133F498 | 7F 04 C3 78 */	mr r4, r24
/* 8133F49C | 38 A0 00 4A */	li r5, 0x4a
/* 8133F4A0 | 7C 7B 02 14 */	add r3, r27, r0
/* 8133F4A4 | 4B FF 0D 8D */	bl memcpy
.L_8133F4A8:
/* 8133F4A8 | 3B 01 00 08 */	addi r24, r1, 0x8
/* 8133F4AC | 3B 80 00 00 */	li r28, 0x0
/* 8133F4B0 | 3A C0 00 00 */	li r22, 0x0
/* 8133F4B4 | 3A E0 00 00 */	li r23, 0x0
.L_8133F4B8:
/* 8133F4B8 | 7C 99 B8 2E */	lwzx r4, r25, r23
/* 8133F4BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133F4C0 | 41 82 00 18 */	beq .L_8133F4D8
/* 8133F4C4 | 7C 78 B2 14 */	add r3, r24, r22
/* 8133F4C8 | 7C BA B8 2E */	lwzx r5, r26, r23
/* 8133F4CC | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 8133F4D0 | 7C 7B 02 14 */	add r3, r27, r0
/* 8133F4D4 | 4B FF 0D 5D */	bl memcpy
.L_8133F4D8:
/* 8133F4D8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8133F4DC | 3A F7 00 04 */	addi r23, r23, 0x4
/* 8133F4E0 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 8133F4E4 | 3A D6 00 0C */	addi r22, r22, 0xc
/* 8133F4E8 | 41 80 FF D0 */	blt .L_8133F4B8
/* 8133F4EC | 7E 83 A3 78 */	mr r3, r20
/* 8133F4F0 | 7E A4 AB 78 */	mr r4, r21
/* 8133F4F4 | 7F 65 DB 78 */	mr r5, r27
/* 8133F4F8 | 7F A6 EB 78 */	mr r6, r29
/* 8133F4FC | 48 00 0B 39 */	bl write__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl
/* 8133F500 | 80 14 00 04 */	lwz r0, 0x4(r20)
/* 8133F504 | 7C 7C 1B 78 */	mr r28, r3
/* 8133F508 | 2C 00 00 17 */	cmpwi r0, 0x17
/* 8133F50C | 40 82 00 24 */	bne .L_8133F530
/* 8133F510 | 7E 83 A3 78 */	mr r3, r20
/* 8133F514 | 7E A4 AB 78 */	mr r4, r21
/* 8133F518 | 48 00 0C 0D */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 8133F51C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F520 | 41 82 00 10 */	beq .L_8133F530
/* 8133F524 | 7E 83 A3 78 */	mr r3, r20
/* 8133F528 | 7E A4 AB 78 */	mr r4, r21
/* 8133F52C | 48 00 09 BD */	bl remove__Q33ipl3cdb7ManagerFP10_CDBRecord
.L_8133F530:
/* 8133F530 | 7F 63 DB 78 */	mr r3, r27
/* 8133F534 | 48 2B 8B B9 */	bl __dla__FPv
/* 8133F538 | 7E 83 A3 78 */	mr r3, r20
/* 8133F53C | 38 80 00 00 */	li r4, 0x0
/* 8133F540 | 48 00 0E 19 */	bl getFreeSize__Q33ipl3cdb7ManagerFv
.L_8133F544:
/* 8133F544 | 39 61 01 90 */	addi r11, r1, 0x190
/* 8133F548 | 7F 83 E3 78 */	mr r3, r28
/* 8133F54C | 48 2B 9F 9D */	bl _restgpr_18
/* 8133F550 | 80 01 01 94 */	lwz r0, 0x194(r1)
/* 8133F554 | 7C 08 03 A6 */	mtlr r0
/* 8133F558 | 38 21 01 90 */	addi r1, r1, 0x190
/* 8133F55C | 4E 80 00 20 */	blr
.endfn writeRecord__Q33ipl3cdb7ManagerFP10_CDBRecordRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType

# .text:0x4F8 | 0x8133F560 | size: 0x2D0
# ipl::cdb::Manager::makeBuffer(const ipl::math::VEC2&, unsigned long, const NWC24FriendAddr&, unsigned short, unsigned short, const wchar_t*, const wchar_t*, const void*, const void**, unsigned long*, RBRAttachmentType*, unsigned long*)
.fn makeBuffer__Q33ipl3cdb7ManagerFRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentTypePUl, global
/* 8133F560 | 94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8133F564 | 7C 08 02 A6 */	mflr r0
/* 8133F568 | 90 01 01 94 */	stw r0, 0x194(r1)
/* 8133F56C | 39 61 01 90 */	addi r11, r1, 0x190
/* 8133F570 | 48 2B 9F 31 */	bl _savegpr_19
/* 8133F574 | 83 01 01 98 */	lwz r24, 0x198(r1)
/* 8133F578 | 7C 75 1B 78 */	mr r21, r3
/* 8133F57C | 7C 93 23 78 */	mr r19, r4
/* 8133F580 | 7C B4 2B 78 */	mr r20, r5
/* 8133F584 | 83 21 01 9C */	lwz r25, 0x19c(r1)
/* 8133F588 | 7C DF 33 78 */	mr r31, r6
/* 8133F58C | 83 41 01 A0 */	lwz r26, 0x1a0(r1)
/* 8133F590 | 7C FD 3B 78 */	mr r29, r7
/* 8133F594 | 83 61 01 A4 */	lwz r27, 0x1a4(r1)
/* 8133F598 | 7D 1E 43 78 */	mr r30, r8
/* 8133F59C | 83 81 01 A8 */	lwz r28, 0x1a8(r1)
/* 8133F5A0 | 7D 36 4B 78 */	mr r22, r9
/* 8133F5A4 | 7D 57 53 78 */	mr r23, r10
/* 8133F5A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133F5AC | 38 80 00 00 */	li r4, 0x0
/* 8133F5B0 | 38 A0 01 48 */	li r5, 0x148
/* 8133F5B4 | 4B FF 0D 81 */	bl memset
/* 8133F5B8 | C0 33 00 00 */	lfs f1, 0x0(r19)
/* 8133F5BC | 3C 60 52 49 */	lis r3, 0x5249
/* 8133F5C0 | C0 13 00 04 */	lfs f0, 0x4(r19)
/* 8133F5C4 | 38 03 5F 35 */	addi r0, r3, 0x5f35
/* 8133F5C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133F5CC | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8133F5D0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8133F5D4 | 92 81 00 14 */	stw r20, 0x14(r1)
/* 8133F5D8 | 48 1F 66 A9 */	bl OSGetTime
/* 8133F5DC | 38 00 00 20 */	li r0, 0x20
/* 8133F5E0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8133F5E4 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 8133F5E8 | 38 9F FF FC */	subi r4, r31, 0x4
/* 8133F5EC | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8133F5F0 | 7C 09 03 A6 */	mtctr r0
.L_8133F5F4:
/* 8133F5F4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8133F5F8 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8133F5FC | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8133F600 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8133F604 | 42 00 FF F0 */	bdnz .L_8133F5F4
/* 8133F608 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8133F60C | B3 A1 01 20 */	sth r29, 0x120(r1)
/* 8133F610 | 3B A0 01 48 */	li r29, 0x148
/* 8133F614 | 38 60 00 00 */	li r3, 0x0
/* 8133F618 | B3 C1 01 22 */	sth r30, 0x122(r1)
/* 8133F61C | 41 82 00 10 */	beq .L_8133F62C
/* 8133F620 | A0 16 00 00 */	lhz r0, 0x0(r22)
/* 8133F624 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133F628 | 40 82 00 08 */	bne .L_8133F630
.L_8133F62C:
/* 8133F62C | 38 60 00 01 */	li r3, 0x1
.L_8133F630:
/* 8133F630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F634 | 41 82 00 0C */	beq .L_8133F640
/* 8133F638 | 3B E0 00 00 */	li r31, 0x0
/* 8133F63C | 48 00 00 14 */	b .L_8133F650
.L_8133F640:
/* 8133F640 | 7E C3 B3 78 */	mr r3, r22
/* 8133F644 | 48 2C 90 69 */	bl fn_816086AC
/* 8133F648 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8133F64C | 54 1F 08 38 */	extlwi r31, r0, 29, 1
.L_8133F650:
/* 8133F650 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8133F654 | 38 60 00 00 */	li r3, 0x0
/* 8133F658 | 41 82 00 10 */	beq .L_8133F668
/* 8133F65C | A0 17 00 00 */	lhz r0, 0x0(r23)
/* 8133F660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133F664 | 40 82 00 08 */	bne .L_8133F66C
.L_8133F668:
/* 8133F668 | 38 60 00 01 */	li r3, 0x1
.L_8133F66C:
/* 8133F66C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F670 | 41 82 00 0C */	beq .L_8133F67C
/* 8133F674 | 3B C0 00 00 */	li r30, 0x0
/* 8133F678 | 48 00 00 14 */	b .L_8133F68C
.L_8133F67C:
/* 8133F67C | 7E E3 BB 78 */	mr r3, r23
/* 8133F680 | 48 2C 90 2D */	bl fn_816086AC
/* 8133F684 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8133F688 | 54 1E 08 38 */	extlwi r30, r0, 29, 1
.L_8133F68C:
/* 8133F68C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133F690 | 41 82 00 10 */	beq .L_8133F6A0
/* 8133F694 | 38 00 01 48 */	li r0, 0x148
/* 8133F698 | 3B BF 01 48 */	addi r29, r31, 0x148
/* 8133F69C | 90 01 01 24 */	stw r0, 0x124(r1)
.L_8133F6A0:
/* 8133F6A0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133F6A4 | 41 82 00 0C */	beq .L_8133F6B0
/* 8133F6A8 | 93 A1 01 28 */	stw r29, 0x128(r1)
/* 8133F6AC | 7F BD F2 14 */	add r29, r29, r30
.L_8133F6B0:
/* 8133F6B0 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8133F6B4 | 41 82 00 0C */	beq .L_8133F6C0
/* 8133F6B8 | 93 A1 01 2C */	stw r29, 0x12c(r1)
/* 8133F6BC | 3B BD 00 4C */	addi r29, r29, 0x4c
.L_8133F6C0:
/* 8133F6C0 | 38 7D 00 1F */	addi r3, r29, 0x1f
/* 8133F6C4 | 38 00 00 02 */	li r0, 0x2
/* 8133F6C8 | 54 7D 00 34 */	clrrwi r29, r3, 5
/* 8133F6CC | 38 80 00 00 */	li r4, 0x0
/* 8133F6D0 | 38 60 00 00 */	li r3, 0x0
/* 8133F6D4 | 7C 09 03 A6 */	mtctr r0
.L_8133F6D8:
/* 8133F6D8 | 7C 19 20 2E */	lwzx r0, r25, r4
/* 8133F6DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133F6E0 | 41 82 00 30 */	beq .L_8133F710
/* 8133F6E4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133F6E8 | 7C 1B 20 2E */	lwzx r0, r27, r4
/* 8133F6EC | 7C A5 1A 14 */	add r5, r5, r3
/* 8133F6F0 | 90 05 01 28 */	stw r0, 0x128(r5)
/* 8133F6F4 | 93 A5 01 2C */	stw r29, 0x12c(r5)
/* 8133F6F8 | 7C 1A 20 2E */	lwzx r0, r26, r4
/* 8133F6FC | 90 05 01 30 */	stw r0, 0x130(r5)
/* 8133F700 | 7C BA 20 2E */	lwzx r5, r26, r4
/* 8133F704 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8133F708 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8133F70C | 7F BD 02 14 */	add r29, r29, r0
.L_8133F710:
/* 8133F710 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8133F714 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8133F718 | 42 00 FF C0 */	bdnz .L_8133F6D8
/* 8133F71C | 7E A3 AB 78 */	mr r3, r21
/* 8133F720 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133F724 | 48 00 02 E9 */	bl calcCRC__Q33ipl3cdb7ManagerFPC9RBRHeader
/* 8133F728 | 90 61 01 48 */	stw r3, 0x148(r1)
/* 8133F72C | 38 7D 04 00 */	addi r3, r29, 0x400
/* 8133F730 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133F734 | 38 A0 00 20 */	li r5, 0x20
/* 8133F738 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 8133F73C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133F740 | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 8133F744 | 48 2B 89 91 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133F748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F74C | 7C 7B 1B 78 */	mr r27, r3
/* 8133F750 | 40 82 00 0C */	bne .L_8133F75C
/* 8133F754 | 38 60 00 00 */	li r3, 0x0
/* 8133F758 | 48 00 00 C0 */	b .L_8133F818
.L_8133F75C:
/* 8133F75C | 38 BD 04 00 */	addi r5, r29, 0x400
/* 8133F760 | 38 80 00 00 */	li r4, 0x0
/* 8133F764 | 4B FF 0B D1 */	bl memset
/* 8133F768 | 3B 9B 04 00 */	addi r28, r27, 0x400
/* 8133F76C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133F770 | 7F 83 E3 78 */	mr r3, r28
/* 8133F774 | 38 A0 01 48 */	li r5, 0x148
/* 8133F778 | 4B FF 0A B9 */	bl memcpy
/* 8133F77C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133F780 | 41 82 00 18 */	beq .L_8133F798
/* 8133F784 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8133F788 | 7E C4 B3 78 */	mr r4, r22
/* 8133F78C | 7F E5 FB 78 */	mr r5, r31
/* 8133F790 | 7C 7C 02 14 */	add r3, r28, r0
/* 8133F794 | 4B FF 0A 9D */	bl memcpy
.L_8133F798:
/* 8133F798 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133F79C | 41 82 00 18 */	beq .L_8133F7B4
/* 8133F7A0 | 80 01 01 28 */	lwz r0, 0x128(r1)
/* 8133F7A4 | 7E E4 BB 78 */	mr r4, r23
/* 8133F7A8 | 7F C5 F3 78 */	mr r5, r30
/* 8133F7AC | 7C 7C 02 14 */	add r3, r28, r0
/* 8133F7B0 | 4B FF 0A 81 */	bl memcpy
.L_8133F7B4:
/* 8133F7B4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8133F7B8 | 41 82 00 18 */	beq .L_8133F7D0
/* 8133F7BC | 80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8133F7C0 | 7F 04 C3 78 */	mr r4, r24
/* 8133F7C4 | 38 A0 00 4A */	li r5, 0x4a
/* 8133F7C8 | 7C 7C 02 14 */	add r3, r28, r0
/* 8133F7CC | 4B FF 0A 65 */	bl memcpy
.L_8133F7D0:
/* 8133F7D0 | 3A E1 00 08 */	addi r23, r1, 0x8
/* 8133F7D4 | 3B 00 00 00 */	li r24, 0x0
/* 8133F7D8 | 3A A0 00 00 */	li r21, 0x0
/* 8133F7DC | 3A C0 00 00 */	li r22, 0x0
.L_8133F7E0:
/* 8133F7E0 | 7C 99 B0 2E */	lwzx r4, r25, r22
/* 8133F7E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133F7E8 | 41 82 00 18 */	beq .L_8133F800
/* 8133F7EC | 7C 77 AA 14 */	add r3, r23, r21
/* 8133F7F0 | 7C BA B0 2E */	lwzx r5, r26, r22
/* 8133F7F4 | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 8133F7F8 | 7C 7C 02 14 */	add r3, r28, r0
/* 8133F7FC | 4B FF 0A 35 */	bl memcpy
.L_8133F800:
/* 8133F800 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8133F804 | 3A D6 00 04 */	addi r22, r22, 0x4
/* 8133F808 | 2C 18 00 02 */	cmpwi r24, 0x2
/* 8133F80C | 3A B5 00 0C */	addi r21, r21, 0xc
/* 8133F810 | 41 80 FF D0 */	blt .L_8133F7E0
/* 8133F814 | 7F 63 DB 78 */	mr r3, r27
.L_8133F818:
/* 8133F818 | 39 61 01 90 */	addi r11, r1, 0x190
/* 8133F81C | 48 2B 9C D1 */	bl _restgpr_19
/* 8133F820 | 80 01 01 94 */	lwz r0, 0x194(r1)
/* 8133F824 | 7C 08 03 A6 */	mtlr r0
/* 8133F828 | 38 21 01 90 */	addi r1, r1, 0x190
/* 8133F82C | 4E 80 00 20 */	blr
.endfn makeBuffer__Q33ipl3cdb7ManagerFRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentTypePUl

# .text:0x7C8 | 0x8133F830 | size: 0x80
# ipl::cdb::Manager::deleteRecord(_CDBRecordKey*)
.fn deleteRecord__Q33ipl3cdb7ManagerFP13_CDBRecordKey, global
/* 8133F830 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8133F834 | 7C 08 02 A6 */	mflr r0
/* 8133F838 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8133F83C | 39 61 00 60 */	addi r11, r1, 0x60
/* 8133F840 | 48 2B 9C 85 */	bl _savegpr_28
/* 8133F844 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133F848 | 7C 7C 1B 78 */	mr r28, r3
/* 8133F84C | 7C 9D 23 78 */	mr r29, r4
/* 8133F850 | 3B C0 00 00 */	li r30, 0x0
/* 8133F854 | 7F E3 FB 78 */	mr r3, r31
/* 8133F858 | 48 1F 23 B1 */	bl fn_81531C08
/* 8133F85C | 7F 83 E3 78 */	mr r3, r28
/* 8133F860 | 7F A5 EB 78 */	mr r5, r29
/* 8133F864 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133F868 | 48 00 04 85 */	bl findByKey__Q33ipl3cdb7ManagerFP10_CDBRecordP13_CDBRecordKey
/* 8133F86C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F870 | 41 82 00 1C */	beq .L_8133F88C
/* 8133F874 | 7F 83 E3 78 */	mr r3, r28
/* 8133F878 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133F87C | 48 00 06 6D */	bl remove__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 8133F880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F884 | 41 82 00 08 */	beq .L_8133F88C
/* 8133F888 | 3B C0 00 01 */	li r30, 0x1
.L_8133F88C:
/* 8133F88C | 7F E3 FB 78 */	mr r3, r31
/* 8133F890 | 48 1F 24 55 */	bl fn_81531CE4
/* 8133F894 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8133F898 | 7F C3 F3 78 */	mr r3, r30
/* 8133F89C | 48 2B 9C 75 */	bl _restgpr_28
/* 8133F8A0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8133F8A4 | 7C 08 03 A6 */	mtlr r0
/* 8133F8A8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8133F8AC | 4E 80 00 20 */	blr
.endfn deleteRecord__Q33ipl3cdb7ManagerFP13_CDBRecordKey

# .text:0x848 | 0x8133F8B0 | size: 0x3C
# ipl::cdb::Manager::isValidHeader(const RBRHeader*)
.fn isValidHeader__Q33ipl3cdb7ManagerFPC9RBRHeader, global
/* 8133F8B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133F8B4 | 7C 08 02 A6 */	mflr r0
/* 8133F8B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133F8BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133F8C0 | 7C 9F 23 78 */	mr r31, r4
/* 8133F8C4 | 48 00 01 49 */	bl calcCRC__Q33ipl3cdb7ManagerFPC9RBRHeader
/* 8133F8C8 | 80 1F 01 40 */	lwz r0, 0x140(r31)
/* 8133F8CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133F8D0 | 7C 03 00 50 */	subf r0, r3, r0
/* 8133F8D4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133F8D8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8133F8DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133F8E0 | 7C 08 03 A6 */	mtlr r0
/* 8133F8E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133F8E8 | 4E 80 00 20 */	blr
.endfn isValidHeader__Q33ipl3cdb7ManagerFPC9RBRHeader

# .text:0x884 | 0x8133F8EC | size: 0x9C
# ipl::cdb::Manager::isValidType(const char*)
.fn isValidType__Q33ipl3cdb7ManagerFPCc, global
/* 8133F8EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133F8F0 | 7C 08 02 A6 */	mflr r0
/* 8133F8F4 | 38 A0 00 08 */	li r5, 0x8
/* 8133F8F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133F8FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133F900 | 3B E0 00 00 */	li r31, 0x0
/* 8133F904 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133F908 | 7C 9E 23 78 */	mr r30, r4
/* 8133F90C | 7F C3 F3 78 */	mr r3, r30
/* 8133F910 | 80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 8133F914 | 48 2C 2C 89 */	bl strncmp
/* 8133F918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F91C | 41 82 00 4C */	beq .L_8133F968
/* 8133F920 | 80 8D 80 0C */	lwz r4, RBRFileType_Odh@sda21(r0)
/* 8133F924 | 7F C3 F3 78 */	mr r3, r30
/* 8133F928 | 38 A0 00 08 */	li r5, 0x8
/* 8133F92C | 48 2C 2C 71 */	bl strncmp
/* 8133F930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F934 | 41 82 00 34 */	beq .L_8133F968
/* 8133F938 | 80 8D 80 14 */	lwz r4, RBRFileType_Dat@sda21(r0)
/* 8133F93C | 7F C3 F3 78 */	mr r3, r30
/* 8133F940 | 38 A0 00 08 */	li r5, 0x8
/* 8133F944 | 48 2C 2C 59 */	bl strncmp
/* 8133F948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F94C | 41 82 00 1C */	beq .L_8133F968
/* 8133F950 | 80 8D 80 1C */	lwz r4, RBRFileType_Log@sda21(r0)
/* 8133F954 | 7F C3 F3 78 */	mr r3, r30
/* 8133F958 | 38 A0 00 08 */	li r5, 0x8
/* 8133F95C | 48 2C 2C 41 */	bl strncmp
/* 8133F960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F964 | 40 82 00 08 */	bne .L_8133F96C
.L_8133F968:
/* 8133F968 | 3B E0 00 01 */	li r31, 0x1
.L_8133F96C:
/* 8133F96C | 7F E3 FB 78 */	mr r3, r31
/* 8133F970 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133F974 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133F978 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133F97C | 7C 08 03 A6 */	mtlr r0
/* 8133F980 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133F984 | 4E 80 00 20 */	blr
.endfn isValidType__Q33ipl3cdb7ManagerFPCc

# .text:0x920 | 0x8133F988 | size: 0x84
# ipl::cdb::Manager::isTxtValidType(const char*)
.fn isTxtValidType__Q33ipl3cdb7ManagerFPCc, global
/* 8133F988 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133F98C | 7C 08 02 A6 */	mflr r0
/* 8133F990 | 38 A0 00 08 */	li r5, 0x8
/* 8133F994 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133F998 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133F99C | 3B E0 00 00 */	li r31, 0x0
/* 8133F9A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133F9A4 | 7C 9E 23 78 */	mr r30, r4
/* 8133F9A8 | 7F C3 F3 78 */	mr r3, r30
/* 8133F9AC | 80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 8133F9B0 | 48 2C 2B ED */	bl strncmp
/* 8133F9B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F9B8 | 41 82 00 34 */	beq .L_8133F9EC
/* 8133F9BC | 80 8D 80 0C */	lwz r4, RBRFileType_Odh@sda21(r0)
/* 8133F9C0 | 7F C3 F3 78 */	mr r3, r30
/* 8133F9C4 | 38 A0 00 08 */	li r5, 0x8
/* 8133F9C8 | 48 2C 2B D5 */	bl strncmp
/* 8133F9CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F9D0 | 41 82 00 1C */	beq .L_8133F9EC
/* 8133F9D4 | 80 8D 80 14 */	lwz r4, RBRFileType_Dat@sda21(r0)
/* 8133F9D8 | 7F C3 F3 78 */	mr r3, r30
/* 8133F9DC | 38 A0 00 08 */	li r5, 0x8
/* 8133F9E0 | 48 2C 2B BD */	bl strncmp
/* 8133F9E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133F9E8 | 40 82 00 08 */	bne .L_8133F9F0
.L_8133F9EC:
/* 8133F9EC | 3B E0 00 01 */	li r31, 0x1
.L_8133F9F0:
/* 8133F9F0 | 7F E3 FB 78 */	mr r3, r31
/* 8133F9F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133F9F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133F9FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133FA00 | 7C 08 03 A6 */	mtlr r0
/* 8133FA04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133FA08 | 4E 80 00 20 */	blr
.endfn isTxtValidType__Q33ipl3cdb7ManagerFPCc

# .text:0x9A4 | 0x8133FA0C | size: 0x58
# ipl::cdb::Manager::calcCRC(const RBRHeader*)
.fn calcCRC__Q33ipl3cdb7ManagerFPC9RBRHeader, global
/* 8133FA0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133FA10 | 7C 08 02 A6 */	mflr r0
/* 8133FA14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133FA18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133FA1C | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FA20 | 7F E3 FB 78 */	mr r3, r31
/* 8133FA24 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133FA28 | 7C 9E 23 78 */	mr r30, r4
/* 8133FA2C | 48 1F 21 DD */	bl fn_81531C08
/* 8133FA30 | 7F C3 F3 78 */	mr r3, r30
/* 8133FA34 | 38 80 01 40 */	li r4, 0x140
/* 8133FA38 | 48 15 3C 89 */	bl NETCalcCRC32
/* 8133FA3C | 7C 7E 1B 78 */	mr r30, r3
/* 8133FA40 | 7F E3 FB 78 */	mr r3, r31
/* 8133FA44 | 48 1F 22 A1 */	bl fn_81531CE4
/* 8133FA48 | 7F C3 F3 78 */	mr r3, r30
/* 8133FA4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133FA50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133FA54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133FA58 | 7C 08 03 A6 */	mtlr r0
/* 8133FA5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133FA60 | 4E 80 00 20 */	blr
.endfn calcCRC__Q33ipl3cdb7ManagerFPC9RBRHeader

# .text:0x9FC | 0x8133FA64 | size: 0x28
# ipl::cdb::Manager::isOverFlow() const
.fn isOverFlow__Q33ipl3cdb7ManagerCFv, global
/* 8133FA64 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133FA68 | 3C 00 01 40 */	lis r0, 0x140
/* 8133FA6C | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 8133FA70 | 7C 03 03 D6 */	divw r0, r3, r0
/* 8133FA74 | 68 03 00 0A */	xori r3, r0, 0xa
/* 8133FA78 | 70 60 00 0A */	andi. r0, r3, 0xa
/* 8133FA7C | 7C 63 0E 70 */	srawi r3, r3, 1
/* 8133FA80 | 7C 00 18 50 */	subf r0, r0, r3
/* 8133FA84 | 54 03 0F FE */	srwi r3, r0, 31
/* 8133FA88 | 4E 80 00 20 */	blr
.endfn isOverFlow__Q33ipl3cdb7ManagerCFv

# .text:0xA24 | 0x8133FA8C | size: 0x28
# ipl::cdb::Manager::isUnderFlow() const
.fn isUnderFlow__Q33ipl3cdb7ManagerCFv, global
/* 8133FA8C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133FA90 | 3C 00 01 40 */	lis r0, 0x140
/* 8133FA94 | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 8133FA98 | 7C 83 03 D6 */	divw r4, r3, r0
/* 8133FA9C | 68 80 00 32 */	xori r0, r4, 0x32
/* 8133FAA0 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 8133FAA4 | 7C 00 20 38 */	and r0, r0, r4
/* 8133FAA8 | 7C 00 18 50 */	subf r0, r0, r3
/* 8133FAAC | 54 03 0F FE */	srwi r3, r0, 31
/* 8133FAB0 | 4E 80 00 20 */	blr
.endfn isUnderFlow__Q33ipl3cdb7ManagerCFv

# .text:0xA4C | 0x8133FAB4 | size: 0x238
# ipl::cdb::Manager::createAtOnce(_CDBRecord*, const char*, const char*, unsigned long*, unsigned short*, const OSCalendarTime*, unsigned char*, unsigned long)
.fn createAtOnce__Q33ipl3cdb7ManagerFP10_CDBRecordPCcPCcPUlPUsPC14OSCalendarTimePUcUl, global
/* 8133FAB4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8133FAB8 | 7C 08 02 A6 */	mflr r0
/* 8133FABC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8133FAC0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8133FAC4 | 48 2B 99 E9 */	bl _savegpr_22
/* 8133FAC8 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FACC | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8133FAD0 | 7C 76 1B 78 */	mr r22, r3
/* 8133FAD4 | 7C 97 23 78 */	mr r23, r4
/* 8133FAD8 | 7C B8 2B 78 */	mr r24, r5
/* 8133FADC | 7C D9 33 78 */	mr r25, r6
/* 8133FAE0 | 7C FA 3B 78 */	mr r26, r7
/* 8133FAE4 | 7D 1B 43 78 */	mr r27, r8
/* 8133FAE8 | 7D 3C 4B 78 */	mr r28, r9
/* 8133FAEC | 7D 5D 53 78 */	mr r29, r10
/* 8133FAF0 | 7F E3 FB 78 */	mr r3, r31
/* 8133FAF4 | 48 1F 21 15 */	bl fn_81531C08
/* 8133FAF8 | 38 00 00 00 */	li r0, 0x0
/* 8133FAFC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8133FB00 | 98 01 00 20 */	stb r0, 0x20(r1)
/* 8133FB04 | 98 01 00 21 */	stb r0, 0x21(r1)
/* 8133FB08 | 98 01 00 22 */	stb r0, 0x22(r1)
/* 8133FB0C | 98 01 00 23 */	stb r0, 0x23(r1)
/* 8133FB10 | 98 01 00 24 */	stb r0, 0x24(r1)
/* 8133FB14 | 98 01 00 25 */	stb r0, 0x25(r1)
/* 8133FB18 | 98 01 00 26 */	stb r0, 0x26(r1)
/* 8133FB1C | 98 01 00 27 */	stb r0, 0x27(r1)
/* 8133FB20 | 41 82 00 28 */	beq .L_8133FB48
/* 8133FB24 | 38 00 00 02 */	li r0, 0x2
/* 8133FB28 | 7F 64 DB 78 */	mr r4, r27
/* 8133FB2C | 38 61 00 20 */	addi r3, r1, 0x20
/* 8133FB30 | 7C 09 03 A6 */	mtctr r0
.L_8133FB34:
/* 8133FB34 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8133FB38 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8133FB3C | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8133FB40 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8133FB44 | 42 00 FF F0 */	bdnz .L_8133FB34
.L_8133FB48:
/* 8133FB48 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8133FB4C | 41 82 00 28 */	beq .L_8133FB74
/* 8133FB50 | 38 00 00 04 */	li r0, 0x4
/* 8133FB54 | 7F 44 D3 78 */	mr r4, r26
/* 8133FB58 | 38 61 00 23 */	addi r3, r1, 0x23
/* 8133FB5C | 7C 09 03 A6 */	mtctr r0
.L_8133FB60:
/* 8133FB60 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8133FB64 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8133FB68 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8133FB6C | 38 63 00 01 */	addi r3, r3, 0x1
/* 8133FB70 | 42 00 FF F0 */	bdnz .L_8133FB60
.L_8133FB74:
/* 8133FB74 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8133FB78 | 40 82 00 64 */	bne .L_8133FBDC
/* 8133FB7C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8133FB80 | 41 82 00 38 */	beq .L_8133FBB8
/* 8133FB84 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8133FB88 | 41 82 00 30 */	beq .L_8133FBB8
/* 8133FB8C | 7E E4 BB 78 */	mr r4, r23
/* 8133FB90 | 7F 05 C3 78 */	mr r5, r24
/* 8133FB94 | 7F 26 CB 78 */	mr r6, r25
/* 8133FB98 | 7F A7 EB 78 */	mr r7, r29
/* 8133FB9C | 7F C8 F3 78 */	mr r8, r30
/* 8133FBA0 | 38 76 00 08 */	addi r3, r22, 0x8
/* 8133FBA4 | 39 21 00 20 */	addi r9, r1, 0x20
/* 8133FBA8 | 39 41 00 23 */	addi r10, r1, 0x23
/* 8133FBAC | 48 14 79 39 */	bl CDBDatabasePrivateCreateRecordAtOnce
/* 8133FBB0 | 7C 78 1B 78 */	mr r24, r3
/* 8133FBB4 | 48 00 00 D4 */	b .L_8133FC88
.L_8133FBB8:
/* 8133FBB8 | 7E E4 BB 78 */	mr r4, r23
/* 8133FBBC | 7F 05 C3 78 */	mr r5, r24
/* 8133FBC0 | 7F 26 CB 78 */	mr r6, r25
/* 8133FBC4 | 7F A7 EB 78 */	mr r7, r29
/* 8133FBC8 | 7F C8 F3 78 */	mr r8, r30
/* 8133FBCC | 38 76 00 08 */	addi r3, r22, 0x8
/* 8133FBD0 | 48 14 7A 01 */	bl CDBDatabaseCreateRecordAtOnce
/* 8133FBD4 | 7C 78 1B 78 */	mr r24, r3
/* 8133FBD8 | 48 00 00 B0 */	b .L_8133FC88
.L_8133FBDC:
/* 8133FBDC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8133FBE0 | 41 82 00 60 */	beq .L_8133FC40
/* 8133FBE4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8133FBE8 | 41 82 00 58 */	beq .L_8133FC40
/* 8133FBEC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8133FBF0 | 38 E1 00 20 */	addi r7, r1, 0x20
/* 8133FBF4 | 38 01 00 23 */	addi r0, r1, 0x23
/* 8133FBF8 | 7E E4 BB 78 */	mr r4, r23
/* 8133FBFC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8133FC00 | 7F 05 C3 78 */	mr r5, r24
/* 8133FC04 | 7F 26 CB 78 */	mr r6, r25
/* 8133FC08 | 38 76 00 08 */	addi r3, r22, 0x8
/* 8133FC0C | 81 1C 00 00 */	lwz r8, 0x0(r28)
/* 8133FC10 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 8133FC14 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 8133FC18 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 8133FC1C | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 8133FC20 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8133FC24 | 80 FC 00 14 */	lwz r7, 0x14(r28)
/* 8133FC28 | 81 1C 00 10 */	lwz r8, 0x10(r28)
/* 8133FC2C | 81 3C 00 0C */	lwz r9, 0xc(r28)
/* 8133FC30 | 81 5C 00 08 */	lwz r10, 0x8(r28)
/* 8133FC34 | 48 14 7A FD */	bl CDBDatabasePrivateCreateRecordAtOnceEx
/* 8133FC38 | 7C 78 1B 78 */	mr r24, r3
/* 8133FC3C | 48 00 00 4C */	b .L_8133FC88
.L_8133FC40:
/* 8133FC40 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8133FC44 | 7E E4 BB 78 */	mr r4, r23
/* 8133FC48 | 7F 05 C3 78 */	mr r5, r24
/* 8133FC4C | 7F 26 CB 78 */	mr r6, r25
/* 8133FC50 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133FC54 | 7F A7 EB 78 */	mr r7, r29
/* 8133FC58 | 7F C8 F3 78 */	mr r8, r30
/* 8133FC5C | 38 76 00 08 */	addi r3, r22, 0x8
/* 8133FC60 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8133FC64 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8133FC68 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8133FC6C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8133FC70 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 8133FC74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133FC78 | 81 3C 00 14 */	lwz r9, 0x14(r28)
/* 8133FC7C | 81 5C 00 10 */	lwz r10, 0x10(r28)
/* 8133FC80 | 48 14 79 E5 */	bl CDBDatabaseCreateRecordAtOnceEx
/* 8133FC84 | 7C 78 1B 78 */	mr r24, r3
.L_8133FC88:
/* 8133FC88 | 80 16 00 04 */	lwz r0, 0x4(r22)
/* 8133FC8C | 2C 00 00 17 */	cmpwi r0, 0x17
/* 8133FC90 | 40 82 00 24 */	bne .L_8133FCB4
/* 8133FC94 | 7E C3 B3 78 */	mr r3, r22
/* 8133FC98 | 7E E4 BB 78 */	mr r4, r23
/* 8133FC9C | 48 00 04 89 */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 8133FCA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133FCA4 | 41 82 00 10 */	beq .L_8133FCB4
/* 8133FCA8 | 7E C3 B3 78 */	mr r3, r22
/* 8133FCAC | 7E E4 BB 78 */	mr r4, r23
/* 8133FCB0 | 48 00 02 39 */	bl remove__Q33ipl3cdb7ManagerFP10_CDBRecord
.L_8133FCB4:
/* 8133FCB4 | 7E C3 B3 78 */	mr r3, r22
/* 8133FCB8 | 7F 04 C3 78 */	mr r4, r24
/* 8133FCBC | 38 A0 02 9C */	li r5, 0x29c
/* 8133FCC0 | 48 00 07 3D */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FCC4 | 7C 76 1B 78 */	mr r22, r3
/* 8133FCC8 | 7F E3 FB 78 */	mr r3, r31
/* 8133FCCC | 48 1F 20 19 */	bl fn_81531CE4
/* 8133FCD0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8133FCD4 | 7E C3 B3 78 */	mr r3, r22
/* 8133FCD8 | 48 2B 98 21 */	bl _restgpr_22
/* 8133FCDC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8133FCE0 | 7C 08 03 A6 */	mtlr r0
/* 8133FCE4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8133FCE8 | 4E 80 00 20 */	blr
.endfn createAtOnce__Q33ipl3cdb7ManagerFP10_CDBRecordPCcPCcPUlPUsPC14OSCalendarTimePUcUl

# .text:0xC84 | 0x8133FCEC | size: 0x74
# ipl::cdb::Manager::findByKey(_CDBRecord*, _CDBRecordKey*)
.fn findByKey__Q33ipl3cdb7ManagerFP10_CDBRecordP13_CDBRecordKey, global
/* 8133FCEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133FCF0 | 7C 08 02 A6 */	mflr r0
/* 8133FCF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133FCF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FCFC | 48 2B 97 C9 */	bl _savegpr_28
/* 8133FD00 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FD04 | 7C 7C 1B 78 */	mr r28, r3
/* 8133FD08 | 7C 9D 23 78 */	mr r29, r4
/* 8133FD0C | 7C BE 2B 78 */	mr r30, r5
/* 8133FD10 | 7F E3 FB 78 */	mr r3, r31
/* 8133FD14 | 48 1F 1E F5 */	bl fn_81531C08
/* 8133FD18 | 7F A4 EB 78 */	mr r4, r29
/* 8133FD1C | 7F C5 F3 78 */	mr r5, r30
/* 8133FD20 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8133FD24 | 48 14 7D 31 */	bl CDBDatabaseFindByKey
/* 8133FD28 | 7C 64 1B 78 */	mr r4, r3
/* 8133FD2C | 7F 83 E3 78 */	mr r3, r28
/* 8133FD30 | 38 A0 02 C3 */	li r5, 0x2c3
/* 8133FD34 | 48 00 06 C9 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FD38 | 7C 7E 1B 78 */	mr r30, r3
/* 8133FD3C | 7F E3 FB 78 */	mr r3, r31
/* 8133FD40 | 48 1F 1F A5 */	bl fn_81531CE4
/* 8133FD44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FD48 | 7F C3 F3 78 */	mr r3, r30
/* 8133FD4C | 48 2B 97 C5 */	bl _restgpr_28
/* 8133FD50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133FD54 | 7C 08 03 A6 */	mtlr r0
/* 8133FD58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133FD5C | 4E 80 00 20 */	blr
.endfn findByKey__Q33ipl3cdb7ManagerFP10_CDBRecordP13_CDBRecordKey

# .text:0xCF8 | 0x8133FD60 | size: 0xA8
# ipl::cdb::Manager::search(const unsigned long&, const unsigned long&, CDBSearchDirection, CDBRecordLocation, int, int (*)(void*, _CDBRecord*), void*)
.fn search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv, global
/* 8133FD60 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133FD64 | 7C 08 02 A6 */	mflr r0
/* 8133FD68 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8133FD6C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133FD70 | 48 2B 97 41 */	bl _savegpr_23
/* 8133FD74 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FD78 | 7C 77 1B 78 */	mr r23, r3
/* 8133FD7C | 7C 98 23 78 */	mr r24, r4
/* 8133FD80 | 7C B9 2B 78 */	mr r25, r5
/* 8133FD84 | 7C DA 33 78 */	mr r26, r6
/* 8133FD88 | 7C FB 3B 78 */	mr r27, r7
/* 8133FD8C | 7D 1C 43 78 */	mr r28, r8
/* 8133FD90 | 7D 3D 4B 78 */	mr r29, r9
/* 8133FD94 | 7D 5E 53 78 */	mr r30, r10
/* 8133FD98 | 7F E3 FB 78 */	mr r3, r31
/* 8133FD9C | 48 1F 1E 6D */	bl fn_81531C08
/* 8133FDA0 | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8133FDA4 | 7F 46 D3 78 */	mr r6, r26
/* 8133FDA8 | 80 98 00 00 */	lwz r4, 0x0(r24)
/* 8133FDAC | 7F 6A DB 78 */	mr r10, r27
/* 8133FDB0 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8133FDB4 | 38 77 00 08 */	addi r3, r23, 0x8
/* 8133FDB8 | 80 B9 00 00 */	lwz r5, 0x0(r25)
/* 8133FDBC | 38 E0 00 00 */	li r7, 0x0
/* 8133FDC0 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8133FDC4 | 39 00 00 00 */	li r8, 0x0
/* 8133FDC8 | 39 20 00 00 */	li r9, 0x0
/* 8133FDCC | 48 14 98 B1 */	bl CDBDatabaseSearch
/* 8133FDD0 | 7C 64 1B 78 */	mr r4, r3
/* 8133FDD4 | 7E E3 BB 78 */	mr r3, r23
/* 8133FDD8 | 38 A0 02 E5 */	li r5, 0x2e5
/* 8133FDDC | 48 00 06 21 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FDE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8133FDE4 | 7F E3 FB 78 */	mr r3, r31
/* 8133FDE8 | 48 1F 1E FD */	bl fn_81531CE4
/* 8133FDEC | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133FDF0 | 7F C3 F3 78 */	mr r3, r30
/* 8133FDF4 | 48 2B 97 09 */	bl _restgpr_23
/* 8133FDF8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133FDFC | 7C 08 03 A6 */	mtlr r0
/* 8133FE00 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8133FE04 | 4E 80 00 20 */	blr
.endfn search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv

# .text:0xDA0 | 0x8133FE08 | size: 0x70
# ipl::cdb::Manager::getDataSize(_CDBRecord*, unsigned long*)
.fn getDataSize__Q33ipl3cdb7ManagerFP10_CDBRecordPUl, global
/* 8133FE08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133FE0C | 7C 08 02 A6 */	mflr r0
/* 8133FE10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133FE14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FE18 | 48 2B 96 AD */	bl _savegpr_28
/* 8133FE1C | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FE20 | 7C 7C 1B 78 */	mr r28, r3
/* 8133FE24 | 7C 9D 23 78 */	mr r29, r4
/* 8133FE28 | 7C BE 2B 78 */	mr r30, r5
/* 8133FE2C | 7F E3 FB 78 */	mr r3, r31
/* 8133FE30 | 48 1F 1D D9 */	bl fn_81531C08
/* 8133FE34 | 7F A3 EB 78 */	mr r3, r29
/* 8133FE38 | 7F C4 F3 78 */	mr r4, r30
/* 8133FE3C | 48 14 CB 45 */	bl CDBRecordGetDataSize
/* 8133FE40 | 7C 64 1B 78 */	mr r4, r3
/* 8133FE44 | 7F 83 E3 78 */	mr r3, r28
/* 8133FE48 | 38 A0 03 26 */	li r5, 0x326
/* 8133FE4C | 48 00 05 B1 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FE50 | 7C 7E 1B 78 */	mr r30, r3
/* 8133FE54 | 7F E3 FB 78 */	mr r3, r31
/* 8133FE58 | 48 1F 1E 8D */	bl fn_81531CE4
/* 8133FE5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FE60 | 7F C3 F3 78 */	mr r3, r30
/* 8133FE64 | 48 2B 96 AD */	bl _restgpr_28
/* 8133FE68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133FE6C | 7C 08 03 A6 */	mtlr r0
/* 8133FE70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133FE74 | 4E 80 00 20 */	blr
.endfn getDataSize__Q33ipl3cdb7ManagerFP10_CDBRecordPUl

# .text:0xE10 | 0x8133FE78 | size: 0x70
# ipl::cdb::Manager::getCDBId(_CDBRecord*, _CDBId*)
.fn getCDBId__Q33ipl3cdb7ManagerFP10_CDBRecordP6_CDBId, global
/* 8133FE78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133FE7C | 7C 08 02 A6 */	mflr r0
/* 8133FE80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133FE84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FE88 | 48 2B 96 3D */	bl _savegpr_28
/* 8133FE8C | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FE90 | 7C 7C 1B 78 */	mr r28, r3
/* 8133FE94 | 7C 9D 23 78 */	mr r29, r4
/* 8133FE98 | 7C BE 2B 78 */	mr r30, r5
/* 8133FE9C | 7F E3 FB 78 */	mr r3, r31
/* 8133FEA0 | 48 1F 1D 69 */	bl fn_81531C08
/* 8133FEA4 | 7F A3 EB 78 */	mr r3, r29
/* 8133FEA8 | 7F C4 F3 78 */	mr r4, r30
/* 8133FEAC | 48 14 CD D9 */	bl CDBRecordGetId
/* 8133FEB0 | 7C 64 1B 78 */	mr r4, r3
/* 8133FEB4 | 7F 83 E3 78 */	mr r3, r28
/* 8133FEB8 | 38 A0 03 67 */	li r5, 0x367
/* 8133FEBC | 48 00 05 41 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FEC0 | 7C 7E 1B 78 */	mr r30, r3
/* 8133FEC4 | 7F E3 FB 78 */	mr r3, r31
/* 8133FEC8 | 48 1F 1E 1D */	bl fn_81531CE4
/* 8133FECC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FED0 | 7F C3 F3 78 */	mr r3, r30
/* 8133FED4 | 48 2B 96 3D */	bl _restgpr_28
/* 8133FED8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133FEDC | 7C 08 03 A6 */	mtlr r0
/* 8133FEE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133FEE4 | 4E 80 00 20 */	blr
.endfn getCDBId__Q33ipl3cdb7ManagerFP10_CDBRecordP6_CDBId

# .text:0xE80 | 0x8133FEE8 | size: 0x68
# ipl::cdb::Manager::remove(_CDBRecord*)
.fn remove__Q33ipl3cdb7ManagerFP10_CDBRecord, global
/* 8133FEE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133FEEC | 7C 08 02 A6 */	mflr r0
/* 8133FEF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133FEF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FEF8 | 48 2B 95 D1 */	bl _savegpr_29
/* 8133FEFC | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FF00 | 7C 7D 1B 78 */	mr r29, r3
/* 8133FF04 | 7C 9E 23 78 */	mr r30, r4
/* 8133FF08 | 7F E3 FB 78 */	mr r3, r31
/* 8133FF0C | 48 1F 1C FD */	bl fn_81531C08
/* 8133FF10 | 7F C3 F3 78 */	mr r3, r30
/* 8133FF14 | 48 14 CA F9 */	bl CDBRecordRemove
/* 8133FF18 | 7C 64 1B 78 */	mr r4, r3
/* 8133FF1C | 7F A3 EB 78 */	mr r3, r29
/* 8133FF20 | 38 A0 03 73 */	li r5, 0x373
/* 8133FF24 | 48 00 04 D9 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FF28 | 7C 7E 1B 78 */	mr r30, r3
/* 8133FF2C | 7F E3 FB 78 */	mr r3, r31
/* 8133FF30 | 48 1F 1D B5 */	bl fn_81531CE4
/* 8133FF34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FF38 | 7F C3 F3 78 */	mr r3, r30
/* 8133FF3C | 48 2B 95 D9 */	bl _restgpr_29
/* 8133FF40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133FF44 | 7C 08 03 A6 */	mtlr r0
/* 8133FF48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133FF4C | 4E 80 00 20 */	blr
.endfn remove__Q33ipl3cdb7ManagerFP10_CDBRecord

# .text:0xEE8 | 0x8133FF50 | size: 0x68
# ipl::cdb::Manager::open(_CDBRecord*)
.fn open__Q33ipl3cdb7ManagerFP10_CDBRecord, global
/* 8133FF50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133FF54 | 7C 08 02 A6 */	mflr r0
/* 8133FF58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133FF5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FF60 | 48 2B 95 69 */	bl _savegpr_29
/* 8133FF64 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FF68 | 7C 7D 1B 78 */	mr r29, r3
/* 8133FF6C | 7C 9E 23 78 */	mr r30, r4
/* 8133FF70 | 7F E3 FB 78 */	mr r3, r31
/* 8133FF74 | 48 1F 1C 95 */	bl fn_81531C08
/* 8133FF78 | 7F C3 F3 78 */	mr r3, r30
/* 8133FF7C | 48 14 C2 0D */	bl CDBRecordOpen
/* 8133FF80 | 7C 64 1B 78 */	mr r4, r3
/* 8133FF84 | 7F A3 EB 78 */	mr r3, r29
/* 8133FF88 | 38 A0 03 7F */	li r5, 0x37f
/* 8133FF8C | 48 00 04 71 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8133FF90 | 7C 7E 1B 78 */	mr r30, r3
/* 8133FF94 | 7F E3 FB 78 */	mr r3, r31
/* 8133FF98 | 48 1F 1D 4D */	bl fn_81531CE4
/* 8133FF9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FFA0 | 7F C3 F3 78 */	mr r3, r30
/* 8133FFA4 | 48 2B 95 71 */	bl _restgpr_29
/* 8133FFA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133FFAC | 7C 08 03 A6 */	mtlr r0
/* 8133FFB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133FFB4 | 4E 80 00 20 */	blr
.endfn open__Q33ipl3cdb7ManagerFP10_CDBRecord

# .text:0xF50 | 0x8133FFB8 | size: 0x7C
# ipl::cdb::Manager::read(_CDBRecord*, void*, unsigned long)
.fn read__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl, global
/* 8133FFB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133FFBC | 7C 08 02 A6 */	mflr r0
/* 8133FFC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133FFC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133FFC8 | 48 2B 94 F9 */	bl _savegpr_27
/* 8133FFCC | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8133FFD0 | 7C 7B 1B 78 */	mr r27, r3
/* 8133FFD4 | 7C 9C 23 78 */	mr r28, r4
/* 8133FFD8 | 7C BD 2B 78 */	mr r29, r5
/* 8133FFDC | 7C DE 33 78 */	mr r30, r6
/* 8133FFE0 | 7F E3 FB 78 */	mr r3, r31
/* 8133FFE4 | 48 1F 1C 25 */	bl fn_81531C08
/* 8133FFE8 | 7F 83 E3 78 */	mr r3, r28
/* 8133FFEC | 7F A4 EB 78 */	mr r4, r29
/* 8133FFF0 | 7F C5 F3 78 */	mr r5, r30
/* 8133FFF4 | 38 C0 00 00 */	li r6, 0x0
/* 8133FFF8 | 48 14 C8 0D */	bl CDBRecordRead
/* 8133FFFC | 7C 64 1B 78 */	mr r4, r3
/* 81340000 | 7F 63 DB 78 */	mr r3, r27
/* 81340004 | 38 A0 03 8D */	li r5, 0x38d
/* 81340008 | 48 00 03 F5 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8134000C | 7C 7E 1B 78 */	mr r30, r3
/* 81340010 | 7F E3 FB 78 */	mr r3, r31
/* 81340014 | 48 1F 1C D1 */	bl fn_81531CE4
/* 81340018 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134001C | 7F C3 F3 78 */	mr r3, r30
/* 81340020 | 48 2B 94 ED */	bl _restgpr_27
/* 81340024 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340028 | 7C 08 03 A6 */	mtlr r0
/* 8134002C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340030 | 4E 80 00 20 */	blr
.endfn read__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl

# .text:0xFCC | 0x81340034 | size: 0x78
# ipl::cdb::Manager::write(_CDBRecord*, void*, unsigned long)
.fn write__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl, global
/* 81340034 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340038 | 7C 08 02 A6 */	mflr r0
/* 8134003C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340040 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340044 | 48 2B 94 7D */	bl _savegpr_27
/* 81340048 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8134004C | 7C 7B 1B 78 */	mr r27, r3
/* 81340050 | 7C 9C 23 78 */	mr r28, r4
/* 81340054 | 7C BD 2B 78 */	mr r29, r5
/* 81340058 | 7C DE 33 78 */	mr r30, r6
/* 8134005C | 7F E3 FB 78 */	mr r3, r31
/* 81340060 | 48 1F 1B A9 */	bl fn_81531C08
/* 81340064 | 7F 83 E3 78 */	mr r3, r28
/* 81340068 | 7F A4 EB 78 */	mr r4, r29
/* 8134006C | 7F C5 F3 78 */	mr r5, r30
/* 81340070 | 48 14 C5 BD */	bl CDBRecordWrite
/* 81340074 | 7C 64 1B 78 */	mr r4, r3
/* 81340078 | 7F 63 DB 78 */	mr r3, r27
/* 8134007C | 38 A0 03 9B */	li r5, 0x39b
/* 81340080 | 48 00 03 7D */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 81340084 | 7C 7E 1B 78 */	mr r30, r3
/* 81340088 | 7F E3 FB 78 */	mr r3, r31
/* 8134008C | 48 1F 1C 59 */	bl fn_81531CE4
/* 81340090 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340094 | 7F C3 F3 78 */	mr r3, r30
/* 81340098 | 48 2B 94 75 */	bl _restgpr_27
/* 8134009C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813400A0 | 7C 08 03 A6 */	mtlr r0
/* 813400A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813400A8 | 4E 80 00 20 */	blr
.endfn write__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl

# .text:0x1044 | 0x813400AC | size: 0x78
# ipl::cdb::Manager::seek(_CDBRecord*, long, CDBSeek)
.fn seek__Q33ipl3cdb7ManagerFP10_CDBRecordl7CDBSeek, global
/* 813400AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813400B0 | 7C 08 02 A6 */	mflr r0
/* 813400B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813400B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813400BC | 48 2B 94 05 */	bl _savegpr_27
/* 813400C0 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 813400C4 | 7C 7B 1B 78 */	mr r27, r3
/* 813400C8 | 7C 9C 23 78 */	mr r28, r4
/* 813400CC | 7C BD 2B 78 */	mr r29, r5
/* 813400D0 | 7C DE 33 78 */	mr r30, r6
/* 813400D4 | 7F E3 FB 78 */	mr r3, r31
/* 813400D8 | 48 1F 1B 31 */	bl fn_81531C08
/* 813400DC | 7F 83 E3 78 */	mr r3, r28
/* 813400E0 | 7F A4 EB 78 */	mr r4, r29
/* 813400E4 | 7F C5 F3 78 */	mr r5, r30
/* 813400E8 | 48 14 C7 C9 */	bl CDBRecordSeek
/* 813400EC | 7C 64 1B 78 */	mr r4, r3
/* 813400F0 | 7F 63 DB 78 */	mr r3, r27
/* 813400F4 | 38 A0 03 A9 */	li r5, 0x3a9
/* 813400F8 | 48 00 03 05 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 813400FC | 7C 7E 1B 78 */	mr r30, r3
/* 81340100 | 7F E3 FB 78 */	mr r3, r31
/* 81340104 | 48 1F 1B E1 */	bl fn_81531CE4
/* 81340108 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134010C | 7F C3 F3 78 */	mr r3, r30
/* 81340110 | 48 2B 93 FD */	bl _restgpr_27
/* 81340114 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340118 | 7C 08 03 A6 */	mtlr r0
/* 8134011C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340120 | 4E 80 00 20 */	blr
.endfn seek__Q33ipl3cdb7ManagerFP10_CDBRecordl7CDBSeek

# .text:0x10BC | 0x81340124 | size: 0x68
# ipl::cdb::Manager::close(_CDBRecord*)
.fn close__Q33ipl3cdb7ManagerFP10_CDBRecord, global
/* 81340124 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340128 | 7C 08 02 A6 */	mflr r0
/* 8134012C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340130 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340134 | 48 2B 93 95 */	bl _savegpr_29
/* 81340138 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8134013C | 7C 7D 1B 78 */	mr r29, r3
/* 81340140 | 7C 9E 23 78 */	mr r30, r4
/* 81340144 | 7F E3 FB 78 */	mr r3, r31
/* 81340148 | 48 1F 1A C1 */	bl fn_81531C08
/* 8134014C | 7F C3 F3 78 */	mr r3, r30
/* 81340150 | 48 14 C3 E1 */	bl CDBRecordClose
/* 81340154 | 7C 64 1B 78 */	mr r4, r3
/* 81340158 | 7F A3 EB 78 */	mr r3, r29
/* 8134015C | 38 A0 03 B5 */	li r5, 0x3b5
/* 81340160 | 48 00 02 9D */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 81340164 | 7C 7E 1B 78 */	mr r30, r3
/* 81340168 | 7F E3 FB 78 */	mr r3, r31
/* 8134016C | 48 1F 1B 79 */	bl fn_81531CE4
/* 81340170 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340174 | 7F C3 F3 78 */	mr r3, r30
/* 81340178 | 48 2B 93 9D */	bl _restgpr_29
/* 8134017C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340180 | 7C 08 03 A6 */	mtlr r0
/* 81340184 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340188 | 4E 80 00 20 */	blr
.endfn close__Q33ipl3cdb7ManagerFP10_CDBRecord

# .text:0x1124 | 0x8134018C | size: 0x10
# ipl::cdb::Manager::startSDProc()
.fn startSDProc__Q33ipl3cdb7ManagerFv, global
/* 8134018C | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81340190 | 38 A0 00 12 */	li r5, 0x12
/* 81340194 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81340198 | 48 01 ED 0C */	b create__Q23ipl10SDVFWorkerFPvi
.endfn startSDProc__Q33ipl3cdb7ManagerFv

# .text:0x1134 | 0x8134019C | size: 0x8
# ipl::cdb::Manager::terminateSDProc()
.fn terminateSDProc__Q33ipl3cdb7ManagerFv, global
/* 8134019C | 38 63 00 18 */	addi r3, r3, 0x18
/* 813401A0 | 48 01 EE F4 */	b terminate_async__Q23ipl10SDVFWorkerFv
.endfn terminateSDProc__Q33ipl3cdb7ManagerFv

# .text:0x113C | 0x813401A4 | size: 0x70
# ipl::cdb::Manager::mountSD()
.fn mountSD__Q33ipl3cdb7ManagerFv, global
/* 813401A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813401A8 | 7C 08 02 A6 */	mflr r0
/* 813401AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813401B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813401B4 | 48 2B 93 15 */	bl _savegpr_29
/* 813401B8 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 813401BC | 7C 7D 1B 78 */	mr r29, r3
/* 813401C0 | 7F E3 FB 78 */	mr r3, r31
/* 813401C4 | 48 1F 1A 45 */	bl fn_81531C08
/* 813401C8 | 48 14 96 91 */	bl CDBMountSD
/* 813401CC | 7C 64 1B 78 */	mr r4, r3
/* 813401D0 | 7F A3 EB 78 */	mr r3, r29
/* 813401D4 | 38 A0 03 D1 */	li r5, 0x3d1
/* 813401D8 | 48 00 02 25 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 813401DC | 28 03 00 01 */	cmplwi r3, 0x1
/* 813401E0 | 7C 7E 1B 78 */	mr r30, r3
/* 813401E4 | 40 82 00 0C */	bne .L_813401F0
/* 813401E8 | 38 00 00 01 */	li r0, 0x1
/* 813401EC | 98 1D 00 14 */	stb r0, 0x14(r29)
.L_813401F0:
/* 813401F0 | 7F E3 FB 78 */	mr r3, r31
/* 813401F4 | 48 1F 1A F1 */	bl fn_81531CE4
/* 813401F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813401FC | 7F C3 F3 78 */	mr r3, r30
/* 81340200 | 48 2B 93 15 */	bl _restgpr_29
/* 81340204 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340208 | 7C 08 03 A6 */	mtlr r0
/* 8134020C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340210 | 4E 80 00 20 */	blr
.endfn mountSD__Q33ipl3cdb7ManagerFv

# .text:0x11AC | 0x81340214 | size: 0x70
# ipl::cdb::Manager::unmountSD()
.fn unmountSD__Q33ipl3cdb7ManagerFv, global
/* 81340214 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340218 | 7C 08 02 A6 */	mflr r0
/* 8134021C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340220 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340224 | 48 2B 92 A5 */	bl _savegpr_29
/* 81340228 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8134022C | 7C 7D 1B 78 */	mr r29, r3
/* 81340230 | 7F E3 FB 78 */	mr r3, r31
/* 81340234 | 48 1F 19 D5 */	bl fn_81531C08
/* 81340238 | 48 14 96 25 */	bl CDBUnmountSDForce
/* 8134023C | 7C 64 1B 78 */	mr r4, r3
/* 81340240 | 7F A3 EB 78 */	mr r3, r29
/* 81340244 | 38 A0 03 E0 */	li r5, 0x3e0
/* 81340248 | 48 00 01 B5 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 8134024C | 28 03 00 01 */	cmplwi r3, 0x1
/* 81340250 | 7C 7E 1B 78 */	mr r30, r3
/* 81340254 | 40 82 00 0C */	bne .L_81340260
/* 81340258 | 38 00 00 00 */	li r0, 0x0
/* 8134025C | 98 1D 00 14 */	stb r0, 0x14(r29)
.L_81340260:
/* 81340260 | 7F E3 FB 78 */	mr r3, r31
/* 81340264 | 48 1F 1A 81 */	bl fn_81531CE4
/* 81340268 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134026C | 7F C3 F3 78 */	mr r3, r30
/* 81340270 | 48 2B 92 A5 */	bl _restgpr_29
/* 81340274 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340278 | 7C 08 03 A6 */	mtlr r0
/* 8134027C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340280 | 4E 80 00 20 */	blr
.endfn unmountSD__Q33ipl3cdb7ManagerFv

# .text:0x121C | 0x81340284 | size: 0x68
# ipl::cdb::Manager::backupToSD(_CDBRecord*)
.fn backupToSD__Q33ipl3cdb7ManagerFP10_CDBRecord, global
/* 81340284 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340288 | 7C 08 02 A6 */	mflr r0
/* 8134028C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340290 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340294 | 48 2B 92 35 */	bl _savegpr_29
/* 81340298 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 8134029C | 7C 7D 1B 78 */	mr r29, r3
/* 813402A0 | 7C 9E 23 78 */	mr r30, r4
/* 813402A4 | 7F E3 FB 78 */	mr r3, r31
/* 813402A8 | 48 1F 19 61 */	bl fn_81531C08
/* 813402AC | 7F C3 F3 78 */	mr r3, r30
/* 813402B0 | 48 14 CC 35 */	bl CDBRecordBackupToSD
/* 813402B4 | 7C 64 1B 78 */	mr r4, r3
/* 813402B8 | 7F A3 EB 78 */	mr r3, r29
/* 813402BC | 38 A0 04 06 */	li r5, 0x406
/* 813402C0 | 48 00 01 3D */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 813402C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813402C8 | 7F E3 FB 78 */	mr r3, r31
/* 813402CC | 48 1F 1A 19 */	bl fn_81531CE4
/* 813402D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813402D4 | 7F C3 F3 78 */	mr r3, r30
/* 813402D8 | 48 2B 92 3D */	bl _restgpr_29
/* 813402DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813402E0 | 7C 08 03 A6 */	mtlr r0
/* 813402E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813402E8 | 4E 80 00 20 */	blr
.endfn backupToSD__Q33ipl3cdb7ManagerFP10_CDBRecord

# .text:0x1284 | 0x813402EC | size: 0x6C
# ipl::cdb::Manager::cleanUpEmptyDirectories(CDBRecordLocation)
.fn cleanUpEmptyDirectories__Q33ipl3cdb7ManagerF17CDBRecordLocation, global
/* 813402EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813402F0 | 7C 08 02 A6 */	mflr r0
/* 813402F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813402F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813402FC | 48 2B 91 CD */	bl _savegpr_29
/* 81340300 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 81340304 | 7C 7D 1B 78 */	mr r29, r3
/* 81340308 | 7C 9E 23 78 */	mr r30, r4
/* 8134030C | 7F E3 FB 78 */	mr r3, r31
/* 81340310 | 48 1F 18 F9 */	bl fn_81531C08
/* 81340314 | 7F C4 F3 78 */	mr r4, r30
/* 81340318 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8134031C | 48 14 9D E9 */	bl CDBDatabaseCleanUpEmptyDirectories
/* 81340320 | 7C 64 1B 78 */	mr r4, r3
/* 81340324 | 7F A3 EB 78 */	mr r3, r29
/* 81340328 | 38 A0 04 12 */	li r5, 0x412
/* 8134032C | 48 00 00 D1 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
/* 81340330 | 7C 7E 1B 78 */	mr r30, r3
/* 81340334 | 7F E3 FB 78 */	mr r3, r31
/* 81340338 | 48 1F 19 AD */	bl fn_81531CE4
/* 8134033C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340340 | 7F C3 F3 78 */	mr r3, r30
/* 81340344 | 48 2B 91 D1 */	bl _restgpr_29
/* 81340348 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134034C | 7C 08 03 A6 */	mtlr r0
/* 81340350 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340354 | 4E 80 00 20 */	blr
.endfn cleanUpEmptyDirectories__Q33ipl3cdb7ManagerF17CDBRecordLocation

# .text:0x12F0 | 0x81340358 | size: 0xA4
# ipl::cdb::Manager::getFreeSize()
.fn getFreeSize__Q33ipl3cdb7ManagerFv, global
/* 81340358 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134035C | 7C 08 02 A6 */	mflr r0
/* 81340360 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340364 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340368 | 48 2B 91 5D */	bl _savegpr_28
/* 8134036C | 3B E3 00 20 */	addi r31, r3, 0x20
/* 81340370 | 7C 7C 1B 78 */	mr r28, r3
/* 81340374 | 7C 9D 23 78 */	mr r29, r4
/* 81340378 | 7F E3 FB 78 */	mr r3, r31
/* 8134037C | 48 1F 18 8D */	bl fn_81531C08
/* 81340380 | 48 14 5D D5 */	bl CDBGetFreeSize
/* 81340384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81340388 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 8134038C | 40 80 00 40 */	bge .L_813403CC
/* 81340390 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81340394 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81340398 | 83 C3 00 98 */	lwz r30, 0x98(r3)
/* 8134039C | 48 14 F8 49 */	bl CDBGetLastVFError
/* 813403A0 | 3C C0 81 63 */	lis r6, lbl_81635118@ha
/* 813403A4 | 7C 65 1B 78 */	mr r5, r3
/* 813403A8 | 7F C3 F3 78 */	mr r3, r30
/* 813403AC | 38 8D 80 90 */	li r4, lbl_816960D0@sda21
/* 813403B0 | 38 C6 51 18 */	addi r6, r6, lbl_81635118@l
/* 813403B4 | 38 E0 04 22 */	li r7, 0x422
/* 813403B8 | 48 01 63 41 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813403BC | 7F 83 E3 78 */	mr r3, r28
/* 813403C0 | 38 80 00 24 */	li r4, 0x24
/* 813403C4 | 38 A0 04 23 */	li r5, 0x423
/* 813403C8 | 48 00 00 35 */	bl error_handling__Q33ipl3cdb7ManagerF6CDBErri
.L_813403CC:
/* 813403CC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813403D0 | 41 82 00 0C */	beq .L_813403DC
/* 813403D4 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813403D8 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813403DC:
/* 813403DC | 7F E3 FB 78 */	mr r3, r31
/* 813403E0 | 48 1F 19 05 */	bl fn_81531CE4
/* 813403E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813403E8 | 48 2B 91 29 */	bl _restgpr_28
/* 813403EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813403F0 | 7C 08 03 A6 */	mtlr r0
/* 813403F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813403F8 | 4E 80 00 20 */	blr
.endfn getFreeSize__Q33ipl3cdb7ManagerFv

# .text:0x1394 | 0x813403FC | size: 0x188
# ipl::cdb::Manager::error_handling(CDBErr, int)
.fn error_handling__Q33ipl3cdb7ManagerF6CDBErri, global
/* 813403FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340400 | 7C 08 02 A6 */	mflr r0
/* 81340404 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340408 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134040C | 48 2B 90 B9 */	bl _savegpr_28
/* 81340410 | 28 04 00 24 */	cmplwi r4, 0x24
/* 81340414 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81340418 | 7C 9C 23 78 */	mr r28, r4
/* 8134041C | 7C BD 2B 78 */	mr r29, r5
/* 81340420 | 3B C0 00 00 */	li r30, 0x0
/* 81340424 | 41 81 01 44 */	bgt .L_81340568
/* 81340428 | 3C 60 81 63 */	lis r3, jumptable_8163512C@ha
/* 8134042C | 54 80 10 3A */	slwi r0, r4, 2
/* 81340430 | 38 63 51 2C */	addi r3, r3, jumptable_8163512C@l
/* 81340434 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81340438 | 7C 69 03 A6 */	mtctr r3
/* 8134043C | 4E 80 04 20 */	bctr
.L_81340440:
/* 81340440 | 3B C0 00 01 */	li r30, 0x1
/* 81340444 | 48 00 01 24 */	b .L_81340568
.L_81340448:
/* 81340448 | 48 14 F7 AD */	bl CDBGetFatalVFErrorFlag
/* 8134044C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81340450 | 41 82 01 18 */	beq .L_81340568
/* 81340454 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81340458 | 3C C0 81 63 */	lis r6, lbl_81635118@ha
/* 8134045C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81340460 | 7F 85 E3 78 */	mr r5, r28
/* 81340464 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81340468 | 7F A7 EB 78 */	mr r7, r29
/* 8134046C | 38 C6 51 18 */	addi r6, r6, lbl_81635118@l
/* 81340470 | 38 8D 80 90 */	li r4, lbl_816960D0@sda21
/* 81340474 | 48 01 62 85 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81340478 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8134047C | 38 80 00 01 */	li r4, 0x1
/* 81340480 | 38 A0 00 02 */	li r5, 0x2
/* 81340484 | 38 C0 00 00 */	li r6, 0x0
/* 81340488 | 38 E0 00 00 */	li r7, 0x0
/* 8134048C | 39 00 FF FF */	li r8, -0x1
/* 81340490 | 48 01 60 85 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 81340494 | 48 00 00 D4 */	b .L_81340568
.L_81340498:
/* 81340498 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8134049C | 3C C0 81 63 */	lis r6, lbl_81635118@ha
/* 813404A0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813404A4 | 7F 85 E3 78 */	mr r5, r28
/* 813404A8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813404AC | 7F A7 EB 78 */	mr r7, r29
/* 813404B0 | 38 C6 51 18 */	addi r6, r6, lbl_81635118@l
/* 813404B4 | 38 8D 80 90 */	li r4, lbl_816960D0@sda21
/* 813404B8 | 48 01 62 41 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813404BC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813404C0 | 38 80 00 01 */	li r4, 0x1
/* 813404C4 | 38 A0 00 02 */	li r5, 0x2
/* 813404C8 | 38 C0 00 00 */	li r6, 0x0
/* 813404CC | 38 E0 00 00 */	li r7, 0x0
/* 813404D0 | 39 00 FF FF */	li r8, -0x1
/* 813404D4 | 48 01 60 41 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813404D8 | 48 00 00 90 */	b .L_81340568
.L_813404DC:
/* 813404DC | 48 14 F7 11 */	bl CDBGetLastNANDError
/* 813404E0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 813404E4 | 41 82 00 44 */	beq .L_81340528
/* 813404E8 | 40 80 00 10 */	bge .L_813404F8
/* 813404EC | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 813404F0 | 41 82 00 38 */	beq .L_81340528
/* 813404F4 | 48 00 00 74 */	b .L_81340568
.L_813404F8:
/* 813404F8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813404FC | 40 80 00 6C */	bge .L_81340568
/* 81340500 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81340504 | 38 80 00 01 */	li r4, 0x1
/* 81340508 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8134050C | 38 A0 00 01 */	li r5, 0x1
/* 81340510 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 81340514 | 38 C0 00 00 */	li r6, 0x0
/* 81340518 | 38 E0 00 00 */	li r7, 0x0
/* 8134051C | 39 00 FF FF */	li r8, -0x1
/* 81340520 | 48 01 5F F5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 81340524 | 48 00 00 44 */	b .L_81340568
.L_81340528:
/* 81340528 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8134052C | 3C C0 81 63 */	lis r6, lbl_81635118@ha
/* 81340530 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81340534 | 7F 85 E3 78 */	mr r5, r28
/* 81340538 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8134053C | 7F A7 EB 78 */	mr r7, r29
/* 81340540 | 38 C6 51 18 */	addi r6, r6, lbl_81635118@l
/* 81340544 | 38 8D 80 94 */	li r4, lbl_816960D4@sda21
/* 81340548 | 48 01 61 B1 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8134054C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81340550 | 38 80 00 01 */	li r4, 0x1
/* 81340554 | 38 A0 00 02 */	li r5, 0x2
/* 81340558 | 38 C0 00 00 */	li r6, 0x0
/* 8134055C | 38 E0 00 00 */	li r7, 0x0
/* 81340560 | 39 00 FF FF */	li r8, -0x1
/* 81340564 | 48 01 5F B1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81340568:
/* 81340568 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134056C | 7F C3 F3 78 */	mr r3, r30
/* 81340570 | 48 2B 8F A1 */	bl _restgpr_28
/* 81340574 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340578 | 7C 08 03 A6 */	mtlr r0
/* 8134057C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340580 | 4E 80 00 20 */	blr
.endfn error_handling__Q33ipl3cdb7ManagerF6CDBErri

# 0x81635118..0x816351C0 | size: 0xA8
.data
.balign 8

# .data:0x0 | 0x81635118 | size: 0x14
.obj lbl_81635118, global
	.4byte 0x69706C43
	.4byte 0x64624D61
	.4byte 0x6E616765
	.4byte 0x722E6370
	.4byte 0x70000000
.endobj lbl_81635118

# .data:0x14 | 0x8163512C | size: 0x94
.obj jumptable_8163512C, local
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340440
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340448
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_813404DC
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340568
	.rel error_handling__Q33ipl3cdb7ManagerF6CDBErri, .L_81340498
.endobj jumptable_8163512C

# 0x81694498..0x816944A0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694498 | size: 0x8
.obj lbl_81694498, global
	.4byte 0x00000032
	.4byte 0x00000000
.endobj lbl_81694498

# 0x816960D0..0x816960D8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960D0 | size: 0x4
.obj lbl_816960D0, global
	.string "CDB"
.endobj lbl_816960D0

# .sdata:0x4 | 0x816960D4 | size: 0x4
.obj lbl_816960D4, global
	.string "cdb"
.endobj lbl_816960D4
