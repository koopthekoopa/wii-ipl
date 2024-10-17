.include "macros.inc"
.file "snd_FxDelay.cpp"

# 0x81500138..0x815005D4 | size: 0x49C
.text
.balign 4

# .text:0x0 | 0x81500138 | size: 0x154
# nw4r::snd::FxDelay::FxDelay()
.fn __ct__Q34nw4r3snd7FxDelayFv, global
/* 81500138 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150013C | 7C 08 02 A6 */	mflr r0
/* 81500140 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd7FxDelay@ha
/* 81500144 | 3C C0 81 62 */	lis r6, lbl_8161E600@ha
/* 81500148 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150014C | 38 00 00 00 */	li r0, 0x0
/* 81500150 | 38 84 F3 F0 */	addi r4, r4, __vt__Q34nw4r3snd7FxDelay@l
/* 81500154 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81500158 | 7C 7F 1B 78 */	mr r31, r3
/* 8150015C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81500160 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81500164 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81500168 | 98 03 00 0C */	stb r0, 0xc(r3)
/* 8150016C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81500170 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81500174 | 84 A6 E6 00 */	lwzu r5, lbl_8161E600@l(r6)
/* 81500178 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 8150017C | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 81500180 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81500184 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81500188 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 8150018C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81500190 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81500194 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81500198 | D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8150019C | D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 815001A0 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 815001A4 | 48 0F 91 F5 */	bl __cvt_fp2unsigned
/* 815001A8 | 28 03 13 88 */	cmplwi r3, 0x1388
/* 815001AC | 40 81 00 0C */	ble .L_815001B8
/* 815001B0 | 38 00 13 88 */	li r0, 0x1388
/* 815001B4 | 48 00 00 14 */	b .L_815001C8
.L_815001B8:
/* 815001B8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 815001BC | 38 00 00 01 */	li r0, 0x1
/* 815001C0 | 41 80 00 08 */	blt .L_815001C8
/* 815001C4 | 7C 60 1B 78 */	mr r0, r3
.L_815001C8:
/* 815001C8 | C0 22 8E C0 */	lfs f1, lbl_816952C0@sda21(r0)
/* 815001CC | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 815001D0 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 815001D4 | EC 21 00 32 */	fmuls f1, f1, f0
/* 815001D8 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 815001DC | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 815001E0 | 48 0F 91 B9 */	bl __cvt_fp2unsigned
/* 815001E4 | 28 03 00 63 */	cmplwi r3, 0x63
/* 815001E8 | 38 00 00 63 */	li r0, 0x63
/* 815001EC | 41 81 00 08 */	bgt .L_815001F4
/* 815001F0 | 7C 60 1B 78 */	mr r0, r3
.L_815001F4:
/* 815001F4 | C0 22 8E C0 */	lfs f1, lbl_816952C0@sda21(r0)
/* 815001F8 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 815001FC | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 81500200 | EC 21 00 32 */	fmuls f1, f1, f0
/* 81500204 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 81500208 | 90 1F 00 70 */	stw r0, 0x70(r31)
/* 8150020C | 48 0F 91 8D */	bl __cvt_fp2unsigned
/* 81500210 | 28 03 00 64 */	cmplwi r3, 0x64
/* 81500214 | 38 80 00 64 */	li r4, 0x64
/* 81500218 | 41 81 00 08 */	bgt .L_81500220
/* 8150021C | 7C 64 1B 78 */	mr r4, r3
.L_81500220:
/* 81500220 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81500224 | 90 9F 00 84 */	stw r4, 0x84(r31)
/* 81500228 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150022C | 90 9F 00 80 */	stw r4, 0x80(r31)
/* 81500230 | 90 9F 00 7C */	stw r4, 0x7c(r31)
/* 81500234 | 41 82 00 40 */	beq .L_81500274
/* 81500238 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8150023C | 48 05 79 79 */	bl fn_81557BB4
/* 81500240 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 81500244 | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500248 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 8150024C | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81500250 | 7C 04 00 50 */	subf r0, r4, r0
/* 81500254 | 7C 03 00 40 */	cmplw r3, r0
/* 81500258 | 41 81 00 1C */	bgt .L_81500274
/* 8150025C | 38 1F 00 0C */	addi r0, r31, 0xc
/* 81500260 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 81500264 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500268 | 48 05 7B 69 */	bl fn_81557DD0
/* 8150026C | 38 00 00 00 */	li r0, 0x0
/* 81500270 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
.L_81500274:
/* 81500274 | 7F E3 FB 78 */	mr r3, r31
/* 81500278 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150027C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81500280 | 7C 08 03 A6 */	mtlr r0
/* 81500284 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81500288 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd7FxDelayFv

# .text:0x154 | 0x8150028C | size: 0x2C
# nw4r::snd::FxDelay::GetRequiredMemSize()
.fn GetRequiredMemSize__Q34nw4r3snd7FxDelayFv, global
/* 8150028C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500290 | 7C 08 02 A6 */	mflr r0
/* 81500294 | 38 63 00 24 */	addi r3, r3, 0x24
/* 81500298 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150029C | 48 05 79 19 */	bl fn_81557BB4
/* 815002A0 | 38 03 00 87 */	addi r0, r3, 0x87
/* 815002A4 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 815002A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815002AC | 7C 08 03 A6 */	mtlr r0
/* 815002B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815002B4 | 4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q34nw4r3snd7FxDelayFv

# .text:0x180 | 0x815002B8 | size: 0x8
# nw4r::snd::FxDelay::AssignWorkBuffer(void*, unsigned long)
.fn AssignWorkBuffer__Q34nw4r3snd7FxDelayFPvUl, global
/* 815002B8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 815002BC | 4B FF BB 44 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd7FxDelayFPvUl

# .text:0x188 | 0x815002C0 | size: 0x8
# nw4r::snd::FxDelay::ReleaseWorkBuffer()
.fn ReleaseWorkBuffer__Q34nw4r3snd7FxDelayFv, global
/* 815002C0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 815002C4 | 4B FF BB 84 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd7FxDelayFv

# .text:0x190 | 0x815002C8 | size: 0xB4
# nw4r::snd::FxDelay::StartUp()
.fn StartUp__Q34nw4r3snd7FxDelayFv, global
/* 815002C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815002CC | 7C 08 02 A6 */	mflr r0
/* 815002D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815002D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815002D8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815002DC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815002E0 | 7C 7D 1B 78 */	mr r29, r3
/* 815002E4 | 38 63 00 24 */	addi r3, r3, 0x24
/* 815002E8 | 48 05 78 CD */	bl fn_81557BB4
/* 815002EC | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 815002F0 | 38 03 00 87 */	addi r0, r3, 0x87
/* 815002F4 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 815002F8 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 815002FC | 7C 04 00 50 */	subf r0, r4, r0
/* 81500300 | 7C 03 00 40 */	cmplw r3, r0
/* 81500304 | 40 81 00 0C */	ble .L_81500310
/* 81500308 | 38 60 00 00 */	li r3, 0x0
/* 8150030C | 48 00 00 54 */	b .L_81500360
.L_81500310:
/* 81500310 | 38 1D 00 0C */	addi r0, r29, 0xc
/* 81500314 | 3B C0 00 00 */	li r30, 0x0
/* 81500318 | 3C 60 81 50 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 8150031C | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 81500320 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500324 | 38 63 BE 5C */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 81500328 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 8150032C | 93 CD AE 84 */	stw r30, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500330 | 48 05 98 69 */	bl fn_81559B98
/* 81500334 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81500338 | 48 05 78 99 */	bl fn_81557BD0
/* 8150033C | 7C 7F 1B 78 */	mr r31, r3
/* 81500340 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81500344 | 48 05 78 71 */	bl fn_81557BB4
/* 81500348 | 93 CD AE 80 */	stw r30, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 8150034C | 7C 1F 00 D0 */	neg r0, r31
/* 81500350 | 38 60 00 01 */	li r3, 0x1
/* 81500354 | 7C 00 FB 78 */	or r0, r0, r31
/* 81500358 | 98 7D 00 0C */	stb r3, 0xc(r29)
/* 8150035C | 54 03 0F FE */	srwi r3, r0, 31
.L_81500360:
/* 81500360 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81500364 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81500368 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150036C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81500370 | 7C 08 03 A6 */	mtlr r0
/* 81500374 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81500378 | 4E 80 00 20 */	blr
.endfn StartUp__Q34nw4r3snd7FxDelayFv

