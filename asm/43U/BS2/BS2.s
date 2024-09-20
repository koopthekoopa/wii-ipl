.include "macros.inc"
.file "BS2.c"

# 0x8108A6C0..0x8108A6E0 | size: 0x20
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A6C0 | size: 0x20
.obj BS2StateFlags, global
	.skip 0x20
.endobj BS2StateFlags

# 0x813796F8..0x8137AEA4 | size: 0x17AC
.text
.balign 4

# .text:0x0 | 0x813796F8 | size: 0x10
.fn BS2GetLaunchCode, global
/* 813796F8 | 3C 60 81 09 */	lis r3, BS2StateFlags@ha
/* 813796FC | 38 63 A6 C0 */	addi r3, r3, BS2StateFlags@l
/* 81379700 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81379704 | 4E 80 00 20 */	blr
.endfn BS2GetLaunchCode

# .text:0x10 | 0x81379708 | size: 0x18
.fn BS2GetArgc, global
/* 81379708 | 3C 60 81 09 */	lis r3, BS2StateFlags@ha
/* 8137970C | 38 63 A6 C0 */	addi r3, r3, BS2StateFlags@l
/* 81379710 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81379714 | 7C 63 02 14 */	add r3, r3, r0
/* 81379718 | 80 63 F0 20 */	lwz r3, -0xfe0(r3)
/* 8137971C | 4E 80 00 20 */	blr
.endfn BS2GetArgc

# .text:0x28 | 0x81379720 | size: 0x2C
.fn BS2GetArgv, global
/* 81379720 | 3C 60 81 09 */	lis r3, BS2StateFlags@ha
/* 81379724 | 38 63 A6 C0 */	addi r3, r3, BS2StateFlags@l
/* 81379728 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137972C | 7C 63 02 14 */	add r3, r3, r0
/* 81379730 | 80 03 F0 20 */	lwz r0, -0xfe0(r3)
/* 81379734 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81379738 | 40 82 00 0C */	bne .L_81379744
/* 8137973C | 38 60 00 00 */	li r3, 0x0
/* 81379740 | 4E 80 00 20 */	blr
.L_81379744:
/* 81379744 | 38 63 F0 24 */	subi r3, r3, 0xfdc
/* 81379748 | 4E 80 00 20 */	blr
.endfn BS2GetArgv

# .text:0x54 | 0x8137974C | size: 0x14
.fn BS2_8137974C, global
/* 8137974C | 3C 80 81 09 */	lis r4, BS2StateFlags@ha
/* 81379750 | 38 84 A6 C0 */	addi r4, r4, BS2StateFlags@l
/* 81379754 | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 81379758 | 80 84 00 1C */	lwz r4, 0x1c(r4)
/* 8137975C | 4E 80 00 20 */	blr
.endfn BS2_8137974C

# .text:0x68 | 0x81379760 | size: 0x10
.fn BS2AllocForEject, local
/* 81379760 | 3C A0 81 09 */	lis r5, BS2Mach_8108B6E0@ha
/* 81379764 | 7C 64 1B 78 */	mr r4, r3
/* 81379768 | 38 65 B6 E0 */	addi r3, r5, BS2Mach_8108B6E0@l
/* 8137976C | 48 1E 1E FC */	b fn_8155B668
.endfn BS2AllocForEject

# .text:0x78 | 0x81379770 | size: 0x30
.fn BS2FreeForEject, local
/* 81379770 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81379774 | 7C 08 02 A6 */	mflr r0
/* 81379778 | 3C A0 81 09 */	lis r5, BS2Mach_8108B6E0@ha
/* 8137977C | 7C 64 1B 78 */	mr r4, r3
/* 81379780 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379784 | 38 65 B6 E0 */	addi r3, r5, BS2Mach_8108B6E0@l
/* 81379788 | 48 1E 1E F1 */	bl fn_8155B678
/* 8137978C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81379790 | 38 60 00 01 */	li r3, 0x1
/* 81379794 | 7C 08 03 A6 */	mtlr r0
/* 81379798 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137979C | 4E 80 00 20 */	blr
.endfn BS2FreeForEject

# .text:0xA8 | 0x813797A0 | size: 0x8
.fn BS2GetBootType, global
/* 813797A0 | 80 6D A9 BC */	lwz r3, lbl_816989FC@sda21(r0)
/* 813797A4 | 4E 80 00 20 */	blr
.endfn BS2GetBootType

