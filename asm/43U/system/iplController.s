.include "macros.inc"
.file "iplController.cpp"

# 0x81335CCC..0x81337978 | size: 0x1CAC
.text
.balign 4

# .text:0x0 | 0x81335CCC | size: 0x310
# ipl::controller::Base::read()
.fn read__Q33ipl10controller4BaseFv, global
/* 81335CCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81335CD0 | 7C 08 02 A6 */	mflr r0
/* 81335CD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81335CD8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81335CDC | 7C 7F 1B 78 */	mr r31, r3
/* 81335CE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335CE4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81335CE8 | 7D 89 03 A6 */	mtctr r12
/* 81335CEC | 4E 80 04 21 */	bctrl
/* 81335CF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335CF4 | 41 82 00 B0 */	beq .L_81335DA4
/* 81335CF8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335CFC | 3C 80 00 10 */	lis r4, 0x10
/* 81335D00 | 7F E3 FB 78 */	mr r3, r31
/* 81335D04 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81335D08 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81335D0C | 7D 89 03 A6 */	mtctr r12
/* 81335D10 | 4E 80 04 21 */	bctrl
/* 81335D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335D18 | 41 82 00 0C */	beq .L_81335D24
/* 81335D1C | 38 00 00 01 */	li r0, 0x1
/* 81335D20 | 98 1F 00 04 */	stb r0, 0x4(r31)
.L_81335D24:
/* 81335D24 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335D28 | 7F E3 FB 78 */	mr r3, r31
/* 81335D2C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81335D30 | 7D 89 03 A6 */	mtctr r12
/* 81335D34 | 4E 80 04 21 */	bctrl
/* 81335D38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335D3C | 41 82 00 0C */	beq .L_81335D48
/* 81335D40 | 38 00 00 00 */	li r0, 0x0
/* 81335D44 | 98 1F 00 04 */	stb r0, 0x4(r31)
.L_81335D48:
/* 81335D48 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 81335D4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335D50 | 41 82 00 48 */	beq .L_81335D98
/* 81335D54 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335D58 | 3C 80 00 10 */	lis r4, 0x10
/* 81335D5C | 7F E3 FB 78 */	mr r3, r31
/* 81335D60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81335D64 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81335D68 | 7D 89 03 A6 */	mtctr r12
/* 81335D6C | 4E 80 04 21 */	bctrl
/* 81335D70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335D74 | 41 82 00 14 */	beq .L_81335D88
/* 81335D78 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81335D7C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81335D80 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81335D84 | 48 00 00 2C */	b .L_81335DB0
.L_81335D88:
/* 81335D88 | 38 00 00 00 */	li r0, 0x0
/* 81335D8C | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81335D90 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 81335D94 | 48 00 00 1C */	b .L_81335DB0
.L_81335D98:
/* 81335D98 | 38 00 00 00 */	li r0, 0x0
/* 81335D9C | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81335DA0 | 48 00 00 10 */	b .L_81335DB0
.L_81335DA4:
/* 81335DA4 | 38 00 00 00 */	li r0, 0x0
/* 81335DA8 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 81335DAC | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_81335DB0:
/* 81335DB0 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81335DB4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81335DB8 | 41 82 01 50 */	beq .L_81335F08
/* 81335DBC | 40 80 02 0C */	bge .L_81335FC8
/* 81335DC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335DC4 | 40 80 00 08 */	bge .L_81335DCC
/* 81335DC8 | 48 00 02 00 */	b .L_81335FC8
.L_81335DCC:
/* 81335DCC | 48 1F FE CD */	bl fn_81535C98
/* 81335DD0 | 3C 80 80 00 */	lis r4, 0x8000
/* 81335DD4 | 80 DF 00 0C */	lwz r6, 0xc(r31)
/* 81335DD8 | 80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 81335DDC | 3C 00 43 30 */	lis r0, 0x4330
/* 81335DE0 | 7C C6 18 50 */	subf r6, r6, r3
/* 81335DE4 | 38 80 03 E8 */	li r4, 0x3e8
/* 81335DE8 | 54 A3 F0 BE */	srwi r3, r5, 2
/* 81335DEC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81335DF0 | 7C 03 23 96 */	divwu r0, r3, r4
/* 81335DF4 | C8 62 80 48 */	lfd f3, lbl_81694448@sda21(r0)
/* 81335DF8 | C0 22 80 40 */	lfs f1, lbl_81694440@sda21(r0)
/* 81335DFC | C0 02 80 44 */	lfs f0, lbl_81694444@sda21(r0)
/* 81335E00 | 7C 06 03 96 */	divwu r0, r6, r0
/* 81335E04 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81335E08 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 81335E0C | EC 42 18 28 */	fsubs f2, f2, f3
/* 81335E10 | EC 22 08 24 */	fdivs f1, f2, f1
/* 81335E14 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81335E18 | 40 80 00 14 */	bge .L_81335E2C
/* 81335E1C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81335E20 | 38 80 00 01 */	li r4, 0x1
/* 81335E24 | 48 24 51 35 */	bl fn_8157AF58
/* 81335E28 | 48 00 00 88 */	b .L_81335EB0
.L_81335E2C:
/* 81335E2C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81335E30 | 3C 60 81 61 */	lis r3, _f_rodata@ha
/* 81335E34 | 38 63 D2 C0 */	addi r3, r3, _f_rodata@l
/* 81335E38 | 54 00 10 3A */	slwi r0, r0, 2
/* 81335E3C | 7C 03 04 2E */	lfsx f0, r3, r0
/* 81335E40 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81335E44 | 40 80 00 14 */	bge .L_81335E58
/* 81335E48 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81335E4C | 38 80 00 00 */	li r4, 0x0
/* 81335E50 | 48 24 51 09 */	bl fn_8157AF58
/* 81335E54 | 48 00 00 5C */	b .L_81335EB0
.L_81335E58:
/* 81335E58 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335E5C | 7F E3 FB 78 */	mr r3, r31
/* 81335E60 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81335E64 | 7D 89 03 A6 */	mtctr r12
/* 81335E68 | 4E 80 04 21 */	bctrl
/* 81335E6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335E70 | 41 82 00 24 */	beq .L_81335E94
/* 81335E74 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335E78 | 7F E3 FB 78 */	mr r3, r31
/* 81335E7C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81335E80 | 7D 89 03 A6 */	mtctr r12
/* 81335E84 | 4E 80 04 21 */	bctrl
/* 81335E88 | 88 03 00 5D */	lbz r0, 0x5d(r3)
/* 81335E8C | 7C 00 07 75 */	extsb. r0, r0
/* 81335E90 | 40 82 00 20 */	bne .L_81335EB0
.L_81335E94:
/* 81335E94 | 38 60 00 00 */	li r3, 0x0
/* 81335E98 | 38 00 FF FF */	li r0, -0x1
/* 81335E9C | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 81335EA0 | 38 80 00 00 */	li r4, 0x0
/* 81335EA4 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81335EA8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81335EAC | 48 24 50 AD */	bl fn_8157AF58
.L_81335EB0:
/* 81335EB0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335EB4 | 3C 80 00 10 */	lis r4, 0x10
/* 81335EB8 | 7F E3 FB 78 */	mr r3, r31
/* 81335EBC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81335EC0 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81335EC4 | 7D 89 03 A6 */	mtctr r12
/* 81335EC8 | 4E 80 04 21 */	bctrl
/* 81335ECC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335ED0 | 40 82 00 20 */	bne .L_81335EF0
/* 81335ED4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335ED8 | 7F E3 FB 78 */	mr r3, r31
/* 81335EDC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81335EE0 | 7D 89 03 A6 */	mtctr r12
/* 81335EE4 | 4E 80 04 21 */	bctrl
/* 81335EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335EEC | 41 82 00 DC */	beq .L_81335FC8
.L_81335EF0:
/* 81335EF0 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81335EF4 | 38 80 00 00 */	li r4, 0x0
/* 81335EF8 | 48 24 50 61 */	bl fn_8157AF58
/* 81335EFC | 38 00 00 02 */	li r0, 0x2
/* 81335F00 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81335F04 | 48 00 00 C4 */	b .L_81335FC8
.L_81335F08:
/* 81335F08 | 48 1F FD 91 */	bl fn_81535C98
/* 81335F0C | 3C 80 80 00 */	lis r4, 0x8000
/* 81335F10 | 80 FF 00 0C */	lwz r7, 0xc(r31)
/* 81335F14 | 80 C4 00 F8 */	lwz r6, 0xf8(r4)
/* 81335F18 | 3C 00 43 30 */	lis r0, 0x4330
/* 81335F1C | 3C 80 81 61 */	lis r4, _f_rodata@ha
/* 81335F20 | 38 A0 03 E8 */	li r5, 0x3e8
/* 81335F24 | 54 C6 F0 BE */	srwi r6, r6, 2
/* 81335F28 | 7C E7 18 50 */	subf r7, r7, r3
/* 81335F2C | 7C 66 2B 96 */	divwu r3, r6, r5
/* 81335F30 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81335F34 | 38 84 D2 C0 */	addi r4, r4, _f_rodata@l
/* 81335F38 | C8 62 80 48 */	lfd f3, lbl_81694448@sda21(r0)
/* 81335F3C | C0 22 80 40 */	lfs f1, lbl_81694440@sda21(r0)
/* 81335F40 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 81335F44 | 7C 07 1B 96 */	divwu r0, r7, r3
/* 81335F48 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81335F4C | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 81335F50 | EC 42 18 28 */	fsubs f2, f2, f3
/* 81335F54 | EC 22 08 24 */	fdivs f1, f2, f1
/* 81335F58 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81335F5C | 40 80 00 14 */	bge .L_81335F70
/* 81335F60 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81335F64 | 38 80 00 00 */	li r4, 0x0
/* 81335F68 | 48 24 4F F1 */	bl fn_8157AF58
/* 81335F6C | 48 00 00 5C */	b .L_81335FC8
.L_81335F70:
/* 81335F70 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335F74 | 7F E3 FB 78 */	mr r3, r31
/* 81335F78 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81335F7C | 7D 89 03 A6 */	mtctr r12
/* 81335F80 | 4E 80 04 21 */	bctrl
/* 81335F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335F88 | 41 82 00 24 */	beq .L_81335FAC
/* 81335F8C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81335F90 | 7F E3 FB 78 */	mr r3, r31
/* 81335F94 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81335F98 | 7D 89 03 A6 */	mtctr r12
/* 81335F9C | 4E 80 04 21 */	bctrl
/* 81335FA0 | 88 03 00 5D */	lbz r0, 0x5d(r3)
/* 81335FA4 | 7C 00 07 75 */	extsb. r0, r0
/* 81335FA8 | 40 82 00 20 */	bne .L_81335FC8
.L_81335FAC:
/* 81335FAC | 38 60 00 00 */	li r3, 0x0
/* 81335FB0 | 38 00 FF FF */	li r0, -0x1
/* 81335FB4 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 81335FB8 | 38 80 00 00 */	li r4, 0x0
/* 81335FBC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81335FC0 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81335FC4 | 48 24 4F 95 */	bl fn_8157AF58
.L_81335FC8:
/* 81335FC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81335FCC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81335FD0 | 7C 08 03 A6 */	mtlr r0
/* 81335FD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81335FD8 | 4E 80 00 20 */	blr
.endfn read__Q33ipl10controller4BaseFv

# .text:0x310 | 0x81335FDC | size: 0x8
# ipl::controller::Interface::isValidBtn() const
.fn isValidBtn__Q33ipl10controller9InterfaceCFv, global
/* 81335FDC | 38 60 00 00 */	li r3, 0x0
/* 81335FE0 | 4E 80 00 20 */	blr
.endfn isValidBtn__Q33ipl10controller9InterfaceCFv

# .text:0x318 | 0x81335FE4 | size: 0x8
# ipl::controller::Interface::downTrg(unsigned long) const
.fn downTrg__Q33ipl10controller9InterfaceCFUl, global
/* 81335FE4 | 38 60 00 00 */	li r3, 0x0
/* 81335FE8 | 4E 80 00 20 */	blr
.endfn downTrg__Q33ipl10controller9InterfaceCFUl

# .text:0x320 | 0x81335FEC | size: 0x8
# ipl::controller::Interface::pinch() const
.fn pinch__Q33ipl10controller9InterfaceCFv, global
/* 81335FEC | 38 60 00 00 */	li r3, 0x0
/* 81335FF0 | 4E 80 00 20 */	blr
.endfn pinch__Q33ipl10controller9InterfaceCFv

# .text:0x328 | 0x81335FF4 | size: 0x8
# ipl::controller::Interface::down(unsigned long) const
.fn down__Q33ipl10controller9InterfaceCFUl, global
/* 81335FF4 | 38 60 00 00 */	li r3, 0x0
/* 81335FF8 | 4E 80 00 20 */	blr
.endfn down__Q33ipl10controller9InterfaceCFUl

# .text:0x330 | 0x81335FFC | size: 0x8
# ipl::controller::Interface::getKPADStatus() const
.fn getKPADStatus__Q33ipl10controller9InterfaceCFv, global
/* 81335FFC | 38 60 00 00 */	li r3, 0x0
/* 81336000 | 4E 80 00 20 */	blr
.endfn getKPADStatus__Q33ipl10controller9InterfaceCFv

# .text:0x338 | 0x81336004 | size: 0x14
# ipl::controller::Base::decide() const
.fn decide__Q33ipl10controller4BaseCFv, global
/* 81336004 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81336008 | 38 03 FF FB */	subi r0, r3, 0x5
/* 8133600C | 7C 00 00 34 */	cntlzw r0, r0
/* 81336010 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81336014 | 4E 80 00 20 */	blr
.endfn decide__Q33ipl10controller4BaseCFv

# .text:0x34C | 0x81336018 | size: 0x64
# ipl::controller::Base::rumble(int)
.fn rumble__Q33ipl10controller4BaseFi, global
/* 81336018 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133601C | 7C 08 02 A6 */	mflr r0
/* 81336020 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336024 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336028 | 48 2C 34 A1 */	bl _savegpr_29
/* 8133602C | 7C 7D 1B 78 */	mr r29, r3
/* 81336030 | 7C 9E 23 78 */	mr r30, r4
/* 81336034 | 3B E0 00 00 */	li r31, 0x0
/* 81336038 | 48 24 50 21 */	bl fn_8157B058
/* 8133603C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336040 | 41 82 00 20 */	beq .L_81336060
/* 81336044 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 81336048 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8133604C | 40 82 00 14 */	bne .L_81336060
/* 81336050 | 48 1F FC 49 */	bl fn_81535C98
/* 81336054 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 81336058 | 3B E0 00 01 */	li r31, 0x1
/* 8133605C | 93 DD 00 10 */	stw r30, 0x10(r29)
.L_81336060:
/* 81336060 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336064 | 7F E3 FB 78 */	mr r3, r31
/* 81336068 | 48 2C 34 AD */	bl _restgpr_29
/* 8133606C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81336070 | 7C 08 03 A6 */	mtlr r0
/* 81336074 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336078 | 4E 80 00 20 */	blr
.endfn rumble__Q33ipl10controller4BaseFi

# .text:0x3B0 | 0x8133607C | size: 0x50
# ipl::controller::Base::cancelRumbling()
.fn cancelRumbling__Q33ipl10controller4BaseFv, global
/* 8133607C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336080 | 7C 08 02 A6 */	mflr r0
/* 81336084 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336088 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133608C | 7C 7F 1B 78 */	mr r31, r3
/* 81336090 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81336094 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81336098 | 41 82 00 10 */	beq .L_813360A8
/* 8133609C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813360A0 | 38 80 00 00 */	li r4, 0x0
/* 813360A4 | 48 24 4E B5 */	bl fn_8157AF58
.L_813360A8:
/* 813360A8 | 38 60 00 00 */	li r3, 0x0
/* 813360AC | 38 00 FF FF */	li r0, -0x1
/* 813360B0 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 813360B4 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 813360B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813360BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813360C0 | 7C 08 03 A6 */	mtlr r0
/* 813360C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813360C8 | 4E 80 00 20 */	blr
.endfn cancelRumbling__Q33ipl10controller4BaseFv

