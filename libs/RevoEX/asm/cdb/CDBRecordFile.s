.include "macros.inc"
.file "CDBRecordFile.c"

# 0x8148DB00..0x8148E2E4 | size: 0x7E4
.text
.balign 4

# .text:0x0 | 0x8148DB00 | size: 0x74
.fn CDBRecordFileReadAttrBuf, global
/* 8148DB00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148DB04 | 7C 08 02 A6 */	mflr r0
/* 8148DB08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148DB0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148DB10 | 83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8148DB14 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148DB18 | 40 82 00 0C */	bne .L_8148DB24
/* 8148DB1C | 38 60 00 1B */	li r3, 0x1b
/* 8148DB20 | 48 00 00 40 */	b .L_8148DB60
.L_8148DB24:
/* 8148DB24 | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8148DB28 | 38 7F 04 2C */	addi r3, r31, 0x42c
/* 8148DB2C | 38 9F 00 20 */	addi r4, r31, 0x20
/* 8148DB30 | 48 00 32 91 */	bl CDBFReadAttr
/* 8148DB34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DB38 | 41 82 00 08 */	beq .L_8148DB40
/* 8148DB3C | 48 00 00 24 */	b .L_8148DB60
.L_8148DB40:
/* 8148DB40 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8148DB44 | 48 00 2B 01 */	bl CDBAttrCheckAttrBuf
/* 8148DB48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DB4C | 41 82 00 08 */	beq .L_8148DB54
/* 8148DB50 | 48 00 00 10 */	b .L_8148DB60
.L_8148DB54:
/* 8148DB54 | 38 00 00 01 */	li r0, 0x1
/* 8148DB58 | 38 60 00 00 */	li r3, 0x0
/* 8148DB5C | 90 1F 04 28 */	stw r0, 0x428(r31)
.L_8148DB60:
/* 8148DB60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148DB64 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148DB68 | 7C 08 03 A6 */	mtlr r0
/* 8148DB6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148DB70 | 4E 80 00 20 */	blr
.endfn CDBRecordFileReadAttrBuf

# .text:0x74 | 0x8148DB74 | size: 0x98
.fn CDBRecordFileWriteAttrBuf, global
/* 8148DB74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148DB78 | 7C 08 02 A6 */	mflr r0
/* 8148DB7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148DB80 | 80 C3 00 38 */	lwz r6, 0x38(r3)
/* 8148DB84 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8148DB88 | 40 82 00 0C */	bne .L_8148DB94
/* 8148DB8C | 38 60 00 1B */	li r3, 0x1b
/* 8148DB90 | 48 00 00 6C */	b .L_8148DBFC
.L_8148DB94:
/* 8148DB94 | 80 86 04 20 */	lwz r4, 0x420(r6)
/* 8148DB98 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8148DB9C | 41 82 00 2C */	beq .L_8148DBC8
/* 8148DBA0 | 80 06 04 24 */	lwz r0, 0x424(r6)
/* 8148DBA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148DBA8 | 40 82 00 20 */	bne .L_8148DBC8
/* 8148DBAC | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8148DBB0 | 38 66 04 2C */	addi r3, r6, 0x42c
/* 8148DBB4 | 38 86 00 20 */	addi r4, r6, 0x20
/* 8148DBB8 | 48 00 32 DD */	bl CDBFWriteAttrOnlyLeadChunk
/* 8148DBBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DBC0 | 41 82 00 38 */	beq .L_8148DBF8
/* 8148DBC4 | 48 00 00 38 */	b .L_8148DBFC
.L_8148DBC8:
/* 8148DBC8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8148DBCC | 40 82 00 10 */	bne .L_8148DBDC
/* 8148DBD0 | 80 06 04 24 */	lwz r0, 0x424(r6)
/* 8148DBD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148DBD8 | 41 82 00 20 */	beq .L_8148DBF8
.L_8148DBDC:
/* 8148DBDC | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8148DBE0 | 38 66 04 2C */	addi r3, r6, 0x42c
/* 8148DBE4 | 38 86 00 20 */	addi r4, r6, 0x20
/* 8148DBE8 | 48 00 32 39 */	bl CDBFWriteAttr
/* 8148DBEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DBF0 | 41 82 00 08 */	beq .L_8148DBF8
/* 8148DBF4 | 48 00 00 08 */	b .L_8148DBFC
.L_8148DBF8:
/* 8148DBF8 | 38 60 00 00 */	li r3, 0x0
.L_8148DBFC:
/* 8148DBFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148DC00 | 7C 08 03 A6 */	mtlr r0
/* 8148DC04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148DC08 | 4E 80 00 20 */	blr
.endfn CDBRecordFileWriteAttrBuf

