.include "macros.inc"
.file "snd_BankFile.cpp"

# 0x814FC11C..0x814FC524 | size: 0x408
.text
.balign 4

# .text:0x0 | 0x814FC11C | size: 0x7C
# nw4r::snd::detail::BankFileReader::BankFileReader(const void*)
.fn __ct__Q44nw4r3snd6detail14BankFileReaderFPCv, global
/* 814FC11C | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 814FC120 | 38 C0 00 00 */	li r6, 0x0
/* 814FC124 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 814FC128 | 3C 05 AD BE */	subis r0, r5, 0x5242
/* 814FC12C | 28 00 4E 4B */	cmplwi r0, 0x4e4b
/* 814FC130 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 814FC134 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 814FC138 | 41 82 00 0C */	beq .L_814FC144
/* 814FC13C | 38 00 00 00 */	li r0, 0x0
/* 814FC140 | 48 00 00 30 */	b .L_814FC170
.L_814FC144:
/* 814FC144 | A0 C4 00 06 */	lhz r6, 0x6(r4)
/* 814FC148 | 28 06 01 00 */	cmplwi r6, 0x100
/* 814FC14C | 40 80 00 0C */	bge .L_814FC158
/* 814FC150 | 38 00 00 00 */	li r0, 0x0
/* 814FC154 | 48 00 00 1C */	b .L_814FC170
.L_814FC158:
/* 814FC158 | 20 06 01 01 */	subfic r0, r6, 0x101
/* 814FC15C | 38 A0 01 01 */	li r5, 0x101
/* 814FC160 | 7C A5 33 38 */	orc r5, r5, r6
/* 814FC164 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814FC168 | 7C 00 28 50 */	subf r0, r0, r5
/* 814FC16C | 54 00 0F FE */	srwi r0, r0, 31
.L_814FC170:
/* 814FC170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FC174 | 4D 82 00 20 */	beqlr
/* 814FC178 | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 814FC17C | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 814FC180 | 7C A5 22 14 */	add r5, r5, r4
/* 814FC184 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814FC188 | 7C 00 22 14 */	add r0, r0, r4
/* 814FC18C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 814FC190 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FC194 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail14BankFileReaderFPCv

# .text:0x7C | 0x814FC198 | size: 0x1AC
# nw4r::snd::detail::BankFileReader::ReadInstInfo(nw4r::snd::detail::InstInfo*, int, int, int) const
.fn ReadInstInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8InstInfoiii, global
/* 814FC198 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FC19C | 7C 08 02 A6 */	mflr r0
/* 814FC1A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FC1A4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FC1A8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FC1AC | 7C 9F 23 78 */	mr r31, r4
/* 814FC1B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FC1B4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FC1B8 | 7C FE 3B 78 */	mr r30, r7
/* 814FC1BC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FC1C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814FC1C4 | 40 82 00 0C */	bne .L_814FC1D0
/* 814FC1C8 | 38 60 00 00 */	li r3, 0x0
/* 814FC1CC | 48 00 01 5C */	b .L_814FC328
.L_814FC1D0:
/* 814FC1D0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FC1D4 | 41 80 00 14 */	blt .L_814FC1E8
/* 814FC1D8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814FC1DC | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814FC1E0 | 7C 05 00 00 */	cmpw r5, r0
/* 814FC1E4 | 41 80 00 0C */	blt .L_814FC1F0
.L_814FC1E8:
/* 814FC1E8 | 38 60 00 00 */	li r3, 0x0
/* 814FC1EC | 48 00 01 3C */	b .L_814FC328
.L_814FC1F0:
/* 814FC1F0 | 54 A0 18 38 */	slwi r0, r5, 3
/* 814FC1F4 | 7C 84 02 14 */	add r4, r4, r0
/* 814FC1F8 | 38 84 00 0C */	addi r4, r4, 0xc
/* 814FC1FC | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814FC200 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814FC204 | 40 82 00 0C */	bne .L_814FC210
/* 814FC208 | 38 60 00 00 */	li r3, 0x0
/* 814FC20C | 48 00 01 1C */	b .L_814FC328
.L_814FC210:
/* 814FC210 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FC214 | 41 82 00 20 */	beq .L_814FC234
/* 814FC218 | 7C C5 33 78 */	mr r5, r6
/* 814FC21C | 48 00 01 29 */	bl GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef
/* 814FC220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC224 | 7C 64 1B 78 */	mr r4, r3
/* 814FC228 | 40 82 00 0C */	bne .L_814FC234
/* 814FC22C | 38 60 00 00 */	li r3, 0x0
/* 814FC230 | 48 00 00 F8 */	b .L_814FC328
.L_814FC234:
/* 814FC234 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814FC238 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814FC23C | 40 82 00 0C */	bne .L_814FC248
/* 814FC240 | 38 60 00 00 */	li r3, 0x0
/* 814FC244 | 48 00 00 E4 */	b .L_814FC328
.L_814FC248:
/* 814FC248 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FC24C | 41 82 00 24 */	beq .L_814FC270
/* 814FC250 | 7F A3 EB 78 */	mr r3, r29
/* 814FC254 | 7F C5 F3 78 */	mr r5, r30
/* 814FC258 | 48 00 00 ED */	bl GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef
/* 814FC25C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC260 | 7C 64 1B 78 */	mr r4, r3
/* 814FC264 | 40 82 00 0C */	bne .L_814FC270
/* 814FC268 | 38 60 00 00 */	li r3, 0x0
/* 814FC26C | 48 00 00 BC */	b .L_814FC328
.L_814FC270:
/* 814FC270 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814FC274 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FC278 | 41 82 00 0C */	beq .L_814FC284
/* 814FC27C | 38 60 00 00 */	li r3, 0x0
/* 814FC280 | 48 00 00 A8 */	b .L_814FC328
.L_814FC284:
/* 814FC284 | 80 BD 00 04 */	lwz r5, 0x4(r29)
/* 814FC288 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814FC28C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814FC290 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 814FC294 | 48 01 32 39 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 814FC298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC29C | 40 82 00 0C */	bne .L_814FC2A8
/* 814FC2A0 | 38 60 00 00 */	li r3, 0x0
/* 814FC2A4 | 48 00 00 84 */	b .L_814FC328
.L_814FC2A8:
/* 814FC2A8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FC2AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FC2B0 | 40 80 00 0C */	bge .L_814FC2BC
/* 814FC2B4 | 38 60 00 00 */	li r3, 0x0
/* 814FC2B8 | 48 00 00 70 */	b .L_814FC328
.L_814FC2BC:
/* 814FC2BC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814FC2C0 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814FC2C4 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 814FC2C8 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 814FC2CC | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 814FC2D0 | 98 1F 00 05 */	stb r0, 0x5(r31)
/* 814FC2D4 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 814FC2D8 | 98 1F 00 06 */	stb r0, 0x6(r31)
/* 814FC2DC | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 814FC2E0 | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 814FC2E4 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 814FC2E8 | 98 1F 00 08 */	stb r0, 0x8(r31)
/* 814FC2EC | 88 03 00 0E */	lbz r0, 0xe(r3)
/* 814FC2F0 | 98 1F 00 09 */	stb r0, 0x9(r31)
/* 814FC2F4 | A0 04 00 06 */	lhz r0, 0x6(r4)
/* 814FC2F8 | 28 00 01 01 */	cmplwi r0, 0x101
/* 814FC2FC | 40 82 00 18 */	bne .L_814FC314
/* 814FC300 | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 814FC304 | 98 1F 00 0A */	stb r0, 0xa(r31)
/* 814FC308 | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 814FC30C | D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 814FC310 | 48 00 00 14 */	b .L_814FC324
.L_814FC314:
/* 814FC314 | C0 02 8E 48 */	lfs f0, lbl_81695248@sda21(r0)
/* 814FC318 | 38 00 00 7F */	li r0, 0x7f
/* 814FC31C | 98 1F 00 0A */	stb r0, 0xa(r31)
/* 814FC320 | D0 1F 00 0C */	stfs f0, 0xc(r31)
.L_814FC324:
/* 814FC324 | 38 60 00 01 */	li r3, 0x1
.L_814FC328:
/* 814FC328 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FC32C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FC330 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FC334 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FC338 | 7C 08 03 A6 */	mtlr r0
/* 814FC33C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FC340 | 4E 80 00 20 */	blr
.endfn ReadInstInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8InstInfoiii

