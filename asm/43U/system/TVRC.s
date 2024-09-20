.include "macros.inc"
.file "TVRC.cpp"

# 0x81089760..0x810897C0 | size: 0x60
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81089760 | size: 0x20
# LibTVRC::_database
.obj _database__7LibTVRC, global
	.skip 0x20
.endobj _database__7LibTVRC

# .bss:0x20 | 0x81089780 | size: 0x30
# LibTVRC::_alarm
.obj _alarm__7LibTVRC, global
	.skip 0x30
.endobj _alarm__7LibTVRC

# .bss:0x50 | 0x810897B0 | size: 0x10
# LibTVRC::_tickWait
.obj _tickWait__7LibTVRC, global
	.skip 0x10
.endobj _tickWait__7LibTVRC

# 0x81361048..0x81361950 | size: 0x908
.text
.balign 4

# .text:0x0 | 0x81361048 | size: 0x8C
.fn TVRCInit, global
/* 81361048 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136104C | 7C 08 02 A6 */	mflr r0
/* 81361050 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81361054 | 80 0D A6 E4 */	lwz r0, _isInitialized__7LibTVRC@sda21(r0)
/* 81361058 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136105C | 41 82 00 14 */	beq .L_81361070
/* 81361060 | 38 00 00 00 */	li r0, 0x0
/* 81361064 | 38 60 00 00 */	li r3, 0x0
/* 81361068 | 90 0D A6 C8 */	stw r0, _lastError__7LibTVRC@sda21(r0)
/* 8136106C | 48 00 00 58 */	b .L_813610C4
.L_81361070:
/* 81361070 | 3C 80 81 09 */	lis r4, _database__7LibTVRC@ha
/* 81361074 | 38 84 97 60 */	addi r4, r4, _database__7LibTVRC@l
/* 81361078 | 48 20 FD 29 */	bl ARCInitHandle
/* 8136107C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81361080 | 40 82 00 14 */	bne .L_81361094
/* 81361084 | 38 00 00 04 */	li r0, 0x4
/* 81361088 | 38 60 00 00 */	li r3, 0x0
/* 8136108C | 90 0D A6 C8 */	stw r0, _lastError__7LibTVRC@sda21(r0)
/* 81361090 | 48 00 00 34 */	b .L_813610C4
.L_81361094:
/* 81361094 | 38 80 FF FF */	li r4, -0x1
/* 81361098 | 38 00 00 00 */	li r0, 0x0
/* 8136109C | 3C 60 81 09 */	lis r3, _alarm__7LibTVRC@ha
/* 813610A0 | 90 8D A6 D8 */	stw r4, _makerID__7LibTVRC@sda21(r0)
/* 813610A4 | 38 63 97 80 */	addi r3, r3, _alarm__7LibTVRC@l
/* 813610A8 | 90 0D A6 DC */	stw r0, _typeNo__7LibTVRC@sda21(r0)
/* 813610AC | 48 1C B8 39 */	bl OSCreateAlarm
/* 813610B0 | 38 00 00 01 */	li r0, 0x1
/* 813610B4 | 38 60 00 01 */	li r3, 0x1
/* 813610B8 | 90 0D A6 E4 */	stw r0, _isInitialized__7LibTVRC@sda21(r0)
/* 813610BC | 48 21 C3 09 */	bl WPADSetSensorBarPower
/* 813610C0 | 38 60 00 00 */	li r3, 0x0
.L_813610C4:
/* 813610C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813610C8 | 7C 08 03 A6 */	mtlr r0
/* 813610CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813610D0 | 4E 80 00 20 */	blr
.endfn TVRCInit

