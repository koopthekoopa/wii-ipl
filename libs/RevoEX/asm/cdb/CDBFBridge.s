.include "macros.inc"
.file "CDBFBridge.c"

# 0x81490D70..0x81490F68 | size: 0x1F8
.text
.balign 4

# .text:0x0 | 0x81490D70 | size: 0x10
.fn CDBFCreateFile, global
/* 81490D70 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81490D74 | 40 82 00 08 */	bne .L_81490D7C
/* 81490D78 | 48 00 01 F0 */	b CDBFCreateFileVF
.L_81490D7C:
/* 81490D7C | 48 00 08 E8 */	b CDBFCreateFileSD
.endfn CDBFCreateFile

# .text:0x10 | 0x81490D80 | size: 0x10
.fn CDBFDeleteFile, global
/* 81490D80 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81490D84 | 40 82 00 08 */	bne .L_81490D8C
/* 81490D88 | 48 00 02 64 */	b CDBFDeleteFileVF
.L_81490D8C:
/* 81490D8C | 48 00 09 7C */	b CDBFDeleteFileSD
.endfn CDBFDeleteFile

# .text:0x20 | 0x81490D90 | size: 0x10
.fn CDBFCreateDir, global
/* 81490D90 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81490D94 | 40 82 00 08 */	bne .L_81490D9C
/* 81490D98 | 48 00 02 AC */	b CDBFCreateDirVF
.L_81490D9C:
/* 81490D9C | 48 00 0A 24 */	b CDBFCreateDirSD
.endfn CDBFCreateDir

# .text:0x30 | 0x81490DA0 | size: 0x10
.fn CDBFOpen, global
/* 81490DA0 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81490DA4 | 40 82 00 08 */	bne .L_81490DAC
/* 81490DA8 | 48 00 02 F8 */	b CDBFOpenVF
.L_81490DAC:
/* 81490DAC | 48 00 0A 64 */	b CDBFOpenSD
.endfn CDBFOpen

# .text:0x40 | 0x81490DB0 | size: 0x10
.fn CDBFClose, global
/* 81490DB0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81490DB4 | 40 82 00 08 */	bne .L_81490DBC
/* 81490DB8 | 48 00 03 64 */	b CDBFCloseVF
.L_81490DBC:
/* 81490DBC | 48 00 0B 7C */	b CDBFCloseSD
.endfn CDBFClose

# .text:0x50 | 0x81490DC0 | size: 0x60
.fn CDBFReadAttr, global
/* 81490DC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81490DC4 | 7C 08 02 A6 */	mflr r0
/* 81490DC8 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81490DCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81490DD0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81490DD4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81490DD8 | 7C 9E 23 78 */	mr r30, r4
/* 81490DDC | 40 82 00 10 */	bne .L_81490DEC
/* 81490DE0 | 48 00 04 95 */	bl CDBFReadAttrVF
/* 81490DE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81490DE8 | 48 00 00 0C */	b .L_81490DF4
.L_81490DEC:
/* 81490DEC | 48 00 0C B9 */	bl CDBFReadAttrSD
/* 81490DF0 | 7C 7F 1B 78 */	mr r31, r3
.L_81490DF4:
/* 81490DF4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81490DF8 | 38 9E 00 74 */	addi r4, r30, 0x74
/* 81490DFC | 38 A0 00 04 */	li r5, 0x4
/* 81490E00 | 4B E9 F4 31 */	bl memcpy
/* 81490E04 | 7F E3 FB 78 */	mr r3, r31
/* 81490E08 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81490E0C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81490E10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81490E14 | 7C 08 03 A6 */	mtlr r0
/* 81490E18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490E1C | 4E 80 00 20 */	blr
.endfn CDBFReadAttr

# .text:0xB0 | 0x81490E20 | size: 0x74
.fn CDBFWriteAttr, global
/* 81490E20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81490E24 | 7C 08 02 A6 */	mflr r0
/* 81490E28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81490E2C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81490E30 | 7C BF 2B 78 */	mr r31, r5
/* 81490E34 | 38 A0 00 04 */	li r5, 0x4
/* 81490E38 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81490E3C | 7C 9E 23 78 */	mr r30, r4
/* 81490E40 | 38 84 00 74 */	addi r4, r4, 0x74
/* 81490E44 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81490E48 | 7C 7D 1B 78 */	mr r29, r3
/* 81490E4C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81490E50 | 4B E9 F3 E1 */	bl memcpy
/* 81490E54 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81490E58 | 40 82 00 14 */	bne .L_81490E6C
/* 81490E5C | 7F A3 EB 78 */	mr r3, r29
/* 81490E60 | 7F C4 F3 78 */	mr r4, r30
/* 81490E64 | 48 00 04 E1 */	bl CDBFWriteAttrVF
/* 81490E68 | 48 00 00 10 */	b .L_81490E78
.L_81490E6C:
/* 81490E6C | 7F A3 EB 78 */	mr r3, r29
/* 81490E70 | 7F C4 F3 78 */	mr r4, r30
/* 81490E74 | 48 00 0D 6D */	bl CDBFWriteAttrSD
.L_81490E78:
/* 81490E78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81490E7C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81490E80 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81490E84 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81490E88 | 7C 08 03 A6 */	mtlr r0
/* 81490E8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490E90 | 4E 80 00 20 */	blr
.endfn CDBFWriteAttr

