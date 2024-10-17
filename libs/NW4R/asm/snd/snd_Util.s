.include "macros.inc"
.file "snd_Util.cpp"

# 0x8150F18C..0x8150F4F0 | size: 0x364
.text
.balign 4

# .text:0x0 | 0x8150F18C | size: 0x190
# nw4r::snd::detail::Util::CalcPitchRatio(int)
.fn CalcPitchRatio__Q44nw4r3snd6detail4UtilFi, global
/* 8150F18C | 20 A3 0B FF */	subfic r5, r3, 0xbff
/* 8150F190 | 38 00 0C 00 */	li r0, 0xc00
/* 8150F194 | 7C A5 03 96 */	divwu r5, r5, r0
/* 8150F198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F19C | C0 22 8F A8 */	lfs f1, lbl_816953A8@sda21(r0)
/* 8150F1A0 | 38 C0 00 00 */	li r6, 0x0
/* 8150F1A4 | 40 80 00 34 */	bge .L_8150F1D8
/* 8150F1A8 | 54 A4 E8 FF */	srwi. r4, r5, 3
/* 8150F1AC | 1C 05 0C 00 */	mulli r0, r5, 0xc00
/* 8150F1B0 | 7C 89 03 A6 */	mtctr r4
/* 8150F1B4 | 41 82 00 14 */	beq .L_8150F1C8
.L_8150F1B8:
/* 8150F1B8 | 38 C6 FF F8 */	subi r6, r6, 0x8
/* 8150F1BC | 42 00 FF FC */	bdnz .L_8150F1B8
/* 8150F1C0 | 70 A5 00 07 */	andi. r5, r5, 0x7
/* 8150F1C4 | 41 82 00 10 */	beq .L_8150F1D4
.L_8150F1C8:
/* 8150F1C8 | 7C A9 03 A6 */	mtctr r5
.L_8150F1CC:
/* 8150F1CC | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8150F1D0 | 42 00 FF FC */	bdnz .L_8150F1CC
.L_8150F1D4:
/* 8150F1D4 | 7C 63 02 14 */	add r3, r3, r0
.L_8150F1D8:
/* 8150F1D8 | 38 00 0C 00 */	li r0, 0xc00
/* 8150F1DC | 2C 03 0C 00 */	cmpwi r3, 0xc00
/* 8150F1E0 | 7C A3 03 96 */	divwu r5, r3, r0
/* 8150F1E4 | 41 80 00 34 */	blt .L_8150F218
/* 8150F1E8 | 54 A4 E8 FF */	srwi. r4, r5, 3
/* 8150F1EC | 1C 05 F4 00 */	mulli r0, r5, -0xc00
/* 8150F1F0 | 7C 89 03 A6 */	mtctr r4
/* 8150F1F4 | 41 82 00 14 */	beq .L_8150F208
.L_8150F1F8:
/* 8150F1F8 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 8150F1FC | 42 00 FF FC */	bdnz .L_8150F1F8
/* 8150F200 | 70 A5 00 07 */	andi. r5, r5, 0x7
/* 8150F204 | 41 82 00 10 */	beq .L_8150F214
.L_8150F208:
/* 8150F208 | 7C A9 03 A6 */	mtctr r5
.L_8150F20C:
/* 8150F20C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8150F210 | 42 00 FF FC */	bdnz .L_8150F20C
.L_8150F214:
/* 8150F214 | 7C 63 02 14 */	add r3, r3, r0
.L_8150F218:
/* 8150F218 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150F21C | C0 02 8F AC */	lfs f0, lbl_816953AC@sda21(r0)
/* 8150F220 | 7C C5 33 78 */	mr r5, r6
/* 8150F224 | 40 81 00 50 */	ble .L_8150F274
/* 8150F228 | 54 C4 E8 FF */	srwi. r4, r6, 3
/* 8150F22C | 7C 06 00 D0 */	neg r0, r6
/* 8150F230 | 7C 89 03 A6 */	mtctr r4
/* 8150F234 | 41 82 00 30 */	beq .L_8150F264
.L_8150F238:
/* 8150F238 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F23C | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F240 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F244 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F248 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F24C | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F250 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F254 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F258 | 42 00 FF E0 */	bdnz .L_8150F238
/* 8150F25C | 70 C5 00 07 */	andi. r5, r6, 0x7
/* 8150F260 | 41 82 00 10 */	beq .L_8150F270
.L_8150F264:
/* 8150F264 | 7C A9 03 A6 */	mtctr r5
.L_8150F268:
/* 8150F268 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F26C | 42 00 FF FC */	bdnz .L_8150F268
.L_8150F270:
/* 8150F270 | 7C C6 02 14 */	add r6, r6, r0
.L_8150F274:
/* 8150F274 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150F278 | C0 02 8F B0 */	lfs f0, lbl_816953B0@sda21(r0)
/* 8150F27C | 7C 86 00 D0 */	neg r4, r6
/* 8150F280 | 40 80 00 48 */	bge .L_8150F2C8
/* 8150F284 | 54 80 E8 FF */	srwi. r0, r4, 3
/* 8150F288 | 7C 09 03 A6 */	mtctr r0
/* 8150F28C | 41 82 00 30 */	beq .L_8150F2BC
.L_8150F290:
/* 8150F290 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F294 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F298 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F29C | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F2A0 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F2A4 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F2A8 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F2AC | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F2B0 | 42 00 FF E0 */	bdnz .L_8150F290
/* 8150F2B4 | 70 84 00 07 */	andi. r4, r4, 0x7
/* 8150F2B8 | 41 82 00 10 */	beq .L_8150F2C8
.L_8150F2BC:
/* 8150F2BC | 7C 89 03 A6 */	mtctr r4
.L_8150F2C0:
/* 8150F2C0 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F2C4 | 42 00 FF FC */	bdnz .L_8150F2C0
.L_8150F2C8:
/* 8150F2C8 | 7C 64 46 70 */	srawi r4, r3, 8
/* 8150F2CC | 54 60 C0 0E */	slwi r0, r3, 24
/* 8150F2D0 | 54 63 0F FE */	srwi r3, r3, 31
/* 8150F2D4 | 7C 03 00 50 */	subf r0, r3, r0
/* 8150F2D8 | 7C A4 01 95 */	addze. r5, r4
/* 8150F2DC | 54 00 40 3E */	rotlwi r0, r0, 8
/* 8150F2E0 | 7C 60 1A 14 */	add r3, r0, r3
/* 8150F2E4 | 41 82 00 18 */	beq .L_8150F2FC
/* 8150F2E8 | 3C 80 81 62 */	lis r4, NoteTable__Q44nw4r3snd6detail4Util@ha
/* 8150F2EC | 54 A0 10 3A */	slwi r0, r5, 2
/* 8150F2F0 | 38 84 E6 A8 */	addi r4, r4, NoteTable__Q44nw4r3snd6detail4Util@l
/* 8150F2F4 | 7C 04 04 2E */	lfsx f0, r4, r0
/* 8150F2F8 | EC 21 00 32 */	fmuls f1, f1, f0
.L_8150F2FC:
/* 8150F2FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F300 | 4D 82 00 20 */	beqlr
/* 8150F304 | 3C 80 81 62 */	lis r4, PitchTable__Q44nw4r3snd6detail4Util@ha
/* 8150F308 | 54 60 10 3A */	slwi r0, r3, 2
/* 8150F30C | 38 84 E6 D8 */	addi r4, r4, PitchTable__Q44nw4r3snd6detail4Util@l
/* 8150F310 | 7C 04 04 2E */	lfsx f0, r4, r0
/* 8150F314 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8150F318 | 4E 80 00 20 */	blr
.endfn CalcPitchRatio__Q44nw4r3snd6detail4UtilFi

# .text:0x190 | 0x8150F31C | size: 0x58
# nw4r::snd::detail::Util::CalcVolumeRatio(float)
.fn CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf, global
/* 8150F31C | C0 42 8F B4 */	lfs f2, lbl_816953B4@sda21(r0)
/* 8150F320 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150F324 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8150F328 | 40 81 00 08 */	ble .L_8150F330
/* 8150F32C | 48 00 00 18 */	b .L_8150F344
.L_8150F330:
/* 8150F330 | C0 42 8F B8 */	lfs f2, lbl_816953B8@sda21(r0)
/* 8150F334 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8150F338 | 40 80 00 08 */	bge .L_8150F340
/* 8150F33C | 48 00 00 08 */	b .L_8150F344
.L_8150F340:
/* 8150F340 | FC 40 08 90 */	fmr f2, f1
.L_8150F344:
/* 8150F344 | C0 02 8F BC */	lfs f0, lbl_816953BC@sda21(r0)
/* 8150F348 | 3C 60 81 62 */	lis r3, Decibel2RatioTable__Q44nw4r3snd6detail4Util@ha
/* 8150F34C | 38 63 EA D8 */	addi r3, r3, Decibel2RatioTable__Q44nw4r3snd6detail4Util@l
/* 8150F350 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 8150F354 | FC 00 00 1E */	fctiwz f0, f0
/* 8150F358 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8150F35C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8150F360 | 38 04 03 88 */	addi r0, r4, 0x388
/* 8150F364 | 54 00 10 3A */	slwi r0, r0, 2
/* 8150F368 | 7C 23 04 2E */	lfsx f1, r3, r0
/* 8150F36C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150F370 | 4E 80 00 20 */	blr
.endfn CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf

# .text:0x1E8 | 0x8150F374 | size: 0x68
# nw4r::snd::detail::Util::CalcPanRatio(float)
.fn CalcPanRatio__Q44nw4r3snd6detail4UtilFf, global
/* 8150F374 | C0 62 8F A8 */	lfs f3, lbl_816953A8@sda21(r0)
/* 8150F378 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150F37C | FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8150F380 | 40 81 00 08 */	ble .L_8150F388
/* 8150F384 | 48 00 00 18 */	b .L_8150F39C
.L_8150F388:
/* 8150F388 | C0 62 8F C0 */	lfs f3, lbl_816953C0@sda21(r0)
/* 8150F38C | FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8150F390 | 40 80 00 08 */	bge .L_8150F398
/* 8150F394 | 48 00 00 08 */	b .L_8150F39C
.L_8150F398:
/* 8150F398 | FC 60 08 90 */	fmr f3, f1
.L_8150F39C:
/* 8150F39C | C0 02 8F A8 */	lfs f0, lbl_816953A8@sda21(r0)
/* 8150F3A0 | 3C 60 81 62 */	lis r3, Pan2RatioTable__Q44nw4r3snd6detail4Util@ha
/* 8150F3A4 | C0 42 8F B0 */	lfs f2, lbl_816953B0@sda21(r0)
/* 8150F3A8 | 38 63 F9 EC */	addi r3, r3, Pan2RatioTable__Q44nw4r3snd6detail4Util@l
/* 8150F3AC | EC 20 18 2A */	fadds f1, f0, f3
/* 8150F3B0 | C0 02 8F C4 */	lfs f0, lbl_816953C4@sda21(r0)
/* 8150F3B4 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 8150F3B8 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8150F3BC | EC 02 00 2A */	fadds f0, f2, f0
/* 8150F3C0 | FC 00 00 1E */	fctiwz f0, f0
/* 8150F3C4 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8150F3C8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8150F3CC | 54 00 10 3A */	slwi r0, r0, 2
/* 8150F3D0 | 7C 23 04 2E */	lfsx f1, r3, r0
/* 8150F3D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150F3D8 | 4E 80 00 20 */	blr
.endfn CalcPanRatio__Q44nw4r3snd6detail4UtilFf

# .text:0x250 | 0x8150F3DC | size: 0x60
# nw4r::snd::detail::Util::CalcSurroundPanRatio(float)
.fn CalcSurroundPanRatio__Q44nw4r3snd6detail4UtilFf, global
/* 8150F3DC | C0 62 8F AC */	lfs f3, lbl_816953AC@sda21(r0)
/* 8150F3E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150F3E4 | FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8150F3E8 | 40 81 00 08 */	ble .L_8150F3F0
/* 8150F3EC | 48 00 00 18 */	b .L_8150F404
.L_8150F3F0:
/* 8150F3F0 | C0 62 8F C8 */	lfs f3, lbl_816953C8@sda21(r0)
/* 8150F3F4 | FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8150F3F8 | 40 80 00 08 */	bge .L_8150F400
/* 8150F3FC | 48 00 00 08 */	b .L_8150F404
.L_8150F400:
/* 8150F400 | FC 60 08 90 */	fmr f3, f1
.L_8150F404:
/* 8150F404 | C0 42 8F B0 */	lfs f2, lbl_816953B0@sda21(r0)
/* 8150F408 | 3C 60 81 62 */	lis r3, Pan2RatioTable__Q44nw4r3snd6detail4Util@ha
/* 8150F40C | C0 02 8F C4 */	lfs f0, lbl_816953C4@sda21(r0)
/* 8150F410 | 38 63 F9 EC */	addi r3, r3, Pan2RatioTable__Q44nw4r3snd6detail4Util@l
/* 8150F414 | EC 23 00 B2 */	fmuls f1, f3, f2
/* 8150F418 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8150F41C | EC 02 00 2A */	fadds f0, f2, f0
/* 8150F420 | FC 00 00 1E */	fctiwz f0, f0
/* 8150F424 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8150F428 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8150F42C | 54 00 10 3A */	slwi r0, r0, 2
/* 8150F430 | 7C 23 04 2E */	lfsx f1, r3, r0
/* 8150F434 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150F438 | 4E 80 00 20 */	blr
.endfn CalcSurroundPanRatio__Q44nw4r3snd6detail4UtilFf

# .text:0x2B0 | 0x8150F43C | size: 0x6C
# nw4r::snd::detail::Util::CalcLpfFreq(float)
.fn CalcLpfFreq__Q44nw4r3snd6detail4UtilFf, global
/* 8150F43C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150F440 | 7C 08 02 A6 */	mflr r0
/* 8150F444 | C0 42 8F A8 */	lfs f2, lbl_816953A8@sda21(r0)
/* 8150F448 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150F44C | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8150F450 | 40 81 00 08 */	ble .L_8150F458
/* 8150F454 | 48 00 00 18 */	b .L_8150F46C
.L_8150F458:
/* 8150F458 | C0 42 8F C8 */	lfs f2, lbl_816953C8@sda21(r0)
/* 8150F45C | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8150F460 | 40 80 00 08 */	bge .L_8150F468
/* 8150F464 | 48 00 00 08 */	b .L_8150F46C
.L_8150F468:
/* 8150F468 | FC 40 08 90 */	fmr f2, f1
.L_8150F46C:
/* 8150F46C | C8 22 8F E8 */	lfd f1, lbl_816953E8@sda21(r0)
/* 8150F470 | C8 02 8F E0 */	lfd f0, lbl_816953E0@sda21(r0)
/* 8150F474 | FC 42 08 28 */	fsub f2, f2, f1
/* 8150F478 | C8 22 8F D8 */	lfd f1, lbl_816953D8@sda21(r0)
/* 8150F47C | FC 40 00 B2 */	fmul f2, f0, f2
/* 8150F480 | 48 0F D8 B1 */	bl pow
/* 8150F484 | C8 02 8F D0 */	lfd f0, lbl_816953D0@sda21(r0)
/* 8150F488 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150F48C | FC 00 00 72 */	fmul f0, f0, f1
/* 8150F490 | FC 00 00 1E */	fctiwz f0, f0
/* 8150F494 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8150F498 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8150F49C | 7C 08 03 A6 */	mtlr r0
/* 8150F4A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150F4A4 | 4E 80 00 20 */	blr
.endfn CalcLpfFreq__Q44nw4r3snd6detail4UtilFf

# .text:0x31C | 0x8150F4A8 | size: 0x24
# nw4r::snd::detail::Util::CalcRandom()
.fn CalcRandom__Q44nw4r3snd6detail4UtilFv, global
/* 8150F4A8 | 3C 60 00 19 */	lis r3, 0x19
/* 8150F4AC | 80 8D 9D 68 */	lwz r4, u$1793@sda21(r0)
/* 8150F4B0 | 38 03 66 0D */	addi r0, r3, 0x660d
/* 8150F4B4 | 7C 64 01 D6 */	mullw r3, r4, r0
/* 8150F4B8 | 3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8150F4BC | 38 03 F3 5F */	subi r0, r3, 0xca1
/* 8150F4C0 | 90 0D 9D 68 */	stw r0, u$1793@sda21(r0)
/* 8150F4C4 | 54 03 84 3E */	srwi r3, r0, 16
/* 8150F4C8 | 4E 80 00 20 */	blr
.endfn CalcRandom__Q44nw4r3snd6detail4UtilFv

# .text:0x340 | 0x8150F4CC | size: 0x24
# nw4r::snd::detail::Util::GetDataRefAddressImpl(nw4r::snd::detail::Util::RefType, unsigned long, const void*)
.fn GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv, global
/* 8150F4CC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8150F4D0 | 40 82 00 0C */	bne .L_8150F4DC
/* 8150F4D4 | 7C 64 2A 14 */	add r3, r4, r5
/* 8150F4D8 | 4E 80 00 20 */	blr
.L_8150F4DC:
/* 8150F4DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F4E0 | 38 60 00 00 */	li r3, 0x0
/* 8150F4E4 | 4C 82 00 20 */	bnelr
/* 8150F4E8 | 7C 83 23 78 */	mr r3, r4
/* 8150F4EC | 4E 80 00 20 */	blr
.endfn GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv

# 0x8161E6A8..0x8161FDF0 | size: 0x1748
.rodata
.balign 8

# .rodata:0x0 | 0x8161E6A8 | size: 0x30
# nw4r::snd::detail::Util::NoteTable
.obj NoteTable__Q44nw4r3snd6detail4Util, global
	.4byte 0x3F800000
	.4byte 0x3F879C7D
	.4byte 0x3F8FACD6
	.4byte 0x3F9837F0
	.4byte 0x3FA14518
	.4byte 0x3FAADC08
	.4byte 0x3FB504F3
	.4byte 0x3FBFC887
	.4byte 0x3FCB2FF5
	.4byte 0x3FD744FD
	.4byte 0x3FE411F0
	.4byte 0x3FF1A1BF
.endobj NoteTable__Q44nw4r3snd6detail4Util

