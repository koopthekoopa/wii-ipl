.include "macros.inc"
.file "AxAdpcmPlayer.cpp"

# 0x810C0C80..0x810C2580 | size: 0x1900
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C0C80 | size: 0x1800
.obj Voices, global
	.skip 0x1800
.endobj Voices

# .bss:0x1800 | 0x810C2480 | size: 0x100
.obj sZeroMem, global
	.skip 0x100
.endobj sZeroMem

# 0x8140DA2C..0x8140E63C | size: 0xC10
.text
.balign 4

# .text:0x0 | 0x8140DA2C | size: 0x2C
# VoiceCallback(void*)
.fn VoiceCallback__FPv, global
/* 8140DA2C | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8140DA30 | 3C 80 81 0C */	lis r4, Voices@ha
/* 8140DA34 | 38 84 0C 80 */	addi r4, r4, Voices@l
/* 8140DA38 | 38 A0 00 00 */	li r5, 0x0
/* 8140DA3C | 54 00 30 32 */	slwi r0, r0, 6
/* 8140DA40 | 7C A4 01 2E */	stwx r5, r4, r0
/* 8140DA44 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8140DA48 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140DA4C | 7C 64 02 14 */	add r3, r4, r0
/* 8140DA50 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8140DA54 | 4E 80 00 20 */	blr
.endfn VoiceCallback__FPv

# .text:0x2C | 0x8140DA58 | size: 0x220
# AudioFrameCallback()
.fn AudioFrameCallback__Fv, global
/* 8140DA58 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8140DA5C | 7C 08 02 A6 */	mflr r0
/* 8140DA60 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140DA64 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140DA68 | 48 1E BA 35 */	bl _savegpr_18
/* 8140DA6C | 81 8D AC A8 */	lwz r12, sCallback__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DA70 | 3B 60 00 00 */	li r27, 0x0
/* 8140DA74 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8140DA78 | 41 82 00 0C */	beq .L_8140DA84
/* 8140DA7C | 7D 89 03 A6 */	mtctr r12
/* 8140DA80 | 4E 80 04 21 */	bctrl
.L_8140DA84:
/* 8140DA84 | 3B 80 00 00 */	li r28, 0x0
/* 8140DA88 | 3F C0 81 0C */	lis r30, Voices@ha
/* 8140DA8C | 7F 98 E3 78 */	mr r24, r28
/* 8140DA90 | 3B 40 00 00 */	li r26, 0x0
/* 8140DA94 | 7F 99 E3 78 */	mr r25, r28
/* 8140DA98 | 3B DE 0C 80 */	addi r30, r30, Voices@l
/* 8140DA9C | 3A E0 00 03 */	li r23, 0x3
/* 8140DAA0 | 3A C0 00 06 */	li r22, 0x6
/* 8140DAA4 | 3A A0 00 05 */	li r21, 0x5
/* 8140DAA8 | 3A 80 00 04 */	li r20, 0x4
/* 8140DAAC | 3A 60 00 02 */	li r19, 0x2
/* 8140DAB0 | 3F E0 81 66 */	lis r31, jumptable_81658BD0@ha
.L_8140DAB4:
/* 8140DAB4 | 7C 1E D0 2E */	lwzx r0, r30, r26
/* 8140DAB8 | 7F BE D2 14 */	add r29, r30, r26
/* 8140DABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DAC0 | 40 82 00 10 */	bne .L_8140DAD0
/* 8140DAC4 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8140DAC8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140DACC | 40 82 01 84 */	bne .L_8140DC50
.L_8140DAD0:
/* 8140DAD0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140DAD4 | 4B FF FE CD */	bl __ct__Q34nw4r2ut17AutoInterruptLockFv
/* 8140DAD8 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8140DADC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8140DAE0 | 3A 44 00 28 */	addi r18, r4, 0x28
/* 8140DAE4 | 4B FF FE BD */	bl __ct__Q34nw4r2ut17AutoInterruptLockFv
/* 8140DAE8 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 8140DAEC | 40 82 00 18 */	bne .L_8140DB04
/* 8140DAF0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8140DAF4 | 38 80 FF FF */	li r4, -0x1
/* 8140DAF8 | 4B FF FE DD */	bl __dt__Q34nw4r2ut17AutoInterruptLockFv
/* 8140DAFC | 3A 40 00 00 */	li r18, 0x0
/* 8140DB00 | 48 00 00 20 */	b .L_8140DB20
.L_8140DB04:
/* 8140DB04 | A0 B2 00 7A */	lhz r5, 0x7a(r18)
/* 8140DB08 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8140DB0C | A0 12 00 7C */	lhz r0, 0x7c(r18)
/* 8140DB10 | 38 80 FF FF */	li r4, -0x1
/* 8140DB14 | 54 A5 80 1E */	slwi r5, r5, 16
/* 8140DB18 | 7E 45 02 14 */	add r18, r5, r0
/* 8140DB1C | 4B FF FE B9 */	bl __dt__Q34nw4r2ut17AutoInterruptLockFv
.L_8140DB20:
/* 8140DB20 | 80 6D AC A0 */	lwz r3, zeroBuffer@sda21(r0)
/* 8140DB24 | 38 80 00 00 */	li r4, 0x0
/* 8140DB28 | 38 A0 00 00 */	li r5, 0x0
/* 8140DB2C | 4B FF FE 0D */	bl AudioWavePlayer_8140D938
/* 8140DB30 | 7C 03 90 40 */	cmplw r3, r18
/* 8140DB34 | 41 81 00 24 */	bgt .L_8140DB58
/* 8140DB38 | 38 03 02 00 */	addi r0, r3, 0x200
/* 8140DB3C | 7C 12 00 40 */	cmplw r18, r0
/* 8140DB40 | 40 80 00 18 */	bge .L_8140DB58
/* 8140DB44 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140DB48 | 38 80 FF FF */	li r4, -0x1
/* 8140DB4C | 4B FF FE 89 */	bl __dt__Q34nw4r2ut17AutoInterruptLockFv
/* 8140DB50 | 38 00 00 01 */	li r0, 0x1
/* 8140DB54 | 48 00 00 14 */	b .L_8140DB68
.L_8140DB58:
/* 8140DB58 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140DB5C | 38 80 FF FF */	li r4, -0x1
/* 8140DB60 | 4B FF FE 75 */	bl __dt__Q34nw4r2ut17AutoInterruptLockFv
/* 8140DB64 | 38 00 00 00 */	li r0, 0x0
.L_8140DB68:
/* 8140DB68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DB6C | 41 82 00 0C */	beq .L_8140DB78
/* 8140DB70 | 3B 60 00 01 */	li r27, 0x1
/* 8140DB74 | 48 00 00 AC */	b .L_8140DC20
.L_8140DB78:
/* 8140DB78 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8140DB7C | 28 00 00 07 */	cmplwi r0, 0x7
/* 8140DB80 | 41 81 00 A0 */	bgt .L_8140DC20
/* 8140DB84 | 38 7F 8B D0 */	addi r3, r31, jumptable_81658BD0@l
/* 8140DB88 | 54 00 10 3A */	slwi r0, r0, 2
/* 8140DB8C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8140DB90 | 7C 69 03 A6 */	mtctr r3
/* 8140DB94 | 4E 80 04 20 */	bctr
.L_8140DB98:
/* 8140DB98 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140DB9C | 38 80 00 01 */	li r4, 0x1
/* 8140DBA0 | 48 14 74 81 */	bl fn_81555020
/* 8140DBA4 | 92 7D 00 04 */	stw r19, 0x4(r29)
/* 8140DBA8 | 48 00 00 78 */	b .L_8140DC20
.L_8140DBAC:
/* 8140DBAC | 92 FD 00 04 */	stw r23, 0x4(r29)
/* 8140DBB0 | 48 00 00 70 */	b .L_8140DC20
.L_8140DBB4:
/* 8140DBB4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140DBB8 | A0 03 00 38 */	lhz r0, 0x38(r3)
/* 8140DBBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DBC0 | 40 82 00 0C */	bne .L_8140DBCC
/* 8140DBC4 | 3B 60 00 01 */	li r27, 0x1
/* 8140DBC8 | 48 00 00 58 */	b .L_8140DC20
.L_8140DBCC:
/* 8140DBCC | 88 0D AC A5 */	lbz r0, sSysPauseFlag__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DBD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DBD4 | 41 82 00 4C */	beq .L_8140DC20
/* 8140DBD8 | 92 9D 00 04 */	stw r20, 0x4(r29)
/* 8140DBDC | 48 00 00 44 */	b .L_8140DC20
.L_8140DBE0:
/* 8140DBE0 | 3B 60 00 01 */	li r27, 0x1
/* 8140DBE4 | 48 00 00 3C */	b .L_8140DC20
.L_8140DBE8:
/* 8140DBE8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140DBEC | 38 80 00 00 */	li r4, 0x0
/* 8140DBF0 | 48 14 74 31 */	bl fn_81555020
/* 8140DBF4 | 92 BD 00 04 */	stw r21, 0x4(r29)
/* 8140DBF8 | 48 00 00 28 */	b .L_8140DC20
.L_8140DBFC:
/* 8140DBFC | 88 0D AC A5 */	lbz r0, sSysPauseFlag__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DC00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DC04 | 40 82 00 1C */	bne .L_8140DC20
/* 8140DC08 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140DC0C | 38 80 00 01 */	li r4, 0x1
/* 8140DC10 | 48 14 74 11 */	bl fn_81555020
/* 8140DC14 | 92 DD 00 04 */	stw r22, 0x4(r29)
/* 8140DC18 | 48 00 00 08 */	b .L_8140DC20
.L_8140DC1C:
/* 8140DC1C | 92 FD 00 04 */	stw r23, 0x4(r29)
.L_8140DC20:
/* 8140DC20 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8140DC24 | 41 82 00 28 */	beq .L_8140DC4C
/* 8140DC28 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140DC2C | 38 80 00 00 */	li r4, 0x0
/* 8140DC30 | 48 14 73 F1 */	bl fn_81555020
/* 8140DC34 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140DC38 | 48 14 46 AD */	bl fn_815522E4
/* 8140DC3C | 93 1D 00 00 */	stw r24, 0x0(r29)
/* 8140DC40 | 3B 60 00 00 */	li r27, 0x0
/* 8140DC44 | 93 1D 00 04 */	stw r24, 0x4(r29)
/* 8140DC48 | 93 1D 00 08 */	stw r24, 0x8(r29)
.L_8140DC4C:
/* 8140DC4C | 93 3D 00 0C */	stw r25, 0xc(r29)
.L_8140DC50:
/* 8140DC50 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8140DC54 | 3B 5A 00 40 */	addi r26, r26, 0x40
/* 8140DC58 | 28 1C 00 60 */	cmplwi r28, 0x60
/* 8140DC5C | 41 80 FE 58 */	blt .L_8140DAB4
/* 8140DC60 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140DC64 | 48 1E B8 85 */	bl _restgpr_18
/* 8140DC68 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140DC6C | 7C 08 03 A6 */	mtlr r0
/* 8140DC70 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140DC74 | 4E 80 00 20 */	blr
.endfn AudioFrameCallback__Fv

