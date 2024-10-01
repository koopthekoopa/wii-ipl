.include "macros.inc"
.file "NWC24Download.c"

# 0x814AE9B8..0x814B1A88 | size: 0x30D0
.text
.balign 4

# .text:0x0 | 0x814AE9B8 | size: 0x240
.fn NWC24InitDlTask, global
/* 814AE9B8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814AE9BC | 7C 08 02 A6 */	mflr r0
/* 814AE9C0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814AE9C4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814AE9C8 | 48 14 AA F9 */	bl _savegpr_27
/* 814AE9CC | 3B A0 00 00 */	li r29, 0x0
/* 814AE9D0 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE9D4 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 814AE9D8 | 7C 9B 23 78 */	mr r27, r4
/* 814AE9DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AE9E0 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 814AE9E4 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 814AE9E8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AE9EC | 93 A1 00 18 */	stw r29, 0x18(r1)
/* 814AE9F0 | 93 A1 00 1C */	stw r29, 0x1c(r1)
/* 814AE9F4 | 93 A1 00 20 */	stw r29, 0x20(r1)
/* 814AE9F8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814AE9FC | 93 A1 00 28 */	stw r29, 0x28(r1)
/* 814AEA00 | 93 A1 00 2C */	stw r29, 0x2c(r1)
/* 814AEA04 | 93 A1 00 30 */	stw r29, 0x30(r1)
/* 814AEA08 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 814AEA0C | 93 A1 00 38 */	stw r29, 0x38(r1)
/* 814AEA10 | 93 A1 00 3C */	stw r29, 0x3c(r1)
/* 814AEA14 | 93 A1 00 40 */	stw r29, 0x40(r1)
/* 814AEA18 | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 814AEA1C | 48 0B 87 BD */	bl NANDGetHomeDir
/* 814AEA20 | 9B A1 00 17 */	stb r29, 0x17(r1)
/* 814AEA24 | 38 61 00 0F */	addi r3, r1, 0xf
/* 814AEA28 | 38 80 00 00 */	li r4, 0x0
/* 814AEA2C | 38 A0 00 10 */	li r5, 0x10
/* 814AEA30 | 48 15 5D 3D */	bl strtoul
/* 814AEA34 | 9B A1 00 20 */	stb r29, 0x20(r1)
/* 814AEA38 | 7C 7C 1B 78 */	mr r28, r3
/* 814AEA3C | 38 61 00 18 */	addi r3, r1, 0x18
/* 814AEA40 | 38 80 00 00 */	li r4, 0x0
/* 814AEA44 | 38 A0 00 10 */	li r5, 0x10
/* 814AEA48 | 48 15 5D 25 */	bl strtoul
/* 814AEA4C | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814AEA50 | 7C 7E 1B 78 */	mr r30, r3
/* 814AEA54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AEA58 | 41 82 00 08 */	beq .L_814AEA60
/* 814AEA5C | 3B A4 36 00 */	addi r29, r4, 0x3600
.L_814AEA60:
/* 814AEA60 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AEA64 | 40 82 00 0C */	bne .L_814AEA70
/* 814AEA68 | 38 60 FF F7 */	li r3, -0x9
/* 814AEA6C | 48 00 01 74 */	b .L_814AEBE0
.L_814AEA70:
/* 814AEA70 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AEA74 | 40 82 00 0C */	bne .L_814AEA80
/* 814AEA78 | 38 60 FF FD */	li r3, -0x3
/* 814AEA7C | 48 00 01 64 */	b .L_814AEBE0
.L_814AEA80:
/* 814AEA80 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 814AEA84 | 41 80 00 0C */	blt .L_814AEA90
/* 814AEA88 | 38 60 FF FD */	li r3, -0x3
/* 814AEA8C | 48 00 01 54 */	b .L_814AEBE0
.L_814AEA90:
/* 814AEA90 | 7F E3 FB 78 */	mr r3, r31
/* 814AEA94 | 38 80 00 00 */	li r4, 0x0
/* 814AEA98 | 38 A0 02 00 */	li r5, 0x200
/* 814AEA9C | 4B E8 18 99 */	bl memset
/* 814AEAA0 | 38 00 00 7F */	li r0, 0x7f
/* 814AEAA4 | 9B 7F 00 02 */	stb r27, 0x2(r31)
/* 814AEAA8 | 98 1F 00 03 */	stb r0, 0x3(r31)
/* 814AEAAC | 4B FF 0F 95 */	bl NWC24GetAppId
/* 814AEAB0 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 814AEAB4 | 4B FF 0F D9 */	bl NWC24GetGroupId
/* 814AEAB8 | 3C 80 00 01 */	lis r4, 0x1
/* 814AEABC | 38 A0 00 01 */	li r5, 0x1
/* 814AEAC0 | 38 C4 FF FF */	subi r6, r4, 0x1
/* 814AEAC4 | 38 00 05 A0 */	li r0, 0x5a0
/* 814AEAC8 | 38 80 0B 40 */	li r4, 0xb40
/* 814AEACC | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 814AEAD0 | B0 7F 00 14 */	sth r3, 0x14(r31)
/* 814AEAD4 | 93 9F 00 0C */	stw r28, 0xc(r31)
/* 814AEAD8 | 93 DF 00 10 */	stw r30, 0x10(r31)
/* 814AEADC | B0 DF 00 00 */	sth r6, 0x0(r31)
/* 814AEAE0 | B0 BF 00 18 */	sth r5, 0x18(r31)
/* 814AEAE4 | B0 9F 00 1C */	sth r4, 0x1c(r31)
/* 814AEAE8 | B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 814AEAEC | 41 82 00 0C */	beq .L_814AEAF8
/* 814AEAF0 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 814AEAF4 | 40 82 00 0C */	bne .L_814AEB00
.L_814AEAF8:
/* 814AEAF8 | 38 00 00 01 */	li r0, 0x1
/* 814AEAFC | 48 00 00 08 */	b .L_814AEB04
.L_814AEB00:
/* 814AEB00 | 38 00 00 00 */	li r0, 0x0
.L_814AEB04:
/* 814AEB04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AEB08 | 41 82 00 14 */	beq .L_814AEB1C
/* 814AEB0C | 3C 80 81 67 */	lis r4, lbl_8166E1FC@ha
/* 814AEB10 | 38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 814AEB14 | 38 84 E1 FC */	addi r4, r4, lbl_8166E1FC@l
/* 814AEB18 | 48 15 37 ED */	bl strcpy
.L_814AEB1C:
/* 814AEB1C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AEB20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEB24 | 41 82 00 0C */	beq .L_814AEB30
/* 814AEB28 | 3B A3 36 00 */	addi r29, r3, 0x3600
/* 814AEB2C | 48 00 00 08 */	b .L_814AEB34
.L_814AEB30:
/* 814AEB30 | 3B A0 00 00 */	li r29, 0x0
.L_814AEB34:
/* 814AEB34 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AEB38 | 40 82 00 0C */	bne .L_814AEB44
/* 814AEB3C | 38 00 FF FD */	li r0, -0x3
/* 814AEB40 | 48 00 00 9C */	b .L_814AEBDC
.L_814AEB44:
/* 814AEB44 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AEB48 | 40 82 00 0C */	bne .L_814AEB54
/* 814AEB4C | 38 00 FF F7 */	li r0, -0x9
/* 814AEB50 | 48 00 00 8C */	b .L_814AEBDC
.L_814AEB54:
/* 814AEB54 | 4B FF 17 B9 */	bl NWC24IsMsgLibOpenedByTool
/* 814AEB58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEB5C | 40 82 00 5C */	bne .L_814AEBB8
/* 814AEB60 | 83 9F 00 08 */	lwz r28, 0x8(r31)
/* 814AEB64 | 4B FF 0E DD */	bl NWC24GetAppId
/* 814AEB68 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AEB6C | 57 80 00 2E */	clrrwi r0, r28, 8
/* 814AEB70 | 7C 00 18 50 */	subf r0, r0, r3
/* 814AEB74 | 7C 00 00 34 */	cntlzw r0, r0
/* 814AEB78 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AEB7C | 40 82 00 3C */	bne .L_814AEBB8
/* 814AEB80 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814AEB84 | 3B C0 00 00 */	li r30, 0x0
/* 814AEB88 | A3 9F 00 14 */	lhz r28, 0x14(r31)
/* 814AEB8C | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AEB90 | 41 82 00 18 */	beq .L_814AEBA8
/* 814AEB94 | 4B FF 0E F9 */	bl NWC24GetGroupId
/* 814AEB98 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AEB9C | 7C 1C 00 40 */	cmplw r28, r0
/* 814AEBA0 | 40 82 00 08 */	bne .L_814AEBA8
/* 814AEBA4 | 3B C0 00 01 */	li r30, 0x1
.L_814AEBA8:
/* 814AEBA8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AEBAC | 40 82 00 0C */	bne .L_814AEBB8
/* 814AEBB0 | 38 00 FF F9 */	li r0, -0x7
/* 814AEBB4 | 48 00 00 28 */	b .L_814AEBDC
.L_814AEBB8:
/* 814AEBB8 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814AEBBC | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AEBC0 | 41 82 00 18 */	beq .L_814AEBD8
/* 814AEBC4 | A0 1D 00 14 */	lhz r0, 0x14(r29)
/* 814AEBC8 | 7C 03 00 40 */	cmplw r3, r0
/* 814AEBCC | 41 80 00 0C */	blt .L_814AEBD8
/* 814AEBD0 | 38 00 FF FD */	li r0, -0x3
/* 814AEBD4 | 48 00 00 08 */	b .L_814AEBDC
.L_814AEBD8:
/* 814AEBD8 | 38 00 00 00 */	li r0, 0x0
.L_814AEBDC:
/* 814AEBDC | 7C 03 FE 70 */	srawi r3, r0, 31
.L_814AEBE0:
/* 814AEBE0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814AEBE4 | 48 14 A9 29 */	bl _restgpr_27
/* 814AEBE8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814AEBEC | 7C 08 03 A6 */	mtlr r0
/* 814AEBF0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814AEBF4 | 4E 80 00 20 */	blr
.endfn NWC24InitDlTask

# .text:0x240 | 0x814AEBF8 | size: 0xA0
.fn NWC24SetDlId, global
/* 814AEBF8 | 80 ED AD A0 */	lwz r7, NWC24WorkP_81698DE0@sda21(r0)
/* 814AEBFC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AEC00 | 41 82 00 0C */	beq .L_814AEC0C
/* 814AEC04 | 38 A7 36 00 */	addi r5, r7, 0x3600
/* 814AEC08 | 48 00 00 08 */	b .L_814AEC10
.L_814AEC0C:
/* 814AEC0C | 38 A0 00 00 */	li r5, 0x0
.L_814AEC10:
/* 814AEC10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEC14 | 40 82 00 0C */	bne .L_814AEC20
/* 814AEC18 | 38 00 FF FD */	li r0, -0x3
/* 814AEC1C | 48 00 00 38 */	b .L_814AEC54
.L_814AEC20:
/* 814AEC20 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AEC24 | 40 82 00 0C */	bne .L_814AEC30
/* 814AEC28 | 38 00 FF F7 */	li r0, -0x9
/* 814AEC2C | 48 00 00 28 */	b .L_814AEC54
.L_814AEC30:
/* 814AEC30 | A0 C3 00 00 */	lhz r6, 0x0(r3)
/* 814AEC34 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814AEC38 | 41 82 00 18 */	beq .L_814AEC50
/* 814AEC3C | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814AEC40 | 7C 06 00 40 */	cmplw r6, r0
/* 814AEC44 | 41 80 00 0C */	blt .L_814AEC50
/* 814AEC48 | 38 00 FF FD */	li r0, -0x3
/* 814AEC4C | 48 00 00 08 */	b .L_814AEC54
.L_814AEC50:
/* 814AEC50 | 38 00 00 00 */	li r0, 0x0
.L_814AEC54:
/* 814AEC54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AEC58 | 41 82 00 0C */	beq .L_814AEC64
/* 814AEC5C | 7C 03 03 78 */	mr r3, r0
/* 814AEC60 | 4E 80 00 20 */	blr
.L_814AEC64:
/* 814AEC64 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AEC68 | 41 82 00 0C */	beq .L_814AEC74
/* 814AEC6C | 38 A7 36 00 */	addi r5, r7, 0x3600
/* 814AEC70 | 48 00 00 08 */	b .L_814AEC78
.L_814AEC74:
/* 814AEC74 | 38 A0 00 00 */	li r5, 0x0
.L_814AEC78:
/* 814AEC78 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814AEC7C | 7C 04 00 40 */	cmplw r4, r0
/* 814AEC80 | 41 80 00 0C */	blt .L_814AEC8C
/* 814AEC84 | 38 60 FF FD */	li r3, -0x3
/* 814AEC88 | 4E 80 00 20 */	blr
.L_814AEC8C:
/* 814AEC8C | B0 83 00 00 */	sth r4, 0x0(r3)
/* 814AEC90 | 38 60 00 00 */	li r3, 0x0
/* 814AEC94 | 4E 80 00 20 */	blr
.endfn NWC24SetDlId

# .text:0x2E0 | 0x814AEC98 | size: 0x108
.fn NWC24SetDlPriority, global
/* 814AEC98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AEC9C | 7C 08 02 A6 */	mflr r0
/* 814AECA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AECA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814AECA8 | 48 14 A8 19 */	bl _savegpr_27
/* 814AECAC | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AECB0 | 7C 7B 1B 78 */	mr r27, r3
/* 814AECB4 | 7C 9C 23 78 */	mr r28, r4
/* 814AECB8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AECBC | 41 82 00 0C */	beq .L_814AECC8
/* 814AECC0 | 3B A5 36 00 */	addi r29, r5, 0x3600
/* 814AECC4 | 48 00 00 08 */	b .L_814AECCC
.L_814AECC8:
/* 814AECC8 | 3B A0 00 00 */	li r29, 0x0
.L_814AECCC:
/* 814AECCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AECD0 | 40 82 00 0C */	bne .L_814AECDC
/* 814AECD4 | 38 60 FF FD */	li r3, -0x3
/* 814AECD8 | 48 00 00 9C */	b .L_814AED74
.L_814AECDC:
/* 814AECDC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AECE0 | 40 82 00 0C */	bne .L_814AECEC
/* 814AECE4 | 38 60 FF F7 */	li r3, -0x9
/* 814AECE8 | 48 00 00 8C */	b .L_814AED74
.L_814AECEC:
/* 814AECEC | 4B FF 16 21 */	bl NWC24IsMsgLibOpenedByTool
/* 814AECF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AECF4 | 40 82 00 5C */	bne .L_814AED50
/* 814AECF8 | 83 DB 00 08 */	lwz r30, 0x8(r27)
/* 814AECFC | 4B FF 0D 45 */	bl NWC24GetAppId
/* 814AED00 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AED04 | 57 C0 00 2E */	clrrwi r0, r30, 8
/* 814AED08 | 7C 00 18 50 */	subf r0, r0, r3
/* 814AED0C | 7C 00 00 34 */	cntlzw r0, r0
/* 814AED10 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AED14 | 40 82 00 3C */	bne .L_814AED50
/* 814AED18 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814AED1C | 3B E0 00 00 */	li r31, 0x0
/* 814AED20 | A3 DB 00 14 */	lhz r30, 0x14(r27)
/* 814AED24 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AED28 | 41 82 00 18 */	beq .L_814AED40
/* 814AED2C | 4B FF 0D 61 */	bl NWC24GetGroupId
/* 814AED30 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AED34 | 7C 1E 00 40 */	cmplw r30, r0
/* 814AED38 | 40 82 00 08 */	bne .L_814AED40
/* 814AED3C | 3B E0 00 01 */	li r31, 0x1
.L_814AED40:
/* 814AED40 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AED44 | 40 82 00 0C */	bne .L_814AED50
/* 814AED48 | 38 60 FF F9 */	li r3, -0x7
/* 814AED4C | 48 00 00 28 */	b .L_814AED74
.L_814AED50:
/* 814AED50 | A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 814AED54 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AED58 | 41 82 00 18 */	beq .L_814AED70
/* 814AED5C | A0 1D 00 14 */	lhz r0, 0x14(r29)
/* 814AED60 | 7C 03 00 40 */	cmplw r3, r0
/* 814AED64 | 41 80 00 0C */	blt .L_814AED70
/* 814AED68 | 38 60 FF FD */	li r3, -0x3
/* 814AED6C | 48 00 00 08 */	b .L_814AED74
.L_814AED70:
/* 814AED70 | 38 60 00 00 */	li r3, 0x0
.L_814AED74:
/* 814AED74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AED78 | 41 82 00 08 */	beq .L_814AED80
/* 814AED7C | 48 00 00 0C */	b .L_814AED88
.L_814AED80:
/* 814AED80 | 9B 9B 00 03 */	stb r28, 0x3(r27)
/* 814AED84 | 38 60 00 00 */	li r3, 0x0
.L_814AED88:
/* 814AED88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814AED8C | 48 14 A7 81 */	bl _restgpr_27
/* 814AED90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AED94 | 7C 08 03 A6 */	mtlr r0
/* 814AED98 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AED9C | 4E 80 00 20 */	blr
.endfn NWC24SetDlPriority

# .text:0x3E8 | 0x814AEDA0 | size: 0x24C
.fn NWC24SetDlInterval, global
/* 814AEDA0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AEDA4 | 7C 08 02 A6 */	mflr r0
/* 814AEDA8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AEDAC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AEDB0 | 48 14 A7 11 */	bl _savegpr_27
/* 814AEDB4 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AEDB8 | 7C 7E 1B 78 */	mr r30, r3
/* 814AEDBC | 7C 9F 23 78 */	mr r31, r4
/* 814AEDC0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AEDC4 | 41 82 00 0C */	beq .L_814AEDD0
/* 814AEDC8 | 3B 65 36 00 */	addi r27, r5, 0x3600
/* 814AEDCC | 48 00 00 08 */	b .L_814AEDD4
.L_814AEDD0:
/* 814AEDD0 | 3B 60 00 00 */	li r27, 0x0
.L_814AEDD4:
/* 814AEDD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEDD8 | 40 82 00 0C */	bne .L_814AEDE4
/* 814AEDDC | 38 60 FF FD */	li r3, -0x3
/* 814AEDE0 | 48 00 00 9C */	b .L_814AEE7C
.L_814AEDE4:
/* 814AEDE4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AEDE8 | 40 82 00 0C */	bne .L_814AEDF4
/* 814AEDEC | 38 60 FF F7 */	li r3, -0x9
/* 814AEDF0 | 48 00 00 8C */	b .L_814AEE7C
.L_814AEDF4:
/* 814AEDF4 | 4B FF 15 19 */	bl NWC24IsMsgLibOpenedByTool
/* 814AEDF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEDFC | 40 82 00 5C */	bne .L_814AEE58
/* 814AEE00 | 83 9E 00 08 */	lwz r28, 0x8(r30)
/* 814AEE04 | 4B FF 0C 3D */	bl NWC24GetAppId
/* 814AEE08 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AEE0C | 57 80 00 2E */	clrrwi r0, r28, 8
/* 814AEE10 | 7C 00 18 50 */	subf r0, r0, r3
/* 814AEE14 | 7C 00 00 34 */	cntlzw r0, r0
/* 814AEE18 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AEE1C | 40 82 00 3C */	bne .L_814AEE58
/* 814AEE20 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814AEE24 | 3B A0 00 00 */	li r29, 0x0
/* 814AEE28 | A3 9E 00 14 */	lhz r28, 0x14(r30)
/* 814AEE2C | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AEE30 | 41 82 00 18 */	beq .L_814AEE48
/* 814AEE34 | 4B FF 0C 59 */	bl NWC24GetGroupId
/* 814AEE38 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AEE3C | 7C 1C 00 40 */	cmplw r28, r0
/* 814AEE40 | 40 82 00 08 */	bne .L_814AEE48
/* 814AEE44 | 3B A0 00 01 */	li r29, 0x1
.L_814AEE48:
/* 814AEE48 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AEE4C | 40 82 00 0C */	bne .L_814AEE58
/* 814AEE50 | 38 60 FF F9 */	li r3, -0x7
/* 814AEE54 | 48 00 00 28 */	b .L_814AEE7C
.L_814AEE58:
/* 814AEE58 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 814AEE5C | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AEE60 | 41 82 00 18 */	beq .L_814AEE78
/* 814AEE64 | A0 1B 00 14 */	lhz r0, 0x14(r27)
/* 814AEE68 | 7C 03 00 40 */	cmplw r3, r0
/* 814AEE6C | 41 80 00 0C */	blt .L_814AEE78
/* 814AEE70 | 38 60 FF FD */	li r3, -0x3
/* 814AEE74 | 48 00 00 08 */	b .L_814AEE7C
.L_814AEE78:
/* 814AEE78 | 38 60 00 00 */	li r3, 0x0
.L_814AEE7C:
/* 814AEE7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEE80 | 41 82 00 08 */	beq .L_814AEE88
/* 814AEE84 | 48 00 01 50 */	b .L_814AEFD4
.L_814AEE88:
/* 814AEE88 | 80 0D AD F8 */	lwz r0, NWC24iLaxParameterCheck@sda21(r0)
/* 814AEE8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AEE90 | 40 82 00 50 */	bne .L_814AEEE0
/* 814AEE94 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AEE98 | A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 814AEE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEEA0 | 41 82 00 0C */	beq .L_814AEEAC
/* 814AEEA4 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814AEEA8 | 48 00 00 08 */	b .L_814AEEB0
.L_814AEEAC:
/* 814AEEAC | 38 60 00 00 */	li r3, 0x0
.L_814AEEB0:
/* 814AEEB0 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 814AEEB4 | 7C 04 00 40 */	cmplw r4, r0
/* 814AEEB8 | 41 80 00 28 */	blt .L_814AEEE0
/* 814AEEBC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814AEEC0 | 54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 814AEEC4 | 40 82 00 1C */	bne .L_814AEEE0
/* 814AEEC8 | 28 1F 00 B4 */	cmplwi r31, 0xb4
/* 814AEECC | 41 80 00 0C */	blt .L_814AEED8
/* 814AEED0 | 28 1F 27 60 */	cmplwi r31, 0x2760
/* 814AEED4 | 40 81 00 0C */	ble .L_814AEEE0
.L_814AEED8:
/* 814AEED8 | 38 60 FF FD */	li r3, -0x3
/* 814AEEDC | 48 00 00 F8 */	b .L_814AEFD4
.L_814AEEE0:
/* 814AEEE0 | A0 1E 00 1C */	lhz r0, 0x1c(r30)
/* 814AEEE4 | 7C 00 F8 40 */	cmplw r0, r31
/* 814AEEE8 | 41 82 00 E8 */	beq .L_814AEFD0
/* 814AEEEC | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814AEEF0 | B3 FE 00 1C */	sth r31, 0x1c(r30)
/* 814AEEF4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814AEEF8 | 41 82 00 D8 */	beq .L_814AEFD0
/* 814AEEFC | 38 00 00 00 */	li r0, 0x0
/* 814AEF00 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AEF04 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814AEF08 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AEF0C | 4B FF F4 A9 */	bl NWC24iGetUniversalTime
/* 814AEF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AEF14 | 41 80 00 BC */	blt .L_814AEFD0
/* 814AEF18 | A0 1E 00 1C */	lhz r0, 0x1c(r30)
/* 814AEF1C | 83 6D AD A0 */	lwz r27, NWC24WorkP_81698DE0@sda21(r0)
/* 814AEF20 | 1C 60 00 3C */	mulli r3, r0, 0x3c
/* 814AEF24 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AEF28 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AEF2C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814AEF30 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814AEF34 | 7C 84 18 14 */	addc r4, r4, r3
/* 814AEF38 | 7C 65 01 14 */	adde r3, r5, r0
/* 814AEF3C | 41 82 00 0C */	beq .L_814AEF48
/* 814AEF40 | 38 BB 36 00 */	addi r5, r27, 0x3600
/* 814AEF44 | 48 00 00 08 */	b .L_814AEF4C
.L_814AEF48:
/* 814AEF48 | 38 A0 00 00 */	li r5, 0x0
.L_814AEF4C:
/* 814AEF4C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AEF50 | 40 82 00 0C */	bne .L_814AEF5C
/* 814AEF54 | 38 00 FF FD */	li r0, -0x3
/* 814AEF58 | 48 00 00 38 */	b .L_814AEF90
.L_814AEF5C:
/* 814AEF5C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AEF60 | 40 82 00 0C */	bne .L_814AEF6C
/* 814AEF64 | 38 00 FF F7 */	li r0, -0x9
/* 814AEF68 | 48 00 00 28 */	b .L_814AEF90
.L_814AEF6C:
/* 814AEF6C | A0 DE 00 00 */	lhz r6, 0x0(r30)
/* 814AEF70 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814AEF74 | 41 82 00 18 */	beq .L_814AEF8C
/* 814AEF78 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814AEF7C | 7C 06 00 40 */	cmplw r6, r0
/* 814AEF80 | 41 80 00 0C */	blt .L_814AEF8C
/* 814AEF84 | 38 00 FF FD */	li r0, -0x3
/* 814AEF88 | 48 00 00 08 */	b .L_814AEF90
.L_814AEF8C:
/* 814AEF8C | 38 00 00 00 */	li r0, 0x0
.L_814AEF90:
/* 814AEF90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AEF94 | 40 82 00 3C */	bne .L_814AEFD0
/* 814AEF98 | A3 DE 00 00 */	lhz r30, 0x0(r30)
/* 814AEF9C | 28 1E FF FF */	cmplwi r30, 0xffff
/* 814AEFA0 | 41 82 00 30 */	beq .L_814AEFD0
/* 814AEFA4 | 38 C0 00 3C */	li r6, 0x3c
/* 814AEFA8 | 38 A0 00 00 */	li r5, 0x0
/* 814AEFAC | 48 14 A6 65 */	bl __div2i
/* 814AEFB0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AEFB4 | 41 82 00 0C */	beq .L_814AEFC0
/* 814AEFB8 | 38 7B 36 00 */	addi r3, r27, 0x3600
/* 814AEFBC | 48 00 00 08 */	b .L_814AEFC4
.L_814AEFC0:
/* 814AEFC0 | 38 60 00 00 */	li r3, 0x0
.L_814AEFC4:
/* 814AEFC4 | 57 C0 23 36 */	clrlslwi r0, r30, 16, 4
/* 814AEFC8 | 7C 63 02 14 */	add r3, r3, r0
/* 814AEFCC | 90 83 00 84 */	stw r4, 0x84(r3)
.L_814AEFD0:
/* 814AEFD0 | 38 60 00 00 */	li r3, 0x0
.L_814AEFD4:
/* 814AEFD4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AEFD8 | 48 14 A5 35 */	bl _restgpr_27
/* 814AEFDC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AEFE0 | 7C 08 03 A6 */	mtlr r0
/* 814AEFE4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AEFE8 | 4E 80 00 20 */	blr
.endfn NWC24SetDlInterval

