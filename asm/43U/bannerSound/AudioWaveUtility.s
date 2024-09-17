.include "macros.inc"
.file "AudioWaveUtility.cpp"

# 0x8140EC60..0x814101D8 | size: 0x1578
.text
.balign 4

# .text:0x0 | 0x8140EC60 | size: 0x1C
# BinaryReader::align(unsigned long)
.fn align__12BinaryReaderFUl, global
/* 8140EC60 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8140EC64 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8140EC68 | 7C 84 2A 14 */	add r4, r4, r5
/* 8140EC6C | 38 84 FF FF */	subi r4, r4, 0x1
/* 8140EC70 | 7C 80 00 78 */	andc r0, r4, r0
/* 8140EC74 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8140EC78 | 4E 80 00 20 */	blr
.endfn align__12BinaryReaderFUl

# .text:0x1C | 0x8140EC7C | size: 0x98
# BinaryReader::seekChunk(unsigned long, const void*)
.fn seekChunk__12BinaryReaderFUlPCv, global
/* 8140EC7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140EC80 | 7C 08 02 A6 */	mflr r0
/* 8140EC84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140EC88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140EC8C | 48 1E A8 3D */	bl _savegpr_29
/* 8140EC90 | 7C 7D 1B 78 */	mr r29, r3
/* 8140EC94 | 7C 9E 23 78 */	mr r30, r4
/* 8140EC98 | 7C BF 2B 78 */	mr r31, r5
/* 8140EC9C | 48 00 00 50 */	b .L_8140ECEC
.L_8140ECA0:
/* 8140ECA0 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8140ECA4 | 38 64 00 04 */	addi r3, r4, 0x4
/* 8140ECA8 | 90 7D 00 04 */	stw r3, 0x4(r29)
/* 8140ECAC | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140ECB0 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8140ECB4 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 8140ECB8 | 7C 04 F0 40 */	cmplw r4, r30
/* 8140ECBC | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8140ECC0 | 40 82 00 0C */	bne .L_8140ECCC
/* 8140ECC4 | 38 60 00 01 */	li r3, 0x1
/* 8140ECC8 | 48 00 00 34 */	b .L_8140ECFC
.L_8140ECCC:
/* 8140ECCC | 80 FD 00 00 */	lwz r7, 0x0(r29)
/* 8140ECD0 | 7F A3 EB 78 */	mr r3, r29
/* 8140ECD4 | 38 80 00 02 */	li r4, 0x2
/* 8140ECD8 | 7C A7 00 50 */	subf r5, r7, r0
/* 8140ECDC | 7C 07 32 14 */	add r0, r7, r6
/* 8140ECE0 | 7C 05 02 14 */	add r0, r5, r0
/* 8140ECE4 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 8140ECE8 | 4B FF FF 79 */	bl align__12BinaryReaderFUl
.L_8140ECEC:
/* 8140ECEC | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8140ECF0 | 7C 00 F8 40 */	cmplw r0, r31
/* 8140ECF4 | 41 80 FF AC */	blt .L_8140ECA0
/* 8140ECF8 | 38 60 00 00 */	li r3, 0x0
.L_8140ECFC:
/* 8140ECFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140ED00 | 48 1E A8 15 */	bl _restgpr_29
/* 8140ED04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140ED08 | 7C 08 03 A6 */	mtlr r0
/* 8140ED0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140ED10 | 4E 80 00 20 */	blr
.endfn seekChunk__12BinaryReaderFUlPCv

# .text:0xB4 | 0x8140ED14 | size: 0x1C
# BinaryReaderLittleEndian::align(unsigned long)
.fn align__24BinaryReaderLittleEndianFUl, global
/* 8140ED14 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8140ED18 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8140ED1C | 7C 84 2A 14 */	add r4, r4, r5
/* 8140ED20 | 38 84 FF FF */	subi r4, r4, 0x1
/* 8140ED24 | 7C 80 00 78 */	andc r0, r4, r0
/* 8140ED28 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8140ED2C | 4E 80 00 20 */	blr
.endfn align__24BinaryReaderLittleEndianFUl

# .text:0xD0 | 0x8140ED30 | size: 0x98
# BinaryReaderLittleEndian::seekChunk(unsigned long, const void*)
.fn seekChunk__24BinaryReaderLittleEndianFUlPCv, global
/* 8140ED30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140ED34 | 7C 08 02 A6 */	mflr r0
/* 8140ED38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140ED3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140ED40 | 48 1E A7 85 */	bl _savegpr_28
/* 8140ED44 | 7C 7C 1B 78 */	mr r28, r3
/* 8140ED48 | 7C 9D 23 78 */	mr r29, r4
/* 8140ED4C | 7C BE 2B 78 */	mr r30, r5
/* 8140ED50 | 48 00 00 50 */	b .L_8140EDA0
.L_8140ED54:
/* 8140ED54 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8140ED58 | 7F 83 E3 78 */	mr r3, r28
/* 8140ED5C | 38 04 00 04 */	addi r0, r4, 0x4
/* 8140ED60 | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 8140ED64 | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 8140ED68 | 48 00 00 61 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140ED6C | 7C 1F E8 40 */	cmplw r31, r29
/* 8140ED70 | 40 82 00 0C */	bne .L_8140ED7C
/* 8140ED74 | 38 60 00 01 */	li r3, 0x1
/* 8140ED78 | 48 00 00 38 */	b .L_8140EDB0
.L_8140ED7C:
/* 8140ED7C | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 8140ED80 | 38 80 00 02 */	li r4, 0x2
/* 8140ED84 | 80 BC 00 04 */	lwz r5, 0x4(r28)
/* 8140ED88 | 7C 06 1A 14 */	add r0, r6, r3
/* 8140ED8C | 7F 83 E3 78 */	mr r3, r28
/* 8140ED90 | 7C A6 28 50 */	subf r5, r6, r5
/* 8140ED94 | 7C 05 02 14 */	add r0, r5, r0
/* 8140ED98 | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 8140ED9C | 4B FF FF 79 */	bl align__24BinaryReaderLittleEndianFUl
.L_8140EDA0:
/* 8140EDA0 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8140EDA4 | 7C 00 F0 40 */	cmplw r0, r30
/* 8140EDA8 | 41 80 FF AC */	blt .L_8140ED54
/* 8140EDAC | 38 60 00 00 */	li r3, 0x0
.L_8140EDB0:
/* 8140EDB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140EDB4 | 48 1E A7 5D */	bl _restgpr_28
/* 8140EDB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140EDBC | 7C 08 03 A6 */	mtlr r0
/* 8140EDC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140EDC4 | 4E 80 00 20 */	blr
.endfn seekChunk__24BinaryReaderLittleEndianFUlPCv

# .text:0x168 | 0x8140EDC8 | size: 0x4C
# BinaryReaderLittleEndian::read32()
.fn read32__24BinaryReaderLittleEndianFv, global
/* 8140EDC8 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8140EDCC | 38 87 00 01 */	addi r4, r7, 0x1
/* 8140EDD0 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8140EDD4 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 8140EDD8 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 8140EDDC | 88 E7 00 00 */	lbz r7, 0x0(r7)
/* 8140EDE0 | 38 05 00 01 */	addi r0, r5, 0x1
/* 8140EDE4 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 8140EDE8 | 88 84 00 00 */	lbz r4, 0x0(r4)
/* 8140EDEC | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8140EDF0 | 50 87 44 2E */	rlwimi r7, r4, 8, 16, 23
/* 8140EDF4 | 88 86 00 00 */	lbz r4, 0x0(r6)
/* 8140EDF8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8140EDFC | 54 83 80 1E */	slwi r3, r4, 16
/* 8140EE00 | 7C E7 1B 78 */	or r7, r7, r3
/* 8140EE04 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 8140EE08 | 7C E3 1B 78 */	or r3, r7, r3
/* 8140EE0C | 50 03 C0 0E */	rlwimi r3, r0, 24, 0, 7
/* 8140EE10 | 4E 80 00 20 */	blr
.endfn read32__24BinaryReaderLittleEndianFv

# .text:0x1B4 | 0x8140EE14 | size: 0x120
# pow2(float)
.fn pow2__Ff, global
/* 8140EE14 | C0 02 88 E4 */	lfs f0, lbl_81694CE4@sda21(r0)
/* 8140EE18 | 38 A0 00 00 */	li r5, 0x0
/* 8140EE1C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8140EE20 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140EE24 | 4C 41 13 82 */	cror eq, gt, eq
/* 8140EE28 | 40 82 00 1C */	bne .L_8140EE44
/* 8140EE2C | C0 02 88 E0 */	lfs f0, lbl_81694CE0@sda21(r0)
/* 8140EE30 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8140EE34 | FC 00 00 1E */	fctiwz f0, f0
/* 8140EE38 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8140EE3C | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8140EE40 | 48 00 00 18 */	b .L_8140EE58
.L_8140EE44:
/* 8140EE44 | C0 02 88 E0 */	lfs f0, lbl_81694CE0@sda21(r0)
/* 8140EE48 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140EE4C | FC 00 00 1E */	fctiwz f0, f0
/* 8140EE50 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8140EE54 | 80 81 00 1C */	lwz r4, 0x1c(r1)
.L_8140EE58:
/* 8140EE58 | 6C 83 80 00 */	xoris r3, r4, 0x8000
/* 8140EE5C | 3C 00 43 30 */	lis r0, 0x4330
/* 8140EE60 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 8140EE64 | 2C 04 00 80 */	cmpwi r4, 0x80
/* 8140EE68 | C8 42 88 F0 */	lfd f2, lbl_81694CF0@sda21(r0)
/* 8140EE6C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8140EE70 | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8140EE74 | EC 00 10 28 */	fsubs f0, f0, f2
/* 8140EE78 | EC 21 00 28 */	fsubs f1, f1, f0
/* 8140EE7C | 40 81 00 10 */	ble .L_8140EE8C
/* 8140EE80 | 3C 60 81 6A */	lis r3, lbl_8169861C@ha
/* 8140EE84 | C0 23 86 1C */	lfs f1, lbl_8169861C@l(r3)
/* 8140EE88 | 48 00 00 A4 */	b .L_8140EF2C
.L_8140EE8C:
/* 8140EE8C | C0 02 88 E4 */	lfs f0, lbl_81694CE4@sda21(r0)
/* 8140EE90 | 38 04 00 7F */	addi r0, r4, 0x7f
/* 8140EE94 | 54 00 B8 10 */	slwi r0, r0, 23
/* 8140EE98 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140EE9C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8140EEA0 | 40 80 00 08 */	bge .L_8140EEA8
/* 8140EEA4 | 38 A0 00 01 */	li r5, 0x1
.L_8140EEA8:
/* 8140EEA8 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8140EEAC | 38 62 88 D0 */	li r3, lbl_81694CD0@sda21
/* 8140EEB0 | 7C 03 04 2E */	lfsx f0, r3, r0
/* 8140EEB4 | 3C A0 81 61 */	lis r5, lbl_816133F0@ha
/* 8140EEB8 | 38 85 33 F0 */	addi r4, r5, lbl_816133F0@l
/* 8140EEBC | 38 62 88 D8 */	li r3, lbl_81694CD8@sda21
/* 8140EEC0 | ED 21 00 2A */	fadds f9, f1, f0
/* 8140EEC4 | C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8140EEC8 | C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8140EECC | C0 E4 00 0C */	lfs f7, 0xc(r4)
/* 8140EED0 | EC 29 00 72 */	fmuls f1, f9, f1
/* 8140EED4 | C0 C4 00 08 */	lfs f6, 0x8(r4)
/* 8140EED8 | C0 A4 00 04 */	lfs f5, 0x4(r4)
/* 8140EEDC | C0 85 33 F0 */	lfs f4, lbl_816133F0@l(r5)
/* 8140EEE0 | EC 00 08 2A */	fadds f0, f0, f1
/* 8140EEE4 | C0 22 88 EC */	lfs f1, lbl_81694CEC@sda21(r0)
/* 8140EEE8 | C0 42 88 E8 */	lfs f2, lbl_81694CE8@sda21(r0)
/* 8140EEEC | 7C 63 04 2E */	lfsx f3, r3, r0
/* 8140EEF0 | ED 09 00 32 */	fmuls f8, f9, f0
/* 8140EEF4 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 8140EEF8 | EC 42 00 F2 */	fmuls f2, f2, f3
/* 8140EEFC | EC E7 40 2A */	fadds f7, f7, f8
/* 8140EF00 | EC E9 01 F2 */	fmuls f7, f9, f7
/* 8140EF04 | EC C6 38 2A */	fadds f6, f6, f7
/* 8140EF08 | EC C9 01 B2 */	fmuls f6, f9, f6
/* 8140EF0C | EC A5 30 2A */	fadds f5, f5, f6
/* 8140EF10 | EC A9 01 72 */	fmuls f5, f9, f5
/* 8140EF14 | EC 84 28 2A */	fadds f4, f4, f5
/* 8140EF18 | EC 89 01 32 */	fmuls f4, f9, f4
/* 8140EF1C | EC 21 20 2A */	fadds f1, f1, f4
/* 8140EF20 | EC 21 00 F2 */	fmuls f1, f1, f3
/* 8140EF24 | EC 22 08 2A */	fadds f1, f2, f1
/* 8140EF28 | EC 20 00 72 */	fmuls f1, f0, f1
.L_8140EF2C:
/* 8140EF2C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8140EF30 | 4E 80 00 20 */	blr
.endfn pow2__Ff

