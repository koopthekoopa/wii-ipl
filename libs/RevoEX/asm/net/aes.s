.include "macros.inc"
.file "aes.c"

# 0x81494D84..0x81495844 | size: 0xAC0
.text
.balign 4

# .text:0x0 | 0x81494D84 | size: 0x278
.fn AESiEncryptBlock, global
/* 81494D84 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81494D88 | 7C 08 02 A6 */	mflr r0
/* 81494D8C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81494D90 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81494D94 | 48 16 47 11 */	bl _savegpr_20
/* 81494D98 | 80 C3 01 00 */	lwz r6, 0x100(r3)
/* 81494D9C | 3D 20 81 62 */	lis r9, AESiEncryptTable@ha
/* 81494DA0 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81494DA4 | 39 63 00 20 */	addi r11, r3, 0x20
/* 81494DA8 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 81494DAC | 54 CC 46 3E */	srwi r12, r6, 24
/* 81494DB0 | 80 C5 00 04 */	lwz r6, 0x4(r5)
/* 81494DB4 | 39 29 84 30 */	addi r9, r9, AESiEncryptTable@l
/* 81494DB8 | 81 43 00 14 */	lwz r10, 0x14(r3)
/* 81494DBC | 7C 00 3A 78 */	xor r0, r0, r7
/* 81494DC0 | 80 E5 00 08 */	lwz r7, 0x8(r5)
/* 81494DC4 | 81 03 00 18 */	lwz r8, 0x18(r3)
/* 81494DC8 | 7C C6 52 78 */	xor r6, r6, r10
/* 81494DCC | 80 A5 00 0C */	lwz r5, 0xc(r5)
/* 81494DD0 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 81494DD4 | 7C E7 42 78 */	xor r7, r7, r8
/* 81494DD8 | 7C A5 1A 78 */	xor r5, r5, r3
/* 81494DDC | 48 00 01 08 */	b .L_81494EE4
.L_81494DE0:
/* 81494DE0 | 54 0A 55 BA */	rlwinm r10, r0, 10, 22, 29
/* 81494DE4 | 54 D7 55 BA */	rlwinm r23, r6, 10, 22, 29
/* 81494DE8 | 54 F8 95 BA */	rlwinm r24, r7, 18, 22, 29
/* 81494DEC | 54 BD 55 BA */	rlwinm r29, r5, 10, 22, 29
/* 81494DF0 | 7E C9 50 2E */	lwzx r22, r9, r10
/* 81494DF4 | 54 D5 95 BA */	rlwinm r21, r6, 18, 22, 29
/* 81494DF8 | 54 FA 55 BA */	rlwinm r26, r7, 10, 22, 29
/* 81494DFC | 54 BB 95 BA */	rlwinm r27, r5, 18, 22, 29
/* 81494E00 | 54 1C 95 BA */	rlwinm r28, r0, 18, 22, 29
/* 81494E04 | 7E E9 B8 2E */	lwzx r23, r9, r23
/* 81494E08 | 7F 09 C0 2E */	lwzx r24, r9, r24
/* 81494E0C | 54 E8 D5 BA */	rlwinm r8, r7, 26, 22, 29
/* 81494E10 | 54 19 D5 BA */	rlwinm r25, r0, 26, 22, 29
/* 81494E14 | 54 FF 15 BA */	clrlslwi r31, r7, 24, 2
/* 81494E18 | 7F 49 D0 2E */	lwzx r26, r9, r26
/* 81494E1C | 54 A3 D5 BA */	rlwinm r3, r5, 26, 22, 29
/* 81494E20 | 56 C7 C0 3E */	rotrwi r7, r22, 8
/* 81494E24 | 7F 69 D8 2E */	lwzx r27, r9, r27
/* 81494E28 | 7E C9 18 2E */	lwzx r22, r9, r3
/* 81494E2C | 54 AA 15 BA */	clrlslwi r10, r5, 24, 2
/* 81494E30 | 7F 89 E0 2E */	lwzx r28, r9, r28
/* 81494E34 | 54 05 15 BA */	clrlslwi r5, r0, 24, 2
/* 81494E38 | 7E 89 40 2E */	lwzx r20, r9, r8
/* 81494E3C | 54 DE D5 BA */	rlwinm r30, r6, 26, 22, 29
/* 81494E40 | 7F A9 E8 2E */	lwzx r29, r9, r29
/* 81494E44 | 56 F7 C0 3E */	rotrwi r23, r23, 8
/* 81494E48 | 7E A9 A8 2E */	lwzx r21, r9, r21
/* 81494E4C | 54 C0 15 BA */	clrlslwi r0, r6, 24, 2
/* 81494E50 | 57 A8 C0 3E */	rotrwi r8, r29, 8
/* 81494E54 | 57 83 80 3E */	rotlwi r3, r28, 16
/* 81494E58 | 7F 29 C8 2E */	lwzx r25, r9, r25
/* 81494E5C | 56 A6 80 3E */	rotlwi r6, r21, 16
/* 81494E60 | 7D 03 1A 78 */	xor r3, r8, r3
/* 81494E64 | 57 18 80 3E */	rotlwi r24, r24, 16
/* 81494E68 | 7F A9 F0 2E */	lwzx r29, r9, r30
/* 81494E6C | 7E FE C2 78 */	xor r30, r23, r24
/* 81494E70 | 7C F5 32 78 */	xor r21, r7, r6
/* 81494E74 | 56 94 40 3E */	rotlwi r20, r20, 8
/* 81494E78 | 57 3C 40 3E */	rotlwi r28, r25, 8
/* 81494E7C | 7F 29 00 2E */	lwzx r25, r9, r0
/* 81494E80 | 57 5A C0 3E */	rotrwi r26, r26, 8
/* 81494E84 | 57 7B 80 3E */	rotlwi r27, r27, 16
/* 81494E88 | 7F 47 DA 78 */	xor r7, r26, r27
/* 81494E8C | 7F 49 50 2E */	lwzx r26, r9, r10
/* 81494E90 | 7E 98 AA 78 */	xor r24, r20, r21
/* 81494E94 | 56 D6 40 3E */	rotlwi r22, r22, 8
/* 81494E98 | 7E E9 28 2E */	lwzx r23, r9, r5
/* 81494E9C | 7E C5 F2 78 */	xor r5, r22, r30
/* 81494EA0 | 7F 8A 3A 78 */	xor r10, r28, r7
/* 81494EA4 | 57 A6 40 3E */	rotlwi r6, r29, 8
/* 81494EA8 | 7C C7 1A 78 */	xor r7, r6, r3
/* 81494EAC | 7D 09 F8 2E */	lwzx r8, r9, r31
/* 81494EB0 | 7E F5 2A 78 */	xor r21, r23, r5
/* 81494EB4 | 80 CB 00 04 */	lwz r6, 0x4(r11)
/* 81494EB8 | 80 0B 00 00 */	lwz r0, 0x0(r11)
/* 81494EBC | 7F 54 C2 78 */	xor r20, r26, r24
/* 81494EC0 | 80 AB 00 08 */	lwz r5, 0x8(r11)
/* 81494EC4 | 7F 2A 52 78 */	xor r10, r25, r10
/* 81494EC8 | 80 6B 00 0C */	lwz r3, 0xc(r11)
/* 81494ECC | 7D 08 3A 78 */	xor r8, r8, r7
/* 81494ED0 | 7D 47 2A 78 */	xor r7, r10, r5
/* 81494ED4 | 7E 80 02 78 */	xor r0, r20, r0
/* 81494ED8 | 7E A6 32 78 */	xor r6, r21, r6
/* 81494EDC | 7D 05 1A 78 */	xor r5, r8, r3
/* 81494EE0 | 39 6B 00 10 */	addi r11, r11, 0x10
.L_81494EE4:
/* 81494EE4 | 35 8C FF FF */	subic. r12, r12, 0x1
/* 81494EE8 | 40 82 FE F8 */	bne .L_81494DE0
/* 81494EEC | 3C 60 81 62 */	lis r3, AESiSubShiftTable@ha
/* 81494EF0 | 54 C8 86 3E */	extrwi r8, r6, 8, 8
/* 81494EF4 | 38 63 82 10 */	addi r3, r3, AESiSubShiftTable@l
/* 81494EF8 | 54 E9 C6 3E */	extrwi r9, r7, 8, 16
/* 81494EFC | 54 1C 46 3E */	srwi r28, r0, 24
/* 81494F00 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 81494F04 | 54 AC 06 3E */	clrlwi r12, r5, 24
/* 81494F08 | 7F E3 48 AE */	lbzx r31, r3, r9
/* 81494F0C | 7F C3 60 AE */	lbzx r30, r3, r12
/* 81494F10 | 55 0C 80 1E */	slwi r12, r8, 16
/* 81494F14 | 7F 83 E0 AE */	lbzx r28, r3, r28
/* 81494F18 | 54 E8 86 3E */	extrwi r8, r7, 8, 8
/* 81494F1C | 53 FE 44 2E */	rlwimi r30, r31, 8, 16, 23
/* 81494F20 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 81494F24 | 53 8C C0 0E */	rlwimi r12, r28, 24, 0, 7
/* 81494F28 | 54 AA C6 3E */	extrwi r10, r5, 8, 16
/* 81494F2C | 7F DE 63 78 */	or r30, r30, r12
/* 81494F30 | 54 1D 06 3E */	clrlwi r29, r0, 24
/* 81494F34 | 7F 83 50 AE */	lbzx r28, r3, r10
/* 81494F38 | 54 C9 46 3E */	srwi r9, r6, 24
/* 81494F3C | 7F A3 E8 AE */	lbzx r29, r3, r29
/* 81494F40 | 55 0C 80 1E */	slwi r12, r8, 16
/* 81494F44 | 83 EB 00 00 */	lwz r31, 0x0(r11)
/* 81494F48 | 54 0A C6 3E */	extrwi r10, r0, 8, 16
/* 81494F4C | 53 9D 44 2E */	rlwimi r29, r28, 8, 16, 23
/* 81494F50 | 54 00 86 3E */	extrwi r0, r0, 8, 8
/* 81494F54 | 7F E8 F2 78 */	xor r8, r31, r30
/* 81494F58 | 7F C3 48 AE */	lbzx r30, r3, r9
/* 81494F5C | 91 04 00 00 */	stw r8, 0x0(r4)
/* 81494F60 | 54 E9 46 3E */	srwi r9, r7, 24
/* 81494F64 | 54 A8 86 3E */	extrwi r8, r5, 8, 8
/* 81494F68 | 53 CC C0 0E */	rlwimi r12, r30, 24, 0, 7
/* 81494F6C | 7F BE 63 78 */	or r30, r29, r12
/* 81494F70 | 54 DF 06 3E */	clrlwi r31, r6, 24
/* 81494F74 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 81494F78 | 54 A5 46 3E */	srwi r5, r5, 24
/* 81494F7C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81494F80 | 54 C6 C6 3E */	extrwi r6, r6, 8, 16
/* 81494F84 | 83 8B 00 04 */	lwz r28, 0x4(r11)
/* 81494F88 | 55 08 80 1E */	slwi r8, r8, 16
/* 81494F8C | 7D 83 50 AE */	lbzx r12, r3, r10
/* 81494F90 | 54 E7 06 3E */	clrlwi r7, r7, 24
/* 81494F94 | 7F 8A F2 78 */	xor r10, r28, r30
/* 81494F98 | 7D 23 48 AE */	lbzx r9, r3, r9
/* 81494F9C | 91 44 00 04 */	stw r10, 0x4(r4)
/* 81494FA0 | 54 00 80 1E */	slwi r0, r0, 16
/* 81494FA4 | 7D 43 F8 AE */	lbzx r10, r3, r31
/* 81494FA8 | 51 28 C0 0E */	rlwimi r8, r9, 24, 0, 7
/* 81494FAC | 51 8A 44 2E */	rlwimi r10, r12, 8, 16, 23
/* 81494FB0 | 7C A3 28 AE */	lbzx r5, r3, r5
/* 81494FB4 | 7C C3 30 AE */	lbzx r6, r3, r6
/* 81494FB8 | 7D 48 43 78 */	or r8, r10, r8
/* 81494FBC | 7C 63 38 AE */	lbzx r3, r3, r7
/* 81494FC0 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
/* 81494FC4 | 81 2B 00 08 */	lwz r9, 0x8(r11)
/* 81494FC8 | 50 C3 44 2E */	rlwimi r3, r6, 8, 16, 23
/* 81494FCC | 7C 60 03 78 */	or r0, r3, r0
/* 81494FD0 | 7D 25 42 78 */	xor r5, r9, r8
/* 81494FD4 | 90 A4 00 08 */	stw r5, 0x8(r4)
/* 81494FD8 | 80 6B 00 0C */	lwz r3, 0xc(r11)
/* 81494FDC | 39 61 00 40 */	addi r11, r1, 0x40
/* 81494FE0 | 7C 60 02 78 */	xor r0, r3, r0
/* 81494FE4 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 81494FE8 | 48 16 45 09 */	bl _restgpr_20
/* 81494FEC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81494FF0 | 7C 08 03 A6 */	mtlr r0
/* 81494FF4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81494FF8 | 4E 80 00 20 */	blr
.endfn AESiEncryptBlock

