.include "macros.inc"
.file "iplNandMeta.cpp"

# 0x8133CC34..0x8133D234 | size: 0x600
.text
.balign 4

# .text:0x0 | 0x8133CC34 | size: 0x90
# ipl::nand::MetaFile::MetaFile(EGG::Heap*, const char*, ARCHandle*, unsigned long long, int, unsigned long, void (*)(void*), void*, int)
.fn __ct__Q33ipl4nand8MetaFileFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi, global
/* 8133CC34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133CC38 | 7C 08 02 A6 */	mflr r0
/* 8133CC3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133CC40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133CC44 | 48 2B C8 79 */	bl _savegpr_26
/* 8133CC48 | 83 A1 00 28 */	lwz r29, 0x28(r1)
/* 8133CC4C | 7C FC 3B 78 */	mr r28, r7
/* 8133CC50 | 7D 1B 43 78 */	mr r27, r8
/* 8133CC54 | 7D 28 4B 78 */	mr r8, r9
/* 8133CC58 | 7D 49 53 78 */	mr r9, r10
/* 8133CC5C | 83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 8133CC60 | 83 E1 00 30 */	lwz r31, 0x30(r1)
/* 8133CC64 | 7C 7A 1B 78 */	mr r26, r3
/* 8133CC68 | 38 E0 00 00 */	li r7, 0x0
/* 8133CC6C | 39 40 00 00 */	li r10, 0x0
/* 8133CC70 | 4B FF E6 C5 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
/* 8133CC74 | 3C 60 81 63 */	lis r3, __vt__Q33ipl4nand8MetaFile@ha
/* 8133CC78 | 38 00 00 00 */	li r0, 0x0
/* 8133CC7C | 38 63 4E 3C */	addi r3, r3, __vt__Q33ipl4nand8MetaFile@l
/* 8133CC80 | 38 80 FF FF */	li r4, -0x1
/* 8133CC84 | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 8133CC88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133CC8C | 7F 43 D3 78 */	mr r3, r26
/* 8133CC90 | 90 9A 01 94 */	stw r4, 0x194(r26)
/* 8133CC94 | 93 7A 01 9C */	stw r27, 0x19c(r26)
/* 8133CC98 | 93 9A 01 98 */	stw r28, 0x198(r26)
/* 8133CC9C | 90 1A 01 A0 */	stw r0, 0x1a0(r26)
/* 8133CCA0 | 93 FA 01 A4 */	stw r31, 0x1a4(r26)
/* 8133CCA4 | 98 1A 01 A8 */	stb r0, 0x1a8(r26)
/* 8133CCA8 | 93 BA 01 AC */	stw r29, 0x1ac(r26)
/* 8133CCAC | 93 DA 01 B0 */	stw r30, 0x1b0(r26)
/* 8133CCB0 | 48 2B C8 59 */	bl _restgpr_26
/* 8133CCB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133CCB8 | 7C 08 03 A6 */	mtlr r0
/* 8133CCBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133CCC0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand8MetaFileFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi

# .text:0x90 | 0x8133CCC4 | size: 0x58
# ipl::nand::MetaFile::~MetaFile()
.fn __dt__Q33ipl4nand8MetaFileFv, global
/* 8133CCC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CCC8 | 7C 08 02 A6 */	mflr r0
/* 8133CCCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CCD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CCD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CCD8 | 7C 9F 23 78 */	mr r31, r4
/* 8133CCDC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133CCE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8133CCE4 | 41 82 00 1C */	beq .L_8133CD00
/* 8133CCE8 | 38 80 00 00 */	li r4, 0x0
/* 8133CCEC | 4B FF E7 C9 */	bl __dt__Q33ipl4nand4FileFv
/* 8133CCF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133CCF4 | 40 81 00 0C */	ble .L_8133CD00
/* 8133CCF8 | 7F C3 F3 78 */	mr r3, r30
/* 8133CCFC | 48 2B B3 E9 */	bl __dl__FPv
.L_8133CD00:
/* 8133CD00 | 7F C3 F3 78 */	mr r3, r30
/* 8133CD04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133CD08 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133CD0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133CD10 | 7C 08 03 A6 */	mtlr r0
/* 8133CD14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133CD18 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand8MetaFileFv

# .text:0xE8 | 0x8133CD1C | size: 0xC4
# ipl::nand::MetaFile::openNandFile_()
.fn openNandFile___Q33ipl4nand8MetaFileFv, global
/* 8133CD1C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133CD20 | 7C 08 02 A6 */	mflr r0
/* 8133CD24 | 3C 80 81 63 */	lis r4, lbl_81634E10@ha
/* 8133CD28 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8133CD2C | 38 00 FF FF */	li r0, -0x1
/* 8133CD30 | 38 84 4E 10 */	addi r4, r4, lbl_81634E10@l
/* 8133CD34 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8133CD38 | 7C 7F 1B 78 */	mr r31, r3
/* 8133CD3C | 80 A3 01 98 */	lwz r5, 0x198(r3)
/* 8133CD40 | 80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8133CD44 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133CD48 | 7C A5 00 38 */	and r5, r5, r0
/* 8133CD4C | 7C C6 00 38 */	and r6, r6, r0
/* 8133CD50 | 4C C6 31 82 */	crclr cr1eq
/* 8133CD54 | 48 2C 3D 2D */	bl sprintf
/* 8133CD58 | 80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8133CD5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133CD60 | 41 82 00 50 */	beq .L_8133CDB0
/* 8133CD64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133CD68 | 38 9F 00 F8 */	addi r4, r31, 0xf8
/* 8133CD6C | 38 A0 00 01 */	li r5, 0x1
/* 8133CD70 | 48 02 34 E9 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8133CD74 | 7C 64 1B 78 */	mr r4, r3
/* 8133CD78 | 7F E3 FB 78 */	mr r3, r31
/* 8133CD7C | 4B FF F6 39 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CD80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CD84 | 41 82 00 1C */	beq .L_8133CDA0
/* 8133CD88 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8133CD8C | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8133CD90 | 38 BF 00 B0 */	addi r5, r31, 0xb0
/* 8133CD94 | 48 23 40 AD */	bl ARCOpen
/* 8133CD98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CD9C | 40 82 00 0C */	bne .L_8133CDA8
.L_8133CDA0:
/* 8133CDA0 | 38 60 00 00 */	li r3, 0x0
/* 8133CDA4 | 48 00 00 28 */	b .L_8133CDCC
.L_8133CDA8:
/* 8133CDA8 | 38 60 00 01 */	li r3, 0x1
/* 8133CDAC | 48 00 00 20 */	b .L_8133CDCC
.L_8133CDB0:
/* 8133CDB0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133CDB4 | 38 9F 00 F8 */	addi r4, r31, 0xf8
/* 8133CDB8 | 38 A0 00 01 */	li r5, 0x1
/* 8133CDBC | 48 02 34 9D */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8133CDC0 | 7C 64 1B 78 */	mr r4, r3
/* 8133CDC4 | 7F E3 FB 78 */	mr r3, r31
/* 8133CDC8 | 4B FF F5 ED */	bl nand_error_handling__Q33ipl4nand4FileFi
.L_8133CDCC:
/* 8133CDCC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133CDD0 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8133CDD4 | 7C 08 03 A6 */	mtlr r0
/* 8133CDD8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8133CDDC | 4E 80 00 20 */	blr
.endfn openNandFile___Q33ipl4nand8MetaFileFv

