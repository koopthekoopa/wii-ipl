.include "macros.inc"
.file "snd_WaveFile.cpp"

# 0x8150F4F0..0x8150F720 | size: 0x230
.text
.balign 4

# .text:0x0 | 0x8150F4F0 | size: 0x8
# nw4r::snd::detail::WaveFileReader::WaveFileReader(const nw4r::snd::detail::WaveFile::WaveInfo*)
.fn __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo, global
/* 8150F4F0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150F4F4 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo

# .text:0x8 | 0x8150F4F8 | size: 0x228
# nw4r::snd::detail::WaveFileReader::ReadWaveParam(nw4r::snd::detail::WaveData*, const void*) const
.fn ReadWaveParam__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveDataPCv, global
/* 8150F4F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150F4FC | 7C 08 02 A6 */	mflr r0
/* 8150F500 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8150F504 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150F508 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150F50C | 7C BF 2B 78 */	mr r31, r5
/* 8150F510 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150F514 | 7C 7E 1B 78 */	mr r30, r3
/* 8150F518 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150F51C | 7C 9D 23 78 */	mr r29, r4
/* 8150F520 | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 8150F524 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 8150F528 | 88 06 00 02 */	lbz r0, 0x2(r6)
/* 8150F52C | 98 04 00 02 */	stb r0, 0x2(r4)
/* 8150F530 | 88 66 00 03 */	lbz r3, 0x3(r6)
/* 8150F534 | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 8150F538 | 54 63 80 1E */	slwi r3, r3, 16
/* 8150F53C | 7C 03 02 14 */	add r0, r3, r0
/* 8150F540 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 8150F544 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 8150F548 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 8150F54C | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 8150F550 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8150F554 | 40 82 00 0C */	bne .L_8150F560
/* 8150F558 | 38 A0 00 0A */	li r5, 0xa
/* 8150F55C | 48 00 00 14 */	b .L_8150F570
.L_8150F560:
/* 8150F560 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150F564 | 38 A0 00 00 */	li r5, 0x0
/* 8150F568 | 40 82 00 08 */	bne .L_8150F570
/* 8150F56C | 38 A0 00 19 */	li r5, 0x19
.L_8150F570:
/* 8150F570 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 8150F574 | 38 60 00 00 */	li r3, 0x0
/* 8150F578 | 4B FE B9 A1 */	bl GetSampleByDspAddress__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format
/* 8150F57C | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8150F580 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8150F584 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8150F588 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8150F58C | 40 82 00 0C */	bne .L_8150F598
/* 8150F590 | 38 A0 00 0A */	li r5, 0xa
/* 8150F594 | 48 00 00 14 */	b .L_8150F5A8
.L_8150F598:
/* 8150F598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150F59C | 38 A0 00 00 */	li r5, 0x0
/* 8150F5A0 | 40 82 00 08 */	bne .L_8150F5A8
/* 8150F5A4 | 38 A0 00 19 */	li r5, 0x19
.L_8150F5A8:
/* 8150F5A8 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 8150F5AC | 38 60 00 00 */	li r3, 0x0
/* 8150F5B0 | 4B FE B9 69 */	bl GetSampleByDspAddress__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format
/* 8150F5B4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8150F5B8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8150F5BC | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 8150F5C0 | 38 9D 00 10 */	addi r4, r29, 0x10
/* 8150F5C4 | 38 C0 00 00 */	li r6, 0x0
/* 8150F5C8 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8150F5CC | 7C A0 1A 14 */	add r5, r0, r3
/* 8150F5D0 | 48 00 01 20 */	b .L_8150F6F0
.L_8150F5D4:
/* 8150F5D4 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8150F5D8 | 7C E0 1A 14 */	add r7, r0, r3
/* 8150F5DC | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 8150F5E0 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 8150F5E4 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 8150F5E8 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 8150F5EC | 80 07 00 10 */	lwz r0, 0x10(r7)
/* 8150F5F0 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 8150F5F4 | 80 07 00 14 */	lwz r0, 0x14(r7)
/* 8150F5F8 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 8150F5FC | 80 67 00 04 */	lwz r3, 0x4(r7)
/* 8150F600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F604 | 41 82 00 C8 */	beq .L_8150F6CC
/* 8150F608 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8150F60C | 7D 03 02 6E */	lhzux r8, r3, r0
/* 8150F610 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8150F614 | B1 04 00 14 */	sth r8, 0x14(r4)
/* 8150F618 | B0 04 00 16 */	sth r0, 0x16(r4)
/* 8150F61C | A1 03 00 04 */	lhz r8, 0x4(r3)
/* 8150F620 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8150F624 | B1 04 00 18 */	sth r8, 0x18(r4)
/* 8150F628 | B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8150F62C | A1 03 00 08 */	lhz r8, 0x8(r3)
/* 8150F630 | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8150F634 | B1 04 00 1C */	sth r8, 0x1c(r4)
/* 8150F638 | B0 04 00 1E */	sth r0, 0x1e(r4)
/* 8150F63C | A1 03 00 0C */	lhz r8, 0xc(r3)
/* 8150F640 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8150F644 | B1 04 00 20 */	sth r8, 0x20(r4)
/* 8150F648 | B0 04 00 22 */	sth r0, 0x22(r4)
/* 8150F64C | A1 03 00 10 */	lhz r8, 0x10(r3)
/* 8150F650 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 8150F654 | B1 04 00 24 */	sth r8, 0x24(r4)
/* 8150F658 | B0 04 00 26 */	sth r0, 0x26(r4)
/* 8150F65C | A1 03 00 14 */	lhz r8, 0x14(r3)
/* 8150F660 | A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8150F664 | B1 04 00 28 */	sth r8, 0x28(r4)
/* 8150F668 | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 8150F66C | A1 03 00 18 */	lhz r8, 0x18(r3)
/* 8150F670 | A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 8150F674 | B1 04 00 2C */	sth r8, 0x2c(r4)
/* 8150F678 | B0 04 00 2E */	sth r0, 0x2e(r4)
/* 8150F67C | A1 03 00 1C */	lhz r8, 0x1c(r3)
/* 8150F680 | A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 8150F684 | B1 04 00 30 */	sth r8, 0x30(r4)
/* 8150F688 | B0 04 00 32 */	sth r0, 0x32(r4)
/* 8150F68C | A1 03 00 20 */	lhz r8, 0x20(r3)
/* 8150F690 | A0 03 00 22 */	lhz r0, 0x22(r3)
/* 8150F694 | B1 04 00 34 */	sth r8, 0x34(r4)
/* 8150F698 | B0 04 00 36 */	sth r0, 0x36(r4)
/* 8150F69C | A1 03 00 24 */	lhz r8, 0x24(r3)
/* 8150F6A0 | A0 03 00 26 */	lhz r0, 0x26(r3)
/* 8150F6A4 | B1 04 00 38 */	sth r8, 0x38(r4)
/* 8150F6A8 | B0 04 00 3A */	sth r0, 0x3a(r4)
/* 8150F6AC | A0 03 00 28 */	lhz r0, 0x28(r3)
/* 8150F6B0 | B0 04 00 3C */	sth r0, 0x3c(r4)
/* 8150F6B4 | A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 8150F6B8 | B0 04 00 3E */	sth r0, 0x3e(r4)
/* 8150F6BC | A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 8150F6C0 | B0 04 00 40 */	sth r0, 0x40(r4)
/* 8150F6C4 | A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8150F6C8 | B0 04 00 42 */	sth r0, 0x42(r4)
.L_8150F6CC:
/* 8150F6CC | 81 1E 00 00 */	lwz r8, 0x0(r30)
/* 8150F6D0 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8150F6D4 | 80 67 00 00 */	lwz r3, 0x0(r7)
/* 8150F6D8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8150F6DC | 80 08 00 14 */	lwz r0, 0x14(r8)
/* 8150F6E0 | 7C 00 FA 14 */	add r0, r0, r31
/* 8150F6E4 | 7C 03 02 14 */	add r0, r3, r0
/* 8150F6E8 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 8150F6EC | 38 84 00 44 */	addi r4, r4, 0x44
.L_8150F6F0:
/* 8150F6F0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8150F6F4 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 8150F6F8 | 7C 06 00 00 */	cmpw r6, r0
/* 8150F6FC | 41 80 FE D8 */	blt .L_8150F5D4
/* 8150F700 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150F704 | 38 60 00 01 */	li r3, 0x1
/* 8150F708 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150F70C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150F710 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150F714 | 7C 08 03 A6 */	mtlr r0
/* 8150F718 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150F71C | 4E 80 00 20 */	blr
.endfn ReadWaveParam__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveDataPCv
