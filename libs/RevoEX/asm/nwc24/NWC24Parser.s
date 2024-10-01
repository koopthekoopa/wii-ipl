.include "macros.inc"
.file "NWC24Parser.c"

# 0x814A5EE0..0x814A6590 | size: 0x6B0
.text
.balign 4

# .text:0x0 | 0x814A5EE0 | size: 0x48
.fn NWC24GetMIMETypeStr, global
/* 814A5EE0 | 3C 80 81 67 */	lis r4, lbl_8166DB08@ha
/* 814A5EE4 | 38 00 00 0A */	li r0, 0xa
/* 814A5EE8 | 38 84 DB 08 */	addi r4, r4, lbl_8166DB08@l
/* 814A5EEC | 38 A0 00 00 */	li r5, 0x0
/* 814A5EF0 | 7C 09 03 A6 */	mtctr r0
.L_814A5EF4:
/* 814A5EF4 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814A5EF8 | 7C 03 00 00 */	cmpw r3, r0
/* 814A5EFC | 40 82 00 18 */	bne .L_814A5F14
/* 814A5F00 | 3C 60 81 67 */	lis r3, lbl_8166DAE0@ha
/* 814A5F04 | 54 A0 10 3A */	slwi r0, r5, 2
/* 814A5F08 | 38 63 DA E0 */	addi r3, r3, lbl_8166DAE0@l
/* 814A5F0C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814A5F10 | 4E 80 00 20 */	blr
.L_814A5F14:
/* 814A5F14 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814A5F18 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A5F1C | 42 00 FF D8 */	bdnz .L_814A5EF4
/* 814A5F20 | 38 60 00 00 */	li r3, 0x0
/* 814A5F24 | 4E 80 00 20 */	blr
.endfn NWC24GetMIMETypeStr

# .text:0x48 | 0x814A5F28 | size: 0x48
.fn NWC24iGetMIMETypeSuffix, global
/* 814A5F28 | 3C 80 81 67 */	lis r4, lbl_8166DB08@ha
/* 814A5F2C | 38 00 00 0A */	li r0, 0xa
/* 814A5F30 | 38 84 DB 08 */	addi r4, r4, lbl_8166DB08@l
/* 814A5F34 | 38 A0 00 00 */	li r5, 0x0
/* 814A5F38 | 7C 09 03 A6 */	mtctr r0
.L_814A5F3C:
/* 814A5F3C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814A5F40 | 7C 03 00 00 */	cmpw r3, r0
/* 814A5F44 | 40 82 00 18 */	bne .L_814A5F5C
/* 814A5F48 | 3C 60 81 67 */	lis r3, lbl_8166DB30@ha
/* 814A5F4C | 54 A0 10 3A */	slwi r0, r5, 2
/* 814A5F50 | 38 63 DB 30 */	addi r3, r3, lbl_8166DB30@l
/* 814A5F54 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814A5F58 | 4E 80 00 20 */	blr
.L_814A5F5C:
/* 814A5F5C | 38 84 00 04 */	addi r4, r4, 0x4
/* 814A5F60 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A5F64 | 42 00 FF D8 */	bdnz .L_814A5F3C
/* 814A5F68 | 38 60 00 00 */	li r3, 0x0
/* 814A5F6C | 4E 80 00 20 */	blr
.endfn NWC24iGetMIMETypeSuffix

# .text:0x90 | 0x814A5F70 | size: 0x48
.fn NWC24GetCharsetStr, global
/* 814A5F70 | 3C 80 81 67 */	lis r4, lbl_8166DC50@ha
/* 814A5F74 | 38 00 00 12 */	li r0, 0x12
/* 814A5F78 | 38 84 DC 50 */	addi r4, r4, lbl_8166DC50@l
/* 814A5F7C | 38 A0 00 00 */	li r5, 0x0
/* 814A5F80 | 7C 09 03 A6 */	mtctr r0
.L_814A5F84:
/* 814A5F84 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814A5F88 | 7C 03 00 00 */	cmpw r3, r0
/* 814A5F8C | 40 82 00 18 */	bne .L_814A5FA4
/* 814A5F90 | 3C 60 81 67 */	lis r3, lbl_8166DC08@ha
/* 814A5F94 | 54 A0 10 3A */	slwi r0, r5, 2
/* 814A5F98 | 38 63 DC 08 */	addi r3, r3, lbl_8166DC08@l
/* 814A5F9C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814A5FA0 | 4E 80 00 20 */	blr
.L_814A5FA4:
/* 814A5FA4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814A5FA8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A5FAC | 42 00 FF D8 */	bdnz .L_814A5F84
/* 814A5FB0 | 38 60 00 00 */	li r3, 0x0
/* 814A5FB4 | 4E 80 00 20 */	blr
.endfn NWC24GetCharsetStr