# .text:0x1AC | 0x8133CDE0 | size: 0xB4
# ipl::nand::MetaFile::readNandBlock_(void*, int, int)
.fn readNandBlock___Q33ipl4nand8MetaFileFPvii, global
/* 8133CDE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133CDE4 | 7C 08 02 A6 */	mflr r0
/* 8133CDE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133CDEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133CDF0 | 48 2B C6 D5 */	bl _savegpr_28
/* 8133CDF4 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133CDF8 | 7C 7C 1B 78 */	mr r28, r3
/* 8133CDFC | 7C 9D 23 78 */	mr r29, r4
/* 8133CE00 | 7C BE 2B 78 */	mr r30, r5
/* 8133CE04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133CE08 | 7C DF 33 78 */	mr r31, r6
/* 8133CE0C | 41 82 00 34 */	beq .L_8133CE40
/* 8133CE10 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133CE14 | 48 23 47 81 */	bl ARCGetStartOffset
/* 8133CE18 | 80 9C 00 94 */	lwz r4, 0x94(r28)
/* 8133CE1C | 7C 1F 1A 14 */	add r0, r31, r3
/* 8133CE20 | 38 7C 00 F8 */	addi r3, r28, 0xf8
/* 8133CE24 | 38 A0 00 00 */	li r5, 0x0
/* 8133CE28 | 7C 84 02 14 */	add r4, r4, r0
/* 8133CE2C | 48 02 30 25 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8133CE30 | 7C 64 1B 78 */	mr r4, r3
/* 8133CE34 | 7F 83 E3 78 */	mr r3, r28
/* 8133CE38 | 4B FF F5 7D */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CE3C | 48 00 00 24 */	b .L_8133CE60
.L_8133CE40:
/* 8133CE40 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 8133CE44 | 38 A0 00 00 */	li r5, 0x0
/* 8133CE48 | 38 63 00 F8 */	addi r3, r3, 0xf8
/* 8133CE4C | 7C 80 32 14 */	add r4, r0, r6
/* 8133CE50 | 48 02 30 01 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8133CE54 | 7C 64 1B 78 */	mr r4, r3
/* 8133CE58 | 7F 83 E3 78 */	mr r3, r28
/* 8133CE5C | 4B FF F5 59 */	bl nand_error_handling__Q33ipl4nand4FileFi
.L_8133CE60:
/* 8133CE60 | 7F A4 EB 78 */	mr r4, r29
/* 8133CE64 | 7F C5 F3 78 */	mr r5, r30
/* 8133CE68 | 38 7C 00 F8 */	addi r3, r28, 0xf8
/* 8133CE6C | 48 02 2E FD */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8133CE70 | 7C 64 1B 78 */	mr r4, r3
/* 8133CE74 | 7F 83 E3 78 */	mr r3, r28
/* 8133CE78 | 4B FF F5 3D */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CE7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133CE80 | 48 2B C6 91 */	bl _restgpr_28
/* 8133CE84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133CE88 | 7C 08 03 A6 */	mtlr r0
/* 8133CE8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133CE90 | 4E 80 00 20 */	blr
.endfn readNandBlock___Q33ipl4nand8MetaFileFPvii

