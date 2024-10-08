.include "macros.inc"
.file "BS2Fatal.c"

# 0x810B6EE0..0x810B71C0 | size: 0x2E0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B6EE0 | size: 0x2C8
.obj FatalContext, local
	.skip 0x2C8
.endobj FatalContext

# .bss:0x2C8 | 0x810B71A8 | size: 0x18
.obj FatalParam, local
	.skip 0x18
.endobj FatalParam

# 0x81380A34..0x81381660 | size: 0xC2C
.text
.balign 4

# .text:0x0 | 0x81380A34 | size: 0x54
.fn ScreenClear, local
/* 81380A34 | 39 00 00 00 */	li r8, 0x0
/* 81380A38 | 48 00 00 44 */	b .L_81380A7C
.L_81380A3C:
/* 81380A3C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81380A40 | 54 00 F8 7E */	srwi r0, r0, 1
/* 81380A44 | 7C 09 03 A6 */	mtctr r0
/* 81380A48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81380A4C | 40 81 00 2C */	ble .L_81380A78
.L_81380A50:
/* 81380A50 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 81380A54 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 81380A58 | 98 E3 00 00 */	stb r7, 0x0(r3)
/* 81380A5C | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 81380A60 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 81380A64 | 88 06 00 02 */	lbz r0, 0x2(r6)
/* 81380A68 | 98 E3 00 02 */	stb r7, 0x2(r3)
/* 81380A6C | 98 03 00 03 */	stb r0, 0x3(r3)
/* 81380A70 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81380A74 | 42 00 FF DC */	bdnz .L_81380A50
.L_81380A78:
/* 81380A78 | 39 08 00 01 */	addi r8, r8, 0x1
.L_81380A7C:
/* 81380A7C | 7C 08 28 00 */	cmpw r8, r5
/* 81380A80 | 41 80 FF BC */	blt .L_81380A3C
/* 81380A84 | 4E 80 00 20 */	blr
.endfn ScreenClear

# .text:0x54 | 0x81380A88 | size: 0x1CC
.fn ScreenReport, local
/* 81380A88 | 94 21 FE 90 */	stwu r1, -0x170(r1)
/* 81380A8C | 7C 08 02 A6 */	mflr r0
/* 81380A90 | 90 01 01 74 */	stw r0, 0x174(r1)
/* 81380A94 | 39 61 01 70 */	addi r11, r1, 0x170
/* 81380A98 | 48 27 8A 01 */	bl _savegpr_17
/* 81380A9C | 7C 78 1B 78 */	mr r24, r3
/* 81380AA0 | 7C 99 23 78 */	mr r25, r4
/* 81380AA4 | 7C DA 33 78 */	mr r26, r6
/* 81380AA8 | 7C FB 3B 78 */	mr r27, r7
/* 81380AAC | 7D 1C 43 78 */	mr r28, r8
/* 81380AB0 | 7D 3D 4B 78 */	mr r29, r9
/* 81380AB4 | 3A 45 FF E8 */	subi r18, r5, 0x18
/* 81380AB8 | 3A 24 FF D0 */	subi r17, r4, 0x30
/* 81380ABC | 3A 80 00 FF */	li r20, 0xff
/* 81380AC0 | 3A A0 00 0F */	li r21, 0xf
/* 81380AC4 | 3A 60 00 00 */	li r19, 0x0
/* 81380AC8 | 3A E0 00 18 */	li r23, 0x18
/* 81380ACC | 3A C0 00 18 */	li r22, 0x18
.L_81380AD0:
/* 81380AD0 | 7C 12 E0 00 */	cmpw r18, r28
/* 81380AD4 | 41 80 01 68 */	blt .L_81380C3C
/* 81380AD8 | 7C 1C C9 D6 */	mullw r0, r28, r25
/* 81380ADC | 7F 7E DB 78 */	mr r30, r27
/* 81380AE0 | 7C 1B 02 14 */	add r0, r27, r0
/* 81380AE4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81380AE8 | 7F F8 02 14 */	add r31, r24, r0
/* 81380AEC | 48 00 01 44 */	b .L_81380C30
.L_81380AF0:
/* 81380AF0 | 7C 60 07 74 */	extsb r0, r3
/* 81380AF4 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81380AF8 | 40 82 00 10 */	bne .L_81380B08
/* 81380AFC | 7F 9C EA 14 */	add r28, r28, r29
/* 81380B00 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81380B04 | 4B FF FF CC */	b .L_81380AD0
.L_81380B08:
/* 81380B08 | 7C 11 F0 00 */	cmpw r17, r30
/* 81380B0C | 40 80 00 0C */	bge .L_81380B18
/* 81380B10 | 7F 9C EA 14 */	add r28, r28, r29
/* 81380B14 | 4B FF FF BC */	b .L_81380AD0
.L_81380B18:
/* 81380B18 | 38 A0 00 00 */	li r5, 0x0
/* 81380B1C | 7E C9 03 A6 */	mtctr r22
.L_81380B20:
/* 81380B20 | 54 A0 E8 FE */	srwi r0, r5, 3
/* 81380B24 | 54 A3 07 7E */	clrlwi r3, r5, 29
/* 81380B28 | 1C 00 00 18 */	mulli r0, r0, 0x18
/* 81380B2C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81380B30 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81380B34 | 7C 03 02 14 */	add r0, r3, r0
/* 81380B38 | 54 00 10 3A */	slwi r0, r0, 2
/* 81380B3C | 7E 64 01 6E */	stwux r19, r4, r0
/* 81380B40 | 92 64 00 20 */	stw r19, 0x20(r4)
/* 81380B44 | 92 64 00 40 */	stw r19, 0x40(r4)
/* 81380B48 | 42 00 FF D8 */	bdnz .L_81380B20
/* 81380B4C | 7D 43 53 78 */	mr r3, r10
/* 81380B50 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81380B54 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81380B58 | 38 A0 00 00 */	li r5, 0x0
/* 81380B5C | 38 C0 00 06 */	li r6, 0x6
/* 81380B60 | 48 1A FA 95 */	bl fn_815305F4
/* 81380B64 | 7C 6A 1B 78 */	mr r10, r3
/* 81380B68 | 38 A0 00 00 */	li r5, 0x0
.L_81380B6C:
/* 81380B6C | 54 A0 E8 FE */	srwi r0, r5, 3
/* 81380B70 | 54 A4 07 7E */	clrlwi r4, r5, 29
/* 81380B74 | 1C 00 00 18 */	mulli r0, r0, 0x18
/* 81380B78 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81380B7C | 38 C0 00 00 */	li r6, 0x0
/* 81380B80 | 7C 04 02 14 */	add r0, r4, r0
/* 81380B84 | 54 04 10 3A */	slwi r4, r0, 2
/* 81380B88 | 7C 05 C9 D6 */	mullw r0, r5, r25
/* 81380B8C | 7C 63 22 14 */	add r3, r3, r4
/* 81380B90 | 7E E9 03 A6 */	mtctr r23
.L_81380B94:
/* 81380B94 | 54 C7 10 34 */	extlwi r7, r6, 27, 2
/* 81380B98 | 54 C4 07 7E */	clrlwi r4, r6, 29
/* 81380B9C | 20 84 00 07 */	subfic r4, r4, 0x7
/* 81380BA0 | 7C E3 38 2E */	lwzx r7, r3, r7
/* 81380BA4 | 54 84 10 3A */	slwi r4, r4, 2
/* 81380BA8 | 7C E4 24 30 */	srw r4, r7, r4
/* 81380BAC | 54 88 07 3F */	clrlwi. r8, r4, 28
/* 81380BB0 | 41 82 00 5C */	beq .L_81380C0C
/* 81380BB4 | 88 FA 00 00 */	lbz r7, 0x0(r26)
/* 81380BB8 | 7C 9E 32 14 */	add r4, r30, r6
/* 81380BBC | 7D 26 02 14 */	add r9, r6, r0
/* 81380BC0 | 7C E7 41 D6 */	mullw r7, r7, r8
/* 81380BC4 | 54 84 07 FF */	clrlwi. r4, r4, 31
/* 81380BC8 | 55 28 08 3C */	slwi r8, r9, 1
/* 81380BCC | 7C 9F 42 14 */	add r4, r31, r8
/* 81380BD0 | 1C E7 00 EF */	mulli r7, r7, 0xef
/* 81380BD4 | 7C E7 A3 D6 */	divw r7, r7, r20
/* 81380BD8 | 7C E7 AB D6 */	divw r7, r7, r21
/* 81380BDC | 38 E7 00 10 */	addi r7, r7, 0x10
/* 81380BE0 | 7C FF 41 AE */	stbx r7, r31, r8
/* 81380BE4 | 41 82 00 18 */	beq .L_81380BFC
/* 81380BE8 | 89 1A 00 01 */	lbz r8, 0x1(r26)
/* 81380BEC | 88 FA 00 02 */	lbz r7, 0x2(r26)
/* 81380BF0 | 99 04 FF FF */	stb r8, -0x1(r4)
/* 81380BF4 | 98 E4 00 01 */	stb r7, 0x1(r4)
/* 81380BF8 | 48 00 00 14 */	b .L_81380C0C
.L_81380BFC:
/* 81380BFC | 89 1A 00 02 */	lbz r8, 0x2(r26)
/* 81380C00 | 88 FA 00 01 */	lbz r7, 0x1(r26)
/* 81380C04 | 99 04 FF FF */	stb r8, -0x1(r4)
/* 81380C08 | 98 E4 00 01 */	stb r7, 0x1(r4)
.L_81380C0C:
/* 81380C0C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81380C10 | 42 00 FF 84 */	bdnz .L_81380B94
/* 81380C14 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81380C18 | 28 05 00 18 */	cmplwi r5, 0x18
/* 81380C1C | 41 80 FF 50 */	blt .L_81380B6C
/* 81380C20 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81380C24 | 54 60 08 3C */	slwi r0, r3, 1
/* 81380C28 | 7F DE 1A 14 */	add r30, r30, r3
/* 81380C2C | 7F FF 02 14 */	add r31, r31, r0
.L_81380C30:
/* 81380C30 | 88 6A 00 00 */	lbz r3, 0x0(r10)
/* 81380C34 | 7C 60 07 75 */	extsb. r0, r3
/* 81380C38 | 40 82 FE B8 */	bne .L_81380AF0
.L_81380C3C:
/* 81380C3C | 39 61 01 70 */	addi r11, r1, 0x170
/* 81380C40 | 48 27 88 A5 */	bl _restgpr_17
/* 81380C44 | 80 01 01 74 */	lwz r0, 0x174(r1)
/* 81380C48 | 7C 08 03 A6 */	mtlr r0
/* 81380C4C | 38 21 01 70 */	addi r1, r1, 0x170
/* 81380C50 | 4E 80 00 20 */	blr
.endfn ScreenReport

