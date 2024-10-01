.include "macros.inc"
.file "pf_dir.c"

# 0x814BCED4..0x814BE2FC | size: 0x1428
.text
.balign 4

# .text:0x0 | 0x814BCED4 | size: 0x134
.fn VFiPFDIR_CheckDirIsEmpty, global
/* 814BCED4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BCED8 | 7C 08 02 A6 */	mflr r0
/* 814BCEDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BCEE0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BCEE4 | 3B E0 00 00 */	li r31, 0x0
/* 814BCEE8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BCEEC | 7C 9E 23 78 */	mr r30, r4
/* 814BCEF0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BCEF4 | 7C 7D 1B 78 */	mr r29, r3
/* 814BCEF8 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 814BCEFC | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 814BCF00 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814BCF04 | 41 82 00 54 */	beq .L_814BCF58
/* 814BCF08 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 814BCF0C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814BCF10 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814BCF14 | 40 82 00 10 */	bne .L_814BCF24
/* 814BCF18 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814BCF1C | 7C 04 00 40 */	cmplw r4, r0
/* 814BCF20 | 41 82 00 38 */	beq .L_814BCF58
.L_814BCF24:
/* 814BCF24 | 7F A3 EB 78 */	mr r3, r29
/* 814BCF28 | 38 80 00 02 */	li r4, 0x2
/* 814BCF2C | 38 A0 00 00 */	li r5, 0x0
/* 814BCF30 | 48 00 45 99 */	bl VFiPFENT_ITER_MoveTo
/* 814BCF34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCF38 | 7C 7F 1B 78 */	mr r31, r3
/* 814BCF3C | 41 82 00 1C */	beq .L_814BCF58
/* 814BCF40 | 38 83 FF F3 */	subi r4, r3, 0xd
/* 814BCF44 | 20 03 00 0D */	subfic r0, r3, 0xd
/* 814BCF48 | 7C 80 00 F8 */	nor r0, r4, r0
/* 814BCF4C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BCF50 | 7C 63 00 78 */	andc r3, r3, r0
/* 814BCF54 | 48 00 00 98 */	b .L_814BCFEC
.L_814BCF58:
/* 814BCF58 | 38 00 00 01 */	li r0, 0x1
/* 814BCF5C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814BCF60 | 48 00 00 78 */	b .L_814BCFD8
.L_814BCF64:
/* 814BCF64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BCF68 | 41 82 00 1C */	beq .L_814BCF84
/* 814BCF6C | 38 7F FF F3 */	subi r3, r31, 0xd
/* 814BCF70 | 20 1F 00 0D */	subfic r0, r31, 0xd
/* 814BCF74 | 7C 60 00 F8 */	nor r0, r3, r0
/* 814BCF78 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BCF7C | 7F E3 00 78 */	andc r3, r31, r0
/* 814BCF80 | 48 00 00 6C */	b .L_814BCFEC
.L_814BCF84:
/* 814BCF84 | 88 7D 00 48 */	lbz r3, 0x48(r29)
/* 814BCF88 | 28 03 00 E5 */	cmplwi r3, 0xe5
/* 814BCF8C | 41 82 00 3C */	beq .L_814BCFC8
/* 814BCF90 | 88 9D 00 53 */	lbz r4, 0x53(r29)
/* 814BCF94 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 814BCF98 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 814BCF9C | 41 82 00 2C */	beq .L_814BCFC8
/* 814BCFA0 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814BCFA4 | 40 82 00 24 */	bne .L_814BCFC8
/* 814BCFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCFAC | 40 82 00 10 */	bne .L_814BCFBC
/* 814BCFB0 | 38 00 00 01 */	li r0, 0x1
/* 814BCFB4 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814BCFB8 | 48 00 00 30 */	b .L_814BCFE8
.L_814BCFBC:
/* 814BCFBC | 38 00 00 00 */	li r0, 0x0
/* 814BCFC0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814BCFC4 | 48 00 00 24 */	b .L_814BCFE8
.L_814BCFC8:
/* 814BCFC8 | 7F A3 EB 78 */	mr r3, r29
/* 814BCFCC | 38 80 00 00 */	li r4, 0x0
/* 814BCFD0 | 48 00 45 F1 */	bl VFiPFENT_ITER_Advance
/* 814BCFD4 | 7C 7F 1B 78 */	mr r31, r3
.L_814BCFD8:
/* 814BCFD8 | 7F A3 EB 78 */	mr r3, r29
/* 814BCFDC | 48 00 43 E1 */	bl VFiPFENT_ITER_IsAtLogicalEnd
/* 814BCFE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BCFE4 | 41 82 FF 80 */	beq .L_814BCF64
.L_814BCFE8:
/* 814BCFE8 | 38 60 00 00 */	li r3, 0x0
.L_814BCFEC:
/* 814BCFEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BCFF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BCFF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BCFF8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BCFFC | 7C 08 03 A6 */	mtlr r0
/* 814BD000 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BD004 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_CheckDirIsEmpty

# .text:0x134 | 0x814BD008 | size: 0x18C
.fn VFiPFDIR_RemoveDir, global
/* 814BD008 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 814BD00C | 7C 08 02 A6 */	mflr r0
/* 814BD010 | 38 C0 00 00 */	li r6, 0x0
/* 814BD014 | 38 E0 00 00 */	li r7, 0x0
/* 814BD018 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 814BD01C | 38 00 00 03 */	li r0, 0x3
/* 814BD020 | 93 E1 00 9C */	stw r31, 0x9c(r1)
/* 814BD024 | 7C BF 2B 78 */	mr r31, r5
/* 814BD028 | 38 A0 00 00 */	li r5, 0x0
/* 814BD02C | 93 C1 00 98 */	stw r30, 0x98(r1)
/* 814BD030 | 7C 9E 23 78 */	mr r30, r4
/* 814BD034 | 93 A1 00 94 */	stw r29, 0x94(r1)
/* 814BD038 | 7C 7D 1B 78 */	mr r29, r3
/* 814BD03C | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 814BD040 | 81 24 02 2C */	lwz r9, 0x22c(r4)
/* 814BD044 | 7D 26 4B 78 */	mr r6, r9
/* 814BD048 | 7C 09 03 A6 */	mtctr r0
.L_814BD04C:
/* 814BD04C | 80 06 0E 00 */	lwz r0, 0xe00(r6)
/* 814BD050 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BD054 | 41 82 00 44 */	beq .L_814BD098
/* 814BD058 | 7D 09 3A 14 */	add r8, r9, r7
/* 814BD05C | 80 08 0E 00 */	lwz r0, 0xe00(r8)
/* 814BD060 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BD064 | 41 82 00 34 */	beq .L_814BD098
/* 814BD068 | 80 08 10 68 */	lwz r0, 0x1068(r8)
/* 814BD06C | 7C 09 00 40 */	cmplw r9, r0
/* 814BD070 | 40 82 00 28 */	bne .L_814BD098
/* 814BD074 | 80 64 02 38 */	lwz r3, 0x238(r4)
/* 814BD078 | 80 08 10 74 */	lwz r0, 0x1074(r8)
/* 814BD07C | 7C 03 00 40 */	cmplw r3, r0
/* 814BD080 | 40 82 00 18 */	bne .L_814BD098
/* 814BD084 | A0 64 02 3C */	lhz r3, 0x23c(r4)
/* 814BD088 | A0 08 10 78 */	lhz r0, 0x1078(r8)
/* 814BD08C | 7C 03 00 40 */	cmplw r3, r0
/* 814BD090 | 40 82 00 08 */	bne .L_814BD098
/* 814BD094 | 38 A8 0E 3C */	addi r5, r8, 0xe3c
.L_814BD098:
/* 814BD098 | 38 C6 02 7C */	addi r6, r6, 0x27c
/* 814BD09C | 38 E7 02 7C */	addi r7, r7, 0x27c
/* 814BD0A0 | 42 00 FF AC */	bdnz .L_814BD04C
/* 814BD0A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BD0A8 | 41 82 00 0C */	beq .L_814BD0B4
/* 814BD0AC | 38 60 00 13 */	li r3, 0x13
/* 814BD0B0 | 48 00 00 C8 */	b .L_814BD178
.L_814BD0B4:
/* 814BD0B4 | 80 84 02 34 */	lwz r4, 0x234(r4)
/* 814BD0B8 | 7F A3 EB 78 */	mr r3, r29
/* 814BD0BC | 48 01 08 CD */	bl VFiPFVOL_CheckCurrentDir
/* 814BD0C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD0C4 | 41 82 00 0C */	beq .L_814BD0D0
/* 814BD0C8 | 38 60 00 1C */	li r3, 0x1c
/* 814BD0CC | 48 00 00 AC */	b .L_814BD178
.L_814BD0D0:
/* 814BD0D0 | 7F A5 EB 78 */	mr r5, r29
/* 814BD0D4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814BD0D8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BD0DC | 38 DE 02 34 */	addi r6, r30, 0x234
/* 814BD0E0 | 48 00 7E 8D */	bl VFiPFFAT_InitFFD
/* 814BD0E4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BD0E8 | 38 80 00 00 */	li r4, 0x0
/* 814BD0EC | 48 00 41 CD */	bl VFiPFENT_ITER_IteratorInitialize
/* 814BD0F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD0F4 | 41 82 00 08 */	beq .L_814BD0FC
/* 814BD0F8 | 48 00 00 80 */	b .L_814BD178
.L_814BD0FC:
/* 814BD0FC | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BD100 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BD104 | 4B FF FD D1 */	bl VFiPFDIR_CheckDirIsEmpty
/* 814BD108 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD10C | 41 82 00 08 */	beq .L_814BD114
/* 814BD110 | 48 00 00 68 */	b .L_814BD178
.L_814BD114:
/* 814BD114 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BD118 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BD11C | 40 82 00 0C */	bne .L_814BD128
/* 814BD120 | 38 60 00 1D */	li r3, 0x1d
/* 814BD124 | 48 00 00 54 */	b .L_814BD178
.L_814BD128:
/* 814BD128 | 83 BE 02 34 */	lwz r29, 0x234(r30)
/* 814BD12C | 7F C3 F3 78 */	mr r3, r30
/* 814BD130 | 7F E4 FB 78 */	mr r4, r31
/* 814BD134 | 48 00 26 85 */	bl VFiPFENT_RemoveEntry
/* 814BD138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD13C | 41 82 00 08 */	beq .L_814BD144
/* 814BD140 | 48 00 00 28 */	b .L_814BD168
.L_814BD144:
/* 814BD144 | 7F A4 EB 78 */	mr r4, r29
/* 814BD148 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 814BD14C | 38 A0 FF FF */	li r5, -0x1
/* 814BD150 | 38 C0 FF FF */	li r6, -0x1
/* 814BD154 | 48 00 6F C5 */	bl VFiPFFAT_FreeChain
/* 814BD158 | 7C 03 00 D0 */	neg r0, r3
/* 814BD15C | 7C 00 1B 78 */	or r0, r0, r3
/* 814BD160 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BD164 | 7C 63 00 38 */	and r3, r3, r0
.L_814BD168:
/* 814BD168 | 7C 03 00 D0 */	neg r0, r3
/* 814BD16C | 7C 00 1B 78 */	or r0, r0, r3
/* 814BD170 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BD174 | 7C 63 00 38 */	and r3, r3, r0
.L_814BD178:
/* 814BD178 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 814BD17C | 83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 814BD180 | 83 C1 00 98 */	lwz r30, 0x98(r1)
/* 814BD184 | 83 A1 00 94 */	lwz r29, 0x94(r1)
/* 814BD188 | 7C 08 03 A6 */	mtlr r0
/* 814BD18C | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 814BD190 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_RemoveDir

# .text:0x2C0 | 0x814BD194 | size: 0x3DC
.fn VFiPFDIR_p_mkdir, global
/* 814BD194 | 94 21 FB 00 */	stwu r1, -0x500(r1)
/* 814BD198 | 7C 08 02 A6 */	mflr r0
/* 814BD19C | 90 01 05 04 */	stw r0, 0x504(r1)
/* 814BD1A0 | 38 00 00 00 */	li r0, 0x0
/* 814BD1A4 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 814BD1A8 | 93 E1 04 FC */	stw r31, 0x4fc(r1)
/* 814BD1AC | 93 C1 04 F8 */	stw r30, 0x4f8(r1)
/* 814BD1B0 | 7C DE 33 78 */	mr r30, r6
/* 814BD1B4 | 93 A1 04 F4 */	stw r29, 0x4f4(r1)
/* 814BD1B8 | 7C 7D 1B 78 */	mr r29, r3
/* 814BD1BC | 7C 83 23 78 */	mr r3, r4
/* 814BD1C0 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 814BD1C4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814BD1C8 | 48 00 DC D5 */	bl VFiPFPATH_SplitPath
/* 814BD1CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD1D0 | 41 82 00 08 */	beq .L_814BD1D8
/* 814BD1D4 | 48 00 03 80 */	b .L_814BD554
.L_814BD1D8:
/* 814BD1D8 | 7F A4 EB 78 */	mr r4, r29
/* 814BD1DC | 38 61 00 70 */	addi r3, r1, 0x70
/* 814BD1E0 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 814BD1E4 | 48 00 1B 25 */	bl VFiPFENT_GetParentEntryOfPath
/* 814BD1E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD1EC | 41 82 00 08 */	beq .L_814BD1F4
/* 814BD1F0 | 48 00 03 64 */	b .L_814BD554
.L_814BD1F4:
/* 814BD1F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BD1F8 | 41 82 00 0C */	beq .L_814BD204
/* 814BD1FC | 80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 814BD200 | 90 1E 00 0C */	stw r0, 0xc(r30)
.L_814BD204:
/* 814BD204 | 7F A5 EB 78 */	mr r5, r29
/* 814BD208 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814BD20C | 38 81 00 18 */	addi r4, r1, 0x18
/* 814BD210 | 38 C1 02 A4 */	addi r6, r1, 0x2a4
/* 814BD214 | 48 00 7D 59 */	bl VFiPFFAT_InitFFD
/* 814BD218 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814BD21C | 38 81 02 B0 */	addi r4, r1, 0x2b0
/* 814BD220 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 814BD224 | 38 A0 00 00 */	li r5, 0x0
/* 814BD228 | 38 E0 00 77 */	li r7, 0x77
/* 814BD22C | 39 00 00 00 */	li r8, 0x0
/* 814BD230 | 39 20 00 00 */	li r9, 0x0
/* 814BD234 | 48 00 1B 71 */	bl VFiPFENT_findEntry
/* 814BD238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD23C | 40 82 00 0C */	bne .L_814BD248
/* 814BD240 | 38 60 00 08 */	li r3, 0x8
/* 814BD244 | 48 00 03 10 */	b .L_814BD554
.L_814BD248:
/* 814BD248 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 814BD24C | 41 82 00 08 */	beq .L_814BD254
/* 814BD250 | 48 00 03 04 */	b .L_814BD554
.L_814BD254:
/* 814BD254 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814BD258 | 38 80 00 01 */	li r4, 0x1
/* 814BD25C | 4B FF 8B 69 */	bl VFiPFSTR_StrNumChar
/* 814BD260 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814BD264 | 28 03 00 FF */	cmplwi r3, 0xff
/* 814BD268 | 41 81 00 14 */	bgt .L_814BD27C
/* 814BD26C | 80 01 02 A0 */	lwz r0, 0x2a0(r1)
/* 814BD270 | 7C 03 02 14 */	add r0, r3, r0
/* 814BD274 | 28 00 01 03 */	cmplwi r0, 0x103
/* 814BD278 | 40 81 00 0C */	ble .L_814BD284
.L_814BD27C:
/* 814BD27C | 38 60 00 02 */	li r3, 0x2
/* 814BD280 | 48 00 02 D4 */	b .L_814BD554
.L_814BD284:
/* 814BD284 | 7F A8 EB 78 */	mr r8, r29
/* 814BD288 | 38 61 02 B0 */	addi r3, r1, 0x2b0
/* 814BD28C | 38 81 00 20 */	addi r4, r1, 0x20
/* 814BD290 | 38 E1 00 70 */	addi r7, r1, 0x70
/* 814BD294 | 38 A0 00 10 */	li r5, 0x10
/* 814BD298 | 38 C0 00 01 */	li r6, 0x1
/* 814BD29C | 48 00 27 19 */	bl VFiPFENT_InitENT
/* 814BD2A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD2A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814BD2A8 | 40 82 02 A8 */	bne .L_814BD550
/* 814BD2AC | 7F A5 EB 78 */	mr r5, r29
/* 814BD2B0 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814BD2B4 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814BD2B8 | 38 C1 02 A4 */	addi r6, r1, 0x2a4
/* 814BD2BC | 48 00 7C B1 */	bl VFiPFFAT_InitFFD
/* 814BD2C0 | 88 81 04 BA */	lbz r4, 0x4ba(r1)
/* 814BD2C4 | 38 61 02 B0 */	addi r3, r1, 0x2b0
/* 814BD2C8 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 814BD2CC | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814BD2D0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814BD2D4 | 39 21 00 0C */	addi r9, r1, 0xc
/* 814BD2D8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814BD2DC | 38 E0 00 00 */	li r7, 0x0
/* 814BD2E0 | 39 00 00 77 */	li r8, 0x77
/* 814BD2E4 | 48 00 1C 51 */	bl VFiPFENT_allocateEntry
/* 814BD2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD2EC | 7C 7F 1B 78 */	mr r31, r3
/* 814BD2F0 | 40 82 02 60 */	bne .L_814BD550
/* 814BD2F4 | 38 00 00 00 */	li r0, 0x0
/* 814BD2F8 | 7F A5 EB 78 */	mr r5, r29
/* 814BD2FC | 90 01 04 E4 */	stw r0, 0x4e4(r1)
/* 814BD300 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814BD304 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814BD308 | 38 C1 04 E4 */	addi r6, r1, 0x4e4
/* 814BD30C | 48 00 7C 61 */	bl VFiPFFAT_InitFFD
/* 814BD310 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814BD314 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814BD318 | 38 80 00 00 */	li r4, 0x0
/* 814BD31C | 38 A0 00 01 */	li r5, 0x1
/* 814BD320 | 48 00 67 95 */	bl VFiPFFAT_GetSectorSpecified
/* 814BD324 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814BD328 | 7C 7F 1B 78 */	mr r31, r3
/* 814BD32C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814BD330 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BD334 | 40 82 00 08 */	bne .L_814BD33C
/* 814BD338 | 3B E0 00 06 */	li r31, 0x6
.L_814BD33C:
/* 814BD33C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BD340 | 40 82 02 10 */	bne .L_814BD550
/* 814BD344 | 88 BD 00 06 */	lbz r5, 0x6(r29)
/* 814BD348 | 7F A3 EB 78 */	mr r3, r29
/* 814BD34C | 38 E1 02 B0 */	addi r7, r1, 0x2b0
/* 814BD350 | 39 01 00 70 */	addi r8, r1, 0x70
/* 814BD354 | 38 C0 00 01 */	li r6, 0x1
/* 814BD358 | 48 00 28 95 */	bl VFiPFENT_FillVoidEntryToSectors
/* 814BD35C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD360 | 7C 7F 1B 78 */	mr r31, r3
/* 814BD364 | 40 82 00 54 */	bne .L_814BD3B8
/* 814BD368 | A0 01 02 B0 */	lhz r0, 0x2b0(r1)
/* 814BD36C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BD370 | 41 82 00 34 */	beq .L_814BD3A4
/* 814BD374 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814BD378 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814BD37C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814BD380 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD384 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD388 | 40 82 00 1C */	bne .L_814BD3A4
/* 814BD38C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BD390 | 38 61 04 BE */	addi r3, r1, 0x4be
/* 814BD394 | 48 00 F3 A9 */	bl VFiPFPATH_AdjustExtShortName
/* 814BD398 | 38 61 02 B0 */	addi r3, r1, 0x2b0
/* 814BD39C | 48 00 13 E1 */	bl VFiPFENT_CalcCheckSum
/* 814BD3A0 | 98 61 04 BC */	stb r3, 0x4bc(r1)
.L_814BD3A4:
/* 814BD3A4 | 38 61 02 B0 */	addi r3, r1, 0x2b0
/* 814BD3A8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BD3AC | 38 A0 00 00 */	li r5, 0x0
/* 814BD3B0 | 48 00 20 DD */	bl VFiPFENT_UpdateEntry
/* 814BD3B4 | 7C 7F 1B 78 */	mr r31, r3
.L_814BD3B8:
/* 814BD3B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BD3BC | 41 82 00 1C */	beq .L_814BD3D8
/* 814BD3C0 | 80 81 04 E4 */	lwz r4, 0x4e4(r1)
/* 814BD3C4 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814BD3C8 | 38 A0 FF FF */	li r5, -0x1
/* 814BD3CC | 38 C0 FF FF */	li r6, -0x1
/* 814BD3D0 | 48 00 6D 49 */	bl VFiPFFAT_FreeChain
/* 814BD3D4 | 48 00 01 7C */	b .L_814BD550
.L_814BD3D8:
/* 814BD3D8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BD3DC | 41 82 01 74 */	beq .L_814BD550
/* 814BD3E0 | 38 00 00 00 */	li r0, 0x0
/* 814BD3E4 | 93 BE 00 08 */	stw r29, 0x8(r30)
/* 814BD3E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814BD3EC | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814BD3F0 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 814BD3F4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BD3F8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814BD3FC | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 814BD400 | 88 01 04 BA */	lbz r0, 0x4ba(r1)
/* 814BD404 | 98 1E 00 18 */	stb r0, 0x18(r30)
/* 814BD408 | 88 01 04 CC */	lbz r0, 0x4cc(r1)
/* 814BD40C | 98 1E 00 1B */	stb r0, 0x1b(r30)
/* 814BD410 | A0 01 04 D4 */	lhz r0, 0x4d4(r1)
/* 814BD414 | B0 1E 02 24 */	sth r0, 0x224(r30)
/* 814BD418 | A0 01 04 D6 */	lhz r0, 0x4d6(r1)
/* 814BD41C | B0 1E 02 26 */	sth r0, 0x226(r30)
/* 814BD420 | 80 01 04 D8 */	lwz r0, 0x4d8(r1)
/* 814BD424 | 90 1E 02 28 */	stw r0, 0x228(r30)
/* 814BD428 | 88 01 04 CC */	lbz r0, 0x4cc(r1)
/* 814BD42C | 98 1E 02 2C */	stb r0, 0x22c(r30)
/* 814BD430 | 4B FF 87 D5 */	bl VFiPFSTR_GetCodeMode
/* 814BD434 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814BD438 | 40 82 00 24 */	bne .L_814BD45C
/* 814BD43C | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 814BD440 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 814BD444 | 38 80 00 00 */	li r4, 0x0
/* 814BD448 | 48 00 EC AD */	bl VFiPFPATH_SetSearchPattern
/* 814BD44C | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BD450 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814BD454 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 814BD458 | 48 00 00 20 */	b .L_814BD478
.L_814BD45C:
/* 814BD45C | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 814BD460 | 38 9E 04 44 */	addi r4, r30, 0x444
/* 814BD464 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 814BD468 | 48 00 EC 8D */	bl VFiPFPATH_SetSearchPattern
/* 814BD46C | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BD470 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BD474 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_814BD478:
/* 814BD478 | 38 7E 02 2D */	addi r3, r30, 0x22d
/* 814BD47C | 38 81 04 BE */	addi r4, r1, 0x4be
/* 814BD480 | 4B FF 85 A1 */	bl VFipf_strcpy
/* 814BD484 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BD488 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD48C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD490 | 40 82 00 10 */	bne .L_814BD4A0
/* 814BD494 | 38 7E 06 4C */	addi r3, r30, 0x64c
/* 814BD498 | 38 9E 02 2D */	addi r4, r30, 0x22d
/* 814BD49C | 48 00 E2 6D */	bl VFiPFPATH_transformInUnicode
.L_814BD4A0:
/* 814BD4A0 | A0 01 02 B0 */	lhz r0, 0x2b0(r1)
/* 814BD4A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BD4A8 | 40 82 00 2C */	bne .L_814BD4D4
/* 814BD4AC | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BD4B0 | 38 60 00 00 */	li r3, 0x0
/* 814BD4B4 | 98 7E 00 19 */	stb r3, 0x19(r30)
/* 814BD4B8 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD4BC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD4C0 | 98 7E 00 1A */	stb r3, 0x1a(r30)
/* 814BD4C4 | 98 7E 02 3A */	stb r3, 0x23a(r30)
/* 814BD4C8 | 40 82 00 88 */	bne .L_814BD550
/* 814BD4CC | B0 7E 06 66 */	sth r3, 0x666(r30)
/* 814BD4D0 | 48 00 00 80 */	b .L_814BD550
.L_814BD4D4:
/* 814BD4D4 | 38 00 00 01 */	li r0, 0x1
/* 814BD4D8 | 3F A0 81 0D */	lis r29, VFipf_vol_set_810CD7F0@ha
/* 814BD4DC | 98 1E 00 19 */	stb r0, 0x19(r30)
/* 814BD4E0 | 3B BD D7 F0 */	addi r29, r29, VFipf_vol_set_810CD7F0@l
/* 814BD4E4 | 88 01 04 BC */	lbz r0, 0x4bc(r1)
/* 814BD4E8 | 98 1E 00 1A */	stb r0, 0x1a(r30)
/* 814BD4EC | 80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 814BD4F0 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 814BD4F4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD4F8 | 40 82 00 30 */	bne .L_814BD528
/* 814BD4FC | 54 60 00 3A */	clrrwi r0, r3, 2
/* 814BD500 | 38 7E 02 3A */	addi r3, r30, 0x23a
/* 814BD504 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814BD508 | 38 81 02 B0 */	addi r4, r1, 0x2b0
/* 814BD50C | 90 1D 00 3C */	stw r0, 0x3c(r29)
/* 814BD510 | 48 00 E0 CD */	bl VFiPFPATH_transformFromUnicodeToNormal
/* 814BD514 | 80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 814BD518 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 814BD51C | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BD520 | 90 1D 00 3C */	stw r0, 0x3c(r29)
/* 814BD524 | 48 00 00 10 */	b .L_814BD534
.L_814BD528:
/* 814BD528 | 38 7E 02 3A */	addi r3, r30, 0x23a
/* 814BD52C | 38 81 02 B0 */	addi r4, r1, 0x2b0
/* 814BD530 | 48 00 E0 AD */	bl VFiPFPATH_transformFromUnicodeToNormal
.L_814BD534:
/* 814BD534 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BD538 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD53C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD540 | 40 82 00 10 */	bne .L_814BD550
/* 814BD544 | 38 7E 06 66 */	addi r3, r30, 0x666
/* 814BD548 | 38 81 02 B0 */	addi r4, r1, 0x2b0
/* 814BD54C | 4B FF 8C 09 */	bl VFipf_w_strcpy
.L_814BD550:
/* 814BD550 | 7F E3 FB 78 */	mr r3, r31
.L_814BD554:
/* 814BD554 | 80 01 05 04 */	lwz r0, 0x504(r1)
/* 814BD558 | 83 E1 04 FC */	lwz r31, 0x4fc(r1)
/* 814BD55C | 83 C1 04 F8 */	lwz r30, 0x4f8(r1)
/* 814BD560 | 83 A1 04 F4 */	lwz r29, 0x4f4(r1)
/* 814BD564 | 7C 08 03 A6 */	mtlr r0
/* 814BD568 | 38 21 05 00 */	addi r1, r1, 0x500
/* 814BD56C | 4E 80 00 20 */	blr
.endfn VFiPFDIR_p_mkdir

