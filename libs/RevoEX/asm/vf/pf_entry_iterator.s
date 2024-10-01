.include "macros.inc"
.file "pf_entry_iterator.c"

# 0x814BFEEC..0x814C205C | size: 0x2170
.text
.balign 4

# .text:0x0 | 0x814BFEEC | size: 0x114
.fn VFiPFENT_ITER_RecalcEntryIterator, global
/* 814BFEEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BFEF0 | 7C 08 02 A6 */	mflr r0
/* 814BFEF4 | 38 C0 00 00 */	li r6, 0x0
/* 814BFEF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BFEFC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BFF00 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BFF04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BFF08 | 7C 9D 23 78 */	mr r29, r4
/* 814BFF0C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BFF10 | 7C 7C 1B 78 */	mr r28, r3
/* 814BFF14 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814BFF18 | 88 03 00 68 */	lbz r0, 0x68(r3)
/* 814BFF1C | 83 E3 00 3C */	lwz r31, 0x3c(r3)
/* 814BFF20 | 7C BE 04 30 */	srw r30, r5, r0
/* 814BFF24 | 7C 1E F8 40 */	cmplw r30, r31
/* 814BFF28 | 41 82 00 98 */	beq .L_814BFFC0
/* 814BFF2C | 93 C3 00 3C */	stw r30, 0x3c(r3)
/* 814BFF30 | 38 C3 00 40 */	addi r6, r3, 0x40
/* 814BFF34 | 7F C4 F3 78 */	mr r4, r30
/* 814BFF38 | 38 A0 00 00 */	li r5, 0x0
/* 814BFF3C | 38 63 00 08 */	addi r3, r3, 0x8
/* 814BFF40 | 48 00 3B 75 */	bl VFiPFFAT_GetSectorSpecified
/* 814BFF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFF48 | 7C 66 1B 78 */	mr r6, r3
/* 814BFF4C | 40 82 00 74 */	bne .L_814BFFC0
/* 814BFF50 | 80 7C 00 40 */	lwz r3, 0x40(r28)
/* 814BFF54 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BFF58 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BFF5C | 40 82 00 64 */	bne .L_814BFFC0
/* 814BFF60 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814BFF64 | 41 82 00 5C */	beq .L_814BFFC0
/* 814BFF68 | 7F C4 F3 78 */	mr r4, r30
/* 814BFF6C | 38 7C 00 08 */	addi r3, r28, 0x8
/* 814BFF70 | 38 DC 00 40 */	addi r6, r28, 0x40
/* 814BFF74 | 38 A0 00 01 */	li r5, 0x1
/* 814BFF78 | 48 00 3B 3D */	bl VFiPFFAT_GetSectorSpecified
/* 814BFF7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFF80 | 7C 66 1B 78 */	mr r6, r3
/* 814BFF84 | 40 82 00 3C */	bne .L_814BFFC0
/* 814BFF88 | 80 9C 00 40 */	lwz r4, 0x40(r28)
/* 814BFF8C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814BFF90 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BFF94 | 41 82 00 2C */	beq .L_814BFFC0
/* 814BFF98 | 3C 1F 00 01 */	addis r0, r31, 0x1
/* 814BFF9C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BFFA0 | 41 82 00 20 */	beq .L_814BFFC0
/* 814BFFA4 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814BFFA8 | 38 C0 00 00 */	li r6, 0x0
/* 814BFFAC | 38 E0 00 00 */	li r7, 0x0
/* 814BFFB0 | 39 00 00 00 */	li r8, 0x0
/* 814BFFB4 | 88 A3 00 06 */	lbz r5, 0x6(r3)
/* 814BFFB8 | 4B FF FC 35 */	bl VFiPFENT_FillVoidEntryToSectors
/* 814BFFBC | 7C 66 1B 78 */	mr r6, r3
.L_814BFFC0:
/* 814BFFC0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BFFC4 | 40 82 00 18 */	bne .L_814BFFDC
/* 814BFFC8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814BFFCC | A0 1C 00 46 */	lhz r0, 0x46(r28)
/* 814BFFD0 | 7C 60 00 38 */	and r0, r3, r0
/* 814BFFD4 | 54 00 2C 34 */	clrlslwi r0, r0, 21, 5
/* 814BFFD8 | B0 1C 00 44 */	sth r0, 0x44(r28)
.L_814BFFDC:
/* 814BFFDC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BFFE0 | 7C C3 33 78 */	mr r3, r6
/* 814BFFE4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BFFE8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BFFEC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BFFF0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BFFF4 | 7C 08 03 A6 */	mtlr r0
/* 814BFFF8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BFFFC | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_RecalcEntryIterator

# .text:0x114 | 0x814C0000 | size: 0x2B4
.fn VFiPFENT_ITER_GetEntry, global
/* 814C0000 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814C0004 | 7C 08 02 A6 */	mflr r0
/* 814C0008 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814C000C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C0010 | 48 13 94 A9 */	bl _savegpr_25
/* 814C0014 | 8B C4 00 53 */	lbz r30, 0x53(r4)
/* 814C0018 | 7C 79 1B 78 */	mr r25, r3
/* 814C001C | 7C 9A 23 78 */	mr r26, r4
/* 814C0020 | 7C BB 2B 78 */	mr r27, r5
/* 814C0024 | 57 DF 07 3E */	clrlwi r31, r30, 28
/* 814C0028 | 7C FC 3B 78 */	mr r28, r7
/* 814C002C | 2C 1F 00 0F */	cmpwi r31, 0xf
/* 814C0030 | 7D 1D 43 78 */	mr r29, r8
/* 814C0034 | 40 82 00 0C */	bne .L_814C0040
/* 814C0038 | 38 60 00 01 */	li r3, 0x1
/* 814C003C | 48 00 01 38 */	b .L_814C0174
.L_814C0040:
/* 814C0040 | 7F C3 F3 78 */	mr r3, r30
/* 814C0044 | 7C C4 33 78 */	mr r4, r6
/* 814C0048 | 4B FF F0 E9 */	bl VFiPFENT_CompareAttr
/* 814C004C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0050 | 40 82 00 0C */	bne .L_814C005C
/* 814C0054 | 38 60 00 01 */	li r3, 0x1
/* 814C0058 | 48 00 01 1C */	b .L_814C0174
.L_814C005C:
/* 814C005C | 57 C0 07 39 */	rlwinm. r0, r30, 0, 28, 28
/* 814C0060 | 41 82 00 10 */	beq .L_814C0070
/* 814C0064 | 38 00 00 00 */	li r0, 0x0
/* 814C0068 | 98 19 02 0A */	stb r0, 0x20a(r25)
/* 814C006C | B0 19 00 00 */	sth r0, 0x0(r25)
.L_814C0070:
/* 814C0070 | 7F 23 CB 78 */	mr r3, r25
/* 814C0074 | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C0078 | 4B FF E7 75 */	bl VFiPFENT_LoadShortNameFromBuf
/* 814C007C | 88 19 02 0A */	lbz r0, 0x20a(r25)
/* 814C0080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C0084 | 41 82 00 28 */	beq .L_814C00AC
/* 814C0088 | 7F 23 CB 78 */	mr r3, r25
/* 814C008C | 4B FF E6 F1 */	bl VFiPFENT_CalcCheckSum
/* 814C0090 | 88 19 02 0C */	lbz r0, 0x20c(r25)
/* 814C0094 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814C0098 | 7C 00 18 40 */	cmplw r0, r3
/* 814C009C | 41 82 00 10 */	beq .L_814C00AC
/* 814C00A0 | 38 00 00 00 */	li r0, 0x0
/* 814C00A4 | 98 19 02 0A */	stb r0, 0x20a(r25)
/* 814C00A8 | B0 19 00 00 */	sth r0, 0x0(r25)
.L_814C00AC:
/* 814C00AC | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C00B0 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C00B4 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814C00B8 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C00BC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C00C0 | 40 82 00 88 */	bne .L_814C0148
/* 814C00C4 | 88 19 02 0A */	lbz r0, 0x20a(r25)
/* 814C00C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C00CC | 40 82 00 7C */	bne .L_814C0148
/* 814C00D0 | 88 BA 00 54 */	lbz r5, 0x54(r26)
/* 814C00D4 | 54 A0 06 F9 */	rlwinm. r0, r5, 0, 27, 28
/* 814C00D8 | 41 82 00 70 */	beq .L_814C0148
/* 814C00DC | 38 79 02 0E */	addi r3, r25, 0x20e
/* 814C00E0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814C00E4 | 48 00 B2 45 */	bl VFiPFPATH_getLongNameformShortName
/* 814C00E8 | 7F 23 CB 78 */	mr r3, r25
/* 814C00EC | 38 81 00 18 */	addi r4, r1, 0x18
/* 814C00F0 | 48 00 B6 19 */	bl VFiPFPATH_transformInUnicode
/* 814C00F4 | 3C 80 4E C5 */	lis r4, 0x4ec5
/* 814C00F8 | 38 04 EC 4F */	subi r0, r4, 0x13b1
/* 814C00FC | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814C0100 | 7C 05 16 70 */	srawi r5, r0, 2
/* 814C0104 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814C0108 | 54 04 0F FE */	srwi r4, r0, 31
/* 814C010C | 54 A6 0F FE */	srwi r6, r5, 31
/* 814C0110 | 7C 00 22 14 */	add r0, r0, r4
/* 814C0114 | 1C 00 00 0D */	mulli r0, r0, 0xd
/* 814C0118 | 7C A5 32 14 */	add r5, r5, r6
/* 814C011C | 7C 80 18 50 */	subf r4, r0, r3
/* 814C0120 | 7F 23 CB 78 */	mr r3, r25
/* 814C0124 | 7C 04 00 D0 */	neg r0, r4
/* 814C0128 | 7C 00 23 78 */	or r0, r0, r4
/* 814C012C | 54 00 0F FE */	srwi r0, r0, 31
/* 814C0130 | 7C 05 02 14 */	add r0, r5, r0
/* 814C0134 | 98 19 02 0A */	stb r0, 0x20a(r25)
/* 814C0138 | 4B FF E6 45 */	bl VFiPFENT_CalcCheckSum
/* 814C013C | 38 00 00 01 */	li r0, 0x1
/* 814C0140 | 98 79 02 0C */	stb r3, 0x20c(r25)
/* 814C0144 | 98 19 02 0B */	stb r0, 0x20b(r25)
.L_814C0148:
/* 814C0148 | 7F 23 CB 78 */	mr r3, r25
/* 814C014C | 7F 64 DB 78 */	mr r4, r27
/* 814C0150 | 7F C5 F3 78 */	mr r5, r30
/* 814C0154 | 4B FF F0 51 */	bl VFiPFENT_compareEntryName
/* 814C0158 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C015C | 40 82 00 18 */	bne .L_814C0174
/* 814C0160 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C0164 | 41 82 00 10 */	beq .L_814C0174
/* 814C0168 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C016C | 38 04 00 01 */	addi r0, r4, 0x1
/* 814C0170 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814C0174:
/* 814C0174 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C0178 | 40 82 00 48 */	bne .L_814C01C0
/* 814C017C | 2C 1F 00 0F */	cmpwi r31, 0xf
/* 814C0180 | 40 82 00 2C */	bne .L_814C01AC
/* 814C0184 | 7F 23 CB 78 */	mr r3, r25
/* 814C0188 | 7F A5 EB 78 */	mr r5, r29
/* 814C018C | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C0190 | 4B FF E7 51 */	bl VFiPFENT_LoadLFNEntryFieldsFromBuf
/* 814C0194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0198 | 41 82 00 20 */	beq .L_814C01B8
/* 814C019C | 38 00 00 00 */	li r0, 0x0
/* 814C01A0 | 98 19 02 0A */	stb r0, 0x20a(r25)
/* 814C01A4 | B0 19 00 00 */	sth r0, 0x0(r25)
/* 814C01A8 | 48 00 00 10 */	b .L_814C01B8
.L_814C01AC:
/* 814C01AC | 38 00 00 00 */	li r0, 0x0
/* 814C01B0 | 98 19 02 0A */	stb r0, 0x20a(r25)
/* 814C01B4 | B0 19 00 00 */	sth r0, 0x0(r25)
.L_814C01B8:
/* 814C01B8 | 38 60 FF FF */	li r3, -0x1
/* 814C01BC | 48 00 00 E0 */	b .L_814C029C
.L_814C01C0:
/* 814C01C0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C01C4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C01C8 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814C01CC | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C01D0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C01D4 | 41 82 00 88 */	beq .L_814C025C
/* 814C01D8 | 88 19 02 0A */	lbz r0, 0x20a(r25)
/* 814C01DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C01E0 | 40 82 00 7C */	bne .L_814C025C
/* 814C01E4 | 88 BA 00 54 */	lbz r5, 0x54(r26)
/* 814C01E8 | 54 A0 06 F9 */	rlwinm. r0, r5, 0, 27, 28
/* 814C01EC | 41 82 00 70 */	beq .L_814C025C
/* 814C01F0 | 38 79 02 0E */	addi r3, r25, 0x20e
/* 814C01F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C01F8 | 48 00 B1 31 */	bl VFiPFPATH_getLongNameformShortName
/* 814C01FC | 7F 23 CB 78 */	mr r3, r25
/* 814C0200 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C0204 | 48 00 B5 05 */	bl VFiPFPATH_transformInUnicode
/* 814C0208 | 3C 80 4E C5 */	lis r4, 0x4ec5
/* 814C020C | 38 04 EC 4F */	subi r0, r4, 0x13b1
/* 814C0210 | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814C0214 | 7C 05 16 70 */	srawi r5, r0, 2
/* 814C0218 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814C021C | 54 04 0F FE */	srwi r4, r0, 31
/* 814C0220 | 54 A6 0F FE */	srwi r6, r5, 31
/* 814C0224 | 7C 00 22 14 */	add r0, r0, r4
/* 814C0228 | 1C 00 00 0D */	mulli r0, r0, 0xd
/* 814C022C | 7C A5 32 14 */	add r5, r5, r6
/* 814C0230 | 7C 80 18 50 */	subf r4, r0, r3
/* 814C0234 | 7F 23 CB 78 */	mr r3, r25
/* 814C0238 | 7C 04 00 D0 */	neg r0, r4
/* 814C023C | 7C 00 23 78 */	or r0, r0, r4
/* 814C0240 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C0244 | 7C 05 02 14 */	add r0, r5, r0
/* 814C0248 | 98 19 02 0A */	stb r0, 0x20a(r25)
/* 814C024C | 4B FF E5 31 */	bl VFiPFENT_CalcCheckSum
/* 814C0250 | 38 00 00 01 */	li r0, 0x1
/* 814C0254 | 98 79 02 0C */	stb r3, 0x20c(r25)
/* 814C0258 | 98 19 02 0B */	stb r0, 0x20b(r25)
.L_814C025C:
/* 814C025C | 7F 23 CB 78 */	mr r3, r25
/* 814C0260 | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C0264 | 4B FF E5 D1 */	bl VFiPFENT_loadEntryNumericFieldsFromBuf
/* 814C0268 | 80 7A 00 40 */	lwz r3, 0x40(r26)
/* 814C026C | 88 19 02 1C */	lbz r0, 0x21c(r25)
/* 814C0270 | 90 79 02 38 */	stw r3, 0x238(r25)
/* 814C0274 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814C0278 | A0 1A 00 44 */	lhz r0, 0x44(r26)
/* 814C027C | B0 19 02 3C */	sth r0, 0x23c(r25)
/* 814C0280 | 41 82 00 18 */	beq .L_814C0298
/* 814C0284 | 80 19 02 34 */	lwz r0, 0x234(r25)
/* 814C0288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C028C | 40 82 00 0C */	bne .L_814C0298
/* 814C0290 | 38 00 00 01 */	li r0, 0x1
/* 814C0294 | 90 19 02 34 */	stw r0, 0x234(r25)
.L_814C0298:
/* 814C0298 | 38 60 00 00 */	li r3, 0x0
.L_814C029C:
/* 814C029C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C02A0 | 48 13 92 65 */	bl _restgpr_25
/* 814C02A4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814C02A8 | 7C 08 03 A6 */	mtlr r0
/* 814C02AC | 38 21 00 50 */	addi r1, r1, 0x50
/* 814C02B0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_GetEntry

# .text:0x3C8 | 0x814C02B4 | size: 0x5E4
.fn VFiPFENT_ITER_DoFindEntry, global
/* 814C02B4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C02B8 | 7C 08 02 A6 */	mflr r0
/* 814C02BC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C02C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C02C4 | 48 13 91 E9 */	bl _savegpr_22
/* 814C02C8 | 3B C0 00 00 */	li r30, 0x0
/* 814C02CC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814C02D0 | 93 C7 00 00 */	stw r30, 0x0(r7)
/* 814C02D4 | 7C 76 1B 78 */	mr r22, r3
/* 814C02D8 | 7C 97 23 78 */	mr r23, r4
/* 814C02DC | 7C B8 2B 78 */	mr r24, r5
/* 814C02E0 | 7C D9 33 78 */	mr r25, r6
/* 814C02E4 | 7C FA 3B 78 */	mr r26, r7
/* 814C02E8 | 7D 1B 43 78 */	mr r27, r8
/* 814C02EC | 7D 3C 4B 78 */	mr r28, r9
/* 814C02F0 | 7D 5D 53 78 */	mr r29, r10
/* 814C02F4 | 41 82 00 10 */	beq .L_814C0304
/* 814C02F8 | 3C 80 00 0F */	lis r4, 0xf
/* 814C02FC | 38 04 42 3F */	addi r0, r4, 0x423f
/* 814C0300 | 90 08 00 00 */	stw r0, 0x0(r8)
.L_814C0304:
/* 814C0304 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C0308 | 41 82 00 10 */	beq .L_814C0318
/* 814C030C | 3C 80 00 0F */	lis r4, 0xf
/* 814C0310 | 38 04 42 3F */	addi r0, r4, 0x423f
/* 814C0314 | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814C0318:
/* 814C0318 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 814C031C | 3B E0 00 00 */	li r31, 0x0
/* 814C0320 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814C0324 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 814C0328 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814C032C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C0330 | 40 82 00 0C */	bne .L_814C033C
/* 814C0334 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814C0338 | 48 00 00 08 */	b .L_814C0340
.L_814C033C:
/* 814C033C | 38 00 00 01 */	li r0, 0x1
.L_814C0340:
/* 814C0340 | 7C 03 00 40 */	cmplw r3, r0
/* 814C0344 | 40 82 00 60 */	bne .L_814C03A4
/* 814C0348 | 7F 03 C3 78 */	mr r3, r24
/* 814C034C | 38 8D 9C B8 */	li r4, lbl_81697CF8@sda21
/* 814C0350 | 38 A0 00 01 */	li r5, 0x1
/* 814C0354 | 38 C0 00 00 */	li r6, 0x0
/* 814C0358 | 38 E0 00 03 */	li r7, 0x3
/* 814C035C | 4B FF 5B ED */	bl VFiPFSTR_StrNCmp
/* 814C0360 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0364 | 41 82 00 38 */	beq .L_814C039C
/* 814C0368 | 7F 03 C3 78 */	mr r3, r24
/* 814C036C | 38 8D 9C BC */	li r4, lbl_81697CFC@sda21
/* 814C0370 | 38 A0 00 01 */	li r5, 0x1
/* 814C0374 | 38 C0 00 00 */	li r6, 0x0
/* 814C0378 | 38 E0 00 03 */	li r7, 0x3
/* 814C037C | 4B FF 5B CD */	bl VFiPFSTR_StrNCmp
/* 814C0380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0384 | 41 82 00 18 */	beq .L_814C039C
/* 814C0388 | 7F 03 C3 78 */	mr r3, r24
/* 814C038C | 38 8D 9C C0 */	li r4, lbl_81697D00@sda21
/* 814C0390 | 4B FF 5B 15 */	bl VFiPFSTR_StrCmp
/* 814C0394 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0398 | 40 82 00 0C */	bne .L_814C03A4
.L_814C039C:
/* 814C039C | 38 60 00 02 */	li r3, 0x2
/* 814C03A0 | 48 00 04 E0 */	b .L_814C0880
.L_814C03A4:
/* 814C03A4 | 7F 03 C3 78 */	mr r3, r24
/* 814C03A8 | 38 8D 9C C4 */	li r4, lbl_81697D04@sda21
/* 814C03AC | 38 A0 00 01 */	li r5, 0x1
/* 814C03B0 | 38 C0 00 00 */	li r6, 0x0
/* 814C03B4 | 38 E0 00 02 */	li r7, 0x2
/* 814C03B8 | 4B FF 5B 91 */	bl VFiPFSTR_StrNCmp
/* 814C03BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C03C0 | 41 82 00 38 */	beq .L_814C03F8
/* 814C03C4 | 7F 03 C3 78 */	mr r3, r24
/* 814C03C8 | 38 8D 9C C8 */	li r4, lbl_81697D08@sda21
/* 814C03CC | 38 A0 00 01 */	li r5, 0x1
/* 814C03D0 | 38 C0 00 00 */	li r6, 0x0
/* 814C03D4 | 38 E0 00 02 */	li r7, 0x2
/* 814C03D8 | 4B FF 5B 71 */	bl VFiPFSTR_StrNCmp
/* 814C03DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C03E0 | 41 82 00 18 */	beq .L_814C03F8
/* 814C03E4 | 7F 03 C3 78 */	mr r3, r24
/* 814C03E8 | 38 8D 9C CC */	li r4, lbl_81697D0C@sda21
/* 814C03EC | 4B FF 5A B9 */	bl VFiPFSTR_StrCmp
/* 814C03F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C03F4 | 40 82 00 AC */	bne .L_814C04A0
.L_814C03F8:
/* 814C03F8 | 7F 24 CB 78 */	mr r4, r25
/* 814C03FC | 38 60 00 10 */	li r3, 0x10
/* 814C0400 | 4B FF ED 31 */	bl VFiPFENT_CompareAttr
/* 814C0404 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0408 | 41 82 00 90 */	beq .L_814C0498
/* 814C040C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C0410 | 40 82 00 50 */	bne .L_814C0460
/* 814C0414 | 80 76 00 0C */	lwz r3, 0xc(r22)
/* 814C0418 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814C041C | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C0420 | 41 82 00 20 */	beq .L_814C0440
/* 814C0424 | 80 76 00 38 */	lwz r3, 0x38(r22)
/* 814C0428 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814C042C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C0430 | 40 82 00 30 */	bne .L_814C0460
/* 814C0434 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814C0438 | 7C 04 00 40 */	cmplw r4, r0
/* 814C043C | 40 82 00 24 */	bne .L_814C0460
.L_814C0440:
/* 814C0440 | 80 76 00 04 */	lwz r3, 0x4(r22)
/* 814C0444 | 7E E4 BB 78 */	mr r4, r23
/* 814C0448 | 4B FF EB 59 */	bl VFiPFENT_GetRootDir
/* 814C044C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0450 | 7C 7E 1B 78 */	mr r30, r3
/* 814C0454 | 41 82 00 08 */	beq .L_814C045C
/* 814C0458 | 48 00 04 28 */	b .L_814C0880
.L_814C045C:
/* 814C045C | 3B A0 00 01 */	li r29, 0x1
.L_814C0460:
/* 814C0460 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C0464 | 41 82 00 3C */	beq .L_814C04A0
/* 814C0468 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C046C | 41 82 00 0C */	beq .L_814C0478
/* 814C0470 | 38 00 00 00 */	li r0, 0x0
/* 814C0474 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814C0478:
/* 814C0478 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C047C | 41 82 00 0C */	beq .L_814C0488
/* 814C0480 | 38 00 00 00 */	li r0, 0x0
/* 814C0484 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814C0488:
/* 814C0488 | 38 00 00 01 */	li r0, 0x1
/* 814C048C | 38 60 00 00 */	li r3, 0x0
/* 814C0490 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C0494 | 48 00 03 EC */	b .L_814C0880
.L_814C0498:
/* 814C0498 | 38 60 00 00 */	li r3, 0x0
/* 814C049C | 48 00 03 E4 */	b .L_814C0880
.L_814C04A0:
/* 814C04A0 | 38 00 00 00 */	li r0, 0x0
/* 814C04A4 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C04A8 | 98 17 02 0A */	stb r0, 0x20a(r23)
/* 814C04AC | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C04B0 | 98 17 02 0B */	stb r0, 0x20b(r23)
/* 814C04B4 | 98 17 02 0C */	stb r0, 0x20c(r23)
/* 814C04B8 | B0 17 00 00 */	sth r0, 0x0(r23)
/* 814C04BC | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814C04C0 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C04C4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C04C8 | 40 82 00 14 */	bne .L_814C04DC
/* 814C04CC | 7F 03 C3 78 */	mr r3, r24
/* 814C04D0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814C04D4 | 48 00 C0 C5 */	bl VFiPFPATH_GetExtShortNameIndex
/* 814C04D8 | 7C 7F 1B 78 */	mr r31, r3
.L_814C04DC:
/* 814C04DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C04E0 | 41 82 02 68 */	beq .L_814C0748
/* 814C04E4 | 80 76 00 38 */	lwz r3, 0x38(r22)
/* 814C04E8 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 814C04EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C04F0 | 90 76 00 04 */	stw r3, 0x4(r22)
/* 814C04F4 | 38 C4 FF FF */	subi r6, r4, 0x1
/* 814C04F8 | 40 82 00 0C */	bne .L_814C0504
/* 814C04FC | 3B C0 00 0A */	li r30, 0xa
/* 814C0500 | 48 00 00 B8 */	b .L_814C05B8
.L_814C0504:
/* 814C0504 | 88 63 00 20 */	lbz r3, 0x20(r3)
/* 814C0508 | 38 00 FF FF */	li r0, -0x1
/* 814C050C | 83 B6 00 00 */	lwz r29, 0x0(r22)
/* 814C0510 | 38 80 00 01 */	li r4, 0x1
/* 814C0514 | 38 A3 FF FB */	subi r5, r3, 0x5
/* 814C0518 | 90 16 00 3C */	stw r0, 0x3c(r22)
/* 814C051C | 54 A0 06 3E */	clrlwi r0, r5, 24
/* 814C0520 | 7E C3 B3 78 */	mr r3, r22
/* 814C0524 | 7C 84 00 30 */	slw r4, r4, r0
/* 814C0528 | 98 B6 00 68 */	stb r5, 0x68(r22)
/* 814C052C | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C0530 | B0 16 00 46 */	sth r0, 0x46(r22)
/* 814C0534 | 38 80 00 00 */	li r4, 0x0
/* 814C0538 | 90 D6 00 00 */	stw r6, 0x0(r22)
/* 814C053C | 4B FF F9 B1 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0544 | 7C 7E 1B 78 */	mr r30, r3
/* 814C0548 | 41 82 00 18 */	beq .L_814C0560
/* 814C054C | 93 B6 00 00 */	stw r29, 0x0(r22)
/* 814C0550 | 7E C3 B3 78 */	mr r3, r22
/* 814C0554 | 38 80 00 00 */	li r4, 0x0
/* 814C0558 | 4B FF F9 95 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C055C | 48 00 00 5C */	b .L_814C05B8
.L_814C0560:
/* 814C0560 | 80 B6 00 40 */	lwz r5, 0x40(r22)
/* 814C0564 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C0568 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C056C | 40 82 00 0C */	bne .L_814C0578
/* 814C0570 | 38 80 00 10 */	li r4, 0x10
/* 814C0574 | 48 00 00 34 */	b .L_814C05A8
.L_814C0578:
/* 814C0578 | 80 76 00 04 */	lwz r3, 0x4(r22)
/* 814C057C | 38 96 00 48 */	addi r4, r22, 0x48
/* 814C0580 | A0 D6 00 44 */	lhz r6, 0x44(r22)
/* 814C0584 | 39 01 00 10 */	addi r8, r1, 0x10
/* 814C0588 | 38 E0 00 20 */	li r7, 0x20
/* 814C058C | 39 20 00 00 */	li r9, 0x0
/* 814C0590 | 48 00 C3 C9 */	bl VFiPFSEC_ReadData
/* 814C0594 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C0598 | 38 80 00 11 */	li r4, 0x11
/* 814C059C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C05A0 | 40 82 00 08 */	bne .L_814C05A8
/* 814C05A4 | 7C 64 1B 78 */	mr r4, r3
.L_814C05A8:
/* 814C05A8 | 7C 04 00 D0 */	neg r0, r4
/* 814C05AC | 7C 00 23 78 */	or r0, r0, r4
/* 814C05B0 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C05B4 | 7C 9E 00 38 */	and r30, r4, r0
.L_814C05B8:
/* 814C05B8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C05BC | 41 82 00 0C */	beq .L_814C05C8
/* 814C05C0 | 7F C3 F3 78 */	mr r3, r30
/* 814C05C4 | 48 00 02 BC */	b .L_814C0880
.L_814C05C8:
/* 814C05C8 | 7E E3 BB 78 */	mr r3, r23
/* 814C05CC | 7E C4 B3 78 */	mr r4, r22
/* 814C05D0 | 7F 05 C3 78 */	mr r5, r24
/* 814C05D4 | 7F 26 CB 78 */	mr r6, r25
/* 814C05D8 | 7F 87 E3 78 */	mr r7, r28
/* 814C05DC | 39 00 00 01 */	li r8, 0x1
/* 814C05E0 | 4B FF FA 21 */	bl VFiPFENT_ITER_GetEntry
/* 814C05E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C05E8 | 40 82 00 0C */	bne .L_814C05F4
/* 814C05EC | 38 60 00 03 */	li r3, 0x3
/* 814C05F0 | 48 00 02 90 */	b .L_814C0880
.L_814C05F4:
/* 814C05F4 | 88 16 00 48 */	lbz r0, 0x48(r22)
/* 814C05F8 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814C05FC | 41 82 01 38 */	beq .L_814C0734
/* 814C0600 | 80 76 00 38 */	lwz r3, 0x38(r22)
/* 814C0604 | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 814C0608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C060C | 90 76 00 04 */	stw r3, 0x4(r22)
/* 814C0610 | 40 82 00 0C */	bne .L_814C061C
/* 814C0614 | 3B C0 00 0A */	li r30, 0xa
/* 814C0618 | 48 00 00 B8 */	b .L_814C06D0
.L_814C061C:
/* 814C061C | 88 63 00 20 */	lbz r3, 0x20(r3)
/* 814C0620 | 38 00 FF FF */	li r0, -0x1
/* 814C0624 | 83 B6 00 00 */	lwz r29, 0x0(r22)
/* 814C0628 | 38 80 00 01 */	li r4, 0x1
/* 814C062C | 38 A3 FF FB */	subi r5, r3, 0x5
/* 814C0630 | 90 16 00 3C */	stw r0, 0x3c(r22)
/* 814C0634 | 54 A0 06 3E */	clrlwi r0, r5, 24
/* 814C0638 | 7E C3 B3 78 */	mr r3, r22
/* 814C063C | 7C 84 00 30 */	slw r4, r4, r0
/* 814C0640 | 98 B6 00 68 */	stb r5, 0x68(r22)
/* 814C0644 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C0648 | B0 16 00 46 */	sth r0, 0x46(r22)
/* 814C064C | 38 80 00 00 */	li r4, 0x0
/* 814C0650 | 90 D6 00 00 */	stw r6, 0x0(r22)
/* 814C0654 | 4B FF F8 99 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0658 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C065C | 7C 7E 1B 78 */	mr r30, r3
/* 814C0660 | 41 82 00 18 */	beq .L_814C0678
/* 814C0664 | 93 B6 00 00 */	stw r29, 0x0(r22)
/* 814C0668 | 7E C3 B3 78 */	mr r3, r22
/* 814C066C | 38 80 00 00 */	li r4, 0x0
/* 814C0670 | 4B FF F8 7D */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0674 | 48 00 00 5C */	b .L_814C06D0
.L_814C0678:
/* 814C0678 | 80 B6 00 40 */	lwz r5, 0x40(r22)
/* 814C067C | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C0680 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C0684 | 40 82 00 0C */	bne .L_814C0690
/* 814C0688 | 38 80 00 10 */	li r4, 0x10
/* 814C068C | 48 00 00 34 */	b .L_814C06C0
.L_814C0690:
/* 814C0690 | 80 76 00 04 */	lwz r3, 0x4(r22)
/* 814C0694 | 38 96 00 48 */	addi r4, r22, 0x48
/* 814C0698 | A0 D6 00 44 */	lhz r6, 0x44(r22)
/* 814C069C | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C06A0 | 38 E0 00 20 */	li r7, 0x20
/* 814C06A4 | 39 20 00 00 */	li r9, 0x0
/* 814C06A8 | 48 00 C2 B1 */	bl VFiPFSEC_ReadData
/* 814C06AC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C06B0 | 38 80 00 11 */	li r4, 0x11
/* 814C06B4 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C06B8 | 40 82 00 08 */	bne .L_814C06C0
/* 814C06BC | 7C 64 1B 78 */	mr r4, r3
.L_814C06C0:
/* 814C06C0 | 7C 04 00 D0 */	neg r0, r4
/* 814C06C4 | 7C 00 23 78 */	or r0, r0, r4
/* 814C06C8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C06CC | 7C 9E 00 38 */	and r30, r4, r0
.L_814C06D0:
/* 814C06D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C06D4 | 41 82 00 0C */	beq .L_814C06E0
/* 814C06D8 | 7F C3 F3 78 */	mr r3, r30
/* 814C06DC | 48 00 01 A4 */	b .L_814C0880
.L_814C06E0:
/* 814C06E0 | 7E E3 BB 78 */	mr r3, r23
/* 814C06E4 | 7E C4 B3 78 */	mr r4, r22
/* 814C06E8 | 7F 05 C3 78 */	mr r5, r24
/* 814C06EC | 7F 26 CB 78 */	mr r6, r25
/* 814C06F0 | 7F 87 E3 78 */	mr r7, r28
/* 814C06F4 | 39 00 00 01 */	li r8, 0x1
/* 814C06F8 | 4B FF F9 09 */	bl VFiPFENT_ITER_GetEntry
/* 814C06FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0700 | 40 82 00 2C */	bne .L_814C072C
/* 814C0704 | 80 16 00 38 */	lwz r0, 0x38(r22)
/* 814C0708 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C070C | 90 17 02 2C */	stw r0, 0x22c(r23)
/* 814C0710 | 41 82 00 0C */	beq .L_814C071C
/* 814C0714 | 80 16 00 00 */	lwz r0, 0x0(r22)
/* 814C0718 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814C071C:
/* 814C071C | 38 00 00 01 */	li r0, 0x1
/* 814C0720 | 38 60 00 00 */	li r3, 0x0
/* 814C0724 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C0728 | 48 00 01 58 */	b .L_814C0880
.L_814C072C:
/* 814C072C | 38 60 00 03 */	li r3, 0x3
/* 814C0730 | 48 00 01 50 */	b .L_814C0880
.L_814C0734:
/* 814C0734 | 7E C3 B3 78 */	mr r3, r22
/* 814C0738 | 38 80 00 00 */	li r4, 0x0
/* 814C073C | 48 00 0F 7D */	bl VFiPFENT_ITER_Retreat
/* 814C0740 | 7C 7E 1B 78 */	mr r30, r3
/* 814C0744 | 4B FF FE 74 */	b .L_814C05B8
.L_814C0748:
/* 814C0748 | 3B E0 00 00 */	li r31, 0x0
/* 814C074C | 48 00 01 20 */	b .L_814C086C
.L_814C0750:
/* 814C0750 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C0754 | 41 82 00 0C */	beq .L_814C0760
/* 814C0758 | 7F C3 F3 78 */	mr r3, r30
/* 814C075C | 48 00 01 24 */	b .L_814C0880
.L_814C0760:
/* 814C0760 | 88 16 00 48 */	lbz r0, 0x48(r22)
/* 814C0764 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C0768 | 41 82 01 14 */	beq .L_814C087C
/* 814C076C | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 814C0770 | 40 82 00 10 */	bne .L_814C0780
/* 814C0774 | 9B F7 02 0A */	stb r31, 0x20a(r23)
/* 814C0778 | B3 F7 00 00 */	sth r31, 0x0(r23)
/* 814C077C | 48 00 00 50 */	b .L_814C07CC
.L_814C0780:
/* 814C0780 | 7E E3 BB 78 */	mr r3, r23
/* 814C0784 | 7E C4 B3 78 */	mr r4, r22
/* 814C0788 | 7F 05 C3 78 */	mr r5, r24
/* 814C078C | 7F 26 CB 78 */	mr r6, r25
/* 814C0790 | 7F 87 E3 78 */	mr r7, r28
/* 814C0794 | 39 00 00 00 */	li r8, 0x0
/* 814C0798 | 4B FF F8 69 */	bl VFiPFENT_ITER_GetEntry
/* 814C079C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C07A0 | 40 82 00 2C */	bne .L_814C07CC
/* 814C07A4 | 80 16 00 38 */	lwz r0, 0x38(r22)
/* 814C07A8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C07AC | 90 17 02 2C */	stw r0, 0x22c(r23)
/* 814C07B0 | 41 82 00 0C */	beq .L_814C07BC
/* 814C07B4 | 80 16 00 00 */	lwz r0, 0x0(r22)
/* 814C07B8 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814C07BC:
/* 814C07BC | 38 00 00 01 */	li r0, 0x1
/* 814C07C0 | 38 60 00 00 */	li r3, 0x0
/* 814C07C4 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C07C8 | 48 00 00 B8 */	b .L_814C0880
.L_814C07CC:
/* 814C07CC | 83 D6 00 00 */	lwz r30, 0x0(r22)
/* 814C07D0 | 7E C3 B3 78 */	mr r3, r22
/* 814C07D4 | 38 80 00 00 */	li r4, 0x0
/* 814C07D8 | 38 1E 00 01 */	addi r0, r30, 0x1
/* 814C07DC | 90 16 00 00 */	stw r0, 0x0(r22)
/* 814C07E0 | 4B FF F7 0D */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C07E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C07E8 | 7C 7D 1B 78 */	mr r29, r3
/* 814C07EC | 41 82 00 18 */	beq .L_814C0804
/* 814C07F0 | 93 D6 00 00 */	stw r30, 0x0(r22)
/* 814C07F4 | 7E C3 B3 78 */	mr r3, r22
/* 814C07F8 | 38 80 00 00 */	li r4, 0x0
/* 814C07FC | 4B FF F6 F1 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0800 | 48 00 00 5C */	b .L_814C085C
.L_814C0804:
/* 814C0804 | 80 B6 00 40 */	lwz r5, 0x40(r22)
/* 814C0808 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C080C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C0810 | 40 82 00 0C */	bne .L_814C081C
/* 814C0814 | 38 80 00 10 */	li r4, 0x10
/* 814C0818 | 48 00 00 34 */	b .L_814C084C
.L_814C081C:
/* 814C081C | 80 76 00 04 */	lwz r3, 0x4(r22)
/* 814C0820 | 38 96 00 48 */	addi r4, r22, 0x48
/* 814C0824 | A0 D6 00 44 */	lhz r6, 0x44(r22)
/* 814C0828 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C082C | 38 E0 00 20 */	li r7, 0x20
/* 814C0830 | 39 20 00 00 */	li r9, 0x0
/* 814C0834 | 48 00 C1 25 */	bl VFiPFSEC_ReadData
/* 814C0838 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C083C | 38 80 00 11 */	li r4, 0x11
/* 814C0840 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C0844 | 40 82 00 08 */	bne .L_814C084C
/* 814C0848 | 7C 64 1B 78 */	mr r4, r3
.L_814C084C:
/* 814C084C | 7C 04 00 D0 */	neg r0, r4
/* 814C0850 | 7C 00 23 78 */	or r0, r0, r4
/* 814C0854 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C0858 | 7C 9D 00 38 */	and r29, r4, r0
.L_814C085C:
/* 814C085C | 7C 1D 00 D0 */	neg r0, r29
/* 814C0860 | 7C 00 EB 78 */	or r0, r0, r29
/* 814C0864 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C0868 | 7F BE 00 38 */	and r30, r29, r0
.L_814C086C:
/* 814C086C | 7E C3 B3 78 */	mr r3, r22
/* 814C0870 | 48 00 0B 4D */	bl VFiPFENT_ITER_IsAtLogicalEnd
/* 814C0874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0878 | 41 82 FE D8 */	beq .L_814C0750
.L_814C087C:
/* 814C087C | 38 60 00 00 */	li r3, 0x0
.L_814C0880:
/* 814C0880 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C0884 | 48 13 8C 75 */	bl _restgpr_22
/* 814C0888 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C088C | 7C 08 03 A6 */	mtlr r0
/* 814C0890 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814C0894 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_DoFindEntry

# .text:0x9AC | 0x814C0898 | size: 0x40C
.fn VFiPFENT_ITER_DoAllocateEntry, global
/* 814C0898 | 94 21 FD 00 */	stwu r1, -0x300(r1)
/* 814C089C | 7C 08 02 A6 */	mflr r0
/* 814C08A0 | 90 01 03 04 */	stw r0, 0x304(r1)
/* 814C08A4 | 39 61 03 00 */	addi r11, r1, 0x300
/* 814C08A8 | 48 13 8B ED */	bl _savegpr_16
/* 814C08AC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C08B0 | 7C 71 1B 78 */	mr r17, r3
/* 814C08B4 | 7C 92 23 78 */	mr r18, r4
/* 814C08B8 | 7C B3 2B 78 */	mr r19, r5
/* 814C08BC | 7C D4 33 78 */	mr r20, r6
/* 814C08C0 | 7C F5 3B 78 */	mr r21, r7
/* 814C08C4 | 7D 16 43 78 */	mr r22, r8
/* 814C08C8 | 7D 37 4B 78 */	mr r23, r9
/* 814C08CC | 3B C0 00 00 */	li r30, 0x0
/* 814C08D0 | 3B A0 FF FF */	li r29, -0x1
/* 814C08D4 | 3B 80 00 00 */	li r28, 0x0
/* 814C08D8 | 3B 60 FF FF */	li r27, -0x1
/* 814C08DC | 3B 40 FF FF */	li r26, -0x1
/* 814C08E0 | 3B 20 FF FF */	li r25, -0x1
/* 814C08E4 | 3B 00 00 00 */	li r24, 0x0
/* 814C08E8 | 41 82 00 10 */	beq .L_814C08F8
/* 814C08EC | 3C 60 00 0F */	lis r3, 0xf
/* 814C08F0 | 38 03 42 3F */	addi r0, r3, 0x423f
/* 814C08F4 | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814C08F8:
/* 814C08F8 | 38 00 FF FF */	li r0, -0x1
/* 814C08FC | 90 06 00 04 */	stw r0, 0x4(r6)
/* 814C0900 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C0904 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 814C0908 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 814C090C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 814C0910 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 814C0914 | 80 85 00 08 */	lwz r4, 0x8(r5)
/* 814C0918 | 80 65 00 0C */	lwz r3, 0xc(r5)
/* 814C091C | 90 81 00 24 */	stw r4, 0x24(r1)
/* 814C0920 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 814C0924 | 80 85 00 10 */	lwz r4, 0x10(r5)
/* 814C0928 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 814C092C | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 814C0930 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 814C0934 | 80 85 00 18 */	lwz r4, 0x18(r5)
/* 814C0938 | 80 65 00 1C */	lwz r3, 0x1c(r5)
/* 814C093C | 90 81 00 34 */	stw r4, 0x34(r1)
/* 814C0940 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 814C0944 | 80 85 00 20 */	lwz r4, 0x20(r5)
/* 814C0948 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814C094C | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 814C0950 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 814C0954 | 80 85 00 28 */	lwz r4, 0x28(r5)
/* 814C0958 | 80 65 00 2C */	lwz r3, 0x2c(r5)
/* 814C095C | 90 81 00 44 */	stw r4, 0x44(r1)
/* 814C0960 | 90 61 00 48 */	stw r3, 0x48(r1)
/* 814C0964 | 80 65 00 30 */	lwz r3, 0x30(r5)
/* 814C0968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C096C | 90 61 00 4C */	stw r3, 0x4c(r1)
/* 814C0970 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 814C0974 | 40 82 00 0C */	bne .L_814C0980
/* 814C0978 | 3A 00 00 0A */	li r16, 0xa
/* 814C097C | 48 00 00 B8 */	b .L_814C0A34
.L_814C0980:
/* 814C0980 | 88 83 00 20 */	lbz r4, 0x20(r3)
/* 814C0984 | 38 60 00 01 */	li r3, 0x1
/* 814C0988 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 814C098C | 38 A0 00 00 */	li r5, 0x0
/* 814C0990 | 38 84 FF FB */	subi r4, r4, 0x5
/* 814C0994 | 90 01 00 50 */	stw r0, 0x50(r1)
/* 814C0998 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 814C099C | 7C 63 00 30 */	slw r3, r3, r0
/* 814C09A0 | 98 81 00 7C */	stb r4, 0x7c(r1)
/* 814C09A4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C09A8 | 38 80 00 00 */	li r4, 0x0
/* 814C09AC | B0 01 00 5A */	sth r0, 0x5a(r1)
/* 814C09B0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C09B4 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 814C09B8 | 4B FF F5 35 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C09BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C09C0 | 7C 70 1B 78 */	mr r16, r3
/* 814C09C4 | 41 82 00 18 */	beq .L_814C09DC
/* 814C09C8 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 814C09CC | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C09D0 | 38 80 00 00 */	li r4, 0x0
/* 814C09D4 | 4B FF F5 19 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C09D8 | 48 00 00 5C */	b .L_814C0A34
.L_814C09DC:
/* 814C09DC | 80 A1 00 54 */	lwz r5, 0x54(r1)
/* 814C09E0 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C09E4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C09E8 | 40 82 00 0C */	bne .L_814C09F4
/* 814C09EC | 38 80 00 10 */	li r4, 0x10
/* 814C09F0 | 48 00 00 34 */	b .L_814C0A24
.L_814C09F4:
/* 814C09F4 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814C09F8 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 814C09FC | A0 C1 00 58 */	lhz r6, 0x58(r1)
/* 814C0A00 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C0A04 | 38 E0 00 20 */	li r7, 0x20
/* 814C0A08 | 39 20 00 00 */	li r9, 0x0
/* 814C0A0C | 48 00 BF 4D */	bl VFiPFSEC_ReadData
/* 814C0A10 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C0A14 | 38 80 00 11 */	li r4, 0x11
/* 814C0A18 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C0A1C | 40 82 00 08 */	bne .L_814C0A24
/* 814C0A20 | 7C 64 1B 78 */	mr r4, r3
.L_814C0A24:
/* 814C0A24 | 7C 04 00 D0 */	neg r0, r4
/* 814C0A28 | 7C 00 23 78 */	or r0, r0, r4
/* 814C0A2C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C0A30 | 7C 90 00 38 */	and r16, r4, r0
.L_814C0A34:
/* 814C0A34 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 814C0A38 | 41 82 00 14 */	beq .L_814C0A4C
/* 814C0A3C | 2C 10 00 10 */	cmpwi r16, 0x10
/* 814C0A40 | 41 82 02 28 */	beq .L_814C0C68
/* 814C0A44 | 7E 03 83 78 */	mr r3, r16
/* 814C0A48 | 48 00 02 44 */	b .L_814C0C8C
.L_814C0A4C:
/* 814C0A4C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C0A50 | 40 82 00 74 */	bne .L_814C0AC4
/* 814C0A54 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814C0A58 | 40 82 00 08 */	bne .L_814C0A60
/* 814C0A5C | 83 61 00 54 */	lwz r27, 0x54(r1)
.L_814C0A60:
/* 814C0A60 | 88 01 00 5C */	lbz r0, 0x5c(r1)
/* 814C0A64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C0A68 | 41 82 00 0C */	beq .L_814C0A74
/* 814C0A6C | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 814C0A70 | 40 82 00 48 */	bne .L_814C0AB8
.L_814C0A74:
/* 814C0A74 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814C0A78 | 7C 1B 00 40 */	cmplw r27, r0
/* 814C0A7C | 41 82 00 10 */	beq .L_814C0A8C
/* 814C0A80 | 7F 59 D3 78 */	mr r25, r26
/* 814C0A84 | 7F 7A DB 78 */	mr r26, r27
/* 814C0A88 | 7C 1B 03 78 */	mr r27, r0
.L_814C0A8C:
/* 814C0A8C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814C0A90 | 7C 18 90 40 */	cmplw r24, r18
/* 814C0A94 | 41 80 00 30 */	blt .L_814C0AC4
/* 814C0A98 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814C0A9C | 41 82 00 0C */	beq .L_814C0AA8
/* 814C0AA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C0AA4 | 90 17 00 00 */	stw r0, 0x0(r23)
.L_814C0AA8:
/* 814C0AA8 | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 814C0AAC | 3B C0 00 01 */	li r30, 0x1
/* 814C0AB0 | A3 81 00 58 */	lhz r28, 0x58(r1)
/* 814C0AB4 | 48 00 00 10 */	b .L_814C0AC4
.L_814C0AB8:
/* 814C0AB8 | 3B 00 00 00 */	li r24, 0x0
/* 814C0ABC | 3B 40 FF FF */	li r26, -0x1
/* 814C0AC0 | 3B 20 FF FF */	li r25, -0x1
.L_814C0AC4:
/* 814C0AC4 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814C0AC8 | 41 82 00 DC */	beq .L_814C0BA4
/* 814C0ACC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C0AD0 | 41 82 00 10 */	beq .L_814C0AE0
/* 814C0AD4 | 88 01 00 5C */	lbz r0, 0x5c(r1)
/* 814C0AD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C0ADC | 41 82 01 8C */	beq .L_814C0C68
.L_814C0AE0:
/* 814C0AE0 | 88 01 00 5C */	lbz r0, 0x5c(r1)
/* 814C0AE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C0AE8 | 41 82 00 64 */	beq .L_814C0B4C
/* 814C0AEC | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 814C0AF0 | 41 82 00 5C */	beq .L_814C0B4C
/* 814C0AF4 | 7E A5 AB 78 */	mr r5, r21
/* 814C0AF8 | 7E C6 B3 78 */	mr r6, r22
/* 814C0AFC | 38 61 00 80 */	addi r3, r1, 0x80
/* 814C0B00 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814C0B04 | 38 E0 00 00 */	li r7, 0x0
/* 814C0B08 | 39 00 00 00 */	li r8, 0x0
/* 814C0B0C | 4B FF F4 F5 */	bl VFiPFENT_ITER_GetEntry
/* 814C0B10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0B14 | 40 82 00 38 */	bne .L_814C0B4C
/* 814C0B18 | 38 00 00 48 */	li r0, 0x48
/* 814C0B1C | 38 B1 FF FC */	subi r5, r17, 0x4
/* 814C0B20 | 38 81 00 7C */	addi r4, r1, 0x7c
/* 814C0B24 | 7C 09 03 A6 */	mtctr r0
.L_814C0B28:
/* 814C0B28 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814C0B2C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814C0B30 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814C0B34 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814C0B38 | 42 00 FF F0 */	bdnz .L_814C0B28
/* 814C0B3C | 80 13 00 30 */	lwz r0, 0x30(r19)
/* 814C0B40 | 38 60 00 08 */	li r3, 0x8
/* 814C0B44 | 90 11 02 2C */	stw r0, 0x22c(r17)
/* 814C0B48 | 48 00 01 44 */	b .L_814C0C8C
.L_814C0B4C:
/* 814C0B4C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C0B50 | 41 82 00 5C */	beq .L_814C0BAC
/* 814C0B54 | 80 73 00 30 */	lwz r3, 0x30(r19)
/* 814C0B58 | A0 81 00 58 */	lhz r4, 0x58(r1)
/* 814C0B5C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814C0B60 | 38 64 00 20 */	addi r3, r4, 0x20
/* 814C0B64 | 7C 03 00 00 */	cmpw r3, r0
/* 814C0B68 | 40 82 00 44 */	bne .L_814C0BAC
/* 814C0B6C | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 814C0B70 | 7E 63 9B 78 */	mr r3, r19
/* 814C0B74 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C0B78 | 38 A0 00 00 */	li r5, 0x0
/* 814C0B7C | 38 84 00 01 */	addi r4, r4, 0x1
/* 814C0B80 | 48 00 2F 35 */	bl VFiPFFAT_GetSectorSpecified
/* 814C0B84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0B88 | 41 82 00 08 */	beq .L_814C0B90
/* 814C0B8C | 48 00 01 00 */	b .L_814C0C8C
.L_814C0B90:
/* 814C0B90 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814C0B94 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C0B98 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C0B9C | 41 82 00 CC */	beq .L_814C0C68
/* 814C0BA0 | 48 00 00 0C */	b .L_814C0BAC
.L_814C0BA4:
/* 814C0BA4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C0BA8 | 40 82 00 C0 */	bne .L_814C0C68
.L_814C0BAC:
/* 814C0BAC | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 814C0BB0 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 814C0BB4 | 7C 1F 20 40 */	cmplw r31, r4
/* 814C0BB8 | 40 82 00 14 */	bne .L_814C0BCC
/* 814C0BBC | 80 61 00 54 */	lwz r3, 0x54(r1)
/* 814C0BC0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C0BC4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C0BC8 | 41 82 00 98 */	beq .L_814C0C60
.L_814C0BCC:
/* 814C0BCC | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814C0BD0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C0BD4 | 38 80 00 01 */	li r4, 0x1
/* 814C0BD8 | 4B FF F3 15 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0BDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0BE0 | 7C 70 1B 78 */	mr r16, r3
/* 814C0BE4 | 41 82 00 18 */	beq .L_814C0BFC
/* 814C0BE8 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 814C0BEC | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C0BF0 | 38 80 00 00 */	li r4, 0x0
/* 814C0BF4 | 4B FF F2 F9 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0BF8 | 48 00 00 5C */	b .L_814C0C54
.L_814C0BFC:
/* 814C0BFC | 80 A1 00 54 */	lwz r5, 0x54(r1)
/* 814C0C00 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C0C04 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C0C08 | 40 82 00 0C */	bne .L_814C0C14
/* 814C0C0C | 38 80 00 10 */	li r4, 0x10
/* 814C0C10 | 48 00 00 34 */	b .L_814C0C44
.L_814C0C14:
/* 814C0C14 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814C0C18 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 814C0C1C | A0 C1 00 58 */	lhz r6, 0x58(r1)
/* 814C0C20 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C0C24 | 38 E0 00 20 */	li r7, 0x20
/* 814C0C28 | 39 20 00 00 */	li r9, 0x0
/* 814C0C2C | 48 00 BD 2D */	bl VFiPFSEC_ReadData
/* 814C0C30 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C0C34 | 38 80 00 11 */	li r4, 0x11
/* 814C0C38 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C0C3C | 40 82 00 08 */	bne .L_814C0C44
/* 814C0C40 | 7C 64 1B 78 */	mr r4, r3
.L_814C0C44:
/* 814C0C44 | 7C 04 00 D0 */	neg r0, r4
/* 814C0C48 | 7C 00 23 78 */	or r0, r0, r4
/* 814C0C4C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C0C50 | 7C 90 00 38 */	and r16, r4, r0
.L_814C0C54:
/* 814C0C54 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 814C0C58 | 41 82 00 08 */	beq .L_814C0C60
/* 814C0C5C | 4B FF FD D8 */	b .L_814C0A34
.L_814C0C60:
/* 814C0C60 | 3A 00 00 00 */	li r16, 0x0
/* 814C0C64 | 4B FF FD D0 */	b .L_814C0A34
.L_814C0C68:
/* 814C0C68 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C0C6C | 40 82 00 0C */	bne .L_814C0C78
/* 814C0C70 | 38 60 00 05 */	li r3, 0x5
/* 814C0C74 | 48 00 00 18 */	b .L_814C0C8C
.L_814C0C78:
/* 814C0C78 | 93 54 00 00 */	stw r26, 0x0(r20)
/* 814C0C7C | 38 60 00 00 */	li r3, 0x0
/* 814C0C80 | 93 34 00 04 */	stw r25, 0x4(r20)
/* 814C0C84 | 93 B1 02 38 */	stw r29, 0x238(r17)
/* 814C0C88 | B3 91 02 3C */	sth r28, 0x23c(r17)
.L_814C0C8C:
/* 814C0C8C | 39 61 03 00 */	addi r11, r1, 0x300
/* 814C0C90 | 48 13 88 51 */	bl _restgpr_16
/* 814C0C94 | 80 01 03 04 */	lwz r0, 0x304(r1)
/* 814C0C98 | 7C 08 03 A6 */	mtlr r0
/* 814C0C9C | 38 21 03 00 */	addi r1, r1, 0x300
/* 814C0CA0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_DoAllocateEntry

# .text:0xDB8 | 0x814C0CA4 | size: 0x614
.fn VFiPFENT_ITER_DoGetEntryOfPath, global
/* 814C0CA4 | 94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 814C0CA8 | 7C 08 02 A6 */	mflr r0
/* 814C0CAC | 90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 814C0CB0 | 39 61 02 B0 */	addi r11, r1, 0x2b0
/* 814C0CB4 | 48 13 87 F5 */	bl _savegpr_21
/* 814C0CB8 | 7C D6 33 78 */	mr r22, r6
/* 814C0CBC | 7C 77 1B 78 */	mr r23, r3
/* 814C0CC0 | 7C 98 23 78 */	mr r24, r4
/* 814C0CC4 | 7C BB 2B 78 */	mr r27, r5
/* 814C0CC8 | 7C F9 3B 78 */	mr r25, r7
/* 814C0CCC | 7D 1A 43 78 */	mr r26, r8
/* 814C0CD0 | 7E C3 B3 78 */	mr r3, r22
/* 814C0CD4 | 38 8D 9C D0 */	li r4, lbl_81697D10@sda21
/* 814C0CD8 | 38 A0 00 01 */	li r5, 0x1
/* 814C0CDC | 38 C0 00 01 */	li r6, 0x1
/* 814C0CE0 | 38 E0 00 01 */	li r7, 0x1
/* 814C0CE4 | 4B FF 52 65 */	bl VFiPFSTR_StrNCmp
/* 814C0CE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0CEC | 40 82 00 10 */	bne .L_814C0CFC
/* 814C0CF0 | 7E C3 B3 78 */	mr r3, r22
/* 814C0CF4 | 38 80 00 02 */	li r4, 0x2
/* 814C0CF8 | 4B FF 4F 2D */	bl VFiPFSTR_MoveStrPos
.L_814C0CFC:
/* 814C0CFC | 7E C3 B3 78 */	mr r3, r22
/* 814C0D00 | 38 8D 9C D4 */	li r4, lbl_81697D14@sda21
/* 814C0D04 | 38 A0 00 01 */	li r5, 0x1
/* 814C0D08 | 38 C0 00 00 */	li r6, 0x0
/* 814C0D0C | 38 E0 00 01 */	li r7, 0x1
/* 814C0D10 | 4B FF 52 39 */	bl VFiPFSTR_StrNCmp
/* 814C0D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0D18 | 41 82 00 24 */	beq .L_814C0D3C
/* 814C0D1C | 7E C3 B3 78 */	mr r3, r22
/* 814C0D20 | 38 8D 9C D8 */	li r4, lbl_81697D18@sda21
/* 814C0D24 | 38 A0 00 01 */	li r5, 0x1
/* 814C0D28 | 38 C0 00 00 */	li r6, 0x0
/* 814C0D2C | 38 E0 00 01 */	li r7, 0x1
/* 814C0D30 | 4B FF 52 19 */	bl VFiPFSTR_StrNCmp
/* 814C0D34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0D38 | 40 82 00 5C */	bne .L_814C0D94
.L_814C0D3C:
/* 814C0D3C | 7F 63 DB 78 */	mr r3, r27
/* 814C0D40 | 7F 04 C3 78 */	mr r4, r24
/* 814C0D44 | 4B FF E2 5D */	bl VFiPFENT_GetRootDir
/* 814C0D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0D4C | 41 82 00 08 */	beq .L_814C0D54
/* 814C0D50 | 48 00 05 50 */	b .L_814C12A0
.L_814C0D54:
/* 814C0D54 | 7E C3 B3 78 */	mr r3, r22
/* 814C0D58 | 38 80 00 01 */	li r4, 0x1
/* 814C0D5C | 4B FF 50 69 */	bl VFiPFSTR_StrNumChar
/* 814C0D60 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814C0D64 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C0D68 | 40 82 00 44 */	bne .L_814C0DAC
/* 814C0D6C | 7E C3 B3 78 */	mr r3, r22
/* 814C0D70 | 38 8D 9C DC */	li r4, lbl_81697D1C@sda21
/* 814C0D74 | 38 A0 00 02 */	li r5, 0x2
/* 814C0D78 | 38 C0 00 00 */	li r6, 0x0
/* 814C0D7C | 38 E0 00 01 */	li r7, 0x1
/* 814C0D80 | 4B FF 51 C9 */	bl VFiPFSTR_StrNCmp
/* 814C0D84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0D88 | 40 82 00 24 */	bne .L_814C0DAC
/* 814C0D8C | 38 60 00 00 */	li r3, 0x0
/* 814C0D90 | 48 00 05 10 */	b .L_814C12A0
.L_814C0D94:
/* 814C0D94 | 7F 63 DB 78 */	mr r3, r27
/* 814C0D98 | 7F 04 C3 78 */	mr r4, r24
/* 814C0D9C | 48 00 CD F1 */	bl VFiPFVOL_GetCurrentDir
/* 814C0DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0DA4 | 41 82 00 08 */	beq .L_814C0DAC
/* 814C0DA8 | 48 00 04 F8 */	b .L_814C12A0
.L_814C0DAC:
/* 814C0DAC | 7E C3 B3 78 */	mr r3, r22
/* 814C0DB0 | 38 80 00 01 */	li r4, 0x1
/* 814C0DB4 | 4B FF 4E 59 */	bl VFiPFSTR_GetStrPos
/* 814C0DB8 | 7C 75 1B 78 */	mr r21, r3
/* 814C0DBC | 38 77 00 08 */	addi r3, r23, 0x8
/* 814C0DC0 | 7F 65 DB 78 */	mr r5, r27
/* 814C0DC4 | 38 81 00 20 */	addi r4, r1, 0x20
/* 814C0DC8 | 7C 66 1B 78 */	mr r6, r3
/* 814C0DCC | 48 00 41 A1 */	bl VFiPFFAT_InitFFD
/* 814C0DD0 | 80 18 02 34 */	lwz r0, 0x234(r24)
/* 814C0DD4 | 7E C3 B3 78 */	mr r3, r22
/* 814C0DD8 | 90 17 00 08 */	stw r0, 0x8(r23)
/* 814C0DDC | 4B FF 4E 29 */	bl VFiPFSTR_GetCodeMode
/* 814C0DE0 | 7C 65 1B 78 */	mr r5, r3
/* 814C0DE4 | 7E A4 AB 78 */	mr r4, r21
/* 814C0DE8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0DEC | 48 00 9D 1D */	bl VFiPFPATH_InitTokenOfPath
/* 814C0DF0 | 7F 24 CB 78 */	mr r4, r25
/* 814C0DF4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0DF8 | 48 00 9D 21 */	bl VFiPFPATH_GetNextTokenOfPath
/* 814C0DFC | 3B 80 00 01 */	li r28, 0x1
/* 814C0E00 | 3B A0 FF FF */	li r29, -0x1
/* 814C0E04 | 3B C0 00 00 */	li r30, 0x0
/* 814C0E08 | 3B E0 00 03 */	li r31, 0x3
/* 814C0E0C | 48 00 04 84 */	b .L_814C1290
.L_814C0E10:
/* 814C0E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0E14 | 41 82 00 08 */	beq .L_814C0E1C
/* 814C0E18 | 48 00 04 88 */	b .L_814C12A0
.L_814C0E1C:
/* 814C0E1C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C0E20 | 41 82 00 24 */	beq .L_814C0E44
/* 814C0E24 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0E28 | 38 8D 9C DC */	li r4, lbl_81697D1C@sda21
/* 814C0E2C | 38 A0 00 02 */	li r5, 0x2
/* 814C0E30 | 38 C0 00 00 */	li r6, 0x0
/* 814C0E34 | 38 E0 00 01 */	li r7, 0x1
/* 814C0E38 | 4B FF 51 11 */	bl VFiPFSTR_StrNCmp
/* 814C0E3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0E40 | 41 82 04 5C */	beq .L_814C129C
.L_814C0E44:
/* 814C0E44 | 88 18 02 1C */	lbz r0, 0x21c(r24)
/* 814C0E48 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814C0E4C | 40 82 00 0C */	bne .L_814C0E58
/* 814C0E50 | 38 60 00 02 */	li r3, 0x2
/* 814C0E54 | 48 00 04 4C */	b .L_814C12A0
.L_814C0E58:
/* 814C0E58 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0E5C | 4B FF 4F 55 */	bl VFiPFSTR_StrLen
/* 814C0E60 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C0E64 | 40 82 00 0C */	bne .L_814C0E70
/* 814C0E68 | 38 60 00 02 */	li r3, 0x2
/* 814C0E6C | 48 00 04 34 */	b .L_814C12A0
.L_814C0E70:
/* 814C0E70 | 80 18 02 34 */	lwz r0, 0x234(r24)
/* 814C0E74 | 38 77 00 08 */	addi r3, r23, 0x8
/* 814C0E78 | 7C 64 1B 78 */	mr r4, r3
/* 814C0E7C | 90 17 00 08 */	stw r0, 0x8(r23)
/* 814C0E80 | 48 00 40 91 */	bl VFiPFFAT_ResetFFD
/* 814C0E84 | 80 77 00 38 */	lwz r3, 0x38(r23)
/* 814C0E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0E8C | 90 77 00 04 */	stw r3, 0x4(r23)
/* 814C0E90 | 40 82 00 0C */	bne .L_814C0E9C
/* 814C0E94 | 3A C0 00 0A */	li r22, 0xa
/* 814C0E98 | 48 00 00 B0 */	b .L_814C0F48
.L_814C0E9C:
/* 814C0E9C | 88 A3 00 20 */	lbz r5, 0x20(r3)
/* 814C0EA0 | 7E E3 BB 78 */	mr r3, r23
/* 814C0EA4 | 83 77 00 00 */	lwz r27, 0x0(r23)
/* 814C0EA8 | 38 80 00 00 */	li r4, 0x0
/* 814C0EAC | 38 C5 FF FB */	subi r6, r5, 0x5
/* 814C0EB0 | 93 B7 00 3C */	stw r29, 0x3c(r23)
/* 814C0EB4 | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 814C0EB8 | 7F 85 00 30 */	slw r5, r28, r0
/* 814C0EBC | 98 D7 00 68 */	stb r6, 0x68(r23)
/* 814C0EC0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C0EC4 | B0 17 00 46 */	sth r0, 0x46(r23)
/* 814C0EC8 | 93 D7 00 00 */	stw r30, 0x0(r23)
/* 814C0ECC | 4B FF F0 21 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0ED4 | 7C 76 1B 78 */	mr r22, r3
/* 814C0ED8 | 41 82 00 18 */	beq .L_814C0EF0
/* 814C0EDC | 93 77 00 00 */	stw r27, 0x0(r23)
/* 814C0EE0 | 7E E3 BB 78 */	mr r3, r23
/* 814C0EE4 | 38 80 00 00 */	li r4, 0x0
/* 814C0EE8 | 4B FF F0 05 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C0EEC | 48 00 00 5C */	b .L_814C0F48
.L_814C0EF0:
/* 814C0EF0 | 80 B7 00 40 */	lwz r5, 0x40(r23)
/* 814C0EF4 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C0EF8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C0EFC | 40 82 00 0C */	bne .L_814C0F08
/* 814C0F00 | 38 80 00 10 */	li r4, 0x10
/* 814C0F04 | 48 00 00 34 */	b .L_814C0F38
.L_814C0F08:
/* 814C0F08 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814C0F0C | 38 97 00 48 */	addi r4, r23, 0x48
/* 814C0F10 | A0 D7 00 44 */	lhz r6, 0x44(r23)
/* 814C0F14 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C0F18 | 38 E0 00 20 */	li r7, 0x20
/* 814C0F1C | 39 20 00 00 */	li r9, 0x0
/* 814C0F20 | 48 00 BA 39 */	bl VFiPFSEC_ReadData
/* 814C0F24 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C0F28 | 38 80 00 11 */	li r4, 0x11
/* 814C0F2C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C0F30 | 40 82 00 08 */	bne .L_814C0F38
/* 814C0F34 | 7C 64 1B 78 */	mr r4, r3
.L_814C0F38:
/* 814C0F38 | 7C 04 00 D0 */	neg r0, r4
/* 814C0F3C | 7C 00 23 78 */	or r0, r0, r4
/* 814C0F40 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C0F44 | 7C 96 00 38 */	and r22, r4, r0
.L_814C0F48:
/* 814C0F48 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814C0F4C | 41 82 00 0C */	beq .L_814C0F58
/* 814C0F50 | 7E C3 B3 78 */	mr r3, r22
/* 814C0F54 | 48 00 03 4C */	b .L_814C12A0
.L_814C0F58:
/* 814C0F58 | 80 B7 00 0C */	lwz r5, 0xc(r23)
/* 814C0F5C | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0F60 | 3A A0 00 00 */	li r21, 0x0
/* 814C0F64 | 38 8D 9C B8 */	li r4, lbl_81697CF8@sda21
/* 814C0F68 | 83 65 00 00 */	lwz r27, 0x0(r5)
/* 814C0F6C | 38 A0 00 01 */	li r5, 0x1
/* 814C0F70 | 38 C0 00 00 */	li r6, 0x0
/* 814C0F74 | 38 E0 00 03 */	li r7, 0x3
/* 814C0F78 | 4B FF 4F D1 */	bl VFiPFSTR_StrNCmp
/* 814C0F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0F80 | 41 82 00 38 */	beq .L_814C0FB8
/* 814C0F84 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0F88 | 38 8D 9C BC */	li r4, lbl_81697CFC@sda21
/* 814C0F8C | 38 A0 00 01 */	li r5, 0x1
/* 814C0F90 | 38 C0 00 00 */	li r6, 0x0
/* 814C0F94 | 38 E0 00 03 */	li r7, 0x3
/* 814C0F98 | 4B FF 4F B1 */	bl VFiPFSTR_StrNCmp
/* 814C0F9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0FA0 | 41 82 00 18 */	beq .L_814C0FB8
/* 814C0FA4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C0FA8 | 38 8D 9C C0 */	li r4, lbl_81697D00@sda21
/* 814C0FAC | 4B FF 4E F9 */	bl VFiPFSTR_StrCmp
/* 814C0FB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0FB4 | 40 82 00 40 */	bne .L_814C0FF4
.L_814C0FB8:
/* 814C0FB8 | 38 78 02 0E */	addi r3, r24, 0x20e
/* 814C0FBC | 38 8D 9C C0 */	li r4, lbl_81697D00@sda21
/* 814C0FC0 | 4B FF 4A 85 */	bl VFipf_strcmp
/* 814C0FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C0FC8 | 41 82 00 2C */	beq .L_814C0FF4
/* 814C0FCC | 88 18 02 0A */	lbz r0, 0x20a(r24)
/* 814C0FD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C0FD4 | 41 82 00 14 */	beq .L_814C0FE8
/* 814C0FD8 | 7F 03 C3 78 */	mr r3, r24
/* 814C0FDC | 48 00 A5 65 */	bl VFiPFPATH_GetLengthFromUnicode
/* 814C0FE0 | 3A A3 00 01 */	addi r21, r3, 0x1
/* 814C0FE4 | 48 00 00 10 */	b .L_814C0FF4
.L_814C0FE8:
/* 814C0FE8 | 38 78 02 0E */	addi r3, r24, 0x20e
/* 814C0FEC | 48 00 A4 ED */	bl VFiPFPATH_GetLengthFromShortname
/* 814C0FF0 | 3A A3 00 01 */	addi r21, r3, 0x1
.L_814C0FF4:
/* 814C0FF4 | 7E E3 BB 78 */	mr r3, r23
/* 814C0FF8 | 7F 04 C3 78 */	mr r4, r24
/* 814C0FFC | 38 A1 00 28 */	addi r5, r1, 0x28
/* 814C1000 | 38 E1 00 18 */	addi r7, r1, 0x18
/* 814C1004 | 39 01 00 14 */	addi r8, r1, 0x14
/* 814C1008 | 39 21 00 10 */	addi r9, r1, 0x10
/* 814C100C | 38 C0 00 77 */	li r6, 0x77
/* 814C1010 | 39 40 00 01 */	li r10, 0x1
/* 814C1014 | 4B FF F2 A1 */	bl VFiPFENT_ITER_DoFindEntry
/* 814C1018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C101C | 41 82 00 08 */	beq .L_814C1024
/* 814C1020 | 48 00 02 80 */	b .L_814C12A0
.L_814C1024:
/* 814C1024 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C1028 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C102C | 40 82 00 28 */	bne .L_814C1054
/* 814C1030 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C1034 | 38 80 00 02 */	li r4, 0x2
/* 814C1038 | 4B FF 4D 8D */	bl VFiPFSTR_StrNumChar
/* 814C103C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814C1040 | 7C 03 00 D0 */	neg r0, r3
/* 814C1044 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C1048 | 7C 03 FE 70 */	srawi r3, r0, 31
/* 814C104C | 38 63 00 03 */	addi r3, r3, 0x3
/* 814C1050 | 48 00 02 50 */	b .L_814C12A0
.L_814C1054:
/* 814C1054 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814C1058 | 40 82 02 2C */	bne .L_814C1284
/* 814C105C | 88 18 02 1C */	lbz r0, 0x21c(r24)
/* 814C1060 | 54 03 06 F7 */	rlwinm. r3, r0, 0, 27, 27
/* 814C1064 | 41 82 00 18 */	beq .L_814C107C
/* 814C1068 | 80 18 02 34 */	lwz r0, 0x234(r24)
/* 814C106C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C1070 | 40 82 00 0C */	bne .L_814C107C
/* 814C1074 | 93 F8 02 30 */	stw r31, 0x230(r24)
/* 814C1078 | 48 00 02 0C */	b .L_814C1284
.L_814C107C:
/* 814C107C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1080 | 41 82 01 90 */	beq .L_814C1210
/* 814C1084 | 38 78 02 0E */	addi r3, r24, 0x20e
/* 814C1088 | 38 8D 9C C0 */	li r4, lbl_81697D00@sda21
/* 814C108C | 4B FF 49 B9 */	bl VFipf_strcmp
/* 814C1090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1094 | 40 82 01 7C */	bne .L_814C1210
/* 814C1098 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814C109C | 41 82 00 14 */	beq .L_814C10B0
/* 814C10A0 | 80 18 02 30 */	lwz r0, 0x230(r24)
/* 814C10A4 | 7C 15 00 50 */	subf r0, r21, r0
/* 814C10A8 | 90 18 02 30 */	stw r0, 0x230(r24)
/* 814C10AC | 48 00 01 D8 */	b .L_814C1284
.L_814C10B0:
/* 814C10B0 | 80 18 02 34 */	lwz r0, 0x234(r24)
/* 814C10B4 | 38 77 00 08 */	addi r3, r23, 0x8
/* 814C10B8 | 38 81 02 6C */	addi r4, r1, 0x26c
/* 814C10BC | 90 01 02 6C */	stw r0, 0x26c(r1)
/* 814C10C0 | 48 00 3E 51 */	bl VFiPFFAT_ResetFFD
/* 814C10C4 | 80 77 00 38 */	lwz r3, 0x38(r23)
/* 814C10C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C10CC | 90 77 00 04 */	stw r3, 0x4(r23)
/* 814C10D0 | 40 82 00 0C */	bne .L_814C10DC
/* 814C10D4 | 3A A0 00 0A */	li r21, 0xa
/* 814C10D8 | 48 00 00 B0 */	b .L_814C1188
.L_814C10DC:
/* 814C10DC | 88 A3 00 20 */	lbz r5, 0x20(r3)
/* 814C10E0 | 7E E3 BB 78 */	mr r3, r23
/* 814C10E4 | 82 D7 00 00 */	lwz r22, 0x0(r23)
/* 814C10E8 | 38 80 00 00 */	li r4, 0x0
/* 814C10EC | 38 C5 FF FB */	subi r6, r5, 0x5
/* 814C10F0 | 93 B7 00 3C */	stw r29, 0x3c(r23)
/* 814C10F4 | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 814C10F8 | 7F 85 00 30 */	slw r5, r28, r0
/* 814C10FC | 98 D7 00 68 */	stb r6, 0x68(r23)
/* 814C1100 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C1104 | B0 17 00 46 */	sth r0, 0x46(r23)
/* 814C1108 | 93 D7 00 00 */	stw r30, 0x0(r23)
/* 814C110C | 4B FF ED E1 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1114 | 7C 75 1B 78 */	mr r21, r3
/* 814C1118 | 41 82 00 18 */	beq .L_814C1130
/* 814C111C | 92 D7 00 00 */	stw r22, 0x0(r23)
/* 814C1120 | 7E E3 BB 78 */	mr r3, r23
/* 814C1124 | 38 80 00 00 */	li r4, 0x0
/* 814C1128 | 4B FF ED C5 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C112C | 48 00 00 5C */	b .L_814C1188
.L_814C1130:
/* 814C1130 | 80 B7 00 40 */	lwz r5, 0x40(r23)
/* 814C1134 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C1138 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C113C | 40 82 00 0C */	bne .L_814C1148
/* 814C1140 | 38 80 00 10 */	li r4, 0x10
/* 814C1144 | 48 00 00 34 */	b .L_814C1178
.L_814C1148:
/* 814C1148 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814C114C | 38 97 00 48 */	addi r4, r23, 0x48
/* 814C1150 | A0 D7 00 44 */	lhz r6, 0x44(r23)
/* 814C1154 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C1158 | 38 E0 00 20 */	li r7, 0x20
/* 814C115C | 39 20 00 00 */	li r9, 0x0
/* 814C1160 | 48 00 B7 F9 */	bl VFiPFSEC_ReadData
/* 814C1164 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C1168 | 38 80 00 11 */	li r4, 0x11
/* 814C116C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C1170 | 40 82 00 08 */	bne .L_814C1178
/* 814C1174 | 7C 64 1B 78 */	mr r4, r3
.L_814C1178:
/* 814C1178 | 7C 04 00 D0 */	neg r0, r4
/* 814C117C | 7C 00 23 78 */	or r0, r0, r4
/* 814C1180 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C1184 | 7C 95 00 38 */	and r21, r4, r0
.L_814C1188:
/* 814C1188 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814C118C | 41 82 00 0C */	beq .L_814C1198
/* 814C1190 | 7E A3 AB 78 */	mr r3, r21
/* 814C1194 | 48 00 01 0C */	b .L_814C12A0
.L_814C1198:
/* 814C1198 | 7E E3 BB 78 */	mr r3, r23
/* 814C119C | 7F 65 DB 78 */	mr r5, r27
/* 814C11A0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814C11A4 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 814C11A8 | 48 00 0B 91 */	bl VFiPFENT_ITER_FindCluster
/* 814C11AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C11B0 | 41 82 00 08 */	beq .L_814C11B8
/* 814C11B4 | 48 00 00 EC */	b .L_814C12A0
.L_814C11B8:
/* 814C11B8 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C11BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C11C0 | 40 82 00 0C */	bne .L_814C11CC
/* 814C11C4 | 38 60 00 02 */	li r3, 0x2
/* 814C11C8 | 48 00 00 D8 */	b .L_814C12A0
.L_814C11CC:
/* 814C11CC | 88 01 02 42 */	lbz r0, 0x242(r1)
/* 814C11D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C11D4 | 41 82 00 20 */	beq .L_814C11F4
/* 814C11D8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814C11DC | 48 00 A3 65 */	bl VFiPFPATH_GetLengthFromUnicode
/* 814C11E0 | 80 18 02 30 */	lwz r0, 0x230(r24)
/* 814C11E4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814C11E8 | 7C 03 00 50 */	subf r0, r3, r0
/* 814C11EC | 90 18 02 30 */	stw r0, 0x230(r24)
/* 814C11F0 | 48 00 00 94 */	b .L_814C1284
.L_814C11F4:
/* 814C11F4 | 38 61 02 46 */	addi r3, r1, 0x246
/* 814C11F8 | 48 00 A2 E1 */	bl VFiPFPATH_GetLengthFromShortname
/* 814C11FC | 80 18 02 30 */	lwz r0, 0x230(r24)
/* 814C1200 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814C1204 | 7C 03 00 50 */	subf r0, r3, r0
/* 814C1208 | 90 18 02 30 */	stw r0, 0x230(r24)
/* 814C120C | 48 00 00 78 */	b .L_814C1284
.L_814C1210:
/* 814C1210 | 88 18 02 1C */	lbz r0, 0x21c(r24)
/* 814C1214 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814C1218 | 41 82 00 10 */	beq .L_814C1228
/* 814C121C | 88 18 02 0E */	lbz r0, 0x20e(r24)
/* 814C1220 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814C1224 | 41 82 00 60 */	beq .L_814C1284
.L_814C1228:
/* 814C1228 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C122C | 38 80 00 01 */	li r4, 0x1
/* 814C1230 | 4B FF 4B 95 */	bl VFiPFSTR_StrNumChar
/* 814C1234 | 80 18 02 30 */	lwz r0, 0x230(r24)
/* 814C1238 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814C123C | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C1240 | 38 8D 9C DC */	li r4, lbl_81697D1C@sda21
/* 814C1244 | 7C C5 02 14 */	add r6, r5, r0
/* 814C1248 | 38 A0 00 02 */	li r5, 0x2
/* 814C124C | 38 06 00 01 */	addi r0, r6, 0x1
/* 814C1250 | 38 E0 00 01 */	li r7, 0x1
/* 814C1254 | 90 18 02 30 */	stw r0, 0x230(r24)
/* 814C1258 | 38 C0 00 00 */	li r6, 0x0
/* 814C125C | 4B FF 4C ED */	bl VFiPFSTR_StrNCmp
/* 814C1260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1264 | 41 82 00 20 */	beq .L_814C1284
/* 814C1268 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C126C | 38 80 00 02 */	li r4, 0x2
/* 814C1270 | 4B FF 4B 55 */	bl VFiPFSTR_StrNumChar
/* 814C1274 | 80 18 02 30 */	lwz r0, 0x230(r24)
/* 814C1278 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814C127C | 7C 03 00 50 */	subf r0, r3, r0
/* 814C1280 | 90 18 02 30 */	stw r0, 0x230(r24)
.L_814C1284:
/* 814C1284 | 7F 24 CB 78 */	mr r4, r25
/* 814C1288 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814C128C | 48 00 98 8D */	bl VFiPFPATH_GetNextTokenOfPath
.L_814C1290:
/* 814C1290 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 814C1294 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1298 | 40 82 FB 78 */	bne .L_814C0E10
.L_814C129C:
/* 814C129C | 38 60 00 00 */	li r3, 0x0
.L_814C12A0:
/* 814C12A0 | 39 61 02 B0 */	addi r11, r1, 0x2b0
/* 814C12A4 | 48 13 82 51 */	bl _restgpr_21
/* 814C12A8 | 80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 814C12AC | 7C 08 03 A6 */	mtlr r0
/* 814C12B0 | 38 21 02 B0 */	addi r1, r1, 0x2b0
/* 814C12B4 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_DoGetEntryOfPath

# .text:0x13CC | 0x814C12B8 | size: 0x104
.fn VFiPFENT_ITER_IteratorInitialize, global
/* 814C12B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C12BC | 7C 08 02 A6 */	mflr r0
/* 814C12C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C12C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C12C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C12CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C12D0 | 7C 7D 1B 78 */	mr r29, r3
/* 814C12D4 | 80 A3 00 38 */	lwz r5, 0x38(r3)
/* 814C12D8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C12DC | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 814C12E0 | 40 82 00 0C */	bne .L_814C12EC
/* 814C12E4 | 38 60 00 0A */	li r3, 0xa
/* 814C12E8 | 48 00 00 B8 */	b .L_814C13A0
.L_814C12EC:
/* 814C12EC | 88 C5 00 20 */	lbz r6, 0x20(r5)
/* 814C12F0 | 38 00 FF FF */	li r0, -0x1
/* 814C12F4 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814C12F8 | 38 A0 00 01 */	li r5, 0x1
/* 814C12FC | 38 C6 FF FB */	subi r6, r6, 0x5
/* 814C1300 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 814C1304 | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 814C1308 | 7C A5 00 30 */	slw r5, r5, r0
/* 814C130C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814C1310 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C1314 | 38 80 00 00 */	li r4, 0x0
/* 814C1318 | 98 C3 00 68 */	stb r6, 0x68(r3)
/* 814C131C | B0 03 00 46 */	sth r0, 0x46(r3)
/* 814C1320 | 4B FF EB CD */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1328 | 7C 7F 1B 78 */	mr r31, r3
/* 814C132C | 41 82 00 18 */	beq .L_814C1344
/* 814C1330 | 93 DD 00 00 */	stw r30, 0x0(r29)
/* 814C1334 | 7F A3 EB 78 */	mr r3, r29
/* 814C1338 | 38 80 00 00 */	li r4, 0x0
/* 814C133C | 4B FF EB B1 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1340 | 48 00 00 5C */	b .L_814C139C
.L_814C1344:
/* 814C1344 | 80 BD 00 40 */	lwz r5, 0x40(r29)
/* 814C1348 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C134C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C1350 | 40 82 00 0C */	bne .L_814C135C
/* 814C1354 | 38 80 00 10 */	li r4, 0x10
/* 814C1358 | 48 00 00 34 */	b .L_814C138C
.L_814C135C:
/* 814C135C | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814C1360 | 38 9D 00 48 */	addi r4, r29, 0x48
/* 814C1364 | A0 DD 00 44 */	lhz r6, 0x44(r29)
/* 814C1368 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C136C | 38 E0 00 20 */	li r7, 0x20
/* 814C1370 | 39 20 00 00 */	li r9, 0x0
/* 814C1374 | 48 00 B5 E5 */	bl VFiPFSEC_ReadData
/* 814C1378 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C137C | 38 80 00 11 */	li r4, 0x11
/* 814C1380 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C1384 | 40 82 00 08 */	bne .L_814C138C
/* 814C1388 | 7C 64 1B 78 */	mr r4, r3
.L_814C138C:
/* 814C138C | 7C 04 00 D0 */	neg r0, r4
/* 814C1390 | 7C 00 23 78 */	or r0, r0, r4
/* 814C1394 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C1398 | 7C 9F 00 38 */	and r31, r4, r0
.L_814C139C:
/* 814C139C | 7F E3 FB 78 */	mr r3, r31
.L_814C13A0:
/* 814C13A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C13A4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C13A8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C13AC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C13B0 | 7C 08 03 A6 */	mtlr r0
/* 814C13B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C13B8 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_IteratorInitialize

# .text:0x14D0 | 0x814C13BC | size: 0x10C
.fn VFiPFENT_ITER_IsAtLogicalEnd, global
/* 814C13BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C13C0 | 7C 08 02 A6 */	mflr r0
/* 814C13C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C13C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C13CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C13D0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C13D4 | 7C 7D 1B 78 */	mr r29, r3
/* 814C13D8 | 80 83 00 40 */	lwz r4, 0x40(r3)
/* 814C13DC | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814C13E0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C13E4 | 41 82 00 24 */	beq .L_814C1408
/* 814C13E8 | 88 03 00 48 */	lbz r0, 0x48(r3)
/* 814C13EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C13F0 | 41 82 00 18 */	beq .L_814C1408
/* 814C13F4 | 3C 80 00 0F */	lis r4, 0xf
/* 814C13F8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814C13FC | 38 04 42 3F */	addi r0, r4, 0x423f
/* 814C1400 | 7C 05 00 40 */	cmplw r5, r0
/* 814C1404 | 41 80 00 A4 */	blt .L_814C14A8
.L_814C1408:
/* 814C1408 | 83 E3 00 3C */	lwz r31, 0x3c(r3)
/* 814C140C | 38 80 00 00 */	li r4, 0x0
/* 814C1410 | 88 03 00 68 */	lbz r0, 0x68(r3)
/* 814C1414 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 814C1418 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814C141C | 7C A0 00 30 */	slw r0, r5, r0
/* 814C1420 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814C1424 | 7F A3 EB 78 */	mr r3, r29
/* 814C1428 | 4B FF EA C5 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C142C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1430 | 41 82 00 14 */	beq .L_814C1444
/* 814C1434 | 93 DD 00 00 */	stw r30, 0x0(r29)
/* 814C1438 | 38 60 00 01 */	li r3, 0x1
/* 814C143C | 93 FD 00 3C */	stw r31, 0x3c(r29)
/* 814C1440 | 48 00 00 6C */	b .L_814C14AC
.L_814C1444:
/* 814C1444 | 80 BD 00 40 */	lwz r5, 0x40(r29)
/* 814C1448 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C144C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C1450 | 41 82 00 50 */	beq .L_814C14A0
/* 814C1454 | 40 82 00 0C */	bne .L_814C1460
/* 814C1458 | 38 80 00 10 */	li r4, 0x10
/* 814C145C | 48 00 00 34 */	b .L_814C1490
.L_814C1460:
/* 814C1460 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814C1464 | 38 9D 00 48 */	addi r4, r29, 0x48
/* 814C1468 | A0 DD 00 44 */	lhz r6, 0x44(r29)
/* 814C146C | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C1470 | 38 E0 00 20 */	li r7, 0x20
/* 814C1474 | 39 20 00 00 */	li r9, 0x0
/* 814C1478 | 48 00 B4 E1 */	bl VFiPFSEC_ReadData
/* 814C147C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C1480 | 38 80 00 11 */	li r4, 0x11
/* 814C1484 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C1488 | 40 82 00 08 */	bne .L_814C1490
/* 814C148C | 7C 64 1B 78 */	mr r4, r3
.L_814C1490:
/* 814C1490 | 7C 04 00 D0 */	neg r0, r4
/* 814C1494 | 7C 00 23 78 */	or r0, r0, r4
/* 814C1498 | 54 03 0F FE */	srwi r3, r0, 31
/* 814C149C | 48 00 00 10 */	b .L_814C14AC
.L_814C14A0:
/* 814C14A0 | 38 60 00 01 */	li r3, 0x1
/* 814C14A4 | 48 00 00 08 */	b .L_814C14AC
.L_814C14A8:
/* 814C14A8 | 38 60 00 00 */	li r3, 0x0
.L_814C14AC:
/* 814C14AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C14B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C14B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C14B8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C14BC | 7C 08 03 A6 */	mtlr r0
/* 814C14C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C14C4 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_IsAtLogicalEnd

# .text:0x15DC | 0x814C14C8 | size: 0xF8
.fn VFiPFENT_ITER_MoveTo, global
/* 814C14C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C14CC | 7C 08 02 A6 */	mflr r0
/* 814C14D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C14D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C14D8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C14DC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C14E0 | 7C 7D 1B 78 */	mr r29, r3
/* 814C14E4 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814C14E8 | 7C 1E 20 40 */	cmplw r30, r4
/* 814C14EC | 40 82 00 1C */	bne .L_814C1508
/* 814C14F0 | 80 C3 00 40 */	lwz r6, 0x40(r3)
/* 814C14F4 | 3C 06 00 01 */	addis r0, r6, 0x1
/* 814C14F8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C14FC | 40 82 00 0C */	bne .L_814C1508
/* 814C1500 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C1504 | 40 82 00 9C */	bne .L_814C15A0
.L_814C1508:
/* 814C1508 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814C150C | 7F A3 EB 78 */	mr r3, r29
/* 814C1510 | 7C A4 2B 78 */	mr r4, r5
/* 814C1514 | 4B FF E9 D9 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C151C | 7C 7F 1B 78 */	mr r31, r3
/* 814C1520 | 41 82 00 18 */	beq .L_814C1538
/* 814C1524 | 93 DD 00 00 */	stw r30, 0x0(r29)
/* 814C1528 | 7F A3 EB 78 */	mr r3, r29
/* 814C152C | 38 80 00 00 */	li r4, 0x0
/* 814C1530 | 4B FF E9 BD */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1534 | 48 00 00 5C */	b .L_814C1590
.L_814C1538:
/* 814C1538 | 80 BD 00 40 */	lwz r5, 0x40(r29)
/* 814C153C | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C1540 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C1544 | 40 82 00 0C */	bne .L_814C1550
/* 814C1548 | 38 80 00 10 */	li r4, 0x10
/* 814C154C | 48 00 00 34 */	b .L_814C1580
.L_814C1550:
/* 814C1550 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814C1554 | 38 9D 00 48 */	addi r4, r29, 0x48
/* 814C1558 | A0 DD 00 44 */	lhz r6, 0x44(r29)
/* 814C155C | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C1560 | 38 E0 00 20 */	li r7, 0x20
/* 814C1564 | 39 20 00 00 */	li r9, 0x0
/* 814C1568 | 48 00 B3 F1 */	bl VFiPFSEC_ReadData
/* 814C156C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C1570 | 38 80 00 11 */	li r4, 0x11
/* 814C1574 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C1578 | 40 82 00 08 */	bne .L_814C1580
/* 814C157C | 7C 64 1B 78 */	mr r4, r3
.L_814C1580:
/* 814C1580 | 7C 04 00 D0 */	neg r0, r4
/* 814C1584 | 7C 00 23 78 */	or r0, r0, r4
/* 814C1588 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C158C | 7C 9F 00 38 */	and r31, r4, r0
.L_814C1590:
/* 814C1590 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C1594 | 41 82 00 0C */	beq .L_814C15A0
/* 814C1598 | 7F E3 FB 78 */	mr r3, r31
/* 814C159C | 48 00 00 08 */	b .L_814C15A4
.L_814C15A0:
/* 814C15A0 | 38 60 00 00 */	li r3, 0x0
.L_814C15A4:
/* 814C15A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C15A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C15AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C15B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C15B4 | 7C 08 03 A6 */	mtlr r0
/* 814C15B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C15BC | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_MoveTo

# .text:0x16D4 | 0x814C15C0 | size: 0xF8
.fn VFiPFENT_ITER_Advance, global
/* 814C15C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C15C4 | 7C 08 02 A6 */	mflr r0
/* 814C15C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C15CC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C15D0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C15D4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C15D8 | 7C 7D 1B 78 */	mr r29, r3
/* 814C15DC | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814C15E0 | 38 DE 00 01 */	addi r6, r30, 0x1
/* 814C15E4 | 7C 1E 30 40 */	cmplw r30, r6
/* 814C15E8 | 40 82 00 1C */	bne .L_814C1604
/* 814C15EC | 80 A3 00 40 */	lwz r5, 0x40(r3)
/* 814C15F0 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C15F4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C15F8 | 40 82 00 0C */	bne .L_814C1604
/* 814C15FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1600 | 40 82 00 94 */	bne .L_814C1694
.L_814C1604:
/* 814C1604 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 814C1608 | 7F A3 EB 78 */	mr r3, r29
/* 814C160C | 4B FF E8 E1 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1614 | 7C 7F 1B 78 */	mr r31, r3
/* 814C1618 | 41 82 00 18 */	beq .L_814C1630
/* 814C161C | 93 DD 00 00 */	stw r30, 0x0(r29)
/* 814C1620 | 7F A3 EB 78 */	mr r3, r29
/* 814C1624 | 38 80 00 00 */	li r4, 0x0
/* 814C1628 | 4B FF E8 C5 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C162C | 48 00 00 5C */	b .L_814C1688
.L_814C1630:
/* 814C1630 | 80 BD 00 40 */	lwz r5, 0x40(r29)
/* 814C1634 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C1638 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C163C | 40 82 00 0C */	bne .L_814C1648
/* 814C1640 | 38 80 00 10 */	li r4, 0x10
/* 814C1644 | 48 00 00 34 */	b .L_814C1678
.L_814C1648:
/* 814C1648 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814C164C | 38 9D 00 48 */	addi r4, r29, 0x48
/* 814C1650 | A0 DD 00 44 */	lhz r6, 0x44(r29)
/* 814C1654 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C1658 | 38 E0 00 20 */	li r7, 0x20
/* 814C165C | 39 20 00 00 */	li r9, 0x0
/* 814C1660 | 48 00 B2 F9 */	bl VFiPFSEC_ReadData
/* 814C1664 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C1668 | 38 80 00 11 */	li r4, 0x11
/* 814C166C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C1670 | 40 82 00 08 */	bne .L_814C1678
/* 814C1674 | 7C 64 1B 78 */	mr r4, r3
.L_814C1678:
/* 814C1678 | 7C 04 00 D0 */	neg r0, r4
/* 814C167C | 7C 00 23 78 */	or r0, r0, r4
/* 814C1680 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C1684 | 7C 9F 00 38 */	and r31, r4, r0
.L_814C1688:
/* 814C1688 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C168C | 41 82 00 08 */	beq .L_814C1694
/* 814C1690 | 48 00 00 08 */	b .L_814C1698
.L_814C1694:
/* 814C1694 | 3B E0 00 00 */	li r31, 0x0
.L_814C1698:
/* 814C1698 | 7F E3 FB 78 */	mr r3, r31
/* 814C169C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C16A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C16A4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C16A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C16AC | 7C 08 03 A6 */	mtlr r0
/* 814C16B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C16B4 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_Advance

# .text:0x17CC | 0x814C16B8 | size: 0x32C
.fn VFiPFENT_ITER_Retreat, global
/* 814C16B8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C16BC | 7C 08 02 A6 */	mflr r0
/* 814C16C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C16C4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C16C8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814C16CC | 7C 9F 23 78 */	mr r31, r4
/* 814C16D0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814C16D4 | 7C 7E 1B 78 */	mr r30, r3
/* 814C16D8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814C16DC | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814C16E0 | 40 82 00 0C */	bne .L_814C16EC
/* 814C16E4 | 38 60 00 0A */	li r3, 0xa
/* 814C16E8 | 48 00 02 DC */	b .L_814C19C4
.L_814C16EC:
/* 814C16EC | 83 83 00 00 */	lwz r28, 0x0(r3)
/* 814C16F0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C16F4 | 40 82 00 0C */	bne .L_814C1700
/* 814C16F8 | 38 60 00 00 */	li r3, 0x0
/* 814C16FC | 48 00 02 C8 */	b .L_814C19C4
.L_814C1700:
/* 814C1700 | 88 03 00 68 */	lbz r0, 0x68(r3)
/* 814C1704 | 38 DC FF FF */	subi r6, r28, 0x1
/* 814C1708 | 80 E3 00 3C */	lwz r7, 0x3c(r3)
/* 814C170C | 7C C0 04 30 */	srw r0, r6, r0
/* 814C1710 | 7C 07 00 40 */	cmplw r7, r0
/* 814C1714 | 41 82 01 F4 */	beq .L_814C1908
/* 814C1718 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814C171C | 81 23 00 40 */	lwz r9, 0x40(r3)
/* 814C1720 | 89 06 00 06 */	lbz r8, 0x6(r6)
/* 814C1724 | 81 46 00 30 */	lwz r10, 0x30(r6)
/* 814C1728 | 7C 07 43 96 */	divwu r0, r7, r8
/* 814C172C | 88 86 00 21 */	lbz r4, 0x21(r6)
/* 814C1730 | 7C AA 48 50 */	subf r5, r10, r9
/* 814C1734 | 7C A4 24 30 */	srw r4, r5, r4
/* 814C1738 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814C173C | 7C 00 41 D6 */	mullw r0, r0, r8
/* 814C1740 | 7C 00 38 51 */	subf. r0, r0, r7
/* 814C1744 | 41 82 00 0C */	beq .L_814C1750
/* 814C1748 | 28 08 00 01 */	cmplwi r8, 0x1
/* 814C174C | 40 82 00 64 */	bne .L_814C17B0
.L_814C1750:
/* 814C1750 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 814C1754 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C1758 | 41 82 00 1C */	beq .L_814C1774
/* 814C175C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814C1760 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C1764 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C1768 | 40 81 00 40 */	ble .L_814C17A8
/* 814C176C | 7C 0A 48 40 */	cmplw r10, r9
/* 814C1770 | 41 81 00 38 */	bgt .L_814C17A8
.L_814C1774:
/* 814C1774 | 7C C3 33 78 */	mr r3, r6
/* 814C1778 | 7C 85 23 78 */	mr r5, r4
/* 814C177C | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C1780 | 48 00 2D 79 */	bl VFiPFFAT_GetBeforeChain
/* 814C1784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1788 | 41 82 00 08 */	beq .L_814C1790
/* 814C178C | 48 00 02 38 */	b .L_814C19C4
.L_814C1790:
/* 814C1790 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814C1794 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C1798 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C179C | 40 82 00 18 */	bne .L_814C17B4
/* 814C17A0 | 38 60 00 0E */	li r3, 0xe
/* 814C17A4 | 48 00 02 20 */	b .L_814C19C4
.L_814C17A8:
/* 814C17A8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814C17AC | 48 00 00 08 */	b .L_814C17B4
.L_814C17B0:
/* 814C17B0 | 90 81 00 10 */	stw r4, 0x10(r1)
.L_814C17B4:
/* 814C17B4 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814C17B8 | 80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 814C17BC | 38 84 FF FF */	subi r4, r4, 0x1
/* 814C17C0 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 814C17C4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C17C8 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 814C17CC | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 814C17D0 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 814C17D4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814C17D8 | 41 82 00 24 */	beq .L_814C17FC
/* 814C17DC | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814C17E0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C17E4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C17E8 | 40 81 00 48 */	ble .L_814C1830
/* 814C17EC | 80 66 00 30 */	lwz r3, 0x30(r6)
/* 814C17F0 | 80 1E 00 40 */	lwz r0, 0x40(r30)
/* 814C17F4 | 7C 03 00 40 */	cmplw r3, r0
/* 814C17F8 | 41 81 00 38 */	bgt .L_814C1830
.L_814C17FC:
/* 814C17FC | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814C1800 | 88 66 00 06 */	lbz r3, 0x6(r6)
/* 814C1804 | 88 06 00 21 */	lbz r0, 0x21(r6)
/* 814C1808 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 814C180C | 80 C6 00 30 */	lwz r6, 0x30(r6)
/* 814C1810 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C1814 | 80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 814C1818 | 7C A0 00 30 */	slw r0, r5, r0
/* 814C181C | 7C 06 02 14 */	add r0, r6, r0
/* 814C1820 | 7C 83 18 38 */	and r3, r4, r3
/* 814C1824 | 7C 03 02 14 */	add r0, r3, r0
/* 814C1828 | 90 1E 00 40 */	stw r0, 0x40(r30)
/* 814C182C | 48 00 00 10 */	b .L_814C183C
.L_814C1830:
/* 814C1830 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 814C1834 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C1838 | 90 1E 00 40 */	stw r0, 0x40(r30)
.L_814C183C:
/* 814C183C | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 814C1840 | 83 BE 00 00 */	lwz r29, 0x0(r30)
/* 814C1844 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C1848 | A0 9E 00 46 */	lhz r4, 0x46(r30)
/* 814C184C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C1850 | 7F A0 20 38 */	and r0, r29, r4
/* 814C1854 | 54 00 2C 34 */	clrlslwi r0, r0, 21, 5
/* 814C1858 | B0 1E 00 44 */	sth r0, 0x44(r30)
/* 814C185C | 40 82 00 0C */	bne .L_814C1868
/* 814C1860 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C1864 | 40 82 00 98 */	bne .L_814C18FC
.L_814C1868:
/* 814C1868 | 93 BE 00 00 */	stw r29, 0x0(r30)
/* 814C186C | 7F C3 F3 78 */	mr r3, r30
/* 814C1870 | 7F E4 FB 78 */	mr r4, r31
/* 814C1874 | 4B FF E6 79 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C187C | 7C 7F 1B 78 */	mr r31, r3
/* 814C1880 | 41 82 00 18 */	beq .L_814C1898
/* 814C1884 | 93 BE 00 00 */	stw r29, 0x0(r30)
/* 814C1888 | 7F C3 F3 78 */	mr r3, r30
/* 814C188C | 38 80 00 00 */	li r4, 0x0
/* 814C1890 | 4B FF E6 5D */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1894 | 48 00 00 5C */	b .L_814C18F0
.L_814C1898:
/* 814C1898 | 80 BE 00 40 */	lwz r5, 0x40(r30)
/* 814C189C | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C18A0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C18A4 | 40 82 00 0C */	bne .L_814C18B0
/* 814C18A8 | 38 80 00 10 */	li r4, 0x10
/* 814C18AC | 48 00 00 34 */	b .L_814C18E0
.L_814C18B0:
/* 814C18B0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814C18B4 | 38 9E 00 48 */	addi r4, r30, 0x48
/* 814C18B8 | A0 DE 00 44 */	lhz r6, 0x44(r30)
/* 814C18BC | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C18C0 | 38 E0 00 20 */	li r7, 0x20
/* 814C18C4 | 39 20 00 00 */	li r9, 0x0
/* 814C18C8 | 48 00 B0 91 */	bl VFiPFSEC_ReadData
/* 814C18CC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C18D0 | 38 80 00 11 */	li r4, 0x11
/* 814C18D4 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C18D8 | 40 82 00 08 */	bne .L_814C18E0
/* 814C18DC | 7C 64 1B 78 */	mr r4, r3
.L_814C18E0:
/* 814C18E0 | 7C 04 00 D0 */	neg r0, r4
/* 814C18E4 | 7C 00 23 78 */	or r0, r0, r4
/* 814C18E8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C18EC | 7C 9F 00 38 */	and r31, r4, r0
.L_814C18F0:
/* 814C18F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C18F4 | 41 82 00 08 */	beq .L_814C18FC
/* 814C18F8 | 48 00 00 08 */	b .L_814C1900
.L_814C18FC:
/* 814C18FC | 3B E0 00 00 */	li r31, 0x0
.L_814C1900:
/* 814C1900 | 7F E3 FB 78 */	mr r3, r31
/* 814C1904 | 48 00 00 C0 */	b .L_814C19C4
.L_814C1908:
/* 814C1908 | 7C 1C 30 40 */	cmplw r28, r6
/* 814C190C | 40 82 00 1C */	bne .L_814C1928
/* 814C1910 | 80 A3 00 40 */	lwz r5, 0x40(r3)
/* 814C1914 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C1918 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C191C | 40 82 00 0C */	bne .L_814C1928
/* 814C1920 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1924 | 40 82 00 98 */	bne .L_814C19BC
.L_814C1928:
/* 814C1928 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 814C192C | 7F C3 F3 78 */	mr r3, r30
/* 814C1930 | 7F E4 FB 78 */	mr r4, r31
/* 814C1934 | 4B FF E5 B9 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C193C | 7C 7D 1B 78 */	mr r29, r3
/* 814C1940 | 41 82 00 18 */	beq .L_814C1958
/* 814C1944 | 93 9E 00 00 */	stw r28, 0x0(r30)
/* 814C1948 | 7F C3 F3 78 */	mr r3, r30
/* 814C194C | 38 80 00 00 */	li r4, 0x0
/* 814C1950 | 4B FF E5 9D */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1954 | 48 00 00 5C */	b .L_814C19B0
.L_814C1958:
/* 814C1958 | 80 BE 00 40 */	lwz r5, 0x40(r30)
/* 814C195C | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C1960 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C1964 | 40 82 00 0C */	bne .L_814C1970
/* 814C1968 | 38 80 00 10 */	li r4, 0x10
/* 814C196C | 48 00 00 34 */	b .L_814C19A0
.L_814C1970:
/* 814C1970 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814C1974 | 38 9E 00 48 */	addi r4, r30, 0x48
/* 814C1978 | A0 DE 00 44 */	lhz r6, 0x44(r30)
/* 814C197C | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C1980 | 38 E0 00 20 */	li r7, 0x20
/* 814C1984 | 39 20 00 00 */	li r9, 0x0
/* 814C1988 | 48 00 AF D1 */	bl VFiPFSEC_ReadData
/* 814C198C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C1990 | 38 80 00 11 */	li r4, 0x11
/* 814C1994 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C1998 | 40 82 00 08 */	bne .L_814C19A0
/* 814C199C | 7C 64 1B 78 */	mr r4, r3
.L_814C19A0:
/* 814C19A0 | 7C 04 00 D0 */	neg r0, r4
/* 814C19A4 | 7C 00 23 78 */	or r0, r0, r4
/* 814C19A8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C19AC | 7C 9D 00 38 */	and r29, r4, r0
.L_814C19B0:
/* 814C19B0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C19B4 | 41 82 00 08 */	beq .L_814C19BC
/* 814C19B8 | 48 00 00 08 */	b .L_814C19C0
.L_814C19BC:
/* 814C19BC | 3B A0 00 00 */	li r29, 0x0
.L_814C19C0:
/* 814C19C0 | 7F A3 EB 78 */	mr r3, r29
.L_814C19C4:
/* 814C19C4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C19C8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814C19CC | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814C19D0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814C19D4 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814C19D8 | 7C 08 03 A6 */	mtlr r0
/* 814C19DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C19E0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_Retreat

# .text:0x1AF8 | 0x814C19E4 | size: 0xF4
.fn VFiPFENT_ITER_FindEntry, global
/* 814C19E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C19E8 | 7C 08 02 A6 */	mflr r0
/* 814C19EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C19F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C19F4 | 48 13 7A C1 */	bl _savegpr_24
/* 814C19F8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814C19FC | 7C 78 1B 78 */	mr r24, r3
/* 814C1A00 | 7C 99 23 78 */	mr r25, r4
/* 814C1A04 | 7C BA 2B 78 */	mr r26, r5
/* 814C1A08 | 7C DB 33 78 */	mr r27, r6
/* 814C1A0C | 7C FC 3B 78 */	mr r28, r7
/* 814C1A10 | 7D 1D 43 78 */	mr r29, r8
/* 814C1A14 | 7D 3E 4B 78 */	mr r30, r9
/* 814C1A18 | 7D 5F 53 78 */	mr r31, r10
/* 814C1A1C | 41 82 00 10 */	beq .L_814C1A2C
/* 814C1A20 | 3C 60 00 0F */	lis r3, 0xf
/* 814C1A24 | 38 03 42 3F */	addi r0, r3, 0x423f
/* 814C1A28 | 90 08 00 00 */	stw r0, 0x0(r8)
.L_814C1A2C:
/* 814C1A2C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C1A30 | 41 82 00 10 */	beq .L_814C1A40
/* 814C1A34 | 3C 60 00 0F */	lis r3, 0xf
/* 814C1A38 | 38 03 42 3F */	addi r0, r3, 0x423f
/* 814C1A3C | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814C1A40:
/* 814C1A40 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1A44 | 41 82 00 0C */	beq .L_814C1A50
/* 814C1A48 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C1A4C | 40 82 00 0C */	bne .L_814C1A58
.L_814C1A50:
/* 814C1A50 | 38 60 00 0A */	li r3, 0xa
/* 814C1A54 | 48 00 00 6C */	b .L_814C1AC0
.L_814C1A58:
/* 814C1A58 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814C1A5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1A60 | 40 82 00 0C */	bne .L_814C1A6C
/* 814C1A64 | 38 60 00 0A */	li r3, 0xa
/* 814C1A68 | 48 00 00 58 */	b .L_814C1AC0
.L_814C1A6C:
/* 814C1A6C | 7F 43 D3 78 */	mr r3, r26
/* 814C1A70 | 4B FF 43 41 */	bl VFiPFSTR_StrLen
/* 814C1A74 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C1A78 | 40 82 00 0C */	bne .L_814C1A84
/* 814C1A7C | 38 60 00 0A */	li r3, 0xa
/* 814C1A80 | 48 00 00 40 */	b .L_814C1AC0
.L_814C1A84:
/* 814C1A84 | 38 00 00 00 */	li r0, 0x0
/* 814C1A88 | 7F 03 C3 78 */	mr r3, r24
/* 814C1A8C | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814C1A90 | 7F 24 CB 78 */	mr r4, r25
/* 814C1A94 | 7F 45 D3 78 */	mr r5, r26
/* 814C1A98 | 7F 66 DB 78 */	mr r6, r27
/* 814C1A9C | 7F 87 E3 78 */	mr r7, r28
/* 814C1AA0 | 7F A8 EB 78 */	mr r8, r29
/* 814C1AA4 | 7F C9 F3 78 */	mr r9, r30
/* 814C1AA8 | 7F EA FB 78 */	mr r10, r31
/* 814C1AAC | 4B FF E8 09 */	bl VFiPFENT_ITER_DoFindEntry
/* 814C1AB0 | 7C 03 00 D0 */	neg r0, r3
/* 814C1AB4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C1AB8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C1ABC | 7C 63 00 38 */	and r3, r3, r0
.L_814C1AC0:
/* 814C1AC0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C1AC4 | 48 13 7A 3D */	bl _restgpr_24
/* 814C1AC8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C1ACC | 7C 08 03 A6 */	mtlr r0
/* 814C1AD0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C1AD4 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_FindEntry

# .text:0x1BEC | 0x814C1AD8 | size: 0x104
.fn VFiPFENT_ITER_AllocateEntry, global
/* 814C1AD8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C1ADC | 7C 08 02 A6 */	mflr r0
/* 814C1AE0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C1AE4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C1AE8 | 48 13 79 D1 */	bl _savegpr_25
/* 814C1AEC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814C1AF0 | 7C 79 1B 78 */	mr r25, r3
/* 814C1AF4 | 7C 9A 23 78 */	mr r26, r4
/* 814C1AF8 | 7C BB 2B 78 */	mr r27, r5
/* 814C1AFC | 7C DC 33 78 */	mr r28, r6
/* 814C1B00 | 7C FD 3B 78 */	mr r29, r7
/* 814C1B04 | 7D 1E 43 78 */	mr r30, r8
/* 814C1B08 | 7D 3F 4B 78 */	mr r31, r9
/* 814C1B0C | 41 82 00 10 */	beq .L_814C1B1C
/* 814C1B10 | 3C 60 00 0F */	lis r3, 0xf
/* 814C1B14 | 38 03 42 3F */	addi r0, r3, 0x423f
/* 814C1B18 | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814C1B1C:
/* 814C1B1C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C1B20 | 41 82 00 10 */	beq .L_814C1B30
/* 814C1B24 | 80 05 00 30 */	lwz r0, 0x30(r5)
/* 814C1B28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1B2C | 40 82 00 0C */	bne .L_814C1B38
.L_814C1B30:
/* 814C1B30 | 38 60 00 0A */	li r3, 0xa
/* 814C1B34 | 48 00 00 90 */	b .L_814C1BC4
.L_814C1B38:
/* 814C1B38 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C1B3C | 41 82 00 18 */	beq .L_814C1B54
/* 814C1B40 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814C1B44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1B48 | 40 82 00 0C */	bne .L_814C1B54
/* 814C1B4C | 38 60 00 0A */	li r3, 0xa
/* 814C1B50 | 48 00 00 74 */	b .L_814C1BC4
.L_814C1B54:
/* 814C1B54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1B58 | 41 82 00 0C */	beq .L_814C1B64
/* 814C1B5C | 28 04 00 15 */	cmplwi r4, 0x15
/* 814C1B60 | 40 81 00 0C */	ble .L_814C1B6C
.L_814C1B64:
/* 814C1B64 | 38 60 00 0A */	li r3, 0xa
/* 814C1B68 | 48 00 00 5C */	b .L_814C1BC4
.L_814C1B6C:
/* 814C1B6C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C1B70 | 41 82 00 34 */	beq .L_814C1BA4
/* 814C1B74 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C1B78 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C1B7C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814C1B80 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C1B84 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C1B88 | 40 82 00 1C */	bne .L_814C1BA4
/* 814C1B8C | 7F A3 EB 78 */	mr r3, r29
/* 814C1B90 | 48 00 A6 79 */	bl VFiPFPATH_CheckExtShortNameSignature
/* 814C1B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1B98 | 41 82 00 0C */	beq .L_814C1BA4
/* 814C1B9C | 38 60 00 01 */	li r3, 0x1
/* 814C1BA0 | 48 00 00 24 */	b .L_814C1BC4
.L_814C1BA4:
/* 814C1BA4 | 7F 23 CB 78 */	mr r3, r25
/* 814C1BA8 | 7F 44 D3 78 */	mr r4, r26
/* 814C1BAC | 7F 65 DB 78 */	mr r5, r27
/* 814C1BB0 | 7F 86 E3 78 */	mr r6, r28
/* 814C1BB4 | 7F A7 EB 78 */	mr r7, r29
/* 814C1BB8 | 7F C8 F3 78 */	mr r8, r30
/* 814C1BBC | 7F E9 FB 78 */	mr r9, r31
/* 814C1BC0 | 4B FF EC D9 */	bl VFiPFENT_ITER_DoAllocateEntry
.L_814C1BC4:
/* 814C1BC4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C1BC8 | 48 13 79 3D */	bl _restgpr_25
/* 814C1BCC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C1BD0 | 7C 08 03 A6 */	mtlr r0
/* 814C1BD4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C1BD8 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_AllocateEntry

# .text:0x1CF0 | 0x814C1BDC | size: 0xA8
.fn VFiPFENT_ITER_GetEntryOfPath, global
/* 814C1BDC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C1BE0 | 7C 08 02 A6 */	mflr r0
/* 814C1BE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C1BE8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C1BEC | 48 13 78 D5 */	bl _savegpr_27
/* 814C1BF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1BF4 | 7C 7B 1B 78 */	mr r27, r3
/* 814C1BF8 | 7C 9C 23 78 */	mr r28, r4
/* 814C1BFC | 7C BD 2B 78 */	mr r29, r5
/* 814C1C00 | 7C DE 33 78 */	mr r30, r6
/* 814C1C04 | 7C FF 3B 78 */	mr r31, r7
/* 814C1C08 | 41 82 00 14 */	beq .L_814C1C1C
/* 814C1C0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1C10 | 41 82 00 0C */	beq .L_814C1C1C
/* 814C1C14 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C1C18 | 40 82 00 0C */	bne .L_814C1C24
.L_814C1C1C:
/* 814C1C1C | 38 60 00 0A */	li r3, 0xa
/* 814C1C20 | 48 00 00 4C */	b .L_814C1C6C
.L_814C1C24:
/* 814C1C24 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814C1C28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1C2C | 40 82 00 0C */	bne .L_814C1C38
/* 814C1C30 | 38 60 00 0A */	li r3, 0xa
/* 814C1C34 | 48 00 00 38 */	b .L_814C1C6C
.L_814C1C38:
/* 814C1C38 | 7F C3 F3 78 */	mr r3, r30
/* 814C1C3C | 4B FF 41 75 */	bl VFiPFSTR_StrLen
/* 814C1C40 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C1C44 | 40 82 00 0C */	bne .L_814C1C50
/* 814C1C48 | 38 60 00 0A */	li r3, 0xa
/* 814C1C4C | 48 00 00 20 */	b .L_814C1C6C
.L_814C1C50:
/* 814C1C50 | 7F 63 DB 78 */	mr r3, r27
/* 814C1C54 | 7F 84 E3 78 */	mr r4, r28
/* 814C1C58 | 7F A5 EB 78 */	mr r5, r29
/* 814C1C5C | 7F C6 F3 78 */	mr r6, r30
/* 814C1C60 | 7F E8 FB 78 */	mr r8, r31
/* 814C1C64 | 38 E0 00 00 */	li r7, 0x0
/* 814C1C68 | 4B FF F0 3D */	bl VFiPFENT_ITER_DoGetEntryOfPath
.L_814C1C6C:
/* 814C1C6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C1C70 | 48 13 78 9D */	bl _restgpr_27
/* 814C1C74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C1C78 | 7C 08 03 A6 */	mtlr r0
/* 814C1C7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C1C80 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_GetEntryOfPath

# .text:0x1D98 | 0x814C1C84 | size: 0xB4
.fn VFiPFENT_ITER_GetEntryOfPattern, global
/* 814C1C84 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C1C88 | 7C 08 02 A6 */	mflr r0
/* 814C1C8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1C90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C1C94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C1C98 | 7C DF 33 78 */	mr r31, r6
/* 814C1C9C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C1CA0 | 7C BE 2B 78 */	mr r30, r5
/* 814C1CA4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C1CA8 | 7C 9D 23 78 */	mr r29, r4
/* 814C1CAC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C1CB0 | 7C 7C 1B 78 */	mr r28, r3
/* 814C1CB4 | 41 82 00 14 */	beq .L_814C1CC8
/* 814C1CB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1CBC | 41 82 00 0C */	beq .L_814C1CC8
/* 814C1CC0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C1CC4 | 40 82 00 0C */	bne .L_814C1CD0
.L_814C1CC8:
/* 814C1CC8 | 38 60 00 0A */	li r3, 0xa
/* 814C1CCC | 48 00 00 4C */	b .L_814C1D18
.L_814C1CD0:
/* 814C1CD0 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814C1CD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1CD8 | 40 82 00 0C */	bne .L_814C1CE4
/* 814C1CDC | 38 60 00 0A */	li r3, 0xa
/* 814C1CE0 | 48 00 00 38 */	b .L_814C1D18
.L_814C1CE4:
/* 814C1CE4 | 7F E3 FB 78 */	mr r3, r31
/* 814C1CE8 | 4B FF 40 C9 */	bl VFiPFSTR_StrLen
/* 814C1CEC | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C1CF0 | 40 82 00 0C */	bne .L_814C1CFC
/* 814C1CF4 | 38 60 00 0A */	li r3, 0xa
/* 814C1CF8 | 48 00 00 20 */	b .L_814C1D18
.L_814C1CFC:
/* 814C1CFC | 7F 83 E3 78 */	mr r3, r28
/* 814C1D00 | 7F A4 EB 78 */	mr r4, r29
/* 814C1D04 | 7F C5 F3 78 */	mr r5, r30
/* 814C1D08 | 7F E6 FB 78 */	mr r6, r31
/* 814C1D0C | 38 E0 00 01 */	li r7, 0x1
/* 814C1D10 | 39 00 00 01 */	li r8, 0x1
/* 814C1D14 | 4B FF EF 91 */	bl VFiPFENT_ITER_DoGetEntryOfPath
.L_814C1D18:
/* 814C1D18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C1D1C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C1D20 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C1D24 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C1D28 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C1D2C | 7C 08 03 A6 */	mtlr r0
/* 814C1D30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C1D34 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_GetEntryOfPattern

# .text:0x1E4C | 0x814C1D38 | size: 0x324
.fn VFiPFENT_ITER_FindCluster, global
/* 814C1D38 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C1D3C | 7C 08 02 A6 */	mflr r0
/* 814C1D40 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C1D44 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C1D48 | 48 13 77 6D */	bl _savegpr_24
/* 814C1D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1D50 | 7C 7A 1B 78 */	mr r26, r3
/* 814C1D54 | 7C 9B 23 78 */	mr r27, r4
/* 814C1D58 | 7C BC 2B 78 */	mr r28, r5
/* 814C1D5C | 7C DD 33 78 */	mr r29, r6
/* 814C1D60 | 3B 00 00 00 */	li r24, 0x0
/* 814C1D64 | 41 82 00 0C */	beq .L_814C1D70
/* 814C1D68 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C1D6C | 40 82 00 0C */	bne .L_814C1D78
.L_814C1D70:
/* 814C1D70 | 38 60 00 0A */	li r3, 0xa
/* 814C1D74 | 48 00 02 D0 */	b .L_814C2044
.L_814C1D78:
/* 814C1D78 | 3B C0 00 00 */	li r30, 0x0
/* 814C1D7C | 3B E0 00 01 */	li r31, 0x1
/* 814C1D80 | 93 C6 00 00 */	stw r30, 0x0(r6)
/* 814C1D84 | 9B C4 02 0A */	stb r30, 0x20a(r4)
/* 814C1D88 | 9B C4 02 0B */	stb r30, 0x20b(r4)
/* 814C1D8C | 9B C4 02 0C */	stb r30, 0x20c(r4)
/* 814C1D90 | 48 00 02 A0 */	b .L_814C2030
.L_814C1D94:
/* 814C1D94 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814C1D98 | 41 82 00 0C */	beq .L_814C1DA4
/* 814C1D9C | 7F 03 C3 78 */	mr r3, r24
/* 814C1DA0 | 48 00 02 A4 */	b .L_814C2044
.L_814C1DA4:
/* 814C1DA4 | 88 1A 00 48 */	lbz r0, 0x48(r26)
/* 814C1DA8 | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 814C1DAC | 40 82 00 10 */	bne .L_814C1DBC
/* 814C1DB0 | 9B DB 02 0A */	stb r30, 0x20a(r27)
/* 814C1DB4 | B3 DB 00 00 */	sth r30, 0x0(r27)
/* 814C1DB8 | 48 00 01 D8 */	b .L_814C1F90
.L_814C1DBC:
/* 814C1DBC | 88 7A 00 53 */	lbz r3, 0x53(r26)
/* 814C1DC0 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 814C1DC4 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 814C1DC8 | 40 82 00 28 */	bne .L_814C1DF0
/* 814C1DCC | 7F 63 DB 78 */	mr r3, r27
/* 814C1DD0 | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C1DD4 | 38 A0 00 00 */	li r5, 0x0
/* 814C1DD8 | 4B FF CB 09 */	bl VFiPFENT_LoadLFNEntryFieldsFromBuf
/* 814C1DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1DE0 | 41 82 01 B0 */	beq .L_814C1F90
/* 814C1DE4 | 9B DB 02 0A */	stb r30, 0x20a(r27)
/* 814C1DE8 | B3 DB 00 00 */	sth r30, 0x0(r27)
/* 814C1DEC | 48 00 01 A4 */	b .L_814C1F90
.L_814C1DF0:
/* 814C1DF0 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814C1DF4 | 41 82 00 10 */	beq .L_814C1E04
/* 814C1DF8 | 9B DB 02 0A */	stb r30, 0x20a(r27)
/* 814C1DFC | B3 DB 00 00 */	sth r30, 0x0(r27)
/* 814C1E00 | 48 00 01 90 */	b .L_814C1F90
.L_814C1E04:
/* 814C1E04 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814C1E08 | 40 82 00 10 */	bne .L_814C1E18
/* 814C1E0C | 9B DB 02 0A */	stb r30, 0x20a(r27)
/* 814C1E10 | B3 DB 00 00 */	sth r30, 0x0(r27)
/* 814C1E14 | 48 00 01 7C */	b .L_814C1F90
.L_814C1E18:
/* 814C1E18 | A0 BA 00 5C */	lhz r5, 0x5c(r26)
/* 814C1E1C | A0 9A 00 62 */	lhz r4, 0x62(r26)
/* 814C1E20 | 54 A3 44 2E */	clrlslwi r3, r5, 24, 8
/* 814C1E24 | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814C1E28 | 50 A3 C6 3E */	rlwimi r3, r5, 24, 24, 31
/* 814C1E2C | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814C1E30 | 50 60 80 1E */	rlwimi r0, r3, 16, 0, 15
/* 814C1E34 | 7C 1C 00 40 */	cmplw r28, r0
/* 814C1E38 | 41 82 00 10 */	beq .L_814C1E48
/* 814C1E3C | 9B DB 02 0A */	stb r30, 0x20a(r27)
/* 814C1E40 | B3 DB 00 00 */	sth r30, 0x0(r27)
/* 814C1E44 | 48 00 01 4C */	b .L_814C1F90
.L_814C1E48:
/* 814C1E48 | 93 FD 00 00 */	stw r31, 0x0(r29)
/* 814C1E4C | 7F 63 DB 78 */	mr r3, r27
/* 814C1E50 | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C1E54 | 4B FF C9 99 */	bl VFiPFENT_LoadShortNameFromBuf
/* 814C1E58 | 88 1B 02 0A */	lbz r0, 0x20a(r27)
/* 814C1E5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1E60 | 41 82 00 8C */	beq .L_814C1EEC
/* 814C1E64 | 88 1B 02 0B */	lbz r0, 0x20b(r27)
/* 814C1E68 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C1E6C | 40 82 00 80 */	bne .L_814C1EEC
/* 814C1E70 | 7F 63 DB 78 */	mr r3, r27
/* 814C1E74 | 4B FF C9 09 */	bl VFiPFENT_CalcCheckSum
/* 814C1E78 | 88 1B 02 0C */	lbz r0, 0x20c(r27)
/* 814C1E7C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814C1E80 | 7C 00 18 40 */	cmplw r0, r3
/* 814C1E84 | 40 82 00 68 */	bne .L_814C1EEC
/* 814C1E88 | 7F 63 DB 78 */	mr r3, r27
/* 814C1E8C | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C1E90 | 4B FF C9 A5 */	bl VFiPFENT_loadEntryNumericFieldsFromBuf
/* 814C1E94 | 80 7A 00 40 */	lwz r3, 0x40(r26)
/* 814C1E98 | 88 1B 02 1C */	lbz r0, 0x21c(r27)
/* 814C1E9C | 90 7B 02 38 */	stw r3, 0x238(r27)
/* 814C1EA0 | 54 03 06 F7 */	rlwinm. r3, r0, 0, 27, 27
/* 814C1EA4 | A0 1A 00 44 */	lhz r0, 0x44(r26)
/* 814C1EA8 | B0 1B 02 3C */	sth r0, 0x23c(r27)
/* 814C1EAC | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 814C1EB0 | 90 1B 02 2C */	stw r0, 0x22c(r27)
/* 814C1EB4 | 41 82 00 1C */	beq .L_814C1ED0
/* 814C1EB8 | 80 1B 02 34 */	lwz r0, 0x234(r27)
/* 814C1EBC | 7C 00 E0 40 */	cmplw r0, r28
/* 814C1EC0 | 41 82 00 10 */	beq .L_814C1ED0
/* 814C1EC4 | 9B DB 02 0A */	stb r30, 0x20a(r27)
/* 814C1EC8 | B3 DB 00 00 */	sth r30, 0x0(r27)
/* 814C1ECC | 48 00 00 C4 */	b .L_814C1F90
.L_814C1ED0:
/* 814C1ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1ED4 | 41 82 00 18 */	beq .L_814C1EEC
/* 814C1ED8 | 80 1B 02 34 */	lwz r0, 0x234(r27)
/* 814C1EDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C1EE0 | 40 82 00 0C */	bne .L_814C1EEC
/* 814C1EE4 | 38 00 00 01 */	li r0, 0x1
/* 814C1EE8 | 90 1B 02 34 */	stw r0, 0x234(r27)
.L_814C1EEC:
/* 814C1EEC | 88 BA 00 54 */	lbz r5, 0x54(r26)
/* 814C1EF0 | 54 A0 06 F9 */	rlwinm. r0, r5, 0, 27, 28
/* 814C1EF4 | 41 82 00 70 */	beq .L_814C1F64
/* 814C1EF8 | 38 7B 02 0E */	addi r3, r27, 0x20e
/* 814C1EFC | 38 81 00 0C */	addi r4, r1, 0xc
/* 814C1F00 | 48 00 94 29 */	bl VFiPFPATH_getLongNameformShortName
/* 814C1F04 | 7F 63 DB 78 */	mr r3, r27
/* 814C1F08 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814C1F0C | 48 00 97 FD */	bl VFiPFPATH_transformInUnicode
/* 814C1F10 | 3C 80 4E C5 */	lis r4, 0x4ec5
/* 814C1F14 | 38 04 EC 4F */	subi r0, r4, 0x13b1
/* 814C1F18 | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814C1F1C | 7C 05 16 70 */	srawi r5, r0, 2
/* 814C1F20 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814C1F24 | 54 04 0F FE */	srwi r4, r0, 31
/* 814C1F28 | 54 A6 0F FE */	srwi r6, r5, 31
/* 814C1F2C | 7C 00 22 14 */	add r0, r0, r4
/* 814C1F30 | 1C 00 00 0D */	mulli r0, r0, 0xd
/* 814C1F34 | 7C A5 32 14 */	add r5, r5, r6
/* 814C1F38 | 7C 80 18 50 */	subf r4, r0, r3
/* 814C1F3C | 7F 63 DB 78 */	mr r3, r27
/* 814C1F40 | 7C 04 00 D0 */	neg r0, r4
/* 814C1F44 | 7C 00 23 78 */	or r0, r0, r4
/* 814C1F48 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C1F4C | 7C 05 02 14 */	add r0, r5, r0
/* 814C1F50 | 98 1B 02 0A */	stb r0, 0x20a(r27)
/* 814C1F54 | 4B FF C8 29 */	bl VFiPFENT_CalcCheckSum
/* 814C1F58 | 38 00 00 01 */	li r0, 0x1
/* 814C1F5C | 98 7B 02 0C */	stb r3, 0x20c(r27)
/* 814C1F60 | 98 1B 02 0B */	stb r0, 0x20b(r27)
.L_814C1F64:
/* 814C1F64 | 7F 63 DB 78 */	mr r3, r27
/* 814C1F68 | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C1F6C | 4B FF C8 C9 */	bl VFiPFENT_loadEntryNumericFieldsFromBuf
/* 814C1F70 | 80 1A 00 40 */	lwz r0, 0x40(r26)
/* 814C1F74 | 38 60 00 00 */	li r3, 0x0
/* 814C1F78 | 90 1B 02 38 */	stw r0, 0x238(r27)
/* 814C1F7C | A0 1A 00 44 */	lhz r0, 0x44(r26)
/* 814C1F80 | B0 1B 02 3C */	sth r0, 0x23c(r27)
/* 814C1F84 | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 814C1F88 | 90 1B 02 2C */	stw r0, 0x22c(r27)
/* 814C1F8C | 48 00 00 B8 */	b .L_814C2044
.L_814C1F90:
/* 814C1F90 | 83 1A 00 00 */	lwz r24, 0x0(r26)
/* 814C1F94 | 7F 43 D3 78 */	mr r3, r26
/* 814C1F98 | 38 80 00 00 */	li r4, 0x0
/* 814C1F9C | 38 18 00 01 */	addi r0, r24, 0x1
/* 814C1FA0 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C1FA4 | 4B FF DF 49 */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1FA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C1FAC | 7C 79 1B 78 */	mr r25, r3
/* 814C1FB0 | 41 82 00 18 */	beq .L_814C1FC8
/* 814C1FB4 | 93 1A 00 00 */	stw r24, 0x0(r26)
/* 814C1FB8 | 7F 43 D3 78 */	mr r3, r26
/* 814C1FBC | 38 80 00 00 */	li r4, 0x0
/* 814C1FC0 | 4B FF DF 2D */	bl VFiPFENT_ITER_RecalcEntryIterator
/* 814C1FC4 | 48 00 00 5C */	b .L_814C2020
.L_814C1FC8:
/* 814C1FC8 | 80 BA 00 40 */	lwz r5, 0x40(r26)
/* 814C1FCC | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C1FD0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C1FD4 | 40 82 00 0C */	bne .L_814C1FE0
/* 814C1FD8 | 38 80 00 10 */	li r4, 0x10
/* 814C1FDC | 48 00 00 34 */	b .L_814C2010
.L_814C1FE0:
/* 814C1FE0 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 814C1FE4 | 38 9A 00 48 */	addi r4, r26, 0x48
/* 814C1FE8 | A0 DA 00 44 */	lhz r6, 0x44(r26)
/* 814C1FEC | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C1FF0 | 38 E0 00 20 */	li r7, 0x20
/* 814C1FF4 | 39 20 00 00 */	li r9, 0x0
/* 814C1FF8 | 48 00 A9 61 */	bl VFiPFSEC_ReadData
/* 814C1FFC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C2000 | 38 80 00 11 */	li r4, 0x11
/* 814C2004 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814C2008 | 40 82 00 08 */	bne .L_814C2010
/* 814C200C | 7C 64 1B 78 */	mr r4, r3
.L_814C2010:
/* 814C2010 | 7C 04 00 D0 */	neg r0, r4
/* 814C2014 | 7C 00 23 78 */	or r0, r0, r4
/* 814C2018 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C201C | 7C 99 00 38 */	and r25, r4, r0
.L_814C2020:
/* 814C2020 | 7C 19 00 D0 */	neg r0, r25
/* 814C2024 | 7C 00 CB 78 */	or r0, r0, r25
/* 814C2028 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C202C | 7F 38 00 38 */	and r24, r25, r0
.L_814C2030:
/* 814C2030 | 7F 43 D3 78 */	mr r3, r26
/* 814C2034 | 4B FF F3 89 */	bl VFiPFENT_ITER_IsAtLogicalEnd
/* 814C2038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C203C | 41 82 FD 58 */	beq .L_814C1D94
/* 814C2040 | 38 60 00 00 */	li r3, 0x0
.L_814C2044:
/* 814C2044 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C2048 | 48 13 74 B9 */	bl _restgpr_24
/* 814C204C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C2050 | 7C 08 03 A6 */	mtlr r0
/* 814C2054 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814C2058 | 4E 80 00 20 */	blr
.endfn VFiPFENT_ITER_FindCluster

