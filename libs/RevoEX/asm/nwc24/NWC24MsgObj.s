.include "macros.inc"
.file "NWC24MsgObj.c"

# 0x814A0EA4..0x814A1AC0 | size: 0xC1C
.text
.balign 4

# .text:0x0 | 0x814A0EA4 | size: 0x1F0
.fn NWC24InitMsgObj, global
/* 814A0EA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A0EA8 | 7C 08 02 A6 */	mflr r0
/* 814A0EAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A0EB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A0EB4 | 48 15 86 09 */	bl _savegpr_26
/* 814A0EB8 | 7C 9E 23 78 */	mr r30, r4
/* 814A0EBC | 7C 7F 1B 78 */	mr r31, r3
/* 814A0EC0 | 38 80 00 00 */	li r4, 0x0
/* 814A0EC4 | 38 A0 01 00 */	li r5, 0x100
/* 814A0EC8 | 4B FF BF BD */	bl Mail_memset
/* 814A0ECC | 3B A0 00 00 */	li r29, 0x0
/* 814A0ED0 | 38 00 01 00 */	li r0, 0x100
/* 814A0ED4 | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 814A0ED8 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0EDC | 4B FF EB 65 */	bl NWC24GetAppId
/* 814A0EE0 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814A0EE4 | 93 BF 00 18 */	stw r29, 0x18(r31)
/* 814A0EE8 | 93 BF 00 14 */	stw r29, 0x14(r31)
/* 814A0EEC | 4B FF EB A1 */	bl NWC24GetGroupId
/* 814A0EF0 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 814A0EF4 | B0 7F 00 CA */	sth r3, 0xca(r31)
/* 814A0EF8 | 41 82 00 48 */	beq .L_814A0F40
/* 814A0EFC | 40 80 00 14 */	bge .L_814A0F10
/* 814A0F00 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A0F04 | 41 82 00 1C */	beq .L_814A0F20
/* 814A0F08 | 40 80 00 28 */	bge .L_814A0F30
/* 814A0F0C | 48 00 00 64 */	b .L_814A0F70
.L_814A0F10:
/* 814A0F10 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814A0F14 | 41 82 00 4C */	beq .L_814A0F60
/* 814A0F18 | 40 80 00 58 */	bge .L_814A0F70
/* 814A0F1C | 48 00 00 34 */	b .L_814A0F50
.L_814A0F20:
/* 814A0F20 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A0F24 | 60 00 00 0D */	ori r0, r0, 0xd
/* 814A0F28 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0F2C | 48 00 00 4C */	b .L_814A0F78
.L_814A0F30:
/* 814A0F30 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A0F34 | 60 00 00 05 */	ori r0, r0, 0x5
/* 814A0F38 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0F3C | 48 00 00 3C */	b .L_814A0F78
.L_814A0F40:
/* 814A0F40 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A0F44 | 60 00 00 09 */	ori r0, r0, 0x9
/* 814A0F48 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0F4C | 48 00 00 2C */	b .L_814A0F78
.L_814A0F50:
/* 814A0F50 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A0F54 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814A0F58 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0F5C | 48 00 00 1C */	b .L_814A0F78
.L_814A0F60:
/* 814A0F60 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A0F64 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814A0F68 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0F6C | 48 00 00 0C */	b .L_814A0F78
.L_814A0F70:
/* 814A0F70 | 38 60 FF FD */	li r3, -0x3
/* 814A0F74 | 48 00 01 08 */	b .L_814A107C
.L_814A0F78:
/* 814A0F78 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A0F7C | 3B A0 00 00 */	li r29, 0x0
/* 814A0F80 | 93 BF 00 28 */	stw r29, 0x28(r31)
/* 814A0F84 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814A0F88 | 64 00 00 20 */	oris r0, r0, 0x20
/* 814A0F8C | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814A0F90 | 93 BF 00 2C */	stw r29, 0x2c(r31)
/* 814A0F94 | 4B FF E3 9D */	bl NWC24GetMyUserId
/* 814A0F98 | 9B BF 00 C8 */	stb r29, 0xc8(r31)
/* 814A0F9C | 7F FC FB 78 */	mr r28, r31
/* 814A0FA0 | 3B 7F 00 88 */	addi r27, r31, 0x88
/* 814A0FA4 | 3B 40 00 00 */	li r26, 0x0
.L_814A0FA8:
/* 814A0FA8 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814A0FAC | 40 82 00 10 */	bne .L_814A0FBC
/* 814A0FB0 | 7F 63 DB 78 */	mr r3, r27
/* 814A0FB4 | 4B FF ED 11 */	bl NWC24Data_Init
/* 814A0FB8 | 48 00 00 0C */	b .L_814A0FC4
.L_814A0FBC:
/* 814A0FBC | 93 BC 00 8C */	stw r29, 0x8c(r28)
/* 814A0FC0 | 93 BC 00 88 */	stw r29, 0x88(r28)
.L_814A0FC4:
/* 814A0FC4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A0FC8 | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 814A0FCC | 28 1A 00 08 */	cmplwi r26, 0x8
/* 814A0FD0 | 3B 7B 00 08 */	addi r27, r27, 0x8
/* 814A0FD4 | 41 80 FF D4 */	blt .L_814A0FA8
/* 814A0FD8 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814A0FDC | 4B FF EC E9 */	bl NWC24Data_Init
/* 814A0FE0 | 38 7F 00 48 */	addi r3, r31, 0x48
/* 814A0FE4 | 4B FF EC E1 */	bl NWC24Data_Init
/* 814A0FE8 | 3B A0 00 00 */	li r29, 0x0
/* 814A0FEC | 7F FB FB 78 */	mr r27, r31
/* 814A0FF0 | 93 BF 00 60 */	stw r29, 0x60(r31)
/* 814A0FF4 | 3B 9F 00 68 */	addi r28, r31, 0x68
/* 814A0FF8 | 3B 40 00 00 */	li r26, 0x0
/* 814A0FFC | 3F C0 00 01 */	lis r30, 0x1
/* 814A1000 | 93 BF 00 64 */	stw r29, 0x64(r31)
/* 814A1004 | 9B BF 00 C9 */	stb r29, 0xc9(r31)
.L_814A1008:
/* 814A1008 | 7F 83 E3 78 */	mr r3, r28
/* 814A100C | 4B FF EC B9 */	bl NWC24Data_Init
/* 814A1010 | 93 BB 00 78 */	stw r29, 0x78(r27)
/* 814A1014 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A1018 | 28 1A 00 02 */	cmplwi r26, 0x2
/* 814A101C | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 814A1020 | 93 DB 00 80 */	stw r30, 0x80(r27)
/* 814A1024 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814A1028 | 41 80 FF E0 */	blt .L_814A1008
/* 814A102C | 38 7F 00 30 */	addi r3, r31, 0x30
/* 814A1030 | 4B FF EC 95 */	bl NWC24Data_Init
/* 814A1034 | 38 7F 00 38 */	addi r3, r31, 0x38
/* 814A1038 | 4B FF EC 8D */	bl NWC24Data_Init
/* 814A103C | 38 7F 00 50 */	addi r3, r31, 0x50
/* 814A1040 | 4B FF EC 85 */	bl NWC24Data_Init
/* 814A1044 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 814A1048 | 4B FF EC 7D */	bl NWC24Data_Init
/* 814A104C | 38 7F 00 D0 */	addi r3, r31, 0xd0
/* 814A1050 | 4B FF EC 75 */	bl NWC24Data_Init
/* 814A1054 | 38 7F 00 D8 */	addi r3, r31, 0xd8
/* 814A1058 | 4B FF EC 6D */	bl NWC24Data_Init
/* 814A105C | 38 7F 00 E0 */	addi r3, r31, 0xe0
/* 814A1060 | 4B FF EC 65 */	bl NWC24Data_Init
/* 814A1064 | 38 80 00 00 */	li r4, 0x0
/* 814A1068 | 3C 00 80 00 */	lis r0, 0x8000
/* 814A106C | 90 9F 00 CC */	stw r4, 0xcc(r31)
/* 814A1070 | 38 60 00 00 */	li r3, 0x0
/* 814A1074 | 90 9F 00 EC */	stw r4, 0xec(r31)
/* 814A1078 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
.L_814A107C:
/* 814A107C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A1080 | 48 15 84 89 */	bl _restgpr_26
/* 814A1084 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A1088 | 7C 08 03 A6 */	mtlr r0
/* 814A108C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A1090 | 4E 80 00 20 */	blr
.endfn NWC24InitMsgObj