# .text:0x278 | 0x81494FFC | size: 0x3EC
.fn AESiDecryptBlock, global
/* 81494FFC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81495000 | 7C 08 02 A6 */	mflr r0
/* 81495004 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81495008 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8149500C | 48 16 44 99 */	bl _savegpr_20
/* 81495010 | 80 C3 01 00 */	lwz r6, 0x100(r3)
/* 81495014 | 39 63 00 10 */	addi r11, r3, 0x10
/* 81495018 | 54 C0 4F FF */	extrwi. r0, r6, 1, 8
/* 8149501C | 54 CC 46 3E */	srwi r12, r6, 24
/* 81495020 | 54 C0 65 36 */	rlwinm r0, r6, 12, 20, 27
/* 81495024 | 7D 6B 02 14 */	add r11, r11, r0
/* 81495028 | 41 82 01 44 */	beq .L_8149516C
/* 8149502C | 3C C0 7F 7F */	lis r6, 0x7f7f
/* 81495030 | 3C E0 80 81 */	lis r7, 0x8081
/* 81495034 | 38 C6 7F 7F */	addi r6, r6, 0x7f7f
/* 81495038 | 39 40 00 01 */	li r10, 0x1
/* 8149503C | 38 07 80 80 */	subi r0, r7, 0x7f80
/* 81495040 | 3B C0 00 10 */	li r30, 0x10
/* 81495044 | 3B E0 00 02 */	li r31, 0x2
/* 81495048 | 48 00 01 0C */	b .L_81495154
.L_8149504C:
/* 8149504C | 7D 23 F2 14 */	add r9, r3, r30
/* 81495050 | 7F E9 03 A6 */	mtctr r31
.L_81495054:
/* 81495054 | 81 09 00 10 */	lwz r8, 0x10(r9)
/* 81495058 | 7D 07 00 38 */	and r7, r8, r0
/* 8149505C | 7D 14 30 38 */	and r20, r8, r6
/* 81495060 | 54 E7 C9 FE */	srwi r7, r7, 7
/* 81495064 | 1C E7 00 1B */	mulli r7, r7, 0x1b
/* 81495068 | 56 94 08 3C */	slwi r20, r20, 1
/* 8149506C | 7E 87 3A 78 */	xor r7, r20, r7
/* 81495070 | 7C F4 00 38 */	and r20, r7, r0
/* 81495074 | 56 94 C9 FE */	srwi r20, r20, 7
/* 81495078 | 7C F5 30 38 */	and r21, r7, r6
/* 8149507C | 1E 94 00 1B */	mulli r20, r20, 0x1b
/* 81495080 | 56 B5 08 3C */	slwi r21, r21, 1
/* 81495084 | 7E B6 A2 78 */	xor r22, r21, r20
/* 81495088 | 7E D4 00 38 */	and r20, r22, r0
/* 8149508C | 56 94 C9 FE */	srwi r20, r20, 7
/* 81495090 | 7E D5 30 38 */	and r21, r22, r6
/* 81495094 | 1E 94 00 1B */	mulli r20, r20, 0x1b
/* 81495098 | 56 B5 08 3C */	slwi r21, r21, 1
/* 8149509C | 7D 15 AA 78 */	xor r21, r8, r21
/* 814950A0 | 7E B5 A2 78 */	xor r21, r21, r20
/* 814950A4 | 56 B4 40 3E */	rotlwi r20, r21, 8
/* 814950A8 | 7E D4 A2 78 */	xor r20, r22, r20
/* 814950AC | 7E B5 A2 78 */	xor r21, r21, r20
/* 814950B0 | 56 B4 40 3E */	rotlwi r20, r21, 8
/* 814950B4 | 7C E7 A2 78 */	xor r7, r7, r20
/* 814950B8 | 7E B5 3A 78 */	xor r21, r21, r7
/* 814950BC | 56 A7 40 3E */	rotlwi r7, r21, 8
/* 814950C0 | 7D 07 3A 78 */	xor r7, r8, r7
/* 814950C4 | 7E B5 3A 78 */	xor r21, r21, r7
/* 814950C8 | 92 A9 00 10 */	stw r21, 0x10(r9)
/* 814950CC | 81 09 00 14 */	lwz r8, 0x14(r9)
/* 814950D0 | 7D 07 00 38 */	and r7, r8, r0
/* 814950D4 | 7D 14 30 38 */	and r20, r8, r6
/* 814950D8 | 54 E7 C9 FE */	srwi r7, r7, 7
/* 814950DC | 1C E7 00 1B */	mulli r7, r7, 0x1b
/* 814950E0 | 56 94 08 3C */	slwi r20, r20, 1
/* 814950E4 | 7E 87 3A 78 */	xor r7, r20, r7
/* 814950E8 | 7C F4 00 38 */	and r20, r7, r0
/* 814950EC | 56 94 C9 FE */	srwi r20, r20, 7
/* 814950F0 | 7C F5 30 38 */	and r21, r7, r6
/* 814950F4 | 1E 94 00 1B */	mulli r20, r20, 0x1b
/* 814950F8 | 56 B5 08 3C */	slwi r21, r21, 1
/* 814950FC | 7E B6 A2 78 */	xor r22, r21, r20
/* 81495100 | 7E D4 00 38 */	and r20, r22, r0
/* 81495104 | 56 94 C9 FE */	srwi r20, r20, 7
/* 81495108 | 7E D5 30 38 */	and r21, r22, r6
/* 8149510C | 56 B5 08 3C */	slwi r21, r21, 1
/* 81495110 | 1E 94 00 1B */	mulli r20, r20, 0x1b
/* 81495114 | 7D 15 AA 78 */	xor r21, r8, r21
/* 81495118 | 7E B5 A2 78 */	xor r21, r21, r20
/* 8149511C | 56 B4 40 3E */	rotlwi r20, r21, 8
/* 81495120 | 7E D4 A2 78 */	xor r20, r22, r20
/* 81495124 | 7E B5 A2 78 */	xor r21, r21, r20
/* 81495128 | 56 B4 40 3E */	rotlwi r20, r21, 8
/* 8149512C | 7C E7 A2 78 */	xor r7, r7, r20
/* 81495130 | 7E B5 3A 78 */	xor r21, r21, r7
/* 81495134 | 56 A7 40 3E */	rotlwi r7, r21, 8
/* 81495138 | 7D 07 3A 78 */	xor r7, r8, r7
/* 8149513C | 7E B5 3A 78 */	xor r21, r21, r7
/* 81495140 | 92 A9 00 14 */	stw r21, 0x14(r9)
/* 81495144 | 39 29 00 08 */	addi r9, r9, 0x8
/* 81495148 | 42 00 FF 0C */	bdnz .L_81495054
/* 8149514C | 3B DE 00 10 */	addi r30, r30, 0x10
/* 81495150 | 39 4A 00 01 */	addi r10, r10, 0x1
.L_81495154:
/* 81495154 | 81 03 01 00 */	lwz r8, 0x100(r3)
/* 81495158 | 55 07 46 3E */	srwi r7, r8, 24
/* 8149515C | 7C 0A 38 40 */	cmplw r10, r7
/* 81495160 | 41 80 FE EC */	blt .L_8149504C
/* 81495164 | 55 00 02 4E */	rlwinm r0, r8, 0, 9, 7
/* 81495168 | 90 03 01 00 */	stw r0, 0x100(r3)
.L_8149516C:
/* 8149516C | 80 E5 00 00 */	lwz r7, 0x0(r5)
/* 81495170 | 3D 20 81 62 */	lis r9, AESiDecryptTable@ha
/* 81495174 | 80 CB 00 00 */	lwz r6, 0x0(r11)
/* 81495178 | 39 29 88 30 */	addi r9, r9, AESiDecryptTable@l
/* 8149517C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 81495180 | 80 0B 00 04 */	lwz r0, 0x4(r11)
/* 81495184 | 7C E6 32 78 */	xor r6, r7, r6
/* 81495188 | 81 45 00 08 */	lwz r10, 0x8(r5)
/* 8149518C | 7C 60 02 78 */	xor r0, r3, r0
/* 81495190 | 81 0B 00 08 */	lwz r8, 0x8(r11)
/* 81495194 | 80 6B 00 0C */	lwz r3, 0xc(r11)
/* 81495198 | 39 6B FF F0 */	subi r11, r11, 0x10
/* 8149519C | 80 E5 00 0C */	lwz r7, 0xc(r5)
/* 814951A0 | 7D 45 42 78 */	xor r5, r10, r8
/* 814951A4 | 7C E7 1A 78 */	xor r7, r7, r3
/* 814951A8 | 48 00 01 08 */	b .L_814952B0
.L_814951AC:
/* 814951AC | 54 CA 55 BA */	rlwinm r10, r6, 10, 22, 29
/* 814951B0 | 54 17 55 BA */	rlwinm r23, r0, 10, 22, 29
/* 814951B4 | 54 D8 95 BA */	rlwinm r24, r6, 18, 22, 29
/* 814951B8 | 54 FC 55 BA */	rlwinm r28, r7, 10, 22, 29
/* 814951BC | 7E C9 50 2E */	lwzx r22, r9, r10
/* 814951C0 | 54 F5 95 BA */	rlwinm r21, r7, 18, 22, 29
/* 814951C4 | 54 BA 55 BA */	rlwinm r26, r5, 10, 22, 29
/* 814951C8 | 54 1F 95 BA */	rlwinm r31, r0, 18, 22, 29
/* 814951CC | 54 BB 95 BA */	rlwinm r27, r5, 18, 22, 29
/* 814951D0 | 54 A8 D5 BA */	rlwinm r8, r5, 26, 22, 29
/* 814951D4 | 7E E9 B8 2E */	lwzx r23, r9, r23
/* 814951D8 | 54 D9 D5 BA */	rlwinm r25, r6, 26, 22, 29
/* 814951DC | 7F 09 C0 2E */	lwzx r24, r9, r24
/* 814951E0 | 54 E3 D5 BA */	rlwinm r3, r7, 26, 22, 29
/* 814951E4 | 7F 49 D0 2E */	lwzx r26, r9, r26
/* 814951E8 | 54 1D D5 BA */	rlwinm r29, r0, 26, 22, 29
/* 814951EC | 54 0A 15 BA */	clrlslwi r10, r0, 24, 2
/* 814951F0 | 54 E0 15 BA */	clrlslwi r0, r7, 24, 2
/* 814951F4 | 56 C7 C0 3E */	rotrwi r7, r22, 8
/* 814951F8 | 7F E9 F8 2E */	lwzx r31, r9, r31
/* 814951FC | 7E C9 18 2E */	lwzx r22, r9, r3
/* 81495200 | 54 A5 15 BA */	clrlslwi r5, r5, 24, 2
/* 81495204 | 7F 69 D8 2E */	lwzx r27, r9, r27
/* 81495208 | 56 F7 C0 3E */	rotrwi r23, r23, 8
/* 8149520C | 7E 89 40 2E */	lwzx r20, r9, r8
/* 81495210 | 57 18 80 3E */	rotlwi r24, r24, 16
/* 81495214 | 7F 89 E0 2E */	lwzx r28, r9, r28
/* 81495218 | 54 DE 15 BA */	clrlslwi r30, r6, 24, 2
/* 8149521C | 7E A9 A8 2E */	lwzx r21, r9, r21
/* 81495220 | 57 5A C0 3E */	rotrwi r26, r26, 8
/* 81495224 | 57 88 C0 3E */	rotrwi r8, r28, 8
/* 81495228 | 7F 89 E8 2E */	lwzx r28, r9, r29
/* 8149522C | 56 A6 80 3E */	rotlwi r6, r21, 16
/* 81495230 | 57 63 80 3E */	rotlwi r3, r27, 16
/* 81495234 | 7F 29 C8 2E */	lwzx r25, r9, r25
/* 81495238 | 7E FD C2 78 */	xor r29, r23, r24
/* 8149523C | 7C F5 32 78 */	xor r21, r7, r6
/* 81495240 | 57 FF 80 3E */	rotlwi r31, r31, 16
/* 81495244 | 56 94 40 3E */	rotlwi r20, r20, 8
/* 81495248 | 57 3B 40 3E */	rotlwi r27, r25, 8
/* 8149524C | 7F 47 FA 78 */	xor r7, r26, r31
/* 81495250 | 7D 03 1A 78 */	xor r3, r8, r3
/* 81495254 | 7F 49 50 2E */	lwzx r26, r9, r10
/* 81495258 | 7E 98 AA 78 */	xor r24, r20, r21
/* 8149525C | 7F 29 00 2E */	lwzx r25, r9, r0
/* 81495260 | 7F 6A 3A 78 */	xor r10, r27, r7
/* 81495264 | 57 86 40 3E */	rotlwi r6, r28, 8
/* 81495268 | 56 D6 40 3E */	rotlwi r22, r22, 8
/* 8149526C | 7C C7 1A 78 */	xor r7, r6, r3
/* 81495270 | 7E E9 28 2E */	lwzx r23, r9, r5
/* 81495274 | 7E C5 EA 78 */	xor r5, r22, r29
/* 81495278 | 7D 09 F0 2E */	lwzx r8, r9, r30
/* 8149527C | 7E F5 2A 78 */	xor r21, r23, r5
/* 81495280 | 80 0B 00 04 */	lwz r0, 0x4(r11)
/* 81495284 | 80 CB 00 00 */	lwz r6, 0x0(r11)
/* 81495288 | 7F 54 C2 78 */	xor r20, r26, r24
/* 8149528C | 80 AB 00 08 */	lwz r5, 0x8(r11)
/* 81495290 | 7F 2A 52 78 */	xor r10, r25, r10
/* 81495294 | 80 6B 00 0C */	lwz r3, 0xc(r11)
/* 81495298 | 7D 07 3A 78 */	xor r7, r8, r7
/* 8149529C | 7E 86 32 78 */	xor r6, r20, r6
/* 814952A0 | 7E A0 02 78 */	xor r0, r21, r0
/* 814952A4 | 7D 45 2A 78 */	xor r5, r10, r5
/* 814952A8 | 7C E7 1A 78 */	xor r7, r7, r3
/* 814952AC | 39 6B FF F0 */	subi r11, r11, 0x10
.L_814952B0:
/* 814952B0 | 35 8C FF FF */	subic. r12, r12, 0x1
/* 814952B4 | 40 82 FE F8 */	bne .L_814951AC
/* 814952B8 | 3C 60 81 62 */	lis r3, AESiInvSubShiftTable@ha
/* 814952BC | 54 C8 46 3E */	srwi r8, r6, 24
/* 814952C0 | 38 63 83 10 */	addi r3, r3, AESiInvSubShiftTable@l
/* 814952C4 | 54 AA C6 3E */	extrwi r10, r5, 8, 16
/* 814952C8 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 814952CC | 54 E9 86 3E */	extrwi r9, r7, 8, 8
/* 814952D0 | 7D 83 50 AE */	lbzx r12, r3, r10
/* 814952D4 | 54 1C 06 3E */	clrlwi r28, r0, 24
/* 814952D8 | 7D 43 48 AE */	lbzx r10, r3, r9
/* 814952DC | 55 08 C0 0E */	slwi r8, r8, 24
/* 814952E0 | 55 9B 40 2E */	slwi r27, r12, 8
/* 814952E4 | 7F 83 E0 AE */	lbzx r28, r3, r28
/* 814952E8 | 81 2B 00 00 */	lwz r9, 0x0(r11)
/* 814952EC | 55 4C 80 1E */	slwi r12, r10, 16
/* 814952F0 | 7F 9B DA 78 */	xor r27, r28, r27
/* 814952F4 | 54 FE 06 3E */	clrlwi r30, r7, 24
/* 814952F8 | 7D 2A 42 78 */	xor r10, r9, r8
/* 814952FC | 54 08 46 3E */	srwi r8, r0, 24
/* 81495300 | 7D 8C 52 78 */	xor r12, r12, r10
/* 81495304 | 54 E9 C6 3E */	extrwi r9, r7, 8, 16
/* 81495308 | 7F 6C 62 78 */	xor r12, r27, r12
/* 8149530C | 54 BB 06 3E */	clrlwi r27, r5, 24
/* 81495310 | 7F 83 48 AE */	lbzx r28, r3, r9
/* 81495314 | 54 CA 86 3E */	extrwi r10, r6, 8, 8
/* 81495318 | 91 84 00 00 */	stw r12, 0x0(r4)
/* 8149531C | 54 E7 46 3E */	srwi r7, r7, 24
/* 81495320 | 7D 83 50 AE */	lbzx r12, r3, r10
/* 81495324 | 57 9C 40 2E */	slwi r28, r28, 8
/* 81495328 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 8149532C | 7F 63 D8 AE */	lbzx r27, r3, r27
/* 81495330 | 55 9D 80 1E */	slwi r29, r12, 16
/* 81495334 | 55 09 C0 0E */	slwi r9, r8, 24
/* 81495338 | 54 A8 46 3E */	srwi r8, r5, 24
/* 8149533C | 81 4B 00 04 */	lwz r10, 0x4(r11)
/* 81495340 | 7F 7C E2 78 */	xor r28, r27, r28
/* 81495344 | 7D 03 40 AE */	lbzx r8, r3, r8
/* 81495348 | 54 A5 86 3E */	extrwi r5, r5, 8, 8
/* 8149534C | 7D 5F 4A 78 */	xor r31, r10, r9
/* 81495350 | 54 09 86 3E */	extrwi r9, r0, 8, 8
/* 81495354 | 7D 83 48 AE */	lbzx r12, r3, r9
/* 81495358 | 54 CA C6 3E */	extrwi r10, r6, 8, 16
/* 8149535C | 7F BF FA 78 */	xor r31, r29, r31
/* 81495360 | 55 09 C0 0E */	slwi r9, r8, 24
/* 81495364 | 7F 88 FA 78 */	xor r8, r28, r31
/* 81495368 | 7D 43 50 AE */	lbzx r10, r3, r10
/* 8149536C | 91 04 00 04 */	stw r8, 0x4(r4)
/* 81495370 | 54 08 C6 3E */	extrwi r8, r0, 8, 16
/* 81495374 | 7C 03 38 AE */	lbzx r0, r3, r7
/* 81495378 | 54 C7 06 3E */	clrlwi r7, r6, 24
/* 8149537C | 7F E3 F0 AE */	lbzx r31, r3, r30
/* 81495380 | 55 5E 40 2E */	slwi r30, r10, 8
/* 81495384 | 7C A3 28 AE */	lbzx r5, r3, r5
/* 81495388 | 55 8C 80 1E */	slwi r12, r12, 16
/* 8149538C | 81 4B 00 08 */	lwz r10, 0x8(r11)
/* 81495390 | 54 00 C0 0E */	slwi r0, r0, 24
/* 81495394 | 7C C3 40 AE */	lbzx r6, r3, r8
/* 81495398 | 54 A5 80 1E */	slwi r5, r5, 16
/* 8149539C | 7D 48 4A 78 */	xor r8, r10, r9
/* 814953A0 | 7C E3 38 AE */	lbzx r7, r3, r7
/* 814953A4 | 54 C3 40 2E */	slwi r3, r6, 8
/* 814953A8 | 7F E9 F2 78 */	xor r9, r31, r30
/* 814953AC | 7D 88 42 78 */	xor r8, r12, r8
/* 814953B0 | 7D 28 42 78 */	xor r8, r9, r8
/* 814953B4 | 7C E6 1A 78 */	xor r6, r7, r3
/* 814953B8 | 91 04 00 08 */	stw r8, 0x8(r4)
/* 814953BC | 80 6B 00 0C */	lwz r3, 0xc(r11)
/* 814953C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814953C4 | 7C 60 02 78 */	xor r0, r3, r0
/* 814953C8 | 7C A0 02 78 */	xor r0, r5, r0
/* 814953CC | 7C C0 02 78 */	xor r0, r6, r0
/* 814953D0 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814953D4 | 48 16 41 1D */	bl _restgpr_20
/* 814953D8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814953DC | 7C 08 03 A6 */	mtlr r0
/* 814953E0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814953E4 | 4E 80 00 20 */	blr
.endfn AESiDecryptBlock