# .text:0x69C | 0x814BD570 | size: 0x274
.fn VFiPFDIR_p_chdir, global
/* 814BD570 | 94 21 FD B0 */	stwu r1, -0x250(r1)
/* 814BD574 | 7C 08 02 A6 */	mflr r0
/* 814BD578 | 38 A0 00 01 */	li r5, 0x1
/* 814BD57C | 38 C0 00 00 */	li r6, 0x0
/* 814BD580 | 90 01 02 54 */	stw r0, 0x254(r1)
/* 814BD584 | 38 E0 00 01 */	li r7, 0x1
/* 814BD588 | 93 E1 02 4C */	stw r31, 0x24c(r1)
/* 814BD58C | 7C 9F 23 78 */	mr r31, r4
/* 814BD590 | 38 8D 9C A8 */	li r4, lbl_81697CE8@sda21
/* 814BD594 | 93 C1 02 48 */	stw r30, 0x248(r1)
/* 814BD598 | 7C 7E 1B 78 */	mr r30, r3
/* 814BD59C | 7F E3 FB 78 */	mr r3, r31
/* 814BD5A0 | 4B FF 89 A9 */	bl VFiPFSTR_StrNCmp
/* 814BD5A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD5A8 | 41 82 00 24 */	beq .L_814BD5CC
/* 814BD5AC | 7F E3 FB 78 */	mr r3, r31
/* 814BD5B0 | 38 8D 9C AC */	li r4, lbl_81697CEC@sda21
/* 814BD5B4 | 38 A0 00 01 */	li r5, 0x1
/* 814BD5B8 | 38 C0 00 00 */	li r6, 0x0
/* 814BD5BC | 38 E0 00 01 */	li r7, 0x1
/* 814BD5C0 | 4B FF 89 89 */	bl VFiPFSTR_StrNCmp
/* 814BD5C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD5C8 | 40 82 00 5C */	bne .L_814BD624
.L_814BD5CC:
/* 814BD5CC | 7F E3 FB 78 */	mr r3, r31
/* 814BD5D0 | 38 8D 9C B0 */	li r4, lbl_81697CF0@sda21
/* 814BD5D4 | 38 A0 00 01 */	li r5, 0x1
/* 814BD5D8 | 38 C0 00 01 */	li r6, 0x1
/* 814BD5DC | 38 E0 00 01 */	li r7, 0x1
/* 814BD5E0 | 4B FF 89 69 */	bl VFiPFSTR_StrNCmp
/* 814BD5E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD5E8 | 40 82 00 3C */	bne .L_814BD624
/* 814BD5EC | 7F C3 F3 78 */	mr r3, r30
/* 814BD5F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BD5F4 | 48 00 19 AD */	bl VFiPFENT_GetRootDir
/* 814BD5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD5FC | 41 82 00 08 */	beq .L_814BD604
/* 814BD600 | 48 00 01 CC */	b .L_814BD7CC
.L_814BD604:
/* 814BD604 | 7F C3 F3 78 */	mr r3, r30
/* 814BD608 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BD60C | 48 01 03 C9 */	bl VFiPFVOL_SetCurrentDir
/* 814BD610 | 7C 03 00 D0 */	neg r0, r3
/* 814BD614 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BD618 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BD61C | 7C 63 00 38 */	and r3, r3, r0
/* 814BD620 | 48 00 01 AC */	b .L_814BD7CC
.L_814BD624:
/* 814BD624 | 7F E3 FB 78 */	mr r3, r31
/* 814BD628 | 38 80 00 01 */	li r4, 0x1
/* 814BD62C | 4B FF 87 99 */	bl VFiPFSTR_StrNumChar
/* 814BD630 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814BD634 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD638 | 40 82 00 2C */	bne .L_814BD664
/* 814BD63C | 7F E3 FB 78 */	mr r3, r31
/* 814BD640 | 38 8D 9C B4 */	li r4, lbl_81697CF4@sda21
/* 814BD644 | 38 A0 00 01 */	li r5, 0x1
/* 814BD648 | 38 C0 00 01 */	li r6, 0x1
/* 814BD64C | 38 E0 00 01 */	li r7, 0x1
/* 814BD650 | 4B FF 88 F9 */	bl VFiPFSTR_StrNCmp
/* 814BD654 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD658 | 40 82 00 0C */	bne .L_814BD664
/* 814BD65C | 38 60 00 00 */	li r3, 0x0
/* 814BD660 | 48 00 01 6C */	b .L_814BD7CC
.L_814BD664:
/* 814BD664 | 7F E3 FB 78 */	mr r3, r31
/* 814BD668 | 38 80 00 01 */	li r4, 0x1
/* 814BD66C | 4B FF 87 59 */	bl VFiPFSTR_StrNumChar
/* 814BD670 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814BD674 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814BD678 | 40 82 00 9C */	bne .L_814BD714
/* 814BD67C | 7F E3 FB 78 */	mr r3, r31
/* 814BD680 | 38 8D 9C B4 */	li r4, lbl_81697CF4@sda21
/* 814BD684 | 38 A0 00 01 */	li r5, 0x1
/* 814BD688 | 38 C0 00 01 */	li r6, 0x1
/* 814BD68C | 38 E0 00 01 */	li r7, 0x1
/* 814BD690 | 4B FF 88 B9 */	bl VFiPFSTR_StrNCmp
/* 814BD694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD698 | 40 82 00 7C */	bne .L_814BD714
/* 814BD69C | 7F E3 FB 78 */	mr r3, r31
/* 814BD6A0 | 38 8D 9C A8 */	li r4, lbl_81697CE8@sda21
/* 814BD6A4 | 38 A0 00 01 */	li r5, 0x1
/* 814BD6A8 | 38 C0 00 02 */	li r6, 0x2
/* 814BD6AC | 38 E0 00 01 */	li r7, 0x1
/* 814BD6B0 | 4B FF 88 99 */	bl VFiPFSTR_StrNCmp
/* 814BD6B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD6B8 | 41 82 00 24 */	beq .L_814BD6DC
/* 814BD6BC | 7F E3 FB 78 */	mr r3, r31
/* 814BD6C0 | 38 8D 9C AC */	li r4, lbl_81697CEC@sda21
/* 814BD6C4 | 38 A0 00 01 */	li r5, 0x1
/* 814BD6C8 | 38 C0 00 02 */	li r6, 0x2
/* 814BD6CC | 38 E0 00 01 */	li r7, 0x1
/* 814BD6D0 | 4B FF 88 79 */	bl VFiPFSTR_StrNCmp
/* 814BD6D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD6D8 | 40 82 00 3C */	bne .L_814BD714
.L_814BD6DC:
/* 814BD6DC | 7F C3 F3 78 */	mr r3, r30
/* 814BD6E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BD6E4 | 48 00 18 BD */	bl VFiPFENT_GetRootDir
/* 814BD6E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD6EC | 41 82 00 08 */	beq .L_814BD6F4
/* 814BD6F0 | 48 00 00 DC */	b .L_814BD7CC
.L_814BD6F4:
/* 814BD6F4 | 7F C3 F3 78 */	mr r3, r30
/* 814BD6F8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BD6FC | 48 01 02 D9 */	bl VFiPFVOL_SetCurrentDir
/* 814BD700 | 7C 03 00 D0 */	neg r0, r3
/* 814BD704 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BD708 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BD70C | 7C 63 00 38 */	and r3, r3, r0
/* 814BD710 | 48 00 00 BC */	b .L_814BD7CC
.L_814BD714:
/* 814BD714 | 7F E3 FB 78 */	mr r3, r31
/* 814BD718 | 38 8D 9C B4 */	li r4, lbl_81697CF4@sda21
/* 814BD71C | 38 A0 00 01 */	li r5, 0x1
/* 814BD720 | 38 C0 00 01 */	li r6, 0x1
/* 814BD724 | 38 E0 00 01 */	li r7, 0x1
/* 814BD728 | 4B FF 88 21 */	bl VFiPFSTR_StrNCmp
/* 814BD72C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD730 | 40 82 00 50 */	bne .L_814BD780
/* 814BD734 | 7F E3 FB 78 */	mr r3, r31
/* 814BD738 | 38 8D 9C A8 */	li r4, lbl_81697CE8@sda21
/* 814BD73C | 38 A0 00 01 */	li r5, 0x1
/* 814BD740 | 38 C0 00 02 */	li r6, 0x2
/* 814BD744 | 38 E0 00 01 */	li r7, 0x1
/* 814BD748 | 4B FF 88 01 */	bl VFiPFSTR_StrNCmp
/* 814BD74C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD750 | 41 82 00 24 */	beq .L_814BD774
/* 814BD754 | 7F E3 FB 78 */	mr r3, r31
/* 814BD758 | 38 8D 9C AC */	li r4, lbl_81697CEC@sda21
/* 814BD75C | 38 A0 00 01 */	li r5, 0x1
/* 814BD760 | 38 C0 00 02 */	li r6, 0x2
/* 814BD764 | 38 E0 00 01 */	li r7, 0x1
/* 814BD768 | 4B FF 87 E1 */	bl VFiPFSTR_StrNCmp
/* 814BD76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD770 | 40 82 00 10 */	bne .L_814BD780
.L_814BD774:
/* 814BD774 | 7F E3 FB 78 */	mr r3, r31
/* 814BD778 | 38 80 00 02 */	li r4, 0x2
/* 814BD77C | 4B FF 84 A9 */	bl VFiPFSTR_MoveStrPos
.L_814BD780:
/* 814BD780 | 7F C4 F3 78 */	mr r4, r30
/* 814BD784 | 7F E5 FB 78 */	mr r5, r31
/* 814BD788 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BD78C | 48 00 14 E1 */	bl VFiPFENT_GetEntryOfPath
/* 814BD790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD794 | 41 82 00 08 */	beq .L_814BD79C
/* 814BD798 | 48 00 00 34 */	b .L_814BD7CC
.L_814BD79C:
/* 814BD79C | 88 01 02 24 */	lbz r0, 0x224(r1)
/* 814BD7A0 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814BD7A4 | 40 82 00 0C */	bne .L_814BD7B0
/* 814BD7A8 | 38 60 00 14 */	li r3, 0x14
/* 814BD7AC | 48 00 00 20 */	b .L_814BD7CC
.L_814BD7B0:
/* 814BD7B0 | 7F C3 F3 78 */	mr r3, r30
/* 814BD7B4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BD7B8 | 48 01 02 1D */	bl VFiPFVOL_SetCurrentDir
/* 814BD7BC | 7C 03 00 D0 */	neg r0, r3
/* 814BD7C0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BD7C4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BD7C8 | 7C 63 00 38 */	and r3, r3, r0
.L_814BD7CC:
/* 814BD7CC | 80 01 02 54 */	lwz r0, 0x254(r1)
/* 814BD7D0 | 83 E1 02 4C */	lwz r31, 0x24c(r1)
/* 814BD7D4 | 83 C1 02 48 */	lwz r30, 0x248(r1)
/* 814BD7D8 | 7C 08 03 A6 */	mtlr r0
/* 814BD7DC | 38 21 02 50 */	addi r1, r1, 0x250
/* 814BD7E0 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_p_chdir

# .text:0x910 | 0x814BD7E4 | size: 0x35C
.fn VFiPFDIR_p_fsnext, global
/* 814BD7E4 | 94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 814BD7E8 | 7C 08 02 A6 */	mflr r0
/* 814BD7EC | 90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 814BD7F0 | 38 00 00 00 */	li r0, 0x0
/* 814BD7F4 | 93 E1 02 9C */	stw r31, 0x29c(r1)
/* 814BD7F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814BD7FC | 93 C1 02 98 */	stw r30, 0x298(r1)
/* 814BD800 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814BD804 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814BD808 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814BD80C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BD810 | 40 82 00 18 */	bne .L_814BD828
/* 814BD814 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BD818 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 814BD81C | 38 A0 00 01 */	li r5, 0x1
/* 814BD820 | 4B FF 84 E5 */	bl VFiPFSTR_InitStr
/* 814BD824 | 48 00 00 14 */	b .L_814BD838
.L_814BD828:
/* 814BD828 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BD82C | 38 9F 04 44 */	addi r4, r31, 0x444
/* 814BD830 | 38 A0 00 02 */	li r5, 0x2
/* 814BD834 | 4B FF 84 D1 */	bl VFiPFSTR_InitStr
.L_814BD838:
/* 814BD838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD83C | 41 82 00 88 */	beq .L_814BD8C4
/* 814BD840 | 48 00 02 E8 */	b .L_814BDB28
.L_814BD844:
/* 814BD844 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814BD848 | 7C 03 00 40 */	cmplw r3, r0
/* 814BD84C | 41 80 00 0C */	blt .L_814BD858
/* 814BD850 | 38 60 00 0A */	li r3, 0xa
/* 814BD854 | 48 00 02 D4 */	b .L_814BDB28
.L_814BD858:
/* 814BD858 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814BD85C | 38 61 00 24 */	addi r3, r1, 0x24
/* 814BD860 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BD864 | 38 C1 02 8C */	addi r6, r1, 0x28c
/* 814BD868 | 90 01 02 8C */	stw r0, 0x28c(r1)
/* 814BD86C | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 814BD870 | 48 00 76 FD */	bl VFiPFFAT_InitFFD
/* 814BD874 | 80 BF 00 10 */	lwz r5, 0x10(r31)
/* 814BD878 | 38 61 00 24 */	addi r3, r1, 0x24
/* 814BD87C | 88 FF 00 1B */	lbz r7, 0x1b(r31)
/* 814BD880 | 38 81 00 58 */	addi r4, r1, 0x58
/* 814BD884 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 814BD888 | 39 21 00 08 */	addi r9, r1, 0x8
/* 814BD88C | 39 00 00 00 */	li r8, 0x0
/* 814BD890 | 48 00 15 15 */	bl VFiPFENT_findEntry
/* 814BD894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BD898 | 41 82 00 08 */	beq .L_814BD8A0
/* 814BD89C | 48 00 02 8C */	b .L_814BDB28
.L_814BD8A0:
/* 814BD8A0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814BD8A4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814BD8A8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814BD8AC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814BD8B0 | 3C 03 FF F1 */	subis r0, r3, 0xf
/* 814BD8B4 | 28 00 42 3F */	cmplwi r0, 0x423f
/* 814BD8B8 | 40 82 00 20 */	bne .L_814BD8D8
/* 814BD8BC | 38 60 00 03 */	li r3, 0x3
/* 814BD8C0 | 48 00 02 68 */	b .L_814BDB28
.L_814BD8C4:
/* 814BD8C4 | 3C 60 00 0F */	lis r3, 0xf
/* 814BD8C8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814BD8CC | 38 03 42 3F */	addi r0, r3, 0x423f
/* 814BD8D0 | 7C 04 00 40 */	cmplw r4, r0
/* 814BD8D4 | 41 80 FF 70 */	blt .L_814BD844
.L_814BD8D8:
/* 814BD8D8 | 38 7F 02 2D */	addi r3, r31, 0x22d
/* 814BD8DC | 38 81 02 66 */	addi r4, r1, 0x266
/* 814BD8E0 | 4B FF 81 41 */	bl VFipf_strcpy
/* 814BD8E4 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814BD8E8 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD8EC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD8F0 | 40 82 00 10 */	bne .L_814BD900
/* 814BD8F4 | 38 7F 06 4C */	addi r3, r31, 0x64c
/* 814BD8F8 | 38 9F 02 2D */	addi r4, r31, 0x22d
/* 814BD8FC | 48 00 DE 0D */	bl VFiPFPATH_transformInUnicode
.L_814BD900:
/* 814BD900 | A0 01 00 58 */	lhz r0, 0x58(r1)
/* 814BD904 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BD908 | 41 82 00 74 */	beq .L_814BD97C
/* 814BD90C | 3F C0 81 0D */	lis r30, VFipf_vol_set_810CD7F0@ha
/* 814BD910 | 3B DE D7 F0 */	addi r30, r30, VFipf_vol_set_810CD7F0@l
/* 814BD914 | 80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 814BD918 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 814BD91C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD920 | 40 82 00 30 */	bne .L_814BD950
/* 814BD924 | 54 60 00 3A */	clrrwi r0, r3, 2
/* 814BD928 | 38 7F 02 3A */	addi r3, r31, 0x23a
/* 814BD92C | 60 00 00 01 */	ori r0, r0, 0x1
/* 814BD930 | 38 81 00 58 */	addi r4, r1, 0x58
/* 814BD934 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 814BD938 | 48 00 DC A5 */	bl VFiPFPATH_transformFromUnicodeToNormal
/* 814BD93C | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 814BD940 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 814BD944 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BD948 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 814BD94C | 48 00 00 10 */	b .L_814BD95C
.L_814BD950:
/* 814BD950 | 38 7F 02 3A */	addi r3, r31, 0x23a
/* 814BD954 | 38 81 00 58 */	addi r4, r1, 0x58
/* 814BD958 | 48 00 DC 85 */	bl VFiPFPATH_transformFromUnicodeToNormal
.L_814BD95C:
/* 814BD95C | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814BD960 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD964 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD968 | 40 82 00 30 */	bne .L_814BD998
/* 814BD96C | 38 7F 06 66 */	addi r3, r31, 0x666
/* 814BD970 | 38 81 00 58 */	addi r4, r1, 0x58
/* 814BD974 | 4B FF 87 E1 */	bl VFipf_w_strcpy
/* 814BD978 | 48 00 00 20 */	b .L_814BD998
.L_814BD97C:
/* 814BD97C | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814BD980 | 38 60 00 00 */	li r3, 0x0
/* 814BD984 | 98 7F 02 3A */	stb r3, 0x23a(r31)
/* 814BD988 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BD98C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BD990 | 40 82 00 08 */	bne .L_814BD998
/* 814BD994 | B0 7F 06 66 */	sth r3, 0x666(r31)
.L_814BD998:
/* 814BD998 | 88 01 02 74 */	lbz r0, 0x274(r1)
/* 814BD99C | 38 80 00 00 */	li r4, 0x0
/* 814BD9A0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814BD9A4 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814BD9A8 | 41 82 00 EC */	beq .L_814BDA94
/* 814BD9AC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814BD9B0 | 80 03 15 CC */	lwz r0, 0x15cc(r3)
/* 814BD9B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BD9B8 | 41 82 00 DC */	beq .L_814BDA94
/* 814BD9BC | 80 E1 02 84 */	lwz r7, 0x284(r1)
/* 814BD9C0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814BD9C4 | 80 A1 02 90 */	lwz r5, 0x290(r1)
/* 814BD9C8 | 38 87 0E 3C */	addi r4, r7, 0xe3c
/* 814BD9CC | 81 07 0E 00 */	lwz r8, 0xe00(r7)
/* 814BD9D0 | A0 C1 02 94 */	lhz r6, 0x294(r1)
/* 814BD9D4 | 55 00 07 FF */	clrlwi. r0, r8, 31
/* 814BD9D8 | 41 82 00 34 */	beq .L_814BDA0C
/* 814BD9DC | 55 00 07 BD */	rlwinm. r0, r8, 0, 30, 30
/* 814BD9E0 | 41 82 00 2C */	beq .L_814BDA0C
/* 814BD9E4 | 80 07 10 68 */	lwz r0, 0x1068(r7)
/* 814BD9E8 | 7C 07 00 40 */	cmplw r7, r0
/* 814BD9EC | 40 82 00 20 */	bne .L_814BDA0C
/* 814BD9F0 | 80 07 10 74 */	lwz r0, 0x1074(r7)
/* 814BD9F4 | 7C 05 00 40 */	cmplw r5, r0
/* 814BD9F8 | 40 82 00 14 */	bne .L_814BDA0C
/* 814BD9FC | A0 07 10 78 */	lhz r0, 0x1078(r7)
/* 814BDA00 | 7C 06 00 40 */	cmplw r6, r0
/* 814BDA04 | 40 82 00 08 */	bne .L_814BDA0C
/* 814BDA08 | 90 81 00 0C */	stw r4, 0xc(r1)
.L_814BDA0C:
/* 814BDA0C | 81 07 10 7C */	lwz r8, 0x107c(r7)
/* 814BDA10 | 38 84 02 7C */	addi r4, r4, 0x27c
/* 814BDA14 | 55 00 07 FF */	clrlwi. r0, r8, 31
/* 814BDA18 | 41 82 00 34 */	beq .L_814BDA4C
/* 814BDA1C | 55 00 07 BD */	rlwinm. r0, r8, 0, 30, 30
/* 814BDA20 | 41 82 00 2C */	beq .L_814BDA4C
/* 814BDA24 | 80 07 12 E4 */	lwz r0, 0x12e4(r7)
/* 814BDA28 | 7C 07 00 40 */	cmplw r7, r0
/* 814BDA2C | 40 82 00 20 */	bne .L_814BDA4C
/* 814BDA30 | 80 07 12 F0 */	lwz r0, 0x12f0(r7)
/* 814BDA34 | 7C 05 00 40 */	cmplw r5, r0
/* 814BDA38 | 40 82 00 14 */	bne .L_814BDA4C
/* 814BDA3C | A0 07 12 F4 */	lhz r0, 0x12f4(r7)
/* 814BDA40 | 7C 06 00 40 */	cmplw r6, r0
/* 814BDA44 | 40 82 00 08 */	bne .L_814BDA4C
/* 814BDA48 | 90 81 00 0C */	stw r4, 0xc(r1)
.L_814BDA4C:
/* 814BDA4C | 81 07 12 F8 */	lwz r8, 0x12f8(r7)
/* 814BDA50 | 38 67 04 F8 */	addi r3, r7, 0x4f8
/* 814BDA54 | 38 84 02 7C */	addi r4, r4, 0x27c
/* 814BDA58 | 55 00 07 FF */	clrlwi. r0, r8, 31
/* 814BDA5C | 41 82 00 54 */	beq .L_814BDAB0
/* 814BDA60 | 55 00 07 BD */	rlwinm. r0, r8, 0, 30, 30
/* 814BDA64 | 41 82 00 4C */	beq .L_814BDAB0
/* 814BDA68 | 80 03 10 68 */	lwz r0, 0x1068(r3)
/* 814BDA6C | 7C 07 00 40 */	cmplw r7, r0
/* 814BDA70 | 40 82 00 40 */	bne .L_814BDAB0
/* 814BDA74 | 80 03 10 74 */	lwz r0, 0x1074(r3)
/* 814BDA78 | 7C 05 00 40 */	cmplw r5, r0
/* 814BDA7C | 40 82 00 34 */	bne .L_814BDAB0
/* 814BDA80 | A0 03 10 78 */	lhz r0, 0x1078(r3)
/* 814BDA84 | 7C 06 00 40 */	cmplw r6, r0
/* 814BDA88 | 40 82 00 28 */	bne .L_814BDAB0
/* 814BDA8C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814BDA90 | 48 00 00 20 */	b .L_814BDAB0
.L_814BDA94:
/* 814BDA94 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814BDA98 | 80 03 15 C8 */	lwz r0, 0x15c8(r3)
/* 814BDA9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BDAA0 | 41 82 00 10 */	beq .L_814BDAB0
/* 814BDAA4 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814BDAA8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814BDAAC | 48 00 B0 F1 */	bl VFiPFFILE_GetOpenedFile
.L_814BDAB0:
/* 814BDAB0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814BDAB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDAB8 | 40 82 00 0C */	bne .L_814BDAC4
/* 814BDABC | 38 61 00 58 */	addi r3, r1, 0x58
/* 814BDAC0 | 90 61 00 0C */	stw r3, 0xc(r1)
.L_814BDAC4:
/* 814BDAC4 | 80 03 02 28 */	lwz r0, 0x228(r3)
/* 814BDAC8 | 90 1F 02 28 */	stw r0, 0x228(r31)
/* 814BDACC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814BDAD0 | A0 03 02 24 */	lhz r0, 0x224(r3)
/* 814BDAD4 | B0 1F 02 24 */	sth r0, 0x224(r31)
/* 814BDAD8 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814BDADC | A0 03 02 26 */	lhz r0, 0x226(r3)
/* 814BDAE0 | B0 1F 02 26 */	sth r0, 0x226(r31)
/* 814BDAE4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814BDAE8 | 88 03 02 1C */	lbz r0, 0x21c(r3)
/* 814BDAEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BDAF0 | 98 1F 02 2C */	stb r0, 0x22c(r31)
/* 814BDAF4 | 40 82 00 0C */	bne .L_814BDB00
/* 814BDAF8 | 38 00 00 40 */	li r0, 0x40
/* 814BDAFC | 98 1F 02 2C */	stb r0, 0x22c(r31)
.L_814BDB00:
/* 814BDB00 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BDB04 | 38 60 00 00 */	li r3, 0x0
/* 814BDB08 | 88 04 02 0A */	lbz r0, 0x20a(r4)
/* 814BDB0C | 98 1F 00 18 */	stb r0, 0x18(r31)
/* 814BDB10 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BDB14 | 88 04 02 0B */	lbz r0, 0x20b(r4)
/* 814BDB18 | 98 1F 00 19 */	stb r0, 0x19(r31)
/* 814BDB1C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BDB20 | 88 04 02 0C */	lbz r0, 0x20c(r4)
/* 814BDB24 | 98 1F 00 1A */	stb r0, 0x1a(r31)
.L_814BDB28:
/* 814BDB28 | 80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 814BDB2C | 83 E1 02 9C */	lwz r31, 0x29c(r1)
/* 814BDB30 | 83 C1 02 98 */	lwz r30, 0x298(r1)
/* 814BDB34 | 7C 08 03 A6 */	mtlr r0
/* 814BDB38 | 38 21 02 A0 */	addi r1, r1, 0x2a0
/* 814BDB3C | 4E 80 00 20 */	blr
.endfn VFiPFDIR_p_fsnext