# .text:0xD8 | 0x814A5FB8 | size: 0x6C
.fn NWC24ParseCharsetStr, global
/* 814A5FB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A5FBC | 7C 08 02 A6 */	mflr r0
/* 814A5FC0 | 3C C0 81 67 */	lis r6, lbl_8166DC08@ha
/* 814A5FC4 | 38 A0 00 12 */	li r5, 0x12
/* 814A5FC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A5FCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A5FD0 | 7C 7F 1B 78 */	mr r31, r3
/* 814A5FD4 | 7C 83 23 78 */	mr r3, r4
/* 814A5FD8 | 38 86 DC 08 */	addi r4, r6, lbl_8166DC08@l
/* 814A5FDC | 48 00 03 95 */	bl StrCmpMultiNCS
/* 814A5FE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5FE4 | 40 80 00 14 */	bge .L_814A5FF8
/* 814A5FE8 | 38 00 FF FF */	li r0, -0x1
/* 814A5FEC | 38 60 FF FC */	li r3, -0x4
/* 814A5FF0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814A5FF4 | 48 00 00 1C */	b .L_814A6010
.L_814A5FF8:
/* 814A5FF8 | 3C 80 81 67 */	lis r4, lbl_8166DC50@ha
/* 814A5FFC | 54 60 10 3A */	slwi r0, r3, 2
/* 814A6000 | 38 84 DC 50 */	addi r4, r4, lbl_8166DC50@l
/* 814A6004 | 38 60 00 00 */	li r3, 0x0
/* 814A6008 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814A600C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A6010:
/* 814A6010 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A6014 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A6018 | 7C 08 03 A6 */	mtlr r0
/* 814A601C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A6020 | 4E 80 00 20 */	blr
.endfn NWC24ParseCharsetStr

# .text:0x144 | 0x814A6024 | size: 0x48
.fn NWC24GetEncodingStr, global
/* 814A6024 | 3C 80 81 67 */	lis r4, lbl_8166DCC0@ha
/* 814A6028 | 38 00 00 04 */	li r0, 0x4
/* 814A602C | 38 84 DC C0 */	addi r4, r4, lbl_8166DCC0@l
/* 814A6030 | 38 A0 00 00 */	li r5, 0x0
/* 814A6034 | 7C 09 03 A6 */	mtctr r0
.L_814A6038:
/* 814A6038 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814A603C | 7C 03 00 00 */	cmpw r3, r0
/* 814A6040 | 40 82 00 18 */	bne .L_814A6058
/* 814A6044 | 3C 60 81 67 */	lis r3, lbl_8166DCB0@ha
/* 814A6048 | 54 A0 10 3A */	slwi r0, r5, 2
/* 814A604C | 38 63 DC B0 */	addi r3, r3, lbl_8166DCB0@l
/* 814A6050 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814A6054 | 4E 80 00 20 */	blr
.L_814A6058:
/* 814A6058 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814A605C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A6060 | 42 00 FF D8 */	bdnz .L_814A6038
/* 814A6064 | 38 60 00 00 */	li r3, 0x0
/* 814A6068 | 4E 80 00 20 */	blr
.endfn NWC24GetEncodingStr

# .text:0x18C | 0x814A606C | size: 0x6C
.fn NWC24ParseEncodingStr, global
/* 814A606C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A6070 | 7C 08 02 A6 */	mflr r0
/* 814A6074 | 3C C0 81 67 */	lis r6, lbl_8166DCB0@ha
/* 814A6078 | 38 A0 00 04 */	li r5, 0x4
/* 814A607C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A6080 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A6084 | 7C 7F 1B 78 */	mr r31, r3
/* 814A6088 | 7C 83 23 78 */	mr r3, r4
/* 814A608C | 38 86 DC B0 */	addi r4, r6, lbl_8166DCB0@l
/* 814A6090 | 48 00 02 E1 */	bl StrCmpMultiNCS
/* 814A6094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6098 | 40 80 00 14 */	bge .L_814A60AC
/* 814A609C | 38 00 00 00 */	li r0, 0x0
/* 814A60A0 | 38 60 FF FC */	li r3, -0x4
/* 814A60A4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814A60A8 | 48 00 00 1C */	b .L_814A60C4
.L_814A60AC:
/* 814A60AC | 3C 80 81 67 */	lis r4, lbl_8166DCC0@ha
/* 814A60B0 | 54 60 10 3A */	slwi r0, r3, 2
/* 814A60B4 | 38 84 DC C0 */	addi r4, r4, lbl_8166DCC0@l
/* 814A60B8 | 38 60 00 00 */	li r3, 0x0
/* 814A60BC | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814A60C0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A60C4:
/* 814A60C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A60C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A60CC | 7C 08 03 A6 */	mtlr r0
/* 814A60D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A60D4 | 4E 80 00 20 */	blr
.endfn NWC24ParseEncodingStr

