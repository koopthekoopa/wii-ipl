.include "macros.inc"
.file "snd_DvdSoundArchive.cpp"

# 0x814FE9EC..0x814FF084 | size: 0x698
.text
.balign 4

# .text:0x0 | 0x814FE9EC | size: 0x4C
# nw4r::snd::DvdSoundArchive::DvdSoundArchive()
.fn __ct__Q34nw4r3snd15DvdSoundArchiveFv, global
/* 814FE9EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FE9F0 | 7C 08 02 A6 */	mflr r0
/* 814FE9F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FE9F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FE9FC | 7C 7F 1B 78 */	mr r31, r3
/* 814FEA00 | 48 00 77 6D */	bl __ct__Q34nw4r3snd12SoundArchiveFv
/* 814FEA04 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd15DvdSoundArchive@ha
/* 814FEA08 | 38 7F 01 08 */	addi r3, r31, 0x108
/* 814FEA0C | 38 84 F3 B0 */	addi r4, r4, __vt__Q34nw4r3snd15DvdSoundArchive@l
/* 814FEA10 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 814FEA14 | 48 00 7D 51 */	bl __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv
/* 814FEA18 | 38 00 00 00 */	li r0, 0x0
/* 814FEA1C | 7F E3 FB 78 */	mr r3, r31
/* 814FEA20 | 98 1F 01 88 */	stb r0, 0x188(r31)
/* 814FEA24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FEA28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FEA2C | 7C 08 03 A6 */	mtlr r0
/* 814FEA30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FEA34 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd15DvdSoundArchiveFv

# .text:0x4C | 0x814FEA38 | size: 0x80
# nw4r::snd::DvdSoundArchive::~DvdSoundArchive()
.fn __dt__Q34nw4r3snd15DvdSoundArchiveFv, global
/* 814FEA38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FEA3C | 7C 08 02 A6 */	mflr r0
/* 814FEA40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FEA44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FEA48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FEA4C | 7C 9F 23 78 */	mr r31, r4
/* 814FEA50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FEA54 | 7C 7E 1B 78 */	mr r30, r3
/* 814FEA58 | 41 82 00 44 */	beq .L_814FEA9C
/* 814FEA5C | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd15DvdSoundArchive@ha
/* 814FEA60 | 38 84 F3 B0 */	addi r4, r4, __vt__Q34nw4r3snd15DvdSoundArchive@l
/* 814FEA64 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814FEA68 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 814FEA6C | 48 04 A5 81 */	bl DVDClose
/* 814FEA70 | 38 00 00 00 */	li r0, 0x0
/* 814FEA74 | 7F C3 F3 78 */	mr r3, r30
/* 814FEA78 | 98 1E 01 88 */	stb r0, 0x188(r30)
/* 814FEA7C | 48 00 77 71 */	bl Shutdown__Q34nw4r3snd12SoundArchiveFv
/* 814FEA80 | 7F C3 F3 78 */	mr r3, r30
/* 814FEA84 | 38 80 00 00 */	li r4, 0x0
/* 814FEA88 | 48 00 77 09 */	bl __dt__Q34nw4r3snd12SoundArchiveFv
/* 814FEA8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FEA90 | 40 81 00 0C */	ble .L_814FEA9C
/* 814FEA94 | 7F C3 F3 78 */	mr r3, r30
/* 814FEA98 | 48 0F 96 4D */	bl __dl__FPv
.L_814FEA9C:
/* 814FEA9C | 7F C3 F3 78 */	mr r3, r30
/* 814FEAA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FEAA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FEAA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FEAAC | 7C 08 03 A6 */	mtlr r0
/* 814FEAB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FEAB4 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd15DvdSoundArchiveFv

# .text:0xCC | 0x814FEAB8 | size: 0x160
# nw4r::snd::DvdSoundArchive::Open(const char*)
.fn Open__Q34nw4r3snd15DvdSoundArchiveFPCc, global
/* 814FEAB8 | 94 21 FE 80 */	stwu r1, -0x180(r1)
/* 814FEABC | 7C 08 02 A6 */	mflr r0
/* 814FEAC0 | 90 01 01 84 */	stw r0, 0x184(r1)
/* 814FEAC4 | 93 E1 01 7C */	stw r31, 0x17c(r1)
/* 814FEAC8 | 93 C1 01 78 */	stw r30, 0x178(r1)
/* 814FEACC | 93 A1 01 74 */	stw r29, 0x174(r1)
/* 814FEAD0 | 7C 9D 23 78 */	mr r29, r4
/* 814FEAD4 | 93 81 01 70 */	stw r28, 0x170(r1)
/* 814FEAD8 | 7C 7C 1B 78 */	mr r28, r3
/* 814FEADC | 7F A3 EB 78 */	mr r3, r29
/* 814FEAE0 | 48 04 9E D1 */	bl DVDConvertPathToEntrynum
/* 814FEAE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FEAE8 | 40 80 00 0C */	bge .L_814FEAF4
/* 814FEAEC | 38 60 00 00 */	li r3, 0x0
/* 814FEAF0 | 48 00 01 08 */	b .L_814FEBF8
.L_814FEAF4:
/* 814FEAF4 | 38 9C 01 4C */	addi r4, r28, 0x14c
/* 814FEAF8 | 48 04 A1 E1 */	bl DVDFastOpen
/* 814FEAFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FEB00 | 40 82 00 0C */	bne .L_814FEB0C
/* 814FEB04 | 38 00 00 00 */	li r0, 0x0
/* 814FEB08 | 48 00 00 74 */	b .L_814FEB7C
.L_814FEB0C:
/* 814FEB0C | 38 60 00 01 */	li r3, 0x1
/* 814FEB10 | 98 7C 01 88 */	stb r3, 0x188(r28)
/* 814FEB14 | 88 0D AE A0 */	lbz r0, "@GUARD@headerAlignSize$2940"@sda21(r0)
/* 814FEB18 | 7C 00 07 75 */	extsb. r0, r0
/* 814FEB1C | 40 82 00 10 */	bne .L_814FEB2C
/* 814FEB20 | 38 00 00 40 */	li r0, 0x40
/* 814FEB24 | 98 6D AE A0 */	stb r3, "@GUARD@headerAlignSize$2940"@sda21(r0)
/* 814FEB28 | 90 02 9C 00 */	stw r0, headerAlignSize$2940@sda21(r0)
.L_814FEB2C:
/* 814FEB2C | 38 01 00 27 */	addi r0, r1, 0x27
/* 814FEB30 | 83 C2 9C 00 */	lwz r30, headerAlignSize$2940@sda21(r0)
/* 814FEB34 | 54 1F 00 34 */	clrrwi r31, r0, 5
/* 814FEB38 | 38 7C 01 4C */	addi r3, r28, 0x14c
/* 814FEB3C | 7F E4 FB 78 */	mr r4, r31
/* 814FEB40 | 7F C5 F3 78 */	mr r5, r30
/* 814FEB44 | 38 C0 00 00 */	li r6, 0x0
/* 814FEB48 | 38 E0 00 02 */	li r7, 0x2
/* 814FEB4C | 48 04 A7 6D */	bl DVDReadPrio
/* 814FEB50 | 7C 03 F0 40 */	cmplw r3, r30
/* 814FEB54 | 41 82 00 0C */	beq .L_814FEB60
/* 814FEB58 | 38 00 00 00 */	li r0, 0x0
/* 814FEB5C | 48 00 00 20 */	b .L_814FEB7C
.L_814FEB60:
/* 814FEB60 | 7F E4 FB 78 */	mr r4, r31
/* 814FEB64 | 38 7C 01 08 */	addi r3, r28, 0x108
/* 814FEB68 | 48 00 7C 21 */	bl Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv
/* 814FEB6C | 7F 83 E3 78 */	mr r3, r28
/* 814FEB70 | 38 9C 01 08 */	addi r4, r28, 0x108
/* 814FEB74 | 48 00 76 71 */	bl Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader
/* 814FEB78 | 38 00 00 01 */	li r0, 0x1
.L_814FEB7C:
/* 814FEB7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FEB80 | 40 82 00 0C */	bne .L_814FEB8C
/* 814FEB84 | 38 60 00 00 */	li r3, 0x0
/* 814FEB88 | 48 00 00 70 */	b .L_814FEBF8
.L_814FEB8C:
/* 814FEB8C | 7F A3 EB 78 */	mr r3, r29
/* 814FEB90 | 48 0F A3 6D */	bl strlen
/* 814FEB94 | 37 C3 FF FF */	subic. r30, r3, 0x1
/* 814FEB98 | 38 1E 00 01 */	addi r0, r30, 0x1
/* 814FEB9C | 7C 7D F2 14 */	add r3, r29, r30
/* 814FEBA0 | 7C 09 03 A6 */	mtctr r0
/* 814FEBA4 | 41 80 00 50 */	blt .L_814FEBF4
.L_814FEBA8:
/* 814FEBA8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814FEBAC | 7C 00 07 74 */	extsb r0, r0
/* 814FEBB0 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 814FEBB4 | 41 82 00 0C */	beq .L_814FEBC0
/* 814FEBB8 | 2C 00 00 5C */	cmpwi r0, 0x5c
/* 814FEBBC | 40 82 00 2C */	bne .L_814FEBE8
.L_814FEBC0:
/* 814FEBC0 | 7F A4 EB 78 */	mr r4, r29
/* 814FEBC4 | 7F C5 F3 78 */	mr r5, r30
/* 814FEBC8 | 38 61 00 70 */	addi r3, r1, 0x70
/* 814FEBCC | 48 10 37 F9 */	bl strncpy
/* 814FEBD0 | 38 81 00 70 */	addi r4, r1, 0x70
/* 814FEBD4 | 38 00 00 00 */	li r0, 0x0
/* 814FEBD8 | 7C 04 F1 AE */	stbx r0, r4, r30
/* 814FEBDC | 7F 83 E3 78 */	mr r3, r28
/* 814FEBE0 | 48 00 7B 09 */	bl SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc
/* 814FEBE4 | 48 00 00 10 */	b .L_814FEBF4
.L_814FEBE8:
/* 814FEBE8 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814FEBEC | 38 63 FF FF */	subi r3, r3, 0x1
/* 814FEBF0 | 42 00 FF B8 */	bdnz .L_814FEBA8
.L_814FEBF4:
/* 814FEBF4 | 38 60 00 01 */	li r3, 0x1
.L_814FEBF8:
/* 814FEBF8 | 80 01 01 84 */	lwz r0, 0x184(r1)
/* 814FEBFC | 83 E1 01 7C */	lwz r31, 0x17c(r1)
/* 814FEC00 | 83 C1 01 78 */	lwz r30, 0x178(r1)
/* 814FEC04 | 83 A1 01 74 */	lwz r29, 0x174(r1)
/* 814FEC08 | 83 81 01 70 */	lwz r28, 0x170(r1)
/* 814FEC0C | 7C 08 03 A6 */	mtlr r0
/* 814FEC10 | 38 21 01 80 */	addi r1, r1, 0x180
/* 814FEC14 | 4E 80 00 20 */	blr
.endfn Open__Q34nw4r3snd15DvdSoundArchiveFPCc

