.include "macros.inc"
.file "snd_SeqTrack.cpp"

# 0x815051F8..0x8150616C | size: 0xF74
.text
.balign 4

# .text:0x0 | 0x815051F8 | size: 0x8
# nw4r::snd::detail::SeqTrack::SetPlayerTrackNo(int)
.fn SetPlayerTrackNo__Q44nw4r3snd6detail8SeqTrackFi, global
/* 815051F8 | 98 83 00 04 */	stb r4, 0x4(r3)
/* 815051FC | 4E 80 00 20 */	blr
.endfn SetPlayerTrackNo__Q44nw4r3snd6detail8SeqTrackFi

# .text:0x8 | 0x81505200 | size: 0x164
# nw4r::snd::detail::SeqTrack::InitParam()
.fn InitParam__Q44nw4r3snd6detail8SeqTrackFv, global
/* 81505200 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81505204 | 7C 08 02 A6 */	mflr r0
/* 81505208 | C0 02 8F 5C */	lfs f0, lbl_8169535C@sda21(r0)
/* 8150520C | 38 A0 00 FF */	li r5, 0xff
/* 81505210 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81505214 | 38 C0 00 7F */	li r6, 0x7f
/* 81505218 | C0 22 8F 58 */	lfs f1, lbl_81695358@sda21(r0)
/* 8150521C | 38 E0 00 40 */	li r7, 0x40
/* 81505220 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81505224 | 3B E0 00 00 */	li r31, 0x0
/* 81505228 | 38 80 00 02 */	li r4, 0x2
/* 8150522C | 38 00 00 3C */	li r0, 0x3c
/* 81505230 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81505234 | 7C 7E 1B 78 */	mr r30, r3
/* 81505238 | D0 23 00 08 */	stfs f1, 0x8(r3)
/* 8150523C | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81505240 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 81505244 | D0 03 00 14 */	stfs f0, 0x14(r3)
/* 81505248 | D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8150524C | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 81505250 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 81505254 | D0 03 00 24 */	stfs f0, 0x24(r3)
/* 81505258 | D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8150525C | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81505260 | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 81505264 | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 81505268 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8150526C | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 81505270 | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 81505274 | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 81505278 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8150527C | D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 81505280 | 93 E3 00 50 */	stw r31, 0x50(r3)
/* 81505284 | 93 E3 00 54 */	stw r31, 0x54(r3)
/* 81505288 | 93 E3 00 60 */	stw r31, 0x60(r3)
/* 8150528C | 93 E3 00 64 */	stw r31, 0x64(r3)
/* 81505290 | 98 E3 00 88 */	stb r7, 0x88(r3)
/* 81505294 | 93 E3 00 58 */	stw r31, 0x58(r3)
/* 81505298 | 9B E3 00 5C */	stb r31, 0x5c(r3)
/* 8150529C | 9B E3 00 5D */	stb r31, 0x5d(r3)
/* 815052A0 | 9B E3 00 5E */	stb r31, 0x5e(r3)
/* 815052A4 | 9B E3 00 5F */	stb r31, 0x5f(r3)
/* 815052A8 | 98 C3 00 80 */	stb r6, 0x80(r3)
/* 815052AC | 98 C3 00 81 */	stb r6, 0x81(r3)
/* 815052B0 | 9B E3 00 84 */	stb r31, 0x84(r3)
/* 815052B4 | 9B E3 00 85 */	stb r31, 0x85(r3)
/* 815052B8 | 9B E3 00 86 */	stb r31, 0x86(r3)
/* 815052BC | 9B E3 00 82 */	stb r31, 0x82(r3)
/* 815052C0 | 98 A3 00 8B */	stb r5, 0x8b(r3)
/* 815052C4 | 98 A3 00 8C */	stb r5, 0x8c(r3)
/* 815052C8 | 98 A3 00 8D */	stb r5, 0x8d(r3)
/* 815052CC | 98 A3 00 8E */	stb r5, 0x8e(r3)
/* 815052D0 | 98 C3 00 8F */	stb r6, 0x8f(r3)
/* 815052D4 | 9B E3 00 90 */	stb r31, 0x90(r3)
/* 815052D8 | 9B E3 00 91 */	stb r31, 0x91(r3)
/* 815052DC | 9B E3 00 92 */	stb r31, 0x92(r3)
/* 815052E0 | 98 E3 00 93 */	stb r7, 0x93(r3)
/* 815052E4 | 98 83 00 83 */	stb r4, 0x83(r3)
/* 815052E8 | 98 03 00 89 */	stb r0, 0x89(r3)
/* 815052EC | 9B E3 00 8A */	stb r31, 0x8a(r3)
/* 815052F0 | D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 815052F4 | 9B E3 00 87 */	stb r31, 0x87(r3)
/* 815052F8 | 38 63 00 68 */	addi r3, r3, 0x68
/* 815052FC | 4B FF C2 21 */	bl Init__Q44nw4r3snd6detail8LfoParamFv
/* 81505300 | 9B FE 00 78 */	stb r31, 0x78(r30)
/* 81505304 | 38 00 FF FF */	li r0, -0x1
/* 81505308 | 93 FE 00 B8 */	stw r31, 0xb8(r30)
/* 8150530C | B0 1E 00 94 */	sth r0, 0x94(r30)
/* 81505310 | B0 1E 00 96 */	sth r0, 0x96(r30)
/* 81505314 | B0 1E 00 98 */	sth r0, 0x98(r30)
/* 81505318 | B0 1E 00 9A */	sth r0, 0x9a(r30)
/* 8150531C | B0 1E 00 9C */	sth r0, 0x9c(r30)
/* 81505320 | B0 1E 00 9E */	sth r0, 0x9e(r30)
/* 81505324 | B0 1E 00 A0 */	sth r0, 0xa0(r30)
/* 81505328 | B0 1E 00 A2 */	sth r0, 0xa2(r30)
/* 8150532C | B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 81505330 | B0 1E 00 A6 */	sth r0, 0xa6(r30)
/* 81505334 | B0 1E 00 A8 */	sth r0, 0xa8(r30)
/* 81505338 | B0 1E 00 AA */	sth r0, 0xaa(r30)
/* 8150533C | B0 1E 00 AC */	sth r0, 0xac(r30)
/* 81505340 | B0 1E 00 AE */	sth r0, 0xae(r30)
/* 81505344 | B0 1E 00 B0 */	sth r0, 0xb0(r30)
/* 81505348 | B0 1E 00 B2 */	sth r0, 0xb2(r30)
/* 8150534C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81505350 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81505354 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81505358 | 7C 08 03 A6 */	mtlr r0
/* 8150535C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81505360 | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail8SeqTrackFv

# .text:0x16C | 0x81505364 | size: 0x10
# nw4r::snd::detail::SeqTrack::SetSeqData(const void*, long)
.fn SetSeqData__Q44nw4r3snd6detail8SeqTrackFPCvl, global
/* 81505364 | 7C 04 2A 14 */	add r0, r4, r5
/* 81505368 | 90 83 00 50 */	stw r4, 0x50(r3)
/* 8150536C | 90 03 00 54 */	stw r0, 0x54(r3)
/* 81505370 | 4E 80 00 20 */	blr
.endfn SetSeqData__Q44nw4r3snd6detail8SeqTrackFPCvl

# .text:0x17C | 0x81505374 | size: 0x74
# nw4r::snd::detail::SeqTrack::Close()
.fn Close__Q44nw4r3snd6detail8SeqTrackFv, global
/* 81505374 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81505378 | 7C 08 02 A6 */	mflr r0
/* 8150537C | 38 80 FF FF */	li r4, -0x1
/* 81505380 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81505384 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81505388 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150538C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81505390 | 7C 7D 1B 78 */	mr r29, r3
/* 81505394 | 48 00 01 95 */	bl ReleaseAllChannel__Q44nw4r3snd6detail8SeqTrackFi
/* 81505398 | 48 02 B4 ED */	bl OSDisableInterrupts
/* 8150539C | 83 DD 00 B8 */	lwz r30, 0xb8(r29)
/* 815053A0 | 7C 7F 1B 78 */	mr r31, r3
/* 815053A4 | 48 00 00 10 */	b .L_815053B4
.L_815053A8:
/* 815053A8 | 7F C3 F3 78 */	mr r3, r30
/* 815053AC | 4B FF 90 91 */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
/* 815053B0 | 83 DE 00 E4 */	lwz r30, 0xe4(r30)
.L_815053B4:
/* 815053B4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 815053B8 | 40 82 FF F0 */	bne .L_815053A8
/* 815053BC | 38 00 00 00 */	li r0, 0x0
/* 815053C0 | 7F E3 FB 78 */	mr r3, r31
/* 815053C4 | 90 1D 00 B8 */	stw r0, 0xb8(r29)
/* 815053C8 | 48 02 B4 E5 */	bl OSRestoreInterrupts
/* 815053CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815053D0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815053D4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815053D8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815053DC | 7C 08 03 A6 */	mtlr r0
/* 815053E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815053E4 | 4E 80 00 20 */	blr
.endfn Close__Q44nw4r3snd6detail8SeqTrackFv