# .text:0xB0 | 0x813797A8 | size: 0x590
.fn BS2BootIRD, global
/* 813797A8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813797AC | 7C 08 02 A6 */	mflr r0
/* 813797B0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813797B4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813797B8 | 48 27 FC F5 */	bl _savegpr_22
/* 813797BC | 88 A2 83 80 */	lbz r5, lbl_81694780@sda21(r0)
/* 813797C0 | 38 C0 00 00 */	li r6, 0x0
/* 813797C4 | 88 82 83 81 */	lbz r4, lbl_81694781@sda21(r0)
/* 813797C8 | 3F 80 81 64 */	lis r28, lbl_816457D8@ha
/* 813797CC | 88 62 83 82 */	lbz r3, lbl_81694782@sda21(r0)
/* 813797D0 | 3B 9C 57 D8 */	addi r28, r28, lbl_816457D8@l
/* 813797D4 | 88 02 83 83 */	lbz r0, lbl_81694783@sda21(r0)
/* 813797D8 | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 813797DC | 98 C1 00 15 */	stb r6, 0x15(r1)
/* 813797E0 | 98 C1 00 16 */	stb r6, 0x16(r1)
/* 813797E4 | 98 C1 00 17 */	stb r6, 0x17(r1)
/* 813797E8 | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 813797EC | 98 81 00 11 */	stb r4, 0x11(r1)
/* 813797F0 | 98 61 00 12 */	stb r3, 0x12(r1)
/* 813797F4 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813797F8 | 48 1B 3B 89 */	bl fn_8152D380
/* 813797FC | 7C 77 1B 78 */	mr r23, r3
/* 81379800 | 3C 63 FF E0 */	subis r3, r3, 0x20
/* 81379804 | 3C 80 00 20 */	lis r4, 0x20
/* 81379808 | 38 A0 00 00 */	li r5, 0x0
/* 8137980C | 48 1E 0E 69 */	bl fn_8155A674
/* 81379810 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379814 | 7C 76 1B 78 */	mr r22, r3
/* 81379818 | 40 82 00 18 */	bne .L_81379830
/* 8137981C | 38 BC 00 00 */	addi r5, r28, 0x0
/* 81379820 | 38 6D 84 E4 */	li r3, lbl_81696524@sda21
/* 81379824 | 38 80 03 75 */	li r4, 0x375
/* 81379828 | 4C C6 31 82 */	crclr cr1eq
/* 8137982C | 48 1B 4F 05 */	bl OSPanic
.L_81379830:
/* 81379830 | 3C 77 FF E0 */	subis r3, r23, 0x20
/* 81379834 | 48 1B 3B 7D */	bl fn_8152D3B0
/* 81379838 | 7E C4 B3 78 */	mr r4, r22
/* 8137983C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81379840 | 38 A0 00 20 */	li r5, 0x20
/* 81379844 | 48 1E 1E 45 */	bl fn_8155B688
/* 81379848 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8137984C | 48 00 1B 5D */	bl BS2SetMemAllocator
/* 81379850 | 38 7C 00 1D */	addi r3, r28, 0x1d
/* 81379854 | 38 80 00 01 */	li r4, 0x1
/* 81379858 | 38 A0 00 13 */	li r5, 0x13
/* 8137985C | 4C C6 31 82 */	crclr cr1eq
/* 81379860 | 48 1B 4E 41 */	bl OSReport
/* 81379864 | 48 1C 49 D5 */	bl VIGetTvFormat
/* 81379868 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137986C | 41 82 00 30 */	beq .L_8137989C
/* 81379870 | 40 80 00 10 */	bge .L_81379880
/* 81379874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379878 | 40 80 00 14 */	bge .L_8137988C
/* 8137987C | 48 00 00 3C */	b .L_813798B8
.L_81379880:
/* 81379880 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81379884 | 40 80 00 34 */	bge .L_813798B8
/* 81379888 | 48 00 00 24 */	b .L_813798AC
.L_8137988C:
/* 8137988C | 38 6D 84 EA */	li r3, lbl_8169652A@sda21
/* 81379890 | 4C C6 31 82 */	crclr cr1eq
/* 81379894 | 48 1B 4E 0D */	bl OSReport
/* 81379898 | 48 00 00 20 */	b .L_813798B8
.L_8137989C:
/* 8137989C | 38 6D 84 EF */	li r3, lbl_8169652F@sda21
/* 813798A0 | 4C C6 31 82 */	crclr cr1eq
/* 813798A4 | 48 1B 4D FD */	bl OSReport
/* 813798A8 | 48 00 00 10 */	b .L_813798B8
.L_813798AC:
/* 813798AC | 38 6D 84 F3 */	li r3, lbl_81696533@sda21
/* 813798B0 | 4C C6 31 82 */	crclr cr1eq
/* 813798B4 | 48 1B 4D ED */	bl OSReport
.L_813798B8:
/* 813798B8 | 38 6D 84 F8 */	li r3, lbl_81696538@sda21
/* 813798BC | 4C C6 31 82 */	crclr cr1eq
/* 813798C0 | 48 1B 4D E1 */	bl OSReport
/* 813798C4 | 3C A0 80 00 */	lis r5, 0x8000
/* 813798C8 | 38 00 00 21 */	li r0, 0x21
/* 813798CC | 90 05 00 2C */	stw r0, 0x2c(r5)
/* 813798D0 | 3C 80 CC 00 */	lis r4, 0xcc00
/* 813798D4 | 38 60 FF FF */	li r3, -0x1
/* 813798D8 | 80 04 30 2C */	lwz r0, 0x302c(r4)
/* 813798DC | 54 04 27 3E */	srwi r4, r0, 28
/* 813798E0 | 38 04 00 21 */	addi r0, r4, 0x21
/* 813798E4 | 90 05 00 2C */	stw r0, 0x2c(r5)
/* 813798E8 | 48 20 EF 85 */	bl fn_8158886C
/* 813798EC | 38 60 00 20 */	li r3, 0x20
/* 813798F0 | 38 80 00 20 */	li r4, 0x20
/* 813798F4 | 48 1B 3B 19 */	bl fn_8152D40C
/* 813798F8 | 7C 77 1B 78 */	mr r23, r3
/* 813798FC | 38 60 00 20 */	li r3, 0x20
/* 81379900 | 38 80 00 20 */	li r4, 0x20
/* 81379904 | 48 1B 3B 09 */	bl fn_8152D40C
/* 81379908 | 7C 76 1B 78 */	mr r22, r3
/* 8137990C | 7E E3 BB 78 */	mr r3, r23
/* 81379910 | 38 80 00 20 */	li r4, 0x20
/* 81379914 | 48 1F 11 A9 */	bl SCGetProductAreaString
/* 81379918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137991C | 41 82 00 24 */	beq .L_81379940
/* 81379920 | 7E C3 B3 78 */	mr r3, r22
/* 81379924 | 7E E7 BB 78 */	mr r7, r23
/* 81379928 | 38 9C 00 55 */	addi r4, r28, 0x55
/* 8137992C | 38 A0 00 04 */	li r5, 0x4
/* 81379930 | 38 C0 00 03 */	li r6, 0x3
/* 81379934 | 4C C6 31 82 */	crclr cr1eq
/* 81379938 | 48 28 71 49 */	bl sprintf
/* 8137993C | 48 00 00 20 */	b .L_8137995C
.L_81379940:
/* 81379940 | 7E C3 B3 78 */	mr r3, r22
/* 81379944 | 7E E7 BB 78 */	mr r7, r23
/* 81379948 | 38 9C 00 5F */	addi r4, r28, 0x5f
/* 8137994C | 38 A0 00 04 */	li r5, 0x4
/* 81379950 | 38 C0 00 03 */	li r6, 0x3
/* 81379954 | 4C C6 31 82 */	crclr cr1eq
/* 81379958 | 48 28 71 29 */	bl sprintf
.L_8137995C:
/* 8137995C | 89 81 00 14 */	lbz r12, 0x14(r1)
/* 81379960 | 7E C5 B3 78 */	mr r5, r22
/* 81379964 | 89 61 00 15 */	lbz r11, 0x15(r1)
/* 81379968 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8137996C | 89 41 00 16 */	lbz r10, 0x16(r1)
/* 81379970 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81379974 | 89 21 00 17 */	lbz r9, 0x17(r1)
/* 81379978 | 89 01 00 10 */	lbz r8, 0x10(r1)
/* 8137997C | 88 E1 00 11 */	lbz r7, 0x11(r1)
/* 81379980 | 88 C1 00 12 */	lbz r6, 0x12(r1)
/* 81379984 | 88 01 00 13 */	lbz r0, 0x13(r1)
/* 81379988 | 99 81 00 08 */	stb r12, 0x8(r1)
/* 8137998C | 99 61 00 09 */	stb r11, 0x9(r1)
/* 81379990 | 99 41 00 0A */	stb r10, 0xa(r1)
/* 81379994 | 99 21 00 0B */	stb r9, 0xb(r1)
/* 81379998 | 99 01 00 0C */	stb r8, 0xc(r1)
/* 8137999C | 98 E1 00 0D */	stb r7, 0xd(r1)
/* 813799A0 | 98 C1 00 0E */	stb r6, 0xe(r1)
/* 813799A4 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813799A8 | 48 00 7A AD */	bl BS2ScreenReport
/* 813799AC | 3F C0 80 00 */	lis r30, 0x8000
/* 813799B0 | 3B 00 00 0F */	li r24, 0xf
/* 813799B4 | 3B 2D 85 22 */	li r25, lbl_81696562@sda21
/* 813799B8 | 3F A0 81 64 */	lis r29, jumptable_816459AC@ha
/* 813799BC | 3B 40 00 3C */	li r26, 0x3c
/* 813799C0 | 3B E0 FF FF */	li r31, -0x1
.L_813799C4:
/* 813799C4 | 48 00 39 F5 */	bl BS2Tick
/* 813799C8 | 38 03 FF DF */	subi r0, r3, 0x21
/* 813799CC | 28 00 00 24 */	cmplwi r0, 0x24
/* 813799D0 | 41 81 03 08 */	bgt .L_81379CD8
/* 813799D4 | 38 7D 59 AC */	addi r3, r29, jumptable_816459AC@l
/* 813799D8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813799DC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813799E0 | 7C 69 03 A6 */	mtctr r3
/* 813799E4 | 4E 80 04 20 */	bctr
.L_813799E8:
/* 813799E8 | 38 6D 84 FF */	li r3, lbl_8169653F@sda21
/* 813799EC | 4C C6 31 82 */	crclr cr1eq
/* 813799F0 | 48 1B 4C B1 */	bl OSReport
/* 813799F4 | 38 7C 00 6A */	addi r3, r28, 0x6a
/* 813799F8 | 3C 80 80 00 */	lis r4, 0x8000
/* 813799FC | 4C C6 31 82 */	crclr cr1eq
/* 81379A00 | 48 1B 4C A1 */	bl OSReport
/* 81379A04 | 38 7C 00 82 */	addi r3, r28, 0x82
/* 81379A08 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 81379A0C | 4C C6 31 82 */	crclr cr1eq
/* 81379A10 | 48 1B 4C 91 */	bl OSReport
/* 81379A14 | 88 9E 00 06 */	lbz r4, 0x6(r30)
/* 81379A18 | 38 7C 00 9A */	addi r3, r28, 0x9a
/* 81379A1C | 4C C6 31 82 */	crclr cr1eq
/* 81379A20 | 48 1B 4C 81 */	bl OSReport
/* 81379A24 | 88 9E 00 07 */	lbz r4, 0x7(r30)
/* 81379A28 | 38 7C 00 AE */	addi r3, r28, 0xae
/* 81379A2C | 4C C6 31 82 */	crclr cr1eq
/* 81379A30 | 48 1B 4C 71 */	bl OSReport
/* 81379A34 | 48 00 19 7D */	bl BS2IsBannerAvailable
/* 81379A38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379A3C | 38 9C 00 CC */	addi r4, r28, 0xcc
/* 81379A40 | 41 82 00 08 */	beq .L_81379A48
/* 81379A44 | 38 9C 00 C2 */	addi r4, r28, 0xc2
.L_81379A48:
/* 81379A48 | 38 7C 00 DA */	addi r3, r28, 0xda
/* 81379A4C | 4C C6 31 82 */	crclr cr1eq
/* 81379A50 | 48 1B 4C 51 */	bl OSReport
/* 81379A54 | 48 00 67 89 */	bl BS2CheckParentalControl
/* 81379A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379A5C | 38 8D 85 09 */	li r4, lbl_81696549@sda21
/* 81379A60 | 41 82 00 08 */	beq .L_81379A68
/* 81379A64 | 38 8D 85 01 */	li r4, lbl_81696541@sda21
.L_81379A68:
/* 81379A68 | 38 7C 00 EF */	addi r3, r28, 0xef
/* 81379A6C | 4C C6 31 82 */	crclr cr1eq
/* 81379A70 | 48 1B 4C 31 */	bl OSReport
/* 81379A74 | 38 60 00 01 */	li r3, 0x1
/* 81379A78 | 48 1C 46 B1 */	bl VISetBlack
/* 81379A7C | 48 1C 45 25 */	bl VIFlush
/* 81379A80 | 48 1C 35 69 */	bl VIWaitForRetrace
.L_81379A84:
/* 81379A84 | 48 1B 95 FD */	bl __OSSyncSram
/* 81379A88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379A8C | 41 82 FF F8 */	beq .L_81379A84
/* 81379A90 | 48 00 19 39 */	bl BS2IsDiagDisc
/* 81379A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379A98 | 41 82 00 08 */	beq .L_81379AA0
/* 81379A9C | 48 00 22 C9 */	bl BS2StartGame
.L_81379AA0:
/* 81379AA0 | 38 6D 84 E4 */	li r3, lbl_81696524@sda21
/* 81379AA4 | 38 80 03 01 */	li r4, 0x301
/* 81379AA8 | 38 AD 85 10 */	li r5, lbl_81696550@sda21
/* 81379AAC | 4C C6 31 82 */	crclr cr1eq
/* 81379AB0 | 48 1B 4C 81 */	bl OSPanic
/* 81379AB4 | 48 00 02 7C */	b .L_81379D30
.L_81379AB8:
/* 81379AB8 | 38 6D 84 FF */	li r3, lbl_8169653F@sda21
/* 81379ABC | 4C C6 31 82 */	crclr cr1eq
/* 81379AC0 | 48 1B 4B E1 */	bl OSReport
/* 81379AC4 | 38 7C 00 6A */	addi r3, r28, 0x6a
/* 81379AC8 | 3C 80 80 00 */	lis r4, 0x8000
/* 81379ACC | 4C C6 31 82 */	crclr cr1eq
/* 81379AD0 | 48 1B 4B D1 */	bl OSReport
/* 81379AD4 | 38 7C 00 82 */	addi r3, r28, 0x82
/* 81379AD8 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 81379ADC | 4C C6 31 82 */	crclr cr1eq
/* 81379AE0 | 48 1B 4B C1 */	bl OSReport
/* 81379AE4 | 88 9E 00 06 */	lbz r4, 0x6(r30)
/* 81379AE8 | 38 7C 00 9A */	addi r3, r28, 0x9a
/* 81379AEC | 4C C6 31 82 */	crclr cr1eq
/* 81379AF0 | 48 1B 4B B1 */	bl OSReport
/* 81379AF4 | 88 9E 00 07 */	lbz r4, 0x7(r30)
/* 81379AF8 | 38 7C 00 AE */	addi r3, r28, 0xae
/* 81379AFC | 4C C6 31 82 */	crclr cr1eq
/* 81379B00 | 48 1B 4B A1 */	bl OSReport
/* 81379B04 | 88 1E 00 08 */	lbz r0, 0x8(r30)
/* 81379B08 | 38 7C 01 03 */	addi r3, r28, 0x103
/* 81379B0C | 38 8D 85 14 */	li r4, lbl_81696554@sda21
/* 81379B10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81379B14 | 41 82 00 08 */	beq .L_81379B1C
/* 81379B18 | 38 8D 85 11 */	li r4, lbl_81696551@sda21
.L_81379B1C:
/* 81379B1C | 4C C6 31 82 */	crclr cr1eq
/* 81379B20 | 48 1B 4B 81 */	bl OSReport
/* 81379B24 | 88 1E 00 08 */	lbz r0, 0x8(r30)
/* 81379B28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81379B2C | 41 82 00 2C */	beq .L_81379B58
/* 81379B30 | 88 9E 00 09 */	lbz r4, 0x9(r30)
/* 81379B34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81379B38 | 41 82 00 14 */	beq .L_81379B4C
/* 81379B3C | 38 7C 01 17 */	addi r3, r28, 0x117
/* 81379B40 | 4C C6 31 82 */	crclr cr1eq
/* 81379B44 | 48 1B 4B 5D */	bl OSReport
/* 81379B48 | 48 00 00 10 */	b .L_81379B58
.L_81379B4C:
/* 81379B4C | 38 7C 01 2B */	addi r3, r28, 0x12b
/* 81379B50 | 4C C6 31 82 */	crclr cr1eq
/* 81379B54 | 48 1B 4B 4D */	bl OSReport
.L_81379B58:
/* 81379B58 | 38 60 00 01 */	li r3, 0x1
/* 81379B5C | 48 1C 45 CD */	bl VISetBlack
/* 81379B60 | 48 1C 44 41 */	bl VIFlush
/* 81379B64 | 48 1C 34 85 */	bl VIWaitForRetrace
.L_81379B68:
/* 81379B68 | 48 1B 95 19 */	bl __OSSyncSram
/* 81379B6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379B70 | 41 82 FF F8 */	beq .L_81379B68
/* 81379B74 | 38 6D 84 E4 */	li r3, lbl_81696524@sda21
/* 81379B78 | 38 80 03 1B */	li r4, 0x31b
/* 81379B7C | 38 AD 85 10 */	li r5, lbl_81696550@sda21
/* 81379B80 | 4C C6 31 82 */	crclr cr1eq
/* 81379B84 | 48 1B 4B AD */	bl OSPanic
/* 81379B88 | 48 00 01 A8 */	b .L_81379D30
.L_81379B8C:
/* 81379B8C | 38 7C 01 48 */	addi r3, r28, 0x148
/* 81379B90 | 4C C6 31 82 */	crclr cr1eq
/* 81379B94 | 48 1B 4B 0D */	bl OSReport
/* 81379B98 | 48 00 01 98 */	b .L_81379D30
.L_81379B9C:
/* 81379B9C | 38 7C 01 56 */	addi r3, r28, 0x156
/* 81379BA0 | 4C C6 31 82 */	crclr cr1eq
/* 81379BA4 | 48 1B 4A FD */	bl OSReport
/* 81379BA8 | 48 00 01 88 */	b .L_81379D30
.L_81379BAC:
/* 81379BAC | 38 7C 01 64 */	addi r3, r28, 0x164
/* 81379BB0 | 4C C6 31 82 */	crclr cr1eq
/* 81379BB4 | 48 1B 4A ED */	bl OSReport
/* 81379BB8 | 48 00 01 78 */	b .L_81379D30
.L_81379BBC:
/* 81379BBC | 38 7C 01 72 */	addi r3, r28, 0x172
/* 81379BC0 | 4C C6 31 82 */	crclr cr1eq
/* 81379BC4 | 48 1B 4A DD */	bl OSReport
/* 81379BC8 | 48 00 01 68 */	b .L_81379D30
.L_81379BCC:
/* 81379BCC | 38 7C 01 8A */	addi r3, r28, 0x18a
/* 81379BD0 | 4C C6 31 82 */	crclr cr1eq
/* 81379BD4 | 48 1B 4A CD */	bl OSReport
/* 81379BD8 | 48 00 01 58 */	b .L_81379D30
.L_81379BDC:
/* 81379BDC | 38 6D 84 FF */	li r3, lbl_8169653F@sda21
/* 81379BE0 | 4C C6 31 82 */	crclr cr1eq
/* 81379BE4 | 48 1B 4A BD */	bl OSReport
/* 81379BE8 | 38 7C 01 9B */	addi r3, r28, 0x19b
/* 81379BEC | 4C C6 31 82 */	crclr cr1eq
/* 81379BF0 | 48 1B 4A B1 */	bl OSReport
/* 81379BF4 | 48 00 65 C9 */	bl BS2GetUpdateEntry
/* 81379BF8 | 7C 77 1B 78 */	mr r23, r3
/* 81379BFC | 3A C0 00 00 */	li r22, 0x0
/* 81379C00 | 3B 60 00 00 */	li r27, 0x0
/* 81379C04 | 48 00 00 20 */	b .L_81379C24
.L_81379C08:
/* 81379C08 | 7C 97 DA 14 */	add r4, r23, r27
/* 81379C0C | 38 6D 85 18 */	li r3, lbl_81696558@sda21
/* 81379C10 | 4C C6 31 82 */	crclr cr1eq
/* 81379C14 | 38 84 00 60 */	addi r4, r4, 0x60
/* 81379C18 | 48 1B 4A 89 */	bl OSReport
/* 81379C1C | 3A D6 00 01 */	addi r22, r22, 0x1
/* 81379C20 | 3B 7B 02 00 */	addi r27, r27, 0x200
.L_81379C24:
/* 81379C24 | 48 00 65 A1 */	bl BS2GetUpdateEntryNum
/* 81379C28 | 7C 16 18 40 */	cmplw r22, r3
/* 81379C2C | 41 80 FF DC */	blt .L_81379C08
/* 81379C30 | 48 00 65 75 */	bl BS2StartUpdate
/* 81379C34 | 93 ED 84 E0 */	stw r31, lbl_81696520@sda21(r0)
/* 81379C38 | 48 00 00 F8 */	b .L_81379D30
.L_81379C3C:
/* 81379C3C | 80 6D 84 E0 */	lwz r3, lbl_81696520@sda21(r0)
/* 81379C40 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81379C44 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81379C48 | 90 0D 84 E0 */	stw r0, lbl_81696520@sda21(r0)
/* 81379C4C | 40 82 00 10 */	bne .L_81379C5C
/* 81379C50 | 38 7C 01 AA */	addi r3, r28, 0x1aa
/* 81379C54 | 4C C6 31 82 */	crclr cr1eq
/* 81379C58 | 48 1B 4A 49 */	bl OSReport
.L_81379C5C:
/* 81379C5C | 80 6D 84 E0 */	lwz r3, lbl_81696520@sda21(r0)
/* 81379C60 | 7C 03 D3 D6 */	divw r0, r3, r26
/* 81379C64 | 7C 00 D1 D6 */	mullw r0, r0, r26
/* 81379C68 | 7C 80 18 50 */	subf r4, r0, r3
/* 81379C6C | 7C 64 C3 D6 */	divw r3, r4, r24
/* 81379C70 | 90 8D 84 E0 */	stw r4, lbl_81696520@sda21(r0)
/* 81379C74 | 7C 03 C1 D6 */	mullw r0, r3, r24
/* 81379C78 | 7C 00 20 51 */	subf. r0, r0, r4
/* 81379C7C | 40 82 00 B4 */	bne .L_81379D30
/* 81379C80 | 7C 99 18 AE */	lbzx r4, r25, r3
/* 81379C84 | 38 6D 85 1E */	li r3, lbl_8169655E@sda21
/* 81379C88 | 7C 84 07 74 */	extsb r4, r4
/* 81379C8C | 4C C6 31 82 */	crclr cr1eq
/* 81379C90 | 48 1B 4A 11 */	bl OSReport
/* 81379C94 | 48 00 00 9C */	b .L_81379D30
.L_81379C98:
/* 81379C98 | 38 6D 85 27 */	li r3, lbl_81696567@sda21
/* 81379C9C | 4C C6 31 82 */	crclr cr1eq
/* 81379CA0 | 48 1B 4A 01 */	bl OSReport
/* 81379CA4 | 38 60 00 01 */	li r3, 0x1
/* 81379CA8 | 48 1C 44 81 */	bl VISetBlack
/* 81379CAC | 48 1C 42 F5 */	bl VIFlush
/* 81379CB0 | 48 1C 33 39 */	bl VIWaitForRetrace
.L_81379CB4:
/* 81379CB4 | 48 1B 93 CD */	bl __OSSyncSram
/* 81379CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379CBC | 41 82 FF F8 */	beq .L_81379CB4
/* 81379CC0 | 48 00 6B E1 */	bl OSReturnToMenu
/* 81379CC4 | 48 00 00 6C */	b .L_81379D30
.L_81379CC8:
/* 81379CC8 | 38 7C 01 B9 */	addi r3, r28, 0x1b9
/* 81379CCC | 4C C6 31 82 */	crclr cr1eq
/* 81379CD0 | 48 1B 49 D1 */	bl OSReport
/* 81379CD4 | 48 00 00 5C */	b .L_81379D30
.L_81379CD8:
/* 81379CD8 | 80 6D 84 E0 */	lwz r3, lbl_81696520@sda21(r0)
/* 81379CDC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81379CE0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81379CE4 | 90 0D 84 E0 */	stw r0, lbl_81696520@sda21(r0)
/* 81379CE8 | 40 82 00 10 */	bne .L_81379CF8
/* 81379CEC | 38 7C 01 C6 */	addi r3, r28, 0x1c6
/* 81379CF0 | 4C C6 31 82 */	crclr cr1eq
/* 81379CF4 | 48 1B 49 AD */	bl OSReport
.L_81379CF8:
/* 81379CF8 | 80 6D 84 E0 */	lwz r3, lbl_81696520@sda21(r0)
/* 81379CFC | 7C 03 D3 D6 */	divw r0, r3, r26
/* 81379D00 | 7C 00 D1 D6 */	mullw r0, r0, r26
/* 81379D04 | 7C 80 18 50 */	subf r4, r0, r3
/* 81379D08 | 7C 64 C3 D6 */	divw r3, r4, r24
/* 81379D0C | 90 8D 84 E0 */	stw r4, lbl_81696520@sda21(r0)
/* 81379D10 | 7C 03 C1 D6 */	mullw r0, r3, r24
/* 81379D14 | 7C 00 20 51 */	subf. r0, r0, r4
/* 81379D18 | 40 82 00 18 */	bne .L_81379D30
/* 81379D1C | 7C 99 18 AE */	lbzx r4, r25, r3
/* 81379D20 | 38 6D 85 1E */	li r3, lbl_8169655E@sda21
/* 81379D24 | 7C 84 07 74 */	extsb r4, r4
/* 81379D28 | 4C C6 31 82 */	crclr cr1eq
/* 81379D2C | 48 1B 49 75 */	bl OSReport
.L_81379D30:
/* 81379D30 | 48 1C 32 B9 */	bl VIWaitForRetrace
/* 81379D34 | 4B FF FC 90 */	b .L_813799C4
.endfn BS2BootIRD

