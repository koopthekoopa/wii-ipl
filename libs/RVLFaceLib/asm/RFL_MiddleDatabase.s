.include "macros.inc"
.file "RFL_MiddleDatabase.c"

# 0x81330BC0..0x81330C10 | size: 0x50
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330BC0 | size: 0x8
.obj "@etb_81330BC0", local
.hidden "@etb_81330BC0"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330BC0"

# extab:0x8 | 0x81330BC8 | size: 0x8
.obj "@etb_81330BC8", local
.hidden "@etb_81330BC8"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330BC8"

# extab:0x10 | 0x81330BD0 | size: 0x8
.obj "@etb_81330BD0", local
.hidden "@etb_81330BD0"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330BD0"

# extab:0x18 | 0x81330BD8 | size: 0x8
.obj "@etb_81330BD8", local
.hidden "@etb_81330BD8"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330BD8"

# extab:0x20 | 0x81330BE0 | size: 0x8
.obj "@etb_81330BE0", local
.hidden "@etb_81330BE0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330BE0"

# extab:0x28 | 0x81330BE8 | size: 0x8
.obj "@etb_81330BE8", local
.hidden "@etb_81330BE8"
	.4byte 0x48080000
	.4byte 0x00000000
.endobj "@etb_81330BE8"

# extab:0x30 | 0x81330BF0 | size: 0x8
.obj "@etb_81330BF0", local
.hidden "@etb_81330BF0"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330BF0"

# extab:0x38 | 0x81330BF8 | size: 0x8
.obj "@etb_81330BF8", local
.hidden "@etb_81330BF8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330BF8"

# extab:0x40 | 0x81330C00 | size: 0x8
.obj "@etb_81330C00", local
.hidden "@etb_81330C00"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330C00"

# extab:0x48 | 0x81330C08 | size: 0x8
.obj "@etb_81330C08", local
.hidden "@etb_81330C08"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330C08"

# 0x81331B30..0x81331BA8 | size: 0x78
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331B30 | size: 0xC
.obj "@eti_81331B30", local
.hidden "@eti_81331B30"
	.4byte updateHDBcallback_
	.4byte 0x000001E8
	.4byte "@etb_81330BC0"
.endobj "@eti_81331B30"

# extabindex:0xC | 0x81331B3C | size: 0xC
.obj "@eti_81331B3C", local
.hidden "@eti_81331B3C"
	.4byte loadHiddenDataSync_
	.4byte 0x00000174
	.4byte "@etb_81330BC8"
.endobj "@eti_81331B3C"

# extabindex:0x18 | 0x81331B48 | size: 0xC
.obj "@eti_81331B48", local
.hidden "@eti_81331B48"
	.4byte updateHiddenOld_
	.4byte 0x00000154
	.4byte "@etb_81330BD0"
.endobj "@eti_81331B48"

# extabindex:0x24 | 0x81331B54 | size: 0xC
.obj "@eti_81331B54", local
.hidden "@eti_81331B54"
	.4byte loadHiddenRandomSync_
	.4byte 0x0000013C
	.4byte "@etb_81330BD8"
.endobj "@eti_81331B54"

# extabindex:0x30 | 0x81331B60 | size: 0xC
.obj "@eti_81331B60", local
.hidden "@eti_81331B60"
	.4byte updateHDBRandcallback_
	.4byte 0x00000194
	.4byte "@etb_81330BE0"
.endobj "@eti_81331B60"

# extabindex:0x3C | 0x81331B6C | size: 0xC
.obj "@eti_81331B6C", local
.hidden "@eti_81331B6C"
	.4byte updateHiddenRandom_
	.4byte 0x000002DC
	.4byte "@etb_81330BE8"
.endobj "@eti_81331B6C"

# extabindex:0x48 | 0x81331B78 | size: 0xC
.obj "@eti_81331B78", local
.hidden "@eti_81331B78"
	.4byte updateRandom_
	.4byte 0x000000F8
	.4byte "@etb_81330BF0"
.endobj "@eti_81331B78"

# extabindex:0x54 | 0x81331B84 | size: 0xC
.obj "@eti_81331B84", local
.hidden "@eti_81331B84"
	.4byte RFLUpdateMiddleDBAsync
	.4byte 0x0000005C
	.4byte "@etb_81330BF8"
.endobj "@eti_81331B84"

# extabindex:0x60 | 0x81331B90 | size: 0xC
.obj "@eti_81331B90", local
.hidden "@eti_81331B90"
	.4byte RFLiUpdateMiddleDBAsync
	.4byte 0x00000138
	.4byte "@etb_81330C00"
.endobj "@eti_81331B90"

# extabindex:0x6C | 0x81331B9C | size: 0xC
.obj "@eti_81331B9C", local
.hidden "@eti_81331B9C"
	.4byte RFLiGetCharInfoMiddleDB
	.4byte 0x0000009C
	.4byte "@etb_81330C08"
.endobj "@eti_81331B9C"

# 0x814E6E64..0x814E7CA4 | size: 0xE40
.text
.balign 4

# .text:0x0 | 0x814E6E64 | size: 0x8
.fn RFLGetMiddleDBBufferSize, global
/* 814E6E64 | 54 63 32 B2 */	clrlslwi r3, r3, 16, 6
/* 814E6E68 | 4E 80 00 20 */	blr
.endfn RFLGetMiddleDBBufferSize

# .text:0x8 | 0x814E6E6C | size: 0xAC
.fn RFLInitMiddleDB, global
/* 814E6E6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E6E70 | 4D 82 00 20 */	beqlr
/* 814E6E74 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E6E78 | 4D 82 00 20 */	beqlr
/* 814E6E7C | 38 E0 00 00 */	li r7, 0x0
/* 814E6E80 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 814E6E84 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814E6E88 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814E6E8C | B0 C3 00 0C */	sth r6, 0xc(r3)
/* 814E6E90 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814E6E94 | B0 E3 00 0E */	sth r7, 0xe(r3)
/* 814E6E98 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 814E6E9C | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 814E6EA0 | 41 82 00 18 */	beq .L_814E6EB8
/* 814E6EA4 | 40 80 00 5C */	bge .L_814E6F00
/* 814E6EA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E6EAC | 41 82 00 48 */	beq .L_814E6EF4
/* 814E6EB0 | 40 80 00 28 */	bge .L_814E6ED8
/* 814E6EB4 | 48 00 00 4C */	b .L_814E6F00
.L_814E6EB8:
/* 814E6EB8 | 28 06 00 64 */	cmplwi r6, 0x64
/* 814E6EBC | 4D 81 00 20 */	bgtlr
/* 814E6EC0 | 38 00 00 03 */	li r0, 0x3
/* 814E6EC4 | 38 80 00 02 */	li r4, 0x2
/* 814E6EC8 | 98 83 00 10 */	stb r4, 0x10(r3)
/* 814E6ECC | 98 03 00 11 */	stb r0, 0x11(r3)
/* 814E6ED0 | 98 03 00 12 */	stb r0, 0x12(r3)
/* 814E6ED4 | 48 00 00 2C */	b .L_814E6F00
.L_814E6ED8:
/* 814E6ED8 | 28 06 27 10 */	cmplwi r6, 0x2710
/* 814E6EDC | 4D 81 00 20 */	bgtlr
/* 814E6EE0 | 38 80 FF FF */	li r4, -0x1
/* 814E6EE4 | 38 00 00 00 */	li r0, 0x0
/* 814E6EE8 | 50 80 78 A0 */	rlwimi r0, r4, 15, 2, 16
/* 814E6EEC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814E6EF0 | 48 00 00 10 */	b .L_814E6F00
.L_814E6EF4:
/* 814E6EF4 | 38 00 00 02 */	li r0, 0x2
/* 814E6EF8 | B0 E3 00 10 */	sth r7, 0x10(r3)
/* 814E6EFC | 98 03 00 12 */	stb r0, 0x12(r3)
.L_814E6F00:
/* 814E6F00 | A0 03 00 0C */	lhz r0, 0xc(r3)
/* 814E6F04 | 38 80 00 00 */	li r4, 0x0
/* 814E6F08 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814E6F0C | 54 05 30 32 */	slwi r5, r0, 6
/* 814E6F10 | 4B E4 94 24 */	b memset
/* 814E6F14 | 4E 80 00 20 */	blr
.endfn RFLInitMiddleDB

