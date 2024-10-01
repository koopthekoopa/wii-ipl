.include "macros.inc"
.file "GSINatNegotiate.c"

# 0x810B80F0..0x810B83C8 | size: 0x2D8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B80F0 | size: 0xD8
.obj nat, global
	.skip 0xD8
.endobj nat

# .bss:0xD8 | 0x810B81C8 | size: 0x200
.obj lbl_810B81C8, global
	.skip 0x200
.endobj lbl_810B81C8

# 0x813D6E30..0x813D7F90 | size: 0x1160
.text
.balign 4

# .text:0x0 | 0x813D6E30 | size: 0x80
.fn NN_813D6E30, global
/* 813D6E30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D6E34 | 7C 08 02 A6 */	mflr r0
/* 813D6E38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D6E3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D6E40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D6E44 | 7C 7E 1B 78 */	mr r30, r3
/* 813D6E48 | 80 0D AB 60 */	lwz r0, negotiateList@sda21(r0)
/* 813D6E4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D6E50 | 40 82 00 0C */	bne .L_813D6E5C
/* 813D6E54 | 38 60 00 00 */	li r3, 0x0
/* 813D6E58 | 48 00 00 40 */	b .L_813D6E98
.L_813D6E5C:
/* 813D6E5C | 3B E0 00 00 */	li r31, 0x0
/* 813D6E60 | 48 00 00 24 */	b .L_813D6E84
.L_813D6E64:
/* 813D6E64 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D6E68 | 7F E4 FB 78 */	mr r4, r31
/* 813D6E6C | 4B FF F0 D1 */	bl ArrayNth
/* 813D6E70 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813D6E74 | 7C 00 F0 00 */	cmpw r0, r30
/* 813D6E78 | 40 82 00 08 */	bne .L_813D6E80
/* 813D6E7C | 48 00 00 1C */	b .L_813D6E98
.L_813D6E80:
/* 813D6E80 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813D6E84:
/* 813D6E84 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D6E88 | 4B FF F0 AD */	bl ArrayLength
/* 813D6E8C | 7C 1F 18 00 */	cmpw r31, r3
/* 813D6E90 | 41 80 FF D4 */	blt .L_813D6E64
/* 813D6E94 | 38 60 00 00 */	li r3, 0x0
.L_813D6E98:
/* 813D6E98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6E9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D6EA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D6EA4 | 7C 08 03 A6 */	mtlr r0
/* 813D6EA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6EAC | 4E 80 00 20 */	blr
.endfn NN_813D6E30

# .text:0x80 | 0x813D6EB0 | size: 0x70
.fn NN_813D6EB0, global
/* 813D6EB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D6EB4 | 7C 08 02 A6 */	mflr r0
/* 813D6EB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D6EBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D6EC0 | 3B E0 00 00 */	li r31, 0x0
/* 813D6EC4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D6EC8 | 7C 7E 1B 78 */	mr r30, r3
/* 813D6ECC | 48 00 00 2C */	b .L_813D6EF8
.L_813D6ED0:
/* 813D6ED0 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D6ED4 | 7F E4 FB 78 */	mr r4, r31
/* 813D6ED8 | 4B FF F0 65 */	bl ArrayNth
/* 813D6EDC | 7C 1E 18 40 */	cmplw r30, r3
/* 813D6EE0 | 40 82 00 14 */	bne .L_813D6EF4
/* 813D6EE4 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D6EE8 | 7F E4 FB 78 */	mr r4, r31
/* 813D6EEC | 4B FF F0 81 */	bl ArrayRemoveAt
/* 813D6EF0 | 48 00 00 18 */	b .L_813D6F08
.L_813D6EF4:
/* 813D6EF4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813D6EF8:
/* 813D6EF8 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D6EFC | 4B FF F0 39 */	bl ArrayLength
/* 813D6F00 | 7C 1F 18 00 */	cmpw r31, r3
/* 813D6F04 | 41 80 FF CC */	blt .L_813D6ED0
.L_813D6F08:
/* 813D6F08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6F0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D6F10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D6F14 | 7C 08 03 A6 */	mtlr r0
/* 813D6F18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6F1C | 4E 80 00 20 */	blr
.endfn NN_813D6EB0

# .text:0xF0 | 0x813D6F20 | size: 0x34
.fn NNFreeNegotiateList, global
/* 813D6F20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D6F24 | 7C 08 02 A6 */	mflr r0
/* 813D6F28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D6F2C | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D6F30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6F34 | 41 82 00 10 */	beq .L_813D6F44
/* 813D6F38 | 4B FF EF 99 */	bl ArrayFree
/* 813D6F3C | 38 00 00 00 */	li r0, 0x0
/* 813D6F40 | 90 0D AB 60 */	stw r0, negotiateList@sda21(r0)
.L_813D6F44:
/* 813D6F44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6F48 | 7C 08 03 A6 */	mtlr r0
/* 813D6F4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6F50 | 4E 80 00 20 */	blr
.endfn NNFreeNegotiateList

# .text:0x124 | 0x813D6F54 | size: 0x70
.fn NN_813D6F54, global
/* 813D6F54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D6F58 | 7C 08 02 A6 */	mflr r0
/* 813D6F5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D6F60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D6F64 | 48 22 25 61 */	bl _savegpr_28
/* 813D6F68 | 38 00 00 02 */	li r0, 0x2
/* 813D6F6C | 7C 7C 1B 78 */	mr r28, r3
/* 813D6F70 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 813D6F74 | 7C 9D 23 78 */	mr r29, r4
/* 813D6F78 | 7C A3 2B 78 */	mr r3, r5
/* 813D6F7C | 7C DE 33 78 */	mr r30, r6
/* 813D6F80 | 7C FF 3B 78 */	mr r31, r7
/* 813D6F84 | 48 0D CB F5 */	bl SOHtoNs
/* 813D6F88 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 813D6F8C | 7F 83 E3 78 */	mr r3, r28
/* 813D6F90 | 7F C4 F3 78 */	mr r4, r30
/* 813D6F94 | 7F E5 FB 78 */	mr r5, r31
/* 813D6F98 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 813D6F9C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813D6FA0 | 38 C0 00 00 */	li r6, 0x0
/* 813D6FA4 | 39 00 00 08 */	li r8, 0x8
/* 813D6FA8 | 4B FF F4 95 */	bl sendto
/* 813D6FAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D6FB0 | 48 22 25 61 */	bl _restgpr_28
/* 813D6FB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D6FB8 | 7C 08 03 A6 */	mtlr r0
/* 813D6FBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D6FC0 | 4E 80 00 20 */	blr
.endfn NN_813D6F54

# .text:0x194 | 0x813D6FC4 | size: 0xD0
.fn NN_813D6FC4, global
/* 813D6FC4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813D6FC8 | 7C 08 02 A6 */	mflr r0
/* 813D6FCC | 38 8D 8C E0 */	li r4, lbl_81696D20@sda21
/* 813D6FD0 | 38 A0 00 06 */	li r5, 0x6
/* 813D6FD4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813D6FD8 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813D6FDC | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 813D6FE0 | 7C 7E 1B 78 */	mr r30, r3
/* 813D6FE4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813D6FE8 | 4B F5 92 49 */	bl memcpy
/* 813D6FEC | 38 60 00 03 */	li r3, 0x3
/* 813D6FF0 | 38 00 00 0D */	li r0, 0xd
/* 813D6FF4 | 98 61 00 12 */	stb r3, 0x12(r1)
/* 813D6FF8 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813D6FFC | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813D7000 | 48 0D CB 75 */	bl SOHtoNl
/* 813D7004 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813D7008 | 3F E0 81 0C */	lis r31, __GSIACGamename@ha
/* 813D700C | 80 8D 8C F0 */	lwz r4, lbl_81696D30@sda21(r0)
/* 813D7010 | 38 7F 80 08 */	addi r3, r31, __GSIACGamename@l
/* 813D7014 | 80 BE 00 0C */	lwz r5, 0xc(r30)
/* 813D7018 | 80 0D AB 74 */	lwz r0, lbl_81698BB4@sda21(r0)
/* 813D701C | 98 A1 00 19 */	stb r5, 0x19(r1)
/* 813D7020 | 80 BE 00 44 */	lwz r5, 0x44(r30)
/* 813D7024 | 7C A5 00 34 */	cntlzw r5, r5
/* 813D7028 | 90 81 00 1B */	stw r4, 0x1b(r1)
/* 813D702C | 54 A4 DE 3E */	extrwi r4, r5, 8, 19
/* 813D7030 | 98 81 00 1A */	stb r4, 0x1a(r1)
/* 813D7034 | 90 01 00 1F */	stw r0, 0x1f(r1)
/* 813D7038 | 48 22 1E C5 */	bl strlen
/* 813D703C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7040 | 41 82 00 14 */	beq .L_813D7054
/* 813D7044 | 38 61 00 23 */	addi r3, r1, 0x23
/* 813D7048 | 38 9F 80 08 */	addi r4, r31, __GSIACGamename@l
/* 813D704C | 38 A0 00 32 */	li r5, 0x32
/* 813D7050 | 4B F5 91 E1 */	bl memcpy
.L_813D7054:
/* 813D7054 | 80 0D AB 64 */	lwz r0, matchup1ip@sda21(r0)
/* 813D7058 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D705C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D7060 | 48 0D C9 75 */	bl SOInetNtoA
/* 813D7064 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813D7068 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813D706C | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D7070 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D7074 | 38 E0 00 49 */	li r7, 0x49
/* 813D7078 | 4B FF FE DD */	bl NN_813D6F54
/* 813D707C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813D7080 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813D7084 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 813D7088 | 7C 08 03 A6 */	mtlr r0
/* 813D708C | 38 21 00 60 */	addi r1, r1, 0x60
/* 813D7090 | 4E 80 00 20 */	blr
.endfn NN_813D6FC4

