.include "macros.inc"
.file "iplNandMeta.cpp"

# 0x8133CC34 - 0x8133D234
.text
.balign 4

# ipl::nand::MetaFile::MetaFile(EGG::Heap*, const char*, ARCHandle*, unsigned long long, int, unsigned long, void (*)(void*), void*, int)
.fn __ct__Q33ipl4nand8MetaFileFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi, global
/* 8133CC34 0000B034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133CC38 0000B038  7C 08 02 A6 */	mflr r0
/* 8133CC3C 0000B03C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133CC40 0000B040  39 61 00 20 */	addi r11, r1, 0x20
/* 8133CC44 0000B044  48 2B C8 79 */	bl _savegpr_26
/* 8133CC48 0000B048  83 A1 00 28 */	lwz r29, 0x28(r1)
/* 8133CC4C 0000B04C  7C FC 3B 78 */	mr r28, r7
/* 8133CC50 0000B050  7D 1B 43 78 */	mr r27, r8
/* 8133CC54 0000B054  7D 28 4B 78 */	mr r8, r9
/* 8133CC58 0000B058  7D 49 53 78 */	mr r9, r10
/* 8133CC5C 0000B05C  83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 8133CC60 0000B060  83 E1 00 30 */	lwz r31, 0x30(r1)
/* 8133CC64 0000B064  7C 7A 1B 78 */	mr r26, r3
/* 8133CC68 0000B068  38 E0 00 00 */	li r7, 0x0
/* 8133CC6C 0000B06C  39 40 00 00 */	li r10, 0x0
/* 8133CC70 0000B070  4B FF E6 C5 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
/* 8133CC74 0000B074  3C 60 81 63 */	lis r3, lbl_81634E3C@ha
/* 8133CC78 0000B078  38 00 00 00 */	li r0, 0x0
/* 8133CC7C 0000B07C  38 63 4E 3C */	addi r3, r3, lbl_81634E3C@l
/* 8133CC80 0000B080  38 80 FF FF */	li r4, -0x1
/* 8133CC84 0000B084  90 7A 00 00 */	stw r3, 0x0(r26)
/* 8133CC88 0000B088  39 61 00 20 */	addi r11, r1, 0x20
/* 8133CC8C 0000B08C  7F 43 D3 78 */	mr r3, r26
/* 8133CC90 0000B090  90 9A 01 94 */	stw r4, 0x194(r26)
/* 8133CC94 0000B094  93 7A 01 9C */	stw r27, 0x19c(r26)
/* 8133CC98 0000B098  93 9A 01 98 */	stw r28, 0x198(r26)
/* 8133CC9C 0000B09C  90 1A 01 A0 */	stw r0, 0x1a0(r26)
/* 8133CCA0 0000B0A0  93 FA 01 A4 */	stw r31, 0x1a4(r26)
/* 8133CCA4 0000B0A4  98 1A 01 A8 */	stb r0, 0x1a8(r26)
/* 8133CCA8 0000B0A8  93 BA 01 AC */	stw r29, 0x1ac(r26)
/* 8133CCAC 0000B0AC  93 DA 01 B0 */	stw r30, 0x1b0(r26)
/* 8133CCB0 0000B0B0  48 2B C8 59 */	bl _restgpr_26
/* 8133CCB4 0000B0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133CCB8 0000B0B8  7C 08 03 A6 */	mtlr r0
/* 8133CCBC 0000B0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8133CCC0 0000B0C0  4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand8MetaFileFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi

# ipl::nand::MetaFile::~MetaFile()
.fn __dt__Q33ipl4nand8MetaFileFv, global
/* 8133CCC4 0000B0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CCC8 0000B0C8  7C 08 02 A6 */	mflr r0
/* 8133CCCC 0000B0CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CCD0 0000B0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CCD4 0000B0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CCD8 0000B0D8  7C 9F 23 78 */	mr r31, r4
/* 8133CCDC 0000B0DC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133CCE0 0000B0E0  7C 7E 1B 78 */	mr r30, r3
/* 8133CCE4 0000B0E4  41 82 00 1C */	beq .L_8133CD00
/* 8133CCE8 0000B0E8  38 80 00 00 */	li r4, 0x0
/* 8133CCEC 0000B0EC  4B FF E7 C9 */	bl __dt__Q33ipl4nand4FileFv
/* 8133CCF0 0000B0F0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133CCF4 0000B0F4  40 81 00 0C */	ble .L_8133CD00
/* 8133CCF8 0000B0F8  7F C3 F3 78 */	mr r3, r30
/* 8133CCFC 0000B0FC  48 2B B3 E9 */	bl __dl__FPv
.L_8133CD00:
/* 8133CD00 0000B100  7F C3 F3 78 */	mr r3, r30
/* 8133CD04 0000B104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133CD08 0000B108  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133CD0C 0000B10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133CD10 0000B110  7C 08 03 A6 */	mtlr r0
/* 8133CD14 0000B114  38 21 00 10 */	addi r1, r1, 0x10
/* 8133CD18 0000B118  4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::openNandFile_()
.fn openNandFile___Q33ipl4nand8MetaFileFv, global
/* 8133CD1C 0000B11C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133CD20 0000B120  7C 08 02 A6 */	mflr r0
/* 8133CD24 0000B124  3C 80 81 63 */	lis r4, lbl_81634E10@ha
/* 8133CD28 0000B128  90 01 00 44 */	stw r0, 0x44(r1)
/* 8133CD2C 0000B12C  38 00 FF FF */	li r0, -0x1
/* 8133CD30 0000B130  38 84 4E 10 */	addi r4, r4, lbl_81634E10@l
/* 8133CD34 0000B134  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8133CD38 0000B138  7C 7F 1B 78 */	mr r31, r3
/* 8133CD3C 0000B13C  80 A3 01 98 */	lwz r5, 0x198(r3)
/* 8133CD40 0000B140  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8133CD44 0000B144  38 61 00 08 */	addi r3, r1, 0x8
/* 8133CD48 0000B148  7C A5 00 38 */	and r5, r5, r0
/* 8133CD4C 0000B14C  7C C6 00 38 */	and r6, r6, r0
/* 8133CD50 0000B150  4C C6 31 82 */	crclr cr1eq
/* 8133CD54 0000B154  48 2C 3D 2D */	bl fn_81600A80
/* 8133CD58 0000B158  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8133CD5C 0000B15C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133CD60 0000B160  41 82 00 50 */	beq .L_8133CDB0
/* 8133CD64 0000B164  38 61 00 08 */	addi r3, r1, 0x8
/* 8133CD68 0000B168  38 9F 00 F8 */	addi r4, r31, 0xf8
/* 8133CD6C 0000B16C  38 A0 00 01 */	li r5, 0x1
/* 8133CD70 0000B170  48 02 34 E9 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8133CD74 0000B174  7C 64 1B 78 */	mr r4, r3
/* 8133CD78 0000B178  7F E3 FB 78 */	mr r3, r31
/* 8133CD7C 0000B17C  4B FF F6 39 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CD80 0000B180  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CD84 0000B184  41 82 00 1C */	beq .L_8133CDA0
/* 8133CD88 0000B188  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8133CD8C 0000B18C  38 9F 00 08 */	addi r4, r31, 0x8
/* 8133CD90 0000B190  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 8133CD94 0000B194  48 23 40 AD */	bl fn_81570E40
/* 8133CD98 0000B198  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CD9C 0000B19C  40 82 00 0C */	bne .L_8133CDA8
.L_8133CDA0:
/* 8133CDA0 0000B1A0  38 60 00 00 */	li r3, 0x0
/* 8133CDA4 0000B1A4  48 00 00 28 */	b .L_8133CDCC
.L_8133CDA8:
/* 8133CDA8 0000B1A8  38 60 00 01 */	li r3, 0x1
/* 8133CDAC 0000B1AC  48 00 00 20 */	b .L_8133CDCC
.L_8133CDB0:
/* 8133CDB0 0000B1B0  38 61 00 08 */	addi r3, r1, 0x8
/* 8133CDB4 0000B1B4  38 9F 00 F8 */	addi r4, r31, 0xf8
/* 8133CDB8 0000B1B8  38 A0 00 01 */	li r5, 0x1
/* 8133CDBC 0000B1BC  48 02 34 9D */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8133CDC0 0000B1C0  7C 64 1B 78 */	mr r4, r3
/* 8133CDC4 0000B1C4  7F E3 FB 78 */	mr r3, r31
/* 8133CDC8 0000B1C8  4B FF F5 ED */	bl nand_error_handling__Q33ipl4nand4FileFi
.L_8133CDCC:
/* 8133CDCC 0000B1CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133CDD0 0000B1D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8133CDD4 0000B1D4  7C 08 03 A6 */	mtlr r0
/* 8133CDD8 0000B1D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8133CDDC 0000B1DC  4E 80 00 20 */	blr
.endfn openNandFile___Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::readNandBlock_(void*, int, int)
.fn readNandBlock___Q33ipl4nand8MetaFileFPvii, global
/* 8133CDE0 0000B1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133CDE4 0000B1E4  7C 08 02 A6 */	mflr r0
/* 8133CDE8 0000B1E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133CDEC 0000B1EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8133CDF0 0000B1F0  48 2B C6 D5 */	bl _savegpr_28
/* 8133CDF4 0000B1F4  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133CDF8 0000B1F8  7C 7C 1B 78 */	mr r28, r3
/* 8133CDFC 0000B1FC  7C 9D 23 78 */	mr r29, r4
/* 8133CE00 0000B200  7C BE 2B 78 */	mr r30, r5
/* 8133CE04 0000B204  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133CE08 0000B208  7C DF 33 78 */	mr r31, r6
/* 8133CE0C 0000B20C  41 82 00 34 */	beq .L_8133CE40
/* 8133CE10 0000B210  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133CE14 0000B214  48 23 47 81 */	bl fn_81571594
/* 8133CE18 0000B218  80 9C 00 94 */	lwz r4, 0x94(r28)
/* 8133CE1C 0000B21C  7C 1F 1A 14 */	add r0, r31, r3
/* 8133CE20 0000B220  38 7C 00 F8 */	addi r3, r28, 0xf8
/* 8133CE24 0000B224  38 A0 00 00 */	li r5, 0x0
/* 8133CE28 0000B228  7C 84 02 14 */	add r4, r4, r0
/* 8133CE2C 0000B22C  48 02 30 25 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8133CE30 0000B230  7C 64 1B 78 */	mr r4, r3
/* 8133CE34 0000B234  7F 83 E3 78 */	mr r3, r28
/* 8133CE38 0000B238  4B FF F5 7D */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CE3C 0000B23C  48 00 00 24 */	b .L_8133CE60
.L_8133CE40:
/* 8133CE40 0000B240  80 03 00 94 */	lwz r0, 0x94(r3)
/* 8133CE44 0000B244  38 A0 00 00 */	li r5, 0x0
/* 8133CE48 0000B248  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8133CE4C 0000B24C  7C 80 32 14 */	add r4, r0, r6
/* 8133CE50 0000B250  48 02 30 01 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8133CE54 0000B254  7C 64 1B 78 */	mr r4, r3
/* 8133CE58 0000B258  7F 83 E3 78 */	mr r3, r28
/* 8133CE5C 0000B25C  4B FF F5 59 */	bl nand_error_handling__Q33ipl4nand4FileFi
.L_8133CE60:
/* 8133CE60 0000B260  7F A4 EB 78 */	mr r4, r29
/* 8133CE64 0000B264  7F C5 F3 78 */	mr r5, r30
/* 8133CE68 0000B268  38 7C 00 F8 */	addi r3, r28, 0xf8
/* 8133CE6C 0000B26C  48 02 2E FD */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8133CE70 0000B270  7C 64 1B 78 */	mr r4, r3
/* 8133CE74 0000B274  7F 83 E3 78 */	mr r3, r28
/* 8133CE78 0000B278  4B FF F5 3D */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CE7C 0000B27C  39 61 00 20 */	addi r11, r1, 0x20
/* 8133CE80 0000B280  48 2B C6 91 */	bl _restgpr_28
/* 8133CE84 0000B284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133CE88 0000B288  7C 08 03 A6 */	mtlr r0
/* 8133CE8C 0000B28C  38 21 00 20 */	addi r1, r1, 0x20
/* 8133CE90 0000B290  4E 80 00 20 */	blr
.endfn readNandBlock___Q33ipl4nand8MetaFileFPvii