# .text:0x634 | 0x814AEFEC | size: 0x1B4
.fn NWC24SetDlUrl, global
/* 814AEFEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AEFF0 | 7C 08 02 A6 */	mflr r0
/* 814AEFF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AEFF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814AEFFC | 48 14 A4 C5 */	bl _savegpr_27
/* 814AF000 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF004 | 7C 7E 1B 78 */	mr r30, r3
/* 814AF008 | 7C 9F 23 78 */	mr r31, r4
/* 814AF00C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF010 | 41 82 00 0C */	beq .L_814AF01C
/* 814AF014 | 3B 65 36 00 */	addi r27, r5, 0x3600
/* 814AF018 | 48 00 00 08 */	b .L_814AF020
.L_814AF01C:
/* 814AF01C | 3B 60 00 00 */	li r27, 0x0
.L_814AF020:
/* 814AF020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF024 | 40 82 00 0C */	bne .L_814AF030
/* 814AF028 | 38 60 FF FD */	li r3, -0x3
/* 814AF02C | 48 00 00 9C */	b .L_814AF0C8
.L_814AF030:
/* 814AF030 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AF034 | 40 82 00 0C */	bne .L_814AF040
/* 814AF038 | 38 60 FF F7 */	li r3, -0x9
/* 814AF03C | 48 00 00 8C */	b .L_814AF0C8
.L_814AF040:
/* 814AF040 | 4B FF 12 CD */	bl NWC24IsMsgLibOpenedByTool
/* 814AF044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF048 | 40 82 00 5C */	bne .L_814AF0A4
/* 814AF04C | 83 9E 00 08 */	lwz r28, 0x8(r30)
/* 814AF050 | 4B FF 09 F1 */	bl NWC24GetAppId
/* 814AF054 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AF058 | 57 80 00 2E */	clrrwi r0, r28, 8
/* 814AF05C | 7C 00 18 50 */	subf r0, r0, r3
/* 814AF060 | 7C 00 00 34 */	cntlzw r0, r0
/* 814AF064 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AF068 | 40 82 00 3C */	bne .L_814AF0A4
/* 814AF06C | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814AF070 | 3B A0 00 00 */	li r29, 0x0
/* 814AF074 | A3 9E 00 14 */	lhz r28, 0x14(r30)
/* 814AF078 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AF07C | 41 82 00 18 */	beq .L_814AF094
/* 814AF080 | 4B FF 0A 0D */	bl NWC24GetGroupId
/* 814AF084 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AF088 | 7C 1C 00 40 */	cmplw r28, r0
/* 814AF08C | 40 82 00 08 */	bne .L_814AF094
/* 814AF090 | 3B A0 00 01 */	li r29, 0x1
.L_814AF094:
/* 814AF094 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AF098 | 40 82 00 0C */	bne .L_814AF0A4
/* 814AF09C | 38 60 FF F9 */	li r3, -0x7
/* 814AF0A0 | 48 00 00 28 */	b .L_814AF0C8
.L_814AF0A4:
/* 814AF0A4 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 814AF0A8 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AF0AC | 41 82 00 18 */	beq .L_814AF0C4
/* 814AF0B0 | A0 1B 00 14 */	lhz r0, 0x14(r27)
/* 814AF0B4 | 7C 03 00 40 */	cmplw r3, r0
/* 814AF0B8 | 41 80 00 0C */	blt .L_814AF0C4
/* 814AF0BC | 38 60 FF FD */	li r3, -0x3
/* 814AF0C0 | 48 00 00 08 */	b .L_814AF0C8
.L_814AF0C4:
/* 814AF0C4 | 38 60 00 00 */	li r3, 0x0
.L_814AF0C8:
/* 814AF0C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF0CC | 41 82 00 08 */	beq .L_814AF0D4
/* 814AF0D0 | 48 00 00 B8 */	b .L_814AF188
.L_814AF0D4:
/* 814AF0D4 | 7F E3 FB 78 */	mr r3, r31
/* 814AF0D8 | 38 80 00 07 */	li r4, 0x7
/* 814AF0DC | 38 A0 01 00 */	li r5, 0x100
/* 814AF0E0 | 4B FF 0E 0D */	bl NWC24iCheckStringLength
/* 814AF0E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF0E8 | 40 80 00 08 */	bge .L_814AF0F0
/* 814AF0EC | 48 00 00 44 */	b .L_814AF130
.L_814AF0F0:
/* 814AF0F0 | 7F E3 FB 78 */	mr r3, r31
/* 814AF0F4 | 38 8D 9C 80 */	li r4, lbl_81697CC0@sda21
/* 814AF0F8 | 38 A0 00 07 */	li r5, 0x7
/* 814AF0FC | 48 15 34 A1 */	bl strncmp
/* 814AF100 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF104 | 41 82 00 28 */	beq .L_814AF12C
/* 814AF108 | 3C 80 81 67 */	lis r4, lbl_8166E208@ha
/* 814AF10C | 7F E3 FB 78 */	mr r3, r31
/* 814AF110 | 38 84 E2 08 */	addi r4, r4, lbl_8166E208@l
/* 814AF114 | 38 A0 00 08 */	li r5, 0x8
/* 814AF118 | 48 15 34 85 */	bl strncmp
/* 814AF11C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF120 | 41 82 00 0C */	beq .L_814AF12C
/* 814AF124 | 38 60 FF E8 */	li r3, -0x18
/* 814AF128 | 48 00 00 08 */	b .L_814AF130
.L_814AF12C:
/* 814AF12C | 38 60 00 00 */	li r3, 0x0
.L_814AF130:
/* 814AF130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF134 | 40 80 00 08 */	bge .L_814AF13C
/* 814AF138 | 48 00 00 50 */	b .L_814AF188
.L_814AF13C:
/* 814AF13C | 80 0D AD F8 */	lwz r0, NWC24iLaxParameterCheck@sda21(r0)
/* 814AF140 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF144 | 40 82 00 30 */	bne .L_814AF174
/* 814AF148 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814AF14C | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814AF150 | 41 82 00 24 */	beq .L_814AF174
/* 814AF154 | 7F E3 FB 78 */	mr r3, r31
/* 814AF158 | 38 8D 9C 80 */	li r4, lbl_81697CC0@sda21
/* 814AF15C | 38 A0 00 07 */	li r5, 0x7
/* 814AF160 | 48 15 34 3D */	bl strncmp
/* 814AF164 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF168 | 40 82 00 0C */	bne .L_814AF174
/* 814AF16C | 38 60 FF FD */	li r3, -0x3
/* 814AF170 | 48 00 00 18 */	b .L_814AF188
.L_814AF174:
/* 814AF174 | 7F E4 FB 78 */	mr r4, r31
/* 814AF178 | 38 7E 00 B4 */	addi r3, r30, 0xb4
/* 814AF17C | 38 A0 00 EC */	li r5, 0xec
/* 814AF180 | 4B FF 0D E9 */	bl NWC24iStrLCpy
/* 814AF184 | 38 60 00 00 */	li r3, 0x0
.L_814AF188:
/* 814AF188 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814AF18C | 48 14 A3 81 */	bl _restgpr_27
/* 814AF190 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AF194 | 7C 08 03 A6 */	mtlr r0
/* 814AF198 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AF19C | 4E 80 00 20 */	blr
.endfn NWC24SetDlUrl

# .text:0x7E8 | 0x814AF1A0 | size: 0x16C
.fn NWC24SetDlFlags, global
/* 814AF1A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AF1A4 | 7C 08 02 A6 */	mflr r0
/* 814AF1A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AF1AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814AF1B0 | 48 14 A3 11 */	bl _savegpr_27
/* 814AF1B4 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF1B8 | 7C 7E 1B 78 */	mr r30, r3
/* 814AF1BC | 7C 9F 23 78 */	mr r31, r4
/* 814AF1C0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF1C4 | 41 82 00 0C */	beq .L_814AF1D0
/* 814AF1C8 | 3B 65 36 00 */	addi r27, r5, 0x3600
/* 814AF1CC | 48 00 00 08 */	b .L_814AF1D4
.L_814AF1D0:
/* 814AF1D0 | 3B 60 00 00 */	li r27, 0x0
.L_814AF1D4:
/* 814AF1D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF1D8 | 40 82 00 0C */	bne .L_814AF1E4
/* 814AF1DC | 38 60 FF FD */	li r3, -0x3
/* 814AF1E0 | 48 00 00 9C */	b .L_814AF27C
.L_814AF1E4:
/* 814AF1E4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AF1E8 | 40 82 00 0C */	bne .L_814AF1F4
/* 814AF1EC | 38 60 FF F7 */	li r3, -0x9
/* 814AF1F0 | 48 00 00 8C */	b .L_814AF27C
.L_814AF1F4:
/* 814AF1F4 | 4B FF 11 19 */	bl NWC24IsMsgLibOpenedByTool
/* 814AF1F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF1FC | 40 82 00 5C */	bne .L_814AF258
/* 814AF200 | 83 9E 00 08 */	lwz r28, 0x8(r30)
/* 814AF204 | 4B FF 08 3D */	bl NWC24GetAppId
/* 814AF208 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AF20C | 57 80 00 2E */	clrrwi r0, r28, 8
/* 814AF210 | 7C 00 18 50 */	subf r0, r0, r3
/* 814AF214 | 7C 00 00 34 */	cntlzw r0, r0
/* 814AF218 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AF21C | 40 82 00 3C */	bne .L_814AF258
/* 814AF220 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814AF224 | 3B A0 00 00 */	li r29, 0x0
/* 814AF228 | A3 9E 00 14 */	lhz r28, 0x14(r30)
/* 814AF22C | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AF230 | 41 82 00 18 */	beq .L_814AF248
/* 814AF234 | 4B FF 08 59 */	bl NWC24GetGroupId
/* 814AF238 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AF23C | 7C 1C 00 40 */	cmplw r28, r0
/* 814AF240 | 40 82 00 08 */	bne .L_814AF248
/* 814AF244 | 3B A0 00 01 */	li r29, 0x1
.L_814AF248:
/* 814AF248 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AF24C | 40 82 00 0C */	bne .L_814AF258
/* 814AF250 | 38 60 FF F9 */	li r3, -0x7
/* 814AF254 | 48 00 00 28 */	b .L_814AF27C
.L_814AF258:
/* 814AF258 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 814AF25C | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AF260 | 41 82 00 18 */	beq .L_814AF278
/* 814AF264 | A0 1B 00 14 */	lhz r0, 0x14(r27)
/* 814AF268 | 7C 03 00 40 */	cmplw r3, r0
/* 814AF26C | 41 80 00 0C */	blt .L_814AF278
/* 814AF270 | 38 60 FF FD */	li r3, -0x3
/* 814AF274 | 48 00 00 08 */	b .L_814AF27C
.L_814AF278:
/* 814AF278 | 38 60 00 00 */	li r3, 0x0
.L_814AF27C:
/* 814AF27C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF280 | 41 82 00 08 */	beq .L_814AF288
/* 814AF284 | 48 00 00 70 */	b .L_814AF2F4
.L_814AF288:
/* 814AF288 | 80 0D AD F8 */	lwz r0, NWC24iLaxParameterCheck@sda21(r0)
/* 814AF28C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF290 | 40 82 00 2C */	bne .L_814AF2BC
/* 814AF294 | 57 E0 07 7B */	rlwinm. r0, r31, 0, 29, 29
/* 814AF298 | 41 82 00 24 */	beq .L_814AF2BC
/* 814AF29C | 38 7E 00 B4 */	addi r3, r30, 0xb4
/* 814AF2A0 | 38 8D 9C 80 */	li r4, lbl_81697CC0@sda21
/* 814AF2A4 | 38 A0 00 07 */	li r5, 0x7
/* 814AF2A8 | 48 15 32 F5 */	bl strncmp
/* 814AF2AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF2B0 | 40 82 00 0C */	bne .L_814AF2BC
/* 814AF2B4 | 38 60 FF FD */	li r3, -0x3
/* 814AF2B8 | 48 00 00 3C */	b .L_814AF2F4
.L_814AF2BC:
/* 814AF2BC | 88 1E 00 02 */	lbz r0, 0x2(r30)
/* 814AF2C0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814AF2C4 | 40 80 00 28 */	bge .L_814AF2EC
/* 814AF2C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF2CC | 40 80 00 0C */	bge .L_814AF2D8
/* 814AF2D0 | 48 00 00 1C */	b .L_814AF2EC
/* 814AF2D4 | 48 00 00 18 */	b .L_814AF2EC
.L_814AF2D8:
/* 814AF2D8 | 57 E0 00 00 */	clrrwi r0, r31, 31
/* 814AF2DC | 53 E0 06 B9 */	rlwimi. r0, r31, 0, 26, 28
/* 814AF2E0 | 41 82 00 0C */	beq .L_814AF2EC
/* 814AF2E4 | 38 60 FF D8 */	li r3, -0x28
/* 814AF2E8 | 48 00 00 0C */	b .L_814AF2F4
.L_814AF2EC:
/* 814AF2EC | 93 FE 00 04 */	stw r31, 0x4(r30)
/* 814AF2F0 | 38 60 00 00 */	li r3, 0x0
.L_814AF2F4:
/* 814AF2F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814AF2F8 | 48 14 A2 15 */	bl _restgpr_27
/* 814AF2FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AF300 | 7C 08 03 A6 */	mtlr r0
/* 814AF304 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AF308 | 4E 80 00 20 */	blr
.endfn NWC24SetDlFlags

# .text:0x954 | 0x814AF30C | size: 0x8C
.fn NWC24GetDlAppId, global
/* 814AF30C | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF310 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF314 | 41 82 00 0C */	beq .L_814AF320
/* 814AF318 | 38 A5 36 00 */	addi r5, r5, 0x3600
/* 814AF31C | 48 00 00 08 */	b .L_814AF324
.L_814AF320:
/* 814AF320 | 38 A0 00 00 */	li r5, 0x0
.L_814AF324:
/* 814AF324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF328 | 40 82 00 0C */	bne .L_814AF334
/* 814AF32C | 38 00 FF FD */	li r0, -0x3
/* 814AF330 | 48 00 00 38 */	b .L_814AF368
.L_814AF334:
/* 814AF334 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF338 | 40 82 00 0C */	bne .L_814AF344
/* 814AF33C | 38 00 FF F7 */	li r0, -0x9
/* 814AF340 | 48 00 00 28 */	b .L_814AF368
.L_814AF344:
/* 814AF344 | A0 C3 00 00 */	lhz r6, 0x0(r3)
/* 814AF348 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814AF34C | 41 82 00 18 */	beq .L_814AF364
/* 814AF350 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814AF354 | 7C 06 00 40 */	cmplw r6, r0
/* 814AF358 | 41 80 00 0C */	blt .L_814AF364
/* 814AF35C | 38 00 FF FD */	li r0, -0x3
/* 814AF360 | 48 00 00 08 */	b .L_814AF368
.L_814AF364:
/* 814AF364 | 38 00 00 00 */	li r0, 0x0
.L_814AF368:
/* 814AF368 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF36C | 41 82 00 0C */	beq .L_814AF378
/* 814AF370 | 7C 03 03 78 */	mr r3, r0
/* 814AF374 | 4E 80 00 20 */	blr
.L_814AF378:
/* 814AF378 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AF37C | 40 82 00 0C */	bne .L_814AF388
/* 814AF380 | 38 60 FF FD */	li r3, -0x3
/* 814AF384 | 4E 80 00 20 */	blr
.L_814AF388:
/* 814AF388 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AF38C | 38 60 00 00 */	li r3, 0x0
/* 814AF390 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814AF394 | 4E 80 00 20 */	blr
.endfn NWC24GetDlAppId

# .text:0x9E0 | 0x814AF398 | size: 0x70
.fn NWC24DumpDlTask, global
/* 814AF398 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF39C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AF3A0 | 41 82 00 0C */	beq .L_814AF3AC
/* 814AF3A4 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814AF3A8 | 48 00 00 08 */	b .L_814AF3B0
.L_814AF3AC:
/* 814AF3AC | 38 80 00 00 */	li r4, 0x0
.L_814AF3B0:
/* 814AF3B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF3B4 | 40 82 00 0C */	bne .L_814AF3C0
/* 814AF3B8 | 38 00 FF FD */	li r0, -0x3
/* 814AF3BC | 48 00 00 38 */	b .L_814AF3F4
.L_814AF3C0:
/* 814AF3C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AF3C4 | 40 82 00 0C */	bne .L_814AF3D0
/* 814AF3C8 | 38 00 FF F7 */	li r0, -0x9
/* 814AF3CC | 48 00 00 28 */	b .L_814AF3F4
.L_814AF3D0:
/* 814AF3D0 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814AF3D4 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AF3D8 | 41 82 00 18 */	beq .L_814AF3F0
/* 814AF3DC | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814AF3E0 | 7C 03 00 40 */	cmplw r3, r0
/* 814AF3E4 | 41 80 00 0C */	blt .L_814AF3F0
/* 814AF3E8 | 38 00 FF FD */	li r0, -0x3
/* 814AF3EC | 48 00 00 08 */	b .L_814AF3F4
.L_814AF3F0:
/* 814AF3F0 | 38 00 00 00 */	li r0, 0x0
.L_814AF3F4:
/* 814AF3F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF3F8 | 38 60 00 00 */	li r3, 0x0
/* 814AF3FC | 4D 82 00 20 */	beqlr
/* 814AF400 | 7C 03 03 78 */	mr r3, r0
/* 814AF404 | 4E 80 00 20 */	blr
.endfn NWC24DumpDlTask

# .text:0xA50 | 0x814AF408 | size: 0x13C
.fn NWC24IterateDlTask, global
/* 814AF408 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF40C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF410 | 41 82 00 0C */	beq .L_814AF41C
/* 814AF414 | 38 05 36 00 */	addi r0, r5, 0x3600
/* 814AF418 | 48 00 00 08 */	b .L_814AF420
.L_814AF41C:
/* 814AF41C | 38 00 00 00 */	li r0, 0x0
.L_814AF420:
/* 814AF420 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF424 | 40 82 00 0C */	bne .L_814AF430
/* 814AF428 | 38 60 FF F7 */	li r3, -0x9
/* 814AF42C | 4E 80 00 20 */	blr
.L_814AF430:
/* 814AF430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF434 | 40 82 00 0C */	bne .L_814AF440
/* 814AF438 | 38 60 FF FD */	li r3, -0x3
/* 814AF43C | 4E 80 00 20 */	blr
.L_814AF440:
/* 814AF440 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AF444 | 41 82 00 10 */	beq .L_814AF454
/* 814AF448 | 38 00 00 00 */	li r0, 0x0
/* 814AF44C | B0 03 00 00 */	sth r0, 0x0(r3)
/* 814AF450 | 48 00 00 10 */	b .L_814AF460
.L_814AF454:
/* 814AF454 | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 814AF458 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814AF45C | B0 03 00 00 */	sth r0, 0x0(r3)
.L_814AF460:
/* 814AF460 | 80 ED AD A0 */	lwz r7, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF464 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AF468 | 41 82 00 0C */	beq .L_814AF474
/* 814AF46C | 38 87 36 00 */	addi r4, r7, 0x3600
/* 814AF470 | 48 00 00 08 */	b .L_814AF478
.L_814AF474:
/* 814AF474 | 38 80 00 00 */	li r4, 0x0
.L_814AF478:
/* 814AF478 | A1 03 00 00 */	lhz r8, 0x0(r3)
/* 814AF47C | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814AF480 | 7C 08 00 40 */	cmplw r8, r0
/* 814AF484 | 41 80 00 0C */	blt .L_814AF490
/* 814AF488 | 38 60 FF F1 */	li r3, -0xf
/* 814AF48C | 4E 80 00 20 */	blr
.L_814AF490:
/* 814AF490 | 38 C7 36 00 */	addi r6, r7, 0x3600
/* 814AF494 | 48 00 00 84 */	b .L_814AF518
.L_814AF498:
/* 814AF498 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AF49C | 55 05 04 3E */	clrlwi r5, r8, 16
/* 814AF4A0 | 41 82 00 0C */	beq .L_814AF4AC
/* 814AF4A4 | 7C C4 33 78 */	mr r4, r6
/* 814AF4A8 | 48 00 00 08 */	b .L_814AF4B0
.L_814AF4AC:
/* 814AF4AC | 38 80 00 00 */	li r4, 0x0
.L_814AF4B0:
/* 814AF4B0 | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814AF4B4 | 7C 05 00 40 */	cmplw r5, r0
/* 814AF4B8 | 40 80 00 10 */	bge .L_814AF4C8
/* 814AF4BC | 55 00 04 3E */	clrlwi r0, r8, 16
/* 814AF4C0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814AF4C4 | 40 82 00 0C */	bne .L_814AF4D0
.L_814AF4C8:
/* 814AF4C8 | 38 A0 FF FD */	li r5, -0x3
/* 814AF4CC | 48 00 00 34 */	b .L_814AF500
.L_814AF4D0:
/* 814AF4D0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AF4D4 | 41 82 00 0C */	beq .L_814AF4E0
/* 814AF4D8 | 7C C4 33 78 */	mr r4, r6
/* 814AF4DC | 48 00 00 08 */	b .L_814AF4E4
.L_814AF4E0:
/* 814AF4E0 | 38 80 00 00 */	li r4, 0x0
.L_814AF4E4:
/* 814AF4E4 | 55 00 23 36 */	clrlslwi r0, r8, 16, 4
/* 814AF4E8 | 38 A0 00 00 */	li r5, 0x0
/* 814AF4EC | 7C 84 02 14 */	add r4, r4, r0
/* 814AF4F0 | 80 04 00 80 */	lwz r0, 0x80(r4)
/* 814AF4F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF4F8 | 40 82 00 08 */	bne .L_814AF500
/* 814AF4FC | 38 A0 FF F3 */	li r5, -0xd
.L_814AF500:
/* 814AF500 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF504 | 41 80 00 10 */	blt .L_814AF514
/* 814AF508 | B1 03 00 00 */	sth r8, 0x0(r3)
/* 814AF50C | 38 60 00 00 */	li r3, 0x0
/* 814AF510 | 4E 80 00 20 */	blr
.L_814AF514:
/* 814AF514 | 39 08 00 01 */	addi r8, r8, 0x1
.L_814AF518:
/* 814AF518 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814AF51C | 55 05 04 3E */	clrlwi r5, r8, 16
/* 814AF520 | 41 82 00 0C */	beq .L_814AF52C
/* 814AF524 | 7C C4 33 78 */	mr r4, r6
/* 814AF528 | 48 00 00 08 */	b .L_814AF530
.L_814AF52C:
/* 814AF52C | 38 80 00 00 */	li r4, 0x0
.L_814AF530:
/* 814AF530 | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814AF534 | 7C 05 00 40 */	cmplw r5, r0
/* 814AF538 | 41 80 FF 60 */	blt .L_814AF498
/* 814AF53C | 38 60 FF F1 */	li r3, -0xf
/* 814AF540 | 4E 80 00 20 */	blr
.endfn NWC24IterateDlTask