# .text:0x264 | 0x813D7094 | size: 0xC0
.fn NN_813D7094, global
/* 813D7094 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D7098 | 7C 08 02 A6 */	mflr r0
/* 813D709C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D70A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D70A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D70A8 | 7C 9F 23 78 */	mr r31, r4
/* 813D70AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D70B0 | 7C 7E 1B 78 */	mr r30, r3
/* 813D70B4 | 90 83 00 44 */	stw r4, 0x44(r3)
/* 813D70B8 | 90 A3 00 48 */	stw r5, 0x48(r3)
/* 813D70BC | 41 82 00 14 */	beq .L_813D70D0
/* 813D70C0 | 7C C4 33 78 */	mr r4, r6
/* 813D70C4 | 38 A0 00 08 */	li r5, 0x8
/* 813D70C8 | 38 63 00 4C */	addi r3, r3, 0x4c
/* 813D70CC | 4B F5 91 65 */	bl memcpy
.L_813D70D0:
/* 813D70D0 | 38 1F FF FF */	subi r0, r31, 0x1
/* 813D70D4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D70D8 | 41 81 00 3C */	bgt .L_813D7114
/* 813D70DC | 81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 813D70E0 | 38 00 00 03 */	li r0, 0x3
/* 813D70E4 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813D70E8 | 38 BE 00 4C */	addi r5, r30, 0x4c
/* 813D70EC | 80 7E 00 44 */	lwz r3, 0x44(r30)
/* 813D70F0 | 80 9E 00 48 */	lwz r4, 0x48(r30)
/* 813D70F4 | 80 DE 00 40 */	lwz r6, 0x40(r30)
/* 813D70F8 | 7D 89 03 A6 */	mtctr r12
/* 813D70FC | 4E 80 04 21 */	bctrl
/* 813D7100 | 38 00 FF FF */	li r0, -0x1
/* 813D7104 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813D7108 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813D710C | 48 00 07 45 */	bl NNCancel
/* 813D7110 | 48 00 00 2C */	b .L_813D713C
.L_813D7114:
/* 813D7114 | 7F C3 F3 78 */	mr r3, r30
/* 813D7118 | 4B FF FE AD */	bl NN_813D6FC4
/* 813D711C | 3B E0 00 05 */	li r31, 0x5
/* 813D7120 | 93 FE 00 10 */	stw r31, 0x10(r30)
/* 813D7124 | 4B FF F7 15 */	bl current_time
/* 813D7128 | 38 63 03 E8 */	addi r3, r3, 0x3e8
/* 813D712C | 38 00 00 00 */	li r0, 0x0
/* 813D7130 | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 813D7134 | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 813D7138 | 93 FE 00 28 */	stw r31, 0x28(r30)
.L_813D713C:
/* 813D713C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D7140 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D7144 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D7148 | 7C 08 03 A6 */	mtlr r0
/* 813D714C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D7150 | 4E 80 00 20 */	blr
.endfn NN_813D7094

# .text:0x324 | 0x813D7154 | size: 0x290
.fn NN_813D7154, global
/* 813D7154 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813D7158 | 7C 08 02 A6 */	mflr r0
/* 813D715C | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813D7160 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813D7164 | 48 22 23 51 */	bl _savegpr_24
/* 813D7168 | 3B E1 00 24 */	addi r31, r1, 0x24
/* 813D716C | 7C 7D 1B 78 */	mr r29, r3
/* 813D7170 | 7F E3 FB 78 */	mr r3, r31
/* 813D7174 | 38 8D 8C E0 */	li r4, lbl_81696D20@sda21
/* 813D7178 | 38 A0 00 06 */	li r5, 0x6
/* 813D717C | 4B F5 90 B5 */	bl memcpy
/* 813D7180 | 38 00 00 03 */	li r0, 0x3
/* 813D7184 | 3B 60 00 00 */	li r27, 0x0
/* 813D7188 | 98 01 00 2A */	stb r0, 0x2a(r1)
/* 813D718C | 9B 61 00 2B */	stb r27, 0x2b(r1)
/* 813D7190 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813D7194 | 48 0D C9 E1 */	bl SOHtoNl
/* 813D7198 | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 813D719C | 3B 40 00 00 */	li r26, 0x0
/* 813D71A0 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 813D71A4 | 98 01 00 31 */	stb r0, 0x31(r1)
/* 813D71A8 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813D71AC | 38 63 00 01 */	addi r3, r3, 0x1
/* 813D71B0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813D71B4 | 7C 00 19 10 */	subfe r0, r0, r3
/* 813D71B8 | 98 01 00 32 */	stb r0, 0x32(r1)
/* 813D71BC | 4B FF F4 ED */	bl getlocalhost
/* 813D71C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D71C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813D71C8 | 40 82 00 0C */	bne .L_813D71D4
/* 813D71CC | 3B 00 00 00 */	li r24, 0x0
/* 813D71D0 | 48 00 00 50 */	b .L_813D7220
.L_813D71D4:
/* 813D71D4 | 3F 80 7F 00 */	lis r28, 0x7f00
.L_813D71D8:
/* 813D71D8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813D71DC | 7F 23 D8 2E */	lwzx r25, r3, r27
/* 813D71E0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813D71E4 | 41 82 00 38 */	beq .L_813D721C
/* 813D71E8 | 83 19 00 00 */	lwz r24, 0x0(r25)
/* 813D71EC | 38 7C 00 01 */	addi r3, r28, 0x1
/* 813D71F0 | 48 0D C9 85 */	bl SOHtoNl
/* 813D71F4 | 7C 18 18 40 */	cmplw r24, r3
/* 813D71F8 | 41 82 00 1C */	beq .L_813D7214
/* 813D71FC | 7F 1A C3 78 */	mr r26, r24
/* 813D7200 | 7F 23 CB 78 */	mr r3, r25
/* 813D7204 | 4B FF F5 B9 */	bl IsPrivateIP
/* 813D7208 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D720C | 41 82 00 08 */	beq .L_813D7214
/* 813D7210 | 48 00 00 10 */	b .L_813D7220
.L_813D7214:
/* 813D7214 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813D7218 | 4B FF FF C0 */	b .L_813D71D8
.L_813D721C:
/* 813D721C | 7F 58 D3 78 */	mr r24, r26
.L_813D7220:
/* 813D7220 | 7F 03 C3 78 */	mr r3, r24
/* 813D7224 | 48 0D C9 45 */	bl SONtoHl
/* 813D7228 | 3B 80 00 00 */	li r28, 0x0
/* 813D722C | 54 64 46 3E */	srwi r4, r3, 24
/* 813D7230 | 54 65 86 3E */	extrwi r5, r3, 8, 8
/* 813D7234 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 813D7238 | 98 61 00 36 */	stb r3, 0x36(r1)
/* 813D723C | 3F C0 81 0C */	lis r30, __GSIACGamename@ha
/* 813D7240 | 38 61 00 39 */	addi r3, r1, 0x39
/* 813D7244 | 98 81 00 33 */	stb r4, 0x33(r1)
/* 813D7248 | 38 9E 80 08 */	addi r4, r30, __GSIACGamename@l
/* 813D724C | 98 A1 00 34 */	stb r5, 0x34(r1)
/* 813D7250 | 98 01 00 35 */	stb r0, 0x35(r1)
/* 813D7254 | 9B 81 00 37 */	stb r28, 0x37(r1)
/* 813D7258 | 9B 81 00 38 */	stb r28, 0x38(r1)
/* 813D725C | 48 22 B0 A9 */	bl strcpy
/* 813D7260 | 38 7E 80 08 */	addi r3, r30, __GSIACGamename@l
/* 813D7264 | 48 22 1C 99 */	bl strlen
/* 813D7268 | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 813D726C | 3B C3 00 16 */	addi r30, r3, 0x16
/* 813D7270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7274 | 41 82 00 3C */	beq .L_813D72B0
/* 813D7278 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 813D727C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7280 | 40 82 00 30 */	bne .L_813D72B0
/* 813D7284 | 80 0D AB 64 */	lwz r0, matchup1ip@sda21(r0)
/* 813D7288 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D728C | 9B 81 00 30 */	stb r28, 0x30(r1)
/* 813D7290 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813D7294 | 48 0D C7 41 */	bl SOInetNtoA
/* 813D7298 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813D729C | 7F E6 FB 78 */	mr r6, r31
/* 813D72A0 | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D72A4 | 7F C7 F3 78 */	mr r7, r30
/* 813D72A8 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D72AC | 4B FF FC A9 */	bl NN_813D6F54
.L_813D72B0:
/* 813D72B0 | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 813D72B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D72B8 | 40 82 00 34 */	bne .L_813D72EC
/* 813D72BC | 80 0D AB 64 */	lwz r0, matchup1ip@sda21(r0)
/* 813D72C0 | 38 60 00 01 */	li r3, 0x1
/* 813D72C4 | 98 61 00 30 */	stb r3, 0x30(r1)
/* 813D72C8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813D72CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D72D0 | 48 0D C7 05 */	bl SOInetNtoA
/* 813D72D4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813D72D8 | 7F E6 FB 78 */	mr r6, r31
/* 813D72DC | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D72E0 | 7F C7 F3 78 */	mr r7, r30
/* 813D72E4 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D72E8 | 4B FF FC 6D */	bl NN_813D6F54
.L_813D72EC:
/* 813D72EC | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 813D72F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D72F4 | 41 82 00 0C */	beq .L_813D7300
/* 813D72F8 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813D72FC | 48 00 00 08 */	b .L_813D7304
.L_813D7300:
/* 813D7300 | 80 7D 00 00 */	lwz r3, 0x0(r29)
.L_813D7304:
/* 813D7304 | 38 00 00 08 */	li r0, 0x8
/* 813D7308 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813D730C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D7310 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813D7314 | 4B FF F1 9D */	bl getsockname
/* 813D7318 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D731C | 40 82 00 0C */	bne .L_813D7328
/* 813D7320 | 38 60 00 00 */	li r3, 0x0
/* 813D7324 | 48 00 00 08 */	b .L_813D732C
.L_813D7328:
/* 813D7328 | A0 61 00 1E */	lhz r3, 0x1e(r1)
.L_813D732C:
/* 813D732C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 813D7330 | 48 0D C8 3D */	bl SONtoHs
/* 813D7334 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 813D7338 | 98 61 00 38 */	stb r3, 0x38(r1)
/* 813D733C | 98 01 00 37 */	stb r0, 0x37(r1)
/* 813D7340 | 80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 813D7344 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7348 | 40 82 00 34 */	bne .L_813D737C
/* 813D734C | 80 0D AB 68 */	lwz r0, matchup2ip@sda21(r0)
/* 813D7350 | 38 60 00 02 */	li r3, 0x2
/* 813D7354 | 98 61 00 30 */	stb r3, 0x30(r1)
/* 813D7358 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D735C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813D7360 | 48 0D C6 75 */	bl SOInetNtoA
/* 813D7364 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813D7368 | 7F E6 FB 78 */	mr r6, r31
/* 813D736C | 80 8D AB 68 */	lwz r4, matchup2ip@sda21(r0)
/* 813D7370 | 7F C7 F3 78 */	mr r7, r30
/* 813D7374 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D7378 | 4B FF FB DD */	bl NN_813D6F54
.L_813D737C:
/* 813D737C | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 813D7380 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7384 | 40 82 00 34 */	bne .L_813D73B8
/* 813D7388 | 80 0D AB 6C */	lwz r0, matchup3ip@sda21(r0)
/* 813D738C | 38 60 00 03 */	li r3, 0x3
/* 813D7390 | 98 61 00 30 */	stb r3, 0x30(r1)
/* 813D7394 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813D7398 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813D739C | 48 0D C6 39 */	bl SOInetNtoA
/* 813D73A0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813D73A4 | 7F E6 FB 78 */	mr r6, r31
/* 813D73A8 | 80 8D AB 6C */	lwz r4, matchup3ip@sda21(r0)
/* 813D73AC | 7F C7 F3 78 */	mr r7, r30
/* 813D73B0 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D73B4 | 4B FF FB A1 */	bl NN_813D6F54
.L_813D73B8:
/* 813D73B8 | 4B FF F4 81 */	bl current_time
/* 813D73BC | 38 63 01 F4 */	addi r3, r3, 0x1f4
/* 813D73C0 | 38 00 00 0A */	li r0, 0xa
/* 813D73C4 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813D73C8 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813D73CC | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 813D73D0 | 48 22 21 31 */	bl _restgpr_24
/* 813D73D4 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813D73D8 | 7C 08 03 A6 */	mtlr r0
/* 813D73DC | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813D73E0 | 4E 80 00 20 */	blr
.endfn NN_813D7154

