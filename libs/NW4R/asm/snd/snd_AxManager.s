.include "macros.inc"
.file "snd_AxManager.cpp"

# 0x810F6040..0x81100458 | size: 0xA418
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810F6040 | size: 0x100
# nw4r::snd::detail::AxManager::sZeroBuffer
.obj sZeroBuffer__Q44nw4r3snd6detail9AxManager, global
	.skip 0x100
.endobj sZeroBuffer__Q44nw4r3snd6detail9AxManager

# .bss:0x100 | 0x810F6140 | size: 0xC
.obj lbl_810F6140, local
	.skip 0xC
.endobj lbl_810F6140

# .bss:0x10C | 0x810F614C | size: 0xA30C
.obj instance$1758, local
	.skip 0xA30C
.endobj instance$1758

# 0x814F7024..0x814F8900 | size: 0x18DC
.text
.balign 4

# .text:0x0 | 0x814F7024 | size: 0x530
# nw4r::snd::detail::AxManager::AxManager()
.fn __ct__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F7024 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F7028 | 7C 08 02 A6 */	mflr r0
/* 814F702C | 3C 80 81 50 */	lis r4, __ct__Q44nw4r3snd6detail7AxVoiceFv@ha
/* 814F7030 | 3C A0 81 50 */	lis r5, __dt__Q44nw4r3snd6detail7AxVoiceFv@ha
/* 814F7034 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7038 | 39 03 00 0C */	addi r8, r3, 0xc
/* 814F703C | 39 23 00 18 */	addi r9, r3, 0x18
/* 814F7040 | 39 43 00 24 */	addi r10, r3, 0x24
/* 814F7044 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F7048 | 7C 7F 1B 78 */	mr r31, r3
/* 814F704C | 38 84 89 00 */	addi r4, r4, __ct__Q44nw4r3snd6detail7AxVoiceFv@l
/* 814F7050 | 38 A5 89 64 */	addi r5, r5, __dt__Q44nw4r3snd6detail7AxVoiceFv@l
/* 814F7054 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814F7058 | 3B C0 00 00 */	li r30, 0x0
/* 814F705C | 38 C0 01 B0 */	li r6, 0x1b0
/* 814F7060 | 38 E0 00 60 */	li r7, 0x60
/* 814F7064 | 93 C3 00 0C */	stw r30, 0xc(r3)
/* 814F7068 | 93 C3 00 10 */	stw r30, 0x10(r3)
/* 814F706C | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 814F7070 | 93 C3 00 1C */	stw r30, 0x1c(r3)
/* 814F7074 | 93 C3 00 24 */	stw r30, 0x24(r3)
/* 814F7078 | 93 C3 00 28 */	stw r30, 0x28(r3)
/* 814F707C | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 814F7080 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 814F7084 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 814F7088 | 91 03 00 0C */	stw r8, 0xc(r3)
/* 814F708C | 91 03 00 10 */	stw r8, 0x10(r3)
/* 814F7090 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 814F7094 | 91 23 00 18 */	stw r9, 0x18(r3)
/* 814F7098 | 91 23 00 1C */	stw r9, 0x1c(r3)
/* 814F709C | 93 C3 00 20 */	stw r30, 0x20(r3)
/* 814F70A0 | 91 43 00 24 */	stw r10, 0x24(r3)
/* 814F70A4 | 91 43 00 28 */	stw r10, 0x28(r3)
/* 814F70A8 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 814F70AC | 48 10 21 55 */	bl __construct_array
/* 814F70B0 | 3C BF 00 01 */	addis r5, r31, 0x1
/* 814F70B4 | C0 02 8D C0 */	lfs f0, lbl_816951C0@sda21(r0)
/* 814F70B8 | 38 05 A2 9C */	subi r0, r5, 0x5d64
/* 814F70BC | 38 80 00 01 */	li r4, 0x1
/* 814F70C0 | 38 C5 A2 7C */	subi r6, r5, 0x5d84
/* 814F70C4 | 38 60 FF FF */	li r3, -0x1
/* 814F70C8 | 7C 86 00 40 */	cmplw cr1, r6, r0
/* 814F70CC | 9B C5 A2 30 */	stb r30, -0x5dd0(r5)
/* 814F70D0 | 98 85 A2 31 */	stb r4, -0x5dcf(r5)
/* 814F70D4 | 9B C5 A2 32 */	stb r30, -0x5dce(r5)
/* 814F70D8 | 9B C5 A2 33 */	stb r30, -0x5dcd(r5)
/* 814F70DC | D0 05 A2 34 */	stfs f0, -0x5dcc(r5)
/* 814F70E0 | D0 05 A2 38 */	stfs f0, -0x5dc8(r5)
/* 814F70E4 | 93 C5 A2 3C */	stw r30, -0x5dc4(r5)
/* 814F70E8 | 93 C5 A2 40 */	stw r30, -0x5dc0(r5)
/* 814F70EC | D0 05 A2 44 */	stfs f0, -0x5dbc(r5)
/* 814F70F0 | D0 05 A2 48 */	stfs f0, -0x5db8(r5)
/* 814F70F4 | 93 C5 A2 4C */	stw r30, -0x5db4(r5)
/* 814F70F8 | 93 C5 A2 50 */	stw r30, -0x5db0(r5)
/* 814F70FC | D0 05 A2 54 */	stfs f0, -0x5dac(r5)
/* 814F7100 | D0 05 A2 58 */	stfs f0, -0x5da8(r5)
/* 814F7104 | 93 C5 A2 5C */	stw r30, -0x5da4(r5)
/* 814F7108 | 93 C5 A2 60 */	stw r30, -0x5da0(r5)
/* 814F710C | 93 C5 A2 64 */	stw r30, -0x5d9c(r5)
/* 814F7110 | 90 65 A2 68 */	stw r3, -0x5d98(r5)
/* 814F7114 | D0 05 A2 6C */	stfs f0, -0x5d94(r5)
/* 814F7118 | D0 05 A2 70 */	stfs f0, -0x5d90(r5)
/* 814F711C | 93 C5 A2 74 */	stw r30, -0x5d8c(r5)
/* 814F7120 | 93 C5 A2 78 */	stw r30, -0x5d88(r5)
/* 814F7124 | 40 84 01 74 */	bge cr1, .L_814F7298
/* 814F7128 | 7C E6 00 50 */	subf r7, r6, r0
/* 814F712C | 38 85 A2 1C */	subi r4, r5, 0x5de4
/* 814F7130 | 39 07 00 0F */	addi r8, r7, 0xf
/* 814F7134 | 7D 00 26 70 */	srawi r0, r8, 4
/* 814F7138 | 7D 20 01 94 */	addze r9, r0
/* 814F713C | 39 49 00 01 */	addi r10, r9, 0x1
/* 814F7140 | 2C 0A 00 08 */	cmpwi r10, 0x8
/* 814F7144 | 40 81 01 14 */	ble .L_814F7258
/* 814F7148 | 38 60 00 00 */	li r3, 0x0
/* 814F714C | 38 A0 00 00 */	li r5, 0x0
/* 814F7150 | 41 85 00 28 */	bgt cr1, .L_814F7178
/* 814F7154 | 54 E0 00 01 */	clrrwi. r0, r7, 31
/* 814F7158 | 38 E0 00 01 */	li r7, 0x1
/* 814F715C | 40 82 00 10 */	bne .L_814F716C
/* 814F7160 | 55 00 00 01 */	clrrwi. r0, r8, 31
/* 814F7164 | 41 82 00 08 */	beq .L_814F716C
/* 814F7168 | 38 E0 00 00 */	li r7, 0x0
.L_814F716C:
/* 814F716C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F7170 | 41 82 00 08 */	beq .L_814F7178
/* 814F7174 | 38 A0 00 01 */	li r5, 0x1
.L_814F7178:
/* 814F7178 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F717C | 41 82 00 2C */	beq .L_814F71A8
/* 814F7180 | 55 27 00 01 */	clrrwi. r7, r9, 31
/* 814F7184 | 38 A0 00 01 */	li r5, 0x1
/* 814F7188 | 40 82 00 14 */	bne .L_814F719C
/* 814F718C | 55 40 00 00 */	clrrwi r0, r10, 31
/* 814F7190 | 7C 07 00 00 */	cmpw r7, r0
/* 814F7194 | 41 82 00 08 */	beq .L_814F719C
/* 814F7198 | 38 A0 00 00 */	li r5, 0x0
.L_814F719C:
/* 814F719C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F71A0 | 41 82 00 08 */	beq .L_814F71A8
/* 814F71A4 | 38 60 00 01 */	li r3, 0x1
.L_814F71A8:
/* 814F71A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F71AC | 41 82 00 AC */	beq .L_814F7258
/* 814F71B0 | 38 04 00 7F */	addi r0, r4, 0x7f
/* 814F71B4 | C0 02 8D C0 */	lfs f0, lbl_816951C0@sda21(r0)
/* 814F71B8 | 7C 06 00 50 */	subf r0, r6, r0
/* 814F71BC | 38 60 00 00 */	li r3, 0x0
/* 814F71C0 | 54 00 C9 FE */	srwi r0, r0, 7
/* 814F71C4 | 7C 09 03 A6 */	mtctr r0
/* 814F71C8 | 7C 06 20 40 */	cmplw r6, r4
/* 814F71CC | 40 80 00 8C */	bge .L_814F7258
.L_814F71D0:
/* 814F71D0 | D0 06 00 00 */	stfs f0, 0x0(r6)
/* 814F71D4 | D0 06 00 04 */	stfs f0, 0x4(r6)
/* 814F71D8 | 90 66 00 08 */	stw r3, 0x8(r6)
/* 814F71DC | 90 66 00 0C */	stw r3, 0xc(r6)
/* 814F71E0 | D0 06 00 10 */	stfs f0, 0x10(r6)
/* 814F71E4 | D0 06 00 14 */	stfs f0, 0x14(r6)
/* 814F71E8 | 90 66 00 18 */	stw r3, 0x18(r6)
/* 814F71EC | 90 66 00 1C */	stw r3, 0x1c(r6)
/* 814F71F0 | D0 06 00 20 */	stfs f0, 0x20(r6)
/* 814F71F4 | D0 06 00 24 */	stfs f0, 0x24(r6)
/* 814F71F8 | 90 66 00 28 */	stw r3, 0x28(r6)
/* 814F71FC | 90 66 00 2C */	stw r3, 0x2c(r6)
/* 814F7200 | D0 06 00 30 */	stfs f0, 0x30(r6)
/* 814F7204 | D0 06 00 34 */	stfs f0, 0x34(r6)
/* 814F7208 | 90 66 00 38 */	stw r3, 0x38(r6)
/* 814F720C | 90 66 00 3C */	stw r3, 0x3c(r6)
/* 814F7210 | D0 06 00 40 */	stfs f0, 0x40(r6)
/* 814F7214 | D0 06 00 44 */	stfs f0, 0x44(r6)
/* 814F7218 | 90 66 00 48 */	stw r3, 0x48(r6)
/* 814F721C | 90 66 00 4C */	stw r3, 0x4c(r6)
/* 814F7220 | D0 06 00 50 */	stfs f0, 0x50(r6)
/* 814F7224 | D0 06 00 54 */	stfs f0, 0x54(r6)
/* 814F7228 | 90 66 00 58 */	stw r3, 0x58(r6)
/* 814F722C | 90 66 00 5C */	stw r3, 0x5c(r6)
/* 814F7230 | D0 06 00 60 */	stfs f0, 0x60(r6)
/* 814F7234 | D0 06 00 64 */	stfs f0, 0x64(r6)
/* 814F7238 | 90 66 00 68 */	stw r3, 0x68(r6)
/* 814F723C | 90 66 00 6C */	stw r3, 0x6c(r6)
/* 814F7240 | D0 06 00 70 */	stfs f0, 0x70(r6)
/* 814F7244 | D0 06 00 74 */	stfs f0, 0x74(r6)
/* 814F7248 | 90 66 00 78 */	stw r3, 0x78(r6)
/* 814F724C | 90 66 00 7C */	stw r3, 0x7c(r6)
/* 814F7250 | 38 C6 00 80 */	addi r6, r6, 0x80
/* 814F7254 | 42 00 FF 7C */	bdnz .L_814F71D0
.L_814F7258:
/* 814F7258 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814F725C | C0 02 8D C0 */	lfs f0, lbl_816951C0@sda21(r0)
/* 814F7260 | 38 63 A2 9C */	subi r3, r3, 0x5d64
/* 814F7264 | 38 80 00 00 */	li r4, 0x0
/* 814F7268 | 38 03 00 0F */	addi r0, r3, 0xf
/* 814F726C | 7C 06 00 50 */	subf r0, r6, r0
/* 814F7270 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814F7274 | 7C 09 03 A6 */	mtctr r0
/* 814F7278 | 7C 06 18 40 */	cmplw r6, r3
/* 814F727C | 40 80 00 1C */	bge .L_814F7298
.L_814F7280:
/* 814F7280 | D0 06 00 00 */	stfs f0, 0x0(r6)
/* 814F7284 | D0 06 00 04 */	stfs f0, 0x4(r6)
/* 814F7288 | 90 86 00 08 */	stw r4, 0x8(r6)
/* 814F728C | 90 86 00 0C */	stw r4, 0xc(r6)
/* 814F7290 | 38 C6 00 10 */	addi r6, r6, 0x10
/* 814F7294 | 42 00 FF EC */	bdnz .L_814F7280
.L_814F7298:
/* 814F7298 | C0 02 8D C0 */	lfs f0, lbl_816951C0@sda21(r0)
/* 814F729C | 3C BF 00 01 */	addis r5, r31, 0x1
/* 814F72A0 | 38 00 00 00 */	li r0, 0x0
/* 814F72A4 | 7C A4 2B 78 */	mr r4, r5
/* 814F72A8 | D0 05 A2 9C */	stfs f0, -0x5d64(r5)
/* 814F72AC | 38 65 A2 CC */	subi r3, r5, 0x5d34
/* 814F72B0 | D0 05 A2 A0 */	stfs f0, -0x5d60(r5)
/* 814F72B4 | 90 05 A2 A4 */	stw r0, -0x5d5c(r5)
/* 814F72B8 | 90 05 A2 A8 */	stw r0, -0x5d58(r5)
/* 814F72BC | 38 A5 A2 AC */	subi r5, r5, 0x5d54
/* 814F72C0 | 7C 05 18 40 */	cmplw r5, r3
/* 814F72C4 | 40 80 01 7C */	bge .L_814F7440
/* 814F72C8 | 38 C4 A2 AC */	subi r6, r4, 0x5d54
/* 814F72CC | 38 84 A2 4C */	subi r4, r4, 0x5db4
/* 814F72D0 | 7C E6 18 50 */	subf r7, r6, r3
/* 814F72D4 | 39 07 00 0F */	addi r8, r7, 0xf
/* 814F72D8 | 7D 00 26 70 */	srawi r0, r8, 4
/* 814F72DC | 7D 20 01 94 */	addze r9, r0
/* 814F72E0 | 39 49 00 01 */	addi r10, r9, 0x1
/* 814F72E4 | 2C 0A 00 08 */	cmpwi r10, 0x8
/* 814F72E8 | 40 81 01 18 */	ble .L_814F7400
/* 814F72EC | 7C 06 18 40 */	cmplw r6, r3
/* 814F72F0 | 38 60 00 00 */	li r3, 0x0
/* 814F72F4 | 38 C0 00 00 */	li r6, 0x0
/* 814F72F8 | 41 81 00 28 */	bgt .L_814F7320
/* 814F72FC | 54 E0 00 01 */	clrrwi. r0, r7, 31
/* 814F7300 | 38 E0 00 01 */	li r7, 0x1
/* 814F7304 | 40 82 00 10 */	bne .L_814F7314
/* 814F7308 | 55 00 00 01 */	clrrwi. r0, r8, 31
/* 814F730C | 41 82 00 08 */	beq .L_814F7314
/* 814F7310 | 38 E0 00 00 */	li r7, 0x0
.L_814F7314:
/* 814F7314 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F7318 | 41 82 00 08 */	beq .L_814F7320
/* 814F731C | 38 C0 00 01 */	li r6, 0x1
.L_814F7320:
/* 814F7320 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F7324 | 41 82 00 2C */	beq .L_814F7350
/* 814F7328 | 55 27 00 01 */	clrrwi. r7, r9, 31
/* 814F732C | 38 C0 00 01 */	li r6, 0x1
/* 814F7330 | 40 82 00 14 */	bne .L_814F7344
/* 814F7334 | 55 40 00 00 */	clrrwi r0, r10, 31
/* 814F7338 | 7C 07 00 00 */	cmpw r7, r0
/* 814F733C | 41 82 00 08 */	beq .L_814F7344
/* 814F7340 | 38 C0 00 00 */	li r6, 0x0
.L_814F7344:
/* 814F7344 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F7348 | 41 82 00 08 */	beq .L_814F7350
/* 814F734C | 38 60 00 01 */	li r3, 0x1
.L_814F7350:
/* 814F7350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F7354 | 41 82 00 AC */	beq .L_814F7400
/* 814F7358 | 38 04 00 7F */	addi r0, r4, 0x7f
/* 814F735C | C0 02 8D C0 */	lfs f0, lbl_816951C0@sda21(r0)
/* 814F7360 | 7C 05 00 50 */	subf r0, r5, r0
/* 814F7364 | 38 60 00 00 */	li r3, 0x0
/* 814F7368 | 54 00 C9 FE */	srwi r0, r0, 7
/* 814F736C | 7C 09 03 A6 */	mtctr r0
/* 814F7370 | 7C 05 20 40 */	cmplw r5, r4
/* 814F7374 | 40 80 00 8C */	bge .L_814F7400
.L_814F7378:
/* 814F7378 | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814F737C | D0 05 00 04 */	stfs f0, 0x4(r5)
/* 814F7380 | 90 65 00 08 */	stw r3, 0x8(r5)
/* 814F7384 | 90 65 00 0C */	stw r3, 0xc(r5)
/* 814F7388 | D0 05 00 10 */	stfs f0, 0x10(r5)
/* 814F738C | D0 05 00 14 */	stfs f0, 0x14(r5)
/* 814F7390 | 90 65 00 18 */	stw r3, 0x18(r5)
/* 814F7394 | 90 65 00 1C */	stw r3, 0x1c(r5)
/* 814F7398 | D0 05 00 20 */	stfs f0, 0x20(r5)
/* 814F739C | D0 05 00 24 */	stfs f0, 0x24(r5)
/* 814F73A0 | 90 65 00 28 */	stw r3, 0x28(r5)
/* 814F73A4 | 90 65 00 2C */	stw r3, 0x2c(r5)
/* 814F73A8 | D0 05 00 30 */	stfs f0, 0x30(r5)
/* 814F73AC | D0 05 00 34 */	stfs f0, 0x34(r5)
/* 814F73B0 | 90 65 00 38 */	stw r3, 0x38(r5)
/* 814F73B4 | 90 65 00 3C */	stw r3, 0x3c(r5)
/* 814F73B8 | D0 05 00 40 */	stfs f0, 0x40(r5)
/* 814F73BC | D0 05 00 44 */	stfs f0, 0x44(r5)
/* 814F73C0 | 90 65 00 48 */	stw r3, 0x48(r5)
/* 814F73C4 | 90 65 00 4C */	stw r3, 0x4c(r5)
/* 814F73C8 | D0 05 00 50 */	stfs f0, 0x50(r5)
/* 814F73CC | D0 05 00 54 */	stfs f0, 0x54(r5)
/* 814F73D0 | 90 65 00 58 */	stw r3, 0x58(r5)
/* 814F73D4 | 90 65 00 5C */	stw r3, 0x5c(r5)
/* 814F73D8 | D0 05 00 60 */	stfs f0, 0x60(r5)
/* 814F73DC | D0 05 00 64 */	stfs f0, 0x64(r5)
/* 814F73E0 | 90 65 00 68 */	stw r3, 0x68(r5)
/* 814F73E4 | 90 65 00 6C */	stw r3, 0x6c(r5)
/* 814F73E8 | D0 05 00 70 */	stfs f0, 0x70(r5)
/* 814F73EC | D0 05 00 74 */	stfs f0, 0x74(r5)
/* 814F73F0 | 90 65 00 78 */	stw r3, 0x78(r5)
/* 814F73F4 | 90 65 00 7C */	stw r3, 0x7c(r5)
/* 814F73F8 | 38 A5 00 80 */	addi r5, r5, 0x80
/* 814F73FC | 42 00 FF 7C */	bdnz .L_814F7378
.L_814F7400:
/* 814F7400 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814F7404 | C0 02 8D C0 */	lfs f0, lbl_816951C0@sda21(r0)
/* 814F7408 | 38 63 A2 CC */	subi r3, r3, 0x5d34
/* 814F740C | 38 80 00 00 */	li r4, 0x0
/* 814F7410 | 38 03 00 0F */	addi r0, r3, 0xf
/* 814F7414 | 7C 05 00 50 */	subf r0, r5, r0
/* 814F7418 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814F741C | 7C 09 03 A6 */	mtctr r0
/* 814F7420 | 7C 05 18 40 */	cmplw r5, r3
/* 814F7424 | 40 80 00 1C */	bge .L_814F7440
.L_814F7428:
/* 814F7428 | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814F742C | D0 05 00 04 */	stfs f0, 0x4(r5)
/* 814F7430 | 90 85 00 08 */	stw r4, 0x8(r5)
/* 814F7434 | 90 85 00 0C */	stw r4, 0xc(r5)
/* 814F7438 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 814F743C | 42 00 FF EC */	bdnz .L_814F7428
.L_814F7440:
/* 814F7440 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814F7444 | 3C 80 81 4F */	lis r4, "__ct__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"@ha
/* 814F7448 | 3C A0 81 4F */	lis r5, "__dt__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"@ha
/* 814F744C | 38 C0 00 0C */	li r6, 0xc
/* 814F7450 | 38 84 75 54 */	addi r4, r4, "__ct__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"@l
/* 814F7454 | 38 E0 00 03 */	li r7, 0x3
/* 814F7458 | 38 A5 75 74 */	addi r5, r5, "__dt__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"@l
/* 814F745C | 38 63 A2 CC */	subi r3, r3, 0x5d34
/* 814F7460 | 48 10 1D A1 */	bl __construct_array
/* 814F7464 | C0 02 8D C4 */	lfs f0, lbl_816951C4@sda21(r0)
/* 814F7468 | 3C DF 00 01 */	addis r6, r31, 0x1
/* 814F746C | 38 00 00 00 */	li r0, 0x0
/* 814F7470 | 38 FF 00 10 */	addi r7, r31, 0x10
/* 814F7474 | D0 06 A2 34 */	stfs f0, -0x5dcc(r6)
/* 814F7478 | 3C A7 00 01 */	addis r5, r7, 0x1
/* 814F747C | 39 1F 00 04 */	addi r8, r31, 0x4
/* 814F7480 | 38 E7 00 10 */	addi r7, r7, 0x10
/* 814F7484 | D0 06 A2 38 */	stfs f0, -0x5dc8(r6)
/* 814F7488 | 3C 88 00 01 */	addis r4, r8, 0x1
/* 814F748C | 39 08 00 04 */	addi r8, r8, 0x4
/* 814F7490 | 7F E3 FB 78 */	mr r3, r31
/* 814F7494 | 90 06 A2 3C */	stw r0, -0x5dc4(r6)
/* 814F7498 | 90 06 A2 40 */	stw r0, -0x5dc0(r6)
/* 814F749C | D0 06 A2 44 */	stfs f0, -0x5dbc(r6)
/* 814F74A0 | D0 06 A2 48 */	stfs f0, -0x5db8(r6)
/* 814F74A4 | 90 06 A2 4C */	stw r0, -0x5db4(r6)
/* 814F74A8 | 90 06 A2 50 */	stw r0, -0x5db0(r6)
/* 814F74AC | D0 06 A2 54 */	stfs f0, -0x5dac(r6)
/* 814F74B0 | D0 06 A2 58 */	stfs f0, -0x5da8(r6)
/* 814F74B4 | 90 06 A2 5C */	stw r0, -0x5da4(r6)
/* 814F74B8 | 90 06 A2 60 */	stw r0, -0x5da0(r6)
/* 814F74BC | D0 06 A2 6C */	stfs f0, -0x5d94(r6)
/* 814F74C0 | D0 06 A2 70 */	stfs f0, -0x5d90(r6)
/* 814F74C4 | 90 06 A2 74 */	stw r0, -0x5d8c(r6)
/* 814F74C8 | 90 06 A2 78 */	stw r0, -0x5d88(r6)
/* 814F74CC | D0 06 A2 9C */	stfs f0, -0x5d64(r6)
/* 814F74D0 | D0 06 A2 A0 */	stfs f0, -0x5d60(r6)
/* 814F74D4 | 90 06 A2 A4 */	stw r0, -0x5d5c(r6)
/* 814F74D8 | 90 06 A2 A8 */	stw r0, -0x5d58(r6)
/* 814F74DC | 90 06 A2 F0 */	stw r0, -0x5d10(r6)
/* 814F74E0 | 90 06 A2 FC */	stw r0, -0x5d04(r6)
/* 814F74E4 | D0 05 A2 6C */	stfs f0, -0x5d94(r5)
/* 814F74E8 | D0 05 A2 70 */	stfs f0, -0x5d90(r5)
/* 814F74EC | 90 05 A2 74 */	stw r0, -0x5d8c(r5)
/* 814F74F0 | 90 05 A2 78 */	stw r0, -0x5d88(r5)
/* 814F74F4 | D0 05 A2 9C */	stfs f0, -0x5d64(r5)
/* 814F74F8 | D0 05 A2 A0 */	stfs f0, -0x5d60(r5)
/* 814F74FC | 90 05 A2 A4 */	stw r0, -0x5d5c(r5)
/* 814F7500 | 90 05 A2 A8 */	stw r0, -0x5d58(r5)
/* 814F7504 | 3C A7 00 01 */	addis r5, r7, 0x1
/* 814F7508 | 90 04 A2 F0 */	stw r0, -0x5d10(r4)
/* 814F750C | 90 04 A2 FC */	stw r0, -0x5d04(r4)
/* 814F7510 | 3C 88 00 01 */	addis r4, r8, 0x1
/* 814F7514 | D0 05 A2 6C */	stfs f0, -0x5d94(r5)
/* 814F7518 | D0 05 A2 70 */	stfs f0, -0x5d90(r5)
/* 814F751C | 90 05 A2 74 */	stw r0, -0x5d8c(r5)
/* 814F7520 | 90 05 A2 78 */	stw r0, -0x5d88(r5)
/* 814F7524 | D0 05 A2 9C */	stfs f0, -0x5d64(r5)
/* 814F7528 | D0 05 A2 A0 */	stfs f0, -0x5d60(r5)
/* 814F752C | 90 05 A2 A4 */	stw r0, -0x5d5c(r5)
/* 814F7530 | 90 05 A2 A8 */	stw r0, -0x5d58(r5)
/* 814F7534 | 90 04 A2 F0 */	stw r0, -0x5d10(r4)
/* 814F7538 | 90 04 A2 FC */	stw r0, -0x5d04(r4)
/* 814F753C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F7540 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814F7544 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F7548 | 7C 08 03 A6 */	mtlr r0
/* 814F754C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F7550 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail9AxManagerFv

# .text:0x530 | 0x814F7554 | size: 0x20
# nw4r::ut::LinkList<nw4r::snd::FxBase, 4>::LinkList()
.fn "__ct__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv", global
/* 814F7554 | 38 00 00 00 */	li r0, 0x0
/* 814F7558 | 38 83 00 04 */	addi r4, r3, 0x4
/* 814F755C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814F7560 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814F7564 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814F7568 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814F756C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 814F7570 | 4E 80 00 20 */	blr
.endfn "__ct__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"