# .text:0x1F0 | 0x814A1094 | size: 0x64
.fn NWC24SetMsgToId, global
/* 814A1094 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814A1098 | 54 80 05 EF */	rlwinm. r0, r4, 0, 23, 23
/* 814A109C | 41 82 00 0C */	beq .L_814A10A8
/* 814A10A0 | 54 80 05 AD */	rlwinm. r0, r4, 0, 22, 22
/* 814A10A4 | 41 82 00 0C */	beq .L_814A10B0
.L_814A10A8:
/* 814A10A8 | 38 60 FF F9 */	li r3, -0x7
/* 814A10AC | 4E 80 00 20 */	blr
.L_814A10B0:
/* 814A10B0 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814A10B4 | 40 82 00 0C */	bne .L_814A10C0
/* 814A10B8 | 38 60 FF FC */	li r3, -0x4
/* 814A10BC | 4E 80 00 20 */	blr
.L_814A10C0:
/* 814A10C0 | 88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 814A10C4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814A10C8 | 41 80 00 0C */	blt .L_814A10D4
/* 814A10CC | 38 60 FF FA */	li r3, -0x6
/* 814A10D0 | 4E 80 00 20 */	blr
.L_814A10D4:
/* 814A10D4 | 54 00 1D 78 */	clrlslwi r0, r0, 24, 3
/* 814A10D8 | 7C 83 02 14 */	add r4, r3, r0
/* 814A10DC | 90 C4 00 8C */	stw r6, 0x8c(r4)
/* 814A10E0 | 90 A4 00 88 */	stw r5, 0x88(r4)
/* 814A10E4 | 88 83 00 C8 */	lbz r4, 0xc8(r3)
/* 814A10E8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A10EC | 98 03 00 C8 */	stb r0, 0xc8(r3)
/* 814A10F0 | 38 60 00 00 */	li r3, 0x0
/* 814A10F4 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgToId

# .text:0x254 | 0x814A10F8 | size: 0xC8
.fn NWC24SetMsgToAddr, global
/* 814A10F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A10FC | 7C 08 02 A6 */	mflr r0
/* 814A1100 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A1104 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A1108 | 7C 7F 1B 78 */	mr r31, r3
/* 814A110C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814A1110 | 54 C0 05 EF */	rlwinm. r0, r6, 0, 23, 23
/* 814A1114 | 41 82 00 0C */	beq .L_814A1120
/* 814A1118 | 54 C0 05 AD */	rlwinm. r0, r6, 0, 22, 22
/* 814A111C | 41 82 00 0C */	beq .L_814A1128
.L_814A1120:
/* 814A1120 | 38 60 FF F9 */	li r3, -0x7
/* 814A1124 | 48 00 00 88 */	b .L_814A11AC
.L_814A1128:
/* 814A1128 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A112C | 41 82 00 10 */	beq .L_814A113C
/* 814A1130 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814A1134 | 7C 00 07 75 */	extsb. r0, r0
/* 814A1138 | 40 82 00 0C */	bne .L_814A1144
.L_814A113C:
/* 814A113C | 38 60 FF FB */	li r3, -0x5
/* 814A1140 | 48 00 00 6C */	b .L_814A11AC
.L_814A1144:
/* 814A1144 | 54 C0 07 BD */	rlwinm. r0, r6, 0, 30, 30
/* 814A1148 | 40 82 00 0C */	bne .L_814A1154
/* 814A114C | 38 60 FF FC */	li r3, -0x4
/* 814A1150 | 48 00 00 5C */	b .L_814A11AC
.L_814A1154:
/* 814A1154 | 88 C3 00 C8 */	lbz r6, 0xc8(r3)
/* 814A1158 | 28 06 00 08 */	cmplwi r6, 0x8
/* 814A115C | 41 80 00 0C */	blt .L_814A1168
/* 814A1160 | 38 60 FF FA */	li r3, -0x6
/* 814A1164 | 48 00 00 48 */	b .L_814A11AC
.L_814A1168:
/* 814A1168 | 28 05 01 00 */	cmplwi r5, 0x100
/* 814A116C | 41 80 00 0C */	blt .L_814A1178
/* 814A1170 | 38 60 FF F8 */	li r3, -0x8
/* 814A1174 | 48 00 00 38 */	b .L_814A11AC
.L_814A1178:
/* 814A1178 | 7C 04 28 AE */	lbzx r0, r4, r5
/* 814A117C | 7C 00 07 75 */	extsb. r0, r0
/* 814A1180 | 41 82 00 0C */	beq .L_814A118C
/* 814A1184 | 38 60 FF E7 */	li r3, -0x19
/* 814A1188 | 48 00 00 24 */	b .L_814A11AC
.L_814A118C:
/* 814A118C | 54 C0 1D 78 */	clrlslwi r0, r6, 24, 3
/* 814A1190 | 7C 63 02 14 */	add r3, r3, r0
/* 814A1194 | 38 63 00 88 */	addi r3, r3, 0x88
/* 814A1198 | 4B FF EB 3D */	bl NWC24Data_SetDataP
/* 814A119C | 88 9F 00 C8 */	lbz r4, 0xc8(r31)
/* 814A11A0 | 38 60 00 00 */	li r3, 0x0
/* 814A11A4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A11A8 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
.L_814A11AC:
/* 814A11AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A11B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A11B4 | 7C 08 03 A6 */	mtlr r0
/* 814A11B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A11BC | 4E 80 00 20 */	blr
.endfn NWC24SetMsgToAddr