# .text:0xB4 | 0x814E6F18 | size: 0x1E8
.fn updateHDBcallback_, local
/* 814E6F18 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E6F1C | 7C 08 02 A6 */	mflr r0
/* 814E6F20 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E6F24 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E6F28 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E6F2C | 7C 7E 1B 78 */	mr r30, r3
/* 814E6F30 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E6F34 | 4B FF 3D D1 */	bl RFLGetAsyncStatus
/* 814E6F38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E6F3C | 41 82 00 10 */	beq .L_814E6F4C
/* 814E6F40 | 4B FF 3D C5 */	bl RFLGetAsyncStatus
/* 814E6F44 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814E6F48 | 40 82 01 48 */	bne .L_814E7090
.L_814E6F4C:
/* 814E6F4C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814E6F50 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814E6F54 | 40 82 00 20 */	bne .L_814E6F74
/* 814E6F58 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 814E6F5C | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E6F60 | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E6F64 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814E6F68 | 4B FF DC D5 */	bl RFLiGetHiddenNext
/* 814E6F6C | 7C 7F 1B 78 */	mr r31, r3
/* 814E6F70 | 48 00 00 1C */	b .L_814E6F8C
.L_814E6F74:
/* 814E6F74 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 814E6F78 | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E6F7C | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E6F80 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814E6F84 | 4B FF DD 39 */	bl RFLiGetHiddenPrev
/* 814E6F88 | 7C 7F 1B 78 */	mr r31, r3
.L_814E6F8C:
/* 814E6F8C | 4B FF 3D 79 */	bl RFLGetAsyncStatus
/* 814E6F90 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814E6F94 | 41 82 00 60 */	beq .L_814E6FF4
/* 814E6F98 | A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 814E6F9C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814E6FA0 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E6FA4 | 7F A3 02 14 */	add r29, r3, r0
/* 814E6FA8 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 814E6FAC | 4B FF F3 D5 */	bl RFLiIsValidID
/* 814E6FB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E6FB4 | 40 82 00 0C */	bne .L_814E6FC0
/* 814E6FB8 | 38 00 00 00 */	li r0, 0x0
/* 814E6FBC | 48 00 00 24 */	b .L_814E6FE0
.L_814E6FC0:
/* 814E6FC0 | 7F A3 EB 78 */	mr r3, r29
/* 814E6FC4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E6FC8 | 4B FF EA E1 */	bl RFLiConvertHRaw2Info
/* 814E6FCC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E6FD0 | 48 00 1A C5 */	bl RFLiCheckValidInfo
/* 814E6FD4 | 7C 03 00 D0 */	neg r0, r3
/* 814E6FD8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814E6FDC | 54 00 0F FE */	srwi r0, r0, 31
.L_814E6FE0:
/* 814E6FE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E6FE4 | 41 82 00 10 */	beq .L_814E6FF4
/* 814E6FE8 | A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 814E6FEC | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E6FF0 | B0 1E 00 0E */	sth r0, 0xe(r30)
.L_814E6FF4:
/* 814E6FF4 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 814E6FF8 | 7F E0 07 35 */	extsh. r0, r31
/* 814E6FFC | 54 80 88 1E */	extlwi r0, r4, 16, 17
/* 814E7000 | 7C 03 8E 70 */	srawi r3, r0, 17
/* 814E7004 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E7008 | 50 04 04 7E */	rlwimi r4, r0, 0, 17, 31
/* 814E700C | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 814E7010 | 41 80 00 60 */	blt .L_814E7070
/* 814E7014 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 814E7018 | A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 814E701C | 54 83 88 1E */	extlwi r3, r4, 16, 17
/* 814E7020 | 7C 63 8E 70 */	srawi r3, r3, 17
/* 814E7024 | 7C 03 00 00 */	cmpw r3, r0
/* 814E7028 | 40 80 00 48 */	bge .L_814E7070
/* 814E702C | 53 E4 78 A0 */	rlwimi r4, r31, 15, 2, 16
/* 814E7030 | 3C A0 81 4E */	lis r5, updateHDBcallback_@ha
/* 814E7034 | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 814E7038 | 54 80 10 1E */	extlwi r0, r4, 16, 2
/* 814E703C | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7040 | 7F C6 F3 78 */	mr r6, r30
/* 814E7044 | A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 814E7048 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814E704C | 80 FE 00 08 */	lwz r7, 0x8(r30)
/* 814E7050 | 38 A5 6F 18 */	addi r5, r5, updateHDBcallback_@l
/* 814E7054 | 54 60 30 32 */	slwi r0, r3, 6
/* 814E7058 | 7C 67 02 14 */	add r3, r7, r0
/* 814E705C | 4B FF D2 F9 */	bl RFLiLoadHiddenDataAsync
/* 814E7060 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814E7064 | 41 82 00 2C */	beq .L_814E7090
/* 814E7068 | 4B FF 50 F9 */	bl RFLiEndWorking
/* 814E706C | 48 00 00 24 */	b .L_814E7090
.L_814E7070:
/* 814E7070 | A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 814E7074 | 3B E0 00 00 */	li r31, 0x0
/* 814E7078 | A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 814E707C | 7C 03 00 40 */	cmplw r3, r0
/* 814E7080 | 40 80 00 08 */	bge .L_814E7088
/* 814E7084 | 3B E0 00 0A */	li r31, 0xa
.L_814E7088:
/* 814E7088 | 4B FF 3C 75 */	bl RFLiGetManager
/* 814E708C | 93 E3 1B 40 */	stw r31, 0x1b40(r3)
.L_814E7090:
/* 814E7090 | 4B FF 4F F9 */	bl RFLiIsWorking
/* 814E7094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7098 | 40 82 00 4C */	bne .L_814E70E4
/* 814E709C | 4B FF 3C 69 */	bl RFLGetAsyncStatus
/* 814E70A0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814E70A4 | 40 82 00 2C */	bne .L_814E70D0
/* 814E70A8 | 4B FF 3C E5 */	bl RFLGetLastReason
/* 814E70AC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814E70B0 | 40 82 00 20 */	bne .L_814E70D0
/* 814E70B4 | A8 9E 00 14 */	lha r4, 0x14(r30)
/* 814E70B8 | 38 00 00 00 */	li r0, 0x0
/* 814E70BC | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 814E70C0 | 50 83 78 A0 */	rlwimi r3, r4, 15, 2, 16
/* 814E70C4 | B0 1E 00 0E */	sth r0, 0xe(r30)
/* 814E70C8 | 54 60 00 20 */	clrrwi r0, r3, 15
/* 814E70CC | 90 1E 00 10 */	stw r0, 0x10(r30)
.L_814E70D0:
/* 814E70D0 | 81 9E 00 04 */	lwz r12, 0x4(r30)
/* 814E70D4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814E70D8 | 41 82 00 0C */	beq .L_814E70E4
/* 814E70DC | 7D 89 03 A6 */	mtctr r12
/* 814E70E0 | 4E 80 04 21 */	bctrl
.L_814E70E4:
/* 814E70E4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E70E8 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E70EC | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E70F0 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E70F4 | 7C 08 03 A6 */	mtlr r0
/* 814E70F8 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E70FC | 4E 80 00 20 */	blr
.endfn updateHDBcallback_