# .text:0x550 | 0x814F7574 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::FxBase, 4>::~LinkList()
.fn "__dt__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv", global
/* 814F7574 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F7578 | 7C 08 02 A6 */	mflr r0
/* 814F757C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F7580 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7584 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F7588 | 7C 9F 23 78 */	mr r31, r4
/* 814F758C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814F7590 | 7C 7E 1B 78 */	mr r30, r3
/* 814F7594 | 41 82 00 1C */	beq .L_814F75B0
/* 814F7598 | 38 80 00 00 */	li r4, 0x0
/* 814F759C | 48 01 AD C9 */	bl fn_81512364
/* 814F75A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814F75A4 | 40 81 00 0C */	ble .L_814F75B0
/* 814F75A8 | 7F C3 F3 78 */	mr r3, r30
/* 814F75AC | 48 10 0B 39 */	bl __dl__FPv
.L_814F75B0:
/* 814F75B0 | 7F C3 F3 78 */	mr r3, r30
/* 814F75B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F75B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814F75BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F75C0 | 7C 08 03 A6 */	mtlr r0
/* 814F75C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F75C8 | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"

# .text:0x5A8 | 0x814F75CC | size: 0x64
# nw4r::snd::detail::AxManager::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F75CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F75D0 | 7C 08 02 A6 */	mflr r0
/* 814F75D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F75D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F75DC | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F75E0 | 7C 00 07 75 */	extsb. r0, r0
/* 814F75E4 | 40 82 00 30 */	bne .L_814F7614
/* 814F75E8 | 3F E0 81 0F */	lis r31, instance$1758@ha
/* 814F75EC | 38 7F 61 4C */	addi r3, r31, instance$1758@l
/* 814F75F0 | 4B FF FA 35 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F75F4 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F75F8 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F75FC | 38 7F 61 4C */	addi r3, r31, instance$1758@l
/* 814F7600 | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F7604 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F7608 | 48 10 19 D9 */	bl __register_global_object
/* 814F760C | 38 00 00 01 */	li r0, 0x1
/* 814F7610 | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F7614:
/* 814F7614 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F7618 | 3C 60 81 0F */	lis r3, instance$1758@ha
/* 814F761C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F7620 | 38 63 61 4C */	addi r3, r3, instance$1758@l
/* 814F7624 | 7C 08 03 A6 */	mtlr r0
/* 814F7628 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F762C | 4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail9AxManagerFv

# .text:0x60C | 0x814F7630 | size: 0xB4
# nw4r::snd::detail::AxManager::~AxManager()
.fn __dt__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F7630 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F7634 | 7C 08 02 A6 */	mflr r0
/* 814F7638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F763C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F7644 | 7C 9F 23 78 */	mr r31, r4
/* 814F7648 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814F764C | 7C 7E 1B 78 */	mr r30, r3
/* 814F7650 | 41 82 00 78 */	beq .L_814F76C8
/* 814F7654 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814F7658 | 3C 80 81 4F */	lis r4, "__dt__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"@ha
/* 814F765C | 38 84 75 74 */	addi r4, r4, "__dt__Q34nw4r2ut30LinkList<Q34nw4r3snd6FxBase,4>Fv"@l
/* 814F7660 | 38 A0 00 0C */	li r5, 0xc
/* 814F7664 | 38 C0 00 03 */	li r6, 0x3
/* 814F7668 | 38 63 A2 CC */	subi r3, r3, 0x5d34
/* 814F766C | 48 10 1C 8D */	bl __destroy_arr
/* 814F7670 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail7AxVoiceFv@ha
/* 814F7674 | 38 7E 00 2C */	addi r3, r30, 0x2c
/* 814F7678 | 38 84 89 64 */	addi r4, r4, __dt__Q44nw4r3snd6detail7AxVoiceFv@l
/* 814F767C | 38 A0 01 B0 */	li r5, 0x1b0
/* 814F7680 | 38 C0 00 60 */	li r6, 0x60
/* 814F7684 | 48 10 1C 75 */	bl __destroy_arr
/* 814F7688 | 34 7E 00 20 */	addic. r3, r30, 0x20
/* 814F768C | 41 82 00 0C */	beq .L_814F7698
/* 814F7690 | 38 80 00 00 */	li r4, 0x0
/* 814F7694 | 48 01 AC D1 */	bl fn_81512364
.L_814F7698:
/* 814F7698 | 34 7E 00 14 */	addic. r3, r30, 0x14
/* 814F769C | 41 82 00 0C */	beq .L_814F76A8
/* 814F76A0 | 38 80 00 00 */	li r4, 0x0
/* 814F76A4 | 48 01 AC C1 */	bl fn_81512364
.L_814F76A8:
/* 814F76A8 | 34 7E 00 08 */	addic. r3, r30, 0x8
/* 814F76AC | 41 82 00 0C */	beq .L_814F76B8
/* 814F76B0 | 38 80 00 00 */	li r4, 0x0
/* 814F76B4 | 48 01 AC B1 */	bl fn_81512364
.L_814F76B8:
/* 814F76B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814F76BC | 40 81 00 0C */	ble .L_814F76C8
/* 814F76C0 | 7F C3 F3 78 */	mr r3, r30
/* 814F76C4 | 48 10 0A 21 */	bl __dl__FPv
.L_814F76C8:
/* 814F76C8 | 7F C3 F3 78 */	mr r3, r30
/* 814F76CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F76D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814F76D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F76D8 | 7C 08 03 A6 */	mtlr r0
/* 814F76DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F76E0 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9AxManagerFv

# .text:0x6C0 | 0x814F76E4 | size: 0xFC
# nw4r::snd::detail::AxManager::Init()
.fn Init__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F76E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F76E8 | 7C 08 02 A6 */	mflr r0
/* 814F76EC | 3C 83 00 01 */	addis r4, r3, 0x1
/* 814F76F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F76F4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F76F8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F76FC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F7700 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814F7704 | 7C 7C 1B 78 */	mr r28, r3
/* 814F7708 | 88 04 A2 30 */	lbz r0, -0x5dd0(r4)
/* 814F770C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F7710 | 40 82 00 B0 */	bne .L_814F77C0
/* 814F7714 | 3B C3 00 24 */	addi r30, r3, 0x24
/* 814F7718 | 3B A0 00 00 */	li r29, 0x0
/* 814F771C | 3B E0 00 00 */	li r31, 0x0
.L_814F7720:
/* 814F7720 | 7C 7C FA 14 */	add r3, r28, r31
/* 814F7724 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814F7728 | 38 A3 01 D4 */	addi r5, r3, 0x1d4
/* 814F772C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814F7730 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 814F7734 | 48 01 AD 41 */	bl fn_81512474
/* 814F7738 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F773C | 3B FF 01 B0 */	addi r31, r31, 0x1b0
/* 814F7740 | 2C 1D 00 60 */	cmpwi r29, 0x60
/* 814F7744 | 41 80 FF DC */	blt .L_814F7720
/* 814F7748 | 3F E0 81 0F */	lis r31, sZeroBuffer__Q44nw4r3snd6detail9AxManager@ha
/* 814F774C | 38 80 00 00 */	li r4, 0x0
/* 814F7750 | 38 7F 60 40 */	addi r3, r31, sZeroBuffer__Q44nw4r3snd6detail9AxManager@l
/* 814F7754 | 38 A0 01 00 */	li r5, 0x100
/* 814F7758 | 4B E3 8B DD */	bl memset
/* 814F775C | 38 7F 60 40 */	addi r3, r31, sZeroBuffer__Q44nw4r3snd6detail9AxManager@l
/* 814F7760 | 38 80 01 00 */	li r4, 0x100
/* 814F7764 | 48 03 61 D1 */	bl DCFlushRange
/* 814F7768 | 38 1F 60 40 */	addi r0, r31, sZeroBuffer__Q44nw4r3snd6detail9AxManager@l
/* 814F776C | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 814F7770 | 48 03 91 15 */	bl OSDisableInterrupts
/* 814F7774 | 7C 7F 1B 78 */	mr r31, r3
/* 814F7778 | 38 60 00 00 */	li r3, 0x0
/* 814F777C | 38 80 00 00 */	li r4, 0x0
/* 814F7780 | 48 05 B4 AD */	bl fn_81552C2C
/* 814F7784 | 38 60 00 00 */	li r3, 0x0
/* 814F7788 | 38 80 00 00 */	li r4, 0x0
/* 814F778C | 48 05 B5 05 */	bl fn_81552C90
/* 814F7790 | 38 60 00 00 */	li r3, 0x0
/* 814F7794 | 38 80 00 00 */	li r4, 0x0
/* 814F7798 | 48 05 B5 5D */	bl fn_81552CF4
/* 814F779C | 3C 60 81 50 */	lis r3, AxCallbackFunc__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F77A0 | 38 63 82 C0 */	addi r3, r3, AxCallbackFunc__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F77A4 | 48 05 C6 A9 */	bl fn_81553E4C
/* 814F77A8 | 3C 9C 00 01 */	addis r4, r28, 0x1
/* 814F77AC | 38 00 00 01 */	li r0, 0x1
/* 814F77B0 | 90 64 A2 2C */	stw r3, -0x5dd4(r4)
/* 814F77B4 | 7F E3 FB 78 */	mr r3, r31
/* 814F77B8 | 98 04 A2 30 */	stb r0, -0x5dd0(r4)
/* 814F77BC | 48 03 90 F1 */	bl OSRestoreInterrupts
.L_814F77C0:
/* 814F77C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F77C4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F77C8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F77CC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F77D0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814F77D4 | 7C 08 03 A6 */	mtlr r0
/* 814F77D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F77DC | 4E 80 00 20 */	blr
.endfn Init__Q44nw4r3snd6detail9AxManagerFv