# .text:0x22C | 0x814FEC18 | size: 0x40
# nw4r::snd::DvdSoundArchive::Close()
.fn Close__Q34nw4r3snd15DvdSoundArchiveFv, global
/* 814FEC18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FEC1C | 7C 08 02 A6 */	mflr r0
/* 814FEC20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FEC24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FEC28 | 7C 7F 1B 78 */	mr r31, r3
/* 814FEC2C | 38 63 01 4C */	addi r3, r3, 0x14c
/* 814FEC30 | 48 04 A3 BD */	bl DVDClose
/* 814FEC34 | 38 00 00 00 */	li r0, 0x0
/* 814FEC38 | 7F E3 FB 78 */	mr r3, r31
/* 814FEC3C | 98 1F 01 88 */	stb r0, 0x188(r31)
/* 814FEC40 | 48 00 75 AD */	bl Shutdown__Q34nw4r3snd12SoundArchiveFv
/* 814FEC44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FEC48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FEC4C | 7C 08 03 A6 */	mtlr r0
/* 814FEC50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FEC54 | 4E 80 00 20 */	blr
.endfn Close__Q34nw4r3snd15DvdSoundArchiveFv

# .text:0x26C | 0x814FEC58 | size: 0xB8
# nw4r::snd::DvdSoundArchive::OpenStream(void*, int, unsigned long, unsigned long) const
.fn OpenStream__Q34nw4r3snd15DvdSoundArchiveCFPviUlUl, global
/* 814FEC58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FEC5C | 7C 08 02 A6 */	mflr r0
/* 814FEC60 | 7C 68 1B 78 */	mr r8, r3
/* 814FEC64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FEC68 | 88 03 01 88 */	lbz r0, 0x188(r3)
/* 814FEC6C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FEC70 | 7C FF 3B 78 */	mr r31, r7
/* 814FEC74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FEC78 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FEC7C | 7C DE 33 78 */	mr r30, r6
/* 814FEC80 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FEC84 | 7C 9D 23 78 */	mr r29, r4
/* 814FEC88 | 40 82 00 0C */	bne .L_814FEC94
/* 814FEC8C | 38 60 00 00 */	li r3, 0x0
/* 814FEC90 | 48 00 00 64 */	b .L_814FECF4
.L_814FEC94:
/* 814FEC94 | 28 05 00 78 */	cmplwi r5, 0x78
/* 814FEC98 | 40 80 00 0C */	bge .L_814FECA4
/* 814FEC9C | 38 60 00 00 */	li r3, 0x0
/* 814FECA0 | 48 00 00 54 */	b .L_814FECF4
.L_814FECA4:
/* 814FECA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FECA8 | 41 82 00 48 */	beq .L_814FECF0
/* 814FECAC | 7F A3 EB 78 */	mr r3, r29
/* 814FECB0 | 38 88 01 4C */	addi r4, r8, 0x14c
/* 814FECB4 | 38 A0 00 00 */	li r5, 0x0
/* 814FECB8 | 48 01 49 2D */	bl fn_815135E4
/* 814FECBC | 3C 60 81 67 */	lis r3, __vt__Q44nw4r3snd15DvdSoundArchive13DvdFileStream@ha
/* 814FECC0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FECC4 | 38 63 F3 48 */	addi r3, r3, __vt__Q44nw4r3snd15DvdSoundArchive13DvdFileStream@l
/* 814FECC8 | 93 DD 00 70 */	stw r30, 0x70(r29)
/* 814FECCC | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814FECD0 | 93 FD 00 74 */	stw r31, 0x74(r29)
/* 814FECD4 | 40 82 00 0C */	bne .L_814FECE0
/* 814FECD8 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814FECDC | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_814FECE0:
/* 814FECE0 | 80 9D 00 70 */	lwz r4, 0x70(r29)
/* 814FECE4 | 7F A3 EB 78 */	mr r3, r29
/* 814FECE8 | 38 A0 00 00 */	li r5, 0x0
/* 814FECEC | 48 01 47 ED */	bl fn_815134D8
.L_814FECF0:
/* 814FECF0 | 7F A3 EB 78 */	mr r3, r29
.L_814FECF4:
/* 814FECF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FECF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FECFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FED00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FED04 | 7C 08 03 A6 */	mtlr r0
/* 814FED08 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FED0C | 4E 80 00 20 */	blr
.endfn OpenStream__Q34nw4r3snd15DvdSoundArchiveCFPviUlUl