# .text:0xB8C | 0x814AF544 | size: 0x244
.fn NWC24IterateDlTaskEx, global
/* 814AF544 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AF548 | 7C 08 02 A6 */	mflr r0
/* 814AF54C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AF550 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AF554 | 48 14 9F 6D */	bl _savegpr_27
/* 814AF558 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814AF55C | 7C 7B 1B 78 */	mr r27, r3
/* 814AF560 | 7C 9C 23 78 */	mr r28, r4
/* 814AF564 | 3B C0 00 00 */	li r30, 0x0
/* 814AF568 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF56C | 40 82 00 0C */	bne .L_814AF578
/* 814AF570 | 38 60 FF FD */	li r3, -0x3
/* 814AF574 | 48 00 01 FC */	b .L_814AF770
.L_814AF578:
/* 814AF578 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814AF57C | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814AF580 | 54 9F 0F FE */	srwi r31, r4, 31
/* 814AF584 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814AF588 | 41 82 00 2C */	beq .L_814AF5B4
/* 814AF58C | 40 80 00 10 */	bge .L_814AF59C
/* 814AF590 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF594 | 40 80 00 14 */	bge .L_814AF5A8
/* 814AF598 | 48 00 00 34 */	b .L_814AF5CC
.L_814AF59C:
/* 814AF59C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814AF5A0 | 40 80 00 2C */	bge .L_814AF5CC
/* 814AF5A4 | 48 00 00 1C */	b .L_814AF5C0
.L_814AF5A8:
/* 814AF5A8 | 3F A0 81 4B */	lis r29, IterationPredicatorLastAccess@ha
/* 814AF5AC | 3B BD 1A 10 */	addi r29, r29, IterationPredicatorLastAccess@l
/* 814AF5B0 | 48 00 00 24 */	b .L_814AF5D4
.L_814AF5B4:
/* 814AF5B4 | 3F A0 81 4B */	lis r29, IterationPredicatorNextTime@ha
/* 814AF5B8 | 3B BD 1A 38 */	addi r29, r29, IterationPredicatorNextTime@l
/* 814AF5BC | 48 00 00 18 */	b .L_814AF5D4
.L_814AF5C0:
/* 814AF5C0 | 3F A0 81 4B */	lis r29, IterationPredicatorPriority@ha
/* 814AF5C4 | 3B BD 1A 60 */	addi r29, r29, IterationPredicatorPriority@l
/* 814AF5C8 | 48 00 00 0C */	b .L_814AF5D4
.L_814AF5CC:
/* 814AF5CC | 38 60 FF FD */	li r3, -0x3
/* 814AF5D0 | 48 00 01 A0 */	b .L_814AF770
.L_814AF5D4:
/* 814AF5D4 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814AF5D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF5DC | 40 82 00 74 */	bne .L_814AF650
/* 814AF5E0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AF5E4 | 38 80 00 01 */	li r4, 0x1
/* 814AF5E8 | 4B FF FE 21 */	bl NWC24IterateDlTask
/* 814AF5EC | 48 00 00 58 */	b .L_814AF644
.L_814AF5F0:
/* 814AF5F0 | 7F AC EB 78 */	mr r12, r29
/* 814AF5F4 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814AF5F8 | 7D 89 03 A6 */	mtctr r12
/* 814AF5FC | 4E 80 04 21 */	bctrl
/* 814AF600 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814AF604 | 7C 03 00 00 */	cmpw r3, r0
/* 814AF608 | 40 82 00 30 */	bne .L_814AF638
/* 814AF60C | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 814AF610 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 814AF614 | 7C 00 20 00 */	cmpw r0, r4
/* 814AF618 | 40 80 00 20 */	bge .L_814AF638
/* 814AF61C | B0 9C 00 00 */	sth r4, 0x0(r28)
/* 814AF620 | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 814AF624 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814AF628 | 90 7B 00 08 */	stw r3, 0x8(r27)
/* 814AF62C | 38 60 00 00 */	li r3, 0x0
/* 814AF630 | 90 1B 00 0C */	stw r0, 0xc(r27)
/* 814AF634 | 48 00 01 3C */	b .L_814AF770
.L_814AF638:
/* 814AF638 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AF63C | 38 80 00 00 */	li r4, 0x0
/* 814AF640 | 4B FF FD C9 */	bl NWC24IterateDlTask
.L_814AF644:
/* 814AF644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF648 | 40 80 FF A8 */	bge .L_814AF5F0
/* 814AF64C | 48 00 00 0C */	b .L_814AF658
.L_814AF650:
/* 814AF650 | 38 00 00 00 */	li r0, 0x0
/* 814AF654 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_814AF658:
/* 814AF658 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814AF65C | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 814AF660 | 40 82 00 14 */	bne .L_814AF674
/* 814AF664 | 3C 60 80 00 */	lis r3, 0x8000
/* 814AF668 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814AF66C | 90 1B 00 04 */	stw r0, 0x4(r27)
/* 814AF670 | 48 00 00 10 */	b .L_814AF680
.L_814AF674:
/* 814AF674 | 3C 60 80 00 */	lis r3, 0x8000
/* 814AF678 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814AF67C | 90 1B 00 04 */	stw r0, 0x4(r27)
.L_814AF680:
/* 814AF680 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AF684 | 38 80 00 01 */	li r4, 0x1
/* 814AF688 | 4B FF FD 81 */	bl NWC24IterateDlTask
/* 814AF68C | 48 00 00 B8 */	b .L_814AF744
.L_814AF690:
/* 814AF690 | 7F AC EB 78 */	mr r12, r29
/* 814AF694 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814AF698 | 7D 89 03 A6 */	mtctr r12
/* 814AF69C | 4E 80 04 21 */	bctrl
/* 814AF6A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AF6A4 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814AF6A8 | 41 82 00 1C */	beq .L_814AF6C4
/* 814AF6AC | 7C A0 1A 78 */	xor r0, r5, r3
/* 814AF6B0 | 7C 04 0E 70 */	srawi r4, r0, 1
/* 814AF6B4 | 7C 00 28 38 */	and r0, r0, r5
/* 814AF6B8 | 7C 00 20 50 */	subf r0, r0, r4
/* 814AF6BC | 54 00 0F FE */	srwi r0, r0, 31
/* 814AF6C0 | 48 00 00 18 */	b .L_814AF6D8
.L_814AF6C4:
/* 814AF6C4 | 7C 60 2A 78 */	xor r0, r3, r5
/* 814AF6C8 | 7C 04 0E 70 */	srawi r4, r0, 1
/* 814AF6CC | 7C 00 18 38 */	and r0, r0, r3
/* 814AF6D0 | 7C 00 20 50 */	subf r0, r0, r4
/* 814AF6D4 | 54 00 0F FE */	srwi r0, r0, 31
.L_814AF6D8:
/* 814AF6D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF6DC | 41 82 00 5C */	beq .L_814AF738
/* 814AF6E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AF6E4 | 80 BB 00 04 */	lwz r5, 0x4(r27)
/* 814AF6E8 | 41 82 00 1C */	beq .L_814AF704
/* 814AF6EC | 7C 60 2A 78 */	xor r0, r3, r5
/* 814AF6F0 | 7C 04 0E 70 */	srawi r4, r0, 1
/* 814AF6F4 | 7C 00 18 38 */	and r0, r0, r3
/* 814AF6F8 | 7C 00 20 50 */	subf r0, r0, r4
/* 814AF6FC | 54 00 0F FE */	srwi r0, r0, 31
/* 814AF700 | 48 00 00 18 */	b .L_814AF718
.L_814AF704:
/* 814AF704 | 7C A0 1A 78 */	xor r0, r5, r3
/* 814AF708 | 7C 04 0E 70 */	srawi r4, r0, 1
/* 814AF70C | 7C 00 28 38 */	and r0, r0, r5
/* 814AF710 | 7C 00 20 50 */	subf r0, r0, r4
/* 814AF714 | 54 00 0F FE */	srwi r0, r0, 31
.L_814AF718:
/* 814AF718 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AF71C | 41 82 00 1C */	beq .L_814AF738
/* 814AF720 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814AF724 | 3B C0 00 01 */	li r30, 0x1
/* 814AF728 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 814AF72C | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 814AF730 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814AF734 | 90 1B 00 0C */	stw r0, 0xc(r27)
.L_814AF738:
/* 814AF738 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AF73C | 38 80 00 00 */	li r4, 0x0
/* 814AF740 | 4B FF FC C9 */	bl NWC24IterateDlTask
.L_814AF744:
/* 814AF744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF748 | 40 80 FF 48 */	bge .L_814AF690
/* 814AF74C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AF750 | 41 82 00 14 */	beq .L_814AF764
/* 814AF754 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814AF758 | 38 60 00 00 */	li r3, 0x0
/* 814AF75C | 90 1B 00 08 */	stw r0, 0x8(r27)
/* 814AF760 | 48 00 00 10 */	b .L_814AF770
.L_814AF764:
/* 814AF764 | 38 00 00 00 */	li r0, 0x0
/* 814AF768 | 38 60 FF F1 */	li r3, -0xf
/* 814AF76C | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_814AF770:
/* 814AF770 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AF774 | 48 14 9D 99 */	bl _restgpr_27
/* 814AF778 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AF77C | 7C 08 03 A6 */	mtlr r0
/* 814AF780 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AF784 | 4E 80 00 20 */	blr
.endfn NWC24IterateDlTaskEx

# .text:0xDD0 | 0x814AF788 | size: 0x3F4
.fn NWC24UpdateDlTask, global
/* 814AF788 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AF78C | 7C 08 02 A6 */	mflr r0
/* 814AF790 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AF794 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AF798 | 7C 7F 1B 78 */	mr r31, r3
/* 814AF79C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AF7A0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AF7A4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814AF7A8 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF7AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AF7B0 | 41 82 00 0C */	beq .L_814AF7BC
/* 814AF7B4 | 3B 84 36 00 */	addi r28, r4, 0x3600
/* 814AF7B8 | 48 00 00 08 */	b .L_814AF7C0
.L_814AF7BC:
/* 814AF7BC | 3B 80 00 00 */	li r28, 0x0
.L_814AF7C0:
/* 814AF7C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF7C4 | 40 82 00 0C */	bne .L_814AF7D0
/* 814AF7C8 | 38 60 FF FD */	li r3, -0x3
/* 814AF7CC | 48 00 00 9C */	b .L_814AF868
.L_814AF7D0:
/* 814AF7D0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AF7D4 | 40 82 00 0C */	bne .L_814AF7E0
/* 814AF7D8 | 38 60 FF F7 */	li r3, -0x9
/* 814AF7DC | 48 00 00 8C */	b .L_814AF868
.L_814AF7E0:
/* 814AF7E0 | 4B FF 0B 2D */	bl NWC24IsMsgLibOpenedByTool
/* 814AF7E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF7E8 | 40 82 00 5C */	bne .L_814AF844
/* 814AF7EC | 83 BF 00 08 */	lwz r29, 0x8(r31)
/* 814AF7F0 | 4B FF 02 51 */	bl NWC24GetAppId
/* 814AF7F4 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AF7F8 | 57 A0 00 2E */	clrrwi r0, r29, 8
/* 814AF7FC | 7C 00 18 50 */	subf r0, r0, r3
/* 814AF800 | 7C 00 00 34 */	cntlzw r0, r0
/* 814AF804 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AF808 | 40 82 00 3C */	bne .L_814AF844
/* 814AF80C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814AF810 | 3B C0 00 00 */	li r30, 0x0
/* 814AF814 | A3 BF 00 14 */	lhz r29, 0x14(r31)
/* 814AF818 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AF81C | 41 82 00 18 */	beq .L_814AF834
/* 814AF820 | 4B FF 02 6D */	bl NWC24GetGroupId
/* 814AF824 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AF828 | 7C 1D 00 40 */	cmplw r29, r0
/* 814AF82C | 40 82 00 08 */	bne .L_814AF834
/* 814AF830 | 3B C0 00 01 */	li r30, 0x1
.L_814AF834:
/* 814AF834 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AF838 | 40 82 00 0C */	bne .L_814AF844
/* 814AF83C | 38 60 FF F9 */	li r3, -0x7
/* 814AF840 | 48 00 00 28 */	b .L_814AF868
.L_814AF844:
/* 814AF844 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814AF848 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AF84C | 41 82 00 18 */	beq .L_814AF864
/* 814AF850 | A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 814AF854 | 7C 03 00 40 */	cmplw r3, r0
/* 814AF858 | 41 80 00 0C */	blt .L_814AF864
/* 814AF85C | 38 60 FF FD */	li r3, -0x3
/* 814AF860 | 48 00 00 08 */	b .L_814AF868
.L_814AF864:
/* 814AF864 | 38 60 00 00 */	li r3, 0x0
.L_814AF868:
/* 814AF868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF86C | 41 82 00 08 */	beq .L_814AF874
/* 814AF870 | 48 00 02 EC */	b .L_814AFB5C
.L_814AF874:
/* 814AF874 | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 814AF878 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814AF87C | 41 82 00 28 */	beq .L_814AF8A4
/* 814AF880 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF884 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF888 | 41 82 00 0C */	beq .L_814AF894
/* 814AF88C | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814AF890 | 48 00 00 08 */	b .L_814AF898
.L_814AF894:
/* 814AF894 | 38 60 00 00 */	li r3, 0x0
.L_814AF898:
/* 814AF898 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814AF89C | 7C 04 00 40 */	cmplw r4, r0
/* 814AF8A0 | 41 80 00 0C */	blt .L_814AF8AC
.L_814AF8A4:
/* 814AF8A4 | 38 60 FF FD */	li r3, -0x3
/* 814AF8A8 | 48 00 02 B4 */	b .L_814AFB5C
.L_814AF8AC:
/* 814AF8AC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AF8B0 | 4B FF EB 05 */	bl NWC24iGetUniversalTime
/* 814AF8B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF8B8 | 41 80 00 C8 */	blt .L_814AF980
/* 814AF8BC | 83 8D AD A0 */	lwz r28, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF8C0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814AF8C4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AF8C8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AF8CC | 41 82 00 0C */	beq .L_814AF8D8
/* 814AF8D0 | 38 BC 36 00 */	addi r5, r28, 0x3600
/* 814AF8D4 | 48 00 00 08 */	b .L_814AF8DC
.L_814AF8D8:
/* 814AF8D8 | 38 A0 00 00 */	li r5, 0x0
.L_814AF8DC:
/* 814AF8DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AF8E0 | 40 82 00 0C */	bne .L_814AF8EC
/* 814AF8E4 | 38 A0 FF FD */	li r5, -0x3
/* 814AF8E8 | 48 00 00 38 */	b .L_814AF920
.L_814AF8EC:
/* 814AF8EC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF8F0 | 40 82 00 0C */	bne .L_814AF8FC
/* 814AF8F4 | 38 A0 FF F7 */	li r5, -0x9
/* 814AF8F8 | 48 00 00 28 */	b .L_814AF920
.L_814AF8FC:
/* 814AF8FC | A0 DF 00 00 */	lhz r6, 0x0(r31)
/* 814AF900 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814AF904 | 41 82 00 18 */	beq .L_814AF91C
/* 814AF908 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814AF90C | 7C 06 00 40 */	cmplw r6, r0
/* 814AF910 | 41 80 00 0C */	blt .L_814AF91C
/* 814AF914 | 38 A0 FF FD */	li r5, -0x3
/* 814AF918 | 48 00 00 08 */	b .L_814AF920
.L_814AF91C:
/* 814AF91C | 38 A0 00 00 */	li r5, 0x0
.L_814AF920:
/* 814AF920 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF924 | 41 82 00 08 */	beq .L_814AF92C
/* 814AF928 | 48 00 00 48 */	b .L_814AF970
.L_814AF92C:
/* 814AF92C | A3 DF 00 00 */	lhz r30, 0x0(r31)
/* 814AF930 | 28 1E FF FF */	cmplwi r30, 0xffff
/* 814AF934 | 40 82 00 0C */	bne .L_814AF940
/* 814AF938 | 38 A0 FF FE */	li r5, -0x2
/* 814AF93C | 48 00 00 34 */	b .L_814AF970
.L_814AF940:
/* 814AF940 | 38 C0 00 3C */	li r6, 0x3c
/* 814AF944 | 38 A0 00 00 */	li r5, 0x0
/* 814AF948 | 48 14 9C C9 */	bl __div2i
/* 814AF94C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AF950 | 41 82 00 0C */	beq .L_814AF95C
/* 814AF954 | 38 7C 36 00 */	addi r3, r28, 0x3600
/* 814AF958 | 48 00 00 08 */	b .L_814AF960
.L_814AF95C:
/* 814AF95C | 38 60 00 00 */	li r3, 0x0
.L_814AF960:
/* 814AF960 | 57 C0 23 36 */	clrlslwi r0, r30, 16, 4
/* 814AF964 | 38 A0 00 00 */	li r5, 0x0
/* 814AF968 | 7C 63 02 14 */	add r3, r3, r0
/* 814AF96C | 90 83 00 88 */	stw r4, 0x88(r3)
.L_814AF970:
/* 814AF970 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF974 | 7C A3 2B 78 */	mr r3, r5
/* 814AF978 | 40 80 00 08 */	bge .L_814AF980
/* 814AF97C | 48 00 00 08 */	b .L_814AF984
.L_814AF980:
/* 814AF980 | 7C 65 1B 78 */	mr r5, r3
.L_814AF984:
/* 814AF984 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AF988 | 40 80 00 0C */	bge .L_814AF994
/* 814AF98C | 7C A3 2B 78 */	mr r3, r5
/* 814AF990 | 48 00 01 CC */	b .L_814AFB5C
.L_814AF994:
/* 814AF994 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AF998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF99C | 41 82 00 0C */	beq .L_814AF9A8
/* 814AF9A0 | 3B 83 36 00 */	addi r28, r3, 0x3600
/* 814AF9A4 | 48 00 00 08 */	b .L_814AF9AC
.L_814AF9A8:
/* 814AF9A8 | 3B 80 00 00 */	li r28, 0x0
.L_814AF9AC:
/* 814AF9AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AF9B0 | 40 82 00 0C */	bne .L_814AF9BC
/* 814AF9B4 | 38 00 FF FD */	li r0, -0x3
/* 814AF9B8 | 48 00 00 9C */	b .L_814AFA54
.L_814AF9BC:
/* 814AF9BC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AF9C0 | 40 82 00 0C */	bne .L_814AF9CC
/* 814AF9C4 | 38 00 FF F7 */	li r0, -0x9
/* 814AF9C8 | 48 00 00 8C */	b .L_814AFA54
.L_814AF9CC:
/* 814AF9CC | 4B FF 09 41 */	bl NWC24IsMsgLibOpenedByTool
/* 814AF9D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AF9D4 | 40 82 00 5C */	bne .L_814AFA30
/* 814AF9D8 | 83 BF 00 08 */	lwz r29, 0x8(r31)
/* 814AF9DC | 4B FF 00 65 */	bl NWC24GetAppId
/* 814AF9E0 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AF9E4 | 57 A0 00 2E */	clrrwi r0, r29, 8
/* 814AF9E8 | 7C 00 18 50 */	subf r0, r0, r3
/* 814AF9EC | 7C 00 00 34 */	cntlzw r0, r0
/* 814AF9F0 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AF9F4 | 40 82 00 3C */	bne .L_814AFA30
/* 814AF9F8 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814AF9FC | 3B C0 00 00 */	li r30, 0x0
/* 814AFA00 | A3 BF 00 14 */	lhz r29, 0x14(r31)
/* 814AFA04 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AFA08 | 41 82 00 18 */	beq .L_814AFA20
/* 814AFA0C | 4B FF 00 81 */	bl NWC24GetGroupId
/* 814AFA10 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AFA14 | 7C 1D 00 40 */	cmplw r29, r0
/* 814AFA18 | 40 82 00 08 */	bne .L_814AFA20
/* 814AFA1C | 3B C0 00 01 */	li r30, 0x1
.L_814AFA20:
/* 814AFA20 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AFA24 | 40 82 00 0C */	bne .L_814AFA30
/* 814AFA28 | 38 00 FF F9 */	li r0, -0x7
/* 814AFA2C | 48 00 00 28 */	b .L_814AFA54
.L_814AFA30:
/* 814AFA30 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814AFA34 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AFA38 | 41 82 00 18 */	beq .L_814AFA50
/* 814AFA3C | A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 814AFA40 | 7C 03 00 40 */	cmplw r3, r0
/* 814AFA44 | 41 80 00 0C */	blt .L_814AFA50
/* 814AFA48 | 38 00 FF FD */	li r0, -0x3
/* 814AFA4C | 48 00 00 08 */	b .L_814AFA54
.L_814AFA50:
/* 814AFA50 | 38 00 00 00 */	li r0, 0x0
.L_814AFA54:
/* 814AFA54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AFA58 | 40 82 00 10 */	bne .L_814AFA68
/* 814AFA5C | 38 00 00 00 */	li r0, 0x0
/* 814AFA60 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814AFA64 | B0 1F 00 1A */	sth r0, 0x1a(r31)
.L_814AFA68:
/* 814AFA68 | 88 1F 00 25 */	lbz r0, 0x25(r31)
/* 814AFA6C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814AFA70 | 40 82 00 E4 */	bne .L_814AFB54
/* 814AFA74 | 38 80 00 01 */	li r4, 0x1
/* 814AFA78 | 48 00 00 10 */	b .L_814AFA88
.L_814AFA7C:
/* 814AFA7C | 38 05 00 01 */	addi r0, r5, 0x1
/* 814AFA80 | 54 00 06 FE */	clrlwi r0, r0, 27
/* 814AFA84 | 98 1F 00 24 */	stb r0, 0x24(r31)
.L_814AFA88:
/* 814AFA88 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFA8C | 88 BF 00 24 */	lbz r5, 0x24(r31)
/* 814AFA90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFA94 | 41 82 00 0C */	beq .L_814AFAA0
/* 814AFA98 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814AFA9C | 48 00 00 08 */	b .L_814AFAA4
.L_814AFAA0:
/* 814AFAA0 | 38 60 00 00 */	li r3, 0x0
.L_814AFAA4:
/* 814AFAA4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AFAA8 | 40 82 00 0C */	bne .L_814AFAB4
/* 814AFAAC | 38 60 FF FD */	li r3, -0x3
/* 814AFAB0 | 48 00 00 38 */	b .L_814AFAE8
.L_814AFAB4:
/* 814AFAB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFAB8 | 40 82 00 0C */	bne .L_814AFAC4
/* 814AFABC | 38 60 FF F7 */	li r3, -0x9
/* 814AFAC0 | 48 00 00 28 */	b .L_814AFAE8
.L_814AFAC4:
/* 814AFAC4 | A0 DF 00 00 */	lhz r6, 0x0(r31)
/* 814AFAC8 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814AFACC | 41 82 00 18 */	beq .L_814AFAE4
/* 814AFAD0 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814AFAD4 | 7C 06 00 40 */	cmplw r6, r0
/* 814AFAD8 | 41 80 00 0C */	blt .L_814AFAE4
/* 814AFADC | 38 60 FF FD */	li r3, -0x3
/* 814AFAE0 | 48 00 00 08 */	b .L_814AFAE8
.L_814AFAE4:
/* 814AFAE4 | 38 60 00 00 */	li r3, 0x0
.L_814AFAE8:
/* 814AFAE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFAEC | 41 82 00 08 */	beq .L_814AFAF4
/* 814AFAF0 | 48 00 00 50 */	b .L_814AFB40
.L_814AFAF4:
/* 814AFAF4 | 88 1F 00 25 */	lbz r0, 0x25(r31)
/* 814AFAF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AFAFC | 40 82 00 0C */	bne .L_814AFB08
/* 814AFB00 | 38 60 FF D8 */	li r3, -0x28
/* 814AFB04 | 48 00 00 3C */	b .L_814AFB40
.L_814AFB08:
/* 814AFB08 | 80 DF 00 28 */	lwz r6, 0x28(r31)
/* 814AFB0C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814AFB10 | 40 82 00 0C */	bne .L_814AFB1C
/* 814AFB14 | 38 60 FF FF */	li r3, -0x1
/* 814AFB18 | 48 00 00 28 */	b .L_814AFB40
.L_814AFB1C:
/* 814AFB1C | 28 05 00 1F */	cmplwi r5, 0x1f
/* 814AFB20 | 40 81 00 0C */	ble .L_814AFB2C
/* 814AFB24 | 38 60 FF FD */	li r3, -0x3
/* 814AFB28 | 48 00 00 18 */	b .L_814AFB40
.L_814AFB2C:
/* 814AFB2C | 7C 80 28 30 */	slw r0, r4, r5
/* 814AFB30 | 38 60 00 00 */	li r3, 0x0
/* 814AFB34 | 7C 00 30 39 */	and. r0, r0, r6
/* 814AFB38 | 40 82 00 08 */	bne .L_814AFB40
/* 814AFB3C | 38 60 FF D9 */	li r3, -0x27
.L_814AFB40:
/* 814AFB40 | 2C 03 FF D9 */	cmpwi r3, -0x27
/* 814AFB44 | 41 82 FF 38 */	beq .L_814AFA7C
/* 814AFB48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFB4C | 40 80 00 08 */	bge .L_814AFB54
/* 814AFB50 | 48 00 00 0C */	b .L_814AFB5C
.L_814AFB54:
/* 814AFB54 | 7F E3 FB 78 */	mr r3, r31
/* 814AFB58 | 48 00 15 19 */	bl StoreDlTask
.L_814AFB5C:
/* 814AFB5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AFB60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AFB64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AFB68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AFB6C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814AFB70 | 7C 08 03 A6 */	mtlr r0
/* 814AFB74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AFB78 | 4E 80 00 20 */	blr
.endfn NWC24UpdateDlTask