# .text:0x10C | 0x8148DC0C | size: 0x148
.fn CDBRecordFileCreateBlank, global
/* 8148DC0C | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8148DC10 | 7C 08 02 A6 */	mflr r0
/* 8148DC14 | 38 80 00 03 */	li r4, 0x3
/* 8148DC18 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8148DC1C | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8148DC20 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 8148DC24 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 8148DC28 | 93 81 01 10 */	stw r28, 0x110(r1)
/* 8148DC2C | 7C 7C 1B 78 */	mr r28, r3
/* 8148DC30 | 48 00 1C C5 */	bl CDBRecordAllocate
/* 8148DC34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DC38 | 41 82 00 08 */	beq .L_8148DC40
/* 8148DC3C | 48 00 00 F8 */	b .L_8148DD34
.L_8148DC40:
/* 8148DC40 | 83 DC 00 38 */	lwz r30, 0x38(r28)
/* 8148DC44 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8148DC48 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DC4C | 4B FF 91 E1 */	bl CDBConvKeyToFullPath
/* 8148DC50 | 80 9C 00 30 */	lwz r4, 0x30(r28)
/* 8148DC54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148DC58 | 48 00 31 39 */	bl CDBFCreateDir
/* 8148DC5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DC60 | 7C 7F 1B 78 */	mr r31, r3
/* 8148DC64 | 41 82 00 14 */	beq .L_8148DC78
/* 8148DC68 | 7F 83 E3 78 */	mr r3, r28
/* 8148DC6C | 48 00 1E E9 */	bl CDBRecordFree
/* 8148DC70 | 7F E3 FB 78 */	mr r3, r31
/* 8148DC74 | 48 00 00 C0 */	b .L_8148DD34
.L_8148DC78:
/* 8148DC78 | 3B A0 00 00 */	li r29, 0x0
.L_8148DC7C:
/* 8148DC7C | 7F A4 EB 78 */	mr r4, r29
/* 8148DC80 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8148DC84 | 48 00 07 F9 */	bl CDBRecordKeySetSerialNumber
/* 8148DC88 | 38 7E 04 38 */	addi r3, r30, 0x438
/* 8148DC8C | 38 9C 00 08 */	addi r4, r28, 0x8
/* 8148DC90 | 48 00 08 F5 */	bl CDBRecordKeyCopy
/* 8148DC94 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8148DC98 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DC9C | 4B FF 91 91 */	bl CDBConvKeyToFullPath
/* 8148DCA0 | 80 BC 00 30 */	lwz r5, 0x30(r28)
/* 8148DCA4 | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148DCA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DCAC | 48 00 30 C5 */	bl CDBFCreateFile
/* 8148DCB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DCB4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148DCB8 | 41 82 00 3C */	beq .L_8148DCF4
/* 8148DCBC | 41 82 00 2C */	beq .L_8148DCE8
/* 8148DCC0 | 2C 03 00 1E */	cmpwi r3, 0x1e
/* 8148DCC4 | 41 82 00 24 */	beq .L_8148DCE8
/* 8148DCC8 | 2C 03 00 17 */	cmpwi r3, 0x17
/* 8148DCCC | 41 82 00 0C */	beq .L_8148DCD8
/* 8148DCD0 | 2C 03 00 1F */	cmpwi r3, 0x1f
/* 8148DCD4 | 40 82 00 0C */	bne .L_8148DCE0
.L_8148DCD8:
/* 8148DCD8 | 7F 83 E3 78 */	mr r3, r28
/* 8148DCDC | 48 00 1E 79 */	bl CDBRecordFree
.L_8148DCE0:
/* 8148DCE0 | 7F E3 FB 78 */	mr r3, r31
/* 8148DCE4 | 48 00 00 50 */	b .L_8148DD34
.L_8148DCE8:
/* 8148DCE8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8148DCEC | 2C 1D 03 E8 */	cmpwi r29, 0x3e8
/* 8148DCF0 | 41 80 FF 8C */	blt .L_8148DC7C
.L_8148DCF4:
/* 8148DCF4 | 2C 1D 03 E8 */	cmpwi r29, 0x3e8
/* 8148DCF8 | 40 82 00 0C */	bne .L_8148DD04
/* 8148DCFC | 38 60 00 0F */	li r3, 0xf
/* 8148DD00 | 48 00 00 34 */	b .L_8148DD34
.L_8148DD04:
/* 8148DD04 | 38 60 00 04 */	li r3, 0x4
/* 8148DD08 | 48 00 28 89 */	bl CDBIsPrintDebugMessage
/* 8148DD0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DD10 | 41 82 00 20 */	beq .L_8148DD30
/* 8148DD14 | 38 60 00 04 */	li r3, 0x4
/* 8148DD18 | 48 00 28 91 */	bl CDBReport_
/* 8148DD1C | 3C 60 81 67 */	lis r3, lbl_8166C580@ha
/* 8148DD20 | 38 9C 00 08 */	addi r4, r28, 0x8
/* 8148DD24 | 38 63 C5 80 */	addi r3, r3, lbl_8166C580@l
/* 8148DD28 | 4C C6 31 82 */	crclr cr1eq
/* 8148DD2C | 48 0A 09 75 */	bl OSReport
.L_8148DD30:
/* 8148DD30 | 38 60 00 00 */	li r3, 0x0
.L_8148DD34:
/* 8148DD34 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148DD38 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8148DD3C | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8148DD40 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8148DD44 | 83 81 01 10 */	lwz r28, 0x110(r1)
/* 8148DD48 | 7C 08 03 A6 */	mtlr r0
/* 8148DD4C | 38 21 01 20 */	addi r1, r1, 0x120
/* 8148DD50 | 4E 80 00 20 */	blr
.endfn CDBRecordFileCreateBlank