# .text:0x31C | 0x814A11C0 | size: 0x74
.fn NWC24SetMsgSubject, global
/* 814A11C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A11C4 | 7C 08 02 A6 */	mflr r0
/* 814A11C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A11CC | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814A11D0 | 54 C0 05 EF */	rlwinm. r0, r6, 0, 23, 23
/* 814A11D4 | 41 82 00 0C */	beq .L_814A11E0
/* 814A11D8 | 54 C0 05 AD */	rlwinm. r0, r6, 0, 22, 22
/* 814A11DC | 41 82 00 0C */	beq .L_814A11E8
.L_814A11E0:
/* 814A11E0 | 38 60 FF F9 */	li r3, -0x7
/* 814A11E4 | 48 00 00 40 */	b .L_814A1224
.L_814A11E8:
/* 814A11E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A11EC | 41 82 00 10 */	beq .L_814A11FC
/* 814A11F0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814A11F4 | 7C 00 07 75 */	extsb. r0, r0
/* 814A11F8 | 40 82 00 0C */	bne .L_814A1204
.L_814A11FC:
/* 814A11FC | 38 60 FF FB */	li r3, -0x5
/* 814A1200 | 48 00 00 24 */	b .L_814A1224
.L_814A1204:
/* 814A1204 | 7C 04 28 AE */	lbzx r0, r4, r5
/* 814A1208 | 7C 00 07 75 */	extsb. r0, r0
/* 814A120C | 41 82 00 0C */	beq .L_814A1218
/* 814A1210 | 38 60 FF E7 */	li r3, -0x19
/* 814A1214 | 48 00 00 10 */	b .L_814A1224
.L_814A1218:
/* 814A1218 | 38 63 00 40 */	addi r3, r3, 0x40
/* 814A121C | 4B FF EA B9 */	bl NWC24Data_SetDataP
/* 814A1220 | 38 60 00 00 */	li r3, 0x0
.L_814A1224:
/* 814A1224 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A1228 | 7C 08 03 A6 */	mtlr r0
/* 814A122C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A1230 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgSubject

# .text:0x390 | 0x814A1234 | size: 0x138
.fn NWC24SetMsgText, global
/* 814A1234 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A1238 | 7C 08 02 A6 */	mflr r0
/* 814A123C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A1240 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A1244 | 48 15 82 7D */	bl _savegpr_27
/* 814A1248 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814A124C | 7C 7B 1B 78 */	mr r27, r3
/* 814A1250 | 7C 9C 23 78 */	mr r28, r4
/* 814A1254 | 7C BD 2B 78 */	mr r29, r5
/* 814A1258 | 55 00 05 EF */	rlwinm. r0, r8, 0, 23, 23
/* 814A125C | 7C DE 33 78 */	mr r30, r6
/* 814A1260 | 7C FF 3B 78 */	mr r31, r7
/* 814A1264 | 41 82 00 0C */	beq .L_814A1270
/* 814A1268 | 55 00 05 AD */	rlwinm. r0, r8, 0, 22, 22
/* 814A126C | 41 82 00 0C */	beq .L_814A1278
.L_814A1270:
/* 814A1270 | 38 60 FF F9 */	li r3, -0x7
/* 814A1274 | 48 00 00 E0 */	b .L_814A1354
.L_814A1278:
/* 814A1278 | 7F C3 F3 78 */	mr r3, r30
/* 814A127C | 48 00 4C F5 */	bl NWC24GetCharsetStr
/* 814A1280 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1284 | 40 82 00 0C */	bne .L_814A1290
/* 814A1288 | 38 60 FF FD */	li r3, -0x3
/* 814A128C | 48 00 00 C8 */	b .L_814A1354
.L_814A1290:
/* 814A1290 | 7F E3 FB 78 */	mr r3, r31
/* 814A1294 | 48 00 4D 91 */	bl NWC24GetEncodingStr
/* 814A1298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A129C | 40 82 00 0C */	bne .L_814A12A8
/* 814A12A0 | 38 60 FF FD */	li r3, -0x3
/* 814A12A4 | 48 00 00 B0 */	b .L_814A1354
.L_814A12A8:
/* 814A12A8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A12AC | 40 82 00 14 */	bne .L_814A12C0
/* 814A12B0 | 38 7B 00 48 */	addi r3, r27, 0x48
/* 814A12B4 | 4B FF EA 11 */	bl NWC24Data_Init
/* 814A12B8 | 38 60 00 00 */	li r3, 0x0
/* 814A12BC | 48 00 00 98 */	b .L_814A1354
.L_814A12C0:
/* 814A12C0 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814A12C4 | 40 82 00 18 */	bne .L_814A12DC
/* 814A12C8 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814A12CC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814A12D0 | 41 82 00 0C */	beq .L_814A12DC
/* 814A12D4 | 38 60 FF FC */	li r3, -0x4
/* 814A12D8 | 48 00 00 7C */	b .L_814A1354
.L_814A12DC:
/* 814A12DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A12E0 | 40 82 00 58 */	bne .L_814A1338
/* 814A12E4 | 7F 84 E3 78 */	mr r4, r28
/* 814A12E8 | 7C BC EA 14 */	add r5, r28, r29
/* 814A12EC | 38 60 00 00 */	li r3, 0x0
/* 814A12F0 | 48 00 00 40 */	b .L_814A1330
.L_814A12F4:
/* 814A12F4 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814A12F8 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814A12FC | 40 82 00 1C */	bne .L_814A1318
/* 814A1300 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814A1304 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A1308 | 40 82 00 10 */	bne .L_814A1318
/* 814A130C | 38 60 00 00 */	li r3, 0x0
/* 814A1310 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814A1314 | 48 00 00 18 */	b .L_814A132C
.L_814A1318:
/* 814A1318 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A131C | 28 03 03 E6 */	cmplwi r3, 0x3e6
/* 814A1320 | 40 81 00 0C */	ble .L_814A132C
/* 814A1324 | 38 60 FF E8 */	li r3, -0x18
/* 814A1328 | 48 00 00 2C */	b .L_814A1354
.L_814A132C:
/* 814A132C | 38 84 00 01 */	addi r4, r4, 0x1
.L_814A1330:
/* 814A1330 | 7C 04 28 40 */	cmplw r4, r5
/* 814A1334 | 41 80 FF C0 */	blt .L_814A12F4
.L_814A1338:
/* 814A1338 | 7F 84 E3 78 */	mr r4, r28
/* 814A133C | 7F A5 EB 78 */	mr r5, r29
/* 814A1340 | 38 7B 00 48 */	addi r3, r27, 0x48
/* 814A1344 | 4B FF E9 91 */	bl NWC24Data_SetDataP
/* 814A1348 | 93 DB 00 60 */	stw r30, 0x60(r27)
/* 814A134C | 38 60 00 00 */	li r3, 0x0
/* 814A1350 | 93 FB 00 64 */	stw r31, 0x64(r27)
.L_814A1354:
/* 814A1354 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A1358 | 48 15 81 B5 */	bl _restgpr_27
/* 814A135C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A1360 | 7C 08 03 A6 */	mtlr r0
/* 814A1364 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A1368 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgText

# .text:0x4C8 | 0x814A136C | size: 0x214
.fn NWC24SetMsgAttached, global
/* 814A136C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A1370 | 7C 08 02 A6 */	mflr r0
/* 814A1374 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A1378 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A137C | 48 15 81 45 */	bl _savegpr_27
/* 814A1380 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814A1384 | 7C 7F 1B 78 */	mr r31, r3
/* 814A1388 | 7C 9B 23 78 */	mr r27, r4
/* 814A138C | 7C BC 2B 78 */	mr r28, r5
/* 814A1390 | 54 E0 05 EF */	rlwinm. r0, r7, 0, 23, 23
/* 814A1394 | 7C DD 33 78 */	mr r29, r6
/* 814A1398 | 3B C0 00 00 */	li r30, 0x0
/* 814A139C | 41 82 00 0C */	beq .L_814A13A8
/* 814A13A0 | 54 E0 05 AD */	rlwinm. r0, r7, 0, 22, 22
/* 814A13A4 | 41 82 00 0C */	beq .L_814A13B0
.L_814A13A8:
/* 814A13A8 | 38 60 FF F9 */	li r3, -0x7
/* 814A13AC | 48 00 01 BC */	b .L_814A1568
.L_814A13B0:
/* 814A13B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A13B4 | 41 82 00 0C */	beq .L_814A13C0
/* 814A13B8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A13BC | 40 82 00 0C */	bne .L_814A13C8
.L_814A13C0:
/* 814A13C0 | 38 60 FF FB */	li r3, -0x5
/* 814A13C4 | 48 00 01 A4 */	b .L_814A1568
.L_814A13C8:
/* 814A13C8 | 88 03 00 C9 */	lbz r0, 0xc9(r3)
/* 814A13CC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814A13D0 | 41 80 00 0C */	blt .L_814A13DC
/* 814A13D4 | 38 60 FF FA */	li r3, -0x6
/* 814A13D8 | 48 00 01 90 */	b .L_814A1568
.L_814A13DC:
/* 814A13DC | 7F A3 EB 78 */	mr r3, r29
/* 814A13E0 | 48 00 4B 01 */	bl NWC24GetMIMETypeStr
/* 814A13E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A13E8 | 40 82 00 0C */	bne .L_814A13F4
/* 814A13EC | 38 60 FF FD */	li r3, -0x3
/* 814A13F0 | 48 00 01 78 */	b .L_814A1568
.L_814A13F4:
/* 814A13F4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A13F8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814A13FC | 41 82 00 38 */	beq .L_814A1434
/* 814A1400 | 3C 1D FF FF */	subis r0, r29, 0x1
/* 814A1404 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A1408 | 41 82 00 2C */	beq .L_814A1434
/* 814A140C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814A1410 | 41 82 00 24 */	beq .L_814A1434
/* 814A1414 | 3C 1D FF FE */	subis r0, r29, 0x2
/* 814A1418 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A141C | 41 82 00 18 */	beq .L_814A1434
/* 814A1420 | 3C 1D FF FD */	subis r0, r29, 0x3
/* 814A1424 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A1428 | 41 82 00 0C */	beq .L_814A1434
/* 814A142C | 38 60 FF FC */	li r3, -0x4
/* 814A1430 | 48 00 01 38 */	b .L_814A1568
.L_814A1434:
/* 814A1434 | 3C 1D FF FD */	subis r0, r29, 0x3
/* 814A1438 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814A143C | 40 82 00 14 */	bne .L_814A1450
/* 814A1440 | 28 1C 00 80 */	cmplwi r28, 0x80
/* 814A1444 | 40 81 00 0C */	ble .L_814A1450
/* 814A1448 | 38 60 FF FD */	li r3, -0x3
/* 814A144C | 48 00 01 1C */	b .L_814A1568
.L_814A1450:
/* 814A1450 | 88 BF 00 C9 */	lbz r5, 0xc9(r31)
/* 814A1454 | 38 C0 00 00 */	li r6, 0x0
/* 814A1458 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A145C | 41 82 00 9C */	beq .L_814A14F8
/* 814A1460 | 28 05 00 08 */	cmplwi r5, 0x8
/* 814A1464 | 38 65 FF F8 */	subi r3, r5, 0x8
/* 814A1468 | 40 81 00 68 */	ble .L_814A14D0
/* 814A146C | 38 03 00 07 */	addi r0, r3, 0x7
/* 814A1470 | 7F E4 FB 78 */	mr r4, r31
/* 814A1474 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814A1478 | 7C 09 03 A6 */	mtctr r0
/* 814A147C | 28 03 00 00 */	cmplwi r3, 0x0
/* 814A1480 | 40 81 00 50 */	ble .L_814A14D0
.L_814A1484:
/* 814A1484 | 80 64 00 78 */	lwz r3, 0x78(r4)
/* 814A1488 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814A148C | 80 04 00 7C */	lwz r0, 0x7c(r4)
/* 814A1490 | 7F DE 1A 14 */	add r30, r30, r3
/* 814A1494 | 80 64 00 80 */	lwz r3, 0x80(r4)
/* 814A1498 | 7F DE 02 14 */	add r30, r30, r0
/* 814A149C | 80 04 00 84 */	lwz r0, 0x84(r4)
/* 814A14A0 | 7F DE 1A 14 */	add r30, r30, r3
/* 814A14A4 | 80 64 00 88 */	lwz r3, 0x88(r4)
/* 814A14A8 | 7F DE 02 14 */	add r30, r30, r0
/* 814A14AC | 80 04 00 8C */	lwz r0, 0x8c(r4)
/* 814A14B0 | 7F DE 1A 14 */	add r30, r30, r3
/* 814A14B4 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 814A14B8 | 7F DE 02 14 */	add r30, r30, r0
/* 814A14BC | 80 04 00 94 */	lwz r0, 0x94(r4)
/* 814A14C0 | 7F DE 1A 14 */	add r30, r30, r3
/* 814A14C4 | 38 84 00 20 */	addi r4, r4, 0x20
/* 814A14C8 | 7F DE 02 14 */	add r30, r30, r0
/* 814A14CC | 42 00 FF B8 */	bdnz .L_814A1484
.L_814A14D0:
/* 814A14D0 | 54 C3 10 3A */	slwi r3, r6, 2
/* 814A14D4 | 7C 06 28 50 */	subf r0, r6, r5
/* 814A14D8 | 7C 7F 1A 14 */	add r3, r31, r3
/* 814A14DC | 7C 09 03 A6 */	mtctr r0
/* 814A14E0 | 7C 06 28 40 */	cmplw r6, r5
/* 814A14E4 | 40 80 00 14 */	bge .L_814A14F8
.L_814A14E8:
/* 814A14E8 | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 814A14EC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814A14F0 | 7F DE 02 14 */	add r30, r30, r0
/* 814A14F4 | 42 00 FF F4 */	bdnz .L_814A14E8
.L_814A14F8:
/* 814A14F8 | 3C 60 00 02 */	lis r3, 0x2
/* 814A14FC | 7F DE E2 14 */	add r30, r30, r28
/* 814A1500 | 38 03 45 B0 */	addi r0, r3, 0x45b0
/* 814A1504 | 7C 1E 00 40 */	cmplw r30, r0
/* 814A1508 | 41 80 00 0C */	blt .L_814A1514
/* 814A150C | 38 60 FF F8 */	li r3, -0x8
/* 814A1510 | 48 00 00 58 */	b .L_814A1568
.L_814A1514:
/* 814A1514 | 54 A0 1D 78 */	clrlslwi r0, r5, 24, 3
/* 814A1518 | 7F 64 DB 78 */	mr r4, r27
/* 814A151C | 7C 7F 02 14 */	add r3, r31, r0
/* 814A1520 | 7F 85 E3 78 */	mr r5, r28
/* 814A1524 | 38 63 00 68 */	addi r3, r3, 0x68
/* 814A1528 | 4B FF E7 AD */	bl NWC24Data_SetDataP
/* 814A152C | 88 1F 00 C9 */	lbz r0, 0xc9(r31)
/* 814A1530 | 38 60 00 00 */	li r3, 0x0
/* 814A1534 | 54 00 10 3A */	slwi r0, r0, 2
/* 814A1538 | 7C 9F 02 14 */	add r4, r31, r0
/* 814A153C | 93 84 00 78 */	stw r28, 0x78(r4)
/* 814A1540 | 88 1F 00 C9 */	lbz r0, 0xc9(r31)
/* 814A1544 | 54 00 10 3A */	slwi r0, r0, 2
/* 814A1548 | 7C 9F 02 14 */	add r4, r31, r0
/* 814A154C | 93 A4 00 80 */	stw r29, 0x80(r4)
/* 814A1550 | 88 9F 00 C9 */	lbz r4, 0xc9(r31)
/* 814A1554 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A1558 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814A155C | 64 00 00 01 */	oris r0, r0, 0x1
/* 814A1560 | 98 9F 00 C9 */	stb r4, 0xc9(r31)
/* 814A1564 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_814A1568:
/* 814A1568 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A156C | 48 15 7F A1 */	bl _restgpr_27
/* 814A1570 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A1574 | 7C 08 03 A6 */	mtlr r0
/* 814A1578 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A157C | 4E 80 00 20 */	blr
.endfn NWC24SetMsgAttached