# .text:0x1F0 | 0x815053E8 | size: 0x70
# nw4r::snd::detail::SeqTrack::UpdateChannelLength()
.fn UpdateChannelLength__Q44nw4r3snd6detail8SeqTrackFv, global
/* 815053E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815053EC | 7C 08 02 A6 */	mflr r0
/* 815053F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815053F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815053F8 | 83 E3 00 B8 */	lwz r31, 0xb8(r3)
/* 815053FC | 48 00 00 40 */	b .L_8150543C
.L_81505400:
/* 81505400 | 80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 81505404 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81505408 | 40 81 00 18 */	ble .L_81505420
/* 8150540C | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81505410 | 90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 81505414 | 40 82 00 0C */	bne .L_81505420
/* 81505418 | 7F E3 FB 78 */	mr r3, r31
/* 8150541C | 4B FF 8B A5 */	bl Release__Q44nw4r3snd6detail7ChannelFv
.L_81505420:
/* 81505420 | 88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 81505424 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81505428 | 40 82 00 10 */	bne .L_81505438
/* 8150542C | 7F E3 FB 78 */	mr r3, r31
/* 81505430 | 38 80 00 01 */	li r4, 0x1
/* 81505434 | 4B FF 8D 29 */	bl UpdateSweep__Q44nw4r3snd6detail7ChannelFi
.L_81505438:
/* 81505438 | 83 FF 00 E4 */	lwz r31, 0xe4(r31)
.L_8150543C:
/* 8150543C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81505440 | 40 82 FF C0 */	bne .L_81505400
/* 81505444 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81505448 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150544C | 7C 08 03 A6 */	mtlr r0
/* 81505450 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81505454 | 4E 80 00 20 */	blr
.endfn UpdateChannelLength__Q44nw4r3snd6detail8SeqTrackFv

# .text:0x260 | 0x81505458 | size: 0xD0
# nw4r::snd::detail::SeqTrack::ParseNextTick(bool)
.fn ParseNextTick__Q44nw4r3snd6detail8SeqTrackFb, global
/* 81505458 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150545C | 7C 08 02 A6 */	mflr r0
/* 81505460 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81505464 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81505468 | 7C 9F 23 78 */	mr r31, r4
/* 8150546C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81505470 | 7C 7E 1B 78 */	mr r30, r3
/* 81505474 | 88 03 00 5E */	lbz r0, 0x5e(r3)
/* 81505478 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150547C | 41 82 00 20 */	beq .L_8150549C
/* 81505480 | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 81505484 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81505488 | 41 82 00 0C */	beq .L_81505494
/* 8150548C | 38 60 00 00 */	li r3, 0x0
/* 81505490 | 48 00 00 80 */	b .L_81505510
.L_81505494:
/* 81505494 | 38 00 00 00 */	li r0, 0x0
/* 81505498 | 98 03 00 5E */	stb r0, 0x5e(r3)
.L_8150549C:
/* 8150549C | 80 83 00 58 */	lwz r4, 0x58(r3)
/* 815054A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815054A4 | 40 81 00 18 */	ble .L_815054BC
/* 815054A8 | 34 04 FF FF */	subic. r0, r4, 0x1
/* 815054AC | 90 03 00 58 */	stw r0, 0x58(r3)
/* 815054B0 | 40 81 00 0C */	ble .L_815054BC
/* 815054B4 | 38 60 00 00 */	li r3, 0x0
/* 815054B8 | 48 00 00 58 */	b .L_81505510
.L_815054BC:
/* 815054BC | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 815054C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815054C4 | 41 82 00 48 */	beq .L_8150550C
/* 815054C8 | 48 00 00 2C */	b .L_815054F4
.L_815054CC:
/* 815054CC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 815054D0 | 7F C3 F3 78 */	mr r3, r30
/* 815054D4 | 7F E4 FB 78 */	mr r4, r31
/* 815054D8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 815054DC | 7D 89 03 A6 */	mtctr r12
/* 815054E0 | 4E 80 04 21 */	bctrl
/* 815054E4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 815054E8 | 40 82 00 0C */	bne .L_815054F4
/* 815054EC | 38 60 FF FF */	li r3, -0x1
/* 815054F0 | 48 00 00 20 */	b .L_81505510
.L_815054F4:
/* 815054F4 | 80 1E 00 58 */	lwz r0, 0x58(r30)
/* 815054F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815054FC | 40 82 00 10 */	bne .L_8150550C
/* 81505500 | 88 1E 00 5E */	lbz r0, 0x5e(r30)
/* 81505504 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81505508 | 41 82 FF C4 */	beq .L_815054CC
.L_8150550C:
/* 8150550C | 38 60 00 00 */	li r3, 0x0
.L_81505510:
/* 81505510 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81505514 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81505518 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150551C | 7C 08 03 A6 */	mtlr r0
/* 81505520 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81505524 | 4E 80 00 20 */	blr
.endfn ParseNextTick__Q44nw4r3snd6detail8SeqTrackFb

# .text:0x330 | 0x81505528 | size: 0x9C
# nw4r::snd::detail::SeqTrack::ReleaseAllChannel(int)
.fn ReleaseAllChannel__Q44nw4r3snd6detail8SeqTrackFi, global
/* 81505528 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150552C | 7C 08 02 A6 */	mflr r0
/* 81505530 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81505534 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81505538 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150553C | 7C 7E 1B 78 */	mr r30, r3
/* 81505540 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81505544 | 7C 9D 23 78 */	mr r29, r4
/* 81505548 | 48 00 01 11 */	bl UpdateChannelParam__Q44nw4r3snd6detail8SeqTrackFv
/* 8150554C | 48 02 B3 39 */	bl OSDisableInterrupts
/* 81505550 | 7C 7F 1B 78 */	mr r31, r3
/* 81505554 | 4B FF 20 79 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 81505558 | 4B FF 2A FD */	bl LockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv
/* 8150555C | 83 DE 00 B8 */	lwz r30, 0xb8(r30)
/* 81505560 | 48 00 00 30 */	b .L_81505590
.L_81505564:
/* 81505564 | 88 1E 00 3A */	lbz r0, 0x3a(r30)
/* 81505568 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150556C | 41 82 00 20 */	beq .L_8150558C
/* 81505570 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81505574 | 41 80 00 10 */	blt .L_81505584
/* 81505578 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8150557C | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 81505580 | 4B FF 9D 9D */	bl SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi
.L_81505584:
/* 81505584 | 7F C3 F3 78 */	mr r3, r30
/* 81505588 | 4B FF 8A 39 */	bl Release__Q44nw4r3snd6detail7ChannelFv
.L_8150558C:
/* 8150558C | 83 DE 00 E4 */	lwz r30, 0xe4(r30)
.L_81505590:
/* 81505590 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81505594 | 40 82 FF D0 */	bne .L_81505564
/* 81505598 | 4B FF 20 35 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150559C | 4B FF 2A F5 */	bl UnlockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv
/* 815055A0 | 7F E3 FB 78 */	mr r3, r31
/* 815055A4 | 48 02 B3 09 */	bl OSRestoreInterrupts
/* 815055A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815055AC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815055B0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815055B4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815055B8 | 7C 08 03 A6 */	mtlr r0
/* 815055BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 815055C0 | 4E 80 00 20 */	blr
.endfn ReleaseAllChannel__Q44nw4r3snd6detail8SeqTrackFi