# .text:0x260 | 0x8133CE94 | size: 0x64
# ipl::nand::MetaFile::closeNandFile_()
.fn closeNandFile___Q33ipl4nand8MetaFileFv, global
/* 8133CE94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CE98 | 7C 08 02 A6 */	mflr r0
/* 8133CE9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CEA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CEA4 | 7C 7F 1B 78 */	mr r31, r3
/* 8133CEA8 | 80 83 01 A0 */	lwz r4, 0x1a0(r3)
/* 8133CEAC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133CEB0 | 41 82 00 20 */	beq .L_8133CED0
/* 8133CEB4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133CEB8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133CEBC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8133CEC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133CEC4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133CEC8 | 7D 89 03 A6 */	mtctr r12
/* 8133CECC | 4E 80 04 21 */	bctrl
.L_8133CED0:
/* 8133CED0 | 38 7F 00 F8 */	addi r3, r31, 0xf8
/* 8133CED4 | 48 02 2E 31 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8133CED8 | 7C 64 1B 78 */	mr r4, r3
/* 8133CEDC | 7F E3 FB 78 */	mr r3, r31
/* 8133CEE0 | 4B FF F4 D5 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CEE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133CEE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133CEEC | 7C 08 03 A6 */	mtlr r0
/* 8133CEF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133CEF4 | 4E 80 00 20 */	blr
.endfn closeNandFile___Q33ipl4nand8MetaFileFv