# .text:0x1F8 | 0x814A60D8 | size: 0x17C
.fn NWC24iExtractAddrSpec, global
/* 814A60D8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A60DC | 7C 08 02 A6 */	mflr r0
/* 814A60E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A60E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A60E8 | 48 15 33 C5 */	bl _savegpr_22
/* 814A60EC | 7C 76 1B 78 */	mr r22, r3
/* 814A60F0 | 7C 9E 23 78 */	mr r30, r4
/* 814A60F4 | 7C B7 2B 78 */	mr r23, r5
/* 814A60F8 | 7C D8 33 78 */	mr r24, r6
/* 814A60FC | 7C F9 3B 78 */	mr r25, r7
/* 814A6100 | 3B E0 FF F3 */	li r31, -0xd
/* 814A6104 | 3B A0 00 00 */	li r29, 0x0
/* 814A6108 | 3B 80 00 00 */	li r28, 0x0
/* 814A610C | 3B 60 00 00 */	li r27, 0x0
/* 814A6110 | 3B 40 00 00 */	li r26, 0x0
/* 814A6114 | 48 00 00 EC */	b .L_814A6200
.L_814A6118:
/* 814A6118 | 7E C3 B3 78 */	mr r3, r22
/* 814A611C | 4B FF FB 9D */	bl NWC24FStreamGetc
/* 814A6120 | 7C 60 07 74 */	extsb r0, r3
/* 814A6124 | 2C 00 00 2C */	cmpwi r0, 0x2c
/* 814A6128 | 40 82 00 28 */	bne .L_814A6150
/* 814A612C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A6130 | 40 82 00 20 */	bne .L_814A6150
/* 814A6134 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A6138 | 7C 1D B8 40 */	cmplw r29, r23
/* 814A613C | 40 81 00 0C */	ble .L_814A6148
/* 814A6140 | 3B E0 00 00 */	li r31, 0x0
/* 814A6144 | 48 00 00 C4 */	b .L_814A6208
.L_814A6148:
/* 814A6148 | 3B 40 00 00 */	li r26, 0x0
/* 814A614C | 48 00 00 B0 */	b .L_814A61FC
.L_814A6150:
/* 814A6150 | 7C 64 07 74 */	extsb r4, r3
/* 814A6154 | 2C 04 00 22 */	cmpwi r4, 0x22
/* 814A6158 | 40 82 00 0C */	bne .L_814A6164
/* 814A615C | 6B 7B 00 01 */	xori r27, r27, 0x1
/* 814A6160 | 48 00 00 9C */	b .L_814A61FC
.L_814A6164:
/* 814A6164 | 2C 04 00 29 */	cmpwi r4, 0x29
/* 814A6168 | 40 82 00 0C */	bne .L_814A6174
/* 814A616C | 57 7B 07 FA */	rlwinm r27, r27, 0, 31, 29
/* 814A6170 | 48 00 00 8C */	b .L_814A61FC
.L_814A6174:
/* 814A6174 | 2C 04 00 28 */	cmpwi r4, 0x28
/* 814A6178 | 40 82 00 0C */	bne .L_814A6184
/* 814A617C | 63 7B 00 02 */	ori r27, r27, 0x2
/* 814A6180 | 48 00 00 7C */	b .L_814A61FC
.L_814A6184:
/* 814A6184 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A6188 | 40 82 00 74 */	bne .L_814A61FC
/* 814A618C | 7C 1D B8 40 */	cmplw r29, r23
/* 814A6190 | 41 80 00 6C */	blt .L_814A61FC
/* 814A6194 | 2C 04 00 20 */	cmpwi r4, 0x20
/* 814A6198 | 41 82 00 64 */	beq .L_814A61FC
/* 814A619C | 2C 04 00 09 */	cmpwi r4, 0x9
/* 814A61A0 | 41 82 00 5C */	beq .L_814A61FC
/* 814A61A4 | 2C 04 00 0D */	cmpwi r4, 0xd
/* 814A61A8 | 41 82 00 54 */	beq .L_814A61FC
/* 814A61AC | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814A61B0 | 41 82 00 4C */	beq .L_814A61FC
/* 814A61B4 | 2C 04 00 3C */	cmpwi r4, 0x3c
/* 814A61B8 | 40 82 00 0C */	bne .L_814A61C4
/* 814A61BC | 3B 80 00 00 */	li r28, 0x0
/* 814A61C0 | 48 00 00 3C */	b .L_814A61FC
.L_814A61C4:
/* 814A61C4 | 2C 04 00 3E */	cmpwi r4, 0x3e
/* 814A61C8 | 40 82 00 0C */	bne .L_814A61D4
/* 814A61CC | 3B E0 00 00 */	li r31, 0x0
/* 814A61D0 | 48 00 00 38 */	b .L_814A6208
.L_814A61D4:
/* 814A61D4 | 38 19 FF FF */	subi r0, r25, 0x1
/* 814A61D8 | 7C 1C 00 40 */	cmplw r28, r0
/* 814A61DC | 41 80 00 0C */	blt .L_814A61E8
/* 814A61E0 | 3B E0 FF F8 */	li r31, -0x8
/* 814A61E4 | 48 00 00 24 */	b .L_814A6208
.L_814A61E8:
/* 814A61E8 | 2C 04 00 40 */	cmpwi r4, 0x40
/* 814A61EC | 40 82 00 08 */	bne .L_814A61F4
/* 814A61F0 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814A61F4:
/* 814A61F4 | 7C 78 E1 AE */	stbx r3, r24, r28
/* 814A61F8 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814A61FC:
/* 814A61FC | 3B DE FF FF */	subi r30, r30, 0x1
.L_814A6200:
/* 814A6200 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A6204 | 40 82 FF 14 */	bne .L_814A6118
.L_814A6208:
/* 814A6208 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A620C | 40 82 00 10 */	bne .L_814A621C
/* 814A6210 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6214 | 40 81 00 08 */	ble .L_814A621C
/* 814A6218 | 3B E0 00 00 */	li r31, 0x0
.L_814A621C:
/* 814A621C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A6220 | 40 82 00 18 */	bne .L_814A6238
/* 814A6224 | 38 00 00 00 */	li r0, 0x0
/* 814A6228 | 2C 1A 00 01 */	cmpwi r26, 0x1
/* 814A622C | 7C 18 E1 AE */	stbx r0, r24, r28
/* 814A6230 | 41 82 00 08 */	beq .L_814A6238
/* 814A6234 | 3B E0 FF E8 */	li r31, -0x18
.L_814A6238:
/* 814A6238 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A623C | 7F E3 FB 78 */	mr r3, r31
/* 814A6240 | 48 15 32 B9 */	bl _restgpr_22
/* 814A6244 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A6248 | 7C 08 03 A6 */	mtlr r0
/* 814A624C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A6250 | 4E 80 00 20 */	blr
.endfn NWC24iExtractAddrSpec

