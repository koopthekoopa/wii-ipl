.include "macros.inc"
.file "NWC24FileAPI.c"

# 0x8149DC08..0x8149F330 | size: 0x1728
.text
.balign 4

# .text:0x0 | 0x8149DC08 | size: 0xF4
.fn NWC24FOpen, global
/* 8149DC08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149DC0C | 7C 08 02 A6 */	mflr r0
/* 8149DC10 | 28 05 00 09 */	cmplwi r5, 0x9
/* 8149DC14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149DC18 | 38 00 00 00 */	li r0, 0x0
/* 8149DC1C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149DC20 | 7C BF 2B 78 */	mr r31, r5
/* 8149DC24 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149DC28 | 7C 9E 23 78 */	mr r30, r4
/* 8149DC2C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149DC30 | 7C 7D 1B 78 */	mr r29, r3
/* 8149DC34 | 80 CD AD 90 */	lwz r6, InstanceIdGen@sda21(r0)
/* 8149DC38 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8149DC3C | 64 C4 80 00 */	oris r4, r6, 0x8000
/* 8149DC40 | 90 8D AD 90 */	stw r4, InstanceIdGen@sda21(r0)
/* 8149DC44 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8149DC48 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8149DC4C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8149DC50 | 41 82 00 18 */	beq .L_8149DC68
/* 8149DC54 | 28 05 00 0A */	cmplwi r5, 0xa
/* 8149DC58 | 41 82 00 10 */	beq .L_8149DC68
/* 8149DC5C | 38 05 FE F7 */	subi r0, r5, 0x109
/* 8149DC60 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149DC64 | 41 81 00 24 */	bgt .L_8149DC88
.L_8149DC68:
/* 8149DC68 | 48 00 26 91 */	bl NWC24IsMsgLibOpened
/* 8149DC6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149DC70 | 40 82 00 18 */	bne .L_8149DC88
/* 8149DC74 | 48 00 26 99 */	bl NWC24IsMsgLibOpenedByTool
/* 8149DC78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149DC7C | 40 82 00 0C */	bne .L_8149DC88
/* 8149DC80 | 38 60 FF F7 */	li r3, -0x9
/* 8149DC84 | 48 00 00 5C */	b .L_8149DCE0
.L_8149DC88:
/* 8149DC88 | 28 1F 00 09 */	cmplwi r31, 0x9
/* 8149DC8C | 41 82 00 0C */	beq .L_8149DC98
/* 8149DC90 | 28 1F 01 09 */	cmplwi r31, 0x109
/* 8149DC94 | 40 82 00 20 */	bne .L_8149DCB4
.L_8149DC98:
/* 8149DC98 | 80 0D AD 8C */	lwz r0, WrBufferMutex@sda21(r0)
/* 8149DC9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149DCA0 | 41 82 00 0C */	beq .L_8149DCAC
/* 8149DCA4 | 38 60 FF EA */	li r3, -0x16
/* 8149DCA8 | 48 00 00 38 */	b .L_8149DCE0
.L_8149DCAC:
/* 8149DCAC | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8149DCB0 | 90 0D AD 8C */	stw r0, WrBufferMutex@sda21(r0)
.L_8149DCB4:
/* 8149DCB4 | 57 E0 05 EF */	rlwinm. r0, r31, 0, 23, 23
/* 8149DCB8 | 41 82 00 18 */	beq .L_8149DCD0
/* 8149DCBC | 7F A3 EB 78 */	mr r3, r29
/* 8149DCC0 | 7F C4 F3 78 */	mr r4, r30
/* 8149DCC4 | 7F E5 FB 78 */	mr r5, r31
/* 8149DCC8 | 48 00 01 6D */	bl NWC24iFOpenVF
/* 8149DCCC | 48 00 00 14 */	b .L_8149DCE0
.L_8149DCD0:
/* 8149DCD0 | 7F A3 EB 78 */	mr r3, r29
/* 8149DCD4 | 7F C4 F3 78 */	mr r4, r30
/* 8149DCD8 | 7F E5 FB 78 */	mr r5, r31
/* 8149DCDC | 48 00 00 21 */	bl NWC24iFOpenNand
.L_8149DCE0:
/* 8149DCE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149DCE4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149DCE8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149DCEC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149DCF0 | 7C 08 03 A6 */	mtlr r0
/* 8149DCF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149DCF8 | 4E 80 00 20 */	blr
.endfn NWC24FOpen

# .text:0xF4 | 0x8149DCFC | size: 0x138
.fn NWC24iFOpenNand, local
/* 8149DCFC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149DD00 | 7C 08 02 A6 */	mflr r0
/* 8149DD04 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149DD08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149DD0C | 48 15 B7 A1 */	bl _savegpr_22
/* 8149DD10 | 28 05 00 0A */	cmplwi r5, 0xa
/* 8149DD14 | 7C 7D 1B 78 */	mr r29, r3
/* 8149DD18 | 7C 9E 23 78 */	mr r30, r4
/* 8149DD1C | 7C BF 2B 78 */	mr r31, r5
/* 8149DD20 | 41 81 00 5C */	bgt .L_8149DD7C
/* 8149DD24 | 3C 60 81 67 */	lis r3, jumptable_8166D5F8@ha
/* 8149DD28 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8149DD2C | 38 63 D5 F8 */	addi r3, r3, jumptable_8166D5F8@l
/* 8149DD30 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8149DD34 | 7C 69 03 A6 */	mtctr r3
/* 8149DD38 | 4E 80 04 20 */	bctr
.L_8149DD3C:
/* 8149DD3C | 7F C3 F3 78 */	mr r3, r30
/* 8149DD40 | 38 80 00 3F */	li r4, 0x3f
/* 8149DD44 | 38 A0 00 00 */	li r5, 0x0
/* 8149DD48 | 48 0C 5F C5 */	bl NANDPrivateCreate
/* 8149DD4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149DD50 | 41 82 00 14 */	beq .L_8149DD64
/* 8149DD54 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 8149DD58 | 41 82 00 0C */	beq .L_8149DD64
/* 8149DD5C | 38 60 FF EB */	li r3, -0x15
/* 8149DD60 | 48 00 00 BC */	b .L_8149DE1C
.L_8149DD64:
/* 8149DD64 | 3A E0 00 02 */	li r23, 0x2
/* 8149DD68 | 48 00 00 1C */	b .L_8149DD84
.L_8149DD6C:
/* 8149DD6C | 3A E0 00 01 */	li r23, 0x1
/* 8149DD70 | 48 00 00 14 */	b .L_8149DD84
.L_8149DD74:
/* 8149DD74 | 3A E0 00 03 */	li r23, 0x3
/* 8149DD78 | 48 00 00 0C */	b .L_8149DD84
.L_8149DD7C:
/* 8149DD7C | 38 60 FF FD */	li r3, -0x3
/* 8149DD80 | 48 00 00 9C */	b .L_8149DE1C
.L_8149DD84:
/* 8149DD84 | 3A C0 00 00 */	li r22, 0x0
/* 8149DD88 | 3B 60 03 E8 */	li r27, 0x3e8
/* 8149DD8C | 7F 96 D9 D6 */	mullw r28, r22, r27
/* 8149DD90 | 3C 60 10 62 */	lis r3, 0x1062
/* 8149DD94 | 3F 40 80 00 */	lis r26, 0x8000
/* 8149DD98 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
.L_8149DD9C:
/* 8149DD9C | 7F C3 F3 78 */	mr r3, r30
/* 8149DDA0 | 7E E5 BB 78 */	mr r5, r23
/* 8149DDA4 | 38 9D 00 0C */	addi r4, r29, 0xc
/* 8149DDA8 | 48 0C 75 51 */	bl NANDPrivateOpen
/* 8149DDAC | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149DDB0 | 7C 78 1B 78 */	mr r24, r3
/* 8149DDB4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149DDB8 | 41 81 00 30 */	bgt .L_8149DDE8
/* 8149DDBC | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8149DDC0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149DDC4 | 7C 19 00 16 */	mulhwu r0, r25, r0
/* 8149DDC8 | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149DDCC | 7C 03 D8 16 */	mulhwu r0, r3, r27
/* 8149DDD0 | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149DDD4 | 7C 60 E2 14 */	add r3, r0, r28
/* 8149DDD8 | 48 09 7D F5 */	bl OSSleepTicks
/* 8149DDDC | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8149DDE0 | 28 16 00 03 */	cmplwi r22, 0x3
/* 8149DDE4 | 41 80 FF B8 */	blt .L_8149DD9C
.L_8149DDE8:
/* 8149DDE8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149DDEC | 41 82 00 2C */	beq .L_8149DE18
/* 8149DDF0 | 28 1F 00 09 */	cmplwi r31, 0x9
/* 8149DDF4 | 40 82 00 0C */	bne .L_8149DE00
/* 8149DDF8 | 38 00 00 00 */	li r0, 0x0
/* 8149DDFC | 90 0D AD 8C */	stw r0, WrBufferMutex@sda21(r0)
.L_8149DE00:
/* 8149DE00 | 2C 18 FF F4 */	cmpwi r24, -0xc
/* 8149DE04 | 40 82 00 0C */	bne .L_8149DE10
/* 8149DE08 | 38 60 FF EC */	li r3, -0x14
/* 8149DE0C | 48 00 00 10 */	b .L_8149DE1C
.L_8149DE10:
/* 8149DE10 | 38 60 FF F0 */	li r3, -0x10
/* 8149DE14 | 48 00 00 08 */	b .L_8149DE1C
.L_8149DE18:
/* 8149DE18 | 38 60 00 00 */	li r3, 0x0
.L_8149DE1C:
/* 8149DE1C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149DE20 | 48 15 B6 D9 */	bl _restgpr_22
/* 8149DE24 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149DE28 | 7C 08 03 A6 */	mtlr r0
/* 8149DE2C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149DE30 | 4E 80 00 20 */	blr
.endfn NWC24iFOpenNand

# .text:0x22C | 0x8149DE34 | size: 0x128
.fn NWC24iFOpenVF, local
/* 8149DE34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149DE38 | 7C 08 02 A6 */	mflr r0
/* 8149DE3C | 2C 05 01 09 */	cmpwi r5, 0x109
/* 8149DE40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149DE44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149DE48 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149DE4C | 7C BE 2B 78 */	mr r30, r5
/* 8149DE50 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149DE54 | 7C 7D 1B 78 */	mr r29, r3
/* 8149DE58 | 41 82 00 2C */	beq .L_8149DE84
/* 8149DE5C | 40 80 00 1C */	bge .L_8149DE78
/* 8149DE60 | 2C 05 01 02 */	cmpwi r5, 0x102
/* 8149DE64 | 41 82 00 28 */	beq .L_8149DE8C
/* 8149DE68 | 40 80 00 2C */	bge .L_8149DE94
/* 8149DE6C | 2C 05 01 01 */	cmpwi r5, 0x101
/* 8149DE70 | 40 80 00 14 */	bge .L_8149DE84
/* 8149DE74 | 48 00 00 20 */	b .L_8149DE94
.L_8149DE78:
/* 8149DE78 | 2C 05 01 0B */	cmpwi r5, 0x10b
/* 8149DE7C | 40 80 00 18 */	bge .L_8149DE94
/* 8149DE80 | 48 00 00 0C */	b .L_8149DE8C
.L_8149DE84:
/* 8149DE84 | 3B ED 9A F8 */	li r31, lbl_81697B38@sda21
/* 8149DE88 | 48 00 00 14 */	b .L_8149DE9C
.L_8149DE8C:
/* 8149DE8C | 3B ED 9A FC */	li r31, lbl_81697B3C@sda21
/* 8149DE90 | 48 00 00 0C */	b .L_8149DE9C
.L_8149DE94:
/* 8149DE94 | 38 60 FF FD */	li r3, -0x3
/* 8149DE98 | 48 00 00 A8 */	b .L_8149DF40
.L_8149DE9C:
/* 8149DE9C | 7C 83 23 78 */	mr r3, r4
/* 8149DEA0 | 7F E4 FB 78 */	mr r4, r31
/* 8149DEA4 | 38 A0 00 00 */	li r5, 0x0
/* 8149DEA8 | 48 03 2A 19 */	bl VFOpenFile
/* 8149DEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149DEB0 | 90 7D 00 98 */	stw r3, 0x98(r29)
/* 8149DEB4 | 40 82 00 88 */	bne .L_8149DF3C
/* 8149DEB8 | 48 03 35 05 */	bl VFGetLastError
/* 8149DEBC | 28 1E 01 09 */	cmplwi r30, 0x109
/* 8149DEC0 | 40 82 00 0C */	bne .L_8149DECC
/* 8149DEC4 | 38 00 00 00 */	li r0, 0x0
/* 8149DEC8 | 90 0D AD 8C */	stw r0, WrBufferMutex@sda21(r0)
.L_8149DECC:
/* 8149DECC | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8149DED0 | 2C 00 00 72 */	cmpwi r0, 0x72
/* 8149DED4 | 40 82 00 14 */	bne .L_8149DEE8
/* 8149DED8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8149DEDC | 40 82 00 0C */	bne .L_8149DEE8
/* 8149DEE0 | 38 60 FF EC */	li r3, -0x14
/* 8149DEE4 | 48 00 00 5C */	b .L_8149DF40
.L_8149DEE8:
/* 8149DEE8 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149DEEC | 40 82 00 48 */	bne .L_8149DF34
/* 8149DEF0 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149DEF4 | 48 03 35 29 */	bl VFGetLastDeviceError
/* 8149DEF8 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149DEFC | 41 82 00 20 */	beq .L_8149DF1C
/* 8149DF00 | 40 80 00 10 */	bge .L_8149DF10
/* 8149DF04 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149DF08 | 41 82 00 14 */	beq .L_8149DF1C
/* 8149DF0C | 48 00 00 20 */	b .L_8149DF2C
.L_8149DF10:
/* 8149DF10 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149DF14 | 40 80 00 18 */	bge .L_8149DF2C
/* 8149DF18 | 48 00 00 0C */	b .L_8149DF24
.L_8149DF1C:
/* 8149DF1C | 38 60 FF D2 */	li r3, -0x2e
/* 8149DF20 | 48 00 00 20 */	b .L_8149DF40
.L_8149DF24:
/* 8149DF24 | 38 60 FF DA */	li r3, -0x26
/* 8149DF28 | 48 00 00 18 */	b .L_8149DF40
.L_8149DF2C:
/* 8149DF2C | 38 60 FF F0 */	li r3, -0x10
/* 8149DF30 | 48 00 00 10 */	b .L_8149DF40
.L_8149DF34:
/* 8149DF34 | 38 60 FF F0 */	li r3, -0x10
/* 8149DF38 | 48 00 00 08 */	b .L_8149DF40
.L_8149DF3C:
/* 8149DF3C | 38 60 00 00 */	li r3, 0x0
.L_8149DF40:
/* 8149DF40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149DF44 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149DF48 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149DF4C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149DF50 | 7C 08 03 A6 */	mtlr r0
/* 8149DF54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149DF58 | 4E 80 00 20 */	blr
.endfn NWC24iFOpenVF

