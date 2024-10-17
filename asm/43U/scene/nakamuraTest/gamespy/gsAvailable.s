.include "macros.inc"
.file "gsAvailable.c"

# 0x810B8008..0x810B80E0 | size: 0xD8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B8008 | size: 0x40
.obj __GSIACGamename, global
	.skip 0x40
.endobj __GSIACGamename

# .bss:0x40 | 0x810B8048 | size: 0x40
.obj gap_00_810B8048_bss, global
.hidden gap_00_810B8048_bss
	.skip 0x40
.endobj gap_00_810B8048_bss

# .bss:0x80 | 0x810B8088 | size: 0x58
.obj AC, local
	.skip 0x58
.endobj AC

# 0x813D5FE8..0x813D6328 | size: 0x340
.text
.balign 4

# .text:0x0 | 0x813D5FE8 | size: 0x50
.fn SendPacket, local
/* 813D5FE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D5FEC | 7C 08 02 A6 */	mflr r0
/* 813D5FF0 | 3C 60 81 0C */	lis r3, AC@ha
/* 813D5FF4 | 38 C0 00 00 */	li r6, 0x0
/* 813D5FF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D5FFC | 39 00 00 08 */	li r8, 0x8
/* 813D6000 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D6004 | 3B E3 80 88 */	addi r31, r3, AC@l
/* 813D6008 | 38 9F 00 0C */	addi r4, r31, 0xc
/* 813D600C | 80 63 80 88 */	lwz r3, AC@l(r3)
/* 813D6010 | 38 FF 00 04 */	addi r7, r31, 0x4
/* 813D6014 | 80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 813D6018 | 48 00 04 25 */	bl sendto
/* 813D601C | 48 00 08 1D */	bl current_time
/* 813D6020 | 90 7F 00 50 */	stw r3, 0x50(r31)
/* 813D6024 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D6028 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D602C | 7C 08 03 A6 */	mtlr r0
/* 813D6030 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6034 | 4E 80 00 20 */	blr
.endfn SendPacket

