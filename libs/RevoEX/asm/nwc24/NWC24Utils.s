.include "macros.inc"
.file "NWC24Utils.c"

# 0x8149FCC4..0x8149FFDC | size: 0x318
.text
.balign 4

# .text:0x0 | 0x8149FCC4 | size: 0x10
.fn NWC24Data_Init, global
/* 8149FCC4 | 38 00 00 00 */	li r0, 0x0
/* 8149FCC8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8149FCCC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8149FCD0 | 4E 80 00 20 */	blr
.endfn NWC24Data_Init

# .text:0x10 | 0x8149FCD4 | size: 0xC
.fn NWC24Data_SetDataP, global
/* 8149FCD4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8149FCD8 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8149FCDC | 4E 80 00 20 */	blr
.endfn NWC24Data_SetDataP

# .text:0x1C | 0x8149FCE0 | size: 0x30
.fn NWC24Date_Init, global
/* 8149FCE0 | 38 00 00 00 */	li r0, 0x0
/* 8149FCE4 | 38 A0 00 01 */	li r5, 0x1
/* 8149FCE8 | 38 C0 07 D0 */	li r6, 0x7d0
/* 8149FCEC | 38 80 00 0C */	li r4, 0xc
/* 8149FCF0 | B0 C3 00 00 */	sth r6, 0x0(r3)
/* 8149FCF4 | 98 A3 00 02 */	stb r5, 0x2(r3)
/* 8149FCF8 | 98 A3 00 03 */	stb r5, 0x3(r3)
/* 8149FCFC | 98 83 00 04 */	stb r4, 0x4(r3)
/* 8149FD00 | 98 03 00 06 */	stb r0, 0x6(r3)
/* 8149FD04 | 98 03 00 05 */	stb r0, 0x5(r3)
/* 8149FD08 | 98 03 00 07 */	stb r0, 0x7(r3)
/* 8149FD0C | 4E 80 00 20 */	blr
.endfn NWC24Date_Init