# .text:0x3CC | 0x815055C4 | size: 0x94
# nw4r::snd::detail::SeqTrack::PauseAllChannel(bool)
.fn PauseAllChannel__Q44nw4r3snd6detail8SeqTrackFb, global
/* 815055C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815055C8 | 7C 08 02 A6 */	mflr r0
/* 815055CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815055D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815055D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815055D8 | 7C 7E 1B 78 */	mr r30, r3
/* 815055DC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815055E0 | 7C 9D 23 78 */	mr r29, r4
/* 815055E4 | 48 02 B2 A1 */	bl OSDisableInterrupts
/* 815055E8 | 83 DE 00 B8 */	lwz r30, 0xb8(r30)
/* 815055EC | 7C 7F 1B 78 */	mr r31, r3
/* 815055F0 | 48 00 00 3C */	b .L_8150562C
.L_815055F4:
/* 815055F4 | 88 1E 00 3A */	lbz r0, 0x3a(r30)
/* 815055F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815055FC | 41 82 00 2C */	beq .L_81505628
/* 81505600 | 88 7E 00 39 */	lbz r3, 0x39(r30)
/* 81505604 | 7C 03 00 D0 */	neg r0, r3
/* 81505608 | 7C 00 1B 78 */	or r0, r0, r3
/* 8150560C | 54 00 0F FE */	srwi r0, r0, 31
/* 81505610 | 7C 1D 00 40 */	cmplw r29, r0
/* 81505614 | 41 82 00 14 */	beq .L_81505628
/* 81505618 | 9B BE 00 39 */	stb r29, 0x39(r30)
/* 8150561C | 7F A4 EB 78 */	mr r4, r29
/* 81505620 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 81505624 | 4B FF 3F 81 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
.L_81505628:
/* 81505628 | 83 DE 00 E4 */	lwz r30, 0xe4(r30)
.L_8150562C:
/* 8150562C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81505630 | 40 82 FF C4 */	bne .L_815055F4
/* 81505634 | 7F E3 FB 78 */	mr r3, r31
/* 81505638 | 48 02 B2 75 */	bl OSRestoreInterrupts
/* 8150563C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81505640 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81505644 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81505648 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150564C | 7C 08 03 A6 */	mtlr r0
/* 81505650 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81505654 | 4E 80 00 20 */	blr
.endfn PauseAllChannel__Q44nw4r3snd6detail8SeqTrackFb