# .text:0x354 | 0x8149DF5C | size: 0xE8
.fn NWC24FClose, global
/* 8149DF5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149DF60 | 7C 08 02 A6 */	mflr r0
/* 8149DF64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149DF68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149DF6C | 3B E0 00 00 */	li r31, 0x0
/* 8149DF70 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149DF74 | 7C 7E 1B 78 */	mr r30, r3
/* 8149DF78 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149DF7C | 28 00 00 09 */	cmplwi r0, 0x9
/* 8149DF80 | 41 82 00 0C */	beq .L_8149DF8C
/* 8149DF84 | 28 00 01 09 */	cmplwi r0, 0x109
/* 8149DF88 | 40 82 00 18 */	bne .L_8149DFA0
.L_8149DF8C:
/* 8149DF8C | 7F C3 F3 78 */	mr r3, r30
/* 8149DF90 | 48 00 10 45 */	bl BufferedWriteFlush
/* 8149DF94 | 38 00 00 00 */	li r0, 0x0
/* 8149DF98 | 7C 7F 1B 78 */	mr r31, r3
/* 8149DF9C | 90 0D AD 8C */	stw r0, WrBufferMutex@sda21(r0)
.L_8149DFA0:
/* 8149DFA0 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8149DFA4 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149DFA8 | 41 82 00 70 */	beq .L_8149E018
/* 8149DFAC | 80 7E 00 98 */	lwz r3, 0x98(r30)
/* 8149DFB0 | 48 03 29 D5 */	bl VFCloseFile
/* 8149DFB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149DFB8 | 41 82 00 58 */	beq .L_8149E010
/* 8149DFBC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149DFC0 | 40 82 00 48 */	bne .L_8149E008
/* 8149DFC4 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149DFC8 | 48 03 34 55 */	bl VFGetLastDeviceError
/* 8149DFCC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149DFD0 | 41 82 00 20 */	beq .L_8149DFF0
/* 8149DFD4 | 40 80 00 10 */	bge .L_8149DFE4
/* 8149DFD8 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149DFDC | 41 82 00 14 */	beq .L_8149DFF0
/* 8149DFE0 | 48 00 00 20 */	b .L_8149E000
.L_8149DFE4:
/* 8149DFE4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149DFE8 | 40 80 00 18 */	bge .L_8149E000
/* 8149DFEC | 48 00 00 0C */	b .L_8149DFF8
.L_8149DFF0:
/* 8149DFF0 | 38 60 FF D2 */	li r3, -0x2e
/* 8149DFF4 | 48 00 00 2C */	b .L_8149E020
.L_8149DFF8:
/* 8149DFF8 | 38 60 FF DA */	li r3, -0x26
/* 8149DFFC | 48 00 00 24 */	b .L_8149E020
.L_8149E000:
/* 8149E000 | 38 60 FF EF */	li r3, -0x11
/* 8149E004 | 48 00 00 1C */	b .L_8149E020
.L_8149E008:
/* 8149E008 | 38 60 FF EF */	li r3, -0x11
/* 8149E00C | 48 00 00 14 */	b .L_8149E020
.L_8149E010:
/* 8149E010 | 38 60 00 00 */	li r3, 0x0
/* 8149E014 | 48 00 00 0C */	b .L_8149E020
.L_8149E018:
/* 8149E018 | 7F C3 F3 78 */	mr r3, r30
/* 8149E01C | 48 00 00 29 */	bl NWC24iFCloseNand
.L_8149E020:
/* 8149E020 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149E024 | 41 82 00 08 */	beq .L_8149E02C
/* 8149E028 | 7F E3 FB 78 */	mr r3, r31
.L_8149E02C:
/* 8149E02C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E030 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149E034 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149E038 | 7C 08 03 A6 */	mtlr r0
/* 8149E03C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E040 | 4E 80 00 20 */	blr
.endfn NWC24FClose

# .text:0x43C | 0x8149E044 | size: 0xB0
.fn NWC24iFCloseNand, local
/* 8149E044 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149E048 | 7C 08 02 A6 */	mflr r0
/* 8149E04C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149E050 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E054 | 48 15 B4 61 */	bl _savegpr_24
/* 8149E058 | 3B 40 00 00 */	li r26, 0x0
/* 8149E05C | 3B C0 03 E8 */	li r30, 0x3e8
/* 8149E060 | 7F FA F1 D6 */	mullw r31, r26, r30
/* 8149E064 | 3C 80 10 62 */	lis r4, 0x1062
/* 8149E068 | 7C 78 1B 78 */	mr r24, r3
/* 8149E06C | 3B 84 4D D3 */	addi r28, r4, 0x4dd3
/* 8149E070 | 3B 20 00 00 */	li r25, 0x0
/* 8149E074 | 3F A0 80 00 */	lis r29, 0x8000
.L_8149E078:
/* 8149E078 | 38 78 00 0C */	addi r3, r24, 0xc
/* 8149E07C | 48 0C 74 71 */	bl NANDClose
/* 8149E080 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149E084 | 7C 7B 1B 78 */	mr r27, r3
/* 8149E088 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149E08C | 41 81 00 30 */	bgt .L_8149E0BC
/* 8149E090 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 8149E094 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149E098 | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 8149E09C | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149E0A0 | 7C 03 F0 16 */	mulhwu r0, r3, r30
/* 8149E0A4 | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149E0A8 | 7C 60 FA 14 */	add r3, r0, r31
/* 8149E0AC | 48 09 7B 21 */	bl OSSleepTicks
/* 8149E0B0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8149E0B4 | 28 19 00 03 */	cmplwi r25, 0x3
/* 8149E0B8 | 41 80 FF C0 */	blt .L_8149E078
.L_8149E0BC:
/* 8149E0BC | 2C 1B FF FC */	cmpwi r27, -0x4
/* 8149E0C0 | 40 82 00 0C */	bne .L_8149E0CC
/* 8149E0C4 | 3B 40 FF DA */	li r26, -0x26
/* 8149E0C8 | 48 00 00 10 */	b .L_8149E0D8
.L_8149E0CC:
/* 8149E0CC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8149E0D0 | 41 82 00 08 */	beq .L_8149E0D8
/* 8149E0D4 | 3B 40 FF EF */	li r26, -0x11
.L_8149E0D8:
/* 8149E0D8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E0DC | 7F 43 D3 78 */	mr r3, r26
/* 8149E0E0 | 48 15 B4 21 */	bl _restgpr_24
/* 8149E0E4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149E0E8 | 7C 08 03 A6 */	mtlr r0
/* 8149E0EC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149E0F0 | 4E 80 00 20 */	blr
.endfn NWC24iFCloseNand

# .text:0x4EC | 0x8149E0F4 | size: 0x1F0
.fn NWC24FSeek, global
/* 8149E0F4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149E0F8 | 7C 08 02 A6 */	mflr r0
/* 8149E0FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149E100 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E104 | 48 15 B3 AD */	bl _savegpr_23
/* 8149E108 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149E10C | 7C 7D 1B 78 */	mr r29, r3
/* 8149E110 | 7C 9E 23 78 */	mr r30, r4
/* 8149E114 | 7C BF 2B 78 */	mr r31, r5
/* 8149E118 | 28 00 00 0A */	cmplwi r0, 0xa
/* 8149E11C | 41 82 00 0C */	beq .L_8149E128
/* 8149E120 | 28 00 01 0A */	cmplwi r0, 0x10a
/* 8149E124 | 40 82 00 BC */	bne .L_8149E1E0
.L_8149E128:
/* 8149E128 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149E12C | 54 85 D8 08 */	slwi r5, r4, 27
/* 8149E130 | 54 86 0F FE */	srwi r6, r4, 31
/* 8149E134 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149E138 | 7C A6 28 50 */	subf r5, r6, r5
/* 8149E13C | 54 A0 28 3E */	rotlwi r0, r5, 5
/* 8149E140 | 7C 00 32 14 */	add r0, r0, r6
/* 8149E144 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8149E148 | 7C 80 20 50 */	subf r4, r0, r4
/* 8149E14C | 41 82 00 74 */	beq .L_8149E1C0
/* 8149E150 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8149E154 | 7F E5 FB 78 */	mr r5, r31
/* 8149E158 | 48 03 28 99 */	bl VFSeekFile
/* 8149E15C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E160 | 41 82 00 58 */	beq .L_8149E1B8
/* 8149E164 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E168 | 40 82 00 48 */	bne .L_8149E1B0
/* 8149E16C | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E170 | 48 03 32 AD */	bl VFGetLastDeviceError
/* 8149E174 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E178 | 41 82 00 20 */	beq .L_8149E198
/* 8149E17C | 40 80 00 10 */	bge .L_8149E18C
/* 8149E180 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E184 | 41 82 00 14 */	beq .L_8149E198
/* 8149E188 | 48 00 00 20 */	b .L_8149E1A8
.L_8149E18C:
/* 8149E18C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E190 | 40 80 00 18 */	bge .L_8149E1A8
/* 8149E194 | 48 00 00 0C */	b .L_8149E1A0
.L_8149E198:
/* 8149E198 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E19C | 48 00 01 30 */	b .L_8149E2CC
.L_8149E1A0:
/* 8149E1A0 | 38 60 FF DA */	li r3, -0x26
/* 8149E1A4 | 48 00 01 28 */	b .L_8149E2CC
.L_8149E1A8:
/* 8149E1A8 | 38 60 FF EB */	li r3, -0x15
/* 8149E1AC | 48 00 01 20 */	b .L_8149E2CC
.L_8149E1B0:
/* 8149E1B0 | 38 60 FF EB */	li r3, -0x15
/* 8149E1B4 | 48 00 01 18 */	b .L_8149E2CC
.L_8149E1B8:
/* 8149E1B8 | 38 60 00 00 */	li r3, 0x0
/* 8149E1BC | 48 00 01 10 */	b .L_8149E2CC
.L_8149E1C0:
/* 8149E1C0 | 7F E5 FB 78 */	mr r5, r31
/* 8149E1C4 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8149E1C8 | 48 0C 5F F9 */	bl NANDSeek
/* 8149E1CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E1D0 | 38 60 00 00 */	li r3, 0x0
/* 8149E1D4 | 40 80 00 F8 */	bge .L_8149E2CC
/* 8149E1D8 | 38 60 FF EB */	li r3, -0x15
/* 8149E1DC | 48 00 00 F0 */	b .L_8149E2CC
.L_8149E1E0:
/* 8149E1E0 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149E1E4 | 41 82 00 70 */	beq .L_8149E254
/* 8149E1E8 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8149E1EC | 48 03 28 05 */	bl VFSeekFile
/* 8149E1F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E1F4 | 41 82 00 58 */	beq .L_8149E24C
/* 8149E1F8 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E1FC | 40 82 00 48 */	bne .L_8149E244
/* 8149E200 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E204 | 48 03 32 19 */	bl VFGetLastDeviceError
/* 8149E208 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E20C | 41 82 00 20 */	beq .L_8149E22C
/* 8149E210 | 40 80 00 10 */	bge .L_8149E220
/* 8149E214 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E218 | 41 82 00 14 */	beq .L_8149E22C
/* 8149E21C | 48 00 00 20 */	b .L_8149E23C
.L_8149E220:
/* 8149E220 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E224 | 40 80 00 18 */	bge .L_8149E23C
/* 8149E228 | 48 00 00 0C */	b .L_8149E234
.L_8149E22C:
/* 8149E22C | 38 60 FF D2 */	li r3, -0x2e
/* 8149E230 | 48 00 00 9C */	b .L_8149E2CC
.L_8149E234:
/* 8149E234 | 38 60 FF DA */	li r3, -0x26
/* 8149E238 | 48 00 00 94 */	b .L_8149E2CC
.L_8149E23C:
/* 8149E23C | 38 60 FF EB */	li r3, -0x15
/* 8149E240 | 48 00 00 8C */	b .L_8149E2CC
.L_8149E244:
/* 8149E244 | 38 60 FF EB */	li r3, -0x15
/* 8149E248 | 48 00 00 84 */	b .L_8149E2CC
.L_8149E24C:
/* 8149E24C | 38 60 00 00 */	li r3, 0x0
/* 8149E250 | 48 00 00 7C */	b .L_8149E2CC
.L_8149E254:
/* 8149E254 | 3A E0 00 00 */	li r23, 0x0
/* 8149E258 | 3B 60 03 E8 */	li r27, 0x3e8
/* 8149E25C | 7F 97 D9 D6 */	mullw r28, r23, r27
/* 8149E260 | 3C 60 10 62 */	lis r3, 0x1062
/* 8149E264 | 3F 40 80 00 */	lis r26, 0x8000
/* 8149E268 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
.L_8149E26C:
/* 8149E26C | 7F C4 F3 78 */	mr r4, r30
/* 8149E270 | 7F E5 FB 78 */	mr r5, r31
/* 8149E274 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 8149E278 | 48 0C 5F 49 */	bl NANDSeek
/* 8149E27C | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149E280 | 7C 78 1B 78 */	mr r24, r3
/* 8149E284 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149E288 | 41 81 00 30 */	bgt .L_8149E2B8
/* 8149E28C | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8149E290 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149E294 | 7C 19 00 16 */	mulhwu r0, r25, r0
/* 8149E298 | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149E29C | 7C 03 D8 16 */	mulhwu r0, r3, r27
/* 8149E2A0 | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149E2A4 | 7C 60 E2 14 */	add r3, r0, r28
/* 8149E2A8 | 48 09 79 25 */	bl OSSleepTicks
/* 8149E2AC | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8149E2B0 | 28 17 00 03 */	cmplwi r23, 0x3
/* 8149E2B4 | 41 80 FF B8 */	blt .L_8149E26C
.L_8149E2B8:
/* 8149E2B8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149E2BC | 40 80 00 0C */	bge .L_8149E2C8
/* 8149E2C0 | 38 60 FF EB */	li r3, -0x15
/* 8149E2C4 | 48 00 00 08 */	b .L_8149E2CC
.L_8149E2C8:
/* 8149E2C8 | 38 60 00 00 */	li r3, 0x0
.L_8149E2CC:
/* 8149E2CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E2D0 | 48 15 B2 2D */	bl _restgpr_23
/* 8149E2D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149E2D8 | 7C 08 03 A6 */	mtlr r0
/* 8149E2DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149E2E0 | 4E 80 00 20 */	blr
.endfn NWC24FSeek