# .text:0x11C4 | 0x814AFB7C | size: 0x1A4
.fn NWC24DeleteDlTask, global
/* 814AFB7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AFB80 | 7C 08 02 A6 */	mflr r0
/* 814AFB84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AFB88 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AFB8C | 7C 7F 1B 78 */	mr r31, r3
/* 814AFB90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AFB94 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AFB98 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814AFB9C | 4B FE FE A5 */	bl NWC24GetAppId
/* 814AFBA0 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814AFBA4 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814AFBA8 | 41 82 00 D0 */	beq .L_814AFC78
/* 814AFBAC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFBB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFBB4 | 41 82 00 0C */	beq .L_814AFBC0
/* 814AFBB8 | 3B 83 36 00 */	addi r28, r3, 0x3600
/* 814AFBBC | 48 00 00 08 */	b .L_814AFBC4
.L_814AFBC0:
/* 814AFBC0 | 3B 80 00 00 */	li r28, 0x0
.L_814AFBC4:
/* 814AFBC4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AFBC8 | 40 82 00 0C */	bne .L_814AFBD4
/* 814AFBCC | 38 60 FF FD */	li r3, -0x3
/* 814AFBD0 | 48 00 00 9C */	b .L_814AFC6C
.L_814AFBD4:
/* 814AFBD4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AFBD8 | 40 82 00 0C */	bne .L_814AFBE4
/* 814AFBDC | 38 60 FF F7 */	li r3, -0x9
/* 814AFBE0 | 48 00 00 8C */	b .L_814AFC6C
.L_814AFBE4:
/* 814AFBE4 | 4B FF 07 29 */	bl NWC24IsMsgLibOpenedByTool
/* 814AFBE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFBEC | 40 82 00 5C */	bne .L_814AFC48
/* 814AFBF0 | 83 BF 00 08 */	lwz r29, 0x8(r31)
/* 814AFBF4 | 4B FE FE 4D */	bl NWC24GetAppId
/* 814AFBF8 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814AFBFC | 57 A0 00 2E */	clrrwi r0, r29, 8
/* 814AFC00 | 7C 00 18 50 */	subf r0, r0, r3
/* 814AFC04 | 7C 00 00 34 */	cntlzw r0, r0
/* 814AFC08 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814AFC0C | 40 82 00 3C */	bne .L_814AFC48
/* 814AFC10 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814AFC14 | 3B C0 00 00 */	li r30, 0x0
/* 814AFC18 | A3 BF 00 14 */	lhz r29, 0x14(r31)
/* 814AFC1C | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814AFC20 | 41 82 00 18 */	beq .L_814AFC38
/* 814AFC24 | 4B FE FE 69 */	bl NWC24GetGroupId
/* 814AFC28 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814AFC2C | 7C 1D 00 40 */	cmplw r29, r0
/* 814AFC30 | 40 82 00 08 */	bne .L_814AFC38
/* 814AFC34 | 3B C0 00 01 */	li r30, 0x1
.L_814AFC38:
/* 814AFC38 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AFC3C | 40 82 00 0C */	bne .L_814AFC48
/* 814AFC40 | 38 60 FF F9 */	li r3, -0x7
/* 814AFC44 | 48 00 00 28 */	b .L_814AFC6C
.L_814AFC48:
/* 814AFC48 | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 814AFC4C | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814AFC50 | 41 82 00 18 */	beq .L_814AFC68
/* 814AFC54 | A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 814AFC58 | 7C 03 00 40 */	cmplw r3, r0
/* 814AFC5C | 41 80 00 0C */	blt .L_814AFC68
/* 814AFC60 | 38 60 FF FD */	li r3, -0x3
/* 814AFC64 | 48 00 00 08 */	b .L_814AFC6C
.L_814AFC68:
/* 814AFC68 | 38 60 00 00 */	li r3, 0x0
.L_814AFC6C:
/* 814AFC6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFC70 | 41 82 00 08 */	beq .L_814AFC78
/* 814AFC74 | 48 00 00 8C */	b .L_814AFD00
.L_814AFC78:
/* 814AFC78 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFC7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFC80 | 41 82 00 0C */	beq .L_814AFC8C
/* 814AFC84 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814AFC88 | 48 00 00 08 */	b .L_814AFC90
.L_814AFC8C:
/* 814AFC8C | 38 60 00 00 */	li r3, 0x0
.L_814AFC90:
/* 814AFC90 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AFC94 | 40 82 00 0C */	bne .L_814AFCA0
/* 814AFC98 | 38 60 FF FD */	li r3, -0x3
/* 814AFC9C | 48 00 00 38 */	b .L_814AFCD4
.L_814AFCA0:
/* 814AFCA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFCA4 | 40 82 00 0C */	bne .L_814AFCB0
/* 814AFCA8 | 38 60 FF F7 */	li r3, -0x9
/* 814AFCAC | 48 00 00 28 */	b .L_814AFCD4
.L_814AFCB0:
/* 814AFCB0 | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 814AFCB4 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814AFCB8 | 41 82 00 18 */	beq .L_814AFCD0
/* 814AFCBC | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814AFCC0 | 7C 04 00 40 */	cmplw r4, r0
/* 814AFCC4 | 41 80 00 0C */	blt .L_814AFCD0
/* 814AFCC8 | 38 60 FF FD */	li r3, -0x3
/* 814AFCCC | 48 00 00 08 */	b .L_814AFCD4
.L_814AFCD0:
/* 814AFCD0 | 38 60 00 00 */	li r3, 0x0
.L_814AFCD4:
/* 814AFCD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFCD8 | 41 82 00 08 */	beq .L_814AFCE0
/* 814AFCDC | 48 00 00 24 */	b .L_814AFD00
.L_814AFCE0:
/* 814AFCE0 | 7F E3 FB 78 */	mr r3, r31
/* 814AFCE4 | 48 00 1B 69 */	bl DeleteDlTask
/* 814AFCE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFCEC | 40 80 00 08 */	bge .L_814AFCF4
/* 814AFCF0 | 48 00 00 10 */	b .L_814AFD00
.L_814AFCF4:
/* 814AFCF4 | 3C 80 00 01 */	lis r4, 0x1
/* 814AFCF8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814AFCFC | B0 1F 00 00 */	sth r0, 0x0(r31)
.L_814AFD00:
/* 814AFD00 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AFD04 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AFD08 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AFD0C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AFD10 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814AFD14 | 7C 08 03 A6 */	mtlr r0
/* 814AFD18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AFD1C | 4E 80 00 20 */	blr
.endfn NWC24DeleteDlTask

# .text:0x1368 | 0x814AFD20 | size: 0x23C
.fn NWC24AddDlTask, global
/* 814AFD20 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814AFD24 | 7C 08 02 A6 */	mflr r0
/* 814AFD28 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814AFD2C | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814AFD30 | 7C 7F 1B 78 */	mr r31, r3
/* 814AFD34 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814AFD38 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFD3C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AFD40 | 41 82 00 0C */	beq .L_814AFD4C
/* 814AFD44 | 3B C4 36 00 */	addi r30, r4, 0x3600
/* 814AFD48 | 48 00 00 08 */	b .L_814AFD50
.L_814AFD4C:
/* 814AFD4C | 3B C0 00 00 */	li r30, 0x0
.L_814AFD50:
/* 814AFD50 | A0 1E 00 14 */	lhz r0, 0x14(r30)
/* 814AFD54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AFD58 | 40 82 00 84 */	bne .L_814AFDDC
/* 814AFD5C | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 814AFD60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AFD64 | 41 82 00 78 */	beq .L_814AFDDC
/* 814AFD68 | B0 1E 00 14 */	sth r0, 0x14(r30)
/* 814AFD6C | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 814AFD70 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814AFD74 | 40 81 00 0C */	ble .L_814AFD80
/* 814AFD78 | 38 00 00 20 */	li r0, 0x20
/* 814AFD7C | B0 1E 00 10 */	sth r0, 0x10(r30)
.L_814AFD80:
/* 814AFD80 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814AFD84 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AFD88 | 38 A0 00 04 */	li r5, 0x4
/* 814AFD8C | 4B FE DE 7D */	bl NWC24FOpen
/* 814AFD90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFD94 | 41 80 00 48 */	blt .L_814AFDDC
/* 814AFD98 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AFD9C | 38 80 00 00 */	li r4, 0x0
/* 814AFDA0 | 38 A0 00 00 */	li r5, 0x0
/* 814AFDA4 | 4B FE E3 51 */	bl NWC24FSeek
/* 814AFDA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFDAC | 41 80 00 28 */	blt .L_814AFDD4
/* 814AFDB0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFDB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFDB8 | 41 82 00 0C */	beq .L_814AFDC4
/* 814AFDBC | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814AFDC0 | 48 00 00 08 */	b .L_814AFDC8
.L_814AFDC4:
/* 814AFDC4 | 38 60 00 00 */	li r3, 0x0
.L_814AFDC8:
/* 814AFDC8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814AFDCC | 38 80 08 00 */	li r4, 0x800
/* 814AFDD0 | 4B FE E6 E5 */	bl NWC24FWrite
.L_814AFDD4:
/* 814AFDD4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AFDD8 | 4B FE E1 85 */	bl NWC24FClose
.L_814AFDDC:
/* 814AFDDC | A0 7E 00 14 */	lhz r3, 0x14(r30)
/* 814AFDE0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814AFDE4 | 41 80 00 18 */	blt .L_814AFDFC
/* 814AFDE8 | A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 814AFDEC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814AFDF0 | 41 80 00 0C */	blt .L_814AFDFC
/* 814AFDF4 | 7C 03 00 40 */	cmplw r3, r0
/* 814AFDF8 | 40 80 00 0C */	bge .L_814AFE04
.L_814AFDFC:
/* 814AFDFC | 38 60 FF F2 */	li r3, -0xe
/* 814AFE00 | 48 00 00 08 */	b .L_814AFE08
.L_814AFE04:
/* 814AFE04 | 38 60 00 00 */	li r3, 0x0
.L_814AFE08:
/* 814AFE08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFE0C | 40 80 00 08 */	bge .L_814AFE14
/* 814AFE10 | 48 00 01 34 */	b .L_814AFF44
.L_814AFE14:
/* 814AFE14 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFE18 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFE1C | 41 82 00 0C */	beq .L_814AFE28
/* 814AFE20 | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814AFE24 | 48 00 00 08 */	b .L_814AFE2C
.L_814AFE28:
/* 814AFE28 | 38 60 00 00 */	li r3, 0x0
.L_814AFE2C:
/* 814AFE2C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFE30 | A0 83 00 12 */	lhz r4, 0x12(r3)
/* 814AFE34 | 7F E3 FB 78 */	mr r3, r31
/* 814AFE38 | 41 82 00 0C */	beq .L_814AFE44
/* 814AFE3C | 38 A5 36 00 */	addi r5, r5, 0x3600
/* 814AFE40 | 48 00 00 08 */	b .L_814AFE48
.L_814AFE44:
/* 814AFE44 | 38 A0 00 00 */	li r5, 0x0
.L_814AFE48:
/* 814AFE48 | A0 A5 00 14 */	lhz r5, 0x14(r5)
/* 814AFE4C | 48 00 13 BD */	bl AddTaskInternal
/* 814AFE50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFE54 | 41 80 00 F0 */	blt .L_814AFF44
/* 814AFE58 | 38 00 00 00 */	li r0, 0x0
/* 814AFE5C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AFE60 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814AFE64 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AFE68 | 4B FF E5 4D */	bl NWC24iGetUniversalTime
/* 814AFE6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AFE70 | 40 80 00 08 */	bge .L_814AFE78
/* 814AFE74 | 48 00 00 D0 */	b .L_814AFF44
.L_814AFE78:
/* 814AFE78 | A0 1F 00 1C */	lhz r0, 0x1c(r31)
/* 814AFE7C | 83 CD AD A0 */	lwz r30, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFE80 | 1C 60 00 3C */	mulli r3, r0, 0x3c
/* 814AFE84 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AFE88 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AFE8C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814AFE90 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814AFE94 | 7C 84 18 14 */	addc r4, r4, r3
/* 814AFE98 | 7C 65 01 14 */	adde r3, r5, r0
/* 814AFE9C | 41 82 00 0C */	beq .L_814AFEA8
/* 814AFEA0 | 38 BE 36 00 */	addi r5, r30, 0x3600
/* 814AFEA4 | 48 00 00 08 */	b .L_814AFEAC
.L_814AFEA8:
/* 814AFEA8 | 38 A0 00 00 */	li r5, 0x0
.L_814AFEAC:
/* 814AFEAC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AFEB0 | 40 82 00 0C */	bne .L_814AFEBC
/* 814AFEB4 | 38 A0 FF FD */	li r5, -0x3
/* 814AFEB8 | 48 00 00 38 */	b .L_814AFEF0
.L_814AFEBC:
/* 814AFEBC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFEC0 | 40 82 00 0C */	bne .L_814AFECC
/* 814AFEC4 | 38 A0 FF F7 */	li r5, -0x9
/* 814AFEC8 | 48 00 00 28 */	b .L_814AFEF0
.L_814AFECC:
/* 814AFECC | A0 DF 00 00 */	lhz r6, 0x0(r31)
/* 814AFED0 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814AFED4 | 41 82 00 18 */	beq .L_814AFEEC
/* 814AFED8 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814AFEDC | 7C 06 00 40 */	cmplw r6, r0
/* 814AFEE0 | 41 80 00 0C */	blt .L_814AFEEC
/* 814AFEE4 | 38 A0 FF FD */	li r5, -0x3
/* 814AFEE8 | 48 00 00 08 */	b .L_814AFEF0
.L_814AFEEC:
/* 814AFEEC | 38 A0 00 00 */	li r5, 0x0
.L_814AFEF0:
/* 814AFEF0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFEF4 | 41 82 00 08 */	beq .L_814AFEFC
/* 814AFEF8 | 48 00 00 48 */	b .L_814AFF40
.L_814AFEFC:
/* 814AFEFC | A3 FF 00 00 */	lhz r31, 0x0(r31)
/* 814AFF00 | 28 1F FF FF */	cmplwi r31, 0xffff
/* 814AFF04 | 40 82 00 0C */	bne .L_814AFF10
/* 814AFF08 | 38 A0 FF FE */	li r5, -0x2
/* 814AFF0C | 48 00 00 34 */	b .L_814AFF40
.L_814AFF10:
/* 814AFF10 | 38 C0 00 3C */	li r6, 0x3c
/* 814AFF14 | 38 A0 00 00 */	li r5, 0x0
/* 814AFF18 | 48 14 96 F9 */	bl __div2i
/* 814AFF1C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AFF20 | 41 82 00 0C */	beq .L_814AFF2C
/* 814AFF24 | 38 7E 36 00 */	addi r3, r30, 0x3600
/* 814AFF28 | 48 00 00 08 */	b .L_814AFF30
.L_814AFF2C:
/* 814AFF2C | 38 60 00 00 */	li r3, 0x0
.L_814AFF30:
/* 814AFF30 | 57 E0 23 36 */	clrlslwi r0, r31, 16, 4
/* 814AFF34 | 38 A0 00 00 */	li r5, 0x0
/* 814AFF38 | 7C 63 02 14 */	add r3, r3, r0
/* 814AFF3C | 90 83 00 84 */	stw r4, 0x84(r3)
.L_814AFF40:
/* 814AFF40 | 7C A3 2B 78 */	mr r3, r5
.L_814AFF44:
/* 814AFF44 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814AFF48 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814AFF4C | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814AFF50 | 7C 08 03 A6 */	mtlr r0
/* 814AFF54 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814AFF58 | 4E 80 00 20 */	blr
.endfn NWC24AddDlTask

# .text:0x15A4 | 0x814AFF5C | size: 0x170
.fn NWC24GetDlTask, global
/* 814AFF5C | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814AFF60 | 7C 08 02 A6 */	mflr r0
/* 814AFF64 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814AFF68 | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814AFF6C | 7C 7F 1B 78 */	mr r31, r3
/* 814AFF70 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814AFF74 | 7C 9E 23 78 */	mr r30, r4
/* 814AFF78 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814AFF7C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFF80 | 41 82 00 0C */	beq .L_814AFF8C
/* 814AFF84 | 38 05 36 00 */	addi r0, r5, 0x3600
/* 814AFF88 | 48 00 00 08 */	b .L_814AFF90
.L_814AFF8C:
/* 814AFF8C | 38 00 00 00 */	li r0, 0x0
.L_814AFF90:
/* 814AFF90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AFF94 | 40 82 00 0C */	bne .L_814AFFA0
/* 814AFF98 | 38 60 FF F7 */	li r3, -0x9
/* 814AFF9C | 48 00 01 18 */	b .L_814B00B4
.L_814AFFA0:
/* 814AFFA0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFFA4 | 41 82 00 0C */	beq .L_814AFFB0
/* 814AFFA8 | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814AFFAC | 48 00 00 08 */	b .L_814AFFB4
.L_814AFFB0:
/* 814AFFB0 | 38 60 00 00 */	li r3, 0x0
.L_814AFFB4:
/* 814AFFB4 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814AFFB8 | 7C 04 00 40 */	cmplw r4, r0
/* 814AFFBC | 40 80 00 0C */	bge .L_814AFFC8
/* 814AFFC0 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814AFFC4 | 40 82 00 0C */	bne .L_814AFFD0
.L_814AFFC8:
/* 814AFFC8 | 38 60 FF FD */	li r3, -0x3
/* 814AFFCC | 48 00 00 34 */	b .L_814B0000
.L_814AFFD0:
/* 814AFFD0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AFFD4 | 41 82 00 0C */	beq .L_814AFFE0
/* 814AFFD8 | 38 A5 36 00 */	addi r5, r5, 0x3600
/* 814AFFDC | 48 00 00 08 */	b .L_814AFFE4
.L_814AFFE0:
/* 814AFFE0 | 38 A0 00 00 */	li r5, 0x0
.L_814AFFE4:
/* 814AFFE4 | 54 80 23 36 */	clrlslwi r0, r4, 16, 4
/* 814AFFE8 | 38 60 00 00 */	li r3, 0x0
/* 814AFFEC | 7C 85 02 14 */	add r4, r5, r0
/* 814AFFF0 | 80 04 00 80 */	lwz r0, 0x80(r4)
/* 814AFFF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AFFF8 | 40 82 00 08 */	bne .L_814B0000
/* 814AFFFC | 38 60 FF F3 */	li r3, -0xd
.L_814B0000:
/* 814B0000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0004 | 40 80 00 08 */	bge .L_814B000C
/* 814B0008 | 48 00 00 AC */	b .L_814B00B4
.L_814B000C:
/* 814B000C | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B0010 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0014 | 38 A0 00 0A */	li r5, 0xa
/* 814B0018 | 4B FE DB F1 */	bl NWC24FOpen
/* 814B001C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0020 | 40 80 00 08 */	bge .L_814B0028
/* 814B0024 | 48 00 00 90 */	b .L_814B00B4
.L_814B0028:
/* 814B0028 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B002C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0030 | 41 82 00 0C */	beq .L_814B003C
/* 814B0034 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0038 | 48 00 00 08 */	b .L_814B0040
.L_814B003C:
/* 814B003C | 38 60 00 00 */	li r3, 0x0
.L_814B0040:
/* 814B0040 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B0044 | 28 00 00 78 */	cmplwi r0, 0x78
/* 814B0048 | 41 81 00 0C */	bgt .L_814B0054
/* 814B004C | 7C 1E 00 40 */	cmplw r30, r0
/* 814B0050 | 41 80 00 0C */	blt .L_814B005C
.L_814B0054:
/* 814B0054 | 38 60 FF FD */	li r3, -0x3
/* 814B0058 | 48 00 00 18 */	b .L_814B0070
.L_814B005C:
/* 814B005C | 57 C4 49 EC */	clrlslwi r4, r30, 16, 9
/* 814B0060 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0064 | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B0068 | 38 A0 00 00 */	li r5, 0x0
/* 814B006C | 4B FE E0 89 */	bl NWC24FSeek
.L_814B0070:
/* 814B0070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0074 | 40 80 00 0C */	bge .L_814B0080
/* 814B0078 | 7C 7F 1B 78 */	mr r31, r3
/* 814B007C | 48 00 00 24 */	b .L_814B00A0
.L_814B0080:
/* 814B0080 | 7F E3 FB 78 */	mr r3, r31
/* 814B0084 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B0088 | 38 80 02 00 */	li r4, 0x200
/* 814B008C | 4B FE E2 59 */	bl NWC24FRead
/* 814B0090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0094 | 3B E0 00 00 */	li r31, 0x0
/* 814B0098 | 40 80 00 08 */	bge .L_814B00A0
/* 814B009C | 7C 7F 1B 78 */	mr r31, r3
.L_814B00A0:
/* 814B00A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B00A4 | 4B FE DE B9 */	bl NWC24FClose
/* 814B00A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B00AC | 41 82 00 08 */	beq .L_814B00B4
/* 814B00B0 | 7F E3 FB 78 */	mr r3, r31
.L_814B00B4:
/* 814B00B4 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814B00B8 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814B00BC | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814B00C0 | 7C 08 03 A6 */	mtlr r0
/* 814B00C4 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814B00C8 | 4E 80 00 20 */	blr
.endfn NWC24GetDlTask