# .text:0x244 | 0x8150037C | size: 0x60
# nw4r::snd::FxDelay::Shutdown()
.fn Shutdown__Q34nw4r3snd7FxDelayFv, global
/* 8150037C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500380 | 7C 08 02 A6 */	mflr r0
/* 81500384 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 81500388 | 3C A0 81 50 */	lis r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 8150038C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500390 | 38 03 00 0C */	addi r0, r3, 0xc
/* 81500394 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 81500398 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150039C | 3B E0 00 00 */	li r31, 0x0
/* 815003A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815003A4 | 7C 7E 1B 78 */	mr r30, r3
/* 815003A8 | 9B E3 00 0C */	stb r31, 0xc(r3)
/* 815003AC | 38 65 BE 5C */	addi r3, r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 815003B0 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815003B4 | 48 05 97 E5 */	bl fn_81559B98
/* 815003B8 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 815003BC | 48 05 7B 39 */	bl fn_81557EF4
/* 815003C0 | 93 ED AE 80 */	stw r31, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815003C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815003C8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815003CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815003D0 | 7C 08 03 A6 */	mtlr r0
/* 815003D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815003D8 | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd7FxDelayFv

# .text:0x2A4 | 0x815003DC | size: 0x138
# nw4r::snd::FxDelay::SetParam(const nw4r::snd::FxDelay::DelayParam&)
.fn SetParam__Q34nw4r3snd7FxDelayFRCQ44nw4r3snd7FxDelay10DelayParam, global
/* 815003DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815003E0 | 7C 08 02 A6 */	mflr r0
/* 815003E4 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 815003E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815003EC | C0 44 00 04 */	lfs f2, 0x4(r4)
/* 815003F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815003F4 | 7C 9F 23 78 */	mr r31, r4
/* 815003F8 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 815003FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81500400 | 7C 7E 1B 78 */	mr r30, r3
/* 81500404 | D0 23 00 18 */	stfs f1, 0x18(r3)
/* 81500408 | D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8150040C | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 81500410 | 48 0F 8F 89 */	bl __cvt_fp2unsigned
/* 81500414 | 28 03 13 88 */	cmplwi r3, 0x1388
/* 81500418 | 40 81 00 0C */	ble .L_81500424
/* 8150041C | 38 00 13 88 */	li r0, 0x1388
/* 81500420 | 48 00 00 14 */	b .L_81500434
.L_81500424:
/* 81500424 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81500428 | 38 00 00 01 */	li r0, 0x1
/* 8150042C | 41 80 00 08 */	blt .L_81500434
/* 81500430 | 7C 60 1B 78 */	mr r0, r3
.L_81500434:
/* 81500434 | C0 22 8E C0 */	lfs f1, lbl_816952C0@sda21(r0)
/* 81500438 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 8150043C | 90 1E 00 6C */	stw r0, 0x6c(r30)
/* 81500440 | EC 21 00 32 */	fmuls f1, f1, f0
/* 81500444 | 90 1E 00 68 */	stw r0, 0x68(r30)
/* 81500448 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8150044C | 48 0F 8F 4D */	bl __cvt_fp2unsigned
/* 81500450 | 28 03 00 63 */	cmplwi r3, 0x63
/* 81500454 | 38 00 00 63 */	li r0, 0x63
/* 81500458 | 41 81 00 08 */	bgt .L_81500460
/* 8150045C | 7C 60 1B 78 */	mr r0, r3
.L_81500460:
/* 81500460 | C0 22 8E C0 */	lfs f1, lbl_816952C0@sda21(r0)
/* 81500464 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 81500468 | 90 1E 00 78 */	stw r0, 0x78(r30)
/* 8150046C | EC 21 00 32 */	fmuls f1, f1, f0
/* 81500470 | 90 1E 00 74 */	stw r0, 0x74(r30)
/* 81500474 | 90 1E 00 70 */	stw r0, 0x70(r30)
/* 81500478 | 48 0F 8F 21 */	bl __cvt_fp2unsigned
/* 8150047C | 28 03 00 64 */	cmplwi r3, 0x64
/* 81500480 | 38 80 00 64 */	li r4, 0x64
/* 81500484 | 41 81 00 08 */	bgt .L_8150048C
/* 81500488 | 7C 64 1B 78 */	mr r4, r3
.L_8150048C:
/* 8150048C | 88 1E 00 0C */	lbz r0, 0xc(r30)
/* 81500490 | 90 9E 00 84 */	stw r4, 0x84(r30)
/* 81500494 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81500498 | 90 9E 00 80 */	stw r4, 0x80(r30)
/* 8150049C | 90 9E 00 7C */	stw r4, 0x7c(r30)
/* 815004A0 | 40 82 00 0C */	bne .L_815004AC
/* 815004A4 | 38 60 00 01 */	li r3, 0x1
/* 815004A8 | 48 00 00 54 */	b .L_815004FC
.L_815004AC:
/* 815004AC | 38 7E 00 24 */	addi r3, r30, 0x24
/* 815004B0 | 48 05 77 05 */	bl fn_81557BB4
/* 815004B4 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 815004B8 | 38 03 00 87 */	addi r0, r3, 0x87
/* 815004BC | 54 03 00 34 */	clrrwi r3, r0, 5
/* 815004C0 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 815004C4 | 7C 04 00 50 */	subf r0, r4, r0
/* 815004C8 | 7C 03 00 40 */	cmplw r3, r0
/* 815004CC | 40 81 00 0C */	ble .L_815004D8
/* 815004D0 | 38 60 00 00 */	li r3, 0x0
/* 815004D4 | 48 00 00 28 */	b .L_815004FC
.L_815004D8:
/* 815004D8 | 38 1E 00 0C */	addi r0, r30, 0xc
/* 815004DC | 38 7E 00 24 */	addi r3, r30, 0x24
/* 815004E0 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815004E4 | 48 05 78 ED */	bl fn_81557DD0
/* 815004E8 | 7C 03 00 D0 */	neg r0, r3
/* 815004EC | 38 80 00 00 */	li r4, 0x0
/* 815004F0 | 7C 00 1B 78 */	or r0, r0, r3
/* 815004F4 | 90 8D AE 80 */	stw r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815004F8 | 54 03 0F FE */	srwi r3, r0, 31
.L_815004FC:
/* 815004FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500500 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500504 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81500508 | 7C 08 03 A6 */	mtlr r0
/* 8150050C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500510 | 4E 80 00 20 */	blr
.endfn SetParam__Q34nw4r3snd7FxDelayFRCQ44nw4r3snd7FxDelay10DelayParam