# .text:0x6DC | 0x814A1580 | size: 0x5C
.fn NWC24SetMsgFaceData, global
/* 814A1580 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A1584 | 7C 08 02 A6 */	mflr r0
/* 814A1588 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A158C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814A1590 | 54 A0 05 EF */	rlwinm. r0, r5, 0, 23, 23
/* 814A1594 | 41 82 00 0C */	beq .L_814A15A0
/* 814A1598 | 54 A0 05 AD */	rlwinm. r0, r5, 0, 22, 22
/* 814A159C | 41 82 00 0C */	beq .L_814A15A8
.L_814A15A0:
/* 814A15A0 | 38 60 FF F9 */	li r3, -0x7
/* 814A15A4 | 48 00 00 28 */	b .L_814A15CC
.L_814A15A8:
/* 814A15A8 | 80 03 00 DC */	lwz r0, 0xdc(r3)
/* 814A15AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A15B0 | 41 82 00 0C */	beq .L_814A15BC
/* 814A15B4 | 38 60 FF FA */	li r3, -0x6
/* 814A15B8 | 48 00 00 14 */	b .L_814A15CC
.L_814A15BC:
/* 814A15BC | 38 A0 00 4A */	li r5, 0x4a
/* 814A15C0 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 814A15C4 | 4B FF E7 11 */	bl NWC24Data_SetDataP
/* 814A15C8 | 38 60 00 00 */	li r3, 0x0
.L_814A15CC:
/* 814A15CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A15D0 | 7C 08 03 A6 */	mtlr r0
/* 814A15D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A15D8 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgFaceData

# .text:0x738 | 0x814A15DC | size: 0x58
.fn NWC24SetMsgMBNoReply, global
/* 814A15DC | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814A15E0 | 54 A0 05 EF */	rlwinm. r0, r5, 0, 23, 23
/* 814A15E4 | 41 82 00 0C */	beq .L_814A15F0
/* 814A15E8 | 54 A0 05 AD */	rlwinm. r0, r5, 0, 22, 22
/* 814A15EC | 41 82 00 0C */	beq .L_814A15F8
.L_814A15F0:
/* 814A15F0 | 38 60 FF F9 */	li r3, -0x7
/* 814A15F4 | 4E 80 00 20 */	blr
.L_814A15F8:
/* 814A15F8 | 54 A0 07 39 */	rlwinm. r0, r5, 0, 28, 28
/* 814A15FC | 40 82 00 0C */	bne .L_814A1608
/* 814A1600 | 38 60 FF FC */	li r3, -0x4
/* 814A1604 | 4E 80 00 20 */	blr
.L_814A1608:
/* 814A1608 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A160C | 41 82 00 14 */	beq .L_814A1620
/* 814A1610 | 80 03 00 CC */	lwz r0, 0xcc(r3)
/* 814A1614 | 64 00 80 00 */	oris r0, r0, 0x8000
/* 814A1618 | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 814A161C | 48 00 00 10 */	b .L_814A162C
.L_814A1620:
/* 814A1620 | 80 03 00 CC */	lwz r0, 0xcc(r3)
/* 814A1624 | 54 00 00 7E */	clrlwi r0, r0, 1
/* 814A1628 | 90 03 00 CC */	stw r0, 0xcc(r3)
.L_814A162C:
/* 814A162C | 38 60 00 00 */	li r3, 0x0
/* 814A1630 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgMBNoReply

# .text:0x790 | 0x814A1634 | size: 0xD4
.fn NWC24SetMsgMBRegDate, global
/* 814A1634 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A1638 | 7C 08 02 A6 */	mflr r0
/* 814A163C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A1640 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A1644 | 7C DF 33 78 */	mr r31, r6
/* 814A1648 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A164C | 7C BE 2B 78 */	mr r30, r5
/* 814A1650 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A1654 | 7C 9D 23 78 */	mr r29, r4
/* 814A1658 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A165C | 7C 7C 1B 78 */	mr r28, r3
/* 814A1660 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 814A1664 | 54 E0 05 EF */	rlwinm. r0, r7, 0, 23, 23
/* 814A1668 | 41 82 00 0C */	beq .L_814A1674
/* 814A166C | 54 E0 05 AD */	rlwinm. r0, r7, 0, 22, 22
/* 814A1670 | 41 82 00 0C */	beq .L_814A167C
.L_814A1674:
/* 814A1674 | 38 60 FF F9 */	li r3, -0x7
/* 814A1678 | 48 00 00 70 */	b .L_814A16E8
.L_814A167C:
/* 814A167C | 54 E0 07 39 */	rlwinm. r0, r7, 0, 28, 28
/* 814A1680 | 40 82 00 0C */	bne .L_814A168C
/* 814A1684 | 38 60 FF FC */	li r3, -0x4
/* 814A1688 | 48 00 00 60 */	b .L_814A16E8
.L_814A168C:
/* 814A168C | 28 04 07 D0 */	cmplwi r4, 0x7d0
/* 814A1690 | 41 80 00 0C */	blt .L_814A169C
/* 814A1694 | 28 04 07 F3 */	cmplwi r4, 0x7f3
/* 814A1698 | 40 81 00 0C */	ble .L_814A16A4
.L_814A169C:
/* 814A169C | 38 60 FF FD */	li r3, -0x3
/* 814A16A0 | 48 00 00 48 */	b .L_814A16E8
.L_814A16A4:
/* 814A16A4 | 7F A3 EB 78 */	mr r3, r29
/* 814A16A8 | 7F C4 F3 78 */	mr r4, r30
/* 814A16AC | 7F E5 FB 78 */	mr r5, r31
/* 814A16B0 | 48 00 AC 69 */	bl NWC24iIsValidDate
/* 814A16B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A16B8 | 41 82 00 08 */	beq .L_814A16C0
/* 814A16BC | 48 00 00 2C */	b .L_814A16E8
.L_814A16C0:
/* 814A16C0 | 57 C3 2C F4 */	clrlslwi r3, r30, 24, 5
/* 814A16C4 | 38 1D F8 30 */	subi r0, r29, 0x7d0
/* 814A16C8 | 7F E4 1B 78 */	or r4, r31, r3
/* 814A16CC | 80 BC 00 CC */	lwz r5, 0xcc(r28)
/* 814A16D0 | 54 00 48 2C */	slwi r0, r0, 9
/* 814A16D4 | 38 60 00 00 */	li r3, 0x0
/* 814A16D8 | 7C 80 03 78 */	or r0, r4, r0
/* 814A16DC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814A16E0 | 50 A0 00 1E */	rlwimi r0, r5, 0, 0, 15
/* 814A16E4 | 90 1C 00 CC */	stw r0, 0xcc(r28)
.L_814A16E8:
/* 814A16E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A16EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A16F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A16F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A16F8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A16FC | 7C 08 03 A6 */	mtlr r0
/* 814A1700 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A1704 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgMBRegDate

# .text:0x864 | 0x814A1708 | size: 0x7C
.fn NWC24SetMsgAppId, global
/* 814A1708 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A170C | 7C 08 02 A6 */	mflr r0
/* 814A1710 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A1714 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A1718 | 7C 9F 23 78 */	mr r31, r4
/* 814A171C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A1720 | 7C 7E 1B 78 */	mr r30, r3
/* 814A1724 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814A1728 | 54 A0 05 EF */	rlwinm. r0, r5, 0, 23, 23
/* 814A172C | 41 82 00 0C */	beq .L_814A1738
/* 814A1730 | 54 A0 05 AD */	rlwinm. r0, r5, 0, 22, 22
/* 814A1734 | 41 82 00 0C */	beq .L_814A1740
.L_814A1738:
/* 814A1738 | 38 60 FF F9 */	li r3, -0x7
/* 814A173C | 48 00 00 30 */	b .L_814A176C
.L_814A1740:
/* 814A1740 | 4B FF EB CD */	bl NWC24IsMsgLibOpenedByTool
/* 814A1744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1748 | 40 82 00 1C */	bne .L_814A1764
/* 814A174C | 4B FF E2 F5 */	bl NWC24GetAppId
/* 814A1750 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A1754 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814A1758 | 41 82 00 0C */	beq .L_814A1764
/* 814A175C | 38 60 FF F9 */	li r3, -0x7
/* 814A1760 | 48 00 00 0C */	b .L_814A176C
.L_814A1764:
/* 814A1764 | 93 FE 00 0C */	stw r31, 0xc(r30)
/* 814A1768 | 38 60 00 00 */	li r3, 0x0
.L_814A176C:
/* 814A176C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A1770 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A1774 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A1778 | 7C 08 03 A6 */	mtlr r0
/* 814A177C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A1780 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgAppId

# .text:0x8E0 | 0x814A1784 | size: 0xCC
.fn NWC24SetMsgLedPattern, global
/* 814A1784 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A1788 | 7C 08 02 A6 */	mflr r0
/* 814A178C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A1790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A1794 | 7C 9F 23 78 */	mr r31, r4
/* 814A1798 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A179C | 7C 7E 1B 78 */	mr r30, r3
/* 814A17A0 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814A17A4 | 54 A0 05 EF */	rlwinm. r0, r5, 0, 23, 23
/* 814A17A8 | 41 82 00 0C */	beq .L_814A17B4
/* 814A17AC | 54 A0 05 AD */	rlwinm. r0, r5, 0, 22, 22
/* 814A17B0 | 41 82 00 0C */	beq .L_814A17BC
.L_814A17B4:
/* 814A17B4 | 38 60 FF F9 */	li r3, -0x7
/* 814A17B8 | 48 00 00 80 */	b .L_814A1838
.L_814A17BC:
/* 814A17BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A17C0 | 40 82 00 0C */	bne .L_814A17CC
/* 814A17C4 | 38 60 FF FD */	li r3, -0x3
/* 814A17C8 | 48 00 00 70 */	b .L_814A1838
.L_814A17CC:
/* 814A17CC | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814A17D0 | 41 82 00 0C */	beq .L_814A17DC
/* 814A17D4 | 54 A0 07 39 */	rlwinm. r0, r5, 0, 28, 28
/* 814A17D8 | 40 82 00 0C */	bne .L_814A17E4
.L_814A17DC:
/* 814A17DC | 38 60 FF FC */	li r3, -0x4
/* 814A17E0 | 48 00 00 58 */	b .L_814A1838
.L_814A17E4:
/* 814A17E4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814A17E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A17EC | 41 82 00 14 */	beq .L_814A1800
/* 814A17F0 | 54 00 03 5B */	rlwinm. r0, r0, 0, 13, 13
/* 814A17F4 | 40 82 00 0C */	bne .L_814A1800
/* 814A17F8 | 38 60 FF FC */	li r3, -0x4
/* 814A17FC | 48 00 00 3C */	b .L_814A1838
.L_814A1800:
/* 814A1800 | 4B FF EB 0D */	bl NWC24IsMsgLibOpenedByTool
/* 814A1804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1808 | 40 82 00 24 */	bne .L_814A182C
/* 814A180C | 4B FF E2 35 */	bl NWC24GetAppId
/* 814A1810 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A1814 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814A1818 | 41 82 00 14 */	beq .L_814A182C
/* 814A181C | 28 1F 40 00 */	cmplwi r31, 0x4000
/* 814A1820 | 41 80 00 0C */	blt .L_814A182C
/* 814A1824 | 38 60 FF FD */	li r3, -0x3
/* 814A1828 | 48 00 00 10 */	b .L_814A1838
.L_814A182C:
/* 814A182C | 67 E0 00 04 */	oris r0, r31, 0x4
/* 814A1830 | 38 60 00 00 */	li r3, 0x0
/* 814A1834 | 90 1E 00 18 */	stw r0, 0x18(r30)
.L_814A1838:
/* 814A1838 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A183C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A1840 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A1844 | 7C 08 03 A6 */	mtlr r0
/* 814A1848 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A184C | 4E 80 00 20 */	blr
.endfn NWC24SetMsgLedPattern

