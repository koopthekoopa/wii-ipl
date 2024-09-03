.include "macros.inc"
.file "iplSocketSetting.cpp"

# 0x81089720..0x81089760 | size: 0x40
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81089720 | size: 0x40
# ipl::socket::SocketSetting::mMac
.obj mMac__Q33ipl6socket13SocketSetting, global
	.skip 0x40
.endobj mMac__Q33ipl6socket13SocketSetting

# 0x81356E48..0x813571A8 | size: 0x360
.text
.balign 4

# .text:0x0 | 0x81356E48 | size: 0x48
# ipl::socket::SocketSetting::getLANMacAddrUtf8()
.fn getLANMacAddrUtf8__Q33ipl6socket13SocketSettingFv, global
/* 81356E48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356E4C | 7C 08 02 A6 */	mflr r0
/* 81356E50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81356E54 | 88 0D A6 AE */	lbz r0, lbl_816986EE@sda21(r0)
/* 81356E58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356E5C | 40 82 00 1C */	bne .L_81356E78
/* 81356E60 | 3C 60 81 09 */	lis r3, mMac__Q33ipl6socket13SocketSetting@ha
/* 81356E64 | 3C 80 81 64 */	lis r4, lbl_81638ED8@ha
/* 81356E68 | 38 63 97 20 */	addi r3, r3, mMac__Q33ipl6socket13SocketSetting@l
/* 81356E6C | 38 84 8E D8 */	addi r4, r4, lbl_81638ED8@l
/* 81356E70 | 4C C6 31 82 */	crclr cr1eq
/* 81356E74 | 48 2A 9C 0D */	bl sprintf
.L_81356E78:
/* 81356E78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356E7C | 3C 60 81 09 */	lis r3, mMac__Q33ipl6socket13SocketSetting@ha
/* 81356E80 | 38 63 97 20 */	addi r3, r3, mMac__Q33ipl6socket13SocketSetting@l
/* 81356E84 | 7C 08 03 A6 */	mtlr r0
/* 81356E88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356E8C | 4E 80 00 20 */	blr
.endfn getLANMacAddrUtf8__Q33ipl6socket13SocketSettingFv

# .text:0x48 | 0x81356E90 | size: 0x94
# ipl::socket::SocketSetting::init(void*)
.fn init__Q33ipl6socket13SocketSettingFPv, global
/* 81356E90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356E94 | 7C 08 02 A6 */	mflr r0
/* 81356E98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81356E9C | 80 0D A6 A0 */	lwz r0, lbl_816986E0@sda21(r0)
/* 81356EA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356EA4 | 40 82 00 6C */	bne .L_81356F10
/* 81356EA8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356EAC | 38 80 40 00 */	li r4, 0x4000
/* 81356EB0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356EB4 | 38 A0 FF E0 */	li r5, -0x20
/* 81356EB8 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81356EBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356EC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81356EC4 | 7D 89 03 A6 */	mtctr r12
/* 81356EC8 | 4E 80 04 21 */	bctrl
/* 81356ECC | 90 6D A6 A4 */	stw r3, lbl_816986E4@sda21(r0)
/* 81356ED0 | 38 80 40 00 */	li r4, 0x4000
/* 81356ED4 | 38 A0 00 02 */	li r5, 0x2
/* 81356ED8 | 48 20 37 9D */	bl fn_8155A674
/* 81356EDC | 90 6D A6 A0 */	stw r3, lbl_816986E0@sda21(r0)
/* 81356EE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81356EE4 | 38 80 00 00 */	li r4, 0x0
/* 81356EE8 | 38 A0 00 08 */	li r5, 0x8
/* 81356EEC | 4B FD 94 49 */	bl memset
/* 81356EF0 | 3C A0 81 35 */	lis r5, allocfunc__Q33ipl6socket13SocketSettingFUll@ha
/* 81356EF4 | 3C 80 81 35 */	lis r4, freefunc__Q33ipl6socket13SocketSettingFUlPvl@ha
/* 81356EF8 | 38 A5 6F 84 */	addi r5, r5, allocfunc__Q33ipl6socket13SocketSettingFUll@l
/* 81356EFC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81356F00 | 38 84 6F A0 */	addi r4, r4, freefunc__Q33ipl6socket13SocketSettingFUlPvl@l
/* 81356F04 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81356F08 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81356F0C | 48 15 B0 2D */	bl fn_814B1F38
.L_81356F10:
/* 81356F10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356F14 | 38 60 00 01 */	li r3, 0x1
/* 81356F18 | 7C 08 03 A6 */	mtlr r0
/* 81356F1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356F20 | 4E 80 00 20 */	blr
.endfn init__Q33ipl6socket13SocketSettingFPv