# .text:0x6DC | 0x8149E2E4 | size: 0x1D0
.fn NWC24FRead, global
/* 8149E2E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149E2E8 | 7C 08 02 A6 */	mflr r0
/* 8149E2EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149E2F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E2F4 | 48 15 B1 BD */	bl _savegpr_23
/* 8149E2F8 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8149E2FC | 7C 7D 1B 78 */	mr r29, r3
/* 8149E300 | 7C 9E 23 78 */	mr r30, r4
/* 8149E304 | 7C BF 2B 78 */	mr r31, r5
/* 8149E308 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149E30C | 41 82 00 40 */	beq .L_8149E34C
/* 8149E310 | 40 80 00 1C */	bge .L_8149E32C
/* 8149E314 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8149E318 | 41 82 00 2C */	beq .L_8149E344
/* 8149E31C | 41 80 00 44 */	blt .L_8149E360
/* 8149E320 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8149E324 | 40 80 00 20 */	bge .L_8149E344
/* 8149E328 | 48 00 00 38 */	b .L_8149E360
.L_8149E32C:
/* 8149E32C | 2C 00 01 0A */	cmpwi r0, 0x10a
/* 8149E330 | 41 82 00 1C */	beq .L_8149E34C
/* 8149E334 | 40 80 00 2C */	bge .L_8149E360
/* 8149E338 | 2C 00 01 01 */	cmpwi r0, 0x101
/* 8149E33C | 41 82 00 08 */	beq .L_8149E344
/* 8149E340 | 48 00 00 20 */	b .L_8149E360
.L_8149E344:
/* 8149E344 | 38 60 FF F9 */	li r3, -0x7
/* 8149E348 | 48 00 01 54 */	b .L_8149E49C
.L_8149E34C:
/* 8149E34C | 7F A3 EB 78 */	mr r3, r29
/* 8149E350 | 7F C4 F3 78 */	mr r4, r30
/* 8149E354 | 7F E5 FB 78 */	mr r5, r31
/* 8149E358 | 48 00 0D ED */	bl BufferedRead
/* 8149E35C | 48 00 01 40 */	b .L_8149E49C
.L_8149E360:
/* 8149E360 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149E364 | 41 82 00 7C */	beq .L_8149E3E0
/* 8149E368 | 80 65 00 98 */	lwz r3, 0x98(r5)
/* 8149E36C | 7F A4 EB 78 */	mr r4, r29
/* 8149E370 | 7F C5 F3 78 */	mr r5, r30
/* 8149E374 | 38 C0 00 00 */	li r6, 0x0
/* 8149E378 | 48 03 27 05 */	bl VFReadFile
/* 8149E37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E380 | 41 82 00 58 */	beq .L_8149E3D8
/* 8149E384 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E388 | 40 82 00 48 */	bne .L_8149E3D0
/* 8149E38C | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E390 | 48 03 30 8D */	bl VFGetLastDeviceError
/* 8149E394 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E398 | 41 82 00 20 */	beq .L_8149E3B8
/* 8149E39C | 40 80 00 10 */	bge .L_8149E3AC
/* 8149E3A0 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E3A4 | 41 82 00 14 */	beq .L_8149E3B8
/* 8149E3A8 | 48 00 00 20 */	b .L_8149E3C8
.L_8149E3AC:
/* 8149E3AC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E3B0 | 40 80 00 18 */	bge .L_8149E3C8
/* 8149E3B4 | 48 00 00 0C */	b .L_8149E3C0
.L_8149E3B8:
/* 8149E3B8 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E3BC | 48 00 00 E0 */	b .L_8149E49C
.L_8149E3C0:
/* 8149E3C0 | 38 60 FF DA */	li r3, -0x26
/* 8149E3C4 | 48 00 00 D8 */	b .L_8149E49C
.L_8149E3C8:
/* 8149E3C8 | 38 60 FF EE */	li r3, -0x12
/* 8149E3CC | 48 00 00 D0 */	b .L_8149E49C
.L_8149E3D0:
/* 8149E3D0 | 38 60 FF EE */	li r3, -0x12
/* 8149E3D4 | 48 00 00 C8 */	b .L_8149E49C
.L_8149E3D8:
/* 8149E3D8 | 38 60 00 00 */	li r3, 0x0
/* 8149E3DC | 48 00 00 C0 */	b .L_8149E49C
.L_8149E3E0:
/* 8149E3E0 | 3A E0 00 00 */	li r23, 0x0
/* 8149E3E4 | 3B 60 03 E8 */	li r27, 0x3e8
/* 8149E3E8 | 7F 97 D9 D6 */	mullw r28, r23, r27
/* 8149E3EC | 3C 60 10 62 */	lis r3, 0x1062
/* 8149E3F0 | 3F 40 80 00 */	lis r26, 0x8000
/* 8149E3F4 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
.L_8149E3F8:
/* 8149E3F8 | 7F A4 EB 78 */	mr r4, r29
/* 8149E3FC | 7F C5 F3 78 */	mr r5, r30
/* 8149E400 | 38 7F 00 0C */	addi r3, r31, 0xc
/* 8149E404 | 48 0C 5B FD */	bl NANDRead
/* 8149E408 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149E40C | 7C 78 1B 78 */	mr r24, r3
/* 8149E410 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149E414 | 41 81 00 30 */	bgt .L_8149E444
/* 8149E418 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8149E41C | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149E420 | 7C 19 00 16 */	mulhwu r0, r25, r0
/* 8149E424 | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149E428 | 7C 03 D8 16 */	mulhwu r0, r3, r27
/* 8149E42C | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149E430 | 7C 60 E2 14 */	add r3, r0, r28
/* 8149E434 | 48 09 77 99 */	bl OSSleepTicks
/* 8149E438 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8149E43C | 28 17 00 03 */	cmplwi r23, 0x3
/* 8149E440 | 41 80 FF B8 */	blt .L_8149E3F8
.L_8149E444:
/* 8149E444 | 2C 18 FF FC */	cmpwi r24, -0x4
/* 8149E448 | 40 82 00 0C */	bne .L_8149E454
/* 8149E44C | 38 60 FF DA */	li r3, -0x26
/* 8149E450 | 48 00 00 4C */	b .L_8149E49C
.L_8149E454:
/* 8149E454 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149E458 | 40 80 00 40 */	bge .L_8149E498
/* 8149E45C | 2C 18 FF FB */	cmpwi r24, -0x5
/* 8149E460 | 41 82 00 20 */	beq .L_8149E480
/* 8149E464 | 40 80 00 10 */	bge .L_8149E474
/* 8149E468 | 2C 18 FF F1 */	cmpwi r24, -0xf
/* 8149E46C | 41 82 00 14 */	beq .L_8149E480
/* 8149E470 | 48 00 00 20 */	b .L_8149E490
.L_8149E474:
/* 8149E474 | 2C 18 FF FD */	cmpwi r24, -0x3
/* 8149E478 | 40 80 00 18 */	bge .L_8149E490
/* 8149E47C | 48 00 00 0C */	b .L_8149E488
.L_8149E480:
/* 8149E480 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E484 | 48 00 00 18 */	b .L_8149E49C
.L_8149E488:
/* 8149E488 | 38 60 FF DA */	li r3, -0x26
/* 8149E48C | 48 00 00 10 */	b .L_8149E49C
.L_8149E490:
/* 8149E490 | 38 60 FF EE */	li r3, -0x12
/* 8149E494 | 48 00 00 08 */	b .L_8149E49C
.L_8149E498:
/* 8149E498 | 38 60 00 00 */	li r3, 0x0
.L_8149E49C:
/* 8149E49C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E4A0 | 48 15 B0 5D */	bl _restgpr_23
/* 8149E4A4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149E4A8 | 7C 08 03 A6 */	mtlr r0
/* 8149E4AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149E4B0 | 4E 80 00 20 */	blr
.endfn NWC24FRead