# .text:0x254 | 0x8148DD54 | size: 0x50
.fn CDBRecordFileDump, global
/* 8148DD54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148DD58 | 7C 08 02 A6 */	mflr r0
/* 8148DD5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148DD60 | 80 E3 00 38 */	lwz r7, 0x38(r3)
/* 8148DD64 | 80 C3 00 30 */	lwz r6, 0x30(r3)
/* 8148DD68 | 38 67 04 2C */	addi r3, r7, 0x42c
/* 8148DD6C | 48 00 31 AD */	bl CDBFWriteData
/* 8148DD70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DD74 | 41 82 00 08 */	beq .L_8148DD7C
/* 8148DD78 | 48 00 00 1C */	b .L_8148DD94
.L_8148DD7C:
/* 8148DD7C | 48 00 27 C9 */	bl CDBVFSync
/* 8148DD80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DD84 | 38 00 00 00 */	li r0, 0x0
/* 8148DD88 | 41 82 00 08 */	beq .L_8148DD90
/* 8148DD8C | 7C 60 1B 78 */	mr r0, r3
.L_8148DD90:
/* 8148DD90 | 7C 03 03 78 */	mr r3, r0
.L_8148DD94:
/* 8148DD94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148DD98 | 7C 08 03 A6 */	mtlr r0
/* 8148DD9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148DDA0 | 4E 80 00 20 */	blr
.endfn CDBRecordFileDump