# .text:0x640 | 0x81379D38 | size: 0x116C
.fn main, global
/* 81379D38 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 81379D3C | 7C 08 02 A6 */	mflr r0
/* 81379D40 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 81379D44 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81379D48 | 48 27 F7 65 */	bl _savegpr_22
/* 81379D4C | 3F 80 81 09 */	lis r28, BS2StateFlags@ha
/* 81379D50 | 3F A0 81 64 */	lis r29, lbl_816457D8@ha
/* 81379D54 | 3B 9C A6 C0 */	addi r28, r28, BS2StateFlags@l
/* 81379D58 | 3C 60 C0 00 */	lis r3, 0xc000
/* 81379D5C | 3B BD 57 D8 */	addi r29, r29, lbl_816457D8@l
.L_81379D60:
/* 81379D60 | 80 03 31 60 */	lwz r0, 0x3160(r3)
/* 81379D64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81379D68 | 40 82 FF F8 */	bne .L_81379D60
/* 81379D6C | 48 00 11 71 */	bl BS2Init
/* 81379D70 | 48 1B 22 0D */	bl fn_8152BF7C
/* 81379D74 | 48 00 66 F9 */	bl GPIOPPCInit
/* 81379D78 | 48 1C FA 61 */	bl fn_815497D8
/* 81379D7C | 48 1E E5 29 */	bl fn_815682A4
/* 81379D80 | 38 00 00 00 */	li r0, 0x0
/* 81379D84 | 3A E0 00 00 */	li r23, 0x0
/* 81379D88 | 90 01 00 28 */	stw r0, 0x28(r1)
.L_81379D8C:
/* 81379D8C | 38 60 00 00 */	li r3, 0x0
/* 81379D90 | 38 80 00 01 */	li r4, 0x1
/* 81379D94 | 38 A0 00 00 */	li r5, 0x0
/* 81379D98 | 48 1B FC D1 */	bl fn_81539A68
/* 81379D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379DA0 | 41 82 00 A0 */	beq .L_81379E40
/* 81379DA4 | 38 60 00 00 */	li r3, 0x0
/* 81379DA8 | 38 80 00 01 */	li r4, 0x1
/* 81379DAC | 38 A0 00 03 */	li r5, 0x3
/* 81379DB0 | 48 1B F5 25 */	bl fn_815392D4
/* 81379DB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379DB8 | 40 82 00 10 */	bne .L_81379DC8
/* 81379DBC | 38 60 00 00 */	li r3, 0x0
/* 81379DC0 | 48 1B FD A5 */	bl fn_81539B64
/* 81379DC4 | 48 00 00 7C */	b .L_81379E40
.L_81379DC8:
/* 81379DC8 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81379DCC | 40 82 00 0C */	bne .L_81379DD8
/* 81379DD0 | 38 00 00 00 */	li r0, 0x0
/* 81379DD4 | 48 00 00 08 */	b .L_81379DDC
.L_81379DD8:
/* 81379DD8 | 38 00 01 00 */	li r0, 0x100
.L_81379DDC:
/* 81379DDC | 64 00 A1 00 */	oris r0, r0, 0xa100
/* 81379DE0 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81379DE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81379DE8 | 38 60 00 00 */	li r3, 0x0
/* 81379DEC | 38 A0 00 04 */	li r5, 0x4
/* 81379DF0 | 38 C0 00 01 */	li r6, 0x1
/* 81379DF4 | 38 E0 00 00 */	li r7, 0x0
/* 81379DF8 | 48 1B E9 B5 */	bl fn_815387AC
/* 81379DFC | 38 60 00 00 */	li r3, 0x0
/* 81379E00 | 48 1B ED C5 */	bl fn_81538BC4
/* 81379E04 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81379E08 | 38 60 00 00 */	li r3, 0x0
/* 81379E0C | 38 A0 00 04 */	li r5, 0x4
/* 81379E10 | 38 C0 00 01 */	li r6, 0x1
/* 81379E14 | 38 E0 00 00 */	li r7, 0x0
/* 81379E18 | 48 1B E9 95 */	bl fn_815387AC
/* 81379E1C | 38 60 00 00 */	li r3, 0x0
/* 81379E20 | 48 1B ED A5 */	bl fn_81538BC4
/* 81379E24 | 38 60 00 00 */	li r3, 0x0
/* 81379E28 | 48 1B F5 DD */	bl fn_81539404
/* 81379E2C | 38 60 00 00 */	li r3, 0x0
/* 81379E30 | 48 1B FD 35 */	bl fn_81539B64
/* 81379E34 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81379E38 | 28 17 00 02 */	cmplwi r23, 0x2
/* 81379E3C | 41 80 FF 50 */	blt .L_81379D8C
.L_81379E40:
/* 81379E40 | 48 1E E5 05 */	bl fn_81568344
/* 81379E44 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81379E48 | 41 82 FF F8 */	beq .L_81379E40
/* 81379E4C | 48 1E E4 F9 */	bl fn_81568344
/* 81379E50 | 28 03 00 02 */	cmplwi r3, 0x2
/* 81379E54 | 40 82 00 10 */	bne .L_81379E64
/* 81379E58 | 38 7D 02 71 */	addi r3, r29, 0x271
/* 81379E5C | 4C C6 31 82 */	crclr cr1eq
/* 81379E60 | 48 1B 48 41 */	bl OSReport
.L_81379E64:
/* 81379E64 | 38 61 00 B8 */	addi r3, r1, 0xb8
/* 81379E68 | 48 1F 03 11 */	bl SCGetParentalControl
/* 81379E6C | 88 01 00 B9 */	lbz r0, 0xb9(r1)
/* 81379E70 | 28 00 00 05 */	cmplwi r0, 0x5
/* 81379E74 | 40 82 00 48 */	bne .L_81379EBC
/* 81379E78 | 88 01 00 BA */	lbz r0, 0xba(r1)
/* 81379E7C | 38 60 00 04 */	li r3, 0x4
/* 81379E80 | 98 61 00 B9 */	stb r3, 0xb9(r1)
/* 81379E84 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 81379E88 | 41 82 00 20 */	beq .L_81379EA8
/* 81379E8C | 40 80 00 24 */	bge .L_81379EB0
/* 81379E90 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 81379E94 | 41 82 00 08 */	beq .L_81379E9C
/* 81379E98 | 48 00 00 18 */	b .L_81379EB0
.L_81379E9C:
/* 81379E9C | 38 00 00 0C */	li r0, 0xc
/* 81379EA0 | 98 01 00 BA */	stb r0, 0xba(r1)
/* 81379EA4 | 48 00 00 0C */	b .L_81379EB0
.L_81379EA8:
/* 81379EA8 | 38 00 00 10 */	li r0, 0x10
/* 81379EAC | 98 01 00 BA */	stb r0, 0xba(r1)
.L_81379EB0:
/* 81379EB0 | 38 61 00 B8 */	addi r3, r1, 0xb8
/* 81379EB4 | 48 1F 02 D1 */	bl fn_8156A184
/* 81379EB8 | 48 1E FA 95 */	bl fn_8156994C
.L_81379EBC:
/* 81379EBC | 38 7D 02 81 */	addi r3, r29, 0x281
/* 81379EC0 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81379EC4 | 48 1E AF 29 */	bl NANDGetStatus
/* 81379EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379ECC | 40 82 00 40 */	bne .L_81379F0C
/* 81379ED0 | 88 01 00 37 */	lbz r0, 0x37(r1)
/* 81379ED4 | 28 00 00 15 */	cmplwi r0, 0x15
/* 81379ED8 | 41 82 00 5C */	beq .L_81379F34
/* 81379EDC | 38 00 00 15 */	li r0, 0x15
/* 81379EE0 | 38 7D 02 81 */	addi r3, r29, 0x281
/* 81379EE4 | 98 01 00 37 */	stb r0, 0x37(r1)
/* 81379EE8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81379EEC | 48 1E B1 95 */	bl NANDSetStatus
/* 81379EF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379EF4 | 41 82 00 40 */	beq .L_81379F34
/* 81379EF8 | 7C 64 1B 78 */	mr r4, r3
/* 81379EFC | 38 7D 02 AB */	addi r3, r29, 0x2ab
/* 81379F00 | 4C C6 31 82 */	crclr cr1eq
/* 81379F04 | 48 1B 47 9D */	bl OSReport
/* 81379F08 | 48 00 00 2C */	b .L_81379F34
.L_81379F0C:
/* 81379F0C | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81379F10 | 40 82 00 14 */	bne .L_81379F24
/* 81379F14 | 38 7D 02 DD */	addi r3, r29, 0x2dd
/* 81379F18 | 4C C6 31 82 */	crclr cr1eq
/* 81379F1C | 48 1B 47 85 */	bl OSReport
/* 81379F20 | 48 00 00 14 */	b .L_81379F34
.L_81379F24:
/* 81379F24 | 7C 64 1B 78 */	mr r4, r3
/* 81379F28 | 38 7D 02 FD */	addi r3, r29, 0x2fd
/* 81379F2C | 4C C6 31 82 */	crclr cr1eq
/* 81379F30 | 48 1B 47 71 */	bl OSReport
.L_81379F34:
/* 81379F34 | 48 1D 45 41 */	bl fn_8154E474
/* 81379F38 | 28 03 00 02 */	cmplwi r3, 0x2
/* 81379F3C | 41 82 00 10 */	beq .L_81379F4C
/* 81379F40 | 38 00 00 01 */	li r0, 0x1
/* 81379F44 | 90 0D A9 A4 */	stw r0, lbl_816989E4@sda21(r0)
/* 81379F48 | 48 00 00 0C */	b .L_81379F54
.L_81379F4C:
/* 81379F4C | 38 00 00 00 */	li r0, 0x0
/* 81379F50 | 90 0D A9 A4 */	stw r0, lbl_816989E4@sda21(r0)
.L_81379F54:
/* 81379F54 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81379F58 | 38 80 00 00 */	li r4, 0x0
/* 81379F5C | 38 A0 00 20 */	li r5, 0x20
/* 81379F60 | 4B FB 63 D5 */	bl memset
/* 81379F64 | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 81379F68 | 48 1B D8 9D */	bl fn_81537804
/* 81379F6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379F70 | 40 82 00 28 */	bne .L_81379F98
/* 81379F74 | 38 00 00 01 */	li r0, 0x1
/* 81379F78 | 90 0D A9 90 */	stw r0, lbl_816989D0@sda21(r0)
/* 81379F7C | 48 1B D7 39 */	bl fn_815376B4
/* 81379F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379F84 | 40 82 02 70 */	bne .L_8137A1F4
/* 81379F88 | 38 7D 03 10 */	addi r3, r29, 0x310
/* 81379F8C | 4C C6 31 82 */	crclr cr1eq
/* 81379F90 | 48 1B 47 11 */	bl OSReport
/* 81379F94 | 48 00 02 60 */	b .L_8137A1F4
.L_81379F98:
/* 81379F98 | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 81379F9C | 88 63 00 04 */	lbz r3, 0x4(r3)
/* 81379FA0 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 81379FA4 | 41 82 00 5C */	beq .L_8137A000
/* 81379FA8 | 54 60 06 AE */	rlwinm r0, r3, 0, 26, 23
/* 81379FAC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81379FB0 | 41 82 00 48 */	beq .L_81379FF8
/* 81379FB4 | 40 80 00 14 */	bge .L_81379FC8
/* 81379FB8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81379FBC | 41 82 00 18 */	beq .L_81379FD4
/* 81379FC0 | 40 80 00 20 */	bge .L_81379FE0
/* 81379FC4 | 48 00 00 34 */	b .L_81379FF8
.L_81379FC8:
/* 81379FC8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81379FCC | 40 80 00 2C */	bge .L_81379FF8
/* 81379FD0 | 48 00 00 1C */	b .L_81379FEC
.L_81379FD4:
/* 81379FD4 | 38 00 00 01 */	li r0, 0x1
/* 81379FD8 | 90 0D A9 98 */	stw r0, lbl_816989D8@sda21(r0)
/* 81379FDC | 48 00 00 24 */	b .L_8137A000
.L_81379FE0:
/* 81379FE0 | 38 00 00 02 */	li r0, 0x2
/* 81379FE4 | 90 0D A9 98 */	stw r0, lbl_816989D8@sda21(r0)
/* 81379FE8 | 48 00 00 18 */	b .L_8137A000
.L_81379FEC:
/* 81379FEC | 38 00 00 04 */	li r0, 0x4
/* 81379FF0 | 90 0D A9 98 */	stw r0, lbl_816989D8@sda21(r0)
/* 81379FF4 | 48 00 00 0C */	b .L_8137A000
.L_81379FF8:
/* 81379FF8 | 38 00 00 00 */	li r0, 0x0
/* 81379FFC | 90 0D A9 98 */	stw r0, lbl_816989D8@sda21(r0)
.L_8137A000:
/* 8137A000 | 3A FC 10 30 */	addi r23, r28, 0x1030
/* 8137A004 | 88 17 00 05 */	lbz r0, 0x5(r23)
/* 8137A008 | 28 00 00 FF */	cmplwi r0, 0xff
/* 8137A00C | 40 82 00 10 */	bne .L_8137A01C
/* 8137A010 | 38 00 00 01 */	li r0, 0x1
/* 8137A014 | 90 0D A9 90 */	stw r0, lbl_816989D0@sda21(r0)
/* 8137A018 | 48 00 01 DC */	b .L_8137A1F4
.L_8137A01C:
/* 8137A01C | 48 00 64 41 */	bl getVISolidClrYCol
/* 8137A020 | 28 03 00 10 */	cmplwi r3, 0x10
/* 8137A024 | 40 82 00 24 */	bne .L_8137A048
/* 8137A028 | 88 17 00 05 */	lbz r0, 0x5(r23)
/* 8137A02C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8137A030 | 41 82 00 0C */	beq .L_8137A03C
/* 8137A034 | 28 00 00 05 */	cmplwi r0, 0x5
/* 8137A038 | 40 82 00 10 */	bne .L_8137A048
.L_8137A03C:
/* 8137A03C | 38 00 00 01 */	li r0, 0x1
/* 8137A040 | 90 0D A9 90 */	stw r0, lbl_816989D0@sda21(r0)
/* 8137A044 | 48 00 01 B0 */	b .L_8137A1F4
.L_8137A048:
/* 8137A048 | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 8137A04C | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 8137A050 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8137A054 | 40 82 00 94 */	bne .L_8137A0E8
/* 8137A058 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 8137A05C | 38 60 00 01 */	li r3, 0x1
/* 8137A060 | 90 6D A9 A8 */	stw r3, lbl_816989E8@sda21(r0)
/* 8137A064 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A068 | 40 82 00 0C */	bne .L_8137A074
/* 8137A06C | 90 6D A9 B0 */	stw r3, lbl_816989F0@sda21(r0)
/* 8137A070 | 48 00 00 78 */	b .L_8137A0E8
.L_8137A074:
/* 8137A074 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137A078 | 40 82 00 70 */	bne .L_8137A0E8
/* 8137A07C | 38 7C 00 00 */	addi r3, r28, 0x0
/* 8137A080 | 48 1B DB 71 */	bl fn_81537BF0
/* 8137A084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A088 | 41 82 00 60 */	beq .L_8137A0E8
/* 8137A08C | 38 BC 00 00 */	addi r5, r28, 0x0
/* 8137A090 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 8137A094 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8137A098 | 40 82 00 50 */	bne .L_8137A0E8
/* 8137A09C | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8137A0A0 | 3B C0 00 00 */	li r30, 0x0
/* 8137A0A4 | 38 60 00 00 */	li r3, 0x0
/* 8137A0A8 | 7C 85 02 14 */	add r4, r5, r0
/* 8137A0AC | 38 C4 F0 24 */	subi r6, r4, 0xfdc
/* 8137A0B0 | 48 00 00 1C */	b .L_8137A0CC
.L_8137A0B4:
/* 8137A0B4 | 7C 06 18 2E */	lwzx r0, r6, r3
/* 8137A0B8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137A0BC | 7C 85 02 14 */	add r4, r5, r0
/* 8137A0C0 | 38 04 F0 20 */	subi r0, r4, 0xfe0
/* 8137A0C4 | 7C 06 19 2E */	stwx r0, r6, r3
/* 8137A0C8 | 38 63 00 04 */	addi r3, r3, 0x4
.L_8137A0CC:
/* 8137A0CC | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8137A0D0 | 7C 85 02 14 */	add r4, r5, r0
/* 8137A0D4 | 80 04 F0 20 */	lwz r0, -0xfe0(r4)
/* 8137A0D8 | 7C 1E 00 40 */	cmplw r30, r0
/* 8137A0DC | 41 80 FF D8 */	blt .L_8137A0B4
/* 8137A0E0 | 38 00 00 01 */	li r0, 0x1
/* 8137A0E4 | 90 0D A9 B4 */	stw r0, lbl_816989F4@sda21(r0)
.L_8137A0E8:
/* 8137A0E8 | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 8137A0EC | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 8137A0F0 | 28 00 00 05 */	cmplwi r0, 0x5
/* 8137A0F4 | 40 82 00 0C */	bne .L_8137A100
/* 8137A0F8 | 38 00 00 01 */	li r0, 0x1
/* 8137A0FC | 90 0D A9 AC */	stw r0, lbl_816989EC@sda21(r0)
.L_8137A100:
/* 8137A100 | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 8137A104 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 8137A108 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8137A10C | 40 82 00 70 */	bne .L_8137A17C
/* 8137A110 | 38 7C 00 00 */	addi r3, r28, 0x0
/* 8137A114 | 48 1B DA DD */	bl fn_81537BF0
/* 8137A118 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A11C | 41 82 00 60 */	beq .L_8137A17C
/* 8137A120 | 38 BC 00 00 */	addi r5, r28, 0x0
/* 8137A124 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 8137A128 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8137A12C | 40 82 00 50 */	bne .L_8137A17C
/* 8137A130 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8137A134 | 3B C0 00 00 */	li r30, 0x0
/* 8137A138 | 38 60 00 00 */	li r3, 0x0
/* 8137A13C | 7C 85 02 14 */	add r4, r5, r0
/* 8137A140 | 38 C4 F0 24 */	subi r6, r4, 0xfdc
/* 8137A144 | 48 00 00 1C */	b .L_8137A160
.L_8137A148:
/* 8137A148 | 7C 06 18 2E */	lwzx r0, r6, r3
/* 8137A14C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137A150 | 7C 85 02 14 */	add r4, r5, r0
/* 8137A154 | 38 04 F0 20 */	subi r0, r4, 0xfe0
/* 8137A158 | 7C 06 19 2E */	stwx r0, r6, r3
/* 8137A15C | 38 63 00 04 */	addi r3, r3, 0x4
.L_8137A160:
/* 8137A160 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8137A164 | 7C 85 02 14 */	add r4, r5, r0
/* 8137A168 | 80 04 F0 20 */	lwz r0, -0xfe0(r4)
/* 8137A16C | 7C 1E 00 40 */	cmplw r30, r0
/* 8137A170 | 41 80 FF D8 */	blt .L_8137A148
/* 8137A174 | 38 00 00 01 */	li r0, 0x1
/* 8137A178 | 90 0D A9 B8 */	stw r0, lbl_816989F8@sda21(r0)
.L_8137A17C:
/* 8137A17C | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 8137A180 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 8137A184 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A188 | 40 82 00 5C */	bne .L_8137A1E4
/* 8137A18C | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 8137A190 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 8137A194 | 41 82 00 50 */	beq .L_8137A1E4
/* 8137A198 | 80 0D A9 A4 */	lwz r0, lbl_816989E4@sda21(r0)
/* 8137A19C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A1A0 | 40 82 00 44 */	bne .L_8137A1E4
/* 8137A1A4 | 80 0D A9 98 */	lwz r0, lbl_816989D8@sda21(r0)
/* 8137A1A8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A1AC | 41 82 00 10 */	beq .L_8137A1BC
/* 8137A1B0 | 80 0D A9 98 */	lwz r0, lbl_816989D8@sda21(r0)
/* 8137A1B4 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8137A1B8 | 40 82 00 2C */	bne .L_8137A1E4
.L_8137A1BC:
/* 8137A1BC | 38 7D 03 22 */	addi r3, r29, 0x322
/* 8137A1C0 | 4C C6 31 82 */	crclr cr1eq
/* 8137A1C4 | 48 1B 44 DD */	bl OSReport
/* 8137A1C8 | 38 60 00 01 */	li r3, 0x1
/* 8137A1CC | 38 00 00 00 */	li r0, 0x0
/* 8137A1D0 | 90 6D A9 9C */	stw r3, lbl_816989DC@sda21(r0)
/* 8137A1D4 | 90 0D 84 D8 */	stw r0, lbl_81696518@sda21(r0)
/* 8137A1D8 | 90 0D A9 A0 */	stw r0, lbl_816989E0@sda21(r0)
/* 8137A1DC | 90 0D 84 DC */	stw r0, lbl_8169651C@sda21(r0)
/* 8137A1E0 | 48 00 00 14 */	b .L_8137A1F4
.L_8137A1E4:
/* 8137A1E4 | 38 60 00 00 */	li r3, 0x0
/* 8137A1E8 | 38 00 00 01 */	li r0, 0x1
/* 8137A1EC | 90 6D A9 9C */	stw r3, lbl_816989DC@sda21(r0)
/* 8137A1F0 | 90 0D 84 D8 */	stw r0, lbl_81696518@sda21(r0)
.L_8137A1F4:
/* 8137A1F4 | 3B 00 00 00 */	li r24, 0x0
/* 8137A1F8 | 38 80 00 FF */	li r4, 0xff
/* 8137A1FC | 38 00 00 02 */	li r0, 0x2
/* 8137A200 | 9B 01 00 44 */	stb r24, 0x44(r1)
/* 8137A204 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8137A208 | 98 81 00 45 */	stb r4, 0x45(r1)
/* 8137A20C | 98 01 00 46 */	stb r0, 0x46(r1)
/* 8137A210 | 9B 01 00 47 */	stb r24, 0x47(r1)
/* 8137A214 | 48 1B D5 0D */	bl fn_81537720
/* 8137A218 | 3E E0 81 09 */	lis r23, BS2CacheFileInfo@ha
/* 8137A21C | 38 7D 03 33 */	addi r3, r29, 0x333
/* 8137A220 | 38 97 BF 90 */	addi r4, r23, BS2CacheFileInfo@l
/* 8137A224 | 38 A0 00 03 */	li r5, 0x3
/* 8137A228 | 48 1E B0 45 */	bl NANDOpen
/* 8137A22C | 7C 79 1B 78 */	mr r25, r3
/* 8137A230 | 38 7D 03 5B */	addi r3, r29, 0x35b
/* 8137A234 | 7F 24 CB 78 */	mr r4, r25
/* 8137A238 | 4C C6 31 82 */	crclr cr1eq
/* 8137A23C | 48 00 0D 79 */	bl BS2Report
/* 8137A240 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8137A244 | 40 82 00 B8 */	bne .L_8137A2FC
/* 8137A248 | 38 77 BF 90 */	addi r3, r23, BS2CacheFileInfo@l
/* 8137A24C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8137A250 | 48 1E A6 E1 */	bl NANDGetLength
/* 8137A254 | 7C 79 1B 78 */	mr r25, r3
/* 8137A258 | 38 7D 03 75 */	addi r3, r29, 0x375
/* 8137A25C | 7F 24 CB 78 */	mr r4, r25
/* 8137A260 | 4C C6 31 82 */	crclr cr1eq
/* 8137A264 | 48 00 0D 51 */	bl BS2Report
/* 8137A268 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8137A26C | 40 82 00 74 */	bne .L_8137A2E0
/* 8137A270 | 38 77 BF 90 */	addi r3, r23, BS2CacheFileInfo@l
/* 8137A274 | 48 1E B2 79 */	bl NANDClose
/* 8137A278 | 7C 79 1B 78 */	mr r25, r3
/* 8137A27C | 38 7D 03 95 */	addi r3, r29, 0x395
/* 8137A280 | 7F 24 CB 78 */	mr r4, r25
/* 8137A284 | 4C C6 31 82 */	crclr cr1eq
/* 8137A288 | 48 00 0D 2D */	bl BS2Report
/* 8137A28C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8137A290 | 40 82 00 6C */	bne .L_8137A2FC
/* 8137A294 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 8137A298 | 3C 03 FF 50 */	subis r0, r3, 0xb0
/* 8137A29C | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137A2A0 | 41 82 00 5C */	beq .L_8137A2FC
/* 8137A2A4 | 38 7D 03 33 */	addi r3, r29, 0x333
/* 8137A2A8 | 48 1E 9B 51 */	bl NANDDelete
/* 8137A2AC | 7C 79 1B 78 */	mr r25, r3
/* 8137A2B0 | 38 7D 03 B0 */	addi r3, r29, 0x3b0
/* 8137A2B4 | 7F 24 CB 78 */	mr r4, r25
/* 8137A2B8 | 4C C6 31 82 */	crclr cr1eq
/* 8137A2BC | 48 00 0C F9 */	bl BS2Report
/* 8137A2C0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8137A2C4 | 40 82 00 38 */	bne .L_8137A2FC
/* 8137A2C8 | 38 00 00 01 */	li r0, 0x1
/* 8137A2CC | 93 0D A9 9C */	stw r24, lbl_816989DC@sda21(r0)
/* 8137A2D0 | 3B 20 FF F4 */	li r25, -0xc
/* 8137A2D4 | 90 0D 84 D8 */	stw r0, lbl_81696518@sda21(r0)
/* 8137A2D8 | 90 0D 84 DC */	stw r0, lbl_8169651C@sda21(r0)
/* 8137A2DC | 48 00 00 20 */	b .L_8137A2FC
.L_8137A2E0:
/* 8137A2E0 | 38 77 BF 90 */	addi r3, r23, BS2CacheFileInfo@l
/* 8137A2E4 | 48 1E B2 09 */	bl NANDClose
/* 8137A2E8 | 7C 79 1B 78 */	mr r25, r3
/* 8137A2EC | 38 7D 03 95 */	addi r3, r29, 0x395
/* 8137A2F0 | 7F 24 CB 78 */	mr r4, r25
/* 8137A2F4 | 4C C6 31 82 */	crclr cr1eq
/* 8137A2F8 | 48 00 0C BD */	bl BS2Report
.L_8137A2FC:
/* 8137A2FC | 2C 19 FF F4 */	cmpwi r25, -0xc
/* 8137A300 | 40 82 00 60 */	bne .L_8137A360
/* 8137A304 | 38 7D 03 33 */	addi r3, r29, 0x333
/* 8137A308 | 38 80 00 3C */	li r4, 0x3c
/* 8137A30C | 38 A0 00 00 */	li r5, 0x0
/* 8137A310 | 48 1E 99 89 */	bl NANDCreate
/* 8137A314 | 3E E0 81 09 */	lis r23, BS2CacheFileInfo@ha
/* 8137A318 | 38 7D 03 33 */	addi r3, r29, 0x333
/* 8137A31C | 38 97 BF 90 */	addi r4, r23, BS2CacheFileInfo@l
/* 8137A320 | 38 A0 00 03 */	li r5, 0x3
/* 8137A324 | 48 1E AF 49 */	bl NANDOpen
/* 8137A328 | 3B C0 00 00 */	li r30, 0x0
.L_8137A32C:
/* 8137A32C | 38 77 BF 90 */	addi r3, r23, BS2CacheFileInfo@l
/* 8137A330 | 3C 80 80 40 */	lis r4, 0x8040
/* 8137A334 | 3C A0 00 10 */	lis r5, 0x10
/* 8137A338 | 48 1E 9D A9 */	bl NANDWrite
/* 8137A33C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137A340 | 28 1E 00 0B */	cmplwi r30, 0xb
/* 8137A344 | 41 80 FF E8 */	blt .L_8137A32C
/* 8137A348 | 3C 60 81 09 */	lis r3, BS2CacheFileInfo@ha
/* 8137A34C | 38 63 BF 90 */	addi r3, r3, BS2CacheFileInfo@l
/* 8137A350 | 48 1E B1 9D */	bl NANDClose
/* 8137A354 | 38 7D 03 CC */	addi r3, r29, 0x3cc
/* 8137A358 | 4C C6 31 82 */	crclr cr1eq
/* 8137A35C | 48 00 0C 59 */	bl BS2Report
.L_8137A360:
/* 8137A360 | 38 7D 03 33 */	addi r3, r29, 0x333
/* 8137A364 | 38 80 00 3C */	li r4, 0x3c
/* 8137A368 | 38 A0 00 00 */	li r5, 0x0
/* 8137A36C | 48 1E 99 2D */	bl NANDCreate
/* 8137A370 | 3C 80 81 09 */	lis r4, BS2CacheFileInfo@ha
/* 8137A374 | 38 7D 03 33 */	addi r3, r29, 0x333
/* 8137A378 | 38 84 BF 90 */	addi r4, r4, BS2CacheFileInfo@l
/* 8137A37C | 38 A0 00 03 */	li r5, 0x3
/* 8137A380 | 48 1E AE ED */	bl NANDOpen
/* 8137A384 | 38 60 00 11 */	li r3, 0x11
/* 8137A388 | 48 00 60 B9 */	bl setVISolidClrYCol
/* 8137A38C | 80 0D A9 B4 */	lwz r0, lbl_816989F4@sda21(r0)
/* 8137A390 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A394 | 41 82 00 10 */	beq .L_8137A3A4
/* 8137A398 | 38 00 00 03 */	li r0, 0x3
/* 8137A39C | 90 0D A9 BC */	stw r0, lbl_816989FC@sda21(r0)
/* 8137A3A0 | 48 00 00 3C */	b .L_8137A3DC
.L_8137A3A4:
/* 8137A3A4 | 80 0D A9 B0 */	lwz r0, lbl_816989F0@sda21(r0)
/* 8137A3A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A3AC | 41 82 00 10 */	beq .L_8137A3BC
/* 8137A3B0 | 38 00 00 02 */	li r0, 0x2
/* 8137A3B4 | 90 0D A9 BC */	stw r0, lbl_816989FC@sda21(r0)
/* 8137A3B8 | 48 00 00 24 */	b .L_8137A3DC
.L_8137A3BC:
/* 8137A3BC | 80 0D A9 A8 */	lwz r0, lbl_816989E8@sda21(r0)
/* 8137A3C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A3C4 | 41 82 00 10 */	beq .L_8137A3D4
/* 8137A3C8 | 38 00 00 01 */	li r0, 0x1
/* 8137A3CC | 90 0D A9 BC */	stw r0, lbl_816989FC@sda21(r0)
/* 8137A3D0 | 48 00 00 0C */	b .L_8137A3DC
.L_8137A3D4:
/* 8137A3D4 | 38 00 00 00 */	li r0, 0x0
/* 8137A3D8 | 90 0D A9 BC */	stw r0, lbl_816989FC@sda21(r0)
.L_8137A3DC:
/* 8137A3DC | 3A E0 00 00 */	li r23, 0x0
/* 8137A3E0 | 3B 00 00 00 */	li r24, 0x0
/* 8137A3E4 | 92 ED A9 C4 */	stw r23, lbl_81698A04@sda21(r0)
/* 8137A3E8 | 3B C0 00 00 */	li r30, 0x0
/* 8137A3EC | 48 1B 89 05 */	bl fn_81532CF0
/* 8137A3F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8137A3F4 | 48 1B 8C 9D */	bl fn_81533090
/* 8137A3F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A3FC | 40 82 00 98 */	bne .L_8137A494
/* 8137A400 | 83 1F 00 0C */	lwz r24, 0xc(r31)
/* 8137A404 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 8137A408 | 48 1B 82 75 */	bl __OSGetRTC
/* 8137A40C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A410 | 41 82 00 54 */	beq .L_8137A464
/* 8137A414 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137A418 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8137A41C | 80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 8137A420 | 38 A1 00 60 */	addi r5, r1, 0x60
/* 8137A424 | 7C C0 C2 14 */	add r6, r0, r24
/* 8137A428 | 54 67 F0 BE */	srwi r7, r3, 2
/* 8137A42C | 7C 67 30 16 */	mulhwu r3, r7, r6
/* 8137A430 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 8137A434 | 7C 63 22 14 */	add r3, r3, r4
/* 8137A438 | 7C 07 B9 D6 */	mullw r0, r7, r23
/* 8137A43C | 7C 87 31 D6 */	mullw r4, r7, r6
/* 8137A440 | 7C 63 02 14 */	add r3, r3, r0
/* 8137A444 | 48 1B BB 21 */	bl OSTicksToCalendarTime
/* 8137A448 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8137A44C | 2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 8137A450 | 41 80 00 0C */	blt .L_8137A45C
/* 8137A454 | 2C 00 07 DC */	cmpwi r0, 0x7dc
/* 8137A458 | 40 81 00 10 */	ble .L_8137A468
.L_8137A45C:
/* 8137A45C | 3B 00 00 00 */	li r24, 0x0
/* 8137A460 | 48 00 00 08 */	b .L_8137A468
.L_8137A464:
/* 8137A464 | 3B 00 00 00 */	li r24, 0x0
.L_8137A468:
/* 8137A468 | 7F E3 FB 78 */	mr r3, r31
/* 8137A46C | 38 80 00 00 */	li r4, 0x0
/* 8137A470 | 38 A0 00 14 */	li r5, 0x14
/* 8137A474 | 4B FB 5E C1 */	bl memset
/* 8137A478 | 93 1F 00 0C */	stw r24, 0xc(r31)
/* 8137A47C | 38 00 00 01 */	li r0, 0x1
/* 8137A480 | 3B 00 00 01 */	li r24, 0x1
/* 8137A484 | 88 7F 00 13 */	lbz r3, 0x13(r31)
/* 8137A488 | 60 63 00 1C */	ori r3, r3, 0x1c
/* 8137A48C | 98 7F 00 13 */	stb r3, 0x13(r31)
/* 8137A490 | 90 0D A9 C4 */	stw r0, lbl_81698A04@sda21(r0)
.L_8137A494:
/* 8137A494 | 7F 03 C3 78 */	mr r3, r24
/* 8137A498 | 48 1B 8B D9 */	bl fn_81533070
/* 8137A49C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8137A4A0 | 41 82 00 10 */	beq .L_8137A4B0
.L_8137A4A4:
/* 8137A4A4 | 48 1B 8B DD */	bl __OSSyncSram
/* 8137A4A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A4AC | 41 82 FF F8 */	beq .L_8137A4A4
.L_8137A4B0:
/* 8137A4B0 | 80 0D A9 C4 */	lwz r0, lbl_81698A04@sda21(r0)
/* 8137A4B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A4B8 | 40 82 01 44 */	bne .L_8137A5FC
/* 8137A4BC | 80 0D A9 98 */	lwz r0, lbl_816989D8@sda21(r0)
/* 8137A4C0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137A4C4 | 40 82 01 38 */	bne .L_8137A5FC
/* 8137A4C8 | 48 1E FD 81 */	bl fn_8156A248
/* 8137A4CC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A4D0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137A4D4 | 40 82 00 10 */	bne .L_8137A4E4
/* 8137A4D8 | 48 1B 8E 0D */	bl fn_815332E4
/* 8137A4DC | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A4E0 | 41 82 00 28 */	beq .L_8137A508
.L_8137A4E4:
/* 8137A4E4 | 48 1E FD 65 */	bl fn_8156A248
/* 8137A4E8 | 54 77 06 3E */	clrlwi r23, r3, 24
/* 8137A4EC | 48 1B 8D F9 */	bl fn_815332E4
/* 8137A4F0 | 7C 03 B8 40 */	cmplw r3, r23
/* 8137A4F4 | 41 82 00 14 */	beq .L_8137A508
/* 8137A4F8 | 3B C0 00 01 */	li r30, 0x1
/* 8137A4FC | 48 1B 8D E9 */	bl fn_815332E4
/* 8137A500 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8137A504 | 48 1E FD A9 */	bl fn_8156A2AC
.L_8137A508:
/* 8137A508 | 48 1F 06 95 */	bl fn_8156AB9C
/* 8137A50C | 7C 60 07 74 */	extsb r0, r3
/* 8137A510 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137A514 | 41 82 00 3C */	beq .L_8137A550
/* 8137A518 | 48 1E FC 79 */	bl fn_8156A190
/* 8137A51C | 54 77 06 3E */	clrlwi r23, r3, 24
/* 8137A520 | 48 1B 8E D1 */	bl fn_815333F0
/* 8137A524 | 7C 03 B8 40 */	cmplw r3, r23
/* 8137A528 | 41 82 00 D4 */	beq .L_8137A5FC
/* 8137A52C | 3B C0 00 01 */	li r30, 0x1
/* 8137A530 | 48 1B 8E C1 */	bl fn_815333F0
/* 8137A534 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A538 | 40 82 00 0C */	bne .L_8137A544
/* 8137A53C | 38 60 00 01 */	li r3, 0x1
/* 8137A540 | 48 00 00 08 */	b .L_8137A548
.L_8137A544:
/* 8137A544 | 38 60 00 00 */	li r3, 0x0
.L_8137A548:
/* 8137A548 | 48 1E FC 9D */	bl fn_8156A1E4
/* 8137A54C | 48 00 00 B0 */	b .L_8137A5FC
.L_8137A550:
/* 8137A550 | 48 1B 90 39 */	bl fn_81533588
/* 8137A554 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A558 | 28 00 00 05 */	cmplwi r0, 0x5
/* 8137A55C | 40 81 00 14 */	ble .L_8137A570
/* 8137A560 | 3B C0 00 01 */	li r30, 0x1
/* 8137A564 | 38 60 00 01 */	li r3, 0x1
/* 8137A568 | 48 1E FC 09 */	bl fn_8156A170
/* 8137A56C | 48 00 00 38 */	b .L_8137A5A4
.L_8137A570:
/* 8137A570 | 48 1E FB 95 */	bl SCGetLanguage
/* 8137A574 | 54 78 06 3E */	clrlwi r24, r3, 24
/* 8137A578 | 48 1B 90 11 */	bl fn_81533588
/* 8137A57C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A580 | 3A FD 02 68 */	addi r23, r29, 0x268
/* 8137A584 | 7C 17 00 AE */	lbzx r0, r23, r0
/* 8137A588 | 7C 00 C0 40 */	cmplw r0, r24
/* 8137A58C | 41 82 00 18 */	beq .L_8137A5A4
/* 8137A590 | 3B C0 00 01 */	li r30, 0x1
/* 8137A594 | 48 1B 8F F5 */	bl fn_81533588
/* 8137A598 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A59C | 7C 77 00 AE */	lbzx r3, r23, r0
/* 8137A5A0 | 48 1E FB D1 */	bl fn_8156A170
.L_8137A5A4:
/* 8137A5A4 | 48 1E FA ED */	bl fn_8156A090
/* 8137A5A8 | 54 77 06 3E */	clrlwi r23, r3, 24
/* 8137A5AC | 48 1B 90 C9 */	bl fn_81533674
/* 8137A5B0 | 7C 03 B8 40 */	cmplw r3, r23
/* 8137A5B4 | 41 82 00 48 */	beq .L_8137A5FC
/* 8137A5B8 | 3B C0 00 01 */	li r30, 0x1
/* 8137A5BC | 48 1B 90 B9 */	bl fn_81533674
/* 8137A5C0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A5C4 | 40 82 00 0C */	bne .L_8137A5D0
/* 8137A5C8 | 38 60 00 01 */	li r3, 0x1
/* 8137A5CC | 48 00 00 08 */	b .L_8137A5D4
.L_8137A5D0:
/* 8137A5D0 | 38 60 00 00 */	li r3, 0x0
.L_8137A5D4:
/* 8137A5D4 | 48 1E FB 11 */	bl fn_8156A0E4
/* 8137A5D8 | 48 1E FB B9 */	bl fn_8156A190
/* 8137A5DC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A5E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A5E4 | 40 82 00 18 */	bne .L_8137A5FC
/* 8137A5E8 | 48 1E FA A9 */	bl fn_8156A090
/* 8137A5EC | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 8137A5F0 | 40 82 00 0C */	bne .L_8137A5FC
/* 8137A5F4 | 38 60 00 00 */	li r3, 0x0
/* 8137A5F8 | 48 1E FB ED */	bl fn_8156A1E4
.L_8137A5FC:
/* 8137A5FC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8137A600 | 41 82 00 08 */	beq .L_8137A608
/* 8137A604 | 48 1E F3 49 */	bl fn_8156994C
.L_8137A608:
/* 8137A608 | 3C 60 C0 00 */	lis r3, 0xc000
/* 8137A60C | 80 03 31 64 */	lwz r0, 0x3164(r3)
/* 8137A610 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A614 | 40 82 00 18 */	bne .L_8137A62C
/* 8137A618 | 80 0D A9 98 */	lwz r0, lbl_816989D8@sda21(r0)
/* 8137A61C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137A620 | 40 82 00 0C */	bne .L_8137A62C
/* 8137A624 | 38 00 00 01 */	li r0, 0x1
/* 8137A628 | 90 0D A9 94 */	stw r0, lbl_816989D4@sda21(r0)
.L_8137A62C:
/* 8137A62C | 48 1F 05 71 */	bl fn_8156AB9C
/* 8137A630 | 7C 60 07 74 */	extsb r0, r3
/* 8137A634 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137A638 | 90 0D A9 C0 */	stw r0, lbl_81698A00@sda21(r0)
/* 8137A63C | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A640 | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 8137A644 | 80 0D A9 A8 */	lwz r0, lbl_816989E8@sda21(r0)
/* 8137A648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A64C | 40 82 00 78 */	bne .L_8137A6C4
/* 8137A650 | 80 0D A9 B0 */	lwz r0, lbl_816989F0@sda21(r0)
/* 8137A654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A658 | 40 82 00 6C */	bne .L_8137A6C4
/* 8137A65C | 48 1E FB 35 */	bl fn_8156A190
/* 8137A660 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A664 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A668 | 40 82 00 4C */	bne .L_8137A6B4
/* 8137A66C | 48 1C 3C 8D */	bl fn_8153E2F8
/* 8137A670 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A674 | 40 82 00 40 */	bne .L_8137A6B4
/* 8137A678 | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A67C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8137A680 | 41 82 00 14 */	beq .L_8137A694
/* 8137A684 | 40 80 00 1C */	bge .L_8137A6A0
/* 8137A688 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137A68C | 41 82 00 08 */	beq .L_8137A694
/* 8137A690 | 48 00 00 10 */	b .L_8137A6A0
.L_8137A694:
/* 8137A694 | 38 60 00 16 */	li r3, 0x16
/* 8137A698 | 48 1C 21 F9 */	bl fn_8153C890
/* 8137A69C | 48 00 00 98 */	b .L_8137A734
.L_8137A6A0:
/* 8137A6A0 | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A6A4 | 54 03 10 3A */	slwi r3, r0, 2
/* 8137A6A8 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8137A6AC | 48 1C 21 E5 */	bl fn_8153C890
/* 8137A6B0 | 48 00 00 84 */	b .L_8137A734
.L_8137A6B4:
/* 8137A6B4 | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A6B8 | 54 03 10 3A */	slwi r3, r0, 2
/* 8137A6BC | 48 1C 21 D5 */	bl fn_8153C890
/* 8137A6C0 | 48 00 00 74 */	b .L_8137A734
.L_8137A6C4:
/* 8137A6C4 | 48 1C 3B D5 */	bl fn_8153E298
/* 8137A6C8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A6CC | 40 82 00 68 */	bne .L_8137A734
/* 8137A6D0 | 48 1E FA C1 */	bl fn_8156A190
/* 8137A6D4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137A6D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A6DC | 40 82 00 4C */	bne .L_8137A728
/* 8137A6E0 | 48 1C 3C 19 */	bl fn_8153E2F8
/* 8137A6E4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A6E8 | 40 82 00 40 */	bne .L_8137A728
/* 8137A6EC | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A6F0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8137A6F4 | 41 82 00 14 */	beq .L_8137A708
/* 8137A6F8 | 40 80 00 1C */	bge .L_8137A714
/* 8137A6FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137A700 | 41 82 00 08 */	beq .L_8137A708
/* 8137A704 | 48 00 00 10 */	b .L_8137A714
.L_8137A708:
/* 8137A708 | 38 60 00 16 */	li r3, 0x16
/* 8137A70C | 48 1C 21 85 */	bl fn_8153C890
/* 8137A710 | 48 00 00 24 */	b .L_8137A734
.L_8137A714:
/* 8137A714 | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A718 | 54 03 10 3A */	slwi r3, r0, 2
/* 8137A71C | 38 63 00 02 */	addi r3, r3, 0x2
/* 8137A720 | 48 1C 21 71 */	bl fn_8153C890
/* 8137A724 | 48 00 00 10 */	b .L_8137A734
.L_8137A728:
/* 8137A728 | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137A72C | 54 03 10 3A */	slwi r3, r0, 2
/* 8137A730 | 48 1C 21 61 */	bl fn_8153C890
.L_8137A734:
/* 8137A734 | 48 1C 23 6D */	bl fn_8153CAA0
/* 8137A738 | 3C 80 0E 7C */	lis r4, 0xe7c
/* 8137A73C | 3E E0 80 00 */	lis r23, 0x8000
/* 8137A740 | 38 04 E2 C0 */	subi r0, r4, 0x1d40
/* 8137A744 | 3C 60 2B 74 */	lis r3, 0x2b74
/* 8137A748 | 90 17 00 F8 */	stw r0, 0xf8(r23)
/* 8137A74C | 38 03 A8 40 */	subi r0, r3, 0x57c0
/* 8137A750 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8137A754 | 90 17 00 FC */	stw r0, 0xfc(r23)
/* 8137A758 | 48 1B 7F 25 */	bl __OSGetRTC
/* 8137A75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A760 | 41 82 00 3C */	beq .L_8137A79C
/* 8137A764 | 48 1E FB 51 */	bl fn_8156A2B4
/* 8137A768 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8137A76C | 38 80 00 00 */	li r4, 0x0
/* 8137A770 | 7C C0 1A 14 */	add r6, r0, r3
/* 8137A774 | 90 C1 00 18 */	stw r6, 0x18(r1)
/* 8137A778 | 7C 06 21 D6 */	mullw r0, r6, r4
/* 8137A77C | 80 77 00 F8 */	lwz r3, 0xf8(r23)
/* 8137A780 | 54 65 F0 BE */	srwi r5, r3, 2
/* 8137A784 | 7C 66 28 16 */	mulhwu r3, r6, r5
/* 8137A788 | 7C 84 29 D6 */	mullw r4, r4, r5
/* 8137A78C | 7C 63 22 14 */	add r3, r3, r4
/* 8137A790 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137A794 | 7C 63 02 14 */	add r3, r3, r0
/* 8137A798 | 48 1B B5 1D */	bl fn_81535CB4
.L_8137A79C:
/* 8137A79C | 48 1B D2 45 */	bl fn_815379E0
/* 8137A7A0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8137A7A4 | 48 1B 90 E1 */	bl __OSGetRTCFlags
/* 8137A7A8 | 48 1B 91 F9 */	bl fn_815339A0
/* 8137A7AC | 48 1F 04 75 */	bl fn_8156AC20
/* 8137A7B0 | 7C 60 07 75 */	extsb. r0, r3
/* 8137A7B4 | 40 82 00 0C */	bne .L_8137A7C0
/* 8137A7B8 | 38 60 00 01 */	li r3, 0x1
/* 8137A7BC | 48 00 00 08 */	b .L_8137A7C4
.L_8137A7C0:
/* 8137A7C0 | 38 60 00 00 */	li r3, 0x0
.L_8137A7C4:
/* 8137A7C4 | 48 00 5C 61 */	bl setVI1Cfg
/* 8137A7C8 | 48 1F C0 0D */	bl fn_815767D4
/* 8137A7CC | 48 24 31 D5 */	bl ES_InitLib
/* 8137A7D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A7D4 | 41 82 00 14 */	beq .L_8137A7E8
/* 8137A7D8 | 7C 64 1B 78 */	mr r4, r3
/* 8137A7DC | 38 7D 03 E6 */	addi r3, r29, 0x3e6
/* 8137A7E0 | 4C C6 31 82 */	crclr cr1eq
/* 8137A7E4 | 48 1B 3E BD */	bl OSReport
.L_8137A7E8:
/* 8137A7E8 | 80 0D A9 94 */	lwz r0, lbl_816989D4@sda21(r0)
/* 8137A7EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A7F0 | 41 82 00 14 */	beq .L_8137A804
/* 8137A7F4 | 38 7D 03 FD */	addi r3, r29, 0x3fd
/* 8137A7F8 | 4C C6 31 82 */	crclr cr1eq
/* 8137A7FC | 48 1B 3E A5 */	bl OSReport
/* 8137A800 | 48 00 5E 01 */	bl OSShutdownSystem
.L_8137A804:
/* 8137A804 | 80 0D A9 90 */	lwz r0, lbl_816989D0@sda21(r0)
/* 8137A808 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A80C | 40 82 01 F8 */	bne .L_8137AA04
/* 8137A810 | 3A FC 10 30 */	addi r23, r28, 0x1030
/* 8137A814 | 88 17 00 05 */	lbz r0, 0x5(r23)
/* 8137A818 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137A81C | 40 82 01 44 */	bne .L_8137A960
/* 8137A820 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8137A824 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8137A828 | 41 82 01 38 */	beq .L_8137A960
/* 8137A82C | 38 7D 04 17 */	addi r3, r29, 0x417
/* 8137A830 | 4C C6 31 82 */	crclr cr1eq
/* 8137A834 | 48 1B 3E 6D */	bl OSReport
/* 8137A838 | 80 0D A9 A4 */	lwz r0, lbl_816989E4@sda21(r0)
/* 8137A83C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A840 | 40 82 01 0C */	bne .L_8137A94C
/* 8137A844 | 88 17 00 05 */	lbz r0, 0x5(r23)
/* 8137A848 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8137A84C | 41 82 01 00 */	beq .L_8137A94C
/* 8137A850 | 48 1B 2B 49 */	bl fn_8152D398
/* 8137A854 | 7C 77 1B 78 */	mr r23, r3
/* 8137A858 | 48 1B 2B 29 */	bl fn_8152D380
/* 8137A85C | 7C 76 1B 78 */	mr r22, r3
/* 8137A860 | 7E E3 BB 78 */	mr r3, r23
/* 8137A864 | 7C 97 B0 50 */	subf r4, r23, r22
/* 8137A868 | 38 A0 00 00 */	li r5, 0x0
/* 8137A86C | 48 1D FE 09 */	bl fn_8155A674
/* 8137A870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137A874 | 7C 77 1B 78 */	mr r23, r3
/* 8137A878 | 40 82 00 18 */	bne .L_8137A890
/* 8137A87C | 38 BD 00 00 */	addi r5, r29, 0x0
/* 8137A880 | 38 6D 84 E4 */	li r3, lbl_81696524@sda21
/* 8137A884 | 38 80 07 F6 */	li r4, 0x7f6
/* 8137A888 | 4C C6 31 82 */	crclr cr1eq
/* 8137A88C | 48 1B 3E A5 */	bl OSPanic
.L_8137A890:
/* 8137A890 | 7E C3 B3 78 */	mr r3, r22
/* 8137A894 | 48 1B 2B 35 */	bl fn_8152D3C8
/* 8137A898 | 7E E4 BB 78 */	mr r4, r23
/* 8137A89C | 38 7C 10 20 */	addi r3, r28, 0x1020
/* 8137A8A0 | 38 A0 00 20 */	li r5, 0x20
/* 8137A8A4 | 48 1E 0D E5 */	bl fn_8155B688
/* 8137A8A8 | 48 00 5B E1 */	bl EjectDisc
/* 8137A8AC | 3C 60 81 38 */	lis r3, BS2AllocForEject@ha
/* 8137A8B0 | 3C 80 81 38 */	lis r4, BS2FreeForEject@ha
/* 8137A8B4 | 38 63 97 60 */	addi r3, r3, BS2AllocForEject@l
/* 8137A8B8 | 38 84 97 70 */	addi r4, r4, BS2FreeForEject@l
/* 8137A8BC | 48 1F EE E9 */	bl fn_815797A4
/* 8137A8C0 | 48 1F ED D5 */	bl fn_81579694
.L_8137A8C4:
/* 8137A8C4 | 48 1F EE E9 */	bl WPADGetStatus
/* 8137A8C8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8137A8CC | 40 82 FF F8 */	bne .L_8137A8C4
.L_8137A8D0:
/* 8137A8D0 | 48 1D 3B A5 */	bl fn_8154E474
/* 8137A8D4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8137A8D8 | 40 82 FF F8 */	bne .L_8137A8D0
/* 8137A8DC | 48 1B B4 5D */	bl __OSGetSystemTime
/* 8137A8E0 | 38 00 00 00 */	li r0, 0x0
/* 8137A8E4 | 3B 00 07 D0 */	li r24, 0x7d0
/* 8137A8E8 | 7E E0 C1 D6 */	mullw r23, r0, r24
/* 8137A8EC | 7C 9E 23 78 */	mr r30, r4
/* 8137A8F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8137A8F4 | 3F 40 80 00 */	lis r26, 0x8000
/* 8137A8F8 | 3B 20 03 E8 */	li r25, 0x3e8
.L_8137A8FC:
/* 8137A8FC | 48 1B B4 3D */	bl __OSGetSystemTime
/* 8137A900 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8137A904 | 7C DE 20 10 */	subfc r6, r30, r4
/* 8137A908 | 7C 7F 19 10 */	subfe r3, r31, r3
/* 8137A90C | 54 00 F0 BE */	srwi r0, r0, 2
/* 8137A910 | 7C 80 CB 96 */	divwu r4, r0, r25
/* 8137A914 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8137A918 | 7C 64 C0 16 */	mulhwu r3, r4, r24
/* 8137A91C | 1C A4 07 D0 */	mulli r5, r4, 0x7d0
/* 8137A920 | 7C 63 BA 14 */	add r3, r3, r23
/* 8137A924 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137A928 | 7C 65 30 10 */	subfc r3, r5, r6
/* 8137A92C | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137A930 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137A934 | 7C 84 00 D1 */	neg. r4, r4
/* 8137A938 | 40 82 FF C4 */	bne .L_8137A8FC
/* 8137A93C | 38 7D 04 31 */	addi r3, r29, 0x431
/* 8137A940 | 4C C6 31 82 */	crclr cr1eq
/* 8137A944 | 48 1B 3D 5D */	bl OSReport
/* 8137A948 | 48 00 5C B9 */	bl OSShutdownSystem
.L_8137A94C:
/* 8137A94C | 38 60 00 00 */	li r3, 0x0
/* 8137A950 | 38 00 00 01 */	li r0, 0x1
/* 8137A954 | 90 6D A9 9C */	stw r3, lbl_816989DC@sda21(r0)
/* 8137A958 | 90 0D 84 D8 */	stw r0, lbl_81696518@sda21(r0)
/* 8137A95C | 48 00 00 C0 */	b .L_8137AA1C
.L_8137A960:
/* 8137A960 | 80 0D A9 AC */	lwz r0, lbl_816989EC@sda21(r0)
/* 8137A964 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A968 | 41 82 00 18 */	beq .L_8137A980
/* 8137A96C | 38 7D 04 43 */	addi r3, r29, 0x443
/* 8137A970 | 4C C6 31 82 */	crclr cr1eq
/* 8137A974 | 48 1B 3D 2D */	bl OSReport
/* 8137A978 | 48 00 5D C1 */	bl OSShutdownSystemForBS
/* 8137A97C | 48 00 00 A0 */	b .L_8137AA1C
.L_8137A980:
/* 8137A980 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8137A984 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8137A988 | 41 82 00 48 */	beq .L_8137A9D0
/* 8137A98C | 38 7C 10 30 */	addi r3, r28, 0x1030
/* 8137A990 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 8137A994 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8137A998 | 41 82 00 10 */	beq .L_8137A9A8
/* 8137A99C | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 8137A9A0 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8137A9A4 | 40 82 00 2C */	bne .L_8137A9D0
.L_8137A9A8:
/* 8137A9A8 | 38 7D 04 57 */	addi r3, r29, 0x457
/* 8137A9AC | 4C C6 31 82 */	crclr cr1eq
/* 8137A9B0 | 48 1B 3C F1 */	bl OSReport
/* 8137A9B4 | 38 60 00 01 */	li r3, 0x1
/* 8137A9B8 | 38 00 00 00 */	li r0, 0x0
/* 8137A9BC | 90 6D A9 A0 */	stw r3, lbl_816989E0@sda21(r0)
/* 8137A9C0 | 90 6D 84 DC */	stw r3, lbl_8169651C@sda21(r0)
/* 8137A9C4 | 90 0D A9 9C */	stw r0, lbl_816989DC@sda21(r0)
/* 8137A9C8 | 90 6D 84 D8 */	stw r3, lbl_81696518@sda21(r0)
/* 8137A9CC | 48 00 00 50 */	b .L_8137AA1C
.L_8137A9D0:
/* 8137A9D0 | 80 0D A9 A8 */	lwz r0, lbl_816989E8@sda21(r0)
/* 8137A9D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A9D8 | 40 82 00 10 */	bne .L_8137A9E8
/* 8137A9DC | 80 0D A9 B0 */	lwz r0, lbl_816989F0@sda21(r0)
/* 8137A9E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137A9E4 | 41 82 00 38 */	beq .L_8137AA1C
.L_8137A9E8:
/* 8137A9E8 | 38 7D 04 60 */	addi r3, r29, 0x460
/* 8137A9EC | 4C C6 31 82 */	crclr cr1eq
/* 8137A9F0 | 48 1B 3C B1 */	bl OSReport
/* 8137A9F4 | 38 00 00 01 */	li r0, 0x1
/* 8137A9F8 | 90 0D A9 A0 */	stw r0, lbl_816989E0@sda21(r0)
/* 8137A9FC | 90 0D 84 DC */	stw r0, lbl_8169651C@sda21(r0)
/* 8137AA00 | 48 00 00 1C */	b .L_8137AA1C
.L_8137AA04:
/* 8137AA04 | 38 7D 04 70 */	addi r3, r29, 0x470
/* 8137AA08 | 4C C6 31 82 */	crclr cr1eq
/* 8137AA0C | 48 1B 3C 95 */	bl OSReport
/* 8137AA10 | 38 00 00 01 */	li r0, 0x1
/* 8137AA14 | 90 0D A9 A0 */	stw r0, lbl_816989E0@sda21(r0)
/* 8137AA18 | 90 0D 84 DC */	stw r0, lbl_8169651C@sda21(r0)
.L_8137AA1C:
/* 8137AA1C | 80 0D A9 A8 */	lwz r0, lbl_816989E8@sda21(r0)
/* 8137AA20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137AA24 | 40 82 00 1C */	bne .L_8137AA40
/* 8137AA28 | 80 0D A9 B0 */	lwz r0, lbl_816989F0@sda21(r0)
/* 8137AA2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137AA30 | 40 82 00 10 */	bne .L_8137AA40
/* 8137AA34 | 80 0D A9 C0 */	lwz r0, lbl_81698A00@sda21(r0)
/* 8137AA38 | 54 03 10 3A */	slwi r3, r0, 2
/* 8137AA3C | 48 1C 63 65 */	bl fn_81540DA0
.L_8137AA40:
/* 8137AA40 | 3C 60 81 69 */	lis r3, __files@ha
/* 8137AA44 | 38 80 00 00 */	li r4, 0x0
/* 8137AA48 | 38 63 37 30 */	addi r3, r3, __files@l
/* 8137AA4C | 38 A0 00 00 */	li r5, 0x0
/* 8137AA50 | 38 63 00 50 */	addi r3, r3, 0x50
/* 8137AA54 | 38 C0 00 00 */	li r6, 0x0
/* 8137AA58 | 48 28 2A 05 */	bl setvbuf
/* 8137AA5C | 38 60 00 00 */	li r3, 0x0
/* 8137AA60 | 48 00 69 7D */	bl DVDSetAutoFatalMessaging
/* 8137AA64 | 38 7D 04 93 */	addi r3, r29, 0x493
/* 8137AA68 | 38 80 00 3F */	li r4, 0x3f
/* 8137AA6C | 38 A0 00 00 */	li r5, 0x0
/* 8137AA70 | 48 1E 9B C9 */	bl NANDPrivateCreateDir
/* 8137AA74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137AA78 | 41 82 00 18 */	beq .L_8137AA90
/* 8137AA7C | 2C 03 FF FA */	cmpwi r3, -0x6
/* 8137AA80 | 41 82 00 10 */	beq .L_8137AA90
/* 8137AA84 | 38 7D 04 A2 */	addi r3, r29, 0x4a2
/* 8137AA88 | 4C C6 31 82 */	crclr cr1eq
/* 8137AA8C | 48 1B 3C 15 */	bl OSReport
.L_8137AA90:
/* 8137AA90 | 3C 60 81 20 */	lis r3, 0x8120
/* 8137AA94 | 48 1E CF 5D */	bl NANDLoggingPrepareFile
/* 8137AA98 | 48 1C 25 51 */	bl VIWaitForRetrace
/* 8137AA9C | 48 1C 25 4D */	bl VIWaitForRetrace
/* 8137AAA0 | 38 61 00 88 */	addi r3, r1, 0x88
/* 8137AAA4 | 48 1F BE 8D */	bl fn_81576930
/* 8137AAA8 | 80 0D A9 90 */	lwz r0, lbl_816989D0@sda21(r0)
/* 8137AAAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137AAB0 | 40 82 02 F4 */	bne .L_8137ADA4
/* 8137AAB4 | 80 0D A9 B8 */	lwz r0, lbl_816989F8@sda21(r0)
/* 8137AAB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137AABC | 41 82 02 E8 */	beq .L_8137ADA4
/* 8137AAC0 | 3A FC 00 00 */	addi r23, r28, 0x0
/* 8137AAC4 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 8137AAC8 | 7C 77 02 14 */	add r3, r23, r0
/* 8137AACC | 80 03 F0 20 */	lwz r0, -0xfe0(r3)
/* 8137AAD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137AAD4 | 41 82 02 D0 */	beq .L_8137ADA4
/* 8137AAD8 | 38 7D 04 CA */	addi r3, r29, 0x4ca
/* 8137AADC | 4C C6 31 82 */	crclr cr1eq
/* 8137AAE0 | 48 1B 3B C1 */	bl OSReport
/* 8137AAE4 | 4B FF EC 3D */	bl BS2GetArgv
/* 8137AAE8 | 7C 7F 1B 78 */	mr r31, r3
/* 8137AAEC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8137AAF0 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 8137AAF4 | 38 8D 85 2F */	li r4, lbl_8169656F@sda21
/* 8137AAF8 | 4C C6 31 82 */	crclr cr1eq
/* 8137AAFC | 48 28 76 91 */	bl sscanf
/* 8137AB00 | 80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8137AB04 | 38 7D 04 E5 */	addi r3, r29, 0x4e5
/* 8137AB08 | 80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 8137AB0C | 4C C6 31 82 */	crclr cr1eq
/* 8137AB10 | 48 1B 3B 91 */	bl OSReport
/* 8137AB14 | 80 97 00 0C */	lwz r4, 0xc(r23)
/* 8137AB18 | 38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8137AB1C | 4C C6 31 82 */	crclr cr1eq
/* 8137AB20 | 48 1B 3B 81 */	bl OSReport
/* 8137AB24 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 8137AB28 | 38 7D 05 0E */	addi r3, r29, 0x50e
/* 8137AB2C | 7C 97 02 14 */	add r4, r23, r0
/* 8137AB30 | 80 84 F0 20 */	lwz r4, -0xfe0(r4)
/* 8137AB34 | 38 84 FF FF */	subi r4, r4, 0x1
/* 8137AB38 | 4C C6 31 82 */	crclr cr1eq
/* 8137AB3C | 48 1B 3B 65 */	bl OSReport
/* 8137AB40 | 3A C0 00 01 */	li r22, 0x1
/* 8137AB44 | 3B 00 00 04 */	li r24, 0x4
/* 8137AB48 | 48 00 00 20 */	b .L_8137AB68
.L_8137AB4C:
/* 8137AB4C | 7C BF C0 2E */	lwzx r5, r31, r24
/* 8137AB50 | 38 7D 05 1E */	addi r3, r29, 0x51e
/* 8137AB54 | 38 96 FF FF */	subi r4, r22, 0x1
/* 8137AB58 | 4C C6 31 82 */	crclr cr1eq
/* 8137AB5C | 48 1B 3B 45 */	bl OSReport
/* 8137AB60 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8137AB64 | 3B 18 00 04 */	addi r24, r24, 0x4
.L_8137AB68:
/* 8137AB68 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 8137AB6C | 7C 77 02 14 */	add r3, r23, r0
/* 8137AB70 | 80 03 F0 20 */	lwz r0, -0xfe0(r3)
/* 8137AB74 | 7C 16 00 40 */	cmplw r22, r0
/* 8137AB78 | 41 80 FF D4 */	blt .L_8137AB4C
/* 8137AB7C | 3E C0 81 20 */	lis r22, 0x8120
/* 8137AB80 | 38 80 00 00 */	li r4, 0x0
/* 8137AB84 | 7E C3 B3 78 */	mr r3, r22
/* 8137AB88 | 38 A0 10 20 */	li r5, 0x1020
/* 8137AB8C | 4B FB 57 A9 */	bl memset
/* 8137AB90 | 48 1B CE 59 */	bl fn_815379E8
/* 8137AB94 | 7E C3 B3 78 */	mr r3, r22
/* 8137AB98 | 48 1B CF 01 */	bl fn_81537A98
/* 8137AB9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ABA0 | 40 82 00 0C */	bne .L_8137ABAC
/* 8137ABA4 | 38 7D 05 2F */	addi r3, r29, 0x52f
/* 8137ABA8 | 48 1E 93 01 */	bl NANDPrivateDelete
.L_8137ABAC:
/* 8137ABAC | 3A C0 00 00 */	li r22, 0x0
/* 8137ABB0 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8137ABB4 | 92 C1 00 0C */	stw r22, 0xc(r1)
/* 8137ABB8 | 83 61 00 3C */	lwz r27, 0x3c(r1)
/* 8137ABBC | 48 1F 6B 85 */	bl ESP_InitLib
/* 8137ABC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ABC4 | 41 82 00 0C */	beq .L_8137ABD0
/* 8137ABC8 | 38 00 00 00 */	li r0, 0x0
/* 8137ABCC | 48 00 01 A0 */	b .L_8137AD6C
.L_8137ABD0:
/* 8137ABD0 | 7F 64 DB 78 */	mr r4, r27
/* 8137ABD4 | 7F C3 F3 78 */	mr r3, r30
/* 8137ABD8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 8137ABDC | 38 A0 00 00 */	li r5, 0x0
/* 8137ABE0 | 48 1F 6F B5 */	bl ESP_GetTicketViews
/* 8137ABE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ABE8 | 40 82 01 80 */	bne .L_8137AD68
/* 8137ABEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137ABF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137ABF4 | 41 82 01 74 */	beq .L_8137AD68
/* 8137ABF8 | 1C 60 00 D8 */	mulli r3, r0, 0xd8
/* 8137ABFC | 3E E0 00 0F */	lis r23, 0xf
/* 8137AC00 | 3F 36 81 20 */	subis r25, r22, 0x7ee0
/* 8137AC04 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8137AC08 | 54 18 00 34 */	clrrwi r24, r0, 5
/* 8137AC0C | 7C 18 B8 40 */	cmplw r24, r23
/* 8137AC10 | 41 81 01 58 */	bgt .L_8137AD68
/* 8137AC14 | 7F 64 DB 78 */	mr r4, r27
/* 8137AC18 | 7F C3 F3 78 */	mr r3, r30
/* 8137AC1C | 7F 25 CB 78 */	mr r5, r25
/* 8137AC20 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 8137AC24 | 48 1F 6F 71 */	bl ESP_GetTicketViews
/* 8137AC28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137AC2C | 40 82 01 3C */	bne .L_8137AD68
/* 8137AC30 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8137AC34 | 7F 23 CB 78 */	mr r3, r25
/* 8137AC38 | 48 1B 44 A1 */	bl fn_8152F0D8
/* 8137AC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137AC40 | 41 80 01 28 */	blt .L_8137AD68
/* 8137AC44 | 7F 64 DB 78 */	mr r4, r27
/* 8137AC48 | 7F C3 F3 78 */	mr r3, r30
/* 8137AC4C | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8137AC50 | 38 A0 00 00 */	li r5, 0x0
/* 8137AC54 | 48 1F 71 ED */	bl ESP_GetTmdView
/* 8137AC58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137AC5C | 40 82 01 0C */	bne .L_8137AD68
/* 8137AC60 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8137AC64 | 3F 58 81 20 */	subis r26, r24, 0x7ee0
/* 8137AC68 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8137AC6C | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8137AC70 | 7E D8 02 14 */	add r22, r24, r0
/* 8137AC74 | 7C 16 B8 40 */	cmplw r22, r23
/* 8137AC78 | 41 81 00 F0 */	bgt .L_8137AD68
/* 8137AC7C | 7F 64 DB 78 */	mr r4, r27
/* 8137AC80 | 7F C3 F3 78 */	mr r3, r30
/* 8137AC84 | 7F 45 D3 78 */	mr r5, r26
/* 8137AC88 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8137AC8C | 48 1F 71 B5 */	bl ESP_GetTmdView
/* 8137AC90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137AC94 | 40 82 00 D4 */	bne .L_8137AD68
/* 8137AC98 | A3 1A 00 5A */	lhz r24, 0x5a(r26)
/* 8137AC9C | 7F 64 DB 78 */	mr r4, r27
/* 8137ACA0 | 7F C3 F3 78 */	mr r3, r30
/* 8137ACA4 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 8137ACA8 | 38 A0 00 00 */	li r5, 0x0
/* 8137ACAC | 48 1F 6D D1 */	bl ESP_ListTitleContentsOnCard
/* 8137ACB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ACB4 | 40 82 00 B4 */	bne .L_8137AD68
/* 8137ACB8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8137ACBC | 3F 36 81 20 */	subis r25, r22, 0x7ee0
/* 8137ACC0 | 54 03 10 3A */	slwi r3, r0, 2
/* 8137ACC4 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8137ACC8 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8137ACCC | 7E D6 02 14 */	add r22, r22, r0
/* 8137ACD0 | 7C 16 B8 40 */	cmplw r22, r23
/* 8137ACD4 | 41 81 00 94 */	bgt .L_8137AD68
/* 8137ACD8 | 7F 64 DB 78 */	mr r4, r27
/* 8137ACDC | 7F C3 F3 78 */	mr r3, r30
/* 8137ACE0 | 7F 25 CB 78 */	mr r5, r25
/* 8137ACE4 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 8137ACE8 | 48 1F 6D 95 */	bl ESP_ListTitleContentsOnCard
/* 8137ACEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ACF0 | 40 82 00 78 */	bne .L_8137AD68
/* 8137ACF4 | 39 00 00 00 */	li r8, 0x0
/* 8137ACF8 | 38 60 00 00 */	li r3, 0x0
/* 8137ACFC | 48 00 00 5C */	b .L_8137AD58
.L_8137AD00:
/* 8137AD00 | 7C DA 1A 14 */	add r6, r26, r3
/* 8137AD04 | 38 E0 00 00 */	li r7, 0x0
/* 8137AD08 | A0 06 00 62 */	lhz r0, 0x62(r6)
/* 8137AD0C | 54 00 04 63 */	rlwinm. r0, r0, 0, 17, 17
/* 8137AD10 | 40 82 00 40 */	bne .L_8137AD50
/* 8137AD14 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8137AD18 | 38 80 00 00 */	li r4, 0x0
/* 8137AD1C | 7C 09 03 A6 */	mtctr r0
/* 8137AD20 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137AD24 | 40 81 00 24 */	ble .L_8137AD48
.L_8137AD28:
/* 8137AD28 | 80 A6 00 5C */	lwz r5, 0x5c(r6)
/* 8137AD2C | 7C 19 20 2E */	lwzx r0, r25, r4
/* 8137AD30 | 7C 05 00 40 */	cmplw r5, r0
/* 8137AD34 | 40 82 00 0C */	bne .L_8137AD40
/* 8137AD38 | 38 E0 00 01 */	li r7, 0x1
/* 8137AD3C | 48 00 00 0C */	b .L_8137AD48
.L_8137AD40:
/* 8137AD40 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8137AD44 | 42 00 FF E4 */	bdnz .L_8137AD28
.L_8137AD48:
/* 8137AD48 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8137AD4C | 41 82 00 1C */	beq .L_8137AD68
.L_8137AD50:
/* 8137AD50 | 39 08 00 01 */	addi r8, r8, 0x1
/* 8137AD54 | 38 63 00 10 */	addi r3, r3, 0x10
.L_8137AD58:
/* 8137AD58 | 7C 08 C0 40 */	cmplw r8, r24
/* 8137AD5C | 41 80 FF A4 */	blt .L_8137AD00
/* 8137AD60 | 38 00 00 01 */	li r0, 0x1
/* 8137AD64 | 48 00 00 08 */	b .L_8137AD6C
.L_8137AD68:
/* 8137AD68 | 38 00 00 00 */	li r0, 0x0
.L_8137AD6C:
/* 8137AD6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137AD70 | 41 82 00 24 */	beq .L_8137AD94
/* 8137AD74 | 48 00 5C 1D */	bl BS2SetStateFlags
/* 8137AD78 | 38 9C 00 00 */	addi r4, r28, 0x0
/* 8137AD7C | 80 61 00 38 */	lwz r3, 0x38(r1)
/* 8137AD80 | 80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8137AD84 | 38 DF 00 04 */	addi r6, r31, 0x4
/* 8137AD88 | 80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8137AD8C | 48 1B 4B 01 */	bl fn_8152F88C
/* 8137AD90 | 48 00 00 14 */	b .L_8137ADA4
.L_8137AD94:
/* 8137AD94 | 38 7D 05 49 */	addi r3, r29, 0x549
/* 8137AD98 | 4C C6 31 82 */	crclr cr1eq
/* 8137AD9C | 48 1B 39 05 */	bl OSReport
/* 8137ADA0 | 48 00 59 99 */	bl OSShutdownSystemForBS
.L_8137ADA4:
/* 8137ADA4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8137ADA8 | 3A C0 00 00 */	li r22, 0x0
/* 8137ADAC | 38 60 00 00 */	li r3, 0x0
/* 8137ADB0 | 38 80 00 00 */	li r4, 0x0
/* 8137ADB4 | 48 1B F2 75 */	bl fn_8153A028
/* 8137ADB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ADBC | 41 82 00 2C */	beq .L_8137ADE8
/* 8137ADC0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137ADC4 | 54 03 00 2E */	clrrwi r3, r0, 8
/* 8137ADC8 | 3C 03 F8 FE */	subis r0, r3, 0x702
/* 8137ADCC | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137ADD0 | 40 82 00 18 */	bne .L_8137ADE8
/* 8137ADD4 | 38 7D 05 74 */	addi r3, r29, 0x574
/* 8137ADD8 | 4C C6 31 82 */	crclr cr1eq
/* 8137ADDC | 48 1B 38 C5 */	bl OSReport
/* 8137ADE0 | 3A C0 00 01 */	li r22, 0x1
/* 8137ADE4 | 48 00 00 14 */	b .L_8137ADF8
.L_8137ADE8:
/* 8137ADE8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8137ADEC | 38 7D 05 82 */	addi r3, r29, 0x582
/* 8137ADF0 | 4C C6 31 82 */	crclr cr1eq
/* 8137ADF4 | 48 1B 38 AD */	bl OSReport
.L_8137ADF8:
/* 8137ADF8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8137ADFC | 38 60 00 01 */	li r3, 0x1
/* 8137AE00 | 38 80 00 00 */	li r4, 0x0
/* 8137AE04 | 48 1B F2 25 */	bl fn_8153A028
/* 8137AE08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137AE0C | 41 82 00 2C */	beq .L_8137AE38
/* 8137AE10 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137AE14 | 54 03 00 2E */	clrrwi r3, r0, 8
/* 8137AE18 | 3C 03 F8 FE */	subis r0, r3, 0x702
/* 8137AE1C | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137AE20 | 40 82 00 18 */	bne .L_8137AE38
/* 8137AE24 | 38 7D 05 8E */	addi r3, r29, 0x58e
/* 8137AE28 | 4C C6 31 82 */	crclr cr1eq
/* 8137AE2C | 48 1B 38 75 */	bl OSReport
/* 8137AE30 | 3A C0 00 01 */	li r22, 0x1
/* 8137AE34 | 48 00 00 14 */	b .L_8137AE48
.L_8137AE38:
/* 8137AE38 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8137AE3C | 38 7D 05 9C */	addi r3, r29, 0x59c
/* 8137AE40 | 4C C6 31 82 */	crclr cr1eq
/* 8137AE44 | 48 1B 38 5D */	bl OSReport
.L_8137AE48:
/* 8137AE48 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8137AE4C | 40 82 00 20 */	bne .L_8137AE6C
/* 8137AE50 | 88 01 00 B6 */	lbz r0, 0xb6(r1)
/* 8137AE54 | 7C 00 07 75 */	extsb. r0, r0
/* 8137AE58 | 40 82 00 1C */	bne .L_8137AE74
/* 8137AE5C | A0 01 00 AC */	lhz r0, 0xac(r1)
/* 8137AE60 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8137AE64 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8137AE68 | 40 82 00 0C */	bne .L_8137AE74
.L_8137AE6C:
/* 8137AE6C | 4B FF E9 3D */	bl BS2BootIRD
/* 8137AE70 | 48 00 00 08 */	b .L_8137AE78
.L_8137AE74:
/* 8137AE74 | 4B FF E7 E5 */	bl BS2Entry
.L_8137AE78:
/* 8137AE78 | 38 BD 05 A8 */	addi r5, r29, 0x5a8
/* 8137AE7C | 38 6D 84 E4 */	li r3, lbl_81696524@sda21
/* 8137AE80 | 38 80 08 7F */	li r4, 0x87f
/* 8137AE84 | 4C C6 31 82 */	crclr cr1eq
/* 8137AE88 | 48 1B 38 A9 */	bl OSPanic
/* 8137AE8C | 39 61 01 30 */	addi r11, r1, 0x130
/* 8137AE90 | 48 27 E6 69 */	bl _restgpr_22
/* 8137AE94 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8137AE98 | 7C 08 03 A6 */	mtlr r0
/* 8137AE9C | 38 21 01 30 */	addi r1, r1, 0x130
/* 8137AEA0 | 4E 80 00 20 */	blr
.endfn main