# .text:0xDC | 0x81356F24 | size: 0x60
# ipl::socket::SocketSetting::finish()
.fn finish__Q33ipl6socket13SocketSettingFv, global
/* 81356F24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356F28 | 7C 08 02 A6 */	mflr r0
/* 81356F2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81356F30 | 80 0D A6 A4 */	lwz r0, lbl_816986E4@sda21(r0)
/* 81356F34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356F38 | 41 82 00 3C */	beq .L_81356F74
/* 81356F3C | 48 15 B1 C5 */	bl fn_814B2100
/* 81356F40 | 80 6D A6 A0 */	lwz r3, lbl_816986E0@sda21(r0)
/* 81356F44 | 48 20 37 E1 */	bl fn_8155A724
/* 81356F48 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356F4C | 80 8D A6 A4 */	lwz r4, lbl_816986E4@sda21(r0)
/* 81356F50 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356F54 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81356F58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356F5C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81356F60 | 7D 89 03 A6 */	mtctr r12
/* 81356F64 | 4E 80 04 21 */	bctrl
/* 81356F68 | 38 00 00 00 */	li r0, 0x0
/* 81356F6C | 90 0D A6 A4 */	stw r0, lbl_816986E4@sda21(r0)
/* 81356F70 | 90 0D A6 A0 */	stw r0, lbl_816986E0@sda21(r0)
.L_81356F74:
/* 81356F74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356F78 | 7C 08 03 A6 */	mtlr r0
/* 81356F7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356F80 | 4E 80 00 20 */	blr
.endfn finish__Q33ipl6socket13SocketSettingFv

# .text:0x13C | 0x81356F84 | size: 0x1C
# ipl::socket::SocketSetting::allocfunc(unsigned long, long)
.fn allocfunc__Q33ipl6socket13SocketSettingFUll, global
/* 81356F84 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81356F88 | 38 60 00 00 */	li r3, 0x0
/* 81356F8C | 4C 81 00 20 */	blelr
/* 81356F90 | 80 6D A6 A0 */	lwz r3, lbl_816986E0@sda21(r0)
/* 81356F94 | 38 A0 00 20 */	li r5, 0x20
/* 81356F98 | 48 20 37 BC */	b fn_8155A754
/* 81356F9C | 4E 80 00 20 */	blr
.endfn allocfunc__Q33ipl6socket13SocketSettingFUll

# .text:0x158 | 0x81356FA0 | size: 0x14
# ipl::socket::SocketSetting::freefunc(unsigned long, void*, long)
.fn freefunc__Q33ipl6socket13SocketSettingFUlPvl, global
/* 81356FA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81356FA4 | 4D 82 00 20 */	beqlr
/* 81356FA8 | 80 6D A6 A0 */	lwz r3, lbl_816986E0@sda21(r0)
/* 81356FAC | 48 20 3A 58 */	b fn_8155AA04
/* 81356FB0 | 4E 80 00 20 */	blr
.endfn freefunc__Q33ipl6socket13SocketSettingFUlPvl

# .text:0x16C | 0x81356FB4 | size: 0x34
.fn iplSocket_81356FB4, local
/* 81356FB4 | 39 4D A6 A8 */	li r10, lbl_816986E8@sda21
/* 81356FB8 | 3C 60 81 09 */	lis r3, mMac__Q33ipl6socket13SocketSetting@ha
/* 81356FBC | 3C 80 81 64 */	lis r4, lbl_81638EEA@ha
/* 81356FC0 | 88 AD A6 A8 */	lbz r5, lbl_816986E8@sda21(r0)
/* 81356FC4 | 88 CA 00 01 */	lbz r6, 0x1(r10)
/* 81356FC8 | 38 63 97 20 */	addi r3, r3, mMac__Q33ipl6socket13SocketSetting@l
/* 81356FCC | 88 EA 00 02 */	lbz r7, 0x2(r10)
/* 81356FD0 | 38 84 8E EA */	addi r4, r4, lbl_81638EEA@l
/* 81356FD4 | 89 0A 00 03 */	lbz r8, 0x3(r10)
/* 81356FD8 | 89 2A 00 04 */	lbz r9, 0x4(r10)
/* 81356FDC | 89 4A 00 05 */	lbz r10, 0x5(r10)
/* 81356FE0 | 4C C6 31 82 */	crclr cr1eq
/* 81356FE4 | 48 2A 9A 9C */	b sprintf
.endfn iplSocket_81356FB4