# .text:0x1714 | 0x814B00CC | size: 0x2C0
.fn NWC24PurgeOldestDlTask, global
/* 814B00CC | 94 21 FD 30 */	stwu r1, -0x2d0(r1)
/* 814B00D0 | 7C 08 02 A6 */	mflr r0
/* 814B00D4 | 38 80 00 00 */	li r4, 0x0
/* 814B00D8 | 38 A0 00 18 */	li r5, 0x18
/* 814B00DC | 90 01 02 D4 */	stw r0, 0x2d4(r1)
/* 814B00E0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814B00E4 | 93 E1 02 CC */	stw r31, 0x2cc(r1)
/* 814B00E8 | 93 C1 02 C8 */	stw r30, 0x2c8(r1)
/* 814B00EC | 4B E8 02 49 */	bl memset
/* 814B00F0 | 38 80 00 00 */	li r4, 0x0
/* 814B00F4 | 3C A0 80 00 */	lis r5, 0x8000
/* 814B00F8 | 38 00 00 01 */	li r0, 0x1
/* 814B00FC | 38 60 FF FF */	li r3, -0x1
/* 814B0100 | 38 C5 FF FF */	subi r6, r5, 0x1
/* 814B0104 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814B0108 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B010C | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 814B0110 | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 814B0114 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 814B0118 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 814B011C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814B0120 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B0124 | 40 80 00 38 */	bge .L_814B015C
/* 814B0128 | 38 60 00 00 */	li r3, 0x0
/* 814B012C | 48 00 02 48 */	b .L_814B0374
/* 814B0130 | 48 00 00 2C */	b .L_814B015C
.L_814B0134:
/* 814B0134 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0138 | A0 A1 00 08 */	lhz r5, 0x8(r1)
/* 814B013C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0140 | 41 82 00 0C */	beq .L_814B014C
/* 814B0144 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B0148 | 48 00 00 08 */	b .L_814B0150
.L_814B014C:
/* 814B014C | 38 80 00 00 */	li r4, 0x0
.L_814B0150:
/* 814B0150 | A0 04 00 12 */	lhz r0, 0x12(r4)
/* 814B0154 | 7C 05 00 40 */	cmplw r5, r0
/* 814B0158 | 40 80 00 18 */	bge .L_814B0170
.L_814B015C:
/* 814B015C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814B0160 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B0164 | 4B FF F3 E1 */	bl NWC24IterateDlTaskEx
/* 814B0168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B016C | 41 82 FF C8 */	beq .L_814B0134
.L_814B0170:
/* 814B0170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0174 | 41 80 01 F4 */	blt .L_814B0368
/* 814B0178 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B017C | 3B C1 00 C8 */	addi r30, r1, 0xc8
/* 814B0180 | A3 E1 00 08 */	lhz r31, 0x8(r1)
/* 814B0184 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0188 | 41 82 00 0C */	beq .L_814B0194
/* 814B018C | 38 04 36 00 */	addi r0, r4, 0x3600
/* 814B0190 | 48 00 00 08 */	b .L_814B0198
.L_814B0194:
/* 814B0194 | 38 00 00 00 */	li r0, 0x0
.L_814B0198:
/* 814B0198 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B019C | 40 82 00 0C */	bne .L_814B01A8
/* 814B01A0 | 38 60 FF F7 */	li r3, -0x9
/* 814B01A4 | 48 00 01 18 */	b .L_814B02BC
.L_814B01A8:
/* 814B01A8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B01AC | 41 82 00 0C */	beq .L_814B01B8
/* 814B01B0 | 38 64 36 00 */	addi r3, r4, 0x3600
/* 814B01B4 | 48 00 00 08 */	b .L_814B01BC
.L_814B01B8:
/* 814B01B8 | 38 60 00 00 */	li r3, 0x0
.L_814B01BC:
/* 814B01BC | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B01C0 | 7C 1F 00 40 */	cmplw r31, r0
/* 814B01C4 | 40 80 00 0C */	bge .L_814B01D0
/* 814B01C8 | 28 1F FF FF */	cmplwi r31, 0xffff
/* 814B01CC | 40 82 00 0C */	bne .L_814B01D8
.L_814B01D0:
/* 814B01D0 | 38 60 FF FD */	li r3, -0x3
/* 814B01D4 | 48 00 00 34 */	b .L_814B0208
.L_814B01D8:
/* 814B01D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B01DC | 41 82 00 0C */	beq .L_814B01E8
/* 814B01E0 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B01E4 | 48 00 00 08 */	b .L_814B01EC
.L_814B01E8:
/* 814B01E8 | 38 80 00 00 */	li r4, 0x0
.L_814B01EC:
/* 814B01EC | 57 E0 23 36 */	clrlslwi r0, r31, 16, 4
/* 814B01F0 | 38 60 00 00 */	li r3, 0x0
/* 814B01F4 | 7C 84 02 14 */	add r4, r4, r0
/* 814B01F8 | 80 04 00 80 */	lwz r0, 0x80(r4)
/* 814B01FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0200 | 40 82 00 08 */	bne .L_814B0208
/* 814B0204 | 38 60 FF F3 */	li r3, -0xd
.L_814B0208:
/* 814B0208 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B020C | 40 80 00 08 */	bge .L_814B0214
/* 814B0210 | 48 00 00 AC */	b .L_814B02BC
.L_814B0214:
/* 814B0214 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B0218 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814B021C | 38 A0 00 0A */	li r5, 0xa
/* 814B0220 | 4B FE D9 E9 */	bl NWC24FOpen
/* 814B0224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0228 | 40 80 00 08 */	bge .L_814B0230
/* 814B022C | 48 00 00 90 */	b .L_814B02BC
.L_814B0230:
/* 814B0230 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0234 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0238 | 41 82 00 0C */	beq .L_814B0244
/* 814B023C | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0240 | 48 00 00 08 */	b .L_814B0248
.L_814B0244:
/* 814B0244 | 38 60 00 00 */	li r3, 0x0
.L_814B0248:
/* 814B0248 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B024C | 28 00 00 78 */	cmplwi r0, 0x78
/* 814B0250 | 41 81 00 0C */	bgt .L_814B025C
/* 814B0254 | 7C 1F 00 40 */	cmplw r31, r0
/* 814B0258 | 41 80 00 0C */	blt .L_814B0264
.L_814B025C:
/* 814B025C | 38 60 FF FD */	li r3, -0x3
/* 814B0260 | 48 00 00 18 */	b .L_814B0278
.L_814B0264:
/* 814B0264 | 57 E4 49 EC */	clrlslwi r4, r31, 16, 9
/* 814B0268 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814B026C | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B0270 | 38 A0 00 00 */	li r5, 0x0
/* 814B0274 | 4B FE DE 81 */	bl NWC24FSeek
.L_814B0278:
/* 814B0278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B027C | 40 80 00 0C */	bge .L_814B0288
/* 814B0280 | 7C 7F 1B 78 */	mr r31, r3
/* 814B0284 | 48 00 00 24 */	b .L_814B02A8
.L_814B0288:
/* 814B0288 | 7F C3 F3 78 */	mr r3, r30
/* 814B028C | 38 A1 00 28 */	addi r5, r1, 0x28
/* 814B0290 | 38 80 02 00 */	li r4, 0x200
/* 814B0294 | 4B FE E0 51 */	bl NWC24FRead
/* 814B0298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B029C | 3B E0 00 00 */	li r31, 0x0
/* 814B02A0 | 40 80 00 08 */	bge .L_814B02A8
/* 814B02A4 | 7C 7F 1B 78 */	mr r31, r3
.L_814B02A8:
/* 814B02A8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814B02AC | 4B FE DC B1 */	bl NWC24FClose
/* 814B02B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B02B4 | 41 82 00 08 */	beq .L_814B02BC
/* 814B02B8 | 7F E3 FB 78 */	mr r3, r31
.L_814B02BC:
/* 814B02BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B02C0 | 40 80 00 08 */	bge .L_814B02C8
/* 814B02C4 | 48 00 00 B0 */	b .L_814B0374
.L_814B02C8:
/* 814B02C8 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B02CC | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 814B02D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B02D4 | 41 82 00 0C */	beq .L_814B02E0
/* 814B02D8 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B02DC | 48 00 00 08 */	b .L_814B02E4
.L_814B02E0:
/* 814B02E0 | 38 80 00 00 */	li r4, 0x0
.L_814B02E4:
/* 814B02E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B02E8 | 40 82 00 0C */	bne .L_814B02F4
/* 814B02EC | 38 A0 FF FD */	li r5, -0x3
/* 814B02F0 | 48 00 00 38 */	b .L_814B0328
.L_814B02F4:
/* 814B02F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B02F8 | 40 82 00 0C */	bne .L_814B0304
/* 814B02FC | 38 A0 FF F7 */	li r5, -0x9
/* 814B0300 | 48 00 00 28 */	b .L_814B0328
.L_814B0304:
/* 814B0304 | A0 A1 00 C8 */	lhz r5, 0xc8(r1)
/* 814B0308 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 814B030C | 41 82 00 18 */	beq .L_814B0324
/* 814B0310 | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814B0314 | 7C 05 00 40 */	cmplw r5, r0
/* 814B0318 | 41 80 00 0C */	blt .L_814B0324
/* 814B031C | 38 A0 FF FD */	li r5, -0x3
/* 814B0320 | 48 00 00 08 */	b .L_814B0328
.L_814B0324:
/* 814B0324 | 38 A0 00 00 */	li r5, 0x0
.L_814B0328:
/* 814B0328 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B032C | 41 82 00 08 */	beq .L_814B0334
/* 814B0330 | 48 00 00 28 */	b .L_814B0358
.L_814B0334:
/* 814B0334 | 48 00 15 19 */	bl DeleteDlTask
/* 814B0338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B033C | 40 80 00 0C */	bge .L_814B0348
/* 814B0340 | 7C 65 1B 78 */	mr r5, r3
/* 814B0344 | 48 00 00 14 */	b .L_814B0358
.L_814B0348:
/* 814B0348 | 3C 80 00 01 */	lis r4, 0x1
/* 814B034C | 7C 65 1B 78 */	mr r5, r3
/* 814B0350 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814B0354 | B0 01 00 C8 */	sth r0, 0xc8(r1)
.L_814B0358:
/* 814B0358 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B035C | 7C A3 2B 78 */	mr r3, r5
/* 814B0360 | 40 80 00 14 */	bge .L_814B0374
/* 814B0364 | 48 00 00 10 */	b .L_814B0374
.L_814B0368:
/* 814B0368 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 814B036C | 40 82 00 08 */	bne .L_814B0374
/* 814B0370 | 38 60 FF FE */	li r3, -0x2
.L_814B0374:
/* 814B0374 | 80 01 02 D4 */	lwz r0, 0x2d4(r1)
/* 814B0378 | 83 E1 02 CC */	lwz r31, 0x2cc(r1)
/* 814B037C | 83 C1 02 C8 */	lwz r30, 0x2c8(r1)
/* 814B0380 | 7C 08 03 A6 */	mtlr r0
/* 814B0384 | 38 21 02 D0 */	addi r1, r1, 0x2d0
/* 814B0388 | 4E 80 00 20 */	blr
.endfn NWC24PurgeOldestDlTask

# .text:0x19D4 | 0x814B038C | size: 0x260
.fn NWC24ManageDlTaskListForMenu, global
/* 814B038C | 94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 814B0390 | 7C 08 02 A6 */	mflr r0
/* 814B0394 | 90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 814B0398 | 93 E1 02 AC */	stw r31, 0x2ac(r1)
/* 814B039C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B03A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B03A4 | 41 82 00 0C */	beq .L_814B03B0
/* 814B03A8 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B03AC | 48 00 00 08 */	b .L_814B03B4
.L_814B03B0:
/* 814B03B0 | 38 60 00 00 */	li r3, 0x0
.L_814B03B4:
/* 814B03B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B03B8 | 40 82 00 0C */	bne .L_814B03C4
/* 814B03BC | 38 60 FF F7 */	li r3, -0x9
/* 814B03C0 | 48 00 00 0C */	b .L_814B03CC
.L_814B03C4:
/* 814B03C4 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B03C8 | 38 60 00 00 */	li r3, 0x0
.L_814B03CC:
/* 814B03CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B03D0 | 40 80 00 08 */	bge .L_814B03D8
/* 814B03D4 | 48 00 02 04 */	b .L_814B05D8
.L_814B03D8:
/* 814B03D8 | 28 00 00 78 */	cmplwi r0, 0x78
/* 814B03DC | 41 80 00 0C */	blt .L_814B03E8
/* 814B03E0 | 38 60 00 00 */	li r3, 0x0
/* 814B03E4 | 48 00 01 F4 */	b .L_814B05D8
.L_814B03E8:
/* 814B03E8 | 38 60 00 78 */	li r3, 0x78
/* 814B03EC | 48 00 02 65 */	bl NWC24ExtendDlTaskList
/* 814B03F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B03F4 | 40 80 00 08 */	bge .L_814B03FC
/* 814B03F8 | 48 00 01 E0 */	b .L_814B05D8
.L_814B03FC:
/* 814B03FC | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0400 | 3B E1 00 A8 */	addi r31, r1, 0xa8
/* 814B0404 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0408 | 41 82 00 0C */	beq .L_814B0414
/* 814B040C | 38 04 36 00 */	addi r0, r4, 0x3600
/* 814B0410 | 48 00 00 08 */	b .L_814B0418
.L_814B0414:
/* 814B0414 | 38 00 00 00 */	li r0, 0x0
.L_814B0418:
/* 814B0418 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B041C | 40 82 00 0C */	bne .L_814B0428
/* 814B0420 | 38 60 FF F7 */	li r3, -0x9
/* 814B0424 | 48 00 01 04 */	b .L_814B0528
.L_814B0428:
/* 814B0428 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B042C | 41 82 00 0C */	beq .L_814B0438
/* 814B0430 | 38 64 36 00 */	addi r3, r4, 0x3600
/* 814B0434 | 48 00 00 08 */	b .L_814B043C
.L_814B0438:
/* 814B0438 | 38 60 00 00 */	li r3, 0x0
.L_814B043C:
/* 814B043C | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B0440 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814B0444 | 41 81 00 0C */	bgt .L_814B0450
/* 814B0448 | 38 60 FF FD */	li r3, -0x3
/* 814B044C | 48 00 00 2C */	b .L_814B0478
.L_814B0450:
/* 814B0450 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0454 | 41 82 00 0C */	beq .L_814B0460
/* 814B0458 | 38 64 36 00 */	addi r3, r4, 0x3600
/* 814B045C | 48 00 00 08 */	b .L_814B0464
.L_814B0460:
/* 814B0460 | 38 60 00 00 */	li r3, 0x0
.L_814B0464:
/* 814B0464 | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 814B0468 | 38 60 00 00 */	li r3, 0x0
/* 814B046C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0470 | 40 82 00 08 */	bne .L_814B0478
/* 814B0474 | 38 60 FF F3 */	li r3, -0xd
.L_814B0478:
/* 814B0478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B047C | 40 80 00 08 */	bge .L_814B0484
/* 814B0480 | 48 00 00 A8 */	b .L_814B0528
.L_814B0484:
/* 814B0484 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B0488 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B048C | 38 A0 00 0A */	li r5, 0xa
/* 814B0490 | 4B FE D7 79 */	bl NWC24FOpen
/* 814B0494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0498 | 40 80 00 08 */	bge .L_814B04A0
/* 814B049C | 48 00 00 8C */	b .L_814B0528
.L_814B04A0:
/* 814B04A0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B04A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B04A8 | 41 82 00 0C */	beq .L_814B04B4
/* 814B04AC | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B04B0 | 48 00 00 08 */	b .L_814B04B8
.L_814B04B4:
/* 814B04B4 | 38 60 00 00 */	li r3, 0x0
.L_814B04B8:
/* 814B04B8 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B04BC | 28 00 00 78 */	cmplwi r0, 0x78
/* 814B04C0 | 41 81 00 0C */	bgt .L_814B04CC
/* 814B04C4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814B04C8 | 41 81 00 0C */	bgt .L_814B04D4
.L_814B04CC:
/* 814B04CC | 38 60 FF FD */	li r3, -0x3
/* 814B04D0 | 48 00 00 14 */	b .L_814B04E4
.L_814B04D4:
/* 814B04D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B04D8 | 38 80 0C 00 */	li r4, 0xc00
/* 814B04DC | 38 A0 00 00 */	li r5, 0x0
/* 814B04E0 | 4B FE DC 15 */	bl NWC24FSeek
.L_814B04E4:
/* 814B04E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B04E8 | 40 80 00 0C */	bge .L_814B04F4
/* 814B04EC | 7C 7F 1B 78 */	mr r31, r3
/* 814B04F0 | 48 00 00 24 */	b .L_814B0514
.L_814B04F4:
/* 814B04F4 | 7F E3 FB 78 */	mr r3, r31
/* 814B04F8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B04FC | 38 80 02 00 */	li r4, 0x200
/* 814B0500 | 4B FE DD E5 */	bl NWC24FRead
/* 814B0504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0508 | 3B E0 00 00 */	li r31, 0x0
/* 814B050C | 40 80 00 08 */	bge .L_814B0514
/* 814B0510 | 7C 7F 1B 78 */	mr r31, r3
.L_814B0514:
/* 814B0514 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0518 | 4B FE DA 45 */	bl NWC24FClose
/* 814B051C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B0520 | 41 82 00 08 */	beq .L_814B0528
/* 814B0524 | 7F E3 FB 78 */	mr r3, r31
.L_814B0528:
/* 814B0528 | 2C 03 FF F3 */	cmpwi r3, -0xd
/* 814B052C | 40 82 00 0C */	bne .L_814B0538
/* 814B0530 | 38 60 00 00 */	li r3, 0x0
/* 814B0534 | 48 00 00 A4 */	b .L_814B05D8
.L_814B0538:
/* 814B0538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B053C | 40 80 00 08 */	bge .L_814B0544
/* 814B0540 | 48 00 00 98 */	b .L_814B05D8
.L_814B0544:
/* 814B0544 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0548 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814B054C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0550 | 41 82 00 0C */	beq .L_814B055C
/* 814B0554 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B0558 | 48 00 00 08 */	b .L_814B0560
.L_814B055C:
/* 814B055C | 38 80 00 00 */	li r4, 0x0
.L_814B0560:
/* 814B0560 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0564 | 40 82 00 0C */	bne .L_814B0570
/* 814B0568 | 38 A0 FF FD */	li r5, -0x3
/* 814B056C | 48 00 00 38 */	b .L_814B05A4
.L_814B0570:
/* 814B0570 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0574 | 40 82 00 0C */	bne .L_814B0580
/* 814B0578 | 38 A0 FF F7 */	li r5, -0x9
/* 814B057C | 48 00 00 28 */	b .L_814B05A4
.L_814B0580:
/* 814B0580 | A0 A1 00 A8 */	lhz r5, 0xa8(r1)
/* 814B0584 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 814B0588 | 41 82 00 18 */	beq .L_814B05A0
/* 814B058C | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814B0590 | 7C 05 00 40 */	cmplw r5, r0
/* 814B0594 | 41 80 00 0C */	blt .L_814B05A0
/* 814B0598 | 38 A0 FF FD */	li r5, -0x3
/* 814B059C | 48 00 00 08 */	b .L_814B05A4
.L_814B05A0:
/* 814B05A0 | 38 A0 00 00 */	li r5, 0x0
.L_814B05A4:
/* 814B05A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B05A8 | 41 82 00 08 */	beq .L_814B05B0
/* 814B05AC | 48 00 00 28 */	b .L_814B05D4
.L_814B05B0:
/* 814B05B0 | 48 00 12 9D */	bl DeleteDlTask
/* 814B05B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B05B8 | 40 80 00 0C */	bge .L_814B05C4
/* 814B05BC | 7C 65 1B 78 */	mr r5, r3
/* 814B05C0 | 48 00 00 14 */	b .L_814B05D4
.L_814B05C4:
/* 814B05C4 | 3C 80 00 01 */	lis r4, 0x1
/* 814B05C8 | 7C 65 1B 78 */	mr r5, r3
/* 814B05CC | 38 04 FF FF */	subi r0, r4, 0x1
/* 814B05D0 | B0 01 00 A8 */	sth r0, 0xa8(r1)
.L_814B05D4:
/* 814B05D4 | 7C A3 2B 78 */	mr r3, r5
.L_814B05D8:
/* 814B05D8 | 80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 814B05DC | 83 E1 02 AC */	lwz r31, 0x2ac(r1)
/* 814B05E0 | 7C 08 03 A6 */	mtlr r0
/* 814B05E4 | 38 21 02 B0 */	addi r1, r1, 0x2b0
/* 814B05E8 | 4E 80 00 20 */	blr
.endfn NWC24ManageDlTaskListForMenu

# .text:0x1C34 | 0x814B05EC | size: 0x5C
.fn NWC24iOpenDlTaskList, global
/* 814B05EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B05F0 | 7C 08 02 A6 */	mflr r0
/* 814B05F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B05F8 | 48 00 08 5D */	bl NWC24iLoadDlHeader
/* 814B05FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0600 | 41 80 00 38 */	blt .L_814B0638
/* 814B0604 | 38 60 00 00 */	li r3, 0x0
/* 814B0608 | 4B FF E1 A9 */	bl NWC24iSynchronizeRtcCounter
/* 814B060C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0614 | 41 82 00 0C */	beq .L_814B0620
/* 814B0618 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B061C | 48 00 00 08 */	b .L_814B0624
.L_814B0620:
/* 814B0620 | 38 60 00 00 */	li r3, 0x0
.L_814B0624:
/* 814B0624 | 38 80 00 00 */	li r4, 0x0
/* 814B0628 | 48 00 02 4D */	bl NWC24iCheckDlHeaderConsistency
/* 814B062C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0630 | 41 80 00 08 */	blt .L_814B0638
/* 814B0634 | 38 60 00 00 */	li r3, 0x0
.L_814B0638:
/* 814B0638 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B063C | 7C 08 03 A6 */	mtlr r0
/* 814B0640 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B0644 | 4E 80 00 20 */	blr
.endfn NWC24iOpenDlTaskList

# .text:0x1C90 | 0x814B0648 | size: 0x8
.fn NWC24iCloseDlTaskList, global
/* 814B0648 | 38 60 00 00 */	li r3, 0x0
/* 814B064C | 4E 80 00 20 */	blr
.endfn NWC24iCloseDlTaskList

# .text:0x1C98 | 0x814B0650 | size: 0x224
.fn NWC24ExtendDlTaskList, global
/* 814B0650 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814B0654 | 7C 08 02 A6 */	mflr r0
/* 814B0658 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814B065C | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814B0660 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814B0664 | 7C 7E 1B 78 */	mr r30, r3
/* 814B0668 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814B066C | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814B0670 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0674 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0678 | 41 82 00 0C */	beq .L_814B0684
/* 814B067C | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B0680 | 48 00 00 08 */	b .L_814B0688
.L_814B0684:
/* 814B0684 | 38 80 00 00 */	li r4, 0x0
.L_814B0688:
/* 814B0688 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B068C | 40 82 00 0C */	bne .L_814B0698
/* 814B0690 | 38 60 FF F7 */	li r3, -0x9
/* 814B0694 | 48 00 01 C0 */	b .L_814B0854
.L_814B0698:
/* 814B0698 | 28 03 00 78 */	cmplwi r3, 0x78
/* 814B069C | A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 814B06A0 | 41 81 00 0C */	bgt .L_814B06AC
/* 814B06A4 | 7C 1F 18 40 */	cmplw r31, r3
/* 814B06A8 | 40 81 00 0C */	ble .L_814B06B4
.L_814B06AC:
/* 814B06AC | 38 60 FF FD */	li r3, -0x3
/* 814B06B0 | 48 00 01 A4 */	b .L_814B0854
.L_814B06B4:
/* 814B06B4 | 40 82 00 0C */	bne .L_814B06C0
/* 814B06B8 | 38 60 00 00 */	li r3, 0x0
/* 814B06BC | 48 00 01 98 */	b .L_814B0854
.L_814B06C0:
/* 814B06C0 | B0 64 00 14 */	sth r3, 0x14(r4)
/* 814B06C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B06C8 | 38 A0 00 04 */	li r5, 0x4
/* 814B06CC | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B06D0 | 4B FE D5 39 */	bl NWC24FOpen
/* 814B06D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B06D8 | 40 80 00 08 */	bge .L_814B06E0
/* 814B06DC | 48 00 01 78 */	b .L_814B0854
.L_814B06E0:
/* 814B06E0 | 3B A0 00 FF */	li r29, 0xff
/* 814B06E4 | 48 00 00 E4 */	b .L_814B07C8
.L_814B06E8:
/* 814B06E8 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B06EC | 38 80 00 00 */	li r4, 0x0
/* 814B06F0 | 38 A0 02 00 */	li r5, 0x200
/* 814B06F4 | 3B 83 3E 00 */	addi r28, r3, 0x3e00
/* 814B06F8 | 7F 83 E3 78 */	mr r3, r28
/* 814B06FC | 4B E7 FC 39 */	bl memset
/* 814B0700 | 9B BC 00 02 */	stb r29, 0x2(r28)
/* 814B0704 | 57 E0 23 36 */	clrlslwi r0, r31, 16, 4
/* 814B0708 | 38 80 00 00 */	li r4, 0x0
/* 814B070C | 38 A0 00 10 */	li r5, 0x10
/* 814B0710 | B3 FC 00 00 */	sth r31, 0x0(r28)
/* 814B0714 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0718 | 7C 63 02 14 */	add r3, r3, r0
/* 814B071C | 38 63 36 80 */	addi r3, r3, 0x3680
/* 814B0720 | 4B E7 FC 15 */	bl memset
/* 814B0724 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0728 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 814B072C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0730 | 41 82 00 0C */	beq .L_814B073C
/* 814B0734 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0738 | 48 00 00 08 */	b .L_814B0740
.L_814B073C:
/* 814B073C | 38 60 00 00 */	li r3, 0x0
.L_814B0740:
/* 814B0740 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 814B0744 | 28 03 00 78 */	cmplwi r3, 0x78
/* 814B0748 | 41 81 00 0C */	bgt .L_814B0754
/* 814B074C | 7C 00 18 40 */	cmplw r0, r3
/* 814B0750 | 41 80 00 0C */	blt .L_814B075C
.L_814B0754:
/* 814B0754 | 38 60 FF FD */	li r3, -0x3
/* 814B0758 | 48 00 00 18 */	b .L_814B0770
.L_814B075C:
/* 814B075C | 54 04 49 EC */	clrlslwi r4, r0, 16, 9
/* 814B0760 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0764 | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B0768 | 38 A0 00 00 */	li r5, 0x0
/* 814B076C | 4B FE D9 89 */	bl NWC24FSeek
.L_814B0770:
/* 814B0770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0774 | 40 80 00 08 */	bge .L_814B077C
/* 814B0778 | 48 00 00 40 */	b .L_814B07B8
.L_814B077C:
/* 814B077C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0780 | 7F 84 E3 78 */	mr r4, r28
/* 814B0784 | 38 A0 02 00 */	li r5, 0x200
/* 814B0788 | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B078C | 4B E7 FA A5 */	bl memcpy
/* 814B0790 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0794 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B0798 | 38 80 02 00 */	li r4, 0x200
/* 814B079C | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B07A0 | 4B FE DD 15 */	bl NWC24FWrite
/* 814B07A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B07A8 | 38 00 00 00 */	li r0, 0x0
/* 814B07AC | 40 80 00 08 */	bge .L_814B07B4
/* 814B07B0 | 7C 60 1B 78 */	mr r0, r3
.L_814B07B4:
/* 814B07B4 | 7C 03 03 78 */	mr r3, r0
.L_814B07B8:
/* 814B07B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B07BC | 7C 7C 1B 78 */	mr r28, r3
/* 814B07C0 | 41 80 00 6C */	blt .L_814B082C
/* 814B07C4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814B07C8:
/* 814B07C8 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814B07CC | 7C 00 F0 40 */	cmplw r0, r30
/* 814B07D0 | 41 80 FF 18 */	blt .L_814B06E8
/* 814B07D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B07D8 | 38 80 00 00 */	li r4, 0x0
/* 814B07DC | 38 A0 00 00 */	li r5, 0x0
/* 814B07E0 | 4B FE D9 15 */	bl NWC24FSeek
/* 814B07E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B07E8 | 40 80 00 08 */	bge .L_814B07F0
/* 814B07EC | 48 00 00 3C */	b .L_814B0828
.L_814B07F0:
/* 814B07F0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B07F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B07F8 | 41 82 00 0C */	beq .L_814B0804
/* 814B07FC | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0800 | 48 00 00 08 */	b .L_814B0808
.L_814B0804:
/* 814B0804 | 38 60 00 00 */	li r3, 0x0
.L_814B0808:
/* 814B0808 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B080C | 38 80 08 00 */	li r4, 0x800
/* 814B0810 | 4B FE DC A5 */	bl NWC24FWrite
/* 814B0814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0818 | 38 00 00 00 */	li r0, 0x0
/* 814B081C | 40 80 00 08 */	bge .L_814B0824
/* 814B0820 | 7C 60 1B 78 */	mr r0, r3
.L_814B0824:
/* 814B0824 | 7C 03 03 78 */	mr r3, r0
.L_814B0828:
/* 814B0828 | 7C 7C 1B 78 */	mr r28, r3
.L_814B082C:
/* 814B082C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0830 | 4B FE D7 2D */	bl NWC24FClose
/* 814B0834 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B0838 | 7C 7E 1B 78 */	mr r30, r3
/* 814B083C | 41 82 00 08 */	beq .L_814B0844
/* 814B0840 | 7F 9E E3 78 */	mr r30, r28
.L_814B0844:
/* 814B0844 | 48 00 06 11 */	bl NWC24iLoadDlHeader
/* 814B0848 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B084C | 41 82 00 08 */	beq .L_814B0854
/* 814B0850 | 7F C3 F3 78 */	mr r3, r30
.L_814B0854:
/* 814B0854 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814B0858 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814B085C | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814B0860 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814B0864 | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814B0868 | 7C 08 03 A6 */	mtlr r0
/* 814B086C | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814B0870 | 4E 80 00 20 */	blr
.endfn NWC24ExtendDlTaskList