# .text:0x220 | 0x81380C54 | size: 0xFC
.fn ConfigureVideo, local
/* 81380C54 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81380C58 | 7C 08 02 A6 */	mflr r0
/* 81380C5C | 38 C0 01 E0 */	li r6, 0x1e0
/* 81380C60 | 38 A0 00 28 */	li r5, 0x28
/* 81380C64 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81380C68 | 38 00 02 80 */	li r0, 0x280
/* 81380C6C | B0 61 00 0C */	sth r3, 0xc(r1)
/* 81380C70 | B0 C1 00 0E */	sth r6, 0xe(r1)
/* 81380C74 | B0 81 00 10 */	sth r4, 0x10(r1)
/* 81380C78 | B0 A1 00 12 */	sth r5, 0x12(r1)
/* 81380C7C | B0 01 00 16 */	sth r0, 0x16(r1)
/* 81380C80 | B0 81 00 18 */	sth r4, 0x18(r1)
/* 81380C84 | 48 1B D5 B5 */	bl VIGetTvFormat
/* 81380C88 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81380C8C | 41 82 00 24 */	beq .L_81380CB0
/* 81380C90 | 40 80 00 14 */	bge .L_81380CA4
/* 81380C94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81380C98 | 41 82 00 18 */	beq .L_81380CB0
/* 81380C9C | 40 80 00 70 */	bge .L_81380D0C
/* 81380CA0 | 48 00 00 84 */	b .L_81380D24
.L_81380CA4:
/* 81380CA4 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81380CA8 | 41 82 00 48 */	beq .L_81380CF0
/* 81380CAC | 48 00 00 78 */	b .L_81380D24
.L_81380CB0:
/* 81380CB0 | 3C 60 CC 00 */	lis r3, 0xcc00
/* 81380CB4 | A0 03 20 6C */	lhz r0, 0x206c(r3)
/* 81380CB8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 81380CBC | 41 82 00 1C */	beq .L_81380CD8
/* 81380CC0 | 38 00 00 00 */	li r0, 0x0
/* 81380CC4 | 38 60 00 02 */	li r3, 0x2
/* 81380CC8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81380CCC | B0 01 00 14 */	sth r0, 0x14(r1)
/* 81380CD0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81380CD4 | 48 00 00 50 */	b .L_81380D24
.L_81380CD8:
/* 81380CD8 | 38 60 00 00 */	li r3, 0x0
/* 81380CDC | 38 00 00 01 */	li r0, 0x1
/* 81380CE0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81380CE4 | B0 61 00 14 */	sth r3, 0x14(r1)
/* 81380CE8 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81380CEC | 48 00 00 38 */	b .L_81380D24
.L_81380CF0:
/* 81380CF0 | 38 80 00 14 */	li r4, 0x14
/* 81380CF4 | 38 60 00 00 */	li r3, 0x0
/* 81380CF8 | 38 00 00 01 */	li r0, 0x1
/* 81380CFC | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81380D00 | B0 61 00 14 */	sth r3, 0x14(r1)
/* 81380D04 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81380D08 | 48 00 00 1C */	b .L_81380D24
.L_81380D0C:
/* 81380D0C | 38 80 00 04 */	li r4, 0x4
/* 81380D10 | 38 60 00 2F */	li r3, 0x2f
/* 81380D14 | 38 00 00 01 */	li r0, 0x1
/* 81380D18 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81380D1C | B0 61 00 14 */	sth r3, 0x14(r1)
/* 81380D20 | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_81380D24:
/* 81380D24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81380D28 | 48 1B C8 41 */	bl fn_8153D568
/* 81380D2C | 38 60 00 00 */	li r3, 0x0
/* 81380D30 | 38 80 00 00 */	li r4, 0x0
/* 81380D34 | 38 A0 02 80 */	li r5, 0x280
/* 81380D38 | 38 C0 01 E0 */	li r6, 0x1e0
/* 81380D3C | 48 1B CF 11 */	bl fn_8153DC4C
/* 81380D40 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81380D44 | 7C 08 03 A6 */	mtlr r0
/* 81380D48 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81380D4C | 4E 80 00 20 */	blr
.endfn ConfigureVideo