# .text:0x1A0 | 0x81356FE8 | size: 0x17C
# ipl::socket::SocketSetting::obtainLANMacAddr(void*)
.fn obtainLANMacAddr__Q33ipl6socket13SocketSettingFPv, global
/* 81356FE8 | 94 21 F6 C0 */	stwu r1, -0x940(r1)
/* 81356FEC | 7C 08 02 A6 */	mflr r0
/* 81356FF0 | 90 01 09 44 */	stw r0, 0x944(r1)
/* 81356FF4 | 39 61 09 40 */	addi r11, r1, 0x940
/* 81356FF8 | 48 2A 24 CD */	bl _savegpr_28
/* 81356FFC | 88 0D A6 AE */	lbz r0, lbl_816986EE@sda21(r0)
/* 81357000 | 7C 7C 1B 78 */	mr r28, r3
/* 81357004 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357008 | 40 82 01 44 */	bne .L_8135714C
/* 8135700C | 38 6D A6 A8 */	li r3, lbl_816986E8@sda21
/* 81357010 | 38 80 00 00 */	li r4, 0x0
/* 81357014 | 38 A0 00 06 */	li r5, 0x6
/* 81357018 | 4B FD 93 1D */	bl memset
/* 8135701C | 4B FF FF 99 */	bl iplSocket_81356FB4
/* 81357020 | 7F 83 E3 78 */	mr r3, r28
/* 81357024 | 4B FF FE 6D */	bl init__Q33ipl6socket13SocketSettingFPv
/* 81357028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135702C | 41 82 01 18 */	beq .L_81357144
/* 81357030 | 38 00 00 00 */	li r0, 0x0
/* 81357034 | 3B A0 00 64 */	li r29, 0x64
/* 81357038 | 7F 80 E9 D6 */	mullw r28, r0, r29
/* 8135703C | 3F E0 80 00 */	lis r31, 0x8000
/* 81357040 | 3B C0 03 E8 */	li r30, 0x3e8
/* 81357044 | 48 00 00 20 */	b .L_81357064
.L_81357048:
/* 81357048 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8135704C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81357050 | 7C 60 F3 96 */	divwu r3, r0, r30
/* 81357054 | 7C 03 E8 16 */	mulhwu r0, r3, r29
/* 81357058 | 1C 83 00 64 */	mulli r4, r3, 0x64
/* 8135705C | 7C 60 E2 14 */	add r3, r0, r28
/* 81357060 | 48 1D EB 6D */	bl OSSleepTicks
.L_81357064:
/* 81357064 | 48 13 BA 59 */	bl fn_81492ABC
/* 81357068 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 8135706C | 41 82 FF DC */	beq .L_81357048
/* 81357070 | 38 61 01 6C */	addi r3, r1, 0x16c
/* 81357074 | 38 80 00 00 */	li r4, 0x0
/* 81357078 | 38 A0 07 C4 */	li r5, 0x7c4
/* 8135707C | 4B FD 92 B9 */	bl memset
/* 81357080 | 38 00 00 01 */	li r0, 0x1
/* 81357084 | 38 61 01 6C */	addi r3, r1, 0x16c
/* 81357088 | 90 01 01 6C */	stw r0, 0x16c(r1)
/* 8135708C | 48 13 B6 2D */	bl fn_814926B8
/* 81357090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357094 | 41 80 00 6C */	blt .L_81357100
/* 81357098 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8135709C | 38 80 00 00 */	li r4, 0x0
/* 813570A0 | 38 A0 01 5E */	li r5, 0x15e
/* 813570A4 | 4B FD 92 91 */	bl memset
/* 813570A8 | 38 00 00 02 */	li r0, 0x2
/* 813570AC | 38 61 00 0C */	addi r3, r1, 0xc
/* 813570B0 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 813570B4 | 48 13 B3 99 */	bl fn_8149244C
/* 813570B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813570BC | 41 80 00 44 */	blt .L_81357100
/* 813570C0 | 38 00 00 00 */	li r0, 0x0
/* 813570C4 | 3B C0 00 64 */	li r30, 0x64
/* 813570C8 | 7F E0 F1 D6 */	mullw r31, r0, r30
/* 813570CC | 3F 80 80 00 */	lis r28, 0x8000
/* 813570D0 | 3B A0 03 E8 */	li r29, 0x3e8
/* 813570D4 | 48 00 00 20 */	b .L_813570F4
.L_813570D8:
/* 813570D8 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 813570DC | 54 00 F0 BE */	srwi r0, r0, 2
/* 813570E0 | 7C 60 EB 96 */	divwu r3, r0, r29
/* 813570E4 | 7C 03 F0 16 */	mulhwu r0, r3, r30
/* 813570E8 | 1C 83 00 64 */	mulli r4, r3, 0x64
/* 813570EC | 7C 60 FA 14 */	add r3, r0, r31
/* 813570F0 | 48 1D EA DD */	bl OSSleepTicks
.L_813570F4:
/* 813570F4 | 48 13 B9 C9 */	bl fn_81492ABC
/* 813570F8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813570FC | 40 82 FF DC */	bne .L_813570D8
.L_81357100:
/* 81357100 | 38 00 00 06 */	li r0, 0x6
/* 81357104 | 3C 60 00 01 */	lis r3, 0x1
/* 81357108 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135710C | 38 83 FF FE */	subi r4, r3, 0x2
/* 81357110 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81357114 | 38 60 00 00 */	li r3, 0x0
/* 81357118 | 38 A0 10 04 */	li r5, 0x1004
/* 8135711C | 38 CD A6 A8 */	li r6, lbl_816986E8@sda21
/* 81357120 | 48 15 D6 4D */	bl SOGetInterfaceOpt
/* 81357124 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357128 | 40 80 00 14 */	bge .L_8135713C
/* 8135712C | 38 6D A6 A8 */	li r3, lbl_816986E8@sda21
/* 81357130 | 38 80 00 00 */	li r4, 0x0
/* 81357134 | 38 A0 00 06 */	li r5, 0x6
/* 81357138 | 4B FD 91 FD */	bl memset
.L_8135713C:
/* 8135713C | 4B FF FE 79 */	bl iplSocket_81356FB4
/* 81357140 | 4B FF FD E5 */	bl finish__Q33ipl6socket13SocketSettingFv
.L_81357144:
/* 81357144 | 38 00 00 01 */	li r0, 0x1
/* 81357148 | 98 0D A6 AE */	stb r0, lbl_816986EE@sda21(r0)
.L_8135714C:
/* 8135714C | 39 61 09 40 */	addi r11, r1, 0x940
/* 81357150 | 48 2A 23 C1 */	bl _restgpr_28
/* 81357154 | 80 01 09 44 */	lwz r0, 0x944(r1)
/* 81357158 | 7C 08 03 A6 */	mtlr r0
/* 8135715C | 38 21 09 40 */	addi r1, r1, 0x940
/* 81357160 | 4E 80 00 20 */	blr
.endfn obtainLANMacAddr__Q33ipl6socket13SocketSettingFPv