# .text:0x24C | 0x8140DC78 | size: 0x30
# VoiceInfo::initAXPBMIX(_AXPBMIX*)
.fn initAXPBMIX__9VoiceInfoFP8_AXPBMIX, global
/* 8140DC78 | 38 00 00 18 */	li r0, 0x18
/* 8140DC7C | 38 A0 00 00 */	li r5, 0x0
/* 8140DC80 | 38 80 00 00 */	li r4, 0x0
/* 8140DC84 | 7C 09 03 A6 */	mtctr r0
.L_8140DC88:
/* 8140DC88 | 7C A3 23 2E */	sthx r5, r3, r4
/* 8140DC8C | 38 84 00 02 */	addi r4, r4, 0x2
/* 8140DC90 | 42 00 FF F8 */	bdnz .L_8140DC88
/* 8140DC94 | 3C 80 00 01 */	lis r4, 0x1
/* 8140DC98 | 38 04 80 00 */	addi r0, r4, -0x8000
/* 8140DC9C | B0 03 00 00 */	sth r0, 0x0(r3)
/* 8140DCA0 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 8140DCA4 | 4E 80 00 20 */	blr
.endfn initAXPBMIX__9VoiceInfoFP8_AXPBMIX

# .text:0x27C | 0x8140DCA8 | size: 0x174
# AxAdpcmSimplePlayer::checkFile(void*, unsigned long)
.fn checkFile__19AxAdpcmSimplePlayerFPvUl, global
/* 8140DCA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140DCAC | A0 04 00 04 */	lhz r0, 0x4(r4)
/* 8140DCB0 | 28 00 FE FF */	cmplwi r0, 0xfeff
/* 8140DCB4 | 41 82 00 0C */	beq .L_8140DCC0
/* 8140DCB8 | 38 60 00 00 */	li r3, 0x0
/* 8140DCBC | 48 00 01 58 */	b .L_8140DE14
.L_8140DCC0:
/* 8140DCC0 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8140DCC4 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 8140DCC8 | 7D 04 1A 14 */	add r8, r4, r3
/* 8140DCCC | 7C 64 18 2E */	lwzx r3, r4, r3
/* 8140DCD0 | 7D 24 02 14 */	add r9, r4, r0
/* 8140DCD4 | 3C 03 B6 B2 */	subis r0, r3, 0x494e
/* 8140DCD8 | 28 00 46 4F */	cmplwi r0, 0x464f
/* 8140DCDC | 41 82 00 0C */	beq .L_8140DCE8
/* 8140DCE0 | 38 60 00 00 */	li r3, 0x0
/* 8140DCE4 | 48 00 01 30 */	b .L_8140DE14
.L_8140DCE8:
/* 8140DCE8 | 80 69 00 00 */	lwz r3, 0x0(r9)
/* 8140DCEC | 3C 03 BB BF */	subis r0, r3, 0x4441
/* 8140DCF0 | 28 00 54 41 */	cmplwi r0, 0x5441
/* 8140DCF4 | 41 82 00 0C */	beq .L_8140DD00
/* 8140DCF8 | 38 60 00 00 */	li r3, 0x0
/* 8140DCFC | 48 00 01 18 */	b .L_8140DE14
.L_8140DD00:
/* 8140DD00 | A0 08 00 0C */	lhz r0, 0xc(r8)
/* 8140DD04 | 28 00 BB 80 */	cmplwi r0, 0xbb80
/* 8140DD08 | 41 81 00 0C */	bgt .L_8140DD14
/* 8140DD0C | 28 00 0F A0 */	cmplwi r0, 0xfa0
/* 8140DD10 | 40 80 00 0C */	bge .L_8140DD1C
.L_8140DD14:
/* 8140DD14 | 38 60 00 00 */	li r3, 0x0
/* 8140DD18 | 48 00 00 FC */	b .L_8140DE14
.L_8140DD1C:
/* 8140DD1C | 88 C8 00 0A */	lbz r6, 0xa(r8)
/* 8140DD20 | 2C 86 00 00 */	cmpwi cr1, r6, 0x0
/* 8140DD24 | 41 86 00 0C */	beq cr1, .L_8140DD30
/* 8140DD28 | 28 06 00 02 */	cmplwi r6, 0x2
/* 8140DD2C | 40 81 00 0C */	ble .L_8140DD38
.L_8140DD30:
/* 8140DD30 | 38 60 00 00 */	li r3, 0x0
/* 8140DD34 | 48 00 00 E0 */	b .L_8140DE14
.L_8140DD38:
/* 8140DD38 | 80 E8 00 14 */	lwz r7, 0x14(r8)
/* 8140DD3C | 80 68 00 10 */	lwz r3, 0x10(r8)
/* 8140DD40 | 7C 03 38 40 */	cmplw r3, r7
/* 8140DD44 | 41 80 00 0C */	blt .L_8140DD50
/* 8140DD48 | 38 60 00 00 */	li r3, 0x0
/* 8140DD4C | 48 00 00 C8 */	b .L_8140DE14
.L_8140DD50:
/* 8140DD50 | 80 09 00 04 */	lwz r0, 0x4(r9)
/* 8140DD54 | 1C 00 00 0E */	mulli r0, r0, 0xe
/* 8140DD58 | 54 00 E8 FE */	srwi r0, r0, 3
/* 8140DD5C | 7C 00 18 40 */	cmplw r0, r3
/* 8140DD60 | 41 81 00 0C */	bgt .L_8140DD6C
/* 8140DD64 | 38 60 00 00 */	li r3, 0x0
/* 8140DD68 | 48 00 00 AC */	b .L_8140DE14
.L_8140DD6C:
/* 8140DD6C | 7C 00 38 40 */	cmplw r0, r7
/* 8140DD70 | 40 80 00 0C */	bge .L_8140DD7C
/* 8140DD74 | 38 60 00 00 */	li r3, 0x0
/* 8140DD78 | 48 00 00 9C */	b .L_8140DE14
.L_8140DD7C:
/* 8140DD7C | 80 E4 00 08 */	lwz r7, 0x8(r4)
/* 8140DD80 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8140DD84 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 8140DD88 | 38 07 00 1F */	addi r0, r7, 0x1f
/* 8140DD8C | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8140DD90 | 7C 03 00 40 */	cmplw r3, r0
/* 8140DD94 | 41 82 00 0C */	beq .L_8140DDA0
/* 8140DD98 | 38 60 00 00 */	li r3, 0x0
/* 8140DD9C | 48 00 00 78 */	b .L_8140DE14
.L_8140DDA0:
/* 8140DDA0 | 80 08 00 18 */	lwz r0, 0x18(r8)
/* 8140DDA4 | 38 A8 00 08 */	addi r5, r8, 0x8
/* 8140DDA8 | 39 01 00 10 */	addi r8, r1, 0x10
/* 8140DDAC | 39 21 00 08 */	addi r9, r1, 0x8
/* 8140DDB0 | 7D 45 02 14 */	add r10, r5, r0
/* 8140DDB4 | 38 60 00 00 */	li r3, 0x0
/* 8140DDB8 | 7C C9 03 A6 */	mtctr r6
/* 8140DDBC | 40 85 00 54 */	ble cr1, .L_8140DE10
.L_8140DDC0:
/* 8140DDC0 | 7C 0A 18 2E */	lwzx r0, r10, r3
/* 8140DDC4 | 7C 07 00 40 */	cmplw r7, r0
/* 8140DDC8 | 41 81 00 0C */	bgt .L_8140DDD4
/* 8140DDCC | 38 60 00 00 */	li r3, 0x0
/* 8140DDD0 | 48 00 00 44 */	b .L_8140DE14
.L_8140DDD4:
/* 8140DDD4 | 7C 85 02 14 */	add r4, r5, r0
/* 8140DDD8 | 7C 05 00 2E */	lwzx r0, r5, r0
/* 8140DDDC | 7C 88 19 2E */	stwx r4, r8, r3
/* 8140DDE0 | 7C 07 00 40 */	cmplw r7, r0
/* 8140DDE4 | 7C 89 19 2E */	stwx r4, r9, r3
/* 8140DDE8 | 41 81 00 0C */	bgt .L_8140DDF4
/* 8140DDEC | 38 60 00 00 */	li r3, 0x0
/* 8140DDF0 | 48 00 00 24 */	b .L_8140DE14
.L_8140DDF4:
/* 8140DDF4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8140DDF8 | 7C 07 00 40 */	cmplw r7, r0
/* 8140DDFC | 41 81 00 0C */	bgt .L_8140DE08
/* 8140DE00 | 38 60 00 00 */	li r3, 0x0
/* 8140DE04 | 48 00 00 10 */	b .L_8140DE14
.L_8140DE08:
/* 8140DE08 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140DE0C | 42 00 FF B4 */	bdnz .L_8140DDC0
.L_8140DE10:
/* 8140DE10 | 38 60 00 01 */	li r3, 0x1
.L_8140DE14:
/* 8140DE14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140DE18 | 4E 80 00 20 */	blr
.endfn checkFile__19AxAdpcmSimplePlayerFPvUl