# .text:0x5B4 | 0x813D73E4 | size: 0xE4
.fn NN_813D73E4, global
/* 813D73E4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813D73E8 | 7C 08 02 A6 */	mflr r0
/* 813D73EC | 38 8D 8C E0 */	li r4, lbl_81696D20@sda21
/* 813D73F0 | 38 A0 00 06 */	li r5, 0x6
/* 813D73F4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813D73F8 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813D73FC | 7C 7F 1B 78 */	mr r31, r3
/* 813D7400 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813D7404 | 4B F5 8E 2D */	bl memcpy
/* 813D7408 | 38 60 00 03 */	li r3, 0x3
/* 813D740C | 38 00 00 07 */	li r0, 0x7
/* 813D7410 | 98 61 00 12 */	stb r3, 0x12(r1)
/* 813D7414 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813D7418 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813D741C | 48 0D C7 59 */	bl SOHtoNl
/* 813D7420 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813D7424 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 813D7428 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813D742C | A0 7F 00 34 */	lhz r3, 0x34(r31)
/* 813D7430 | 48 0D C7 49 */	bl SOHtoNs
/* 813D7434 | B0 61 00 1C */	sth r3, 0x1c(r1)
/* 813D7438 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D743C | 88 1F 00 36 */	lbz r0, 0x36(r31)
/* 813D7440 | 98 01 00 1E */	stb r0, 0x1e(r1)
/* 813D7444 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 813D7448 | 38 84 FF FE */	subi r4, r4, 0x2
/* 813D744C | 30 04 FF FF */	subic r0, r4, 0x1
/* 813D7450 | 7C 00 21 10 */	subfe r0, r0, r4
/* 813D7454 | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 813D7458 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 813D745C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D7460 | 48 0D C5 75 */	bl SOInetNtoA
/* 813D7464 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D7468 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D746C | 41 82 00 08 */	beq .L_813D7474
/* 813D7470 | 48 00 00 08 */	b .L_813D7478
.L_813D7474:
/* 813D7474 | 80 7F 00 00 */	lwz r3, 0x0(r31)
.L_813D7478:
/* 813D7478 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 813D747C | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813D7480 | A0 BF 00 34 */	lhz r5, 0x34(r31)
/* 813D7484 | 38 E0 00 14 */	li r7, 0x14
/* 813D7488 | 4B FF FA CD */	bl NN_813D6F54
/* 813D748C | 4B FF F3 AD */	bl current_time
/* 813D7490 | 88 1F 00 36 */	lbz r0, 0x36(r31)
/* 813D7494 | 38 83 02 BC */	addi r4, r3, 0x2bc
/* 813D7498 | 38 60 00 07 */	li r3, 0x7
/* 813D749C | 90 9F 00 2C */	stw r4, 0x2c(r31)
/* 813D74A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D74A4 | 90 7F 00 28 */	stw r3, 0x28(r31)
/* 813D74A8 | 41 82 00 0C */	beq .L_813D74B4
/* 813D74AC | 38 00 00 01 */	li r0, 0x1
/* 813D74B0 | 98 1F 00 37 */	stb r0, 0x37(r31)
.L_813D74B4:
/* 813D74B4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813D74B8 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813D74BC | 7C 08 03 A6 */	mtlr r0
/* 813D74C0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813D74C4 | 4E 80 00 20 */	blr
.endfn NN_813D73E4

