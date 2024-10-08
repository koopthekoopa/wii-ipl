.include "macros.inc"
.file "pf_fat12.c"

# 0x814C5024..0x814C5B5C | size: 0xB38
.text
.balign 4

# .text:0x0 | 0x814C5024 | size: 0x1E4
.fn VFiPFFAT12_ReadFATEntry, global
/* 814C5024 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C5028 | 7C 08 02 A6 */	mflr r0
/* 814C502C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C5030 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5034 | 48 13 44 85 */	bl _savegpr_25
/* 814C5038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C503C | 7C 7C 1B 78 */	mr r28, r3
/* 814C5040 | 7C 9D 23 78 */	mr r29, r4
/* 814C5044 | 7C BE 2B 78 */	mr r30, r5
/* 814C5048 | 40 82 00 14 */	bne .L_814C505C
/* 814C504C | 38 00 FF FF */	li r0, -0x1
/* 814C5050 | 38 60 00 0A */	li r3, 0xa
/* 814C5054 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C5058 | 48 00 01 98 */	b .L_814C51F0
.L_814C505C:
/* 814C505C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C5060 | 41 80 00 14 */	blt .L_814C5074
/* 814C5064 | 80 C3 00 34 */	lwz r6, 0x34(r3)
/* 814C5068 | 38 06 00 02 */	addi r0, r6, 0x2
/* 814C506C | 7C 04 00 40 */	cmplw r4, r0
/* 814C5070 | 41 80 00 24 */	blt .L_814C5094
.L_814C5074:
/* 814C5074 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5078 | 41 82 00 1C */	beq .L_814C5094
/* 814C507C | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C5080 | 41 82 00 14 */	beq .L_814C5094
/* 814C5084 | 38 00 FF FF */	li r0, -0x1
/* 814C5088 | 38 60 00 0E */	li r3, 0xe
/* 814C508C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C5090 | 48 00 01 60 */	b .L_814C51F0
.L_814C5094:
/* 814C5094 | 7C 80 0E 70 */	srawi r0, r4, 1
/* 814C5098 | A0 E3 00 18 */	lhz r7, 0x18(r3)
/* 814C509C | 7C 04 02 14 */	add r0, r4, r0
/* 814C50A0 | 88 A3 00 20 */	lbz r5, 0x20(r3)
/* 814C50A4 | 54 08 04 3E */	clrlwi r8, r0, 16
/* 814C50A8 | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 814C50AC | 54 E0 06 31 */	rlwinm. r0, r7, 0, 24, 24
/* 814C50B0 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 814C50B4 | 7D 03 2E 30 */	sraw r3, r8, r5
/* 814C50B8 | 3B E0 00 01 */	li r31, 0x1
/* 814C50BC | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C50C0 | 7C 66 1A 14 */	add r3, r6, r3
/* 814C50C4 | 54 79 04 3E */	clrlwi r25, r3, 16
/* 814C50C8 | 7D 00 00 38 */	and r0, r8, r0
/* 814C50CC | 41 82 00 08 */	beq .L_814C50D4
/* 814C50D0 | 54 FF 07 7E */	clrlwi r31, r7, 29
.L_814C50D4:
/* 814C50D4 | 54 1B 04 3E */	clrlwi r27, r0, 16
.L_814C50D8:
/* 814C50D8 | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 814C50DC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C50E0 | 7C 1B 00 00 */	cmpw r27, r0
/* 814C50E4 | 40 80 00 24 */	bge .L_814C5108
/* 814C50E8 | 7F 83 E3 78 */	mr r3, r28
/* 814C50EC | 7F 66 DB 78 */	mr r6, r27
/* 814C50F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C50F4 | 57 25 04 3E */	clrlwi r5, r25, 16
/* 814C50F8 | 38 E0 00 02 */	li r7, 0x2
/* 814C50FC | 48 00 76 B5 */	bl VFiPFSEC_ReadFAT
/* 814C5100 | 7C 7A 1B 78 */	mr r26, r3
/* 814C5104 | 48 00 00 48 */	b .L_814C514C
.L_814C5108:
/* 814C5108 | 7F 83 E3 78 */	mr r3, r28
/* 814C510C | 7F 66 DB 78 */	mr r6, r27
/* 814C5110 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C5114 | 57 25 04 3E */	clrlwi r5, r25, 16
/* 814C5118 | 38 E0 00 01 */	li r7, 0x1
/* 814C511C | 48 00 76 95 */	bl VFiPFSEC_ReadFAT
/* 814C5120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5124 | 7C 7A 1B 78 */	mr r26, r3
/* 814C5128 | 40 82 00 24 */	bne .L_814C514C
/* 814C512C | 57 25 04 3E */	clrlwi r5, r25, 16
/* 814C5130 | 7F 83 E3 78 */	mr r3, r28
/* 814C5134 | 38 81 00 09 */	addi r4, r1, 0x9
/* 814C5138 | 38 C0 00 00 */	li r6, 0x0
/* 814C513C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814C5140 | 38 E0 00 01 */	li r7, 0x1
/* 814C5144 | 48 00 76 6D */	bl VFiPFSEC_ReadFAT
/* 814C5148 | 7C 7A 1B 78 */	mr r26, r3
.L_814C514C:
/* 814C514C | 2C 1A 10 00 */	cmpwi r26, 0x1000
/* 814C5150 | 40 82 00 54 */	bne .L_814C51A4
/* 814C5154 | 81 9C 18 78 */	lwz r12, 0x1878(r28)
/* 814C5158 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C515C | 41 82 00 48 */	beq .L_814C51A4
/* 814C5160 | 80 7C 18 58 */	lwz r3, 0x1858(r28)
/* 814C5164 | 7D 89 03 A6 */	mtctr r12
/* 814C5168 | 4E 80 04 21 */	bctrl
/* 814C516C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5170 | 41 82 00 4C */	beq .L_814C51BC
/* 814C5174 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C5178 | 40 82 00 2C */	bne .L_814C51A4
/* 814C517C | 88 1C 00 22 */	lbz r0, 0x22(r28)
/* 814C5180 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C5184 | 41 80 00 20 */	blt .L_814C51A4
/* 814C5188 | 7C 1F 00 40 */	cmplw r31, r0
/* 814C518C | 40 80 00 18 */	bge .L_814C51A4
/* 814C5190 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814C5194 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814C5198 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814C519C | 7F 39 02 14 */	add r25, r25, r0
/* 814C51A0 | 48 00 00 1C */	b .L_814C51BC
.L_814C51A4:
/* 814C51A4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C51A8 | 41 82 00 14 */	beq .L_814C51BC
/* 814C51AC | 38 00 FF FF */	li r0, -0x1
/* 814C51B0 | 7F 43 D3 78 */	mr r3, r26
/* 814C51B4 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C51B8 | 48 00 00 38 */	b .L_814C51F0
.L_814C51BC:
/* 814C51BC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C51C0 | 40 82 FF 18 */	bne .L_814C50D8
/* 814C51C4 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814C51C8 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814C51CC | 54 60 44 2E */	clrlslwi r0, r3, 24, 8
/* 814C51D0 | 50 60 C6 3E */	rlwimi r0, r3, 24, 24, 31
/* 814C51D4 | 41 82 00 10 */	beq .L_814C51E4
/* 814C51D8 | 54 00 E5 3E */	extrwi r0, r0, 12, 16
/* 814C51DC | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C51E0 | 48 00 00 0C */	b .L_814C51EC
.L_814C51E4:
/* 814C51E4 | 54 00 05 3E */	clrlwi r0, r0, 20
/* 814C51E8 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C51EC:
/* 814C51EC | 38 60 00 00 */	li r3, 0x0
.L_814C51F0:
/* 814C51F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C51F4 | 48 13 43 11 */	bl _restgpr_25
/* 814C51F8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C51FC | 7C 08 03 A6 */	mtlr r0
/* 814C5200 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C5204 | 4E 80 00 20 */	blr
.endfn VFiPFFAT12_ReadFATEntry

