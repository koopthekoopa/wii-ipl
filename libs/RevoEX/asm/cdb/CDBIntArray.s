.include "macros.inc"
.file "CDBIntArray.c"

# 0x8148EC5C..0x8148F270 | size: 0x614
.text
.balign 4

# .text:0x0 | 0x8148EC5C | size: 0xC
.fn CDBIntCopy, global
/* 8148EC5C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8148EC60 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8148EC64 | 4E 80 00 20 */	blr
.endfn CDBIntCopy

# .text:0xC | 0x8148EC68 | size: 0x2C
.fn CDBIntCompare, global
/* 8148EC68 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8148EC6C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8148EC70 | 7C 04 00 00 */	cmpw r4, r0
/* 8148EC74 | 40 80 00 0C */	bge .L_8148EC80
/* 8148EC78 | 38 60 FF FF */	li r3, -0x1
/* 8148EC7C | 4E 80 00 20 */	blr
.L_8148EC80:
/* 8148EC80 | 7C 64 00 50 */	subf r3, r4, r0
/* 8148EC84 | 7C 00 20 50 */	subf r0, r0, r4
/* 8148EC88 | 7C 60 03 78 */	or r0, r3, r0
/* 8148EC8C | 54 03 0F FE */	srwi r3, r0, 31
/* 8148EC90 | 4E 80 00 20 */	blr
.endfn CDBIntCompare

# .text:0x38 | 0x8148EC94 | size: 0x1C
.fn CDBIntArrayInit, global
/* 8148EC94 | 38 C0 00 00 */	li r6, 0x0
/* 8148EC98 | 38 00 00 01 */	li r0, 0x1
/* 8148EC9C | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8148ECA0 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8148ECA4 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8148ECA8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8148ECAC | 4E 80 00 20 */	blr
.endfn CDBIntArrayInit

# .text:0x54 | 0x8148ECB0 | size: 0xC
.fn CDBIntArraySetReverse, global
/* 8148ECB0 | 38 00 FF FF */	li r0, -0x1
/* 8148ECB4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8148ECB8 | 4E 80 00 20 */	blr
.endfn CDBIntArraySetReverse

# .text:0x60 | 0x8148ECBC | size: 0x8
.fn CDBIntArraySize, global
/* 8148ECBC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148ECC0 | 4E 80 00 20 */	blr
.endfn CDBIntArraySize

# .text:0x68 | 0x8148ECC4 | size: 0x10
.fn CDBIntArrayAt, global
/* 8148ECC4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148ECC8 | 54 80 10 3A */	slwi r0, r4, 2
/* 8148ECCC | 7C 63 02 14 */	add r3, r3, r0
/* 8148ECD0 | 4E 80 00 20 */	blr
.endfn CDBIntArrayAt

# .text:0x78 | 0x8148ECD4 | size: 0x10
.fn CDBIntArrayEmpty, global
/* 8148ECD4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148ECD8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8148ECDC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8148ECE0 | 4E 80 00 20 */	blr
.endfn CDBIntArrayEmpty

# .text:0x88 | 0x8148ECE4 | size: 0x1C
.fn CDBIntArrayFull, global
/* 8148ECE4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148ECE8 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8148ECEC | 7C 04 FE 70 */	srawi r4, r0, 31
/* 8148ECF0 | 54 A3 0F FE */	srwi r3, r5, 31
/* 8148ECF4 | 7C 05 00 10 */	subfc r0, r5, r0
/* 8148ECF8 | 7C 64 19 14 */	adde r3, r4, r3
/* 8148ECFC | 4E 80 00 20 */	blr
.endfn CDBIntArrayFull

# .text:0xA4 | 0x8148ED00 | size: 0x14
.fn CDBIntArrayEnd, global
/* 8148ED00 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148ED04 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148ED08 | 54 00 10 3A */	slwi r0, r0, 2
/* 8148ED0C | 7C 63 02 14 */	add r3, r3, r0
/* 8148ED10 | 4E 80 00 20 */	blr
.endfn CDBIntArrayEnd