# .text:0x2C4 | 0x8133CEF8 | size: 0x158
# ipl::nand::MetaFile::openTicketFile_()
.fn openTicketFile___Q33ipl4nand8MetaFileFv, global
/* 8133CEF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CEFC | 7C 08 02 A6 */	mflr r0
/* 8133CF00 | 38 80 00 E0 */	li r4, 0xe0
/* 8133CF04 | 38 A0 FF E0 */	li r5, -0x20
/* 8133CF08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CF0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CF10 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CF14 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133CF18 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133CF1C | 7C 7E 1B 78 */	mr r30, r3
/* 8133CF20 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8133CF24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133CF28 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133CF2C | 7D 89 03 A6 */	mtctr r12
/* 8133CF30 | 4E 80 04 21 */	bctrl
/* 8133CF34 | 90 7E 01 A0 */	stw r3, 0x1a0(r30)
/* 8133CF38 | 7C 67 1B 78 */	mr r7, r3
/* 8133CF3C | 80 BE 01 98 */	lwz r5, 0x198(r30)
/* 8133CF40 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8133CF44 | 80 DE 01 9C */	lwz r6, 0x19c(r30)
/* 8133CF48 | 81 1E 01 A4 */	lwz r8, 0x1a4(r30)
/* 8133CF4C | 48 02 89 FD */	bl GetTicketView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewi
/* 8133CF50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CF54 | 40 80 00 0C */	bge .L_8133CF60
/* 8133CF58 | 38 E0 00 92 */	li r7, 0x92
/* 8133CF5C | 48 00 00 9C */	b .L_8133CFF8
.L_8133CF60:
/* 8133CF60 | 80 7E 01 98 */	lwz r3, 0x198(r30)
/* 8133CF64 | 38 C0 00 00 */	li r6, 0x0
/* 8133CF68 | 80 9E 01 9C */	lwz r4, 0x19c(r30)
/* 8133CF6C | 80 BE 01 A0 */	lwz r5, 0x1a0(r30)
/* 8133CF70 | 48 28 12 49 */	bl ES_OpenTitleContentFile
/* 8133CF74 | 2C 03 FB FE */	cmpwi r3, -0x402
/* 8133CF78 | 90 7E 01 94 */	stw r3, 0x194(r30)
/* 8133CF7C | 40 82 00 18 */	bne .L_8133CF94
/* 8133CF80 | 38 00 00 01 */	li r0, 0x1
/* 8133CF84 | 7F C3 F3 78 */	mr r3, r30
/* 8133CF88 | 98 1E 01 A8 */	stb r0, 0x1a8(r30)
/* 8133CF8C | 4B FF FD 91 */	bl openNandFile___Q33ipl4nand8MetaFileFv
/* 8133CF90 | 48 00 00 A8 */	b .L_8133D038
.L_8133CF94:
/* 8133CF94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CF98 | 40 80 00 0C */	bge .L_8133CFA4
/* 8133CF9C | 38 E0 00 A3 */	li r7, 0xa3
/* 8133CFA0 | 48 00 00 58 */	b .L_8133CFF8
.L_8133CFA4:
/* 8133CFA4 | 80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8133CFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CFAC | 40 82 00 0C */	bne .L_8133CFB8
/* 8133CFB0 | 38 60 00 01 */	li r3, 0x1
/* 8133CFB4 | 48 00 00 84 */	b .L_8133D038
.L_8133CFB8:
/* 8133CFB8 | 38 9E 00 08 */	addi r4, r30, 0x8
/* 8133CFBC | 38 BE 00 B0 */	addi r5, r30, 0xb0
/* 8133CFC0 | 48 23 3E 81 */	bl ARCOpen
/* 8133CFC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CFC8 | 7C 7F 1B 78 */	mr r31, r3
/* 8133CFCC | 40 82 00 1C */	bne .L_8133CFE8
/* 8133CFD0 | 80 7E 01 94 */	lwz r3, 0x194(r30)
/* 8133CFD4 | 48 28 13 A9 */	bl ES_CloseContentFile
/* 8133CFD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CFDC | 40 80 00 0C */	bge .L_8133CFE8
/* 8133CFE0 | 38 E0 00 B2 */	li r7, 0xb2
/* 8133CFE4 | 48 00 00 14 */	b .L_8133CFF8
.L_8133CFE8:
/* 8133CFE8 | 38 1F FF FF */	subi r0, r31, 0x1
/* 8133CFEC | 7C 00 00 34 */	cntlzw r0, r0
/* 8133CFF0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8133CFF4 | 48 00 00 44 */	b .L_8133D038
.L_8133CFF8:
/* 8133CFF8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CFFC | 3C C0 81 63 */	lis r6, lbl_81634E2A@ha
/* 8133D000 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D004 | 7C 65 1B 78 */	mr r5, r3
/* 8133D008 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D00C | 38 C6 4E 2A */	addi r6, r6, lbl_81634E2A@l
/* 8133D010 | 38 8D 80 70 */	li r4, lbl_816960B0@sda21
/* 8133D014 | 48 01 96 E5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D018 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D01C | 38 80 00 01 */	li r4, 0x1
/* 8133D020 | 38 A0 00 02 */	li r5, 0x2
/* 8133D024 | 38 C0 00 00 */	li r6, 0x0
/* 8133D028 | 38 E0 00 00 */	li r7, 0x0
/* 8133D02C | 39 00 FF FF */	li r8, -0x1
/* 8133D030 | 48 01 94 E5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133D034 | 38 60 00 00 */	li r3, 0x0
.L_8133D038:
/* 8133D038 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D03C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D040 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133D044 | 7C 08 03 A6 */	mtlr r0
/* 8133D048 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133D04C | 4E 80 00 20 */	blr
.endfn openTicketFile___Q33ipl4nand8MetaFileFv