# .text:0x9AC | 0x814A1850 | size: 0x78
.fn NWC24GetMsgType, global
/* 814A1850 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A1854 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 814A1858 | 41 82 00 4C */	beq .L_814A18A4
/* 814A185C | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 814A1860 | 41 82 00 24 */	beq .L_814A1884
/* 814A1864 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814A1868 | 41 82 00 10 */	beq .L_814A1878
/* 814A186C | 38 00 00 00 */	li r0, 0x0
/* 814A1870 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1874 | 48 00 00 4C */	b .L_814A18C0
.L_814A1878:
/* 814A1878 | 38 00 00 01 */	li r0, 0x1
/* 814A187C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1880 | 48 00 00 40 */	b .L_814A18C0
.L_814A1884:
/* 814A1884 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814A1888 | 41 82 00 10 */	beq .L_814A1898
/* 814A188C | 38 00 00 02 */	li r0, 0x2
/* 814A1890 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1894 | 48 00 00 2C */	b .L_814A18C0
.L_814A1898:
/* 814A1898 | 38 00 00 03 */	li r0, 0x3
/* 814A189C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A18A0 | 48 00 00 20 */	b .L_814A18C0
.L_814A18A4:
/* 814A18A4 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 814A18A8 | 41 82 00 10 */	beq .L_814A18B8
/* 814A18AC | 38 00 00 04 */	li r0, 0x4
/* 814A18B0 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A18B4 | 48 00 00 0C */	b .L_814A18C0
.L_814A18B8:
/* 814A18B8 | 38 60 FF FD */	li r3, -0x3
/* 814A18BC | 4E 80 00 20 */	blr
.L_814A18C0:
/* 814A18C0 | 38 60 00 00 */	li r3, 0x0
/* 814A18C4 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgType

# .text:0xA24 | 0x814A18C8 | size: 0x28
.fn NWC24GetMsgSubjectSize, global
/* 814A18C8 | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 814A18CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A18D0 | 41 82 00 10 */	beq .L_814A18E0
/* 814A18D4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A18D8 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A18DC | 48 00 00 0C */	b .L_814A18E8
.L_814A18E0:
/* 814A18E0 | 38 00 00 00 */	li r0, 0x0
/* 814A18E4 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814A18E8:
/* 814A18E8 | 38 60 00 00 */	li r3, 0x0
/* 814A18EC | 4E 80 00 20 */	blr
.endfn NWC24GetMsgSubjectSize