# .text:0xC6C | 0x814BDB40 | size: 0x104
.fn VFiPFDIR_p_fsfirst, global
/* 814BDB40 | 94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 814BDB44 | 7C 08 02 A6 */	mflr r0
/* 814BDB48 | 90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 814BDB4C | 93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 814BDB50 | 7C DF 33 78 */	mr r31, r6
/* 814BDB54 | 93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 814BDB58 | 7C BE 2B 78 */	mr r30, r5
/* 814BDB5C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BDB60 | 93 A1 02 D4 */	stw r29, 0x2d4(r1)
/* 814BDB64 | 7C 7D 1B 78 */	mr r29, r3
/* 814BDB68 | 7C 83 23 78 */	mr r3, r4
/* 814BDB6C | 38 81 00 14 */	addi r4, r1, 0x14
/* 814BDB70 | 48 00 D3 35 */	bl VFiPFPATH_SplitPathPattern
/* 814BDB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDB78 | 41 82 00 08 */	beq .L_814BDB80
/* 814BDB7C | 48 00 00 AC */	b .L_814BDC28
.L_814BDB80:
/* 814BDB80 | 7F A5 EB 78 */	mr r5, r29
/* 814BDB84 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814BDB88 | 38 81 00 90 */	addi r4, r1, 0x90
/* 814BDB8C | 38 C1 00 14 */	addi r6, r1, 0x14
/* 814BDB90 | 48 00 40 F5 */	bl VFiPFENT_ITER_GetEntryOfPattern
/* 814BDB94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDB98 | 41 82 00 08 */	beq .L_814BDBA0
/* 814BDB9C | 48 00 00 8C */	b .L_814BDC28
.L_814BDBA0:
/* 814BDBA0 | 88 01 02 AC */	lbz r0, 0x2ac(r1)
/* 814BDBA4 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814BDBA8 | 40 82 00 0C */	bne .L_814BDBB4
/* 814BDBAC | 38 60 00 14 */	li r3, 0x14
/* 814BDBB0 | 48 00 00 78 */	b .L_814BDC28
.L_814BDBB4:
/* 814BDBB4 | 80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 814BDBB8 | 38 80 00 00 */	li r4, 0x0
/* 814BDBBC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BDBC0 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814BDBC4 | 90 9F 00 10 */	stw r4, 0x10(r31)
/* 814BDBC8 | 80 01 02 BC */	lwz r0, 0x2bc(r1)
/* 814BDBCC | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814BDBD0 | 9B DF 00 1B */	stb r30, 0x1b(r31)
/* 814BDBD4 | 90 9F 00 14 */	stw r4, 0x14(r31)
/* 814BDBD8 | 4B FF 80 2D */	bl VFiPFSTR_GetCodeMode
/* 814BDBDC | 28 03 00 01 */	cmplwi r3, 0x1
/* 814BDBE0 | 40 82 00 24 */	bne .L_814BDC04
/* 814BDBE4 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 814BDBE8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BDBEC | 38 80 00 00 */	li r4, 0x0
/* 814BDBF0 | 48 00 E5 05 */	bl VFiPFPATH_SetSearchPattern
/* 814BDBF4 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814BDBF8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814BDBFC | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 814BDC00 | 48 00 00 20 */	b .L_814BDC20
.L_814BDC04:
/* 814BDC04 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 814BDC08 | 38 9F 04 44 */	addi r4, r31, 0x444
/* 814BDC0C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BDC10 | 48 00 E4 E5 */	bl VFiPFPATH_SetSearchPattern
/* 814BDC14 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814BDC18 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814BDC1C | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_814BDC20:
/* 814BDC20 | 7F E3 FB 78 */	mr r3, r31
/* 814BDC24 | 4B FF FB C1 */	bl VFiPFDIR_p_fsnext
.L_814BDC28:
/* 814BDC28 | 80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 814BDC2C | 83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 814BDC30 | 83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 814BDC34 | 83 A1 02 D4 */	lwz r29, 0x2d4(r1)
/* 814BDC38 | 7C 08 03 A6 */	mtlr r0
/* 814BDC3C | 38 21 02 E0 */	addi r1, r1, 0x2e0
/* 814BDC40 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_p_fsfirst

# .text:0xD70 | 0x814BDC44 | size: 0x8C
.fn VFiPFDIR_FinalizeAllDirs, global
/* 814BDC44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BDC48 | 7C 08 02 A6 */	mflr r0
/* 814BDC4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BDC50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BDC54 | 3B E0 00 00 */	li r31, 0x0
/* 814BDC58 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BDC5C | 7C 7E 1B 78 */	mr r30, r3
.L_814BDC60:
/* 814BDC60 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814BDC64 | 1C 00 02 7C */	mulli r0, r0, 0x27c
/* 814BDC68 | 7C 9E 02 14 */	add r4, r30, r0
/* 814BDC6C | 80 04 0E 00 */	lwz r0, 0xe00(r4)
/* 814BDC70 | 38 64 0E 08 */	addi r3, r4, 0xe08
/* 814BDC74 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 814BDC78 | 90 04 0E 00 */	stw r0, 0xe00(r4)
/* 814BDC7C | 48 00 73 59 */	bl VFiPFFAT_FinalizeFFD
/* 814BDC80 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814BDC84 | 28 1F 00 03 */	cmplwi r31, 0x3
/* 814BDC88 | 41 80 FF D8 */	blt .L_814BDC60
/* 814BDC8C | 80 BE 15 74 */	lwz r5, 0x1574(r30)
/* 814BDC90 | 38 00 00 00 */	li r0, 0x0
/* 814BDC94 | 80 9E 15 90 */	lwz r4, 0x1590(r30)
/* 814BDC98 | 80 7E 15 AC */	lwz r3, 0x15ac(r30)
/* 814BDC9C | 54 A5 00 3C */	clrrwi r5, r5, 1
/* 814BDCA0 | 54 84 00 3C */	clrrwi r4, r4, 1
/* 814BDCA4 | 90 BE 15 74 */	stw r5, 0x1574(r30)
/* 814BDCA8 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 814BDCAC | 90 9E 15 90 */	stw r4, 0x1590(r30)
/* 814BDCB0 | 90 7E 15 AC */	stw r3, 0x15ac(r30)
/* 814BDCB4 | 90 1E 15 CC */	stw r0, 0x15cc(r30)
/* 814BDCB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BDCBC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BDCC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BDCC4 | 7C 08 03 A6 */	mtlr r0
/* 814BDCC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BDCCC | 4E 80 00 20 */	blr
.endfn VFiPFDIR_FinalizeAllDirs

