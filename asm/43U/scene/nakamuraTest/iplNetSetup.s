.include "macros.inc"
.file "iplNetSetup.cpp"

# 0x810B83C8..0x810B83F0 | size: 0x28
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B83C8 | size: 0x18
# ipl::scene::NetSetup::sAllocLock
.obj sAllocLock__Q33ipl5scene8NetSetup, global
	.skip 0x18
.endobj sAllocLock__Q33ipl5scene8NetSetup

# .bss:0x18 | 0x810B83E0 | size: 0x10
# ipl::scene::NetSetup::sSOStartupInfo
.obj sSOStartupInfo__Q33ipl5scene8NetSetup, global
	.skip 0x10
.endobj sSOStartupInfo__Q33ipl5scene8NetSetup

# 0x813D8D9C..0x813D95BC | size: 0x820
.text
.balign 4

# .text:0x0 | 0x813D8D9C | size: 0x1A4
# ipl::scene::NetSetup::iSOStartupEXThread(void*)
.fn iSOStartupEXThread__Q33ipl5scene8NetSetupFPv, global
/* 813D8D9C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D8DA0 | 7C 08 02 A6 */	mflr r0
/* 813D8DA4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D8DA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D8DAC | 48 22 07 15 */	bl _savegpr_27
/* 813D8DB0 | 3F A0 81 65 */	lis r29, lbl_81653C18@ha
/* 813D8DB4 | 7C 7B 1B 78 */	mr r27, r3
/* 813D8DB8 | 3B BD 3C 18 */	addi r29, r29, lbl_81653C18@l
/* 813D8DBC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 813D8DC0 | 4C C6 31 82 */	crclr cr1eq
/* 813D8DC4 | 48 15 58 DD */	bl OSReport
/* 813D8DC8 | 3F C0 81 0C */	lis r30, sSOStartupInfo__Q33ipl5scene8NetSetup@ha
/* 813D8DCC | 3B FE 83 E0 */	addi r31, r30, sSOStartupInfo__Q33ipl5scene8NetSetup@l
/* 813D8DD0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D8DD4 | 48 0B 98 E5 */	bl NCDSetIpConfig
/* 813D8DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8DDC | 41 82 00 54 */	beq .L_813D8E30
/* 813D8DE0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813D8DE4 | 41 82 00 10 */	beq .L_813D8DF4
/* 813D8DE8 | 40 80 00 24 */	bge .L_813D8E0C
/* 813D8DEC | 48 00 00 20 */	b .L_813D8E0C
/* 813D8DF0 | 48 00 00 1C */	b .L_813D8E0C
.L_813D8DF4:
/* 813D8DF4 | 3C 60 00 01 */	lis r3, 0x1
/* 813D8DF8 | 38 80 00 05 */	li r4, 0x5
/* 813D8DFC | 38 03 C4 7C */	subi r0, r3, 0x3b84
/* 813D8E00 | 90 9E 83 E0 */	stw r4, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r30)
/* 813D8E04 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 813D8E08 | 48 00 00 20 */	b .L_813D8E28
.L_813D8E0C:
/* 813D8E0C | 3C 60 00 01 */	lis r3, 0x1
/* 813D8E10 | 3C 80 81 0C */	lis r4, sSOStartupInfo__Q33ipl5scene8NetSetup@ha
/* 813D8E14 | 38 A0 00 05 */	li r5, 0x5
/* 813D8E18 | 38 03 C3 B4 */	subi r0, r3, 0x3c4c
/* 813D8E1C | 38 64 83 E0 */	addi r3, r4, sSOStartupInfo__Q33ipl5scene8NetSetup@l
/* 813D8E20 | 90 A4 83 E0 */	stw r5, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r4)
/* 813D8E24 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_813D8E28:
/* 813D8E28 | 38 60 00 00 */	li r3, 0x0
/* 813D8E2C | 48 00 00 FC */	b .L_813D8F28
.L_813D8E30:
/* 813D8E30 | 38 7D 00 12 */	addi r3, r29, 0x12
/* 813D8E34 | 4C C6 31 82 */	crclr cr1eq
/* 813D8E38 | 48 15 58 69 */	bl OSReport
/* 813D8E3C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813D8E40 | 48 0B 96 0D */	bl NCDSetIfConfig
/* 813D8E44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8E48 | 41 82 00 54 */	beq .L_813D8E9C
/* 813D8E4C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813D8E50 | 41 82 00 10 */	beq .L_813D8E60
/* 813D8E54 | 40 80 00 24 */	bge .L_813D8E78
/* 813D8E58 | 48 00 00 20 */	b .L_813D8E78
/* 813D8E5C | 48 00 00 1C */	b .L_813D8E78
.L_813D8E60:
/* 813D8E60 | 3C 60 00 01 */	lis r3, 0x1
/* 813D8E64 | 38 80 00 05 */	li r4, 0x5
/* 813D8E68 | 38 03 C4 7C */	subi r0, r3, 0x3b84
/* 813D8E6C | 90 9E 83 E0 */	stw r4, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r30)
/* 813D8E70 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 813D8E74 | 48 00 00 20 */	b .L_813D8E94
.L_813D8E78:
/* 813D8E78 | 3C 60 00 01 */	lis r3, 0x1
/* 813D8E7C | 3C 80 81 0C */	lis r4, sSOStartupInfo__Q33ipl5scene8NetSetup@ha
/* 813D8E80 | 38 A0 00 05 */	li r5, 0x5
/* 813D8E84 | 38 03 C3 B4 */	subi r0, r3, 0x3c4c
/* 813D8E88 | 38 64 83 E0 */	addi r3, r4, sSOStartupInfo__Q33ipl5scene8NetSetup@l
/* 813D8E8C | 90 A4 83 E0 */	stw r5, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r4)
/* 813D8E90 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_813D8E94:
/* 813D8E94 | 38 60 00 00 */	li r3, 0x0
/* 813D8E98 | 48 00 00 90 */	b .L_813D8F28
.L_813D8E9C:
/* 813D8E9C | 3C 60 00 01 */	lis r3, 0x1
/* 813D8EA0 | 38 63 AF C8 */	subi r3, r3, 0x5038
/* 813D8EA4 | 48 0D 93 65 */	bl SOStartupEx
/* 813D8EA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8EAC | 7C 7C 1B 78 */	mr r28, r3
/* 813D8EB0 | 40 80 00 44 */	bge .L_813D8EF4
/* 813D8EB4 | 7F 84 E3 78 */	mr r4, r28
/* 813D8EB8 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 813D8EBC | 4C C6 31 82 */	crclr cr1eq
/* 813D8EC0 | 48 15 57 E1 */	bl OSReport
/* 813D8EC4 | 7F 83 E3 78 */	mr r3, r28
/* 813D8EC8 | 7F 64 DB 78 */	mr r4, r27
/* 813D8ECC | 48 0B BD 09 */	bl NETGetStartupErrorCodeEx
/* 813D8ED0 | 7F 83 00 D0 */	neg r28, r3
/* 813D8ED4 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 813D8ED8 | 7F 84 E3 78 */	mr r4, r28
/* 813D8EDC | 4C C6 31 82 */	crclr cr1eq
/* 813D8EE0 | 48 15 57 C1 */	bl OSReport
/* 813D8EE4 | 38 00 00 05 */	li r0, 0x5
/* 813D8EE8 | 93 9F 00 04 */	stw r28, 0x4(r31)
/* 813D8EEC | 90 1E 83 E0 */	stw r0, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r30)
/* 813D8EF0 | 48 00 00 34 */	b .L_813D8F24
.L_813D8EF4:
/* 813D8EF4 | 48 0D B1 71 */	bl SOGetHostID
/* 813D8EF8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813D8EFC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D8F00 | 48 0D AA D5 */	bl SOInetNtoA
/* 813D8F04 | 7C 64 1B 78 */	mr r4, r3
/* 813D8F08 | 38 7D 00 56 */	addi r3, r29, 0x56
/* 813D8F0C | 4C C6 31 82 */	crclr cr1eq
/* 813D8F10 | 48 15 57 91 */	bl OSReport
/* 813D8F14 | 38 60 00 03 */	li r3, 0x3
/* 813D8F18 | 38 00 00 00 */	li r0, 0x0
/* 813D8F1C | 90 7E 83 E0 */	stw r3, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r30)
/* 813D8F20 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_813D8F24:
/* 813D8F24 | 38 60 00 00 */	li r3, 0x0
.L_813D8F28:
/* 813D8F28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D8F2C | 48 22 05 E1 */	bl _restgpr_27
/* 813D8F30 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D8F34 | 7C 08 03 A6 */	mtlr r0
/* 813D8F38 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D8F3C | 4E 80 00 20 */	blr
.endfn iSOStartupEXThread__Q33ipl5scene8NetSetupFPv