# .text:0xB8 | 0x8148ED14 | size: 0xF8
.fn CDBIntArrayDicInsertR, global
/* 8148ED14 | 7C 05 30 00 */	cmpw r5, r6
/* 8148ED18 | 41 82 00 10 */	beq .L_8148ED28
/* 8148ED1C | 38 06 FF FF */	subi r0, r6, 0x1
/* 8148ED20 | 7C 05 00 00 */	cmpw r5, r0
/* 8148ED24 | 40 82 00 80 */	bne .L_8148EDA4
.L_8148ED28:
/* 8148ED28 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8148ED2C | 54 A0 10 3A */	slwi r0, r5, 2
/* 8148ED30 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8148ED34 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 8148ED38 | 7C 04 00 00 */	cmpw r4, r0
/* 8148ED3C | 40 80 00 0C */	bge .L_8148ED48
/* 8148ED40 | 38 00 FF FF */	li r0, -0x1
/* 8148ED44 | 48 00 00 14 */	b .L_8148ED58
.L_8148ED48:
/* 8148ED48 | 7C 64 00 50 */	subf r3, r4, r0
/* 8148ED4C | 7C 00 20 50 */	subf r0, r0, r4
/* 8148ED50 | 7C 60 03 78 */	or r0, r3, r0
/* 8148ED54 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148ED58:
/* 8148ED58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148ED5C | 40 80 00 0C */	bge .L_8148ED68
/* 8148ED60 | 7C A3 2B 78 */	mr r3, r5
/* 8148ED64 | 4E 80 00 20 */	blr
.L_8148ED68:
/* 8148ED68 | 54 C0 10 3A */	slwi r0, r6, 2
/* 8148ED6C | 7C 07 00 2E */	lwzx r0, r7, r0
/* 8148ED70 | 7C 04 00 00 */	cmpw r4, r0
/* 8148ED74 | 40 80 00 0C */	bge .L_8148ED80
/* 8148ED78 | 38 00 FF FF */	li r0, -0x1
/* 8148ED7C | 48 00 00 14 */	b .L_8148ED90
.L_8148ED80:
/* 8148ED80 | 7C 64 00 50 */	subf r3, r4, r0
/* 8148ED84 | 7C 00 20 50 */	subf r0, r0, r4
/* 8148ED88 | 7C 60 03 78 */	or r0, r3, r0
/* 8148ED8C | 54 00 0F FE */	srwi r0, r0, 31
.L_8148ED90:
/* 8148ED90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148ED94 | 7C C3 33 78 */	mr r3, r6
/* 8148ED98 | 4D 80 00 20 */	bltlr
/* 8148ED9C | 38 66 00 01 */	addi r3, r6, 0x1
/* 8148EDA0 | 4E 80 00 20 */	blr
.L_8148EDA4:
/* 8148EDA4 | 7D 05 30 50 */	subf r8, r5, r6
/* 8148EDA8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8148EDAC | 55 00 0F FE */	srwi r0, r8, 31
/* 8148EDB0 | 81 24 00 00 */	lwz r9, 0x0(r4)
/* 8148EDB4 | 7C 00 42 14 */	add r0, r0, r8
/* 8148EDB8 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8148EDBC | 7D 05 02 14 */	add r8, r5, r0
/* 8148EDC0 | 55 00 10 3A */	slwi r0, r8, 2
/* 8148EDC4 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 8148EDC8 | 7C 09 00 00 */	cmpw r9, r0
/* 8148EDCC | 40 80 00 0C */	bge .L_8148EDD8
/* 8148EDD0 | 38 00 FF FF */	li r0, -0x1
/* 8148EDD4 | 48 00 00 14 */	b .L_8148EDE8
.L_8148EDD8:
/* 8148EDD8 | 7C E9 00 50 */	subf r7, r9, r0
/* 8148EDDC | 7C 00 48 50 */	subf r0, r0, r9
/* 8148EDE0 | 7C E0 03 78 */	or r0, r7, r0
/* 8148EDE4 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148EDE8:
/* 8148EDE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148EDEC | 40 80 00 0C */	bge .L_8148EDF8
/* 8148EDF0 | 7D 06 43 78 */	mr r6, r8
/* 8148EDF4 | 4B FF FF 20 */	b CDBIntArrayDicInsertR
.L_8148EDF8:
/* 8148EDF8 | 40 81 00 0C */	ble .L_8148EE04
/* 8148EDFC | 7D 05 43 78 */	mr r5, r8
/* 8148EE00 | 4B FF FF 14 */	b CDBIntArrayDicInsertR
.L_8148EE04:
/* 8148EE04 | 7D 03 43 78 */	mr r3, r8
/* 8148EE08 | 4E 80 00 20 */	blr
.endfn CDBIntArrayDicInsertR