# .text:0xDFC | 0x814BDCD0 | size: 0x144
.fn VFiPFDIR_fsfirst, global
/* 814BDCD0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BDCD4 | 7C 08 02 A6 */	mflr r0
/* 814BDCD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDCDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BDCE0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BDCE4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BDCE8 | 7C BE 2B 78 */	mr r30, r5
/* 814BDCEC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BDCF0 | 7C 9D 23 78 */	mr r29, r4
/* 814BDCF4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BDCF8 | 7C 7C 1B 78 */	mr r28, r3
/* 814BDCFC | 40 82 00 1C */	bne .L_814BDD18
/* 814BDD00 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDD04 | 38 00 00 0A */	li r0, 0xa
/* 814BDD08 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDD0C | 38 60 00 0A */	li r3, 0xa
/* 814BDD10 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDD14 | 48 00 00 E0 */	b .L_814BDDF4
.L_814BDD18:
/* 814BDD18 | 48 00 D1 95 */	bl VFiPFPATH_GetVolumeFromPath
/* 814BDD1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDD20 | 7C 7F 1B 78 */	mr r31, r3
/* 814BDD24 | 40 82 00 1C */	bne .L_814BDD40
/* 814BDD28 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDD2C | 38 00 00 09 */	li r0, 0x9
/* 814BDD30 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDD34 | 38 60 00 09 */	li r3, 0x9
/* 814BDD38 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDD3C | 48 00 00 B8 */	b .L_814BDDF4
.L_814BDD40:
/* 814BDD40 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BDD44 | 40 82 00 20 */	bne .L_814BDD64
/* 814BDD48 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDD4C | 38 00 00 0A */	li r0, 0xa
/* 814BDD50 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDD54 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDD58 | 90 03 18 54 */	stw r0, 0x1854(r3)
/* 814BDD5C | 38 60 00 0A */	li r3, 0xa
/* 814BDD60 | 48 00 00 94 */	b .L_814BDDF4
.L_814BDD64:
/* 814BDD64 | 28 1D 00 7F */	cmplwi r29, 0x7f
/* 814BDD68 | 41 82 00 34 */	beq .L_814BDD9C
/* 814BDD6C | 57 A0 00 2F */	clrrwi. r0, r29, 8
/* 814BDD70 | 40 82 00 10 */	bne .L_814BDD80
/* 814BDD74 | 57 A0 06 F8 */	rlwinm r0, r29, 0, 27, 28
/* 814BDD78 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 814BDD7C | 40 82 00 20 */	bne .L_814BDD9C
.L_814BDD80:
/* 814BDD80 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDD84 | 38 00 00 0A */	li r0, 0xa
/* 814BDD88 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDD8C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDD90 | 90 03 18 54 */	stw r0, 0x1854(r3)
/* 814BDD94 | 38 60 00 0A */	li r3, 0xa
/* 814BDD98 | 48 00 00 5C */	b .L_814BDDF4
.L_814BDD9C:
/* 814BDD9C | 7F E3 FB 78 */	mr r3, r31
/* 814BDDA0 | 48 00 F8 59 */	bl VFiPFVOL_CheckForRead
/* 814BDDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDDA8 | 41 82 00 18 */	beq .L_814BDDC0
/* 814BDDAC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDDB0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDDB4 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BDDB8 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BDDBC | 48 00 00 38 */	b .L_814BDDF4
.L_814BDDC0:
/* 814BDDC0 | 7F E3 FB 78 */	mr r3, r31
/* 814BDDC4 | 7F 84 E3 78 */	mr r4, r28
/* 814BDDC8 | 7F A5 EB 78 */	mr r5, r29
/* 814BDDCC | 7F C6 F3 78 */	mr r6, r30
/* 814BDDD0 | 4B FF FD 71 */	bl VFiPFDIR_p_fsfirst
/* 814BDDD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDDD8 | 41 82 00 1C */	beq .L_814BDDF4
/* 814BDDDC | 38 00 00 00 */	li r0, 0x0
/* 814BDDE0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDDE4 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 814BDDE8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDDEC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BDDF0 | 90 7F 18 54 */	stw r3, 0x1854(r31)
.L_814BDDF4:
/* 814BDDF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BDDF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BDDFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BDE00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BDE04 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BDE08 | 7C 08 03 A6 */	mtlr r0
/* 814BDE0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BDE10 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_fsfirst

# .text:0xF40 | 0x814BDE14 | size: 0xB8
.fn VFiPFDIR_fsnext, global
/* 814BDE14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BDE18 | 7C 08 02 A6 */	mflr r0
/* 814BDE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDE20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BDE24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BDE28 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BDE2C | 7C 7E 1B 78 */	mr r30, r3
/* 814BDE30 | 40 82 00 1C */	bne .L_814BDE4C
/* 814BDE34 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDE38 | 38 00 00 0A */	li r0, 0xa
/* 814BDE3C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDE40 | 38 60 00 0A */	li r3, 0xa
/* 814BDE44 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDE48 | 48 00 00 6C */	b .L_814BDEB4
.L_814BDE4C:
/* 814BDE4C | 83 E3 00 08 */	lwz r31, 0x8(r3)
/* 814BDE50 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BDE54 | 40 82 00 1C */	bne .L_814BDE70
/* 814BDE58 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDE5C | 38 00 00 0A */	li r0, 0xa
/* 814BDE60 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDE64 | 38 60 00 0A */	li r3, 0xa
/* 814BDE68 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDE6C | 48 00 00 48 */	b .L_814BDEB4
.L_814BDE70:
/* 814BDE70 | 7F E3 FB 78 */	mr r3, r31
/* 814BDE74 | 48 00 F7 85 */	bl VFiPFVOL_CheckForRead
/* 814BDE78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDE7C | 41 82 00 18 */	beq .L_814BDE94
/* 814BDE80 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDE84 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDE88 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BDE8C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BDE90 | 48 00 00 24 */	b .L_814BDEB4
.L_814BDE94:
/* 814BDE94 | 7F C3 F3 78 */	mr r3, r30
/* 814BDE98 | 4B FF F9 4D */	bl VFiPFDIR_p_fsnext
/* 814BDE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDEA0 | 41 82 00 14 */	beq .L_814BDEB4
/* 814BDEA4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDEA8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDEAC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BDEB0 | 90 7F 18 54 */	stw r3, 0x1854(r31)
.L_814BDEB4:
/* 814BDEB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BDEB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BDEBC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BDEC0 | 7C 08 03 A6 */	mtlr r0
/* 814BDEC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BDEC8 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_fsnext

# .text:0xFF8 | 0x814BDECC | size: 0x1D0
.fn VFiPFDIR_rmdir, global
/* 814BDECC | 94 21 FD 40 */	stwu r1, -0x2c0(r1)
/* 814BDED0 | 7C 08 02 A6 */	mflr r0
/* 814BDED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDED8 | 90 01 02 C4 */	stw r0, 0x2c4(r1)
/* 814BDEDC | 93 E1 02 BC */	stw r31, 0x2bc(r1)
/* 814BDEE0 | 93 C1 02 B8 */	stw r30, 0x2b8(r1)
/* 814BDEE4 | 7C 7E 1B 78 */	mr r30, r3
/* 814BDEE8 | 40 82 00 1C */	bne .L_814BDF04
/* 814BDEEC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDEF0 | 38 00 00 0A */	li r0, 0xa
/* 814BDEF4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDEF8 | 38 60 00 0A */	li r3, 0xa
/* 814BDEFC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDF00 | 48 00 01 84 */	b .L_814BE084
.L_814BDF04:
/* 814BDF04 | 38 8D 9C B0 */	li r4, lbl_81697CF0@sda21
/* 814BDF08 | 38 A0 00 01 */	li r5, 0x1
/* 814BDF0C | 38 C0 00 00 */	li r6, 0x0
/* 814BDF10 | 38 E0 00 01 */	li r7, 0x1
/* 814BDF14 | 4B FF 80 35 */	bl VFiPFSTR_StrNCmp
/* 814BDF18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDF1C | 40 82 00 1C */	bne .L_814BDF38
/* 814BDF20 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDF24 | 38 00 00 0A */	li r0, 0xa
/* 814BDF28 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDF2C | 38 60 00 0A */	li r3, 0xa
/* 814BDF30 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDF34 | 48 00 01 50 */	b .L_814BE084
.L_814BDF38:
/* 814BDF38 | 7F C3 F3 78 */	mr r3, r30
/* 814BDF3C | 48 00 CF 71 */	bl VFiPFPATH_GetVolumeFromPath
/* 814BDF40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDF44 | 7C 7F 1B 78 */	mr r31, r3
/* 814BDF48 | 40 82 00 1C */	bne .L_814BDF64
/* 814BDF4C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDF50 | 38 00 00 09 */	li r0, 0x9
/* 814BDF54 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDF58 | 38 60 00 09 */	li r3, 0x9
/* 814BDF5C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BDF60 | 48 00 01 24 */	b .L_814BE084
.L_814BDF64:
/* 814BDF64 | 48 00 F8 51 */	bl VFiPFVOL_CheckForWrite
/* 814BDF68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDF6C | 41 82 00 18 */	beq .L_814BDF84
/* 814BDF70 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BDF74 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BDF78 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BDF7C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BDF80 | 48 00 01 04 */	b .L_814BE084
.L_814BDF84:
/* 814BDF84 | 38 00 00 00 */	li r0, 0x0
/* 814BDF88 | 7F E5 FB 78 */	mr r5, r31
/* 814BDF8C | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
/* 814BDF90 | 7F C6 F3 78 */	mr r6, r30
/* 814BDF94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BDF98 | 38 81 00 78 */	addi r4, r1, 0x78
/* 814BDF9C | 38 E0 00 00 */	li r7, 0x0
/* 814BDFA0 | 48 00 3C 3D */	bl VFiPFENT_ITER_GetEntryOfPath
/* 814BDFA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BDFA8 | 41 82 00 08 */	beq .L_814BDFB0
/* 814BDFAC | 48 00 00 6C */	b .L_814BE018
.L_814BDFB0:
/* 814BDFB0 | 88 61 02 94 */	lbz r3, 0x294(r1)
/* 814BDFB4 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814BDFB8 | 41 82 00 0C */	beq .L_814BDFC4
/* 814BDFBC | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 814BDFC0 | 41 82 00 0C */	beq .L_814BDFCC
.L_814BDFC4:
/* 814BDFC4 | 38 60 00 14 */	li r3, 0x14
/* 814BDFC8 | 48 00 00 50 */	b .L_814BE018
.L_814BDFCC:
/* 814BDFCC | 80 61 02 AC */	lwz r3, 0x2ac(r1)
/* 814BDFD0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814BDFD4 | 41 82 00 1C */	beq .L_814BDFF0
/* 814BDFD8 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814BDFDC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814BDFE0 | 40 82 00 18 */	bne .L_814BDFF8
/* 814BDFE4 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814BDFE8 | 7C 03 00 40 */	cmplw r3, r0
/* 814BDFEC | 40 82 00 0C */	bne .L_814BDFF8
.L_814BDFF0:
/* 814BDFF0 | 38 60 00 1C */	li r3, 0x1c
/* 814BDFF4 | 48 00 00 24 */	b .L_814BE018
.L_814BDFF8:
/* 814BDFF8 | 7F E3 FB 78 */	mr r3, r31
/* 814BDFFC | 38 81 00 78 */	addi r4, r1, 0x78
/* 814BE000 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BE004 | 4B FF F0 05 */	bl VFiPFDIR_RemoveDir
/* 814BE008 | 7C 03 00 D0 */	neg r0, r3
/* 814BE00C | 7C 00 1B 78 */	or r0, r0, r3
/* 814BE010 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BE014 | 7C 63 00 38 */	and r3, r3, r0
.L_814BE018:
/* 814BE018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE01C | 41 82 00 18 */	beq .L_814BE034
/* 814BE020 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE024 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE028 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE02C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BE030 | 48 00 00 4C */	b .L_814BE07C
.L_814BE034:
/* 814BE034 | 7F E3 FB 78 */	mr r3, r31
/* 814BE038 | 38 80 00 00 */	li r4, 0x0
/* 814BE03C | 4B FF E4 29 */	bl VFiPFCACHE_FlushDataCacheSpecific
/* 814BE040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE044 | 41 82 00 18 */	beq .L_814BE05C
/* 814BE048 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE04C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE050 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE054 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BE058 | 48 00 00 24 */	b .L_814BE07C
.L_814BE05C:
/* 814BE05C | 7F E3 FB 78 */	mr r3, r31
/* 814BE060 | 4B FF E2 AD */	bl VFiPFCACHE_FlushFATCache
/* 814BE064 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE068 | 41 82 00 14 */	beq .L_814BE07C
/* 814BE06C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE070 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE074 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE078 | 90 7F 18 54 */	stw r3, 0x1854(r31)
.L_814BE07C:
/* 814BE07C | 38 00 00 00 */	li r0, 0x0
/* 814BE080 | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
.L_814BE084:
/* 814BE084 | 80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 814BE088 | 83 E1 02 BC */	lwz r31, 0x2bc(r1)
/* 814BE08C | 83 C1 02 B8 */	lwz r30, 0x2b8(r1)
/* 814BE090 | 7C 08 03 A6 */	mtlr r0
/* 814BE094 | 38 21 02 C0 */	addi r1, r1, 0x2c0
/* 814BE098 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_rmdir

# .text:0x11C8 | 0x814BE09C | size: 0x158
.fn VFiPFDIR_mkdir, global
/* 814BE09C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BE0A0 | 7C 08 02 A6 */	mflr r0
/* 814BE0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE0A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BE0AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BE0B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BE0B4 | 7C 7E 1B 78 */	mr r30, r3
/* 814BE0B8 | 40 82 00 1C */	bne .L_814BE0D4
/* 814BE0BC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE0C0 | 38 00 00 0A */	li r0, 0xa
/* 814BE0C4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE0C8 | 38 60 00 0A */	li r3, 0xa
/* 814BE0CC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BE0D0 | 48 00 01 0C */	b .L_814BE1DC
.L_814BE0D4:
/* 814BE0D4 | 38 8D 9C B0 */	li r4, lbl_81697CF0@sda21
/* 814BE0D8 | 38 A0 00 01 */	li r5, 0x1
/* 814BE0DC | 38 C0 00 00 */	li r6, 0x0
/* 814BE0E0 | 38 E0 00 01 */	li r7, 0x1
/* 814BE0E4 | 4B FF 7E 65 */	bl VFiPFSTR_StrNCmp
/* 814BE0E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE0EC | 40 82 00 1C */	bne .L_814BE108
/* 814BE0F0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE0F4 | 38 00 00 0A */	li r0, 0xa
/* 814BE0F8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE0FC | 38 60 00 0A */	li r3, 0xa
/* 814BE100 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BE104 | 48 00 00 D8 */	b .L_814BE1DC
.L_814BE108:
/* 814BE108 | 7F C3 F3 78 */	mr r3, r30
/* 814BE10C | 48 00 CD A1 */	bl VFiPFPATH_GetVolumeFromPath
/* 814BE110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE114 | 7C 7F 1B 78 */	mr r31, r3
/* 814BE118 | 40 82 00 1C */	bne .L_814BE134
/* 814BE11C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE120 | 38 00 00 09 */	li r0, 0x9
/* 814BE124 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE128 | 38 60 00 09 */	li r3, 0x9
/* 814BE12C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BE130 | 48 00 00 AC */	b .L_814BE1DC
.L_814BE134:
/* 814BE134 | 48 00 F6 81 */	bl VFiPFVOL_CheckForWrite
/* 814BE138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE13C | 41 82 00 18 */	beq .L_814BE154
/* 814BE140 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE144 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE148 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE14C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BE150 | 48 00 00 8C */	b .L_814BE1DC
.L_814BE154:
/* 814BE154 | 38 00 00 00 */	li r0, 0x0
/* 814BE158 | 7F E3 FB 78 */	mr r3, r31
/* 814BE15C | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
/* 814BE160 | 7F C4 F3 78 */	mr r4, r30
/* 814BE164 | 38 A0 00 00 */	li r5, 0x0
/* 814BE168 | 38 C0 00 00 */	li r6, 0x0
/* 814BE16C | 4B FF F0 29 */	bl VFiPFDIR_p_mkdir
/* 814BE170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE174 | 41 82 00 18 */	beq .L_814BE18C
/* 814BE178 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE17C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE180 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE184 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BE188 | 48 00 00 4C */	b .L_814BE1D4
.L_814BE18C:
/* 814BE18C | 7F E3 FB 78 */	mr r3, r31
/* 814BE190 | 4B FF E1 7D */	bl VFiPFCACHE_FlushFATCache
/* 814BE194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE198 | 41 82 00 18 */	beq .L_814BE1B0
/* 814BE19C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE1A0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE1A4 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE1A8 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814BE1AC | 48 00 00 28 */	b .L_814BE1D4
.L_814BE1B0:
/* 814BE1B0 | 7F E3 FB 78 */	mr r3, r31
/* 814BE1B4 | 38 80 00 00 */	li r4, 0x0
/* 814BE1B8 | 4B FF E2 AD */	bl VFiPFCACHE_FlushDataCacheSpecific
/* 814BE1BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE1C0 | 41 82 00 14 */	beq .L_814BE1D4
/* 814BE1C4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE1C8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE1CC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE1D0 | 90 7F 18 54 */	stw r3, 0x1854(r31)
.L_814BE1D4:
/* 814BE1D4 | 38 00 00 00 */	li r0, 0x0
/* 814BE1D8 | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
.L_814BE1DC:
/* 814BE1DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BE1E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BE1E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BE1E8 | 7C 08 03 A6 */	mtlr r0
/* 814BE1EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BE1F0 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_mkdir

# .text:0x1320 | 0x814BE1F4 | size: 0x108
.fn VFiPFDIR_chdir, global
/* 814BE1F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BE1F8 | 7C 08 02 A6 */	mflr r0
/* 814BE1FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE200 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BE204 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BE208 | 7C 7F 1B 78 */	mr r31, r3
/* 814BE20C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BE210 | 40 82 00 1C */	bne .L_814BE22C
/* 814BE214 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE218 | 38 00 00 0A */	li r0, 0xa
/* 814BE21C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE220 | 38 60 00 0A */	li r3, 0xa
/* 814BE224 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BE228 | 48 00 00 BC */	b .L_814BE2E4
.L_814BE22C:
/* 814BE22C | 38 8D 9C B0 */	li r4, lbl_81697CF0@sda21
/* 814BE230 | 38 A0 00 01 */	li r5, 0x1
/* 814BE234 | 38 C0 00 00 */	li r6, 0x0
/* 814BE238 | 38 E0 00 01 */	li r7, 0x1
/* 814BE23C | 4B FF 7D 0D */	bl VFiPFSTR_StrNCmp
/* 814BE240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE244 | 40 82 00 1C */	bne .L_814BE260
/* 814BE248 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE24C | 38 00 00 0A */	li r0, 0xa
/* 814BE250 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE254 | 38 60 00 0A */	li r3, 0xa
/* 814BE258 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BE25C | 48 00 00 88 */	b .L_814BE2E4
.L_814BE260:
/* 814BE260 | 7F E3 FB 78 */	mr r3, r31
/* 814BE264 | 48 00 CC 49 */	bl VFiPFPATH_GetVolumeFromPath
/* 814BE268 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE26C | 7C 7E 1B 78 */	mr r30, r3
/* 814BE270 | 40 82 00 1C */	bne .L_814BE28C
/* 814BE274 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE278 | 38 00 00 09 */	li r0, 0x9
/* 814BE27C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE280 | 38 60 00 09 */	li r3, 0x9
/* 814BE284 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814BE288 | 48 00 00 5C */	b .L_814BE2E4
.L_814BE28C:
/* 814BE28C | 48 00 F3 6D */	bl VFiPFVOL_CheckForRead
/* 814BE290 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE294 | 41 82 00 18 */	beq .L_814BE2AC
/* 814BE298 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE29C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE2A0 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE2A4 | 90 7E 18 54 */	stw r3, 0x1854(r30)
/* 814BE2A8 | 48 00 00 3C */	b .L_814BE2E4
.L_814BE2AC:
/* 814BE2AC | 7F C3 F3 78 */	mr r3, r30
/* 814BE2B0 | 7F E4 FB 78 */	mr r4, r31
/* 814BE2B4 | 4B FF F2 BD */	bl VFiPFDIR_p_chdir
/* 814BE2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE2BC | 7C 7F 1B 78 */	mr r31, r3
/* 814BE2C0 | 41 82 00 18 */	beq .L_814BE2D8
/* 814BE2C4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814BE2C8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814BE2CC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814BE2D0 | 90 7E 18 54 */	stw r3, 0x1854(r30)
/* 814BE2D4 | 48 00 00 0C */	b .L_814BE2E0
.L_814BE2D8:
/* 814BE2D8 | 7F C3 F3 78 */	mr r3, r30
/* 814BE2DC | 48 00 FA 6D */	bl VFiPFVOL_SetCurrentVolume
.L_814BE2E0:
/* 814BE2E0 | 7F E3 FB 78 */	mr r3, r31
.L_814BE2E4:
/* 814BE2E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BE2E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BE2EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BE2F0 | 7C 08 03 A6 */	mtlr r0
/* 814BE2F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BE2F8 | 4E 80 00 20 */	blr
.endfn VFiPFDIR_chdir

# 0x81697CE8..0x81697CF8 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CE8 | size: 0x4
.obj lbl_81697CE8, global
	.4byte 0x5C000000
.endobj lbl_81697CE8

# .sdata:0x4 | 0x81697CEC | size: 0x4
.obj lbl_81697CEC, global
	.4byte 0x2F000000
.endobj lbl_81697CEC

# .sdata:0x8 | 0x81697CF0 | size: 0x4
.obj lbl_81697CF0, global
	.4byte 0x00000000
.endobj lbl_81697CF0

# .sdata:0xC | 0x81697CF4 | size: 0x4
.obj lbl_81697CF4, global
	.4byte 0x3A000000
.endobj lbl_81697CF4