# .text:0x29C | 0x814E7100 | size: 0x174
.fn loadHiddenDataSync_, local
/* 814E7100 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E7104 | 7C 08 02 A6 */	mflr r0
/* 814E7108 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E710C | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E7110 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E7114 | 3B C0 00 01 */	li r30, 0x1
/* 814E7118 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E711C | 7C 7D 1B 78 */	mr r29, r3
/* 814E7120 | 93 81 00 60 */	stw r28, 0x60(r1)
/* 814E7124 | 48 00 01 08 */	b .L_814E722C
.L_814E7128:
/* 814E7128 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814E712C | A0 7D 00 0E */	lhz r3, 0xe(r29)
/* 814E7130 | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E7134 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814E7138 | 54 63 30 32 */	slwi r3, r3, 6
/* 814E713C | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7140 | 7C 64 1A 14 */	add r3, r4, r3
/* 814E7144 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814E7148 | 4B FF D2 C5 */	bl RFLiLoadCachedHiddenData
/* 814E714C | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814E7150 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814E7154 | 40 82 00 20 */	bne .L_814E7174
/* 814E7158 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814E715C | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E7160 | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7164 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814E7168 | 4B FF DA D5 */	bl RFLiGetHiddenNext
/* 814E716C | 7C 7F 1B 78 */	mr r31, r3
/* 814E7170 | 48 00 00 1C */	b .L_814E718C
.L_814E7174:
/* 814E7174 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814E7178 | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E717C | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7180 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814E7184 | 4B FF DB 39 */	bl RFLiGetHiddenPrev
/* 814E7188 | 7C 7F 1B 78 */	mr r31, r3
.L_814E718C:
/* 814E718C | A0 1D 00 0E */	lhz r0, 0xe(r29)
/* 814E7190 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814E7194 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E7198 | 7F 83 02 14 */	add r28, r3, r0
/* 814E719C | 38 7C 00 18 */	addi r3, r28, 0x18
/* 814E71A0 | 4B FF F1 E1 */	bl RFLiIsValidID
/* 814E71A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E71A8 | 40 82 00 0C */	bne .L_814E71B4
/* 814E71AC | 38 00 00 00 */	li r0, 0x0
/* 814E71B0 | 48 00 00 24 */	b .L_814E71D4
.L_814E71B4:
/* 814E71B4 | 7F 83 E3 78 */	mr r3, r28
/* 814E71B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E71BC | 4B FF E8 ED */	bl RFLiConvertHRaw2Info
/* 814E71C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E71C4 | 48 00 18 D1 */	bl RFLiCheckValidInfo
/* 814E71C8 | 7C 03 00 D0 */	neg r0, r3
/* 814E71CC | 7C 00 1B 78 */	or r0, r0, r3
/* 814E71D0 | 54 00 0F FE */	srwi r0, r0, 31
.L_814E71D4:
/* 814E71D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E71D8 | 41 82 00 10 */	beq .L_814E71E8
/* 814E71DC | A0 7D 00 0E */	lhz r3, 0xe(r29)
/* 814E71E0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E71E4 | B0 1D 00 0E */	sth r0, 0xe(r29)
.L_814E71E8:
/* 814E71E8 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 814E71EC | 7F E0 07 35 */	extsh. r0, r31
/* 814E71F0 | 54 80 88 1E */	extlwi r0, r4, 16, 17
/* 814E71F4 | 7C 03 8E 70 */	srawi r3, r0, 17
/* 814E71F8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E71FC | 50 04 04 7E */	rlwimi r4, r0, 0, 17, 31
/* 814E7200 | 90 9D 00 10 */	stw r4, 0x10(r29)
/* 814E7204 | 41 80 00 24 */	blt .L_814E7228
/* 814E7208 | 54 83 88 1E */	extlwi r3, r4, 16, 17
/* 814E720C | A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 814E7210 | 7C 63 8E 70 */	srawi r3, r3, 17
/* 814E7214 | 7C 03 00 00 */	cmpw r3, r0
/* 814E7218 | 40 80 00 10 */	bge .L_814E7228
/* 814E721C | 53 E4 78 A0 */	rlwimi r4, r31, 15, 2, 16
/* 814E7220 | 90 9D 00 10 */	stw r4, 0x10(r29)
/* 814E7224 | 48 00 00 08 */	b .L_814E722C
.L_814E7228:
/* 814E7228 | 3B C0 00 00 */	li r30, 0x0
.L_814E722C:
/* 814E722C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814E7230 | 40 82 FE F8 */	bne .L_814E7128
/* 814E7234 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814E7238 | 38 60 00 00 */	li r3, 0x0
/* 814E723C | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E7240 | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7244 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814E7248 | 40 82 00 08 */	bne .L_814E7250
/* 814E724C | 38 60 00 0A */	li r3, 0xa
.L_814E7250:
/* 814E7250 | 4B FF 4F 11 */	bl RFLiEndWorking
/* 814E7254 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E7258 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E725C | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E7260 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E7264 | 83 81 00 60 */	lwz r28, 0x60(r1)
/* 814E7268 | 7C 08 03 A6 */	mtlr r0
/* 814E726C | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E7270 | 4E 80 00 20 */	blr
.endfn loadHiddenDataSync_

# .text:0x410 | 0x814E7274 | size: 0x154
.fn updateHiddenOld_, local
/* 814E7274 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E7278 | 7C 08 02 A6 */	mflr r0
/* 814E727C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E7280 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E7284 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E7288 | 7C BE 2B 78 */	mr r30, r5
/* 814E728C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E7290 | 7C 9D 23 78 */	mr r29, r4
/* 814E7294 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814E7298 | 7C 7C 1B 78 */	mr r28, r3
/* 814E729C | 4B FF F4 AD */	bl RFLiDBIsLoaded
/* 814E72A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E72A4 | 40 82 00 10 */	bne .L_814E72B4
/* 814E72A8 | 38 60 00 0A */	li r3, 0xa
/* 814E72AC | 4B FF 4E B5 */	bl RFLiEndWorking
/* 814E72B0 | 48 00 00 F8 */	b .L_814E73A8
.L_814E72B4:
/* 814E72B4 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814E72B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E72BC | 41 82 00 1C */	beq .L_814E72D8
/* 814E72C0 | A0 1C 00 0C */	lhz r0, 0xc(r28)
/* 814E72C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E72C8 | 41 82 00 10 */	beq .L_814E72D8
/* 814E72CC | 4B FF F4 7D */	bl RFLiDBIsLoaded
/* 814E72D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E72D4 | 40 82 00 10 */	bne .L_814E72E4
.L_814E72D8:
/* 814E72D8 | 38 60 00 01 */	li r3, 0x1
/* 814E72DC | 4B FF 4E 85 */	bl RFLiEndWorking
/* 814E72E0 | 48 00 00 C8 */	b .L_814E73A8
.L_814E72E4:
/* 814E72E4 | 80 1C 00 10 */	lwz r0, 0x10(r28)
/* 814E72E8 | 54 00 10 1E */	extlwi r0, r0, 16, 2
/* 814E72EC | 7C 1F 8E 70 */	srawi r31, r0, 17
/* 814E72F0 | 4B FF 39 AD */	bl RFLiGetHDBManager
/* 814E72F4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814E72F8 | 41 82 00 24 */	beq .L_814E731C
/* 814E72FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E7300 | 40 80 00 10 */	bge .L_814E7310
/* 814E7304 | 4B FF F3 BD */	bl RFLiGetHiddenHeader
/* 814E7308 | A8 63 00 04 */	lha r3, 0x4(r3)
/* 814E730C | 48 00 00 2C */	b .L_814E7338
.L_814E7310:
/* 814E7310 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 814E7314 | 4B FF D9 29 */	bl RFLiGetHiddenNext
/* 814E7318 | 48 00 00 20 */	b .L_814E7338
.L_814E731C:
/* 814E731C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E7320 | 40 80 00 10 */	bge .L_814E7330
/* 814E7324 | 4B FF F3 9D */	bl RFLiGetHiddenHeader
/* 814E7328 | A8 63 00 06 */	lha r3, 0x6(r3)
/* 814E732C | 48 00 00 0C */	b .L_814E7338
.L_814E7330:
/* 814E7330 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 814E7334 | 4B FF D9 89 */	bl RFLiGetHiddenPrev
.L_814E7338:
/* 814E7338 | 7C 60 07 35 */	extsh. r0, r3
/* 814E733C | 41 80 00 64 */	blt .L_814E73A0
/* 814E7340 | 80 9C 00 10 */	lwz r4, 0x10(r28)
/* 814E7344 | 50 64 78 A0 */	rlwimi r4, r3, 15, 2, 16
/* 814E7348 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814E734C | 90 9C 00 10 */	stw r4, 0x10(r28)
/* 814E7350 | 41 82 00 10 */	beq .L_814E7360
/* 814E7354 | 7F 83 E3 78 */	mr r3, r28
/* 814E7358 | 4B FF FD A9 */	bl loadHiddenDataSync_
/* 814E735C | 48 00 00 4C */	b .L_814E73A8
.L_814E7360:
/* 814E7360 | 54 80 88 1E */	extlwi r0, r4, 16, 17
/* 814E7364 | 3C A0 81 4E */	lis r5, updateHDBcallback_@ha
/* 814E7368 | 7C 03 8E 70 */	srawi r3, r0, 17
/* 814E736C | 7F 86 E3 78 */	mr r6, r28
/* 814E7370 | 54 80 10 1E */	extlwi r0, r4, 16, 2
/* 814E7374 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814E7378 | 54 63 30 32 */	slwi r3, r3, 6
/* 814E737C | 38 A5 6F 18 */	addi r5, r5, updateHDBcallback_@l
/* 814E7380 | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7384 | 7C 64 1A 14 */	add r3, r4, r3
/* 814E7388 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814E738C | 4B FF CF C9 */	bl RFLiLoadHiddenDataAsync
/* 814E7390 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814E7394 | 41 82 00 14 */	beq .L_814E73A8
/* 814E7398 | 4B FF 4D C9 */	bl RFLiEndWorking
/* 814E739C | 48 00 00 0C */	b .L_814E73A8
.L_814E73A0:
/* 814E73A0 | 38 60 00 0A */	li r3, 0xa
/* 814E73A4 | 4B FF 4D BD */	bl RFLiEndWorking
.L_814E73A8:
/* 814E73A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E73AC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E73B0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E73B4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E73B8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814E73BC | 7C 08 03 A6 */	mtlr r0
/* 814E73C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E73C4 | 4E 80 00 20 */	blr
.endfn updateHiddenOld_