# .text:0x41C | 0x8133D050 | size: 0xE8
# ipl::nand::MetaFile::readTicketBlock_(void*, int, int)
.fn readTicketBlock___Q33ipl4nand8MetaFileFPvii, global
/* 8133D050 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133D054 | 7C 08 02 A6 */	mflr r0
/* 8133D058 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133D05C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133D060 | 48 2B C4 65 */	bl _savegpr_28
/* 8133D064 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133D068 | 7C 7C 1B 78 */	mr r28, r3
/* 8133D06C | 7C 9D 23 78 */	mr r29, r4
/* 8133D070 | 7C BE 2B 78 */	mr r30, r5
/* 8133D074 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133D078 | 7C DF 33 78 */	mr r31, r6
/* 8133D07C | 41 82 00 30 */	beq .L_8133D0AC
/* 8133D080 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133D084 | 48 23 45 11 */	bl ARCGetStartOffset
/* 8133D088 | 80 9C 00 94 */	lwz r4, 0x94(r28)
/* 8133D08C | 7C 1F 1A 14 */	add r0, r31, r3
/* 8133D090 | 80 7C 01 94 */	lwz r3, 0x194(r28)
/* 8133D094 | 38 A0 00 00 */	li r5, 0x0
/* 8133D098 | 7C 84 02 14 */	add r4, r4, r0
/* 8133D09C | 48 28 12 55 */	bl ES_SeekContentFile
/* 8133D0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D0A4 | 41 80 00 3C */	blt .L_8133D0E0
/* 8133D0A8 | 48 00 00 20 */	b .L_8133D0C8
.L_8133D0AC:
/* 8133D0AC | 80 1C 00 94 */	lwz r0, 0x94(r28)
/* 8133D0B0 | 38 A0 00 00 */	li r5, 0x0
/* 8133D0B4 | 80 63 01 94 */	lwz r3, 0x194(r3)
/* 8133D0B8 | 7C 80 32 14 */	add r4, r0, r6
/* 8133D0BC | 48 28 12 35 */	bl ES_SeekContentFile
/* 8133D0C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D0C4 | 41 80 00 1C */	blt .L_8133D0E0
.L_8133D0C8:
/* 8133D0C8 | 80 7C 01 94 */	lwz r3, 0x194(r28)
/* 8133D0CC | 7F A4 EB 78 */	mr r4, r29
/* 8133D0D0 | 7F C5 F3 78 */	mr r5, r30
/* 8133D0D4 | 48 28 11 7D */	bl ES_ReadContentFile
/* 8133D0D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D0DC | 40 80 00 44 */	bge .L_8133D120
.L_8133D0E0:
/* 8133D0E0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D0E4 | 3C C0 81 63 */	lis r6, lbl_81634E2A@ha
/* 8133D0E8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D0EC | 38 8D 80 70 */	li r4, lbl_816960B0@sda21
/* 8133D0F0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D0F4 | 38 C6 4E 2A */	addi r6, r6, lbl_81634E2A@l
/* 8133D0F8 | 38 A0 00 00 */	li r5, 0x0
/* 8133D0FC | 38 E0 00 E6 */	li r7, 0xe6
/* 8133D100 | 48 01 95 F9 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D104 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D108 | 38 80 00 01 */	li r4, 0x1
/* 8133D10C | 38 A0 00 02 */	li r5, 0x2
/* 8133D110 | 38 C0 00 00 */	li r6, 0x0
/* 8133D114 | 38 E0 00 00 */	li r7, 0x0
/* 8133D118 | 39 00 FF FF */	li r8, -0x1
/* 8133D11C | 48 01 93 F9 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D120:
/* 8133D120 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133D124 | 48 2B C3 ED */	bl _restgpr_28
/* 8133D128 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133D12C | 7C 08 03 A6 */	mtlr r0
/* 8133D130 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133D134 | 4E 80 00 20 */	blr
.endfn readTicketBlock___Q33ipl4nand8MetaFileFPvii

