.include "macros.inc"
.file "NWC24CHJump.c"

# 0x814B1A88..0x814B1C10 | size: 0x188
.text
.balign 4

# .text:0x0 | 0x814B1A88 | size: 0xA0
.fn NWC24CheckCHJumpObj, global
/* 814B1A88 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814B1A8C | 38 E3 00 18 */	addi r7, r3, 0x18
/* 814B1A90 | 3C 05 BC 98 */	subis r0, r5, 0x4368
/* 814B1A94 | 28 00 4A 70 */	cmplwi r0, 0x4a70
/* 814B1A98 | 41 82 00 0C */	beq .L_814B1AA4
/* 814B1A9C | 38 60 FF E8 */	li r3, -0x18
/* 814B1AA0 | 4E 80 00 20 */	blr
.L_814B1AA4:
/* 814B1AA4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814B1AA8 | 7C 00 20 40 */	cmplw r0, r4
/* 814B1AAC | 40 81 00 0C */	ble .L_814B1AB8
/* 814B1AB0 | 38 60 FF F8 */	li r3, -0x8
/* 814B1AB4 | 4E 80 00 20 */	blr
.L_814B1AB8:
/* 814B1AB8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B1ABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1AC0 | 41 82 00 0C */	beq .L_814B1ACC
/* 814B1AC4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B1AC8 | 40 81 00 0C */	ble .L_814B1AD4
.L_814B1ACC:
/* 814B1ACC | 38 60 FF E8 */	li r3, -0x18
/* 814B1AD0 | 4E 80 00 20 */	blr
.L_814B1AD4:
/* 814B1AD4 | 54 04 18 38 */	slwi r4, r0, 3
/* 814B1AD8 | 38 A4 00 18 */	addi r5, r4, 0x18
/* 814B1ADC | 7C 09 03 A6 */	mtctr r0
/* 814B1AE0 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814B1AE4 | 40 81 00 3C */	ble .L_814B1B20
.L_814B1AE8:
/* 814B1AE8 | 80 C7 00 00 */	lwz r6, 0x0(r7)
/* 814B1AEC | 7C 06 28 40 */	cmplw r6, r5
/* 814B1AF0 | 40 80 00 0C */	bge .L_814B1AFC
/* 814B1AF4 | 38 60 FF E8 */	li r3, -0x18
/* 814B1AF8 | 4E 80 00 20 */	blr
.L_814B1AFC:
/* 814B1AFC | 80 87 00 04 */	lwz r4, 0x4(r7)
/* 814B1B00 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814B1B04 | 7C 86 22 14 */	add r4, r6, r4
/* 814B1B08 | 7C 04 00 40 */	cmplw r4, r0
/* 814B1B0C | 40 81 00 0C */	ble .L_814B1B18
/* 814B1B10 | 38 60 FF E8 */	li r3, -0x18
/* 814B1B14 | 4E 80 00 20 */	blr
.L_814B1B18:
/* 814B1B18 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 814B1B1C | 42 00 FF CC */	bdnz .L_814B1AE8
.L_814B1B20:
/* 814B1B20 | 38 60 00 00 */	li r3, 0x0
/* 814B1B24 | 4E 80 00 20 */	blr
.endfn NWC24CheckCHJumpObj

# .text:0xA0 | 0x814B1B28 | size: 0x18
.fn NWC24GetCHJumpTitleId, global
/* 814B1B28 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814B1B2C | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 814B1B30 | 38 60 00 00 */	li r3, 0x0
/* 814B1B34 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B1B38 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 814B1B3C | 4E 80 00 20 */	blr
.endfn NWC24GetCHJumpTitleId

# .text:0xB8 | 0x814B1B40 | size: 0x30
.fn NWC24GetCHJumpBlockSize, global
/* 814B1B40 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B1B44 | 38 C3 00 18 */	addi r6, r3, 0x18
/* 814B1B48 | 7C 00 28 40 */	cmplw r0, r5
/* 814B1B4C | 41 81 00 0C */	bgt .L_814B1B58
/* 814B1B50 | 38 60 FF FD */	li r3, -0x3
/* 814B1B54 | 4E 80 00 20 */	blr
.L_814B1B58:
/* 814B1B58 | 54 A0 18 38 */	slwi r0, r5, 3
/* 814B1B5C | 38 60 00 00 */	li r3, 0x0
/* 814B1B60 | 7C A6 02 14 */	add r5, r6, r0
/* 814B1B64 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 814B1B68 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B1B6C | 4E 80 00 20 */	blr
.endfn NWC24GetCHJumpBlockSize

# .text:0xE8 | 0x814B1B70 | size: 0xA0
.fn NWC24GetCHJumpBlockData, global
/* 814B1B70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B1B74 | 7C 08 02 A6 */	mflr r0
/* 814B1B78 | 38 E3 00 18 */	addi r7, r3, 0x18
/* 814B1B7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B1B80 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B1B84 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B1B88 | 7C 00 30 40 */	cmplw r0, r6
/* 814B1B8C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B1B90 | 7C BE 2B 78 */	mr r30, r5
/* 814B1B94 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B1B98 | 7C 9D 23 78 */	mr r29, r4
/* 814B1B9C | 41 81 00 0C */	bgt .L_814B1BA8
/* 814B1BA0 | 38 60 FF FD */	li r3, -0x3
/* 814B1BA4 | 48 00 00 50 */	b .L_814B1BF4
.L_814B1BA8:
/* 814B1BA8 | 54 C0 18 38 */	slwi r0, r6, 3
/* 814B1BAC | 7C 87 02 14 */	add r4, r7, r0
/* 814B1BB0 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 814B1BB4 | 83 E4 00 04 */	lwz r31, 0x4(r4)
/* 814B1BB8 | 7C 83 02 14 */	add r4, r3, r0
/* 814B1BBC | 7C 1F 28 40 */	cmplw r31, r5
/* 814B1BC0 | 40 81 00 0C */	ble .L_814B1BCC
/* 814B1BC4 | 38 60 FF F8 */	li r3, -0x8
/* 814B1BC8 | 48 00 00 2C */	b .L_814B1BF4
.L_814B1BCC:
/* 814B1BCC | 7F A3 EB 78 */	mr r3, r29
/* 814B1BD0 | 7F E5 FB 78 */	mr r5, r31
/* 814B1BD4 | 4B E7 E6 5D */	bl memcpy
/* 814B1BD8 | 7C 1F F0 40 */	cmplw r31, r30
/* 814B1BDC | 40 80 00 14 */	bge .L_814B1BF0
/* 814B1BE0 | 7C 7D FA 14 */	add r3, r29, r31
/* 814B1BE4 | 7C BF F0 50 */	subf r5, r31, r30
/* 814B1BE8 | 38 80 00 00 */	li r4, 0x0
/* 814B1BEC | 4B E7 E7 49 */	bl memset
.L_814B1BF0:
/* 814B1BF0 | 38 60 00 00 */	li r3, 0x0
.L_814B1BF4:
/* 814B1BF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B1BF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B1BFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B1C00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B1C04 | 7C 08 03 A6 */	mtlr r0
/* 814B1C08 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B1C0C | 4E 80 00 20 */	blr
.endfn NWC24GetCHJumpBlockData