# .text:0x564 | 0x814E73C8 | size: 0x13C
.fn loadHiddenRandomSync_, local
/* 814E73C8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E73CC | 7C 08 02 A6 */	mflr r0
/* 814E73D0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E73D4 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E73D8 | 3B E0 00 01 */	li r31, 0x1
/* 814E73DC | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E73E0 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E73E4 | 7C 7D 1B 78 */	mr r29, r3
/* 814E73E8 | 93 81 00 60 */	stw r28, 0x60(r1)
/* 814E73EC | 48 00 00 D0 */	b .L_814E74BC
.L_814E73F0:
/* 814E73F0 | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 814E73F4 | 80 BD 00 08 */	lwz r5, 0x8(r29)
/* 814E73F8 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E73FC | 7F C5 00 2E */	lwzx r30, r5, r0
/* 814E7400 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814E7404 | 41 82 00 B4 */	beq .L_814E74B8
/* 814E7408 | A0 7D 00 0E */	lhz r3, 0xe(r29)
/* 814E740C | 38 1E FF FF */	subi r0, r30, 0x1
/* 814E7410 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814E7414 | 54 60 30 32 */	slwi r0, r3, 6
/* 814E7418 | 7C 65 02 14 */	add r3, r5, r0
/* 814E741C | 4B FF CF F1 */	bl RFLiLoadCachedHiddenData
/* 814E7420 | A0 1D 00 0E */	lhz r0, 0xe(r29)
/* 814E7424 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814E7428 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E742C | 7F 83 02 14 */	add r28, r3, r0
/* 814E7430 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 814E7434 | 4B FF EF 4D */	bl RFLiIsValidID
/* 814E7438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E743C | 40 82 00 0C */	bne .L_814E7448
/* 814E7440 | 38 00 00 00 */	li r0, 0x0
/* 814E7444 | 48 00 00 24 */	b .L_814E7468
.L_814E7448:
/* 814E7448 | 7F 83 E3 78 */	mr r3, r28
/* 814E744C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E7450 | 4B FF E6 59 */	bl RFLiConvertHRaw2Info
/* 814E7454 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E7458 | 48 00 16 3D */	bl RFLiCheckValidInfo
/* 814E745C | 7C 03 00 D0 */	neg r0, r3
/* 814E7460 | 7C 00 1B 78 */	or r0, r0, r3
/* 814E7464 | 54 00 0F FE */	srwi r0, r0, 31
.L_814E7468:
/* 814E7468 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E746C | 41 82 00 10 */	beq .L_814E747C
/* 814E7470 | A0 7D 00 0E */	lhz r3, 0xe(r29)
/* 814E7474 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E7478 | B0 1D 00 0E */	sth r0, 0xe(r29)
.L_814E747C:
/* 814E747C | A0 7D 00 10 */	lhz r3, 0x10(r29)
/* 814E7480 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814E7484 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814E7488 | B0 7D 00 10 */	sth r3, 0x10(r29)
/* 814E748C | 41 82 00 24 */	beq .L_814E74B0
/* 814E7490 | A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 814E7494 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814E7498 | 7C 03 00 40 */	cmplw r3, r0
/* 814E749C | 40 80 00 14 */	bge .L_814E74B0
/* 814E74A0 | 28 1E 27 10 */	cmplwi r30, 0x2710
/* 814E74A4 | 41 80 00 18 */	blt .L_814E74BC
/* 814E74A8 | 3B E0 00 00 */	li r31, 0x0
/* 814E74AC | 48 00 00 10 */	b .L_814E74BC
.L_814E74B0:
/* 814E74B0 | 3B E0 00 00 */	li r31, 0x0
/* 814E74B4 | 48 00 00 08 */	b .L_814E74BC
.L_814E74B8:
/* 814E74B8 | 3B E0 00 00 */	li r31, 0x0
.L_814E74BC:
/* 814E74BC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E74C0 | 40 82 FF 30 */	bne .L_814E73F0
/* 814E74C4 | A0 7D 00 0E */	lhz r3, 0xe(r29)
/* 814E74C8 | 3B C0 00 00 */	li r30, 0x0
/* 814E74CC | A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 814E74D0 | 7C 03 00 40 */	cmplw r3, r0
/* 814E74D4 | 40 80 00 08 */	bge .L_814E74DC
/* 814E74D8 | 3B C0 00 0A */	li r30, 0xa
.L_814E74DC:
/* 814E74DC | 4B FF 38 21 */	bl RFLiGetManager
/* 814E74E0 | 93 C3 1B 40 */	stw r30, 0x1b40(r3)
/* 814E74E4 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E74E8 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E74EC | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E74F0 | 83 81 00 60 */	lwz r28, 0x60(r1)
/* 814E74F4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E74F8 | 7C 08 03 A6 */	mtlr r0
/* 814E74FC | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E7500 | 4E 80 00 20 */	blr
.endfn loadHiddenRandomSync_