# .text:0x50 | 0x813D6038 | size: 0x150
.fn GSIStartAvailableCheckA, global
/* 813D6038 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813D603C | 7C 08 02 A6 */	mflr r0
/* 813D6040 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813D6044 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813D6048 | 48 22 34 7D */	bl _savegpr_28
/* 813D604C | 3F E0 81 0C */	lis r31, __GSIACGamename@ha
/* 813D6050 | 7C 7C 1B 78 */	mr r28, r3
/* 813D6054 | 3B FF 80 08 */	addi r31, r31, __GSIACGamename@l
/* 813D6058 | 7F 84 E3 78 */	mr r4, r28
/* 813D605C | 38 7F 00 00 */	addi r3, r31, 0x0
/* 813D6060 | 48 22 C2 A5 */	bl strcpy
/* 813D6064 | 38 00 FF FF */	li r0, -0x1
/* 813D6068 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813D606C | 48 00 07 C9 */	bl SocketStartUp
/* 813D6070 | 8B BF 00 40 */	lbz r29, 0x40(r31)
/* 813D6074 | 7F BD 07 75 */	extsb. r29, r29
/* 813D6078 | 40 82 00 1C */	bne .L_813D6094
/* 813D607C | 3C 80 81 65 */	lis r4, lbl_81653810@ha
/* 813D6080 | 7F 85 E3 78 */	mr r5, r28
/* 813D6084 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D6088 | 38 84 38 10 */	addi r4, r4, lbl_81653810@l
/* 813D608C | 4C C6 31 82 */	crclr cr1eq
/* 813D6090 | 48 22 A9 F1 */	bl sprintf
.L_813D6094:
/* 813D6094 | 3B DF 00 80 */	addi r30, r31, 0x80
/* 813D6098 | 38 00 00 02 */	li r0, 0x2
/* 813D609C | 98 1E 00 05 */	stb r0, 0x5(r30)
/* 813D60A0 | 38 60 6C FC */	li r3, 0x6cfc
/* 813D60A4 | 48 0D DA D5 */	bl SOHtoNs
/* 813D60A8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D60AC | B0 7E 00 06 */	sth r3, 0x6(r30)
/* 813D60B0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D60B4 | 41 82 00 08 */	beq .L_813D60BC
/* 813D60B8 | 38 7F 00 40 */	addi r3, r31, 0x40
.L_813D60BC:
/* 813D60BC | 48 00 04 45 */	bl inet_addr
/* 813D60C0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 813D60C4 | 38 9F 00 80 */	addi r4, r31, 0x80
/* 813D60C8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 813D60CC | 90 64 00 08 */	stw r3, 0x8(r4)
/* 813D60D0 | 40 82 00 3C */	bne .L_813D610C
/* 813D60D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D60D8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D60DC | 41 82 00 08 */	beq .L_813D60E4
/* 813D60E0 | 38 7F 00 40 */	addi r3, r31, 0x40
.L_813D60E4:
/* 813D60E4 | 48 0D DF F9 */	bl SOGetHostByName
/* 813D60E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D60EC | 40 82 00 0C */	bne .L_813D60F8
/* 813D60F0 | 38 00 00 00 */	li r0, 0x0
/* 813D60F4 | 48 00 00 1C */	b .L_813D6110
.L_813D60F8:
/* 813D60F8 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 813D60FC | 38 7F 00 80 */	addi r3, r31, 0x80
/* 813D6100 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813D6104 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813D6108 | 90 03 00 08 */	stw r0, 0x8(r3)
.L_813D610C:
/* 813D610C | 38 00 00 01 */	li r0, 0x1
.L_813D6110:
/* 813D6110 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D6114 | 41 82 00 5C */	beq .L_813D6170
/* 813D6118 | 38 60 00 02 */	li r3, 0x2
/* 813D611C | 38 80 00 02 */	li r4, 0x2
/* 813D6120 | 38 A0 00 11 */	li r5, 0x11
/* 813D6124 | 48 00 02 75 */	bl socket
/* 813D6128 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D612C | 90 7F 00 80 */	stw r3, 0x80(r31)
/* 813D6130 | 41 82 00 40 */	beq .L_813D6170
/* 813D6134 | 3B DF 00 80 */	addi r30, r31, 0x80
/* 813D6138 | 38 00 00 09 */	li r0, 0x9
/* 813D613C | 98 1E 00 0C */	stb r0, 0xc(r30)
/* 813D6140 | 7F 83 E3 78 */	mr r3, r28
/* 813D6144 | 48 22 2D B9 */	bl strlen
/* 813D6148 | 7C 7F 1B 78 */	mr r31, r3
/* 813D614C | 7F 84 E3 78 */	mr r4, r28
/* 813D6150 | 38 7E 00 11 */	addi r3, r30, 0x11
/* 813D6154 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 813D6158 | 4B F5 A0 D9 */	bl memcpy
/* 813D615C | 38 1F 00 06 */	addi r0, r31, 0x6
/* 813D6160 | 90 1E 00 4C */	stw r0, 0x4c(r30)
/* 813D6164 | 4B FF FE 85 */	bl SendPacket
/* 813D6168 | 38 00 00 00 */	li r0, 0x0
/* 813D616C | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813D6170:
/* 813D6170 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813D6174 | 48 22 33 9D */	bl _restgpr_28
/* 813D6178 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813D617C | 7C 08 03 A6 */	mtlr r0
/* 813D6180 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813D6184 | 4E 80 00 20 */	blr
.endfn GSIStartAvailableCheckA