# .text:0x1E4 | 0x814C5208 | size: 0x2DC
.fn VFiPFFAT12_ReadFATEntryPage, global
/* 814C5208 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C520C | 7C 08 02 A6 */	mflr r0
/* 814C5210 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C5214 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5218 | 48 13 42 9D */	bl _savegpr_24
/* 814C521C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5220 | 7C 78 1B 78 */	mr r24, r3
/* 814C5224 | 7C 99 23 78 */	mr r25, r4
/* 814C5228 | 7C BA 2B 78 */	mr r26, r5
/* 814C522C | 7C DB 33 78 */	mr r27, r6
/* 814C5230 | 40 82 00 0C */	bne .L_814C523C
/* 814C5234 | 38 60 00 0A */	li r3, 0xa
/* 814C5238 | 48 00 02 94 */	b .L_814C54CC
.L_814C523C:
/* 814C523C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C5240 | 41 80 00 14 */	blt .L_814C5254
/* 814C5244 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814C5248 | 38 05 00 02 */	addi r0, r5, 0x2
/* 814C524C | 7C 04 00 40 */	cmplw r4, r0
/* 814C5250 | 41 80 00 1C */	blt .L_814C526C
.L_814C5254:
/* 814C5254 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5258 | 41 82 00 14 */	beq .L_814C526C
/* 814C525C | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C5260 | 41 82 00 0C */	beq .L_814C526C
/* 814C5264 | 38 60 00 0E */	li r3, 0xe
/* 814C5268 | 48 00 02 64 */	b .L_814C54CC
.L_814C526C:
/* 814C526C | 54 80 FC 7E */	extrwi r0, r4, 15, 16
/* 814C5270 | A0 A3 00 18 */	lhz r5, 0x18(r3)
/* 814C5274 | 7C 04 02 14 */	add r0, r4, r0
/* 814C5278 | 88 83 00 20 */	lbz r4, 0x20(r3)
/* 814C527C | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 814C5280 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814C5284 | 54 A0 06 31 */	rlwinm. r0, r5, 0, 24, 24
/* 814C5288 | 3B 80 00 01 */	li r28, 0x1
/* 814C528C | 7F E0 24 30 */	srw r0, r31, r4
/* 814C5290 | 7C 03 02 14 */	add r0, r3, r0
/* 814C5294 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814C5298 | 41 82 00 08 */	beq .L_814C52A0
/* 814C529C | 54 BC 07 7E */	clrlwi r28, r5, 29
.L_814C52A0:
/* 814C52A0 | 3B C0 00 00 */	li r30, 0x0
.L_814C52A4:
/* 814C52A4 | 2C 1E 10 00 */	cmpwi r30, 0x1000
/* 814C52A8 | 40 82 00 5C */	bne .L_814C5304
/* 814C52AC | 81 98 18 78 */	lwz r12, 0x1878(r24)
/* 814C52B0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C52B4 | 41 82 00 50 */	beq .L_814C5304
/* 814C52B8 | 80 78 18 58 */	lwz r3, 0x1858(r24)
/* 814C52BC | 7D 89 03 A6 */	mtctr r12
/* 814C52C0 | 4E 80 04 21 */	bctrl
/* 814C52C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C52C8 | 40 82 00 0C */	bne .L_814C52D4
/* 814C52CC | 3B C0 00 00 */	li r30, 0x0
/* 814C52D0 | 4B FF FF D4 */	b .L_814C52A4
.L_814C52D4:
/* 814C52D4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C52D8 | 40 82 01 B4 */	bne .L_814C548C
/* 814C52DC | 88 18 00 22 */	lbz r0, 0x22(r24)
/* 814C52E0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C52E4 | 41 80 01 A8 */	blt .L_814C548C
/* 814C52E8 | 7C 1C 00 40 */	cmplw r28, r0
/* 814C52EC | 40 80 01 A0 */	bge .L_814C548C
/* 814C52F0 | 80 18 00 0C */	lwz r0, 0xc(r24)
/* 814C52F4 | 3B C0 00 00 */	li r30, 0x0
/* 814C52F8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814C52FC | 7F BD 02 14 */	add r29, r29, r0
/* 814C5300 | 4B FF FF A4 */	b .L_814C52A4
.L_814C5304:
/* 814C5304 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814C5308 | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 814C530C | 7C 03 E8 40 */	cmplw r3, r29
/* 814C5310 | 41 81 00 14 */	bgt .L_814C5324
/* 814C5314 | 80 18 15 E8 */	lwz r0, 0x15e8(r24)
/* 814C5318 | 7C 03 02 14 */	add r0, r3, r0
/* 814C531C | 7C 00 E8 40 */	cmplw r0, r29
/* 814C5320 | 41 81 00 44 */	bgt .L_814C5364
.L_814C5324:
/* 814C5324 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814C5328 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C532C | 40 82 00 18 */	bne .L_814C5344
/* 814C5330 | 7F 03 C3 78 */	mr r3, r24
/* 814C5334 | 4B FF E6 81 */	bl VFiPFFAT_UpdateFATEntry
/* 814C5338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C533C | 41 82 00 08 */	beq .L_814C5344
/* 814C5340 | 48 00 01 8C */	b .L_814C54CC
.L_814C5344:
/* 814C5344 | 7F 03 C3 78 */	mr r3, r24
/* 814C5348 | 7F A4 EB 78 */	mr r4, r29
/* 814C534C | 7F 65 DB 78 */	mr r5, r27
/* 814C5350 | 4B FF 6C 0D */	bl VFiPFCACHE_ReadFATPage
/* 814C5354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5358 | 7C 7E 1B 78 */	mr r30, r3
/* 814C535C | 40 82 FF 48 */	bne .L_814C52A4
/* 814C5360 | 48 00 00 34 */	b .L_814C5394
.L_814C5364:
/* 814C5364 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 814C5368 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C536C | 88 B8 00 20 */	lbz r5, 0x20(r24)
/* 814C5370 | 7C 06 00 50 */	subf r0, r6, r0
/* 814C5374 | 7C 00 2E 30 */	sraw r0, r0, r5
/* 814C5378 | 7C 03 02 14 */	add r0, r3, r0
/* 814C537C | 7C 1D 00 40 */	cmplw r29, r0
/* 814C5380 | 41 82 00 14 */	beq .L_814C5394
/* 814C5384 | 7C 03 E8 50 */	subf r0, r3, r29
/* 814C5388 | 7C 00 28 30 */	slw r0, r0, r5
/* 814C538C | 7C 06 02 14 */	add r0, r6, r0
/* 814C5390 | 90 04 00 08 */	stw r0, 0x8(r4)
.L_814C5394:
/* 814C5394 | A0 78 00 00 */	lhz r3, 0x0(r24)
/* 814C5398 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C539C | 7F E5 00 38 */	and r5, r31, r0
/* 814C53A0 | 7C 05 00 40 */	cmplw r5, r0
/* 814C53A4 | 40 82 00 C8 */	bne .L_814C546C
/* 814C53A8 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814C53AC | 38 7D 00 01 */	addi r3, r29, 0x1
/* 814C53B0 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814C53B4 | 7C 04 28 AE */	lbzx r0, r4, r5
/* 814C53B8 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C53BC | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814C53C0 | 80 A4 00 18 */	lwz r5, 0x18(r4)
/* 814C53C4 | 7C 05 18 40 */	cmplw r5, r3
/* 814C53C8 | 41 81 00 14 */	bgt .L_814C53DC
/* 814C53CC | 80 18 15 E8 */	lwz r0, 0x15e8(r24)
/* 814C53D0 | 7C 05 02 14 */	add r0, r5, r0
/* 814C53D4 | 7C 00 18 40 */	cmplw r0, r3
/* 814C53D8 | 41 81 00 44 */	bgt .L_814C541C
.L_814C53DC:
/* 814C53DC | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814C53E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C53E4 | 40 82 00 18 */	bne .L_814C53FC
/* 814C53E8 | 7F 03 C3 78 */	mr r3, r24
/* 814C53EC | 4B FF E5 C9 */	bl VFiPFFAT_UpdateFATEntry
/* 814C53F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C53F4 | 41 82 00 08 */	beq .L_814C53FC
/* 814C53F8 | 48 00 00 D4 */	b .L_814C54CC
.L_814C53FC:
/* 814C53FC | 7F 03 C3 78 */	mr r3, r24
/* 814C5400 | 7F 65 DB 78 */	mr r5, r27
/* 814C5404 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 814C5408 | 4B FF 6B 55 */	bl VFiPFCACHE_ReadFATPage
/* 814C540C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5410 | 7C 7E 1B 78 */	mr r30, r3
/* 814C5414 | 41 82 00 38 */	beq .L_814C544C
/* 814C5418 | 48 00 00 B4 */	b .L_814C54CC
.L_814C541C:
/* 814C541C | 80 E4 00 04 */	lwz r7, 0x4(r4)
/* 814C5420 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C5424 | 88 D8 00 20 */	lbz r6, 0x20(r24)
/* 814C5428 | 7C 07 00 50 */	subf r0, r7, r0
/* 814C542C | 7C 00 36 30 */	sraw r0, r0, r6
/* 814C5430 | 7C 05 02 14 */	add r0, r5, r0
/* 814C5434 | 7C 03 00 40 */	cmplw r3, r0
/* 814C5438 | 41 82 00 14 */	beq .L_814C544C
/* 814C543C | 7C 05 18 50 */	subf r0, r5, r3
/* 814C5440 | 7C 00 30 30 */	slw r0, r0, r6
/* 814C5444 | 7C 07 02 14 */	add r0, r7, r0
/* 814C5448 | 90 04 00 08 */	stw r0, 0x8(r4)
.L_814C544C:
/* 814C544C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814C5450 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814C5454 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C5458 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814C545C | 54 00 40 2E */	slwi r0, r0, 8
/* 814C5460 | 7C 04 02 14 */	add r0, r4, r0
/* 814C5464 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C5468 | 48 00 00 24 */	b .L_814C548C
.L_814C546C:
/* 814C546C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814C5470 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814C5474 | 7C 64 2A 14 */	add r3, r4, r5
/* 814C5478 | 7C 04 28 AE */	lbzx r0, r4, r5
/* 814C547C | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 814C5480 | 54 63 40 2E */	slwi r3, r3, 8
/* 814C5484 | 7C 03 02 14 */	add r0, r3, r0
/* 814C5488 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_814C548C:
/* 814C548C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5490 | 41 82 00 14 */	beq .L_814C54A4
/* 814C5494 | 38 00 FF FF */	li r0, -0x1
/* 814C5498 | 7F C3 F3 78 */	mr r3, r30
/* 814C549C | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C54A0 | 48 00 00 2C */	b .L_814C54CC
.L_814C54A4:
/* 814C54A4 | 57 20 07 FF */	clrlwi. r0, r25, 31
/* 814C54A8 | 41 82 00 14 */	beq .L_814C54BC
/* 814C54AC | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814C54B0 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814C54B4 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814C54B8 | 48 00 00 10 */	b .L_814C54C8
.L_814C54BC:
/* 814C54BC | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814C54C0 | 54 00 05 3E */	clrlwi r0, r0, 20
/* 814C54C4 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_814C54C8:
/* 814C54C8 | 38 60 00 00 */	li r3, 0x0
.L_814C54CC:
/* 814C54CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C54D0 | 48 13 40 31 */	bl _restgpr_24
/* 814C54D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C54D8 | 7C 08 03 A6 */	mtlr r0
/* 814C54DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C54E0 | 4E 80 00 20 */	blr
.endfn VFiPFFAT12_ReadFATEntryPage