# .text:0x324 | 0x814FED10 | size: 0xC8
# nw4r::snd::DvdSoundArchive::OpenExtStream(void*, int, const char*, unsigned long, unsigned long) const
.fn OpenExtStream__Q34nw4r3snd15DvdSoundArchiveCFPviPCcUlUl, global
/* 814FED10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FED14 | 7C 08 02 A6 */	mflr r0
/* 814FED18 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FED1C | 88 03 01 88 */	lbz r0, 0x188(r3)
/* 814FED20 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FED24 | 7D 1F 43 78 */	mr r31, r8
/* 814FED28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FED2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FED30 | 7C FE 3B 78 */	mr r30, r7
/* 814FED34 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FED38 | 7C 9D 23 78 */	mr r29, r4
/* 814FED3C | 40 82 00 0C */	bne .L_814FED48
/* 814FED40 | 38 60 00 00 */	li r3, 0x0
/* 814FED44 | 48 00 00 78 */	b .L_814FEDBC
.L_814FED48:
/* 814FED48 | 28 05 00 78 */	cmplwi r5, 0x78
/* 814FED4C | 40 80 00 0C */	bge .L_814FED58
/* 814FED50 | 38 60 00 00 */	li r3, 0x0
/* 814FED54 | 48 00 00 68 */	b .L_814FEDBC
.L_814FED58:
/* 814FED58 | 7C C3 33 78 */	mr r3, r6
/* 814FED5C | 48 04 9C 55 */	bl DVDConvertPathToEntrynum
/* 814FED60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FED64 | 7C 64 1B 78 */	mr r4, r3
/* 814FED68 | 40 80 00 0C */	bge .L_814FED74
/* 814FED6C | 38 60 00 00 */	li r3, 0x0
/* 814FED70 | 48 00 00 4C */	b .L_814FEDBC
.L_814FED74:
/* 814FED74 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FED78 | 41 82 00 40 */	beq .L_814FEDB8
/* 814FED7C | 7F A3 EB 78 */	mr r3, r29
/* 814FED80 | 48 01 47 F1 */	bl fn_81513570
/* 814FED84 | 3C 60 81 67 */	lis r3, __vt__Q44nw4r3snd15DvdSoundArchive13DvdFileStream@ha
/* 814FED88 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FED8C | 38 63 F3 48 */	addi r3, r3, __vt__Q44nw4r3snd15DvdSoundArchive13DvdFileStream@l
/* 814FED90 | 93 DD 00 70 */	stw r30, 0x70(r29)
/* 814FED94 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814FED98 | 93 FD 00 74 */	stw r31, 0x74(r29)
/* 814FED9C | 40 82 00 0C */	bne .L_814FEDA8
/* 814FEDA0 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 814FEDA4 | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_814FEDA8:
/* 814FEDA8 | 80 9D 00 70 */	lwz r4, 0x70(r29)
/* 814FEDAC | 7F A3 EB 78 */	mr r3, r29
/* 814FEDB0 | 38 A0 00 00 */	li r5, 0x0
/* 814FEDB4 | 48 01 47 25 */	bl fn_815134D8
.L_814FEDB8:
/* 814FEDB8 | 7F A3 EB 78 */	mr r3, r29
.L_814FEDBC:
/* 814FEDBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FEDC0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FEDC4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FEDC8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FEDCC | 7C 08 03 A6 */	mtlr r0
/* 814FEDD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FEDD4 | 4E 80 00 20 */	blr
.endfn OpenExtStream__Q34nw4r3snd15DvdSoundArchiveCFPviPCcUlUl