# 0x816457D8..0x81645DA8 | size: 0x5D0
.data
.balign 8

# .data:0x0 | 0x816457D8 | size: 0x1D4
.obj lbl_816457D8, global
	.4byte 0x4D454D32
	.4byte 0x20686561
	.4byte 0x7020616C
	.4byte 0x6C6F6361
	.4byte 0x74696F6E
	.4byte 0x20657272
	.4byte 0x6F722E0A
	.4byte 0x000A2D2D
	.4byte 0x2D204E44
	.4byte 0x45562042
	.4byte 0x4F4F5420
	.4byte 0x50524F47
	.4byte 0x52414D20
	.4byte 0x7625582E
	.4byte 0x25303258
	.4byte 0x202B2063
	.4byte 0x6B202850
	.4byte 0x524F4455
	.4byte 0x4354494F
	.4byte 0x4E204D4F
	.4byte 0x44453A20
	.4byte 0x0025642E
	.4byte 0x25642825
	.4byte 0x73290025
	.4byte 0x642E2564
	.4byte 0x28585858
	.4byte 0x29002020
	.4byte 0x47616D65
	.4byte 0x204E616D
	.4byte 0x65202E2E
	.4byte 0x2E20252D
	.4byte 0x342E3473
	.4byte 0x0A002020
	.4byte 0x436F6D70
	.4byte 0x616E7920
	.4byte 0x2E2E2E2E
	.4byte 0x2E20252D
	.4byte 0x322E3273
	.4byte 0x0A002020
	.4byte 0x4469736B
	.4byte 0x2023202E
	.4byte 0x2E2E2E2E
	.4byte 0x2E202578
	.4byte 0x0A002020
	.4byte 0x47616D65
	.4byte 0x20766572
	.4byte 0x202E2E2E
	.4byte 0x2E202578
	.4byte 0x0A004176
	.4byte 0x61696C61
	.4byte 0x626C6500
	.4byte 0x4E6F7420
	.4byte 0x61766169
	.4byte 0x6C61626C
	.4byte 0x65000A20
	.4byte 0x2042616E
	.4byte 0x6E657220
	.4byte 0x2E2E2E2E
	.4byte 0x2E2E2025
	.4byte 0x730A0020
	.4byte 0x20504320
	.4byte 0x43686563
	.4byte 0x6B202E2E
	.4byte 0x2E2E2025
	.4byte 0x730A0020
	.4byte 0x20537472
	.4byte 0x65616D69
	.4byte 0x6E67202E
	.4byte 0x2E2E2025
	.4byte 0x730A0020
	.4byte 0x20202042
	.4byte 0x75662073
	.4byte 0x697A6520
	.4byte 0x2E2E2025
	.4byte 0x640A0020
	.4byte 0x20202042
	.4byte 0x75662073
	.4byte 0x697A6520
	.4byte 0x2E2E2031
	.4byte 0x30286465
	.4byte 0x6661756C
	.4byte 0x74290A00
	.4byte 0x0D496E73
	.4byte 0x65727420
	.4byte 0x6469736B
	.4byte 0x20000D57
	.4byte 0x726F6E67
	.4byte 0x20646973
	.4byte 0x6B202000
	.4byte 0x0D446972
	.4byte 0x74792064
	.4byte 0x69736B20
	.4byte 0x20000D46
	.4byte 0x6174616C
	.4byte 0x20657272
	.4byte 0x6F72206F
	.4byte 0x63637572
	.4byte 0x72656420
	.4byte 0x20000A55
	.4byte 0x70646174
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x20200055
	.4byte 0x70646174
	.4byte 0x65206669
	.4byte 0x6C65733A
	.4byte 0x0A000D55
	.4byte 0x70646174
	.4byte 0x696E672E
	.4byte 0x2E2E2020
	.4byte 0x000D4461
	.4byte 0x74612064
	.4byte 0x69736B20
	.4byte 0x20000D4C
	.4byte 0x6F616469
	.4byte 0x6E672E2E
	.4byte 0x2E202000