# .text:0x1A0 | 0x813D6188 | size: 0x1A0
.fn GSIAvailableCheckThink, global
/* 813D6188 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813D618C | 7C 08 02 A6 */	mflr r0
/* 813D6190 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813D6194 | 38 00 00 08 */	li r0, 0x8
/* 813D6198 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813D619C | 3F E0 81 0C */	lis r31, AC@ha
/* 813D61A0 | 80 7F 80 88 */	lwz r3, AC@l(r31)
/* 813D61A4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D61A8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D61AC | 40 82 00 14 */	bne .L_813D61C0
/* 813D61B0 | 38 00 00 01 */	li r0, 0x1
/* 813D61B4 | 38 60 00 01 */	li r3, 0x1
/* 813D61B8 | 90 0D AB 50 */	stw r0, __GSIACResult@sda21(r0)
/* 813D61BC | 48 00 01 58 */	b .L_813D6314
.L_813D61C0:
/* 813D61C0 | 48 00 04 A1 */	bl CanReceiveOnSocket
/* 813D61C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D61C8 | 41 82 00 F8 */	beq .L_813D62C0
/* 813D61CC | 80 7F 80 88 */	lwz r3, AC@l(r31)
/* 813D61D0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813D61D4 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813D61D8 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813D61DC | 38 A0 00 40 */	li r5, 0x40
/* 813D61E0 | 38 C0 00 00 */	li r6, 0x0
/* 813D61E4 | 48 00 02 09 */	bl recvfrom
/* 813D61E8 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813D61EC | 40 80 00 0C */	bge .L_813D61F8
/* 813D61F0 | 38 A0 00 01 */	li r5, 0x1
/* 813D61F4 | 48 00 00 88 */	b .L_813D627C
.L_813D61F8:
/* 813D61F8 | 3B FF 80 88 */	addi r31, r31, AC@l
/* 813D61FC | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D6200 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 813D6204 | 38 A0 00 04 */	li r5, 0x4
/* 813D6208 | 48 22 7F CD */	bl memcmp
/* 813D620C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6210 | 41 82 00 0C */	beq .L_813D621C
/* 813D6214 | 38 A0 00 01 */	li r5, 0x1
/* 813D6218 | 48 00 00 64 */	b .L_813D627C
.L_813D621C:
/* 813D621C | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 813D6220 | A0 1F 00 06 */	lhz r0, 0x6(r31)
/* 813D6224 | 7C 03 00 40 */	cmplw r3, r0
/* 813D6228 | 41 82 00 0C */	beq .L_813D6234
/* 813D622C | 38 A0 00 01 */	li r5, 0x1
/* 813D6230 | 48 00 00 4C */	b .L_813D627C
.L_813D6234:
/* 813D6234 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813D6238 | 38 8D 8C D8 */	li r4, lbl_81696D18@sda21
/* 813D623C | 38 A0 00 03 */	li r5, 0x3
/* 813D6240 | 48 22 7F 95 */	bl memcmp
/* 813D6244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6248 | 41 82 00 0C */	beq .L_813D6254
/* 813D624C | 38 A0 00 01 */	li r5, 0x1
/* 813D6250 | 48 00 00 2C */	b .L_813D627C
.L_813D6254:
/* 813D6254 | 88 01 00 18 */	lbz r0, 0x18(r1)
/* 813D6258 | 38 A0 00 00 */	li r5, 0x0
/* 813D625C | 88 61 00 19 */	lbz r3, 0x19(r1)
/* 813D6260 | 54 06 82 1E */	clrlslwi r6, r0, 24, 16
/* 813D6264 | 88 81 00 17 */	lbz r4, 0x17(r1)
/* 813D6268 | 88 01 00 1A */	lbz r0, 0x1a(r1)
/* 813D626C | 54 63 44 2E */	clrlslwi r3, r3, 24, 8
/* 813D6270 | 50 86 C0 0E */	rlwimi r6, r4, 24, 0, 7
/* 813D6274 | 7C C6 1B 78 */	or r6, r6, r3
/* 813D6278 | 7C DF 03 78 */	or r31, r6, r0
.L_813D627C:
/* 813D627C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D6280 | 40 82 00 40 */	bne .L_813D62C0
/* 813D6284 | 3C 60 81 0C */	lis r3, AC@ha
/* 813D6288 | 80 63 80 88 */	lwz r3, AC@l(r3)
/* 813D628C | 48 00 01 39 */	bl closesocket
/* 813D6290 | 57 E0 07 FF */	clrlwi. r0, r31, 31
/* 813D6294 | 41 82 00 10 */	beq .L_813D62A4
/* 813D6298 | 38 00 00 02 */	li r0, 0x2
/* 813D629C | 90 0D AB 50 */	stw r0, __GSIACResult@sda21(r0)
/* 813D62A0 | 48 00 00 18 */	b .L_813D62B8
.L_813D62A4:
/* 813D62A4 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 813D62A8 | 38 00 00 01 */	li r0, 0x1
/* 813D62AC | 41 82 00 08 */	beq .L_813D62B4
/* 813D62B0 | 38 00 00 03 */	li r0, 0x3
.L_813D62B4:
/* 813D62B4 | 90 0D AB 50 */	stw r0, __GSIACResult@sda21(r0)
.L_813D62B8:
/* 813D62B8 | 7C 03 03 78 */	mr r3, r0
/* 813D62BC | 48 00 00 58 */	b .L_813D6314
.L_813D62C0:
/* 813D62C0 | 48 00 05 79 */	bl current_time
/* 813D62C4 | 3C A0 81 0C */	lis r5, AC@ha
/* 813D62C8 | 3B E5 80 88 */	addi r31, r5, AC@l
/* 813D62CC | 80 9F 00 50 */	lwz r4, 0x50(r31)
/* 813D62D0 | 38 04 07 D0 */	addi r0, r4, 0x7d0
/* 813D62D4 | 7C 03 00 40 */	cmplw r3, r0
/* 813D62D8 | 40 81 00 38 */	ble .L_813D6310
/* 813D62DC | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813D62E0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D62E4 | 40 82 00 1C */	bne .L_813D6300
/* 813D62E8 | 80 65 80 88 */	lwz r3, AC@l(r5)
/* 813D62EC | 48 00 00 D9 */	bl closesocket
/* 813D62F0 | 38 00 00 01 */	li r0, 0x1
/* 813D62F4 | 38 60 00 01 */	li r3, 0x1
/* 813D62F8 | 90 0D AB 50 */	stw r0, __GSIACResult@sda21(r0)
/* 813D62FC | 48 00 00 18 */	b .L_813D6314
.L_813D6300:
/* 813D6300 | 4B FF FC E9 */	bl SendPacket
/* 813D6304 | 80 7F 00 54 */	lwz r3, 0x54(r31)
/* 813D6308 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813D630C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813D6310:
/* 813D6310 | 38 60 00 00 */	li r3, 0x0
.L_813D6314:
/* 813D6314 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813D6318 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813D631C | 7C 08 03 A6 */	mtlr r0
/* 813D6320 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813D6324 | 4E 80 00 20 */	blr
.endfn GSIAvailableCheckThink

# 0x81653810..0x81653838 | size: 0x28
.data
.balign 8

# .data:0x0 | 0x81653810 | size: 0x21
.obj lbl_81653810, global
	.string "%s.available.gs.nintendowifi.net"
.endobj lbl_81653810

# .data:0x21 | 0x81653831 | size: 0x7
.obj gap_08_81653831_data, global
.hidden gap_08_81653831_data
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_08_81653831_data

# 0x81696D18..0x81696D20 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D18 | size: 0x4
.obj lbl_81696D18, global
	.4byte 0xFEFD0900
.endobj lbl_81696D18

# .sdata:0x4 | 0x81696D1C | size: 0x4
.obj gap_11_81696D1C_sdata, global
.hidden gap_11_81696D1C_sdata
	.4byte 0x00000000
.endobj gap_11_81696D1C_sdata

# 0x81698B90..0x81698B98 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B90 | size: 0x4
.obj __GSIACResult, global
	.skip 0x4
.endobj __GSIACResult

# .sbss:0x4 | 0x81698B94 | size: 0x4
.obj gap_12_81698B94_sbss, global
.hidden gap_12_81698B94_sbss
	.skip 0x4
.endobj gap_12_81698B94_sbss