# .text:0x698 | 0x813D74C8 | size: 0x104
.fn NN_813D74C8, global
/* 813D74C8 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 813D74CC | 7C 08 02 A6 */	mflr r0
/* 813D74D0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D74D4 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 813D74D8 | 93 E1 00 EC */	stw r31, 0xec(r1)
/* 813D74DC | 7C 7F 1B 78 */	mr r31, r3
/* 813D74E0 | 93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 813D74E4 | 3B C0 00 01 */	li r30, 0x1
/* 813D74E8 | 41 82 00 C8 */	beq .L_813D75B0
/* 813D74EC | 4B FF F3 4D */	bl current_time
/* 813D74F0 | 80 0D AB 78 */	lwz r0, lbl_81698BB8@sda21(r0)
/* 813D74F4 | 7C 00 18 50 */	subf r0, r0, r3
/* 813D74F8 | 28 00 27 10 */	cmplwi r0, 0x2710
/* 813D74FC | 40 80 00 18 */	bge .L_813D7514
/* 813D7500 | 3C 80 81 0C */	lis r4, nat@ha
/* 813D7504 | 7F E3 FB 78 */	mr r3, r31
/* 813D7508 | 38 84 80 F0 */	addi r4, r4, nat@l
/* 813D750C | 4B FF E3 51 */	bl NatifyThink
/* 813D7510 | 48 00 00 08 */	b .L_813D7518
.L_813D7514:
/* 813D7514 | 38 60 00 00 */	li r3, 0x0
.L_813D7518:
/* 813D7518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D751C | 7C 7E 1B 78 */	mr r30, r3
/* 813D7520 | 40 82 00 90 */	bne .L_813D75B0
/* 813D7524 | 3F E0 81 0C */	lis r31, nat@ha
/* 813D7528 | 38 7F 80 F0 */	addi r3, r31, nat@l
/* 813D752C | 4B FF E6 A1 */	bl DetermineNatType
/* 813D7530 | 38 9F 80 F0 */	addi r4, r31, nat@l
/* 813D7534 | 38 00 00 1B */	li r0, 0x1b
/* 813D7538 | 38 C1 00 04 */	addi r6, r1, 0x4
/* 813D753C | 38 A4 FF FC */	subi r5, r4, 0x4
/* 813D7540 | 7C 09 03 A6 */	mtctr r0
.L_813D7544:
/* 813D7544 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813D7548 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813D754C | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813D7550 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813D7554 | 42 00 FF F0 */	bdnz .L_813D7544
/* 813D7558 | 81 8D AB 7C */	lwz r12, natifyCallback@sda21(r0)
/* 813D755C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D7560 | 7D 89 03 A6 */	mtctr r12
/* 813D7564 | 4E 80 04 21 */	bctrl
/* 813D7568 | 3C A0 81 0C */	lis r5, nat@ha
/* 813D756C | 80 6D 8C E8 */	lwz r3, lbl_81696D28@sda21(r0)
/* 813D7570 | 38 A5 80 F0 */	addi r5, r5, nat@l
/* 813D7574 | 80 85 00 8C */	lwz r4, 0x8c(r5)
/* 813D7578 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D757C | 80 05 00 90 */	lwz r0, 0x90(r5)
/* 813D7580 | 90 8D 8C F0 */	stw r4, lbl_81696D30@sda21(r0)
/* 813D7584 | 90 0D AB 74 */	stw r0, lbl_81698BB4@sda21(r0)
/* 813D7588 | 41 82 00 08 */	beq .L_813D7590
/* 813D758C | 4B FF EE 39 */	bl closesocket
.L_813D7590:
/* 813D7590 | 80 6D 8C EC */	lwz r3, lbl_81696D2C@sda21(r0)
/* 813D7594 | 38 00 FF FF */	li r0, -0x1
/* 813D7598 | 90 0D 8C E8 */	stw r0, lbl_81696D28@sda21(r0)
/* 813D759C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D75A0 | 41 82 00 08 */	beq .L_813D75A8
/* 813D75A4 | 4B FF EE 21 */	bl closesocket
.L_813D75A8:
/* 813D75A8 | 38 00 FF FF */	li r0, -0x1
/* 813D75AC | 90 0D 8C EC */	stw r0, lbl_81696D2C@sda21(r0)
.L_813D75B0:
/* 813D75B0 | 7F C3 F3 78 */	mr r3, r30
/* 813D75B4 | 83 E1 00 EC */	lwz r31, 0xec(r1)
/* 813D75B8 | 83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 813D75BC | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 813D75C0 | 7C 08 03 A6 */	mtlr r0
/* 813D75C4 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 813D75C8 | 4E 80 00 20 */	blr
.endfn NN_813D74C8

# .text:0x79C | 0x813D75CC | size: 0x90
.fn NN_813D75CC, global
/* 813D75CC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813D75D0 | 7C 08 02 A6 */	mflr r0
/* 813D75D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D75D8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813D75DC | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 813D75E0 | 40 82 00 2C */	bne .L_813D760C
/* 813D75E4 | 3C C0 81 0C */	lis r6, __GSIACGamename@ha
/* 813D75E8 | 7C 87 23 78 */	mr r7, r4
/* 813D75EC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D75F0 | 38 80 00 40 */	li r4, 0x40
/* 813D75F4 | 38 C6 80 08 */	addi r6, r6, __GSIACGamename@l
/* 813D75F8 | 38 AD 8C F4 */	li r5, lbl_81696D34@sda21
/* 813D75FC | 4C C6 31 82 */	crclr cr1eq
/* 813D7600 | 48 22 93 A9 */	bl snprintf
/* 813D7604 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813D7608 | 48 00 00 08 */	b .L_813D7610
.L_813D760C:
/* 813D760C | 7C 7F 1B 78 */	mr r31, r3
.L_813D7610:
/* 813D7610 | 7F E3 FB 78 */	mr r3, r31
/* 813D7614 | 4B FF EE ED */	bl inet_addr
/* 813D7618 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D761C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 813D7620 | 40 82 00 28 */	bne .L_813D7648
/* 813D7624 | 7F E3 FB 78 */	mr r3, r31
/* 813D7628 | 48 0D CA B5 */	bl SOGetHostByName
/* 813D762C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7630 | 40 82 00 0C */	bne .L_813D763C
/* 813D7634 | 38 60 00 00 */	li r3, 0x0
/* 813D7638 | 48 00 00 10 */	b .L_813D7648
.L_813D763C:
/* 813D763C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D7640 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813D7644 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813D7648:
/* 813D7648 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813D764C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 813D7650 | 7C 08 03 A6 */	mtlr r0
/* 813D7654 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813D7658 | 4E 80 00 20 */	blr
.endfn NN_813D75CC

# .text:0x82C | 0x813D765C | size: 0xB0
.fn NN_813D765C, global
/* 813D765C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D7660 | 7C 08 02 A6 */	mflr r0
/* 813D7664 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D7668 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D766C | 3F E0 81 65 */	lis r31, lbl_81653858@ha
/* 813D7670 | 3B FF 38 58 */	addi r31, r31, lbl_81653858@l
/* 813D7674 | 80 0D AB 64 */	lwz r0, matchup1ip@sda21(r0)
/* 813D7678 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D767C | 40 82 00 14 */	bne .L_813D7690
/* 813D7680 | 80 6D AB 88 */	lwz r3, Matchup1Hostname@sda21(r0)
/* 813D7684 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813D7688 | 4B FF FF 45 */	bl NN_813D75CC
/* 813D768C | 90 6D AB 64 */	stw r3, matchup1ip@sda21(r0)
.L_813D7690:
/* 813D7690 | 80 0D AB 68 */	lwz r0, matchup2ip@sda21(r0)
/* 813D7694 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7698 | 40 82 00 14 */	bne .L_813D76AC
/* 813D769C | 80 6D AB 84 */	lwz r3, Matchup2Hostname@sda21(r0)
/* 813D76A0 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 813D76A4 | 4B FF FF 29 */	bl NN_813D75CC
/* 813D76A8 | 90 6D AB 68 */	stw r3, matchup2ip@sda21(r0)
.L_813D76AC:
/* 813D76AC | 80 0D AB 6C */	lwz r0, matchup3ip@sda21(r0)
/* 813D76B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D76B4 | 40 82 00 14 */	bne .L_813D76C8
/* 813D76B8 | 80 6D AB 80 */	lwz r3, Matchup3Hostname@sda21(r0)
/* 813D76BC | 38 9F 00 38 */	addi r4, r31, 0x38
/* 813D76C0 | 4B FF FF 0D */	bl NN_813D75CC
/* 813D76C4 | 90 6D AB 6C */	stw r3, matchup3ip@sda21(r0)
.L_813D76C8:
/* 813D76C8 | 80 0D AB 64 */	lwz r0, matchup1ip@sda21(r0)
/* 813D76CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D76D0 | 41 82 00 1C */	beq .L_813D76EC
/* 813D76D4 | 80 0D AB 68 */	lwz r0, matchup2ip@sda21(r0)
/* 813D76D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D76DC | 41 82 00 10 */	beq .L_813D76EC
/* 813D76E0 | 80 0D AB 6C */	lwz r0, matchup3ip@sda21(r0)
/* 813D76E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D76E8 | 40 82 00 0C */	bne .L_813D76F4
.L_813D76EC:
/* 813D76EC | 38 60 00 00 */	li r3, 0x0
/* 813D76F0 | 48 00 00 08 */	b .L_813D76F8
.L_813D76F4:
/* 813D76F4 | 38 60 00 01 */	li r3, 0x1
.L_813D76F8:
/* 813D76F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D76FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D7700 | 7C 08 03 A6 */	mtlr r0
/* 813D7704 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D7708 | 4E 80 00 20 */	blr
.endfn NN_813D765C