.endobj lbl_816457D8

# .data:0x1D4 | 0x816459AC | size: 0x94
.obj jumptable_816459AC, local
	.rel BS2BootIRD, .L_81379BDC
	.rel BS2BootIRD, .L_81379C3C
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_813799E8
	.rel BS2BootIRD, .L_81379AB8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379B8C
	.rel BS2BootIRD, .L_81379B8C
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379B9C
	.rel BS2BootIRD, .L_81379BBC
	.rel BS2BootIRD, .L_81379BCC
	.rel BS2BootIRD, .L_81379BAC
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379C98
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CD8
	.rel BS2BootIRD, .L_81379CC8
.endobj jumptable_816459AC

# .data:0x268 | 0x81645A40 | size: 0x368
.obj gap_08_81645A40_data, global
.hidden gap_08_81645A40_data
	.4byte 0x01020304
	.4byte 0x05060708
	.4byte 0x09534349
	.4byte 0x6E697420
	.4byte 0x6661696C
	.4byte 0x6564210A
	.4byte 0x002F7469
	.4byte 0x746C652F
	.4byte 0x30303030
	.4byte 0x30303031
	.4byte 0x2F303030
	.4byte 0x30303030
	.4byte 0x322F6461
	.4byte 0x74612F73
	.4byte 0x65747469
	.4byte 0x6E672E74
	.4byte 0x78740046
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x20736574
	.4byte 0x2070726F
	.4byte 0x64756374
	.4byte 0x20696E66
	.4byte 0x6F206669
	.4byte 0x6C652070
	.4byte 0x65726D69
	.4byte 0x7373696F
	.4byte 0x6E212028
	.4byte 0x2564290A
	.4byte 0x0070726F
	.4byte 0x64756374
	.4byte 0x20696E66
	.4byte 0x6F206669
	.4byte 0x6C652069
	.4byte 0x73206E6F
	.4byte 0x74206578
	.4byte 0x6973740A
	.4byte 0x00466174
	.4byte 0x616C2065
	.4byte 0x72726F72
	.4byte 0x21202825
	.4byte 0x64290A00
	.4byte 0x4661696C
	.4byte 0x65642074
	.4byte 0x6F206372
	.4byte 0x65617465
	.4byte 0x0A00426F
	.4byte 0x6F742066
	.4byte 0x726F6D20
	.4byte 0x63616368
	.4byte 0x650A002F
	.4byte 0x7469746C
	.4byte 0x652F3030
	.4byte 0x30303030
	.4byte 0x30312F30
	.4byte 0x30303030
	.4byte 0x3030322F
	.4byte 0x64617461
	.4byte 0x2F636163
	.4byte 0x68652E64
	.4byte 0x6174006F
	.4byte 0x70656E20
	.4byte 0x626F6F74
	.4byte 0x20636163
	.4byte 0x68652066
	.4byte 0x696C6528
	.4byte 0x2564290A
	.4byte 0x00676574
	.4byte 0x20626F6F
	.4byte 0x74206361
	.4byte 0x63686520
	.4byte 0x66696C65
	.4byte 0x206C656E
	.4byte 0x67746828
	.4byte 0x2564290A
	.4byte 0x00636C6F
	.4byte 0x73652062
	.4byte 0x6F6F7420
	.4byte 0x63616368
	.4byte 0x65206669
	.4byte 0x6C652825
	.4byte 0x64290A00
	.4byte 0x64656C65
	.4byte 0x74652062
	.4byte 0x6F6F7420
	.4byte 0x63616368
	.4byte 0x65206669
	.4byte 0x6C652825
	.4byte 0x64290A00
	.4byte 0x43726561
	.4byte 0x74656420
	.4byte 0x626F6F74
	.4byte 0x20636163
	.4byte 0x68652066
	.4byte 0x696C652E
	.4byte 0x0A004553
	.4byte 0x5F496E69
	.4byte 0x744C6962
	.4byte 0x20666169
	.4byte 0x6C656421
	.4byte 0x2025640A
	.4byte 0x00536875
	.4byte 0x74646F77
	.4byte 0x6E207379
	.4byte 0x7374656D
	.4byte 0x2066726F
	.4byte 0x6D204743
	.4byte 0x210A0045
	.4byte 0x4A454354
	.4byte 0x20737769
	.4byte 0x74636820
	.4byte 0x77617320
	.4byte 0x70726573
	.4byte 0x7365640A
	.4byte 0x00536875
	.4byte 0x74646F77
	.4byte 0x6E207379
	.4byte 0x7374656D
	.4byte 0x210A0053
	.4byte 0x68696674
	.4byte 0x20746F20
	.4byte 0x69646C65
	.4byte 0x206D6F64
	.4byte 0x650A0044
	.4byte 0x69736320
	.4byte 0x696E0A00
	.4byte 0x52657475
	.4byte 0x726E2074
	.4byte 0x6F206D65
	.4byte 0x6E750A00
	.4byte 0x4C617374
	.4byte 0x20736875
	.4byte 0x74646F77
	.4byte 0x6E207365
	.4byte 0x7175656E
	.4byte 0x63652069
	.4byte 0x7320696E
	.4byte 0x76616C69
	.4byte 0x640A002F
	.4byte 0x73686172
	.4byte 0x6564322F
	.4byte 0x74657374
	.4byte 0x32004661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x63726561
	.4byte 0x74652064
	.4byte 0x69722022
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F746573
	.4byte 0x7432222E
	.4byte 0x0A004C61
	.4byte 0x756E6368
	.4byte 0x204E414E
	.4byte 0x44204170
	.4byte 0x70206672
	.4byte 0x6F6D2057
	.4byte 0x4332340A
	.4byte 0x004C6175
	.4byte 0x6E636820
	.4byte 0x2020203A
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x4C61756E
	.4byte 0x6368436F
	.4byte 0x64653A20
	.4byte 0x25303858
	.4byte 0x0A006172
	.4byte 0x67632020
	.4byte 0x20202020
	.4byte 0x3A202564
	.4byte 0x0A006172
	.4byte 0x67765B25
	.4byte 0x645D2020
	.4byte 0x203A2025
	.4byte 0x730A002F
	.4byte 0x73686172
	.4byte 0x6564322F
	.4byte 0x7379732F
	.4byte 0x4E414E44
	.4byte 0x424F4F54
	.4byte 0x494E464F
	.4byte 0x00737065
	.4byte 0x63696669
	.4byte 0x65642074
	.4byte 0x69746C65
	.4byte 0x20627920
	.4byte 0x57433234
	.4byte 0x20697320
	.4byte 0x6E6F7420
	.4byte 0x696E7374
	.4byte 0x616C6C65
	.4byte 0x64210A00
	.4byte 0x57696B69
	.4byte 0x6B69536C
	.4byte 0x6F742041
	.4byte 0x0A004964
	.4byte 0x30203A20
	.4byte 0x25303878
	.4byte 0x0A005769
	.4byte 0x6B696B69
	.4byte 0x536C6F74
	.4byte 0x20420A00
	.4byte 0x49643120
	.4byte 0x3A202530
	.4byte 0x38780A00
	.4byte 0x42533220
	.4byte 0x4552524F
	.4byte 0x52203E3E
	.4byte 0x3E205348
	.4byte 0x4F554C44
	.4byte 0x204E4556
	.4byte 0x45522052
	.4byte 0x45414348
	.4byte 0x20484552
	.4byte 0x45000000