# .text:0x460 | 0x81505658 | size: 0x5B4
# nw4r::snd::detail::SeqTrack::UpdateChannelParam()
.fn UpdateChannelParam__Q44nw4r3snd6detail8SeqTrackFv, global
/* 81505658 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8150565C | 7C 08 02 A6 */	mflr r0
/* 81505660 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 81505664 | DB E1 01 20 */	stfd f31, 0x120(r1)
/* 81505668 | F3 E1 01 28 */	psq_st f31, 0x128(r1), 0, qr0
/* 8150566C | DB C1 01 10 */	stfd f30, 0x110(r1)
/* 81505670 | F3 C1 01 18 */	psq_st f30, 0x118(r1), 0, qr0
/* 81505674 | DB A1 01 00 */	stfd f29, 0x100(r1)
/* 81505678 | F3 A1 01 08 */	psq_st f29, 0x108(r1), 0, qr0
/* 8150567C | DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 81505680 | F3 81 00 F8 */	psq_st f28, 0xf8(r1), 0, qr0
/* 81505684 | DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 81505688 | F3 61 00 E8 */	psq_st f27, 0xe8(r1), 0, qr0
/* 8150568C | DB 41 00 D0 */	stfd f26, 0xd0(r1)
/* 81505690 | F3 41 00 D8 */	psq_st f26, 0xd8(r1), 0, qr0
/* 81505694 | DB 21 00 C0 */	stfd f25, 0xc0(r1)
/* 81505698 | F3 21 00 C8 */	psq_st f25, 0xc8(r1), 0, qr0
/* 8150569C | DB 01 00 B0 */	stfd f24, 0xb0(r1)
/* 815056A0 | F3 01 00 B8 */	psq_st f24, 0xb8(r1), 0, qr0
/* 815056A4 | DA E1 00 A0 */	stfd f23, 0xa0(r1)
/* 815056A8 | F2 E1 00 A8 */	psq_st f23, 0xa8(r1), 0, qr0
/* 815056AC | DA C1 00 90 */	stfd f22, 0x90(r1)
/* 815056B0 | F2 C1 00 98 */	psq_st f22, 0x98(r1), 0, qr0
/* 815056B4 | DA A1 00 80 */	stfd f21, 0x80(r1)
/* 815056B8 | F2 A1 00 88 */	psq_st f21, 0x88(r1), 0, qr0
/* 815056BC | DA 81 00 70 */	stfd f20, 0x70(r1)
/* 815056C0 | F2 81 00 78 */	psq_st f20, 0x78(r1), 0, qr0
/* 815056C4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 815056C8 | 48 0F 3D F1 */	bl _savegpr_25
/* 815056CC | 88 03 00 80 */	lbz r0, 0x80(r3)
/* 815056D0 | 3C A0 43 30 */	lis r5, 0x4330
/* 815056D4 | 88 83 00 81 */	lbz r4, 0x81(r3)
/* 815056D8 | 7C 7F 1B 78 */	mr r31, r3
/* 815056DC | 90 A1 00 38 */	stw r5, 0x38(r1)
/* 815056E0 | 80 C3 00 B4 */	lwz r6, 0xb4(r3)
/* 815056E4 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 815056E8 | C8 A2 8F 78 */	lfd f5, lbl_81695378@sda21(r0)
/* 815056EC | C8 01 00 38 */	lfd f0, 0x38(r1)
/* 815056F0 | 88 06 00 90 */	lbz r0, 0x90(r6)
/* 815056F4 | 90 A1 00 40 */	stw r5, 0x40(r1)
/* 815056F8 | EC 00 28 28 */	fsubs f0, f0, f5
/* 815056FC | C0 82 8F 60 */	lfs f4, lbl_81695360@sda21(r0)
/* 81505700 | 90 81 00 44 */	stw r4, 0x44(r1)
/* 81505704 | EC C0 20 24 */	fdivs f6, f0, f4
/* 81505708 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 8150570C | C8 21 00 40 */	lfd f1, 0x40(r1)
/* 81505710 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 81505714 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81505718 | 7C C3 33 78 */	mr r3, r6
/* 8150571C | EC 61 28 28 */	fsubs f3, f1, f5
/* 81505720 | C8 41 00 38 */	lfd f2, 0x38(r1)
/* 81505724 | EC 26 01 B2 */	fmuls f1, f6, f6
/* 81505728 | C3 82 8F 58 */	lfs f28, lbl_81695358@sda21(r0)
/* 8150572C | EC 42 28 28 */	fsubs f2, f2, f5
/* 81505730 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81505734 | EC 63 20 24 */	fdivs f3, f3, f4
/* 81505738 | EC 82 20 24 */	fdivs f4, f2, f4
/* 8150573C | EF 9C 00 72 */	fmuls f28, f28, f1
/* 81505740 | EC 43 00 F2 */	fmuls f2, f3, f3
/* 81505744 | EC 24 01 32 */	fmuls f1, f4, f4
/* 81505748 | EF 9C 00 B2 */	fmuls f28, f28, f2
/* 8150574C | EF 9C 00 72 */	fmuls f28, f28, f1
/* 81505750 | EF 9C 00 32 */	fmuls f28, f28, f0
/* 81505754 | 7D 89 03 A6 */	mtctr r12
/* 81505758 | 4E 80 04 21 */	bctrl
/* 8150575C | 88 7F 00 82 */	lbz r3, 0x82(r31)
/* 81505760 | EF 9C 00 72 */	fmuls f28, f28, f1
/* 81505764 | 88 1F 00 83 */	lbz r0, 0x83(r31)
/* 81505768 | 7C 64 07 74 */	extsb r4, r3
/* 8150576C | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505770 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 81505774 | C8 22 8F 80 */	lfd f1, lbl_81695380@sda21(r0)
/* 81505778 | 90 81 00 44 */	stw r4, 0x44(r1)
/* 8150577C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505780 | C8 01 00 40 */	lfd f0, 0x40(r1)
/* 81505784 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 81505788 | EC 60 08 28 */	fsubs f3, f0, f1
/* 8150578C | C0 42 8F 64 */	lfs f2, lbl_81695364@sda21(r0)
/* 81505790 | C8 22 8F 78 */	lfd f1, lbl_81695378@sda21(r0)
/* 81505794 | C8 01 00 38 */	lfd f0, 0x38(r1)
/* 81505798 | EC 43 00 B2 */	fmuls f2, f3, f2
/* 8150579C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 815057A0 | EC 00 08 28 */	fsubs f0, f0, f1
/* 815057A4 | C3 42 8F 58 */	lfs f26, lbl_81695358@sda21(r0)
/* 815057A8 | EF 62 00 32 */	fmuls f27, f2, f0
/* 815057AC | 7D 89 03 A6 */	mtctr r12
/* 815057B0 | 4E 80 04 21 */	bctrl
/* 815057B4 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 815057B8 | EF 5A 00 72 */	fmuls f26, f26, f1
/* 815057BC | C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 815057C0 | 7C 00 07 74 */	extsb r0, r0
/* 815057C4 | C8 42 8F 80 */	lfd f2, lbl_81695380@sda21(r0)
/* 815057C8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 815057CC | EF 5A 00 72 */	fmuls f26, f26, f1
/* 815057D0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 815057D4 | C0 02 8F 68 */	lfs f0, lbl_81695368@sda21(r0)
/* 815057D8 | C8 21 00 40 */	lfd f1, 0x40(r1)
/* 815057DC | C0 62 8F 58 */	lfs f3, lbl_81695358@sda21(r0)
/* 815057E0 | EC 21 10 28 */	fsubs f1, f1, f2
/* 815057E4 | C3 22 8F 5C */	lfs f25, lbl_8169535C@sda21(r0)
/* 815057E8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 815057EC | FC 00 18 40 */	fcmpo cr0, f0, f3
/* 815057F0 | 40 81 00 08 */	ble .L_815057F8
/* 815057F4 | 48 00 00 18 */	b .L_8150580C
.L_815057F8:
/* 815057F8 | C0 62 8F 6C */	lfs f3, lbl_8169536C@sda21(r0)
/* 815057FC | FC 00 18 40 */	fcmpo cr0, f0, f3
/* 81505800 | 40 80 00 08 */	bge .L_81505808
/* 81505804 | 48 00 00 08 */	b .L_8150580C
.L_81505808:
/* 81505808 | FC 60 00 90 */	fmr f3, f0
.L_8150580C:
/* 8150580C | EF 39 18 2A */	fadds f25, f25, f3
/* 81505810 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505814 | C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 81505818 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150581C | EF 39 00 32 */	fmuls f25, f25, f0
/* 81505820 | C0 23 00 28 */	lfs f1, 0x28(r3)
/* 81505824 | C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 81505828 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8150582C | EF 39 00 72 */	fmuls f25, f25, f1
/* 81505830 | EF 39 00 2A */	fadds f25, f25, f0
/* 81505834 | 7D 89 03 A6 */	mtctr r12
/* 81505838 | 4E 80 04 21 */	bctrl
/* 8150583C | 88 1F 00 86 */	lbz r0, 0x86(r31)
/* 81505840 | EF 39 08 2A */	fadds f25, f25, f1
/* 81505844 | C8 42 8F 80 */	lfd f2, lbl_81695380@sda21(r0)
/* 81505848 | 7C 00 07 74 */	extsb r0, r0
/* 8150584C | C0 02 8F 68 */	lfs f0, lbl_81695368@sda21(r0)
/* 81505850 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81505854 | C0 62 8F 70 */	lfs f3, lbl_81695370@sda21(r0)
/* 81505858 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 8150585C | C3 02 8F 5C */	lfs f24, lbl_8169535C@sda21(r0)
/* 81505860 | C8 21 00 38 */	lfd f1, 0x38(r1)
/* 81505864 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81505868 | EC 01 00 24 */	fdivs f0, f1, f0
/* 8150586C | FC 00 18 40 */	fcmpo cr0, f0, f3
/* 81505870 | 40 81 00 08 */	ble .L_81505878
/* 81505874 | 48 00 00 14 */	b .L_81505888
.L_81505878:
/* 81505878 | FC 00 C0 40 */	fcmpo cr0, f0, f24
/* 8150587C | 40 80 00 08 */	bge .L_81505884
/* 81505880 | FC 00 C0 90 */	fmr f0, f24
.L_81505884:
/* 81505884 | FC 60 00 90 */	fmr f3, f0
.L_81505888:
/* 81505888 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 8150588C | EF 18 18 2A */	fadds f24, f24, f3
/* 81505890 | C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 81505894 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505898 | EF 18 00 2A */	fadds f24, f24, f0
/* 8150589C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 815058A0 | 7D 89 03 A6 */	mtctr r12
/* 815058A4 | 4E 80 04 21 */	bctrl
/* 815058A8 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 815058AC | EF 18 08 2A */	fadds f24, f24, f1
/* 815058B0 | C2 E2 8F 5C */	lfs f23, lbl_8169535C@sda21(r0)
/* 815058B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815058B8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 815058BC | 7D 89 03 A6 */	mtctr r12
/* 815058C0 | 4E 80 04 21 */	bctrl
/* 815058C4 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 815058C8 | EE F7 08 2A */	fadds f23, f23, f1
/* 815058CC | C2 C2 8F 5C */	lfs f22, lbl_8169535C@sda21(r0)
/* 815058D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815058D4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 815058D8 | 7D 89 03 A6 */	mtctr r12
/* 815058DC | 4E 80 04 21 */	bctrl
/* 815058E0 | 88 9F 00 93 */	lbz r4, 0x93(r31)
/* 815058E4 | EE D6 08 2A */	fadds f22, f22, f1
/* 815058E8 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 815058EC | 38 04 FF C0 */	subi r0, r4, 0x40
/* 815058F0 | C8 42 8F 80 */	lfd f2, lbl_81695380@sda21(r0)
/* 815058F4 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 815058F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815058FC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81505900 | C0 22 8F 74 */	lfs f1, lbl_81695374@sda21(r0)
/* 81505904 | C8 01 00 40 */	lfd f0, 0x40(r1)
/* 81505908 | C2 A2 8F 5C */	lfs f21, lbl_8169535C@sda21(r0)
/* 8150590C | EC 40 10 28 */	fsubs f2, f0, f2
/* 81505910 | C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 81505914 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81505918 | EC 22 00 72 */	fmuls f1, f2, f1
/* 8150591C | EE B5 08 2A */	fadds f21, f21, f1
/* 81505920 | EE B5 00 2A */	fadds f21, f21, f0
/* 81505924 | 7D 89 03 A6 */	mtctr r12
/* 81505928 | 4E 80 04 21 */	bctrl
/* 8150592C | 88 1F 00 8F */	lbz r0, 0x8f(r31)
/* 81505930 | EE B5 08 2A */	fadds f21, f21, f1
/* 81505934 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505938 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 8150593C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505940 | C8 22 8F 78 */	lfd f1, lbl_81695378@sda21(r0)
/* 81505944 | C8 01 00 38 */	lfd f0, 0x38(r1)
/* 81505948 | C0 42 8F 60 */	lfs f2, lbl_81695360@sda21(r0)
/* 8150594C | EC 60 08 28 */	fsubs f3, f0, f1
/* 81505950 | C0 22 8F 58 */	lfs f1, lbl_81695358@sda21(r0)
/* 81505954 | C2 82 8F 5C */	lfs f20, lbl_8169535C@sda21(r0)
/* 81505958 | C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8150595C | EC 43 10 24 */	fdivs f2, f3, f2
/* 81505960 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 81505964 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81505968 | EE 94 08 2A */	fadds f20, f20, f1
/* 8150596C | EE 94 00 2A */	fadds f20, f20, f0
/* 81505970 | 7D 89 03 A6 */	mtctr r12
/* 81505974 | 4E 80 04 21 */	bctrl
/* 81505978 | EE 94 08 2A */	fadds f20, f20, f1
/* 8150597C | C3 A2 8F 5C */	lfs f29, lbl_8169535C@sda21(r0)
/* 81505980 | CB C2 8F 78 */	lfd f30, lbl_81695378@sda21(r0)
/* 81505984 | 7F FC FB 78 */	mr r28, r31
/* 81505988 | C3 E2 8F 60 */	lfs f31, lbl_81695360@sda21(r0)
/* 8150598C | 3B 61 00 28 */	addi r27, r1, 0x28
/* 81505990 | 3B A0 00 00 */	li r29, 0x0
.L_81505994:
/* 81505994 | 7C 7F EA 14 */	add r3, r31, r29
/* 81505998 | D3 BB 00 00 */	stfs f29, 0x0(r27)
/* 8150599C | 88 03 00 90 */	lbz r0, 0x90(r3)
/* 815059A0 | 7F A4 EB 78 */	mr r4, r29
/* 815059A4 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 815059A8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 815059AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815059B0 | C8 01 00 40 */	lfd f0, 0x40(r1)
/* 815059B4 | C0 3B 00 00 */	lfs f1, 0x0(r27)
/* 815059B8 | EC 40 F0 28 */	fsubs f2, f0, f30
/* 815059BC | C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 815059C0 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 815059C4 | EC 42 F8 24 */	fdivs f2, f2, f31
/* 815059C8 | EC 21 10 2A */	fadds f1, f1, f2
/* 815059CC | EC 01 00 2A */	fadds f0, f1, f0
/* 815059D0 | D0 1B 00 00 */	stfs f0, 0x0(r27)
/* 815059D4 | 7D 89 03 A6 */	mtctr r12
/* 815059D8 | 4E 80 04 21 */	bctrl
/* 815059DC | C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 815059E0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 815059E4 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 815059E8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 815059EC | EC 00 08 2A */	fadds f0, f0, f1
/* 815059F0 | D0 1B 00 00 */	stfs f0, 0x0(r27)
/* 815059F4 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 815059F8 | 41 80 FF 9C */	blt .L_81505994
/* 815059FC | C3 A2 8F 5C */	lfs f29, lbl_8169535C@sda21(r0)
/* 81505A00 | 3B 61 00 18 */	addi r27, r1, 0x18
/* 81505A04 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 81505A08 | 3B A0 00 00 */	li r29, 0x0
.L_81505A0C:
/* 81505A0C | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505A10 | 7F A4 EB 78 */	mr r4, r29
/* 81505A14 | D3 BB 00 00 */	stfs f29, 0x0(r27)
/* 81505A18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505A1C | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81505A20 | 7D 89 03 A6 */	mtctr r12
/* 81505A24 | 4E 80 04 21 */	bctrl
/* 81505A28 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505A2C | 7F A4 EB 78 */	mr r4, r29
/* 81505A30 | C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 81505A34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505A38 | EC 00 08 2A */	fadds f0, f0, f1
/* 81505A3C | D3 BC 00 00 */	stfs f29, 0x0(r28)
/* 81505A40 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81505A44 | D0 1B 00 00 */	stfs f0, 0x0(r27)
/* 81505A48 | 7D 89 03 A6 */	mtctr r12
/* 81505A4C | 4E 80 04 21 */	bctrl
/* 81505A50 | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 81505A54 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81505A58 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81505A5C | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81505A60 | EC 00 08 2A */	fadds f0, f0, f1
/* 81505A64 | D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 81505A68 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81505A6C | 41 80 FF A0 */	blt .L_81505A0C
/* 81505A70 | 48 02 AE 15 */	bl OSDisableInterrupts
/* 81505A74 | 83 5F 00 B8 */	lwz r26, 0xb8(r31)
/* 81505A78 | 7C 7E 1B 78 */	mr r30, r3
/* 81505A7C | C3 A1 00 28 */	lfs f29, 0x28(r1)
/* 81505A80 | C3 E1 00 2C */	lfs f31, 0x2c(r1)
/* 81505A84 | C3 C1 00 30 */	lfs f30, 0x30(r1)
/* 81505A88 | 48 00 00 FC */	b .L_81505B84
.L_81505A8C:
/* 81505A8C | D3 9A 00 40 */	stfs f28, 0x40(r26)
/* 81505A90 | D3 7A 00 A4 */	stfs f27, 0xa4(r26)
/* 81505A94 | D3 5A 00 44 */	stfs f26, 0x44(r26)
/* 81505A98 | D3 3A 00 48 */	stfs f25, 0x48(r26)
/* 81505A9C | D3 1A 00 4C */	stfs f24, 0x4c(r26)
/* 81505AA0 | D2 FA 00 50 */	stfs f23, 0x50(r26)
/* 81505AA4 | D2 DA 00 54 */	stfs f22, 0x54(r26)
/* 81505AA8 | D2 BA 00 58 */	stfs f21, 0x58(r26)
/* 81505AAC | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505AB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505AB4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81505AB8 | 7D 89 03 A6 */	mtctr r12
/* 81505ABC | 4E 80 04 21 */	bctrl
/* 81505AC0 | 90 7A 00 5C */	stw r3, 0x5c(r26)
/* 81505AC4 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505AC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505ACC | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81505AD0 | 7D 89 03 A6 */	mtctr r12
/* 81505AD4 | 4E 80 04 21 */	bctrl
/* 81505AD8 | D0 3A 00 60 */	stfs f1, 0x60(r26)
/* 81505ADC | 7F 5D D3 78 */	mr r29, r26
/* 81505AE0 | 3B 81 00 18 */	addi r28, r1, 0x18
/* 81505AE4 | 3B 61 00 08 */	addi r27, r1, 0x8
/* 81505AE8 | D2 9A 00 64 */	stfs f20, 0x64(r26)
/* 81505AEC | 3B 20 00 00 */	li r25, 0x0
/* 81505AF0 | D3 BA 00 68 */	stfs f29, 0x68(r26)
/* 81505AF4 | D3 FA 00 6C */	stfs f31, 0x6c(r26)
/* 81505AF8 | D3 DA 00 70 */	stfs f30, 0x70(r26)
.L_81505AFC:
/* 81505AFC | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505B00 | 7F 24 CB 78 */	mr r4, r25
/* 81505B04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505B08 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81505B0C | 7D 89 03 A6 */	mtctr r12
/* 81505B10 | 4E 80 04 21 */	bctrl
/* 81505B14 | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 81505B18 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81505B1C | D0 3D 00 74 */	stfs f1, 0x74(r29)
/* 81505B20 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 81505B24 | C0 3B 00 00 */	lfs f1, 0x0(r27)
/* 81505B28 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81505B2C | D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 81505B30 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81505B34 | D0 3D 00 94 */	stfs f1, 0x94(r29)
/* 81505B38 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81505B3C | 41 80 FF C0 */	blt .L_81505AFC
/* 81505B40 | C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 81505B44 | D0 1A 00 20 */	stfs f0, 0x20(r26)
/* 81505B48 | C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 81505B4C | D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 81505B50 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 81505B54 | 90 1A 00 28 */	stw r0, 0x28(r26)
/* 81505B58 | 88 1F 00 74 */	lbz r0, 0x74(r31)
/* 81505B5C | 98 1A 00 2C */	stb r0, 0x2c(r26)
/* 81505B60 | 88 1F 00 75 */	lbz r0, 0x75(r31)
/* 81505B64 | 98 1A 00 2D */	stb r0, 0x2d(r26)
/* 81505B68 | 88 1F 00 76 */	lbz r0, 0x76(r31)
/* 81505B6C | 98 1A 00 2E */	stb r0, 0x2e(r26)
/* 81505B70 | 88 1F 00 77 */	lbz r0, 0x77(r31)
/* 81505B74 | 98 1A 00 2F */	stb r0, 0x2f(r26)
/* 81505B78 | 88 1F 00 78 */	lbz r0, 0x78(r31)
/* 81505B7C | 98 1A 00 38 */	stb r0, 0x38(r26)
/* 81505B80 | 83 5A 00 E4 */	lwz r26, 0xe4(r26)
.L_81505B84:
/* 81505B84 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81505B88 | 40 82 FF 04 */	bne .L_81505A8C
/* 81505B8C | 7F C3 F3 78 */	mr r3, r30
/* 81505B90 | 48 02 AD 1D */	bl OSRestoreInterrupts
/* 81505B94 | E3 E1 01 28 */	psq_l f31, 0x128(r1), 0, qr0
/* 81505B98 | CB E1 01 20 */	lfd f31, 0x120(r1)
/* 81505B9C | E3 C1 01 18 */	psq_l f30, 0x118(r1), 0, qr0
/* 81505BA0 | CB C1 01 10 */	lfd f30, 0x110(r1)
/* 81505BA4 | E3 A1 01 08 */	psq_l f29, 0x108(r1), 0, qr0
/* 81505BA8 | CB A1 01 00 */	lfd f29, 0x100(r1)
/* 81505BAC | E3 81 00 F8 */	psq_l f28, 0xf8(r1), 0, qr0
/* 81505BB0 | CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 81505BB4 | E3 61 00 E8 */	psq_l f27, 0xe8(r1), 0, qr0
/* 81505BB8 | CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 81505BBC | E3 41 00 D8 */	psq_l f26, 0xd8(r1), 0, qr0
/* 81505BC0 | CB 41 00 D0 */	lfd f26, 0xd0(r1)
/* 81505BC4 | E3 21 00 C8 */	psq_l f25, 0xc8(r1), 0, qr0
/* 81505BC8 | CB 21 00 C0 */	lfd f25, 0xc0(r1)
/* 81505BCC | E3 01 00 B8 */	psq_l f24, 0xb8(r1), 0, qr0
/* 81505BD0 | CB 01 00 B0 */	lfd f24, 0xb0(r1)
/* 81505BD4 | E2 E1 00 A8 */	psq_l f23, 0xa8(r1), 0, qr0
/* 81505BD8 | CA E1 00 A0 */	lfd f23, 0xa0(r1)
/* 81505BDC | E2 C1 00 98 */	psq_l f22, 0x98(r1), 0, qr0
/* 81505BE0 | CA C1 00 90 */	lfd f22, 0x90(r1)
/* 81505BE4 | E2 A1 00 88 */	psq_l f21, 0x88(r1), 0, qr0
/* 81505BE8 | CA A1 00 80 */	lfd f21, 0x80(r1)
/* 81505BEC | E2 81 00 78 */	psq_l f20, 0x78(r1), 0, qr0
/* 81505BF0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81505BF4 | CA 81 00 70 */	lfd f20, 0x70(r1)
/* 81505BF8 | 48 0F 39 0D */	bl _restgpr_25
/* 81505BFC | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 81505C00 | 7C 08 03 A6 */	mtlr r0
/* 81505C04 | 38 21 01 30 */	addi r1, r1, 0x130
/* 81505C08 | 4E 80 00 20 */	blr
.endfn UpdateChannelParam__Q44nw4r3snd6detail8SeqTrackFv