# .text:0x8DC | 0x813D770C | size: 0x144
.fn NNStartNatDetection, global
/* 813D770C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D7710 | 7C 08 02 A6 */	mflr r0
/* 813D7714 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D7718 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D771C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D7720 | 7C 7E 1B 78 */	mr r30, r3
/* 813D7724 | 80 0D AB 50 */	lwz r0, __GSIACResult@sda21(r0)
/* 813D7728 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D772C | 41 82 00 0C */	beq .L_813D7738
/* 813D7730 | 38 60 00 02 */	li r3, 0x2
/* 813D7734 | 48 00 01 04 */	b .L_813D7838
.L_813D7738:
/* 813D7738 | 4B FF FF 25 */	bl NN_813D765C
/* 813D773C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7740 | 40 82 00 0C */	bne .L_813D774C
/* 813D7744 | 38 60 00 03 */	li r3, 0x3
/* 813D7748 | 48 00 00 F0 */	b .L_813D7838
.L_813D774C:
/* 813D774C | 3B E0 00 01 */	li r31, 0x1
/* 813D7750 | 93 CD AB 7C */	stw r30, natifyCallback@sda21(r0)
/* 813D7754 | 93 ED AB 70 */	stw r31, lbl_81698BB0@sda21(r0)
/* 813D7758 | 4B FF F0 E1 */	bl current_time
/* 813D775C | 3C C0 81 0C */	lis r6, nat@ha
/* 813D7760 | 90 6D AB 78 */	stw r3, lbl_81698BB8@sda21(r0)
/* 813D7764 | 38 C6 80 F0 */	addi r6, r6, nat@l
/* 813D7768 | 38 60 00 02 */	li r3, 0x2
/* 813D776C | 93 E6 00 80 */	stw r31, 0x80(r6)
/* 813D7770 | 38 80 00 02 */	li r4, 0x2
/* 813D7774 | 38 A0 00 11 */	li r5, 0x11
/* 813D7778 | 93 E6 00 84 */	stw r31, 0x84(r6)
/* 813D777C | 4B FF EC 1D */	bl socket
/* 813D7780 | 90 6D 8C EC */	stw r3, lbl_81696D2C@sda21(r0)
/* 813D7784 | 38 60 00 02 */	li r3, 0x2
/* 813D7788 | 38 80 00 02 */	li r4, 0x2
/* 813D778C | 38 A0 00 11 */	li r5, 0x11
/* 813D7790 | 4B FF EC 09 */	bl socket
/* 813D7794 | 90 6D 8C E8 */	stw r3, lbl_81696D28@sda21(r0)
/* 813D7798 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D779C | 80 6D 8C EC */	lwz r3, lbl_81696D2C@sda21(r0)
/* 813D77A0 | 38 C0 00 01 */	li r6, 0x1
/* 813D77A4 | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D77A8 | 4B FF DE A1 */	bl DiscoverReachability
/* 813D77AC | 80 6D 8C EC */	lwz r3, lbl_81696D2C@sda21(r0)
/* 813D77B0 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D77B4 | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D77B8 | 38 C0 00 02 */	li r6, 0x2
/* 813D77BC | 4B FF DE 8D */	bl DiscoverReachability
/* 813D77C0 | 80 6D 8C EC */	lwz r3, lbl_81696D2C@sda21(r0)
/* 813D77C4 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D77C8 | 80 8D AB 68 */	lwz r4, matchup2ip@sda21(r0)
/* 813D77CC | 38 C0 00 03 */	li r6, 0x3
/* 813D77D0 | 4B FF DE 79 */	bl DiscoverReachability
/* 813D77D4 | 80 6D 8C E8 */	lwz r3, lbl_81696D28@sda21(r0)
/* 813D77D8 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D77DC | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D77E0 | 38 C0 00 01 */	li r6, 0x1
/* 813D77E4 | 38 E0 00 00 */	li r7, 0x0
/* 813D77E8 | 4B FF DF 41 */	bl DiscoverMapping
/* 813D77EC | 80 6D 8C E8 */	lwz r3, lbl_81696D28@sda21(r0)
/* 813D77F0 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D77F4 | 80 8D AB 64 */	lwz r4, matchup1ip@sda21(r0)
/* 813D77F8 | 38 C0 00 01 */	li r6, 0x1
/* 813D77FC | 38 E0 00 03 */	li r7, 0x3
/* 813D7800 | 4B FF DF 29 */	bl DiscoverMapping
/* 813D7804 | 80 6D 8C E8 */	lwz r3, lbl_81696D28@sda21(r0)
/* 813D7808 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D780C | 80 8D AB 68 */	lwz r4, matchup2ip@sda21(r0)
/* 813D7810 | 38 C0 00 02 */	li r6, 0x2
/* 813D7814 | 38 E0 00 01 */	li r7, 0x1
/* 813D7818 | 4B FF DF 11 */	bl DiscoverMapping
/* 813D781C | 80 6D 8C E8 */	lwz r3, lbl_81696D28@sda21(r0)
/* 813D7820 | 38 A0 6C FD */	li r5, 0x6cfd
/* 813D7824 | 80 8D AB 6C */	lwz r4, matchup3ip@sda21(r0)
/* 813D7828 | 38 C0 00 03 */	li r6, 0x3
/* 813D782C | 38 E0 00 02 */	li r7, 0x2
/* 813D7830 | 4B FF DE F9 */	bl DiscoverMapping
/* 813D7834 | 38 60 00 00 */	li r3, 0x0
.L_813D7838:
/* 813D7838 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D783C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D7840 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D7844 | 7C 08 03 A6 */	mtlr r0
/* 813D7848 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D784C | 4E 80 00 20 */	blr
.endfn NNStartNatDetection

# .text:0xA20 | 0x813D7850 | size: 0x54
.fn NNCancel, global
/* 813D7850 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D7854 | 7C 08 02 A6 */	mflr r0
/* 813D7858 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D785C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D7860 | 4B FF F5 D1 */	bl NN_813D6E30
/* 813D7864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7868 | 7C 7F 1B 78 */	mr r31, r3
/* 813D786C | 41 82 00 24 */	beq .L_813D7890
/* 813D7870 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813D7874 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D7878 | 41 82 00 08 */	beq .L_813D7880
/* 813D787C | 4B FF EB 49 */	bl closesocket
.L_813D7880:
/* 813D7880 | 38 60 FF FF */	li r3, -0x1
/* 813D7884 | 38 00 00 04 */	li r0, 0x4
/* 813D7888 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 813D788C | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_813D7890:
/* 813D7890 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D7894 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D7898 | 7C 08 03 A6 */	mtlr r0
/* 813D789C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D78A0 | 4E 80 00 20 */	blr
.endfn NNCancel