# .text:0x124 | 0x81490E94 | size: 0x74
.fn CDBFWriteAttrOnlyLeadChunk, global
/* 81490E94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81490E98 | 7C 08 02 A6 */	mflr r0
/* 81490E9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81490EA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81490EA4 | 7C BF 2B 78 */	mr r31, r5
/* 81490EA8 | 38 A0 00 04 */	li r5, 0x4
/* 81490EAC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81490EB0 | 7C 9E 23 78 */	mr r30, r4
/* 81490EB4 | 38 84 00 74 */	addi r4, r4, 0x74
/* 81490EB8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81490EBC | 7C 7D 1B 78 */	mr r29, r3
/* 81490EC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81490EC4 | 4B E9 F3 6D */	bl memcpy
/* 81490EC8 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81490ECC | 40 82 00 14 */	bne .L_81490EE0
/* 81490ED0 | 7F A3 EB 78 */	mr r3, r29
/* 81490ED4 | 7F C4 F3 78 */	mr r4, r30
/* 81490ED8 | 48 00 05 35 */	bl CDBFWriteAttrOnlyLeadChunkVF
/* 81490EDC | 48 00 00 10 */	b .L_81490EEC
.L_81490EE0:
/* 81490EE0 | 7F A3 EB 78 */	mr r3, r29
/* 81490EE4 | 7F C4 F3 78 */	mr r4, r30
/* 81490EE8 | 48 00 0E 4D */	bl CDBFWriteAttrOnlyLeadChunkSD
.L_81490EEC:
/* 81490EEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81490EF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81490EF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81490EF8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81490EFC | 7C 08 03 A6 */	mtlr r0
/* 81490F00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490F04 | 4E 80 00 20 */	blr
.endfn CDBFWriteAttrOnlyLeadChunk

# .text:0x198 | 0x81490F08 | size: 0x10
.fn CDBFReadData, global
/* 81490F08 | 2C 07 00 01 */	cmpwi r7, 0x1
/* 81490F0C | 40 82 00 08 */	bne .L_81490F14
/* 81490F10 | 48 00 05 C4 */	b CDBFReadDataVF
.L_81490F14:
/* 81490F14 | 48 00 0F 74 */	b CDBFReadDataSD
.endfn CDBFReadData

# .text:0x1A8 | 0x81490F18 | size: 0x10
.fn CDBFWriteData, global
/* 81490F18 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 81490F1C | 40 82 00 08 */	bne .L_81490F24
/* 81490F20 | 48 00 06 08 */	b CDBFWriteDataVF
.L_81490F24:
/* 81490F24 | 48 00 0F C8 */	b CDBFWriteDataSD
.endfn CDBFWriteData

# .text:0x1B8 | 0x81490F28 | size: 0x10
.fn CDBFSeekData, global
/* 81490F28 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 81490F2C | 40 82 00 08 */	bne .L_81490F34
/* 81490F30 | 48 00 06 5C */	b CDBFSeekDataVF
.L_81490F34:
/* 81490F34 | 48 00 10 3C */	b CDBFSeekDataSD
.endfn CDBFSeekData

# .text:0x1C8 | 0x81490F38 | size: 0x10
.fn CDBFTellData, global
/* 81490F38 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81490F3C | 40 82 00 08 */	bne .L_81490F44
/* 81490F40 | 48 00 06 60 */	b CDBFTellDataVF
.L_81490F44:
/* 81490F44 | 48 00 10 40 */	b CDBFTellDataSD
.endfn CDBFTellData

# .text:0x1D8 | 0x81490F48 | size: 0x10
.fn CDBFGetDataSize, global
/* 81490F48 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81490F4C | 40 82 00 08 */	bne .L_81490F54
/* 81490F50 | 48 00 06 78 */	b CDBFGetDataSizeVF
.L_81490F54:
/* 81490F54 | 48 00 10 68 */	b CDBFGetDataSizeSD
.endfn CDBFGetDataSize

# .text:0x1E8 | 0x81490F58 | size: 0x10
.fn CDBFGetFileSize, global
/* 81490F58 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81490F5C | 40 82 00 08 */	bne .L_81490F64
/* 81490F60 | 48 00 06 BC */	b CDBFGetFileSizeVF
.L_81490F64:
/* 81490F64 | 48 00 10 E8 */	b CDBFGetFileSizeSD
.endfn CDBFGetFileSize