# .text:0x3F0 | 0x8140DE1C | size: 0x6C
# AxAdpcmSimplePlayer::init()
.fn init__19AxAdpcmSimplePlayerFv, global
/* 8140DE1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140DE20 | 7C 08 02 A6 */	mflr r0
/* 8140DE24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140DE28 | 88 0D AC A4 */	lbz r0, sSysInit__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DE2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DE30 | 40 82 00 48 */	bne .L_8140DE78
/* 8140DE34 | 3C 60 81 41 */	lis r3, AudioFrameCallback__Fv@ha
/* 8140DE38 | 38 63 DA 58 */	addi r3, r3, AudioFrameCallback__Fv@l
/* 8140DE3C | 48 14 60 11 */	bl fn_81553E4C
/* 8140DE40 | 3C 80 81 0C */	lis r4, sZeroMem@ha
/* 8140DE44 | 38 A0 00 01 */	li r5, 0x1
/* 8140DE48 | 90 6D AC A8 */	stw r3, sCallback__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DE4C | 38 00 01 00 */	li r0, 0x100
/* 8140DE50 | 38 84 24 80 */	addi r4, r4, sZeroMem@l
/* 8140DE54 | 38 60 00 00 */	li r3, 0x0
/* 8140DE58 | 98 AD AC A4 */	stb r5, sSysInit__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DE5C | 7C 09 03 A6 */	mtctr r0
.L_8140DE60:
/* 8140DE60 | 98 64 00 00 */	stb r3, 0x0(r4)
/* 8140DE64 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8140DE68 | 42 00 FF F8 */	bdnz .L_8140DE60
/* 8140DE6C | 3C 60 81 0C */	lis r3, sZeroMem@ha
/* 8140DE70 | 38 63 24 80 */	addi r3, r3, sZeroMem@l
/* 8140DE74 | 90 6D AC A0 */	stw r3, zeroBuffer@sda21(r0)
.L_8140DE78:
/* 8140DE78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140DE7C | 7C 08 03 A6 */	mtlr r0
/* 8140DE80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140DE84 | 4E 80 00 20 */	blr
.endfn init__19AxAdpcmSimplePlayerFv