# .text:0x31C | 0x81380D50 | size: 0x1CC
.fn RGB2YUV, local
/* 81380D50 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81380D54 | 3C 00 43 30 */	lis r0, 0x4330
/* 81380D58 | 88 A3 00 02 */	lbz r5, 0x2(r3)
/* 81380D5C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81380D60 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81380D64 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81380D68 | C8 22 83 C0 */	lfd f1, lbl_816947C0@sda21(r0)
/* 81380D6C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81380D70 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 81380D74 | EC 60 08 28 */	fsubs f3, f0, f1
/* 81380D78 | C0 02 83 90 */	lfs f0, lbl_81694790@sda21(r0)
/* 81380D7C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81380D80 | C0 A2 83 94 */	lfs f5, lbl_81694794@sda21(r0)
/* 81380D84 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81380D88 | EC 00 00 F2 */	fmuls f0, f0, f3
/* 81380D8C | C1 22 83 A0 */	lfs f9, lbl_816947A0@sda21(r0)
/* 81380D90 | C8 41 00 18 */	lfd f2, 0x18(r1)
/* 81380D94 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81380D98 | EC C2 08 28 */	fsubs f6, f2, f1
/* 81380D9C | C0 42 83 98 */	lfs f2, lbl_81694798@sda21(r0)
/* 81380DA0 | C8 61 00 10 */	lfd f3, 0x10(r1)
/* 81380DA4 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 81380DA8 | EC 83 08 28 */	fsubs f4, f3, f1
/* 81380DAC | C8 61 00 18 */	lfd f3, 0x18(r1)
/* 81380DB0 | EC C5 01 B2 */	fmuls f6, f5, f6
/* 81380DB4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81380DB8 | EC A2 01 32 */	fmuls f5, f2, f4
/* 81380DBC | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 81380DC0 | EC 83 08 28 */	fsubs f4, f3, f1
/* 81380DC4 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81380DC8 | ED 46 28 2A */	fadds f10, f6, f5
/* 81380DCC | C0 A2 83 A4 */	lfs f5, lbl_816947A4@sda21(r0)
/* 81380DD0 | C8 61 00 18 */	lfd f3, 0x18(r1)
/* 81380DD4 | EC C2 08 28 */	fsubs f6, f2, f1
/* 81380DD8 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81380DDC | ED 09 01 32 */	fmuls f8, f9, f4
/* 81380DE0 | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 81380DE4 | EC 83 08 28 */	fsubs f4, f3, f1
/* 81380DE8 | EC E5 01 B2 */	fmuls f7, f5, f6
/* 81380DEC | C0 62 83 A8 */	lfs f3, lbl_816947A8@sda21(r0)
/* 81380DF0 | EC A2 08 28 */	fsubs f5, f2, f1
/* 81380DF4 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81380DF8 | EC C3 01 32 */	fmuls f6, f3, f4
/* 81380DFC | C8 41 00 18 */	lfd f2, 0x18(r1)
/* 81380E00 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81380E04 | EC A9 01 72 */	fmuls f5, f9, f5
/* 81380E08 | EC 82 08 28 */	fsubs f4, f2, f1
/* 81380E0C | C0 62 83 AC */	lfs f3, lbl_816947AC@sda21(r0)
/* 81380E10 | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 81380E14 | EC C7 30 28 */	fsubs f6, f7, f6
/* 81380E18 | C0 E2 83 8C */	lfs f7, lbl_8169478C@sda21(r0)
/* 81380E1C | EC 63 01 32 */	fmuls f3, f3, f4
/* 81380E20 | EC 42 08 28 */	fsubs f2, f2, f1
/* 81380E24 | C0 22 83 B0 */	lfs f1, lbl_816947B0@sda21(r0)
/* 81380E28 | EC 80 50 2A */	fadds f4, f0, f10
/* 81380E2C | EC 65 18 28 */	fsubs f3, f5, f3
/* 81380E30 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 81380E34 | C0 42 83 9C */	lfs f2, lbl_8169479C@sda21(r0)
/* 81380E38 | EC A7 20 2A */	fadds f5, f7, f4
/* 81380E3C | C0 82 83 88 */	lfs f4, lbl_81694788@sda21(r0)
/* 81380E40 | EC 28 30 2A */	fadds f1, f8, f6
/* 81380E44 | EC 03 00 28 */	fsubs f0, f3, f0
/* 81380E48 | EC A4 28 2A */	fadds f5, f4, f5
/* 81380E4C | C0 62 83 B4 */	lfs f3, lbl_816947B4@sda21(r0)
/* 81380E50 | EC 22 08 2A */	fadds f1, f2, f1
/* 81380E54 | EC 02 00 2A */	fadds f0, f2, f0
/* 81380E58 | FC 05 18 40 */	fcmpo cr0, f5, f3
/* 81380E5C | EC 44 08 2A */	fadds f2, f4, f1
/* 81380E60 | EC 84 00 2A */	fadds f4, f4, f0
/* 81380E64 | 40 81 00 08 */	ble .L_81380E6C
/* 81380E68 | 48 00 00 18 */	b .L_81380E80
.L_81380E6C:
/* 81380E6C | FC 05 38 40 */	fcmpo cr0, f5, f7
/* 81380E70 | 40 80 00 08 */	bge .L_81380E78
/* 81380E74 | 48 00 00 08 */	b .L_81380E7C
.L_81380E78:
/* 81380E78 | FC E0 28 90 */	fmr f7, f5
.L_81380E7C:
/* 81380E7C | FC 60 38 90 */	fmr f3, f7
.L_81380E80:
/* 81380E80 | FC 00 18 1E */	fctiwz f0, f3
/* 81380E84 | C0 22 83 B8 */	lfs f1, lbl_816947B8@sda21(r0)
/* 81380E88 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 81380E8C | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81380E90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81380E94 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81380E98 | 40 81 00 08 */	ble .L_81380EA0
/* 81380E9C | 48 00 00 18 */	b .L_81380EB4
.L_81380EA0:
/* 81380EA0 | C0 22 83 8C */	lfs f1, lbl_8169478C@sda21(r0)
/* 81380EA4 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 81380EA8 | 40 80 00 08 */	bge .L_81380EB0
/* 81380EAC | 48 00 00 08 */	b .L_81380EB4
.L_81380EB0:
/* 81380EB0 | FC 20 10 90 */	fmr f1, f2
.L_81380EB4:
/* 81380EB4 | FC 00 08 1E */	fctiwz f0, f1
/* 81380EB8 | C0 22 83 B8 */	lfs f1, lbl_816947B8@sda21(r0)
/* 81380EBC | FC 04 08 40 */	fcmpo cr0, f4, f1
/* 81380EC0 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81380EC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81380EC8 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81380ECC | 40 81 00 08 */	ble .L_81380ED4
/* 81380ED0 | 48 00 00 18 */	b .L_81380EE8
.L_81380ED4:
/* 81380ED4 | C0 22 83 8C */	lfs f1, lbl_8169478C@sda21(r0)
/* 81380ED8 | FC 04 08 40 */	fcmpo cr0, f4, f1
/* 81380EDC | 40 80 00 08 */	bge .L_81380EE4
/* 81380EE0 | 48 00 00 08 */	b .L_81380EE8
.L_81380EE4:
/* 81380EE4 | FC 20 20 90 */	fmr f1, f4
.L_81380EE8:
/* 81380EE8 | FC 00 08 1E */	fctiwz f0, f1
/* 81380EEC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81380EF0 | 38 80 00 00 */	li r4, 0x0
/* 81380EF4 | 54 03 C0 0E */	slwi r3, r0, 24
/* 81380EF8 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81380EFC | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81380F00 | 50 03 82 1E */	rlwimi r3, r0, 16, 8, 15
/* 81380F04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81380F08 | 98 81 00 0B */	stb r4, 0xb(r1)
/* 81380F0C | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 81380F10 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81380F14 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81380F18 | 4E 80 00 20 */	blr
.endfn RGB2YUV