# .text:0xA74 | 0x813D78A4 | size: 0x28C
.fn NN_813D78A4, global
/* 813D78A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D78A8 | 7C 08 02 A6 */	mflr r0
/* 813D78AC | 38 80 00 08 */	li r4, 0x8
/* 813D78B0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D78B4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813D78B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813D78BC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813D78C0 | 80 0D AB 70 */	lwz r0, lbl_81698BB0@sda21(r0)
/* 813D78C4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813D78C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D78CC | 41 82 00 1C */	beq .L_813D78E8
/* 813D78D0 | 80 6D 8C E8 */	lwz r3, lbl_81696D28@sda21(r0)
/* 813D78D4 | 4B FF FB F5 */	bl NN_813D74C8
/* 813D78D8 | 90 6D AB 70 */	stw r3, lbl_81698BB0@sda21(r0)
/* 813D78DC | 80 6D 8C EC */	lwz r3, lbl_81696D2C@sda21(r0)
/* 813D78E0 | 4B FF FB E9 */	bl NN_813D74C8
/* 813D78E4 | 90 6D AB 70 */	stw r3, lbl_81698BB0@sda21(r0)
.L_813D78E8:
/* 813D78E8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813D78EC | 41 82 02 2C */	beq .L_813D7B18
/* 813D78F0 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D78F4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D78F8 | 40 82 00 10 */	bne .L_813D7908
/* 813D78FC | 7F E3 FB 78 */	mr r3, r31
/* 813D7900 | 4B FF F5 B1 */	bl NN_813D6EB0
/* 813D7904 | 48 00 02 14 */	b .L_813D7B18
.L_813D7908:
/* 813D7908 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813D790C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D7910 | 41 82 00 6C */	beq .L_813D797C
/* 813D7914 | 3F C0 81 0C */	lis r30, lbl_810B81C8@ha
.L_813D7918:
/* 813D7918 | 4B FF ED 49 */	bl CanReceiveOnSocket
/* 813D791C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7920 | 41 82 00 5C */	beq .L_813D797C
/* 813D7924 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813D7928 | 38 9E 81 C8 */	addi r4, r30, lbl_810B81C8@l
/* 813D792C | 38 E1 00 14 */	addi r7, r1, 0x14
/* 813D7930 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813D7934 | 38 A0 02 00 */	li r5, 0x200
/* 813D7938 | 38 C0 00 00 */	li r6, 0x0
/* 813D793C | 4B FF EA B1 */	bl recvfrom
/* 813D7940 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D7944 | 40 82 00 10 */	bne .L_813D7954
/* 813D7948 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813D794C | 4B FF EB ED */	bl GOAGetLastError
/* 813D7950 | 48 00 00 2C */	b .L_813D797C
.L_813D7954:
/* 813D7954 | 7C 64 1B 78 */	mr r4, r3
/* 813D7958 | 38 7E 81 C8 */	addi r3, r30, lbl_810B81C8@l
/* 813D795C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813D7960 | 48 00 02 45 */	bl NNProcessData
/* 813D7964 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7968 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D796C | 41 82 00 10 */	beq .L_813D797C
/* 813D7970 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813D7974 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D7978 | 40 82 FF A0 */	bne .L_813D7918
.L_813D797C:
/* 813D797C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7980 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7984 | 41 82 00 0C */	beq .L_813D7990
/* 813D7988 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D798C | 40 82 00 88 */	bne .L_813D7A14
.L_813D7990:
/* 813D7990 | 4B FF EE A9 */	bl current_time
/* 813D7994 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813D7998 | 7C 03 00 40 */	cmplw r3, r0
/* 813D799C | 40 81 00 78 */	ble .L_813D7A14
/* 813D79A0 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 813D79A4 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 813D79A8 | 7C 03 00 00 */	cmpw r3, r0
/* 813D79AC | 40 81 00 40 */	ble .L_813D79EC
/* 813D79B0 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D79B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D79B8 | 40 82 00 1C */	bne .L_813D79D4
/* 813D79BC | 7F E3 FB 78 */	mr r3, r31
/* 813D79C0 | 38 80 00 02 */	li r4, 0x2
/* 813D79C4 | 38 A0 FF FF */	li r5, -0x1
/* 813D79C8 | 38 C0 00 00 */	li r6, 0x0
/* 813D79CC | 4B FF F6 C9 */	bl NN_813D7094
/* 813D79D0 | 48 00 00 44 */	b .L_813D7A14
.L_813D79D4:
/* 813D79D4 | 7F E3 FB 78 */	mr r3, r31
/* 813D79D8 | 38 80 00 03 */	li r4, 0x3
/* 813D79DC | 38 A0 FF FF */	li r5, -0x1
/* 813D79E0 | 38 C0 00 00 */	li r6, 0x0
/* 813D79E4 | 4B FF F6 B1 */	bl NN_813D7094
/* 813D79E8 | 48 00 00 2C */	b .L_813D7A14
.L_813D79EC:
/* 813D79EC | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D79F0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813D79F4 | 90 7F 00 24 */	stw r3, 0x24(r31)
/* 813D79F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D79FC | 40 82 00 10 */	bne .L_813D7A0C
/* 813D7A00 | 7F E3 FB 78 */	mr r3, r31
/* 813D7A04 | 4B FF F7 51 */	bl NN_813D7154
/* 813D7A08 | 48 00 00 0C */	b .L_813D7A14
.L_813D7A0C:
/* 813D7A0C | 7F E3 FB 78 */	mr r3, r31
/* 813D7A10 | 4B FF F9 D5 */	bl NN_813D73E4
.L_813D7A14:
/* 813D7A14 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7A18 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813D7A1C | 40 82 00 50 */	bne .L_813D7A6C
/* 813D7A20 | 4B FF EE 19 */	bl current_time
/* 813D7A24 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813D7A28 | 7C 03 00 40 */	cmplw r3, r0
/* 813D7A2C | 40 81 00 40 */	ble .L_813D7A6C
/* 813D7A30 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813D7A34 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813D7A38 | 40 82 00 34 */	bne .L_813D7A6C
/* 813D7A3C | 38 00 00 02 */	li r0, 0x2
/* 813D7A40 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 813D7A44 | A0 7F 00 34 */	lhz r3, 0x34(r31)
/* 813D7A48 | 48 0D C1 31 */	bl SOHtoNs
/* 813D7A4C | B0 61 00 0E */	sth r3, 0xe(r1)
/* 813D7A50 | 7F E3 FB 78 */	mr r3, r31
/* 813D7A54 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813D7A58 | 38 80 00 00 */	li r4, 0x0
/* 813D7A5C | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 813D7A60 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813D7A64 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 813D7A68 | 4B FF F6 2D */	bl NN_813D7094
.L_813D7A6C:
/* 813D7A6C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7A70 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D7A74 | 40 82 00 28 */	bne .L_813D7A9C
/* 813D7A78 | 4B FF ED C1 */	bl current_time
/* 813D7A7C | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813D7A80 | 7C 03 00 40 */	cmplw r3, r0
/* 813D7A84 | 40 81 00 18 */	ble .L_813D7A9C
/* 813D7A88 | 7F E3 FB 78 */	mr r3, r31
/* 813D7A8C | 38 80 00 01 */	li r4, 0x1
/* 813D7A90 | 38 A0 FF FF */	li r5, -0x1
/* 813D7A94 | 38 C0 00 00 */	li r6, 0x0
/* 813D7A98 | 4B FF F5 FD */	bl NN_813D7094
.L_813D7A9C:
/* 813D7A9C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7AA0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813D7AA4 | 40 82 00 74 */	bne .L_813D7B18
/* 813D7AA8 | 4B FF ED 91 */	bl current_time
/* 813D7AAC | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813D7AB0 | 7C 03 00 40 */	cmplw r3, r0
/* 813D7AB4 | 40 81 00 64 */	ble .L_813D7B18
/* 813D7AB8 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 813D7ABC | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 813D7AC0 | 7C 03 00 00 */	cmpw r3, r0
/* 813D7AC4 | 40 81 00 34 */	ble .L_813D7AF8
/* 813D7AC8 | 81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 813D7ACC | 38 BF 00 4C */	addi r5, r31, 0x4c
/* 813D7AD0 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813D7AD4 | 80 9F 00 48 */	lwz r4, 0x48(r31)
/* 813D7AD8 | 80 DF 00 40 */	lwz r6, 0x40(r31)
/* 813D7ADC | 7D 89 03 A6 */	mtctr r12
/* 813D7AE0 | 4E 80 04 21 */	bctrl
/* 813D7AE4 | 38 00 FF FF */	li r0, -0x1
/* 813D7AE8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813D7AEC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813D7AF0 | 4B FF FD 61 */	bl NNCancel
/* 813D7AF4 | 48 00 00 24 */	b .L_813D7B18
.L_813D7AF8:
/* 813D7AF8 | 7F E3 FB 78 */	mr r3, r31
/* 813D7AFC | 4B FF F4 C9 */	bl NN_813D6FC4
/* 813D7B00 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 813D7B04 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813D7B08 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 813D7B0C | 4B FF ED 2D */	bl current_time
/* 813D7B10 | 38 03 03 E8 */	addi r0, r3, 0x3e8
/* 813D7B14 | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_813D7B18:
/* 813D7B18 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D7B1C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813D7B20 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813D7B24 | 7C 08 03 A6 */	mtlr r0
/* 813D7B28 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D7B2C | 4E 80 00 20 */	blr
.endfn NN_813D78A4

# .text:0xD00 | 0x813D7B30 | size: 0x74
.fn NNThink, global
/* 813D7B30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D7B34 | 7C 08 02 A6 */	mflr r0
/* 813D7B38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D7B3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D7B40 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D7B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7B48 | 41 82 00 10 */	beq .L_813D7B58
/* 813D7B4C | 4B FF E3 E9 */	bl ArrayLength
/* 813D7B50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7B54 | 40 82 00 10 */	bne .L_813D7B64
.L_813D7B58:
/* 813D7B58 | 38 60 00 00 */	li r3, 0x0
/* 813D7B5C | 4B FF FD 49 */	bl NN_813D78A4
/* 813D7B60 | 48 00 00 30 */	b .L_813D7B90
.L_813D7B64:
/* 813D7B64 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D7B68 | 4B FF E3 CD */	bl ArrayLength
/* 813D7B6C | 3B E3 FF FF */	subi r31, r3, 0x1
/* 813D7B70 | 48 00 00 18 */	b .L_813D7B88
.L_813D7B74:
/* 813D7B74 | 80 6D AB 60 */	lwz r3, negotiateList@sda21(r0)
/* 813D7B78 | 7F E4 FB 78 */	mr r4, r31
/* 813D7B7C | 4B FF E3 C1 */	bl ArrayNth
/* 813D7B80 | 4B FF FD 25 */	bl NN_813D78A4
/* 813D7B84 | 3B FF FF FF */	subi r31, r31, 0x1
.L_813D7B88:
/* 813D7B88 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813D7B8C | 40 80 FF E8 */	bge .L_813D7B74
.L_813D7B90:
/* 813D7B90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D7B94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D7B98 | 7C 08 03 A6 */	mtlr r0
/* 813D7B9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D7BA0 | 4E 80 00 20 */	blr
.endfn NNThink