# .text:0x7BC | 0x814F77E0 | size: 0x128
# nw4r::snd::detail::AxManager::GetOutputVolume() const
.fn GetOutputVolume__Q44nw4r3snd6detail9AxManagerCFv, global
/* 814F77E0 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 814F77E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F77E8 | 80 C5 A2 4C */	lwz r6, -0x5db4(r5)
/* 814F77EC | 3C 00 43 30 */	lis r0, 0x4330
/* 814F77F0 | 80 85 A2 50 */	lwz r4, -0x5db0(r5)
/* 814F77F4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F77F8 | 7C 04 30 00 */	cmpw r4, r6
/* 814F77FC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F7800 | 41 80 00 0C */	blt .L_814F780C
/* 814F7804 | C0 A5 A2 48 */	lfs f5, -0x5db8(r5)
/* 814F7808 | 48 00 00 40 */	b .L_814F7848
.L_814F780C:
/* 814F780C | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 814F7810 | 6C C0 80 00 */	xoris r0, r6, 0x8000
/* 814F7814 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814F7818 | C8 82 8D C8 */	lfd f4, lbl_816951C8@sda21(r0)
/* 814F781C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814F7820 | C0 25 A2 48 */	lfs f1, -0x5db8(r5)
/* 814F7824 | C0 45 A2 44 */	lfs f2, -0x5dbc(r5)
/* 814F7828 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814F782C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7830 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814F7834 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814F7838 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814F783C | EC 23 00 72 */	fmuls f1, f3, f1
/* 814F7840 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814F7844 | EC A2 00 2A */	fadds f5, f2, f0
.L_814F7848:
/* 814F7848 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 814F784C | 80 C5 A2 5C */	lwz r6, -0x5da4(r5)
/* 814F7850 | 80 05 A2 60 */	lwz r0, -0x5da0(r5)
/* 814F7854 | 7C 00 30 00 */	cmpw r0, r6
/* 814F7858 | 41 80 00 0C */	blt .L_814F7864
/* 814F785C | C0 05 A2 58 */	lfs f0, -0x5da8(r5)
/* 814F7860 | 48 00 00 40 */	b .L_814F78A0
.L_814F7864:
/* 814F7864 | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 814F7868 | 6C C0 80 00 */	xoris r0, r6, 0x8000
/* 814F786C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814F7870 | C8 82 8D C8 */	lfd f4, lbl_816951C8@sda21(r0)
/* 814F7874 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814F7878 | C0 25 A2 58 */	lfs f1, -0x5da8(r5)
/* 814F787C | C0 45 A2 54 */	lfs f2, -0x5dac(r5)
/* 814F7880 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814F7884 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7888 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814F788C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814F7890 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814F7894 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814F7898 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814F789C | EC 02 00 2A */	fadds f0, f2, f0
.L_814F78A0:
/* 814F78A0 | 3C 83 00 01 */	addis r4, r3, 0x1
/* 814F78A4 | EC 25 00 32 */	fmuls f1, f5, f0
/* 814F78A8 | 80 A4 A2 3C */	lwz r5, -0x5dc4(r4)
/* 814F78AC | 80 04 A2 40 */	lwz r0, -0x5dc0(r4)
/* 814F78B0 | 7C 00 28 00 */	cmpw r0, r5
/* 814F78B4 | 41 80 00 0C */	blt .L_814F78C0
/* 814F78B8 | C0 04 A2 38 */	lfs f0, -0x5dc8(r4)
/* 814F78BC | 48 00 00 40 */	b .L_814F78FC
.L_814F78C0:
/* 814F78C0 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 814F78C4 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814F78C8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814F78CC | C8 A2 8D C8 */	lfd f5, lbl_816951C8@sda21(r0)
/* 814F78D0 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814F78D4 | C0 44 A2 38 */	lfs f2, -0x5dc8(r4)
/* 814F78D8 | C0 64 A2 34 */	lfs f3, -0x5dcc(r4)
/* 814F78DC | EC 80 28 28 */	fsubs f4, f0, f5
/* 814F78E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F78E4 | EC 42 18 28 */	fsubs f2, f2, f3
/* 814F78E8 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814F78EC | EC 00 28 28 */	fsubs f0, f0, f5
/* 814F78F0 | EC 44 00 B2 */	fmuls f2, f4, f2
/* 814F78F4 | EC 02 00 24 */	fdivs f0, f2, f0
/* 814F78F8 | EC 03 00 2A */	fadds f0, f3, f0
.L_814F78FC:
/* 814F78FC | EC 21 00 32 */	fmuls f1, f1, f0
/* 814F7900 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F7904 | 4E 80 00 20 */	blr
.endfn GetOutputVolume__Q44nw4r3snd6detail9AxManagerCFv