# .text:0x31C | 0x81357164 | size: 0x44
# ipl::socket::SocketSetting::checkLANMacAddrAvailable()
.fn checkLANMacAddrAvailable__Q33ipl6socket13SocketSettingFv, global
/* 81357164 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357168 | 7C 08 02 A6 */	mflr r0
/* 8135716C | 38 80 00 00 */	li r4, 0x0
/* 81357170 | 38 A0 00 06 */	li r5, 0x6
/* 81357174 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357178 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8135717C | 4B FD 91 B9 */	bl memset
/* 81357180 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81357184 | 38 6D A6 A8 */	li r3, lbl_816986E8@sda21
/* 81357188 | 38 A0 00 06 */	li r5, 0x6
/* 8135718C | 48 2A 70 49 */	bl memcmp
/* 81357190 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81357194 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81357198 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135719C | 7C 08 03 A6 */	mtlr r0
/* 813571A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813571A4 | 4E 80 00 20 */	blr
.endfn checkLANMacAddrAvailable__Q33ipl6socket13SocketSettingFv

# 0x81638ED8..0x81638F08 | size: 0x30
.data
.balign 8

# .data:0x0 | 0x81638ED8 | size: 0x12
.obj lbl_81638ED8, global
	.string "00-00-00-00-00-00"
.endobj lbl_81638ED8

# .data:0x12 | 0x81638EEA | size: 0x1E
.obj lbl_81638EEA, global
	.string "%02x-%02x-%02x-%02x-%02x-%02x"
.endobj lbl_81638EEA

# 0x816986E0..0x816986F0 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986E0 | size: 0x4
.obj lbl_816986E0, global
	.skip 0x4
.endobj lbl_816986E0

# .sbss:0x4 | 0x816986E4 | size: 0x4
.obj lbl_816986E4, global
	.skip 0x4
.endobj lbl_816986E4

# .sbss:0x8 | 0x816986E8 | size: 0x6
.obj lbl_816986E8, global
	.skip 0x6
.endobj lbl_816986E8

# .sbss:0xE | 0x816986EE | size: 0x1
.obj lbl_816986EE, global
	.skip 0x1
.endobj lbl_816986EE

# .sbss:0xF | 0x816986EF | size: 0x1
.obj gap_12_816986EF_sbss, global
.hidden gap_12_816986EF_sbss
	.skip 0x1
.endobj gap_12_816986EF_sbss