# .text:0xA14 | 0x81505C0C | size: 0x6C
# nw4r::snd::detail::SeqTrack::FreeAllChannel()
.fn FreeAllChannel__Q44nw4r3snd6detail8SeqTrackFv, global
/* 81505C0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81505C10 | 7C 08 02 A6 */	mflr r0
/* 81505C14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81505C18 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81505C1C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81505C20 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81505C24 | 7C 7D 1B 78 */	mr r29, r3
/* 81505C28 | 48 02 AC 5D */	bl OSDisableInterrupts
/* 81505C2C | 83 DD 00 B8 */	lwz r30, 0xb8(r29)
/* 81505C30 | 7C 7F 1B 78 */	mr r31, r3
/* 81505C34 | 48 00 00 10 */	b .L_81505C44
.L_81505C38:
/* 81505C38 | 7F C3 F3 78 */	mr r3, r30
/* 81505C3C | 4B FF 88 01 */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
/* 81505C40 | 83 DE 00 E4 */	lwz r30, 0xe4(r30)
.L_81505C44:
/* 81505C44 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81505C48 | 40 82 FF F0 */	bne .L_81505C38
/* 81505C4C | 38 00 00 00 */	li r0, 0x0
/* 81505C50 | 7F E3 FB 78 */	mr r3, r31
/* 81505C54 | 90 1D 00 B8 */	stw r0, 0xb8(r29)
/* 81505C58 | 48 02 AC 55 */	bl OSRestoreInterrupts
/* 81505C5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81505C60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81505C64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81505C68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81505C6C | 7C 08 03 A6 */	mtlr r0
/* 81505C70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81505C74 | 4E 80 00 20 */	blr
.endfn FreeAllChannel__Q44nw4r3snd6detail8SeqTrackFv