# .text:0x400 | 0x813360CC | size: 0x148
# ipl::controller::Revolution::read()
.fn read__Q33ipl10controller10RevolutionFv, global
/* 813360CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813360D0 | 7C 08 02 A6 */	mflr r0
/* 813360D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813360D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813360DC | 7C 7F 1B 78 */	mr r31, r3
/* 813360E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813360E4 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813360E8 | 7D 89 03 A6 */	mtctr r12
/* 813360EC | 4E 80 04 21 */	bctrl
/* 813360F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813360F4 | 40 82 00 34 */	bne .L_81336128
/* 813360F8 | C0 22 80 50 */	lfs f1, lbl_81694450@sda21(r0)
/* 813360FC | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81336100 | C0 02 80 54 */	lfs f0, lbl_81694454@sda21(r0)
/* 81336104 | D0 23 00 24 */	stfs f1, 0x24(r3)
/* 81336108 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8133610C | D0 23 00 20 */	stfs f1, 0x20(r3)
/* 81336110 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81336114 | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 81336118 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8133611C | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81336120 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81336124 | D0 03 00 28 */	stfs f0, 0x28(r3)
.L_81336128:
/* 81336128 | 88 1F 00 1D */	lbz r0, 0x1d(r31)
/* 8133612C | 7F E3 FB 78 */	mr r3, r31
/* 81336130 | 98 1F 00 1E */	stb r0, 0x1e(r31)
/* 81336134 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81336138 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8133613C | 7D 89 03 A6 */	mtctr r12
/* 81336140 | 4E 80 04 21 */	bctrl
/* 81336144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336148 | 41 82 00 A8 */	beq .L_813361F0
/* 8133614C | 88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 81336150 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336154 | 40 82 00 50 */	bne .L_813361A4
/* 81336158 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133615C | 7F E3 FB 78 */	mr r3, r31
/* 81336160 | 38 80 08 00 */	li r4, 0x800
/* 81336164 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81336168 | 7D 89 03 A6 */	mtctr r12
/* 8133616C | 4E 80 04 21 */	bctrl
/* 81336170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336174 | 41 82 00 84 */	beq .L_813361F8
/* 81336178 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133617C | 7F E3 FB 78 */	mr r3, r31
/* 81336180 | 38 80 04 00 */	li r4, 0x400
/* 81336184 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81336188 | 7D 89 03 A6 */	mtctr r12
/* 8133618C | 4E 80 04 21 */	bctrl
/* 81336190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336194 | 41 82 00 64 */	beq .L_813361F8
/* 81336198 | 38 00 00 01 */	li r0, 0x1
/* 8133619C | 98 1F 00 1D */	stb r0, 0x1d(r31)
/* 813361A0 | 48 00 00 58 */	b .L_813361F8
.L_813361A4:
/* 813361A4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813361A8 | 7F E3 FB 78 */	mr r3, r31
/* 813361AC | 38 80 08 00 */	li r4, 0x800
/* 813361B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813361B4 | 7D 89 03 A6 */	mtctr r12
/* 813361B8 | 4E 80 04 21 */	bctrl
/* 813361BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813361C0 | 41 82 00 24 */	beq .L_813361E4
/* 813361C4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813361C8 | 7F E3 FB 78 */	mr r3, r31
/* 813361CC | 38 80 04 00 */	li r4, 0x400
/* 813361D0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813361D4 | 7D 89 03 A6 */	mtctr r12
/* 813361D8 | 4E 80 04 21 */	bctrl
/* 813361DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813361E0 | 40 82 00 18 */	bne .L_813361F8
.L_813361E4:
/* 813361E4 | 38 00 00 00 */	li r0, 0x0
/* 813361E8 | 98 1F 00 1D */	stb r0, 0x1d(r31)
/* 813361EC | 48 00 00 0C */	b .L_813361F8
.L_813361F0:
/* 813361F0 | 38 00 00 00 */	li r0, 0x0
/* 813361F4 | 98 1F 00 1D */	stb r0, 0x1d(r31)
.L_813361F8:
/* 813361F8 | 7F E3 FB 78 */	mr r3, r31
/* 813361FC | 4B FF FA D1 */	bl read__Q33ipl10controller4BaseFv
/* 81336200 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81336204 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336208 | 7C 08 03 A6 */	mtlr r0
/* 8133620C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336210 | 4E 80 00 20 */	blr
.endfn read__Q33ipl10controller10RevolutionFv

# .text:0x548 | 0x81336214 | size: 0x54
# ipl::controller::Revolution::isValidDpd() const
.fn isValidDpd__Q33ipl10controller10RevolutionCFv, global
/* 81336214 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81336218 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133621C | 41 82 00 0C */	beq .L_81336228
/* 81336220 | 38 60 00 00 */	li r3, 0x0
/* 81336224 | 4E 80 00 20 */	blr
.L_81336228:
/* 81336228 | 80 A3 00 20 */	lwz r5, 0x20(r3)
/* 8133622C | 38 60 00 00 */	li r3, 0x0
/* 81336230 | 38 80 00 01 */	li r4, 0x1
/* 81336234 | 88 05 00 5D */	lbz r0, 0x5d(r5)
/* 81336238 | 7C 00 07 75 */	extsb. r0, r0
/* 8133623C | 41 82 00 10 */	beq .L_8133624C
/* 81336240 | 2C 00 FF F9 */	cmpwi r0, -0x7
/* 81336244 | 41 82 00 08 */	beq .L_8133624C
/* 81336248 | 38 80 00 00 */	li r4, 0x0
.L_8133624C:
/* 8133624C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81336250 | 4D 82 00 20 */	beqlr
/* 81336254 | 88 05 00 5E */	lbz r0, 0x5e(r5)
/* 81336258 | 7C 00 07 75 */	extsb. r0, r0
/* 8133625C | 4D 82 00 20 */	beqlr
/* 81336260 | 38 60 00 01 */	li r3, 0x1
/* 81336264 | 4E 80 00 20 */	blr
.endfn isValidDpd__Q33ipl10controller10RevolutionCFv

# .text:0x59C | 0x81336268 | size: 0x34
# ipl::controller::Revolution::isValidBtn() const
.fn isValidBtn__Q33ipl10controller10RevolutionCFv, global
/* 81336268 | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 8133626C | 38 60 00 00 */	li r3, 0x0
/* 81336270 | 88 84 00 5D */	lbz r4, 0x5d(r4)
/* 81336274 | 38 84 00 07 */	addi r4, r4, 0x7
/* 81336278 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 8133627C | 28 00 00 07 */	cmplwi r0, 0x7
/* 81336280 | 4D 81 00 20 */	bgtlr
/* 81336284 | 38 00 00 01 */	li r0, 0x1
/* 81336288 | 7C 00 20 30 */	slw r0, r0, r4
/* 8133628C | 70 00 00 A1 */	andi. r0, r0, 0xa1
/* 81336290 | 4D 82 00 20 */	beqlr
/* 81336294 | 38 60 00 01 */	li r3, 0x1
/* 81336298 | 4E 80 00 20 */	blr
.endfn isValidBtn__Q33ipl10controller10RevolutionCFv

# .text:0x5D0 | 0x8133629C | size: 0x6C
# ipl::controller::Revolution::down(unsigned long) const
.fn down__Q33ipl10controller10RevolutionCFUl, global
/* 8133629C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813362A0 | 7C 08 02 A6 */	mflr r0
/* 813362A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813362A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813362AC | 48 2C 32 1D */	bl _savegpr_29
/* 813362B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813362B4 | 7C 7D 1B 78 */	mr r29, r3
/* 813362B8 | 7C 9E 23 78 */	mr r30, r4
/* 813362BC | 3B E0 00 00 */	li r31, 0x0
/* 813362C0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813362C4 | 7D 89 03 A6 */	mtctr r12
/* 813362C8 | 4E 80 04 21 */	bctrl
/* 813362CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813362D0 | 41 82 00 1C */	beq .L_813362EC
/* 813362D4 | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 813362D8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 813362DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813362E0 | 7C 60 00 39 */	and. r0, r3, r0
/* 813362E4 | 41 82 00 08 */	beq .L_813362EC
/* 813362E8 | 3B E0 00 01 */	li r31, 0x1
.L_813362EC:
/* 813362EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813362F0 | 7F E3 FB 78 */	mr r3, r31
/* 813362F4 | 48 2C 32 21 */	bl _restgpr_29
/* 813362F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813362FC | 7C 08 03 A6 */	mtlr r0
/* 81336300 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336304 | 4E 80 00 20 */	blr
.endfn down__Q33ipl10controller10RevolutionCFUl

# .text:0x63C | 0x81336308 | size: 0x120
# ipl::controller::Revolution::getDpdProjectionPos() const
.fn getDpdProjectionPos__Q33ipl10controller10RevolutionCFv, global
/* 81336308 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133630C | 7C 08 02 A6 */	mflr r0
/* 81336310 | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 81336314 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81336318 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8133631C | C0 04 00 20 */	lfs f0, 0x20(r4)
/* 81336320 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81336324 | C0 04 00 24 */	lfs f0, 0x24(r4)
/* 81336328 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8133632C | 48 00 00 FD */	bl __ct__Q34nw4r2ut4RectFv
/* 81336330 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81336334 | 4B FF F5 E5 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81336338 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8133633C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81336340 | C0 61 00 34 */	lfs f3, 0x34(r1)
/* 81336344 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81336348 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8133634C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81336350 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 81336354 | D0 21 00 20 */	stfs f1, 0x20(r1)
/* 81336358 | C0 22 80 58 */	lfs f1, lbl_81694458@sda21(r0)
/* 8133635C | D0 61 00 24 */	stfs f3, 0x24(r1)
/* 81336360 | D0 41 00 28 */	stfs f2, 0x28(r1)
/* 81336364 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 81336368 | 48 24 F5 39 */	bl fn_815858A0
/* 8133636C | 48 23 3C 49 */	bl SCGetAspectRatio
/* 81336370 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81336374 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81336378 | 40 82 00 20 */	bne .L_81336398
/* 8133637C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81336380 | C0 42 80 5C */	lfs f2, lbl_8169445C@sda21(r0)
/* 81336384 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81336388 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 8133638C | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81336390 | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 81336394 | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_81336398:
/* 81336398 | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8133639C | C0 42 80 60 */	lfs f2, lbl_81694460@sda21(r0)
/* 813363A0 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813363A4 | EC 00 10 28 */	fsubs f0, f0, f2
/* 813363A8 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813363AC | 40 81 00 0C */	ble .L_813363B8
/* 813363B0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813363B4 | 48 00 00 4C */	b .L_81336400
.L_813363B8:
/* 813363B8 | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 813363BC | EC 02 00 2A */	fadds f0, f2, f0
/* 813363C0 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813363C4 | 40 80 00 0C */	bge .L_813363D0
/* 813363C8 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813363CC | 48 00 00 34 */	b .L_81336400
.L_813363D0:
/* 813363D0 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 813363D4 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 813363D8 | EC 00 10 28 */	fsubs f0, f0, f2
/* 813363DC | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813363E0 | 40 81 00 0C */	ble .L_813363EC
/* 813363E4 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 813363E8 | 48 00 00 18 */	b .L_81336400
.L_813363EC:
/* 813363EC | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 813363F0 | EC 02 00 2A */	fadds f0, f2, f0
/* 813363F4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813363F8 | 40 80 00 08 */	bge .L_81336400
/* 813363FC | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_81336400:
/* 81336400 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81336404 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81336408 | C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8133640C | 48 00 00 35 */	bl set__Q33ipl4math4VEC2Fff
/* 81336410 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81336414 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81336418 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8133641C | 7C 08 03 A6 */	mtlr r0
/* 81336420 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81336424 | 4E 80 00 20 */	blr
.endfn getDpdProjectionPos__Q33ipl10controller10RevolutionCFv

# .text:0x75C | 0x81336428 | size: 0x18
# nw4r::ut::Rect::Rect()
.fn __ct__Q34nw4r2ut4RectFv, global
/* 81336428 | C0 02 80 54 */	lfs f0, lbl_81694454@sda21(r0)
/* 8133642C | D0 03 00 00 */	stfs f0, 0x0(r3)
/* 81336430 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 81336434 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81336438 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8133643C | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r2ut4RectFv

# .text:0x774 | 0x81336440 | size: 0xC
# ipl::math::VEC2::set(float, float)
.fn set__Q33ipl4math4VEC2Fff, global
/* 81336440 | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 81336444 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 81336448 | 4E 80 00 20 */	blr
.endfn set__Q33ipl4math4VEC2Fff

# .text:0x780 | 0x8133644C | size: 0x9C
# ipl::controller::Classic::Classic(int, KPADStatus&)
.fn __ct__Q33ipl10controller7ClassicFiR10KPADStatus, global
/* 8133644C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336450 | 7C 08 02 A6 */	mflr r0
/* 81336454 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336458 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133645C | 48 2C 30 6D */	bl _savegpr_29
/* 81336460 | 3C E0 81 63 */	lis r7, __vt__Q33ipl10controller4Base@ha
/* 81336464 | 3B E0 00 00 */	li r31, 0x0
/* 81336468 | 38 E7 48 80 */	addi r7, r7, __vt__Q33ipl10controller4Base@l
/* 8133646C | 38 C0 FF FF */	li r6, -0x1
/* 81336470 | 38 00 00 02 */	li r0, 0x2
/* 81336474 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 81336478 | 7C 7D 1B 78 */	mr r29, r3
/* 8133647C | 7C BE 2B 78 */	mr r30, r5
/* 81336480 | 9B E3 00 04 */	stb r31, 0x4(r3)
/* 81336484 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 81336488 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 8133648C | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 81336490 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 81336494 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81336498 | 9B E3 00 1C */	stb r31, 0x1c(r3)
/* 8133649C | 7C 83 23 78 */	mr r3, r4
/* 813364A0 | 48 25 1F 11 */	bl fn_815883B0
/* 813364A4 | C0 02 80 64 */	lfs f0, lbl_81694464@sda21(r0)
/* 813364A8 | 3C 80 81 63 */	lis r4, __vt__Q33ipl10controller7Classic@ha
/* 813364AC | 38 84 47 64 */	addi r4, r4, __vt__Q33ipl10controller7Classic@l
/* 813364B0 | 9B FD 00 1D */	stb r31, 0x1d(r29)
/* 813364B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813364B8 | 7F A3 EB 78 */	mr r3, r29
/* 813364BC | 9B FD 00 1E */	stb r31, 0x1e(r29)
/* 813364C0 | 93 DD 00 20 */	stw r30, 0x20(r29)
/* 813364C4 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813364C8 | D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 813364CC | D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 813364D0 | 93 FD 00 2C */	stw r31, 0x2c(r29)
/* 813364D4 | 48 2C 30 41 */	bl _restgpr_29
/* 813364D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813364DC | 7C 08 03 A6 */	mtlr r0
/* 813364E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813364E4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl10controller7ClassicFiR10KPADStatus

# .text:0x81C | 0x813364E8 | size: 0x40
# ipl::controller::Base::~Base()
.fn __dt__Q33ipl10controller4BaseFv, global
/* 813364E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813364EC | 7C 08 02 A6 */	mflr r0
/* 813364F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813364F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813364F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813364FC | 7C 7F 1B 78 */	mr r31, r3
/* 81336500 | 41 82 00 10 */	beq .L_81336510
/* 81336504 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81336508 | 40 81 00 08 */	ble .L_81336510
/* 8133650C | 48 2C 1B D9 */	bl __dl__FPv
.L_81336510:
/* 81336510 | 7F E3 FB 78 */	mr r3, r31
/* 81336514 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336518 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133651C | 7C 08 03 A6 */	mtlr r0
/* 81336520 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336524 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl10controller4BaseFv

# .text:0x85C | 0x81336528 | size: 0x40
# ipl::controller::Revolution::~Revolution()
.fn __dt__Q33ipl10controller10RevolutionFv, global
/* 81336528 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133652C | 7C 08 02 A6 */	mflr r0
/* 81336530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336534 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336538 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133653C | 7C 7F 1B 78 */	mr r31, r3
/* 81336540 | 41 82 00 10 */	beq .L_81336550
/* 81336544 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81336548 | 40 81 00 08 */	ble .L_81336550
/* 8133654C | 48 2C 1B 99 */	bl __dl__FPv
.L_81336550:
/* 81336550 | 7F E3 FB 78 */	mr r3, r31
/* 81336554 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336558 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133655C | 7C 08 03 A6 */	mtlr r0
/* 81336560 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336564 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl10controller10RevolutionFv

# .text:0x89C | 0x81336568 | size: 0xC
# ipl::math::VEC2::VEC2(float, float)
.fn __ct__Q33ipl4math4VEC2Fff, global
/* 81336568 | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 8133656C | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 81336570 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4math4VEC2Fff

# .text:0x8A8 | 0x81336574 | size: 0x16C
# ipl::controller::Classic::read()
.fn read__Q33ipl10controller7ClassicFv, global
/* 81336574 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81336578 | 7C 08 02 A6 */	mflr r0
/* 8133657C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81336580 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81336584 | 7C 7F 1B 78 */	mr r31, r3
/* 81336588 | 4B FF FC 8D */	bl isValidDpd__Q33ipl10controller10RevolutionCFv
/* 8133658C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336590 | 40 82 01 20 */	bne .L_813366B0
/* 81336594 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 81336598 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8133659C | C0 24 00 6C */	lfs f1, 0x6c(r4)
/* 813365A0 | C0 44 00 70 */	lfs f2, 0x70(r4)
/* 813365A4 | 4B FF FF C5 */	bl __ct__Q33ipl4math4VEC2Fff
/* 813365A8 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813365AC | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 813365B0 | EC 40 00 32 */	fmuls f2, f0, f0
/* 813365B4 | C0 02 80 68 */	lfs f0, lbl_81694468@sda21(r0)
/* 813365B8 | EC 21 00 72 */	fmuls f1, f1, f1
/* 813365BC | EC 22 08 2A */	fadds f1, f2, f1
/* 813365C0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813365C4 | 40 81 00 5C */	ble .L_81336620
/* 813365C8 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813365CC | 38 61 00 0C */	addi r3, r1, 0xc
/* 813365D0 | C0 42 80 6C */	lfs f2, lbl_8169446C@sda21(r0)
/* 813365D4 | 38 8D 80 40 */	li r4, lbl_81696080@sda21
/* 813365D8 | C0 25 00 6C */	lfs f1, 0x6c(r5)
/* 813365DC | C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 813365E0 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813365E4 | EC 00 08 2A */	fadds f0, f0, f1
/* 813365E8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813365EC | 48 00 01 01 */	bl "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"
/* 813365F0 | D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 813365F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813365F8 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813365FC | 38 8D 80 44 */	li r4, lbl_81696084@sda21
/* 81336600 | C0 42 80 6C */	lfs f2, lbl_8169446C@sda21(r0)
/* 81336604 | C0 25 00 70 */	lfs f1, 0x70(r5)
/* 81336608 | C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8133660C | EC 22 00 72 */	fmuls f1, f2, f1
/* 81336610 | EC 00 08 28 */	fsubs f0, f0, f1
/* 81336614 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81336618 | 48 00 00 D5 */	bl "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"
/* 8133661C | D0 3F 00 28 */	stfs f1, 0x28(r31)
.L_81336620:
/* 81336620 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 81336624 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81336628 | C0 24 00 74 */	lfs f1, 0x74(r4)
/* 8133662C | C0 44 00 78 */	lfs f2, 0x78(r4)
/* 81336630 | 4B FF FF 39 */	bl __ct__Q33ipl4math4VEC2Fff
/* 81336634 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81336638 | 7F E3 FB 78 */	mr r3, r31
/* 8133663C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81336640 | 7D 89 03 A6 */	mtctr r12
/* 81336644 | 4E 80 04 21 */	bctrl
/* 81336648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133664C | 40 82 00 40 */	bne .L_8133668C
/* 81336650 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81336654 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81336658 | EC 21 00 72 */	fmuls f1, f1, f1
/* 8133665C | C0 42 80 68 */	lfs f2, lbl_81694468@sda21(r0)
/* 81336660 | EC 00 00 32 */	fmuls f0, f0, f0
/* 81336664 | EC 01 00 2A */	fadds f0, f1, f0
/* 81336668 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8133666C | 41 81 00 20 */	bgt .L_8133668C
/* 81336670 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81336674 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81336678 | EC 21 00 72 */	fmuls f1, f1, f1
/* 8133667C | EC 00 00 32 */	fmuls f0, f0, f0
/* 81336680 | EC 01 00 2A */	fadds f0, f1, f0
/* 81336684 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81336688 | 40 81 00 0C */	ble .L_81336694
.L_8133668C:
/* 8133668C | 38 00 00 B4 */	li r0, 0xb4
/* 81336690 | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_81336694:
/* 81336694 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81336698 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 8133669C | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813366A0 | 40 80 00 24 */	bge .L_813366C4
/* 813366A4 | 38 00 00 00 */	li r0, 0x0
/* 813366A8 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813366AC | 48 00 00 18 */	b .L_813366C4
.L_813366B0:
/* 813366B0 | C0 02 80 64 */	lfs f0, lbl_81694464@sda21(r0)
/* 813366B4 | 38 00 00 00 */	li r0, 0x0
/* 813366B8 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813366BC | D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 813366C0 | D0 1F 00 24 */	stfs f0, 0x24(r31)
.L_813366C4:
/* 813366C4 | 7F E3 FB 78 */	mr r3, r31
/* 813366C8 | 4B FF FA 05 */	bl read__Q33ipl10controller10RevolutionFv
/* 813366CC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813366D0 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813366D4 | 7C 08 03 A6 */	mtlr r0
/* 813366D8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813366DC | 4E 80 00 20 */	blr
.endfn read__Q33ipl10controller7ClassicFv

# .text:0xA14 | 0x813366E0 | size: 0xC
# ipl::controller::Classic::getClassicHoldFlag() const
.fn getClassicHoldFlag__Q33ipl10controller7ClassicCFv, global
/* 813366E0 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 813366E4 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813366E8 | 4E 80 00 20 */	blr
.endfn getClassicHoldFlag__Q33ipl10controller7ClassicCFv

# .text:0xA20 | 0x813366EC | size: 0x24
# float ipl::math::abs_clamp<float>(const float&, const float&)
.fn "abs_clamp<f>__Q23ipl4mathFRCfRCf_f", global
/* 813366EC | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 813366F0 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 813366F4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813366F8 | 4D 81 00 20 */	bgtlr
/* 813366FC | FC 20 08 50 */	fneg f1, f1
/* 81336700 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81336704 | 4D 80 00 20 */	bltlr
/* 81336708 | FC 20 00 90 */	fmr f1, f0
/* 8133670C | 4E 80 00 20 */	blr
.endfn "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"

# .text:0xA44 | 0x81336710 | size: 0x64
# ipl::controller::Classic::getHorizon() const
.fn getHorizon__Q33ipl10controller7ClassicCFv, global
/* 81336710 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336714 | 7C 08 02 A6 */	mflr r0
/* 81336718 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133671C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81336720 | 7C 7F 1B 78 */	mr r31, r3
/* 81336724 | 4B FF FA F1 */	bl isValidDpd__Q33ipl10controller10RevolutionCFv
/* 81336728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133672C | 41 82 00 1C */	beq .L_81336748
/* 81336730 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 81336734 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81336738 | C0 24 00 34 */	lfs f1, 0x34(r4)
/* 8133673C | C0 44 00 38 */	lfs f2, 0x38(r4)
/* 81336740 | 4B FF FD 01 */	bl set__Q33ipl4math4VEC2Fff
/* 81336744 | 48 00 00 14 */	b .L_81336758
.L_81336748:
/* 81336748 | C0 22 80 70 */	lfs f1, lbl_81694470@sda21(r0)
/* 8133674C | C0 02 80 74 */	lfs f0, lbl_81694474@sda21(r0)
/* 81336750 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81336754 | D0 01 00 0C */	stfs f0, 0xc(r1)
.L_81336758:
/* 81336758 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133675C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81336760 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81336764 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81336768 | 7C 08 03 A6 */	mtlr r0
/* 8133676C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336770 | 4E 80 00 20 */	blr
.endfn getHorizon__Q33ipl10controller7ClassicCFv

# .text:0xAA8 | 0x81336774 | size: 0x7C
# ipl::controller::Classic::getDpdPos() const
.fn getDpdPos__Q33ipl10controller7ClassicCFv, global
/* 81336774 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336778 | 7C 08 02 A6 */	mflr r0
/* 8133677C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336780 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81336784 | 7C 7F 1B 78 */	mr r31, r3
/* 81336788 | 4B FF FA 8D */	bl isValidDpd__Q33ipl10controller10RevolutionCFv
/* 8133678C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336790 | 41 82 00 1C */	beq .L_813367AC
/* 81336794 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 81336798 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133679C | C0 24 00 20 */	lfs f1, 0x20(r4)
/* 813367A0 | C0 44 00 24 */	lfs f2, 0x24(r4)
/* 813367A4 | 4B FF FC 9D */	bl set__Q33ipl4math4VEC2Fff
/* 813367A8 | 48 00 00 2C */	b .L_813367D4
.L_813367AC:
/* 813367AC | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813367B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813367B4 | 41 82 00 14 */	beq .L_813367C8
/* 813367B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813367BC | 38 9F 00 24 */	addi r4, r31, 0x24
/* 813367C0 | 48 00 00 31 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813367C4 | 48 00 00 10 */	b .L_813367D4
.L_813367C8:
/* 813367C8 | C0 02 80 50 */	lfs f0, lbl_81694450@sda21(r0)
/* 813367CC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813367D0 | D0 01 00 0C */	stfs f0, 0xc(r1)
.L_813367D4:
/* 813367D4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813367D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813367DC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813367E0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813367E4 | 7C 08 03 A6 */	mtlr r0
/* 813367E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813367EC | 4E 80 00 20 */	blr
.endfn getDpdPos__Q33ipl10controller7ClassicCFv

# .text:0xB24 | 0x813367F0 | size: 0x14
# ipl::math::VEC2::operator=(const ipl::math::VEC2&)
.fn __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2, global
/* 813367F0 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 813367F4 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 813367F8 | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 813367FC | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 81336800 | 4E 80 00 20 */	blr
.endfn __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2

# .text:0xB38 | 0x81336804 | size: 0x174
# ipl::controller::Classic::getDpdProjectionPos() const
.fn getDpdProjectionPos__Q33ipl10controller7ClassicCFv, global
/* 81336804 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81336808 | 7C 08 02 A6 */	mflr r0
/* 8133680C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81336810 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81336814 | 7C 7F 1B 78 */	mr r31, r3
/* 81336818 | 4B FF F9 FD */	bl isValidDpd__Q33ipl10controller10RevolutionCFv
/* 8133681C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336820 | 41 82 00 1C */	beq .L_8133683C
/* 81336824 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 81336828 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8133682C | C0 24 00 20 */	lfs f1, 0x20(r4)
/* 81336830 | C0 44 00 24 */	lfs f2, 0x24(r4)
/* 81336834 | 4B FF FC 0D */	bl set__Q33ipl4math4VEC2Fff
/* 81336838 | 48 00 00 2C */	b .L_81336864
.L_8133683C:
/* 8133683C | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 81336840 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336844 | 41 82 00 14 */	beq .L_81336858
/* 81336848 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8133684C | 38 9F 00 24 */	addi r4, r31, 0x24
/* 81336850 | 4B FF FF A1 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81336854 | 48 00 00 10 */	b .L_81336864
.L_81336858:
/* 81336858 | C0 02 80 50 */	lfs f0, lbl_81694450@sda21(r0)
/* 8133685C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81336860 | D0 01 00 1C */	stfs f0, 0x1c(r1)
.L_81336864:
/* 81336864 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81336868 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8133686C | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81336870 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81336874 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81336878 | 4B FF FB B1 */	bl __ct__Q34nw4r2ut4RectFv
/* 8133687C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81336880 | 4B FF F0 99 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81336884 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 81336888 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8133688C | C0 61 00 34 */	lfs f3, 0x34(r1)
/* 81336890 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81336894 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 81336898 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8133689C | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 813368A0 | D0 21 00 20 */	stfs f1, 0x20(r1)
/* 813368A4 | C0 22 80 58 */	lfs f1, lbl_81694458@sda21(r0)
/* 813368A8 | D0 61 00 24 */	stfs f3, 0x24(r1)
/* 813368AC | D0 41 00 28 */	stfs f2, 0x28(r1)
/* 813368B0 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 813368B4 | 48 24 EF ED */	bl fn_815858A0
/* 813368B8 | 48 23 36 FD */	bl SCGetAspectRatio
/* 813368BC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813368C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813368C4 | 40 82 00 20 */	bne .L_813368E4
/* 813368C8 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813368CC | C0 42 80 5C */	lfs f2, lbl_8169445C@sda21(r0)
/* 813368D0 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813368D4 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 813368D8 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 813368DC | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 813368E0 | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_813368E4:
/* 813368E4 | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 813368E8 | C0 42 80 60 */	lfs f2, lbl_81694460@sda21(r0)
/* 813368EC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813368F0 | EC 00 10 28 */	fsubs f0, f0, f2
/* 813368F4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813368F8 | 40 81 00 0C */	ble .L_81336904
/* 813368FC | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81336900 | 48 00 00 4C */	b .L_8133694C
.L_81336904:
/* 81336904 | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 81336908 | EC 02 00 2A */	fadds f0, f2, f0
/* 8133690C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81336910 | 40 80 00 0C */	bge .L_8133691C
/* 81336914 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81336918 | 48 00 00 34 */	b .L_8133694C
.L_8133691C:
/* 8133691C | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 81336920 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81336924 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81336928 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8133692C | 40 81 00 0C */	ble .L_81336938
/* 81336930 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81336934 | 48 00 00 18 */	b .L_8133694C
.L_81336938:
/* 81336938 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8133693C | EC 02 00 2A */	fadds f0, f2, f0
/* 81336940 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81336944 | 40 80 00 08 */	bge .L_8133694C
/* 81336948 | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_8133694C:
/* 8133694C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81336950 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81336954 | C0 41 00 14 */	lfs f2, 0x14(r1)
/* 81336958 | 4B FF FA E9 */	bl set__Q33ipl4math4VEC2Fff
/* 8133695C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81336960 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81336964 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81336968 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8133696C | 7C 08 03 A6 */	mtlr r0
/* 81336970 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81336974 | 4E 80 00 20 */	blr
.endfn getDpdProjectionPos__Q33ipl10controller7ClassicCFv

# .text:0xCAC | 0x81336978 | size: 0x40
# ipl::controller::Master::down(unsigned long) const
.fn down__Q33ipl10controller6MasterCFUl, global
/* 81336978 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133697C | 7C 08 02 A6 */	mflr r0
/* 81336980 | 3D 00 81 63 */	lis r8, lbl_816346A8@ha
/* 81336984 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336988 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133698C | 84 E8 46 A8 */	lwzu r7, lbl_816346A8@l(r8)
/* 81336990 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 81336994 | 80 08 00 08 */	lwz r0, 0x8(r8)
/* 81336998 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 8133699C | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 813369A0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813369A4 | 48 00 01 E1 */	bl call__Q33ipl10controller6MasterCFUlMQ33ipl10controller9InterfaceFPCvPCvUl_b
/* 813369A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813369AC | 7C 08 03 A6 */	mtlr r0
/* 813369B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813369B4 | 4E 80 00 20 */	blr
.endfn down__Q33ipl10controller6MasterCFUl

# .text:0xCEC | 0x813369B8 | size: 0x40
# ipl::controller::Master::downTrg(unsigned long) const
.fn downTrg__Q33ipl10controller6MasterCFUl, global
/* 813369B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813369BC | 7C 08 02 A6 */	mflr r0
/* 813369C0 | 3D 00 81 63 */	lis r8, lbl_816346B4@ha
/* 813369C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813369C8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813369CC | 84 E8 46 B4 */	lwzu r7, lbl_816346B4@l(r8)
/* 813369D0 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 813369D4 | 80 08 00 08 */	lwz r0, 0x8(r8)
/* 813369D8 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 813369DC | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 813369E0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813369E4 | 48 00 01 A1 */	bl call__Q33ipl10controller6MasterCFUlMQ33ipl10controller9InterfaceFPCvPCvUl_b
/* 813369E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813369EC | 7C 08 03 A6 */	mtlr r0
/* 813369F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813369F4 | 4E 80 00 20 */	blr
.endfn downTrg__Q33ipl10controller6MasterCFUl

# .text:0xD2C | 0x813369F8 | size: 0x40
# ipl::controller::Master::upTrg(unsigned long) const
.fn upTrg__Q33ipl10controller6MasterCFUl, global
/* 813369F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813369FC | 7C 08 02 A6 */	mflr r0
/* 81336A00 | 3D 00 81 63 */	lis r8, lbl_816346C0@ha
/* 81336A04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336A08 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81336A0C | 84 E8 46 C0 */	lwzu r7, lbl_816346C0@l(r8)
/* 81336A10 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 81336A14 | 80 08 00 08 */	lwz r0, 0x8(r8)
/* 81336A18 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 81336A1C | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81336A20 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81336A24 | 48 00 01 61 */	bl call__Q33ipl10controller6MasterCFUlMQ33ipl10controller9InterfaceFPCvPCvUl_b
/* 81336A28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81336A2C | 7C 08 03 A6 */	mtlr r0
/* 81336A30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336A34 | 4E 80 00 20 */	blr
.endfn upTrg__Q33ipl10controller6MasterCFUl

# .text:0xD6C | 0x81336A38 | size: 0x8
# ipl::controller::Interface::upTrg(unsigned long) const
.fn upTrg__Q33ipl10controller9InterfaceCFUl, global
/* 81336A38 | 38 60 00 00 */	li r3, 0x0
/* 81336A3C | 4E 80 00 20 */	blr
.endfn upTrg__Q33ipl10controller9InterfaceCFUl

# .text:0xD74 | 0x81336A40 | size: 0x40
# ipl::controller::Master::repeat(unsigned long) const
.fn repeat__Q33ipl10controller6MasterCFUl, global
/* 81336A40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336A44 | 7C 08 02 A6 */	mflr r0
/* 81336A48 | 3D 00 81 63 */	lis r8, lbl_816346CC@ha
/* 81336A4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336A50 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81336A54 | 84 E8 46 CC */	lwzu r7, lbl_816346CC@l(r8)
/* 81336A58 | 80 C8 00 04 */	lwz r6, 0x4(r8)
/* 81336A5C | 80 08 00 08 */	lwz r0, 0x8(r8)
/* 81336A60 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 81336A64 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81336A68 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81336A6C | 48 00 01 19 */	bl call__Q33ipl10controller6MasterCFUlMQ33ipl10controller9InterfaceFPCvPCvUl_b
/* 81336A70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81336A74 | 7C 08 03 A6 */	mtlr r0
/* 81336A78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336A7C | 4E 80 00 20 */	blr
.endfn repeat__Q33ipl10controller6MasterCFUl