# .text:0x2D4 | 0x8140EF34 | size: 0x1C
# WaveFileAiff::WaveFileAiff()
.fn __ct__12WaveFileAiffFv, global
/* 8140EF34 | 3C 80 81 66 */	lis r4, __vt__12WaveFileAiff@ha
/* 8140EF38 | 38 00 00 00 */	li r0, 0x0
/* 8140EF3C | 38 84 8D 20 */	addi r4, r4, __vt__12WaveFileAiff@l
/* 8140EF40 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 8140EF44 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8140EF48 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8140EF4C | 4E 80 00 20 */	blr
.endfn __ct__12WaveFileAiffFv

# .text:0x2F0 | 0x8140EF50 | size: 0x40
# WaveFile::~WaveFile()
.fn __dt__8WaveFileFv, global
/* 8140EF50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140EF54 | 7C 08 02 A6 */	mflr r0
/* 8140EF58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140EF5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140EF60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140EF64 | 7C 7F 1B 78 */	mr r31, r3
/* 8140EF68 | 41 82 00 10 */	beq .L_8140EF78
/* 8140EF6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140EF70 | 40 81 00 08 */	ble .L_8140EF78
/* 8140EF74 | 48 1E 91 71 */	bl __dl__FPv
.L_8140EF78:
/* 8140EF78 | 7F E3 FB 78 */	mr r3, r31
/* 8140EF7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140EF80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140EF84 | 7C 08 03 A6 */	mtlr r0
/* 8140EF88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140EF8C | 4E 80 00 20 */	blr
.endfn __dt__8WaveFileFv

# .text:0x330 | 0x8140EF90 | size: 0x3F8
# WaveFileAiff::init(const void*, unsigned long)
.fn init__12WaveFileAiffFPCvUl, global
/* 8140EF90 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8140EF94 | 7C 08 02 A6 */	mflr r0
/* 8140EF98 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8140EF9C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140EFA0 | 48 1E A5 15 */	bl _savegpr_24
/* 8140EFA4 | 83 44 00 00 */	lwz r26, 0x0(r4)
/* 8140EFA8 | 38 A4 00 04 */	addi r5, r4, 0x4
/* 8140EFAC | 3F E0 81 66 */	lis r31, lbl_81658BF0@ha
/* 8140EFB0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8140EFB4 | 3C 1A B9 B1 */	subis r0, r26, 0x464f
/* 8140EFB8 | 7C 79 1B 78 */	mr r25, r3
/* 8140EFBC | 28 00 52 4D */	cmplwi r0, 0x524d
/* 8140EFC0 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8140EFC4 | 7C 98 23 78 */	mr r24, r4
/* 8140EFC8 | 3B FF 8B F0 */	addi r31, r31, lbl_81658BF0@l
/* 8140EFCC | 41 82 00 18 */	beq .L_8140EFE4
/* 8140EFD0 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140EFD4 | 38 BF 00 15 */	addi r5, r31, 0x15
/* 8140EFD8 | 38 80 00 D6 */	li r4, 0xd6
/* 8140EFDC | 4C C6 31 82 */	crclr cr1eq
/* 8140EFE0 | 48 1E 9D D9 */	bl fn_815F8DB8
.L_8140EFE4:
/* 8140EFE4 | 3C 1A B9 B1 */	subis r0, r26, 0x464f
/* 8140EFE8 | 28 00 52 4D */	cmplwi r0, 0x524d
/* 8140EFEC | 41 82 00 0C */	beq .L_8140EFF8
/* 8140EFF0 | 38 60 00 00 */	li r3, 0x0
/* 8140EFF4 | 48 00 03 7C */	b .L_8140F370
.L_8140EFF8:
/* 8140EFF8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140EFFC | 38 64 00 04 */	addi r3, r4, 0x4
/* 8140F000 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F004 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140F008 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8140F00C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F010 | 7F 78 22 14 */	add r27, r24, r4
/* 8140F014 | 83 43 00 00 */	lwz r26, 0x0(r3)
/* 8140F018 | 3C 1A BE B7 */	subis r0, r26, 0x4149
/* 8140F01C | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140F020 | 41 82 00 18 */	beq .L_8140F038
/* 8140F024 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F028 | 38 BF 00 27 */	addi r5, r31, 0x27
/* 8140F02C | 38 80 00 DD */	li r4, 0xdd
/* 8140F030 | 4C C6 31 82 */	crclr cr1eq
/* 8140F034 | 48 1E 9D 85 */	bl fn_815F8DB8
.L_8140F038:
/* 8140F038 | 3C 1A BE B7 */	subis r0, r26, 0x4149
/* 8140F03C | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140F040 | 41 82 00 0C */	beq .L_8140F04C
/* 8140F044 | 38 60 00 00 */	li r3, 0x0
/* 8140F048 | 48 00 03 28 */	b .L_8140F370
.L_8140F04C:
/* 8140F04C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 8140F050 | 3C 80 43 4F */	lis r4, 0x434f
/* 8140F054 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140F058 | 7F 65 DB 78 */	mr r5, r27
/* 8140F05C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F060 | 38 84 4D 4D */	addi r4, r4, 0x4d4d
/* 8140F064 | 7F C6 00 50 */	subf r30, r6, r0
/* 8140F068 | 4B FF FC 15 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F06C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F070 | 7C 7A 1B 78 */	mr r26, r3
/* 8140F074 | 40 82 00 18 */	bne .L_8140F08C
/* 8140F078 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F07C | 38 80 00 E4 */	li r4, 0xe4
/* 8140F080 | 38 AD 92 58 */	li r5, lbl_81697298@sda21
/* 8140F084 | 4C C6 31 82 */	crclr cr1eq
/* 8140F088 | 48 1E 9D 31 */	bl fn_815F8DB8
.L_8140F08C:
/* 8140F08C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F090 | 40 82 00 0C */	bne .L_8140F09C
/* 8140F094 | 38 60 00 00 */	li r3, 0x0
/* 8140F098 | 48 00 02 D8 */	b .L_8140F370
.L_8140F09C:
/* 8140F09C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F0A0 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F0A4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F0A8 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8140F0AC | 90 19 00 0C */	stw r0, 0xc(r25)
/* 8140F0B0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F0B4 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140F0B8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F0BC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8140F0C0 | 90 19 00 18 */	stw r0, 0x18(r25)
/* 8140F0C4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F0C8 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F0CC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F0D0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8140F0D4 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 8140F0D8 | 90 19 00 08 */	stw r0, 0x8(r25)
/* 8140F0DC | 41 82 00 18 */	beq .L_8140F0F4
/* 8140F0E0 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F0E4 | 38 BF 00 38 */	addi r5, r31, 0x38
/* 8140F0E8 | 38 80 00 EF */	li r4, 0xef
/* 8140F0EC | 4C C6 31 82 */	crclr cr1eq
/* 8140F0F0 | 48 1E 9C C9 */	bl fn_815F8DB8
.L_8140F0F4:
/* 8140F0F4 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 8140F0F8 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 8140F0FC | 41 82 00 0C */	beq .L_8140F108
/* 8140F100 | 38 60 00 00 */	li r3, 0x0
/* 8140F104 | 48 00 02 6C */	b .L_8140F370
.L_8140F108:
/* 8140F108 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140F10C | 7F 23 CB 78 */	mr r3, r25
/* 8140F110 | 38 A4 00 02 */	addi r5, r4, 0x2
/* 8140F114 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8140F118 | 38 C5 00 04 */	addi r6, r5, 0x4
/* 8140F11C | 38 06 00 04 */	addi r0, r6, 0x4
/* 8140F120 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 8140F124 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8140F128 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8140F12C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F130 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8140F134 | 48 00 08 89 */	bl decodeIeeeExtended__12WaveFileAiffFUsUlUl
/* 8140F138 | D8 39 00 10 */	stfd f1, 0x10(r25)
/* 8140F13C | 3C 80 49 4E */	lis r4, 0x494e
/* 8140F140 | 7F 65 DB 78 */	mr r5, r27
/* 8140F144 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F148 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F14C | 38 84 53 54 */	addi r4, r4, 0x5354
/* 8140F150 | 7C 00 F2 14 */	add r0, r0, r30
/* 8140F154 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F158 | 4B FF FB 25 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F15C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F160 | 41 82 01 48 */	beq .L_8140F2A8
/* 8140F164 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8140F168 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140F16C | 7C 03 00 50 */	subf r0, r3, r0
/* 8140F170 | 7C A0 1A 14 */	add r5, r0, r3
/* 8140F174 | 38 85 00 0A */	addi r4, r5, 0xa
/* 8140F178 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140F17C | 38 64 00 02 */	addi r3, r4, 0x2
/* 8140F180 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F184 | A0 C5 00 08 */	lhz r6, 0x8(r5)
/* 8140F188 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F18C | 2C 06 00 01 */	cmpwi r6, 0x1
/* 8140F190 | A3 A5 00 0A */	lhz r29, 0xa(r5)
/* 8140F194 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F198 | A3 85 00 0C */	lhz r28, 0xc(r5)
/* 8140F19C | 41 82 00 24 */	beq .L_8140F1C0
/* 8140F1A0 | 40 80 00 E8 */	bge .L_8140F288
/* 8140F1A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8140F1A8 | 40 80 00 0C */	bge .L_8140F1B4
/* 8140F1AC | 48 00 00 DC */	b .L_8140F288
/* 8140F1B0 | 48 00 00 D8 */	b .L_8140F288
.L_8140F1B4:
/* 8140F1B4 | 38 00 00 00 */	li r0, 0x0
/* 8140F1B8 | 98 19 00 1C */	stb r0, 0x1c(r25)
/* 8140F1BC | 48 00 00 F4 */	b .L_8140F2B0
.L_8140F1C0:
/* 8140F1C0 | 38 00 00 01 */	li r0, 0x1
/* 8140F1C4 | 3C 80 4D 41 */	lis r4, 0x4d41
/* 8140F1C8 | 98 19 00 1C */	stb r0, 0x1c(r25)
/* 8140F1CC | 7F 65 DB 78 */	mr r5, r27
/* 8140F1D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F1D4 | 38 84 52 4B */	addi r4, r4, 0x524b
/* 8140F1D8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F1DC | 7C 00 F2 14 */	add r0, r0, r30
/* 8140F1E0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F1E4 | 4B FF FA 99 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F1E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F1EC | 40 82 00 18 */	bne .L_8140F204
/* 8140F1F0 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F1F4 | 38 80 01 0C */	li r4, 0x10c
/* 8140F1F8 | 38 AD 92 58 */	li r5, lbl_81697298@sda21
/* 8140F1FC | 4C C6 31 82 */	crclr cr1eq
/* 8140F200 | 48 1E 9B B9 */	bl fn_815F8DB8
.L_8140F204:
/* 8140F204 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F208 | 3B 40 00 00 */	li r26, 0x0
/* 8140F20C | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F210 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F214 | A3 03 00 00 */	lhz r24, 0x0(r3)
/* 8140F218 | 48 00 00 64 */	b .L_8140F27C
.L_8140F21C:
/* 8140F21C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8140F220 | 38 85 00 02 */	addi r4, r5, 0x2
/* 8140F224 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140F228 | 38 64 00 04 */	addi r3, r4, 0x4
/* 8140F22C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140F230 | A0 C5 00 00 */	lhz r6, 0x0(r5)
/* 8140F234 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F238 | 7C 06 E8 00 */	cmpw r6, r29
/* 8140F23C | 80 85 00 02 */	lwz r4, 0x2(r5)
/* 8140F240 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F244 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 8140F248 | 40 82 00 0C */	bne .L_8140F254
/* 8140F24C | 90 99 00 20 */	stw r4, 0x20(r25)
/* 8140F250 | 48 00 00 10 */	b .L_8140F260
.L_8140F254:
/* 8140F254 | 7C 06 E0 00 */	cmpw r6, r28
/* 8140F258 | 40 82 00 08 */	bne .L_8140F260
/* 8140F25C | 90 99 00 24 */	stw r4, 0x24(r25)
.L_8140F260:
/* 8140F260 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140F264 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F268 | 38 80 00 02 */	li r4, 0x2
/* 8140F26C | 7C 00 2A 14 */	add r0, r0, r5
/* 8140F270 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F274 | 4B FF F9 ED */	bl align__12BinaryReaderFUl
/* 8140F278 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_8140F27C:
/* 8140F27C | 7C 1A C0 00 */	cmpw r26, r24
/* 8140F280 | 41 80 FF 9C */	blt .L_8140F21C
/* 8140F284 | 48 00 00 2C */	b .L_8140F2B0
.L_8140F288:
/* 8140F288 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 8140F28C | 38 BF 00 44 */	addi r5, r31, 0x44
/* 8140F290 | 38 60 00 01 */	li r3, 0x1
/* 8140F294 | 4C C6 31 82 */	crclr cr1eq
/* 8140F298 | 48 1E 99 FD */	bl fn_815F8C94
/* 8140F29C | 38 00 00 00 */	li r0, 0x0
/* 8140F2A0 | 98 19 00 1C */	stb r0, 0x1c(r25)
/* 8140F2A4 | 48 00 00 0C */	b .L_8140F2B0
.L_8140F2A8:
/* 8140F2A8 | 38 00 00 00 */	li r0, 0x0
/* 8140F2AC | 98 19 00 1C */	stb r0, 0x1c(r25)
.L_8140F2B0:
/* 8140F2B0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F2B4 | 3C 80 53 53 */	lis r4, 0x5353
/* 8140F2B8 | 7F 65 DB 78 */	mr r5, r27
/* 8140F2BC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F2C0 | 7C 00 F2 14 */	add r0, r0, r30
/* 8140F2C4 | 38 84 4E 44 */	addi r4, r4, 0x4e44
/* 8140F2C8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F2CC | 4B FF F9 B1 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F2D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F2D4 | 40 82 00 18 */	bne .L_8140F2EC
/* 8140F2D8 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F2DC | 38 80 01 30 */	li r4, 0x130
/* 8140F2E0 | 38 AD 92 58 */	li r5, lbl_81697298@sda21
/* 8140F2E4 | 4C C6 31 82 */	crclr cr1eq
/* 8140F2E8 | 48 1E 9A D1 */	bl fn_815F8DB8
.L_8140F2EC:
/* 8140F2EC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140F2F0 | 38 64 00 04 */	addi r3, r4, 0x4
/* 8140F2F4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F2F8 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140F2FC | 83 04 00 00 */	lwz r24, 0x0(r4)
/* 8140F300 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F304 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8140F308 | 83 44 00 04 */	lwz r26, 0x4(r4)
/* 8140F30C | 41 82 00 18 */	beq .L_8140F324
/* 8140F310 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F314 | 38 BF 00 5C */	addi r5, r31, 0x5c
/* 8140F318 | 38 80 01 34 */	li r4, 0x134
/* 8140F31C | 4C C6 31 82 */	crclr cr1eq
/* 8140F320 | 48 1E 9A 99 */	bl fn_815F8DB8
.L_8140F324:
/* 8140F324 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F328 | 41 82 00 18 */	beq .L_8140F340
/* 8140F32C | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F330 | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 8140F334 | 38 80 01 35 */	li r4, 0x135
/* 8140F338 | 4C C6 31 82 */	crclr cr1eq
/* 8140F33C | 48 1E 9A 7D */	bl fn_815F8DB8
.L_8140F340:
/* 8140F340 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8140F344 | 41 82 00 0C */	beq .L_8140F350
/* 8140F348 | 38 60 00 00 */	li r3, 0x0
/* 8140F34C | 48 00 00 24 */	b .L_8140F370
.L_8140F350:
/* 8140F350 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F354 | 41 82 00 0C */	beq .L_8140F360
/* 8140F358 | 38 60 00 00 */	li r3, 0x0
/* 8140F35C | 48 00 00 14 */	b .L_8140F370
.L_8140F360:
/* 8140F360 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140F364 | 38 60 00 01 */	li r3, 0x1
/* 8140F368 | 90 19 00 2C */	stw r0, 0x2c(r25)
/* 8140F36C | 90 19 00 28 */	stw r0, 0x28(r25)
.L_8140F370:
/* 8140F370 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140F374 | 48 1E A1 8D */	bl _restgpr_24
/* 8140F378 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8140F37C | 7C 08 03 A6 */	mtlr r0
/* 8140F380 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8140F384 | 4E 80 00 20 */	blr
.endfn init__12WaveFileAiffFPCvUl