.endobj gap_08_81645A40_data

# 0x81694780..0x81694788 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694780 | size: 0x1
.obj lbl_81694780, global
	.byte 0xFF
.endobj lbl_81694780

# .sdata2:0x1 | 0x81694781 | size: 0x1
.obj lbl_81694781, global
	.byte 0xFF
.endobj lbl_81694781

# .sdata2:0x2 | 0x81694782 | size: 0x1
.obj lbl_81694782, global
	.byte 0xFF
.endobj lbl_81694782

# .sdata2:0x3 | 0x81694783 | size: 0x5
.obj lbl_81694783, global
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
.endobj lbl_81694783

# 0x81696518..0x81696578 | size: 0x60
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696518 | size: 0x4
.obj lbl_81696518, global
	.4byte 0x00000001
.endobj lbl_81696518

# .sdata:0x4 | 0x8169651C | size: 0x4
.obj lbl_8169651C, global
	.4byte 0x00000001
.endobj lbl_8169651C

# .sdata:0x8 | 0x81696520 | size: 0x4
.obj lbl_81696520, global
	.4byte 0xFFFFFFFF
.endobj lbl_81696520

# .sdata:0xC | 0x81696524 | size: 0x6
.obj lbl_81696524, global
	.string "BS2.c"
.endobj lbl_81696524