# .text:0x228 | 0x814FC344 | size: 0x128
.fn GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef, global
/* 814FC344 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FC348 | 7C 08 02 A6 */	mflr r0
/* 814FC34C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FC350 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814FC354 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FC358 | 7C BF 2B 78 */	mr r31, r5
/* 814FC35C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814FC360 | 38 A0 00 00 */	li r5, 0x0
/* 814FC364 | 41 82 00 2C */	beq .L_814FC390
/* 814FC368 | 40 80 00 14 */	bge .L_814FC37C
/* 814FC36C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FC370 | 41 82 00 E4 */	beq .L_814FC454
/* 814FC374 | 40 80 00 14 */	bge .L_814FC388
/* 814FC378 | 48 00 00 DC */	b .L_814FC454
.L_814FC37C:
/* 814FC37C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814FC380 | 40 80 00 D4 */	bge .L_814FC454
/* 814FC384 | 48 00 00 7C */	b .L_814FC400
.L_814FC388:
/* 814FC388 | 7C 85 23 78 */	mr r5, r4
/* 814FC38C | 48 00 00 C8 */	b .L_814FC454
.L_814FC390:
/* 814FC390 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814FC394 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814FC398 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814FC39C | 38 A5 00 08 */	addi r5, r5, 0x8
/* 814FC3A0 | 48 01 31 2D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 814FC3A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC3A8 | 40 82 00 0C */	bne .L_814FC3B4
/* 814FC3AC | 38 60 00 00 */	li r3, 0x0
/* 814FC3B0 | 48 00 00 A8 */	b .L_814FC458
.L_814FC3B4:
/* 814FC3B4 | 38 A0 00 00 */	li r5, 0x0
/* 814FC3B8 | 48 00 00 1C */	b .L_814FC3D4
.L_814FC3BC:
/* 814FC3BC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814FC3C0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814FC3C4 | 7C 05 00 00 */	cmpw r5, r0
/* 814FC3C8 | 41 80 00 0C */	blt .L_814FC3D4
/* 814FC3CC | 38 60 00 00 */	li r3, 0x0
/* 814FC3D0 | 48 00 00 88 */	b .L_814FC458
.L_814FC3D4:
/* 814FC3D4 | 7C 83 2A 14 */	add r4, r3, r5
/* 814FC3D8 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814FC3DC | 7C 1F 00 00 */	cmpw r31, r0
/* 814FC3E0 | 41 81 FF DC */	bgt .L_814FC3BC
/* 814FC3E4 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814FC3E8 | 54 A0 18 38 */	slwi r0, r5, 3
/* 814FC3EC | 7C 03 02 14 */	add r0, r3, r0
/* 814FC3F0 | 38 64 00 04 */	addi r3, r4, 0x4
/* 814FC3F4 | 54 63 00 3A */	clrrwi r3, r3, 2
/* 814FC3F8 | 7C A3 02 14 */	add r5, r3, r0
/* 814FC3FC | 48 00 00 58 */	b .L_814FC454
.L_814FC400:
/* 814FC400 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814FC404 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814FC408 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814FC40C | 38 A5 00 08 */	addi r5, r5, 0x8
/* 814FC410 | 48 01 30 BD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 814FC414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC418 | 40 82 00 0C */	bne .L_814FC424
/* 814FC41C | 38 60 00 00 */	li r3, 0x0
/* 814FC420 | 48 00 00 38 */	b .L_814FC458
.L_814FC424:
/* 814FC424 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814FC428 | 7C 1F 20 00 */	cmpw r31, r4
/* 814FC42C | 41 80 00 10 */	blt .L_814FC43C
/* 814FC430 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814FC434 | 7C 1F 00 00 */	cmpw r31, r0
/* 814FC438 | 40 81 00 0C */	ble .L_814FC444
.L_814FC43C:
/* 814FC43C | 38 60 00 00 */	li r3, 0x0
/* 814FC440 | 48 00 00 18 */	b .L_814FC458
.L_814FC444:
/* 814FC444 | 7C 04 F8 50 */	subf r0, r4, r31
/* 814FC448 | 54 00 18 38 */	slwi r0, r0, 3
/* 814FC44C | 7C 63 02 14 */	add r3, r3, r0
/* 814FC450 | 38 A3 00 04 */	addi r5, r3, 0x4
.L_814FC454:
/* 814FC454 | 7C A3 2B 78 */	mr r3, r5
.L_814FC458:
/* 814FC458 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FC45C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FC460 | 7C 08 03 A6 */	mtlr r0
/* 814FC464 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FC468 | 4E 80 00 20 */	blr
.endfn GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef

# .text:0x350 | 0x814FC46C | size: 0xB8
# nw4r::snd::detail::BankFileReader::ReadWaveParam(nw4r::snd::detail::WaveData*, int, const void*) const
.fn ReadWaveParam__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8WaveDataiPCv, global
/* 814FC46C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FC470 | 7C 08 02 A6 */	mflr r0
/* 814FC474 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FC478 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FC47C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FC480 | 7C DF 33 78 */	mr r31, r6
/* 814FC484 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FC488 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FC48C | 7C 9E 23 78 */	mr r30, r4
/* 814FC490 | 40 82 00 0C */	bne .L_814FC49C
/* 814FC494 | 38 60 00 00 */	li r3, 0x0
/* 814FC498 | 48 00 00 74 */	b .L_814FC50C
.L_814FC49C:
/* 814FC49C | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814FC4A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FC4A4 | 40 82 00 0C */	bne .L_814FC4B0
/* 814FC4A8 | 38 60 00 00 */	li r3, 0x0
/* 814FC4AC | 48 00 00 60 */	b .L_814FC50C
.L_814FC4B0:
/* 814FC4B0 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814FC4B4 | 38 64 00 08 */	addi r3, r4, 0x8
/* 814FC4B8 | 7C 05 00 40 */	cmplw r5, r0
/* 814FC4BC | 41 80 00 0C */	blt .L_814FC4C8
/* 814FC4C0 | 38 60 00 00 */	li r3, 0x0
/* 814FC4C4 | 48 00 00 48 */	b .L_814FC50C
.L_814FC4C8:
/* 814FC4C8 | 54 A0 18 38 */	slwi r0, r5, 3
/* 814FC4CC | 7C 65 1B 78 */	mr r5, r3
/* 814FC4D0 | 7C 84 02 14 */	add r4, r4, r0
/* 814FC4D4 | 88 64 00 0C */	lbz r3, 0xc(r4)
/* 814FC4D8 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 814FC4DC | 48 01 2F F1 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 814FC4E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC4E4 | 40 82 00 0C */	bne .L_814FC4F0
/* 814FC4E8 | 38 60 00 00 */	li r3, 0x0
/* 814FC4EC | 48 00 00 20 */	b .L_814FC50C
.L_814FC4F0:
/* 814FC4F0 | 7C 64 1B 78 */	mr r4, r3
/* 814FC4F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814FC4F8 | 48 01 2F F9 */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo
/* 814FC4FC | 7F C4 F3 78 */	mr r4, r30
/* 814FC500 | 7F E5 FB 78 */	mr r5, r31
/* 814FC504 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814FC508 | 48 01 2F F1 */	bl ReadWaveParam__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveDataPCv
.L_814FC50C:
/* 814FC50C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FC510 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FC514 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FC518 | 7C 08 03 A6 */	mtlr r0
/* 814FC51C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FC520 | 4E 80 00 20 */	blr
.endfn ReadWaveParam__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8WaveDataiPCv

# 0x81695248..0x81695250 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695248 | size: 0x4
.obj lbl_81695248, global
	.float 1
.endobj lbl_81695248

# .sdata2:0x4 | 0x8169524C | size: 0x4
.obj gap_09_8169524C_sdata2, global
.hidden gap_09_8169524C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169524C_sdata2