# .text:0x1A4 | 0x813D8F40 | size: 0x80
# ipl::scene::NetSetup::NetSetup()
.fn __ct__Q33ipl5scene8NetSetupFv, global
/* 813D8F40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D8F44 | 7C 08 02 A6 */	mflr r0
/* 813D8F48 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene8NetSetup@ha
/* 813D8F4C | 38 80 00 00 */	li r4, 0x0
/* 813D8F50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D8F54 | 38 A5 3C D8 */	addi r5, r5, __vt__Q33ipl5scene8NetSetup@l
/* 813D8F58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D8F5C | 7C 7F 1B 78 */	mr r31, r3
/* 813D8F60 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813D8F64 | 38 A0 1B 5C */	li r5, 0x1b5c
/* 813D8F68 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813D8F6C | 4B F5 73 C9 */	bl memset
/* 813D8F70 | 38 7F 1B 68 */	addi r3, r31, 0x1b68
/* 813D8F74 | 38 80 00 00 */	li r4, 0x0
/* 813D8F78 | 38 A0 01 5E */	li r5, 0x15e
/* 813D8F7C | 4B F5 73 B9 */	bl memset
/* 813D8F80 | 38 7F 1C C8 */	addi r3, r31, 0x1cc8
/* 813D8F84 | 38 80 00 00 */	li r4, 0x0
/* 813D8F88 | 38 A0 07 C4 */	li r5, 0x7c4
/* 813D8F8C | 4B F5 73 A9 */	bl memset
/* 813D8F90 | 3C 80 81 0C */	lis r4, sSOStartupInfo__Q33ipl5scene8NetSetup@ha
/* 813D8F94 | 38 7F 1B 68 */	addi r3, r31, 0x1b68
/* 813D8F98 | 38 84 83 E0 */	addi r4, r4, sSOStartupInfo__Q33ipl5scene8NetSetup@l
/* 813D8F9C | 38 1F 1C C8 */	addi r0, r31, 0x1cc8
/* 813D8FA0 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 813D8FA4 | 7F E3 FB 78 */	mr r3, r31
/* 813D8FA8 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 813D8FAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D8FB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D8FB4 | 7C 08 03 A6 */	mtlr r0
/* 813D8FB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D8FBC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8NetSetupFv

# .text:0x224 | 0x813D8FC0 | size: 0x40
# ipl::scene::NetSetup::~NetSetup()
.fn __dt__Q33ipl5scene8NetSetupFv, global
/* 813D8FC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D8FC4 | 7C 08 02 A6 */	mflr r0
/* 813D8FC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8FCC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D8FD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D8FD4 | 7C 7F 1B 78 */	mr r31, r3
/* 813D8FD8 | 41 82 00 10 */	beq .L_813D8FE8
/* 813D8FDC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D8FE0 | 40 81 00 08 */	ble .L_813D8FE8
/* 813D8FE4 | 48 21 F1 01 */	bl __dl__FPv
.L_813D8FE8:
/* 813D8FE8 | 7F E3 FB 78 */	mr r3, r31
/* 813D8FEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D8FF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D8FF4 | 7C 08 03 A6 */	mtlr r0
/* 813D8FF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D8FFC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8NetSetupFv

# .text:0x264 | 0x813D9000 | size: 0x14
# ipl::scene::NetSetup::getproxy()
.fn getproxy__Q33ipl5scene8NetSetupFv, global
/* 813D9000 | 88 03 1B 60 */	lbz r0, 0x1b60(r3)
/* 813D9004 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813D9008 | 7C 63 02 14 */	add r3, r3, r0
/* 813D900C | 38 63 00 30 */	addi r3, r3, 0x30
/* 813D9010 | 4E 80 00 20 */	blr
.endfn getproxy__Q33ipl5scene8NetSetupFv

# .text:0x278 | 0x813D9014 | size: 0x8
# ipl::scene::NetSetup::getlasterror()
.fn getlasterror__Q33ipl5scene8NetSetupFv, global
/* 813D9014 | 80 63 24 90 */	lwz r3, 0x2490(r3)
/* 813D9018 | 4E 80 00 20 */	blr
.endfn getlasterror__Q33ipl5scene8NetSetupFv

# .text:0x280 | 0x813D901C | size: 0x8
# ipl::scene::NetSetup::getconntype()
.fn getconntype__Q33ipl5scene8NetSetupFv, global
/* 813D901C | 80 63 1B 64 */	lwz r3, 0x1b64(r3)
/* 813D9020 | 4E 80 00 20 */	blr
.endfn getconntype__Q33ipl5scene8NetSetupFv

# .text:0x288 | 0x813D9024 | size: 0x2F8
# ipl::scene::NetSetup::setup(void*, unsigned char)
.fn setup__Q33ipl5scene8NetSetupFPvUc, global
/* 813D9024 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9028 | 7C 08 02 A6 */	mflr r0
/* 813D902C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9030 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9034 | 7C 7F 1B 78 */	mr r31, r3
/* 813D9038 | 7C 83 23 78 */	mr r3, r4
/* 813D903C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D9040 | 7C BE 2B 78 */	mr r30, r5
/* 813D9044 | 38 A0 00 00 */	li r5, 0x0
/* 813D9048 | 90 8D AB 98 */	stw r4, sHeapBuf__Q33ipl5scene8NetSetup@sda21(r0)
/* 813D904C | 3C 80 00 01 */	lis r4, 0x1
/* 813D9050 | 48 18 16 25 */	bl fn_8155A674
/* 813D9054 | 90 6D AB 9C */	stw r3, sHeap__Q33ipl5scene8NetSetup@sda21(r0)
/* 813D9058 | 3C 60 81 0C */	lis r3, sAllocLock__Q33ipl5scene8NetSetup@ha
/* 813D905C | 38 63 83 C8 */	addi r3, r3, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D9060 | 48 15 8B 71 */	bl fn_81531BD0
/* 813D9064 | 3C 60 81 65 */	lis r3, lbl_81653C7F@ha
/* 813D9068 | 9B DF 1B 60 */	stb r30, 0x1b60(r31)
/* 813D906C | 38 63 3C 7F */	addi r3, r3, lbl_81653C7F@l
/* 813D9070 | 4C C6 31 82 */	crclr cr1eq
/* 813D9074 | 48 15 56 2D */	bl OSReport
/* 813D9078 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 813D907C | 48 0B 93 25 */	bl NCDReadConfig
/* 813D9080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D9084 | 7C 64 1B 78 */	mr r4, r3
/* 813D9088 | 41 82 00 28 */	beq .L_813D90B0
/* 813D908C | 3C 60 81 65 */	lis r3, lbl_81653C90@ha
/* 813D9090 | 38 63 3C 90 */	addi r3, r3, lbl_81653C90@l
/* 813D9094 | 4C C6 31 82 */	crclr cr1eq
/* 813D9098 | 48 15 56 09 */	bl OSReport
/* 813D909C | 3C 80 00 01 */	lis r4, 0x1
/* 813D90A0 | 38 60 00 00 */	li r3, 0x0
/* 813D90A4 | 38 04 C4 18 */	subi r0, r4, 0x3be8
/* 813D90A8 | 90 1F 24 90 */	stw r0, 0x2490(r31)
/* 813D90AC | 48 00 02 58 */	b .L_813D9304
.L_813D90B0:
/* 813D90B0 | 88 1F 1B 60 */	lbz r0, 0x1b60(r31)
/* 813D90B4 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813D90B8 | 7C DF 02 14 */	add r6, r31, r0
/* 813D90BC | 88 06 00 0C */	lbz r0, 0xc(r6)
/* 813D90C0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813D90C4 | 41 82 00 30 */	beq .L_813D90F4
/* 813D90C8 | 88 66 07 CC */	lbz r3, 0x7cc(r6)
/* 813D90CC | 38 00 00 02 */	li r0, 0x2
/* 813D90D0 | 98 7F 1B 6A */	stb r3, 0x1b6a(r31)
/* 813D90D4 | 88 66 07 CD */	lbz r3, 0x7cd(r6)
/* 813D90D8 | 98 7F 1B 6B */	stb r3, 0x1b6b(r31)
/* 813D90DC | 88 66 07 CE */	lbz r3, 0x7ce(r6)
/* 813D90E0 | 98 7F 1B 6C */	stb r3, 0x1b6c(r31)
/* 813D90E4 | 88 66 07 CF */	lbz r3, 0x7cf(r6)
/* 813D90E8 | 98 7F 1B 6D */	stb r3, 0x1b6d(r31)
/* 813D90EC | 98 1F 1B 68 */	stb r0, 0x1b68(r31)
/* 813D90F0 | 48 00 00 48 */	b .L_813D9138
.L_813D90F4:
/* 813D90F4 | A0 66 07 CC */	lhz r3, 0x7cc(r6)
/* 813D90F8 | 38 00 00 AC */	li r0, 0xac
/* 813D90FC | 38 BF 1B 6D */	addi r5, r31, 0x1b6d
/* 813D9100 | 38 86 07 CF */	addi r4, r6, 0x7cf
/* 813D9104 | B0 7F 1B 6A */	sth r3, 0x1b6a(r31)
/* 813D9108 | 88 66 07 CE */	lbz r3, 0x7ce(r6)
/* 813D910C | 98 7F 1B 6C */	stb r3, 0x1b6c(r31)
/* 813D9110 | 88 66 07 CF */	lbz r3, 0x7cf(r6)
/* 813D9114 | 98 7F 1B 6D */	stb r3, 0x1b6d(r31)
/* 813D9118 | 7C 09 03 A6 */	mtctr r0
.L_813D911C:
/* 813D911C | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 813D9120 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 813D9124 | 98 65 00 01 */	stb r3, 0x1(r5)
/* 813D9128 | 9C 05 00 02 */	stbu r0, 0x2(r5)
/* 813D912C | 42 00 FF F0 */	bdnz .L_813D911C
/* 813D9130 | 38 00 00 01 */	li r0, 0x1
/* 813D9134 | 98 1F 1B 68 */	stb r0, 0x1b68(r31)
.L_813D9138:
/* 813D9138 | 88 7F 1B 60 */	lbz r3, 0x1b60(r31)
/* 813D913C | 38 00 00 A4 */	li r0, 0xa4
/* 813D9140 | 88 9F 00 0A */	lbz r4, 0xa(r31)
/* 813D9144 | 38 DF 1C EF */	addi r6, r31, 0x1cef
/* 813D9148 | 1C 63 09 1C */	mulli r3, r3, 0x91c
/* 813D914C | 98 9F 1B 69 */	stb r4, 0x1b69(r31)
/* 813D9150 | 7C 7F 1A 14 */	add r3, r31, r3
/* 813D9154 | 88 83 00 0C */	lbz r4, 0xc(r3)
/* 813D9158 | 38 A3 00 2F */	addi r5, r3, 0x2f
/* 813D915C | 54 84 FF FE */	extrwi r4, r4, 1, 30
/* 813D9160 | 90 9F 1C C8 */	stw r4, 0x1cc8(r31)
/* 813D9164 | 88 83 00 0C */	lbz r4, 0xc(r3)
/* 813D9168 | 54 84 E7 FE */	extrwi r4, r4, 1, 27
/* 813D916C | 90 9F 1C CC */	stw r4, 0x1ccc(r31)
/* 813D9170 | 88 83 00 10 */	lbz r4, 0x10(r3)
/* 813D9174 | 98 9F 1C D0 */	stb r4, 0x1cd0(r31)
/* 813D9178 | 88 83 00 11 */	lbz r4, 0x11(r3)
/* 813D917C | 98 9F 1C D1 */	stb r4, 0x1cd1(r31)
/* 813D9180 | 88 83 00 12 */	lbz r4, 0x12(r3)
/* 813D9184 | 98 9F 1C D2 */	stb r4, 0x1cd2(r31)
/* 813D9188 | 88 83 00 13 */	lbz r4, 0x13(r3)
/* 813D918C | 98 9F 1C D3 */	stb r4, 0x1cd3(r31)
/* 813D9190 | 88 83 00 14 */	lbz r4, 0x14(r3)
/* 813D9194 | 98 9F 1C D4 */	stb r4, 0x1cd4(r31)
/* 813D9198 | 88 83 00 15 */	lbz r4, 0x15(r3)
/* 813D919C | 98 9F 1C D5 */	stb r4, 0x1cd5(r31)
/* 813D91A0 | 88 83 00 16 */	lbz r4, 0x16(r3)
/* 813D91A4 | 98 9F 1C D6 */	stb r4, 0x1cd6(r31)
/* 813D91A8 | 88 83 00 17 */	lbz r4, 0x17(r3)
/* 813D91AC | 98 9F 1C D7 */	stb r4, 0x1cd7(r31)
/* 813D91B0 | 88 83 00 18 */	lbz r4, 0x18(r3)
/* 813D91B4 | 98 9F 1C D8 */	stb r4, 0x1cd8(r31)
/* 813D91B8 | 88 83 00 19 */	lbz r4, 0x19(r3)
/* 813D91BC | 98 9F 1C D9 */	stb r4, 0x1cd9(r31)
/* 813D91C0 | 88 83 00 1A */	lbz r4, 0x1a(r3)
/* 813D91C4 | 98 9F 1C DA */	stb r4, 0x1cda(r31)
/* 813D91C8 | 88 83 00 1B */	lbz r4, 0x1b(r3)
/* 813D91CC | 98 9F 1C DB */	stb r4, 0x1cdb(r31)
/* 813D91D0 | 88 83 00 1C */	lbz r4, 0x1c(r3)
/* 813D91D4 | 98 9F 1C DC */	stb r4, 0x1cdc(r31)
/* 813D91D8 | 88 83 00 1D */	lbz r4, 0x1d(r3)
/* 813D91DC | 98 9F 1C DD */	stb r4, 0x1cdd(r31)
/* 813D91E0 | 88 83 00 1E */	lbz r4, 0x1e(r3)
/* 813D91E4 | 98 9F 1C DE */	stb r4, 0x1cde(r31)
/* 813D91E8 | 88 83 00 1F */	lbz r4, 0x1f(r3)
/* 813D91EC | 98 9F 1C DF */	stb r4, 0x1cdf(r31)
/* 813D91F0 | 88 83 00 20 */	lbz r4, 0x20(r3)
/* 813D91F4 | 98 9F 1C E0 */	stb r4, 0x1ce0(r31)
/* 813D91F8 | 88 83 00 21 */	lbz r4, 0x21(r3)
/* 813D91FC | 98 9F 1C E1 */	stb r4, 0x1ce1(r31)
/* 813D9200 | 88 83 00 22 */	lbz r4, 0x22(r3)
/* 813D9204 | 98 9F 1C E2 */	stb r4, 0x1ce2(r31)
/* 813D9208 | 88 83 00 23 */	lbz r4, 0x23(r3)
/* 813D920C | 98 9F 1C E3 */	stb r4, 0x1ce3(r31)
/* 813D9210 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 813D9214 | 90 9F 1C E4 */	stw r4, 0x1ce4(r31)
/* 813D9218 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 813D921C | 90 9F 1C E8 */	stw r4, 0x1ce8(r31)
/* 813D9220 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 813D9224 | 90 9F 1C EC */	stw r4, 0x1cec(r31)
/* 813D9228 | 7C 09 03 A6 */	mtctr r0
.L_813D922C:
/* 813D922C | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 813D9230 | 8C 05 00 02 */	lbzu r0, 0x2(r5)
/* 813D9234 | 98 86 00 01 */	stb r4, 0x1(r6)
/* 813D9238 | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 813D923C | 42 00 FF F0 */	bdnz .L_813D922C
/* 813D9240 | 38 00 00 A4 */	li r0, 0xa4
/* 813D9244 | 38 DF 1E 37 */	addi r6, r31, 0x1e37
/* 813D9248 | 38 A3 01 77 */	addi r5, r3, 0x177
/* 813D924C | 7C 09 03 A6 */	mtctr r0
.L_813D9250:
/* 813D9250 | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 813D9254 | 8C 05 00 02 */	lbzu r0, 0x2(r5)
/* 813D9258 | 98 86 00 01 */	stb r4, 0x1(r6)
/* 813D925C | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 813D9260 | 42 00 FF F0 */	bdnz .L_813D9250
/* 813D9264 | 38 00 00 80 */	li r0, 0x80
/* 813D9268 | 38 FF 1F 7C */	addi r7, r31, 0x1f7c
/* 813D926C | 38 A3 02 BC */	addi r5, r3, 0x2bc
/* 813D9270 | 7C 09 03 A6 */	mtctr r0
.L_813D9274:
/* 813D9274 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813D9278 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813D927C | 90 87 00 04 */	stw r4, 0x4(r7)
/* 813D9280 | 94 07 00 08 */	stwu r0, 0x8(r7)
/* 813D9284 | 42 00 FF F0 */	bdnz .L_813D9274
/* 813D9288 | 80 C5 00 04 */	lwz r6, 0x4(r5)
/* 813D928C | 38 00 00 21 */	li r0, 0x21
/* 813D9290 | 38 BF 23 80 */	addi r5, r31, 0x2380
/* 813D9294 | 38 83 06 C0 */	addi r4, r3, 0x6c0
/* 813D9298 | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 813D929C | 7C 09 03 A6 */	mtctr r0
.L_813D92A0:
/* 813D92A0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813D92A4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813D92A8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813D92AC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813D92B0 | 42 00 FF F0 */	bdnz .L_813D92A0
/* 813D92B4 | 88 9F 1B 60 */	lbz r4, 0x1b60(r31)
/* 813D92B8 | 1C 04 09 1C */	mulli r0, r4, 0x91c
/* 813D92BC | 7C 7F 02 14 */	add r3, r31, r0
/* 813D92C0 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 813D92C4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813D92C8 | 41 82 00 10 */	beq .L_813D92D8
/* 813D92CC | 38 04 00 14 */	addi r0, r4, 0x14
/* 813D92D0 | 90 1F 1B 64 */	stw r0, 0x1b64(r31)
/* 813D92D4 | 48 00 00 24 */	b .L_813D92F8
.L_813D92D8:
/* 813D92D8 | 88 03 07 CE */	lbz r0, 0x7ce(r3)
/* 813D92DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D92E0 | 41 82 00 10 */	beq .L_813D92F0
/* 813D92E4 | 38 04 00 1E */	addi r0, r4, 0x1e
/* 813D92E8 | 90 1F 1B 64 */	stw r0, 0x1b64(r31)
/* 813D92EC | 48 00 00 0C */	b .L_813D92F8
.L_813D92F0:
/* 813D92F0 | 38 04 00 28 */	addi r0, r4, 0x28
/* 813D92F4 | 90 1F 1B 64 */	stw r0, 0x1b64(r31)
.L_813D92F8:
/* 813D92F8 | 38 00 00 01 */	li r0, 0x1
/* 813D92FC | 38 60 00 01 */	li r3, 0x1
/* 813D9300 | 90 1F 24 8C */	stw r0, 0x248c(r31)
.L_813D9304:
/* 813D9304 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D9308 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D930C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D9310 | 7C 08 03 A6 */	mtlr r0
/* 813D9314 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D9318 | 4E 80 00 20 */	blr
.endfn setup__Q33ipl5scene8NetSetupFPvUc