# .text:0x2A4 | 0x8148DDA4 | size: 0x1BC
.fn CDBRecordFileCreateAtOnce, global
/* 8148DDA4 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8148DDA8 | 7C 08 02 A6 */	mflr r0
/* 8148DDAC | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8148DDB0 | 39 61 01 20 */	addi r11, r1, 0x120
/* 8148DDB4 | 48 16 B7 09 */	bl _savegpr_26
/* 8148DDB8 | 7C 9B 23 78 */	mr r27, r4
/* 8148DDBC | 7C 7A 1B 78 */	mr r26, r3
/* 8148DDC0 | 7C BC 2B 78 */	mr r28, r5
/* 8148DDC4 | 38 80 00 03 */	li r4, 0x3
/* 8148DDC8 | 48 00 1B 2D */	bl CDBRecordAllocate
/* 8148DDCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DDD0 | 41 82 00 08 */	beq .L_8148DDD8
/* 8148DDD4 | 48 00 01 74 */	b .L_8148DF48
.L_8148DDD8:
/* 8148DDD8 | 83 DA 00 38 */	lwz r30, 0x38(r26)
/* 8148DDDC | 38 7A 00 08 */	addi r3, r26, 0x8
/* 8148DDE0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DDE4 | 4B FF 90 49 */	bl CDBConvKeyToFullPath
/* 8148DDE8 | 80 9A 00 30 */	lwz r4, 0x30(r26)
/* 8148DDEC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148DDF0 | 48 00 2F A1 */	bl CDBFCreateDir
/* 8148DDF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DDF8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148DDFC | 41 82 00 14 */	beq .L_8148DE10
/* 8148DE00 | 7F 43 D3 78 */	mr r3, r26
/* 8148DE04 | 48 00 1D 51 */	bl CDBRecordFree
/* 8148DE08 | 7F E3 FB 78 */	mr r3, r31
/* 8148DE0C | 48 00 01 3C */	b .L_8148DF48
.L_8148DE10:
/* 8148DE10 | 3B A0 00 00 */	li r29, 0x0
.L_8148DE14:
/* 8148DE14 | 7F A4 EB 78 */	mr r4, r29
/* 8148DE18 | 38 7A 00 08 */	addi r3, r26, 0x8
/* 8148DE1C | 48 00 06 61 */	bl CDBRecordKeySetSerialNumber
/* 8148DE20 | 38 7E 04 38 */	addi r3, r30, 0x438
/* 8148DE24 | 38 9A 00 08 */	addi r4, r26, 0x8
/* 8148DE28 | 48 00 07 5D */	bl CDBRecordKeyCopy
/* 8148DE2C | 38 7A 00 08 */	addi r3, r26, 0x8
/* 8148DE30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DE34 | 4B FF 8F F9 */	bl CDBConvKeyToFullPath
/* 8148DE38 | 80 BA 00 30 */	lwz r5, 0x30(r26)
/* 8148DE3C | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148DE40 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DE44 | 48 00 2F 2D */	bl CDBFCreateFile
/* 8148DE48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DE4C | 7C 7F 1B 78 */	mr r31, r3
/* 8148DE50 | 41 82 00 34 */	beq .L_8148DE84
/* 8148DE54 | 41 82 00 24 */	beq .L_8148DE78
/* 8148DE58 | 2C 03 00 1E */	cmpwi r3, 0x1e
/* 8148DE5C | 41 82 00 1C */	beq .L_8148DE78
/* 8148DE60 | 2C 03 00 17 */	cmpwi r3, 0x17
/* 8148DE64 | 40 82 00 0C */	bne .L_8148DE70
/* 8148DE68 | 7F 43 D3 78 */	mr r3, r26
/* 8148DE6C | 48 00 1C E9 */	bl CDBRecordFree
.L_8148DE70:
/* 8148DE70 | 7F E3 FB 78 */	mr r3, r31
/* 8148DE74 | 48 00 00 D4 */	b .L_8148DF48
.L_8148DE78:
/* 8148DE78 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8148DE7C | 2C 1D 03 E8 */	cmpwi r29, 0x3e8
/* 8148DE80 | 41 80 FF 94 */	blt .L_8148DE14
.L_8148DE84:
/* 8148DE84 | 2C 1D 03 E8 */	cmpwi r29, 0x3e8
/* 8148DE88 | 40 82 00 14 */	bne .L_8148DE9C
/* 8148DE8C | 7F 43 D3 78 */	mr r3, r26
/* 8148DE90 | 48 00 1C C5 */	bl CDBRecordFree
/* 8148DE94 | 38 60 00 0F */	li r3, 0xf
/* 8148DE98 | 48 00 00 B0 */	b .L_8148DF48
.L_8148DE9C:
/* 8148DE9C | 38 60 00 04 */	li r3, 0x4
/* 8148DEA0 | 48 00 26 F1 */	bl CDBIsPrintDebugMessage
/* 8148DEA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DEA8 | 41 82 00 20 */	beq .L_8148DEC8
/* 8148DEAC | 38 60 00 04 */	li r3, 0x4
/* 8148DEB0 | 48 00 26 F9 */	bl CDBReport_
/* 8148DEB4 | 3C 60 81 67 */	lis r3, lbl_8166C580@ha
/* 8148DEB8 | 38 9A 00 08 */	addi r4, r26, 0x8
/* 8148DEBC | 38 63 C5 80 */	addi r3, r3, lbl_8166C580@l
/* 8148DEC0 | 4C C6 31 82 */	crclr cr1eq
/* 8148DEC4 | 48 0A 07 DD */	bl OSReport
.L_8148DEC8:
/* 8148DEC8 | 80 DA 00 30 */	lwz r6, 0x30(r26)
/* 8148DECC | 7F 64 DB 78 */	mr r4, r27
/* 8148DED0 | 7F 85 E3 78 */	mr r5, r28
/* 8148DED4 | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148DED8 | 48 00 30 41 */	bl CDBFWriteData
/* 8148DEDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DEE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8148DEE4 | 41 82 00 30 */	beq .L_8148DF14
/* 8148DEE8 | 80 9A 00 30 */	lwz r4, 0x30(r26)
/* 8148DEEC | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148DEF0 | 48 00 2E C1 */	bl CDBFClose
/* 8148DEF4 | 7F 43 D3 78 */	mr r3, r26
/* 8148DEF8 | 48 00 1C 5D */	bl CDBRecordFree
/* 8148DEFC | 2C 1F 00 17 */	cmpwi r31, 0x17
/* 8148DF00 | 40 82 00 0C */	bne .L_8148DF0C
/* 8148DF04 | 7F 43 D3 78 */	mr r3, r26
/* 8148DF08 | 4B FF EB 05 */	bl CDBRecordRemove
.L_8148DF0C:
/* 8148DF0C | 7F E3 FB 78 */	mr r3, r31
/* 8148DF10 | 48 00 00 38 */	b .L_8148DF48
.L_8148DF14:
/* 8148DF14 | 80 9A 00 30 */	lwz r4, 0x30(r26)
/* 8148DF18 | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148DF1C | 48 00 2E 95 */	bl CDBFClose
/* 8148DF20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DF24 | 41 82 00 08 */	beq .L_8148DF2C
/* 8148DF28 | 48 00 00 20 */	b .L_8148DF48
.L_8148DF2C:
/* 8148DF2C | 48 00 26 19 */	bl CDBVFSync
/* 8148DF30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DF34 | 41 82 00 08 */	beq .L_8148DF3C
/* 8148DF38 | 48 00 00 10 */	b .L_8148DF48
.L_8148DF3C:
/* 8148DF3C | 7F 43 D3 78 */	mr r3, r26
/* 8148DF40 | 48 00 1C 15 */	bl CDBRecordFree
/* 8148DF44 | 38 60 00 00 */	li r3, 0x0
.L_8148DF48:
/* 8148DF48 | 39 61 01 20 */	addi r11, r1, 0x120
/* 8148DF4C | 48 16 B5 BD */	bl _restgpr_26
/* 8148DF50 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148DF54 | 7C 08 03 A6 */	mtlr r0
/* 8148DF58 | 38 21 01 20 */	addi r1, r1, 0x120
/* 8148DF5C | 4E 80 00 20 */	blr
.endfn CDBRecordFileCreateAtOnce