# .text:0x4C | 0x8149FD10 | size: 0x1DC
.fn NWC24iConvIdToStr, global
/* 8149FD10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149FD14 | 7C 08 02 A6 */	mflr r0
/* 8149FD18 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149FD1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149FD20 | 48 15 97 9D */	bl _savegpr_26
/* 8149FD24 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FD28 | 7C 9C 23 78 */	mr r28, r4
/* 8149FD2C | 7C BA 2B 78 */	mr r26, r5
/* 8149FD30 | 3B 60 00 0F */	li r27, 0xf
/* 8149FD34 | 3B E0 00 30 */	li r31, 0x30
.L_8149FD38:
/* 8149FD38 | 7F A3 EB 78 */	mr r3, r29
/* 8149FD3C | 7F 84 E3 78 */	mr r4, r28
/* 8149FD40 | 7F DA DA 14 */	add r30, r26, r27
/* 8149FD44 | 38 C0 00 0A */	li r6, 0xa
/* 8149FD48 | 38 A0 00 00 */	li r5, 0x0
/* 8149FD4C | 48 15 99 FD */	bl __mod2u
/* 8149FD50 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FD54 | 7F A3 EB 78 */	mr r3, r29
/* 8149FD58 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8149FD5C | 7F 84 E3 78 */	mr r4, r28
/* 8149FD60 | 38 A0 00 00 */	li r5, 0x0
/* 8149FD64 | 38 C0 00 0A */	li r6, 0xa
/* 8149FD68 | 48 15 97 BD */	bl __div2u
/* 8149FD6C | 7C 9C 23 78 */	mr r28, r4
/* 8149FD70 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FD74 | 38 C0 00 0A */	li r6, 0xa
/* 8149FD78 | 38 A0 00 00 */	li r5, 0x0
/* 8149FD7C | 48 15 99 CD */	bl __mod2u
/* 8149FD80 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FD84 | 7F A3 EB 78 */	mr r3, r29
/* 8149FD88 | 98 1E FF FF */	stb r0, -0x1(r30)
/* 8149FD8C | 7F 84 E3 78 */	mr r4, r28
/* 8149FD90 | 38 A0 00 00 */	li r5, 0x0
/* 8149FD94 | 38 C0 00 0A */	li r6, 0xa
/* 8149FD98 | 48 15 97 8D */	bl __div2u
/* 8149FD9C | 7C 9C 23 78 */	mr r28, r4
/* 8149FDA0 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FDA4 | 38 C0 00 0A */	li r6, 0xa
/* 8149FDA8 | 38 A0 00 00 */	li r5, 0x0
/* 8149FDAC | 48 15 99 9D */	bl __mod2u
/* 8149FDB0 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FDB4 | 7F A3 EB 78 */	mr r3, r29
/* 8149FDB8 | 98 1E FF FE */	stb r0, -0x2(r30)
/* 8149FDBC | 7F 84 E3 78 */	mr r4, r28
/* 8149FDC0 | 38 A0 00 00 */	li r5, 0x0
/* 8149FDC4 | 38 C0 00 0A */	li r6, 0xa
/* 8149FDC8 | 48 15 97 5D */	bl __div2u
/* 8149FDCC | 7C 9C 23 78 */	mr r28, r4
/* 8149FDD0 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FDD4 | 38 C0 00 0A */	li r6, 0xa
/* 8149FDD8 | 38 A0 00 00 */	li r5, 0x0
/* 8149FDDC | 48 15 99 6D */	bl __mod2u
/* 8149FDE0 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FDE4 | 7F A3 EB 78 */	mr r3, r29
/* 8149FDE8 | 98 1E FF FD */	stb r0, -0x3(r30)
/* 8149FDEC | 7F 84 E3 78 */	mr r4, r28
/* 8149FDF0 | 38 A0 00 00 */	li r5, 0x0
/* 8149FDF4 | 38 C0 00 0A */	li r6, 0xa
/* 8149FDF8 | 48 15 97 2D */	bl __div2u
/* 8149FDFC | 7C 9C 23 78 */	mr r28, r4
/* 8149FE00 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FE04 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE08 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE0C | 48 15 99 3D */	bl __mod2u
/* 8149FE10 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FE14 | 7F A3 EB 78 */	mr r3, r29
/* 8149FE18 | 98 1E FF FC */	stb r0, -0x4(r30)
/* 8149FE1C | 7F 84 E3 78 */	mr r4, r28
/* 8149FE20 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE24 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE28 | 48 15 96 FD */	bl __div2u
/* 8149FE2C | 7C 9C 23 78 */	mr r28, r4
/* 8149FE30 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FE34 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE38 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE3C | 48 15 99 0D */	bl __mod2u
/* 8149FE40 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FE44 | 7F A3 EB 78 */	mr r3, r29
/* 8149FE48 | 98 1E FF FB */	stb r0, -0x5(r30)
/* 8149FE4C | 7F 84 E3 78 */	mr r4, r28
/* 8149FE50 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE54 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE58 | 48 15 96 CD */	bl __div2u
/* 8149FE5C | 7C 9C 23 78 */	mr r28, r4
/* 8149FE60 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FE64 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE68 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE6C | 48 15 98 DD */	bl __mod2u
/* 8149FE70 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FE74 | 7F A3 EB 78 */	mr r3, r29
/* 8149FE78 | 98 1E FF FA */	stb r0, -0x6(r30)
/* 8149FE7C | 7F 84 E3 78 */	mr r4, r28
/* 8149FE80 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE84 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE88 | 48 15 96 9D */	bl __div2u
/* 8149FE8C | 7C 9C 23 78 */	mr r28, r4
/* 8149FE90 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FE94 | 38 C0 00 0A */	li r6, 0xa
/* 8149FE98 | 38 A0 00 00 */	li r5, 0x0
/* 8149FE9C | 48 15 98 AD */	bl __mod2u
/* 8149FEA0 | 7C 04 F8 14 */	addc r0, r4, r31
/* 8149FEA4 | 7F A3 EB 78 */	mr r3, r29
/* 8149FEA8 | 98 1E FF F9 */	stb r0, -0x7(r30)
/* 8149FEAC | 7F 84 E3 78 */	mr r4, r28
/* 8149FEB0 | 38 A0 00 00 */	li r5, 0x0
/* 8149FEB4 | 38 C0 00 0A */	li r6, 0xa
/* 8149FEB8 | 48 15 96 6D */	bl __div2u
/* 8149FEBC | 37 7B FF F8 */	subic. r27, r27, 0x8
/* 8149FEC0 | 7C 9C 23 78 */	mr r28, r4
/* 8149FEC4 | 7C 7D 1B 78 */	mr r29, r3
/* 8149FEC8 | 40 80 FE 70 */	bge .L_8149FD38
/* 8149FECC | 38 00 00 00 */	li r0, 0x0
/* 8149FED0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149FED4 | 98 1A 00 10 */	stb r0, 0x10(r26)
/* 8149FED8 | 48 15 96 31 */	bl _restgpr_26
/* 8149FEDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149FEE0 | 7C 08 03 A6 */	mtlr r0
/* 8149FEE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149FEE8 | 4E 80 00 20 */	blr
.endfn NWC24iConvIdToStr