# .text:0x6A0 | 0x814E7504 | size: 0x194
.fn updateHDBRandcallback_, local
/* 814E7504 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814E7508 | 7C 08 02 A6 */	mflr r0
/* 814E750C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814E7510 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 814E7514 | 7C 7F 1B 78 */	mr r31, r3
/* 814E7518 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814E751C | 4B FF 37 E9 */	bl RFLGetAsyncStatus
/* 814E7520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7524 | 41 82 00 10 */	beq .L_814E7534
/* 814E7528 | 4B FF 37 DD */	bl RFLGetAsyncStatus
/* 814E752C | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814E7530 | 40 82 01 08 */	bne .L_814E7638
.L_814E7534:
/* 814E7534 | 4B FF 37 D1 */	bl RFLGetAsyncStatus
/* 814E7538 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814E753C | 41 82 00 60 */	beq .L_814E759C
/* 814E7540 | A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 814E7544 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814E7548 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E754C | 7F C3 02 14 */	add r30, r3, r0
/* 814E7550 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 814E7554 | 4B FF EE 2D */	bl RFLiIsValidID
/* 814E7558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E755C | 40 82 00 0C */	bne .L_814E7568
/* 814E7560 | 38 00 00 00 */	li r0, 0x0
/* 814E7564 | 48 00 00 24 */	b .L_814E7588
.L_814E7568:
/* 814E7568 | 7F C3 F3 78 */	mr r3, r30
/* 814E756C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E7570 | 4B FF E5 39 */	bl RFLiConvertHRaw2Info
/* 814E7574 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E7578 | 48 00 15 1D */	bl RFLiCheckValidInfo
/* 814E757C | 7C 03 00 D0 */	neg r0, r3
/* 814E7580 | 7C 00 1B 78 */	or r0, r0, r3
/* 814E7584 | 54 00 0F FE */	srwi r0, r0, 31
.L_814E7588:
/* 814E7588 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E758C | 41 82 00 10 */	beq .L_814E759C
/* 814E7590 | A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 814E7594 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E7598 | B0 1F 00 0E */	sth r0, 0xe(r31)
.L_814E759C:
/* 814E759C | A0 7F 00 10 */	lhz r3, 0x10(r31)
/* 814E75A0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814E75A4 | B0 7F 00 10 */	sth r3, 0x10(r31)
/* 814E75A8 | 54 60 32 B2 */	clrlslwi r0, r3, 16, 6
/* 814E75AC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814E75B0 | 80 FF 00 08 */	lwz r7, 0x8(r31)
/* 814E75B4 | 7C 87 00 2E */	lwzx r4, r7, r0
/* 814E75B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E75BC | 41 82 00 5C */	beq .L_814E7618
/* 814E75C0 | A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 814E75C4 | 7C 03 00 40 */	cmplw r3, r0
/* 814E75C8 | 40 80 00 50 */	bge .L_814E7618
/* 814E75CC | 28 04 27 10 */	cmplwi r4, 0x2710
/* 814E75D0 | 40 80 00 38 */	bge .L_814E7608
/* 814E75D4 | A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 814E75D8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814E75DC | 3C A0 81 4E */	lis r5, updateHDBRandcallback_@ha
/* 814E75E0 | 7F E6 FB 78 */	mr r6, r31
/* 814E75E4 | 54 63 30 32 */	slwi r3, r3, 6
/* 814E75E8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814E75EC | 7C 67 1A 14 */	add r3, r7, r3
/* 814E75F0 | 38 A5 75 04 */	addi r5, r5, updateHDBRandcallback_@l
/* 814E75F4 | 4B FF CD 61 */	bl RFLiLoadHiddenDataAsync
/* 814E75F8 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814E75FC | 41 82 00 3C */	beq .L_814E7638
/* 814E7600 | 4B FF 4B 61 */	bl RFLiEndWorking
/* 814E7604 | 48 00 00 34 */	b .L_814E7638
.L_814E7608:
/* 814E7608 | 3B C0 00 07 */	li r30, 0x7
/* 814E760C | 4B FF 36 F1 */	bl RFLiGetManager
/* 814E7610 | 93 C3 1B 40 */	stw r30, 0x1b40(r3)
/* 814E7614 | 48 00 00 24 */	b .L_814E7638
.L_814E7618:
/* 814E7618 | A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 814E761C | 3B C0 00 00 */	li r30, 0x0
/* 814E7620 | A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 814E7624 | 7C 03 00 40 */	cmplw r3, r0
/* 814E7628 | 40 80 00 08 */	bge .L_814E7630
/* 814E762C | 3B C0 00 0A */	li r30, 0xa
.L_814E7630:
/* 814E7630 | 4B FF 36 CD */	bl RFLiGetManager
/* 814E7634 | 93 C3 1B 40 */	stw r30, 0x1b40(r3)
.L_814E7638:
/* 814E7638 | 4B FF 4A 51 */	bl RFLiIsWorking
/* 814E763C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7640 | 40 82 00 40 */	bne .L_814E7680
/* 814E7644 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814E7648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E764C | 41 82 00 34 */	beq .L_814E7680
/* 814E7650 | 4B FF 36 B5 */	bl RFLGetAsyncStatus
/* 814E7654 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814E7658 | 40 82 00 1C */	bne .L_814E7674
/* 814E765C | 4B FF 37 31 */	bl RFLGetLastReason
/* 814E7660 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814E7664 | 40 82 00 10 */	bne .L_814E7674
/* 814E7668 | 38 00 00 00 */	li r0, 0x0
/* 814E766C | B0 1F 00 0E */	sth r0, 0xe(r31)
/* 814E7670 | B0 1F 00 10 */	sth r0, 0x10(r31)
.L_814E7674:
/* 814E7674 | 81 9F 00 04 */	lwz r12, 0x4(r31)
/* 814E7678 | 7D 89 03 A6 */	mtctr r12
/* 814E767C | 4E 80 04 21 */	bctrl
.L_814E7680:
/* 814E7680 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814E7684 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814E7688 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814E768C | 7C 08 03 A6 */	mtlr r0
/* 814E7690 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814E7694 | 4E 80 00 20 */	blr
.endfn updateHDBRandcallback_