# .text:0x4E8 | 0x81380F1C | size: 0x1F8
.fn OSFatal, global
/* 81380F1C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81380F20 | 7C 08 02 A6 */	mflr r0
/* 81380F24 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81380F28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81380F2C | 48 27 85 89 */	bl _savegpr_24
/* 81380F30 | 7C 7D 1B 78 */	mr r29, r3
/* 81380F34 | 7C 9E 23 78 */	mr r30, r4
/* 81380F38 | 7C BF 2B 78 */	mr r31, r5
/* 81380F3C | 48 1A F9 49 */	bl OSDisableInterrupts
/* 81380F40 | 48 1B 30 6D */	bl fn_81533FAC
/* 81380F44 | 3F 00 81 0B */	lis r24, FatalContext@ha
/* 81380F48 | 38 78 6E E0 */	addi r3, r24, FatalContext@l
/* 81380F4C | 48 1A D2 1D */	bl fn_8152E168
/* 81380F50 | 38 78 6E E0 */	addi r3, r24, FatalContext@l
/* 81380F54 | 48 1A CF ED */	bl fn_8152DF40
/* 81380F58 | 48 1A C8 D1 */	bl fn_8152D828
/* 81380F5C | 48 1B BB 45 */	bl fn_8153CAA0
/* 81380F60 | 38 60 00 80 */	li r3, 0x80
/* 81380F64 | 48 1A FD 31 */	bl fn_81530C94
/* 81380F68 | 38 60 00 01 */	li r3, 0x1
/* 81380F6C | 48 1B D1 BD */	bl VISetBlack
/* 81380F70 | 48 1B D0 31 */	bl VIFlush
/* 81380F74 | 38 60 00 00 */	li r3, 0x0
/* 81380F78 | 48 1B B7 79 */	bl fn_8153C6F0
/* 81380F7C | 38 60 00 00 */	li r3, 0x0
/* 81380F80 | 48 1B B7 B5 */	bl fn_8153C734
/* 81380F84 | 48 1A F9 15 */	bl fn_81530898
/* 81380F88 | 48 1B D2 19 */	bl fn_8153E1A0
/* 81380F8C | 7C 78 1B 78 */	mr r24, r3
.L_81380F90:
/* 81380F90 | 48 1B D2 11 */	bl fn_8153E1A0
/* 81380F94 | 7C 18 18 50 */	subf r0, r24, r3
/* 81380F98 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81380F9C | 41 80 FF F4 */	blt .L_81380F90
/* 81380FA0 | 48 1B 4C E1 */	bl OSGetTime
/* 81380FA4 | 7C 98 23 78 */	mr r24, r4
/* 81380FA8 | 7C 79 1B 78 */	mr r25, r3
/* 81380FAC | 3F 40 80 00 */	lis r26, 0x8000
/* 81380FB0 | 3B 60 03 E8 */	li r27, 0x3e8
/* 81380FB4 | 3B 80 00 00 */	li r28, 0x0
.L_81380FB8:
/* 81380FB8 | 38 60 00 00 */	li r3, 0x0
/* 81380FBC | 38 80 00 00 */	li r4, 0x0
/* 81380FC0 | 48 1B 12 29 */	bl fn_815321E8
/* 81380FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81380FC8 | 40 82 00 3C */	bne .L_81381004
/* 81380FCC | 48 1B 4C B5 */	bl OSGetTime
/* 81380FD0 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 81380FD4 | 7C D8 20 10 */	subfc r6, r24, r4
/* 81380FD8 | 7C B9 19 10 */	subfe r5, r25, r3
/* 81380FDC | 6F 84 80 00 */	xoris r4, r28, 0x8000
/* 81380FE0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81380FE4 | 7C 60 DB 96 */	divwu r3, r0, r27
/* 81380FE8 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 81380FEC | 1C 63 03 E8 */	mulli r3, r3, 0x3e8
/* 81380FF0 | 7C 63 30 10 */	subfc r3, r3, r6
/* 81380FF4 | 7C 84 01 10 */	subfe r4, r4, r0
/* 81380FF8 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81380FFC | 7C 84 00 D1 */	neg. r4, r4
/* 81381000 | 40 82 FF B8 */	bne .L_81380FB8
.L_81381004:
/* 81381004 | 48 1A F8 81 */	bl OSDisableInterrupts
/* 81381008 | 38 60 00 01 */	li r3, 0x1
/* 8138100C | 38 80 00 00 */	li r4, 0x0
/* 81381010 | 48 1B 11 D9 */	bl fn_815321E8
/* 81381014 | 38 60 00 00 */	li r3, 0x0
/* 81381018 | 38 80 00 00 */	li r4, 0x0
/* 8138101C | 48 1B 7E 25 */	bl fn_81538E40
/* 81381020 | 38 60 00 02 */	li r3, 0x2
/* 81381024 | 38 80 00 00 */	li r4, 0x0
/* 81381028 | 48 1B 7E 19 */	bl fn_81538E40
/* 8138102C | 48 00 00 1C */	b .L_81381048
.L_81381030:
/* 81381030 | 38 60 00 00 */	li r3, 0x0
/* 81381034 | 48 1B 7B 91 */	bl fn_81538BC4
/* 81381038 | 38 60 00 00 */	li r3, 0x0
/* 8138103C | 48 1B 83 C9 */	bl fn_81539404
/* 81381040 | 38 60 00 00 */	li r3, 0x0
/* 81381044 | 48 1B 8B 21 */	bl fn_81539B64
.L_81381048:
/* 81381048 | 38 60 00 00 */	li r3, 0x0
/* 8138104C | 38 80 00 01 */	li r4, 0x1
/* 81381050 | 38 A0 00 00 */	li r5, 0x0
/* 81381054 | 48 1B 8A 15 */	bl fn_81539A68
/* 81381058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138105C | 41 82 FF D4 */	beq .L_81381030
/* 81381060 | 38 60 00 00 */	li r3, 0x0
/* 81381064 | 48 1B 8B 01 */	bl fn_81539B64
/* 81381068 | 3C 60 CD 00 */	lis r3, 0xcd00
.L_8138106C:
/* 8138106C | 80 03 68 0C */	lwz r0, 0x680c(r3)
/* 81381070 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81381074 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81381078 | 41 82 FF F4 */	beq .L_8138106C
/* 8138107C | 3C 80 81 53 */	lis r4, fn_8152C71C@ha
/* 81381080 | 38 60 00 08 */	li r3, 0x8
/* 81381084 | 38 84 C7 1C */	addi r4, r4, fn_8152C71C@l
/* 81381088 | 48 1A B5 D5 */	bl fn_8152C65C
/* 8138108C | 48 1C 31 75 */	bl GXAbortFrame
/* 81381090 | 3C 60 80 20 */	lis r3, 0x8020
/* 81381094 | 48 1A C3 3D */	bl fn_8152D3D0
/* 81381098 | 3C 60 80 80 */	lis r3, 0x8080
/* 8138109C | 48 1A C3 1D */	bl fn_8152D3B8
/* 813810A0 | 89 3D 00 00 */	lbz r9, 0x0(r29)
/* 813810A4 | 3D 40 81 0B */	lis r10, FatalParam@ha
/* 813810A8 | 89 1D 00 01 */	lbz r8, 0x1(r29)
/* 813810AC | 9D 2A 71 A8 */	stbu r9, FatalParam@l(r10)
/* 813810B0 | 88 FD 00 02 */	lbz r7, 0x2(r29)
/* 813810B4 | 88 DD 00 03 */	lbz r6, 0x3(r29)
/* 813810B8 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 813810BC | 88 9E 00 01 */	lbz r4, 0x1(r30)
/* 813810C0 | 88 7E 00 02 */	lbz r3, 0x2(r30)
/* 813810C4 | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 813810C8 | 99 0A 00 01 */	stb r8, 0x1(r10)
/* 813810CC | 98 EA 00 02 */	stb r7, 0x2(r10)
/* 813810D0 | 98 CA 00 03 */	stb r6, 0x3(r10)
/* 813810D4 | 98 AA 00 04 */	stb r5, 0x4(r10)
/* 813810D8 | 98 8A 00 05 */	stb r4, 0x5(r10)
/* 813810DC | 98 6A 00 06 */	stb r3, 0x6(r10)
/* 813810E0 | 98 0A 00 07 */	stb r0, 0x7(r10)
/* 813810E4 | 93 EA 00 08 */	stw r31, 0x8(r10)
/* 813810E8 | 48 1A C2 A1 */	bl fn_8152D388
/* 813810EC | 3C A0 81 38 */	lis r5, BS2Fatal_81381114@ha
/* 813810F0 | 7C 64 1B 78 */	mr r4, r3
/* 813810F4 | 38 65 11 14 */	addi r3, r5, BS2Fatal_81381114@l
/* 813810F8 | 48 1A D0 11 */	bl fn_8152E108
/* 813810FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81381100 | 48 27 84 01 */	bl _restgpr_24
/* 81381104 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81381108 | 7C 08 03 A6 */	mtlr r0
/* 8138110C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81381110 | 4E 80 00 20 */	blr
.endfn OSFatal

