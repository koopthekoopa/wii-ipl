.include "macros.inc"
.file "snd_MemorySoundArchive.cpp"

# 0x81501724..0x81501B58 | size: 0x434
.text
.balign 4

# .text:0x0 | 0x81501724 | size: 0x4C
# nw4r::snd::MemorySoundArchive::MemorySoundArchive()
.fn __ct__Q34nw4r3snd18MemorySoundArchiveFv, global
/* 81501724 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81501728 | 7C 08 02 A6 */	mflr r0
/* 8150172C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501730 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501734 | 7C 7F 1B 78 */	mr r31, r3
/* 81501738 | 48 00 4A 35 */	bl __ct__Q34nw4r3snd12SoundArchiveFv
/* 8150173C | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd18MemorySoundArchive@ha
/* 81501740 | 38 00 00 00 */	li r0, 0x0
/* 81501744 | 38 84 F4 D0 */	addi r4, r4, __vt__Q34nw4r3snd18MemorySoundArchive@l
/* 81501748 | 90 1F 01 08 */	stw r0, 0x108(r31)
/* 8150174C | 38 7F 01 0C */	addi r3, r31, 0x10c
/* 81501750 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 81501754 | 48 00 50 11 */	bl __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv
/* 81501758 | 7F E3 FB 78 */	mr r3, r31
/* 8150175C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81501760 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81501764 | 7C 08 03 A6 */	mtlr r0
/* 81501768 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150176C | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd18MemorySoundArchiveFv

# .text:0x4C | 0x81501770 | size: 0x58
# nw4r::snd::MemorySoundArchive::~MemorySoundArchive()
.fn __dt__Q34nw4r3snd18MemorySoundArchiveFv, global
/* 81501770 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81501774 | 7C 08 02 A6 */	mflr r0
/* 81501778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150177C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501780 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501784 | 7C 9F 23 78 */	mr r31, r4
/* 81501788 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150178C | 7C 7E 1B 78 */	mr r30, r3
/* 81501790 | 41 82 00 1C */	beq .L_815017AC
/* 81501794 | 38 80 00 00 */	li r4, 0x0
/* 81501798 | 48 00 49 F9 */	bl __dt__Q34nw4r3snd12SoundArchiveFv
/* 8150179C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815017A0 | 40 81 00 0C */	ble .L_815017AC
/* 815017A4 | 7F C3 F3 78 */	mr r3, r30
/* 815017A8 | 48 0F 69 3D */	bl __dl__FPv
.L_815017AC:
/* 815017AC | 7F C3 F3 78 */	mr r3, r30
/* 815017B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815017B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815017B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815017BC | 7C 08 03 A6 */	mtlr r0
/* 815017C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815017C4 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd18MemorySoundArchiveFv

# .text:0xA4 | 0x815017C8 | size: 0x78
# nw4r::snd::MemorySoundArchive::Setup(const void*)
.fn Setup__Q34nw4r3snd18MemorySoundArchiveFPCv, global
/* 815017C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815017CC | 7C 08 02 A6 */	mflr r0
/* 815017D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815017D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815017D8 | 7C 9F 23 78 */	mr r31, r4
/* 815017DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815017E0 | 7C 7E 1B 78 */	mr r30, r3
/* 815017E4 | 38 63 01 0C */	addi r3, r3, 0x10c
/* 815017E8 | 48 00 4F A1 */	bl Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv
/* 815017EC | 7F C3 F3 78 */	mr r3, r30
/* 815017F0 | 38 9E 01 0C */	addi r4, r30, 0x10c
/* 815017F4 | 48 00 49 F1 */	bl Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader
/* 815017F8 | 80 1E 01 24 */	lwz r0, 0x124(r30)
/* 815017FC | 38 7E 01 0C */	addi r3, r30, 0x10c
/* 81501800 | 80 BE 01 28 */	lwz r5, 0x128(r30)
/* 81501804 | 7C 80 FA 14 */	add r4, r0, r31
/* 81501808 | 48 00 50 D9 */	bl SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 8150180C | 80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 81501810 | 38 7E 01 0C */	addi r3, r30, 0x10c
/* 81501814 | 80 BE 01 20 */	lwz r5, 0x120(r30)
/* 81501818 | 7C 80 FA 14 */	add r4, r0, r31
/* 8150181C | 48 00 50 1D */	bl SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 81501820 | 93 FE 01 08 */	stw r31, 0x108(r30)
/* 81501824 | 38 60 00 01 */	li r3, 0x1
/* 81501828 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150182C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81501830 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81501834 | 7C 08 03 A6 */	mtlr r0
/* 81501838 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150183C | 4E 80 00 20 */	blr
.endfn Setup__Q34nw4r3snd18MemorySoundArchiveFPCv