# .text:0x45C | 0x8140DE88 | size: 0x4F0
# AxAdpcmSimplePlayer::start(void*, unsigned long, AxAdpcmHandle*)
.fn start__19AxAdpcmSimplePlayerFPvUlP13AxAdpcmHandle, global
/* 8140DE88 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8140DE8C | 7C 08 02 A6 */	mflr r0
/* 8140DE90 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8140DE94 | DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8140DE98 | F3 E1 01 08 */	psq_st f31, 0x108(r1), 0, qr0
/* 8140DE9C | DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8140DEA0 | F3 C1 00 F8 */	psq_st f30, 0xf8(r1), 0, qr0
/* 8140DEA4 | DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8140DEA8 | F3 A1 00 E8 */	psq_st f29, 0xe8(r1), 0, qr0
/* 8140DEAC | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 8140DEB0 | 48 1E B5 DD */	bl _savegpr_14
/* 8140DEB4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8140DEB8 | 3B 20 00 00 */	li r25, 0x0
/* 8140DEBC | 7C 7E 1B 78 */	mr r30, r3
/* 8140DEC0 | 7C DF 33 78 */	mr r31, r6
/* 8140DEC4 | 9B 2D AC A5 */	stb r25, sSysPauseFlag__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140DEC8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8140DECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DED0 | 40 82 00 0C */	bne .L_8140DEDC
/* 8140DED4 | 38 60 FF FF */	li r3, -0x1
/* 8140DED8 | 48 00 04 70 */	b .L_8140E348
.L_8140DEDC:
/* 8140DEDC | A0 04 00 04 */	lhz r0, 0x4(r4)
/* 8140DEE0 | 28 00 FE FF */	cmplwi r0, 0xfeff
/* 8140DEE4 | 41 82 00 0C */	beq .L_8140DEF0
/* 8140DEE8 | 39 E0 00 00 */	li r15, 0x0
/* 8140DEEC | 48 00 03 94 */	b .L_8140E280
.L_8140DEF0:
/* 8140DEF0 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8140DEF4 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 8140DEF8 | 7E C4 1A 14 */	add r22, r4, r3
/* 8140DEFC | 7C 64 18 2E */	lwzx r3, r4, r3
/* 8140DF00 | 7C 84 02 14 */	add r4, r4, r0
/* 8140DF04 | 3C 03 B6 B2 */	subis r0, r3, 0x494e
/* 8140DF08 | 28 00 46 4F */	cmplwi r0, 0x464f
/* 8140DF0C | 41 82 00 0C */	beq .L_8140DF18
/* 8140DF10 | 39 E0 00 00 */	li r15, 0x0
/* 8140DF14 | 48 00 03 6C */	b .L_8140E280
.L_8140DF18:
/* 8140DF18 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8140DF1C | 3C 03 BB BF */	subis r0, r3, 0x4441
/* 8140DF20 | 28 00 54 41 */	cmplwi r0, 0x5441
/* 8140DF24 | 41 82 00 0C */	beq .L_8140DF30
/* 8140DF28 | 39 E0 00 00 */	li r15, 0x0
/* 8140DF2C | 48 00 03 54 */	b .L_8140E280
.L_8140DF30:
/* 8140DF30 | 88 16 00 0A */	lbz r0, 0xa(r22)
/* 8140DF34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DF38 | 41 82 00 0C */	beq .L_8140DF44
/* 8140DF3C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8140DF40 | 40 81 00 0C */	ble .L_8140DF4C
.L_8140DF44:
/* 8140DF44 | 39 E0 00 00 */	li r15, 0x0
/* 8140DF48 | 48 00 03 38 */	b .L_8140E280
.L_8140DF4C:
/* 8140DF4C | 80 16 00 18 */	lwz r0, 0x18(r22)
/* 8140DF50 | 3C 60 81 0C */	lis r3, Voices@ha
/* 8140DF54 | 3A 96 00 08 */	addi r20, r22, 0x8
/* 8140DF58 | CB A2 88 B8 */	lfd f29, lbl_81694CB8@sda21(r0)
/* 8140DF5C | C3 C2 88 B4 */	lfs f30, lbl_81694CB4@sda21(r0)
/* 8140DF60 | 7F 3D CB 78 */	mr r29, r25
/* 8140DF64 | C3 E2 88 B0 */	lfs f31, lbl_81694CB0@sda21(r0)
/* 8140DF68 | 7E F4 02 14 */	add r23, r20, r0
/* 8140DF6C | 3A A4 00 08 */	addi r21, r4, 0x8
/* 8140DF70 | 39 C1 00 08 */	addi r14, r1, 0x8
/* 8140DF74 | 3A 61 00 10 */	addi r19, r1, 0x10
/* 8140DF78 | 3A 01 00 18 */	addi r16, r1, 0x18
/* 8140DF7C | 3A 41 00 20 */	addi r18, r1, 0x20
/* 8140DF80 | 3B 41 00 28 */	addi r26, r1, 0x28
/* 8140DF84 | 3A 21 00 38 */	addi r17, r1, 0x38
/* 8140DF88 | 3B 63 0C 80 */	addi r27, r3, Voices@l
/* 8140DF8C | 3B 00 00 00 */	li r24, 0x0
/* 8140DF90 | 3B 80 5A 82 */	li r28, 0x5a82
/* 8140DF94 | 48 00 02 E0 */	b .L_8140E274
.L_8140DF98:
/* 8140DF98 | 7C 17 E8 2E */	lwzx r0, r23, r29
/* 8140DF9C | 3C 60 81 41 */	lis r3, VoiceCallback__FPv@ha
/* 8140DFA0 | 38 83 DA 2C */	addi r4, r3, VoiceCallback__FPv@l
/* 8140DFA4 | 38 A0 00 00 */	li r5, 0x0
/* 8140DFA8 | 7C F4 02 14 */	add r7, r20, r0
/* 8140DFAC | 7C D4 00 2E */	lwzx r6, r20, r0
/* 8140DFB0 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 8140DFB4 | 38 60 00 1F */	li r3, 0x1f
/* 8140DFB8 | 7C D5 32 14 */	add r6, r21, r6
/* 8140DFBC | 7C EE E9 2E */	stwx r7, r14, r29
/* 8140DFC0 | 7C 14 02 14 */	add r0, r20, r0
/* 8140DFC4 | 7C F3 E9 2E */	stwx r7, r19, r29
/* 8140DFC8 | 7C D0 E9 2E */	stwx r6, r16, r29
/* 8140DFCC | 7C 12 E9 2E */	stwx r0, r18, r29
/* 8140DFD0 | 7C 1A E9 2E */	stwx r0, r26, r29
/* 8140DFD4 | 48 14 43 8D */	bl fn_81552360
/* 8140DFD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140DFDC | 7C 71 E9 2E */	stwx r3, r17, r29
/* 8140DFE0 | 40 82 00 0C */	bne .L_8140DFEC
/* 8140DFE4 | 39 E0 00 00 */	li r15, 0x0
/* 8140DFE8 | 48 00 02 98 */	b .L_8140E280
.L_8140DFEC:
/* 8140DFEC | 88 16 00 09 */	lbz r0, 0x9(r22)
/* 8140DFF0 | B0 01 00 40 */	sth r0, 0x40(r1)
/* 8140DFF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140DFF8 | 88 16 00 08 */	lbz r0, 0x8(r22)
/* 8140DFFC | B0 01 00 42 */	sth r0, 0x42(r1)
/* 8140E000 | 41 82 00 38 */	beq .L_8140E038
/* 8140E004 | 7C 9A E8 2E */	lwzx r4, r26, r29
/* 8140E008 | 38 A0 00 00 */	li r5, 0x0
/* 8140E00C | 7C 70 E8 2E */	lwzx r3, r16, r29
/* 8140E010 | A0 04 00 28 */	lhz r0, 0x28(r4)
/* 8140E014 | B0 01 00 30 */	sth r0, 0x30(r1)
/* 8140E018 | A0 04 00 2A */	lhz r0, 0x2a(r4)
/* 8140E01C | B0 01 00 32 */	sth r0, 0x32(r1)
/* 8140E020 | A0 04 00 2A */	lhz r0, 0x2a(r4)
/* 8140E024 | B0 01 00 34 */	sth r0, 0x34(r1)
/* 8140E028 | 80 96 00 10 */	lwz r4, 0x10(r22)
/* 8140E02C | 4B FF F9 0D */	bl AudioWavePlayer_8140D938
/* 8140E030 | 7C 64 1B 78 */	mr r4, r3
/* 8140E034 | 48 00 00 18 */	b .L_8140E04C
.L_8140E038:
/* 8140E038 | 80 6D AC A0 */	lwz r3, zeroBuffer@sda21(r0)
/* 8140E03C | 38 80 00 00 */	li r4, 0x0
/* 8140E040 | 38 A0 00 00 */	li r5, 0x0
/* 8140E044 | 4B FF F8 F5 */	bl AudioWavePlayer_8140D938
/* 8140E048 | 7C 64 1B 78 */	mr r4, r3
.L_8140E04C:
/* 8140E04C | 54 80 84 3E */	srwi r0, r4, 16
/* 8140E050 | 7D F0 E8 2E */	lwzx r15, r16, r29
/* 8140E054 | B0 01 00 44 */	sth r0, 0x44(r1)
/* 8140E058 | 38 A0 00 00 */	li r5, 0x0
/* 8140E05C | 7D E3 7B 78 */	mr r3, r15
/* 8140E060 | B0 81 00 46 */	sth r4, 0x46(r1)
/* 8140E064 | 80 96 00 14 */	lwz r4, 0x14(r22)
/* 8140E068 | 4B FF F8 D1 */	bl AudioWavePlayer_8140D938
/* 8140E06C | 54 60 84 3E */	srwi r0, r3, 16
/* 8140E070 | B0 61 00 4A */	sth r3, 0x4a(r1)
/* 8140E074 | 7D E3 7B 78 */	mr r3, r15
/* 8140E078 | 38 80 00 00 */	li r4, 0x0
/* 8140E07C | B0 01 00 48 */	sth r0, 0x48(r1)
/* 8140E080 | 38 A0 00 00 */	li r5, 0x0
/* 8140E084 | 4B FF F8 B5 */	bl AudioWavePlayer_8140D938
/* 8140E088 | 54 60 84 3E */	srwi r0, r3, 16
/* 8140E08C | B0 61 00 4E */	sth r3, 0x4e(r1)
/* 8140E090 | 7C 7A E8 2E */	lwzx r3, r26, r29
/* 8140E094 | B0 01 00 4C */	sth r0, 0x4c(r1)
/* 8140E098 | 3C 00 43 30 */	lis r0, 0x4330
/* 8140E09C | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 8140E0A0 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 8140E0A4 | B0 81 00 5E */	sth r4, 0x5e(r1)
/* 8140E0A8 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8140E0AC | B0 01 00 60 */	sth r0, 0x60(r1)
/* 8140E0B0 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8140E0B4 | B0 01 00 62 */	sth r0, 0x62(r1)
/* 8140E0B8 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8140E0BC | B0 01 00 64 */	sth r0, 0x64(r1)
/* 8140E0C0 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 8140E0C4 | B0 01 00 66 */	sth r0, 0x66(r1)
/* 8140E0C8 | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8140E0CC | B0 01 00 68 */	sth r0, 0x68(r1)
/* 8140E0D0 | A0 03 00 0C */	lhz r0, 0xc(r3)
/* 8140E0D4 | B0 01 00 6A */	sth r0, 0x6a(r1)
/* 8140E0D8 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8140E0DC | B0 01 00 6C */	sth r0, 0x6c(r1)
/* 8140E0E0 | A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8140E0E4 | B0 01 00 6E */	sth r0, 0x6e(r1)
/* 8140E0E8 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 8140E0EC | B0 01 00 70 */	sth r0, 0x70(r1)
/* 8140E0F0 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8140E0F4 | B0 01 00 72 */	sth r0, 0x72(r1)
/* 8140E0F8 | A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8140E0FC | B0 01 00 74 */	sth r0, 0x74(r1)
/* 8140E100 | A0 03 00 18 */	lhz r0, 0x18(r3)
/* 8140E104 | B0 01 00 76 */	sth r0, 0x76(r1)
/* 8140E108 | A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 8140E10C | B0 01 00 78 */	sth r0, 0x78(r1)
/* 8140E110 | A0 03 00 1C */	lhz r0, 0x1c(r3)
/* 8140E114 | B0 01 00 7A */	sth r0, 0x7a(r1)
/* 8140E118 | A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 8140E11C | B0 01 00 7C */	sth r0, 0x7c(r1)
/* 8140E120 | A0 03 00 20 */	lhz r0, 0x20(r3)
/* 8140E124 | B0 01 00 7E */	sth r0, 0x7e(r1)
/* 8140E128 | A0 03 00 22 */	lhz r0, 0x22(r3)
/* 8140E12C | B0 01 00 80 */	sth r0, 0x80(r1)
/* 8140E130 | A0 03 00 24 */	lhz r0, 0x24(r3)
/* 8140E134 | B0 01 00 82 */	sth r0, 0x82(r1)
/* 8140E138 | A0 03 00 26 */	lhz r0, 0x26(r3)
/* 8140E13C | B0 01 00 84 */	sth r0, 0x84(r1)
/* 8140E140 | A0 16 00 0C */	lhz r0, 0xc(r22)
/* 8140E144 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 8140E148 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8140E14C | EC 00 E8 28 */	fsubs f0, f0, f29
/* 8140E150 | EC 00 F0 24 */	fdivs f0, f0, f30
/* 8140E154 | EC 3F 00 32 */	fmuls f1, f31, f0
/* 8140E158 | 48 1E B2 41 */	bl __cvt_fp2unsigned
/* 8140E15C | 54 60 84 3E */	srwi r0, r3, 16
/* 8140E160 | 7D F1 E8 2E */	lwzx r15, r17, r29
/* 8140E164 | B0 61 00 52 */	sth r3, 0x52(r1)
/* 8140E168 | 38 80 00 00 */	li r4, 0x0
/* 8140E16C | 7D E3 7B 78 */	mr r3, r15
/* 8140E170 | B0 01 00 50 */	sth r0, 0x50(r1)
/* 8140E174 | B3 21 00 54 */	sth r25, 0x54(r1)
/* 8140E178 | B3 21 00 56 */	sth r25, 0x56(r1)
/* 8140E17C | B3 21 00 58 */	sth r25, 0x58(r1)
/* 8140E180 | B3 21 00 5A */	sth r25, 0x5a(r1)
/* 8140E184 | B3 21 00 5C */	sth r25, 0x5c(r1)
/* 8140E188 | 48 14 6F 09 */	bl fn_81555090
/* 8140E18C | 7D E3 7B 78 */	mr r3, r15
/* 8140E190 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8140E194 | 48 14 71 E1 */	bl fn_81555374
/* 8140E198 | 7D E3 7B 78 */	mr r3, r15
/* 8140E19C | 38 81 00 5E */	addi r4, r1, 0x5e
/* 8140E1A0 | 48 14 72 CD */	bl fn_8155546C
/* 8140E1A4 | 7D E3 7B 78 */	mr r3, r15
/* 8140E1A8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8140E1AC | 48 14 74 55 */	bl fn_81555600
/* 8140E1B0 | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 8140E1B4 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E1B8 | 7C 7B 02 14 */	add r3, r27, r0
/* 8140E1BC | 38 63 00 10 */	addi r3, r3, 0x10
/* 8140E1C0 | 4B FF FA B9 */	bl initAXPBMIX__9VoiceInfoFP8_AXPBMIX
/* 8140E1C4 | 88 16 00 0A */	lbz r0, 0xa(r22)
/* 8140E1C8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8140E1CC | 40 82 00 60 */	bne .L_8140E22C
/* 8140E1D0 | 48 15 C0 79 */	bl fn_8156A248
/* 8140E1D4 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 8140E1D8 | 40 82 00 28 */	bne .L_8140E200
/* 8140E1DC | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 8140E1E0 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E1E4 | 7C 7B 02 14 */	add r3, r27, r0
/* 8140E1E8 | B3 83 00 10 */	sth r28, 0x10(r3)
/* 8140E1EC | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 8140E1F0 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E1F4 | 7C 7B 02 14 */	add r3, r27, r0
/* 8140E1F8 | B3 83 00 14 */	sth r28, 0x14(r3)
/* 8140E1FC | 48 00 00 30 */	b .L_8140E22C
.L_8140E200:
/* 8140E200 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8140E204 | 40 82 00 18 */	bne .L_8140E21C
/* 8140E208 | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 8140E20C | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E210 | 7C 7B 02 14 */	add r3, r27, r0
/* 8140E214 | B3 23 00 14 */	sth r25, 0x14(r3)
/* 8140E218 | 48 00 00 14 */	b .L_8140E22C
.L_8140E21C:
/* 8140E21C | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 8140E220 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E224 | 7C 7B 02 14 */	add r3, r27, r0
/* 8140E228 | B3 23 00 10 */	sth r25, 0x10(r3)
.L_8140E22C:
/* 8140E22C | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 8140E230 | 7D F1 E8 2E */	lwzx r15, r17, r29
/* 8140E234 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E238 | 7C 9B 02 14 */	add r4, r27, r0
/* 8140E23C | 7D E3 7B 78 */	mr r3, r15
/* 8140E240 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8140E244 | 48 14 6E 99 */	bl fn_815550DC
/* 8140E248 | 7D E3 7B 78 */	mr r3, r15
/* 8140E24C | 38 8D 92 50 */	li r4, lbl_81697290@sda21
/* 8140E250 | 48 14 70 CD */	bl fn_8155531C
/* 8140E254 | 7D E3 7B 78 */	mr r3, r15
/* 8140E258 | 38 80 00 01 */	li r4, 0x1
/* 8140E25C | 48 14 6D 05 */	bl fn_81554F60
/* 8140E260 | 7D E3 7B 78 */	mr r3, r15
/* 8140E264 | 38 81 00 50 */	addi r4, r1, 0x50
/* 8140E268 | 48 14 72 9D */	bl fn_81555504
/* 8140E26C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8140E270 | 3B BD 00 04 */	addi r29, r29, 0x4
.L_8140E274:
/* 8140E274 | 89 F6 00 0A */	lbz r15, 0xa(r22)
/* 8140E278 | 7C 18 78 00 */	cmpw r24, r15
/* 8140E27C | 41 80 FD 1C */	blt .L_8140DF98
.L_8140E280:
/* 8140E280 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 8140E284 | 41 82 00 C0 */	beq .L_8140E344
/* 8140E288 | 3C C0 81 0C */	lis r6, Voices@ha
/* 8140E28C | 38 E1 00 38 */	addi r7, r1, 0x38
/* 8140E290 | 38 C6 0C 80 */	addi r6, r6, Voices@l
/* 8140E294 | 38 60 00 00 */	li r3, 0x0
/* 8140E298 | 38 A0 00 01 */	li r5, 0x1
/* 8140E29C | 7D E9 03 A6 */	mtctr r15
/* 8140E2A0 | 28 0F 00 00 */	cmplwi r15, 0x0
/* 8140E2A4 | 40 81 00 4C */	ble .L_8140E2F0
.L_8140E2A8:
/* 8140E2A8 | 7D 07 18 2E */	lwzx r8, r7, r3
/* 8140E2AC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8140E2B0 | 40 82 00 0C */	bne .L_8140E2BC
/* 8140E2B4 | 38 60 FF FF */	li r3, -0x1
/* 8140E2B8 | 48 00 00 90 */	b .L_8140E348
.L_8140E2BC:
/* 8140E2BC | 80 08 00 18 */	lwz r0, 0x18(r8)
/* 8140E2C0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140E2C4 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E2C8 | 7D 06 01 2E */	stwx r8, r6, r0
/* 8140E2CC | 80 08 00 18 */	lwz r0, 0x18(r8)
/* 8140E2D0 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E2D4 | 7C 86 02 14 */	add r4, r6, r0
/* 8140E2D8 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 8140E2DC | 80 08 00 18 */	lwz r0, 0x18(r8)
/* 8140E2E0 | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E2E4 | 7C 86 02 14 */	add r4, r6, r0
/* 8140E2E8 | 90 A4 00 0C */	stw r5, 0xc(r4)
/* 8140E2EC | 42 00 FF BC */	bdnz .L_8140E2A8
.L_8140E2F0:
/* 8140E2F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140E2F4 | 41 82 00 3C */	beq .L_8140E330
/* 8140E2F8 | 3C 80 81 0C */	lis r4, Voices@ha
/* 8140E2FC | 38 C1 00 38 */	addi r6, r1, 0x38
/* 8140E300 | 38 84 0C 80 */	addi r4, r4, Voices@l
/* 8140E304 | 38 60 00 00 */	li r3, 0x0
/* 8140E308 | 7D E9 03 A6 */	mtctr r15
/* 8140E30C | 28 0F 00 00 */	cmplwi r15, 0x0
/* 8140E310 | 40 81 00 20 */	ble .L_8140E330
.L_8140E314:
/* 8140E314 | 7C A6 18 2E */	lwzx r5, r6, r3
/* 8140E318 | 80 05 00 18 */	lwz r0, 0x18(r5)
/* 8140E31C | 54 00 30 32 */	slwi r0, r0, 6
/* 8140E320 | 7C 04 02 14 */	add r0, r4, r0
/* 8140E324 | 7C 1F 19 2E */	stwx r0, r31, r3
/* 8140E328 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140E32C | 42 00 FF E8 */	bdnz .L_8140E314
.L_8140E330:
/* 8140E330 | 38 00 00 01 */	li r0, 0x1
/* 8140E334 | 7F E3 FB 78 */	mr r3, r31
/* 8140E338 | 98 0D AC A6 */	stb r0, sPlayingFlag__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140E33C | C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 8140E340 | 48 00 00 39 */	bl setVolume__13AxAdpcmHandleFf
.L_8140E344:
/* 8140E344 | 7D E3 7B 78 */	mr r3, r15
.L_8140E348:
/* 8140E348 | E3 E1 01 08 */	psq_l f31, 0x108(r1), 0, qr0
/* 8140E34C | CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8140E350 | E3 C1 00 F8 */	psq_l f30, 0xf8(r1), 0, qr0
/* 8140E354 | CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8140E358 | E3 A1 00 E8 */	psq_l f29, 0xe8(r1), 0, qr0
/* 8140E35C | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 8140E360 | CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8140E364 | 48 1E B1 75 */	bl _restgpr_14
/* 8140E368 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8140E36C | 7C 08 03 A6 */	mtlr r0
/* 8140E370 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8140E374 | 4E 80 00 20 */	blr
.endfn start__19AxAdpcmSimplePlayerFPvUlP13AxAdpcmHandle