# .text:0xA4C | 0x814A18F0 | size: 0x40
.fn NWC24GetMsgTextSize, global
/* 814A18F0 | 80 A3 00 E8 */	lwz r5, 0xe8(r3)
/* 814A18F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A18F8 | 41 82 00 10 */	beq .L_814A1908
/* 814A18FC | 38 05 00 01 */	addi r0, r5, 0x1
/* 814A1900 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1904 | 48 00 00 24 */	b .L_814A1928
.L_814A1908:
/* 814A1908 | 80 63 00 4C */	lwz r3, 0x4c(r3)
/* 814A190C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1910 | 41 82 00 10 */	beq .L_814A1920
/* 814A1914 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A1918 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A191C | 48 00 00 0C */	b .L_814A1928
.L_814A1920:
/* 814A1920 | 38 00 00 00 */	li r0, 0x0
/* 814A1924 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814A1928:
/* 814A1928 | 38 60 00 00 */	li r3, 0x0
/* 814A192C | 4E 80 00 20 */	blr
.endfn NWC24GetMsgTextSize

# .text:0xA8C | 0x814A1930 | size: 0x1C
.fn NWC24GetMsgNumAttached, global
/* 814A1930 | 88 03 00 C9 */	lbz r0, 0xc9(r3)
/* 814A1934 | 38 60 00 00 */	li r3, 0x0
/* 814A1938 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814A193C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1940 | 4C 81 00 20 */	blelr
/* 814A1944 | 38 60 FF F2 */	li r3, -0xe
/* 814A1948 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgNumAttached

# .text:0xAA8 | 0x814A194C | size: 0x34
.fn NWC24GetMsgAttachedSize, global
/* 814A194C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814A1950 | 40 80 00 10 */	bge .L_814A1960
/* 814A1954 | 88 03 00 C9 */	lbz r0, 0xc9(r3)
/* 814A1958 | 7C 04 00 40 */	cmplw r4, r0
/* 814A195C | 41 80 00 0C */	blt .L_814A1968
.L_814A1960:
/* 814A1960 | 38 60 FF FD */	li r3, -0x3
/* 814A1964 | 4E 80 00 20 */	blr
.L_814A1968:
/* 814A1968 | 54 80 10 3A */	slwi r0, r4, 2
/* 814A196C | 7C 83 02 14 */	add r4, r3, r0
/* 814A1970 | 38 60 00 00 */	li r3, 0x0
/* 814A1974 | 80 04 00 78 */	lwz r0, 0x78(r4)
/* 814A1978 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A197C | 4E 80 00 20 */	blr
.endfn NWC24GetMsgAttachedSize