# .text:0x8AC | 0x8149E4B4 | size: 0x1D8
.fn NWC24FWrite, global
/* 8149E4B4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149E4B8 | 7C 08 02 A6 */	mflr r0
/* 8149E4BC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149E4C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E4C4 | 48 15 AF ED */	bl _savegpr_23
/* 8149E4C8 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8149E4CC | 7C 7D 1B 78 */	mr r29, r3
/* 8149E4D0 | 7C 9E 23 78 */	mr r30, r4
/* 8149E4D4 | 7C BF 2B 78 */	mr r31, r5
/* 8149E4D8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149E4DC | 41 82 00 4C */	beq .L_8149E528
/* 8149E4E0 | 40 80 00 1C */	bge .L_8149E4FC
/* 8149E4E4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8149E4E8 | 41 82 00 40 */	beq .L_8149E528
/* 8149E4EC | 41 80 00 44 */	blt .L_8149E530
/* 8149E4F0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8149E4F4 | 40 80 00 20 */	bge .L_8149E514
/* 8149E4F8 | 48 00 00 38 */	b .L_8149E530
.L_8149E4FC:
/* 8149E4FC | 2C 00 01 09 */	cmpwi r0, 0x109
/* 8149E500 | 41 82 00 14 */	beq .L_8149E514
/* 8149E504 | 40 80 00 2C */	bge .L_8149E530
/* 8149E508 | 2C 00 01 02 */	cmpwi r0, 0x102
/* 8149E50C | 41 82 00 1C */	beq .L_8149E528
/* 8149E510 | 48 00 00 20 */	b .L_8149E530
.L_8149E514:
/* 8149E514 | 7F A3 EB 78 */	mr r3, r29
/* 8149E518 | 7F C4 F3 78 */	mr r4, r30
/* 8149E51C | 7F E5 FB 78 */	mr r5, r31
/* 8149E520 | 48 00 09 21 */	bl BufferedWrite
/* 8149E524 | 48 00 01 50 */	b .L_8149E674
.L_8149E528:
/* 8149E528 | 38 60 FF F9 */	li r3, -0x7
/* 8149E52C | 48 00 01 48 */	b .L_8149E674
.L_8149E530:
/* 8149E530 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149E534 | 41 82 00 78 */	beq .L_8149E5AC
/* 8149E538 | 80 65 00 98 */	lwz r3, 0x98(r5)
/* 8149E53C | 7F A4 EB 78 */	mr r4, r29
/* 8149E540 | 7F C5 F3 78 */	mr r5, r30
/* 8149E544 | 48 03 25 D5 */	bl VFWriteFile
/* 8149E548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E54C | 41 82 00 58 */	beq .L_8149E5A4
/* 8149E550 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E554 | 40 82 00 48 */	bne .L_8149E59C
/* 8149E558 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E55C | 48 03 2E C1 */	bl VFGetLastDeviceError
/* 8149E560 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E564 | 41 82 00 20 */	beq .L_8149E584
/* 8149E568 | 40 80 00 10 */	bge .L_8149E578
/* 8149E56C | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E570 | 41 82 00 14 */	beq .L_8149E584
/* 8149E574 | 48 00 00 20 */	b .L_8149E594
.L_8149E578:
/* 8149E578 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E57C | 40 80 00 18 */	bge .L_8149E594
/* 8149E580 | 48 00 00 0C */	b .L_8149E58C
.L_8149E584:
/* 8149E584 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E588 | 48 00 00 EC */	b .L_8149E674
.L_8149E58C:
/* 8149E58C | 38 60 FF DA */	li r3, -0x26
/* 8149E590 | 48 00 00 E4 */	b .L_8149E674
.L_8149E594:
/* 8149E594 | 38 60 FF ED */	li r3, -0x13
/* 8149E598 | 48 00 00 DC */	b .L_8149E674
.L_8149E59C:
/* 8149E59C | 38 60 FF ED */	li r3, -0x13
/* 8149E5A0 | 48 00 00 D4 */	b .L_8149E674
.L_8149E5A4:
/* 8149E5A4 | 38 60 00 00 */	li r3, 0x0
/* 8149E5A8 | 48 00 00 CC */	b .L_8149E674
.L_8149E5AC:
/* 8149E5AC | 3A E0 00 00 */	li r23, 0x0
/* 8149E5B0 | 3B 60 03 E8 */	li r27, 0x3e8
/* 8149E5B4 | 7F 97 D9 D6 */	mullw r28, r23, r27
/* 8149E5B8 | 3C 60 10 62 */	lis r3, 0x1062
/* 8149E5BC | 3F 40 80 00 */	lis r26, 0x8000
/* 8149E5C0 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
.L_8149E5C4:
/* 8149E5C4 | 7F A4 EB 78 */	mr r4, r29
/* 8149E5C8 | 7F C5 F3 78 */	mr r5, r30
/* 8149E5CC | 38 7F 00 0C */	addi r3, r31, 0xc
/* 8149E5D0 | 48 0C 5B 11 */	bl NANDWrite
/* 8149E5D4 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149E5D8 | 7C 78 1B 78 */	mr r24, r3
/* 8149E5DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149E5E0 | 41 81 00 30 */	bgt .L_8149E610
/* 8149E5E4 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8149E5E8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149E5EC | 7C 19 00 16 */	mulhwu r0, r25, r0
/* 8149E5F0 | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149E5F4 | 7C 03 D8 16 */	mulhwu r0, r3, r27
/* 8149E5F8 | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149E5FC | 7C 60 E2 14 */	add r3, r0, r28
/* 8149E600 | 48 09 75 CD */	bl OSSleepTicks
/* 8149E604 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8149E608 | 28 17 00 03 */	cmplwi r23, 0x3
/* 8149E60C | 41 80 FF B8 */	blt .L_8149E5C4
.L_8149E610:
/* 8149E610 | 2C 18 FF FC */	cmpwi r24, -0x4
/* 8149E614 | 40 82 00 0C */	bne .L_8149E620
/* 8149E618 | 38 60 FF DA */	li r3, -0x26
/* 8149E61C | 48 00 00 58 */	b .L_8149E674
.L_8149E620:
/* 8149E620 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149E624 | 40 80 00 40 */	bge .L_8149E664
/* 8149E628 | 2C 18 FF FB */	cmpwi r24, -0x5
/* 8149E62C | 41 82 00 20 */	beq .L_8149E64C
/* 8149E630 | 40 80 00 10 */	bge .L_8149E640
/* 8149E634 | 2C 18 FF F1 */	cmpwi r24, -0xf
/* 8149E638 | 41 82 00 14 */	beq .L_8149E64C
/* 8149E63C | 48 00 00 20 */	b .L_8149E65C
.L_8149E640:
/* 8149E640 | 2C 18 FF FD */	cmpwi r24, -0x3
/* 8149E644 | 40 80 00 18 */	bge .L_8149E65C
/* 8149E648 | 48 00 00 0C */	b .L_8149E654
.L_8149E64C:
/* 8149E64C | 38 60 FF D2 */	li r3, -0x2e
/* 8149E650 | 48 00 00 24 */	b .L_8149E674
.L_8149E654:
/* 8149E654 | 38 60 FF DA */	li r3, -0x26
/* 8149E658 | 48 00 00 1C */	b .L_8149E674
.L_8149E65C:
/* 8149E65C | 38 60 FF ED */	li r3, -0x13
/* 8149E660 | 48 00 00 14 */	b .L_8149E674
.L_8149E664:
/* 8149E664 | 7C 18 F0 00 */	cmpw r24, r30
/* 8149E668 | 38 60 00 00 */	li r3, 0x0
/* 8149E66C | 41 82 00 08 */	beq .L_8149E674
/* 8149E670 | 38 60 FF ED */	li r3, -0x13
.L_8149E674:
/* 8149E674 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149E678 | 48 15 AE 85 */	bl _restgpr_23
/* 8149E67C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149E680 | 7C 08 03 A6 */	mtlr r0
/* 8149E684 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149E688 | 4E 80 00 20 */	blr
.endfn NWC24FWrite

# .text:0xA84 | 0x8149E68C | size: 0xBC
.fn NWC24FGetLength, global
/* 8149E68C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E690 | 7C 08 02 A6 */	mflr r0
/* 8149E694 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149E698 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149E69C | 7C 9F 23 78 */	mr r31, r4
/* 8149E6A0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149E6A4 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149E6A8 | 41 82 00 74 */	beq .L_8149E71C
/* 8149E6AC | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8149E6B0 | 48 03 28 05 */	bl VFGetFileSizeByFd
/* 8149E6B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E6B8 | 40 80 00 58 */	bge .L_8149E710
/* 8149E6BC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E6C0 | 40 82 00 48 */	bne .L_8149E708
/* 8149E6C4 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E6C8 | 48 03 2D 55 */	bl VFGetLastDeviceError
/* 8149E6CC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E6D0 | 41 82 00 20 */	beq .L_8149E6F0
/* 8149E6D4 | 40 80 00 10 */	bge .L_8149E6E4
/* 8149E6D8 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E6DC | 41 82 00 14 */	beq .L_8149E6F0
/* 8149E6E0 | 48 00 00 20 */	b .L_8149E700
.L_8149E6E4:
/* 8149E6E4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E6E8 | 40 80 00 18 */	bge .L_8149E700
/* 8149E6EC | 48 00 00 0C */	b .L_8149E6F8
.L_8149E6F0:
/* 8149E6F0 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E6F4 | 48 00 00 40 */	b .L_8149E734
.L_8149E6F8:
/* 8149E6F8 | 38 60 FF DA */	li r3, -0x26
/* 8149E6FC | 48 00 00 38 */	b .L_8149E734
.L_8149E700:
/* 8149E700 | 38 60 FF EB */	li r3, -0x15
/* 8149E704 | 48 00 00 30 */	b .L_8149E734
.L_8149E708:
/* 8149E708 | 38 60 FF EB */	li r3, -0x15
/* 8149E70C | 48 00 00 28 */	b .L_8149E734
.L_8149E710:
/* 8149E710 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8149E714 | 38 60 00 00 */	li r3, 0x0
/* 8149E718 | 48 00 00 1C */	b .L_8149E734
.L_8149E71C:
/* 8149E71C | 38 63 00 0C */	addi r3, r3, 0xc
/* 8149E720 | 48 0C 62 11 */	bl NANDGetLength
/* 8149E724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E728 | 38 60 00 00 */	li r3, 0x0
/* 8149E72C | 41 82 00 08 */	beq .L_8149E734
/* 8149E730 | 38 60 FF EB */	li r3, -0x15
.L_8149E734:
/* 8149E734 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E738 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149E73C | 7C 08 03 A6 */	mtlr r0
/* 8149E740 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E744 | 4E 80 00 20 */	blr
.endfn NWC24FGetLength

# .text:0xB40 | 0x8149E748 | size: 0x40
.fn NWC24FDelete, global
/* 8149E748 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E74C | 7C 08 02 A6 */	mflr r0
/* 8149E750 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149E754 | 48 0C 57 55 */	bl NANDPrivateDelete
/* 8149E758 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 8149E75C | 40 82 00 0C */	bne .L_8149E768
/* 8149E760 | 38 60 FF DA */	li r3, -0x26
/* 8149E764 | 48 00 00 14 */	b .L_8149E778
.L_8149E768:
/* 8149E768 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E76C | 38 60 00 00 */	li r3, 0x0
/* 8149E770 | 41 82 00 08 */	beq .L_8149E778
/* 8149E774 | 38 60 FF EB */	li r3, -0x15
.L_8149E778:
/* 8149E778 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E77C | 7C 08 03 A6 */	mtlr r0
/* 8149E780 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E784 | 4E 80 00 20 */	blr
.endfn NWC24FDelete

# .text:0xB80 | 0x8149E788 | size: 0x90
.fn NWC24FDeleteVF, global
/* 8149E788 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E78C | 7C 08 02 A6 */	mflr r0
/* 8149E790 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149E794 | 48 03 24 11 */	bl VFDeleteFile
/* 8149E798 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8149E79C | 40 82 00 0C */	bne .L_8149E7A8
/* 8149E7A0 | 38 60 00 00 */	li r3, 0x0
/* 8149E7A4 | 48 00 00 64 */	b .L_8149E808
.L_8149E7A8:
/* 8149E7A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E7AC | 41 82 00 58 */	beq .L_8149E804
/* 8149E7B0 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E7B4 | 40 82 00 48 */	bne .L_8149E7FC
/* 8149E7B8 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E7BC | 48 03 2C 61 */	bl VFGetLastDeviceError
/* 8149E7C0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E7C4 | 41 82 00 20 */	beq .L_8149E7E4
/* 8149E7C8 | 40 80 00 10 */	bge .L_8149E7D8
/* 8149E7CC | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E7D0 | 41 82 00 14 */	beq .L_8149E7E4
/* 8149E7D4 | 48 00 00 20 */	b .L_8149E7F4
.L_8149E7D8:
/* 8149E7D8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E7DC | 40 80 00 18 */	bge .L_8149E7F4
/* 8149E7E0 | 48 00 00 0C */	b .L_8149E7EC
.L_8149E7E4:
/* 8149E7E4 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E7E8 | 48 00 00 20 */	b .L_8149E808
.L_8149E7EC:
/* 8149E7EC | 38 60 FF DA */	li r3, -0x26
/* 8149E7F0 | 48 00 00 18 */	b .L_8149E808
.L_8149E7F4:
/* 8149E7F4 | 38 60 FF EB */	li r3, -0x15
/* 8149E7F8 | 48 00 00 10 */	b .L_8149E808
.L_8149E7FC:
/* 8149E7FC | 38 60 FF EB */	li r3, -0x15
/* 8149E800 | 48 00 00 08 */	b .L_8149E808
.L_8149E804:
/* 8149E804 | 38 60 00 00 */	li r3, 0x0
.L_8149E808:
/* 8149E808 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E80C | 7C 08 03 A6 */	mtlr r0
/* 8149E810 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E814 | 4E 80 00 20 */	blr
.endfn NWC24FDeleteVF