# .text:0x460 | 0x8148DF60 | size: 0x94
.fn CDBRecordFileDelete, global
/* 8148DF60 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8148DF64 | 7C 08 02 A6 */	mflr r0
/* 8148DF68 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8148DF6C | 93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8148DF70 | 7C 7F 1B 78 */	mr r31, r3
/* 8148DF74 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8148DF78 | 48 00 03 6D */	bl CDBRecordKeyIsValid
/* 8148DF7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DF80 | 40 82 00 34 */	bne .L_8148DFB4
/* 8148DF84 | 38 60 00 02 */	li r3, 0x2
/* 8148DF88 | 48 00 26 09 */	bl CDBIsPrintDebugMessage
/* 8148DF8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DF90 | 41 82 00 1C */	beq .L_8148DFAC
/* 8148DF94 | 38 60 00 02 */	li r3, 0x2
/* 8148DF98 | 48 00 26 11 */	bl CDBReport_
/* 8148DF9C | 3C 60 81 67 */	lis r3, lbl_8166C590@ha
/* 8148DFA0 | 38 63 C5 90 */	addi r3, r3, lbl_8166C590@l
/* 8148DFA4 | 4C C6 31 82 */	crclr cr1eq
/* 8148DFA8 | 48 0A 06 F9 */	bl OSReport
.L_8148DFAC:
/* 8148DFAC | 38 60 00 05 */	li r3, 0x5
/* 8148DFB0 | 48 00 00 30 */	b .L_8148DFE0
.L_8148DFB4:
/* 8148DFB4 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 8148DFB8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148DFBC | 4B FF 8E 71 */	bl CDBConvKeyToFullPath
/* 8148DFC0 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8148DFC4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148DFC8 | 48 00 2D B9 */	bl CDBFDeleteFile
/* 8148DFCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DFD0 | 38 00 00 00 */	li r0, 0x0
/* 8148DFD4 | 41 82 00 08 */	beq .L_8148DFDC
/* 8148DFD8 | 7C 60 1B 78 */	mr r0, r3
.L_8148DFDC:
/* 8148DFDC | 7C 03 03 78 */	mr r3, r0
.L_8148DFE0:
/* 8148DFE0 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8148DFE4 | 83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8148DFE8 | 7C 08 03 A6 */	mtlr r0
/* 8148DFEC | 38 21 01 10 */	addi r1, r1, 0x110
/* 8148DFF0 | 4E 80 00 20 */	blr
.endfn CDBRecordFileDelete