# .text:0x1EBC | 0x814B0874 | size: 0x350
.fn NWC24iCheckDlHeaderConsistency, global
/* 814B0874 | 94 21 FD 40 */	stwu r1, -0x2c0(r1)
/* 814B0878 | 7C 08 02 A6 */	mflr r0
/* 814B087C | 90 01 02 C4 */	stw r0, 0x2c4(r1)
/* 814B0880 | 39 61 02 C0 */	addi r11, r1, 0x2c0
/* 814B0884 | 48 14 8C 39 */	bl _savegpr_26
/* 814B0888 | 3B E1 00 A8 */	addi r31, r1, 0xa8
/* 814B088C | 7C 7C 1B 78 */	mr r28, r3
/* 814B0890 | 7C 9D 23 78 */	mr r29, r4
/* 814B0894 | 3B C0 00 00 */	li r30, 0x0
/* 814B0898 | 3F 60 00 01 */	lis r27, 0x1
/* 814B089C | 48 00 02 FC */	b .L_814B0B98
.L_814B08A0:
/* 814B08A0 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814B08A4 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 814B08A8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B08AC | 41 82 00 0C */	beq .L_814B08B8
/* 814B08B0 | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814B08B4 | 48 00 00 08 */	b .L_814B08BC
.L_814B08B8:
/* 814B08B8 | 38 60 00 00 */	li r3, 0x0
.L_814B08BC:
/* 814B08BC | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B08C0 | 7C 04 00 40 */	cmplw r4, r0
/* 814B08C4 | 40 80 00 10 */	bge .L_814B08D4
/* 814B08C8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814B08CC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814B08D0 | 40 82 00 0C */	bne .L_814B08DC
.L_814B08D4:
/* 814B08D4 | 38 80 FF FD */	li r4, -0x3
/* 814B08D8 | 48 00 00 34 */	b .L_814B090C
.L_814B08DC:
/* 814B08DC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B08E0 | 41 82 00 0C */	beq .L_814B08EC
/* 814B08E4 | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814B08E8 | 48 00 00 08 */	b .L_814B08F0
.L_814B08EC:
/* 814B08EC | 38 60 00 00 */	li r3, 0x0
.L_814B08F0:
/* 814B08F0 | 57 C0 23 36 */	clrlslwi r0, r30, 16, 4
/* 814B08F4 | 38 80 00 00 */	li r4, 0x0
/* 814B08F8 | 7C 63 02 14 */	add r3, r3, r0
/* 814B08FC | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 814B0900 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0904 | 40 82 00 08 */	bne .L_814B090C
/* 814B0908 | 38 80 FF F3 */	li r4, -0xd
.L_814B090C:
/* 814B090C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0910 | 40 82 02 84 */	bne .L_814B0B94
/* 814B0914 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B0918 | 41 82 02 7C */	beq .L_814B0B94
/* 814B091C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B0920 | 41 82 00 0C */	beq .L_814B092C
/* 814B0924 | 38 05 36 00 */	addi r0, r5, 0x3600
/* 814B0928 | 48 00 00 08 */	b .L_814B0930
.L_814B092C:
/* 814B092C | 38 00 00 00 */	li r0, 0x0
.L_814B0930:
/* 814B0930 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0934 | 40 82 00 0C */	bne .L_814B0940
/* 814B0938 | 38 60 FF F7 */	li r3, -0x9
/* 814B093C | 48 00 01 24 */	b .L_814B0A60
.L_814B0940:
/* 814B0940 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B0944 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 814B0948 | 41 82 00 0C */	beq .L_814B0954
/* 814B094C | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814B0950 | 48 00 00 08 */	b .L_814B0958
.L_814B0954:
/* 814B0954 | 38 60 00 00 */	li r3, 0x0
.L_814B0958:
/* 814B0958 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B095C | 7C 04 00 40 */	cmplw r4, r0
/* 814B0960 | 40 80 00 10 */	bge .L_814B0970
/* 814B0964 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814B0968 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814B096C | 40 82 00 0C */	bne .L_814B0978
.L_814B0970:
/* 814B0970 | 38 60 FF FD */	li r3, -0x3
/* 814B0974 | 48 00 00 34 */	b .L_814B09A8
.L_814B0978:
/* 814B0978 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B097C | 41 82 00 0C */	beq .L_814B0988
/* 814B0980 | 38 85 36 00 */	addi r4, r5, 0x3600
/* 814B0984 | 48 00 00 08 */	b .L_814B098C
.L_814B0988:
/* 814B0988 | 38 80 00 00 */	li r4, 0x0
.L_814B098C:
/* 814B098C | 57 C0 23 36 */	clrlslwi r0, r30, 16, 4
/* 814B0990 | 38 60 00 00 */	li r3, 0x0
/* 814B0994 | 7C 84 02 14 */	add r4, r4, r0
/* 814B0998 | 80 04 00 80 */	lwz r0, 0x80(r4)
/* 814B099C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B09A0 | 40 82 00 08 */	bne .L_814B09A8
/* 814B09A4 | 38 60 FF F3 */	li r3, -0xd
.L_814B09A8:
/* 814B09A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B09AC | 40 80 00 08 */	bge .L_814B09B4
/* 814B09B0 | 48 00 00 B0 */	b .L_814B0A60
.L_814B09B4:
/* 814B09B4 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B09B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B09BC | 38 A0 00 0A */	li r5, 0xa
/* 814B09C0 | 4B FE D2 49 */	bl NWC24FOpen
/* 814B09C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B09C8 | 40 80 00 08 */	bge .L_814B09D0
/* 814B09CC | 48 00 00 94 */	b .L_814B0A60
.L_814B09D0:
/* 814B09D0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B09D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B09D8 | 41 82 00 0C */	beq .L_814B09E4
/* 814B09DC | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B09E0 | 48 00 00 08 */	b .L_814B09E8
.L_814B09E4:
/* 814B09E4 | 38 60 00 00 */	li r3, 0x0
.L_814B09E8:
/* 814B09E8 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 814B09EC | 28 03 00 78 */	cmplwi r3, 0x78
/* 814B09F0 | 41 81 00 10 */	bgt .L_814B0A00
/* 814B09F4 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814B09F8 | 7C 00 18 40 */	cmplw r0, r3
/* 814B09FC | 41 80 00 0C */	blt .L_814B0A08
.L_814B0A00:
/* 814B0A00 | 38 60 FF FD */	li r3, -0x3
/* 814B0A04 | 48 00 00 18 */	b .L_814B0A1C
.L_814B0A08:
/* 814B0A08 | 57 C4 49 EC */	clrlslwi r4, r30, 16, 9
/* 814B0A0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0A10 | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B0A14 | 38 A0 00 00 */	li r5, 0x0
/* 814B0A18 | 4B FE D6 DD */	bl NWC24FSeek
.L_814B0A1C:
/* 814B0A1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0A20 | 40 80 00 0C */	bge .L_814B0A2C
/* 814B0A24 | 7C 7A 1B 78 */	mr r26, r3
/* 814B0A28 | 48 00 00 24 */	b .L_814B0A4C
.L_814B0A2C:
/* 814B0A2C | 7F E3 FB 78 */	mr r3, r31
/* 814B0A30 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B0A34 | 38 80 02 00 */	li r4, 0x200
/* 814B0A38 | 4B FE D8 AD */	bl NWC24FRead
/* 814B0A3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0A40 | 3B 40 00 00 */	li r26, 0x0
/* 814B0A44 | 40 80 00 08 */	bge .L_814B0A4C
/* 814B0A48 | 7C 7A 1B 78 */	mr r26, r3
.L_814B0A4C:
/* 814B0A4C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0A50 | 4B FE D5 0D */	bl NWC24FClose
/* 814B0A54 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B0A58 | 41 82 00 08 */	beq .L_814B0A60
/* 814B0A5C | 7F 43 D3 78 */	mr r3, r26
.L_814B0A60:
/* 814B0A60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0A64 | 40 80 00 84 */	bge .L_814B0AE8
/* 814B0A68 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0A70 | 41 82 00 0C */	beq .L_814B0A7C
/* 814B0A74 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0A78 | 48 00 00 08 */	b .L_814B0A80
.L_814B0A7C:
/* 814B0A7C | 38 60 00 00 */	li r3, 0x0
.L_814B0A80:
/* 814B0A80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B0A84 | 40 82 00 0C */	bne .L_814B0A90
/* 814B0A88 | 38 00 FF FD */	li r0, -0x3
/* 814B0A8C | 48 00 00 38 */	b .L_814B0AC4
.L_814B0A90:
/* 814B0A90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0A94 | 40 82 00 0C */	bne .L_814B0AA0
/* 814B0A98 | 38 00 FF F7 */	li r0, -0x9
/* 814B0A9C | 48 00 00 28 */	b .L_814B0AC4
.L_814B0AA0:
/* 814B0AA0 | A0 81 00 A8 */	lhz r4, 0xa8(r1)
/* 814B0AA4 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814B0AA8 | 41 82 00 18 */	beq .L_814B0AC0
/* 814B0AAC | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B0AB0 | 7C 04 00 40 */	cmplw r4, r0
/* 814B0AB4 | 41 80 00 0C */	blt .L_814B0AC0
/* 814B0AB8 | 38 00 FF FD */	li r0, -0x3
/* 814B0ABC | 48 00 00 08 */	b .L_814B0AC4
.L_814B0AC0:
/* 814B0AC0 | 38 00 00 00 */	li r0, 0x0
.L_814B0AC4:
/* 814B0AC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0AC8 | 40 82 00 CC */	bne .L_814B0B94
/* 814B0ACC | 7F E3 FB 78 */	mr r3, r31
/* 814B0AD0 | 48 00 0D 7D */	bl DeleteDlTask
/* 814B0AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0AD8 | 41 80 00 BC */	blt .L_814B0B94
/* 814B0ADC | 38 1B FF FF */	subi r0, r27, 0x1
/* 814B0AE0 | B0 01 00 A8 */	sth r0, 0xa8(r1)
/* 814B0AE4 | 48 00 00 B0 */	b .L_814B0B94
.L_814B0AE8:
/* 814B0AE8 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0AEC | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 814B0AF0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B0AF4 | 41 82 00 0C */	beq .L_814B0B00
/* 814B0AF8 | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814B0AFC | 48 00 00 08 */	b .L_814B0B04
.L_814B0B00:
/* 814B0B00 | 38 60 00 00 */	li r3, 0x0
.L_814B0B04:
/* 814B0B04 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 814B0B08 | 7C 04 00 40 */	cmplw r4, r0
/* 814B0B0C | 41 80 00 88 */	blt .L_814B0B94
/* 814B0B10 | A8 01 00 C0 */	lha r0, 0xc0(r1)
/* 814B0B14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0B18 | 40 82 00 7C */	bne .L_814B0B94
/* 814B0B1C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B0B20 | 41 82 00 0C */	beq .L_814B0B2C
/* 814B0B24 | 38 65 36 00 */	addi r3, r5, 0x3600
/* 814B0B28 | 48 00 00 08 */	b .L_814B0B30
.L_814B0B2C:
/* 814B0B2C | 38 60 00 00 */	li r3, 0x0
.L_814B0B30:
/* 814B0B30 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B0B34 | 40 82 00 0C */	bne .L_814B0B40
/* 814B0B38 | 38 00 FF FD */	li r0, -0x3
/* 814B0B3C | 48 00 00 38 */	b .L_814B0B74
.L_814B0B40:
/* 814B0B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0B44 | 40 82 00 0C */	bne .L_814B0B50
/* 814B0B48 | 38 00 FF F7 */	li r0, -0x9
/* 814B0B4C | 48 00 00 28 */	b .L_814B0B74
.L_814B0B50:
/* 814B0B50 | A0 81 00 A8 */	lhz r4, 0xa8(r1)
/* 814B0B54 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814B0B58 | 41 82 00 18 */	beq .L_814B0B70
/* 814B0B5C | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B0B60 | 7C 04 00 40 */	cmplw r4, r0
/* 814B0B64 | 41 80 00 0C */	blt .L_814B0B70
/* 814B0B68 | 38 00 FF FD */	li r0, -0x3
/* 814B0B6C | 48 00 00 08 */	b .L_814B0B74
.L_814B0B70:
/* 814B0B70 | 38 00 00 00 */	li r0, 0x0
.L_814B0B74:
/* 814B0B74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0B78 | 40 82 00 1C */	bne .L_814B0B94
/* 814B0B7C | 7F E3 FB 78 */	mr r3, r31
/* 814B0B80 | 48 00 0C CD */	bl DeleteDlTask
/* 814B0B84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0B88 | 41 80 00 0C */	blt .L_814B0B94
/* 814B0B8C | 38 1B FF FF */	subi r0, r27, 0x1
/* 814B0B90 | B0 01 00 A8 */	sth r0, 0xa8(r1)
.L_814B0B94:
/* 814B0B94 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814B0B98:
/* 814B0B98 | A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 814B0B9C | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 814B0BA0 | 7C 03 00 40 */	cmplw r3, r0
/* 814B0BA4 | 41 80 FC FC */	blt .L_814B08A0
/* 814B0BA8 | 39 61 02 C0 */	addi r11, r1, 0x2c0
/* 814B0BAC | 38 60 00 00 */	li r3, 0x0
/* 814B0BB0 | 48 14 89 59 */	bl _restgpr_26
/* 814B0BB4 | 80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 814B0BB8 | 7C 08 03 A6 */	mtlr r0
/* 814B0BBC | 38 21 02 C0 */	addi r1, r1, 0x2c0
/* 814B0BC0 | 4E 80 00 20 */	blr
.endfn NWC24iCheckDlHeaderConsistency

# .text:0x220C | 0x814B0BC4 | size: 0x214
.fn NWC24iCreateDlTaskList, global
/* 814B0BC4 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814B0BC8 | 7C 08 02 A6 */	mflr r0
/* 814B0BCC | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814B0BD0 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814B0BD4 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814B0BD8 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814B0BDC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0BE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0BE4 | 41 82 00 0C */	beq .L_814B0BF0
/* 814B0BE8 | 3B E3 36 00 */	addi r31, r3, 0x3600
/* 814B0BEC | 48 00 00 08 */	b .L_814B0BF4
.L_814B0BF0:
/* 814B0BF0 | 3B E0 00 00 */	li r31, 0x0
.L_814B0BF4:
/* 814B0BF4 | 7F E3 FB 78 */	mr r3, r31
/* 814B0BF8 | 38 80 00 00 */	li r4, 0x0
/* 814B0BFC | 38 A0 08 00 */	li r5, 0x800
/* 814B0C00 | 4B E7 F7 35 */	bl memset
/* 814B0C04 | 3C 80 57 63 */	lis r4, 0x5763
/* 814B0C08 | 38 60 00 01 */	li r3, 0x1
/* 814B0C0C | 38 04 44 6C */	addi r0, r4, 0x446c
/* 814B0C10 | 38 E0 00 00 */	li r7, 0x0
/* 814B0C14 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B0C18 | 38 C0 00 78 */	li r6, 0x78
/* 814B0C1C | 38 80 00 20 */	li r4, 0x20
/* 814B0C20 | 38 00 00 08 */	li r0, 0x8
/* 814B0C24 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814B0C28 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0C2C | 38 A0 00 01 */	li r5, 0x1
/* 814B0C30 | B0 FF 00 0C */	sth r7, 0xc(r31)
/* 814B0C34 | B0 FF 00 0E */	sth r7, 0xe(r31)
/* 814B0C38 | B0 DF 00 14 */	sth r6, 0x14(r31)
/* 814B0C3C | B0 9F 00 10 */	sth r4, 0x10(r31)
/* 814B0C40 | B0 1F 00 12 */	sth r0, 0x12(r31)
/* 814B0C44 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B0C48 | 4B FE CF C1 */	bl NWC24FOpen
/* 814B0C4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0C50 | 40 80 00 08 */	bge .L_814B0C58
/* 814B0C54 | 48 00 01 68 */	b .L_814B0DBC
.L_814B0C58:
/* 814B0C58 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0C5C | 38 80 00 00 */	li r4, 0x0
/* 814B0C60 | 38 A0 00 00 */	li r5, 0x0
/* 814B0C64 | 4B FE D4 91 */	bl NWC24FSeek
/* 814B0C68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0C6C | 40 80 00 08 */	bge .L_814B0C74
/* 814B0C70 | 48 00 00 3C */	b .L_814B0CAC
.L_814B0C74:
/* 814B0C74 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0C7C | 41 82 00 0C */	beq .L_814B0C88
/* 814B0C80 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0C84 | 48 00 00 08 */	b .L_814B0C8C
.L_814B0C88:
/* 814B0C88 | 38 60 00 00 */	li r3, 0x0
.L_814B0C8C:
/* 814B0C8C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B0C90 | 38 80 08 00 */	li r4, 0x800
/* 814B0C94 | 4B FE D8 21 */	bl NWC24FWrite
/* 814B0C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0C9C | 38 00 00 00 */	li r0, 0x0
/* 814B0CA0 | 40 80 00 08 */	bge .L_814B0CA8
/* 814B0CA4 | 7C 60 1B 78 */	mr r0, r3
.L_814B0CA8:
/* 814B0CA8 | 7C 03 03 78 */	mr r3, r0
.L_814B0CAC:
/* 814B0CAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0CB0 | 7C 7E 1B 78 */	mr r30, r3
/* 814B0CB4 | 41 80 00 F4 */	blt .L_814B0DA8
/* 814B0CB8 | 3B A0 00 00 */	li r29, 0x0
/* 814B0CBC | 3B E0 00 FF */	li r31, 0xff
.L_814B0CC0:
/* 814B0CC0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0CC4 | 38 80 00 00 */	li r4, 0x0
/* 814B0CC8 | 38 A0 02 00 */	li r5, 0x200
/* 814B0CCC | 3B C3 3E 00 */	addi r30, r3, 0x3e00
/* 814B0CD0 | 7F C3 F3 78 */	mr r3, r30
/* 814B0CD4 | 4B E7 F6 61 */	bl memset
/* 814B0CD8 | 9B FE 00 02 */	stb r31, 0x2(r30)
/* 814B0CDC | 57 A0 23 36 */	clrlslwi r0, r29, 16, 4
/* 814B0CE0 | 38 80 00 00 */	li r4, 0x0
/* 814B0CE4 | 38 A0 00 10 */	li r5, 0x10
/* 814B0CE8 | B3 BE 00 00 */	sth r29, 0x0(r30)
/* 814B0CEC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0CF0 | 7C 63 02 14 */	add r3, r3, r0
/* 814B0CF4 | 38 63 36 80 */	addi r3, r3, 0x3680
/* 814B0CF8 | 4B E7 F6 3D */	bl memset
/* 814B0CFC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0D00 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814B0D04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0D08 | 41 82 00 0C */	beq .L_814B0D14
/* 814B0D0C | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0D10 | 48 00 00 08 */	b .L_814B0D18
.L_814B0D14:
/* 814B0D14 | 38 60 00 00 */	li r3, 0x0
.L_814B0D18:
/* 814B0D18 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 814B0D1C | 28 03 00 78 */	cmplwi r3, 0x78
/* 814B0D20 | 41 81 00 0C */	bgt .L_814B0D2C
/* 814B0D24 | 7C 00 18 40 */	cmplw r0, r3
/* 814B0D28 | 41 80 00 0C */	blt .L_814B0D34
.L_814B0D2C:
/* 814B0D2C | 38 60 FF FD */	li r3, -0x3
/* 814B0D30 | 48 00 00 18 */	b .L_814B0D48
.L_814B0D34:
/* 814B0D34 | 54 04 49 EC */	clrlslwi r4, r0, 16, 9
/* 814B0D38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0D3C | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B0D40 | 38 A0 00 00 */	li r5, 0x0
/* 814B0D44 | 4B FE D3 B1 */	bl NWC24FSeek
.L_814B0D48:
/* 814B0D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0D4C | 40 80 00 08 */	bge .L_814B0D54
/* 814B0D50 | 48 00 00 40 */	b .L_814B0D90
.L_814B0D54:
/* 814B0D54 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0D58 | 7F C4 F3 78 */	mr r4, r30
/* 814B0D5C | 38 A0 02 00 */	li r5, 0x200
/* 814B0D60 | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B0D64 | 4B E7 F4 CD */	bl memcpy
/* 814B0D68 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0D6C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B0D70 | 38 80 02 00 */	li r4, 0x200
/* 814B0D74 | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B0D78 | 4B FE D7 3D */	bl NWC24FWrite
/* 814B0D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0D80 | 38 00 00 00 */	li r0, 0x0
/* 814B0D84 | 40 80 00 08 */	bge .L_814B0D8C
/* 814B0D88 | 7C 60 1B 78 */	mr r0, r3
.L_814B0D8C:
/* 814B0D8C | 7C 03 03 78 */	mr r3, r0
.L_814B0D90:
/* 814B0D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0D94 | 7C 7E 1B 78 */	mr r30, r3
/* 814B0D98 | 41 80 00 10 */	blt .L_814B0DA8
/* 814B0D9C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814B0DA0 | 28 1D 00 78 */	cmplwi r29, 0x78
/* 814B0DA4 | 41 80 FF 1C */	blt .L_814B0CC0
.L_814B0DA8:
/* 814B0DA8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B0DAC | 4B FE D1 B1 */	bl NWC24FClose
/* 814B0DB0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B0DB4 | 41 82 00 08 */	beq .L_814B0DBC
/* 814B0DB8 | 7F C3 F3 78 */	mr r3, r30
.L_814B0DBC:
/* 814B0DBC | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814B0DC0 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814B0DC4 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814B0DC8 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814B0DCC | 7C 08 03 A6 */	mtlr r0
/* 814B0DD0 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814B0DD4 | 4E 80 00 20 */	blr
.endfn NWC24iCreateDlTaskList

# .text:0x2420 | 0x814B0DD8 | size: 0x7C
.fn NWC24iInitDlTaskList, global
/* 814B0DD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B0DDC | 7C 08 02 A6 */	mflr r0
/* 814B0DE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B0DE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B0DE8 | 7C 7F 1B 78 */	mr r31, r3
/* 814B0DEC | 4B FF F8 01 */	bl NWC24iOpenDlTaskList
/* 814B0DF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0DF4 | 40 82 00 10 */	bne .L_814B0E04
/* 814B0DF8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B0DFC | 40 82 00 08 */	bne .L_814B0E04
/* 814B0E00 | 48 00 00 40 */	b .L_814B0E40
.L_814B0E04:
/* 814B0E04 | 2C 03 FF E5 */	cmpwi r3, -0x1b
/* 814B0E08 | 40 82 00 34 */	bne .L_814B0E3C
/* 814B0E0C | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0E10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0E14 | 41 82 00 0C */	beq .L_814B0E20
/* 814B0E18 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B0E1C | 48 00 00 08 */	b .L_814B0E24
.L_814B0E20:
/* 814B0E20 | 38 80 00 00 */	li r4, 0x0
.L_814B0E24:
/* 814B0E24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B0E28 | 41 82 00 14 */	beq .L_814B0E3C
/* 814B0E2C | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814B0E30 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B0E34 | 40 81 00 08 */	ble .L_814B0E3C
/* 814B0E38 | 48 00 00 08 */	b .L_814B0E40
.L_814B0E3C:
/* 814B0E3C | 4B FF FD 89 */	bl NWC24iCreateDlTaskList
.L_814B0E40:
/* 814B0E40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B0E44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B0E48 | 7C 08 03 A6 */	mtlr r0
/* 814B0E4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B0E50 | 4E 80 00 20 */	blr
.endfn NWC24iInitDlTaskList