# .text:0x3EC | 0x814FEDD8 | size: 0x8
# nw4r::snd::DvdSoundArchive::detail_GetRequiredStreamBufferSize() const
.fn detail_GetRequiredStreamBufferSize__Q34nw4r3snd15DvdSoundArchiveCFv, global
/* 814FEDD8 | 38 60 00 78 */	li r3, 0x78
/* 814FEDDC | 4E 80 00 20 */	blr
.endfn detail_GetRequiredStreamBufferSize__Q34nw4r3snd15DvdSoundArchiveCFv

# .text:0x3F4 | 0x814FEDE0 | size: 0x88
# nw4r::snd::DvdSoundArchive::LoadHeader(void*, unsigned long)
.fn LoadHeader__Q34nw4r3snd15DvdSoundArchiveFPvUl, global
/* 814FEDE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FEDE4 | 7C 08 02 A6 */	mflr r0
/* 814FEDE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FEDEC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FEDF0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FEDF4 | 7C 9E 23 78 */	mr r30, r4
/* 814FEDF8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FEDFC | 7C 7D 1B 78 */	mr r29, r3
/* 814FEE00 | 83 E3 01 24 */	lwz r31, 0x124(r3)
/* 814FEE04 | 80 C3 01 20 */	lwz r6, 0x120(r3)
/* 814FEE08 | 7C 05 F8 40 */	cmplw r5, r31
/* 814FEE0C | 40 80 00 0C */	bge .L_814FEE18
/* 814FEE10 | 38 60 00 00 */	li r3, 0x0
/* 814FEE14 | 48 00 00 38 */	b .L_814FEE4C
.L_814FEE18:
/* 814FEE18 | 7F E5 FB 78 */	mr r5, r31
/* 814FEE1C | 38 E0 00 02 */	li r7, 0x2
/* 814FEE20 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 814FEE24 | 48 04 A4 95 */	bl DVDReadPrio
/* 814FEE28 | 7C 03 F8 40 */	cmplw r3, r31
/* 814FEE2C | 41 82 00 0C */	beq .L_814FEE38
/* 814FEE30 | 38 60 00 00 */	li r3, 0x0
/* 814FEE34 | 48 00 00 18 */	b .L_814FEE4C
.L_814FEE38:
/* 814FEE38 | 7F C4 F3 78 */	mr r4, r30
/* 814FEE3C | 7F E5 FB 78 */	mr r5, r31
/* 814FEE40 | 38 7D 01 08 */	addi r3, r29, 0x108
/* 814FEE44 | 48 00 7A 9D */	bl SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 814FEE48 | 38 60 00 01 */	li r3, 0x1
.L_814FEE4C:
/* 814FEE4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FEE50 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FEE54 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FEE58 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FEE5C | 7C 08 03 A6 */	mtlr r0
/* 814FEE60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FEE64 | 4E 80 00 20 */	blr
.endfn LoadHeader__Q34nw4r3snd15DvdSoundArchiveFPvUl