# ipl::nand::MetaFile::closeNandFile_()
.fn closeNandFile___Q33ipl4nand8MetaFileFv, global
/* 8133CE94 0000B294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CE98 0000B298  7C 08 02 A6 */	mflr r0
/* 8133CE9C 0000B29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CEA0 0000B2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CEA4 0000B2A4  7C 7F 1B 78 */	mr r31, r3
/* 8133CEA8 0000B2A8  80 83 01 A0 */	lwz r4, 0x1a0(r3)
/* 8133CEAC 0000B2AC  2C 04 00 00 */	cmpwi r4, 0x0
/* 8133CEB0 0000B2B0  41 82 00 20 */	beq .L_8133CED0
/* 8133CEB4 0000B2B4  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133CEB8 0000B2B8  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133CEBC 0000B2BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8133CEC0 0000B2C0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133CEC4 0000B2C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133CEC8 0000B2C8  7D 89 03 A6 */	mtctr r12
/* 8133CECC 0000B2CC  4E 80 04 21 */	bctrl
.L_8133CED0:
/* 8133CED0 0000B2D0  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 8133CED4 0000B2D4  48 02 2E 31 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8133CED8 0000B2D8  7C 64 1B 78 */	mr r4, r3
/* 8133CEDC 0000B2DC  7F E3 FB 78 */	mr r3, r31
/* 8133CEE0 0000B2E0  4B FF F4 D5 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133CEE4 0000B2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133CEE8 0000B2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133CEEC 0000B2EC  7C 08 03 A6 */	mtlr r0
/* 8133CEF0 0000B2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8133CEF4 0000B2F4  4E 80 00 20 */	blr
.endfn closeNandFile___Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::openTicketFile_()
.fn openTicketFile___Q33ipl4nand8MetaFileFv, global
/* 8133CEF8 0000B2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CEFC 0000B2FC  7C 08 02 A6 */	mflr r0
/* 8133CF00 0000B300  38 80 00 E0 */	li r4, 0xe0
/* 8133CF04 0000B304  38 A0 FF E0 */	li r5, -0x20
/* 8133CF08 0000B308  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CF0C 0000B30C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CF10 0000B310  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CF14 0000B314  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133CF18 0000B318  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133CF1C 0000B31C  7C 7E 1B 78 */	mr r30, r3
/* 8133CF20 0000B320  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8133CF24 0000B324  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133CF28 0000B328  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133CF2C 0000B32C  7D 89 03 A6 */	mtctr r12
/* 8133CF30 0000B330  4E 80 04 21 */	bctrl
/* 8133CF34 0000B334  90 7E 01 A0 */	stw r3, 0x1a0(r30)
/* 8133CF38 0000B338  7C 67 1B 78 */	mr r7, r3
/* 8133CF3C 0000B33C  80 BE 01 98 */	lwz r5, 0x198(r30)
/* 8133CF40 0000B340  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8133CF44 0000B344  80 DE 01 9C */	lwz r6, 0x19c(r30)
/* 8133CF48 0000B348  81 1E 01 A4 */	lwz r8, 0x1a4(r30)
/* 8133CF4C 0000B34C  48 02 89 FD */	bl GetTicketView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewi
/* 8133CF50 0000B350  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CF54 0000B354  40 80 00 0C */	bge .L_8133CF60
/* 8133CF58 0000B358  38 E0 00 92 */	li r7, 0x92
/* 8133CF5C 0000B35C  48 00 00 9C */	b .L_8133CFF8
.L_8133CF60:
/* 8133CF60 0000B360  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 8133CF64 0000B364  38 C0 00 00 */	li r6, 0x0
/* 8133CF68 0000B368  80 9E 01 9C */	lwz r4, 0x19c(r30)
/* 8133CF6C 0000B36C  80 BE 01 A0 */	lwz r5, 0x1a0(r30)
/* 8133CF70 0000B370  48 28 12 49 */	bl ES_OpenTitleContentFile
/* 8133CF74 0000B374  2C 03 FB FE */	cmpwi r3, -0x402
/* 8133CF78 0000B378  90 7E 01 94 */	stw r3, 0x194(r30)
/* 8133CF7C 0000B37C  40 82 00 18 */	bne .L_8133CF94
/* 8133CF80 0000B380  38 00 00 01 */	li r0, 0x1
/* 8133CF84 0000B384  7F C3 F3 78 */	mr r3, r30
/* 8133CF88 0000B388  98 1E 01 A8 */	stb r0, 0x1a8(r30)
/* 8133CF8C 0000B38C  4B FF FD 91 */	bl openNandFile___Q33ipl4nand8MetaFileFv
/* 8133CF90 0000B390  48 00 00 A8 */	b .L_8133D038
.L_8133CF94:
/* 8133CF94 0000B394  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CF98 0000B398  40 80 00 0C */	bge .L_8133CFA4
/* 8133CF9C 0000B39C  38 E0 00 A3 */	li r7, 0xa3
/* 8133CFA0 0000B3A0  48 00 00 58 */	b .L_8133CFF8
.L_8133CFA4:
/* 8133CFA4 0000B3A4  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8133CFA8 0000B3A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CFAC 0000B3AC  40 82 00 0C */	bne .L_8133CFB8
/* 8133CFB0 0000B3B0  38 60 00 01 */	li r3, 0x1
/* 8133CFB4 0000B3B4  48 00 00 84 */	b .L_8133D038
.L_8133CFB8:
/* 8133CFB8 0000B3B8  38 9E 00 08 */	addi r4, r30, 0x8
/* 8133CFBC 0000B3BC  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 8133CFC0 0000B3C0  48 23 3E 81 */	bl fn_81570E40
/* 8133CFC4 0000B3C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CFC8 0000B3C8  7C 7F 1B 78 */	mr r31, r3
/* 8133CFCC 0000B3CC  40 82 00 1C */	bne .L_8133CFE8
/* 8133CFD0 0000B3D0  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 8133CFD4 0000B3D4  48 28 13 A9 */	bl ES_CloseContentFile
/* 8133CFD8 0000B3D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CFDC 0000B3DC  40 80 00 0C */	bge .L_8133CFE8
/* 8133CFE0 0000B3E0  38 E0 00 B2 */	li r7, 0xb2
/* 8133CFE4 0000B3E4  48 00 00 14 */	b .L_8133CFF8
.L_8133CFE8:
/* 8133CFE8 0000B3E8  38 1F FF FF */	subi r0, r31, 0x1
/* 8133CFEC 0000B3EC  7C 00 00 34 */	cntlzw r0, r0
/* 8133CFF0 0000B3F0  54 03 D9 7E */	srwi r3, r0, 5
/* 8133CFF4 0000B3F4  48 00 00 44 */	b .L_8133D038
.L_8133CFF8:
/* 8133CFF8 0000B3F8  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CFFC 0000B3FC  3C C0 81 63 */	lis r6, lbl_81634E2A@ha
/* 8133D000 0000B400  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D004 0000B404  7C 65 1B 78 */	mr r5, r3
/* 8133D008 0000B408  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D00C 0000B40C  38 C6 4E 2A */	addi r6, r6, lbl_81634E2A@l
/* 8133D010 0000B410  38 8D 80 70 */	li r4, lbl_816960B0@sda21
/* 8133D014 0000B414  48 01 96 E5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D018 0000B418  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D01C 0000B41C  38 80 00 01 */	li r4, 0x1
/* 8133D020 0000B420  38 A0 00 02 */	li r5, 0x2
/* 8133D024 0000B424  38 C0 00 00 */	li r6, 0x0
/* 8133D028 0000B428  38 E0 00 00 */	li r7, 0x0
/* 8133D02C 0000B42C  39 00 FF FF */	li r8, -0x1
/* 8133D030 0000B430  48 01 94 E5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133D034 0000B434  38 60 00 00 */	li r3, 0x0
.L_8133D038:
/* 8133D038 0000B438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D03C 0000B43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D040 0000B440  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133D044 0000B444  7C 08 03 A6 */	mtlr r0
/* 8133D048 0000B448  38 21 00 10 */	addi r1, r1, 0x10
/* 8133D04C 0000B44C  4E 80 00 20 */	blr
.endfn openTicketFile___Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::readTicketBlock_(void*, int, int)
.fn readTicketBlock___Q33ipl4nand8MetaFileFPvii, global
/* 8133D050 0000B450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133D054 0000B454  7C 08 02 A6 */	mflr r0
/* 8133D058 0000B458  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133D05C 0000B45C  39 61 00 20 */	addi r11, r1, 0x20
/* 8133D060 0000B460  48 2B C4 65 */	bl _savegpr_28
/* 8133D064 0000B464  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133D068 0000B468  7C 7C 1B 78 */	mr r28, r3
/* 8133D06C 0000B46C  7C 9D 23 78 */	mr r29, r4
/* 8133D070 0000B470  7C BE 2B 78 */	mr r30, r5
/* 8133D074 0000B474  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133D078 0000B478  7C DF 33 78 */	mr r31, r6
/* 8133D07C 0000B47C  41 82 00 30 */	beq .L_8133D0AC
/* 8133D080 0000B480  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133D084 0000B484  48 23 45 11 */	bl fn_81571594
/* 8133D088 0000B488  80 9C 00 94 */	lwz r4, 0x94(r28)
/* 8133D08C 0000B48C  7C 1F 1A 14 */	add r0, r31, r3
/* 8133D090 0000B490  80 7C 01 94 */	lwz r3, 0x194(r28)
/* 8133D094 0000B494  38 A0 00 00 */	li r5, 0x0
/* 8133D098 0000B498  7C 84 02 14 */	add r4, r4, r0
/* 8133D09C 0000B49C  48 28 12 55 */	bl ES_SeekContentFile
/* 8133D0A0 0000B4A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D0A4 0000B4A4  41 80 00 3C */	blt .L_8133D0E0
/* 8133D0A8 0000B4A8  48 00 00 20 */	b .L_8133D0C8
.L_8133D0AC:
/* 8133D0AC 0000B4AC  80 1C 00 94 */	lwz r0, 0x94(r28)
/* 8133D0B0 0000B4B0  38 A0 00 00 */	li r5, 0x0
/* 8133D0B4 0000B4B4  80 63 01 94 */	lwz r3, 0x194(r3)
/* 8133D0B8 0000B4B8  7C 80 32 14 */	add r4, r0, r6
/* 8133D0BC 0000B4BC  48 28 12 35 */	bl ES_SeekContentFile
/* 8133D0C0 0000B4C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D0C4 0000B4C4  41 80 00 1C */	blt .L_8133D0E0
.L_8133D0C8:
/* 8133D0C8 0000B4C8  80 7C 01 94 */	lwz r3, 0x194(r28)
/* 8133D0CC 0000B4CC  7F A4 EB 78 */	mr r4, r29
/* 8133D0D0 0000B4D0  7F C5 F3 78 */	mr r5, r30
/* 8133D0D4 0000B4D4  48 28 11 7D */	bl ES_ReadContentFile
/* 8133D0D8 0000B4D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D0DC 0000B4DC  40 80 00 44 */	bge .L_8133D120
.L_8133D0E0:
/* 8133D0E0 0000B4E0  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D0E4 0000B4E4  3C C0 81 63 */	lis r6, lbl_81634E2A@ha
/* 8133D0E8 0000B4E8  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D0EC 0000B4EC  38 8D 80 70 */	li r4, lbl_816960B0@sda21
/* 8133D0F0 0000B4F0  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D0F4 0000B4F4  38 C6 4E 2A */	addi r6, r6, lbl_81634E2A@l
/* 8133D0F8 0000B4F8  38 A0 00 00 */	li r5, 0x0
/* 8133D0FC 0000B4FC  38 E0 00 E6 */	li r7, 0xe6
/* 8133D100 0000B500  48 01 95 F9 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D104 0000B504  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D108 0000B508  38 80 00 01 */	li r4, 0x1
/* 8133D10C 0000B50C  38 A0 00 02 */	li r5, 0x2
/* 8133D110 0000B510  38 C0 00 00 */	li r6, 0x0
/* 8133D114 0000B514  38 E0 00 00 */	li r7, 0x0
/* 8133D118 0000B518  39 00 FF FF */	li r8, -0x1
/* 8133D11C 0000B51C  48 01 93 F9 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D120:
/* 8133D120 0000B520  39 61 00 20 */	addi r11, r1, 0x20
/* 8133D124 0000B524  48 2B C3 ED */	bl _restgpr_28
/* 8133D128 0000B528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133D12C 0000B52C  7C 08 03 A6 */	mtlr r0
/* 8133D130 0000B530  38 21 00 20 */	addi r1, r1, 0x20
/* 8133D134 0000B534  4E 80 00 20 */	blr
.endfn readTicketBlock___Q33ipl4nand8MetaFileFPvii