# .text:0xC10 | 0x8149E818 | size: 0x54
.fn NWC24CreateDir, global
/* 8149E818 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E81C | 7C 08 02 A6 */	mflr r0
/* 8149E820 | 38 80 00 3F */	li r4, 0x3f
/* 8149E824 | 38 A0 00 00 */	li r5, 0x0
/* 8149E828 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149E82C | 48 0C 5E 0D */	bl NANDPrivateCreateDir
/* 8149E830 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 8149E834 | 40 82 00 0C */	bne .L_8149E840
/* 8149E838 | 38 60 FF F1 */	li r3, -0xf
/* 8149E83C | 48 00 00 20 */	b .L_8149E85C
.L_8149E840:
/* 8149E840 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 8149E844 | 40 82 00 0C */	bne .L_8149E850
/* 8149E848 | 38 60 FF DA */	li r3, -0x26
/* 8149E84C | 48 00 00 10 */	b .L_8149E85C
.L_8149E850:
/* 8149E850 | 7C 03 00 D0 */	neg r0, r3
/* 8149E854 | 7C 00 1B 78 */	or r0, r0, r3
/* 8149E858 | 7C 03 FE 70 */	srawi r3, r0, 31
.L_8149E85C:
/* 8149E85C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E860 | 7C 08 03 A6 */	mtlr r0
/* 8149E864 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E868 | 4E 80 00 20 */	blr
.endfn NWC24CreateDir

# .text:0xC64 | 0x8149E86C | size: 0x108
.fn NWC24MountVF, global
/* 8149E86C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E870 | 7C 08 02 A6 */	mflr r0
/* 8149E874 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149E878 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149E87C | 7C 7F 1B 78 */	mr r31, r3
/* 8149E880 | 48 03 18 8D */	bl VFMountDriveNANDFlashEx
/* 8149E884 | 3C 03 00 00 */	addis r0, r3, 0x0
/* 8149E888 | 28 00 B0 01 */	cmplwi r0, 0xb001
/* 8149E88C | 40 82 00 0C */	bne .L_8149E898
/* 8149E890 | 38 60 FF EC */	li r3, -0x14
/* 8149E894 | 48 00 00 CC */	b .L_8149E960
.L_8149E898:
/* 8149E898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E89C | 41 82 00 58 */	beq .L_8149E8F4
/* 8149E8A0 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E8A4 | 40 82 00 48 */	bne .L_8149E8EC
/* 8149E8A8 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E8AC | 48 03 2B 71 */	bl VFGetLastDeviceError
/* 8149E8B0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E8B4 | 41 82 00 20 */	beq .L_8149E8D4
/* 8149E8B8 | 40 80 00 10 */	bge .L_8149E8C8
/* 8149E8BC | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E8C0 | 41 82 00 14 */	beq .L_8149E8D4
/* 8149E8C4 | 48 00 00 20 */	b .L_8149E8E4
.L_8149E8C8:
/* 8149E8C8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E8CC | 40 80 00 18 */	bge .L_8149E8E4
/* 8149E8D0 | 48 00 00 0C */	b .L_8149E8DC
.L_8149E8D4:
/* 8149E8D4 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E8D8 | 48 00 00 88 */	b .L_8149E960
.L_8149E8DC:
/* 8149E8DC | 38 60 FF DA */	li r3, -0x26
/* 8149E8E0 | 48 00 00 80 */	b .L_8149E960
.L_8149E8E4:
/* 8149E8E4 | 38 60 FF D5 */	li r3, -0x2b
/* 8149E8E8 | 48 00 00 78 */	b .L_8149E960
.L_8149E8EC:
/* 8149E8EC | 38 60 FF D5 */	li r3, -0x2b
/* 8149E8F0 | 48 00 00 70 */	b .L_8149E960
.L_8149E8F4:
/* 8149E8F4 | 7F E3 FB 78 */	mr r3, r31
/* 8149E8F8 | 38 80 00 01 */	li r4, 0x1
/* 8149E8FC | 48 03 2A 2D */	bl VFSync
/* 8149E900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E904 | 41 82 00 58 */	beq .L_8149E95C
/* 8149E908 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E90C | 40 82 00 48 */	bne .L_8149E954
/* 8149E910 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E914 | 48 03 2B 09 */	bl VFGetLastDeviceError
/* 8149E918 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E91C | 41 82 00 20 */	beq .L_8149E93C
/* 8149E920 | 40 80 00 10 */	bge .L_8149E930
/* 8149E924 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E928 | 41 82 00 14 */	beq .L_8149E93C
/* 8149E92C | 48 00 00 20 */	b .L_8149E94C
.L_8149E930:
/* 8149E930 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E934 | 40 80 00 18 */	bge .L_8149E94C
/* 8149E938 | 48 00 00 0C */	b .L_8149E944
.L_8149E93C:
/* 8149E93C | 38 60 FF D2 */	li r3, -0x2e
/* 8149E940 | 48 00 00 20 */	b .L_8149E960
.L_8149E944:
/* 8149E944 | 38 60 FF DA */	li r3, -0x26
/* 8149E948 | 48 00 00 18 */	b .L_8149E960
.L_8149E94C:
/* 8149E94C | 38 60 FF D5 */	li r3, -0x2b
/* 8149E950 | 48 00 00 10 */	b .L_8149E960
.L_8149E954:
/* 8149E954 | 38 60 FF D5 */	li r3, -0x2b
/* 8149E958 | 48 00 00 08 */	b .L_8149E960
.L_8149E95C:
/* 8149E95C | 38 60 00 00 */	li r3, 0x0
.L_8149E960:
/* 8149E960 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E964 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149E968 | 7C 08 03 A6 */	mtlr r0
/* 8149E96C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E970 | 4E 80 00 20 */	blr
.endfn NWC24MountVF

# .text:0xD6C | 0x8149E974 | size: 0x80
.fn NWC24UnmountVF, global
/* 8149E974 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E978 | 7C 08 02 A6 */	mflr r0
/* 8149E97C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149E980 | 48 03 1C D9 */	bl VFUnmountDrive
/* 8149E984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149E988 | 41 82 00 58 */	beq .L_8149E9E0
/* 8149E98C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149E990 | 40 82 00 48 */	bne .L_8149E9D8
/* 8149E994 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149E998 | 48 03 2A 85 */	bl VFGetLastDeviceError
/* 8149E99C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149E9A0 | 41 82 00 20 */	beq .L_8149E9C0
/* 8149E9A4 | 40 80 00 10 */	bge .L_8149E9B4
/* 8149E9A8 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149E9AC | 41 82 00 14 */	beq .L_8149E9C0
/* 8149E9B0 | 48 00 00 20 */	b .L_8149E9D0
.L_8149E9B4:
/* 8149E9B4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149E9B8 | 40 80 00 18 */	bge .L_8149E9D0
/* 8149E9BC | 48 00 00 0C */	b .L_8149E9C8
.L_8149E9C0:
/* 8149E9C0 | 38 60 FF D2 */	li r3, -0x2e
/* 8149E9C4 | 48 00 00 20 */	b .L_8149E9E4
.L_8149E9C8:
/* 8149E9C8 | 38 60 FF DA */	li r3, -0x26
/* 8149E9CC | 48 00 00 18 */	b .L_8149E9E4
.L_8149E9D0:
/* 8149E9D0 | 38 60 FF D5 */	li r3, -0x2b
/* 8149E9D4 | 48 00 00 10 */	b .L_8149E9E4
.L_8149E9D8:
/* 8149E9D8 | 38 60 FF D5 */	li r3, -0x2b
/* 8149E9DC | 48 00 00 08 */	b .L_8149E9E4
.L_8149E9E0:
/* 8149E9E0 | 38 60 00 00 */	li r3, 0x0
.L_8149E9E4:
/* 8149E9E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149E9E8 | 7C 08 03 A6 */	mtlr r0
/* 8149E9EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149E9F0 | 4E 80 00 20 */	blr
.endfn NWC24UnmountVF

# .text:0xDEC | 0x8149E9F4 | size: 0x94
.fn NWC24CheckSizeVF, global
/* 8149E9F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149E9F8 | 7C 08 02 A6 */	mflr r0
/* 8149E9FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149EA00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149EA04 | 7C 9F 23 78 */	mr r31, r4
/* 8149EA08 | 48 03 25 E9 */	bl VFGetDriveFreeSize
/* 8149EA0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EA10 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8149EA14 | 40 80 00 5C */	bge .L_8149EA70
/* 8149EA18 | 48 03 29 A5 */	bl VFGetLastError
/* 8149EA1C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149EA20 | 40 82 00 48 */	bne .L_8149EA68
/* 8149EA24 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EA28 | 48 03 29 F5 */	bl VFGetLastDeviceError
/* 8149EA2C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EA30 | 41 82 00 20 */	beq .L_8149EA50
/* 8149EA34 | 40 80 00 10 */	bge .L_8149EA44
/* 8149EA38 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EA3C | 41 82 00 14 */	beq .L_8149EA50
/* 8149EA40 | 48 00 00 20 */	b .L_8149EA60
.L_8149EA44:
/* 8149EA44 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EA48 | 40 80 00 18 */	bge .L_8149EA60
/* 8149EA4C | 48 00 00 0C */	b .L_8149EA58
.L_8149EA50:
/* 8149EA50 | 38 60 FF D2 */	li r3, -0x2e
/* 8149EA54 | 48 00 00 20 */	b .L_8149EA74
.L_8149EA58:
/* 8149EA58 | 38 60 FF DA */	li r3, -0x26
/* 8149EA5C | 48 00 00 18 */	b .L_8149EA74
.L_8149EA60:
/* 8149EA60 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EA64 | 48 00 00 10 */	b .L_8149EA74
.L_8149EA68:
/* 8149EA68 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EA6C | 48 00 00 08 */	b .L_8149EA74
.L_8149EA70:
/* 8149EA70 | 38 60 00 00 */	li r3, 0x0
.L_8149EA74:
/* 8149EA74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149EA78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149EA7C | 7C 08 03 A6 */	mtlr r0
/* 8149EA80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149EA84 | 4E 80 00 20 */	blr
.endfn NWC24CheckSizeVF