# .text:0x47C | 0x814FEE68 | size: 0x88
# nw4r::snd::DvdSoundArchive::LoadLabelStringData(void*, unsigned long)
.fn LoadLabelStringData__Q34nw4r3snd15DvdSoundArchiveFPvUl, global
/* 814FEE68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FEE6C | 7C 08 02 A6 */	mflr r0
/* 814FEE70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FEE74 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FEE78 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FEE7C | 7C 9E 23 78 */	mr r30, r4
/* 814FEE80 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FEE84 | 7C 7D 1B 78 */	mr r29, r3
/* 814FEE88 | 83 E3 01 1C */	lwz r31, 0x11c(r3)
/* 814FEE8C | 80 C3 01 18 */	lwz r6, 0x118(r3)
/* 814FEE90 | 7C 05 F8 40 */	cmplw r5, r31
/* 814FEE94 | 40 80 00 0C */	bge .L_814FEEA0
/* 814FEE98 | 38 60 00 00 */	li r3, 0x0
/* 814FEE9C | 48 00 00 38 */	b .L_814FEED4
.L_814FEEA0:
/* 814FEEA0 | 7F E5 FB 78 */	mr r5, r31
/* 814FEEA4 | 38 E0 00 02 */	li r7, 0x2
/* 814FEEA8 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 814FEEAC | 48 04 A4 0D */	bl DVDReadPrio
/* 814FEEB0 | 7C 03 F8 40 */	cmplw r3, r31
/* 814FEEB4 | 41 82 00 0C */	beq .L_814FEEC0
/* 814FEEB8 | 38 60 00 00 */	li r3, 0x0
/* 814FEEBC | 48 00 00 18 */	b .L_814FEED4
.L_814FEEC0:
/* 814FEEC0 | 7F C4 F3 78 */	mr r4, r30
/* 814FEEC4 | 7F E5 FB 78 */	mr r5, r31
/* 814FEEC8 | 38 7D 01 08 */	addi r3, r29, 0x108
/* 814FEECC | 48 00 79 6D */	bl SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 814FEED0 | 38 60 00 01 */	li r3, 0x1
.L_814FEED4:
/* 814FEED4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FEED8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FEEDC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FEEE0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FEEE4 | 7C 08 03 A6 */	mtlr r0
/* 814FEEE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FEEEC | 4E 80 00 20 */	blr
.endfn LoadLabelStringData__Q34nw4r3snd15DvdSoundArchiveFPvUl