# .text:0x3DC | 0x81500514 | size: 0x44
# nw4r::snd::FxDelay::UpdateBuffer(int, void**, unsigned long, nw4r::snd::SampleFormat, float, nw4r::snd::OutputMode)
.fn UpdateBuffer__Q34nw4r3snd7FxDelayFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 81500514 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81500518 | 7C 08 02 A6 */	mflr r0
/* 8150051C | 7C 64 1B 78 */	mr r4, r3
/* 81500520 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81500524 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81500528 | 38 84 00 24 */	addi r4, r4, 0x24
/* 8150052C | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81500530 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81500534 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81500538 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150053C | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 81500540 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81500544 | 48 05 7A 41 */	bl fn_81557F84
/* 81500548 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150054C | 7C 08 03 A6 */	mtlr r0
/* 81500550 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81500554 | 4E 80 00 20 */	blr
.endfn UpdateBuffer__Q34nw4r3snd7FxDelayFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

# .text:0x420 | 0x81500558 | size: 0x7C
# nw4r::snd::FxDelay::~FxDelay()
.fn __dt__Q34nw4r3snd7FxDelayFv, global
/* 81500558 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150055C | 7C 08 02 A6 */	mflr r0
/* 81500560 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81500564 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500568 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150056C | 7C 9F 23 78 */	mr r31, r4
/* 81500570 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81500574 | 7C 7E 1B 78 */	mr r30, r3
/* 81500578 | 41 82 00 40 */	beq .L_815005B8
/* 8150057C | 3D 80 81 67 */	lis r12, __vt__Q34nw4r3snd7FxDelay@ha
/* 81500580 | 39 8C F3 F0 */	addi r12, r12, __vt__Q34nw4r3snd7FxDelay@l
/* 81500584 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81500588 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150058C | 7D 89 03 A6 */	mtctr r12
/* 81500590 | 4E 80 04 21 */	bctrl
/* 81500594 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81500598 | 7F C3 F3 78 */	mr r3, r30
/* 8150059C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 815005A0 | 7D 89 03 A6 */	mtctr r12
/* 815005A4 | 4E 80 04 21 */	bctrl
/* 815005A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815005AC | 40 81 00 0C */	ble .L_815005B8
/* 815005B0 | 7F C3 F3 78 */	mr r3, r30
/* 815005B4 | 48 0F 7B 31 */	bl __dl__FPv
.L_815005B8:
/* 815005B8 | 7F C3 F3 78 */	mr r3, r30
/* 815005BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815005C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815005C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815005C8 | 7C 08 03 A6 */	mtlr r0
/* 815005CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 815005D0 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd7FxDelayFv

# 0x8161E600..0x8161E610 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8161E600 | size: 0x10
.obj lbl_8161E600, global
	.4byte 0x43200000
	.4byte 0x3ECCCCCD
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj lbl_8161E600

# 0x8166F3D0..0x8166F410 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x8166F3D0 | size: 0x20
# nw4r::snd::FxChorus::__vtable
.obj __vt__Q34nw4r3snd8FxChorus, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd8FxChorusFv
	.4byte StartUp__Q34nw4r3snd8FxChorusFv
	.4byte Shutdown__Q34nw4r3snd8FxChorusFv
	.4byte UpdateBuffer__Q34nw4r3snd8FxChorusFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte AssignWorkBuffer__Q34nw4r3snd8FxChorusFPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd8FxChorusFv
.endobj __vt__Q34nw4r3snd8FxChorus

# .data:0x20 | 0x8166F3F0 | size: 0x20
# nw4r::snd::FxDelay::__vtable
.obj __vt__Q34nw4r3snd7FxDelay, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd7FxDelayFv
	.4byte StartUp__Q34nw4r3snd7FxDelayFv
	.4byte Shutdown__Q34nw4r3snd7FxDelayFv
	.4byte UpdateBuffer__Q34nw4r3snd7FxDelayFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte AssignWorkBuffer__Q34nw4r3snd7FxDelayFPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd7FxDelayFv
.endobj __vt__Q34nw4r3snd7FxDelay

# 0x816952C0..0x816952C8 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816952C0 | size: 0x4
.obj lbl_816952C0, global
	.float 100
.endobj lbl_816952C0

# .sdata2:0x4 | 0x816952C4 | size: 0x4
.obj gap_09_816952C4_sdata2, global
.hidden gap_09_816952C4_sdata2
	.4byte 0x00000000
.endobj gap_09_816952C4_sdata2
