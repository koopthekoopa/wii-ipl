.include "macros.inc"
.file "iplNandWall.cpp"

# 0x8133DC0C..0x8133DE08 | size: 0x1FC
.text
.balign 4

# .text:0x0 | 0x8133DC0C | size: 0xDC
# ipl::nandwall::throwNandCheckCommand(void*)
.fn throwNandCheckCommand__Q23ipl8nandwallFPv, global
/* 8133DC0C 0000C00C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133DC10 0000C010  7C 08 02 A6 */	mflr r0
/* 8133DC14 0000C014  38 6D A6 70 */	li r3, lbl_816986B0@sda21
/* 8133DC18 0000C018  38 8D A6 74 */	li r4, lbl_816986B4@sda21
/* 8133DC1C 0000C01C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8133DC20 0000C020  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8133DC24 0000C024  3F E0 81 63 */	lis r31, lbl_81634EF8@ha
/* 8133DC28 0000C028  3B FF 4E F8 */	addi r31, r31, lbl_81634EF8@l
/* 8133DC2C 0000C02C  48 02 29 65 */	bl SecretGetUserUsage__Q33ipl4nand7wrapperFPUlPUl
/* 8133DC30 0000C030  38 61 00 08 */	addi r3, r1, 0x8
/* 8133DC34 0000C034  38 80 00 00 */	li r4, 0x0
/* 8133DC38 0000C038  38 A0 00 1C */	li r5, 0x1c
/* 8133DC3C 0000C03C  4B FF 26 F9 */	bl memset
/* 8133DC40 0000C040  38 61 00 08 */	addi r3, r1, 0x8
/* 8133DC44 0000C044  48 02 2A 3D */	bl SecretGetFileSystemStatus__Q33ipl4nand7wrapperFP20NANDFileSystemStatus
/* 8133DC48 0000C048  38 A1 00 08 */	addi r5, r1, 0x8
/* 8133DC4C 0000C04C  38 6D A6 7C */	li r3, lbl_816986BC@sda21
/* 8133DC50 0000C050  38 8D A6 78 */	li r4, lbl_816986B8@sda21
/* 8133DC54 0000C054  48 00 00 D5 */	bl calcGlobalUsage___Q23ipl8nandwallFPUlPUlP20NANDFileSystemStatus
/* 8133DC58 0000C058  38 7F 00 00 */	addi r3, r31, 0x0
/* 8133DC5C 0000C05C  4C C6 31 82 */	crclr cr1eq
/* 8133DC60 0000C060  48 1F 0A 41 */	bl OSReport
/* 8133DC64 0000C064  38 7F 00 30 */	addi r3, r31, 0x30
/* 8133DC68 0000C068  4C C6 31 82 */	crclr cr1eq
/* 8133DC6C 0000C06C  48 1F 0A 35 */	bl OSReport
/* 8133DC70 0000C070  80 8D A6 7C */	lwz r4, lbl_816986BC@sda21(r0)
/* 8133DC74 0000C074  38 7F 00 5E */	addi r3, r31, 0x5e
/* 8133DC78 0000C078  80 AD A6 70 */	lwz r5, lbl_816986B0@sda21(r0)
/* 8133DC7C 0000C07C  4C C6 31 82 */	crclr cr1eq
/* 8133DC80 0000C080  48 1F 0A 21 */	bl OSReport
/* 8133DC84 0000C084  80 8D A6 78 */	lwz r4, lbl_816986B8@sda21(r0)
/* 8133DC88 0000C088  38 7F 00 86 */	addi r3, r31, 0x86
/* 8133DC8C 0000C08C  80 AD A6 74 */	lwz r5, lbl_816986B4@sda21(r0)
/* 8133DC90 0000C090  4C C6 31 82 */	crclr cr1eq
/* 8133DC94 0000C094  48 1F 0A 0D */	bl OSReport
/* 8133DC98 0000C098  38 7F 00 00 */	addi r3, r31, 0x0
/* 8133DC9C 0000C09C  4C C6 31 82 */	crclr cr1eq
/* 8133DCA0 0000C0A0  48 1F 0A 01 */	bl OSReport
/* 8133DCA4 0000C0A4  48 00 00 45 */	bl isNandCapacity__Q23ipl8nandwallFv
/* 8133DCA8 0000C0A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133DCAC 0000C0AC  40 82 00 18 */	bne .L_8133DCC4
/* 8133DCB0 0000C0B0  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133DCB4 0000C0B4  38 00 00 01 */	li r0, 0x1
/* 8133DCB8 0000C0B8  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133DCBC 0000C0BC  98 03 02 BB */	stb r0, 0x2bb(r3)
/* 8133DCC0 0000C0C0  48 00 00 14 */	b .L_8133DCD4
.L_8133DCC4:
/* 8133DCC4 0000C0C4  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133DCC8 0000C0C8  38 00 00 00 */	li r0, 0x0
/* 8133DCCC 0000C0CC  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133DCD0 0000C0D0  98 03 02 BB */	stb r0, 0x2bb(r3)
.L_8133DCD4:
/* 8133DCD4 0000C0D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133DCD8 0000C0D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8133DCDC 0000C0DC  7C 08 03 A6 */	mtlr r0
/* 8133DCE0 0000C0E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8133DCE4 0000C0E4  4E 80 00 20 */	blr
.endfn throwNandCheckCommand__Q23ipl8nandwallFPv