# .text:0x504 | 0x814FEEF0 | size: 0x2C
# nw4r::snd::DvdSoundArchive::DvdFileStream::Read(void*, unsigned long)
.fn Read__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFPvUl, global
/* 814FEEF0 | 81 03 00 18 */	lwz r8, 0x18(r3)
/* 814FEEF4 | 80 E3 00 70 */	lwz r7, 0x70(r3)
/* 814FEEF8 | 80 C3 00 74 */	lwz r6, 0x74(r3)
/* 814FEEFC | 7C 08 2A 14 */	add r0, r8, r5
/* 814FEF00 | 7C C7 32 14 */	add r6, r7, r6
/* 814FEF04 | 7C 00 30 40 */	cmplw r0, r6
/* 814FEF08 | 40 81 00 10 */	ble .L_814FEF18
/* 814FEF0C | 7C A8 30 50 */	subf r5, r8, r6
/* 814FEF10 | 38 05 00 1F */	addi r0, r5, 0x1f
/* 814FEF14 | 54 05 00 34 */	clrrwi r5, r0, 5
.L_814FEF18:
/* 814FEF18 | 48 01 47 98 */	b fn_815136B0
.endfn Read__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFPvUl

# .text:0x530 | 0x814FEF1C | size: 0x88
# nw4r::snd::DvdSoundArchive::DvdFileStream::Seek(long, unsigned long)
.fn Seek__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFlUl, global
/* 814FEF1C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814FEF20 | 41 82 00 2C */	beq .L_814FEF4C
/* 814FEF24 | 40 80 00 10 */	bge .L_814FEF34
/* 814FEF28 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FEF2C | 40 80 00 14 */	bge .L_814FEF40
/* 814FEF30 | 4E 80 00 20 */	blr
.L_814FEF34:
/* 814FEF34 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 814FEF38 | 4C 80 00 20 */	bgelr
/* 814FEF3C | 48 00 00 1C */	b .L_814FEF58
.L_814FEF40:
/* 814FEF40 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 814FEF44 | 7C 84 02 14 */	add r4, r4, r0
/* 814FEF48 | 48 00 00 28 */	b .L_814FEF70
.L_814FEF4C:
/* 814FEF4C | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814FEF50 | 7C 84 02 14 */	add r4, r4, r0
/* 814FEF54 | 48 00 00 1C */	b .L_814FEF70
.L_814FEF58:
/* 814FEF58 | 80 A3 00 70 */	lwz r5, 0x70(r3)
/* 814FEF5C | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 814FEF60 | 7C 05 02 14 */	add r0, r5, r0
/* 814FEF64 | 7C 84 00 50 */	subf r4, r4, r0
/* 814FEF68 | 48 00 00 08 */	b .L_814FEF70
/* 814FEF6C | 4E 80 00 20 */	blr
.L_814FEF70:
/* 814FEF70 | 80 A3 00 70 */	lwz r5, 0x70(r3)
/* 814FEF74 | 7C 04 28 00 */	cmpw r4, r5
/* 814FEF78 | 40 80 00 0C */	bge .L_814FEF84
/* 814FEF7C | 7C A4 2B 78 */	mr r4, r5
/* 814FEF80 | 48 00 00 18 */	b .L_814FEF98
.L_814FEF84:
/* 814FEF84 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 814FEF88 | 7C 05 02 14 */	add r0, r5, r0
/* 814FEF8C | 7C 04 00 00 */	cmpw r4, r0
/* 814FEF90 | 40 81 00 08 */	ble .L_814FEF98
/* 814FEF94 | 7C 04 03 78 */	mr r4, r0
.L_814FEF98:
/* 814FEF98 | 38 A0 00 00 */	li r5, 0x0
/* 814FEF9C | 48 01 45 3C */	b fn_815134D8
/* 814FEFA0 | 4E 80 00 20 */	blr
.endfn Seek__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFlUl

# .text:0x5B8 | 0x814FEFA4 | size: 0x8
# nw4r::ut::DvdFileStream::GetBufferAlign() const
.fn GetBufferAlign__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFA4 | 38 60 00 20 */	li r3, 0x20
/* 814FEFA8 | 4E 80 00 20 */	blr
.endfn GetBufferAlign__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5C0 | 0x814FEFAC | size: 0x8
# nw4r::ut::DvdFileStream::GetSizeAlign() const
.fn GetSizeAlign__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFAC | 38 60 00 20 */	li r3, 0x20
/* 814FEFB0 | 4E 80 00 20 */	blr
.endfn GetSizeAlign__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5C8 | 0x814FEFB4 | size: 0x8
# nw4r::ut::DvdFileStream::GetOffsetAlign() const
.fn GetOffsetAlign__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFB4 | 38 60 00 04 */	li r3, 0x4
/* 814FEFB8 | 4E 80 00 20 */	blr
.endfn GetOffsetAlign__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5D0 | 0x814FEFBC | size: 0x8
# nw4r::ut::DvdFileStream::CanCancel() const
.fn CanCancel__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFBC | 38 60 00 01 */	li r3, 0x1
/* 814FEFC0 | 4E 80 00 20 */	blr
.endfn CanCancel__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5D8 | 0x814FEFC4 | size: 0x8
# nw4r::ut::DvdFileStream::CanWrite() const
.fn CanWrite__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFC4 | 38 60 00 00 */	li r3, 0x0
/* 814FEFC8 | 4E 80 00 20 */	blr
.endfn CanWrite__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5E0 | 0x814FEFCC | size: 0x8
# nw4r::ut::DvdFileStream::CanRead() const
.fn CanRead__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFCC | 38 60 00 01 */	li r3, 0x1
/* 814FEFD0 | 4E 80 00 20 */	blr
.endfn CanRead__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5E8 | 0x814FEFD4 | size: 0x8
# nw4r::ut::DvdFileStream::CanSeek() const
.fn CanSeek__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFD4 | 38 60 00 01 */	li r3, 0x1
/* 814FEFD8 | 4E 80 00 20 */	blr
.endfn CanSeek__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5F0 | 0x814FEFDC | size: 0x8
# nw4r::ut::DvdFileStream::IsBusy() const
.fn IsBusy__Q34nw4r2ut13DvdFileStreamCFv, global
/* 814FEFDC | 88 63 00 6C */	lbz r3, 0x6c(r3)
/* 814FEFE0 | 4E 80 00 20 */	blr
.endfn IsBusy__Q34nw4r2ut13DvdFileStreamCFv

# .text:0x5F8 | 0x814FEFE4 | size: 0x8
# nw4r::ut::DvdLockedFileStream::CanAsync() const
.fn CanAsync__Q34nw4r2ut19DvdLockedFileStreamCFv, global
/* 814FEFE4 | 38 60 00 00 */	li r3, 0x0
/* 814FEFE8 | 4E 80 00 20 */	blr
.endfn CanAsync__Q34nw4r2ut19DvdLockedFileStreamCFv

# .text:0x600 | 0x814FEFEC | size: 0x8
# nw4r::ut::DvdLockedFileStream::PeekAsync(void*, unsigned long, void (*)(long, nw4r::ut::IOStream*, void*), void*)
.fn PeekAsync__Q34nw4r2ut19DvdLockedFileStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv, global
/* 814FEFEC | 38 60 00 00 */	li r3, 0x0
/* 814FEFF0 | 4E 80 00 20 */	blr
.endfn PeekAsync__Q34nw4r2ut19DvdLockedFileStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv

# .text:0x608 | 0x814FEFF4 | size: 0x8
# nw4r::ut::DvdLockedFileStream::ReadAsync(void*, unsigned long, void (*)(long, nw4r::ut::IOStream*, void*), void*)
.fn ReadAsync__Q34nw4r2ut19DvdLockedFileStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv, global
/* 814FEFF4 | 38 60 00 00 */	li r3, 0x0
/* 814FEFF8 | 4E 80 00 20 */	blr
.endfn ReadAsync__Q34nw4r2ut19DvdLockedFileStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv

# .text:0x610 | 0x814FEFFC | size: 0x8
# nw4r::ut::DvdLockedFileStream::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q34nw4r2ut19DvdLockedFileStreamCFv, global
/* 814FEFFC | 38 6D AF 20 */	li r3, lbl_81698F60@sda21
/* 814FF000 | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q34nw4r2ut19DvdLockedFileStreamCFv

# .text:0x618 | 0x814FF004 | size: 0x8
# nw4r::snd::DvdSoundArchive::DvdFileStream::GetSize() const
.fn GetSize__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamCFv, global
/* 814FF004 | 80 63 00 74 */	lwz r3, 0x74(r3)
/* 814FF008 | 4E 80 00 20 */	blr
.endfn GetSize__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamCFv

# .text:0x620 | 0x814FF00C | size: 0x10
# nw4r::snd::DvdSoundArchive::DvdFileStream::Tell() const
.fn Tell__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamCFv, global
/* 814FF00C | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 814FF010 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814FF014 | 7C 64 00 50 */	subf r3, r4, r0
/* 814FF018 | 4E 80 00 20 */	blr
.endfn Tell__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamCFv

# .text:0x630 | 0x814FF01C | size: 0x8
# nw4r::snd::DvdSoundArchive::detail_GetWaveDataFileAddress(unsigned long) const
.fn detail_GetWaveDataFileAddress__Q34nw4r3snd15DvdSoundArchiveCFUl, global
/* 814FF01C | 38 60 00 00 */	li r3, 0x0
/* 814FF020 | 4E 80 00 20 */	blr
.endfn detail_GetWaveDataFileAddress__Q34nw4r3snd15DvdSoundArchiveCFUl

# .text:0x638 | 0x814FF024 | size: 0x8
# nw4r::snd::DvdSoundArchive::detail_GetFileAddress(unsigned long) const
.fn detail_GetFileAddress__Q34nw4r3snd15DvdSoundArchiveCFUl, global
/* 814FF024 | 38 60 00 00 */	li r3, 0x0
/* 814FF028 | 4E 80 00 20 */	blr
.endfn detail_GetFileAddress__Q34nw4r3snd15DvdSoundArchiveCFUl

