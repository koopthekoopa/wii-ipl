.include "macros.inc"
.file "snd_StrmChannel.cpp"

# 0x8150C290..0x8150C4B0 | size: 0x220
.text
.balign 4

# .text:0x0 | 0x8150C290 | size: 0x80
# nw4r::snd::detail::StrmBufferPool::Setup(void*, unsigned long, int)
.fn Setup__Q44nw4r3snd6detail14StrmBufferPoolFPvUli, global
/* 8150C290 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150C294 | 7C 08 02 A6 */	mflr r0
/* 8150C298 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150C29C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150C2A0 | 48 0E D2 21 */	bl _savegpr_27
/* 8150C2A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150C2A8 | 7C 7B 1B 78 */	mr r27, r3
/* 8150C2AC | 7C 9C 23 78 */	mr r28, r4
/* 8150C2B0 | 7C BD 2B 78 */	mr r29, r5
/* 8150C2B4 | 7C DE 33 78 */	mr r30, r6
/* 8150C2B8 | 41 82 00 40 */	beq .L_8150C2F8
/* 8150C2BC | 48 02 45 C9 */	bl OSDisableInterrupts
/* 8150C2C0 | 7C 9D F3 96 */	divwu r4, r29, r30
/* 8150C2C4 | 38 00 00 00 */	li r0, 0x0
/* 8150C2C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150C2CC | 93 9B 00 00 */	stw r28, 0x0(r27)
/* 8150C2D0 | 38 7B 00 14 */	addi r3, r27, 0x14
/* 8150C2D4 | 93 BB 00 04 */	stw r29, 0x4(r27)
/* 8150C2D8 | 90 9B 00 08 */	stw r4, 0x8(r27)
/* 8150C2DC | 38 80 00 00 */	li r4, 0x0
/* 8150C2E0 | 38 A0 00 04 */	li r5, 0x4
/* 8150C2E4 | 93 DB 00 0C */	stw r30, 0xc(r27)
/* 8150C2E8 | 90 1B 00 10 */	stw r0, 0x10(r27)
/* 8150C2EC | 4B E2 40 49 */	bl memset
/* 8150C2F0 | 7F E3 FB 78 */	mr r3, r31
/* 8150C2F4 | 48 02 45 B9 */	bl OSRestoreInterrupts
.L_8150C2F8:
/* 8150C2F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150C2FC | 48 0E D2 11 */	bl _restgpr_27
/* 8150C300 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150C304 | 7C 08 03 A6 */	mtlr r0
/* 8150C308 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150C30C | 4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail14StrmBufferPoolFPvUli

# .text:0x80 | 0x8150C310 | size: 0x44
# nw4r::snd::detail::StrmBufferPool::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail14StrmBufferPoolFv, global
/* 8150C310 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C314 | 7C 08 02 A6 */	mflr r0
/* 8150C318 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C31C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150C320 | 7C 7F 1B 78 */	mr r31, r3
/* 8150C324 | 48 02 45 61 */	bl OSDisableInterrupts
/* 8150C328 | 38 00 00 00 */	li r0, 0x0
/* 8150C32C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8150C330 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8150C334 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8150C338 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8150C33C | 48 02 45 71 */	bl OSRestoreInterrupts
/* 8150C340 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150C344 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150C348 | 7C 08 03 A6 */	mtlr r0
/* 8150C34C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150C350 | 4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail14StrmBufferPoolFv

# .text:0xC4 | 0x8150C354 | size: 0xE4
# nw4r::snd::detail::StrmBufferPool::Alloc()
.fn Alloc__Q44nw4r3snd6detail14StrmBufferPoolFv, global
/* 8150C354 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C358 | 7C 08 02 A6 */	mflr r0
/* 8150C35C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C360 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150C364 | 7C 7F 1B 78 */	mr r31, r3
/* 8150C368 | 48 02 45 1D */	bl OSDisableInterrupts
/* 8150C36C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8150C370 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8150C374 | 7C 00 20 00 */	cmpw r0, r4
/* 8150C378 | 41 80 00 10 */	blt .L_8150C388
/* 8150C37C | 48 02 45 31 */	bl OSRestoreInterrupts
/* 8150C380 | 38 60 00 00 */	li r3, 0x0
/* 8150C384 | 48 00 00 A0 */	b .L_8150C424
.L_8150C388:
/* 8150C388 | 38 04 00 07 */	addi r0, r4, 0x7
/* 8150C38C | 39 00 00 00 */	li r8, 0x0
/* 8150C390 | 54 04 00 38 */	clrrwi r4, r0, 3
/* 8150C394 | 7C 84 1E 70 */	srawi r4, r4, 3
/* 8150C398 | 38 00 00 08 */	li r0, 0x8
/* 8150C39C | 7C E4 01 94 */	addze r7, r4
/* 8150C3A0 | 48 00 00 74 */	b .L_8150C414
.L_8150C3A4:
/* 8150C3A4 | 7C DF 42 14 */	add r6, r31, r8
/* 8150C3A8 | 88 A6 00 14 */	lbz r5, 0x14(r6)
/* 8150C3AC | 28 05 00 FF */	cmplwi r5, 0xff
/* 8150C3B0 | 41 82 00 60 */	beq .L_8150C410
/* 8150C3B4 | 39 20 00 01 */	li r9, 0x1
/* 8150C3B8 | 39 40 00 00 */	li r10, 0x0
/* 8150C3BC | 7C 09 03 A6 */	mtctr r0
.L_8150C3C0:
/* 8150C3C0 | 7C A4 48 39 */	and. r4, r5, r9
/* 8150C3C4 | 40 82 00 40 */	bne .L_8150C404
/* 8150C3C8 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 8150C3CC | 55 00 18 38 */	slwi r0, r8, 3
/* 8150C3D0 | 7C 0A 02 14 */	add r0, r10, r0
/* 8150C3D4 | 7C 84 4B 78 */	or r4, r4, r9
/* 8150C3D8 | 98 86 00 14 */	stb r4, 0x14(r6)
/* 8150C3DC | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8150C3E0 | 80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8150C3E4 | 7C 84 01 D6 */	mullw r4, r4, r0
/* 8150C3E8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8150C3EC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8150C3F0 | 90 BF 00 10 */	stw r5, 0x10(r31)
/* 8150C3F4 | 7F E4 02 14 */	add r31, r4, r0
/* 8150C3F8 | 48 02 44 B5 */	bl OSRestoreInterrupts
/* 8150C3FC | 7F E3 FB 78 */	mr r3, r31
/* 8150C400 | 48 00 00 24 */	b .L_8150C424
.L_8150C404:
/* 8150C404 | 55 29 0E 3C */	clrlslwi r9, r9, 25, 1
/* 8150C408 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 8150C40C | 42 00 FF B4 */	bdnz .L_8150C3C0
.L_8150C410:
/* 8150C410 | 39 08 00 01 */	addi r8, r8, 0x1
.L_8150C414:
/* 8150C414 | 7C 08 38 00 */	cmpw r8, r7
/* 8150C418 | 41 80 FF 8C */	blt .L_8150C3A4
/* 8150C41C | 48 02 44 91 */	bl OSRestoreInterrupts
/* 8150C420 | 38 60 00 00 */	li r3, 0x0
.L_8150C424:
/* 8150C424 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150C428 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150C42C | 7C 08 03 A6 */	mtlr r0
/* 8150C430 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150C434 | 4E 80 00 20 */	blr
.endfn Alloc__Q44nw4r3snd6detail14StrmBufferPoolFv