# .text:0x4C0 | 0x814C54E4 | size: 0x1A4
.fn VFiPFFAT12_WriteFATEntry, global
/* 814C54E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C54E8 | 7C 08 02 A6 */	mflr r0
/* 814C54EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C54F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C54F4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C54F8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C54FC | 7C BE 2B 78 */	mr r30, r5
/* 814C5500 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C5504 | 7C 7D 1B 78 */	mr r29, r3
/* 814C5508 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C550C | 40 82 00 0C */	bne .L_814C5518
/* 814C5510 | 38 60 00 0A */	li r3, 0xa
/* 814C5514 | 48 00 01 54 */	b .L_814C5668
.L_814C5518:
/* 814C5518 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C551C | 41 80 00 14 */	blt .L_814C5530
/* 814C5520 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814C5524 | 38 05 00 02 */	addi r0, r5, 0x2
/* 814C5528 | 7C 04 00 40 */	cmplw r4, r0
/* 814C552C | 41 80 00 1C */	blt .L_814C5548
.L_814C5530:
/* 814C5530 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5534 | 41 82 00 14 */	beq .L_814C5548
/* 814C5538 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C553C | 41 82 00 0C */	beq .L_814C5548
/* 814C5540 | 38 60 00 0E */	li r3, 0xe
/* 814C5544 | 48 00 01 24 */	b .L_814C5668
.L_814C5548:
/* 814C5548 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814C554C | 7C 85 0E 70 */	srawi r5, r4, 1
/* 814C5550 | 7C 04 2A 14 */	add r0, r4, r5
/* 814C5554 | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 814C5558 | 88 A3 00 20 */	lbz r5, 0x20(r3)
/* 814C555C | 54 07 04 3E */	clrlwi r7, r0, 16
/* 814C5560 | 81 03 00 28 */	lwz r8, 0x28(r3)
/* 814C5564 | 7C E0 2E 30 */	sraw r0, r7, r5
/* 814C5568 | 38 C4 FF FF */	subi r6, r4, 0x1
/* 814C556C | 7C 08 02 14 */	add r0, r8, r0
/* 814C5570 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 814C5574 | 7C FC 30 38 */	and r28, r7, r6
/* 814C5578 | 41 82 00 40 */	beq .L_814C55B8
/* 814C557C | 7F A3 EB 78 */	mr r3, r29
/* 814C5580 | 7F E5 FB 78 */	mr r5, r31
/* 814C5584 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C5588 | 57 86 04 3E */	clrlwi r6, r28, 16
/* 814C558C | 38 E0 00 01 */	li r7, 0x1
/* 814C5590 | 48 00 72 21 */	bl VFiPFSEC_ReadFAT
/* 814C5594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5598 | 41 82 00 08 */	beq .L_814C55A0
/* 814C559C | 48 00 00 CC */	b .L_814C5668
.L_814C55A0:
/* 814C55A0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814C55A4 | 57 C3 23 36 */	clrlslwi r3, r30, 16, 4
/* 814C55A8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814C55AC | 7C 03 02 14 */	add r0, r3, r0
/* 814C55B0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814C55B4 | 48 00 00 4C */	b .L_814C5600
.L_814C55B8:
/* 814C55B8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814C55BC | 7F A3 EB 78 */	mr r3, r29
/* 814C55C0 | 7C E0 2E 30 */	sraw r0, r7, r5
/* 814C55C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C55C8 | 7C A8 02 14 */	add r5, r8, r0
/* 814C55CC | 7C E0 30 38 */	and r0, r7, r6
/* 814C55D0 | 38 E0 00 01 */	li r7, 0x1
/* 814C55D4 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814C55D8 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 814C55DC | 48 00 71 D5 */	bl VFiPFSEC_ReadFAT
/* 814C55E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C55E4 | 41 82 00 08 */	beq .L_814C55EC
/* 814C55E8 | 48 00 00 80 */	b .L_814C5668
.L_814C55EC:
/* 814C55EC | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 814C55F0 | 57 C0 05 3E */	clrlwi r0, r30, 20
/* 814C55F4 | 54 63 44 26 */	rlwinm r3, r3, 8, 16, 19
/* 814C55F8 | 7C 03 02 14 */	add r0, r3, r0
/* 814C55FC | 54 03 04 3E */	clrlwi r3, r0, 16
.L_814C5600:
/* 814C5600 | 38 01 00 08 */	addi r0, r1, 0x8
/* 814C5604 | 57 86 04 3E */	clrlwi r6, r28, 16
/* 814C5608 | 7C 60 07 2C */	sthbrx r3, r0, r0
/* 814C560C | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814C5610 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C5614 | 7C 06 00 00 */	cmpw r6, r0
/* 814C5618 | 40 80 00 1C */	bge .L_814C5634
/* 814C561C | 7F A3 EB 78 */	mr r3, r29
/* 814C5620 | 7F E5 FB 78 */	mr r5, r31
/* 814C5624 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C5628 | 38 E0 00 02 */	li r7, 0x2
/* 814C562C | 48 00 72 3D */	bl VFiPFSEC_WriteFAT
/* 814C5630 | 48 00 00 38 */	b .L_814C5668
.L_814C5634:
/* 814C5634 | 7F A3 EB 78 */	mr r3, r29
/* 814C5638 | 7F E5 FB 78 */	mr r5, r31
/* 814C563C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C5640 | 38 E0 00 01 */	li r7, 0x1
/* 814C5644 | 48 00 72 25 */	bl VFiPFSEC_WriteFAT
/* 814C5648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C564C | 40 82 00 1C */	bne .L_814C5668
/* 814C5650 | 7F A3 EB 78 */	mr r3, r29
/* 814C5654 | 38 81 00 09 */	addi r4, r1, 0x9
/* 814C5658 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 814C565C | 38 C0 00 00 */	li r6, 0x0
/* 814C5660 | 38 E0 00 01 */	li r7, 0x1
/* 814C5664 | 48 00 72 05 */	bl VFiPFSEC_WriteFAT
.L_814C5668:
/* 814C5668 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C566C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C5670 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C5674 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C5678 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C567C | 7C 08 03 A6 */	mtlr r0
/* 814C5680 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C5684 | 4E 80 00 20 */	blr
.endfn VFiPFFAT12_WriteFATEntry