# .text:0x640 | 0x814FF02C | size: 0x58
# nw4r::snd::DvdSoundArchive::DvdFileStream::~DvdFileStream()
.fn __dt__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFv, global
/* 814FF02C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FF030 | 7C 08 02 A6 */	mflr r0
/* 814FF034 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FF038 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FF03C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FF040 | 7C 9F 23 78 */	mr r31, r4
/* 814FF044 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FF048 | 7C 7E 1B 78 */	mr r30, r3
/* 814FF04C | 41 82 00 1C */	beq .L_814FF068
/* 814FF050 | 38 80 00 00 */	li r4, 0x0
/* 814FF054 | 48 01 46 05 */	bl fn_81513658
/* 814FF058 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FF05C | 40 81 00 0C */	ble .L_814FF068
/* 814FF060 | 7F C3 F3 78 */	mr r3, r30
/* 814FF064 | 48 0F 90 81 */	bl __dl__FPv
.L_814FF068:
/* 814FF068 | 7F C3 F3 78 */	mr r3, r30
/* 814FF06C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FF070 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FF074 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FF078 | 7C 08 03 A6 */	mtlr r0
/* 814FF07C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FF080 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFv

# 0x8166F348..0x8166F3D0 | size: 0x88
.data
.balign 8

# .data:0x0 | 0x8166F348 | size: 0x68
# nw4r::snd::DvdSoundArchive::DvdFileStream::__vtable
.obj __vt__Q44nw4r3snd15DvdSoundArchive13DvdFileStream, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q34nw4r2ut19DvdLockedFileStreamCFv
	.4byte __dt__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFv
	.4byte fn_81513258
	.4byte Read__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFPvUl
	.4byte ReadAsync__Q34nw4r2ut19DvdLockedFileStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv
	.4byte fn_81512E1C
	.4byte fn_81512E20
	.4byte IsBusy__Q34nw4r2ut13DvdFileStreamCFv
	.4byte CanAsync__Q34nw4r2ut19DvdLockedFileStreamCFv
	.4byte CanRead__Q34nw4r2ut13DvdFileStreamCFv
	.4byte CanWrite__Q34nw4r2ut13DvdFileStreamCFv
	.4byte GetOffsetAlign__Q34nw4r2ut13DvdFileStreamCFv
	.4byte GetSizeAlign__Q34nw4r2ut13DvdFileStreamCFv
	.4byte GetBufferAlign__Q34nw4r2ut13DvdFileStreamCFv
	.4byte GetSize__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamCFv
	.4byte Seek__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamFlUl
	.4byte fn_815134E0
	.4byte fn_815134E8
	.4byte CanSeek__Q34nw4r2ut13DvdFileStreamCFv
	.4byte CanCancel__Q34nw4r2ut13DvdFileStreamCFv
	.4byte Tell__Q44nw4r3snd15DvdSoundArchive13DvdFileStreamCFv
	.4byte fn_81513724
	.4byte PeekAsync__Q34nw4r2ut19DvdLockedFileStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd15DvdSoundArchive13DvdFileStream

# .data:0x68 | 0x8166F3B0 | size: 0x20
# nw4r::snd::DvdSoundArchive::__vtable
.obj __vt__Q34nw4r3snd15DvdSoundArchive, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd15DvdSoundArchiveFv
	.4byte detail_GetFileAddress__Q34nw4r3snd15DvdSoundArchiveCFUl
	.4byte detail_GetWaveDataFileAddress__Q34nw4r3snd15DvdSoundArchiveCFUl
	.4byte detail_GetRequiredStreamBufferSize__Q34nw4r3snd15DvdSoundArchiveCFv
	.4byte OpenStream__Q34nw4r3snd15DvdSoundArchiveCFPviUlUl
	.4byte OpenExtStream__Q34nw4r3snd15DvdSoundArchiveCFPviPCcUlUl
.endobj __vt__Q34nw4r3snd15DvdSoundArchive

# 0x81696000..0x81696008 | size: 0x8
.section .sbss2, "a", @nobits
.balign 8

# .sbss2:0x0 | 0x81696000 | size: 0x4
.obj headerAlignSize$2940, local
	.skip 0x4
.endobj headerAlignSize$2940

# .sbss2:0x4 | 0x81696004 | size: 0x4
.obj gap_10_81696004_sbss2, global
.hidden gap_10_81696004_sbss2
	.skip 0x4
.endobj gap_10_81696004_sbss2

# 0x81698EE0..0x81698EE8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EE0 | size: 0x1
.obj "@GUARD@headerAlignSize$2940", local
	.skip 0x1
.endobj "@GUARD@headerAlignSize$2940"

# .sbss:0x1 | 0x81698EE1 | size: 0x7
.obj gap_12_81698EE1_sbss, global
.hidden gap_12_81698EE1_sbss
	.skip 0x7
.endobj gap_12_81698EE1_sbss