# .text:0xDB4 | 0x81336A80 | size: 0x8
# ipl::controller::Interface::repeat(unsigned long) const
.fn repeat__Q33ipl10controller9InterfaceCFUl, global
/* 81336A80 | 38 60 00 00 */	li r3, 0x0
/* 81336A84 | 4E 80 00 20 */	blr
.endfn repeat__Q33ipl10controller9InterfaceCFUl

# .text:0xDBC | 0x81336A88 | size: 0x8C
# ipl::controller::Master::decide() const
.fn decide__Q33ipl10controller6MasterCFv, global
/* 81336A88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336A8C | 7C 08 02 A6 */	mflr r0
/* 81336A90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336A94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336A98 | 48 2C 2A 29 */	bl _savegpr_27
/* 81336A9C | 7C 7B 1B 78 */	mr r27, r3
/* 81336AA0 | 3B A0 00 00 */	li r29, 0x0
/* 81336AA4 | 3B 80 00 00 */	li r28, 0x0
/* 81336AA8 | 3B E0 00 00 */	li r31, 0x0
.L_81336AAC:
/* 81336AAC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81336AB0 | 3B C0 00 00 */	li r30, 0x0
/* 81336AB4 | 7C 63 F8 2E */	lwzx r3, r3, r31
/* 81336AB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336ABC | 41 82 00 20 */	beq .L_81336ADC
/* 81336AC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336AC4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81336AC8 | 7D 89 03 A6 */	mtctr r12
/* 81336ACC | 4E 80 04 21 */	bctrl
/* 81336AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336AD4 | 41 82 00 08 */	beq .L_81336ADC
/* 81336AD8 | 3B C0 00 01 */	li r30, 0x1
.L_81336ADC:
/* 81336ADC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81336AE0 | 7F A3 F3 78 */	or r3, r29, r30
/* 81336AE4 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81336AE8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81336AEC | 30 03 FF FF */	subic r0, r3, 0x1
/* 81336AF0 | 7F A0 19 10 */	subfe r29, r0, r3
/* 81336AF4 | 41 80 FF B8 */	blt .L_81336AAC
/* 81336AF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336AFC | 7F A3 EB 78 */	mr r3, r29
/* 81336B00 | 48 2C 2A 0D */	bl _restgpr_27
/* 81336B04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81336B08 | 7C 08 03 A6 */	mtlr r0
/* 81336B0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336B10 | 4E 80 00 20 */	blr
.endfn decide__Q33ipl10controller6MasterCFv

# .text:0xE48 | 0x81336B14 | size: 0x70
# ipl::controller::Master::setForceInvalid(bool)
.fn setForceInvalid__Q33ipl10controller6MasterFb, global
/* 81336B14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336B18 | 7C 08 02 A6 */	mflr r0
/* 81336B1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336B20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336B24 | 48 2C 29 A1 */	bl _savegpr_28
/* 81336B28 | 7C 7C 1B 78 */	mr r28, r3
/* 81336B2C | 7C 9D 23 78 */	mr r29, r4
/* 81336B30 | 3B C0 00 00 */	li r30, 0x0
/* 81336B34 | 3B E0 00 00 */	li r31, 0x0
.L_81336B38:
/* 81336B38 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81336B3C | 7C 63 F8 2E */	lwzx r3, r3, r31
/* 81336B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336B44 | 41 82 00 18 */	beq .L_81336B5C
/* 81336B48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336B4C | 7F A4 EB 78 */	mr r4, r29
/* 81336B50 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81336B54 | 7D 89 03 A6 */	mtctr r12
/* 81336B58 | 4E 80 04 21 */	bctrl
.L_81336B5C:
/* 81336B5C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81336B60 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81336B64 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81336B68 | 41 80 FF D0 */	blt .L_81336B38
/* 81336B6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336B70 | 48 2C 29 A1 */	bl _restgpr_28
/* 81336B74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81336B78 | 7C 08 03 A6 */	mtlr r0
/* 81336B7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81336B80 | 4E 80 00 20 */	blr
.endfn setForceInvalid__Q33ipl10controller6MasterFb

# .text:0xEB8 | 0x81336B84 | size: 0x94
# ipl::controller::Master::call(unsigned long, bool (ipl::controller::Interface::*)(unsigned long) const) const
.fn call__Q33ipl10controller6MasterCFUlMQ33ipl10controller9InterfaceFPCvPCvUl_b, global
/* 81336B84 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81336B88 | 7C 08 02 A6 */	mflr r0
/* 81336B8C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81336B90 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81336B94 | 48 2C 29 25 */	bl _savegpr_25
/* 81336B98 | 7C 79 1B 78 */	mr r25, r3
/* 81336B9C | 7C 9A 23 78 */	mr r26, r4
/* 81336BA0 | 7C BB 2B 78 */	mr r27, r5
/* 81336BA4 | 3B A0 00 00 */	li r29, 0x0
/* 81336BA8 | 3B 80 00 00 */	li r28, 0x0
/* 81336BAC | 3B E0 00 00 */	li r31, 0x0
.L_81336BB0:
/* 81336BB0 | 80 79 00 04 */	lwz r3, 0x4(r25)
/* 81336BB4 | 3B C0 00 00 */	li r30, 0x0
/* 81336BB8 | 7C 63 F8 2E */	lwzx r3, r3, r31
/* 81336BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336BC0 | 41 82 00 20 */	beq .L_81336BE0
/* 81336BC4 | 7F 44 D3 78 */	mr r4, r26
/* 81336BC8 | 7F 6C DB 78 */	mr r12, r27
/* 81336BCC | 48 2C 27 A5 */	bl __ptmf_scall
/* 81336BD0 | 60 00 00 00 */	nop
/* 81336BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336BD8 | 41 82 00 08 */	beq .L_81336BE0
/* 81336BDC | 3B C0 00 01 */	li r30, 0x1
.L_81336BE0:
/* 81336BE0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81336BE4 | 7F A3 F3 78 */	or r3, r29, r30
/* 81336BE8 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81336BEC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81336BF0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81336BF4 | 7F A0 19 10 */	subfe r29, r0, r3
/* 81336BF8 | 41 80 FF B8 */	blt .L_81336BB0
/* 81336BFC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81336C00 | 7F A3 EB 78 */	mr r3, r29
/* 81336C04 | 48 2C 29 01 */	bl _restgpr_25
/* 81336C08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81336C0C | 7C 08 03 A6 */	mtlr r0
/* 81336C10 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81336C14 | 4E 80 00 20 */	blr
.endfn call__Q33ipl10controller6MasterCFUlMQ33ipl10controller9InterfaceFPCvPCvUl_b

# .text:0xF4C | 0x81336C18 | size: 0x4
# ipl::controller::Interface::read()
.fn read__Q33ipl10controller9InterfaceFv, global
/* 81336C18 | 4E 80 00 20 */	blr
.endfn read__Q33ipl10controller9InterfaceFv

# .text:0xF50 | 0x81336C1C | size: 0x8
# ipl::controller::Interface::getSubStickY() const
.fn getSubStickY__Q33ipl10controller9InterfaceCFv, global
/* 81336C1C | 38 60 00 00 */	li r3, 0x0
/* 81336C20 | 4E 80 00 20 */	blr
.endfn getSubStickY__Q33ipl10controller9InterfaceCFv

# .text:0xF58 | 0x81336C24 | size: 0x8
# ipl::controller::Interface::getSubStickX() const
.fn getSubStickX__Q33ipl10controller9InterfaceCFv, global
/* 81336C24 | 38 60 00 00 */	li r3, 0x0
/* 81336C28 | 4E 80 00 20 */	blr
.endfn getSubStickX__Q33ipl10controller9InterfaceCFv

# .text:0xF60 | 0x81336C2C | size: 0x8
# ipl::controller::Interface::getMainStickY() const
.fn getMainStickY__Q33ipl10controller9InterfaceCFv, global
/* 81336C2C | 38 60 00 00 */	li r3, 0x0
/* 81336C30 | 4E 80 00 20 */	blr
.endfn getMainStickY__Q33ipl10controller9InterfaceCFv

# .text:0xF68 | 0x81336C34 | size: 0x8
# ipl::controller::Interface::getMainStickX() const
.fn getMainStickX__Q33ipl10controller9InterfaceCFv, global
/* 81336C34 | 38 60 00 00 */	li r3, 0x0
/* 81336C38 | 4E 80 00 20 */	blr
.endfn getMainStickX__Q33ipl10controller9InterfaceCFv

# .text:0xF70 | 0x81336C3C | size: 0x8
# ipl::controller::Interface::isValidDpd() const
.fn isValidDpd__Q33ipl10controller9InterfaceCFv, global
/* 81336C3C | 38 60 00 00 */	li r3, 0x0
/* 81336C40 | 4E 80 00 20 */	blr
.endfn isValidDpd__Q33ipl10controller9InterfaceCFv

# .text:0xF78 | 0x81336C44 | size: 0x8
# ipl::controller::Interface::getPADStatus() const
.fn getPADStatus__Q33ipl10controller9InterfaceCFv, global
/* 81336C44 | 38 60 00 00 */	li r3, 0x0
/* 81336C48 | 4E 80 00 20 */	blr
.endfn getPADStatus__Q33ipl10controller9InterfaceCFv

# .text:0xF80 | 0x81336C4C | size: 0x8
# ipl::controller::Interface::getDpdDistance() const
.fn getDpdDistance__Q33ipl10controller9InterfaceCFv, global
/* 81336C4C | C0 22 80 54 */	lfs f1, lbl_81694454@sda21(r0)
/* 81336C50 | 4E 80 00 20 */	blr
.endfn getDpdDistance__Q33ipl10controller9InterfaceCFv

# .text:0xF88 | 0x81336C54 | size: 0x20
# ipl::controller::Interface::getHorizon() const
.fn getHorizon__Q33ipl10controller9InterfaceCFv, global
/* 81336C54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336C58 | C0 02 80 54 */	lfs f0, lbl_81694454@sda21(r0)
/* 81336C5C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81336C60 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81336C64 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81336C68 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81336C6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336C70 | 4E 80 00 20 */	blr
.endfn getHorizon__Q33ipl10controller9InterfaceCFv

# .text:0xFA8 | 0x81336C74 | size: 0x20
# ipl::controller::Interface::getDpdProjectionPos() const
.fn getDpdProjectionPos__Q33ipl10controller9InterfaceCFv, global
/* 81336C74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336C78 | C0 02 80 54 */	lfs f0, lbl_81694454@sda21(r0)
/* 81336C7C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81336C80 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81336C84 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81336C88 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81336C8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336C90 | 4E 80 00 20 */	blr
.endfn getDpdProjectionPos__Q33ipl10controller9InterfaceCFv

# .text:0xFC8 | 0x81336C94 | size: 0x20
# ipl::controller::Interface::getDpdPos() const
.fn getDpdPos__Q33ipl10controller9InterfaceCFv, global
/* 81336C94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336C98 | C0 02 80 54 */	lfs f0, lbl_81694454@sda21(r0)
/* 81336C9C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81336CA0 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81336CA4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81336CA8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81336CAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336CB0 | 4E 80 00 20 */	blr
.endfn getDpdPos__Q33ipl10controller9InterfaceCFv

# .text:0xFE8 | 0x81336CB4 | size: 0x8
# ipl::controller::Interface::getClassicReleaseFlag() const
.fn getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv, global
/* 81336CB4 | 38 60 00 00 */	li r3, 0x0
/* 81336CB8 | 4E 80 00 20 */	blr
.endfn getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv

# .text:0xFF0 | 0x81336CBC | size: 0x8
# ipl::controller::Interface::getClassicTrigFlag() const
.fn getClassicTrigFlag__Q33ipl10controller9InterfaceCFv, global
/* 81336CBC | 38 60 00 00 */	li r3, 0x0
/* 81336CC0 | 4E 80 00 20 */	blr
.endfn getClassicTrigFlag__Q33ipl10controller9InterfaceCFv

# .text:0xFF8 | 0x81336CC4 | size: 0x8
# ipl::controller::Interface::getClassicHoldFlag() const
.fn getClassicHoldFlag__Q33ipl10controller9InterfaceCFv, global
/* 81336CC4 | 38 60 00 00 */	li r3, 0x0
/* 81336CC8 | 4E 80 00 20 */	blr
.endfn getClassicHoldFlag__Q33ipl10controller9InterfaceCFv

# .text:0x1000 | 0x81336CCC | size: 0x8
# ipl::controller::Interface::getReleaseFlag() const
.fn getReleaseFlag__Q33ipl10controller9InterfaceCFv, global
/* 81336CCC | 38 60 00 00 */	li r3, 0x0
/* 81336CD0 | 4E 80 00 20 */	blr
.endfn getReleaseFlag__Q33ipl10controller9InterfaceCFv

# .text:0x1008 | 0x81336CD4 | size: 0x8
# ipl::controller::Interface::getTrigFlag() const
.fn getTrigFlag__Q33ipl10controller9InterfaceCFv, global
/* 81336CD4 | 38 60 00 00 */	li r3, 0x0
/* 81336CD8 | 4E 80 00 20 */	blr
.endfn getTrigFlag__Q33ipl10controller9InterfaceCFv

# .text:0x1010 | 0x81336CDC | size: 0x8
# ipl::controller::Interface::getHoldFlag() const
.fn getHoldFlag__Q33ipl10controller9InterfaceCFv, global
/* 81336CDC | 38 60 00 00 */	li r3, 0x0
/* 81336CE0 | 4E 80 00 20 */	blr
.endfn getHoldFlag__Q33ipl10controller9InterfaceCFv

# .text:0x1018 | 0x81336CE4 | size: 0x4
# ipl::controller::Interface::cancelRumbling()
.fn cancelRumbling__Q33ipl10controller9InterfaceFv, global
/* 81336CE4 | 4E 80 00 20 */	blr
.endfn cancelRumbling__Q33ipl10controller9InterfaceFv

# .text:0x101C | 0x81336CE8 | size: 0x8
# ipl::controller::Interface::rumble(int)
.fn rumble__Q33ipl10controller9InterfaceFi, global
/* 81336CE8 | 38 60 00 00 */	li r3, 0x0
/* 81336CEC | 4E 80 00 20 */	blr
.endfn rumble__Q33ipl10controller9InterfaceFi

# .text:0x1024 | 0x81336CF0 | size: 0x8
# ipl::controller::Interface::pinchOffTrg() const
.fn pinchOffTrg__Q33ipl10controller9InterfaceCFv, global
/* 81336CF0 | 38 60 00 00 */	li r3, 0x0
/* 81336CF4 | 4E 80 00 20 */	blr
.endfn pinchOffTrg__Q33ipl10controller9InterfaceCFv

# .text:0x102C | 0x81336CF8 | size: 0x8
# ipl::controller::Interface::pinchTrg() const
.fn pinchTrg__Q33ipl10controller9InterfaceCFv, global
/* 81336CF8 | 38 60 00 00 */	li r3, 0x0
/* 81336CFC | 4E 80 00 20 */	blr
.endfn pinchTrg__Q33ipl10controller9InterfaceCFv

# .text:0x1034 | 0x81336D00 | size: 0x8
# ipl::controller::Interface::getChannel() const
.fn getChannel__Q33ipl10controller9InterfaceCFv, global
/* 81336D00 | 38 60 FF FF */	li r3, -0x1
/* 81336D04 | 4E 80 00 20 */	blr
.endfn getChannel__Q33ipl10controller9InterfaceCFv

# .text:0x103C | 0x81336D08 | size: 0x8
# ipl::controller::Interface::getType() const
.fn getType__Q33ipl10controller9InterfaceCFv, global
/* 81336D08 | 38 60 FF FF */	li r3, -0x1
/* 81336D0C | 4E 80 00 20 */	blr
.endfn getType__Q33ipl10controller9InterfaceCFv

# .text:0x1044 | 0x81336D10 | size: 0x8
# ipl::controller::Base::setForceInvalid(bool)
.fn setForceInvalid__Q33ipl10controller4BaseFb, global
/* 81336D10 | 98 83 00 1C */	stb r4, 0x1c(r3)
/* 81336D14 | 4E 80 00 20 */	blr
.endfn setForceInvalid__Q33ipl10controller4BaseFb

# .text:0x104C | 0x81336D18 | size: 0x8
# ipl::controller::Base::getType() const
.fn getType__Q33ipl10controller4BaseCFv, global
/* 81336D18 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 81336D1C | 4E 80 00 20 */	blr
.endfn getType__Q33ipl10controller4BaseCFv

# .text:0x1054 | 0x81336D20 | size: 0x8
# ipl::controller::Base::getChannel() const
.fn getChannel__Q33ipl10controller4BaseCFv, global
/* 81336D20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81336D24 | 4E 80 00 20 */	blr
.endfn getChannel__Q33ipl10controller4BaseCFv

# .text:0x105C | 0x81336D28 | size: 0x8
# ipl::controller::Revolution::getKPADStatus() const
.fn getKPADStatus__Q33ipl10controller10RevolutionCFv, global
/* 81336D28 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336D2C | 4E 80 00 20 */	blr
.endfn getKPADStatus__Q33ipl10controller10RevolutionCFv