# 0x81697CF8..0x81697D20 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CF8 | size: 0x4
.obj lbl_81697CF8, global
	.string "..\\"
.endobj lbl_81697CF8

# .sdata:0x4 | 0x81697CFC | size: 0x4
.obj lbl_81697CFC, global
	.string "../"
.endobj lbl_81697CFC

# .sdata:0x8 | 0x81697D00 | size: 0x4
.obj lbl_81697D00, global
	.4byte 0x2E2E0000
.endobj lbl_81697D00

# .sdata:0xC | 0x81697D04 | size: 0x4
.obj lbl_81697D04, global
	.4byte 0x2E5C0000
.endobj lbl_81697D04

# .sdata:0x10 | 0x81697D08 | size: 0x4
.obj lbl_81697D08, global
	.4byte 0x2E2F0000
.endobj lbl_81697D08

# .sdata:0x14 | 0x81697D0C | size: 0x4
.obj lbl_81697D0C, global
	.4byte 0x2E000000
.endobj lbl_81697D0C

# .sdata:0x18 | 0x81697D10 | size: 0x4
.obj lbl_81697D10, global
	.4byte 0x3A000000
.endobj lbl_81697D10

# .sdata:0x1C | 0x81697D14 | size: 0x4
.obj lbl_81697D14, global
	.4byte 0x5C000000
.endobj lbl_81697D14

# .sdata:0x20 | 0x81697D18 | size: 0x4
.obj lbl_81697D18, global
	.4byte 0x2F000000
.endobj lbl_81697D18

# .sdata:0x24 | 0x81697D1C | size: 0x4
.obj lbl_81697D1C, global
	.4byte 0x00000000
.endobj lbl_81697D1C