# .text:0xADC | 0x814A1980 | size: 0x7C
.fn NWC24GetMsgAttachedType, global
/* 814A1980 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814A1984 | 40 80 00 10 */	bge .L_814A1994
/* 814A1988 | 88 03 00 C9 */	lbz r0, 0xc9(r3)
/* 814A198C | 7C 04 00 40 */	cmplw r4, r0
/* 814A1990 | 41 80 00 0C */	blt .L_814A199C
.L_814A1994:
/* 814A1994 | 38 60 FF FD */	li r3, -0x3
/* 814A1998 | 4E 80 00 20 */	blr
.L_814A199C:
/* 814A199C | 54 80 10 3A */	slwi r0, r4, 2
/* 814A19A0 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814A19A4 | 7C 63 02 14 */	add r3, r3, r0
/* 814A19A8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 814A19AC | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 814A19B0 | 90 65 00 00 */	stw r3, 0x0(r5)
/* 814A19B4 | 41 82 00 40 */	beq .L_814A19F4
/* 814A19B8 | 54 80 04 E7 */	rlwinm. r0, r4, 0, 19, 19
/* 814A19BC | 40 82 00 38 */	bne .L_814A19F4
/* 814A19C0 | 3C 03 FF FF */	subis r0, r3, 0x1
/* 814A19C4 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A19C8 | 41 82 00 2C */	beq .L_814A19F4
/* 814A19CC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814A19D0 | 41 82 00 24 */	beq .L_814A19F4
/* 814A19D4 | 3C 03 FF FE */	subis r0, r3, 0x2
/* 814A19D8 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A19DC | 41 82 00 18 */	beq .L_814A19F4
/* 814A19E0 | 3C 03 FF FD */	subis r0, r3, 0x3
/* 814A19E4 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A19E8 | 41 82 00 0C */	beq .L_814A19F4
/* 814A19EC | 38 00 00 00 */	li r0, 0x0
/* 814A19F0 | 90 05 00 00 */	stw r0, 0x0(r5)
.L_814A19F4:
/* 814A19F4 | 38 60 00 00 */	li r3, 0x0
/* 814A19F8 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgAttachedType

# .text:0xB58 | 0x814A19FC | size: 0x10
.fn NWC24GetMsgAppId, global
/* 814A19FC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814A1A00 | 38 60 00 00 */	li r3, 0x0
/* 814A1A04 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1A08 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgAppId

# .text:0xB68 | 0x814A1A0C | size: 0x10
.fn NWC24GetMsgGroupId, global
/* 814A1A0C | A0 03 00 CA */	lhz r0, 0xca(r3)
/* 814A1A10 | 38 60 00 00 */	li r3, 0x0
/* 814A1A14 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814A1A18 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgGroupId

# .text:0xB78 | 0x814A1A1C | size: 0x2C
.fn NWC24GetMsgFromId, global
/* 814A1A1C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814A1A20 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814A1A24 | 40 82 00 0C */	bne .L_814A1A30
/* 814A1A28 | 38 60 FF FC */	li r3, -0x4
/* 814A1A2C | 4E 80 00 20 */	blr
.L_814A1A30:
/* 814A1A30 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814A1A34 | 80 A3 00 24 */	lwz r5, 0x24(r3)
/* 814A1A38 | 38 60 00 00 */	li r3, 0x0
/* 814A1A3C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A1A40 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 814A1A44 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgFromId

# .text:0xBA4 | 0x814A1A48 | size: 0x30
.fn NWC24GetMsgDate, global
/* 814A1A48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A1A4C | 7C 08 02 A6 */	mflr r0
/* 814A1A50 | 7C 65 1B 78 */	mr r5, r3
/* 814A1A54 | 7C 83 23 78 */	mr r3, r4
/* 814A1A58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A1A5C | 80 85 00 28 */	lwz r4, 0x28(r5)
/* 814A1A60 | 48 00 A5 8D */	bl NWC24iMinutesToOSCalendarTime
/* 814A1A64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A1A68 | 38 60 00 00 */	li r3, 0x0
/* 814A1A6C | 7C 08 03 A6 */	mtlr r0
/* 814A1A70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A1A74 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgDate

# .text:0xBD4 | 0x814A1A78 | size: 0x48
.fn NWC24GetMsgIconNewSign, global
/* 814A1A78 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814A1A7C | 54 A0 07 39 */	rlwinm. r0, r5, 0, 28, 28
/* 814A1A80 | 40 82 00 0C */	bne .L_814A1A8C
/* 814A1A84 | 54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 814A1A88 | 41 82 00 0C */	beq .L_814A1A94
.L_814A1A8C:
/* 814A1A8C | 38 60 FF F3 */	li r3, -0xd
/* 814A1A90 | 4E 80 00 20 */	blr
.L_814A1A94:
/* 814A1A94 | 80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 814A1A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1A9C | 90 64 00 00 */	stw r3, 0x0(r4)
/* 814A1AA0 | 41 82 00 10 */	beq .L_814A1AB0
/* 814A1AA4 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 814A1AA8 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A1AAC | 40 82 00 0C */	bne .L_814A1AB8
.L_814A1AB0:
/* 814A1AB0 | 38 60 FF F3 */	li r3, -0xd
/* 814A1AB4 | 4E 80 00 20 */	blr
.L_814A1AB8:
/* 814A1AB8 | 38 60 00 00 */	li r3, 0x0
/* 814A1ABC | 4E 80 00 20 */	blr
.endfn NWC24GetMsgIconNewSign