# .text:0x1064 | 0x81336D30 | size: 0xC
# ipl::controller::Revolution::getDpdDistance() const
.fn getDpdDistance__Q33ipl10controller10RevolutionCFv, global
/* 81336D30 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336D34 | C0 23 00 48 */	lfs f1, 0x48(r3)
/* 81336D38 | 4E 80 00 20 */	blr
.endfn getDpdDistance__Q33ipl10controller10RevolutionCFv

# .text:0x1070 | 0x81336D3C | size: 0xC
# ipl::controller::Revolution::getReleaseFlag() const
.fn getReleaseFlag__Q33ipl10controller10RevolutionCFv, global
/* 81336D3C | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336D40 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81336D44 | 4E 80 00 20 */	blr
.endfn getReleaseFlag__Q33ipl10controller10RevolutionCFv

# .text:0x107C | 0x81336D48 | size: 0xC
# ipl::controller::Revolution::getTrigFlag() const
.fn getTrigFlag__Q33ipl10controller10RevolutionCFv, global
/* 81336D48 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336D4C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81336D50 | 4E 80 00 20 */	blr
.endfn getTrigFlag__Q33ipl10controller10RevolutionCFv

# .text:0x1088 | 0x81336D54 | size: 0xC
# ipl::controller::Revolution::getHoldFlag() const
.fn getHoldFlag__Q33ipl10controller10RevolutionCFv, global
/* 81336D54 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336D58 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81336D5C | 4E 80 00 20 */	blr
.endfn getHoldFlag__Q33ipl10controller10RevolutionCFv

# .text:0x1094 | 0x81336D60 | size: 0x6C
# ipl::controller::Revolution::pinchOffTrg() const
.fn pinchOffTrg__Q33ipl10controller10RevolutionCFv, global
/* 81336D60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336D64 | 7C 08 02 A6 */	mflr r0
/* 81336D68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336D6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81336D70 | 3B E0 00 00 */	li r31, 0x0
/* 81336D74 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81336D78 | 7C 7E 1B 78 */	mr r30, r3
/* 81336D7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336D80 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81336D84 | 7D 89 03 A6 */	mtctr r12
/* 81336D88 | 4E 80 04 21 */	bctrl
/* 81336D8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336D90 | 41 82 00 20 */	beq .L_81336DB0
/* 81336D94 | 88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 81336D98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336D9C | 40 82 00 14 */	bne .L_81336DB0
/* 81336DA0 | 88 1E 00 1E */	lbz r0, 0x1e(r30)
/* 81336DA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336DA8 | 41 82 00 08 */	beq .L_81336DB0
/* 81336DAC | 3B E0 00 01 */	li r31, 0x1
.L_81336DB0:
/* 81336DB0 | 7F E3 FB 78 */	mr r3, r31
/* 81336DB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336DB8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81336DBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81336DC0 | 7C 08 03 A6 */	mtlr r0
/* 81336DC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336DC8 | 4E 80 00 20 */	blr
.endfn pinchOffTrg__Q33ipl10controller10RevolutionCFv

# .text:0x1100 | 0x81336DCC | size: 0x60
# ipl::controller::Revolution::pinch() const
.fn pinch__Q33ipl10controller10RevolutionCFv, global
/* 81336DCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336DD0 | 7C 08 02 A6 */	mflr r0
/* 81336DD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336DD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81336DDC | 3B E0 00 00 */	li r31, 0x0
/* 81336DE0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81336DE4 | 7C 7E 1B 78 */	mr r30, r3
/* 81336DE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336DEC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81336DF0 | 7D 89 03 A6 */	mtctr r12
/* 81336DF4 | 4E 80 04 21 */	bctrl
/* 81336DF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336DFC | 41 82 00 14 */	beq .L_81336E10
/* 81336E00 | 88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 81336E04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336E08 | 41 82 00 08 */	beq .L_81336E10
/* 81336E0C | 3B E0 00 01 */	li r31, 0x1
.L_81336E10:
/* 81336E10 | 7F E3 FB 78 */	mr r3, r31
/* 81336E14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336E18 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81336E1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81336E20 | 7C 08 03 A6 */	mtlr r0
/* 81336E24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336E28 | 4E 80 00 20 */	blr
.endfn pinch__Q33ipl10controller10RevolutionCFv

# .text:0x1160 | 0x81336E2C | size: 0x6C
# ipl::controller::Revolution::pinchTrg() const
.fn pinchTrg__Q33ipl10controller10RevolutionCFv, global
/* 81336E2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336E30 | 7C 08 02 A6 */	mflr r0
/* 81336E34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336E38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81336E3C | 3B E0 00 00 */	li r31, 0x0
/* 81336E40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81336E44 | 7C 7E 1B 78 */	mr r30, r3
/* 81336E48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336E4C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81336E50 | 7D 89 03 A6 */	mtctr r12
/* 81336E54 | 4E 80 04 21 */	bctrl
/* 81336E58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336E5C | 41 82 00 20 */	beq .L_81336E7C
/* 81336E60 | 88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 81336E64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336E68 | 41 82 00 14 */	beq .L_81336E7C
/* 81336E6C | 88 1E 00 1E */	lbz r0, 0x1e(r30)
/* 81336E70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336E74 | 40 82 00 08 */	bne .L_81336E7C
/* 81336E78 | 3B E0 00 01 */	li r31, 0x1
.L_81336E7C:
/* 81336E7C | 7F E3 FB 78 */	mr r3, r31
/* 81336E80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336E84 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81336E88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81336E8C | 7C 08 03 A6 */	mtlr r0
/* 81336E90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336E94 | 4E 80 00 20 */	blr
.endfn pinchTrg__Q33ipl10controller10RevolutionCFv

# .text:0x11CC | 0x81336E98 | size: 0x64
# ipl::controller::Revolution::repeat(unsigned long) const
.fn repeat__Q33ipl10controller10RevolutionCFUl, global
/* 81336E98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336E9C | 7C 08 02 A6 */	mflr r0
/* 81336EA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336EA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81336EA8 | 3B E0 00 00 */	li r31, 0x0
/* 81336EAC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81336EB0 | 7C 7E 1B 78 */	mr r30, r3
/* 81336EB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336EB8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81336EBC | 7D 89 03 A6 */	mtctr r12
/* 81336EC0 | 4E 80 04 21 */	bctrl
/* 81336EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336EC8 | 41 82 00 18 */	beq .L_81336EE0
/* 81336ECC | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81336ED0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81336ED4 | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 81336ED8 | 41 82 00 08 */	beq .L_81336EE0
/* 81336EDC | 3B E0 00 01 */	li r31, 0x1
.L_81336EE0:
/* 81336EE0 | 7F E3 FB 78 */	mr r3, r31
/* 81336EE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336EE8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81336EEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81336EF0 | 7C 08 03 A6 */	mtlr r0
/* 81336EF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336EF8 | 4E 80 00 20 */	blr
.endfn repeat__Q33ipl10controller10RevolutionCFUl

# .text:0x1230 | 0x81336EFC | size: 0x10
# ipl::controller::Classic::isValidDpdClassic() const
.fn isValidDpdClassic__Q33ipl10controller7ClassicCFv, global
/* 81336EFC | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81336F00 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81336F04 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81336F08 | 4E 80 00 20 */	blr
.endfn isValidDpdClassic__Q33ipl10controller7ClassicCFv

# .text:0x1240 | 0x81336F0C | size: 0x68
# ipl::controller::Classic::isValidDpd() const
.fn isValidDpd__Q33ipl10controller7ClassicCFv, global
/* 81336F0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81336F10 | 7C 08 02 A6 */	mflr r0
/* 81336F14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81336F18 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81336F1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81336F20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336F24 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81336F28 | 7C 7E 1B 78 */	mr r30, r3
/* 81336F2C | 41 82 00 0C */	beq .L_81336F38
/* 81336F30 | 3B E0 00 00 */	li r31, 0x0
/* 81336F34 | 48 00 00 24 */	b .L_81336F58
.L_81336F38:
/* 81336F38 | 3B E0 00 00 */	li r31, 0x0
/* 81336F3C | 4B FF F2 D9 */	bl isValidDpd__Q33ipl10controller10RevolutionCFv
/* 81336F40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336F44 | 40 82 00 10 */	bne .L_81336F54
/* 81336F48 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 81336F4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81336F50 | 41 82 00 08 */	beq .L_81336F58
.L_81336F54:
/* 81336F54 | 3B E0 00 01 */	li r31, 0x1
.L_81336F58:
/* 81336F58 | 7F E3 FB 78 */	mr r3, r31
/* 81336F5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81336F60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81336F64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81336F68 | 7C 08 03 A6 */	mtlr r0
/* 81336F6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81336F70 | 4E 80 00 20 */	blr
.endfn isValidDpd__Q33ipl10controller7ClassicCFv

# .text:0x12A8 | 0x81336F74 | size: 0xC
# ipl::controller::Classic::getClassicReleaseFlag() const
.fn getClassicReleaseFlag__Q33ipl10controller7ClassicCFv, global
/* 81336F74 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336F78 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81336F7C | 4E 80 00 20 */	blr
.endfn getClassicReleaseFlag__Q33ipl10controller7ClassicCFv

# .text:0x12B4 | 0x81336F80 | size: 0xC
# ipl::controller::Classic::getClassicTrigFlag() const
.fn getClassicTrigFlag__Q33ipl10controller7ClassicCFv, global
/* 81336F80 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81336F84 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81336F88 | 4E 80 00 20 */	blr
.endfn getClassicTrigFlag__Q33ipl10controller7ClassicCFv

# .text:0x12C0 | 0x81336F8C | size: 0x8C
# ipl::controller::Classic::upTrg(unsigned long) const
.fn upTrg__Q33ipl10controller7ClassicCFUl, global
/* 81336F8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81336F90 | 7C 08 02 A6 */	mflr r0
/* 81336F94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81336F98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81336F9C | 48 2C 25 2D */	bl _savegpr_29
/* 81336FA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81336FA4 | 7C 7D 1B 78 */	mr r29, r3
/* 81336FA8 | 7C 9E 23 78 */	mr r30, r4
/* 81336FAC | 3B E0 00 00 */	li r31, 0x0
/* 81336FB0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81336FB4 | 7D 89 03 A6 */	mtctr r12
/* 81336FB8 | 4E 80 04 21 */	bctrl
/* 81336FBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81336FC0 | 41 82 00 3C */	beq .L_81336FFC
/* 81336FC4 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 81336FC8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81336FCC | 38 80 00 01 */	li r4, 0x1
/* 81336FD0 | 80 65 00 08 */	lwz r3, 0x8(r5)
/* 81336FD4 | 7C 60 00 39 */	and. r0, r3, r0
/* 81336FD8 | 40 82 00 18 */	bne .L_81336FF0
/* 81336FDC | 80 65 00 68 */	lwz r3, 0x68(r5)
/* 81336FE0 | 57 C0 84 3E */	srwi r0, r30, 16
/* 81336FE4 | 7C 60 00 39 */	and. r0, r3, r0
/* 81336FE8 | 40 82 00 08 */	bne .L_81336FF0
/* 81336FEC | 38 80 00 00 */	li r4, 0x0
.L_81336FF0:
/* 81336FF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81336FF4 | 41 82 00 08 */	beq .L_81336FFC
/* 81336FF8 | 3B E0 00 01 */	li r31, 0x1
.L_81336FFC:
/* 81336FFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337000 | 7F E3 FB 78 */	mr r3, r31
/* 81337004 | 48 2C 25 11 */	bl _restgpr_29
/* 81337008 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133700C | 7C 08 03 A6 */	mtlr r0
/* 81337010 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81337014 | 4E 80 00 20 */	blr
.endfn upTrg__Q33ipl10controller7ClassicCFUl

# .text:0x134C | 0x81337018 | size: 0x8C
# ipl::controller::Classic::downTrg(unsigned long) const
.fn downTrg__Q33ipl10controller7ClassicCFUl, global
/* 81337018 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133701C | 7C 08 02 A6 */	mflr r0
/* 81337020 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81337024 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337028 | 48 2C 24 A1 */	bl _savegpr_29
/* 8133702C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81337030 | 7C 7D 1B 78 */	mr r29, r3
/* 81337034 | 7C 9E 23 78 */	mr r30, r4
/* 81337038 | 3B E0 00 00 */	li r31, 0x0
/* 8133703C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81337040 | 7D 89 03 A6 */	mtctr r12
/* 81337044 | 4E 80 04 21 */	bctrl
/* 81337048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133704C | 41 82 00 3C */	beq .L_81337088
/* 81337050 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 81337054 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81337058 | 38 80 00 01 */	li r4, 0x1
/* 8133705C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 81337060 | 7C 60 00 39 */	and. r0, r3, r0
/* 81337064 | 40 82 00 18 */	bne .L_8133707C
/* 81337068 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8133706C | 57 C0 84 3E */	srwi r0, r30, 16
/* 81337070 | 7C 60 00 39 */	and. r0, r3, r0
/* 81337074 | 40 82 00 08 */	bne .L_8133707C
/* 81337078 | 38 80 00 00 */	li r4, 0x0
.L_8133707C:
/* 8133707C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81337080 | 41 82 00 08 */	beq .L_81337088
/* 81337084 | 3B E0 00 01 */	li r31, 0x1
.L_81337088:
/* 81337088 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133708C | 7F E3 FB 78 */	mr r3, r31
/* 81337090 | 48 2C 24 85 */	bl _restgpr_29
/* 81337094 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81337098 | 7C 08 03 A6 */	mtlr r0
/* 8133709C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813370A0 | 4E 80 00 20 */	blr
.endfn downTrg__Q33ipl10controller7ClassicCFUl

# .text:0x13D8 | 0x813370A4 | size: 0x8C
# ipl::controller::Classic::down(unsigned long) const
.fn down__Q33ipl10controller7ClassicCFUl, global
/* 813370A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813370A8 | 7C 08 02 A6 */	mflr r0
/* 813370AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813370B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813370B4 | 48 2C 24 15 */	bl _savegpr_29
/* 813370B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813370BC | 7C 7D 1B 78 */	mr r29, r3
/* 813370C0 | 7C 9E 23 78 */	mr r30, r4
/* 813370C4 | 3B E0 00 00 */	li r31, 0x0
/* 813370C8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813370CC | 7D 89 03 A6 */	mtctr r12
/* 813370D0 | 4E 80 04 21 */	bctrl
/* 813370D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813370D8 | 41 82 00 3C */	beq .L_81337114
/* 813370DC | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 813370E0 | 38 80 00 01 */	li r4, 0x1
/* 813370E4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813370E8 | 7C 00 F0 38 */	and r0, r0, r30
/* 813370EC | 54 00 04 3F */	clrlwi. r0, r0, 16
/* 813370F0 | 40 82 00 18 */	bne .L_81337108
/* 813370F4 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813370F8 | 57 C0 84 3E */	srwi r0, r30, 16
/* 813370FC | 7C 60 00 39 */	and. r0, r3, r0
/* 81337100 | 40 82 00 08 */	bne .L_81337108
/* 81337104 | 38 80 00 00 */	li r4, 0x0
.L_81337108:
/* 81337108 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133710C | 41 82 00 08 */	beq .L_81337114
/* 81337110 | 3B E0 00 01 */	li r31, 0x1
.L_81337114:
/* 81337114 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337118 | 7F E3 FB 78 */	mr r3, r31
/* 8133711C | 48 2C 23 F9 */	bl _restgpr_29
/* 81337120 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81337124 | 7C 08 03 A6 */	mtlr r0
/* 81337128 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133712C | 4E 80 00 20 */	blr
.endfn down__Q33ipl10controller7ClassicCFUl

# .text:0x1464 | 0x81337130 | size: 0x3C
# ipl::controller::Revolution::getHorizon() const
.fn getHorizon__Q33ipl10controller10RevolutionCFv, global
/* 81337130 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337134 | 7C 08 02 A6 */	mflr r0
/* 81337138 | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 8133713C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337140 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81337144 | C0 24 00 34 */	lfs f1, 0x34(r4)
/* 81337148 | C0 44 00 38 */	lfs f2, 0x38(r4)
/* 8133714C | 4B FF F4 1D */	bl __ct__Q33ipl4math4VEC2Fff
/* 81337150 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337154 | 7C 64 1B 78 */	mr r4, r3
/* 81337158 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133715C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81337160 | 7C 08 03 A6 */	mtlr r0
/* 81337164 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337168 | 4E 80 00 20 */	blr
.endfn getHorizon__Q33ipl10controller10RevolutionCFv

# .text:0x14A0 | 0x8133716C | size: 0x3C
# ipl::controller::Revolution::getDpdPos() const
.fn getDpdPos__Q33ipl10controller10RevolutionCFv, global
/* 8133716C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337170 | 7C 08 02 A6 */	mflr r0
/* 81337174 | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 81337178 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133717C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81337180 | C0 24 00 20 */	lfs f1, 0x20(r4)
/* 81337184 | C0 44 00 24 */	lfs f2, 0x24(r4)
/* 81337188 | 4B FF F3 E1 */	bl __ct__Q33ipl4math4VEC2Fff
/* 8133718C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337190 | 7C 64 1B 78 */	mr r4, r3
/* 81337194 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81337198 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8133719C | 7C 08 03 A6 */	mtlr r0
/* 813371A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813371A4 | 4E 80 00 20 */	blr
.endfn getDpdPos__Q33ipl10controller10RevolutionCFv