# .text:0xE80 | 0x8149EA88 | size: 0x3B8
.fn NWC24CreateVF, global
/* 8149EA88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149EA8C | 7C 08 02 A6 */	mflr r0
/* 8149EA90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149EA94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149EA98 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149EA9C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149EAA0 | 7C 7D 1B 78 */	mr r29, r3
/* 8149EAA4 | 48 03 13 71 */	bl VFCreateSystemFileNANDFlashEx
/* 8149EAA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EAAC | 7C 7F 1B 78 */	mr r31, r3
/* 8149EAB0 | 41 82 00 58 */	beq .L_8149EB08
/* 8149EAB4 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149EAB8 | 40 82 00 48 */	bne .L_8149EB00
/* 8149EABC | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EAC0 | 48 03 29 5D */	bl VFGetLastDeviceError
/* 8149EAC4 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EAC8 | 41 82 00 20 */	beq .L_8149EAE8
/* 8149EACC | 40 80 00 10 */	bge .L_8149EADC
/* 8149EAD0 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EAD4 | 41 82 00 14 */	beq .L_8149EAE8
/* 8149EAD8 | 48 00 00 20 */	b .L_8149EAF8
.L_8149EADC:
/* 8149EADC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EAE0 | 40 80 00 18 */	bge .L_8149EAF8
/* 8149EAE4 | 48 00 00 0C */	b .L_8149EAF0
.L_8149EAE8:
/* 8149EAE8 | 38 60 FF D2 */	li r3, -0x2e
/* 8149EAEC | 48 00 03 38 */	b .L_8149EE24
.L_8149EAF0:
/* 8149EAF0 | 38 60 FF DA */	li r3, -0x26
/* 8149EAF4 | 48 00 03 30 */	b .L_8149EE24
.L_8149EAF8:
/* 8149EAF8 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EAFC | 48 00 03 28 */	b .L_8149EE24
.L_8149EB00:
/* 8149EB00 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EB04 | 48 00 03 20 */	b .L_8149EE24
.L_8149EB08:
/* 8149EB08 | 7F A3 EB 78 */	mr r3, r29
/* 8149EB0C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8149EB10 | 48 0C 63 41 */	bl NANDPrivateGetStatus
/* 8149EB14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EB18 | 41 82 00 0C */	beq .L_8149EB24
/* 8149EB1C | 38 60 FF FF */	li r3, -0x1
/* 8149EB20 | 48 00 03 04 */	b .L_8149EE24
.L_8149EB24:
/* 8149EB24 | 38 00 00 3F */	li r0, 0x3f
/* 8149EB28 | 7F A3 EB 78 */	mr r3, r29
/* 8149EB2C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8149EB30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8149EB34 | 48 0C 65 B1 */	bl NANDPrivateSetStatus
/* 8149EB38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EB3C | 41 82 00 0C */	beq .L_8149EB48
/* 8149EB40 | 38 60 FF FF */	li r3, -0x1
/* 8149EB44 | 48 00 02 E0 */	b .L_8149EE24
.L_8149EB48:
/* 8149EB48 | 3B CD 9B 00 */	li r30, lbl_81697B40@sda21
/* 8149EB4C | 7F A4 EB 78 */	mr r4, r29
/* 8149EB50 | 7F C3 F3 78 */	mr r3, r30
/* 8149EB54 | 48 03 15 B9 */	bl VFMountDriveNANDFlashEx
/* 8149EB58 | 3C 03 00 00 */	addis r0, r3, 0x0
/* 8149EB5C | 28 00 B0 01 */	cmplwi r0, 0xb001
/* 8149EB60 | 40 82 00 0C */	bne .L_8149EB6C
/* 8149EB64 | 38 00 FF EC */	li r0, -0x14
/* 8149EB68 | 48 00 00 CC */	b .L_8149EC34
.L_8149EB6C:
/* 8149EB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EB70 | 41 82 00 58 */	beq .L_8149EBC8
/* 8149EB74 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149EB78 | 40 82 00 48 */	bne .L_8149EBC0
/* 8149EB7C | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EB80 | 48 03 28 9D */	bl VFGetLastDeviceError
/* 8149EB84 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EB88 | 41 82 00 20 */	beq .L_8149EBA8
/* 8149EB8C | 40 80 00 10 */	bge .L_8149EB9C
/* 8149EB90 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EB94 | 41 82 00 14 */	beq .L_8149EBA8
/* 8149EB98 | 48 00 00 20 */	b .L_8149EBB8
.L_8149EB9C:
/* 8149EB9C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EBA0 | 40 80 00 18 */	bge .L_8149EBB8
/* 8149EBA4 | 48 00 00 0C */	b .L_8149EBB0
.L_8149EBA8:
/* 8149EBA8 | 38 00 FF D2 */	li r0, -0x2e
/* 8149EBAC | 48 00 00 88 */	b .L_8149EC34
.L_8149EBB0:
/* 8149EBB0 | 38 00 FF DA */	li r0, -0x26
/* 8149EBB4 | 48 00 00 80 */	b .L_8149EC34
.L_8149EBB8:
/* 8149EBB8 | 38 00 FF D5 */	li r0, -0x2b
/* 8149EBBC | 48 00 00 78 */	b .L_8149EC34
.L_8149EBC0:
/* 8149EBC0 | 38 00 FF D5 */	li r0, -0x2b
/* 8149EBC4 | 48 00 00 70 */	b .L_8149EC34
.L_8149EBC8:
/* 8149EBC8 | 7F C3 F3 78 */	mr r3, r30
/* 8149EBCC | 38 80 00 01 */	li r4, 0x1
/* 8149EBD0 | 48 03 27 59 */	bl VFSync
/* 8149EBD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EBD8 | 41 82 00 58 */	beq .L_8149EC30
/* 8149EBDC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149EBE0 | 40 82 00 48 */	bne .L_8149EC28
/* 8149EBE4 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EBE8 | 48 03 28 35 */	bl VFGetLastDeviceError
/* 8149EBEC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EBF0 | 41 82 00 20 */	beq .L_8149EC10
/* 8149EBF4 | 40 80 00 10 */	bge .L_8149EC04
/* 8149EBF8 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EBFC | 41 82 00 14 */	beq .L_8149EC10
/* 8149EC00 | 48 00 00 20 */	b .L_8149EC20
.L_8149EC04:
/* 8149EC04 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EC08 | 40 80 00 18 */	bge .L_8149EC20
/* 8149EC0C | 48 00 00 0C */	b .L_8149EC18
.L_8149EC10:
/* 8149EC10 | 38 00 FF D2 */	li r0, -0x2e
/* 8149EC14 | 48 00 00 20 */	b .L_8149EC34
.L_8149EC18:
/* 8149EC18 | 38 00 FF DA */	li r0, -0x26
/* 8149EC1C | 48 00 00 18 */	b .L_8149EC34
.L_8149EC20:
/* 8149EC20 | 38 00 FF D5 */	li r0, -0x2b
/* 8149EC24 | 48 00 00 10 */	b .L_8149EC34
.L_8149EC28:
/* 8149EC28 | 38 00 FF D5 */	li r0, -0x2b
/* 8149EC2C | 48 00 00 08 */	b .L_8149EC34
.L_8149EC30:
/* 8149EC30 | 38 00 00 00 */	li r0, 0x0
.L_8149EC34:
/* 8149EC34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149EC38 | 41 82 00 58 */	beq .L_8149EC90
/* 8149EC3C | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 8149EC40 | 40 82 00 48 */	bne .L_8149EC88
/* 8149EC44 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EC48 | 48 03 27 D5 */	bl VFGetLastDeviceError
/* 8149EC4C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EC50 | 41 82 00 20 */	beq .L_8149EC70
/* 8149EC54 | 40 80 00 10 */	bge .L_8149EC64
/* 8149EC58 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EC5C | 41 82 00 14 */	beq .L_8149EC70
/* 8149EC60 | 48 00 00 20 */	b .L_8149EC80
.L_8149EC64:
/* 8149EC64 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EC68 | 40 80 00 18 */	bge .L_8149EC80
/* 8149EC6C | 48 00 00 0C */	b .L_8149EC78
.L_8149EC70:
/* 8149EC70 | 38 60 FF D2 */	li r3, -0x2e
/* 8149EC74 | 48 00 01 B0 */	b .L_8149EE24
.L_8149EC78:
/* 8149EC78 | 38 60 FF DA */	li r3, -0x26
/* 8149EC7C | 48 00 01 A8 */	b .L_8149EE24
.L_8149EC80:
/* 8149EC80 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EC84 | 48 00 01 A0 */	b .L_8149EE24
.L_8149EC88:
/* 8149EC88 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EC8C | 48 00 01 98 */	b .L_8149EE24
.L_8149EC90:
/* 8149EC90 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EC94 | 48 03 21 B1 */	bl VFFormatDrive
/* 8149EC98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EC9C | 41 82 00 58 */	beq .L_8149ECF4
/* 8149ECA0 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149ECA4 | 40 82 00 48 */	bne .L_8149ECEC
/* 8149ECA8 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149ECAC | 48 03 27 71 */	bl VFGetLastDeviceError
/* 8149ECB0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149ECB4 | 41 82 00 20 */	beq .L_8149ECD4
/* 8149ECB8 | 40 80 00 10 */	bge .L_8149ECC8
/* 8149ECBC | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149ECC0 | 41 82 00 14 */	beq .L_8149ECD4
/* 8149ECC4 | 48 00 00 20 */	b .L_8149ECE4
.L_8149ECC8:
/* 8149ECC8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149ECCC | 40 80 00 18 */	bge .L_8149ECE4
/* 8149ECD0 | 48 00 00 0C */	b .L_8149ECDC
.L_8149ECD4:
/* 8149ECD4 | 38 60 FF D2 */	li r3, -0x2e
/* 8149ECD8 | 48 00 01 4C */	b .L_8149EE24
.L_8149ECDC:
/* 8149ECDC | 38 60 FF DA */	li r3, -0x26
/* 8149ECE0 | 48 00 01 44 */	b .L_8149EE24
.L_8149ECE4:
/* 8149ECE4 | 38 60 FF D5 */	li r3, -0x2b
/* 8149ECE8 | 48 00 01 3C */	b .L_8149EE24
.L_8149ECEC:
/* 8149ECEC | 38 60 FF D5 */	li r3, -0x2b
/* 8149ECF0 | 48 00 01 34 */	b .L_8149EE24
.L_8149ECF4:
/* 8149ECF4 | 38 6D 9B 08 */	li r3, lbl_81697B48@sda21
/* 8149ECF8 | 48 03 1F 55 */	bl VFCreateDir
/* 8149ECFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149ED00 | 7C 7F 1B 78 */	mr r31, r3
/* 8149ED04 | 41 82 00 58 */	beq .L_8149ED5C
/* 8149ED08 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149ED0C | 40 82 00 48 */	bne .L_8149ED54
/* 8149ED10 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149ED14 | 48 03 27 09 */	bl VFGetLastDeviceError
/* 8149ED18 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149ED1C | 41 82 00 20 */	beq .L_8149ED3C
/* 8149ED20 | 40 80 00 10 */	bge .L_8149ED30
/* 8149ED24 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149ED28 | 41 82 00 14 */	beq .L_8149ED3C
/* 8149ED2C | 48 00 00 20 */	b .L_8149ED4C
.L_8149ED30:
/* 8149ED30 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149ED34 | 40 80 00 18 */	bge .L_8149ED4C
/* 8149ED38 | 48 00 00 0C */	b .L_8149ED44
.L_8149ED3C:
/* 8149ED3C | 38 60 FF D2 */	li r3, -0x2e
/* 8149ED40 | 48 00 00 E4 */	b .L_8149EE24
.L_8149ED44:
/* 8149ED44 | 38 60 FF DA */	li r3, -0x26
/* 8149ED48 | 48 00 00 DC */	b .L_8149EE24
.L_8149ED4C:
/* 8149ED4C | 38 60 FF D5 */	li r3, -0x2b
/* 8149ED50 | 48 00 00 D4 */	b .L_8149EE24
.L_8149ED54:
/* 8149ED54 | 38 60 FF D5 */	li r3, -0x2b
/* 8149ED58 | 48 00 00 CC */	b .L_8149EE24
.L_8149ED5C:
/* 8149ED5C | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149ED60 | 48 03 18 F9 */	bl VFUnmountDrive
/* 8149ED64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149ED68 | 41 82 00 58 */	beq .L_8149EDC0
/* 8149ED6C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149ED70 | 40 82 00 48 */	bne .L_8149EDB8
/* 8149ED74 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149ED78 | 48 03 26 A5 */	bl VFGetLastDeviceError
/* 8149ED7C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149ED80 | 41 82 00 20 */	beq .L_8149EDA0
/* 8149ED84 | 40 80 00 10 */	bge .L_8149ED94
/* 8149ED88 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149ED8C | 41 82 00 14 */	beq .L_8149EDA0
/* 8149ED90 | 48 00 00 20 */	b .L_8149EDB0
.L_8149ED94:
/* 8149ED94 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149ED98 | 40 80 00 18 */	bge .L_8149EDB0
/* 8149ED9C | 48 00 00 0C */	b .L_8149EDA8
.L_8149EDA0:
/* 8149EDA0 | 38 00 FF D2 */	li r0, -0x2e
/* 8149EDA4 | 48 00 00 20 */	b .L_8149EDC4
.L_8149EDA8:
/* 8149EDA8 | 38 00 FF DA */	li r0, -0x26
/* 8149EDAC | 48 00 00 18 */	b .L_8149EDC4
.L_8149EDB0:
/* 8149EDB0 | 38 00 FF D5 */	li r0, -0x2b
/* 8149EDB4 | 48 00 00 10 */	b .L_8149EDC4
.L_8149EDB8:
/* 8149EDB8 | 38 00 FF D5 */	li r0, -0x2b
/* 8149EDBC | 48 00 00 08 */	b .L_8149EDC4
.L_8149EDC0:
/* 8149EDC0 | 38 00 00 00 */	li r0, 0x0
.L_8149EDC4:
/* 8149EDC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149EDC8 | 41 82 00 58 */	beq .L_8149EE20
/* 8149EDCC | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 8149EDD0 | 40 82 00 48 */	bne .L_8149EE18
/* 8149EDD4 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EDD8 | 48 03 26 45 */	bl VFGetLastDeviceError
/* 8149EDDC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EDE0 | 41 82 00 20 */	beq .L_8149EE00
/* 8149EDE4 | 40 80 00 10 */	bge .L_8149EDF4
/* 8149EDE8 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EDEC | 41 82 00 14 */	beq .L_8149EE00
/* 8149EDF0 | 48 00 00 20 */	b .L_8149EE10
.L_8149EDF4:
/* 8149EDF4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EDF8 | 40 80 00 18 */	bge .L_8149EE10
/* 8149EDFC | 48 00 00 0C */	b .L_8149EE08
.L_8149EE00:
/* 8149EE00 | 38 60 FF D2 */	li r3, -0x2e
/* 8149EE04 | 48 00 00 20 */	b .L_8149EE24
.L_8149EE08:
/* 8149EE08 | 38 60 FF DA */	li r3, -0x26
/* 8149EE0C | 48 00 00 18 */	b .L_8149EE24
.L_8149EE10:
/* 8149EE10 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EE14 | 48 00 00 10 */	b .L_8149EE24
.L_8149EE18:
/* 8149EE18 | 38 60 FF D5 */	li r3, -0x2b
/* 8149EE1C | 48 00 00 08 */	b .L_8149EE24
.L_8149EE20:
/* 8149EE20 | 38 60 00 00 */	li r3, 0x0
.L_8149EE24:
/* 8149EE24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149EE28 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149EE2C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149EE30 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149EE34 | 7C 08 03 A6 */	mtlr r0
/* 8149EE38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149EE3C | 4E 80 00 20 */	blr
.endfn NWC24CreateVF