# .text:0x8C | 0x813610D4 | size: 0x184
.fn TVRCSetModelType, global
/* 813610D4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813610D8 | 7C 08 02 A6 */	mflr r0
/* 813610DC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813610E0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813610E4 | 48 29 83 DD */	bl _savegpr_27
/* 813610E8 | 80 0D A6 E4 */	lwz r0, _isInitialized__7LibTVRC@sda21(r0)
/* 813610EC | 7C 7B 1B 78 */	mr r27, r3
/* 813610F0 | 7C 9C 23 78 */	mr r28, r4
/* 813610F4 | 7C BD 2B 78 */	mr r29, r5
/* 813610F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813610FC | 7C DE 33 78 */	mr r30, r6
/* 81361100 | 41 82 00 14 */	beq .L_81361114
/* 81361104 | 3C A0 81 09 */	lis r5, _database__7LibTVRC@ha
/* 81361108 | 80 A5 97 60 */	lwz r5, _database__7LibTVRC@l(r5)
/* 8136110C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81361110 | 40 82 00 0C */	bne .L_8136111C
.L_81361114:
/* 81361114 | 38 60 00 00 */	li r3, 0x0
/* 81361118 | 48 00 01 28 */	b .L_81361240
.L_8136111C:
/* 8136111C | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81361120 | 3C 05 AA 56 */	subis r0, r5, 0x55aa
/* 81361124 | 28 00 38 2D */	cmplwi r0, 0x382d
/* 81361128 | 41 82 00 0C */	beq .L_81361134
/* 8136112C | 38 60 00 00 */	li r3, 0x0
/* 81361130 | 48 00 01 10 */	b .L_81361240
.L_81361134:
/* 81361134 | 80 0D A6 D8 */	lwz r0, _makerID__7LibTVRC@sda21(r0)
/* 81361138 | 7C 03 00 00 */	cmpw r3, r0
/* 8136113C | 40 82 00 18 */	bne .L_81361154
/* 81361140 | 80 0D A6 DC */	lwz r0, _typeNo__7LibTVRC@sda21(r0)
/* 81361144 | 7C 04 00 00 */	cmpw r4, r0
/* 81361148 | 40 82 00 0C */	bne .L_81361154
/* 8136114C | 38 60 00 01 */	li r3, 0x1
/* 81361150 | 48 00 00 F0 */	b .L_81361240
.L_81361154:
/* 81361154 | 7F 65 DB 78 */	mr r5, r27
/* 81361158 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8136115C | 38 8D 82 04 */	li r4, lbl_81696244@sda21
/* 81361160 | 4C C6 31 82 */	crclr cr1eq
/* 81361164 | 48 29 F9 1D */	bl sprintf
/* 81361168 | 3C 60 81 09 */	lis r3, _database__7LibTVRC@ha
/* 8136116C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81361170 | 38 63 97 60 */	addi r3, r3, _database__7LibTVRC@l
/* 81361174 | 38 A1 00 34 */	addi r5, r1, 0x34
/* 81361178 | 48 21 04 8D */	bl ARCOpenDir
/* 8136117C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81361180 | 40 82 00 14 */	bne .L_81361194
/* 81361184 | 38 00 00 06 */	li r0, 0x6
/* 81361188 | 38 60 00 00 */	li r3, 0x0
/* 8136118C | 90 0D A6 C8 */	stw r0, _lastError__7LibTVRC@sda21(r0)
/* 81361190 | 48 00 00 B0 */	b .L_81361240
.L_81361194:
/* 81361194 | 7F 9F E3 78 */	mr r31, r28
/* 81361198 | 48 00 00 0C */	b .L_813611A4
.L_8136119C:
/* 8136119C | 37 FF FF FF */	subic. r31, r31, 0x1
/* 813611A0 | 41 80 00 18 */	blt .L_813611B8
.L_813611A4:
/* 813611A4 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813611A8 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813611AC | 48 21 04 D5 */	bl ARCReadDir
/* 813611B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813611B4 | 40 82 FF E8 */	bne .L_8136119C
.L_813611B8:
/* 813611B8 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813611BC | 48 21 05 7D */	bl ARCCloseDir
/* 813611C0 | 3F E0 81 09 */	lis r31, _database__7LibTVRC@ha
/* 813611C4 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 813611C8 | 38 7F 97 60 */	addi r3, r31, _database__7LibTVRC@l
/* 813611CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813611D0 | 48 20 FF 15 */	bl ARCFastOpen
/* 813611D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813611D8 | 40 82 00 14 */	bne .L_813611EC
/* 813611DC | 38 00 00 06 */	li r0, 0x6
/* 813611E0 | 38 60 00 00 */	li r3, 0x0
/* 813611E4 | 90 0D A6 C8 */	stw r0, _lastError__7LibTVRC@sda21(r0)
/* 813611E8 | 48 00 00 58 */	b .L_81361240
.L_813611EC:
/* 813611EC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813611F0 | 48 21 03 AD */	bl ARCGetLength
/* 813611F4 | 7C 03 F0 00 */	cmpw r3, r30
/* 813611F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813611FC | 40 81 00 14 */	ble .L_81361210
/* 81361200 | 38 00 00 07 */	li r0, 0x7
/* 81361204 | 38 60 00 00 */	li r3, 0x0
/* 81361208 | 90 0D A6 C8 */	stw r0, _lastError__7LibTVRC@sda21(r0)
/* 8136120C | 48 00 00 34 */	b .L_81361240
.L_81361210:
/* 81361210 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81361214 | 48 21 03 6D */	bl ARCGetStartAddrInMem
/* 81361218 | 7C 64 1B 78 */	mr r4, r3
/* 8136121C | 7F A3 EB 78 */	mr r3, r29
/* 81361220 | 7F C5 F3 78 */	mr r5, r30
/* 81361224 | 4B FC F0 0D */	bl memcpy
/* 81361228 | 38 00 00 00 */	li r0, 0x0
/* 8136122C | 93 AD A6 CC */	stw r29, _tvrcFile__7LibTVRC@sda21(r0)
/* 81361230 | 38 60 00 01 */	li r3, 0x1
/* 81361234 | 93 6D A6 D8 */	stw r27, _makerID__7LibTVRC@sda21(r0)
/* 81361238 | 93 8D A6 DC */	stw r28, _typeNo__7LibTVRC@sda21(r0)
/* 8136123C | 90 1F 97 60 */	stw r0, _database__7LibTVRC@l(r31)
.L_81361240:
/* 81361240 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81361244 | 48 29 82 C9 */	bl _restgpr_27
/* 81361248 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8136124C | 7C 08 03 A6 */	mtlr r0
/* 81361250 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81361254 | 4E 80 00 20 */	blr
.endfn TVRCSetModelType

# .text:0x210 | 0x81361258 | size: 0x8
.fn TVRCSetRepeatTimeout, global
/* 81361258 | 90 6D 82 00 */	stw r3, _limitMilli__7LibTVRC@sda21(r0)
/* 8136125C | 4E 80 00 20 */	blr
.endfn TVRCSetRepeatTimeout

# .text:0x218 | 0x81361260 | size: 0x30
.fn TVRCSendStopAsync, global
/* 81361260 | 80 0D A6 E4 */	lwz r0, _isInitialized__7LibTVRC@sda21(r0)
/* 81361264 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361268 | 41 82 00 10 */	beq .L_81361278
/* 8136126C | 80 0D A6 E8 */	lwz r0, _isActive__7LibTVRC@sda21(r0)
/* 81361270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361274 | 40 82 00 0C */	bne .L_81361280
.L_81361278:
/* 81361278 | 38 60 00 00 */	li r3, 0x0
/* 8136127C | 4E 80 00 20 */	blr
.L_81361280:
/* 81361280 | 38 00 00 01 */	li r0, 0x1
/* 81361284 | 38 60 00 01 */	li r3, 0x1
/* 81361288 | 90 0D A6 EC */	stw r0, _isReserveDeactive__7LibTVRC@sda21(r0)
/* 8136128C | 4E 80 00 20 */	blr
.endfn TVRCSendStopAsync

# .text:0x248 | 0x81361290 | size: 0x8
.fn TVRCIsActive, global
/* 81361290 | 80 6D A6 E8 */	lwz r3, _isActive__7LibTVRC@sda21(r0)
/* 81361294 | 4E 80 00 20 */	blr
.endfn TVRCIsActive

# .text:0x250 | 0x81361298 | size: 0x44
.fn TVRCIsValidCommand, global
/* 81361298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136129C | 38 A0 00 00 */	li r5, 0x0
/* 813612A0 | 41 80 00 34 */	blt .L_813612D4
/* 813612A4 | 80 0D A6 E4 */	lwz r0, _isInitialized__7LibTVRC@sda21(r0)
/* 813612A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813612AC | 41 82 00 28 */	beq .L_813612D4
/* 813612B0 | 80 8D A6 CC */	lwz r4, _tvrcFile__7LibTVRC@sda21(r0)
/* 813612B4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813612B8 | 41 82 00 1C */	beq .L_813612D4
/* 813612BC | 54 60 18 38 */	slwi r0, r3, 3
/* 813612C0 | 7C 64 02 14 */	add r3, r4, r0
/* 813612C4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813612C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813612CC | 41 82 00 08 */	beq .L_813612D4
/* 813612D0 | 38 A0 00 01 */	li r5, 0x1
.L_813612D4:
/* 813612D4 | 7C A3 2B 78 */	mr r3, r5
/* 813612D8 | 4E 80 00 20 */	blr
.endfn TVRCIsValidCommand