# .text:0x728 | 0x8140F388 | size: 0x440
# WaveFileAiff::checkFile(const void*, unsigned long, bool)
.fn checkFile__12WaveFileAiffFPCvUlb, global
/* 8140F388 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8140F38C | 7C 08 02 A6 */	mflr r0
/* 8140F390 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8140F394 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8140F398 | 48 1E A1 15 */	bl _savegpr_22
/* 8140F39C | 38 E4 00 04 */	addi r7, r4, 0x4
/* 8140F3A0 | 3F E0 81 66 */	lis r31, lbl_81658BF0@ha
/* 8140F3A4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8140F3A8 | 7C 77 1B 78 */	mr r23, r3
/* 8140F3AC | 7C 98 23 78 */	mr r24, r4
/* 8140F3B0 | 7C B9 2B 78 */	mr r25, r5
/* 8140F3B4 | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 8140F3B8 | 3B FF 8B F0 */	addi r31, r31, lbl_81658BF0@l
/* 8140F3BC | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8140F3C0 | 3C 03 B9 B1 */	subis r0, r3, 0x464f
/* 8140F3C4 | 28 00 52 4D */	cmplwi r0, 0x524d
/* 8140F3C8 | 41 82 00 0C */	beq .L_8140F3D4
/* 8140F3CC | 38 60 00 00 */	li r3, 0x0
/* 8140F3D0 | 48 00 03 E0 */	b .L_8140F7B0
.L_8140F3D4:
/* 8140F3D4 | 38 07 00 04 */	addi r0, r7, 0x4
/* 8140F3D8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8140F3DC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F3E0 | 80 C7 00 00 */	lwz r6, 0x0(r7)
/* 8140F3E4 | 40 82 00 24 */	bne .L_8140F408
/* 8140F3E8 | 38 66 00 27 */	addi r3, r6, 0x27
/* 8140F3EC | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8140F3F0 | 54 63 00 34 */	clrrwi r3, r3, 5
/* 8140F3F4 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8140F3F8 | 7C 03 00 40 */	cmplw r3, r0
/* 8140F3FC | 41 82 00 0C */	beq .L_8140F408
/* 8140F400 | 38 60 00 00 */	li r3, 0x0
/* 8140F404 | 48 00 03 AC */	b .L_8140F7B0
.L_8140F408:
/* 8140F408 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F40C | 7F 64 32 14 */	add r27, r4, r6
/* 8140F410 | 38 C3 00 04 */	addi r6, r3, 0x4
/* 8140F414 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8140F418 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140F41C | 3C 03 BE B7 */	subis r0, r3, 0x4149
/* 8140F420 | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140F424 | 41 82 00 0C */	beq .L_8140F430
/* 8140F428 | 38 60 00 00 */	li r3, 0x0
/* 8140F42C | 48 00 03 84 */	b .L_8140F7B0
.L_8140F430:
/* 8140F430 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F434 | 3C 80 43 4F */	lis r4, 0x434f
/* 8140F438 | 7F 65 DB 78 */	mr r5, r27
/* 8140F43C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F440 | 7F C0 30 50 */	subf r30, r0, r6
/* 8140F444 | 38 84 4D 4D */	addi r4, r4, 0x4d4d
/* 8140F448 | 4B FF F8 35 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F44C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F450 | 40 82 00 0C */	bne .L_8140F45C
/* 8140F454 | 38 60 00 00 */	li r3, 0x0
/* 8140F458 | 48 00 03 58 */	b .L_8140F7B0
.L_8140F45C:
/* 8140F45C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F460 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F464 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F468 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8140F46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140F470 | 90 17 00 0C */	stw r0, 0xc(r23)
/* 8140F474 | 40 82 00 0C */	bne .L_8140F480
/* 8140F478 | 38 60 00 00 */	li r3, 0x0
/* 8140F47C | 48 00 03 34 */	b .L_8140F7B0
.L_8140F480:
/* 8140F480 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140F484 | 40 81 00 0C */	ble .L_8140F490
/* 8140F488 | 38 60 00 00 */	li r3, 0x0
/* 8140F48C | 48 00 03 24 */	b .L_8140F7B0
.L_8140F490:
/* 8140F490 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F494 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140F498 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F49C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8140F4A0 | 90 17 00 18 */	stw r0, 0x18(r23)
/* 8140F4A4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F4A8 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F4AC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F4B0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8140F4B4 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 8140F4B8 | 90 17 00 08 */	stw r0, 0x8(r23)
/* 8140F4BC | 41 82 00 0C */	beq .L_8140F4C8
/* 8140F4C0 | 38 60 00 00 */	li r3, 0x0
/* 8140F4C4 | 48 00 02 EC */	b .L_8140F7B0
.L_8140F4C8:
/* 8140F4C8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140F4CC | 7E E3 BB 78 */	mr r3, r23
/* 8140F4D0 | 38 A4 00 02 */	addi r5, r4, 0x2
/* 8140F4D4 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8140F4D8 | 38 C5 00 04 */	addi r6, r5, 0x4
/* 8140F4DC | 38 06 00 04 */	addi r0, r6, 0x4
/* 8140F4E0 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 8140F4E4 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8140F4E8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8140F4EC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F4F0 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8140F4F4 | 48 00 04 C9 */	bl decodeIeeeExtended__12WaveFileAiffFUsUlUl
/* 8140F4F8 | C8 02 88 F8 */	lfd f0, lbl_81694CF8@sda21(r0)
/* 8140F4FC | D8 37 00 10 */	stfd f1, 0x10(r23)
/* 8140F500 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140F504 | 41 81 00 10 */	bgt .L_8140F514
/* 8140F508 | C8 02 89 00 */	lfd f0, lbl_81694D00@sda21(r0)
/* 8140F50C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8140F510 | 40 80 00 0C */	bge .L_8140F51C
.L_8140F514:
/* 8140F514 | 38 60 00 00 */	li r3, 0x0
/* 8140F518 | 48 00 02 98 */	b .L_8140F7B0
.L_8140F51C:
/* 8140F51C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F520 | 3C 80 49 4E */	lis r4, 0x494e
/* 8140F524 | 7F 65 DB 78 */	mr r5, r27
/* 8140F528 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F52C | 7C 00 F2 14 */	add r0, r0, r30
/* 8140F530 | 38 84 53 54 */	addi r4, r4, 0x5354
/* 8140F534 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F538 | 4B FF F7 45 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F53C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F540 | 41 82 01 48 */	beq .L_8140F688
/* 8140F544 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8140F548 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140F54C | 7C 03 00 50 */	subf r0, r3, r0
/* 8140F550 | 7C A0 1A 14 */	add r5, r0, r3
/* 8140F554 | 38 85 00 0A */	addi r4, r5, 0xa
/* 8140F558 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140F55C | 38 64 00 02 */	addi r3, r4, 0x2
/* 8140F560 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F564 | A0 C5 00 08 */	lhz r6, 0x8(r5)
/* 8140F568 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F56C | 2C 06 00 01 */	cmpwi r6, 0x1
/* 8140F570 | A3 A5 00 0A */	lhz r29, 0xa(r5)
/* 8140F574 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F578 | A3 85 00 0C */	lhz r28, 0xc(r5)
/* 8140F57C | 41 82 00 24 */	beq .L_8140F5A0
/* 8140F580 | 40 80 00 E8 */	bge .L_8140F668
/* 8140F584 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8140F588 | 40 80 00 0C */	bge .L_8140F594
/* 8140F58C | 48 00 00 DC */	b .L_8140F668
/* 8140F590 | 48 00 00 D8 */	b .L_8140F668
.L_8140F594:
/* 8140F594 | 38 00 00 00 */	li r0, 0x0
/* 8140F598 | 98 17 00 1C */	stb r0, 0x1c(r23)
/* 8140F59C | 48 00 00 F4 */	b .L_8140F690
.L_8140F5A0:
/* 8140F5A0 | 38 00 00 01 */	li r0, 0x1
/* 8140F5A4 | 3C 80 4D 41 */	lis r4, 0x4d41
/* 8140F5A8 | 98 17 00 1C */	stb r0, 0x1c(r23)
/* 8140F5AC | 7F 65 DB 78 */	mr r5, r27
/* 8140F5B0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F5B4 | 38 84 52 4B */	addi r4, r4, 0x524b
/* 8140F5B8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F5BC | 7C 00 F2 14 */	add r0, r0, r30
/* 8140F5C0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F5C4 | 4B FF F6 B9 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F5CC | 40 82 00 18 */	bne .L_8140F5E4
/* 8140F5D0 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F5D4 | 38 80 01 80 */	li r4, 0x180
/* 8140F5D8 | 38 AD 92 58 */	li r5, lbl_81697298@sda21
/* 8140F5DC | 4C C6 31 82 */	crclr cr1eq
/* 8140F5E0 | 48 1E 97 D9 */	bl fn_815F8DB8
.L_8140F5E4:
/* 8140F5E4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8140F5E8 | 3B 40 00 00 */	li r26, 0x0
/* 8140F5EC | 38 03 00 02 */	addi r0, r3, 0x2
/* 8140F5F0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F5F4 | A2 C3 00 00 */	lhz r22, 0x0(r3)
/* 8140F5F8 | 48 00 00 64 */	b .L_8140F65C
.L_8140F5FC:
/* 8140F5FC | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8140F600 | 38 85 00 02 */	addi r4, r5, 0x2
/* 8140F604 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140F608 | 38 64 00 04 */	addi r3, r4, 0x4
/* 8140F60C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140F610 | A0 C5 00 00 */	lhz r6, 0x0(r5)
/* 8140F614 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F618 | 7C 06 E8 00 */	cmpw r6, r29
/* 8140F61C | 80 85 00 02 */	lwz r4, 0x2(r5)
/* 8140F620 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F624 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 8140F628 | 40 82 00 0C */	bne .L_8140F634
/* 8140F62C | 90 97 00 20 */	stw r4, 0x20(r23)
/* 8140F630 | 48 00 00 10 */	b .L_8140F640
.L_8140F634:
/* 8140F634 | 7C 06 E0 00 */	cmpw r6, r28
/* 8140F638 | 40 82 00 08 */	bne .L_8140F640
/* 8140F63C | 90 97 00 24 */	stw r4, 0x24(r23)
.L_8140F640:
/* 8140F640 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140F644 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F648 | 38 80 00 02 */	li r4, 0x2
/* 8140F64C | 7C 00 2A 14 */	add r0, r0, r5
/* 8140F650 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F654 | 4B FF F6 0D */	bl align__12BinaryReaderFUl
/* 8140F658 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_8140F65C:
/* 8140F65C | 7C 1A B0 00 */	cmpw r26, r22
/* 8140F660 | 41 80 FF 9C */	blt .L_8140F5FC
/* 8140F664 | 48 00 00 2C */	b .L_8140F690
.L_8140F668:
/* 8140F668 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 8140F66C | 38 BF 00 44 */	addi r5, r31, 0x44
/* 8140F670 | 38 60 00 01 */	li r3, 0x1
/* 8140F674 | 4C C6 31 82 */	crclr cr1eq
/* 8140F678 | 48 1E 96 1D */	bl fn_815F8C94
/* 8140F67C | 38 00 00 00 */	li r0, 0x0
/* 8140F680 | 98 17 00 1C */	stb r0, 0x1c(r23)
/* 8140F684 | 48 00 00 0C */	b .L_8140F690
.L_8140F688:
/* 8140F688 | 38 00 00 00 */	li r0, 0x0
/* 8140F68C | 98 17 00 1C */	stb r0, 0x1c(r23)
.L_8140F690:
/* 8140F690 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140F694 | 3C 80 53 53 */	lis r4, 0x5353
/* 8140F698 | 7F 65 DB 78 */	mr r5, r27
/* 8140F69C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140F6A0 | 7C 00 F2 14 */	add r0, r0, r30
/* 8140F6A4 | 38 84 4E 44 */	addi r4, r4, 0x4e44
/* 8140F6A8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F6AC | 4B FF F5 D1 */	bl seekChunk__12BinaryReaderFUlPCv
/* 8140F6B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F6B4 | 40 82 00 0C */	bne .L_8140F6C0
/* 8140F6B8 | 38 60 00 00 */	li r3, 0x0
/* 8140F6BC | 48 00 00 F4 */	b .L_8140F7B0
.L_8140F6C0:
/* 8140F6C0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140F6C4 | 38 64 00 04 */	addi r3, r4, 0x4
/* 8140F6C8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140F6CC | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140F6D0 | 82 C4 00 00 */	lwz r22, 0x0(r4)
/* 8140F6D4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140F6D8 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8140F6DC | 83 44 00 04 */	lwz r26, 0x4(r4)
/* 8140F6E0 | 41 82 00 18 */	beq .L_8140F6F8
/* 8140F6E4 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F6E8 | 38 BF 00 5C */	addi r5, r31, 0x5c
/* 8140F6EC | 38 80 01 A8 */	li r4, 0x1a8
/* 8140F6F0 | 4C C6 31 82 */	crclr cr1eq
/* 8140F6F4 | 48 1E 96 C5 */	bl fn_815F8DB8
.L_8140F6F8:
/* 8140F6F8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F6FC | 41 82 00 18 */	beq .L_8140F714
/* 8140F700 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8140F704 | 38 BF 00 6C */	addi r5, r31, 0x6c
/* 8140F708 | 38 80 01 A9 */	li r4, 0x1a9
/* 8140F70C | 4C C6 31 82 */	crclr cr1eq
/* 8140F710 | 48 1E 96 A9 */	bl fn_815F8DB8
.L_8140F714:
/* 8140F714 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8140F718 | 41 82 00 0C */	beq .L_8140F724
/* 8140F71C | 38 60 00 00 */	li r3, 0x0
/* 8140F720 | 48 00 00 90 */	b .L_8140F7B0
.L_8140F724:
/* 8140F724 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F728 | 41 82 00 0C */	beq .L_8140F734
/* 8140F72C | 38 60 00 00 */	li r3, 0x0
/* 8140F730 | 48 00 00 80 */	b .L_8140F7B0
.L_8140F734:
/* 8140F734 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140F738 | 80 17 00 0C */	lwz r0, 0xc(r23)
/* 8140F73C | 7C 78 20 50 */	subf r3, r24, r4
/* 8140F740 | 80 B7 00 18 */	lwz r5, 0x18(r23)
/* 8140F744 | 7C 63 C8 50 */	subf r3, r3, r25
/* 8140F748 | 54 00 08 3C */	slwi r0, r0, 1
/* 8140F74C | 7C 03 03 96 */	divwu r0, r3, r0
/* 8140F750 | 90 97 00 2C */	stw r4, 0x2c(r23)
/* 8140F754 | 90 97 00 28 */	stw r4, 0x28(r23)
/* 8140F758 | 7C 00 28 40 */	cmplw r0, r5
/* 8140F75C | 40 80 00 0C */	bge .L_8140F768
/* 8140F760 | 38 60 00 00 */	li r3, 0x0
/* 8140F764 | 48 00 00 4C */	b .L_8140F7B0
.L_8140F768:
/* 8140F768 | 88 17 00 1C */	lbz r0, 0x1c(r23)
/* 8140F76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140F770 | 41 82 00 3C */	beq .L_8140F7AC
/* 8140F774 | 80 77 00 24 */	lwz r3, 0x24(r23)
/* 8140F778 | 80 17 00 20 */	lwz r0, 0x20(r23)
/* 8140F77C | 7C 00 18 00 */	cmpw r0, r3
/* 8140F780 | 41 80 00 0C */	blt .L_8140F78C
/* 8140F784 | 38 60 00 00 */	li r3, 0x0
/* 8140F788 | 48 00 00 28 */	b .L_8140F7B0
.L_8140F78C:
/* 8140F78C | 7C 00 28 00 */	cmpw r0, r5
/* 8140F790 | 41 80 00 0C */	blt .L_8140F79C
/* 8140F794 | 38 60 00 00 */	li r3, 0x0
/* 8140F798 | 48 00 00 18 */	b .L_8140F7B0
.L_8140F79C:
/* 8140F79C | 7C 03 28 00 */	cmpw r3, r5
/* 8140F7A0 | 40 81 00 0C */	ble .L_8140F7AC
/* 8140F7A4 | 38 60 00 00 */	li r3, 0x0
/* 8140F7A8 | 48 00 00 08 */	b .L_8140F7B0
.L_8140F7AC:
/* 8140F7AC | 38 60 00 01 */	li r3, 0x1
.L_8140F7B0:
/* 8140F7B0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8140F7B4 | 48 1E 9D 45 */	bl _restgpr_22
/* 8140F7B8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8140F7BC | 7C 08 03 A6 */	mtlr r0
/* 8140F7C0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8140F7C4 | 4E 80 00 20 */	blr
.endfn checkFile__12WaveFileAiffFPCvUlb