# .text:0x664 | 0x814C5688 | size: 0x4D4
.fn VFiPFFAT12_WriteFATEntryPage, global
/* 814C5688 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C568C | 7C 08 02 A6 */	mflr r0
/* 814C5690 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C5694 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5698 | 48 13 3E 1D */	bl _savegpr_24
/* 814C569C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C56A0 | 7C 79 1B 78 */	mr r25, r3
/* 814C56A4 | 7C 9A 23 78 */	mr r26, r4
/* 814C56A8 | 7C BB 2B 78 */	mr r27, r5
/* 814C56AC | 7C DC 33 78 */	mr r28, r6
/* 814C56B0 | 3B C0 00 00 */	li r30, 0x0
/* 814C56B4 | 40 82 00 0C */	bne .L_814C56C0
/* 814C56B8 | 38 60 00 0A */	li r3, 0xa
/* 814C56BC | 48 00 04 88 */	b .L_814C5B44
.L_814C56C0:
/* 814C56C0 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C56C4 | 41 80 00 14 */	blt .L_814C56D8
/* 814C56C8 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814C56CC | 38 05 00 02 */	addi r0, r5, 0x2
/* 814C56D0 | 7C 04 00 40 */	cmplw r4, r0
/* 814C56D4 | 41 80 00 1C */	blt .L_814C56F0
.L_814C56D8:
/* 814C56D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C56DC | 41 82 00 14 */	beq .L_814C56F0
/* 814C56E0 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C56E4 | 41 82 00 0C */	beq .L_814C56F0
/* 814C56E8 | 38 60 00 0E */	li r3, 0xe
/* 814C56EC | 48 00 04 58 */	b .L_814C5B44
.L_814C56F0:
/* 814C56F0 | 54 80 FC 7E */	extrwi r0, r4, 15, 16
/* 814C56F4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 814C56F8 | 7C 04 02 14 */	add r0, r4, r0
/* 814C56FC | 89 03 00 20 */	lbz r8, 0x20(r3)
/* 814C5700 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 814C5704 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 814C5708 | 7C E0 44 30 */	srw r0, r7, r8
/* 814C570C | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 814C5710 | 7C 06 02 14 */	add r0, r6, r0
/* 814C5714 | 80 C5 00 18 */	lwz r6, 0x18(r5)
/* 814C5718 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814C571C | 7C 06 E8 40 */	cmplw r6, r29
/* 814C5720 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C5724 | 7C FF 00 38 */	and r31, r7, r0
/* 814C5728 | 41 81 00 14 */	bgt .L_814C573C
/* 814C572C | 80 03 15 E8 */	lwz r0, 0x15e8(r3)
/* 814C5730 | 7C 06 02 14 */	add r0, r6, r0
/* 814C5734 | 7C 00 E8 40 */	cmplw r0, r29
/* 814C5738 | 41 81 00 B4 */	bgt .L_814C57EC
.L_814C573C:
/* 814C573C | 7F 23 CB 78 */	mr r3, r25
/* 814C5740 | 7C A4 2B 78 */	mr r4, r5
/* 814C5744 | 4B FF E2 71 */	bl VFiPFFAT_UpdateFATEntry
/* 814C5748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C574C | 41 82 00 08 */	beq .L_814C5754
/* 814C5750 | 48 00 03 F4 */	b .L_814C5B44
.L_814C5754:
/* 814C5754 | A0 79 00 18 */	lhz r3, 0x18(r25)
/* 814C5758 | 3B 00 00 01 */	li r24, 0x1
/* 814C575C | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 814C5760 | 41 82 00 08 */	beq .L_814C5768
/* 814C5764 | 54 78 07 7E */	clrlwi r24, r3, 29
.L_814C5768:
/* 814C5768 | 7F 23 CB 78 */	mr r3, r25
/* 814C576C | 7F A4 EB 78 */	mr r4, r29
/* 814C5770 | 7F 85 E3 78 */	mr r5, r28
/* 814C5774 | 4B FF 67 E9 */	bl VFiPFCACHE_ReadFATPage
/* 814C5778 | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C577C | 7C 7E 1B 78 */	mr r30, r3
/* 814C5780 | 40 82 00 50 */	bne .L_814C57D0
/* 814C5784 | 81 99 18 78 */	lwz r12, 0x1878(r25)
/* 814C5788 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C578C | 41 82 00 44 */	beq .L_814C57D0
/* 814C5790 | 80 79 18 58 */	lwz r3, 0x1858(r25)
/* 814C5794 | 7D 89 03 A6 */	mtctr r12
/* 814C5798 | 4E 80 04 21 */	bctrl
/* 814C579C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C57A0 | 41 82 00 40 */	beq .L_814C57E0
/* 814C57A4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C57A8 | 40 82 00 28 */	bne .L_814C57D0
/* 814C57AC | 88 19 00 22 */	lbz r0, 0x22(r25)
/* 814C57B0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C57B4 | 41 80 00 1C */	blt .L_814C57D0
/* 814C57B8 | 7C 18 00 40 */	cmplw r24, r0
/* 814C57BC | 40 80 00 14 */	bge .L_814C57D0
/* 814C57C0 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814C57C4 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814C57C8 | 7F BD 02 14 */	add r29, r29, r0
/* 814C57CC | 48 00 00 14 */	b .L_814C57E0
.L_814C57D0:
/* 814C57D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C57D4 | 41 82 00 0C */	beq .L_814C57E0
/* 814C57D8 | 7F C3 F3 78 */	mr r3, r30
/* 814C57DC | 48 00 03 68 */	b .L_814C5B44
.L_814C57E0:
/* 814C57E0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C57E4 | 40 82 FF 84 */	bne .L_814C5768
/* 814C57E8 | 48 00 00 30 */	b .L_814C5818
.L_814C57EC:
/* 814C57EC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 814C57F0 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 814C57F4 | 7C 03 00 50 */	subf r0, r3, r0
/* 814C57F8 | 7C 00 46 30 */	sraw r0, r0, r8
/* 814C57FC | 7C 06 02 14 */	add r0, r6, r0
/* 814C5800 | 7C 1D 00 40 */	cmplw r29, r0
/* 814C5804 | 41 82 00 14 */	beq .L_814C5818
/* 814C5808 | 7C 06 E8 50 */	subf r0, r6, r29
/* 814C580C | 7C 00 40 30 */	slw r0, r0, r8
/* 814C5810 | 7C 03 02 14 */	add r0, r3, r0
/* 814C5814 | 90 05 00 08 */	stw r0, 0x8(r5)
.L_814C5818:
/* 814C5818 | 57 40 07 FF */	clrlwi. r0, r26, 31
/* 814C581C | 41 82 01 90 */	beq .L_814C59AC
/* 814C5820 | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 814C5824 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814C5828 | 7F 23 CB 78 */	mr r3, r25
/* 814C582C | 38 A0 00 01 */	li r5, 0x1
/* 814C5830 | 80 C6 00 08 */	lwz r6, 0x8(r6)
/* 814C5834 | 7C 06 20 AE */	lbzx r0, r6, r4
/* 814C5838 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814C583C | 53 60 26 36 */	rlwimi r0, r27, 4, 24, 27
/* 814C5840 | 7C 06 21 AE */	stbx r0, r6, r4
/* 814C5844 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C5848 | 4B FF 65 A9 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814C584C | A0 79 00 00 */	lhz r3, 0x0(r25)
/* 814C5850 | 57 E5 04 3E */	clrlwi r5, r31, 16
/* 814C5854 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C5858 | 7C 05 00 40 */	cmplw r5, r0
/* 814C585C | 40 82 01 38 */	bne .L_814C5994
/* 814C5860 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C5864 | 38 7D 00 01 */	addi r3, r29, 0x1
/* 814C5868 | 80 A4 00 18 */	lwz r5, 0x18(r4)
/* 814C586C | 7C 05 18 40 */	cmplw r5, r3
/* 814C5870 | 41 81 00 14 */	bgt .L_814C5884
/* 814C5874 | 80 19 15 E8 */	lwz r0, 0x15e8(r25)
/* 814C5878 | 7C 05 02 14 */	add r0, r5, r0
/* 814C587C | 7C 00 18 40 */	cmplw r0, r3
/* 814C5880 | 41 81 00 C0 */	bgt .L_814C5940
.L_814C5884:
/* 814C5884 | 7F 23 CB 78 */	mr r3, r25
/* 814C5888 | 4B FF E1 2D */	bl VFiPFFAT_UpdateFATEntry
/* 814C588C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5890 | 41 82 00 08 */	beq .L_814C5898
/* 814C5894 | 48 00 02 B0 */	b .L_814C5B44
.L_814C5898:
/* 814C5898 | A0 79 00 18 */	lhz r3, 0x18(r25)
/* 814C589C | 3B 40 00 01 */	li r26, 0x1
/* 814C58A0 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 814C58A4 | 41 82 00 08 */	beq .L_814C58AC
/* 814C58A8 | 54 7A 07 7E */	clrlwi r26, r3, 29
.L_814C58AC:
/* 814C58AC | 7F 23 CB 78 */	mr r3, r25
/* 814C58B0 | 7F 85 E3 78 */	mr r5, r28
/* 814C58B4 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 814C58B8 | 4B FF 66 A5 */	bl VFiPFCACHE_ReadFATPage
/* 814C58BC | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C58C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814C58C4 | 40 82 00 50 */	bne .L_814C5914
/* 814C58C8 | 81 99 18 78 */	lwz r12, 0x1878(r25)
/* 814C58CC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C58D0 | 41 82 00 44 */	beq .L_814C5914
/* 814C58D4 | 80 79 18 58 */	lwz r3, 0x1858(r25)
/* 814C58D8 | 7D 89 03 A6 */	mtctr r12
/* 814C58DC | 4E 80 04 21 */	bctrl
/* 814C58E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C58E4 | 41 82 00 40 */	beq .L_814C5924
/* 814C58E8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C58EC | 40 82 00 28 */	bne .L_814C5914
/* 814C58F0 | 88 19 00 22 */	lbz r0, 0x22(r25)
/* 814C58F4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C58F8 | 41 80 00 1C */	blt .L_814C5914
/* 814C58FC | 7C 1A 00 40 */	cmplw r26, r0
/* 814C5900 | 40 80 00 14 */	bge .L_814C5914
/* 814C5904 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814C5908 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814C590C | 7F BD 02 14 */	add r29, r29, r0
/* 814C5910 | 48 00 00 14 */	b .L_814C5924
.L_814C5914:
/* 814C5914 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5918 | 41 82 00 0C */	beq .L_814C5924
/* 814C591C | 7F C3 F3 78 */	mr r3, r30
/* 814C5920 | 48 00 02 24 */	b .L_814C5B44
.L_814C5924:
/* 814C5924 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5928 | 40 82 FF 84 */	bne .L_814C58AC
/* 814C592C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C5930 | 7F 23 CB 78 */	mr r3, r25
/* 814C5934 | 38 A0 00 01 */	li r5, 0x1
/* 814C5938 | 4B FF 64 B9 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814C593C | 48 00 00 44 */	b .L_814C5980
.L_814C5940:
/* 814C5940 | 80 E4 00 04 */	lwz r7, 0x4(r4)
/* 814C5944 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C5948 | 88 D9 00 20 */	lbz r6, 0x20(r25)
/* 814C594C | 7C 07 00 50 */	subf r0, r7, r0
/* 814C5950 | 7C 00 36 30 */	sraw r0, r0, r6
/* 814C5954 | 7C 05 02 14 */	add r0, r5, r0
/* 814C5958 | 7C 03 00 40 */	cmplw r3, r0
/* 814C595C | 41 82 00 24 */	beq .L_814C5980
/* 814C5960 | 7C 05 18 50 */	subf r0, r5, r3
/* 814C5964 | 7F 23 CB 78 */	mr r3, r25
/* 814C5968 | 7C 00 30 30 */	slw r0, r0, r6
/* 814C596C | 38 A0 00 01 */	li r5, 0x1
/* 814C5970 | 7C 07 02 14 */	add r0, r7, r0
/* 814C5974 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814C5978 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C597C | 4B FF 64 75 */	bl VFiPFCACHE_UpdateModifiedSector
.L_814C5980:
/* 814C5980 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814C5984 | 57 60 E6 3E */	extrwi r0, r27, 8, 20
/* 814C5988 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C598C | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814C5990 | 48 00 01 B0 */	b .L_814C5B40
.L_814C5994:
/* 814C5994 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814C5998 | 57 64 E6 3E */	extrwi r4, r27, 8, 20
/* 814C599C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814C59A0 | 7C 65 02 14 */	add r3, r5, r0
/* 814C59A4 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 814C59A8 | 48 00 01 98 */	b .L_814C5B40
.L_814C59AC:
/* 814C59AC | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C59B0 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814C59B4 | 7F 23 CB 78 */	mr r3, r25
/* 814C59B8 | 38 A0 00 01 */	li r5, 0x1
/* 814C59BC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814C59C0 | 7F 64 01 AE */	stbx r27, r4, r0
/* 814C59C4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C59C8 | 4B FF 64 29 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814C59CC | A0 79 00 00 */	lhz r3, 0x0(r25)
/* 814C59D0 | 57 E5 04 3E */	clrlwi r5, r31, 16
/* 814C59D4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C59D8 | 7C 05 00 40 */	cmplw r5, r0
/* 814C59DC | 40 82 01 44 */	bne .L_814C5B20
/* 814C59E0 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C59E4 | 38 7D 00 01 */	addi r3, r29, 0x1
/* 814C59E8 | 80 A4 00 18 */	lwz r5, 0x18(r4)
/* 814C59EC | 7C 05 18 40 */	cmplw r5, r3
/* 814C59F0 | 41 81 00 14 */	bgt .L_814C5A04
/* 814C59F4 | 80 19 15 E8 */	lwz r0, 0x15e8(r25)
/* 814C59F8 | 7C 05 02 14 */	add r0, r5, r0
/* 814C59FC | 7C 00 18 40 */	cmplw r0, r3
/* 814C5A00 | 41 81 00 C0 */	bgt .L_814C5AC0
.L_814C5A04:
/* 814C5A04 | 7F 23 CB 78 */	mr r3, r25
/* 814C5A08 | 4B FF DF AD */	bl VFiPFFAT_UpdateFATEntry
/* 814C5A0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5A10 | 41 82 00 08 */	beq .L_814C5A18
/* 814C5A14 | 48 00 01 30 */	b .L_814C5B44
.L_814C5A18:
/* 814C5A18 | A0 79 00 18 */	lhz r3, 0x18(r25)
/* 814C5A1C | 3B 40 00 01 */	li r26, 0x1
/* 814C5A20 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 814C5A24 | 41 82 00 08 */	beq .L_814C5A2C
/* 814C5A28 | 54 7A 07 7E */	clrlwi r26, r3, 29
.L_814C5A2C:
/* 814C5A2C | 7F 23 CB 78 */	mr r3, r25
/* 814C5A30 | 7F 85 E3 78 */	mr r5, r28
/* 814C5A34 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 814C5A38 | 4B FF 65 25 */	bl VFiPFCACHE_ReadFATPage
/* 814C5A3C | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C5A40 | 7C 7E 1B 78 */	mr r30, r3
/* 814C5A44 | 40 82 00 50 */	bne .L_814C5A94
/* 814C5A48 | 81 99 18 78 */	lwz r12, 0x1878(r25)
/* 814C5A4C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C5A50 | 41 82 00 44 */	beq .L_814C5A94
/* 814C5A54 | 80 79 18 58 */	lwz r3, 0x1858(r25)
/* 814C5A58 | 7D 89 03 A6 */	mtctr r12
/* 814C5A5C | 4E 80 04 21 */	bctrl
/* 814C5A60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5A64 | 41 82 00 40 */	beq .L_814C5AA4
/* 814C5A68 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C5A6C | 40 82 00 28 */	bne .L_814C5A94
/* 814C5A70 | 88 19 00 22 */	lbz r0, 0x22(r25)
/* 814C5A74 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C5A78 | 41 80 00 1C */	blt .L_814C5A94
/* 814C5A7C | 7C 1A 00 40 */	cmplw r26, r0
/* 814C5A80 | 40 80 00 14 */	bge .L_814C5A94
/* 814C5A84 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814C5A88 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814C5A8C | 7F BD 02 14 */	add r29, r29, r0
/* 814C5A90 | 48 00 00 14 */	b .L_814C5AA4
.L_814C5A94:
/* 814C5A94 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5A98 | 41 82 00 0C */	beq .L_814C5AA4
/* 814C5A9C | 7F C3 F3 78 */	mr r3, r30
/* 814C5AA0 | 48 00 00 A4 */	b .L_814C5B44
.L_814C5AA4:
/* 814C5AA4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5AA8 | 40 82 FF 84 */	bne .L_814C5A2C
/* 814C5AAC | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C5AB0 | 7F 23 CB 78 */	mr r3, r25
/* 814C5AB4 | 38 A0 00 01 */	li r5, 0x1
/* 814C5AB8 | 4B FF 63 39 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814C5ABC | 48 00 00 44 */	b .L_814C5B00
.L_814C5AC0:
/* 814C5AC0 | 80 E4 00 04 */	lwz r7, 0x4(r4)
/* 814C5AC4 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C5AC8 | 88 D9 00 20 */	lbz r6, 0x20(r25)
/* 814C5ACC | 7C 07 00 50 */	subf r0, r7, r0
/* 814C5AD0 | 7C 00 36 30 */	sraw r0, r0, r6
/* 814C5AD4 | 7C 05 02 14 */	add r0, r5, r0
/* 814C5AD8 | 7C 03 00 40 */	cmplw r3, r0
/* 814C5ADC | 41 82 00 24 */	beq .L_814C5B00
/* 814C5AE0 | 7C 05 18 50 */	subf r0, r5, r3
/* 814C5AE4 | 7F 23 CB 78 */	mr r3, r25
/* 814C5AE8 | 7C 00 30 30 */	slw r0, r0, r6
/* 814C5AEC | 38 A0 00 01 */	li r5, 0x1
/* 814C5AF0 | 7C 07 02 14 */	add r0, r7, r0
/* 814C5AF4 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814C5AF8 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C5AFC | 4B FF 62 F5 */	bl VFiPFCACHE_UpdateModifiedSector
.L_814C5B00:
/* 814C5B00 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814C5B04 | 57 60 C6 3E */	extrwi r0, r27, 8, 16
/* 814C5B08 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814C5B0C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814C5B10 | 54 63 06 36 */	rlwinm r3, r3, 0, 24, 27
/* 814C5B14 | 7C 60 03 78 */	or r0, r3, r0
/* 814C5B18 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814C5B1C | 48 00 00 24 */	b .L_814C5B40
.L_814C5B20:
/* 814C5B20 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C5B24 | 57 63 C6 3E */	extrwi r3, r27, 8, 16
/* 814C5B28 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C5B2C | 7C 85 02 14 */	add r4, r5, r0
/* 814C5B30 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814C5B34 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 814C5B38 | 7C 60 03 78 */	or r0, r3, r0
/* 814C5B3C | 98 04 00 01 */	stb r0, 0x1(r4)
.L_814C5B40:
/* 814C5B40 | 7F C3 F3 78 */	mr r3, r30
.L_814C5B44:
/* 814C5B44 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5B48 | 48 13 39 B9 */	bl _restgpr_24
/* 814C5B4C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C5B50 | 7C 08 03 A6 */	mtlr r0
/* 814C5B54 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C5B58 | 4E 80 00 20 */	blr
.endfn VFiPFFAT12_WriteFATEntryPage
