.include "macros.inc"
.file "BS2Mach.c"

# 0x8108A6E0..0x810ADF80 | size: 0x238A0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A6E0 | size: 0x1000
.obj BS2Mach_8108A6E0, local
	.skip 0x1000
.endobj BS2Mach_8108A6E0

# .bss:0x1000 | 0x8108B6E0 | size: 0x40
.obj BS2Mach_8108B6E0, global
	.skip 0x40
.endobj BS2Mach_8108B6E0

# .bss:0x1040 | 0x8108B720 | size: 0x30
.obj Block, global
	.skip 0x30
.endobj Block

# .bss:0x1070 | 0x8108B750 | size: 0x10
.obj BS2Mach_8108B750, local
	.skip 0x10
.endobj BS2Mach_8108B750

# .bss:0x1080 | 0x8108B760 | size: 0x830
.obj BS2Mach_8108B760, local
	.skip 0x830
.endobj BS2Mach_8108B760

# .bss:0x18B0 | 0x8108BF90 | size: 0x96
.obj BS2CacheFileInfo, global
	.skip 0x96
.endobj BS2CacheFileInfo

# .bss:0x1946 | 0x8108C026 | size: 0xC0C9
.obj BS2Mach_8108BF90, local
	.skip 0xC0C9
.endobj BS2Mach_8108BF90

# .bss:0xDA0F | 0x810980EF | size: 0x11DF1
.obj BS2Mach_810980EF, global
	.skip 0x11DF1
.endobj BS2Mach_810980EF

# .bss:0x1F800 | 0x810A9EE0 | size: 0x60
.obj BS2Mach_810A9EE0, local
	.skip 0x60
.endobj BS2Mach_810A9EE0

# .bss:0x1F860 | 0x810A9F40 | size: 0x4040
.obj bi3, global
	.skip 0x4040
.endobj bi3

# 0x8137AFB4..0x8137F208 | size: 0x4254
.text
.balign 4

# .text:0x0 | 0x8137AFB4 | size: 0x50
.fn BS2Report, global
/* 8137AFB4 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8137AFB8 | 40 86 00 24 */	bne cr1, .L_8137AFDC
/* 8137AFBC | D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8137AFC0 | D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8137AFC4 | D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8137AFC8 | D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8137AFCC | D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8137AFD0 | D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8137AFD4 | D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8137AFD8 | D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8137AFDC:
/* 8137AFDC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8137AFE0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8137AFE4 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8137AFE8 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 8137AFEC | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 8137AFF0 | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 8137AFF4 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 8137AFF8 | 91 41 00 24 */	stw r10, 0x24(r1)
/* 8137AFFC | 38 21 00 70 */	addi r1, r1, 0x70
/* 8137B000 | 4E 80 00 20 */	blr
.endfn BS2Report

# .text:0x50 | 0x8137B004 | size: 0x64
.fn BS2NANDCallback, global
/* 8137B004 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137B008 | 7C 08 02 A6 */	mflr r0
/* 8137B00C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137B010 | 80 0D AA 0C */	lwz r0, lbl_81698A4C@sda21(r0)
/* 8137B014 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B018 | 41 82 00 0C */	beq .L_8137B024
/* 8137B01C | 38 00 00 00 */	li r0, 0x0
/* 8137B020 | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
.L_8137B024:
/* 8137B024 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B028 | 40 80 00 30 */	bge .L_8137B058
/* 8137B02C | 3C 60 81 64 */	lis r3, lbl_81645DA8@ha
/* 8137B030 | 38 63 5D A8 */	addi r3, r3, lbl_81645DA8@l
/* 8137B034 | 4C C6 31 82 */	crclr cr1eq
/* 8137B038 | 48 1B 36 69 */	bl OSReport
/* 8137B03C | 38 80 00 00 */	li r4, 0x0
/* 8137B040 | 38 00 00 02 */	li r0, 0x2
/* 8137B044 | 90 8D A9 9C */	stw r4, BS2BootFromCache@sda21(r0)
/* 8137B048 | 38 60 00 01 */	li r3, 0x1
/* 8137B04C | 90 8D 84 D8 */	stw r4, BS2BootCaching@sda21(r0)
/* 8137B050 | 90 6D AA 04 */	stw r3, lbl_81698A44@sda21(r0)
/* 8137B054 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B058:
/* 8137B058 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137B05C | 7C 08 03 A6 */	mtlr r0
/* 8137B060 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137B064 | 4E 80 00 20 */	blr
.endfn BS2NANDCallback

# .text:0xB4 | 0x8137B068 | size: 0x144
.fn BS2DVDCallback, global
/* 8137B068 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137B06C | 7C 08 02 A6 */	mflr r0
/* 8137B070 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137B074 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137B078 | 7C 7F 1B 78 */	mr r31, r3
/* 8137B07C | 80 0D A9 CC */	lwz r0, Transferring@sda21(r0)
/* 8137B080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B084 | 41 82 00 2C */	beq .L_8137B0B0
/* 8137B088 | 38 A0 00 00 */	li r5, 0x0
/* 8137B08C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B090 | 90 AD A9 CC */	stw r5, Transferring@sda21(r0)
/* 8137B094 | 80 8D AA A0 */	lwz r4, lbl_81698AE0@sda21(r0)
/* 8137B098 | 80 0D AA 9C */	lwz r0, lbl_81698ADC@sda21(r0)
/* 8137B09C | 7C 04 02 14 */	add r0, r4, r0
/* 8137B0A0 | 90 0D AA A0 */	stw r0, lbl_81698AE0@sda21(r0)
/* 8137B0A4 | 40 80 00 0C */	bge .L_8137B0B0
/* 8137B0A8 | 80 8D AA A4 */	lwz r4, lbl_81698AE4@sda21(r0)
/* 8137B0AC | 90 A4 00 00 */	stw r5, 0x0(r4)
.L_8137B0B0:
/* 8137B0B0 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B0B4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137B0B8 | 40 82 00 14 */	bne .L_8137B0CC
/* 8137B0BC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137B0C0 | 40 82 00 0C */	bne .L_8137B0CC
/* 8137B0C4 | 38 00 00 34 */	li r0, 0x34
/* 8137B0C8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B0CC:
/* 8137B0CC | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B0D0 | 2C 00 00 31 */	cmpwi r0, 0x31
/* 8137B0D4 | 41 82 00 1C */	beq .L_8137B0F0
/* 8137B0D8 | 2C 00 00 32 */	cmpwi r0, 0x32
/* 8137B0DC | 41 82 00 14 */	beq .L_8137B0F0
/* 8137B0E0 | 2C 00 00 21 */	cmpwi r0, 0x21
/* 8137B0E4 | 41 82 00 0C */	beq .L_8137B0F0
/* 8137B0E8 | 2C 00 00 45 */	cmpwi r0, 0x45
/* 8137B0EC | 40 82 00 18 */	bne .L_8137B104
.L_8137B0F0:
/* 8137B0F0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137B0F4 | 40 82 00 10 */	bne .L_8137B104
/* 8137B0F8 | 48 00 50 B9 */	bl BS2CancelUpdate
/* 8137B0FC | 38 00 00 34 */	li r0, 0x34
/* 8137B100 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B104:
/* 8137B104 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B108 | 2C 00 00 3B */	cmpwi r0, 0x3b
/* 8137B10C | 41 82 00 0C */	beq .L_8137B118
/* 8137B110 | 2C 00 00 3F */	cmpwi r0, 0x3f
/* 8137B114 | 40 82 00 40 */	bne .L_8137B154
.L_8137B118:
/* 8137B118 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8137B11C | 40 82 00 14 */	bne .L_8137B130
/* 8137B120 | 48 00 50 91 */	bl BS2CancelUpdate
/* 8137B124 | 38 00 00 34 */	li r0, 0x34
/* 8137B128 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137B12C | 48 00 00 28 */	b .L_8137B154
.L_8137B130:
/* 8137B130 | 48 1D 65 51 */	bl fn_81551680
/* 8137B134 | 54 60 F7 FF */	extrwi. r0, r3, 1, 29
/* 8137B138 | 41 82 00 1C */	beq .L_8137B154
/* 8137B13C | 48 00 50 75 */	bl BS2CancelUpdate
/* 8137B140 | 80 0D AA 00 */	lwz r0, AbortFlag@sda21(r0)
/* 8137B144 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B148 | 40 82 00 0C */	bne .L_8137B154
/* 8137B14C | 38 00 00 33 */	li r0, 0x33
/* 8137B150 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B154:
/* 8137B154 | 80 6D A9 C8 */	lwz r3, CurrentState@sda21(r0)
/* 8137B158 | 38 03 FF CC */	subi r0, r3, 0x34
/* 8137B15C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137B160 | 41 81 00 18 */	bgt .L_8137B178
/* 8137B164 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8137B168 | 40 82 00 10 */	bne .L_8137B178
/* 8137B16C | 48 1D 68 15 */	bl fn_81551980
/* 8137B170 | 38 00 00 33 */	li r0, 0x33
/* 8137B174 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B178:
/* 8137B178 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B17C | 2C 00 00 21 */	cmpwi r0, 0x21
/* 8137B180 | 40 82 00 18 */	bne .L_8137B198
/* 8137B184 | 48 00 50 19 */	bl BS2UpdateState
/* 8137B188 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8137B18C | 40 82 00 0C */	bne .L_8137B198
/* 8137B190 | 38 00 00 22 */	li r0, 0x22
/* 8137B194 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B198:
/* 8137B198 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137B19C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137B1A0 | 7C 08 03 A6 */	mtlr r0
/* 8137B1A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137B1A8 | 4E 80 00 20 */	blr
.endfn BS2DVDCallback

# .text:0x1F8 | 0x8137B1AC | size: 0x7C
.fn BS2RestartStateMachine, global
/* 8137B1AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137B1B0 | 7C 08 02 A6 */	mflr r0
/* 8137B1B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137B1B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8137B1BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8137B1C0 | 48 1B 86 C5 */	bl __OSGetRTCFlags
/* 8137B1C4 | 48 1B 87 DD */	bl fn_815339A0
/* 8137B1C8 | 48 1B 56 BD */	bl OSDisableInterrupts
/* 8137B1CC | 3C 80 81 64 */	lis r4, lbl_81645DCA@ha
/* 8137B1D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8137B1D4 | 38 64 5D CA */	addi r3, r4, lbl_81645DCA@l
/* 8137B1D8 | 4C C6 31 82 */	crclr cr1eq
/* 8137B1DC | 4B FF FD D9 */	bl BS2Report
/* 8137B1E0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8137B1E4 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 8137B1E8 | 40 82 00 0C */	bne .L_8137B1F4
/* 8137B1EC | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 8137B1F0 | 41 82 00 14 */	beq .L_8137B204
.L_8137B1F4:
/* 8137B1F4 | 38 60 00 00 */	li r3, 0x0
/* 8137B1F8 | 38 00 00 01 */	li r0, 0x1
/* 8137B1FC | 90 6D A9 9C */	stw r3, BS2BootFromCache@sda21(r0)
/* 8137B200 | 90 0D 84 D8 */	stw r0, BS2BootCaching@sda21(r0)
.L_8137B204:
/* 8137B204 | 38 00 00 01 */	li r0, 0x1
/* 8137B208 | 7F E3 FB 78 */	mr r3, r31
/* 8137B20C | 90 0D A9 E4 */	stw r0, lbl_81698A24@sda21(r0)
/* 8137B210 | 48 1B 56 9D */	bl OSRestoreInterrupts
/* 8137B214 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137B218 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8137B21C | 7C 08 03 A6 */	mtlr r0
/* 8137B220 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137B224 | 4E 80 00 20 */	blr
.endfn BS2RestartStateMachine

# .text:0x274 | 0x8137B228 | size: 0x174
.fn BS2AbortStateMachine, global
/* 8137B228 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137B22C | 7C 08 02 A6 */	mflr r0
/* 8137B230 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137B234 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137B238 | 48 1B 56 4D */	bl OSDisableInterrupts
/* 8137B23C | 3C 80 81 64 */	lis r4, lbl_81645DE4@ha
/* 8137B240 | 7C 7F 1B 78 */	mr r31, r3
/* 8137B244 | 38 64 5D E4 */	addi r3, r4, lbl_81645DE4@l
/* 8137B248 | 4C C6 31 82 */	crclr cr1eq
/* 8137B24C | 4B FF FD 69 */	bl BS2Report
/* 8137B250 | 80 6D A9 C8 */	lwz r3, CurrentState@sda21(r0)
/* 8137B254 | 38 80 00 00 */	li r4, 0x0
/* 8137B258 | 90 8D A9 E4 */	stw r4, lbl_81698A24@sda21(r0)
/* 8137B25C | 2C 03 00 40 */	cmpwi r3, 0x40
/* 8137B260 | 40 82 00 10 */	bne .L_8137B270
/* 8137B264 | 7F E3 FB 78 */	mr r3, r31
/* 8137B268 | 48 1B 56 45 */	bl OSRestoreInterrupts
/* 8137B26C | 48 00 01 1C */	b .L_8137B388
.L_8137B270:
/* 8137B270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B274 | 41 82 00 34 */	beq .L_8137B2A8
/* 8137B278 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137B27C | 41 82 00 2C */	beq .L_8137B2A8
/* 8137B280 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8137B284 | 41 82 00 24 */	beq .L_8137B2A8
/* 8137B288 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8137B28C | 41 82 00 1C */	beq .L_8137B2A8
/* 8137B290 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8137B294 | 41 82 00 14 */	beq .L_8137B2A8
/* 8137B298 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8137B29C | 41 82 00 0C */	beq .L_8137B2A8
/* 8137B2A0 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 8137B2A4 | 40 82 00 18 */	bne .L_8137B2BC
.L_8137B2A8:
/* 8137B2A8 | 38 00 00 40 */	li r0, 0x40
/* 8137B2AC | 7F E3 FB 78 */	mr r3, r31
/* 8137B2B0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137B2B4 | 48 1B 55 F9 */	bl OSRestoreInterrupts
/* 8137B2B8 | 48 00 00 D0 */	b .L_8137B388
.L_8137B2BC:
/* 8137B2BC | 2C 03 00 34 */	cmpwi r3, 0x34
/* 8137B2C0 | 41 82 00 40 */	beq .L_8137B300
/* 8137B2C4 | 2C 03 00 35 */	cmpwi r3, 0x35
/* 8137B2C8 | 41 82 00 38 */	beq .L_8137B300
/* 8137B2CC | 2C 03 00 37 */	cmpwi r3, 0x37
/* 8137B2D0 | 41 82 00 30 */	beq .L_8137B300
/* 8137B2D4 | 2C 03 00 38 */	cmpwi r3, 0x38
/* 8137B2D8 | 41 82 00 28 */	beq .L_8137B300
/* 8137B2DC | 2C 03 00 42 */	cmpwi r3, 0x42
/* 8137B2E0 | 41 82 00 20 */	beq .L_8137B300
/* 8137B2E4 | 2C 03 00 43 */	cmpwi r3, 0x43
/* 8137B2E8 | 41 82 00 18 */	beq .L_8137B300
/* 8137B2EC | 2C 03 00 44 */	cmpwi r3, 0x44
/* 8137B2F0 | 41 82 00 10 */	beq .L_8137B300
/* 8137B2F4 | 38 03 FF C7 */	subi r0, r3, 0x39
/* 8137B2F8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137B2FC | 41 81 00 10 */	bgt .L_8137B30C
.L_8137B300:
/* 8137B300 | 7F E3 FB 78 */	mr r3, r31
/* 8137B304 | 48 1B 55 A9 */	bl OSRestoreInterrupts
/* 8137B308 | 48 00 00 80 */	b .L_8137B388
.L_8137B30C:
/* 8137B30C | 80 6D AA A4 */	lwz r3, lbl_81698AE4@sda21(r0)
/* 8137B310 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8137B314 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B318 | 90 8D AA A0 */	stw r4, lbl_81698AE0@sda21(r0)
/* 8137B31C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137B320 | 90 8D AA 9C */	stw r4, lbl_81698ADC@sda21(r0)
/* 8137B324 | 41 82 00 1C */	beq .L_8137B340
/* 8137B328 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8137B32C | 41 82 00 14 */	beq .L_8137B340
/* 8137B330 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8137B334 | 41 82 00 0C */	beq .L_8137B340
/* 8137B338 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8137B33C | 40 82 00 10 */	bne .L_8137B34C
.L_8137B340:
/* 8137B340 | 38 00 00 3E */	li r0, 0x3e
/* 8137B344 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137B348 | 48 00 00 30 */	b .L_8137B378
.L_8137B34C:
/* 8137B34C | 80 0D AA 0C */	lwz r0, lbl_81698A4C@sda21(r0)
/* 8137B350 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B354 | 41 82 00 0C */	beq .L_8137B360
/* 8137B358 | 38 00 00 01 */	li r0, 0x1
/* 8137B35C | 90 0D AA 10 */	stw r0, lbl_81698A50@sda21(r0)
.L_8137B360:
/* 8137B360 | 38 00 00 3C */	li r0, 0x3c
/* 8137B364 | 3C 60 81 09 */	lis r3, Block@ha
/* 8137B368 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137B36C | 38 63 B7 20 */	addi r3, r3, Block@l
/* 8137B370 | 38 80 00 00 */	li r4, 0x0
/* 8137B374 | 48 1D 2A F1 */	bl fn_8154DE64
.L_8137B378:
/* 8137B378 | 38 00 00 01 */	li r0, 0x1
/* 8137B37C | 7F E3 FB 78 */	mr r3, r31
/* 8137B380 | 90 0D AA 00 */	stw r0, AbortFlag@sda21(r0)
/* 8137B384 | 48 1B 55 29 */	bl OSRestoreInterrupts
.L_8137B388:
/* 8137B388 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137B38C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137B390 | 7C 08 03 A6 */	mtlr r0
/* 8137B394 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137B398 | 4E 80 00 20 */	blr
.endfn BS2AbortStateMachine

# .text:0x3E8 | 0x8137B39C | size: 0xC
.fn BS2SetBannerBuffer, global
/* 8137B39C | 90 6D A9 D4 */	stw r3, BannerBufferAddr@sda21(r0)
/* 8137B3A0 | 90 8D AA 98 */	stw r4, lbl_81698AD8@sda21(r0)
/* 8137B3A4 | 4E 80 00 20 */	blr
.endfn BS2SetBannerBuffer

# .text:0x3F4 | 0x8137B3A8 | size: 0x8
.fn BS2SetMemAllocator, global
/* 8137B3A8 | 90 6D A9 DC */	stw r3, MemAllocator@sda21(r0)
/* 8137B3AC | 4E 80 00 20 */	blr
.endfn BS2SetMemAllocator

# .text:0x3FC | 0x8137B3B0 | size: 0x8
.fn BS2IsBannerAvailable, global
/* 8137B3B0 | 80 6D A9 D8 */	lwz r3, BannerAvailable@sda21(r0)
/* 8137B3B4 | 4E 80 00 20 */	blr
.endfn BS2IsBannerAvailable

# .text:0x404 | 0x8137B3B8 | size: 0x8
.fn BS2GetBannerBufferAddr, global
/* 8137B3B8 | 80 6D A9 D4 */	lwz r3, BannerBufferAddr@sda21(r0)
/* 8137B3BC | 4E 80 00 20 */	blr
.endfn BS2GetBannerBufferAddr

# .text:0x40C | 0x8137B3C0 | size: 0x8
.fn BS2GetBannerBufferLength, global
/* 8137B3C0 | 80 6D AA 98 */	lwz r3, lbl_81698AD8@sda21(r0)
/* 8137B3C4 | 4E 80 00 20 */	blr
.endfn BS2GetBannerBufferLength

# .text:0x414 | 0x8137B3C8 | size: 0x24
.fn BS2IsDiagDisc, global
/* 8137B3C8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137B3CC | 38 00 00 01 */	li r0, 0x1
/* 8137B3D0 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 8137B3D4 | 38 60 FF FF */	li r3, -0x1
/* 8137B3D8 | 38 84 FF D0 */	subi r4, r4, 0x30
/* 8137B3DC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8137B3E0 | 7C 04 00 10 */	subfc r0, r4, r0
/* 8137B3E4 | 7C 63 01 90 */	subfze r3, r3
/* 8137B3E8 | 4E 80 00 20 */	blr
.endfn BS2IsDiagDisc

# .text:0x438 | 0x8137B3EC | size: 0xAC
.fn BS2Mach_8137B3EC, local
/* 8137B3EC | 7C A9 03 A6 */	mtctr r5
/* 8137B3F0 | 7C 68 03 A6 */	mtlr r3
/* 8137B3F4 | 38 00 00 00 */	li r0, 0x0
/* 8137B3F8 | 38 40 00 00 */	li r2, 0x0
/* 8137B3FC | 38 60 00 00 */	li r3, 0x0
/* 8137B400 | 38 A0 00 00 */	li r5, 0x0
/* 8137B404 | 38 E0 00 00 */	li r7, 0x0
/* 8137B408 | 39 00 00 00 */	li r8, 0x0
/* 8137B40C | 39 20 00 00 */	li r9, 0x0
/* 8137B410 | 39 40 00 00 */	li r10, 0x0
/* 8137B414 | 39 60 00 00 */	li r11, 0x0
/* 8137B418 | 39 80 00 00 */	li r12, 0x0
/* 8137B41C | 39 A0 00 00 */	li r13, 0x0
/* 8137B420 | 39 C0 00 00 */	li r14, 0x0
/* 8137B424 | 39 E0 00 00 */	li r15, 0x0
/* 8137B428 | 3A 00 00 00 */	li r16, 0x0
/* 8137B42C | 3A 20 00 00 */	li r17, 0x0
/* 8137B430 | 3A 40 00 00 */	li r18, 0x0
/* 8137B434 | 3A 60 00 00 */	li r19, 0x0
/* 8137B438 | 3A 80 00 00 */	li r20, 0x0
/* 8137B43C | 3A A0 00 00 */	li r21, 0x0
/* 8137B440 | 3A C0 00 00 */	li r22, 0x0
/* 8137B444 | 3A E0 00 00 */	li r23, 0x0
/* 8137B448 | 3B 00 00 00 */	li r24, 0x0
/* 8137B44C | 3B 20 00 00 */	li r25, 0x0
/* 8137B450 | 3B 40 00 00 */	li r26, 0x0
/* 8137B454 | 3B 60 00 00 */	li r27, 0x0
/* 8137B458 | 3B 80 00 00 */	li r28, 0x0
/* 8137B45C | 3B A0 00 00 */	li r29, 0x0
/* 8137B460 | 3B C0 00 00 */	li r30, 0x0
/* 8137B464 | 3B E0 00 00 */	li r31, 0x0
/* 8137B468 | 3C 20 81 60 */	lis r1, __pformatter_815FFD80+0x280@h
/* 8137B46C | 60 21 00 00 */	ori r1, r1, __pformatter_815FFD80+0x280@l
/* 8137B470 | 38 C0 00 00 */	li r6, 0x0
/* 8137B474 | 48 00 00 20 */	b .L_8137B494
.L_8137B478:
/* 8137B478 | 7C 04 07 EC */	dcbz r4, r0
/* 8137B47C | 7C 04 00 AC */	dcbf r4, r0
/* 8137B480 | 38 84 00 20 */	addi r4, r4, 0x20
/* 8137B484 | 42 00 FF F4 */	bdnz .L_8137B478
/* 8137B488 | 48 00 00 04 */	b .L_8137B48C
.L_8137B48C:
/* 8137B48C | 38 80 00 00 */	li r4, 0x0
/* 8137B490 | 4E 80 00 20 */	blr
.L_8137B494:
/* 8137B494 | 4B FF FF E4 */	b .L_8137B478
.endfn BS2Mach_8137B3EC

# .text:0x4E4 | 0x8137B498 | size: 0x25C
.fn BS2GetLockedTitles, global
/* 8137B498 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137B49C | 7C 08 02 A6 */	mflr r0
/* 8137B4A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137B4A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137B4A8 | 48 27 E0 21 */	bl _savegpr_29
/* 8137B4AC | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B4B0 | 3F E0 81 64 */	lis r31, lbl_81645DA8@ha
/* 8137B4B4 | 7C 9D 23 78 */	mr r29, r4
/* 8137B4B8 | 2C 00 00 45 */	cmpwi r0, 0x45
/* 8137B4BC | 3B FF 5D A8 */	addi r31, r31, lbl_81645DA8@l
/* 8137B4C0 | 41 82 00 14 */	beq .L_8137B4D4
/* 8137B4C4 | 2C 00 00 31 */	cmpwi r0, 0x31
/* 8137B4C8 | 41 82 00 0C */	beq .L_8137B4D4
/* 8137B4CC | 38 60 00 00 */	li r3, 0x0
/* 8137B4D0 | 48 00 02 0C */	b .L_8137B6DC
.L_8137B4D4:
/* 8137B4D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B4D8 | 40 82 01 18 */	bne .L_8137B5F0
/* 8137B4DC | 38 00 00 00 */	li r0, 0x0
/* 8137B4E0 | 3C A0 81 09 */	lis r5, BS2Mach_8108B760@ha
/* 8137B4E4 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 8137B4E8 | 38 A5 B7 60 */	addi r5, r5, BS2Mach_8108B760@l
/* 8137B4EC | 3B C0 00 00 */	li r30, 0x0
/* 8137B4F0 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
/* 8137B4F4 | 48 00 00 60 */	b .L_8137B554
.L_8137B4F8:
/* 8137B4F8 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 8137B4FC | 38 7F 00 54 */	addi r3, r31, 0x54
/* 8137B500 | 4C C6 31 82 */	crclr cr1eq
/* 8137B504 | 4B FF FA B1 */	bl BS2Report
/* 8137B508 | 80 8D AA 58 */	lwz r4, lbl_81698A98@sda21(r0)
/* 8137B50C | 38 7F 00 6E */	addi r3, r31, 0x6e
/* 8137B510 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137B514 | 4C C6 31 82 */	crclr cr1eq
/* 8137B518 | 4B FF FA 9D */	bl BS2Report
/* 8137B51C | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137B520 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137B524 | 54 00 00 0F */	clrrwi. r0, r0, 24
/* 8137B528 | 41 82 00 1C */	beq .L_8137B544
/* 8137B52C | 38 7F 00 88 */	addi r3, r31, 0x88
/* 8137B530 | 4C C6 31 82 */	crclr cr1eq
/* 8137B534 | 4B FF FA 81 */	bl BS2Report
/* 8137B538 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8137B53C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137B540 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_8137B544:
/* 8137B544 | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137B548 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137B54C | 38 A3 00 08 */	addi r5, r3, 0x8
/* 8137B550 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
.L_8137B554:
/* 8137B554 | 80 6D AA 60 */	lwz r3, lbl_81698AA0@sda21(r0)
/* 8137B558 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137B55C | 7C 1E 00 40 */	cmplw r30, r0
/* 8137B560 | 41 80 FF 98 */	blt .L_8137B4F8
/* 8137B564 | 3C 60 81 09 */	lis r3, BS2Mach_8108B760@ha
/* 8137B568 | 3B C0 00 00 */	li r30, 0x0
/* 8137B56C | 38 63 B7 60 */	addi r3, r3, BS2Mach_8108B760@l
/* 8137B570 | 38 A3 00 20 */	addi r5, r3, 0x20
/* 8137B574 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
/* 8137B578 | 48 00 00 60 */	b .L_8137B5D8
.L_8137B57C:
/* 8137B57C | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 8137B580 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 8137B584 | 4C C6 31 82 */	crclr cr1eq
/* 8137B588 | 4B FF FA 2D */	bl BS2Report
/* 8137B58C | 80 8D AA 58 */	lwz r4, lbl_81698A98@sda21(r0)
/* 8137B590 | 38 7F 00 6E */	addi r3, r31, 0x6e
/* 8137B594 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137B598 | 4C C6 31 82 */	crclr cr1eq
/* 8137B59C | 4B FF FA 19 */	bl BS2Report
/* 8137B5A0 | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137B5A4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137B5A8 | 54 00 00 0F */	clrrwi. r0, r0, 24
/* 8137B5AC | 41 82 00 1C */	beq .L_8137B5C8
/* 8137B5B0 | 38 7F 00 88 */	addi r3, r31, 0x88
/* 8137B5B4 | 4C C6 31 82 */	crclr cr1eq
/* 8137B5B8 | 4B FF F9 FD */	bl BS2Report
/* 8137B5BC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8137B5C0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137B5C4 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_8137B5C8:
/* 8137B5C8 | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137B5CC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137B5D0 | 38 A3 00 08 */	addi r5, r3, 0x8
/* 8137B5D4 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
.L_8137B5D8:
/* 8137B5D8 | 80 6D AA 5C */	lwz r3, lbl_81698A9C@sda21(r0)
/* 8137B5DC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137B5E0 | 7C 1E 00 40 */	cmplw r30, r0
/* 8137B5E4 | 41 80 FF 98 */	blt .L_8137B57C
/* 8137B5E8 | 38 60 00 01 */	li r3, 0x1
/* 8137B5EC | 48 00 00 F0 */	b .L_8137B6DC
.L_8137B5F0:
/* 8137B5F0 | 81 04 00 00 */	lwz r8, 0x0(r4)
/* 8137B5F4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8137B5F8 | 41 82 00 E0 */	beq .L_8137B6D8
/* 8137B5FC | 3C A0 81 09 */	lis r5, BS2Mach_8108B760@ha
/* 8137B600 | 3B C0 00 00 */	li r30, 0x0
/* 8137B604 | 38 A5 B7 60 */	addi r5, r5, BS2Mach_8108B760@l
/* 8137B608 | 38 E0 FF FF */	li r7, -0x1
/* 8137B60C | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
/* 8137B610 | 67 C6 00 01 */	oris r6, r30, 0x1
/* 8137B614 | 48 00 00 44 */	b .L_8137B658
.L_8137B618:
/* 8137B618 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8137B61C | 40 82 00 0C */	bne .L_8137B628
/* 8137B620 | 38 60 00 01 */	li r3, 0x1
/* 8137B624 | 48 00 00 B8 */	b .L_8137B6DC
.L_8137B628:
/* 8137B628 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8137B62C | 54 80 00 0F */	clrrwi. r0, r4, 24
/* 8137B630 | 41 82 00 18 */	beq .L_8137B648
/* 8137B634 | 7C 80 38 38 */	and r0, r4, r7
/* 8137B638 | 39 08 FF FF */	subi r8, r8, 0x1
/* 8137B63C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8137B640 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8137B644 | 38 63 00 08 */	addi r3, r3, 0x8
.L_8137B648:
/* 8137B648 | 80 8D AA 58 */	lwz r4, lbl_81698A98@sda21(r0)
/* 8137B64C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137B650 | 38 A4 00 08 */	addi r5, r4, 0x8
/* 8137B654 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
.L_8137B658:
/* 8137B658 | 80 8D AA 60 */	lwz r4, lbl_81698AA0@sda21(r0)
/* 8137B65C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8137B660 | 7C 1E 00 40 */	cmplw r30, r0
/* 8137B664 | 41 80 FF B4 */	blt .L_8137B618
/* 8137B668 | 3C 80 81 09 */	lis r4, BS2Mach_8108B760@ha
/* 8137B66C | 3B C0 00 00 */	li r30, 0x0
/* 8137B670 | 38 84 B7 60 */	addi r4, r4, BS2Mach_8108B760@l
/* 8137B674 | 38 E0 FF FF */	li r7, -0x1
/* 8137B678 | 38 A4 00 20 */	addi r5, r4, 0x20
/* 8137B67C | 67 C6 00 01 */	oris r6, r30, 0x1
/* 8137B680 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
/* 8137B684 | 48 00 00 44 */	b .L_8137B6C8
.L_8137B688:
/* 8137B688 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8137B68C | 40 82 00 0C */	bne .L_8137B698
/* 8137B690 | 38 60 00 01 */	li r3, 0x1
/* 8137B694 | 48 00 00 48 */	b .L_8137B6DC
.L_8137B698:
/* 8137B698 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8137B69C | 54 80 00 0F */	clrrwi. r0, r4, 24
/* 8137B6A0 | 41 82 00 18 */	beq .L_8137B6B8
/* 8137B6A4 | 7C 80 38 38 */	and r0, r4, r7
/* 8137B6A8 | 39 08 FF FF */	subi r8, r8, 0x1
/* 8137B6AC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8137B6B0 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8137B6B4 | 38 63 00 08 */	addi r3, r3, 0x8
.L_8137B6B8:
/* 8137B6B8 | 80 8D AA 58 */	lwz r4, lbl_81698A98@sda21(r0)
/* 8137B6BC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8137B6C0 | 38 A4 00 08 */	addi r5, r4, 0x8
/* 8137B6C4 | 90 AD AA 58 */	stw r5, lbl_81698A98@sda21(r0)
.L_8137B6C8:
/* 8137B6C8 | 80 8D AA 5C */	lwz r4, lbl_81698A9C@sda21(r0)
/* 8137B6CC | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8137B6D0 | 7C 1E 00 40 */	cmplw r30, r0
/* 8137B6D4 | 41 80 FF B4 */	blt .L_8137B688
.L_8137B6D8:
/* 8137B6D8 | 38 60 00 01 */	li r3, 0x1
.L_8137B6DC:
/* 8137B6DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137B6E0 | 48 27 DE 35 */	bl _restgpr_29
/* 8137B6E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137B6E8 | 7C 08 03 A6 */	mtlr r0
/* 8137B6EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137B6F0 | 4E 80 00 20 */	blr
.endfn BS2GetLockedTitles

# .text:0x740 | 0x8137B6F4 | size: 0xB0
.fn BS2IsTitleAvailable, global
/* 8137B6F4 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B6F8 | 2C 00 00 45 */	cmpwi r0, 0x45
/* 8137B6FC | 41 82 00 14 */	beq .L_8137B710
/* 8137B700 | 2C 00 00 31 */	cmpwi r0, 0x31
/* 8137B704 | 41 82 00 0C */	beq .L_8137B710
/* 8137B708 | 38 60 00 00 */	li r3, 0x0
/* 8137B70C | 4E 80 00 20 */	blr
.L_8137B710:
/* 8137B710 | 3C 60 81 09 */	lis r3, BS2Mach_8108B760@ha
/* 8137B714 | 80 AD AA 60 */	lwz r5, lbl_81698AA0@sda21(r0)
/* 8137B718 | 38 63 B7 60 */	addi r3, r3, BS2Mach_8108B760@l
/* 8137B71C | 38 C0 00 00 */	li r6, 0x0
/* 8137B720 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
/* 8137B724 | 48 00 00 24 */	b .L_8137B748
.L_8137B728:
/* 8137B728 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137B72C | 7C 00 20 40 */	cmplw r0, r4
/* 8137B730 | 40 82 00 0C */	bne .L_8137B73C
/* 8137B734 | 38 60 00 01 */	li r3, 0x1
/* 8137B738 | 4E 80 00 20 */	blr
.L_8137B73C:
/* 8137B73C | 38 63 00 08 */	addi r3, r3, 0x8
/* 8137B740 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8137B744 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
.L_8137B748:
/* 8137B748 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8137B74C | 7C 06 00 40 */	cmplw r6, r0
/* 8137B750 | 41 80 FF D8 */	blt .L_8137B728
/* 8137B754 | 3C 60 81 09 */	lis r3, BS2Mach_8108B760@ha
/* 8137B758 | 80 AD AA 5C */	lwz r5, lbl_81698A9C@sda21(r0)
/* 8137B75C | 38 63 B7 60 */	addi r3, r3, BS2Mach_8108B760@l
/* 8137B760 | 38 C0 00 00 */	li r6, 0x0
/* 8137B764 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137B768 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
/* 8137B76C | 48 00 00 24 */	b .L_8137B790
.L_8137B770:
/* 8137B770 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137B774 | 7C 00 20 40 */	cmplw r0, r4
/* 8137B778 | 40 82 00 0C */	bne .L_8137B784
/* 8137B77C | 38 60 00 01 */	li r3, 0x1
/* 8137B780 | 4E 80 00 20 */	blr
.L_8137B784:
/* 8137B784 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8137B788 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8137B78C | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
.L_8137B790:
/* 8137B790 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8137B794 | 7C 06 00 40 */	cmplw r6, r0
/* 8137B798 | 41 80 FF D8 */	blt .L_8137B770
/* 8137B79C | 38 60 00 00 */	li r3, 0x0
/* 8137B7A0 | 4E 80 00 20 */	blr
.endfn BS2IsTitleAvailable

# .text:0x7F0 | 0x8137B7A4 | size: 0x15C
.fn BS2GetTicketFromNand, global
/* 8137B7A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8137B7A8 | 7C 08 02 A6 */	mflr r0
/* 8137B7AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8137B7B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8137B7B4 | 48 27 DD 0D */	bl _savegpr_27
/* 8137B7B8 | 3F E0 81 64 */	lis r31, lbl_81645DA8@ha
/* 8137B7BC | 7C BD 2B 78 */	mr r29, r5
/* 8137B7C0 | 7C 7C 1B 78 */	mr r28, r3
/* 8137B7C4 | 7C 9B 23 78 */	mr r27, r4
/* 8137B7C8 | 3B FF 5D A8 */	addi r31, r31, lbl_81645DA8@l
/* 8137B7CC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8137B7D0 | 38 A0 00 00 */	li r5, 0x0
/* 8137B7D4 | 48 24 31 35 */	bl fn_815BE908
/* 8137B7D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B7DC | 7C 7E 1B 78 */	mr r30, r3
/* 8137B7E0 | 41 82 00 20 */	beq .L_8137B800
/* 8137B7E4 | 7F C5 F3 78 */	mr r5, r30
/* 8137B7E8 | 38 7F 00 92 */	addi r3, r31, 0x92
/* 8137B7EC | 38 80 00 01 */	li r4, 0x1
/* 8137B7F0 | 4C C6 31 82 */	crclr cr1eq
/* 8137B7F4 | 48 1B 2E AD */	bl OSReport
/* 8137B7F8 | 7F C3 F3 78 */	mr r3, r30
/* 8137B7FC | 48 00 00 EC */	b .L_8137B8E8
.L_8137B800:
/* 8137B800 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137B804 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B808 | 40 82 00 18 */	bne .L_8137B820
/* 8137B80C | 38 7F 00 B2 */	addi r3, r31, 0xb2
/* 8137B810 | 4C C6 31 82 */	crclr cr1eq
/* 8137B814 | 48 1B 2E 8D */	bl OSReport
/* 8137B818 | 38 60 FF FF */	li r3, -0x1
/* 8137B81C | 48 00 00 CC */	b .L_8137B8E8
.L_8137B820:
/* 8137B820 | 28 00 00 40 */	cmplwi r0, 0x40
/* 8137B824 | 40 81 00 18 */	ble .L_8137B83C
/* 8137B828 | 38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8137B82C | 4C C6 31 82 */	crclr cr1eq
/* 8137B830 | 48 1B 2E 71 */	bl OSReport
/* 8137B834 | 38 60 FF FF */	li r3, -0x1
/* 8137B838 | 48 00 00 B0 */	b .L_8137B8E8
.L_8137B83C:
/* 8137B83C | 80 AD 85 38 */	lwz r5, lbl_81696578@sda21(r0)
/* 8137B840 | 7F 64 DB 78 */	mr r4, r27
/* 8137B844 | 7F 83 E3 78 */	mr r3, r28
/* 8137B848 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8137B84C | 48 24 30 BD */	bl fn_815BE908
/* 8137B850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B854 | 7C 7E 1B 78 */	mr r30, r3
/* 8137B858 | 41 82 00 20 */	beq .L_8137B878
/* 8137B85C | 7F C5 F3 78 */	mr r5, r30
/* 8137B860 | 38 7F 00 92 */	addi r3, r31, 0x92
/* 8137B864 | 38 80 00 02 */	li r4, 0x2
/* 8137B868 | 4C C6 31 82 */	crclr cr1eq
/* 8137B86C | 48 1B 2E 35 */	bl OSReport
/* 8137B870 | 7F C3 F3 78 */	mr r3, r30
/* 8137B874 | 48 00 00 74 */	b .L_8137B8E8
.L_8137B878:
/* 8137B878 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8137B87C | 38 7F 01 02 */	addi r3, r31, 0x102
/* 8137B880 | 4C C6 31 82 */	crclr cr1eq
/* 8137B884 | 4B FF F7 31 */	bl BS2Report
/* 8137B888 | 80 6D 85 38 */	lwz r3, lbl_81696578@sda21(r0)
/* 8137B88C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8137B890 | 48 1B 38 49 */	bl fn_8152F0D8
/* 8137B894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137B898 | 41 80 00 14 */	blt .L_8137B8AC
/* 8137B89C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8137B8A0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8137B8A4 | 7C 03 00 40 */	cmplw r3, r0
/* 8137B8A8 | 40 81 00 18 */	ble .L_8137B8C0
.L_8137B8AC:
/* 8137B8AC | 38 7F 01 1C */	addi r3, r31, 0x11c
/* 8137B8B0 | 4C C6 31 82 */	crclr cr1eq
/* 8137B8B4 | 48 1B 2D ED */	bl OSReport
/* 8137B8B8 | 38 60 FF FF */	li r3, -0x1
/* 8137B8BC | 48 00 00 2C */	b .L_8137B8E8
.L_8137B8C0:
/* 8137B8C0 | 1C 03 00 D8 */	mulli r0, r3, 0xd8
/* 8137B8C4 | 80 8D 85 38 */	lwz r4, lbl_81696578@sda21(r0)
/* 8137B8C8 | 7F A3 EB 78 */	mr r3, r29
/* 8137B8CC | 38 A0 00 D8 */	li r5, 0xd8
/* 8137B8D0 | 7C 84 02 14 */	add r4, r4, r0
/* 8137B8D4 | 4B FB 49 5D */	bl memcpy
/* 8137B8D8 | 7F A3 EB 78 */	mr r3, r29
/* 8137B8DC | 38 80 00 D8 */	li r4, 0xd8
/* 8137B8E0 | 48 1B 20 85 */	bl DCStoreRange
/* 8137B8E4 | 80 61 00 08 */	lwz r3, 0x8(r1)
.L_8137B8E8:
/* 8137B8E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8137B8EC | 48 27 DC 21 */	bl _restgpr_27
/* 8137B8F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8137B8F4 | 7C 08 03 A6 */	mtlr r0
/* 8137B8F8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8137B8FC | 4E 80 00 20 */	blr
.endfn BS2GetTicketFromNand

# .text:0x94C | 0x8137B900 | size: 0x11C
.fn BS2StartLoadingTitle, global
/* 8137B900 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137B904 | 2C 00 00 45 */	cmpwi r0, 0x45
/* 8137B908 | 41 82 00 14 */	beq .L_8137B91C
/* 8137B90C | 2C 00 00 31 */	cmpwi r0, 0x31
/* 8137B910 | 41 82 00 0C */	beq .L_8137B91C
/* 8137B914 | 38 60 00 00 */	li r3, 0x0
/* 8137B918 | 4E 80 00 20 */	blr
.L_8137B91C:
/* 8137B91C | 3C 60 81 09 */	lis r3, BS2Mach_8108B760@ha
/* 8137B920 | 38 00 00 01 */	li r0, 0x1
/* 8137B924 | 38 63 B7 60 */	addi r3, r3, BS2Mach_8108B760@l
/* 8137B928 | 90 0D A9 F0 */	stw r0, lbl_81698A30@sda21(r0)
/* 8137B92C | 80 CD AA 60 */	lwz r6, lbl_81698AA0@sda21(r0)
/* 8137B930 | 38 E0 00 00 */	li r7, 0x0
/* 8137B934 | 90 AD AA 3C */	stw r5, lbl_81698A7C@sda21(r0)
/* 8137B938 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
/* 8137B93C | 48 00 00 54 */	b .L_8137B990
.L_8137B940:
/* 8137B940 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137B944 | 7C 00 20 40 */	cmplw r0, r4
/* 8137B948 | 40 82 00 3C */	bne .L_8137B984
/* 8137B94C | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137B950 | 90 6D AA 50 */	stw r3, lbl_81698A90@sda21(r0)
/* 8137B954 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B958 | 41 82 00 10 */	beq .L_8137B968
/* 8137B95C | 38 00 00 08 */	li r0, 0x8
/* 8137B960 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137B964 | 48 00 00 0C */	b .L_8137B970
.L_8137B968:
/* 8137B968 | 38 00 00 46 */	li r0, 0x46
/* 8137B96C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B970:
/* 8137B970 | 38 00 00 00 */	li r0, 0x0
/* 8137B974 | 38 60 00 01 */	li r3, 0x1
/* 8137B978 | 90 0D A9 9C */	stw r0, BS2BootFromCache@sda21(r0)
/* 8137B97C | 90 0D 84 D8 */	stw r0, BS2BootCaching@sda21(r0)
/* 8137B980 | 4E 80 00 20 */	blr
.L_8137B984:
/* 8137B984 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8137B988 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8137B98C | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
.L_8137B990:
/* 8137B990 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8137B994 | 7C 07 00 40 */	cmplw r7, r0
/* 8137B998 | 41 80 FF A8 */	blt .L_8137B940
/* 8137B99C | 3C 60 81 09 */	lis r3, BS2Mach_8108B760@ha
/* 8137B9A0 | 80 AD AA 5C */	lwz r5, lbl_81698A9C@sda21(r0)
/* 8137B9A4 | 38 63 B7 60 */	addi r3, r3, BS2Mach_8108B760@l
/* 8137B9A8 | 38 E0 00 00 */	li r7, 0x0
/* 8137B9AC | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137B9B0 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
/* 8137B9B4 | 48 00 00 54 */	b .L_8137BA08
.L_8137B9B8:
/* 8137B9B8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137B9BC | 7C 00 20 40 */	cmplw r0, r4
/* 8137B9C0 | 40 82 00 3C */	bne .L_8137B9FC
/* 8137B9C4 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137B9C8 | 90 6D AA 50 */	stw r3, lbl_81698A90@sda21(r0)
/* 8137B9CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137B9D0 | 41 82 00 10 */	beq .L_8137B9E0
/* 8137B9D4 | 38 00 00 08 */	li r0, 0x8
/* 8137B9D8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137B9DC | 48 00 00 0C */	b .L_8137B9E8
.L_8137B9E0:
/* 8137B9E0 | 38 00 00 46 */	li r0, 0x46
/* 8137B9E4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137B9E8:
/* 8137B9E8 | 38 00 00 00 */	li r0, 0x0
/* 8137B9EC | 38 60 00 01 */	li r3, 0x1
/* 8137B9F0 | 90 0D A9 9C */	stw r0, BS2BootFromCache@sda21(r0)
/* 8137B9F4 | 90 0D 84 D8 */	stw r0, BS2BootCaching@sda21(r0)
/* 8137B9F8 | 4E 80 00 20 */	blr
.L_8137B9FC:
/* 8137B9FC | 38 63 00 08 */	addi r3, r3, 0x8
/* 8137BA00 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8137BA04 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
.L_8137BA08:
/* 8137BA08 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8137BA0C | 7C 07 00 40 */	cmplw r7, r0
/* 8137BA10 | 41 80 FF A8 */	blt .L_8137B9B8
/* 8137BA14 | 38 60 00 00 */	li r3, 0x0
/* 8137BA18 | 4E 80 00 20 */	blr
.endfn BS2StartLoadingTitle

# .text:0xA68 | 0x8137BA1C | size: 0x8
.fn BS2Mach_8137BA1C, local
/* 8137BA1C | 90 6D AA 14 */	stw r3, lbl_81698A54@sda21(r0)
/* 8137BA20 | 4E 80 00 20 */	blr
.endfn BS2Mach_8137BA1C

# .text:0xA70 | 0x8137BA24 | size: 0x11C
.fn BS2Mach_8137BA24, local
/* 8137BA24 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8137BA28 | 7C 2C 0B 78 */	mr r12, r1
/* 8137BA2C | 21 6B FE A0 */	subfic r11, r11, -0x160
/* 8137BA30 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8137BA34 | 7C 08 02 A6 */	mflr r0
/* 8137BA38 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8137BA3C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8137BA40 | 39 41 00 40 */	addi r10, r1, 0x40
/* 8137BA44 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8137BA48 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 8137BA4C | 7D 1F 43 78 */	mr r31, r8
/* 8137BA50 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137BA54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137BA58 | 41 80 00 0C */	blt .L_8137BA64
/* 8137BA5C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8137BA60 | 40 82 00 0C */	bne .L_8137BA6C
.L_8137BA64:
/* 8137BA64 | 38 60 FC 07 */	li r3, -0x3f9
/* 8137BA68 | 48 00 00 C0 */	b .L_8137BB28
.L_8137BA6C:
/* 8137BA6C | 54 E0 06 FF */	clrlwi. r0, r7, 27
/* 8137BA70 | 41 82 00 0C */	beq .L_8137BA7C
/* 8137BA74 | 38 60 FC 07 */	li r3, -0x3f9
/* 8137BA78 | 48 00 00 B0 */	b .L_8137BB28
.L_8137BA7C:
/* 8137BA7C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8137BA80 | 90 C1 00 44 */	stw r6, 0x44(r1)
/* 8137BA84 | 90 A1 00 40 */	stw r5, 0x40(r1)
/* 8137BA88 | 40 82 00 48 */	bne .L_8137BAD0
/* 8137BA8C | 38 C0 00 08 */	li r6, 0x8
/* 8137BA90 | 38 00 00 04 */	li r0, 0x4
/* 8137BA94 | 90 C1 00 24 */	stw r6, 0x24(r1)
/* 8137BA98 | 7C 87 23 78 */	mr r7, r4
/* 8137BA9C | 38 80 00 12 */	li r4, 0x12
/* 8137BAA0 | 38 A0 00 01 */	li r5, 0x1
/* 8137BAA4 | 91 41 00 20 */	stw r10, 0x20(r1)
/* 8137BAA8 | 38 C0 00 01 */	li r6, 0x1
/* 8137BAAC | 91 61 00 28 */	stw r11, 0x28(r1)
/* 8137BAB0 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8137BAB4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8137BAB8 | 48 1F 7D 41 */	bl IOS_Ioctlv
/* 8137BABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BAC0 | 40 82 00 68 */	bne .L_8137BB28
/* 8137BAC4 | 80 01 00 60 */	lwz r0, 0x60(r1)
/* 8137BAC8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8137BACC | 48 00 00 5C */	b .L_8137BB28
.L_8137BAD0:
/* 8137BAD0 | 80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8137BAD4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8137BAD8 | 40 82 00 0C */	bne .L_8137BAE4
/* 8137BADC | 38 60 FC 07 */	li r3, -0x3f9
/* 8137BAE0 | 48 00 00 48 */	b .L_8137BB28
.L_8137BAE4:
/* 8137BAE4 | 39 20 00 08 */	li r9, 0x8
/* 8137BAE8 | 38 00 00 04 */	li r0, 0x4
/* 8137BAEC | 90 E1 00 30 */	stw r7, 0x30(r1)
/* 8137BAF0 | 7C 87 23 78 */	mr r7, r4
/* 8137BAF4 | 38 80 00 13 */	li r4, 0x13
/* 8137BAF8 | 38 A0 00 02 */	li r5, 0x2
/* 8137BAFC | 90 C1 00 60 */	stw r6, 0x60(r1)
/* 8137BB00 | 38 C0 00 01 */	li r6, 0x1
/* 8137BB04 | 91 41 00 20 */	stw r10, 0x20(r1)
/* 8137BB08 | 91 21 00 24 */	stw r9, 0x24(r1)
/* 8137BB0C | 91 61 00 28 */	stw r11, 0x28(r1)
/* 8137BB10 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8137BB14 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 8137BB18 | 1C 00 00 D8 */	mulli r0, r0, 0xd8
/* 8137BB1C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8137BB20 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8137BB24 | 48 1F 7C D5 */	bl IOS_Ioctlv
.L_8137BB28:
/* 8137BB28 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8137BB2C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8137BB30 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 8137BB34 | 7C 08 03 A6 */	mtlr r0
/* 8137BB38 | 7D 41 53 78 */	mr r1, r10
/* 8137BB3C | 4E 80 00 20 */	blr
.endfn BS2Mach_8137BA24

# .text:0xB8C | 0x8137BB40 | size: 0x224
.fn BS2Mach_8137BB40, local
/* 8137BB40 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8137BB44 | 7C 2C 0B 78 */	mr r12, r1
/* 8137BB48 | 21 6B FD 80 */	subfic r11, r11, -0x280
/* 8137BB4C | 7C 21 59 6E */	stwux r1, r1, r11
/* 8137BB50 | 7C 08 02 A6 */	mflr r0
/* 8137BB54 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8137BB58 | 38 00 FF FF */	li r0, -0x1
/* 8137BB5C | 93 EC FF FC */	stw r31, -0x4(r12)
/* 8137BB60 | 3F E0 81 64 */	lis r31, lbl_81645DA8@ha
/* 8137BB64 | 3B FF 5D A8 */	addi r31, r31, lbl_81645DA8@l
/* 8137BB68 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 8137BB6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137BB70 | 48 1F 89 29 */	bl fn_81574498
/* 8137BB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BB78 | 41 82 00 18 */	beq .L_8137BB90
/* 8137BB7C | 7C 64 1B 78 */	mr r4, r3
/* 8137BB80 | 38 7F 01 38 */	addi r3, r31, 0x138
/* 8137BB84 | 4C C6 31 82 */	crclr cr1eq
/* 8137BB88 | 48 1B 2B 19 */	bl OSReport
/* 8137BB8C | 48 00 01 BC */	b .L_8137BD48
.L_8137BB90:
/* 8137BB90 | 38 7F 01 53 */	addi r3, r31, 0x153
/* 8137BB94 | 4C C6 31 82 */	crclr cr1eq
/* 8137BB98 | 4B FF F4 1D */	bl BS2Report
/* 8137BB9C | 38 61 00 60 */	addi r3, r1, 0x60
/* 8137BBA0 | 48 1B BC 65 */	bl fn_81537804
/* 8137BBA4 | 38 60 00 00 */	li r3, 0x0
/* 8137BBA8 | 38 80 00 03 */	li r4, 0x3
/* 8137BBAC | 38 00 00 02 */	li r0, 0x2
/* 8137BBB0 | 98 61 00 64 */	stb r3, 0x64(r1)
/* 8137BBB4 | 38 61 00 60 */	addi r3, r1, 0x60
/* 8137BBB8 | 98 81 00 65 */	stb r4, 0x65(r1)
/* 8137BBBC | 98 01 00 66 */	stb r0, 0x66(r1)
/* 8137BBC0 | 48 1B BB 61 */	bl fn_81537720
/* 8137BBC4 | 3B C0 00 00 */	li r30, 0x0
/* 8137BBC8 | 38 6D 85 3C */	li r3, lbl_8169657C@sda21
/* 8137BBCC | 38 80 00 00 */	li r4, 0x0
/* 8137BBD0 | 48 1F 6F 41 */	bl IOS_Open
/* 8137BBD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BBD8 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 8137BBDC | 40 80 00 08 */	bge .L_8137BBE4
/* 8137BBE0 | 7C 7E 1B 78 */	mr r30, r3
.L_8137BBE4:
/* 8137BBE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8137BBE8 | 41 82 00 18 */	beq .L_8137BC00
/* 8137BBEC | 7F C4 F3 78 */	mr r4, r30
/* 8137BBF0 | 38 7F 01 6F */	addi r3, r31, 0x16f
/* 8137BBF4 | 4C C6 31 82 */	crclr cr1eq
/* 8137BBF8 | 48 1B 2A A9 */	bl OSReport
/* 8137BBFC | 48 00 01 4C */	b .L_8137BD48
.L_8137BC00:
/* 8137BC00 | 7F C4 F3 78 */	mr r4, r30
/* 8137BC04 | 38 7F 01 86 */	addi r3, r31, 0x186
/* 8137BC08 | 4C C6 31 82 */	crclr cr1eq
/* 8137BC0C | 4B FF F3 A9 */	bl BS2Report
/* 8137BC10 | 38 61 00 24 */	addi r3, r1, 0x24
/* 8137BC14 | 39 01 00 20 */	addi r8, r1, 0x20
/* 8137BC18 | 38 C0 00 02 */	li r6, 0x2
/* 8137BC1C | 38 A0 00 01 */	li r5, 0x1
/* 8137BC20 | 38 E0 00 00 */	li r7, 0x0
/* 8137BC24 | 4B FF FE 01 */	bl BS2Mach_8137BA24
/* 8137BC28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BC2C | 41 82 00 18 */	beq .L_8137BC44
/* 8137BC30 | 7C 64 1B 78 */	mr r4, r3
/* 8137BC34 | 38 7F 01 96 */	addi r3, r31, 0x196
/* 8137BC38 | 4C C6 31 82 */	crclr cr1eq
/* 8137BC3C | 48 1B 2A 65 */	bl OSReport
/* 8137BC40 | 48 00 01 08 */	b .L_8137BD48
.L_8137BC44:
/* 8137BC44 | 7C 64 1B 78 */	mr r4, r3
/* 8137BC48 | 38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 8137BC4C | 4C C6 31 82 */	crclr cr1eq
/* 8137BC50 | 4B FF F3 65 */	bl BS2Report
/* 8137BC54 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8137BC58 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137BC5C | 41 82 00 10 */	beq .L_8137BC6C
/* 8137BC60 | 38 7F 01 CB */	addi r3, r31, 0x1cb
/* 8137BC64 | 4C C6 31 82 */	crclr cr1eq
/* 8137BC68 | 48 1B 2A 39 */	bl OSReport
.L_8137BC6C:
/* 8137BC6C | 38 61 00 24 */	addi r3, r1, 0x24
/* 8137BC70 | 38 E1 01 80 */	addi r7, r1, 0x180
/* 8137BC74 | 39 01 00 20 */	addi r8, r1, 0x20
/* 8137BC78 | 38 C0 00 02 */	li r6, 0x2
/* 8137BC7C | 38 A0 00 01 */	li r5, 0x1
/* 8137BC80 | 4B FF FD A5 */	bl BS2Mach_8137BA24
/* 8137BC84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BC88 | 41 82 00 18 */	beq .L_8137BCA0
/* 8137BC8C | 7C 64 1B 78 */	mr r4, r3
/* 8137BC90 | 38 7F 01 96 */	addi r3, r31, 0x196
/* 8137BC94 | 4C C6 31 82 */	crclr cr1eq
/* 8137BC98 | 48 1B 2A 09 */	bl OSReport
/* 8137BC9C | 48 00 00 AC */	b .L_8137BD48
.L_8137BCA0:
/* 8137BCA0 | 7C 64 1B 78 */	mr r4, r3
/* 8137BCA4 | 38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 8137BCA8 | 4C C6 31 82 */	crclr cr1eq
/* 8137BCAC | 4B FF F3 09 */	bl BS2Report
/* 8137BCB0 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8137BCB4 | 38 E1 00 40 */	addi r7, r1, 0x40
/* 8137BCB8 | 39 41 00 80 */	addi r10, r1, 0x80
/* 8137BCBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BCC0 | 40 80 00 0C */	bge .L_8137BCCC
/* 8137BCC4 | 38 60 FC 07 */	li r3, -0x3f9
/* 8137BCC8 | 48 00 00 50 */	b .L_8137BD18
.L_8137BCCC:
/* 8137BCCC | 39 21 01 80 */	addi r9, r1, 0x180
/* 8137BCD0 | 55 20 06 FF */	clrlwi. r0, r9, 27
/* 8137BCD4 | 41 82 00 0C */	beq .L_8137BCE0
/* 8137BCD8 | 38 60 FC 07 */	li r3, -0x3f9
/* 8137BCDC | 48 00 00 3C */	b .L_8137BD18
.L_8137BCE0:
/* 8137BCE0 | 38 80 00 02 */	li r4, 0x2
/* 8137BCE4 | 38 A0 00 01 */	li r5, 0x1
/* 8137BCE8 | 39 00 00 08 */	li r8, 0x8
/* 8137BCEC | 38 00 00 D8 */	li r0, 0xd8
/* 8137BCF0 | 90 81 00 84 */	stw r4, 0x84(r1)
/* 8137BCF4 | 38 80 00 08 */	li r4, 0x8
/* 8137BCF8 | 38 C0 00 00 */	li r6, 0x0
/* 8137BCFC | 90 A1 00 80 */	stw r5, 0x80(r1)
/* 8137BD00 | 38 A0 00 02 */	li r5, 0x2
/* 8137BD04 | 91 41 00 40 */	stw r10, 0x40(r1)
/* 8137BD08 | 91 01 00 44 */	stw r8, 0x44(r1)
/* 8137BD0C | 91 21 00 48 */	stw r9, 0x48(r1)
/* 8137BD10 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 8137BD14 | 48 1F 7B C1 */	bl fn_815738D4
.L_8137BD18:
/* 8137BD18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BD1C | 41 82 00 18 */	beq .L_8137BD34
/* 8137BD20 | 7C 64 1B 78 */	mr r4, r3
/* 8137BD24 | 38 7F 01 FD */	addi r3, r31, 0x1fd
/* 8137BD28 | 4C C6 31 82 */	crclr cr1eq
/* 8137BD2C | 48 1B 29 75 */	bl OSReport
/* 8137BD30 | 48 00 00 18 */	b .L_8137BD48
.L_8137BD34:
/* 8137BD34 | 7C 64 1B 78 */	mr r4, r3
/* 8137BD38 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 8137BD3C | 4C C6 31 82 */	crclr cr1eq
/* 8137BD40 | 4B FF F2 75 */	bl BS2Report
.L_8137BD44:
/* 8137BD44 | 48 00 00 00 */	b .L_8137BD44
.L_8137BD48:
/* 8137BD48 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8137BD4C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8137BD50 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 8137BD54 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 8137BD58 | 7C 08 03 A6 */	mtlr r0
/* 8137BD5C | 7D 41 53 78 */	mr r1, r10
/* 8137BD60 | 4E 80 00 20 */	blr
.endfn BS2Mach_8137BB40

# .text:0xDB0 | 0x8137BD64 | size: 0x624
.fn BS2StartGame, global
/* 8137BD64 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8137BD68 | 7C 08 02 A6 */	mflr r0
/* 8137BD6C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8137BD70 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8137BD74 | 48 27 D7 41 */	bl _savegpr_24
/* 8137BD78 | 38 00 00 01 */	li r0, 0x1
/* 8137BD7C | 3F A0 81 09 */	lis r29, Block@ha
/* 8137BD80 | 3F C0 81 64 */	lis r30, lbl_81645DA8@ha
/* 8137BD84 | 90 0D A9 E0 */	stw r0, StartingGame@sda21(r0)
/* 8137BD88 | 3B BD B7 20 */	addi r29, r29, Block@l
/* 8137BD8C | 3B DE 5D A8 */	addi r30, r30, lbl_81645DA8@l
/* 8137BD90 | 38 7D 08 40 */	addi r3, r29, 0x840
.L_8137BD94:
/* 8137BD94 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137BD98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137BD9C | 40 82 FF F8 */	bne .L_8137BD94
/* 8137BDA0 | 38 7E 02 2C */	addi r3, r30, 0x22c
/* 8137BDA4 | 4C C6 31 82 */	crclr cr1eq
/* 8137BDA8 | 4B FF F2 0D */	bl BS2Report
/* 8137BDAC | 80 8D AA A0 */	lwz r4, lbl_81698AE0@sda21(r0)
/* 8137BDB0 | 38 7E 02 3D */	addi r3, r30, 0x23d
/* 8137BDB4 | 4C C6 31 82 */	crclr cr1eq
/* 8137BDB8 | 4B FF F1 FD */	bl BS2Report
/* 8137BDBC | 38 00 00 01 */	li r0, 0x1
/* 8137BDC0 | 3C 80 81 38 */	lis r4, BS2NANDCallback@ha
/* 8137BDC4 | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137BDC8 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137BDCC | 38 84 B0 04 */	addi r4, r4, BS2NANDCallback@l
/* 8137BDD0 | 38 BD 08 FC */	addi r5, r29, 0x8fc
/* 8137BDD4 | 48 1E 97 85 */	bl NANDCloseAsync
/* 8137BDD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BDDC | 40 82 00 28 */	bne .L_8137BE04
.L_8137BDE0:
/* 8137BDE0 | 80 0D AA 0C */	lwz r0, lbl_81698A4C@sda21(r0)
/* 8137BDE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137BDE8 | 40 82 FF F8 */	bne .L_8137BDE0
/* 8137BDEC | 80 0D AA 04 */	lwz r0, lbl_81698A44@sda21(r0)
/* 8137BDF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137BDF4 | 41 82 00 20 */	beq .L_8137BE14
/* 8137BDF8 | 38 7E 02 57 */	addi r3, r30, 0x257
/* 8137BDFC | 48 1E 7F FD */	bl NANDDelete
/* 8137BE00 | 48 00 00 14 */	b .L_8137BE14
.L_8137BE04:
/* 8137BE04 | 7C 64 1B 78 */	mr r4, r3
/* 8137BE08 | 38 7E 02 7F */	addi r3, r30, 0x27f
/* 8137BE0C | 4C C6 31 82 */	crclr cr1eq
/* 8137BE10 | 48 1B 28 91 */	bl OSReport
.L_8137BE14:
/* 8137BE14 | 48 1F B5 AD */	bl fn_815773C0
/* 8137BE18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BE1C | 41 82 FF F8 */	beq .L_8137BE14
/* 8137BE20 | 3F 80 80 00 */	lis r28, 0x8000
/* 8137BE24 | 38 00 00 80 */	li r0, 0x80
/* 8137BE28 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8137BE2C | 38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 8137BE30 | 90 9C 31 80 */	stw r4, 0x3180(r28)
/* 8137BE34 | 98 1C 31 84 */	stb r0, 0x3184(r28)
/* 8137BE38 | 80 03 03 A0 */	lwz r0, 0x3a0(r3)
/* 8137BE3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137BE40 | 41 82 00 0C */	beq .L_8137BE4C
/* 8137BE44 | 38 00 00 80 */	li r0, 0x80
/* 8137BE48 | 48 00 00 08 */	b .L_8137BE50
.L_8137BE4C:
/* 8137BE4C | 38 00 00 00 */	li r0, 0x0
.L_8137BE50:
/* 8137BE50 | 3C C0 80 00 */	lis r6, 0x8000
/* 8137BE54 | 38 80 01 00 */	li r4, 0x100
/* 8137BE58 | 98 06 31 87 */	stb r0, 0x3187(r6)
/* 8137BE5C | 38 66 31 00 */	addi r3, r6, 0x3100
/* 8137BE60 | 80 AD AA 50 */	lwz r5, lbl_81698A90@sda21(r0)
/* 8137BE64 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8137BE68 | 90 06 31 94 */	stw r0, 0x3194(r6)
/* 8137BE6C | 80 AD AA 50 */	lwz r5, lbl_81698A90@sda21(r0)
/* 8137BE70 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8137BE74 | 90 06 31 98 */	stw r0, 0x3198(r6)
/* 8137BE78 | 48 1B 1A BD */	bl DCFlushRange
/* 8137BE7C | 48 1B AD 19 */	bl fn_81536B94
/* 8137BE80 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8137BE84 | 48 1B B9 81 */	bl fn_81537804
/* 8137BE88 | 80 0D AA 04 */	lwz r0, lbl_81698A44@sda21(r0)
/* 8137BE8C | 38 60 00 81 */	li r3, 0x81
/* 8137BE90 | 98 61 00 10 */	stb r3, 0x10(r1)
/* 8137BE94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137BE98 | 40 82 00 0C */	bne .L_8137BEA4
/* 8137BE9C | 60 60 00 40 */	ori r0, r3, 0x40
/* 8137BEA0 | 98 01 00 10 */	stb r0, 0x10(r1)
.L_8137BEA4:
/* 8137BEA4 | 38 00 00 FF */	li r0, 0xff
/* 8137BEA8 | 3B 60 00 01 */	li r27, 0x1
/* 8137BEAC | 98 01 00 11 */	stb r0, 0x11(r1)
/* 8137BEB0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8137BEB4 | 9B 61 00 12 */	stb r27, 0x12(r1)
/* 8137BEB8 | 48 1B B8 69 */	bl fn_81537720
/* 8137BEBC | 48 1B 7A E5 */	bl fn_815339A0
/* 8137BEC0 | 83 2D AA 48 */	lwz r25, lbl_81698A88@sda21(r0)
/* 8137BEC4 | 83 0D AA 4C */	lwz r24, lbl_81698A8C@sda21(r0)
/* 8137BEC8 | 93 61 00 08 */	stw r27, 0x8(r1)
/* 8137BECC | 7F 00 CB 79 */	or. r0, r24, r25
/* 8137BED0 | 83 4D 85 38 */	lwz r26, lbl_81696578@sda21(r0)
/* 8137BED4 | 40 82 00 0C */	bne .L_8137BEE0
/* 8137BED8 | 3B 00 00 03 */	li r24, 0x3
/* 8137BEDC | 3B 20 00 01 */	li r25, 0x1
.L_8137BEE0:
/* 8137BEE0 | 48 24 1A C1 */	bl ES_InitLib
/* 8137BEE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BEE8 | 7C 7F 1B 78 */	mr r31, r3
/* 8137BEEC | 41 82 00 28 */	beq .L_8137BF14
/* 8137BEF0 | 7F E4 FB 78 */	mr r4, r31
/* 8137BEF4 | 38 7E 02 A9 */	addi r3, r30, 0x2a9
/* 8137BEF8 | 4C C6 31 82 */	crclr cr1eq
/* 8137BEFC | 48 1B 27 A5 */	bl OSReport
/* 8137BF00 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137BF04 | 38 BE 02 D4 */	addi r5, r30, 0x2d4
/* 8137BF08 | 38 80 0A C3 */	li r4, 0xac3
/* 8137BF0C | 4C C6 31 82 */	crclr cr1eq
/* 8137BF10 | 48 1B 28 21 */	bl OSPanic
.L_8137BF14:
/* 8137BF14 | 7F 06 C3 78 */	mr r6, r24
/* 8137BF18 | 7F 25 CB 78 */	mr r5, r25
/* 8137BF1C | 38 7E 02 E8 */	addi r3, r30, 0x2e8
/* 8137BF20 | 4C C6 31 82 */	crclr cr1eq
/* 8137BF24 | 4B FF F0 91 */	bl BS2Report
/* 8137BF28 | 7F 04 C3 78 */	mr r4, r24
/* 8137BF2C | 7F 23 CB 78 */	mr r3, r25
/* 8137BF30 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8137BF34 | 38 A0 00 00 */	li r5, 0x0
/* 8137BF38 | 48 24 29 D1 */	bl fn_815BE908
/* 8137BF3C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137BF40 | 7C 7F 1B 78 */	mr r31, r3
/* 8137BF44 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137BF48 | 40 82 00 0C */	bne .L_8137BF54
/* 8137BF4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137BF50 | 41 82 00 28 */	beq .L_8137BF78
.L_8137BF54:
/* 8137BF54 | 7F E4 FB 78 */	mr r4, r31
/* 8137BF58 | 38 7E 02 A9 */	addi r3, r30, 0x2a9
/* 8137BF5C | 4C C6 31 82 */	crclr cr1eq
/* 8137BF60 | 48 1B 27 41 */	bl OSReport
/* 8137BF64 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137BF68 | 38 BE 02 D4 */	addi r5, r30, 0x2d4
/* 8137BF6C | 38 80 0A CD */	li r4, 0xacd
/* 8137BF70 | 4C C6 31 82 */	crclr cr1eq
/* 8137BF74 | 48 1B 27 BD */	bl OSPanic
.L_8137BF78:
/* 8137BF78 | 7F 04 C3 78 */	mr r4, r24
/* 8137BF7C | 7F 23 CB 78 */	mr r3, r25
/* 8137BF80 | 7F 45 D3 78 */	mr r5, r26
/* 8137BF84 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8137BF88 | 48 24 29 81 */	bl fn_815BE908
/* 8137BF8C | 7C 7F 1B 78 */	mr r31, r3
/* 8137BF90 | 38 7E 03 00 */	addi r3, r30, 0x300
/* 8137BF94 | 7F E4 FB 78 */	mr r4, r31
/* 8137BF98 | 4C C6 31 82 */	crclr cr1eq
/* 8137BF9C | 4B FF F0 19 */	bl BS2Report
/* 8137BFA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8137BFA4 | 41 82 00 28 */	beq .L_8137BFCC
/* 8137BFA8 | 7F E4 FB 78 */	mr r4, r31
/* 8137BFAC | 38 7E 02 A9 */	addi r3, r30, 0x2a9
/* 8137BFB0 | 4C C6 31 82 */	crclr cr1eq
/* 8137BFB4 | 48 1B 26 ED */	bl OSReport
/* 8137BFB8 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137BFBC | 38 BE 02 D4 */	addi r5, r30, 0x2d4
/* 8137BFC0 | 38 80 0A D7 */	li r4, 0xad7
/* 8137BFC4 | 4C C6 31 82 */	crclr cr1eq
/* 8137BFC8 | 48 1B 27 69 */	bl OSPanic
.L_8137BFCC:
/* 8137BFCC | 48 1D 39 E5 */	bl fn_8154F9B0
/* 8137BFD0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137BFD4 | 38 80 01 00 */	li r4, 0x100
/* 8137BFD8 | 83 63 31 1C */	lwz r27, 0x311c(r3)
/* 8137BFDC | 38 63 31 00 */	addi r3, r3, 0x3100
/* 8137BFE0 | 48 1B 19 85 */	bl DCStoreRange
/* 8137BFE4 | 7F 04 C3 78 */	mr r4, r24
/* 8137BFE8 | 7F 23 CB 78 */	mr r3, r25
/* 8137BFEC | 7F 45 D3 78 */	mr r5, r26
/* 8137BFF0 | 48 24 20 C9 */	bl ES_LaunchTitle
/* 8137BFF4 | 7C 7F 1B 78 */	mr r31, r3
/* 8137BFF8 | 38 7E 03 19 */	addi r3, r30, 0x319
/* 8137BFFC | 7F E4 FB 78 */	mr r4, r31
/* 8137C000 | 4C C6 31 82 */	crclr cr1eq
/* 8137C004 | 4B FF EF B1 */	bl BS2Report
/* 8137C008 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8137C00C | 41 82 00 28 */	beq .L_8137C034
/* 8137C010 | 7F E4 FB 78 */	mr r4, r31
/* 8137C014 | 38 7E 02 A9 */	addi r3, r30, 0x2a9
/* 8137C018 | 4C C6 31 82 */	crclr cr1eq
/* 8137C01C | 48 1B 26 85 */	bl OSReport
/* 8137C020 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137C024 | 38 BE 02 D4 */	addi r5, r30, 0x2d4
/* 8137C028 | 38 80 0A F3 */	li r4, 0xaf3
/* 8137C02C | 4C C6 31 82 */	crclr cr1eq
/* 8137C030 | 48 1B 27 01 */	bl OSPanic
.L_8137C034:
/* 8137C034 | 3F E0 80 00 */	lis r31, 0x8000
/* 8137C038 | 38 80 01 00 */	li r4, 0x100
/* 8137C03C | 38 7F 31 00 */	addi r3, r31, 0x3100
/* 8137C040 | 48 1B 18 C9 */	bl DCInvalidateRange
/* 8137C044 | 48 1B A5 D1 */	bl fn_81536614
/* 8137C048 | 48 1F 61 5D */	bl fn_815721A4
/* 8137C04C | 48 1F 66 D1 */	bl fn_8157271C
/* 8137C050 | 38 7E 03 2F */	addi r3, r30, 0x32f
/* 8137C054 | 4C C6 31 82 */	crclr cr1eq
/* 8137C058 | 4B FF EF 5D */	bl BS2Report
/* 8137C05C | 80 7F 31 1C */	lwz r3, 0x311c(r31)
/* 8137C060 | 7C 1B 18 40 */	cmplw r27, r3
/* 8137C064 | 40 80 00 54 */	bge .L_8137C0B8
/* 8137C068 | 80 1F 31 20 */	lwz r0, 0x3120(r31)
/* 8137C06C | 7C 00 18 50 */	subf r0, r0, r3
/* 8137C070 | 7C 00 D8 50 */	subf r0, r0, r27
/* 8137C074 | 90 1F 31 20 */	stw r0, 0x3120(r31)
/* 8137C078 | 80 7F 31 28 */	lwz r3, 0x3128(r31)
/* 8137C07C | 80 1F 31 1C */	lwz r0, 0x311c(r31)
/* 8137C080 | 7C 03 00 50 */	subf r0, r3, r0
/* 8137C084 | 7C 00 D8 50 */	subf r0, r0, r27
/* 8137C088 | 90 1F 31 28 */	stw r0, 0x3128(r31)
/* 8137C08C | 80 7F 31 30 */	lwz r3, 0x3130(r31)
/* 8137C090 | 80 1F 31 1C */	lwz r0, 0x311c(r31)
/* 8137C094 | 7C 03 00 50 */	subf r0, r3, r0
/* 8137C098 | 7C 00 D8 50 */	subf r0, r0, r27
/* 8137C09C | 90 1F 31 30 */	stw r0, 0x3130(r31)
/* 8137C0A0 | 80 7F 31 34 */	lwz r3, 0x3134(r31)
/* 8137C0A4 | 80 1F 31 1C */	lwz r0, 0x311c(r31)
/* 8137C0A8 | 7C 03 00 50 */	subf r0, r3, r0
/* 8137C0AC | 7C 00 D8 50 */	subf r0, r0, r27
/* 8137C0B0 | 90 1F 31 34 */	stw r0, 0x3134(r31)
/* 8137C0B4 | 93 7F 31 1C */	stw r27, 0x311c(r31)
.L_8137C0B8:
/* 8137C0B8 | 48 1D 39 49 */	bl fn_8154FA00
/* 8137C0BC | 38 7E 03 4D */	addi r3, r30, 0x34d
/* 8137C0C0 | 4C C6 31 82 */	crclr cr1eq
/* 8137C0C4 | 4B FF EE F1 */	bl BS2Report
/* 8137C0C8 | 38 00 00 00 */	li r0, 0x0
/* 8137C0CC | 3C 60 81 0B */	lis r3, BS2Mach_810A9EE0@ha
/* 8137C0D0 | 3C 80 81 38 */	lis r4, BS2Mach_8137BA1C@ha
/* 8137C0D4 | 90 0D AA 14 */	stw r0, lbl_81698A54@sda21(r0)
/* 8137C0D8 | 38 63 9E E0 */	addi r3, r3, BS2Mach_810A9EE0@l
/* 8137C0DC | 38 84 BA 1C */	addi r4, r4, BS2Mach_8137BA1C@l
/* 8137C0E0 | 48 1D 3B 85 */	bl fn_8154FC64
.L_8137C0E4:
/* 8137C0E4 | 80 0D AA 14 */	lwz r0, lbl_81698A54@sda21(r0)
/* 8137C0E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C0EC | 41 82 FF F8 */	beq .L_8137C0E4
/* 8137C0F0 | 80 0D AA 14 */	lwz r0, lbl_81698A54@sda21(r0)
/* 8137C0F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8137C0F8 | 41 82 00 14 */	beq .L_8137C10C
/* 8137C0FC | 40 80 00 90 */	bge .L_8137C18C
/* 8137C100 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137C104 | 40 80 00 94 */	bge .L_8137C198
/* 8137C108 | 48 00 00 84 */	b .L_8137C18C
.L_8137C10C:
/* 8137C10C | 80 8D AA 14 */	lwz r4, lbl_81698A54@sda21(r0)
/* 8137C110 | 38 7E 03 5E */	addi r3, r30, 0x35e
/* 8137C114 | 4C C6 31 82 */	crclr cr1eq
/* 8137C118 | 48 1B 25 89 */	bl OSReport
/* 8137C11C | 38 00 00 00 */	li r0, 0x0
/* 8137C120 | 3C 60 81 38 */	lis r3, BS2Mach_8137BA1C@ha
/* 8137C124 | 90 0D AA 14 */	stw r0, lbl_81698A54@sda21(r0)
/* 8137C128 | 38 63 BA 1C */	addi r3, r3, BS2Mach_8137BA1C@l
/* 8137C12C | 48 1D 4C 25 */	bl fn_81550D50
.L_8137C130:
/* 8137C130 | 80 0D AA 14 */	lwz r0, lbl_81698A54@sda21(r0)
/* 8137C134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C138 | 41 82 FF F8 */	beq .L_8137C130
/* 8137C13C | 48 1D 58 31 */	bl fn_8155196C
/* 8137C140 | 54 63 00 0E */	clrrwi r3, r3, 24
/* 8137C144 | 3C 03 FF 00 */	subis r0, r3, 0x100
/* 8137C148 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137C14C | 41 82 00 18 */	beq .L_8137C164
/* 8137C150 | 48 1D 58 1D */	bl fn_8155196C
/* 8137C154 | 54 63 00 0E */	clrrwi r3, r3, 24
/* 8137C158 | 3C 03 FD 00 */	subis r0, r3, 0x300
/* 8137C15C | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137C160 | 40 82 00 08 */	bne .L_8137C168
.L_8137C164:
/* 8137C164 | 4B FF F9 DD */	bl BS2Mach_8137BB40
.L_8137C168:
/* 8137C168 | 80 0D AA A0 */	lwz r0, lbl_81698AE0@sda21(r0)
/* 8137C16C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C170 | 40 82 00 1C */	bne .L_8137C18C
/* 8137C174 | 48 1D 57 F9 */	bl fn_8155196C
/* 8137C178 | 54 63 00 0E */	clrrwi r3, r3, 24
/* 8137C17C | 3C 03 FC 00 */	subis r0, r3, 0x400
/* 8137C180 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137C184 | 40 82 00 08 */	bne .L_8137C18C
/* 8137C188 | 4B FF F9 B9 */	bl BS2Mach_8137BB40
.L_8137C18C:
/* 8137C18C | 38 60 00 01 */	li r3, 0x1
/* 8137C190 | 48 00 52 4D */	bl DVDSetAutoFatalMessaging
/* 8137C194 | 48 00 52 A9 */	bl __DVDPrintFatalMessage
.L_8137C198:
/* 8137C198 | 38 7E 03 7B */	addi r3, r30, 0x37b
/* 8137C19C | 4C C6 31 82 */	crclr cr1eq
/* 8137C1A0 | 4B FF EE 15 */	bl BS2Report
/* 8137C1A4 | 3C 80 81 0B */	lis r4, BS2Mach_810A9EE0@ha
/* 8137C1A8 | 7F 83 E3 78 */	mr r3, r28
/* 8137C1AC | 38 84 9E E0 */	addi r4, r4, BS2Mach_810A9EE0@l
/* 8137C1B0 | 38 A0 00 04 */	li r5, 0x4
/* 8137C1B4 | 48 28 63 E9 */	bl strncmp
/* 8137C1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C1BC | 41 82 00 14 */	beq .L_8137C1D0
/* 8137C1C0 | 38 7E 03 92 */	addi r3, r30, 0x392
/* 8137C1C4 | 4C C6 31 82 */	crclr cr1eq
/* 8137C1C8 | 48 1B 24 D9 */	bl OSReport
/* 8137C1CC | 4B FF F9 75 */	bl BS2Mach_8137BB40
.L_8137C1D0:
/* 8137C1D0 | 3B 7D 09 C0 */	addi r27, r29, 0x9c0
/* 8137C1D4 | 38 7E 03 A5 */	addi r3, r30, 0x3a5
/* 8137C1D8 | 80 9B 03 A0 */	lwz r4, 0x3a0(r27)
/* 8137C1DC | 4C C6 31 82 */	crclr cr1eq
/* 8137C1E0 | 4B FF ED D5 */	bl BS2Report
/* 8137C1E4 | 80 BB 03 A0 */	lwz r5, 0x3a0(r27)
/* 8137C1E8 | 38 00 00 00 */	li r0, 0x0
/* 8137C1EC | 90 0D AA 14 */	stw r0, lbl_81698A54@sda21(r0)
/* 8137C1F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8137C1F4 | 41 82 00 2C */	beq .L_8137C220
/* 8137C1F8 | 80 6D AA 50 */	lwz r3, lbl_81698A90@sda21(r0)
/* 8137C1FC | 3D 20 81 38 */	lis r9, BS2Mach_8137BA1C@ha
/* 8137C200 | 80 FB 4D C0 */	lwz r7, 0x4dc0(r27)
/* 8137C204 | 38 9B 02 C0 */	addi r4, r27, 0x2c0
/* 8137C208 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8137C20C | 38 DB 03 C0 */	addi r6, r27, 0x3c0
/* 8137C210 | 39 1B 4D E0 */	addi r8, r27, 0x4de0
/* 8137C214 | 39 29 BA 1C */	addi r9, r9, BS2Mach_8137BA1C@l
/* 8137C218 | 48 1D 3E 3D */	bl fn_81550054
/* 8137C21C | 48 00 00 28 */	b .L_8137C244
.L_8137C220:
/* 8137C220 | 80 6D AA 50 */	lwz r3, lbl_81698A90@sda21(r0)
/* 8137C224 | 3D 00 81 38 */	lis r8, BS2Mach_8137BA1C@ha
/* 8137C228 | 38 FB 03 C0 */	addi r7, r27, 0x3c0
/* 8137C22C | 38 80 00 00 */	li r4, 0x0
/* 8137C230 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8137C234 | 39 08 BA 1C */	addi r8, r8, BS2Mach_8137BA1C@l
/* 8137C238 | 38 A0 00 00 */	li r5, 0x0
/* 8137C23C | 38 C0 00 00 */	li r6, 0x0
/* 8137C240 | 48 1D 3B AD */	bl fn_8154FDEC
.L_8137C244:
/* 8137C244 | 80 0D AA 14 */	lwz r0, lbl_81698A54@sda21(r0)
/* 8137C248 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C24C | 41 82 FF F8 */	beq .L_8137C244
/* 8137C250 | 80 0D AA 14 */	lwz r0, lbl_81698A54@sda21(r0)
/* 8137C254 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8137C258 | 41 82 00 20 */	beq .L_8137C278
/* 8137C25C | 40 80 00 10 */	bge .L_8137C26C
/* 8137C260 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137C264 | 40 80 00 94 */	bge .L_8137C2F8
/* 8137C268 | 48 00 00 84 */	b .L_8137C2EC
.L_8137C26C:
/* 8137C26C | 2C 00 00 40 */	cmpwi r0, 0x40
/* 8137C270 | 41 82 00 68 */	beq .L_8137C2D8
/* 8137C274 | 48 00 00 78 */	b .L_8137C2EC
.L_8137C278:
/* 8137C278 | 80 8D AA 14 */	lwz r4, lbl_81698A54@sda21(r0)
/* 8137C27C | 38 7E 03 5E */	addi r3, r30, 0x35e
/* 8137C280 | 4C C6 31 82 */	crclr cr1eq
/* 8137C284 | 48 1B 24 1D */	bl OSReport
/* 8137C288 | 38 00 00 00 */	li r0, 0x0
/* 8137C28C | 3C 60 81 38 */	lis r3, BS2Mach_8137BA1C@ha
/* 8137C290 | 90 0D AA 14 */	stw r0, lbl_81698A54@sda21(r0)
/* 8137C294 | 38 63 BA 1C */	addi r3, r3, BS2Mach_8137BA1C@l
/* 8137C298 | 48 1D 4A B9 */	bl fn_81550D50
.L_8137C29C:
/* 8137C29C | 80 0D AA 14 */	lwz r0, lbl_81698A54@sda21(r0)
/* 8137C2A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C2A4 | 41 82 FF F8 */	beq .L_8137C29C
/* 8137C2A8 | 48 1D 56 C5 */	bl fn_8155196C
/* 8137C2AC | 54 63 00 0E */	clrrwi r3, r3, 24
/* 8137C2B0 | 3C 03 FF 00 */	subis r0, r3, 0x100
/* 8137C2B4 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137C2B8 | 41 82 00 18 */	beq .L_8137C2D0
/* 8137C2BC | 48 1D 56 B1 */	bl fn_8155196C
/* 8137C2C0 | 54 63 00 0E */	clrrwi r3, r3, 24
/* 8137C2C4 | 3C 03 FD 00 */	subis r0, r3, 0x300
/* 8137C2C8 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137C2CC | 40 82 00 20 */	bne .L_8137C2EC
.L_8137C2D0:
/* 8137C2D0 | 4B FF F8 71 */	bl BS2Mach_8137BB40
/* 8137C2D4 | 48 00 00 18 */	b .L_8137C2EC
.L_8137C2D8:
/* 8137C2D8 | 48 1D 58 15 */	bl fn_81551AEC
/* 8137C2DC | 7C 64 1B 78 */	mr r4, r3
/* 8137C2E0 | 38 7E 03 C7 */	addi r3, r30, 0x3c7
/* 8137C2E4 | 4C C6 31 82 */	crclr cr1eq
/* 8137C2E8 | 48 1B 23 B9 */	bl OSReport
.L_8137C2EC:
/* 8137C2EC | 38 60 00 01 */	li r3, 0x1
/* 8137C2F0 | 48 00 50 ED */	bl DVDSetAutoFatalMessaging
/* 8137C2F4 | 48 00 51 49 */	bl __DVDPrintFatalMessage
.L_8137C2F8:
/* 8137C2F8 | 38 7E 03 DA */	addi r3, r30, 0x3da
/* 8137C2FC | 4C C6 31 82 */	crclr cr1eq
/* 8137C300 | 4B FF EC B5 */	bl BS2Report
/* 8137C304 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137C308 | 88 03 31 5D */	lbz r0, 0x315d(r3)
/* 8137C30C | 28 00 00 80 */	cmplwi r0, 0x80
/* 8137C310 | 41 82 00 24 */	beq .L_8137C334
/* 8137C314 | 3C 80 CC 00 */	lis r4, 0xcc00
/* 8137C318 | 38 00 00 02 */	li r0, 0x2
/* 8137C31C | 80 64 30 24 */	lwz r3, 0x3024(r4)
/* 8137C320 | 60 00 00 04 */	ori r0, r0, 0x4
/* 8137C324 | 60 63 00 01 */	ori r3, r3, 0x1
/* 8137C328 | 7C 60 03 78 */	or r0, r3, r0
/* 8137C32C | 90 04 30 24 */	stw r0, 0x3024(r4)
/* 8137C330 | 48 00 40 C1 */	bl enableLegacyDI
.L_8137C334:
/* 8137C334 | 48 1B 45 51 */	bl OSDisableInterrupts
/* 8137C338 | 48 1B 14 F1 */	bl fn_8152D828
/* 8137C33C | 81 8D AA A8 */	lwz r12, lbl_81698AE8@sda21(r0)
/* 8137C340 | 7D 89 03 A6 */	mtctr r12
/* 8137C344 | 4E 80 04 21 */	bctrl
/* 8137C348 | 7C 7B 1B 78 */	mr r27, r3
/* 8137C34C | 48 1A F1 65 */	bl __OSFPRInit
/* 8137C350 | 48 1B 16 D1 */	bl ICFlashInvalidate
/* 8137C354 | 7C 00 04 AC */	sync
/* 8137C358 | 4C 00 01 2C */	isync
/* 8137C35C | 7F 63 DB 78 */	mr r3, r27
/* 8137C360 | 3C 80 81 33 */	lis r4, 0x8133
/* 8137C364 | 3C A0 00 02 */	lis r5, 0x2
/* 8137C368 | 38 C0 00 00 */	li r6, 0x0
/* 8137C36C | 4B FF F0 81 */	bl BS2Mach_8137B3EC
/* 8137C370 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8137C374 | 48 27 D1 8D */	bl _restgpr_24
/* 8137C378 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8137C37C | 7C 08 03 A6 */	mtlr r0
/* 8137C380 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8137C384 | 4E 80 00 20 */	blr
.endfn BS2StartGame

# .text:0x13D4 | 0x8137C388 | size: 0x390
.fn BS2StartGCGame, global
/* 8137C388 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8137C38C | 7C 08 02 A6 */	mflr r0
/* 8137C390 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8137C394 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8137C398 | 48 27 D1 31 */	bl _savegpr_29
/* 8137C39C | 38 00 00 01 */	li r0, 0x1
/* 8137C3A0 | 3F C0 81 09 */	lis r30, Block@ha
/* 8137C3A4 | 3F E0 81 64 */	lis r31, lbl_81645DA8@ha
/* 8137C3A8 | 90 0D A9 E0 */	stw r0, StartingGame@sda21(r0)
/* 8137C3AC | 3B DE B7 20 */	addi r30, r30, Block@l
/* 8137C3B0 | 3B FF 5D A8 */	addi r31, r31, lbl_81645DA8@l
/* 8137C3B4 | 38 7E 08 40 */	addi r3, r30, 0x840
.L_8137C3B8:
/* 8137C3B8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137C3BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C3C0 | 40 82 FF F8 */	bne .L_8137C3B8
/* 8137C3C4 | 48 1E DE 85 */	bl fn_8156A248
/* 8137C3C8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137C3CC | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137C3D0 | 40 82 00 0C */	bne .L_8137C3DC
/* 8137C3D4 | 38 60 00 01 */	li r3, 0x1
/* 8137C3D8 | 48 00 00 0C */	b .L_8137C3E4
.L_8137C3DC:
/* 8137C3DC | 48 1E DE 6D */	bl fn_8156A248
/* 8137C3E0 | 54 63 06 3E */	clrlwi r3, r3, 24
.L_8137C3E4:
/* 8137C3E4 | 48 1B 6F 7D */	bl fn_81533360
/* 8137C3E8 | 48 1E E7 B5 */	bl fn_8156AB9C
/* 8137C3EC | 7C 60 07 74 */	extsb r0, r3
/* 8137C3F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137C3F4 | 41 82 00 30 */	beq .L_8137C424
/* 8137C3F8 | 48 1E DD 99 */	bl fn_8156A190
/* 8137C3FC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8137C400 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8137C404 | 7C 00 00 34 */	cntlzw r0, r0
/* 8137C408 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8137C40C | 48 1B 70 51 */	bl fn_8153345C
/* 8137C410 | 38 60 00 00 */	li r3, 0x0
/* 8137C414 | 48 1B 71 DD */	bl fn_815335F0
/* 8137C418 | 38 60 00 00 */	li r3, 0x0
/* 8137C41C | 48 1B 72 C5 */	bl fn_815336E0
/* 8137C420 | 48 00 00 4C */	b .L_8137C46C
.L_8137C424:
/* 8137C424 | 48 1E DC E1 */	bl SCGetLanguage
/* 8137C428 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137C42C | 28 00 00 06 */	cmplwi r0, 0x6
/* 8137C430 | 40 81 00 10 */	ble .L_8137C440
/* 8137C434 | 38 60 00 00 */	li r3, 0x0
/* 8137C438 | 48 1B 71 B9 */	bl fn_815335F0
/* 8137C43C | 48 00 00 18 */	b .L_8137C454
.L_8137C440:
/* 8137C440 | 48 1E DC C5 */	bl SCGetLanguage
/* 8137C444 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8137C448 | 38 6D 85 44 */	li r3, lbl_81696584@sda21
/* 8137C44C | 7C 63 00 AE */	lbzx r3, r3, r0
/* 8137C450 | 48 1B 71 A1 */	bl fn_815335F0
.L_8137C454:
/* 8137C454 | 48 1E DC 3D */	bl fn_8156A090
/* 8137C458 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8137C45C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8137C460 | 7C 00 00 34 */	cntlzw r0, r0
/* 8137C464 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8137C468 | 48 1B 72 79 */	bl fn_815336E0
.L_8137C46C:
/* 8137C46C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8137C470 | 48 1B 62 0D */	bl __OSGetRTC
/* 8137C474 | 48 1E DE 41 */	bl SCGetCounterBias
/* 8137C478 | 3C 80 80 00 */	lis r4, 0x8000
/* 8137C47C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8137C480 | 80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 8137C484 | 38 C0 00 00 */	li r6, 0x0
/* 8137C488 | 7C E5 1A 14 */	add r7, r5, r3
/* 8137C48C | 54 05 F0 BE */	srwi r5, r0, 2
/* 8137C490 | 7C 65 38 16 */	mulhwu r3, r5, r7
/* 8137C494 | 7C 86 39 D6 */	mullw r4, r6, r7
/* 8137C498 | 7C 63 22 14 */	add r3, r3, r4
/* 8137C49C | 7C 05 31 D6 */	mullw r0, r5, r6
/* 8137C4A0 | 7C 85 39 D6 */	mullw r4, r5, r7
/* 8137C4A4 | 7C 63 02 14 */	add r3, r3, r0
/* 8137C4A8 | 48 1B 98 0D */	bl fn_81535CB4
/* 8137C4AC | 48 1B 68 45 */	bl fn_81532CF0
/* 8137C4B0 | 7C 7D 1B 78 */	mr r29, r3
/* 8137C4B4 | 48 1E DB 5D */	bl fn_8156A010
/* 8137C4B8 | 98 7D 00 10 */	stb r3, 0x10(r29)
/* 8137C4BC | 48 1E DD F9 */	bl SCGetCounterBias
/* 8137C4C0 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8137C4C4 | 38 60 00 01 */	li r3, 0x1
/* 8137C4C8 | 88 1D 00 13 */	lbz r0, 0x13(r29)
/* 8137C4CC | 60 00 00 20 */	ori r0, r0, 0x20
/* 8137C4D0 | 98 1D 00 13 */	stb r0, 0x13(r29)
/* 8137C4D4 | 48 1B 6B 9D */	bl fn_81533070
.L_8137C4D8:
/* 8137C4D8 | 48 1B 6B A9 */	bl __OSSyncSram
/* 8137C4DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C4E0 | 41 82 FF F8 */	beq .L_8137C4D8
/* 8137C4E4 | 38 00 00 01 */	li r0, 0x1
/* 8137C4E8 | 3C 80 81 38 */	lis r4, BS2NANDCallback@ha
/* 8137C4EC | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137C4F0 | 38 7E 08 70 */	addi r3, r30, 0x870
/* 8137C4F4 | 38 84 B0 04 */	addi r4, r4, BS2NANDCallback@l
/* 8137C4F8 | 38 BE 08 FC */	addi r5, r30, 0x8fc
/* 8137C4FC | 48 1E 90 5D */	bl NANDCloseAsync
/* 8137C500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C504 | 40 82 00 28 */	bne .L_8137C52C
.L_8137C508:
/* 8137C508 | 80 0D AA 0C */	lwz r0, lbl_81698A4C@sda21(r0)
/* 8137C50C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C510 | 40 82 FF F8 */	bne .L_8137C508
/* 8137C514 | 80 0D AA 04 */	lwz r0, lbl_81698A44@sda21(r0)
/* 8137C518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C51C | 41 82 00 20 */	beq .L_8137C53C
/* 8137C520 | 38 7F 02 57 */	addi r3, r31, 0x257
/* 8137C524 | 48 1E 78 D5 */	bl NANDDelete
/* 8137C528 | 48 00 00 14 */	b .L_8137C53C
.L_8137C52C:
/* 8137C52C | 7C 64 1B 78 */	mr r4, r3
/* 8137C530 | 38 7F 02 7F */	addi r3, r31, 0x27f
/* 8137C534 | 4C C6 31 82 */	crclr cr1eq
/* 8137C538 | 48 1B 21 69 */	bl OSReport
.L_8137C53C:
/* 8137C53C | 48 1F AE 85 */	bl fn_815773C0
/* 8137C540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C544 | 41 82 FF F8 */	beq .L_8137C53C
/* 8137C548 | 48 1B 43 3D */	bl OSDisableInterrupts
/* 8137C54C | 48 1B 12 DD */	bl fn_8152D828
/* 8137C550 | 48 1B 43 49 */	bl fn_81530898
/* 8137C554 | 80 6D A9 C0 */	lwz r3, BS2VideoMode@sda21(r0)
/* 8137C558 | 48 1B 6F 95 */	bl fn_815334EC
.L_8137C55C:
/* 8137C55C | 48 1B 6B 25 */	bl __OSSyncSram
/* 8137C560 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C564 | 41 82 FF F8 */	beq .L_8137C55C
/* 8137C568 | 48 1B A6 2D */	bl fn_81536B94
/* 8137C56C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8137C570 | 48 1B B2 95 */	bl fn_81537804
/* 8137C574 | 38 60 00 82 */	li r3, 0x82
/* 8137C578 | 38 80 00 FF */	li r4, 0xff
/* 8137C57C | 38 00 00 02 */	li r0, 0x2
/* 8137C580 | 98 61 00 14 */	stb r3, 0x14(r1)
/* 8137C584 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8137C588 | 98 81 00 15 */	stb r4, 0x15(r1)
/* 8137C58C | 98 01 00 16 */	stb r0, 0x16(r1)
/* 8137C590 | 48 1B B1 91 */	bl fn_81537720
/* 8137C594 | 48 1B 74 0D */	bl fn_815339A0
/* 8137C598 | 3C E0 CC 00 */	lis r7, 0xcc00
/* 8137C59C | 38 00 00 01 */	li r0, 0x1
/* 8137C5A0 | 80 87 30 24 */	lwz r4, 0x3024(r7)
/* 8137C5A4 | 38 7F 02 E8 */	addi r3, r31, 0x2e8
/* 8137C5A8 | 38 C0 01 00 */	li r6, 0x100
/* 8137C5AC | 38 A0 00 01 */	li r5, 0x1
/* 8137C5B0 | 60 84 00 07 */	ori r4, r4, 0x7
/* 8137C5B4 | 90 87 30 24 */	stw r4, 0x3024(r7)
/* 8137C5B8 | 80 87 30 24 */	lwz r4, 0x3024(r7)
/* 8137C5BC | 83 CD 85 38 */	lwz r30, lbl_81696578@sda21(r0)
/* 8137C5C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8137C5C4 | 4C C6 31 82 */	crclr cr1eq
/* 8137C5C8 | 4B FF E9 ED */	bl BS2Report
/* 8137C5CC | 48 24 13 D5 */	bl ES_InitLib
/* 8137C5D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C5D4 | 41 82 00 28 */	beq .L_8137C5FC
/* 8137C5D8 | 7C 64 1B 78 */	mr r4, r3
/* 8137C5DC | 38 7F 02 A9 */	addi r3, r31, 0x2a9
/* 8137C5E0 | 4C C6 31 82 */	crclr cr1eq
/* 8137C5E4 | 48 1B 20 BD */	bl OSReport
/* 8137C5E8 | 38 7F 02 CA */	addi r3, r31, 0x2ca
/* 8137C5EC | 38 BF 02 D4 */	addi r5, r31, 0x2d4
/* 8137C5F0 | 38 80 0C 40 */	li r4, 0xc40
/* 8137C5F4 | 4C C6 31 82 */	crclr cr1eq
/* 8137C5F8 | 48 1B 21 39 */	bl OSPanic
.L_8137C5FC:
/* 8137C5FC | 38 7F 02 E8 */	addi r3, r31, 0x2e8
/* 8137C600 | 38 C0 01 00 */	li r6, 0x100
/* 8137C604 | 38 A0 00 01 */	li r5, 0x1
/* 8137C608 | 4C C6 31 82 */	crclr cr1eq
/* 8137C60C | 4B FF E9 A9 */	bl BS2Report
/* 8137C610 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8137C614 | 38 80 01 00 */	li r4, 0x100
/* 8137C618 | 38 60 00 01 */	li r3, 0x1
/* 8137C61C | 38 A0 00 00 */	li r5, 0x0
/* 8137C620 | 48 24 22 E9 */	bl fn_815BE908
/* 8137C624 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137C628 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137C62C | 40 82 00 0C */	bne .L_8137C638
/* 8137C630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C634 | 41 82 00 28 */	beq .L_8137C65C
.L_8137C638:
/* 8137C638 | 7C 64 1B 78 */	mr r4, r3
/* 8137C63C | 38 7F 02 A9 */	addi r3, r31, 0x2a9
/* 8137C640 | 4C C6 31 82 */	crclr cr1eq
/* 8137C644 | 48 1B 20 5D */	bl OSReport
/* 8137C648 | 38 7F 02 CA */	addi r3, r31, 0x2ca
/* 8137C64C | 38 BF 02 D4 */	addi r5, r31, 0x2d4
/* 8137C650 | 38 80 0C 4A */	li r4, 0xc4a
/* 8137C654 | 4C C6 31 82 */	crclr cr1eq
/* 8137C658 | 48 1B 20 D9 */	bl OSPanic
.L_8137C65C:
/* 8137C65C | 7F C5 F3 78 */	mr r5, r30
/* 8137C660 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8137C664 | 38 80 01 00 */	li r4, 0x100
/* 8137C668 | 38 60 00 01 */	li r3, 0x1
/* 8137C66C | 48 24 22 9D */	bl fn_815BE908
/* 8137C670 | 7C 7D 1B 78 */	mr r29, r3
/* 8137C674 | 38 7F 03 00 */	addi r3, r31, 0x300
/* 8137C678 | 7F A4 EB 78 */	mr r4, r29
/* 8137C67C | 4C C6 31 82 */	crclr cr1eq
/* 8137C680 | 4B FF E9 35 */	bl BS2Report
/* 8137C684 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8137C688 | 41 82 00 28 */	beq .L_8137C6B0
/* 8137C68C | 7F A4 EB 78 */	mr r4, r29
/* 8137C690 | 38 7F 02 A9 */	addi r3, r31, 0x2a9
/* 8137C694 | 4C C6 31 82 */	crclr cr1eq
/* 8137C698 | 48 1B 20 09 */	bl OSReport
/* 8137C69C | 38 7F 02 CA */	addi r3, r31, 0x2ca
/* 8137C6A0 | 38 BF 02 D4 */	addi r5, r31, 0x2d4
/* 8137C6A4 | 38 80 0C 54 */	li r4, 0xc54
/* 8137C6A8 | 4C C6 31 82 */	crclr cr1eq
/* 8137C6AC | 48 1B 20 85 */	bl OSPanic
.L_8137C6B0:
/* 8137C6B0 | 7F C5 F3 78 */	mr r5, r30
/* 8137C6B4 | 38 80 01 00 */	li r4, 0x100
/* 8137C6B8 | 38 60 00 01 */	li r3, 0x1
/* 8137C6BC | 48 24 19 FD */	bl ES_LaunchTitle
/* 8137C6C0 | 7C 7D 1B 78 */	mr r29, r3
/* 8137C6C4 | 38 7F 03 19 */	addi r3, r31, 0x319
/* 8137C6C8 | 7F A4 EB 78 */	mr r4, r29
/* 8137C6CC | 4C C6 31 82 */	crclr cr1eq
/* 8137C6D0 | 4B FF E8 E5 */	bl BS2Report
/* 8137C6D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8137C6D8 | 41 82 00 28 */	beq .L_8137C700
/* 8137C6DC | 7F A4 EB 78 */	mr r4, r29
/* 8137C6E0 | 38 7F 02 A9 */	addi r3, r31, 0x2a9
/* 8137C6E4 | 4C C6 31 82 */	crclr cr1eq
/* 8137C6E8 | 48 1B 1F B9 */	bl OSReport
/* 8137C6EC | 38 7F 02 CA */	addi r3, r31, 0x2ca
/* 8137C6F0 | 38 BF 02 D4 */	addi r5, r31, 0x2d4
/* 8137C6F4 | 38 80 0C 5D */	li r4, 0xc5d
/* 8137C6F8 | 4C C6 31 82 */	crclr cr1eq
/* 8137C6FC | 48 1B 20 35 */	bl OSPanic
.L_8137C700:
/* 8137C700 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8137C704 | 48 27 CE 11 */	bl _restgpr_29
/* 8137C708 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8137C70C | 7C 08 03 A6 */	mtlr r0
/* 8137C710 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8137C714 | 4E 80 00 20 */	blr
.endfn BS2StartGCGame

# .text:0x1764 | 0x8137C718 | size: 0x198
.fn BS2Mach_8137C718, local
/* 8137C718 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137C71C | 7C 08 02 A6 */	mflr r0
/* 8137C720 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137C724 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137C728 | 7C 7F 1B 78 */	mr r31, r3
/* 8137C72C | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137C730 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 8137C734 | 40 82 00 0C */	bne .L_8137C740
/* 8137C738 | 38 60 00 01 */	li r3, 0x1
/* 8137C73C | 48 00 01 60 */	b .L_8137C89C
.L_8137C740:
/* 8137C740 | 2C 00 00 43 */	cmpwi r0, 0x43
/* 8137C744 | 40 82 00 1C */	bne .L_8137C760
/* 8137C748 | 48 1D 4F 39 */	bl fn_81551680
/* 8137C74C | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 8137C750 | 38 00 00 44 */	li r0, 0x44
/* 8137C754 | 41 82 00 08 */	beq .L_8137C75C
/* 8137C758 | 38 00 00 34 */	li r0, 0x34
.L_8137C75C:
/* 8137C75C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137C760:
/* 8137C760 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8137C764 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137C768 | 28 00 00 0C */	cmplwi r0, 0xc
/* 8137C76C | 41 81 00 D0 */	bgt .L_8137C83C
/* 8137C770 | 3C 60 81 64 */	lis r3, jumptable_8164619C@ha
/* 8137C774 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137C778 | 38 63 61 9C */	addi r3, r3, jumptable_8164619C@l
/* 8137C77C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8137C780 | 7C 69 03 A6 */	mtctr r3
/* 8137C784 | 4E 80 04 20 */	bctr
.L_8137C788:
/* 8137C788 | 38 60 00 01 */	li r3, 0x1
/* 8137C78C | 48 00 01 10 */	b .L_8137C89C
.L_8137C790:
/* 8137C790 | 38 00 00 33 */	li r0, 0x33
/* 8137C794 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C798 | 48 00 00 A4 */	b .L_8137C83C
.L_8137C79C:
/* 8137C79C | 80 6D A9 C8 */	lwz r3, CurrentState@sda21(r0)
/* 8137C7A0 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 8137C7A4 | 41 82 00 10 */	beq .L_8137C7B4
/* 8137C7A8 | 38 03 FF F7 */	subi r0, r3, 0x9
/* 8137C7AC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137C7B0 | 41 81 00 1C */	bgt .L_8137C7CC
.L_8137C7B4:
/* 8137C7B4 | 48 1B 95 85 */	bl __OSGetSystemTime
/* 8137C7B8 | 38 00 00 42 */	li r0, 0x42
/* 8137C7BC | 90 8D AA 6C */	stw r4, lbl_81698AAC@sda21(r0)
/* 8137C7C0 | 90 6D AA 68 */	stw r3, lbl_81698AA8@sda21(r0)
/* 8137C7C4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C7C8 | 48 00 00 74 */	b .L_8137C83C
.L_8137C7CC:
/* 8137C7CC | 38 00 00 34 */	li r0, 0x34
/* 8137C7D0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C7D4 | 48 00 00 68 */	b .L_8137C83C
.L_8137C7D8:
/* 8137C7D8 | 38 60 00 39 */	li r3, 0x39
/* 8137C7DC | 38 00 00 01 */	li r0, 0x1
/* 8137C7E0 | 90 6D A9 C8 */	stw r3, CurrentState@sda21(r0)
/* 8137C7E4 | 90 0D A9 F4 */	stw r0, FatalErrorFlag@sda21(r0)
/* 8137C7E8 | 48 00 00 54 */	b .L_8137C83C
.L_8137C7EC:
/* 8137C7EC | 38 00 00 3B */	li r0, 0x3b
/* 8137C7F0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C7F4 | 48 00 00 48 */	b .L_8137C83C
.L_8137C7F8:
/* 8137C7F8 | 48 1D 14 61 */	bl fn_8154DC58
/* 8137C7FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C800 | 41 82 00 10 */	beq .L_8137C810
/* 8137C804 | 38 00 00 02 */	li r0, 0x2
/* 8137C808 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C80C | 48 00 00 30 */	b .L_8137C83C
.L_8137C810:
/* 8137C810 | 80 0D A9 E8 */	lwz r0, lbl_81698A28@sda21(r0)
/* 8137C814 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C818 | 41 82 00 10 */	beq .L_8137C828
/* 8137C81C | 38 00 00 3D */	li r0, 0x3d
/* 8137C820 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C824 | 48 00 00 18 */	b .L_8137C83C
.L_8137C828:
/* 8137C828 | 38 00 00 3F */	li r0, 0x3f
/* 8137C82C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137C830 | 48 00 00 0C */	b .L_8137C83C
.L_8137C834:
/* 8137C834 | 38 00 00 38 */	li r0, 0x38
/* 8137C838 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137C83C:
/* 8137C83C | 80 0D AA 00 */	lwz r0, AbortFlag@sda21(r0)
/* 8137C840 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C844 | 41 82 00 54 */	beq .L_8137C898
/* 8137C848 | 80 6D A9 C8 */	lwz r3, CurrentState@sda21(r0)
/* 8137C84C | 2C 03 00 34 */	cmpwi r3, 0x34
/* 8137C850 | 41 82 00 30 */	beq .L_8137C880
/* 8137C854 | 2C 03 00 35 */	cmpwi r3, 0x35
/* 8137C858 | 41 82 00 28 */	beq .L_8137C880
/* 8137C85C | 2C 03 00 37 */	cmpwi r3, 0x37
/* 8137C860 | 41 82 00 20 */	beq .L_8137C880
/* 8137C864 | 2C 03 00 38 */	cmpwi r3, 0x38
/* 8137C868 | 41 82 00 18 */	beq .L_8137C880
/* 8137C86C | 2C 03 00 44 */	cmpwi r3, 0x44
/* 8137C870 | 41 82 00 10 */	beq .L_8137C880
/* 8137C874 | 38 03 FF C7 */	subi r0, r3, 0x39
/* 8137C878 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137C87C | 41 81 00 1C */	bgt .L_8137C898
.L_8137C880:
/* 8137C880 | 38 80 00 00 */	li r4, 0x0
/* 8137C884 | 38 00 00 40 */	li r0, 0x40
/* 8137C888 | 38 60 00 01 */	li r3, 0x1
/* 8137C88C | 90 8D A9 9C */	stw r4, BS2BootFromCache@sda21(r0)
/* 8137C890 | 90 6D 84 D8 */	stw r3, BS2BootCaching@sda21(r0)
/* 8137C894 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137C898:
/* 8137C898 | 38 60 00 00 */	li r3, 0x0
.L_8137C89C:
/* 8137C89C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137C8A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137C8A4 | 7C 08 03 A6 */	mtlr r0
/* 8137C8A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137C8AC | 4E 80 00 20 */	blr
.endfn BS2Mach_8137C718

# .text:0x18FC | 0x8137C8B0 | size: 0x200
.fn BS2Mach_8137C8B0, local
/* 8137C8B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137C8B4 | 7C 08 02 A6 */	mflr r0
/* 8137C8B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137C8BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137C8C0 | 7C 9F 23 78 */	mr r31, r4
/* 8137C8C4 | 80 0D AA 10 */	lwz r0, lbl_81698A50@sda21(r0)
/* 8137C8C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137C8CC | 41 82 00 20 */	beq .L_8137C8EC
/* 8137C8D0 | 38 00 00 00 */	li r0, 0x0
/* 8137C8D4 | 38 60 00 00 */	li r3, 0x0
/* 8137C8D8 | 90 0D AA 10 */	stw r0, lbl_81698A50@sda21(r0)
/* 8137C8DC | 81 8D AA 84 */	lwz r12, lbl_81698AC4@sda21(r0)
/* 8137C8E0 | 7D 89 03 A6 */	mtctr r12
/* 8137C8E4 | 4E 80 04 21 */	bctrl
/* 8137C8E8 | 48 00 01 B4 */	b .L_8137CA9C
.L_8137C8EC:
/* 8137C8EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C8F0 | 40 80 00 14 */	bge .L_8137C904
/* 8137C8F4 | 81 8D AA 84 */	lwz r12, lbl_81698AC4@sda21(r0)
/* 8137C8F8 | 7D 89 03 A6 */	mtctr r12
/* 8137C8FC | 4E 80 04 21 */	bctrl
/* 8137C900 | 48 00 01 9C */	b .L_8137CA9C
.L_8137C904:
/* 8137C904 | 80 AD AA 70 */	lwz r5, lbl_81698AB0@sda21(r0)
/* 8137C908 | 3C 00 00 04 */	lis r0, 0x4
/* 8137C90C | 80 CD AA 78 */	lwz r6, lbl_81698AB8@sda21(r0)
/* 8137C910 | 7C A5 1A 14 */	add r5, r5, r3
/* 8137C914 | 90 AD AA 70 */	stw r5, lbl_81698AB0@sda21(r0)
/* 8137C918 | 7C C6 1A 14 */	add r6, r6, r3
/* 8137C91C | 80 AD AA 70 */	lwz r5, lbl_81698AB0@sda21(r0)
/* 8137C920 | 80 6D AA 74 */	lwz r3, lbl_81698AB4@sda21(r0)
/* 8137C924 | 90 CD AA 78 */	stw r6, lbl_81698AB8@sda21(r0)
/* 8137C928 | 7C 65 18 50 */	subf r3, r5, r3
/* 8137C92C | 7C 03 00 40 */	cmplw r3, r0
/* 8137C930 | 40 81 00 98 */	ble .L_8137C9C8
/* 8137C934 | 80 0D AA 80 */	lwz r0, lbl_81698AC0@sda21(r0)
/* 8137C938 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137C93C | 40 82 00 3C */	bne .L_8137C978
/* 8137C940 | 3C 60 81 64 */	lis r3, lbl_816461D0@ha
/* 8137C944 | 7C C4 33 78 */	mr r4, r6
/* 8137C948 | 38 63 61 D0 */	addi r3, r3, lbl_816461D0@l
/* 8137C94C | 3C A0 00 04 */	lis r5, 0x4
/* 8137C950 | 4C C6 31 82 */	crclr cr1eq
/* 8137C954 | 4B FF E6 61 */	bl BS2Report
/* 8137C958 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137C95C | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137C960 | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137C964 | 7F E7 FB 78 */	mr r7, r31
/* 8137C968 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137C96C | 3C A0 00 04 */	lis r5, 0x4
/* 8137C970 | 48 1E 77 D9 */	bl NANDWriteAsync
/* 8137C974 | 48 00 00 38 */	b .L_8137C9AC
.L_8137C978:
/* 8137C978 | 3C 60 81 64 */	lis r3, lbl_816461FA@ha
/* 8137C97C | 7C C4 33 78 */	mr r4, r6
/* 8137C980 | 38 63 61 FA */	addi r3, r3, lbl_816461FA@l
/* 8137C984 | 3C A0 00 04 */	lis r5, 0x4
/* 8137C988 | 4C C6 31 82 */	crclr cr1eq
/* 8137C98C | 4B FF E6 29 */	bl BS2Report
/* 8137C990 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137C994 | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137C998 | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137C99C | 7F E7 FB 78 */	mr r7, r31
/* 8137C9A0 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137C9A4 | 3C A0 00 04 */	lis r5, 0x4
/* 8137C9A8 | 48 1E 76 C1 */	bl NANDReadAsync
.L_8137C9AC:
/* 8137C9AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137C9B0 | 40 80 00 EC */	bge .L_8137CA9C
/* 8137C9B4 | 81 8D AA 84 */	lwz r12, lbl_81698AC4@sda21(r0)
/* 8137C9B8 | 7F E4 FB 78 */	mr r4, r31
/* 8137C9BC | 7D 89 03 A6 */	mtctr r12
/* 8137C9C0 | 4E 80 04 21 */	bctrl
/* 8137C9C4 | 48 00 00 D8 */	b .L_8137CA9C
.L_8137C9C8:
/* 8137C9C8 | 80 6D AA 70 */	lwz r3, lbl_81698AB0@sda21(r0)
/* 8137C9CC | 80 0D AA 74 */	lwz r0, lbl_81698AB4@sda21(r0)
/* 8137C9D0 | 7C 03 00 51 */	subf. r0, r3, r0
/* 8137C9D4 | 41 82 00 B8 */	beq .L_8137CA8C
/* 8137C9D8 | 80 0D AA 80 */	lwz r0, lbl_81698AC0@sda21(r0)
/* 8137C9DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137C9E0 | 40 82 00 4C */	bne .L_8137CA2C
/* 8137C9E4 | 80 AD AA 70 */	lwz r5, lbl_81698AB0@sda21(r0)
/* 8137C9E8 | 3C 60 81 64 */	lis r3, lbl_816461D0@ha
/* 8137C9EC | 80 0D AA 74 */	lwz r0, lbl_81698AB4@sda21(r0)
/* 8137C9F0 | 7C C4 33 78 */	mr r4, r6
/* 8137C9F4 | 38 63 61 D0 */	addi r3, r3, lbl_816461D0@l
/* 8137C9F8 | 7C A5 00 50 */	subf r5, r5, r0
/* 8137C9FC | 4C C6 31 82 */	crclr cr1eq
/* 8137CA00 | 4B FF E5 B5 */	bl BS2Report
/* 8137CA04 | 80 AD AA 70 */	lwz r5, lbl_81698AB0@sda21(r0)
/* 8137CA08 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137CA0C | 80 0D AA 74 */	lwz r0, lbl_81698AB4@sda21(r0)
/* 8137CA10 | 7F E7 FB 78 */	mr r7, r31
/* 8137CA14 | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137CA18 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137CA1C | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137CA20 | 7C A5 00 50 */	subf r5, r5, r0
/* 8137CA24 | 48 1E 77 25 */	bl NANDWriteAsync
/* 8137CA28 | 48 00 00 48 */	b .L_8137CA70
.L_8137CA2C:
/* 8137CA2C | 80 AD AA 70 */	lwz r5, lbl_81698AB0@sda21(r0)
/* 8137CA30 | 3C 60 81 64 */	lis r3, lbl_816461FA@ha
/* 8137CA34 | 80 0D AA 74 */	lwz r0, lbl_81698AB4@sda21(r0)
/* 8137CA38 | 7C C4 33 78 */	mr r4, r6
/* 8137CA3C | 38 63 61 FA */	addi r3, r3, lbl_816461FA@l
/* 8137CA40 | 7C A5 00 50 */	subf r5, r5, r0
/* 8137CA44 | 4C C6 31 82 */	crclr cr1eq
/* 8137CA48 | 4B FF E5 6D */	bl BS2Report
/* 8137CA4C | 80 AD AA 70 */	lwz r5, lbl_81698AB0@sda21(r0)
/* 8137CA50 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137CA54 | 80 0D AA 74 */	lwz r0, lbl_81698AB4@sda21(r0)
/* 8137CA58 | 7F E7 FB 78 */	mr r7, r31
/* 8137CA5C | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137CA60 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137CA64 | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137CA68 | 7C A5 00 50 */	subf r5, r5, r0
/* 8137CA6C | 48 1E 75 FD */	bl NANDReadAsync
.L_8137CA70:
/* 8137CA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137CA74 | 40 80 00 28 */	bge .L_8137CA9C
/* 8137CA78 | 81 8D AA 84 */	lwz r12, lbl_81698AC4@sda21(r0)
/* 8137CA7C | 7F E4 FB 78 */	mr r4, r31
/* 8137CA80 | 7D 89 03 A6 */	mtctr r12
/* 8137CA84 | 4E 80 04 21 */	bctrl
/* 8137CA88 | 48 00 00 14 */	b .L_8137CA9C
.L_8137CA8C:
/* 8137CA8C | 80 6D AA 74 */	lwz r3, lbl_81698AB4@sda21(r0)
/* 8137CA90 | 81 8D AA 84 */	lwz r12, lbl_81698AC4@sda21(r0)
/* 8137CA94 | 7D 89 03 A6 */	mtctr r12
/* 8137CA98 | 4E 80 04 21 */	bctrl
.L_8137CA9C:
/* 8137CA9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137CAA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137CAA4 | 7C 08 03 A6 */	mtlr r0
/* 8137CAA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137CAAC | 4E 80 00 20 */	blr
.endfn BS2Mach_8137C8B0

# .text:0x1AFC | 0x8137CAB0 | size: 0xBC
.fn BS2Mach_8137CAB0, local
/* 8137CAB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137CAB4 | 7C 08 02 A6 */	mflr r0
/* 8137CAB8 | 39 00 00 02 */	li r8, 0x2
/* 8137CABC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137CAC0 | 3C 00 00 04 */	lis r0, 0x4
/* 8137CAC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137CAC8 | 7C FF 3B 78 */	mr r31, r7
/* 8137CACC | 90 CD AA 84 */	stw r6, lbl_81698AC4@sda21(r0)
/* 8137CAD0 | 38 C0 00 00 */	li r6, 0x0
/* 8137CAD4 | 91 0D AA 80 */	stw r8, lbl_81698AC0@sda21(r0)
/* 8137CAD8 | 90 AD AA 74 */	stw r5, lbl_81698AB4@sda21(r0)
/* 8137CADC | 90 CD AA 70 */	stw r6, lbl_81698AB0@sda21(r0)
/* 8137CAE0 | 80 AD AA 74 */	lwz r5, lbl_81698AB4@sda21(r0)
/* 8137CAE4 | 90 6D AA 7C */	stw r3, lbl_81698ABC@sda21(r0)
/* 8137CAE8 | 7C 05 00 40 */	cmplw r5, r0
/* 8137CAEC | 90 8D AA 78 */	stw r4, lbl_81698AB8@sda21(r0)
/* 8137CAF0 | 40 81 00 38 */	ble .L_8137CB28
/* 8137CAF4 | 3C 60 81 64 */	lis r3, lbl_816461FA@ha
/* 8137CAF8 | 3C A0 00 04 */	lis r5, 0x4
/* 8137CAFC | 38 63 61 FA */	addi r3, r3, lbl_816461FA@l
/* 8137CB00 | 4C C6 31 82 */	crclr cr1eq
/* 8137CB04 | 4B FF E4 B1 */	bl BS2Report
/* 8137CB08 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137CB0C | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137CB10 | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137CB14 | 7F E7 FB 78 */	mr r7, r31
/* 8137CB18 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137CB1C | 3C A0 00 04 */	lis r5, 0x4
/* 8137CB20 | 48 1E 75 49 */	bl NANDReadAsync
/* 8137CB24 | 48 00 00 34 */	b .L_8137CB58
.L_8137CB28:
/* 8137CB28 | 3C 60 81 64 */	lis r3, lbl_816461FA@ha
/* 8137CB2C | 80 AD AA 74 */	lwz r5, lbl_81698AB4@sda21(r0)
/* 8137CB30 | 38 63 61 FA */	addi r3, r3, lbl_816461FA@l
/* 8137CB34 | 4C C6 31 82 */	crclr cr1eq
/* 8137CB38 | 4B FF E4 7D */	bl BS2Report
/* 8137CB3C | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137CB40 | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137CB44 | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137CB48 | 7F E7 FB 78 */	mr r7, r31
/* 8137CB4C | 80 AD AA 74 */	lwz r5, lbl_81698AB4@sda21(r0)
/* 8137CB50 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137CB54 | 48 1E 75 15 */	bl NANDReadAsync
.L_8137CB58:
/* 8137CB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137CB5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137CB60 | 7C 08 03 A6 */	mtlr r0
/* 8137CB64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137CB68 | 4E 80 00 20 */	blr
.endfn BS2Mach_8137CAB0

# .text:0x1BB8 | 0x8137CB6C | size: 0xBC
.fn BS2Mach_8137CB6C, local
/* 8137CB6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137CB70 | 7C 08 02 A6 */	mflr r0
/* 8137CB74 | 39 00 00 01 */	li r8, 0x1
/* 8137CB78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137CB7C | 3C 00 00 04 */	lis r0, 0x4
/* 8137CB80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137CB84 | 7C FF 3B 78 */	mr r31, r7
/* 8137CB88 | 90 CD AA 84 */	stw r6, lbl_81698AC4@sda21(r0)
/* 8137CB8C | 38 C0 00 00 */	li r6, 0x0
/* 8137CB90 | 91 0D AA 80 */	stw r8, lbl_81698AC0@sda21(r0)
/* 8137CB94 | 90 AD AA 74 */	stw r5, lbl_81698AB4@sda21(r0)
/* 8137CB98 | 90 CD AA 70 */	stw r6, lbl_81698AB0@sda21(r0)
/* 8137CB9C | 80 AD AA 74 */	lwz r5, lbl_81698AB4@sda21(r0)
/* 8137CBA0 | 90 6D AA 7C */	stw r3, lbl_81698ABC@sda21(r0)
/* 8137CBA4 | 7C 05 00 40 */	cmplw r5, r0
/* 8137CBA8 | 90 8D AA 78 */	stw r4, lbl_81698AB8@sda21(r0)
/* 8137CBAC | 40 81 00 38 */	ble .L_8137CBE4
/* 8137CBB0 | 3C 60 81 64 */	lis r3, lbl_816461D0@ha
/* 8137CBB4 | 3C A0 00 04 */	lis r5, 0x4
/* 8137CBB8 | 38 63 61 D0 */	addi r3, r3, lbl_816461D0@l
/* 8137CBBC | 4C C6 31 82 */	crclr cr1eq
/* 8137CBC0 | 4B FF E3 F5 */	bl BS2Report
/* 8137CBC4 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137CBC8 | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137CBCC | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137CBD0 | 7F E7 FB 78 */	mr r7, r31
/* 8137CBD4 | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137CBD8 | 3C A0 00 04 */	lis r5, 0x4
/* 8137CBDC | 48 1E 75 6D */	bl NANDWriteAsync
/* 8137CBE0 | 48 00 00 34 */	b .L_8137CC14
.L_8137CBE4:
/* 8137CBE4 | 3C 60 81 64 */	lis r3, lbl_816461D0@ha
/* 8137CBE8 | 80 AD AA 74 */	lwz r5, lbl_81698AB4@sda21(r0)
/* 8137CBEC | 38 63 61 D0 */	addi r3, r3, lbl_816461D0@l
/* 8137CBF0 | 4C C6 31 82 */	crclr cr1eq
/* 8137CBF4 | 4B FF E3 C1 */	bl BS2Report
/* 8137CBF8 | 3C C0 81 38 */	lis r6, BS2Mach_8137C8B0@ha
/* 8137CBFC | 80 6D AA 7C */	lwz r3, lbl_81698ABC@sda21(r0)
/* 8137CC00 | 80 8D AA 78 */	lwz r4, lbl_81698AB8@sda21(r0)
/* 8137CC04 | 7F E7 FB 78 */	mr r7, r31
/* 8137CC08 | 80 AD AA 74 */	lwz r5, lbl_81698AB4@sda21(r0)
/* 8137CC0C | 38 C6 C8 B0 */	addi r6, r6, BS2Mach_8137C8B0@l
/* 8137CC10 | 48 1E 75 39 */	bl NANDWriteAsync
.L_8137CC14:
/* 8137CC14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137CC18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137CC1C | 7C 08 03 A6 */	mtlr r0
/* 8137CC20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137CC24 | 4E 80 00 20 */	blr
.endfn BS2Mach_8137CB6C

# .text:0x1C74 | 0x8137CC28 | size: 0x658
.fn CheckBS2CommandStatus, local
/* 8137CC28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137CC2C | 7C 08 02 A6 */	mflr r0
/* 8137CC30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137CC34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137CC38 | 48 27 C8 91 */	bl _savegpr_29
/* 8137CC3C | 3F A0 81 09 */	lis r29, Block@ha
/* 8137CC40 | 3F C0 81 64 */	lis r30, lbl_81645DA8@ha
/* 8137CC44 | 3B BD B7 20 */	addi r29, r29, Block@l
/* 8137CC48 | 3B DE 5D A8 */	addi r30, r30, lbl_81645DA8@l
/* 8137CC4C | 3F FD 00 02 */	addis r31, r29, 0x2
/* 8137CC50 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137CC54 | 4B FF FA C5 */	bl BS2Mach_8137C718
/* 8137CC58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137CC5C | 40 82 00 18 */	bne .L_8137CC74
/* 8137CC60 | 38 7E 04 7B */	addi r3, r30, 0x47b
/* 8137CC64 | 4C C6 31 82 */	crclr cr1eq
/* 8137CC68 | 4B FF E3 4D */	bl BS2Report
/* 8137CC6C | 38 60 00 00 */	li r3, 0x0
/* 8137CC70 | 48 00 05 F8 */	b .L_8137D268
.L_8137CC74:
/* 8137CC74 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137CC78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CC7C | 40 82 00 24 */	bne .L_8137CCA0
/* 8137CC80 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CC84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CC88 | 40 82 00 18 */	bne .L_8137CCA0
/* 8137CC8C | 38 7E 04 93 */	addi r3, r30, 0x493
/* 8137CC90 | 4C C6 31 82 */	crclr cr1eq
/* 8137CC94 | 4B FF E3 21 */	bl BS2Report
/* 8137CC98 | 38 60 00 01 */	li r3, 0x1
/* 8137CC9C | 48 00 05 CC */	b .L_8137D268
.L_8137CCA0:
/* 8137CCA0 | 80 0D AA 0C */	lwz r0, lbl_81698A4C@sda21(r0)
/* 8137CCA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CCA8 | 41 82 00 18 */	beq .L_8137CCC0
/* 8137CCAC | 38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 8137CCB0 | 4C C6 31 82 */	crclr cr1eq
/* 8137CCB4 | 4B FF E3 01 */	bl BS2Report
/* 8137CCB8 | 38 60 00 00 */	li r3, 0x0
/* 8137CCBC | 48 00 05 AC */	b .L_8137D268
.L_8137CCC0:
/* 8137CCC0 | 80 0D AA 18 */	lwz r0, lbl_81698A58@sda21(r0)
/* 8137CCC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CCC8 | 41 82 00 28 */	beq .L_8137CCF0
/* 8137CCCC | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137CCD0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137CCD4 | 40 82 00 0C */	bne .L_8137CCE0
/* 8137CCD8 | 38 00 00 01 */	li r0, 0x1
/* 8137CCDC | 90 0D A9 EC */	stw r0, lbl_81698A2C@sda21(r0)
.L_8137CCE0:
/* 8137CCE0 | 38 00 00 00 */	li r0, 0x0
/* 8137CCE4 | 38 60 00 01 */	li r3, 0x1
/* 8137CCE8 | 90 0D AA 18 */	stw r0, lbl_81698A58@sda21(r0)
/* 8137CCEC | 48 00 05 7C */	b .L_8137D268
.L_8137CCF0:
/* 8137CCF0 | 80 6D A9 C8 */	lwz r3, CurrentState@sda21(r0)
/* 8137CCF4 | 38 03 FF FD */	subi r0, r3, 0x3
/* 8137CCF8 | 28 00 00 2D */	cmplwi r0, 0x2d
/* 8137CCFC | 41 81 05 60 */	bgt .L_8137D25C
/* 8137CD00 | 3C 60 81 64 */	lis r3, jumptable_81646338@ha
/* 8137CD04 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137CD08 | 38 63 63 38 */	addi r3, r3, jumptable_81646338@l
/* 8137CD0C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8137CD10 | 7C 69 03 A6 */	mtctr r3
/* 8137CD14 | 4E 80 04 20 */	bctr
.L_8137CD18:
/* 8137CD18 | 38 00 00 00 */	li r0, 0x0
/* 8137CD1C | 38 7E 04 C1 */	addi r3, r30, 0x4c1
/* 8137CD20 | 90 0D AA 94 */	stw r0, lbl_81698AD4@sda21(r0)
/* 8137CD24 | 4C C6 31 82 */	crclr cr1eq
/* 8137CD28 | 4B FF E2 8D */	bl BS2Report
/* 8137CD2C | 38 00 00 01 */	li r0, 0x1
/* 8137CD30 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137CD34 | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137CD38 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137CD3C | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137CD40 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137CD44 | 90 0D AA 18 */	stw r0, lbl_81698A58@sda21(r0)
/* 8137CD48 | 38 80 00 00 */	li r4, 0x0
/* 8137CD4C | 38 A0 00 00 */	li r5, 0x0
/* 8137CD50 | 48 1E 75 11 */	bl NANDSeekAsync
/* 8137CD54 | 38 60 00 00 */	li r3, 0x0
/* 8137CD58 | 48 00 05 10 */	b .L_8137D268
.L_8137CD5C:
/* 8137CD5C | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CD60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CD64 | 41 82 05 00 */	beq .L_8137D264
/* 8137CD68 | 38 7E 04 D1 */	addi r3, r30, 0x4d1
/* 8137CD6C | 4C C6 31 82 */	crclr cr1eq
/* 8137CD70 | 4B FF E2 45 */	bl BS2Report
/* 8137CD74 | 38 80 00 01 */	li r4, 0x1
/* 8137CD78 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137CD7C | 90 8D AA 0C */	stw r4, lbl_81698A4C@sda21(r0)
/* 8137CD80 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CD84 | 90 8D AA 18 */	stw r4, lbl_81698A58@sda21(r0)
/* 8137CD88 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137CD8C | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137CD90 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CD94 | 7C 03 00 40 */	cmplw r3, r0
/* 8137CD98 | 40 81 00 18 */	ble .L_8137CDB0
/* 8137CD9C | 38 60 FF FF */	li r3, -0x1
/* 8137CDA0 | 38 80 00 00 */	li r4, 0x0
/* 8137CDA4 | 4B FF E2 61 */	bl BS2NANDCallback
/* 8137CDA8 | 38 60 00 01 */	li r3, 0x1
/* 8137CDAC | 48 00 04 BC */	b .L_8137D268
.L_8137CDB0:
/* 8137CDB0 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137CDB4 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137CDB8 | 38 9F E7 E0 */	subi r4, r31, 0x1820
/* 8137CDBC | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137CDC0 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137CDC4 | 38 A0 00 20 */	li r5, 0x20
/* 8137CDC8 | 4B FF FD A5 */	bl BS2Mach_8137CB6C
/* 8137CDCC | 38 60 00 00 */	li r3, 0x0
/* 8137CDD0 | 48 00 04 98 */	b .L_8137D268
.L_8137CDD4:
/* 8137CDD4 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CDD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CDDC | 41 82 04 88 */	beq .L_8137D264
/* 8137CDE0 | 38 7E 04 E3 */	addi r3, r30, 0x4e3
/* 8137CDE4 | 4C C6 31 82 */	crclr cr1eq
/* 8137CDE8 | 4B FF E1 CD */	bl BS2Report
/* 8137CDEC | 38 80 00 01 */	li r4, 0x1
/* 8137CDF0 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137CDF4 | 90 8D AA 0C */	stw r4, lbl_81698A4C@sda21(r0)
/* 8137CDF8 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CDFC | 90 8D AA 18 */	stw r4, lbl_81698A58@sda21(r0)
/* 8137CE00 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137CE04 | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137CE08 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CE0C | 7C 03 00 40 */	cmplw r3, r0
/* 8137CE10 | 40 81 00 18 */	ble .L_8137CE28
/* 8137CE14 | 38 60 FF FF */	li r3, -0x1
/* 8137CE18 | 38 80 00 00 */	li r4, 0x0
/* 8137CE1C | 4B FF E1 E9 */	bl BS2NANDCallback
/* 8137CE20 | 38 60 00 01 */	li r3, 0x1
/* 8137CE24 | 48 00 04 44 */	b .L_8137D268
.L_8137CE28:
/* 8137CE28 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137CE2C | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137CE30 | 38 9F E7 C0 */	subi r4, r31, 0x1840
/* 8137CE34 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137CE38 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137CE3C | 38 A0 00 20 */	li r5, 0x20
/* 8137CE40 | 4B FF FD 2D */	bl BS2Mach_8137CB6C
/* 8137CE44 | 38 60 00 00 */	li r3, 0x0
/* 8137CE48 | 48 00 04 20 */	b .L_8137D268
.L_8137CE4C:
/* 8137CE4C | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CE50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CE54 | 41 82 04 10 */	beq .L_8137D264
/* 8137CE58 | 38 7E 04 F2 */	addi r3, r30, 0x4f2
/* 8137CE5C | 4C C6 31 82 */	crclr cr1eq
/* 8137CE60 | 4B FF E1 55 */	bl BS2Report
/* 8137CE64 | 38 80 00 01 */	li r4, 0x1
/* 8137CE68 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137CE6C | 90 8D AA 0C */	stw r4, lbl_81698A4C@sda21(r0)
/* 8137CE70 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CE74 | 90 8D AA 18 */	stw r4, lbl_81698A58@sda21(r0)
/* 8137CE78 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137CE7C | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137CE80 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CE84 | 7C 03 00 40 */	cmplw r3, r0
/* 8137CE88 | 40 81 00 18 */	ble .L_8137CEA0
/* 8137CE8C | 38 60 FF FF */	li r3, -0x1
/* 8137CE90 | 38 80 00 00 */	li r4, 0x0
/* 8137CE94 | 4B FF E1 71 */	bl BS2NANDCallback
/* 8137CE98 | 38 60 00 01 */	li r3, 0x1
/* 8137CE9C | 48 00 03 CC */	b .L_8137D268
.L_8137CEA0:
/* 8137CEA0 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137CEA4 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137CEA8 | 38 9F E8 00 */	subi r4, r31, 0x1800
/* 8137CEAC | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137CEB0 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137CEB4 | 38 A0 00 20 */	li r5, 0x20
/* 8137CEB8 | 4B FF FC B5 */	bl BS2Mach_8137CB6C
/* 8137CEBC | 38 60 00 00 */	li r3, 0x0
/* 8137CEC0 | 48 00 03 A8 */	b .L_8137D268
.L_8137CEC4:
/* 8137CEC4 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CEC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CECC | 41 82 03 98 */	beq .L_8137D264
/* 8137CED0 | 38 7E 05 02 */	addi r3, r30, 0x502
/* 8137CED4 | 4C C6 31 82 */	crclr cr1eq
/* 8137CED8 | 4B FF E0 DD */	bl BS2Report
/* 8137CEDC | 38 C0 00 01 */	li r6, 0x1
/* 8137CEE0 | 80 8D AA 5C */	lwz r4, lbl_81698A9C@sda21(r0)
/* 8137CEE4 | 90 CD AA 0C */	stw r6, lbl_81698A4C@sda21(r0)
/* 8137CEE8 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137CEEC | 80 AD AA 94 */	lwz r5, lbl_81698AD4@sda21(r0)
/* 8137CEF0 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8137CEF4 | 90 CD AA 18 */	stw r6, lbl_81698A58@sda21(r0)
/* 8137CEF8 | 54 63 18 38 */	slwi r3, r3, 3
/* 8137CEFC | 38 63 00 1F */	addi r3, r3, 0x1f
/* 8137CF00 | 54 63 00 34 */	clrrwi r3, r3, 5
/* 8137CF04 | 7C 65 1A 14 */	add r3, r5, r3
/* 8137CF08 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137CF0C | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137CF10 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CF14 | 7C 03 00 40 */	cmplw r3, r0
/* 8137CF18 | 40 81 00 18 */	ble .L_8137CF30
/* 8137CF1C | 38 60 FF FF */	li r3, -0x1
/* 8137CF20 | 38 80 00 00 */	li r4, 0x0
/* 8137CF24 | 4B FF E0 E1 */	bl BS2NANDCallback
/* 8137CF28 | 38 60 00 01 */	li r3, 0x1
/* 8137CF2C | 48 00 03 3C */	b .L_8137D268
.L_8137CF30:
/* 8137CF30 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8137CF34 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137CF38 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137CF3C | 38 9D 00 40 */	addi r4, r29, 0x40
/* 8137CF40 | 54 05 18 38 */	slwi r5, r0, 3
/* 8137CF44 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137CF48 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8137CF4C | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137CF50 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 8137CF54 | 38 A5 00 20 */	addi r5, r5, 0x20
/* 8137CF58 | 4B FF FC 15 */	bl BS2Mach_8137CB6C
/* 8137CF5C | 38 60 00 00 */	li r3, 0x0
/* 8137CF60 | 48 00 03 08 */	b .L_8137D268
.L_8137CF64:
/* 8137CF64 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CF68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CF6C | 41 82 02 F8 */	beq .L_8137D264
/* 8137CF70 | 38 7E 05 18 */	addi r3, r30, 0x518
/* 8137CF74 | 4C C6 31 82 */	crclr cr1eq
/* 8137CF78 | 4B FF E0 3D */	bl BS2Report
/* 8137CF7C | 38 80 00 01 */	li r4, 0x1
/* 8137CF80 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137CF84 | 90 8D AA 0C */	stw r4, lbl_81698A4C@sda21(r0)
/* 8137CF88 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CF8C | 90 8D AA 18 */	stw r4, lbl_81698A58@sda21(r0)
/* 8137CF90 | 38 63 20 00 */	addi r3, r3, 0x2000
/* 8137CF94 | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137CF98 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137CF9C | 7C 03 00 40 */	cmplw r3, r0
/* 8137CFA0 | 40 81 00 18 */	ble .L_8137CFB8
/* 8137CFA4 | 38 60 FF FF */	li r3, -0x1
/* 8137CFA8 | 38 80 00 00 */	li r4, 0x0
/* 8137CFAC | 4B FF E0 59 */	bl BS2NANDCallback
/* 8137CFB0 | 38 60 00 01 */	li r3, 0x1
/* 8137CFB4 | 48 00 02 B4 */	b .L_8137D268
.L_8137CFB8:
/* 8137CFB8 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137CFBC | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137CFC0 | 38 9F E8 20 */	subi r4, r31, 0x17e0
/* 8137CFC4 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137CFC8 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137CFCC | 38 A0 20 00 */	li r5, 0x2000
/* 8137CFD0 | 4B FF FB 9D */	bl BS2Mach_8137CB6C
/* 8137CFD4 | 38 60 00 00 */	li r3, 0x0
/* 8137CFD8 | 48 00 02 90 */	b .L_8137D268
.L_8137CFDC:
/* 8137CFDC | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137CFE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137CFE4 | 41 82 02 80 */	beq .L_8137D264
/* 8137CFE8 | 38 7E 05 2B */	addi r3, r30, 0x52b
/* 8137CFEC | 4C C6 31 82 */	crclr cr1eq
/* 8137CFF0 | 4B FF DF C5 */	bl BS2Report
/* 8137CFF4 | 38 80 00 01 */	li r4, 0x1
/* 8137CFF8 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137CFFC | 90 8D AA 0C */	stw r4, lbl_81698A4C@sda21(r0)
/* 8137D000 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D004 | 90 8D AA 18 */	stw r4, lbl_81698A58@sda21(r0)
/* 8137D008 | 38 63 4A 00 */	addi r3, r3, 0x4a00
/* 8137D00C | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137D010 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D014 | 7C 03 00 40 */	cmplw r3, r0
/* 8137D018 | 40 81 00 18 */	ble .L_8137D030
/* 8137D01C | 38 60 FF FF */	li r3, -0x1
/* 8137D020 | 38 80 00 00 */	li r4, 0x0
/* 8137D024 | 4B FF DF E1 */	bl BS2NANDCallback
/* 8137D028 | 38 60 00 01 */	li r3, 0x1
/* 8137D02C | 48 00 02 3C */	b .L_8137D268
.L_8137D030:
/* 8137D030 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137D034 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D038 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D03C | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D040 | 38 84 03 C0 */	addi r4, r4, 0x3c0
/* 8137D044 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D048 | 38 A0 4A 00 */	li r5, 0x4a00
/* 8137D04C | 4B FF FB 21 */	bl BS2Mach_8137CB6C
/* 8137D050 | 38 60 00 00 */	li r3, 0x0
/* 8137D054 | 48 00 02 14 */	b .L_8137D268
.L_8137D058:
/* 8137D058 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137D05C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D060 | 41 82 02 04 */	beq .L_8137D264
/* 8137D064 | 38 7E 05 41 */	addi r3, r30, 0x541
/* 8137D068 | 4C C6 31 82 */	crclr cr1eq
/* 8137D06C | 4B FF DF 49 */	bl BS2Report
/* 8137D070 | 38 80 00 01 */	li r4, 0x1
/* 8137D074 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137D078 | 90 8D AA 0C */	stw r4, lbl_81698A4C@sda21(r0)
/* 8137D07C | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D080 | 90 8D AA 18 */	stw r4, lbl_81698A58@sda21(r0)
/* 8137D084 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137D088 | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137D08C | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D090 | 7C 03 00 40 */	cmplw r3, r0
/* 8137D094 | 40 81 00 18 */	ble .L_8137D0AC
/* 8137D098 | 38 60 FF FF */	li r3, -0x1
/* 8137D09C | 38 80 00 00 */	li r4, 0x0
/* 8137D0A0 | 4B FF DF 65 */	bl BS2NANDCallback
/* 8137D0A4 | 38 60 00 01 */	li r3, 0x1
/* 8137D0A8 | 48 00 01 C0 */	b .L_8137D268
.L_8137D0AC:
/* 8137D0AC | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D0B0 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D0B4 | 38 9F 08 20 */	addi r4, r31, 0x820
/* 8137D0B8 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D0BC | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D0C0 | 38 A0 00 20 */	li r5, 0x20
/* 8137D0C4 | 4B FF FA A9 */	bl BS2Mach_8137CB6C
/* 8137D0C8 | 38 60 00 00 */	li r3, 0x0
/* 8137D0CC | 48 00 01 9C */	b .L_8137D268
.L_8137D0D0:
/* 8137D0D0 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137D0D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D0D8 | 41 82 01 8C */	beq .L_8137D264
/* 8137D0DC | 38 7E 05 59 */	addi r3, r30, 0x559
/* 8137D0E0 | 4C C6 31 82 */	crclr cr1eq
/* 8137D0E4 | 4B FF DE D1 */	bl BS2Report
/* 8137D0E8 | 38 7F 08 20 */	addi r3, r31, 0x820
/* 8137D0EC | 38 C0 00 01 */	li r6, 0x1
/* 8137D0F0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8137D0F4 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137D0F8 | 90 CD AA 0C */	stw r6, lbl_81698A4C@sda21(r0)
/* 8137D0FC | 38 63 00 1F */	addi r3, r3, 0x1f
/* 8137D100 | 80 8D AA 94 */	lwz r4, lbl_81698AD4@sda21(r0)
/* 8137D104 | 54 65 00 34 */	clrrwi r5, r3, 5
/* 8137D108 | 90 CD AA 18 */	stw r6, lbl_81698A58@sda21(r0)
/* 8137D10C | 7C 64 2A 14 */	add r3, r4, r5
/* 8137D110 | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137D114 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D118 | 7C 03 00 40 */	cmplw r3, r0
/* 8137D11C | 40 81 00 18 */	ble .L_8137D134
/* 8137D120 | 38 60 FF FF */	li r3, -0x1
/* 8137D124 | 38 80 00 00 */	li r4, 0x0
/* 8137D128 | 4B FF DE DD */	bl BS2NANDCallback
/* 8137D12C | 38 60 00 01 */	li r3, 0x1
/* 8137D130 | 48 00 01 38 */	b .L_8137D268
.L_8137D134:
/* 8137D134 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D138 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D13C | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D140 | 3C 80 81 20 */	lis r4, 0x8120
/* 8137D144 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D148 | 4B FF FA 25 */	bl BS2Mach_8137CB6C
/* 8137D14C | 38 60 00 00 */	li r3, 0x0
/* 8137D150 | 48 00 01 18 */	b .L_8137D268
.L_8137D154:
/* 8137D154 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137D158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D15C | 41 82 01 08 */	beq .L_8137D264
/* 8137D160 | 38 7E 05 6A */	addi r3, r30, 0x56a
/* 8137D164 | 4C C6 31 82 */	crclr cr1eq
/* 8137D168 | 4B FF DE 4D */	bl BS2Report
/* 8137D16C | 38 A0 00 01 */	li r5, 0x1
/* 8137D170 | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137D174 | 90 AD AA 0C */	stw r5, lbl_81698A4C@sda21(r0)
/* 8137D178 | 80 8D AA 94 */	lwz r4, lbl_81698AD4@sda21(r0)
/* 8137D17C | 80 6D AA 8C */	lwz r3, lbl_81698ACC@sda21(r0)
/* 8137D180 | 90 AD AA 18 */	stw r5, lbl_81698A58@sda21(r0)
/* 8137D184 | 7C 64 1A 14 */	add r3, r4, r3
/* 8137D188 | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137D18C | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D190 | 7C 03 00 40 */	cmplw r3, r0
/* 8137D194 | 40 81 00 18 */	ble .L_8137D1AC
/* 8137D198 | 38 60 FF FF */	li r3, -0x1
/* 8137D19C | 38 80 00 00 */	li r4, 0x0
/* 8137D1A0 | 4B FF DE 65 */	bl BS2NANDCallback
/* 8137D1A4 | 38 60 00 01 */	li r3, 0x1
/* 8137D1A8 | 48 00 00 C0 */	b .L_8137D268
.L_8137D1AC:
/* 8137D1AC | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D1B0 | 80 8D AA 90 */	lwz r4, lbl_81698AD0@sda21(r0)
/* 8137D1B4 | 80 AD AA 8C */	lwz r5, lbl_81698ACC@sda21(r0)
/* 8137D1B8 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D1BC | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D1C0 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D1C4 | 4B FF F9 A9 */	bl BS2Mach_8137CB6C
/* 8137D1C8 | 38 60 00 00 */	li r3, 0x0
/* 8137D1CC | 48 00 00 9C */	b .L_8137D268
.L_8137D1D0:
/* 8137D1D0 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137D1D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D1D8 | 41 82 00 8C */	beq .L_8137D264
/* 8137D1DC | 38 7E 05 80 */	addi r3, r30, 0x580
/* 8137D1E0 | 4C C6 31 82 */	crclr cr1eq
/* 8137D1E4 | 4B FF DD D1 */	bl BS2Report
/* 8137D1E8 | 38 A0 00 01 */	li r5, 0x1
/* 8137D1EC | 3C 00 00 B0 */	lis r0, 0xb0
/* 8137D1F0 | 90 AD AA 0C */	stw r5, lbl_81698A4C@sda21(r0)
/* 8137D1F4 | 80 8D AA 94 */	lwz r4, lbl_81698AD4@sda21(r0)
/* 8137D1F8 | 80 6D AA 98 */	lwz r3, lbl_81698AD8@sda21(r0)
/* 8137D1FC | 90 AD AA 18 */	stw r5, lbl_81698A58@sda21(r0)
/* 8137D200 | 38 63 00 1F */	addi r3, r3, 0x1f
/* 8137D204 | 54 63 00 34 */	clrrwi r3, r3, 5
/* 8137D208 | 7C 64 1A 14 */	add r3, r4, r3
/* 8137D20C | 90 6D AA 94 */	stw r3, lbl_81698AD4@sda21(r0)
/* 8137D210 | 80 6D AA 94 */	lwz r3, lbl_81698AD4@sda21(r0)
/* 8137D214 | 7C 03 00 40 */	cmplw r3, r0
/* 8137D218 | 40 81 00 18 */	ble .L_8137D230
/* 8137D21C | 38 60 FF FF */	li r3, -0x1
/* 8137D220 | 38 80 00 00 */	li r4, 0x0
/* 8137D224 | 4B FF DD E1 */	bl BS2NANDCallback
/* 8137D228 | 38 60 00 01 */	li r3, 0x1
/* 8137D22C | 48 00 00 3C */	b .L_8137D268
.L_8137D230:
/* 8137D230 | 80 AD AA 98 */	lwz r5, lbl_81698AD8@sda21(r0)
/* 8137D234 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D238 | 80 8D A9 D4 */	lwz r4, BannerBufferAddr@sda21(r0)
/* 8137D23C | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D240 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8137D244 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D248 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 8137D24C | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D250 | 4B FF F9 1D */	bl BS2Mach_8137CB6C
/* 8137D254 | 38 60 00 00 */	li r3, 0x0
/* 8137D258 | 48 00 00 10 */	b .L_8137D268
.L_8137D25C:
/* 8137D25C | 38 60 00 01 */	li r3, 0x1
/* 8137D260 | 48 00 00 08 */	b .L_8137D268
.L_8137D264:
/* 8137D264 | 38 60 00 01 */	li r3, 0x1
.L_8137D268:
/* 8137D268 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137D26C | 48 27 C2 A9 */	bl _restgpr_29
/* 8137D270 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137D274 | 7C 08 03 A6 */	mtlr r0
/* 8137D278 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137D27C | 4E 80 00 20 */	blr
.endfn CheckBS2CommandStatus

# .text:0x22CC | 0x8137D280 | size: 0x9C
.fn BS2Mach_8137D280, local
/* 8137D280 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137D284 | 7C 08 02 A6 */	mflr r0
/* 8137D288 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137D28C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137D290 | 48 27 C2 39 */	bl _savegpr_29
/* 8137D294 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137D298 | 3F E0 81 09 */	lis r31, Block@ha
/* 8137D29C | 7C 7D 1B 78 */	mr r29, r3
/* 8137D2A0 | 7C 9E 23 78 */	mr r30, r4
/* 8137D2A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D2A8 | 7C A6 2B 78 */	mr r6, r5
/* 8137D2AC | 3B FF B7 20 */	addi r31, r31, Block@l
/* 8137D2B0 | 41 82 00 3C */	beq .L_8137D2EC
/* 8137D2B4 | 3C 60 81 64 */	lis r3, lbl_816463F0@ha
/* 8137D2B8 | 38 63 63 F0 */	addi r3, r3, lbl_816463F0@l
/* 8137D2BC | 4C C6 31 82 */	crclr cr1eq
/* 8137D2C0 | 4B FF DC F5 */	bl BS2Report
/* 8137D2C4 | 38 00 00 01 */	li r0, 0x1
/* 8137D2C8 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D2CC | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137D2D0 | 7F A4 EB 78 */	mr r4, r29
/* 8137D2D4 | 7F C5 F3 78 */	mr r5, r30
/* 8137D2D8 | 38 7F 08 70 */	addi r3, r31, 0x870
/* 8137D2DC | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D2E0 | 38 FF 08 FC */	addi r7, r31, 0x8fc
/* 8137D2E4 | 4B FF F7 CD */	bl BS2Mach_8137CAB0
/* 8137D2E8 | 48 00 00 1C */	b .L_8137D304
.L_8137D2EC:
/* 8137D2EC | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137D2F0 | 7F A4 EB 78 */	mr r4, r29
/* 8137D2F4 | 7F C5 F3 78 */	mr r5, r30
/* 8137D2F8 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8137D2FC | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137D300 | 48 1D 15 81 */	bl fn_8154E880
.L_8137D304:
/* 8137D304 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137D308 | 48 27 C2 0D */	bl _restgpr_29
/* 8137D30C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137D310 | 7C 08 03 A6 */	mtlr r0
/* 8137D314 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137D318 | 4E 80 00 20 */	blr
.endfn BS2Mach_8137D280

# .text:0x2368 | 0x8137D31C | size: 0x9C
.fn BS2Mach_8137D31C, local
/* 8137D31C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137D320 | 7C 08 02 A6 */	mflr r0
/* 8137D324 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137D328 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137D32C | 48 27 C1 9D */	bl _savegpr_29
/* 8137D330 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137D334 | 3F E0 81 09 */	lis r31, Block@ha
/* 8137D338 | 7C 7D 1B 78 */	mr r29, r3
/* 8137D33C | 7C 9E 23 78 */	mr r30, r4
/* 8137D340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D344 | 7C A6 2B 78 */	mr r6, r5
/* 8137D348 | 3B FF B7 20 */	addi r31, r31, Block@l
/* 8137D34C | 41 82 00 3C */	beq .L_8137D388
/* 8137D350 | 3C 60 81 64 */	lis r3, lbl_81646411@ha
/* 8137D354 | 38 63 64 11 */	addi r3, r3, lbl_81646411@l
/* 8137D358 | 4C C6 31 82 */	crclr cr1eq
/* 8137D35C | 4B FF DC 59 */	bl BS2Report
/* 8137D360 | 38 00 00 01 */	li r0, 0x1
/* 8137D364 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D368 | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137D36C | 7F A4 EB 78 */	mr r4, r29
/* 8137D370 | 7F C5 F3 78 */	mr r5, r30
/* 8137D374 | 38 7F 08 70 */	addi r3, r31, 0x870
/* 8137D378 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D37C | 38 FF 08 FC */	addi r7, r31, 0x8fc
/* 8137D380 | 4B FF F7 31 */	bl BS2Mach_8137CAB0
/* 8137D384 | 48 00 00 1C */	b .L_8137D3A0
.L_8137D388:
/* 8137D388 | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137D38C | 7F A4 EB 78 */	mr r4, r29
/* 8137D390 | 7F C5 F3 78 */	mr r5, r30
/* 8137D394 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8137D398 | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137D39C | 48 1D 03 D1 */	bl fn_8154D76C
.L_8137D3A0:
/* 8137D3A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137D3A4 | 48 27 C1 71 */	bl _restgpr_29
/* 8137D3A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137D3AC | 7C 08 03 A6 */	mtlr r0
/* 8137D3B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137D3B4 | 4E 80 00 20 */	blr
.endfn BS2Mach_8137D31C

# .text:0x2404 | 0x8137D3B8 | size: 0x1E50
.fn BS2Tick, global
/* 8137D3B8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8137D3BC | 7C 08 02 A6 */	mflr r0
/* 8137D3C0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8137D3C4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8137D3C8 | 48 27 C0 F5 */	bl _savegpr_26
/* 8137D3CC | 3F A0 81 09 */	lis r29, Block@ha
/* 8137D3D0 | 3F C0 81 64 */	lis r30, lbl_81645DA8@ha
/* 8137D3D4 | 3B BD B7 20 */	addi r29, r29, Block@l
/* 8137D3D8 | 3B DE 5D A8 */	addi r30, r30, lbl_81645DA8@l
/* 8137D3DC | 3F FD 00 02 */	addis r31, r29, 0x2
/* 8137D3E0 | 48 1B 34 A5 */	bl OSDisableInterrupts
/* 8137D3E4 | 80 0D A9 C8 */	lwz r0, CurrentState@sda21(r0)
/* 8137D3E8 | 7C 7C 1B 78 */	mr r28, r3
/* 8137D3EC | 28 00 00 48 */	cmplwi r0, 0x48
/* 8137D3F0 | 41 81 1D E0 */	bgt .L_8137F1D0
/* 8137D3F4 | 3C 60 81 64 */	lis r3, jumptable_81646850@ha
/* 8137D3F8 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137D3FC | 38 63 68 50 */	addi r3, r3, jumptable_81646850@l
/* 8137D400 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8137D404 | 7C 69 03 A6 */	mtctr r3
/* 8137D408 | 4E 80 04 20 */	bctr
.L_8137D40C:
/* 8137D40C | 80 8D A9 A4 */	lwz r4, BS2NoDisk@sda21(r0)
/* 8137D410 | 38 7E 06 7E */	addi r3, r30, 0x67e
/* 8137D414 | 4C C6 31 82 */	crclr cr1eq
/* 8137D418 | 4B FF DB 9D */	bl BS2Report
/* 8137D41C | 80 8D A9 A0 */	lwz r4, BS2DriveReset@sda21(r0)
/* 8137D420 | 38 7E 06 95 */	addi r3, r30, 0x695
/* 8137D424 | 4C C6 31 82 */	crclr cr1eq
/* 8137D428 | 4B FF DB 8D */	bl BS2Report
/* 8137D42C | 80 8D 84 DC */	lwz r4, BS2WaitSpinup@sda21(r0)
/* 8137D430 | 38 7E 06 AC */	addi r3, r30, 0x6ac
/* 8137D434 | 4C C6 31 82 */	crclr cr1eq
/* 8137D438 | 4B FF DB 7D */	bl BS2Report
/* 8137D43C | 80 8D A9 9C */	lwz r4, BS2BootFromCache@sda21(r0)
/* 8137D440 | 38 7E 06 C3 */	addi r3, r30, 0x6c3
/* 8137D444 | 4C C6 31 82 */	crclr cr1eq
/* 8137D448 | 4B FF DB 6D */	bl BS2Report
/* 8137D44C | 3F C0 80 00 */	lis r30, 0x8000
/* 8137D450 | 38 80 00 01 */	li r4, 0x1
/* 8137D454 | 38 DE 30 D4 */	addi r6, r30, 0x30d4
/* 8137D458 | 3B 60 00 00 */	li r27, 0x0
/* 8137D45C | 38 BD 09 C0 */	addi r5, r29, 0x9c0
/* 8137D460 | 90 CD AA A4 */	stw r6, lbl_81698AE4@sda21(r0)
/* 8137D464 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137D468 | 93 65 03 A0 */	stw r27, 0x3a0(r5)
/* 8137D46C | 93 65 4D C0 */	stw r27, 0x4dc0(r5)
/* 8137D470 | 93 65 5D E0 */	stw r27, 0x5de0(r5)
/* 8137D474 | 93 7E 30 D4 */	stw r27, 0x30d4(r30)
/* 8137D478 | 93 6D AA A0 */	stw r27, lbl_81698AE0@sda21(r0)
/* 8137D47C | 93 6D AA 9C */	stw r27, lbl_81698ADC@sda21(r0)
/* 8137D480 | 80 0D A9 A4 */	lwz r0, BS2NoDisk@sda21(r0)
/* 8137D484 | 90 8D AA 1C */	stw r4, lbl_81698A5C@sda21(r0)
/* 8137D488 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D48C | 93 63 00 0C */	stw r27, 0xc(r3)
/* 8137D490 | 41 82 00 10 */	beq .L_8137D4A0
/* 8137D494 | 38 00 00 34 */	li r0, 0x34
/* 8137D498 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D49C | 48 00 1D 48 */	b .L_8137F1E4
.L_8137D4A0:
/* 8137D4A0 | 80 0D A9 A0 */	lwz r0, BS2DriveReset@sda21(r0)
/* 8137D4A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D4A8 | 41 82 00 10 */	beq .L_8137D4B8
/* 8137D4AC | 38 00 00 02 */	li r0, 0x2
/* 8137D4B0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D4B4 | 48 00 1D 30 */	b .L_8137F1E4
.L_8137D4B8:
/* 8137D4B8 | 38 00 00 03 */	li r0, 0x3
/* 8137D4BC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D4C0 | 48 1B 88 79 */	bl __OSGetSystemTime
/* 8137D4C4 | 80 0D 84 DC */	lwz r0, BS2WaitSpinup@sda21(r0)
/* 8137D4C8 | 90 8D AA 24 */	stw r4, lbl_81698A64@sda21(r0)
/* 8137D4CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D4D0 | 90 6D AA 20 */	stw r3, lbl_81698A60@sda21(r0)
/* 8137D4D4 | 41 82 00 34 */	beq .L_8137D508
/* 8137D4D8 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137D4DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D4E0 | 40 82 00 28 */	bne .L_8137D508
/* 8137D4E4 | 48 1B 88 55 */	bl __OSGetSystemTime
/* 8137D4E8 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 8137D4EC | 54 00 F0 BE */	srwi r0, r0, 2
/* 8137D4F0 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 8137D4F4 | 7C 80 20 14 */	addc r4, r0, r4
/* 8137D4F8 | 7C 1B 19 14 */	adde r0, r27, r3
/* 8137D4FC | 90 8D AA 2C */	stw r4, lbl_81698A6C@sda21(r0)
/* 8137D500 | 90 0D AA 28 */	stw r0, lbl_81698A68@sda21(r0)
/* 8137D504 | 48 00 1C E0 */	b .L_8137F1E4
.L_8137D508:
/* 8137D508 | 48 1B 88 31 */	bl __OSGetSystemTime
/* 8137D50C | 90 8D AA 2C */	stw r4, lbl_81698A6C@sda21(r0)
/* 8137D510 | 90 6D AA 28 */	stw r3, lbl_81698A68@sda21(r0)
/* 8137D514 | 48 00 1C D0 */	b .L_8137F1E4
.L_8137D518:
/* 8137D518 | 48 1B 88 21 */	bl __OSGetSystemTime
/* 8137D51C | 3C C0 80 00 */	lis r6, 0x8000
/* 8137D520 | 38 A0 00 00 */	li r5, 0x0
/* 8137D524 | 80 E6 00 F8 */	lwz r7, 0xf8(r6)
/* 8137D528 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8137D52C | 38 C0 03 E8 */	li r6, 0x3e8
/* 8137D530 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8137D534 | 54 E3 F0 BE */	srwi r3, r7, 2
/* 8137D538 | 7C 63 33 96 */	divwu r3, r3, r6
/* 8137D53C | 1C 63 00 50 */	mulli r3, r3, 0x50
/* 8137D540 | 7C 63 20 10 */	subfc r3, r3, r4
/* 8137D544 | 7C A5 01 10 */	subfe r5, r5, r0
/* 8137D548 | 7C A0 01 10 */	subfe r5, r0, r0
/* 8137D54C | 7C A5 00 D1 */	neg. r5, r5
/* 8137D550 | 40 82 1C 94 */	bne .L_8137F1E4
/* 8137D554 | 38 00 00 02 */	li r0, 0x2
/* 8137D558 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137D55C:
/* 8137D55C | 3B 60 00 00 */	li r27, 0x0
/* 8137D560 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137D564 | 93 64 03 A0 */	stw r27, 0x3a0(r4)
/* 8137D568 | 38 00 00 01 */	li r0, 0x1
/* 8137D56C | 80 6D AA A4 */	lwz r3, lbl_81698AE4@sda21(r0)
/* 8137D570 | 93 64 4D C0 */	stw r27, 0x4dc0(r4)
/* 8137D574 | 93 64 5D E0 */	stw r27, 0x5de0(r4)
/* 8137D578 | 93 63 00 00 */	stw r27, 0x0(r3)
/* 8137D57C | 93 6D AA A0 */	stw r27, lbl_81698AE0@sda21(r0)
/* 8137D580 | 93 6D AA 9C */	stw r27, lbl_81698ADC@sda21(r0)
/* 8137D584 | 90 0D AA 1C */	stw r0, lbl_81698A5C@sda21(r0)
/* 8137D588 | 48 1B 87 B1 */	bl __OSGetSystemTime
/* 8137D58C | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137D590 | 90 8D AA 24 */	stw r4, lbl_81698A64@sda21(r0)
/* 8137D594 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D598 | 90 6D AA 20 */	stw r3, lbl_81698A60@sda21(r0)
/* 8137D59C | 41 82 00 14 */	beq .L_8137D5B0
/* 8137D5A0 | 48 1B 87 99 */	bl __OSGetSystemTime
/* 8137D5A4 | 90 8D AA 2C */	stw r4, lbl_81698A6C@sda21(r0)
/* 8137D5A8 | 90 6D AA 28 */	stw r3, lbl_81698A68@sda21(r0)
/* 8137D5AC | 48 00 00 28 */	b .L_8137D5D4
.L_8137D5B0:
/* 8137D5B0 | 48 1B 87 89 */	bl __OSGetSystemTime
/* 8137D5B4 | 3C A0 80 00 */	lis r5, 0x8000
/* 8137D5B8 | 80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 8137D5BC | 54 00 F0 BE */	srwi r0, r0, 2
/* 8137D5C0 | 1C 00 00 07 */	mulli r0, r0, 0x7
/* 8137D5C4 | 7C 80 20 14 */	addc r4, r0, r4
/* 8137D5C8 | 7C 1B 19 14 */	adde r0, r27, r3
/* 8137D5CC | 90 8D AA 2C */	stw r4, lbl_81698A6C@sda21(r0)
/* 8137D5D0 | 90 0D AA 28 */	stw r0, lbl_81698A68@sda21(r0)
.L_8137D5D4:
/* 8137D5D4 | 48 1B 63 CD */	bl fn_815339A0
/* 8137D5D8 | 3C 80 81 38 */	lis r4, BS2DVDCallback@ha
/* 8137D5DC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D5E0 | 38 84 B0 68 */	addi r4, r4, BS2DVDCallback@l
/* 8137D5E4 | 48 1D 05 9D */	bl fn_8154DB80
/* 8137D5E8 | 38 60 00 01 */	li r3, 0x1
/* 8137D5EC | 38 00 00 03 */	li r0, 0x3
/* 8137D5F0 | 38 9D 08 40 */	addi r4, r29, 0x840
/* 8137D5F4 | 38 A0 00 00 */	li r5, 0x0
/* 8137D5F8 | 90 A4 00 0C */	stw r5, 0xc(r4)
/* 8137D5FC | 90 6D AA 38 */	stw r3, lbl_81698A78@sda21(r0)
/* 8137D600 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137D604:
/* 8137D604 | 48 1B 87 35 */	bl __OSGetSystemTime
/* 8137D608 | 80 AD AA 28 */	lwz r5, lbl_81698A68@sda21(r0)
/* 8137D60C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8137D610 | 80 6D AA 2C */	lwz r3, lbl_81698A6C@sda21(r0)
/* 8137D614 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8137D618 | 7C 63 20 10 */	subfc r3, r3, r4
/* 8137D61C | 7C A5 01 10 */	subfe r5, r5, r0
/* 8137D620 | 7C A0 01 10 */	subfe r5, r0, r0
/* 8137D624 | 7C A5 00 D1 */	neg. r5, r5
/* 8137D628 | 41 82 00 E0 */	beq .L_8137D708
/* 8137D62C | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D630 | 4B FF F0 E9 */	bl BS2Mach_8137C718
/* 8137D634 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D638 | 41 82 1B AC */	beq .L_8137F1E4
/* 8137D63C | 48 1B 86 FD */	bl __OSGetSystemTime
/* 8137D640 | 3F E0 80 00 */	lis r31, 0x8000
/* 8137D644 | 80 AD AA 24 */	lwz r5, lbl_81698A64@sda21(r0)
/* 8137D648 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8137D64C | 3B C0 03 E8 */	li r30, 0x3e8
/* 8137D650 | 7C C5 20 10 */	subfc r6, r5, r4
/* 8137D654 | 3B 60 00 00 */	li r27, 0x0
/* 8137D658 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8137D65C | 80 ED AA 20 */	lwz r7, lbl_81698A60@sda21(r0)
/* 8137D660 | 7C A0 F3 96 */	divwu r5, r0, r30
/* 8137D664 | 6F 64 80 00 */	xoris r4, r27, 0x8000
/* 8137D668 | 7C 07 19 10 */	subfe r0, r7, r3
/* 8137D66C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137D670 | 1C 65 00 C8 */	mulli r3, r5, 0xc8
/* 8137D674 | 7C 63 30 10 */	subfc r3, r3, r6
/* 8137D678 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137D67C | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137D680 | 7C 84 00 D1 */	neg. r4, r4
/* 8137D684 | 40 82 1B 60 */	bne .L_8137F1E4
/* 8137D688 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137D68C | 4B FF F0 8D */	bl BS2Mach_8137C718
/* 8137D690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D694 | 41 82 1B 50 */	beq .L_8137F1E4
/* 8137D698 | 48 1B 86 A1 */	bl __OSGetSystemTime
/* 8137D69C | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8137D6A0 | 38 C0 00 64 */	li r6, 0x64
/* 8137D6A4 | 80 ED AA 34 */	lwz r7, lbl_81698A74@sda21(r0)
/* 8137D6A8 | 7C BB 31 D6 */	mullw r5, r27, r6
/* 8137D6AC | 54 00 F0 BE */	srwi r0, r0, 2
/* 8137D6B0 | 81 0D AA 30 */	lwz r8, lbl_81698A70@sda21(r0)
/* 8137D6B4 | 7C E7 20 10 */	subfc r7, r7, r4
/* 8137D6B8 | 7C 68 19 10 */	subfe r3, r8, r3
/* 8137D6BC | 7C 80 F3 96 */	divwu r4, r0, r30
/* 8137D6C0 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8137D6C4 | 7C 64 30 16 */	mulhwu r3, r4, r6
/* 8137D6C8 | 1C C4 00 64 */	mulli r6, r4, 0x64
/* 8137D6CC | 7C 63 2A 14 */	add r3, r3, r5
/* 8137D6D0 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137D6D4 | 7C 66 38 10 */	subfc r3, r6, r7
/* 8137D6D8 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137D6DC | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137D6E0 | 7C 84 00 D1 */	neg. r4, r4
/* 8137D6E4 | 40 82 1B 00 */	bne .L_8137F1E4
/* 8137D6E8 | 48 1B 86 51 */	bl __OSGetSystemTime
/* 8137D6EC | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137D6F0 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137D6F4 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137D6F8 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137D6FC | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137D700 | 48 1D 0C A1 */	bl fn_8154E3A0
/* 8137D704 | 48 00 1A E0 */	b .L_8137F1E4
.L_8137D708:
/* 8137D708 | 4B FF F5 21 */	bl CheckBS2CommandStatus
/* 8137D70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D710 | 41 82 1A D4 */	beq .L_8137F1E4
/* 8137D714 | 38 00 00 04 */	li r0, 0x4
/* 8137D718 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137D71C:
/* 8137D71C | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137D720 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D724 | 41 82 00 38 */	beq .L_8137D75C
/* 8137D728 | 38 7E 06 DA */	addi r3, r30, 0x6da
/* 8137D72C | 4C C6 31 82 */	crclr cr1eq
/* 8137D730 | 4B FF D8 85 */	bl BS2Report
/* 8137D734 | 38 00 00 01 */	li r0, 0x1
/* 8137D738 | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D73C | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137D740 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D744 | 38 9F E7 E0 */	subi r4, r31, 0x1820
/* 8137D748 | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D74C | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D750 | 38 A0 00 20 */	li r5, 0x20
/* 8137D754 | 4B FF F3 5D */	bl BS2Mach_8137CAB0
/* 8137D758 | 48 00 00 18 */	b .L_8137D770
.L_8137D75C:
/* 8137D75C | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137D760 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D764 | 38 9F E7 E0 */	subi r4, r31, 0x1820
/* 8137D768 | 38 A5 B0 68 */	addi r5, r5, BS2DVDCallback@l
/* 8137D76C | 48 1D 03 3D */	bl fn_8154DAA8
.L_8137D770:
/* 8137D770 | 38 00 00 05 */	li r0, 0x5
/* 8137D774 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D778 | 48 00 1A 6C */	b .L_8137F1E4
.L_8137D77C:
/* 8137D77C | 4B FF F4 AD */	bl CheckBS2CommandStatus
/* 8137D780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D784 | 41 82 1A 60 */	beq .L_8137F1E4
/* 8137D788 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137D78C | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8137D790 | 54 00 00 07 */	clrrwi. r0, r0, 28
/* 8137D794 | 40 82 00 18 */	bne .L_8137D7AC
/* 8137D798 | 3C 80 00 01 */	lis r4, 0x1
/* 8137D79C | 3C 60 80 00 */	lis r3, 0x8000
/* 8137D7A0 | 38 04 80 02 */	subi r0, r4, 0x7ffe
/* 8137D7A4 | B0 03 30 E6 */	sth r0, 0x30e6(r3)
/* 8137D7A8 | 48 00 00 18 */	b .L_8137D7C0
.L_8137D7AC:
/* 8137D7AC | 38 9F E7 E0 */	subi r4, r31, 0x1820
/* 8137D7B0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137D7B4 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 8137D7B8 | 60 00 80 00 */	ori r0, r0, 0x8000
/* 8137D7BC | B0 03 30 E6 */	sth r0, 0x30e6(r3)
.L_8137D7C0:
/* 8137D7C0 | 38 00 00 08 */	li r0, 0x8
/* 8137D7C4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D7C8 | 48 00 1A 1C */	b .L_8137F1E4
.L_8137D7CC:
/* 8137D7CC | 3C 80 81 38 */	lis r4, BS2DVDCallback@ha
/* 8137D7D0 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D7D4 | 38 84 B0 68 */	addi r4, r4, BS2DVDCallback@l
/* 8137D7D8 | 48 1D 11 8D */	bl fn_8154E964
/* 8137D7DC | 38 00 00 07 */	li r0, 0x7
/* 8137D7E0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D7E4 | 48 00 1A 00 */	b .L_8137F1E4
.L_8137D7E8:
/* 8137D7E8 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D7EC | 4B FF EF 2D */	bl BS2Mach_8137C718
/* 8137D7F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D7F4 | 41 82 19 F0 */	beq .L_8137F1E4
/* 8137D7F8 | 38 00 00 08 */	li r0, 0x8
/* 8137D7FC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137D800:
/* 8137D800 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137D804 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D808 | 41 82 00 38 */	beq .L_8137D840
/* 8137D80C | 38 7E 06 FA */	addi r3, r30, 0x6fa
/* 8137D810 | 4C C6 31 82 */	crclr cr1eq
/* 8137D814 | 4B FF D7 A1 */	bl BS2Report
/* 8137D818 | 38 00 00 01 */	li r0, 0x1
/* 8137D81C | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137D820 | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137D824 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137D828 | 38 9F E7 C0 */	subi r4, r31, 0x1840
/* 8137D82C | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137D830 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137D834 | 38 A0 00 20 */	li r5, 0x20
/* 8137D838 | 4B FF F2 79 */	bl BS2Mach_8137CAB0
/* 8137D83C | 48 00 00 18 */	b .L_8137D854
.L_8137D840:
/* 8137D840 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137D844 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D848 | 38 9F E7 C0 */	subi r4, r31, 0x1840
/* 8137D84C | 38 A5 B0 68 */	addi r5, r5, BS2DVDCallback@l
/* 8137D850 | 48 1C FF F5 */	bl fn_8154D844
.L_8137D854:
/* 8137D854 | 38 00 00 09 */	li r0, 0x9
/* 8137D858 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D85C | 48 00 19 88 */	b .L_8137F1E4
.L_8137D860:
/* 8137D860 | 4B FF F3 C9 */	bl CheckBS2CommandStatus
/* 8137D864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D868 | 41 82 19 7C */	beq .L_8137F1E4
/* 8137D86C | 38 9F E7 C0 */	subi r4, r31, 0x1840
/* 8137D870 | 3C 60 80 00 */	lis r3, 0x8000
/* 8137D874 | 38 A0 00 20 */	li r5, 0x20
/* 8137D878 | 4B FB 29 B9 */	bl memcpy
/* 8137D87C | 3F 40 80 00 */	lis r26, 0x8000
/* 8137D880 | 80 7A 00 18 */	lwz r3, 0x18(r26)
/* 8137D884 | 3C 03 A2 E4 */	subis r0, r3, 0x5d1c
/* 8137D888 | 28 00 9E A3 */	cmplwi r0, 0x9ea3
/* 8137D88C | 40 82 00 9C */	bne .L_8137D928
/* 8137D890 | 3F 60 80 00 */	lis r27, 0x8000
/* 8137D894 | 38 8D 85 4B */	li r4, lbl_8169658B@sda21
/* 8137D898 | 7F 63 DB 78 */	mr r3, r27
/* 8137D89C | 38 A0 00 04 */	li r5, 0x4
/* 8137D8A0 | 48 28 4C FD */	bl strncmp
/* 8137D8A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D8A8 | 41 82 00 4C */	beq .L_8137D8F4
/* 8137D8AC | 7F 63 DB 78 */	mr r3, r27
/* 8137D8B0 | 38 8D 85 50 */	li r4, lbl_81696590@sda21
/* 8137D8B4 | 38 A0 00 03 */	li r5, 0x3
/* 8137D8B8 | 48 28 4C E5 */	bl strncmp
/* 8137D8BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D8C0 | 41 82 00 34 */	beq .L_8137D8F4
/* 8137D8C4 | 7F 63 DB 78 */	mr r3, r27
/* 8137D8C8 | 38 8D 85 54 */	li r4, lbl_81696594@sda21
/* 8137D8CC | 38 A0 00 03 */	li r5, 0x3
/* 8137D8D0 | 48 28 4C CD */	bl strncmp
/* 8137D8D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D8D8 | 41 82 00 1C */	beq .L_8137D8F4
/* 8137D8DC | 7F 63 DB 78 */	mr r3, r27
/* 8137D8E0 | 38 8D 85 54 */	li r4, lbl_81696594@sda21
/* 8137D8E4 | 38 A0 00 03 */	li r5, 0x3
/* 8137D8E8 | 48 28 4C B5 */	bl strncmp
/* 8137D8EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D8F0 | 40 82 00 0C */	bne .L_8137D8FC
.L_8137D8F4:
/* 8137D8F4 | 38 00 00 00 */	li r0, 0x0
/* 8137D8F8 | 48 00 00 08 */	b .L_8137D900
.L_8137D8FC:
/* 8137D8FC | 38 00 00 01 */	li r0, 0x1
.L_8137D900:
/* 8137D900 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D904 | 41 82 00 24 */	beq .L_8137D928
/* 8137D908 | 38 7E 07 17 */	addi r3, r30, 0x717
/* 8137D90C | 4C C6 31 82 */	crclr cr1eq
/* 8137D910 | 4B FF D6 A5 */	bl BS2Report
/* 8137D914 | 38 60 00 00 */	li r3, 0x0
/* 8137D918 | 38 00 00 0F */	li r0, 0xf
/* 8137D91C | 90 6D B2 78 */	stw r3, lbl_816992B8@sda21(r0)
/* 8137D920 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D924 | 48 00 18 C0 */	b .L_8137F1E4
.L_8137D928:
/* 8137D928 | 80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 8137D92C | 3C 03 3D CD */	addis r0, r3, 0x3dcd
/* 8137D930 | 28 00 9F 3D */	cmplwi r0, 0x9f3d
/* 8137D934 | 40 82 00 1C */	bne .L_8137D950
/* 8137D938 | 38 7E 07 28 */	addi r3, r30, 0x728
/* 8137D93C | 4C C6 31 82 */	crclr cr1eq
/* 8137D940 | 4B FF D6 75 */	bl BS2Report
/* 8137D944 | 38 00 00 02 */	li r0, 0x2
/* 8137D948 | 90 0D B2 78 */	stw r0, lbl_816992B8@sda21(r0)
/* 8137D94C | 48 00 00 1C */	b .L_8137D968
.L_8137D950:
/* 8137D950 | 38 7E 07 3F */	addi r3, r30, 0x73f
/* 8137D954 | 4C C6 31 82 */	crclr cr1eq
/* 8137D958 | 4B FF D6 5D */	bl BS2Report
/* 8137D95C | 38 00 00 36 */	li r0, 0x36
/* 8137D960 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D964 | 48 00 18 80 */	b .L_8137F1E4
.L_8137D968:
/* 8137D968 | 38 00 00 0B */	li r0, 0xb
/* 8137D96C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137D970:
/* 8137D970 | 80 0D AA 1C */	lwz r0, lbl_81698A5C@sda21(r0)
/* 8137D974 | 3F 40 80 00 */	lis r26, 0x8000
/* 8137D978 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D97C | 40 82 00 10 */	bne .L_8137D98C
/* 8137D980 | 38 00 00 32 */	li r0, 0x32
/* 8137D984 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137D988 | 48 00 18 5C */	b .L_8137F1E4
.L_8137D98C:
/* 8137D98C | 88 1A 00 08 */	lbz r0, 0x8(r26)
/* 8137D990 | 38 60 00 00 */	li r3, 0x0
/* 8137D994 | 90 6D AA 1C */	stw r3, lbl_81698A5C@sda21(r0)
/* 8137D998 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137D99C | 41 82 00 30 */	beq .L_8137D9CC
/* 8137D9A0 | 88 BA 00 09 */	lbz r5, 0x9(r26)
/* 8137D9A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8137D9A8 | 41 82 00 08 */	beq .L_8137D9B0
/* 8137D9AC | 48 00 00 08 */	b .L_8137D9B4
.L_8137D9B0:
/* 8137D9B0 | 38 A0 00 0A */	li r5, 0xa
.L_8137D9B4:
/* 8137D9B4 | 3C C0 81 38 */	lis r6, BS2DVDCallback@ha
/* 8137D9B8 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D9BC | 38 80 00 01 */	li r4, 0x1
/* 8137D9C0 | 38 C6 B0 68 */	addi r6, r6, BS2DVDCallback@l
/* 8137D9C4 | 48 1C FF 5D */	bl fn_8154D920
/* 8137D9C8 | 48 00 00 1C */	b .L_8137D9E4
.L_8137D9CC:
/* 8137D9CC | 3C C0 81 38 */	lis r6, BS2DVDCallback@ha
/* 8137D9D0 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D9D4 | 38 C6 B0 68 */	addi r6, r6, BS2DVDCallback@l
/* 8137D9D8 | 38 80 00 00 */	li r4, 0x0
/* 8137D9DC | 38 A0 00 00 */	li r5, 0x0
/* 8137D9E0 | 48 1C FF 41 */	bl fn_8154D920
.L_8137D9E4:
/* 8137D9E4 | 38 00 00 0C */	li r0, 0xc
/* 8137D9E8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137D9EC:
/* 8137D9EC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137D9F0 | 4B FF ED 29 */	bl BS2Mach_8137C718
/* 8137D9F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137D9F8 | 41 82 17 EC */	beq .L_8137F1E4
/* 8137D9FC | 38 00 00 0D */	li r0, 0xd
/* 8137DA00 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DA04:
/* 8137DA04 | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137DA08 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DA0C | 38 9F 08 40 */	addi r4, r31, 0x840
/* 8137DA10 | 38 A0 20 00 */	li r5, 0x2000
/* 8137DA14 | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137DA18 | 38 C0 01 10 */	li r6, 0x110
/* 8137DA1C | 48 1D 0E 65 */	bl fn_8154E880
/* 8137DA20 | 38 00 00 0E */	li r0, 0xe
/* 8137DA24 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DA28:
/* 8137DA28 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DA2C | 4B FF EC ED */	bl BS2Mach_8137C718
/* 8137DA30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DA34 | 41 82 17 B0 */	beq .L_8137F1E4
/* 8137DA38 | 38 7F 08 40 */	addi r3, r31, 0x840
/* 8137DA3C | 83 63 00 18 */	lwz r27, 0x18(r3)
/* 8137DA40 | 48 1E D1 E1 */	bl fn_8156AC20
/* 8137DA44 | 7C 60 07 74 */	extsb r0, r3
/* 8137DA48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137DA4C | 41 82 00 30 */	beq .L_8137DA7C
/* 8137DA50 | 40 80 00 10 */	bge .L_8137DA60
/* 8137DA54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DA58 | 40 80 00 14 */	bge .L_8137DA6C
/* 8137DA5C | 48 00 00 40 */	b .L_8137DA9C
.L_8137DA60:
/* 8137DA60 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137DA64 | 40 80 00 38 */	bge .L_8137DA9C
/* 8137DA68 | 48 00 00 24 */	b .L_8137DA8C
.L_8137DA6C:
/* 8137DA6C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8137DA70 | 40 82 00 2C */	bne .L_8137DA9C
/* 8137DA74 | 38 00 00 01 */	li r0, 0x1
/* 8137DA78 | 48 00 00 28 */	b .L_8137DAA0
.L_8137DA7C:
/* 8137DA7C | 28 1B 00 01 */	cmplwi r27, 0x1
/* 8137DA80 | 40 82 00 1C */	bne .L_8137DA9C
/* 8137DA84 | 38 00 00 01 */	li r0, 0x1
/* 8137DA88 | 48 00 00 18 */	b .L_8137DAA0
.L_8137DA8C:
/* 8137DA8C | 28 1B 00 02 */	cmplwi r27, 0x2
/* 8137DA90 | 40 82 00 0C */	bne .L_8137DA9C
/* 8137DA94 | 38 00 00 01 */	li r0, 0x1
/* 8137DA98 | 48 00 00 08 */	b .L_8137DAA0
.L_8137DA9C:
/* 8137DA9C | 38 00 00 00 */	li r0, 0x0
.L_8137DAA0:
/* 8137DAA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DAA4 | 40 82 00 10 */	bne .L_8137DAB4
/* 8137DAA8 | 38 00 00 36 */	li r0, 0x36
/* 8137DAAC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DAB0 | 48 00 17 34 */	b .L_8137F1E4
.L_8137DAB4:
/* 8137DAB4 | 38 00 00 32 */	li r0, 0x32
/* 8137DAB8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DABC | 48 00 17 28 */	b .L_8137F1E4
.L_8137DAC0:
/* 8137DAC0 | 80 0D A9 F0 */	lwz r0, lbl_81698A30@sda21(r0)
/* 8137DAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DAC8 | 41 82 00 10 */	beq .L_8137DAD8
/* 8137DACC | 38 00 00 46 */	li r0, 0x46
/* 8137DAD0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DAD4 | 48 00 17 10 */	b .L_8137F1E4
.L_8137DAD8:
/* 8137DAD8 | 38 7F E8 00 */	subi r3, r31, 0x1800
/* 8137DADC | 38 80 00 20 */	li r4, 0x20
/* 8137DAE0 | 3C A0 00 01 */	lis r5, 0x1
/* 8137DAE4 | 4B FF F7 9D */	bl BS2Mach_8137D280
/* 8137DAE8 | 38 00 00 10 */	li r0, 0x10
/* 8137DAEC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DAF0:
/* 8137DAF0 | 4B FF F1 39 */	bl CheckBS2CommandStatus
/* 8137DAF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DAF8 | 41 82 16 EC */	beq .L_8137F1E4
/* 8137DAFC | 3B 7F E8 00 */	subi r27, r31, 0x1800
/* 8137DB00 | 38 7E 07 48 */	addi r3, r30, 0x748
/* 8137DB04 | 93 6D AA 60 */	stw r27, lbl_81698AA0@sda21(r0)
/* 8137DB08 | 38 80 00 20 */	li r4, 0x20
/* 8137DB0C | 4C C6 31 82 */	crclr cr1eq
/* 8137DB10 | 4B FF D4 A5 */	bl BS2Report
/* 8137DB14 | 80 8D AA 60 */	lwz r4, lbl_81698AA0@sda21(r0)
/* 8137DB18 | 38 7E 07 66 */	addi r3, r30, 0x766
/* 8137DB1C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8137DB20 | 4C C6 31 82 */	crclr cr1eq
/* 8137DB24 | 4B FF D4 91 */	bl BS2Report
/* 8137DB28 | 80 8D AA 60 */	lwz r4, lbl_81698AA0@sda21(r0)
/* 8137DB2C | 38 7E 07 84 */	addi r3, r30, 0x784
/* 8137DB30 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137DB34 | 4C C6 31 82 */	crclr cr1eq
/* 8137DB38 | 4B FF D4 7D */	bl BS2Report
/* 8137DB3C | 38 9B 00 08 */	addi r4, r27, 0x8
/* 8137DB40 | 38 7E 07 66 */	addi r3, r30, 0x766
/* 8137DB44 | 90 8D AA 5C */	stw r4, lbl_81698A9C@sda21(r0)
/* 8137DB48 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 8137DB4C | 4C C6 31 82 */	crclr cr1eq
/* 8137DB50 | 4B FF D4 65 */	bl BS2Report
/* 8137DB54 | 80 8D AA 5C */	lwz r4, lbl_81698A9C@sda21(r0)
/* 8137DB58 | 38 7E 07 84 */	addi r3, r30, 0x784
/* 8137DB5C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137DB60 | 4C C6 31 82 */	crclr cr1eq
/* 8137DB64 | 4B FF D4 51 */	bl BS2Report
/* 8137DB68 | 38 00 00 11 */	li r0, 0x11
/* 8137DB6C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DB70:
/* 8137DB70 | 80 AD AA 5C */	lwz r5, lbl_81698A9C@sda21(r0)
/* 8137DB74 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 8137DB78 | 80 8D AA 60 */	lwz r4, lbl_81698AA0@sda21(r0)
/* 8137DB7C | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8137DB80 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8137DB84 | 54 04 18 38 */	slwi r4, r0, 3
/* 8137DB88 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8137DB8C | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8137DB90 | 38 84 00 20 */	addi r4, r4, 0x20
/* 8137DB94 | 4B FF F6 ED */	bl BS2Mach_8137D280
/* 8137DB98 | 38 00 00 12 */	li r0, 0x12
/* 8137DB9C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DBA0:
/* 8137DBA0 | 4B FF F0 89 */	bl CheckBS2CommandStatus
/* 8137DBA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DBA8 | 41 82 16 3C */	beq .L_8137F1E4
/* 8137DBAC | 38 00 00 00 */	li r0, 0x0
/* 8137DBB0 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 8137DBB4 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
/* 8137DBB8 | 3B 60 00 00 */	li r27, 0x0
/* 8137DBBC | 90 0D AA 54 */	stw r0, lbl_81698A94@sda21(r0)
/* 8137DBC0 | 90 0D AA 50 */	stw r0, lbl_81698A90@sda21(r0)
/* 8137DBC4 | 48 00 00 60 */	b .L_8137DC24
.L_8137DBC8:
/* 8137DBC8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8137DBCC | 38 7E 00 54 */	addi r3, r30, 0x54
/* 8137DBD0 | 4C C6 31 82 */	crclr cr1eq
/* 8137DBD4 | 4B FF D3 E1 */	bl BS2Report
/* 8137DBD8 | 80 8D AA 58 */	lwz r4, lbl_81698A98@sda21(r0)
/* 8137DBDC | 38 7E 00 6E */	addi r3, r30, 0x6e
/* 8137DBE0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137DBE4 | 4C C6 31 82 */	crclr cr1eq
/* 8137DBE8 | 4B FF D3 CD */	bl BS2Report
/* 8137DBEC | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137DBF0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137DBF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DBF8 | 40 82 00 08 */	bne .L_8137DC00
/* 8137DBFC | 90 6D AA 50 */	stw r3, lbl_81698A90@sda21(r0)
.L_8137DC00:
/* 8137DC00 | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137DC04 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137DC08 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137DC0C | 40 82 00 08 */	bne .L_8137DC14
/* 8137DC10 | 90 6D AA 54 */	stw r3, lbl_81698A94@sda21(r0)
.L_8137DC14:
/* 8137DC14 | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137DC18 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8137DC1C | 38 63 00 08 */	addi r3, r3, 0x8
/* 8137DC20 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
.L_8137DC24:
/* 8137DC24 | 80 8D AA 60 */	lwz r4, lbl_81698AA0@sda21(r0)
/* 8137DC28 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8137DC2C | 7C 1B 00 40 */	cmplw r27, r0
/* 8137DC30 | 41 80 FF 98 */	blt .L_8137DBC8
/* 8137DC34 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 8137DC38 | 3B 60 00 00 */	li r27, 0x0
/* 8137DC3C | 38 63 00 20 */	addi r3, r3, 0x20
/* 8137DC40 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
/* 8137DC44 | 48 00 00 38 */	b .L_8137DC7C
.L_8137DC48:
/* 8137DC48 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8137DC4C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 8137DC50 | 4C C6 31 82 */	crclr cr1eq
/* 8137DC54 | 4B FF D3 61 */	bl BS2Report
/* 8137DC58 | 80 8D AA 58 */	lwz r4, lbl_81698A98@sda21(r0)
/* 8137DC5C | 38 7E 00 6E */	addi r3, r30, 0x6e
/* 8137DC60 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137DC64 | 4C C6 31 82 */	crclr cr1eq
/* 8137DC68 | 4B FF D3 4D */	bl BS2Report
/* 8137DC6C | 80 6D AA 58 */	lwz r3, lbl_81698A98@sda21(r0)
/* 8137DC70 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8137DC74 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8137DC78 | 90 6D AA 58 */	stw r3, lbl_81698A98@sda21(r0)
.L_8137DC7C:
/* 8137DC7C | 80 8D AA 5C */	lwz r4, lbl_81698A9C@sda21(r0)
/* 8137DC80 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8137DC84 | 7C 1B 00 40 */	cmplw r27, r0
/* 8137DC88 | 41 80 FF C0 */	blt .L_8137DC48
/* 8137DC8C | 38 00 00 13 */	li r0, 0x13
/* 8137DC90 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DC94:
/* 8137DC94 | 3C 80 00 01 */	lis r4, 0x1
/* 8137DC98 | 38 7F E8 20 */	subi r3, r31, 0x17e0
/* 8137DC9C | 38 A4 38 00 */	addi r5, r4, 0x3800
/* 8137DCA0 | 38 80 20 00 */	li r4, 0x2000
/* 8137DCA4 | 4B FF F5 DD */	bl BS2Mach_8137D280
/* 8137DCA8 | 38 00 00 14 */	li r0, 0x14
/* 8137DCAC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DCB0:
/* 8137DCB0 | 4B FF EF 79 */	bl CheckBS2CommandStatus
/* 8137DCB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DCB8 | 41 82 15 2C */	beq .L_8137F1E4
/* 8137DCBC | 38 7F E8 20 */	subi r3, r31, 0x17e0
/* 8137DCC0 | 80 63 1F FC */	lwz r3, 0x1ffc(r3)
/* 8137DCC4 | 3C 03 3C 08 */	addis r0, r3, 0x3c08
/* 8137DCC8 | 28 00 1A 8E */	cmplwi r0, 0x1a8e
/* 8137DCCC | 40 82 00 C4 */	bne .L_8137DD90
/* 8137DCD0 | 83 7F E8 20 */	lwz r27, -0x17e0(r31)
/* 8137DCD4 | 48 1E CF 4D */	bl fn_8156AC20
/* 8137DCD8 | 7C 60 07 74 */	extsb r0, r3
/* 8137DCDC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137DCE0 | 41 82 00 80 */	beq .L_8137DD60
/* 8137DCE4 | 40 80 00 1C */	bge .L_8137DD00
/* 8137DCE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137DCEC | 41 82 00 34 */	beq .L_8137DD20
/* 8137DCF0 | 40 80 00 40 */	bge .L_8137DD30
/* 8137DCF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DCF8 | 40 80 00 18 */	bge .L_8137DD10
/* 8137DCFC | 48 00 00 64 */	b .L_8137DD60
.L_8137DD00:
/* 8137DD00 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8137DD04 | 41 82 00 4C */	beq .L_8137DD50
/* 8137DD08 | 40 80 00 58 */	bge .L_8137DD60
/* 8137DD0C | 48 00 00 34 */	b .L_8137DD40
.L_8137DD10:
/* 8137DD10 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8137DD14 | 40 82 00 4C */	bne .L_8137DD60
/* 8137DD18 | 38 00 00 01 */	li r0, 0x1
/* 8137DD1C | 48 00 00 48 */	b .L_8137DD64
.L_8137DD20:
/* 8137DD20 | 28 1B 00 01 */	cmplwi r27, 0x1
/* 8137DD24 | 40 82 00 3C */	bne .L_8137DD60
/* 8137DD28 | 38 00 00 01 */	li r0, 0x1
/* 8137DD2C | 48 00 00 38 */	b .L_8137DD64
.L_8137DD30:
/* 8137DD30 | 28 1B 00 02 */	cmplwi r27, 0x2
/* 8137DD34 | 40 82 00 2C */	bne .L_8137DD60
/* 8137DD38 | 38 00 00 01 */	li r0, 0x1
/* 8137DD3C | 48 00 00 28 */	b .L_8137DD64
.L_8137DD40:
/* 8137DD40 | 28 1B 00 04 */	cmplwi r27, 0x4
/* 8137DD44 | 40 82 00 1C */	bne .L_8137DD60
/* 8137DD48 | 38 00 00 01 */	li r0, 0x1
/* 8137DD4C | 48 00 00 18 */	b .L_8137DD64
.L_8137DD50:
/* 8137DD50 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 8137DD54 | 40 82 00 0C */	bne .L_8137DD60
/* 8137DD58 | 38 00 00 01 */	li r0, 0x1
/* 8137DD5C | 48 00 00 08 */	b .L_8137DD64
.L_8137DD60:
/* 8137DD60 | 38 00 00 00 */	li r0, 0x0
.L_8137DD64:
/* 8137DD64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DD68 | 40 82 00 10 */	bne .L_8137DD78
/* 8137DD6C | 38 00 00 36 */	li r0, 0x36
/* 8137DD70 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DD74 | 48 00 14 70 */	b .L_8137F1E4
.L_8137DD78:
/* 8137DD78 | 48 00 25 59 */	bl BS2IsValidDisc
/* 8137DD7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DD80 | 40 82 00 1C */	bne .L_8137DD9C
/* 8137DD84 | 38 00 00 36 */	li r0, 0x36
/* 8137DD88 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DD8C | 48 00 14 58 */	b .L_8137F1E4
.L_8137DD90:
/* 8137DD90 | 38 00 00 36 */	li r0, 0x36
/* 8137DD94 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DD98 | 48 00 14 4C */	b .L_8137F1E4
.L_8137DD9C:
/* 8137DD9C | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137DDA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DDA4 | 41 82 00 10 */	beq .L_8137DDB4
/* 8137DDA8 | 38 00 00 25 */	li r0, 0x25
/* 8137DDAC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DDB0 | 48 00 14 34 */	b .L_8137F1E4
.L_8137DDB4:
/* 8137DDB4 | 80 0D AA 54 */	lwz r0, lbl_81698A94@sda21(r0)
/* 8137DDB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DDBC | 41 82 00 10 */	beq .L_8137DDCC
/* 8137DDC0 | 38 00 00 15 */	li r0, 0x15
/* 8137DDC4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DDC8 | 48 00 00 28 */	b .L_8137DDF0
.L_8137DDCC:
/* 8137DDCC | 80 0D AA 50 */	lwz r0, lbl_81698A90@sda21(r0)
/* 8137DDD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137DDD4 | 41 82 00 10 */	beq .L_8137DDE4
/* 8137DDD8 | 38 00 00 25 */	li r0, 0x25
/* 8137DDDC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DDE0 | 48 00 14 04 */	b .L_8137F1E4
.L_8137DDE4:
/* 8137DDE4 | 38 00 00 36 */	li r0, 0x36
/* 8137DDE8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DDEC | 48 00 13 F8 */	b .L_8137F1E4
.L_8137DDF0:
/* 8137DDF0 | 80 8D AA 54 */	lwz r4, lbl_81698A94@sda21(r0)
/* 8137DDF4 | 3C C0 81 38 */	lis r6, BS2DVDCallback@ha
/* 8137DDF8 | 38 FD 09 C0 */	addi r7, r29, 0x9c0
/* 8137DDFC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DE00 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8137DE04 | 38 87 03 C0 */	addi r4, r7, 0x3c0
/* 8137DE08 | 38 C6 B0 68 */	addi r6, r6, BS2DVDCallback@l
/* 8137DE0C | 48 1D 08 D5 */	bl fn_8154E6E0
/* 8137DE10 | 38 60 00 01 */	li r3, 0x1
/* 8137DE14 | 38 00 00 16 */	li r0, 0x16
/* 8137DE18 | 90 6D A9 E8 */	stw r3, lbl_81698A28@sda21(r0)
/* 8137DE1C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DE20 | 48 00 13 C4 */	b .L_8137F1E4
.L_8137DE24:
/* 8137DE24 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DE28 | 4B FF E8 F1 */	bl BS2Mach_8137C718
/* 8137DE2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DE30 | 41 82 13 B4 */	beq .L_8137F1E4
/* 8137DE34 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137DE38 | 38 7E 07 A2 */	addi r3, r30, 0x7a2
/* 8137DE3C | 38 84 03 C0 */	addi r4, r4, 0x3c0
/* 8137DE40 | 90 8D AA 40 */	stw r4, lbl_81698A80@sda21(r0)
/* 8137DE44 | 88 84 01 80 */	lbz r4, 0x180(r4)
/* 8137DE48 | 4C C6 31 82 */	crclr cr1eq
/* 8137DE4C | 4B FF D1 69 */	bl BS2Report
/* 8137DE50 | 80 8D AA 40 */	lwz r4, lbl_81698A80@sda21(r0)
/* 8137DE54 | 38 7E 07 BD */	addi r3, r30, 0x7bd
/* 8137DE58 | 88 84 01 81 */	lbz r4, 0x181(r4)
/* 8137DE5C | 4C C6 31 82 */	crclr cr1eq
/* 8137DE60 | 4B FF D1 55 */	bl BS2Report
/* 8137DE64 | 80 8D AA 40 */	lwz r4, lbl_81698A80@sda21(r0)
/* 8137DE68 | 38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 8137DE6C | 88 84 01 82 */	lbz r4, 0x182(r4)
/* 8137DE70 | 4C C6 31 82 */	crclr cr1eq
/* 8137DE74 | 4B FF D1 41 */	bl BS2Report
/* 8137DE78 | 80 AD AA 40 */	lwz r5, lbl_81698A80@sda21(r0)
/* 8137DE7C | 38 7E 07 F3 */	addi r3, r30, 0x7f3
/* 8137DE80 | 80 85 01 84 */	lwz r4, 0x184(r5)
/* 8137DE84 | 80 A5 01 88 */	lwz r5, 0x188(r5)
/* 8137DE88 | 4C C6 31 82 */	crclr cr1eq
/* 8137DE8C | 4B FF D1 29 */	bl BS2Report
/* 8137DE90 | 80 AD AA 40 */	lwz r5, lbl_81698A80@sda21(r0)
/* 8137DE94 | 38 7E 08 12 */	addi r3, r30, 0x812
/* 8137DE98 | 80 85 01 8C */	lwz r4, 0x18c(r5)
/* 8137DE9C | 80 A5 01 90 */	lwz r5, 0x190(r5)
/* 8137DEA0 | 4C C6 31 82 */	crclr cr1eq
/* 8137DEA4 | 4B FF D1 11 */	bl BS2Report
/* 8137DEA8 | 38 00 00 17 */	li r0, 0x17
/* 8137DEAC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DEB0 | 48 00 13 34 */	b .L_8137F1E4
.L_8137DEB4:
/* 8137DEB4 | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137DEB8 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DEBC | 38 9F 28 40 */	addi r4, r31, 0x2840
/* 8137DEC0 | 38 A0 00 20 */	li r5, 0x20
/* 8137DEC4 | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137DEC8 | 38 C0 00 00 */	li r6, 0x0
/* 8137DECC | 48 1C F8 A1 */	bl fn_8154D76C
/* 8137DED0 | 38 00 00 18 */	li r0, 0x18
/* 8137DED4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DED8 | 48 00 13 0C */	b .L_8137F1E4
.L_8137DEDC:
/* 8137DEDC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DEE0 | 4B FF E8 39 */	bl BS2Mach_8137C718
/* 8137DEE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DEE8 | 41 82 12 FC */	beq .L_8137F1E4
/* 8137DEEC | 38 7F 28 40 */	addi r3, r31, 0x2840
/* 8137DEF0 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8137DEF4 | 3C 03 A2 E4 */	subis r0, r3, 0x5d1c
/* 8137DEF8 | 28 00 9E A3 */	cmplwi r0, 0x9ea3
/* 8137DEFC | 40 82 00 10 */	bne .L_8137DF0C
/* 8137DF00 | 38 00 00 19 */	li r0, 0x19
/* 8137DF04 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DF08 | 48 00 00 10 */	b .L_8137DF18
.L_8137DF0C:
/* 8137DF0C | 38 00 00 23 */	li r0, 0x23
/* 8137DF10 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DF14 | 48 00 12 D0 */	b .L_8137F1E4
.L_8137DF18:
/* 8137DF18 | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137DF1C | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DF20 | 38 9F 08 20 */	addi r4, r31, 0x820
/* 8137DF24 | 38 A0 00 20 */	li r5, 0x20
/* 8137DF28 | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137DF2C | 38 C0 09 10 */	li r6, 0x910
/* 8137DF30 | 48 1C F8 3D */	bl fn_8154D76C
/* 8137DF34 | 38 00 00 1A */	li r0, 0x1a
/* 8137DF38 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DF3C | 48 00 12 A8 */	b .L_8137F1E4
.L_8137DF40:
/* 8137DF40 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DF44 | 4B FF E7 D5 */	bl BS2Mach_8137C718
/* 8137DF48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DF4C | 41 82 12 98 */	beq .L_8137F1E4
/* 8137DF50 | 3B 7F 08 20 */	addi r27, r31, 0x820
/* 8137DF54 | 38 7E 08 31 */	addi r3, r30, 0x831
/* 8137DF58 | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8137DF5C | 4C C6 31 82 */	crclr cr1eq
/* 8137DF60 | 4B FF D0 55 */	bl BS2Report
/* 8137DF64 | 80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8137DF68 | 38 7E 08 50 */	addi r3, r30, 0x850
/* 8137DF6C | 4C C6 31 82 */	crclr cr1eq
/* 8137DF70 | 4B FF D0 45 */	bl BS2Report
/* 8137DF74 | 38 00 00 1B */	li r0, 0x1b
/* 8137DF78 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137DF7C:
/* 8137DF7C | 38 7F 08 20 */	addi r3, r31, 0x820
/* 8137DF80 | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137DF84 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8137DF88 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DF8C | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137DF90 | 3C 80 81 20 */	lis r4, 0x8120
/* 8137DF94 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 8137DF98 | 38 C0 09 18 */	li r6, 0x918
/* 8137DF9C | 54 05 00 34 */	clrrwi r5, r0, 5
/* 8137DFA0 | 48 1C F7 CD */	bl fn_8154D76C
/* 8137DFA4 | 38 00 00 1C */	li r0, 0x1c
/* 8137DFA8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137DFAC | 48 00 12 38 */	b .L_8137F1E4
.L_8137DFB0:
/* 8137DFB0 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137DFB4 | 4B FF E7 65 */	bl BS2Mach_8137C718
/* 8137DFB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137DFBC | 41 82 12 28 */	beq .L_8137F1E4
/* 8137DFC0 | 3B 7F 08 20 */	addi r27, r31, 0x820
/* 8137DFC4 | 3C 60 81 20 */	lis r3, 0x8120
/* 8137DFC8 | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8137DFCC | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8137DFD0 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8137DFD4 | 48 1A FA 19 */	bl fn_8152D9EC
/* 8137DFD8 | 81 9B 00 10 */	lwz r12, 0x10(r27)
/* 8137DFDC | 38 6D AA B0 */	li r3, lbl_81698AF0@sda21
/* 8137DFE0 | 38 8D AA AC */	li r4, lbl_81698AEC@sda21
/* 8137DFE4 | 38 AD AA A8 */	li r5, lbl_81698AE8@sda21
/* 8137DFE8 | 7D 89 03 A6 */	mtctr r12
/* 8137DFEC | 4E 80 04 21 */	bctrl
/* 8137DFF0 | 81 8D AA B0 */	lwz r12, lbl_81698AF0@sda21(r0)
/* 8137DFF4 | 3C 60 81 38 */	lis r3, BS2Report@ha
/* 8137DFF8 | 38 63 AF B4 */	addi r3, r3, BS2Report@l
/* 8137DFFC | 7D 89 03 A6 */	mtctr r12
/* 8137E000 | 4E 80 04 21 */	bctrl
/* 8137E004 | 38 7E 08 6F */	addi r3, r30, 0x86f
/* 8137E008 | 4C C6 31 82 */	crclr cr1eq
/* 8137E00C | 4B FF CF A9 */	bl BS2Report
/* 8137E010 | 38 00 00 1D */	li r0, 0x1d
/* 8137E014 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137E018:
/* 8137E018 | 81 8D AA AC */	lwz r12, lbl_81698AEC@sda21(r0)
/* 8137E01C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8137E020 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8137E024 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8137E028 | 7D 89 03 A6 */	mtctr r12
/* 8137E02C | 4E 80 04 21 */	bctrl
/* 8137E030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E034 | 41 82 00 7C */	beq .L_8137E0B0
/* 8137E038 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8137E03C | 38 7E 08 87 */	addi r3, r30, 0x887
/* 8137E040 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8137E044 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8137E048 | 4C C6 31 82 */	crclr cr1eq
/* 8137E04C | 4B FF CF 69 */	bl BS2Report
/* 8137E050 | 48 1B 28 35 */	bl OSDisableInterrupts
/* 8137E054 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8137E058 | 3C E0 81 38 */	lis r7, BS2DVDCallback@ha
/* 8137E05C | 80 0D B2 78 */	lwz r0, lbl_816992B8@sda21(r0)
/* 8137E060 | 7C 7A 1B 78 */	mr r26, r3
/* 8137E064 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8137E068 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137E06C | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8137E070 | 7C C6 04 30 */	srw r6, r6, r0
/* 8137E074 | 38 E7 B0 68 */	addi r7, r7, BS2DVDCallback@l
/* 8137E078 | 48 1C F6 F5 */	bl fn_8154D76C
/* 8137E07C | 80 6D AA A4 */	lwz r3, lbl_81698AE4@sda21(r0)
/* 8137E080 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137E084 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E088 | 41 82 00 14 */	beq .L_8137E09C
/* 8137E08C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8137E090 | 38 60 00 01 */	li r3, 0x1
/* 8137E094 | 90 6D A9 CC */	stw r3, Transferring@sda21(r0)
/* 8137E098 | 90 0D AA 9C */	stw r0, lbl_81698ADC@sda21(r0)
.L_8137E09C:
/* 8137E09C | 7F 43 D3 78 */	mr r3, r26
/* 8137E0A0 | 48 1B 28 0D */	bl OSRestoreInterrupts
/* 8137E0A4 | 38 00 00 1E */	li r0, 0x1e
/* 8137E0A8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E0AC | 48 00 11 38 */	b .L_8137F1E4
.L_8137E0B0:
/* 8137E0B0 | 38 00 00 1F */	li r0, 0x1f
/* 8137E0B4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E0B8 | 48 00 11 2C */	b .L_8137F1E4
.L_8137E0BC:
/* 8137E0BC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137E0C0 | 4B FF E6 59 */	bl BS2Mach_8137C718
/* 8137E0C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E0C8 | 41 82 11 1C */	beq .L_8137F1E4
/* 8137E0CC | 38 00 00 1D */	li r0, 0x1d
/* 8137E0D0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E0D4 | 48 00 11 10 */	b .L_8137F1E4
.L_8137E0D8:
/* 8137E0D8 | 48 1C A8 A9 */	bl fn_81548980
/* 8137E0DC | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137E0E0 | 48 00 11 59 */	bl BS2UpdateInit
/* 8137E0E4 | 38 00 00 20 */	li r0, 0x20
/* 8137E0E8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E0EC | 48 00 10 F8 */	b .L_8137F1E4
.L_8137E0F0:
/* 8137E0F0 | 48 00 20 AD */	bl BS2UpdateState
/* 8137E0F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E0F8 | 40 82 00 54 */	bne .L_8137E14C
/* 8137E0FC | 48 1C FC C9 */	bl fn_8154DDC4
/* 8137E100 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8137E104 | 7C 7B 1B 78 */	mr r27, r3
/* 8137E108 | 41 82 00 1C */	beq .L_8137E124
/* 8137E10C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8137E110 | 41 82 00 14 */	beq .L_8137E124
/* 8137E114 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8137E118 | 41 82 00 0C */	beq .L_8137E124
/* 8137E11C | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8137E120 | 40 82 10 C4 */	bne .L_8137F1E4
.L_8137E124:
/* 8137E124 | 38 00 00 3C */	li r0, 0x3c
/* 8137E128 | 3C 60 81 38 */	lis r3, BS2DVDCallback@ha
/* 8137E12C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E130 | 38 63 B0 68 */	addi r3, r3, BS2DVDCallback@l
/* 8137E134 | 48 1D 01 79 */	bl fn_8154E2AC
/* 8137E138 | 2C 1B 00 0B */	cmpwi r27, 0xb
/* 8137E13C | 40 82 10 A8 */	bne .L_8137F1E4
/* 8137E140 | 38 00 00 01 */	li r0, 0x1
/* 8137E144 | 90 0D A9 F8 */	stw r0, RetryErrorFlag@sda21(r0)
/* 8137E148 | 48 00 10 9C */	b .L_8137F1E4
.L_8137E14C:
/* 8137E14C | 48 00 20 79 */	bl BS2GetUpdateEntryNum
/* 8137E150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E154 | 41 82 00 A8 */	beq .L_8137E1FC
/* 8137E158 | 48 00 20 45 */	bl BS2UpdateState
/* 8137E15C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137E160 | 40 82 00 9C */	bne .L_8137E1FC
/* 8137E164 | 48 00 20 61 */	bl BS2GetUpdateEntryNum
/* 8137E168 | 7C 64 1B 78 */	mr r4, r3
/* 8137E16C | 38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 8137E170 | 4C C6 31 82 */	crclr cr1eq
/* 8137E174 | 4B FF CE 41 */	bl BS2Report
/* 8137E178 | 48 1B 7B C1 */	bl __OSGetSystemTime
/* 8137E17C | 3C A0 80 00 */	lis r5, 0x8000
/* 8137E180 | 81 0D AA 34 */	lwz r8, lbl_81698A74@sda21(r0)
/* 8137E184 | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137E188 | 38 00 03 E8 */	li r0, 0x3e8
/* 8137E18C | 81 2D AA 30 */	lwz r9, lbl_81698A70@sda21(r0)
/* 8137E190 | 38 A0 00 64 */	li r5, 0x64
/* 8137E194 | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137E198 | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137E19C | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137E1A0 | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137E1A4 | 38 C0 00 00 */	li r6, 0x0
/* 8137E1A8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137E1AC | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137E1B0 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137E1B4 | 7C 63 22 14 */	add r3, r3, r4
/* 8137E1B8 | 1C A7 00 64 */	mulli r5, r7, 0x64
/* 8137E1BC | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137E1C0 | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137E1C4 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137E1C8 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137E1CC | 7C 84 00 D1 */	neg. r4, r4
/* 8137E1D0 | 40 82 10 14 */	bne .L_8137F1E4
/* 8137E1D4 | 48 1B 7B 65 */	bl __OSGetSystemTime
/* 8137E1D8 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137E1DC | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137E1E0 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137E1E4 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137E1E8 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137E1EC | 48 1D 01 B5 */	bl fn_8154E3A0
/* 8137E1F0 | 38 00 00 21 */	li r0, 0x21
/* 8137E1F4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E1F8 | 48 00 0F EC */	b .L_8137F1E4
.L_8137E1FC:
/* 8137E1FC | 38 7E 08 BC */	addi r3, r30, 0x8bc
/* 8137E200 | 4C C6 31 82 */	crclr cr1eq
/* 8137E204 | 4B FF CD B1 */	bl BS2Report
/* 8137E208 | 38 00 00 23 */	li r0, 0x23
/* 8137E20C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E210 | 48 00 0F D4 */	b .L_8137F1E4
.L_8137E214:
/* 8137E214 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137E218 | 4B FF E5 01 */	bl BS2Mach_8137C718
/* 8137E21C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E220 | 41 82 00 8C */	beq .L_8137E2AC
/* 8137E224 | 48 00 1F 79 */	bl BS2UpdateState
/* 8137E228 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137E22C | 40 82 00 80 */	bne .L_8137E2AC
/* 8137E230 | 48 1B 7B 09 */	bl __OSGetSystemTime
/* 8137E234 | 3C A0 80 00 */	lis r5, 0x8000
/* 8137E238 | 81 0D AA 34 */	lwz r8, lbl_81698A74@sda21(r0)
/* 8137E23C | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137E240 | 38 00 03 E8 */	li r0, 0x3e8
/* 8137E244 | 81 2D AA 30 */	lwz r9, lbl_81698A70@sda21(r0)
/* 8137E248 | 38 A0 00 64 */	li r5, 0x64
/* 8137E24C | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137E250 | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137E254 | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137E258 | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137E25C | 38 C0 00 00 */	li r6, 0x0
/* 8137E260 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137E264 | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137E268 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137E26C | 7C 63 22 14 */	add r3, r3, r4
/* 8137E270 | 1C A7 00 64 */	mulli r5, r7, 0x64
/* 8137E274 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137E278 | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137E27C | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137E280 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137E284 | 7C 84 00 D1 */	neg. r4, r4
/* 8137E288 | 40 82 0F 5C */	bne .L_8137F1E4
/* 8137E28C | 48 1B 7A AD */	bl __OSGetSystemTime
/* 8137E290 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137E294 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137E298 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137E29C | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137E2A0 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137E2A4 | 48 1D 00 FD */	bl fn_8154E3A0
/* 8137E2A8 | 48 00 0F 3C */	b .L_8137F1E4
.L_8137E2AC:
/* 8137E2AC | 48 00 1E F1 */	bl BS2UpdateState
/* 8137E2B0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137E2B4 | 41 82 0F 30 */	beq .L_8137F1E4
/* 8137E2B8 | 38 00 00 22 */	li r0, 0x22
/* 8137E2BC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137E2C0:
/* 8137E2C0 | 48 00 1E DD */	bl BS2UpdateState
/* 8137E2C4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8137E2C8 | 40 82 00 58 */	bne .L_8137E320
/* 8137E2CC | 48 1C FA F9 */	bl fn_8154DDC4
/* 8137E2D0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8137E2D4 | 7C 7B 1B 78 */	mr r27, r3
/* 8137E2D8 | 41 82 00 1C */	beq .L_8137E2F4
/* 8137E2DC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8137E2E0 | 41 82 00 14 */	beq .L_8137E2F4
/* 8137E2E4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8137E2E8 | 41 82 00 0C */	beq .L_8137E2F4
/* 8137E2EC | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8137E2F0 | 40 82 0E F4 */	bne .L_8137F1E4
.L_8137E2F4:
/* 8137E2F4 | 38 00 00 3C */	li r0, 0x3c
/* 8137E2F8 | 3C 60 81 38 */	lis r3, BS2DVDCallback@ha
/* 8137E2FC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E300 | 38 63 B0 68 */	addi r3, r3, BS2DVDCallback@l
/* 8137E304 | 48 1C FF A9 */	bl fn_8154E2AC
/* 8137E308 | 38 00 00 01 */	li r0, 0x1
/* 8137E30C | 2C 1B 00 0B */	cmpwi r27, 0xb
/* 8137E310 | 90 0D A9 FC */	stw r0, UpdateErrorFlag@sda21(r0)
/* 8137E314 | 40 82 0E D0 */	bne .L_8137F1E4
/* 8137E318 | 90 0D A9 F8 */	stw r0, RetryErrorFlag@sda21(r0)
/* 8137E31C | 48 00 0E C8 */	b .L_8137F1E4
.L_8137E320:
/* 8137E320 | 48 00 1E 7D */	bl BS2UpdateState
/* 8137E324 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8137E328 | 40 82 00 14 */	bne .L_8137E33C
/* 8137E32C | 38 7E 08 C6 */	addi r3, r30, 0x8c6
/* 8137E330 | 4C C6 31 82 */	crclr cr1eq
/* 8137E334 | 4B FF CC 81 */	bl BS2Report
/* 8137E338 | 48 00 00 90 */	b .L_8137E3C8
.L_8137E33C:
/* 8137E33C | 48 00 1E 61 */	bl BS2UpdateState
/* 8137E340 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8137E344 | 40 82 00 14 */	bne .L_8137E358
/* 8137E348 | 38 7E 08 D6 */	addi r3, r30, 0x8d6
/* 8137E34C | 4C C6 31 82 */	crclr cr1eq
/* 8137E350 | 4B FF CC 65 */	bl BS2Report
/* 8137E354 | 48 00 00 74 */	b .L_8137E3C8
.L_8137E358:
/* 8137E358 | 38 7E 08 F4 */	addi r3, r30, 0x8f4
/* 8137E35C | 4C C6 31 82 */	crclr cr1eq
/* 8137E360 | 4B FF CC 55 */	bl BS2Report
/* 8137E364 | 38 00 00 01 */	li r0, 0x1
/* 8137E368 | 90 0D A9 FC */	stw r0, UpdateErrorFlag@sda21(r0)
/* 8137E36C | 48 1C FA 59 */	bl fn_8154DDC4
/* 8137E370 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8137E374 | 7C 7B 1B 78 */	mr r27, r3
/* 8137E378 | 41 82 00 1C */	beq .L_8137E394
/* 8137E37C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8137E380 | 41 82 00 14 */	beq .L_8137E394
/* 8137E384 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8137E388 | 41 82 00 0C */	beq .L_8137E394
/* 8137E38C | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8137E390 | 40 82 00 2C */	bne .L_8137E3BC
.L_8137E394:
/* 8137E394 | 38 00 00 3C */	li r0, 0x3c
/* 8137E398 | 3C 60 81 38 */	lis r3, BS2DVDCallback@ha
/* 8137E39C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E3A0 | 38 63 B0 68 */	addi r3, r3, BS2DVDCallback@l
/* 8137E3A4 | 48 1C FF 09 */	bl fn_8154E2AC
/* 8137E3A8 | 2C 1B 00 0B */	cmpwi r27, 0xb
/* 8137E3AC | 40 82 0E 38 */	bne .L_8137F1E4
/* 8137E3B0 | 38 00 00 01 */	li r0, 0x1
/* 8137E3B4 | 90 0D A9 F8 */	stw r0, RetryErrorFlag@sda21(r0)
/* 8137E3B8 | 48 00 0E 2C */	b .L_8137F1E4
.L_8137E3BC:
/* 8137E3BC | 38 00 00 3A */	li r0, 0x3a
/* 8137E3C0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E3C4 | 48 00 0E 20 */	b .L_8137F1E4
.L_8137E3C8:
/* 8137E3C8 | 38 00 00 23 */	li r0, 0x23
/* 8137E3CC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E3D0 | 48 00 0E 14 */	b .L_8137F1E4
.L_8137E3D4:
/* 8137E3D4 | 3C 80 81 38 */	lis r4, BS2DVDCallback@ha
/* 8137E3D8 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137E3DC | 38 84 B0 68 */	addi r4, r4, BS2DVDCallback@l
/* 8137E3E0 | 48 1D 03 D5 */	bl DVDClosePartitionAsync
/* 8137E3E4 | 38 00 00 24 */	li r0, 0x24
/* 8137E3E8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E3EC | 48 00 0D F8 */	b .L_8137F1E4
.L_8137E3F0:
/* 8137E3F0 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137E3F4 | 4B FF E3 25 */	bl BS2Mach_8137C718
/* 8137E3F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E3FC | 41 82 0D E8 */	beq .L_8137F1E4
/* 8137E400 | 38 00 00 00 */	li r0, 0x0
/* 8137E404 | 90 0D A9 E8 */	stw r0, lbl_81698A28@sda21(r0)
/* 8137E408 | 48 00 1D 95 */	bl BS2UpdateState
/* 8137E40C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8137E410 | 40 82 00 10 */	bne .L_8137E420
/* 8137E414 | 38 00 00 41 */	li r0, 0x41
/* 8137E418 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E41C | 48 00 0D C8 */	b .L_8137F1E4
.L_8137E420:
/* 8137E420 | 80 0D AA 50 */	lwz r0, lbl_81698A90@sda21(r0)
/* 8137E424 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E428 | 41 82 00 10 */	beq .L_8137E438
/* 8137E42C | 38 00 00 25 */	li r0, 0x25
/* 8137E430 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E434 | 48 00 00 10 */	b .L_8137E444
.L_8137E438:
/* 8137E438 | 38 00 00 36 */	li r0, 0x36
/* 8137E43C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E440 | 48 00 0D A4 */	b .L_8137F1E4
.L_8137E444:
/* 8137E444 | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137E448 | 80 6D AA 50 */	lwz r3, lbl_81698A90@sda21(r0)
/* 8137E44C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E450 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8137E454 | 41 82 00 3C */	beq .L_8137E490
/* 8137E458 | 38 7E 09 03 */	addi r3, r30, 0x903
/* 8137E45C | 4C C6 31 82 */	crclr cr1eq
/* 8137E460 | 4B FF CB 55 */	bl BS2Report
/* 8137E464 | 38 00 00 01 */	li r0, 0x1
/* 8137E468 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137E46C | 3C C0 81 38 */	lis r6, BS2NANDCallback@ha
/* 8137E470 | 90 0D AA 0C */	stw r0, lbl_81698A4C@sda21(r0)
/* 8137E474 | 38 7D 08 70 */	addi r3, r29, 0x870
/* 8137E478 | 38 84 03 C0 */	addi r4, r4, 0x3c0
/* 8137E47C | 38 C6 B0 04 */	addi r6, r6, BS2NANDCallback@l
/* 8137E480 | 38 FD 08 FC */	addi r7, r29, 0x8fc
/* 8137E484 | 38 A0 4A 00 */	li r5, 0x4a00
/* 8137E488 | 4B FF E6 29 */	bl BS2Mach_8137CAB0
/* 8137E48C | 48 00 00 1C */	b .L_8137E4A8
.L_8137E490:
/* 8137E490 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137E494 | 3C C0 81 38 */	lis r6, BS2DVDCallback@ha
/* 8137E498 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137E49C | 38 84 03 C0 */	addi r4, r4, 0x3c0
/* 8137E4A0 | 38 C6 B0 68 */	addi r6, r6, BS2DVDCallback@l
/* 8137E4A4 | 48 1D 02 3D */	bl fn_8154E6E0
.L_8137E4A8:
/* 8137E4A8 | 38 60 00 01 */	li r3, 0x1
/* 8137E4AC | 38 00 00 26 */	li r0, 0x26
/* 8137E4B0 | 90 6D A9 E8 */	stw r3, lbl_81698A28@sda21(r0)
/* 8137E4B4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E4B8 | 48 00 0D 2C */	b .L_8137F1E4
.L_8137E4BC:
/* 8137E4BC | 4B FF E7 6D */	bl CheckBS2CommandStatus
/* 8137E4C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E4C4 | 41 82 0D 20 */	beq .L_8137F1E4
/* 8137E4C8 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137E4CC | 38 7E 07 A2 */	addi r3, r30, 0x7a2
/* 8137E4D0 | 38 84 03 C0 */	addi r4, r4, 0x3c0
/* 8137E4D4 | 90 8D AA 40 */	stw r4, lbl_81698A80@sda21(r0)
/* 8137E4D8 | 88 84 01 80 */	lbz r4, 0x180(r4)
/* 8137E4DC | 4C C6 31 82 */	crclr cr1eq
/* 8137E4E0 | 4B FF CA D5 */	bl BS2Report
/* 8137E4E4 | 80 8D AA 40 */	lwz r4, lbl_81698A80@sda21(r0)
/* 8137E4E8 | 38 7E 07 BD */	addi r3, r30, 0x7bd
/* 8137E4EC | 88 84 01 81 */	lbz r4, 0x181(r4)
/* 8137E4F0 | 4C C6 31 82 */	crclr cr1eq
/* 8137E4F4 | 4B FF CA C1 */	bl BS2Report
/* 8137E4F8 | 80 8D AA 40 */	lwz r4, lbl_81698A80@sda21(r0)
/* 8137E4FC | 38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 8137E500 | 88 84 01 82 */	lbz r4, 0x182(r4)
/* 8137E504 | 4C C6 31 82 */	crclr cr1eq
/* 8137E508 | 4B FF CA AD */	bl BS2Report
/* 8137E50C | 80 AD AA 40 */	lwz r5, lbl_81698A80@sda21(r0)
/* 8137E510 | 38 7E 07 F3 */	addi r3, r30, 0x7f3
/* 8137E514 | 80 85 01 84 */	lwz r4, 0x184(r5)
/* 8137E518 | 80 A5 01 88 */	lwz r5, 0x188(r5)
/* 8137E51C | 4C C6 31 82 */	crclr cr1eq
/* 8137E520 | 4B FF CA 95 */	bl BS2Report
/* 8137E524 | 80 AD AA 40 */	lwz r5, lbl_81698A80@sda21(r0)
/* 8137E528 | 38 7E 08 12 */	addi r3, r30, 0x812
/* 8137E52C | 80 85 01 8C */	lwz r4, 0x18c(r5)
/* 8137E530 | 80 A5 01 90 */	lwz r5, 0x190(r5)
/* 8137E534 | 4C C6 31 82 */	crclr cr1eq
/* 8137E538 | 4B FF CA 7D */	bl BS2Report
/* 8137E53C | 80 8D AA 40 */	lwz r4, lbl_81698A80@sda21(r0)
/* 8137E540 | 80 04 01 84 */	lwz r0, 0x184(r4)
/* 8137E544 | 80 64 01 88 */	lwz r3, 0x188(r4)
/* 8137E548 | 90 6D AA 4C */	stw r3, lbl_81698A8C@sda21(r0)
/* 8137E54C | 90 0D AA 48 */	stw r0, lbl_81698A88@sda21(r0)
/* 8137E550 | 83 64 01 90 */	lwz r27, 0x190(r4)
/* 8137E554 | 93 6D AA 44 */	stw r27, lbl_81698A84@sda21(r0)
/* 8137E558 | 80 04 01 84 */	lwz r0, 0x184(r4)
/* 8137E55C | 80 64 01 88 */	lwz r3, 0x188(r4)
/* 8137E560 | 68 00 00 01 */	xori r0, r0, 0x1
/* 8137E564 | 68 63 00 10 */	xori r3, r3, 0x10
/* 8137E568 | 7C 60 03 79 */	or. r0, r3, r0
/* 8137E56C | 40 82 00 1C */	bne .L_8137E588
/* 8137E570 | 38 7E 09 22 */	addi r3, r30, 0x922
/* 8137E574 | 4C C6 31 82 */	crclr cr1eq
/* 8137E578 | 4B FF CA 3D */	bl BS2Report
/* 8137E57C | 38 00 00 39 */	li r0, 0x39
/* 8137E580 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E584 | 48 00 0C 60 */	b .L_8137F1E4
.L_8137E588:
/* 8137E588 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8137E58C | 38 80 00 00 */	li r4, 0x0
/* 8137E590 | 38 A0 00 04 */	li r5, 0x4
/* 8137E594 | 4B FB 1D A1 */	bl memset
/* 8137E598 | 57 60 46 3E */	srwi r0, r27, 24
/* 8137E59C | 9B 61 00 0B */	stb r27, 0xb(r1)
/* 8137E5A0 | 2C 00 00 52 */	cmpwi r0, 0x52
/* 8137E5A4 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8137E5A8 | 40 80 00 10 */	bge .L_8137E5B8
/* 8137E5AC | 2C 00 00 44 */	cmpwi r0, 0x44
/* 8137E5B0 | 41 82 00 1C */	beq .L_8137E5CC
/* 8137E5B4 | 48 00 00 10 */	b .L_8137E5C4
.L_8137E5B8:
/* 8137E5B8 | 2C 00 00 55 */	cmpwi r0, 0x55
/* 8137E5BC | 40 80 00 08 */	bge .L_8137E5C4
/* 8137E5C0 | 48 00 00 0C */	b .L_8137E5CC
.L_8137E5C4:
/* 8137E5C4 | 38 00 00 01 */	li r0, 0x1
/* 8137E5C8 | 48 00 01 38 */	b .L_8137E700
.L_8137E5CC:
/* 8137E5CC | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8137E5D0 | 28 00 00 41 */	cmplwi r0, 0x41
/* 8137E5D4 | 40 82 00 0C */	bne .L_8137E5E0
/* 8137E5D8 | 38 00 00 01 */	li r0, 0x1
/* 8137E5DC | 48 00 01 24 */	b .L_8137E700
.L_8137E5E0:
/* 8137E5E0 | 48 1E C6 41 */	bl fn_8156AC20
/* 8137E5E4 | 7C 60 07 74 */	extsb r0, r3
/* 8137E5E8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137E5EC | 41 82 01 10 */	beq .L_8137E6FC
/* 8137E5F0 | 40 80 00 1C */	bge .L_8137E60C
/* 8137E5F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137E5F8 | 41 82 00 48 */	beq .L_8137E640
/* 8137E5FC | 40 80 00 6C */	bge .L_8137E668
/* 8137E600 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E604 | 40 80 00 18 */	bge .L_8137E61C
/* 8137E608 | 48 00 00 F4 */	b .L_8137E6FC
.L_8137E60C:
/* 8137E60C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8137E610 | 41 82 00 D4 */	beq .L_8137E6E4
/* 8137E614 | 40 80 00 E8 */	bge .L_8137E6FC
/* 8137E618 | 48 00 00 B4 */	b .L_8137E6CC
.L_8137E61C:
/* 8137E61C | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8137E620 | 2C 00 00 57 */	cmpwi r0, 0x57
/* 8137E624 | 41 82 00 14 */	beq .L_8137E638
/* 8137E628 | 40 80 00 D4 */	bge .L_8137E6FC
/* 8137E62C | 2C 00 00 4A */	cmpwi r0, 0x4a
/* 8137E630 | 41 82 00 08 */	beq .L_8137E638
/* 8137E634 | 48 00 00 C8 */	b .L_8137E6FC
.L_8137E638:
/* 8137E638 | 38 00 00 01 */	li r0, 0x1
/* 8137E63C | 48 00 00 C4 */	b .L_8137E700
.L_8137E640:
/* 8137E640 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8137E644 | 2C 00 00 58 */	cmpwi r0, 0x58
/* 8137E648 | 40 80 00 10 */	bge .L_8137E658
/* 8137E64C | 2C 00 00 45 */	cmpwi r0, 0x45
/* 8137E650 | 41 82 00 10 */	beq .L_8137E660
/* 8137E654 | 48 00 00 A8 */	b .L_8137E6FC
.L_8137E658:
/* 8137E658 | 2C 00 00 5B */	cmpwi r0, 0x5b
/* 8137E65C | 40 80 00 A0 */	bge .L_8137E6FC
.L_8137E660:
/* 8137E660 | 38 00 00 01 */	li r0, 0x1
/* 8137E664 | 48 00 00 9C */	b .L_8137E700
.L_8137E668:
/* 8137E668 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 8137E66C | 38 03 FF BC */	subi r0, r3, 0x44
/* 8137E670 | 28 00 00 16 */	cmplwi r0, 0x16
/* 8137E674 | 41 81 00 88 */	bgt .L_8137E6FC
/* 8137E678 | 3C 60 81 64 */	lis r3, jumptable_816467F4@ha
/* 8137E67C | 54 00 10 3A */	slwi r0, r0, 2
/* 8137E680 | 38 63 67 F4 */	addi r3, r3, jumptable_816467F4@l
/* 8137E684 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8137E688 | 7C 69 03 A6 */	mtctr r3
/* 8137E68C | 4E 80 04 20 */	bctr
.L_8137E690:
/* 8137E690 | 38 00 00 01 */	li r0, 0x1
/* 8137E694 | 48 00 00 6C */	b .L_8137E700
.L_8137E698:
/* 8137E698 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8137E69C | 57 64 86 3E */	extrwi r4, r27, 8, 8
/* 8137E6A0 | 57 63 C6 3E */	extrwi r3, r27, 8, 16
/* 8137E6A4 | 98 81 00 09 */	stb r4, 0x9(r1)
/* 8137E6A8 | 28 00 00 52 */	cmplwi r0, 0x52
/* 8137E6AC | 98 61 00 0A */	stb r3, 0xa(r1)
/* 8137E6B0 | 40 82 00 4C */	bne .L_8137E6FC
/* 8137E6B4 | 28 04 00 4C */	cmplwi r4, 0x4c
/* 8137E6B8 | 40 82 00 44 */	bne .L_8137E6FC
/* 8137E6BC | 28 03 00 57 */	cmplwi r3, 0x57
/* 8137E6C0 | 40 82 00 3C */	bne .L_8137E6FC
/* 8137E6C4 | 38 00 00 01 */	li r0, 0x1
/* 8137E6C8 | 48 00 00 38 */	b .L_8137E700
.L_8137E6CC:
/* 8137E6CC | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8137E6D0 | 2C 00 00 4B */	cmpwi r0, 0x4b
/* 8137E6D4 | 41 82 00 08 */	beq .L_8137E6DC
/* 8137E6D8 | 48 00 00 24 */	b .L_8137E6FC
.L_8137E6DC:
/* 8137E6DC | 38 00 00 01 */	li r0, 0x1
/* 8137E6E0 | 48 00 00 20 */	b .L_8137E700
.L_8137E6E4:
/* 8137E6E4 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8137E6E8 | 2C 00 00 43 */	cmpwi r0, 0x43
/* 8137E6EC | 41 82 00 08 */	beq .L_8137E6F4
/* 8137E6F0 | 48 00 00 0C */	b .L_8137E6FC
.L_8137E6F4:
/* 8137E6F4 | 38 00 00 01 */	li r0, 0x1
/* 8137E6F8 | 48 00 00 08 */	b .L_8137E700
.L_8137E6FC:
/* 8137E6FC | 38 00 00 00 */	li r0, 0x0
.L_8137E700:
/* 8137E700 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E704 | 40 82 00 18 */	bne .L_8137E71C
/* 8137E708 | 38 60 00 00 */	li r3, 0x0
/* 8137E70C | 38 00 00 2F */	li r0, 0x2f
/* 8137E710 | 90 6D AA 08 */	stw r3, lbl_81698A48@sda21(r0)
/* 8137E714 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E718 | 48 00 0A CC */	b .L_8137F1E4
.L_8137E71C:
/* 8137E71C | 38 60 00 01 */	li r3, 0x1
/* 8137E720 | 38 00 00 27 */	li r0, 0x27
/* 8137E724 | 90 6D AA 08 */	stw r3, lbl_81698A48@sda21(r0)
/* 8137E728 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137E72C:
/* 8137E72C | 38 7F 08 20 */	addi r3, r31, 0x820
/* 8137E730 | 38 80 00 20 */	li r4, 0x20
/* 8137E734 | 38 A0 09 10 */	li r5, 0x910
/* 8137E738 | 4B FF EB E5 */	bl BS2Mach_8137D31C
/* 8137E73C | 38 00 00 28 */	li r0, 0x28
/* 8137E740 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E744 | 48 00 0A A0 */	b .L_8137F1E4
.L_8137E748:
/* 8137E748 | 4B FF E4 E1 */	bl CheckBS2CommandStatus
/* 8137E74C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E750 | 41 82 0A 94 */	beq .L_8137F1E4
/* 8137E754 | 3B 7F 08 20 */	addi r27, r31, 0x820
/* 8137E758 | 38 7E 08 31 */	addi r3, r30, 0x831
/* 8137E75C | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8137E760 | 4C C6 31 82 */	crclr cr1eq
/* 8137E764 | 4B FF C8 51 */	bl BS2Report
/* 8137E768 | 80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8137E76C | 38 7E 08 50 */	addi r3, r30, 0x850
/* 8137E770 | 4C C6 31 82 */	crclr cr1eq
/* 8137E774 | 4B FF C8 41 */	bl BS2Report
/* 8137E778 | 38 00 00 29 */	li r0, 0x29
/* 8137E77C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137E780:
/* 8137E780 | 38 9F 08 20 */	addi r4, r31, 0x820
/* 8137E784 | 3C 60 81 20 */	lis r3, 0x8120
/* 8137E788 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 8137E78C | 38 A0 09 18 */	li r5, 0x918
/* 8137E790 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8137E794 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8137E798 | 4B FF EB 85 */	bl BS2Mach_8137D31C
/* 8137E79C | 38 00 00 2A */	li r0, 0x2a
/* 8137E7A0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E7A4 | 48 00 0A 40 */	b .L_8137F1E4
.L_8137E7A8:
/* 8137E7A8 | 4B FF E4 81 */	bl CheckBS2CommandStatus
/* 8137E7AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E7B0 | 41 82 0A 34 */	beq .L_8137F1E4
/* 8137E7B4 | 3B 7F 08 20 */	addi r27, r31, 0x820
/* 8137E7B8 | 3C 60 81 20 */	lis r3, 0x8120
/* 8137E7BC | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8137E7C0 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8137E7C4 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8137E7C8 | 48 1A F2 25 */	bl fn_8152D9EC
/* 8137E7CC | 81 9B 00 10 */	lwz r12, 0x10(r27)
/* 8137E7D0 | 38 6D AA B0 */	li r3, lbl_81698AF0@sda21
/* 8137E7D4 | 38 8D AA AC */	li r4, lbl_81698AEC@sda21
/* 8137E7D8 | 38 AD AA A8 */	li r5, lbl_81698AE8@sda21
/* 8137E7DC | 7D 89 03 A6 */	mtctr r12
/* 8137E7E0 | 4E 80 04 21 */	bctrl
/* 8137E7E4 | 81 8D AA B0 */	lwz r12, lbl_81698AF0@sda21(r0)
/* 8137E7E8 | 3C 60 81 53 */	lis r3, OSReport@ha
/* 8137E7EC | 38 63 E6 A0 */	addi r3, r3, OSReport@l
/* 8137E7F0 | 7D 89 03 A6 */	mtctr r12
/* 8137E7F4 | 4E 80 04 21 */	bctrl
/* 8137E7F8 | 38 7E 08 6F */	addi r3, r30, 0x86f
/* 8137E7FC | 4C C6 31 82 */	crclr cr1eq
/* 8137E800 | 4B FF C7 B5 */	bl BS2Report
/* 8137E804 | 38 00 00 2B */	li r0, 0x2b
/* 8137E808 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137E80C:
/* 8137E80C | 81 8D AA AC */	lwz r12, lbl_81698AEC@sda21(r0)
/* 8137E810 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8137E814 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8137E818 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8137E81C | 7D 89 03 A6 */	mtctr r12
/* 8137E820 | 4E 80 04 21 */	bctrl
/* 8137E824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E828 | 41 82 00 90 */	beq .L_8137E8B8
/* 8137E82C | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8137E830 | 38 7E 08 87 */	addi r3, r30, 0x887
/* 8137E834 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8137E838 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8137E83C | 4C C6 31 82 */	crclr cr1eq
/* 8137E840 | 4B FF C7 75 */	bl BS2Report
/* 8137E844 | 48 1B 20 41 */	bl OSDisableInterrupts
/* 8137E848 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8137E84C | 7C 7A 1B 78 */	mr r26, r3
/* 8137E850 | 80 0D B2 78 */	lwz r0, lbl_816992B8@sda21(r0)
/* 8137E854 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 8137E858 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8137E85C | 7C A5 04 30 */	srw r5, r5, r0
/* 8137E860 | 4B FF EA BD */	bl BS2Mach_8137D31C
/* 8137E864 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8137E868 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8137E86C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8137E870 | 90 8D AA 8C */	stw r4, lbl_81698ACC@sda21(r0)
/* 8137E874 | 80 6D AA A4 */	lwz r3, lbl_81698AE4@sda21(r0)
/* 8137E878 | 90 AD AA 90 */	stw r5, lbl_81698AD0@sda21(r0)
/* 8137E87C | 90 0D AA 88 */	stw r0, lbl_81698AC8@sda21(r0)
/* 8137E880 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137E884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E888 | 41 82 00 1C */	beq .L_8137E8A4
/* 8137E88C | 80 0D A9 9C */	lwz r0, BS2BootFromCache@sda21(r0)
/* 8137E890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E894 | 40 82 00 10 */	bne .L_8137E8A4
/* 8137E898 | 38 00 00 01 */	li r0, 0x1
/* 8137E89C | 90 0D A9 CC */	stw r0, Transferring@sda21(r0)
/* 8137E8A0 | 90 8D AA 9C */	stw r4, lbl_81698ADC@sda21(r0)
.L_8137E8A4:
/* 8137E8A4 | 7F 43 D3 78 */	mr r3, r26
/* 8137E8A8 | 48 1B 20 05 */	bl OSRestoreInterrupts
/* 8137E8AC | 38 00 00 2C */	li r0, 0x2c
/* 8137E8B0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E8B4 | 48 00 09 30 */	b .L_8137F1E4
.L_8137E8B8:
/* 8137E8B8 | 38 00 00 2D */	li r0, 0x2d
/* 8137E8BC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E8C0 | 48 00 09 24 */	b .L_8137F1E4
.L_8137E8C4:
/* 8137E8C4 | 4B FF E3 65 */	bl CheckBS2CommandStatus
/* 8137E8C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E8CC | 41 82 09 18 */	beq .L_8137F1E4
/* 8137E8D0 | 38 00 00 2B */	li r0, 0x2b
/* 8137E8D4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E8D8 | 48 00 09 0C */	b .L_8137F1E4
.L_8137E8DC:
/* 8137E8DC | 38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 8137E8E0 | 80 03 03 A0 */	lwz r0, 0x3a0(r3)
/* 8137E8E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E8E8 | 41 82 00 10 */	beq .L_8137E8F8
/* 8137E8EC | 38 00 00 2F */	li r0, 0x2f
/* 8137E8F0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137E8F4 | 48 00 08 F0 */	b .L_8137F1E4
.L_8137E8F8:
/* 8137E8F8 | 48 1C A0 89 */	bl fn_81548980
/* 8137E8FC | 38 7E 09 3E */	addi r3, r30, 0x93e
/* 8137E900 | 48 1C A0 B1 */	bl DVDConvertPathToEntrynum
/* 8137E904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E908 | 41 80 01 2C */	blt .L_8137EA34
/* 8137E90C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8137E910 | 48 1C A3 C9 */	bl DVDFastOpen
/* 8137E914 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137E918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E91C | 41 82 00 78 */	beq .L_8137E994
/* 8137E920 | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137E924 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137E928 | 41 82 00 08 */	beq .L_8137E930
/* 8137E92C | 48 1D CD 4D */	bl fn_8155B678
.L_8137E930:
/* 8137E930 | 80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8137E934 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137E938 | 38 04 00 3F */	addi r0, r4, 0x3f
/* 8137E93C | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8137E940 | 48 1D CD 29 */	bl fn_8155B668
/* 8137E944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137E948 | 90 6D A9 D0 */	stw r3, BannerBuffer@sda21(r0)
/* 8137E94C | 40 82 00 1C */	bne .L_8137E968
/* 8137E950 | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 8137E954 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137E958 | 38 BE 09 4B */	addi r5, r30, 0x94b
/* 8137E95C | 38 80 12 C8 */	li r4, 0x12c8
/* 8137E960 | 4C C6 31 82 */	crclr cr1eq
/* 8137E964 | 48 1A FD CD */	bl OSPanic
.L_8137E968:
/* 8137E968 | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137E96C | 38 7E 09 80 */	addi r3, r30, 0x980
/* 8137E970 | 80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8137E974 | 54 85 06 FE */	clrlwi r5, r4, 27
/* 8137E978 | 38 84 00 20 */	addi r4, r4, 0x20
/* 8137E97C | 7C 85 20 50 */	subf r4, r5, r4
/* 8137E980 | 90 0D AA 98 */	stw r0, lbl_81698AD8@sda21(r0)
/* 8137E984 | 90 8D A9 D4 */	stw r4, BannerBufferAddr@sda21(r0)
/* 8137E988 | 4C C6 31 82 */	crclr cr1eq
/* 8137E98C | 4B FF C6 29 */	bl BS2Report
/* 8137E990 | 48 00 00 70 */	b .L_8137EA00
.L_8137E994:
/* 8137E994 | 80 0D A9 D4 */	lwz r0, BannerBufferAddr@sda21(r0)
/* 8137E998 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E99C | 41 82 00 50 */	beq .L_8137E9EC
/* 8137E9A0 | 80 0D AA 98 */	lwz r0, lbl_81698AD8@sda21(r0)
/* 8137E9A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137E9A8 | 41 82 00 44 */	beq .L_8137E9EC
/* 8137E9AC | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 8137E9B0 | 80 6D AA 98 */	lwz r3, lbl_81698AD8@sda21(r0)
/* 8137E9B4 | 38 06 00 1F */	addi r0, r6, 0x1f
/* 8137E9B8 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8137E9BC | 7C 03 00 40 */	cmplw r3, r0
/* 8137E9C0 | 40 80 00 18 */	bge .L_8137E9D8
/* 8137E9C4 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137E9C8 | 38 BE 09 99 */	addi r5, r30, 0x999
/* 8137E9CC | 38 80 12 D3 */	li r4, 0x12d3
/* 8137E9D0 | 4C C6 31 82 */	crclr cr1eq
/* 8137E9D4 | 48 1A FD 5D */	bl OSPanic
.L_8137E9D8:
/* 8137E9D8 | 80 8D A9 D4 */	lwz r4, BannerBufferAddr@sda21(r0)
/* 8137E9DC | 38 7E 09 80 */	addi r3, r30, 0x980
/* 8137E9E0 | 4C C6 31 82 */	crclr cr1eq
/* 8137E9E4 | 4B FF C5 D1 */	bl BS2Report
/* 8137E9E8 | 48 00 00 18 */	b .L_8137EA00
.L_8137E9EC:
/* 8137E9EC | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137E9F0 | 38 BE 09 E0 */	addi r5, r30, 0x9e0
/* 8137E9F4 | 38 80 12 DA */	li r4, 0x12da
/* 8137E9F8 | 4C C6 31 82 */	crclr cr1eq
/* 8137E9FC | 48 1A FD 35 */	bl OSPanic
.L_8137EA00:
/* 8137EA00 | 80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8137EA04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EA08 | 41 82 00 2C */	beq .L_8137EA34
/* 8137EA0C | 38 63 00 1F */	addi r3, r3, 0x1f
/* 8137EA10 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 8137EA14 | 80 0D B2 78 */	lwz r0, lbl_816992B8@sda21(r0)
/* 8137EA18 | 54 64 00 34 */	clrrwi r4, r3, 5
/* 8137EA1C | 80 6D A9 D4 */	lwz r3, BannerBufferAddr@sda21(r0)
/* 8137EA20 | 7C A5 04 30 */	srw r5, r5, r0
/* 8137EA24 | 4B FF E8 F9 */	bl BS2Mach_8137D31C
/* 8137EA28 | 38 00 00 2E */	li r0, 0x2e
/* 8137EA2C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EA30 | 48 00 07 B4 */	b .L_8137F1E4
.L_8137EA34:
/* 8137EA34 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137EA38 | 3B 60 00 00 */	li r27, 0x0
/* 8137EA3C | 93 6D A9 D8 */	stw r27, BannerAvailable@sda21(r0)
/* 8137EA40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EA44 | 41 82 00 20 */	beq .L_8137EA64
/* 8137EA48 | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137EA4C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137EA50 | 41 82 00 14 */	beq .L_8137EA64
/* 8137EA54 | 48 1D CC 25 */	bl fn_8155B678
/* 8137EA58 | 93 6D A9 D0 */	stw r27, BannerBuffer@sda21(r0)
/* 8137EA5C | 93 6D A9 D4 */	stw r27, BannerBufferAddr@sda21(r0)
/* 8137EA60 | 93 6D AA 98 */	stw r27, lbl_81698AD8@sda21(r0)
.L_8137EA64:
/* 8137EA64 | 38 00 00 2F */	li r0, 0x2f
/* 8137EA68 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EA6C | 48 00 07 78 */	b .L_8137F1E4
.L_8137EA70:
/* 8137EA70 | 4B FF E1 B9 */	bl CheckBS2CommandStatus
/* 8137EA74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EA78 | 41 82 07 6C */	beq .L_8137F1E4
/* 8137EA7C | 38 60 00 01 */	li r3, 0x1
/* 8137EA80 | 38 00 00 2F */	li r0, 0x2f
/* 8137EA84 | 90 6D A9 D8 */	stw r3, BannerAvailable@sda21(r0)
/* 8137EA88 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EA8C | 48 00 07 58 */	b .L_8137F1E4
.L_8137EA90:
/* 8137EA90 | 3C 80 81 38 */	lis r4, BS2DVDCallback@ha
/* 8137EA94 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EA98 | 38 84 B0 68 */	addi r4, r4, BS2DVDCallback@l
/* 8137EA9C | 48 1C FD 19 */	bl DVDClosePartitionAsync
/* 8137EAA0 | 38 00 00 30 */	li r0, 0x30
/* 8137EAA4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EAA8 | 48 00 07 3C */	b .L_8137F1E4
.L_8137EAAC:
/* 8137EAAC | 4B FF E1 7D */	bl CheckBS2CommandStatus
/* 8137EAB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EAB4 | 41 82 07 30 */	beq .L_8137F1E4
/* 8137EAB8 | 38 60 00 00 */	li r3, 0x0
/* 8137EABC | 90 6D A9 E8 */	stw r3, lbl_81698A28@sda21(r0)
/* 8137EAC0 | 80 0D AA 08 */	lwz r0, lbl_81698A48@sda21(r0)
/* 8137EAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EAC8 | 40 82 00 10 */	bne .L_8137EAD8
/* 8137EACC | 38 00 00 36 */	li r0, 0x36
/* 8137EAD0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EAD4 | 48 00 07 10 */	b .L_8137F1E4
.L_8137EAD8:
/* 8137EAD8 | 80 0D 84 D8 */	lwz r0, BS2BootCaching@sda21(r0)
/* 8137EADC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EAE0 | 41 82 00 10 */	beq .L_8137EAF0
/* 8137EAE4 | 38 00 00 01 */	li r0, 0x1
/* 8137EAE8 | 90 0D A9 9C */	stw r0, BS2BootFromCache@sda21(r0)
/* 8137EAEC | 90 6D 84 D8 */	stw r3, BS2BootCaching@sda21(r0)
.L_8137EAF0:
/* 8137EAF0 | 80 6D AA 40 */	lwz r3, lbl_81698A80@sda21(r0)
/* 8137EAF4 | 80 63 01 90 */	lwz r3, 0x190(r3)
/* 8137EAF8 | 3C 03 FF B4 */	subis r0, r3, 0x4c
/* 8137EAFC | 28 00 4F 43 */	cmplwi r0, 0x4f43
/* 8137EB00 | 40 82 00 1C */	bne .L_8137EB1C
/* 8137EB04 | 80 0D A9 F0 */	lwz r0, lbl_81698A30@sda21(r0)
/* 8137EB08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EB0C | 40 82 00 10 */	bne .L_8137EB1C
/* 8137EB10 | 38 00 00 45 */	li r0, 0x45
/* 8137EB14 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EB18 | 48 00 00 28 */	b .L_8137EB40
.L_8137EB1C:
/* 8137EB1C | 38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 8137EB20 | 80 03 03 A0 */	lwz r0, 0x3a0(r3)
/* 8137EB24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EB28 | 41 82 00 10 */	beq .L_8137EB38
/* 8137EB2C | 38 00 00 48 */	li r0, 0x48
/* 8137EB30 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EB34 | 48 00 00 0C */	b .L_8137EB40
.L_8137EB38:
/* 8137EB38 | 38 00 00 31 */	li r0, 0x31
/* 8137EB3C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137EB40:
/* 8137EB40 | 48 1B 71 F9 */	bl __OSGetSystemTime
/* 8137EB44 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137EB48 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137EB4C | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137EB50 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137EB54 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137EB58 | 48 1C F8 49 */	bl fn_8154E3A0
/* 8137EB5C | 48 00 06 88 */	b .L_8137F1E4
.L_8137EB60:
/* 8137EB60 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137EB64 | 4B FF DB B5 */	bl BS2Mach_8137C718
/* 8137EB68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EB6C | 41 82 06 78 */	beq .L_8137F1E4
/* 8137EB70 | 80 0D A9 E0 */	lwz r0, StartingGame@sda21(r0)
/* 8137EB74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EB78 | 40 82 06 6C */	bne .L_8137F1E4
/* 8137EB7C | 48 1B 71 BD */	bl __OSGetSystemTime
/* 8137EB80 | 3C A0 80 00 */	lis r5, 0x8000
/* 8137EB84 | 81 0D AA 34 */	lwz r8, lbl_81698A74@sda21(r0)
/* 8137EB88 | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137EB8C | 38 00 03 E8 */	li r0, 0x3e8
/* 8137EB90 | 81 2D AA 30 */	lwz r9, lbl_81698A70@sda21(r0)
/* 8137EB94 | 38 A0 00 64 */	li r5, 0x64
/* 8137EB98 | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137EB9C | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137EBA0 | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137EBA4 | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137EBA8 | 38 C0 00 00 */	li r6, 0x0
/* 8137EBAC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137EBB0 | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137EBB4 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137EBB8 | 7C 63 22 14 */	add r3, r3, r4
/* 8137EBBC | 1C A7 00 64 */	mulli r5, r7, 0x64
/* 8137EBC0 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137EBC4 | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137EBC8 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137EBCC | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137EBD0 | 7C 84 00 D1 */	neg. r4, r4
/* 8137EBD4 | 40 82 06 10 */	bne .L_8137F1E4
/* 8137EBD8 | 48 1B 71 61 */	bl __OSGetSystemTime
/* 8137EBDC | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137EBE0 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137EBE4 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137EBE8 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137EBEC | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137EBF0 | 48 1C F7 B1 */	bl fn_8154E3A0
/* 8137EBF4 | 48 00 05 F0 */	b .L_8137F1E4
.L_8137EBF8:
/* 8137EBF8 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137EBFC | 4B FF DB 1D */	bl BS2Mach_8137C718
/* 8137EC00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EC04 | 41 82 05 E0 */	beq .L_8137F1E4
/* 8137EC08 | 80 0D A9 E0 */	lwz r0, StartingGame@sda21(r0)
/* 8137EC0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EC10 | 40 82 05 D4 */	bne .L_8137F1E4
/* 8137EC14 | 48 1B 71 25 */	bl __OSGetSystemTime
/* 8137EC18 | 3C A0 80 00 */	lis r5, 0x8000
/* 8137EC1C | 81 0D AA 34 */	lwz r8, lbl_81698A74@sda21(r0)
/* 8137EC20 | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137EC24 | 38 00 03 E8 */	li r0, 0x3e8
/* 8137EC28 | 81 2D AA 30 */	lwz r9, lbl_81698A70@sda21(r0)
/* 8137EC2C | 38 A0 00 64 */	li r5, 0x64
/* 8137EC30 | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137EC34 | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137EC38 | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137EC3C | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137EC40 | 38 C0 00 00 */	li r6, 0x0
/* 8137EC44 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137EC48 | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137EC4C | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137EC50 | 7C 63 22 14 */	add r3, r3, r4
/* 8137EC54 | 1C A7 00 64 */	mulli r5, r7, 0x64
/* 8137EC58 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137EC5C | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137EC60 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137EC64 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137EC68 | 7C 84 00 D1 */	neg. r4, r4
/* 8137EC6C | 40 82 05 78 */	bne .L_8137F1E4
/* 8137EC70 | 48 1B 70 C9 */	bl __OSGetSystemTime
/* 8137EC74 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137EC78 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137EC7C | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137EC80 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137EC84 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137EC88 | 48 1C F7 19 */	bl fn_8154E3A0
/* 8137EC8C | 48 00 05 58 */	b .L_8137F1E4
.L_8137EC90:
/* 8137EC90 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137EC94 | 3B 60 00 00 */	li r27, 0x0
/* 8137EC98 | 93 6D A9 E8 */	stw r27, lbl_81698A28@sda21(r0)
/* 8137EC9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ECA0 | 93 6D A9 D8 */	stw r27, BannerAvailable@sda21(r0)
/* 8137ECA4 | 41 82 00 20 */	beq .L_8137ECC4
/* 8137ECA8 | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137ECAC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137ECB0 | 41 82 00 14 */	beq .L_8137ECC4
/* 8137ECB4 | 48 1D C9 C5 */	bl fn_8155B678
/* 8137ECB8 | 93 6D A9 D0 */	stw r27, BannerBuffer@sda21(r0)
/* 8137ECBC | 93 6D A9 D4 */	stw r27, BannerBufferAddr@sda21(r0)
/* 8137ECC0 | 93 6D AA 98 */	stw r27, lbl_81698AD8@sda21(r0)
.L_8137ECC4:
/* 8137ECC4 | 38 60 00 00 */	li r3, 0x0
/* 8137ECC8 | 38 00 00 02 */	li r0, 0x2
/* 8137ECCC | 90 6D A9 F0 */	stw r3, lbl_81698A30@sda21(r0)
/* 8137ECD0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137ECD4 | 48 00 05 10 */	b .L_8137F1E4
.L_8137ECD8:
/* 8137ECD8 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137ECDC | 3B 60 00 00 */	li r27, 0x0
/* 8137ECE0 | 93 6D A9 D8 */	stw r27, BannerAvailable@sda21(r0)
/* 8137ECE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137ECE8 | 41 82 00 20 */	beq .L_8137ED08
/* 8137ECEC | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137ECF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137ECF4 | 41 82 00 14 */	beq .L_8137ED08
/* 8137ECF8 | 48 1D C9 81 */	bl fn_8155B678
/* 8137ECFC | 93 6D A9 D0 */	stw r27, BannerBuffer@sda21(r0)
/* 8137ED00 | 93 6D A9 D4 */	stw r27, BannerBufferAddr@sda21(r0)
/* 8137ED04 | 93 6D AA 98 */	stw r27, lbl_81698AD8@sda21(r0)
.L_8137ED08:
/* 8137ED08 | 38 80 00 00 */	li r4, 0x0
/* 8137ED0C | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137ED10 | 38 00 00 01 */	li r0, 0x1
/* 8137ED14 | 90 8D A9 9C */	stw r4, BS2BootFromCache@sda21(r0)
/* 8137ED18 | 90 0D 84 D8 */	stw r0, BS2BootCaching@sda21(r0)
/* 8137ED1C | 90 8D A9 F0 */	stw r4, lbl_81698A30@sda21(r0)
/* 8137ED20 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137ED24 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8137ED28 | 40 80 00 18 */	bge .L_8137ED40
/* 8137ED2C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8137ED30 | 40 80 00 08 */	bge .L_8137ED38
/* 8137ED34 | 48 00 00 0C */	b .L_8137ED40
.L_8137ED38:
/* 8137ED38 | 4B FF D9 E1 */	bl BS2Mach_8137C718
/* 8137ED3C | 48 00 04 A8 */	b .L_8137F1E4
.L_8137ED40:
/* 8137ED40 | 48 1B 6F F9 */	bl __OSGetSystemTime
/* 8137ED44 | 3C A0 80 00 */	lis r5, 0x8000
/* 8137ED48 | 81 0D AA 34 */	lwz r8, lbl_81698A74@sda21(r0)
/* 8137ED4C | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137ED50 | 38 00 03 E8 */	li r0, 0x3e8
/* 8137ED54 | 81 2D AA 30 */	lwz r9, lbl_81698A70@sda21(r0)
/* 8137ED58 | 38 A0 00 64 */	li r5, 0x64
/* 8137ED5C | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137ED60 | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137ED64 | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137ED68 | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137ED6C | 38 C0 00 00 */	li r6, 0x0
/* 8137ED70 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137ED74 | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137ED78 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137ED7C | 7C 63 22 14 */	add r3, r3, r4
/* 8137ED80 | 1C A7 00 64 */	mulli r5, r7, 0x64
/* 8137ED84 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137ED88 | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137ED8C | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137ED90 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137ED94 | 7C 84 00 D1 */	neg. r4, r4
/* 8137ED98 | 40 82 04 4C */	bne .L_8137F1E4
/* 8137ED9C | 48 1B 6F 9D */	bl __OSGetSystemTime
/* 8137EDA0 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137EDA4 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137EDA8 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137EDAC | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137EDB0 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137EDB4 | 48 1C F5 ED */	bl fn_8154E3A0
/* 8137EDB8 | 48 00 04 2C */	b .L_8137F1E4
.L_8137EDBC:
/* 8137EDBC | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137EDC0 | 3B 60 00 00 */	li r27, 0x0
/* 8137EDC4 | 93 6D A9 D8 */	stw r27, BannerAvailable@sda21(r0)
/* 8137EDC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EDCC | 41 82 00 20 */	beq .L_8137EDEC
/* 8137EDD0 | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137EDD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137EDD8 | 41 82 00 14 */	beq .L_8137EDEC
/* 8137EDDC | 48 1D C8 9D */	bl fn_8155B678
/* 8137EDE0 | 93 6D A9 D0 */	stw r27, BannerBuffer@sda21(r0)
/* 8137EDE4 | 93 6D A9 D4 */	stw r27, BannerBufferAddr@sda21(r0)
/* 8137EDE8 | 93 6D AA 98 */	stw r27, lbl_81698AD8@sda21(r0)
.L_8137EDEC:
/* 8137EDEC | 38 00 00 00 */	li r0, 0x0
/* 8137EDF0 | 3C 80 81 38 */	lis r4, BS2DVDCallback@ha
/* 8137EDF4 | 90 0D A9 F0 */	stw r0, lbl_81698A30@sda21(r0)
/* 8137EDF8 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EDFC | 38 84 B0 68 */	addi r4, r4, BS2DVDCallback@l
/* 8137EE00 | 48 1C EB E5 */	bl fn_8154D9E4
/* 8137EE04 | 38 00 00 37 */	li r0, 0x37
/* 8137EE08 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137EE0C:
/* 8137EE0C | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EE10 | 4B FF D9 09 */	bl BS2Mach_8137C718
/* 8137EE14 | 48 00 03 D0 */	b .L_8137F1E4
.L_8137EE18:
/* 8137EE18 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137EE1C | 3B 60 00 00 */	li r27, 0x0
/* 8137EE20 | 93 6D A9 D8 */	stw r27, BannerAvailable@sda21(r0)
/* 8137EE24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EE28 | 41 82 00 20 */	beq .L_8137EE48
/* 8137EE2C | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137EE30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137EE34 | 41 82 00 14 */	beq .L_8137EE48
/* 8137EE38 | 48 1D C8 41 */	bl fn_8155B678
/* 8137EE3C | 93 6D A9 D0 */	stw r27, BannerBuffer@sda21(r0)
/* 8137EE40 | 93 6D A9 D4 */	stw r27, BannerBufferAddr@sda21(r0)
/* 8137EE44 | 93 6D AA 98 */	stw r27, lbl_81698AD8@sda21(r0)
.L_8137EE48:
/* 8137EE48 | 38 00 00 00 */	li r0, 0x0
/* 8137EE4C | 90 0D A9 F0 */	stw r0, lbl_81698A30@sda21(r0)
/* 8137EE50 | 48 00 03 94 */	b .L_8137F1E4
.L_8137EE54:
/* 8137EE54 | 4B FF DD D5 */	bl CheckBS2CommandStatus
/* 8137EE58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EE5C | 41 82 03 88 */	beq .L_8137F1E4
/* 8137EE60 | 38 00 00 3D */	li r0, 0x3d
/* 8137EE64 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EE68 | 48 00 03 7C */	b .L_8137F1E4
.L_8137EE6C:
/* 8137EE6C | 3C 80 81 38 */	lis r4, BS2DVDCallback@ha
/* 8137EE70 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EE74 | 38 84 B0 68 */	addi r4, r4, BS2DVDCallback@l
/* 8137EE78 | 48 1C F9 3D */	bl DVDClosePartitionAsync
/* 8137EE7C | 38 00 00 3E */	li r0, 0x3e
/* 8137EE80 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EE84 | 48 00 03 60 */	b .L_8137F1E4
.L_8137EE88:
/* 8137EE88 | 4B FF DD A1 */	bl CheckBS2CommandStatus
/* 8137EE8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EE90 | 41 82 03 54 */	beq .L_8137F1E4
/* 8137EE94 | 38 60 00 00 */	li r3, 0x0
/* 8137EE98 | 38 00 00 3F */	li r0, 0x3f
/* 8137EE9C | 90 6D A9 E8 */	stw r3, lbl_81698A28@sda21(r0)
/* 8137EEA0 | 90 6D A9 E4 */	stw r3, lbl_81698A24@sda21(r0)
/* 8137EEA4 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EEA8 | 48 00 03 3C */	b .L_8137F1E4
.L_8137EEAC:
/* 8137EEAC | 80 AD AA 50 */	lwz r5, lbl_81698A90@sda21(r0)
/* 8137EEB0 | 3C C0 81 38 */	lis r6, BS2DVDCallback@ha
/* 8137EEB4 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EEB8 | 38 9D 09 C0 */	addi r4, r29, 0x9c0
/* 8137EEBC | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8137EEC0 | 38 C6 B0 68 */	addi r6, r6, BS2DVDCallback@l
/* 8137EEC4 | 48 1C FB 65 */	bl fn_8154EA28
/* 8137EEC8 | 38 00 00 47 */	li r0, 0x47
/* 8137EECC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EED0 | 48 00 03 14 */	b .L_8137F1E4
.L_8137EED4:
/* 8137EED4 | 4B FF DD 55 */	bl CheckBS2CommandStatus
/* 8137EED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137EEDC | 41 82 03 08 */	beq .L_8137F1E4
/* 8137EEE0 | 38 00 02 A4 */	li r0, 0x2a4
/* 8137EEE4 | 38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 8137EEE8 | 7C 09 03 A6 */	mtctr r0
.L_8137EEEC:
/* 8137EEEC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8137EEF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EEF4 | 41 82 00 14 */	beq .L_8137EF08
/* 8137EEF8 | 38 7E 0A 18 */	addi r3, r30, 0xa18
/* 8137EEFC | 4C C6 31 82 */	crclr cr1eq
/* 8137EF00 | 4B FF C0 B5 */	bl BS2Report
/* 8137EF04 | 48 00 00 0C */	b .L_8137EF10
.L_8137EF08:
/* 8137EF08 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8137EF0C | 42 00 FF E0 */	bdnz .L_8137EEEC
.L_8137EF10:
/* 8137EF10 | 3B 7D 09 C0 */	addi r27, r29, 0x9c0
/* 8137EF14 | 80 8D AA 3C */	lwz r4, lbl_81698A7C@sda21(r0)
/* 8137EF18 | 38 7B 02 C0 */	addi r3, r27, 0x2c0
/* 8137EF1C | 38 A0 00 D8 */	li r5, 0xd8
/* 8137EF20 | 4B FB 13 11 */	bl memcpy
/* 8137EF24 | 38 7B 02 C0 */	addi r3, r27, 0x2c0
/* 8137EF28 | 38 80 00 D8 */	li r4, 0xd8
/* 8137EF2C | 48 1A EA 39 */	bl DCStoreRange
/* 8137EF30 | 80 AD AA 50 */	lwz r5, lbl_81698A90@sda21(r0)
/* 8137EF34 | 3C C0 81 38 */	lis r6, BS2DVDCallback@ha
/* 8137EF38 | 7F 64 DB 78 */	mr r4, r27
/* 8137EF3C | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EF40 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8137EF44 | 38 C6 B0 68 */	addi r6, r6, BS2DVDCallback@l
/* 8137EF48 | 48 1C FB C1 */	bl fn_8154EB08
/* 8137EF4C | 38 60 00 01 */	li r3, 0x1
/* 8137EF50 | 38 00 00 26 */	li r0, 0x26
/* 8137EF54 | 90 6D A9 E8 */	stw r3, lbl_81698A28@sda21(r0)
/* 8137EF58 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EF5C | 48 00 02 88 */	b .L_8137F1E4
.L_8137EF60:
/* 8137EF60 | 80 0D A9 FC */	lwz r0, UpdateErrorFlag@sda21(r0)
/* 8137EF64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EF68 | 41 82 00 10 */	beq .L_8137EF78
/* 8137EF6C | 38 00 00 3A */	li r0, 0x3a
/* 8137EF70 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EF74 | 48 00 02 70 */	b .L_8137F1E4
.L_8137EF78:
/* 8137EF78 | 80 0D A9 F8 */	lwz r0, RetryErrorFlag@sda21(r0)
/* 8137EF7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EF80 | 41 82 00 14 */	beq .L_8137EF94
/* 8137EF84 | 38 60 00 00 */	li r3, 0x0
/* 8137EF88 | 38 00 00 3B */	li r0, 0x3b
/* 8137EF8C | 90 6D A9 F8 */	stw r3, RetryErrorFlag@sda21(r0)
/* 8137EF90 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137EF94:
/* 8137EF94 | 80 0D AA 00 */	lwz r0, AbortFlag@sda21(r0)
/* 8137EF98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137EF9C | 41 82 00 18 */	beq .L_8137EFB4
/* 8137EFA0 | 38 60 00 00 */	li r3, 0x0
/* 8137EFA4 | 38 00 00 40 */	li r0, 0x40
/* 8137EFA8 | 90 6D AA 00 */	stw r3, AbortFlag@sda21(r0)
/* 8137EFAC | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137EFB0 | 48 00 02 34 */	b .L_8137F1E4
.L_8137EFB4:
/* 8137EFB4 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137EFB8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137EFBC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8137EFC0 | 40 80 00 18 */	bge .L_8137EFD8
/* 8137EFC4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8137EFC8 | 40 80 00 08 */	bge .L_8137EFD0
/* 8137EFCC | 48 00 00 0C */	b .L_8137EFD8
.L_8137EFD0:
/* 8137EFD0 | 4B FF D7 49 */	bl BS2Mach_8137C718
/* 8137EFD4 | 48 00 02 10 */	b .L_8137F1E4
.L_8137EFD8:
/* 8137EFD8 | 48 1B 6D 61 */	bl __OSGetSystemTime
/* 8137EFDC | 3C A0 80 00 */	lis r5, 0x8000
/* 8137EFE0 | 81 0D AA 34 */	lwz r8, lbl_81698A74@sda21(r0)
/* 8137EFE4 | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137EFE8 | 38 00 03 E8 */	li r0, 0x3e8
/* 8137EFEC | 81 2D AA 30 */	lwz r9, lbl_81698A70@sda21(r0)
/* 8137EFF0 | 38 A0 00 64 */	li r5, 0x64
/* 8137EFF4 | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137EFF8 | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137EFFC | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137F000 | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137F004 | 38 C0 00 00 */	li r6, 0x0
/* 8137F008 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137F00C | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137F010 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137F014 | 7C 63 22 14 */	add r3, r3, r4
/* 8137F018 | 1C A7 00 64 */	mulli r5, r7, 0x64
/* 8137F01C | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137F020 | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137F024 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137F028 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137F02C | 7C 84 00 D1 */	neg. r4, r4
/* 8137F030 | 40 82 01 B4 */	bne .L_8137F1E4
/* 8137F034 | 48 1B 6D 05 */	bl __OSGetSystemTime
/* 8137F038 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137F03C | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137F040 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137F044 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137F048 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137F04C | 48 1C F3 55 */	bl fn_8154E3A0
/* 8137F050 | 48 00 01 94 */	b .L_8137F1E4
.L_8137F054:
/* 8137F054 | 38 60 00 00 */	li r3, 0x0
/* 8137F058 | 90 6D AA 00 */	stw r3, AbortFlag@sda21(r0)
/* 8137F05C | 80 0D A9 E4 */	lwz r0, lbl_81698A24@sda21(r0)
/* 8137F060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F064 | 41 82 01 80 */	beq .L_8137F1E4
/* 8137F068 | 90 6D A9 E4 */	stw r3, lbl_81698A24@sda21(r0)
/* 8137F06C | 80 0D A9 F4 */	lwz r0, FatalErrorFlag@sda21(r0)
/* 8137F070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F074 | 41 82 00 10 */	beq .L_8137F084
/* 8137F078 | 38 00 00 39 */	li r0, 0x39
/* 8137F07C | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137F080 | 48 00 01 64 */	b .L_8137F1E4
.L_8137F084:
/* 8137F084 | 80 0D A9 E8 */	lwz r0, lbl_81698A28@sda21(r0)
/* 8137F088 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F08C | 41 82 00 14 */	beq .L_8137F0A0
/* 8137F090 | 38 00 00 0F */	li r0, 0xf
/* 8137F094 | 90 6D A9 E8 */	stw r3, lbl_81698A28@sda21(r0)
/* 8137F098 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137F09C | 48 00 01 48 */	b .L_8137F1E4
.L_8137F0A0:
/* 8137F0A0 | 80 0D B2 78 */	lwz r0, lbl_816992B8@sda21(r0)
/* 8137F0A4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137F0A8 | 41 82 00 1C */	beq .L_8137F0C4
/* 8137F0AC | 80 0D A9 A0 */	lwz r0, BS2DriveReset@sda21(r0)
/* 8137F0B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F0B4 | 41 82 00 1C */	beq .L_8137F0D0
/* 8137F0B8 | 80 0D AA 38 */	lwz r0, lbl_81698A78@sda21(r0)
/* 8137F0BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F0C0 | 40 82 00 10 */	bne .L_8137F0D0
.L_8137F0C4:
/* 8137F0C4 | 38 00 00 02 */	li r0, 0x2
/* 8137F0C8 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137F0CC | 48 00 01 18 */	b .L_8137F1E4
.L_8137F0D0:
/* 8137F0D0 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137F0D4 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137F0D8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8137F0DC | 40 82 00 0C */	bne .L_8137F0E8
/* 8137F0E0 | 38 00 00 00 */	li r0, 0x0
/* 8137F0E4 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_8137F0E8:
/* 8137F0E8 | 48 1B 6C 51 */	bl __OSGetSystemTime
/* 8137F0EC | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137F0F0 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137F0F4 | 38 7D 08 40 */	addi r3, r29, 0x840
/* 8137F0F8 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137F0FC | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137F100 | 48 1C F2 A1 */	bl fn_8154E3A0
/* 8137F104 | 38 00 00 03 */	li r0, 0x3
/* 8137F108 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
/* 8137F10C | 48 00 00 D8 */	b .L_8137F1E4
.L_8137F110:
/* 8137F110 | 80 6D A9 DC */	lwz r3, MemAllocator@sda21(r0)
/* 8137F114 | 3B 60 00 00 */	li r27, 0x0
/* 8137F118 | 93 6D A9 D8 */	stw r27, BannerAvailable@sda21(r0)
/* 8137F11C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F120 | 41 82 00 C4 */	beq .L_8137F1E4
/* 8137F124 | 80 8D A9 D0 */	lwz r4, BannerBuffer@sda21(r0)
/* 8137F128 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137F12C | 41 82 00 B8 */	beq .L_8137F1E4
/* 8137F130 | 48 1D C5 49 */	bl fn_8155B678
/* 8137F134 | 93 6D A9 D0 */	stw r27, BannerBuffer@sda21(r0)
/* 8137F138 | 93 6D A9 D4 */	stw r27, BannerBufferAddr@sda21(r0)
/* 8137F13C | 93 6D AA 98 */	stw r27, lbl_81698AD8@sda21(r0)
/* 8137F140 | 48 00 00 A4 */	b .L_8137F1E4
.L_8137F144:
/* 8137F144 | 48 1B 6B F5 */	bl __OSGetSystemTime
/* 8137F148 | 3C A0 80 00 */	lis r5, 0x8000
/* 8137F14C | 81 0D AA 6C */	lwz r8, lbl_81698AAC@sda21(r0)
/* 8137F150 | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 8137F154 | 38 00 03 E8 */	li r0, 0x3e8
/* 8137F158 | 81 2D AA 68 */	lwz r9, lbl_81698AA8@sda21(r0)
/* 8137F15C | 38 A0 01 5E */	li r5, 0x15e
/* 8137F160 | 54 E7 F0 BE */	srwi r7, r7, 2
/* 8137F164 | 7D 08 20 10 */	subfc r8, r8, r4
/* 8137F168 | 7C E7 03 96 */	divwu r7, r7, r0
/* 8137F16C | 7C 09 19 10 */	subfe r0, r9, r3
/* 8137F170 | 38 C0 00 00 */	li r6, 0x0
/* 8137F174 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8137F178 | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 8137F17C | 7C 86 29 D6 */	mullw r4, r6, r5
/* 8137F180 | 7C 63 22 14 */	add r3, r3, r4
/* 8137F184 | 1C A7 01 5E */	mulli r5, r7, 0x15e
/* 8137F188 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8137F18C | 7C 65 40 10 */	subfc r3, r5, r8
/* 8137F190 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8137F194 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8137F198 | 7C 84 00 D1 */	neg. r4, r4
/* 8137F19C | 40 82 00 48 */	bne .L_8137F1E4
/* 8137F1A0 | 48 1B 6B 99 */	bl __OSGetSystemTime
/* 8137F1A4 | 90 6D AA 30 */	stw r3, lbl_81698A70@sda21(r0)
/* 8137F1A8 | 3C A0 81 38 */	lis r5, BS2DVDCallback@ha
/* 8137F1AC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137F1B0 | 90 8D AA 34 */	stw r4, lbl_81698A74@sda21(r0)
/* 8137F1B4 | 38 85 B0 68 */	addi r4, r5, BS2DVDCallback@l
/* 8137F1B8 | 48 1C F1 E9 */	bl fn_8154E3A0
/* 8137F1BC | 38 00 00 43 */	li r0, 0x43
/* 8137F1C0 | 90 0D A9 C8 */	stw r0, CurrentState@sda21(r0)
.L_8137F1C4:
/* 8137F1C4 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 8137F1C8 | 4B FF D5 51 */	bl BS2Mach_8137C718
/* 8137F1CC | 48 00 00 18 */	b .L_8137F1E4
.L_8137F1D0:
/* 8137F1D0 | 38 7E 02 CA */	addi r3, r30, 0x2ca
/* 8137F1D4 | 38 BE 0A 2E */	addi r5, r30, 0xa2e
/* 8137F1D8 | 38 80 14 E3 */	li r4, 0x14e3
/* 8137F1DC | 4C C6 31 82 */	crclr cr1eq
/* 8137F1E0 | 48 1A F5 51 */	bl OSPanic
.L_8137F1E4:
/* 8137F1E4 | 7F 83 E3 78 */	mr r3, r28
/* 8137F1E8 | 48 1B 16 C5 */	bl OSRestoreInterrupts
/* 8137F1EC | 39 61 00 70 */	addi r11, r1, 0x70
/* 8137F1F0 | 80 6D A9 C8 */	lwz r3, CurrentState@sda21(r0)
/* 8137F1F4 | 48 27 A3 15 */	bl _restgpr_26
/* 8137F1F8 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8137F1FC | 7C 08 03 A6 */	mtlr r0
/* 8137F200 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8137F204 | 4E 80 00 20 */	blr
.endfn BS2Tick

# 0x81645DA8..0x81646978 | size: 0xBD0
.data
.balign 8

# .data:0x0 | 0x81645DA8 | size: 0x22
.obj lbl_81645DA8, global
	.string "Failed to access boot cache file\n"
.endobj lbl_81645DA8

# .data:0x22 | 0x81645DCA | size: 0x1A
.obj lbl_81645DCA, global
	.string "[BS2RestartStateMachine]\n"
.endobj lbl_81645DCA

# .data:0x3C | 0x81645DE4 | size: 0x3B8
.obj lbl_81645DE4, global
	.4byte 0x5B425332
	.4byte 0x41626F72
	.4byte 0x74537461
	.4byte 0x74654D61
	.4byte 0x6368696E
	.4byte 0x655D0A00
	.4byte 0x67616D65
	.4byte 0x50617274
	.4byte 0x6974696F
	.4byte 0x6E202E2E
	.4byte 0x2E203078
	.4byte 0x25303858
	.4byte 0x0A007479
	.4byte 0x70652020
	.4byte 0x20202020
	.4byte 0x20202020
	.4byte 0x2E2E2E20
	.4byte 0x30782530
	.4byte 0x38580A00
	.4byte 0x20636F75
	.4byte 0x6E742B2B
	.4byte 0x0A004553
	.4byte 0x5F476574
	.4byte 0x5469636B
	.4byte 0x65745669
	.4byte 0x65777325
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A004E6F
	.4byte 0x20746963
	.4byte 0x6B657420
	.4byte 0x666F7220
	.4byte 0x64697363
	.4byte 0x2E202050
	.4byte 0x6C656173
	.4byte 0x6520696D
	.4byte 0x706F7274
	.4byte 0x20612074
	.4byte 0x69636B65
	.4byte 0x742E0A00
	.4byte 0x496E7465
	.4byte 0x726E616C
	.4byte 0x20657272
	.4byte 0x6F723A20
	.4byte 0x546F6F20
	.4byte 0x6D616E79
	.4byte 0x20746963
	.4byte 0x6B657473
	.4byte 0x0A00466F
	.4byte 0x756E6420
	.4byte 0x25642074
	.4byte 0x69636B65
	.4byte 0x74732069
	.4byte 0x6E204E41
	.4byte 0x4E440A00
	.4byte 0x4661696C
	.4byte 0x65642074
	.4byte 0x6F206765
	.4byte 0x74206265
	.4byte 0x73742074
	.4byte 0x69636B65
	.4byte 0x742E0A00
	.4byte 0x49534653
	.4byte 0x5F4F7065
	.4byte 0x6E4C6962
	.4byte 0x45782066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A000A
	.4byte 0x49534653
	.4byte 0x5F4F7065
	.4byte 0x6E4C6962
	.4byte 0x45782073
	.4byte 0x75636365
	.4byte 0x73736675
	.4byte 0x6C0A0045
	.4byte 0x535F496E
	.4byte 0x69744C69
	.4byte 0x62206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A004553
	.4byte 0x5F496E69
	.4byte 0x744C6962
	.4byte 0x3A202564
	.4byte 0x0A004553
	.4byte 0x5F476574
	.4byte 0x5469636B
	.4byte 0x65745669
	.4byte 0x65777320
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
	.4byte 0x45535F47
	.4byte 0x65745469
	.4byte 0x636B6574
	.4byte 0x56696577
	.4byte 0x733A2025
	.4byte 0x640A0045
	.4byte 0x72726F72
	.4byte 0x3A205368
	.4byte 0x6F756C64
	.4byte 0x206F6E6C
	.4byte 0x79206861
	.4byte 0x76652031
	.4byte 0x20746963
	.4byte 0x6B657420
	.4byte 0x666F7220
	.4byte 0x53797374
	.4byte 0x656D204D
	.4byte 0x656E750A
	.4byte 0x0045535F
	.4byte 0x4C61756E
	.4byte 0x63685469
	.4byte 0x746C6520
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
	.4byte 0x45535F4C
	.4byte 0x61756E63
	.4byte 0x68546974
	.4byte 0x6C653A20
	.4byte 0x25640A00
	.4byte 0x42533253
	.4byte 0x74617274
	.4byte 0x47616D65
	.4byte 0x2831290A
	.4byte 0x00445644
	.4byte 0x20747261
	.4byte 0x6E736665
	.4byte 0x72726564
	.4byte 0x20627974
	.4byte 0x65733A25
	.4byte 0x640A002F
	.4byte 0x7469746C
	.4byte 0x652F3030
	.4byte 0x30303030
	.4byte 0x30312F30
	.4byte 0x30303030
	.4byte 0x3030322F
	.4byte 0x64617461
	.4byte 0x2F636163
	.4byte 0x68652E64
	.4byte 0x61740045
	.4byte 0x72726F72
	.4byte 0x206F6363
	.4byte 0x75727265
	.4byte 0x64207768
	.4byte 0x656E2063
	.4byte 0x6C6F7365
	.4byte 0x20636163
	.4byte 0x68652E64
	.4byte 0x61742028
	.4byte 0x2564290A
	.4byte 0x000A7365
	.4byte 0x63757269
	.4byte 0x74792065
	.4byte 0x72726F72
	.4byte 0x28256429
	.4byte 0x20686173
	.4byte 0x206F6363
	.4byte 0x75727265
	.4byte 0x64004253
	.4byte 0x324D6163
	.4byte 0x682E6300
	.4byte 0x0A466169
	.4byte 0x6C656420
	.4byte 0x746F2062
	.4byte 0x6F6F7420
	.4byte 0x61707000
	.4byte 0x20207379
	.4byte 0x73566572
	.4byte 0x73696F6E
	.4byte 0x203D2025
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x47657454
	.4byte 0x69636B65
	.4byte 0x74566965
	.4byte 0x77733A20
	.4byte 0x7263203D
	.4byte 0x2025640A
	.4byte 0x004C6175
	.4byte 0x6E636854
	.4byte 0x69746C65
	.4byte 0x3A207263
	.4byte 0x203D2025
	.4byte 0x640A0049
	.4byte 0x50432064
	.4byte 0x72697665
	.4byte 0x72206973
	.4byte 0x2072652D
	.4byte 0x696E6974
	.4byte 0x69616C69
	.4byte 0x7A65640A
	.4byte 0x00445644
	.4byte 0x4C6F7749
	.4byte 0x6E697420
	.4byte 0x646F6E65
	.4byte 0x0A000A44
	.4byte 0x69736B20
	.4byte 0x6572726F
	.4byte 0x72282564
	.4byte 0x29206861
	.4byte 0x73206F63
	.4byte 0x63757272
	.4byte 0x65640044
	.4byte 0x56444C6F
	.4byte 0x77526561
	.4byte 0x64446973
	.4byte 0x6B494420
	.4byte 0x646F6E65
	.4byte 0x0A000A44
	.4byte 0x69736B20
	.4byte 0x68617320
	.4byte 0x6368616E
	.4byte 0x67656421
	.4byte 0x00506172
	.4byte 0x74697469
	.4byte 0x6F6E5061
	.4byte 0x72616D73
	.4byte 0x2E6E756D
	.4byte 0x546D6442
	.4byte 0x79746573
	.4byte 0x203D2025
	.4byte 0x640A0045
	.4byte 0x5469636B
	.4byte 0x65742045
	.4byte 0x72726F72
	.4byte 0x3A202564
	.4byte 0x0A004456
	.4byte 0x444C6F77
	.4byte 0x4F70656E
	.4byte 0x50617274
	.4byte 0x6974696F
	.4byte 0x6E20646F
	.4byte 0x6E650A00
.endobj lbl_81645DE4

# .data:0x3F4 | 0x8164619C | size: 0x34
.obj jumptable_8164619C, local
	.rel BS2Mach_8137C718, .L_8137C7D8
	.rel BS2Mach_8137C718, .L_8137C788
	.rel BS2Mach_8137C718, .L_8137C83C
	.rel BS2Mach_8137C718, .L_8137C83C
	.rel BS2Mach_8137C718, .L_8137C790
	.rel BS2Mach_8137C718, .L_8137C79C
	.rel BS2Mach_8137C718, .L_8137C79C
	.rel BS2Mach_8137C718, .L_8137C834
	.rel BS2Mach_8137C718, .L_8137C834
	.rel BS2Mach_8137C718, .L_8137C83C
	.rel BS2Mach_8137C718, .L_8137C83C
	.rel BS2Mach_8137C718, .L_8137C7F8
	.rel BS2Mach_8137C718, .L_8137C7EC
.endobj jumptable_8164619C

# .data:0x428 | 0x816461D0 | size: 0x2A
.obj lbl_816461D0, global
	.string "NANDWriteAsync buf:0x%08X, length:0x%08X\n"
.endobj lbl_816461D0

# .data:0x452 | 0x816461FA | size: 0x13E
.obj lbl_816461FA, global
	.4byte 0x4E414E44
	.4byte 0x52656164
	.4byte 0x4173796E
	.4byte 0x63206275
	.4byte 0x663A3078
	.4byte 0x25303858
	.4byte 0x2C206C65
	.4byte 0x6E677468
	.4byte 0x3A307825
	.4byte 0x3038580A
	.4byte 0x00445644
	.4byte 0x20636F6D
	.4byte 0x6D616E64
	.4byte 0x20697320
	.4byte 0x69737375
	.4byte 0x696E670A
	.4byte 0x00426F6F
	.4byte 0x74206361
	.4byte 0x63686520
	.4byte 0x6D6F6465
	.4byte 0x204F4646
	.4byte 0x0A004E41
	.4byte 0x4E442063
	.4byte 0x6F6D6D61
	.4byte 0x6E642069
	.4byte 0x73206973
	.4byte 0x7375696E
	.4byte 0x670A0053
	.4byte 0x65656B20
	.4byte 0x63616368
	.4byte 0x652E6461
	.4byte 0x740A0057
	.4byte 0x72697465
	.4byte 0x20647269
	.4byte 0x76652069
	.4byte 0x6E666F0A
	.4byte 0x00577269
	.4byte 0x74652064
	.4byte 0x69736B20
	.4byte 0x69640A00
	.4byte 0x57726974
	.4byte 0x65206761
	.4byte 0x6D652074
	.4byte 0x6F630A00
	.4byte 0x57726974
	.4byte 0x65207061
	.4byte 0x72746974
	.4byte 0x696F6E20
	.4byte 0x69666E6F
	.4byte 0x0A005772
	.4byte 0x69746520
	.4byte 0x626F6F74
	.4byte 0x20696E66
	.4byte 0x6F20330A
	.4byte 0x00577269
	.4byte 0x7465206F
	.4byte 0x70656E20
	.4byte 0x70617274
	.4byte 0x6974696F
	.4byte 0x6E0A0057
	.4byte 0x72697465
	.4byte 0x20617070
	.4byte 0x6C6F6164
	.4byte 0x65722068
	.4byte 0x65616465
	.4byte 0x720A0057
	.4byte 0x72697465
	.4byte 0x20617070
	.4byte 0x6C6F6164
	.4byte 0x65720A00
	.4byte 0x57726974
	.4byte 0x65206170
	.4byte 0x706C6F61
	.4byte 0x64657220
	.4byte 0x6C6F6164
	.4byte 0x0A005772
	.4byte 0x69746520
	.4byte 0x62616E6E
	.4byte 0x65720A00
	.2byte 0x0000
.endobj lbl_816461FA

# .data:0x590 | 0x81646338 | size: 0xB8
.obj jumptable_81646338, local
	.rel CheckBS2CommandStatus, .L_8137CD18
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137CD5C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137CDD4
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137CE4C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137CEC4
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137CF64
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137CFDC
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D058
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D0D0
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D154
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D1D0
	.rel CheckBS2CommandStatus, .L_8137D25C
	.rel CheckBS2CommandStatus, .L_8137D264
.endobj jumptable_81646338

# .data:0x648 | 0x816463F0 | size: 0x21
.obj lbl_816463F0, global
	.string "Unencrypted read from cache.dat\n"
.endobj lbl_816463F0

# .data:0x669 | 0x81646411 | size: 0x3E3
.obj lbl_81646411, global
	.4byte 0x52656164
	.4byte 0x2066726F
	.4byte 0x6D206361
	.4byte 0x6368652E
	.4byte 0x6461740A
	.4byte 0x004E6F20
	.4byte 0x4469736B
	.4byte 0x20202020
	.4byte 0x20202020
	.4byte 0x20203A20
	.4byte 0x25640A00
	.4byte 0x44726976
	.4byte 0x65205265
	.4byte 0x73657420
	.4byte 0x20202020
	.4byte 0x203A2025
	.4byte 0x640A0057
	.4byte 0x61697420
	.4byte 0x5370696E
	.4byte 0x75702020
	.4byte 0x20202020
	.4byte 0x3A202564
	.4byte 0x0A00426F
	.4byte 0x6F742046
	.4byte 0x726F6D20
	.4byte 0x43616368
	.4byte 0x6520203A
	.4byte 0x2025640A
	.4byte 0x00526561
	.4byte 0x64206472
	.4byte 0x69766520
	.4byte 0x696E666F
	.4byte 0x2066726F
	.4byte 0x6D206361
	.4byte 0x6368652E
	.4byte 0x6461740A
	.4byte 0x00526561
	.4byte 0x64206469
	.4byte 0x736B2069
	.4byte 0x64206672
	.4byte 0x6F6D2063
	.4byte 0x61636865
	.4byte 0x2E646174
	.4byte 0x0A005245
	.4byte 0x564F4C55
	.4byte 0x54494F4E
	.4byte 0x20444953
	.4byte 0x430A0044
	.4byte 0x4F4C5048
	.4byte 0x494E204C
	.4byte 0x41594F55
	.4byte 0x5420464F
	.4byte 0x524D4154
	.4byte 0x0A00554E
	.4byte 0x4B4E4F57
	.4byte 0x4E0A006C
	.4byte 0x656E6774
	.4byte 0x68202020
	.4byte 0x20202020
	.4byte 0x20202020
	.4byte 0x202E2E2E
	.4byte 0x20307825
	.4byte 0x3038580A
	.4byte 0x006E756D
	.4byte 0x47616D65
	.4byte 0x50617274
	.4byte 0x6974696F
	.4byte 0x6E73202E
	.4byte 0x2E2E2030
	.4byte 0x78253038
	.4byte 0x580A0070
	.4byte 0x61727469
	.4byte 0x74696F6E
	.4byte 0x496E666F
	.4byte 0x73202020
	.4byte 0x202E2E2E
	.4byte 0x20307825
	.4byte 0x3038580A
	.4byte 0x00544D44
	.4byte 0x20766572
	.4byte 0x20202020
	.4byte 0x20202020
	.4byte 0x2E2E2E20
	.4byte 0x30782530
	.4byte 0x32580A00
	.4byte 0x43412043
	.4byte 0x524C2076
	.4byte 0x65722020
	.4byte 0x2020202E
	.4byte 0x2E2E2030
	.4byte 0x78253032
	.4byte 0x580A0053
	.4byte 0x69676E65
	.4byte 0x72204352
	.4byte 0x4C207665
	.4byte 0x72202E2E
	.4byte 0x2E203078
	.4byte 0x25303258
	.4byte 0x0A005265
	.4byte 0x71207379
	.4byte 0x73207665
	.4byte 0x72202020
	.4byte 0x202E2E2E
	.4byte 0x20307825
	.4byte 0x30385825
	.4byte 0x3038580A
	.4byte 0x00546974
	.4byte 0x6C652049
	.4byte 0x44202020
	.4byte 0x20202020
	.4byte 0x2E2E2E20
	.4byte 0x30782530
	.4byte 0x38582530
	.4byte 0x38580A00
	.4byte 0x20206170
	.4byte 0x704C6F61
	.4byte 0x6465724C
	.4byte 0x656E6774
	.4byte 0x68202E2E
	.4byte 0x2E2E2E2E
	.4byte 0x20307825
	.4byte 0x780A0020
	.4byte 0x20617070
	.4byte 0x4C6F6164
	.4byte 0x65724675
	.4byte 0x6E633120
	.4byte 0x202E2E2E
	.4byte 0x2E2E2E20
	.4byte 0x30782578
	.4byte 0x0A000A41
	.4byte 0x70706C6F
	.4byte 0x61646572
	.4byte 0x20496E69
	.4byte 0x7469616C
	.4byte 0x697A6564
	.4byte 0x0A004164
	.4byte 0x6472205B
	.4byte 0x30782578
	.4byte 0x5D206C65
	.4byte 0x6E677468
	.4byte 0x205B3078
	.4byte 0x25785D20
	.4byte 0x6F666673
	.4byte 0x6574205B
	.4byte 0x30782578
	.4byte 0x5D0A0025
	.4byte 0x6420656E
	.4byte 0x74726965
	.4byte 0x730A004E
	.4byte 0x6F20656E
	.4byte 0x7472790A
	.4byte 0x00557064
	.4byte 0x61746520
	.4byte 0x73756363
	.4byte 0x6573730A
	.4byte 0x00557064
	.4byte 0x61746520
	.4byte 0x73756363
	.4byte 0x6573730A
	.4byte 0x506C6561
	.4byte 0x73652072
	.4byte 0x65626F6F
	.4byte 0x740A0055
	.4byte 0x70646174
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x0A004F70
	.4byte 0x656E2070
	.4byte 0x61727469
	.4byte 0x74696F6E
	.4byte 0x2066726F
	.4byte 0x6D206361
	.4byte 0x6368652E
	.4byte 0x6461740A
	.4byte 0x00546869
	.4byte 0x73206D75
	.4byte 0x73742062
	.4byte 0x65206120
	.4byte 0x6261636B
	.4byte 0x75702064
	.4byte 0x69736B0A
	.4byte 0x002F6F70
	.4byte 0x656E696E
	.4byte 0x672E626E
	.4byte 0x72004253
	.4byte 0x32204552
	.4byte 0x524F5220
	.4byte 0x3E3E3E20
	.4byte 0x43616E6E
	.4byte 0x6E6F7420
	.4byte 0x616C6C6F
	.4byte 0x63203078
	.4byte 0x25303878
	.4byte 0x2066726F
	.4byte 0x6D204D45
	.4byte 0x4D416C6C
	.4byte 0x6F636174
	.4byte 0x6F720042
	.4byte 0x616E6E65
	.4byte 0x72427566
	.4byte 0x66657241
	.4byte 0x64647220
	.4byte 0x3A202530
	.4byte 0x38580A00
	.4byte 0x42533220
	.4byte 0x4552524F
	.4byte 0x52203E3E
	.4byte 0x3E204261
	.4byte 0x6E6E6572
	.4byte 0x20627566
	.4byte 0x66657220
	.4byte 0x6973206E
	.4byte 0x6F742065
	.4byte 0x6E6F7567
	.4byte 0x6820746F
	.4byte 0x206C6F61
	.4byte 0x64206261
	.4byte 0x6E6E6572
	.4byte 0x2066696C
	.4byte 0x65202830
	.4byte 0x78253038
	.4byte 0x78290042
	.4byte 0x53322045
	.4byte 0x52524F52
	.4byte 0x203E3E3E
	.4byte 0x204D454D
	.4byte 0x416C6C6F
	.4byte 0x6361746F
	.4byte 0x7220616E
	.4byte 0x64206261
	.4byte 0x6E6E6572
	.4byte 0x20627566
	.4byte 0x66657220
	.4byte 0x6973206E
	.4byte 0x6F742073
	.4byte 0x65740065
	.4byte 0x5469636B
	.4byte 0x65742069
	.4byte 0x73206E6F
	.4byte 0x6E65207A
	.4byte 0x65726F0A
	.4byte 0x00425332
	.4byte 0x20455252
	.4byte 0x4F52203E
	.4byte 0x3E3E2055
	.4byte 0x4E4B4E4F
	.4byte 0x574E2053
	.4byte 0x54415445
	.byte 0x00, 0x00, 0x00
.endobj lbl_81646411

# .data:0xA4C | 0x816467F4 | size: 0x5C
.obj jumptable_816467F4, local
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E6FC
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E698
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E690
	.rel BS2Tick, .L_8137E690
.endobj jumptable_816467F4

# .data:0xAA8 | 0x81646850 | size: 0x124
.obj jumptable_81646850, local
	.rel BS2Tick, .L_8137D40C
	.rel BS2Tick, .L_8137D518
	.rel BS2Tick, .L_8137D55C
	.rel BS2Tick, .L_8137D604
	.rel BS2Tick, .L_8137D71C
	.rel BS2Tick, .L_8137D77C
	.rel BS2Tick, .L_8137D7CC
	.rel BS2Tick, .L_8137D7E8
	.rel BS2Tick, .L_8137D800
	.rel BS2Tick, .L_8137D860
	.rel BS2Tick, .L_8137D860
	.rel BS2Tick, .L_8137D970
	.rel BS2Tick, .L_8137D9EC
	.rel BS2Tick, .L_8137DA04
	.rel BS2Tick, .L_8137DA28
	.rel BS2Tick, .L_8137DAC0
	.rel BS2Tick, .L_8137DAF0
	.rel BS2Tick, .L_8137DB70
	.rel BS2Tick, .L_8137DBA0
	.rel BS2Tick, .L_8137DC94
	.rel BS2Tick, .L_8137DCB0
	.rel BS2Tick, .L_8137DDF0
	.rel BS2Tick, .L_8137DE24
	.rel BS2Tick, .L_8137DEB4
	.rel BS2Tick, .L_8137DEDC
	.rel BS2Tick, .L_8137DF18
	.rel BS2Tick, .L_8137DF40
	.rel BS2Tick, .L_8137DF7C
	.rel BS2Tick, .L_8137DFB0
	.rel BS2Tick, .L_8137E018
	.rel BS2Tick, .L_8137E0BC
	.rel BS2Tick, .L_8137E0D8
	.rel BS2Tick, .L_8137E0F0
	.rel BS2Tick, .L_8137E214
	.rel BS2Tick, .L_8137E2C0
	.rel BS2Tick, .L_8137E3D4
	.rel BS2Tick, .L_8137E3F0
	.rel BS2Tick, .L_8137E444
	.rel BS2Tick, .L_8137E4BC
	.rel BS2Tick, .L_8137E72C
	.rel BS2Tick, .L_8137E748
	.rel BS2Tick, .L_8137E780
	.rel BS2Tick, .L_8137E7A8
	.rel BS2Tick, .L_8137E80C
	.rel BS2Tick, .L_8137E8C4
	.rel BS2Tick, .L_8137E8DC
	.rel BS2Tick, .L_8137EA70
	.rel BS2Tick, .L_8137EA90
	.rel BS2Tick, .L_8137EAAC
	.rel BS2Tick, .L_8137EB60
	.rel BS2Tick, .L_8137EBF8
	.rel BS2Tick, .L_8137EC90
	.rel BS2Tick, .L_8137ECD8
	.rel BS2Tick, .L_8137ECD8
	.rel BS2Tick, .L_8137EDBC
	.rel BS2Tick, .L_8137EE0C
	.rel BS2Tick, .L_8137EE0C
	.rel BS2Tick, .L_8137EE18
	.rel BS2Tick, .L_8137EE18
	.rel BS2Tick, .L_8137EF60
	.rel BS2Tick, .L_8137EE54
	.rel BS2Tick, .L_8137EE6C
	.rel BS2Tick, .L_8137EE88
	.rel BS2Tick, .L_8137EF60
	.rel BS2Tick, .L_8137F054
	.rel BS2Tick, .L_8137F110
	.rel BS2Tick, .L_8137F144
	.rel BS2Tick, .L_8137F1C4
	.rel BS2Tick, .L_8137F1C4
	.rel BS2Tick, .L_8137EB60
	.rel BS2Tick, .L_8137EEAC
	.rel BS2Tick, .L_8137EED4
	.rel BS2Tick, .L_8137EB60
.endobj jumptable_81646850

# .data:0xBCC | 0x81646974 | size: 0x4
.obj gap_08_81646974_data, global
.hidden gap_08_81646974_data
	.4byte 0x00000000
.endobj gap_08_81646974_data

# 0x81696578..0x81696598 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696578 | size: 0x4
.obj lbl_81696578, global
	.4byte BS2Update_810ADF80
.endobj lbl_81696578

# .sdata:0x4 | 0x8169657C | size: 0x8
.obj lbl_8169657C, global
	.string "/dev/es"
.endobj lbl_8169657C

# .sdata:0xC | 0x81696584 | size: 0x7
.obj lbl_81696584, global
	.4byte 0x00000102
	.byte 0x03, 0x04, 0x05
.endobj lbl_81696584

# .sdata:0x13 | 0x8169658B | size: 0x5
.obj lbl_8169658B, global
	.string "RAAE"
.endobj lbl_8169658B

# .sdata:0x18 | 0x81696590 | size: 0x4
.obj lbl_81696590, global
	.string "408"
.endobj lbl_81696590

# .sdata:0x1C | 0x81696594 | size: 0x4
.obj lbl_81696594, global
	.string "410"
.endobj lbl_81696594

# 0x81698A08..0x81698AF8 | size: 0xF0
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698A08 | size: 0x4
.obj CurrentState, global
	.skip 0x4
.endobj CurrentState

# .sbss:0x4 | 0x81698A0C | size: 0x4
.obj Transferring, global
	.skip 0x4
.endobj Transferring

# .sbss:0x8 | 0x81698A10 | size: 0x4
.obj BannerBuffer, global
	.skip 0x4
.endobj BannerBuffer

# .sbss:0xC | 0x81698A14 | size: 0x4
.obj BannerBufferAddr, global
	.skip 0x4
.endobj BannerBufferAddr

# .sbss:0x10 | 0x81698A18 | size: 0x4
.obj BannerAvailable, global
	.skip 0x4
.endobj BannerAvailable

# .sbss:0x14 | 0x81698A1C | size: 0x4
.obj MemAllocator, global
	.skip 0x4
.endobj MemAllocator

# .sbss:0x18 | 0x81698A20 | size: 0x4
.obj StartingGame, global
	.skip 0x4
.endobj StartingGame

# .sbss:0x1C | 0x81698A24 | size: 0x4
.obj lbl_81698A24, global
	.skip 0x4
.endobj lbl_81698A24

# .sbss:0x20 | 0x81698A28 | size: 0x4
.obj lbl_81698A28, global
	.skip 0x4
.endobj lbl_81698A28

# .sbss:0x24 | 0x81698A2C | size: 0x4
.obj lbl_81698A2C, global
	.skip 0x4
.endobj lbl_81698A2C

# .sbss:0x28 | 0x81698A30 | size: 0x4
.obj lbl_81698A30, global
	.skip 0x4
.endobj lbl_81698A30

# .sbss:0x2C | 0x81698A34 | size: 0x4
.obj FatalErrorFlag, global
	.skip 0x4
.endobj FatalErrorFlag

# .sbss:0x30 | 0x81698A38 | size: 0x4
.obj RetryErrorFlag, global
	.skip 0x4
.endobj RetryErrorFlag

# .sbss:0x34 | 0x81698A3C | size: 0x4
.obj UpdateErrorFlag, global
	.skip 0x4
.endobj UpdateErrorFlag

# .sbss:0x38 | 0x81698A40 | size: 0x4
.obj AbortFlag, global
	.skip 0x4
.endobj AbortFlag

# .sbss:0x3C | 0x81698A44 | size: 0x4
.obj lbl_81698A44, global
	.skip 0x4
.endobj lbl_81698A44

# .sbss:0x40 | 0x81698A48 | size: 0x4
.obj lbl_81698A48, global
	.skip 0x4
.endobj lbl_81698A48

# .sbss:0x44 | 0x81698A4C | size: 0x4
.obj lbl_81698A4C, global
	.skip 0x4
.endobj lbl_81698A4C

# .sbss:0x48 | 0x81698A50 | size: 0x4
.obj lbl_81698A50, global
	.skip 0x4
.endobj lbl_81698A50

# .sbss:0x4C | 0x81698A54 | size: 0x4
.obj lbl_81698A54, global
	.skip 0x4
.endobj lbl_81698A54

# .sbss:0x50 | 0x81698A58 | size: 0x4
.obj lbl_81698A58, global
	.skip 0x4
.endobj lbl_81698A58

# .sbss:0x54 | 0x81698A5C | size: 0x4
.obj lbl_81698A5C, global
	.skip 0x4
.endobj lbl_81698A5C

# .sbss:0x58 | 0x81698A60 | size: 0x4
.obj lbl_81698A60, global
	.skip 0x4
.endobj lbl_81698A60

# .sbss:0x5C | 0x81698A64 | size: 0x4
.obj lbl_81698A64, global
	.skip 0x4
.endobj lbl_81698A64

# .sbss:0x60 | 0x81698A68 | size: 0x4
.obj lbl_81698A68, global
	.skip 0x4
.endobj lbl_81698A68

# .sbss:0x64 | 0x81698A6C | size: 0x4
.obj lbl_81698A6C, global
	.skip 0x4
.endobj lbl_81698A6C

# .sbss:0x68 | 0x81698A70 | size: 0x4
.obj lbl_81698A70, global
	.skip 0x4
.endobj lbl_81698A70

# .sbss:0x6C | 0x81698A74 | size: 0x4
.obj lbl_81698A74, global
	.skip 0x4
.endobj lbl_81698A74

# .sbss:0x70 | 0x81698A78 | size: 0x4
.obj lbl_81698A78, global
	.skip 0x4
.endobj lbl_81698A78

# .sbss:0x74 | 0x81698A7C | size: 0x4
.obj lbl_81698A7C, global
	.skip 0x4
.endobj lbl_81698A7C

# .sbss:0x78 | 0x81698A80 | size: 0x4
.obj lbl_81698A80, global
	.skip 0x4
.endobj lbl_81698A80

# .sbss:0x7C | 0x81698A84 | size: 0x4
.obj lbl_81698A84, global
	.skip 0x4
.endobj lbl_81698A84

# .sbss:0x80 | 0x81698A88 | size: 0x4
.obj lbl_81698A88, global
	.skip 0x4
.endobj lbl_81698A88

# .sbss:0x84 | 0x81698A8C | size: 0x4
.obj lbl_81698A8C, global
	.skip 0x4
.endobj lbl_81698A8C

# .sbss:0x88 | 0x81698A90 | size: 0x4
.obj lbl_81698A90, global
	.skip 0x4
.endobj lbl_81698A90

# .sbss:0x8C | 0x81698A94 | size: 0x4
.obj lbl_81698A94, global
	.skip 0x4
.endobj lbl_81698A94

# .sbss:0x90 | 0x81698A98 | size: 0x4
.obj lbl_81698A98, global
	.skip 0x4
.endobj lbl_81698A98

# .sbss:0x94 | 0x81698A9C | size: 0x4
.obj lbl_81698A9C, global
	.skip 0x4
.endobj lbl_81698A9C

# .sbss:0x98 | 0x81698AA0 | size: 0x8
.obj lbl_81698AA0, global
	.skip 0x8
.endobj lbl_81698AA0

# .sbss:0xA0 | 0x81698AA8 | size: 0x4
.obj lbl_81698AA8, global
	.skip 0x4
.endobj lbl_81698AA8

# .sbss:0xA4 | 0x81698AAC | size: 0x4
.obj lbl_81698AAC, global
	.skip 0x4
.endobj lbl_81698AAC

# .sbss:0xA8 | 0x81698AB0 | size: 0x4
.obj lbl_81698AB0, global
	.skip 0x4
.endobj lbl_81698AB0

# .sbss:0xAC | 0x81698AB4 | size: 0x4
.obj lbl_81698AB4, global
	.skip 0x4
.endobj lbl_81698AB4

# .sbss:0xB0 | 0x81698AB8 | size: 0x4
.obj lbl_81698AB8, global
	.skip 0x4
.endobj lbl_81698AB8

# .sbss:0xB4 | 0x81698ABC | size: 0x4
.obj lbl_81698ABC, global
	.skip 0x4
.endobj lbl_81698ABC

# .sbss:0xB8 | 0x81698AC0 | size: 0x4
.obj lbl_81698AC0, global
	.skip 0x4
.endobj lbl_81698AC0

# .sbss:0xBC | 0x81698AC4 | size: 0x4
.obj lbl_81698AC4, global
	.skip 0x4
.endobj lbl_81698AC4

# .sbss:0xC0 | 0x81698AC8 | size: 0x4
.obj lbl_81698AC8, global
	.skip 0x4
.endobj lbl_81698AC8

# .sbss:0xC4 | 0x81698ACC | size: 0x4
.obj lbl_81698ACC, global
	.skip 0x4
.endobj lbl_81698ACC

# .sbss:0xC8 | 0x81698AD0 | size: 0x4
.obj lbl_81698AD0, global
	.skip 0x4
.endobj lbl_81698AD0

# .sbss:0xCC | 0x81698AD4 | size: 0x4
.obj lbl_81698AD4, global
	.skip 0x4
.endobj lbl_81698AD4

# .sbss:0xD0 | 0x81698AD8 | size: 0x4
.obj lbl_81698AD8, global
	.skip 0x4
.endobj lbl_81698AD8

# .sbss:0xD4 | 0x81698ADC | size: 0x4
.obj lbl_81698ADC, global
	.skip 0x4
.endobj lbl_81698ADC

# .sbss:0xD8 | 0x81698AE0 | size: 0x4
.obj lbl_81698AE0, global
	.skip 0x4
.endobj lbl_81698AE0

# .sbss:0xDC | 0x81698AE4 | size: 0x4
.obj lbl_81698AE4, global
	.skip 0x4
.endobj lbl_81698AE4

# .sbss:0xE0 | 0x81698AE8 | size: 0x4
.obj lbl_81698AE8, global
	.skip 0x4
.endobj lbl_81698AE8

# .sbss:0xE4 | 0x81698AEC | size: 0x4
.obj lbl_81698AEC, global
	.skip 0x4
.endobj lbl_81698AEC

# .sbss:0xE8 | 0x81698AF0 | size: 0x8
.obj lbl_81698AF0, global
	.skip 0x8
.endobj lbl_81698AF0