# .text:0xB68 | 0x8140F7C8 | size: 0x1F4
# WaveFileAiff::readData(short*, long)
.fn readData__12WaveFileAiffFPsl, global
/* 8140F7C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8140F7CC | 7C 08 02 A6 */	mflr r0
/* 8140F7D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8140F7D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140F7D8 | 48 1E 9C E1 */	bl _savegpr_25
/* 8140F7DC | 83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8140F7E0 | 3F 60 81 66 */	lis r27, lbl_81658BF0@ha
/* 8140F7E4 | 7C 7C 1B 78 */	mr r28, r3
/* 8140F7E8 | 7C 9D 23 78 */	mr r29, r4
/* 8140F7EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140F7F0 | 7C BE 2B 78 */	mr r30, r5
/* 8140F7F4 | 3B 7B 8B F0 */	addi r27, r27, lbl_81658BF0@l
/* 8140F7F8 | 40 82 00 0C */	bne .L_8140F804
/* 8140F7FC | 38 60 00 00 */	li r3, 0x0
/* 8140F800 | 48 00 01 A4 */	b .L_8140F9A4
.L_8140F804:
/* 8140F804 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8140F808 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8140F80C | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8140F810 | 7C 06 01 D6 */	mullw r0, r6, r0
/* 8140F814 | 7C 63 F8 50 */	subf r3, r3, r31
/* 8140F818 | 7C 63 0E 70 */	srawi r3, r3, 1
/* 8140F81C | 7C 63 01 94 */	addze r3, r3
/* 8140F820 | 7C 03 00 50 */	subf r0, r3, r0
/* 8140F824 | 7C 05 00 00 */	cmpw r5, r0
/* 8140F828 | 40 81 00 08 */	ble .L_8140F830
/* 8140F82C | 7C 1E 03 78 */	mr r30, r0
.L_8140F830:
/* 8140F830 | 57 E3 07 BE */	clrlwi r3, r31, 30
/* 8140F834 | 54 80 07 BE */	clrlwi r0, r4, 30
/* 8140F838 | 7C 03 00 40 */	cmplw r3, r0
/* 8140F83C | 57 DA 08 3C */	slwi r26, r30, 1
/* 8140F840 | 40 82 00 9C */	bne .L_8140F8DC
/* 8140F844 | 57 59 07 3F */	clrlwi. r25, r26, 28
/* 8140F848 | 40 82 00 94 */	bne .L_8140F8DC
/* 8140F84C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F850 | 41 82 00 18 */	beq .L_8140F868
/* 8140F854 | 38 7B 00 00 */	addi r3, r27, 0x0
/* 8140F858 | 38 BB 00 7F */	addi r5, r27, 0x7f
/* 8140F85C | 38 80 00 46 */	li r4, 0x46
/* 8140F860 | 4C C6 31 82 */	crclr cr1eq
/* 8140F864 | 48 1E 95 55 */	bl fn_815F8DB8
.L_8140F868:
/* 8140F868 | 57 A0 07 BF */	clrlwi. r0, r29, 30
/* 8140F86C | 41 82 00 18 */	beq .L_8140F884
/* 8140F870 | 38 7B 00 00 */	addi r3, r27, 0x0
/* 8140F874 | 38 BB 00 A8 */	addi r5, r27, 0xa8
/* 8140F878 | 38 80 00 47 */	li r4, 0x47
/* 8140F87C | 4C C6 31 82 */	crclr cr1eq
/* 8140F880 | 48 1E 95 39 */	bl fn_815F8DB8
.L_8140F884:
/* 8140F884 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8140F888 | 41 82 00 18 */	beq .L_8140F8A0
/* 8140F88C | 38 7B 00 00 */	addi r3, r27, 0x0
/* 8140F890 | 38 BB 00 D2 */	addi r5, r27, 0xd2
/* 8140F894 | 38 80 00 48 */	li r4, 0x48
/* 8140F898 | 4C C6 31 82 */	crclr cr1eq
/* 8140F89C | 48 1E 95 1D */	bl fn_815F8DB8
.L_8140F8A0:
/* 8140F8A0 | 57 40 E1 3F */	srwi. r0, r26, 4
/* 8140F8A4 | 7C 09 03 A6 */	mtctr r0
/* 8140F8A8 | 41 82 00 E8 */	beq .L_8140F990
.L_8140F8AC:
/* 8140F8AC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8140F8B0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8140F8B4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8140F8B8 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8140F8BC | 3B FF 00 10 */	addi r31, r31, 0x10
/* 8140F8C0 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8140F8C4 | 90 7D 00 04 */	stw r3, 0x4(r29)
/* 8140F8C8 | 90 9D 00 08 */	stw r4, 0x8(r29)
/* 8140F8CC | 90 BD 00 0C */	stw r5, 0xc(r29)
/* 8140F8D0 | 3B BD 00 10 */	addi r29, r29, 0x10
/* 8140F8D4 | 42 00 FF D8 */	bdnz .L_8140F8AC
/* 8140F8D8 | 48 00 00 B8 */	b .L_8140F990
.L_8140F8DC:
/* 8140F8DC | 7C 03 00 40 */	cmplw r3, r0
/* 8140F8E0 | 40 82 00 90 */	bne .L_8140F970
/* 8140F8E4 | 28 1A 00 10 */	cmplwi r26, 0x10
/* 8140F8E8 | 41 80 00 88 */	blt .L_8140F970
/* 8140F8EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140F8F0 | 41 82 00 30 */	beq .L_8140F920
/* 8140F8F4 | 20 03 00 04 */	subfic r0, r3, 0x4
/* 8140F8F8 | 54 03 06 3F */	clrlwi. r3, r0, 24
/* 8140F8FC | 7C 69 03 A6 */	mtctr r3
/* 8140F900 | 41 82 00 20 */	beq .L_8140F920
.L_8140F904:
/* 8140F904 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8140F908 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8140F90C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8140F910 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8140F914 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 8140F918 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8140F91C | 42 00 FF E8 */	bdnz .L_8140F904
.L_8140F920:
/* 8140F920 | 57 40 F0 BE */	srwi r0, r26, 2
/* 8140F924 | 7C 09 03 A6 */	mtctr r0
/* 8140F928 | 28 1A 00 04 */	cmplwi r26, 0x4
/* 8140F92C | 41 80 00 1C */	blt .L_8140F948
.L_8140F930:
/* 8140F930 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8140F934 | 3B 5A FF FC */	subi r26, r26, 0x4
/* 8140F938 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8140F93C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8140F940 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8140F944 | 42 00 FF EC */	bdnz .L_8140F930
.L_8140F948:
/* 8140F948 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F94C | 41 82 00 44 */	beq .L_8140F990
/* 8140F950 | 7F 49 03 A6 */	mtctr r26
/* 8140F954 | 41 82 00 3C */	beq .L_8140F990
.L_8140F958:
/* 8140F958 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8140F95C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8140F960 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 8140F964 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8140F968 | 42 00 FF F0 */	bdnz .L_8140F958
/* 8140F96C | 48 00 00 24 */	b .L_8140F990
.L_8140F970:
/* 8140F970 | 7F 49 03 A6 */	mtctr r26
/* 8140F974 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140F978 | 41 82 00 18 */	beq .L_8140F990
.L_8140F97C:
/* 8140F97C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8140F980 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8140F984 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 8140F988 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8140F98C | 42 00 FF F0 */	bdnz .L_8140F97C
.L_8140F990:
/* 8140F990 | 80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 8140F994 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8140F998 | 7F C3 F3 78 */	mr r3, r30
/* 8140F99C | 7C 04 02 14 */	add r0, r4, r0
/* 8140F9A0 | 90 1C 00 2C */	stw r0, 0x2c(r28)
.L_8140F9A4:
/* 8140F9A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140F9A8 | 48 1E 9B 5D */	bl _restgpr_25
/* 8140F9AC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8140F9B0 | 7C 08 03 A6 */	mtlr r0
/* 8140F9B4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8140F9B8 | 4E 80 00 20 */	blr
.endfn readData__12WaveFileAiffFPsl