# .text:0x4F4 | 0x8148DFF4 | size: 0xB4
.fn CDBRecordFileOpen, global
/* 8148DFF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148DFF8 | 7C 08 02 A6 */	mflr r0
/* 8148DFFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148E000 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148E004 | 7C 9F 23 78 */	mr r31, r4
/* 8148E008 | 7C A4 2B 78 */	mr r4, r5
/* 8148E00C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148E010 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148E014 | 7C 7D 1B 78 */	mr r29, r3
/* 8148E018 | 48 00 18 DD */	bl CDBRecordAllocate
/* 8148E01C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E020 | 41 82 00 08 */	beq .L_8148E028
/* 8148E024 | 48 00 00 68 */	b .L_8148E08C
.L_8148E028:
/* 8148E028 | 83 DD 00 38 */	lwz r30, 0x38(r29)
/* 8148E02C | 7F E4 FB 78 */	mr r4, r31
/* 8148E030 | 80 BD 00 30 */	lwz r5, 0x30(r29)
/* 8148E034 | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148E038 | 48 00 2D 69 */	bl CDBFOpen
/* 8148E03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E040 | 7C 7F 1B 78 */	mr r31, r3
/* 8148E044 | 41 82 00 14 */	beq .L_8148E058
/* 8148E048 | 7F A3 EB 78 */	mr r3, r29
/* 8148E04C | 48 00 1B 09 */	bl CDBRecordFree
/* 8148E050 | 7F E3 FB 78 */	mr r3, r31
/* 8148E054 | 48 00 00 38 */	b .L_8148E08C
.L_8148E058:
/* 8148E058 | 80 DD 00 30 */	lwz r6, 0x30(r29)
/* 8148E05C | 38 7E 04 2C */	addi r3, r30, 0x42c
/* 8148E060 | 38 80 00 00 */	li r4, 0x0
/* 8148E064 | 38 A0 00 01 */	li r5, 0x1
/* 8148E068 | 48 00 2E C1 */	bl CDBFSeekData
/* 8148E06C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E070 | 7C 7F 1B 78 */	mr r31, r3
/* 8148E074 | 41 82 00 14 */	beq .L_8148E088
/* 8148E078 | 7F A3 EB 78 */	mr r3, r29
/* 8148E07C | 48 00 1A D9 */	bl CDBRecordFree
/* 8148E080 | 7F E3 FB 78 */	mr r3, r31
/* 8148E084 | 48 00 00 08 */	b .L_8148E08C
.L_8148E088:
/* 8148E088 | 38 60 00 00 */	li r3, 0x0
.L_8148E08C:
/* 8148E08C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148E090 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148E094 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148E098 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148E09C | 7C 08 03 A6 */	mtlr r0
/* 8148E0A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148E0A4 | 4E 80 00 20 */	blr
.endfn CDBRecordFileOpen

# .text:0x5A8 | 0x8148E0A8 | size: 0x6C
.fn CDBRecordFileClose, global
/* 8148E0A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148E0AC | 7C 08 02 A6 */	mflr r0
/* 8148E0B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148E0B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148E0B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148E0BC | 7C 7E 1B 78 */	mr r30, r3
/* 8148E0C0 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148E0C4 | 80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8148E0C8 | 38 63 04 2C */	addi r3, r3, 0x42c
/* 8148E0CC | 48 00 2C E5 */	bl CDBFClose
/* 8148E0D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E0D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148E0D8 | 41 82 00 18 */	beq .L_8148E0F0
/* 8148E0DC | 2C 03 00 1F */	cmpwi r3, 0x1f
/* 8148E0E0 | 41 82 00 10 */	beq .L_8148E0F0
/* 8148E0E4 | 2C 03 00 0C */	cmpwi r3, 0xc
/* 8148E0E8 | 41 82 00 08 */	beq .L_8148E0F0
/* 8148E0EC | 48 00 00 10 */	b .L_8148E0FC
.L_8148E0F0:
/* 8148E0F0 | 7F C3 F3 78 */	mr r3, r30
/* 8148E0F4 | 48 00 1A 61 */	bl CDBRecordFree
/* 8148E0F8 | 7F E3 FB 78 */	mr r3, r31
.L_8148E0FC:
/* 8148E0FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148E100 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148E104 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148E108 | 7C 08 03 A6 */	mtlr r0
/* 8148E10C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148E110 | 4E 80 00 20 */	blr
.endfn CDBRecordFileClose

# .text:0x614 | 0x8148E114 | size: 0x10
.fn CDBRecordFileGetFileSize, global
/* 8148E114 | 80 C3 00 38 */	lwz r6, 0x38(r3)
/* 8148E118 | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8148E11C | 38 66 04 2C */	addi r3, r6, 0x42c
/* 8148E120 | 48 00 2E 38 */	b CDBFGetFileSize
.endfn CDBRecordFileGetFileSize

# .text:0x624 | 0x8148E124 | size: 0x10
.fn CDBRecordFileGetDataSize, global
/* 8148E124 | 80 C3 00 38 */	lwz r6, 0x38(r3)
/* 8148E128 | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8148E12C | 38 66 04 2C */	addi r3, r6, 0x42c
/* 8148E130 | 48 00 2E 18 */	b CDBFGetDataSize
.endfn CDBRecordFileGetDataSize