# .text:0xDC | 0x8133DCE8 | size: 0x40
# ipl::nandwall::isNandCapacity()
.fn isNandCapacity__Q23ipl8nandwallFv, global
/* 8133DCE8 0000C0E8  80 0D A6 70 */	lwz r0, lbl_816986B0@sda21(r0)
/* 8133DCEC 0000C0EC  28 00 44 00 */	cmplwi r0, 0x4400
/* 8133DCF0 0000C0F0  41 81 00 30 */	bgt .L_8133DD20
/* 8133DCF4 0000C0F4  80 0D A6 74 */	lwz r0, lbl_816986B4@sda21(r0)
/* 8133DCF8 0000C0F8  28 00 0F A0 */	cmplwi r0, 0xfa0
/* 8133DCFC 0000C0FC  41 81 00 24 */	bgt .L_8133DD20
/* 8133DD00 0000C100  80 0D A6 7C */	lwz r0, lbl_816986BC@sda21(r0)
/* 8133DD04 0000C104  28 00 0E 08 */	cmplwi r0, 0xe08
/* 8133DD08 0000C108  41 80 00 18 */	blt .L_8133DD20
/* 8133DD0C 0000C10C  80 0D A6 78 */	lwz r0, lbl_816986B8@sda21(r0)
/* 8133DD10 0000C110  28 00 00 80 */	cmplwi r0, 0x80
/* 8133DD14 0000C114  41 80 00 0C */	blt .L_8133DD20
/* 8133DD18 0000C118  38 60 00 01 */	li r3, 0x1
/* 8133DD1C 0000C11C  4E 80 00 20 */	blr
.L_8133DD20:
/* 8133DD20 0000C120  38 60 00 00 */	li r3, 0x0
/* 8133DD24 0000C124  4E 80 00 20 */	blr
.endfn isNandCapacity__Q23ipl8nandwallFv

# .text:0x11C | 0x8133DD28 | size: 0x38
# ipl::nandwall::calcGlobalUsage_(unsigned long*, unsigned long*, NANDFileSystemStatus*)
.fn calcGlobalUsage___Q23ipl8nandwallFPUlPUlP20NANDFileSystemStatus, global
/* 8133DD28 0000C128  80 E5 00 18 */	lwz r7, 0x18(r5)
/* 8133DD2C 0000C12C  3C C0 00 01 */	lis r6, 0x1
/* 8133DD30 0000C130  81 25 00 0C */	lwz r9, 0xc(r5)
/* 8133DD34 0000C134  38 06 80 00 */	addi r0, r6, -0x8000
/* 8133DD38 0000C138  81 05 00 10 */	lwz r8, 0x10(r5)
/* 8133DD3C 0000C13C  20 C7 17 FF */	subfic r6, r7, 0x17ff
/* 8133DD40 0000C140  90 C4 00 00 */	stw r6, 0x0(r4)
/* 8133DD44 0000C144  7C C9 42 14 */	add r6, r9, r8
/* 8133DD48 0000C148  38 C6 01 40 */	addi r6, r6, 0x140
/* 8133DD4C 0000C14C  80 85 00 08 */	lwz r4, 0x8(r5)
/* 8133DD50 0000C150  7C 06 00 50 */	subf r0, r6, r0
/* 8133DD54 0000C154  7C 04 00 50 */	subf r0, r4, r0
/* 8133DD58 0000C158  90 03 00 00 */	stw r0, 0x0(r3)
/* 8133DD5C 0000C15C  4E 80 00 20 */	blr
.endfn calcGlobalUsage___Q23ipl8nandwallFPUlPUlP20NANDFileSystemStatus