# .text:0xD5C | 0x8140F9BC | size: 0x110
# WaveFileAiff::decodeIeeeExtended(unsigned short, unsigned long, unsigned long)
.fn decodeIeeeExtended__12WaveFileAiffFUsUlUl, global
/* 8140F9BC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8140F9C0 | 7C 08 02 A6 */	mflr r0
/* 8140F9C4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8140F9C8 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8140F9CC | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8140F9D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140F9D4 | 48 1E 9A F1 */	bl _savegpr_28
/* 8140F9D8 | 3C 00 43 30 */	lis r0, 0x4330
/* 8140F9DC | 54 9F 04 7F */	clrlwi. r31, r4, 17
/* 8140F9E0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8140F9E4 | 7C 9C 23 78 */	mr r28, r4
/* 8140F9E8 | 7C BD 2B 78 */	mr r29, r5
/* 8140F9EC | 7C DE 33 78 */	mr r30, r6
/* 8140F9F0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8140F9F4 | 40 82 00 1C */	bne .L_8140FA10
/* 8140F9F8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8140F9FC | 40 82 00 14 */	bne .L_8140FA10
/* 8140FA00 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8140FA04 | 40 82 00 0C */	bne .L_8140FA10
/* 8140FA08 | CB E2 89 08 */	lfd f31, lbl_81694D08@sda21(r0)
/* 8140FA0C | 48 00 00 8C */	b .L_8140FA98
.L_8140FA10:
/* 8140FA10 | 2C 1F 7F FF */	cmpwi r31, 0x7fff
/* 8140FA14 | 40 82 00 20 */	bne .L_8140FA34
/* 8140FA18 | 3C 60 81 66 */	lis r3, lbl_81658BF0@ha
/* 8140FA1C | 3C A0 81 66 */	lis r5, lbl_81658CD5@ha
/* 8140FA20 | 38 63 8B F0 */	addi r3, r3, lbl_81658BF0@l
/* 8140FA24 | 38 80 01 D5 */	li r4, 0x1d5
/* 8140FA28 | 38 A5 8C D5 */	addi r5, r5, lbl_81658CD5@l
/* 8140FA2C | 4C C6 31 82 */	crclr cr1eq
/* 8140FA30 | 48 1E 93 89 */	bl fn_815F8DB8
.L_8140FA34:
/* 8140FA34 | 3B FF BF E2 */	subi r31, r31, 0x401e
/* 8140FA38 | C8 22 88 F0 */	lfd f1, lbl_81694CF0@sda21(r0)
/* 8140FA3C | 6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8140FA40 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FA44 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8140FA48 | EC 20 08 28 */	fsubs f1, f0, f1
/* 8140FA4C | 4B FF F3 C9 */	bl pow2__Ff
/* 8140FA50 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8140FA54 | 38 1F FF E0 */	subi r0, r31, 0x20
/* 8140FA58 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8140FA5C | C8 42 89 10 */	lfd f2, lbl_81694D10@sda21(r0)
/* 8140FA60 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8140FA64 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FA68 | EC 60 10 28 */	fsubs f3, f0, f2
/* 8140FA6C | C8 42 88 F0 */	lfd f2, lbl_81694CF0@sda21(r0)
/* 8140FA70 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8140FA74 | EF E3 00 72 */	fmuls f31, f3, f1
/* 8140FA78 | EC 20 10 28 */	fsubs f1, f0, f2
/* 8140FA7C | 4B FF F3 99 */	bl pow2__Ff
/* 8140FA80 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 8140FA84 | C8 42 89 10 */	lfd f2, lbl_81694D10@sda21(r0)
/* 8140FA88 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8140FA8C | EC 00 10 28 */	fsubs f0, f0, f2
/* 8140FA90 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8140FA94 | FF FF 00 2A */	fadd f31, f31, f0
.L_8140FA98:
/* 8140FA98 | 57 80 04 21 */	rlwinm. r0, r28, 0, 16, 16
/* 8140FA9C | 41 82 00 0C */	beq .L_8140FAA8
/* 8140FAA0 | FC 20 F8 50 */	fneg f1, f31
/* 8140FAA4 | 48 00 00 08 */	b .L_8140FAAC
.L_8140FAA8:
/* 8140FAA8 | FC 20 F8 90 */	fmr f1, f31
.L_8140FAAC:
/* 8140FAAC | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8140FAB0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140FAB4 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8140FAB8 | 48 1E 9A 59 */	bl _restgpr_28
/* 8140FABC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8140FAC0 | 7C 08 03 A6 */	mtlr r0
/* 8140FAC4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8140FAC8 | 4E 80 00 20 */	blr
.endfn decodeIeeeExtended__12WaveFileAiffFUsUlUl

# .text:0xE6C | 0x8140FACC | size: 0x1C
# WaveFileWav::WaveFileWav()
.fn __ct__11WaveFileWavFv, global
/* 8140FACC | 3C 80 81 66 */	lis r4, __vt__11WaveFileWav@ha
/* 8140FAD0 | 38 00 00 00 */	li r0, 0x0
/* 8140FAD4 | 38 84 8C E8 */	addi r4, r4, __vt__11WaveFileWav@l
/* 8140FAD8 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 8140FADC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8140FAE0 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 8140FAE4 | 4E 80 00 20 */	blr
.endfn __ct__11WaveFileWavFv