# .text:0x580 | 0x813D931C | size: 0x188
# ipl::scene::NetSetup::getstate()
.fn getstate__Q33ipl5scene8NetSetupFv, global
/* 813D931C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D9320 | 7C 08 02 A6 */	mflr r0
/* 813D9324 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D9328 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D932C | 48 22 01 9D */	bl _savegpr_29
/* 813D9330 | 80 03 24 8C */	lwz r0, 0x248c(r3)
/* 813D9334 | 7C 7F 1B 78 */	mr r31, r3
/* 813D9338 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D933C | 41 82 00 E4 */	beq .L_813D9420
/* 813D9340 | 40 80 00 14 */	bge .L_813D9354
/* 813D9344 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D9348 | 41 82 01 40 */	beq .L_813D9488
/* 813D934C | 40 80 00 1C */	bge .L_813D9368
/* 813D9350 | 48 00 01 38 */	b .L_813D9488
.L_813D9354:
/* 813D9354 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813D9358 | 40 80 01 30 */	bge .L_813D9488
/* 813D935C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D9360 | 40 80 01 28 */	bge .L_813D9488
/* 813D9364 | 48 00 01 20 */	b .L_813D9484
.L_813D9368:
/* 813D9368 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D936C | 38 80 00 00 */	li r4, 0x0
/* 813D9370 | 38 A0 00 08 */	li r5, 0x8
/* 813D9374 | 4B F5 6F C1 */	bl memset
/* 813D9378 | 3C A0 81 3E */	lis r5, allocfunc__Q33ipl5scene8NetSetupFUll@ha
/* 813D937C | 3C 80 81 3E */	lis r4, freefunc__Q33ipl5scene8NetSetupFUlPvl@ha
/* 813D9380 | 38 A5 94 FC */	addi r5, r5, allocfunc__Q33ipl5scene8NetSetupFUll@l
/* 813D9384 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D9388 | 38 84 95 64 */	addi r4, r4, freefunc__Q33ipl5scene8NetSetupFUlPvl@l
/* 813D938C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813D9390 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813D9394 | 48 0D 8B A5 */	bl SOInit
/* 813D9398 | 38 60 40 00 */	li r3, 0x4000
/* 813D939C | 38 80 00 20 */	li r4, 0x20
/* 813D93A0 | 48 00 01 5D */	bl allocfunc__Q33ipl5scene8NetSetupFUll
/* 813D93A4 | 7C 66 1B 78 */	mr r6, r3
/* 813D93A8 | 90 7F 27 B0 */	stw r3, 0x27b0(r31)
/* 813D93AC | 3C 80 81 3E */	lis r4, iSOStartupEXThread__Q33ipl5scene8NetSetupFPv@ha
/* 813D93B0 | 80 BF 1B 64 */	lwz r5, 0x1b64(r31)
/* 813D93B4 | 38 7F 24 98 */	addi r3, r31, 0x2498
/* 813D93B8 | 38 C6 40 00 */	addi r6, r6, 0x4000
/* 813D93BC | 38 84 8D 9C */	addi r4, r4, iSOStartupEXThread__Q33ipl5scene8NetSetupFPv@l
/* 813D93C0 | 38 E0 40 00 */	li r7, 0x4000
/* 813D93C4 | 39 00 00 11 */	li r8, 0x11
/* 813D93C8 | 39 20 00 01 */	li r9, 0x1
/* 813D93CC | 48 15 B1 7D */	bl OSCreateThread
/* 813D93D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D93D4 | 40 82 00 38 */	bne .L_813D940C
/* 813D93D8 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D93DC | 80 9F 1B 64 */	lwz r4, 0x1b64(r31)
/* 813D93E0 | 38 63 3C 4C */	addi r3, r3, 0x3c4c
/* 813D93E4 | 38 00 00 05 */	li r0, 0x5
/* 813D93E8 | 7C 84 18 50 */	subf r4, r4, r3
/* 813D93EC | 90 1F 24 8C */	stw r0, 0x248c(r31)
/* 813D93F0 | 7C 84 00 D0 */	neg r4, r4
/* 813D93F4 | 3C 60 81 65 */	lis r3, lbl_81653CC0@ha
/* 813D93F8 | 90 9F 24 90 */	stw r4, 0x2490(r31)
/* 813D93FC | 38 63 3C C0 */	addi r3, r3, lbl_81653CC0@l
/* 813D9400 | 4C C6 31 82 */	crclr cr1eq
/* 813D9404 | 48 15 52 9D */	bl OSReport
/* 813D9408 | 48 00 00 80 */	b .L_813D9488
.L_813D940C:
/* 813D940C | 38 7F 24 98 */	addi r3, r31, 0x2498
/* 813D9410 | 48 15 B8 41 */	bl OSResumeThread
/* 813D9414 | 38 00 00 02 */	li r0, 0x2
/* 813D9418 | 90 1F 24 8C */	stw r0, 0x248c(r31)
/* 813D941C | 48 00 00 6C */	b .L_813D9488
.L_813D9420:
/* 813D9420 | 38 63 24 98 */	addi r3, r3, 0x2498
/* 813D9424 | 48 15 AB 5D */	bl OSIsThreadTerminated
/* 813D9428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D942C | 41 82 00 5C */	beq .L_813D9488
/* 813D9430 | 3C 60 81 0C */	lis r3, sSOStartupInfo__Q33ipl5scene8NetSetup@ha
/* 813D9434 | 83 BF 27 B0 */	lwz r29, 0x27b0(r31)
/* 813D9438 | 80 03 83 E0 */	lwz r0, sSOStartupInfo__Q33ipl5scene8NetSetup@l(r3)
/* 813D943C | 38 63 83 E0 */	addi r3, r3, sSOStartupInfo__Q33ipl5scene8NetSetup@l
/* 813D9440 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D9444 | 90 1F 24 8C */	stw r0, 0x248c(r31)
/* 813D9448 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813D944C | 90 1F 24 90 */	stw r0, 0x2490(r31)
/* 813D9450 | 41 82 00 38 */	beq .L_813D9488
/* 813D9454 | 41 82 00 24 */	beq .L_813D9478
/* 813D9458 | 3F C0 81 0C */	lis r30, sAllocLock__Q33ipl5scene8NetSetup@ha
/* 813D945C | 38 7E 83 C8 */	addi r3, r30, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D9460 | 48 15 87 A9 */	bl fn_81531C08
/* 813D9464 | 80 6D AB 9C */	lwz r3, sHeap__Q33ipl5scene8NetSetup@sda21(r0)
/* 813D9468 | 7F A4 EB 78 */	mr r4, r29
/* 813D946C | 48 18 15 99 */	bl fn_8155AA04
/* 813D9470 | 38 7E 83 C8 */	addi r3, r30, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D9474 | 48 15 88 71 */	bl fn_81531CE4
.L_813D9478:
/* 813D9478 | 38 00 00 00 */	li r0, 0x0
/* 813D947C | 90 1F 27 B0 */	stw r0, 0x27b0(r31)
/* 813D9480 | 48 00 00 08 */	b .L_813D9488
.L_813D9484:
/* 813D9484 | 48 0B 96 39 */	bl NCDGetLinkStatus
.L_813D9488:
/* 813D9488 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D948C | 80 7F 24 8C */	lwz r3, 0x248c(r31)
/* 813D9490 | 48 22 00 85 */	bl _restgpr_29
/* 813D9494 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D9498 | 7C 08 03 A6 */	mtlr r0
/* 813D949C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D94A0 | 4E 80 00 20 */	blr
.endfn getstate__Q33ipl5scene8NetSetupFv