# .text:0x94C | 0x8140E378 | size: 0x110
# AxAdpcmHandle::setVolume(float)
.fn setVolume__13AxAdpcmHandleFf, global
/* 8140E378 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8140E37C | 7C 08 02 A6 */	mflr r0
/* 8140E380 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8140E384 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8140E388 | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 8140E38C | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8140E390 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 8140E394 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8140E398 | 48 1E B1 29 */	bl _savegpr_27
/* 8140E39C | FF C0 08 90 */	fmr f30, f1
/* 8140E3A0 | 7C 7B 1B 78 */	mr r27, r3
/* 8140E3A4 | CB E2 88 B8 */	lfd f31, lbl_81694CB8@sda21(r0)
/* 8140E3A8 | 38 60 00 00 */	li r3, 0x0
/* 8140E3AC | 3B 80 00 00 */	li r28, 0x0
/* 8140E3B0 | 3B E0 00 00 */	li r31, 0x0
/* 8140E3B4 | 3F A0 43 30 */	lis r29, 0x4330
/* 8140E3B8 | 3B C0 00 01 */	li r30, 0x1
.L_8140E3BC:
/* 8140E3BC | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 8140E3C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140E3C4 | 41 82 00 8C */	beq .L_8140E450
/* 8140E3C8 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8140E3CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140E3D0 | 41 82 00 80 */	beq .L_8140E450
/* 8140E3D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140E3D8 | 4B FF F8 A1 */	bl initAXPBMIX__9VoiceInfoFP8_AXPBMIX
/* 8140E3DC | 7C 7B F8 2E */	lwzx r3, r27, r31
/* 8140E3E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140E3E4 | 93 A1 00 38 */	stw r29, 0x38(r1)
/* 8140E3E8 | A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8140E3EC | 93 A1 00 48 */	stw r29, 0x48(r1)
/* 8140E3F0 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 8140E3F4 | C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8140E3F8 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 8140E3FC | EC 1E 00 32 */	fmuls f0, f30, f0
/* 8140E400 | FC 00 00 1E */	fctiwz f0, f0
/* 8140E404 | D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8140E408 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8140E40C | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8140E410 | 7C 7B F8 2E */	lwzx r3, r27, r31
/* 8140E414 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8140E418 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 8140E41C | C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8140E420 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 8140E424 | EC 1E 00 32 */	fmuls f0, f30, f0
/* 8140E428 | FC 00 00 1E */	fctiwz f0, f0
/* 8140E42C | D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8140E430 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140E434 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8140E438 | 7C 7B F8 2E */	lwzx r3, r27, r31
/* 8140E43C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140E440 | 48 14 6C 9D */	bl fn_815550DC
/* 8140E444 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 8140E448 | 38 60 00 01 */	li r3, 0x1
/* 8140E44C | 93 C4 00 0C */	stw r30, 0xc(r4)
.L_8140E450:
/* 8140E450 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8140E454 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8140E458 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 8140E45C | 41 80 FF 60 */	blt .L_8140E3BC
/* 8140E460 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 8140E464 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8140E468 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 8140E46C | 39 61 00 70 */	addi r11, r1, 0x70
/* 8140E470 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8140E474 | 48 1E B0 99 */	bl _restgpr_27
/* 8140E478 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8140E47C | 7C 08 03 A6 */	mtlr r0
/* 8140E480 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8140E484 | 4E 80 00 20 */	blr
.endfn setVolume__13AxAdpcmHandleFf