# .text:0xE88 | 0x8140FAE8 | size: 0x248
# WaveFileWav::init(const void*, unsigned long)
.fn init__11WaveFileWavFPCvUl, global
/* 8140FAE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140FAEC | 7C 08 02 A6 */	mflr r0
/* 8140FAF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140FAF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140FAF8 | 48 1E 99 CD */	bl _savegpr_28
/* 8140FAFC | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8140FB00 | 38 A4 00 04 */	addi r5, r4, 0x4
/* 8140FB04 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8140FB08 | 7C 7D 1B 78 */	mr r29, r3
/* 8140FB0C | 3C 06 AD B7 */	subis r0, r6, 0x5249
/* 8140FB10 | 7C 9C 23 78 */	mr r28, r4
/* 8140FB14 | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140FB18 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8140FB1C | 41 82 00 0C */	beq .L_8140FB28
/* 8140FB20 | 38 60 00 00 */	li r3, 0x0
/* 8140FB24 | 48 00 01 F4 */	b .L_8140FD18
.L_8140FB28:
/* 8140FB28 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FB2C | 4B FF F2 9D */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FB30 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140FB34 | 7F DC 1A 14 */	add r30, r28, r3
/* 8140FB38 | 38 C4 00 04 */	addi r6, r4, 0x4
/* 8140FB3C | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8140FB40 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8140FB44 | 3C 03 A8 BF */	subis r0, r3, 0x5741
/* 8140FB48 | 28 00 56 45 */	cmplwi r0, 0x5645
/* 8140FB4C | 41 82 00 0C */	beq .L_8140FB58
/* 8140FB50 | 38 60 00 00 */	li r3, 0x0
/* 8140FB54 | 48 00 01 C4 */	b .L_8140FD18
.L_8140FB58:
/* 8140FB58 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140FB5C | 3C 80 66 6D */	lis r4, 0x666d
/* 8140FB60 | 7F C5 F3 78 */	mr r5, r30
/* 8140FB64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FB68 | 7F E0 30 50 */	subf r31, r0, r6
/* 8140FB6C | 38 84 74 20 */	addi r4, r4, 0x7420
/* 8140FB70 | 4B FF F1 C1 */	bl seekChunk__24BinaryReaderLittleEndianFUlPCv
/* 8140FB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FB78 | 40 82 00 0C */	bne .L_8140FB84
/* 8140FB7C | 38 60 00 00 */	li r3, 0x0
/* 8140FB80 | 48 00 01 98 */	b .L_8140FD18
.L_8140FB84:
/* 8140FB84 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FB88 | 48 00 01 A9 */	bl read16__24BinaryReaderLittleEndianFv
/* 8140FB8C | 7C 7C 1B 78 */	mr r28, r3
/* 8140FB90 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FB94 | 48 00 01 9D */	bl read16__24BinaryReaderLittleEndianFv
/* 8140FB98 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8140FB9C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FBA0 | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 8140FBA4 | 4B FF F2 25 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FBA8 | 90 7D 00 10 */	stw r3, 0x10(r29)
/* 8140FBAC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FBB0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FBB4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FBB8 | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FBBC | 7C 80 22 14 */	add r4, r0, r4
/* 8140FBC0 | 38 04 00 06 */	addi r0, r4, 0x6
/* 8140FBC4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FBC8 | 48 00 01 69 */	bl read16__24BinaryReaderLittleEndianFv
/* 8140FBCC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 8140FBD0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8140FBD4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8140FBD8 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8140FBDC | 41 82 00 0C */	beq .L_8140FBE8
/* 8140FBE0 | 38 60 00 00 */	li r3, 0x0
/* 8140FBE4 | 48 00 01 34 */	b .L_8140FD18
.L_8140FBE8:
/* 8140FBE8 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 8140FBEC | 41 82 00 0C */	beq .L_8140FBF8
/* 8140FBF0 | 38 60 00 00 */	li r3, 0x0
/* 8140FBF4 | 48 00 01 24 */	b .L_8140FD18
.L_8140FBF8:
/* 8140FBF8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140FBFC | 3C 80 73 6D */	lis r4, 0x736d
/* 8140FC00 | 7F C5 F3 78 */	mr r5, r30
/* 8140FC04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FC08 | 7C 00 FA 14 */	add r0, r0, r31
/* 8140FC0C | 38 84 70 6C */	addi r4, r4, 0x706c
/* 8140FC10 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FC14 | 4B FF F1 1D */	bl seekChunk__24BinaryReaderLittleEndianFUlPCv
/* 8140FC18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FC1C | 41 82 00 78 */	beq .L_8140FC94
/* 8140FC20 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FC24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FC28 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FC2C | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FC30 | 7C 80 22 14 */	add r4, r0, r4
/* 8140FC34 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 8140FC38 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FC3C | 4B FF F1 8D */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FC40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FC44 | 41 82 00 44 */	beq .L_8140FC88
/* 8140FC48 | 38 00 00 01 */	li r0, 0x1
/* 8140FC4C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FC50 | 98 1D 00 18 */	stb r0, 0x18(r29)
/* 8140FC54 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FC58 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FC5C | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FC60 | 7C 80 22 14 */	add r4, r0, r4
/* 8140FC64 | 38 04 00 0C */	addi r0, r4, 0xc
/* 8140FC68 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FC6C | 4B FF F1 5D */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FC70 | 90 7D 00 1C */	stw r3, 0x1c(r29)
/* 8140FC74 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FC78 | 4B FF F1 51 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FC7C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140FC80 | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 8140FC84 | 48 00 00 18 */	b .L_8140FC9C
.L_8140FC88:
/* 8140FC88 | 38 00 00 00 */	li r0, 0x0
/* 8140FC8C | 98 1D 00 18 */	stb r0, 0x18(r29)
/* 8140FC90 | 48 00 00 0C */	b .L_8140FC9C
.L_8140FC94:
/* 8140FC94 | 38 00 00 00 */	li r0, 0x0
/* 8140FC98 | 98 1D 00 18 */	stb r0, 0x18(r29)
.L_8140FC9C:
/* 8140FC9C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140FCA0 | 3C 80 64 61 */	lis r4, 0x6461
/* 8140FCA4 | 7F C5 F3 78 */	mr r5, r30
/* 8140FCA8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FCAC | 7C 00 FA 14 */	add r0, r0, r31
/* 8140FCB0 | 38 84 74 61 */	addi r4, r4, 0x7461
/* 8140FCB4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FCB8 | 4B FF F0 79 */	bl seekChunk__24BinaryReaderLittleEndianFUlPCv
/* 8140FCBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FCC0 | 40 82 00 0C */	bne .L_8140FCCC
/* 8140FCC4 | 38 60 00 00 */	li r3, 0x0
/* 8140FCC8 | 48 00 00 50 */	b .L_8140FD18
.L_8140FCCC:
/* 8140FCCC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FCD0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FCD4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FCD8 | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FCDC | 7C 80 22 14 */	add r4, r0, r4
/* 8140FCE0 | 38 04 FF FC */	subi r0, r4, 0x4
/* 8140FCE4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FCE8 | 4B FF F0 E1 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FCEC | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8140FCF0 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8140FCF4 | 7C 83 23 96 */	divwu r4, r3, r4
/* 8140FCF8 | 38 60 00 01 */	li r3, 0x1
/* 8140FCFC | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8140FD00 | 7C 00 01 94 */	addze r0, r0
/* 8140FD04 | 7C 04 03 96 */	divwu r0, r4, r0
/* 8140FD08 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8140FD0C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FD10 | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 8140FD14 | 90 1D 00 24 */	stw r0, 0x24(r29)
.L_8140FD18:
/* 8140FD18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140FD1C | 48 1E 97 F5 */	bl _restgpr_28
/* 8140FD20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140FD24 | 7C 08 03 A6 */	mtlr r0
/* 8140FD28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140FD2C | 4E 80 00 20 */	blr
.endfn init__11WaveFileWavFPCvUl

# .text:0x10D0 | 0x8140FD30 | size: 0x28
# BinaryReaderLittleEndian::read16()
.fn read16__24BinaryReaderLittleEndianFv, global
/* 8140FD30 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8140FD34 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 8140FD38 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8140FD3C | 38 85 00 01 */	addi r4, r5, 0x1
/* 8140FD40 | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 8140FD44 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8140FD48 | 88 66 00 01 */	lbz r3, 0x1(r6)
/* 8140FD4C | 50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 8140FD50 | 7C 03 03 78 */	mr r3, r0
/* 8140FD54 | 4E 80 00 20 */	blr
.endfn read16__24BinaryReaderLittleEndianFv