# .text:0x664 | 0x814953E8 | size: 0x1B0
.fn NETAESCreateEx, global
/* 814953E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814953EC | 7C 08 02 A6 */	mflr r0
/* 814953F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814953F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814953F8 | 48 16 40 C9 */	bl _savegpr_27
/* 814953FC | 28 05 00 10 */	cmplwi r5, 0x10
/* 81495400 | 7C 7D 1B 78 */	mr r29, r3
/* 81495404 | 7C 9B 23 78 */	mr r27, r4
/* 81495408 | 7C BC 2B 78 */	mr r28, r5
/* 8149540C | 3B C0 00 00 */	li r30, 0x0
/* 81495410 | 41 82 00 28 */	beq .L_81495438
/* 81495414 | 28 05 00 18 */	cmplwi r5, 0x18
/* 81495418 | 41 82 00 20 */	beq .L_81495438
/* 8149541C | 28 05 00 20 */	cmplwi r5, 0x20
/* 81495420 | 41 82 00 18 */	beq .L_81495438
/* 81495424 | 3C 60 81 67 */	lis r3, lbl_8166CF90@ha
/* 81495428 | 38 63 CF 90 */	addi r3, r3, lbl_8166CF90@l
/* 8149542C | 4C C6 31 82 */	crclr cr1eq
/* 81495430 | 48 09 92 71 */	bl OSReport
/* 81495434 | 48 00 01 48 */	b .L_8149557C
.L_81495438:
/* 81495438 | 54 A4 F1 7E */	extrwi r4, r5, 27, 3
/* 8149543C | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 81495440 | 38 A4 00 06 */	addi r5, r4, 0x6
/* 81495444 | 90 E3 01 04 */	stw r7, 0x104(r3)
/* 81495448 | 64 00 00 80 */	oris r0, r0, 0x80
/* 8149544C | 7C C4 33 78 */	mr r4, r6
/* 81495450 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
/* 81495454 | 38 A0 00 10 */	li r5, 0x10
/* 81495458 | 90 03 01 00 */	stw r0, 0x100(r3)
/* 8149545C | 7F A3 EB 78 */	mr r3, r29
/* 81495460 | 4B E9 AD D1 */	bl memcpy
/* 81495464 | 3B FD 00 10 */	addi r31, r29, 0x10
/* 81495468 | 7F 64 DB 78 */	mr r4, r27
/* 8149546C | 7F E3 FB 78 */	mr r3, r31
/* 81495470 | 7F 85 E3 78 */	mr r5, r28
/* 81495474 | 57 9E F0 BE */	srwi r30, r28, 2
/* 81495478 | 4B E9 AD B9 */	bl memcpy
/* 8149547C | 57 C0 10 3A */	slwi r0, r30, 2
/* 81495480 | 3D 20 81 62 */	lis r9, AESiSubShiftTable@ha
/* 81495484 | 7C 9F 02 14 */	add r4, r31, r0
/* 81495488 | 3C 60 81 62 */	lis r3, AESiRoundKeyRcon0@ha
/* 8149548C | 81 04 FF FC */	lwz r8, -0x4(r4)
/* 81495490 | 7F C5 F3 78 */	mr r5, r30
/* 81495494 | 39 29 82 10 */	addi r9, r9, AESiSubShiftTable@l
/* 81495498 | 38 63 84 10 */	addi r3, r3, AESiRoundKeyRcon0@l
/* 8149549C | 48 00 00 C4 */	b .L_81495560
.L_814954A0:
/* 814954A0 | 7D 45 F3 96 */	divwu r10, r5, r30
/* 814954A4 | 7C 0A F1 D6 */	mullw r0, r10, r30
/* 814954A8 | 7C 00 28 51 */	subf. r0, r0, r5
/* 814954AC | 40 82 00 50 */	bne .L_814954FC
/* 814954B0 | 55 07 06 3E */	clrlwi r7, r8, 24
/* 814954B4 | 55 00 C6 3E */	extrwi r0, r8, 8, 16
/* 814954B8 | 55 0B 46 3E */	srwi r11, r8, 24
/* 814954BC | 55 06 86 3E */	extrwi r6, r8, 8, 8
/* 814954C0 | 7D 09 30 AE */	lbzx r8, r9, r6
/* 814954C4 | 7C C3 52 14 */	add r6, r3, r10
/* 814954C8 | 7C E9 38 AE */	lbzx r7, r9, r7
/* 814954CC | 55 0A C0 0E */	slwi r10, r8, 24
/* 814954D0 | 7D 69 58 AE */	lbzx r11, r9, r11
/* 814954D4 | 7C 09 00 AE */	lbzx r0, r9, r0
/* 814954D8 | 54 E8 40 2E */	slwi r8, r7, 8
/* 814954DC | 7D 6A 52 78 */	xor r10, r11, r10
/* 814954E0 | 54 07 80 1E */	slwi r7, r0, 16
/* 814954E4 | 88 06 FF FF */	lbz r0, -0x1(r6)
/* 814954E8 | 7D 06 3A 78 */	xor r6, r8, r7
/* 814954EC | 54 00 C0 0E */	slwi r0, r0, 24
/* 814954F0 | 7D 48 32 78 */	xor r8, r10, r6
/* 814954F4 | 7D 08 02 78 */	xor r8, r8, r0
/* 814954F8 | 48 00 00 4C */	b .L_81495544
.L_814954FC:
/* 814954FC | 28 1E 00 06 */	cmplwi r30, 0x6
/* 81495500 | 40 81 00 44 */	ble .L_81495544
/* 81495504 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81495508 | 40 82 00 3C */	bne .L_81495544
/* 8149550C | 55 00 C6 3E */	extrwi r0, r8, 8, 16
/* 81495510 | 55 07 86 3E */	extrwi r7, r8, 8, 8
/* 81495514 | 55 06 06 3E */	clrlwi r6, r8, 24
/* 81495518 | 7C 09 00 AE */	lbzx r0, r9, r0
/* 8149551C | 55 08 46 3E */	srwi r8, r8, 24
/* 81495520 | 7C E9 38 AE */	lbzx r7, r9, r7
/* 81495524 | 7D 09 40 AE */	lbzx r8, r9, r8
/* 81495528 | 54 00 40 2E */	slwi r0, r0, 8
/* 8149552C | 7C C9 30 AE */	lbzx r6, r9, r6
/* 81495530 | 54 E7 80 1E */	slwi r7, r7, 16
/* 81495534 | 55 08 C0 0E */	slwi r8, r8, 24
/* 81495538 | 7C C0 02 78 */	xor r0, r6, r0
/* 8149553C | 7C E0 02 78 */	xor r0, r7, r0
/* 81495540 | 7D 08 02 78 */	xor r8, r8, r0
.L_81495544:
/* 81495544 | 7C 1E 28 50 */	subf r0, r30, r5
/* 81495548 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8149554C | 54 00 10 3A */	slwi r0, r0, 2
/* 81495550 | 7C 1F 00 2E */	lwzx r0, r31, r0
/* 81495554 | 7D 08 02 78 */	xor r8, r8, r0
/* 81495558 | 91 04 00 00 */	stw r8, 0x0(r4)
/* 8149555C | 38 84 00 04 */	addi r4, r4, 0x4
.L_81495560:
/* 81495560 | 80 1D 01 00 */	lwz r0, 0x100(r29)
/* 81495564 | 54 06 46 3E */	srwi r6, r0, 24
/* 81495568 | 38 06 00 01 */	addi r0, r6, 0x1
/* 8149556C | 54 00 10 3A */	slwi r0, r0, 2
/* 81495570 | 7C 05 00 40 */	cmplw r5, r0
/* 81495574 | 41 80 FF 2C */	blt .L_814954A0
/* 81495578 | 3B C0 00 01 */	li r30, 0x1
.L_8149557C:
/* 8149557C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81495580 | 7F C3 F3 78 */	mr r3, r30
/* 81495584 | 48 16 3F 89 */	bl _restgpr_27
/* 81495588 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149558C | 7C 08 03 A6 */	mtlr r0
/* 81495590 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495594 | 4E 80 00 20 */	blr
.endfn NETAESCreateEx