# .text:0x834 | 0x814E7698 | size: 0x2DC
.fn updateHiddenRandom_, local
/* 814E7698 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814E769C | 7C 08 02 A6 */	mflr r0
/* 814E76A0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814E76A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E76A8 | 48 11 1E 09 */	bl _savegpr_23
/* 814E76AC | 8B 43 00 12 */	lbz r26, 0x12(r3)
/* 814E76B0 | 7C 7B 1B 78 */	mr r27, r3
/* 814E76B4 | A3 E3 00 0C */	lhz r31, 0xc(r3)
/* 814E76B8 | 7C 9C 23 78 */	mr r28, r4
/* 814E76BC | 48 04 E5 DD */	bl OSGetTick
/* 814E76C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814E76C4 | 4B FF 49 C9 */	bl RFLiStartWorking
/* 814E76C8 | 4B FF F0 81 */	bl RFLiDBIsLoaded
/* 814E76CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E76D0 | 40 82 00 10 */	bne .L_814E76E0
/* 814E76D4 | 38 60 00 0A */	li r3, 0xa
/* 814E76D8 | 4B FF 4A 89 */	bl RFLiEndWorking
/* 814E76DC | 48 00 02 80 */	b .L_814E795C
.L_814E76E0:
/* 814E76E0 | 7F 43 D3 78 */	mr r3, r26
/* 814E76E4 | 4B FF D4 AD */	bl RFLiCountupHiddenDataNum
/* 814E76E8 | 54 64 04 3F */	clrlwi. r4, r3, 16
/* 814E76EC | 7C 79 1B 78 */	mr r25, r3
/* 814E76F0 | 40 82 00 10 */	bne .L_814E7700
/* 814E76F4 | 38 60 00 0A */	li r3, 0xa
/* 814E76F8 | 4B FF 4A 69 */	bl RFLiEndWorking
/* 814E76FC | 48 00 02 60 */	b .L_814E795C
.L_814E7700:
/* 814E7700 | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 814E7704 | 7C 04 00 40 */	cmplw r4, r0
/* 814E7708 | 40 80 00 08 */	bge .L_814E7710
/* 814E770C | 7F 3F CB 78 */	mr r31, r25
.L_814E7710:
/* 814E7710 | 54 63 0B FC */	clrlslwi r3, r3, 16, 1
/* 814E7714 | 4B FF 35 35 */	bl RFLiAlloc
/* 814E7718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E771C | 7C 7E 1B 78 */	mr r30, r3
/* 814E7720 | 40 82 00 10 */	bne .L_814E7730
/* 814E7724 | 38 60 00 05 */	li r3, 0x5
/* 814E7728 | 4B FF 4A 39 */	bl RFLiEndWorking
/* 814E772C | 48 00 02 30 */	b .L_814E795C
.L_814E7730:
/* 814E7730 | 3B 00 00 00 */	li r24, 0x0
/* 814E7734 | 3A E0 00 00 */	li r23, 0x0
.L_814E7738:
/* 814E7738 | 7F 44 D3 78 */	mr r4, r26
/* 814E773C | 56 E3 04 3E */	clrlwi r3, r23, 16
/* 814E7740 | 4B FF D5 FD */	bl RFLiIsValidHiddenData
/* 814E7744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7748 | 41 82 00 10 */	beq .L_814E7758
/* 814E774C | 57 00 0B FC */	clrlslwi r0, r24, 16, 1
/* 814E7750 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814E7754 | 7E FE 03 2E */	sthx r23, r30, r0
.L_814E7758:
/* 814E7758 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 814E775C | 28 17 27 10 */	cmplwi r23, 0x2710
/* 814E7760 | 41 80 FF D8 */	blt .L_814E7738
/* 814E7764 | 57 24 04 3E */	clrlwi r4, r25, 16
/* 814E7768 | 3C 60 04 F9 */	lis r3, 0x4f9
/* 814E776C | 38 E4 FF FF */	subi r7, r4, 0x1
/* 814E7770 | 39 00 00 00 */	li r8, 0x0
/* 814E7774 | 38 63 BB 63 */	subi r3, r3, 0x449d
/* 814E7778 | 48 00 00 5C */	b .L_814E77D4
.L_814E777C:
/* 814E777C | 57 A4 84 3E */	srwi r4, r29, 16
/* 814E7780 | 55 00 04 3E */	clrlwi r0, r8, 16
/* 814E7784 | 7C 9D 22 14 */	add r4, r29, r4
/* 814E7788 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814E778C | 7C 85 3B 96 */	divwu r4, r5, r7
/* 814E7790 | 7C 84 39 D6 */	mullw r4, r4, r7
/* 814E7794 | 7C 84 28 50 */	subf r4, r4, r5
/* 814E7798 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814E779C | 7C 04 00 40 */	cmplw r4, r0
/* 814E77A0 | 41 80 00 0C */	blt .L_814E77AC
/* 814E77A4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814E77A8 | 54 04 04 3E */	clrlwi r4, r0, 16
.L_814E77AC:
/* 814E77AC | 54 86 0B FC */	clrlslwi r6, r4, 16, 1
/* 814E77B0 | 55 05 0B FC */	clrlslwi r5, r8, 16, 1
/* 814E77B4 | 3C 9D 04 6B */	addis r4, r29, 0x46b
/* 814E77B8 | 7D 3E 32 2E */	lhzx r9, r30, r6
/* 814E77BC | 38 04 C0 55 */	subi r0, r4, 0x3fab
/* 814E77C0 | 7C 9E 2A 2E */	lhzx r4, r30, r5
/* 814E77C4 | 7F A0 19 D6 */	mullw r29, r0, r3
/* 814E77C8 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814E77CC | 7C 9E 33 2E */	sthx r4, r30, r6
/* 814E77D0 | 7D 3E 2B 2E */	sthx r9, r30, r5
.L_814E77D4:
/* 814E77D4 | 55 00 04 3E */	clrlwi r0, r8, 16
/* 814E77D8 | 7C 00 38 00 */	cmpw r0, r7
/* 814E77DC | 41 80 FF A0 */	blt .L_814E777C
/* 814E77E0 | 57 E0 04 3F */	clrlwi. r0, r31, 16
/* 814E77E4 | 38 80 00 00 */	li r4, 0x0
/* 814E77E8 | 41 82 01 10 */	beq .L_814E78F8
/* 814E77EC | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E77F0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814E77F4 | 38 63 FF F8 */	subi r3, r3, 0x8
/* 814E77F8 | 40 81 00 C8 */	ble .L_814E78C0
/* 814E77FC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814E7800 | 38 03 00 07 */	addi r0, r3, 0x7
/* 814E7804 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814E7808 | 7C 09 03 A6 */	mtctr r0
/* 814E780C | 28 03 00 00 */	cmplwi r3, 0x0
/* 814E7810 | 40 81 00 B0 */	ble .L_814E78C0
.L_814E7814:
/* 814E7814 | 54 83 0B FC */	clrlslwi r3, r4, 16, 1
/* 814E7818 | 7C C3 F2 6E */	lhzux r6, r3, r30
/* 814E781C | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E7820 | 54 80 32 B2 */	clrlslwi r0, r4, 16, 6
/* 814E7824 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E7828 | 38 84 00 08 */	addi r4, r4, 0x8
/* 814E782C | 7C C5 01 2E */	stwx r6, r5, r0
/* 814E7830 | A0 C3 00 02 */	lhz r6, 0x2(r3)
/* 814E7834 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E7838 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E783C | 7C A5 02 14 */	add r5, r5, r0
/* 814E7840 | 90 C5 00 40 */	stw r6, 0x40(r5)
/* 814E7844 | A0 C3 00 04 */	lhz r6, 0x4(r3)
/* 814E7848 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E784C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E7850 | 7C A5 02 14 */	add r5, r5, r0
/* 814E7854 | 90 C5 00 80 */	stw r6, 0x80(r5)
/* 814E7858 | A0 C3 00 06 */	lhz r6, 0x6(r3)
/* 814E785C | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E7860 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E7864 | 7C A5 02 14 */	add r5, r5, r0
/* 814E7868 | 90 C5 00 C0 */	stw r6, 0xc0(r5)
/* 814E786C | A0 C3 00 08 */	lhz r6, 0x8(r3)
/* 814E7870 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E7874 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E7878 | 7C A5 02 14 */	add r5, r5, r0
/* 814E787C | 90 C5 01 00 */	stw r6, 0x100(r5)
/* 814E7880 | A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 814E7884 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E7888 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E788C | 7C A5 02 14 */	add r5, r5, r0
/* 814E7890 | 90 C5 01 40 */	stw r6, 0x140(r5)
/* 814E7894 | A0 C3 00 0C */	lhz r6, 0xc(r3)
/* 814E7898 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814E789C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814E78A0 | 7C A5 02 14 */	add r5, r5, r0
/* 814E78A4 | 90 C5 01 80 */	stw r6, 0x180(r5)
/* 814E78A8 | A0 A3 00 0E */	lhz r5, 0xe(r3)
/* 814E78AC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 814E78B0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814E78B4 | 7C 63 02 14 */	add r3, r3, r0
/* 814E78B8 | 90 A3 01 C0 */	stw r5, 0x1c0(r3)
/* 814E78BC | 42 00 FF 58 */	bdnz .L_814E7814
.L_814E78C0:
/* 814E78C0 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 814E78C4 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814E78C8 | 7C 05 18 50 */	subf r0, r5, r3
/* 814E78CC | 7C 09 03 A6 */	mtctr r0
/* 814E78D0 | 7C 05 18 40 */	cmplw r5, r3
/* 814E78D4 | 40 80 00 24 */	bge .L_814E78F8
.L_814E78D8:
/* 814E78D8 | 54 83 0B FC */	clrlslwi r3, r4, 16, 1
/* 814E78DC | 54 80 32 B2 */	clrlslwi r0, r4, 16, 6
/* 814E78E0 | 7C BE 1A 2E */	lhzx r5, r30, r3
/* 814E78E4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814E78E8 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 814E78EC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814E78F0 | 7C A3 01 2E */	stwx r5, r3, r0
/* 814E78F4 | 42 00 FF E4 */	bdnz .L_814E78D8
.L_814E78F8:
/* 814E78F8 | 7F C3 F3 78 */	mr r3, r30
/* 814E78FC | 4B FF 33 75 */	bl RFLiFree
/* 814E7900 | A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 814E7904 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 814E7908 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E790C | 7C 83 00 6E */	lwzux r4, r3, r0
/* 814E7910 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E7914 | 40 82 00 10 */	bne .L_814E7924
/* 814E7918 | 38 60 00 0A */	li r3, 0xa
/* 814E791C | 4B FF 48 45 */	bl RFLiEndWorking
/* 814E7920 | 48 00 00 3C */	b .L_814E795C
.L_814E7924:
/* 814E7924 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814E7928 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814E792C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814E7930 | 41 82 00 10 */	beq .L_814E7940
/* 814E7934 | 7F 63 DB 78 */	mr r3, r27
/* 814E7938 | 4B FF FA 91 */	bl loadHiddenRandomSync_
/* 814E793C | 48 00 00 20 */	b .L_814E795C
.L_814E7940:
/* 814E7940 | 3C A0 81 4E */	lis r5, updateHDBRandcallback_@ha
/* 814E7944 | 7F 66 DB 78 */	mr r6, r27
/* 814E7948 | 38 A5 75 04 */	addi r5, r5, updateHDBRandcallback_@l
/* 814E794C | 4B FF CA 09 */	bl RFLiLoadHiddenDataAsync
/* 814E7950 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814E7954 | 41 82 00 08 */	beq .L_814E795C
/* 814E7958 | 4B FF 48 09 */	bl RFLiEndWorking
.L_814E795C:
/* 814E795C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E7960 | 48 11 1B 9D */	bl _restgpr_23
/* 814E7964 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814E7968 | 7C 08 03 A6 */	mtlr r0
/* 814E796C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814E7970 | 4E 80 00 20 */	blr
.endfn updateHiddenRandom_

# .text:0xB10 | 0x814E7974 | size: 0xF8
.fn updateRandom_, local
/* 814E7974 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814E7978 | 7C 08 02 A6 */	mflr r0
/* 814E797C | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814E7980 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814E7984 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814E7988 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814E798C | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814E7990 | 7C 7C 1B 78 */	mr r28, r3
/* 814E7994 | 4B FF 46 F9 */	bl RFLiStartWorking
/* 814E7998 | 48 00 00 9C */	b .L_814E7A34
.L_814E799C:
/* 814E799C | 88 9C 00 10 */	lbz r4, 0x10(r28)
/* 814E79A0 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814E79A4 | 88 BC 00 11 */	lbz r5, 0x11(r28)
/* 814E79A8 | 3B A0 00 00 */	li r29, 0x0
/* 814E79AC | 88 DC 00 12 */	lbz r6, 0x12(r28)
/* 814E79B0 | 48 00 02 F5 */	bl RFLi_MakeRandomFace
/* 814E79B4 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814E79B8 | 4B FF E6 B9 */	bl RFLiSetTemporaryID
/* 814E79BC | 3B C0 00 00 */	li r30, 0x0
/* 814E79C0 | 3B E0 00 00 */	li r31, 0x0
/* 814E79C4 | 48 00 00 38 */	b .L_814E79FC
.L_814E79C8:
/* 814E79C8 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814E79CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E79D0 | 7C 60 FA 14 */	add r3, r0, r31
/* 814E79D4 | 4B FF E0 D5 */	bl RFLiConvertHRaw2Info
/* 814E79D8 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814E79DC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E79E0 | 48 00 15 45 */	bl RFLiIsSameFaceCore
/* 814E79E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E79E8 | 41 82 00 0C */	beq .L_814E79F4
/* 814E79EC | 3B A0 00 01 */	li r29, 0x1
/* 814E79F0 | 48 00 00 18 */	b .L_814E7A08
.L_814E79F4:
/* 814E79F4 | 3B FF 00 40 */	addi r31, r31, 0x40
/* 814E79F8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814E79FC:
/* 814E79FC | A0 1C 00 0E */	lhz r0, 0xe(r28)
/* 814E7A00 | 7C 1E 00 00 */	cmpw r30, r0
/* 814E7A04 | 41 80 FF C4 */	blt .L_814E79C8
.L_814E7A08:
/* 814E7A08 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814E7A0C | 40 82 00 28 */	bne .L_814E7A34
/* 814E7A10 | A0 1C 00 0E */	lhz r0, 0xe(r28)
/* 814E7A14 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814E7A18 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814E7A1C | 54 00 30 32 */	slwi r0, r0, 6
/* 814E7A20 | 7C 84 02 14 */	add r4, r4, r0
/* 814E7A24 | 4B FF E2 C9 */	bl RFLiConvertInfo2HRaw
/* 814E7A28 | A0 7C 00 0E */	lhz r3, 0xe(r28)
/* 814E7A2C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E7A30 | B0 1C 00 0E */	sth r0, 0xe(r28)
.L_814E7A34:
/* 814E7A34 | A0 7C 00 0E */	lhz r3, 0xe(r28)
/* 814E7A38 | A0 1C 00 0C */	lhz r0, 0xc(r28)
/* 814E7A3C | 7C 03 00 40 */	cmplw r3, r0
/* 814E7A40 | 41 80 FF 5C */	blt .L_814E799C
/* 814E7A44 | 38 60 00 00 */	li r3, 0x0
/* 814E7A48 | 4B FF 47 19 */	bl RFLiEndWorking
/* 814E7A4C | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814E7A50 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814E7A54 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814E7A58 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814E7A5C | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814E7A60 | 7C 08 03 A6 */	mtlr r0
/* 814E7A64 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814E7A68 | 4E 80 00 20 */	blr
.endfn updateRandom_

# .text:0xC08 | 0x814E7A6C | size: 0x5C
.fn RFLUpdateMiddleDBAsync, global
/* 814E7A6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E7A70 | 7C 08 02 A6 */	mflr r0
/* 814E7A74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7A78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E7A7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E7A80 | 7C 7F 1B 78 */	mr r31, r3
/* 814E7A84 | 40 82 00 0C */	bne .L_814E7A90
/* 814E7A88 | 38 60 00 0F */	li r3, 0xf
/* 814E7A8C | 48 00 00 28 */	b .L_814E7AB4
.L_814E7A90:
/* 814E7A90 | 4B FF 31 A5 */	bl RFLAvailable
/* 814E7A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7A98 | 41 82 00 18 */	beq .L_814E7AB0
/* 814E7A9C | 7F E3 FB 78 */	mr r3, r31
/* 814E7AA0 | 38 80 00 00 */	li r4, 0x0
/* 814E7AA4 | 38 A0 00 00 */	li r5, 0x0
/* 814E7AA8 | 48 00 00 21 */	bl RFLiUpdateMiddleDBAsync
/* 814E7AAC | 48 00 00 08 */	b .L_814E7AB4
.L_814E7AB0:
/* 814E7AB0 | 38 60 00 01 */	li r3, 0x1
.L_814E7AB4:
/* 814E7AB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E7AB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E7ABC | 7C 08 03 A6 */	mtlr r0
/* 814E7AC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E7AC4 | 4E 80 00 20 */	blr
.endfn RFLUpdateMiddleDBAsync