# .text:0xA80 | 0x81505C78 | size: 0xCC
# nw4r::snd::detail::SeqTrack::ChannelCallbackFunc(nw4r::snd::detail::Channel*, nw4r::snd::detail::Channel::ChannelCallbackStatus, unsigned long)
.fn ChannelCallbackFunc__Q44nw4r3snd6detail8SeqTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl, global
/* 81505C78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81505C7C | 7C 08 02 A6 */	mflr r0
/* 81505C80 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81505C84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81505C88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81505C8C | 7C BF 2B 78 */	mr r31, r5
/* 81505C90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81505C94 | 7C 7E 1B 78 */	mr r30, r3
/* 81505C98 | 41 82 00 24 */	beq .L_81505CBC
/* 81505C9C | 40 80 00 10 */	bge .L_81505CAC
/* 81505CA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81505CA4 | 40 80 00 10 */	bge .L_81505CB4
/* 81505CA8 | 48 00 00 14 */	b .L_81505CBC
.L_81505CAC:
/* 81505CAC | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81505CB0 | 40 80 00 0C */	bge .L_81505CBC
.L_81505CB4:
/* 81505CB4 | 7F C3 F3 78 */	mr r3, r30
/* 81505CB8 | 4B FF 87 85 */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
.L_81505CBC:
/* 81505CBC | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81505CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81505CC4 | 41 82 00 18 */	beq .L_81505CDC
/* 81505CC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81505CCC | 7F C4 F3 78 */	mr r4, r30
/* 81505CD0 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 81505CD4 | 7D 89 03 A6 */	mtctr r12
/* 81505CD8 | 4E 80 04 21 */	bctrl
.L_81505CDC:
/* 81505CDC | 48 02 AB A9 */	bl OSDisableInterrupts
/* 81505CE0 | 80 9F 00 B8 */	lwz r4, 0xb8(r31)
/* 81505CE4 | 7C 04 F0 40 */	cmplw r4, r30
/* 81505CE8 | 40 82 00 34 */	bne .L_81505D1C
/* 81505CEC | 80 1E 00 E4 */	lwz r0, 0xe4(r30)
/* 81505CF0 | 90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 81505CF4 | 48 02 AB B9 */	bl OSRestoreInterrupts
/* 81505CF8 | 48 00 00 34 */	b .L_81505D2C
/* 81505CFC | 48 00 00 20 */	b .L_81505D1C
.L_81505D00:
/* 81505D00 | 7C 00 F0 40 */	cmplw r0, r30
/* 81505D04 | 40 82 00 14 */	bne .L_81505D18
/* 81505D08 | 80 1E 00 E4 */	lwz r0, 0xe4(r30)
/* 81505D0C | 90 04 00 E4 */	stw r0, 0xe4(r4)
/* 81505D10 | 48 02 AB 9D */	bl OSRestoreInterrupts
/* 81505D14 | 48 00 00 18 */	b .L_81505D2C
.L_81505D18:
/* 81505D18 | 7C 04 03 78 */	mr r4, r0
.L_81505D1C:
/* 81505D1C | 80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 81505D20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81505D24 | 40 82 FF DC */	bne .L_81505D00
/* 81505D28 | 48 02 AB 85 */	bl OSRestoreInterrupts
.L_81505D2C:
/* 81505D2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81505D30 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81505D34 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81505D38 | 7C 08 03 A6 */	mtlr r0
/* 81505D3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81505D40 | 4E 80 00 20 */	blr
.endfn ChannelCallbackFunc__Q44nw4r3snd6detail8SeqTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl

# .text:0xB4C | 0x81505D44 | size: 0x124
# nw4r::snd::detail::SeqTrack::SetMute(nw4r::snd::SeqMute)
.fn SetMute__Q44nw4r3snd6detail8SeqTrackFQ34nw4r3snd7SeqMute, global
/* 81505D44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81505D48 | 7C 08 02 A6 */	mflr r0
/* 81505D4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81505D50 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81505D54 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81505D58 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81505D5C | 7C 9D 23 78 */	mr r29, r4
/* 81505D60 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81505D64 | 7C 7C 1B 78 */	mr r28, r3
/* 81505D68 | 48 02 AB 1D */	bl OSDisableInterrupts
/* 81505D6C | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 81505D70 | 7C 7F 1B 78 */	mr r31, r3
/* 81505D74 | 41 82 00 78 */	beq .L_81505DEC
/* 81505D78 | 40 80 00 14 */	bge .L_81505D8C
/* 81505D7C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81505D80 | 41 82 00 18 */	beq .L_81505D98
/* 81505D84 | 40 80 00 B4 */	bge .L_81505E38
/* 81505D88 | 48 00 00 B8 */	b .L_81505E40
.L_81505D8C:
/* 81505D8C | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81505D90 | 40 80 00 B0 */	bge .L_81505E40
/* 81505D94 | 48 00 00 10 */	b .L_81505DA4
.L_81505D98:
/* 81505D98 | 38 00 00 00 */	li r0, 0x0
/* 81505D9C | 98 1C 00 5C */	stb r0, 0x5c(r28)
/* 81505DA0 | 48 00 00 A0 */	b .L_81505E40
.L_81505DA4:
/* 81505DA4 | 48 02 AA E1 */	bl OSDisableInterrupts
/* 81505DA8 | 83 BC 00 B8 */	lwz r29, 0xb8(r28)
/* 81505DAC | 7C 7E 1B 78 */	mr r30, r3
/* 81505DB0 | 48 00 00 18 */	b .L_81505DC8
.L_81505DB4:
/* 81505DB4 | 7F A3 EB 78 */	mr r3, r29
/* 81505DB8 | 4B FF 86 85 */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
/* 81505DBC | 7F A3 EB 78 */	mr r3, r29
/* 81505DC0 | 4B FF 82 59 */	bl Stop__Q44nw4r3snd6detail7ChannelFv
/* 81505DC4 | 83 BD 00 E4 */	lwz r29, 0xe4(r29)
.L_81505DC8:
/* 81505DC8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81505DCC | 40 82 FF E8 */	bne .L_81505DB4
/* 81505DD0 | 38 00 00 00 */	li r0, 0x0
/* 81505DD4 | 7F C3 F3 78 */	mr r3, r30
/* 81505DD8 | 90 1C 00 B8 */	stw r0, 0xb8(r28)
/* 81505DDC | 48 02 AA D1 */	bl OSRestoreInterrupts
/* 81505DE0 | 38 00 00 01 */	li r0, 0x1
/* 81505DE4 | 98 1C 00 5C */	stb r0, 0x5c(r28)
/* 81505DE8 | 48 00 00 58 */	b .L_81505E40
.L_81505DEC:
/* 81505DEC | 7F 83 E3 78 */	mr r3, r28
/* 81505DF0 | 38 80 FF FF */	li r4, -0x1
/* 81505DF4 | 4B FF F7 35 */	bl ReleaseAllChannel__Q44nw4r3snd6detail8SeqTrackFi
/* 81505DF8 | 48 02 AA 8D */	bl OSDisableInterrupts
/* 81505DFC | 83 BC 00 B8 */	lwz r29, 0xb8(r28)
/* 81505E00 | 7C 7E 1B 78 */	mr r30, r3
/* 81505E04 | 48 00 00 10 */	b .L_81505E14
.L_81505E08:
/* 81505E08 | 7F A3 EB 78 */	mr r3, r29
/* 81505E0C | 4B FF 86 31 */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
/* 81505E10 | 83 BD 00 E4 */	lwz r29, 0xe4(r29)
.L_81505E14:
/* 81505E14 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81505E18 | 40 82 FF F0 */	bne .L_81505E08
/* 81505E1C | 38 00 00 00 */	li r0, 0x0
/* 81505E20 | 7F C3 F3 78 */	mr r3, r30
/* 81505E24 | 90 1C 00 B8 */	stw r0, 0xb8(r28)
/* 81505E28 | 48 02 AA 85 */	bl OSRestoreInterrupts
/* 81505E2C | 38 00 00 01 */	li r0, 0x1
/* 81505E30 | 98 1C 00 5C */	stb r0, 0x5c(r28)
/* 81505E34 | 48 00 00 0C */	b .L_81505E40
.L_81505E38:
/* 81505E38 | 38 00 00 01 */	li r0, 0x1
/* 81505E3C | 98 1C 00 5C */	stb r0, 0x5c(r28)
.L_81505E40:
/* 81505E40 | 7F E3 FB 78 */	mr r3, r31
/* 81505E44 | 48 02 AA 69 */	bl OSRestoreInterrupts
/* 81505E48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81505E4C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81505E50 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81505E54 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81505E58 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81505E5C | 7C 08 03 A6 */	mtlr r0
/* 81505E60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81505E64 | 4E 80 00 20 */	blr
.endfn SetMute__Q44nw4r3snd6detail8SeqTrackFQ34nw4r3snd7SeqMute