# .text:0x708 | 0x813D94A4 | size: 0x58
# ipl::scene::NetSetup::cleanup()
.fn cleanup__Q33ipl5scene8NetSetupFv, global
/* 813D94A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D94A8 | 7C 08 02 A6 */	mflr r0
/* 813D94AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D94B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D94B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813D94B8 | 48 0D 91 79 */	bl SOCleanup
/* 813D94BC | 48 0D 8C 45 */	bl SOFinish
/* 813D94C0 | 38 7F 1B 68 */	addi r3, r31, 0x1b68
/* 813D94C4 | 38 80 00 00 */	li r4, 0x0
/* 813D94C8 | 38 A0 01 5E */	li r5, 0x15e
/* 813D94CC | 4B F5 6E 69 */	bl memset
/* 813D94D0 | 38 00 00 00 */	li r0, 0x0
/* 813D94D4 | 38 7F 1B 68 */	addi r3, r31, 0x1b68
/* 813D94D8 | 98 1F 1B 68 */	stb r0, 0x1b68(r31)
/* 813D94DC | 48 0B 8F 71 */	bl NCDSetIfConfig
/* 813D94E0 | 80 6D AB 9C */	lwz r3, sHeap__Q33ipl5scene8NetSetup@sda21(r0)
/* 813D94E4 | 48 18 12 41 */	bl fn_8155A724
/* 813D94E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D94EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D94F0 | 7C 08 03 A6 */	mtlr r0
/* 813D94F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D94F8 | 4E 80 00 20 */	blr
.endfn cleanup__Q33ipl5scene8NetSetupFv