# .text:0xC64 | 0x814E7AC8 | size: 0x138
.fn RFLiUpdateMiddleDBAsync, global
/* 814E7AC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E7ACC | 7C 08 02 A6 */	mflr r0
/* 814E7AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7AD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E7AD8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E7ADC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E7AE0 | 7C BE 2B 78 */	mr r30, r5
/* 814E7AE4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E7AE8 | 7C 7D 1B 78 */	mr r29, r3
/* 814E7AEC | 40 82 00 0C */	bne .L_814E7AF8
/* 814E7AF0 | 38 60 00 0F */	li r3, 0xf
/* 814E7AF4 | 48 00 00 F0 */	b .L_814E7BE4
.L_814E7AF8:
/* 814E7AF8 | A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 814E7AFC | 3B E0 00 00 */	li r31, 0x0
/* 814E7B00 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814E7B04 | 38 80 00 00 */	li r4, 0x0
/* 814E7B08 | 54 05 30 32 */	slwi r5, r0, 6
/* 814E7B0C | B3 E3 00 0E */	sth r31, 0xe(r3)
/* 814E7B10 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814E7B14 | 4B E4 88 21 */	bl memset
/* 814E7B18 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814E7B1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E7B20 | 41 82 00 2C */	beq .L_814E7B4C
/* 814E7B24 | 41 80 00 30 */	blt .L_814E7B54
/* 814E7B28 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814E7B2C | 40 80 00 28 */	bge .L_814E7B54
/* 814E7B30 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 814E7B34 | 54 63 00 20 */	clrrwi r3, r3, 15
/* 814E7B38 | 54 60 10 1E */	extlwi r0, r3, 16, 2
/* 814E7B3C | 90 7D 00 10 */	stw r3, 0x10(r29)
/* 814E7B40 | 7C 00 8E 70 */	srawi r0, r0, 17
/* 814E7B44 | B0 1D 00 14 */	sth r0, 0x14(r29)
/* 814E7B48 | 48 00 00 0C */	b .L_814E7B54
.L_814E7B4C:
/* 814E7B4C | B3 FD 00 10 */	sth r31, 0x10(r29)
/* 814E7B50 | B3 FD 00 14 */	sth r31, 0x14(r29)
.L_814E7B54:
/* 814E7B54 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814E7B58 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814E7B5C | 41 82 00 48 */	beq .L_814E7BA4
/* 814E7B60 | 40 80 00 14 */	bge .L_814E7B74
/* 814E7B64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E7B68 | 41 82 00 18 */	beq .L_814E7B80
/* 814E7B6C | 40 80 00 24 */	bge .L_814E7B90
/* 814E7B70 | 48 00 00 50 */	b .L_814E7BC0
.L_814E7B74:
/* 814E7B74 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814E7B78 | 40 80 00 48 */	bge .L_814E7BC0
/* 814E7B7C | 48 00 00 3C */	b .L_814E7BB8
.L_814E7B80:
/* 814E7B80 | 7F A3 EB 78 */	mr r3, r29
/* 814E7B84 | 7F C4 F3 78 */	mr r4, r30
/* 814E7B88 | 4B FF FB 11 */	bl updateHiddenRandom_
/* 814E7B8C | 48 00 00 34 */	b .L_814E7BC0
.L_814E7B90:
/* 814E7B90 | 7F A3 EB 78 */	mr r3, r29
/* 814E7B94 | 7F C5 F3 78 */	mr r5, r30
/* 814E7B98 | 38 80 00 00 */	li r4, 0x0
/* 814E7B9C | 4B FF F6 D9 */	bl updateHiddenOld_
/* 814E7BA0 | 48 00 00 20 */	b .L_814E7BC0
.L_814E7BA4:
/* 814E7BA4 | 7F A3 EB 78 */	mr r3, r29
/* 814E7BA8 | 7F C5 F3 78 */	mr r5, r30
/* 814E7BAC | 38 80 00 01 */	li r4, 0x1
/* 814E7BB0 | 4B FF F6 C5 */	bl updateHiddenOld_
/* 814E7BB4 | 48 00 00 0C */	b .L_814E7BC0
.L_814E7BB8:
/* 814E7BB8 | 7F A3 EB 78 */	mr r3, r29
/* 814E7BBC | 4B FF FD B9 */	bl updateRandom_
.L_814E7BC0:
/* 814E7BC0 | 4B FF 44 C9 */	bl RFLiIsWorking
/* 814E7BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7BC8 | 40 82 00 18 */	bne .L_814E7BE0
/* 814E7BCC | 81 9D 00 04 */	lwz r12, 0x4(r29)
/* 814E7BD0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814E7BD4 | 41 82 00 0C */	beq .L_814E7BE0
/* 814E7BD8 | 7D 89 03 A6 */	mtctr r12
/* 814E7BDC | 4E 80 04 21 */	bctrl
.L_814E7BE0:
/* 814E7BE0 | 4B FF 31 25 */	bl RFLGetAsyncStatus
.L_814E7BE4:
/* 814E7BE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E7BE8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E7BEC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E7BF0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E7BF4 | 7C 08 03 A6 */	mtlr r0
/* 814E7BF8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E7BFC | 4E 80 00 20 */	blr
.endfn RFLiUpdateMiddleDBAsync

# .text:0xD9C | 0x814E7C00 | size: 0x8
.fn RFLGetMiddleDBStoredSize, global
/* 814E7C00 | A0 63 00 0E */	lhz r3, 0xe(r3)
/* 814E7C04 | 4E 80 00 20 */	blr
.endfn RFLGetMiddleDBStoredSize

# .text:0xDA4 | 0x814E7C08 | size: 0x9C
.fn RFLiGetCharInfoMiddleDB, global
/* 814E7C08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E7C0C | 7C 08 02 A6 */	mflr r0
/* 814E7C10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E7C14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E7C18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E7C1C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814E7C20 | 7C 7E 1B 78 */	mr r30, r3
/* 814E7C24 | 40 82 00 0C */	bne .L_814E7C30
/* 814E7C28 | 38 60 00 00 */	li r3, 0x0
/* 814E7C2C | 48 00 00 60 */	b .L_814E7C8C
.L_814E7C30:
/* 814E7C30 | A0 04 00 0C */	lhz r0, 0xc(r4)
/* 814E7C34 | 7C 05 00 40 */	cmplw r5, r0
/* 814E7C38 | 41 80 00 0C */	blt .L_814E7C44
/* 814E7C3C | 38 60 00 00 */	li r3, 0x0
/* 814E7C40 | 48 00 00 4C */	b .L_814E7C8C
.L_814E7C44:
/* 814E7C44 | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 814E7C48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E7C4C | 40 82 00 0C */	bne .L_814E7C58
/* 814E7C50 | 38 60 00 00 */	li r3, 0x0
/* 814E7C54 | 48 00 00 38 */	b .L_814E7C8C
.L_814E7C58:
/* 814E7C58 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814E7C5C | 54 A0 32 B2 */	clrlslwi r0, r5, 16, 6
/* 814E7C60 | 7F E3 02 14 */	add r31, r3, r0
/* 814E7C64 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814E7C68 | 4B FF E7 19 */	bl RFLiIsValidID
/* 814E7C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E7C70 | 40 82 00 0C */	bne .L_814E7C7C
/* 814E7C74 | 38 60 00 00 */	li r3, 0x0
/* 814E7C78 | 48 00 00 14 */	b .L_814E7C8C
.L_814E7C7C:
/* 814E7C7C | 7F E3 FB 78 */	mr r3, r31
/* 814E7C80 | 7F C4 F3 78 */	mr r4, r30
/* 814E7C84 | 4B FF DE 25 */	bl RFLiConvertHRaw2Info
/* 814E7C88 | 38 60 00 01 */	li r3, 0x1
.L_814E7C8C:
/* 814E7C8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E7C90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E7C94 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814E7C98 | 7C 08 03 A6 */	mtlr r0
/* 814E7C9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E7CA0 | 4E 80 00 20 */	blr
.endfn RFLiGetCharInfoMiddleDB