# .text:0x14DC | 0x813371A8 | size: 0x6C
# ipl::controller::Revolution::upTrg(unsigned long) const
.fn upTrg__Q33ipl10controller10RevolutionCFUl, global
/* 813371A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813371AC | 7C 08 02 A6 */	mflr r0
/* 813371B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813371B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813371B8 | 48 2C 23 11 */	bl _savegpr_29
/* 813371BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813371C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813371C4 | 7C 9E 23 78 */	mr r30, r4
/* 813371C8 | 3B E0 00 00 */	li r31, 0x0
/* 813371CC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813371D0 | 7D 89 03 A6 */	mtctr r12
/* 813371D4 | 4E 80 04 21 */	bctrl
/* 813371D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813371DC | 41 82 00 1C */	beq .L_813371F8
/* 813371E0 | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 813371E4 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 813371E8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813371EC | 7C 60 00 39 */	and. r0, r3, r0
/* 813371F0 | 41 82 00 08 */	beq .L_813371F8
/* 813371F4 | 3B E0 00 01 */	li r31, 0x1
.L_813371F8:
/* 813371F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813371FC | 7F E3 FB 78 */	mr r3, r31
/* 81337200 | 48 2C 23 15 */	bl _restgpr_29
/* 81337204 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81337208 | 7C 08 03 A6 */	mtlr r0
/* 8133720C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81337210 | 4E 80 00 20 */	blr
.endfn upTrg__Q33ipl10controller10RevolutionCFUl

# .text:0x1548 | 0x81337214 | size: 0x6C
# ipl::controller::Revolution::downTrg(unsigned long) const
.fn downTrg__Q33ipl10controller10RevolutionCFUl, global
/* 81337214 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81337218 | 7C 08 02 A6 */	mflr r0
/* 8133721C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81337220 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337224 | 48 2C 22 A5 */	bl _savegpr_29
/* 81337228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133722C | 7C 7D 1B 78 */	mr r29, r3
/* 81337230 | 7C 9E 23 78 */	mr r30, r4
/* 81337234 | 3B E0 00 00 */	li r31, 0x0
/* 81337238 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8133723C | 7D 89 03 A6 */	mtctr r12
/* 81337240 | 4E 80 04 21 */	bctrl
/* 81337244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337248 | 41 82 00 1C */	beq .L_81337264
/* 8133724C | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 81337250 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81337254 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81337258 | 7C 60 00 39 */	and. r0, r3, r0
/* 8133725C | 41 82 00 08 */	beq .L_81337264
/* 81337260 | 3B E0 00 01 */	li r31, 0x1
.L_81337264:
/* 81337264 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337268 | 7F E3 FB 78 */	mr r3, r31
/* 8133726C | 48 2C 22 A9 */	bl _restgpr_29
/* 81337270 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81337274 | 7C 08 03 A6 */	mtlr r0
/* 81337278 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133727C | 4E 80 00 20 */	blr
.endfn downTrg__Q33ipl10controller10RevolutionCFUl

# .text:0x15B4 | 0x81337280 | size: 0x58
# ipl::controller::Classic::~Classic()
.fn __dt__Q33ipl10controller7ClassicFv, global
/* 81337280 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337284 | 7C 08 02 A6 */	mflr r0
/* 81337288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133728C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337290 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81337294 | 7C 9F 23 78 */	mr r31, r4
/* 81337298 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133729C | 7C 7E 1B 78 */	mr r30, r3
/* 813372A0 | 41 82 00 1C */	beq .L_813372BC
/* 813372A4 | 38 80 00 00 */	li r4, 0x0
/* 813372A8 | 4B FF F2 81 */	bl __dt__Q33ipl10controller10RevolutionFv
/* 813372AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813372B0 | 40 81 00 0C */	ble .L_813372BC
/* 813372B4 | 7F C3 F3 78 */	mr r3, r30
/* 813372B8 | 48 2C 0E 2D */	bl __dl__FPv
.L_813372BC:
/* 813372BC | 7F C3 F3 78 */	mr r3, r30
/* 813372C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813372C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813372C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813372CC | 7C 08 03 A6 */	mtlr r0
/* 813372D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813372D4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl10controller7ClassicFv

# .text:0x160C | 0x813372D8 | size: 0x40
# ipl::controller::Master::~Master()
.fn __dt__Q33ipl10controller6MasterFv, global
/* 813372D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813372DC | 7C 08 02 A6 */	mflr r0
/* 813372E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813372E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813372E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813372EC | 7C 7F 1B 78 */	mr r31, r3
/* 813372F0 | 41 82 00 10 */	beq .L_81337300
/* 813372F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813372F8 | 40 81 00 08 */	ble .L_81337300
/* 813372FC | 48 2C 0D E9 */	bl __dl__FPv
.L_81337300:
/* 81337300 | 7F E3 FB 78 */	mr r3, r31
/* 81337304 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81337308 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133730C | 7C 08 03 A6 */	mtlr r0
/* 81337310 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337314 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl10controller6MasterFv

# .text:0x164C | 0x81337318 | size: 0x18
# ipl::controller::Manager::alloc(unsigned long)
.fn alloc__Q33ipl10controller7ManagerFUl, global
/* 81337318 | 7C 64 1B 78 */	mr r4, r3
/* 8133731C | 80 6D A6 4C */	lwz r3, mpAllocator__Q33ipl10controller7Manager@sda21(r0)
/* 81337320 | 81 83 00 10 */	lwz r12, 0x10(r3)
/* 81337324 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81337328 | 7D 89 03 A6 */	mtctr r12
/* 8133732C | 4E 80 04 20 */	bctr
.endfn alloc__Q33ipl10controller7ManagerFUl

# .text:0x1664 | 0x81337330 | size: 0x38
# ipl::controller::Manager::free(void*)
.fn free__Q33ipl10controller7ManagerFPv, global
/* 81337330 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337334 | 7C 08 02 A6 */	mflr r0
/* 81337338 | 7C 64 1B 78 */	mr r4, r3
/* 8133733C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337340 | 80 6D A6 4C */	lwz r3, mpAllocator__Q33ipl10controller7Manager@sda21(r0)
/* 81337344 | 81 83 00 10 */	lwz r12, 0x10(r3)
/* 81337348 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8133734C | 7D 89 03 A6 */	mtctr r12
/* 81337350 | 4E 80 04 21 */	bctrl
/* 81337354 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337358 | 38 60 00 01 */	li r3, 0x1
/* 8133735C | 7C 08 03 A6 */	mtlr r0
/* 81337360 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337364 | 4E 80 00 20 */	blr
.endfn free__Q33ipl10controller7ManagerFPv

# .text:0x169C | 0x81337368 | size: 0x198
# ipl::controller::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl10controller7ManagerFPQ23EGG4Heap, global
/* 81337368 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133736C | 7C 08 02 A6 */	mflr r0
/* 81337370 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81337374 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337378 | 48 2C 21 51 */	bl _savegpr_29
/* 8133737C | 3C A0 81 63 */	lis r5, __vt__Q33ipl10controller6Master@ha
/* 81337380 | 7C 9E 23 78 */	mr r30, r4
/* 81337384 | 38 A5 46 D8 */	addi r5, r5, __vt__Q33ipl10controller6Master@l
/* 81337388 | 90 63 00 D4 */	stw r3, 0xd4(r3)
/* 8133738C | 7C 7D 1B 78 */	mr r29, r3
/* 81337390 | 38 80 00 00 */	li r4, 0x0
/* 81337394 | 90 A3 00 D0 */	stw r5, 0xd0(r3)
/* 81337398 | 38 A0 02 10 */	li r5, 0x210
/* 8133739C | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 813373A0 | 4B FF 8F 95 */	bl memset
/* 813373A4 | 7F A3 EB 78 */	mr r3, r29
/* 813373A8 | 38 80 00 00 */	li r4, 0x0
/* 813373AC | 38 A0 00 10 */	li r5, 0x10
/* 813373B0 | 4B FF 8F 85 */	bl memset
/* 813373B4 | 48 24 23 F5 */	bl fn_815797A8
/* 813373B8 | 80 8D A6 40 */	lwz r4, mpBuf__Q33ipl10controller7Manager@sda21(r0)
/* 813373BC | 3B E3 04 00 */	addi r31, r3, 0x400
/* 813373C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813373C4 | 41 82 00 20 */	beq .L_813373E4
/* 813373C8 | 80 6D A6 44 */	lwz r3, mpParentHeap__Q33ipl10controller7Manager@sda21(r0)
/* 813373CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813373D0 | 41 82 00 14 */	beq .L_813373E4
/* 813373D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813373D8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813373DC | 7D 89 03 A6 */	mtctr r12
/* 813373E0 | 4E 80 04 21 */	bctrl
.L_813373E4:
/* 813373E4 | 93 CD A6 44 */	stw r30, mpParentHeap__Q33ipl10controller7Manager@sda21(r0)
/* 813373E8 | 7F C3 F3 78 */	mr r3, r30
/* 813373EC | 7F E4 FB 78 */	mr r4, r31
/* 813373F0 | 38 A0 00 20 */	li r5, 0x20
/* 813373F4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813373F8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813373FC | 7D 89 03 A6 */	mtctr r12
/* 81337400 | 4E 80 04 21 */	bctrl
/* 81337404 | 80 0D A6 48 */	lwz r0, mpHeap__Q33ipl10controller7Manager@sda21(r0)
/* 81337408 | 90 6D A6 40 */	stw r3, mpBuf__Q33ipl10controller7Manager@sda21(r0)
/* 8133740C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81337410 | 41 82 00 18 */	beq .L_81337428
/* 81337414 | 7C 03 03 78 */	mr r3, r0
/* 81337418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133741C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81337420 | 7D 89 03 A6 */	mtctr r12
/* 81337424 | 4E 80 04 21 */	bctrl
.L_81337428:
/* 81337428 | 80 6D A6 40 */	lwz r3, mpBuf__Q33ipl10controller7Manager@sda21(r0)
/* 8133742C | 7F E4 FB 78 */	mr r4, r31
/* 81337430 | 38 A0 00 02 */	li r5, 0x2
/* 81337434 | 48 2C 01 A9 */	bl fn_815F75DC
/* 81337438 | 80 0D A6 4C */	lwz r0, mpAllocator__Q33ipl10controller7Manager@sda21(r0)
/* 8133743C | 90 6D A6 48 */	stw r3, mpHeap__Q33ipl10controller7Manager@sda21(r0)
/* 81337440 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81337444 | 41 82 00 20 */	beq .L_81337464
/* 81337448 | 41 82 00 1C */	beq .L_81337464
/* 8133744C | 7C 03 03 78 */	mr r3, r0
/* 81337450 | 38 80 00 01 */	li r4, 0x1
/* 81337454 | 81 83 00 10 */	lwz r12, 0x10(r3)
/* 81337458 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8133745C | 7D 89 03 A6 */	mtctr r12
/* 81337460 | 4E 80 04 21 */	bctrl
.L_81337464:
/* 81337464 | 7F C4 F3 78 */	mr r4, r30
/* 81337468 | 38 60 00 14 */	li r3, 0x14
/* 8133746C | 38 A0 00 04 */	li r5, 0x4
/* 81337470 | 48 2C 0C 41 */	bl __nw__FUlPQ23EGG4Heapi
/* 81337474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337478 | 7C 60 1B 78 */	mr r0, r3
/* 8133747C | 41 82 00 14 */	beq .L_81337490
/* 81337480 | 80 8D A6 48 */	lwz r4, mpHeap__Q33ipl10controller7Manager@sda21(r0)
/* 81337484 | 38 A0 00 04 */	li r5, 0x4
/* 81337488 | 48 2B E5 F5 */	bl fn_815F5A7C
/* 8133748C | 7C 60 1B 78 */	mr r0, r3
.L_81337490:
/* 81337490 | 3C 60 81 33 */	lis r3, alloc__Q33ipl10controller7ManagerFUl@ha
/* 81337494 | 3C 80 81 33 */	lis r4, free__Q33ipl10controller7ManagerFPv@ha
/* 81337498 | 90 0D A6 4C */	stw r0, mpAllocator__Q33ipl10controller7Manager@sda21(r0)
/* 8133749C | 38 63 73 18 */	addi r3, r3, alloc__Q33ipl10controller7ManagerFUl@l
/* 813374A0 | 38 84 73 30 */	addi r4, r4, free__Q33ipl10controller7ManagerFPv@l
/* 813374A4 | 48 24 23 01 */	bl fn_815797A4
/* 813374A8 | 48 25 0C 09 */	bl fn_815880B0
/* 813374AC | 48 23 2E 81 */	bl fn_8156A32C
/* 813374B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813374B4 | 3B C0 00 00 */	li r30, 0x0
.L_813374B8:
/* 813374B8 | 57 E3 06 3E */	clrlwi r3, r31, 24
/* 813374BC | 48 24 5E CD */	bl fn_8157D388
/* 813374C0 | C0 22 80 78 */	lfs f1, lbl_81694478@sda21(r0)
/* 813374C4 | 7F C3 F3 78 */	mr r3, r30
/* 813374C8 | C0 42 80 7C */	lfs f2, lbl_8169447C@sda21(r0)
/* 813374CC | 48 24 E1 55 */	bl fn_81585620
/* 813374D0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813374D4 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813374D8 | 41 80 FF E0 */	blt .L_813374B8
/* 813374DC | 7F A3 EB 78 */	mr r3, r29
/* 813374E0 | 48 00 00 21 */	bl read__Q33ipl10controller7ManagerFv
/* 813374E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813374E8 | 7F A3 EB 78 */	mr r3, r29
/* 813374EC | 48 2C 20 29 */	bl _restgpr_29
/* 813374F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813374F4 | 7C 08 03 A6 */	mtlr r0
/* 813374F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813374FC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl10controller7ManagerFPQ23EGG4Heap

# .text:0x1834 | 0x81337500 | size: 0x2F8
# ipl::controller::Manager::read()
.fn read__Q33ipl10controller7ManagerFv, global
/* 81337500 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81337504 | 7C 08 02 A6 */	mflr r0
/* 81337508 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8133750C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81337510 | 48 2C 1F 85 */	bl _savegpr_16
/* 81337514 | 3B 20 00 00 */	li r25, 0x0
/* 81337518 | 3F A0 81 63 */	lis r29, __vt__Q33ipl10controller4Core@ha
/* 8133751C | 3F C0 81 63 */	lis r30, __vt__Q33ipl10controller9FreeStyle@ha
/* 81337520 | 7C 78 1B 78 */	mr r24, r3
/* 81337524 | 7F 3C CB 78 */	mr r28, r25
/* 81337528 | 7F 34 CB 78 */	mr r20, r25
/* 8133752C | 7F 33 CB 78 */	mr r19, r25
/* 81337530 | 7F 32 CB 78 */	mr r18, r25
/* 81337534 | 7F 3F CB 78 */	mr r31, r25
/* 81337538 | 3B BD 49 9C */	addi r29, r29, __vt__Q33ipl10controller4Core@l
/* 8133753C | 3B DE 49 10 */	addi r30, r30, __vt__Q33ipl10controller9FreeStyle@l
/* 81337540 | 3A E0 00 00 */	li r23, 0x0
/* 81337544 | 3A C0 00 00 */	li r22, 0x0
/* 81337548 | 3A A0 00 00 */	li r21, 0x0
/* 8133754C | 3A 20 00 3C */	li r17, 0x3c
.L_81337550:
/* 81337550 | 48 23 2E ED */	bl fn_8156A43C
/* 81337554 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81337558 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8133755C | 40 82 00 14 */	bne .L_81337570
/* 81337560 | C0 22 80 80 */	lfs f1, lbl_81694480@sda21(r0)
/* 81337564 | 7F 23 CB 78 */	mr r3, r25
/* 81337568 | 48 24 E3 85 */	bl fn_815858EC
/* 8133756C | 48 00 00 10 */	b .L_8133757C
.L_81337570:
/* 81337570 | C0 22 80 84 */	lfs f1, lbl_81694484@sda21(r0)
/* 81337574 | 7F 23 CB 78 */	mr r3, r25
/* 81337578 | 48 24 E3 75 */	bl fn_815858EC
.L_8133757C:
/* 8133757C | 7F 23 CB 78 */	mr r3, r25
/* 81337580 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81337584 | 48 24 34 A1 */	bl fn_8157AA24
/* 81337588 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8133758C | 41 82 01 E0 */	beq .L_8133776C
/* 81337590 | 40 80 00 10 */	bge .L_813375A0
/* 81337594 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 81337598 | 40 80 00 10 */	bge .L_813375A8
/* 8133759C | 48 00 01 D0 */	b .L_8133776C
.L_813375A0:
/* 813375A0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813375A4 | 40 80 01 C8 */	bge .L_8133776C
.L_813375A8:
/* 813375A8 | 7C 98 BA 14 */	add r4, r24, r23
/* 813375AC | 7F 23 CB 78 */	mr r3, r25
/* 813375B0 | 3B 44 00 D8 */	addi r26, r4, 0xd8
/* 813375B4 | 38 A0 00 01 */	li r5, 0x1
/* 813375B8 | 7F 44 D3 78 */	mr r4, r26
/* 813375BC | 48 25 03 C9 */	bl fn_81587984
/* 813375C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813375C4 | 40 81 01 5C */	ble .L_81337720
/* 813375C8 | 7C 98 BA 14 */	add r4, r24, r23
/* 813375CC | 88 04 01 35 */	lbz r0, 0x135(r4)
/* 813375D0 | 7C 00 07 74 */	extsb r0, r0
/* 813375D4 | 2C 00 FF FC */	cmpwi r0, -0x4
/* 813375D8 | 41 82 01 48 */	beq .L_81337720
/* 813375DC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813375E0 | 28 00 00 FD */	cmplwi r0, 0xfd
/* 813375E4 | 41 82 01 3C */	beq .L_81337720
/* 813375E8 | 7F 78 AA 14 */	add r27, r24, r21
/* 813375EC | 93 9B 02 E8 */	stw r28, 0x2e8(r27)
/* 813375F0 | 88 04 01 35 */	lbz r0, 0x135(r4)
/* 813375F4 | 7C 00 07 74 */	extsb r0, r0
/* 813375F8 | 2C 00 FF F9 */	cmpwi r0, -0x7
/* 813375FC | 41 82 00 28 */	beq .L_81337624
/* 81337600 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81337604 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81337608 | 41 82 00 1C */	beq .L_81337624
/* 8133760C | 28 00 00 FB */	cmplwi r0, 0xfb
/* 81337610 | 41 82 00 14 */	beq .L_81337624
/* 81337614 | 28 00 00 FC */	cmplwi r0, 0xfc
/* 81337618 | 41 82 00 0C */	beq .L_81337624
/* 8133761C | 28 00 00 FF */	cmplwi r0, 0xff
/* 81337620 | 40 82 00 54 */	bne .L_81337674
.L_81337624:
/* 81337624 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81337628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133762C | 41 82 00 1C */	beq .L_81337648
/* 81337630 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81337634 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81337638 | 7D 89 03 A6 */	mtctr r12
/* 8133763C | 4E 80 04 21 */	bctrl
/* 81337640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337644 | 41 82 01 40 */	beq .L_81337784
.L_81337648:
/* 81337648 | 7C 18 B2 14 */	add r0, r24, r22
/* 8133764C | 36 00 00 10 */	addic. r16, r0, 0x10
/* 81337650 | 41 82 00 1C */	beq .L_8133766C
/* 81337654 | 7E 03 83 78 */	mr r3, r16
/* 81337658 | 7F 24 CB 78 */	mr r4, r25
/* 8133765C | 7F 46 D3 78 */	mr r6, r26
/* 81337660 | 38 A0 00 00 */	li r5, 0x0
/* 81337664 | 48 00 01 95 */	bl __ct__Q33ipl10controller10RevolutionFiiR10KPADStatus
/* 81337668 | 93 B0 00 00 */	stw r29, 0x0(r16)
.L_8133766C:
/* 8133766C | 92 1B 00 00 */	stw r16, 0x0(r27)
/* 81337670 | 48 00 01 14 */	b .L_81337784
.L_81337674:
/* 81337674 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81337678 | 40 82 00 54 */	bne .L_813376CC
/* 8133767C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81337680 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337684 | 41 82 00 1C */	beq .L_813376A0
/* 81337688 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133768C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81337690 | 7D 89 03 A6 */	mtctr r12
/* 81337694 | 4E 80 04 21 */	bctrl
/* 81337698 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8133769C | 41 82 00 E8 */	beq .L_81337784
.L_813376A0:
/* 813376A0 | 7C 18 B2 14 */	add r0, r24, r22
/* 813376A4 | 36 00 00 10 */	addic. r16, r0, 0x10
/* 813376A8 | 41 82 00 1C */	beq .L_813376C4
/* 813376AC | 7E 03 83 78 */	mr r3, r16
/* 813376B0 | 7F 24 CB 78 */	mr r4, r25
/* 813376B4 | 7F 46 D3 78 */	mr r6, r26
/* 813376B8 | 38 A0 00 01 */	li r5, 0x1
/* 813376BC | 48 00 01 3D */	bl __ct__Q33ipl10controller10RevolutionFiiR10KPADStatus
/* 813376C0 | 93 D0 00 00 */	stw r30, 0x0(r16)
.L_813376C4:
/* 813376C4 | 92 1B 00 00 */	stw r16, 0x0(r27)
/* 813376C8 | 48 00 00 BC */	b .L_81337784
.L_813376CC:
/* 813376CC | 28 00 00 02 */	cmplwi r0, 0x2
/* 813376D0 | 40 82 00 48 */	bne .L_81337718
/* 813376D4 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813376D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813376DC | 41 82 00 1C */	beq .L_813376F8
/* 813376E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813376E4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813376E8 | 7D 89 03 A6 */	mtctr r12
/* 813376EC | 4E 80 04 21 */	bctrl
/* 813376F0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813376F4 | 41 82 00 90 */	beq .L_81337784
.L_813376F8:
/* 813376F8 | 7C 18 B2 14 */	add r0, r24, r22
/* 813376FC | 34 60 00 10 */	addic. r3, r0, 0x10
/* 81337700 | 41 82 00 10 */	beq .L_81337710
/* 81337704 | 7F 24 CB 78 */	mr r4, r25
/* 81337708 | 7F 45 D3 78 */	mr r5, r26
/* 8133770C | 4B FF ED 41 */	bl __ct__Q33ipl10controller7ClassicFiR10KPADStatus
.L_81337710:
/* 81337710 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 81337714 | 48 00 00 70 */	b .L_81337784
.L_81337718:
/* 81337718 | 93 FB 00 00 */	stw r31, 0x0(r27)
/* 8133771C | 48 00 00 68 */	b .L_81337784
.L_81337720:
/* 81337720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337724 | 40 82 00 40 */	bne .L_81337764
/* 81337728 | 7E 18 AA 14 */	add r16, r24, r21
/* 8133772C | 80 70 02 E8 */	lwz r3, 0x2e8(r16)
/* 81337730 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81337734 | 2C 00 00 3C */	cmpwi r0, 0x3c
/* 81337738 | 90 10 02 E8 */	stw r0, 0x2e8(r16)
/* 8133773C | 40 81 00 48 */	ble .L_81337784
/* 81337740 | 92 30 02 E8 */	stw r17, 0x2e8(r16)
/* 81337744 | 80 10 00 00 */	lwz r0, 0x0(r16)
/* 81337748 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133774C | 41 82 00 10 */	beq .L_8133775C
/* 81337750 | 7F 23 CB 78 */	mr r3, r25
/* 81337754 | 38 80 00 00 */	li r4, 0x0
/* 81337758 | 48 24 38 01 */	bl fn_8157AF58
.L_8133775C:
/* 8133775C | 92 50 00 00 */	stw r18, 0x0(r16)
/* 81337760 | 48 00 00 24 */	b .L_81337784
.L_81337764:
/* 81337764 | 7E 78 A9 2E */	stwx r19, r24, r21
/* 81337768 | 48 00 00 1C */	b .L_81337784
.L_8133776C:
/* 8133776C | 7C 98 BA 14 */	add r4, r24, r23
/* 81337770 | 7F 23 CB 78 */	mr r3, r25
/* 81337774 | 38 84 00 D8 */	addi r4, r4, 0xd8
/* 81337778 | 38 A0 00 01 */	li r5, 0x1
/* 8133777C | 48 25 02 09 */	bl fn_81587984
/* 81337780 | 7E 98 A9 2E */	stwx r20, r24, r21
.L_81337784:
/* 81337784 | C0 22 80 88 */	lfs f1, lbl_81694488@sda21(r0)
/* 81337788 | 7F 23 CB 78 */	mr r3, r25
/* 8133778C | C0 42 80 8C */	lfs f2, lbl_8169448C@sda21(r0)
/* 81337790 | 48 24 DF 21 */	bl fn_815856B0
/* 81337794 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81337798 | 3A D6 00 30 */	addi r22, r22, 0x30
/* 8133779C | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813377A0 | 3A B5 00 04 */	addi r21, r21, 0x4
/* 813377A4 | 3A F7 00 84 */	addi r23, r23, 0x84
/* 813377A8 | 41 80 FD A8 */	blt .L_81337550
/* 813377AC | 3A 00 00 00 */	li r16, 0x0
/* 813377B0 | 3B 20 00 00 */	li r25, 0x0
.L_813377B4:
/* 813377B4 | 7C 78 C8 2E */	lwzx r3, r24, r25
/* 813377B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813377BC | 41 82 00 14 */	beq .L_813377D0
/* 813377C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813377C4 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 813377C8 | 7D 89 03 A6 */	mtctr r12
/* 813377CC | 4E 80 04 21 */	bctrl
.L_813377D0:
/* 813377D0 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 813377D4 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 813377D8 | 2C 10 00 04 */	cmpwi r16, 0x4
/* 813377DC | 41 80 FF D8 */	blt .L_813377B4
/* 813377E0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813377E4 | 48 2C 1C FD */	bl _restgpr_16
/* 813377E8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813377EC | 7C 08 03 A6 */	mtlr r0
/* 813377F0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813377F4 | 4E 80 00 20 */	blr
.endfn read__Q33ipl10controller7ManagerFv