# .text:0xA5C | 0x8140E488 | size: 0x9C
# AxAdpcmSimplePlayer::stop(AxAdpcmHandle*)
.fn stop__19AxAdpcmSimplePlayerFP13AxAdpcmHandle, global
/* 8140E488 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140E48C | 7C 08 02 A6 */	mflr r0
/* 8140E490 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140E494 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140E498 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140E49C | 7C 9F 23 78 */	mr r31, r4
/* 8140E4A0 | 4B FF F5 01 */	bl __ct__Q34nw4r2ut17AutoInterruptLockFv
/* 8140E4A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140E4A8 | 41 82 00 5C */	beq .L_8140E504
/* 8140E4AC | 38 00 00 02 */	li r0, 0x2
/* 8140E4B0 | 38 E0 00 00 */	li r7, 0x0
/* 8140E4B4 | 38 60 00 00 */	li r3, 0x0
/* 8140E4B8 | 38 C0 00 07 */	li r6, 0x7
/* 8140E4BC | 38 A0 00 01 */	li r5, 0x1
/* 8140E4C0 | 7C 09 03 A6 */	mtctr r0
.L_8140E4C4:
/* 8140E4C4 | 7C 9F 18 2E */	lwzx r4, r31, r3
/* 8140E4C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140E4CC | 41 82 00 30 */	beq .L_8140E4FC
/* 8140E4D0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8140E4D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140E4D8 | 41 82 00 24 */	beq .L_8140E4FC
/* 8140E4DC | 90 C4 00 04 */	stw r6, 0x4(r4)
/* 8140E4E0 | 7C 9F 18 2E */	lwzx r4, r31, r3
/* 8140E4E4 | 90 A4 00 0C */	stw r5, 0xc(r4)
/* 8140E4E8 | 7C 9F 18 2E */	lwzx r4, r31, r3
/* 8140E4EC | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8140E4F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140E4F4 | 41 82 00 08 */	beq .L_8140E4FC
/* 8140E4F8 | 90 E4 00 08 */	stw r7, 0x8(r4)
.L_8140E4FC:
/* 8140E4FC | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140E500 | 42 00 FF C4 */	bdnz .L_8140E4C4
.L_8140E504:
/* 8140E504 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140E508 | 38 80 FF FF */	li r4, -0x1
/* 8140E50C | 4B FF F4 C9 */	bl __dt__Q34nw4r2ut17AutoInterruptLockFv
/* 8140E510 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140E514 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140E518 | 7C 08 03 A6 */	mtlr r0
/* 8140E51C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140E520 | 4E 80 00 20 */	blr
.endfn stop__19AxAdpcmSimplePlayerFP13AxAdpcmHandle