# .text:0x634 | 0x8148E134 | size: 0x10
.fn CDBRecordFileWriteData, global
/* 8148E134 | 80 E3 00 38 */	lwz r7, 0x38(r3)
/* 8148E138 | 80 C3 00 30 */	lwz r6, 0x30(r3)
/* 8148E13C | 38 67 04 2C */	addi r3, r7, 0x42c
/* 8148E140 | 48 00 2D D8 */	b CDBFWriteData
.endfn CDBRecordFileWriteData

# .text:0x644 | 0x8148E144 | size: 0xB8
.fn CDBRecordFileReadData, global
/* 8148E144 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148E148 | 7C 08 02 A6 */	mflr r0
/* 8148E14C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148E150 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148E154 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148E158 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148E15C | 7C DD 33 78 */	mr r29, r6
/* 8148E160 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8148E164 | 81 03 00 38 */	lwz r8, 0x38(r3)
/* 8148E168 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148E16C | 41 82 00 68 */	beq .L_8148E1D4
/* 8148E170 | 3C 7F 00 04 */	addis r3, r31, 0x4
/* 8148E174 | 80 C3 EC 04 */	lwz r6, -0x13fc(r3)
/* 8148E178 | 80 03 EC 00 */	lwz r0, -0x1400(r3)
/* 8148E17C | 7F C6 00 50 */	subf r30, r6, r0
/* 8148E180 | 7C 00 F0 40 */	cmplw r0, r30
/* 8148E184 | 40 80 00 08 */	bge .L_8148E18C
/* 8148E188 | 3B C0 00 00 */	li r30, 0x0
.L_8148E18C:
/* 8148E18C | 7C 05 F0 40 */	cmplw r5, r30
/* 8148E190 | 40 80 00 08 */	bge .L_8148E198
/* 8148E194 | 7C BE 2B 78 */	mr r30, r5
.L_8148E198:
/* 8148E198 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148E19C | 41 82 00 24 */	beq .L_8148E1C0
/* 8148E1A0 | 7C 83 23 78 */	mr r3, r4
/* 8148E1A4 | 7F C5 F3 78 */	mr r5, r30
/* 8148E1A8 | 7C 9F 32 14 */	add r4, r31, r6
/* 8148E1AC | 4B EA 20 85 */	bl memcpy
/* 8148E1B0 | 3C 7F 00 04 */	addis r3, r31, 0x4
/* 8148E1B4 | 80 03 EC 04 */	lwz r0, -0x13fc(r3)
/* 8148E1B8 | 7C 00 F2 14 */	add r0, r0, r30
/* 8148E1BC | 90 03 EC 04 */	stw r0, -0x13fc(r3)
.L_8148E1C0:
/* 8148E1C0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8148E1C4 | 41 82 00 08 */	beq .L_8148E1CC
/* 8148E1C8 | 93 DD 00 00 */	stw r30, 0x0(r29)
.L_8148E1CC:
/* 8148E1CC | 38 60 00 00 */	li r3, 0x0
/* 8148E1D0 | 48 00 00 10 */	b .L_8148E1E0
.L_8148E1D4:
/* 8148E1D4 | 80 E3 00 30 */	lwz r7, 0x30(r3)
/* 8148E1D8 | 38 68 04 2C */	addi r3, r8, 0x42c
/* 8148E1DC | 48 00 2D 2D */	bl CDBFReadData
.L_8148E1E0:
/* 8148E1E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148E1E4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148E1E8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148E1EC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148E1F0 | 7C 08 03 A6 */	mtlr r0
/* 8148E1F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148E1F8 | 4E 80 00 20 */	blr
.endfn CDBRecordFileReadData

# .text:0x6FC | 0x8148E1FC | size: 0x10
.fn CDBRecordFileReadDataFile, global
/* 8148E1FC | 81 03 00 38 */	lwz r8, 0x38(r3)
/* 8148E200 | 80 E3 00 30 */	lwz r7, 0x30(r3)
/* 8148E204 | 38 68 04 2C */	addi r3, r8, 0x42c
/* 8148E208 | 48 00 2D 00 */	b CDBFReadData
.endfn CDBRecordFileReadDataFile