# .text:0x1B2C | 0x813377F8 | size: 0x88
# ipl::controller::Revolution::Revolution(int, int, KPADStatus&)
.fn __ct__Q33ipl10controller10RevolutionFiiR10KPADStatus, global
/* 813377F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813377FC | 7C 08 02 A6 */	mflr r0
/* 81337800 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81337804 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81337808 | 48 2C 1C C1 */	bl _savegpr_29
/* 8133780C | 3C E0 81 63 */	lis r7, __vt__Q33ipl10controller4Base@ha
/* 81337810 | 3B E0 00 00 */	li r31, 0x0
/* 81337814 | 38 E7 48 80 */	addi r7, r7, __vt__Q33ipl10controller4Base@l
/* 81337818 | 38 00 FF FF */	li r0, -0x1
/* 8133781C | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 81337820 | 7C 7D 1B 78 */	mr r29, r3
/* 81337824 | 7C DE 33 78 */	mr r30, r6
/* 81337828 | 9B E3 00 04 */	stb r31, 0x4(r3)
/* 8133782C | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 81337830 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 81337834 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81337838 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 8133783C | 90 A3 00 18 */	stw r5, 0x18(r3)
/* 81337840 | 9B E3 00 1C */	stb r31, 0x1c(r3)
/* 81337844 | 7C 83 23 78 */	mr r3, r4
/* 81337848 | 48 25 0B 69 */	bl fn_815883B0
/* 8133784C | 3C 60 81 63 */	lis r3, __vt__Q33ipl10controller10Revolution@ha
/* 81337850 | 9B FD 00 1D */	stb r31, 0x1d(r29)
/* 81337854 | 38 63 47 F4 */	addi r3, r3, __vt__Q33ipl10controller10Revolution@l
/* 81337858 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133785C | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 81337860 | 7F A3 EB 78 */	mr r3, r29
/* 81337864 | 9B FD 00 1E */	stb r31, 0x1e(r29)
/* 81337868 | 93 DD 00 20 */	stw r30, 0x20(r29)
/* 8133786C | 48 2C 1C A9 */	bl _restgpr_29
/* 81337870 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81337874 | 7C 08 03 A6 */	mtlr r0
/* 81337878 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133787C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl10controller10RevolutionFiiR10KPADStatus

# .text:0x1BB4 | 0x81337880 | size: 0x8
# ipl::controller::Manager::getMasterController()
.fn getMasterController__Q33ipl10controller7ManagerFv, global
/* 81337880 | 38 63 00 D0 */	addi r3, r3, 0xd0
/* 81337884 | 4E 80 00 20 */	blr
.endfn getMasterController__Q33ipl10controller7ManagerFv

# .text:0x1BBC | 0x81337888 | size: 0xC
# ipl::controller::Manager::getController(int)
.fn getController__Q33ipl10controller7ManagerFi, global
/* 81337888 | 54 80 10 3A */	slwi r0, r4, 2
/* 8133788C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81337890 | 4E 80 00 20 */	blr
.endfn getController__Q33ipl10controller7ManagerFi

# .text:0x1BC8 | 0x81337894 | size: 0x34
# ipl::controller::Manager::getYoungController()
.fn getYoungController__Q33ipl10controller7ManagerFv, global
/* 81337894 | 38 00 00 04 */	li r0, 0x4
/* 81337898 | 38 A0 00 00 */	li r5, 0x0
/* 8133789C | 38 80 00 00 */	li r4, 0x0
/* 813378A0 | 7C 09 03 A6 */	mtctr r0
.L_813378A4:
/* 813378A4 | 7C 03 20 2E */	lwzx r0, r3, r4
/* 813378A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813378AC | 41 82 00 0C */	beq .L_813378B8
/* 813378B0 | 7C 05 03 78 */	mr r5, r0
/* 813378B4 | 48 00 00 0C */	b .L_813378C0
.L_813378B8:
/* 813378B8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813378BC | 42 00 FF E8 */	bdnz .L_813378A4
.L_813378C0:
/* 813378C0 | 7C A3 2B 78 */	mr r3, r5
/* 813378C4 | 4E 80 00 20 */	blr
.endfn getYoungController__Q33ipl10controller7ManagerFv