# .text:0x6E0 | 0x81381114 | size: 0x1D8
.fn BS2Fatal_81381114, global
/* 81381114 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81381118 | 7C 08 02 A6 */	mflr r0
/* 8138111C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81381120 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81381124 | 48 27 83 A1 */	bl _savegpr_28
/* 81381128 | 48 1A F7 71 */	bl fn_81530898
/* 8138112C | 3F E0 81 0B */	lis r31, FatalParam@ha
/* 81381130 | 3B FF 71 A8 */	addi r31, r31, FatalParam@l
/* 81381134 | 83 DF 00 08 */	lwz r30, 0x8(r31)
/* 81381138 | 7F C3 F3 78 */	mr r3, r30
/* 8138113C | 48 27 7D C1 */	bl strlen
/* 81381140 | 3B 83 00 01 */	addi r28, r3, 0x1
/* 81381144 | 38 80 00 20 */	li r4, 0x20
/* 81381148 | 7F 83 E3 78 */	mr r3, r28
/* 8138114C | 48 1A C2 8D */	bl fn_8152D3D8
/* 81381150 | 7F C4 F3 78 */	mr r4, r30
/* 81381154 | 7F 85 E3 78 */	mr r5, r28
/* 81381158 | 48 27 CF 59 */	bl memmove
/* 8138115C | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 81381160 | 3C 60 00 0A */	lis r3, 0xa
/* 81381164 | 38 63 10 04 */	addi r3, r3, 0x1004
/* 81381168 | 38 80 00 20 */	li r4, 0x20
/* 8138116C | 48 1A C2 6D */	bl fn_8152D3D8
/* 81381170 | 7C 7D 1B 78 */	mr r29, r3
/* 81381174 | 48 1A C2 2D */	bl fn_8152D3A0
/* 81381178 | 7C 64 1B 78 */	mr r4, r3
/* 8138117C | 7F A3 EB 78 */	mr r3, r29
/* 81381180 | 48 1A F0 95 */	bl fn_81530214
/* 81381184 | 3C 60 00 09 */	lis r3, 0x9
/* 81381188 | 38 80 00 20 */	li r4, 0x20
/* 8138118C | 38 63 60 00 */	addi r3, r3, 0x6000
/* 81381190 | 48 1A C2 49 */	bl fn_8152D3D8
/* 81381194 | 88 DF 00 04 */	lbz r6, 0x4(r31)
/* 81381198 | 7C 7C 1B 78 */	mr r28, r3
/* 8138119C | 88 BF 00 05 */	lbz r5, 0x5(r31)
/* 813811A0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813811A4 | 88 9F 00 06 */	lbz r4, 0x6(r31)
/* 813811A8 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 813811AC | 98 C1 00 10 */	stb r6, 0x10(r1)
/* 813811B0 | 98 A1 00 11 */	stb r5, 0x11(r1)
/* 813811B4 | 98 81 00 12 */	stb r4, 0x12(r1)
/* 813811B8 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813811BC | 4B FF FB 95 */	bl RGB2YUV
/* 813811C0 | 54 60 46 3E */	srwi r0, r3, 24
/* 813811C4 | 98 61 00 17 */	stb r3, 0x17(r1)
/* 813811C8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813811CC | 38 80 02 80 */	li r4, 0x280
/* 813811D0 | 98 01 00 14 */	stb r0, 0x14(r1)
/* 813811D4 | 54 60 86 3E */	extrwi r0, r3, 8, 8
/* 813811D8 | 38 A0 01 E0 */	li r5, 0x1e0
/* 813811DC | 98 01 00 15 */	stb r0, 0x15(r1)
/* 813811E0 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 813811E4 | 7F 83 E3 78 */	mr r3, r28
/* 813811E8 | 98 01 00 16 */	stb r0, 0x16(r1)
/* 813811EC | 4B FF F8 49 */	bl ScreenClear
/* 813811F0 | 7F 83 E3 78 */	mr r3, r28
/* 813811F4 | 48 1B CE C1 */	bl fn_8153E0B4
/* 813811F8 | 38 60 02 80 */	li r3, 0x280
/* 813811FC | 38 80 01 E0 */	li r4, 0x1e0
/* 81381200 | 4B FF FA 55 */	bl ConfigureVideo
/* 81381204 | 48 1B CD 9D */	bl VIFlush
/* 81381208 | 48 1B CF 99 */	bl fn_8153E1A0
/* 8138120C | 7C 7E 1B 78 */	mr r30, r3
.L_81381210:
/* 81381210 | 48 1B CF 91 */	bl fn_8153E1A0
/* 81381214 | 7C 1E 18 50 */	subf r0, r30, r3
/* 81381218 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138121C | 41 80 FF F4 */	blt .L_81381210
/* 81381220 | 88 DF 00 00 */	lbz r6, 0x0(r31)
/* 81381224 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81381228 | 88 BF 00 01 */	lbz r5, 0x1(r31)
/* 8138122C | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 81381230 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 81381234 | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 81381238 | 98 A1 00 09 */	stb r5, 0x9(r1)
/* 8138123C | 98 81 00 0A */	stb r4, 0xa(r1)
/* 81381240 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81381244 | 4B FF FB 0D */	bl RGB2YUV
/* 81381248 | 54 60 46 3E */	srwi r0, r3, 24
/* 8138124C | 98 61 00 0F */	stb r3, 0xf(r1)
/* 81381250 | 81 5F 00 08 */	lwz r10, 0x8(r31)
/* 81381254 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81381258 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8138125C | 54 60 86 3E */	extrwi r0, r3, 8, 8
/* 81381260 | 38 80 02 80 */	li r4, 0x280
/* 81381264 | 38 A0 01 E0 */	li r5, 0x1e0
/* 81381268 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8138126C | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 81381270 | 7F 83 E3 78 */	mr r3, r28
/* 81381274 | 38 E0 00 30 */	li r7, 0x30
/* 81381278 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8138127C | 39 00 00 64 */	li r8, 0x64
/* 81381280 | A1 3D 00 0E */	lhz r9, 0xe(r29)
/* 81381284 | 4B FF F8 05 */	bl ScreenReport
/* 81381288 | 3C 80 00 09 */	lis r4, 0x9
/* 8138128C | 7F 83 E3 78 */	mr r3, r28
/* 81381290 | 38 84 60 00 */	addi r4, r4, 0x6000
/* 81381294 | 48 1A C6 A1 */	bl DCFlushRange
/* 81381298 | 38 60 00 00 */	li r3, 0x0
/* 8138129C | 48 1B CE 8D */	bl VISetBlack
/* 813812A0 | 48 1B CD 01 */	bl VIFlush
/* 813812A4 | 48 1B CE FD */	bl fn_8153E1A0
/* 813812A8 | 7C 7E 1B 78 */	mr r30, r3
.L_813812AC:
/* 813812AC | 48 1B CE F5 */	bl fn_8153E1A0
/* 813812B0 | 7C 1E 18 50 */	subf r0, r30, r3
/* 813812B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813812B8 | 41 80 FF F4 */	blt .L_813812AC
/* 813812BC | 48 1A F5 C9 */	bl OSDisableInterrupts
/* 813812C0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813812C4 | 38 6D 85 78 */	li r3, lbl_816965B8@sda21
/* 813812C8 | 4C C6 31 82 */	crclr cr1eq
/* 813812CC | 48 1A D3 D5 */	bl OSReport
/* 813812D0 | 48 1A A0 B1 */	bl PPCHalt
/* 813812D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813812D8 | 48 27 82 39 */	bl _restgpr_28
/* 813812DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813812E0 | 7C 08 03 A6 */	mtlr r0
/* 813812E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813812E8 | 4E 80 00 20 */	blr
.endfn BS2Fatal_81381114