# .text:0xAF8 | 0x8140E524 | size: 0x44
# AxAdpcmSimplePlayer::pause(bool)
.fn pause__19AxAdpcmSimplePlayerFb, global
/* 8140E524 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140E528 | 7C 08 02 A6 */	mflr r0
/* 8140E52C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140E530 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140E534 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140E538 | 7C 9F 23 78 */	mr r31, r4
/* 8140E53C | 4B FF F4 65 */	bl __ct__Q34nw4r2ut17AutoInterruptLockFv
/* 8140E540 | 9B ED AC A5 */	stb r31, sSysPauseFlag__19AxAdpcmSimplePlayer@sda21(r0)
/* 8140E544 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140E548 | 38 80 FF FF */	li r4, -0x1
/* 8140E54C | 4B FF F4 89 */	bl __dt__Q34nw4r2ut17AutoInterruptLockFv
/* 8140E550 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140E554 | 38 60 00 01 */	li r3, 0x1
/* 8140E558 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140E55C | 7C 08 03 A6 */	mtlr r0
/* 8140E560 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140E564 | 4E 80 00 20 */	blr
.endfn pause__19AxAdpcmSimplePlayerFb

# .text:0xB3C | 0x8140E568 | size: 0x48
# AxAdpcmSimplePlayer::setVolume(AxAdpcmHandle*, float)
.fn setVolume__19AxAdpcmSimplePlayerFP13AxAdpcmHandlef, global
/* 8140E568 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140E56C | 7C 08 02 A6 */	mflr r0
/* 8140E570 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140E574 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140E578 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8140E57C | FF E0 08 90 */	fmr f31, f1
/* 8140E580 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8140E584 | 7C 7F 1B 78 */	mr r31, r3
/* 8140E588 | 41 82 00 10 */	beq .L_8140E598
/* 8140E58C | 7C 83 23 78 */	mr r3, r4
/* 8140E590 | 4B FF FD E9 */	bl setVolume__13AxAdpcmHandleFf
/* 8140E594 | D3 FF 00 04 */	stfs f31, 0x4(r31)
.L_8140E598:
/* 8140E598 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140E59C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8140E5A0 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8140E5A4 | 7C 08 03 A6 */	mtlr r0
/* 8140E5A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140E5AC | 4E 80 00 20 */	blr
.endfn setVolume__19AxAdpcmSimplePlayerFP13AxAdpcmHandlef