# .text:0x760 | 0x813D94FC | size: 0x68
# ipl::scene::NetSetup::allocfunc(unsigned long, long)
.fn allocfunc__Q33ipl5scene8NetSetupFUll, global
/* 813D94FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D9500 | 7C 08 02 A6 */	mflr r0
/* 813D9504 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D9508 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D950C | 48 21 FF BD */	bl _savegpr_29
/* 813D9510 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D9514 | 7C 9D 23 78 */	mr r29, r4
/* 813D9518 | 3B C0 00 00 */	li r30, 0x0
/* 813D951C | 40 81 00 2C */	ble .L_813D9548
/* 813D9520 | 3F E0 81 0C */	lis r31, sAllocLock__Q33ipl5scene8NetSetup@ha
/* 813D9524 | 38 7F 83 C8 */	addi r3, r31, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D9528 | 48 15 86 E1 */	bl fn_81531C08
/* 813D952C | 80 6D AB 9C */	lwz r3, sHeap__Q33ipl5scene8NetSetup@sda21(r0)
/* 813D9530 | 7F A4 EB 78 */	mr r4, r29
/* 813D9534 | 38 A0 00 20 */	li r5, 0x20
/* 813D9538 | 48 18 12 1D */	bl fn_8155A754
/* 813D953C | 7C 7E 1B 78 */	mr r30, r3
/* 813D9540 | 38 7F 83 C8 */	addi r3, r31, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D9544 | 48 15 87 A1 */	bl fn_81531CE4
.L_813D9548:
/* 813D9548 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D954C | 7F C3 F3 78 */	mr r3, r30
/* 813D9550 | 48 21 FF C5 */	bl _restgpr_29
/* 813D9554 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D9558 | 7C 08 03 A6 */	mtlr r0
/* 813D955C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D9560 | 4E 80 00 20 */	blr
.endfn allocfunc__Q33ipl5scene8NetSetupFUll