# .text:0x504 | 0x8133D138 | size: 0xAC
# ipl::nand::MetaFile::closeTicketFile_()
.fn closeTicketFile___Q33ipl4nand8MetaFileFv, global
/* 8133D138 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133D13C | 7C 08 02 A6 */	mflr r0
/* 8133D140 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133D144 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133D148 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D14C | 80 63 01 94 */	lwz r3, 0x194(r3)
/* 8133D150 | 48 28 12 2D */	bl ES_CloseContentFile
/* 8133D154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D158 | 41 80 00 34 */	blt .L_8133D18C
/* 8133D15C | 80 9F 01 A0 */	lwz r4, 0x1a0(r31)
/* 8133D160 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133D164 | 41 82 00 20 */	beq .L_8133D184
/* 8133D168 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133D16C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133D170 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8133D174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133D178 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133D17C | 7D 89 03 A6 */	mtctr r12
/* 8133D180 | 4E 80 04 21 */	bctrl
.L_8133D184:
/* 8133D184 | 38 60 00 01 */	li r3, 0x1
/* 8133D188 | 48 00 00 48 */	b .L_8133D1D0
.L_8133D18C:
/* 8133D18C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D190 | 3C C0 81 63 */	lis r6, lbl_81634E2A@ha
/* 8133D194 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D198 | 38 8D 80 70 */	li r4, lbl_816960B0@sda21
/* 8133D19C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D1A0 | 38 C6 4E 2A */	addi r6, r6, lbl_81634E2A@l
/* 8133D1A4 | 38 A0 00 00 */	li r5, 0x0
/* 8133D1A8 | 38 E0 00 FD */	li r7, 0xfd
/* 8133D1AC | 48 01 95 4D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D1B0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D1B4 | 38 80 00 01 */	li r4, 0x1
/* 8133D1B8 | 38 A0 00 02 */	li r5, 0x2
/* 8133D1BC | 38 C0 00 00 */	li r6, 0x0
/* 8133D1C0 | 38 E0 00 00 */	li r7, 0x0
/* 8133D1C4 | 39 00 FF FF */	li r8, -0x1
/* 8133D1C8 | 48 01 93 4D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133D1CC | 38 60 00 00 */	li r3, 0x0
.L_8133D1D0:
/* 8133D1D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D1D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D1D8 | 7C 08 03 A6 */	mtlr r0
/* 8133D1DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133D1E0 | 4E 80 00 20 */	blr
.endfn closeTicketFile___Q33ipl4nand8MetaFileFv

# .text:0x5B0 | 0x8133D1E4 | size: 0x4
# ipl::nand::MetaFile::open_(unsigned char)
.fn open___Q33ipl4nand8MetaFileFUc, global
/* 8133D1E4 | 4B FF FD 14 */	b openTicketFile___Q33ipl4nand8MetaFileFv
.endfn open___Q33ipl4nand8MetaFileFUc

# .text:0x5B4 | 0x8133D1E8 | size: 0x14
# ipl::nand::MetaFile::close_()
.fn close___Q33ipl4nand8MetaFileFv, global
/* 8133D1E8 | 88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 8133D1EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133D1F0 | 41 82 00 08 */	beq .L_8133D1F8
/* 8133D1F4 | 4B FF FC A0 */	b closeNandFile___Q33ipl4nand8MetaFileFv
.L_8133D1F8:
/* 8133D1F8 | 4B FF FF 40 */	b closeTicketFile___Q33ipl4nand8MetaFileFv
.endfn close___Q33ipl4nand8MetaFileFv