# ipl::nand::MetaFile::closeTicketFile_()
.fn closeTicketFile___Q33ipl4nand8MetaFileFv, global
/* 8133D138 0000B538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133D13C 0000B53C  7C 08 02 A6 */	mflr r0
/* 8133D140 0000B540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133D144 0000B544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133D148 0000B548  7C 7F 1B 78 */	mr r31, r3
/* 8133D14C 0000B54C  80 63 01 94 */	lwz r3, 0x194(r3)
/* 8133D150 0000B550  48 28 12 2D */	bl ES_CloseContentFile
/* 8133D154 0000B554  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D158 0000B558  41 80 00 34 */	blt .L_8133D18C
/* 8133D15C 0000B55C  80 9F 01 A0 */	lwz r4, 0x1a0(r31)
/* 8133D160 0000B560  2C 04 00 00 */	cmpwi r4, 0x0
/* 8133D164 0000B564  41 82 00 20 */	beq .L_8133D184
/* 8133D168 0000B568  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133D16C 0000B56C  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133D170 0000B570  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8133D174 0000B574  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133D178 0000B578  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133D17C 0000B57C  7D 89 03 A6 */	mtctr r12
/* 8133D180 0000B580  4E 80 04 21 */	bctrl
.L_8133D184:
/* 8133D184 0000B584  38 60 00 01 */	li r3, 0x1
/* 8133D188 0000B588  48 00 00 48 */	b .L_8133D1D0
.L_8133D18C:
/* 8133D18C 0000B58C  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D190 0000B590  3C C0 81 63 */	lis r6, lbl_81634E2A@ha
/* 8133D194 0000B594  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D198 0000B598  38 8D 80 70 */	li r4, lbl_816960B0@sda21
/* 8133D19C 0000B59C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D1A0 0000B5A0  38 C6 4E 2A */	addi r6, r6, lbl_81634E2A@l
/* 8133D1A4 0000B5A4  38 A0 00 00 */	li r5, 0x0
/* 8133D1A8 0000B5A8  38 E0 00 FD */	li r7, 0xfd
/* 8133D1AC 0000B5AC  48 01 95 4D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D1B0 0000B5B0  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D1B4 0000B5B4  38 80 00 01 */	li r4, 0x1
/* 8133D1B8 0000B5B8  38 A0 00 02 */	li r5, 0x2
/* 8133D1BC 0000B5BC  38 C0 00 00 */	li r6, 0x0
/* 8133D1C0 0000B5C0  38 E0 00 00 */	li r7, 0x0
/* 8133D1C4 0000B5C4  39 00 FF FF */	li r8, -0x1
/* 8133D1C8 0000B5C8  48 01 93 4D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133D1CC 0000B5CC  38 60 00 00 */	li r3, 0x0
.L_8133D1D0:
/* 8133D1D0 0000B5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D1D4 0000B5D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D1D8 0000B5D8  7C 08 03 A6 */	mtlr r0
/* 8133D1DC 0000B5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8133D1E0 0000B5E0  4E 80 00 20 */	blr
.endfn closeTicketFile___Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::open_(unsigned char)
.fn open___Q33ipl4nand8MetaFileFUc, global
/* 8133D1E4 0000B5E4  4B FF FD 14 */	b openTicketFile___Q33ipl4nand8MetaFileFv
.endfn open___Q33ipl4nand8MetaFileFUc