# .text:0x228 | 0x8149FEEC | size: 0x7C
.fn NWC24iCheckStringLength, global
/* 8149FEEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149FEF0 | 7C 08 02 A6 */	mflr r0
/* 8149FEF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FEF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149FEFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149FF00 | 7C BF 2B 78 */	mr r31, r5
/* 8149FF04 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149FF08 | 7C 9E 23 78 */	mr r30, r4
/* 8149FF0C | 40 82 00 0C */	bne .L_8149FF18
/* 8149FF10 | 38 60 FF FB */	li r3, -0x5
/* 8149FF14 | 48 00 00 3C */	b .L_8149FF50
.L_8149FF18:
/* 8149FF18 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8149FF1C | 4B FF CE 85 */	bl STD_strnlen
/* 8149FF20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FF24 | 40 82 00 0C */	bne .L_8149FF30
/* 8149FF28 | 38 60 FF FB */	li r3, -0x5
/* 8149FF2C | 48 00 00 24 */	b .L_8149FF50
.L_8149FF30:
/* 8149FF30 | 7C 03 F8 40 */	cmplw r3, r31
/* 8149FF34 | 40 81 00 0C */	ble .L_8149FF40
/* 8149FF38 | 38 60 FF FA */	li r3, -0x6
/* 8149FF3C | 48 00 00 14 */	b .L_8149FF50
.L_8149FF40:
/* 8149FF40 | 7C 03 F0 40 */	cmplw r3, r30
/* 8149FF44 | 38 60 00 00 */	li r3, 0x0
/* 8149FF48 | 40 80 00 08 */	bge .L_8149FF50
/* 8149FF4C | 38 60 FF E8 */	li r3, -0x18
.L_8149FF50:
/* 8149FF50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149FF54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149FF58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149FF5C | 7C 08 03 A6 */	mtlr r0
/* 8149FF60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149FF64 | 4E 80 00 20 */	blr
.endfn NWC24iCheckStringLength

# .text:0x2A4 | 0x8149FF68 | size: 0x74
.fn NWC24iStrLCpy, global
/* 8149FF68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FF6C | 41 82 00 0C */	beq .L_8149FF78
/* 8149FF70 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149FF74 | 40 82 00 0C */	bne .L_8149FF80
.L_8149FF78:
/* 8149FF78 | 38 60 00 00 */	li r3, 0x0
/* 8149FF7C | 4E 80 00 20 */	blr
.L_8149FF80:
/* 8149FF80 | 7C 66 1B 78 */	mr r6, r3
/* 8149FF84 | 38 E0 00 00 */	li r7, 0x0
/* 8149FF88 | 48 00 00 24 */	b .L_8149FFAC
.L_8149FF8C:
/* 8149FF8C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8149FF90 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 8149FF94 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8149FF98 | 7C 00 07 75 */	extsb. r0, r0
/* 8149FF9C | 41 82 00 1C */	beq .L_8149FFB8
/* 8149FFA0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8149FFA4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8149FFA8 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_8149FFAC:
/* 8149FFAC | 38 07 00 01 */	addi r0, r7, 0x1
/* 8149FFB0 | 7C 00 28 00 */	cmpw r0, r5
/* 8149FFB4 | 41 80 FF D8 */	blt .L_8149FF8C
.L_8149FFB8:
/* 8149FFB8 | 38 07 00 01 */	addi r0, r7, 0x1
/* 8149FFBC | 7C 00 28 00 */	cmpw r0, r5
/* 8149FFC0 | 41 80 00 14 */	blt .L_8149FFD4
/* 8149FFC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8149FFC8 | 41 82 00 0C */	beq .L_8149FFD4
/* 8149FFCC | 38 00 00 00 */	li r0, 0x0
/* 8149FFD0 | 7C 03 39 AE */	stbx r0, r3, r7
.L_8149FFD4:
/* 8149FFD4 | 7C E3 3B 78 */	mr r3, r7
/* 8149FFD8 | 4E 80 00 20 */	blr
.endfn NWC24iStrLCpy