# .text:0xB84 | 0x8140E5B0 | size: 0x38
# AxAdpcmSimplePlayer::calc()
.fn calc__19AxAdpcmSimplePlayerFv, global
/* 8140E5B0 | 3C A0 81 0C */	lis r5, Voices@ha
/* 8140E5B4 | 38 00 00 60 */	li r0, 0x60
/* 8140E5B8 | 38 A5 0C 80 */	addi r5, r5, Voices@l
/* 8140E5BC | 38 60 00 00 */	li r3, 0x0
/* 8140E5C0 | 38 80 00 02 */	li r4, 0x2
/* 8140E5C4 | 7C 09 03 A6 */	mtctr r0
.L_8140E5C8:
/* 8140E5C8 | 7C C5 1A 14 */	add r6, r5, r3
/* 8140E5CC | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 8140E5D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140E5D4 | 40 82 00 08 */	bne .L_8140E5DC
/* 8140E5D8 | 90 86 00 0C */	stw r4, 0xc(r6)
.L_8140E5DC:
/* 8140E5DC | 38 63 00 40 */	addi r3, r3, 0x40
/* 8140E5E0 | 42 00 FF E8 */	bdnz .L_8140E5C8
/* 8140E5E4 | 4E 80 00 20 */	blr
.endfn calc__19AxAdpcmSimplePlayerFv

# .text:0xBBC | 0x8140E5E8 | size: 0x20
.fn "__sinit_\\AxAdpcmPlayer_cpp", global
/* 8140E5E8 | 3C 60 81 0C */	lis r3, Voices@ha
/* 8140E5EC | 3C 80 81 41 */	lis r4, __ct__9VoiceInfoFv@ha
/* 8140E5F0 | 38 63 0C 80 */	addi r3, r3, Voices@l
/* 8140E5F4 | 38 A0 00 00 */	li r5, 0x0
/* 8140E5F8 | 38 84 E6 08 */	addi r4, r4, __ct__9VoiceInfoFv@l
/* 8140E5FC | 38 C0 00 40 */	li r6, 0x40
/* 8140E600 | 38 E0 00 60 */	li r7, 0x60
/* 8140E604 | 48 1E AB FC */	b __construct_array
.endfn "__sinit_\\AxAdpcmPlayer_cpp"

# .text:0xBDC | 0x8140E608 | size: 0x34
# VoiceInfo::VoiceInfo()
.fn __ct__9VoiceInfoFv, global
/* 8140E608 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140E60C | 7C 08 02 A6 */	mflr r0
/* 8140E610 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140E614 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140E618 | 7C 7F 1B 78 */	mr r31, r3
/* 8140E61C | 38 63 00 10 */	addi r3, r3, 0x10
/* 8140E620 | 4B FF F6 59 */	bl initAXPBMIX__9VoiceInfoFP8_AXPBMIX
/* 8140E624 | 7F E3 FB 78 */	mr r3, r31
/* 8140E628 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140E62C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140E630 | 7C 08 03 A6 */	mtlr r0
/* 8140E634 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140E638 | 4E 80 00 20 */	blr
.endfn __ct__9VoiceInfoFv

# 0x8160D1E8..0x8160D1EC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\AxAdpcmPlayer_cpp"

# 0x81658BD0..0x81658BF0 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x81658BD0 | size: 0x20
.obj jumptable_81658BD0, local
	.rel AudioFrameCallback__Fv, .L_8140DC20
	.rel AudioFrameCallback__Fv, .L_8140DB98
	.rel AudioFrameCallback__Fv, .L_8140DBAC
	.rel AudioFrameCallback__Fv, .L_8140DBB4
	.rel AudioFrameCallback__Fv, .L_8140DBE8
	.rel AudioFrameCallback__Fv, .L_8140DBFC
	.rel AudioFrameCallback__Fv, .L_8140DC1C
	.rel AudioFrameCallback__Fv, .L_8140DBE0
.endobj jumptable_81658BD0

# 0x81694CA8..0x81694CC0 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694CA8 | size: 0x8
.obj lbl_81694CA8, global
	.double 4503599627370496
.endobj lbl_81694CA8

# .sdata2:0x8 | 0x81694CB0 | size: 0x4
.obj lbl_81694CB0, global
	.float 65536
.endobj lbl_81694CB0

# .sdata2:0xC | 0x81694CB4 | size: 0x4
.obj lbl_81694CB4, global
	.float 32000
.endobj lbl_81694CB4

# .sdata2:0x10 | 0x81694CB8 | size: 0x8
.obj lbl_81694CB8, global
	.double 4503599627370496
.endobj lbl_81694CB8

# 0x81697290..0x81697298 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697290 | size: 0x4
.obj lbl_81697290, global
	.4byte 0x80000000
.endobj lbl_81697290

# .sdata:0x4 | 0x81697294 | size: 0x4
.obj gap_11_81697294_sdata, global
.hidden gap_11_81697294_sdata
	.4byte 0x00000000
.endobj gap_11_81697294_sdata

# 0x81698CE0..0x81698CF0 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698CE0 | size: 0x4
.obj zeroBuffer, global
	.skip 0x4
.endobj zeroBuffer

# .sbss:0x4 | 0x81698CE4 | size: 0x1
# AxAdpcmSimplePlayer::sSysInit
.obj sSysInit__19AxAdpcmSimplePlayer, global
	.skip 0x1
.endobj sSysInit__19AxAdpcmSimplePlayer

# .sbss:0x5 | 0x81698CE5 | size: 0x1
# AxAdpcmSimplePlayer::sSysPauseFlag
.obj sSysPauseFlag__19AxAdpcmSimplePlayer, global
	.skip 0x1
.endobj sSysPauseFlag__19AxAdpcmSimplePlayer

# .sbss:0x6 | 0x81698CE6 | size: 0x1
# AxAdpcmSimplePlayer::sPlayingFlag
.obj sPlayingFlag__19AxAdpcmSimplePlayer, global
	.skip 0x1
.endobj sPlayingFlag__19AxAdpcmSimplePlayer

# .sbss:0x7 | 0x81698CE7 | size: 0x1
.obj gap_12_81698CE7_sbss, global
.hidden gap_12_81698CE7_sbss
	.skip 0x1
.endobj gap_12_81698CE7_sbss

# .sbss:0x8 | 0x81698CE8 | size: 0x4
# AxAdpcmSimplePlayer::sCallback
.obj sCallback__19AxAdpcmSimplePlayer, global
	.skip 0x4
.endobj sCallback__19AxAdpcmSimplePlayer

# .sbss:0xC | 0x81698CEC | size: 0x4
.obj gap_12_81698CEC_sbss, global
.hidden gap_12_81698CEC_sbss
	.skip 0x4
.endobj gap_12_81698CEC_sbss