# .text:0xD74 | 0x813D7BA4 | size: 0x3EC
.fn NNProcessData, global
/* 813D7BA4 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 813D7BA8 | 7C 08 02 A6 */	mflr r0
/* 813D7BAC | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 813D7BB0 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 813D7BB4 | 48 22 19 11 */	bl _savegpr_28
/* 813D7BB8 | 7C 9F 23 78 */	mr r31, r4
/* 813D7BBC | 7C BE 2B 78 */	mr r30, r5
/* 813D7BC0 | 7C 7C 1B 78 */	mr r28, r3
/* 813D7BC4 | 38 8D 8C E0 */	li r4, lbl_81696D20@sda21
/* 813D7BC8 | 38 A0 00 06 */	li r5, 0x6
/* 813D7BCC | 48 22 66 09 */	bl memcmp
/* 813D7BD0 | 7C 60 00 34 */	cntlzw r0, r3
/* 813D7BD4 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813D7BD8 | 41 82 03 A0 */	beq .L_813D7F78
/* 813D7BDC | 8B BC 00 07 */	lbz r29, 0x7(r28)
/* 813D7BE0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D7BE4 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813D7BE8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813D7BEC | 48 0D BD E9 */	bl SOInetNtoA
/* 813D7BF0 | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 813D7BF4 | 48 0D BF 79 */	bl SONtoHs
/* 813D7BF8 | 28 1D 00 05 */	cmplwi r29, 0x5
/* 813D7BFC | 41 82 00 0C */	beq .L_813D7C08
/* 813D7C00 | 28 1D 00 07 */	cmplwi r29, 0x7
/* 813D7C04 | 40 82 02 24 */	bne .L_813D7E28
.L_813D7C08:
/* 813D7C08 | 2C 1F 00 14 */	cmpwi r31, 0x14
/* 813D7C0C | 41 80 03 6C */	blt .L_813D7F78
/* 813D7C10 | 7F 84 E3 78 */	mr r4, r28
/* 813D7C14 | 38 61 00 5D */	addi r3, r1, 0x5d
/* 813D7C18 | 38 A0 00 14 */	li r5, 0x14
/* 813D7C1C | 4B F5 86 15 */	bl memcpy
/* 813D7C20 | 80 61 00 65 */	lwz r3, 0x65(r1)
/* 813D7C24 | 48 0D BF 45 */	bl SONtoHl
/* 813D7C28 | 4B FF F2 09 */	bl NN_813D6E30
/* 813D7C2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7C30 | 7C 7F 1B 78 */	mr r31, r3
/* 813D7C34 | 41 82 03 44 */	beq .L_813D7F78
/* 813D7C38 | 28 1D 00 05 */	cmplwi r29, 0x5
/* 813D7C3C | 40 82 01 28 */	bne .L_813D7D64
/* 813D7C40 | 88 C1 00 69 */	lbz r6, 0x69(r1)
/* 813D7C44 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813D7C48 | 88 A1 00 6A */	lbz r5, 0x6a(r1)
/* 813D7C4C | 88 81 00 6B */	lbz r4, 0x6b(r1)
/* 813D7C50 | 88 01 00 6C */	lbz r0, 0x6c(r1)
/* 813D7C54 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 813D7C58 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 813D7C5C | 98 81 00 0E */	stb r4, 0xe(r1)
/* 813D7C60 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813D7C64 | 48 0D BD 71 */	bl SOInetNtoA
/* 813D7C68 | A0 61 00 6D */	lhz r3, 0x6d(r1)
/* 813D7C6C | 48 0D BF 01 */	bl SONtoHs
/* 813D7C70 | 88 01 00 70 */	lbz r0, 0x70(r1)
/* 813D7C74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7C78 | 40 82 00 5C */	bne .L_813D7CD4
/* 813D7C7C | 38 61 00 14 */	addi r3, r1, 0x14
/* 813D7C80 | 38 8D 8C E0 */	li r4, lbl_81696D20@sda21
/* 813D7C84 | 38 A0 00 06 */	li r5, 0x6
/* 813D7C88 | 4B F5 85 A9 */	bl memcpy
/* 813D7C8C | 38 60 00 03 */	li r3, 0x3
/* 813D7C90 | 38 00 00 06 */	li r0, 0x6
/* 813D7C94 | 98 61 00 1A */	stb r3, 0x1a(r1)
/* 813D7C98 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 813D7C9C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813D7CA0 | 48 0D BE D5 */	bl SOHtoNl
/* 813D7CA4 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 813D7CA8 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 813D7CAC | 98 01 00 21 */	stb r0, 0x21(r1)
/* 813D7CB0 | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 813D7CB4 | 48 0D BE B9 */	bl SONtoHs
/* 813D7CB8 | 7C 60 1B 78 */	mr r0, r3
/* 813D7CBC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813D7CC0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813D7CC4 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 813D7CC8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813D7CCC | 38 E0 00 15 */	li r7, 0x15
/* 813D7CD0 | 4B FF F2 85 */	bl NN_813D6F54
.L_813D7CD4:
/* 813D7CD4 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7CD8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D7CDC | 40 80 02 9C */	bge .L_813D7F78
/* 813D7CE0 | 88 01 00 70 */	lbz r0, 0x70(r1)
/* 813D7CE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7CE8 | 41 82 00 38 */	beq .L_813D7D20
/* 813D7CEC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D7CF0 | 38 80 00 04 */	li r4, 0x4
/* 813D7CF4 | 40 82 00 0C */	bne .L_813D7D00
/* 813D7CF8 | 38 80 00 01 */	li r4, 0x1
/* 813D7CFC | 48 00 00 10 */	b .L_813D7D0C
.L_813D7D00:
/* 813D7D00 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813D7D04 | 40 82 00 08 */	bne .L_813D7D0C
/* 813D7D08 | 38 80 00 02 */	li r4, 0x2
.L_813D7D0C:
/* 813D7D0C | 7F E3 FB 78 */	mr r3, r31
/* 813D7D10 | 38 A0 FF FF */	li r5, -0x1
/* 813D7D14 | 38 C0 00 00 */	li r6, 0x0
/* 813D7D18 | 4B FF F3 7D */	bl NN_813D7094
/* 813D7D1C | 48 00 02 5C */	b .L_813D7F78
.L_813D7D20:
/* 813D7D20 | 80 01 00 69 */	lwz r0, 0x69(r1)
/* 813D7D24 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 813D7D28 | A0 61 00 6D */	lhz r3, 0x6d(r1)
/* 813D7D2C | 48 0D BE 41 */	bl SONtoHs
/* 813D7D30 | B0 7F 00 34 */	sth r3, 0x34(r31)
/* 813D7D34 | 38 80 00 00 */	li r4, 0x0
/* 813D7D38 | 38 00 00 02 */	li r0, 0x2
/* 813D7D3C | 38 60 00 02 */	li r3, 0x2
/* 813D7D40 | 90 9F 00 24 */	stw r4, 0x24(r31)
/* 813D7D44 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 813D7D48 | 81 9F 00 38 */	lwz r12, 0x38(r31)
/* 813D7D4C | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 813D7D50 | 7D 89 03 A6 */	mtctr r12
/* 813D7D54 | 4E 80 04 21 */	bctrl
/* 813D7D58 | 7F E3 FB 78 */	mr r3, r31
/* 813D7D5C | 4B FF F6 89 */	bl NN_813D73E4
/* 813D7D60 | 48 00 02 18 */	b .L_813D7F78
.L_813D7D64:
/* 813D7D64 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 813D7D68 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D7D6C | 41 80 02 0C */	blt .L_813D7F78
/* 813D7D70 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813D7D74 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D7D78 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D7D7C | 48 0D BC 59 */	bl SOInetNtoA
/* 813D7D80 | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 813D7D84 | 48 0D BD E9 */	bl SONtoHs
/* 813D7D88 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813D7D8C | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 813D7D90 | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 813D7D94 | 48 0D BD D9 */	bl SONtoHs
/* 813D7D98 | B0 7F 00 34 */	sth r3, 0x34(r31)
/* 813D7D9C | 38 00 00 01 */	li r0, 0x1
/* 813D7DA0 | 98 1F 00 36 */	stb r0, 0x36(r31)
/* 813D7DA4 | 88 01 00 6F */	lbz r0, 0x6f(r1)
/* 813D7DA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7DAC | 40 82 00 10 */	bne .L_813D7DBC
/* 813D7DB0 | 7F E3 FB 78 */	mr r3, r31
/* 813D7DB4 | 4B FF F6 31 */	bl NN_813D73E4
/* 813D7DB8 | 48 00 01 C0 */	b .L_813D7F78
.L_813D7DBC:
/* 813D7DBC | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813D7DC0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D7DC4 | 40 82 00 4C */	bne .L_813D7E10
/* 813D7DC8 | 88 1F 00 37 */	lbz r0, 0x37(r31)
/* 813D7DCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7DD0 | 40 82 00 0C */	bne .L_813D7DDC
/* 813D7DD4 | 7F E3 FB 78 */	mr r3, r31
/* 813D7DD8 | 4B FF F6 0D */	bl NN_813D73E4
.L_813D7DDC:
/* 813D7DDC | 38 00 00 03 */	li r0, 0x3
/* 813D7DE0 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 813D7DE4 | 4B FF EA 55 */	bl current_time
/* 813D7DE8 | 38 03 13 88 */	addi r0, r3, 0x1388
/* 813D7DEC | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813D7DF0 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 813D7DF4 | 2C 05 FF FF */	cmpwi r5, -0x1
/* 813D7DF8 | 41 82 01 80 */	beq .L_813D7F78
/* 813D7DFC | 7F E3 FB 78 */	mr r3, r31
/* 813D7E00 | 7F C6 F3 78 */	mr r6, r30
/* 813D7E04 | 38 80 00 00 */	li r4, 0x0
/* 813D7E08 | 4B FF F2 8D */	bl NN_813D7094
/* 813D7E0C | 48 00 01 6C */	b .L_813D7F78
.L_813D7E10:
/* 813D7E10 | 88 01 00 70 */	lbz r0, 0x70(r1)
/* 813D7E14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7E18 | 40 82 01 60 */	bne .L_813D7F78
/* 813D7E1C | 7F E3 FB 78 */	mr r3, r31
/* 813D7E20 | 4B FF F5 C5 */	bl NN_813D73E4
/* 813D7E24 | 48 00 01 54 */	b .L_813D7F78
.L_813D7E28:
/* 813D7E28 | 2C 1F 00 15 */	cmpwi r31, 0x15
/* 813D7E2C | 41 80 01 4C */	blt .L_813D7F78
/* 813D7E30 | 7F 84 E3 78 */	mr r4, r28
/* 813D7E34 | 38 61 00 5D */	addi r3, r1, 0x5d
/* 813D7E38 | 38 A0 00 15 */	li r5, 0x15
/* 813D7E3C | 4B F5 83 F5 */	bl memcpy
/* 813D7E40 | 80 61 00 65 */	lwz r3, 0x65(r1)
/* 813D7E44 | 48 0D BD 25 */	bl SONtoHl
/* 813D7E48 | 4B FF EF E9 */	bl NN_813D6E30
/* 813D7E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D7E50 | 7C 7F 1B 78 */	mr r31, r3
/* 813D7E54 | 41 82 01 24 */	beq .L_813D7F78
/* 813D7E58 | 88 01 00 64 */	lbz r0, 0x64(r1)
/* 813D7E5C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D7E60 | 41 82 00 B4 */	beq .L_813D7F14
/* 813D7E64 | 40 80 00 10 */	bge .L_813D7E74
/* 813D7E68 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D7E6C | 40 80 00 14 */	bge .L_813D7E80
/* 813D7E70 | 48 00 01 08 */	b .L_813D7F78
.L_813D7E74:
/* 813D7E74 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813D7E78 | 41 82 00 CC */	beq .L_813D7F44
/* 813D7E7C | 48 00 00 FC */	b .L_813D7F78
.L_813D7E80:
/* 813D7E80 | 88 01 00 69 */	lbz r0, 0x69(r1)
/* 813D7E84 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813D7E88 | 41 81 00 F0 */	bgt .L_813D7F78
/* 813D7E8C | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 813D7E90 | 38 A0 00 01 */	li r5, 0x1
/* 813D7E94 | 7C 83 02 14 */	add r4, r3, r0
/* 813D7E98 | 90 A4 00 14 */	stw r5, 0x14(r4)
/* 813D7E9C | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 813D7EA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7EA4 | 40 82 00 D4 */	bne .L_813D7F78
/* 813D7EA8 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813D7EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7EB0 | 41 82 00 C8 */	beq .L_813D7F78
/* 813D7EB4 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 813D7EB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7EBC | 41 82 00 BC */	beq .L_813D7F78
/* 813D7EC0 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 813D7EC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7EC8 | 41 82 00 B0 */	beq .L_813D7F78
/* 813D7ECC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813D7ED0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813D7ED4 | 41 82 00 10 */	beq .L_813D7EE4
/* 813D7ED8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813D7EDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D7EE0 | 41 82 00 98 */	beq .L_813D7F78
.L_813D7EE4:
/* 813D7EE4 | 38 00 00 01 */	li r0, 0x1
/* 813D7EE8 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 813D7EEC | 4B FF E9 4D */	bl current_time
/* 813D7EF0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813D7EF4 | 38 03 EA 60 */	subi r0, r3, 0x15a0
/* 813D7EF8 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813D7EFC | 81 9F 00 38 */	lwz r12, 0x38(r31)
/* 813D7F00 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 813D7F04 | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 813D7F08 | 7D 89 03 A6 */	mtctr r12
/* 813D7F0C | 4E 80 04 21 */	bctrl
/* 813D7F10 | 48 00 00 68 */	b .L_813D7F78
.L_813D7F14:
/* 813D7F14 | 38 00 00 03 */	li r0, 0x3
/* 813D7F18 | 98 01 00 64 */	stb r0, 0x64(r1)
/* 813D7F1C | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 813D7F20 | 48 0D BC 4D */	bl SONtoHs
/* 813D7F24 | 7C 60 1B 78 */	mr r0, r3
/* 813D7F28 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813D7F2C | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813D7F30 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 813D7F34 | 38 C1 00 5D */	addi r6, r1, 0x5d
/* 813D7F38 | 38 E0 00 15 */	li r7, 0x15
/* 813D7F3C | 4B FF F0 19 */	bl NN_813D6F54
/* 813D7F40 | 48 00 00 38 */	b .L_813D7F78
.L_813D7F44:
/* 813D7F44 | 38 00 00 06 */	li r0, 0x6
/* 813D7F48 | 38 BF 00 4C */	addi r5, r31, 0x4c
/* 813D7F4C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 813D7F50 | 81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 813D7F54 | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 813D7F58 | 80 9F 00 48 */	lwz r4, 0x48(r31)
/* 813D7F5C | 80 DF 00 40 */	lwz r6, 0x40(r31)
/* 813D7F60 | 7D 89 03 A6 */	mtctr r12
/* 813D7F64 | 4E 80 04 21 */	bctrl
/* 813D7F68 | 38 00 FF FF */	li r0, -0x1
/* 813D7F6C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813D7F70 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813D7F74 | 4B FF F8 DD */	bl NNCancel
.L_813D7F78:
/* 813D7F78 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 813D7F7C | 48 22 15 95 */	bl _restgpr_28
/* 813D7F80 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 813D7F84 | 7C 08 03 A6 */	mtlr r0
/* 813D7F88 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 813D7F8C | 4E 80 00 20 */	blr
.endfn NNProcessData