# .text:0x1B0 | 0x8148EE0C | size: 0x2F4
.fn CDBIntArrayDicInsert, global
/* 8148EE0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148EE10 | 7C 08 02 A6 */	mflr r0
/* 8148EE14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148EE18 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148EE1C | 7C 9F 23 78 */	mr r31, r4
/* 8148EE20 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148EE24 | 7C 7E 1B 78 */	mr r30, r3
/* 8148EE28 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148EE2C | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 8148EE30 | 2C 86 00 00 */	cmpwi cr1, r6, 0x0
/* 8148EE34 | 40 86 00 34 */	bne cr1, .L_8148EE68
/* 8148EE38 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8148EE3C | 7C 06 00 00 */	cmpw r6, r0
/* 8148EE40 | 40 80 00 20 */	bge .L_8148EE60
/* 8148EE44 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8148EE48 | 54 C0 10 3A */	slwi r0, r6, 2
/* 8148EE4C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8148EE50 | 7C A4 01 2E */	stwx r5, r4, r0
/* 8148EE54 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 8148EE58 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8148EE5C | 90 03 00 08 */	stw r0, 0x8(r3)
.L_8148EE60:
/* 8148EE60 | 7F E3 FB 78 */	mr r3, r31
/* 8148EE64 | 48 00 02 80 */	b .L_8148F0E4
.L_8148EE68:
/* 8148EE68 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8148EE6C | 7C 00 30 00 */	cmpw r0, r6
/* 8148EE70 | 41 81 01 F4 */	bgt .L_8148F064
/* 8148EE74 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8148EE78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148EE7C | 40 82 00 F0 */	bne .L_8148EF6C
/* 8148EE80 | 41 86 00 18 */	beq cr1, .L_8148EE98
/* 8148EE84 | 38 06 FF FF */	subi r0, r6, 0x1
/* 8148EE88 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8148EE8C | 54 00 10 3A */	slwi r0, r0, 2
/* 8148EE90 | 7C A5 02 14 */	add r5, r5, r0
/* 8148EE94 | 48 00 00 08 */	b .L_8148EE9C
.L_8148EE98:
/* 8148EE98 | 80 A3 00 00 */	lwz r5, 0x0(r3)
.L_8148EE9C:
/* 8148EE9C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8148EEA0 | 80 C5 00 00 */	lwz r6, 0x0(r5)
/* 8148EEA4 | 7C 06 00 00 */	cmpw r6, r0
/* 8148EEA8 | 40 80 00 0C */	bge .L_8148EEB4
/* 8148EEAC | 38 00 FF FF */	li r0, -0x1
/* 8148EEB0 | 48 00 00 14 */	b .L_8148EEC4
.L_8148EEB4:
/* 8148EEB4 | 7C 86 00 50 */	subf r4, r6, r0
/* 8148EEB8 | 7C 00 30 50 */	subf r0, r0, r6
/* 8148EEBC | 7C 80 03 78 */	or r0, r4, r0
/* 8148EEC0 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148EEC4:
/* 8148EEC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148EEC8 | 40 80 00 0C */	bge .L_8148EED4
/* 8148EECC | 7C A3 2B 78 */	mr r3, r5
/* 8148EED0 | 48 00 02 14 */	b .L_8148F0E4
.L_8148EED4:
/* 8148EED4 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 8148EED8 | 7F E4 FB 78 */	mr r4, r31
/* 8148EEDC | 38 A0 00 00 */	li r5, 0x0
/* 8148EEE0 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148EEE4 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8148EEE8 | 7F C3 F3 78 */	mr r3, r30
/* 8148EEEC | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148EEF0 | 4B FF FE 25 */	bl CDBIntArrayDicInsertR
/* 8148EEF4 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8148EEF8 | 7C 7D 1B 78 */	mr r29, r3
/* 8148EEFC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148EF00 | 7C 83 28 50 */	subf r4, r3, r5
/* 8148EF04 | 7C 00 28 00 */	cmpw r0, r5
/* 8148EF08 | 54 85 10 3A */	slwi r5, r4, 2
/* 8148EF0C | 41 81 00 08 */	bgt .L_8148EF14
/* 8148EF10 | 38 A5 FF FC */	subi r5, r5, 0x4
.L_8148EF14:
/* 8148EF14 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148EF18 | 40 81 00 20 */	ble .L_8148EF38
/* 8148EF1C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148EF20 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8148EF24 | 54 03 10 3A */	slwi r3, r0, 2
/* 8148EF28 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8148EF2C | 7C 64 1A 14 */	add r3, r4, r3
/* 8148EF30 | 7C 84 02 14 */	add r4, r4, r0
/* 8148EF34 | 48 16 F1 7D */	bl memmove
.L_8148EF38:
/* 8148EF38 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8148EF3C | 57 A4 10 3A */	slwi r4, r29, 2
/* 8148EF40 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8148EF44 | 7C 03 21 2E */	stwx r0, r3, r4
/* 8148EF48 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148EF4C | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148EF50 | 7C 03 00 00 */	cmpw r3, r0
/* 8148EF54 | 40 80 00 0C */	bge .L_8148EF60
/* 8148EF58 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148EF5C | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148EF60:
/* 8148EF60 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148EF64 | 7C 60 22 14 */	add r3, r0, r4
/* 8148EF68 | 48 00 01 7C */	b .L_8148F0E4
.L_8148EF6C:
/* 8148EF6C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8148EF70 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8148EF74 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8148EF78 | 7C 06 00 00 */	cmpw r6, r0
/* 8148EF7C | 40 80 00 0C */	bge .L_8148EF88
/* 8148EF80 | 38 00 FF FF */	li r0, -0x1
/* 8148EF84 | 48 00 00 14 */	b .L_8148EF98
.L_8148EF88:
/* 8148EF88 | 7C 86 00 50 */	subf r4, r6, r0
/* 8148EF8C | 7C 00 30 50 */	subf r0, r0, r6
/* 8148EF90 | 7C 80 03 78 */	or r0, r4, r0
/* 8148EF94 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148EF98:
/* 8148EF98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148EF9C | 40 80 00 0C */	bge .L_8148EFA8
/* 8148EFA0 | 7C A3 2B 78 */	mr r3, r5
/* 8148EFA4 | 48 00 01 40 */	b .L_8148F0E4
.L_8148EFA8:
/* 8148EFA8 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 8148EFAC | 34 A4 FF FF */	subic. r5, r4, 0x1
/* 8148EFB0 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 8148EFB4 | 41 80 00 20 */	blt .L_8148EFD4
/* 8148EFB8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8148EFBC | 34 04 FF FF */	subic. r0, r4, 0x1
/* 8148EFC0 | 41 80 00 14 */	blt .L_8148EFD4
/* 8148EFC4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148EFC8 | 54 A5 10 3A */	slwi r5, r5, 2
/* 8148EFCC | 38 83 00 04 */	addi r4, r3, 0x4
/* 8148EFD0 | 48 16 F0 E1 */	bl memmove
.L_8148EFD4:
/* 8148EFD4 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 8148EFD8 | 7F C3 F3 78 */	mr r3, r30
/* 8148EFDC | 7F E4 FB 78 */	mr r4, r31
/* 8148EFE0 | 38 A0 00 00 */	li r5, 0x0
/* 8148EFE4 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148EFE8 | 4B FF FD 2D */	bl CDBIntArrayDicInsertR
/* 8148EFEC | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8148EFF0 | 7C 7D 1B 78 */	mr r29, r3
/* 8148EFF4 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148EFF8 | 7C 83 28 50 */	subf r4, r3, r5
/* 8148EFFC | 7C 00 28 00 */	cmpw r0, r5
/* 8148F000 | 54 85 10 3A */	slwi r5, r4, 2
/* 8148F004 | 41 81 00 08 */	bgt .L_8148F00C
/* 8148F008 | 38 A5 FF FC */	subi r5, r5, 0x4
.L_8148F00C:
/* 8148F00C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148F010 | 40 81 00 20 */	ble .L_8148F030
/* 8148F014 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148F018 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8148F01C | 54 03 10 3A */	slwi r3, r0, 2
/* 8148F020 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8148F024 | 7C 64 1A 14 */	add r3, r4, r3
/* 8148F028 | 7C 84 02 14 */	add r4, r4, r0
/* 8148F02C | 48 16 F0 85 */	bl memmove
.L_8148F030:
/* 8148F030 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8148F034 | 57 A4 10 3A */	slwi r4, r29, 2
/* 8148F038 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8148F03C | 7C 03 21 2E */	stwx r0, r3, r4
/* 8148F040 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148F044 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148F048 | 7C 03 00 00 */	cmpw r3, r0
/* 8148F04C | 40 80 00 0C */	bge .L_8148F058
/* 8148F050 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148F054 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148F058:
/* 8148F058 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148F05C | 7C 60 22 14 */	add r3, r0, r4
/* 8148F060 | 48 00 00 84 */	b .L_8148F0E4
.L_8148F064:
/* 8148F064 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148F068 | 38 A0 00 00 */	li r5, 0x0
/* 8148F06C | 4B FF FC A9 */	bl CDBIntArrayDicInsertR
/* 8148F070 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8148F074 | 7C 7D 1B 78 */	mr r29, r3
/* 8148F078 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148F07C | 7C 83 28 50 */	subf r4, r3, r5
/* 8148F080 | 7C 00 28 00 */	cmpw r0, r5
/* 8148F084 | 54 85 10 3A */	slwi r5, r4, 2
/* 8148F088 | 41 81 00 08 */	bgt .L_8148F090
/* 8148F08C | 38 A5 FF FC */	subi r5, r5, 0x4
.L_8148F090:
/* 8148F090 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148F094 | 40 81 00 20 */	ble .L_8148F0B4
/* 8148F098 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148F09C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8148F0A0 | 54 03 10 3A */	slwi r3, r0, 2
/* 8148F0A4 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8148F0A8 | 7C 64 1A 14 */	add r3, r4, r3
/* 8148F0AC | 7C 84 02 14 */	add r4, r4, r0
/* 8148F0B0 | 48 16 F0 01 */	bl memmove
.L_8148F0B4:
/* 8148F0B4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8148F0B8 | 57 A4 10 3A */	slwi r4, r29, 2
/* 8148F0BC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8148F0C0 | 7C 03 21 2E */	stwx r0, r3, r4
/* 8148F0C4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148F0C8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148F0CC | 7C 03 00 00 */	cmpw r3, r0
/* 8148F0D0 | 40 80 00 0C */	bge .L_8148F0DC
/* 8148F0D4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148F0D8 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148F0DC:
/* 8148F0DC | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148F0E0 | 7C 60 22 14 */	add r3, r0, r4
.L_8148F0E4:
/* 8148F0E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148F0E8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148F0EC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148F0F0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148F0F4 | 7C 08 03 A6 */	mtlr r0
/* 8148F0F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148F0FC | 4E 80 00 20 */	blr
.endfn CDBIntArrayDicInsert