# .text:0x154 | 0x8133DD60 | size: 0xA8
# ipl::nandwall::checkNandCapacityAppBootable()
.fn checkNandCapacityAppBootable__Q23ipl8nandwallFv, global
/* 8133DD60 0000C160  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133DD64 0000C164  7C 08 02 A6 */	mflr r0
/* 8133DD68 0000C168  38 6D 80 88 */	li r3, lbl_816960C8@sda21
/* 8133DD6C 0000C16C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8133DD70 0000C170  38 81 00 14 */	addi r4, r1, 0x14
/* 8133DD74 0000C174  38 A1 00 10 */	addi r5, r1, 0x10
/* 8133DD78 0000C178  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8133DD7C 0000C17C  3B E0 00 00 */	li r31, 0x0
/* 8133DD80 0000C180  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8133DD84 0000C184  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8133DD88 0000C188  48 02 27 95 */	bl SecretGetUsage__Q33ipl4nand7wrapperFPCcPUlPUl
/* 8133DD8C 0000C18C  38 61 00 18 */	addi r3, r1, 0x18
/* 8133DD90 0000C190  38 80 00 00 */	li r4, 0x0
/* 8133DD94 0000C194  38 A0 00 1C */	li r5, 0x1c
/* 8133DD98 0000C198  4B FF 25 9D */	bl memset
/* 8133DD9C 0000C19C  38 61 00 18 */	addi r3, r1, 0x18
/* 8133DDA0 0000C1A0  48 02 28 E1 */	bl SecretGetFileSystemStatus__Q33ipl4nand7wrapperFP20NANDFileSystemStatus
/* 8133DDA4 0000C1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DDA8 0000C1A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8133DDAC 0000C1AC  38 81 00 08 */	addi r4, r1, 0x8
/* 8133DDB0 0000C1B0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8133DDB4 0000C1B4  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133DDB8 0000C1B8  4B FF FF 71 */	bl calcGlobalUsage___Q23ipl8nandwallFPUlPUlP20NANDFileSystemStatus
/* 8133DDBC 0000C1BC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8133DDC0 0000C1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DDC4 0000C1C4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8133DDC8 0000C1C8  7C 84 02 14 */	add r4, r4, r0
/* 8133DDCC 0000C1CC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8133DDD0 0000C1D0  28 04 0E 00 */	cmplwi r4, 0xe00
/* 8133DDD4 0000C1D4  7C 60 1A 14 */	add r3, r0, r3
/* 8133DDD8 0000C1D8  38 03 FF FF */	subi r0, r3, 0x1
/* 8133DDDC 0000C1DC  41 80 00 14 */	blt .L_8133DDF0
/* 8133DDE0 0000C1E0  28 00 00 60 */	cmplwi r0, 0x60
/* 8133DDE4 0000C1E4  41 80 00 0C */	blt .L_8133DDF0
/* 8133DDE8 0000C1E8  38 60 00 01 */	li r3, 0x1
/* 8133DDEC 0000C1EC  48 00 00 08 */	b .L_8133DDF4
.L_8133DDF0:
/* 8133DDF0 0000C1F0  38 60 00 00 */	li r3, 0x0
.L_8133DDF4:
/* 8133DDF4 0000C1F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133DDF8 0000C1F8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8133DDFC 0000C1FC  7C 08 03 A6 */	mtlr r0
/* 8133DE00 0000C200  38 21 00 40 */	addi r1, r1, 0x40
/* 8133DE04 0000C204  4E 80 00 20 */	blr
.endfn checkNandCapacityAppBootable__Q23ipl8nandwallFv

# 0x81634EF8..0x81634FA8 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x81634EF8 | size: 0xB0
.obj lbl_81634EF8, global
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A0A00
	.4byte 0x204E414E
	.4byte 0x44205553
	.4byte 0x41474520
	.4byte 0x3A205B66
	.4byte 0x73626C6F
	.4byte 0x636B3A20
	.4byte 0x66726565
	.4byte 0x2020202F
	.4byte 0x20757365
	.4byte 0x725F7573
	.4byte 0x65645D20
	.4byte 0x0A00204E
	.4byte 0x414E4420
	.4byte 0x55534147
	.4byte 0x45203A20
	.4byte 0x5B667362
	.4byte 0x6C6F636B
	.4byte 0x3A202536
	.4byte 0x64202F20
	.4byte 0x25366420
	.4byte 0x20205D20
	.4byte 0x0A00204E
	.4byte 0x414E4420
	.4byte 0x55534147
	.4byte 0x45203A20
	.4byte 0x5B692D6E
	.4byte 0x6F646573
	.4byte 0x3A202536
	.4byte 0x64202F20
	.4byte 0x25366420
	.4byte 0x20205D20
	.4byte 0x0A000000
.endobj lbl_81634EF8

# 0x816960C8..0x816960D0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960C8 | size: 0x8
.obj lbl_816960C8, global
	.4byte 0x2F746D70
	.4byte 0x00000000
.endobj lbl_816960C8

# 0x816986B0..0x816986C0 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986B0 | size: 0x4
.obj lbl_816986B0, global
	.skip 0x4
.endobj lbl_816986B0

# .sbss:0x4 | 0x816986B4 | size: 0x4
.obj lbl_816986B4, global
	.skip 0x4
.endobj lbl_816986B4

# .sbss:0x8 | 0x816986B8 | size: 0x4
.obj lbl_816986B8, global
	.skip 0x4
.endobj lbl_816986B8

# .sbss:0xC | 0x816986BC | size: 0x4
.obj lbl_816986BC, global
	.skip 0x4
.endobj lbl_816986BC