# .text:0x374 | 0x814A6254 | size: 0x11C
.fn NWC24iSearchHeaderF, global
/* 814A6254 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A6258 | 7C 08 02 A6 */	mflr r0
/* 814A625C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A6260 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A6264 | 48 15 32 45 */	bl _savegpr_21
/* 814A6268 | 7C 96 23 78 */	mr r22, r4
/* 814A626C | 7C 75 1B 78 */	mr r21, r3
/* 814A6270 | 7C B7 2B 78 */	mr r23, r5
/* 814A6274 | 7C D8 33 78 */	mr r24, r6
/* 814A6278 | 7C F9 3B 78 */	mr r25, r7
/* 814A627C | 3B 60 00 00 */	li r27, 0x0
/* 814A6280 | 3B 40 FF F3 */	li r26, -0xd
/* 814A6284 | 38 80 00 00 */	li r4, 0x0
/* 814A6288 | 4B FF FB 1D */	bl NWC24FStreamSeek
/* 814A628C | 3B 80 00 00 */	li r28, 0x0
/* 814A6290 | 48 00 00 BC */	b .L_814A634C
.L_814A6294:
/* 814A6294 | 7E A3 AB 78 */	mr r3, r21
/* 814A6298 | 48 00 01 75 */	bl GetFieldLength
/* 814A629C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A62A0 | 7C 7D 1B 78 */	mr r29, r3
/* 814A62A4 | 40 80 00 0C */	bge .L_814A62B0
/* 814A62A8 | 3B 40 FF E8 */	li r26, -0x18
/* 814A62AC | 48 00 00 A8 */	b .L_814A6354
.L_814A62B0:
/* 814A62B0 | 7E A3 AB 78 */	mr r3, r21
/* 814A62B4 | 7F 64 DB 78 */	mr r4, r27
/* 814A62B8 | 4B FF FA ED */	bl NWC24FStreamSeek
/* 814A62BC | 7E A3 AB 78 */	mr r3, r21
/* 814A62C0 | 7F A5 EB 78 */	mr r5, r29
/* 814A62C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A62C8 | 4B FF FA FD */	bl NWC24FStreamGetPtr
/* 814A62CC | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 814A62D0 | 7E DE B3 78 */	mr r30, r22
.L_814A62D4:
/* 814A62D4 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814A62D8 | 7C 63 07 74 */	extsb r3, r3
/* 814A62DC | 4B FF 6D F5 */	bl Mail_tolower
/* 814A62E0 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814A62E4 | 7C 63 07 74 */	extsb r3, r3
/* 814A62E8 | 7C 00 07 74 */	extsb r0, r0
/* 814A62EC | 7C 03 00 00 */	cmpw r3, r0
/* 814A62F0 | 40 82 00 1C */	bne .L_814A630C
/* 814A62F4 | 8C 1E 00 01 */	lbzu r0, 0x1(r30)
/* 814A62F8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814A62FC | 7C 00 07 75 */	extsb. r0, r0
/* 814A6300 | 40 82 FF D4 */	bne .L_814A62D4
/* 814A6304 | 38 00 00 01 */	li r0, 0x1
/* 814A6308 | 48 00 00 08 */	b .L_814A6310
.L_814A630C:
/* 814A630C | 38 00 00 00 */	li r0, 0x0
.L_814A6310:
/* 814A6310 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A6314 | 41 82 00 24 */	beq .L_814A6338
/* 814A6318 | 7E C3 B3 78 */	mr r3, r22
/* 814A631C | 4B FF 6A 61 */	bl Mail_strlen
/* 814A6320 | 7C 9B 1A 14 */	add r4, r27, r3
/* 814A6324 | 7C 03 E8 50 */	subf r0, r3, r29
/* 814A6328 | 90 98 00 00 */	stw r4, 0x0(r24)
/* 814A632C | 3B 40 00 00 */	li r26, 0x0
/* 814A6330 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814A6334 | 48 00 00 20 */	b .L_814A6354
.L_814A6338:
/* 814A6338 | 7F 7B EA 14 */	add r27, r27, r29
/* 814A633C | 7E A3 AB 78 */	mr r3, r21
/* 814A6340 | 7F 64 DB 78 */	mr r4, r27
/* 814A6344 | 4B FF FA 61 */	bl NWC24FStreamSeek
/* 814A6348 | 7F 9C EA 14 */	add r28, r28, r29
.L_814A634C:
/* 814A634C | 7C 1C B8 40 */	cmplw r28, r23
/* 814A6350 | 41 80 FF 44 */	blt .L_814A6294
.L_814A6354:
/* 814A6354 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A6358 | 7F 43 D3 78 */	mr r3, r26
/* 814A635C | 48 15 31 99 */	bl _restgpr_21
/* 814A6360 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A6364 | 7C 08 03 A6 */	mtlr r0
/* 814A6368 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A636C | 4E 80 00 20 */	blr
.endfn NWC24iSearchHeaderF