# .text:0xC70 | 0x81505E68 | size: 0x20
# nw4r::snd::detail::SeqTrack::GetVariablePtr(int)
.fn GetVariablePtr__Q44nw4r3snd6detail8SeqTrackFi, global
/* 81505E68 | 2C 04 00 10 */	cmpwi r4, 0x10
/* 81505E6C | 40 80 00 14 */	bge .L_81505E80
/* 81505E70 | 54 80 08 3C */	slwi r0, r4, 1
/* 81505E74 | 7C 63 02 14 */	add r3, r3, r0
/* 81505E78 | 38 63 00 94 */	addi r3, r3, 0x94
/* 81505E7C | 4E 80 00 20 */	blr
.L_81505E80:
/* 81505E80 | 38 60 00 00 */	li r3, 0x0
/* 81505E84 | 4E 80 00 20 */	blr
.endfn GetVariablePtr__Q44nw4r3snd6detail8SeqTrackFi

# .text:0xC90 | 0x81505E88 | size: 0x2E4
# nw4r::snd::detail::SeqTrack::NoteOn(int, int, long, bool)
.fn NoteOn__Q44nw4r3snd6detail8SeqTrackFiilb, global
/* 81505E88 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81505E8C | 7C 08 02 A6 */	mflr r0
/* 81505E90 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81505E94 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81505E98 | 48 0F 36 25 */	bl _savegpr_26
/* 81505E9C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81505EA0 | 83 43 00 B4 */	lwz r26, 0xb4(r3)
/* 81505EA4 | 7C 7C 1B 78 */	mr r28, r3
/* 81505EA8 | 7C 9D 23 78 */	mr r29, r4
/* 81505EAC | 7C DE 33 78 */	mr r30, r6
/* 81505EB0 | 3B E0 00 00 */	li r31, 0x0
/* 81505EB4 | 41 82 00 44 */	beq .L_81505EF8
/* 81505EB8 | 83 E3 00 B8 */	lwz r31, 0xb8(r3)
/* 81505EBC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81505EC0 | 41 82 00 38 */	beq .L_81505EF8
/* 81505EC4 | 6C A6 80 00 */	xoris r6, r5, 0x8000
/* 81505EC8 | 3C 00 43 30 */	lis r0, 0x4330
/* 81505ECC | 90 C1 00 34 */	stw r6, 0x34(r1)
/* 81505ED0 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 81505ED4 | C8 42 8F 80 */	lfd f2, lbl_81695380@sda21(r0)
/* 81505ED8 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 81505EDC | C0 02 8F 60 */	lfs f0, lbl_81695360@sda21(r0)
/* 81505EE0 | C8 21 00 30 */	lfd f1, 0x30(r1)
/* 81505EE4 | 90 DF 00 CC */	stw r6, 0xcc(r31)
/* 81505EE8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81505EEC | EC 01 00 24 */	fdivs f0, f1, f0
/* 81505EF0 | EC 00 00 32 */	fmuls f0, f0, f0
/* 81505EF4 | D0 1F 00 B4 */	stfs f0, 0xb4(r31)
.L_81505EF8:
/* 81505EF8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81505EFC | 40 82 00 D8 */	bne .L_81505FD4
/* 81505F00 | 3C C0 81 62 */	lis r6, lbl_8161E680@ha
/* 81505F04 | 87 66 E6 80 */	lwzu r27, lbl_8161E680@l(r6)
/* 81505F08 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81505F0C | 38 00 FF FF */	li r0, -0x1
/* 81505F10 | 83 E6 00 04 */	lwz r31, 0x4(r6)
/* 81505F14 | 81 86 00 08 */	lwz r12, 0x8(r6)
/* 81505F18 | 81 66 00 0C */	lwz r11, 0xc(r6)
/* 81505F1C | 81 46 00 10 */	lwz r10, 0x10(r6)
/* 81505F20 | 81 26 00 14 */	lwz r9, 0x14(r6)
/* 81505F24 | 81 06 00 18 */	lwz r8, 0x18(r6)
/* 81505F28 | 80 E6 00 1C */	lwz r7, 0x1c(r6)
/* 81505F2C | 80 C6 00 20 */	lwz r6, 0x20(r6)
/* 81505F30 | 93 61 00 08 */	stw r27, 0x8(r1)
/* 81505F34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81505F38 | 91 81 00 10 */	stw r12, 0x10(r1)
/* 81505F3C | 91 61 00 14 */	stw r11, 0x14(r1)
/* 81505F40 | 91 41 00 18 */	stw r10, 0x18(r1)
/* 81505F44 | 91 21 00 1C */	stw r9, 0x1c(r1)
/* 81505F48 | 91 01 00 20 */	stw r8, 0x20(r1)
/* 81505F4C | 90 E1 00 24 */	stw r7, 0x24(r1)
/* 81505F50 | 90 C1 00 28 */	stw r6, 0x28(r1)
/* 81505F54 | 80 C3 00 64 */	lwz r6, 0x64(r3)
/* 81505F58 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81505F5C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81505F60 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 81505F64 | 40 82 00 08 */	bne .L_81505F6C
/* 81505F68 | 7F C0 F3 78 */	mr r0, r30
.L_81505F6C:
/* 81505F6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81505F70 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81505F74 | 88 03 00 85 */	lbz r0, 0x85(r3)
/* 81505F78 | 7C 00 07 74 */	extsb r0, r0
/* 81505F7C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81505F80 | 88 9A 00 91 */	lbz r4, 0x91(r26)
/* 81505F84 | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 81505F88 | 7C 04 02 14 */	add r0, r4, r0
/* 81505F8C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81505F90 | 80 83 00 B4 */	lwz r4, 0xb4(r3)
/* 81505F94 | 80 04 00 8C */	lwz r0, 0x8c(r4)
/* 81505F98 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81505F9C | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81505FA0 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 81505FA4 | 80 9C 00 60 */	lwz r4, 0x60(r28)
/* 81505FA8 | 4B FF ED 69 */	bl NoteOn__Q44nw4r3snd6detail9SeqPlayerFiRCQ44nw4r3snd6detail10NoteOnInfo
/* 81505FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81505FB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81505FB4 | 40 82 00 0C */	bne .L_81505FC0
/* 81505FB8 | 38 60 00 00 */	li r3, 0x0
/* 81505FBC | 48 00 01 98 */	b .L_81506154
.L_81505FC0:
/* 81505FC0 | 48 02 A8 C5 */	bl OSDisableInterrupts
/* 81505FC4 | 80 1C 00 B8 */	lwz r0, 0xb8(r28)
/* 81505FC8 | 90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 81505FCC | 93 FC 00 B8 */	stw r31, 0xb8(r28)
/* 81505FD0 | 48 02 A8 DD */	bl OSRestoreInterrupts
.L_81505FD4:
/* 81505FD4 | 88 9C 00 8B */	lbz r4, 0x8b(r28)
/* 81505FD8 | 28 04 00 FF */	cmplwi r4, 0xff
/* 81505FDC | 41 82 00 0C */	beq .L_81505FE8
/* 81505FE0 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81505FE4 | 4B FF 92 79 */	bl SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi
.L_81505FE8:
/* 81505FE8 | 88 9C 00 8C */	lbz r4, 0x8c(r28)
/* 81505FEC | 28 04 00 FF */	cmplwi r4, 0xff
/* 81505FF0 | 41 82 00 0C */	beq .L_81505FFC
/* 81505FF4 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81505FF8 | 4B FF 92 7D */	bl SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi
.L_81505FFC:
/* 81505FFC | 88 9C 00 8D */	lbz r4, 0x8d(r28)
/* 81506000 | 28 04 00 FF */	cmplwi r4, 0xff
/* 81506004 | 41 82 00 0C */	beq .L_81506010
/* 81506008 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 8150600C | 4B FF 93 09 */	bl SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi
.L_81506010:
/* 81506010 | 88 9C 00 8E */	lbz r4, 0x8e(r28)
/* 81506014 | 28 04 00 FF */	cmplwi r4, 0xff
/* 81506018 | 41 82 00 0C */	beq .L_81506024
/* 8150601C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81506020 | 4B FF 92 FD */	bl SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi
.L_81506024:
/* 81506024 | 88 1C 00 5F */	lbz r0, 0x5f(r28)
/* 81506028 | C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 8150602C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81506030 | 41 82 00 2C */	beq .L_8150605C
/* 81506034 | 88 7C 00 89 */	lbz r3, 0x89(r28)
/* 81506038 | 3C 00 43 30 */	lis r0, 0x4330
/* 8150603C | 90 01 00 30 */	stw r0, 0x30(r1)
/* 81506040 | 7C 1D 18 50 */	subf r0, r29, r3
/* 81506044 | C8 42 8F 80 */	lfd f2, lbl_81695380@sda21(r0)
/* 81506048 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8150604C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81506050 | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 81506054 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81506058 | EC 21 00 2A */	fadds f1, f1, f0
.L_8150605C:
/* 8150605C | 88 1C 00 8A */	lbz r0, 0x8a(r28)
/* 81506060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81506064 | 40 82 00 18 */	bne .L_8150607C
/* 81506068 | 7F E3 FB 78 */	mr r3, r31
/* 8150606C | 7F C4 F3 78 */	mr r4, r30
/* 81506070 | 38 A0 00 00 */	li r5, 0x0
/* 81506074 | 4B FF 81 09 */	bl SetSweepParam__Q44nw4r3snd6detail7ChannelFfib
/* 81506078 | 48 00 00 68 */	b .L_815060E0
.L_8150607C:
/* 8150607C | C0 02 8F 5C */	lfs f0, lbl_8169535C@sda21(r0)
/* 81506080 | 7C 00 01 D6 */	mullw r0, r0, r0
/* 81506084 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81506088 | 4C 41 13 82 */	cror eq, gt, eq
/* 8150608C | 40 82 00 0C */	bne .L_81506098
/* 81506090 | FC 60 08 90 */	fmr f3, f1
/* 81506094 | 48 00 00 08 */	b .L_8150609C
.L_81506098:
/* 81506098 | FC 60 08 50 */	fneg f3, f1
.L_8150609C:
/* 8150609C | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 815060A0 | 3C 00 43 30 */	lis r0, 0x4330
/* 815060A4 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 815060A8 | 7F E3 FB 78 */	mr r3, r31
/* 815060AC | C8 42 8F 80 */	lfd f2, lbl_81695380@sda21(r0)
/* 815060B0 | 38 A0 00 01 */	li r5, 0x1
/* 815060B4 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 815060B8 | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 815060BC | EC 00 10 28 */	fsubs f0, f0, f2
/* 815060C0 | EC 00 00 F2 */	fmuls f0, f0, f3
/* 815060C4 | FC 00 00 1E */	fctiwz f0, f0
/* 815060C8 | D8 01 00 38 */	stfd f0, 0x38(r1)
/* 815060CC | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 815060D0 | 7C 04 2E 70 */	srawi r4, r0, 5
/* 815060D4 | 54 80 10 3A */	slwi r0, r4, 2
/* 815060D8 | 7C 80 22 14 */	add r4, r0, r4
/* 815060DC | 4B FF 80 A1 */	bl SetSweepParam__Q44nw4r3snd6detail7ChannelFfib
.L_815060E0:
/* 815060E0 | 9B BC 00 89 */	stb r29, 0x89(r28)
/* 815060E4 | 88 7C 00 5D */	lbz r3, 0x5d(r28)
/* 815060E8 | A0 BF 00 C6 */	lhz r5, 0xc6(r31)
/* 815060EC | A0 9F 00 C8 */	lhz r4, 0xc8(r31)
/* 815060F0 | 7C 03 00 D0 */	neg r0, r3
/* 815060F4 | 7C 00 1B 78 */	or r0, r0, r3
/* 815060F8 | 7C 04 28 40 */	cmplw r4, r5
/* 815060FC | 54 03 0F FE */	srwi r3, r0, 31
/* 81506100 | 41 80 00 0C */	blt .L_8150610C
/* 81506104 | 88 9F 00 C5 */	lbz r4, 0xc5(r31)
/* 81506108 | 48 00 00 20 */	b .L_81506128
.L_8150610C:
/* 8150610C | 88 DF 00 C4 */	lbz r6, 0xc4(r31)
/* 81506110 | 88 1F 00 C5 */	lbz r0, 0xc5(r31)
/* 81506114 | 7C 06 00 50 */	subf r0, r6, r0
/* 81506118 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 8150611C | 7C 00 2B D6 */	divw r0, r0, r5
/* 81506120 | 7C 06 02 14 */	add r0, r6, r0
/* 81506124 | 54 04 06 3E */	clrlwi r4, r0, 24
.L_81506128:
/* 81506128 | 7C 03 00 D0 */	neg r0, r3
/* 8150612C | 98 9F 00 C4 */	stb r4, 0xc4(r31)
/* 81506130 | 7C 00 1B 78 */	or r0, r0, r3
/* 81506134 | 38 60 00 FF */	li r3, 0xff
/* 81506138 | 7C 04 FE 70 */	srawi r4, r0, 31
/* 8150613C | 7C 64 20 78 */	andc r4, r3, r4
/* 81506140 | 38 00 00 00 */	li r0, 0x0
/* 81506144 | 98 9F 00 C5 */	stb r4, 0xc5(r31)
/* 81506148 | 7F E3 FB 78 */	mr r3, r31
/* 8150614C | B0 1F 00 C6 */	sth r0, 0xc6(r31)
/* 81506150 | B0 1F 00 C8 */	sth r0, 0xc8(r31)
.L_81506154:
/* 81506154 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81506158 | 48 0F 33 B1 */	bl _restgpr_26
/* 8150615C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81506160 | 7C 08 03 A6 */	mtlr r0
/* 81506164 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81506168 | 4E 80 00 20 */	blr
.endfn NoteOn__Q44nw4r3snd6detail8SeqTrackFiilb