# .text:0x1A8 | 0x8150C438 | size: 0x78
# nw4r::snd::detail::StrmBufferPool::Free(void*)
.fn Free__Q44nw4r3snd6detail14StrmBufferPoolFPv, global
/* 8150C438 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C43C | 7C 08 02 A6 */	mflr r0
/* 8150C440 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150C448 | 7C 9F 23 78 */	mr r31, r4
/* 8150C44C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150C450 | 7C 7E 1B 78 */	mr r30, r3
/* 8150C454 | 48 02 44 31 */	bl OSDisableInterrupts
/* 8150C458 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8150C45C | 38 80 00 01 */	li r4, 0x1
/* 8150C460 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8150C464 | 7C A5 F8 50 */	subf r5, r5, r31
/* 8150C468 | 7C A5 03 96 */	divwu r5, r5, r0
/* 8150C46C | 54 A0 E8 FE */	srwi r0, r5, 3
/* 8150C470 | 7C DE 02 14 */	add r6, r30, r0
/* 8150C474 | 54 A0 07 7E */	clrlwi r0, r5, 29
/* 8150C478 | 88 A6 00 14 */	lbz r5, 0x14(r6)
/* 8150C47C | 7C 80 00 30 */	slw r0, r4, r0
/* 8150C480 | 7C A0 00 78 */	andc r0, r5, r0
/* 8150C484 | 98 06 00 14 */	stb r0, 0x14(r6)
/* 8150C488 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8150C48C | 38 04 FF FF */	subi r0, r4, 0x1
/* 8150C490 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8150C494 | 48 02 44 19 */	bl OSRestoreInterrupts
/* 8150C498 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150C49C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150C4A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150C4A4 | 7C 08 03 A6 */	mtlr r0
/* 8150C4A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150C4AC | 4E 80 00 20 */	blr
.endfn Free__Q44nw4r3snd6detail14StrmBufferPoolFPv