# .text:0x7C8 | 0x813D9564 | size: 0x58
# ipl::scene::NetSetup::freefunc(unsigned long, void*, long)
.fn freefunc__Q33ipl5scene8NetSetupFUlPvl, global
/* 813D9564 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D9568 | 7C 08 02 A6 */	mflr r0
/* 813D956C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D9570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D9574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D9578 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D957C | 7C 9E 23 78 */	mr r30, r4
/* 813D9580 | 41 82 00 24 */	beq .L_813D95A4
/* 813D9584 | 3F E0 81 0C */	lis r31, sAllocLock__Q33ipl5scene8NetSetup@ha
/* 813D9588 | 38 7F 83 C8 */	addi r3, r31, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D958C | 48 15 86 7D */	bl fn_81531C08
/* 813D9590 | 80 6D AB 9C */	lwz r3, sHeap__Q33ipl5scene8NetSetup@sda21(r0)
/* 813D9594 | 7F C4 F3 78 */	mr r4, r30
/* 813D9598 | 48 18 14 6D */	bl fn_8155AA04
/* 813D959C | 38 7F 83 C8 */	addi r3, r31, sAllocLock__Q33ipl5scene8NetSetup@l
/* 813D95A0 | 48 15 87 45 */	bl fn_81531CE4
.L_813D95A4:
/* 813D95A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D95A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D95AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D95B0 | 7C 08 03 A6 */	mtlr r0
/* 813D95B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D95B8 | 4E 80 00 20 */	blr
.endfn freefunc__Q33ipl5scene8NetSetupFUlPvl