# .text:0x294 | 0x813612DC | size: 0x318
.fn TVRCSendStartAsync, global
/* 813612DC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813612E0 | 7C 08 02 A6 */	mflr r0
/* 813612E4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813612E8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813612EC | 48 29 81 CD */	bl _savegpr_25
/* 813612F0 | 80 0D A6 E4 */	lwz r0, _isInitialized__7LibTVRC@sda21(r0)
/* 813612F4 | 7C 79 1B 78 */	mr r25, r3
/* 813612F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813612FC | 41 82 00 1C */	beq .L_81361318
/* 81361300 | 80 0D A6 E8 */	lwz r0, _isActive__7LibTVRC@sda21(r0)
/* 81361304 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361308 | 40 82 00 10 */	bne .L_81361318
/* 8136130C | 80 0D A6 D8 */	lwz r0, _makerID__7LibTVRC@sda21(r0)
/* 81361310 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81361314 | 40 82 00 0C */	bne .L_81361320
.L_81361318:
/* 81361318 | 38 60 00 00 */	li r3, 0x0
/* 8136131C | 48 00 02 C0 */	b .L_813615DC
.L_81361320:
/* 81361320 | 38 80 00 00 */	li r4, 0x0
/* 81361324 | 38 A0 00 08 */	li r5, 0x8
/* 81361328 | 48 00 13 C5 */	bl RangeCheckGELTS32__Q23ipl7utilityFlll
/* 8136132C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81361330 | 40 82 00 0C */	bne .L_8136133C
/* 81361334 | 38 60 00 00 */	li r3, 0x0
/* 81361338 | 48 00 02 A4 */	b .L_813615DC
.L_8136133C:
/* 8136133C | 48 1C F5 49 */	bl OSDisableInterrupts
/* 81361340 | 83 ED A6 CC */	lwz r31, _tvrcFile__7LibTVRC@sda21(r0)
/* 81361344 | 7C 7E 1B 78 */	mr r30, r3
/* 81361348 | 80 8D 81 F8 */	lwz r4, TVRC_FILE_HEADER__7LibTVRC@sda21(r0)
/* 8136134C | 38 A0 00 04 */	li r5, 0x4
/* 81361350 | 7F E3 FB 78 */	mr r3, r31
/* 81361354 | 48 29 CE 81 */	bl memcmp
/* 81361358 | 57 27 18 38 */	slwi r7, r25, 3
/* 8136135C | 7C BF 3A 14 */	add r5, r31, r7
/* 81361360 | 80 05 00 18 */	lwz r0, 0x18(r5)
/* 81361364 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361368 | 41 82 02 68 */	beq .L_813615D0
/* 8136136C | 80 0D A6 E0 */	lwz r0, _isUseCustomParams__7LibTVRC@sda21(r0)
/* 81361370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361374 | 40 82 00 48 */	bne .L_813613BC
/* 81361378 | 80 CD A6 CC */	lwz r6, _tvrcFile__7LibTVRC@sda21(r0)
/* 8136137C | 3C 60 00 02 */	lis r3, 0x2
/* 81361380 | C0 22 81 C8 */	lfs f1, lbl_816945C8@sda21(r0)
/* 81361384 | 3C 80 80 00 */	lis r4, 0x8000
/* 81361388 | C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8136138C | 38 03 E8 48 */	subi r0, r3, 0x17b8
/* 81361390 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81361394 | D0 0D A6 D0 */	stfs f0, _Hz__7LibTVRC@sda21(r0)
/* 81361398 | C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8136139C | D0 0D A6 D4 */	stfs f0, _onTimeRatio__7LibTVRC@sda21(r0)
/* 813613A0 | 80 64 00 F8 */	lwz r3, 0xf8(r4)
/* 813613A4 | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 813613A8 | 54 63 F0 BE */	srwi r3, r3, 2
/* 813613AC | 7C 03 03 96 */	divwu r0, r3, r0
/* 813613B0 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 813613B4 | 54 00 E8 FE */	srwi r0, r0, 3
/* 813613B8 | 90 0D A7 30 */	stw r0, _tickT__7LibTVRC@sda21(r0)
.L_813613BC:
/* 813613BC | 80 CD A6 CC */	lwz r6, _tvrcFile__7LibTVRC@sda21(r0)
/* 813613C0 | 7C 86 3A 14 */	add r4, r6, r7
/* 813613C4 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 813613C8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813613CC | 7C 00 19 11 */	subfe. r0, r0, r3
/* 813613D0 | 90 0D A6 C4 */	stw r0, _isUseRepeatCode__7LibTVRC@sda21(r0)
/* 813613D4 | 80 05 00 18 */	lwz r0, 0x18(r5)
/* 813613D8 | 7C A6 02 14 */	add r5, r6, r0
/* 813613DC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813613E0 | 38 05 00 08 */	addi r0, r5, 0x8
/* 813613E4 | 90 6D A7 20 */	stw r3, _bitLength__7LibTVRC@sda21(r0)
/* 813613E8 | 90 0D A7 24 */	stw r0, _bitArray__7LibTVRC@sda21(r0)
/* 813613EC | 41 82 00 20 */	beq .L_8136140C
/* 813613F0 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 813613F4 | 7C 9F 02 14 */	add r4, r31, r0
/* 813613F8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813613FC | 38 04 00 08 */	addi r0, r4, 0x8
/* 81361400 | 90 6D A7 28 */	stw r3, _repeatBitLength__7LibTVRC@sda21(r0)
/* 81361404 | 90 0D A7 2C */	stw r0, _repeatBitArray__7LibTVRC@sda21(r0)
/* 81361408 | 48 00 00 0C */	b .L_81361414
.L_8136140C:
/* 8136140C | 90 6D A7 28 */	stw r3, _repeatBitLength__7LibTVRC@sda21(r0)
/* 81361410 | 90 0D A7 2C */	stw r0, _repeatBitArray__7LibTVRC@sda21(r0)
.L_81361414:
/* 81361414 | C0 2D A6 D4 */	lfs f1, _onTimeRatio__7LibTVRC@sda21(r0)
/* 81361418 | 3C 80 80 00 */	lis r4, 0x8000
/* 8136141C | C8 02 81 D0 */	lfd f0, lbl_816945D0@sda21(r0)
/* 81361420 | 3F 60 43 30 */	lis r27, 0x4330
/* 81361424 | 80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 81361428 | 3C 60 00 02 */	lis r3, 0x2
/* 8136142C | FC 20 00 72 */	fmul f1, f0, f1
/* 81361430 | C0 0D A6 D0 */	lfs f0, _Hz__7LibTVRC@sda21(r0)
/* 81361434 | 54 04 F0 BE */	srwi r4, r0, 2
/* 81361438 | 38 03 E8 48 */	subi r0, r3, 0x17b8
/* 8136143C | 83 2D 81 FC */	lwz r25, __tienHoseiNsec__7LibTVRC@sda21(r0)
/* 81361440 | 7F 44 03 96 */	divwu r26, r4, r0
/* 81361444 | FC 41 00 24 */	fdiv f2, f1, f0
/* 81361448 | 93 61 00 08 */	stw r27, 0x8(r1)
/* 8136144C | C8 22 81 E0 */	lfd f1, lbl_816945E0@sda21(r0)
/* 81361450 | 93 21 00 0C */	stw r25, 0xc(r1)
/* 81361454 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81361458 | FC 00 08 28 */	fsub f0, f0, f1
/* 8136145C | FC 22 00 28 */	fsub f1, f2, f0
/* 81361460 | 48 29 87 35 */	bl __cvt_dbl_usll
/* 81361464 | 3B E0 00 00 */	li r31, 0x0
/* 81361468 | 38 C0 1F 40 */	li r6, 0x1f40
/* 8136146C | 7C FA 20 16 */	mulhwu r7, r26, r4
/* 81361470 | 38 A0 00 00 */	li r5, 0x0
/* 81361474 | 7D 1F 21 D6 */	mullw r8, r31, r4
/* 81361478 | 7C 1A 19 D6 */	mullw r0, r26, r3
/* 8136147C | 7C 67 42 14 */	add r3, r7, r8
/* 81361480 | 7C 9A 21 D6 */	mullw r4, r26, r4
/* 81361484 | 7C 63 02 14 */	add r3, r3, r0
/* 81361488 | 48 29 81 89 */	bl __div2i
/* 8136148C | C0 4D A6 D4 */	lfs f2, _onTimeRatio__7LibTVRC@sda21(r0)
/* 81361490 | 3F 80 81 09 */	lis r28, _tickWait__7LibTVRC@ha
/* 81361494 | C8 22 81 D8 */	lfd f1, lbl_816945D8@sda21(r0)
/* 81361498 | 3B BC 97 B0 */	addi r29, r28, _tickWait__7LibTVRC@l
/* 8136149C | C8 02 81 D0 */	lfd f0, lbl_816945D0@sda21(r0)
/* 813614A0 | FC 61 10 28 */	fsub f3, f1, f2
/* 813614A4 | C0 4D A6 D0 */	lfs f2, _Hz__7LibTVRC@sda21(r0)
/* 813614A8 | 93 21 00 14 */	stw r25, 0x14(r1)
/* 813614AC | C8 22 81 E0 */	lfd f1, lbl_816945E0@sda21(r0)
/* 813614B0 | FC 60 00 F2 */	fmul f3, f0, f3
/* 813614B4 | 93 61 00 10 */	stw r27, 0x10(r1)
/* 813614B8 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813614BC | 90 9D 00 0C */	stw r4, 0xc(r29)
/* 813614C0 | FC 43 10 24 */	fdiv f2, f3, f2
/* 813614C4 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 813614C8 | FC 00 08 28 */	fsub f0, f0, f1
/* 813614CC | FC 22 00 28 */	fsub f1, f2, f0
/* 813614D0 | 48 29 86 C5 */	bl __cvt_dbl_usll
/* 813614D4 | 7C FA 20 16 */	mulhwu r7, r26, r4
/* 813614D8 | 38 C0 1F 40 */	li r6, 0x1f40
/* 813614DC | 38 A0 00 00 */	li r5, 0x0
/* 813614E0 | 7D 1F 21 D6 */	mullw r8, r31, r4
/* 813614E4 | 7C 1A 19 D6 */	mullw r0, r26, r3
/* 813614E8 | 7C 67 42 14 */	add r3, r7, r8
/* 813614EC | 7C 9A 21 D6 */	mullw r4, r26, r4
/* 813614F0 | 7C 63 02 14 */	add r3, r3, r0
/* 813614F4 | 48 29 81 1D */	bl __div2i
/* 813614F8 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 813614FC | 38 C0 00 0A */	li r6, 0xa
/* 81361500 | 80 FD 00 0C */	lwz r7, 0xc(r29)
/* 81361504 | 6F E5 80 00 */	xoris r5, r31, 0x8000
/* 81361508 | 90 9D 00 04 */	stw r4, 0x4(r29)
/* 8136150C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81361510 | 7C 86 38 10 */	subfc r4, r6, r7
/* 81361514 | 7C A5 01 10 */	subfe r5, r5, r0
/* 81361518 | 90 7C 97 B0 */	stw r3, _tickWait__7LibTVRC@l(r28)
/* 8136151C | 7C A0 01 10 */	subfe r5, r0, r0
/* 81361520 | 7C A5 00 D1 */	neg. r5, r5
/* 81361524 | 41 82 00 0C */	beq .L_81361530
/* 81361528 | 90 DD 00 0C */	stw r6, 0xc(r29)
/* 8136152C | 93 FD 00 08 */	stw r31, 0x8(r29)
.L_81361530:
/* 81361530 | 3D 00 81 09 */	lis r8, _tickWait__7LibTVRC@ha
/* 81361534 | 38 A0 00 00 */	li r5, 0x0
/* 81361538 | 38 E8 97 B0 */	addi r7, r8, _tickWait__7LibTVRC@l
/* 8136153C | 80 08 97 B0 */	lwz r0, _tickWait__7LibTVRC@l(r8)
/* 81361540 | 80 67 00 04 */	lwz r3, 0x4(r7)
/* 81361544 | 38 C0 00 0A */	li r6, 0xa
/* 81361548 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8136154C | 6C A4 80 00 */	xoris r4, r5, 0x8000
/* 81361550 | 7C 66 18 10 */	subfc r3, r6, r3
/* 81361554 | 7C 84 01 10 */	subfe r4, r4, r0
/* 81361558 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8136155C | 7C 84 00 D1 */	neg. r4, r4
/* 81361560 | 41 82 00 0C */	beq .L_8136156C
/* 81361564 | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 81361568 | 90 A8 97 B0 */	stw r5, _tickWait__7LibTVRC@l(r8)
.L_8136156C:
/* 8136156C | 38 00 00 00 */	li r0, 0x0
/* 81361570 | 38 60 00 01 */	li r3, 0x1
/* 81361574 | 90 6D A6 E8 */	stw r3, _isActive__7LibTVRC@sda21(r0)
/* 81361578 | 90 0D A6 EC */	stw r0, _isReserveDeactive__7LibTVRC@sda21(r0)
/* 8136157C | 90 0D A7 08 */	stw r0, _isOnOff__7LibTVRC@sda21(r0)
/* 81361580 | 90 0D A7 0C */	stw r0, _isLastOnOff__7LibTVRC@sda21(r0)
/* 81361584 | 90 6D A7 14 */	stw r3, _func0state__7LibTVRC@sda21(r0)
/* 81361588 | 90 0D A7 18 */	stw r0, _loop0count__7LibTVRC@sda21(r0)
/* 8136158C | 48 1D 46 F5 */	bl OSGetTime
/* 81361590 | 90 8D A7 04 */	stw r4, _totalStartTime__7LibTVRC+0x4@sda21(r0)
/* 81361594 | 3C 80 00 02 */	lis r4, 0x2
/* 81361598 | 3C A0 80 00 */	lis r5, 0x8000
/* 8136159C | 3C E0 81 36 */	lis r7, __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext@ha
/* 813615A0 | 90 6D A7 00 */	stw r3, _totalStartTime__7LibTVRC@sda21(r0)
/* 813615A4 | 38 04 E8 48 */	subi r0, r4, 0x17b8
/* 813615A8 | 3C 60 81 09 */	lis r3, _alarm__7LibTVRC@ha
/* 813615AC | 38 E7 15 F4 */	addi r7, r7, __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext@l
/* 813615B0 | 80 85 00 F8 */	lwz r4, 0xf8(r5)
/* 813615B4 | 38 63 97 80 */	addi r3, r3, _alarm__7LibTVRC@l
/* 813615B8 | 38 A0 00 00 */	li r5, 0x0
/* 813615BC | 54 84 F0 BE */	srwi r4, r4, 2
/* 813615C0 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813615C4 | 1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 813615C8 | 54 06 E8 FE */	srwi r6, r0, 3
/* 813615CC | 48 1C B5 79 */	bl OSSetAlarm
.L_813615D0:
/* 813615D0 | 7F C3 F3 78 */	mr r3, r30
/* 813615D4 | 48 1C F2 D9 */	bl OSRestoreInterrupts
/* 813615D8 | 38 60 00 01 */	li r3, 0x1
.L_813615DC:
/* 813615DC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813615E0 | 48 29 7F 25 */	bl _restgpr_25
/* 813615E4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813615E8 | 7C 08 03 A6 */	mtlr r0
/* 813615EC | 38 21 00 40 */	addi r1, r1, 0x40
/* 813615F0 | 4E 80 00 20 */	blr
.endfn TVRCSendStartAsync