# ipl::nand::MetaFile::close_()
.fn close___Q33ipl4nand8MetaFileFv, global
/* 8133D1E8 0000B5E8  88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 8133D1EC 0000B5EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133D1F0 0000B5F0  41 82 00 08 */	beq .L_8133D1F8
/* 8133D1F4 0000B5F4  4B FF FC A0 */	b closeNandFile___Q33ipl4nand8MetaFileFv
.L_8133D1F8:
/* 8133D1F8 0000B5F8  4B FF FF 40 */	b closeTicketFile___Q33ipl4nand8MetaFileFv
.endfn close___Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::getRawSize_()
.fn getRawSize___Q33ipl4nand8MetaFileFv, global
/* 8133D1FC 0000B5FC  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133D200 0000B600  48 23 43 9C */	b fn_8157159C
.endfn getRawSize___Q33ipl4nand8MetaFileFv

# ipl::nand::MetaFile::readBlock_(void*, int, int)
.fn readBlock___Q33ipl4nand8MetaFileFPvii, global
/* 8133D204 0000B604  88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 8133D208 0000B608  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133D20C 0000B60C  41 82 00 08 */	beq .L_8133D214
/* 8133D210 0000B610  4B FF FB D0 */	b readNandBlock___Q33ipl4nand8MetaFileFPvii
.L_8133D214:
/* 8133D214 0000B614  4B FF FE 3C */	b readTicketBlock___Q33ipl4nand8MetaFileFPvii
.endfn readBlock___Q33ipl4nand8MetaFileFPvii