# .text:0x490 | 0x814A6370 | size: 0x9C
.fn StrCmpMultiNCS, local
/* 814A6370 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A6374 | 7C 08 02 A6 */	mflr r0
/* 814A6378 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A637C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A6380 | 48 15 31 39 */	bl _savegpr_25
/* 814A6384 | 7C 79 1B 78 */	mr r25, r3
/* 814A6388 | 7C 9F 23 78 */	mr r31, r4
/* 814A638C | 7C BA 2B 78 */	mr r26, r5
/* 814A6390 | 3B 60 FF FF */	li r27, -0x1
/* 814A6394 | 3B C0 00 00 */	li r30, 0x0
/* 814A6398 | 48 00 00 50 */	b .L_814A63E8
.L_814A639C:
/* 814A639C | 83 BF 00 00 */	lwz r29, 0x0(r31)
/* 814A63A0 | 7F 3C CB 78 */	mr r28, r25
.L_814A63A4:
/* 814A63A4 | 88 7C 00 00 */	lbz r3, 0x0(r28)
/* 814A63A8 | 4B FF 6D 29 */	bl Mail_tolower
/* 814A63AC | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814A63B0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814A63B4 | 7C 03 00 40 */	cmplw r3, r0
/* 814A63B8 | 41 81 00 28 */	bgt .L_814A63E0
/* 814A63BC | 40 80 00 0C */	bge .L_814A63C8
/* 814A63C0 | 7F 63 DB 78 */	mr r3, r27
/* 814A63C4 | 48 00 00 30 */	b .L_814A63F4
.L_814A63C8:
/* 814A63C8 | 8C 1D 00 01 */	lbzu r0, 0x1(r29)
/* 814A63CC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814A63D0 | 7C 00 07 75 */	extsb. r0, r0
/* 814A63D4 | 40 82 FF D0 */	bne .L_814A63A4
/* 814A63D8 | 7F DB F3 78 */	mr r27, r30
/* 814A63DC | 4B FF FF C8 */	b .L_814A63A4
.L_814A63E0:
/* 814A63E0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A63E4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814A63E8:
/* 814A63E8 | 7C 1E D0 00 */	cmpw r30, r26
/* 814A63EC | 41 80 FF B0 */	blt .L_814A639C
/* 814A63F0 | 7F 63 DB 78 */	mr r3, r27
.L_814A63F4:
/* 814A63F4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A63F8 | 48 15 31 0D */	bl _restgpr_25
/* 814A63FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A6400 | 7C 08 03 A6 */	mtlr r0
/* 814A6404 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A6408 | 4E 80 00 20 */	blr
.endfn StrCmpMultiNCS

# .text:0x52C | 0x814A640C | size: 0xBC
.fn GetFieldLength, local
/* 814A640C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A6410 | 7C 08 02 A6 */	mflr r0
/* 814A6414 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A6418 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A641C | 3B E0 00 00 */	li r31, 0x0
/* 814A6420 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A6424 | 3B C0 00 00 */	li r30, 0x0
/* 814A6428 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A642C | 3B A0 00 00 */	li r29, 0x0
/* 814A6430 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A6434 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6438:
/* 814A6438 | 7F 83 E3 78 */	mr r3, r28
/* 814A643C | 4B FF F8 7D */	bl NWC24FStreamGetc
/* 814A6440 | 28 1E 00 02 */	cmplwi r30, 0x2
/* 814A6444 | 40 82 00 1C */	bne .L_814A6460
/* 814A6448 | 7C 60 07 74 */	extsb r0, r3
/* 814A644C | 3B A0 00 00 */	li r29, 0x0
/* 814A6450 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A6454 | 41 82 00 0C */	beq .L_814A6460
/* 814A6458 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A645C | 40 82 00 48 */	bne .L_814A64A4
.L_814A6460:
/* 814A6460 | 7C 60 07 74 */	extsb r0, r3
/* 814A6464 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814A6468 | 40 82 00 0C */	bne .L_814A6474
/* 814A646C | 63 DE 00 01 */	ori r30, r30, 0x1
/* 814A6470 | 48 00 00 1C */	b .L_814A648C
.L_814A6474:
/* 814A6474 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A6478 | 40 82 00 0C */	bne .L_814A6484
/* 814A647C | 57 DE 08 3C */	slwi r30, r30, 1
/* 814A6480 | 48 00 00 0C */	b .L_814A648C
.L_814A6484:
/* 814A6484 | 3B C0 00 00 */	li r30, 0x0
/* 814A6488 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814A648C:
/* 814A648C | 28 1D 03 E8 */	cmplwi r29, 0x3e8
/* 814A6490 | 41 80 00 0C */	blt .L_814A649C
/* 814A6494 | 3B E0 FF FF */	li r31, -0x1
/* 814A6498 | 48 00 00 0C */	b .L_814A64A4
.L_814A649C:
/* 814A649C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814A64A0 | 4B FF FF 98 */	b .L_814A6438
.L_814A64A4:
/* 814A64A4 | 7F E3 FB 78 */	mr r3, r31
/* 814A64A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A64AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A64B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A64B4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A64B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A64BC | 7C 08 03 A6 */	mtlr r0
/* 814A64C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A64C4 | 4E 80 00 20 */	blr
.endfn GetFieldLength