# .rodata:0x30 | 0x8161E6D8 | size: 0x400
# nw4r::snd::detail::Util::PitchTable
.obj PitchTable__Q44nw4r3snd6detail4Util, global
	.4byte 0x3F800000
	.4byte 0x3F800765
	.4byte 0x3F800ECA
	.4byte 0x3F801630
	.4byte 0x3F801D96
	.4byte 0x3F8024FD
	.4byte 0x3F802C64
	.4byte 0x3F8033CC
	.4byte 0x3F803B34
	.4byte 0x3F80429C
	.4byte 0x3F804A05
	.4byte 0x3F80516E
	.4byte 0x3F8058D8
	.4byte 0x3F806042
	.4byte 0x3F8067AC
	.4byte 0x3F806F17
	.4byte 0x3F807683
	.4byte 0x3F807DEF
	.4byte 0x3F80855B
	.4byte 0x3F808CC8
	.4byte 0x3F809435
	.4byte 0x3F809BA2
	.4byte 0x3F80A310
	.4byte 0x3F80AA7E
	.4byte 0x3F80B1ED
	.4byte 0x3F80B95D
	.4byte 0x3F80C0CC
	.4byte 0x3F80C83C
	.4byte 0x3F80CFAD
	.4byte 0x3F80D71E
	.4byte 0x3F80DE8F
	.4byte 0x3F80E601
	.4byte 0x3F80ED73
	.4byte 0x3F80F4E6
	.4byte 0x3F80FC59
	.4byte 0x3F8103CD
	.4byte 0x3F810B41
	.4byte 0x3F8112B5
	.4byte 0x3F811A2A
	.4byte 0x3F81219F
	.4byte 0x3F812915
	.4byte 0x3F81308B
	.4byte 0x3F813802
	.4byte 0x3F813F79
	.4byte 0x3F8146F0
	.4byte 0x3F814E68
	.4byte 0x3F8155E0
	.4byte 0x3F815D59
	.4byte 0x3F8164D2
	.4byte 0x3F816C4C
	.4byte 0x3F8173C6
	.4byte 0x3F817B40
	.4byte 0x3F8182BB
	.4byte 0x3F818A36
	.4byte 0x3F8191B2
	.4byte 0x3F81992E
	.4byte 0x3F81A0AB
	.4byte 0x3F81A828
	.4byte 0x3F81AFA5
	.4byte 0x3F81B723
	.4byte 0x3F81BEA1
	.4byte 0x3F81C620
	.4byte 0x3F81CD9F
	.4byte 0x3F81D51F
	.4byte 0x3F81DC9F
	.4byte 0x3F81E420
	.4byte 0x3F81EBA1
	.4byte 0x3F81F322
	.4byte 0x3F81FAA4
	.4byte 0x3F820226
	.4byte 0x3F8209A9
	.4byte 0x3F82112C
	.4byte 0x3F8218AF
	.4byte 0x3F822033
	.4byte 0x3F8227B8
	.4byte 0x3F822F3C
	.4byte 0x3F8236C2
	.4byte 0x3F823E47
	.4byte 0x3F8245CE
	.4byte 0x3F824D54
	.4byte 0x3F8254DB
	.4byte 0x3F825C63
	.4byte 0x3F8263EB
	.4byte 0x3F826B73
	.4byte 0x3F8272FC
	.4byte 0x3F827A85
	.4byte 0x3F82820E
	.4byte 0x3F828998
	.4byte 0x3F829123
	.4byte 0x3F8298AE
	.4byte 0x3F82A039
	.4byte 0x3F82A7C5
	.4byte 0x3F82AF51
	.4byte 0x3F82B6DE
	.4byte 0x3F82BE6B
	.4byte 0x3F82C5F9
	.4byte 0x3F82CD87
	.4byte 0x3F82D515
	.4byte 0x3F82DCA4
	.4byte 0x3F82E433
	.4byte 0x3F82EBC3
	.4byte 0x3F82F353
	.4byte 0x3F82FAE4
	.4byte 0x3F830275
	.4byte 0x3F830A06
	.4byte 0x3F831198
	.4byte 0x3F83192A
	.4byte 0x3F8320BD
	.4byte 0x3F832850
	.4byte 0x3F832FE4
	.4byte 0x3F833778
	.4byte 0x3F833F0D
	.4byte 0x3F8346A2
	.4byte 0x3F834E37
	.4byte 0x3F8355CD
	.4byte 0x3F835D63
	.4byte 0x3F8364FA
	.4byte 0x3F836C91
	.4byte 0x3F837429
	.4byte 0x3F837BC1
	.4byte 0x3F838359
	.4byte 0x3F838AF2
	.4byte 0x3F83928C
	.4byte 0x3F839A25
	.4byte 0x3F83A1C0
	.4byte 0x3F83A95A
	.4byte 0x3F83B0F5
	.4byte 0x3F83B891
	.4byte 0x3F83C02D
	.4byte 0x3F83C7C9
	.4byte 0x3F83CF66
	.4byte 0x3F83D704
	.4byte 0x3F83DEA1
	.4byte 0x3F83E640
	.4byte 0x3F83EDDE
	.4byte 0x3F83F57D
	.4byte 0x3F83FD1D
	.4byte 0x3F8404BD
	.4byte 0x3F840C5D
	.4byte 0x3F8413FE
	.4byte 0x3F841B9F
	.4byte 0x3F842341
	.4byte 0x3F842AE3
	.4byte 0x3F843286
	.4byte 0x3F843A29
	.4byte 0x3F8441CC
	.4byte 0x3F844970
	.4byte 0x3F845115
	.4byte 0x3F8458B9
	.4byte 0x3F84605F
	.4byte 0x3F846804
	.4byte 0x3F846FAA
	.4byte 0x3F847751
	.4byte 0x3F847EF8
	.4byte 0x3F84869F
	.4byte 0x3F848E47
	.4byte 0x3F8495F0
	.4byte 0x3F849D98
	.4byte 0x3F84A542
	.4byte 0x3F84ACEB
	.4byte 0x3F84B495
	.4byte 0x3F84BC40
	.4byte 0x3F84C3EB
	.4byte 0x3F84CB96
	.4byte 0x3F84D342
	.4byte 0x3F84DAEF
	.4byte 0x3F84E29B
	.4byte 0x3F84EA49
	.4byte 0x3F84F1F6
	.4byte 0x3F84F9A4
	.4byte 0x3F850153
	.4byte 0x3F850902
	.4byte 0x3F8510B1
	.4byte 0x3F851861
	.4byte 0x3F852012
	.4byte 0x3F8527C2
	.4byte 0x3F852F74
	.4byte 0x3F853725
	.4byte 0x3F853ED7
	.4byte 0x3F85468A
	.4byte 0x3F854E3D
	.4byte 0x3F8555F0
	.4byte 0x3F855DA4
	.4byte 0x3F856558
	.4byte 0x3F856D0D
	.4byte 0x3F8574C2
	.4byte 0x3F857C78
	.4byte 0x3F85842E
	.4byte 0x3F858BE5
	.4byte 0x3F85939C
	.4byte 0x3F859B53
	.4byte 0x3F85A30B
	.4byte 0x3F85AAC3
	.4byte 0x3F85B27C
	.4byte 0x3F85BA35
	.4byte 0x3F85C1EF
	.4byte 0x3F85C9A9
	.4byte 0x3F85D164
	.4byte 0x3F85D91F
	.4byte 0x3F85E0DA
	.4byte 0x3F85E896
	.4byte 0x3F85F052
	.4byte 0x3F85F80F
	.4byte 0x3F85FFCC
	.4byte 0x3F86078A
	.4byte 0x3F860F48
	.4byte 0x3F861707
	.4byte 0x3F861EC6
	.4byte 0x3F862685
	.4byte 0x3F862E45
	.4byte 0x3F863606
	.4byte 0x3F863DC7
	.4byte 0x3F864588
	.4byte 0x3F864D4A
	.4byte 0x3F86550C
	.4byte 0x3F865CCE
	.4byte 0x3F866491
	.4byte 0x3F866C55
	.4byte 0x3F867419
	.4byte 0x3F867BDD
	.4byte 0x3F8683A2
	.4byte 0x3F868B67
	.4byte 0x3F86932D
	.4byte 0x3F869AF3
	.4byte 0x3F86A2BA
	.4byte 0x3F86AA81
	.4byte 0x3F86B249
	.4byte 0x3F86BA11
	.4byte 0x3F86C1D9
	.4byte 0x3F86C9A2
	.4byte 0x3F86D16B
	.4byte 0x3F86D935
	.4byte 0x3F86E0FF
	.4byte 0x3F86E8CA
	.4byte 0x3F86F095
	.4byte 0x3F86F861
	.4byte 0x3F87002D
	.4byte 0x3F8707F9
	.4byte 0x3F870FC6
	.4byte 0x3F871794
	.4byte 0x3F871F62
	.4byte 0x3F872730
	.4byte 0x3F872EFF
	.4byte 0x3F8736CE
	.4byte 0x3F873E9E
	.4byte 0x3F87466E
	.4byte 0x3F874E3E
	.4byte 0x3F87560F
	.4byte 0x3F875DE1
	.4byte 0x3F8765B3
	.4byte 0x3F876D85
	.4byte 0x3F877558
	.4byte 0x3F877D2B
	.4byte 0x3F8784FF
	.4byte 0x3F878CD3
	.4byte 0x3F8794A8
.endobj PitchTable__Q44nw4r3snd6detail4Util