# .text:0x5AC | 0x813615F4 | size: 0x1E0
# LibTVRC::__FTVRCLoop0Handler(OSAlarm*, OSContext*)
.fn __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext, global
/* 813615F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813615F8 | 7C 08 02 A6 */	mflr r0
/* 813615FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81361600 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81361604 | 7C 9F 23 78 */	mr r31, r4
/* 81361608 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136160C | 7C 7E 1B 78 */	mr r30, r3
/* 81361610 | 80 0D A6 E8 */	lwz r0, _isActive__7LibTVRC@sda21(r0)
/* 81361614 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361618 | 40 82 00 0C */	bne .L_81361624
/* 8136161C | 38 00 00 02 */	li r0, 0x2
/* 81361620 | 90 0D A7 14 */	stw r0, _func0state__7LibTVRC@sda21(r0)
.L_81361624:
/* 81361624 | 80 0D A7 14 */	lwz r0, _func0state__7LibTVRC@sda21(r0)
/* 81361628 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8136162C | 40 82 00 10 */	bne .L_8136163C
/* 81361630 | 38 00 00 00 */	li r0, 0x0
/* 81361634 | 90 0D A7 14 */	stw r0, _func0state__7LibTVRC@sda21(r0)
/* 81361638 | 48 00 00 D0 */	b .L_81361708
.L_8136163C:
/* 8136163C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361640 | 40 82 00 24 */	bne .L_81361664
/* 81361644 | 80 8D A7 18 */	lwz r4, _loop0count__7LibTVRC@sda21(r0)
/* 81361648 | 38 00 00 00 */	li r0, 0x0
/* 8136164C | 80 6D A7 08 */	lwz r3, _isOnOff__7LibTVRC@sda21(r0)
/* 81361650 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81361654 | 90 0D A7 14 */	stw r0, _func0state__7LibTVRC@sda21(r0)
/* 81361658 | 90 8D A7 18 */	stw r4, _loop0count__7LibTVRC@sda21(r0)
/* 8136165C | 90 6D A7 0C */	stw r3, _isLastOnOff__7LibTVRC@sda21(r0)
/* 81361660 | 48 00 00 A8 */	b .L_81361708
.L_81361664:
/* 81361664 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81361668 | 40 82 00 A0 */	bne .L_81361708
/* 8136166C | 80 0D A6 EC */	lwz r0, _isReserveDeactive__7LibTVRC@sda21(r0)
/* 81361670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361674 | 40 82 00 58 */	bne .L_813616CC
/* 81361678 | 48 1D 46 09 */	bl OSGetTime
/* 8136167C | 3C A0 80 00 */	lis r5, 0x8000
/* 81361680 | 80 CD A7 04 */	lwz r6, _totalStartTime__7LibTVRC+0x4@sda21(r0)
/* 81361684 | 80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 81361688 | 38 00 03 E8 */	li r0, 0x3e8
/* 8136168C | 7C 86 20 10 */	subfc r4, r6, r4
/* 81361690 | 80 ED A7 00 */	lwz r7, _totalStartTime__7LibTVRC@sda21(r0)
/* 81361694 | 54 A6 F0 BE */	srwi r6, r5, 2
/* 81361698 | 38 A0 00 00 */	li r5, 0x0
/* 8136169C | 7C C6 03 96 */	divwu r6, r6, r0
/* 813616A0 | 7C 67 19 10 */	subfe r3, r7, r3
/* 813616A4 | 48 29 7F 6D */	bl __div2i
/* 813616A8 | 80 ED 82 00 */	lwz r7, _limitMilli__7LibTVRC@sda21(r0)
/* 813616AC | 38 C0 00 00 */	li r6, 0x0
/* 813616B0 | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 813616B4 | 6C C0 80 00 */	xoris r0, r6, 0x8000
/* 813616B8 | 7C 64 38 10 */	subfc r3, r4, r7
/* 813616BC | 7C A5 01 10 */	subfe r5, r5, r0
/* 813616C0 | 7C A0 01 10 */	subfe r5, r0, r0
/* 813616C4 | 7C A5 00 D1 */	neg. r5, r5
/* 813616C8 | 41 82 00 18 */	beq .L_813616E0
.L_813616CC:
/* 813616CC | 38 60 00 01 */	li r3, 0x1
/* 813616D0 | 48 21 BC F5 */	bl WPADSetSensorBarPower
/* 813616D4 | 38 00 00 00 */	li r0, 0x0
/* 813616D8 | 90 0D A6 E8 */	stw r0, _isActive__7LibTVRC@sda21(r0)
/* 813616DC | 48 00 00 E0 */	b .L_813617BC
.L_813616E0:
/* 813616E0 | 80 8D A6 C4 */	lwz r4, _isUseRepeatCode__7LibTVRC@sda21(r0)
/* 813616E4 | 80 6D A7 28 */	lwz r3, _repeatBitLength__7LibTVRC@sda21(r0)
/* 813616E8 | 80 0D A7 2C */	lwz r0, _repeatBitArray__7LibTVRC@sda21(r0)
/* 813616EC | 90 8D A6 C0 */	stw r4, _isRepeatActive__7LibTVRC@sda21(r0)
/* 813616F0 | 90 6D A7 20 */	stw r3, _bitLength__7LibTVRC@sda21(r0)
/* 813616F4 | 90 0D A7 24 */	stw r0, _bitArray__7LibTVRC@sda21(r0)
/* 813616F8 | 90 CD A7 08 */	stw r6, _isOnOff__7LibTVRC@sda21(r0)
/* 813616FC | 90 CD A7 0C */	stw r6, _isLastOnOff__7LibTVRC@sda21(r0)
/* 81361700 | 90 CD A7 14 */	stw r6, _func0state__7LibTVRC@sda21(r0)
/* 81361704 | 90 CD A7 18 */	stw r6, _loop0count__7LibTVRC@sda21(r0)
.L_81361708:
/* 81361708 | 38 60 00 00 */	li r3, 0x0
/* 8136170C | 80 ED A7 24 */	lwz r7, _bitArray__7LibTVRC@sda21(r0)
/* 81361710 | 90 6D A7 10 */	stw r3, _ctCombo__7LibTVRC@sda21(r0)
/* 81361714 | 81 0D A7 20 */	lwz r8, _bitLength__7LibTVRC@sda21(r0)
/* 81361718 | 80 8D A7 18 */	lwz r4, _loop0count__7LibTVRC@sda21(r0)
/* 8136171C | 80 0D A7 0C */	lwz r0, _isLastOnOff__7LibTVRC@sda21(r0)
/* 81361720 | 48 00 00 70 */	b .L_81361790
.L_81361724:
/* 81361724 | 7C 85 1E 70 */	srawi r5, r4, 3
/* 81361728 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8136172C | 7C C5 01 94 */	addze r6, r5
/* 81361730 | 7C 85 1E 70 */	srawi r5, r4, 3
/* 81361734 | 7C C7 30 AE */	lbzx r6, r7, r6
/* 81361738 | 7C A5 01 94 */	addze r5, r5
/* 8136173C | 54 A5 18 38 */	slwi r5, r5, 3
/* 81361740 | 90 6D A7 10 */	stw r3, _ctCombo__7LibTVRC@sda21(r0)
/* 81361744 | 7C A5 20 50 */	subf r5, r5, r4
/* 81361748 | 20 A5 00 07 */	subfic r5, r5, 0x7
/* 8136174C | 7C C5 2E 30 */	sraw r5, r6, r5
/* 81361750 | 54 A5 07 FE */	clrlwi r5, r5, 31
/* 81361754 | 7C 00 28 00 */	cmpw r0, r5
/* 81361758 | 90 AD A7 08 */	stw r5, _isOnOff__7LibTVRC@sda21(r0)
/* 8136175C | 41 82 00 24 */	beq .L_81361780
/* 81361760 | 38 60 FF FF */	li r3, -0x1
/* 81361764 | 38 00 00 00 */	li r0, 0x0
/* 81361768 | 90 6D A7 1C */	stw r3, _func1state__7LibTVRC@sda21(r0)
/* 8136176C | 7F C3 F3 78 */	mr r3, r30
/* 81361770 | 7F E4 FB 78 */	mr r4, r31
/* 81361774 | 90 0D A7 14 */	stw r0, _func0state__7LibTVRC@sda21(r0)
/* 81361778 | 48 00 00 5D */	bl __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext
/* 8136177C | 48 00 00 40 */	b .L_813617BC
.L_81361780:
/* 81361780 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81361784 | 90 AD A7 0C */	stw r5, _isLastOnOff__7LibTVRC@sda21(r0)
/* 81361788 | 7C A0 2B 78 */	mr r0, r5
/* 8136178C | 90 8D A7 18 */	stw r4, _loop0count__7LibTVRC@sda21(r0)
.L_81361790:
/* 81361790 | 7C 04 40 00 */	cmpw r4, r8
/* 81361794 | 41 80 FF 90 */	blt .L_81361724
/* 81361798 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8136179C | 38 A0 FF FF */	li r5, -0x1
/* 813617A0 | 38 00 00 02 */	li r0, 0x2
/* 813617A4 | 90 6D A7 10 */	stw r3, _ctCombo__7LibTVRC@sda21(r0)
/* 813617A8 | 7F C3 F3 78 */	mr r3, r30
/* 813617AC | 7F E4 FB 78 */	mr r4, r31
/* 813617B0 | 90 AD A7 1C */	stw r5, _func1state__7LibTVRC@sda21(r0)
/* 813617B4 | 90 0D A7 14 */	stw r0, _func0state__7LibTVRC@sda21(r0)
/* 813617B8 | 48 00 00 1D */	bl __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext
.L_813617BC:
/* 813617BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813617C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813617C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813617C8 | 7C 08 03 A6 */	mtlr r0
/* 813617CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813617D0 | 4E 80 00 20 */	blr
.endfn __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext

# .text:0x78C | 0x813617D4 | size: 0x17C
# LibTVRC::__FTVRCLoop1Handler(OSAlarm*, OSContext*)
.fn __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext, global
/* 813617D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813617D8 | 7C 08 02 A6 */	mflr r0
/* 813617DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813617E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813617E4 | 80 0D A7 10 */	lwz r0, _ctCombo__7LibTVRC@sda21(r0)
/* 813617E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813617EC | 41 82 01 50 */	beq .L_8136193C
/* 813617F0 | 80 0D A6 E8 */	lwz r0, _isActive__7LibTVRC@sda21(r0)
/* 813617F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813617F8 | 41 82 01 44 */	beq .L_8136193C
/* 813617FC | 80 0D A7 1C */	lwz r0, _func1state__7LibTVRC@sda21(r0)
/* 81361800 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81361804 | 40 82 00 18 */	bne .L_8136181C
/* 81361808 | 48 1D 44 79 */	bl OSGetTime
/* 8136180C | 38 00 00 00 */	li r0, 0x0
/* 81361810 | 90 8D A6 F4 */	stw r4, _unitStartTime__7LibTVRC+0x4@sda21(r0)
/* 81361814 | 90 6D A6 F0 */	stw r3, _unitStartTime__7LibTVRC@sda21(r0)
/* 81361818 | 90 0D A7 1C */	stw r0, _func1state__7LibTVRC@sda21(r0)
.L_8136181C:
/* 8136181C | 80 0D A7 0C */	lwz r0, _isLastOnOff__7LibTVRC@sda21(r0)
/* 81361820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361824 | 41 82 00 EC */	beq .L_81361910
/* 81361828 | 48 1D 44 59 */	bl OSGetTime
/* 8136182C | 80 0D A7 1C */	lwz r0, _func1state__7LibTVRC@sda21(r0)
/* 81361830 | 90 8D A6 FC */	stw r4, _unitLastTime__7LibTVRC+0x4@sda21(r0)
/* 81361834 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81361838 | 90 6D A6 F8 */	stw r3, _unitLastTime__7LibTVRC@sda21(r0)
/* 8136183C | 40 82 00 3C */	bne .L_81361878
/* 81361840 | 38 60 00 01 */	li r3, 0x1
/* 81361844 | 48 21 BB 81 */	bl WPADSetSensorBarPower
/* 81361848 | 3C 80 81 09 */	lis r4, _tickWait__7LibTVRC@ha
/* 8136184C | 38 00 00 01 */	li r0, 0x1
/* 81361850 | 38 84 97 B0 */	addi r4, r4, _tickWait__7LibTVRC@l
/* 81361854 | 3C 60 81 09 */	lis r3, _alarm__7LibTVRC@ha
/* 81361858 | 3C E0 81 36 */	lis r7, __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext@ha
/* 8136185C | 90 0D A7 1C */	stw r0, _func1state__7LibTVRC@sda21(r0)
/* 81361860 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 81361864 | 38 63 97 80 */	addi r3, r3, _alarm__7LibTVRC@l
/* 81361868 | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 8136186C | 38 E7 17 D4 */	addi r7, r7, __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext@l
/* 81361870 | 48 1C B2 D5 */	bl OSSetAlarm
/* 81361874 | 48 00 00 C8 */	b .L_8136193C
.L_81361878:
/* 81361878 | 80 AD A7 30 */	lwz r5, _tickT__7LibTVRC@sda21(r0)
/* 8136187C | 80 0D A7 10 */	lwz r0, _ctCombo__7LibTVRC@sda21(r0)
/* 81361880 | 80 CD A6 F4 */	lwz r6, _unitStartTime__7LibTVRC+0x4@sda21(r0)
/* 81361884 | 7C A5 01 D6 */	mullw r5, r5, r0
/* 81361888 | 80 0D A6 F0 */	lwz r0, _unitStartTime__7LibTVRC@sda21(r0)
/* 8136188C | 7C 86 20 10 */	subfc r4, r6, r4
/* 81361890 | 7C 00 19 10 */	subfe r0, r0, r3
/* 81361894 | 38 60 00 00 */	li r3, 0x0
/* 81361898 | 7C A0 22 78 */	xor r0, r5, r4
/* 8136189C | 7C 04 0E 70 */	srawi r4, r0, 1
/* 813618A0 | 7C 00 28 38 */	and r0, r0, r5
/* 813618A4 | 7C 00 20 50 */	subf r0, r0, r4
/* 813618A8 | 54 1F 0F FE */	srwi r31, r0, 31
/* 813618AC | 48 21 BB 19 */	bl WPADSetSensorBarPower
/* 813618B0 | 38 00 00 00 */	li r0, 0x0
/* 813618B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813618B8 | 90 0D A7 1C */	stw r0, _func1state__7LibTVRC@sda21(r0)
/* 813618BC | 41 82 00 2C */	beq .L_813618E8
/* 813618C0 | 3C A0 81 09 */	lis r5, _tickWait__7LibTVRC@ha
/* 813618C4 | 3C 60 81 09 */	lis r3, _alarm__7LibTVRC@ha
/* 813618C8 | 38 85 97 B0 */	addi r4, r5, _tickWait__7LibTVRC@l
/* 813618CC | 3C E0 81 36 */	lis r7, __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext@ha
/* 813618D0 | 80 A5 97 B0 */	lwz r5, _tickWait__7LibTVRC@l(r5)
/* 813618D4 | 38 63 97 80 */	addi r3, r3, _alarm__7LibTVRC@l
/* 813618D8 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 813618DC | 38 E7 17 D4 */	addi r7, r7, __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext@l
/* 813618E0 | 48 1C B2 65 */	bl OSSetAlarm
/* 813618E4 | 48 00 00 58 */	b .L_8136193C
.L_813618E8:
/* 813618E8 | 3C A0 81 09 */	lis r5, _tickWait__7LibTVRC@ha
/* 813618EC | 3C 60 81 09 */	lis r3, _alarm__7LibTVRC@ha
/* 813618F0 | 38 85 97 B0 */	addi r4, r5, _tickWait__7LibTVRC@l
/* 813618F4 | 3C E0 81 36 */	lis r7, __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext@ha
/* 813618F8 | 80 A5 97 B0 */	lwz r5, _tickWait__7LibTVRC@l(r5)
/* 813618FC | 38 63 97 80 */	addi r3, r3, _alarm__7LibTVRC@l
/* 81361900 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81361904 | 38 E7 15 F4 */	addi r7, r7, __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext@l
/* 81361908 | 48 1C B2 3D */	bl OSSetAlarm
/* 8136190C | 48 00 00 30 */	b .L_8136193C
.L_81361910:
/* 81361910 | 38 60 00 00 */	li r3, 0x0
/* 81361914 | 48 21 BA B1 */	bl WPADSetSensorBarPower
/* 81361918 | 80 8D A7 30 */	lwz r4, _tickT__7LibTVRC@sda21(r0)
/* 8136191C | 3C 60 81 09 */	lis r3, _alarm__7LibTVRC@ha
/* 81361920 | 80 0D A7 10 */	lwz r0, _ctCombo__7LibTVRC@sda21(r0)
/* 81361924 | 3C E0 81 36 */	lis r7, __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext@ha
/* 81361928 | 38 63 97 80 */	addi r3, r3, _alarm__7LibTVRC@l
/* 8136192C | 38 A0 00 00 */	li r5, 0x0
/* 81361930 | 7C C4 01 D6 */	mullw r6, r4, r0
/* 81361934 | 38 E7 15 F4 */	addi r7, r7, __FTVRCLoop0Handler__7LibTVRCFP7OSAlarmP9OSContext@l
/* 81361938 | 48 1C B2 0D */	bl OSSetAlarm
.L_8136193C:
/* 8136193C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81361940 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81361944 | 7C 08 03 A6 */	mtlr r0
/* 81361948 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136194C | 4E 80 00 20 */	blr
.endfn __FTVRCLoop1Handler__7LibTVRCFP7OSAlarmP9OSContext