# .text:0x8B8 | 0x813812EC | size: 0xF0
.fn __DVDShowFatalMessage, global
/* 813812EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813812F0 | 7C 08 02 A6 */	mflr r0
/* 813812F4 | 38 C0 00 00 */	li r6, 0x0
/* 813812F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813812FC | 88 A2 83 C8 */	lbz r5, lbl_816947C8@sda21(r0)
/* 81381300 | 88 82 83 C9 */	lbz r4, lbl_816947C9@sda21(r0)
/* 81381304 | 88 62 83 CA */	lbz r3, lbl_816947CA@sda21(r0)
/* 81381308 | 88 02 83 CB */	lbz r0, lbl_816947CB@sda21(r0)
/* 8138130C | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 81381310 | 98 C1 00 15 */	stb r6, 0x15(r1)
/* 81381314 | 98 C1 00 16 */	stb r6, 0x16(r1)
/* 81381318 | 98 C1 00 17 */	stb r6, 0x17(r1)
/* 8138131C | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 81381320 | 98 81 00 11 */	stb r4, 0x11(r1)
/* 81381324 | 98 61 00 12 */	stb r3, 0x12(r1)
/* 81381328 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 8138132C | 48 1E 8D D9 */	bl SCGetLanguage
/* 81381330 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81381334 | 40 82 00 10 */	bne .L_81381344
/* 81381338 | 38 60 00 01 */	li r3, 0x1
/* 8138133C | 48 1A EB 59 */	bl fn_8152FE94
/* 81381340 | 48 00 00 0C */	b .L_8138134C
.L_81381344:
/* 81381344 | 38 60 00 00 */	li r3, 0x0
/* 81381348 | 48 1A EB 4D */	bl fn_8152FE94
.L_8138134C:
/* 8138134C | 48 1E 8D B9 */	bl SCGetLanguage
/* 81381350 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81381354 | 28 00 00 09 */	cmplwi r0, 0x9
/* 81381358 | 40 81 00 14 */	ble .L_8138136C
/* 8138135C | 3C 60 81 61 */	lis r3, lbl_8160F628@ha
/* 81381360 | 38 63 F6 28 */	addi r3, r3, lbl_8160F628@l
/* 81381364 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81381368 | 48 00 00 18 */	b .L_81381380
.L_8138136C:
/* 8138136C | 48 1E 8D 99 */	bl SCGetLanguage
/* 81381370 | 3C 80 81 61 */	lis r4, lbl_8160F628@ha
/* 81381374 | 54 60 15 BA */	clrlslwi r0, r3, 24, 2
/* 81381378 | 38 84 F6 28 */	addi r4, r4, lbl_8160F628@l
/* 8138137C | 7C A4 00 2E */	lwzx r5, r4, r0
.L_81381380:
/* 81381380 | 89 81 00 14 */	lbz r12, 0x14(r1)
/* 81381384 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81381388 | 89 61 00 15 */	lbz r11, 0x15(r1)
/* 8138138C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81381390 | 89 41 00 16 */	lbz r10, 0x16(r1)
/* 81381394 | 89 21 00 17 */	lbz r9, 0x17(r1)
/* 81381398 | 89 01 00 10 */	lbz r8, 0x10(r1)
/* 8138139C | 88 E1 00 11 */	lbz r7, 0x11(r1)
/* 813813A0 | 88 C1 00 12 */	lbz r6, 0x12(r1)
/* 813813A4 | 88 01 00 13 */	lbz r0, 0x13(r1)
/* 813813A8 | 99 81 00 08 */	stb r12, 0x8(r1)
/* 813813AC | 99 61 00 09 */	stb r11, 0x9(r1)
/* 813813B0 | 99 41 00 0A */	stb r10, 0xa(r1)
/* 813813B4 | 99 21 00 0B */	stb r9, 0xb(r1)
/* 813813B8 | 99 01 00 0C */	stb r8, 0xc(r1)
/* 813813BC | 98 E1 00 0D */	stb r7, 0xd(r1)
/* 813813C0 | 98 C1 00 0E */	stb r6, 0xe(r1)
/* 813813C4 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813813C8 | 4B FF FB 55 */	bl OSFatal
/* 813813CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813813D0 | 7C 08 03 A6 */	mtlr r0
/* 813813D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813813D8 | 4E 80 00 20 */	blr
.endfn __DVDShowFatalMessage

# .text:0x9A8 | 0x813813DC | size: 0x60
.fn DVDSetAutoFatalMessaging, global
/* 813813DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813813E0 | 7C 08 02 A6 */	mflr r0
/* 813813E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813813E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813813EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813813F0 | 7C 7E 1B 78 */	mr r30, r3
/* 813813F4 | 48 1A F4 91 */	bl OSDisableInterrupts
/* 813813F8 | 80 AD AB 08 */	lwz r5, lbl_81698B48@sda21(r0)
/* 813813FC | 3C 80 81 38 */	lis r4, __DVDShowFatalMessage@ha
/* 81381400 | 38 84 12 EC */	addi r4, r4, __DVDShowFatalMessage@l
/* 81381404 | 30 05 FF FF */	subic r0, r5, 0x1
/* 81381408 | 7F E0 29 10 */	subfe r31, r0, r5
/* 8138140C | 20 1E 00 00 */	subfic r0, r30, 0x0
/* 81381410 | 7C 00 01 10 */	subfe r0, r0, r0
/* 81381414 | 7C 80 00 38 */	and r0, r4, r0
/* 81381418 | 90 0D AB 08 */	stw r0, lbl_81698B48@sda21(r0)
/* 8138141C | 48 1A F4 91 */	bl OSRestoreInterrupts
/* 81381420 | 7F E3 FB 78 */	mr r3, r31
/* 81381424 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81381428 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138142C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81381430 | 7C 08 03 A6 */	mtlr r0
/* 81381434 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81381438 | 4E 80 00 20 */	blr
.endfn DVDSetAutoFatalMessaging

# .text:0xA08 | 0x8138143C | size: 0x18
.fn __DVDPrintFatalMessage, global
/* 8138143C | 81 8D AB 08 */	lwz r12, lbl_81698B48@sda21(r0)
/* 81381440 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81381444 | 4D 82 00 20 */	beqlr
/* 81381448 | 7D 89 03 A6 */	mtctr r12
/* 8138144C | 4E 80 04 20 */	bctr
/* 81381450 | 4E 80 00 20 */	blr
.endfn __DVDPrintFatalMessage