# .text:0x249C | 0x814B0E54 | size: 0x190
.fn NWC24iLoadDlHeader, global
/* 814B0E54 | 94 21 FE B0 */	stwu r1, -0x150(r1)
/* 814B0E58 | 7C 08 02 A6 */	mflr r0
/* 814B0E5C | 38 A0 00 02 */	li r5, 0x2
/* 814B0E60 | 90 01 01 54 */	stw r0, 0x154(r1)
/* 814B0E64 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814B0E68 | 93 E1 01 4C */	stw r31, 0x14c(r1)
/* 814B0E6C | 3B E0 00 00 */	li r31, 0x0
/* 814B0E70 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B0E74 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814B0E78 | 4B FE CD 91 */	bl NWC24FOpen
/* 814B0E7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0E80 | 40 80 00 08 */	bge .L_814B0E88
/* 814B0E84 | 48 00 01 4C */	b .L_814B0FD0
.L_814B0E88:
/* 814B0E88 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814B0E8C | 38 80 00 00 */	li r4, 0x0
/* 814B0E90 | 38 A0 00 00 */	li r5, 0x0
/* 814B0E94 | 4B FE D2 61 */	bl NWC24FSeek
/* 814B0E98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0E9C | 40 80 00 08 */	bge .L_814B0EA4
/* 814B0EA0 | 48 00 00 28 */	b .L_814B0EC8
.L_814B0EA4:
/* 814B0EA4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0EA8 | 38 A1 00 A8 */	addi r5, r1, 0xa8
/* 814B0EAC | 38 80 08 00 */	li r4, 0x800
/* 814B0EB0 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0EB4 | 4B FE D4 31 */	bl NWC24FRead
/* 814B0EB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0EBC | 40 80 00 08 */	bge .L_814B0EC4
/* 814B0EC0 | 7C 7F 1B 78 */	mr r31, r3
.L_814B0EC4:
/* 814B0EC4 | 7F E3 FB 78 */	mr r3, r31
.L_814B0EC8:
/* 814B0EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0ECC | 40 80 00 08 */	bge .L_814B0ED4
/* 814B0ED0 | 48 00 01 00 */	b .L_814B0FD0
.L_814B0ED4:
/* 814B0ED4 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814B0ED8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B0EDC | 4B FE D7 B1 */	bl NWC24FGetLength
/* 814B0EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0EE4 | 7C 7F 1B 78 */	mr r31, r3
/* 814B0EE8 | 41 80 00 D4 */	blt .L_814B0FBC
/* 814B0EEC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0EF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0EF4 | 41 82 00 0C */	beq .L_814B0F00
/* 814B0EF8 | 3B E3 36 00 */	addi r31, r3, 0x3600
/* 814B0EFC | 48 00 00 08 */	b .L_814B0F04
.L_814B0F00:
/* 814B0F00 | 3B E0 00 00 */	li r31, 0x0
.L_814B0F04:
/* 814B0F04 | A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 814B0F08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0F0C | 40 82 00 84 */	bne .L_814B0F90
/* 814B0F10 | A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 814B0F14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B0F18 | 41 82 00 78 */	beq .L_814B0F90
/* 814B0F1C | B0 1F 00 14 */	sth r0, 0x14(r31)
/* 814B0F20 | A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 814B0F24 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814B0F28 | 40 81 00 0C */	ble .L_814B0F34
/* 814B0F2C | 38 00 00 20 */	li r0, 0x20
/* 814B0F30 | B0 1F 00 10 */	sth r0, 0x10(r31)
.L_814B0F34:
/* 814B0F34 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B0F38 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814B0F3C | 38 A0 00 04 */	li r5, 0x4
/* 814B0F40 | 4B FE CC C9 */	bl NWC24FOpen
/* 814B0F44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0F48 | 41 80 00 48 */	blt .L_814B0F90
/* 814B0F4C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814B0F50 | 38 80 00 00 */	li r4, 0x0
/* 814B0F54 | 38 A0 00 00 */	li r5, 0x0
/* 814B0F58 | 4B FE D1 9D */	bl NWC24FSeek
/* 814B0F5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0F60 | 41 80 00 28 */	blt .L_814B0F88
/* 814B0F64 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0F68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B0F6C | 41 82 00 0C */	beq .L_814B0F78
/* 814B0F70 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B0F74 | 48 00 00 08 */	b .L_814B0F7C
.L_814B0F78:
/* 814B0F78 | 38 60 00 00 */	li r3, 0x0
.L_814B0F7C:
/* 814B0F7C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814B0F80 | 38 80 08 00 */	li r4, 0x800
/* 814B0F84 | 4B FE D5 31 */	bl NWC24FWrite
.L_814B0F88:
/* 814B0F88 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814B0F8C | 4B FE CF D1 */	bl NWC24FClose
.L_814B0F90:
/* 814B0F90 | A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 814B0F94 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814B0F98 | 41 80 00 18 */	blt .L_814B0FB0
/* 814B0F9C | A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 814B0FA0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B0FA4 | 41 80 00 0C */	blt .L_814B0FB0
/* 814B0FA8 | 7C 03 00 40 */	cmplw r3, r0
/* 814B0FAC | 40 80 00 0C */	bge .L_814B0FB8
.L_814B0FB0:
/* 814B0FB0 | 3B E0 FF F2 */	li r31, -0xe
/* 814B0FB4 | 48 00 00 08 */	b .L_814B0FBC
.L_814B0FB8:
/* 814B0FB8 | 3B E0 00 00 */	li r31, 0x0
.L_814B0FBC:
/* 814B0FBC | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814B0FC0 | 4B FE CF 9D */	bl NWC24FClose
/* 814B0FC4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B0FC8 | 41 82 00 08 */	beq .L_814B0FD0
/* 814B0FCC | 7F E3 FB 78 */	mr r3, r31
.L_814B0FD0:
/* 814B0FD0 | 80 01 01 54 */	lwz r0, 0x154(r1)
/* 814B0FD4 | 83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 814B0FD8 | 7C 08 03 A6 */	mtlr r0
/* 814B0FDC | 38 21 01 50 */	addi r1, r1, 0x150
/* 814B0FE0 | 4E 80 00 20 */	blr
.endfn NWC24iLoadDlHeader

# .text:0x262C | 0x814B0FE4 | size: 0x8C
.fn NWC24GetDlOptOutFlags, global
/* 814B0FE4 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814B0FE8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B0FEC | 41 82 00 0C */	beq .L_814B0FF8
/* 814B0FF0 | 38 A5 36 00 */	addi r5, r5, 0x3600
/* 814B0FF4 | 48 00 00 08 */	b .L_814B0FFC
.L_814B0FF8:
/* 814B0FF8 | 38 A0 00 00 */	li r5, 0x0
.L_814B0FFC:
/* 814B0FFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1000 | 40 82 00 0C */	bne .L_814B100C
/* 814B1004 | 38 00 FF FD */	li r0, -0x3
/* 814B1008 | 48 00 00 38 */	b .L_814B1040
.L_814B100C:
/* 814B100C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B1010 | 40 82 00 0C */	bne .L_814B101C
/* 814B1014 | 38 00 FF F7 */	li r0, -0x9
/* 814B1018 | 48 00 00 28 */	b .L_814B1040
.L_814B101C:
/* 814B101C | A0 C3 00 00 */	lhz r6, 0x0(r3)
/* 814B1020 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814B1024 | 41 82 00 18 */	beq .L_814B103C
/* 814B1028 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814B102C | 7C 06 00 40 */	cmplw r6, r0
/* 814B1030 | 41 80 00 0C */	blt .L_814B103C
/* 814B1034 | 38 00 FF FD */	li r0, -0x3
/* 814B1038 | 48 00 00 08 */	b .L_814B1040
.L_814B103C:
/* 814B103C | 38 00 00 00 */	li r0, 0x0
.L_814B1040:
/* 814B1040 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1044 | 41 82 00 0C */	beq .L_814B1050
/* 814B1048 | 7C 03 03 78 */	mr r3, r0
/* 814B104C | 4E 80 00 20 */	blr
.L_814B1050:
/* 814B1050 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B1054 | 40 82 00 0C */	bne .L_814B1060
/* 814B1058 | 38 60 FF FD */	li r3, -0x3
/* 814B105C | 4E 80 00 20 */	blr
.L_814B1060:
/* 814B1060 | 88 03 01 FC */	lbz r0, 0x1fc(r3)
/* 814B1064 | 38 60 00 00 */	li r3, 0x0
/* 814B1068 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814B106C | 4E 80 00 20 */	blr
.endfn NWC24GetDlOptOutFlags

# .text:0x26B8 | 0x814B1070 | size: 0x198
.fn StoreDlTask, global
/* 814B1070 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814B1074 | 7C 08 02 A6 */	mflr r0
/* 814B1078 | 38 A0 00 04 */	li r5, 0x4
/* 814B107C | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814B1080 | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814B1084 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814B1088 | 7C 7E 1B 78 */	mr r30, r3
/* 814B108C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1090 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B1094 | 4B FE CB 75 */	bl NWC24FOpen
/* 814B1098 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B109C | 40 80 00 08 */	bge .L_814B10A4
/* 814B10A0 | 48 00 01 50 */	b .L_814B11F0
.L_814B10A4:
/* 814B10A4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B10A8 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814B10AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B10B0 | 41 82 00 0C */	beq .L_814B10BC
/* 814B10B4 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B10B8 | 48 00 00 08 */	b .L_814B10C0
.L_814B10BC:
/* 814B10BC | 38 60 00 00 */	li r3, 0x0
.L_814B10C0:
/* 814B10C0 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 814B10C4 | 28 03 00 78 */	cmplwi r3, 0x78
/* 814B10C8 | 41 81 00 0C */	bgt .L_814B10D4
/* 814B10CC | 7C 00 18 40 */	cmplw r0, r3
/* 814B10D0 | 41 80 00 0C */	blt .L_814B10DC
.L_814B10D4:
/* 814B10D4 | 38 60 FF FD */	li r3, -0x3
/* 814B10D8 | 48 00 00 18 */	b .L_814B10F0
.L_814B10DC:
/* 814B10DC | 54 04 49 EC */	clrlslwi r4, r0, 16, 9
/* 814B10E0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B10E4 | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B10E8 | 38 A0 00 00 */	li r5, 0x0
/* 814B10EC | 4B FE D0 09 */	bl NWC24FSeek
.L_814B10F0:
/* 814B10F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B10F4 | 40 80 00 08 */	bge .L_814B10FC
/* 814B10F8 | 48 00 00 40 */	b .L_814B1138
.L_814B10FC:
/* 814B10FC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1100 | 7F C4 F3 78 */	mr r4, r30
/* 814B1104 | 38 A0 02 00 */	li r5, 0x200
/* 814B1108 | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B110C | 4B E7 F1 25 */	bl memcpy
/* 814B1110 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1114 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B1118 | 38 80 02 00 */	li r4, 0x200
/* 814B111C | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B1120 | 4B FE D3 95 */	bl NWC24FWrite
/* 814B1124 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1128 | 38 00 00 00 */	li r0, 0x0
/* 814B112C | 40 80 00 08 */	bge .L_814B1134
/* 814B1130 | 7C 60 1B 78 */	mr r0, r3
.L_814B1134:
/* 814B1134 | 7C 03 03 78 */	mr r3, r0
.L_814B1138:
/* 814B1138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B113C | 7C 7F 1B 78 */	mr r31, r3
/* 814B1140 | 41 80 00 9C */	blt .L_814B11DC
/* 814B1144 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1148 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814B114C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1150 | 41 82 00 0C */	beq .L_814B115C
/* 814B1154 | 38 83 36 00 */	addi r4, r3, 0x3600
/* 814B1158 | 48 00 00 08 */	b .L_814B1160
.L_814B115C:
/* 814B115C | 38 80 00 00 */	li r4, 0x0
.L_814B1160:
/* 814B1160 | 54 03 23 36 */	clrlslwi r3, r0, 16, 4
/* 814B1164 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 814B1168 | 7C 64 1A 14 */	add r3, r4, r3
/* 814B116C | 3B E0 00 00 */	li r31, 0x0
/* 814B1170 | 90 03 00 80 */	stw r0, 0x80(r3)
/* 814B1174 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B1178 | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 814B117C | 98 03 00 8C */	stb r0, 0x8c(r3)
/* 814B1180 | 41 80 00 5C */	blt .L_814B11DC
/* 814B1184 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1188 | 38 80 00 00 */	li r4, 0x0
/* 814B118C | 38 A0 00 00 */	li r5, 0x0
/* 814B1190 | 4B FE CF 65 */	bl NWC24FSeek
/* 814B1194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1198 | 40 80 00 08 */	bge .L_814B11A0
/* 814B119C | 48 00 00 3C */	b .L_814B11D8
.L_814B11A0:
/* 814B11A0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B11A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B11A8 | 41 82 00 0C */	beq .L_814B11B4
/* 814B11AC | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B11B0 | 48 00 00 08 */	b .L_814B11B8
.L_814B11B4:
/* 814B11B4 | 38 60 00 00 */	li r3, 0x0
.L_814B11B8:
/* 814B11B8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B11BC | 38 80 08 00 */	li r4, 0x800
/* 814B11C0 | 4B FE D2 F5 */	bl NWC24FWrite
/* 814B11C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B11C8 | 38 00 00 00 */	li r0, 0x0
/* 814B11CC | 40 80 00 08 */	bge .L_814B11D4
/* 814B11D0 | 7C 60 1B 78 */	mr r0, r3
.L_814B11D4:
/* 814B11D4 | 7C 03 03 78 */	mr r3, r0
.L_814B11D8:
/* 814B11D8 | 7C 7F 1B 78 */	mr r31, r3
.L_814B11DC:
/* 814B11DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B11E0 | 4B FE CD 7D */	bl NWC24FClose
/* 814B11E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B11E8 | 41 82 00 08 */	beq .L_814B11F0
/* 814B11EC | 7F E3 FB 78 */	mr r3, r31
.L_814B11F0:
/* 814B11F0 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814B11F4 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814B11F8 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814B11FC | 7C 08 03 A6 */	mtlr r0
/* 814B1200 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814B1204 | 4E 80 00 20 */	blr
.endfn StoreDlTask

