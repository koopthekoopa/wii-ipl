.include "macros.inc"
.file "pf_fopen.c"

# 0x814CF924..0x814CF9D0 | size: 0xAC
.text
.balign 4

# .text:0x0 | 0x814CF924 | size: 0xAC
.fn VFipf2_fopen, global
/* 814CF924 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CF928 | 7C 08 02 A6 */	mflr r0
/* 814CF92C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CF930 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CF934 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CF938 | 7C 7E 1B 78 */	mr r30, r3
/* 814CF93C | 7C 83 23 78 */	mr r3, r4
/* 814CF940 | 4B FF FC AD */	bl VFiPFAPI_ParseOpenModeString
/* 814CF944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF948 | 7C 7F 1B 78 */	mr r31, r3
/* 814CF94C | 40 82 00 1C */	bne .L_814CF968
/* 814CF950 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CF954 | 38 80 00 0A */	li r4, 0xa
/* 814CF958 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CF95C | 38 00 00 00 */	li r0, 0x0
/* 814CF960 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 814CF964 | 48 00 00 50 */	b .L_814CF9B4
.L_814CF968:
/* 814CF968 | 7F C4 F3 78 */	mr r4, r30
/* 814CF96C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814CF970 | 38 A0 00 01 */	li r5, 0x1
/* 814CF974 | 4B FE 63 91 */	bl VFiPFSTR_InitStr
/* 814CF978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF97C | 40 82 00 18 */	bne .L_814CF994
/* 814CF980 | 7F E4 FB 78 */	mr r4, r31
/* 814CF984 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814CF988 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CF98C | 4B FF 95 11 */	bl VFiPFFILE_fopen
/* 814CF990 | 48 00 00 18 */	b .L_814CF9A8
.L_814CF994:
/* 814CF994 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CF998 | 38 00 00 00 */	li r0, 0x0
/* 814CF99C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CF9A0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814CF9A4 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CF9A8:
/* 814CF9A8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CF9AC | 4B FF FD 61 */	bl VFiPFAPI_convertReturnValue2NULL
/* 814CF9B0 | 7C 60 1B 78 */	mr r0, r3
.L_814CF9B4:
/* 814CF9B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CF9B8 | 7C 03 03 78 */	mr r3, r0
/* 814CF9BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CF9C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CF9C4 | 7C 08 03 A6 */	mtlr r0
/* 814CF9C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CF9CC | 4E 80 00 20 */	blr
.endfn VFipf2_fopen