# .text:0x814 | 0x81495598 | size: 0x8
.fn NETAESCreate, global
/* 81495598 | 38 E2 8C 40 */	li r7, lbl_81695040@sda21
/* 8149559C | 4B FF FE 4C */	b NETAESCreateEx
.endfn NETAESCreate

# .text:0x81C | 0x814955A0 | size: 0x4
.fn NETAESDelete, global
/* 814955A0 | 4E 80 00 20 */	blr
.endfn NETAESDelete

# .text:0x820 | 0x814955A4 | size: 0xB8
.fn NETAESEncrypt, global
/* 814955A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814955A8 | 7C 08 02 A6 */	mflr r0
/* 814955AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814955B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814955B4 | 48 16 3F 09 */	bl _savegpr_26
/* 814955B8 | 80 E3 01 04 */	lwz r7, 0x104(r3)
/* 814955BC | 7C 7A 1B 78 */	mr r26, r3
/* 814955C0 | 7C 9B 23 78 */	mr r27, r4
/* 814955C4 | 7C BC 2B 78 */	mr r28, r5
/* 814955C8 | 83 C7 00 00 */	lwz r30, 0x0(r7)
/* 814955CC | 7C DD 33 78 */	mr r29, r6
/* 814955D0 | 3B E0 00 00 */	li r31, 0x0
/* 814955D4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814955D8 | 40 82 00 18 */	bne .L_814955F0
/* 814955DC | 3C 60 81 67 */	lis r3, lbl_8166CFD8@ha
/* 814955E0 | 38 63 CF D8 */	addi r3, r3, lbl_8166CFD8@l
/* 814955E4 | 4C C6 31 82 */	crclr cr1eq
/* 814955E8 | 48 09 90 B9 */	bl OSReport
/* 814955EC | 48 00 00 54 */	b .L_81495640
.L_814955F0:
/* 814955F0 | 54 C0 07 3F */	clrlwi. r0, r6, 28
/* 814955F4 | 41 82 00 40 */	beq .L_81495634
/* 814955F8 | 3C 60 81 67 */	lis r3, lbl_8166D000@ha
/* 814955FC | 38 63 D0 00 */	addi r3, r3, lbl_8166D000@l
/* 81495600 | 4C C6 31 82 */	crclr cr1eq
/* 81495604 | 48 09 90 9D */	bl OSReport
/* 81495608 | 48 00 00 38 */	b .L_81495640
/* 8149560C | 48 00 00 28 */	b .L_81495634
.L_81495610:
/* 81495610 | 7F CC F3 78 */	mr r12, r30
/* 81495614 | 7F 43 D3 78 */	mr r3, r26
/* 81495618 | 7F 64 DB 78 */	mr r4, r27
/* 8149561C | 7F 85 E3 78 */	mr r5, r28
/* 81495620 | 7D 89 03 A6 */	mtctr r12
/* 81495624 | 4E 80 04 21 */	bctrl
/* 81495628 | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 8149562C | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 81495630 | 3B BD FF F0 */	subi r29, r29, 0x10
.L_81495634:
/* 81495634 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81495638 | 40 82 FF D8 */	bne .L_81495610
/* 8149563C | 3B E0 00 01 */	li r31, 0x1
.L_81495640:
/* 81495640 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81495644 | 7F E3 FB 78 */	mr r3, r31
/* 81495648 | 48 16 3E C1 */	bl _restgpr_26
/* 8149564C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495650 | 7C 08 03 A6 */	mtlr r0
/* 81495654 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495658 | 4E 80 00 20 */	blr
.endfn NETAESEncrypt