# 0x816945C8..0x816945E8 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816945C8 | size: 0x4
.obj lbl_816945C8, global
	.float 1000
.endobj lbl_816945C8

# .sdata2:0x4 | 0x816945CC | size: 0x4
.obj gap_09_816945CC_sdata2, global
.hidden gap_09_816945CC_sdata2
	.4byte 0x00000000
.endobj gap_09_816945CC_sdata2

# .sdata2:0x8 | 0x816945D0 | size: 0x8
.obj lbl_816945D0, global
	.double 1000000000
.endobj lbl_816945D0

# .sdata2:0x10 | 0x816945D8 | size: 0x8
.obj lbl_816945D8, global
	.double 1
.endobj lbl_816945D8

# .sdata2:0x18 | 0x816945E0 | size: 0x8
.obj lbl_816945E0, global
	.double 4503599627370496
.endobj lbl_816945E0

# 0x81696230..0x81696250 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696230 | size: 0x8
.obj lbl_81696230, global
	.4byte 0x54565230
	.4byte 0x00000000
.endobj lbl_81696230

# .sdata:0x8 | 0x81696238 | size: 0x4
# LibTVRC::TVRC_FILE_HEADER
.obj TVRC_FILE_HEADER__7LibTVRC, global
	.4byte lbl_81696230