# .text:0x70C | 0x8148E20C | size: 0x88
.fn CDBRecordFileSeekData, global
/* 8148E20C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8148E210 | 80 E3 00 38 */	lwz r7, 0x38(r3)
/* 8148E214 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8148E218 | 41 82 00 6C */	beq .L_8148E284
/* 8148E21C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8148E220 | 41 82 00 20 */	beq .L_8148E240
/* 8148E224 | 40 80 00 10 */	bge .L_8148E234
/* 8148E228 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148E22C | 40 80 00 40 */	bge .L_8148E26C
/* 8148E230 | 48 00 00 4C */	b .L_8148E27C
.L_8148E234:
/* 8148E234 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 8148E238 | 40 80 00 44 */	bge .L_8148E27C
/* 8148E23C | 48 00 00 18 */	b .L_8148E254
.L_8148E240:
/* 8148E240 | 38 00 04 00 */	li r0, 0x400
/* 8148E244 | 3C 66 00 04 */	addis r3, r6, 0x4
/* 8148E248 | 7C 00 22 14 */	add r0, r0, r4
/* 8148E24C | 90 03 EC 04 */	stw r0, -0x13fc(r3)
/* 8148E250 | 48 00 00 2C */	b .L_8148E27C
.L_8148E254:
/* 8148E254 | 3C A6 00 04 */	addis r5, r6, 0x4
/* 8148E258 | 80 65 EC 00 */	lwz r3, -0x1400(r5)
/* 8148E25C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8148E260 | 7C 04 00 50 */	subf r0, r4, r0
/* 8148E264 | 90 05 EC 04 */	stw r0, -0x13fc(r5)
/* 8148E268 | 48 00 00 14 */	b .L_8148E27C
.L_8148E26C:
/* 8148E26C | 3C 66 00 04 */	addis r3, r6, 0x4
/* 8148E270 | 80 03 EC 04 */	lwz r0, -0x13fc(r3)
/* 8148E274 | 7C 00 22 14 */	add r0, r0, r4
/* 8148E278 | 90 03 EC 04 */	stw r0, -0x13fc(r3)
.L_8148E27C:
/* 8148E27C | 38 60 00 00 */	li r3, 0x0
/* 8148E280 | 4E 80 00 20 */	blr
.L_8148E284:
/* 8148E284 | 80 C3 00 30 */	lwz r6, 0x30(r3)
/* 8148E288 | 38 67 04 2C */	addi r3, r7, 0x42c
/* 8148E28C | 48 00 2C 9C */	b CDBFSeekData
/* 8148E290 | 4E 80 00 20 */	blr
.endfn CDBRecordFileSeekData

# .text:0x794 | 0x8148E294 | size: 0x10
.fn CDBRecordFileSeekDataFile, global
/* 8148E294 | 80 E3 00 38 */	lwz r7, 0x38(r3)
/* 8148E298 | 80 C3 00 30 */	lwz r6, 0x30(r3)
/* 8148E29C | 38 67 04 2C */	addi r3, r7, 0x42c
/* 8148E2A0 | 48 00 2C 88 */	b CDBFSeekData
.endfn CDBRecordFileSeekDataFile

# .text:0x7A4 | 0x8148E2A4 | size: 0x30
.fn CDBRecordFileTellData, global
/* 8148E2A4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8148E2A8 | 80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8148E2AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8148E2B0 | 41 82 00 14 */	beq .L_8148E2C4
/* 8148E2B4 | 3C 64 00 04 */	addis r3, r4, 0x4
/* 8148E2B8 | 80 63 EC 04 */	lwz r3, -0x13fc(r3)
/* 8148E2BC | 38 63 FC 00 */	subi r3, r3, 0x400
/* 8148E2C0 | 4E 80 00 20 */	blr
.L_8148E2C4:
/* 8148E2C4 | 80 83 00 30 */	lwz r4, 0x30(r3)
/* 8148E2C8 | 38 65 04 2C */	addi r3, r5, 0x42c
/* 8148E2CC | 48 00 2C 6C */	b CDBFTellData
/* 8148E2D0 | 4E 80 00 20 */	blr
.endfn CDBRecordFileTellData

# .text:0x7D4 | 0x8148E2D4 | size: 0x10
.fn CDBRecordFileTellDataFile, global
/* 8148E2D4 | 80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8148E2D8 | 80 83 00 30 */	lwz r4, 0x30(r3)
/* 8148E2DC | 38 65 04 2C */	addi r3, r5, 0x42c
/* 8148E2E0 | 48 00 2C 58 */	b CDBFTellData
.endfn CDBRecordFileTellDataFile

# 0x8166C580..0x8166C5A0 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166C580 | size: 0x10
.obj lbl_8166C580, global
	.4byte 0x20637265
	.4byte 0x61746520
	.4byte 0x25732E2E
	.4byte 0x2E0A0000
.endobj lbl_8166C580

# .data:0x10 | 0x8166C590 | size: 0xD
.obj lbl_8166C590, global
	.string "invalid key\n"
.endobj lbl_8166C590

# .data:0x1D | 0x8166C59D | size: 0x3
.obj gap_08_8166C59D_data, global
.hidden gap_08_8166C59D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_08_8166C59D_data