# .text:0x1238 | 0x8149EE40 | size: 0x194
.fn BufferedWrite, local
/* 8149EE40 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8149EE44 | 7C 08 02 A6 */	mflr r0
/* 8149EE48 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8149EE4C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8149EE50 | 48 15 A6 4D */	bl _savegpr_18
/* 8149EE54 | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 8149EE58 | 7C 7B 1B 78 */	mr r27, r3
/* 8149EE5C | 83 A5 00 08 */	lwz r29, 0x8(r5)
/* 8149EE60 | 7C 9E 23 78 */	mr r30, r4
/* 8149EE64 | 7C B7 2B 78 */	mr r23, r5
/* 8149EE68 | 3B 86 0B 00 */	addi r28, r6, 0xb00
/* 8149EE6C | 3B 20 00 00 */	li r25, 0x0
/* 8149EE70 | 3E 40 80 00 */	lis r18, 0x8000
/* 8149EE74 | 3E 60 10 62 */	lis r19, 0x1062
/* 8149EE78 | 3A 80 00 00 */	li r20, 0x0
/* 8149EE7C | 3A A0 03 E8 */	li r21, 0x3e8
/* 8149EE80 | 48 00 01 2C */	b .L_8149EFAC
.L_8149EE84:
/* 8149EE84 | 22 DD 08 00 */	subfic r22, r29, 0x800
/* 8149EE88 | 7C 1E B0 40 */	cmplw r30, r22
/* 8149EE8C | 40 80 00 08 */	bge .L_8149EE94
/* 8149EE90 | 7F D6 F3 78 */	mr r22, r30
.L_8149EE94:
/* 8149EE94 | 7F 64 DB 78 */	mr r4, r27
/* 8149EE98 | 7E C5 B3 78 */	mr r5, r22
/* 8149EE9C | 7C 7C EA 14 */	add r3, r28, r29
/* 8149EEA0 | 4B E9 13 91 */	bl memcpy
/* 8149EEA4 | 7F BD B2 14 */	add r29, r29, r22
/* 8149EEA8 | 7F D6 F0 50 */	subf r30, r22, r30
/* 8149EEAC | 28 1D 08 00 */	cmplwi r29, 0x800
/* 8149EEB0 | 7F 7B B2 14 */	add r27, r27, r22
/* 8149EEB4 | 41 80 00 F8 */	blt .L_8149EFAC
/* 8149EEB8 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 8149EEBC | 3B A0 00 00 */	li r29, 0x0
/* 8149EEC0 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149EEC4 | 41 82 00 70 */	beq .L_8149EF34
/* 8149EEC8 | 80 77 00 98 */	lwz r3, 0x98(r23)
/* 8149EECC | 7F 84 E3 78 */	mr r4, r28
/* 8149EED0 | 38 A0 08 00 */	li r5, 0x800
/* 8149EED4 | 48 03 1C 45 */	bl VFWriteFile
/* 8149EED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149EEDC | 41 82 00 D0 */	beq .L_8149EFAC
/* 8149EEE0 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149EEE4 | 40 82 00 48 */	bne .L_8149EF2C
/* 8149EEE8 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149EEEC | 48 03 25 31 */	bl VFGetLastDeviceError
/* 8149EEF0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149EEF4 | 41 82 00 20 */	beq .L_8149EF14
/* 8149EEF8 | 40 80 00 10 */	bge .L_8149EF08
/* 8149EEFC | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149EF00 | 41 82 00 14 */	beq .L_8149EF14
/* 8149EF04 | 48 00 00 20 */	b .L_8149EF24
.L_8149EF08:
/* 8149EF08 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149EF0C | 40 80 00 18 */	bge .L_8149EF24
/* 8149EF10 | 48 00 00 0C */	b .L_8149EF1C
.L_8149EF14:
/* 8149EF14 | 3B 20 FF D2 */	li r25, -0x2e
/* 8149EF18 | 48 00 00 9C */	b .L_8149EFB4
.L_8149EF1C:
/* 8149EF1C | 3B 20 FF DA */	li r25, -0x26
/* 8149EF20 | 48 00 00 94 */	b .L_8149EFB4
.L_8149EF24:
/* 8149EF24 | 3B 20 FF ED */	li r25, -0x13
/* 8149EF28 | 48 00 00 8C */	b .L_8149EFB4
.L_8149EF2C:
/* 8149EF2C | 3B 20 FF ED */	li r25, -0x13
/* 8149EF30 | 48 00 00 84 */	b .L_8149EFB4
.L_8149EF34:
/* 8149EF34 | 7E D4 A9 D6 */	mullw r22, r20, r21
/* 8149EF38 | 3B F3 4D D3 */	addi r31, r19, 0x4dd3
/* 8149EF3C | 3B 00 00 00 */	li r24, 0x0
.L_8149EF40:
/* 8149EF40 | 7F 84 E3 78 */	mr r4, r28
/* 8149EF44 | 38 77 00 0C */	addi r3, r23, 0xc
/* 8149EF48 | 38 A0 08 00 */	li r5, 0x800
/* 8149EF4C | 48 0C 51 95 */	bl NANDWrite
/* 8149EF50 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149EF54 | 7C 7A 1B 78 */	mr r26, r3
/* 8149EF58 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149EF5C | 41 81 00 30 */	bgt .L_8149EF8C
/* 8149EF60 | 80 12 00 F8 */	lwz r0, 0xf8(r18)
/* 8149EF64 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149EF68 | 7C 1F 00 16 */	mulhwu r0, r31, r0
/* 8149EF6C | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149EF70 | 7C 03 A8 16 */	mulhwu r0, r3, r21
/* 8149EF74 | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149EF78 | 7C 60 B2 14 */	add r3, r0, r22
/* 8149EF7C | 48 09 6C 51 */	bl OSSleepTicks
/* 8149EF80 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8149EF84 | 28 18 00 03 */	cmplwi r24, 0x3
/* 8149EF88 | 41 80 FF B8 */	blt .L_8149EF40
.L_8149EF8C:
/* 8149EF8C | 2C 1A FF FC */	cmpwi r26, -0x4
/* 8149EF90 | 40 82 00 0C */	bne .L_8149EF9C
/* 8149EF94 | 38 60 FF DA */	li r3, -0x26
/* 8149EF98 | 48 00 00 24 */	b .L_8149EFBC
.L_8149EF9C:
/* 8149EF9C | 2C 1A 08 00 */	cmpwi r26, 0x800
/* 8149EFA0 | 41 82 00 0C */	beq .L_8149EFAC
/* 8149EFA4 | 3B 20 FF ED */	li r25, -0x13
/* 8149EFA8 | 48 00 00 0C */	b .L_8149EFB4
.L_8149EFAC:
/* 8149EFAC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8149EFB0 | 40 82 FE D4 */	bne .L_8149EE84
.L_8149EFB4:
/* 8149EFB4 | 93 B7 00 08 */	stw r29, 0x8(r23)
/* 8149EFB8 | 7F 23 CB 78 */	mr r3, r25
.L_8149EFBC:
/* 8149EFBC | 39 61 00 40 */	addi r11, r1, 0x40
/* 8149EFC0 | 48 15 A5 29 */	bl _restgpr_18
/* 8149EFC4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8149EFC8 | 7C 08 03 A6 */	mtlr r0
/* 8149EFCC | 38 21 00 40 */	addi r1, r1, 0x40
/* 8149EFD0 | 4E 80 00 20 */	blr
.endfn BufferedWrite

# .text:0x13CC | 0x8149EFD4 | size: 0x170
.fn BufferedWriteFlush, local
/* 8149EFD4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149EFD8 | 7C 08 02 A6 */	mflr r0
/* 8149EFDC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149EFE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149EFE4 | 48 15 A4 C9 */	bl _savegpr_22
/* 8149EFE8 | 83 E3 00 08 */	lwz r31, 0x8(r3)
/* 8149EFEC | 7C 7C 1B 78 */	mr r28, r3
/* 8149EFF0 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 8149EFF4 | 3B A0 00 00 */	li r29, 0x0
/* 8149EFF8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149EFFC | 3B C4 0B 00 */	addi r30, r4, 0xb00
/* 8149F000 | 40 82 00 0C */	bne .L_8149F00C
/* 8149F004 | 38 60 00 00 */	li r3, 0x0
/* 8149F008 | 48 00 01 24 */	b .L_8149F12C
.L_8149F00C:
/* 8149F00C | 7C 9E FA 14 */	add r4, r30, r31
/* 8149F010 | 38 A0 00 00 */	li r5, 0x0
/* 8149F014 | 48 00 00 10 */	b .L_8149F024
.L_8149F018:
/* 8149F018 | 98 A4 00 00 */	stb r5, 0x0(r4)
/* 8149F01C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8149F020 | 38 84 00 01 */	addi r4, r4, 0x1
.L_8149F024:
/* 8149F024 | 57 E0 06 FF */	clrlwi. r0, r31, 27
/* 8149F028 | 40 82 FF F0 */	bne .L_8149F018
/* 8149F02C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149F030 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149F034 | 41 82 00 74 */	beq .L_8149F0A8
/* 8149F038 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8149F03C | 7F C4 F3 78 */	mr r4, r30
/* 8149F040 | 7F E5 FB 78 */	mr r5, r31
/* 8149F044 | 48 03 1A D5 */	bl VFWriteFile
/* 8149F048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F04C | 41 82 00 54 */	beq .L_8149F0A0
/* 8149F050 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149F054 | 40 82 00 48 */	bne .L_8149F09C
/* 8149F058 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149F05C | 48 03 23 C1 */	bl VFGetLastDeviceError
/* 8149F060 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149F064 | 41 82 00 20 */	beq .L_8149F084
/* 8149F068 | 40 80 00 10 */	bge .L_8149F078
/* 8149F06C | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149F070 | 41 82 00 14 */	beq .L_8149F084
/* 8149F074 | 48 00 00 20 */	b .L_8149F094
.L_8149F078:
/* 8149F078 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149F07C | 40 80 00 18 */	bge .L_8149F094
/* 8149F080 | 48 00 00 0C */	b .L_8149F08C
.L_8149F084:
/* 8149F084 | 3B A0 FF D2 */	li r29, -0x2e
/* 8149F088 | 48 00 00 18 */	b .L_8149F0A0
.L_8149F08C:
/* 8149F08C | 3B A0 FF DA */	li r29, -0x26
/* 8149F090 | 48 00 00 10 */	b .L_8149F0A0
.L_8149F094:
/* 8149F094 | 3B A0 FF ED */	li r29, -0x13
/* 8149F098 | 48 00 00 08 */	b .L_8149F0A0
.L_8149F09C:
/* 8149F09C | 3B A0 FF ED */	li r29, -0x13
.L_8149F0A0:
/* 8149F0A0 | 7F A3 EB 78 */	mr r3, r29
/* 8149F0A4 | 48 00 00 88 */	b .L_8149F12C
.L_8149F0A8:
/* 8149F0A8 | 3A C0 00 00 */	li r22, 0x0
/* 8149F0AC | 3B 40 03 E8 */	li r26, 0x3e8
/* 8149F0B0 | 7F 76 D1 D6 */	mullw r27, r22, r26
/* 8149F0B4 | 3C 60 10 62 */	lis r3, 0x1062
/* 8149F0B8 | 3F 20 80 00 */	lis r25, 0x8000
/* 8149F0BC | 3B 03 4D D3 */	addi r24, r3, 0x4dd3
.L_8149F0C0:
/* 8149F0C0 | 7F C4 F3 78 */	mr r4, r30
/* 8149F0C4 | 7F E5 FB 78 */	mr r5, r31
/* 8149F0C8 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 8149F0CC | 48 0C 50 15 */	bl NANDWrite
/* 8149F0D0 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149F0D4 | 7C 77 1B 78 */	mr r23, r3
/* 8149F0D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149F0DC | 41 81 00 30 */	bgt .L_8149F10C
/* 8149F0E0 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 8149F0E4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149F0E8 | 7C 18 00 16 */	mulhwu r0, r24, r0
/* 8149F0EC | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149F0F0 | 7C 03 D0 16 */	mulhwu r0, r3, r26
/* 8149F0F4 | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149F0F8 | 7C 60 DA 14 */	add r3, r0, r27
/* 8149F0FC | 48 09 6A D1 */	bl OSSleepTicks
/* 8149F100 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8149F104 | 28 16 00 03 */	cmplwi r22, 0x3
/* 8149F108 | 41 80 FF B8 */	blt .L_8149F0C0
.L_8149F10C:
/* 8149F10C | 2C 17 FF FC */	cmpwi r23, -0x4
/* 8149F110 | 40 82 00 0C */	bne .L_8149F11C
/* 8149F114 | 38 60 FF DA */	li r3, -0x26
/* 8149F118 | 48 00 00 14 */	b .L_8149F12C
.L_8149F11C:
/* 8149F11C | 7C 17 F8 40 */	cmplw r23, r31
/* 8149F120 | 41 82 00 08 */	beq .L_8149F128
/* 8149F124 | 3B A0 FF ED */	li r29, -0x13
.L_8149F128:
/* 8149F128 | 7F A3 EB 78 */	mr r3, r29
.L_8149F12C:
/* 8149F12C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149F130 | 48 15 A3 C9 */	bl _restgpr_22
/* 8149F134 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149F138 | 7C 08 03 A6 */	mtlr r0
/* 8149F13C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149F140 | 4E 80 00 20 */	blr
.endfn BufferedWriteFlush