# .rodata:0x430 | 0x8161EAD8 | size: 0xF14
# nw4r::snd::detail::Util::Decibel2RatioTable
.obj Decibel2RatioTable__Q44nw4r3snd6detail4Util, global
	.4byte 0x00000000
	.4byte 0x380021F4
	.4byte 0x38019DD8
	.4byte 0x38031E07
	.4byte 0x3804A2B9
	.4byte 0x38062BED
	.4byte 0x3807B9A4
	.4byte 0x38094BF9
	.4byte 0x380AE2EC
	.4byte 0x380C7E98
	.4byte 0x380E1F19
	.4byte 0x380FC46F
	.4byte 0x38116E9A
	.4byte 0x38131DB6
	.4byte 0x3814D1C1
	.4byte 0x38168AF5
	.4byte 0x38184934
	.4byte 0x381A0C9B
	.4byte 0x381BD544
	.4byte 0x381DA331
	.4byte 0x381F767C
	.4byte 0x38214F40
	.4byte 0x38232D64
	.4byte 0x3825111C
	.4byte 0x3826FA6A
	.4byte 0x3828E969
	.4byte 0x382ADE18
	.4byte 0x382CD8B0
	.4byte 0x382ED8F8
	.4byte 0x3830DF5F
	.4byte 0x3832EBAE
	.4byte 0x3834FE00
	.4byte 0x3837168C
	.4byte 0x38393538
	.4byte 0x383B5A54
	.4byte 0x383D85AB
	.4byte 0x383FB773
	.4byte 0x3841EFC8
	.4byte 0x38442EAA
	.4byte 0x38467434
	.4byte 0x3848C081
	.4byte 0x384B1393
	.4byte 0x384D6D9F
	.4byte 0x384FCE8A
	.4byte 0x3852368B
	.4byte 0x3854A5BE
	.4byte 0x38571C08
	.4byte 0x385999BA
	.4byte 0x385C1EB9
	.4byte 0x385EAB3C
	.4byte 0x38613F5F
	.4byte 0x3863DB06
	.4byte 0x38667E84
	.4byte 0x386929BD
	.4byte 0x386BDCE8
	.4byte 0x386E9820
	.4byte 0x38715B66
	.4byte 0x387426D5
	.4byte 0x3876FAA5
	.4byte 0x3879D6B8
	.4byte 0x387CBB63
	.4byte 0x387FA889
	.4byte 0x38814F31
	.4byte 0x3882CE85
	.4byte 0x3884523F
	.4byte 0x3885DA7C
	.4byte 0x38876749
	.4byte 0x3888F8B4
	.4byte 0x388A8EAF
	.4byte 0x388C2972
	.4byte 0x388DC8EE
	.4byte 0x388F6D3F
	.4byte 0x38911665
	.4byte 0x3892C47B
	.4byte 0x38947790
	.4byte 0x38962FA2
	.4byte 0x3897ECDD
	.4byte 0x3899AF3E
	.4byte 0x389B76C7
	.4byte 0x389D43A1
	.4byte 0x389F15D9
	.4byte 0x38A0ED61
	.4byte 0x38A2CA72
	.4byte 0x38A4AD09
	.4byte 0x38A69529
	.4byte 0x38A882F9
	.4byte 0x38AA7688
	.4byte 0x38AC6FD6
	.4byte 0x38AE6EFD
	.4byte 0x38B0740D
	.4byte 0x38B27F20
	.4byte 0x38B49043
	.4byte 0x38B6A786
	.4byte 0x38B8C4F5
	.4byte 0x38BAE8AC
	.4byte 0x38BD12B9
	.4byte 0x38BF4338
	.4byte 0x38C17A27
	.4byte 0x38C3B7B1
	.4byte 0x38C5FBE4
	.4byte 0x38C846CC
	.4byte 0x38CA9878
	.4byte 0x38CCF103
	.4byte 0x38CF5089
	.4byte 0x38D1B717
	.4byte 0x38D424CA
	.4byte 0x38D69977
	.4byte 0x38D915A8
	.4byte 0x38DB995D
	.4byte 0x38DE240D
	.4byte 0x38E0B6CB
	.4byte 0x38E3510C
	.4byte 0x38E5F2D2
	.4byte 0x38E89C1C
	.4byte 0x38EB4DFD
	.4byte 0x38EE0763
	.4byte 0x38F0C8D5
	.4byte 0x38F392DF
	.4byte 0x38F664F7
	.4byte 0x38F93F1C
	.4byte 0x38FC21D8
	.4byte 0x38FF0DB4
	.4byte 0x390100CF
	.4byte 0x39027F10
	.4byte 0x39040225
	.4byte 0x39058941
	.4byte 0x39071533
	.4byte 0x3908A5B4
	.4byte 0x390A3AC6
	.4byte 0x390BD468
	.4byte 0x390D72DF
	.4byte 0x390F162A
	.4byte 0x3910BE4B
	.4byte 0x39126B86
	.4byte 0x39141D95
	.4byte 0x3915D479
	.4byte 0x391790BC
	.4byte 0x39195218
	.4byte 0x391B188F
	.4byte 0x391CE463
	.4byte 0x391EB551
	.4byte 0x39208BE2
	.4byte 0x392267D2
	.4byte 0x39244920
	.4byte 0x39263011
	.4byte 0x39281CEA
	.4byte 0x392A0F21
	.4byte 0x392C0741
	.4byte 0x392E0548
	.4byte 0x393008F2
	.4byte 0x393212C8
	.4byte 0x393422CC
	.4byte 0x393638B7
	.4byte 0x393854CE
	.4byte 0x393A7757
	.4byte 0x393CA00D
	.4byte 0x393ECF33
	.4byte 0x394104CB
	.4byte 0x39434119
	.4byte 0x394583D8
	.4byte 0x3947CD4D
	.4byte 0x394A1D79
	.4byte 0x394C749E
	.4byte 0x394ED2BF
	.4byte 0x395137DA
	.4byte 0x3953A435
	.4byte 0x3956178A
	.4byte 0x3958921F
	.4byte 0x395B1438
	.4byte 0x395D9D91
	.4byte 0x39602E6D
	.4byte 0x3962C713
	.4byte 0x3965673C
	.4byte 0x39680F2F
	.4byte 0x396ABF2F
	.4byte 0x396D76F8
	.4byte 0x39703713
	.4byte 0x3972FEF7
	.4byte 0x3975CF72
	.4byte 0x3978A7FB
	.4byte 0x397B891A
	.4byte 0x397E72D1
	.4byte 0x3980B28F
	.4byte 0x39823002
	.4byte 0x3983B204
	.4byte 0x39853852
	.4byte 0x3986C353
	.4byte 0x398852C2
	.4byte 0x3989E6E3
	.4byte 0x398B7FB7
	.4byte 0x398D1D1B
	.4byte 0x398EBF76
	.4byte 0x399066A6
	.4byte 0x399212AB
	.4byte 0x3993C3A8
	.4byte 0x399579BE
	.4byte 0x399734CC
	.4byte 0x3998F515
	.4byte 0x399ABA78
	.4byte 0x399C8518
	.4byte 0x399E5515
	.4byte 0x39A02A71
	.4byte 0x39A2054E
	.4byte 0x39A3E589
	.4byte 0x39A5CB67
	.4byte 0x39A7B6E9
	.4byte 0x39A9A80D
	.4byte 0x39AB9EF7
	.4byte 0x39AD9BA7
	.4byte 0x39AF9E3E
	.4byte 0x39B1A6DF
	.4byte 0x39B3B58B
	.4byte 0x39B5CA41
	.4byte 0x39B7E523
	.4byte 0x39BA0632
	.4byte 0x39BC2DB2
	.4byte 0x39BE5B81
	.4byte 0x39C08FC1
	.4byte 0x39C2CA95
	.4byte 0x39C50BFD
	.4byte 0x39C7541B
	.4byte 0x39C9A310
	.4byte 0x39CBF8BC
	.4byte 0x39CE5563
	.4byte 0x39D0B904
	.4byte 0x39D323C3
	.4byte 0x39D5959E
	.4byte 0x39D80EDB
	.4byte 0x39DA8F36
	.4byte 0x39DD1737
	.4byte 0x39DFA699
	.4byte 0x39E23D80
	.4byte 0x39E4DC30
	.4byte 0x39E78286
	.4byte 0x39EA30E9
	.4byte 0x39ECE716
	.4byte 0x39EFA550
	.4byte 0x39F26BBA
	.4byte 0x39F53A54
	.4byte 0x39F81141
	.4byte 0x39FAF0A2
	.4byte 0x39FDD877
	.4byte 0x3A006483
	.4byte 0x3A01E116
	.4byte 0x3A036217
	.4byte 0x3A04E797
	.4byte 0x3A067185
	.4byte 0x3A080014
	.4byte 0x3A099334
	.4byte 0x3A0B2B06
	.4byte 0x3A0CC79C
	.4byte 0x3A0E68E4
	.4byte 0x3A100F12
	.4byte 0x3A11BA16
	.4byte 0x3A136A11
	.4byte 0x3A151F14
	.4byte 0x3A16D920
	.4byte 0x3A189845
	.4byte 0x3A1A5CA7
	.4byte 0x3A1C2633
	.4byte 0x3A1DF51E
	.4byte 0x3A1FC956
	.4byte 0x3A21A2FD
	.4byte 0x3A238226
	.4byte 0x3A2566CF
	.4byte 0x3A27511B
	.4byte 0x3A29411B
	.4byte 0x3A2B36E1
	.4byte 0x3A2D325B
	.4byte 0x3A2F33CE
	.4byte 0x3A313B29
	.4byte 0x3A33488F
	.4byte 0x3A355BFE
	.4byte 0x3A37759A
	.4byte 0x3A399574
	.4byte 0x3A3BBB8B
	.4byte 0x3A3DE814
	.4byte 0x3A401B0E
	.4byte 0x3A425479
	.4byte 0x3A449489
	.4byte 0x3A46DB4F
	.4byte 0x3A4928BA
	.4byte 0x3A4B7D0E
	.4byte 0x3A4DD84C
	.4byte 0x3A503A73
	.4byte 0x3A52A3B8
	.4byte 0x3A55142A
	.4byte 0x3A578BCB
	.4byte 0x3A5A0ABD
	.4byte 0x3A5C9110
	.4byte 0x3A5F1EE7
	.4byte 0x3A61B454
	.4byte 0x3A645168
	.4byte 0x3A66F633
	.4byte 0x3A69A2D8
	.4byte 0x3A6C5768
	.4byte 0x3A6F1406
	.4byte 0x3A71D8B1
	.4byte 0x3A74A59E
	.4byte 0x3A777ADC
	.4byte 0x3A7A587F
	.4byte 0x3A7D3E96
	.4byte 0x3A8016A2
	.4byte 0x3A819256
	.4byte 0x3A83126F
	.4byte 0x3A8496F5
	.4byte 0x3A862004
	.4byte 0x3A87AD9A
	.4byte 0x3A893FD2
	.4byte 0x3A8AD6AB
	.4byte 0x3A8C7236
	.4byte 0x3A8E128E
	.4byte 0x3A8FB7B2
	.4byte 0x3A9161BD
	.4byte 0x3A9310AD
	.4byte 0x3A94C4A6
	.4byte 0x3A967DA8
	.4byte 0x3A983BC3
	.4byte 0x3A99FF09
	.4byte 0x3A9BC782
	.4byte 0x3A9D9549
	.4byte 0x3A9F686E
	.4byte 0x3AA140FA
	.4byte 0x3AA31EFE
	.4byte 0x3AA50283
	.4byte 0x3AA6EBAB
	.4byte 0x3AA8DA7F
	.4byte 0x3AAACF07
	.4byte 0x3AACC95D
	.4byte 0x3AAEC98A
	.4byte 0x3AB0CFB0
	.4byte 0x3AB2DBCF
	.4byte 0x3AB4EE00
	.4byte 0x3AB70656
	.4byte 0x3AB924E9
	.4byte 0x3ABB49BA
	.4byte 0x3ABD74EB
	.4byte 0x3ABFA685
	.4byte 0x3AC1DEA1
	.4byte 0x3AC41D59
	.4byte 0x3AC662AE
	.4byte 0x3AC8AEC1
	.4byte 0x3ACB01AD
	.4byte 0x3ACD5B71
	.4byte 0x3ACFBC2F
	.4byte 0x3AD223FA
	.4byte 0x3AD492EA
	.4byte 0x3AD70911
	.4byte 0x3AD98680
	.4byte 0x3ADC0B51
	.4byte 0x3ADE979D
	.4byte 0x3AE12B6D
	.4byte 0x3AE3C6ED
	.4byte 0x3AE66A24
	.4byte 0x3AE91524
	.4byte 0x3AEBC818
	.4byte 0x3AEE8309
	.4byte 0x3AF1460F
	.4byte 0x3AF41146
	.4byte 0x3AF6E4C6
	.4byte 0x3AF9C0A9
	.4byte 0x3AFCA502
	.4byte 0x3AFF91F1
	.4byte 0x3B0143C4
	.4byte 0x3B02C2F1
	.4byte 0x3B044690
	.4byte 0x3B05CEAE
	.4byte 0x3B075B54
	.4byte 0x3B08EC92
	.4byte 0x3B0A8276
	.4byte 0x3B0C1D0D
	.4byte 0x3B0DBC67
	.4byte 0x3B0F608E
	.4byte 0x3B110993
	.4byte 0x3B12B781
	.4byte 0x3B146A6C
	.4byte 0x3B162263
	.4byte 0x3B17DF70
	.4byte 0x3B19A1A3
	.4byte 0x3B1B690E
	.4byte 0x3B1D35BD
	.4byte 0x3B1F07C3
	.4byte 0x3B20DF2F
	.4byte 0x3B22BC0F
	.4byte 0x3B249E74
	.4byte 0x3B268674
	.4byte 0x3B287417
	.4byte 0x3B2A6772
	.4byte 0x3B2C6093
	.4byte 0x3B2E5F8F
	.4byte 0x3B306477
	.4byte 0x3B326F58
	.4byte 0x3B34804B
	.4byte 0x3B36975B
	.4byte 0x3B38B49F
	.4byte 0x3B3AD825
	.4byte 0x3B3D0207
	.4byte 0x3B3F324E
	.4byte 0x3B416912
	.4byte 0x3B43A66A
	.4byte 0x3B45EA63
	.4byte 0x3B483512
	.4byte 0x3B4A868C
	.4byte 0x3B4CDEE7
	.4byte 0x3B4F3E39
	.4byte 0x3B51A48D
	.4byte 0x3B541204
	.4byte 0x3B5686A8
	.4byte 0x3B590294
	.4byte 0x3B5B85DE
	.4byte 0x3B5E10A0
	.4byte 0x3B60A2E5
	.4byte 0x3B633CCC
	.4byte 0x3B65DE67
	.4byte 0x3B6887CF
	.4byte 0x3B6B391A
	.4byte 0x3B6DF266
	.4byte 0x3B70B3BF
	.4byte 0x3B737D43
	.4byte 0x3B764F0D
	.4byte 0x3B792932
	.4byte 0x3B7C0BCC
	.4byte 0x3B7EF6F0
	.4byte 0x3B80F560
	.4byte 0x3B8273A7
	.4byte 0x3B83F65A
	.4byte 0x3B857D89
	.4byte 0x3B87093E
	.4byte 0x3B88998A
	.4byte 0x3B8A2E77
	.4byte 0x3B8BC815
	.4byte 0x3B8D6672
	.4byte 0x3B8F0999
	.4byte 0x3B90B19C
	.4byte 0x3B925E89
	.4byte 0x3B94106C
	.4byte 0x3B95C756
	.4byte 0x3B978354
	.4byte 0x3B994477
	.4byte 0x3B9B0ACF
	.4byte 0x3B9CD667
	.4byte 0x3B9EA753
	.4byte 0x3BA07DA0
	.4byte 0x3BA25960
	.4byte 0x3BA43AA1
	.4byte 0x3BA62176
	.4byte 0x3BA80DEF
	.4byte 0x3BAA0019
	.4byte 0x3BABF80B
	.4byte 0x3BADF5D0
	.4byte 0x3BAFF97E
	.4byte 0x3BB20323
	.4byte 0x3BB412D5
	.4byte 0x3BB628A2
	.4byte 0x3BB8449B
	.4byte 0x3BBA66D7
	.4byte 0x3BBC8F66
	.4byte 0x3BBEBE5B
	.4byte 0x3BC0F3CA
	.4byte 0x3BC32FC2
	.4byte 0x3BC5725D
	.4byte 0x3BC7BBA9
	.4byte 0x3BCA0BBD
	.4byte 0x3BCC62AB
	.4byte 0x3BCEC089
	.4byte 0x3BD1256C
	.4byte 0x3BD39166
	.4byte 0x3BD60491
	.4byte 0x3BD87EFB
	.4byte 0x3BDB00C0
	.4byte 0x3BDD89F4
	.4byte 0x3BE01AAA
	.4byte 0x3BE2B2FE
	.4byte 0x3BE55301
	.4byte 0x3BE7FACC
	.4byte 0x3BEAAA76
	.4byte 0x3BED6219
	.4byte 0x3BF021C6
	.4byte 0x3BF2E99B
	.4byte 0x3BF5B9AF
	.4byte 0x3BF8921A
	.4byte 0x3BFB72F3
	.4byte 0x3BFE5C54
	.4byte 0x3C00A72B
	.4byte 0x3C02248A
	.4byte 0x3C03A654
	.4byte 0x3C052C95
	.4byte 0x3C06B75B
	.4byte 0x3C0846B4
	.4byte 0x3C09DAAB
	.4byte 0x3C0B7351
	.4byte 0x3C0D10B3
	.4byte 0x3C0EB2DC
	.4byte 0x3C1059DF
	.4byte 0x3C1205C6
	.4byte 0x3C13B6A2
	.4byte 0x3C156C81
	.4byte 0x3C172773
	.4byte 0x3C18E786
	.4byte 0x3C1AACC9
	.4byte 0x3C1C774B
	.4byte 0x3C1E471D
	.4byte 0x3C201C4D
	.4byte 0x3C21F6EC
	.4byte 0x3C23D70A
	.4byte 0x3C25BCB8
	.4byte 0x3C27A805
	.4byte 0x3C299903
	.4byte 0x3C2B8FC1
	.4byte 0x3C2D8C52
	.4byte 0x3C2F8EC7
	.4byte 0x3C319730
	.4byte 0x3C33A5A1
	.4byte 0x3C35BA2A
	.4byte 0x3C37D4DE
	.4byte 0x3C39F5CE
	.4byte 0x3C3C1D0D
	.4byte 0x3C3E4AAF
	.4byte 0x3C407EC7
	.4byte 0x3C42B965
	.4byte 0x3C44FAA0
	.4byte 0x3C47428A
	.4byte 0x3C499137
	.4byte 0x3C4BE6BA
	.4byte 0x3C4E4329
	.4byte 0x3C50A697
	.4byte 0x3C53111B
	.4byte 0x3C5582C7
	.4byte 0x3C57FBB2
	.4byte 0x3C5A7BF1
	.4byte 0x3C5D039B
	.4byte 0x3C5F92C3
	.4byte 0x3C622984
	.4byte 0x3C64C7F0
	.4byte 0x3C676E1E
	.4byte 0x3C6A1C28
	.4byte 0x3C6CD224
	.4byte 0x3C6F9028
	.4byte 0x3C72564E
	.4byte 0x3C7524AC
	.4byte 0x3C77FB5C
	.4byte 0x3C7ADA77
	.4byte 0x3C7DC214
	.4byte 0x3C805927
	.4byte 0x3C81D59F
	.4byte 0x3C83567E
	.4byte 0x3C84DBD3
	.4byte 0x3C8665A9
	.4byte 0x3C87F40F
	.4byte 0x3C898712
	.4byte 0x3C8B1EC0
	.4byte 0x3C8CBB26
	.4byte 0x3C8E5C53
	.4byte 0x3C900254
	.4byte 0x3C91AD39
	.4byte 0x3C935D0F
	.4byte 0x3C9511E5
	.4byte 0x3C96CBC9
	.4byte 0x3C988ACC
	.4byte 0x3C9A4EFC
	.4byte 0x3C9C1868
	.4byte 0x3C9DE721
	.4byte 0x3C9FBB34
	.4byte 0x3CA194B4
	.4byte 0x3CA373AF
	.4byte 0x3CA55836
	.4byte 0x3CA74259
	.4byte 0x3CA9322A
	.4byte 0x3CAB27B7
	.4byte 0x3CAD2314
	.4byte 0x3CAF2451
	.4byte 0x3CB12B7F
	.4byte 0x3CB338B0
	.4byte 0x3CB54BF6
	.4byte 0x3CB76562
	.4byte 0x3CB98509
	.4byte 0x3CBBAAFA
	.4byte 0x3CBDD74A
	.4byte 0x3CC00A0B
	.4byte 0x3CC24350
	.4byte 0x3CC4832C
	.4byte 0x3CC6C9B4
	.4byte 0x3CC916FA
	.4byte 0x3CCB6B13
	.4byte 0x3CCDC613
	.4byte 0x3CD0280F
	.4byte 0x3CD2911B
	.4byte 0x3CD5014D
	.4byte 0x3CD778B8
	.4byte 0x3CD9F773
	.4byte 0x3CDC7D93
	.4byte 0x3CDF0B2F
	.4byte 0x3CE1A05D
	.4byte 0x3CE43D32
	.4byte 0x3CE6E1C6
	.4byte 0x3CE98E30
	.4byte 0x3CEC4286
	.4byte 0x3CEEFEE1
	.4byte 0x3CF1C358
	.4byte 0x3CF49003
	.4byte 0x3CF764FA
	.4byte 0x3CFA4257
	.4byte 0x3CFD2831
	.4byte 0x3D000B51
	.4byte 0x3D0186E3
	.4byte 0x3D0306D9
	.4byte 0x3D048B41
	.4byte 0x3D061429
	.4byte 0x3D07A19D
	.4byte 0x3D0933AC
	.4byte 0x3D0ACA63
	.4byte 0x3D0C65CF
	.4byte 0x3D0E05FE
	.4byte 0x3D0FAB00
	.4byte 0x3D1154E1
	.4byte 0x3D1303B1
	.4byte 0x3D14B77E
	.4byte 0x3D167057
	.4byte 0x3D182E4B
	.4byte 0x3D19F168
	.4byte 0x3D1BB9BF
	.4byte 0x3D1D875F
	.4byte 0x3D1F5A57
	.4byte 0x3D2132B8
	.4byte 0x3D231090
	.4byte 0x3D24F3F1
	.4byte 0x3D26DCEB
	.4byte 0x3D28CB8F
	.4byte 0x3D2ABFEC
	.4byte 0x3D2CBA15
	.4byte 0x3D2EBA1B
	.4byte 0x3D30C00E
	.4byte 0x3D32CC01
	.4byte 0x3D34DE05
	.4byte 0x3D36F62B
	.4byte 0x3D391488
	.4byte 0x3D3B392C
	.4byte 0x3D3D642A
	.4byte 0x3D3F9596
	.4byte 0x3D41CD81
	.4byte 0x3D440C01
	.4byte 0x3D465127
	.4byte 0x3D489D08
	.4byte 0x3D4AEFB8
	.4byte 0x3D4D494A
	.4byte 0x3D4FA9D4
	.4byte 0x3D52116A
	.4byte 0x3D548021
	.4byte 0x3D56F60D
	.4byte 0x3D597345
	.4byte 0x3D5BF7DE
	.4byte 0x3D5E83ED
	.4byte 0x3D611789
	.4byte 0x3D63B2C9
	.4byte 0x3D6655C3
	.4byte 0x3D69008E
	.4byte 0x3D6BB340
	.4byte 0x3D6E6DF2
	.4byte 0x3D7130BC
	.4byte 0x3D73FBB4
	.4byte 0x3D76CEF4
	.4byte 0x3D79AA94
	.4byte 0x3D7C8EAC
	.4byte 0x3D7F7B57
	.4byte 0x3D813856
	.4byte 0x3D82B764
	.4byte 0x3D843AE0
	.4byte 0x3D85C2DA
	.4byte 0x3D874F5D
	.4byte 0x3D88E078
	.4byte 0x3D8A7638
	.4byte 0x3D8C10AB
	.4byte 0x3D8DAFDE
	.4byte 0x3D8F53E0
	.4byte 0x3D90FCBF
	.4byte 0x3D92AA8A
	.4byte 0x3D945D4F
	.4byte 0x3D96151C
	.4byte 0x3D97D202
	.4byte 0x3D99940E
	.4byte 0x3D9B5B50
	.4byte 0x3D9D27D8
	.4byte 0x3D9EF9B4
	.4byte 0x3DA0D0F6
	.4byte 0x3DA2ADAD
	.4byte 0x3DA48FE9
	.4byte 0x3DA677BB
	.4byte 0x3DA86532
	.4byte 0x3DAA5860
	.4byte 0x3DAC5156
	.4byte 0x3DAE5025
	.4byte 0x3DB054DE
	.4byte 0x3DB25F93
	.4byte 0x3DB47056
	.4byte 0x3DB68738
	.4byte 0x3DB8A44B
	.4byte 0x3DBAC7A2
	.4byte 0x3DBCF150
	.4byte 0x3DBF2167
	.4byte 0x3DC157FB
	.4byte 0x3DC3951E
	.4byte 0x3DC5D8E3
	.4byte 0x3DC82360
	.4byte 0x3DCA74A7
	.4byte 0x3DCCCCCD
	.4byte 0x3DCF2BE6
	.4byte 0x3DD19206
	.4byte 0x3DD3FF43
	.4byte 0x3DD673B1
	.4byte 0x3DD8EF67
	.4byte 0x3DDB7279
	.4byte 0x3DDDFCFD
	.4byte 0x3DE08F09
	.4byte 0x3DE328B4
	.4byte 0x3DE5CA15
	.4byte 0x3DE87341
	.4byte 0x3DEB2451
	.4byte 0x3DEDDD5B
	.4byte 0x3DF09E78
	.4byte 0x3DF367BF
	.4byte 0x3DF63948
	.4byte 0x3DF9132C
	.4byte 0x3DFBF584
	.4byte 0x3DFEE068
	.4byte 0x3E00E9F9
	.4byte 0x3E02681E
	.4byte 0x3E03EAB0
	.4byte 0x3E0571BC
	.4byte 0x3E06FD4F
	.4byte 0x3E088D77
	.4byte 0x3E0A2241
	.4byte 0x3E0BBBBA
	.4byte 0x3E0D59F2
	.4byte 0x3E0EFCF5
	.4byte 0x3E10A4D3
	.4byte 0x3E125199
	.4byte 0x3E140356
	.4byte 0x3E15BA19
	.4byte 0x3E1775F0
	.4byte 0x3E1936EC
	.4byte 0x3E1AFD1A
	.4byte 0x3E1CC88A
	.4byte 0x3E1E994C
	.4byte 0x3E206F70
	.4byte 0x3E224B06
	.4byte 0x3E242C1E
	.4byte 0x3E2612C7
	.4byte 0x3E27FF14
	.4byte 0x3E29F113
	.4byte 0x3E2BE8D7
	.4byte 0x3E2DE670
	.4byte 0x3E2FE9F0
	.4byte 0x3E31F368
	.4byte 0x3E3402EA
	.4byte 0x3E361887
	.4byte 0x3E383452
	.4byte 0x3E3A565E
	.4byte 0x3E3C7EBC
	.4byte 0x3E3EAD7F
	.4byte 0x3E40E2BB
	.4byte 0x3E431E82
	.4byte 0x3E4560E9
	.4byte 0x3E47AA02
	.4byte 0x3E49F9E1
	.4byte 0x3E4C509B
	.4byte 0x3E4EAE43
	.4byte 0x3E5112EF
	.4byte 0x3E537EB4
	.4byte 0x3E55F1A5
	.4byte 0x3E586BD9
	.4byte 0x3E5AED65
	.4byte 0x3E5D765E
	.4byte 0x3E6006DC
	.4byte 0x3E629EF3
	.4byte 0x3E653EBB
	.4byte 0x3E67E64B
	.4byte 0x3E6A95B9
	.4byte 0x3E6D4D1C
	.4byte 0x3E700C8D
	.4byte 0x3E72D424
	.4byte 0x3E75A3F7
	.4byte 0x3E787C21
	.4byte 0x3E7B5CB9
	.4byte 0x3E7E45D8
	.4byte 0x3E809BCC
	.4byte 0x3E82190A
	.4byte 0x3E839AB1
	.4byte 0x3E8520D0
	.4byte 0x3E86AB73
	.4byte 0x3E883AA8
	.4byte 0x3E89CE7C
	.4byte 0x3E8B66FE
	.4byte 0x3E8D043A
	.4byte 0x3E8EA63F
	.4byte 0x3E904D1C
	.4byte 0x3E91F8DE
	.4byte 0x3E93A994
	.4byte 0x3E955F4D
	.4byte 0x3E971A17
	.4byte 0x3E98DA02
	.4byte 0x3E9A9F1C
	.4byte 0x3E9C6976
	.4byte 0x3E9E391F
	.4byte 0x3EA00E26
	.4byte 0x3EA1E89B
	.4byte 0x3EA3C88F
	.4byte 0x3EA5AE11
	.4byte 0x3EA79933
	.4byte 0x3EA98A05
	.4byte 0x3EAB8097
	.4byte 0x3EAD7CFB
	.4byte 0x3EAF7F42
	.4byte 0x3EB1877E
	.4byte 0x3EB395C0
	.4byte 0x3EB5AA1A
	.4byte 0x3EB7C49E
	.4byte 0x3EB9E55E
	.4byte 0x3EBC0C6D
	.4byte 0x3EBE39DE
	.4byte 0x3EC06DC3
	.4byte 0x3EC2A82F
	.4byte 0x3EC4E937
	.4byte 0x3EC730ED
	.4byte 0x3EC97F65
	.4byte 0x3ECBD4B4
	.4byte 0x3ECE30ED
	.4byte 0x3ED09426
	.4byte 0x3ED2FE72
	.4byte 0x3ED56FE7
	.4byte 0x3ED7E89B
	.4byte 0x3EDA68A1
	.4byte 0x3EDCF012
	.4byte 0x3EDF7F01
	.4byte 0x3EE21586
	.4byte 0x3EE4B3B6
	.4byte 0x3EE759AA
	.4byte 0x3EEA0777
	.4byte 0x3EECBD35
	.4byte 0x3EEF7AFB
	.4byte 0x3EF240E2
	.4byte 0x3EF50F01
	.4byte 0x3EF7E571
	.4byte 0x3EFAC44A
	.4byte 0x3EFDABA6
	.4byte 0x3F004DCE
	.4byte 0x3F01CA25
	.4byte 0x3F034AE2
	.4byte 0x3F04D014
	.4byte 0x3F0659C8
	.4byte 0x3F07E80B
	.4byte 0x3F097AEA
	.4byte 0x3F0B1274
	.4byte 0x3F0CAEB6
	.4byte 0x3F0E4FBE
	.4byte 0x3F0FF59A
	.4byte 0x3F11A058
	.4byte 0x3F135008
	.4byte 0x3F1504B7
	.4byte 0x3F16BE75
	.4byte 0x3F187D50
	.4byte 0x3F1A4158
	.4byte 0x3F1C0A9C
	.4byte 0x3F1DD92C
	.4byte 0x3F1FAD16
	.4byte 0x3F21866C
	.4byte 0x3F23653C
	.4byte 0x3F254998
	.4byte 0x3F273390
	.4byte 0x3F292335
	.4byte 0x3F2B1896
	.4byte 0x3F2D13C6
	.4byte 0x3F2F14D5
	.4byte 0x3F311BD6
	.4byte 0x3F3328D8
	.4byte 0x3F353BEF
	.4byte 0x3F37552D
	.4byte 0x3F3974A3
	.4byte 0x3F3B9A63
	.4byte 0x3F3DC682
	.4byte 0x3F3FF911
	.4byte 0x3F423224
	.4byte 0x3F4471CD
	.4byte 0x3F46B822
	.4byte 0x3F490534
	.4byte 0x3F4B5918
	.4byte 0x3F4DB3E3
	.4byte 0x3F5015A9
	.4byte 0x3F527E7F
	.4byte 0x3F54EE78
	.4byte 0x3F5765AC
	.4byte 0x3F59E42F
	.4byte 0x3F5C6A16
	.4byte 0x3F5EF778
	.4byte 0x3F618C6B
	.4byte 0x3F642905
	.4byte 0x3F66CD5E
	.4byte 0x3F69798B
	.4byte 0x3F6C2DA4
	.4byte 0x3F6EE9C1
	.4byte 0x3F71ADF9
	.4byte 0x3F747A65
	.4byte 0x3F774F1C
	.4byte 0x3F7A2C38
	.4byte 0x3F7D11D1
	.4byte 0x3F800000
	.4byte 0x3F817B70
	.4byte 0x3F82FB44
	.4byte 0x3F847F8A
	.4byte 0x3F86084F
	.4byte 0x3F8795A0
	.4byte 0x3F89278B
	.4byte 0x3F8ABE1E
	.4byte 0x3F8C5966
	.4byte 0x3F8DF971
	.4byte 0x3F8F9E4D
	.4byte 0x3F914809
	.4byte 0x3F92F6B3
	.4byte 0x3F94AA59
	.4byte 0x3F96630B
	.4byte 0x3F9820D7
	.4byte 0x3F99E3CD
	.4byte 0x3F9BABFC
	.4byte 0x3F9D7972
	.4byte 0x3F9F4C41
	.4byte 0x3FA12478
	.4byte 0x3FA30226
	.4byte 0x3FA4E55C
	.4byte 0x3FA6CE2B
	.4byte 0x3FA8BCA3
	.4byte 0x3FAAB0D5
	.4byte 0x3FACAAD1
	.4byte 0x3FAEAAA9
	.4byte 0x3FB0B06E
	.4byte 0x3FB2BC33
	.4byte 0x3FB4CE08
	.4byte 0x3FB6E5FF
	.4byte 0x3FB9042C
	.4byte 0x3FBB289F
	.4byte 0x3FBD536C
	.4byte 0x3FBF84A6
	.4byte 0x3FC1BC60
	.4byte 0x3FC3FAAD
	.4byte 0x3FC63F9F
	.4byte 0x3FC88B4D
	.4byte 0x3FCADDC8
	.4byte 0x3FCD3725
	.4byte 0x3FCF9779
	.4byte 0x3FD1FED8
	.4byte 0x3FD46D58
	.4byte 0x3FD6E30D
	.4byte 0x3FD9600C
	.4byte 0x3FDBE46C
	.4byte 0x3FDE7042
	.4byte 0x3FE103A4
	.4byte 0x3FE39EA9
	.4byte 0x3FE64167
	.4byte 0x3FE8EBF5
	.4byte 0x3FEB9E6B
	.4byte 0x3FEE58DF
	.4byte 0x3FF11B6A
	.4byte 0x3FF3E623
	.4byte 0x3FF6B923
	.4byte 0x3FF99482
	.4byte 0x3FFC7859
	.4byte 0x3FFF64C1