# .text:0x8D8 | 0x8149565C | size: 0xB8
.fn NETAESDecrypt, global
/* 8149565C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81495660 | 7C 08 02 A6 */	mflr r0
/* 81495664 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81495668 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149566C | 48 16 3E 51 */	bl _savegpr_26
/* 81495670 | 80 E3 01 04 */	lwz r7, 0x104(r3)
/* 81495674 | 7C 7A 1B 78 */	mr r26, r3
/* 81495678 | 7C 9B 23 78 */	mr r27, r4
/* 8149567C | 7C BC 2B 78 */	mr r28, r5
/* 81495680 | 83 C7 00 04 */	lwz r30, 0x4(r7)
/* 81495684 | 7C DD 33 78 */	mr r29, r6
/* 81495688 | 3B E0 00 00 */	li r31, 0x0
/* 8149568C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81495690 | 40 82 00 18 */	bne .L_814956A8
/* 81495694 | 3C 60 81 67 */	lis r3, lbl_8166D030@ha
/* 81495698 | 38 63 D0 30 */	addi r3, r3, lbl_8166D030@l
/* 8149569C | 4C C6 31 82 */	crclr cr1eq
/* 814956A0 | 48 09 90 01 */	bl OSReport
/* 814956A4 | 48 00 00 54 */	b .L_814956F8
.L_814956A8:
/* 814956A8 | 54 C0 07 3F */	clrlwi. r0, r6, 28
/* 814956AC | 41 82 00 40 */	beq .L_814956EC
/* 814956B0 | 3C 60 81 67 */	lis r3, lbl_8166D000@ha
/* 814956B4 | 38 63 D0 00 */	addi r3, r3, lbl_8166D000@l
/* 814956B8 | 4C C6 31 82 */	crclr cr1eq
/* 814956BC | 48 09 8F E5 */	bl OSReport
/* 814956C0 | 48 00 00 38 */	b .L_814956F8
/* 814956C4 | 48 00 00 28 */	b .L_814956EC
.L_814956C8:
/* 814956C8 | 7F CC F3 78 */	mr r12, r30
/* 814956CC | 7F 43 D3 78 */	mr r3, r26
/* 814956D0 | 7F 64 DB 78 */	mr r4, r27
/* 814956D4 | 7F 85 E3 78 */	mr r5, r28
/* 814956D8 | 7D 89 03 A6 */	mtctr r12
/* 814956DC | 4E 80 04 21 */	bctrl
/* 814956E0 | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 814956E4 | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 814956E8 | 3B BD FF F0 */	subi r29, r29, 0x10
.L_814956EC:
/* 814956EC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814956F0 | 40 82 FF D8 */	bne .L_814956C8
/* 814956F4 | 3B E0 00 01 */	li r31, 0x1
.L_814956F8:
/* 814956F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814956FC | 7F E3 FB 78 */	mr r3, r31
/* 81495700 | 48 16 3E 09 */	bl _restgpr_26
/* 81495704 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495708 | 7C 08 03 A6 */	mtlr r0
/* 8149570C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495710 | 4E 80 00 20 */	blr
.endfn NETAESDecrypt

# .text:0x990 | 0x81495714 | size: 0x9C
.fn NETiAESEncryptoBlock, local
/* 81495714 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81495718 | 7C 08 02 A6 */	mflr r0
/* 8149571C | 80 C5 00 00 */	lwz r6, 0x0(r5)
/* 81495720 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81495724 | 81 05 00 04 */	lwz r8, 0x4(r5)
/* 81495728 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149572C | 7C 7F 1B 78 */	mr r31, r3
/* 81495730 | 80 E5 00 08 */	lwz r7, 0x8(r5)
/* 81495734 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81495738 | 7C 9E 23 78 */	mr r30, r4
/* 8149573C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81495740 | 7C C0 02 78 */	xor r0, r6, r0
/* 81495744 | 80 C5 00 0C */	lwz r6, 0xc(r5)
/* 81495748 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149574C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81495750 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81495754 | 7D 00 02 78 */	xor r0, r8, r0
/* 81495758 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8149575C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81495760 | 7C E0 02 78 */	xor r0, r7, r0
/* 81495764 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81495768 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8149576C | 7C C0 02 78 */	xor r0, r6, r0
/* 81495770 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81495774 | 4B FF F6 11 */	bl AESiEncryptBlock
/* 81495778 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8149577C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81495780 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81495784 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81495788 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8149578C | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81495790 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81495794 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81495798 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149579C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814957A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814957A4 | 7C 08 03 A6 */	mtlr r0
/* 814957A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814957AC | 4E 80 00 20 */	blr
.endfn NETiAESEncryptoBlock