# .text:0x5C8 | 0x8133D1FC | size: 0x8
# ipl::nand::MetaFile::getRawSize_()
.fn getRawSize___Q33ipl4nand8MetaFileFv, global
/* 8133D1FC | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133D200 | 48 23 43 9C */	b ARCGetLength
.endfn getRawSize___Q33ipl4nand8MetaFileFv

# .text:0x5D0 | 0x8133D204 | size: 0x14
# ipl::nand::MetaFile::readBlock_(void*, int, int)
.fn readBlock___Q33ipl4nand8MetaFileFPvii, global
/* 8133D204 | 88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 8133D208 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133D20C | 41 82 00 08 */	beq .L_8133D214
/* 8133D210 | 4B FF FB D0 */	b readNandBlock___Q33ipl4nand8MetaFileFPvii
.L_8133D214:
/* 8133D214 | 4B FF FE 3C */	b readTicketBlock___Q33ipl4nand8MetaFileFPvii
.endfn readBlock___Q33ipl4nand8MetaFileFPvii

# .text:0x5E4 | 0x8133D218 | size: 0x1C
# ipl::nand::MetaFile::callback_()
.fn callback___Q33ipl4nand8MetaFileFv, global
/* 8133D218 | 81 83 01 AC */	lwz r12, 0x1ac(r3)
/* 8133D21C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8133D220 | 4D 82 00 20 */	beqlr
/* 8133D224 | 80 63 01 B0 */	lwz r3, 0x1b0(r3)
/* 8133D228 | 7D 89 03 A6 */	mtctr r12
/* 8133D22C | 4E 80 04 20 */	bctr
/* 8133D230 | 4E 80 00 20 */	blr
.endfn callback___Q33ipl4nand8MetaFileFv

# 0x81634E10..0x81634E90 | size: 0x80
.data
.balign 8

# .data:0x0 | 0x81634E10 | size: 0x1A
.obj lbl_81634E10, global
	.string "/meta/%08x/%08x/title.met"
.endobj lbl_81634E10

# .data:0x1A | 0x81634E2A | size: 0x12
.obj lbl_81634E2A, global
	.4byte 0x69706C4E
	.4byte 0x616E644D
	.4byte 0x6574612E
	.4byte 0x63707000
	.2byte 0x0000
.endobj lbl_81634E2A

# .data:0x2C | 0x81634E3C | size: 0x54
# ipl::nand::MetaFile::__vtable
.obj __vt__Q33ipl4nand8MetaFile, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl4nand8MetaFileFv
	.4byte read__Q33ipl4nand4FileFv
	.4byte write__Q33ipl4nand4FileFv
	.4byte isFinished__Q33ipl4nand4FileFv
	.4byte checkData__Q33ipl4nand4FileFv
	.4byte isFatalError__Q33ipl4nand4FileFv
	.4byte open___Q33ipl4nand8MetaFileFUc
	.4byte close___Q33ipl4nand8MetaFileFv
	.4byte readBlock___Q33ipl4nand8MetaFileFPvii
	.4byte getRawSize___Q33ipl4nand8MetaFileFv
	.4byte getDecodeSize___Q33ipl4nand4FileFPCUc
	.4byte getBuffer___Q33ipl4nand4FileFUl
	.4byte uncompressLz7__Q33ipl4nand4FileFPCUcPUc
	.4byte isCompressed__Q33ipl4nand4FileFPCUc
	.4byte isSliCompressed__Q33ipl4nand4FileFPCUc
	.4byte isAsrCompressed__Q33ipl4nand4FileFPCUc
	.4byte isAshCompressed__Q33ipl4nand4FileFPCUc
	.4byte isLz7Compressed__Q33ipl4nand4FileFPCUc
	.4byte callback___Q33ipl4nand8MetaFileFv
.endobj __vt__Q33ipl4nand8MetaFile

# 0x816960B0..0x816960B8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960B0 | size: 0x8
.obj lbl_816960B0, global
	.4byte 0x45530000
	.4byte 0x00000000
.endobj lbl_816960B0