.endobj Decibel2RatioTable__Q44nw4r3snd6detail4Util

# .rodata:0x1344 | 0x8161F9EC | size: 0x404
# nw4r::snd::detail::Util::Pan2RatioTable
.obj Pan2RatioTable__Q44nw4r3snd6detail4Util, global
	.4byte 0x3F800000
	.4byte 0x3F7F7FE0
	.4byte 0x3F7EFF80
	.4byte 0x3F7E7EDE
	.4byte 0x3F7DFDFC
	.4byte 0x3F7D7CD8
	.4byte 0x3F7CFB72
	.4byte 0x3F7C79CA
	.4byte 0x3F7BF7DF
	.4byte 0x3F7B75B1
	.4byte 0x3F7AF340
	.4byte 0x3F7A708B
	.4byte 0x3F79ED91
	.4byte 0x3F796A52
	.4byte 0x3F78E6CE
	.4byte 0x3F786305
	.4byte 0x3F77DEF6
	.4byte 0x3F775AA0
	.4byte 0x3F76D603
	.4byte 0x3F76511E
	.4byte 0x3F75CBF2
	.4byte 0x3F75467E
	.4byte 0x3F74C0C0
	.4byte 0x3F743ABA
	.4byte 0x3F73B46A
	.4byte 0x3F732DCF
	.4byte 0x3F72A6EA
	.4byte 0x3F721FBA
	.4byte 0x3F71983E
	.4byte 0x3F711076
	.4byte 0x3F708862
	.4byte 0x3F700000
	.4byte 0x3F6F7751
	.4byte 0x3F6EEE53
	.4byte 0x3F6E6507
	.4byte 0x3F6DDB6B
	.4byte 0x3F6D517F
	.4byte 0x3F6CC744
	.4byte 0x3F6C3CB7
	.4byte 0x3F6BB1D9
	.4byte 0x3F6B26A9
	.4byte 0x3F6A9B26
	.4byte 0x3F6A0F50
	.4byte 0x3F698327
	.4byte 0x3F68F6A9
	.4byte 0x3F6869D6
	.4byte 0x3F67DCAE
	.4byte 0x3F674F2F
	.4byte 0x3F66C15A
	.4byte 0x3F66332E
	.4byte 0x3F65A4A9
	.4byte 0x3F6515CC
	.4byte 0x3F648695
	.4byte 0x3F63F704
	.4byte 0x3F636719
	.4byte 0x3F62D6D3
	.4byte 0x3F624630
	.4byte 0x3F61B531
	.4byte 0x3F6123D4
	.4byte 0x3F609219
	.4byte 0x3F600000
	.4byte 0x3F5F6D87
	.4byte 0x3F5EDAAE
	.4byte 0x3F5E4773
	.4byte 0x3F5DB3D7
	.4byte 0x3F5D1FD9
	.4byte 0x3F5C8B77
	.4byte 0x3F5BF6B1
	.4byte 0x3F5B6186
	.4byte 0x3F5ACBF5
	.4byte 0x3F5A35FE
	.4byte 0x3F599FA0
	.4byte 0x3F5908D9
	.4byte 0x3F5871A9
	.4byte 0x3F57DA10
	.4byte 0x3F57420B
	.4byte 0x3F56A99B
	.4byte 0x3F5610BF
	.4byte 0x3F557775
	.4byte 0x3F54DDBC
	.4byte 0x3F544395
	.4byte 0x3F53A8FD
	.4byte 0x3F530DF3
	.4byte 0x3F527278
	.4byte 0x3F51D689
	.4byte 0x3F513A26
	.4byte 0x3F509D4E
	.4byte 0x3F500000
	.4byte 0x3F4F623A
	.4byte 0x3F4EC3FC
	.4byte 0x3F4E2545
	.4byte 0x3F4D8613
	.4byte 0x3F4CE665
	.4byte 0x3F4C463A
	.4byte 0x3F4BA592
	.4byte 0x3F4B046A
	.4byte 0x3F4A62C2
	.4byte 0x3F49C098
	.4byte 0x3F491DEC
	.4byte 0x3F487ABC
	.4byte 0x3F47D706
	.4byte 0x3F4732CA
	.4byte 0x3F468E06
	.4byte 0x3F45E8B9
	.4byte 0x3F4542E1
	.4byte 0x3F449C7E
	.4byte 0x3F43F58D
	.4byte 0x3F434E0D
	.4byte 0x3F42A5FE
	.4byte 0x3F41FD5C
	.4byte 0x3F415428
	.4byte 0x3F40AA5F
	.4byte 0x3F400000
	.4byte 0x3F3F5509
	.4byte 0x3F3EA979
	.4byte 0x3F3DFD4E
	.4byte 0x3F3D5087
	.4byte 0x3F3CA321
	.4byte 0x3F3BF51B
	.4byte 0x3F3B4673
	.4byte 0x3F3A9728
	.4byte 0x3F39E738
	.4byte 0x3F3936A1
	.4byte 0x3F388560
	.4byte 0x3F37D375
	.4byte 0x3F3720DD
	.4byte 0x3F366D96
	.4byte 0x3F35B99E
	.4byte 0x3F3504F3
	.4byte 0x3F344F93
	.4byte 0x3F33997C
	.4byte 0x3F32E2AC
	.4byte 0x3F322B20
	.4byte 0x3F3172D6
	.4byte 0x3F30B9CC
	.4byte 0x3F300000
	.4byte 0x3F2F456F
	.4byte 0x3F2E8A16
	.4byte 0x3F2DCDF3
	.4byte 0x3F2D1104
	.4byte 0x3F2C5345
	.4byte 0x3F2B94B5
	.4byte 0x3F2AD550
	.4byte 0x3F2A1514
	.4byte 0x3F2953FD
	.4byte 0x3F28920A
	.4byte 0x3F27CF36
	.4byte 0x3F270B7F
	.4byte 0x3F2646E1
	.4byte 0x3F25815A
	.4byte 0x3F24BAE7
	.4byte 0x3F23F383
	.4byte 0x3F232B2B
	.4byte 0x3F2261DC
	.4byte 0x3F219792
	.4byte 0x3F20CC4A
	.4byte 0x3F200000
	.4byte 0x3F1F32AF
	.4byte 0x3F1E6455
	.4byte 0x3F1D94EC
	.4byte 0x3F1CC471
	.4byte 0x3F1BF2DF
	.4byte 0x3F1B2032
	.4byte 0x3F1A4C65
	.4byte 0x3F197774
	.4byte 0x3F18A15A
	.4byte 0x3F17CA11
	.4byte 0x3F16F196
	.4byte 0x3F1617E3
	.4byte 0x3F153CF2
	.4byte 0x3F1460BE
	.4byte 0x3F138341
	.4byte 0x3F12A476
	.4byte 0x3F11C456
	.4byte 0x3F10E2DC
	.4byte 0x3F100000
	.4byte 0x3F0F1BBD
	.4byte 0x3F0E360B
	.4byte 0x3F0D4EE4
	.4byte 0x3F0C6641
	.4byte 0x3F0B7C1A
	.4byte 0x3F0A9067
	.4byte 0x3F09A320
	.4byte 0x3F08B43D
	.4byte 0x3F07C3B6
	.4byte 0x3F06D182
	.4byte 0x3F05DD98
	.4byte 0x3F04E7EE
	.4byte 0x3F03F07B
	.4byte 0x3F02F734
	.4byte 0x3F01FC10
	.4byte 0x3F00FF02
	.4byte 0x3F000000
	.4byte 0x3EFDFDFC
	.4byte 0x3EFBF7DF
	.4byte 0x3EF9ED91
	.4byte 0x3EF7DEF6
	.4byte 0x3EF5CBF2
	.4byte 0x3EF3B46A
	.4byte 0x3EF1983E
	.4byte 0x3EEF7751
	.4byte 0x3EED517F
	.4byte 0x3EEB26A9
	.4byte 0x3EE8F6A9
	.4byte 0x3EE6C15A
	.4byte 0x3EE48695
	.4byte 0x3EE24630
	.4byte 0x3EE00000
	.4byte 0x3EDDB3D7
	.4byte 0x3EDB6186
	.4byte 0x3ED908D9
	.4byte 0x3ED6A99B
	.4byte 0x3ED44395
	.4byte 0x3ED1D689
	.4byte 0x3ECF623A
	.4byte 0x3ECCE665
	.4byte 0x3ECA62C2
	.4byte 0x3EC7D706
	.4byte 0x3EC542E1
	.4byte 0x3EC2A5FE
	.4byte 0x3EC00000
	.4byte 0x3EBD5087
	.4byte 0x3EBA9728
	.4byte 0x3EB7D375
	.4byte 0x3EB504F3
	.4byte 0x3EB22B20
	.4byte 0x3EAF456F
	.4byte 0x3EAC5345
	.4byte 0x3EA953FD
	.4byte 0x3EA646E1
	.4byte 0x3EA32B2B
	.4byte 0x3EA00000
	.4byte 0x3E9CC471
	.4byte 0x3E997774
	.4byte 0x3E9617E3
	.4byte 0x3E92A476
	.4byte 0x3E8F1BBD
	.4byte 0x3E8B7C1A
	.4byte 0x3E87C3B6
	.4byte 0x3E83F07B
	.4byte 0x3E800000
	.4byte 0x3E77DEF6
	.4byte 0x3E6F7751
	.4byte 0x3E66C15A
	.4byte 0x3E5DB3D7
	.4byte 0x3E544395
	.4byte 0x3E4A62C2
	.4byte 0x3E400000
	.4byte 0x3E3504F3
	.4byte 0x3E2953FD
	.4byte 0x3E1CC471
	.4byte 0x3E0F1BBD
	.4byte 0x3E000000
	.4byte 0x3DDDB3D7
	.4byte 0x3DB504F3
	.4byte 0x3D800000
	.4byte 0x00000000