# .text:0x10F8 | 0x8140FD58 | size: 0x31C
# WaveFileWav::checkFile(const void*, unsigned long, bool)
.fn checkFile__11WaveFileWavFPCvUlb, global
/* 8140FD58 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8140FD5C | 7C 08 02 A6 */	mflr r0
/* 8140FD60 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8140FD64 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8140FD68 | 48 1E 97 55 */	bl _savegpr_26
/* 8140FD6C | 38 04 00 04 */	addi r0, r4, 0x4
/* 8140FD70 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8140FD74 | 7C 7B 1B 78 */	mr r27, r3
/* 8140FD78 | 7C 9C 23 78 */	mr r28, r4
/* 8140FD7C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FD80 | 7C BD 2B 78 */	mr r29, r5
/* 8140FD84 | 7C DA 33 78 */	mr r26, r6
/* 8140FD88 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8140FD8C | 3C 03 AD B7 */	subis r0, r3, 0x5249
/* 8140FD90 | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140FD94 | 41 82 00 0C */	beq .L_8140FDA0
/* 8140FD98 | 38 60 00 00 */	li r3, 0x0
/* 8140FD9C | 48 00 02 C0 */	b .L_8141005C
.L_8140FDA0:
/* 8140FDA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FDA4 | 4B FF F0 25 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FDA8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8140FDAC | 40 82 00 24 */	bne .L_8140FDD0
/* 8140FDB0 | 38 83 00 27 */	addi r4, r3, 0x27
/* 8140FDB4 | 38 1D 00 1F */	addi r0, r29, 0x1f
/* 8140FDB8 | 54 84 00 34 */	clrrwi r4, r4, 5
/* 8140FDBC | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8140FDC0 | 7C 04 00 40 */	cmplw r4, r0
/* 8140FDC4 | 41 82 00 0C */	beq .L_8140FDD0
/* 8140FDC8 | 38 60 00 00 */	li r3, 0x0
/* 8140FDCC | 48 00 02 90 */	b .L_8141005C
.L_8140FDD0:
/* 8140FDD0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140FDD4 | 7F DC 1A 14 */	add r30, r28, r3
/* 8140FDD8 | 38 C4 00 04 */	addi r6, r4, 0x4
/* 8140FDDC | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8140FDE0 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8140FDE4 | 3C 03 A8 BF */	subis r0, r3, 0x5741
/* 8140FDE8 | 28 00 56 45 */	cmplwi r0, 0x5645
/* 8140FDEC | 41 82 00 0C */	beq .L_8140FDF8
/* 8140FDF0 | 38 60 00 00 */	li r3, 0x0
/* 8140FDF4 | 48 00 02 68 */	b .L_8141005C
.L_8140FDF8:
/* 8140FDF8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140FDFC | 3C 80 66 6D */	lis r4, 0x666d
/* 8140FE00 | 7F C5 F3 78 */	mr r5, r30
/* 8140FE04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FE08 | 7F E0 30 50 */	subf r31, r0, r6
/* 8140FE0C | 38 84 74 20 */	addi r4, r4, 0x7420
/* 8140FE10 | 4B FF EF 21 */	bl seekChunk__24BinaryReaderLittleEndianFUlPCv
/* 8140FE14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FE18 | 40 82 00 0C */	bne .L_8140FE24
/* 8140FE1C | 38 60 00 00 */	li r3, 0x0
/* 8140FE20 | 48 00 02 3C */	b .L_8141005C
.L_8140FE24:
/* 8140FE24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FE28 | 4B FF FF 09 */	bl read16__24BinaryReaderLittleEndianFv
/* 8140FE2C | 7C 7A 1B 78 */	mr r26, r3
/* 8140FE30 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FE34 | 4B FF FE FD */	bl read16__24BinaryReaderLittleEndianFv
/* 8140FE38 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8140FE3C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FE40 | 90 1B 00 0C */	stw r0, 0xc(r27)
/* 8140FE44 | 4B FF EF 85 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FE48 | 90 7B 00 10 */	stw r3, 0x10(r27)
/* 8140FE4C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FE50 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FE54 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FE58 | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FE5C | 7C 80 22 14 */	add r4, r0, r4
/* 8140FE60 | 38 04 00 06 */	addi r0, r4, 0x6
/* 8140FE64 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FE68 | 4B FF FE C9 */	bl read16__24BinaryReaderLittleEndianFv
/* 8140FE6C | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8140FE70 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8140FE74 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8140FE78 | 90 7B 00 08 */	stw r3, 0x8(r27)
/* 8140FE7C | 41 82 00 0C */	beq .L_8140FE88
/* 8140FE80 | 38 60 00 00 */	li r3, 0x0
/* 8140FE84 | 48 00 01 D8 */	b .L_8141005C
.L_8140FE88:
/* 8140FE88 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8140FE8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140FE90 | 40 82 00 0C */	bne .L_8140FE9C
/* 8140FE94 | 38 60 00 00 */	li r3, 0x0
/* 8140FE98 | 48 00 01 C4 */	b .L_8141005C
.L_8140FE9C:
/* 8140FE9C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140FEA0 | 40 81 00 0C */	ble .L_8140FEAC
/* 8140FEA4 | 38 60 00 00 */	li r3, 0x0
/* 8140FEA8 | 48 00 01 B4 */	b .L_8141005C
.L_8140FEAC:
/* 8140FEAC | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8140FEB0 | 28 00 BB 80 */	cmplwi r0, 0xbb80
/* 8140FEB4 | 41 81 00 0C */	bgt .L_8140FEC0
/* 8140FEB8 | 28 00 0F A0 */	cmplwi r0, 0xfa0
/* 8140FEBC | 40 80 00 0C */	bge .L_8140FEC8
.L_8140FEC0:
/* 8140FEC0 | 38 60 00 00 */	li r3, 0x0
/* 8140FEC4 | 48 00 01 98 */	b .L_8141005C
.L_8140FEC8:
/* 8140FEC8 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 8140FECC | 41 82 00 0C */	beq .L_8140FED8
/* 8140FED0 | 38 60 00 00 */	li r3, 0x0
/* 8140FED4 | 48 00 01 88 */	b .L_8141005C
.L_8140FED8:
/* 8140FED8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140FEDC | 3C 80 73 6D */	lis r4, 0x736d
/* 8140FEE0 | 7F C5 F3 78 */	mr r5, r30
/* 8140FEE4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FEE8 | 7C 00 FA 14 */	add r0, r0, r31
/* 8140FEEC | 38 84 70 6C */	addi r4, r4, 0x706c
/* 8140FEF0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FEF4 | 4B FF EE 3D */	bl seekChunk__24BinaryReaderLittleEndianFUlPCv
/* 8140FEF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FEFC | 41 82 00 78 */	beq .L_8140FF74
/* 8140FF00 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FF04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FF08 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FF0C | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FF10 | 7C 80 22 14 */	add r4, r0, r4
/* 8140FF14 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 8140FF18 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FF1C | 4B FF EE AD */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FF20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FF24 | 41 82 00 44 */	beq .L_8140FF68
/* 8140FF28 | 38 00 00 01 */	li r0, 0x1
/* 8140FF2C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FF30 | 98 1B 00 18 */	stb r0, 0x18(r27)
/* 8140FF34 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FF38 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FF3C | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FF40 | 7C 80 22 14 */	add r4, r0, r4
/* 8140FF44 | 38 04 00 0C */	addi r0, r4, 0xc
/* 8140FF48 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FF4C | 4B FF EE 7D */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FF50 | 90 7B 00 1C */	stw r3, 0x1c(r27)
/* 8140FF54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FF58 | 4B FF EE 71 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FF5C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140FF60 | 90 1B 00 20 */	stw r0, 0x20(r27)
/* 8140FF64 | 48 00 00 18 */	b .L_8140FF7C
.L_8140FF68:
/* 8140FF68 | 38 00 00 00 */	li r0, 0x0
/* 8140FF6C | 98 1B 00 18 */	stb r0, 0x18(r27)
/* 8140FF70 | 48 00 00 0C */	b .L_8140FF7C
.L_8140FF74:
/* 8140FF74 | 38 00 00 00 */	li r0, 0x0
/* 8140FF78 | 98 1B 00 18 */	stb r0, 0x18(r27)
.L_8140FF7C:
/* 8140FF7C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140FF80 | 3C 80 64 61 */	lis r4, 0x6461
/* 8140FF84 | 7F C5 F3 78 */	mr r5, r30
/* 8140FF88 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FF8C | 7C 00 FA 14 */	add r0, r0, r31
/* 8140FF90 | 38 84 74 61 */	addi r4, r4, 0x7461
/* 8140FF94 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FF98 | 4B FF ED 99 */	bl seekChunk__24BinaryReaderLittleEndianFUlPCv
/* 8140FF9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140FFA0 | 40 82 00 0C */	bne .L_8140FFAC
/* 8140FFA4 | 38 60 00 00 */	li r3, 0x0
/* 8140FFA8 | 48 00 00 B4 */	b .L_8141005C
.L_8140FFAC:
/* 8140FFAC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140FFB0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140FFB4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8140FFB8 | 7C 04 00 50 */	subf r0, r4, r0
/* 8140FFBC | 7C 80 22 14 */	add r4, r0, r4
/* 8140FFC0 | 38 04 FF FC */	subi r0, r4, 0x4
/* 8140FFC4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8140FFC8 | 4B FF EE 01 */	bl read32__24BinaryReaderLittleEndianFv
/* 8140FFCC | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8140FFD0 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 8140FFD4 | 7C A3 03 96 */	divwu r5, r3, r0
/* 8140FFD8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8140FFDC | 7C 83 1E 70 */	srawi r3, r4, 3
/* 8140FFE0 | 7C 63 01 94 */	addze r3, r3
/* 8140FFE4 | 7C A5 1B 96 */	divwu r5, r5, r3
/* 8140FFE8 | 90 BB 00 14 */	stw r5, 0x14(r27)
/* 8140FFEC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8140FFF0 | 7C 7C 20 50 */	subf r3, r28, r4
/* 8140FFF4 | 90 9B 00 28 */	stw r4, 0x28(r27)
/* 8140FFF8 | 7C 63 E8 50 */	subf r3, r3, r29
/* 8140FFFC | 7C 03 03 96 */	divwu r0, r3, r0
/* 81410000 | 90 9B 00 24 */	stw r4, 0x24(r27)
/* 81410004 | 7C 00 28 40 */	cmplw r0, r5
/* 81410008 | 40 80 00 0C */	bge .L_81410014
/* 8141000C | 38 60 00 00 */	li r3, 0x0
/* 81410010 | 48 00 00 4C */	b .L_8141005C
.L_81410014:
/* 81410014 | 88 1B 00 18 */	lbz r0, 0x18(r27)
/* 81410018 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141001C | 41 82 00 3C */	beq .L_81410058
/* 81410020 | 80 7B 00 20 */	lwz r3, 0x20(r27)
/* 81410024 | 80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 81410028 | 7C 00 18 00 */	cmpw r0, r3
/* 8141002C | 41 80 00 0C */	blt .L_81410038
/* 81410030 | 38 60 00 00 */	li r3, 0x0
/* 81410034 | 48 00 00 28 */	b .L_8141005C
.L_81410038:
/* 81410038 | 7C 00 28 00 */	cmpw r0, r5
/* 8141003C | 41 80 00 0C */	blt .L_81410048
/* 81410040 | 38 60 00 00 */	li r3, 0x0
/* 81410044 | 48 00 00 18 */	b .L_8141005C
.L_81410048:
/* 81410048 | 7C 03 28 00 */	cmpw r3, r5
/* 8141004C | 40 81 00 0C */	ble .L_81410058
/* 81410050 | 38 60 00 00 */	li r3, 0x0
/* 81410054 | 48 00 00 08 */	b .L_8141005C
.L_81410058:
/* 81410058 | 38 60 00 01 */	li r3, 0x1
.L_8141005C:
/* 8141005C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81410060 | 48 1E 94 A9 */	bl _restgpr_26
/* 81410064 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81410068 | 7C 08 03 A6 */	mtlr r0
/* 8141006C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81410070 | 4E 80 00 20 */	blr
.endfn checkFile__11WaveFileWavFPCvUlb

# .text:0x1414 | 0x81410074 | size: 0x7C
# WaveFileWav::readData(short*, long)
.fn readData__11WaveFileWavFPsl, global
/* 81410074 | 81 03 00 28 */	lwz r8, 0x28(r3)
/* 81410078 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8141007C | 40 82 00 0C */	bne .L_81410088
/* 81410080 | 38 60 00 00 */	li r3, 0x0
/* 81410084 | 4E 80 00 20 */	blr
.L_81410088:
/* 81410088 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8141008C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81410090 | 80 E3 00 24 */	lwz r7, 0x24(r3)
/* 81410094 | 7C 06 01 D6 */	mullw r0, r6, r0
/* 81410098 | 7C C7 40 50 */	subf r6, r7, r8
/* 8141009C | 7C C6 0E 70 */	srawi r6, r6, 1
/* 814100A0 | 7C C6 01 94 */	addze r6, r6
/* 814100A4 | 7C 06 00 50 */	subf r0, r6, r0
/* 814100A8 | 7C 05 00 00 */	cmpw r5, r0
/* 814100AC | 40 81 00 08 */	ble .L_814100B4
/* 814100B0 | 7C 05 03 78 */	mr r5, r0
.L_814100B4:
/* 814100B4 | 7C A9 03 A6 */	mtctr r5
/* 814100B8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814100BC | 40 81 00 2C */	ble .L_814100E8
.L_814100C0:
/* 814100C0 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 814100C4 | A0 C6 00 00 */	lhz r6, 0x0(r6)
/* 814100C8 | 7C C0 46 70 */	srawi r0, r6, 8
/* 814100CC | 50 C0 44 2E */	rlwimi r0, r6, 8, 16, 23
/* 814100D0 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814100D4 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814100D8 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 814100DC | 38 06 00 02 */	addi r0, r6, 0x2
/* 814100E0 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 814100E4 | 42 00 FF DC */	bdnz .L_814100C0
.L_814100E8:
/* 814100E8 | 7C A3 2B 78 */	mr r3, r5
/* 814100EC | 4E 80 00 20 */	blr
.endfn readData__11WaveFileWavFPsl

# .text:0x1490 | 0x814100F0 | size: 0x1C
# WaveFileWav::getLoopEnd() const
.fn getLoopEnd__11WaveFileWavCFv, global
/* 814100F0 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 814100F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814100F8 | 41 82 00 0C */	beq .L_81410104
/* 814100FC | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81410100 | 4E 80 00 20 */	blr
.L_81410104:
/* 81410104 | 38 60 FF FF */	li r3, -0x1
/* 81410108 | 4E 80 00 20 */	blr
.endfn getLoopEnd__11WaveFileWavCFv

# .text:0x14AC | 0x8141010C | size: 0x1C
# WaveFileWav::getLoopStart() const
.fn getLoopStart__11WaveFileWavCFv, global
/* 8141010C | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 81410110 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410114 | 41 82 00 0C */	beq .L_81410120
/* 81410118 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8141011C | 4E 80 00 20 */	blr
.L_81410120:
/* 81410120 | 38 60 FF FF */	li r3, -0x1
/* 81410124 | 4E 80 00 20 */	blr
.endfn getLoopStart__11WaveFileWavCFv