# .text:0xA20 | 0x81381454 | size: 0x20C
.fn BS2ScreenReport, global
/* 81381454 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81381458 | 7C 08 02 A6 */	mflr r0
/* 8138145C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81381460 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81381464 | 48 27 80 61 */	bl _savegpr_28
/* 81381468 | 89 83 00 00 */	lbz r12, 0x0(r3)
/* 8138146C | 3F E0 81 0B */	lis r31, FatalParam@ha
/* 81381470 | 89 63 00 01 */	lbz r11, 0x1(r3)
/* 81381474 | 7C BE 2B 78 */	mr r30, r5
/* 81381478 | 9D 9F 71 A8 */	stbu r12, FatalParam@l(r31)
/* 8138147C | 89 43 00 02 */	lbz r10, 0x2(r3)
/* 81381480 | 89 23 00 03 */	lbz r9, 0x3(r3)
/* 81381484 | 7F C3 F3 78 */	mr r3, r30
/* 81381488 | 89 04 00 00 */	lbz r8, 0x0(r4)
/* 8138148C | 88 E4 00 01 */	lbz r7, 0x1(r4)
/* 81381490 | 88 C4 00 02 */	lbz r6, 0x2(r4)
/* 81381494 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81381498 | 99 7F 00 01 */	stb r11, 0x1(r31)
/* 8138149C | 99 5F 00 02 */	stb r10, 0x2(r31)
/* 813814A0 | 99 3F 00 03 */	stb r9, 0x3(r31)
/* 813814A4 | 99 1F 00 04 */	stb r8, 0x4(r31)
/* 813814A8 | 98 FF 00 05 */	stb r7, 0x5(r31)
/* 813814AC | 98 DF 00 06 */	stb r6, 0x6(r31)
/* 813814B0 | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 813814B4 | 90 BF 00 08 */	stw r5, 0x8(r31)
/* 813814B8 | 48 27 7A 45 */	bl strlen
/* 813814BC | 3B 83 00 01 */	addi r28, r3, 0x1
/* 813814C0 | 38 80 00 20 */	li r4, 0x20
/* 813814C4 | 7F 83 E3 78 */	mr r3, r28
/* 813814C8 | 48 1A BF 45 */	bl fn_8152D40C
/* 813814CC | 7F C4 F3 78 */	mr r4, r30
/* 813814D0 | 7F 85 E3 78 */	mr r5, r28
/* 813814D4 | 48 27 CB DD */	bl memmove
/* 813814D8 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 813814DC | 3C 60 00 0A */	lis r3, 0xa
/* 813814E0 | 38 63 10 04 */	addi r3, r3, 0x1004
/* 813814E4 | 38 80 00 20 */	li r4, 0x20
/* 813814E8 | 48 1A BF 25 */	bl fn_8152D40C
/* 813814EC | 7C 7D 1B 78 */	mr r29, r3
/* 813814F0 | 48 1A BE A9 */	bl fn_8152D398
/* 813814F4 | 7C 64 1B 78 */	mr r4, r3
/* 813814F8 | 7F A3 EB 78 */	mr r3, r29
/* 813814FC | 48 1A ED 19 */	bl fn_81530214
/* 81381500 | 3C 60 00 09 */	lis r3, 0x9
/* 81381504 | 38 80 00 20 */	li r4, 0x20
/* 81381508 | 38 63 60 00 */	addi r3, r3, 0x6000
/* 8138150C | 48 1A BE CD */	bl fn_8152D3D8
/* 81381510 | 88 DF 00 04 */	lbz r6, 0x4(r31)
/* 81381514 | 7C 7C 1B 78 */	mr r28, r3
/* 81381518 | 88 BF 00 05 */	lbz r5, 0x5(r31)
/* 8138151C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81381520 | 88 9F 00 06 */	lbz r4, 0x6(r31)
/* 81381524 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 81381528 | 98 C1 00 10 */	stb r6, 0x10(r1)
/* 8138152C | 98 A1 00 11 */	stb r5, 0x11(r1)
/* 81381530 | 98 81 00 12 */	stb r4, 0x12(r1)
/* 81381534 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 81381538 | 4B FF F8 19 */	bl RGB2YUV
/* 8138153C | 54 60 46 3E */	srwi r0, r3, 24
/* 81381540 | 98 61 00 17 */	stb r3, 0x17(r1)
/* 81381544 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 81381548 | 38 80 02 80 */	li r4, 0x280
/* 8138154C | 98 01 00 14 */	stb r0, 0x14(r1)
/* 81381550 | 54 60 86 3E */	extrwi r0, r3, 8, 8
/* 81381554 | 38 A0 01 E0 */	li r5, 0x1e0
/* 81381558 | 98 01 00 15 */	stb r0, 0x15(r1)
/* 8138155C | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 81381560 | 7F 83 E3 78 */	mr r3, r28
/* 81381564 | 98 01 00 16 */	stb r0, 0x16(r1)
/* 81381568 | 4B FF F4 CD */	bl ScreenClear
/* 8138156C | 7F 83 E3 78 */	mr r3, r28
/* 81381570 | 48 1B CB 45 */	bl fn_8153E0B4
/* 81381574 | 38 60 02 80 */	li r3, 0x280
/* 81381578 | 38 80 01 E0 */	li r4, 0x1e0
/* 8138157C | 4B FF F6 D9 */	bl ConfigureVideo
/* 81381580 | 48 1B CA 21 */	bl VIFlush
/* 81381584 | 48 1B CC 1D */	bl fn_8153E1A0
/* 81381588 | 7C 7E 1B 78 */	mr r30, r3
.L_8138158C:
/* 8138158C | 48 1B CC 15 */	bl fn_8153E1A0
/* 81381590 | 7C 1E 18 50 */	subf r0, r30, r3
/* 81381594 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81381598 | 41 80 FF F4 */	blt .L_8138158C
/* 8138159C | 88 DF 00 00 */	lbz r6, 0x0(r31)
/* 813815A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813815A4 | 88 BF 00 01 */	lbz r5, 0x1(r31)
/* 813815A8 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 813815AC | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 813815B0 | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 813815B4 | 98 A1 00 09 */	stb r5, 0x9(r1)
/* 813815B8 | 98 81 00 0A */	stb r4, 0xa(r1)
/* 813815BC | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813815C0 | 4B FF F7 91 */	bl RGB2YUV
/* 813815C4 | 54 60 46 3E */	srwi r0, r3, 24
/* 813815C8 | 98 61 00 0F */	stb r3, 0xf(r1)
/* 813815CC | 81 5F 00 08 */	lwz r10, 0x8(r31)
/* 813815D0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813815D4 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 813815D8 | 54 60 86 3E */	extrwi r0, r3, 8, 8
/* 813815DC | 38 80 02 80 */	li r4, 0x280
/* 813815E0 | 38 A0 01 E0 */	li r5, 0x1e0
/* 813815E4 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 813815E8 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 813815EC | 7F 83 E3 78 */	mr r3, r28
/* 813815F0 | 38 E0 01 E0 */	li r7, 0x1e0
/* 813815F4 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 813815F8 | 39 00 01 A4 */	li r8, 0x1a4
/* 813815FC | A1 3D 00 0E */	lhz r9, 0xe(r29)
/* 81381600 | 4B FF F4 89 */	bl ScreenReport
/* 81381604 | 3C 80 00 09 */	lis r4, 0x9
/* 81381608 | 7F 83 E3 78 */	mr r3, r28
/* 8138160C | 38 84 60 00 */	addi r4, r4, 0x6000
/* 81381610 | 48 1A C3 25 */	bl DCFlushRange
/* 81381614 | 38 60 00 00 */	li r3, 0x0
/* 81381618 | 48 1B CB 11 */	bl VISetBlack
/* 8138161C | 48 1B C9 85 */	bl VIFlush
/* 81381620 | 48 1B CB 81 */	bl fn_8153E1A0
/* 81381624 | 7C 7E 1B 78 */	mr r30, r3
.L_81381628:
/* 81381628 | 48 1B CB 79 */	bl fn_8153E1A0
/* 8138162C | 7C 1E 18 50 */	subf r0, r30, r3
/* 81381630 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81381634 | 41 80 FF F4 */	blt .L_81381628
/* 81381638 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8138163C | 38 6D 85 78 */	li r3, lbl_816965B8@sda21
/* 81381640 | 4C C6 31 82 */	crclr cr1eq
/* 81381644 | 48 1A D0 5D */	bl OSReport
/* 81381648 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138164C | 48 27 7E C5 */	bl _restgpr_28
/* 81381650 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81381654 | 7C 08 03 A6 */	mtlr r0
/* 81381658 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138165C | 4E 80 00 20 */	blr
.endfn BS2ScreenReport