# .text:0x11C | 0x81501840 | size: 0xC
# nw4r::snd::MemorySoundArchive::Shutdown()
.fn Shutdown__Q34nw4r3snd18MemorySoundArchiveFv, global
/* 81501840 | 38 00 00 00 */	li r0, 0x0
/* 81501844 | 90 03 01 08 */	stw r0, 0x108(r3)
/* 81501848 | 48 00 49 A4 */	b Shutdown__Q34nw4r3snd12SoundArchiveFv
.endfn Shutdown__Q34nw4r3snd18MemorySoundArchiveFv

# .text:0x128 | 0x8150184C | size: 0xB0
# nw4r::snd::MemorySoundArchive::detail_GetFileAddress(unsigned long) const
.fn detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl, global
/* 8150184C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81501850 | 7C 08 02 A6 */	mflr r0
/* 81501854 | 38 A0 00 00 */	li r5, 0x0
/* 81501858 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8150185C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81501860 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81501864 | 7C 7F 1B 78 */	mr r31, r3
/* 81501868 | 48 00 4A 25 */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 8150186C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501870 | 40 82 00 0C */	bne .L_8150187C
/* 81501874 | 38 60 00 00 */	li r3, 0x0
/* 81501878 | 48 00 00 70 */	b .L_815018E8
.L_8150187C:
/* 8150187C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81501880 | 7F E3 FB 78 */	mr r3, r31
/* 81501884 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81501888 | 48 00 49 ED */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 8150188C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501890 | 40 82 00 0C */	bne .L_8150189C
/* 81501894 | 38 60 00 00 */	li r3, 0x0
/* 81501898 | 48 00 00 50 */	b .L_815018E8
.L_8150189C:
/* 8150189C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815018A0 | 7F E3 FB 78 */	mr r3, r31
/* 815018A4 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 815018A8 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 815018AC | 48 00 49 D1 */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 815018B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815018B4 | 40 82 00 0C */	bne .L_815018C0
/* 815018B8 | 38 60 00 00 */	li r3, 0x0
/* 815018BC | 48 00 00 2C */	b .L_815018E8
.L_815018C0:
/* 815018C0 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 815018C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815018C8 | 41 82 00 0C */	beq .L_815018D4
/* 815018CC | 38 60 00 00 */	li r3, 0x0
/* 815018D0 | 48 00 00 18 */	b .L_815018E8
.L_815018D4:
/* 815018D4 | 80 81 00 30 */	lwz r4, 0x30(r1)
/* 815018D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815018DC | 80 7F 01 08 */	lwz r3, 0x108(r31)
/* 815018E0 | 7C 04 02 14 */	add r0, r4, r0
/* 815018E4 | 7C 63 02 14 */	add r3, r3, r0
.L_815018E8:
/* 815018E8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 815018EC | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 815018F0 | 7C 08 03 A6 */	mtlr r0
/* 815018F4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 815018F8 | 4E 80 00 20 */	blr
.endfn detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl

# .text:0x1D8 | 0x815018FC | size: 0xB0
# nw4r::snd::MemorySoundArchive::detail_GetWaveDataFileAddress(unsigned long) const
.fn detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl, global
/* 815018FC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81501900 | 7C 08 02 A6 */	mflr r0
/* 81501904 | 38 A0 00 00 */	li r5, 0x0
/* 81501908 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8150190C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81501910 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81501914 | 7C 7F 1B 78 */	mr r31, r3
/* 81501918 | 48 00 49 75 */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 8150191C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501920 | 40 82 00 0C */	bne .L_8150192C
/* 81501924 | 38 60 00 00 */	li r3, 0x0
/* 81501928 | 48 00 00 70 */	b .L_81501998
.L_8150192C:
/* 8150192C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81501930 | 7F E3 FB 78 */	mr r3, r31
/* 81501934 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81501938 | 48 00 49 3D */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 8150193C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501940 | 40 82 00 0C */	bne .L_8150194C
/* 81501944 | 38 60 00 00 */	li r3, 0x0
/* 81501948 | 48 00 00 50 */	b .L_81501998
.L_8150194C:
/* 8150194C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81501950 | 7F E3 FB 78 */	mr r3, r31
/* 81501954 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81501958 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 8150195C | 48 00 49 21 */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 81501960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501964 | 40 82 00 0C */	bne .L_81501970
/* 81501968 | 38 60 00 00 */	li r3, 0x0
/* 8150196C | 48 00 00 2C */	b .L_81501998
.L_81501970:
/* 81501970 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81501974 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81501978 | 41 82 00 0C */	beq .L_81501984
/* 8150197C | 38 60 00 00 */	li r3, 0x0
/* 81501980 | 48 00 00 18 */	b .L_81501998
.L_81501984:
/* 81501984 | 80 81 00 38 */	lwz r4, 0x38(r1)
/* 81501988 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8150198C | 80 7F 01 08 */	lwz r3, 0x108(r31)
/* 81501990 | 7C 04 02 14 */	add r0, r4, r0
/* 81501994 | 7C 63 02 14 */	add r3, r3, r0
.L_81501998:
/* 81501998 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8150199C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 815019A0 | 7C 08 03 A6 */	mtlr r0
/* 815019A4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 815019A8 | 4E 80 00 20 */	blr
.endfn detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl

# .text:0x288 | 0x815019AC | size: 0x60
# nw4r::snd::MemorySoundArchive::OpenStream(void*, int, unsigned long, unsigned long) const
.fn OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl, global
/* 815019AC | 80 03 01 08 */	lwz r0, 0x108(r3)
/* 815019B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815019B4 | 40 82 00 0C */	bne .L_815019C0
/* 815019B8 | 38 60 00 00 */	li r3, 0x0
/* 815019BC | 4E 80 00 20 */	blr
.L_815019C0:
/* 815019C0 | 28 05 00 20 */	cmplwi r5, 0x20
/* 815019C4 | 40 80 00 0C */	bge .L_815019D0
/* 815019C8 | 38 60 00 00 */	li r3, 0x0
/* 815019CC | 4E 80 00 20 */	blr
.L_815019D0:
/* 815019D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815019D4 | 7C 83 23 78 */	mr r3, r4
/* 815019D8 | 4D 82 00 20 */	beqlr
/* 815019DC | 3C A0 81 67 */	lis r5, __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream@ha
/* 815019E0 | 39 00 00 00 */	li r8, 0x0
/* 815019E4 | 38 A5 F4 70 */	addi r5, r5, __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream@l
/* 815019E8 | 7C 06 02 14 */	add r0, r6, r0
/* 815019EC | 99 04 00 04 */	stb r8, 0x4(r4)
/* 815019F0 | 91 04 00 0C */	stw r8, 0xc(r4)
/* 815019F4 | 91 04 00 10 */	stw r8, 0x10(r4)
/* 815019F8 | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 815019FC | 90 04 00 14 */	stw r0, 0x14(r4)
/* 81501A00 | 90 E4 00 18 */	stw r7, 0x18(r4)
/* 81501A04 | 91 04 00 1C */	stw r8, 0x1c(r4)
/* 81501A08 | 4E 80 00 20 */	blr
.endfn OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl

# .text:0x2E8 | 0x81501A0C | size: 0x8
# nw4r::snd::MemorySoundArchive::OpenExtStream(void*, int, const char*, unsigned long, unsigned long) const
.fn OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl, global
/* 81501A0C | 38 60 00 00 */	li r3, 0x0
/* 81501A10 | 4E 80 00 20 */	blr
.endfn OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl

# .text:0x2F0 | 0x81501A14 | size: 0x8
# nw4r::snd::MemorySoundArchive::detail_GetRequiredStreamBufferSize() const
.fn detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv, global
/* 81501A14 | 38 60 00 20 */	li r3, 0x20
/* 81501A18 | 4E 80 00 20 */	blr
.endfn detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv

# .text:0x2F8 | 0x81501A1C | size: 0x14
# nw4r::snd::MemorySoundArchive::MemoryFileStream::Close()
.fn Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv, global
/* 81501A1C | 38 00 00 00 */	li r0, 0x0
/* 81501A20 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81501A24 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81501A28 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81501A2C | 4E 80 00 20 */	blr
.endfn Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv

# .text:0x30C | 0x81501A30 | size: 0x58
# nw4r::snd::MemorySoundArchive::MemoryFileStream::Read(void*, unsigned long)
.fn Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl, global
/* 81501A30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81501A34 | 7C 08 02 A6 */	mflr r0
/* 81501A38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501A3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501A40 | 7C BF 2B 78 */	mr r31, r5
/* 81501A44 | 80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 81501A48 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81501A4C | 7C 06 00 50 */	subf r0, r6, r0
/* 81501A50 | 7C 05 00 40 */	cmplw r5, r0
/* 81501A54 | 40 81 00 08 */	ble .L_81501A5C
/* 81501A58 | 7C 1F 03 78 */	mr r31, r0
.L_81501A5C:
/* 81501A5C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81501A60 | 7C 83 23 78 */	mr r3, r4
/* 81501A64 | 7F E5 FB 78 */	mr r5, r31
/* 81501A68 | 7C 86 02 14 */	add r4, r6, r0
/* 81501A6C | 4B E2 E7 C5 */	bl memcpy
/* 81501A70 | 7F E3 FB 78 */	mr r3, r31
/* 81501A74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81501A78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81501A7C | 7C 08 03 A6 */	mtlr r0
/* 81501A80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81501A84 | 4E 80 00 20 */	blr
.endfn Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl

# .text:0x364 | 0x81501A88 | size: 0x4C
# nw4r::snd::MemorySoundArchive::MemoryFileStream::Seek(long, unsigned long)
.fn Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl, global
/* 81501A88 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81501A8C | 41 82 00 28 */	beq .L_81501AB4
/* 81501A90 | 40 80 00 10 */	bge .L_81501AA0
/* 81501A94 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81501A98 | 40 80 00 14 */	bge .L_81501AAC
/* 81501A9C | 4E 80 00 20 */	blr
.L_81501AA0:
/* 81501AA0 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 81501AA4 | 4C 80 00 20 */	bgelr
/* 81501AA8 | 48 00 00 1C */	b .L_81501AC4
.L_81501AAC:
/* 81501AAC | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81501AB0 | 4E 80 00 20 */	blr
.L_81501AB4:
/* 81501AB4 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81501AB8 | 7C 00 22 14 */	add r0, r0, r4
/* 81501ABC | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81501AC0 | 4E 80 00 20 */	blr
.L_81501AC4:
/* 81501AC4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81501AC8 | 7C 04 00 50 */	subf r0, r4, r0
/* 81501ACC | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81501AD0 | 4E 80 00 20 */	blr
.endfn Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl

# .text:0x3B0 | 0x81501AD4 | size: 0x4
# nw4r::snd::MemorySoundArchive::MemoryFileStream::UNUSED_81501AD4()
.fn UNUSED_81501AD4__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv, global
/* 81501AD4 | 4E 80 00 20 */	blr
.endfn UNUSED_81501AD4__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv

# .text:0x3B4 | 0x81501AD8 | size: 0x8
# nw4r::ut::FileStream::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv, global
/* 81501AD8 | 38 6D AF 10 */	li r3, lbl_81698F50@sda21
/* 81501ADC | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv

# .text:0x3BC | 0x81501AE0 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::GetSize() const
.fn GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501AE0 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 81501AE4 | 4E 80 00 20 */	blr
.endfn GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3C4 | 0x81501AE8 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::Tell() const
.fn Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501AE8 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 81501AEC | 4E 80 00 20 */	blr
.endfn Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3CC | 0x81501AF0 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::CanWrite() const
.fn CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501AF0 | 38 60 00 00 */	li r3, 0x0
/* 81501AF4 | 4E 80 00 20 */	blr
.endfn CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3D4 | 0x81501AF8 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::CanRead() const
.fn CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501AF8 | 38 60 00 01 */	li r3, 0x1
/* 81501AFC | 4E 80 00 20 */	blr
.endfn CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3DC | 0x81501B00 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::CanAsync() const
.fn CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501B00 | 38 60 00 00 */	li r3, 0x0
/* 81501B04 | 4E 80 00 20 */	blr
.endfn CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3E4 | 0x81501B08 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::CanCancel() const
.fn CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501B08 | 38 60 00 01 */	li r3, 0x1
/* 81501B0C | 4E 80 00 20 */	blr
.endfn CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3EC | 0x81501B10 | size: 0x8
# nw4r::snd::MemorySoundArchive::MemoryFileStream::CanSeek() const
.fn CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv, global
/* 81501B10 | 38 60 00 01 */	li r3, 0x1
/* 81501B14 | 4E 80 00 20 */	blr
.endfn CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

# .text:0x3F4 | 0x81501B18 | size: 0x40
# nw4r::snd::MemorySoundArchive::MemoryFileStream::~MemoryFileStream()
.fn __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv, global
/* 81501B18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81501B1C | 7C 08 02 A6 */	mflr r0
/* 81501B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501B24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501B28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501B2C | 7C 7F 1B 78 */	mr r31, r3
/* 81501B30 | 41 82 00 10 */	beq .L_81501B40
/* 81501B34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81501B38 | 40 81 00 08 */	ble .L_81501B40
/* 81501B3C | 48 0F 65 A9 */	bl __dl__FPv
.L_81501B40:
/* 81501B40 | 7F E3 FB 78 */	mr r3, r31
/* 81501B44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81501B48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81501B4C | 7C 08 03 A6 */	mtlr r0
/* 81501B50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81501B54 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv

# 0x8166F470..0x8166F4F0 | size: 0x80
.data
.balign 8

# .data:0x0 | 0x8166F470 | size: 0x60
# nw4r::snd::MemorySoundArchive::MemoryFileStream::__vtable
.obj __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv
	.4byte __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.4byte Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.4byte Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl
	.4byte fn_81512E14
	.4byte fn_81512E1C
	.4byte fn_81512E20
	.4byte fn_81512E28
	.4byte CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetSizeAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetBufferAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl
	.4byte fn_81512E3C
	.4byte fn_81512E40
	.4byte CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream

# .data:0x60 | 0x8166F4D0 | size: 0x20
# nw4r::snd::MemorySoundArchive::__vtable
.obj __vt__Q34nw4r3snd18MemorySoundArchive, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd18MemorySoundArchiveFv
	.4byte detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.4byte detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.4byte detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv
	.4byte OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl
	.4byte OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl
.endobj __vt__Q34nw4r3snd18MemorySoundArchive