# .text:0x4A4 | 0x8148F100 | size: 0xF8
.fn CDBIntArrayDicFindR, global
/* 8148F100 | 7C 05 30 00 */	cmpw r5, r6
/* 8148F104 | 41 82 00 10 */	beq .L_8148F114
/* 8148F108 | 38 06 FF FF */	subi r0, r6, 0x1
/* 8148F10C | 7C 05 00 00 */	cmpw r5, r0
/* 8148F110 | 40 82 00 80 */	bne .L_8148F190
.L_8148F114:
/* 8148F114 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8148F118 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8148F11C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8148F120 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 8148F124 | 7C 04 00 00 */	cmpw r4, r0
/* 8148F128 | 40 80 00 0C */	bge .L_8148F134
/* 8148F12C | 38 00 FF FF */	li r0, -0x1
/* 8148F130 | 48 00 00 14 */	b .L_8148F144
.L_8148F134:
/* 8148F134 | 7C 64 00 50 */	subf r3, r4, r0
/* 8148F138 | 7C 00 20 50 */	subf r0, r0, r4
/* 8148F13C | 7C 60 03 78 */	or r0, r3, r0
/* 8148F140 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148F144:
/* 8148F144 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F148 | 40 82 00 0C */	bne .L_8148F154
/* 8148F14C | 7C A3 2B 78 */	mr r3, r5
/* 8148F150 | 4E 80 00 20 */	blr
.L_8148F154:
/* 8148F154 | 54 C0 10 3A */	slwi r0, r6, 2
/* 8148F158 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 8148F15C | 7C 04 00 00 */	cmpw r4, r0
/* 8148F160 | 40 80 00 0C */	bge .L_8148F16C
/* 8148F164 | 38 00 FF FF */	li r0, -0x1
/* 8148F168 | 48 00 00 14 */	b .L_8148F17C
.L_8148F16C:
/* 8148F16C | 7C 64 00 50 */	subf r3, r4, r0
/* 8148F170 | 7C 00 20 50 */	subf r0, r0, r4
/* 8148F174 | 7C 60 03 78 */	or r0, r3, r0
/* 8148F178 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148F17C:
/* 8148F17C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F180 | 38 60 FF FF */	li r3, -0x1
/* 8148F184 | 4C 82 00 20 */	bnelr
/* 8148F188 | 7C C3 33 78 */	mr r3, r6
/* 8148F18C | 4E 80 00 20 */	blr
.L_8148F190:
/* 8148F190 | 7D 05 30 50 */	subf r8, r5, r6
/* 8148F194 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8148F198 | 55 00 0F FE */	srwi r0, r8, 31
/* 8148F19C | 81 24 00 00 */	lwz r9, 0x0(r4)
/* 8148F1A0 | 7C 00 42 14 */	add r0, r0, r8
/* 8148F1A4 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8148F1A8 | 7D 05 02 14 */	add r8, r5, r0
/* 8148F1AC | 55 00 10 3A */	slwi r0, r8, 2
/* 8148F1B0 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 8148F1B4 | 7C 09 00 00 */	cmpw r9, r0
/* 8148F1B8 | 40 80 00 0C */	bge .L_8148F1C4
/* 8148F1BC | 38 00 FF FF */	li r0, -0x1
/* 8148F1C0 | 48 00 00 14 */	b .L_8148F1D4
.L_8148F1C4:
/* 8148F1C4 | 7C E9 00 50 */	subf r7, r9, r0
/* 8148F1C8 | 7C 00 48 50 */	subf r0, r0, r9
/* 8148F1CC | 7C E0 03 78 */	or r0, r7, r0
/* 8148F1D0 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148F1D4:
/* 8148F1D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F1D8 | 40 80 00 0C */	bge .L_8148F1E4
/* 8148F1DC | 7D 06 43 78 */	mr r6, r8
/* 8148F1E0 | 4B FF FF 20 */	b CDBIntArrayDicFindR
.L_8148F1E4:
/* 8148F1E4 | 40 81 00 0C */	ble .L_8148F1F0
/* 8148F1E8 | 7D 05 43 78 */	mr r5, r8
/* 8148F1EC | 4B FF FF 14 */	b CDBIntArrayDicFindR
.L_8148F1F0:
/* 8148F1F0 | 7D 03 43 78 */	mr r3, r8
/* 8148F1F4 | 4E 80 00 20 */	blr
.endfn CDBIntArrayDicFindR

