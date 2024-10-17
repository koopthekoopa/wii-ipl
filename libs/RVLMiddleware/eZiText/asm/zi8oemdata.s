.include "macros.inc"
.file "zi8oemdata.c"

# 0x813307C0..0x813307D8 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x813307C0 | size: 0x8
.obj "@etb_813307C0", local
.hidden "@etb_813307C0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_813307C0"

# extab:0x8 | 0x813307C8 | size: 0x8
.obj "@etb_813307C8", local
.hidden "@etb_813307C8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_813307C8"

# extab:0x10 | 0x813307D0 | size: 0x8
.obj "@etb_813307D0", local
.hidden "@etb_813307D0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r21-r31
 */
	.4byte 0x58080000
	.4byte 0x00000000
.endobj "@etb_813307D0"

# 0x81331530..0x81331554 | size: 0x24
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331530 | size: 0xC
.obj "@eti_81331530", local
.hidden "@eti_81331530"
	.4byte Zi8AttachOEMdata
	.4byte 0x00000060
	.4byte "@etb_813307C0"
.endobj "@eti_81331530"

# extabindex:0xC | 0x8133153C | size: 0xC
.obj "@eti_8133153C", local
.hidden "@eti_8133153C"
	.4byte Zi8DetachOEMdata
	.4byte 0x00000070
	.4byte "@etb_813307C8"
.endobj "@eti_8133153C"

# extabindex:0x18 | 0x81331548 | size: 0xC
.obj "@eti_81331548", local
.hidden "@eti_81331548"
	.4byte Zi8MatchOEMdata
	.4byte 0x00000300
	.4byte "@etb_813307D0"
.endobj "@eti_81331548"

# 0x81484D2C..0x814850FC | size: 0x3D0
.text
.balign 4

# .text:0x0 | 0x81484D2C | size: 0x60
.fn Zi8AttachOEMdata, global
/* 81484D2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81484D30 | 7C 08 02 A6 */	mflr r0
/* 81484D34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81484D38 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81484D3C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81484D40 | B0 81 00 0C */	sth r4, 0xc(r1)
/* 81484D44 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 81484D48 | 7C DF 33 78 */	mr r31, r6
/* 81484D4C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81484D50 | 90 1F 03 20 */	stw r0, 0x320(r31)
/* 81484D54 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81484D58 | B0 1F 03 24 */	sth r0, 0x324(r31)
/* 81484D5C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81484D60 | 90 1F 03 2C */	stw r0, 0x32c(r31)
/* 81484D64 | 38 60 00 64 */	li r3, 0x64
/* 81484D68 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81484D6C | 7F E4 FB 78 */	mr r4, r31
/* 81484D70 | 4B FF F7 0D */	bl Zi8LogError
/* 81484D74 | 38 60 00 01 */	li r3, 0x1
/* 81484D78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81484D7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81484D80 | 7C 08 03 A6 */	mtlr r0
/* 81484D84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81484D88 | 4E 80 00 20 */	blr
.endfn Zi8AttachOEMdata

# .text:0x60 | 0x81484D8C | size: 0x70
.fn Zi8DetachOEMdata, global
/* 81484D8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81484D90 | 7C 08 02 A6 */	mflr r0
/* 81484D94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81484D98 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81484D9C | 98 61 00 08 */	stb r3, 0x8(r1)
/* 81484DA0 | 7C 9F 23 78 */	mr r31, r4
/* 81484DA4 | 38 60 00 64 */	li r3, 0x64
/* 81484DA8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81484DAC | 7F E4 FB 78 */	mr r4, r31
/* 81484DB0 | 4B FF F6 CD */	bl Zi8LogError
/* 81484DB4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81484DB8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81484DBC | 40 82 00 10 */	bne .L_81484DCC
/* 81484DC0 | 80 1F 03 20 */	lwz r0, 0x320(r31)
/* 81484DC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484DC8 | 40 82 00 0C */	bne .L_81484DD4
.L_81484DCC:
/* 81484DCC | 38 60 00 00 */	li r3, 0x0
/* 81484DD0 | 48 00 00 18 */	b .L_81484DE8
.L_81484DD4:
/* 81484DD4 | 38 00 00 00 */	li r0, 0x0
/* 81484DD8 | 90 1F 03 20 */	stw r0, 0x320(r31)
/* 81484DDC | 38 00 00 00 */	li r0, 0x0
/* 81484DE0 | B0 1F 03 24 */	sth r0, 0x324(r31)
/* 81484DE4 | 38 60 00 01 */	li r3, 0x1
.L_81484DE8:
/* 81484DE8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81484DEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81484DF0 | 7C 08 03 A6 */	mtlr r0
/* 81484DF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81484DF8 | 4E 80 00 20 */	blr
.endfn Zi8DetachOEMdata