# 0x81653C18..0x81653CE8 | size: 0xD0
.data
.balign 8

# .data:0x0 | 0x81653C18 | size: 0x67
.obj lbl_81653C18, global
	.4byte 0x4E434453
	.4byte 0x65744970
	.4byte 0x436F6E66
	.4byte 0x69672829
	.4byte 0x0A004E43
	.4byte 0x44536574
	.4byte 0x4966436F
	.4byte 0x6E666967
	.4byte 0x28290A00
	.4byte 0x5B464149
	.4byte 0x4C5D2053
	.4byte 0x4F537461
	.4byte 0x72747570
	.4byte 0x28292066
	.4byte 0x61696C65
	.4byte 0x642E2825
	.4byte 0x64290A00
	.4byte 0x3C457272
	.4byte 0x6F722043
	.4byte 0x6F64653A
	.4byte 0x2025643E
	.4byte 0x0A004950
	.4byte 0x20616464
	.4byte 0x72657373
	.4byte 0x203D2025
	.byte 0x73, 0x0A, 0x00
.endobj lbl_81653C18

# .data:0x67 | 0x81653C7F | size: 0x11
.obj lbl_81653C7F, global
	.string "NCDReadConfig()\n"
.endobj lbl_81653C7F

# .data:0x78 | 0x81653C90 | size: 0x30
.obj lbl_81653C90, global
	.string "[error] Failed to read settings from NAND.(%d)\n"
.endobj lbl_81653C90

# .data:0xA8 | 0x81653CC0 | size: 0x18
.obj lbl_81653CC0, global
	.4byte 0x4F534372
	.4byte 0x65617465
	.4byte 0x54687265
	.4byte 0x61642066
	.4byte 0x61696C65
	.4byte 0x640A0000
.endobj lbl_81653CC0

# .data:0xC0 | 0x81653CD8 | size: 0x10
# ipl::scene::NetSetup::__vtable
.obj __vt__Q33ipl5scene8NetSetup, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene8NetSetupFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene8NetSetup

# 0x81698BD8..0x81698BE0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698BD8 | size: 0x4
# ipl::scene::NetSetup::sHeapBuf
.obj sHeapBuf__Q33ipl5scene8NetSetup, global
	.skip 0x4
.endobj sHeapBuf__Q33ipl5scene8NetSetup

# .sbss:0x4 | 0x81698BDC | size: 0x4
# ipl::scene::NetSetup::sHeap
.obj sHeap__Q33ipl5scene8NetSetup, global
	.skip 0x4
.endobj sHeap__Q33ipl5scene8NetSetup