.endobj TVRC_FILE_HEADER__7LibTVRC

# .sdata:0xC | 0x8169623C | size: 0x4
# LibTVRC::__tienHoseiNsec
.obj __tienHoseiNsec__7LibTVRC, global
	.4byte 0x0000044C
.endobj __tienHoseiNsec__7LibTVRC

# .sdata:0x10 | 0x81696240 | size: 0x4
# LibTVRC::_limitMilli
.obj _limitMilli__7LibTVRC, global
	.4byte 0x00000190
.endobj _limitMilli__7LibTVRC

# .sdata:0x14 | 0x81696244 | size: 0xC
.obj lbl_81696244, global
	.4byte 0x2F253034
	.4byte 0x64000000
	.4byte 0x00000000
.endobj lbl_81696244

# 0x81698700..0x81698778 | size: 0x78
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698700 | size: 0x4
# LibTVRC::_isRepeatActive
.obj _isRepeatActive__7LibTVRC, global
	.skip 0x4
.endobj _isRepeatActive__7LibTVRC

# .sbss:0x4 | 0x81698704 | size: 0x4
# LibTVRC::_isUseRepeatCode
.obj _isUseRepeatCode__7LibTVRC, global
	.skip 0x4
.endobj _isUseRepeatCode__7LibTVRC