# .text:0x59C | 0x8148F1F8 | size: 0x78
.fn CDBIntArrayDicFind, global
/* 8148F1F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148F1FC | 7C 08 02 A6 */	mflr r0
/* 8148F200 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148F204 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148F208 | 7C 7F 1B 78 */	mr r31, r3
/* 8148F20C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8148F210 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148F214 | 40 82 00 14 */	bne .L_8148F228
/* 8148F218 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148F21C | 54 A0 10 3A */	slwi r0, r5, 2
/* 8148F220 | 7C 63 02 14 */	add r3, r3, r0
/* 8148F224 | 48 00 00 38 */	b .L_8148F25C
.L_8148F228:
/* 8148F228 | 38 C5 FF FF */	subi r6, r5, 0x1
/* 8148F22C | 38 A0 00 00 */	li r5, 0x0
/* 8148F230 | 4B FF FE D1 */	bl CDBIntArrayDicFindR
/* 8148F234 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8148F238 | 41 82 00 14 */	beq .L_8148F24C
/* 8148F23C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8148F240 | 54 60 10 3A */	slwi r0, r3, 2
/* 8148F244 | 7C 64 02 14 */	add r3, r4, r0
/* 8148F248 | 48 00 00 14 */	b .L_8148F25C
.L_8148F24C:
/* 8148F24C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8148F250 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8148F254 | 54 00 10 3A */	slwi r0, r0, 2
/* 8148F258 | 7C 63 02 14 */	add r3, r3, r0
.L_8148F25C:
/* 8148F25C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148F260 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148F264 | 7C 08 03 A6 */	mtlr r0
/* 8148F268 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148F26C | 4E 80 00 20 */	blr
.endfn CDBIntArrayDicFind