# .text:0xA2C | 0x814957B0 | size: 0x94
.fn NETiAESDecryptoBlock, local
/* 814957B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814957B4 | 7C 08 02 A6 */	mflr r0
/* 814957B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814957BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814957C0 | 48 16 3D 01 */	bl _savegpr_27
/* 814957C4 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 814957C8 | 7C 9B 23 78 */	mr r27, r4
/* 814957CC | 81 05 00 00 */	lwz r8, 0x0(r5)
/* 814957D0 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 814957D4 | 80 E5 00 04 */	lwz r7, 0x4(r5)
/* 814957D8 | 83 A3 00 08 */	lwz r29, 0x8(r3)
/* 814957DC | 80 C5 00 08 */	lwz r6, 0x8(r5)
/* 814957E0 | 83 83 00 0C */	lwz r28, 0xc(r3)
/* 814957E4 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 814957E8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 814957EC | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814957F0 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 814957F4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814957F8 | 4B FF F8 05 */	bl AESiDecryptBlock
/* 814957FC | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81495800 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81495804 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 81495808 | 7C 05 FA 78 */	xor r5, r0, r31
/* 8149580C | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 81495810 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 81495814 | 7C 84 F2 78 */	xor r4, r4, r30
/* 81495818 | 7C 63 EA 78 */	xor r3, r3, r29
/* 8149581C | 90 BB 00 00 */	stw r5, 0x0(r27)
/* 81495820 | 7C 00 E2 78 */	xor r0, r0, r28
/* 81495824 | 90 9B 00 04 */	stw r4, 0x4(r27)
/* 81495828 | 90 7B 00 08 */	stw r3, 0x8(r27)
/* 8149582C | 90 1B 00 0C */	stw r0, 0xc(r27)
/* 81495830 | 48 16 3C DD */	bl _restgpr_27
/* 81495834 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495838 | 7C 08 03 A6 */	mtlr r0
/* 8149583C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495840 | 4E 80 00 20 */	blr
.endfn NETiAESDecryptoBlock

# 0x81618210..0x81618C30 | size: 0xA20
.rodata
.balign 8

# .rodata:0x0 | 0x81618210 | size: 0x100
.obj AESiSubShiftTable, local
	.4byte 0x637C777B
	.4byte 0xF26B6FC5
	.4byte 0x3001672B
	.4byte 0xFED7AB76
	.4byte 0xCA82C97D
	.4byte 0xFA5947F0
	.4byte 0xADD4A2AF
	.4byte 0x9CA472C0
	.4byte 0xB7FD9326
	.4byte 0x363FF7CC
	.4byte 0x34A5E5F1
	.4byte 0x71D83115
	.4byte 0x04C723C3
	.4byte 0x1896059A
	.4byte 0x071280E2
	.4byte 0xEB27B275
	.4byte 0x09832C1A
	.4byte 0x1B6E5AA0
	.4byte 0x523BD6B3
	.4byte 0x29E32F84
	.4byte 0x53D100ED
	.4byte 0x20FCB15B
	.4byte 0x6ACBBE39
	.4byte 0x4A4C58CF
	.4byte 0xD0EFAAFB
	.4byte 0x434D3385
	.4byte 0x45F9027F
	.4byte 0x503C9FA8
	.4byte 0x51A3408F
	.4byte 0x929D38F5
	.4byte 0xBCB6DA21
	.4byte 0x10FFF3D2
	.4byte 0xCD0C13EC
	.4byte 0x5F974417
	.4byte 0xC4A77E3D
	.4byte 0x645D1973
	.4byte 0x60814FDC
	.4byte 0x222A9088
	.4byte 0x46EEB814
	.4byte 0xDE5E0BDB
	.4byte 0xE0323A0A
	.4byte 0x4906245C
	.4byte 0xC2D3AC62
	.4byte 0x9195E479
	.4byte 0xE7C8376D
	.4byte 0x8DD54EA9
	.4byte 0x6C56F4EA
	.4byte 0x657AAE08
	.4byte 0xBA78252E
	.4byte 0x1CA6B4C6
	.4byte 0xE8DD741F
	.4byte 0x4BBD8B8A
	.4byte 0x703EB566
	.4byte 0x4803F60E
	.4byte 0x613557B9
	.4byte 0x86C11D9E
	.4byte 0xE1F89811
	.4byte 0x69D98E94
	.4byte 0x9B1E87E9
	.4byte 0xCE5528DF
	.4byte 0x8CA1890D
	.4byte 0xBFE64268
	.4byte 0x41992D0F
	.4byte 0xB054BB16
.endobj AESiSubShiftTable

# .rodata:0x100 | 0x81618310 | size: 0x100
.obj AESiInvSubShiftTable, local
	.4byte 0x52096AD5
	.4byte 0x3036A538
	.4byte 0xBF40A39E
	.4byte 0x81F3D7FB
	.4byte 0x7CE33982
	.4byte 0x9B2FFF87
	.4byte 0x348E4344
	.4byte 0xC4DEE9CB
	.4byte 0x547B9432
	.4byte 0xA6C2233D
	.4byte 0xEE4C950B
	.4byte 0x42FAC34E
	.4byte 0x082EA166
	.4byte 0x28D924B2
	.4byte 0x765BA249
	.4byte 0x6D8BD125
	.4byte 0x72F8F664
	.4byte 0x86689816
	.4byte 0xD4A45CCC
	.4byte 0x5D65B692
	.4byte 0x6C704850
	.4byte 0xFDEDB9DA
	.4byte 0x5E154657
	.4byte 0xA78D9D84
	.4byte 0x90D8AB00
	.4byte 0x8CBCD30A
	.4byte 0xF7E45805
	.4byte 0xB8B34506
	.4byte 0xD02C1E8F
	.4byte 0xCA3F0F02
	.4byte 0xC1AFBD03
	.4byte 0x01138A6B
	.4byte 0x3A911141
	.4byte 0x4F67DCEA
	.4byte 0x97F2CFCE
	.4byte 0xF0B4E673
	.4byte 0x96AC7422
	.4byte 0xE7AD3585
	.4byte 0xE2F937E8
	.4byte 0x1C75DF6E
	.4byte 0x47F11A71
	.4byte 0x1D29C589
	.4byte 0x6FB7620E
	.4byte 0xAA18BE1B
	.4byte 0xFC563E4B
	.4byte 0xC6D27920
	.4byte 0x9ADBC0FE
	.4byte 0x78CD5AF4
	.4byte 0x1FDDA833
	.4byte 0x8807C731
	.4byte 0xB1121059
	.4byte 0x2780EC5F
	.4byte 0x60517FA9
	.4byte 0x19B54A0D
	.4byte 0x2DE57A9F
	.4byte 0x93C99CEF
	.4byte 0xA0E03B4D
	.4byte 0xAE2AF5B0
	.4byte 0xC8EBBB3C
	.4byte 0x83539961
	.4byte 0x172B047E
	.4byte 0xBA77D626
	.4byte 0xE1691463
	.4byte 0x55210C7D
.endobj AESiInvSubShiftTable

# .rodata:0x200 | 0x81618410 | size: 0x1E
.obj AESiRoundKeyRcon0, local
	.4byte 0x01020408
	.4byte 0x10204080
	.4byte 0x1B366CD8
	.4byte 0xAB4D9A2F
	.4byte 0x5EBC63C6
	.4byte 0x97356AD4
	.4byte 0xB37DFAEF
	.2byte 0xC591
.endobj AESiRoundKeyRcon0

# .rodata:0x21E | 0x8161842E | size: 0x2
.obj gap_07_8161842E_rodata, global
.hidden gap_07_8161842E_rodata
	.2byte 0x0000
.endobj gap_07_8161842E_rodata