# 0x8160F628..0x8160F650 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8160F628 | size: 0x28
.obj lbl_8160F628, global
	.4byte lbl_81646F08
	.4byte lbl_81646FAD
	.4byte lbl_81647069
	.4byte lbl_81647151
	.4byte lbl_81647239
	.4byte lbl_816472F9
	.4byte lbl_816473C0
	.4byte lbl_8164745B
	.4byte lbl_8164745B
	.4byte lbl_8164745B
.endobj lbl_8160F628

# 0x81646F08..0x81647538 | size: 0x630
.data
.balign 8

# .data:0x0 | 0x81646F08 | size: 0xA5
.obj lbl_81646F08, global
	.string "\n\n\n           \203G\203\211\201[\202\252\224\255\220\266\202\265\202\334\202\265\202\275\201B\n\n\203C\203W\203F\203N\203g\203{\203^\203\223\202\360\211\237\202\265\202\304\203f\203B\203X\203N\202\360\216\346\202\350\217o\202\265\202\304\202\251\n\202\347\201A\226{\221\314\202\314\223d\214\271\202\360OFF\202\311\202\265\202\304\201A\226{\221\314\202\314\216\346\210\265\220\340\226\276\217\221\202\314\n           \216w\216\246\202\311\217]\202\301\202\304\202\255\202\276\202\263\202\242\201B"
.endobj lbl_81646F08

# .data:0xA5 | 0x81646FAD | size: 0xBC
.obj lbl_81646FAD, global
	.string "\n\n\n          An error has occurred.\n    Press the Eject Button, remove the\n    Game Disc, and turn the power off.\n   Please read the Wii operations manual\n           for more information."
.endobj lbl_81646FAD

# .data:0x161 | 0x81647069 | size: 0xE8
.obj lbl_81647069, global
	.string "\n\n\n         Ein Fehler ist aufgetreten.\n  Dr\374cke den Ausgabeknopf, entnimm die\n  Game Disc und schalte die Wii-Konsole\naus. Bitte lies die Bedienungsanleitung der\n Wii-Konsole, um weitere Informationen zu\n                 erhalten."
.endobj lbl_81647069

# .data:0x249 | 0x81647151 | size: 0xE8
.obj lbl_81647151, global
	.string "\n\n\n          Une erreur est survenue.\n   Appuyez sur le bouton EJECT, retirez\n  le disque de jeu et \351teignez la console.\n   Veuillez vous r\351f\351rer au mode d'emploi\n     de la console pour de plus amples\n                informations."
.endobj lbl_81647151

# .data:0x331 | 0x81647239 | size: 0xC0
.obj lbl_81647239, global
	.string "\n\n\n         Se ha producido un error.\n  Pulsa el Bot\363n EJECT, saca el disco y\n apaga la consola. Consulta el manual de\n  instrucciones de la consola Wii para\n         obtener m\341s informaci\363n."
.endobj lbl_81647239

# .data:0x3F1 | 0x816472F9 | size: 0xC7
.obj lbl_816472F9, global
	.string "\n\n\n        Si \350 verificato un errore.\n Premi il pulsante EJECT, estrai il disco\ndi gioco e spegni la console. Per maggiori\n   informazioni consulta il manuale di\n       istruzioni della console Wii."
.endobj lbl_816472F9

# .data:0x4B8 | 0x816473C0 | size: 0x9B
.obj lbl_816473C0, global
	.string "\n\n\n       Er is een fout opgetreden.\n   Druk op de ejectknop, verwijder de\n speldisk en zet het systeem uit. Lees\nde Wii-handleiding voor meer informatie."
.endobj lbl_816473C0

# .data:0x553 | 0x8164745B | size: 0xDD
.obj lbl_8164745B, global
	.string "\n\n                Error #104,\n          An error has occurred.\n    Press the EJECT Button, remove the\n    Game Disc, and turn the power off.\n   Please read the Wii operations manual\n           for more information.\000\000\000\000\000\000"
.endobj lbl_8164745B

# 0x81694788..0x816947D0 | size: 0x48
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694788 | size: 0x4
.obj lbl_81694788, global
	.float 0.5
.endobj lbl_81694788

# .sdata2:0x4 | 0x8169478C | size: 0x4
.obj lbl_8169478C, global
	.float 16
.endobj lbl_8169478C

# .sdata2:0x8 | 0x81694790 | size: 0x4
.obj lbl_81694790, global
	.float 0.098
.endobj lbl_81694790

# .sdata2:0xC | 0x81694794 | size: 0x4
.obj lbl_81694794, global
	.float 0.257
.endobj lbl_81694794

# .sdata2:0x10 | 0x81694798 | size: 0x4
.obj lbl_81694798, global
	.float 0.504
.endobj lbl_81694798

# .sdata2:0x14 | 0x8169479C | size: 0x4
.obj lbl_8169479C, global
	.float 128
.endobj lbl_8169479C

# .sdata2:0x18 | 0x816947A0 | size: 0x4
.obj lbl_816947A0, global
	.float 0.439
.endobj lbl_816947A0

# .sdata2:0x1C | 0x816947A4 | size: 0x4
.obj lbl_816947A4, global
	.float -0.148
.endobj lbl_816947A4

# .sdata2:0x20 | 0x816947A8 | size: 0x4
.obj lbl_816947A8, global
	.float 0.291
.endobj lbl_816947A8

# .sdata2:0x24 | 0x816947AC | size: 0x4
.obj lbl_816947AC, global
	.float 0.368
.endobj lbl_816947AC

# .sdata2:0x28 | 0x816947B0 | size: 0x4
.obj lbl_816947B0, global
	.float 0.071
.endobj lbl_816947B0

# .sdata2:0x2C | 0x816947B4 | size: 0x4
.obj lbl_816947B4, global
	.float 235
.endobj lbl_816947B4

# .sdata2:0x30 | 0x816947B8 | size: 0x4
.obj lbl_816947B8, global
	.float 240
.endobj lbl_816947B8

# .sdata2:0x34 | 0x816947BC | size: 0x4
.obj gap_09_816947BC_sdata2, global
.hidden gap_09_816947BC_sdata2
	.4byte 0x00000000
.endobj gap_09_816947BC_sdata2

# .sdata2:0x38 | 0x816947C0 | size: 0x4
.obj lbl_816947C0, global
	.float 176
.endobj lbl_816947C0

# .sdata2:0x3C | 0x816947C4 | size: 0x4
.obj gap_09_816947C4_sdata2, global
.hidden gap_09_816947C4_sdata2
	.4byte 0x00000000
.endobj gap_09_816947C4_sdata2

# .sdata2:0x40 | 0x816947C8 | size: 0x1
.obj lbl_816947C8, global
	.byte 0xFF
.endobj lbl_816947C8

# .sdata2:0x41 | 0x816947C9 | size: 0x1
.obj lbl_816947C9, global
	.byte 0xFF
.endobj lbl_816947C9

# .sdata2:0x42 | 0x816947CA | size: 0x1
.obj lbl_816947CA, global
	.byte 0xFF
.endobj lbl_816947CA

# .sdata2:0x43 | 0x816947CB | size: 0x1
.obj lbl_816947CB, global
	.byte 0x00
.endobj lbl_816947CB

# .sdata2:0x44 | 0x816947CC | size: 0x4
.obj gap_09_816947CC_sdata2, global
.hidden gap_09_816947CC_sdata2
	.4byte 0x00000000
.endobj gap_09_816947CC_sdata2

# 0x81698B48..0x81698B50 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B48 | size: 0x8
.obj lbl_81698B48, global
	.skip 0x8
.endobj lbl_81698B48