# .sdata:0x12 | 0x8169652A | size: 0x5
.obj lbl_8169652A, global
	.string "NTSC"
.endobj lbl_8169652A

# .sdata:0x17 | 0x8169652F | size: 0x4
.obj lbl_8169652F, global
	.string "PAL"
.endobj lbl_8169652F

# .sdata:0x1B | 0x81696533 | size: 0x5
.obj lbl_81696533, global
	.string "MPAL"
.endobj lbl_81696533

# .sdata:0x20 | 0x81696538 | size: 0x7
.obj lbl_81696538, global
	.string ") ---\n"
.endobj lbl_81696538

# .sdata:0x27 | 0x8169653F | size: 0x2
.obj lbl_8169653F, global
	.string "\n"
.endobj lbl_8169653F

# .sdata:0x29 | 0x81696541 | size: 0x8
.obj lbl_81696541, global
	.string "Success"
.endobj lbl_81696541

# .sdata:0x31 | 0x81696549 | size: 0x7
.obj lbl_81696549, global
	.string "Failed"
.endobj lbl_81696549

# .sdata:0x38 | 0x81696550 | size: 0x1
.obj lbl_81696550, global
	.byte 0x00
.endobj lbl_81696550

# .sdata:0x39 | 0x81696551 | size: 0x3
.obj lbl_81696551, global
	.string "ON"