# 0x8161E680..0x8161E6A8 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8161E680 | size: 0x24
.obj lbl_8161E680, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte ChannelCallbackFunc__Q44nw4r3snd6detail8SeqTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl
	.4byte 0x00000000
.endobj lbl_8161E680

# .rodata:0x24 | 0x8161E6A4 | size: 0x4
.obj gap_07_8161E6A4_rodata, global
.hidden gap_07_8161E6A4_rodata
	.4byte 0x00000000
.endobj gap_07_8161E6A4_rodata

# 0x81695358..0x81695388 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695358 | size: 0x4
.obj lbl_81695358, global
	.float 1
.endobj lbl_81695358

# .sdata2:0x4 | 0x8169535C | size: 0x4
.obj lbl_8169535C, global
	.float 0
.endobj lbl_8169535C

# .sdata2:0x8 | 0x81695360 | size: 0x4
.obj lbl_81695360, global
	.float 127
.endobj lbl_81695360

# .sdata2:0xC | 0x81695364 | size: 0x4
.obj lbl_81695364, global
	.float 0.0078125
.endobj lbl_81695364

# .sdata2:0x10 | 0x81695368 | size: 0x4
.obj lbl_81695368, global
	.float 63
.endobj lbl_81695368

# .sdata2:0x14 | 0x8169536C | size: 0x4
.obj lbl_8169536C, global
	.float -1
.endobj lbl_8169536C

# .sdata2:0x18 | 0x81695370 | size: 0x4
.obj lbl_81695370, global
	.float 2
.endobj lbl_81695370

# .sdata2:0x1C | 0x81695374 | size: 0x4
.obj lbl_81695374, global
	.float 0.015625
.endobj lbl_81695374

# .sdata2:0x20 | 0x81695378 | size: 0x8
.obj lbl_81695378, global
	.double 4503599627370496
.endobj lbl_81695378

# .sdata2:0x28 | 0x81695380 | size: 0x8
.obj lbl_81695380, global
	.double 4503601774854144
.endobj lbl_81695380