# .text:0x2850 | 0x814B1208 | size: 0x644
.fn AddTaskInternal, global
/* 814B1208 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B120C | 7C 08 02 A6 */	mflr r0
/* 814B1210 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B1214 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B1218 | 48 14 82 A5 */	bl _savegpr_26
/* 814B121C | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1220 | 7C 7D 1B 78 */	mr r29, r3
/* 814B1224 | 7C 9E 23 78 */	mr r30, r4
/* 814B1228 | 7C BF 2B 78 */	mr r31, r5
/* 814B122C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B1230 | 41 82 00 0C */	beq .L_814B123C
/* 814B1234 | 3B 46 36 00 */	addi r26, r6, 0x3600
/* 814B1238 | 48 00 00 08 */	b .L_814B1240
.L_814B123C:
/* 814B123C | 3B 40 00 00 */	li r26, 0x0
.L_814B1240:
/* 814B1240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1244 | 40 82 00 0C */	bne .L_814B1250
/* 814B1248 | 38 60 FF FD */	li r3, -0x3
/* 814B124C | 48 00 00 9C */	b .L_814B12E8
.L_814B1250:
/* 814B1250 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B1254 | 40 82 00 0C */	bne .L_814B1260
/* 814B1258 | 38 60 FF F7 */	li r3, -0x9
/* 814B125C | 48 00 00 8C */	b .L_814B12E8
.L_814B1260:
/* 814B1260 | 4B FE F0 AD */	bl NWC24IsMsgLibOpenedByTool
/* 814B1264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1268 | 40 82 00 5C */	bne .L_814B12C4
/* 814B126C | 83 7D 00 08 */	lwz r27, 0x8(r29)
/* 814B1270 | 4B FE E7 D1 */	bl NWC24GetAppId
/* 814B1274 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814B1278 | 57 60 00 2E */	clrrwi r0, r27, 8
/* 814B127C | 7C 00 18 50 */	subf r0, r0, r3
/* 814B1280 | 7C 00 00 34 */	cntlzw r0, r0
/* 814B1284 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814B1288 | 40 82 00 3C */	bne .L_814B12C4
/* 814B128C | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814B1290 | 3B 80 00 00 */	li r28, 0x0
/* 814B1294 | A3 7D 00 14 */	lhz r27, 0x14(r29)
/* 814B1298 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814B129C | 41 82 00 18 */	beq .L_814B12B4
/* 814B12A0 | 4B FE E7 ED */	bl NWC24GetGroupId
/* 814B12A4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814B12A8 | 7C 1B 00 40 */	cmplw r27, r0
/* 814B12AC | 40 82 00 08 */	bne .L_814B12B4
/* 814B12B0 | 3B 80 00 01 */	li r28, 0x1
.L_814B12B4:
/* 814B12B4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B12B8 | 40 82 00 0C */	bne .L_814B12C4
/* 814B12BC | 38 60 FF F9 */	li r3, -0x7
/* 814B12C0 | 48 00 00 28 */	b .L_814B12E8
.L_814B12C4:
/* 814B12C4 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814B12C8 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814B12CC | 41 82 00 18 */	beq .L_814B12E4
/* 814B12D0 | A0 1A 00 14 */	lhz r0, 0x14(r26)
/* 814B12D4 | 7C 03 00 40 */	cmplw r3, r0
/* 814B12D8 | 41 80 00 0C */	blt .L_814B12E4
/* 814B12DC | 38 60 FF FD */	li r3, -0x3
/* 814B12E0 | 48 00 00 08 */	b .L_814B12E8
.L_814B12E4:
/* 814B12E4 | 38 60 00 00 */	li r3, 0x0
.L_814B12E8:
/* 814B12E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B12EC | 41 82 00 08 */	beq .L_814B12F4
/* 814B12F0 | 48 00 05 44 */	b .L_814B1834
.L_814B12F4:
/* 814B12F4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B12F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B12FC | 41 82 00 0C */	beq .L_814B1308
/* 814B1300 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B1304 | 48 00 00 08 */	b .L_814B130C
.L_814B1308:
/* 814B1308 | 38 60 00 00 */	li r3, 0x0
.L_814B130C:
/* 814B130C | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 814B1310 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B1314 | 7C 04 00 40 */	cmplw r4, r0
/* 814B1318 | 41 80 00 14 */	blt .L_814B132C
/* 814B131C | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814B1320 | 41 82 00 0C */	beq .L_814B132C
/* 814B1324 | 38 00 FF FD */	li r0, -0x3
/* 814B1328 | 48 00 00 74 */	b .L_814B139C
.L_814B132C:
/* 814B132C | 3B 5D 00 B4 */	addi r26, r29, 0xb4
/* 814B1330 | 38 80 00 07 */	li r4, 0x7
/* 814B1334 | 7F 43 D3 78 */	mr r3, r26
/* 814B1338 | 38 A0 01 00 */	li r5, 0x100
/* 814B133C | 4B FE EB B1 */	bl NWC24iCheckStringLength
/* 814B1340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1344 | 40 80 00 08 */	bge .L_814B134C
/* 814B1348 | 48 00 00 44 */	b .L_814B138C
.L_814B134C:
/* 814B134C | 7F 43 D3 78 */	mr r3, r26
/* 814B1350 | 38 8D 9C 80 */	li r4, lbl_81697CC0@sda21
/* 814B1354 | 38 A0 00 07 */	li r5, 0x7
/* 814B1358 | 48 15 12 45 */	bl strncmp
/* 814B135C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1360 | 41 82 00 28 */	beq .L_814B1388
/* 814B1364 | 3C 80 81 67 */	lis r4, lbl_8166E208@ha
/* 814B1368 | 7F 43 D3 78 */	mr r3, r26
/* 814B136C | 38 84 E2 08 */	addi r4, r4, lbl_8166E208@l
/* 814B1370 | 38 A0 00 08 */	li r5, 0x8
/* 814B1374 | 48 15 12 29 */	bl strncmp
/* 814B1378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B137C | 41 82 00 0C */	beq .L_814B1388
/* 814B1380 | 38 60 FF E8 */	li r3, -0x18
/* 814B1384 | 48 00 00 08 */	b .L_814B138C
.L_814B1388:
/* 814B1388 | 38 60 00 00 */	li r3, 0x0
.L_814B138C:
/* 814B138C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1390 | 38 00 00 00 */	li r0, 0x0
/* 814B1394 | 40 80 00 08 */	bge .L_814B139C
/* 814B1398 | 7C 60 1B 78 */	mr r0, r3
.L_814B139C:
/* 814B139C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B13A0 | 40 80 00 0C */	bge .L_814B13AC
/* 814B13A4 | 7C 03 03 78 */	mr r3, r0
/* 814B13A8 | 48 00 04 8C */	b .L_814B1834
.L_814B13AC:
/* 814B13AC | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814B13B0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814B13B4 | 41 82 03 C0 */	beq .L_814B1774
/* 814B13B8 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B13BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B13C0 | 41 82 00 0C */	beq .L_814B13CC
/* 814B13C4 | 3B 43 36 00 */	addi r26, r3, 0x3600
/* 814B13C8 | 48 00 00 08 */	b .L_814B13D0
.L_814B13CC:
/* 814B13CC | 3B 40 00 00 */	li r26, 0x0
.L_814B13D0:
/* 814B13D0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B13D4 | 40 82 00 0C */	bne .L_814B13E0
/* 814B13D8 | 38 A0 FF FD */	li r5, -0x3
/* 814B13DC | 48 00 00 9C */	b .L_814B1478
.L_814B13E0:
/* 814B13E0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B13E4 | 40 82 00 0C */	bne .L_814B13F0
/* 814B13E8 | 38 A0 FF F7 */	li r5, -0x9
/* 814B13EC | 48 00 00 8C */	b .L_814B1478
.L_814B13F0:
/* 814B13F0 | 4B FE EF 1D */	bl NWC24IsMsgLibOpenedByTool
/* 814B13F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B13F8 | 40 82 00 5C */	bne .L_814B1454
/* 814B13FC | 83 7D 00 08 */	lwz r27, 0x8(r29)
/* 814B1400 | 4B FE E6 41 */	bl NWC24GetAppId
/* 814B1404 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814B1408 | 57 60 00 2E */	clrrwi r0, r27, 8
/* 814B140C | 7C 00 18 50 */	subf r0, r0, r3
/* 814B1410 | 7C 00 00 34 */	cntlzw r0, r0
/* 814B1414 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814B1418 | 40 82 00 3C */	bne .L_814B1454
/* 814B141C | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814B1420 | 3B C0 00 00 */	li r30, 0x0
/* 814B1424 | A3 7D 00 14 */	lhz r27, 0x14(r29)
/* 814B1428 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814B142C | 41 82 00 18 */	beq .L_814B1444
/* 814B1430 | 4B FE E6 5D */	bl NWC24GetGroupId
/* 814B1434 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814B1438 | 7C 1B 00 40 */	cmplw r27, r0
/* 814B143C | 40 82 00 08 */	bne .L_814B1444
/* 814B1440 | 3B C0 00 01 */	li r30, 0x1
.L_814B1444:
/* 814B1444 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B1448 | 40 82 00 0C */	bne .L_814B1454
/* 814B144C | 38 A0 FF F9 */	li r5, -0x7
/* 814B1450 | 48 00 00 28 */	b .L_814B1478
.L_814B1454:
/* 814B1454 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814B1458 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814B145C | 41 82 00 18 */	beq .L_814B1474
/* 814B1460 | A0 1A 00 14 */	lhz r0, 0x14(r26)
/* 814B1464 | 7C 03 00 40 */	cmplw r3, r0
/* 814B1468 | 41 80 00 0C */	blt .L_814B1474
/* 814B146C | 38 A0 FF FD */	li r5, -0x3
/* 814B1470 | 48 00 00 08 */	b .L_814B1478
.L_814B1474:
/* 814B1474 | 38 A0 00 00 */	li r5, 0x0
.L_814B1478:
/* 814B1478 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B147C | 41 82 00 08 */	beq .L_814B1484
/* 814B1480 | 48 00 02 EC */	b .L_814B176C
.L_814B1484:
/* 814B1484 | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 814B1488 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814B148C | 41 82 00 28 */	beq .L_814B14B4
/* 814B1490 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1498 | 41 82 00 0C */	beq .L_814B14A4
/* 814B149C | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B14A0 | 48 00 00 08 */	b .L_814B14A8
.L_814B14A4:
/* 814B14A4 | 38 60 00 00 */	li r3, 0x0
.L_814B14A8:
/* 814B14A8 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B14AC | 7C 04 00 40 */	cmplw r4, r0
/* 814B14B0 | 41 80 00 0C */	blt .L_814B14BC
.L_814B14B4:
/* 814B14B4 | 38 A0 FF FD */	li r5, -0x3
/* 814B14B8 | 48 00 02 B4 */	b .L_814B176C
.L_814B14BC:
/* 814B14BC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B14C0 | 4B FF CE F5 */	bl NWC24iGetUniversalTime
/* 814B14C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B14C8 | 41 80 00 C8 */	blt .L_814B1590
/* 814B14CC | 83 4D AD A0 */	lwz r26, NWC24WorkP_81698DE0@sda21(r0)
/* 814B14D0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B14D4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B14D8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B14DC | 41 82 00 0C */	beq .L_814B14E8
/* 814B14E0 | 38 BA 36 00 */	addi r5, r26, 0x3600
/* 814B14E4 | 48 00 00 08 */	b .L_814B14EC
.L_814B14E8:
/* 814B14E8 | 38 A0 00 00 */	li r5, 0x0
.L_814B14EC:
/* 814B14EC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B14F0 | 40 82 00 0C */	bne .L_814B14FC
/* 814B14F4 | 38 A0 FF FD */	li r5, -0x3
/* 814B14F8 | 48 00 00 38 */	b .L_814B1530
.L_814B14FC:
/* 814B14FC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B1500 | 40 82 00 0C */	bne .L_814B150C
/* 814B1504 | 38 A0 FF F7 */	li r5, -0x9
/* 814B1508 | 48 00 00 28 */	b .L_814B1530
.L_814B150C:
/* 814B150C | A0 DD 00 00 */	lhz r6, 0x0(r29)
/* 814B1510 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814B1514 | 41 82 00 18 */	beq .L_814B152C
/* 814B1518 | A0 05 00 14 */	lhz r0, 0x14(r5)
/* 814B151C | 7C 06 00 40 */	cmplw r6, r0
/* 814B1520 | 41 80 00 0C */	blt .L_814B152C
/* 814B1524 | 38 A0 FF FD */	li r5, -0x3
/* 814B1528 | 48 00 00 08 */	b .L_814B1530
.L_814B152C:
/* 814B152C | 38 A0 00 00 */	li r5, 0x0
.L_814B1530:
/* 814B1530 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B1534 | 41 82 00 08 */	beq .L_814B153C
/* 814B1538 | 48 00 00 48 */	b .L_814B1580
.L_814B153C:
/* 814B153C | A3 DD 00 00 */	lhz r30, 0x0(r29)
/* 814B1540 | 28 1E FF FF */	cmplwi r30, 0xffff
/* 814B1544 | 40 82 00 0C */	bne .L_814B1550
/* 814B1548 | 38 A0 FF FE */	li r5, -0x2
/* 814B154C | 48 00 00 34 */	b .L_814B1580
.L_814B1550:
/* 814B1550 | 38 C0 00 3C */	li r6, 0x3c
/* 814B1554 | 38 A0 00 00 */	li r5, 0x0
/* 814B1558 | 48 14 80 B9 */	bl __div2i
/* 814B155C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B1560 | 41 82 00 0C */	beq .L_814B156C
/* 814B1564 | 38 7A 36 00 */	addi r3, r26, 0x3600
/* 814B1568 | 48 00 00 08 */	b .L_814B1570
.L_814B156C:
/* 814B156C | 38 60 00 00 */	li r3, 0x0
.L_814B1570:
/* 814B1570 | 57 C0 23 36 */	clrlslwi r0, r30, 16, 4
/* 814B1574 | 38 A0 00 00 */	li r5, 0x0
/* 814B1578 | 7C 63 02 14 */	add r3, r3, r0
/* 814B157C | 90 83 00 88 */	stw r4, 0x88(r3)
.L_814B1580:
/* 814B1580 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B1584 | 7C A3 2B 78 */	mr r3, r5
/* 814B1588 | 40 80 00 08 */	bge .L_814B1590
/* 814B158C | 48 00 00 08 */	b .L_814B1594
.L_814B1590:
/* 814B1590 | 7C 65 1B 78 */	mr r5, r3
.L_814B1594:
/* 814B1594 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B1598 | 40 80 00 08 */	bge .L_814B15A0
/* 814B159C | 48 00 01 D0 */	b .L_814B176C
.L_814B15A0:
/* 814B15A0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B15A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B15A8 | 41 82 00 0C */	beq .L_814B15B4
/* 814B15AC | 3B 63 36 00 */	addi r27, r3, 0x3600
/* 814B15B0 | 48 00 00 08 */	b .L_814B15B8
.L_814B15B4:
/* 814B15B4 | 3B 60 00 00 */	li r27, 0x0
.L_814B15B8:
/* 814B15B8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B15BC | 40 82 00 0C */	bne .L_814B15C8
/* 814B15C0 | 38 00 FF FD */	li r0, -0x3
/* 814B15C4 | 48 00 00 9C */	b .L_814B1660
.L_814B15C8:
/* 814B15C8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B15CC | 40 82 00 0C */	bne .L_814B15D8
/* 814B15D0 | 38 00 FF F7 */	li r0, -0x9
/* 814B15D4 | 48 00 00 8C */	b .L_814B1660
.L_814B15D8:
/* 814B15D8 | 4B FE ED 35 */	bl NWC24IsMsgLibOpenedByTool
/* 814B15DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B15E0 | 40 82 00 5C */	bne .L_814B163C
/* 814B15E4 | 83 5D 00 08 */	lwz r26, 0x8(r29)
/* 814B15E8 | 4B FE E4 59 */	bl NWC24GetAppId
/* 814B15EC | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814B15F0 | 57 40 00 2E */	clrrwi r0, r26, 8
/* 814B15F4 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B15F8 | 7C 00 00 34 */	cntlzw r0, r0
/* 814B15FC | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814B1600 | 40 82 00 3C */	bne .L_814B163C
/* 814B1604 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814B1608 | 3B C0 00 00 */	li r30, 0x0
/* 814B160C | A3 5D 00 14 */	lhz r26, 0x14(r29)
/* 814B1610 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814B1614 | 41 82 00 18 */	beq .L_814B162C
/* 814B1618 | 4B FE E4 75 */	bl NWC24GetGroupId
/* 814B161C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814B1620 | 7C 1A 00 40 */	cmplw r26, r0
/* 814B1624 | 40 82 00 08 */	bne .L_814B162C
/* 814B1628 | 3B C0 00 01 */	li r30, 0x1
.L_814B162C:
/* 814B162C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B1630 | 40 82 00 0C */	bne .L_814B163C
/* 814B1634 | 38 00 FF F9 */	li r0, -0x7
/* 814B1638 | 48 00 00 28 */	b .L_814B1660
.L_814B163C:
/* 814B163C | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814B1640 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814B1644 | 41 82 00 18 */	beq .L_814B165C
/* 814B1648 | A0 1B 00 14 */	lhz r0, 0x14(r27)
/* 814B164C | 7C 03 00 40 */	cmplw r3, r0
/* 814B1650 | 41 80 00 0C */	blt .L_814B165C
/* 814B1654 | 38 00 FF FD */	li r0, -0x3
/* 814B1658 | 48 00 00 08 */	b .L_814B1660
.L_814B165C:
/* 814B165C | 38 00 00 00 */	li r0, 0x0
.L_814B1660:
/* 814B1660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1664 | 40 82 00 10 */	bne .L_814B1674
/* 814B1668 | 38 00 00 00 */	li r0, 0x0
/* 814B166C | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 814B1670 | B0 1D 00 1A */	sth r0, 0x1a(r29)
.L_814B1674:
/* 814B1674 | 88 1D 00 25 */	lbz r0, 0x25(r29)
/* 814B1678 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B167C | 40 82 00 E4 */	bne .L_814B1760
/* 814B1680 | 38 80 00 01 */	li r4, 0x1
/* 814B1684 | 48 00 00 10 */	b .L_814B1694
.L_814B1688:
/* 814B1688 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814B168C | 54 00 06 FE */	clrlwi r0, r0, 27
/* 814B1690 | 98 1D 00 24 */	stb r0, 0x24(r29)
.L_814B1694:
/* 814B1694 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1698 | 88 BD 00 24 */	lbz r5, 0x24(r29)
/* 814B169C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B16A0 | 41 82 00 0C */	beq .L_814B16AC
/* 814B16A4 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B16A8 | 48 00 00 08 */	b .L_814B16B0
.L_814B16AC:
/* 814B16AC | 38 60 00 00 */	li r3, 0x0
.L_814B16B0:
/* 814B16B0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B16B4 | 40 82 00 0C */	bne .L_814B16C0
/* 814B16B8 | 38 60 FF FD */	li r3, -0x3
/* 814B16BC | 48 00 00 38 */	b .L_814B16F4
.L_814B16C0:
/* 814B16C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B16C4 | 40 82 00 0C */	bne .L_814B16D0
/* 814B16C8 | 38 60 FF F7 */	li r3, -0x9
/* 814B16CC | 48 00 00 28 */	b .L_814B16F4
.L_814B16D0:
/* 814B16D0 | A0 DD 00 00 */	lhz r6, 0x0(r29)
/* 814B16D4 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814B16D8 | 41 82 00 18 */	beq .L_814B16F0
/* 814B16DC | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B16E0 | 7C 06 00 40 */	cmplw r6, r0
/* 814B16E4 | 41 80 00 0C */	blt .L_814B16F0
/* 814B16E8 | 38 60 FF FD */	li r3, -0x3
/* 814B16EC | 48 00 00 08 */	b .L_814B16F4
.L_814B16F0:
/* 814B16F0 | 38 60 00 00 */	li r3, 0x0
.L_814B16F4:
/* 814B16F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B16F8 | 41 82 00 08 */	beq .L_814B1700
/* 814B16FC | 48 00 00 50 */	b .L_814B174C
.L_814B1700:
/* 814B1700 | 88 1D 00 25 */	lbz r0, 0x25(r29)
/* 814B1704 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1708 | 40 82 00 0C */	bne .L_814B1714
/* 814B170C | 38 60 FF D8 */	li r3, -0x28
/* 814B1710 | 48 00 00 3C */	b .L_814B174C
.L_814B1714:
/* 814B1714 | 80 DD 00 28 */	lwz r6, 0x28(r29)
/* 814B1718 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B171C | 40 82 00 0C */	bne .L_814B1728
/* 814B1720 | 38 60 FF FF */	li r3, -0x1
/* 814B1724 | 48 00 00 28 */	b .L_814B174C
.L_814B1728:
/* 814B1728 | 28 05 00 1F */	cmplwi r5, 0x1f
/* 814B172C | 40 81 00 0C */	ble .L_814B1738
/* 814B1730 | 38 60 FF FD */	li r3, -0x3
/* 814B1734 | 48 00 00 18 */	b .L_814B174C
.L_814B1738:
/* 814B1738 | 7C 80 28 30 */	slw r0, r4, r5
/* 814B173C | 38 60 00 00 */	li r3, 0x0
/* 814B1740 | 7C 00 30 39 */	and. r0, r0, r6
/* 814B1744 | 40 82 00 08 */	bne .L_814B174C
/* 814B1748 | 38 60 FF D9 */	li r3, -0x27
.L_814B174C:
/* 814B174C | 2C 03 FF D9 */	cmpwi r3, -0x27
/* 814B1750 | 41 82 FF 38 */	beq .L_814B1688
/* 814B1754 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1758 | 40 80 00 08 */	bge .L_814B1760
/* 814B175C | 48 00 00 0C */	b .L_814B1768
.L_814B1760:
/* 814B1760 | 7F A3 EB 78 */	mr r3, r29
/* 814B1764 | 4B FF F9 0D */	bl StoreDlTask
.L_814B1768:
/* 814B1768 | 7C 65 1B 78 */	mr r5, r3
.L_814B176C:
/* 814B176C | 7C A3 2B 78 */	mr r3, r5
/* 814B1770 | 48 00 00 C4 */	b .L_814B1834
.L_814B1774:
/* 814B1774 | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1778 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B177C | 41 82 00 0C */	beq .L_814B1788
/* 814B1780 | 38 66 36 00 */	addi r3, r6, 0x3600
/* 814B1784 | 48 00 00 08 */	b .L_814B178C
.L_814B1788:
/* 814B1788 | 38 60 00 00 */	li r3, 0x0
.L_814B178C:
/* 814B178C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B1790 | 41 82 00 20 */	beq .L_814B17B0
/* 814B1794 | 7C 1E F8 40 */	cmplw r30, r31
/* 814B1798 | 41 81 00 18 */	bgt .L_814B17B0
/* 814B179C | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814B17A0 | 7C 1E 00 40 */	cmplw r30, r0
/* 814B17A4 | 40 80 00 0C */	bge .L_814B17B0
/* 814B17A8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814B17AC | 40 81 00 0C */	ble .L_814B17B8
.L_814B17B0:
/* 814B17B0 | 38 60 FF FD */	li r3, -0x3
/* 814B17B4 | 48 00 00 60 */	b .L_814B1814
.L_814B17B8:
/* 814B17B8 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 814B17BC | 7F C4 F3 78 */	mr r4, r30
/* 814B17C0 | 7C 03 F8 50 */	subf r0, r3, r31
/* 814B17C4 | 38 A6 36 00 */	addi r5, r6, 0x3600
/* 814B17C8 | 7C 09 03 A6 */	mtctr r0
/* 814B17CC | 7C 03 F8 40 */	cmplw r3, r31
/* 814B17D0 | 40 80 00 40 */	bge .L_814B1810
.L_814B17D4:
/* 814B17D4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B17D8 | 41 82 00 0C */	beq .L_814B17E4
/* 814B17DC | 7C A3 2B 78 */	mr r3, r5
/* 814B17E0 | 48 00 00 08 */	b .L_814B17E8
.L_814B17E4:
/* 814B17E4 | 38 60 00 00 */	li r3, 0x0
.L_814B17E8:
/* 814B17E8 | 54 80 23 36 */	clrlslwi r0, r4, 16, 4
/* 814B17EC | 7C 63 02 14 */	add r3, r3, r0
/* 814B17F0 | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 814B17F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B17F8 | 40 82 00 10 */	bne .L_814B1808
/* 814B17FC | B0 9D 00 00 */	sth r4, 0x0(r29)
/* 814B1800 | 38 60 00 00 */	li r3, 0x0
/* 814B1804 | 48 00 00 10 */	b .L_814B1814
.L_814B1808:
/* 814B1808 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B180C | 42 00 FF C8 */	bdnz .L_814B17D4
.L_814B1810:
/* 814B1810 | 38 60 FF FA */	li r3, -0x6
.L_814B1814:
/* 814B1814 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 814B1818 | 40 82 00 14 */	bne .L_814B182C
/* 814B181C | 4B FF E8 B1 */	bl NWC24PurgeOldestDlTask
/* 814B1820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1824 | 40 80 FB 88 */	bge .L_814B13AC
/* 814B1828 | 48 00 00 0C */	b .L_814B1834
.L_814B182C:
/* 814B182C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1830 | 40 80 FB 7C */	bge .L_814B13AC
.L_814B1834:
/* 814B1834 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B1838 | 48 14 7C D1 */	bl _restgpr_26
/* 814B183C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B1840 | 7C 08 03 A6 */	mtlr r0
/* 814B1844 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B1848 | 4E 80 00 20 */	blr
.endfn AddTaskInternal

# .text:0x2E94 | 0x814B184C | size: 0x1C4
.fn DeleteDlTask, global
/* 814B184C | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814B1850 | 7C 08 02 A6 */	mflr r0
/* 814B1854 | 38 A0 00 04 */	li r5, 0x4
/* 814B1858 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814B185C | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814B1860 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814B1864 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814B1868 | 7C 7D 1B 78 */	mr r29, r3
/* 814B186C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1870 | 80 8D 9C 78 */	lwz r4, DLFilePath@sda21(r0)
/* 814B1874 | 4B FE C3 95 */	bl NWC24FOpen
/* 814B1878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B187C | 40 80 00 08 */	bge .L_814B1884
/* 814B1880 | 48 00 01 74 */	b .L_814B19F4
.L_814B1884:
/* 814B1884 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1888 | 38 80 00 00 */	li r4, 0x0
/* 814B188C | A3 FD 00 00 */	lhz r31, 0x0(r29)
/* 814B1890 | 38 A0 02 00 */	li r5, 0x200
/* 814B1894 | 3B C3 3E 00 */	addi r30, r3, 0x3e00
/* 814B1898 | 7F C3 F3 78 */	mr r3, r30
/* 814B189C | 4B E7 EA 99 */	bl memset
/* 814B18A0 | 38 60 00 FF */	li r3, 0xff
/* 814B18A4 | 57 E0 23 36 */	clrlslwi r0, r31, 16, 4
/* 814B18A8 | 98 7E 00 02 */	stb r3, 0x2(r30)
/* 814B18AC | 38 80 00 00 */	li r4, 0x0
/* 814B18B0 | 38 A0 00 10 */	li r5, 0x10
/* 814B18B4 | B3 FE 00 00 */	sth r31, 0x0(r30)
/* 814B18B8 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B18BC | 7C 63 02 14 */	add r3, r3, r0
/* 814B18C0 | 38 63 36 80 */	addi r3, r3, 0x3680
/* 814B18C4 | 4B E7 EA 71 */	bl memset
/* 814B18C8 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B18CC | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814B18D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B18D4 | 41 82 00 0C */	beq .L_814B18E0
/* 814B18D8 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B18DC | 48 00 00 08 */	b .L_814B18E4
.L_814B18E0:
/* 814B18E0 | 38 60 00 00 */	li r3, 0x0
.L_814B18E4:
/* 814B18E4 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 814B18E8 | 28 03 00 78 */	cmplwi r3, 0x78
/* 814B18EC | 41 81 00 0C */	bgt .L_814B18F8
/* 814B18F0 | 7C 00 18 40 */	cmplw r0, r3
/* 814B18F4 | 41 80 00 0C */	blt .L_814B1900
.L_814B18F8:
/* 814B18F8 | 38 60 FF FD */	li r3, -0x3
/* 814B18FC | 48 00 00 18 */	b .L_814B1914
.L_814B1900:
/* 814B1900 | 54 04 49 EC */	clrlslwi r4, r0, 16, 9
/* 814B1904 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1908 | 38 84 08 00 */	addi r4, r4, 0x800
/* 814B190C | 38 A0 00 00 */	li r5, 0x0
/* 814B1910 | 4B FE C7 E5 */	bl NWC24FSeek
.L_814B1914:
/* 814B1914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1918 | 40 80 00 08 */	bge .L_814B1920
/* 814B191C | 48 00 00 40 */	b .L_814B195C
.L_814B1920:
/* 814B1920 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1924 | 7F C4 F3 78 */	mr r4, r30
/* 814B1928 | 38 A0 02 00 */	li r5, 0x200
/* 814B192C | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B1930 | 4B E7 E9 01 */	bl memcpy
/* 814B1934 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1938 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B193C | 38 80 02 00 */	li r4, 0x200
/* 814B1940 | 38 63 3E 00 */	addi r3, r3, 0x3e00
/* 814B1944 | 4B FE CB 71 */	bl NWC24FWrite
/* 814B1948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B194C | 38 00 00 00 */	li r0, 0x0
/* 814B1950 | 40 80 00 08 */	bge .L_814B1958
/* 814B1954 | 7C 60 1B 78 */	mr r0, r3
.L_814B1958:
/* 814B1958 | 7C 03 03 78 */	mr r3, r0
.L_814B195C:
/* 814B195C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1960 | 7C 7E 1B 78 */	mr r30, r3
/* 814B1964 | 41 80 00 7C */	blt .L_814B19E0
/* 814B1968 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814B196C | 38 80 00 00 */	li r4, 0x0
/* 814B1970 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1974 | 38 A0 00 10 */	li r5, 0x10
/* 814B1978 | 54 00 20 36 */	slwi r0, r0, 4
/* 814B197C | 7C 63 02 14 */	add r3, r3, r0
/* 814B1980 | 38 63 36 80 */	addi r3, r3, 0x3680
/* 814B1984 | 4B E7 E9 B1 */	bl memset
/* 814B1988 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B198C | 38 80 00 00 */	li r4, 0x0
/* 814B1990 | 38 A0 00 00 */	li r5, 0x0
/* 814B1994 | 4B FE C7 61 */	bl NWC24FSeek
/* 814B1998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B199C | 40 80 00 08 */	bge .L_814B19A4
/* 814B19A0 | 48 00 00 3C */	b .L_814B19DC
.L_814B19A4:
/* 814B19A4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814B19A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B19AC | 41 82 00 0C */	beq .L_814B19B8
/* 814B19B0 | 38 63 36 00 */	addi r3, r3, 0x3600
/* 814B19B4 | 48 00 00 08 */	b .L_814B19BC
.L_814B19B8:
/* 814B19B8 | 38 60 00 00 */	li r3, 0x0
.L_814B19BC:
/* 814B19BC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B19C0 | 38 80 08 00 */	li r4, 0x800
/* 814B19C4 | 4B FE CA F1 */	bl NWC24FWrite
/* 814B19C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B19CC | 38 00 00 00 */	li r0, 0x0
/* 814B19D0 | 40 80 00 08 */	bge .L_814B19D8
/* 814B19D4 | 7C 60 1B 78 */	mr r0, r3
.L_814B19D8:
/* 814B19D8 | 7C 03 03 78 */	mr r3, r0
.L_814B19DC:
/* 814B19DC | 7C 7E 1B 78 */	mr r30, r3
.L_814B19E0:
/* 814B19E0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B19E4 | 4B FE C5 79 */	bl NWC24FClose
/* 814B19E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B19EC | 41 82 00 08 */	beq .L_814B19F4
/* 814B19F0 | 7F C3 F3 78 */	mr r3, r30
.L_814B19F4:
/* 814B19F4 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814B19F8 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814B19FC | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814B1A00 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814B1A04 | 7C 08 03 A6 */	mtlr r0
/* 814B1A08 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814B1A0C | 4E 80 00 20 */	blr
.endfn DeleteDlTask

# .text:0x3058 | 0x814B1A10 | size: 0x28
.fn IterationPredicatorLastAccess, local
/* 814B1A10 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1A14 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B1A18 | 41 82 00 0C */	beq .L_814B1A24
/* 814B1A1C | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B1A20 | 48 00 00 08 */	b .L_814B1A28
.L_814B1A24:
/* 814B1A24 | 38 80 00 00 */	li r4, 0x0
.L_814B1A28:
/* 814B1A28 | 54 60 23 36 */	clrlslwi r0, r3, 16, 4
/* 814B1A2C | 7C 64 02 14 */	add r3, r4, r0
/* 814B1A30 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 814B1A34 | 4E 80 00 20 */	blr
.endfn IterationPredicatorLastAccess

# .text:0x3080 | 0x814B1A38 | size: 0x28
.fn IterationPredicatorNextTime, local
/* 814B1A38 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1A3C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B1A40 | 41 82 00 0C */	beq .L_814B1A4C
/* 814B1A44 | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B1A48 | 48 00 00 08 */	b .L_814B1A50
.L_814B1A4C:
/* 814B1A4C | 38 80 00 00 */	li r4, 0x0
.L_814B1A50:
/* 814B1A50 | 54 60 23 36 */	clrlslwi r0, r3, 16, 4
/* 814B1A54 | 7C 64 02 14 */	add r3, r4, r0
/* 814B1A58 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 814B1A5C | 4E 80 00 20 */	blr
.endfn IterationPredicatorNextTime

# .text:0x30A8 | 0x814B1A60 | size: 0x28
.fn IterationPredicatorPriority, local
/* 814B1A60 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814B1A64 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B1A68 | 41 82 00 0C */	beq .L_814B1A74
/* 814B1A6C | 38 84 36 00 */	addi r4, r4, 0x3600
/* 814B1A70 | 48 00 00 08 */	b .L_814B1A78
.L_814B1A74:
/* 814B1A74 | 38 80 00 00 */	li r4, 0x0
.L_814B1A78:
/* 814B1A78 | 54 60 23 36 */	clrlslwi r0, r3, 16, 4
/* 814B1A7C | 7C 64 02 14 */	add r3, r4, r0
/* 814B1A80 | 88 63 00 8C */	lbz r3, 0x8c(r3)
/* 814B1A84 | 4E 80 00 20 */	blr
.endfn IterationPredicatorPriority

# 0x8166E1E0..0x8166E218 | size: 0x38
.data
.balign 8

# .data:0x0 | 0x8166E1E0 | size: 0x1C
.obj lbl_8166E1E0, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6E77
	.4byte 0x63323464
	.4byte 0x6C2E6269
	.4byte 0x6E000000
.endobj lbl_8166E1E0

# .data:0x1C | 0x8166E1FC | size: 0xC
.obj lbl_8166E1FC, global
	.string "content.bin"
.endobj lbl_8166E1FC

# .data:0x28 | 0x8166E208 | size: 0x10
.obj lbl_8166E208, global
	.4byte 0x68747470
	.4byte 0x733A2F2F
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166E208

# 0x81697CB8..0x81697CC8 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CB8 | size: 0x8
.obj DLFilePath, local
	.4byte lbl_8166E1E0
	.4byte 0x00000000
.endobj DLFilePath

# .sdata:0x8 | 0x81697CC0 | size: 0x8
.obj lbl_81697CC0, global
	.string "http://"
.endobj lbl_81697CC0

# 0x81698E38..0x81698E40 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E38 | size: 0x4
.obj NWC24iLaxParameterCheck, local
	.skip 0x4
.endobj NWC24iLaxParameterCheck

# .sbss:0x4 | 0x81698E3C | size: 0x4
.obj gap_12_81698E3C_sbss, global
.hidden gap_12_81698E3C_sbss
	.skip 0x4
.endobj gap_12_81698E3C_sbss