# .rodata:0x220 | 0x81618430 | size: 0x400
.obj AESiEncryptTable, local
	.4byte 0x6363A5C6
	.4byte 0x7C7C84F8
	.4byte 0x777799EE
	.4byte 0x7B7B8DF6
	.4byte 0xF2F20DFF
	.4byte 0x6B6BBDD6
	.4byte 0x6F6FB1DE
	.4byte 0xC5C55491
	.4byte 0x30305060
	.4byte 0x01010302
	.4byte 0x6767A9CE
	.4byte 0x2B2B7D56
	.4byte 0xFEFE19E7
	.4byte 0xD7D762B5
	.4byte 0xABABE64D
	.4byte 0x76769AEC
	.4byte 0xCACA458F
	.4byte 0x82829D1F
	.4byte 0xC9C94089
	.4byte 0x7D7D87FA
	.4byte 0xFAFA15EF
	.4byte 0x5959EBB2
	.4byte 0x4747C98E
	.4byte 0xF0F00BFB
	.4byte 0xADADEC41
	.4byte 0xD4D467B3
	.4byte 0xA2A2FD5F
	.4byte 0xAFAFEA45
	.4byte 0x9C9CBF23
	.4byte 0xA4A4F753
	.4byte 0x727296E4
	.4byte 0xC0C05B9B
	.4byte 0xB7B7C275
	.4byte 0xFDFD1CE1
	.4byte 0x9393AE3D
	.4byte 0x26266A4C
	.4byte 0x36365A6C
	.4byte 0x3F3F417E
	.4byte 0xF7F702F5
	.4byte 0xCCCC4F83
	.4byte 0x34345C68
	.4byte 0xA5A5F451
	.4byte 0xE5E534D1
	.4byte 0xF1F108F9
	.4byte 0x717193E2
	.4byte 0xD8D873AB
	.4byte 0x31315362
	.4byte 0x15153F2A
	.4byte 0x04040C08
	.4byte 0xC7C75295
	.4byte 0x23236546
	.4byte 0xC3C35E9D
	.4byte 0x18182830
	.4byte 0x9696A137
	.4byte 0x05050F0A
	.4byte 0x9A9AB52F
	.4byte 0x0707090E
	.4byte 0x12123624
	.4byte 0x80809B1B
	.4byte 0xE2E23DDF
	.4byte 0xEBEB26CD
	.4byte 0x2727694E
	.4byte 0xB2B2CD7F
	.4byte 0x75759FEA
	.4byte 0x09091B12
	.4byte 0x83839E1D
	.4byte 0x2C2C7458
	.4byte 0x1A1A2E34
	.4byte 0x1B1B2D36
	.4byte 0x6E6EB2DC
	.4byte 0x5A5AEEB4
	.4byte 0xA0A0FB5B
	.4byte 0x5252F6A4
	.4byte 0x3B3B4D76
	.4byte 0xD6D661B7
	.4byte 0xB3B3CE7D
	.4byte 0x29297B52
	.4byte 0xE3E33EDD
	.4byte 0x2F2F715E
	.4byte 0x84849713
	.4byte 0x5353F5A6
	.4byte 0xD1D168B9
	.4byte 0x00000000
	.4byte 0xEDED2CC1
	.4byte 0x20206040
	.4byte 0xFCFC1FE3
	.4byte 0xB1B1C879
	.4byte 0x5B5BEDB6
	.4byte 0x6A6ABED4
	.4byte 0xCBCB468D
	.4byte 0xBEBED967
	.4byte 0x39394B72
	.4byte 0x4A4ADE94
	.4byte 0x4C4CD498
	.4byte 0x5858E8B0
	.4byte 0xCFCF4A85
	.4byte 0xD0D06BBB
	.4byte 0xEFEF2AC5
	.4byte 0xAAAAE54F
	.4byte 0xFBFB16ED
	.4byte 0x4343C586
	.4byte 0x4D4DD79A
	.4byte 0x33335566
	.4byte 0x85859411
	.4byte 0x4545CF8A
	.4byte 0xF9F910E9
	.4byte 0x02020604
	.4byte 0x7F7F81FE
	.4byte 0x5050F0A0
	.4byte 0x3C3C4478
	.4byte 0x9F9FBA25
	.4byte 0xA8A8E34B
	.4byte 0x5151F3A2
	.4byte 0xA3A3FE5D
	.4byte 0x4040C080
	.4byte 0x8F8F8A05
	.4byte 0x9292AD3F
	.4byte 0x9D9DBC21
	.4byte 0x38384870
	.4byte 0xF5F504F1
	.4byte 0xBCBCDF63
	.4byte 0xB6B6C177
	.4byte 0xDADA75AF
	.4byte 0x21216342
	.4byte 0x10103020
	.4byte 0xFFFF1AE5
	.4byte 0xF3F30EFD
	.4byte 0xD2D26DBF
	.4byte 0xCDCD4C81
	.4byte 0x0C0C1418
	.4byte 0x13133526
	.4byte 0xECEC2FC3
	.4byte 0x5F5FE1BE
	.4byte 0x9797A235
	.4byte 0x4444CC88
	.4byte 0x1717392E
	.4byte 0xC4C45793
	.4byte 0xA7A7F255
	.4byte 0x7E7E82FC
	.4byte 0x3D3D477A
	.4byte 0x6464ACC8
	.4byte 0x5D5DE7BA
	.4byte 0x19192B32
	.4byte 0x737395E6
	.4byte 0x6060A0C0
	.4byte 0x81819819
	.4byte 0x4F4FD19E
	.4byte 0xDCDC7FA3
	.4byte 0x22226644
	.4byte 0x2A2A7E54
	.4byte 0x9090AB3B
	.4byte 0x8888830B
	.4byte 0x4646CA8C
	.4byte 0xEEEE29C7
	.4byte 0xB8B8D36B
	.4byte 0x14143C28
	.4byte 0xDEDE79A7
	.4byte 0x5E5EE2BC
	.4byte 0x0B0B1D16
	.4byte 0xDBDB76AD
	.4byte 0xE0E03BDB
	.4byte 0x32325664
	.4byte 0x3A3A4E74
	.4byte 0x0A0A1E14
	.4byte 0x4949DB92
	.4byte 0x06060A0C
	.4byte 0x24246C48
	.4byte 0x5C5CE4B8
	.4byte 0xC2C25D9F
	.4byte 0xD3D36EBD
	.4byte 0xACACEF43
	.4byte 0x6262A6C4
	.4byte 0x9191A839
	.4byte 0x9595A431
	.4byte 0xE4E437D3
	.4byte 0x79798BF2
	.4byte 0xE7E732D5
	.4byte 0xC8C8438B
	.4byte 0x3737596E
	.4byte 0x6D6DB7DA
	.4byte 0x8D8D8C01
	.4byte 0xD5D564B1
	.4byte 0x4E4ED29C
	.4byte 0xA9A9E049
	.4byte 0x6C6CB4D8
	.4byte 0x5656FAAC
	.4byte 0xF4F407F3
	.4byte 0xEAEA25CF
	.4byte 0x6565AFCA
	.4byte 0x7A7A8EF4
	.4byte 0xAEAEE947
	.4byte 0x08081810
	.4byte 0xBABAD56F
	.4byte 0x787888F0
	.4byte 0x25256F4A
	.4byte 0x2E2E725C
	.4byte 0x1C1C2438
	.4byte 0xA6A6F157
	.4byte 0xB4B4C773
	.4byte 0xC6C65197
	.4byte 0xE8E823CB
	.4byte 0xDDDD7CA1
	.4byte 0x74749CE8
	.4byte 0x1F1F213E
	.4byte 0x4B4BDD96
	.4byte 0xBDBDDC61
	.4byte 0x8B8B860D
	.4byte 0x8A8A850F
	.4byte 0x707090E0
	.4byte 0x3E3E427C
	.4byte 0xB5B5C471
	.4byte 0x6666AACC
	.4byte 0x4848D890
	.4byte 0x03030506
	.4byte 0xF6F601F7
	.4byte 0x0E0E121C
	.4byte 0x6161A3C2
	.4byte 0x35355F6A
	.4byte 0x5757F9AE
	.4byte 0xB9B9D069
	.4byte 0x86869117
	.4byte 0xC1C15899
	.4byte 0x1D1D273A
	.4byte 0x9E9EB927
	.4byte 0xE1E138D9
	.4byte 0xF8F813EB
	.4byte 0x9898B32B
	.4byte 0x11113322
	.4byte 0x6969BBD2
	.4byte 0xD9D970A9
	.4byte 0x8E8E8907
	.4byte 0x9494A733
	.4byte 0x9B9BB62D
	.4byte 0x1E1E223C
	.4byte 0x87879215
	.4byte 0xE9E920C9
	.4byte 0xCECE4987
	.4byte 0x5555FFAA
	.4byte 0x28287850
	.4byte 0xDFDF7AA5
	.4byte 0x8C8C8F03
	.4byte 0xA1A1F859
	.4byte 0x89898009
	.4byte 0x0D0D171A
	.4byte 0xBFBFDA65
	.4byte 0xE6E631D7
	.4byte 0x4242C684
	.4byte 0x6868B8D0
	.4byte 0x4141C382
	.4byte 0x9999B029
	.4byte 0x2D2D775A
	.4byte 0x0F0F111E
	.4byte 0xB0B0CB7B
	.4byte 0x5454FCA8
	.4byte 0xBBBBD66D
	.4byte 0x16163A2C
.endobj AESiEncryptTable