# .text:0x1BFC | 0x813378C8 | size: 0x58
# ipl::controller::Core::~Core()
.fn __dt__Q33ipl10controller4CoreFv, global
/* 813378C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813378CC | 7C 08 02 A6 */	mflr r0
/* 813378D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813378D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813378D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813378DC | 7C 9F 23 78 */	mr r31, r4
/* 813378E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813378E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813378E8 | 41 82 00 1C */	beq .L_81337904
/* 813378EC | 38 80 00 00 */	li r4, 0x0
/* 813378F0 | 4B FF EC 39 */	bl __dt__Q33ipl10controller10RevolutionFv
/* 813378F4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813378F8 | 40 81 00 0C */	ble .L_81337904
/* 813378FC | 7F C3 F3 78 */	mr r3, r30
/* 81337900 | 48 2C 07 E5 */	bl __dl__FPv
.L_81337904:
/* 81337904 | 7F C3 F3 78 */	mr r3, r30
/* 81337908 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133790C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81337910 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337914 | 7C 08 03 A6 */	mtlr r0
/* 81337918 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133791C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl10controller4CoreFv

# .text:0x1C54 | 0x81337920 | size: 0x58
# ipl::controller::FreeStyle::~FreeStyle()
.fn __dt__Q33ipl10controller9FreeStyleFv, global
/* 81337920 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337924 | 7C 08 02 A6 */	mflr r0
/* 81337928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133792C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337930 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81337934 | 7C 9F 23 78 */	mr r31, r4
/* 81337938 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133793C | 7C 7E 1B 78 */	mr r30, r3
/* 81337940 | 41 82 00 1C */	beq .L_8133795C
/* 81337944 | 38 80 00 00 */	li r4, 0x0
/* 81337948 | 4B FF EB E1 */	bl __dt__Q33ipl10controller10RevolutionFv
/* 8133794C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81337950 | 40 81 00 0C */	ble .L_8133795C
/* 81337954 | 7F C3 F3 78 */	mr r3, r30
/* 81337958 | 48 2C 07 8D */	bl __dl__FPv
.L_8133795C:
/* 8133795C | 7F C3 F3 78 */	mr r3, r30
/* 81337960 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81337964 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81337968 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133796C | 7C 08 03 A6 */	mtlr r0
/* 81337970 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337974 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl10controller9FreeStyleFv

# 0x8160D2C0..0x8160D2D0 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8160D2C0 | size: 0x10
.obj lbl_8160D2C0, global
	.4byte 0x3E4CCCCD
	.4byte 0x3E99999A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8160D2C0

# 0x816346A8..0x81634A28 | size: 0x380
.data
.balign 8

# .data:0x0 | 0x816346A8 | size: 0xC
.obj lbl_816346A8, global
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
.endobj lbl_816346A8

# .data:0xC | 0x816346B4 | size: 0xC
.obj lbl_816346B4, global
	.4byte 0x00000000
	.4byte 0x00000018
	.4byte 0x00000000
.endobj lbl_816346B4

# .data:0x18 | 0x816346C0 | size: 0xC
.obj lbl_816346C0, global
	.4byte 0x00000000
	.4byte 0x0000001C
	.4byte 0x00000000
.endobj lbl_816346C0

# .data:0x24 | 0x816346CC | size: 0xC
.obj lbl_816346CC, global
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x00000000
.endobj lbl_816346CC

# .data:0x30 | 0x816346D8 | size: 0x8C
# ipl::controller::Master::__vtable
.obj __vt__Q33ipl10controller6Master, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl10controller6MasterFv
	.4byte getType__Q33ipl10controller9InterfaceCFv
	.4byte getChannel__Q33ipl10controller9InterfaceCFv
	.4byte down__Q33ipl10controller6MasterCFUl
	.4byte downTrg__Q33ipl10controller6MasterCFUl
	.4byte upTrg__Q33ipl10controller6MasterCFUl
	.4byte pinch__Q33ipl10controller9InterfaceCFv
	.4byte pinchTrg__Q33ipl10controller9InterfaceCFv
	.4byte pinchOffTrg__Q33ipl10controller9InterfaceCFv
	.4byte decide__Q33ipl10controller6MasterCFv
	.4byte repeat__Q33ipl10controller6MasterCFUl
	.4byte rumble__Q33ipl10controller9InterfaceFi
	.4byte cancelRumbling__Q33ipl10controller9InterfaceFv
	.4byte getHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getDpdPos__Q33ipl10controller9InterfaceCFv
	.4byte getDpdProjectionPos__Q33ipl10controller9InterfaceCFv
	.4byte getHorizon__Q33ipl10controller9InterfaceCFv
	.4byte getDpdDistance__Q33ipl10controller9InterfaceCFv
	.4byte getKPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte getPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte isValidBtn__Q33ipl10controller9InterfaceCFv
	.4byte isValidDpd__Q33ipl10controller9InterfaceCFv
	.4byte setForceInvalid__Q33ipl10controller6MasterFb
	.4byte getMainStickX__Q33ipl10controller9InterfaceCFv
	.4byte getMainStickY__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickX__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickY__Q33ipl10controller9InterfaceCFv
	.4byte read__Q33ipl10controller9InterfaceFv
.endobj __vt__Q33ipl10controller6Master

# .data:0xBC | 0x81634764 | size: 0x90
# ipl::controller::Classic::__vtable
.obj __vt__Q33ipl10controller7Classic, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl10controller7ClassicFv
	.4byte getType__Q33ipl10controller4BaseCFv
	.4byte getChannel__Q33ipl10controller4BaseCFv
	.4byte down__Q33ipl10controller7ClassicCFUl
	.4byte downTrg__Q33ipl10controller7ClassicCFUl
	.4byte upTrg__Q33ipl10controller7ClassicCFUl
	.4byte pinch__Q33ipl10controller10RevolutionCFv
	.4byte pinchTrg__Q33ipl10controller10RevolutionCFv
	.4byte pinchOffTrg__Q33ipl10controller10RevolutionCFv
	.4byte decide__Q33ipl10controller4BaseCFv
	.4byte repeat__Q33ipl10controller10RevolutionCFUl
	.4byte rumble__Q33ipl10controller4BaseFi
	.4byte cancelRumbling__Q33ipl10controller4BaseFv
	.4byte getHoldFlag__Q33ipl10controller10RevolutionCFv
	.4byte getTrigFlag__Q33ipl10controller10RevolutionCFv
	.4byte getReleaseFlag__Q33ipl10controller10RevolutionCFv
	.4byte getClassicHoldFlag__Q33ipl10controller7ClassicCFv
	.4byte getClassicTrigFlag__Q33ipl10controller7ClassicCFv
	.4byte getClassicReleaseFlag__Q33ipl10controller7ClassicCFv
	.4byte getDpdPos__Q33ipl10controller7ClassicCFv
	.4byte getDpdProjectionPos__Q33ipl10controller7ClassicCFv
	.4byte getHorizon__Q33ipl10controller7ClassicCFv
	.4byte getDpdDistance__Q33ipl10controller10RevolutionCFv
	.4byte getKPADStatus__Q33ipl10controller10RevolutionCFv
	.4byte getPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte isValidBtn__Q33ipl10controller10RevolutionCFv
	.4byte isValidDpd__Q33ipl10controller7ClassicCFv
	.4byte setForceInvalid__Q33ipl10controller4BaseFb
	.4byte getMainStickX__Q33ipl10controller9InterfaceCFv
	.4byte getMainStickY__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickX__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickY__Q33ipl10controller9InterfaceCFv
	.4byte read__Q33ipl10controller7ClassicFv
	.4byte isValidDpdClassic__Q33ipl10controller7ClassicCFv
.endobj __vt__Q33ipl10controller7Classic

# .data:0x14C | 0x816347F4 | size: 0x8C
# ipl::controller::Revolution::__vtable
.obj __vt__Q33ipl10controller10Revolution, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl10controller10RevolutionFv
	.4byte getType__Q33ipl10controller4BaseCFv
	.4byte getChannel__Q33ipl10controller4BaseCFv
	.4byte down__Q33ipl10controller10RevolutionCFUl
	.4byte downTrg__Q33ipl10controller10RevolutionCFUl
	.4byte upTrg__Q33ipl10controller10RevolutionCFUl
	.4byte pinch__Q33ipl10controller10RevolutionCFv
	.4byte pinchTrg__Q33ipl10controller10RevolutionCFv
	.4byte pinchOffTrg__Q33ipl10controller10RevolutionCFv
	.4byte decide__Q33ipl10controller4BaseCFv
	.4byte repeat__Q33ipl10controller10RevolutionCFUl
	.4byte rumble__Q33ipl10controller4BaseFi
	.4byte cancelRumbling__Q33ipl10controller4BaseFv
	.4byte getHoldFlag__Q33ipl10controller10RevolutionCFv
	.4byte getTrigFlag__Q33ipl10controller10RevolutionCFv
	.4byte getReleaseFlag__Q33ipl10controller10RevolutionCFv
	.4byte getClassicHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getDpdPos__Q33ipl10controller10RevolutionCFv
	.4byte getDpdProjectionPos__Q33ipl10controller10RevolutionCFv
	.4byte getHorizon__Q33ipl10controller10RevolutionCFv
	.4byte getDpdDistance__Q33ipl10controller10RevolutionCFv
	.4byte getKPADStatus__Q33ipl10controller10RevolutionCFv
	.4byte getPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte isValidBtn__Q33ipl10controller10RevolutionCFv
	.4byte isValidDpd__Q33ipl10controller10RevolutionCFv
	.4byte setForceInvalid__Q33ipl10controller4BaseFb
	.4byte getMainStickX__Q33ipl10controller9InterfaceCFv
	.4byte getMainStickY__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickX__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickY__Q33ipl10controller9InterfaceCFv
	.4byte read__Q33ipl10controller10RevolutionFv
.endobj __vt__Q33ipl10controller10Revolution

# .data:0x1D8 | 0x81634880 | size: 0x90
# ipl::controller::Base::__vtable
.obj __vt__Q33ipl10controller4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl10controller4BaseFv
	.4byte getType__Q33ipl10controller4BaseCFv
	.4byte getChannel__Q33ipl10controller4BaseCFv
	.4byte down__Q33ipl10controller9InterfaceCFUl
	.4byte downTrg__Q33ipl10controller9InterfaceCFUl
	.4byte upTrg__Q33ipl10controller9InterfaceCFUl
	.4byte pinch__Q33ipl10controller9InterfaceCFv
	.4byte pinchTrg__Q33ipl10controller9InterfaceCFv
	.4byte pinchOffTrg__Q33ipl10controller9InterfaceCFv
	.4byte decide__Q33ipl10controller4BaseCFv
	.4byte repeat__Q33ipl10controller9InterfaceCFUl
	.4byte rumble__Q33ipl10controller4BaseFi
	.4byte cancelRumbling__Q33ipl10controller4BaseFv
	.4byte getHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getDpdPos__Q33ipl10controller9InterfaceCFv
	.4byte getDpdProjectionPos__Q33ipl10controller9InterfaceCFv
	.4byte getHorizon__Q33ipl10controller9InterfaceCFv
	.4byte getDpdDistance__Q33ipl10controller9InterfaceCFv
	.4byte getKPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte getPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte isValidBtn__Q33ipl10controller9InterfaceCFv
	.4byte isValidDpd__Q33ipl10controller9InterfaceCFv
	.4byte setForceInvalid__Q33ipl10controller4BaseFb
	.4byte getMainStickX__Q33ipl10controller9InterfaceCFv
	.4byte getMainStickY__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickX__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickY__Q33ipl10controller9InterfaceCFv
	.4byte read__Q33ipl10controller4BaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl10controller4Base

# .data:0x268 | 0x81634910 | size: 0x8C
# ipl::controller::FreeStyle::__vtable
.obj __vt__Q33ipl10controller9FreeStyle, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl10controller9FreeStyleFv
	.4byte getType__Q33ipl10controller4BaseCFv
	.4byte getChannel__Q33ipl10controller4BaseCFv
	.4byte down__Q33ipl10controller10RevolutionCFUl
	.4byte downTrg__Q33ipl10controller10RevolutionCFUl
	.4byte upTrg__Q33ipl10controller10RevolutionCFUl
	.4byte pinch__Q33ipl10controller10RevolutionCFv
	.4byte pinchTrg__Q33ipl10controller10RevolutionCFv
	.4byte pinchOffTrg__Q33ipl10controller10RevolutionCFv
	.4byte decide__Q33ipl10controller4BaseCFv
	.4byte repeat__Q33ipl10controller10RevolutionCFUl
	.4byte rumble__Q33ipl10controller4BaseFi
	.4byte cancelRumbling__Q33ipl10controller4BaseFv
	.4byte getHoldFlag__Q33ipl10controller10RevolutionCFv
	.4byte getTrigFlag__Q33ipl10controller10RevolutionCFv
	.4byte getReleaseFlag__Q33ipl10controller10RevolutionCFv
	.4byte getClassicHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getDpdPos__Q33ipl10controller10RevolutionCFv
	.4byte getDpdProjectionPos__Q33ipl10controller10RevolutionCFv
	.4byte getHorizon__Q33ipl10controller10RevolutionCFv
	.4byte getDpdDistance__Q33ipl10controller10RevolutionCFv
	.4byte getKPADStatus__Q33ipl10controller10RevolutionCFv
	.4byte getPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte isValidBtn__Q33ipl10controller10RevolutionCFv
	.4byte isValidDpd__Q33ipl10controller10RevolutionCFv
	.4byte setForceInvalid__Q33ipl10controller4BaseFb
	.4byte getMainStickX__Q33ipl10controller9InterfaceCFv
	.4byte getMainStickY__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickX__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickY__Q33ipl10controller9InterfaceCFv
	.4byte read__Q33ipl10controller10RevolutionFv
.endobj __vt__Q33ipl10controller9FreeStyle

# .data:0x2F4 | 0x8163499C | size: 0x8C
# ipl::controller::Core::__vtable
.obj __vt__Q33ipl10controller4Core, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl10controller4CoreFv
	.4byte getType__Q33ipl10controller4BaseCFv
	.4byte getChannel__Q33ipl10controller4BaseCFv
	.4byte down__Q33ipl10controller10RevolutionCFUl
	.4byte downTrg__Q33ipl10controller10RevolutionCFUl
	.4byte upTrg__Q33ipl10controller10RevolutionCFUl
	.4byte pinch__Q33ipl10controller10RevolutionCFv
	.4byte pinchTrg__Q33ipl10controller10RevolutionCFv
	.4byte pinchOffTrg__Q33ipl10controller10RevolutionCFv
	.4byte decide__Q33ipl10controller4BaseCFv
	.4byte repeat__Q33ipl10controller10RevolutionCFUl
	.4byte rumble__Q33ipl10controller4BaseFi
	.4byte cancelRumbling__Q33ipl10controller4BaseFv
	.4byte getHoldFlag__Q33ipl10controller10RevolutionCFv
	.4byte getTrigFlag__Q33ipl10controller10RevolutionCFv
	.4byte getReleaseFlag__Q33ipl10controller10RevolutionCFv
	.4byte getClassicHoldFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicTrigFlag__Q33ipl10controller9InterfaceCFv
	.4byte getClassicReleaseFlag__Q33ipl10controller9InterfaceCFv
	.4byte getDpdPos__Q33ipl10controller10RevolutionCFv
	.4byte getDpdProjectionPos__Q33ipl10controller10RevolutionCFv
	.4byte getHorizon__Q33ipl10controller10RevolutionCFv
	.4byte getDpdDistance__Q33ipl10controller10RevolutionCFv
	.4byte getKPADStatus__Q33ipl10controller10RevolutionCFv
	.4byte getPADStatus__Q33ipl10controller9InterfaceCFv
	.4byte isValidBtn__Q33ipl10controller10RevolutionCFv
	.4byte isValidDpd__Q33ipl10controller10RevolutionCFv
	.4byte setForceInvalid__Q33ipl10controller4BaseFb
	.4byte getMainStickX__Q33ipl10controller9InterfaceCFv
	.4byte getMainStickY__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickX__Q33ipl10controller9InterfaceCFv
	.4byte getSubStickY__Q33ipl10controller9InterfaceCFv
	.4byte read__Q33ipl10controller10RevolutionFv
.endobj __vt__Q33ipl10controller4Core

# 0x81694440..0x81694490 | size: 0x50
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694440 | size: 0x4
.obj lbl_81694440, global
	.float 1000
.endobj lbl_81694440

# .sdata2:0x4 | 0x81694444 | size: 0x4
.obj lbl_81694444, global
	.float 0.058333334
.endobj lbl_81694444

# .sdata2:0x8 | 0x81694448 | size: 0x8
.obj lbl_81694448, global
	.double 4503599627370496
.endobj lbl_81694448

# .sdata2:0x10 | 0x81694450 | size: 0x4
.obj lbl_81694450, global
	.float inf
.endobj lbl_81694450

# .sdata2:0x14 | 0x81694454 | size: 0x4
.obj lbl_81694454, global
	.float 0
.endobj lbl_81694454

# .sdata2:0x18 | 0x81694458 | size: 0x4
.obj lbl_81694458, global
	.float 1.10132
.endobj lbl_81694458

# .sdata2:0x1C | 0x8169445C | size: 0x4
.obj lbl_8169445C, global
	.float 1.15
.endobj lbl_8169445C

# .sdata2:0x20 | 0x81694460 | size: 0x4
.obj lbl_81694460, global
	.float 100
.endobj lbl_81694460

# .sdata2:0x24 | 0x81694464 | size: 0x4
.obj lbl_81694464, global
	.float 0.01
.endobj lbl_81694464

# .sdata2:0x28 | 0x81694468 | size: 0x4
.obj lbl_81694468, global
	.float 0.0036
.endobj lbl_81694468

# .sdata2:0x2C | 0x8169446C | size: 0x4
.obj lbl_8169446C, global
	.float 0.05
.endobj lbl_8169446C

# .sdata2:0x30 | 0x81694470 | size: 0x4
.obj lbl_81694470, global
	.float 1
.endobj lbl_81694470

# .sdata2:0x34 | 0x81694474 | size: 0x4
.obj lbl_81694474, global
	.float -0.2679492
.endobj lbl_81694474

# .sdata2:0x38 | 0x81694478 | size: 0x4
.obj lbl_81694478, global
	.float 0.5
.endobj lbl_81694478

# .sdata2:0x3C | 0x8169447C | size: 0x4
.obj lbl_8169447C, global
	.float 0.1
.endobj lbl_8169447C

# .sdata2:0x40 | 0x81694480 | size: 0x4
.obj lbl_81694480, global
	.float 0.2
.endobj lbl_81694480

# .sdata2:0x44 | 0x81694484 | size: 0x4
.obj lbl_81694484, global
	.float -0.2
.endobj lbl_81694484

# .sdata2:0x48 | 0x81694488 | size: 0x4
.obj lbl_81694488, global
	.float 0.05
.endobj lbl_81694488

# .sdata2:0x4C | 0x8169448C | size: 0x4
.obj lbl_8169448C, global
	.float 1
.endobj lbl_8169448C

# 0x81696080..0x81696088 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696080 | size: 0x4
.obj lbl_81696080, global
	.4byte 0x3FE66666
.endobj lbl_81696080

# .sdata:0x4 | 0x81696084 | size: 0x4
.obj lbl_81696084, global
	.4byte 0x3F99999A
.endobj lbl_81696084

# 0x81698680..0x81698690 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698680 | size: 0x4
# ipl::controller::Manager::mpBuf
.obj mpBuf__Q33ipl10controller7Manager, global
	.skip 0x4
.endobj mpBuf__Q33ipl10controller7Manager

# .sbss:0x4 | 0x81698684 | size: 0x4
# ipl::controller::Manager::mpParentHeap
.obj mpParentHeap__Q33ipl10controller7Manager, global
	.skip 0x4
.endobj mpParentHeap__Q33ipl10controller7Manager

# .sbss:0x8 | 0x81698688 | size: 0x4
# ipl::controller::Manager::mpHeap
.obj mpHeap__Q33ipl10controller7Manager, global
	.skip 0x4
.endobj mpHeap__Q33ipl10controller7Manager

# .sbss:0xC | 0x8169868C | size: 0x4
# ipl::controller::Manager::mpAllocator
.obj mpAllocator__Q33ipl10controller7Manager, global
	.skip 0x4
.endobj mpAllocator__Q33ipl10controller7Manager