# .text:0xD0 | 0x81484DFC | size: 0x300
.fn Zi8MatchOEMdata, global
/* 81484DFC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81484E00 | 7C 08 02 A6 */	mflr r0
/* 81484E04 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81484E08 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81484E0C | 48 17 46 9D */	bl _savegpr_21
/* 81484E10 | 7C 7C 1B 78 */	mr r28, r3
/* 81484E14 | 7C 9B 23 78 */	mr r27, r4
/* 81484E18 | 7C B6 2B 78 */	mr r22, r5
/* 81484E1C | 7C DF 33 78 */	mr r31, r6
/* 81484E20 | 7C F8 3B 78 */	mr r24, r7
/* 81484E24 | 7D 19 43 78 */	mr r25, r8
/* 81484E28 | 7D 35 4B 78 */	mr r21, r9
/* 81484E2C | 7D 5D 53 78 */	mr r29, r10
/* 81484E30 | 3A E0 00 00 */	li r23, 0x0
/* 81484E34 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 81484E38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484E3C | 40 82 00 0C */	bne .L_81484E48
/* 81484E40 | 38 00 00 00 */	li r0, 0x0
/* 81484E44 | 90 1D 03 28 */	stw r0, 0x328(r29)
.L_81484E48:
/* 81484E48 | 83 5D 03 28 */	lwz r26, 0x328(r29)
/* 81484E4C | A0 1D 03 24 */	lhz r0, 0x324(r29)
/* 81484E50 | 7C 1A 00 00 */	cmpw r26, r0
/* 81484E54 | 40 80 00 24 */	bge .L_81484E78
/* 81484E58 | 80 1D 03 20 */	lwz r0, 0x320(r29)
/* 81484E5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484E60 | 41 82 00 18 */	beq .L_81484E78
/* 81484E64 | 57 63 06 3E */	clrlwi r3, r27, 24
/* 81484E68 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 81484E6C | 57 00 04 3E */	clrlwi r0, r24, 16
/* 81484E70 | 7C 03 00 00 */	cmpw r3, r0
/* 81484E74 | 41 80 00 0C */	blt .L_81484E80
.L_81484E78:
/* 81484E78 | 38 60 00 00 */	li r3, 0x0
/* 81484E7C | 48 00 02 68 */	b .L_814850E4
.L_81484E80:
/* 81484E80 | 38 60 00 00 */	li r3, 0x0
/* 81484E84 | 57 00 04 3E */	clrlwi r0, r24, 16
/* 81484E88 | 54 00 08 3C */	slwi r0, r0, 1
/* 81484E8C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81484E90 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 81484E94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484E98 | 41 82 00 18 */	beq .L_81484EB0
/* 81484E9C | 38 60 00 01 */	li r3, 0x1
/* 81484EA0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81484EA4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81484EA8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81484EAC | 48 00 01 CC */	b .L_81485078
.L_81484EB0:
/* 81484EB0 | 38 60 00 00 */	li r3, 0x0
/* 81484EB4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81484EB8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81484EBC | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81484EC0 | 48 00 01 B8 */	b .L_81485078
.L_81484EC4:
/* 81484EC4 | 3B C0 00 00 */	li r30, 0x0
/* 81484EC8 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 81484ECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484ED0 | 41 82 00 18 */	beq .L_81484EE8
/* 81484ED4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81484ED8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81484EDC | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81484EE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484EE4 | 41 82 00 F4 */	beq .L_81484FD8
.L_81484EE8:
/* 81484EE8 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 81484EEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484EF0 | 40 82 00 F4 */	bne .L_81484FE4
/* 81484EF4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81484EF8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81484EFC | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81484F00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484F04 | 41 82 00 E0 */	beq .L_81484FE4
/* 81484F08 | 48 00 00 D0 */	b .L_81484FD8
.L_81484F0C:
/* 81484F0C | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F10 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81484F14 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 81484F18 | 41 80 00 40 */	blt .L_81484F58
/* 81484F1C | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F20 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81484F24 | 28 00 F3 7F */	cmplwi r0, 0xf37f
/* 81484F28 | 41 81 00 30 */	bgt .L_81484F58
/* 81484F2C | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F30 | 7C 7F 02 2E */	lhzx r3, r31, r0
/* 81484F34 | 56 C4 06 3E */	clrlwi r4, r22, 24
/* 81484F38 | 7F A5 EB 78 */	mr r5, r29
/* 81484F3C | 4B FD AE 65 */	bl Zi8ConvertWC2Key
/* 81484F40 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81484F44 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F48 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81484F4C | 7C 00 18 40 */	cmplw r0, r3
/* 81484F50 | 41 82 00 84 */	beq .L_81484FD4
/* 81484F54 | 48 00 00 90 */	b .L_81484FE4
.L_81484F58:
/* 81484F58 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F5C | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81484F60 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81484F64 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F68 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81484F6C | 7C 03 00 40 */	cmplw r3, r0
/* 81484F70 | 41 82 00 64 */	beq .L_81484FD4
/* 81484F74 | 88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 81484F78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484F7C | 41 82 00 68 */	beq .L_81484FE4
/* 81484F80 | 56 C0 06 3E */	clrlwi r0, r22, 24
/* 81484F84 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81484F88 | 41 82 00 5C */	beq .L_81484FE4
/* 81484F8C | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484F90 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81484F94 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81484F98 | 38 60 00 01 */	li r3, 0x1
/* 81484F9C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81484FA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81484FA4 | 56 C5 06 3E */	clrlwi r5, r22, 24
/* 81484FA8 | 7F A6 EB 78 */	mr r6, r29
/* 81484FAC | 4B FF F8 F5 */	bl Zi8ChangeCharCase
/* 81484FB0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81484FB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484FB8 | 41 82 00 2C */	beq .L_81484FE4
/* 81484FBC | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 81484FC0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81484FC4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81484FC8 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81484FCC | 7C 03 00 40 */	cmplw r3, r0
/* 81484FD0 | 40 82 00 14 */	bne .L_81484FE4
.L_81484FD4:
/* 81484FD4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81484FD8:
/* 81484FD8 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81484FDC | 7C 1E 00 00 */	cmpw r30, r0
/* 81484FE0 | 41 80 FF 2C */	blt .L_81484F0C
.L_81484FE4:
/* 81484FE4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81484FE8 | 7C 1E 00 00 */	cmpw r30, r0
/* 81484FEC | 40 80 00 48 */	bge .L_81485034
/* 81484FF0 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 81484FF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484FF8 | 41 82 00 18 */	beq .L_81485010
/* 81484FFC | 38 60 00 01 */	li r3, 0x1
/* 81485000 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81485004 | 54 00 08 3C */	slwi r0, r0, 1
/* 81485008 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8148500C | 48 00 00 14 */	b .L_81485020
.L_81485010:
/* 81485010 | 38 60 00 00 */	li r3, 0x0
/* 81485014 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81485018 | 54 00 08 3C */	slwi r0, r0, 1
/* 8148501C | 7C 7F 03 2E */	sthx r3, r31, r0
.L_81485020:
/* 81485020 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81485024 | A0 1D 03 24 */	lhz r0, 0x324(r29)
/* 81485028 | 7C 1A 00 00 */	cmpw r26, r0
/* 8148502C | 40 80 00 80 */	bge .L_814850AC
/* 81485030 | 48 00 00 48 */	b .L_81485078
.L_81485034:
/* 81485034 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81485038 | 41 82 00 18 */	beq .L_81485050
/* 8148503C | 3B 40 00 00 */	li r26, 0x0
/* 81485040 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 81485044 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 81485048 | 38 60 00 01 */	li r3, 0x1
/* 8148504C | 48 00 00 98 */	b .L_814850E4
.L_81485050:
/* 81485050 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81485054 | 93 5D 03 28 */	stw r26, 0x328(r29)
/* 81485058 | 48 00 00 08 */	b .L_81485060
.L_8148505C:
/* 8148505C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81485060:
/* 81485060 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81485064 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81485068 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148506C | 40 82 FF F0 */	bne .L_8148505C
/* 81485070 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81485074 | 48 00 00 70 */	b .L_814850E4
.L_81485078:
/* 81485078 | A0 1D 03 24 */	lhz r0, 0x324(r29)
/* 8148507C | 7C 1A 00 00 */	cmpw r26, r0
/* 81485080 | 40 80 00 2C */	bge .L_814850AC
/* 81485084 | 57 43 04 3E */	clrlwi r3, r26, 16
/* 81485088 | 7F E4 FB 78 */	mr r4, r31
/* 8148508C | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81485090 | 80 DD 03 2C */	lwz r6, 0x32c(r29)
/* 81485094 | 81 9D 03 20 */	lwz r12, 0x320(r29)
/* 81485098 | 7D 89 03 A6 */	mtctr r12
/* 8148509C | 4E 80 04 21 */	bctrl
/* 814850A0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814850A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814850A8 | 40 82 FE 1C */	bne .L_81484EC4
.L_814850AC:
/* 814850AC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814850B0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814850B4 | 40 82 00 2C */	bne .L_814850E0
/* 814850B8 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 814850BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814850C0 | 41 82 00 20 */	beq .L_814850E0
/* 814850C4 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 814850C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814850CC | 40 82 00 14 */	bne .L_814850E0
/* 814850D0 | 3B 20 00 00 */	li r25, 0x0
/* 814850D4 | 3A E0 00 01 */	li r23, 0x1
/* 814850D8 | 3B 40 00 00 */	li r26, 0x0
/* 814850DC | 4B FF FF 9C */	b .L_81485078
.L_814850E0:
/* 814850E0 | 38 60 00 00 */	li r3, 0x0
.L_814850E4:
/* 814850E4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814850E8 | 48 17 44 0D */	bl _restgpr_21
/* 814850EC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814850F0 | 7C 08 03 A6 */	mtlr r0
/* 814850F4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814850F8 | 4E 80 00 20 */	blr
.endfn Zi8MatchOEMdata