# .text:0x153C | 0x8149F144 | size: 0x1EC
.fn BufferedRead, local
/* 8149F144 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8149F148 | 7C 08 02 A6 */	mflr r0
/* 8149F14C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8149F150 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8149F154 | 48 15 A3 3D */	bl _savegpr_15
/* 8149F158 | 80 0D AD 88 */	lwz r0, RdBufferMutex@sda21(r0)
/* 8149F15C | 7C 8F 23 78 */	mr r15, r4
/* 8149F160 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 8149F164 | 7C 73 1B 78 */	mr r19, r3
/* 8149F168 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149F16C | 7C B0 2B 78 */	mr r16, r5
/* 8149F170 | 7D F9 7B 78 */	mr r25, r15
/* 8149F174 | 3A 84 09 00 */	addi r20, r4, 0x900
/* 8149F178 | 3A 40 00 00 */	li r18, 0x0
/* 8149F17C | 41 82 00 0C */	beq .L_8149F188
/* 8149F180 | 38 60 FF EA */	li r3, -0x16
/* 8149F184 | 48 00 01 94 */	b .L_8149F318
.L_8149F188:
/* 8149F188 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8149F18C | 90 0D AD 88 */	stw r0, RdBufferMutex@sda21(r0)
/* 8149F190 | 82 A5 00 08 */	lwz r21, 0x8(r5)
/* 8149F194 | 56 A0 00 01 */	clrrwi. r0, r21, 31
/* 8149F198 | 41 82 00 0C */	beq .L_8149F1A4
/* 8149F19C | 38 60 FF D8 */	li r3, -0x28
/* 8149F1A0 | 48 00 01 78 */	b .L_8149F318
.L_8149F1A4:
/* 8149F1A4 | 3F 60 80 00 */	lis r27, 0x8000
/* 8149F1A8 | 3F 80 10 62 */	lis r28, 0x1062
/* 8149F1AC | 3B A0 00 00 */	li r29, 0x0
/* 8149F1B0 | 3B C0 03 E8 */	li r30, 0x3e8
/* 8149F1B4 | 48 00 01 3C */	b .L_8149F2F0
.L_8149F1B8:
/* 8149F1B8 | 22 F5 02 00 */	subfic r23, r21, 0x200
/* 8149F1BC | 3B 00 02 00 */	li r24, 0x200
/* 8149F1C0 | 7C 19 B8 40 */	cmplw r25, r23
/* 8149F1C4 | 40 80 00 14 */	bge .L_8149F1D8
/* 8149F1C8 | 7C 79 AA 14 */	add r3, r25, r21
/* 8149F1CC | 7F 37 CB 78 */	mr r23, r25
/* 8149F1D0 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8149F1D4 | 54 18 00 34 */	clrrwi r24, r0, 5
.L_8149F1D8:
/* 8149F1D8 | 80 10 00 04 */	lwz r0, 0x4(r16)
/* 8149F1DC | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8149F1E0 | 41 82 00 7C */	beq .L_8149F25C
/* 8149F1E4 | 80 70 00 98 */	lwz r3, 0x98(r16)
/* 8149F1E8 | 7E 84 A3 78 */	mr r4, r20
/* 8149F1EC | 7F 05 C3 78 */	mr r5, r24
/* 8149F1F0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149F1F4 | 48 03 18 89 */	bl VFReadFile
/* 8149F1F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F1FC | 41 82 00 58 */	beq .L_8149F254
/* 8149F200 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8149F204 | 40 82 00 48 */	bne .L_8149F24C
/* 8149F208 | 38 6D 9B 00 */	li r3, lbl_81697B40@sda21
/* 8149F20C | 48 03 22 11 */	bl VFGetLastDeviceError
/* 8149F210 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8149F214 | 41 82 00 20 */	beq .L_8149F234
/* 8149F218 | 40 80 00 10 */	bge .L_8149F228
/* 8149F21C | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 8149F220 | 41 82 00 14 */	beq .L_8149F234
/* 8149F224 | 48 00 00 20 */	b .L_8149F244
.L_8149F228:
/* 8149F228 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 8149F22C | 40 80 00 18 */	bge .L_8149F244
/* 8149F230 | 48 00 00 0C */	b .L_8149F23C
.L_8149F234:
/* 8149F234 | 3A 40 FF D2 */	li r18, -0x2e
/* 8149F238 | 48 00 00 C0 */	b .L_8149F2F8
.L_8149F23C:
/* 8149F23C | 3A 40 FF DA */	li r18, -0x26
/* 8149F240 | 48 00 00 B8 */	b .L_8149F2F8
.L_8149F244:
/* 8149F244 | 3A 40 FF EE */	li r18, -0x12
/* 8149F248 | 48 00 00 B0 */	b .L_8149F2F8
.L_8149F24C:
/* 8149F24C | 3A 40 FF EE */	li r18, -0x12
/* 8149F250 | 48 00 00 A8 */	b .L_8149F2F8
.L_8149F254:
/* 8149F254 | 82 C1 00 08 */	lwz r22, 0x8(r1)
/* 8149F258 | 48 00 00 6C */	b .L_8149F2C4
.L_8149F25C:
/* 8149F25C | 7F FD F1 D6 */	mullw r31, r29, r30
/* 8149F260 | 3B 5C 4D D3 */	addi r26, r28, 0x4dd3
/* 8149F264 | 3A 20 00 00 */	li r17, 0x0
.L_8149F268:
/* 8149F268 | 7E 84 A3 78 */	mr r4, r20
/* 8149F26C | 7F 05 C3 78 */	mr r5, r24
/* 8149F270 | 38 70 00 0C */	addi r3, r16, 0xc
/* 8149F274 | 48 0C 4D 8D */	bl NANDRead
/* 8149F278 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8149F27C | 7C 76 1B 78 */	mr r22, r3
/* 8149F280 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149F284 | 41 81 00 30 */	bgt .L_8149F2B4
/* 8149F288 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8149F28C | 54 00 F0 BE */	srwi r0, r0, 2
/* 8149F290 | 7C 1A 00 16 */	mulhwu r0, r26, r0
/* 8149F294 | 54 03 D1 BE */	srwi r3, r0, 6
/* 8149F298 | 7C 03 F0 16 */	mulhwu r0, r3, r30
/* 8149F29C | 1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8149F2A0 | 7C 60 FA 14 */	add r3, r0, r31
/* 8149F2A4 | 48 09 69 29 */	bl OSSleepTicks
/* 8149F2A8 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 8149F2AC | 28 11 00 03 */	cmplwi r17, 0x3
/* 8149F2B0 | 41 80 FF B8 */	blt .L_8149F268
.L_8149F2B4:
/* 8149F2B4 | 2C 16 FF FC */	cmpwi r22, -0x4
/* 8149F2B8 | 40 82 00 0C */	bne .L_8149F2C4
/* 8149F2BC | 38 60 FF DA */	li r3, -0x26
/* 8149F2C0 | 48 00 00 58 */	b .L_8149F318
.L_8149F2C4:
/* 8149F2C4 | 7C 16 C0 40 */	cmplw r22, r24
/* 8149F2C8 | 41 82 00 0C */	beq .L_8149F2D4
/* 8149F2CC | 3A 40 FF EE */	li r18, -0x12
/* 8149F2D0 | 48 00 00 28 */	b .L_8149F2F8
.L_8149F2D4:
/* 8149F2D4 | 7E 63 9B 78 */	mr r3, r19
/* 8149F2D8 | 7E E5 BB 78 */	mr r5, r23
/* 8149F2DC | 7C 94 AA 14 */	add r4, r20, r21
/* 8149F2E0 | 4B E9 0F 51 */	bl memcpy
/* 8149F2E4 | 7E 73 BA 14 */	add r19, r19, r23
/* 8149F2E8 | 7F 37 C8 50 */	subf r25, r23, r25
/* 8149F2EC | 3A A0 00 00 */	li r21, 0x0
.L_8149F2F0:
/* 8149F2F0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8149F2F4 | 40 82 FE C4 */	bne .L_8149F1B8
.L_8149F2F8:
/* 8149F2F8 | 80 90 00 08 */	lwz r4, 0x8(r16)
/* 8149F2FC | 38 00 00 00 */	li r0, 0x0
/* 8149F300 | 7E 43 93 78 */	mr r3, r18
/* 8149F304 | 7C 84 7A 14 */	add r4, r4, r15
/* 8149F308 | 54 84 06 FE */	clrlwi r4, r4, 27
/* 8149F30C | 64 84 80 00 */	oris r4, r4, 0x8000
/* 8149F310 | 90 90 00 08 */	stw r4, 0x8(r16)
/* 8149F314 | 90 0D AD 88 */	stw r0, RdBufferMutex@sda21(r0)
.L_8149F318:
/* 8149F318 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8149F31C | 48 15 A1 C1 */	bl _restgpr_15
/* 8149F320 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8149F324 | 7C 08 03 A6 */	mtlr r0
/* 8149F328 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8149F32C | 4E 80 00 20 */	blr
.endfn BufferedRead

# 0x8166D5F8..0x8166D628 | size: 0x30
.data
.balign 8

# .data:0x0 | 0x8166D5F8 | size: 0x2C
.obj jumptable_8166D5F8, local
	.rel NWC24iFOpenNand, .L_8149DD7C
	.rel NWC24iFOpenNand, .L_8149DD3C
	.rel NWC24iFOpenNand, .L_8149DD6C
	.rel NWC24iFOpenNand, .L_8149DD7C
	.rel NWC24iFOpenNand, .L_8149DD74
	.rel NWC24iFOpenNand, .L_8149DD7C
	.rel NWC24iFOpenNand, .L_8149DD7C
	.rel NWC24iFOpenNand, .L_8149DD7C
	.rel NWC24iFOpenNand, .L_8149DD7C
	.rel NWC24iFOpenNand, .L_8149DD3C
	.rel NWC24iFOpenNand, .L_8149DD6C
.endobj jumptable_8166D5F8

# .data:0x2C | 0x8166D624 | size: 0x4
.obj gap_08_8166D624_data, global
.hidden gap_08_8166D624_data
	.4byte 0x00000000
.endobj gap_08_8166D624_data

# 0x81697B38..0x81697B50 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B38 | size: 0x1
.obj lbl_81697B38, global
	.byte 0x77
.endobj lbl_81697B38

# .sdata:0x1 | 0x81697B39 | size: 0x3
.obj gap_11_81697B39_sdata, global
.hidden gap_11_81697B39_sdata
	.byte 0x00, 0x00, 0x00
.endobj gap_11_81697B39_sdata

# .sdata:0x4 | 0x81697B3C | size: 0x4
.obj lbl_81697B3C, global
	.4byte 0x72000000
.endobj lbl_81697B3C

# .sdata:0x8 | 0x81697B40 | size: 0x8
.obj lbl_81697B40, global
	.4byte 0x40323400
	.4byte 0x00000000
.endobj lbl_81697B40

# .sdata:0x10 | 0x81697B48 | size: 0x8
.obj lbl_81697B48, global
	.string "@24:/mb"
.endobj lbl_81697B48

# 0x81698DC8..0x81698DD8 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DC8 | size: 0x4
.obj RdBufferMutex, local
	.skip 0x4
.endobj RdBufferMutex

# .sbss:0x4 | 0x81698DCC | size: 0x4
.obj WrBufferMutex, local
	.skip 0x4
.endobj WrBufferMutex

# .sbss:0x8 | 0x81698DD0 | size: 0x4
.obj InstanceIdGen, local
	.skip 0x4
.endobj InstanceIdGen

# .sbss:0xC | 0x81698DD4 | size: 0x4
.obj gap_12_81698DD4_sbss, global
.hidden gap_12_81698DD4_sbss
	.skip 0x4
.endobj gap_12_81698DD4_sbss