# .text:0x8E4 | 0x814F7908 | size: 0x1C0
# nw4r::snd::detail::AxManager::Update()
.fn Update__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F7908 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F790C | 7C 08 02 A6 */	mflr r0
/* 814F7910 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7914 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F7918 | 7C 7F 1B 78 */	mr r31, r3
/* 814F791C | 48 05 64 0D */	bl fn_8154DD28
/* 814F7920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F7924 | 40 82 00 5C */	bne .L_814F7980
/* 814F7928 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814F792C | 88 03 A2 33 */	lbz r0, -0x5dcd(r3)
/* 814F7930 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F7934 | 41 82 00 A8 */	beq .L_814F79DC
/* 814F7938 | 38 00 00 00 */	li r0, 0x0
/* 814F793C | 98 03 A2 33 */	stb r0, -0x5dcd(r3)
/* 814F7940 | 48 03 8F 45 */	bl OSDisableInterrupts
/* 814F7944 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814F7948 | 38 1F 00 18 */	addi r0, r31, 0x18
/* 814F794C | 48 00 00 24 */	b .L_814F7970
.L_814F7950:
/* 814F7950 | 7C 86 23 78 */	mr r6, r4
/* 814F7954 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814F7958 | 88 A6 FF 74 */	lbz r5, -0x8c(r6)
/* 814F795C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F7960 | 41 82 00 10 */	beq .L_814F7970
/* 814F7964 | 88 A6 FF 7B */	lbz r5, -0x85(r6)
/* 814F7968 | 60 A5 00 02 */	ori r5, r5, 0x2
/* 814F796C | 98 A6 FF 7B */	stb r5, -0x85(r6)
.L_814F7970:
/* 814F7970 | 7C 04 00 40 */	cmplw r4, r0
/* 814F7974 | 40 82 FF DC */	bne .L_814F7950
/* 814F7978 | 48 03 8F 35 */	bl OSRestoreInterrupts
/* 814F797C | 48 00 00 60 */	b .L_814F79DC
.L_814F7980:
/* 814F7980 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814F7984 | 41 82 00 58 */	beq .L_814F79DC
/* 814F7988 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814F798C | 88 03 A2 33 */	lbz r0, -0x5dcd(r3)
/* 814F7990 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F7994 | 40 82 00 48 */	bne .L_814F79DC
/* 814F7998 | 38 00 00 01 */	li r0, 0x1
/* 814F799C | 98 03 A2 33 */	stb r0, -0x5dcd(r3)
/* 814F79A0 | 48 03 8E E5 */	bl OSDisableInterrupts
/* 814F79A4 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814F79A8 | 38 1F 00 18 */	addi r0, r31, 0x18
/* 814F79AC | 48 00 00 24 */	b .L_814F79D0
.L_814F79B0:
/* 814F79B0 | 7C 86 23 78 */	mr r6, r4
/* 814F79B4 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814F79B8 | 88 A6 FF 74 */	lbz r5, -0x8c(r6)
/* 814F79BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F79C0 | 41 82 00 10 */	beq .L_814F79D0
/* 814F79C4 | 88 A6 FF 7B */	lbz r5, -0x85(r6)
/* 814F79C8 | 60 A5 00 02 */	ori r5, r5, 0x2
/* 814F79CC | 98 A6 FF 7B */	stb r5, -0x85(r6)
.L_814F79D0:
/* 814F79D0 | 7C 04 00 40 */	cmplw r4, r0
/* 814F79D4 | 40 82 FF DC */	bne .L_814F79B0
/* 814F79D8 | 48 03 8E D5 */	bl OSRestoreInterrupts
.L_814F79DC:
/* 814F79DC | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814F79E0 | 38 A0 00 00 */	li r5, 0x0
/* 814F79E4 | 80 64 A2 50 */	lwz r3, -0x5db0(r4)
/* 814F79E8 | 80 04 A2 4C */	lwz r0, -0x5db4(r4)
/* 814F79EC | 7C 03 00 00 */	cmpw r3, r0
/* 814F79F0 | 40 80 00 20 */	bge .L_814F7A10
/* 814F79F4 | 80 64 A2 50 */	lwz r3, -0x5db0(r4)
/* 814F79F8 | 80 04 A2 4C */	lwz r0, -0x5db4(r4)
/* 814F79FC | 7C 03 00 00 */	cmpw r3, r0
/* 814F7A00 | 40 80 00 0C */	bge .L_814F7A0C
/* 814F7A04 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814F7A08 | 90 04 A2 50 */	stw r0, -0x5db0(r4)
.L_814F7A0C:
/* 814F7A0C | 38 A0 00 01 */	li r5, 0x1
.L_814F7A10:
/* 814F7A10 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814F7A14 | 80 64 A2 60 */	lwz r3, -0x5da0(r4)
/* 814F7A18 | 80 04 A2 5C */	lwz r0, -0x5da4(r4)
/* 814F7A1C | 7C 03 00 00 */	cmpw r3, r0
/* 814F7A20 | 40 80 00 20 */	bge .L_814F7A40
/* 814F7A24 | 80 64 A2 60 */	lwz r3, -0x5da0(r4)
/* 814F7A28 | 80 04 A2 5C */	lwz r0, -0x5da4(r4)
/* 814F7A2C | 7C 03 00 00 */	cmpw r3, r0
/* 814F7A30 | 40 80 00 0C */	bge .L_814F7A3C
/* 814F7A34 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814F7A38 | 90 04 A2 60 */	stw r0, -0x5da0(r4)
.L_814F7A3C:
/* 814F7A3C | 38 A0 00 01 */	li r5, 0x1
.L_814F7A40:
/* 814F7A40 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814F7A44 | 80 64 A2 40 */	lwz r3, -0x5dc0(r4)
/* 814F7A48 | 80 04 A2 3C */	lwz r0, -0x5dc4(r4)
/* 814F7A4C | 7C 03 00 00 */	cmpw r3, r0
/* 814F7A50 | 40 80 00 20 */	bge .L_814F7A70
/* 814F7A54 | 80 64 A2 40 */	lwz r3, -0x5dc0(r4)
/* 814F7A58 | 80 04 A2 3C */	lwz r0, -0x5dc4(r4)
/* 814F7A5C | 7C 03 00 00 */	cmpw r3, r0
/* 814F7A60 | 40 80 00 0C */	bge .L_814F7A6C
/* 814F7A64 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814F7A68 | 90 04 A2 40 */	stw r0, -0x5dc0(r4)
.L_814F7A6C:
/* 814F7A6C | 38 A0 00 01 */	li r5, 0x1
.L_814F7A70:
/* 814F7A70 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F7A74 | 41 82 00 40 */	beq .L_814F7AB4
/* 814F7A78 | 48 03 8E 0D */	bl OSDisableInterrupts
/* 814F7A7C | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814F7A80 | 38 1F 00 18 */	addi r0, r31, 0x18
/* 814F7A84 | 48 00 00 24 */	b .L_814F7AA8
.L_814F7A88:
/* 814F7A88 | 7C 86 23 78 */	mr r6, r4
/* 814F7A8C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814F7A90 | 88 A6 FF 74 */	lbz r5, -0x8c(r6)
/* 814F7A94 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F7A98 | 41 82 00 10 */	beq .L_814F7AA8
/* 814F7A9C | 88 A6 FF 7B */	lbz r5, -0x85(r6)
/* 814F7AA0 | 60 A5 00 10 */	ori r5, r5, 0x10
/* 814F7AA4 | 98 A6 FF 7B */	stb r5, -0x85(r6)
.L_814F7AA8:
/* 814F7AA8 | 7C 04 00 40 */	cmplw r4, r0
/* 814F7AAC | 40 82 FF DC */	bne .L_814F7A88
/* 814F7AB0 | 48 03 8D FD */	bl OSRestoreInterrupts
.L_814F7AB4:
/* 814F7AB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F7AB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F7ABC | 7C 08 03 A6 */	mtlr r0
/* 814F7AC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F7AC4 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail9AxManagerFv

# .text:0xAA4 | 0x814F7AC8 | size: 0x8
# nw4r::snd::detail::AxManager::GetZeroBufferAddress()
.fn GetZeroBufferAddress__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F7AC8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814F7ACC | 4E 80 00 20 */	blr
.endfn GetZeroBufferAddress__Q44nw4r3snd6detail9AxManagerFv

# .text:0xAAC | 0x814F7AD0 | size: 0x6C
# nw4r::snd::detail::AxManager::RegisterCallback(nw4r::snd::detail::AxManager::CallbackListNode*, void (*)(void))
.fn RegisterCallback__Q44nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detail9AxManager16CallbackListNodePFv_v, global
/* 814F7AD0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F7AD4 | 7C 08 02 A6 */	mflr r0
/* 814F7AD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F7ADC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F7AE0 | 7C BF 2B 78 */	mr r31, r5
/* 814F7AE4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F7AE8 | 7C 9E 23 78 */	mr r30, r4
/* 814F7AEC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F7AF0 | 7C 7D 1B 78 */	mr r29, r3
/* 814F7AF4 | 48 03 8D 91 */	bl OSDisableInterrupts
/* 814F7AF8 | 93 FE 00 08 */	stw r31, 0x8(r30)
/* 814F7AFC | 38 1D 00 0C */	addi r0, r29, 0xc
/* 814F7B00 | 7C 7F 1B 78 */	mr r31, r3
/* 814F7B04 | 7F C5 F3 78 */	mr r5, r30
/* 814F7B08 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F7B0C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 814F7B10 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814F7B14 | 48 01 A9 61 */	bl fn_81512474
/* 814F7B18 | 7F E3 FB 78 */	mr r3, r31
/* 814F7B1C | 48 03 8D 91 */	bl OSRestoreInterrupts
/* 814F7B20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F7B24 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F7B28 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F7B2C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F7B30 | 7C 08 03 A6 */	mtlr r0
/* 814F7B34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F7B38 | 4E 80 00 20 */	blr
.endfn RegisterCallback__Q44nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detail9AxManager16CallbackListNodePFv_v

# .text:0xB18 | 0x814F7B3C | size: 0x58
# nw4r::snd::detail::AxManager::UnregisterCallback(nw4r::snd::detail::AxManager::CallbackListNode*)
.fn UnregisterCallback__Q44nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detail9AxManager16CallbackListNode, global
/* 814F7B3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F7B40 | 7C 08 02 A6 */	mflr r0
/* 814F7B44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F7B48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F7B4C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F7B50 | 7C 9E 23 78 */	mr r30, r4
/* 814F7B54 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F7B58 | 7C 7D 1B 78 */	mr r29, r3
/* 814F7B5C | 48 03 8D 29 */	bl OSDisableInterrupts
/* 814F7B60 | 7C 7F 1B 78 */	mr r31, r3
/* 814F7B64 | 7F C4 F3 78 */	mr r4, r30
/* 814F7B68 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 814F7B6C | 48 01 A9 35 */	bl fn_815124A0
/* 814F7B70 | 7F E3 FB 78 */	mr r3, r31
/* 814F7B74 | 48 03 8D 39 */	bl OSRestoreInterrupts
/* 814F7B78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F7B7C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F7B80 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F7B84 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F7B88 | 7C 08 03 A6 */	mtlr r0
/* 814F7B8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F7B90 | 4E 80 00 20 */	blr
.endfn UnregisterCallback__Q44nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detail9AxManager16CallbackListNode

# .text:0xB70 | 0x814F7B94 | size: 0xC8
# nw4r::snd::detail::AxManager::SetOutputMode(nw4r::snd::OutputMode)
.fn SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode, global
/* 814F7B94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F7B98 | 7C 08 02 A6 */	mflr r0
/* 814F7B9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F7BA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F7BA4 | 7C 7F 1B 78 */	mr r31, r3
/* 814F7BA8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814F7BAC | 7C 00 20 00 */	cmpw r0, r4
/* 814F7BB0 | 41 82 00 98 */	beq .L_814F7C48
/* 814F7BB4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 814F7BB8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814F7BBC | 41 82 00 3C */	beq .L_814F7BF8
/* 814F7BC0 | 40 80 00 14 */	bge .L_814F7BD4
/* 814F7BC4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F7BC8 | 41 82 00 18 */	beq .L_814F7BE0
/* 814F7BCC | 40 80 00 20 */	bge .L_814F7BEC
/* 814F7BD0 | 48 00 00 3C */	b .L_814F7C0C
.L_814F7BD4:
/* 814F7BD4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814F7BD8 | 40 80 00 34 */	bge .L_814F7C0C
/* 814F7BDC | 48 00 00 28 */	b .L_814F7C04
.L_814F7BE0:
/* 814F7BE0 | 38 60 00 00 */	li r3, 0x0
/* 814F7BE4 | 48 05 BB BD */	bl fn_815537A0
/* 814F7BE8 | 48 00 00 24 */	b .L_814F7C0C
.L_814F7BEC:
/* 814F7BEC | 38 60 00 01 */	li r3, 0x1
/* 814F7BF0 | 48 05 BB B1 */	bl fn_815537A0
/* 814F7BF4 | 48 00 00 18 */	b .L_814F7C0C
.L_814F7BF8:
/* 814F7BF8 | 38 60 00 02 */	li r3, 0x2
/* 814F7BFC | 48 05 BB A5 */	bl fn_815537A0
/* 814F7C00 | 48 00 00 0C */	b .L_814F7C0C
.L_814F7C04:
/* 814F7C04 | 38 60 00 00 */	li r3, 0x0
/* 814F7C08 | 48 05 BB 99 */	bl fn_815537A0
.L_814F7C0C:
/* 814F7C0C | 48 03 8C 79 */	bl OSDisableInterrupts
/* 814F7C10 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814F7C14 | 38 1F 00 18 */	addi r0, r31, 0x18
/* 814F7C18 | 48 00 00 24 */	b .L_814F7C3C
.L_814F7C1C:
/* 814F7C1C | 7C 86 23 78 */	mr r6, r4
/* 814F7C20 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814F7C24 | 88 A6 FF 74 */	lbz r5, -0x8c(r6)
/* 814F7C28 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F7C2C | 41 82 00 10 */	beq .L_814F7C3C
/* 814F7C30 | 88 A6 FF 7B */	lbz r5, -0x85(r6)
/* 814F7C34 | 60 A5 00 20 */	ori r5, r5, 0x20
/* 814F7C38 | 98 A6 FF 7B */	stb r5, -0x85(r6)
.L_814F7C3C:
/* 814F7C3C | 7C 04 00 40 */	cmplw r4, r0
/* 814F7C40 | 40 82 FF DC */	bne .L_814F7C1C
/* 814F7C44 | 48 03 8C 69 */	bl OSRestoreInterrupts
.L_814F7C48:
/* 814F7C48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F7C4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F7C50 | 7C 08 03 A6 */	mtlr r0
/* 814F7C54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F7C58 | 4E 80 00 20 */	blr
.endfn SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode

# .text:0xC38 | 0x814F7C5C | size: 0x8
# nw4r::snd::detail::AxManager::GetOutputMode()
.fn GetOutputMode__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F7C5C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814F7C60 | 4E 80 00 20 */	blr
.endfn GetOutputMode__Q44nw4r3snd6detail9AxManagerFv

# .text:0xC40 | 0x814F7C64 | size: 0x204
# nw4r::snd::detail::AxManager::AllocVoice(int, int, int, void (*)(nw4r::snd::detail::AxVoice*, nw4r::snd::detail::AxVoice::CallbackStatus, void*), void*)
.fn AllocVoice__Q44nw4r3snd6detail9AxManagerFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv, global
/* 814F7C64 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F7C68 | 7C 08 02 A6 */	mflr r0
/* 814F7C6C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814F7C70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814F7C74 | 48 10 18 3D */	bl _savegpr_23
/* 814F7C78 | 7C 7E 1B 78 */	mr r30, r3
/* 814F7C7C | 7C 9F 23 78 */	mr r31, r4
/* 814F7C80 | 7C BB 2B 78 */	mr r27, r5
/* 814F7C84 | 7C D9 33 78 */	mr r25, r6
/* 814F7C88 | 7C F8 3B 78 */	mr r24, r7
/* 814F7C8C | 7D 17 43 78 */	mr r23, r8
/* 814F7C90 | 48 03 8B F5 */	bl OSDisableInterrupts
/* 814F7C94 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814F7C98 | 7C 7D 1B 78 */	mr r29, r3
/* 814F7C9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F7CA0 | 40 82 00 7C */	bne .L_814F7D1C
/* 814F7CA4 | 3B 80 00 00 */	li r28, 0x0
/* 814F7CA8 | 40 82 00 5C */	bne .L_814F7D04
/* 814F7CAC | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 814F7CB0 | 80 03 FF 7C */	lwz r0, -0x84(r3)
/* 814F7CB4 | 3B 43 FE 58 */	subi r26, r3, 0x1a8
/* 814F7CB8 | 7C 00 C8 00 */	cmpw r0, r25
/* 814F7CBC | 40 81 00 0C */	ble .L_814F7CC8
/* 814F7CC0 | 3B 80 00 00 */	li r28, 0x0
/* 814F7CC4 | 48 00 00 40 */	b .L_814F7D04
.L_814F7CC8:
/* 814F7CC8 | 80 9A 01 04 */	lwz r4, 0x104(r26)
/* 814F7CCC | 7F 43 D3 78 */	mr r3, r26
/* 814F7CD0 | 80 1A 01 08 */	lwz r0, 0x108(r26)
/* 814F7CD4 | 7F 84 01 D6 */	mullw r28, r4, r0
/* 814F7CD8 | 48 00 17 DD */	bl Stop__Q44nw4r3snd6detail7AxVoiceFv
/* 814F7CDC | 7F 43 D3 78 */	mr r3, r26
/* 814F7CE0 | 48 00 13 7D */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
/* 814F7CE4 | 81 9A 01 0C */	lwz r12, 0x10c(r26)
/* 814F7CE8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F7CEC | 41 82 00 18 */	beq .L_814F7D04
/* 814F7CF0 | 7F 43 D3 78 */	mr r3, r26
/* 814F7CF4 | 80 BA 01 10 */	lwz r5, 0x110(r26)
/* 814F7CF8 | 38 80 00 02 */	li r4, 0x2
/* 814F7CFC | 7D 89 03 A6 */	mtctr r12
/* 814F7D00 | 4E 80 04 21 */	bctrl
.L_814F7D04:
/* 814F7D04 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F7D08 | 40 82 00 14 */	bne .L_814F7D1C
/* 814F7D0C | 7F A3 EB 78 */	mr r3, r29
/* 814F7D10 | 48 03 8B 9D */	bl OSRestoreInterrupts
/* 814F7D14 | 38 60 00 00 */	li r3, 0x0
/* 814F7D18 | 48 00 01 38 */	b .L_814F7E50
.L_814F7D1C:
/* 814F7D1C | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 814F7D20 | 7F E4 FB 78 */	mr r4, r31
/* 814F7D24 | 7F 65 DB 78 */	mr r5, r27
/* 814F7D28 | 7F 26 CB 78 */	mr r6, r25
/* 814F7D2C | 3B E3 FE 58 */	subi r31, r3, 0x1a8
/* 814F7D30 | 7F 07 C3 78 */	mr r7, r24
/* 814F7D34 | 7F E3 FB 78 */	mr r3, r31
/* 814F7D38 | 7E E8 BB 78 */	mr r8, r23
/* 814F7D3C | 48 00 10 ED */	bl Acquire__Q44nw4r3snd6detail7AxVoiceFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv
/* 814F7D40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F7D44 | 40 82 00 14 */	bne .L_814F7D58
/* 814F7D48 | 7F A3 EB 78 */	mr r3, r29
/* 814F7D4C | 48 03 8B 61 */	bl OSRestoreInterrupts
/* 814F7D50 | 38 60 00 00 */	li r3, 0x0
/* 814F7D54 | 48 00 00 FC */	b .L_814F7E50
.L_814F7D58:
/* 814F7D58 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 814F7D5C | 90 1F 01 24 */	stw r0, 0x124(r31)
/* 814F7D60 | 48 03 8B 25 */	bl OSDisableInterrupts
/* 814F7D64 | 3B 1F 01 A8 */	addi r24, r31, 0x1a8
/* 814F7D68 | 7C 7C 1B 78 */	mr r28, r3
/* 814F7D6C | 7F 04 C3 78 */	mr r4, r24
/* 814F7D70 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814F7D74 | 48 01 A7 2D */	bl fn_815124A0
/* 814F7D78 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 814F7D7C | 38 1E 00 18 */	addi r0, r30, 0x18
/* 814F7D80 | 48 00 00 18 */	b .L_814F7D98
.L_814F7D84:
/* 814F7D84 | 80 A3 FF 7C */	lwz r5, -0x84(r3)
/* 814F7D88 | 80 9F 01 24 */	lwz r4, 0x124(r31)
/* 814F7D8C | 7C 05 20 00 */	cmpw r5, r4
/* 814F7D90 | 41 81 00 10 */	bgt .L_814F7DA0
/* 814F7D94 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814F7D98:
/* 814F7D98 | 7C 03 00 40 */	cmplw r3, r0
/* 814F7D9C | 40 82 FF E8 */	bne .L_814F7D84
.L_814F7DA0:
/* 814F7DA0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814F7DA4 | 7F 05 C3 78 */	mr r5, r24
/* 814F7DA8 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 814F7DAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814F7DB0 | 48 01 A6 C5 */	bl fn_81512474
/* 814F7DB4 | 7F 83 E3 78 */	mr r3, r28
/* 814F7DB8 | 48 03 8A F5 */	bl OSRestoreInterrupts
/* 814F7DBC | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 814F7DC0 | 88 03 A2 31 */	lbz r0, -0x5dcf(r3)
/* 814F7DC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F7DC8 | 41 82 00 7C */	beq .L_814F7E44
/* 814F7DCC | 87 9E 00 18 */	lwzu r28, 0x18(r30)
/* 814F7DD0 | 48 00 00 6C */	b .L_814F7E3C
.L_814F7DD4:
/* 814F7DD4 | 80 1C FF 7C */	lwz r0, -0x84(r28)
/* 814F7DD8 | 3A FC FE 58 */	subi r23, r28, 0x1a8
/* 814F7DDC | 2C 00 00 FF */	cmpwi r0, 0xff
/* 814F7DE0 | 41 82 00 58 */	beq .L_814F7E38
/* 814F7DE4 | 7E F9 BB 78 */	mr r25, r23
/* 814F7DE8 | 3B 60 00 00 */	li r27, 0x0
/* 814F7DEC | 48 00 00 40 */	b .L_814F7E2C
.L_814F7DF0:
/* 814F7DF0 | 7F 38 CB 78 */	mr r24, r25
/* 814F7DF4 | 3B 40 00 00 */	li r26, 0x0
/* 814F7DF8 | 48 00 00 20 */	b .L_814F7E18
.L_814F7DFC:
/* 814F7DFC | 80 78 00 0C */	lwz r3, 0xc(r24)
/* 814F7E00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F7E04 | 41 82 00 0C */	beq .L_814F7E10
/* 814F7E08 | 38 80 00 10 */	li r4, 0x10
/* 814F7E0C | 48 05 A6 D5 */	bl fn_815524E0
.L_814F7E10:
/* 814F7E10 | 3B 18 00 04 */	addi r24, r24, 0x4
/* 814F7E14 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F7E18:
/* 814F7E18 | 80 17 01 08 */	lwz r0, 0x108(r23)
/* 814F7E1C | 7C 1A 00 00 */	cmpw r26, r0
/* 814F7E20 | 41 80 FF DC */	blt .L_814F7DFC
/* 814F7E24 | 3B 39 00 10 */	addi r25, r25, 0x10
/* 814F7E28 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814F7E2C:
/* 814F7E2C | 80 17 01 04 */	lwz r0, 0x104(r23)
/* 814F7E30 | 7C 1B 00 00 */	cmpw r27, r0
/* 814F7E34 | 41 80 FF BC */	blt .L_814F7DF0
.L_814F7E38:
/* 814F7E38 | 83 9C 00 00 */	lwz r28, 0x0(r28)
.L_814F7E3C:
/* 814F7E3C | 7C 1C F0 40 */	cmplw r28, r30
/* 814F7E40 | 40 82 FF 94 */	bne .L_814F7DD4
.L_814F7E44:
/* 814F7E44 | 7F A3 EB 78 */	mr r3, r29
/* 814F7E48 | 48 03 8A 65 */	bl OSRestoreInterrupts
/* 814F7E4C | 7F E3 FB 78 */	mr r3, r31
.L_814F7E50:
/* 814F7E50 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814F7E54 | 48 10 16 A9 */	bl _restgpr_23
/* 814F7E58 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814F7E5C | 7C 08 03 A6 */	mtlr r0
/* 814F7E60 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F7E64 | 4E 80 00 20 */	blr
.endfn AllocVoice__Q44nw4r3snd6detail9AxManagerFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv

# .text:0xE44 | 0x814F7E68 | size: 0x8C
# nw4r::snd::detail::AxManager::FreeVoice(nw4r::snd::detail::AxVoice*)
.fn FreeVoice__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice, global
/* 814F7E68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F7E6C | 7C 08 02 A6 */	mflr r0
/* 814F7E70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F7E74 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F7E78 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F7E7C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F7E80 | 7C 9D 23 78 */	mr r29, r4
/* 814F7E84 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814F7E88 | 7C 7C 1B 78 */	mr r28, r3
/* 814F7E8C | 48 03 89 F9 */	bl OSDisableInterrupts
/* 814F7E90 | 7C 7F 1B 78 */	mr r31, r3
/* 814F7E94 | 48 03 89 F1 */	bl OSDisableInterrupts
/* 814F7E98 | 3B BD 01 A8 */	addi r29, r29, 0x1a8
/* 814F7E9C | 7C 7E 1B 78 */	mr r30, r3
/* 814F7EA0 | 7F A4 EB 78 */	mr r4, r29
/* 814F7EA4 | 38 7C 00 14 */	addi r3, r28, 0x14
/* 814F7EA8 | 48 01 A5 F9 */	bl fn_815124A0
/* 814F7EAC | 38 1C 00 24 */	addi r0, r28, 0x24
/* 814F7EB0 | 7F A5 EB 78 */	mr r5, r29
/* 814F7EB4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F7EB8 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 814F7EBC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814F7EC0 | 48 01 A5 B5 */	bl fn_81512474
/* 814F7EC4 | 7F C3 F3 78 */	mr r3, r30
/* 814F7EC8 | 48 03 89 E5 */	bl OSRestoreInterrupts
/* 814F7ECC | 7F E3 FB 78 */	mr r3, r31
/* 814F7ED0 | 48 03 89 DD */	bl OSRestoreInterrupts
/* 814F7ED4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F7ED8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F7EDC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F7EE0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F7EE4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814F7EE8 | 7C 08 03 A6 */	mtlr r0
/* 814F7EEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F7EF0 | 4E 80 00 20 */	blr
.endfn FreeVoice__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice

# .text:0xED0 | 0x814F7EF4 | size: 0x160
# nw4r::snd::detail::AxManager::ChangeVoicePriority(nw4r::snd::detail::AxVoice*)
.fn ChangeVoicePriority__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice, global
/* 814F7EF4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F7EF8 | 7C 08 02 A6 */	mflr r0
/* 814F7EFC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F7F00 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F7F04 | 48 10 15 B1 */	bl _savegpr_24
/* 814F7F08 | 7C 7A 1B 78 */	mr r26, r3
/* 814F7F0C | 7C 98 23 78 */	mr r24, r4
/* 814F7F10 | 48 03 89 75 */	bl OSDisableInterrupts
/* 814F7F14 | 7C 7F 1B 78 */	mr r31, r3
/* 814F7F18 | 48 03 89 6D */	bl OSDisableInterrupts
/* 814F7F1C | 3B 38 01 A8 */	addi r25, r24, 0x1a8
/* 814F7F20 | 7C 7E 1B 78 */	mr r30, r3
/* 814F7F24 | 7F 24 CB 78 */	mr r4, r25
/* 814F7F28 | 38 7A 00 14 */	addi r3, r26, 0x14
/* 814F7F2C | 48 01 A5 75 */	bl fn_815124A0
/* 814F7F30 | 38 1A 00 24 */	addi r0, r26, 0x24
/* 814F7F34 | 7F 25 CB 78 */	mr r5, r25
/* 814F7F38 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F7F3C | 38 7A 00 20 */	addi r3, r26, 0x20
/* 814F7F40 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814F7F44 | 48 01 A5 31 */	bl fn_81512474
/* 814F7F48 | 7F C3 F3 78 */	mr r3, r30
/* 814F7F4C | 48 03 89 61 */	bl OSRestoreInterrupts
/* 814F7F50 | 48 03 89 35 */	bl OSDisableInterrupts
/* 814F7F54 | 7C 7E 1B 78 */	mr r30, r3
/* 814F7F58 | 7F 24 CB 78 */	mr r4, r25
/* 814F7F5C | 38 7A 00 20 */	addi r3, r26, 0x20
/* 814F7F60 | 48 01 A5 41 */	bl fn_815124A0
/* 814F7F64 | 80 7A 00 18 */	lwz r3, 0x18(r26)
/* 814F7F68 | 38 1A 00 18 */	addi r0, r26, 0x18
/* 814F7F6C | 48 00 00 18 */	b .L_814F7F84
.L_814F7F70:
/* 814F7F70 | 80 A3 FF 7C */	lwz r5, -0x84(r3)
/* 814F7F74 | 80 98 01 24 */	lwz r4, 0x124(r24)
/* 814F7F78 | 7C 05 20 00 */	cmpw r5, r4
/* 814F7F7C | 41 81 00 10 */	bgt .L_814F7F8C
/* 814F7F80 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814F7F84:
/* 814F7F84 | 7C 03 00 40 */	cmplw r3, r0
/* 814F7F88 | 40 82 FF E8 */	bne .L_814F7F70
.L_814F7F8C:
/* 814F7F8C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814F7F90 | 7F 25 CB 78 */	mr r5, r25
/* 814F7F94 | 38 7A 00 14 */	addi r3, r26, 0x14
/* 814F7F98 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814F7F9C | 48 01 A4 D9 */	bl fn_81512474
/* 814F7FA0 | 7F C3 F3 78 */	mr r3, r30
/* 814F7FA4 | 48 03 89 09 */	bl OSRestoreInterrupts
/* 814F7FA8 | 3C 7A 00 01 */	addis r3, r26, 0x1
/* 814F7FAC | 88 03 A2 31 */	lbz r0, -0x5dcf(r3)
/* 814F7FB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F7FB4 | 41 82 00 80 */	beq .L_814F8034
/* 814F7FB8 | 83 DA 00 18 */	lwz r30, 0x18(r26)
/* 814F7FBC | 3B BA 00 18 */	addi r29, r26, 0x18
/* 814F7FC0 | 48 00 00 6C */	b .L_814F802C
.L_814F7FC4:
/* 814F7FC4 | 80 1E FF 7C */	lwz r0, -0x84(r30)
/* 814F7FC8 | 3B 1E FE 58 */	subi r24, r30, 0x1a8
/* 814F7FCC | 2C 00 00 FF */	cmpwi r0, 0xff
/* 814F7FD0 | 41 82 00 58 */	beq .L_814F8028
/* 814F7FD4 | 7F 1A C3 78 */	mr r26, r24
/* 814F7FD8 | 3B 80 00 00 */	li r28, 0x0
/* 814F7FDC | 48 00 00 40 */	b .L_814F801C
.L_814F7FE0:
/* 814F7FE0 | 7F 59 D3 78 */	mr r25, r26
/* 814F7FE4 | 3B 60 00 00 */	li r27, 0x0
/* 814F7FE8 | 48 00 00 20 */	b .L_814F8008
.L_814F7FEC:
/* 814F7FEC | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 814F7FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F7FF4 | 41 82 00 0C */	beq .L_814F8000
/* 814F7FF8 | 38 80 00 10 */	li r4, 0x10
/* 814F7FFC | 48 05 A4 E5 */	bl fn_815524E0
.L_814F8000:
/* 814F8000 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 814F8004 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814F8008:
/* 814F8008 | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814F800C | 7C 1B 00 00 */	cmpw r27, r0
/* 814F8010 | 41 80 FF DC */	blt .L_814F7FEC
/* 814F8014 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 814F8018 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814F801C:
/* 814F801C | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814F8020 | 7C 1C 00 00 */	cmpw r28, r0
/* 814F8024 | 41 80 FF BC */	blt .L_814F7FE0
.L_814F8028:
/* 814F8028 | 83 DE 00 00 */	lwz r30, 0x0(r30)
.L_814F802C:
/* 814F802C | 7C 1E E8 40 */	cmplw r30, r29
/* 814F8030 | 40 82 FF 94 */	bne .L_814F7FC4
.L_814F8034:
/* 814F8034 | 7F E3 FB 78 */	mr r3, r31
/* 814F8038 | 48 03 88 75 */	bl OSRestoreInterrupts
/* 814F803C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F8040 | 48 10 14 C1 */	bl _restgpr_24
/* 814F8044 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814F8048 | 7C 08 03 A6 */	mtlr r0
/* 814F804C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F8050 | 4E 80 00 20 */	blr
.endfn ChangeVoicePriority__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice

# .text:0x1030 | 0x814F8054 | size: 0x3C
# nw4r::snd::detail::AxManager::LockUpdateVoicePriority()
.fn LockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F8054 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F8058 | 7C 08 02 A6 */	mflr r0
/* 814F805C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F8060 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F8064 | 7C 7F 1B 78 */	mr r31, r3
/* 814F8068 | 48 03 88 1D */	bl OSDisableInterrupts
/* 814F806C | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 814F8070 | 38 00 00 00 */	li r0, 0x0
/* 814F8074 | 98 04 A2 31 */	stb r0, -0x5dcf(r4)
/* 814F8078 | 48 03 88 35 */	bl OSRestoreInterrupts
/* 814F807C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F8080 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F8084 | 7C 08 03 A6 */	mtlr r0
/* 814F8088 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F808C | 4E 80 00 20 */	blr
.endfn LockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv

# .text:0x106C | 0x814F8090 | size: 0xC8
# nw4r::snd::detail::AxManager::UnlockUpdateVoicePriority()
.fn UnlockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F8090 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F8094 | 7C 08 02 A6 */	mflr r0
/* 814F8098 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F809C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F80A0 | 48 10 14 15 */	bl _savegpr_24
/* 814F80A4 | 7C 78 1B 78 */	mr r24, r3
/* 814F80A8 | 48 03 87 DD */	bl OSDisableInterrupts
/* 814F80AC | 3C 98 00 01 */	addis r4, r24, 0x1
/* 814F80B0 | 38 00 00 01 */	li r0, 0x1
/* 814F80B4 | 83 D8 00 18 */	lwz r30, 0x18(r24)
/* 814F80B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814F80BC | 98 04 A2 31 */	stb r0, -0x5dcf(r4)
/* 814F80C0 | 3B B8 00 18 */	addi r29, r24, 0x18
/* 814F80C4 | 48 00 00 6C */	b .L_814F8130
.L_814F80C8:
/* 814F80C8 | 80 1E FF 7C */	lwz r0, -0x84(r30)
/* 814F80CC | 3B 1E FE 58 */	subi r24, r30, 0x1a8
/* 814F80D0 | 2C 00 00 FF */	cmpwi r0, 0xff
/* 814F80D4 | 41 82 00 58 */	beq .L_814F812C
/* 814F80D8 | 7F 1A C3 78 */	mr r26, r24
/* 814F80DC | 3B 80 00 00 */	li r28, 0x0
/* 814F80E0 | 48 00 00 40 */	b .L_814F8120
.L_814F80E4:
/* 814F80E4 | 7F 59 D3 78 */	mr r25, r26
/* 814F80E8 | 3B 60 00 00 */	li r27, 0x0
/* 814F80EC | 48 00 00 20 */	b .L_814F810C
.L_814F80F0:
/* 814F80F0 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 814F80F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F80F8 | 41 82 00 0C */	beq .L_814F8104
/* 814F80FC | 38 80 00 10 */	li r4, 0x10
/* 814F8100 | 48 05 A3 E1 */	bl fn_815524E0
.L_814F8104:
/* 814F8104 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 814F8108 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814F810C:
/* 814F810C | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814F8110 | 7C 1B 00 00 */	cmpw r27, r0
/* 814F8114 | 41 80 FF DC */	blt .L_814F80F0
/* 814F8118 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 814F811C | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814F8120:
/* 814F8120 | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814F8124 | 7C 1C 00 00 */	cmpw r28, r0
/* 814F8128 | 41 80 FF BC */	blt .L_814F80E4
.L_814F812C:
/* 814F812C | 83 DE 00 00 */	lwz r30, 0x0(r30)
.L_814F8130:
/* 814F8130 | 7C 1E E8 40 */	cmplw r30, r29
/* 814F8134 | 40 82 FF 94 */	bne .L_814F80C8
/* 814F8138 | 7F E3 FB 78 */	mr r3, r31
/* 814F813C | 48 03 87 71 */	bl OSRestoreInterrupts
/* 814F8140 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F8144 | 48 10 13 BD */	bl _restgpr_24
/* 814F8148 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814F814C | 7C 08 03 A6 */	mtlr r0
/* 814F8150 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F8154 | 4E 80 00 20 */	blr
.endfn UnlockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv

# .text:0x1134 | 0x814F8158 | size: 0x68
# nw4r::snd::detail::AxManager::UpdateAllVoices()
.fn UpdateAllVoices__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F8158 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F815C | 7C 08 02 A6 */	mflr r0
/* 814F8160 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F8164 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F8168 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F816C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F8170 | 7C 7D 1B 78 */	mr r29, r3
/* 814F8174 | 48 03 87 11 */	bl OSDisableInterrupts
/* 814F8178 | 87 DD 00 18 */	lwzu r30, 0x18(r29)
/* 814F817C | 7C 7F 1B 78 */	mr r31, r3
/* 814F8180 | 48 00 00 14 */	b .L_814F8194
.L_814F8184:
/* 814F8184 | 7F C3 F3 78 */	mr r3, r30
/* 814F8188 | 83 DE 00 00 */	lwz r30, 0x0(r30)
/* 814F818C | 38 63 FE 58 */	subi r3, r3, 0x1a8
/* 814F8190 | 48 00 09 D9 */	bl Update__Q44nw4r3snd6detail7AxVoiceFv
.L_814F8194:
/* 814F8194 | 7C 1E E8 40 */	cmplw r30, r29
/* 814F8198 | 40 82 FF EC */	bne .L_814F8184
/* 814F819C | 7F E3 FB 78 */	mr r3, r31
/* 814F81A0 | 48 03 87 0D */	bl OSRestoreInterrupts
/* 814F81A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F81A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F81AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F81B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F81B4 | 7C 08 03 A6 */	mtlr r0
/* 814F81B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F81BC | 4E 80 00 20 */	blr
.endfn UpdateAllVoices__Q44nw4r3snd6detail9AxManagerFv

# .text:0x119C | 0x814F81C0 | size: 0x100
# nw4r::snd::detail::AxManager::SetMasterVolume(float, int)
.fn SetMasterVolume__Q44nw4r3snd6detail9AxManagerFfi, global
/* 814F81C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F81C4 | 7C 08 02 A6 */	mflr r0
/* 814F81C8 | 3C C3 00 01 */	addis r6, r3, 0x1
/* 814F81CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F81D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F81D4 | 7C 7F 1B 78 */	mr r31, r3
/* 814F81D8 | 80 E6 A2 4C */	lwz r7, -0x5db4(r6)
/* 814F81DC | 80 06 A2 50 */	lwz r0, -0x5db0(r6)
/* 814F81E0 | 7C 00 38 00 */	cmpw r0, r7
/* 814F81E4 | 41 80 00 0C */	blt .L_814F81F0
/* 814F81E8 | C0 06 A2 48 */	lfs f0, -0x5db8(r6)
/* 814F81EC | 48 00 00 4C */	b .L_814F8238
.L_814F81F0:
/* 814F81F0 | 3C A0 43 30 */	lis r5, 0x4330
/* 814F81F4 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814F81F8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F81FC | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 814F8200 | C8 A2 8D C8 */	lfd f5, lbl_816951C8@sda21(r0)
/* 814F8204 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814F8208 | C0 06 A2 48 */	lfs f0, -0x5db8(r6)
/* 814F820C | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814F8210 | C0 66 A2 44 */	lfs f3, -0x5dbc(r6)
/* 814F8214 | EC 82 28 28 */	fsubs f4, f2, f5
/* 814F8218 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F821C | EC 40 18 28 */	fsubs f2, f0, f3
/* 814F8220 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814F8224 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814F8228 | EC 44 00 B2 */	fmuls f2, f4, f2
/* 814F822C | EC 00 28 28 */	fsubs f0, f0, f5
/* 814F8230 | EC 02 00 24 */	fdivs f0, f2, f0
/* 814F8234 | EC 03 00 2A */	fadds f0, f3, f0
.L_814F8238:
/* 814F8238 | 3C A0 55 55 */	lis r5, 0x5555
/* 814F823C | 3C C3 00 01 */	addis r6, r3, 0x1
/* 814F8240 | 38 64 00 02 */	addi r3, r4, 0x2
/* 814F8244 | 38 00 00 00 */	li r0, 0x0
/* 814F8248 | 38 A5 55 56 */	addi r5, r5, 0x5556
/* 814F824C | 90 06 A2 50 */	stw r0, -0x5db0(r6)
/* 814F8250 | 7C 65 18 96 */	mulhw r3, r5, r3
/* 814F8254 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F8258 | D0 06 A2 44 */	stfs f0, -0x5dbc(r6)
/* 814F825C | D0 26 A2 48 */	stfs f1, -0x5db8(r6)
/* 814F8260 | 54 60 0F FE */	srwi r0, r3, 31
/* 814F8264 | 7C 03 02 14 */	add r0, r3, r0
/* 814F8268 | 90 06 A2 4C */	stw r0, -0x5db4(r6)
/* 814F826C | 40 82 00 40 */	bne .L_814F82AC
/* 814F8270 | 48 03 86 15 */	bl OSDisableInterrupts
/* 814F8274 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814F8278 | 38 1F 00 18 */	addi r0, r31, 0x18
/* 814F827C | 48 00 00 24 */	b .L_814F82A0
.L_814F8280:
/* 814F8280 | 7C 86 23 78 */	mr r6, r4
/* 814F8284 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814F8288 | 88 A6 FF 74 */	lbz r5, -0x8c(r6)
/* 814F828C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F8290 | 41 82 00 10 */	beq .L_814F82A0
/* 814F8294 | 88 A6 FF 7B */	lbz r5, -0x85(r6)
/* 814F8298 | 60 A5 00 10 */	ori r5, r5, 0x10
/* 814F829C | 98 A6 FF 7B */	stb r5, -0x85(r6)
.L_814F82A0:
/* 814F82A0 | 7C 04 00 40 */	cmplw r4, r0
/* 814F82A4 | 40 82 FF DC */	bne .L_814F8280
/* 814F82A8 | 48 03 86 05 */	bl OSRestoreInterrupts
.L_814F82AC:
/* 814F82AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F82B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F82B4 | 7C 08 03 A6 */	mtlr r0
/* 814F82B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F82BC | 4E 80 00 20 */	blr
.endfn SetMasterVolume__Q44nw4r3snd6detail9AxManagerFfi