# .sbss:0x8 | 0x81698708 | size: 0x4
# LibTVRC::_lastError
.obj _lastError__7LibTVRC, global
	.skip 0x4
.endobj _lastError__7LibTVRC

# .sbss:0xC | 0x8169870C | size: 0x4
# LibTVRC::_tvrcFile
.obj _tvrcFile__7LibTVRC, global
	.skip 0x4
.endobj _tvrcFile__7LibTVRC

# .sbss:0x10 | 0x81698710 | size: 0x4
# LibTVRC::_Hz
.obj _Hz__7LibTVRC, global
	.skip 0x4
.endobj _Hz__7LibTVRC

# .sbss:0x14 | 0x81698714 | size: 0x4
# LibTVRC::_onTimeRatio
.obj _onTimeRatio__7LibTVRC, global
	.skip 0x4
.endobj _onTimeRatio__7LibTVRC

# .sbss:0x18 | 0x81698718 | size: 0x4
# LibTVRC::_makerID
.obj _makerID__7LibTVRC, global
	.skip 0x4
.endobj _makerID__7LibTVRC

# .sbss:0x1C | 0x8169871C | size: 0x4
# LibTVRC::_typeNo
.obj _typeNo__7LibTVRC, global
	.skip 0x4
.endobj _typeNo__7LibTVRC

# .sbss:0x20 | 0x81698720 | size: 0x4
# LibTVRC::_isUseCustomParams
.obj _isUseCustomParams__7LibTVRC, global
	.skip 0x4
.endobj _isUseCustomParams__7LibTVRC

# .sbss:0x24 | 0x81698724 | size: 0x4
# LibTVRC::_isInitialized
.obj _isInitialized__7LibTVRC, global
	.skip 0x4
.endobj _isInitialized__7LibTVRC

# .sbss:0x28 | 0x81698728 | size: 0x4
# LibTVRC::_isActive
.obj _isActive__7LibTVRC, global
	.skip 0x4
.endobj _isActive__7LibTVRC

# .sbss:0x2C | 0x8169872C | size: 0x4
# LibTVRC::_isReserveDeactive
.obj _isReserveDeactive__7LibTVRC, global
	.skip 0x4
.endobj _isReserveDeactive__7LibTVRC

# .sbss:0x30 | 0x81698730 | size: 0x8
# LibTVRC::_unitStartTime
.obj _unitStartTime__7LibTVRC, global
	.skip 0x8
.endobj _unitStartTime__7LibTVRC

# .sbss:0x38 | 0x81698738 | size: 0x8
# LibTVRC::_unitLastTime
.obj _unitLastTime__7LibTVRC, global
	.skip 0x8
.endobj _unitLastTime__7LibTVRC

# .sbss:0x40 | 0x81698740 | size: 0x8
# LibTVRC::_totalStartTime
.obj _totalStartTime__7LibTVRC, global
	.skip 0x8
.endobj _totalStartTime__7LibTVRC

# .sbss:0x48 | 0x81698748 | size: 0x4
# LibTVRC::_isOnOff
.obj _isOnOff__7LibTVRC, global
	.skip 0x4
.endobj _isOnOff__7LibTVRC

# .sbss:0x4C | 0x8169874C | size: 0x4
# LibTVRC::_isLastOnOff
.obj _isLastOnOff__7LibTVRC, global
	.skip 0x4
.endobj _isLastOnOff__7LibTVRC

# .sbss:0x50 | 0x81698750 | size: 0x4
# LibTVRC::_ctCombo
.obj _ctCombo__7LibTVRC, global
	.skip 0x4
.endobj _ctCombo__7LibTVRC

# .sbss:0x54 | 0x81698754 | size: 0x4
# LibTVRC::_func0state
.obj _func0state__7LibTVRC, global
	.skip 0x4
.endobj _func0state__7LibTVRC

# .sbss:0x58 | 0x81698758 | size: 0x4
# LibTVRC::_loop0count
.obj _loop0count__7LibTVRC, global
	.skip 0x4
.endobj _loop0count__7LibTVRC

# .sbss:0x5C | 0x8169875C | size: 0x4
# LibTVRC::_func1state
.obj _func1state__7LibTVRC, global
	.skip 0x4
.endobj _func1state__7LibTVRC

# .sbss:0x60 | 0x81698760 | size: 0x4
# LibTVRC::_bitLength
.obj _bitLength__7LibTVRC, global
	.skip 0x4
.endobj _bitLength__7LibTVRC

# .sbss:0x64 | 0x81698764 | size: 0x4
# LibTVRC::_bitArray
.obj _bitArray__7LibTVRC, global
	.skip 0x4
.endobj _bitArray__7LibTVRC

# .sbss:0x68 | 0x81698768 | size: 0x4
# LibTVRC::_repeatBitLength
.obj _repeatBitLength__7LibTVRC, global
	.skip 0x4
.endobj _repeatBitLength__7LibTVRC

# .sbss:0x6C | 0x8169876C | size: 0x4
# LibTVRC::_repeatBitArray
.obj _repeatBitArray__7LibTVRC, global
	.skip 0x4
.endobj _repeatBitArray__7LibTVRC

# .sbss:0x70 | 0x81698770 | size: 0x8
# LibTVRC::_tickT
.obj _tickT__7LibTVRC, global
	.skip 0x8
.endobj _tickT__7LibTVRC