# .text:0x14C8 | 0x81410128 | size: 0x8
# WaveFileWav::isLoop() const
.fn isLoop__11WaveFileWavCFv, global
/* 81410128 | 88 63 00 18 */	lbz r3, 0x18(r3)
/* 8141012C | 4E 80 00 20 */	blr
.endfn isLoop__11WaveFileWavCFv

# .text:0x14D0 | 0x81410130 | size: 0x14
# WaveFileWav::setDataCur(unsigned long)
.fn setDataCur__11WaveFileWavFUl, global
/* 81410130 | 80 A3 00 24 */	lwz r5, 0x24(r3)
/* 81410134 | 54 80 08 3C */	slwi r0, r4, 1
/* 81410138 | 7C 05 02 14 */	add r0, r5, r0
/* 8141013C | 90 03 00 28 */	stw r0, 0x28(r3)
/* 81410140 | 4E 80 00 20 */	blr
.endfn setDataCur__11WaveFileWavFUl

# .text:0x14E4 | 0x81410144 | size: 0x8
# WaveFileWav::getDataCur() const
.fn getDataCur__11WaveFileWavCFv, global
/* 81410144 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 81410148 | 4E 80 00 20 */	blr
.endfn getDataCur__11WaveFileWavCFv

# .text:0x14EC | 0x8141014C | size: 0x8
# WaveFileWav::getDataBase() const
.fn getDataBase__11WaveFileWavCFv, global
/* 8141014C | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81410150 | 4E 80 00 20 */	blr
.endfn getDataBase__11WaveFileWavCFv

# .text:0x14F4 | 0x81410154 | size: 0x8
# WaveFileWav::getFrames() const
.fn getFrames__11WaveFileWavCFv, global
/* 81410154 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81410158 | 4E 80 00 20 */	blr
.endfn getFrames__11WaveFileWavCFv

# .text:0x14FC | 0x8141015C | size: 0x8
# WaveFileWav::getBit() const
.fn getBit__11WaveFileWavCFv, global
/* 8141015C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81410160 | 4E 80 00 20 */	blr
.endfn getBit__11WaveFileWavCFv

# .text:0x1504 | 0x81410164 | size: 0x1C
# WaveFileAiff::getLoopEnd() const
.fn getLoopEnd__12WaveFileAiffCFv, global
/* 81410164 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81410168 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141016C | 41 82 00 0C */	beq .L_81410178
/* 81410170 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81410174 | 4E 80 00 20 */	blr
.L_81410178:
/* 81410178 | 38 60 FF FF */	li r3, -0x1
/* 8141017C | 4E 80 00 20 */	blr
.endfn getLoopEnd__12WaveFileAiffCFv

# .text:0x1520 | 0x81410180 | size: 0x1C
# WaveFileAiff::getLoopStart() const
.fn getLoopStart__12WaveFileAiffCFv, global
/* 81410180 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81410184 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81410188 | 41 82 00 0C */	beq .L_81410194
/* 8141018C | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81410190 | 4E 80 00 20 */	blr
.L_81410194:
/* 81410194 | 38 60 FF FF */	li r3, -0x1
/* 81410198 | 4E 80 00 20 */	blr
.endfn getLoopStart__12WaveFileAiffCFv

# .text:0x153C | 0x8141019C | size: 0x8
# WaveFileAiff::isLoop() const
.fn isLoop__12WaveFileAiffCFv, global
/* 8141019C | 88 63 00 1C */	lbz r3, 0x1c(r3)
/* 814101A0 | 4E 80 00 20 */	blr
.endfn isLoop__12WaveFileAiffCFv

# .text:0x1544 | 0x814101A4 | size: 0x14
# WaveFileAiff::setDataCur(unsigned long)
.fn setDataCur__12WaveFileAiffFUl, global
/* 814101A4 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 814101A8 | 54 80 08 3C */	slwi r0, r4, 1
/* 814101AC | 7C 05 02 14 */	add r0, r5, r0
/* 814101B0 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 814101B4 | 4E 80 00 20 */	blr
.endfn setDataCur__12WaveFileAiffFUl

# .text:0x1558 | 0x814101B8 | size: 0x8
# WaveFileAiff::getDataCur() const
.fn getDataCur__12WaveFileAiffCFv, global
/* 814101B8 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 814101BC | 4E 80 00 20 */	blr
.endfn getDataCur__12WaveFileAiffCFv

# .text:0x1560 | 0x814101C0 | size: 0x8
# WaveFileAiff::getDataBase() const
.fn getDataBase__12WaveFileAiffCFv, global
/* 814101C0 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814101C4 | 4E 80 00 20 */	blr
.endfn getDataBase__12WaveFileAiffCFv

# .text:0x1568 | 0x814101C8 | size: 0x8
# WaveFileAiff::getFrames() const
.fn getFrames__12WaveFileAiffCFv, global
/* 814101C8 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 814101CC | 4E 80 00 20 */	blr
.endfn getFrames__12WaveFileAiffCFv

# .text:0x1570 | 0x814101D0 | size: 0x8
# WaveFileAiff::getBit() const
.fn getBit__12WaveFileAiffCFv, global
/* 814101D0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814101D4 | 4E 80 00 20 */	blr
.endfn getBit__12WaveFileAiffCFv

# 0x816133F0..0x81613408 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x816133F0 | size: 0x18
.obj lbl_816133F0, global
	.float 0.6931472
	.float 0.24022661
	.float 0.055502914
	.float 0.009625022
	.float 0.0013131053
	.float 0.00018300806
.endobj lbl_816133F0

# 0x81658BF0..0x81658D90 | size: 0x1A0
.data
.balign 8

# .data:0x0 | 0x81658BF0 | size: 0xE5
.obj lbl_81658BF0, global
	.4byte 0x41756469
	.4byte 0x6F576176
	.4byte 0x65557469
	.4byte 0x6C697479
	.4byte 0x2E637070
	.4byte 0x00636875
	.4byte 0x6E6B4944
	.4byte 0x203D3D20
	.4byte 0x27464F52
	.4byte 0x4D270066
	.4byte 0x6F726D61
	.4byte 0x74203D3D
	.4byte 0x20274149
	.4byte 0x46462700
	.4byte 0x6D426974
	.4byte 0x73203D3D
	.4byte 0x20313600
	.4byte 0x556E7375
	.4byte 0x70706F72
	.4byte 0x74656420
	.4byte 0x4C6F6F70
	.4byte 0x4D6F6465
	.4byte 0x20256400
	.4byte 0x64617461
	.4byte 0x4F666673
	.4byte 0x6574203D
	.4byte 0x3D203000
	.4byte 0x64617461
	.4byte 0x426C6F63
	.4byte 0x6B53697A
	.4byte 0x65203D3D
	.4byte 0x20300028
	.4byte 0x7265696E
	.4byte 0x74657270
	.4byte 0x7265745F
	.4byte 0x63617374
	.4byte 0x3C753332
	.4byte 0x3E287372
	.4byte 0x63292026
	.4byte 0x20307830
	.4byte 0x3329203D
	.4byte 0x3D203000
	.4byte 0x28726569
	.4byte 0x6E746572
	.4byte 0x70726574
	.4byte 0x5F636173
	.4byte 0x743C7533
	.4byte 0x323E2864
	.4byte 0x65737429
	.4byte 0x20262030
	.4byte 0x78303329
	.4byte 0x203D3D20
	.4byte 0x30002873
	.4byte 0x697A6520
	.4byte 0x26203078
	.4byte 0x30662920
	.4byte 0x3D3D2030
	.byte 0x00
.endobj lbl_81658BF0

# .data:0xE5 | 0x81658CD5 | size: 0x13
.obj lbl_81658CD5, global
	.4byte 0x6578706F
	.4byte 0x6E20213D
	.4byte 0x20307837
	.4byte 0x46464600
	.byte 0x00, 0x00, 0x00
.endobj lbl_81658CD5

# .data:0xF8 | 0x81658CE8 | size: 0x38
# WaveFileWav::__vtable
.obj __vt__11WaveFileWav, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__11WaveFileWavFv
	.4byte getBit__11WaveFileWavCFv
	.4byte getChannels__11WaveFileWavCFv
	.4byte getSamplingRate__11WaveFileWavCFv
	.4byte getFrames__11WaveFileWavCFv
	.4byte getDataBase__11WaveFileWavCFv
	.4byte getDataCur__11WaveFileWavCFv
	.4byte isLoop__11WaveFileWavCFv
	.4byte getLoopStart__11WaveFileWavCFv
	.4byte getLoopEnd__11WaveFileWavCFv
	.4byte readData__11WaveFileWavFPsl
	.4byte setDataCur__11WaveFileWavFUl
.endobj __vt__11WaveFileWav

# .data:0x130 | 0x81658D20 | size: 0x38
# WaveFileAiff::__vtable
.obj __vt__12WaveFileAiff, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__12WaveFileAiffFv
	.4byte getBit__12WaveFileAiffCFv
	.4byte getChannels__12WaveFileAiffCFv
	.4byte getSamplingRate__12WaveFileAiffCFv
	.4byte getFrames__12WaveFileAiffCFv
	.4byte getDataBase__12WaveFileAiffCFv
	.4byte getDataCur__12WaveFileAiffCFv
	.4byte isLoop__12WaveFileAiffCFv
	.4byte getLoopStart__12WaveFileAiffCFv
	.4byte getLoopEnd__12WaveFileAiffCFv
	.4byte readData__12WaveFileAiffFPsl
	.4byte setDataCur__12WaveFileAiffFUl
.endobj __vt__12WaveFileAiff

# .data:0x168 | 0x81658D58 | size: 0x38
# WaveFile::__vtable
.obj __vt__8WaveFile, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__8WaveFileFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__8WaveFile

# 0x81694CD0..0x81694D18 | size: 0x48
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694CD0 | size: 0x8
.obj lbl_81694CD0, global
	.4byte 0x00000000
	.4byte 0x3F000000
.endobj lbl_81694CD0

# .sdata2:0x8 | 0x81694CD8 | size: 0x8
.obj lbl_81694CD8, global
	.4byte 0x3F800000
	.4byte 0x3F3504F3
.endobj lbl_81694CD8

# .sdata2:0x10 | 0x81694CE0 | size: 0x4
.obj lbl_81694CE0, global
	.float 0.5
.endobj lbl_81694CE0

# .sdata2:0x14 | 0x81694CE4 | size: 0x4
.obj lbl_81694CE4, global
	.float 0
.endobj lbl_81694CE4

# .sdata2:0x18 | 0x81694CE8 | size: 0x4
.obj lbl_81694CE8, global
	.float 0.75
.endobj lbl_81694CE8

# .sdata2:0x1C | 0x81694CEC | size: 0x4
.obj lbl_81694CEC, global
	.float 0.25
.endobj lbl_81694CEC

# .sdata2:0x20 | 0x81694CF0 | size: 0x8
.obj lbl_81694CF0, global
	.double 4503601774854144
.endobj lbl_81694CF0

# .sdata2:0x28 | 0x81694CF8 | size: 0x8
.obj lbl_81694CF8, global
	.double 48000
.endobj lbl_81694CF8

# .sdata2:0x30 | 0x81694D00 | size: 0x8
.obj lbl_81694D00, global
	.double 4000
.endobj lbl_81694D00

# .sdata2:0x38 | 0x81694D08 | size: 0x8
.obj lbl_81694D08, global
	.double 0
.endobj lbl_81694D08

# .sdata2:0x40 | 0x81694D10 | size: 0x8
.obj lbl_81694D10, global
	.double 4503599627370496
.endobj lbl_81694D10

# 0x81697298..0x816972A0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697298 | size: 0x8
.obj lbl_81697298, global
	.4byte 0x72657400
	.4byte 0x00000000
.endobj lbl_81697298