.endobj lbl_81696551

# .sdata:0x3C | 0x81696554 | size: 0x4
.obj lbl_81696554, global
	.string "OFF"
.endobj lbl_81696554

# .sdata:0x40 | 0x81696558 | size: 0x6
.obj lbl_81696558, global
	.string "  %s\n"
.endobj lbl_81696558

# .sdata:0x46 | 0x8169655E | size: 0x4
.obj lbl_8169655E, global
	.4byte 0x08256300
.endobj lbl_8169655E

# .sdata:0x4A | 0x81696562 | size: 0x5
.obj lbl_81696562, global
	.string "/-\\|"
.endobj lbl_81696562

# .sdata:0x4F | 0x81696567 | size: 0x8
.obj lbl_81696567, global
	.string "\rReboot"
.endobj lbl_81696567

# .sdata:0x57 | 0x8169656F | size: 0x9
.obj lbl_8169656F, global
	.4byte 0x25303136
	.4byte 0x6C6C7800
	.byte 0x00
.endobj lbl_8169656F

# 0x816989D0..0x81698A08 | size: 0x38
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816989D0 | size: 0x4
.obj lbl_816989D0, global
	.skip 0x4
.endobj lbl_816989D0

# .sbss:0x4 | 0x816989D4 | size: 0x4
.obj lbl_816989D4, global
	.skip 0x4
.endobj lbl_816989D4

# .sbss:0x8 | 0x816989D8 | size: 0x4
.obj lbl_816989D8, global
	.skip 0x4
.endobj lbl_816989D8

# .sbss:0xC | 0x816989DC | size: 0x4
.obj lbl_816989DC, global
	.skip 0x4
.endobj lbl_816989DC

# .sbss:0x10 | 0x816989E0 | size: 0x4
.obj lbl_816989E0, global
	.skip 0x4
.endobj lbl_816989E0

# .sbss:0x14 | 0x816989E4 | size: 0x4
.obj lbl_816989E4, global
	.skip 0x4
.endobj lbl_816989E4

# .sbss:0x18 | 0x816989E8 | size: 0x4
.obj lbl_816989E8, global
	.skip 0x4
.endobj lbl_816989E8

# .sbss:0x1C | 0x816989EC | size: 0x4
.obj lbl_816989EC, global
	.skip 0x4
.endobj lbl_816989EC

# .sbss:0x20 | 0x816989F0 | size: 0x4
.obj lbl_816989F0, global
	.skip 0x4
.endobj lbl_816989F0

# .sbss:0x24 | 0x816989F4 | size: 0x4
.obj lbl_816989F4, global
	.skip 0x4
.endobj lbl_816989F4

# .sbss:0x28 | 0x816989F8 | size: 0x4
.obj lbl_816989F8, global
	.skip 0x4
.endobj lbl_816989F8

# .sbss:0x2C | 0x816989FC | size: 0x4
.obj lbl_816989FC, global
	.skip 0x4
.endobj lbl_816989FC

# .sbss:0x30 | 0x81698A00 | size: 0x4
.obj lbl_81698A00, global
	.skip 0x4
.endobj lbl_81698A00

# .sbss:0x34 | 0x81698A04 | size: 0x4
.obj lbl_81698A04, global
	.skip 0x4
.endobj lbl_81698A04
