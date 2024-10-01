.include "macros.inc"
.file "iplATERM.cpp"

# 0x810BDEF8..0x810C0C80 | size: 0x2D88
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810BDEF8 | size: 0x20
.obj ATERM_810BDEF8, global
	.skip 0x20
.endobj ATERM_810BDEF8

# .bss:0x20 | 0x810BDF18 | size: 0x6A0
.obj ATERM_810BDF18, global
	.skip 0x6A0
.endobj ATERM_810BDF18

# .bss:0x6C0 | 0x810BE5B8 | size: 0x280
.obj ATERM_810BE5B8, global
	.skip 0x280
.endobj ATERM_810BE5B8

# .bss:0x940 | 0x810BE838 | size: 0x68
.obj ATERM_810BE838, global
	.skip 0x68
.endobj ATERM_810BE838

# .bss:0x9A8 | 0x810BE8A0 | size: 0x400
.obj ATERM_810BE8A0, global
	.skip 0x400
.endobj ATERM_810BE8A0

# .bss:0xDA8 | 0x810BECA0 | size: 0x924
.obj ATERM_810BECA0, global
	.skip 0x924
.endobj ATERM_810BECA0

# .bss:0x16CC | 0x810BF5C4 | size: 0x24
.obj ATERM_810BF5C4, global
	.skip 0x24
.endobj ATERM_810BF5C4

# .bss:0x16F0 | 0x810BF5E8 | size: 0x258
.obj ATERM_810BF5E8, global
	.skip 0x258
.endobj ATERM_810BF5E8

# .bss:0x1948 | 0x810BF840 | size: 0x900
.obj ATERM_810BF840, global
	.skip 0x900
.endobj ATERM_810BF840

# .bss:0x2248 | 0x810C0140 | size: 0x818
.obj ATERM_810C0140, global
	.skip 0x818
.endobj ATERM_810C0140

# .bss:0x2A60 | 0x810C0958 | size: 0x328
.obj ATERM_810C0958, global
	.skip 0x328
.endobj ATERM_810C0958

# 0x813FE27C..0x81406CC0 | size: 0x8A44
.text
.balign 4

# .text:0x0 | 0x813FE27C | size: 0x22C
.fn AOSSi_Init, global
/* 813FE27C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FE280 | 7C 08 02 A6 */	mflr r0
/* 813FE284 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FE288 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FE28C | 7C 7F 1B 78 */	mr r31, r3
/* 813FE290 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FE294 | A8 03 01 06 */	lha r0, 0x106(r3)
/* 813FE298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE29C | 41 82 00 68 */	beq .L_813FE304
/* 813FE2A0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE2A4 | 41 80 00 60 */	blt .L_813FE304
/* 813FE2A8 | A8 03 01 08 */	lha r0, 0x108(r3)
/* 813FE2AC | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE2B0 | 41 80 00 54 */	blt .L_813FE304
/* 813FE2B4 | A8 03 01 0A */	lha r0, 0x10a(r3)
/* 813FE2B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE2BC | 41 82 00 48 */	beq .L_813FE304
/* 813FE2C0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE2C4 | 41 80 00 40 */	blt .L_813FE304
/* 813FE2C8 | A8 03 01 0C */	lha r0, 0x10c(r3)
/* 813FE2CC | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE2D0 | 41 80 00 34 */	blt .L_813FE304
/* 813FE2D4 | A8 03 01 0E */	lha r0, 0x10e(r3)
/* 813FE2D8 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE2DC | 41 80 00 28 */	blt .L_813FE304
/* 813FE2E0 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 813FE2E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE2E8 | 41 82 00 1C */	beq .L_813FE304
/* 813FE2EC | 28 00 01 00 */	cmplwi r0, 0x100
/* 813FE2F0 | 41 81 00 14 */	bgt .L_813FE304
/* 813FE2F4 | 7C 80 1A 14 */	add r4, r0, r3
/* 813FE2F8 | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 813FE2FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE300 | 41 82 00 0C */	beq .L_813FE30C
.L_813FE304:
/* 813FE304 | 38 00 FF FF */	li r0, -0x1
/* 813FE308 | 48 00 00 08 */	b .L_813FE310
.L_813FE30C:
/* 813FE30C | 38 00 00 00 */	li r0, 0x0
.L_813FE310:
/* 813FE310 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE314 | 40 82 00 44 */	bne .L_813FE358
/* 813FE318 | 38 00 00 0F */	li r0, 0xf
/* 813FE31C | 98 03 01 16 */	stb r0, 0x116(r3)
/* 813FE320 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE328 | 41 82 00 10 */	beq .L_813FE338
/* 813FE32C | 4B FF EF 0D */	bl AOSSi_Free
/* 813FE330 | 38 00 00 00 */	li r0, 0x0
/* 813FE334 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE338:
/* 813FE338 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE33C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE340 | 41 82 00 10 */	beq .L_813FE350
/* 813FE344 | 4B FF EE F5 */	bl AOSSi_Free
/* 813FE348 | 38 00 00 00 */	li r0, 0x0
/* 813FE34C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE350:
/* 813FE350 | 38 60 FF FF */	li r3, -0x1
/* 813FE354 | 48 00 01 3C */	b .L_813FE490
.L_813FE358:
/* 813FE358 | 38 60 05 F8 */	li r3, 0x5f8
/* 813FE35C | 4B FF EE B9 */	bl AOSSi_Alloc
/* 813FE360 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE364 | 90 6D AC 4C */	stw r3, lbl_81698C8C@sda21(r0)
/* 813FE368 | 40 82 00 44 */	bne .L_813FE3AC
/* 813FE36C | 38 00 00 0F */	li r0, 0xf
/* 813FE370 | 98 1F 01 16 */	stb r0, 0x116(r31)
/* 813FE374 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE37C | 41 82 00 10 */	beq .L_813FE38C
/* 813FE380 | 4B FF EE B9 */	bl AOSSi_Free
/* 813FE384 | 38 00 00 00 */	li r0, 0x0
/* 813FE388 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE38C:
/* 813FE38C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE394 | 41 82 00 10 */	beq .L_813FE3A4
/* 813FE398 | 4B FF EE A1 */	bl AOSSi_Free
/* 813FE39C | 38 00 00 00 */	li r0, 0x0
/* 813FE3A0 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE3A4:
/* 813FE3A4 | 38 60 FF FF */	li r3, -0x1
/* 813FE3A8 | 48 00 00 E8 */	b .L_813FE490
.L_813FE3AC:
/* 813FE3AC | 7F E3 FB 78 */	mr r3, r31
/* 813FE3B0 | 48 00 00 F9 */	bl ATERM_813FE4A8
/* 813FE3B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813FE3B8 | 80 6D AC 4C */	lwz r3, lbl_81698C8C@sda21(r0)
/* 813FE3BC | 4B FF EE 7D */	bl AOSSi_Free
/* 813FE3C0 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE3C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE3C8 | 41 82 00 10 */	beq .L_813FE3D8
/* 813FE3CC | 4B FF EE 6D */	bl AOSSi_Free
/* 813FE3D0 | 38 00 00 00 */	li r0, 0x0
/* 813FE3D4 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE3D8:
/* 813FE3D8 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE3DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE3E0 | 41 82 00 10 */	beq .L_813FE3F0
/* 813FE3E4 | 4B FF EE 55 */	bl AOSSi_Free
/* 813FE3E8 | 38 00 00 00 */	li r0, 0x0
/* 813FE3EC | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE3F0:
/* 813FE3F0 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FE3F4 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FE3F8 | 41 82 00 08 */	beq .L_813FE400
/* 813FE3FC | 48 0B 4D 61 */	bl SOClose
.L_813FE400:
/* 813FE400 | 80 0D AC 48 */	lwz r0, lbl_81698C88@sda21(r0)
/* 813FE404 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE408 | 40 82 00 20 */	bne .L_813FE428
/* 813FE40C | 38 00 00 00 */	li r0, 0x0
/* 813FE410 | 90 0D AC 48 */	stw r0, lbl_81698C88@sda21(r0)
/* 813FE414 | 48 0B 42 1D */	bl SOCleanup
/* 813FE418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE41C | 40 80 00 0C */	bge .L_813FE428
/* 813FE420 | 38 00 FF FF */	li r0, -0x1
/* 813FE424 | 48 00 00 08 */	b .L_813FE42C
.L_813FE428:
/* 813FE428 | 38 00 00 00 */	li r0, 0x0
.L_813FE42C:
/* 813FE42C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE430 | 41 82 00 44 */	beq .L_813FE474
/* 813FE434 | 38 00 00 0F */	li r0, 0xf
/* 813FE438 | 98 1F 01 16 */	stb r0, 0x116(r31)
/* 813FE43C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE444 | 41 82 00 10 */	beq .L_813FE454
/* 813FE448 | 4B FF ED F1 */	bl AOSSi_Free
/* 813FE44C | 38 00 00 00 */	li r0, 0x0
/* 813FE450 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE454:
/* 813FE454 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE458 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE45C | 41 82 00 10 */	beq .L_813FE46C
/* 813FE460 | 4B FF ED D9 */	bl AOSSi_Free
/* 813FE464 | 38 00 00 00 */	li r0, 0x0
/* 813FE468 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE46C:
/* 813FE46C | 38 60 FF FF */	li r3, -0x1
/* 813FE470 | 48 00 00 20 */	b .L_813FE490
.L_813FE474:
/* 813FE474 | 2C 1E FF FF */	cmpwi r30, -0x1
/* 813FE478 | 40 82 00 14 */	bne .L_813FE48C
/* 813FE47C | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FE480 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE484 | 40 82 00 08 */	bne .L_813FE48C
/* 813FE488 | 3B C0 FF FE */	li r30, -0x2
.L_813FE48C:
/* 813FE48C | 7F C3 F3 78 */	mr r3, r30
.L_813FE490:
/* 813FE490 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FE494 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FE498 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FE49C | 7C 08 03 A6 */	mtlr r0
/* 813FE4A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FE4A4 | 4E 80 00 20 */	blr
.endfn AOSSi_Init

# .text:0x22C | 0x813FE4A8 | size: 0x18C0
.fn ATERM_813FE4A8, global
/* 813FE4A8 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813FE4AC | 7C 2C 0B 78 */	mr r12, r1
/* 813FE4B0 | 21 6B FE A0 */	subfic r11, r11, -0x160
/* 813FE4B4 | 7C 21 59 6E */	stwux r1, r1, r11
/* 813FE4B8 | 7C 08 02 A6 */	mflr r0
/* 813FE4BC | 7D 8B 63 78 */	mr r11, r12
/* 813FE4C0 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813FE4C4 | 48 1F AF C9 */	bl _savegpr_14
/* 813FE4C8 | A0 82 88 78 */	lhz r4, lbl_81694C78@sda21(r0)
/* 813FE4CC | 38 00 00 00 */	li r0, 0x0
/* 813FE4D0 | A0 A2 88 7A */	lhz r5, lbl_81694C7A@sda21(r0)
/* 813FE4D4 | 7C 6F 1B 78 */	mr r15, r3
/* 813FE4D8 | B0 81 00 28 */	sth r4, 0x28(r1)
/* 813FE4DC | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 813FE4E0 | 3A 60 00 00 */	li r19, 0x0
/* 813FE4E4 | 38 80 00 00 */	li r4, 0x0
/* 813FE4E8 | B0 A1 00 2A */	sth r5, 0x2a(r1)
/* 813FE4EC | 38 A0 00 18 */	li r5, 0x18
/* 813FE4F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FE4F4 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813FE4F8 | 4B F3 1E 3D */	bl memset
/* 813FE4FC | A8 0F 01 06 */	lha r0, 0x106(r15)
/* 813FE500 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE504 | B0 01 00 28 */	sth r0, 0x28(r1)
/* 813FE508 | 40 82 00 0C */	bne .L_813FE514
/* 813FE50C | 38 00 00 0A */	li r0, 0xa
/* 813FE510 | B0 01 00 28 */	sth r0, 0x28(r1)
.L_813FE514:
/* 813FE514 | A8 0F 01 0A */	lha r0, 0x10a(r15)
/* 813FE518 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE51C | B0 01 00 24 */	sth r0, 0x24(r1)
/* 813FE520 | 40 82 00 0C */	bne .L_813FE52C
/* 813FE524 | 38 00 00 0A */	li r0, 0xa
/* 813FE528 | B0 01 00 24 */	sth r0, 0x24(r1)
.L_813FE52C:
/* 813FE52C | A8 0F 01 08 */	lha r0, 0x108(r15)
/* 813FE530 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE534 | B0 01 00 2A */	sth r0, 0x2a(r1)
/* 813FE538 | 40 82 00 0C */	bne .L_813FE544
/* 813FE53C | 38 00 00 64 */	li r0, 0x64
/* 813FE540 | B0 01 00 2A */	sth r0, 0x2a(r1)
.L_813FE544:
/* 813FE544 | A8 0F 01 0C */	lha r0, 0x10c(r15)
/* 813FE548 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813FE54C | B0 01 00 26 */	sth r0, 0x26(r1)
/* 813FE550 | 40 82 00 0C */	bne .L_813FE55C
/* 813FE554 | 38 00 00 64 */	li r0, 0x64
/* 813FE558 | B0 01 00 26 */	sth r0, 0x26(r1)
.L_813FE55C:
/* 813FE55C | AA 8F 01 0E */	lha r20, 0x10e(r15)
/* 813FE560 | 2C 14 FF FF */	cmpwi r20, -0x1
/* 813FE564 | 40 82 00 08 */	bne .L_813FE56C
/* 813FE568 | 3A 80 07 D0 */	li r20, 0x7d0
.L_813FE56C:
/* 813FE56C | 38 6D AC 38 */	li r3, lbl_81698C78@sda21
/* 813FE570 | 38 80 00 00 */	li r4, 0x0
/* 813FE574 | 38 A0 00 08 */	li r5, 0x8
/* 813FE578 | 4B F3 1D BD */	bl memset
/* 813FE57C | 38 00 00 01 */	li r0, 0x1
/* 813FE580 | 3E 00 81 0C */	lis r16, ATERM_810BDEF8@ha
/* 813FE584 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 813FE588 | 38 70 DE F8 */	addi r3, r16, ATERM_810BDEF8@l
/* 813FE58C | 38 80 00 00 */	li r4, 0x0
/* 813FE590 | 38 A0 00 1C */	li r5, 0x1c
/* 813FE594 | 4B F3 1D A1 */	bl memset
/* 813FE598 | 38 0F 00 06 */	addi r0, r15, 0x6
/* 813FE59C | 3C 60 C0 A8 */	lis r3, 0xc0a8
/* 813FE5A0 | 90 10 DE F8 */	stw r0, ATERM_810BDEF8@l(r16)
/* 813FE5A4 | 38 B0 DE F8 */	addi r5, r16, ATERM_810BDEF8@l
/* 813FE5A8 | 38 63 0B 01 */	addi r3, r3, 0xb01
/* 813FE5AC | 3A 00 00 00 */	li r16, 0x0
/* 813FE5B0 | A0 0F 00 04 */	lhz r0, 0x4(r15)
/* 813FE5B4 | 90 05 00 04 */	stw r0, 0x4(r5)
/* 813FE5B8 | A0 0F 00 00 */	lhz r0, 0x0(r15)
/* 813FE5BC | 54 04 07 3E */	clrlwi r4, r0, 28
/* 813FE5C0 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 813FE5C4 | 90 85 00 08 */	stw r4, 0x8(r5)
/* 813FE5C8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FE5CC | 88 0F 00 02 */	lbz r0, 0x2(r15)
/* 813FE5D0 | 98 05 00 19 */	stb r0, 0x19(r5)
/* 813FE5D4 | 92 05 00 0C */	stw r16, 0xc(r5)
/* 813FE5D8 | 90 65 00 10 */	stw r3, 0x10(r5)
/* 813FE5DC | 9A 05 00 18 */	stb r16, 0x18(r5)
/* 813FE5E0 | 41 82 00 48 */	beq .L_813FE628
/* 813FE5E4 | 38 60 00 13 */	li r3, 0x13
/* 813FE5E8 | 38 00 00 0F */	li r0, 0xf
/* 813FE5EC | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
/* 813FE5F0 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE5F4 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE5FC | 41 82 00 0C */	beq .L_813FE608
/* 813FE600 | 4B FF EC 39 */	bl AOSSi_Free
/* 813FE604 | 92 0D AC 34 */	stw r16, lbl_81698C74@sda21(r0)
.L_813FE608:
/* 813FE608 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE60C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE610 | 41 82 00 10 */	beq .L_813FE620
/* 813FE614 | 4B FF EC 25 */	bl AOSSi_Free
/* 813FE618 | 38 00 00 00 */	li r0, 0x0
/* 813FE61C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE620:
/* 813FE620 | 38 60 FF FF */	li r3, -0x1
/* 813FE624 | 48 00 17 28 */	b .L_813FFD4C
.L_813FE628:
/* 813FE628 | 80 0D 91 CC */	lwz r0, lbl_8169720C@sda21(r0)
/* 813FE62C | 3A 40 00 00 */	li r18, 0x0
/* 813FE630 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE634 | 41 82 00 10 */	beq .L_813FE644
/* 813FE638 | 92 0D 91 CC */	stw r16, lbl_8169720C@sda21(r0)
/* 813FE63C | 38 60 00 00 */	li r3, 0x0
/* 813FE640 | 4B FF F3 5D */	bl AOSSi_Status
.L_813FE644:
/* 813FE644 | AA 01 00 28 */	lha r16, 0x28(r1)
/* 813FE648 | 3A 20 00 00 */	li r17, 0x0
.L_813FE64C:
/* 813FE64C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE654 | 41 82 00 0C */	beq .L_813FE660
/* 813FE658 | 4B FF EB E1 */	bl AOSSi_Free
/* 813FE65C | 92 2D AC 30 */	stw r17, lbl_81698C70@sda21(r0)
.L_813FE660:
/* 813FE660 | 38 6D AC 30 */	li r3, lbl_81698C70@sda21
/* 813FE664 | 4B FF ED 3D */	bl AOSSi_WLANGetBSSList
/* 813FE668 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FE66C | 40 82 00 44 */	bne .L_813FE6B0
/* 813FE670 | 38 00 00 0F */	li r0, 0xf
/* 813FE674 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE678 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE67C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE680 | 41 82 00 10 */	beq .L_813FE690
/* 813FE684 | 4B FF EB B5 */	bl AOSSi_Free
/* 813FE688 | 38 00 00 00 */	li r0, 0x0
/* 813FE68C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE690:
/* 813FE690 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE698 | 41 82 00 10 */	beq .L_813FE6A8
/* 813FE69C | 4B FF EB 9D */	bl AOSSi_Free
/* 813FE6A0 | 38 00 00 00 */	li r0, 0x0
/* 813FE6A4 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE6A8:
/* 813FE6A8 | 38 60 FF FF */	li r3, -0x1
/* 813FE6AC | 48 00 16 A0 */	b .L_813FFD4C
.L_813FE6B0:
/* 813FE6B0 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FE6B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE6B8 | 40 82 00 44 */	bne .L_813FE6FC
/* 813FE6BC | 38 00 00 0F */	li r0, 0xf
/* 813FE6C0 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE6C4 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE6CC | 41 82 00 10 */	beq .L_813FE6DC
/* 813FE6D0 | 4B FF EB 69 */	bl AOSSi_Free
/* 813FE6D4 | 38 00 00 00 */	li r0, 0x0
/* 813FE6D8 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE6DC:
/* 813FE6DC | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE6E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE6E4 | 41 82 00 10 */	beq .L_813FE6F4
/* 813FE6E8 | 4B FF EB 51 */	bl AOSSi_Free
/* 813FE6EC | 38 00 00 00 */	li r0, 0x0
/* 813FE6F0 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE6F4:
/* 813FE6F4 | 38 60 FF FF */	li r3, -0x1
/* 813FE6F8 | 48 00 16 54 */	b .L_813FFD4C
.L_813FE6FC:
/* 813FE6FC | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE700 | 48 00 19 D5 */	bl ATERM_814000D4
/* 813FE704 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813FE708 | 40 82 00 44 */	bne .L_813FE74C
/* 813FE70C | 38 00 00 02 */	li r0, 0x2
/* 813FE710 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE714 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE71C | 41 82 00 10 */	beq .L_813FE72C
/* 813FE720 | 4B FF EB 19 */	bl AOSSi_Free
/* 813FE724 | 38 00 00 00 */	li r0, 0x0
/* 813FE728 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE72C:
/* 813FE72C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE734 | 41 82 00 10 */	beq .L_813FE744
/* 813FE738 | 4B FF EB 01 */	bl AOSSi_Free
/* 813FE73C | 38 00 00 00 */	li r0, 0x0
/* 813FE740 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE744:
/* 813FE744 | 38 60 FF FF */	li r3, -0x1
/* 813FE748 | 48 00 16 04 */	b .L_813FFD4C
.L_813FE74C:
/* 813FE74C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE750 | 41 82 01 34 */	beq .L_813FE884
/* 813FE754 | 7E 40 07 34 */	extsh r0, r18
/* 813FE758 | 7C 00 80 00 */	cmpw r0, r16
/* 813FE75C | 41 80 00 44 */	blt .L_813FE7A0
/* 813FE760 | 38 00 00 01 */	li r0, 0x1
/* 813FE764 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE768 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE770 | 41 82 00 10 */	beq .L_813FE780
/* 813FE774 | 4B FF EA C5 */	bl AOSSi_Free
/* 813FE778 | 38 00 00 00 */	li r0, 0x0
/* 813FE77C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE780:
/* 813FE780 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE788 | 41 82 00 10 */	beq .L_813FE798
/* 813FE78C | 4B FF EA AD */	bl AOSSi_Free
/* 813FE790 | 38 00 00 00 */	li r0, 0x0
/* 813FE794 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE798:
/* 813FE798 | 38 60 FF FF */	li r3, -0x1
/* 813FE79C | 48 00 15 B0 */	b .L_813FFD4C
.L_813FE7A0:
/* 813FE7A0 | A2 A1 00 2A */	lhz r21, 0x2a(r1)
/* 813FE7A4 | 48 00 00 84 */	b .L_813FE828
.L_813FE7A8:
/* 813FE7A8 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FE7AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE7B0 | 40 82 00 44 */	bne .L_813FE7F4
/* 813FE7B4 | 38 00 00 0F */	li r0, 0xf
/* 813FE7B8 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE7BC | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE7C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE7C4 | 41 82 00 10 */	beq .L_813FE7D4
/* 813FE7C8 | 4B FF EA 71 */	bl AOSSi_Free
/* 813FE7CC | 38 00 00 00 */	li r0, 0x0
/* 813FE7D0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE7D4:
/* 813FE7D4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE7D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE7DC | 41 82 00 10 */	beq .L_813FE7EC
/* 813FE7E0 | 4B FF EA 59 */	bl AOSSi_Free
/* 813FE7E4 | 38 00 00 00 */	li r0, 0x0
/* 813FE7E8 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE7EC:
/* 813FE7EC | 38 60 FF FF */	li r3, -0x1
/* 813FE7F0 | 48 00 15 5C */	b .L_813FFD4C
.L_813FE7F4:
/* 813FE7F4 | 28 15 00 64 */	cmplwi r21, 0x64
/* 813FE7F8 | 40 81 00 0C */	ble .L_813FE804
/* 813FE7FC | 38 60 00 64 */	li r3, 0x64
/* 813FE800 | 48 00 00 08 */	b .L_813FE808
.L_813FE804:
/* 813FE804 | 7E A3 AB 78 */	mr r3, r21
.L_813FE808:
/* 813FE808 | 4B FF F1 91 */	bl AOSSi_Sleep
/* 813FE80C | 28 15 00 64 */	cmplwi r21, 0x64
/* 813FE810 | 40 81 00 0C */	ble .L_813FE81C
/* 813FE814 | 38 00 00 64 */	li r0, 0x64
/* 813FE818 | 48 00 00 08 */	b .L_813FE820
.L_813FE81C:
/* 813FE81C | 7E A0 AB 78 */	mr r0, r21
.L_813FE820:
/* 813FE820 | 7C 00 A8 50 */	subf r0, r0, r21
/* 813FE824 | 54 15 04 3E */	clrlwi r21, r0, 16
.L_813FE828:
/* 813FE828 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 813FE82C | 40 82 FF 7C */	bne .L_813FE7A8
/* 813FE830 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FE834 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE838 | 40 82 00 44 */	bne .L_813FE87C
/* 813FE83C | 38 00 00 0F */	li r0, 0xf
/* 813FE840 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE844 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE84C | 41 82 00 10 */	beq .L_813FE85C
/* 813FE850 | 4B FF E9 E9 */	bl AOSSi_Free
/* 813FE854 | 38 00 00 00 */	li r0, 0x0
/* 813FE858 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE85C:
/* 813FE85C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE864 | 41 82 00 10 */	beq .L_813FE874
/* 813FE868 | 4B FF E9 D1 */	bl AOSSi_Free
/* 813FE86C | 38 00 00 00 */	li r0, 0x0
/* 813FE870 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE874:
/* 813FE874 | 38 60 FF FF */	li r3, -0x1
/* 813FE878 | 48 00 14 D4 */	b .L_813FFD4C
.L_813FE87C:
/* 813FE87C | 3A 52 00 01 */	addi r18, r18, 0x1
/* 813FE880 | 4B FF FD CC */	b .L_813FE64C
.L_813FE884:
/* 813FE884 | 80 0D 91 CC */	lwz r0, lbl_8169720C@sda21(r0)
/* 813FE888 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE88C | 41 82 00 14 */	beq .L_813FE8A0
/* 813FE890 | 38 00 00 01 */	li r0, 0x1
/* 813FE894 | 38 60 00 01 */	li r3, 0x1
/* 813FE898 | 90 0D 91 CC */	stw r0, lbl_8169720C@sda21(r0)
/* 813FE89C | 4B FF F1 01 */	bl AOSSi_Status
.L_813FE8A0:
/* 813FE8A0 | 38 61 00 B8 */	addi r3, r1, 0xb8
/* 813FE8A4 | 38 80 00 00 */	li r4, 0x0
/* 813FE8A8 | 38 A0 00 3C */	li r5, 0x3c
/* 813FE8AC | 4B F3 1A 89 */	bl memset
/* 813FE8B0 | 3E 00 81 65 */	lis r16, lbl_81657C48@ha
/* 813FE8B4 | 38 70 7C 48 */	addi r3, r16, lbl_81657C48@l
/* 813FE8B8 | 48 1F A6 45 */	bl strlen
/* 813FE8BC | 90 61 00 B8 */	stw r3, 0xb8(r1)
/* 813FE8C0 | 7C 65 1B 78 */	mr r5, r3
/* 813FE8C4 | 38 61 00 BC */	addi r3, r1, 0xbc
/* 813FE8C8 | 38 90 7C 48 */	addi r4, r16, lbl_81657C48@l
/* 813FE8CC | 4B F3 19 65 */	bl memcpy
/* 813FE8D0 | 38 00 00 01 */	li r0, 0x1
/* 813FE8D4 | 38 6D 91 C4 */	li r3, lbl_81697204@sda21
/* 813FE8D8 | 90 01 00 DC */	stw r0, 0xdc(r1)
/* 813FE8DC | 48 1F A6 21 */	bl strlen
/* 813FE8E0 | 28 03 00 0D */	cmplwi r3, 0xd
/* 813FE8E4 | 90 61 00 E0 */	stw r3, 0xe0(r1)
/* 813FE8E8 | 40 81 00 08 */	ble .L_813FE8F0
/* 813FE8EC | 48 00 00 14 */	b .L_813FE900
.L_813FE8F0:
/* 813FE8F0 | 7C 65 1B 78 */	mr r5, r3
/* 813FE8F4 | 38 61 00 E4 */	addi r3, r1, 0xe4
/* 813FE8F8 | 38 8D 91 C4 */	li r4, lbl_81697204@sda21
/* 813FE8FC | 4B F3 19 35 */	bl memcpy
.L_813FE900:
/* 813FE900 | 3C A0 C0 A8 */	lis r5, 0xc0a8
/* 813FE904 | 38 80 FF 00 */	li r4, -0x100
/* 813FE908 | 38 65 0B 65 */	addi r3, r5, 0xb65
/* 813FE90C | 38 C0 00 00 */	li r6, 0x0
/* 813FE910 | 38 A5 0B 01 */	addi r5, r5, 0xb01
/* 813FE914 | 38 E0 00 00 */	li r7, 0x0
/* 813FE918 | 4B FF E9 71 */	bl AOSSi_SetNCDIPAddr
/* 813FE91C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE920 | 41 82 00 4C */	beq .L_813FE96C
/* 813FE924 | 38 60 00 0C */	li r3, 0xc
/* 813FE928 | 38 00 00 0F */	li r0, 0xf
/* 813FE92C | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
/* 813FE930 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE934 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE93C | 41 82 00 10 */	beq .L_813FE94C
/* 813FE940 | 4B FF E8 F9 */	bl AOSSi_Free
/* 813FE944 | 38 00 00 00 */	li r0, 0x0
/* 813FE948 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE94C:
/* 813FE94C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE954 | 41 82 00 10 */	beq .L_813FE964
/* 813FE958 | 4B FF E8 E1 */	bl AOSSi_Free
/* 813FE95C | 38 00 00 00 */	li r0, 0x0
/* 813FE960 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE964:
/* 813FE964 | 38 60 FF FF */	li r3, -0x1
/* 813FE968 | 48 00 13 E4 */	b .L_813FFD4C
.L_813FE96C:
/* 813FE96C | 41 82 00 44 */	beq .L_813FE9B0
/* 813FE970 | 38 00 00 0F */	li r0, 0xf
/* 813FE974 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE978 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE97C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE980 | 41 82 00 10 */	beq .L_813FE990
/* 813FE984 | 4B FF E8 B5 */	bl AOSSi_Free
/* 813FE988 | 38 00 00 00 */	li r0, 0x0
/* 813FE98C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE990:
/* 813FE990 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE998 | 41 82 00 10 */	beq .L_813FE9A8
/* 813FE99C | 4B FF E8 9D */	bl AOSSi_Free
/* 813FE9A0 | 38 00 00 00 */	li r0, 0x0
/* 813FE9A4 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE9A8:
/* 813FE9A8 | 38 60 FF FF */	li r3, -0x1
/* 813FE9AC | 48 00 13 A0 */	b .L_813FFD4C
.L_813FE9B0:
/* 813FE9B0 | 38 60 00 58 */	li r3, 0x58
/* 813FE9B4 | 4B FF E8 61 */	bl AOSSi_Alloc
/* 813FE9B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE9BC | 90 6D AC 34 */	stw r3, lbl_81698C74@sda21(r0)
/* 813FE9C0 | 40 82 00 44 */	bne .L_813FEA04
/* 813FE9C4 | 38 00 00 0F */	li r0, 0xf
/* 813FE9C8 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FE9CC | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FE9D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE9D4 | 41 82 00 10 */	beq .L_813FE9E4
/* 813FE9D8 | 4B FF E8 61 */	bl AOSSi_Free
/* 813FE9DC | 38 00 00 00 */	li r0, 0x0
/* 813FE9E0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FE9E4:
/* 813FE9E4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FE9E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FE9EC | 41 82 00 10 */	beq .L_813FE9FC
/* 813FE9F0 | 4B FF E8 49 */	bl AOSSi_Free
/* 813FE9F4 | 38 00 00 00 */	li r0, 0x0
/* 813FE9F8 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FE9FC:
/* 813FE9FC | 38 60 FF FF */	li r3, -0x1
/* 813FEA00 | 48 00 13 4C */	b .L_813FFD4C
.L_813FEA04:
/* 813FEA04 | 38 80 00 00 */	li r4, 0x0
/* 813FEA08 | 38 A0 00 58 */	li r5, 0x58
/* 813FEA0C | 4B F3 19 29 */	bl memset
/* 813FEA10 | AA 01 00 28 */	lha r16, 0x28(r1)
/* 813FEA14 | 3A 40 00 00 */	li r18, 0x0
/* 813FEA18 | 48 00 01 54 */	b .L_813FEB6C
.L_813FEA1C:
/* 813FEA1C | 80 8D AC 34 */	lwz r4, lbl_81698C74@sda21(r0)
/* 813FEA20 | 38 61 00 B8 */	addi r3, r1, 0xb8
/* 813FEA24 | 48 00 36 A9 */	bl ATERM_814020CC
/* 813FEA28 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FEA2C | 40 82 00 44 */	bne .L_813FEA70
/* 813FEA30 | 38 00 00 0F */	li r0, 0xf
/* 813FEA34 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEA38 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEA3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEA40 | 41 82 00 10 */	beq .L_813FEA50
/* 813FEA44 | 4B FF E7 F5 */	bl AOSSi_Free
/* 813FEA48 | 38 00 00 00 */	li r0, 0x0
/* 813FEA4C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEA50:
/* 813FEA50 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEA54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEA58 | 41 82 00 10 */	beq .L_813FEA68
/* 813FEA5C | 4B FF E7 DD */	bl AOSSi_Free
/* 813FEA60 | 38 00 00 00 */	li r0, 0x0
/* 813FEA64 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEA68:
/* 813FEA68 | 38 60 FF FF */	li r3, -0x1
/* 813FEA6C | 48 00 12 E0 */	b .L_813FFD4C
.L_813FEA70:
/* 813FEA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEA74 | 40 82 00 18 */	bne .L_813FEA8C
/* 813FEA78 | 40 82 01 00 */	bne .L_813FEB78
/* 813FEA7C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEA80 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813FEA84 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FEA88 | 41 82 00 F0 */	beq .L_813FEB78
.L_813FEA8C:
/* 813FEA8C | A2 21 00 2A */	lhz r17, 0x2a(r1)
/* 813FEA90 | 48 00 00 84 */	b .L_813FEB14
.L_813FEA94:
/* 813FEA94 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FEA98 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FEA9C | 40 82 00 44 */	bne .L_813FEAE0
/* 813FEAA0 | 38 00 00 0F */	li r0, 0xf
/* 813FEAA4 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEAA8 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEAAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEAB0 | 41 82 00 10 */	beq .L_813FEAC0
/* 813FEAB4 | 4B FF E7 85 */	bl AOSSi_Free
/* 813FEAB8 | 38 00 00 00 */	li r0, 0x0
/* 813FEABC | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEAC0:
/* 813FEAC0 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEAC8 | 41 82 00 10 */	beq .L_813FEAD8
/* 813FEACC | 4B FF E7 6D */	bl AOSSi_Free
/* 813FEAD0 | 38 00 00 00 */	li r0, 0x0
/* 813FEAD4 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEAD8:
/* 813FEAD8 | 38 60 FF FF */	li r3, -0x1
/* 813FEADC | 48 00 12 70 */	b .L_813FFD4C
.L_813FEAE0:
/* 813FEAE0 | 28 11 00 64 */	cmplwi r17, 0x64
/* 813FEAE4 | 40 81 00 0C */	ble .L_813FEAF0
/* 813FEAE8 | 38 60 00 64 */	li r3, 0x64
/* 813FEAEC | 48 00 00 08 */	b .L_813FEAF4
.L_813FEAF0:
/* 813FEAF0 | 7E 23 8B 78 */	mr r3, r17
.L_813FEAF4:
/* 813FEAF4 | 4B FF EE A5 */	bl AOSSi_Sleep
/* 813FEAF8 | 28 11 00 64 */	cmplwi r17, 0x64
/* 813FEAFC | 40 81 00 0C */	ble .L_813FEB08
/* 813FEB00 | 38 00 00 64 */	li r0, 0x64
/* 813FEB04 | 48 00 00 08 */	b .L_813FEB0C
.L_813FEB08:
/* 813FEB08 | 7E 20 8B 78 */	mr r0, r17
.L_813FEB0C:
/* 813FEB0C | 7C 00 88 50 */	subf r0, r0, r17
/* 813FEB10 | 54 11 04 3E */	clrlwi r17, r0, 16
.L_813FEB14:
/* 813FEB14 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 813FEB18 | 40 82 FF 7C */	bne .L_813FEA94
/* 813FEB1C | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FEB20 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FEB24 | 40 82 00 44 */	bne .L_813FEB68
/* 813FEB28 | 38 00 00 0F */	li r0, 0xf
/* 813FEB2C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEB30 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEB34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEB38 | 41 82 00 10 */	beq .L_813FEB48
/* 813FEB3C | 4B FF E6 FD */	bl AOSSi_Free
/* 813FEB40 | 38 00 00 00 */	li r0, 0x0
/* 813FEB44 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEB48:
/* 813FEB48 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEB50 | 41 82 00 10 */	beq .L_813FEB60
/* 813FEB54 | 4B FF E6 E5 */	bl AOSSi_Free
/* 813FEB58 | 38 00 00 00 */	li r0, 0x0
/* 813FEB5C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEB60:
/* 813FEB60 | 38 60 FF FF */	li r3, -0x1
/* 813FEB64 | 48 00 11 E8 */	b .L_813FFD4C
.L_813FEB68:
/* 813FEB68 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_813FEB6C:
/* 813FEB6C | 7E 40 07 34 */	extsh r0, r18
/* 813FEB70 | 7C 00 80 00 */	cmpw r0, r16
/* 813FEB74 | 41 80 FE A8 */	blt .L_813FEA1C
.L_813FEB78:
/* 813FEB78 | A8 01 00 28 */	lha r0, 0x28(r1)
/* 813FEB7C | 7E 43 07 34 */	extsh r3, r18
/* 813FEB80 | 7C 03 00 00 */	cmpw r3, r0
/* 813FEB84 | 40 82 00 44 */	bne .L_813FEBC8
/* 813FEB88 | 38 00 00 0F */	li r0, 0xf
/* 813FEB8C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEB90 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEB94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEB98 | 41 82 00 10 */	beq .L_813FEBA8
/* 813FEB9C | 4B FF E6 9D */	bl AOSSi_Free
/* 813FEBA0 | 38 00 00 00 */	li r0, 0x0
/* 813FEBA4 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEBA8:
/* 813FEBA8 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEBAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEBB0 | 41 82 00 10 */	beq .L_813FEBC0
/* 813FEBB4 | 4B FF E6 85 */	bl AOSSi_Free
/* 813FEBB8 | 38 00 00 00 */	li r0, 0x0
/* 813FEBBC | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEBC0:
/* 813FEBC0 | 38 60 FF FF */	li r3, -0x1
/* 813FEBC4 | 48 00 11 88 */	b .L_813FFD4C
.L_813FEBC8:
/* 813FEBC8 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEBCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEBD0 | 41 82 00 10 */	beq .L_813FEBE0
/* 813FEBD4 | 4B FF E6 65 */	bl AOSSi_Free
/* 813FEBD8 | 38 00 00 00 */	li r0, 0x0
/* 813FEBDC | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEBE0:
/* 813FEBE0 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEBE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEBE8 | 41 82 00 10 */	beq .L_813FEBF8
/* 813FEBEC | 4B FF E6 4D */	bl AOSSi_Free
/* 813FEBF0 | 38 00 00 00 */	li r0, 0x0
/* 813FEBF4 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEBF8:
/* 813FEBF8 | 3A 21 00 A0 */	addi r17, r1, 0xa0
/* 813FEBFC | 3A 40 00 00 */	li r18, 0x0
/* 813FEC00 | 3A 00 00 00 */	li r16, 0x0
.L_813FEC04:
/* 813FEC04 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 813FEC08 | 38 8F 01 10 */	addi r4, r15, 0x110
/* 813FEC0C | 7C 63 82 14 */	add r3, r3, r16
/* 813FEC10 | 38 A0 00 06 */	li r5, 0x6
/* 813FEC14 | 4B F3 16 1D */	bl memcpy
/* 813FEC18 | 48 20 20 A9 */	bl rand
/* 813FEC1C | 7E B1 82 14 */	add r21, r17, r16
/* 813FEC20 | B0 75 00 06 */	sth r3, 0x6(r21)
/* 813FEC24 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 813FEC28 | 48 0B 4F 51 */	bl SOHtoNs
/* 813FEC2C | 3A 52 00 01 */	addi r18, r18, 0x1
/* 813FEC30 | B0 75 00 06 */	sth r3, 0x6(r21)
/* 813FEC34 | 2C 12 00 03 */	cmpwi r18, 0x3
/* 813FEC38 | 3A 10 00 08 */	addi r16, r16, 0x8
/* 813FEC3C | 41 80 FF C8 */	blt .L_813FEC04
/* 813FEC40 | 38 60 00 02 */	li r3, 0x2
/* 813FEC44 | 38 80 00 02 */	li r4, 0x2
/* 813FEC48 | 38 A0 00 00 */	li r5, 0x0
/* 813FEC4C | 48 0B 44 21 */	bl SOSocket
/* 813FEC50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEC54 | 90 6D 91 C0 */	stw r3, lbl_81697200@sda21(r0)
/* 813FEC58 | 40 80 00 44 */	bge .L_813FEC9C
/* 813FEC5C | 38 00 00 0F */	li r0, 0xf
/* 813FEC60 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEC64 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEC68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEC6C | 41 82 00 10 */	beq .L_813FEC7C
/* 813FEC70 | 4B FF E5 C9 */	bl AOSSi_Free
/* 813FEC74 | 38 00 00 00 */	li r0, 0x0
/* 813FEC78 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEC7C:
/* 813FEC7C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEC84 | 41 82 00 10 */	beq .L_813FEC94
/* 813FEC88 | 4B FF E5 B1 */	bl AOSSi_Free
/* 813FEC8C | 38 00 00 00 */	li r0, 0x0
/* 813FEC90 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEC94:
/* 813FEC94 | 38 60 FF FF */	li r3, -0x1
/* 813FEC98 | 48 00 10 B4 */	b .L_813FFD4C
.L_813FEC9C:
/* 813FEC9C | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 813FECA0 | 40 80 00 4C */	bge .L_813FECEC
/* 813FECA4 | 38 60 00 0B */	li r3, 0xb
/* 813FECA8 | 38 00 00 0F */	li r0, 0xf
/* 813FECAC | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
/* 813FECB0 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FECB4 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FECB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FECBC | 41 82 00 10 */	beq .L_813FECCC
/* 813FECC0 | 4B FF E5 79 */	bl AOSSi_Free
/* 813FECC4 | 38 00 00 00 */	li r0, 0x0
/* 813FECC8 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FECCC:
/* 813FECCC | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FECD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FECD4 | 41 82 00 10 */	beq .L_813FECE4
/* 813FECD8 | 4B FF E5 61 */	bl AOSSi_Free
/* 813FECDC | 38 00 00 00 */	li r0, 0x0
/* 813FECE0 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FECE4:
/* 813FECE4 | 38 60 FF FF */	li r3, -0x1
/* 813FECE8 | 48 00 10 64 */	b .L_813FFD4C
.L_813FECEC:
/* 813FECEC | 38 61 00 40 */	addi r3, r1, 0x40
/* 813FECF0 | 38 80 00 00 */	li r4, 0x0
/* 813FECF4 | 38 A0 00 08 */	li r5, 0x8
/* 813FECF8 | 4B F3 16 3D */	bl memset
/* 813FECFC | 3A C0 00 02 */	li r22, 0x2
/* 813FED00 | 9A C1 00 41 */	stb r22, 0x41(r1)
/* 813FED04 | 48 0B 53 61 */	bl SOGetHostID
/* 813FED08 | 90 61 00 44 */	stw r3, 0x44(r1)
/* 813FED0C | 38 60 57 90 */	li r3, 0x5790
/* 813FED10 | 48 0B 4E 69 */	bl SOHtoNs
/* 813FED14 | 3A E0 00 08 */	li r23, 0x8
/* 813FED18 | B0 61 00 42 */	sth r3, 0x42(r1)
/* 813FED1C | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FED20 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813FED24 | 9A E1 00 40 */	stb r23, 0x40(r1)
/* 813FED28 | 48 0B 44 D9 */	bl SOBind
/* 813FED2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FED30 | 40 80 00 44 */	bge .L_813FED74
/* 813FED34 | 38 00 00 0F */	li r0, 0xf
/* 813FED38 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FED3C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FED40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FED44 | 41 82 00 10 */	beq .L_813FED54
/* 813FED48 | 4B FF E4 F1 */	bl AOSSi_Free
/* 813FED4C | 38 00 00 00 */	li r0, 0x0
/* 813FED50 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FED54:
/* 813FED54 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FED58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FED5C | 41 82 00 10 */	beq .L_813FED6C
/* 813FED60 | 4B FF E4 D9 */	bl AOSSi_Free
/* 813FED64 | 38 00 00 00 */	li r0, 0x0
/* 813FED68 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FED6C:
/* 813FED6C | 38 60 FF FF */	li r3, -0x1
/* 813FED70 | 48 00 0F DC */	b .L_813FFD4C
.L_813FED74:
/* 813FED74 | 3C 60 10 62 */	lis r3, 0x1062
/* 813FED78 | 3C 80 81 0C */	lis r4, ATERM_810BDEF8@ha
/* 813FED7C | 38 03 4D D3 */	addi r0, r3, 0x4dd3
/* 813FED80 | 3C A0 C0 A8 */	lis r5, 0xc0a8
/* 813FED84 | 7F A0 A0 96 */	mulhw r29, r0, r20
/* 813FED88 | 3C 60 43 1C */	lis r3, 0x431c
/* 813FED8C | 38 05 0B 65 */	addi r0, r5, 0xb65
/* 813FED90 | AB E1 00 24 */	lha r31, 0x24(r1)
/* 813FED94 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 813FED98 | 3B 64 DE F8 */	addi r27, r4, ATERM_810BDEF8@l
/* 813FED9C | 38 05 0B 01 */	addi r0, r5, 0xb01
/* 813FEDA0 | 3B C3 DE 83 */	subi r30, r3, 0x217d
/* 813FEDA4 | 90 01 00 F8 */	stw r0, 0xf8(r1)
/* 813FEDA8 | 39 C0 00 11 */	li r14, 0x11
/* 813FEDAC | 3B 40 00 00 */	li r26, 0x0
/* 813FEDB0 | 3A A0 00 08 */	li r21, 0x8
/* 813FEDB4 | 3B 80 FF FF */	li r28, -0x1
/* 813FEDB8 | 3B 00 00 01 */	li r24, 0x1
.L_813FEDBC:
/* 813FEDBC | 82 2D AC 4C */	lwz r17, lbl_81698C8C@sda21(r0)
/* 813FEDC0 | 38 61 00 88 */	addi r3, r1, 0x88
/* 813FEDC4 | 38 80 00 00 */	li r4, 0x0
/* 813FEDC8 | 38 A0 00 14 */	li r5, 0x14
/* 813FEDCC | 4B F3 15 69 */	bl memset
/* 813FEDD0 | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 813FEDD4 | 90 01 00 98 */	stw r0, 0x98(r1)
/* 813FEDD8 | 80 01 00 F8 */	lwz r0, 0xf8(r1)
/* 813FEDDC | 90 01 00 88 */	stw r0, 0x88(r1)
.L_813FEDE0:
/* 813FEDE0 | 2C 13 00 01 */	cmpwi r19, 0x1
/* 813FEDE4 | 40 82 03 C8 */	bne .L_813FF1AC
/* 813FEDE8 | 88 1B 00 18 */	lbz r0, 0x18(r27)
/* 813FEDEC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FEDF0 | 41 82 03 BC */	beq .L_813FF1AC
/* 813FEDF4 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FEDF8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FEDFC | 41 82 00 08 */	beq .L_813FEE04
/* 813FEE00 | 48 0B 43 5D */	bl SOClose
.L_813FEE04:
/* 813FEE04 | 80 0D AC 48 */	lwz r0, lbl_81698C88@sda21(r0)
/* 813FEE08 | 93 8D 91 C0 */	stw r28, lbl_81697200@sda21(r0)
/* 813FEE0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FEE10 | 40 82 00 1C */	bne .L_813FEE2C
/* 813FEE14 | 93 4D AC 48 */	stw r26, lbl_81698C88@sda21(r0)
/* 813FEE18 | 48 0B 38 19 */	bl SOCleanup
/* 813FEE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEE20 | 40 80 00 0C */	bge .L_813FEE2C
/* 813FEE24 | 38 00 FF FF */	li r0, -0x1
/* 813FEE28 | 48 00 00 08 */	b .L_813FEE30
.L_813FEE2C:
/* 813FEE2C | 38 00 00 00 */	li r0, 0x0
.L_813FEE30:
/* 813FEE30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FEE34 | 41 82 00 44 */	beq .L_813FEE78
/* 813FEE38 | 38 00 00 0F */	li r0, 0xf
/* 813FEE3C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEE40 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEE44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEE48 | 41 82 00 10 */	beq .L_813FEE58
/* 813FEE4C | 4B FF E3 ED */	bl AOSSi_Free
/* 813FEE50 | 38 00 00 00 */	li r0, 0x0
/* 813FEE54 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEE58:
/* 813FEE58 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEE5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEE60 | 41 82 00 10 */	beq .L_813FEE70
/* 813FEE64 | 4B FF E3 D5 */	bl AOSSi_Free
/* 813FEE68 | 38 00 00 00 */	li r0, 0x0
/* 813FEE6C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEE70:
/* 813FEE70 | 38 60 FF FF */	li r3, -0x1
/* 813FEE74 | 48 00 0E D8 */	b .L_813FFD4C
.L_813FEE78:
/* 813FEE78 | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813FEE7C | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 813FEE80 | 7C 04 18 78 */	andc r4, r0, r3
/* 813FEE84 | 7C 05 18 38 */	and r5, r0, r3
/* 813FEE88 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813FEE8C | 7C A4 1B 38 */	orc r4, r5, r3
/* 813FEE90 | 7C A3 03 78 */	or r3, r5, r0
/* 813FEE94 | 7C 03 20 40 */	cmplw r3, r4
/* 813FEE98 | 41 80 00 08 */	blt .L_813FEEA0
/* 813FEE9C | 60 A3 00 01 */	ori r3, r5, 0x1
.L_813FEEA0:
/* 813FEEA0 | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 813FEEA4 | 38 C0 00 00 */	li r6, 0x0
/* 813FEEA8 | 80 BB 00 10 */	lwz r5, 0x10(r27)
/* 813FEEAC | 38 E0 00 00 */	li r7, 0x0
/* 813FEEB0 | 4B FF E3 D9 */	bl AOSSi_SetNCDIPAddr
/* 813FEEB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEEB8 | 41 82 00 4C */	beq .L_813FEF04
/* 813FEEBC | 38 60 00 0C */	li r3, 0xc
/* 813FEEC0 | 38 00 00 0F */	li r0, 0xf
/* 813FEEC4 | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
/* 813FEEC8 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEECC | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEED4 | 41 82 00 10 */	beq .L_813FEEE4
/* 813FEED8 | 4B FF E3 61 */	bl AOSSi_Free
/* 813FEEDC | 38 00 00 00 */	li r0, 0x0
/* 813FEEE0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEEE4:
/* 813FEEE4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEEE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEEEC | 41 82 00 10 */	beq .L_813FEEFC
/* 813FEEF0 | 4B FF E3 49 */	bl AOSSi_Free
/* 813FEEF4 | 38 00 00 00 */	li r0, 0x0
/* 813FEEF8 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEEFC:
/* 813FEEFC | 38 60 FF FF */	li r3, -0x1
/* 813FEF00 | 48 00 0E 4C */	b .L_813FFD4C
.L_813FEF04:
/* 813FEF04 | 9B 1B 00 18 */	stb r24, 0x18(r27)
/* 813FEF08 | 38 60 00 58 */	li r3, 0x58
/* 813FEF0C | 4B FF E3 09 */	bl AOSSi_Alloc
/* 813FEF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEF14 | 90 6D AC 34 */	stw r3, lbl_81698C74@sda21(r0)
/* 813FEF18 | 40 82 00 44 */	bne .L_813FEF5C
/* 813FEF1C | 38 00 00 0F */	li r0, 0xf
/* 813FEF20 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEF24 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEF28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEF2C | 41 82 00 10 */	beq .L_813FEF3C
/* 813FEF30 | 4B FF E3 09 */	bl AOSSi_Free
/* 813FEF34 | 38 00 00 00 */	li r0, 0x0
/* 813FEF38 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEF3C:
/* 813FEF3C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEF40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEF44 | 41 82 00 10 */	beq .L_813FEF54
/* 813FEF48 | 4B FF E2 F1 */	bl AOSSi_Free
/* 813FEF4C | 38 00 00 00 */	li r0, 0x0
/* 813FEF50 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEF54:
/* 813FEF54 | 38 60 FF FF */	li r3, -0x1
/* 813FEF58 | 48 00 0D F4 */	b .L_813FFD4C
.L_813FEF5C:
/* 813FEF5C | 38 80 00 00 */	li r4, 0x0
/* 813FEF60 | 38 A0 00 58 */	li r5, 0x58
/* 813FEF64 | 4B F3 13 D1 */	bl memset
/* 813FEF68 | AB 21 00 28 */	lha r25, 0x28(r1)
/* 813FEF6C | 3A 40 00 00 */	li r18, 0x0
/* 813FEF70 | 48 00 01 54 */	b .L_813FF0C4
.L_813FEF74:
/* 813FEF74 | 80 8D AC 34 */	lwz r4, lbl_81698C74@sda21(r0)
/* 813FEF78 | 38 61 00 B8 */	addi r3, r1, 0xb8
/* 813FEF7C | 48 00 31 51 */	bl ATERM_814020CC
/* 813FEF80 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FEF84 | 40 82 00 44 */	bne .L_813FEFC8
/* 813FEF88 | 38 00 00 0F */	li r0, 0xf
/* 813FEF8C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FEF90 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEF94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEF98 | 41 82 00 10 */	beq .L_813FEFA8
/* 813FEF9C | 4B FF E2 9D */	bl AOSSi_Free
/* 813FEFA0 | 38 00 00 00 */	li r0, 0x0
/* 813FEFA4 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FEFA8:
/* 813FEFA8 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FEFAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEFB0 | 41 82 00 10 */	beq .L_813FEFC0
/* 813FEFB4 | 4B FF E2 85 */	bl AOSSi_Free
/* 813FEFB8 | 38 00 00 00 */	li r0, 0x0
/* 813FEFBC | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FEFC0:
/* 813FEFC0 | 38 60 FF FF */	li r3, -0x1
/* 813FEFC4 | 48 00 0D 88 */	b .L_813FFD4C
.L_813FEFC8:
/* 813FEFC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FEFCC | 40 82 00 18 */	bne .L_813FEFE4
/* 813FEFD0 | 40 82 01 00 */	bne .L_813FF0D0
/* 813FEFD4 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FEFD8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813FEFDC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FEFE0 | 41 82 00 F0 */	beq .L_813FF0D0
.L_813FEFE4:
/* 813FEFE4 | A2 01 00 2A */	lhz r16, 0x2a(r1)
/* 813FEFE8 | 48 00 00 84 */	b .L_813FF06C
.L_813FEFEC:
/* 813FEFEC | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FEFF0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FEFF4 | 40 82 00 44 */	bne .L_813FF038
/* 813FEFF8 | 38 00 00 0F */	li r0, 0xf
/* 813FEFFC | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF000 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF008 | 41 82 00 10 */	beq .L_813FF018
/* 813FF00C | 4B FF E2 2D */	bl AOSSi_Free
/* 813FF010 | 38 00 00 00 */	li r0, 0x0
/* 813FF014 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF018:
/* 813FF018 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF01C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF020 | 41 82 00 10 */	beq .L_813FF030
/* 813FF024 | 4B FF E2 15 */	bl AOSSi_Free
/* 813FF028 | 38 00 00 00 */	li r0, 0x0
/* 813FF02C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF030:
/* 813FF030 | 38 60 FF FF */	li r3, -0x1
/* 813FF034 | 48 00 0D 18 */	b .L_813FFD4C
.L_813FF038:
/* 813FF038 | 28 10 00 64 */	cmplwi r16, 0x64
/* 813FF03C | 40 81 00 0C */	ble .L_813FF048
/* 813FF040 | 38 60 00 64 */	li r3, 0x64
/* 813FF044 | 48 00 00 08 */	b .L_813FF04C
.L_813FF048:
/* 813FF048 | 7E 03 83 78 */	mr r3, r16
.L_813FF04C:
/* 813FF04C | 4B FF E9 4D */	bl AOSSi_Sleep
/* 813FF050 | 28 10 00 64 */	cmplwi r16, 0x64
/* 813FF054 | 40 81 00 0C */	ble .L_813FF060
/* 813FF058 | 38 00 00 64 */	li r0, 0x64
/* 813FF05C | 48 00 00 08 */	b .L_813FF064
.L_813FF060:
/* 813FF060 | 7E 00 83 78 */	mr r0, r16
.L_813FF064:
/* 813FF064 | 7C 00 80 50 */	subf r0, r0, r16
/* 813FF068 | 54 10 04 3E */	clrlwi r16, r0, 16
.L_813FF06C:
/* 813FF06C | 2C 10 00 00 */	cmpwi r16, 0x0
/* 813FF070 | 40 82 FF 7C */	bne .L_813FEFEC
/* 813FF074 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FF078 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF07C | 40 82 00 44 */	bne .L_813FF0C0
/* 813FF080 | 38 00 00 0F */	li r0, 0xf
/* 813FF084 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF088 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF08C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF090 | 41 82 00 10 */	beq .L_813FF0A0
/* 813FF094 | 4B FF E1 A5 */	bl AOSSi_Free
/* 813FF098 | 38 00 00 00 */	li r0, 0x0
/* 813FF09C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF0A0:
/* 813FF0A0 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF0A8 | 41 82 00 10 */	beq .L_813FF0B8
/* 813FF0AC | 4B FF E1 8D */	bl AOSSi_Free
/* 813FF0B0 | 38 00 00 00 */	li r0, 0x0
/* 813FF0B4 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF0B8:
/* 813FF0B8 | 38 60 FF FF */	li r3, -0x1
/* 813FF0BC | 48 00 0C 90 */	b .L_813FFD4C
.L_813FF0C0:
/* 813FF0C0 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_813FF0C4:
/* 813FF0C4 | 7E 40 07 34 */	extsh r0, r18
/* 813FF0C8 | 7C 00 C8 00 */	cmpw r0, r25
/* 813FF0CC | 41 80 FE A8 */	blt .L_813FEF74
.L_813FF0D0:
/* 813FF0D0 | 38 60 00 02 */	li r3, 0x2
/* 813FF0D4 | 38 80 00 02 */	li r4, 0x2
/* 813FF0D8 | 38 A0 00 00 */	li r5, 0x0
/* 813FF0DC | 48 0B 3F 91 */	bl SOSocket
/* 813FF0E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF0E4 | 90 6D 91 C0 */	stw r3, lbl_81697200@sda21(r0)
/* 813FF0E8 | 40 80 00 44 */	bge .L_813FF12C
/* 813FF0EC | 38 00 00 0F */	li r0, 0xf
/* 813FF0F0 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF0F4 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF0F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF0FC | 41 82 00 10 */	beq .L_813FF10C
/* 813FF100 | 4B FF E1 39 */	bl AOSSi_Free
/* 813FF104 | 38 00 00 00 */	li r0, 0x0
/* 813FF108 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF10C:
/* 813FF10C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF114 | 41 82 00 10 */	beq .L_813FF124
/* 813FF118 | 4B FF E1 21 */	bl AOSSi_Free
/* 813FF11C | 38 00 00 00 */	li r0, 0x0
/* 813FF120 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF124:
/* 813FF124 | 38 60 FF FF */	li r3, -0x1
/* 813FF128 | 48 00 0C 24 */	b .L_813FFD4C
.L_813FF12C:
/* 813FF12C | 38 61 00 40 */	addi r3, r1, 0x40
/* 813FF130 | 38 80 00 00 */	li r4, 0x0
/* 813FF134 | 38 A0 00 08 */	li r5, 0x8
/* 813FF138 | 4B F3 11 FD */	bl memset
/* 813FF13C | 9A C1 00 41 */	stb r22, 0x41(r1)
/* 813FF140 | 48 0B 4F 25 */	bl SOGetHostID
/* 813FF144 | 90 61 00 44 */	stw r3, 0x44(r1)
/* 813FF148 | 38 60 57 90 */	li r3, 0x5790
/* 813FF14C | 48 0B 4A 2D */	bl SOHtoNs
/* 813FF150 | B0 61 00 42 */	sth r3, 0x42(r1)
/* 813FF154 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813FF158 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FF15C | 9A E1 00 40 */	stb r23, 0x40(r1)
/* 813FF160 | 48 0B 40 A1 */	bl SOBind
/* 813FF164 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF168 | 40 80 00 44 */	bge .L_813FF1AC
/* 813FF16C | 38 00 00 0F */	li r0, 0xf
/* 813FF170 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF174 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF17C | 41 82 00 10 */	beq .L_813FF18C
/* 813FF180 | 4B FF E0 B9 */	bl AOSSi_Free
/* 813FF184 | 38 00 00 00 */	li r0, 0x0
/* 813FF188 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF18C:
/* 813FF18C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF194 | 41 82 00 10 */	beq .L_813FF1A4
/* 813FF198 | 4B FF E0 A1 */	bl AOSSi_Free
/* 813FF19C | 38 00 00 00 */	li r0, 0x0
/* 813FF1A0 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF1A4:
/* 813FF1A4 | 38 60 FF FF */	li r3, -0x1
/* 813FF1A8 | 48 00 0B A4 */	b .L_813FFD4C
.L_813FF1AC:
/* 813FF1AC | 2C 13 00 01 */	cmpwi r19, 0x1
/* 813FF1B0 | 82 0D 91 C0 */	lwz r16, lbl_81697200@sda21(r0)
/* 813FF1B4 | 41 82 00 4C */	beq .L_813FF200
/* 813FF1B8 | 40 80 00 10 */	bge .L_813FF1C8
/* 813FF1BC | 2C 13 00 00 */	cmpwi r19, 0x0
/* 813FF1C0 | 40 80 00 14 */	bge .L_813FF1D4
/* 813FF1C4 | 48 00 01 80 */	b .L_813FF344
.L_813FF1C8:
/* 813FF1C8 | 2C 13 00 03 */	cmpwi r19, 0x3
/* 813FF1CC | 40 80 01 78 */	bge .L_813FF344
/* 813FF1D0 | 48 00 00 60 */	b .L_813FF230
.L_813FF1D4:
/* 813FF1D4 | 80 0D 91 CC */	lwz r0, lbl_8169720C@sda21(r0)
/* 813FF1D8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FF1DC | 41 82 00 10 */	beq .L_813FF1EC
/* 813FF1E0 | 92 CD 91 CC */	stw r22, lbl_8169720C@sda21(r0)
/* 813FF1E4 | 38 60 00 02 */	li r3, 0x2
/* 813FF1E8 | 4B FF E7 B5 */	bl AOSSi_Status
.L_813FF1EC:
/* 813FF1EC | 7E 05 83 78 */	mr r5, r16
/* 813FF1F0 | 38 61 00 88 */	addi r3, r1, 0x88
/* 813FF1F4 | 38 81 00 A0 */	addi r4, r1, 0xa0
/* 813FF1F8 | 48 00 23 7D */	bl ATERM_81401574
/* 813FF1FC | 48 00 01 4C */	b .L_813FF348
.L_813FF200:
/* 813FF200 | 80 0D 91 CC */	lwz r0, lbl_8169720C@sda21(r0)
/* 813FF204 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813FF208 | 41 82 00 14 */	beq .L_813FF21C
/* 813FF20C | 38 00 00 03 */	li r0, 0x3
/* 813FF210 | 38 60 00 03 */	li r3, 0x3
/* 813FF214 | 90 0D 91 CC */	stw r0, lbl_8169720C@sda21(r0)
/* 813FF218 | 4B FF E7 85 */	bl AOSSi_Status
.L_813FF21C:
/* 813FF21C | 7E 05 83 78 */	mr r5, r16
/* 813FF220 | 38 61 00 88 */	addi r3, r1, 0x88
/* 813FF224 | 38 81 00 A0 */	addi r4, r1, 0xa0
/* 813FF228 | 48 00 25 51 */	bl ATERM_81401778
/* 813FF22C | 48 00 01 1C */	b .L_813FF348
.L_813FF230:
/* 813FF230 | 80 0D 91 CC */	lwz r0, lbl_8169720C@sda21(r0)
/* 813FF234 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813FF238 | 41 82 00 14 */	beq .L_813FF24C
/* 813FF23C | 38 00 00 05 */	li r0, 0x5
/* 813FF240 | 38 60 00 05 */	li r3, 0x5
/* 813FF244 | 90 0D 91 CC */	stw r0, lbl_8169720C@sda21(r0)
/* 813FF248 | 4B FF E7 55 */	bl AOSSi_Status
.L_813FF24C:
/* 813FF24C | 82 4D AC 4C */	lwz r18, lbl_81698C8C@sda21(r0)
/* 813FF250 | 38 80 00 00 */	li r4, 0x0
/* 813FF254 | 38 A0 05 DC */	li r5, 0x5dc
/* 813FF258 | 7E 43 93 78 */	mr r3, r18
/* 813FF25C | 4B F3 10 D9 */	bl memset
/* 813FF260 | 38 61 00 38 */	addi r3, r1, 0x38
/* 813FF264 | 38 81 00 B0 */	addi r4, r1, 0xb0
/* 813FF268 | 38 A0 00 08 */	li r5, 0x8
/* 813FF26C | 4B F3 0F C5 */	bl memcpy
/* 813FF270 | 38 6D 91 C4 */	li r3, lbl_81697204@sda21
/* 813FF274 | 48 1F 9C 89 */	bl strlen
/* 813FF278 | 7C 66 1B 78 */	mr r6, r3
/* 813FF27C | 38 61 00 38 */	addi r3, r1, 0x38
/* 813FF280 | 38 80 00 08 */	li r4, 0x8
/* 813FF284 | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 813FF288 | 48 00 2B F9 */	bl ATERM_81401E80
/* 813FF28C | 38 60 00 01 */	li r3, 0x1
/* 813FF290 | 48 0B 48 E9 */	bl SOHtoNs
/* 813FF294 | B0 72 00 00 */	sth r3, 0x0(r18)
/* 813FF298 | 38 60 30 00 */	li r3, 0x3000
/* 813FF29C | B3 52 00 02 */	sth r26, 0x2(r18)
/* 813FF2A0 | B3 52 00 04 */	sth r26, 0x4(r18)
/* 813FF2A4 | 48 0B 48 D5 */	bl SOHtoNs
/* 813FF2A8 | B0 72 00 06 */	sth r3, 0x6(r18)
/* 813FF2AC | 38 60 00 00 */	li r3, 0x0
/* 813FF2B0 | B3 52 00 08 */	sth r26, 0x8(r18)
/* 813FF2B4 | 48 0B 48 C5 */	bl SOHtoNs
/* 813FF2B8 | B0 72 00 0A */	sth r3, 0xa(r18)
/* 813FF2BC | 38 60 00 00 */	li r3, 0x0
/* 813FF2C0 | 48 0B 48 B9 */	bl SOHtoNs
/* 813FF2C4 | B0 72 00 0C */	sth r3, 0xc(r18)
/* 813FF2C8 | 38 00 00 00 */	li r0, 0x0
/* 813FF2CC | 38 72 00 10 */	addi r3, r18, 0x10
/* 813FF2D0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 813FF2D4 | 98 12 00 0E */	stb r0, 0xe(r18)
/* 813FF2D8 | 38 A0 00 08 */	li r5, 0x8
/* 813FF2DC | 99 D2 00 0F */	stb r14, 0xf(r18)
/* 813FF2E0 | 4B F3 0F 51 */	bl memcpy
/* 813FF2E4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813FF2E8 | 38 80 00 00 */	li r4, 0x0
/* 813FF2EC | 38 A0 00 08 */	li r5, 0x8
/* 813FF2F0 | 4B F3 10 45 */	bl memset
/* 813FF2F4 | 9A C1 00 31 */	stb r22, 0x31(r1)
/* 813FF2F8 | 38 60 57 90 */	li r3, 0x5790
/* 813FF2FC | 48 0B 48 7D */	bl SOHtoNs
/* 813FF300 | B0 61 00 32 */	sth r3, 0x32(r1)
/* 813FF304 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 813FF308 | 48 0B 48 6D */	bl SOHtoNl
/* 813FF30C | 88 1B 00 18 */	lbz r0, 0x18(r27)
/* 813FF310 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 813FF314 | 7C 00 07 75 */	extsb. r0, r0
/* 813FF318 | 40 82 00 08 */	bne .L_813FF320
/* 813FF31C | 93 81 00 34 */	stw r28, 0x34(r1)
.L_813FF320:
/* 813FF320 | 9A A1 00 30 */	stb r21, 0x30(r1)
/* 813FF324 | 7E 03 83 78 */	mr r3, r16
/* 813FF328 | 7E 44 93 78 */	mr r4, r18
/* 813FF32C | 38 E1 00 30 */	addi r7, r1, 0x30
/* 813FF330 | 38 A0 00 18 */	li r5, 0x18
/* 813FF334 | 38 C0 00 00 */	li r6, 0x0
/* 813FF338 | 48 0B 42 05 */	bl SOSendTo
/* 813FF33C | 38 60 00 00 */	li r3, 0x0
/* 813FF340 | 48 00 00 08 */	b .L_813FF348
.L_813FF344:
/* 813FF344 | 38 60 FF FF */	li r3, -0x1
.L_813FF348:
/* 813FF348 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FF34C | 40 82 00 4C */	bne .L_813FF398
/* 813FF350 | 38 73 10 00 */	addi r3, r19, 0x1000
/* 813FF354 | 38 00 00 0F */	li r0, 0xf
/* 813FF358 | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
/* 813FF35C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF360 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF368 | 41 82 00 10 */	beq .L_813FF378
/* 813FF36C | 4B FF DE CD */	bl AOSSi_Free
/* 813FF370 | 38 00 00 00 */	li r0, 0x0
/* 813FF374 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF378:
/* 813FF378 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF380 | 41 82 00 10 */	beq .L_813FF390
/* 813FF384 | 4B FF DE B5 */	bl AOSSi_Free
/* 813FF388 | 38 00 00 00 */	li r0, 0x0
/* 813FF38C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF390:
/* 813FF390 | 38 60 FF FF */	li r3, -0x1
/* 813FF394 | 48 00 09 B8 */	b .L_813FFD4C
.L_813FF398:
/* 813FF398 | 7E 23 8B 78 */	mr r3, r17
/* 813FF39C | 38 80 00 00 */	li r4, 0x0
/* 813FF3A0 | 38 A0 05 F8 */	li r5, 0x5f8
/* 813FF3A4 | 4B F3 0F 91 */	bl memset
/* 813FF3A8 | 7F A5 36 70 */	srawi r5, r29, 6
/* 813FF3AC | 80 0D 91 C0 */	lwz r0, lbl_81697200@sda21(r0)
/* 813FF3B0 | 7F A3 36 70 */	srawi r3, r29, 6
/* 813FF3B4 | 93 01 00 74 */	stw r24, 0x74(r1)
/* 813FF3B8 | 54 64 0F FE */	srwi r4, r3, 31
/* 813FF3BC | 54 A7 0F FE */	srwi r7, r5, 31
/* 813FF3C0 | 7C 63 22 14 */	add r3, r3, r4
/* 813FF3C4 | 90 01 00 70 */	stw r0, 0x70(r1)
/* 813FF3C8 | 7D 05 3A 14 */	add r8, r5, r7
/* 813FF3CC | 3C A0 80 00 */	lis r5, 0x8000
/* 813FF3D0 | 1C C3 03 E8 */	mulli r6, r3, 0x3e8
/* 813FF3D4 | 93 41 00 78 */	stw r26, 0x78(r1)
/* 813FF3D8 | 38 61 00 70 */	addi r3, r1, 0x70
/* 813FF3DC | 80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 813FF3E0 | 38 80 00 01 */	li r4, 0x1
/* 813FF3E4 | 7C E6 A0 50 */	subf r7, r6, r20
/* 813FF3E8 | 54 A6 F0 BE */	srwi r6, r5, 2
/* 813FF3EC | 90 01 00 7C */	stw r0, 0x7c(r1)
/* 813FF3F0 | 7C BE 30 16 */	mulhwu r5, r30, r6
/* 813FF3F4 | 93 41 00 84 */	stw r26, 0x84(r1)
/* 813FF3F8 | 93 01 00 80 */	stw r24, 0x80(r1)
/* 813FF3FC | 1C E7 03 E8 */	mulli r7, r7, 0x3e8
/* 813FF400 | 91 01 00 60 */	stw r8, 0x60(r1)
/* 813FF404 | 54 A0 8B FE */	srwi r0, r5, 15
/* 813FF408 | 7C A8 31 D6 */	mullw r5, r8, r6
/* 813FF40C | 90 E1 00 64 */	stw r7, 0x64(r1)
/* 813FF410 | 7C 07 01 D6 */	mullw r0, r7, r0
/* 813FF414 | 7C DA 28 14 */	addc r6, r26, r5
/* 813FF418 | 7C BA D1 14 */	adde r5, r26, r26
/* 813FF41C | 54 00 E8 FE */	srwi r0, r0, 3
/* 813FF420 | 7C C6 00 14 */	addc r6, r6, r0
/* 813FF424 | 7C A5 D1 14 */	adde r5, r5, r26
/* 813FF428 | 48 0B 43 45 */	bl SOPoll
/* 813FF42C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF430 | 41 81 01 2C */	bgt .L_813FF55C
/* 813FF434 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 813FF438 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813FF43C | 7C 00 F8 00 */	cmpw r0, r31
/* 813FF440 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813FF444 | 40 81 00 3C */	ble .L_813FF480
/* 813FF448 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 813FF44C | 40 82 00 10 */	bne .L_813FF45C
/* 813FF450 | 38 00 00 0F */	li r0, 0xf
/* 813FF454 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 813FF458 | 48 00 00 20 */	b .L_813FF478
.L_813FF45C:
/* 813FF45C | 2C 13 00 01 */	cmpwi r19, 0x1
/* 813FF460 | 40 82 00 10 */	bne .L_813FF470
/* 813FF464 | 38 00 00 10 */	li r0, 0x10
/* 813FF468 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 813FF46C | 48 00 00 0C */	b .L_813FF478
.L_813FF470:
/* 813FF470 | 38 00 00 11 */	li r0, 0x11
/* 813FF474 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
.L_813FF478:
/* 813FF478 | 39 C0 FF FF */	li r14, -0x1
/* 813FF47C | 48 00 07 48 */	b .L_813FFBC4
.L_813FF480:
/* 813FF480 | A2 01 00 26 */	lhz r16, 0x26(r1)
/* 813FF484 | 48 00 00 84 */	b .L_813FF508
.L_813FF488:
/* 813FF488 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FF48C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF490 | 40 82 00 44 */	bne .L_813FF4D4
/* 813FF494 | 38 00 00 0F */	li r0, 0xf
/* 813FF498 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF49C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF4A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF4A4 | 41 82 00 10 */	beq .L_813FF4B4
/* 813FF4A8 | 4B FF DD 91 */	bl AOSSi_Free
/* 813FF4AC | 38 00 00 00 */	li r0, 0x0
/* 813FF4B0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF4B4:
/* 813FF4B4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF4B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF4BC | 41 82 00 10 */	beq .L_813FF4CC
/* 813FF4C0 | 4B FF DD 79 */	bl AOSSi_Free
/* 813FF4C4 | 38 00 00 00 */	li r0, 0x0
/* 813FF4C8 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF4CC:
/* 813FF4CC | 38 60 FF FF */	li r3, -0x1
/* 813FF4D0 | 48 00 08 7C */	b .L_813FFD4C
.L_813FF4D4:
/* 813FF4D4 | 28 10 00 64 */	cmplwi r16, 0x64
/* 813FF4D8 | 40 81 00 0C */	ble .L_813FF4E4
/* 813FF4DC | 38 60 00 64 */	li r3, 0x64
/* 813FF4E0 | 48 00 00 08 */	b .L_813FF4E8
.L_813FF4E4:
/* 813FF4E4 | 7E 03 83 78 */	mr r3, r16
.L_813FF4E8:
/* 813FF4E8 | 4B FF E4 B1 */	bl AOSSi_Sleep
/* 813FF4EC | 28 10 00 64 */	cmplwi r16, 0x64
/* 813FF4F0 | 40 81 00 0C */	ble .L_813FF4FC
/* 813FF4F4 | 38 00 00 64 */	li r0, 0x64
/* 813FF4F8 | 48 00 00 08 */	b .L_813FF500
.L_813FF4FC:
/* 813FF4FC | 7E 00 83 78 */	mr r0, r16
.L_813FF500:
/* 813FF500 | 7C 00 80 50 */	subf r0, r0, r16
/* 813FF504 | 54 10 04 3E */	clrlwi r16, r0, 16
.L_813FF508:
/* 813FF508 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 813FF50C | 40 82 FF 7C */	bne .L_813FF488
/* 813FF510 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FF514 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF518 | 40 82 F8 C8 */	bne .L_813FEDE0
/* 813FF51C | 38 00 00 0F */	li r0, 0xf
/* 813FF520 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF524 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF52C | 41 82 00 10 */	beq .L_813FF53C
/* 813FF530 | 4B FF DD 09 */	bl AOSSi_Free
/* 813FF534 | 38 00 00 00 */	li r0, 0x0
/* 813FF538 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF53C:
/* 813FF53C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF544 | 41 82 00 10 */	beq .L_813FF554
/* 813FF548 | 4B FF DC F1 */	bl AOSSi_Free
/* 813FF54C | 38 00 00 00 */	li r0, 0x0
/* 813FF550 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF554:
/* 813FF554 | 38 60 FF FF */	li r3, -0x1
/* 813FF558 | 48 00 07 F4 */	b .L_813FFD4C
.L_813FF55C:
/* 813FF55C | 38 00 00 08 */	li r0, 0x8
/* 813FF560 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FF564 | 98 01 00 68 */	stb r0, 0x68(r1)
/* 813FF568 | 38 91 00 0C */	addi r4, r17, 0xc
/* 813FF56C | 38 E1 00 68 */	addi r7, r1, 0x68
/* 813FF570 | 38 A0 05 DC */	li r5, 0x5dc
/* 813FF574 | 38 C0 00 00 */	li r6, 0x0
/* 813FF578 | 48 0B 3F 55 */	bl SORecvFrom
/* 813FF57C | 80 0D 91 C0 */	lwz r0, lbl_81697200@sda21(r0)
/* 813FF580 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 813FF584 | 90 11 00 00 */	stw r0, 0x0(r17)
/* 813FF588 | 48 0B 45 E5 */	bl SONtoHs
/* 813FF58C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 813FF590 | 7E 63 9B 78 */	mr r3, r19
/* 813FF594 | 90 11 00 04 */	stw r0, 0x4(r17)
/* 813FF598 | 7E 24 8B 78 */	mr r4, r17
/* 813FF59C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813FF5A0 | 38 C1 00 A0 */	addi r6, r1, 0xa0
/* 813FF5A4 | 80 ED 91 C0 */	lwz r7, lbl_81697200@sda21(r0)
/* 813FF5A8 | 48 00 0C 0D */	bl ATERM_814001B4
/* 813FF5AC | 2C 03 00 64 */	cmpwi r3, 0x64
/* 813FF5B0 | 7C 70 1B 78 */	mr r16, r3
/* 813FF5B4 | 40 82 00 0C */	bne .L_813FF5C0
/* 813FF5B8 | 39 C0 00 00 */	li r14, 0x0
/* 813FF5BC | 48 00 06 08 */	b .L_813FFBC4
.L_813FF5C0:
/* 813FF5C0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FF5C4 | 40 82 00 0C */	bne .L_813FF5D0
/* 813FF5C8 | 39 C0 FF FF */	li r14, -0x1
/* 813FF5CC | 48 00 05 F8 */	b .L_813FFBC4
.L_813FF5D0:
/* 813FF5D0 | 7C 13 18 00 */	cmpw r19, r3
/* 813FF5D4 | 41 82 04 C8 */	beq .L_813FFA9C
/* 813FF5D8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813FF5DC | 40 82 04 B8 */	bne .L_813FFA94
/* 813FF5E0 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FF5E4 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FF5E8 | 41 82 00 08 */	beq .L_813FF5F0
/* 813FF5EC | 48 0B 3B 71 */	bl SOClose
.L_813FF5F0:
/* 813FF5F0 | 80 0D AC 48 */	lwz r0, lbl_81698C88@sda21(r0)
/* 813FF5F4 | 93 8D 91 C0 */	stw r28, lbl_81697200@sda21(r0)
/* 813FF5F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF5FC | 40 82 00 1C */	bne .L_813FF618
/* 813FF600 | 93 4D AC 48 */	stw r26, lbl_81698C88@sda21(r0)
/* 813FF604 | 48 0B 30 2D */	bl SOCleanup
/* 813FF608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF60C | 40 80 00 0C */	bge .L_813FF618
/* 813FF610 | 38 00 FF FF */	li r0, -0x1
/* 813FF614 | 48 00 00 08 */	b .L_813FF61C
.L_813FF618:
/* 813FF618 | 38 00 00 00 */	li r0, 0x0
.L_813FF61C:
/* 813FF61C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FF620 | 41 82 00 44 */	beq .L_813FF664
/* 813FF624 | 38 00 00 0F */	li r0, 0xf
/* 813FF628 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF62C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF634 | 41 82 00 10 */	beq .L_813FF644
/* 813FF638 | 4B FF DC 01 */	bl AOSSi_Free
/* 813FF63C | 38 00 00 00 */	li r0, 0x0
/* 813FF640 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF644:
/* 813FF644 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF64C | 41 82 00 10 */	beq .L_813FF65C
/* 813FF650 | 4B FF DB E9 */	bl AOSSi_Free
/* 813FF654 | 38 00 00 00 */	li r0, 0x0
/* 813FF658 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF65C:
/* 813FF65C | 38 60 FF FF */	li r3, -0x1
/* 813FF660 | 48 00 06 EC */	b .L_813FFD4C
.L_813FF664:
/* 813FF664 | 80 0D 91 CC */	lwz r0, lbl_8169720C@sda21(r0)
/* 813FF668 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813FF66C | 41 82 00 14 */	beq .L_813FF680
/* 813FF670 | 38 00 00 04 */	li r0, 0x4
/* 813FF674 | 38 60 00 04 */	li r3, 0x4
/* 813FF678 | 90 0D 91 CC */	stw r0, lbl_8169720C@sda21(r0)
/* 813FF67C | 4B FF E3 21 */	bl AOSSi_Status
.L_813FF680:
/* 813FF680 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF688 | 41 82 00 0C */	beq .L_813FF694
/* 813FF68C | 4B FF DB AD */	bl AOSSi_Free
/* 813FF690 | 93 4D AC 30 */	stw r26, lbl_81698C70@sda21(r0)
.L_813FF694:
/* 813FF694 | 38 6D AC 30 */	li r3, lbl_81698C70@sda21
/* 813FF698 | 4B FF DD 09 */	bl AOSSi_WLANGetBSSList
/* 813FF69C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FF6A0 | 40 82 00 44 */	bne .L_813FF6E4
/* 813FF6A4 | 38 00 00 0F */	li r0, 0xf
/* 813FF6A8 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF6AC | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF6B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF6B4 | 41 82 00 10 */	beq .L_813FF6C4
/* 813FF6B8 | 4B FF DB 81 */	bl AOSSi_Free
/* 813FF6BC | 38 00 00 00 */	li r0, 0x0
/* 813FF6C0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF6C4:
/* 813FF6C4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF6CC | 41 82 00 10 */	beq .L_813FF6DC
/* 813FF6D0 | 4B FF DB 69 */	bl AOSSi_Free
/* 813FF6D4 | 38 00 00 00 */	li r0, 0x0
/* 813FF6D8 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF6DC:
/* 813FF6DC | 38 60 FF FF */	li r3, -0x1
/* 813FF6E0 | 48 00 06 6C */	b .L_813FFD4C
.L_813FF6E4:
/* 813FF6E4 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FF6E8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF6EC | 40 82 00 44 */	bne .L_813FF730
/* 813FF6F0 | 38 00 00 0F */	li r0, 0xf
/* 813FF6F4 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF6F8 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF6FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF700 | 41 82 00 10 */	beq .L_813FF710
/* 813FF704 | 4B FF DB 35 */	bl AOSSi_Free
/* 813FF708 | 38 00 00 00 */	li r0, 0x0
/* 813FF70C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF710:
/* 813FF710 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF718 | 41 82 00 10 */	beq .L_813FF728
/* 813FF71C | 4B FF DB 1D */	bl AOSSi_Free
/* 813FF720 | 38 00 00 00 */	li r0, 0x0
/* 813FF724 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF728:
/* 813FF728 | 38 60 FF FF */	li r3, -0x1
/* 813FF72C | 48 00 06 20 */	b .L_813FFD4C
.L_813FF730:
/* 813FF730 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF734 | 48 00 09 A1 */	bl ATERM_814000D4
/* 813FF738 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813FF73C | 40 82 00 44 */	bne .L_813FF780
/* 813FF740 | 38 00 00 02 */	li r0, 0x2
/* 813FF744 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF748 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF74C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF750 | 41 82 00 10 */	beq .L_813FF760
/* 813FF754 | 4B FF DA E5 */	bl AOSSi_Free
/* 813FF758 | 38 00 00 00 */	li r0, 0x0
/* 813FF75C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF760:
/* 813FF760 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF764 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF768 | 41 82 00 10 */	beq .L_813FF778
/* 813FF76C | 4B FF DA CD */	bl AOSSi_Free
/* 813FF770 | 38 00 00 00 */	li r0, 0x0
/* 813FF774 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF778:
/* 813FF778 | 38 60 FF FF */	li r3, -0x1
/* 813FF77C | 48 00 05 D0 */	b .L_813FFD4C
.L_813FF780:
/* 813FF780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF784 | 41 82 00 44 */	beq .L_813FF7C8
/* 813FF788 | 38 00 00 01 */	li r0, 0x1
/* 813FF78C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF790 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF798 | 41 82 00 10 */	beq .L_813FF7A8
/* 813FF79C | 4B FF DA 9D */	bl AOSSi_Free
/* 813FF7A0 | 38 00 00 00 */	li r0, 0x0
/* 813FF7A4 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF7A8:
/* 813FF7A8 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF7AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF7B0 | 41 82 00 10 */	beq .L_813FF7C0
/* 813FF7B4 | 4B FF DA 85 */	bl AOSSi_Free
/* 813FF7B8 | 38 00 00 00 */	li r0, 0x0
/* 813FF7BC | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF7C0:
/* 813FF7C0 | 38 60 FF FF */	li r3, -0x1
/* 813FF7C4 | 48 00 05 88 */	b .L_813FFD4C
.L_813FF7C8:
/* 813FF7C8 | 38 60 00 58 */	li r3, 0x58
/* 813FF7CC | 4B FF DA 49 */	bl AOSSi_Alloc
/* 813FF7D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF7D4 | 90 6D AC 34 */	stw r3, lbl_81698C74@sda21(r0)
/* 813FF7D8 | 40 82 00 44 */	bne .L_813FF81C
/* 813FF7DC | 38 00 00 0F */	li r0, 0xf
/* 813FF7E0 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF7E4 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF7E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF7EC | 41 82 00 10 */	beq .L_813FF7FC
/* 813FF7F0 | 4B FF DA 49 */	bl AOSSi_Free
/* 813FF7F4 | 38 00 00 00 */	li r0, 0x0
/* 813FF7F8 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF7FC:
/* 813FF7FC | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF804 | 41 82 00 10 */	beq .L_813FF814
/* 813FF808 | 4B FF DA 31 */	bl AOSSi_Free
/* 813FF80C | 38 00 00 00 */	li r0, 0x0
/* 813FF810 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF814:
/* 813FF814 | 38 60 FF FF */	li r3, -0x1
/* 813FF818 | 48 00 05 34 */	b .L_813FFD4C
.L_813FF81C:
/* 813FF81C | 38 80 00 00 */	li r4, 0x0
/* 813FF820 | 38 A0 00 58 */	li r5, 0x58
/* 813FF824 | 4B F3 0B 11 */	bl memset
/* 813FF828 | AA 61 00 28 */	lha r19, 0x28(r1)
/* 813FF82C | 3A 40 00 00 */	li r18, 0x0
/* 813FF830 | 48 00 01 54 */	b .L_813FF984
.L_813FF834:
/* 813FF834 | 80 8D AC 34 */	lwz r4, lbl_81698C74@sda21(r0)
/* 813FF838 | 38 61 00 B8 */	addi r3, r1, 0xb8
/* 813FF83C | 48 00 28 91 */	bl ATERM_814020CC
/* 813FF840 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FF844 | 40 82 00 44 */	bne .L_813FF888
/* 813FF848 | 38 00 00 0F */	li r0, 0xf
/* 813FF84C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF850 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF854 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF858 | 41 82 00 10 */	beq .L_813FF868
/* 813FF85C | 4B FF D9 DD */	bl AOSSi_Free
/* 813FF860 | 38 00 00 00 */	li r0, 0x0
/* 813FF864 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF868:
/* 813FF868 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF86C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF870 | 41 82 00 10 */	beq .L_813FF880
/* 813FF874 | 4B FF D9 C5 */	bl AOSSi_Free
/* 813FF878 | 38 00 00 00 */	li r0, 0x0
/* 813FF87C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF880:
/* 813FF880 | 38 60 FF FF */	li r3, -0x1
/* 813FF884 | 48 00 04 C8 */	b .L_813FFD4C
.L_813FF888:
/* 813FF888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF88C | 40 82 00 18 */	bne .L_813FF8A4
/* 813FF890 | 40 82 01 00 */	bne .L_813FF990
/* 813FF894 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF898 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813FF89C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FF8A0 | 41 82 00 F0 */	beq .L_813FF990
.L_813FF8A4:
/* 813FF8A4 | A2 21 00 2A */	lhz r17, 0x2a(r1)
/* 813FF8A8 | 48 00 00 84 */	b .L_813FF92C
.L_813FF8AC:
/* 813FF8AC | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FF8B0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF8B4 | 40 82 00 44 */	bne .L_813FF8F8
/* 813FF8B8 | 38 00 00 0F */	li r0, 0xf
/* 813FF8BC | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF8C0 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF8C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF8C8 | 41 82 00 10 */	beq .L_813FF8D8
/* 813FF8CC | 4B FF D9 6D */	bl AOSSi_Free
/* 813FF8D0 | 38 00 00 00 */	li r0, 0x0
/* 813FF8D4 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF8D8:
/* 813FF8D8 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF8DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF8E0 | 41 82 00 10 */	beq .L_813FF8F0
/* 813FF8E4 | 4B FF D9 55 */	bl AOSSi_Free
/* 813FF8E8 | 38 00 00 00 */	li r0, 0x0
/* 813FF8EC | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF8F0:
/* 813FF8F0 | 38 60 FF FF */	li r3, -0x1
/* 813FF8F4 | 48 00 04 58 */	b .L_813FFD4C
.L_813FF8F8:
/* 813FF8F8 | 28 11 00 64 */	cmplwi r17, 0x64
/* 813FF8FC | 40 81 00 0C */	ble .L_813FF908
/* 813FF900 | 38 60 00 64 */	li r3, 0x64
/* 813FF904 | 48 00 00 08 */	b .L_813FF90C
.L_813FF908:
/* 813FF908 | 7E 23 8B 78 */	mr r3, r17
.L_813FF90C:
/* 813FF90C | 4B FF E0 8D */	bl AOSSi_Sleep
/* 813FF910 | 28 11 00 64 */	cmplwi r17, 0x64
/* 813FF914 | 40 81 00 0C */	ble .L_813FF920
/* 813FF918 | 38 00 00 64 */	li r0, 0x64
/* 813FF91C | 48 00 00 08 */	b .L_813FF924
.L_813FF920:
/* 813FF920 | 7E 20 8B 78 */	mr r0, r17
.L_813FF924:
/* 813FF924 | 7C 00 88 50 */	subf r0, r0, r17
/* 813FF928 | 54 11 04 3E */	clrlwi r17, r0, 16
.L_813FF92C:
/* 813FF92C | 2C 11 00 00 */	cmpwi r17, 0x0
/* 813FF930 | 40 82 FF 7C */	bne .L_813FF8AC
/* 813FF934 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FF938 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FF93C | 40 82 00 44 */	bne .L_813FF980
/* 813FF940 | 38 00 00 0F */	li r0, 0xf
/* 813FF944 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF948 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF94C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF950 | 41 82 00 10 */	beq .L_813FF960
/* 813FF954 | 4B FF D8 E5 */	bl AOSSi_Free
/* 813FF958 | 38 00 00 00 */	li r0, 0x0
/* 813FF95C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF960:
/* 813FF960 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF968 | 41 82 00 10 */	beq .L_813FF978
/* 813FF96C | 4B FF D8 CD */	bl AOSSi_Free
/* 813FF970 | 38 00 00 00 */	li r0, 0x0
/* 813FF974 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FF978:
/* 813FF978 | 38 60 FF FF */	li r3, -0x1
/* 813FF97C | 48 00 03 D0 */	b .L_813FFD4C
.L_813FF980:
/* 813FF980 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_813FF984:
/* 813FF984 | 7E 40 07 34 */	extsh r0, r18
/* 813FF988 | 7C 00 98 00 */	cmpw r0, r19
/* 813FF98C | 41 80 FE A8 */	blt .L_813FF834
.L_813FF990:
/* 813FF990 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF998 | 41 82 00 0C */	beq .L_813FF9A4
/* 813FF99C | 4B FF D8 9D */	bl AOSSi_Free
/* 813FF9A0 | 93 4D AC 34 */	stw r26, lbl_81698C74@sda21(r0)
.L_813FF9A4:
/* 813FF9A4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF9A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF9AC | 41 82 00 0C */	beq .L_813FF9B8
/* 813FF9B0 | 4B FF D8 89 */	bl AOSSi_Free
/* 813FF9B4 | 93 4D AC 30 */	stw r26, lbl_81698C70@sda21(r0)
.L_813FF9B8:
/* 813FF9B8 | 38 60 00 02 */	li r3, 0x2
/* 813FF9BC | 38 80 00 02 */	li r4, 0x2
/* 813FF9C0 | 38 A0 00 00 */	li r5, 0x0
/* 813FF9C4 | 48 0B 36 A9 */	bl SOSocket
/* 813FF9C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF9CC | 90 6D 91 C0 */	stw r3, lbl_81697200@sda21(r0)
/* 813FF9D0 | 40 80 00 44 */	bge .L_813FFA14
/* 813FF9D4 | 38 00 00 0F */	li r0, 0xf
/* 813FF9D8 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FF9DC | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FF9E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF9E4 | 41 82 00 10 */	beq .L_813FF9F4
/* 813FF9E8 | 4B FF D8 51 */	bl AOSSi_Free
/* 813FF9EC | 38 00 00 00 */	li r0, 0x0
/* 813FF9F0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FF9F4:
/* 813FF9F4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FF9F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FF9FC | 41 82 00 10 */	beq .L_813FFA0C
/* 813FFA00 | 4B FF D8 39 */	bl AOSSi_Free
/* 813FFA04 | 38 00 00 00 */	li r0, 0x0
/* 813FFA08 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFA0C:
/* 813FFA0C | 38 60 FF FF */	li r3, -0x1
/* 813FFA10 | 48 00 03 3C */	b .L_813FFD4C
.L_813FFA14:
/* 813FFA14 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813FFA18 | 38 80 00 00 */	li r4, 0x0
/* 813FFA1C | 38 A0 00 08 */	li r5, 0x8
/* 813FFA20 | 4B F3 09 15 */	bl memset
/* 813FFA24 | 9A C1 00 41 */	stb r22, 0x41(r1)
/* 813FFA28 | 48 0B 46 3D */	bl SOGetHostID
/* 813FFA2C | 90 61 00 44 */	stw r3, 0x44(r1)
/* 813FFA30 | 38 60 57 90 */	li r3, 0x5790
/* 813FFA34 | 48 0B 41 45 */	bl SOHtoNs
/* 813FFA38 | B0 61 00 42 */	sth r3, 0x42(r1)
/* 813FFA3C | 38 81 00 40 */	addi r4, r1, 0x40
/* 813FFA40 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FFA44 | 9A E1 00 40 */	stb r23, 0x40(r1)
/* 813FFA48 | 48 0B 37 B9 */	bl SOBind
/* 813FFA4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFA50 | 40 80 00 44 */	bge .L_813FFA94
/* 813FFA54 | 38 00 00 0F */	li r0, 0xf
/* 813FFA58 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FFA5C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FFA60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFA64 | 41 82 00 10 */	beq .L_813FFA74
/* 813FFA68 | 4B FF D7 D1 */	bl AOSSi_Free
/* 813FFA6C | 38 00 00 00 */	li r0, 0x0
/* 813FFA70 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FFA74:
/* 813FFA74 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FFA78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFA7C | 41 82 00 10 */	beq .L_813FFA8C
/* 813FFA80 | 4B FF D7 B9 */	bl AOSSi_Free
/* 813FFA84 | 38 00 00 00 */	li r0, 0x0
/* 813FFA88 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFA8C:
/* 813FFA8C | 38 60 FF FF */	li r3, -0x1
/* 813FFA90 | 48 00 02 BC */	b .L_813FFD4C
.L_813FFA94:
/* 813FFA94 | 7E 13 83 78 */	mr r19, r16
/* 813FFA98 | 4B FF F3 24 */	b .L_813FEDBC
.L_813FFA9C:
/* 813FFA9C | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 813FFAA0 | 7E 13 83 78 */	mr r19, r16
/* 813FFAA4 | A8 01 00 24 */	lha r0, 0x24(r1)
/* 813FFAA8 | 7C 04 00 00 */	cmpw r4, r0
/* 813FFAAC | 40 81 00 3C */	ble .L_813FFAE8
/* 813FFAB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFAB4 | 40 82 00 10 */	bne .L_813FFAC4
/* 813FFAB8 | 38 00 00 0F */	li r0, 0xf
/* 813FFABC | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 813FFAC0 | 48 00 00 20 */	b .L_813FFAE0
.L_813FFAC4:
/* 813FFAC4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FFAC8 | 40 82 00 10 */	bne .L_813FFAD8
/* 813FFACC | 38 00 00 10 */	li r0, 0x10
/* 813FFAD0 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 813FFAD4 | 48 00 00 0C */	b .L_813FFAE0
.L_813FFAD8:
/* 813FFAD8 | 38 00 00 11 */	li r0, 0x11
/* 813FFADC | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
.L_813FFAE0:
/* 813FFAE0 | 39 C0 FF FF */	li r14, -0x1
/* 813FFAE4 | 48 00 00 E0 */	b .L_813FFBC4
.L_813FFAE8:
/* 813FFAE8 | A2 01 00 26 */	lhz r16, 0x26(r1)
/* 813FFAEC | 48 00 00 84 */	b .L_813FFB70
.L_813FFAF0:
/* 813FFAF0 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FFAF4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FFAF8 | 40 82 00 44 */	bne .L_813FFB3C
/* 813FFAFC | 38 00 00 0F */	li r0, 0xf
/* 813FFB00 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FFB04 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FFB08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFB0C | 41 82 00 10 */	beq .L_813FFB1C
/* 813FFB10 | 4B FF D7 29 */	bl AOSSi_Free
/* 813FFB14 | 38 00 00 00 */	li r0, 0x0
/* 813FFB18 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FFB1C:
/* 813FFB1C | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FFB20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFB24 | 41 82 00 10 */	beq .L_813FFB34
/* 813FFB28 | 4B FF D7 11 */	bl AOSSi_Free
/* 813FFB2C | 38 00 00 00 */	li r0, 0x0
/* 813FFB30 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFB34:
/* 813FFB34 | 38 60 FF FF */	li r3, -0x1
/* 813FFB38 | 48 00 02 14 */	b .L_813FFD4C
.L_813FFB3C:
/* 813FFB3C | 28 10 00 64 */	cmplwi r16, 0x64
/* 813FFB40 | 40 81 00 0C */	ble .L_813FFB4C
/* 813FFB44 | 38 60 00 64 */	li r3, 0x64
/* 813FFB48 | 48 00 00 08 */	b .L_813FFB50
.L_813FFB4C:
/* 813FFB4C | 7E 03 83 78 */	mr r3, r16
.L_813FFB50:
/* 813FFB50 | 4B FF DE 49 */	bl AOSSi_Sleep
/* 813FFB54 | 28 10 00 64 */	cmplwi r16, 0x64
/* 813FFB58 | 40 81 00 0C */	ble .L_813FFB64
/* 813FFB5C | 38 00 00 64 */	li r0, 0x64
/* 813FFB60 | 48 00 00 08 */	b .L_813FFB68
.L_813FFB64:
/* 813FFB64 | 7E 00 83 78 */	mr r0, r16
.L_813FFB68:
/* 813FFB68 | 7C 00 80 50 */	subf r0, r0, r16
/* 813FFB6C | 54 10 04 3E */	clrlwi r16, r0, 16
.L_813FFB70:
/* 813FFB70 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 813FFB74 | 40 82 FF 7C */	bne .L_813FFAF0
/* 813FFB78 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 813FFB7C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FFB80 | 40 82 F2 3C */	bne .L_813FEDBC
/* 813FFB84 | 38 00 00 0F */	li r0, 0xf
/* 813FFB88 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FFB8C | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FFB90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFB94 | 41 82 00 10 */	beq .L_813FFBA4
/* 813FFB98 | 4B FF D6 A1 */	bl AOSSi_Free
/* 813FFB9C | 38 00 00 00 */	li r0, 0x0
/* 813FFBA0 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FFBA4:
/* 813FFBA4 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FFBA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFBAC | 41 82 00 10 */	beq .L_813FFBBC
/* 813FFBB0 | 4B FF D6 89 */	bl AOSSi_Free
/* 813FFBB4 | 38 00 00 00 */	li r0, 0x0
/* 813FFBB8 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFBBC:
/* 813FFBBC | 38 60 FF FF */	li r3, -0x1
/* 813FFBC0 | 48 00 01 8C */	b .L_813FFD4C
.L_813FFBC4:
/* 813FFBC4 | 80 6D 91 C0 */	lwz r3, lbl_81697200@sda21(r0)
/* 813FFBC8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FFBCC | 41 82 00 08 */	beq .L_813FFBD4
/* 813FFBD0 | 48 0B 35 8D */	bl SOClose
.L_813FFBD4:
/* 813FFBD4 | 80 0D AC 48 */	lwz r0, lbl_81698C88@sda21(r0)
/* 813FFBD8 | 38 60 FF FF */	li r3, -0x1
/* 813FFBDC | 90 6D 91 C0 */	stw r3, lbl_81697200@sda21(r0)
/* 813FFBE0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FFBE4 | 40 82 00 20 */	bne .L_813FFC04
/* 813FFBE8 | 38 00 00 00 */	li r0, 0x0
/* 813FFBEC | 90 0D AC 48 */	stw r0, lbl_81698C88@sda21(r0)
/* 813FFBF0 | 48 0B 2A 41 */	bl SOCleanup
/* 813FFBF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFBF8 | 40 80 00 0C */	bge .L_813FFC04
/* 813FFBFC | 38 00 FF FF */	li r0, -0x1
/* 813FFC00 | 48 00 00 08 */	b .L_813FFC08
.L_813FFC04:
/* 813FFC04 | 38 00 00 00 */	li r0, 0x0
.L_813FFC08:
/* 813FFC08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FFC0C | 41 82 00 44 */	beq .L_813FFC50
/* 813FFC10 | 38 00 00 0F */	li r0, 0xf
/* 813FFC14 | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FFC18 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FFC1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFC20 | 41 82 00 10 */	beq .L_813FFC30
/* 813FFC24 | 4B FF D6 15 */	bl AOSSi_Free
/* 813FFC28 | 38 00 00 00 */	li r0, 0x0
/* 813FFC2C | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FFC30:
/* 813FFC30 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FFC34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFC38 | 41 82 00 10 */	beq .L_813FFC48
/* 813FFC3C | 4B FF D5 FD */	bl AOSSi_Free
/* 813FFC40 | 38 00 00 00 */	li r0, 0x0
/* 813FFC44 | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFC48:
/* 813FFC48 | 38 60 FF FF */	li r3, -0x1
/* 813FFC4C | 48 00 01 00 */	b .L_813FFD4C
.L_813FFC50:
/* 813FFC50 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 813FFC54 | 41 82 00 A4 */	beq .L_813FFCF8
/* 813FFC58 | 80 0D AC 44 */	lwz r0, lbl_81698C84@sda21(r0)
/* 813FFC5C | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813FFC60 | 41 82 00 40 */	beq .L_813FFCA0
/* 813FFC64 | 40 80 00 14 */	bge .L_813FFC78
/* 813FFC68 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813FFC6C | 41 82 00 24 */	beq .L_813FFC90
/* 813FFC70 | 40 80 00 28 */	bge .L_813FFC98
/* 813FFC74 | 48 00 00 44 */	b .L_813FFCB8
.L_813FFC78:
/* 813FFC78 | 2C 00 00 15 */	cmpwi r0, 0x15
/* 813FFC7C | 41 82 00 34 */	beq .L_813FFCB0
/* 813FFC80 | 40 80 00 38 */	bge .L_813FFCB8
/* 813FFC84 | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813FFC88 | 40 80 00 20 */	bge .L_813FFCA8
/* 813FFC8C | 48 00 00 2C */	b .L_813FFCB8
.L_813FFC90:
/* 813FFC90 | 38 00 00 03 */	li r0, 0x3
/* 813FFC94 | 48 00 00 28 */	b .L_813FFCBC
.L_813FFC98:
/* 813FFC98 | 38 00 00 04 */	li r0, 0x4
/* 813FFC9C | 48 00 00 20 */	b .L_813FFCBC
.L_813FFCA0:
/* 813FFCA0 | 38 00 00 05 */	li r0, 0x5
/* 813FFCA4 | 48 00 00 18 */	b .L_813FFCBC
.L_813FFCA8:
/* 813FFCA8 | 38 00 00 07 */	li r0, 0x7
/* 813FFCAC | 48 00 00 10 */	b .L_813FFCBC
.L_813FFCB0:
/* 813FFCB0 | 38 00 00 08 */	li r0, 0x8
/* 813FFCB4 | 48 00 00 08 */	b .L_813FFCBC
.L_813FFCB8:
/* 813FFCB8 | 38 00 00 0F */	li r0, 0xf
.L_813FFCBC:
/* 813FFCBC | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FFCC0 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FFCC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFCC8 | 41 82 00 10 */	beq .L_813FFCD8
/* 813FFCCC | 4B FF D5 6D */	bl AOSSi_Free
/* 813FFCD0 | 38 00 00 00 */	li r0, 0x0
/* 813FFCD4 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FFCD8:
/* 813FFCD8 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FFCDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFCE0 | 41 82 00 10 */	beq .L_813FFCF0
/* 813FFCE4 | 4B FF D5 55 */	bl AOSSi_Free
/* 813FFCE8 | 38 00 00 00 */	li r0, 0x0
/* 813FFCEC | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFCF0:
/* 813FFCF0 | 38 60 FF FF */	li r3, -0x1
/* 813FFCF4 | 48 00 00 58 */	b .L_813FFD4C
.L_813FFCF8:
/* 813FFCF8 | 7D E3 7B 78 */	mr r3, r15
/* 813FFCFC | 48 00 00 6D */	bl ATERM_813FFD68
/* 813FFD00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFD04 | 41 82 00 44 */	beq .L_813FFD48
/* 813FFD08 | 38 00 00 06 */	li r0, 0x6
/* 813FFD0C | 98 0F 01 16 */	stb r0, 0x116(r15)
/* 813FFD10 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 813FFD14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFD18 | 41 82 00 10 */	beq .L_813FFD28
/* 813FFD1C | 4B FF D5 1D */	bl AOSSi_Free
/* 813FFD20 | 38 00 00 00 */	li r0, 0x0
/* 813FFD24 | 90 0D AC 34 */	stw r0, lbl_81698C74@sda21(r0)
.L_813FFD28:
/* 813FFD28 | 80 6D AC 30 */	lwz r3, lbl_81698C70@sda21(r0)
/* 813FFD2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFD30 | 41 82 00 10 */	beq .L_813FFD40
/* 813FFD34 | 4B FF D5 05 */	bl AOSSi_Free
/* 813FFD38 | 38 00 00 00 */	li r0, 0x0
/* 813FFD3C | 90 0D AC 30 */	stw r0, lbl_81698C70@sda21(r0)
.L_813FFD40:
/* 813FFD40 | 38 60 FF FF */	li r3, -0x1
/* 813FFD44 | 48 00 00 08 */	b .L_813FFD4C
.L_813FFD48:
/* 813FFD48 | 38 60 00 00 */	li r3, 0x0
.L_813FFD4C:
/* 813FFD4C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 813FFD50 | 7D 4B 53 78 */	mr r11, r10
/* 813FFD54 | 48 1F 97 85 */	bl _restgpr_14
/* 813FFD58 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 813FFD5C | 7C 08 03 A6 */	mtlr r0
/* 813FFD60 | 7D 41 53 78 */	mr r1, r10
/* 813FFD64 | 4E 80 00 20 */	blr
.endfn ATERM_813FE4A8

# .text:0x1AEC | 0x813FFD68 | size: 0x36C
.fn ATERM_813FFD68, global
/* 813FFD68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FFD6C | 7C 08 02 A6 */	mflr r0
/* 813FFD70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FFD74 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813FFD78 | 3F E0 81 0C */	lis r31, ATERM_810BDF18@ha
/* 813FFD7C | 3B FF DF 18 */	addi r31, r31, ATERM_810BDF18@l
/* 813FFD80 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813FFD84 | 37 C3 01 17 */	addic. r30, r3, 0x117
/* 813FFD88 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 813FFD8C | 7C 7D 1B 78 */	mr r29, r3
/* 813FFD90 | 40 82 00 0C */	bne .L_813FFD9C
/* 813FFD94 | 38 60 FF FF */	li r3, -0x1
/* 813FFD98 | 48 00 03 20 */	b .L_814000B8
.L_813FFD9C:
/* 813FFD9C | 3C E0 81 0C */	lis r7, ATERM_810BDEF8@ha
/* 813FFDA0 | 38 80 00 00 */	li r4, 0x0
/* 813FFDA4 | 38 E7 DE F8 */	addi r7, r7, ATERM_810BDEF8@l
/* 813FFDA8 | 38 A0 01 54 */	li r5, 0x154
/* 813FFDAC | 80 C7 00 08 */	lwz r6, 0x8(r7)
/* 813FFDB0 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 813FFDB4 | 7C C0 00 38 */	and r0, r6, r0
/* 813FFDB8 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 813FFDBC | 7F C3 F3 78 */	mr r3, r30
/* 813FFDC0 | 4B F3 05 75 */	bl memset
/* 813FFDC4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 813FFDC8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813FFDCC | 41 82 00 A4 */	beq .L_813FFE70
/* 813FFDD0 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813FFDD4 | 7F C3 F3 78 */	mr r3, r30
/* 813FFDD8 | 38 9F 00 38 */	addi r4, r31, 0x38
/* 813FFDDC | 4B F3 04 55 */	bl memcpy
/* 813FFDE0 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813FFDE4 | 38 7E 00 06 */	addi r3, r30, 0x6
/* 813FFDE8 | 38 9F 00 78 */	addi r4, r31, 0x78
/* 813FFDEC | 4B F3 04 45 */	bl memcpy
/* 813FFDF0 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813FFDF4 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 813FFDF8 | 38 9F 00 B8 */	addi r4, r31, 0xb8
/* 813FFDFC | 4B F3 04 35 */	bl memcpy
/* 813FFE00 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813FFE04 | 38 7E 00 12 */	addi r3, r30, 0x12
/* 813FFE08 | 38 9F 00 F8 */	addi r4, r31, 0xf8
/* 813FFE0C | 4B F3 04 25 */	bl memcpy
/* 813FFE10 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 813FFE14 | 48 1F 90 E9 */	bl strlen
/* 813FFE18 | 38 9F 00 10 */	addi r4, r31, 0x10
/* 813FFE1C | 7C 69 03 A6 */	mtctr r3
/* 813FFE20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFE24 | 40 81 00 28 */	ble .L_813FFE4C
.L_813FFE28:
/* 813FFE28 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 813FFE2C | 38 84 00 01 */	addi r4, r4, 0x1
/* 813FFE30 | 28 00 00 20 */	cmplwi r0, 0x20
/* 813FFE34 | 41 80 00 0C */	blt .L_813FFE40
/* 813FFE38 | 28 00 00 7F */	cmplwi r0, 0x7f
/* 813FFE3C | 40 81 00 0C */	ble .L_813FFE48
.L_813FFE40:
/* 813FFE40 | 38 00 FF FF */	li r0, -0x1
/* 813FFE44 | 48 00 00 0C */	b .L_813FFE50
.L_813FFE48:
/* 813FFE48 | 42 00 FF E0 */	bdnz .L_813FFE28
.L_813FFE4C:
/* 813FFE4C | 38 00 00 00 */	li r0, 0x0
.L_813FFE50:
/* 813FFE50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FFE54 | 40 82 02 50 */	bne .L_814000A4
/* 813FFE58 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 813FFE5C | 48 1F 90 A1 */	bl strlen
/* 813FFE60 | 7C 65 1B 78 */	mr r5, r3
/* 813FFE64 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813FFE68 | 38 9F 00 10 */	addi r4, r31, 0x10
/* 813FFE6C | 4B F3 03 C5 */	bl memcpy
.L_813FFE70:
/* 813FFE70 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 813FFE74 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 813FFE78 | 41 82 00 A4 */	beq .L_813FFF1C
/* 813FFE7C | 80 BF 01 3C */	lwz r5, 0x13c(r31)
/* 813FFE80 | 38 7E 00 39 */	addi r3, r30, 0x39
/* 813FFE84 | 38 9F 01 68 */	addi r4, r31, 0x168
/* 813FFE88 | 4B F3 03 A9 */	bl memcpy
/* 813FFE8C | 80 BF 01 3C */	lwz r5, 0x13c(r31)
/* 813FFE90 | 38 7E 00 47 */	addi r3, r30, 0x47
/* 813FFE94 | 38 9F 01 A8 */	addi r4, r31, 0x1a8
/* 813FFE98 | 4B F3 03 99 */	bl memcpy
/* 813FFE9C | 80 BF 01 3C */	lwz r5, 0x13c(r31)
/* 813FFEA0 | 38 7E 00 55 */	addi r3, r30, 0x55
/* 813FFEA4 | 38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 813FFEA8 | 4B F3 03 89 */	bl memcpy
/* 813FFEAC | 80 BF 01 3C */	lwz r5, 0x13c(r31)
/* 813FFEB0 | 38 7E 00 63 */	addi r3, r30, 0x63
/* 813FFEB4 | 38 9F 02 28 */	addi r4, r31, 0x228
/* 813FFEB8 | 4B F3 03 79 */	bl memcpy
/* 813FFEBC | 38 7F 01 40 */	addi r3, r31, 0x140
/* 813FFEC0 | 48 1F 90 3D */	bl strlen
/* 813FFEC4 | 38 9F 01 40 */	addi r4, r31, 0x140
/* 813FFEC8 | 7C 69 03 A6 */	mtctr r3
/* 813FFECC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFED0 | 40 81 00 28 */	ble .L_813FFEF8
.L_813FFED4:
/* 813FFED4 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 813FFED8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813FFEDC | 28 00 00 20 */	cmplwi r0, 0x20
/* 813FFEE0 | 41 80 00 0C */	blt .L_813FFEEC
/* 813FFEE4 | 28 00 00 7F */	cmplwi r0, 0x7f
/* 813FFEE8 | 40 81 00 0C */	ble .L_813FFEF4
.L_813FFEEC:
/* 813FFEEC | 38 00 FF FF */	li r0, -0x1
/* 813FFEF0 | 48 00 00 0C */	b .L_813FFEFC
.L_813FFEF4:
/* 813FFEF4 | 42 00 FF E0 */	bdnz .L_813FFED4
.L_813FFEF8:
/* 813FFEF8 | 38 00 00 00 */	li r0, 0x0
.L_813FFEFC:
/* 813FFEFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FFF00 | 40 82 01 A4 */	bne .L_814000A4
/* 813FFF04 | 38 7F 01 40 */	addi r3, r31, 0x140
/* 813FFF08 | 48 1F 8F F5 */	bl strlen
/* 813FFF0C | 7C 65 1B 78 */	mr r5, r3
/* 813FFF10 | 38 7E 00 71 */	addi r3, r30, 0x71
/* 813FFF14 | 38 9F 01 40 */	addi r4, r31, 0x140
/* 813FFF18 | 4B F3 03 19 */	bl memcpy
.L_813FFF1C:
/* 813FFF1C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 813FFF20 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 813FFF24 | 41 82 00 B4 */	beq .L_813FFFD8
/* 813FFF28 | 80 BF 02 6C */	lwz r5, 0x26c(r31)
/* 813FFF2C | 38 7F 02 98 */	addi r3, r31, 0x298
/* 813FFF30 | 34 05 FF FF */	subic. r0, r5, 0x1
/* 813FFF34 | 7C 09 03 A6 */	mtctr r0
/* 813FFF38 | 40 81 00 28 */	ble .L_813FFF60
.L_813FFF3C:
/* 813FFF3C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813FFF40 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813FFF44 | 28 00 00 20 */	cmplwi r0, 0x20
/* 813FFF48 | 41 80 00 0C */	blt .L_813FFF54
/* 813FFF4C | 28 00 00 7F */	cmplwi r0, 0x7f
/* 813FFF50 | 40 81 00 0C */	ble .L_813FFF5C
.L_813FFF54:
/* 813FFF54 | 38 00 FF FF */	li r0, -0x1
/* 813FFF58 | 48 00 00 0C */	b .L_813FFF64
.L_813FFF5C:
/* 813FFF5C | 42 00 FF E0 */	bdnz .L_813FFF3C
.L_813FFF60:
/* 813FFF60 | 38 00 00 00 */	li r0, 0x0
.L_813FFF64:
/* 813FFF64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FFF68 | 40 82 01 3C */	bne .L_814000A4
/* 813FFF6C | 38 7E 00 92 */	addi r3, r30, 0x92
/* 813FFF70 | 38 9F 02 98 */	addi r4, r31, 0x298
/* 813FFF74 | 4B F3 02 BD */	bl memcpy
/* 813FFF78 | 38 7F 02 70 */	addi r3, r31, 0x270
/* 813FFF7C | 48 1F 8F 81 */	bl strlen
/* 813FFF80 | 38 9F 02 70 */	addi r4, r31, 0x270
/* 813FFF84 | 7C 69 03 A6 */	mtctr r3
/* 813FFF88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FFF8C | 40 81 00 28 */	ble .L_813FFFB4
.L_813FFF90:
/* 813FFF90 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 813FFF94 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813FFF98 | 28 00 00 20 */	cmplwi r0, 0x20
/* 813FFF9C | 41 80 00 0C */	blt .L_813FFFA8
/* 813FFFA0 | 28 00 00 7F */	cmplwi r0, 0x7f
/* 813FFFA4 | 40 81 00 0C */	ble .L_813FFFB0
.L_813FFFA8:
/* 813FFFA8 | 38 00 FF FF */	li r0, -0x1
/* 813FFFAC | 48 00 00 0C */	b .L_813FFFB8
.L_813FFFB0:
/* 813FFFB0 | 42 00 FF E0 */	bdnz .L_813FFF90
.L_813FFFB4:
/* 813FFFB4 | 38 00 00 00 */	li r0, 0x0
.L_813FFFB8:
/* 813FFFB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FFFBC | 40 82 00 E8 */	bne .L_814000A4
/* 813FFFC0 | 38 7F 02 70 */	addi r3, r31, 0x270
/* 813FFFC4 | 48 1F 8F 39 */	bl strlen
/* 813FFFC8 | 7C 65 1B 78 */	mr r5, r3
/* 813FFFCC | 38 7E 00 D2 */	addi r3, r30, 0xd2
/* 813FFFD0 | 38 9F 02 70 */	addi r4, r31, 0x270
/* 813FFFD4 | 4B F3 02 5D */	bl memcpy
.L_813FFFD8:
/* 813FFFD8 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 813FFFDC | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 813FFFE0 | 41 82 00 B4 */	beq .L_81400094
/* 813FFFE4 | 80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 813FFFE8 | 38 7F 03 08 */	addi r3, r31, 0x308
/* 813FFFEC | 34 05 FF FF */	subic. r0, r5, 0x1
/* 813FFFF0 | 7C 09 03 A6 */	mtctr r0
/* 813FFFF4 | 40 81 00 28 */	ble .L_8140001C
.L_813FFFF8:
/* 813FFFF8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813FFFFC | 38 63 00 01 */	addi r3, r3, 0x1
/* 81400000 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81400004 | 41 80 00 0C */	blt .L_81400010
/* 81400008 | 28 00 00 7F */	cmplwi r0, 0x7f
/* 8140000C | 40 81 00 0C */	ble .L_81400018
.L_81400010:
/* 81400010 | 38 00 FF FF */	li r0, -0x1
/* 81400014 | 48 00 00 0C */	b .L_81400020
.L_81400018:
/* 81400018 | 42 00 FF E0 */	bdnz .L_813FFFF8
.L_8140001C:
/* 8140001C | 38 00 00 00 */	li r0, 0x0
.L_81400020:
/* 81400020 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400024 | 40 82 00 80 */	bne .L_814000A4
/* 81400028 | 38 7E 00 F3 */	addi r3, r30, 0xf3
/* 8140002C | 38 9F 03 08 */	addi r4, r31, 0x308
/* 81400030 | 4B F3 02 01 */	bl memcpy
/* 81400034 | 38 7F 02 E0 */	addi r3, r31, 0x2e0
/* 81400038 | 48 1F 8E C5 */	bl strlen
/* 8140003C | 38 9F 02 E0 */	addi r4, r31, 0x2e0
/* 81400040 | 7C 69 03 A6 */	mtctr r3
/* 81400044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400048 | 40 81 00 28 */	ble .L_81400070
.L_8140004C:
/* 8140004C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81400050 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81400054 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81400058 | 41 80 00 0C */	blt .L_81400064
/* 8140005C | 28 00 00 7F */	cmplwi r0, 0x7f
/* 81400060 | 40 81 00 0C */	ble .L_8140006C
.L_81400064:
/* 81400064 | 38 00 FF FF */	li r0, -0x1
/* 81400068 | 48 00 00 0C */	b .L_81400074
.L_8140006C:
/* 8140006C | 42 00 FF E0 */	bdnz .L_8140004C
.L_81400070:
/* 81400070 | 38 00 00 00 */	li r0, 0x0
.L_81400074:
/* 81400074 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400078 | 40 82 00 2C */	bne .L_814000A4
/* 8140007C | 38 7F 02 E0 */	addi r3, r31, 0x2e0
/* 81400080 | 48 1F 8E 7D */	bl strlen
/* 81400084 | 7C 65 1B 78 */	mr r5, r3
/* 81400088 | 38 7E 01 33 */	addi r3, r30, 0x133
/* 8140008C | 38 9F 02 E0 */	addi r4, r31, 0x2e0
/* 81400090 | 4B F3 01 A1 */	bl memcpy
.L_81400094:
/* 81400094 | 38 00 00 00 */	li r0, 0x0
/* 81400098 | 38 60 00 00 */	li r3, 0x0
/* 8140009C | 98 1D 01 16 */	stb r0, 0x116(r29)
/* 814000A0 | 48 00 00 18 */	b .L_814000B8
.L_814000A4:
/* 814000A4 | 7F C3 F3 78 */	mr r3, r30
/* 814000A8 | 38 80 00 00 */	li r4, 0x0
/* 814000AC | 38 A0 01 54 */	li r5, 0x154
/* 814000B0 | 4B F3 02 85 */	bl memset
/* 814000B4 | 38 60 FF FF */	li r3, -0x1
.L_814000B8:
/* 814000B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814000BC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814000C0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814000C4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814000C8 | 7C 08 03 A6 */	mtlr r0
/* 814000CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814000D0 | 4E 80 00 20 */	blr
.endfn ATERM_813FFD68

# .text:0x1E58 | 0x814000D4 | size: 0xE0
.fn ATERM_814000D4, global
/* 814000D4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814000D8 | 7C 08 02 A6 */	mflr r0
/* 814000DC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814000E0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814000E4 | 48 1F 93 D5 */	bl _savegpr_25
/* 814000E8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814000EC | 3B 40 00 00 */	li r26, 0x0
/* 814000F0 | 3B 20 00 00 */	li r25, 0x0
/* 814000F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814000F8 | 40 82 00 0C */	bne .L_81400104
/* 814000FC | 38 60 00 05 */	li r3, 0x5
/* 81400100 | 48 00 00 9C */	b .L_8140019C
.L_81400104:
/* 81400104 | 28 00 00 40 */	cmplwi r0, 0x40
/* 81400108 | 3B C0 00 40 */	li r30, 0x40
/* 8140010C | 41 81 00 08 */	bgt .L_81400114
/* 81400110 | 7C 1E 03 78 */	mr r30, r0
.L_81400114:
/* 81400114 | 7C 7D 1B 78 */	mr r29, r3
/* 81400118 | 3B 83 00 08 */	addi r28, r3, 0x8
/* 8140011C | 3B 60 00 00 */	li r27, 0x0
/* 81400120 | 3F E0 81 65 */	lis r31, lbl_81657C48@ha
/* 81400124 | 48 00 00 54 */	b .L_81400178
.L_81400128:
/* 81400128 | 80 1D 00 54 */	lwz r0, 0x54(r29)
/* 8140012C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 81400130 | 41 82 00 3C */	beq .L_8140016C
/* 81400134 | 38 7F 7C 48 */	addi r3, r31, lbl_81657C48@l
/* 81400138 | 48 1F 8D C5 */	bl strlen
/* 8140013C | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81400140 | 7C 00 18 40 */	cmplw r0, r3
/* 81400144 | 40 82 00 28 */	bne .L_8140016C
/* 81400148 | 38 7F 7C 48 */	addi r3, r31, lbl_81657C48@l
/* 8140014C | 48 1F 8D B1 */	bl strlen
/* 81400150 | 7C 65 1B 78 */	mr r5, r3
/* 81400154 | 7F 83 E3 78 */	mr r3, r28
/* 81400158 | 38 9F 7C 48 */	addi r4, r31, lbl_81657C48@l
/* 8140015C | 48 1F E0 79 */	bl memcmp
/* 81400160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400164 | 40 82 00 08 */	bne .L_8140016C
/* 81400168 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_8140016C:
/* 8140016C | 3B BD 00 54 */	addi r29, r29, 0x54
/* 81400170 | 3B 9C 00 54 */	addi r28, r28, 0x54
/* 81400174 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81400178:
/* 81400178 | 7C 1B F0 00 */	cmpw r27, r30
/* 8140017C | 41 80 FF AC */	blt .L_81400128
/* 81400180 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 81400184 | 40 81 00 08 */	ble .L_8140018C
/* 81400188 | 3B 40 00 04 */	li r26, 0x4
.L_8140018C:
/* 8140018C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81400190 | 40 82 00 08 */	bne .L_81400198
/* 81400194 | 3B 40 00 05 */	li r26, 0x5
.L_81400198:
/* 81400198 | 7F 43 D3 78 */	mr r3, r26
.L_8140019C:
/* 8140019C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814001A0 | 48 1F 93 65 */	bl _restgpr_25
/* 814001A4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814001A8 | 7C 08 03 A6 */	mtlr r0
/* 814001AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814001B0 | 4E 80 00 20 */	blr
.endfn ATERM_814000D4

# .text:0x1F38 | 0x814001B4 | size: 0x13C
.fn ATERM_814001B4, global
/* 814001B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814001B8 | 7C 08 02 A6 */	mflr r0
/* 814001BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814001C0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814001C4 | 7C DF 33 78 */	mr r31, r6
/* 814001C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814001CC | 7C BE 2B 78 */	mr r30, r5
/* 814001D0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814001D4 | 7C 9D 23 78 */	mr r29, r4
/* 814001D8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814001DC | 7C 7C 1B 78 */	mr r28, r3
/* 814001E0 | A0 64 00 0C */	lhz r3, 0xc(r4)
/* 814001E4 | 48 0B 39 89 */	bl SONtoHs
/* 814001E8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814001EC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814001F0 | 40 80 00 18 */	bge .L_81400208
/* 814001F4 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814001F8 | 7F 83 E3 78 */	mr r3, r28
/* 814001FC | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400200 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81400204 | 48 00 00 CC */	b .L_814002D0
.L_81400208:
/* 81400208 | 88 1D 00 1B */	lbz r0, 0x1b(r29)
/* 8140020C | 28 00 00 11 */	cmplwi r0, 0x11
/* 81400210 | 41 82 00 18 */	beq .L_81400228
/* 81400214 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81400218 | 7F 83 E3 78 */	mr r3, r28
/* 8140021C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400220 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81400224 | 48 00 00 AC */	b .L_814002D0
.L_81400228:
/* 81400228 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 8140022C | 48 00 06 05 */	bl ATERM_81400830
/* 81400230 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400234 | 40 81 00 18 */	ble .L_8140024C
/* 81400238 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8140023C | 7F 83 E3 78 */	mr r3, r28
/* 81400240 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400244 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81400248 | 48 00 00 88 */	b .L_814002D0
.L_8140024C:
/* 8140024C | A0 7D 00 12 */	lhz r3, 0x12(r29)
/* 81400250 | 48 0B 39 1D */	bl SONtoHs
/* 81400254 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81400258 | 2C 00 20 10 */	cmpwi r0, 0x2010
/* 8140025C | 41 82 00 3C */	beq .L_81400298
/* 81400260 | 40 80 00 10 */	bge .L_81400270
/* 81400264 | 2C 00 10 10 */	cmpwi r0, 0x1010
/* 81400268 | 41 82 00 14 */	beq .L_8140027C
/* 8140026C | 48 00 00 60 */	b .L_814002CC
.L_81400270:
/* 81400270 | 2C 00 30 10 */	cmpwi r0, 0x3010
/* 81400274 | 41 82 00 40 */	beq .L_814002B4
/* 81400278 | 48 00 00 54 */	b .L_814002CC
.L_8140027C:
/* 8140027C | 7F 83 E3 78 */	mr r3, r28
/* 81400280 | 7F A4 EB 78 */	mr r4, r29
/* 81400284 | 7F C5 F3 78 */	mr r5, r30
/* 81400288 | 7F E6 FB 78 */	mr r6, r31
/* 8140028C | 48 00 00 65 */	bl ATERM_814002F0
/* 81400290 | 7C 7C 1B 78 */	mr r28, r3
/* 81400294 | 48 00 00 38 */	b .L_814002CC
.L_81400298:
/* 81400298 | 7F 83 E3 78 */	mr r3, r28
/* 8140029C | 7F A4 EB 78 */	mr r4, r29
/* 814002A0 | 7F C5 F3 78 */	mr r5, r30
/* 814002A4 | 7F E6 FB 78 */	mr r6, r31
/* 814002A8 | 48 00 02 29 */	bl ATERM_814004D0
/* 814002AC | 7C 7C 1B 78 */	mr r28, r3
/* 814002B0 | 48 00 00 1C */	b .L_814002CC
.L_814002B4:
/* 814002B4 | 7F 83 E3 78 */	mr r3, r28
/* 814002B8 | 7F A4 EB 78 */	mr r4, r29
/* 814002BC | 7F C5 F3 78 */	mr r5, r30
/* 814002C0 | 7F E6 FB 78 */	mr r6, r31
/* 814002C4 | 48 00 03 E1 */	bl ATERM_814006A4
/* 814002C8 | 7C 7C 1B 78 */	mr r28, r3
.L_814002CC:
/* 814002CC | 7F 83 E3 78 */	mr r3, r28
.L_814002D0:
/* 814002D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814002D4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814002D8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814002DC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814002E0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814002E4 | 7C 08 03 A6 */	mtlr r0
/* 814002E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814002EC | 4E 80 00 20 */	blr
.endfn ATERM_814001B4

# .text:0x2074 | 0x814002F0 | size: 0x1E0
.fn ATERM_814002F0, global
/* 814002F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814002F4 | 7C 08 02 A6 */	mflr r0
/* 814002F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814002FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81400300 | 48 1F 91 BD */	bl _savegpr_26
/* 81400304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400308 | 7C 7A 1B 78 */	mr r26, r3
/* 8140030C | 7C 9B 23 78 */	mr r27, r4
/* 81400310 | 7C BF 2B 78 */	mr r31, r5
/* 81400314 | 7C DC 33 78 */	mr r28, r6
/* 81400318 | 41 82 00 14 */	beq .L_8140032C
/* 8140031C | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 81400320 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400324 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 81400328 | 48 00 01 90 */	b .L_814004B8
.L_8140032C:
/* 8140032C | 3B A0 00 00 */	li r29, 0x0
/* 81400330 | 38 6D 91 C4 */	li r3, lbl_81697204@sda21
/* 81400334 | 48 1F 8B C9 */	bl strlen
/* 81400338 | 7C 66 1B 78 */	mr r6, r3
/* 8140033C | 38 7B 00 1C */	addi r3, r27, 0x1c
/* 81400340 | 38 80 00 08 */	li r4, 0x8
/* 81400344 | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 81400348 | 48 00 1B 39 */	bl ATERM_81401E80
/* 8140034C | 7F 83 E3 78 */	mr r3, r28
/* 81400350 | 38 9B 00 1C */	addi r4, r27, 0x1c
/* 81400354 | 38 A0 00 06 */	li r5, 0x6
/* 81400358 | 48 1F DE 7D */	bl memcmp
/* 8140035C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400360 | 41 82 00 0C */	beq .L_8140036C
/* 81400364 | 3B A0 FF FF */	li r29, -0x1
/* 81400368 | 48 00 00 30 */	b .L_81400398
.L_8140036C:
/* 8140036C | A0 7B 00 22 */	lhz r3, 0x22(r27)
/* 81400370 | 48 0B 37 FD */	bl SONtoHs
/* 81400374 | 7C 7E 1B 78 */	mr r30, r3
/* 81400378 | A0 7C 00 06 */	lhz r3, 0x6(r28)
/* 8140037C | 48 0B 37 F1 */	bl SONtoHs
/* 81400380 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81400384 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81400388 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8140038C | 7C 03 00 00 */	cmpw r3, r0
/* 81400390 | 41 82 00 08 */	beq .L_81400398
/* 81400394 | 3B A0 FF FE */	li r29, -0x2
.L_81400398:
/* 81400398 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8140039C | 40 80 00 18 */	bge .L_814003B4
/* 814003A0 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814003A4 | 7F 43 D3 78 */	mr r3, r26
/* 814003A8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814003AC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814003B0 | 48 00 01 08 */	b .L_814004B8
.L_814003B4:
/* 814003B4 | A0 7B 00 26 */	lhz r3, 0x26(r27)
/* 814003B8 | 48 0B 37 B5 */	bl SONtoHs
/* 814003BC | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814003C0 | 40 82 00 18 */	bne .L_814003D8
/* 814003C4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814003C8 | 7F 43 D3 78 */	mr r3, r26
/* 814003CC | 38 04 00 01 */	addi r0, r4, 0x1
/* 814003D0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814003D4 | 48 00 00 E4 */	b .L_814004B8
.L_814003D8:
/* 814003D8 | 88 1B 00 24 */	lbz r0, 0x24(r27)
/* 814003DC | 28 00 00 07 */	cmplwi r0, 0x7
/* 814003E0 | 40 82 00 50 */	bne .L_81400430
/* 814003E4 | 80 7B 00 28 */	lwz r3, 0x28(r27)
/* 814003E8 | 3B BB 00 28 */	addi r29, r27, 0x28
/* 814003EC | 48 0B 37 7D */	bl SONtoHl
/* 814003F0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814003F4 | 28 00 FF FE */	cmplwi r0, 0xfffe
/* 814003F8 | 40 82 00 10 */	bne .L_81400408
/* 814003FC | 38 00 00 14 */	li r0, 0x14
/* 81400400 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81400404 | 48 00 00 24 */	b .L_81400428
.L_81400408:
/* 81400408 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8140040C | 48 0B 37 5D */	bl SONtoHl
/* 81400410 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81400414 | 38 60 00 18 */	li r3, 0x18
/* 81400418 | 28 00 FF FD */	cmplwi r0, 0xfffd
/* 8140041C | 40 82 00 08 */	bne .L_81400424
/* 81400420 | 38 60 00 15 */	li r3, 0x15
.L_81400424:
/* 81400424 | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
.L_81400428:
/* 81400428 | 38 60 FF FF */	li r3, -0x1
/* 8140042C | 48 00 00 8C */	b .L_814004B8
.L_81400430:
/* 81400430 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81400434 | 41 82 00 18 */	beq .L_8140044C
/* 81400438 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8140043C | 7F 43 D3 78 */	mr r3, r26
/* 81400440 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400444 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81400448 | 48 00 00 70 */	b .L_814004B8
.L_8140044C:
/* 8140044C | 3C 80 81 0C */	lis r4, ATERM_810BE5B8@ha
/* 81400450 | 38 7B 00 28 */	addi r3, r27, 0x28
/* 81400454 | 38 84 E5 B8 */	addi r4, r4, ATERM_810BE5B8@l
/* 81400458 | 48 00 09 B5 */	bl ATERM_81400E0C
/* 8140045C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400460 | 40 80 00 30 */	bge .L_81400490
/* 81400464 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81400468 | 40 82 00 14 */	bne .L_8140047C
/* 8140046C | 38 00 00 16 */	li r0, 0x16
/* 81400470 | 38 60 FF FF */	li r3, -0x1
/* 81400474 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81400478 | 48 00 00 40 */	b .L_814004B8
.L_8140047C:
/* 8140047C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81400480 | 7F 43 D3 78 */	mr r3, r26
/* 81400484 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400488 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8140048C | 48 00 00 2C */	b .L_814004B8
.L_81400490:
/* 81400490 | A0 7B 00 18 */	lhz r3, 0x18(r27)
/* 81400494 | 48 0B 36 D9 */	bl SONtoHs
/* 81400498 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 8140049C | 38 00 00 00 */	li r0, 0x0
/* 814004A0 | 41 82 00 08 */	beq .L_814004A8
/* 814004A4 | 38 00 00 01 */	li r0, 0x1
.L_814004A8:
/* 814004A8 | 90 0D AC 40 */	stw r0, lbl_81698C80@sda21(r0)
/* 814004AC | 38 00 00 00 */	li r0, 0x0
/* 814004B0 | 38 60 00 01 */	li r3, 0x1
/* 814004B4 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814004B8:
/* 814004B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814004BC | 48 1F 90 4D */	bl _restgpr_26
/* 814004C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814004C4 | 7C 08 03 A6 */	mtlr r0
/* 814004C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814004CC | 4E 80 00 20 */	blr
.endfn ATERM_814002F0

# .text:0x2254 | 0x814004D0 | size: 0x1D4
.fn ATERM_814004D0, global
/* 814004D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814004D4 | 7C 08 02 A6 */	mflr r0
/* 814004D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814004DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814004E0 | 48 1F 8F D5 */	bl _savegpr_24
/* 814004E4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814004E8 | 3F 80 81 0C */	lis r28, ATERM_810BDEF8@ha
/* 814004EC | 7C 7E 1B 78 */	mr r30, r3
/* 814004F0 | 7C 98 23 78 */	mr r24, r4
/* 814004F4 | 7C BF 2B 78 */	mr r31, r5
/* 814004F8 | 7C D9 33 78 */	mr r25, r6
/* 814004FC | 3B 9C DE F8 */	addi r28, r28, ATERM_810BDEF8@l
/* 81400500 | 41 82 00 14 */	beq .L_81400514
/* 81400504 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 81400508 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8140050C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 81400510 | 48 00 01 7C */	b .L_8140068C
.L_81400514:
/* 81400514 | 3B 44 00 24 */	addi r26, r4, 0x24
/* 81400518 | 3B 60 00 00 */	li r27, 0x0
/* 8140051C | 38 6D 91 C4 */	li r3, lbl_81697204@sda21
/* 81400520 | 48 1F 89 DD */	bl strlen
/* 81400524 | 7C 66 1B 78 */	mr r6, r3
/* 81400528 | 38 78 00 1C */	addi r3, r24, 0x1c
/* 8140052C | 38 80 00 08 */	li r4, 0x8
/* 81400530 | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 81400534 | 48 00 19 4D */	bl ATERM_81401E80
/* 81400538 | 38 79 00 08 */	addi r3, r25, 0x8
/* 8140053C | 38 98 00 1C */	addi r4, r24, 0x1c
/* 81400540 | 38 A0 00 06 */	li r5, 0x6
/* 81400544 | 48 1F DC 91 */	bl memcmp
/* 81400548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140054C | 41 82 00 0C */	beq .L_81400558
/* 81400550 | 3B 60 FF FF */	li r27, -0x1
/* 81400554 | 48 00 00 30 */	b .L_81400584
.L_81400558:
/* 81400558 | A0 78 00 22 */	lhz r3, 0x22(r24)
/* 8140055C | 48 0B 36 11 */	bl SONtoHs
/* 81400560 | 7C 7D 1B 78 */	mr r29, r3
/* 81400564 | A0 79 00 0E */	lhz r3, 0xe(r25)
/* 81400568 | 48 0B 36 05 */	bl SONtoHs
/* 8140056C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81400570 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81400574 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81400578 | 7C 03 00 00 */	cmpw r3, r0
/* 8140057C | 41 82 00 08 */	beq .L_81400584
/* 81400580 | 3B 60 FF FE */	li r27, -0x2
.L_81400584:
/* 81400584 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81400588 | 40 80 00 18 */	bge .L_814005A0
/* 8140058C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81400590 | 7F C3 F3 78 */	mr r3, r30
/* 81400594 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400598 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8140059C | 48 00 00 F0 */	b .L_8140068C
.L_814005A0:
/* 814005A0 | A0 7A 00 02 */	lhz r3, 0x2(r26)
/* 814005A4 | 48 0B 35 C9 */	bl SONtoHs
/* 814005A8 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814005AC | 40 82 00 18 */	bne .L_814005C4
/* 814005B0 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814005B4 | 7F C3 F3 78 */	mr r3, r30
/* 814005B8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814005BC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814005C0 | 48 00 00 CC */	b .L_8140068C
.L_814005C4:
/* 814005C4 | 88 1A 00 00 */	lbz r0, 0x0(r26)
/* 814005C8 | 28 00 00 07 */	cmplwi r0, 0x7
/* 814005CC | 40 82 00 4C */	bne .L_81400618
/* 814005D0 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 814005D4 | 48 0B 35 95 */	bl SONtoHl
/* 814005D8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814005DC | 28 00 FF FE */	cmplwi r0, 0xfffe
/* 814005E0 | 40 82 00 10 */	bne .L_814005F0
/* 814005E4 | 38 00 00 14 */	li r0, 0x14
/* 814005E8 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 814005EC | 48 00 00 24 */	b .L_81400610
.L_814005F0:
/* 814005F0 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 814005F4 | 48 0B 35 75 */	bl SONtoHl
/* 814005F8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814005FC | 38 60 00 18 */	li r3, 0x18
/* 81400600 | 28 00 FF FD */	cmplwi r0, 0xfffd
/* 81400604 | 40 82 00 08 */	bne .L_8140060C
/* 81400608 | 38 60 00 15 */	li r3, 0x15
.L_8140060C:
/* 8140060C | 90 6D AC 44 */	stw r3, lbl_81698C84@sda21(r0)
.L_81400610:
/* 81400610 | 38 60 FF FF */	li r3, -0x1
/* 81400614 | 48 00 00 78 */	b .L_8140068C
.L_81400618:
/* 81400618 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 8140061C | 38 80 00 00 */	li r4, 0x0
/* 81400620 | 38 A0 06 A0 */	li r5, 0x6a0
/* 81400624 | 4B F2 FD 11 */	bl memset
/* 81400628 | A0 78 00 16 */	lhz r3, 0x16(r24)
/* 8140062C | 48 0B 35 41 */	bl SONtoHs
/* 81400630 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81400634 | 7F 44 D3 78 */	mr r4, r26
/* 81400638 | 38 DC 00 20 */	addi r6, r28, 0x20
/* 8140063C | 38 FC 06 C0 */	addi r7, r28, 0x6c0
/* 81400640 | 38 60 00 00 */	li r3, 0x0
/* 81400644 | 48 00 0D 69 */	bl ATERM_814013AC
/* 81400648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140064C | 40 80 00 18 */	bge .L_81400664
/* 81400650 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81400654 | 7F C3 F3 78 */	mr r3, r30
/* 81400658 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8140065C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81400660 | 48 00 00 2C */	b .L_8140068C
.L_81400664:
/* 81400664 | 38 9C 00 00 */	addi r4, r28, 0x0
/* 81400668 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 8140066C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81400670 | 7C 60 00 39 */	and. r0, r3, r0
/* 81400674 | 40 82 00 0C */	bne .L_81400680
/* 81400678 | 7F C3 F3 78 */	mr r3, r30
/* 8140067C | 48 00 00 10 */	b .L_8140068C
.L_81400680:
/* 81400680 | 38 00 00 00 */	li r0, 0x0
/* 81400684 | 38 60 00 02 */	li r3, 0x2
/* 81400688 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8140068C:
/* 8140068C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81400690 | 48 1F 8E 71 */	bl _restgpr_24
/* 81400694 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81400698 | 7C 08 03 A6 */	mtlr r0
/* 8140069C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814006A0 | 4E 80 00 20 */	blr
.endfn ATERM_814004D0

# .text:0x2428 | 0x814006A4 | size: 0x18C
.fn ATERM_814006A4, global
/* 814006A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814006A8 | 7C 08 02 A6 */	mflr r0
/* 814006AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814006B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814006B4 | 48 1F 8E 09 */	bl _savegpr_26
/* 814006B8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814006BC | 7C 7A 1B 78 */	mr r26, r3
/* 814006C0 | 7C 9B 23 78 */	mr r27, r4
/* 814006C4 | 7C BC 2B 78 */	mr r28, r5
/* 814006C8 | 7C DD 33 78 */	mr r29, r6
/* 814006CC | 41 82 00 14 */	beq .L_814006E0
/* 814006D0 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 814006D4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814006D8 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814006DC | 48 00 01 3C */	b .L_81400818
.L_814006E0:
/* 814006E0 | 3B C0 00 00 */	li r30, 0x0
/* 814006E4 | 38 6D 91 C4 */	li r3, lbl_81697204@sda21
/* 814006E8 | 48 1F 88 15 */	bl strlen
/* 814006EC | 7C 66 1B 78 */	mr r6, r3
/* 814006F0 | 38 7B 00 1C */	addi r3, r27, 0x1c
/* 814006F4 | 38 80 00 08 */	li r4, 0x8
/* 814006F8 | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 814006FC | 48 00 17 85 */	bl ATERM_81401E80
/* 81400700 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81400704 | 38 9B 00 1C */	addi r4, r27, 0x1c
/* 81400708 | 38 A0 00 06 */	li r5, 0x6
/* 8140070C | 48 1F DA C9 */	bl memcmp
/* 81400710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400714 | 41 82 00 0C */	beq .L_81400720
/* 81400718 | 3B C0 FF FF */	li r30, -0x1
/* 8140071C | 48 00 00 30 */	b .L_8140074C
.L_81400720:
/* 81400720 | A0 7B 00 22 */	lhz r3, 0x22(r27)
/* 81400724 | 48 0B 34 49 */	bl SONtoHs
/* 81400728 | 7C 7F 1B 78 */	mr r31, r3
/* 8140072C | A0 7D 00 16 */	lhz r3, 0x16(r29)
/* 81400730 | 48 0B 34 3D */	bl SONtoHs
/* 81400734 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81400738 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8140073C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81400740 | 7C 03 00 00 */	cmpw r3, r0
/* 81400744 | 41 82 00 08 */	beq .L_8140074C
/* 81400748 | 3B C0 FF FE */	li r30, -0x2
.L_8140074C:
/* 8140074C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81400750 | 40 80 00 18 */	bge .L_81400768
/* 81400754 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81400758 | 7F 43 D3 78 */	mr r3, r26
/* 8140075C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400760 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81400764 | 48 00 00 B4 */	b .L_81400818
.L_81400768:
/* 81400768 | 88 1B 00 24 */	lbz r0, 0x24(r27)
/* 8140076C | 28 00 00 07 */	cmplwi r0, 0x7
/* 81400770 | 41 82 00 18 */	beq .L_81400788
/* 81400774 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81400778 | 7F 43 D3 78 */	mr r3, r26
/* 8140077C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81400780 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81400784 | 48 00 00 94 */	b .L_81400818
.L_81400788:
/* 81400788 | A0 7B 00 26 */	lhz r3, 0x26(r27)
/* 8140078C | 48 0B 33 E1 */	bl SONtoHs
/* 81400790 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81400794 | 40 82 00 18 */	bne .L_814007AC
/* 81400798 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8140079C | 7F 43 D3 78 */	mr r3, r26
/* 814007A0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814007A4 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814007A8 | 48 00 00 70 */	b .L_81400818
.L_814007AC:
/* 814007AC | 80 7B 00 28 */	lwz r3, 0x28(r27)
/* 814007B0 | 48 0B 33 B9 */	bl SONtoHl
/* 814007B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814007B8 | 40 82 00 0C */	bne .L_814007C4
/* 814007BC | 38 60 00 64 */	li r3, 0x64
/* 814007C0 | 48 00 00 58 */	b .L_81400818
.L_814007C4:
/* 814007C4 | 80 7B 00 28 */	lwz r3, 0x28(r27)
/* 814007C8 | 48 0B 33 A1 */	bl SONtoHl
/* 814007CC | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814007D0 | 28 00 FF FE */	cmplwi r0, 0xfffe
/* 814007D4 | 40 82 00 14 */	bne .L_814007E8
/* 814007D8 | 38 00 00 14 */	li r0, 0x14
/* 814007DC | 38 60 FF FF */	li r3, -0x1
/* 814007E0 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 814007E4 | 48 00 00 34 */	b .L_81400818
.L_814007E8:
/* 814007E8 | 80 7B 00 28 */	lwz r3, 0x28(r27)
/* 814007EC | 48 0B 33 7D */	bl SONtoHl
/* 814007F0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814007F4 | 28 00 FF FD */	cmplwi r0, 0xfffd
/* 814007F8 | 40 82 00 14 */	bne .L_8140080C
/* 814007FC | 38 00 00 15 */	li r0, 0x15
/* 81400800 | 38 60 FF FF */	li r3, -0x1
/* 81400804 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81400808 | 48 00 00 10 */	b .L_81400818
.L_8140080C:
/* 8140080C | 38 00 00 18 */	li r0, 0x18
/* 81400810 | 38 60 FF FF */	li r3, -0x1
/* 81400814 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
.L_81400818:
/* 81400818 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140081C | 48 1F 8C ED */	bl _restgpr_26
/* 81400820 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81400824 | 7C 08 03 A6 */	mtlr r0
/* 81400828 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140082C | 4E 80 00 20 */	blr
.endfn ATERM_814006A4

# .text:0x25B4 | 0x81400830 | size: 0x504
.fn ATERM_81400830, global
/* 81400830 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81400834 | 7C 08 02 A6 */	mflr r0
/* 81400838 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8140083C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81400840 | 48 1F 8C 7D */	bl _savegpr_26
/* 81400844 | 7C 7A 1B 78 */	mr r26, r3
/* 81400848 | 3B A3 00 18 */	addi r29, r3, 0x18
/* 8140084C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81400850 | 38 A0 00 08 */	li r5, 0x8
/* 81400854 | 38 9A 00 10 */	addi r4, r26, 0x10
/* 81400858 | 4B F2 F9 D9 */	bl memcpy
/* 8140085C | 38 6D 91 C4 */	li r3, lbl_81697204@sda21
/* 81400860 | 48 1F 86 9D */	bl strlen
/* 81400864 | 7C 66 1B 78 */	mr r6, r3
/* 81400868 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140086C | 38 80 00 08 */	li r4, 0x8
/* 81400870 | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 81400874 | 48 00 16 0D */	bl ATERM_81401E80
/* 81400878 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8140087C | 40 82 00 14 */	bne .L_81400890
/* 81400880 | 38 00 00 02 */	li r0, 0x2
/* 81400884 | 38 60 FF 9C */	li r3, -0x64
/* 81400888 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 8140088C | 48 00 04 90 */	b .L_81400D1C
.L_81400890:
/* 81400890 | A0 7A 00 06 */	lhz r3, 0x6(r26)
/* 81400894 | 48 0B 32 D9 */	bl SONtoHs
/* 81400898 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8140089C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814008A0 | 48 00 04 95 */	bl ATERM_81400D34
/* 814008A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814008A8 | 41 82 00 08 */	beq .L_814008B0
/* 814008AC | 48 00 04 70 */	b .L_81400D1C
.L_814008B0:
/* 814008B0 | A0 7A 00 06 */	lhz r3, 0x6(r26)
/* 814008B4 | 48 0B 32 B9 */	bl SONtoHs
/* 814008B8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814008BC | 28 00 10 00 */	cmplwi r0, 0x1000
/* 814008C0 | 40 82 00 14 */	bne .L_814008D4
/* 814008C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814008C8 | 38 6D AC 38 */	li r3, lbl_81698C78@sda21
/* 814008CC | 38 A0 00 08 */	li r5, 0x8
/* 814008D0 | 4B F2 F9 61 */	bl memcpy
.L_814008D4:
/* 814008D4 | A0 7A 00 0C */	lhz r3, 0xc(r26)
/* 814008D8 | 48 0B 32 95 */	bl SONtoHs
/* 814008DC | 54 60 07 3F */	clrlwi. r0, r3, 28
/* 814008E0 | 40 82 00 0C */	bne .L_814008EC
/* 814008E4 | 38 60 00 00 */	li r3, 0x0
/* 814008E8 | 48 00 04 34 */	b .L_81400D1C
.L_814008EC:
/* 814008EC | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814008F0 | 48 0B 32 7D */	bl SONtoHs
/* 814008F4 | 54 7B 04 3E */	clrlwi r27, r3, 16
/* 814008F8 | 7F 63 DB 78 */	mr r3, r27
/* 814008FC | 4B FF C9 19 */	bl AOSSi_Alloc
/* 81400900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400904 | 7C 7C 1B 78 */	mr r28, r3
/* 81400908 | 40 82 00 14 */	bne .L_8140091C
/* 8140090C | 38 00 00 02 */	li r0, 0x2
/* 81400910 | 38 60 00 64 */	li r3, 0x64
/* 81400914 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81400918 | 48 00 04 04 */	b .L_81400D1C
.L_8140091C:
/* 8140091C | 8B FA 00 0E */	lbz r31, 0xe(r26)
/* 81400920 | 7F 63 DB 78 */	mr r3, r27
/* 81400924 | 4B FF C8 F1 */	bl AOSSi_Alloc
/* 81400928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140092C | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81400930 | 40 82 00 14 */	bne .L_81400944
/* 81400934 | 38 00 00 02 */	li r0, 0x2
/* 81400938 | 38 60 FF FF */	li r3, -0x1
/* 8140093C | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81400940 | 48 00 03 8C */	b .L_81400CCC
.L_81400944:
/* 81400944 | 3F C0 81 0C */	lis r30, ATERM_810BE838@ha
/* 81400948 | 38 9D 00 02 */	addi r4, r29, 0x2
/* 8140094C | 38 7E E8 38 */	addi r3, r30, ATERM_810BE838@l
/* 81400950 | 38 A0 00 02 */	li r5, 0x2
/* 81400954 | 4B F2 F8 DD */	bl memcpy
/* 81400958 | 3B DE E8 38 */	addi r30, r30, ATERM_810BE838@l
/* 8140095C | 38 8D AC 38 */	li r4, lbl_81698C78@sda21
/* 81400960 | 38 7E 00 02 */	addi r3, r30, 0x2
/* 81400964 | 38 A0 00 08 */	li r5, 0x8
/* 81400968 | 4B F2 F8 C9 */	bl memcpy
/* 8140096C | 7F C4 F3 78 */	mr r4, r30
/* 81400970 | 7F 66 DB 78 */	mr r6, r27
/* 81400974 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81400978 | 38 A0 00 0A */	li r5, 0xa
/* 8140097C | 48 00 13 21 */	bl ATERM_81401C9C
/* 81400980 | 28 1B 00 00 */	cmplwi r27, 0x0
/* 81400984 | 7F 85 E3 78 */	mr r5, r28
/* 81400988 | 7F 64 DB 78 */	mr r4, r27
/* 8140098C | 38 7D 00 04 */	addi r3, r29, 0x4
/* 81400990 | 40 81 01 90 */	ble .L_81400B20
/* 81400994 | 57 60 F8 7F */	srwi. r0, r27, 1
/* 81400998 | 7C 09 03 A6 */	mtctr r0
/* 8140099C | 41 82 01 00 */	beq .L_81400A9C
.L_814009A0:
/* 814009A0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814009A4 | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 814009A8 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 814009AC | 81 01 00 18 */	lwz r8, 0x18(r1)
/* 814009B0 | 7C 86 3B 96 */	divwu r4, r6, r7
/* 814009B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814009B8 | 7C 84 39 D6 */	mullw r4, r4, r7
/* 814009BC | 7C 84 30 50 */	subf r4, r4, r6
/* 814009C0 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 814009C4 | 7C C8 48 AE */	lbzx r6, r8, r9
/* 814009C8 | 7C 86 02 14 */	add r4, r6, r0
/* 814009CC | 7C 04 3B 96 */	divwu r0, r4, r7
/* 814009D0 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 814009D4 | 7C 00 20 50 */	subf r0, r0, r4
/* 814009D8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814009DC | 7C 08 20 AE */	lbzx r0, r8, r4
/* 814009E0 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 814009E4 | 7C E6 02 14 */	add r7, r6, r0
/* 814009E8 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814009EC | 7C C8 21 AE */	stbx r6, r8, r4
/* 814009F0 | 7C 08 49 AE */	stbx r0, r8, r9
/* 814009F4 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 814009F8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814009FC | 7C 87 33 96 */	divwu r4, r7, r6
/* 81400A00 | 7C 84 31 D6 */	mullw r4, r4, r6
/* 81400A04 | 7C 84 38 50 */	subf r4, r4, r7
/* 81400A08 | 7C 88 20 AE */	lbzx r4, r8, r4
/* 81400A0C | 7C 80 02 78 */	xor r0, r4, r0
/* 81400A10 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 81400A14 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81400A18 | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 81400A1C | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81400A20 | 81 01 00 18 */	lwz r8, 0x18(r1)
/* 81400A24 | 7C 86 3B 96 */	divwu r4, r6, r7
/* 81400A28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81400A2C | 7C 84 39 D6 */	mullw r4, r4, r7
/* 81400A30 | 7C 84 30 50 */	subf r4, r4, r6
/* 81400A34 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 81400A38 | 7C C8 48 AE */	lbzx r6, r8, r9
/* 81400A3C | 7C 86 02 14 */	add r4, r6, r0
/* 81400A40 | 7C 04 3B 96 */	divwu r0, r4, r7
/* 81400A44 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 81400A48 | 7C 00 20 50 */	subf r0, r0, r4
/* 81400A4C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81400A50 | 7C 08 20 AE */	lbzx r0, r8, r4
/* 81400A54 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 81400A58 | 7C E6 02 14 */	add r7, r6, r0
/* 81400A5C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81400A60 | 7C C8 21 AE */	stbx r6, r8, r4
/* 81400A64 | 7C 08 49 AE */	stbx r0, r8, r9
/* 81400A68 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 81400A6C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81400A70 | 38 63 00 02 */	addi r3, r3, 0x2
/* 81400A74 | 7C 87 33 96 */	divwu r4, r7, r6
/* 81400A78 | 7C 84 31 D6 */	mullw r4, r4, r6
/* 81400A7C | 7C 84 38 50 */	subf r4, r4, r7
/* 81400A80 | 7C 88 20 AE */	lbzx r4, r8, r4
/* 81400A84 | 7C 80 02 78 */	xor r0, r4, r0
/* 81400A88 | 98 05 00 01 */	stb r0, 0x1(r5)
/* 81400A8C | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81400A90 | 42 00 FF 10 */	bdnz .L_814009A0
/* 81400A94 | 73 64 00 01 */	andi. r4, r27, 0x1
/* 81400A98 | 41 82 00 88 */	beq .L_81400B20
.L_81400A9C:
/* 81400A9C | 7C 89 03 A6 */	mtctr r4
.L_81400AA0:
/* 81400AA0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81400AA4 | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 81400AA8 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81400AAC | 81 01 00 18 */	lwz r8, 0x18(r1)
/* 81400AB0 | 7C 86 3B 96 */	divwu r4, r6, r7
/* 81400AB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81400AB8 | 7C 84 39 D6 */	mullw r4, r4, r7
/* 81400ABC | 7C 84 30 50 */	subf r4, r4, r6
/* 81400AC0 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 81400AC4 | 7C C8 48 AE */	lbzx r6, r8, r9
/* 81400AC8 | 7C 86 02 14 */	add r4, r6, r0
/* 81400ACC | 7C 04 3B 96 */	divwu r0, r4, r7
/* 81400AD0 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 81400AD4 | 7C 00 20 50 */	subf r0, r0, r4
/* 81400AD8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81400ADC | 7C 08 20 AE */	lbzx r0, r8, r4
/* 81400AE0 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 81400AE4 | 7C E6 02 14 */	add r7, r6, r0
/* 81400AE8 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81400AEC | 7C C8 21 AE */	stbx r6, r8, r4
/* 81400AF0 | 7C 08 49 AE */	stbx r0, r8, r9
/* 81400AF4 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 81400AF8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81400AFC | 38 63 00 01 */	addi r3, r3, 0x1
/* 81400B00 | 7C 87 33 96 */	divwu r4, r7, r6
/* 81400B04 | 7C 84 31 D6 */	mullw r4, r4, r6
/* 81400B08 | 7C 84 38 50 */	subf r4, r4, r7
/* 81400B0C | 7C 88 20 AE */	lbzx r4, r8, r4
/* 81400B10 | 7C 80 02 78 */	xor r0, r4, r0
/* 81400B14 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 81400B18 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81400B1C | 42 00 FF 84 */	bdnz .L_81400AA0
.L_81400B20:
/* 81400B20 | 3C 80 81 0C */	lis r4, ATERM_810BE8A0@ha
/* 81400B24 | 3B C0 FF FF */	li r30, -0x1
/* 81400B28 | 38 84 E8 A0 */	addi r4, r4, ATERM_810BE8A0@l
/* 81400B2C | 38 60 00 00 */	li r3, 0x0
/* 81400B30 | 48 00 12 91 */	bl ATERM_81401DC0
/* 81400B34 | 2C 9B 00 00 */	cmpwi cr1, r27, 0x0
/* 81400B38 | 38 80 00 00 */	li r4, 0x0
/* 81400B3C | 40 85 01 58 */	ble cr1, .L_81400C94
/* 81400B40 | 2C 1B 00 08 */	cmpwi r27, 0x8
/* 81400B44 | 38 BB FF F8 */	subi r5, r27, 0x8
/* 81400B48 | 40 81 01 10 */	ble .L_81400C58
/* 81400B4C | 38 C0 00 00 */	li r6, 0x0
/* 81400B50 | 41 84 00 18 */	blt cr1, .L_81400B68
/* 81400B54 | 3C 60 80 00 */	lis r3, 0x8000
/* 81400B58 | 38 03 FF FE */	subi r0, r3, 0x2
/* 81400B5C | 7C 1B 00 00 */	cmpw r27, r0
/* 81400B60 | 41 81 00 08 */	bgt .L_81400B68
/* 81400B64 | 38 C0 00 01 */	li r6, 0x1
.L_81400B68:
/* 81400B68 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81400B6C | 41 82 00 EC */	beq .L_81400C58
/* 81400B70 | 38 05 00 07 */	addi r0, r5, 0x7
/* 81400B74 | 3C 60 81 0C */	lis r3, ATERM_810BE8A0@ha
/* 81400B78 | 54 00 E8 FE */	srwi r0, r0, 3
/* 81400B7C | 38 63 E8 A0 */	addi r3, r3, ATERM_810BE8A0@l
/* 81400B80 | 7C 09 03 A6 */	mtctr r0
/* 81400B84 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81400B88 | 40 81 00 D0 */	ble .L_81400C58
.L_81400B8C:
/* 81400B8C | 7C BC 20 AE */	lbzx r5, r28, r4
/* 81400B90 | 7D 9C 22 14 */	add r12, r28, r4
/* 81400B94 | 57 C6 C2 3E */	srwi r6, r30, 8
/* 81400B98 | 88 0C 00 01 */	lbz r0, 0x1(r12)
/* 81400B9C | 7F C5 2A 78 */	xor r5, r30, r5
/* 81400BA0 | 89 2C 00 02 */	lbz r9, 0x2(r12)
/* 81400BA4 | 54 A5 15 BA */	clrlslwi r5, r5, 24, 2
/* 81400BA8 | 89 0C 00 03 */	lbz r8, 0x3(r12)
/* 81400BAC | 7C A3 28 2E */	lwzx r5, r3, r5
/* 81400BB0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81400BB4 | 88 EC 00 04 */	lbz r7, 0x4(r12)
/* 81400BB8 | 7C CA 2A 78 */	xor r10, r6, r5
/* 81400BBC | 88 CC 00 05 */	lbz r6, 0x5(r12)
/* 81400BC0 | 7D 40 02 78 */	xor r0, r10, r0
/* 81400BC4 | 88 AC 00 06 */	lbz r5, 0x6(r12)
/* 81400BC8 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 81400BCC | 55 4B C2 3E */	srwi r11, r10, 8
/* 81400BD0 | 7D 43 00 2E */	lwzx r10, r3, r0
/* 81400BD4 | 88 0C 00 07 */	lbz r0, 0x7(r12)
/* 81400BD8 | 7D 6A 52 78 */	xor r10, r11, r10
/* 81400BDC | 7D 49 4A 78 */	xor r9, r10, r9
/* 81400BE0 | 55 29 15 BA */	clrlslwi r9, r9, 24, 2
/* 81400BE4 | 55 4A C2 3E */	srwi r10, r10, 8
/* 81400BE8 | 7D 23 48 2E */	lwzx r9, r3, r9
/* 81400BEC | 7D 49 4A 78 */	xor r9, r10, r9
/* 81400BF0 | 7D 28 42 78 */	xor r8, r9, r8
/* 81400BF4 | 55 08 15 BA */	clrlslwi r8, r8, 24, 2
/* 81400BF8 | 55 29 C2 3E */	srwi r9, r9, 8
/* 81400BFC | 7D 03 40 2E */	lwzx r8, r3, r8
/* 81400C00 | 7D 28 42 78 */	xor r8, r9, r8
/* 81400C04 | 7D 07 3A 78 */	xor r7, r8, r7
/* 81400C08 | 54 E7 15 BA */	clrlslwi r7, r7, 24, 2
/* 81400C0C | 55 08 C2 3E */	srwi r8, r8, 8
/* 81400C10 | 7C E3 38 2E */	lwzx r7, r3, r7
/* 81400C14 | 7D 07 3A 78 */	xor r7, r8, r7
/* 81400C18 | 7C E6 32 78 */	xor r6, r7, r6
/* 81400C1C | 54 C6 15 BA */	clrlslwi r6, r6, 24, 2
/* 81400C20 | 54 E7 C2 3E */	srwi r7, r7, 8
/* 81400C24 | 7C C3 30 2E */	lwzx r6, r3, r6
/* 81400C28 | 7C E6 32 78 */	xor r6, r7, r6
/* 81400C2C | 7C C5 2A 78 */	xor r5, r6, r5
/* 81400C30 | 54 A5 15 BA */	clrlslwi r5, r5, 24, 2
/* 81400C34 | 54 C6 C2 3E */	srwi r6, r6, 8
/* 81400C38 | 7C A3 28 2E */	lwzx r5, r3, r5
/* 81400C3C | 7C C5 2A 78 */	xor r5, r6, r5
/* 81400C40 | 7C A0 02 78 */	xor r0, r5, r0
/* 81400C44 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 81400C48 | 54 A5 C2 3E */	srwi r5, r5, 8
/* 81400C4C | 7C 03 00 2E */	lwzx r0, r3, r0
/* 81400C50 | 7C BE 02 78 */	xor r30, r5, r0
/* 81400C54 | 42 00 FF 38 */	bdnz .L_81400B8C
.L_81400C58:
/* 81400C58 | 3C A0 81 0C */	lis r5, ATERM_810BE8A0@ha
/* 81400C5C | 7C 04 D8 50 */	subf r0, r4, r27
/* 81400C60 | 38 A5 E8 A0 */	addi r5, r5, ATERM_810BE8A0@l
/* 81400C64 | 7C 7C 22 14 */	add r3, r28, r4
/* 81400C68 | 7C 09 03 A6 */	mtctr r0
/* 81400C6C | 7C 04 D8 00 */	cmpw r4, r27
/* 81400C70 | 40 80 00 24 */	bge .L_81400C94
.L_81400C74:
/* 81400C74 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81400C78 | 57 C4 C2 3E */	srwi r4, r30, 8
/* 81400C7C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81400C80 | 7F C0 02 78 */	xor r0, r30, r0
/* 81400C84 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 81400C88 | 7C 05 00 2E */	lwzx r0, r5, r0
/* 81400C8C | 7C 9E 02 78 */	xor r30, r4, r0
/* 81400C90 | 42 00 FF E4 */	bdnz .L_81400C74
.L_81400C94:
/* 81400C94 | 38 00 FF FF */	li r0, -0x1
/* 81400C98 | 7F C0 02 78 */	xor r0, r30, r0
/* 81400C9C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81400CA0 | 7C 00 F8 40 */	cmplw r0, r31
/* 81400CA4 | 41 82 00 1C */	beq .L_81400CC0
/* 81400CA8 | 38 00 00 12 */	li r0, 0x12
/* 81400CAC | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81400CB0 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81400CB4 | 4B FF C5 85 */	bl AOSSi_Free
/* 81400CB8 | 38 60 FF FF */	li r3, -0x1
/* 81400CBC | 48 00 00 10 */	b .L_81400CCC
.L_81400CC0:
/* 81400CC0 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81400CC4 | 4B FF C5 75 */	bl AOSSi_Free
/* 81400CC8 | 38 60 00 00 */	li r3, 0x0
.L_81400CCC:
/* 81400CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400CD0 | 40 80 00 24 */	bge .L_81400CF4
/* 81400CD4 | 7F 83 E3 78 */	mr r3, r28
/* 81400CD8 | 4B FF C5 61 */	bl AOSSi_Free
/* 81400CDC | 80 0D AC 44 */	lwz r0, lbl_81698C84@sda21(r0)
/* 81400CE0 | 38 60 00 C8 */	li r3, 0xc8
/* 81400CE4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81400CE8 | 40 82 00 34 */	bne .L_81400D1C
/* 81400CEC | 38 60 00 64 */	li r3, 0x64
/* 81400CF0 | 48 00 00 2C */	b .L_81400D1C
.L_81400CF4:
/* 81400CF4 | 7F A3 EB 78 */	mr r3, r29
/* 81400CF8 | 7F 84 E3 78 */	mr r4, r28
/* 81400CFC | 7F 65 DB 78 */	mr r5, r27
/* 81400D00 | 4B F2 F5 31 */	bl memcpy
/* 81400D04 | 7F 63 DB 78 */	mr r3, r27
/* 81400D08 | 48 0B 2E 71 */	bl SOHtoNs
/* 81400D0C | B0 7A 00 0A */	sth r3, 0xa(r26)
/* 81400D10 | 7F 83 E3 78 */	mr r3, r28
/* 81400D14 | 4B FF C5 25 */	bl AOSSi_Free
/* 81400D18 | 38 60 00 00 */	li r3, 0x0
.L_81400D1C:
/* 81400D1C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81400D20 | 48 1F 87 E9 */	bl _restgpr_26
/* 81400D24 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81400D28 | 7C 08 03 A6 */	mtlr r0
/* 81400D2C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81400D30 | 4E 80 00 20 */	blr
.endfn ATERM_81400830

# .text:0x2AB8 | 0x81400D34 | size: 0xD8
.fn ATERM_81400D34, global
/* 81400D34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81400D38 | 7C 08 02 A6 */	mflr r0
/* 81400D3C | 38 AD AC 38 */	li r5, lbl_81698C78@sda21
/* 81400D40 | 38 C0 00 00 */	li r6, 0x0
/* 81400D44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81400D48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81400D4C | 3B E0 00 00 */	li r31, 0x0
/* 81400D50 | 88 0D AC 38 */	lbz r0, lbl_81698C78@sda21(r0)
/* 81400D54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400D58 | 41 82 00 0C */	beq .L_81400D64
/* 81400D5C | 38 C0 00 01 */	li r6, 0x1
/* 81400D60 | 48 00 00 64 */	b .L_81400DC4
.L_81400D64:
/* 81400D64 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 81400D68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400D6C | 41 82 00 0C */	beq .L_81400D78
/* 81400D70 | 38 C0 00 01 */	li r6, 0x1
/* 81400D74 | 48 00 00 50 */	b .L_81400DC4
.L_81400D78:
/* 81400D78 | 88 05 00 02 */	lbz r0, 0x2(r5)
/* 81400D7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400D80 | 41 82 00 0C */	beq .L_81400D8C
/* 81400D84 | 38 C0 00 01 */	li r6, 0x1
/* 81400D88 | 48 00 00 3C */	b .L_81400DC4
.L_81400D8C:
/* 81400D8C | 88 05 00 03 */	lbz r0, 0x3(r5)
/* 81400D90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400D94 | 41 82 00 0C */	beq .L_81400DA0
/* 81400D98 | 38 C0 00 01 */	li r6, 0x1
/* 81400D9C | 48 00 00 28 */	b .L_81400DC4
.L_81400DA0:
/* 81400DA0 | 88 05 00 04 */	lbz r0, 0x4(r5)
/* 81400DA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400DA8 | 41 82 00 0C */	beq .L_81400DB4
/* 81400DAC | 38 C0 00 01 */	li r6, 0x1
/* 81400DB0 | 48 00 00 14 */	b .L_81400DC4
.L_81400DB4:
/* 81400DB4 | 88 05 00 05 */	lbz r0, 0x5(r5)
/* 81400DB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400DBC | 41 82 00 08 */	beq .L_81400DC4
/* 81400DC0 | 38 C0 00 01 */	li r6, 0x1
.L_81400DC4:
/* 81400DC4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81400DC8 | 41 82 00 20 */	beq .L_81400DE8
/* 81400DCC | 38 6D AC 38 */	li r3, lbl_81698C78@sda21
/* 81400DD0 | 38 A0 00 06 */	li r5, 0x6
/* 81400DD4 | 48 1F D4 01 */	bl memcmp
/* 81400DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81400DDC | 41 82 00 18 */	beq .L_81400DF4
/* 81400DE0 | 3B E0 00 01 */	li r31, 0x1
/* 81400DE4 | 48 00 00 10 */	b .L_81400DF4
.L_81400DE8:
/* 81400DE8 | 28 03 10 00 */	cmplwi r3, 0x1000
/* 81400DEC | 41 82 00 08 */	beq .L_81400DF4
/* 81400DF0 | 3B E0 00 02 */	li r31, 0x2
.L_81400DF4:
/* 81400DF4 | 7F E3 FB 78 */	mr r3, r31
/* 81400DF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81400DFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81400E00 | 7C 08 03 A6 */	mtlr r0
/* 81400E04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81400E08 | 4E 80 00 20 */	blr
.endfn ATERM_81400D34

# .text:0x2B90 | 0x81400E0C | size: 0x2F8
.fn ATERM_81400E0C, global
/* 81400E0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81400E10 | 7C 08 02 A6 */	mflr r0
/* 81400E14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81400E18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81400E1C | 48 1F 86 A5 */	bl _savegpr_27
/* 81400E20 | 7C 9D 23 78 */	mr r29, r4
/* 81400E24 | 7C 7C 1B 78 */	mr r28, r3
/* 81400E28 | 7F A3 EB 78 */	mr r3, r29
/* 81400E2C | 38 80 00 00 */	li r4, 0x0
/* 81400E30 | 38 A0 01 04 */	li r5, 0x104
/* 81400E34 | 4B F2 F5 01 */	bl memset
/* 81400E38 | 3C 60 81 0C */	lis r3, ATERM_810BDEF8@ha
/* 81400E3C | 7F 9E E3 78 */	mr r30, r28
/* 81400E40 | 3F E0 80 00 */	lis r31, 0x8000
/* 81400E44 | 3B 63 DE F8 */	addi r27, r3, ATERM_810BDEF8@l
.L_81400E48:
/* 81400E48 | A0 7E 00 02 */	lhz r3, 0x2(r30)
/* 81400E4C | 48 0B 2D 21 */	bl SONtoHs
/* 81400E50 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81400E54 | 2C 85 00 00 */	cmpwi cr1, r5, 0x0
/* 81400E58 | 41 85 00 0C */	bgt cr1, .L_81400E64
/* 81400E5C | 38 60 FF FF */	li r3, -0x1
/* 81400E60 | 48 00 02 8C */	b .L_814010EC
.L_81400E64:
/* 81400E64 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81400E68 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81400E6C | 41 82 00 50 */	beq .L_81400EBC
/* 81400E70 | 40 80 00 14 */	bge .L_81400E84
/* 81400E74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81400E78 | 41 82 00 24 */	beq .L_81400E9C
/* 81400E7C | 40 80 00 30 */	bge .L_81400EAC
/* 81400E80 | 48 00 02 44 */	b .L_814010C4
.L_81400E84:
/* 81400E84 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81400E88 | 41 82 01 4C */	beq .L_81400FD4
/* 81400E8C | 40 80 02 38 */	bge .L_814010C4
/* 81400E90 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81400E94 | 40 80 00 50 */	bge .L_81400EE4
/* 81400E98 | 48 00 00 34 */	b .L_81400ECC
.L_81400E9C:
/* 81400E9C | 7F A3 EB 78 */	mr r3, r29
/* 81400EA0 | 38 9E 00 06 */	addi r4, r30, 0x6
/* 81400EA4 | 4B F2 F3 8D */	bl memcpy
/* 81400EA8 | 48 00 02 24 */	b .L_814010CC
.L_81400EAC:
/* 81400EAC | 38 7D 00 80 */	addi r3, r29, 0x80
/* 81400EB0 | 38 9E 00 06 */	addi r4, r30, 0x6
/* 81400EB4 | 4B F2 F3 7D */	bl memcpy
/* 81400EB8 | 48 00 02 14 */	b .L_814010CC
.L_81400EBC:
/* 81400EBC | 38 7D 01 00 */	addi r3, r29, 0x100
/* 81400EC0 | 38 9E 00 06 */	addi r4, r30, 0x6
/* 81400EC4 | 4B F2 F3 6D */	bl memcpy
/* 81400EC8 | 48 00 02 04 */	b .L_814010CC
.L_81400ECC:
/* 81400ECC | 88 7E 00 06 */	lbz r3, 0x6(r30)
/* 81400ED0 | 48 0B 2C 9D */	bl SONtoHs
/* 81400ED4 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81400ED8 | 41 81 01 F4 */	bgt .L_814010CC
/* 81400EDC | 38 60 FF FE */	li r3, -0x2
/* 81400EE0 | 48 00 02 0C */	b .L_814010EC
.L_81400EE4:
/* 81400EE4 | 39 3E 00 06 */	addi r9, r30, 0x6
/* 81400EE8 | 38 60 00 00 */	li r3, 0x0
/* 81400EEC | 39 40 00 00 */	li r10, 0x0
/* 81400EF0 | 40 85 00 D8 */	ble cr1, .L_81400FC8
/* 81400EF4 | 2C 05 00 08 */	cmpwi r5, 0x8
/* 81400EF8 | 38 85 FF F8 */	subi r4, r5, 0x8
/* 81400EFC | 40 81 00 A4 */	ble .L_81400FA0
/* 81400F00 | 38 C0 00 00 */	li r6, 0x0
/* 81400F04 | 41 84 00 14 */	blt cr1, .L_81400F18
/* 81400F08 | 38 1F FF FE */	subi r0, r31, 0x2
/* 81400F0C | 7C 05 00 00 */	cmpw r5, r0
/* 81400F10 | 41 81 00 08 */	bgt .L_81400F18
/* 81400F14 | 38 C0 00 01 */	li r6, 0x1
.L_81400F18:
/* 81400F18 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81400F1C | 41 82 00 84 */	beq .L_81400FA0
/* 81400F20 | 38 04 00 07 */	addi r0, r4, 0x7
/* 81400F24 | 54 00 E8 FE */	srwi r0, r0, 3
/* 81400F28 | 7C 09 03 A6 */	mtctr r0
/* 81400F2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81400F30 | 40 81 00 70 */	ble .L_81400FA0
.L_81400F34:
/* 81400F34 | 88 09 00 00 */	lbz r0, 0x0(r9)
/* 81400F38 | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F3C | 88 89 00 01 */	lbz r4, 0x1(r9)
/* 81400F40 | 39 4A 00 08 */	addi r10, r10, 0x8
/* 81400F44 | 7C 63 02 14 */	add r3, r3, r0
/* 81400F48 | 88 09 00 02 */	lbz r0, 0x2(r9)
/* 81400F4C | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F50 | 89 09 00 03 */	lbz r8, 0x3(r9)
/* 81400F54 | 7C 63 22 14 */	add r3, r3, r4
/* 81400F58 | 88 E9 00 04 */	lbz r7, 0x4(r9)
/* 81400F5C | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F60 | 88 C9 00 05 */	lbz r6, 0x5(r9)
/* 81400F64 | 7C 63 02 14 */	add r3, r3, r0
/* 81400F68 | 88 89 00 06 */	lbz r4, 0x6(r9)
/* 81400F6C | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F70 | 88 09 00 07 */	lbz r0, 0x7(r9)
/* 81400F74 | 7C 63 42 14 */	add r3, r3, r8
/* 81400F78 | 39 29 00 08 */	addi r9, r9, 0x8
/* 81400F7C | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F80 | 7C 63 3A 14 */	add r3, r3, r7
/* 81400F84 | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F88 | 7C 63 32 14 */	add r3, r3, r6
/* 81400F8C | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F90 | 7C 63 22 14 */	add r3, r3, r4
/* 81400F94 | 54 63 40 2E */	slwi r3, r3, 8
/* 81400F98 | 7C 63 02 14 */	add r3, r3, r0
/* 81400F9C | 42 00 FF 98 */	bdnz .L_81400F34
.L_81400FA0:
/* 81400FA0 | 7C 0A 28 50 */	subf r0, r10, r5
/* 81400FA4 | 7C 09 03 A6 */	mtctr r0
/* 81400FA8 | 7C 0A 28 00 */	cmpw r10, r5
/* 81400FAC | 40 80 00 1C */	bge .L_81400FC8
.L_81400FB0:
/* 81400FB0 | 88 09 00 00 */	lbz r0, 0x0(r9)
/* 81400FB4 | 54 63 40 2E */	slwi r3, r3, 8
/* 81400FB8 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81400FBC | 39 29 00 01 */	addi r9, r9, 0x1
/* 81400FC0 | 7C 63 02 14 */	add r3, r3, r0
/* 81400FC4 | 42 00 FF EC */	bdnz .L_81400FB0
.L_81400FC8:
/* 81400FC8 | 48 0B 2B A1 */	bl SONtoHl
/* 81400FCC | 90 7B 00 10 */	stw r3, 0x10(r27)
/* 81400FD0 | 48 00 00 FC */	b .L_814010CC
.L_81400FD4:
/* 81400FD4 | 39 3E 00 06 */	addi r9, r30, 0x6
/* 81400FD8 | 38 60 00 00 */	li r3, 0x0
/* 81400FDC | 39 40 00 00 */	li r10, 0x0
/* 81400FE0 | 40 85 00 D8 */	ble cr1, .L_814010B8
/* 81400FE4 | 2C 05 00 08 */	cmpwi r5, 0x8
/* 81400FE8 | 38 85 FF F8 */	subi r4, r5, 0x8
/* 81400FEC | 40 81 00 A4 */	ble .L_81401090
/* 81400FF0 | 38 C0 00 00 */	li r6, 0x0
/* 81400FF4 | 41 84 00 14 */	blt cr1, .L_81401008
/* 81400FF8 | 38 1F FF FE */	subi r0, r31, 0x2
/* 81400FFC | 7C 05 00 00 */	cmpw r5, r0
/* 81401000 | 41 81 00 08 */	bgt .L_81401008
/* 81401004 | 38 C0 00 01 */	li r6, 0x1
.L_81401008:
/* 81401008 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8140100C | 41 82 00 84 */	beq .L_81401090
/* 81401010 | 38 04 00 07 */	addi r0, r4, 0x7
/* 81401014 | 54 00 E8 FE */	srwi r0, r0, 3
/* 81401018 | 7C 09 03 A6 */	mtctr r0
/* 8140101C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81401020 | 40 81 00 70 */	ble .L_81401090
.L_81401024:
/* 81401024 | 88 09 00 00 */	lbz r0, 0x0(r9)
/* 81401028 | 54 63 40 2E */	slwi r3, r3, 8
/* 8140102C | 88 89 00 01 */	lbz r4, 0x1(r9)
/* 81401030 | 39 4A 00 08 */	addi r10, r10, 0x8
/* 81401034 | 7C 63 02 14 */	add r3, r3, r0
/* 81401038 | 88 09 00 02 */	lbz r0, 0x2(r9)
/* 8140103C | 54 63 40 2E */	slwi r3, r3, 8
/* 81401040 | 89 09 00 03 */	lbz r8, 0x3(r9)
/* 81401044 | 7C 63 22 14 */	add r3, r3, r4
/* 81401048 | 88 E9 00 04 */	lbz r7, 0x4(r9)
/* 8140104C | 54 63 40 2E */	slwi r3, r3, 8
/* 81401050 | 88 C9 00 05 */	lbz r6, 0x5(r9)
/* 81401054 | 7C 63 02 14 */	add r3, r3, r0
/* 81401058 | 88 89 00 06 */	lbz r4, 0x6(r9)
/* 8140105C | 54 63 40 2E */	slwi r3, r3, 8
/* 81401060 | 88 09 00 07 */	lbz r0, 0x7(r9)
/* 81401064 | 7C 63 42 14 */	add r3, r3, r8
/* 81401068 | 39 29 00 08 */	addi r9, r9, 0x8
/* 8140106C | 54 63 40 2E */	slwi r3, r3, 8
/* 81401070 | 7C 63 3A 14 */	add r3, r3, r7
/* 81401074 | 54 63 40 2E */	slwi r3, r3, 8
/* 81401078 | 7C 63 32 14 */	add r3, r3, r6
/* 8140107C | 54 63 40 2E */	slwi r3, r3, 8
/* 81401080 | 7C 63 22 14 */	add r3, r3, r4
/* 81401084 | 54 63 40 2E */	slwi r3, r3, 8
/* 81401088 | 7C 63 02 14 */	add r3, r3, r0
/* 8140108C | 42 00 FF 98 */	bdnz .L_81401024
.L_81401090:
/* 81401090 | 7C 0A 28 50 */	subf r0, r10, r5
/* 81401094 | 7C 09 03 A6 */	mtctr r0
/* 81401098 | 7C 0A 28 00 */	cmpw r10, r5
/* 8140109C | 40 80 00 1C */	bge .L_814010B8
.L_814010A0:
/* 814010A0 | 88 09 00 00 */	lbz r0, 0x0(r9)
/* 814010A4 | 54 63 40 2E */	slwi r3, r3, 8
/* 814010A8 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814010AC | 39 29 00 01 */	addi r9, r9, 0x1
/* 814010B0 | 7C 63 02 14 */	add r3, r3, r0
/* 814010B4 | 42 00 FF EC */	bdnz .L_814010A0
.L_814010B8:
/* 814010B8 | 48 0B 2A B1 */	bl SONtoHl
/* 814010BC | 90 7B 00 14 */	stw r3, 0x14(r27)
/* 814010C0 | 48 00 00 0C */	b .L_814010CC
.L_814010C4:
/* 814010C4 | 38 60 FF FF */	li r3, -0x1
/* 814010C8 | 48 00 00 24 */	b .L_814010EC
.L_814010CC:
/* 814010CC | A0 7E 00 04 */	lhz r3, 0x4(r30)
/* 814010D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814010D4 | 41 82 00 14 */	beq .L_814010E8
/* 814010D8 | 48 0B 2A 95 */	bl SONtoHs
/* 814010DC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814010E0 | 7F DC 02 14 */	add r30, r28, r0
/* 814010E4 | 4B FF FD 64 */	b .L_81400E48
.L_814010E8:
/* 814010E8 | 38 60 00 00 */	li r3, 0x0
.L_814010EC:
/* 814010EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814010F0 | 48 1F 84 1D */	bl _restgpr_27
/* 814010F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814010F8 | 7C 08 03 A6 */	mtlr r0
/* 814010FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81401100 | 4E 80 00 20 */	blr
.endfn ATERM_81400E0C

# .text:0x2E88 | 0x81401104 | size: 0x180
.fn ATERM_81401104, global
/* 81401104 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81401108 | 7C 08 02 A6 */	mflr r0
/* 8140110C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81401110 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81401114 | 48 1F 83 A9 */	bl _savegpr_26
/* 81401118 | 7C 7A 1B 78 */	mr r26, r3
/* 8140111C | 7C 9B 23 78 */	mr r27, r4
/* 81401120 | 3B A3 00 06 */	addi r29, r3, 0x6
/* 81401124 | 3F C0 81 65 */	lis r30, jumptable_81657CAC@ha
/* 81401128 | 3F E0 81 65 */	lis r31, jumptable_81657C54@ha
.L_8140112C:
/* 8140112C | A0 7D 00 02 */	lhz r3, 0x2(r29)
/* 81401130 | 48 0B 2A 3D */	bl SONtoHs
/* 81401134 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 81401138 | 54 7C 04 3E */	clrlwi r28, r3, 16
/* 8140113C | 38 04 FF F0 */	subi r0, r4, 0x10
/* 81401140 | 28 00 00 15 */	cmplwi r0, 0x15
/* 81401144 | 41 81 00 48 */	bgt .L_8140118C
/* 81401148 | 38 7E 7C AC */	addi r3, r30, jumptable_81657CAC@l
/* 8140114C | 54 00 10 3A */	slwi r0, r0, 2
/* 81401150 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81401154 | 7C 69 03 A6 */	mtctr r3
/* 81401158 | 4E 80 04 20 */	bctr
.L_8140115C:
/* 8140115C | 28 1C 00 05 */	cmplwi r28, 0x5
/* 81401160 | 40 81 00 2C */	ble .L_8140118C
/* 81401164 | 38 60 FF FF */	li r3, -0x1
/* 81401168 | 48 00 01 04 */	b .L_8140126C
.L_8140116C:
/* 8140116C | 28 1C 00 0D */	cmplwi r28, 0xd
/* 81401170 | 40 81 00 1C */	ble .L_8140118C
/* 81401174 | 38 60 FF FF */	li r3, -0x1
/* 81401178 | 48 00 00 F4 */	b .L_8140126C
.L_8140117C:
/* 8140117C | 28 1C 00 21 */	cmplwi r28, 0x21
/* 81401180 | 40 81 00 0C */	ble .L_8140118C
/* 81401184 | 38 60 FF FF */	li r3, -0x1
/* 81401188 | 48 00 00 E4 */	b .L_8140126C
.L_8140118C:
/* 8140118C | 38 04 FF F0 */	subi r0, r4, 0x10
/* 81401190 | 28 00 00 15 */	cmplwi r0, 0x15
/* 81401194 | 41 81 00 AC */	bgt .L_81401240
/* 81401198 | 38 7F 7C 54 */	addi r3, r31, jumptable_81657C54@l
/* 8140119C | 54 00 10 3A */	slwi r0, r0, 2
/* 814011A0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814011A4 | 7C 69 03 A6 */	mtctr r3
/* 814011A8 | 4E 80 04 20 */	bctr
.L_814011AC:
/* 814011AC | 7F 85 E3 78 */	mr r5, r28
/* 814011B0 | 38 7B 00 30 */	addi r3, r27, 0x30
/* 814011B4 | 38 9D 00 06 */	addi r4, r29, 0x6
/* 814011B8 | 4B F2 F0 79 */	bl memcpy
/* 814011BC | 93 9B 00 04 */	stw r28, 0x4(r27)
/* 814011C0 | 48 00 00 88 */	b .L_81401248
.L_814011C4:
/* 814011C4 | 7F 85 E3 78 */	mr r5, r28
/* 814011C8 | 38 7B 00 70 */	addi r3, r27, 0x70
/* 814011CC | 38 9D 00 06 */	addi r4, r29, 0x6
/* 814011D0 | 4B F2 F0 61 */	bl memcpy
/* 814011D4 | 93 9B 00 04 */	stw r28, 0x4(r27)
/* 814011D8 | 48 00 00 70 */	b .L_81401248
.L_814011DC:
/* 814011DC | 7F 85 E3 78 */	mr r5, r28
/* 814011E0 | 38 7B 00 B0 */	addi r3, r27, 0xb0
/* 814011E4 | 38 9D 00 06 */	addi r4, r29, 0x6
/* 814011E8 | 4B F2 F0 49 */	bl memcpy
/* 814011EC | 93 9B 00 04 */	stw r28, 0x4(r27)
/* 814011F0 | 48 00 00 58 */	b .L_81401248
.L_814011F4:
/* 814011F4 | 7F 85 E3 78 */	mr r5, r28
/* 814011F8 | 38 7B 00 F0 */	addi r3, r27, 0xf0
/* 814011FC | 38 9D 00 06 */	addi r4, r29, 0x6
/* 81401200 | 4B F2 F0 31 */	bl memcpy
/* 81401204 | 93 9B 00 04 */	stw r28, 0x4(r27)
/* 81401208 | 48 00 00 40 */	b .L_81401248
.L_8140120C:
/* 8140120C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81401210 | 41 82 00 1C */	beq .L_8140122C
/* 81401214 | 7C 7D E2 14 */	add r3, r29, r28
/* 81401218 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 8140121C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81401220 | 41 82 00 0C */	beq .L_8140122C
/* 81401224 | 38 60 FF FF */	li r3, -0x1
/* 81401228 | 48 00 00 44 */	b .L_8140126C
.L_8140122C:
/* 8140122C | 7F 85 E3 78 */	mr r5, r28
/* 81401230 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 81401234 | 38 9D 00 06 */	addi r4, r29, 0x6
/* 81401238 | 4B F2 EF F9 */	bl memcpy
/* 8140123C | 48 00 00 0C */	b .L_81401248
.L_81401240:
/* 81401240 | 38 60 FF FF */	li r3, -0x1
/* 81401244 | 48 00 00 28 */	b .L_8140126C
.L_81401248:
/* 81401248 | A0 7D 00 04 */	lhz r3, 0x4(r29)
/* 8140124C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401250 | 41 82 00 18 */	beq .L_81401268
/* 81401254 | 48 0B 29 19 */	bl SONtoHs
/* 81401258 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8140125C | 7C 7A 02 14 */	add r3, r26, r0
/* 81401260 | 3B A3 00 06 */	addi r29, r3, 0x6
/* 81401264 | 4B FF FE C8 */	b .L_8140112C
.L_81401268:
/* 81401268 | 38 60 00 00 */	li r3, 0x0
.L_8140126C:
/* 8140126C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81401270 | 48 1F 82 99 */	bl _restgpr_26
/* 81401274 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81401278 | 7C 08 03 A6 */	mtlr r0
/* 8140127C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81401280 | 4E 80 00 20 */	blr
.endfn ATERM_81401104

# .text:0x3008 | 0x81401284 | size: 0x128
.fn ATERM_81401284, global
/* 81401284 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81401288 | 7C 08 02 A6 */	mflr r0
/* 8140128C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81401290 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81401294 | 48 1F 82 29 */	bl _savegpr_26
/* 81401298 | 7C 7A 1B 78 */	mr r26, r3
/* 8140129C | 7C 9B 23 78 */	mr r27, r4
/* 814012A0 | 3B A3 00 06 */	addi r29, r3, 0x6
/* 814012A4 | 3F C0 81 65 */	lis r30, jumptable_81657D5C@ha
/* 814012A8 | 3F E0 81 65 */	lis r31, jumptable_81657D04@ha
.L_814012AC:
/* 814012AC | A0 7D 00 02 */	lhz r3, 0x2(r29)
/* 814012B0 | 48 0B 28 BD */	bl SONtoHs
/* 814012B4 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 814012B8 | 54 7C 04 3E */	clrlwi r28, r3, 16
/* 814012BC | 38 04 FF D0 */	subi r0, r4, 0x30
/* 814012C0 | 28 00 00 15 */	cmplwi r0, 0x15
/* 814012C4 | 41 81 00 38 */	bgt .L_814012FC
/* 814012C8 | 38 7E 7D 5C */	addi r3, r30, jumptable_81657D5C@l
/* 814012CC | 54 00 10 3A */	slwi r0, r0, 2
/* 814012D0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814012D4 | 7C 69 03 A6 */	mtctr r3
/* 814012D8 | 4E 80 04 20 */	bctr
.L_814012DC:
/* 814012DC | 28 1C 00 40 */	cmplwi r28, 0x40
/* 814012E0 | 40 81 00 1C */	ble .L_814012FC
/* 814012E4 | 38 60 FF FF */	li r3, -0x1
/* 814012E8 | 48 00 00 AC */	b .L_81401394
.L_814012EC:
/* 814012EC | 28 1C 00 21 */	cmplwi r28, 0x21
/* 814012F0 | 40 81 00 0C */	ble .L_814012FC
/* 814012F4 | 38 60 FF FF */	li r3, -0x1
/* 814012F8 | 48 00 00 9C */	b .L_81401394
.L_814012FC:
/* 814012FC | 38 04 FF D0 */	subi r0, r4, 0x30
/* 81401300 | 28 00 00 15 */	cmplwi r0, 0x15
/* 81401304 | 41 81 00 64 */	bgt .L_81401368
/* 81401308 | 38 7F 7D 04 */	addi r3, r31, jumptable_81657D04@l
/* 8140130C | 54 00 10 3A */	slwi r0, r0, 2
/* 81401310 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81401314 | 7C 69 03 A6 */	mtctr r3
/* 81401318 | 4E 80 04 20 */	bctr
.L_8140131C:
/* 8140131C | 7F 85 E3 78 */	mr r5, r28
/* 81401320 | 38 7B 00 30 */	addi r3, r27, 0x30
/* 81401324 | 38 9D 00 06 */	addi r4, r29, 0x6
/* 81401328 | 4B F2 EF 09 */	bl memcpy
/* 8140132C | 93 9B 00 04 */	stw r28, 0x4(r27)
/* 81401330 | 48 00 00 40 */	b .L_81401370
.L_81401334:
/* 81401334 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81401338 | 41 82 00 1C */	beq .L_81401354
/* 8140133C | 7C 7D E2 14 */	add r3, r29, r28
/* 81401340 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 81401344 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81401348 | 41 82 00 0C */	beq .L_81401354
/* 8140134C | 38 60 FF FF */	li r3, -0x1
/* 81401350 | 48 00 00 44 */	b .L_81401394
.L_81401354:
/* 81401354 | 7F 85 E3 78 */	mr r5, r28
/* 81401358 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 8140135C | 38 9D 00 06 */	addi r4, r29, 0x6
/* 81401360 | 4B F2 EE D1 */	bl memcpy
/* 81401364 | 48 00 00 0C */	b .L_81401370
.L_81401368:
/* 81401368 | 38 60 FF FF */	li r3, -0x1
/* 8140136C | 48 00 00 28 */	b .L_81401394
.L_81401370:
/* 81401370 | A0 7D 00 04 */	lhz r3, 0x4(r29)
/* 81401374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401378 | 41 82 00 18 */	beq .L_81401390
/* 8140137C | 48 0B 27 F1 */	bl SONtoHs
/* 81401380 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81401384 | 7C 7A 02 14 */	add r3, r26, r0
/* 81401388 | 3B A3 00 06 */	addi r29, r3, 0x6
/* 8140138C | 4B FF FF 20 */	b .L_814012AC
.L_81401390:
/* 81401390 | 38 60 00 00 */	li r3, 0x0
.L_81401394:
/* 81401394 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81401398 | 48 1F 81 71 */	bl _restgpr_26
/* 8140139C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814013A0 | 7C 08 03 A6 */	mtlr r0
/* 814013A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814013A8 | 4E 80 00 20 */	blr
.endfn ATERM_81401284

# .text:0x3130 | 0x814013AC | size: 0x1C8
.fn ATERM_814013AC, global
/* 814013AC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814013B0 | 7C 08 02 A6 */	mflr r0
/* 814013B4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814013B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814013BC | 48 1F 80 F9 */	bl _savegpr_24
/* 814013C0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814013C4 | 7C 7B 1B 78 */	mr r27, r3
/* 814013C8 | 7C B8 2B 78 */	mr r24, r5
/* 814013CC | 7C DA 33 78 */	mr r26, r6
/* 814013D0 | 7C F9 3B 78 */	mr r25, r7
/* 814013D4 | 3B C0 00 00 */	li r30, 0x0
/* 814013D8 | 41 81 00 0C */	bgt .L_814013E4
/* 814013DC | 38 60 FF FE */	li r3, -0x2
/* 814013E0 | 48 00 01 7C */	b .L_8140155C
.L_814013E4:
/* 814013E4 | 7C 9F 23 78 */	mr r31, r4
/* 814013E8 | 3B AD 91 D0 */	li r29, lbl_81697210@sda21
.L_814013EC:
/* 814013EC | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814013F0 | 7C 1D D8 AE */	lbzx r0, r29, r27
/* 814013F4 | 7C 03 00 40 */	cmplw r3, r0
/* 814013F8 | 41 82 00 28 */	beq .L_81401420
/* 814013FC | A0 7F 00 02 */	lhz r3, 0x2(r31)
/* 81401400 | 48 0B 27 6D */	bl SONtoHs
/* 81401404 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81401408 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8140140C | 7F 00 C0 51 */	subf. r24, r0, r24
/* 81401410 | 7F FF 02 14 */	add r31, r31, r0
/* 81401414 | 41 81 FF D8 */	bgt .L_814013EC
/* 81401418 | 38 60 FF FC */	li r3, -0x4
/* 8140141C | 48 00 01 40 */	b .L_8140155C
.L_81401420:
/* 81401420 | A0 7F 00 02 */	lhz r3, 0x2(r31)
/* 81401424 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81401428 | 48 0B 27 45 */	bl SONtoHs
/* 8140142C | 1C 9B 03 50 */	mulli r4, r27, 0x350
/* 81401430 | 38 1B 00 03 */	addi r0, r27, 0x3
/* 81401434 | 54 78 04 3E */	clrlwi r24, r3, 16
/* 81401438 | 54 00 38 30 */	slwi r0, r0, 7
/* 8140143C | 7C 7A 22 14 */	add r3, r26, r4
/* 81401440 | 3B A3 00 08 */	addi r29, r3, 0x8
/* 81401444 | 7F 39 02 14 */	add r25, r25, r0
/* 81401448 | 3B 83 01 38 */	addi r28, r3, 0x138
/* 8140144C | 3B 63 02 68 */	addi r27, r3, 0x268
/* 81401450 | 3B 43 02 D8 */	addi r26, r3, 0x2d8
.L_81401454:
/* 81401454 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81401458 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8140145C | 41 82 00 68 */	beq .L_814014C4
/* 81401460 | 40 80 00 1C */	bge .L_8140147C
/* 81401464 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81401468 | 41 82 00 34 */	beq .L_8140149C
/* 8140146C | 40 80 00 44 */	bge .L_814014B0
/* 81401470 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81401474 | 40 80 00 14 */	bge .L_81401488
/* 81401478 | 48 00 00 A0 */	b .L_81401518
.L_8140147C:
/* 8140147C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81401480 | 41 82 00 58 */	beq .L_814014D8
/* 81401484 | 48 00 00 94 */	b .L_81401518
.L_81401488:
/* 81401488 | 7F E3 FB 78 */	mr r3, r31
/* 8140148C | 7F A4 EB 78 */	mr r4, r29
/* 81401490 | 4B FF FC 75 */	bl ATERM_81401104
/* 81401494 | 63 DE 00 01 */	ori r30, r30, 0x1
/* 81401498 | 48 00 00 84 */	b .L_8140151C
.L_8140149C:
/* 8140149C | 7F E3 FB 78 */	mr r3, r31
/* 814014A0 | 7F 84 E3 78 */	mr r4, r28
/* 814014A4 | 4B FF FC 61 */	bl ATERM_81401104
/* 814014A8 | 63 DE 00 02 */	ori r30, r30, 0x2
/* 814014AC | 48 00 00 70 */	b .L_8140151C
.L_814014B0:
/* 814014B0 | 7F E3 FB 78 */	mr r3, r31
/* 814014B4 | 7F 64 DB 78 */	mr r4, r27
/* 814014B8 | 4B FF FD CD */	bl ATERM_81401284
/* 814014BC | 63 DE 00 04 */	ori r30, r30, 0x4
/* 814014C0 | 48 00 00 5C */	b .L_8140151C
.L_814014C4:
/* 814014C4 | 7F E3 FB 78 */	mr r3, r31
/* 814014C8 | 7F 44 D3 78 */	mr r4, r26
/* 814014CC | 4B FF FD B9 */	bl ATERM_81401284
/* 814014D0 | 63 DE 00 08 */	ori r30, r30, 0x8
/* 814014D4 | 48 00 00 48 */	b .L_8140151C
.L_814014D8:
/* 814014D8 | A0 7F 00 08 */	lhz r3, 0x8(r31)
/* 814014DC | 48 0B 26 91 */	bl SONtoHs
/* 814014E0 | 54 65 04 3F */	clrlwi. r5, r3, 16
/* 814014E4 | 41 81 00 0C */	bgt .L_814014F0
/* 814014E8 | 38 60 FF FF */	li r3, -0x1
/* 814014EC | 48 00 00 30 */	b .L_8140151C
.L_814014F0:
/* 814014F0 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 814014F4 | 28 00 00 70 */	cmplwi r0, 0x70
/* 814014F8 | 41 82 00 0C */	beq .L_81401504
/* 814014FC | 38 60 FF FF */	li r3, -0x1
/* 81401500 | 48 00 00 1C */	b .L_8140151C
.L_81401504:
/* 81401504 | 7F 23 CB 78 */	mr r3, r25
/* 81401508 | 38 9F 00 0C */	addi r4, r31, 0xc
/* 8140150C | 4B F2 ED 25 */	bl memcpy
/* 81401510 | 38 60 00 00 */	li r3, 0x0
/* 81401514 | 48 00 00 08 */	b .L_8140151C
.L_81401518:
/* 81401518 | 38 60 FF FD */	li r3, -0x3
.L_8140151C:
/* 8140151C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401520 | 41 82 00 08 */	beq .L_81401528
/* 81401524 | 48 00 00 38 */	b .L_8140155C
.L_81401528:
/* 81401528 | A0 7F 00 02 */	lhz r3, 0x2(r31)
/* 8140152C | 48 0B 26 41 */	bl SONtoHs
/* 81401530 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81401534 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81401538 | 7F 00 C0 51 */	subf. r24, r0, r24
/* 8140153C | 7F FF 02 14 */	add r31, r31, r0
/* 81401540 | 41 81 FF 14 */	bgt .L_81401454
/* 81401544 | 3C 80 81 0C */	lis r4, ATERM_810BDEF8@ha
/* 81401548 | 38 60 00 00 */	li r3, 0x0
/* 8140154C | 38 84 DE F8 */	addi r4, r4, ATERM_810BDEF8@l
/* 81401550 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 81401554 | 7C 00 F3 78 */	or r0, r0, r30
/* 81401558 | 90 04 00 0C */	stw r0, 0xc(r4)
.L_8140155C:
/* 8140155C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81401560 | 48 1F 7F A1 */	bl _restgpr_24
/* 81401564 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81401568 | 7C 08 03 A6 */	mtlr r0
/* 8140156C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81401570 | 4E 80 00 20 */	blr
.endfn ATERM_814013AC

# .text:0x32F8 | 0x81401574 | size: 0x204
.fn ATERM_81401574, global
/* 81401574 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81401578 | 7C 08 02 A6 */	mflr r0
/* 8140157C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81401580 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81401584 | 48 1F 7F 39 */	bl _savegpr_26
/* 81401588 | 83 6D AC 4C */	lwz r27, lbl_81698C8C@sda21(r0)
/* 8140158C | 7C 9D 23 78 */	mr r29, r4
/* 81401590 | 7C BA 2B 78 */	mr r26, r5
/* 81401594 | 38 80 00 00 */	li r4, 0x0
/* 81401598 | 7F 63 DB 78 */	mr r3, r27
/* 8140159C | 38 A0 05 DC */	li r5, 0x5dc
/* 814015A0 | 4B F2 ED 95 */	bl memset
/* 814015A4 | 38 60 02 10 */	li r3, 0x210
/* 814015A8 | 4B FF BC 6D */	bl AOSSi_Alloc
/* 814015AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814015B0 | 7C 7C 1B 78 */	mr r28, r3
/* 814015B4 | 40 82 00 14 */	bne .L_814015C8
/* 814015B8 | 38 00 00 02 */	li r0, 0x2
/* 814015BC | 38 60 FF FF */	li r3, -0x1
/* 814015C0 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 814015C4 | 48 00 01 9C */	b .L_81401760
.L_814015C8:
/* 814015C8 | 38 80 00 00 */	li r4, 0x0
/* 814015CC | 38 A0 02 10 */	li r5, 0x210
/* 814015D0 | 4B F2 ED 65 */	bl memset
/* 814015D4 | 7F A4 EB 78 */	mr r4, r29
/* 814015D8 | 3B BB 00 18 */	addi r29, r27, 0x18
/* 814015DC | 38 6D AC 38 */	li r3, lbl_81698C78@sda21
/* 814015E0 | 38 A0 00 08 */	li r5, 0x8
/* 814015E4 | 4B F2 EC 4D */	bl memcpy
/* 814015E8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814015EC | 38 8D AC 38 */	li r4, lbl_81698C78@sda21
/* 814015F0 | 38 A0 00 08 */	li r5, 0x8
/* 814015F4 | 4B F2 EC 3D */	bl memcpy
/* 814015F8 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 814015FC | 48 00 05 C1 */	bl ATERM_81401BBC
/* 81401600 | 7C 60 07 35 */	extsh. r0, r3
/* 81401604 | 7C 7E 1B 78 */	mr r30, r3
/* 81401608 | 40 80 00 24 */	bge .L_8140162C
/* 8140160C | 38 00 00 03 */	li r0, 0x3
/* 81401610 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81401614 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81401618 | 41 82 00 0C */	beq .L_81401624
/* 8140161C | 7F 83 E3 78 */	mr r3, r28
/* 81401620 | 4B FF BC 19 */	bl AOSSi_Free
.L_81401624:
/* 81401624 | 38 60 FF FF */	li r3, -0x1
/* 81401628 | 48 00 01 38 */	b .L_81401760
.L_8140162C:
/* 8140162C | 3B E0 00 00 */	li r31, 0x0
/* 81401630 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81401634 | 9B FC 00 00 */	stb r31, 0x0(r28)
/* 81401638 | 48 0B 25 41 */	bl SOHtoNs
/* 8140163C | 38 1E 00 04 */	addi r0, r30, 0x4
/* 81401640 | B0 7C 00 02 */	sth r3, 0x2(r28)
/* 81401644 | 7C 1E 07 34 */	extsh r30, r0
/* 81401648 | 7F A3 EB 78 */	mr r3, r29
/* 8140164C | 7F 84 E3 78 */	mr r4, r28
/* 81401650 | 7F C5 F3 78 */	mr r5, r30
/* 81401654 | 4B F2 EB DD */	bl memcpy
/* 81401658 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8140165C | 38 80 00 08 */	li r4, 0x8
/* 81401660 | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 81401664 | 38 C0 00 06 */	li r6, 0x6
/* 81401668 | 48 00 08 19 */	bl ATERM_81401E80
/* 8140166C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401670 | 41 82 00 24 */	beq .L_81401694
/* 81401674 | 38 00 00 02 */	li r0, 0x2
/* 81401678 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8140167C | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81401680 | 41 82 00 0C */	beq .L_8140168C
/* 81401684 | 7F 83 E3 78 */	mr r3, r28
/* 81401688 | 4B FF BB B1 */	bl AOSSi_Free
.L_8140168C:
/* 8140168C | 38 60 FF FF */	li r3, -0x1
/* 81401690 | 48 00 00 D0 */	b .L_81401760
.L_81401694:
/* 81401694 | 38 60 00 01 */	li r3, 0x1
/* 81401698 | 48 0B 24 E1 */	bl SOHtoNs
/* 8140169C | B0 7B 00 00 */	sth r3, 0x0(r27)
/* 814016A0 | 38 60 10 00 */	li r3, 0x1000
/* 814016A4 | B3 FB 00 02 */	sth r31, 0x2(r27)
/* 814016A8 | B3 FB 00 04 */	sth r31, 0x4(r27)
/* 814016AC | 48 0B 24 CD */	bl SOHtoNs
/* 814016B0 | B0 7B 00 06 */	sth r3, 0x6(r27)
/* 814016B4 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 814016B8 | B3 FB 00 08 */	sth r31, 0x8(r27)
/* 814016BC | 48 0B 24 BD */	bl SOHtoNs
/* 814016C0 | B0 7B 00 0A */	sth r3, 0xa(r27)
/* 814016C4 | 38 60 00 10 */	li r3, 0x10
/* 814016C8 | 48 0B 24 B1 */	bl SOHtoNs
/* 814016CC | B0 7B 00 0C */	sth r3, 0xc(r27)
/* 814016D0 | 38 00 00 11 */	li r0, 0x11
/* 814016D4 | 38 7B 00 10 */	addi r3, r27, 0x10
/* 814016D8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814016DC | 9B FB 00 0E */	stb r31, 0xe(r27)
/* 814016E0 | 38 A0 00 08 */	li r5, 0x8
/* 814016E4 | 98 1B 00 0F */	stb r0, 0xf(r27)
/* 814016E8 | 4B F2 EB 49 */	bl memcpy
/* 814016EC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814016F0 | 38 80 00 00 */	li r4, 0x0
/* 814016F4 | 38 A0 00 08 */	li r5, 0x8
/* 814016F8 | 4B F2 EC 3D */	bl memset
/* 814016FC | 38 00 00 02 */	li r0, 0x2
/* 81401700 | 38 60 57 90 */	li r3, 0x5790
/* 81401704 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81401708 | 48 0B 24 71 */	bl SOHtoNs
/* 8140170C | 3C 80 81 0C */	lis r4, ATERM_810BDEF8@ha
/* 81401710 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 81401714 | 38 84 DE F8 */	addi r4, r4, ATERM_810BDEF8@l
/* 81401718 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8140171C | 48 0B 24 59 */	bl SOHtoNl
/* 81401720 | 38 60 FF FF */	li r3, -0x1
/* 81401724 | 38 A0 00 08 */	li r5, 0x8
/* 81401728 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140172C | 38 1E 00 18 */	addi r0, r30, 0x18
/* 81401730 | 7F 43 D3 78 */	mr r3, r26
/* 81401734 | 7F 64 DB 78 */	mr r4, r27
/* 81401738 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 8140173C | 7C 05 07 34 */	extsh r5, r0
/* 81401740 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81401744 | 38 C0 00 00 */	li r6, 0x0
/* 81401748 | 48 0B 1D F5 */	bl SOSendTo
/* 8140174C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81401750 | 41 82 00 0C */	beq .L_8140175C
/* 81401754 | 7F 83 E3 78 */	mr r3, r28
/* 81401758 | 4B FF BA E1 */	bl AOSSi_Free
.L_8140175C:
/* 8140175C | 38 60 00 00 */	li r3, 0x0
.L_81401760:
/* 81401760 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81401764 | 48 1F 7D A5 */	bl _restgpr_26
/* 81401768 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8140176C | 7C 08 03 A6 */	mtlr r0
/* 81401770 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81401774 | 4E 80 00 20 */	blr
.endfn ATERM_81401574

# .text:0x34FC | 0x81401778 | size: 0x444
.fn ATERM_81401778, global
/* 81401778 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8140177C | 7C 08 02 A6 */	mflr r0
/* 81401780 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81401784 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81401788 | 48 1F 7D 31 */	bl _savegpr_25
/* 8140178C | 83 8D AC 4C */	lwz r28, lbl_81698C8C@sda21(r0)
/* 81401790 | 7C 9A 23 78 */	mr r26, r4
/* 81401794 | 7C BB 2B 78 */	mr r27, r5
/* 81401798 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8140179C | 3B C0 00 00 */	li r30, 0x0
/* 814017A0 | 3B A0 00 00 */	li r29, 0x0
/* 814017A4 | 38 80 00 00 */	li r4, 0x0
/* 814017A8 | 38 A0 00 08 */	li r5, 0x8
/* 814017AC | 4B F2 EB 89 */	bl memset
/* 814017B0 | 7F 83 E3 78 */	mr r3, r28
/* 814017B4 | 38 80 00 00 */	li r4, 0x0
/* 814017B8 | 38 A0 05 DC */	li r5, 0x5dc
/* 814017BC | 4B F2 EB 79 */	bl memset
/* 814017C0 | 38 60 00 02 */	li r3, 0x2
/* 814017C4 | 38 00 00 00 */	li r0, 0x0
/* 814017C8 | 98 61 00 18 */	stb r3, 0x18(r1)
/* 814017CC | 3B FC 00 18 */	addi r31, r28, 0x18
/* 814017D0 | 38 60 00 04 */	li r3, 0x4
/* 814017D4 | 98 01 00 19 */	stb r0, 0x19(r1)
/* 814017D8 | 48 0B 23 A1 */	bl SOHtoNs
/* 814017DC | 3C 80 81 0C */	lis r4, ATERM_810BDEF8@ha
/* 814017E0 | B0 61 00 1A */	sth r3, 0x1a(r1)
/* 814017E4 | 38 84 DE F8 */	addi r4, r4, ATERM_810BDEF8@l
/* 814017E8 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814017EC | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 814017F0 | 48 0B 23 85 */	bl SOHtoNl
/* 814017F4 | 80 0D AC 40 */	lwz r0, lbl_81698C80@sda21(r0)
/* 814017F8 | 3B 20 00 08 */	li r25, 0x8
/* 814017FC | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81401800 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81401804 | 40 82 02 80 */	bne .L_81401A84
/* 81401808 | 3F 20 81 0C */	lis r25, ATERM_810BE8A0@ha
/* 8140180C | 3B A0 00 01 */	li r29, 0x1
/* 81401810 | 38 99 E8 A0 */	addi r4, r25, ATERM_810BE8A0@l
/* 81401814 | 3B C0 FF FF */	li r30, -0x1
/* 81401818 | 38 60 00 00 */	li r3, 0x0
/* 8140181C | 48 00 05 A5 */	bl ATERM_81401DC0
/* 81401820 | 88 C1 00 18 */	lbz r6, 0x18(r1)
/* 81401824 | 38 B9 E8 A0 */	addi r5, r25, ATERM_810BE8A0@l
/* 81401828 | 57 C7 C2 3E */	srwi r7, r30, 8
/* 8140182C | 38 00 FF FF */	li r0, -0x1
/* 81401830 | 7F C4 32 78 */	xor r4, r30, r6
/* 81401834 | 88 C1 00 19 */	lbz r6, 0x19(r1)
/* 81401838 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 8140183C | 38 60 00 08 */	li r3, 0x8
/* 81401840 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 81401844 | 7C FE 22 78 */	xor r30, r7, r4
/* 81401848 | 7F C4 32 78 */	xor r4, r30, r6
/* 8140184C | 88 C1 00 1A */	lbz r6, 0x1a(r1)
/* 81401850 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 81401854 | 57 C7 C2 3E */	srwi r7, r30, 8
/* 81401858 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 8140185C | 7C FE 22 78 */	xor r30, r7, r4
/* 81401860 | 7F C4 32 78 */	xor r4, r30, r6
/* 81401864 | 88 C1 00 1B */	lbz r6, 0x1b(r1)
/* 81401868 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 8140186C | 57 C7 C2 3E */	srwi r7, r30, 8
/* 81401870 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 81401874 | 7C FE 22 78 */	xor r30, r7, r4
/* 81401878 | 7F C4 32 78 */	xor r4, r30, r6
/* 8140187C | 88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 81401880 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 81401884 | 57 C7 C2 3E */	srwi r7, r30, 8
/* 81401888 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 8140188C | 7C FE 22 78 */	xor r30, r7, r4
/* 81401890 | 7F C4 32 78 */	xor r4, r30, r6
/* 81401894 | 88 C1 00 1D */	lbz r6, 0x1d(r1)
/* 81401898 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 8140189C | 57 C7 C2 3E */	srwi r7, r30, 8
/* 814018A0 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 814018A4 | 7C FE 22 78 */	xor r30, r7, r4
/* 814018A8 | 7F C4 32 78 */	xor r4, r30, r6
/* 814018AC | 88 C1 00 1E */	lbz r6, 0x1e(r1)
/* 814018B0 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 814018B4 | 57 C7 C2 3E */	srwi r7, r30, 8
/* 814018B8 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 814018BC | 7C FE 22 78 */	xor r30, r7, r4
/* 814018C0 | 7F C4 32 78 */	xor r4, r30, r6
/* 814018C4 | 88 C1 00 1F */	lbz r6, 0x1f(r1)
/* 814018C8 | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 814018CC | 57 C7 C2 3E */	srwi r7, r30, 8
/* 814018D0 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 814018D4 | 7C FE 22 78 */	xor r30, r7, r4
/* 814018D8 | 7F C4 32 78 */	xor r4, r30, r6
/* 814018DC | 54 84 15 BA */	clrlslwi r4, r4, 24, 2
/* 814018E0 | 57 C7 C2 3E */	srwi r7, r30, 8
/* 814018E4 | 7C 85 20 2E */	lwzx r4, r5, r4
/* 814018E8 | 7C FE 22 78 */	xor r30, r7, r4
/* 814018EC | 7F C0 02 78 */	xor r0, r30, r0
/* 814018F0 | 54 1E 06 3E */	clrlwi r30, r0, 24
/* 814018F4 | 4B FF B9 21 */	bl AOSSi_Alloc
/* 814018F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814018FC | 90 61 00 30 */	stw r3, 0x30(r1)
/* 81401900 | 41 82 01 70 */	beq .L_81401A70
/* 81401904 | 48 1F F3 BD */	bl rand
/* 81401908 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 8140190C | 38 7F 00 02 */	addi r3, r31, 0x2
/* 81401910 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81401914 | 38 A0 00 02 */	li r5, 0x2
/* 81401918 | 4B F2 E9 19 */	bl memcpy
/* 8140191C | 3F 20 81 0C */	lis r25, ATERM_810BE838@ha
/* 81401920 | 38 9F 00 02 */	addi r4, r31, 0x2
/* 81401924 | 38 79 E8 38 */	addi r3, r25, ATERM_810BE838@l
/* 81401928 | 38 A0 00 02 */	li r5, 0x2
/* 8140192C | 4B F2 E9 05 */	bl memcpy
/* 81401930 | 3B 39 E8 38 */	addi r25, r25, ATERM_810BE838@l
/* 81401934 | 38 8D AC 38 */	li r4, lbl_81698C78@sda21
/* 81401938 | 38 79 00 02 */	addi r3, r25, 0x2
/* 8140193C | 38 A0 00 08 */	li r5, 0x8
/* 81401940 | 4B F2 E8 F1 */	bl memcpy
/* 81401944 | 7F 24 CB 78 */	mr r4, r25
/* 81401948 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8140194C | 38 A0 00 0A */	li r5, 0xa
/* 81401950 | 38 C0 00 08 */	li r6, 0x8
/* 81401954 | 48 00 03 49 */	bl ATERM_81401C9C
/* 81401958 | 38 00 00 04 */	li r0, 0x4
/* 8140195C | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81401960 | 38 80 00 00 */	li r4, 0x0
/* 81401964 | 7C 09 03 A6 */	mtctr r0
.L_81401968:
/* 81401968 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 8140196C | 7C DF 22 14 */	add r6, r31, r4
/* 81401970 | 81 21 00 34 */	lwz r9, 0x34(r1)
/* 81401974 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81401978 | 39 03 00 01 */	addi r8, r3, 0x1
/* 8140197C | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 81401980 | 7C E8 4B 96 */	divwu r7, r8, r9
/* 81401984 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81401988 | 7C E7 49 D6 */	mullw r7, r7, r9
/* 8140198C | 7C E7 40 50 */	subf r7, r7, r8
/* 81401990 | 54 E8 06 3E */	clrlwi r8, r7, 24
/* 81401994 | 7D 43 40 AE */	lbzx r10, r3, r8
/* 81401998 | 7C EA 02 14 */	add r7, r10, r0
/* 8140199C | 7C 07 4B 96 */	divwu r0, r7, r9
/* 814019A0 | 7C 00 49 D6 */	mullw r0, r0, r9
/* 814019A4 | 7C 00 38 50 */	subf r0, r0, r7
/* 814019A8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814019AC | 7C E3 00 AE */	lbzx r7, r3, r0
/* 814019B0 | 91 01 00 28 */	stw r8, 0x28(r1)
/* 814019B4 | 7D 2A 3A 14 */	add r9, r10, r7
/* 814019B8 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 814019BC | 7D 43 01 AE */	stbx r10, r3, r0
/* 814019C0 | 7C E3 41 AE */	stbx r7, r3, r8
/* 814019C4 | 81 01 00 34 */	lwz r8, 0x34(r1)
/* 814019C8 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814019CC | 7C E9 43 96 */	divwu r7, r9, r8
/* 814019D0 | 7C E7 41 D6 */	mullw r7, r7, r8
/* 814019D4 | 7C E7 48 50 */	subf r7, r7, r9
/* 814019D8 | 7C 63 38 AE */	lbzx r3, r3, r7
/* 814019DC | 7C 60 02 78 */	xor r0, r3, r0
/* 814019E0 | 98 06 00 04 */	stb r0, 0x4(r6)
/* 814019E4 | 7C DF 22 14 */	add r6, r31, r4
/* 814019E8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814019EC | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 814019F0 | 81 21 00 34 */	lwz r9, 0x34(r1)
/* 814019F4 | 39 03 00 01 */	addi r8, r3, 0x1
/* 814019F8 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 814019FC | 7C E8 4B 96 */	divwu r7, r8, r9
/* 81401A00 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81401A04 | 7C E7 49 D6 */	mullw r7, r7, r9
/* 81401A08 | 7C E7 40 50 */	subf r7, r7, r8
/* 81401A0C | 54 E8 06 3E */	clrlwi r8, r7, 24
/* 81401A10 | 7D 43 40 AE */	lbzx r10, r3, r8
/* 81401A14 | 7C EA 02 14 */	add r7, r10, r0
/* 81401A18 | 7C 07 4B 96 */	divwu r0, r7, r9
/* 81401A1C | 7C 00 49 D6 */	mullw r0, r0, r9
/* 81401A20 | 7C 00 38 50 */	subf r0, r0, r7
/* 81401A24 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81401A28 | 7C E3 00 AE */	lbzx r7, r3, r0
/* 81401A2C | 91 01 00 28 */	stw r8, 0x28(r1)
/* 81401A30 | 7D 2A 3A 14 */	add r9, r10, r7
/* 81401A34 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81401A38 | 7D 43 01 AE */	stbx r10, r3, r0
/* 81401A3C | 7C E3 41 AE */	stbx r7, r3, r8
/* 81401A40 | 81 01 00 34 */	lwz r8, 0x34(r1)
/* 81401A44 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 81401A48 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81401A4C | 7C E9 43 96 */	divwu r7, r9, r8
/* 81401A50 | 7C E7 41 D6 */	mullw r7, r7, r8
/* 81401A54 | 7C E7 48 50 */	subf r7, r7, r9
/* 81401A58 | 7C 63 38 AE */	lbzx r3, r3, r7
/* 81401A5C | 7C 60 02 78 */	xor r0, r3, r0
/* 81401A60 | 98 06 00 04 */	stb r0, 0x4(r6)
/* 81401A64 | 42 00 FF 04 */	bdnz .L_81401968
/* 81401A68 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 81401A6C | 4B FF B7 CD */	bl AOSSi_Free
.L_81401A70:
/* 81401A70 | 38 60 00 08 */	li r3, 0x8
/* 81401A74 | 48 0B 21 05 */	bl SOHtoNs
/* 81401A78 | B0 7F 00 00 */	sth r3, 0x0(r31)
/* 81401A7C | 3B 20 00 0C */	li r25, 0xc
/* 81401A80 | 48 00 00 14 */	b .L_81401A94
.L_81401A84:
/* 81401A84 | 7F E3 FB 78 */	mr r3, r31
/* 81401A88 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81401A8C | 38 A0 00 08 */	li r5, 0x8
/* 81401A90 | 4B F2 E7 A1 */	bl memcpy
.L_81401A94:
/* 81401A94 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81401A98 | 38 9A 00 08 */	addi r4, r26, 0x8
/* 81401A9C | 38 A0 00 08 */	li r5, 0x8
/* 81401AA0 | 4B F2 E7 91 */	bl memcpy
/* 81401AA4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81401AA8 | 38 80 00 08 */	li r4, 0x8
/* 81401AAC | 38 AD 91 C4 */	li r5, lbl_81697204@sda21
/* 81401AB0 | 38 C0 00 06 */	li r6, 0x6
/* 81401AB4 | 48 00 03 CD */	bl ATERM_81401E80
/* 81401AB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401ABC | 41 82 00 14 */	beq .L_81401AD0
/* 81401AC0 | 38 00 00 02 */	li r0, 0x2
/* 81401AC4 | 38 60 FF FF */	li r3, -0x1
/* 81401AC8 | 90 0D AC 44 */	stw r0, lbl_81698C84@sda21(r0)
/* 81401ACC | 48 00 00 D8 */	b .L_81401BA4
.L_81401AD0:
/* 81401AD0 | 38 60 00 01 */	li r3, 0x1
/* 81401AD4 | 48 0B 20 A5 */	bl SOHtoNs
/* 81401AD8 | B0 7C 00 00 */	sth r3, 0x0(r28)
/* 81401ADC | 3B 40 00 00 */	li r26, 0x0
/* 81401AE0 | 38 60 20 00 */	li r3, 0x2000
/* 81401AE4 | B3 5C 00 02 */	sth r26, 0x2(r28)
/* 81401AE8 | B3 5C 00 04 */	sth r26, 0x4(r28)
/* 81401AEC | 48 0B 20 8D */	bl SOHtoNs
/* 81401AF0 | B0 7C 00 06 */	sth r3, 0x6(r28)
/* 81401AF4 | 7F 23 CB 78 */	mr r3, r25
/* 81401AF8 | B3 5C 00 08 */	sth r26, 0x8(r28)
/* 81401AFC | 48 0B 20 7D */	bl SOHtoNs
/* 81401B00 | B0 7C 00 0A */	sth r3, 0xa(r28)
/* 81401B04 | 7F A3 EB 78 */	mr r3, r29
/* 81401B08 | 48 0B 20 71 */	bl SOHtoNs
/* 81401B0C | B0 7C 00 0C */	sth r3, 0xc(r28)
/* 81401B10 | 38 00 00 11 */	li r0, 0x11
/* 81401B14 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 81401B18 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81401B1C | 9B DC 00 0E */	stb r30, 0xe(r28)
/* 81401B20 | 38 A0 00 08 */	li r5, 0x8
/* 81401B24 | 98 1C 00 0F */	stb r0, 0xf(r28)
/* 81401B28 | 4B F2 E7 09 */	bl memcpy
/* 81401B2C | 38 19 00 18 */	addi r0, r25, 0x18
/* 81401B30 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81401B34 | 7C 19 07 34 */	extsh r25, r0
/* 81401B38 | 38 80 00 00 */	li r4, 0x0
/* 81401B3C | 38 A0 00 08 */	li r5, 0x8
/* 81401B40 | 4B F2 E7 F5 */	bl memset
/* 81401B44 | 38 00 00 02 */	li r0, 0x2
/* 81401B48 | 38 60 57 90 */	li r3, 0x5790
/* 81401B4C | 98 01 00 11 */	stb r0, 0x11(r1)
/* 81401B50 | 48 0B 20 29 */	bl SOHtoNs
/* 81401B54 | 3F 40 81 0C */	lis r26, ATERM_810BDEF8@ha
/* 81401B58 | B0 61 00 12 */	sth r3, 0x12(r1)
/* 81401B5C | 3B 5A DE F8 */	addi r26, r26, ATERM_810BDEF8@l
/* 81401B60 | 80 7A 00 10 */	lwz r3, 0x10(r26)
/* 81401B64 | 48 0B 20 11 */	bl SOHtoNl
/* 81401B68 | 88 1A 00 18 */	lbz r0, 0x18(r26)
/* 81401B6C | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81401B70 | 7C 00 07 75 */	extsb. r0, r0
/* 81401B74 | 40 82 00 0C */	bne .L_81401B80
/* 81401B78 | 38 00 FF FF */	li r0, -0x1
/* 81401B7C | 90 01 00 14 */	stw r0, 0x14(r1)
.L_81401B80:
/* 81401B80 | 38 00 00 08 */	li r0, 0x8
/* 81401B84 | 7F 63 DB 78 */	mr r3, r27
/* 81401B88 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 81401B8C | 7F 84 E3 78 */	mr r4, r28
/* 81401B90 | 7F 25 CB 78 */	mr r5, r25
/* 81401B94 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 81401B98 | 38 C0 00 00 */	li r6, 0x0
/* 81401B9C | 48 0B 19 A1 */	bl SOSendTo
/* 81401BA0 | 38 60 00 00 */	li r3, 0x0
.L_81401BA4:
/* 81401BA4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81401BA8 | 48 1F 79 5D */	bl _restgpr_25
/* 81401BAC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81401BB0 | 7C 08 03 A6 */	mtlr r0
/* 81401BB4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81401BB8 | 4E 80 00 20 */	blr
.endfn ATERM_81401778

# .text:0x3940 | 0x81401BBC | size: 0xE0
.fn ATERM_81401BBC, global
/* 81401BBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81401BC0 | 7C 08 02 A6 */	mflr r0
/* 81401BC4 | 3C C0 81 0C */	lis r6, ATERM_810BDEF8@ha
/* 81401BC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81401BCC | 38 A6 DE F8 */	addi r5, r6, ATERM_810BDEF8@l
/* 81401BD0 | 38 00 00 01 */	li r0, 0x1
/* 81401BD4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81401BD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81401BDC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81401BE0 | 88 85 00 19 */	lbz r4, 0x19(r5)
/* 81401BE4 | 98 83 00 00 */	stb r4, 0x0(r3)
/* 81401BE8 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 81401BEC | 38 63 00 06 */	addi r3, r3, 0x6
/* 81401BF0 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81401BF4 | 80 86 DE F8 */	lwz r4, ATERM_810BDEF8@l(r6)
/* 81401BF8 | 7C 1E 07 34 */	extsh r30, r0
/* 81401BFC | 7F C5 F3 78 */	mr r5, r30
/* 81401C00 | 4B F2 E6 31 */	bl memcpy
/* 81401C04 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 81401C08 | 48 0B 1F 71 */	bl SOHtoNs
/* 81401C0C | 38 1E 00 06 */	addi r0, r30, 0x6
/* 81401C10 | B0 7F 00 02 */	sth r3, 0x2(r31)
/* 81401C14 | 7C 03 07 34 */	extsh r3, r0
/* 81401C18 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81401C1C | 54 60 0F FE */	srwi r0, r3, 31
/* 81401C20 | 7C 60 1A 14 */	add r3, r0, r3
/* 81401C24 | 54 60 00 3C */	clrrwi r0, r3, 1
/* 81401C28 | 7C 1E 07 34 */	extsh r30, r0
/* 81401C2C | 54 63 04 3C */	rlwinm r3, r3, 0, 16, 30
/* 81401C30 | 48 0B 1F 49 */	bl SOHtoNs
/* 81401C34 | B0 7F 00 04 */	sth r3, 0x4(r31)
/* 81401C38 | 38 60 00 60 */	li r3, 0x60
/* 81401C3C | 38 00 00 00 */	li r0, 0x0
/* 81401C40 | 7C 7F F1 EE */	stbux r3, r31, r30
/* 81401C44 | 38 60 00 00 */	li r3, 0x0
/* 81401C48 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 81401C4C | 48 0B 1F 2D */	bl SOHtoNs
/* 81401C50 | B0 7F 00 04 */	sth r3, 0x4(r31)
/* 81401C54 | 38 60 00 0E */	li r3, 0xe
/* 81401C58 | 48 0B 1F 1D */	bl SOHtoNl
/* 81401C5C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81401C60 | 38 7F 00 06 */	addi r3, r31, 0x6
/* 81401C64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81401C68 | 38 A0 00 04 */	li r5, 0x4
/* 81401C6C | 4B F2 E5 C5 */	bl memcpy
/* 81401C70 | 38 60 00 04 */	li r3, 0x4
/* 81401C74 | 48 0B 1F 05 */	bl SOHtoNs
/* 81401C78 | B0 7F 00 02 */	sth r3, 0x2(r31)
/* 81401C7C | 38 1E 00 0A */	addi r0, r30, 0xa
/* 81401C80 | 7C 03 07 34 */	extsh r3, r0
/* 81401C84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81401C88 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81401C8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81401C90 | 7C 08 03 A6 */	mtlr r0
/* 81401C94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81401C98 | 4E 80 00 20 */	blr
.endfn ATERM_81401BBC

# .text:0x3A20 | 0x81401C9C | size: 0x124
.fn ATERM_81401C9C, global
/* 81401C9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81401CA0 | 38 00 00 00 */	li r0, 0x0
/* 81401CA4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81401CA8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81401CAC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81401CB0 | 3B C0 00 00 */	li r30, 0x0
/* 81401CB4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81401CB8 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 81401CBC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81401CC0 | 90 C3 00 0C */	stw r6, 0xc(r3)
/* 81401CC4 | 41 82 00 90 */	beq .L_81401D54
/* 81401CC8 | 28 06 00 08 */	cmplwi r6, 0x8
/* 81401CCC | 39 06 FF F8 */	subi r8, r6, 0x8
/* 81401CD0 | 40 81 00 60 */	ble .L_81401D30
/* 81401CD4 | 38 08 00 07 */	addi r0, r8, 0x7
/* 81401CD8 | 54 00 E8 FE */	srwi r0, r0, 3
/* 81401CDC | 7C 09 03 A6 */	mtctr r0
/* 81401CE0 | 28 08 00 00 */	cmplwi r8, 0x0
/* 81401CE4 | 40 81 00 4C */	ble .L_81401D30
.L_81401CE8:
/* 81401CE8 | 7F C7 F1 AE */	stbx r30, r7, r30
/* 81401CEC | 7F E7 F2 14 */	add r31, r7, r30
/* 81401CF0 | 38 1E 00 01 */	addi r0, r30, 0x1
/* 81401CF4 | 39 9E 00 02 */	addi r12, r30, 0x2
/* 81401CF8 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 81401CFC | 39 7E 00 03 */	addi r11, r30, 0x3
/* 81401D00 | 39 5E 00 04 */	addi r10, r30, 0x4
/* 81401D04 | 39 3E 00 05 */	addi r9, r30, 0x5
/* 81401D08 | 99 9F 00 02 */	stb r12, 0x2(r31)
/* 81401D0C | 39 1E 00 06 */	addi r8, r30, 0x6
/* 81401D10 | 38 1E 00 07 */	addi r0, r30, 0x7
/* 81401D14 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 81401D18 | 99 7F 00 03 */	stb r11, 0x3(r31)
/* 81401D1C | 99 5F 00 04 */	stb r10, 0x4(r31)
/* 81401D20 | 99 3F 00 05 */	stb r9, 0x5(r31)
/* 81401D24 | 99 1F 00 06 */	stb r8, 0x6(r31)
/* 81401D28 | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 81401D2C | 42 00 FF BC */	bdnz .L_81401CE8
.L_81401D30:
/* 81401D30 | 7C 1E 30 50 */	subf r0, r30, r6
/* 81401D34 | 7D 07 F2 14 */	add r8, r7, r30
/* 81401D38 | 7C 09 03 A6 */	mtctr r0
/* 81401D3C | 7C 1E 30 40 */	cmplw r30, r6
/* 81401D40 | 40 80 00 14 */	bge .L_81401D54
.L_81401D44:
/* 81401D44 | 9B C8 00 00 */	stb r30, 0x0(r8)
/* 81401D48 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81401D4C | 39 08 00 01 */	addi r8, r8, 0x1
/* 81401D50 | 42 00 FF F4 */	bdnz .L_81401D44
.L_81401D54:
/* 81401D54 | 7C E8 3B 78 */	mr r8, r7
/* 81401D58 | 38 00 00 00 */	li r0, 0x0
/* 81401D5C | 39 40 00 00 */	li r10, 0x0
/* 81401D60 | 7C C9 03 A6 */	mtctr r6
/* 81401D64 | 28 06 00 00 */	cmplwi r6, 0x0
/* 81401D68 | 40 81 00 48 */	ble .L_81401DB0
.L_81401D6C:
/* 81401D6C | 89 68 00 00 */	lbz r11, 0x0(r8)
/* 81401D70 | 7D 24 50 AE */	lbzx r9, r4, r10
/* 81401D74 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81401D78 | 7C 0B 02 14 */	add r0, r11, r0
/* 81401D7C | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 81401D80 | 7D 29 02 14 */	add r9, r9, r0
/* 81401D84 | 7C 0A 28 40 */	cmplw r10, r5
/* 81401D88 | 7C 09 33 96 */	divwu r0, r9, r6
/* 81401D8C | 7C 00 31 D6 */	mullw r0, r0, r6
/* 81401D90 | 7C 00 48 50 */	subf r0, r0, r9
/* 81401D94 | 7C C7 00 AE */	lbzx r6, r7, r0
/* 81401D98 | 7D 67 01 AE */	stbx r11, r7, r0
/* 81401D9C | 98 C8 00 00 */	stb r6, 0x0(r8)
/* 81401DA0 | 41 80 00 08 */	blt .L_81401DA8
/* 81401DA4 | 39 40 00 00 */	li r10, 0x0
.L_81401DA8:
/* 81401DA8 | 39 08 00 01 */	addi r8, r8, 0x1
/* 81401DAC | 42 00 FF C0 */	bdnz .L_81401D6C
.L_81401DB0:
/* 81401DB0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81401DB4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81401DB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81401DBC | 4E 80 00 20 */	blr
.endfn ATERM_81401C9C

# .text:0x3B44 | 0x81401DC0 | size: 0xC0
.fn ATERM_81401DC0, global
/* 81401DC0 | 38 00 01 00 */	li r0, 0x100
/* 81401DC4 | 38 A0 00 00 */	li r5, 0x0
/* 81401DC8 | 7C 09 03 A6 */	mtctr r0
.L_81401DCC:
/* 81401DCC | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 81401DD0 | 54 A3 F8 7E */	srwi r3, r5, 1
/* 81401DD4 | 41 82 00 0C */	beq .L_81401DE0
/* 81401DD8 | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401DDC | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401DE0:
/* 81401DE0 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401DE4 | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401DE8 | 41 82 00 0C */	beq .L_81401DF4
/* 81401DEC | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401DF0 | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401DF4:
/* 81401DF4 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401DF8 | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401DFC | 41 82 00 0C */	beq .L_81401E08
/* 81401E00 | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401E04 | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401E08:
/* 81401E08 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401E0C | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401E10 | 41 82 00 0C */	beq .L_81401E1C
/* 81401E14 | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401E18 | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401E1C:
/* 81401E1C | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401E20 | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401E24 | 41 82 00 0C */	beq .L_81401E30
/* 81401E28 | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401E2C | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401E30:
/* 81401E30 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401E34 | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401E38 | 41 82 00 0C */	beq .L_81401E44
/* 81401E3C | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401E40 | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401E44:
/* 81401E44 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401E48 | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401E4C | 41 82 00 0C */	beq .L_81401E58
/* 81401E50 | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401E54 | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401E58:
/* 81401E58 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81401E5C | 54 63 F8 7E */	srwi r3, r3, 1
/* 81401E60 | 41 82 00 0C */	beq .L_81401E6C
/* 81401E64 | 6C 63 ED B8 */	xoris r3, r3, 0xedb8
/* 81401E68 | 68 63 83 20 */	xori r3, r3, 0x8320
.L_81401E6C:
/* 81401E6C | 90 64 00 00 */	stw r3, 0x0(r4)
/* 81401E70 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81401E74 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81401E78 | 42 00 FF 54 */	bdnz .L_81401DCC
/* 81401E7C | 4E 80 00 20 */	blr
.endfn ATERM_81401DC0

# .text:0x3C04 | 0x81401E80 | size: 0x24C
.fn ATERM_81401E80, global
/* 81401E80 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81401E84 | 7C 08 02 A6 */	mflr r0
/* 81401E88 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81401E8C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81401E90 | 48 1F 76 19 */	bl _savegpr_21
/* 81401E94 | 54 80 0F FE */	srwi r0, r4, 31
/* 81401E98 | 7C 75 1B 78 */	mr r21, r3
/* 81401E9C | 7C 00 22 14 */	add r0, r0, r4
/* 81401EA0 | 7C 96 23 78 */	mr r22, r4
/* 81401EA4 | 7C 1D 0E 70 */	srawi r29, r0, 1
/* 81401EA8 | 7C B7 2B 78 */	mr r23, r5
/* 81401EAC | 7C D8 33 78 */	mr r24, r6
/* 81401EB0 | 7F A3 EB 78 */	mr r3, r29
/* 81401EB4 | 4B FF B3 61 */	bl AOSSi_Alloc
/* 81401EB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401EBC | 7C 7A 1B 78 */	mr r26, r3
/* 81401EC0 | 40 82 00 0C */	bne .L_81401ECC
/* 81401EC4 | 38 60 FF FF */	li r3, -0x1
/* 81401EC8 | 48 00 01 EC */	b .L_814020B4
.L_81401ECC:
/* 81401ECC | 7E C3 B3 78 */	mr r3, r22
/* 81401ED0 | 4B FF B3 45 */	bl AOSSi_Alloc
/* 81401ED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81401ED8 | 7C 79 1B 78 */	mr r25, r3
/* 81401EDC | 40 82 00 14 */	bne .L_81401EF0
/* 81401EE0 | 7F 43 D3 78 */	mr r3, r26
/* 81401EE4 | 4B FF B3 55 */	bl AOSSi_Free
/* 81401EE8 | 38 60 FF FF */	li r3, -0x1
/* 81401EEC | 48 00 01 C8 */	b .L_814020B4
.L_81401EF0:
/* 81401EF0 | 7F 95 EA 14 */	add r28, r21, r29
/* 81401EF4 | 7F C3 EA 14 */	add r30, r3, r29
/* 81401EF8 | 3B 60 00 00 */	li r27, 0x0
/* 81401EFC | 3F E0 80 00 */	lis r31, 0x8000
.L_81401F00:
/* 81401F00 | 7C 1B C3 D6 */	divw r0, r27, r24
/* 81401F04 | 7F 43 D3 78 */	mr r3, r26
/* 81401F08 | 38 C0 00 00 */	li r6, 0x0
/* 81401F0C | 7C 00 C1 D6 */	mullw r0, r0, r24
/* 81401F10 | 7C A0 D8 50 */	subf r5, r0, r27
/* 81401F14 | 7F A9 03 A6 */	mtctr r29
/* 81401F18 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81401F1C | 40 81 00 34 */	ble .L_81401F50
.L_81401F20:
/* 81401F20 | 98 C3 00 00 */	stb r6, 0x0(r3)
/* 81401F24 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 81401F28 | 7C 17 28 AE */	lbzx r0, r23, r5
/* 81401F2C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81401F30 | 7C 05 C0 00 */	cmpw r5, r24
/* 81401F34 | 7C 80 02 78 */	xor r0, r4, r0
/* 81401F38 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81401F3C | 41 80 00 08 */	blt .L_81401F44
/* 81401F40 | 38 A0 00 00 */	li r5, 0x0
.L_81401F44:
/* 81401F44 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81401F48 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81401F4C | 42 00 FF D4 */	bdnz .L_81401F20
.L_81401F50:
/* 81401F50 | 2C 9D 00 00 */	cmpwi cr1, r29, 0x0
/* 81401F54 | 38 60 00 00 */	li r3, 0x0
/* 81401F58 | 40 85 01 0C */	ble cr1, .L_81402064
/* 81401F5C | 2C 1D 00 08 */	cmpwi r29, 0x8
/* 81401F60 | 38 9D FF F8 */	subi r4, r29, 0x8
/* 81401F64 | 40 81 00 C8 */	ble .L_8140202C
/* 81401F68 | 38 A0 00 00 */	li r5, 0x0
/* 81401F6C | 41 84 00 14 */	blt cr1, .L_81401F80
/* 81401F70 | 38 1F FF FE */	subi r0, r31, 0x2
/* 81401F74 | 7C 1D 00 00 */	cmpw r29, r0
/* 81401F78 | 41 81 00 08 */	bgt .L_81401F80
/* 81401F7C | 38 A0 00 01 */	li r5, 0x1
.L_81401F80:
/* 81401F80 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81401F84 | 41 82 00 A8 */	beq .L_8140202C
/* 81401F88 | 38 04 00 07 */	addi r0, r4, 0x7
/* 81401F8C | 54 00 E8 FE */	srwi r0, r0, 3
/* 81401F90 | 7C 09 03 A6 */	mtctr r0
/* 81401F94 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81401F98 | 40 81 00 94 */	ble .L_8140202C
.L_81401F9C:
/* 81401F9C | 7C DC 18 AE */	lbzx r6, r28, r3
/* 81401FA0 | 7C 9A 1A 14 */	add r4, r26, r3
/* 81401FA4 | 7C 1A 18 AE */	lbzx r0, r26, r3
/* 81401FA8 | 7C BC 1A 14 */	add r5, r28, r3
/* 81401FAC | 7C C0 02 78 */	xor r0, r6, r0
/* 81401FB0 | 7C 1C 19 AE */	stbx r0, r28, r3
/* 81401FB4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81401FB8 | 88 C5 00 01 */	lbz r6, 0x1(r5)
/* 81401FBC | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81401FC0 | 7C C0 02 78 */	xor r0, r6, r0
/* 81401FC4 | 98 05 00 01 */	stb r0, 0x1(r5)
/* 81401FC8 | 88 C5 00 02 */	lbz r6, 0x2(r5)
/* 81401FCC | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 81401FD0 | 7C C0 02 78 */	xor r0, r6, r0
/* 81401FD4 | 98 05 00 02 */	stb r0, 0x2(r5)
/* 81401FD8 | 88 C5 00 03 */	lbz r6, 0x3(r5)
/* 81401FDC | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81401FE0 | 7C C0 02 78 */	xor r0, r6, r0
/* 81401FE4 | 98 05 00 03 */	stb r0, 0x3(r5)
/* 81401FE8 | 88 C5 00 04 */	lbz r6, 0x4(r5)
/* 81401FEC | 88 04 00 04 */	lbz r0, 0x4(r4)
/* 81401FF0 | 7C C0 02 78 */	xor r0, r6, r0
/* 81401FF4 | 98 05 00 04 */	stb r0, 0x4(r5)
/* 81401FF8 | 88 C5 00 05 */	lbz r6, 0x5(r5)
/* 81401FFC | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 81402000 | 7C C0 02 78 */	xor r0, r6, r0
/* 81402004 | 98 05 00 05 */	stb r0, 0x5(r5)
/* 81402008 | 88 C5 00 06 */	lbz r6, 0x6(r5)
/* 8140200C | 88 04 00 06 */	lbz r0, 0x6(r4)
/* 81402010 | 7C C0 02 78 */	xor r0, r6, r0
/* 81402014 | 98 05 00 06 */	stb r0, 0x6(r5)
/* 81402018 | 88 C5 00 07 */	lbz r6, 0x7(r5)
/* 8140201C | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 81402020 | 7C C0 02 78 */	xor r0, r6, r0
/* 81402024 | 98 05 00 07 */	stb r0, 0x7(r5)
/* 81402028 | 42 00 FF 74 */	bdnz .L_81401F9C
.L_8140202C:
/* 8140202C | 7C 03 E8 50 */	subf r0, r3, r29
/* 81402030 | 7C BC 1A 14 */	add r5, r28, r3
/* 81402034 | 7C 9A 1A 14 */	add r4, r26, r3
/* 81402038 | 7C 09 03 A6 */	mtctr r0
/* 8140203C | 7C 03 E8 00 */	cmpw r3, r29
/* 81402040 | 40 80 00 24 */	bge .L_81402064
.L_81402044:
/* 81402044 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81402048 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8140204C | 88 C5 00 00 */	lbz r6, 0x0(r5)
/* 81402050 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81402054 | 7C C0 02 78 */	xor r0, r6, r0
/* 81402058 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 8140205C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81402060 | 42 00 FF E4 */	bdnz .L_81402044
.L_81402064:
/* 81402064 | 7F 23 CB 78 */	mr r3, r25
/* 81402068 | 7F 84 E3 78 */	mr r4, r28
/* 8140206C | 7F A5 EB 78 */	mr r5, r29
/* 81402070 | 4B F2 E1 C1 */	bl memcpy
/* 81402074 | 7F C3 F3 78 */	mr r3, r30
/* 81402078 | 7E A4 AB 78 */	mr r4, r21
/* 8140207C | 7F A5 EB 78 */	mr r5, r29
/* 81402080 | 4B F2 E1 B1 */	bl memcpy
/* 81402084 | 7E A3 AB 78 */	mr r3, r21
/* 81402088 | 7F 24 CB 78 */	mr r4, r25
/* 8140208C | 7E C5 B3 78 */	mr r5, r22
/* 81402090 | 4B F2 E1 A1 */	bl memcpy
/* 81402094 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81402098 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 8140209C | 41 80 FE 64 */	blt .L_81401F00
/* 814020A0 | 7F 43 D3 78 */	mr r3, r26
/* 814020A4 | 4B FF B1 95 */	bl AOSSi_Free
/* 814020A8 | 7F 23 CB 78 */	mr r3, r25
/* 814020AC | 4B FF B1 8D */	bl AOSSi_Free
/* 814020B0 | 38 60 00 00 */	li r3, 0x0
.L_814020B4:
/* 814020B4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814020B8 | 48 1F 74 3D */	bl _restgpr_21
/* 814020BC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814020C0 | 7C 08 03 A6 */	mtlr r0
/* 814020C4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814020C8 | 4E 80 00 20 */	blr
.endfn ATERM_81401E80

# .text:0x3E50 | 0x814020CC | size: 0xF0
.fn ATERM_814020CC, global
/* 814020CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814020D0 | 7C 08 02 A6 */	mflr r0
/* 814020D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814020D8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814020DC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814020E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814020E4 | 3B A0 00 00 */	li r29, 0x0
/* 814020E8 | 4B FF B6 45 */	bl AOSSi_WLANConnect
/* 814020EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814020F0 | 41 82 00 0C */	beq .L_814020FC
/* 814020F4 | 38 60 FF FF */	li r3, -0x1
/* 814020F8 | 48 00 00 A8 */	b .L_814021A0
.L_814020FC:
/* 814020FC | 48 0B 01 01 */	bl SOStartup
/* 81402100 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402104 | 40 82 00 90 */	bne .L_81402194
/* 81402108 | 38 00 00 01 */	li r0, 0x1
/* 8140210C | 3C 60 10 62 */	lis r3, 0x1062
/* 81402110 | 90 0D AC 48 */	stw r0, lbl_81698C88@sda21(r0)
/* 81402114 | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
/* 81402118 | 3F E0 80 00 */	lis r31, 0x8000
/* 8140211C | 48 00 00 68 */	b .L_81402184
.L_81402120:
/* 81402120 | 80 0D AB F8 */	lwz r0, AOSSi_cancel_flag@sda21(r0)
/* 81402124 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81402128 | 40 82 00 0C */	bne .L_81402134
/* 8140212C | 38 60 FF FF */	li r3, -0x1
/* 81402130 | 48 00 00 70 */	b .L_814021A0
.L_81402134:
/* 81402134 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81402138 | 2C 1D 00 1E */	cmpwi r29, 0x1e
/* 8140213C | 40 81 00 2C */	ble .L_81402168
/* 81402140 | 80 0D AC 48 */	lwz r0, lbl_81698C88@sda21(r0)
/* 81402144 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81402148 | 40 82 00 10 */	bne .L_81402158
/* 8140214C | 38 00 00 00 */	li r0, 0x0
/* 81402150 | 90 0D AC 48 */	stw r0, lbl_81698C88@sda21(r0)
/* 81402154 | 48 0B 04 DD */	bl SOCleanup
.L_81402158:
/* 81402158 | 80 6D AC 34 */	lwz r3, lbl_81698C74@sda21(r0)
/* 8140215C | 38 00 00 00 */	li r0, 0x0
/* 81402160 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81402164 | 48 00 00 38 */	b .L_8140219C
.L_81402168:
/* 81402168 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8140216C | 38 60 00 00 */	li r3, 0x0
/* 81402170 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402174 | 7C 1E 00 16 */	mulhwu r0, r30, r0
/* 81402178 | 54 00 D1 BE */	srwi r0, r0, 6
/* 8140217C | 1C 80 00 64 */	mulli r4, r0, 0x64
/* 81402180 | 48 13 3A 4D */	bl OSSleepTicks
.L_81402184:
/* 81402184 | 48 0B 1E E1 */	bl SOGetHostID
/* 81402188 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140218C | 41 82 FF 94 */	beq .L_81402120
/* 81402190 | 48 00 00 0C */	b .L_8140219C
.L_81402194:
/* 81402194 | 38 60 FF FF */	li r3, -0x1
/* 81402198 | 48 00 00 08 */	b .L_814021A0
.L_8140219C:
/* 8140219C | 38 60 00 00 */	li r3, 0x0
.L_814021A0:
/* 814021A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814021A4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814021A8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814021AC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814021B0 | 7C 08 03 A6 */	mtlr r0
/* 814021B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814021B8 | 4E 80 00 20 */	blr
.endfn ATERM_814020CC

# .text:0x3F40 | 0x814021BC | size: 0x268
.fn ATERM_814021BC, global
/* 814021BC | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814021C0 | 7C 08 02 A6 */	mflr r0
/* 814021C4 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814021C8 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814021CC | 48 1F 72 F5 */	bl _savegpr_27
/* 814021D0 | 3F C0 81 0C */	lis r30, ATERM_810BECA0@ha
/* 814021D4 | 3B 60 00 00 */	li r27, 0x0
/* 814021D8 | 3B DE EC A0 */	addi r30, r30, ATERM_810BECA0@l
/* 814021DC | 38 80 00 00 */	li r4, 0x0
/* 814021E0 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814021E4 | 38 A0 07 C4 */	li r5, 0x7c4
/* 814021E8 | 4B F2 E1 4D */	bl memset
/* 814021EC | 3B A0 00 00 */	li r29, 0x0
/* 814021F0 | 3B 9E 00 00 */	addi r28, r30, 0x0
/* 814021F4 | 38 60 05 14 */	li r3, 0x514
/* 814021F8 | 38 A0 00 64 */	li r5, 0x64
/* 814021FC | 38 00 00 04 */	li r0, 0x4
/* 81402200 | 90 7C 00 1C */	stw r3, 0x1c(r28)
/* 81402204 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 81402208 | 38 8D 91 E4 */	li r4, lbl_81697224@sda21
/* 8140220C | 90 BC 00 20 */	stw r5, 0x20(r28)
/* 81402210 | 38 A0 00 04 */	li r5, 0x4
/* 81402214 | 90 1C 00 24 */	stw r0, 0x24(r28)
/* 81402218 | 93 BE 00 00 */	stw r29, 0x0(r30)
/* 8140221C | 93 BC 00 04 */	stw r29, 0x4(r28)
/* 81402220 | 4B F2 E0 11 */	bl memcpy
/* 81402224 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 81402228 | 38 8D 91 E8 */	li r4, lbl_81697228@sda21
/* 8140222C | 38 A0 00 04 */	li r5, 0x4
/* 81402230 | 4B F2 E0 01 */	bl memcpy
/* 81402234 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 81402238 | 38 8D 91 EC */	li r4, lbl_8169722C@sda21
/* 8140223C | 38 A0 00 04 */	li r5, 0x4
/* 81402240 | 4B F2 DF F1 */	bl memcpy
/* 81402244 | 38 7C 00 14 */	addi r3, r28, 0x14
/* 81402248 | 38 8D 91 F0 */	li r4, lbl_81697230@sda21
/* 8140224C | 38 A0 00 04 */	li r5, 0x4
/* 81402250 | 4B F2 DF E1 */	bl memcpy
/* 81402254 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 81402258 | 38 8D 91 F4 */	li r4, lbl_81697234@sda21
/* 8140225C | 38 A0 00 04 */	li r5, 0x4
/* 81402260 | 4B F2 DF D1 */	bl memcpy
/* 81402264 | 7F 83 E3 78 */	mr r3, r28
/* 81402268 | 48 09 04 51 */	bl NCDSetIpConfig
/* 8140226C | 38 7E 07 C4 */	addi r3, r30, 0x7c4
/* 81402270 | 38 80 00 00 */	li r4, 0x0
/* 81402274 | 38 A0 01 5E */	li r5, 0x15e
/* 81402278 | 4B F2 E0 BD */	bl memset
/* 8140227C | 3B 9E 07 C4 */	addi r28, r30, 0x7c4
/* 81402280 | 38 00 00 01 */	li r0, 0x1
/* 81402284 | 98 1E 07 C4 */	stb r0, 0x7c4(r30)
/* 81402288 | 38 7E 09 24 */	addi r3, r30, 0x924
/* 8140228C | B3 BC 00 02 */	sth r29, 0x2(r28)
/* 81402290 | 9B BC 00 04 */	stb r29, 0x4(r28)
/* 81402294 | B3 BC 00 2A */	sth r29, 0x2a(r28)
/* 81402298 | 48 1F 6C 65 */	bl strlen
/* 8140229C | B0 7C 00 26 */	sth r3, 0x26(r28)
/* 814022A0 | 38 7C 00 06 */	addi r3, r28, 0x6
/* 814022A4 | 38 9E 09 24 */	addi r4, r30, 0x924
/* 814022A8 | 38 A0 00 20 */	li r5, 0x20
/* 814022AC | 4B F2 DF 85 */	bl memcpy
/* 814022B0 | 7F 83 E3 78 */	mr r3, r28
/* 814022B4 | 48 09 01 99 */	bl NCDSetIfConfig
/* 814022B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814022BC | 41 82 00 0C */	beq .L_814022C8
/* 814022C0 | 38 60 FF FE */	li r3, -0x2
/* 814022C4 | 48 00 01 48 */	b .L_8140240C
.L_814022C8:
/* 814022C8 | 3C 60 10 62 */	lis r3, 0x1062
/* 814022CC | 3F A0 80 00 */	lis r29, 0x8000
/* 814022D0 | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
/* 814022D4 | 3F 80 81 40 */	lis r28, ATERM_8140684C@ha
/* 814022D8 | 48 00 00 70 */	b .L_81402348
.L_814022DC:
/* 814022DC | 2C 1B 01 F4 */	cmpwi r27, 0x1f4
/* 814022E0 | 40 81 00 0C */	ble .L_814022EC
/* 814022E4 | 38 60 FF FE */	li r3, -0x2
/* 814022E8 | 48 00 01 24 */	b .L_8140240C
.L_814022EC:
/* 814022EC | 38 61 00 38 */	addi r3, r1, 0x38
/* 814022F0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814022F4 | 38 A0 00 01 */	li r5, 0x1
/* 814022F8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814022FC | 48 12 ED 25 */	bl OSInitMessageQueue
/* 81402300 | 38 61 00 88 */	addi r3, r1, 0x88
/* 81402304 | 48 12 A5 E1 */	bl OSCreateAlarm
/* 81402308 | 38 61 00 88 */	addi r3, r1, 0x88
/* 8140230C | 38 81 00 38 */	addi r4, r1, 0x38
/* 81402310 | 48 12 AC BD */	bl fn_8152CFCC
/* 81402314 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 81402318 | 38 61 00 88 */	addi r3, r1, 0x88
/* 8140231C | 38 FC 68 4C */	addi r7, r28, ATERM_8140684C@l
/* 81402320 | 38 A0 00 00 */	li r5, 0x0
/* 81402324 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402328 | 7C 1E 00 16 */	mulhwu r0, r30, r0
/* 8140232C | 54 00 D1 BE */	srwi r0, r0, 6
/* 81402330 | 1C C0 00 0A */	mulli r6, r0, 0xa
/* 81402334 | 48 12 A8 11 */	bl OSSetAlarm
/* 81402338 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8140233C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81402340 | 38 A0 00 01 */	li r5, 0x1
/* 81402344 | 48 12 EE 05 */	bl OSReceiveMessage
.L_81402348:
/* 81402348 | 48 09 08 79 */	bl NCDIsInterfaceDecided
/* 8140234C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402350 | 41 82 FF 8C */	beq .L_814022DC
/* 81402354 | 3B 60 00 01 */	li r27, 0x1
/* 81402358 | 93 6D AC 74 */	stw r27, lbl_81698CB4@sda21(r0)
/* 8140235C | 48 0A FE A1 */	bl SOStartup
/* 81402360 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402364 | 40 82 00 0C */	bne .L_81402370
/* 81402368 | 38 00 00 01 */	li r0, 0x1
/* 8140236C | 90 0D AC 70 */	stw r0, lbl_81698CB0@sda21(r0)
.L_81402370:
/* 81402370 | 80 0D AC 70 */	lwz r0, lbl_81698CB0@sda21(r0)
/* 81402374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402378 | 41 82 00 8C */	beq .L_81402404
/* 8140237C | 3C 60 10 62 */	lis r3, 0x1062
/* 81402380 | 3F A0 80 00 */	lis r29, 0x8000
/* 81402384 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 81402388 | 3F C0 81 40 */	lis r30, ATERM_8140684C@ha
/* 8140238C | 48 00 00 5C */	b .L_814023E8
.L_81402390:
/* 81402390 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81402394 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81402398 | 38 A0 00 01 */	li r5, 0x1
/* 8140239C | 48 12 EC 85 */	bl OSInitMessageQueue
/* 814023A0 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814023A4 | 48 12 A5 41 */	bl OSCreateAlarm
/* 814023A8 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814023AC | 38 81 00 18 */	addi r4, r1, 0x18
/* 814023B0 | 48 12 AC 1D */	bl fn_8152CFCC
/* 814023B4 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 814023B8 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814023BC | 38 FE 68 4C */	addi r7, r30, ATERM_8140684C@l
/* 814023C0 | 38 A0 00 00 */	li r5, 0x0
/* 814023C4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814023C8 | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 814023CC | 54 00 D1 BE */	srwi r0, r0, 6
/* 814023D0 | 1C C0 00 0A */	mulli r6, r0, 0xa
/* 814023D4 | 48 12 A7 71 */	bl OSSetAlarm
/* 814023D8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814023DC | 38 81 00 0C */	addi r4, r1, 0xc
/* 814023E0 | 38 A0 00 01 */	li r5, 0x1
/* 814023E4 | 48 12 ED 65 */	bl OSReceiveMessage
.L_814023E8:
/* 814023E8 | 38 60 00 00 */	li r3, 0x0
/* 814023EC | 48 0B 17 89 */	bl SOHtoNl
/* 814023F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814023F4 | 48 0B 1C 71 */	bl SOGetHostID
/* 814023F8 | 7C 03 F8 40 */	cmplw r3, r31
/* 814023FC | 41 82 FF 94 */	beq .L_81402390
/* 81402400 | 48 00 00 08 */	b .L_81402408
.L_81402404:
/* 81402404 | 3B 60 FF FE */	li r27, -0x2
.L_81402408:
/* 81402408 | 7F 63 DB 78 */	mr r3, r27
.L_8140240C:
/* 8140240C | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81402410 | 48 1F 70 FD */	bl _restgpr_27
/* 81402414 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 81402418 | 7C 08 03 A6 */	mtlr r0
/* 8140241C | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 81402420 | 4E 80 00 20 */	blr
.endfn ATERM_814021BC

# .text:0x41A8 | 0x81402424 | size: 0x348
.fn ATERM_81402424, global
/* 81402424 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81402428 | 7C 2C 0B 78 */	mr r12, r1
/* 8140242C | 21 6B FD 20 */	subfic r11, r11, -0x2e0
/* 81402430 | 7C 21 59 6E */	stwux r1, r1, r11
/* 81402434 | 7C 08 02 A6 */	mflr r0
/* 81402438 | 7D 8B 63 78 */	mr r11, r12
/* 8140243C | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81402440 | 48 1F 70 69 */	bl _savegpr_21
/* 81402444 | 7C 7D 1B 78 */	mr r29, r3
/* 81402448 | 7C 99 23 78 */	mr r25, r4
/* 8140244C | 3B C0 FF FE */	li r30, -0x2
/* 81402450 | 3A A0 00 00 */	li r21, 0x0
/* 81402454 | 3B 80 00 00 */	li r28, 0x0
/* 81402458 | 3B 60 00 00 */	li r27, 0x0
/* 8140245C | 3B 40 00 00 */	li r26, 0x0
/* 81402460 | 48 09 08 CD */	bl NCDLockWirelessDriver
/* 81402464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402468 | 7C 7F 1B 78 */	mr r31, r3
/* 8140246C | 40 81 02 E0 */	ble .L_8140274C
/* 81402470 | 3C 60 10 62 */	lis r3, 0x1062
/* 81402474 | 3E E0 80 00 */	lis r23, 0x8000
/* 81402478 | 3B 03 4D D3 */	addi r24, r3, 0x4dd3
/* 8140247C | 3E C0 81 40 */	lis r22, ATERM_8140684C@ha
.L_81402480:
/* 81402480 | 38 60 00 03 */	li r3, 0x3
/* 81402484 | 48 0D 76 05 */	bl WD_Startup
/* 81402488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140248C | 41 82 00 6C */	beq .L_814024F8
/* 81402490 | 2C 15 00 0A */	cmpwi r21, 0xa
/* 81402494 | 41 81 02 28 */	bgt .L_814026BC
/* 81402498 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 8140249C | 38 81 00 38 */	addi r4, r1, 0x38
/* 814024A0 | 38 A0 00 01 */	li r5, 0x1
/* 814024A4 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814024A8 | 48 12 EB 79 */	bl OSInitMessageQueue
/* 814024AC | 38 61 01 58 */	addi r3, r1, 0x158
/* 814024B0 | 48 12 A4 35 */	bl OSCreateAlarm
/* 814024B4 | 38 61 01 58 */	addi r3, r1, 0x158
/* 814024B8 | 38 81 00 A8 */	addi r4, r1, 0xa8
/* 814024BC | 48 12 AB 11 */	bl fn_8152CFCC
/* 814024C0 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814024C4 | 38 61 01 58 */	addi r3, r1, 0x158
/* 814024C8 | 38 F6 68 4C */	addi r7, r22, ATERM_8140684C@l
/* 814024CC | 38 A0 00 00 */	li r5, 0x0
/* 814024D0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814024D4 | 7C 18 00 16 */	mulhwu r0, r24, r0
/* 814024D8 | 54 00 D1 BE */	srwi r0, r0, 6
/* 814024DC | 1C C0 00 0A */	mulli r6, r0, 0xa
/* 814024E0 | 48 12 A6 65 */	bl OSSetAlarm
/* 814024E4 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814024E8 | 38 81 00 3C */	addi r4, r1, 0x3c
/* 814024EC | 38 A0 00 01 */	li r5, 0x1
/* 814024F0 | 48 12 EC 59 */	bl OSReceiveMessage
/* 814024F4 | 4B FF FF 8C */	b .L_81402480
.L_814024F8:
/* 814024F8 | 38 61 02 00 */	addi r3, r1, 0x200
/* 814024FC | 48 0D 74 B9 */	bl WD_GetInfo
/* 81402500 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81402504 | 38 81 02 00 */	addi r4, r1, 0x200
/* 81402508 | 38 A0 00 06 */	li r5, 0x6
/* 8140250C | 4B F2 DD 25 */	bl memcpy
/* 81402510 | A0 C1 02 06 */	lhz r6, 0x206(r1)
/* 81402514 | 38 00 00 1E */	li r0, 0x1e
/* 81402518 | B0 01 01 A2 */	sth r0, 0x1a2(r1)
/* 8140251C | 38 61 01 A4 */	addi r3, r1, 0x1a4
/* 81402520 | 38 80 00 FF */	li r4, 0xff
/* 81402524 | 38 A0 00 06 */	li r5, 0x6
/* 81402528 | B0 C1 01 A0 */	sth r6, 0x1a0(r1)
/* 8140252C | 4B F2 DE 09 */	bl memset
/* 81402530 | 38 00 00 00 */	li r0, 0x0
/* 81402534 | 38 61 01 AE */	addi r3, r1, 0x1ae
/* 81402538 | B0 01 01 AA */	sth r0, 0x1aa(r1)
/* 8140253C | 38 80 00 00 */	li r4, 0x0
/* 81402540 | 38 A0 00 20 */	li r5, 0x20
/* 81402544 | B0 01 01 AC */	sth r0, 0x1ac(r1)
/* 81402548 | 4B F2 DD ED */	bl memset
/* 8140254C | 38 61 01 CE */	addi r3, r1, 0x1ce
/* 81402550 | 38 80 00 FF */	li r4, 0xff
/* 81402554 | 38 A0 00 20 */	li r5, 0x20
/* 81402558 | 4B F2 DD DD */	bl memset
/* 8140255C | 3C 60 10 62 */	lis r3, 0x1062
/* 81402560 | 3E E0 80 00 */	lis r23, 0x8000
/* 81402564 | 3A C3 4D D3 */	addi r22, r3, 0x4dd3
/* 81402568 | 3F 00 81 40 */	lis r24, ATERM_8140684C@ha
.L_8140256C:
/* 8140256C | 80 0D AC 9C */	lwz r0, lbl_81698CDC@sda21(r0)
/* 81402570 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402574 | 41 82 00 0C */	beq .L_81402580
/* 81402578 | 3B C0 FF F8 */	li r30, -0x8
/* 8140257C | 48 00 00 B4 */	b .L_81402630
.L_81402580:
/* 81402580 | 7F A4 EB 78 */	mr r4, r29
/* 81402584 | 38 61 01 A0 */	addi r3, r1, 0x1a0
/* 81402588 | 57 25 04 3E */	clrlwi r5, r25, 16
/* 8140258C | 48 0D 73 45 */	bl WD_Scan
/* 81402590 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402594 | 41 82 00 10 */	beq .L_814025A4
/* 81402598 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8140259C | 28 00 80 04 */	cmplwi r0, 0x8004
/* 814025A0 | 40 82 00 88 */	bne .L_81402628
.L_814025A4:
/* 814025A4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814025A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814025AC | 41 82 00 0C */	beq .L_814025B8
/* 814025B0 | 7C 1E 03 78 */	mr r30, r0
/* 814025B4 | 48 00 00 7C */	b .L_81402630
.L_814025B8:
/* 814025B8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814025BC | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 814025C0 | 40 81 00 0C */	ble .L_814025CC
/* 814025C4 | 3B C0 00 00 */	li r30, 0x0
/* 814025C8 | 48 00 00 68 */	b .L_81402630
.L_814025CC:
/* 814025CC | 38 61 00 88 */	addi r3, r1, 0x88
/* 814025D0 | 38 81 00 30 */	addi r4, r1, 0x30
/* 814025D4 | 38 A0 00 01 */	li r5, 0x1
/* 814025D8 | 48 12 EA 49 */	bl OSInitMessageQueue
/* 814025DC | 38 61 01 28 */	addi r3, r1, 0x128
/* 814025E0 | 48 12 A3 05 */	bl OSCreateAlarm
/* 814025E4 | 38 61 01 28 */	addi r3, r1, 0x128
/* 814025E8 | 38 81 00 88 */	addi r4, r1, 0x88
/* 814025EC | 48 12 A9 E1 */	bl fn_8152CFCC
/* 814025F0 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814025F4 | 38 61 01 28 */	addi r3, r1, 0x128
/* 814025F8 | 38 F8 68 4C */	addi r7, r24, ATERM_8140684C@l
/* 814025FC | 38 A0 00 00 */	li r5, 0x0
/* 81402600 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402604 | 7C 16 00 16 */	mulhwu r0, r22, r0
/* 81402608 | 54 00 D1 BE */	srwi r0, r0, 6
/* 8140260C | 1C C0 00 0A */	mulli r6, r0, 0xa
/* 81402610 | 48 12 A5 35 */	bl OSSetAlarm
/* 81402614 | 38 61 00 88 */	addi r3, r1, 0x88
/* 81402618 | 38 81 00 34 */	addi r4, r1, 0x34
/* 8140261C | 38 A0 00 01 */	li r5, 0x1
/* 81402620 | 48 12 EB 29 */	bl OSReceiveMessage
/* 81402624 | 4B FF FF 48 */	b .L_8140256C
.L_81402628:
/* 81402628 | 40 82 00 08 */	bne .L_81402630
/* 8140262C | 3B C0 FF FA */	li r30, -0x6
.L_81402630:
/* 81402630 | 3C 60 10 62 */	lis r3, 0x1062
/* 81402634 | 3F 80 80 00 */	lis r28, 0x8000
/* 81402638 | 3B A3 4D D3 */	addi r29, r3, 0x4dd3
/* 8140263C | 3F 20 81 40 */	lis r25, ATERM_8140684C@ha
/* 81402640 | 48 00 00 70 */	b .L_814026B0
.L_81402644:
/* 81402644 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 81402648 | 40 81 00 0C */	ble .L_81402654
/* 8140264C | 3B C0 FF FE */	li r30, -0x2
/* 81402650 | 48 00 00 6C */	b .L_814026BC
.L_81402654:
/* 81402654 | 38 61 00 68 */	addi r3, r1, 0x68
/* 81402658 | 38 81 00 28 */	addi r4, r1, 0x28
/* 8140265C | 38 A0 00 01 */	li r5, 0x1
/* 81402660 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81402664 | 48 12 E9 BD */	bl OSInitMessageQueue
/* 81402668 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 8140266C | 48 12 A2 79 */	bl OSCreateAlarm
/* 81402670 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 81402674 | 38 81 00 68 */	addi r4, r1, 0x68
/* 81402678 | 48 12 A9 55 */	bl fn_8152CFCC
/* 8140267C | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 81402680 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 81402684 | 38 F9 68 4C */	addi r7, r25, ATERM_8140684C@l
/* 81402688 | 38 A0 00 00 */	li r5, 0x0
/* 8140268C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402690 | 7C 1D 00 16 */	mulhwu r0, r29, r0
/* 81402694 | 54 00 D1 BE */	srwi r0, r0, 6
/* 81402698 | 1C C0 00 0A */	mulli r6, r0, 0xa
/* 8140269C | 48 12 A4 A9 */	bl OSSetAlarm
/* 814026A0 | 38 61 00 68 */	addi r3, r1, 0x68
/* 814026A4 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 814026A8 | 38 A0 00 01 */	li r5, 0x1
/* 814026AC | 48 12 EA 9D */	bl OSReceiveMessage
.L_814026B0:
/* 814026B0 | 48 0D 74 BD */	bl WD_Cleanup
/* 814026B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814026B8 | 40 82 FF 8C */	bne .L_81402644
.L_814026BC:
/* 814026BC | 3C 60 10 62 */	lis r3, 0x1062
/* 814026C0 | 3F 60 80 00 */	lis r27, 0x8000
/* 814026C4 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 814026C8 | 3F 20 81 40 */	lis r25, ATERM_8140684C@ha
/* 814026CC | 48 00 00 70 */	b .L_8140273C
.L_814026D0:
/* 814026D0 | 2C 1A 00 0A */	cmpwi r26, 0xa
/* 814026D4 | 40 81 00 0C */	ble .L_814026E0
/* 814026D8 | 3B C0 FF FE */	li r30, -0x2
/* 814026DC | 48 00 00 70 */	b .L_8140274C
.L_814026E0:
/* 814026E0 | 38 61 00 48 */	addi r3, r1, 0x48
/* 814026E4 | 38 81 00 20 */	addi r4, r1, 0x20
/* 814026E8 | 38 A0 00 01 */	li r5, 0x1
/* 814026EC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814026F0 | 48 12 E9 31 */	bl OSInitMessageQueue
/* 814026F4 | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 814026F8 | 48 12 A1 ED */	bl OSCreateAlarm
/* 814026FC | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 81402700 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81402704 | 48 12 A8 C9 */	bl fn_8152CFCC
/* 81402708 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8140270C | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 81402710 | 38 F9 68 4C */	addi r7, r25, ATERM_8140684C@l
/* 81402714 | 38 A0 00 00 */	li r5, 0x0
/* 81402718 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8140271C | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 81402720 | 54 00 D1 BE */	srwi r0, r0, 6
/* 81402724 | 1C C0 00 0A */	mulli r6, r0, 0xa
/* 81402728 | 48 12 A4 1D */	bl OSSetAlarm
/* 8140272C | 38 61 00 48 */	addi r3, r1, 0x48
/* 81402730 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81402734 | 38 A0 00 01 */	li r5, 0x1
/* 81402738 | 48 12 EA 11 */	bl OSReceiveMessage
.L_8140273C:
/* 8140273C | 7F E3 FB 78 */	mr r3, r31
/* 81402740 | 48 09 06 F1 */	bl NCDUnlockWirelessDriver
/* 81402744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402748 | 40 82 FF 88 */	bne .L_814026D0
.L_8140274C:
/* 8140274C | 7F C3 F3 78 */	mr r3, r30
/* 81402750 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81402754 | 7D 4B 53 78 */	mr r11, r10
/* 81402758 | 48 1F 6D 9D */	bl _restgpr_21
/* 8140275C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81402760 | 7C 08 03 A6 */	mtlr r0
/* 81402764 | 7D 41 53 78 */	mr r1, r10
/* 81402768 | 4E 80 00 20 */	blr
.endfn ATERM_81402424

# .text:0x44F0 | 0x8140276C | size: 0x2B8
.fn ATERM_8140276C, global
/* 8140276C | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81402770 | 7C 08 02 A6 */	mflr r0
/* 81402774 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81402778 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8140277C | 48 1F 6D 29 */	bl _savegpr_20
/* 81402780 | 7C 77 1B 78 */	mr r23, r3
/* 81402784 | 7C 98 23 78 */	mr r24, r4
/* 81402788 | 7C B9 2B 78 */	mr r25, r5
/* 8140278C | 3B E3 00 04 */	addi r31, r3, 0x4
/* 81402790 | 3B 64 00 04 */	addi r27, r4, 0x4
/* 81402794 | 3A A1 00 2C */	addi r21, r1, 0x2c
/* 81402798 | 3B A0 00 00 */	li r29, 0x0
/* 8140279C | 3B 80 00 00 */	li r28, 0x0
/* 814027A0 | 3B C0 00 00 */	li r30, 0x0
/* 814027A4 | 3A C0 00 00 */	li r22, 0x0
/* 814027A8 | 48 00 00 F8 */	b .L_814028A0
.L_814027AC:
/* 814027AC | 92 C1 00 2C */	stw r22, 0x2c(r1)
/* 814027B0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 814027B4 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 814027B8 | 38 A0 00 20 */	li r5, 0x20
/* 814027BC | 92 C1 00 30 */	stw r22, 0x30(r1)
/* 814027C0 | 92 C1 00 34 */	stw r22, 0x34(r1)
/* 814027C4 | 92 C1 00 38 */	stw r22, 0x38(r1)
/* 814027C8 | 92 C1 00 3C */	stw r22, 0x3c(r1)
/* 814027CC | 92 C1 00 40 */	stw r22, 0x40(r1)
/* 814027D0 | 92 C1 00 44 */	stw r22, 0x44(r1)
/* 814027D4 | 92 C1 00 48 */	stw r22, 0x48(r1)
/* 814027D8 | B2 C1 00 4C */	sth r22, 0x4c(r1)
/* 814027DC | 4B F2 DA 55 */	bl memcpy
/* 814027E0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814027E4 | 3A 80 00 00 */	li r20, 0x0
/* 814027E8 | 7E D5 01 AE */	stbx r22, r21, r0
/* 814027EC | 83 58 00 00 */	lwz r26, 0x0(r24)
/* 814027F0 | 48 00 00 94 */	b .L_81402884
.L_814027F4:
/* 814027F4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814027F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814027FC | 41 82 00 90 */	beq .L_8140288C
/* 81402800 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81402804 | 41 81 00 88 */	bgt .L_8140288C
/* 81402808 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8140280C | 40 82 00 18 */	bne .L_81402824
/* 81402810 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 81402814 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402818 | 41 82 00 74 */	beq .L_8140288C
/* 8140281C | 28 00 00 20 */	cmplwi r0, 0x20
/* 81402820 | 41 82 00 6C */	beq .L_8140288C
.L_81402824:
/* 81402824 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81402828 | 48 1F 66 D5 */	bl strlen
/* 8140282C | 7C 65 1B 78 */	mr r5, r3
/* 81402830 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81402834 | 38 9B 00 04 */	addi r4, r27, 0x4
/* 81402838 | 48 1F B9 9D */	bl memcmp
/* 8140283C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402840 | 40 82 00 3C */	bne .L_8140287C
/* 81402844 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 81402848 | 38 9B 00 28 */	addi r4, r27, 0x28
/* 8140284C | 38 A0 00 06 */	li r5, 0x6
/* 81402850 | 48 1F B9 85 */	bl memcmp
/* 81402854 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402858 | 40 82 00 24 */	bne .L_8140287C
/* 8140285C | A0 7F 00 2E */	lhz r3, 0x2e(r31)
/* 81402860 | A0 1B 00 2E */	lhz r0, 0x2e(r27)
/* 81402864 | 7C 03 00 40 */	cmplw r3, r0
/* 81402868 | 41 82 00 14 */	beq .L_8140287C
/* 8140286C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402870 | 40 82 00 0C */	bne .L_8140287C
/* 81402874 | 3B A0 00 01 */	li r29, 0x1
/* 81402878 | 48 00 00 14 */	b .L_8140288C
.L_8140287C:
/* 8140287C | 3B 7B 00 30 */	addi r27, r27, 0x30
/* 81402880 | 3A 94 00 01 */	addi r20, r20, 0x1
.L_81402884:
/* 81402884 | 7C 14 D0 40 */	cmplw r20, r26
/* 81402888 | 41 80 FF 6C */	blt .L_814027F4
.L_8140288C:
/* 8140288C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81402890 | 40 82 00 1C */	bne .L_814028AC
/* 81402894 | 3B FF 00 30 */	addi r31, r31, 0x30
/* 81402898 | 3B 78 00 04 */	addi r27, r24, 0x4
/* 8140289C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814028A0:
/* 814028A0 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814028A4 | 7C 1E 00 40 */	cmplw r30, r0
/* 814028A8 | 41 80 FF 04 */	blt .L_814027AC
.L_814028AC:
/* 814028AC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814028B0 | 40 82 01 48 */	bne .L_814029F8
/* 814028B4 | 3A C0 00 00 */	li r22, 0x0
/* 814028B8 | 3B F7 00 04 */	addi r31, r23, 0x4
/* 814028BC | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 814028C0 | 3B D8 00 04 */	addi r30, r24, 0x4
/* 814028C4 | 3A A1 00 08 */	addi r21, r1, 0x8
/* 814028C8 | 3B 60 00 00 */	li r27, 0x0
/* 814028CC | 92 C1 00 0C */	stw r22, 0xc(r1)
/* 814028D0 | 3B 40 00 00 */	li r26, 0x0
/* 814028D4 | 3A 80 00 00 */	li r20, 0x0
/* 814028D8 | 92 C1 00 10 */	stw r22, 0x10(r1)
/* 814028DC | 92 C1 00 14 */	stw r22, 0x14(r1)
/* 814028E0 | 92 C1 00 18 */	stw r22, 0x18(r1)
/* 814028E4 | 92 C1 00 1C */	stw r22, 0x1c(r1)
/* 814028E8 | 92 C1 00 20 */	stw r22, 0x20(r1)
/* 814028EC | 92 C1 00 24 */	stw r22, 0x24(r1)
/* 814028F0 | B2 C1 00 28 */	sth r22, 0x28(r1)
/* 814028F4 | 48 00 00 58 */	b .L_8140294C
.L_814028F8:
/* 814028F8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814028FC | 38 9E 00 04 */	addi r4, r30, 0x4
/* 81402900 | 38 A0 00 20 */	li r5, 0x20
/* 81402904 | 4B F2 D9 2D */	bl memcpy
/* 81402908 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8140290C | 38 6D 91 F8 */	li r3, lbl_81697238@sda21
/* 81402910 | 7E D5 01 AE */	stbx r22, r21, r0
/* 81402914 | 48 1F 65 E9 */	bl strlen
/* 81402918 | 7C 65 1B 78 */	mr r5, r3
/* 8140291C | 7E A3 AB 78 */	mr r3, r21
/* 81402920 | 38 8D 91 F8 */	li r4, lbl_81697238@sda21
/* 81402924 | 48 1F B8 B1 */	bl memcmp
/* 81402928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140292C | 40 82 00 18 */	bne .L_81402944
/* 81402930 | A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 81402934 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402938 | 40 82 00 0C */	bne .L_81402944
/* 8140293C | 3B 40 00 01 */	li r26, 0x1
/* 81402940 | 48 00 00 18 */	b .L_81402958
.L_81402944:
/* 81402944 | 3B DE 00 30 */	addi r30, r30, 0x30
/* 81402948 | 3A 94 00 01 */	addi r20, r20, 0x1
.L_8140294C:
/* 8140294C | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 81402950 | 7C 14 00 40 */	cmplw r20, r0
/* 81402954 | 41 80 FF A4 */	blt .L_814028F8
.L_81402958:
/* 81402958 | 3A C1 00 08 */	addi r22, r1, 0x8
/* 8140295C | 3B C0 00 00 */	li r30, 0x0
/* 81402960 | 3A A0 00 00 */	li r21, 0x0
/* 81402964 | 48 00 00 74 */	b .L_814029D8
.L_81402968:
/* 81402968 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140296C | 38 9F 00 04 */	addi r4, r31, 0x4
/* 81402970 | 38 A0 00 20 */	li r5, 0x20
/* 81402974 | 4B F2 D8 BD */	bl memcpy
/* 81402978 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8140297C | 38 6D 91 F8 */	li r3, lbl_81697238@sda21
/* 81402980 | 7E B6 01 AE */	stbx r21, r22, r0
/* 81402984 | 48 1F 65 79 */	bl strlen
/* 81402988 | 7C 78 1B 78 */	mr r24, r3
/* 8140298C | 7E C3 B3 78 */	mr r3, r22
/* 81402990 | 48 1F 65 6D */	bl strlen
/* 81402994 | 7C 03 C0 40 */	cmplw r3, r24
/* 81402998 | 40 82 00 38 */	bne .L_814029D0
/* 8140299C | 38 6D 91 F8 */	li r3, lbl_81697238@sda21
/* 814029A0 | 48 1F 65 5D */	bl strlen
/* 814029A4 | 7C 65 1B 78 */	mr r5, r3
/* 814029A8 | 7E C3 B3 78 */	mr r3, r22
/* 814029AC | 38 8D 91 F8 */	li r4, lbl_81697238@sda21
/* 814029B0 | 48 1F B8 25 */	bl memcmp
/* 814029B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814029B8 | 40 82 00 18 */	bne .L_814029D0
/* 814029BC | A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 814029C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814029C4 | 40 82 00 0C */	bne .L_814029D0
/* 814029C8 | 3B 60 00 01 */	li r27, 0x1
/* 814029CC | 48 00 00 18 */	b .L_814029E4
.L_814029D0:
/* 814029D0 | 3B FF 00 30 */	addi r31, r31, 0x30
/* 814029D4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814029D8:
/* 814029D8 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814029DC | 7C 1E 00 40 */	cmplw r30, r0
/* 814029E0 | 41 80 FF 88 */	blt .L_81402968
.L_814029E4:
/* 814029E4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814029E8 | 41 82 00 10 */	beq .L_814029F8
/* 814029EC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814029F0 | 40 82 00 08 */	bne .L_814029F8
/* 814029F4 | 3B A0 00 01 */	li r29, 0x1
.L_814029F8:
/* 814029F8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814029FC | 41 82 00 0C */	beq .L_81402A08
/* 81402A00 | 93 D9 00 00 */	stw r30, 0x0(r25)
/* 81402A04 | 3B 80 00 01 */	li r28, 0x1
.L_81402A08:
/* 81402A08 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81402A0C | 7F 83 E3 78 */	mr r3, r28
/* 81402A10 | 48 1F 6A E1 */	bl _restgpr_20
/* 81402A14 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81402A18 | 7C 08 03 A6 */	mtlr r0
/* 81402A1C | 38 21 00 80 */	addi r1, r1, 0x80
/* 81402A20 | 4E 80 00 20 */	blr
.endfn ATERM_8140276C

# .text:0x47A8 | 0x81402A24 | size: 0x41C
.fn ATERM_81402A24, global
/* 81402A24 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81402A28 | 7C 08 02 A6 */	mflr r0
/* 81402A2C | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81402A30 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81402A34 | 48 1F 6A 59 */	bl _savegpr_14
/* 81402A38 | 80 0D 91 DC */	lwz r0, lbl_8169721C@sda21(r0)
/* 81402A3C | 38 80 00 00 */	li r4, 0x0
/* 81402A40 | 81 8D AC 5C */	lwz r12, lbl_81698C9C@sda21(r0)
/* 81402A44 | 3A C0 FF FF */	li r22, -0x1
/* 81402A48 | 1C 60 00 30 */	mulli r3, r0, 0x30
/* 81402A4C | 38 00 00 00 */	li r0, 0x0
/* 81402A50 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81402A54 | 3A 40 00 00 */	li r18, 0x0
/* 81402A58 | 3A 83 00 34 */	addi r20, r3, 0x34
/* 81402A5C | 90 01 00 38 */	stw r0, 0x38(r1)
/* 81402A60 | 7E 83 A3 78 */	mr r3, r20
/* 81402A64 | 7D 89 03 A6 */	mtctr r12
/* 81402A68 | 4E 80 04 21 */	bctrl
/* 81402A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402A70 | 7C 73 1B 78 */	mr r19, r3
/* 81402A74 | 41 82 00 10 */	beq .L_81402A84
/* 81402A78 | 7E 85 A3 78 */	mr r5, r20
/* 81402A7C | 38 80 00 00 */	li r4, 0x0
/* 81402A80 | 4B F2 D8 B5 */	bl memset
.L_81402A84:
/* 81402A84 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 81402A88 | 41 82 03 50 */	beq .L_81402DD8
/* 81402A8C | 81 8D AC 5C */	lwz r12, lbl_81698C9C@sda21(r0)
/* 81402A90 | 7E 83 A3 78 */	mr r3, r20
/* 81402A94 | 7D 89 03 A6 */	mtctr r12
/* 81402A98 | 4E 80 04 21 */	bctrl
/* 81402A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402AA0 | 7C 72 1B 78 */	mr r18, r3
/* 81402AA4 | 41 82 00 10 */	beq .L_81402AB4
/* 81402AA8 | 7E 85 A3 78 */	mr r5, r20
/* 81402AAC | 38 80 00 00 */	li r4, 0x0
/* 81402AB0 | 4B F2 D8 85 */	bl memset
.L_81402AB4:
/* 81402AB4 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81402AB8 | 41 82 03 20 */	beq .L_81402DD8
/* 81402ABC | 80 0D 91 DC */	lwz r0, lbl_8169721C@sda21(r0)
/* 81402AC0 | 81 8D AC 5C */	lwz r12, lbl_81698C9C@sda21(r0)
/* 81402AC4 | 54 0F 40 2E */	slwi r15, r0, 8
/* 81402AC8 | 38 6F 00 40 */	addi r3, r15, 0x40
/* 81402ACC | 7D 89 03 A6 */	mtctr r12
/* 81402AD0 | 4E 80 04 21 */	bctrl
/* 81402AD4 | 30 83 00 1F */	addic r4, r3, 0x1f
/* 81402AD8 | 38 00 FF E0 */	li r0, -0x20
/* 81402ADC | 7C 90 00 38 */	and r16, r4, r0
/* 81402AE0 | 3D C0 10 62 */	lis r14, 0x1062
/* 81402AE4 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 81402AE8 | 3A E0 00 00 */	li r23, 0x0
/* 81402AEC | 3B 70 00 02 */	addi r27, r16, 0x2
/* 81402AF0 | 3B 8E 4D D3 */	addi r28, r14, 0x4dd3
/* 81402AF4 | 3B C0 00 00 */	li r30, 0x0
/* 81402AF8 | 3F A0 80 00 */	lis r29, 0x8000
/* 81402AFC | 3B E0 00 02 */	li r31, 0x2
/* 81402B00 | 48 00 02 6C */	b .L_81402D6C
.L_81402B04:
/* 81402B04 | 48 13 31 7D */	bl OSGetTime
/* 81402B08 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 81402B0C | 38 A0 00 00 */	li r5, 0x0
/* 81402B10 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402B14 | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 81402B18 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81402B1C | 48 1F 6A F5 */	bl __div2i
/* 81402B20 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81402B24 | 7C 04 00 40 */	cmplw r4, r0
/* 81402B28 | 40 80 02 58 */	bge .L_81402D80
/* 81402B2C | 7E 03 83 78 */	mr r3, r16
/* 81402B30 | 7D E4 7B 78 */	mr r4, r15
/* 81402B34 | 4B FF F8 F1 */	bl ATERM_81402424
/* 81402B38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402B3C | 7C 76 1B 78 */	mr r22, r3
/* 81402B40 | 40 80 00 08 */	bge .L_81402B48
/* 81402B44 | 48 00 02 94 */	b .L_81402DD8
.L_81402B48:
/* 81402B48 | 80 0D AC 9C */	lwz r0, lbl_81698CDC@sda21(r0)
/* 81402B4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402B50 | 40 82 02 30 */	bne .L_81402D80
/* 81402B54 | 80 0D 91 DC */	lwz r0, lbl_8169721C@sda21(r0)
/* 81402B58 | 7C 03 00 00 */	cmpw r3, r0
/* 81402B5C | 41 80 00 0C */	blt .L_81402B68
/* 81402B60 | 3A C0 FF FA */	li r22, -0x6
/* 81402B64 | 48 00 02 74 */	b .L_81402DD8
.L_81402B68:
/* 81402B68 | 7F 71 DB 78 */	mr r17, r27
/* 81402B6C | 7E 79 9B 78 */	mr r25, r19
/* 81402B70 | 3B 53 00 08 */	addi r26, r19, 0x8
/* 81402B74 | 3B 13 00 2C */	addi r24, r19, 0x2c
/* 81402B78 | 3A A0 00 00 */	li r21, 0x0
/* 81402B7C | 48 00 00 70 */	b .L_81402BEC
.L_81402B80:
/* 81402B80 | 7F 43 D3 78 */	mr r3, r26
/* 81402B84 | 38 91 00 0C */	addi r4, r17, 0xc
/* 81402B88 | 38 A0 00 20 */	li r5, 0x20
/* 81402B8C | 4B F2 D6 A5 */	bl memcpy
/* 81402B90 | A0 11 00 0A */	lhz r0, 0xa(r17)
/* 81402B94 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81402B98 | 40 81 00 0C */	ble .L_81402BA4
/* 81402B9C | 93 D9 00 04 */	stw r30, 0x4(r25)
/* 81402BA0 | 48 00 00 08 */	b .L_81402BA8
.L_81402BA4:
/* 81402BA4 | 90 19 00 04 */	stw r0, 0x4(r25)
.L_81402BA8:
/* 81402BA8 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 81402BAC | 7F 03 C3 78 */	mr r3, r24
/* 81402BB0 | 38 91 00 04 */	addi r4, r17, 0x4
/* 81402BB4 | 38 A0 00 06 */	li r5, 0x6
/* 81402BB8 | 7C D9 02 14 */	add r6, r25, r0
/* 81402BBC | 9B C6 00 08 */	stb r30, 0x8(r6)
/* 81402BC0 | A0 11 00 2C */	lhz r0, 0x2c(r17)
/* 81402BC4 | 54 00 E7 FE */	extrwi r0, r0, 1, 27
/* 81402BC8 | B0 19 00 32 */	sth r0, 0x32(r25)
/* 81402BCC | 4B F2 D6 65 */	bl memcpy
/* 81402BD0 | A0 11 00 00 */	lhz r0, 0x0(r17)
/* 81402BD4 | 3B 5A 00 30 */	addi r26, r26, 0x30
/* 81402BD8 | 3B 39 00 30 */	addi r25, r25, 0x30
/* 81402BDC | 3B 18 00 30 */	addi r24, r24, 0x30
/* 81402BE0 | 54 00 08 3C */	slwi r0, r0, 1
/* 81402BE4 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 81402BE8 | 7E 31 02 14 */	add r17, r17, r0
.L_81402BEC:
/* 81402BEC | 7C 15 B0 00 */	cmpw r21, r22
/* 81402BF0 | 41 80 FF 90 */	blt .L_81402B80
/* 81402BF4 | 92 D3 00 00 */	stw r22, 0x0(r19)
/* 81402BF8 | 80 0D AC 50 */	lwz r0, lbl_81698C90@sda21(r0)
/* 81402BFC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81402C00 | 41 82 00 F0 */	beq .L_81402CF0
/* 81402C04 | 7E 63 9B 78 */	mr r3, r19
/* 81402C08 | 7E 44 93 78 */	mr r4, r18
/* 81402C0C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81402C10 | 4B FF FB 5D */	bl ATERM_8140276C
/* 81402C14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81402C18 | 41 82 00 D8 */	beq .L_81402CF0
/* 81402C1C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81402C20 | 3C 60 81 0C */	lis r3, ATERM_810BF5C4@ha
/* 81402C24 | 38 63 F5 C4 */	addi r3, r3, ATERM_810BF5C4@l
/* 81402C28 | 1C 04 00 30 */	mulli r0, r4, 0x30
/* 81402C2C | 90 8D AC 6C */	stw r4, lbl_81698CAC@sda21(r0)
/* 81402C30 | 7D D3 02 14 */	add r14, r19, r0
/* 81402C34 | 38 8E 00 08 */	addi r4, r14, 0x8
/* 81402C38 | 48 1F F6 CD */	bl strcpy
/* 81402C3C | 38 8E 00 2C */	addi r4, r14, 0x2c
/* 81402C40 | 38 6D AC 94 */	li r3, lbl_81698CD4@sda21
/* 81402C44 | 38 A0 00 06 */	li r5, 0x6
/* 81402C48 | 4B F2 D5 E9 */	bl memcpy
/* 81402C4C | 38 00 00 06 */	li r0, 0x6
/* 81402C50 | 39 01 00 18 */	addi r8, r1, 0x18
/* 81402C54 | 38 AD AC 94 */	li r5, lbl_81698CD4@sda21
/* 81402C58 | 38 E0 00 00 */	li r7, 0x0
/* 81402C5C | 38 60 00 3A */	li r3, 0x3a
/* 81402C60 | 38 80 00 00 */	li r4, 0x0
/* 81402C64 | 7C 09 03 A6 */	mtctr r0
.L_81402C68:
/* 81402C68 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 81402C6C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81402C70 | 54 06 E7 3E */	extrwi r6, r0, 4, 24
/* 81402C74 | 54 09 07 3E */	clrlwi r9, r0, 28
/* 81402C78 | 2C 06 00 09 */	cmpwi r6, 0x9
/* 81402C7C | 41 81 00 14 */	bgt .L_81402C90
/* 81402C80 | 38 06 00 30 */	addi r0, r6, 0x30
/* 81402C84 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81402C88 | 98 08 00 00 */	stb r0, 0x0(r8)
/* 81402C8C | 48 00 00 10 */	b .L_81402C9C
.L_81402C90:
/* 81402C90 | 38 06 00 37 */	addi r0, r6, 0x37
/* 81402C94 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81402C98 | 98 08 00 00 */	stb r0, 0x0(r8)
.L_81402C9C:
/* 81402C9C | 2C 09 00 09 */	cmpwi r9, 0x9
/* 81402CA0 | 41 81 00 14 */	bgt .L_81402CB4
/* 81402CA4 | 38 09 00 30 */	addi r0, r9, 0x30
/* 81402CA8 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 81402CAC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81402CB0 | 48 00 00 10 */	b .L_81402CC0
.L_81402CB4:
/* 81402CB4 | 38 09 00 37 */	addi r0, r9, 0x37
/* 81402CB8 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 81402CBC | 38 C6 00 01 */	addi r6, r6, 0x1
.L_81402CC0:
/* 81402CC0 | 2C 07 00 05 */	cmpwi r7, 0x5
/* 81402CC4 | 7C 08 30 50 */	subf r0, r8, r6
/* 81402CC8 | 98 86 00 00 */	stb r4, 0x0(r6)
/* 81402CCC | 7D 08 02 14 */	add r8, r8, r0
/* 81402CD0 | 40 80 00 0C */	bge .L_81402CDC
/* 81402CD4 | 98 68 00 00 */	stb r3, 0x0(r8)
/* 81402CD8 | 39 08 00 01 */	addi r8, r8, 0x1
.L_81402CDC:
/* 81402CDC | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81402CE0 | 42 00 FF 88 */	bdnz .L_81402C68
/* 81402CE4 | 38 00 00 00 */	li r0, 0x0
/* 81402CE8 | 98 08 00 00 */	stb r0, 0x0(r8)
/* 81402CEC | 48 00 00 94 */	b .L_81402D80
.L_81402CF0:
/* 81402CF0 | 7E 43 93 78 */	mr r3, r18
/* 81402CF4 | 7E 64 9B 78 */	mr r4, r19
/* 81402CF8 | 7E 85 A3 78 */	mr r5, r20
/* 81402CFC | 4B F2 D5 35 */	bl memcpy
/* 81402D00 | 80 6D 91 D8 */	lwz r3, lbl_81697218@sda21(r0)
/* 81402D04 | 93 ED AC 50 */	stw r31, lbl_81698C90@sda21(r0)
/* 81402D08 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81402D0C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81402D10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81402D14 | 40 82 00 10 */	bne .L_81402D24
/* 81402D18 | 38 00 FF FF */	li r0, -0x1
/* 81402D1C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81402D20 | 48 00 00 30 */	b .L_81402D50
.L_81402D24:
/* 81402D24 | 48 13 2F 5D */	bl OSGetTime
/* 81402D28 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 81402D2C | 38 CE 4D D3 */	addi r6, r14, 0x4dd3
/* 81402D30 | 38 A0 00 00 */	li r5, 0x0
/* 81402D34 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402D38 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81402D3C | 54 06 D1 BE */	srwi r6, r0, 6
/* 81402D40 | 48 1F 68 D1 */	bl __div2i
/* 81402D44 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81402D48 | 7C 04 00 50 */	subf r0, r4, r0
/* 81402D4C | 90 01 00 10 */	stw r0, 0x10(r1)
.L_81402D50:
/* 81402D50 | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 81402D54 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81402D58 | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 81402D5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81402D60 | 7D 89 03 A6 */	mtctr r12
/* 81402D64 | 4E 80 04 21 */	bctrl
/* 81402D68 | 3A F7 00 01 */	addi r23, r23, 0x1
.L_81402D6C:
/* 81402D6C | 2C 17 01 2C */	cmpwi r23, 0x12c
/* 81402D70 | 40 80 00 10 */	bge .L_81402D80
/* 81402D74 | 80 0D AC 9C */	lwz r0, lbl_81698CDC@sda21(r0)
/* 81402D78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402D7C | 41 82 FD 88 */	beq .L_81402B04
.L_81402D80:
/* 81402D80 | 2C 17 01 2C */	cmpwi r23, 0x12c
/* 81402D84 | 40 80 00 38 */	bge .L_81402DBC
/* 81402D88 | 48 13 2E F9 */	bl OSGetTime
/* 81402D8C | 3C C0 80 00 */	lis r6, 0x8000
/* 81402D90 | 3C A0 10 62 */	lis r5, 0x1062
/* 81402D94 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81402D98 | 38 C5 4D D3 */	addi r6, r5, 0x4dd3
/* 81402D9C | 38 A0 00 00 */	li r5, 0x0
/* 81402DA0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81402DA4 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81402DA8 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81402DAC | 48 1F 68 65 */	bl __div2i
/* 81402DB0 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81402DB4 | 7C 04 00 40 */	cmplw r4, r0
/* 81402DB8 | 40 81 00 0C */	ble .L_81402DC4
.L_81402DBC:
/* 81402DBC | 3A C0 FF FD */	li r22, -0x3
/* 81402DC0 | 48 00 00 18 */	b .L_81402DD8
.L_81402DC4:
/* 81402DC4 | 80 0D AC 9C */	lwz r0, lbl_81698CDC@sda21(r0)
/* 81402DC8 | 3A C0 00 01 */	li r22, 0x1
/* 81402DCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402DD0 | 41 82 00 08 */	beq .L_81402DD8
/* 81402DD4 | 3A C0 FF F8 */	li r22, -0x8
.L_81402DD8:
/* 81402DD8 | 80 01 00 38 */	lwz r0, 0x38(r1)
/* 81402DDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81402DE0 | 41 82 00 14 */	beq .L_81402DF4
/* 81402DE4 | 81 8D AC 60 */	lwz r12, lbl_81698CA0@sda21(r0)
/* 81402DE8 | 7C 03 03 78 */	mr r3, r0
/* 81402DEC | 7D 89 03 A6 */	mtctr r12
/* 81402DF0 | 4E 80 04 21 */	bctrl
.L_81402DF4:
/* 81402DF4 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 81402DF8 | 41 82 00 14 */	beq .L_81402E0C
/* 81402DFC | 81 8D AC 60 */	lwz r12, lbl_81698CA0@sda21(r0)
/* 81402E00 | 7E 63 9B 78 */	mr r3, r19
/* 81402E04 | 7D 89 03 A6 */	mtctr r12
/* 81402E08 | 4E 80 04 21 */	bctrl
.L_81402E0C:
/* 81402E0C | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81402E10 | 41 82 00 14 */	beq .L_81402E24
/* 81402E14 | 81 8D AC 60 */	lwz r12, lbl_81698CA0@sda21(r0)
/* 81402E18 | 7E 43 93 78 */	mr r3, r18
/* 81402E1C | 7D 89 03 A6 */	mtctr r12
/* 81402E20 | 4E 80 04 21 */	bctrl
.L_81402E24:
/* 81402E24 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81402E28 | 7E C3 B3 78 */	mr r3, r22
/* 81402E2C | 48 1F 66 AD */	bl _restgpr_14
/* 81402E30 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81402E34 | 7C 08 03 A6 */	mtlr r0
/* 81402E38 | 38 21 00 90 */	addi r1, r1, 0x90
/* 81402E3C | 4E 80 00 20 */	blr
.endfn ATERM_81402A24

# .text:0x4BC4 | 0x81402E40 | size: 0x180
.fn ATERM_81402E40, global
/* 81402E40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81402E44 | 7C 08 02 A6 */	mflr r0
/* 81402E48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81402E4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81402E50 | 48 1F 66 6D */	bl _savegpr_26
/* 81402E54 | 7C BB 2B 78 */	mr r27, r5
/* 81402E58 | 7C 7E 1B 78 */	mr r30, r3
/* 81402E5C | 7C 9A 23 78 */	mr r26, r4
/* 81402E60 | 7C DC 33 78 */	mr r28, r6
/* 81402E64 | 7F 63 DB 78 */	mr r3, r27
/* 81402E68 | 7C FD 3B 78 */	mr r29, r7
/* 81402E6C | 3B E0 00 00 */	li r31, 0x0
/* 81402E70 | 38 80 00 00 */	li r4, 0x0
/* 81402E74 | 38 A0 00 08 */	li r5, 0x8
/* 81402E78 | 4B F2 D4 BD */	bl memset
/* 81402E7C | 38 1C FF F8 */	subi r0, r28, 0x8
/* 81402E80 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81402E84 | 48 0B 0C F5 */	bl SOHtoNs
/* 81402E88 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81402E8C | B0 7B 00 00 */	sth r3, 0x0(r27)
/* 81402E90 | 41 82 00 24 */	beq .L_81402EB4
/* 81402E94 | 7F 64 DB 78 */	mr r4, r27
/* 81402E98 | 7F 85 E3 78 */	mr r5, r28
/* 81402E9C | 7F A6 EB 78 */	mr r6, r29
/* 81402EA0 | 38 7E 00 06 */	addi r3, r30, 0x6
/* 81402EA4 | 38 E0 00 10 */	li r7, 0x10
/* 81402EA8 | 48 00 19 9D */	bl ATERM_81404844
/* 81402EAC | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 81402EB0 | 48 00 00 14 */	b .L_81402EC4
.L_81402EB4:
/* 81402EB4 | 7F 64 DB 78 */	mr r4, r27
/* 81402EB8 | 7F 85 E3 78 */	mr r5, r28
/* 81402EBC | 38 7E 00 06 */	addi r3, r30, 0x6
/* 81402EC0 | 4B F2 D3 71 */	bl memcpy
.L_81402EC4:
/* 81402EC4 | 7F C3 F3 78 */	mr r3, r30
/* 81402EC8 | 38 80 00 00 */	li r4, 0x0
/* 81402ECC | 38 A0 00 06 */	li r5, 0x6
/* 81402ED0 | 4B F2 D4 65 */	bl memset
/* 81402ED4 | 57 43 04 3E */	clrlwi r3, r26, 16
/* 81402ED8 | 48 0B 0C A1 */	bl SOHtoNs
/* 81402EDC | B0 7E 00 00 */	sth r3, 0x0(r30)
/* 81402EE0 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 81402EE4 | 48 0B 0C 95 */	bl SOHtoNs
/* 81402EE8 | 3B BE 00 06 */	addi r29, r30, 0x6
/* 81402EEC | B0 7E 00 02 */	sth r3, 0x2(r30)
/* 81402EF0 | 7F BD E2 14 */	add r29, r29, r28
/* 81402EF4 | 7F C4 F3 78 */	mr r4, r30
/* 81402EF8 | 7C 9E E8 40 */	cmplw cr1, r30, r29
/* 81402EFC | 40 84 00 98 */	bge cr1, .L_81402F94
/* 81402F00 | 7C 1E E8 50 */	subf r0, r30, r29
/* 81402F04 | 38 7D FF F8 */	subi r3, r29, 0x8
/* 81402F08 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81402F0C | 40 81 00 68 */	ble .L_81402F74
/* 81402F10 | 41 85 00 64 */	bgt cr1, .L_81402F74
/* 81402F14 | 38 03 00 07 */	addi r0, r3, 0x7
/* 81402F18 | 7C 1E 00 50 */	subf r0, r30, r0
/* 81402F1C | 54 00 E8 FE */	srwi r0, r0, 3
/* 81402F20 | 7C 09 03 A6 */	mtctr r0
/* 81402F24 | 7C 1E 18 40 */	cmplw r30, r3
/* 81402F28 | 40 80 00 4C */	bge .L_81402F74
.L_81402F2C:
/* 81402F2C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81402F30 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81402F34 | 7F FF 1A 14 */	add r31, r31, r3
/* 81402F38 | 88 64 00 02 */	lbz r3, 0x2(r4)
/* 81402F3C | 7F FF 02 14 */	add r31, r31, r0
/* 81402F40 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81402F44 | 7F FF 1A 14 */	add r31, r31, r3
/* 81402F48 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81402F4C | 7F FF 02 14 */	add r31, r31, r0
/* 81402F50 | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 81402F54 | 7F FF 1A 14 */	add r31, r31, r3
/* 81402F58 | 88 64 00 06 */	lbz r3, 0x6(r4)
/* 81402F5C | 7F FF 02 14 */	add r31, r31, r0
/* 81402F60 | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 81402F64 | 7F FF 1A 14 */	add r31, r31, r3
/* 81402F68 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81402F6C | 7F FF 02 14 */	add r31, r31, r0
/* 81402F70 | 42 00 FF BC */	bdnz .L_81402F2C
.L_81402F74:
/* 81402F74 | 7C 04 E8 50 */	subf r0, r4, r29
/* 81402F78 | 7C 09 03 A6 */	mtctr r0
/* 81402F7C | 7C 04 E8 40 */	cmplw r4, r29
/* 81402F80 | 40 80 00 14 */	bge .L_81402F94
.L_81402F84:
/* 81402F84 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81402F88 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81402F8C | 7F FF 02 14 */	add r31, r31, r0
/* 81402F90 | 42 00 FF F4 */	bdnz .L_81402F84
.L_81402F94:
/* 81402F94 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81402F98 | 48 0B 0B E1 */	bl SOHtoNs
/* 81402F9C | B0 7D 00 00 */	sth r3, 0x0(r29)
/* 81402FA0 | 38 1D 00 02 */	addi r0, r29, 0x2
/* 81402FA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81402FA8 | 7C 7E 00 50 */	subf r3, r30, r0
/* 81402FAC | 48 1F 65 5D */	bl _restgpr_26
/* 81402FB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81402FB4 | 7C 08 03 A6 */	mtlr r0
/* 81402FB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81402FBC | 4E 80 00 20 */	blr
.endfn ATERM_81402E40

# .text:0x4D44 | 0x81402FC0 | size: 0x21C
.fn ATERM_81402FC0, global
/* 81402FC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81402FC4 | 7C 08 02 A6 */	mflr r0
/* 81402FC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81402FCC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81402FD0 | 48 1F 64 E9 */	bl _savegpr_25
/* 81402FD4 | 7C 7B 1B 78 */	mr r27, r3
/* 81402FD8 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81402FDC | 7C 9C 23 78 */	mr r28, r4
/* 81402FE0 | 3B E0 00 00 */	li r31, 0x0
/* 81402FE4 | 48 0B 0B 89 */	bl SONtoHs
/* 81402FE8 | 54 7E 04 3E */	clrlwi r30, r3, 16
/* 81402FEC | A0 7B 00 02 */	lhz r3, 0x2(r27)
/* 81402FF0 | 48 0B 0B 7D */	bl SONtoHs
/* 81402FF4 | 54 7D 04 3E */	clrlwi r29, r3, 16
/* 81402FF8 | 7F 64 DB 78 */	mr r4, r27
/* 81402FFC | 7C 7B EA 14 */	add r3, r27, r29
/* 81403000 | 38 A3 00 06 */	addi r5, r3, 0x6
/* 81403004 | 7C 9B 28 40 */	cmplw cr1, r27, r5
/* 81403008 | 40 84 00 98 */	bge cr1, .L_814030A0
/* 8140300C | 7C 1B 28 50 */	subf r0, r27, r5
/* 81403010 | 38 65 FF F8 */	subi r3, r5, 0x8
/* 81403014 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81403018 | 40 81 00 68 */	ble .L_81403080
/* 8140301C | 41 85 00 64 */	bgt cr1, .L_81403080
/* 81403020 | 38 03 00 07 */	addi r0, r3, 0x7
/* 81403024 | 7C 1B 00 50 */	subf r0, r27, r0
/* 81403028 | 54 00 E8 FE */	srwi r0, r0, 3
/* 8140302C | 7C 09 03 A6 */	mtctr r0
/* 81403030 | 7C 1B 18 40 */	cmplw r27, r3
/* 81403034 | 40 80 00 4C */	bge .L_81403080
.L_81403038:
/* 81403038 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 8140303C | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81403040 | 7F FF 1A 14 */	add r31, r31, r3
/* 81403044 | 88 64 00 02 */	lbz r3, 0x2(r4)
/* 81403048 | 7F FF 02 14 */	add r31, r31, r0
/* 8140304C | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81403050 | 7F FF 1A 14 */	add r31, r31, r3
/* 81403054 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81403058 | 7F FF 02 14 */	add r31, r31, r0
/* 8140305C | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 81403060 | 7F FF 1A 14 */	add r31, r31, r3
/* 81403064 | 88 64 00 06 */	lbz r3, 0x6(r4)
/* 81403068 | 7F FF 02 14 */	add r31, r31, r0
/* 8140306C | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 81403070 | 7F FF 1A 14 */	add r31, r31, r3
/* 81403074 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81403078 | 7F FF 02 14 */	add r31, r31, r0
/* 8140307C | 42 00 FF BC */	bdnz .L_81403038
.L_81403080:
/* 81403080 | 7C 04 28 50 */	subf r0, r4, r5
/* 81403084 | 7C 09 03 A6 */	mtctr r0
/* 81403088 | 7C 04 28 40 */	cmplw r4, r5
/* 8140308C | 40 80 00 14 */	bge .L_814030A0
.L_81403090:
/* 81403090 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81403094 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81403098 | 7F FF 02 14 */	add r31, r31, r0
/* 8140309C | 42 00 FF F4 */	bdnz .L_81403090
.L_814030A0:
/* 814030A0 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814030A4 | 48 0B 0A C9 */	bl SONtoHs
/* 814030A8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814030AC | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814030B0 | 7C 00 18 40 */	cmplw r0, r3
/* 814030B4 | 41 82 00 0C */	beq .L_814030C0
/* 814030B8 | 38 60 00 00 */	li r3, 0x0
/* 814030BC | 48 00 00 08 */	b .L_814030C4
.L_814030C0:
/* 814030C0 | 38 7B 00 06 */	addi r3, r27, 0x6
.L_814030C4:
/* 814030C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814030C8 | 3B E0 00 00 */	li r31, 0x0
/* 814030CC | 3B 40 00 00 */	li r26, 0x0
/* 814030D0 | 3B 20 00 00 */	li r25, 0x0
/* 814030D4 | 40 82 00 0C */	bne .L_814030E0
/* 814030D8 | 38 60 00 00 */	li r3, 0x0
/* 814030DC | 48 00 00 E8 */	b .L_814031C4
.L_814030E0:
/* 814030E0 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 814030E4 | 41 82 00 0C */	beq .L_814030F0
/* 814030E8 | 38 60 00 00 */	li r3, 0x0
/* 814030EC | 48 00 00 D8 */	b .L_814031C4
.L_814030F0:
/* 814030F0 | 7F C3 EA 14 */	add r30, r3, r29
/* 814030F4 | 3B 63 00 08 */	addi r27, r3, 0x8
/* 814030F8 | 48 00 00 54 */	b .L_8140314C
.L_814030FC:
/* 814030FC | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 81403100 | 41 82 00 30 */	beq .L_81403130
/* 81403104 | 40 80 00 10 */	bge .L_81403114
/* 81403108 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8140310C | 40 80 00 14 */	bge .L_81403120
/* 81403110 | 48 00 00 3C */	b .L_8140314C
.L_81403114:
/* 81403114 | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 81403118 | 41 82 00 28 */	beq .L_81403140
/* 8140311C | 48 00 00 30 */	b .L_8140314C
.L_81403120:
/* 81403120 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81403124 | 48 0B 0A 49 */	bl SONtoHs
/* 81403128 | 54 7F 04 3E */	clrlwi r31, r3, 16
/* 8140312C | 48 00 00 20 */	b .L_8140314C
.L_81403130:
/* 81403130 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81403134 | 48 0B 0A 39 */	bl SONtoHs
/* 81403138 | 54 7A 04 3E */	clrlwi r26, r3, 16
/* 8140313C | 48 00 00 10 */	b .L_8140314C
.L_81403140:
/* 81403140 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81403144 | 48 0B 0A 29 */	bl SONtoHs
/* 81403148 | 54 79 04 3E */	clrlwi r25, r3, 16
.L_8140314C:
/* 8140314C | 7C 1B F0 40 */	cmplw r27, r30
/* 81403150 | 41 80 00 0C */	blt .L_8140315C
/* 81403154 | 38 60 00 00 */	li r3, 0x0
/* 81403158 | 48 00 00 2C */	b .L_81403184
.L_8140315C:
/* 8140315C | A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 81403160 | 48 0B 0A 0D */	bl SONtoHs
/* 81403164 | 54 7D 04 3E */	clrlwi r29, r3, 16
/* 81403168 | A0 7B 00 02 */	lhz r3, 0x2(r27)
/* 8140316C | 48 0B 0A 01 */	bl SONtoHs
/* 81403170 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81403174 | 38 7B 00 04 */	addi r3, r27, 0x4
/* 81403178 | 38 04 00 0B */	addi r0, r4, 0xb
/* 8140317C | 54 00 00 38 */	clrrwi r0, r0, 3
/* 81403180 | 7F 60 DA 14 */	add r27, r0, r27
.L_81403184:
/* 81403184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403188 | 40 82 FF 74 */	bne .L_814030FC
/* 8140318C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81403190 | 40 82 00 0C */	bne .L_8140319C
/* 81403194 | 2C 1A 00 01 */	cmpwi r26, 0x1
/* 81403198 | 41 82 00 0C */	beq .L_814031A4
.L_8140319C:
/* 8140319C | 38 60 00 00 */	li r3, 0x0
/* 814031A0 | 48 00 00 24 */	b .L_814031C4
.L_814031A4:
/* 814031A4 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 814031A8 | 41 80 00 10 */	blt .L_814031B8
/* 814031AC | 38 00 00 01 */	li r0, 0x1
/* 814031B0 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814031B4 | 48 00 00 0C */	b .L_814031C0
.L_814031B8:
/* 814031B8 | 38 00 00 00 */	li r0, 0x0
/* 814031BC | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814031C0:
/* 814031C0 | 38 60 00 01 */	li r3, 0x1
.L_814031C4:
/* 814031C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814031C8 | 48 1F 63 3D */	bl _restgpr_25
/* 814031CC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814031D0 | 7C 08 03 A6 */	mtlr r0
/* 814031D4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814031D8 | 4E 80 00 20 */	blr
.endfn ATERM_81402FC0

# .text:0x4F60 | 0x814031DC | size: 0x214
.fn ATERM_814031DC, global
/* 814031DC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814031E0 | 7C 08 02 A6 */	mflr r0
/* 814031E4 | 38 8D 92 08 */	li r4, lbl_81697248@sda21
/* 814031E8 | 38 A0 00 04 */	li r5, 0x4
/* 814031EC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814031F0 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 814031F4 | 7C 7F 1B 78 */	mr r31, r3
/* 814031F8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814031FC | 4B F2 D0 35 */	bl memcpy
/* 81403200 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81403204 | 38 8D AC 94 */	li r4, lbl_81698CD4@sda21
/* 81403208 | 38 A0 00 06 */	li r5, 0x6
/* 8140320C | 4B F2 D0 25 */	bl memcpy
/* 81403210 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 81403214 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81403218 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8140321C | 98 01 00 10 */	stb r0, 0x10(r1)
/* 81403220 | 48 08 F9 E1 */	bl NCDGetWirelessMacAddress
/* 81403224 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81403228 | 38 6D AC 88 */	li r3, lbl_81698CC8@sda21
/* 8140322C | 38 A0 00 06 */	li r5, 0x6
/* 81403230 | 4B F2 D0 01 */	bl memcpy
/* 81403234 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81403238 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140323C | 38 A0 00 06 */	li r5, 0x6
/* 81403240 | 48 1F AF 95 */	bl memcmp
/* 81403244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403248 | 41 81 00 28 */	bgt .L_81403270
/* 8140324C | 7F E3 FB 78 */	mr r3, r31
/* 81403250 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81403254 | 38 A0 00 06 */	li r5, 0x6
/* 81403258 | 4B F2 CF D9 */	bl memcpy
/* 8140325C | 38 7F 00 06 */	addi r3, r31, 0x6
/* 81403260 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81403264 | 38 A0 00 06 */	li r5, 0x6
/* 81403268 | 4B F2 CF C9 */	bl memcpy
/* 8140326C | 48 00 00 24 */	b .L_81403290
.L_81403270:
/* 81403270 | 7F E3 FB 78 */	mr r3, r31
/* 81403274 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81403278 | 38 A0 00 06 */	li r5, 0x6
/* 8140327C | 4B F2 CF B5 */	bl memcpy
/* 81403280 | 38 7F 00 06 */	addi r3, r31, 0x6
/* 81403284 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81403288 | 38 A0 00 06 */	li r5, 0x6
/* 8140328C | 4B F2 CF A5 */	bl memcpy
.L_81403290:
/* 81403290 | 80 0D 92 04 */	lwz r0, lbl_81697244@sda21(r0)
/* 81403294 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81403298 | 41 82 01 40 */	beq .L_814033D8
/* 8140329C | 38 00 00 06 */	li r0, 0x6
/* 814032A0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814032A4 | 39 01 00 38 */	addi r8, r1, 0x38
/* 814032A8 | 38 E0 00 00 */	li r7, 0x0
/* 814032AC | 38 60 00 3A */	li r3, 0x3a
/* 814032B0 | 38 80 00 00 */	li r4, 0x0
/* 814032B4 | 7C 09 03 A6 */	mtctr r0
.L_814032B8:
/* 814032B8 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814032BC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814032C0 | 54 06 E7 3E */	extrwi r6, r0, 4, 24
/* 814032C4 | 54 09 07 3E */	clrlwi r9, r0, 28
/* 814032C8 | 2C 06 00 09 */	cmpwi r6, 0x9
/* 814032CC | 41 81 00 14 */	bgt .L_814032E0
/* 814032D0 | 38 06 00 30 */	addi r0, r6, 0x30
/* 814032D4 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 814032D8 | 98 08 00 00 */	stb r0, 0x0(r8)
/* 814032DC | 48 00 00 10 */	b .L_814032EC
.L_814032E0:
/* 814032E0 | 38 06 00 37 */	addi r0, r6, 0x37
/* 814032E4 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 814032E8 | 98 08 00 00 */	stb r0, 0x0(r8)
.L_814032EC:
/* 814032EC | 2C 09 00 09 */	cmpwi r9, 0x9
/* 814032F0 | 41 81 00 14 */	bgt .L_81403304
/* 814032F4 | 38 09 00 30 */	addi r0, r9, 0x30
/* 814032F8 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 814032FC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81403300 | 48 00 00 10 */	b .L_81403310
.L_81403304:
/* 81403304 | 38 09 00 37 */	addi r0, r9, 0x37
/* 81403308 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 8140330C | 38 C6 00 01 */	addi r6, r6, 0x1
.L_81403310:
/* 81403310 | 2C 07 00 05 */	cmpwi r7, 0x5
/* 81403314 | 7C 08 30 50 */	subf r0, r8, r6
/* 81403318 | 98 86 00 00 */	stb r4, 0x0(r6)
/* 8140331C | 7D 08 02 14 */	add r8, r8, r0
/* 81403320 | 40 80 00 0C */	bge .L_8140332C
/* 81403324 | 98 68 00 00 */	stb r3, 0x0(r8)
/* 81403328 | 39 08 00 01 */	addi r8, r8, 0x1
.L_8140332C:
/* 8140332C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81403330 | 42 00 FF 88 */	bdnz .L_814032B8
/* 81403334 | 38 80 00 00 */	li r4, 0x0
/* 81403338 | 38 00 00 06 */	li r0, 0x6
/* 8140333C | 98 88 00 00 */	stb r4, 0x0(r8)
/* 81403340 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81403344 | 39 01 00 18 */	addi r8, r1, 0x18
/* 81403348 | 38 E0 00 00 */	li r7, 0x0
/* 8140334C | 38 60 00 3A */	li r3, 0x3a
/* 81403350 | 7C 09 03 A6 */	mtctr r0
.L_81403354:
/* 81403354 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 81403358 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8140335C | 54 06 E7 3E */	extrwi r6, r0, 4, 24
/* 81403360 | 54 09 07 3E */	clrlwi r9, r0, 28
/* 81403364 | 2C 06 00 09 */	cmpwi r6, 0x9
/* 81403368 | 41 81 00 14 */	bgt .L_8140337C
/* 8140336C | 38 06 00 30 */	addi r0, r6, 0x30
/* 81403370 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81403374 | 98 08 00 00 */	stb r0, 0x0(r8)
/* 81403378 | 48 00 00 10 */	b .L_81403388
.L_8140337C:
/* 8140337C | 38 06 00 37 */	addi r0, r6, 0x37
/* 81403380 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81403384 | 98 08 00 00 */	stb r0, 0x0(r8)
.L_81403388:
/* 81403388 | 2C 09 00 09 */	cmpwi r9, 0x9
/* 8140338C | 41 81 00 14 */	bgt .L_814033A0
/* 81403390 | 38 09 00 30 */	addi r0, r9, 0x30
/* 81403394 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 81403398 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8140339C | 48 00 00 10 */	b .L_814033AC
.L_814033A0:
/* 814033A0 | 38 09 00 37 */	addi r0, r9, 0x37
/* 814033A4 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 814033A8 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_814033AC:
/* 814033AC | 2C 07 00 05 */	cmpwi r7, 0x5
/* 814033B0 | 7C 08 30 50 */	subf r0, r8, r6
/* 814033B4 | 98 86 00 00 */	stb r4, 0x0(r6)
/* 814033B8 | 7D 08 02 14 */	add r8, r8, r0
/* 814033BC | 40 80 00 0C */	bge .L_814033C8
/* 814033C0 | 98 68 00 00 */	stb r3, 0x0(r8)
/* 814033C4 | 39 08 00 01 */	addi r8, r8, 0x1
.L_814033C8:
/* 814033C8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814033CC | 42 00 FF 88 */	bdnz .L_81403354
/* 814033D0 | 38 00 00 00 */	li r0, 0x0
/* 814033D4 | 98 08 00 00 */	stb r0, 0x0(r8)
.L_814033D8:
/* 814033D8 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814033DC | 38 60 00 01 */	li r3, 0x1
/* 814033E0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814033E4 | 7C 08 03 A6 */	mtlr r0
/* 814033E8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814033EC | 4E 80 00 20 */	blr
.endfn ATERM_814031DC

# .text:0x5174 | 0x814033F0 | size: 0x224
.fn ATERM_814033F0, global
/* 814033F0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814033F4 | 7C 08 02 A6 */	mflr r0
/* 814033F8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814033FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81403400 | 48 1F 60 AD */	bl _savegpr_22
/* 81403404 | 3B A3 00 08 */	addi r29, r3, 0x8
/* 81403408 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 8140340C | 3B 00 00 00 */	li r24, 0x0
/* 81403410 | 48 0B 07 5D */	bl SONtoHs
/* 81403414 | 3C 80 81 0C */	lis r4, ATERM_810BF5E8@ha
/* 81403418 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8140341C | 3A C0 00 00 */	li r22, 0x0
/* 81403420 | 3F C0 81 65 */	lis r30, jumptable_81657DB8@ha
/* 81403424 | 7F 7D 02 14 */	add r27, r29, r0
/* 81403428 | 3B E4 F5 E8 */	addi r31, r4, ATERM_810BF5E8@l
/* 8140342C | 48 00 01 8C */	b .L_814035B8
.L_81403430:
/* 81403430 | 38 1A FD FF */	subi r0, r26, 0x201
/* 81403434 | 28 00 00 09 */	cmplwi r0, 0x9
/* 81403438 | 41 81 01 80 */	bgt .L_814035B8
/* 8140343C | 38 7E 7D B8 */	addi r3, r30, jumptable_81657DB8@l
/* 81403440 | 54 00 10 3A */	slwi r0, r0, 2
/* 81403444 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81403448 | 7C 69 03 A6 */	mtctr r3
/* 8140344C | 4E 80 04 20 */	bctr
.L_81403450:
/* 81403450 | 38 7F 01 00 */	addi r3, r31, 0x100
/* 81403454 | 38 80 00 00 */	li r4, 0x0
/* 81403458 | 38 A0 00 20 */	li r5, 0x20
/* 8140345C | 4B F2 CE D9 */	bl memset
/* 81403460 | 7F 84 E3 78 */	mr r4, r28
/* 81403464 | 7F 25 CB 78 */	mr r5, r25
/* 81403468 | 38 7F 01 00 */	addi r3, r31, 0x100
/* 8140346C | 4B F2 CD C5 */	bl memcpy
/* 81403470 | 3B 00 00 01 */	li r24, 0x1
/* 81403474 | 48 00 01 44 */	b .L_814035B8
.L_81403478:
/* 81403478 | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 8140347C | 48 0B 06 F1 */	bl SONtoHs
/* 81403480 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81403484 | 90 1F 01 2C */	stw r0, 0x12c(r31)
/* 81403488 | 48 00 01 30 */	b .L_814035B8
.L_8140348C:
/* 8140348C | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 81403490 | 48 0B 06 DD */	bl SONtoHs
/* 81403494 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81403498 | 90 1F 01 5C */	stw r0, 0x15c(r31)
/* 8140349C | 90 1F 01 84 */	stw r0, 0x184(r31)
/* 814034A0 | 90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 814034A4 | 90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 814034A8 | 48 00 01 10 */	b .L_814035B8
.L_814034AC:
/* 814034AC | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 814034B0 | 48 0B 06 BD */	bl SONtoHs
/* 814034B4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814034B8 | 90 1F 01 60 */	stw r0, 0x160(r31)
/* 814034BC | 90 1F 01 88 */	stw r0, 0x188(r31)
/* 814034C0 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 814034C4 | 90 1F 01 D8 */	stw r0, 0x1d8(r31)
/* 814034C8 | 48 00 00 F0 */	b .L_814035B8
.L_814034CC:
/* 814034CC | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 814034D0 | 48 0B 06 9D */	bl SONtoHs
/* 814034D4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814034D8 | 90 1F 01 30 */	stw r0, 0x130(r31)
/* 814034DC | 48 00 00 DC */	b .L_814035B8
.L_814034E0:
/* 814034E0 | 38 1A FD FA */	subi r0, r26, 0x206
/* 814034E4 | 38 80 00 00 */	li r4, 0x0
/* 814034E8 | 1C 00 00 28 */	mulli r0, r0, 0x28
/* 814034EC | 38 A0 00 20 */	li r5, 0x20
/* 814034F0 | 7C 7F 02 14 */	add r3, r31, r0
/* 814034F4 | 3A E3 01 64 */	addi r23, r3, 0x164
/* 814034F8 | 7E E3 BB 78 */	mr r3, r23
/* 814034FC | 4B F2 CE 39 */	bl memset
/* 81403500 | 80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 81403504 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81403508 | 40 82 00 7C */	bne .L_81403584
/* 8140350C | 7F 29 03 A6 */	mtctr r25
/* 81403510 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81403514 | 40 81 00 A4 */	ble .L_814035B8
.L_81403518:
/* 81403518 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 8140351C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81403520 | 54 03 E7 3E */	extrwi r3, r0, 4, 24
/* 81403524 | 54 04 07 3E */	clrlwi r4, r0, 28
/* 81403528 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 8140352C | 41 81 00 14 */	bgt .L_81403540
/* 81403530 | 38 03 00 30 */	addi r0, r3, 0x30
/* 81403534 | 38 77 00 01 */	addi r3, r23, 0x1
/* 81403538 | 98 17 00 00 */	stb r0, 0x0(r23)
/* 8140353C | 48 00 00 10 */	b .L_8140354C
.L_81403540:
/* 81403540 | 38 03 00 37 */	addi r0, r3, 0x37
/* 81403544 | 38 77 00 01 */	addi r3, r23, 0x1
/* 81403548 | 98 17 00 00 */	stb r0, 0x0(r23)
.L_8140354C:
/* 8140354C | 2C 04 00 09 */	cmpwi r4, 0x9
/* 81403550 | 41 81 00 14 */	bgt .L_81403564
/* 81403554 | 38 04 00 30 */	addi r0, r4, 0x30
/* 81403558 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8140355C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81403560 | 48 00 00 10 */	b .L_81403570
.L_81403564:
/* 81403564 | 38 04 00 37 */	addi r0, r4, 0x37
/* 81403568 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8140356C | 38 63 00 01 */	addi r3, r3, 0x1
.L_81403570:
/* 81403570 | 7C 17 18 50 */	subf r0, r23, r3
/* 81403574 | 9A C3 00 00 */	stb r22, 0x0(r3)
/* 81403578 | 7E F7 02 14 */	add r23, r23, r0
/* 8140357C | 42 00 FF 9C */	bdnz .L_81403518
/* 81403580 | 48 00 00 38 */	b .L_814035B8
.L_81403584:
/* 81403584 | 7E E3 BB 78 */	mr r3, r23
/* 81403588 | 7F 84 E3 78 */	mr r4, r28
/* 8140358C | 7F 25 CB 78 */	mr r5, r25
/* 81403590 | 4B F2 CC A1 */	bl memcpy
/* 81403594 | 48 00 00 24 */	b .L_814035B8
.L_81403598:
/* 81403598 | 38 7F 01 FC */	addi r3, r31, 0x1fc
/* 8140359C | 38 80 00 00 */	li r4, 0x0
/* 814035A0 | 38 A0 00 48 */	li r5, 0x48
/* 814035A4 | 4B F2 CD 91 */	bl memset
/* 814035A8 | 7F 84 E3 78 */	mr r4, r28
/* 814035AC | 7F 25 CB 78 */	mr r5, r25
/* 814035B0 | 38 7F 01 FC */	addi r3, r31, 0x1fc
/* 814035B4 | 4B F2 CC 7D */	bl memcpy
.L_814035B8:
/* 814035B8 | 7C 1D D8 40 */	cmplw r29, r27
/* 814035BC | 41 80 00 0C */	blt .L_814035C8
/* 814035C0 | 3B 80 00 00 */	li r28, 0x0
/* 814035C4 | 48 00 00 2C */	b .L_814035F0
.L_814035C8:
/* 814035C8 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814035CC | 48 0B 05 A1 */	bl SONtoHs
/* 814035D0 | 54 7A 04 3E */	clrlwi r26, r3, 16
/* 814035D4 | A0 7D 00 02 */	lhz r3, 0x2(r29)
/* 814035D8 | 48 0B 05 95 */	bl SONtoHs
/* 814035DC | 54 79 04 3E */	clrlwi r25, r3, 16
/* 814035E0 | 3B 9D 00 04 */	addi r28, r29, 0x4
/* 814035E4 | 38 19 00 0B */	addi r0, r25, 0xb
/* 814035E8 | 54 00 00 38 */	clrrwi r0, r0, 3
/* 814035EC | 7F A0 EA 14 */	add r29, r0, r29
.L_814035F0:
/* 814035F0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814035F4 | 40 82 FE 3C */	bne .L_81403430
/* 814035F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814035FC | 7F 03 C3 78 */	mr r3, r24
/* 81403600 | 48 1F 5E F9 */	bl _restgpr_22
/* 81403604 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81403608 | 7C 08 03 A6 */	mtlr r0
/* 8140360C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81403610 | 4E 80 00 20 */	blr
.endfn ATERM_814033F0

# .text:0x5398 | 0x81403614 | size: 0xC4
.fn ATERM_81403614, global
/* 81403614 | 38 C0 00 00 */	li r6, 0x0
/* 81403618 | 38 E0 00 00 */	li r7, 0x0
/* 8140361C | 7C A9 03 A6 */	mtctr r5
/* 81403620 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81403624 | 40 81 00 AC */	ble .L_814036D0
.L_81403628:
/* 81403628 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8140362C | 7C 00 07 74 */	extsb r0, r0
/* 81403630 | 2C 00 00 47 */	cmpwi r0, 0x47
/* 81403634 | 40 80 00 24 */	bge .L_81403658
/* 81403638 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 8140363C | 40 80 00 10 */	bge .L_8140364C
/* 81403640 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81403644 | 40 80 00 28 */	bge .L_8140366C
/* 81403648 | 48 00 00 48 */	b .L_81403690
.L_8140364C:
/* 8140364C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81403650 | 40 80 00 34 */	bge .L_81403684
/* 81403654 | 48 00 00 3C */	b .L_81403690
.L_81403658:
/* 81403658 | 2C 00 00 67 */	cmpwi r0, 0x67
/* 8140365C | 40 80 00 34 */	bge .L_81403690
/* 81403660 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 81403664 | 40 80 00 14 */	bge .L_81403678
/* 81403668 | 48 00 00 28 */	b .L_81403690
.L_8140366C:
/* 8140366C | 7C A6 02 14 */	add r5, r6, r0
/* 81403670 | 38 C5 FF D0 */	subi r6, r5, 0x30
/* 81403674 | 48 00 00 24 */	b .L_81403698
.L_81403678:
/* 81403678 | 7C A6 02 14 */	add r5, r6, r0
/* 8140367C | 38 C5 FF A9 */	subi r6, r5, 0x57
/* 81403680 | 48 00 00 18 */	b .L_81403698
.L_81403684:
/* 81403684 | 7C A6 02 14 */	add r5, r6, r0
/* 81403688 | 38 C5 FF C9 */	subi r6, r5, 0x37
/* 8140368C | 48 00 00 0C */	b .L_81403698
.L_81403690:
/* 81403690 | 38 60 00 00 */	li r3, 0x0
/* 81403694 | 4E 80 00 20 */	blr
.L_81403698:
/* 81403698 | 54 E5 0F FE */	srwi r5, r7, 31
/* 8140369C | 54 E0 07 FE */	clrlwi r0, r7, 31
/* 814036A0 | 7C 00 2A 78 */	xor r0, r0, r5
/* 814036A4 | 7C 05 00 51 */	subf. r0, r5, r0
/* 814036A8 | 40 82 00 0C */	bne .L_814036B4
/* 814036AC | 54 C6 20 36 */	slwi r6, r6, 4
/* 814036B0 | 48 00 00 14 */	b .L_814036C4
.L_814036B4:
/* 814036B4 | 7C 05 3A 14 */	add r0, r5, r7
/* 814036B8 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814036BC | 7C C3 01 AE */	stbx r6, r3, r0
/* 814036C0 | 38 C0 00 00 */	li r6, 0x0
.L_814036C4:
/* 814036C4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814036C8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814036CC | 42 00 FF 5C */	bdnz .L_81403628
.L_814036D0:
/* 814036D0 | 38 60 00 01 */	li r3, 0x1
/* 814036D4 | 4E 80 00 20 */	blr
.endfn ATERM_81403614

# .text:0x545C | 0x814036D8 | size: 0x1F0
.fn ATERM_814036D8, global
/* 814036D8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814036DC | 7C 08 02 A6 */	mflr r0
/* 814036E0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814036E4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814036E8 | 48 1F 5D C1 */	bl _savegpr_21
/* 814036EC | 3F 40 81 0C */	lis r26, ATERM_810BF5E8@ha
/* 814036F0 | 3F 20 81 0C */	lis r25, ATERM_810BF840@ha
/* 814036F4 | 3B 5A F5 E8 */	addi r26, r26, ATERM_810BF5E8@l
/* 814036F8 | 3B E0 00 01 */	li r31, 0x1
/* 814036FC | 38 79 F8 40 */	addi r3, r25, ATERM_810BF840@l
/* 81403700 | 38 9A 01 00 */	addi r4, r26, 0x100
/* 81403704 | 48 1F EC 01 */	bl strcpy
/* 81403708 | 80 1A 01 2C */	lwz r0, 0x12c(r26)
/* 8140370C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81403710 | 41 82 01 58 */	beq .L_81403868
/* 81403714 | 40 80 00 14 */	bge .L_81403728
/* 81403718 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140371C | 41 82 00 18 */	beq .L_81403734
/* 81403720 | 40 80 00 24 */	bge .L_81403744
/* 81403724 | 48 00 01 84 */	b .L_814038A8
.L_81403728:
/* 81403728 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140372C | 40 80 01 7C */	bge .L_814038A8
/* 81403730 | 48 00 01 58 */	b .L_81403888
.L_81403734:
/* 81403734 | 38 79 F8 40 */	addi r3, r25, ATERM_810BF840@l
/* 81403738 | 38 00 00 00 */	li r0, 0x0
/* 8140373C | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81403740 | 48 00 01 6C */	b .L_814038AC
.L_81403744:
/* 81403744 | 80 1A 01 30 */	lwz r0, 0x130(r26)
/* 81403748 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140374C | 40 82 00 0C */	bne .L_81403758
/* 81403750 | 3B E0 FF F9 */	li r31, -0x7
/* 81403754 | 48 00 01 58 */	b .L_814038AC
.L_81403758:
/* 81403758 | 3B 39 F8 40 */	addi r25, r25, ATERM_810BF840@l
/* 8140375C | 3B 1A 01 64 */	addi r24, r26, 0x164
/* 81403760 | 90 19 00 24 */	stw r0, 0x24(r25)
/* 81403764 | 3A C1 00 08 */	addi r22, r1, 0x8
/* 81403768 | 3A F9 00 28 */	addi r23, r25, 0x28
/* 8140376C | 3A A0 00 00 */	li r21, 0x0
/* 81403770 | 3B 80 00 01 */	li r28, 0x1
/* 81403774 | 3B A0 00 02 */	li r29, 0x2
/* 81403778 | 3B C0 00 03 */	li r30, 0x3
/* 8140377C | 3B 40 00 00 */	li r26, 0x0
/* 81403780 | 3F 60 81 65 */	lis r27, jumptable_81657DE0@ha
.L_81403784:
/* 81403784 | 7F 04 C3 78 */	mr r4, r24
/* 81403788 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140378C | 38 A0 00 20 */	li r5, 0x20
/* 81403790 | 4B F2 CA A1 */	bl memcpy
/* 81403794 | 9B 41 00 28 */	stb r26, 0x28(r1)
/* 81403798 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8140379C | 48 1F 57 61 */	bl strlen
/* 814037A0 | 28 03 00 20 */	cmplwi r3, 0x20
/* 814037A4 | 41 81 00 A8 */	bgt .L_8140384C
/* 814037A8 | 38 9B 7D E0 */	addi r4, r27, jumptable_81657DE0@l
/* 814037AC | 54 60 10 3A */	slwi r0, r3, 2
/* 814037B0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 814037B4 | 7C 89 03 A6 */	mtctr r4
/* 814037B8 | 4E 80 04 20 */	bctr
.L_814037BC:
/* 814037BC | 93 99 00 20 */	stw r28, 0x20(r25)
/* 814037C0 | 7E E3 BB 78 */	mr r3, r23
/* 814037C4 | 7E C4 B3 78 */	mr r4, r22
/* 814037C8 | 38 A0 00 05 */	li r5, 0x5
/* 814037CC | 4B F2 CA 65 */	bl memcpy
/* 814037D0 | 48 00 00 80 */	b .L_81403850
.L_814037D4:
/* 814037D4 | 93 99 00 20 */	stw r28, 0x20(r25)
/* 814037D8 | 7E E3 BB 78 */	mr r3, r23
/* 814037DC | 7E C4 B3 78 */	mr r4, r22
/* 814037E0 | 38 A0 00 0A */	li r5, 0xa
/* 814037E4 | 4B FF FE 31 */	bl ATERM_81403614
/* 814037E8 | 48 00 00 68 */	b .L_81403850
.L_814037EC:
/* 814037EC | 93 B9 00 20 */	stw r29, 0x20(r25)
/* 814037F0 | 7E E3 BB 78 */	mr r3, r23
/* 814037F4 | 7E C4 B3 78 */	mr r4, r22
/* 814037F8 | 38 A0 00 0D */	li r5, 0xd
/* 814037FC | 4B F2 CA 35 */	bl memcpy
/* 81403800 | 48 00 00 50 */	b .L_81403850
.L_81403804:
/* 81403804 | 93 B9 00 20 */	stw r29, 0x20(r25)
/* 81403808 | 7E E3 BB 78 */	mr r3, r23
/* 8140380C | 7E C4 B3 78 */	mr r4, r22
/* 81403810 | 38 A0 00 1A */	li r5, 0x1a
/* 81403814 | 4B FF FE 01 */	bl ATERM_81403614
/* 81403818 | 48 00 00 38 */	b .L_81403850
.L_8140381C:
/* 8140381C | 93 D9 00 20 */	stw r30, 0x20(r25)
/* 81403820 | 7E E3 BB 78 */	mr r3, r23
/* 81403824 | 7E C4 B3 78 */	mr r4, r22
/* 81403828 | 38 A0 00 10 */	li r5, 0x10
/* 8140382C | 4B F2 CA 05 */	bl memcpy
/* 81403830 | 48 00 00 20 */	b .L_81403850
.L_81403834:
/* 81403834 | 93 D9 00 20 */	stw r30, 0x20(r25)
/* 81403838 | 7E E3 BB 78 */	mr r3, r23
/* 8140383C | 7E C4 B3 78 */	mr r4, r22
/* 81403840 | 38 A0 00 20 */	li r5, 0x20
/* 81403844 | 4B FF FD D1 */	bl ATERM_81403614
/* 81403848 | 48 00 00 08 */	b .L_81403850
.L_8140384C:
/* 8140384C | 3B E0 FF F9 */	li r31, -0x7
.L_81403850:
/* 81403850 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 81403854 | 3A F7 00 20 */	addi r23, r23, 0x20
/* 81403858 | 2C 15 00 04 */	cmpwi r21, 0x4
/* 8140385C | 3B 18 00 28 */	addi r24, r24, 0x28
/* 81403860 | 41 80 FF 24 */	blt .L_81403784
/* 81403864 | 48 00 00 48 */	b .L_814038AC
.L_81403868:
/* 81403868 | 38 79 F8 40 */	addi r3, r25, ATERM_810BF840@l
/* 8140386C | 38 00 00 04 */	li r0, 0x4
/* 81403870 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81403874 | 38 63 00 A8 */	addi r3, r3, 0xa8
/* 81403878 | 38 9A 01 FC */	addi r4, r26, 0x1fc
/* 8140387C | 38 A0 00 40 */	li r5, 0x40
/* 81403880 | 4B F2 C9 B1 */	bl memcpy
/* 81403884 | 48 00 00 28 */	b .L_814038AC
.L_81403888:
/* 81403888 | 38 79 F8 40 */	addi r3, r25, ATERM_810BF840@l
/* 8140388C | 38 00 00 05 */	li r0, 0x5
/* 81403890 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81403894 | 38 63 00 A8 */	addi r3, r3, 0xa8
/* 81403898 | 38 9A 01 FC */	addi r4, r26, 0x1fc
/* 8140389C | 38 A0 00 40 */	li r5, 0x40
/* 814038A0 | 4B F2 C9 91 */	bl memcpy
/* 814038A4 | 48 00 00 08 */	b .L_814038AC
.L_814038A8:
/* 814038A8 | 3B E0 FF F9 */	li r31, -0x7
.L_814038AC:
/* 814038AC | 39 61 00 60 */	addi r11, r1, 0x60
/* 814038B0 | 7F E3 FB 78 */	mr r3, r31
/* 814038B4 | 48 1F 5C 41 */	bl _restgpr_21
/* 814038B8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814038BC | 7C 08 03 A6 */	mtlr r0
/* 814038C0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814038C4 | 4E 80 00 20 */	blr
.endfn ATERM_814036D8

# .text:0x564C | 0x814038C8 | size: 0xEDC
.fn ATERM_814038C8, global
/* 814038C8 | 94 21 FE 80 */	stwu r1, -0x180(r1)
/* 814038CC | 7C 08 02 A6 */	mflr r0
/* 814038D0 | 90 01 01 84 */	stw r0, 0x184(r1)
/* 814038D4 | 39 61 01 80 */	addi r11, r1, 0x180
/* 814038D8 | 48 1F 5B B5 */	bl _savegpr_14
/* 814038DC | 38 00 00 01 */	li r0, 0x1
/* 814038E0 | 3E 80 10 62 */	lis r20, 0x1062
/* 814038E4 | 3E 40 81 0C */	lis r18, ATERM_810BECA0@ha
/* 814038E8 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 814038EC | 3A 52 EC A0 */	addi r18, r18, ATERM_810BECA0@l
/* 814038F0 | 38 14 4D D3 */	addi r0, r20, 0x4dd3
/* 814038F4 | 90 01 01 2C */	stw r0, 0x12c(r1)
/* 814038F8 | 3B F2 14 98 */	addi r31, r18, 0x1498
/* 814038FC | 39 F2 0C 98 */	addi r15, r18, 0xc98
/* 81403900 | 3B 32 1C 98 */	addi r25, r18, 0x1c98
/* 81403904 | 3B C0 00 00 */	li r30, 0x0
/* 81403908 | 3B A0 FF FB */	li r29, -0x5
/* 8140390C | 3B 80 00 00 */	li r28, 0x0
/* 81403910 | 3B 60 00 00 */	li r27, 0x0
/* 81403914 | 3B 40 00 00 */	li r26, 0x0
/* 81403918 | 3B 00 00 00 */	li r24, 0x0
/* 8140391C | 3E 60 80 00 */	lis r19, 0x8000
/* 81403920 | 3A A0 FF FF */	li r21, -0x1
/* 81403924 | 3A C0 00 08 */	li r22, 0x8
/* 81403928 | 3A E0 00 02 */	li r23, 0x2
/* 8140392C | 3D C0 00 01 */	lis r14, 0x1
/* 81403930 | 48 00 0E 24 */	b .L_81404754
.L_81403934:
/* 81403934 | 38 61 00 78 */	addi r3, r1, 0x78
/* 81403938 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8140393C | 38 A0 00 01 */	li r5, 0x1
/* 81403940 | 48 12 D6 E1 */	bl OSInitMessageQueue
/* 81403944 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81403948 | 48 12 8F 9D */	bl OSCreateAlarm
/* 8140394C | 38 61 00 98 */	addi r3, r1, 0x98
/* 81403950 | 38 81 00 78 */	addi r4, r1, 0x78
/* 81403954 | 48 12 96 79 */	bl fn_8152CFCC
/* 81403958 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 8140395C | 3C 80 81 40 */	lis r4, ATERM_8140684C@ha
/* 81403960 | 38 E4 68 4C */	addi r7, r4, ATERM_8140684C@l
/* 81403964 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81403968 | 54 04 F0 BE */	srwi r4, r0, 2
/* 8140396C | 80 01 01 2C */	lwz r0, 0x12c(r1)
/* 81403970 | 38 A0 00 00 */	li r5, 0x0
/* 81403974 | 7C 00 20 16 */	mulhwu r0, r0, r4
/* 81403978 | 54 00 D1 BE */	srwi r0, r0, 6
/* 8140397C | 1C C0 01 F4 */	mulli r6, r0, 0x1f4
/* 81403980 | 48 12 91 C5 */	bl OSSetAlarm
/* 81403984 | 38 61 00 78 */	addi r3, r1, 0x78
/* 81403988 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8140398C | 38 A0 00 01 */	li r5, 0x1
/* 81403990 | 48 12 D7 B9 */	bl OSReceiveMessage
/* 81403994 | 80 0D AC 90 */	lwz r0, lbl_81698CD0@sda21(r0)
/* 81403998 | 28 00 00 0A */	cmplwi r0, 0xa
/* 8140399C | 41 81 0D B8 */	bgt .L_81404754
/* 814039A0 | 3C 60 81 65 */	lis r3, jumptable_81657E64@ha
/* 814039A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814039A8 | 38 63 7E 64 */	addi r3, r3, jumptable_81657E64@l
/* 814039AC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814039B0 | 7C 69 03 A6 */	mtctr r3
/* 814039B4 | 4E 80 04 20 */	bctr
.L_814039B8:
/* 814039B8 | 4B FF F0 6D */	bl ATERM_81402A24
/* 814039BC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814039C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814039C4 | 41 82 00 0C */	beq .L_814039D0
/* 814039C8 | 3B 40 00 01 */	li r26, 0x1
/* 814039CC | 48 00 0D 88 */	b .L_81404754
.L_814039D0:
/* 814039D0 | 80 6D 91 D8 */	lwz r3, lbl_81697218@sda21(r0)
/* 814039D4 | 38 00 00 03 */	li r0, 0x3
/* 814039D8 | 90 0D AC 50 */	stw r0, lbl_81698C90@sda21(r0)
/* 814039DC | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814039E0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814039E4 | 38 00 00 03 */	li r0, 0x3
/* 814039E8 | 90 01 00 68 */	stw r0, 0x68(r1)
/* 814039EC | 40 82 00 0C */	bne .L_814039F8
/* 814039F0 | 92 A1 00 6C */	stw r21, 0x6c(r1)
/* 814039F4 | 48 00 00 30 */	b .L_81403A24
.L_814039F8:
/* 814039F8 | 48 13 22 89 */	bl OSGetTime
/* 814039FC | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403A00 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403A04 | 38 A0 00 00 */	li r5, 0x0
/* 81403A08 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403A0C | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403A10 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403A14 | 48 1F 5B FD */	bl __div2i
/* 81403A18 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81403A1C | 7C 04 00 50 */	subf r0, r4, r0
/* 81403A20 | 90 01 00 6C */	stw r0, 0x6c(r1)
.L_81403A24:
/* 81403A24 | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 81403A28 | 38 61 00 68 */	addi r3, r1, 0x68
/* 81403A2C | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 81403A30 | 90 01 00 70 */	stw r0, 0x70(r1)
/* 81403A34 | 7D 89 03 A6 */	mtctr r12
/* 81403A38 | 4E 80 04 21 */	bctrl
/* 81403A3C | 92 ED AC 90 */	stw r23, lbl_81698CD0@sda21(r0)
/* 81403A40 | 48 00 0D 14 */	b .L_81404754
.L_81403A44:
/* 81403A44 | 4B FF E7 79 */	bl ATERM_814021BC
/* 81403A48 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81403A4C | 7C 7D 1B 78 */	mr r29, r3
/* 81403A50 | 41 82 00 0C */	beq .L_81403A5C
/* 81403A54 | 3B 40 00 01 */	li r26, 0x1
/* 81403A58 | 48 00 0C FC */	b .L_81404754
.L_81403A5C:
/* 81403A5C | 48 13 22 25 */	bl OSGetTime
/* 81403A60 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403A64 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403A68 | 38 A0 00 00 */	li r5, 0x0
/* 81403A6C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403A70 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403A74 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403A78 | 48 1F 5B 99 */	bl __div2i
/* 81403A7C | 80 6D 91 D8 */	lwz r3, lbl_81697218@sda21(r0)
/* 81403A80 | 38 04 27 10 */	addi r0, r4, 0x2710
/* 81403A84 | 7C 03 00 40 */	cmplw r3, r0
/* 81403A88 | 40 80 00 2C */	bge .L_81403AB4
/* 81403A8C | 48 13 21 F5 */	bl OSGetTime
/* 81403A90 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403A94 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403A98 | 38 A0 00 00 */	li r5, 0x0
/* 81403A9C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403AA0 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403AA4 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403AA8 | 48 1F 5B 69 */	bl __div2i
/* 81403AAC | 38 04 27 10 */	addi r0, r4, 0x2710
/* 81403AB0 | 90 0D 91 D8 */	stw r0, lbl_81697218@sda21(r0)
.L_81403AB4:
/* 81403AB4 | 38 00 00 03 */	li r0, 0x3
/* 81403AB8 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81403ABC | 48 00 0C 98 */	b .L_81404754
.L_81403AC0:
/* 81403AC0 | 38 60 00 02 */	li r3, 0x2
/* 81403AC4 | 38 80 00 02 */	li r4, 0x2
/* 81403AC8 | 38 A0 00 00 */	li r5, 0x0
/* 81403ACC | 48 0A F5 A1 */	bl SOSocket
/* 81403AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403AD4 | 7C 7E 1B 78 */	mr r30, r3
/* 81403AD8 | 40 80 00 10 */	bge .L_81403AE8
/* 81403ADC | 3B A0 FF FE */	li r29, -0x2
/* 81403AE0 | 3B 40 00 01 */	li r26, 0x1
/* 81403AE4 | 48 00 0C 70 */	b .L_81404754
.L_81403AE8:
/* 81403AE8 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81403AEC | 38 80 00 00 */	li r4, 0x0
/* 81403AF0 | 38 A0 00 08 */	li r5, 0x8
/* 81403AF4 | 4B F2 C8 41 */	bl memset
/* 81403AF8 | 38 0E E6 01 */	subi r0, r14, 0x19ff
/* 81403AFC | 9A C1 00 48 */	stb r22, 0x48(r1)
/* 81403B00 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81403B04 | 9A E1 00 49 */	stb r23, 0x49(r1)
/* 81403B08 | 48 0B 00 71 */	bl SOHtoNs
/* 81403B0C | B0 61 00 4A */	sth r3, 0x4a(r1)
/* 81403B10 | 7F C3 F3 78 */	mr r3, r30
/* 81403B14 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81403B18 | 93 01 00 4C */	stw r24, 0x4c(r1)
/* 81403B1C | 48 0A F6 E5 */	bl SOBind
/* 81403B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403B24 | 7C 7D 1B 78 */	mr r29, r3
/* 81403B28 | 40 80 00 10 */	bge .L_81403B38
/* 81403B2C | 3B A0 FF FE */	li r29, -0x2
/* 81403B30 | 3B 40 00 01 */	li r26, 0x1
/* 81403B34 | 48 00 0C 20 */	b .L_81404754
.L_81403B38:
/* 81403B38 | 38 00 00 04 */	li r0, 0x4
/* 81403B3C | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81403B40 | 48 00 0C 14 */	b .L_81404754
.L_81403B44:
/* 81403B44 | 48 13 21 3D */	bl OSGetTime
/* 81403B48 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403B4C | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403B50 | 38 A0 00 00 */	li r5, 0x0
/* 81403B54 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403B58 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403B5C | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403B60 | 48 1F 5A B1 */	bl __div2i
/* 81403B64 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81403B68 | 7C 04 00 40 */	cmplw r4, r0
/* 81403B6C | 41 80 00 18 */	blt .L_81403B84
/* 81403B70 | 7F C3 F3 78 */	mr r3, r30
/* 81403B74 | 48 0A F5 E9 */	bl SOClose
/* 81403B78 | 3B A0 FF FD */	li r29, -0x3
/* 81403B7C | 3B 40 00 01 */	li r26, 0x1
/* 81403B80 | 48 00 0B D4 */	b .L_81404754
.L_81403B84:
/* 81403B84 | 9A C1 00 40 */	stb r22, 0x40(r1)
/* 81403B88 | 38 72 0C 88 */	addi r3, r18, 0xc88
/* 81403B8C | 38 81 00 40 */	addi r4, r1, 0x40
/* 81403B90 | 4B FF F6 4D */	bl ATERM_814031DC
/* 81403B94 | 7F C3 F3 78 */	mr r3, r30
/* 81403B98 | 38 92 0C 98 */	addi r4, r18, 0xc98
/* 81403B9C | 38 E1 00 40 */	addi r7, r1, 0x40
/* 81403BA0 | 38 A0 08 00 */	li r5, 0x800
/* 81403BA4 | 38 C0 00 04 */	li r6, 0x4
/* 81403BA8 | 48 0A F9 25 */	bl SORecvFrom
/* 81403BAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403BB0 | 40 81 0B A4 */	ble .L_81404754
/* 81403BB4 | 38 72 0C 98 */	addi r3, r18, 0xc98
/* 81403BB8 | 38 8D AC 84 */	li r4, lbl_81698CC4@sda21
/* 81403BBC | 4B FF F4 05 */	bl ATERM_81402FC0
/* 81403BC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403BC4 | 41 82 0B 90 */	beq .L_81404754
/* 81403BC8 | 48 13 20 B9 */	bl OSGetTime
/* 81403BCC | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403BD0 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403BD4 | 38 A0 00 00 */	li r5, 0x0
/* 81403BD8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403BDC | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403BE0 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403BE4 | 48 1F 5A 2D */	bl __div2i
/* 81403BE8 | 38 64 75 30 */	addi r3, r4, 0x7530
/* 81403BEC | 38 00 00 05 */	li r0, 0x5
/* 81403BF0 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81403BF4 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81403BF8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81403BFC | 38 00 00 04 */	li r0, 0x4
/* 81403C00 | 90 6D 91 D8 */	stw r3, lbl_81697218@sda21(r0)
/* 81403C04 | 90 0D AC 50 */	stw r0, lbl_81698C90@sda21(r0)
/* 81403C08 | 38 00 00 04 */	li r0, 0x4
/* 81403C0C | 90 01 00 5C */	stw r0, 0x5c(r1)
/* 81403C10 | 40 82 00 0C */	bne .L_81403C1C
/* 81403C14 | 92 A1 00 60 */	stw r21, 0x60(r1)
/* 81403C18 | 48 00 00 30 */	b .L_81403C48
.L_81403C1C:
/* 81403C1C | 48 13 20 65 */	bl OSGetTime
/* 81403C20 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403C24 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403C28 | 38 A0 00 00 */	li r5, 0x0
/* 81403C2C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403C30 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403C34 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403C38 | 48 1F 59 D9 */	bl __div2i
/* 81403C3C | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81403C40 | 7C 04 00 50 */	subf r0, r4, r0
/* 81403C44 | 90 01 00 60 */	stw r0, 0x60(r1)
.L_81403C48:
/* 81403C48 | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 81403C4C | 38 61 00 5C */	addi r3, r1, 0x5c
/* 81403C50 | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 81403C54 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81403C58 | 7D 89 03 A6 */	mtctr r12
/* 81403C5C | 4E 80 04 21 */	bctrl
/* 81403C60 | 48 00 0A F4 */	b .L_81404754
.L_81403C64:
/* 81403C64 | 82 0D 92 00 */	lwz r16, lbl_81697240@sda21(r0)
/* 81403C68 | 38 60 00 01 */	li r3, 0x1
/* 81403C6C | 48 0A FF 0D */	bl SOHtoNs
/* 81403C70 | 89 62 88 80 */	lbz r11, lbl_81694C80@sda21(r0)
/* 81403C74 | 38 80 00 00 */	li r4, 0x0
/* 81403C78 | 89 42 88 81 */	lbz r10, lbl_81694C81@sda21(r0)
/* 81403C7C | 38 A0 00 04 */	li r5, 0x4
/* 81403C80 | 89 22 88 82 */	lbz r9, lbl_81694C82@sda21(r0)
/* 81403C84 | 89 02 88 83 */	lbz r8, lbl_81694C83@sda21(r0)
/* 81403C88 | 88 E2 88 84 */	lbz r7, lbl_81694C84@sda21(r0)
/* 81403C8C | 88 C2 88 85 */	lbz r6, lbl_81694C85@sda21(r0)
/* 81403C90 | 88 02 88 86 */	lbz r0, lbl_81694C86@sda21(r0)
/* 81403C94 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 81403C98 | 7E 03 83 78 */	mr r3, r16
/* 81403C9C | 99 61 00 38 */	stb r11, 0x38(r1)
/* 81403CA0 | 99 41 00 39 */	stb r10, 0x39(r1)
/* 81403CA4 | 99 21 00 3A */	stb r9, 0x3a(r1)
/* 81403CA8 | 99 01 00 3B */	stb r8, 0x3b(r1)
/* 81403CAC | 98 E1 00 3C */	stb r7, 0x3c(r1)
/* 81403CB0 | 98 C1 00 3D */	stb r6, 0x3d(r1)
/* 81403CB4 | 98 01 00 3E */	stb r0, 0x3e(r1)
/* 81403CB8 | 4B F2 C6 7D */	bl memset
/* 81403CBC | 38 60 00 01 */	li r3, 0x1
/* 81403CC0 | 48 0A FE B9 */	bl SOHtoNs
/* 81403CC4 | B0 70 00 00 */	sth r3, 0x0(r16)
/* 81403CC8 | 38 60 00 02 */	li r3, 0x2
/* 81403CCC | 48 0A FE AD */	bl SOHtoNs
/* 81403CD0 | B0 70 00 02 */	sth r3, 0x2(r16)
/* 81403CD4 | 38 70 00 04 */	addi r3, r16, 0x4
/* 81403CD8 | 38 80 00 00 */	li r4, 0x0
/* 81403CDC | 38 A0 00 04 */	li r5, 0x4
/* 81403CE0 | 4B F2 C6 55 */	bl memset
/* 81403CE4 | 38 70 00 04 */	addi r3, r16, 0x4
/* 81403CE8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81403CEC | 38 A0 00 02 */	li r5, 0x2
/* 81403CF0 | 4B F2 C5 41 */	bl memcpy
/* 81403CF4 | 3A 30 00 08 */	addi r17, r16, 0x8
/* 81403CF8 | 38 80 00 00 */	li r4, 0x0
/* 81403CFC | 7E 23 8B 78 */	mr r3, r17
/* 81403D00 | 38 A0 00 04 */	li r5, 0x4
/* 81403D04 | 4B F2 C6 31 */	bl memset
/* 81403D08 | 38 60 00 02 */	li r3, 0x2
/* 81403D0C | 48 0A FE 6D */	bl SOHtoNs
/* 81403D10 | B0 71 00 00 */	sth r3, 0x0(r17)
/* 81403D14 | 38 60 00 02 */	li r3, 0x2
/* 81403D18 | 48 0A FE 61 */	bl SOHtoNs
/* 81403D1C | B0 71 00 02 */	sth r3, 0x2(r17)
/* 81403D20 | 38 71 00 04 */	addi r3, r17, 0x4
/* 81403D24 | 38 80 00 00 */	li r4, 0x0
/* 81403D28 | 38 A0 00 04 */	li r5, 0x4
/* 81403D2C | 4B F2 C6 09 */	bl memset
/* 81403D30 | 38 71 00 04 */	addi r3, r17, 0x4
/* 81403D34 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81403D38 | 38 A0 00 02 */	li r5, 0x2
/* 81403D3C | 4B F2 C4 F5 */	bl memcpy
/* 81403D40 | 80 0D AC 84 */	lwz r0, lbl_81698CC4@sda21(r0)
/* 81403D44 | 3A 11 00 08 */	addi r16, r17, 0x8
/* 81403D48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81403D4C | 41 82 00 50 */	beq .L_81403D9C
/* 81403D50 | 7E 03 83 78 */	mr r3, r16
/* 81403D54 | 38 80 00 00 */	li r4, 0x0
/* 81403D58 | 38 A0 00 04 */	li r5, 0x4
/* 81403D5C | 4B F2 C5 D9 */	bl memset
/* 81403D60 | 38 60 00 05 */	li r3, 0x5
/* 81403D64 | 48 0A FE 15 */	bl SOHtoNs
/* 81403D68 | B0 70 00 00 */	sth r3, 0x0(r16)
/* 81403D6C | 38 60 00 02 */	li r3, 0x2
/* 81403D70 | 48 0A FE 09 */	bl SOHtoNs
/* 81403D74 | B0 70 00 02 */	sth r3, 0x2(r16)
/* 81403D78 | 38 71 00 0C */	addi r3, r17, 0xc
/* 81403D7C | 38 80 00 00 */	li r4, 0x0
/* 81403D80 | 38 A0 00 04 */	li r5, 0x4
/* 81403D84 | 4B F2 C5 B1 */	bl memset
/* 81403D88 | 38 71 00 0C */	addi r3, r17, 0xc
/* 81403D8C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81403D90 | 38 A0 00 02 */	li r5, 0x2
/* 81403D94 | 4B F2 C4 9D */	bl memcpy
/* 81403D98 | 3A 11 00 10 */	addi r16, r17, 0x10
.L_81403D9C:
/* 81403D9C | 7E 11 83 78 */	mr r17, r16
/* 81403DA0 | 7E 03 83 78 */	mr r3, r16
/* 81403DA4 | 38 80 00 00 */	li r4, 0x0
/* 81403DA8 | 38 A0 00 04 */	li r5, 0x4
/* 81403DAC | 4B F2 C5 89 */	bl memset
/* 81403DB0 | 38 60 00 03 */	li r3, 0x3
/* 81403DB4 | 48 0A FD C5 */	bl SOHtoNs
/* 81403DB8 | B0 70 00 00 */	sth r3, 0x0(r16)
/* 81403DBC | 38 60 00 07 */	li r3, 0x7
/* 81403DC0 | 48 0A FD B9 */	bl SOHtoNs
/* 81403DC4 | B0 70 00 02 */	sth r3, 0x2(r16)
/* 81403DC8 | 38 70 00 04 */	addi r3, r16, 0x4
/* 81403DCC | 38 80 00 00 */	li r4, 0x0
/* 81403DD0 | 38 A0 00 0C */	li r5, 0xc
/* 81403DD4 | 4B F2 C5 61 */	bl memset
/* 81403DD8 | 38 70 00 04 */	addi r3, r16, 0x4
/* 81403DDC | 38 81 00 38 */	addi r4, r1, 0x38
/* 81403DE0 | 38 A0 00 07 */	li r5, 0x7
/* 81403DE4 | 4B F2 C4 4D */	bl memcpy
/* 81403DE8 | 80 0D AC 84 */	lwz r0, lbl_81698CC4@sda21(r0)
/* 81403DEC | 3A 10 00 10 */	addi r16, r16, 0x10
/* 81403DF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81403DF4 | 41 82 00 54 */	beq .L_81403E48
/* 81403DF8 | 3A 11 00 10 */	addi r16, r17, 0x10
/* 81403DFC | 38 80 00 00 */	li r4, 0x0
/* 81403E00 | 7E 03 83 78 */	mr r3, r16
/* 81403E04 | 38 A0 00 04 */	li r5, 0x4
/* 81403E08 | 4B F2 C5 2D */	bl memset
/* 81403E0C | 38 60 00 04 */	li r3, 0x4
/* 81403E10 | 48 0A FD 69 */	bl SOHtoNs
/* 81403E14 | B0 70 00 00 */	sth r3, 0x0(r16)
/* 81403E18 | 38 60 00 06 */	li r3, 0x6
/* 81403E1C | 48 0A FD 5D */	bl SOHtoNs
/* 81403E20 | B0 70 00 02 */	sth r3, 0x2(r16)
/* 81403E24 | 38 71 00 14 */	addi r3, r17, 0x14
/* 81403E28 | 38 80 00 00 */	li r4, 0x0
/* 81403E2C | 38 A0 00 0C */	li r5, 0xc
/* 81403E30 | 4B F2 C5 05 */	bl memset
/* 81403E34 | 38 71 00 14 */	addi r3, r17, 0x14
/* 81403E38 | 38 8D AC 88 */	li r4, lbl_81698CC8@sda21
/* 81403E3C | 38 A0 00 06 */	li r5, 0x6
/* 81403E40 | 4B F2 C3 F1 */	bl memcpy
/* 81403E44 | 3A 11 00 20 */	addi r16, r17, 0x20
.L_81403E48:
/* 81403E48 | 80 0D 92 00 */	lwz r0, lbl_81697240@sda21(r0)
/* 81403E4C | 38 72 0C 98 */	addi r3, r18, 0xc98
/* 81403E50 | 38 B2 14 98 */	addi r5, r18, 0x1498
/* 81403E54 | 38 80 00 02 */	li r4, 0x2
/* 81403E58 | 7C C0 80 50 */	subf r6, r0, r16
/* 81403E5C | 38 E0 00 00 */	li r7, 0x0
/* 81403E60 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81403E64 | 4B FF EF DD */	bl ATERM_81402E40
/* 81403E68 | 90 6D AC 78 */	stw r3, lbl_81698CB8@sda21(r0)
/* 81403E6C | 38 0E E6 01 */	subi r0, r14, 0x19ff
/* 81403E70 | 7C 70 1B 78 */	mr r16, r3
/* 81403E74 | 9A C1 00 30 */	stb r22, 0x30(r1)
/* 81403E78 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81403E7C | 9A E1 00 31 */	stb r23, 0x31(r1)
/* 81403E80 | 92 A1 00 34 */	stw r21, 0x34(r1)
/* 81403E84 | 48 0A FC F5 */	bl SOHtoNs
/* 81403E88 | B0 61 00 32 */	sth r3, 0x32(r1)
/* 81403E8C | 7F C3 F3 78 */	mr r3, r30
/* 81403E90 | 7E 05 83 78 */	mr r5, r16
/* 81403E94 | 38 92 0C 98 */	addi r4, r18, 0xc98
/* 81403E98 | 38 E1 00 30 */	addi r7, r1, 0x30
/* 81403E9C | 38 C0 00 00 */	li r6, 0x0
/* 81403EA0 | 48 0A F6 9D */	bl SOSendTo
/* 81403EA4 | 48 13 1D DD */	bl OSGetTime
/* 81403EA8 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403EAC | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403EB0 | 38 A0 00 00 */	li r5, 0x0
/* 81403EB4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403EB8 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403EBC | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403EC0 | 48 1F 57 51 */	bl __div2i
/* 81403EC4 | 38 00 00 06 */	li r0, 0x6
/* 81403EC8 | 7C 9C 23 78 */	mr r28, r4
/* 81403ECC | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81403ED0 | 48 00 08 84 */	b .L_81404754
.L_81403ED4:
/* 81403ED4 | 48 13 1D AD */	bl OSGetTime
/* 81403ED8 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81403EDC | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81403EE0 | 38 A0 00 00 */	li r5, 0x0
/* 81403EE4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81403EE8 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81403EEC | 54 06 D1 BE */	srwi r6, r0, 6
/* 81403EF0 | 48 1F 57 21 */	bl __div2i
/* 81403EF4 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81403EF8 | 7C 04 00 40 */	cmplw r4, r0
/* 81403EFC | 41 80 00 18 */	blt .L_81403F14
/* 81403F00 | 7F C3 F3 78 */	mr r3, r30
/* 81403F04 | 48 0A F2 59 */	bl SOClose
/* 81403F08 | 3B A0 FF FC */	li r29, -0x4
/* 81403F0C | 3B 40 00 01 */	li r26, 0x1
/* 81403F10 | 48 00 08 44 */	b .L_81404754
.L_81403F14:
/* 81403F14 | 7F C3 F3 78 */	mr r3, r30
/* 81403F18 | 38 92 0C 98 */	addi r4, r18, 0xc98
/* 81403F1C | 38 E1 00 40 */	addi r7, r1, 0x40
/* 81403F20 | 38 A0 08 00 */	li r5, 0x800
/* 81403F24 | 38 C0 00 04 */	li r6, 0x4
/* 81403F28 | 48 0A F5 A5 */	bl SORecvFrom
/* 81403F2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81403F30 | 40 81 03 78 */	ble .L_814042A8
/* 81403F34 | A0 6F 00 00 */	lhz r3, 0x0(r15)
/* 81403F38 | 3A 20 00 00 */	li r17, 0x0
/* 81403F3C | 48 0A FC 31 */	bl SONtoHs
/* 81403F40 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81403F44 | A0 6F 00 02 */	lhz r3, 0x2(r15)
/* 81403F48 | 90 01 01 28 */	stw r0, 0x128(r1)
/* 81403F4C | 48 0A FC 21 */	bl SONtoHs
/* 81403F50 | 54 70 04 3E */	clrlwi r16, r3, 16
/* 81403F54 | 7D E4 7B 78 */	mr r4, r15
/* 81403F58 | 7C 6F 82 14 */	add r3, r15, r16
/* 81403F5C | 38 63 00 06 */	addi r3, r3, 0x6
/* 81403F60 | 7C 8F 18 40 */	cmplw cr1, r15, r3
/* 81403F64 | 40 84 00 98 */	bge cr1, .L_81403FFC
/* 81403F68 | 7C 0F 18 50 */	subf r0, r15, r3
/* 81403F6C | 38 A3 FF F8 */	subi r5, r3, 0x8
/* 81403F70 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81403F74 | 40 81 00 68 */	ble .L_81403FDC
/* 81403F78 | 41 85 00 64 */	bgt cr1, .L_81403FDC
/* 81403F7C | 38 05 00 07 */	addi r0, r5, 0x7
/* 81403F80 | 7C 0F 00 50 */	subf r0, r15, r0
/* 81403F84 | 54 00 E8 FE */	srwi r0, r0, 3
/* 81403F88 | 7C 09 03 A6 */	mtctr r0
/* 81403F8C | 7C 0F 28 40 */	cmplw r15, r5
/* 81403F90 | 40 80 00 4C */	bge .L_81403FDC
.L_81403F94:
/* 81403F94 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 81403F98 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81403F9C | 7E 31 2A 14 */	add r17, r17, r5
/* 81403FA0 | 88 A4 00 02 */	lbz r5, 0x2(r4)
/* 81403FA4 | 7E 31 02 14 */	add r17, r17, r0
/* 81403FA8 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81403FAC | 7E 31 2A 14 */	add r17, r17, r5
/* 81403FB0 | 88 A4 00 04 */	lbz r5, 0x4(r4)
/* 81403FB4 | 7E 31 02 14 */	add r17, r17, r0
/* 81403FB8 | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 81403FBC | 7E 31 2A 14 */	add r17, r17, r5
/* 81403FC0 | 88 A4 00 06 */	lbz r5, 0x6(r4)
/* 81403FC4 | 7E 31 02 14 */	add r17, r17, r0
/* 81403FC8 | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 81403FCC | 7E 31 2A 14 */	add r17, r17, r5
/* 81403FD0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81403FD4 | 7E 31 02 14 */	add r17, r17, r0
/* 81403FD8 | 42 00 FF BC */	bdnz .L_81403F94
.L_81403FDC:
/* 81403FDC | 7C 04 18 50 */	subf r0, r4, r3
/* 81403FE0 | 7C 09 03 A6 */	mtctr r0
/* 81403FE4 | 7C 04 18 40 */	cmplw r4, r3
/* 81403FE8 | 40 80 00 14 */	bge .L_81403FFC
.L_81403FEC:
/* 81403FEC | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81403FF0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81403FF4 | 7E 31 02 14 */	add r17, r17, r0
/* 81403FF8 | 42 00 FF F4 */	bdnz .L_81403FEC
.L_81403FFC:
/* 81403FFC | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81404000 | 48 0A FB 6D */	bl SONtoHs
/* 81404004 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81404008 | 56 20 04 3E */	clrlwi r0, r17, 16
/* 8140400C | 7C 00 18 40 */	cmplw r0, r3
/* 81404010 | 38 8F 00 06 */	addi r4, r15, 0x6
/* 81404014 | 41 82 00 08 */	beq .L_8140401C
/* 81404018 | 38 80 00 00 */	li r4, 0x0
.L_8140401C:
/* 8140401C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81404020 | 40 82 00 0C */	bne .L_8140402C
/* 81404024 | 3A 00 00 00 */	li r16, 0x0
/* 81404028 | 48 00 00 48 */	b .L_81404070
.L_8140402C:
/* 8140402C | 80 01 01 28 */	lwz r0, 0x128(r1)
/* 81404030 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81404034 | 41 82 00 0C */	beq .L_81404040
/* 81404038 | 3A 00 00 00 */	li r16, 0x0
/* 8140403C | 48 00 00 34 */	b .L_81404070
.L_81404040:
/* 81404040 | 34 12 0C 88 */	addic. r0, r18, 0xc88
/* 81404044 | 41 82 00 20 */	beq .L_81404064
/* 81404048 | 7E 05 83 78 */	mr r5, r16
/* 8140404C | 7C 06 03 78 */	mr r6, r0
/* 81404050 | 38 72 14 98 */	addi r3, r18, 0x1498
/* 81404054 | 38 E0 00 10 */	li r7, 0x10
/* 81404058 | 48 00 09 C1 */	bl ATERM_81404A18
/* 8140405C | 3A 10 FF F8 */	subi r16, r16, 0x8
/* 81404060 | 48 00 00 10 */	b .L_81404070
.L_81404064:
/* 81404064 | 7E 05 83 78 */	mr r5, r16
/* 81404068 | 38 72 14 98 */	addi r3, r18, 0x1498
/* 8140406C | 4B F2 C1 C5 */	bl memcpy
.L_81404070:
/* 81404070 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 81404074 | 41 82 02 34 */	beq .L_814042A8
/* 81404078 | A0 72 14 98 */	lhz r3, 0x1498(r18)
/* 8140407C | 3A 1F 00 08 */	addi r16, r31, 0x8
/* 81404080 | 48 0A FA ED */	bl SONtoHs
/* 81404084 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81404088 | 7C 10 02 14 */	add r0, r16, r0
/* 8140408C | 7C 10 00 40 */	cmplw r16, r0
/* 81404090 | 41 80 00 0C */	blt .L_8140409C
/* 81404094 | 3A 00 00 00 */	li r16, 0x0
/* 81404098 | 48 00 00 20 */	b .L_814040B8
.L_8140409C:
/* 8140409C | A0 70 00 00 */	lhz r3, 0x0(r16)
/* 814040A0 | 48 0A FA CD */	bl SONtoHs
/* 814040A4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814040A8 | A0 70 00 02 */	lhz r3, 0x2(r16)
/* 814040AC | 90 01 01 20 */	stw r0, 0x120(r1)
/* 814040B0 | 48 0A FA BD */	bl SONtoHs
/* 814040B4 | 3A 10 00 04 */	addi r16, r16, 0x4
.L_814040B8:
/* 814040B8 | 80 01 01 20 */	lwz r0, 0x120(r1)
/* 814040BC | 2C 00 01 01 */	cmpwi r0, 0x101
/* 814040C0 | 40 82 06 94 */	bne .L_81404754
/* 814040C4 | 48 13 1B BD */	bl OSGetTime
/* 814040C8 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 814040CC | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 814040D0 | 38 A0 00 00 */	li r5, 0x0
/* 814040D4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814040D8 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 814040DC | 54 06 D1 BE */	srwi r6, r0, 6
/* 814040E0 | 48 1F 55 31 */	bl __div2i
/* 814040E4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814040E8 | 7E 04 83 78 */	mr r4, r16
/* 814040EC | 38 72 1C 98 */	addi r3, r18, 0x1c98
/* 814040F0 | 38 A0 00 08 */	li r5, 0x8
/* 814040F4 | 4B F2 C1 3D */	bl memcpy
/* 814040F8 | 3C 60 67 45 */	lis r3, 0x6745
/* 814040FC | 93 01 00 DC */	stw r24, 0xdc(r1)
/* 81404100 | 39 03 23 01 */	addi r8, r3, 0x2301
/* 81404104 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81404108 | 3C 60 EF CE */	lis r3, 0xefce
/* 8140410C | 93 01 00 D8 */	stw r24, 0xd8(r1)
/* 81404110 | 38 E3 AB 89 */	subi r7, r3, 0x5477
/* 81404114 | 38 A0 00 04 */	li r5, 0x4
/* 81404118 | 3C 60 98 BB */	lis r3, 0x98bb
/* 8140411C | 91 01 00 C8 */	stw r8, 0xc8(r1)
/* 81404120 | 38 C3 DC FE */	subi r6, r3, 0x2302
/* 81404124 | 3C 60 10 32 */	lis r3, 0x1032
/* 81404128 | 90 E1 00 CC */	stw r7, 0xcc(r1)
/* 8140412C | 38 03 54 76 */	addi r0, r3, 0x5476
/* 81404130 | 90 C1 00 D0 */	stw r6, 0xd0(r1)
/* 81404134 | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 81404138 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8140413C | 48 00 19 91 */	bl ATERM_81405ACC
/* 81404140 | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 81404144 | 3C 80 81 65 */	lis r4, lbl_81657E90@ha
/* 81404148 | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 8140414C | 55 09 EE BE */	extrwi r9, r8, 6, 23
/* 81404150 | 55 07 C6 3E */	extrwi r7, r8, 8, 16
/* 81404154 | 55 06 86 3E */	extrwi r6, r8, 8, 8
/* 81404158 | 55 00 46 3E */	srwi r0, r8, 24
/* 8140415C | 99 01 00 28 */	stb r8, 0x28(r1)
/* 81404160 | 28 09 00 38 */	cmplwi r9, 0x38
/* 81404164 | 81 01 00 DC */	lwz r8, 0xdc(r1)
/* 81404168 | 38 84 7E 90 */	addi r4, r4, lbl_81657E90@l
/* 8140416C | 98 E1 00 29 */	stb r7, 0x29(r1)
/* 81404170 | 20 A9 00 78 */	subfic r5, r9, 0x78
/* 81404174 | 55 07 C6 3E */	extrwi r7, r8, 8, 16
/* 81404178 | 98 C1 00 2A */	stb r6, 0x2a(r1)
/* 8140417C | 55 06 86 3E */	extrwi r6, r8, 8, 8
/* 81404180 | 98 01 00 2B */	stb r0, 0x2b(r1)
/* 81404184 | 55 00 46 3E */	srwi r0, r8, 24
/* 81404188 | 99 01 00 2C */	stb r8, 0x2c(r1)
/* 8140418C | 98 E1 00 2D */	stb r7, 0x2d(r1)
/* 81404190 | 98 C1 00 2E */	stb r6, 0x2e(r1)
/* 81404194 | 98 01 00 2F */	stb r0, 0x2f(r1)
/* 81404198 | 40 80 00 08 */	bge .L_814041A0
/* 8140419C | 20 A9 00 38 */	subfic r5, r9, 0x38
.L_814041A0:
/* 814041A0 | 48 00 19 2D */	bl ATERM_81405ACC
/* 814041A4 | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 814041A8 | 38 81 00 28 */	addi r4, r1, 0x28
/* 814041AC | 38 A0 00 08 */	li r5, 0x8
/* 814041B0 | 48 00 19 1D */	bl ATERM_81405ACC
/* 814041B4 | 80 A1 00 C8 */	lwz r5, 0xc8(r1)
/* 814041B8 | 38 C1 00 C8 */	addi r6, r1, 0xc8
/* 814041BC | 98 B9 00 08 */	stb r5, 0x8(r25)
/* 814041C0 | 54 A4 C6 3E */	extrwi r4, r5, 8, 16
/* 814041C4 | 54 A3 86 3E */	extrwi r3, r5, 8, 8
/* 814041C8 | 54 A0 46 3E */	srwi r0, r5, 24
/* 814041CC | 98 99 00 09 */	stb r4, 0x9(r25)
/* 814041D0 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 814041D4 | 98 79 00 0A */	stb r3, 0xa(r25)
/* 814041D8 | 54 A4 C6 3E */	extrwi r4, r5, 8, 16
/* 814041DC | 54 A3 86 3E */	extrwi r3, r5, 8, 8
/* 814041E0 | 98 19 00 0B */	stb r0, 0xb(r25)
/* 814041E4 | 54 A0 46 3E */	srwi r0, r5, 24
/* 814041E8 | 98 B9 00 0C */	stb r5, 0xc(r25)
/* 814041EC | 80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 814041F0 | 98 99 00 0D */	stb r4, 0xd(r25)
/* 814041F4 | 54 A4 C6 3E */	extrwi r4, r5, 8, 16
/* 814041F8 | 98 79 00 0E */	stb r3, 0xe(r25)
/* 814041FC | 54 A3 86 3E */	extrwi r3, r5, 8, 8
/* 81404200 | 98 19 00 0F */	stb r0, 0xf(r25)
/* 81404204 | 54 A0 46 3E */	srwi r0, r5, 24
/* 81404208 | 98 B9 00 10 */	stb r5, 0x10(r25)
/* 8140420C | 80 A1 00 D4 */	lwz r5, 0xd4(r1)
/* 81404210 | 98 99 00 11 */	stb r4, 0x11(r25)
/* 81404214 | 54 A4 C6 3E */	extrwi r4, r5, 8, 16
/* 81404218 | 98 79 00 12 */	stb r3, 0x12(r25)
/* 8140421C | 54 A3 86 3E */	extrwi r3, r5, 8, 8
/* 81404220 | 98 19 00 13 */	stb r0, 0x13(r25)
/* 81404224 | 54 A0 46 3E */	srwi r0, r5, 24
/* 81404228 | 98 B9 00 14 */	stb r5, 0x14(r25)
/* 8140422C | 98 99 00 15 */	stb r4, 0x15(r25)
/* 81404230 | 98 79 00 16 */	stb r3, 0x16(r25)
/* 81404234 | 98 19 00 17 */	stb r0, 0x17(r25)
/* 81404238 | 38 00 00 0B */	li r0, 0xb
/* 8140423C | 7C 09 03 A6 */	mtctr r0
.L_81404240:
/* 81404240 | 9B 06 00 00 */	stb r24, 0x0(r6)
/* 81404244 | 9B 06 00 01 */	stb r24, 0x1(r6)
/* 81404248 | 9B 06 00 02 */	stb r24, 0x2(r6)
/* 8140424C | 9B 06 00 03 */	stb r24, 0x3(r6)
/* 81404250 | 9B 06 00 04 */	stb r24, 0x4(r6)
/* 81404254 | 9B 06 00 05 */	stb r24, 0x5(r6)
/* 81404258 | 9B 06 00 06 */	stb r24, 0x6(r6)
/* 8140425C | 9B 06 00 07 */	stb r24, 0x7(r6)
/* 81404260 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81404264 | 42 00 FF DC */	bdnz .L_81404240
/* 81404268 | 38 00 00 07 */	li r0, 0x7
/* 8140426C | 80 8D AC 54 */	lwz r4, lbl_81698C94@sda21(r0)
/* 81404270 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81404274 | 38 00 00 05 */	li r0, 0x5
/* 81404278 | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 8140427C | 38 61 00 50 */	addi r3, r1, 0x50
/* 81404280 | 90 0D AC 50 */	stw r0, lbl_81698C90@sda21(r0)
/* 81404284 | 38 00 00 05 */	li r0, 0x5
/* 81404288 | 3B 60 00 00 */	li r27, 0x0
/* 8140428C | 92 AD 91 D8 */	stw r21, lbl_81697218@sda21(r0)
/* 81404290 | 90 01 00 50 */	stw r0, 0x50(r1)
/* 81404294 | 92 A1 00 54 */	stw r21, 0x54(r1)
/* 81404298 | 90 81 00 58 */	stw r4, 0x58(r1)
/* 8140429C | 7D 89 03 A6 */	mtctr r12
/* 814042A0 | 4E 80 04 21 */	bctrl
/* 814042A4 | 48 00 04 B0 */	b .L_81404754
.L_814042A8:
/* 814042A8 | 48 13 19 D9 */	bl OSGetTime
/* 814042AC | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 814042B0 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 814042B4 | 38 A0 00 00 */	li r5, 0x0
/* 814042B8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814042BC | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 814042C0 | 54 06 D1 BE */	srwi r6, r0, 6
/* 814042C4 | 48 1F 53 4D */	bl __div2i
/* 814042C8 | 38 1C 07 D0 */	addi r0, r28, 0x7d0
/* 814042CC | 7C 04 00 40 */	cmplw r4, r0
/* 814042D0 | 41 80 04 84 */	blt .L_81404754
/* 814042D4 | 38 00 00 05 */	li r0, 0x5
/* 814042D8 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 814042DC | 48 00 04 78 */	b .L_81404754
.L_814042E0:
/* 814042E0 | 7F E3 FB 78 */	mr r3, r31
/* 814042E4 | 38 80 00 00 */	li r4, 0x0
/* 814042E8 | 38 A0 00 08 */	li r5, 0x8
/* 814042EC | 4B F2 C0 49 */	bl memset
/* 814042F0 | 3A 1F 00 08 */	addi r16, r31, 0x8
/* 814042F4 | 38 80 00 00 */	li r4, 0x0
/* 814042F8 | 7E 03 83 78 */	mr r3, r16
/* 814042FC | 38 A0 00 04 */	li r5, 0x4
/* 81404300 | 4B F2 C0 35 */	bl memset
/* 81404304 | 38 60 01 02 */	li r3, 0x102
/* 81404308 | 48 0A F8 71 */	bl SOHtoNs
/* 8140430C | B0 70 00 00 */	sth r3, 0x0(r16)
/* 81404310 | 38 60 00 08 */	li r3, 0x8
/* 81404314 | 48 0A F8 65 */	bl SOHtoNs
/* 81404318 | B0 70 00 02 */	sth r3, 0x2(r16)
/* 8140431C | 38 70 00 04 */	addi r3, r16, 0x4
/* 81404320 | 38 80 00 00 */	li r4, 0x0
/* 81404324 | 38 A0 00 0C */	li r5, 0xc
/* 81404328 | 4B F2 C0 0D */	bl memset
/* 8140432C | 38 70 00 04 */	addi r3, r16, 0x4
/* 81404330 | 38 99 00 08 */	addi r4, r25, 0x8
/* 81404334 | 38 A0 00 08 */	li r5, 0x8
/* 81404338 | 4B F2 BE F9 */	bl memcpy
/* 8140433C | 38 10 00 10 */	addi r0, r16, 0x10
/* 81404340 | 7F E5 FB 78 */	mr r5, r31
/* 81404344 | 7C DF 00 50 */	subf r6, r31, r0
/* 81404348 | 38 72 0C 98 */	addi r3, r18, 0xc98
/* 8140434C | 38 06 FF F8 */	subi r0, r6, 0x8
/* 81404350 | 90 CD AC 7C */	stw r6, lbl_81698CBC@sda21(r0)
/* 81404354 | 38 F2 0C 88 */	addi r7, r18, 0xc88
/* 81404358 | 38 80 00 04 */	li r4, 0x4
/* 8140435C | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 81404360 | 4B FF EA E1 */	bl ATERM_81402E40
/* 81404364 | 90 6D AC 78 */	stw r3, lbl_81698CB8@sda21(r0)
/* 81404368 | 38 0E E6 01 */	subi r0, r14, 0x19ff
/* 8140436C | 7C 70 1B 78 */	mr r16, r3
/* 81404370 | 9A C1 00 20 */	stb r22, 0x20(r1)
/* 81404374 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81404378 | 9A E1 00 21 */	stb r23, 0x21(r1)
/* 8140437C | 92 A1 00 24 */	stw r21, 0x24(r1)
/* 81404380 | 48 0A F7 F9 */	bl SOHtoNs
/* 81404384 | B0 61 00 22 */	sth r3, 0x22(r1)
/* 81404388 | 7F C3 F3 78 */	mr r3, r30
/* 8140438C | 7E 05 83 78 */	mr r5, r16
/* 81404390 | 38 92 0C 98 */	addi r4, r18, 0xc98
/* 81404394 | 38 E1 00 20 */	addi r7, r1, 0x20
/* 81404398 | 38 C0 00 00 */	li r6, 0x0
/* 8140439C | 48 0A F1 A1 */	bl SOSendTo
/* 814043A0 | 48 13 18 E1 */	bl OSGetTime
/* 814043A4 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 814043A8 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 814043AC | 38 A0 00 00 */	li r5, 0x0
/* 814043B0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814043B4 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 814043B8 | 54 06 D1 BE */	srwi r6, r0, 6
/* 814043BC | 48 1F 52 55 */	bl __div2i
/* 814043C0 | 7C 9C 23 78 */	mr r28, r4
/* 814043C4 | 38 72 09 48 */	addi r3, r18, 0x948
/* 814043C8 | 38 80 00 00 */	li r4, 0x0
/* 814043CC | 38 A0 02 54 */	li r5, 0x254
/* 814043D0 | 4B F2 BF 65 */	bl memset
/* 814043D4 | 92 CD AC 90 */	stw r22, lbl_81698CD0@sda21(r0)
/* 814043D8 | 48 00 03 7C */	b .L_81404754
.L_814043DC:
/* 814043DC | 7F C3 F3 78 */	mr r3, r30
/* 814043E0 | 38 92 0C 98 */	addi r4, r18, 0xc98
/* 814043E4 | 38 E1 00 40 */	addi r7, r1, 0x40
/* 814043E8 | 38 A0 08 00 */	li r5, 0x800
/* 814043EC | 38 C0 00 04 */	li r6, 0x4
/* 814043F0 | 48 0A F0 DD */	bl SORecvFrom
/* 814043F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814043F8 | 40 81 01 88 */	ble .L_81404580
/* 814043FC | A0 6F 00 00 */	lhz r3, 0x0(r15)
/* 81404400 | 3A 00 00 00 */	li r16, 0x0
/* 81404404 | 48 0A F7 69 */	bl SONtoHs
/* 81404408 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8140440C | A0 6F 00 02 */	lhz r3, 0x2(r15)
/* 81404410 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 81404414 | 48 0A F7 59 */	bl SONtoHs
/* 81404418 | 54 71 04 3E */	clrlwi r17, r3, 16
/* 8140441C | 7D E4 7B 78 */	mr r4, r15
/* 81404420 | 7C 6F 8A 14 */	add r3, r15, r17
/* 81404424 | 38 63 00 06 */	addi r3, r3, 0x6
/* 81404428 | 7C 8F 18 40 */	cmplw cr1, r15, r3
/* 8140442C | 40 84 00 98 */	bge cr1, .L_814044C4
/* 81404430 | 7C 0F 18 50 */	subf r0, r15, r3
/* 81404434 | 38 A3 FF F8 */	subi r5, r3, 0x8
/* 81404438 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8140443C | 40 81 00 68 */	ble .L_814044A4
/* 81404440 | 41 85 00 64 */	bgt cr1, .L_814044A4
/* 81404444 | 38 05 00 07 */	addi r0, r5, 0x7
/* 81404448 | 7C 0F 00 50 */	subf r0, r15, r0
/* 8140444C | 54 00 E8 FE */	srwi r0, r0, 3
/* 81404450 | 7C 09 03 A6 */	mtctr r0
/* 81404454 | 7C 0F 28 40 */	cmplw r15, r5
/* 81404458 | 40 80 00 4C */	bge .L_814044A4
.L_8140445C:
/* 8140445C | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 81404460 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81404464 | 7E 10 2A 14 */	add r16, r16, r5
/* 81404468 | 88 A4 00 02 */	lbz r5, 0x2(r4)
/* 8140446C | 7E 10 02 14 */	add r16, r16, r0
/* 81404470 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81404474 | 7E 10 2A 14 */	add r16, r16, r5
/* 81404478 | 88 A4 00 04 */	lbz r5, 0x4(r4)
/* 8140447C | 7E 10 02 14 */	add r16, r16, r0
/* 81404480 | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 81404484 | 7E 10 2A 14 */	add r16, r16, r5
/* 81404488 | 88 A4 00 06 */	lbz r5, 0x6(r4)
/* 8140448C | 7E 10 02 14 */	add r16, r16, r0
/* 81404490 | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 81404494 | 7E 10 2A 14 */	add r16, r16, r5
/* 81404498 | 38 84 00 08 */	addi r4, r4, 0x8
/* 8140449C | 7E 10 02 14 */	add r16, r16, r0
/* 814044A0 | 42 00 FF BC */	bdnz .L_8140445C
.L_814044A4:
/* 814044A4 | 7C 04 18 50 */	subf r0, r4, r3
/* 814044A8 | 7C 09 03 A6 */	mtctr r0
/* 814044AC | 7C 04 18 40 */	cmplw r4, r3
/* 814044B0 | 40 80 00 14 */	bge .L_814044C4
.L_814044B4:
/* 814044B4 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814044B8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814044BC | 7E 10 02 14 */	add r16, r16, r0
/* 814044C0 | 42 00 FF F4 */	bdnz .L_814044B4
.L_814044C4:
/* 814044C4 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814044C8 | 48 0A F6 A5 */	bl SONtoHs
/* 814044CC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814044D0 | 56 00 04 3E */	clrlwi r0, r16, 16
/* 814044D4 | 7C 00 18 40 */	cmplw r0, r3
/* 814044D8 | 38 8F 00 06 */	addi r4, r15, 0x6
/* 814044DC | 41 82 00 08 */	beq .L_814044E4
/* 814044E0 | 38 80 00 00 */	li r4, 0x0
.L_814044E4:
/* 814044E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814044E8 | 40 82 00 0C */	bne .L_814044F4
/* 814044EC | 3A 20 00 00 */	li r17, 0x0
/* 814044F0 | 48 00 00 48 */	b .L_81404538
.L_814044F4:
/* 814044F4 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 814044F8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814044FC | 41 82 00 0C */	beq .L_81404508
/* 81404500 | 3A 20 00 00 */	li r17, 0x0
/* 81404504 | 48 00 00 34 */	b .L_81404538
.L_81404508:
/* 81404508 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8140450C | 41 82 00 20 */	beq .L_8140452C
/* 81404510 | 7E 25 8B 78 */	mr r5, r17
/* 81404514 | 7F 26 CB 78 */	mr r6, r25
/* 81404518 | 38 72 14 98 */	addi r3, r18, 0x1498
/* 8140451C | 38 E0 00 10 */	li r7, 0x10
/* 81404520 | 48 00 04 F9 */	bl ATERM_81404A18
/* 81404524 | 3A 31 FF F8 */	subi r17, r17, 0x8
/* 81404528 | 48 00 00 10 */	b .L_81404538
.L_8140452C:
/* 8140452C | 7E 25 8B 78 */	mr r5, r17
/* 81404530 | 38 72 14 98 */	addi r3, r18, 0x1498
/* 81404534 | 4B F2 BC FD */	bl memcpy
.L_81404538:
/* 81404538 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 8140453C | 92 2D AC 7C */	stw r17, lbl_81698CBC@sda21(r0)
/* 81404540 | 41 82 00 40 */	beq .L_81404580
/* 81404544 | 38 72 14 98 */	addi r3, r18, 0x1498
/* 81404548 | 4B FF EE A9 */	bl ATERM_814033F0
/* 8140454C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81404550 | 41 82 00 30 */	beq .L_81404580
/* 81404554 | 38 72 09 48 */	addi r3, r18, 0x948
/* 81404558 | 38 00 00 09 */	li r0, 0x9
/* 8140455C | 88 63 01 00 */	lbz r3, 0x100(r3)
/* 81404560 | 3B 60 00 00 */	li r27, 0x0
/* 81404564 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81404568 | 7C 63 07 74 */	extsb r3, r3
/* 8140456C | 7C 03 00 D0 */	neg r0, r3
/* 81404570 | 7C 00 1B 78 */	or r0, r0, r3
/* 81404574 | 54 00 0F FE */	srwi r0, r0, 31
/* 81404578 | 98 0D AC 80 */	stb r0, lbl_81698CC0@sda21(r0)
/* 8140457C | 48 00 01 D8 */	b .L_81404754
.L_81404580:
/* 81404580 | 48 13 17 01 */	bl OSGetTime
/* 81404584 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81404588 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 8140458C | 38 A0 00 00 */	li r5, 0x0
/* 81404590 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81404594 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81404598 | 54 06 D1 BE */	srwi r6, r0, 6
/* 8140459C | 48 1F 50 75 */	bl __div2i
/* 814045A0 | 38 1C 03 E8 */	addi r0, r28, 0x3e8
/* 814045A4 | 7C 04 00 40 */	cmplw r4, r0
/* 814045A8 | 41 80 01 AC */	blt .L_81404754
/* 814045AC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814045B0 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 814045B4 | 41 80 00 18 */	blt .L_814045CC
/* 814045B8 | 7F C3 F3 78 */	mr r3, r30
/* 814045BC | 48 0A EB A1 */	bl SOClose
/* 814045C0 | 3B A0 FF FE */	li r29, -0x2
/* 814045C4 | 3B 40 00 01 */	li r26, 0x1
/* 814045C8 | 48 00 01 8C */	b .L_81404754
.L_814045CC:
/* 814045CC | 38 00 00 07 */	li r0, 0x7
/* 814045D0 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 814045D4 | 48 00 01 80 */	b .L_81404754
.L_814045D8:
/* 814045D8 | 7F E3 FB 78 */	mr r3, r31
/* 814045DC | 38 80 00 00 */	li r4, 0x0
/* 814045E0 | 38 A0 00 08 */	li r5, 0x8
/* 814045E4 | 4B F2 BD 51 */	bl memset
/* 814045E8 | 3A 1F 00 08 */	addi r16, r31, 0x8
/* 814045EC | 38 80 00 00 */	li r4, 0x0
/* 814045F0 | 7E 03 83 78 */	mr r3, r16
/* 814045F4 | 38 A0 00 04 */	li r5, 0x4
/* 814045F8 | 4B F2 BD 3D */	bl memset
/* 814045FC | 38 60 03 01 */	li r3, 0x301
/* 81404600 | 48 0A F5 79 */	bl SOHtoNs
/* 81404604 | B0 70 00 00 */	sth r3, 0x0(r16)
/* 81404608 | 38 60 00 01 */	li r3, 0x1
/* 8140460C | 48 0A F5 6D */	bl SOHtoNs
/* 81404610 | B0 70 00 02 */	sth r3, 0x2(r16)
/* 81404614 | 38 70 00 04 */	addi r3, r16, 0x4
/* 81404618 | 38 80 00 00 */	li r4, 0x0
/* 8140461C | 38 A0 00 04 */	li r5, 0x4
/* 81404620 | 4B F2 BD 15 */	bl memset
/* 81404624 | 38 70 00 04 */	addi r3, r16, 0x4
/* 81404628 | 38 8D AC 80 */	li r4, lbl_81698CC0@sda21
/* 8140462C | 38 A0 00 01 */	li r5, 0x1
/* 81404630 | 4B F2 BC 01 */	bl memcpy
/* 81404634 | 38 10 00 08 */	addi r0, r16, 0x8
/* 81404638 | 7F E5 FB 78 */	mr r5, r31
/* 8140463C | 7C DF 00 50 */	subf r6, r31, r0
/* 81404640 | 38 72 0C 98 */	addi r3, r18, 0xc98
/* 81404644 | 38 06 FF F8 */	subi r0, r6, 0x8
/* 81404648 | 90 CD AC 7C */	stw r6, lbl_81698CBC@sda21(r0)
/* 8140464C | 38 F2 1C 98 */	addi r7, r18, 0x1c98
/* 81404650 | 38 80 00 06 */	li r4, 0x6
/* 81404654 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 81404658 | 4B FF E7 E9 */	bl ATERM_81402E40
/* 8140465C | 90 6D AC 78 */	stw r3, lbl_81698CB8@sda21(r0)
/* 81404660 | 48 08 E4 5D */	bl NCDGetLinkStatus
/* 81404664 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81404668 | 41 82 00 34 */	beq .L_8140469C
/* 8140466C | 48 13 16 15 */	bl OSGetTime
/* 81404670 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 81404674 | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81404678 | 38 A0 00 00 */	li r5, 0x0
/* 8140467C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81404680 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81404684 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81404688 | 48 1F 4F 89 */	bl __div2i
/* 8140468C | 3B 60 00 0A */	li r27, 0xa
/* 81404690 | 3B 84 03 E8 */	addi r28, r4, 0x3e8
/* 81404694 | 93 6D AC 90 */	stw r27, lbl_81698CD0@sda21(r0)
/* 81404698 | 48 00 00 BC */	b .L_81404754
.L_8140469C:
/* 8140469C | 38 0E E6 01 */	subi r0, r14, 0x19ff
/* 814046A0 | 9A C1 00 18 */	stb r22, 0x18(r1)
/* 814046A4 | 82 0D AC 78 */	lwz r16, lbl_81698CB8@sda21(r0)
/* 814046A8 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814046AC | 9A E1 00 19 */	stb r23, 0x19(r1)
/* 814046B0 | 92 A1 00 1C */	stw r21, 0x1c(r1)
/* 814046B4 | 48 0A F4 C5 */	bl SOHtoNs
/* 814046B8 | B0 61 00 1A */	sth r3, 0x1a(r1)
/* 814046BC | 7F C3 F3 78 */	mr r3, r30
/* 814046C0 | 7E 05 83 78 */	mr r5, r16
/* 814046C4 | 38 92 0C 98 */	addi r4, r18, 0xc98
/* 814046C8 | 38 E1 00 18 */	addi r7, r1, 0x18
/* 814046CC | 38 C0 00 00 */	li r6, 0x0
/* 814046D0 | 48 0A EE 6D */	bl SOSendTo
/* 814046D4 | 48 13 15 AD */	bl OSGetTime
/* 814046D8 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 814046DC | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 814046E0 | 38 A0 00 00 */	li r5, 0x0
/* 814046E4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814046E8 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 814046EC | 54 06 D1 BE */	srwi r6, r0, 6
/* 814046F0 | 48 1F 4F 21 */	bl __div2i
/* 814046F4 | 38 00 00 0A */	li r0, 0xa
/* 814046F8 | 7C 9C 23 78 */	mr r28, r4
/* 814046FC | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
/* 81404700 | 48 00 00 54 */	b .L_81404754
.L_81404704:
/* 81404704 | 48 13 15 7D */	bl OSGetTime
/* 81404708 | 80 13 00 F8 */	lwz r0, 0xf8(r19)
/* 8140470C | 38 D4 4D D3 */	addi r6, r20, 0x4dd3
/* 81404710 | 38 A0 00 00 */	li r5, 0x0
/* 81404714 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81404718 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 8140471C | 54 06 D1 BE */	srwi r6, r0, 6
/* 81404720 | 48 1F 4E F1 */	bl __div2i
/* 81404724 | 38 1C 03 E8 */	addi r0, r28, 0x3e8
/* 81404728 | 7C 04 00 40 */	cmplw r4, r0
/* 8140472C | 41 80 00 28 */	blt .L_81404754
/* 81404730 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81404734 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 81404738 | 41 80 00 14 */	blt .L_8140474C
/* 8140473C | 3B 40 00 01 */	li r26, 0x1
/* 81404740 | 4B FF EF 99 */	bl ATERM_814036D8
/* 81404744 | 7C 7D 1B 78 */	mr r29, r3
/* 81404748 | 48 00 00 0C */	b .L_81404754
.L_8140474C:
/* 8140474C | 38 00 00 09 */	li r0, 0x9
/* 81404750 | 90 0D AC 90 */	stw r0, lbl_81698CD0@sda21(r0)
.L_81404754:
/* 81404754 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81404758 | 40 82 00 10 */	bne .L_81404768
/* 8140475C | 80 0D AC 9C */	lwz r0, lbl_81698CDC@sda21(r0)
/* 81404760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81404764 | 41 82 F1 D0 */	beq .L_81403934
.L_81404768:
/* 81404768 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8140476C | 41 82 00 0C */	beq .L_81404778
/* 81404770 | 7F C3 F3 78 */	mr r3, r30
/* 81404774 | 48 0A E9 E9 */	bl SOClose
.L_81404778:
/* 81404778 | 80 0D AC 9C */	lwz r0, lbl_81698CDC@sda21(r0)
/* 8140477C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81404780 | 41 82 00 08 */	beq .L_81404788
/* 81404784 | 3B A0 FF F8 */	li r29, -0x8
.L_81404788:
/* 81404788 | 39 61 01 80 */	addi r11, r1, 0x180
/* 8140478C | 7F A3 EB 78 */	mr r3, r29
/* 81404790 | 48 1F 4D 49 */	bl _restgpr_14
/* 81404794 | 80 01 01 84 */	lwz r0, 0x184(r1)
/* 81404798 | 7C 08 03 A6 */	mtlr r0
/* 8140479C | 38 21 01 80 */	addi r1, r1, 0x180
/* 814047A0 | 4E 80 00 20 */	blr
.endfn ATERM_814038C8

# .text:0x6528 | 0x814047A4 | size: 0xA0
.fn ATERM_814047A4, global
/* 814047A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814047A8 | 7C 08 02 A6 */	mflr r0
/* 814047AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814047B0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814047B4 | 4B FF F1 15 */	bl ATERM_814038C8
/* 814047B8 | 80 0D AC 74 */	lwz r0, lbl_81698CB4@sda21(r0)
/* 814047BC | 7C 7F 1B 78 */	mr r31, r3
/* 814047C0 | 90 6D AC 54 */	stw r3, lbl_81698C94@sda21(r0)
/* 814047C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814047C8 | 41 82 00 0C */	beq .L_814047D4
/* 814047CC | 38 00 00 00 */	li r0, 0x0
/* 814047D0 | 90 0D AC 74 */	stw r0, lbl_81698CB4@sda21(r0)
.L_814047D4:
/* 814047D4 | 80 0D AC 70 */	lwz r0, lbl_81698CB0@sda21(r0)
/* 814047D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814047DC | 41 82 00 10 */	beq .L_814047EC
/* 814047E0 | 38 00 00 00 */	li r0, 0x0
/* 814047E4 | 90 0D AC 70 */	stw r0, lbl_81698CB0@sda21(r0)
/* 814047E8 | 48 0A DE 49 */	bl SOCleanup
.L_814047EC:
/* 814047EC | 38 7F FF FF */	subi r3, r31, 0x1
/* 814047F0 | 20 1F 00 01 */	subfic r0, r31, 0x1
/* 814047F4 | 7C 63 00 F8 */	nor r3, r3, r0
/* 814047F8 | 38 80 FF FF */	li r4, -0x1
/* 814047FC | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 81404800 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 81404804 | 38 A3 00 07 */	addi r5, r3, 0x7
/* 81404808 | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 8140480C | 90 8D 91 D8 */	stw r4, lbl_81697218@sda21(r0)
/* 81404810 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81404814 | 90 AD AC 50 */	stw r5, lbl_81698C90@sda21(r0)
/* 81404818 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8140481C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81404820 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81404824 | 7D 89 03 A6 */	mtctr r12
/* 81404828 | 4E 80 04 21 */	bctrl
/* 8140482C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81404830 | 38 60 00 00 */	li r3, 0x0
/* 81404834 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81404838 | 7C 08 03 A6 */	mtlr r0
/* 8140483C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81404840 | 4E 80 00 20 */	blr
.endfn ATERM_814047A4

# .text:0x65C8 | 0x81404844 | size: 0x1D4
.fn ATERM_81404844, global
/* 81404844 | 94 21 FE 70 */	stwu r1, -0x190(r1)
/* 81404848 | 7C 08 02 A6 */	mflr r0
/* 8140484C | 90 01 01 94 */	stw r0, 0x194(r1)
/* 81404850 | 39 61 01 90 */	addi r11, r1, 0x190
/* 81404854 | 48 1F 4C 59 */	bl _savegpr_22
/* 81404858 | 54 A0 07 7F */	clrlwi. r0, r5, 29
/* 8140485C | 3D 00 A6 A7 */	lis r8, 0xa6a7
/* 81404860 | 38 08 A6 A6 */	subi r0, r8, 0x595a
/* 81404864 | 7C 79 1B 78 */	mr r25, r3
/* 81404868 | 7C 97 23 78 */	mr r23, r4
/* 8140486C | 7C B6 2B 78 */	mr r22, r5
/* 81404870 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81404874 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81404878 | 40 82 00 0C */	bne .L_81404884
/* 8140487C | 54 E0 07 7F */	clrlwi. r0, r7, 29
/* 81404880 | 41 82 00 0C */	beq .L_8140488C
.L_81404884:
/* 81404884 | 38 60 00 00 */	li r3, 0x0
/* 81404888 | 48 00 01 78 */	b .L_81404A00
.L_8140488C:
/* 8140488C | 54 BB E8 FE */	srwi r27, r5, 3
/* 81404890 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 81404894 | 40 80 00 0C */	bge .L_814048A0
/* 81404898 | 38 60 00 00 */	li r3, 0x0
/* 8140489C | 48 00 01 64 */	b .L_81404A00
.L_814048A0:
/* 814048A0 | 7C C4 33 78 */	mr r4, r6
/* 814048A4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814048A8 | 54 E5 18 38 */	slwi r5, r7, 3
/* 814048AC | 48 00 03 51 */	bl ATERM_81404BFC
/* 814048B0 | 7C 7A 1B 78 */	mr r26, r3
/* 814048B4 | 7E E4 BB 78 */	mr r4, r23
/* 814048B8 | 7E C5 B3 78 */	mr r5, r22
/* 814048BC | 38 79 00 08 */	addi r3, r25, 0x8
/* 814048C0 | 4B F2 B9 71 */	bl memcpy
/* 814048C4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814048C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814048CC | 38 A0 00 08 */	li r5, 0x8
/* 814048D0 | 4B F2 B9 61 */	bl memcpy
/* 814048D4 | 3B 80 00 00 */	li r28, 0x0
.L_814048D8:
/* 814048D8 | 7F 64 FE 70 */	srawi r4, r27, 31
/* 814048DC | 3B A0 00 01 */	li r29, 0x1
/* 814048E0 | 7F 80 FE 70 */	srawi r0, r28, 31
/* 814048E4 | 3B 00 00 08 */	li r24, 0x8
/* 814048E8 | 7C 7B E0 16 */	mulhwu r3, r27, r28
/* 814048EC | 7C 84 E1 D6 */	mullw r4, r4, r28
/* 814048F0 | 7C 1B 01 D6 */	mullw r0, r27, r0
/* 814048F4 | 7C 63 22 14 */	add r3, r3, r4
/* 814048F8 | 7F DB E1 D6 */	mullw r30, r27, r28
/* 814048FC | 7F E3 02 14 */	add r31, r3, r0
/* 81404900 | 48 00 00 D8 */	b .L_814049D8
.L_81404904:
/* 81404904 | 7E D9 C2 14 */	add r22, r25, r24
/* 81404908 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8140490C | 7E C4 B3 78 */	mr r4, r22
/* 81404910 | 38 A0 00 08 */	li r5, 0x8
/* 81404914 | 4B F2 B9 1D */	bl memcpy
/* 81404918 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8140491C | 7F 44 D3 78 */	mr r4, r26
/* 81404920 | 7C A6 2B 78 */	mr r6, r5
/* 81404924 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81404928 | 48 00 09 2D */	bl ATERM_81405254
/* 8140492C | 7F A0 FE 70 */	srawi r0, r29, 31
/* 81404930 | 89 01 00 18 */	lbz r8, 0x18(r1)
/* 81404934 | 7C 7D F0 14 */	addc r3, r29, r30
/* 81404938 | 89 61 00 19 */	lbz r11, 0x19(r1)
/* 8140493C | 7C 00 F9 14 */	adde r0, r0, r31
/* 81404940 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81404944 | 89 41 00 1A */	lbz r10, 0x1a(r1)
/* 81404948 | 7E C3 B3 78 */	mr r3, r22
/* 8140494C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81404950 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81404954 | 89 21 00 1B */	lbz r9, 0x1b(r1)
/* 81404958 | 38 A0 00 08 */	li r5, 0x8
/* 8140495C | 88 E1 00 10 */	lbz r7, 0x10(r1)
/* 81404960 | 88 C1 00 11 */	lbz r6, 0x11(r1)
/* 81404964 | 7D 07 3A 78 */	xor r7, r8, r7
/* 81404968 | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 8140496C | 7D 66 32 78 */	xor r6, r11, r6
/* 81404970 | 89 01 00 13 */	lbz r8, 0x13(r1)
/* 81404974 | 7D 40 02 78 */	xor r0, r10, r0
/* 81404978 | 89 61 00 1C */	lbz r11, 0x1c(r1)
/* 8140497C | 7D 36 42 78 */	xor r22, r9, r8
/* 81404980 | 89 41 00 14 */	lbz r10, 0x14(r1)
/* 81404984 | 89 21 00 1D */	lbz r9, 0x1d(r1)
/* 81404988 | 7D 77 52 78 */	xor r23, r11, r10
/* 8140498C | 89 01 00 15 */	lbz r8, 0x15(r1)
/* 81404990 | 89 61 00 1E */	lbz r11, 0x1e(r1)
/* 81404994 | 7D 2C 42 78 */	xor r12, r9, r8
/* 81404998 | 89 41 00 16 */	lbz r10, 0x16(r1)
/* 8140499C | 89 21 00 1F */	lbz r9, 0x1f(r1)
/* 814049A0 | 7D 6A 52 78 */	xor r10, r11, r10
/* 814049A4 | 89 01 00 17 */	lbz r8, 0x17(r1)
/* 814049A8 | 98 E1 00 18 */	stb r7, 0x18(r1)
/* 814049AC | 7D 27 42 78 */	xor r7, r9, r8
/* 814049B0 | 98 C1 00 19 */	stb r6, 0x19(r1)
/* 814049B4 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 814049B8 | 9A C1 00 1B */	stb r22, 0x1b(r1)
/* 814049BC | 9A E1 00 1C */	stb r23, 0x1c(r1)
/* 814049C0 | 99 81 00 1D */	stb r12, 0x1d(r1)
/* 814049C4 | 99 41 00 1E */	stb r10, 0x1e(r1)
/* 814049C8 | 98 E1 00 1F */	stb r7, 0x1f(r1)
/* 814049CC | 4B F2 B8 65 */	bl memcpy
/* 814049D0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814049D4 | 3B 18 00 08 */	addi r24, r24, 0x8
.L_814049D8:
/* 814049D8 | 7C 1D D8 00 */	cmpw r29, r27
/* 814049DC | 40 81 FF 28 */	ble .L_81404904
/* 814049E0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814049E4 | 2C 1C 00 06 */	cmpwi r28, 0x6
/* 814049E8 | 41 80 FE F0 */	blt .L_814048D8
/* 814049EC | 7F 23 CB 78 */	mr r3, r25
/* 814049F0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814049F4 | 38 A0 00 08 */	li r5, 0x8
/* 814049F8 | 4B F2 B8 39 */	bl memcpy
/* 814049FC | 38 60 00 01 */	li r3, 0x1
.L_81404A00:
/* 81404A00 | 39 61 01 90 */	addi r11, r1, 0x190
/* 81404A04 | 48 1F 4A F5 */	bl _restgpr_22
/* 81404A08 | 80 01 01 94 */	lwz r0, 0x194(r1)
/* 81404A0C | 7C 08 03 A6 */	mtlr r0
/* 81404A10 | 38 21 01 90 */	addi r1, r1, 0x190
/* 81404A14 | 4E 80 00 20 */	blr
.endfn ATERM_81404844

# .text:0x679C | 0x81404A18 | size: 0x1E4
.fn ATERM_81404A18, global
/* 81404A18 | 94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 81404A1C | 7C 08 02 A6 */	mflr r0
/* 81404A20 | 90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 81404A24 | 39 61 01 A0 */	addi r11, r1, 0x1a0
/* 81404A28 | 48 1F 4A 81 */	bl _savegpr_21
/* 81404A2C | 54 A0 07 7F */	clrlwi. r0, r5, 29
/* 81404A30 | 3D 00 A6 A7 */	lis r8, 0xa6a7
/* 81404A34 | 38 08 A6 A6 */	subi r0, r8, 0x595a
/* 81404A38 | 7C 77 1B 78 */	mr r23, r3
/* 81404A3C | 7C 96 23 78 */	mr r22, r4
/* 81404A40 | 7C B5 2B 78 */	mr r21, r5
/* 81404A44 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81404A48 | 3B 00 00 01 */	li r24, 0x1
/* 81404A4C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81404A50 | 40 82 00 0C */	bne .L_81404A5C
/* 81404A54 | 54 E0 07 7F */	clrlwi. r0, r7, 29
/* 81404A58 | 41 82 00 0C */	beq .L_81404A64
.L_81404A5C:
/* 81404A5C | 38 60 00 00 */	li r3, 0x0
/* 81404A60 | 48 00 01 84 */	b .L_81404BE4
.L_81404A64:
/* 81404A64 | 38 05 FF FF */	subi r0, r5, 0x1
/* 81404A68 | 54 1A E8 FE */	srwi r26, r0, 3
/* 81404A6C | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 81404A70 | 40 80 00 0C */	bge .L_81404A7C
/* 81404A74 | 38 60 00 00 */	li r3, 0x0
/* 81404A78 | 48 00 01 6C */	b .L_81404BE4
.L_81404A7C:
/* 81404A7C | 7C C4 33 78 */	mr r4, r6
/* 81404A80 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81404A84 | 54 E5 18 38 */	slwi r5, r7, 3
/* 81404A88 | 48 00 05 A5 */	bl ATERM_8140502C
/* 81404A8C | 7C 79 1B 78 */	mr r25, r3
/* 81404A90 | 7E C4 B3 78 */	mr r4, r22
/* 81404A94 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81404A98 | 38 A0 00 08 */	li r5, 0x8
/* 81404A9C | 4B F2 B7 95 */	bl memcpy
/* 81404AA0 | 7E E3 BB 78 */	mr r3, r23
/* 81404AA4 | 38 96 00 08 */	addi r4, r22, 0x8
/* 81404AA8 | 38 B5 FF FF */	subi r5, r21, 0x1
/* 81404AAC | 4B F2 B7 85 */	bl memcpy
/* 81404AB0 | 3B 60 00 05 */	li r27, 0x5
.L_81404AB4:
/* 81404AB4 | 7F 44 FE 70 */	srawi r4, r26, 31
/* 81404AB8 | 7F 5C D3 78 */	mr r28, r26
/* 81404ABC | 7F 60 FE 70 */	srawi r0, r27, 31
/* 81404AC0 | 7C 7A D8 16 */	mulhwu r3, r26, r27
/* 81404AC4 | 7C 84 D9 D6 */	mullw r4, r4, r27
/* 81404AC8 | 7C 1A 01 D6 */	mullw r0, r26, r0
/* 81404ACC | 7C 63 22 14 */	add r3, r3, r4
/* 81404AD0 | 7F DA D9 D6 */	mullw r30, r26, r27
/* 81404AD4 | 7F E3 02 14 */	add r31, r3, r0
/* 81404AD8 | 48 00 00 DC */	b .L_81404BB4
.L_81404ADC:
/* 81404ADC | 7F 83 FE 70 */	srawi r3, r28, 31
/* 81404AE0 | 38 1C FF FF */	subi r0, r28, 0x1
/* 81404AE4 | 7C 9C F0 14 */	addc r4, r28, r30
/* 81404AE8 | 89 21 00 18 */	lbz r9, 0x18(r1)
/* 81404AEC | 7C 63 F9 14 */	adde r3, r3, r31
/* 81404AF0 | 54 00 18 38 */	slwi r0, r0, 3
/* 81404AF4 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81404AF8 | 7F B7 02 14 */	add r29, r23, r0
/* 81404AFC | 89 01 00 19 */	lbz r8, 0x19(r1)
/* 81404B00 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81404B04 | 88 E1 00 10 */	lbz r7, 0x10(r1)
/* 81404B08 | 38 A0 00 08 */	li r5, 0x8
/* 81404B0C | 88 C1 00 11 */	lbz r6, 0x11(r1)
/* 81404B10 | 7D 27 3A 78 */	xor r7, r9, r7
/* 81404B14 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81404B18 | 7D 06 32 78 */	xor r6, r8, r6
/* 81404B1C | 89 41 00 1A */	lbz r10, 0x1a(r1)
/* 81404B20 | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 81404B24 | 7F A4 EB 78 */	mr r4, r29
/* 81404B28 | 89 21 00 1B */	lbz r9, 0x1b(r1)
/* 81404B2C | 7D 40 02 78 */	xor r0, r10, r0
/* 81404B30 | 89 01 00 13 */	lbz r8, 0x13(r1)
/* 81404B34 | 89 61 00 1C */	lbz r11, 0x1c(r1)
/* 81404B38 | 7D 35 42 78 */	xor r21, r9, r8
/* 81404B3C | 89 41 00 14 */	lbz r10, 0x14(r1)
/* 81404B40 | 89 21 00 1D */	lbz r9, 0x1d(r1)
/* 81404B44 | 7D 76 52 78 */	xor r22, r11, r10
/* 81404B48 | 89 01 00 15 */	lbz r8, 0x15(r1)
/* 81404B4C | 89 61 00 1E */	lbz r11, 0x1e(r1)
/* 81404B50 | 7D 2C 42 78 */	xor r12, r9, r8
/* 81404B54 | 89 41 00 16 */	lbz r10, 0x16(r1)
/* 81404B58 | 89 21 00 1F */	lbz r9, 0x1f(r1)
/* 81404B5C | 7D 6A 52 78 */	xor r10, r11, r10
/* 81404B60 | 89 01 00 17 */	lbz r8, 0x17(r1)
/* 81404B64 | 98 E1 00 18 */	stb r7, 0x18(r1)
/* 81404B68 | 7D 27 42 78 */	xor r7, r9, r8
/* 81404B6C | 98 C1 00 19 */	stb r6, 0x19(r1)
/* 81404B70 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 81404B74 | 9A A1 00 1B */	stb r21, 0x1b(r1)
/* 81404B78 | 9A C1 00 1C */	stb r22, 0x1c(r1)
/* 81404B7C | 99 81 00 1D */	stb r12, 0x1d(r1)
/* 81404B80 | 99 41 00 1E */	stb r10, 0x1e(r1)
/* 81404B84 | 98 E1 00 1F */	stb r7, 0x1f(r1)
/* 81404B88 | 4B F2 B6 A9 */	bl memcpy
/* 81404B8C | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81404B90 | 7F 24 CB 78 */	mr r4, r25
/* 81404B94 | 7C A6 2B 78 */	mr r6, r5
/* 81404B98 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81404B9C | 48 00 0A F5 */	bl ATERM_81405690
/* 81404BA0 | 7F A3 EB 78 */	mr r3, r29
/* 81404BA4 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81404BA8 | 38 A0 00 08 */	li r5, 0x8
/* 81404BAC | 4B F2 B6 85 */	bl memcpy
/* 81404BB0 | 3B 9C FF FF */	subi r28, r28, 0x1
.L_81404BB4:
/* 81404BB4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81404BB8 | 41 81 FF 24 */	bgt .L_81404ADC
/* 81404BBC | 37 7B FF FF */	subic. r27, r27, 0x1
/* 81404BC0 | 40 80 FE F4 */	bge .L_81404AB4
/* 81404BC4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81404BC8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81404BCC | 38 A0 00 08 */	li r5, 0x8
/* 81404BD0 | 48 1F 96 05 */	bl memcmp
/* 81404BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81404BD8 | 41 82 00 08 */	beq .L_81404BE0
/* 81404BDC | 3B 00 00 00 */	li r24, 0x0
.L_81404BE0:
/* 81404BE0 | 7F 03 C3 78 */	mr r3, r24
.L_81404BE4:
/* 81404BE4 | 39 61 01 A0 */	addi r11, r1, 0x1a0
/* 81404BE8 | 48 1F 49 0D */	bl _restgpr_21
/* 81404BEC | 80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 81404BF0 | 7C 08 03 A6 */	mtlr r0
/* 81404BF4 | 38 21 01 A0 */	addi r1, r1, 0x1a0
/* 81404BF8 | 4E 80 00 20 */	blr
.endfn ATERM_81404A18

# .text:0x6980 | 0x81404BFC | size: 0x430
.fn ATERM_81404BFC, global
/* 81404BFC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81404C00 | 7C 08 02 A6 */	mflr r0
/* 81404C04 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81404C08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81404C0C | 48 1F 48 AD */	bl _savegpr_25
/* 81404C10 | 88 E4 00 02 */	lbz r7, 0x2(r4)
/* 81404C14 | 2C 05 00 80 */	cmpwi r5, 0x80
/* 81404C18 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 81404C1C | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81404C20 | 54 E8 40 2E */	slwi r8, r7, 8
/* 81404C24 | 88 E4 00 06 */	lbz r7, 0x6(r4)
/* 81404C28 | 54 DA C0 0E */	slwi r26, r6, 24
/* 81404C2C | 54 1B 80 1E */	slwi r27, r0, 16
/* 81404C30 | 88 C4 00 04 */	lbz r6, 0x4(r4)
/* 81404C34 | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 81404C38 | 54 FD 40 2E */	slwi r29, r7, 8
/* 81404C3C | 88 E4 00 0A */	lbz r7, 0xa(r4)
/* 81404C40 | 54 DE C0 0E */	slwi r30, r6, 24
/* 81404C44 | 54 1F 80 1E */	slwi r31, r0, 16
/* 81404C48 | 88 C4 00 08 */	lbz r6, 0x8(r4)
/* 81404C4C | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 81404C50 | 54 EB 40 2E */	slwi r11, r7, 8
/* 81404C54 | 8B 24 00 03 */	lbz r25, 0x3(r4)
/* 81404C58 | 54 CA C0 0E */	slwi r10, r6, 24
/* 81404C5C | 54 09 80 1E */	slwi r9, r0, 16
/* 81404C60 | 88 E4 00 0E */	lbz r7, 0xe(r4)
/* 81404C64 | 88 C4 00 0C */	lbz r6, 0xc(r4)
/* 81404C68 | 7F 39 42 78 */	xor r25, r25, r8
/* 81404C6C | 88 04 00 0D */	lbz r0, 0xd(r4)
/* 81404C70 | 7F 5B DA 78 */	xor r27, r26, r27
/* 81404C74 | 8B 84 00 07 */	lbz r28, 0x7(r4)
/* 81404C78 | 7F 3B DA 78 */	xor r27, r25, r27
/* 81404C7C | 89 84 00 0B */	lbz r12, 0xb(r4)
/* 81404C80 | 54 E7 40 2E */	slwi r7, r7, 8
/* 81404C84 | 89 04 00 0F */	lbz r8, 0xf(r4)
/* 81404C88 | 54 C6 C0 0E */	slwi r6, r6, 24
/* 81404C8C | 54 00 80 1E */	slwi r0, r0, 16
/* 81404C90 | 7F 9D EA 78 */	xor r29, r28, r29
/* 81404C94 | 7C C0 02 78 */	xor r0, r6, r0
/* 81404C98 | 7D 07 3A 78 */	xor r7, r8, r7
/* 81404C9C | 7C E0 02 78 */	xor r0, r7, r0
/* 81404CA0 | 7F DF FA 78 */	xor r31, r30, r31
/* 81404CA4 | 7D 49 4A 78 */	xor r9, r10, r9
/* 81404CA8 | 7D 8B 5A 78 */	xor r11, r12, r11
/* 81404CAC | 7F AA FA 78 */	xor r10, r29, r31
/* 81404CB0 | 93 63 00 00 */	stw r27, 0x0(r3)
/* 81404CB4 | 7D 68 4A 78 */	xor r8, r11, r9
/* 81404CB8 | 38 C0 00 00 */	li r6, 0x0
/* 81404CBC | 91 43 00 04 */	stw r10, 0x4(r3)
/* 81404CC0 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 81404CC4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81404CC8 | 40 82 00 AC */	bne .L_81404D74
/* 81404CCC | 3C 80 81 61 */	lis r4, lbl_816133C8@ha
/* 81404CD0 | 3D 20 81 61 */	lis r9, lbl_81611BC8@ha
/* 81404CD4 | 38 84 33 C8 */	addi r4, r4, lbl_816133C8@l
/* 81404CD8 | 39 29 1B C8 */	addi r9, r9, lbl_81611BC8@l
.L_81404CDC:
/* 81404CDC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81404CE0 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81404CE4 | 81 44 00 00 */	lwz r10, 0x0(r4)
/* 81404CE8 | 2C 06 00 0A */	cmpwi r6, 0xa
/* 81404CEC | 54 08 55 BA */	rlwinm r8, r0, 10, 22, 29
/* 81404CF0 | 54 07 15 BA */	clrlslwi r7, r0, 24, 2
/* 81404CF4 | 7D 09 40 2E */	lwzx r8, r9, r8
/* 81404CF8 | 54 05 95 BA */	rlwinm r5, r0, 18, 22, 29
/* 81404CFC | 7C E9 38 2E */	lwzx r7, r9, r7
/* 81404D00 | 54 00 D5 BA */	rlwinm r0, r0, 26, 22, 29
/* 81404D04 | 7C A9 28 2E */	lwzx r5, r9, r5
/* 81404D08 | 55 08 06 3E */	clrlwi r8, r8, 24
/* 81404D0C | 54 E7 04 2E */	rlwinm r7, r7, 0, 16, 23
/* 81404D10 | 7C 09 00 2E */	lwzx r0, r9, r0
/* 81404D14 | 7D 08 3A 78 */	xor r8, r8, r7
/* 81404D18 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81404D1C | 54 A5 00 0E */	clrrwi r5, r5, 24
/* 81404D20 | 54 00 02 1E */	rlwinm r0, r0, 0, 8, 15
/* 81404D24 | 7C E5 2A 78 */	xor r5, r7, r5
/* 81404D28 | 7D 47 42 78 */	xor r7, r10, r8
/* 81404D2C | 7C A0 02 78 */	xor r0, r5, r0
/* 81404D30 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81404D34 | 7C E5 02 78 */	xor r5, r7, r0
/* 81404D38 | 90 A3 00 10 */	stw r5, 0x10(r3)
/* 81404D3C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81404D40 | 7C 05 2A 78 */	xor r5, r0, r5
/* 81404D44 | 90 A3 00 14 */	stw r5, 0x14(r3)
/* 81404D48 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81404D4C | 7C 05 2A 78 */	xor r5, r0, r5
/* 81404D50 | 90 A3 00 18 */	stw r5, 0x18(r3)
/* 81404D54 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81404D58 | 7C 00 2A 78 */	xor r0, r0, r5
/* 81404D5C | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81404D60 | 40 82 00 0C */	bne .L_81404D6C
/* 81404D64 | 38 60 00 0A */	li r3, 0xa
/* 81404D68 | 48 00 02 AC */	b .L_81405014
.L_81404D6C:
/* 81404D6C | 38 63 00 10 */	addi r3, r3, 0x10
/* 81404D70 | 4B FF FF 6C */	b .L_81404CDC
.L_81404D74:
/* 81404D74 | 89 04 00 12 */	lbz r8, 0x12(r4)
/* 81404D78 | 2C 05 00 C0 */	cmpwi r5, 0xc0
/* 81404D7C | 88 E4 00 10 */	lbz r7, 0x10(r4)
/* 81404D80 | 88 04 00 11 */	lbz r0, 0x11(r4)
/* 81404D84 | 55 0C 40 2E */	slwi r12, r8, 8
/* 81404D88 | 89 04 00 16 */	lbz r8, 0x16(r4)
/* 81404D8C | 54 EB C0 0E */	slwi r11, r7, 24
/* 81404D90 | 54 0A 80 1E */	slwi r10, r0, 16
/* 81404D94 | 88 E4 00 14 */	lbz r7, 0x14(r4)
/* 81404D98 | 88 04 00 15 */	lbz r0, 0x15(r4)
/* 81404D9C | 55 08 40 2E */	slwi r8, r8, 8
/* 81404DA0 | 8B E4 00 13 */	lbz r31, 0x13(r4)
/* 81404DA4 | 54 E7 C0 0E */	slwi r7, r7, 24
/* 81404DA8 | 89 24 00 17 */	lbz r9, 0x17(r4)
/* 81404DAC | 54 00 80 1E */	slwi r0, r0, 16
/* 81404DB0 | 7F EC 62 78 */	xor r12, r31, r12
/* 81404DB4 | 7D 6A 52 78 */	xor r10, r11, r10
/* 81404DB8 | 7D 8A 52 78 */	xor r10, r12, r10
/* 81404DBC | 7D 28 42 78 */	xor r8, r9, r8
/* 81404DC0 | 7C E0 02 78 */	xor r0, r7, r0
/* 81404DC4 | 91 43 00 10 */	stw r10, 0x10(r3)
/* 81404DC8 | 7D 00 02 78 */	xor r0, r8, r0
/* 81404DCC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81404DD0 | 40 82 00 C8 */	bne .L_81404E98
/* 81404DD4 | 3C A0 81 61 */	lis r5, lbl_816133C8@ha
/* 81404DD8 | 3C 80 81 61 */	lis r4, lbl_81611BC8@ha
/* 81404DDC | 38 A5 33 C8 */	addi r5, r5, lbl_816133C8@l
/* 81404DE0 | 38 84 1B C8 */	addi r4, r4, lbl_81611BC8@l
.L_81404DE4:
/* 81404DE4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81404DE8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81404DEC | 81 45 00 00 */	lwz r10, 0x0(r5)
/* 81404DF0 | 2C 06 00 08 */	cmpwi r6, 0x8
/* 81404DF4 | 54 09 55 BA */	rlwinm r9, r0, 10, 22, 29
/* 81404DF8 | 54 08 15 BA */	clrlslwi r8, r0, 24, 2
/* 81404DFC | 7D 24 48 2E */	lwzx r9, r4, r9
/* 81404E00 | 54 07 95 BA */	rlwinm r7, r0, 18, 22, 29
/* 81404E04 | 7D 04 40 2E */	lwzx r8, r4, r8
/* 81404E08 | 54 00 D5 BA */	rlwinm r0, r0, 26, 22, 29
/* 81404E0C | 7C E4 38 2E */	lwzx r7, r4, r7
/* 81404E10 | 55 29 06 3E */	clrlwi r9, r9, 24
/* 81404E14 | 55 08 04 2E */	rlwinm r8, r8, 0, 16, 23
/* 81404E18 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81404E1C | 7D 29 42 78 */	xor r9, r9, r8
/* 81404E20 | 81 03 00 00 */	lwz r8, 0x0(r3)
/* 81404E24 | 54 E7 00 0E */	clrrwi r7, r7, 24
/* 81404E28 | 54 00 02 1E */	rlwinm r0, r0, 0, 8, 15
/* 81404E2C | 7D 07 3A 78 */	xor r7, r8, r7
/* 81404E30 | 7D 48 4A 78 */	xor r8, r10, r9
/* 81404E34 | 7C E0 02 78 */	xor r0, r7, r0
/* 81404E38 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81404E3C | 7D 07 02 78 */	xor r7, r8, r0
/* 81404E40 | 90 E3 00 18 */	stw r7, 0x18(r3)
/* 81404E44 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81404E48 | 7C 07 3A 78 */	xor r7, r0, r7
/* 81404E4C | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 81404E50 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81404E54 | 7C 07 3A 78 */	xor r7, r0, r7
/* 81404E58 | 90 E3 00 20 */	stw r7, 0x20(r3)
/* 81404E5C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81404E60 | 7C 00 3A 78 */	xor r0, r0, r7
/* 81404E64 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 81404E68 | 40 82 00 0C */	bne .L_81404E74
/* 81404E6C | 38 60 00 0C */	li r3, 0xc
/* 81404E70 | 48 00 01 A4 */	b .L_81405014
.L_81404E74:
/* 81404E74 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 81404E78 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81404E7C | 7C E7 02 78 */	xor r7, r7, r0
/* 81404E80 | 90 E3 00 28 */	stw r7, 0x28(r3)
/* 81404E84 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81404E88 | 7C 00 3A 78 */	xor r0, r0, r7
/* 81404E8C | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81404E90 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81404E94 | 4B FF FF 50 */	b .L_81404DE4
.L_81404E98:
/* 81404E98 | 88 E4 00 1A */	lbz r7, 0x1a(r4)
/* 81404E9C | 2C 05 01 00 */	cmpwi r5, 0x100
/* 81404EA0 | 88 A4 00 18 */	lbz r5, 0x18(r4)
/* 81404EA4 | 88 04 00 19 */	lbz r0, 0x19(r4)
/* 81404EA8 | 54 EA 40 2E */	slwi r10, r7, 8
/* 81404EAC | 88 E4 00 1E */	lbz r7, 0x1e(r4)
/* 81404EB0 | 54 A9 C0 0E */	slwi r9, r5, 24
/* 81404EB4 | 54 08 80 1E */	slwi r8, r0, 16
/* 81404EB8 | 88 A4 00 1C */	lbz r5, 0x1c(r4)
/* 81404EBC | 88 04 00 1D */	lbz r0, 0x1d(r4)
/* 81404EC0 | 54 E7 40 2E */	slwi r7, r7, 8
/* 81404EC4 | 89 64 00 1B */	lbz r11, 0x1b(r4)
/* 81404EC8 | 54 A5 C0 0E */	slwi r5, r5, 24
/* 81404ECC | 88 84 00 1F */	lbz r4, 0x1f(r4)
/* 81404ED0 | 54 00 80 1E */	slwi r0, r0, 16
/* 81404ED4 | 7D 6A 52 78 */	xor r10, r11, r10
/* 81404ED8 | 7D 28 42 78 */	xor r8, r9, r8
/* 81404EDC | 7D 48 42 78 */	xor r8, r10, r8
/* 81404EE0 | 7C 84 3A 78 */	xor r4, r4, r7
/* 81404EE4 | 7C A0 02 78 */	xor r0, r5, r0
/* 81404EE8 | 91 03 00 18 */	stw r8, 0x18(r3)
/* 81404EEC | 7C 80 02 78 */	xor r0, r4, r0
/* 81404EF0 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81404EF4 | 40 82 01 1C */	bne .L_81405010
/* 81404EF8 | 3C A0 81 61 */	lis r5, lbl_816133C8@ha
/* 81404EFC | 3C 80 81 61 */	lis r4, lbl_81611BC8@ha
/* 81404F00 | 38 A5 33 C8 */	addi r5, r5, lbl_816133C8@l
/* 81404F04 | 38 84 1B C8 */	addi r4, r4, lbl_81611BC8@l
.L_81404F08:
/* 81404F08 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81404F0C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81404F10 | 81 45 00 00 */	lwz r10, 0x0(r5)
/* 81404F14 | 2C 06 00 07 */	cmpwi r6, 0x7
/* 81404F18 | 54 09 55 BA */	rlwinm r9, r0, 10, 22, 29
/* 81404F1C | 54 08 15 BA */	clrlslwi r8, r0, 24, 2
/* 81404F20 | 7D 24 48 2E */	lwzx r9, r4, r9
/* 81404F24 | 54 07 95 BA */	rlwinm r7, r0, 18, 22, 29
/* 81404F28 | 7D 04 40 2E */	lwzx r8, r4, r8
/* 81404F2C | 54 00 D5 BA */	rlwinm r0, r0, 26, 22, 29
/* 81404F30 | 7C E4 38 2E */	lwzx r7, r4, r7
/* 81404F34 | 55 29 06 3E */	clrlwi r9, r9, 24
/* 81404F38 | 55 08 04 2E */	rlwinm r8, r8, 0, 16, 23
/* 81404F3C | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81404F40 | 7D 29 42 78 */	xor r9, r9, r8
/* 81404F44 | 81 03 00 00 */	lwz r8, 0x0(r3)
/* 81404F48 | 54 E7 00 0E */	clrrwi r7, r7, 24
/* 81404F4C | 54 00 02 1E */	rlwinm r0, r0, 0, 8, 15
/* 81404F50 | 7D 07 3A 78 */	xor r7, r8, r7
/* 81404F54 | 7D 48 4A 78 */	xor r8, r10, r9
/* 81404F58 | 7C E0 02 78 */	xor r0, r7, r0
/* 81404F5C | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81404F60 | 7D 07 02 78 */	xor r7, r8, r0
/* 81404F64 | 90 E3 00 20 */	stw r7, 0x20(r3)
/* 81404F68 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81404F6C | 7C 07 3A 78 */	xor r7, r0, r7
/* 81404F70 | 90 E3 00 24 */	stw r7, 0x24(r3)
/* 81404F74 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81404F78 | 7C 07 3A 78 */	xor r7, r0, r7
/* 81404F7C | 90 E3 00 28 */	stw r7, 0x28(r3)
/* 81404F80 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81404F84 | 7C 00 3A 78 */	xor r0, r0, r7
/* 81404F88 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81404F8C | 40 82 00 0C */	bne .L_81404F98
/* 81404F90 | 38 60 00 0E */	li r3, 0xe
/* 81404F94 | 48 00 00 80 */	b .L_81405014
.L_81404F98:
/* 81404F98 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81404F9C | 81 03 00 10 */	lwz r8, 0x10(r3)
/* 81404FA0 | 54 07 55 BA */	rlwinm r7, r0, 10, 22, 29
/* 81404FA4 | 54 0A 15 BA */	clrlslwi r10, r0, 24, 2
/* 81404FA8 | 54 09 D5 BA */	rlwinm r9, r0, 26, 22, 29
/* 81404FAC | 54 00 95 BA */	rlwinm r0, r0, 18, 22, 29
/* 81404FB0 | 7C E4 38 2E */	lwzx r7, r4, r7
/* 81404FB4 | 7D 44 50 2E */	lwzx r10, r4, r10
/* 81404FB8 | 7D 24 48 2E */	lwzx r9, r4, r9
/* 81404FBC | 54 E7 00 0E */	clrrwi r7, r7, 24
/* 81404FC0 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81404FC4 | 55 4A 06 3E */	clrlwi r10, r10, 24
/* 81404FC8 | 55 29 04 2E */	rlwinm r9, r9, 0, 16, 23
/* 81404FCC | 7D 07 3A 78 */	xor r7, r8, r7
/* 81404FD0 | 54 00 02 1E */	rlwinm r0, r0, 0, 8, 15
/* 81404FD4 | 7D 48 4A 78 */	xor r8, r10, r9
/* 81404FD8 | 7C E0 02 78 */	xor r0, r7, r0
/* 81404FDC | 7D 07 02 78 */	xor r7, r8, r0
/* 81404FE0 | 90 E3 00 30 */	stw r7, 0x30(r3)
/* 81404FE4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81404FE8 | 7C 07 3A 78 */	xor r7, r0, r7
/* 81404FEC | 90 E3 00 34 */	stw r7, 0x34(r3)
/* 81404FF0 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81404FF4 | 7C 07 3A 78 */	xor r7, r0, r7
/* 81404FF8 | 90 E3 00 38 */	stw r7, 0x38(r3)
/* 81404FFC | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81405000 | 7C 00 3A 78 */	xor r0, r0, r7
/* 81405004 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 81405008 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8140500C | 4B FF FE FC */	b .L_81404F08
.L_81405010:
/* 81405010 | 38 60 00 00 */	li r3, 0x0
.L_81405014:
/* 81405014 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81405018 | 48 1F 44 ED */	bl _restgpr_25
/* 8140501C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81405020 | 7C 08 03 A6 */	mtlr r0
/* 81405024 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81405028 | 4E 80 00 20 */	blr
.endfn ATERM_81404BFC

# .text:0x6DB0 | 0x8140502C | size: 0x228
.fn ATERM_8140502C, global
/* 8140502C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81405030 | 7C 08 02 A6 */	mflr r0
/* 81405034 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81405038 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140503C | 7C 7F 1B 78 */	mr r31, r3
/* 81405040 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81405044 | 3F C0 81 61 */	lis r30, lbl_81610BC8@ha
/* 81405048 | 3B DE 0B C8 */	addi r30, r30, lbl_81610BC8@l
/* 8140504C | 4B FF FB B1 */	bl ATERM_81404BFC
/* 81405050 | 54 60 20 36 */	slwi r0, r3, 4
/* 81405054 | 7F E4 FB 78 */	mr r4, r31
/* 81405058 | 54 68 10 3A */	slwi r8, r3, 2
/* 8140505C | 38 E0 00 00 */	li r7, 0x0
/* 81405060 | 7C BF 02 14 */	add r5, r31, r0
/* 81405064 | 48 00 00 54 */	b .L_814050B8
.L_81405068:
/* 81405068 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8140506C | 38 E7 00 04 */	addi r7, r7, 0x4
/* 81405070 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81405074 | 39 08 FF FC */	subi r8, r8, 0x4
/* 81405078 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 8140507C | 90 C5 00 00 */	stw r6, 0x0(r5)
/* 81405080 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81405084 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81405088 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 8140508C | 90 C5 00 04 */	stw r6, 0x4(r5)
/* 81405090 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 81405094 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 81405098 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 8140509C | 90 C5 00 08 */	stw r6, 0x8(r5)
/* 814050A0 | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 814050A4 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 814050A8 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814050AC | 38 84 00 10 */	addi r4, r4, 0x10
/* 814050B0 | 90 C5 00 0C */	stw r6, 0xc(r5)
/* 814050B4 | 38 A5 FF F0 */	subi r5, r5, 0x10
.L_814050B8:
/* 814050B8 | 7C 07 40 00 */	cmpw r7, r8
/* 814050BC | 41 80 FF AC */	blt .L_81405068
/* 814050C0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814050C4 | 39 1E 10 00 */	addi r8, r30, 0x1000
/* 814050C8 | 38 FE 20 00 */	addi r7, r30, 0x2000
/* 814050CC | 38 DE 1C 00 */	addi r6, r30, 0x1c00
/* 814050D0 | 38 BE 14 00 */	addi r5, r30, 0x1400
/* 814050D4 | 38 9E 18 00 */	addi r4, r30, 0x1800
/* 814050D8 | 7C 09 03 A6 */	mtctr r0
/* 814050DC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814050E0 | 40 81 01 5C */	ble .L_8140523C
.L_814050E4:
/* 814050E4 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814050E8 | 54 0B 15 BA */	clrlslwi r11, r0, 24, 2
/* 814050EC | 54 0A D5 BA */	rlwinm r10, r0, 26, 22, 29
/* 814050F0 | 54 09 55 BA */	rlwinm r9, r0, 10, 22, 29
/* 814050F4 | 54 00 95 BA */	rlwinm r0, r0, 18, 22, 29
/* 814050F8 | 7D 68 58 2E */	lwzx r11, r8, r11
/* 814050FC | 7D 48 50 2E */	lwzx r10, r8, r10
/* 81405100 | 7D 28 48 2E */	lwzx r9, r8, r9
/* 81405104 | 55 6B 15 BA */	clrlslwi r11, r11, 24, 2
/* 81405108 | 7C 08 00 2E */	lwzx r0, r8, r0
/* 8140510C | 55 4A 15 BA */	clrlslwi r10, r10, 24, 2
/* 81405110 | 55 29 15 BA */	clrlslwi r9, r9, 24, 2
/* 81405114 | 7D 67 58 2E */	lwzx r11, r7, r11
/* 81405118 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 8140511C | 7D 46 50 2E */	lwzx r10, r6, r10
/* 81405120 | 7D 25 48 2E */	lwzx r9, r5, r9
/* 81405124 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81405128 | 7D 6A 52 78 */	xor r10, r11, r10
/* 8140512C | 7D 20 02 78 */	xor r0, r9, r0
/* 81405130 | 7D 40 02 78 */	xor r0, r10, r0
/* 81405134 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81405138 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8140513C | 54 0B 15 BA */	clrlslwi r11, r0, 24, 2
/* 81405140 | 54 0A D5 BA */	rlwinm r10, r0, 26, 22, 29
/* 81405144 | 54 09 55 BA */	rlwinm r9, r0, 10, 22, 29
/* 81405148 | 54 00 95 BA */	rlwinm r0, r0, 18, 22, 29
/* 8140514C | 7D 68 58 2E */	lwzx r11, r8, r11
/* 81405150 | 7D 48 50 2E */	lwzx r10, r8, r10
/* 81405154 | 7D 28 48 2E */	lwzx r9, r8, r9
/* 81405158 | 55 6B 15 BA */	clrlslwi r11, r11, 24, 2
/* 8140515C | 7C 08 00 2E */	lwzx r0, r8, r0
/* 81405160 | 55 4A 15 BA */	clrlslwi r10, r10, 24, 2
/* 81405164 | 55 29 15 BA */	clrlslwi r9, r9, 24, 2
/* 81405168 | 7D 67 58 2E */	lwzx r11, r7, r11
/* 8140516C | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 81405170 | 7D 46 50 2E */	lwzx r10, r6, r10
/* 81405174 | 7D 25 48 2E */	lwzx r9, r5, r9
/* 81405178 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 8140517C | 7D 6A 52 78 */	xor r10, r11, r10
/* 81405180 | 7D 20 02 78 */	xor r0, r9, r0
/* 81405184 | 7D 40 02 78 */	xor r0, r10, r0
/* 81405188 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8140518C | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81405190 | 54 0B 15 BA */	clrlslwi r11, r0, 24, 2
/* 81405194 | 54 0A D5 BA */	rlwinm r10, r0, 26, 22, 29
/* 81405198 | 54 09 55 BA */	rlwinm r9, r0, 10, 22, 29
/* 8140519C | 54 00 95 BA */	rlwinm r0, r0, 18, 22, 29
/* 814051A0 | 7D 68 58 2E */	lwzx r11, r8, r11
/* 814051A4 | 7D 48 50 2E */	lwzx r10, r8, r10
/* 814051A8 | 7D 28 48 2E */	lwzx r9, r8, r9
/* 814051AC | 55 6B 15 BA */	clrlslwi r11, r11, 24, 2
/* 814051B0 | 7C 08 00 2E */	lwzx r0, r8, r0
/* 814051B4 | 55 4A 15 BA */	clrlslwi r10, r10, 24, 2
/* 814051B8 | 55 29 15 BA */	clrlslwi r9, r9, 24, 2
/* 814051BC | 7D 67 58 2E */	lwzx r11, r7, r11
/* 814051C0 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 814051C4 | 7D 46 50 2E */	lwzx r10, r6, r10
/* 814051C8 | 7D 25 48 2E */	lwzx r9, r5, r9
/* 814051CC | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814051D0 | 7D 6A 52 78 */	xor r10, r11, r10
/* 814051D4 | 7D 20 02 78 */	xor r0, r9, r0
/* 814051D8 | 7D 40 02 78 */	xor r0, r10, r0
/* 814051DC | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 814051E0 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814051E4 | 54 0B 15 BA */	clrlslwi r11, r0, 24, 2
/* 814051E8 | 54 0A D5 BA */	rlwinm r10, r0, 26, 22, 29
/* 814051EC | 54 09 55 BA */	rlwinm r9, r0, 10, 22, 29
/* 814051F0 | 54 00 95 BA */	rlwinm r0, r0, 18, 22, 29
/* 814051F4 | 7D 68 58 2E */	lwzx r11, r8, r11
/* 814051F8 | 7D 48 50 2E */	lwzx r10, r8, r10
/* 814051FC | 7D 28 48 2E */	lwzx r9, r8, r9
/* 81405200 | 55 6B 15 BA */	clrlslwi r11, r11, 24, 2
/* 81405204 | 7C 08 00 2E */	lwzx r0, r8, r0
/* 81405208 | 55 4A 15 BA */	clrlslwi r10, r10, 24, 2
/* 8140520C | 55 29 15 BA */	clrlslwi r9, r9, 24, 2
/* 81405210 | 7D 67 58 2E */	lwzx r11, r7, r11
/* 81405214 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 81405218 | 7D 46 50 2E */	lwzx r10, r6, r10
/* 8140521C | 7D 25 48 2E */	lwzx r9, r5, r9
/* 81405220 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81405224 | 7D 6A 52 78 */	xor r10, r11, r10
/* 81405228 | 7D 20 02 78 */	xor r0, r9, r0
/* 8140522C | 7D 40 02 78 */	xor r0, r10, r0
/* 81405230 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 81405234 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 81405238 | 42 00 FE AC */	bdnz .L_814050E4
.L_8140523C:
/* 8140523C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81405240 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81405244 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81405248 | 7C 08 03 A6 */	mtlr r0
/* 8140524C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81405250 | 4E 80 00 20 */	blr
.endfn ATERM_8140502C

# .text:0x6FD8 | 0x81405254 | size: 0x43C
.fn ATERM_81405254, global
/* 81405254 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81405258 | 7C 08 02 A6 */	mflr r0
/* 8140525C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81405260 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81405264 | 48 1F 42 35 */	bl _savegpr_17
/* 81405268 | 89 85 00 06 */	lbz r12, 0x6(r5)
/* 8140526C | 3D 20 81 61 */	lis r9, lbl_81610BC8@ha
/* 81405270 | 89 65 00 04 */	lbz r11, 0x4(r5)
/* 81405274 | 39 29 0B C8 */	addi r9, r9, lbl_81610BC8@l
/* 81405278 | 89 45 00 05 */	lbz r10, 0x5(r5)
/* 8140527C | 55 97 40 2E */	slwi r23, r12, 8
/* 81405280 | 89 85 00 0A */	lbz r12, 0xa(r5)
/* 81405284 | 55 76 C0 0E */	slwi r22, r11, 24
/* 81405288 | 55 55 80 1E */	slwi r21, r10, 16
/* 8140528C | 89 65 00 08 */	lbz r11, 0x8(r5)
/* 81405290 | 89 45 00 09 */	lbz r10, 0x9(r5)
/* 81405294 | 55 93 40 2E */	slwi r19, r12, 8
/* 81405298 | 89 05 00 02 */	lbz r8, 0x2(r5)
/* 8140529C | 55 72 C0 0E */	slwi r18, r11, 24
/* 814052A0 | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 814052A4 | 55 51 80 1E */	slwi r17, r10, 16
/* 814052A8 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814052AC | 55 08 40 2E */	slwi r8, r8, 8
/* 814052B0 | 89 85 00 0E */	lbz r12, 0xe(r5)
/* 814052B4 | 7C 9E 0E 70 */	srawi r30, r4, 1
/* 814052B8 | 89 65 00 0C */	lbz r11, 0xc(r5)
/* 814052BC | 54 E7 C0 0E */	slwi r7, r7, 24
/* 814052C0 | 89 45 00 0D */	lbz r10, 0xd(r5)
/* 814052C4 | 54 00 80 1E */	slwi r0, r0, 16
/* 814052C8 | 8B 25 00 03 */	lbz r25, 0x3(r5)
/* 814052CC | 55 8C 40 2E */	slwi r12, r12, 8
/* 814052D0 | 8B 05 00 07 */	lbz r24, 0x7(r5)
/* 814052D4 | 55 6B C0 0E */	slwi r11, r11, 24
/* 814052D8 | 8A 85 00 0B */	lbz r20, 0xb(r5)
/* 814052DC | 7F 3A 42 78 */	xor r26, r25, r8
/* 814052E0 | 88 A5 00 0F */	lbz r5, 0xf(r5)
/* 814052E4 | 7C F9 02 78 */	xor r25, r7, r0
/* 814052E8 | 7E 47 8A 78 */	xor r7, r18, r17
/* 814052EC | 55 4A 80 1E */	slwi r10, r10, 16
/* 814052F0 | 7E 88 9A 78 */	xor r8, r20, r19
/* 814052F4 | 7C A5 62 78 */	xor r5, r5, r12
/* 814052F8 | 7D 60 52 78 */	xor r0, r11, r10
/* 814052FC | 7F 17 BA 78 */	xor r23, r24, r23
/* 81405300 | 7E D5 AA 78 */	xor r21, r22, r21
/* 81405304 | 7D 08 3A 78 */	xor r8, r8, r7
/* 81405308 | 82 43 00 00 */	lwz r18, 0x0(r3)
/* 8140530C | 7F 51 CA 78 */	xor r17, r26, r25
/* 81405310 | 7C A5 02 78 */	xor r5, r5, r0
/* 81405314 | 81 83 00 04 */	lwz r12, 0x4(r3)
/* 81405318 | 7E EA AA 78 */	xor r10, r23, r21
/* 8140531C | 81 63 00 08 */	lwz r11, 0x8(r3)
/* 81405320 | 7E 40 8A 78 */	xor r0, r18, r17
/* 81405324 | 80 E3 00 0C */	lwz r7, 0xc(r3)
/* 81405328 | 7D 71 42 78 */	xor r17, r11, r8
/* 8140532C | 7D 8A 52 78 */	xor r10, r12, r10
/* 81405330 | 7C EB 2A 78 */	xor r11, r7, r5
/* 81405334 | 39 09 0C 00 */	addi r8, r9, 0xc00
/* 81405338 | 38 E9 08 00 */	addi r7, r9, 0x800
/* 8140533C | 38 A9 00 00 */	addi r5, r9, 0x0
/* 81405340 | 38 89 04 00 */	addi r4, r9, 0x400
.L_81405344:
/* 81405344 | 55 7F 15 BA */	clrlslwi r31, r11, 24, 2
/* 81405348 | 56 3D D5 BA */	rlwinm r29, r17, 26, 22, 29
/* 8140534C | 54 1A 15 BA */	clrlslwi r26, r0, 24, 2
/* 81405350 | 55 79 D5 BA */	rlwinm r25, r11, 26, 22, 29
/* 81405354 | 55 56 15 BA */	clrlslwi r22, r10, 24, 2
/* 81405358 | 56 34 55 BA */	rlwinm r20, r17, 10, 22, 29
/* 8140535C | 55 73 95 BA */	rlwinm r19, r11, 18, 22, 29
/* 81405360 | 55 6C 55 BA */	rlwinm r12, r11, 10, 22, 29
/* 81405364 | 56 32 15 BA */	clrlslwi r18, r17, 24, 2
/* 81405368 | 56 37 95 BA */	rlwinm r23, r17, 18, 22, 29
/* 8140536C | 55 51 D5 BA */	rlwinm r17, r10, 26, 22, 29
/* 81405370 | 54 0B 95 BA */	rlwinm r11, r0, 18, 22, 29
/* 81405374 | 54 1C 55 BA */	rlwinm r28, r0, 10, 22, 29
/* 81405378 | 55 5B 95 BA */	rlwinm r27, r10, 18, 22, 29
/* 8140537C | 55 58 55 BA */	rlwinm r24, r10, 10, 22, 29
/* 81405380 | 54 15 D5 BA */	rlwinm r21, r0, 26, 22, 29
/* 81405384 | 7F E8 F8 2E */	lwzx r31, r8, r31
/* 81405388 | 37 DE FF FF */	subic. r30, r30, 0x1
/* 8140538C | 7F A7 E8 2E */	lwzx r29, r7, r29
/* 81405390 | 7C 04 D8 2E */	lwzx r0, r4, r27
/* 81405394 | 7D 45 E0 2E */	lwzx r10, r5, r28
/* 81405398 | 7F FB EA 78 */	xor r27, r31, r29
/* 8140539C | 7F 48 D0 2E */	lwzx r26, r8, r26
/* 814053A0 | 7D 40 02 78 */	xor r0, r10, r0
/* 814053A4 | 7D 45 C0 2E */	lwzx r10, r5, r24
/* 814053A8 | 7F 7B 02 78 */	xor r27, r27, r0
/* 814053AC | 7C 04 B8 2E */	lwzx r0, r4, r23
/* 814053B0 | 7F 27 C8 2E */	lwzx r25, r7, r25
/* 814053B4 | 7D 40 02 78 */	xor r0, r10, r0
/* 814053B8 | 7E C8 B0 2E */	lwzx r22, r8, r22
/* 814053BC | 7F 57 CA 78 */	xor r23, r26, r25
/* 814053C0 | 7D 47 A8 2E */	lwzx r10, r7, r21
/* 814053C4 | 7E 85 A0 2E */	lwzx r20, r5, r20
/* 814053C8 | 7E F7 02 78 */	xor r23, r23, r0
/* 814053CC | 7E 64 98 2E */	lwzx r19, r4, r19
/* 814053D0 | 7E D5 52 78 */	xor r21, r22, r10
/* 814053D4 | 83 23 00 10 */	lwz r25, 0x10(r3)
/* 814053D8 | 7E 93 9A 78 */	xor r19, r20, r19
/* 814053DC | 83 03 00 14 */	lwz r24, 0x14(r3)
/* 814053E0 | 7E 48 90 2E */	lwzx r18, r8, r18
/* 814053E4 | 7E B3 9A 78 */	xor r19, r21, r19
/* 814053E8 | 7E 27 88 2E */	lwzx r17, r7, r17
/* 814053EC | 7F 20 DA 78 */	xor r0, r25, r27
/* 814053F0 | 7D 85 60 2E */	lwzx r12, r5, r12
/* 814053F4 | 7F 0A BA 78 */	xor r10, r24, r23
/* 814053F8 | 7D 64 58 2E */	lwzx r11, r4, r11
/* 814053FC | 7E 51 8A 78 */	xor r17, r18, r17
/* 81405400 | 82 83 00 18 */	lwz r20, 0x18(r3)
/* 81405404 | 7D 8B 5A 78 */	xor r11, r12, r11
/* 81405408 | 82 43 00 1C */	lwz r18, 0x1c(r3)
/* 8140540C | 7E 2C 5A 78 */	xor r12, r17, r11
/* 81405410 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81405414 | 7E 8B 9A 78 */	xor r11, r20, r19
/* 81405418 | 7E 4C 62 78 */	xor r12, r18, r12
/* 8140541C | 41 82 00 D8 */	beq .L_814054F4
/* 81405420 | 55 91 15 BA */	clrlslwi r17, r12, 24, 2
/* 81405424 | 55 72 D5 BA */	rlwinm r18, r11, 26, 22, 29
/* 81405428 | 54 1D 15 BA */	clrlslwi r29, r0, 24, 2
/* 8140542C | 55 59 15 BA */	clrlslwi r25, r10, 24, 2
/* 81405430 | 55 77 55 BA */	rlwinm r23, r11, 10, 22, 29
/* 81405434 | 55 75 15 BA */	clrlslwi r21, r11, 24, 2
/* 81405438 | 55 7A 95 BA */	rlwinm r26, r11, 18, 22, 29
/* 8140543C | 55 54 D5 BA */	rlwinm r20, r10, 26, 22, 29
/* 81405440 | 54 0B 95 BA */	rlwinm r11, r0, 18, 22, 29
/* 81405444 | 54 13 55 BA */	rlwinm r19, r0, 10, 22, 29
/* 81405448 | 55 9C D5 BA */	rlwinm r28, r12, 26, 22, 29
/* 8140544C | 55 96 95 BA */	rlwinm r22, r12, 18, 22, 29
/* 81405450 | 55 8C 55 BA */	rlwinm r12, r12, 10, 22, 29
/* 81405454 | 55 5F 95 BA */	rlwinm r31, r10, 18, 22, 29
/* 81405458 | 55 5B 55 BA */	rlwinm r27, r10, 10, 22, 29
/* 8140545C | 54 18 D5 BA */	rlwinm r24, r0, 26, 22, 29
/* 81405460 | 7E 28 88 2E */	lwzx r17, r8, r17
/* 81405464 | 7E 47 90 2E */	lwzx r18, r7, r18
/* 81405468 | 7D 45 98 2E */	lwzx r10, r5, r19
/* 8140546C | 7C 04 F8 2E */	lwzx r0, r4, r31
/* 81405470 | 7E 33 92 78 */	xor r19, r17, r18
/* 81405474 | 7F A8 E8 2E */	lwzx r29, r8, r29
/* 81405478 | 7D 40 02 78 */	xor r0, r10, r0
/* 8140547C | 7D 45 D8 2E */	lwzx r10, r5, r27
/* 81405480 | 7E 7F 02 78 */	xor r31, r19, r0
/* 81405484 | 7C 04 D0 2E */	lwzx r0, r4, r26
/* 81405488 | 7F 87 E0 2E */	lwzx r28, r7, r28
/* 8140548C | 7D 40 02 78 */	xor r0, r10, r0
/* 81405490 | 7F 28 C8 2E */	lwzx r25, r8, r25
/* 81405494 | 7D 47 C0 2E */	lwzx r10, r7, r24
/* 81405498 | 7F BA E2 78 */	xor r26, r29, r28
/* 8140549C | 7E E5 B8 2E */	lwzx r23, r5, r23
/* 814054A0 | 7F 5A 02 78 */	xor r26, r26, r0
/* 814054A4 | 7E C4 B0 2E */	lwzx r22, r4, r22
/* 814054A8 | 7F 38 52 78 */	xor r24, r25, r10
/* 814054AC | 82 23 00 00 */	lwz r17, 0x0(r3)
/* 814054B0 | 83 63 00 04 */	lwz r27, 0x4(r3)
/* 814054B4 | 7E F6 B2 78 */	xor r22, r23, r22
/* 814054B8 | 7E A8 A8 2E */	lwzx r21, r8, r21
/* 814054BC | 7F 16 B2 78 */	xor r22, r24, r22
/* 814054C0 | 7E 87 A0 2E */	lwzx r20, r7, r20
/* 814054C4 | 7E 20 FA 78 */	xor r0, r17, r31
/* 814054C8 | 7D 85 60 2E */	lwzx r12, r5, r12
/* 814054CC | 7F 6A D2 78 */	xor r10, r27, r26
/* 814054D0 | 7D 64 58 2E */	lwzx r11, r4, r11
/* 814054D4 | 7E B4 A2 78 */	xor r20, r21, r20
/* 814054D8 | 82 A3 00 08 */	lwz r21, 0x8(r3)
/* 814054DC | 7D 8B 5A 78 */	xor r11, r12, r11
/* 814054E0 | 81 83 00 0C */	lwz r12, 0xc(r3)
/* 814054E4 | 7E 8B 5A 78 */	xor r11, r20, r11
/* 814054E8 | 7E B1 B2 78 */	xor r17, r21, r22
/* 814054EC | 7D 8B 5A 78 */	xor r11, r12, r11
/* 814054F0 | 4B FF FE 54 */	b .L_81405344
.L_814054F4:
/* 814054F4 | 3B C9 10 00 */	addi r30, r9, 0x1000
/* 814054F8 | 55 94 15 BA */	clrlslwi r20, r12, 24, 2
/* 814054FC | 54 18 15 BA */	clrlslwi r24, r0, 24, 2
/* 81405500 | 54 1F 55 BA */	rlwinm r31, r0, 10, 22, 29
/* 81405504 | 54 05 D5 BA */	rlwinm r5, r0, 26, 22, 29
/* 81405508 | 54 1D 95 BA */	rlwinm r29, r0, 18, 22, 29
/* 8140550C | 55 7A 15 BA */	clrlslwi r26, r11, 24, 2
/* 81405510 | 55 5B D5 BA */	rlwinm r27, r10, 26, 22, 29
/* 81405514 | 55 97 D5 BA */	rlwinm r23, r12, 26, 22, 29
/* 81405518 | 7C 1E A0 2E */	lwzx r0, r30, r20
/* 8140551C | 55 99 95 BA */	rlwinm r25, r12, 18, 22, 29
/* 81405520 | 55 9C 55 BA */	rlwinm r28, r12, 10, 22, 29
/* 81405524 | 55 75 D5 BA */	rlwinm r21, r11, 26, 22, 29
/* 81405528 | 55 56 95 BA */	rlwinm r22, r10, 18, 22, 29
/* 8140552C | 7F 3E C8 2E */	lwzx r25, r30, r25
/* 81405530 | 55 49 55 BA */	rlwinm r9, r10, 10, 22, 29
/* 81405534 | 55 47 15 BA */	clrlslwi r7, r10, 24, 2
/* 81405538 | 7D 5E F8 2E */	lwzx r10, r30, r31
/* 8140553C | 54 1F 06 3E */	clrlwi r31, r0, 24
/* 81405540 | 7F 5E D0 2E */	lwzx r26, r30, r26
/* 81405544 | 7F 7E D8 2E */	lwzx r27, r30, r27
/* 81405548 | 55 68 95 BA */	rlwinm r8, r11, 18, 22, 29
/* 8140554C | 55 64 55 BA */	rlwinm r4, r11, 10, 22, 29
/* 81405550 | 7D 7E A8 2E */	lwzx r11, r30, r21
/* 81405554 | 7C 1E B0 2E */	lwzx r0, r30, r22
/* 81405558 | 57 39 02 1E */	rlwinm r25, r25, 0, 8, 15
/* 8140555C | 55 6C 04 2E */	rlwinm r12, r11, 0, 16, 23
/* 81405560 | 55 4B 00 0E */	clrrwi r11, r10, 24
/* 81405564 | 54 0A 02 1E */	rlwinm r10, r0, 0, 8, 15
/* 81405568 | 7F 1E C0 2E */	lwzx r24, r30, r24
/* 8140556C | 7C 1E 48 2E */	lwzx r0, r30, r9
/* 81405570 | 57 5A 06 3E */	clrlwi r26, r26, 24
/* 81405574 | 57 09 06 3E */	clrlwi r9, r24, 24
/* 81405578 | 7E FE B8 2E */	lwzx r23, r30, r23
/* 8140557C | 7F 1E 40 2E */	lwzx r24, r30, r8
/* 81405580 | 57 7B 04 2E */	rlwinm r27, r27, 0, 16, 23
/* 81405584 | 56 E8 04 2E */	rlwinm r8, r23, 0, 16, 23
/* 81405588 | 7E FE 38 2E */	lwzx r23, r30, r7
/* 8140558C | 54 07 00 0E */	clrrwi r7, r0, 24
/* 81405590 | 7C 1E 28 2E */	lwzx r0, r30, r5
/* 81405594 | 57 05 02 1E */	rlwinm r5, r24, 0, 8, 15
/* 81405598 | 7F 1E 20 2E */	lwzx r24, r30, r4
/* 8140559C | 7F 9E E0 2E */	lwzx r28, r30, r28
/* 814055A0 | 7D 29 42 78 */	xor r9, r9, r8
/* 814055A4 | 7F DE E8 2E */	lwzx r30, r30, r29
/* 814055A8 | 7F F6 62 78 */	xor r22, r31, r12
/* 814055AC | 7D 6A 52 78 */	xor r10, r11, r10
/* 814055B0 | 7C E8 2A 78 */	xor r8, r7, r5
/* 814055B4 | 57 18 00 0E */	clrrwi r24, r24, 24
/* 814055B8 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 814055BC | 54 00 04 2E */	rlwinm r0, r0, 0, 16, 23
/* 814055C0 | 7E CB 52 78 */	xor r11, r22, r10
/* 814055C4 | 7C 87 02 78 */	xor r7, r4, r0
/* 814055C8 | 7F 05 CA 78 */	xor r5, r24, r25
/* 814055CC | 7D 29 42 78 */	xor r9, r9, r8
/* 814055D0 | 81 43 00 04 */	lwz r10, 0x4(r3)
/* 814055D4 | 57 9D 00 0E */	clrrwi r29, r28, 24
/* 814055D8 | 57 CC 02 1E */	rlwinm r12, r30, 0, 8, 15
/* 814055DC | 7D 52 4A 78 */	xor r18, r10, r9
/* 814055E0 | 7F 44 DA 78 */	xor r4, r26, r27
/* 814055E4 | 7F A0 62 78 */	xor r0, r29, r12
/* 814055E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814055EC | 81 03 00 08 */	lwz r8, 0x8(r3)
/* 814055F0 | 7C E5 2A 78 */	xor r5, r7, r5
/* 814055F4 | 7D 91 5A 78 */	xor r17, r12, r11
/* 814055F8 | 56 4B 46 3E */	srwi r11, r18, 24
/* 814055FC | 7D 13 2A 78 */	xor r19, r8, r5
/* 81405600 | 56 4A 86 3E */	extrwi r10, r18, 8, 8
/* 81405604 | 56 38 46 3E */	srwi r24, r17, 24
/* 81405608 | 56 37 86 3E */	extrwi r23, r17, 8, 8
/* 8140560C | 56 2C C6 3E */	extrwi r12, r17, 8, 16
/* 81405610 | 56 49 C6 3E */	extrwi r9, r18, 8, 16
/* 81405614 | 56 68 46 3E */	srwi r8, r19, 24
/* 81405618 | 56 67 86 3E */	extrwi r7, r19, 8, 8
/* 8140561C | 56 65 C6 3E */	extrwi r5, r19, 8, 16
/* 81405620 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81405624 | 7C 80 02 78 */	xor r0, r4, r0
/* 81405628 | 9B 06 00 00 */	stb r24, 0x0(r6)
/* 8140562C | 7C 74 02 78 */	xor r20, r3, r0
/* 81405630 | 56 84 46 3E */	srwi r4, r20, 24
/* 81405634 | 9A E6 00 01 */	stb r23, 0x1(r6)
/* 81405638 | 56 83 86 3E */	extrwi r3, r20, 8, 8
/* 8140563C | 56 80 C6 3E */	extrwi r0, r20, 8, 16
/* 81405640 | 99 86 00 02 */	stb r12, 0x2(r6)
/* 81405644 | 9A 26 00 03 */	stb r17, 0x3(r6)
/* 81405648 | 99 66 00 04 */	stb r11, 0x4(r6)
/* 8140564C | 99 46 00 05 */	stb r10, 0x5(r6)
/* 81405650 | 99 26 00 06 */	stb r9, 0x6(r6)
/* 81405654 | 9A 46 00 07 */	stb r18, 0x7(r6)
/* 81405658 | 99 06 00 08 */	stb r8, 0x8(r6)
/* 8140565C | 98 E6 00 09 */	stb r7, 0x9(r6)
/* 81405660 | 98 A6 00 0A */	stb r5, 0xa(r6)
/* 81405664 | 9A 66 00 0B */	stb r19, 0xb(r6)
/* 81405668 | 98 86 00 0C */	stb r4, 0xc(r6)
/* 8140566C | 98 66 00 0D */	stb r3, 0xd(r6)
/* 81405670 | 98 06 00 0E */	stb r0, 0xe(r6)
/* 81405674 | 9A 86 00 0F */	stb r20, 0xf(r6)
/* 81405678 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140567C | 48 1F 3E 69 */	bl _restgpr_17
/* 81405680 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81405684 | 7C 08 03 A6 */	mtlr r0
/* 81405688 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140568C | 4E 80 00 20 */	blr
.endfn ATERM_81405254

# .text:0x7414 | 0x81405690 | size: 0x43C
.fn ATERM_81405690, global
/* 81405690 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81405694 | 7C 08 02 A6 */	mflr r0
/* 81405698 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140569C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814056A0 | 48 1F 3D F9 */	bl _savegpr_17
/* 814056A4 | 89 85 00 06 */	lbz r12, 0x6(r5)
/* 814056A8 | 3D 20 81 61 */	lis r9, lbl_81610BC8@ha
/* 814056AC | 89 65 00 04 */	lbz r11, 0x4(r5)
/* 814056B0 | 39 29 0B C8 */	addi r9, r9, lbl_81610BC8@l
/* 814056B4 | 89 45 00 05 */	lbz r10, 0x5(r5)
/* 814056B8 | 55 97 40 2E */	slwi r23, r12, 8
/* 814056BC | 89 85 00 0A */	lbz r12, 0xa(r5)
/* 814056C0 | 55 76 C0 0E */	slwi r22, r11, 24
/* 814056C4 | 55 55 80 1E */	slwi r21, r10, 16
/* 814056C8 | 89 65 00 08 */	lbz r11, 0x8(r5)
/* 814056CC | 89 45 00 09 */	lbz r10, 0x9(r5)
/* 814056D0 | 55 93 40 2E */	slwi r19, r12, 8
/* 814056D4 | 89 05 00 02 */	lbz r8, 0x2(r5)
/* 814056D8 | 55 72 C0 0E */	slwi r18, r11, 24
/* 814056DC | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 814056E0 | 55 51 80 1E */	slwi r17, r10, 16
/* 814056E4 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814056E8 | 55 08 40 2E */	slwi r8, r8, 8
/* 814056EC | 89 85 00 0E */	lbz r12, 0xe(r5)
/* 814056F0 | 7C 9E 0E 70 */	srawi r30, r4, 1
/* 814056F4 | 89 65 00 0C */	lbz r11, 0xc(r5)
/* 814056F8 | 54 E7 C0 0E */	slwi r7, r7, 24
/* 814056FC | 89 45 00 0D */	lbz r10, 0xd(r5)
/* 81405700 | 54 00 80 1E */	slwi r0, r0, 16
/* 81405704 | 8B 25 00 03 */	lbz r25, 0x3(r5)
/* 81405708 | 55 8C 40 2E */	slwi r12, r12, 8
/* 8140570C | 8B 05 00 07 */	lbz r24, 0x7(r5)
/* 81405710 | 55 6B C0 0E */	slwi r11, r11, 24
/* 81405714 | 8A 85 00 0B */	lbz r20, 0xb(r5)
/* 81405718 | 7F 3A 42 78 */	xor r26, r25, r8
/* 8140571C | 88 A5 00 0F */	lbz r5, 0xf(r5)
/* 81405720 | 7C F9 02 78 */	xor r25, r7, r0
/* 81405724 | 7E 47 8A 78 */	xor r7, r18, r17
/* 81405728 | 55 4A 80 1E */	slwi r10, r10, 16
/* 8140572C | 7E 88 9A 78 */	xor r8, r20, r19
/* 81405730 | 7C A5 62 78 */	xor r5, r5, r12
/* 81405734 | 7D 60 52 78 */	xor r0, r11, r10
/* 81405738 | 7F 17 BA 78 */	xor r23, r24, r23
/* 8140573C | 7E D5 AA 78 */	xor r21, r22, r21
/* 81405740 | 7D 08 3A 78 */	xor r8, r8, r7
/* 81405744 | 81 63 00 08 */	lwz r11, 0x8(r3)
/* 81405748 | 7F 51 CA 78 */	xor r17, r26, r25
/* 8140574C | 82 43 00 00 */	lwz r18, 0x0(r3)
/* 81405750 | 7C A5 02 78 */	xor r5, r5, r0
/* 81405754 | 7D 6B 42 78 */	xor r11, r11, r8
/* 81405758 | 81 83 00 04 */	lwz r12, 0x4(r3)
/* 8140575C | 7E EA AA 78 */	xor r10, r23, r21
/* 81405760 | 80 E3 00 0C */	lwz r7, 0xc(r3)
/* 81405764 | 7D 8A 52 78 */	xor r10, r12, r10
/* 81405768 | 7E 40 8A 78 */	xor r0, r18, r17
/* 8140576C | 7C EC 2A 78 */	xor r12, r7, r5
/* 81405770 | 39 09 20 00 */	addi r8, r9, 0x2000
/* 81405774 | 38 E9 1C 00 */	addi r7, r9, 0x1c00
/* 81405778 | 38 A9 14 00 */	addi r5, r9, 0x1400
/* 8140577C | 38 89 18 00 */	addi r4, r9, 0x1800
.L_81405780:
/* 81405780 | 55 5F 15 BA */	clrlslwi r31, r10, 24, 2
/* 81405784 | 55 7D D5 BA */	rlwinm r29, r11, 26, 22, 29
/* 81405788 | 55 53 95 BA */	rlwinm r19, r10, 18, 22, 29
/* 8140578C | 54 12 15 BA */	clrlslwi r18, r0, 24, 2
/* 81405790 | 55 51 D5 BA */	rlwinm r17, r10, 26, 22, 29
/* 81405794 | 54 1C 55 BA */	rlwinm r28, r0, 10, 22, 29
/* 81405798 | 55 58 55 BA */	rlwinm r24, r10, 10, 22, 29
/* 8140579C | 55 9B 95 BA */	rlwinm r27, r12, 18, 22, 29
/* 814057A0 | 54 17 95 BA */	rlwinm r23, r0, 18, 22, 29
/* 814057A4 | 54 15 D5 BA */	rlwinm r21, r0, 26, 22, 29
/* 814057A8 | 55 7A 15 BA */	clrlslwi r26, r11, 24, 2
/* 814057AC | 55 74 55 BA */	rlwinm r20, r11, 10, 22, 29
/* 814057B0 | 55 99 D5 BA */	rlwinm r25, r12, 26, 22, 29
/* 814057B4 | 55 96 15 BA */	clrlslwi r22, r12, 24, 2
/* 814057B8 | 55 8C 55 BA */	rlwinm r12, r12, 10, 22, 29
/* 814057BC | 55 6B 95 BA */	rlwinm r11, r11, 18, 22, 29
/* 814057C0 | 7F E8 F8 2E */	lwzx r31, r8, r31
/* 814057C4 | 37 DE FF FF */	subic. r30, r30, 0x1
/* 814057C8 | 7F A7 E8 2E */	lwzx r29, r7, r29
/* 814057CC | 7C 04 D8 2E */	lwzx r0, r4, r27
/* 814057D0 | 7D 45 E0 2E */	lwzx r10, r5, r28
/* 814057D4 | 7F FB EA 78 */	xor r27, r31, r29
/* 814057D8 | 7F 48 D0 2E */	lwzx r26, r8, r26
/* 814057DC | 7D 40 02 78 */	xor r0, r10, r0
/* 814057E0 | 7D 45 C0 2E */	lwzx r10, r5, r24
/* 814057E4 | 7F 7B 02 78 */	xor r27, r27, r0
/* 814057E8 | 7C 04 B8 2E */	lwzx r0, r4, r23
/* 814057EC | 7F 27 C8 2E */	lwzx r25, r7, r25
/* 814057F0 | 7D 40 02 78 */	xor r0, r10, r0
/* 814057F4 | 7E C8 B0 2E */	lwzx r22, r8, r22
/* 814057F8 | 7F 57 CA 78 */	xor r23, r26, r25
/* 814057FC | 7D 47 A8 2E */	lwzx r10, r7, r21
/* 81405800 | 7E 85 A0 2E */	lwzx r20, r5, r20
/* 81405804 | 7E F7 02 78 */	xor r23, r23, r0
/* 81405808 | 7E 64 98 2E */	lwzx r19, r4, r19
/* 8140580C | 7E D5 52 78 */	xor r21, r22, r10
/* 81405810 | 83 23 00 10 */	lwz r25, 0x10(r3)
/* 81405814 | 7E 93 9A 78 */	xor r19, r20, r19
/* 81405818 | 83 03 00 14 */	lwz r24, 0x14(r3)
/* 8140581C | 7E 48 90 2E */	lwzx r18, r8, r18
/* 81405820 | 7E B3 9A 78 */	xor r19, r21, r19
/* 81405824 | 7E 27 88 2E */	lwzx r17, r7, r17
/* 81405828 | 7F 20 DA 78 */	xor r0, r25, r27
/* 8140582C | 7D 85 60 2E */	lwzx r12, r5, r12
/* 81405830 | 7F 0A BA 78 */	xor r10, r24, r23
/* 81405834 | 7D 64 58 2E */	lwzx r11, r4, r11
/* 81405838 | 7E 51 8A 78 */	xor r17, r18, r17
/* 8140583C | 82 83 00 18 */	lwz r20, 0x18(r3)
/* 81405840 | 7D 8B 5A 78 */	xor r11, r12, r11
/* 81405844 | 82 43 00 1C */	lwz r18, 0x1c(r3)
/* 81405848 | 7E 2C 5A 78 */	xor r12, r17, r11
/* 8140584C | 38 63 00 20 */	addi r3, r3, 0x20
/* 81405850 | 7E 8B 9A 78 */	xor r11, r20, r19
/* 81405854 | 7E 4C 62 78 */	xor r12, r18, r12
/* 81405858 | 41 82 00 D8 */	beq .L_81405930
/* 8140585C | 55 51 15 BA */	clrlslwi r17, r10, 24, 2
/* 81405860 | 55 72 D5 BA */	rlwinm r18, r11, 26, 22, 29
/* 81405864 | 55 56 95 BA */	rlwinm r22, r10, 18, 22, 29
/* 81405868 | 54 15 15 BA */	clrlslwi r21, r0, 24, 2
/* 8140586C | 55 54 D5 BA */	rlwinm r20, r10, 26, 22, 29
/* 81405870 | 54 13 55 BA */	rlwinm r19, r0, 10, 22, 29
/* 81405874 | 55 5B 55 BA */	rlwinm r27, r10, 10, 22, 29
/* 81405878 | 55 9F 95 BA */	rlwinm r31, r12, 18, 22, 29
/* 8140587C | 54 1A 95 BA */	rlwinm r26, r0, 18, 22, 29
/* 81405880 | 54 18 D5 BA */	rlwinm r24, r0, 26, 22, 29
/* 81405884 | 55 7D 15 BA */	clrlslwi r29, r11, 24, 2
/* 81405888 | 55 77 55 BA */	rlwinm r23, r11, 10, 22, 29
/* 8140588C | 55 9C D5 BA */	rlwinm r28, r12, 26, 22, 29
/* 81405890 | 55 99 15 BA */	clrlslwi r25, r12, 24, 2
/* 81405894 | 55 8C 55 BA */	rlwinm r12, r12, 10, 22, 29
/* 81405898 | 55 6B 95 BA */	rlwinm r11, r11, 18, 22, 29
/* 8140589C | 7E 28 88 2E */	lwzx r17, r8, r17
/* 814058A0 | 7E 47 90 2E */	lwzx r18, r7, r18
/* 814058A4 | 7D 45 98 2E */	lwzx r10, r5, r19
/* 814058A8 | 7C 04 F8 2E */	lwzx r0, r4, r31
/* 814058AC | 7E 33 92 78 */	xor r19, r17, r18
/* 814058B0 | 7F A8 E8 2E */	lwzx r29, r8, r29
/* 814058B4 | 7D 40 02 78 */	xor r0, r10, r0
/* 814058B8 | 7D 45 D8 2E */	lwzx r10, r5, r27
/* 814058BC | 7E 7F 02 78 */	xor r31, r19, r0
/* 814058C0 | 7C 04 D0 2E */	lwzx r0, r4, r26
/* 814058C4 | 7F 87 E0 2E */	lwzx r28, r7, r28
/* 814058C8 | 7D 40 02 78 */	xor r0, r10, r0
/* 814058CC | 7F 28 C8 2E */	lwzx r25, r8, r25
/* 814058D0 | 7D 47 C0 2E */	lwzx r10, r7, r24
/* 814058D4 | 7F BA E2 78 */	xor r26, r29, r28
/* 814058D8 | 7E E5 B8 2E */	lwzx r23, r5, r23
/* 814058DC | 7F 5A 02 78 */	xor r26, r26, r0
/* 814058E0 | 7E C4 B0 2E */	lwzx r22, r4, r22
/* 814058E4 | 7F 38 52 78 */	xor r24, r25, r10
/* 814058E8 | 82 23 00 00 */	lwz r17, 0x0(r3)
/* 814058EC | 7E F6 B2 78 */	xor r22, r23, r22
/* 814058F0 | 83 63 00 04 */	lwz r27, 0x4(r3)
/* 814058F4 | 7E A8 A8 2E */	lwzx r21, r8, r21
/* 814058F8 | 7F 16 B2 78 */	xor r22, r24, r22
/* 814058FC | 7E 87 A0 2E */	lwzx r20, r7, r20
/* 81405900 | 7E 20 FA 78 */	xor r0, r17, r31
/* 81405904 | 7D 85 60 2E */	lwzx r12, r5, r12
/* 81405908 | 7F 6A D2 78 */	xor r10, r27, r26
/* 8140590C | 7D 64 58 2E */	lwzx r11, r4, r11
/* 81405910 | 7E B4 A2 78 */	xor r20, r21, r20
/* 81405914 | 82 E3 00 08 */	lwz r23, 0x8(r3)
/* 81405918 | 7D 8B 5A 78 */	xor r11, r12, r11
/* 8140591C | 82 A3 00 0C */	lwz r21, 0xc(r3)
/* 81405920 | 7E 8C 5A 78 */	xor r12, r20, r11
/* 81405924 | 7E EB B2 78 */	xor r11, r23, r22
/* 81405928 | 7E AC 62 78 */	xor r12, r21, r12
/* 8140592C | 4B FF FE 54 */	b .L_81405780
.L_81405930:
/* 81405930 | 3B C9 24 00 */	addi r30, r9, 0x2400
/* 81405934 | 55 54 15 BA */	clrlslwi r20, r10, 24, 2
/* 81405938 | 54 1A 15 BA */	clrlslwi r26, r0, 24, 2
/* 8140593C | 54 1F 55 BA */	rlwinm r31, r0, 10, 22, 29
/* 81405940 | 55 78 15 BA */	clrlslwi r24, r11, 24, 2
/* 81405944 | 54 08 95 BA */	rlwinm r8, r0, 18, 22, 29
/* 81405948 | 54 05 D5 BA */	rlwinm r5, r0, 26, 22, 29
/* 8140594C | 55 59 95 BA */	rlwinm r25, r10, 18, 22, 29
/* 81405950 | 55 5B D5 BA */	rlwinm r27, r10, 26, 22, 29
/* 81405954 | 55 49 55 BA */	rlwinm r9, r10, 10, 22, 29
/* 81405958 | 55 97 D5 BA */	rlwinm r23, r12, 26, 22, 29
/* 8140595C | 55 9C 55 BA */	rlwinm r28, r12, 10, 22, 29
/* 81405960 | 7C 1E A0 2E */	lwzx r0, r30, r20
/* 81405964 | 55 75 D5 BA */	rlwinm r21, r11, 26, 22, 29
/* 81405968 | 7D 5E F8 2E */	lwzx r10, r30, r31
/* 8140596C | 55 96 95 BA */	rlwinm r22, r12, 18, 22, 29
/* 81405970 | 54 1F 06 3E */	clrlwi r31, r0, 24
/* 81405974 | 7F 3E C8 2E */	lwzx r25, r30, r25
/* 81405978 | 7F 5E D0 2E */	lwzx r26, r30, r26
/* 8140597C | 55 64 55 BA */	rlwinm r4, r11, 10, 22, 29
/* 81405980 | 55 7D 95 BA */	rlwinm r29, r11, 18, 22, 29
/* 81405984 | 7F 7E D8 2E */	lwzx r27, r30, r27
/* 81405988 | 7D 7E A8 2E */	lwzx r11, r30, r21
/* 8140598C | 55 87 15 BA */	clrlslwi r7, r12, 24, 2
/* 81405990 | 7C 1E B0 2E */	lwzx r0, r30, r22
/* 81405994 | 57 39 02 1E */	rlwinm r25, r25, 0, 8, 15
/* 81405998 | 55 6C 04 2E */	rlwinm r12, r11, 0, 16, 23
/* 8140599C | 55 4B 00 0E */	clrrwi r11, r10, 24
/* 814059A0 | 54 0A 02 1E */	rlwinm r10, r0, 0, 8, 15
/* 814059A4 | 7F 1E C0 2E */	lwzx r24, r30, r24
/* 814059A8 | 7C 1E 48 2E */	lwzx r0, r30, r9
/* 814059AC | 57 5A 06 3E */	clrlwi r26, r26, 24
/* 814059B0 | 57 09 06 3E */	clrlwi r9, r24, 24
/* 814059B4 | 7E FE B8 2E */	lwzx r23, r30, r23
/* 814059B8 | 7F 1E 40 2E */	lwzx r24, r30, r8
/* 814059BC | 57 7B 04 2E */	rlwinm r27, r27, 0, 16, 23
/* 814059C0 | 56 E8 04 2E */	rlwinm r8, r23, 0, 16, 23
/* 814059C4 | 7E FE 38 2E */	lwzx r23, r30, r7
/* 814059C8 | 54 07 00 0E */	clrrwi r7, r0, 24
/* 814059CC | 7C 1E 28 2E */	lwzx r0, r30, r5
/* 814059D0 | 57 05 02 1E */	rlwinm r5, r24, 0, 8, 15
/* 814059D4 | 7F 1E 20 2E */	lwzx r24, r30, r4
/* 814059D8 | 7F 9E E0 2E */	lwzx r28, r30, r28
/* 814059DC | 7D 29 42 78 */	xor r9, r9, r8
/* 814059E0 | 7F DE E8 2E */	lwzx r30, r30, r29
/* 814059E4 | 7F F6 62 78 */	xor r22, r31, r12
/* 814059E8 | 7D 6A 52 78 */	xor r10, r11, r10
/* 814059EC | 7C E8 2A 78 */	xor r8, r7, r5
/* 814059F0 | 57 18 00 0E */	clrrwi r24, r24, 24
/* 814059F4 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 814059F8 | 54 00 04 2E */	rlwinm r0, r0, 0, 16, 23
/* 814059FC | 7E CB 52 78 */	xor r11, r22, r10
/* 81405A00 | 7C 87 02 78 */	xor r7, r4, r0
/* 81405A04 | 7F 05 CA 78 */	xor r5, r24, r25
/* 81405A08 | 7D 29 42 78 */	xor r9, r9, r8
/* 81405A0C | 81 43 00 04 */	lwz r10, 0x4(r3)
/* 81405A10 | 57 9D 00 0E */	clrrwi r29, r28, 24
/* 81405A14 | 57 CC 02 1E */	rlwinm r12, r30, 0, 8, 15
/* 81405A18 | 7D 52 4A 78 */	xor r18, r10, r9
/* 81405A1C | 7F 44 DA 78 */	xor r4, r26, r27
/* 81405A20 | 7F A0 62 78 */	xor r0, r29, r12
/* 81405A24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81405A28 | 81 03 00 08 */	lwz r8, 0x8(r3)
/* 81405A2C | 7C E5 2A 78 */	xor r5, r7, r5
/* 81405A30 | 7D 91 5A 78 */	xor r17, r12, r11
/* 81405A34 | 56 4B 46 3E */	srwi r11, r18, 24
/* 81405A38 | 7D 13 2A 78 */	xor r19, r8, r5
/* 81405A3C | 56 4A 86 3E */	extrwi r10, r18, 8, 8
/* 81405A40 | 56 38 46 3E */	srwi r24, r17, 24
/* 81405A44 | 56 37 86 3E */	extrwi r23, r17, 8, 8
/* 81405A48 | 56 2C C6 3E */	extrwi r12, r17, 8, 16
/* 81405A4C | 56 49 C6 3E */	extrwi r9, r18, 8, 16
/* 81405A50 | 56 68 46 3E */	srwi r8, r19, 24
/* 81405A54 | 56 67 86 3E */	extrwi r7, r19, 8, 8
/* 81405A58 | 56 65 C6 3E */	extrwi r5, r19, 8, 16
/* 81405A5C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81405A60 | 7C 80 02 78 */	xor r0, r4, r0
/* 81405A64 | 9B 06 00 00 */	stb r24, 0x0(r6)
/* 81405A68 | 7C 74 02 78 */	xor r20, r3, r0
/* 81405A6C | 56 84 46 3E */	srwi r4, r20, 24
/* 81405A70 | 9A E6 00 01 */	stb r23, 0x1(r6)
/* 81405A74 | 56 83 86 3E */	extrwi r3, r20, 8, 8
/* 81405A78 | 56 80 C6 3E */	extrwi r0, r20, 8, 16
/* 81405A7C | 99 86 00 02 */	stb r12, 0x2(r6)
/* 81405A80 | 9A 26 00 03 */	stb r17, 0x3(r6)
/* 81405A84 | 99 66 00 04 */	stb r11, 0x4(r6)
/* 81405A88 | 99 46 00 05 */	stb r10, 0x5(r6)
/* 81405A8C | 99 26 00 06 */	stb r9, 0x6(r6)
/* 81405A90 | 9A 46 00 07 */	stb r18, 0x7(r6)
/* 81405A94 | 99 06 00 08 */	stb r8, 0x8(r6)
/* 81405A98 | 98 E6 00 09 */	stb r7, 0x9(r6)
/* 81405A9C | 98 A6 00 0A */	stb r5, 0xa(r6)
/* 81405AA0 | 9A 66 00 0B */	stb r19, 0xb(r6)
/* 81405AA4 | 98 86 00 0C */	stb r4, 0xc(r6)
/* 81405AA8 | 98 66 00 0D */	stb r3, 0xd(r6)
/* 81405AAC | 98 06 00 0E */	stb r0, 0xe(r6)
/* 81405AB0 | 9A 86 00 0F */	stb r20, 0xf(r6)
/* 81405AB4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81405AB8 | 48 1F 3A 2D */	bl _restgpr_17
/* 81405ABC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81405AC0 | 7C 08 03 A6 */	mtlr r0
/* 81405AC4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81405AC8 | 4E 80 00 20 */	blr
.endfn ATERM_81405690

# .text:0x7850 | 0x81405ACC | size: 0x240
.fn ATERM_81405ACC, global
/* 81405ACC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81405AD0 | 7C 08 02 A6 */	mflr r0
/* 81405AD4 | 54 A7 18 38 */	slwi r7, r5, 3
/* 81405AD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81405ADC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81405AE0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81405AE4 | 7C BE 2B 78 */	mr r30, r5
/* 81405AE8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81405AEC | 7C 9D 23 78 */	mr r29, r4
/* 81405AF0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81405AF4 | 7C 7C 1B 78 */	mr r28, r3
/* 81405AF8 | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 81405AFC | 7C 06 3A 14 */	add r0, r6, r7
/* 81405B00 | 7C 00 38 40 */	cmplw r0, r7
/* 81405B04 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81405B08 | 54 C0 EE BE */	extrwi r0, r6, 6, 23
/* 81405B0C | 40 80 00 10 */	bge .L_81405B1C
/* 81405B10 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81405B14 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81405B18 | 90 C3 00 14 */	stw r6, 0x14(r3)
.L_81405B1C:
/* 81405B1C | 80 E3 00 14 */	lwz r7, 0x14(r3)
/* 81405B20 | 54 A6 1F 7E */	srwi r6, r5, 29
/* 81405B24 | 23 E0 00 40 */	subfic r31, r0, 0x40
/* 81405B28 | 7C C7 32 14 */	add r6, r7, r6
/* 81405B2C | 7C 05 F8 40 */	cmplw r5, r31
/* 81405B30 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 81405B34 | 41 80 00 F4 */	blt .L_81405C28
/* 81405B38 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81405B3C | 38 E0 00 00 */	li r7, 0x0
/* 81405B40 | 41 82 00 B4 */	beq .L_81405BF4
/* 81405B44 | 28 1F 00 08 */	cmplwi r31, 0x8
/* 81405B48 | 39 1F FF F8 */	subi r8, r31, 0x8
/* 81405B4C | 40 81 00 74 */	ble .L_81405BC0
/* 81405B50 | 38 A8 00 07 */	addi r5, r8, 0x7
/* 81405B54 | 7C C3 02 14 */	add r6, r3, r0
/* 81405B58 | 54 A5 E8 FE */	srwi r5, r5, 3
/* 81405B5C | 7F A9 EB 78 */	mr r9, r29
/* 81405B60 | 38 C6 00 18 */	addi r6, r6, 0x18
/* 81405B64 | 7C A9 03 A6 */	mtctr r5
/* 81405B68 | 28 08 00 00 */	cmplwi r8, 0x0
/* 81405B6C | 40 81 00 54 */	ble .L_81405BC0
.L_81405B70:
/* 81405B70 | 88 A9 00 00 */	lbz r5, 0x0(r9)
/* 81405B74 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 81405B78 | 98 A6 00 00 */	stb r5, 0x0(r6)
/* 81405B7C | 88 A9 00 01 */	lbz r5, 0x1(r9)
/* 81405B80 | 98 A6 00 01 */	stb r5, 0x1(r6)
/* 81405B84 | 88 A9 00 02 */	lbz r5, 0x2(r9)
/* 81405B88 | 98 A6 00 02 */	stb r5, 0x2(r6)
/* 81405B8C | 88 A9 00 03 */	lbz r5, 0x3(r9)
/* 81405B90 | 98 A6 00 03 */	stb r5, 0x3(r6)
/* 81405B94 | 88 A9 00 04 */	lbz r5, 0x4(r9)
/* 81405B98 | 98 A6 00 04 */	stb r5, 0x4(r6)
/* 81405B9C | 88 A9 00 05 */	lbz r5, 0x5(r9)
/* 81405BA0 | 98 A6 00 05 */	stb r5, 0x5(r6)
/* 81405BA4 | 88 A9 00 06 */	lbz r5, 0x6(r9)
/* 81405BA8 | 98 A6 00 06 */	stb r5, 0x6(r6)
/* 81405BAC | 88 A9 00 07 */	lbz r5, 0x7(r9)
/* 81405BB0 | 39 29 00 08 */	addi r9, r9, 0x8
/* 81405BB4 | 98 A6 00 07 */	stb r5, 0x7(r6)
/* 81405BB8 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81405BBC | 42 00 FF B4 */	bdnz .L_81405B70
.L_81405BC0:
/* 81405BC0 | 7C 63 02 14 */	add r3, r3, r0
/* 81405BC4 | 7C 07 F8 50 */	subf r0, r7, r31
/* 81405BC8 | 7C 63 3A 14 */	add r3, r3, r7
/* 81405BCC | 7C 84 3A 14 */	add r4, r4, r7
/* 81405BD0 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81405BD4 | 7C 09 03 A6 */	mtctr r0
/* 81405BD8 | 7C 07 F8 40 */	cmplw r7, r31
/* 81405BDC | 40 80 00 18 */	bge .L_81405BF4
.L_81405BE0:
/* 81405BE0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81405BE4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81405BE8 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81405BEC | 38 63 00 01 */	addi r3, r3, 0x1
/* 81405BF0 | 42 00 FF F0 */	bdnz .L_81405BE0
.L_81405BF4:
/* 81405BF4 | 7F 83 E3 78 */	mr r3, r28
/* 81405BF8 | 38 9C 00 18 */	addi r4, r28, 0x18
/* 81405BFC | 48 00 01 11 */	bl ATERM_81405D0C
/* 81405C00 | 48 00 00 14 */	b .L_81405C14
.L_81405C04:
/* 81405C04 | 7F 83 E3 78 */	mr r3, r28
/* 81405C08 | 7C 9D FA 14 */	add r4, r29, r31
/* 81405C0C | 48 00 01 01 */	bl ATERM_81405D0C
/* 81405C10 | 3B FF 00 40 */	addi r31, r31, 0x40
.L_81405C14:
/* 81405C14 | 38 1F 00 3F */	addi r0, r31, 0x3f
/* 81405C18 | 7C 00 F0 40 */	cmplw r0, r30
/* 81405C1C | 41 80 FF E8 */	blt .L_81405C04
/* 81405C20 | 38 00 00 00 */	li r0, 0x0
/* 81405C24 | 48 00 00 08 */	b .L_81405C2C
.L_81405C28:
/* 81405C28 | 3B E0 00 00 */	li r31, 0x0
.L_81405C2C:
/* 81405C2C | 7D 1F F0 51 */	subf. r8, r31, r30
/* 81405C30 | 38 A0 00 00 */	li r5, 0x0
/* 81405C34 | 41 82 00 B8 */	beq .L_81405CEC
/* 81405C38 | 28 08 00 08 */	cmplwi r8, 0x8
/* 81405C3C | 38 C8 FF F8 */	subi r6, r8, 0x8
/* 81405C40 | 40 81 00 74 */	ble .L_81405CB4
/* 81405C44 | 38 66 00 07 */	addi r3, r6, 0x7
/* 81405C48 | 7C 9C 02 14 */	add r4, r28, r0
/* 81405C4C | 54 63 E8 FE */	srwi r3, r3, 3
/* 81405C50 | 7C FD FA 14 */	add r7, r29, r31
/* 81405C54 | 38 84 00 18 */	addi r4, r4, 0x18
/* 81405C58 | 7C 69 03 A6 */	mtctr r3
/* 81405C5C | 28 06 00 00 */	cmplwi r6, 0x0
/* 81405C60 | 40 81 00 54 */	ble .L_81405CB4
.L_81405C64:
/* 81405C64 | 88 67 00 00 */	lbz r3, 0x0(r7)
/* 81405C68 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 81405C6C | 98 64 00 00 */	stb r3, 0x0(r4)
/* 81405C70 | 88 67 00 01 */	lbz r3, 0x1(r7)
/* 81405C74 | 98 64 00 01 */	stb r3, 0x1(r4)
/* 81405C78 | 88 67 00 02 */	lbz r3, 0x2(r7)
/* 81405C7C | 98 64 00 02 */	stb r3, 0x2(r4)
/* 81405C80 | 88 67 00 03 */	lbz r3, 0x3(r7)
/* 81405C84 | 98 64 00 03 */	stb r3, 0x3(r4)
/* 81405C88 | 88 67 00 04 */	lbz r3, 0x4(r7)
/* 81405C8C | 98 64 00 04 */	stb r3, 0x4(r4)
/* 81405C90 | 88 67 00 05 */	lbz r3, 0x5(r7)
/* 81405C94 | 98 64 00 05 */	stb r3, 0x5(r4)
/* 81405C98 | 88 67 00 06 */	lbz r3, 0x6(r7)
/* 81405C9C | 98 64 00 06 */	stb r3, 0x6(r4)
/* 81405CA0 | 88 67 00 07 */	lbz r3, 0x7(r7)
/* 81405CA4 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 81405CA8 | 98 64 00 07 */	stb r3, 0x7(r4)
/* 81405CAC | 38 84 00 08 */	addi r4, r4, 0x8
/* 81405CB0 | 42 00 FF B4 */	bdnz .L_81405C64
.L_81405CB4:
/* 81405CB4 | 7C 1C 02 14 */	add r0, r28, r0
/* 81405CB8 | 7C 9D FA 14 */	add r4, r29, r31
/* 81405CBC | 7C 60 2A 14 */	add r3, r0, r5
/* 81405CC0 | 7C 05 40 50 */	subf r0, r5, r8
/* 81405CC4 | 7C 85 22 14 */	add r4, r5, r4
/* 81405CC8 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81405CCC | 7C 09 03 A6 */	mtctr r0
/* 81405CD0 | 7C 05 40 40 */	cmplw r5, r8
/* 81405CD4 | 40 80 00 18 */	bge .L_81405CEC
.L_81405CD8:
/* 81405CD8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81405CDC | 38 84 00 01 */	addi r4, r4, 0x1
/* 81405CE0 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81405CE4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81405CE8 | 42 00 FF F0 */	bdnz .L_81405CD8
.L_81405CEC:
/* 81405CEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81405CF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81405CF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81405CF8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81405CFC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81405D00 | 7C 08 03 A6 */	mtlr r0
/* 81405D04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81405D08 | 4E 80 00 20 */	blr
.endfn ATERM_81405ACC

# .text:0x7A90 | 0x81405D0C | size: 0xB40
.fn ATERM_81405D0C, global
/* 81405D0C | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 81405D10 | 7C 08 02 A6 */	mflr r0
/* 81405D14 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 81405D18 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 81405D1C | 48 1F 37 71 */	bl _savegpr_14
/* 81405D20 | 38 00 00 02 */	li r0, 0x2
/* 81405D24 | 39 81 00 08 */	addi r12, r1, 0x8
/* 81405D28 | 82 23 00 00 */	lwz r17, 0x0(r3)
/* 81405D2C | 39 E0 00 00 */	li r15, 0x0
/* 81405D30 | 82 43 00 04 */	lwz r18, 0x4(r3)
/* 81405D34 | 3A A0 00 00 */	li r21, 0x0
/* 81405D38 | 82 63 00 08 */	lwz r19, 0x8(r3)
/* 81405D3C | 39 C0 00 00 */	li r14, 0x0
/* 81405D40 | 82 83 00 0C */	lwz r20, 0xc(r3)
/* 81405D44 | 7C 09 03 A6 */	mtctr r0
.L_81405D48:
/* 81405D48 | 7E 04 72 14 */	add r16, r4, r14
/* 81405D4C | 7E C4 70 AE */	lbzx r22, r4, r14
/* 81405D50 | 88 D0 00 01 */	lbz r6, 0x1(r16)
/* 81405D54 | 38 0F 00 01 */	addi r0, r15, 0x1
/* 81405D58 | 54 0A 10 3A */	slwi r10, r0, 2
/* 81405D5C | 38 EF 00 02 */	addi r7, r15, 0x2
/* 81405D60 | 50 D6 44 2E */	rlwimi r22, r6, 8, 16, 23
/* 81405D64 | 89 30 00 02 */	lbz r9, 0x2(r16)
/* 81405D68 | 88 D0 00 03 */	lbz r6, 0x3(r16)
/* 81405D6C | 38 AF 00 03 */	addi r5, r15, 0x3
/* 81405D70 | 51 36 82 1E */	rlwimi r22, r9, 16, 8, 15
/* 81405D74 | 89 10 00 06 */	lbz r8, 0x6(r16)
/* 81405D78 | 50 D6 C0 0E */	rlwimi r22, r6, 24, 0, 7
/* 81405D7C | 88 D0 00 05 */	lbz r6, 0x5(r16)
/* 81405D80 | 89 70 00 04 */	lbz r11, 0x4(r16)
/* 81405D84 | 3B 8F 00 04 */	addi r28, r15, 0x4
/* 81405D88 | 50 CB 44 2E */	rlwimi r11, r6, 8, 16, 23
/* 81405D8C | 7E CC A9 2E */	stwx r22, r12, r21
/* 81405D90 | 51 0B 82 1E */	rlwimi r11, r8, 16, 8, 15
/* 81405D94 | 89 10 00 07 */	lbz r8, 0x7(r16)
/* 81405D98 | 89 30 00 0A */	lbz r9, 0xa(r16)
/* 81405D9C | 3B 4F 00 05 */	addi r26, r15, 0x5
/* 81405DA0 | 51 0B C0 0E */	rlwimi r11, r8, 24, 0, 7
/* 81405DA4 | 88 D0 00 0E */	lbz r6, 0xe(r16)
/* 81405DA8 | 7D 6C 51 2E */	stwx r11, r12, r10
/* 81405DAC | 57 8A 10 3A */	slwi r10, r28, 2
/* 81405DB0 | 8A F0 00 09 */	lbz r23, 0x9(r16)
/* 81405DB4 | 54 E7 10 3A */	slwi r7, r7, 2
/* 81405DB8 | 89 10 00 08 */	lbz r8, 0x8(r16)
/* 81405DBC | 54 A5 10 3A */	slwi r5, r5, 2
/* 81405DC0 | 52 E8 44 2E */	rlwimi r8, r23, 8, 16, 23
/* 81405DC4 | 8B B0 00 0B */	lbz r29, 0xb(r16)
/* 81405DC8 | 51 28 82 1E */	rlwimi r8, r9, 16, 8, 15
/* 81405DCC | 57 49 10 3A */	slwi r9, r26, 2
/* 81405DD0 | 53 A8 C0 0E */	rlwimi r8, r29, 24, 0, 7
/* 81405DD4 | 8B 90 00 0D */	lbz r28, 0xd(r16)
/* 81405DD8 | 89 70 00 0C */	lbz r11, 0xc(r16)
/* 81405DDC | 3B 0F 00 06 */	addi r24, r15, 0x6
/* 81405DE0 | 53 8B 44 2E */	rlwimi r11, r28, 8, 16, 23
/* 81405DE4 | 7D 0C 39 2E */	stwx r8, r12, r7
/* 81405DE8 | 50 CB 82 1E */	rlwimi r11, r6, 16, 8, 15
/* 81405DEC | 8B 50 00 0F */	lbz r26, 0xf(r16)
/* 81405DF0 | 3A CF 00 07 */	addi r22, r15, 0x7
/* 81405DF4 | 88 10 00 12 */	lbz r0, 0x12(r16)
/* 81405DF8 | 53 4B C0 0E */	rlwimi r11, r26, 24, 0, 7
/* 81405DFC | 88 D0 00 11 */	lbz r6, 0x11(r16)
/* 81405E00 | 88 F0 00 10 */	lbz r7, 0x10(r16)
/* 81405E04 | 39 EF 00 08 */	addi r15, r15, 0x8
/* 81405E08 | 50 C7 44 2E */	rlwimi r7, r6, 8, 16, 23
/* 81405E0C | 7D 6C 29 2E */	stwx r11, r12, r5
/* 81405E10 | 50 07 82 1E */	rlwimi r7, r0, 16, 8, 15
/* 81405E14 | 88 D0 00 13 */	lbz r6, 0x13(r16)
/* 81405E18 | 88 10 00 15 */	lbz r0, 0x15(r16)
/* 81405E1C | 3A B5 00 20 */	addi r21, r21, 0x20
/* 81405E20 | 50 C7 C0 0E */	rlwimi r7, r6, 24, 0, 7
/* 81405E24 | 88 B0 00 14 */	lbz r5, 0x14(r16)
/* 81405E28 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 81405E2C | 8B 70 00 16 */	lbz r27, 0x16(r16)
/* 81405E30 | 7C EC 51 2E */	stwx r7, r12, r10
/* 81405E34 | 39 CE 00 20 */	addi r14, r14, 0x20
/* 81405E38 | 88 D0 00 17 */	lbz r6, 0x17(r16)
/* 81405E3C | 53 65 82 1E */	rlwimi r5, r27, 16, 8, 15
/* 81405E40 | 88 10 00 19 */	lbz r0, 0x19(r16)
/* 81405E44 | 50 C5 C0 0E */	rlwimi r5, r6, 24, 0, 7
/* 81405E48 | 88 F0 00 18 */	lbz r7, 0x18(r16)
/* 81405E4C | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 81405E50 | 8B 30 00 1A */	lbz r25, 0x1a(r16)
/* 81405E54 | 7C AC 49 2E */	stwx r5, r12, r9
/* 81405E58 | 88 D0 00 1B */	lbz r6, 0x1b(r16)
/* 81405E5C | 53 27 82 1E */	rlwimi r7, r25, 16, 8, 15
/* 81405E60 | 88 10 00 1D */	lbz r0, 0x1d(r16)
/* 81405E64 | 88 B0 00 1C */	lbz r5, 0x1c(r16)
/* 81405E68 | 50 C7 C0 0E */	rlwimi r7, r6, 24, 0, 7
/* 81405E6C | 57 06 10 3A */	slwi r6, r24, 2
/* 81405E70 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 81405E74 | 8A F0 00 1E */	lbz r23, 0x1e(r16)
/* 81405E78 | 88 10 00 1F */	lbz r0, 0x1f(r16)
/* 81405E7C | 52 E5 82 1E */	rlwimi r5, r23, 16, 8, 15
/* 81405E80 | 7C EC 31 2E */	stwx r7, r12, r6
/* 81405E84 | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 81405E88 | 56 C0 10 3A */	slwi r0, r22, 2
/* 81405E8C | 7C AC 01 2E */	stwx r5, r12, r0
/* 81405E90 | 42 00 FE B8 */	bdnz .L_81405D48
/* 81405E94 | 83 21 00 08 */	lwz r25, 0x8(r1)
/* 81405E98 | 7E 45 98 38 */	and r5, r18, r19
/* 81405E9C | 7E 80 90 78 */	andc r0, r20, r18
/* 81405EA0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81405EA4 | 3C D9 D7 6B */	subis r6, r25, 0x2895
/* 81405EA8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81405EAC | 7C C6 8A 14 */	add r6, r6, r17
/* 81405EB0 | 7C A0 03 78 */	or r0, r5, r0
/* 81405EB4 | 7C A6 02 14 */	add r5, r6, r0
/* 81405EB8 | 3C E4 E8 C8 */	subis r7, r4, 0x1738
/* 81405EBC | 3A 25 A4 78 */	subi r17, r5, 0x5b88
/* 81405EC0 | 3D 9C 24 20 */	addis r12, r28, 0x2420
/* 81405EC4 | 56 20 38 3E */	rotlwi r0, r17, 7
/* 81405EC8 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81405ECC | 7C 00 92 14 */	add r0, r0, r18
/* 81405ED0 | 81 41 00 18 */	lwz r10, 0x18(r1)
/* 81405ED4 | 7C 06 90 38 */	and r6, r0, r18
/* 81405ED8 | 7C E7 A2 14 */	add r7, r7, r20
/* 81405EDC | 7E 65 00 78 */	andc r5, r19, r0
/* 81405EE0 | 3D 0A F5 7C */	subis r8, r10, 0xa84
/* 81405EE4 | 7C C5 2B 78 */	or r5, r6, r5
/* 81405EE8 | 7D EC 9A 14 */	add r15, r12, r19
/* 81405EEC | 7C A7 2A 14 */	add r5, r7, r5
/* 81405EF0 | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 81405EF4 | 3A 85 B7 56 */	subi r20, r5, 0x48aa
/* 81405EF8 | 3D 7F C1 BE */	subis r11, r31, 0x3e42
/* 81405EFC | 56 89 60 3E */	rotlwi r9, r20, 12
/* 81405F00 | 7E 28 02 14 */	add r17, r8, r0
/* 81405F04 | 7D 29 02 14 */	add r9, r9, r0
/* 81405F08 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81405F0C | 7E 4C 48 78 */	andc r12, r18, r9
/* 81405F10 | 7E 4B 92 14 */	add r18, r11, r18
/* 81405F14 | 7D 2E 00 38 */	and r14, r9, r0
/* 81405F18 | 3C C7 47 88 */	addis r6, r7, 0x4788
/* 81405F1C | 7D CC 63 78 */	or r12, r14, r12
/* 81405F20 | 83 61 00 24 */	lwz r27, 0x24(r1)
/* 81405F24 | 7D 6F 62 14 */	add r11, r15, r12
/* 81405F28 | 7D E6 4A 14 */	add r15, r6, r9
/* 81405F2C | 3A 6B 70 DB */	addi r19, r11, 0x70db
/* 81405F30 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81405F34 | 56 68 88 3E */	rotrwi r8, r19, 15
/* 81405F38 | 3C C5 A8 30 */	subis r6, r5, 0x57d0
/* 81405F3C | 7D 08 4A 14 */	add r8, r8, r9
/* 81405F40 | 3D 9B FD 47 */	subis r12, r27, 0x2b9
/* 81405F44 | 7D 10 48 38 */	and r16, r8, r9
/* 81405F48 | 3D 7E 69 81 */	addis r11, r30, 0x6981
/* 81405F4C | 7C 00 40 78 */	andc r0, r0, r8
/* 81405F50 | 7D C6 42 14 */	add r14, r6, r8
/* 81405F54 | 7E 00 03 78 */	or r0, r16, r0
/* 81405F58 | 7C D2 02 14 */	add r6, r18, r0
/* 81405F5C | 3A 46 CE EE */	subi r18, r6, 0x3112
/* 81405F60 | 56 46 B0 3E */	rotrwi r6, r18, 10
/* 81405F64 | 7C C6 42 14 */	add r6, r6, r8
/* 81405F68 | 7C D0 40 38 */	and r16, r6, r8
/* 81405F6C | 7D 20 30 78 */	andc r0, r9, r6
/* 81405F70 | 7D 8C 32 14 */	add r12, r12, r6
/* 81405F74 | 7E 00 03 78 */	or r0, r16, r0
/* 81405F78 | 7D 31 02 14 */	add r9, r17, r0
/* 81405F7C | 38 09 0F AF */	addi r0, r9, 0xfaf
/* 81405F80 | 54 00 38 3E */	rotlwi r0, r0, 7
/* 81405F84 | 7C 00 32 14 */	add r0, r0, r6
/* 81405F88 | 7C 09 30 38 */	and r9, r0, r6
/* 81405F8C | 7D 08 00 78 */	andc r8, r8, r0
/* 81405F90 | 7D 6B 02 14 */	add r11, r11, r0
/* 81405F94 | 7D 28 43 78 */	or r8, r9, r8
/* 81405F98 | 7D 0F 42 14 */	add r8, r15, r8
/* 81405F9C | 39 28 C6 2A */	subi r9, r8, 0x39d6
/* 81405FA0 | 55 29 60 3E */	rotlwi r9, r9, 12
/* 81405FA4 | 7D 29 02 14 */	add r9, r9, r0
/* 81405FA8 | 7D 28 00 38 */	and r8, r9, r0
/* 81405FAC | 7C C6 48 78 */	andc r6, r6, r9
/* 81405FB0 | 7D 06 33 78 */	or r6, r8, r6
/* 81405FB4 | 7C CE 32 14 */	add r6, r14, r6
/* 81405FB8 | 39 06 46 13 */	addi r8, r6, 0x4613
/* 81405FBC | 55 0F 88 3E */	rotrwi r15, r8, 15
/* 81405FC0 | 7D EF 4A 14 */	add r15, r15, r9
/* 81405FC4 | 7D E6 48 38 */	and r6, r15, r9
/* 81405FC8 | 7C 00 78 78 */	andc r0, r0, r15
/* 81405FCC | 7C C0 03 78 */	or r0, r6, r0
/* 81405FD0 | 7C CC 02 14 */	add r6, r12, r0
/* 81405FD4 | 38 C6 95 01 */	subi r6, r6, 0x6aff
/* 81405FD8 | 54 CE B0 3E */	rotrwi r14, r6, 10
/* 81405FDC | 7D CE 7A 14 */	add r14, r14, r15
/* 81405FE0 | 7D C6 78 38 */	and r6, r14, r15
/* 81405FE4 | 7D 20 70 78 */	andc r0, r9, r14
/* 81405FE8 | 7C C0 03 78 */	or r0, r6, r0
/* 81405FEC | 7C CB 02 14 */	add r6, r11, r0
/* 81405FF0 | 38 06 98 D8 */	subi r0, r6, 0x6728
/* 81405FF4 | 54 12 38 3E */	rotlwi r18, r0, 7
/* 81405FF8 | 81 61 00 2C */	lwz r11, 0x2c(r1)
/* 81405FFC | 7E 52 72 14 */	add r18, r18, r14
/* 81406000 | 80 C1 00 34 */	lwz r6, 0x34(r1)
/* 81406004 | 3D 8B 8B 45 */	subis r12, r11, 0x74bb
/* 81406008 | 83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8140600C | 7E 50 70 38 */	and r16, r18, r14
/* 81406010 | 7D E0 90 78 */	andc r0, r15, r18
/* 81406014 | 7D 2C 4A 14 */	add r9, r12, r9
/* 81406018 | 81 01 00 30 */	lwz r8, 0x30(r1)
/* 8140601C | 7E 00 03 78 */	or r0, r16, r0
/* 81406020 | 83 41 00 38 */	lwz r26, 0x38(r1)
/* 81406024 | 7D 29 02 14 */	add r9, r9, r0
/* 81406028 | 3D 88 FF FF */	subis r12, r8, 0x1
/* 8140602C | 39 29 F7 AF */	subi r9, r9, 0x851
/* 81406030 | 3C 1A 6B 90 */	addis r0, r26, 0x6b90
/* 81406034 | 55 30 60 3E */	rotlwi r16, r9, 12
/* 81406038 | 7E 8C 7A 14 */	add r20, r12, r15
/* 8140603C | 7E 10 92 14 */	add r16, r16, r18
/* 81406040 | 3E 3D FD 98 */	subis r17, r29, 0x268
/* 81406044 | 7E 0F 90 38 */	and r15, r16, r18
/* 81406048 | 3E 66 89 5D */	subis r19, r6, 0x76a3
/* 8140604C | 7D C9 80 78 */	andc r9, r14, r16
/* 81406050 | 7C 00 92 14 */	add r0, r0, r18
/* 81406054 | 7D EF 4B 78 */	or r15, r15, r9
/* 81406058 | 7D D3 72 14 */	add r14, r19, r14
/* 8140605C | 7D F4 7A 14 */	add r15, r20, r15
/* 81406060 | 81 21 00 44 */	lwz r9, 0x44(r1)
/* 81406064 | 39 EF 5B B1 */	addi r15, r15, 0x5bb1
/* 81406068 | 7E B1 82 14 */	add r21, r17, r16
/* 8140606C | 55 EF 88 3E */	rotrwi r15, r15, 15
/* 81406070 | 81 81 00 40 */	lwz r12, 0x40(r1)
/* 81406074 | 7D EF 82 14 */	add r15, r15, r16
/* 81406078 | 3E 69 49 B4 */	addis r19, r9, 0x49b4
/* 8140607C | 7D F6 80 38 */	and r22, r15, r16
/* 81406080 | 3E 2C A6 79 */	subis r17, r12, 0x5987
/* 81406084 | 7E 52 78 78 */	andc r18, r18, r15
/* 81406088 | 7E D2 93 78 */	or r18, r22, r18
/* 8140608C | 7E 91 7A 14 */	add r20, r17, r15
/* 81406090 | 7D CE 92 14 */	add r14, r14, r18
/* 81406094 | 3E 24 F6 1E */	subis r17, r4, 0x9e2
/* 81406098 | 39 CE D7 BE */	subi r14, r14, 0x2842
/* 8140609C | 55 CE B0 3E */	rotrwi r14, r14, 10
/* 814060A0 | 7D CE 7A 14 */	add r14, r14, r15
/* 814060A4 | 7D D2 78 38 */	and r18, r14, r15
/* 814060A8 | 7E 10 70 78 */	andc r16, r16, r14
/* 814060AC | 7E 73 72 14 */	add r19, r19, r14
/* 814060B0 | 7E 50 83 78 */	or r16, r18, r16
/* 814060B4 | 7E 00 82 14 */	add r16, r0, r16
/* 814060B8 | 3A 50 11 22 */	addi r18, r16, 0x1122
/* 814060BC | 56 40 38 3E */	rotlwi r0, r18, 7
/* 814060C0 | 7C 00 72 14 */	add r0, r0, r14
/* 814060C4 | 7C 10 70 38 */	and r16, r0, r14
/* 814060C8 | 7D EF 00 78 */	andc r15, r15, r0
/* 814060CC | 7E 51 02 14 */	add r18, r17, r0
/* 814060D0 | 7E 0F 7B 78 */	or r15, r16, r15
/* 814060D4 | 7D F5 7A 14 */	add r15, r21, r15
/* 814060D8 | 3A 0F 71 93 */	addi r16, r15, 0x7193
/* 814060DC | 56 11 60 3E */	rotlwi r17, r16, 12
/* 814060E0 | 7E 31 02 14 */	add r17, r17, r0
/* 814060E4 | 7E 35 88 F8 */	nor r21, r17, r17
/* 814060E8 | 7E 2F 00 38 */	and r15, r17, r0
/* 814060EC | 7E AE 70 38 */	and r14, r21, r14
/* 814060F0 | 7D EE 73 78 */	or r14, r15, r14
/* 814060F4 | 7D D4 72 14 */	add r14, r20, r14
/* 814060F8 | 39 EE 43 8E */	addi r15, r14, 0x438e
/* 814060FC | 55 F0 88 3E */	rotrwi r16, r15, 15
/* 81406100 | 7E 10 8A 14 */	add r16, r16, r17
/* 81406104 | 7E 0F 80 F8 */	nor r15, r16, r16
/* 81406108 | 7E 0E 88 38 */	and r14, r16, r17
/* 8140610C | 7E 14 A8 38 */	and r20, r16, r21
/* 81406110 | 7D E0 00 38 */	and r0, r15, r0
/* 81406114 | 7D C0 03 78 */	or r0, r14, r0
/* 81406118 | 7D D3 02 14 */	add r14, r19, r0
/* 8140611C | 39 CE 08 21 */	addi r14, r14, 0x821
/* 81406120 | 55 D6 B0 3E */	rotrwi r22, r14, 10
/* 81406124 | 7E D6 82 14 */	add r22, r22, r16
/* 81406128 | 7E C0 88 38 */	and r0, r22, r17
/* 8140612C | 7C 00 A3 78 */	or r0, r0, r20
/* 81406130 | 7D D2 02 14 */	add r14, r18, r0
/* 81406134 | 38 0E 25 62 */	addi r0, r14, 0x2562
/* 81406138 | 54 14 28 3E */	rotlwi r20, r0, 5
/* 8140613C | 7E 94 B2 14 */	add r20, r20, r22
/* 81406140 | 3E 45 C0 41 */	subis r18, r5, 0x3fbf
/* 81406144 | 7E C0 78 38 */	and r0, r22, r15
/* 81406148 | 7E 93 80 38 */	and r19, r20, r16
/* 8140614C | 3D C6 26 5E */	addis r14, r6, 0x265e
/* 81406150 | 7D F2 8A 14 */	add r15, r18, r17
/* 81406154 | 3E 59 E9 B7 */	subis r18, r25, 0x1649
/* 81406158 | 7E 60 03 78 */	or r0, r19, r0
/* 8140615C | 3E 67 D6 2F */	subis r19, r7, 0x29d1
/* 81406160 | 7D EF 02 14 */	add r15, r15, r0
/* 81406164 | 7E 52 B2 14 */	add r18, r18, r22
/* 81406168 | 3A 2F B3 40 */	subi r17, r15, 0x4cc0
/* 8140616C | 7E 80 B0 78 */	andc r0, r20, r22
/* 81406170 | 7D EE 82 14 */	add r15, r14, r16
/* 81406174 | 3E 08 02 44 */	addis r16, r8, 0x244
/* 81406178 | 56 2E 48 3E */	rotlwi r14, r17, 9
/* 8140617C | 7E B3 A2 14 */	add r21, r19, r20
/* 81406180 | 7D CE A2 14 */	add r14, r14, r20
/* 81406184 | 3E EC C3 37 */	subis r23, r12, 0x3cc9
/* 81406188 | 7D D1 B0 38 */	and r17, r14, r22
/* 8140618C | 7E 20 03 78 */	or r0, r17, r0
/* 81406190 | 7E 70 72 14 */	add r19, r16, r14
/* 81406194 | 7D EF 02 14 */	add r15, r15, r0
/* 81406198 | 7D D6 A0 78 */	andc r22, r14, r20
/* 8140619C | 3A 0F 5A 51 */	addi r16, r15, 0x5a51
/* 814061A0 | 3E 2A E7 D4 */	subis r17, r10, 0x182c
/* 814061A4 | 56 00 70 3E */	rotlwi r0, r16, 14
/* 814061A8 | 3D E9 D8 A2 */	subis r15, r9, 0x275e
/* 814061AC | 7C 00 72 14 */	add r0, r0, r14
/* 814061B0 | 3E 0B 21 E2 */	addis r16, r11, 0x21e2
/* 814061B4 | 7C 14 A0 38 */	and r20, r0, r20
/* 814061B8 | 7E 96 B3 78 */	or r22, r20, r22
/* 814061BC | 7E D2 B2 14 */	add r22, r18, r22
/* 814061C0 | 7E 4F 02 14 */	add r18, r15, r0
/* 814061C4 | 3A D6 C7 AA */	subi r22, r22, 0x3856
/* 814061C8 | 7C 14 70 78 */	andc r20, r0, r14
/* 814061CC | 56 D6 A0 3E */	rotrwi r22, r22, 12
/* 814061D0 | 3D FF F4 D5 */	subis r15, r31, 0xb2b
/* 814061D4 | 7E D6 02 14 */	add r22, r22, r0
/* 814061D8 | 7E CE 70 38 */	and r14, r22, r14
/* 814061DC | 7D D4 A3 78 */	or r20, r14, r20
/* 814061E0 | 7E 31 B2 14 */	add r17, r17, r22
/* 814061E4 | 7E 95 A2 14 */	add r20, r21, r20
/* 814061E8 | 7E CE 00 78 */	andc r14, r22, r0
/* 814061EC | 3A 94 10 5D */	addi r20, r20, 0x105d
/* 814061F0 | 56 94 28 3E */	rotlwi r20, r20, 5
/* 814061F4 | 7E 94 B2 14 */	add r20, r20, r22
/* 814061F8 | 7E 80 00 38 */	and r0, r20, r0
/* 814061FC | 7C 0E 73 78 */	or r14, r0, r14
/* 81406200 | 7E 10 A2 14 */	add r16, r16, r20
/* 81406204 | 7D D3 72 14 */	add r14, r19, r14
/* 81406208 | 7E 80 B0 78 */	andc r0, r20, r22
/* 8140620C | 39 CE 14 53 */	addi r14, r14, 0x1453
/* 81406210 | 55 CE 48 3E */	rotlwi r14, r14, 9
/* 81406214 | 7D CE A2 14 */	add r14, r14, r20
/* 81406218 | 7D D3 B0 38 */	and r19, r14, r22
/* 8140621C | 7E 60 03 78 */	or r0, r19, r0
/* 81406220 | 7D D5 A0 78 */	andc r21, r14, r20
/* 81406224 | 7E 72 02 14 */	add r19, r18, r0
/* 81406228 | 7E 57 72 14 */	add r18, r23, r14
/* 8140622C | 38 13 E6 81 */	subi r0, r19, 0x197f
/* 81406230 | 54 13 70 3E */	rotlwi r19, r0, 14
/* 81406234 | 7E 73 72 14 */	add r19, r19, r14
/* 81406238 | 7E 60 A0 38 */	and r0, r19, r20
/* 8140623C | 7C 14 AB 78 */	or r20, r0, r21
/* 81406240 | 7E 91 A2 14 */	add r20, r17, r20
/* 81406244 | 7E 2F 9A 14 */	add r17, r15, r19
/* 81406248 | 3A D4 FB C8 */	subi r22, r20, 0x438
/* 8140624C | 7E 60 70 78 */	andc r0, r19, r14
/* 81406250 | 56 CF A0 3E */	rotrwi r15, r22, 12
/* 81406254 | 7D EF 9A 14 */	add r15, r15, r19
/* 81406258 | 7D EE 70 38 */	and r14, r15, r14
/* 8140625C | 7D C0 03 78 */	or r0, r14, r0
/* 81406260 | 7E 10 02 14 */	add r16, r16, r0
/* 81406264 | 7D EE 98 78 */	andc r14, r15, r19
/* 81406268 | 3A 90 CD E6 */	subi r20, r16, 0x321a
/* 8140626C | 56 80 28 3E */	rotlwi r0, r20, 5
/* 81406270 | 7C 00 7A 14 */	add r0, r0, r15
/* 81406274 | 7C 10 98 38 */	and r16, r0, r19
/* 81406278 | 7E 0E 73 78 */	or r14, r16, r14
/* 8140627C | 7D D2 72 14 */	add r14, r18, r14
/* 81406280 | 7C 10 78 78 */	andc r16, r0, r15
/* 81406284 | 39 CE 07 D6 */	addi r14, r14, 0x7d6
/* 81406288 | 55 D6 48 3E */	rotlwi r22, r14, 9
/* 8140628C | 7E D6 02 14 */	add r22, r22, r0
/* 81406290 | 7E CE 78 38 */	and r14, r22, r15
/* 81406294 | 7D CE 83 78 */	or r14, r14, r16
/* 81406298 | 7D D1 72 14 */	add r14, r17, r14
/* 8140629C | 3A 6E 0D 87 */	addi r19, r14, 0xd87
/* 814062A0 | 56 71 70 3E */	rotlwi r17, r19, 14
/* 814062A4 | 3E 5E 45 5A */	addis r18, r30, 0x455a
/* 814062A8 | 7E 31 B2 14 */	add r17, r17, r22
/* 814062AC | 7E CE 00 78 */	andc r14, r22, r0
/* 814062B0 | 7E 30 00 38 */	and r16, r17, r0
/* 814062B4 | 7D F2 7A 14 */	add r15, r18, r15
/* 814062B8 | 7E 0E 73 78 */	or r14, r16, r14
/* 814062BC | 3E 7D A9 E4 */	subis r19, r29, 0x561c
/* 814062C0 | 7D EF 72 14 */	add r15, r15, r14
/* 814062C4 | 3E 5C FC F0 */	subis r18, r28, 0x310
/* 814062C8 | 39 EF 14 ED */	addi r15, r15, 0x14ed
/* 814062CC | 7C 13 02 14 */	add r0, r19, r0
/* 814062D0 | 55 F5 A0 3E */	rotrwi r21, r15, 12
/* 814062D4 | 7E 2E B0 78 */	andc r14, r17, r22
/* 814062D8 | 7E B5 8A 14 */	add r21, r21, r17
/* 814062DC | 3E 1B 67 6F */	addis r16, r27, 0x676f
/* 814062E0 | 7E B4 B0 38 */	and r20, r21, r22
/* 814062E4 | 7E 72 B2 14 */	add r19, r18, r22
/* 814062E8 | 7E 8E 73 78 */	or r14, r20, r14
/* 814062EC | 7E 50 8A 14 */	add r18, r16, r17
/* 814062F0 | 7D C0 72 14 */	add r14, r0, r14
/* 814062F4 | 3D FA 8D 2A */	subis r15, r26, 0x72d6
/* 814062F8 | 38 0E E9 05 */	subi r0, r14, 0x16fb
/* 814062FC | 7E B6 88 78 */	andc r22, r21, r17
/* 81406300 | 54 14 28 3E */	rotlwi r20, r0, 5
/* 81406304 | 7E 0F AA 14 */	add r16, r15, r21
/* 81406308 | 7E 94 AA 14 */	add r20, r20, r21
/* 8140630C | 3D E7 FF FA */	subis r15, r7, 0x6
/* 81406310 | 7E 91 88 38 */	and r17, r20, r17
/* 81406314 | 3D DE 87 72 */	subis r14, r30, 0x788e
/* 81406318 | 7E 36 B3 78 */	or r22, r17, r22
/* 8140631C | 3C 06 6D 9D */	addis r0, r6, 0x6d9d
/* 81406320 | 7E 73 B2 14 */	add r19, r19, r22
/* 81406324 | 7E 91 A8 78 */	andc r17, r20, r21
/* 81406328 | 3A D3 A3 F8 */	subi r22, r19, 0x5c08
/* 8140632C | 3E EC FD E5 */	subis r23, r12, 0x21b
/* 81406330 | 56 D3 48 3E */	rotlwi r19, r22, 9
/* 81406334 | 3F 04 A4 BF */	subis r24, r4, 0x5b41
/* 81406338 | 7E 73 A2 14 */	add r19, r19, r20
/* 8140633C | 7E 75 A8 38 */	and r21, r19, r21
/* 81406340 | 7E B1 8B 78 */	or r17, r21, r17
/* 81406344 | 7E 32 8A 14 */	add r17, r18, r17
/* 81406348 | 7E 75 A0 78 */	andc r21, r19, r20
/* 8140634C | 3A 31 02 D9 */	addi r17, r17, 0x2d9
/* 81406350 | 56 31 70 3E */	rotlwi r17, r17, 14
/* 81406354 | 7E 31 9A 14 */	add r17, r17, r19
/* 81406358 | 7E 32 A0 38 */	and r18, r17, r20
/* 8140635C | 7E 52 AB 78 */	or r18, r18, r21
/* 81406360 | 7E 10 92 14 */	add r16, r16, r18
/* 81406364 | 3A B0 4C 8A */	addi r21, r16, 0x4c8a
/* 81406368 | 56 B0 A0 3E */	rotrwi r16, r21, 12
/* 8140636C | 7E 10 8A 14 */	add r16, r16, r17
/* 81406370 | 7E 72 82 78 */	xor r18, r19, r16
/* 81406374 | 7E 52 8A 78 */	xor r18, r18, r17
/* 81406378 | 7E 54 92 14 */	add r18, r20, r18
/* 8140637C | 7E 92 7A 14 */	add r20, r18, r15
/* 81406380 | 3A 94 39 42 */	addi r20, r20, 0x3942
/* 81406384 | 56 8F 20 3E */	rotlwi r15, r20, 4
/* 81406388 | 7D EF 82 14 */	add r15, r15, r16
/* 8140638C | 7E 32 7A 78 */	xor r18, r17, r15
/* 81406390 | 7E 52 82 78 */	xor r18, r18, r16
/* 81406394 | 7E 53 92 14 */	add r18, r19, r18
/* 81406398 | 7E 72 72 14 */	add r19, r18, r14
/* 8140639C | 3A 73 F6 81 */	subi r19, r19, 0x97f
/* 814063A0 | 56 6E 58 3E */	rotlwi r14, r19, 11
/* 814063A4 | 7D CE 7A 14 */	add r14, r14, r15
/* 814063A8 | 7E 12 72 78 */	xor r18, r16, r14
/* 814063AC | 7E 52 7A 78 */	xor r18, r18, r15
/* 814063B0 | 7E 31 92 14 */	add r17, r17, r18
/* 814063B4 | 7E 31 02 14 */	add r17, r17, r0
/* 814063B8 | 3A 31 61 22 */	addi r17, r17, 0x6122
/* 814063BC | 56 36 80 3E */	rotlwi r22, r17, 16
/* 814063C0 | 7E D6 72 14 */	add r22, r22, r14
/* 814063C4 | 7D E0 B2 78 */	xor r0, r15, r22
/* 814063C8 | 7C 00 72 78 */	xor r0, r0, r14
/* 814063CC | 7C 10 02 14 */	add r0, r16, r0
/* 814063D0 | 7E 00 BA 14 */	add r16, r0, r23
/* 814063D4 | 3A 10 38 0C */	addi r16, r16, 0x380c
/* 814063D8 | 56 17 B8 3E */	rotrwi r23, r16, 9
/* 814063DC | 7E F7 B2 14 */	add r23, r23, r22
/* 814063E0 | 7D C0 BA 78 */	xor r0, r14, r23
/* 814063E4 | 7C 00 B2 78 */	xor r0, r0, r22
/* 814063E8 | 7C 0F 02 14 */	add r0, r15, r0
/* 814063EC | 7D E0 C2 14 */	add r15, r0, r24
/* 814063F0 | 39 EF EA 44 */	subi r15, r15, 0x15bc
/* 814063F4 | 55 F8 20 3E */	rotlwi r24, r15, 4
/* 814063F8 | 3D EA 4B DF */	addis r15, r10, 0x4bdf
/* 814063FC | 7F 18 BA 14 */	add r24, r24, r23
/* 81406400 | 3E 1B F6 BB */	subis r16, r27, 0x945
/* 81406404 | 7E C0 C2 78 */	xor r0, r22, r24
/* 81406408 | 3E 28 BE C0 */	subis r17, r8, 0x4140
/* 8140640C | 7C 00 BA 78 */	xor r0, r0, r23
/* 81406410 | 3E 5D 28 9B */	addis r18, r29, 0x289b
/* 81406414 | 7C 0E 02 14 */	add r0, r14, r0
/* 81406418 | 3E 79 EA A1 */	subis r19, r25, 0x155f
/* 8140641C | 7D C0 7A 14 */	add r14, r0, r15
/* 81406420 | 3E 8B D9 D5 */	subis r20, r11, 0x262b
/* 81406424 | 39 CE CF A9 */	subi r14, r14, 0x3057
/* 81406428 | 3C 1F D4 EF */	subis r0, r31, 0x2b11
/* 8140642C | 55 D5 58 3E */	rotlwi r21, r14, 11
/* 81406430 | 90 01 00 48 */	stw r0, 0x48(r1)
/* 81406434 | 7E B5 C2 14 */	add r21, r21, r24
/* 81406438 | 3C 05 04 88 */	addis r0, r5, 0x488
/* 8140643C | 7E EF AA 78 */	xor r15, r23, r21
/* 81406440 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 81406444 | 7D EF C2 78 */	xor r15, r15, r24
/* 81406448 | 3C 1A E6 DC */	subis r0, r26, 0x1924
/* 8140644C | 7D F6 7A 14 */	add r15, r22, r15
/* 81406450 | 3D C9 1F A2 */	addis r14, r9, 0x1fa2
/* 81406454 | 7E CF 82 14 */	add r22, r15, r16
/* 81406458 | 3A D6 4B 60 */	addi r22, r22, 0x4b60
/* 8140645C | 56 CF 80 3E */	rotlwi r15, r22, 16
/* 81406460 | 7D EF AA 14 */	add r15, r15, r21
/* 81406464 | 7F 10 7A 78 */	xor r16, r24, r15
/* 81406468 | 7E 10 AA 78 */	xor r16, r16, r21
/* 8140646C | 7E 17 82 14 */	add r16, r23, r16
/* 81406470 | 7E F0 8A 14 */	add r23, r16, r17
/* 81406474 | 3A F7 BC 70 */	subi r23, r23, 0x4390
/* 81406478 | 56 F1 B8 3E */	rotrwi r17, r23, 9
/* 8140647C | 7E 31 7A 14 */	add r17, r17, r15
/* 81406480 | 7E B0 8A 78 */	xor r16, r21, r17
/* 81406484 | 7E 10 7A 78 */	xor r16, r16, r15
/* 81406488 | 7E 18 82 14 */	add r16, r24, r16
/* 8140648C | 7F 10 92 14 */	add r24, r16, r18
/* 81406490 | 3B 18 7E C6 */	addi r24, r24, 0x7ec6
/* 81406494 | 57 10 20 3E */	rotlwi r16, r24, 4
/* 81406498 | 7E 10 8A 14 */	add r16, r16, r17
/* 8140649C | 7D F2 82 78 */	xor r18, r15, r16
/* 814064A0 | 7E 52 8A 78 */	xor r18, r18, r17
/* 814064A4 | 7E 55 92 14 */	add r18, r21, r18
/* 814064A8 | 7E B2 9A 14 */	add r21, r18, r19
/* 814064AC | 3A B5 27 FA */	addi r21, r21, 0x27fa
/* 814064B0 | 56 B3 58 3E */	rotlwi r19, r21, 11
/* 814064B4 | 7E 73 82 14 */	add r19, r19, r16
/* 814064B8 | 7E 32 9A 78 */	xor r18, r17, r19
/* 814064BC | 7E 52 82 78 */	xor r18, r18, r16
/* 814064C0 | 7E 4F 92 14 */	add r18, r15, r18
/* 814064C4 | 81 E1 00 48 */	lwz r15, 0x48(r1)
/* 814064C8 | 7D F2 7A 14 */	add r15, r18, r15
/* 814064CC | 39 EF 30 85 */	addi r15, r15, 0x3085
/* 814064D0 | 55 F2 80 3E */	rotlwi r18, r15, 16
/* 814064D4 | 7E 52 9A 14 */	add r18, r18, r19
/* 814064D8 | 7E 0F 92 78 */	xor r15, r16, r18
/* 814064DC | 7D EF 9A 78 */	xor r15, r15, r19
/* 814064E0 | 7E 31 7A 14 */	add r17, r17, r15
/* 814064E4 | 81 E1 00 4C */	lwz r15, 0x4c(r1)
/* 814064E8 | 7E 31 7A 14 */	add r17, r17, r15
/* 814064EC | 3A 31 1D 05 */	addi r17, r17, 0x1d05
/* 814064F0 | 56 31 B8 3E */	rotrwi r17, r17, 9
/* 814064F4 | 7E 31 92 14 */	add r17, r17, r18
/* 814064F8 | 7E 6F 8A 78 */	xor r15, r19, r17
/* 814064FC | 7D EF 92 78 */	xor r15, r15, r18
/* 81406500 | 7D F0 7A 14 */	add r15, r16, r15
/* 81406504 | 7E 0F A2 14 */	add r16, r15, r20
/* 81406508 | 3A 10 D0 39 */	subi r16, r16, 0x2fc7
/* 8140650C | 56 0F 20 3E */	rotlwi r15, r16, 4
/* 81406510 | 7D EF 8A 14 */	add r15, r15, r17
/* 81406514 | 7E 50 7A 78 */	xor r16, r18, r15
/* 81406518 | 7E 10 8A 78 */	xor r16, r16, r17
/* 8140651C | 7E 13 82 14 */	add r16, r19, r16
/* 81406520 | 7E 70 02 14 */	add r19, r16, r0
/* 81406524 | 3A 73 99 E5 */	subi r19, r19, 0x661b
/* 81406528 | 56 60 58 3E */	rotlwi r0, r19, 11
/* 8140652C | 7C 00 7A 14 */	add r0, r0, r15
/* 81406530 | 7E 30 02 78 */	xor r16, r17, r0
/* 81406534 | 7E 10 7A 78 */	xor r16, r16, r15
/* 81406538 | 7E 12 82 14 */	add r16, r18, r16
/* 8140653C | 7E 50 72 14 */	add r18, r16, r14
/* 81406540 | 3A 52 7C F8 */	addi r18, r18, 0x7cf8
/* 81406544 | 56 52 80 3E */	rotlwi r18, r18, 16
/* 81406548 | 7E 52 02 14 */	add r18, r18, r0
/* 8140654C | 3D DB 43 2B */	addis r14, r27, 0x432b
/* 81406550 | 7D F3 92 78 */	xor r19, r15, r18
/* 81406554 | 3E 19 F4 29 */	subis r16, r25, 0xbd7
/* 81406558 | 7E 74 02 78 */	xor r20, r19, r0
/* 8140655C | 3D 8C AB 94 */	subis r12, r12, 0x546c
/* 81406560 | 7D F0 7A 14 */	add r15, r16, r15
/* 81406564 | 3E 7C C4 AC */	subis r19, r28, 0x3b54
/* 81406568 | 7E 11 A2 14 */	add r16, r17, r20
/* 8140656C | 7D CE 02 14 */	add r14, r14, r0
/* 81406570 | 7E 30 9A 14 */	add r17, r16, r19
/* 81406574 | 3E 88 FF F0 */	subis r20, r8, 0x10
/* 81406578 | 3A 31 56 65 */	addi r17, r17, 0x5665
/* 8140657C | 3E 64 85 84 */	subis r19, r4, 0x7a7c
/* 81406580 | 56 30 B8 3E */	rotrwi r16, r17, 9
/* 81406584 | 7D 8C 92 14 */	add r12, r12, r18
/* 81406588 | 7E 10 92 14 */	add r16, r16, r18
/* 8140658C | 3C E7 FC 94 */	subis r7, r7, 0x36c
/* 81406590 | 7E 00 03 38 */	orc r0, r16, r0
/* 81406594 | 3E DA 65 5B */	addis r22, r26, 0x655b
/* 81406598 | 7E 40 02 78 */	xor r0, r18, r0
/* 8140659C | 7C E7 82 14 */	add r7, r7, r16
/* 814065A0 | 7D 0F 02 14 */	add r8, r15, r0
/* 814065A4 | 3E BF 8F 0D */	subis r21, r31, 0x70f3
/* 814065A8 | 39 E8 22 44 */	addi r15, r8, 0x2244
/* 814065AC | 3E 3E 6F A8 */	addis r17, r30, 0x6fa8
/* 814065B0 | 55 E4 30 3E */	rotlwi r4, r15, 6
/* 814065B4 | 7C 84 82 14 */	add r4, r4, r16
/* 814065B8 | 7C 80 93 38 */	orc r0, r4, r18
/* 814065BC | 7E 00 02 78 */	xor r0, r16, r0
/* 814065C0 | 7E D6 22 14 */	add r22, r22, r4
/* 814065C4 | 7D 0E 02 14 */	add r8, r14, r0
/* 814065C8 | 38 08 FF 97 */	subi r0, r8, 0x69
/* 814065CC | 54 08 50 3E */	rotlwi r8, r0, 10
/* 814065D0 | 7D 08 22 14 */	add r8, r8, r4
/* 814065D4 | 7D 00 83 38 */	orc r0, r8, r16
/* 814065D8 | 7C 80 02 78 */	xor r0, r4, r0
/* 814065DC | 7E B5 42 14 */	add r21, r21, r8
/* 814065E0 | 7D 8C 02 14 */	add r12, r12, r0
/* 814065E4 | 3A 4C 23 A7 */	addi r18, r12, 0x23a7
/* 814065E8 | 56 40 78 3E */	rotlwi r0, r18, 15
/* 814065EC | 7C 00 42 14 */	add r0, r0, r8
/* 814065F0 | 7C 04 23 38 */	orc r4, r0, r4
/* 814065F4 | 7D 04 22 78 */	xor r4, r8, r4
/* 814065F8 | 7D F4 02 14 */	add r15, r20, r0
/* 814065FC | 7C 87 22 14 */	add r4, r7, r4
/* 81406600 | 3A 04 A0 39 */	subi r16, r4, 0x5fc7
/* 81406604 | 56 12 A8 3E */	rotrwi r18, r16, 11
/* 81406608 | 7E 52 02 14 */	add r18, r18, r0
/* 8140660C | 7E 44 43 38 */	orc r4, r18, r8
/* 81406610 | 7C 04 22 78 */	xor r4, r0, r4
/* 81406614 | 7D D3 92 14 */	add r14, r19, r18
/* 81406618 | 7C 96 22 14 */	add r4, r22, r4
/* 8140661C | 38 84 59 C3 */	addi r4, r4, 0x59c3
/* 81406620 | 54 90 30 3E */	rotlwi r16, r4, 6
/* 81406624 | 7E 10 92 14 */	add r16, r16, r18
/* 81406628 | 7E 00 03 38 */	orc r0, r16, r0
/* 8140662C | 7E 40 02 78 */	xor r0, r18, r0
/* 81406630 | 7D 91 82 14 */	add r12, r17, r16
/* 81406634 | 7C 95 02 14 */	add r4, r21, r0
/* 81406638 | 39 04 CC 92 */	subi r8, r4, 0x336e
/* 8140663C | 55 08 50 3E */	rotlwi r8, r8, 10
/* 81406640 | 7D 08 82 14 */	add r8, r8, r16
/* 81406644 | 7D 00 93 38 */	orc r0, r8, r18
/* 81406648 | 7E 00 02 78 */	xor r0, r16, r0
/* 8140664C | 7C 8F 02 14 */	add r4, r15, r0
/* 81406650 | 38 04 F4 7D */	subi r0, r4, 0xb83
/* 81406654 | 54 07 78 3E */	rotlwi r7, r0, 15
/* 81406658 | 7C E7 42 14 */	add r7, r7, r8
/* 8140665C | 7C E0 83 38 */	orc r0, r7, r16
/* 81406660 | 7D 00 02 78 */	xor r0, r8, r0
/* 81406664 | 7C 8E 02 14 */	add r4, r14, r0
/* 81406668 | 3A 44 5D D1 */	addi r18, r4, 0x5dd1
/* 8140666C | 56 44 A8 3E */	rotrwi r4, r18, 11
/* 81406670 | 7C 84 3A 14 */	add r4, r4, r7
/* 81406674 | 7C 80 43 38 */	orc r0, r4, r8
/* 81406678 | 7C E0 02 78 */	xor r0, r7, r0
/* 8140667C | 7D 8C 02 14 */	add r12, r12, r0
/* 81406680 | 3A 0C 7E 4F */	addi r16, r12, 0x7e4f
/* 81406684 | 56 00 30 3E */	rotlwi r0, r16, 6
/* 81406688 | 7C 00 22 14 */	add r0, r0, r4
/* 8140668C | 3D 89 FE 2D */	subis r12, r9, 0x1d3
/* 81406690 | 7C 09 3B 38 */	orc r9, r0, r7
/* 81406694 | 7D CC 42 14 */	add r14, r12, r8
/* 81406698 | 3C A5 A3 01 */	subis r5, r5, 0x5cff
/* 8140669C | 7C 88 4A 78 */	xor r8, r4, r9
/* 814066A0 | 3D 2A F7 53 */	subis r9, r10, 0x8ad
/* 814066A4 | 7D 0E 42 14 */	add r8, r14, r8
/* 814066A8 | 7C E5 3A 14 */	add r7, r5, r7
/* 814066AC | 39 08 E6 E0 */	subi r8, r8, 0x1920
/* 814066B0 | 7E 09 02 14 */	add r16, r9, r0
/* 814066B4 | 55 05 50 3E */	rotlwi r5, r8, 10
/* 814066B8 | 3D 9D 4E 08 */	addis r12, r29, 0x4e08
/* 814066BC | 7D 0C 22 14 */	add r8, r12, r4
/* 814066C0 | 3C C6 BD 3B */	subis r6, r6, 0x42c5
/* 814066C4 | 7C A5 02 14 */	add r5, r5, r0
/* 814066C8 | 3D 8B EB 87 */	subis r12, r11, 0x1479
/* 814066CC | 7C A4 23 38 */	orc r4, r5, r4
/* 814066D0 | 81 63 00 00 */	lwz r11, 0x0(r3)
/* 814066D4 | 7C 04 22 78 */	xor r4, r0, r4
/* 814066D8 | 7D E6 2A 14 */	add r15, r6, r5
/* 814066DC | 7C C7 22 14 */	add r6, r7, r4
/* 814066E0 | 81 23 00 08 */	lwz r9, 0x8(r3)
/* 814066E4 | 38 E6 43 14 */	addi r7, r6, 0x4314
/* 814066E8 | 3C 9C 2A D8 */	addis r4, r28, 0x2ad8
/* 814066EC | 54 F2 78 3E */	rotlwi r18, r7, 15
/* 814066F0 | 81 43 00 04 */	lwz r10, 0x4(r3)
/* 814066F4 | 7E 52 2A 14 */	add r18, r18, r5
/* 814066F8 | 38 C0 00 02 */	li r6, 0x2
/* 814066FC | 7E 40 03 38 */	orc r0, r18, r0
/* 81406700 | 38 E0 00 00 */	li r7, 0x0
/* 81406704 | 7C A0 02 78 */	xor r0, r5, r0
/* 81406708 | 7D C4 92 14 */	add r14, r4, r18
/* 8140670C | 7C 88 02 14 */	add r4, r8, r0
/* 81406710 | 81 03 00 0C */	lwz r8, 0xc(r3)
/* 81406714 | 38 84 11 A1 */	addi r4, r4, 0x11a1
/* 81406718 | 54 91 A8 3E */	rotrwi r17, r4, 11
/* 8140671C | 7E 31 92 14 */	add r17, r17, r18
/* 81406720 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81406724 | 7E 20 2B 38 */	orc r0, r17, r5
/* 81406728 | 7E 40 02 78 */	xor r0, r18, r0
/* 8140672C | 7D 8C 8A 14 */	add r12, r12, r17
/* 81406730 | 7C B0 02 14 */	add r5, r16, r0
/* 81406734 | 38 05 7E 82 */	addi r0, r5, 0x7e82
/* 81406738 | 54 10 30 3E */	rotlwi r16, r0, 6
/* 8140673C | 7E 10 8A 14 */	add r16, r16, r17
/* 81406740 | 7E 00 93 38 */	orc r0, r16, r18
/* 81406744 | 7E 25 02 78 */	xor r5, r17, r0
/* 81406748 | 7C AF 2A 14 */	add r5, r15, r5
/* 8140674C | 7C 0B 82 14 */	add r0, r11, r16
/* 81406750 | 38 A5 F2 35 */	subi r5, r5, 0xdcb
/* 81406754 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81406758 | 54 AB 50 3E */	rotlwi r11, r5, 10
/* 8140675C | 7D 6B 82 14 */	add r11, r11, r16
/* 81406760 | 7D 60 8B 38 */	orc r0, r11, r17
/* 81406764 | 7E 05 02 78 */	xor r5, r16, r0
/* 81406768 | 7C AE 2A 14 */	add r5, r14, r5
/* 8140676C | 7C 08 5A 14 */	add r0, r8, r11
/* 81406770 | 3A 45 D2 BB */	subi r18, r5, 0x2d45
/* 81406774 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81406778 | 56 48 78 3E */	rotlwi r8, r18, 15
/* 8140677C | 7D 08 5A 14 */	add r8, r8, r11
/* 81406780 | 7D 00 83 38 */	orc r0, r8, r16
/* 81406784 | 7D 65 02 78 */	xor r5, r11, r0
/* 81406788 | 7C AC 2A 14 */	add r5, r12, r5
/* 8140678C | 7C 09 42 14 */	add r0, r9, r8
/* 81406790 | 3A 25 D3 91 */	subi r17, r5, 0x2c6f
/* 81406794 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81406798 | 56 20 A8 3E */	rotrwi r0, r17, 11
/* 8140679C | 7C 00 42 14 */	add r0, r0, r8
/* 814067A0 | 7C 0A 02 14 */	add r0, r10, r0
/* 814067A4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814067A8 | 7C C9 03 A6 */	mtctr r6
.L_814067AC:
/* 814067AC | 98 E4 00 00 */	stb r7, 0x0(r4)
/* 814067B0 | 98 E4 00 01 */	stb r7, 0x1(r4)
/* 814067B4 | 98 E4 00 02 */	stb r7, 0x2(r4)
/* 814067B8 | 98 E4 00 03 */	stb r7, 0x3(r4)
/* 814067BC | 98 E4 00 04 */	stb r7, 0x4(r4)
/* 814067C0 | 98 E4 00 05 */	stb r7, 0x5(r4)
/* 814067C4 | 98 E4 00 06 */	stb r7, 0x6(r4)
/* 814067C8 | 98 E4 00 07 */	stb r7, 0x7(r4)
/* 814067CC | 98 E4 00 08 */	stb r7, 0x8(r4)
/* 814067D0 | 98 E4 00 09 */	stb r7, 0x9(r4)
/* 814067D4 | 98 E4 00 0A */	stb r7, 0xa(r4)
/* 814067D8 | 98 E4 00 0B */	stb r7, 0xb(r4)
/* 814067DC | 98 E4 00 0C */	stb r7, 0xc(r4)
/* 814067E0 | 98 E4 00 0D */	stb r7, 0xd(r4)
/* 814067E4 | 98 E4 00 0E */	stb r7, 0xe(r4)
/* 814067E8 | 98 E4 00 0F */	stb r7, 0xf(r4)
/* 814067EC | 98 E4 00 10 */	stb r7, 0x10(r4)
/* 814067F0 | 98 E4 00 11 */	stb r7, 0x11(r4)
/* 814067F4 | 98 E4 00 12 */	stb r7, 0x12(r4)
/* 814067F8 | 98 E4 00 13 */	stb r7, 0x13(r4)
/* 814067FC | 98 E4 00 14 */	stb r7, 0x14(r4)
/* 81406800 | 98 E4 00 15 */	stb r7, 0x15(r4)
/* 81406804 | 98 E4 00 16 */	stb r7, 0x16(r4)
/* 81406808 | 98 E4 00 17 */	stb r7, 0x17(r4)
/* 8140680C | 98 E4 00 18 */	stb r7, 0x18(r4)
/* 81406810 | 98 E4 00 19 */	stb r7, 0x19(r4)
/* 81406814 | 98 E4 00 1A */	stb r7, 0x1a(r4)
/* 81406818 | 98 E4 00 1B */	stb r7, 0x1b(r4)
/* 8140681C | 98 E4 00 1C */	stb r7, 0x1c(r4)
/* 81406820 | 98 E4 00 1D */	stb r7, 0x1d(r4)
/* 81406824 | 98 E4 00 1E */	stb r7, 0x1e(r4)
/* 81406828 | 98 E4 00 1F */	stb r7, 0x1f(r4)
/* 8140682C | 38 84 00 20 */	addi r4, r4, 0x20
/* 81406830 | 42 00 FF 7C */	bdnz .L_814067AC
/* 81406834 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 81406838 | 48 1F 2C A1 */	bl _restgpr_14
/* 8140683C | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 81406840 | 7C 08 03 A6 */	mtlr r0
/* 81406844 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 81406848 | 4E 80 00 20 */	blr
.endfn ATERM_81405D0C

# .text:0x85D0 | 0x8140684C | size: 0x10
.fn ATERM_8140684C, global
/* 8140684C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81406850 | 38 80 00 00 */	li r4, 0x0
/* 81406854 | 38 A0 00 00 */	li r5, 0x0
/* 81406858 | 48 12 A8 28 */	b OSSendMessage
.endfn ATERM_8140684C

# .text:0x85E0 | 0x8140685C | size: 0x19C
.fn ATERMi_ApConfigStart, global
/* 8140685C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81406860 | 7C 08 02 A6 */	mflr r0
/* 81406864 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81406868 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140686C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81406870 | 7C 7E 1B 78 */	mr r30, r3
/* 81406874 | 80 0D AC 50 */	lwz r0, lbl_81698C90@sda21(r0)
/* 81406878 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140687C | 41 80 00 14 */	blt .L_81406890
/* 81406880 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81406884 | 41 81 00 0C */	bgt .L_81406890
/* 81406888 | 38 60 FF F6 */	li r3, -0xa
/* 8140688C | 48 00 01 54 */	b .L_814069E0
.L_81406890:
/* 81406890 | 38 00 00 07 */	li r0, 0x7
/* 81406894 | 7C CC 33 78 */	mr r12, r6
/* 81406898 | 7D 03 43 78 */	mr r3, r8
/* 8140689C | 90 8D 91 DC */	stw r4, lbl_8169721C@sda21(r0)
/* 814068A0 | 90 0D AC 50 */	stw r0, lbl_81698C90@sda21(r0)
/* 814068A4 | 90 AD AC 58 */	stw r5, lbl_81698C98@sda21(r0)
/* 814068A8 | 90 CD AC 5C */	stw r6, lbl_81698C9C@sda21(r0)
/* 814068AC | 90 ED AC 60 */	stw r7, lbl_81698CA0@sda21(r0)
/* 814068B0 | 91 0D 91 E0 */	stw r8, lbl_81697220@sda21(r0)
/* 814068B4 | 7D 89 03 A6 */	mtctr r12
/* 814068B8 | 4E 80 04 21 */	bctrl
/* 814068BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814068C0 | 90 6D AC 64 */	stw r3, lbl_81698CA4@sda21(r0)
/* 814068C4 | 7C 65 1B 78 */	mr r5, r3
/* 814068C8 | 40 82 00 14 */	bne .L_814068DC
/* 814068CC | 38 00 FF FF */	li r0, -0x1
/* 814068D0 | 38 60 FF FF */	li r3, -0x1
/* 814068D4 | 90 0D AC 54 */	stw r0, lbl_81698C94@sda21(r0)
/* 814068D8 | 48 00 01 08 */	b .L_814069E0
.L_814068DC:
/* 814068DC | 80 ED 91 E0 */	lwz r7, lbl_81697220@sda21(r0)
/* 814068E0 | 3C 60 81 0C */	lis r3, ATERM_810C0958@ha
/* 814068E4 | 3C 80 81 40 */	lis r4, ATERM_814047A4@ha
/* 814068E8 | 7F C8 F3 78 */	mr r8, r30
/* 814068EC | 54 E0 00 38 */	clrrwi r0, r7, 3
/* 814068F0 | 38 63 09 58 */	addi r3, r3, ATERM_810C0958@l
/* 814068F4 | 7C C5 02 14 */	add r6, r5, r0
/* 814068F8 | 38 84 47 A4 */	addi r4, r4, ATERM_814047A4@l
/* 814068FC | 38 A0 00 00 */	li r5, 0x0
/* 81406900 | 39 20 00 01 */	li r9, 0x1
/* 81406904 | 48 12 DC 45 */	bl OSCreateThread
/* 81406908 | 38 00 00 01 */	li r0, 0x1
/* 8140690C | 90 0D AC 50 */	stw r0, lbl_81698C90@sda21(r0)
/* 81406910 | 48 12 F3 71 */	bl OSGetTime
/* 81406914 | 3F C0 80 00 */	lis r30, 0x8000
/* 81406918 | 3F E0 10 62 */	lis r31, 0x1062
/* 8140691C | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 81406920 | 38 DF 4D D3 */	addi r6, r31, 0x4dd3
/* 81406924 | 38 A0 00 00 */	li r5, 0x0
/* 81406928 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8140692C | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81406930 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81406934 | 48 1F 2C DD */	bl __div2i
/* 81406938 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 8140693C | 38 00 00 00 */	li r0, 0x0
/* 81406940 | 38 83 EA 60 */	subi r4, r3, 0x15a0
/* 81406944 | 90 0D AC 9C */	stw r0, lbl_81698CDC@sda21(r0)
/* 81406948 | 3C 60 81 0C */	lis r3, ATERM_810BF840@ha
/* 8140694C | 38 A0 00 E8 */	li r5, 0xe8
/* 81406950 | 90 8D 91 D8 */	stw r4, lbl_81697218@sda21(r0)
/* 81406954 | 38 63 F8 40 */	addi r3, r3, ATERM_810BF840@l
/* 81406958 | 38 80 00 00 */	li r4, 0x0
/* 8140695C | 4B F2 99 D9 */	bl memset
/* 81406960 | 80 6D 91 D8 */	lwz r3, lbl_81697218@sda21(r0)
/* 81406964 | 80 8D AC 50 */	lwz r4, lbl_81698C90@sda21(r0)
/* 81406968 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 8140696C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81406970 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81406974 | 40 82 00 10 */	bne .L_81406984
/* 81406978 | 38 00 FF FF */	li r0, -0x1
/* 8140697C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81406980 | 48 00 00 30 */	b .L_814069B0
.L_81406984:
/* 81406984 | 48 12 F2 FD */	bl OSGetTime
/* 81406988 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 8140698C | 38 DF 4D D3 */	addi r6, r31, 0x4dd3
/* 81406990 | 38 A0 00 00 */	li r5, 0x0
/* 81406994 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81406998 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 8140699C | 54 06 D1 BE */	srwi r6, r0, 6
/* 814069A0 | 48 1F 2C 71 */	bl __div2i
/* 814069A4 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 814069A8 | 7C 04 00 50 */	subf r0, r4, r0
/* 814069AC | 90 01 00 0C */	stw r0, 0xc(r1)
.L_814069B0:
/* 814069B0 | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 814069B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814069B8 | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 814069BC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814069C0 | 7D 89 03 A6 */	mtctr r12
/* 814069C4 | 4E 80 04 21 */	bctrl
/* 814069C8 | 3C 60 81 0C */	lis r3, ATERM_810C0958@ha
/* 814069CC | 38 63 09 58 */	addi r3, r3, ATERM_810C0958@l
/* 814069D0 | 48 12 E2 81 */	bl OSResumeThread
/* 814069D4 | 38 00 00 01 */	li r0, 0x1
/* 814069D8 | 38 60 00 01 */	li r3, 0x1
/* 814069DC | 90 0D AC 68 */	stw r0, lbl_81698CA8@sda21(r0)
.L_814069E0:
/* 814069E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814069E4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814069E8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814069EC | 7C 08 03 A6 */	mtlr r0
/* 814069F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814069F4 | 4E 80 00 20 */	blr
.endfn ATERMi_ApConfigStart

# .text:0x877C | 0x814069F8 | size: 0x204
.fn ATERMi_ApConfigEnd, global
/* 814069F8 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 814069FC | 7C 08 02 A6 */	mflr r0
/* 81406A00 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 81406A04 | 93 E1 00 DC */	stw r31, 0xdc(r1)
/* 81406A08 | 93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 81406A0C | 93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 81406A10 | 93 81 00 D0 */	stw r28, 0xd0(r1)
/* 81406A14 | 80 0D AC 68 */	lwz r0, lbl_81698CA8@sda21(r0)
/* 81406A18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81406A1C | 41 82 01 BC */	beq .L_81406BD8
/* 81406A20 | 38 00 00 01 */	li r0, 0x1
/* 81406A24 | 3C 60 10 62 */	lis r3, 0x1062
/* 81406A28 | 90 0D AC 9C */	stw r0, lbl_81698CDC@sda21(r0)
/* 81406A2C | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 81406A30 | 83 ED AC 50 */	lwz r31, lbl_81698C90@sda21(r0)
/* 81406A34 | 3F A0 80 00 */	lis r29, 0x8000
/* 81406A38 | 3F C0 81 40 */	lis r30, ATERM_8140684C@ha
/* 81406A3C | 48 00 00 5C */	b .L_81406A98
.L_81406A40:
/* 81406A40 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81406A44 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81406A48 | 38 A0 00 01 */	li r5, 0x1
/* 81406A4C | 48 12 A5 D5 */	bl OSInitMessageQueue
/* 81406A50 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81406A54 | 48 12 5E 91 */	bl OSCreateAlarm
/* 81406A58 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81406A5C | 38 81 00 48 */	addi r4, r1, 0x48
/* 81406A60 | 48 12 65 6D */	bl fn_8152CFCC
/* 81406A64 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 81406A68 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81406A6C | 38 FE 68 4C */	addi r7, r30, ATERM_8140684C@l
/* 81406A70 | 38 A0 00 00 */	li r5, 0x0
/* 81406A74 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81406A78 | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 81406A7C | 54 00 D1 BE */	srwi r0, r0, 6
/* 81406A80 | 1C C0 00 64 */	mulli r6, r0, 0x64
/* 81406A84 | 48 12 60 C1 */	bl OSSetAlarm
/* 81406A88 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81406A8C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81406A90 | 38 A0 00 01 */	li r5, 0x1
/* 81406A94 | 48 12 A6 B5 */	bl OSReceiveMessage
.L_81406A98:
/* 81406A98 | 80 0D AC 50 */	lwz r0, lbl_81698C90@sda21(r0)
/* 81406A9C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81406AA0 | 41 80 00 0C */	blt .L_81406AAC
/* 81406AA4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81406AA8 | 40 81 FF 98 */	ble .L_81406A40
.L_81406AAC:
/* 81406AAC | 38 61 00 28 */	addi r3, r1, 0x28
/* 81406AB0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81406AB4 | 38 A0 00 01 */	li r5, 0x1
/* 81406AB8 | 48 12 A5 69 */	bl OSInitMessageQueue
/* 81406ABC | 38 61 00 68 */	addi r3, r1, 0x68
/* 81406AC0 | 48 12 5E 25 */	bl OSCreateAlarm
/* 81406AC4 | 38 61 00 68 */	addi r3, r1, 0x68
/* 81406AC8 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81406ACC | 48 12 65 01 */	bl fn_8152CFCC
/* 81406AD0 | 3C 80 80 00 */	lis r4, 0x8000
/* 81406AD4 | 3C E0 81 40 */	lis r7, ATERM_8140684C@ha
/* 81406AD8 | 80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 81406ADC | 3C 60 10 62 */	lis r3, 0x1062
/* 81406AE0 | 38 83 4D D3 */	addi r4, r3, 0x4dd3
/* 81406AE4 | 38 E7 68 4C */	addi r7, r7, ATERM_8140684C@l
/* 81406AE8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81406AEC | 38 61 00 68 */	addi r3, r1, 0x68
/* 81406AF0 | 7C 04 00 16 */	mulhwu r0, r4, r0
/* 81406AF4 | 38 A0 00 00 */	li r5, 0x0
/* 81406AF8 | 54 00 D1 BE */	srwi r0, r0, 6
/* 81406AFC | 1C C0 01 F4 */	mulli r6, r0, 0x1f4
/* 81406B00 | 48 12 60 45 */	bl OSSetAlarm
/* 81406B04 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81406B08 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81406B0C | 38 A0 00 01 */	li r5, 0x1
/* 81406B10 | 48 12 A6 39 */	bl OSReceiveMessage
/* 81406B14 | 3F C0 81 0C */	lis r30, ATERM_810C0958@ha
/* 81406B18 | 48 00 00 10 */	b .L_81406B28
.L_81406B1C:
/* 81406B1C | 38 7E 09 58 */	addi r3, r30, ATERM_810C0958@l
/* 81406B20 | 38 80 00 00 */	li r4, 0x0
/* 81406B24 | 48 12 DF 4D */	bl OSJoinThread
.L_81406B28:
/* 81406B28 | 38 7E 09 58 */	addi r3, r30, ATERM_810C0958@l
/* 81406B2C | 48 12 D4 55 */	bl OSIsThreadTerminated
/* 81406B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81406B34 | 41 82 FF E8 */	beq .L_81406B1C
/* 81406B38 | 80 6D AC 64 */	lwz r3, lbl_81698CA4@sda21(r0)
/* 81406B3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81406B40 | 41 82 00 18 */	beq .L_81406B58
/* 81406B44 | 81 8D AC 60 */	lwz r12, lbl_81698CA0@sda21(r0)
/* 81406B48 | 7D 89 03 A6 */	mtctr r12
/* 81406B4C | 4E 80 04 21 */	bctrl
/* 81406B50 | 38 00 00 00 */	li r0, 0x0
/* 81406B54 | 90 0D AC 64 */	stw r0, lbl_81698CA4@sda21(r0)
.L_81406B58:
/* 81406B58 | 80 8D AC 50 */	lwz r4, lbl_81698C90@sda21(r0)
/* 81406B5C | 38 00 00 00 */	li r0, 0x0
/* 81406B60 | 90 0D AC 68 */	stw r0, lbl_81698CA8@sda21(r0)
/* 81406B64 | 7C 1F 20 00 */	cmpw r31, r4
/* 81406B68 | 41 82 00 70 */	beq .L_81406BD8
/* 81406B6C | 80 6D 91 D8 */	lwz r3, lbl_81697218@sda21(r0)
/* 81406B70 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 81406B74 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81406B78 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81406B7C | 40 82 00 10 */	bne .L_81406B8C
/* 81406B80 | 38 00 FF FF */	li r0, -0x1
/* 81406B84 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81406B88 | 48 00 00 38 */	b .L_81406BC0
.L_81406B8C:
/* 81406B8C | 48 12 F0 F5 */	bl OSGetTime
/* 81406B90 | 3C C0 80 00 */	lis r6, 0x8000
/* 81406B94 | 3C A0 10 62 */	lis r5, 0x1062
/* 81406B98 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81406B9C | 38 C5 4D D3 */	addi r6, r5, 0x4dd3
/* 81406BA0 | 38 A0 00 00 */	li r5, 0x0
/* 81406BA4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81406BA8 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81406BAC | 54 06 D1 BE */	srwi r6, r0, 6
/* 81406BB0 | 48 1F 2A 61 */	bl __div2i
/* 81406BB4 | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81406BB8 | 7C 04 00 50 */	subf r0, r4, r0
/* 81406BBC | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_81406BC0:
/* 81406BC0 | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 81406BC4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81406BC8 | 81 8D AC 58 */	lwz r12, lbl_81698C98@sda21(r0)
/* 81406BCC | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81406BD0 | 7D 89 03 A6 */	mtctr r12
/* 81406BD4 | 4E 80 04 21 */	bctrl
.L_81406BD8:
/* 81406BD8 | 83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 81406BDC | 38 60 00 01 */	li r3, 0x1
/* 81406BE0 | 83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 81406BE4 | 83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 81406BE8 | 83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 81406BEC | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 81406BF0 | 7C 08 03 A6 */	mtlr r0
/* 81406BF4 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 81406BF8 | 4E 80 00 20 */	blr
.endfn ATERMi_ApConfigEnd

# .text:0x8980 | 0x81406BFC | size: 0x8C
.fn ATERMi_ApConfigGetState, global
/* 81406BFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406C00 | 7C 08 02 A6 */	mflr r0
/* 81406C04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406C08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406C0C | 7C 7F 1B 78 */	mr r31, r3
/* 81406C10 | 80 0D AC 50 */	lwz r0, lbl_81698C90@sda21(r0)
/* 81406C14 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81406C18 | 80 8D 91 D8 */	lwz r4, lbl_81697218@sda21(r0)
/* 81406C1C | 3C 04 00 01 */	addis r0, r4, 0x1
/* 81406C20 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81406C24 | 40 82 00 10 */	bne .L_81406C34
/* 81406C28 | 38 00 FF FF */	li r0, -0x1
/* 81406C2C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81406C30 | 48 00 00 38 */	b .L_81406C68
.L_81406C34:
/* 81406C34 | 48 12 F0 4D */	bl OSGetTime
/* 81406C38 | 3C C0 80 00 */	lis r6, 0x8000
/* 81406C3C | 3C A0 10 62 */	lis r5, 0x1062
/* 81406C40 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81406C44 | 38 C5 4D D3 */	addi r6, r5, 0x4dd3
/* 81406C48 | 38 A0 00 00 */	li r5, 0x0
/* 81406C4C | 54 00 F0 BE */	srwi r0, r0, 2
/* 81406C50 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 81406C54 | 54 06 D1 BE */	srwi r6, r0, 6
/* 81406C58 | 48 1F 29 B9 */	bl __div2i
/* 81406C5C | 80 0D 91 D8 */	lwz r0, lbl_81697218@sda21(r0)
/* 81406C60 | 7C 04 00 50 */	subf r0, r4, r0
/* 81406C64 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_81406C68:
/* 81406C68 | 80 0D AC 54 */	lwz r0, lbl_81698C94@sda21(r0)
/* 81406C6C | 38 60 00 01 */	li r3, 0x1
/* 81406C70 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81406C74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406C78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406C7C | 7C 08 03 A6 */	mtlr r0
/* 81406C80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406C84 | 4E 80 00 20 */	blr
.endfn ATERMi_ApConfigGetState

# .text:0x8A0C | 0x81406C88 | size: 0x30
.fn ATERMi_ApConfigGetResult, global
/* 81406C88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406C8C | 7C 08 02 A6 */	mflr r0
/* 81406C90 | 3C 80 81 0C */	lis r4, ATERM_810BF840@ha
/* 81406C94 | 38 A0 00 E8 */	li r5, 0xe8
/* 81406C98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406C9C | 38 84 F8 40 */	addi r4, r4, ATERM_810BF840@l
/* 81406CA0 | 4B F2 95 91 */	bl memcpy
/* 81406CA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406CA8 | 38 60 00 01 */	li r3, 0x1
/* 81406CAC | 7C 08 03 A6 */	mtlr r0
/* 81406CB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406CB4 | 4E 80 00 20 */	blr
.endfn ATERMi_ApConfigGetResult

# .text:0x8A3C | 0x81406CB8 | size: 0x8
.fn ATERMi_ApConfigGetVersion, global
/* 81406CB8 | 38 60 01 06 */	li r3, 0x106
/* 81406CBC | 4E 80 00 20 */	blr
.endfn ATERMi_ApConfigGetVersion

# 0x81610BC8..0x816133F0 | size: 0x2828
.rodata
.balign 8

# .rodata:0x0 | 0x81610BC8 | size: 0x1000
.obj lbl_81610BC8, global
	.4byte 0xC66363A5
	.4byte 0xF87C7C84
	.4byte 0xEE777799
	.4byte 0xF67B7B8D
	.4byte 0xFFF2F20D
	.4byte 0xD66B6BBD
	.4byte 0xDE6F6FB1
	.4byte 0x91C5C554
	.4byte 0x60303050
	.4byte 0x02010103
	.4byte 0xCE6767A9
	.4byte 0x562B2B7D
	.4byte 0xE7FEFE19
	.4byte 0xB5D7D762
	.4byte 0x4DABABE6
	.4byte 0xEC76769A
	.4byte 0x8FCACA45
	.4byte 0x1F82829D
	.4byte 0x89C9C940
	.4byte 0xFA7D7D87
	.4byte 0xEFFAFA15
	.4byte 0xB25959EB
	.4byte 0x8E4747C9
	.4byte 0xFBF0F00B
	.4byte 0x41ADADEC
	.4byte 0xB3D4D467
	.4byte 0x5FA2A2FD
	.4byte 0x45AFAFEA
	.4byte 0x239C9CBF
	.4byte 0x53A4A4F7
	.4byte 0xE4727296
	.4byte 0x9BC0C05B
	.4byte 0x75B7B7C2
	.4byte 0xE1FDFD1C
	.4byte 0x3D9393AE
	.4byte 0x4C26266A
	.4byte 0x6C36365A
	.4byte 0x7E3F3F41
	.4byte 0xF5F7F702
	.4byte 0x83CCCC4F
	.4byte 0x6834345C
	.4byte 0x51A5A5F4
	.4byte 0xD1E5E534
	.4byte 0xF9F1F108
	.4byte 0xE2717193
	.4byte 0xABD8D873
	.4byte 0x62313153
	.4byte 0x2A15153F
	.4byte 0x0804040C
	.4byte 0x95C7C752
	.4byte 0x46232365
	.4byte 0x9DC3C35E
	.4byte 0x30181828
	.4byte 0x379696A1
	.4byte 0x0A05050F
	.4byte 0x2F9A9AB5
	.4byte 0x0E070709
	.4byte 0x24121236
	.4byte 0x1B80809B
	.4byte 0xDFE2E23D
	.4byte 0xCDEBEB26
	.4byte 0x4E272769
	.4byte 0x7FB2B2CD
	.4byte 0xEA75759F
	.4byte 0x1209091B
	.4byte 0x1D83839E
	.4byte 0x582C2C74
	.4byte 0x341A1A2E
	.4byte 0x361B1B2D
	.4byte 0xDC6E6EB2
	.4byte 0xB45A5AEE
	.4byte 0x5BA0A0FB
	.4byte 0xA45252F6
	.4byte 0x763B3B4D
	.4byte 0xB7D6D661
	.4byte 0x7DB3B3CE
	.4byte 0x5229297B
	.4byte 0xDDE3E33E
	.4byte 0x5E2F2F71
	.4byte 0x13848497
	.4byte 0xA65353F5
	.4byte 0xB9D1D168
	.4byte 0x00000000
	.4byte 0xC1EDED2C
	.4byte 0x40202060
	.4byte 0xE3FCFC1F
	.4byte 0x79B1B1C8
	.4byte 0xB65B5BED
	.4byte 0xD46A6ABE
	.4byte 0x8DCBCB46
	.4byte 0x67BEBED9
	.4byte 0x7239394B
	.4byte 0x944A4ADE
	.4byte 0x984C4CD4
	.4byte 0xB05858E8
	.4byte 0x85CFCF4A
	.4byte 0xBBD0D06B
	.4byte 0xC5EFEF2A
	.4byte 0x4FAAAAE5
	.4byte 0xEDFBFB16
	.4byte 0x864343C5
	.4byte 0x9A4D4DD7
	.4byte 0x66333355
	.4byte 0x11858594
	.4byte 0x8A4545CF
	.4byte 0xE9F9F910
	.4byte 0x04020206
	.4byte 0xFE7F7F81
	.4byte 0xA05050F0
	.4byte 0x783C3C44
	.4byte 0x259F9FBA
	.4byte 0x4BA8A8E3
	.4byte 0xA25151F3
	.4byte 0x5DA3A3FE
	.4byte 0x804040C0
	.4byte 0x058F8F8A
	.4byte 0x3F9292AD
	.4byte 0x219D9DBC
	.4byte 0x70383848
	.4byte 0xF1F5F504
	.4byte 0x63BCBCDF
	.4byte 0x77B6B6C1
	.4byte 0xAFDADA75
	.4byte 0x42212163
	.4byte 0x20101030
	.4byte 0xE5FFFF1A
	.4byte 0xFDF3F30E
	.4byte 0xBFD2D26D
	.4byte 0x81CDCD4C
	.4byte 0x180C0C14
	.4byte 0x26131335
	.4byte 0xC3ECEC2F
	.4byte 0xBE5F5FE1
	.4byte 0x359797A2
	.4byte 0x884444CC
	.4byte 0x2E171739
	.4byte 0x93C4C457
	.4byte 0x55A7A7F2
	.4byte 0xFC7E7E82
	.4byte 0x7A3D3D47
	.4byte 0xC86464AC
	.4byte 0xBA5D5DE7
	.4byte 0x3219192B
	.4byte 0xE6737395
	.4byte 0xC06060A0
	.4byte 0x19818198
	.4byte 0x9E4F4FD1
	.4byte 0xA3DCDC7F
	.4byte 0x44222266
	.4byte 0x542A2A7E
	.4byte 0x3B9090AB
	.4byte 0x0B888883
	.4byte 0x8C4646CA
	.4byte 0xC7EEEE29
	.4byte 0x6BB8B8D3
	.4byte 0x2814143C
	.4byte 0xA7DEDE79
	.4byte 0xBC5E5EE2
	.4byte 0x160B0B1D
	.4byte 0xADDBDB76
	.4byte 0xDBE0E03B
	.4byte 0x64323256
	.4byte 0x743A3A4E
	.4byte 0x140A0A1E
	.4byte 0x924949DB
	.4byte 0x0C06060A
	.4byte 0x4824246C
	.4byte 0xB85C5CE4
	.4byte 0x9FC2C25D
	.4byte 0xBDD3D36E
	.4byte 0x43ACACEF
	.4byte 0xC46262A6
	.4byte 0x399191A8
	.4byte 0x319595A4
	.4byte 0xD3E4E437
	.4byte 0xF279798B
	.4byte 0xD5E7E732
	.4byte 0x8BC8C843
	.4byte 0x6E373759
	.4byte 0xDA6D6DB7
	.4byte 0x018D8D8C
	.4byte 0xB1D5D564
	.4byte 0x9C4E4ED2
	.4byte 0x49A9A9E0
	.4byte 0xD86C6CB4
	.4byte 0xAC5656FA
	.4byte 0xF3F4F407
	.4byte 0xCFEAEA25
	.4byte 0xCA6565AF
	.4byte 0xF47A7A8E
	.4byte 0x47AEAEE9
	.4byte 0x10080818
	.4byte 0x6FBABAD5
	.4byte 0xF0787888
	.4byte 0x4A25256F
	.4byte 0x5C2E2E72
	.4byte 0x381C1C24
	.4byte 0x57A6A6F1
	.4byte 0x73B4B4C7
	.4byte 0x97C6C651
	.4byte 0xCBE8E823
	.4byte 0xA1DDDD7C
	.4byte 0xE874749C
	.4byte 0x3E1F1F21
	.4byte 0x964B4BDD
	.4byte 0x61BDBDDC
	.4byte 0x0D8B8B86
	.4byte 0x0F8A8A85
	.4byte 0xE0707090
	.4byte 0x7C3E3E42
	.4byte 0x71B5B5C4
	.4byte 0xCC6666AA
	.4byte 0x904848D8
	.4byte 0x06030305
	.4byte 0xF7F6F601
	.4byte 0x1C0E0E12
	.4byte 0xC26161A3
	.4byte 0x6A35355F
	.4byte 0xAE5757F9
	.4byte 0x69B9B9D0
	.4byte 0x17868691
	.4byte 0x99C1C158
	.4byte 0x3A1D1D27
	.4byte 0x279E9EB9
	.4byte 0xD9E1E138
	.4byte 0xEBF8F813
	.4byte 0x2B9898B3
	.4byte 0x22111133
	.4byte 0xD26969BB
	.4byte 0xA9D9D970
	.4byte 0x078E8E89
	.4byte 0x339494A7
	.4byte 0x2D9B9BB6
	.4byte 0x3C1E1E22
	.4byte 0x15878792
	.4byte 0xC9E9E920
	.4byte 0x87CECE49
	.4byte 0xAA5555FF
	.4byte 0x50282878
	.4byte 0xA5DFDF7A
	.4byte 0x038C8C8F
	.4byte 0x59A1A1F8
	.4byte 0x09898980
	.4byte 0x1A0D0D17
	.4byte 0x65BFBFDA
	.4byte 0xD7E6E631
	.4byte 0x844242C6
	.4byte 0xD06868B8
	.4byte 0x824141C3
	.4byte 0x299999B0
	.4byte 0x5A2D2D77
	.4byte 0x1E0F0F11
	.4byte 0x7BB0B0CB
	.4byte 0xA85454FC
	.4byte 0x6DBBBBD6
	.4byte 0x2C16163A
	.4byte 0xA5C66363
	.4byte 0x84F87C7C
	.4byte 0x99EE7777
	.4byte 0x8DF67B7B
	.4byte 0x0DFFF2F2
	.4byte 0xBDD66B6B
	.4byte 0xB1DE6F6F
	.4byte 0x5491C5C5
	.4byte 0x50603030
	.4byte 0x03020101
	.4byte 0xA9CE6767
	.4byte 0x7D562B2B
	.4byte 0x19E7FEFE
	.4byte 0x62B5D7D7
	.4byte 0xE64DABAB
	.4byte 0x9AEC7676
	.4byte 0x458FCACA
	.4byte 0x9D1F8282
	.4byte 0x4089C9C9
	.4byte 0x87FA7D7D
	.4byte 0x15EFFAFA
	.4byte 0xEBB25959
	.4byte 0xC98E4747
	.4byte 0x0BFBF0F0
	.4byte 0xEC41ADAD
	.4byte 0x67B3D4D4
	.4byte 0xFD5FA2A2
	.4byte 0xEA45AFAF
	.4byte 0xBF239C9C
	.4byte 0xF753A4A4
	.4byte 0x96E47272
	.4byte 0x5B9BC0C0
	.4byte 0xC275B7B7
	.4byte 0x1CE1FDFD
	.4byte 0xAE3D9393
	.4byte 0x6A4C2626
	.4byte 0x5A6C3636
	.4byte 0x417E3F3F
	.4byte 0x02F5F7F7
	.4byte 0x4F83CCCC
	.4byte 0x5C683434
	.4byte 0xF451A5A5
	.4byte 0x34D1E5E5
	.4byte 0x08F9F1F1
	.4byte 0x93E27171
	.4byte 0x73ABD8D8
	.4byte 0x53623131
	.4byte 0x3F2A1515
	.4byte 0x0C080404
	.4byte 0x5295C7C7
	.4byte 0x65462323
	.4byte 0x5E9DC3C3
	.4byte 0x28301818
	.4byte 0xA1379696
	.4byte 0x0F0A0505
	.4byte 0xB52F9A9A
	.4byte 0x090E0707
	.4byte 0x36241212
	.4byte 0x9B1B8080
	.4byte 0x3DDFE2E2
	.4byte 0x26CDEBEB
	.4byte 0x694E2727
	.4byte 0xCD7FB2B2
	.4byte 0x9FEA7575
	.4byte 0x1B120909
	.4byte 0x9E1D8383
	.4byte 0x74582C2C
	.4byte 0x2E341A1A
	.4byte 0x2D361B1B
	.4byte 0xB2DC6E6E
	.4byte 0xEEB45A5A
	.4byte 0xFB5BA0A0
	.4byte 0xF6A45252
	.4byte 0x4D763B3B
	.4byte 0x61B7D6D6
	.4byte 0xCE7DB3B3
	.4byte 0x7B522929
	.4byte 0x3EDDE3E3
	.4byte 0x715E2F2F
	.4byte 0x97138484
	.4byte 0xF5A65353
	.4byte 0x68B9D1D1
	.4byte 0x00000000
	.4byte 0x2CC1EDED
	.4byte 0x60402020
	.4byte 0x1FE3FCFC
	.4byte 0xC879B1B1
	.4byte 0xEDB65B5B
	.4byte 0xBED46A6A
	.4byte 0x468DCBCB
	.4byte 0xD967BEBE
	.4byte 0x4B723939
	.4byte 0xDE944A4A
	.4byte 0xD4984C4C
	.4byte 0xE8B05858
	.4byte 0x4A85CFCF
	.4byte 0x6BBBD0D0
	.4byte 0x2AC5EFEF
	.4byte 0xE54FAAAA
	.4byte 0x16EDFBFB
	.4byte 0xC5864343
	.4byte 0xD79A4D4D
	.4byte 0x55663333
	.4byte 0x94118585
	.4byte 0xCF8A4545
	.4byte 0x10E9F9F9
	.4byte 0x06040202
	.4byte 0x81FE7F7F
	.4byte 0xF0A05050
	.4byte 0x44783C3C
	.4byte 0xBA259F9F
	.4byte 0xE34BA8A8
	.4byte 0xF3A25151
	.4byte 0xFE5DA3A3
	.4byte 0xC0804040
	.4byte 0x8A058F8F
	.4byte 0xAD3F9292
	.4byte 0xBC219D9D
	.4byte 0x48703838
	.4byte 0x04F1F5F5
	.4byte 0xDF63BCBC
	.4byte 0xC177B6B6
	.4byte 0x75AFDADA
	.4byte 0x63422121
	.4byte 0x30201010
	.4byte 0x1AE5FFFF
	.4byte 0x0EFDF3F3
	.4byte 0x6DBFD2D2
	.4byte 0x4C81CDCD
	.4byte 0x14180C0C
	.4byte 0x35261313
	.4byte 0x2FC3ECEC
	.4byte 0xE1BE5F5F
	.4byte 0xA2359797
	.4byte 0xCC884444
	.4byte 0x392E1717
	.4byte 0x5793C4C4
	.4byte 0xF255A7A7
	.4byte 0x82FC7E7E
	.4byte 0x477A3D3D
	.4byte 0xACC86464
	.4byte 0xE7BA5D5D
	.4byte 0x2B321919
	.4byte 0x95E67373
	.4byte 0xA0C06060
	.4byte 0x98198181
	.4byte 0xD19E4F4F
	.4byte 0x7FA3DCDC
	.4byte 0x66442222
	.4byte 0x7E542A2A
	.4byte 0xAB3B9090
	.4byte 0x830B8888
	.4byte 0xCA8C4646
	.4byte 0x29C7EEEE
	.4byte 0xD36BB8B8
	.4byte 0x3C281414
	.4byte 0x79A7DEDE
	.4byte 0xE2BC5E5E
	.4byte 0x1D160B0B
	.4byte 0x76ADDBDB
	.4byte 0x3BDBE0E0
	.4byte 0x56643232
	.4byte 0x4E743A3A
	.4byte 0x1E140A0A
	.4byte 0xDB924949
	.4byte 0x0A0C0606
	.4byte 0x6C482424
	.4byte 0xE4B85C5C
	.4byte 0x5D9FC2C2
	.4byte 0x6EBDD3D3
	.4byte 0xEF43ACAC
	.4byte 0xA6C46262
	.4byte 0xA8399191
	.4byte 0xA4319595
	.4byte 0x37D3E4E4
	.4byte 0x8BF27979
	.4byte 0x32D5E7E7
	.4byte 0x438BC8C8
	.4byte 0x596E3737
	.4byte 0xB7DA6D6D
	.4byte 0x8C018D8D
	.4byte 0x64B1D5D5
	.4byte 0xD29C4E4E
	.4byte 0xE049A9A9
	.4byte 0xB4D86C6C
	.4byte 0xFAAC5656
	.4byte 0x07F3F4F4
	.4byte 0x25CFEAEA
	.4byte 0xAFCA6565
	.4byte 0x8EF47A7A
	.4byte 0xE947AEAE
	.4byte 0x18100808
	.4byte 0xD56FBABA
	.4byte 0x88F07878
	.4byte 0x6F4A2525
	.4byte 0x725C2E2E
	.4byte 0x24381C1C
	.4byte 0xF157A6A6
	.4byte 0xC773B4B4
	.4byte 0x5197C6C6
	.4byte 0x23CBE8E8
	.4byte 0x7CA1DDDD
	.4byte 0x9CE87474
	.4byte 0x213E1F1F
	.4byte 0xDD964B4B
	.4byte 0xDC61BDBD
	.4byte 0x860D8B8B
	.4byte 0x850F8A8A
	.4byte 0x90E07070
	.4byte 0x427C3E3E
	.4byte 0xC471B5B5
	.4byte 0xAACC6666
	.4byte 0xD8904848
	.4byte 0x05060303
	.4byte 0x01F7F6F6
	.4byte 0x121C0E0E
	.4byte 0xA3C26161
	.4byte 0x5F6A3535
	.4byte 0xF9AE5757
	.4byte 0xD069B9B9
	.4byte 0x91178686
	.4byte 0x5899C1C1
	.4byte 0x273A1D1D
	.4byte 0xB9279E9E
	.4byte 0x38D9E1E1
	.4byte 0x13EBF8F8
	.4byte 0xB32B9898
	.4byte 0x33221111
	.4byte 0xBBD26969
	.4byte 0x70A9D9D9
	.4byte 0x89078E8E
	.4byte 0xA7339494
	.4byte 0xB62D9B9B
	.4byte 0x223C1E1E
	.4byte 0x92158787
	.4byte 0x20C9E9E9
	.4byte 0x4987CECE
	.4byte 0xFFAA5555
	.4byte 0x78502828
	.4byte 0x7AA5DFDF
	.4byte 0x8F038C8C
	.4byte 0xF859A1A1
	.4byte 0x80098989
	.4byte 0x171A0D0D
	.4byte 0xDA65BFBF
	.4byte 0x31D7E6E6
	.4byte 0xC6844242
	.4byte 0xB8D06868
	.4byte 0xC3824141
	.4byte 0xB0299999
	.4byte 0x775A2D2D
	.4byte 0x111E0F0F
	.4byte 0xCB7BB0B0
	.4byte 0xFCA85454
	.4byte 0xD66DBBBB
	.4byte 0x3A2C1616
	.4byte 0x63A5C663
	.4byte 0x7C84F87C
	.4byte 0x7799EE77
	.4byte 0x7B8DF67B
	.4byte 0xF20DFFF2
	.4byte 0x6BBDD66B
	.4byte 0x6FB1DE6F
	.4byte 0xC55491C5
	.4byte 0x30506030
	.4byte 0x01030201
	.4byte 0x67A9CE67
	.4byte 0x2B7D562B
	.4byte 0xFE19E7FE
	.4byte 0xD762B5D7
	.4byte 0xABE64DAB
	.4byte 0x769AEC76
	.4byte 0xCA458FCA
	.4byte 0x829D1F82
	.4byte 0xC94089C9
	.4byte 0x7D87FA7D
	.4byte 0xFA15EFFA
	.4byte 0x59EBB259
	.4byte 0x47C98E47
	.4byte 0xF00BFBF0
	.4byte 0xADEC41AD
	.4byte 0xD467B3D4
	.4byte 0xA2FD5FA2
	.4byte 0xAFEA45AF
	.4byte 0x9CBF239C
	.4byte 0xA4F753A4
	.4byte 0x7296E472
	.4byte 0xC05B9BC0
	.4byte 0xB7C275B7
	.4byte 0xFD1CE1FD
	.4byte 0x93AE3D93
	.4byte 0x266A4C26
	.4byte 0x365A6C36
	.4byte 0x3F417E3F
	.4byte 0xF702F5F7
	.4byte 0xCC4F83CC
	.4byte 0x345C6834
	.4byte 0xA5F451A5
	.4byte 0xE534D1E5
	.4byte 0xF108F9F1
	.4byte 0x7193E271
	.4byte 0xD873ABD8
	.4byte 0x31536231
	.4byte 0x153F2A15
	.4byte 0x040C0804
	.4byte 0xC75295C7
	.4byte 0x23654623
	.4byte 0xC35E9DC3
	.4byte 0x18283018
	.4byte 0x96A13796
	.4byte 0x050F0A05
	.4byte 0x9AB52F9A
	.4byte 0x07090E07
	.4byte 0x12362412
	.4byte 0x809B1B80
	.4byte 0xE23DDFE2
	.4byte 0xEB26CDEB
	.4byte 0x27694E27
	.4byte 0xB2CD7FB2
	.4byte 0x759FEA75
	.4byte 0x091B1209
	.4byte 0x839E1D83
	.4byte 0x2C74582C
	.4byte 0x1A2E341A
	.4byte 0x1B2D361B
	.4byte 0x6EB2DC6E
	.4byte 0x5AEEB45A
	.4byte 0xA0FB5BA0
	.4byte 0x52F6A452
	.4byte 0x3B4D763B
	.4byte 0xD661B7D6
	.4byte 0xB3CE7DB3
	.4byte 0x297B5229
	.4byte 0xE33EDDE3
	.4byte 0x2F715E2F
	.4byte 0x84971384
	.4byte 0x53F5A653
	.4byte 0xD168B9D1
	.4byte 0x00000000
	.4byte 0xED2CC1ED
	.4byte 0x20604020
	.4byte 0xFC1FE3FC
	.4byte 0xB1C879B1
	.4byte 0x5BEDB65B
	.4byte 0x6ABED46A
	.4byte 0xCB468DCB
	.4byte 0xBED967BE
	.4byte 0x394B7239
	.4byte 0x4ADE944A
	.4byte 0x4CD4984C
	.4byte 0x58E8B058
	.4byte 0xCF4A85CF
	.4byte 0xD06BBBD0
	.4byte 0xEF2AC5EF
	.4byte 0xAAE54FAA
	.4byte 0xFB16EDFB
	.4byte 0x43C58643
	.4byte 0x4DD79A4D
	.4byte 0x33556633
	.4byte 0x85941185
	.4byte 0x45CF8A45
	.4byte 0xF910E9F9
	.4byte 0x02060402
	.4byte 0x7F81FE7F
	.4byte 0x50F0A050
	.4byte 0x3C44783C
	.4byte 0x9FBA259F
	.4byte 0xA8E34BA8
	.4byte 0x51F3A251
	.4byte 0xA3FE5DA3
	.4byte 0x40C08040
	.4byte 0x8F8A058F
	.4byte 0x92AD3F92
	.4byte 0x9DBC219D
	.4byte 0x38487038
	.4byte 0xF504F1F5
	.4byte 0xBCDF63BC
	.4byte 0xB6C177B6
	.4byte 0xDA75AFDA
	.4byte 0x21634221
	.4byte 0x10302010
	.4byte 0xFF1AE5FF
	.4byte 0xF30EFDF3
	.4byte 0xD26DBFD2
	.4byte 0xCD4C81CD
	.4byte 0x0C14180C
	.4byte 0x13352613
	.4byte 0xEC2FC3EC
	.4byte 0x5FE1BE5F
	.4byte 0x97A23597
	.4byte 0x44CC8844
	.4byte 0x17392E17
	.4byte 0xC45793C4
	.4byte 0xA7F255A7
	.4byte 0x7E82FC7E
	.4byte 0x3D477A3D
	.4byte 0x64ACC864
	.4byte 0x5DE7BA5D
	.4byte 0x192B3219
	.4byte 0x7395E673
	.4byte 0x60A0C060
	.4byte 0x81981981
	.4byte 0x4FD19E4F
	.4byte 0xDC7FA3DC
	.4byte 0x22664422
	.4byte 0x2A7E542A
	.4byte 0x90AB3B90
	.4byte 0x88830B88
	.4byte 0x46CA8C46
	.4byte 0xEE29C7EE
	.4byte 0xB8D36BB8
	.4byte 0x143C2814
	.4byte 0xDE79A7DE
	.4byte 0x5EE2BC5E
	.4byte 0x0B1D160B
	.4byte 0xDB76ADDB
	.4byte 0xE03BDBE0
	.4byte 0x32566432
	.4byte 0x3A4E743A
	.4byte 0x0A1E140A
	.4byte 0x49DB9249
	.4byte 0x060A0C06
	.4byte 0x246C4824
	.4byte 0x5CE4B85C
	.4byte 0xC25D9FC2
	.4byte 0xD36EBDD3
	.4byte 0xACEF43AC
	.4byte 0x62A6C462
	.4byte 0x91A83991
	.4byte 0x95A43195
	.4byte 0xE437D3E4
	.4byte 0x798BF279
	.4byte 0xE732D5E7
	.4byte 0xC8438BC8
	.4byte 0x37596E37
	.4byte 0x6DB7DA6D
	.4byte 0x8D8C018D
	.4byte 0xD564B1D5
	.4byte 0x4ED29C4E
	.4byte 0xA9E049A9
	.4byte 0x6CB4D86C
	.4byte 0x56FAAC56
	.4byte 0xF407F3F4
	.4byte 0xEA25CFEA
	.4byte 0x65AFCA65
	.4byte 0x7A8EF47A
	.4byte 0xAEE947AE
	.4byte 0x08181008
	.4byte 0xBAD56FBA
	.4byte 0x7888F078
	.4byte 0x256F4A25
	.4byte 0x2E725C2E
	.4byte 0x1C24381C
	.4byte 0xA6F157A6
	.4byte 0xB4C773B4
	.4byte 0xC65197C6
	.4byte 0xE823CBE8
	.4byte 0xDD7CA1DD
	.4byte 0x749CE874
	.4byte 0x1F213E1F
	.4byte 0x4BDD964B
	.4byte 0xBDDC61BD
	.4byte 0x8B860D8B
	.4byte 0x8A850F8A
	.4byte 0x7090E070
	.4byte 0x3E427C3E
	.4byte 0xB5C471B5
	.4byte 0x66AACC66
	.4byte 0x48D89048
	.4byte 0x03050603
	.4byte 0xF601F7F6
	.4byte 0x0E121C0E
	.4byte 0x61A3C261
	.4byte 0x355F6A35
	.4byte 0x57F9AE57
	.4byte 0xB9D069B9
	.4byte 0x86911786
	.4byte 0xC15899C1
	.4byte 0x1D273A1D
	.4byte 0x9EB9279E
	.4byte 0xE138D9E1
	.4byte 0xF813EBF8
	.4byte 0x98B32B98
	.4byte 0x11332211
	.4byte 0x69BBD269
	.4byte 0xD970A9D9
	.4byte 0x8E89078E
	.4byte 0x94A73394
	.4byte 0x9BB62D9B
	.4byte 0x1E223C1E
	.4byte 0x87921587
	.4byte 0xE920C9E9
	.4byte 0xCE4987CE
	.4byte 0x55FFAA55
	.4byte 0x28785028
	.4byte 0xDF7AA5DF
	.4byte 0x8C8F038C
	.4byte 0xA1F859A1
	.4byte 0x89800989
	.4byte 0x0D171A0D
	.4byte 0xBFDA65BF
	.4byte 0xE631D7E6
	.4byte 0x42C68442
	.4byte 0x68B8D068
	.4byte 0x41C38241
	.4byte 0x99B02999
	.4byte 0x2D775A2D
	.4byte 0x0F111E0F
	.4byte 0xB0CB7BB0
	.4byte 0x54FCA854
	.4byte 0xBBD66DBB
	.4byte 0x163A2C16
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
.endobj lbl_81610BC8

# .rodata:0x1000 | 0x81611BC8 | size: 0x1800
.obj lbl_81611BC8, global
	.4byte 0x63636363
	.4byte 0x7C7C7C7C
	.4byte 0x77777777
	.4byte 0x7B7B7B7B
	.4byte 0xF2F2F2F2
	.4byte 0x6B6B6B6B
	.4byte 0x6F6F6F6F
	.4byte 0xC5C5C5C5
	.4byte 0x30303030
	.4byte 0x01010101
	.4byte 0x67676767
	.4byte 0x2B2B2B2B
	.4byte 0xFEFEFEFE
	.4byte 0xD7D7D7D7
	.4byte 0xABABABAB
	.4byte 0x76767676
	.4byte 0xCACACACA
	.4byte 0x82828282
	.4byte 0xC9C9C9C9
	.4byte 0x7D7D7D7D
	.4byte 0xFAFAFAFA
	.4byte 0x59595959
	.4byte 0x47474747
	.4byte 0xF0F0F0F0
	.4byte 0xADADADAD
	.4byte 0xD4D4D4D4
	.4byte 0xA2A2A2A2
	.4byte 0xAFAFAFAF
	.4byte 0x9C9C9C9C
	.4byte 0xA4A4A4A4
	.4byte 0x72727272
	.4byte 0xC0C0C0C0
	.4byte 0xB7B7B7B7
	.4byte 0xFDFDFDFD
	.4byte 0x93939393
	.4byte 0x26262626
	.4byte 0x36363636
	.4byte 0x3F3F3F3F
	.4byte 0xF7F7F7F7
	.4byte 0xCCCCCCCC
	.4byte 0x34343434
	.4byte 0xA5A5A5A5
	.4byte 0xE5E5E5E5
	.4byte 0xF1F1F1F1
	.4byte 0x71717171
	.4byte 0xD8D8D8D8
	.4byte 0x31313131
	.4byte 0x15151515
	.4byte 0x04040404
	.4byte 0xC7C7C7C7
	.4byte 0x23232323
	.4byte 0xC3C3C3C3
	.4byte 0x18181818
	.4byte 0x96969696
	.4byte 0x05050505
	.4byte 0x9A9A9A9A
	.4byte 0x07070707
	.4byte 0x12121212
	.4byte 0x80808080
	.4byte 0xE2E2E2E2
	.4byte 0xEBEBEBEB
	.4byte 0x27272727
	.4byte 0xB2B2B2B2
	.4byte 0x75757575
	.4byte 0x09090909
	.4byte 0x83838383
	.4byte 0x2C2C2C2C
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x6E6E6E6E
	.4byte 0x5A5A5A5A
	.4byte 0xA0A0A0A0
	.4byte 0x52525252
	.4byte 0x3B3B3B3B
	.4byte 0xD6D6D6D6
	.4byte 0xB3B3B3B3
	.4byte 0x29292929
	.4byte 0xE3E3E3E3
	.4byte 0x2F2F2F2F
	.4byte 0x84848484
	.4byte 0x53535353
	.4byte 0xD1D1D1D1
	.4byte 0x00000000
	.4byte 0xEDEDEDED
	.4byte 0x20202020
	.4byte 0xFCFCFCFC
	.4byte 0xB1B1B1B1
	.4byte 0x5B5B5B5B
	.4byte 0x6A6A6A6A
	.4byte 0xCBCBCBCB
	.4byte 0xBEBEBEBE
	.4byte 0x39393939
	.4byte 0x4A4A4A4A
	.4byte 0x4C4C4C4C
	.4byte 0x58585858
	.4byte 0xCFCFCFCF
	.4byte 0xD0D0D0D0
	.4byte 0xEFEFEFEF
	.4byte 0xAAAAAAAA
	.4byte 0xFBFBFBFB
	.4byte 0x43434343
	.4byte 0x4D4D4D4D
	.4byte 0x33333333
	.4byte 0x85858585
	.4byte 0x45454545
	.4byte 0xF9F9F9F9
	.4byte 0x02020202
	.4byte 0x7F7F7F7F
	.4byte 0x50505050
	.4byte 0x3C3C3C3C
	.4byte 0x9F9F9F9F
	.4byte 0xA8A8A8A8
	.4byte 0x51515151
	.4byte 0xA3A3A3A3
	.4byte 0x40404040
	.4byte 0x8F8F8F8F
	.4byte 0x92929292
	.4byte 0x9D9D9D9D
	.4byte 0x38383838
	.4byte 0xF5F5F5F5
	.4byte 0xBCBCBCBC
	.4byte 0xB6B6B6B6
	.4byte 0xDADADADA
	.4byte 0x21212121
	.4byte 0x10101010
	.4byte 0xFFFFFFFF
	.4byte 0xF3F3F3F3
	.4byte 0xD2D2D2D2
	.4byte 0xCDCDCDCD
	.4byte 0x0C0C0C0C
	.4byte 0x13131313
	.4byte 0xECECECEC
	.4byte 0x5F5F5F5F
	.4byte 0x97979797
	.4byte 0x44444444
	.4byte 0x17171717
	.4byte 0xC4C4C4C4
	.4byte 0xA7A7A7A7
	.4byte 0x7E7E7E7E
	.4byte 0x3D3D3D3D
	.4byte 0x64646464
	.4byte 0x5D5D5D5D
	.4byte 0x19191919
	.4byte 0x73737373
	.4byte 0x60606060
	.4byte 0x81818181
	.4byte 0x4F4F4F4F
	.4byte 0xDCDCDCDC
	.4byte 0x22222222
	.4byte 0x2A2A2A2A
	.4byte 0x90909090
	.4byte 0x88888888
	.4byte 0x46464646
	.4byte 0xEEEEEEEE
	.4byte 0xB8B8B8B8
	.4byte 0x14141414
	.4byte 0xDEDEDEDE
	.4byte 0x5E5E5E5E
	.4byte 0x0B0B0B0B
	.4byte 0xDBDBDBDB
	.4byte 0xE0E0E0E0
	.4byte 0x32323232
	.4byte 0x3A3A3A3A
	.4byte 0x0A0A0A0A
	.4byte 0x49494949
	.4byte 0x06060606
	.4byte 0x24242424
	.4byte 0x5C5C5C5C
	.4byte 0xC2C2C2C2
	.4byte 0xD3D3D3D3
	.4byte 0xACACACAC
	.4byte 0x62626262
	.4byte 0x91919191
	.4byte 0x95959595
	.4byte 0xE4E4E4E4
	.4byte 0x79797979
	.4byte 0xE7E7E7E7
	.4byte 0xC8C8C8C8
	.4byte 0x37373737
	.4byte 0x6D6D6D6D
	.4byte 0x8D8D8D8D
	.4byte 0xD5D5D5D5
	.4byte 0x4E4E4E4E
	.4byte 0xA9A9A9A9
	.4byte 0x6C6C6C6C
	.4byte 0x56565656
	.4byte 0xF4F4F4F4
	.4byte 0xEAEAEAEA
	.4byte 0x65656565
	.4byte 0x7A7A7A7A
	.4byte 0xAEAEAEAE
	.4byte 0x08080808
	.4byte 0xBABABABA
	.4byte 0x78787878
	.4byte 0x25252525
	.4byte 0x2E2E2E2E
	.4byte 0x1C1C1C1C
	.4byte 0xA6A6A6A6
	.4byte 0xB4B4B4B4
	.4byte 0xC6C6C6C6
	.4byte 0xE8E8E8E8
	.4byte 0xDDDDDDDD
	.4byte 0x74747474
	.4byte 0x1F1F1F1F
	.4byte 0x4B4B4B4B
	.4byte 0xBDBDBDBD
	.4byte 0x8B8B8B8B
	.4byte 0x8A8A8A8A
	.4byte 0x70707070
	.4byte 0x3E3E3E3E
	.4byte 0xB5B5B5B5
	.4byte 0x66666666
	.4byte 0x48484848
	.4byte 0x03030303
	.4byte 0xF6F6F6F6
	.4byte 0x0E0E0E0E
	.4byte 0x61616161
	.4byte 0x35353535
	.4byte 0x57575757
	.4byte 0xB9B9B9B9
	.4byte 0x86868686
	.4byte 0xC1C1C1C1
	.4byte 0x1D1D1D1D
	.4byte 0x9E9E9E9E
	.4byte 0xE1E1E1E1
	.4byte 0xF8F8F8F8
	.4byte 0x98989898
	.4byte 0x11111111
	.4byte 0x69696969
	.4byte 0xD9D9D9D9
	.4byte 0x8E8E8E8E
	.4byte 0x94949494
	.4byte 0x9B9B9B9B
	.4byte 0x1E1E1E1E
	.4byte 0x87878787
	.4byte 0xE9E9E9E9
	.4byte 0xCECECECE
	.4byte 0x55555555
	.4byte 0x28282828
	.4byte 0xDFDFDFDF
	.4byte 0x8C8C8C8C
	.4byte 0xA1A1A1A1
	.4byte 0x89898989
	.4byte 0x0D0D0D0D
	.4byte 0xBFBFBFBF
	.4byte 0xE6E6E6E6
	.4byte 0x42424242
	.4byte 0x68686868
	.4byte 0x41414141
	.4byte 0x99999999
	.4byte 0x2D2D2D2D
	.4byte 0x0F0F0F0F
	.4byte 0xB0B0B0B0
	.4byte 0x54545454
	.4byte 0xBBBBBBBB
	.4byte 0x16161616
	.4byte 0x51F4A750
	.4byte 0x7E416553
	.4byte 0x1A17A4C3
	.4byte 0x3A275E96
	.4byte 0x3BAB6BCB
	.4byte 0x1F9D45F1
	.4byte 0xACFA58AB
	.4byte 0x4BE30393
	.4byte 0x2030FA55
	.4byte 0xAD766DF6
	.4byte 0x88CC7691
	.4byte 0xF5024C25
	.4byte 0x4FE5D7FC
	.4byte 0xC52ACBD7
	.4byte 0x26354480
	.4byte 0xB562A38F
	.4byte 0xDEB15A49
	.4byte 0x25BA1B67
	.4byte 0x45EA0E98
	.4byte 0x5DFEC0E1
	.4byte 0xC32F7502
	.4byte 0x814CF012
	.4byte 0x8D4697A3
	.4byte 0x6BD3F9C6
	.4byte 0x038F5FE7
	.4byte 0x15929C95
	.4byte 0xBF6D7AEB
	.4byte 0x955259DA
	.4byte 0xD4BE832D
	.4byte 0x587421D3
	.4byte 0x49E06929
	.4byte 0x8EC9C844
	.4byte 0x75C2896A
	.4byte 0xF48E7978
	.4byte 0x99583E6B
	.4byte 0x27B971DD
	.4byte 0xBEE14FB6
	.4byte 0xF088AD17
	.4byte 0xC920AC66
	.4byte 0x7DCE3AB4
	.4byte 0x63DF4A18
	.4byte 0xE51A3182
	.4byte 0x97513360
	.4byte 0x62537F45
	.4byte 0xB16477E0
	.4byte 0xBB6BAE84
	.4byte 0xFE81A01C
	.4byte 0xF9082B94
	.4byte 0x70486858
	.4byte 0x8F45FD19
	.4byte 0x94DE6C87
	.4byte 0x527BF8B7
	.4byte 0xAB73D323
	.4byte 0x724B02E2
	.4byte 0xE31F8F57
	.4byte 0x6655AB2A
	.4byte 0xB2EB2807
	.4byte 0x2FB5C203
	.4byte 0x86C57B9A
	.4byte 0xD33708A5
	.4byte 0x302887F2
	.4byte 0x23BFA5B2
	.4byte 0x02036ABA
	.4byte 0xED16825C
	.4byte 0x8ACF1C2B
	.4byte 0xA779B492
	.4byte 0xF307F2F0
	.4byte 0x4E69E2A1
	.4byte 0x65DAF4CD
	.4byte 0x0605BED5
	.4byte 0xD134621F
	.4byte 0xC4A6FE8A
	.4byte 0x342E539D
	.4byte 0xA2F355A0
	.4byte 0x058AE132
	.4byte 0xA4F6EB75
	.4byte 0x0B83EC39
	.4byte 0x4060EFAA
	.4byte 0x5E719F06
	.4byte 0xBD6E1051
	.4byte 0x3E218AF9
	.4byte 0x96DD063D
	.4byte 0xDD3E05AE
	.4byte 0x4DE6BD46
	.4byte 0x91548DB5
	.4byte 0x71C45D05
	.4byte 0x0406D46F
	.4byte 0x605015FF
	.4byte 0x1998FB24
	.4byte 0xD6BDE997
	.4byte 0x894043CC
	.4byte 0x67D99E77
	.4byte 0xB0E842BD
	.4byte 0x07898B88
	.4byte 0xE7195B38
	.4byte 0x79C8EEDB
	.4byte 0xA17C0A47
	.4byte 0x7C420FE9
	.4byte 0xF8841EC9
	.4byte 0x00000000
	.4byte 0x09808683
	.4byte 0x322BED48
	.4byte 0x1E1170AC
	.4byte 0x6C5A724E
	.4byte 0xFD0EFFFB
	.4byte 0x0F853856
	.4byte 0x3DAED51E
	.4byte 0x362D3927
	.4byte 0x0A0FD964
	.4byte 0x685CA621
	.4byte 0x9B5B54D1
	.4byte 0x24362E3A
	.4byte 0x0C0A67B1
	.4byte 0x9357E70F
	.4byte 0xB4EE96D2
	.4byte 0x1B9B919E
	.4byte 0x80C0C54F
	.4byte 0x61DC20A2
	.4byte 0x5A774B69
	.4byte 0x1C121A16
	.4byte 0xE293BA0A
	.4byte 0xC0A02AE5
	.4byte 0x3C22E043
	.4byte 0x121B171D
	.4byte 0x0E090D0B
	.4byte 0xF28BC7AD
	.4byte 0x2DB6A8B9
	.4byte 0x141EA9C8
	.4byte 0x57F11985
	.4byte 0xAF75074C
	.4byte 0xEE99DDBB
	.4byte 0xA37F60FD
	.4byte 0xF701269F
	.4byte 0x5C72F5BC
	.4byte 0x44663BC5
	.4byte 0x5BFB7E34
	.4byte 0x8B432976
	.4byte 0xCB23C6DC
	.4byte 0xB6EDFC68
	.4byte 0xB8E4F163
	.4byte 0xD731DCCA
	.4byte 0x42638510
	.4byte 0x13972240
	.4byte 0x84C61120
	.4byte 0x854A247D
	.4byte 0xD2BB3DF8
	.4byte 0xAEF93211
	.4byte 0xC729A16D
	.4byte 0x1D9E2F4B
	.4byte 0xDCB230F3
	.4byte 0x0D8652EC
	.4byte 0x77C1E3D0
	.4byte 0x2BB3166C
	.4byte 0xA970B999
	.4byte 0x119448FA
	.4byte 0x47E96422
	.4byte 0xA8FC8CC4
	.4byte 0xA0F03F1A
	.4byte 0x567D2CD8
	.4byte 0x223390EF
	.4byte 0x87494EC7
	.4byte 0xD938D1C1
	.4byte 0x8CCAA2FE
	.4byte 0x98D40B36
	.4byte 0xA6F581CF
	.4byte 0xA57ADE28
	.4byte 0xDAB78E26
	.4byte 0x3FADBFA4
	.4byte 0x2C3A9DE4
	.4byte 0x5078920D
	.4byte 0x6A5FCC9B
	.4byte 0x547E4662
	.4byte 0xF68D13C2
	.4byte 0x90D8B8E8
	.4byte 0x2E39F75E
	.4byte 0x82C3AFF5
	.4byte 0x9F5D80BE
	.4byte 0x69D0937C
	.4byte 0x6FD52DA9
	.4byte 0xCF2512B3
	.4byte 0xC8AC993B
	.4byte 0x10187DA7
	.4byte 0xE89C636E
	.4byte 0xDB3BBB7B
	.4byte 0xCD267809
	.4byte 0x6E5918F4
	.4byte 0xEC9AB701
	.4byte 0x834F9AA8
	.4byte 0xE6956E65
	.4byte 0xAAFFE67E
	.4byte 0x21BCCF08
	.4byte 0xEF15E8E6
	.4byte 0xBAE79BD9
	.4byte 0x4A6F36CE
	.4byte 0xEA9F09D4
	.4byte 0x29B07CD6
	.4byte 0x31A4B2AF
	.4byte 0x2A3F2331
	.4byte 0xC6A59430
	.4byte 0x35A266C0
	.4byte 0x744EBC37
	.4byte 0xFC82CAA6
	.4byte 0xE090D0B0
	.4byte 0x33A7D815
	.4byte 0xF104984A
	.4byte 0x41ECDAF7
	.4byte 0x7FCD500E
	.4byte 0x1791F62F
	.4byte 0x764DD68D
	.4byte 0x43EFB04D
	.4byte 0xCCAA4D54
	.4byte 0xE49604DF
	.4byte 0x9ED1B5E3
	.4byte 0x4C6A881B
	.4byte 0xC12C1FB8
	.4byte 0x4665517F
	.4byte 0x9D5EEA04
	.4byte 0x018C355D
	.4byte 0xFA877473
	.4byte 0xFB0B412E
	.4byte 0xB3671D5A
	.4byte 0x92DBD252
	.4byte 0xE9105633
	.4byte 0x6DD64713
	.4byte 0x9AD7618C
	.4byte 0x37A10C7A
	.4byte 0x59F8148E
	.4byte 0xEB133C89
	.4byte 0xCEA927EE
	.4byte 0xB761C935
	.4byte 0xE11CE5ED
	.4byte 0x7A47B13C
	.4byte 0x9CD2DF59
	.4byte 0x55F2733F
	.4byte 0x1814CE79
	.4byte 0x73C737BF
	.4byte 0x53F7CDEA
	.4byte 0x5FFDAA5B
	.4byte 0xDF3D6F14
	.4byte 0x7844DB86
	.4byte 0xCAAFF381
	.4byte 0xB968C43E
	.4byte 0x3824342C
	.4byte 0xC2A3405F
	.4byte 0x161DC372
	.4byte 0xBCE2250C
	.4byte 0x283C498B
	.4byte 0xFF0D9541
	.4byte 0x39A80171
	.4byte 0x080CB3DE
	.4byte 0xD8B4E49C
	.4byte 0x6456C190
	.4byte 0x7BCB8461
	.4byte 0xD532B670
	.4byte 0x486C5C74
	.4byte 0xD0B85742
	.4byte 0x5051F4A7
	.4byte 0x537E4165
	.4byte 0xC31A17A4
	.4byte 0x963A275E
	.4byte 0xCB3BAB6B
	.4byte 0xF11F9D45
	.4byte 0xABACFA58
	.4byte 0x934BE303
	.4byte 0x552030FA
	.4byte 0xF6AD766D
	.4byte 0x9188CC76
	.4byte 0x25F5024C
	.4byte 0xFC4FE5D7
	.4byte 0xD7C52ACB
	.4byte 0x80263544
	.4byte 0x8FB562A3
	.4byte 0x49DEB15A
	.4byte 0x6725BA1B
	.4byte 0x9845EA0E
	.4byte 0xE15DFEC0
	.4byte 0x02C32F75
	.4byte 0x12814CF0
	.4byte 0xA38D4697
	.4byte 0xC66BD3F9
	.4byte 0xE7038F5F
	.4byte 0x9515929C
	.4byte 0xEBBF6D7A
	.4byte 0xDA955259
	.4byte 0x2DD4BE83
	.4byte 0xD3587421
	.4byte 0x2949E069
	.4byte 0x448EC9C8
	.4byte 0x6A75C289
	.4byte 0x78F48E79
	.4byte 0x6B99583E
	.4byte 0xDD27B971
	.4byte 0xB6BEE14F
	.4byte 0x17F088AD
	.4byte 0x66C920AC
	.4byte 0xB47DCE3A
	.4byte 0x1863DF4A
	.4byte 0x82E51A31
	.4byte 0x60975133
	.4byte 0x4562537F
	.4byte 0xE0B16477
	.4byte 0x84BB6BAE
	.4byte 0x1CFE81A0
	.4byte 0x94F9082B
	.4byte 0x58704868
	.4byte 0x198F45FD
	.4byte 0x8794DE6C
	.4byte 0xB7527BF8
	.4byte 0x23AB73D3
	.4byte 0xE2724B02
	.4byte 0x57E31F8F
	.4byte 0x2A6655AB
	.4byte 0x07B2EB28
	.4byte 0x032FB5C2
	.4byte 0x9A86C57B
	.4byte 0xA5D33708
	.4byte 0xF2302887
	.4byte 0xB223BFA5
	.4byte 0xBA02036A
	.4byte 0x5CED1682
	.4byte 0x2B8ACF1C
	.4byte 0x92A779B4
	.4byte 0xF0F307F2
	.4byte 0xA14E69E2
	.4byte 0xCD65DAF4
	.4byte 0xD50605BE
	.4byte 0x1FD13462
	.4byte 0x8AC4A6FE
	.4byte 0x9D342E53
	.4byte 0xA0A2F355
	.4byte 0x32058AE1
	.4byte 0x75A4F6EB
	.4byte 0x390B83EC
	.4byte 0xAA4060EF
	.4byte 0x065E719F
	.4byte 0x51BD6E10
	.4byte 0xF93E218A
	.4byte 0x3D96DD06
	.4byte 0xAEDD3E05
	.4byte 0x464DE6BD
	.4byte 0xB591548D
	.4byte 0x0571C45D
	.4byte 0x6F0406D4
	.4byte 0xFF605015
	.4byte 0x241998FB
	.4byte 0x97D6BDE9
	.4byte 0xCC894043
	.4byte 0x7767D99E
	.4byte 0xBDB0E842
	.4byte 0x8807898B
	.4byte 0x38E7195B
	.4byte 0xDB79C8EE
	.4byte 0x47A17C0A
	.4byte 0xE97C420F
	.4byte 0xC9F8841E
	.4byte 0x00000000
	.4byte 0x83098086
	.4byte 0x48322BED
	.4byte 0xAC1E1170
	.4byte 0x4E6C5A72
	.4byte 0xFBFD0EFF
	.4byte 0x560F8538
	.4byte 0x1E3DAED5
	.4byte 0x27362D39
	.4byte 0x640A0FD9
	.4byte 0x21685CA6
	.4byte 0xD19B5B54
	.4byte 0x3A24362E
	.4byte 0xB10C0A67
	.4byte 0x0F9357E7
	.4byte 0xD2B4EE96
	.4byte 0x9E1B9B91
	.4byte 0x4F80C0C5
	.4byte 0xA261DC20
	.4byte 0x695A774B
	.4byte 0x161C121A
	.4byte 0x0AE293BA
	.4byte 0xE5C0A02A
	.4byte 0x433C22E0
	.4byte 0x1D121B17
	.4byte 0x0B0E090D
	.4byte 0xADF28BC7
	.4byte 0xB92DB6A8
	.4byte 0xC8141EA9
	.4byte 0x8557F119
	.4byte 0x4CAF7507
	.4byte 0xBBEE99DD
	.4byte 0xFDA37F60
	.4byte 0x9FF70126
	.4byte 0xBC5C72F5
	.4byte 0xC544663B
	.4byte 0x345BFB7E
	.4byte 0x768B4329
	.4byte 0xDCCB23C6
	.4byte 0x68B6EDFC
	.4byte 0x63B8E4F1
	.4byte 0xCAD731DC
	.4byte 0x10426385
	.4byte 0x40139722
	.4byte 0x2084C611
	.4byte 0x7D854A24
	.4byte 0xF8D2BB3D
	.4byte 0x11AEF932
	.4byte 0x6DC729A1
	.4byte 0x4B1D9E2F
	.4byte 0xF3DCB230
	.4byte 0xEC0D8652
	.4byte 0xD077C1E3
	.4byte 0x6C2BB316
	.4byte 0x99A970B9
	.4byte 0xFA119448
	.4byte 0x2247E964
	.4byte 0xC4A8FC8C
	.4byte 0x1AA0F03F
	.4byte 0xD8567D2C
	.4byte 0xEF223390
	.4byte 0xC787494E
	.4byte 0xC1D938D1
	.4byte 0xFE8CCAA2
	.4byte 0x3698D40B
	.4byte 0xCFA6F581
	.4byte 0x28A57ADE
	.4byte 0x26DAB78E
	.4byte 0xA43FADBF
	.4byte 0xE42C3A9D
	.4byte 0x0D507892
	.4byte 0x9B6A5FCC
	.4byte 0x62547E46
	.4byte 0xC2F68D13
	.4byte 0xE890D8B8
	.4byte 0x5E2E39F7
	.4byte 0xF582C3AF
	.4byte 0xBE9F5D80
	.4byte 0x7C69D093
	.4byte 0xA96FD52D
	.4byte 0xB3CF2512
	.4byte 0x3BC8AC99
	.4byte 0xA710187D
	.4byte 0x6EE89C63
	.4byte 0x7BDB3BBB
	.4byte 0x09CD2678
	.4byte 0xF46E5918
	.4byte 0x01EC9AB7
	.4byte 0xA8834F9A
	.4byte 0x65E6956E
	.4byte 0x7EAAFFE6
	.4byte 0x0821BCCF
	.4byte 0xE6EF15E8
	.4byte 0xD9BAE79B
	.4byte 0xCE4A6F36
	.4byte 0xD4EA9F09
	.4byte 0xD629B07C
	.4byte 0xAF31A4B2
	.4byte 0x312A3F23
	.4byte 0x30C6A594
	.4byte 0xC035A266
	.4byte 0x37744EBC
	.4byte 0xA6FC82CA
	.4byte 0xB0E090D0
	.4byte 0x1533A7D8
	.4byte 0x4AF10498
	.4byte 0xF741ECDA
	.4byte 0x0E7FCD50
	.4byte 0x2F1791F6
	.4byte 0x8D764DD6
	.4byte 0x4D43EFB0
	.4byte 0x54CCAA4D
	.4byte 0xDFE49604
	.4byte 0xE39ED1B5
	.4byte 0x1B4C6A88
	.4byte 0xB8C12C1F
	.4byte 0x7F466551
	.4byte 0x049D5EEA
	.4byte 0x5D018C35
	.4byte 0x73FA8774
	.4byte 0x2EFB0B41
	.4byte 0x5AB3671D
	.4byte 0x5292DBD2
	.4byte 0x33E91056
	.4byte 0x136DD647
	.4byte 0x8C9AD761
	.4byte 0x7A37A10C
	.4byte 0x8E59F814
	.4byte 0x89EB133C
	.4byte 0xEECEA927
	.4byte 0x35B761C9
	.4byte 0xEDE11CE5
	.4byte 0x3C7A47B1
	.4byte 0x599CD2DF
	.4byte 0x3F55F273
	.4byte 0x791814CE
	.4byte 0xBF73C737
	.4byte 0xEA53F7CD
	.4byte 0x5B5FFDAA
	.4byte 0x14DF3D6F
	.4byte 0x867844DB
	.4byte 0x81CAAFF3
	.4byte 0x3EB968C4
	.4byte 0x2C382434
	.4byte 0x5FC2A340
	.4byte 0x72161DC3
	.4byte 0x0CBCE225
	.4byte 0x8B283C49
	.4byte 0x41FF0D95
	.4byte 0x7139A801
	.4byte 0xDE080CB3
	.4byte 0x9CD8B4E4
	.4byte 0x906456C1
	.4byte 0x617BCB84
	.4byte 0x70D532B6
	.4byte 0x74486C5C
	.4byte 0x42D0B857
	.4byte 0xA75051F4
	.4byte 0x65537E41
	.4byte 0xA4C31A17
	.4byte 0x5E963A27
	.4byte 0x6BCB3BAB
	.4byte 0x45F11F9D
	.4byte 0x58ABACFA
	.4byte 0x03934BE3
	.4byte 0xFA552030
	.4byte 0x6DF6AD76
	.4byte 0x769188CC
	.4byte 0x4C25F502
	.4byte 0xD7FC4FE5
	.4byte 0xCBD7C52A
	.4byte 0x44802635
	.4byte 0xA38FB562
	.4byte 0x5A49DEB1
	.4byte 0x1B6725BA
	.4byte 0x0E9845EA
	.4byte 0xC0E15DFE
	.4byte 0x7502C32F
	.4byte 0xF012814C
	.4byte 0x97A38D46
	.4byte 0xF9C66BD3
	.4byte 0x5FE7038F
	.4byte 0x9C951592
	.4byte 0x7AEBBF6D
	.4byte 0x59DA9552
	.4byte 0x832DD4BE
	.4byte 0x21D35874
	.4byte 0x692949E0
	.4byte 0xC8448EC9
	.4byte 0x896A75C2
	.4byte 0x7978F48E
	.4byte 0x3E6B9958
	.4byte 0x71DD27B9
	.4byte 0x4FB6BEE1
	.4byte 0xAD17F088
	.4byte 0xAC66C920
	.4byte 0x3AB47DCE
	.4byte 0x4A1863DF
	.4byte 0x3182E51A
	.4byte 0x33609751
	.4byte 0x7F456253
	.4byte 0x77E0B164
	.4byte 0xAE84BB6B
	.4byte 0xA01CFE81
	.4byte 0x2B94F908
	.4byte 0x68587048
	.4byte 0xFD198F45
	.4byte 0x6C8794DE
	.4byte 0xF8B7527B
	.4byte 0xD323AB73
	.4byte 0x02E2724B
	.4byte 0x8F57E31F
	.4byte 0xAB2A6655
	.4byte 0x2807B2EB
	.4byte 0xC2032FB5
	.4byte 0x7B9A86C5
	.4byte 0x08A5D337
	.4byte 0x87F23028
	.4byte 0xA5B223BF
	.4byte 0x6ABA0203
	.4byte 0x825CED16
	.4byte 0x1C2B8ACF
	.4byte 0xB492A779
	.4byte 0xF2F0F307
	.4byte 0xE2A14E69
	.4byte 0xF4CD65DA
	.4byte 0xBED50605
	.4byte 0x621FD134
	.4byte 0xFE8AC4A6
	.4byte 0x539D342E
	.4byte 0x55A0A2F3
	.4byte 0xE132058A
	.4byte 0xEB75A4F6
	.4byte 0xEC390B83
	.4byte 0xEFAA4060
	.4byte 0x9F065E71
	.4byte 0x1051BD6E
	.4byte 0x8AF93E21
	.4byte 0x063D96DD
	.4byte 0x05AEDD3E
	.4byte 0xBD464DE6
	.4byte 0x8DB59154
	.4byte 0x5D0571C4
	.4byte 0xD46F0406
	.4byte 0x15FF6050
	.4byte 0xFB241998
	.4byte 0xE997D6BD
	.4byte 0x43CC8940
	.4byte 0x9E7767D9
	.4byte 0x42BDB0E8
	.4byte 0x8B880789
	.4byte 0x5B38E719
	.4byte 0xEEDB79C8
	.4byte 0x0A47A17C
	.4byte 0x0FE97C42
	.4byte 0x1EC9F884
	.4byte 0x00000000
	.4byte 0x86830980
	.4byte 0xED48322B
	.4byte 0x70AC1E11
	.4byte 0x724E6C5A
	.4byte 0xFFFBFD0E
	.4byte 0x38560F85
	.4byte 0xD51E3DAE
	.4byte 0x3927362D
	.4byte 0xD9640A0F
	.4byte 0xA621685C
	.4byte 0x54D19B5B
	.4byte 0x2E3A2436
	.4byte 0x67B10C0A
	.4byte 0xE70F9357
	.4byte 0x96D2B4EE
	.4byte 0x919E1B9B
	.4byte 0xC54F80C0
	.4byte 0x20A261DC
	.4byte 0x4B695A77
	.4byte 0x1A161C12
	.4byte 0xBA0AE293
	.4byte 0x2AE5C0A0
	.4byte 0xE0433C22
	.4byte 0x171D121B
	.4byte 0x0D0B0E09
	.4byte 0xC7ADF28B
	.4byte 0xA8B92DB6
	.4byte 0xA9C8141E
	.4byte 0x198557F1
	.4byte 0x074CAF75
	.4byte 0xDDBBEE99
	.4byte 0x60FDA37F
	.4byte 0x269FF701
	.4byte 0xF5BC5C72
	.4byte 0x3BC54466
	.4byte 0x7E345BFB
	.4byte 0x29768B43
	.4byte 0xC6DCCB23
	.4byte 0xFC68B6ED
	.4byte 0xF163B8E4
	.4byte 0xDCCAD731
	.4byte 0x85104263
	.4byte 0x22401397
	.4byte 0x112084C6
	.4byte 0x247D854A
	.4byte 0x3DF8D2BB
	.4byte 0x3211AEF9
	.4byte 0xA16DC729
	.4byte 0x2F4B1D9E
	.4byte 0x30F3DCB2
	.4byte 0x52EC0D86
	.4byte 0xE3D077C1
	.4byte 0x166C2BB3
	.4byte 0xB999A970
	.4byte 0x48FA1194
	.4byte 0x642247E9
	.4byte 0x8CC4A8FC
	.4byte 0x3F1AA0F0
	.4byte 0x2CD8567D
	.4byte 0x90EF2233
	.4byte 0x4EC78749
	.4byte 0xD1C1D938
	.4byte 0xA2FE8CCA
	.4byte 0x0B3698D4
	.4byte 0x81CFA6F5
	.4byte 0xDE28A57A
	.4byte 0x8E26DAB7
	.4byte 0xBFA43FAD
	.4byte 0x9DE42C3A
	.4byte 0x920D5078
	.4byte 0xCC9B6A5F
	.4byte 0x4662547E
	.4byte 0x13C2F68D
	.4byte 0xB8E890D8
	.4byte 0xF75E2E39
	.4byte 0xAFF582C3
	.4byte 0x80BE9F5D
	.4byte 0x937C69D0
	.4byte 0x2DA96FD5
	.4byte 0x12B3CF25
	.4byte 0x993BC8AC
	.4byte 0x7DA71018
	.4byte 0x636EE89C
	.4byte 0xBB7BDB3B
	.4byte 0x7809CD26
	.4byte 0x18F46E59
	.4byte 0xB701EC9A
	.4byte 0x9AA8834F
	.4byte 0x6E65E695
	.4byte 0xE67EAAFF
	.4byte 0xCF0821BC
	.4byte 0xE8E6EF15
	.4byte 0x9BD9BAE7
	.4byte 0x36CE4A6F
	.4byte 0x09D4EA9F
	.4byte 0x7CD629B0
	.4byte 0xB2AF31A4
	.4byte 0x23312A3F
	.4byte 0x9430C6A5
	.4byte 0x66C035A2
	.4byte 0xBC37744E
	.4byte 0xCAA6FC82
	.4byte 0xD0B0E090
	.4byte 0xD81533A7
	.4byte 0x984AF104
	.4byte 0xDAF741EC
	.4byte 0x500E7FCD
	.4byte 0xF62F1791
	.4byte 0xD68D764D
	.4byte 0xB04D43EF
	.4byte 0x4D54CCAA
	.4byte 0x04DFE496
	.4byte 0xB5E39ED1
	.4byte 0x881B4C6A
	.4byte 0x1FB8C12C
	.4byte 0x517F4665
	.4byte 0xEA049D5E
	.4byte 0x355D018C
	.4byte 0x7473FA87
	.4byte 0x412EFB0B
	.4byte 0x1D5AB367
	.4byte 0xD25292DB
	.4byte 0x5633E910
	.4byte 0x47136DD6
	.4byte 0x618C9AD7
	.4byte 0x0C7A37A1
	.4byte 0x148E59F8
	.4byte 0x3C89EB13
	.4byte 0x27EECEA9
	.4byte 0xC935B761
	.4byte 0xE5EDE11C
	.4byte 0xB13C7A47
	.4byte 0xDF599CD2
	.4byte 0x733F55F2
	.4byte 0xCE791814
	.4byte 0x37BF73C7
	.4byte 0xCDEA53F7
	.4byte 0xAA5B5FFD
	.4byte 0x6F14DF3D
	.4byte 0xDB867844
	.4byte 0xF381CAAF
	.4byte 0xC43EB968
	.4byte 0x342C3824
	.4byte 0x405FC2A3
	.4byte 0xC372161D
	.4byte 0x250CBCE2
	.4byte 0x498B283C
	.4byte 0x9541FF0D
	.4byte 0x017139A8
	.4byte 0xB3DE080C
	.4byte 0xE49CD8B4
	.4byte 0xC1906456
	.4byte 0x84617BCB
	.4byte 0xB670D532
	.4byte 0x5C74486C
	.4byte 0x5742D0B8
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
	.4byte 0x52525252
	.4byte 0x09090909
	.4byte 0x6A6A6A6A
	.4byte 0xD5D5D5D5
	.4byte 0x30303030
	.4byte 0x36363636
	.4byte 0xA5A5A5A5
	.4byte 0x38383838
	.4byte 0xBFBFBFBF
	.4byte 0x40404040
	.4byte 0xA3A3A3A3
	.4byte 0x9E9E9E9E
	.4byte 0x81818181
	.4byte 0xF3F3F3F3
	.4byte 0xD7D7D7D7
	.4byte 0xFBFBFBFB
	.4byte 0x7C7C7C7C
	.4byte 0xE3E3E3E3
	.4byte 0x39393939
	.4byte 0x82828282
	.4byte 0x9B9B9B9B
	.4byte 0x2F2F2F2F
	.4byte 0xFFFFFFFF
	.4byte 0x87878787
	.4byte 0x34343434
	.4byte 0x8E8E8E8E
	.4byte 0x43434343
	.4byte 0x44444444
	.4byte 0xC4C4C4C4
	.4byte 0xDEDEDEDE
	.4byte 0xE9E9E9E9
	.4byte 0xCBCBCBCB
	.4byte 0x54545454
	.4byte 0x7B7B7B7B
	.4byte 0x94949494
	.4byte 0x32323232
	.4byte 0xA6A6A6A6
	.4byte 0xC2C2C2C2
	.4byte 0x23232323
	.4byte 0x3D3D3D3D
	.4byte 0xEEEEEEEE
	.4byte 0x4C4C4C4C
	.4byte 0x95959595
	.4byte 0x0B0B0B0B
	.4byte 0x42424242
	.4byte 0xFAFAFAFA
	.4byte 0xC3C3C3C3
	.4byte 0x4E4E4E4E
	.4byte 0x08080808
	.4byte 0x2E2E2E2E
	.4byte 0xA1A1A1A1
	.4byte 0x66666666
	.4byte 0x28282828
	.4byte 0xD9D9D9D9
	.4byte 0x24242424
	.4byte 0xB2B2B2B2
	.4byte 0x76767676
	.4byte 0x5B5B5B5B
	.4byte 0xA2A2A2A2
	.4byte 0x49494949
	.4byte 0x6D6D6D6D
	.4byte 0x8B8B8B8B
	.4byte 0xD1D1D1D1
	.4byte 0x25252525
	.4byte 0x72727272
	.4byte 0xF8F8F8F8
	.4byte 0xF6F6F6F6
	.4byte 0x64646464
	.4byte 0x86868686
	.4byte 0x68686868
	.4byte 0x98989898
	.4byte 0x16161616
	.4byte 0xD4D4D4D4
	.4byte 0xA4A4A4A4
	.4byte 0x5C5C5C5C
	.4byte 0xCCCCCCCC
	.4byte 0x5D5D5D5D
	.4byte 0x65656565
	.4byte 0xB6B6B6B6
	.4byte 0x92929292
	.4byte 0x6C6C6C6C
	.4byte 0x70707070
	.4byte 0x48484848
	.4byte 0x50505050
	.4byte 0xFDFDFDFD
	.4byte 0xEDEDEDED
	.4byte 0xB9B9B9B9
	.4byte 0xDADADADA
	.4byte 0x5E5E5E5E
	.4byte 0x15151515
	.4byte 0x46464646
	.4byte 0x57575757
	.4byte 0xA7A7A7A7
	.4byte 0x8D8D8D8D
	.4byte 0x9D9D9D9D
	.4byte 0x84848484
	.4byte 0x90909090
	.4byte 0xD8D8D8D8
	.4byte 0xABABABAB
	.4byte 0x00000000
	.4byte 0x8C8C8C8C
	.4byte 0xBCBCBCBC
	.4byte 0xD3D3D3D3
	.4byte 0x0A0A0A0A
	.4byte 0xF7F7F7F7
	.4byte 0xE4E4E4E4
	.4byte 0x58585858
	.4byte 0x05050505
	.4byte 0xB8B8B8B8
	.4byte 0xB3B3B3B3
	.4byte 0x45454545
	.4byte 0x06060606
	.4byte 0xD0D0D0D0
	.4byte 0x2C2C2C2C
	.4byte 0x1E1E1E1E
	.4byte 0x8F8F8F8F
	.4byte 0xCACACACA
	.4byte 0x3F3F3F3F
	.4byte 0x0F0F0F0F
	.4byte 0x02020202
	.4byte 0xC1C1C1C1
	.4byte 0xAFAFAFAF
	.4byte 0xBDBDBDBD
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x13131313
	.4byte 0x8A8A8A8A
	.4byte 0x6B6B6B6B
	.4byte 0x3A3A3A3A
	.4byte 0x91919191
	.4byte 0x11111111
	.4byte 0x41414141
	.4byte 0x4F4F4F4F
	.4byte 0x67676767
	.4byte 0xDCDCDCDC
	.4byte 0xEAEAEAEA
	.4byte 0x97979797
	.4byte 0xF2F2F2F2
	.4byte 0xCFCFCFCF
	.4byte 0xCECECECE
	.4byte 0xF0F0F0F0
	.4byte 0xB4B4B4B4
	.4byte 0xE6E6E6E6
	.4byte 0x73737373
	.4byte 0x96969696
	.4byte 0xACACACAC
	.4byte 0x74747474
	.4byte 0x22222222
	.4byte 0xE7E7E7E7
	.4byte 0xADADADAD
	.4byte 0x35353535
	.4byte 0x85858585
	.4byte 0xE2E2E2E2
	.4byte 0xF9F9F9F9
	.4byte 0x37373737
	.4byte 0xE8E8E8E8
	.4byte 0x1C1C1C1C
	.4byte 0x75757575
	.4byte 0xDFDFDFDF
	.4byte 0x6E6E6E6E
	.4byte 0x47474747
	.4byte 0xF1F1F1F1
	.4byte 0x1A1A1A1A
	.4byte 0x71717171
	.4byte 0x1D1D1D1D
	.4byte 0x29292929
	.4byte 0xC5C5C5C5
	.4byte 0x89898989
	.4byte 0x6F6F6F6F
	.4byte 0xB7B7B7B7
	.4byte 0x62626262
	.4byte 0x0E0E0E0E
	.4byte 0xAAAAAAAA
	.4byte 0x18181818
	.4byte 0xBEBEBEBE
	.4byte 0x1B1B1B1B
	.4byte 0xFCFCFCFC
	.4byte 0x56565656
	.4byte 0x3E3E3E3E
	.4byte 0x4B4B4B4B
	.4byte 0xC6C6C6C6
	.4byte 0xD2D2D2D2
	.4byte 0x79797979
	.4byte 0x20202020
	.4byte 0x9A9A9A9A
	.4byte 0xDBDBDBDB
	.4byte 0xC0C0C0C0
	.4byte 0xFEFEFEFE
	.4byte 0x78787878
	.4byte 0xCDCDCDCD
	.4byte 0x5A5A5A5A
	.4byte 0xF4F4F4F4
	.4byte 0x1F1F1F1F
	.4byte 0xDDDDDDDD
	.4byte 0xA8A8A8A8
	.4byte 0x33333333
	.4byte 0x88888888
	.4byte 0x07070707
	.4byte 0xC7C7C7C7
	.4byte 0x31313131
	.4byte 0xB1B1B1B1
	.4byte 0x12121212
	.4byte 0x10101010
	.4byte 0x59595959
	.4byte 0x27272727
	.4byte 0x80808080
	.4byte 0xECECECEC
	.4byte 0x5F5F5F5F
	.4byte 0x60606060
	.4byte 0x51515151
	.4byte 0x7F7F7F7F
	.4byte 0xA9A9A9A9
	.4byte 0x19191919
	.4byte 0xB5B5B5B5
	.4byte 0x4A4A4A4A
	.4byte 0x0D0D0D0D
	.4byte 0x2D2D2D2D
	.4byte 0xE5E5E5E5
	.4byte 0x7A7A7A7A
	.4byte 0x9F9F9F9F
	.4byte 0x93939393
	.4byte 0xC9C9C9C9
	.4byte 0x9C9C9C9C
	.4byte 0xEFEFEFEF
	.4byte 0xA0A0A0A0
	.4byte 0xE0E0E0E0
	.4byte 0x3B3B3B3B
	.4byte 0x4D4D4D4D
	.4byte 0xAEAEAEAE
	.4byte 0x2A2A2A2A
	.4byte 0xF5F5F5F5
	.4byte 0xB0B0B0B0
	.4byte 0xC8C8C8C8
	.4byte 0xEBEBEBEB
	.4byte 0xBBBBBBBB
	.4byte 0x3C3C3C3C
	.4byte 0x83838383
	.4byte 0x53535353
	.4byte 0x99999999
	.4byte 0x61616161
	.4byte 0x17171717
	.4byte 0x2B2B2B2B
	.4byte 0x04040404
	.4byte 0x7E7E7E7E
	.4byte 0xBABABABA
	.4byte 0x77777777
	.4byte 0xD6D6D6D6
	.4byte 0x26262626
	.4byte 0xE1E1E1E1
	.4byte 0x69696969
	.4byte 0x14141414
	.4byte 0x63636363
	.4byte 0x55555555
	.4byte 0x21212121
	.4byte 0x0C0C0C0C
	.4byte 0x7D7D7D7D
.endobj lbl_81611BC8

# .rodata:0x2800 | 0x816133C8 | size: 0x28
.obj lbl_816133C8, global
	.4byte 0x01000000
	.4byte 0x02000000
	.4byte 0x04000000
	.4byte 0x08000000
	.4byte 0x10000000
	.4byte 0x20000000
	.4byte 0x40000000
	.4byte 0x80000000
	.4byte 0x1B000000
	.4byte 0x36000000
.endobj lbl_816133C8

# 0x81657C48..0x81657ED0 | size: 0x288
.data
.balign 8

# .data:0x0 | 0x81657C48 | size: 0xC
.obj lbl_81657C48, global
	.4byte 0x45535349
	.4byte 0x442D414F
	.4byte 0x53530000
.endobj lbl_81657C48

# .data:0xC | 0x81657C54 | size: 0x58
.obj jumptable_81657C54, local
	.rel ATERM_81401104, .L_814011AC
	.rel ATERM_81401104, .L_814011C4
	.rel ATERM_81401104, .L_814011DC
	.rel ATERM_81401104, .L_814011F4
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_8140120C
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_814011AC
	.rel ATERM_81401104, .L_814011C4
	.rel ATERM_81401104, .L_814011DC
	.rel ATERM_81401104, .L_814011F4
	.rel ATERM_81401104, .L_81401240
	.rel ATERM_81401104, .L_8140120C
.endobj jumptable_81657C54

# .data:0x64 | 0x81657CAC | size: 0x58
.obj jumptable_81657CAC, local
	.rel ATERM_81401104, .L_8140115C
	.rel ATERM_81401104, .L_8140115C
	.rel ATERM_81401104, .L_8140115C
	.rel ATERM_81401104, .L_8140115C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140117C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140116C
	.rel ATERM_81401104, .L_8140116C
	.rel ATERM_81401104, .L_8140116C
	.rel ATERM_81401104, .L_8140116C
	.rel ATERM_81401104, .L_8140118C
	.rel ATERM_81401104, .L_8140117C
.endobj jumptable_81657CAC

# .data:0xBC | 0x81657D04 | size: 0x58
.obj jumptable_81657D04, local
	.rel ATERM_81401284, .L_8140131C
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401334
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_8140131C
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401368
	.rel ATERM_81401284, .L_81401334
.endobj jumptable_81657D04

# .data:0x114 | 0x81657D5C | size: 0x58
.obj jumptable_81657D5C, local
	.rel ATERM_81401284, .L_814012DC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012EC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012DC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012FC
	.rel ATERM_81401284, .L_814012EC
.endobj jumptable_81657D5C

# .data:0x16C | 0x81657DB4 | size: 0x4
.obj gap_08_81657DB4_data, global
.hidden gap_08_81657DB4_data
	.4byte 0x00000000
.endobj gap_08_81657DB4_data

# .data:0x170 | 0x81657DB8 | size: 0x28
.obj jumptable_81657DB8, local
	.rel ATERM_814033F0, .L_81403450
	.rel ATERM_814033F0, .L_81403478
	.rel ATERM_814033F0, .L_8140348C
	.rel ATERM_814033F0, .L_814034AC
	.rel ATERM_814033F0, .L_814034CC
	.rel ATERM_814033F0, .L_814034E0
	.rel ATERM_814033F0, .L_814034E0
	.rel ATERM_814033F0, .L_814034E0
	.rel ATERM_814033F0, .L_814034E0
	.rel ATERM_814033F0, .L_81403598
.endobj jumptable_81657DB8

# .data:0x198 | 0x81657DE0 | size: 0x84
.obj jumptable_81657DE0, local
	.rel ATERM_814036D8, .L_81403850
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_814037BC
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_814037D4
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_814037EC
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140381C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_81403804
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_8140384C
	.rel ATERM_814036D8, .L_81403834
.endobj jumptable_81657DE0

# .data:0x21C | 0x81657E64 | size: 0x2C
.obj jumptable_81657E64, local
	.rel ATERM_814038C8, .L_81404754
	.rel ATERM_814038C8, .L_814039B8
	.rel ATERM_814038C8, .L_81403A44
	.rel ATERM_814038C8, .L_81403AC0
	.rel ATERM_814038C8, .L_81403B44
	.rel ATERM_814038C8, .L_81403C64
	.rel ATERM_814038C8, .L_81403ED4
	.rel ATERM_814038C8, .L_814042E0
	.rel ATERM_814038C8, .L_814043DC
	.rel ATERM_814038C8, .L_814045D8
	.rel ATERM_814038C8, .L_81404704
.endobj jumptable_81657E64

# .data:0x248 | 0x81657E90 | size: 0x40
.obj lbl_81657E90, global
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81657E90

# 0x81694C78..0x81694C88 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694C78 | size: 0x2
.obj lbl_81694C78, global
	.2byte 0xFFFF
.endobj lbl_81694C78

# .sdata2:0x2 | 0x81694C7A | size: 0x6
.obj lbl_81694C7A, global
	.2byte 0xFFFF
	.2byte 0x0000
	.2byte 0x0000
.endobj lbl_81694C7A

# .sdata2:0x8 | 0x81694C80 | size: 0x1
.obj lbl_81694C80, global
	.byte 0x06
.endobj lbl_81694C80

# .sdata2:0x9 | 0x81694C81 | size: 0x1
.obj lbl_81694C81, global
	.byte 0x00
.endobj lbl_81694C81

# .sdata2:0xA | 0x81694C82 | size: 0x1
.obj lbl_81694C82, global
	.byte 0x01
.endobj lbl_81694C82

# .sdata2:0xB | 0x81694C83 | size: 0x1
.obj lbl_81694C83, global
	.byte 0x02
.endobj lbl_81694C83

# .sdata2:0xC | 0x81694C84 | size: 0x1
.obj lbl_81694C84, global
	.byte 0x03
.endobj lbl_81694C84

# .sdata2:0xD | 0x81694C85 | size: 0x1
.obj lbl_81694C85, global
	.byte 0x04
.endobj lbl_81694C85

# .sdata2:0xE | 0x81694C86 | size: 0x1
.obj lbl_81694C86, global
	.byte 0x05
.endobj lbl_81694C86

# .sdata2:0xF | 0x81694C87 | size: 0x1
.obj gap_09_81694C87_sdata2, global
.hidden gap_09_81694C87_sdata2
	.byte 0x00
.endobj gap_09_81694C87_sdata2

# 0x81697200..0x81697250 | size: 0x50
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697200 | size: 0x4
.obj lbl_81697200, global
	.4byte 0xFFFFFFFF
.endobj lbl_81697200

# .sdata:0x4 | 0x81697204 | size: 0x8
.obj lbl_81697204, global
	.4byte 0x4D454C43
	.4byte 0x4F000000
.endobj lbl_81697204

# .sdata:0xC | 0x8169720C | size: 0x4
.obj lbl_8169720C, global
	.4byte 0xFFFFFFFF
.endobj lbl_8169720C

# .sdata:0x10 | 0x81697210 | size: 0x8
.obj lbl_81697210, global
	.4byte 0x09080000
	.4byte 0x00000000
.endobj lbl_81697210

# .sdata:0x18 | 0x81697218 | size: 0x4
.obj lbl_81697218, global
	.4byte 0xFFFFFFFF
.endobj lbl_81697218

# .sdata:0x1C | 0x8169721C | size: 0x4
.obj lbl_8169721C, global
	.4byte 0x00000040
.endobj lbl_8169721C

# .sdata:0x20 | 0x81697220 | size: 0x4
.obj lbl_81697220, global
	.4byte 0x00000800
.endobj lbl_81697220

# .sdata:0x24 | 0x81697224 | size: 0x4
.obj lbl_81697224, global
	.4byte 0xC0A800B0
.endobj lbl_81697224

# .sdata:0x28 | 0x81697228 | size: 0x4
.obj lbl_81697228, global
	.4byte 0xFFFFFF00
.endobj lbl_81697228

# .sdata:0x2C | 0x8169722C | size: 0x4
.obj lbl_8169722C, global
	.4byte 0xC0A80001
.endobj lbl_8169722C

# .sdata:0x30 | 0x81697230 | size: 0x4
.obj lbl_81697230, global
	.4byte 0xC0A80001
.endobj lbl_81697230

# .sdata:0x34 | 0x81697234 | size: 0x4
.obj lbl_81697234, global
	.4byte 0xC0A80001
.endobj lbl_81697234

# .sdata:0x38 | 0x81697238 | size: 0x8
.obj lbl_81697238, global
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A0000
.endobj lbl_81697238

# .sdata:0x40 | 0x81697240 | size: 0x4
.obj lbl_81697240, global
	.4byte ATERM_810C0140
.endobj lbl_81697240

# .sdata:0x44 | 0x81697244 | size: 0x4
.obj lbl_81697244, global
	.4byte 0x00000001
.endobj lbl_81697244

# .sdata:0x48 | 0x81697248 | size: 0x8
.obj lbl_81697248, global
	.4byte 0x57415250
	.4byte 0x00000000
.endobj lbl_81697248

# 0x81698C70..0x81698CE0 | size: 0x70
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698C70 | size: 0x4
.obj lbl_81698C70, global
	.skip 0x4
.endobj lbl_81698C70

# .sbss:0x4 | 0x81698C74 | size: 0x4
.obj lbl_81698C74, global
	.skip 0x4
.endobj lbl_81698C74

# .sbss:0x8 | 0x81698C78 | size: 0x8
.obj lbl_81698C78, global
	.skip 0x8
.endobj lbl_81698C78

# .sbss:0x10 | 0x81698C80 | size: 0x4
.obj lbl_81698C80, global
	.skip 0x4
.endobj lbl_81698C80

# .sbss:0x14 | 0x81698C84 | size: 0x4
.obj lbl_81698C84, global
	.skip 0x4
.endobj lbl_81698C84

# .sbss:0x18 | 0x81698C88 | size: 0x4
.obj lbl_81698C88, global
	.skip 0x4
.endobj lbl_81698C88

# .sbss:0x1C | 0x81698C8C | size: 0x4
.obj lbl_81698C8C, global
	.skip 0x4
.endobj lbl_81698C8C

# .sbss:0x20 | 0x81698C90 | size: 0x4
.obj lbl_81698C90, global
	.skip 0x4
.endobj lbl_81698C90

# .sbss:0x24 | 0x81698C94 | size: 0x4
.obj lbl_81698C94, global
	.skip 0x4
.endobj lbl_81698C94

# .sbss:0x28 | 0x81698C98 | size: 0x4
.obj lbl_81698C98, global
	.skip 0x4
.endobj lbl_81698C98

# .sbss:0x2C | 0x81698C9C | size: 0x4
.obj lbl_81698C9C, global
	.skip 0x4
.endobj lbl_81698C9C

# .sbss:0x30 | 0x81698CA0 | size: 0x4
.obj lbl_81698CA0, global
	.skip 0x4
.endobj lbl_81698CA0

# .sbss:0x34 | 0x81698CA4 | size: 0x4
.obj lbl_81698CA4, global
	.skip 0x4
.endobj lbl_81698CA4

# .sbss:0x38 | 0x81698CA8 | size: 0x4
.obj lbl_81698CA8, global
	.skip 0x4
.endobj lbl_81698CA8

# .sbss:0x3C | 0x81698CAC | size: 0x4
.obj lbl_81698CAC, global
	.skip 0x4
.endobj lbl_81698CAC

# .sbss:0x40 | 0x81698CB0 | size: 0x4
.obj lbl_81698CB0, global
	.skip 0x4
.endobj lbl_81698CB0

# .sbss:0x44 | 0x81698CB4 | size: 0x4
.obj lbl_81698CB4, global
	.skip 0x4
.endobj lbl_81698CB4

# .sbss:0x48 | 0x81698CB8 | size: 0x4
.obj lbl_81698CB8, global
	.skip 0x4
.endobj lbl_81698CB8

# .sbss:0x4C | 0x81698CBC | size: 0x4
.obj lbl_81698CBC, global
	.skip 0x4
.endobj lbl_81698CBC

# .sbss:0x50 | 0x81698CC0 | size: 0x1
.obj lbl_81698CC0, global
	.skip 0x1
.endobj lbl_81698CC0

# .sbss:0x51 | 0x81698CC1 | size: 0x3
.obj gap_12_81698CC1_sbss, global
.hidden gap_12_81698CC1_sbss
	.skip 0x3
.endobj gap_12_81698CC1_sbss

# .sbss:0x54 | 0x81698CC4 | size: 0x4
.obj lbl_81698CC4, global
	.skip 0x4
.endobj lbl_81698CC4

# .sbss:0x58 | 0x81698CC8 | size: 0x8
.obj lbl_81698CC8, global
	.skip 0x8
.endobj lbl_81698CC8

# .sbss:0x60 | 0x81698CD0 | size: 0x4
.obj lbl_81698CD0, global
	.skip 0x4
.endobj lbl_81698CD0

# .sbss:0x64 | 0x81698CD4 | size: 0x8
.obj lbl_81698CD4, global
	.skip 0x8
.endobj lbl_81698CD4

# .sbss:0x6C | 0x81698CDC | size: 0x4
.obj lbl_81698CDC, global
	.skip 0x4
.endobj lbl_81698CDC