# .text:0x129C | 0x814F82C0 | size: 0x160
# nw4r::snd::detail::AxManager::AxCallbackFunc()
.fn AxCallbackFunc__Q44nw4r3snd6detail9AxManagerFv, global
/* 814F82C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F82C4 | 7C 08 02 A6 */	mflr r0
/* 814F82C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F82CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F82D0 | 48 10 11 E9 */	bl _savegpr_25
/* 814F82D4 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F82D8 | 7C 00 07 75 */	extsb. r0, r0
/* 814F82DC | 40 82 00 30 */	bne .L_814F830C
/* 814F82E0 | 3F 20 81 0F */	lis r25, instance$1758@ha
/* 814F82E4 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F82E8 | 4B FF ED 3D */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F82EC | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F82F0 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F82F4 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F82F8 | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F82FC | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F8300 | 48 10 0C E1 */	bl __register_global_object
/* 814F8304 | 38 00 00 01 */	li r0, 0x1
/* 814F8308 | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F830C:
/* 814F830C | 3F 20 81 0F */	lis r25, instance$1758@ha
/* 814F8310 | 3F 60 81 4F */	lis r27, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F8314 | 3B 59 61 4C */	addi r26, r25, instance$1758@l
/* 814F8318 | 3F 80 81 0F */	lis r28, lbl_810F6140@ha
/* 814F831C | 83 FA 00 0C */	lwz r31, 0xc(r26)
/* 814F8320 | 3B DA 00 0C */	addi r30, r26, 0xc
/* 814F8324 | 3B A0 00 01 */	li r29, 0x1
/* 814F8328 | 48 00 00 18 */	b .L_814F8340
.L_814F832C:
/* 814F832C | 7F E3 FB 78 */	mr r3, r31
/* 814F8330 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 814F8334 | 81 83 00 08 */	lwz r12, 0x8(r3)
/* 814F8338 | 7D 89 03 A6 */	mtctr r12
/* 814F833C | 4E 80 04 21 */	bctrl
.L_814F8340:
/* 814F8340 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8344 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8348 | 40 82 00 20 */	bne .L_814F8368
/* 814F834C | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F8350 | 4B FF EC D5 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F8354 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F8358 | 38 9B 76 30 */	addi r4, r27, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F835C | 38 BC 61 40 */	addi r5, r28, lbl_810F6140@l
/* 814F8360 | 48 10 0C 81 */	bl __register_global_object
/* 814F8364 | 9B AD AE 78 */	stb r29, "@GUARD@instance$1758"@sda21(r0)
.L_814F8368:
/* 814F8368 | 7C 1F F0 40 */	cmplw r31, r30
/* 814F836C | 40 82 FF C0 */	bne .L_814F832C
/* 814F8370 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8374 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8378 | 40 82 00 2C */	bne .L_814F83A4
/* 814F837C | 7F 43 D3 78 */	mr r3, r26
/* 814F8380 | 4B FF EC A5 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F8384 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F8388 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F838C | 7F 43 D3 78 */	mr r3, r26
/* 814F8390 | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F8394 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F8398 | 48 10 0C 49 */	bl __register_global_object
/* 814F839C | 38 00 00 01 */	li r0, 0x1
/* 814F83A0 | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F83A4:
/* 814F83A4 | 3F E0 81 0F */	lis r31, instance$1758@ha
/* 814F83A8 | 3B FF 61 4C */	addi r31, r31, instance$1758@l
/* 814F83AC | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814F83B0 | 80 03 A2 2C */	lwz r0, -0x5dd4(r3)
/* 814F83B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F83B8 | 41 82 00 50 */	beq .L_814F8408
/* 814F83BC | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F83C0 | 7C 00 07 75 */	extsb. r0, r0
/* 814F83C4 | 40 82 00 2C */	bne .L_814F83F0
/* 814F83C8 | 7F E3 FB 78 */	mr r3, r31
/* 814F83CC | 4B FF EC 59 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F83D0 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F83D4 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F83D8 | 7F E3 FB 78 */	mr r3, r31
/* 814F83DC | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F83E0 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F83E4 | 48 10 0B FD */	bl __register_global_object
/* 814F83E8 | 38 00 00 01 */	li r0, 0x1
/* 814F83EC | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F83F0:
/* 814F83F0 | 3C 60 81 0F */	lis r3, instance$1758@ha
/* 814F83F4 | 38 63 61 4C */	addi r3, r3, instance$1758@l
/* 814F83F8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814F83FC | 81 83 A2 2C */	lwz r12, -0x5dd4(r3)
/* 814F8400 | 7D 89 03 A6 */	mtctr r12
/* 814F8404 | 4E 80 04 21 */	bctrl
.L_814F8408:
/* 814F8408 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F840C | 48 10 10 F9 */	bl _restgpr_25
/* 814F8410 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814F8414 | 7C 08 03 A6 */	mtlr r0
/* 814F8418 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F841C | 4E 80 00 20 */	blr
.endfn AxCallbackFunc__Q44nw4r3snd6detail9AxManagerFv

# .text:0x13FC | 0x814F8420 | size: 0x110
# nw4r::snd::detail::AxManager::AppendEffect(nw4r::snd::AuxBus, nw4r::snd::FxBase*)
.fn AppendEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusPQ34nw4r3snd6FxBase, global
/* 814F8420 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F8424 | 7C 08 02 A6 */	mflr r0
/* 814F8428 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F842C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F8430 | 48 10 10 91 */	bl _savegpr_27
/* 814F8434 | 7C BD 2B 78 */	mr r29, r5
/* 814F8438 | 7C 7B 1B 78 */	mr r27, r3
/* 814F843C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814F8440 | 7F A3 EB 78 */	mr r3, r29
/* 814F8444 | 7C 9C 23 78 */	mr r28, r4
/* 814F8448 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814F844C | 7D 89 03 A6 */	mtctr r12
/* 814F8450 | 4E 80 04 21 */	bctrl
/* 814F8454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8458 | 40 82 00 0C */	bne .L_814F8464
/* 814F845C | 38 60 00 00 */	li r3, 0x0
/* 814F8460 | 48 00 00 B8 */	b .L_814F8518
.L_814F8464:
/* 814F8464 | 48 03 84 21 */	bl OSDisableInterrupts
/* 814F8468 | 1C 1C 00 0C */	mulli r0, r28, 0xc
/* 814F846C | 3C 9B 00 01 */	addis r4, r27, 0x1
/* 814F8470 | 7C 7F 1B 78 */	mr r31, r3
/* 814F8474 | 7C 64 02 14 */	add r3, r4, r0
/* 814F8478 | 80 03 A2 CC */	lwz r0, -0x5d34(r3)
/* 814F847C | 3B C3 A2 CC */	subi r30, r3, 0x5d34
/* 814F8480 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8484 | 40 82 00 70 */	bne .L_814F84F4
/* 814F8488 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814F848C | 41 82 00 34 */	beq .L_814F84C0
/* 814F8490 | 40 80 00 10 */	bge .L_814F84A0
/* 814F8494 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F8498 | 40 80 00 14 */	bge .L_814F84AC
/* 814F849C | 48 00 00 48 */	b .L_814F84E4
.L_814F84A0:
/* 814F84A0 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 814F84A4 | 40 80 00 40 */	bge .L_814F84E4
/* 814F84A8 | 48 00 00 2C */	b .L_814F84D4
.L_814F84AC:
/* 814F84AC | 3C 60 81 50 */	lis r3, AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv@ha
/* 814F84B0 | 7F 84 E3 78 */	mr r4, r28
/* 814F84B4 | 38 63 86 20 */	addi r3, r3, AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv@l
/* 814F84B8 | 48 05 A7 75 */	bl fn_81552C2C
/* 814F84BC | 48 00 00 28 */	b .L_814F84E4
.L_814F84C0:
/* 814F84C0 | 3C 60 81 50 */	lis r3, AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv@ha
/* 814F84C4 | 7F 84 E3 78 */	mr r4, r28
/* 814F84C8 | 38 63 86 20 */	addi r3, r3, AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv@l
/* 814F84CC | 48 05 A7 C5 */	bl fn_81552C90
/* 814F84D0 | 48 00 00 14 */	b .L_814F84E4
.L_814F84D4:
/* 814F84D4 | 3C 60 81 50 */	lis r3, AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv@ha
/* 814F84D8 | 7F 84 E3 78 */	mr r4, r28
/* 814F84DC | 38 63 86 20 */	addi r3, r3, AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv@l
/* 814F84E0 | 48 05 A8 15 */	bl fn_81552CF4
.L_814F84E4:
/* 814F84E4 | 3C 1B 00 01 */	addis r0, r27, 0x1
/* 814F84E8 | 38 80 00 02 */	li r4, 0x2
/* 814F84EC | 7C 60 E2 14 */	add r3, r0, r28
/* 814F84F0 | 98 83 A3 08 */	stb r4, -0x5cf8(r3)
.L_814F84F4:
/* 814F84F4 | 38 1E 00 04 */	addi r0, r30, 0x4
/* 814F84F8 | 7F C3 F3 78 */	mr r3, r30
/* 814F84FC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F8500 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814F8504 | 38 BD 00 04 */	addi r5, r29, 0x4
/* 814F8508 | 48 01 9F 6D */	bl fn_81512474
/* 814F850C | 7F E3 FB 78 */	mr r3, r31
/* 814F8510 | 48 03 83 9D */	bl OSRestoreInterrupts
/* 814F8514 | 38 60 00 01 */	li r3, 0x1
.L_814F8518:
/* 814F8518 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F851C | 48 10 0F F1 */	bl _restgpr_27
/* 814F8520 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814F8524 | 7C 08 03 A6 */	mtlr r0
/* 814F8528 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F852C | 4E 80 00 20 */	blr
.endfn AppendEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusPQ34nw4r3snd6FxBase

# .text:0x150C | 0x814F8530 | size: 0x4
# nw4r::snd::detail::AxManager::ClearEffect(nw4r::snd::AuxBus, int)
.fn ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi, global
/* 814F8530 | 48 00 00 04 */	b ShutdownEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBus
.endfn ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi

# .text:0x1510 | 0x814F8534 | size: 0xEC
# nw4r::snd::detail::AxManager::ShutdownEffect(nw4r::snd::AuxBus)
.fn ShutdownEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBus, global
/* 814F8534 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F8538 | 7C 08 02 A6 */	mflr r0
/* 814F853C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F8540 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F8544 | 48 10 0F 7D */	bl _savegpr_27
/* 814F8548 | 7C 7C 1B 78 */	mr r28, r3
/* 814F854C | 7C 9B 23 78 */	mr r27, r4
/* 814F8550 | 48 03 83 35 */	bl OSDisableInterrupts
/* 814F8554 | 1C 1B 00 0C */	mulli r0, r27, 0xc
/* 814F8558 | 3C 9C 00 01 */	addis r4, r28, 0x1
/* 814F855C | 7C 7F 1B 78 */	mr r31, r3
/* 814F8560 | 7C 84 02 14 */	add r4, r4, r0
/* 814F8564 | 80 04 A2 CC */	lwz r0, -0x5d34(r4)
/* 814F8568 | 3B 84 A2 CC */	subi r28, r4, 0x5d34
/* 814F856C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8570 | 40 82 00 0C */	bne .L_814F857C
/* 814F8574 | 48 03 83 39 */	bl OSRestoreInterrupts
/* 814F8578 | 48 00 00 90 */	b .L_814F8608
.L_814F857C:
/* 814F857C | 83 DC 00 04 */	lwz r30, 0x4(r28)
/* 814F8580 | 3B BC 00 04 */	addi r29, r28, 0x4
/* 814F8584 | 48 00 00 1C */	b .L_814F85A0
.L_814F8588:
/* 814F8588 | 81 9E FF FC */	lwz r12, -0x4(r30)
/* 814F858C | 38 7E FF FC */	subi r3, r30, 0x4
/* 814F8590 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814F8594 | 7D 89 03 A6 */	mtctr r12
/* 814F8598 | 4E 80 04 21 */	bctrl
/* 814F859C | 83 DE 00 00 */	lwz r30, 0x0(r30)
.L_814F85A0:
/* 814F85A0 | 7C 1E E8 40 */	cmplw r30, r29
/* 814F85A4 | 40 82 FF E4 */	bne .L_814F8588
/* 814F85A8 | 7F 83 E3 78 */	mr r3, r28
/* 814F85AC | 48 01 9E 85 */	bl fn_81512430
/* 814F85B0 | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 814F85B4 | 41 82 00 30 */	beq .L_814F85E4
/* 814F85B8 | 40 80 00 10 */	bge .L_814F85C8
/* 814F85BC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814F85C0 | 40 80 00 14 */	bge .L_814F85D4
/* 814F85C4 | 48 00 00 3C */	b .L_814F8600
.L_814F85C8:
/* 814F85C8 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 814F85CC | 40 80 00 34 */	bge .L_814F8600
/* 814F85D0 | 48 00 00 24 */	b .L_814F85F4
.L_814F85D4:
/* 814F85D4 | 38 60 00 00 */	li r3, 0x0
/* 814F85D8 | 38 80 00 00 */	li r4, 0x0
/* 814F85DC | 48 05 A6 51 */	bl fn_81552C2C
/* 814F85E0 | 48 00 00 20 */	b .L_814F8600
.L_814F85E4:
/* 814F85E4 | 38 60 00 00 */	li r3, 0x0
/* 814F85E8 | 38 80 00 00 */	li r4, 0x0
/* 814F85EC | 48 05 A6 A5 */	bl fn_81552C90
/* 814F85F0 | 48 00 00 10 */	b .L_814F8600
.L_814F85F4:
/* 814F85F4 | 38 60 00 00 */	li r3, 0x0
/* 814F85F8 | 38 80 00 00 */	li r4, 0x0
/* 814F85FC | 48 05 A6 F9 */	bl fn_81552CF4
.L_814F8600:
/* 814F8600 | 7F E3 FB 78 */	mr r3, r31
/* 814F8604 | 48 03 82 A9 */	bl OSRestoreInterrupts
.L_814F8608:
/* 814F8608 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F860C | 48 10 0F 01 */	bl _restgpr_27
/* 814F8610 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F8614 | 7C 08 03 A6 */	mtlr r0
/* 814F8618 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F861C | 4E 80 00 20 */	blr
.endfn ShutdownEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBus

# .text:0x15FC | 0x814F8620 | size: 0x2E0
# nw4r::snd::detail::AxManager::AuxCallbackFunc(void*, void*)
.fn AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv, global
/* 814F8620 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F8624 | 7C 08 02 A6 */	mflr r0
/* 814F8628 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814F862C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814F8630 | 48 10 0E 89 */	bl _savegpr_25
/* 814F8634 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8638 | 7C 7A 1B 78 */	mr r26, r3
/* 814F863C | 7C 9E 23 78 */	mr r30, r4
/* 814F8640 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8644 | 40 82 00 30 */	bne .L_814F8674
/* 814F8648 | 3F 20 81 0F */	lis r25, instance$1758@ha
/* 814F864C | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F8650 | 4B FF E9 D5 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F8654 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F8658 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F865C | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F8660 | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F8664 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F8668 | 48 10 09 79 */	bl __register_global_object
/* 814F866C | 38 00 00 01 */	li r0, 0x1
/* 814F8670 | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F8674:
/* 814F8674 | 3C 60 81 0F */	lis r3, instance$1758@ha
/* 814F8678 | 80 03 61 4C */	lwz r0, instance$1758@l(r3)
/* 814F867C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814F8680 | 40 82 00 2C */	bne .L_814F86AC
/* 814F8684 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814F8688 | 3B E0 00 04 */	li r31, 0x4
/* 814F868C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F8690 | 80 1A 00 04 */	lwz r0, 0x4(r26)
/* 814F8694 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F8698 | 80 1A 00 08 */	lwz r0, 0x8(r26)
/* 814F869C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F86A0 | 80 1A 00 0C */	lwz r0, 0xc(r26)
/* 814F86A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F86A8 | 48 00 00 20 */	b .L_814F86C8
.L_814F86AC:
/* 814F86AC | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814F86B0 | 3B E0 00 03 */	li r31, 0x3
/* 814F86B4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F86B8 | 80 1A 00 04 */	lwz r0, 0x4(r26)
/* 814F86BC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F86C0 | 80 1A 00 08 */	lwz r0, 0x8(r26)
/* 814F86C4 | 90 01 00 10 */	stw r0, 0x10(r1)
.L_814F86C8:
/* 814F86C8 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F86CC | 7C 00 07 75 */	extsb. r0, r0
/* 814F86D0 | 40 82 00 30 */	bne .L_814F8700
/* 814F86D4 | 3F 20 81 0F */	lis r25, instance$1758@ha
/* 814F86D8 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F86DC | 4B FF E9 49 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F86E0 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F86E4 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F86E8 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F86EC | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F86F0 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F86F4 | 48 10 08 ED */	bl __register_global_object
/* 814F86F8 | 38 00 00 01 */	li r0, 0x1
/* 814F86FC | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F8700:
/* 814F8700 | 3F 40 81 0F */	lis r26, instance$1758@ha
/* 814F8704 | 3B 5A 61 4C */	addi r26, r26, instance$1758@l
/* 814F8708 | 3C 1A 00 01 */	addis r0, r26, 0x1
/* 814F870C | 7F 20 F2 14 */	add r25, r0, r30
/* 814F8710 | 88 19 A3 08 */	lbz r0, -0x5cf8(r25)
/* 814F8714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8718 | 41 82 00 74 */	beq .L_814F878C
/* 814F871C | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8720 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8724 | 40 82 00 2C */	bne .L_814F8750
/* 814F8728 | 7F 43 D3 78 */	mr r3, r26
/* 814F872C | 4B FF E8 F9 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F8730 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F8734 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F8738 | 7F 43 D3 78 */	mr r3, r26
/* 814F873C | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F8740 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F8744 | 48 10 08 9D */	bl __register_global_object
/* 814F8748 | 38 00 00 01 */	li r0, 0x1
/* 814F874C | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F8750:
/* 814F8750 | 88 79 A3 08 */	lbz r3, -0x5cf8(r25)
/* 814F8754 | 3B 41 00 08 */	addi r26, r1, 0x8
/* 814F8758 | 3B 60 00 00 */	li r27, 0x0
/* 814F875C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814F8760 | 98 19 A3 08 */	stb r0, -0x5cf8(r25)
/* 814F8764 | 48 00 00 1C */	b .L_814F8780
.L_814F8768:
/* 814F8768 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814F876C | 38 80 00 00 */	li r4, 0x0
/* 814F8770 | 38 A0 01 80 */	li r5, 0x180
/* 814F8774 | 4B E3 7B C1 */	bl memset
/* 814F8778 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 814F877C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814F8780:
/* 814F8780 | 7C 1B F8 00 */	cmpw r27, r31
/* 814F8784 | 41 80 FF E4 */	blt .L_814F8768
/* 814F8788 | 48 00 01 60 */	b .L_814F88E8
.L_814F878C:
/* 814F878C | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8790 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8794 | 40 82 00 2C */	bne .L_814F87C0
/* 814F8798 | 7F 43 D3 78 */	mr r3, r26
/* 814F879C | 4B FF E8 89 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F87A0 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F87A4 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F87A8 | 7F 43 D3 78 */	mr r3, r26
/* 814F87AC | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F87B0 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F87B4 | 48 10 08 2D */	bl __register_global_object
/* 814F87B8 | 38 00 00 01 */	li r0, 0x1
/* 814F87BC | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F87C0:
/* 814F87C0 | 3F 40 81 0F */	lis r26, instance$1758@ha
/* 814F87C4 | 3B 5A 61 4C */	addi r26, r26, instance$1758@l
/* 814F87C8 | 1C 7E 00 0C */	mulli r3, r30, 0xc
/* 814F87CC | 3C 1A 00 01 */	addis r0, r26, 0x1
/* 814F87D0 | 7F 20 1A 14 */	add r25, r0, r3
/* 814F87D4 | 80 19 A2 CC */	lwz r0, -0x5d34(r25)
/* 814F87D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F87DC | 40 82 00 34 */	bne .L_814F8810
/* 814F87E0 | 3B 21 00 08 */	addi r25, r1, 0x8
/* 814F87E4 | 3B 40 00 00 */	li r26, 0x0
/* 814F87E8 | 48 00 00 1C */	b .L_814F8804
.L_814F87EC:
/* 814F87EC | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814F87F0 | 38 80 00 00 */	li r4, 0x0
/* 814F87F4 | 38 A0 01 80 */	li r5, 0x180
/* 814F87F8 | 4B E3 7B 3D */	bl memset
/* 814F87FC | 3B 39 00 04 */	addi r25, r25, 0x4
/* 814F8800 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F8804:
/* 814F8804 | 7C 1A F8 00 */	cmpw r26, r31
/* 814F8808 | 41 80 FF E4 */	blt .L_814F87EC
/* 814F880C | 48 00 00 DC */	b .L_814F88E8
.L_814F8810:
/* 814F8810 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8814 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8818 | 40 82 00 2C */	bne .L_814F8844
/* 814F881C | 7F 43 D3 78 */	mr r3, r26
/* 814F8820 | 4B FF E8 05 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F8824 | 3C 80 81 4F */	lis r4, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F8828 | 3C A0 81 0F */	lis r5, lbl_810F6140@ha
/* 814F882C | 7F 43 D3 78 */	mr r3, r26
/* 814F8830 | 38 84 76 30 */	addi r4, r4, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F8834 | 38 A5 61 40 */	addi r5, r5, lbl_810F6140@l
/* 814F8838 | 48 10 07 A9 */	bl __register_global_object
/* 814F883C | 38 00 00 01 */	li r0, 0x1
/* 814F8840 | 98 0D AE 78 */	stb r0, "@GUARD@instance$1758"@sda21(r0)
.L_814F8844:
/* 814F8844 | 83 D9 A2 D0 */	lwz r30, -0x5d30(r25)
/* 814F8848 | 3B B9 A2 D0 */	subi r29, r25, 0x5d30
/* 814F884C | 3F 20 81 0F */	lis r25, instance$1758@ha
/* 814F8850 | 3F 40 81 4F */	lis r26, __dt__Q44nw4r3snd6detail9AxManagerFv@ha
/* 814F8854 | 3F 60 81 0F */	lis r27, lbl_810F6140@ha
/* 814F8858 | 3B 80 00 01 */	li r28, 0x1
/* 814F885C | 48 00 00 5C */	b .L_814F88B8
.L_814F8860:
/* 814F8860 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F8864 | 7C 00 07 75 */	extsb. r0, r0
/* 814F8868 | 40 82 00 20 */	bne .L_814F8888
/* 814F886C | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F8870 | 4B FF E7 B5 */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F8874 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F8878 | 38 9A 76 30 */	addi r4, r26, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F887C | 38 BB 61 40 */	addi r5, r27, lbl_810F6140@l
/* 814F8880 | 48 10 07 61 */	bl __register_global_object
/* 814F8884 | 9B 8D AE 78 */	stb r28, "@GUARD@instance$1758"@sda21(r0)
.L_814F8888:
/* 814F8888 | 81 9E FF FC */	lwz r12, -0x4(r30)
/* 814F888C | 38 7E FF FC */	subi r3, r30, 0x4
/* 814F8890 | 7F E4 FB 78 */	mr r4, r31
/* 814F8894 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814F8898 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814F889C | 38 C0 01 80 */	li r6, 0x180
/* 814F88A0 | C0 22 8D D0 */	lfs f1, lbl_816951D0@sda21(r0)
/* 814F88A4 | 38 E0 00 00 */	li r7, 0x0
/* 814F88A8 | 81 19 61 4C */	lwz r8, instance$1758@l(r25)
/* 814F88AC | 7D 89 03 A6 */	mtctr r12
/* 814F88B0 | 4E 80 04 21 */	bctrl
/* 814F88B4 | 83 DE 00 00 */	lwz r30, 0x0(r30)
.L_814F88B8:
/* 814F88B8 | 88 0D AE 78 */	lbz r0, "@GUARD@instance$1758"@sda21(r0)
/* 814F88BC | 7C 00 07 75 */	extsb. r0, r0
/* 814F88C0 | 40 82 00 20 */	bne .L_814F88E0
/* 814F88C4 | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F88C8 | 4B FF E7 5D */	bl __ct__Q44nw4r3snd6detail9AxManagerFv
/* 814F88CC | 38 79 61 4C */	addi r3, r25, instance$1758@l
/* 814F88D0 | 38 9A 76 30 */	addi r4, r26, __dt__Q44nw4r3snd6detail9AxManagerFv@l
/* 814F88D4 | 38 BB 61 40 */	addi r5, r27, lbl_810F6140@l
/* 814F88D8 | 48 10 07 09 */	bl __register_global_object
/* 814F88DC | 9B 8D AE 78 */	stb r28, "@GUARD@instance$1758"@sda21(r0)
.L_814F88E0:
/* 814F88E0 | 7C 1E E8 40 */	cmplw r30, r29
/* 814F88E4 | 40 82 FF 7C */	bne .L_814F8860
.L_814F88E8:
/* 814F88E8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814F88EC | 48 10 0C 19 */	bl _restgpr_25
/* 814F88F0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814F88F4 | 7C 08 03 A6 */	mtlr r0
/* 814F88F8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F88FC | 4E 80 00 20 */	blr
.endfn AuxCallbackFunc__Q44nw4r3snd6detail9AxManagerFPvPv

# 0x816951C0..0x816951D8 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816951C0 | size: 0x4
.obj lbl_816951C0, global
	.float 0
.endobj lbl_816951C0

# .sdata2:0x4 | 0x816951C4 | size: 0x4
.obj lbl_816951C4, global
	.float 1
.endobj lbl_816951C4

# .sdata2:0x8 | 0x816951C8 | size: 0x8
.obj lbl_816951C8, global
	.double 4503601774854144
.endobj lbl_816951C8

# .sdata2:0x10 | 0x816951D0 | size: 0x8
.obj lbl_816951D0, global
	.float 32000
	.float 0
.endobj lbl_816951D0

# 0x81698EB8..0x81698EC0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EB8 | size: 0x1
.obj "@GUARD@instance$1758", global
	.skip 0x1
.endobj "@GUARD@instance$1758"

# .sbss:0x1 | 0x81698EB9 | size: 0x7
.obj gap_12_81698EB9_sbss, global
.hidden gap_12_81698EB9_sbss
	.skip 0x7
.endobj gap_12_81698EB9_sbss