# ipl::nand::MetaFile::callback_()
.fn callback___Q33ipl4nand8MetaFileFv, global
/* 8133D218 0000B618  81 83 01 AC */	lwz r12, 0x1ac(r3)
/* 8133D21C 0000B61C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8133D220 0000B620  4D 82 00 20 */	beqlr
/* 8133D224 0000B624  80 63 01 B0 */	lwz r3, 0x1b0(r3)
/* 8133D228 0000B628  7D 89 03 A6 */	mtctr r12
/* 8133D22C 0000B62C  4E 80 04 20 */	bctr
/* 8133D230 0000B630  4E 80 00 20 */	blr
.endfn callback___Q33ipl4nand8MetaFileFv

# 0x81634E10 - 0x81634E90
.data
.balign 8

.obj lbl_81634E10, global
	.string "/meta/%08x/%08x/title.met"
.endobj lbl_81634E10

.obj lbl_81634E2A, global
	.4byte 0x69706C4E
	.4byte 0x616E644D
	.4byte 0x6574612E
	.4byte 0x63707000
	.2byte 0x0000
.endobj lbl_81634E2A

.obj lbl_81634E3C, global
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
.endobj lbl_81634E3C

# 0x816960B0 - 0x816960B8
.section .sdata, "wa"
.balign 8

.obj lbl_816960B0, global
	.4byte 0x45530000
	.4byte 0x00000000
.endobj lbl_816960B0
