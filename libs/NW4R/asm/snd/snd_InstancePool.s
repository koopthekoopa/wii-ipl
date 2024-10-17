.include "macros.inc"
.file "snd_InstancePool.cpp"

# 0x815012B4..0x8150151C | size: 0x268
.text
.balign 4

# .text:0x0 | 0x815012B4 | size: 0x144
# nw4r::snd::detail::PoolImpl::CreateImpl(void*, unsigned long, unsigned long)
.fn CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl, global
/* 815012B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815012B8 | 7C 08 02 A6 */	mflr r0
/* 815012BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815012C0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815012C4 | 7C 7F 1B 78 */	mr r31, r3
/* 815012C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815012CC | 7C DE 33 78 */	mr r30, r6
/* 815012D0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815012D4 | 7C BD 2B 78 */	mr r29, r5
/* 815012D8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 815012DC | 7C 9C 23 78 */	mr r28, r4
/* 815012E0 | 48 02 F5 A5 */	bl OSDisableInterrupts
/* 815012E4 | 38 1C 00 03 */	addi r0, r28, 0x3
/* 815012E8 | 38 9E 00 03 */	addi r4, r30, 0x3
/* 815012EC | 54 06 00 3A */	clrrwi r6, r0, 2
/* 815012F0 | 38 E0 00 00 */	li r7, 0x0
/* 815012F4 | 7C 1C 30 50 */	subf r0, r28, r6
/* 815012F8 | 54 84 00 3A */	clrrwi r4, r4, 2
/* 815012FC | 7C 00 E8 50 */	subf r0, r0, r29
/* 81501300 | 7F C0 23 97 */	divwu. r30, r0, r4
/* 81501304 | 41 82 00 CC */	beq .L_815013D0
/* 81501308 | 28 1E 00 08 */	cmplwi r30, 0x8
/* 8150130C | 38 BE FF F8 */	subi r5, r30, 0x8
/* 81501310 | 40 81 00 9C */	ble .L_815013AC
/* 81501314 | 38 05 00 07 */	addi r0, r5, 0x7
/* 81501318 | 54 00 E8 FE */	srwi r0, r0, 3
/* 8150131C | 7C 09 03 A6 */	mtctr r0
/* 81501320 | 28 05 00 00 */	cmplwi r5, 0x0
/* 81501324 | 40 81 00 88 */	ble .L_815013AC
.L_81501328:
/* 81501328 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8150132C | 7C C8 33 78 */	mr r8, r6
/* 81501330 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 81501334 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 81501338 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150133C | 7C C6 22 14 */	add r6, r6, r4
/* 81501340 | 7C C5 33 78 */	mr r5, r6
/* 81501344 | 91 06 00 00 */	stw r8, 0x0(r6)
/* 81501348 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150134C | 7C C6 22 14 */	add r6, r6, r4
/* 81501350 | 7C C0 33 78 */	mr r0, r6
/* 81501354 | 90 A6 00 00 */	stw r5, 0x0(r6)
/* 81501358 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150135C | 7C C6 22 14 */	add r6, r6, r4
/* 81501360 | 7C C5 33 78 */	mr r5, r6
/* 81501364 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 81501368 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150136C | 7C C6 22 14 */	add r6, r6, r4
/* 81501370 | 7C C0 33 78 */	mr r0, r6
/* 81501374 | 90 A6 00 00 */	stw r5, 0x0(r6)
/* 81501378 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150137C | 7C C6 22 14 */	add r6, r6, r4
/* 81501380 | 7C C5 33 78 */	mr r5, r6
/* 81501384 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 81501388 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150138C | 7C C6 22 14 */	add r6, r6, r4
/* 81501390 | 7C C0 33 78 */	mr r0, r6
/* 81501394 | 90 A6 00 00 */	stw r5, 0x0(r6)
/* 81501398 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8150139C | 7C 06 21 6E */	stwux r0, r6, r4
/* 815013A0 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 815013A4 | 7C C6 22 14 */	add r6, r6, r4
/* 815013A8 | 42 00 FF 80 */	bdnz .L_81501328
.L_815013AC:
/* 815013AC | 7C 07 F0 50 */	subf r0, r7, r30
/* 815013B0 | 7C 09 03 A6 */	mtctr r0
/* 815013B4 | 7C 07 F0 40 */	cmplw r7, r30
/* 815013B8 | 40 80 00 18 */	bge .L_815013D0
.L_815013BC:
/* 815013BC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 815013C0 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 815013C4 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 815013C8 | 7C C6 22 14 */	add r6, r6, r4
/* 815013CC | 42 00 FF F0 */	bdnz .L_815013BC
.L_815013D0:
/* 815013D0 | 48 02 F4 DD */	bl OSRestoreInterrupts
/* 815013D4 | 7F C3 F3 78 */	mr r3, r30
/* 815013D8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815013DC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815013E0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815013E4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 815013E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815013EC | 7C 08 03 A6 */	mtlr r0
/* 815013F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815013F4 | 4E 80 00 20 */	blr
.endfn CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl

# .text:0x144 | 0x815013F8 | size: 0x80
# nw4r::snd::detail::PoolImpl::DestroyImpl(void*, unsigned long)
.fn DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl, global
/* 815013F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815013FC | 7C 08 02 A6 */	mflr r0
/* 81501400 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81501404 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81501408 | 7C BF 2B 78 */	mr r31, r5
/* 8150140C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81501410 | 7C 9E 23 78 */	mr r30, r4
/* 81501414 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81501418 | 7C 7D 1B 78 */	mr r29, r3
/* 8150141C | 48 02 F4 69 */	bl OSDisableInterrupts
/* 81501420 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 81501424 | 7C 9E FA 14 */	add r4, r30, r31
/* 81501428 | 48 00 00 28 */	b .L_81501450
.L_8150142C:
/* 8150142C | 7C 1E 28 40 */	cmplw r30, r5
/* 81501430 | 41 81 00 18 */	bgt .L_81501448
/* 81501434 | 7C 05 20 40 */	cmplw r5, r4
/* 81501438 | 40 80 00 10 */	bge .L_81501448
/* 8150143C | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81501440 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 81501444 | 48 00 00 08 */	b .L_8150144C
.L_81501448:
/* 81501448 | 7C BD 2B 78 */	mr r29, r5
.L_8150144C:
/* 8150144C | 80 A5 00 00 */	lwz r5, 0x0(r5)
.L_81501450:
/* 81501450 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81501454 | 40 82 FF D8 */	bne .L_8150142C
/* 81501458 | 48 02 F4 55 */	bl OSRestoreInterrupts
/* 8150145C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81501460 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81501464 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81501468 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150146C | 7C 08 03 A6 */	mtlr r0
/* 81501470 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81501474 | 4E 80 00 20 */	blr
.endfn DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl

# .text:0x1C4 | 0x81501478 | size: 0x5C
# nw4r::snd::detail::PoolImpl::AllocImpl()
.fn AllocImpl__Q44nw4r3snd6detail8PoolImplFv, global
/* 81501478 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150147C | 7C 08 02 A6 */	mflr r0
/* 81501480 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501484 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501488 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150148C | 7C 7E 1B 78 */	mr r30, r3
/* 81501490 | 48 02 F3 F5 */	bl OSDisableInterrupts
/* 81501494 | 83 FE 00 00 */	lwz r31, 0x0(r30)
/* 81501498 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150149C | 40 82 00 10 */	bne .L_815014AC
/* 815014A0 | 48 02 F4 0D */	bl OSRestoreInterrupts
/* 815014A4 | 38 60 00 00 */	li r3, 0x0
/* 815014A8 | 48 00 00 14 */	b .L_815014BC
.L_815014AC:
/* 815014AC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 815014B0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 815014B4 | 48 02 F3 F9 */	bl OSRestoreInterrupts
/* 815014B8 | 7F E3 FB 78 */	mr r3, r31
.L_815014BC:
/* 815014BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815014C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815014C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815014C8 | 7C 08 03 A6 */	mtlr r0
/* 815014CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 815014D0 | 4E 80 00 20 */	blr
.endfn AllocImpl__Q44nw4r3snd6detail8PoolImplFv

# .text:0x220 | 0x815014D4 | size: 0x48
# nw4r::snd::detail::PoolImpl::FreeImpl(void*)
.fn FreeImpl__Q44nw4r3snd6detail8PoolImplFPv, global
/* 815014D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815014D8 | 7C 08 02 A6 */	mflr r0
/* 815014DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815014E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815014E4 | 7C 9F 23 78 */	mr r31, r4
/* 815014E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815014EC | 7C 7E 1B 78 */	mr r30, r3
/* 815014F0 | 48 02 F3 95 */	bl OSDisableInterrupts
/* 815014F4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 815014F8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 815014FC | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 81501500 | 48 02 F3 AD */	bl OSRestoreInterrupts
/* 81501504 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81501508 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150150C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81501510 | 7C 08 03 A6 */	mtlr r0
/* 81501514 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81501518 | 4E 80 00 20 */	blr
.endfn FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