# .rodata:0x620 | 0x81618830 | size: 0x400
.obj AESiDecryptTable, local
	.4byte 0xF4A75051
	.4byte 0x4165537E
	.4byte 0x17A4C31A
	.4byte 0x275E963A
	.4byte 0xAB6BCB3B
	.4byte 0x9D45F11F
	.4byte 0xFA58ABAC
	.4byte 0xE303934B
	.4byte 0x30FA5520
	.4byte 0x766DF6AD
	.4byte 0xCC769188
	.4byte 0x024C25F5
	.4byte 0xE5D7FC4F
	.4byte 0x2ACBD7C5
	.4byte 0x35448026
	.4byte 0x62A38FB5
	.4byte 0xB15A49DE
	.4byte 0xBA1B6725
	.4byte 0xEA0E9845
	.4byte 0xFEC0E15D
	.4byte 0x2F7502C3
	.4byte 0x4CF01281
	.4byte 0x4697A38D
	.4byte 0xD3F9C66B
	.4byte 0x8F5FE703
	.4byte 0x929C9515
	.4byte 0x6D7AEBBF
	.4byte 0x5259DA95
	.4byte 0xBE832DD4
	.4byte 0x7421D358
	.4byte 0xE0692949
	.4byte 0xC9C8448E
	.4byte 0xC2896A75
	.4byte 0x8E7978F4
	.4byte 0x583E6B99
	.4byte 0xB971DD27
	.4byte 0xE14FB6BE
	.4byte 0x88AD17F0
	.4byte 0x20AC66C9
	.4byte 0xCE3AB47D
	.4byte 0xDF4A1863
	.4byte 0x1A3182E5
	.4byte 0x51336097
	.4byte 0x537F4562
	.4byte 0x6477E0B1
	.4byte 0x6BAE84BB
	.4byte 0x81A01CFE
	.4byte 0x082B94F9
	.4byte 0x48685870
	.4byte 0x45FD198F
	.4byte 0xDE6C8794
	.4byte 0x7BF8B752
	.4byte 0x73D323AB
	.4byte 0x4B02E272
	.4byte 0x1F8F57E3
	.4byte 0x55AB2A66
	.4byte 0xEB2807B2
	.4byte 0xB5C2032F
	.4byte 0xC57B9A86
	.4byte 0x3708A5D3
	.4byte 0x2887F230
	.4byte 0xBFA5B223
	.4byte 0x036ABA02
	.4byte 0x16825CED
	.4byte 0xCF1C2B8A
	.4byte 0x79B492A7
	.4byte 0x07F2F0F3
	.4byte 0x69E2A14E
	.4byte 0xDAF4CD65
	.4byte 0x05BED506
	.4byte 0x34621FD1
	.4byte 0xA6FE8AC4
	.4byte 0x2E539D34
	.4byte 0xF355A0A2
	.4byte 0x8AE13205
	.4byte 0xF6EB75A4
	.4byte 0x83EC390B
	.4byte 0x60EFAA40
	.4byte 0x719F065E
	.4byte 0x6E1051BD
	.4byte 0x218AF93E
	.4byte 0xDD063D96
	.4byte 0x3E05AEDD
	.4byte 0xE6BD464D
	.4byte 0x548DB591
	.4byte 0xC45D0571
	.4byte 0x06D46F04
	.4byte 0x5015FF60
	.4byte 0x98FB2419
	.4byte 0xBDE997D6
	.4byte 0x4043CC89
	.4byte 0xD99E7767
	.4byte 0xE842BDB0
	.4byte 0x898B8807
	.4byte 0x195B38E7
	.4byte 0xC8EEDB79
	.4byte 0x7C0A47A1
	.4byte 0x420FE97C
	.4byte 0x841EC9F8
	.4byte 0x00000000
	.4byte 0x80868309
	.4byte 0x2BED4832
	.4byte 0x1170AC1E
	.4byte 0x5A724E6C
	.4byte 0x0EFFFBFD
	.4byte 0x8538560F
	.4byte 0xAED51E3D
	.4byte 0x2D392736
	.4byte 0x0FD9640A
	.4byte 0x5CA62168
	.4byte 0x5B54D19B
	.4byte 0x362E3A24
	.4byte 0x0A67B10C
	.4byte 0x57E70F93
	.4byte 0xEE96D2B4
	.4byte 0x9B919E1B
	.4byte 0xC0C54F80
	.4byte 0xDC20A261
	.4byte 0x774B695A
	.4byte 0x121A161C
	.4byte 0x93BA0AE2
	.4byte 0xA02AE5C0
	.4byte 0x22E0433C
	.4byte 0x1B171D12
	.4byte 0x090D0B0E
	.4byte 0x8BC7ADF2
	.4byte 0xB6A8B92D
	.4byte 0x1EA9C814
	.4byte 0xF1198557
	.4byte 0x75074CAF
	.4byte 0x99DDBBEE
	.4byte 0x7F60FDA3
	.4byte 0x01269FF7
	.4byte 0x72F5BC5C
	.4byte 0x663BC544
	.4byte 0xFB7E345B
	.4byte 0x4329768B
	.4byte 0x23C6DCCB
	.4byte 0xEDFC68B6
	.4byte 0xE4F163B8
	.4byte 0x31DCCAD7
	.4byte 0x63851042
	.4byte 0x97224013
	.4byte 0xC6112084
	.4byte 0x4A247D85
	.4byte 0xBB3DF8D2
	.4byte 0xF93211AE
	.4byte 0x29A16DC7
	.4byte 0x9E2F4B1D
	.4byte 0xB230F3DC
	.4byte 0x8652EC0D
	.4byte 0xC1E3D077
	.4byte 0xB3166C2B
	.4byte 0x70B999A9
	.4byte 0x9448FA11
	.4byte 0xE9642247
	.4byte 0xFC8CC4A8
	.4byte 0xF03F1AA0
	.4byte 0x7D2CD856
	.4byte 0x3390EF22
	.4byte 0x494EC787
	.4byte 0x38D1C1D9
	.4byte 0xCAA2FE8C
	.4byte 0xD40B3698
	.4byte 0xF581CFA6
	.4byte 0x7ADE28A5
	.4byte 0xB78E26DA
	.4byte 0xADBFA43F
	.4byte 0x3A9DE42C
	.4byte 0x78920D50
	.4byte 0x5FCC9B6A
	.4byte 0x7E466254
	.4byte 0x8D13C2F6
	.4byte 0xD8B8E890
	.4byte 0x39F75E2E
	.4byte 0xC3AFF582
	.4byte 0x5D80BE9F
	.4byte 0xD0937C69
	.4byte 0xD52DA96F
	.4byte 0x2512B3CF
	.4byte 0xAC993BC8
	.4byte 0x187DA710
	.4byte 0x9C636EE8
	.4byte 0x3BBB7BDB
	.4byte 0x267809CD
	.4byte 0x5918F46E
	.4byte 0x9AB701EC
	.4byte 0x4F9AA883
	.4byte 0x956E65E6
	.4byte 0xFFE67EAA
	.4byte 0xBCCF0821
	.4byte 0x15E8E6EF
	.4byte 0xE79BD9BA
	.4byte 0x6F36CE4A
	.4byte 0x9F09D4EA
	.4byte 0xB07CD629
	.4byte 0xA4B2AF31
	.4byte 0x3F23312A
	.4byte 0xA59430C6
	.4byte 0xA266C035
	.4byte 0x4EBC3774
	.4byte 0x82CAA6FC
	.4byte 0x90D0B0E0
	.4byte 0xA7D81533
	.4byte 0x04984AF1
	.4byte 0xECDAF741
	.4byte 0xCD500E7F
	.4byte 0x91F62F17
	.4byte 0x4DD68D76
	.4byte 0xEFB04D43
	.4byte 0xAA4D54CC
	.4byte 0x9604DFE4
	.4byte 0xD1B5E39E
	.4byte 0x6A881B4C
	.4byte 0x2C1FB8C1
	.4byte 0x65517F46
	.4byte 0x5EEA049D
	.4byte 0x8C355D01
	.4byte 0x877473FA
	.4byte 0x0B412EFB
	.4byte 0x671D5AB3
	.4byte 0xDBD25292
	.4byte 0x105633E9
	.4byte 0xD647136D
	.4byte 0xD7618C9A
	.4byte 0xA10C7A37
	.4byte 0xF8148E59
	.4byte 0x133C89EB
	.4byte 0xA927EECE
	.4byte 0x61C935B7
	.4byte 0x1CE5EDE1
	.4byte 0x47B13C7A
	.4byte 0xD2DF599C
	.4byte 0xF2733F55
	.4byte 0x14CE7918
	.4byte 0xC737BF73
	.4byte 0xF7CDEA53
	.4byte 0xFDAA5B5F
	.4byte 0x3D6F14DF
	.4byte 0x44DB8678
	.4byte 0xAFF381CA
	.4byte 0x68C43EB9
	.4byte 0x24342C38
	.4byte 0xA3405FC2
	.4byte 0x1DC37216
	.4byte 0xE2250CBC
	.4byte 0x3C498B28
	.4byte 0x0D9541FF
	.4byte 0xA8017139
	.4byte 0x0CB3DE08
	.4byte 0xB4E49CD8
	.4byte 0x56C19064
	.4byte 0xCB84617B
	.4byte 0x32B670D5
	.4byte 0x6C5C7448
	.4byte 0xB85742D0
.endobj AESiDecryptTable

# 0x8166CF90..0x8166D058 | size: 0xC8
.data
.balign 8

# .data:0x0 | 0x8166CF90 | size: 0x48
.obj lbl_8166CF90, global
	.4byte 0x4E455441
	.4byte 0x45534372
	.4byte 0x65617465
	.4byte 0x45782829
	.4byte 0x20666169
	.4byte 0x6C656421
	.4byte 0x20286B65
	.4byte 0x792D6C65
	.4byte 0x6E677468
	.4byte 0x20697320
	.4byte 0x616C6C6F
	.4byte 0x77656420
	.4byte 0x6F6E6C79
	.4byte 0x2031362C
	.4byte 0x2032302C
	.4byte 0x20323420
	.4byte 0x42595445
	.4byte 0x73290000
.endobj lbl_8166CF90

# .data:0x48 | 0x8166CFD8 | size: 0x28
.obj lbl_8166CFD8, global
	.4byte 0x74686973
	.4byte 0x206D6F64
	.4byte 0x65206361
	.4byte 0x6E6E6F74
	.4byte 0x20737570
	.4byte 0x706F7274
	.4byte 0x20656E63
	.4byte 0x72797074
	.4byte 0x696F6E21
	.4byte 0x00000000
.endobj lbl_8166CFD8

# .data:0x70 | 0x8166D000 | size: 0x30
.obj lbl_8166D000, global
	.4byte 0x6C656E67
	.4byte 0x74682068
	.4byte 0x6173206E
	.4byte 0x6F742073
	.4byte 0x75697465
	.4byte 0x6420746F
	.4byte 0x20414553
	.4byte 0x20626C6F
	.4byte 0x636B2061
	.4byte 0x6C69676E
	.4byte 0x6D656E74
	.4byte 0x21000000
.endobj lbl_8166D000

# .data:0xA0 | 0x8166D030 | size: 0x28
.obj lbl_8166D030, global
	.4byte 0x74686973
	.4byte 0x206D6F64
	.4byte 0x65206361
	.4byte 0x6E6E6F74
	.4byte 0x20737570
	.4byte 0x706F7274
	.4byte 0x20646563
	.4byte 0x72797074
	.4byte 0x696F6E21
	.4byte 0x00000000
.endobj lbl_8166D030

# 0x81695040..0x81695048 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695040 | size: 0x8
.obj lbl_81695040, global
	.4byte NETiAESEncryptoBlock
	.4byte NETiAESDecryptoBlock
.endobj lbl_81695040