# 0x81653858..0x816538B0 | size: 0x58
.data
.balign 8

# .data:0x0 | 0x81653858 | size: 0x58
.obj lbl_81653858, global
	.4byte 0x6E61746E
	.4byte 0x6567312E
	.4byte 0x67732E6E
	.4byte 0x696E7465
	.4byte 0x6E646F77
	.4byte 0x6966692E
	.4byte 0x6E657400
	.4byte 0x6E61746E
	.4byte 0x6567322E
	.4byte 0x67732E6E
	.4byte 0x696E7465
	.4byte 0x6E646F77
	.4byte 0x6966692E
	.4byte 0x6E657400
	.4byte 0x6E61746E
	.4byte 0x6567332E
	.4byte 0x67732E6E
	.4byte 0x696E7465
	.4byte 0x6E646F77
	.4byte 0x6966692E
	.4byte 0x6E657400
	.4byte 0x00000000
.endobj lbl_81653858

# 0x81696D20..0x81696D40 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D20 | size: 0x8
.obj lbl_81696D20, global
	.4byte 0xFDFC1E66
	.4byte 0x6AB20000
.endobj lbl_81696D20

# .sdata:0x8 | 0x81696D28 | size: 0x4
.obj lbl_81696D28, global
	.4byte 0xFFFFFFFF
.endobj lbl_81696D28

# .sdata:0xC | 0x81696D2C | size: 0x4
.obj lbl_81696D2C, global
	.4byte 0xFFFFFFFF
.endobj lbl_81696D2C

# .sdata:0x10 | 0x81696D30 | size: 0x4
.obj lbl_81696D30, global
	.4byte 0x00000006
.endobj lbl_81696D30

# .sdata:0x14 | 0x81696D34 | size: 0xC
.obj lbl_81696D34, global
	.4byte 0x25732E25
	.4byte 0x73000000
	.4byte 0x00000000
.endobj lbl_81696D34

# 0x81698BA0..0x81698BD0 | size: 0x30
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698BA0 | size: 0x4
.obj negotiateList, global
	.skip 0x4
.endobj negotiateList

# .sbss:0x4 | 0x81698BA4 | size: 0x4
.obj matchup1ip, global
	.skip 0x4
.endobj matchup1ip

# .sbss:0x8 | 0x81698BA8 | size: 0x4
.obj matchup2ip, global
	.skip 0x4
.endobj matchup2ip

# .sbss:0xC | 0x81698BAC | size: 0x4
.obj matchup3ip, global
	.skip 0x4
.endobj matchup3ip

# .sbss:0x10 | 0x81698BB0 | size: 0x4
.obj lbl_81698BB0, global
	.skip 0x4
.endobj lbl_81698BB0

# .sbss:0x14 | 0x81698BB4 | size: 0x4
.obj lbl_81698BB4, global
	.skip 0x4
.endobj lbl_81698BB4

# .sbss:0x18 | 0x81698BB8 | size: 0x4
.obj lbl_81698BB8, global
	.skip 0x4
.endobj lbl_81698BB8

# .sbss:0x1C | 0x81698BBC | size: 0x4
.obj natifyCallback, global
	.skip 0x4
.endobj natifyCallback

# .sbss:0x20 | 0x81698BC0 | size: 0x4
.obj Matchup3Hostname, global
	.skip 0x4
.endobj Matchup3Hostname

# .sbss:0x24 | 0x81698BC4 | size: 0x4
.obj Matchup2Hostname, global
	.skip 0x4
.endobj Matchup2Hostname

# .sbss:0x28 | 0x81698BC8 | size: 0x4
.obj Matchup1Hostname, global
	.skip 0x4
.endobj Matchup1Hostname

# .sbss:0x2C | 0x81698BCC | size: 0x4
.obj gap_12_81698BCC_sbss, global
.hidden gap_12_81698BCC_sbss
	.skip 0x4
.endobj gap_12_81698BCC_sbss
