.include "macros.inc"
.file "snd_WsdFile.cpp"

# 0x8151082C..0x81510B74 | size: 0x348
.text
.balign 4

# .text:0x0 | 0x8151082C | size: 0x7C
# nw4r::snd::detail::WsdFileReader::WsdFileReader(const void*)
.fn __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv, global
/* 8151082C | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81510830 | 38 C0 00 00 */	li r6, 0x0
/* 81510834 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81510838 | 3C 05 AD A9 */	subis r0, r5, 0x5257
/* 8151083C | 28 00 53 44 */	cmplwi r0, 0x5344
/* 81510840 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81510844 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 81510848 | 41 82 00 0C */	beq .L_81510854
/* 8151084C | 38 00 00 00 */	li r0, 0x0
/* 81510850 | 48 00 00 30 */	b .L_81510880
.L_81510854:
/* 81510854 | A0 C4 00 06 */	lhz r6, 0x6(r4)
/* 81510858 | 28 06 01 00 */	cmplwi r6, 0x100
/* 8151085C | 40 80 00 0C */	bge .L_81510868
/* 81510860 | 38 00 00 00 */	li r0, 0x0
/* 81510864 | 48 00 00 1C */	b .L_81510880
.L_81510868:
/* 81510868 | 20 06 01 02 */	subfic r0, r6, 0x102
/* 8151086C | 38 A0 01 02 */	li r5, 0x102
/* 81510870 | 7C A5 33 38 */	orc r5, r5, r6
/* 81510874 | 54 00 F8 7E */	srwi r0, r0, 1
/* 81510878 | 7C 00 28 50 */	subf r0, r0, r5
/* 8151087C | 54 00 0F FE */	srwi r0, r0, 31
.L_81510880:
/* 81510880 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510884 | 4D 82 00 20 */	beqlr
/* 81510888 | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8151088C | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 81510890 | 7C A5 22 14 */	add r5, r5, r4
/* 81510894 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81510898 | 7C 00 22 14 */	add r0, r0, r4
/* 8151089C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 815108A0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 815108A4 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv

# .text:0x7C | 0x815108A8 | size: 0x120
# nw4r::snd::detail::WsdFileReader::ReadWaveSoundInfo(nw4r::snd::detail::WaveSoundInfo*, int) const
.fn ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi, global
/* 815108A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815108AC | 7C 08 02 A6 */	mflr r0
/* 815108B0 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 815108B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815108B8 | 54 A0 18 38 */	slwi r0, r5, 3
/* 815108BC | 38 A6 00 08 */	addi r5, r6, 0x8
/* 815108C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815108C4 | 7C 9F 23 78 */	mr r31, r4
/* 815108C8 | 7C 86 02 14 */	add r4, r6, r0
/* 815108CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815108D0 | 7C 7E 1B 78 */	mr r30, r3
/* 815108D4 | 88 64 00 0C */	lbz r3, 0xc(r4)
/* 815108D8 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 815108DC | 4B FF EB F1 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 815108E0 | 7C 64 1B 78 */	mr r4, r3
/* 815108E4 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 815108E8 | 88 63 00 00 */	lbz r3, 0x0(r3)
/* 815108EC | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 815108F0 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 815108F4 | 4B FF EB D9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 815108F8 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 815108FC | A0 04 00 06 */	lhz r0, 0x6(r4)
/* 81510900 | 28 00 01 02 */	cmplwi r0, 0x102
/* 81510904 | 40 82 00 40 */	bne .L_81510944
/* 81510908 | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 8151090C | D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 81510910 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 81510914 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 81510918 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 8151091C | 98 1F 00 05 */	stb r0, 0x5(r31)
/* 81510920 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 81510924 | 98 1F 00 06 */	stb r0, 0x6(r31)
/* 81510928 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 8151092C | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 81510930 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81510934 | 98 1F 00 08 */	stb r0, 0x8(r31)
/* 81510938 | 88 03 00 09 */	lbz r0, 0x9(r3)
/* 8151093C | 98 1F 00 09 */	stb r0, 0x9(r31)
/* 81510940 | 48 00 00 6C */	b .L_815109AC
.L_81510944:
/* 81510944 | 28 00 01 01 */	cmplwi r0, 0x101
/* 81510948 | 40 82 00 38 */	bne .L_81510980
/* 8151094C | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 81510950 | 38 80 00 00 */	li r4, 0x0
/* 81510954 | 38 00 00 7F */	li r0, 0x7f
/* 81510958 | D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 8151095C | 88 A3 00 04 */	lbz r5, 0x4(r3)
/* 81510960 | 98 BF 00 04 */	stb r5, 0x4(r31)
/* 81510964 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 81510968 | 98 7F 00 05 */	stb r3, 0x5(r31)
/* 8151096C | 98 9F 00 06 */	stb r4, 0x6(r31)
/* 81510970 | 98 9F 00 07 */	stb r4, 0x7(r31)
/* 81510974 | 98 9F 00 08 */	stb r4, 0x8(r31)
/* 81510978 | 98 1F 00 09 */	stb r0, 0x9(r31)
/* 8151097C | 48 00 00 30 */	b .L_815109AC
.L_81510980:
/* 81510980 | C0 02 90 08 */	lfs f0, lbl_81695408@sda21(r0)
/* 81510984 | 38 60 00 00 */	li r3, 0x0
/* 81510988 | 38 80 00 40 */	li r4, 0x40
/* 8151098C | 38 00 00 7F */	li r0, 0x7f
/* 81510990 | D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 81510994 | 98 9F 00 04 */	stb r4, 0x4(r31)
/* 81510998 | 98 7F 00 05 */	stb r3, 0x5(r31)
/* 8151099C | 98 7F 00 06 */	stb r3, 0x6(r31)
/* 815109A0 | 98 7F 00 07 */	stb r3, 0x7(r31)
/* 815109A4 | 98 7F 00 08 */	stb r3, 0x8(r31)
/* 815109A8 | 98 1F 00 09 */	stb r0, 0x9(r31)
.L_815109AC:
/* 815109AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815109B0 | 38 60 00 01 */	li r3, 0x1
/* 815109B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815109B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815109BC | 7C 08 03 A6 */	mtlr r0
/* 815109C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815109C4 | 4E 80 00 20 */	blr
.endfn ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi

# .text:0x19C | 0x815109C8 | size: 0x110
# nw4r::snd::detail::WsdFileReader::ReadWaveSoundNoteInfo(nw4r::snd::detail::WaveSoundNoteInfo*, int, int) const
.fn ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii, global
/* 815109C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815109CC | 7C 08 02 A6 */	mflr r0
/* 815109D0 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 815109D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815109D8 | 54 A0 18 38 */	slwi r0, r5, 3
/* 815109DC | 38 A7 00 08 */	addi r5, r7, 0x8
/* 815109E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815109E4 | 7C 9F 23 78 */	mr r31, r4
/* 815109E8 | 7C 87 02 14 */	add r4, r7, r0
/* 815109EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815109F0 | 7C DE 33 78 */	mr r30, r6
/* 815109F4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815109F8 | 7C 7D 1B 78 */	mr r29, r3
/* 815109FC | 88 64 00 0C */	lbz r3, 0xc(r4)
/* 81510A00 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 81510A04 | 4B FF EA C9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81510A08 | 7C 64 1B 78 */	mr r4, r3
/* 81510A0C | 80 BD 00 04 */	lwz r5, 0x4(r29)
/* 81510A10 | 88 63 00 10 */	lbz r3, 0x10(r3)
/* 81510A14 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 81510A18 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 81510A1C | 4B FF EA B1 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81510A20 | 57 C0 18 38 */	slwi r0, r30, 3
/* 81510A24 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81510A28 | 7C C3 02 14 */	add r6, r3, r0
/* 81510A2C | 38 A4 00 08 */	addi r5, r4, 0x8
/* 81510A30 | 88 66 00 04 */	lbz r3, 0x4(r6)
/* 81510A34 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 81510A38 | 4B FF EA 95 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81510A3C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81510A40 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81510A44 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81510A48 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 81510A4C | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 81510A50 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 81510A54 | 98 1F 00 05 */	stb r0, 0x5(r31)
/* 81510A58 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 81510A5C | 98 1F 00 06 */	stb r0, 0x6(r31)
/* 81510A60 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 81510A64 | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 81510A68 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81510A6C | 98 1F 00 08 */	stb r0, 0x8(r31)
/* 81510A70 | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 81510A74 | 98 1F 00 0B */	stb r0, 0xb(r31)
/* 81510A78 | A0 04 00 06 */	lhz r0, 0x6(r4)
/* 81510A7C | 28 00 01 01 */	cmplwi r0, 0x101
/* 81510A80 | 41 80 00 20 */	blt .L_81510AA0
/* 81510A84 | 88 03 00 0E */	lbz r0, 0xe(r3)
/* 81510A88 | 98 1F 00 09 */	stb r0, 0x9(r31)
/* 81510A8C | 88 03 00 0F */	lbz r0, 0xf(r3)
/* 81510A90 | 98 1F 00 0A */	stb r0, 0xa(r31)
/* 81510A94 | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81510A98 | D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 81510A9C | 48 00 00 1C */	b .L_81510AB8
.L_81510AA0:
/* 81510AA0 | C0 02 90 08 */	lfs f0, lbl_81695408@sda21(r0)
/* 81510AA4 | 38 60 00 40 */	li r3, 0x40
/* 81510AA8 | 38 00 00 00 */	li r0, 0x0
/* 81510AAC | 98 7F 00 09 */	stb r3, 0x9(r31)
/* 81510AB0 | 98 1F 00 0A */	stb r0, 0xa(r31)
/* 81510AB4 | D0 1F 00 0C */	stfs f0, 0xc(r31)
.L_81510AB8:
/* 81510AB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510ABC | 38 60 00 01 */	li r3, 0x1
/* 81510AC0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510AC4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81510AC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510ACC | 7C 08 03 A6 */	mtlr r0
/* 81510AD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510AD4 | 4E 80 00 20 */	blr
.endfn ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii

# .text:0x2AC | 0x81510AD8 | size: 0x9C
# nw4r::snd::detail::WsdFileReader::ReadWaveParam(int, nw4r::snd::detail::WaveData*, const void*) const
.fn ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv, global
/* 81510AD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510ADC | 7C 08 02 A6 */	mflr r0
/* 81510AE0 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81510AE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510AE8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81510AEC | 7C DF 33 78 */	mr r31, r6
/* 81510AF0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81510AF4 | 7C BE 2B 78 */	mr r30, r5
/* 81510AF8 | A0 07 00 06 */	lhz r0, 0x6(r7)
/* 81510AFC | 28 00 01 00 */	cmplwi r0, 0x100
/* 81510B00 | 40 82 00 1C */	bne .L_81510B1C
/* 81510B04 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81510B08 | 54 80 10 3A */	slwi r0, r4, 2
/* 81510B0C | 7C 65 02 14 */	add r3, r5, r0
/* 81510B10 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81510B14 | 7C 80 2A 14 */	add r4, r0, r5
/* 81510B18 | 48 00 00 2C */	b .L_81510B44
.L_81510B1C:
/* 81510B1C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81510B20 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 81510B24 | 7C 04 00 40 */	cmplw r4, r0
/* 81510B28 | 41 80 00 0C */	blt .L_81510B34
/* 81510B2C | 38 60 00 00 */	li r3, 0x0
/* 81510B30 | 48 00 00 2C */	b .L_81510B5C
.L_81510B34:
/* 81510B34 | 54 80 10 3A */	slwi r0, r4, 2
/* 81510B38 | 7C 65 02 14 */	add r3, r5, r0
/* 81510B3C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81510B40 | 7C 80 2A 14 */	add r4, r0, r5
.L_81510B44:
/* 81510B44 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81510B48 | 4B FF E9 A9 */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo
/* 81510B4C | 7F C4 F3 78 */	mr r4, r30
/* 81510B50 | 7F E5 FB 78 */	mr r5, r31
/* 81510B54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81510B58 | 4B FF E9 A1 */	bl ReadWaveParam__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveDataPCv
.L_81510B5C:
/* 81510B5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510B60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510B64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510B68 | 7C 08 03 A6 */	mtlr r0
/* 81510B6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510B70 | 4E 80 00 20 */	blr
.endfn ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv

# 0x81695408..0x81695410 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695408 | size: 0x4
.obj lbl_81695408, global
	.float 1
.endobj lbl_81695408

# .sdata2:0x4 | 0x8169540C | size: 0x4
.obj gap_09_8169540C_sdata2, global
.hidden gap_09_8169540C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169540C_sdata2