.endobj Pan2RatioTable__Q44nw4r3snd6detail4Util

# 0x816953A8..0x816953F0 | size: 0x48
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816953A8 | size: 0x4
.obj lbl_816953A8, global
	.float 1
.endobj lbl_816953A8

# .sdata2:0x4 | 0x816953AC | size: 0x4
.obj lbl_816953AC, global
	.float 2
.endobj lbl_816953AC

# .sdata2:0x8 | 0x816953B0 | size: 0x4
.obj lbl_816953B0, global
	.float 0.5
.endobj lbl_816953B0

# .sdata2:0xC | 0x816953B4 | size: 0x4
.obj lbl_816953B4, global
	.float 6
.endobj lbl_816953B4

# .sdata2:0x10 | 0x816953B8 | size: 0x4
.obj lbl_816953B8, global
	.float -90.4
.endobj lbl_816953B8

# .sdata2:0x14 | 0x816953BC | size: 0x4
.obj lbl_816953BC, global
	.float 10
.endobj lbl_816953BC

# .sdata2:0x18 | 0x816953C0 | size: 0x4
.obj lbl_816953C0, global
	.float -1
.endobj lbl_816953C0

# .sdata2:0x1C | 0x816953C4 | size: 0x4
.obj lbl_816953C4, global
	.float 256
.endobj lbl_816953C4

# .sdata2:0x20 | 0x816953C8 | size: 0x4
.obj lbl_816953C8, global
	.float 0
.endobj lbl_816953C8

# .sdata2:0x24 | 0x816953CC | size: 0x4
.obj gap_09_816953CC_sdata2, global
.hidden gap_09_816953CC_sdata2
	.4byte 0x00000000
.endobj gap_09_816953CC_sdata2

# .sdata2:0x28 | 0x816953D0 | size: 0x8
.obj lbl_816953D0, global
	.double 32000
.endobj lbl_816953D0

# .sdata2:0x30 | 0x816953D8 | size: 0x8
.obj lbl_816953D8, global
	.double 2
.endobj lbl_816953D8

# .sdata2:0x38 | 0x816953E0 | size: 0x8
.obj lbl_816953E0, global
	.double 10
.endobj lbl_816953E0

# .sdata2:0x40 | 0x816953E8 | size: 0x8
.obj lbl_816953E8, global
	.double 1
.endobj lbl_816953E8

# 0x81697DA8..0x81697DB0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697DA8 | size: 0x4
.obj u$1793, local
	.4byte 0x12345678
.endobj u$1793

# .sdata:0x4 | 0x81697DAC | size: 0x4
.obj gap_11_81697DAC_sdata, global
.hidden gap_11_81697DAC_sdata
	.4byte 0x00000000
.endobj gap_11_81697DAC_sdata