# .text:0x5E8 | 0x814A64C8 | size: 0xC8
.fn NWC24CommitMsg, global
/* 814A64C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A64CC | 7C 08 02 A6 */	mflr r0
/* 814A64D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A64D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A64D8 | 3B E0 00 00 */	li r31, 0x0
/* 814A64DC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A64E0 | 7C 7E 1B 78 */	mr r30, r3
/* 814A64E4 | 4B FF 9E 15 */	bl NWC24IsMsgLibOpened
/* 814A64E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A64EC | 40 82 00 18 */	bne .L_814A6504
/* 814A64F0 | 4B FF 9E 1D */	bl NWC24IsMsgLibOpenedByTool
/* 814A64F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A64F8 | 40 82 00 0C */	bne .L_814A6504
/* 814A64FC | 38 60 FF F7 */	li r3, -0x9
/* 814A6500 | 48 00 00 78 */	b .L_814A6578
.L_814A6504:
/* 814A6504 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814A6508 | 54 60 05 EF */	rlwinm. r0, r3, 0, 23, 23
/* 814A650C | 41 82 00 0C */	beq .L_814A6518
/* 814A6510 | 54 60 05 AD */	rlwinm. r0, r3, 0, 22, 22
/* 814A6514 | 41 82 00 0C */	beq .L_814A6520
.L_814A6518:
/* 814A6518 | 38 60 FF F9 */	li r3, -0x7
/* 814A651C | 48 00 00 5C */	b .L_814A6578
.L_814A6520:
/* 814A6520 | 80 0D 9B 98 */	lwz r0, lbl_81697BD8@sda21(r0)
/* 814A6524 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A6528 | 41 82 00 44 */	beq .L_814A656C
/* 814A652C | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 814A6530 | 41 82 00 3C */	beq .L_814A656C
/* 814A6534 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A6538 | 4B FF 8D F9 */	bl NWC24GetMyUserId
/* 814A653C | 88 1E 00 C8 */	lbz r0, 0xc8(r30)
/* 814A6540 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814A6544 | 40 82 00 28 */	bne .L_814A656C
/* 814A6548 | 80 9E 00 88 */	lwz r4, 0x88(r30)
/* 814A654C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A6550 | 80 BE 00 8C */	lwz r5, 0x8c(r30)
/* 814A6554 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814A6558 | 7C 80 02 78 */	xor r0, r4, r0
/* 814A655C | 7C A3 1A 78 */	xor r3, r5, r3
/* 814A6560 | 7C 60 03 79 */	or. r0, r3, r0
/* 814A6564 | 40 82 00 08 */	bne .L_814A656C
/* 814A6568 | 3B E0 00 01 */	li r31, 0x1
.L_814A656C:
/* 814A656C | 7F C3 F3 78 */	mr r3, r30
/* 814A6570 | 7F E4 FB 78 */	mr r4, r31
/* 814A6574 | 48 00 00 1D */	bl NWC24CommitMsgInternal_814A6590
.L_814A6578:
/* 814A6578 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A657C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A6580 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A6584 | 7C 08 03 A6 */	mtlr r0
/* 814A6588 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A658C | 4E 80 00 20 */	blr
.endfn NWC24CommitMsg

# 0x8166DA10..0x8166DCD0 | size: 0x2C0
.data
.balign 8

# .data:0x0 | 0x8166DA10 | size: 0x1C
.obj lbl_8166DA10, global
	.4byte 0x6170706C
	.4byte 0x69636174
	.4byte 0x696F6E2F
	.4byte 0x6F637465
	.4byte 0x742D7374
	.4byte 0x7265616D
	.4byte 0x00000000
.endobj lbl_8166DA10

# .data:0x1C | 0x8166DA2C | size: 0x1C
.obj lbl_8166DA2C, global
	.4byte 0x6170706C
	.4byte 0x69636174
	.4byte 0x696F6E2F
	.4byte 0x782D7769
	.4byte 0x692D6D69
	.4byte 0x6E696461
	.4byte 0x74610000
.endobj lbl_8166DA2C

# .data:0x38 | 0x8166DA48 | size: 0x1C
.obj lbl_8166DA48, global
	.4byte 0x6170706C
	.4byte 0x69636174
	.4byte 0x696F6E2F
	.4byte 0x782D7769
	.4byte 0x692D6D73
	.4byte 0x67626F61
	.4byte 0x72640000
.endobj lbl_8166DA48

# .data:0x54 | 0x8166DA64 | size: 0xC
.obj lbl_8166DA64, global
	.4byte 0x696D6167
	.4byte 0x652F6A70
	.4byte 0x65670000
.endobj lbl_8166DA64

# .data:0x60 | 0x8166DA70 | size: 0x14
.obj lbl_8166DA70, global
	.string "image/x-wii-picture"
.endobj lbl_8166DA70

# .data:0x74 | 0x8166DA84 | size: 0x1C
.obj lbl_8166DA84, global
	.4byte 0x6D756C74
	.4byte 0x69706172
	.4byte 0x742F616C
	.4byte 0x7465726E
	.4byte 0x61746976
	.4byte 0x65000000
	.4byte 0x00000000
.endobj lbl_8166DA84

# .data:0x90 | 0x8166DAA0 | size: 0x10
.obj lbl_8166DAA0, global
	.string "multipart/mixed"
.endobj lbl_8166DAA0

# .data:0xA0 | 0x8166DAB0 | size: 0x14
.obj lbl_8166DAB0, global
	.4byte 0x6D756C74
	.4byte 0x69706172
	.4byte 0x742F7265
	.4byte 0x6C617465
	.4byte 0x64000000
.endobj lbl_8166DAB0

# .data:0xB4 | 0x8166DAC4 | size: 0xC
.obj lbl_8166DAC4, global
	.4byte 0x74657874
	.4byte 0x2F68746D
	.4byte 0x6C000000
.endobj lbl_8166DAC4

# .data:0xC0 | 0x8166DAD0 | size: 0x10
.obj lbl_8166DAD0, global
	.4byte 0x74657874
	.4byte 0x2F706C61
	.4byte 0x696E0000
	.4byte 0x00000000
.endobj lbl_8166DAD0

# .data:0xD0 | 0x8166DAE0 | size: 0x28
.obj lbl_8166DAE0, global
	.4byte lbl_8166DA10
	.4byte lbl_8166DA2C
	.4byte lbl_8166DA48
	.4byte lbl_8166DA64
	.4byte lbl_8166DA70
	.4byte lbl_8166DA84
	.4byte lbl_8166DAA0
	.4byte lbl_8166DAB0
	.4byte lbl_8166DAC4
	.4byte lbl_8166DAD0
.endobj lbl_8166DAE0

# .data:0xF8 | 0x8166DB08 | size: 0x28
.obj lbl_8166DB08, global
	.4byte 0x00030000
	.4byte 0x00030002
	.4byte 0x00030001
	.4byte 0x00020000
	.4byte 0x00020001
	.4byte 0x000F0001
	.4byte 0x000F0000
	.4byte 0x000F0002
	.4byte 0x00010001
	.4byte 0x00010000
.endobj lbl_8166DB08

# .data:0x120 | 0x8166DB30 | size: 0x28
.obj lbl_8166DB30, global
	.4byte lbl_81697B88
	.4byte lbl_81697B8C
	.4byte lbl_81697B8C
	.4byte lbl_81697B90
	.4byte lbl_81697B8C
	.4byte lbl_81697B94
	.4byte lbl_81697B94
	.4byte lbl_81697B94
	.4byte lbl_81697B98
	.4byte lbl_81697B9C
.endobj lbl_8166DB30

# .data:0x148 | 0x8166DB58 | size: 0xC
.obj lbl_8166DB58, global
	.string "iso-2022-jp"
.endobj lbl_8166DB58

# .data:0x154 | 0x8166DB64 | size: 0xC
.obj lbl_8166DB64, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D310000
.endobj lbl_8166DB64

# .data:0x160 | 0x8166DB70 | size: 0xC
.obj lbl_8166DB70, global
	.string "iso-8859-10"
.endobj lbl_8166DB70

# .data:0x16C | 0x8166DB7C | size: 0xC
.obj lbl_8166DB7C, global
	.string "iso-8859-15"
.endobj lbl_8166DB7C

# .data:0x178 | 0x8166DB88 | size: 0xC
.obj lbl_8166DB88, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D320000
.endobj lbl_8166DB88

# .data:0x184 | 0x8166DB94 | size: 0xC
.obj lbl_8166DB94, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D330000
.endobj lbl_8166DB94

# .data:0x190 | 0x8166DBA0 | size: 0xC
.obj lbl_8166DBA0, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D350000
.endobj lbl_8166DBA0

# .data:0x19C | 0x8166DBAC | size: 0xC
.obj lbl_8166DBAC, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D370000
.endobj lbl_8166DBAC

# .data:0x1A8 | 0x8166DBB8 | size: 0xC
.obj lbl_8166DBB8, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D390000
.endobj lbl_8166DBB8

# .data:0x1B4 | 0x8166DBC4 | size: 0xC
.obj lbl_8166DBC4, global
	.4byte 0x73686966
	.4byte 0x745F6A69
	.4byte 0x73000000
.endobj lbl_8166DBC4

# .data:0x1C0 | 0x8166DBD0 | size: 0xC
.obj lbl_8166DBD0, global
	.4byte 0x75732D61
	.4byte 0x73636969
	.4byte 0x00000000
.endobj lbl_8166DBD0

# .data:0x1CC | 0x8166DBDC | size: 0xC
.obj lbl_8166DBDC, global
	.4byte 0x7574662D
	.4byte 0x31366265
	.4byte 0x00000000
.endobj lbl_8166DBDC

# .data:0x1D8 | 0x8166DBE8 | size: 0xC
.obj lbl_8166DBE8, global
	.4byte 0x7574662D
	.4byte 0x33326265
	.4byte 0x00000000
.endobj lbl_8166DBE8

# .data:0x1E4 | 0x8166DBF4 | size: 0x14
.obj lbl_8166DBF4, global
	.4byte 0x77696E64
	.4byte 0x6F77732D
	.4byte 0x31323532
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166DBF4

# .data:0x1F8 | 0x8166DC08 | size: 0x48
.obj lbl_8166DC08, global
	.4byte lbl_81697BA0
	.4byte lbl_81697BA8
	.4byte lbl_81697BB0
	.4byte lbl_8166DB58
	.4byte lbl_8166DB64
	.4byte lbl_8166DB70
	.4byte lbl_8166DB7C
	.4byte lbl_8166DB88
	.4byte lbl_8166DB94
	.4byte lbl_8166DBA0
	.4byte lbl_8166DBAC
	.4byte lbl_8166DBB8
	.4byte lbl_8166DBC4
	.4byte lbl_8166DBD0
	.4byte lbl_8166DBDC
	.4byte lbl_8166DBE8
	.4byte lbl_81697BB8
	.4byte lbl_8166DBF4
.endobj lbl_8166DC08

# .data:0x240 | 0x8166DC50 | size: 0x48
.obj lbl_8166DC50, global
	.4byte 0x00020002
	.4byte 0x00030002
	.4byte 0x000B2312
	.4byte 0x00020000
	.4byte 0x00080001
	.4byte 0x0008000A
	.4byte 0x0008000F
	.4byte 0x00080002
	.4byte 0x00080003
	.4byte 0x00080005
	.4byte 0x00080007
	.4byte 0x00080009
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00010010
	.4byte 0x00010020
	.4byte 0x00010008
	.4byte 0x000F1252
.endobj lbl_8166DC50

# .data:0x288 | 0x8166DC98 | size: 0x18
.obj lbl_8166DC98, global
	.4byte 0x71756F74
	.4byte 0x65642D70
	.4byte 0x72696E74
	.4byte 0x61626C65
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166DC98

# .data:0x2A0 | 0x8166DCB0 | size: 0x10
.obj lbl_8166DCB0, global
	.4byte lbl_81697BC0
	.4byte lbl_81697BC8
	.4byte lbl_81697BD0
	.4byte lbl_8166DC98
.endobj lbl_8166DCB0

# .data:0x2B0 | 0x8166DCC0 | size: 0x10
.obj lbl_8166DCC0, global
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
.endobj lbl_8166DCC0

# 0x81697B88..0x81697BE0 | size: 0x58
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B88 | size: 0x4
.obj lbl_81697B88, global
	.string "dat"
.endobj lbl_81697B88

# .sdata:0x4 | 0x81697B8C | size: 0x4
.obj lbl_81697B8C, global
	.string "wii"
.endobj lbl_81697B8C

# .sdata:0x8 | 0x81697B90 | size: 0x4
.obj lbl_81697B90, global
	.string "jpg"
.endobj lbl_81697B90

# .sdata:0xC | 0x81697B94 | size: 0x4
.obj lbl_81697B94, global
	.string "???"
.endobj lbl_81697B94

# .sdata:0x10 | 0x81697B98 | size: 0x4
.obj lbl_81697B98, global
	.string "htm"
.endobj lbl_81697B98

# .sdata:0x14 | 0x81697B9C | size: 0x4
.obj lbl_81697B9C, global
	.string "txt"
.endobj lbl_81697B9C

# .sdata:0x18 | 0x81697BA0 | size: 0x8
.obj lbl_81697BA0, global
	.4byte 0x6575632D
	.4byte 0x6A700000
.endobj lbl_81697BA0

# .sdata:0x20 | 0x81697BA8 | size: 0x8
.obj lbl_81697BA8, global
	.4byte 0x6575632D
	.4byte 0x6B720000
.endobj lbl_81697BA8

# .sdata:0x28 | 0x81697BB0 | size: 0x8
.obj lbl_81697BB0, global
	.4byte 0x67623233
	.4byte 0x31320000
.endobj lbl_81697BB0

# .sdata:0x30 | 0x81697BB8 | size: 0x8
.obj lbl_81697BB8, global
	.4byte 0x7574662D
	.4byte 0x38000000
.endobj lbl_81697BB8

# .sdata:0x38 | 0x81697BC0 | size: 0x8
.obj lbl_81697BC0, global
	.4byte 0x37626974
	.4byte 0x00000000
.endobj lbl_81697BC0

# .sdata:0x40 | 0x81697BC8 | size: 0x8
.obj lbl_81697BC8, global
	.4byte 0x38626974
	.4byte 0x00000000
.endobj lbl_81697BC8

# .sdata:0x48 | 0x81697BD0 | size: 0x8
.obj lbl_81697BD0, global
	.4byte 0x62617365
	.4byte 0x36340000
.endobj lbl_81697BD0

# .sdata:0x50 | 0x81697BD8 | size: 0x8
.obj lbl_81697BD8, global
	.4byte 0x00000001
	.4byte 0x00000000
.endobj lbl_81697BD8
