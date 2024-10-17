.include "macros.inc"
.file "snd_SoundArchive.cpp"

# 0x8150616C..0x81507514 | size: 0x13A8
.text
.balign 4

# .text:0x0 | 0x8150616C | size: 0x24
# nw4r::snd::SoundArchive::SoundArchive()
.fn __ct__Q34nw4r3snd12SoundArchiveFv, global
/* 8150616C | 3C A0 81 67 */	lis r5, __vt__Q34nw4r3snd12SoundArchive@ha
/* 81506170 | 38 80 00 00 */	li r4, 0x0
/* 81506174 | 38 A5 F8 F8 */	addi r5, r5, __vt__Q34nw4r3snd12SoundArchive@l
/* 81506178 | 38 00 00 2F */	li r0, 0x2f
/* 8150617C | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81506180 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81506184 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 81506188 | 98 83 00 09 */	stb r4, 0x9(r3)
/* 8150618C | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd12SoundArchiveFv

# .text:0x24 | 0x81506190 | size: 0x40
# nw4r::snd::SoundArchive::~SoundArchive()
.fn __dt__Q34nw4r3snd12SoundArchiveFv, global
/* 81506190 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81506194 | 7C 08 02 A6 */	mflr r0
/* 81506198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150619C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815061A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815061A4 | 7C 7F 1B 78 */	mr r31, r3
/* 815061A8 | 41 82 00 10 */	beq .L_815061B8
/* 815061AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815061B0 | 40 81 00 08 */	ble .L_815061B8
/* 815061B4 | 48 0F 1F 31 */	bl __dl__FPv
.L_815061B8:
/* 815061B8 | 7F E3 FB 78 */	mr r3, r31
/* 815061BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815061C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815061C4 | 7C 08 03 A6 */	mtlr r0
/* 815061C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815061CC | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd12SoundArchiveFv

# .text:0x64 | 0x815061D0 | size: 0x14
# nw4r::snd::SoundArchive::IsAvailable() const
.fn IsAvailable__Q34nw4r3snd12SoundArchiveCFv, global
/* 815061D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 815061D4 | 7C 03 00 D0 */	neg r0, r3
/* 815061D8 | 7C 00 1B 78 */	or r0, r0, r3
/* 815061DC | 54 03 0F FE */	srwi r3, r0, 31
/* 815061E0 | 4E 80 00 20 */	blr
.endfn IsAvailable__Q34nw4r3snd12SoundArchiveCFv

# .text:0x78 | 0x815061E4 | size: 0x8
# nw4r::snd::SoundArchive::Setup(nw4r::snd::detail::SoundArchiveFileReader*)
.fn Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader, global
/* 815061E4 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 815061E8 | 4E 80 00 20 */	blr
.endfn Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader

# .text:0x80 | 0x815061EC | size: 0x18
# nw4r::snd::SoundArchive::Shutdown()
.fn Shutdown__Q34nw4r3snd12SoundArchiveFv, global
/* 815061EC | 38 80 00 00 */	li r4, 0x0
/* 815061F0 | 38 00 00 2F */	li r0, 0x2f
/* 815061F4 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 815061F8 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 815061FC | 98 83 00 09 */	stb r4, 0x9(r3)
/* 81506200 | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd12SoundArchiveFv

# .text:0x98 | 0x81506204 | size: 0x8
# nw4r::snd::SoundArchive::GetPlayerCount() const
.fn GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv, global
/* 81506204 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506208 | 48 00 0E 2C */	b GetPlayerCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv
.endfn GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv

# .text:0xA0 | 0x8150620C | size: 0x8
# nw4r::snd::SoundArchive::GetGroupCount() const
.fn GetGroupCount__Q34nw4r3snd12SoundArchiveCFv, global
/* 8150620C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506210 | 48 00 0E 64 */	b GetGroupCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv
.endfn GetGroupCount__Q34nw4r3snd12SoundArchiveCFv

# .text:0xA8 | 0x81506214 | size: 0x10
# nw4r::snd::SoundArchive::ConvertLabelStringToSoundId(const char*) const
.fn ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc, global
/* 81506214 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506218 | 7C 85 23 78 */	mr r5, r4
/* 8150621C | 80 83 00 34 */	lwz r4, 0x34(r3)
/* 81506220 | 48 00 10 B8 */	b ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc
.endfn ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc

# .text:0xB8 | 0x81506224 | size: 0x10
# nw4r::snd::SoundArchive::ConvertLabelStringToGroupId(const char*) const
.fn ConvertLabelStringToGroupId__Q34nw4r3snd12SoundArchiveCFPCc, global
/* 81506224 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506228 | 7C 85 23 78 */	mr r5, r4
/* 8150622C | 80 83 00 3C */	lwz r4, 0x3c(r3)
/* 81506230 | 48 00 10 A8 */	b ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc
.endfn ConvertLabelStringToGroupId__Q34nw4r3snd12SoundArchiveCFPCc

# .text:0xC8 | 0x81506234 | size: 0x8
# nw4r::snd::SoundArchive::GetSoundType(unsigned long) const
.fn GetSoundType__Q34nw4r3snd12SoundArchiveCFUl, global
/* 81506234 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506238 | 48 00 06 B4 */	b GetSoundType__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl
.endfn GetSoundType__Q34nw4r3snd12SoundArchiveCFUl

# .text:0xD0 | 0x8150623C | size: 0x8
# nw4r::snd::SoundArchive::ReadSoundInfo(unsigned long, nw4r::snd::SoundArchive::SoundInfo*) const
.fn ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo, global
/* 8150623C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506240 | 48 00 07 9C */	b ReadSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9SoundInfo
.endfn ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo

# .text:0xD8 | 0x81506244 | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadSeqSoundInfo(unsigned long, nw4r::snd::SoundArchive::SeqSoundInfo*) const
.fn detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo, global
/* 81506244 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506248 | 48 00 08 80 */	b ReadSeqSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo
.endfn detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo

# .text:0xE0 | 0x8150624C | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadStrmSoundInfo(unsigned long, nw4r::snd::SoundArchive::StrmSoundInfo*) const
.fn detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo, global
/* 8150624C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506250 | 48 00 08 F8 */	b ReadStrmSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo
.endfn detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo

# .text:0xE8 | 0x81506254 | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadWaveSoundInfo(unsigned long, nw4r::snd::SoundArchive::WaveSoundInfo*) const
.fn detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo, global
/* 81506254 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506258 | 48 00 09 3C */	b ReadWaveSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo
.endfn detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo

# .text:0xF0 | 0x8150625C | size: 0x8
# nw4r::snd::SoundArchive::ReadPlayerInfo(unsigned long, nw4r::snd::SoundArchive::PlayerInfo*) const
.fn ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo, global
/* 8150625C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506260 | 48 00 0A 50 */	b ReadPlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo
.endfn ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo

# .text:0xF8 | 0x81506264 | size: 0x8
# nw4r::snd::SoundArchive::ReadSoundArchivePlayerInfo(nw4r::snd::SoundArchive::SoundArchivePlayerInfo*) const
.fn ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo, global
/* 81506264 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506268 | 48 00 0D 48 */	b ReadSoundArchivePlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
.endfn ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo

# .text:0x100 | 0x8150626C | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadBankInfo(unsigned long, nw4r::snd::SoundArchive::BankInfo*) const
.fn detail_ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo, global
/* 8150626C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506270 | 48 00 09 94 */	b ReadBankInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8BankInfo
.endfn detail_ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo

# .text:0x108 | 0x81506274 | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadGroupInfo(unsigned long, nw4r::snd::SoundArchive::GroupInfo*) const
.fn detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo, global
/* 81506274 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506278 | 48 00 0A F0 */	b ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
.endfn detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo

# .text:0x110 | 0x8150627C | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadGroupItemInfo(unsigned long, unsigned long, nw4r::snd::SoundArchive::GroupItemInfo*) const
.fn detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo, global
/* 8150627C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506280 | 48 00 0B F8 */	b ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
.endfn detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo

# .text:0x118 | 0x81506284 | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadFileInfo(unsigned long, nw4r::snd::SoundArchive::FileInfo*) const
.fn detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo, global
/* 81506284 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506288 | 48 00 0E 30 */	b ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo
.endfn detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo

# .text:0x120 | 0x8150628C | size: 0x8
# nw4r::snd::SoundArchive::detail_ReadFilePos(unsigned long, unsigned long, nw4r::snd::SoundArchive::FilePos*) const
.fn detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos, global
/* 8150628C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81506290 | 48 00 0F 28 */	b ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
.endfn detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos

# .text:0x128 | 0x81506294 | size: 0x224
# nw4r::snd::SoundArchive::detail_OpenFileStream(unsigned long, void*, int) const
.fn detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi, global
/* 81506294 | 94 21 FD 90 */	stwu r1, -0x270(r1)
/* 81506298 | 7C 08 02 A6 */	mflr r0
/* 8150629C | 90 01 02 74 */	stw r0, 0x274(r1)
/* 815062A0 | 39 61 02 70 */	addi r11, r1, 0x270
/* 815062A4 | 48 0F 32 15 */	bl _savegpr_25
/* 815062A8 | 7C 7D 1B 78 */	mr r29, r3
/* 815062AC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 815062B0 | 7C BE 2B 78 */	mr r30, r5
/* 815062B4 | 7C 99 23 78 */	mr r25, r4
/* 815062B8 | 7C DF 33 78 */	mr r31, r6
/* 815062BC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 815062C0 | 48 00 0D F9 */	bl ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo
/* 815062C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815062C8 | 40 82 00 0C */	bne .L_815062D4
/* 815062CC | 38 60 00 00 */	li r3, 0x0
/* 815062D0 | 48 00 01 D0 */	b .L_815064A0
.L_815062D4:
/* 815062D4 | 83 61 00 18 */	lwz r27, 0x18(r1)
/* 815062D8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 815062DC | 41 82 00 90 */	beq .L_8150636C
/* 815062E0 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 815062E4 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 815062E8 | 40 82 00 08 */	bne .L_815062F0
/* 815062EC | 48 00 00 54 */	b .L_81506340
.L_815062F0:
/* 815062F0 | 7F 63 DB 78 */	mr r3, r27
/* 815062F4 | 48 0F 2C 09 */	bl strlen
/* 815062F8 | 7C 7C 1B 78 */	mr r28, r3
/* 815062FC | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81506300 | 48 0F 2B FD */	bl strlen
/* 81506304 | 7C 1C 1A 14 */	add r0, r28, r3
/* 81506308 | 7C 65 1B 78 */	mr r5, r3
/* 8150630C | 28 00 01 00 */	cmplwi r0, 0x100
/* 81506310 | 41 80 00 0C */	blt .L_8150631C
/* 81506314 | 38 60 00 00 */	li r3, 0x0
/* 81506318 | 48 00 01 88 */	b .L_815064A0
.L_8150631C:
/* 8150631C | 38 61 01 50 */	addi r3, r1, 0x150
/* 81506320 | 38 9D 00 08 */	addi r4, r29, 0x8
/* 81506324 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81506328 | 48 0F C0 9D */	bl strncpy
/* 8150632C | 7F 64 DB 78 */	mr r4, r27
/* 81506330 | 38 61 01 50 */	addi r3, r1, 0x150
/* 81506334 | 38 BC 00 01 */	addi r5, r28, 0x1
/* 81506338 | 48 0F C0 FD */	bl strncat
/* 8150633C | 3B 61 01 50 */	addi r27, r1, 0x150
.L_81506340:
/* 81506340 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81506344 | 7F A3 EB 78 */	mr r3, r29
/* 81506348 | 7F C4 F3 78 */	mr r4, r30
/* 8150634C | 7F E5 FB 78 */	mr r5, r31
/* 81506350 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81506354 | 7F 66 DB 78 */	mr r6, r27
/* 81506358 | 38 E0 00 00 */	li r7, 0x0
/* 8150635C | 39 00 00 00 */	li r8, 0x0
/* 81506360 | 7D 89 03 A6 */	mtctr r12
/* 81506364 | 4E 80 04 21 */	bctrl
/* 81506368 | 48 00 01 38 */	b .L_815064A0
.L_8150636C:
/* 8150636C | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81506370 | 7F 24 CB 78 */	mr r4, r25
/* 81506374 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81506378 | 38 A0 00 00 */	li r5, 0x0
/* 8150637C | 48 00 0E 3D */	bl ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 81506380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506384 | 40 82 00 0C */	bne .L_81506390
/* 81506388 | 38 60 00 00 */	li r3, 0x0
/* 8150638C | 48 00 01 14 */	b .L_815064A0
.L_81506390:
/* 81506390 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81506394 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 81506398 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8150639C | 48 00 09 CD */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 815063A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815063A4 | 40 82 00 0C */	bne .L_815063B0
/* 815063A8 | 38 60 00 00 */	li r3, 0x0
/* 815063AC | 48 00 00 F4 */	b .L_815064A0
.L_815063B0:
/* 815063B0 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 815063B4 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 815063B8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815063BC | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 815063C0 | 48 00 0A B9 */	bl ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 815063C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815063C8 | 40 82 00 0C */	bne .L_815063D4
/* 815063CC | 38 60 00 00 */	li r3, 0x0
/* 815063D0 | 48 00 00 D0 */	b .L_815064A0
.L_815063D4:
/* 815063D4 | 83 61 00 3C */	lwz r27, 0x3c(r1)
/* 815063D8 | 80 61 00 40 */	lwz r3, 0x40(r1)
/* 815063DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815063E0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 815063E4 | 83 21 00 28 */	lwz r25, 0x28(r1)
/* 815063E8 | 7F 43 02 14 */	add r26, r3, r0
/* 815063EC | 41 82 00 90 */	beq .L_8150647C
/* 815063F0 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 815063F4 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 815063F8 | 40 82 00 08 */	bne .L_81506400
/* 815063FC | 48 00 00 54 */	b .L_81506450
.L_81506400:
/* 81506400 | 7F 63 DB 78 */	mr r3, r27
/* 81506404 | 48 0F 2A F9 */	bl strlen
/* 81506408 | 7C 7C 1B 78 */	mr r28, r3
/* 8150640C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81506410 | 48 0F 2A ED */	bl strlen
/* 81506414 | 7C 1C 1A 14 */	add r0, r28, r3
/* 81506418 | 7C 65 1B 78 */	mr r5, r3
/* 8150641C | 28 00 01 00 */	cmplwi r0, 0x100
/* 81506420 | 41 80 00 0C */	blt .L_8150642C
/* 81506424 | 38 60 00 00 */	li r3, 0x0
/* 81506428 | 48 00 00 78 */	b .L_815064A0
.L_8150642C:
/* 8150642C | 38 61 00 50 */	addi r3, r1, 0x50
/* 81506430 | 38 9D 00 08 */	addi r4, r29, 0x8
/* 81506434 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81506438 | 48 0F BF 8D */	bl strncpy
/* 8150643C | 7F 64 DB 78 */	mr r4, r27
/* 81506440 | 38 61 00 50 */	addi r3, r1, 0x50
/* 81506444 | 38 BC 00 01 */	addi r5, r28, 0x1
/* 81506448 | 48 0F BF ED */	bl strncat
/* 8150644C | 3B 61 00 50 */	addi r27, r1, 0x50
.L_81506450:
/* 81506450 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81506454 | 7F A3 EB 78 */	mr r3, r29
/* 81506458 | 7F C4 F3 78 */	mr r4, r30
/* 8150645C | 7F E5 FB 78 */	mr r5, r31
/* 81506460 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81506464 | 7F 66 DB 78 */	mr r6, r27
/* 81506468 | 7F 47 D3 78 */	mr r7, r26
/* 8150646C | 7F 28 CB 78 */	mr r8, r25
/* 81506470 | 7D 89 03 A6 */	mtctr r12
/* 81506474 | 4E 80 04 21 */	bctrl
/* 81506478 | 48 00 00 28 */	b .L_815064A0
.L_8150647C:
/* 8150647C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81506480 | 7F A3 EB 78 */	mr r3, r29
/* 81506484 | 7F C4 F3 78 */	mr r4, r30
/* 81506488 | 7F E5 FB 78 */	mr r5, r31
/* 8150648C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81506490 | 7F 46 D3 78 */	mr r6, r26
/* 81506494 | 7F 27 CB 78 */	mr r7, r25
/* 81506498 | 7D 89 03 A6 */	mtctr r12
/* 8150649C | 4E 80 04 21 */	bctrl
.L_815064A0:
/* 815064A0 | 39 61 02 70 */	addi r11, r1, 0x270
/* 815064A4 | 48 0F 30 61 */	bl _restgpr_25
/* 815064A8 | 80 01 02 74 */	lwz r0, 0x274(r1)
/* 815064AC | 7C 08 03 A6 */	mtlr r0
/* 815064B0 | 38 21 02 70 */	addi r1, r1, 0x270
/* 815064B4 | 4E 80 00 20 */	blr
.endfn detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi

# .text:0x34C | 0x815064B8 | size: 0x118
# nw4r::snd::SoundArchive::detail_OpenGroupStream(unsigned long, void*, int) const
.fn detail_OpenGroupStream__Q34nw4r3snd12SoundArchiveCFUlPvi, global
/* 815064B8 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 815064BC | 7C 08 02 A6 */	mflr r0
/* 815064C0 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 815064C4 | 39 61 01 40 */	addi r11, r1, 0x140
/* 815064C8 | 48 0F 2F F1 */	bl _savegpr_25
/* 815064CC | 7C 79 1B 78 */	mr r25, r3
/* 815064D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 815064D4 | 7C BA 2B 78 */	mr r26, r5
/* 815064D8 | 7C DB 33 78 */	mr r27, r6
/* 815064DC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 815064E0 | 48 00 08 89 */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 815064E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815064E8 | 40 82 00 0C */	bne .L_815064F4
/* 815064EC | 38 60 00 00 */	li r3, 0x0
/* 815064F0 | 48 00 00 C8 */	b .L_815065B8
.L_815064F4:
/* 815064F4 | 83 81 00 0C */	lwz r28, 0xc(r1)
/* 815064F8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 815064FC | 41 82 00 98 */	beq .L_81506594
/* 81506500 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81506504 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81506508 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 8150650C | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 81506510 | 40 82 00 08 */	bne .L_81506518
/* 81506514 | 48 00 00 54 */	b .L_81506568
.L_81506518:
/* 81506518 | 7F 83 E3 78 */	mr r3, r28
/* 8150651C | 48 0F 29 E1 */	bl strlen
/* 81506520 | 7C 7F 1B 78 */	mr r31, r3
/* 81506524 | 38 79 00 08 */	addi r3, r25, 0x8
/* 81506528 | 48 0F 29 D5 */	bl strlen
/* 8150652C | 7C 1F 1A 14 */	add r0, r31, r3
/* 81506530 | 7C 65 1B 78 */	mr r5, r3
/* 81506534 | 28 00 01 00 */	cmplwi r0, 0x100
/* 81506538 | 41 80 00 0C */	blt .L_81506544
/* 8150653C | 38 60 00 00 */	li r3, 0x0
/* 81506540 | 48 00 00 78 */	b .L_815065B8
.L_81506544:
/* 81506544 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81506548 | 38 99 00 08 */	addi r4, r25, 0x8
/* 8150654C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81506550 | 48 0F BE 75 */	bl strncpy
/* 81506554 | 7F 84 E3 78 */	mr r4, r28
/* 81506558 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8150655C | 38 BF 00 01 */	addi r5, r31, 0x1
/* 81506560 | 48 0F BE D5 */	bl strncat
/* 81506564 | 3B 81 00 20 */	addi r28, r1, 0x20
.L_81506568:
/* 81506568 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8150656C | 7F 23 CB 78 */	mr r3, r25
/* 81506570 | 7F 44 D3 78 */	mr r4, r26
/* 81506574 | 7F 65 DB 78 */	mr r5, r27
/* 81506578 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8150657C | 7F 86 E3 78 */	mr r6, r28
/* 81506580 | 7F C7 F3 78 */	mr r7, r30
/* 81506584 | 7F A8 EB 78 */	mr r8, r29
/* 81506588 | 7D 89 03 A6 */	mtctr r12
/* 8150658C | 4E 80 04 21 */	bctrl
/* 81506590 | 48 00 00 28 */	b .L_815065B8
.L_81506594:
/* 81506594 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81506598 | 7F 23 CB 78 */	mr r3, r25
/* 8150659C | 7F 44 D3 78 */	mr r4, r26
/* 815065A0 | 7F 65 DB 78 */	mr r5, r27
/* 815065A4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 815065A8 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 815065AC | 80 E1 00 14 */	lwz r7, 0x14(r1)
/* 815065B0 | 7D 89 03 A6 */	mtctr r12
/* 815065B4 | 4E 80 04 21 */	bctrl
.L_815065B8:
/* 815065B8 | 39 61 01 40 */	addi r11, r1, 0x140
/* 815065BC | 48 0F 2F 49 */	bl _restgpr_25
/* 815065C0 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 815065C4 | 7C 08 03 A6 */	mtlr r0
/* 815065C8 | 38 21 01 40 */	addi r1, r1, 0x140
/* 815065CC | 4E 80 00 20 */	blr
.endfn detail_OpenGroupStream__Q34nw4r3snd12SoundArchiveCFUlPvi

# .text:0x464 | 0x815065D0 | size: 0x118
# nw4r::snd::SoundArchive::detail_OpenGroupWaveDataStream(unsigned long, void*, int) const
.fn detail_OpenGroupWaveDataStream__Q34nw4r3snd12SoundArchiveCFUlPvi, global
/* 815065D0 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 815065D4 | 7C 08 02 A6 */	mflr r0
/* 815065D8 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 815065DC | 39 61 01 40 */	addi r11, r1, 0x140
/* 815065E0 | 48 0F 2E D9 */	bl _savegpr_25
/* 815065E4 | 7C 79 1B 78 */	mr r25, r3
/* 815065E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 815065EC | 7C BA 2B 78 */	mr r26, r5
/* 815065F0 | 7C DB 33 78 */	mr r27, r6
/* 815065F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 815065F8 | 48 00 07 71 */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 815065FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506600 | 40 82 00 0C */	bne .L_8150660C
/* 81506604 | 38 60 00 00 */	li r3, 0x0
/* 81506608 | 48 00 00 C8 */	b .L_815066D0
.L_8150660C:
/* 8150660C | 83 81 00 0C */	lwz r28, 0xc(r1)
/* 81506610 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81506614 | 41 82 00 98 */	beq .L_815066AC
/* 81506618 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 8150661C | 83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 81506620 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81506624 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506628 | 40 82 00 08 */	bne .L_81506630
/* 8150662C | 48 00 00 54 */	b .L_81506680
.L_81506630:
/* 81506630 | 7F 83 E3 78 */	mr r3, r28
/* 81506634 | 48 0F 28 C9 */	bl strlen
/* 81506638 | 7C 7F 1B 78 */	mr r31, r3
/* 8150663C | 38 79 00 08 */	addi r3, r25, 0x8
/* 81506640 | 48 0F 28 BD */	bl strlen
/* 81506644 | 7C 1F 1A 14 */	add r0, r31, r3
/* 81506648 | 7C 65 1B 78 */	mr r5, r3
/* 8150664C | 28 00 01 00 */	cmplwi r0, 0x100
/* 81506650 | 41 80 00 0C */	blt .L_8150665C
/* 81506654 | 38 60 00 00 */	li r3, 0x0
/* 81506658 | 48 00 00 78 */	b .L_815066D0
.L_8150665C:
/* 8150665C | 38 61 00 20 */	addi r3, r1, 0x20
/* 81506660 | 38 99 00 08 */	addi r4, r25, 0x8
/* 81506664 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81506668 | 48 0F BD 5D */	bl strncpy
/* 8150666C | 7F 84 E3 78 */	mr r4, r28
/* 81506670 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81506674 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 81506678 | 48 0F BD BD */	bl strncat
/* 8150667C | 3B 81 00 20 */	addi r28, r1, 0x20
.L_81506680:
/* 81506680 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81506684 | 7F 23 CB 78 */	mr r3, r25
/* 81506688 | 7F 44 D3 78 */	mr r4, r26
/* 8150668C | 7F 65 DB 78 */	mr r5, r27
/* 81506690 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81506694 | 7F 86 E3 78 */	mr r6, r28
/* 81506698 | 7F C7 F3 78 */	mr r7, r30
/* 8150669C | 7F A8 EB 78 */	mr r8, r29
/* 815066A0 | 7D 89 03 A6 */	mtctr r12
/* 815066A4 | 4E 80 04 21 */	bctrl
/* 815066A8 | 48 00 00 28 */	b .L_815066D0
.L_815066AC:
/* 815066AC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 815066B0 | 7F 23 CB 78 */	mr r3, r25
/* 815066B4 | 7F 44 D3 78 */	mr r4, r26
/* 815066B8 | 7F 65 DB 78 */	mr r5, r27
/* 815066BC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 815066C0 | 80 C1 00 18 */	lwz r6, 0x18(r1)
/* 815066C4 | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 815066C8 | 7D 89 03 A6 */	mtctr r12
/* 815066CC | 4E 80 04 21 */	bctrl
.L_815066D0:
/* 815066D0 | 39 61 01 40 */	addi r11, r1, 0x140
/* 815066D4 | 48 0F 2E 31 */	bl _restgpr_25
/* 815066D8 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 815066DC | 7C 08 03 A6 */	mtlr r0
/* 815066E0 | 38 21 01 40 */	addi r1, r1, 0x140
/* 815066E4 | 4E 80 00 20 */	blr
.endfn detail_OpenGroupWaveDataStream__Q34nw4r3snd12SoundArchiveCFUlPvi

# .text:0x57C | 0x815066E8 | size: 0x7C
# nw4r::snd::SoundArchive::SetExternalFileRoot(const char*)
.fn SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc, global
/* 815066E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815066EC | 7C 08 02 A6 */	mflr r0
/* 815066F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815066F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815066F8 | 7C 9F 23 78 */	mr r31, r4
/* 815066FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81506700 | 7C 7E 1B 78 */	mr r30, r3
/* 81506704 | 7F E3 FB 78 */	mr r3, r31
/* 81506708 | 48 0F 27 F5 */	bl strlen
/* 8150670C | 7C 9F 1A 14 */	add r4, r31, r3
/* 81506710 | 88 04 FF FF */	lbz r0, -0x1(r4)
/* 81506714 | 7C 64 1B 78 */	mr r4, r3
/* 81506718 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 8150671C | 41 82 00 14 */	beq .L_81506730
/* 81506720 | 7C 9E 1A 14 */	add r4, r30, r3
/* 81506724 | 38 00 00 2F */	li r0, 0x2f
/* 81506728 | 98 04 00 08 */	stb r0, 0x8(r4)
/* 8150672C | 38 83 00 01 */	addi r4, r3, 0x1
.L_81506730:
/* 81506730 | 7C 9E 22 14 */	add r4, r30, r4
/* 81506734 | 38 00 00 00 */	li r0, 0x0
/* 81506738 | 98 04 00 08 */	stb r0, 0x8(r4)
/* 8150673C | 7C 65 1B 78 */	mr r5, r3
/* 81506740 | 7F E4 FB 78 */	mr r4, r31
/* 81506744 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81506748 | 48 0F BC 7D */	bl strncpy
/* 8150674C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81506750 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81506754 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81506758 | 7C 08 03 A6 */	mtlr r0
/* 8150675C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81506760 | 4E 80 00 20 */	blr
.endfn SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc

# .text:0x5F8 | 0x81506764 | size: 0x24
# nw4r::snd::detail::SoundArchiveFileReader::SoundArchiveFileReader()
.fn __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv, global
/* 81506764 | 38 00 00 00 */	li r0, 0x0
/* 81506768 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 8150676C | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81506770 | 90 03 00 30 */	stw r0, 0x30(r3)
/* 81506774 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 81506778 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 8150677C | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 81506780 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 81506784 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv

# .text:0x61C | 0x81506788 | size: 0xB0
# nw4r::snd::detail::SoundArchiveFileReader::Init(const void*)
.fn Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv, global
/* 81506788 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8150678C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81506790 | 3C 05 AD AD */	subis r0, r5, 0x5253
/* 81506794 | 28 00 41 52 */	cmplwi r0, 0x4152
/* 81506798 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150679C | 41 82 00 0C */	beq .L_815067A8
/* 815067A0 | 38 00 00 00 */	li r0, 0x0
/* 815067A4 | 48 00 00 30 */	b .L_815067D4
.L_815067A8:
/* 815067A8 | A0 C4 00 06 */	lhz r6, 0x6(r4)
/* 815067AC | 28 06 01 00 */	cmplwi r6, 0x100
/* 815067B0 | 40 80 00 0C */	bge .L_815067BC
/* 815067B4 | 38 00 00 00 */	li r0, 0x0
/* 815067B8 | 48 00 00 1C */	b .L_815067D4
.L_815067BC:
/* 815067BC | 20 06 01 01 */	subfic r0, r6, 0x101
/* 815067C0 | 38 A0 01 01 */	li r5, 0x101
/* 815067C4 | 7C A5 33 38 */	orc r5, r5, r6
/* 815067C8 | 54 00 F8 7E */	srwi r0, r0, 1
/* 815067CC | 7C 00 28 50 */	subf r0, r0, r5
/* 815067D0 | 54 00 0F FE */	srwi r0, r0, 31
.L_815067D4:
/* 815067D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815067D8 | 41 82 00 54 */	beq .L_8150682C
/* 815067DC | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 815067E0 | 81 84 00 04 */	lwz r12, 0x4(r4)
/* 815067E4 | 81 64 00 08 */	lwz r11, 0x8(r4)
/* 815067E8 | 81 44 00 0C */	lwz r10, 0xc(r4)
/* 815067EC | 81 24 00 10 */	lwz r9, 0x10(r4)
/* 815067F0 | 81 04 00 14 */	lwz r8, 0x14(r4)
/* 815067F4 | 80 E4 00 18 */	lwz r7, 0x18(r4)
/* 815067F8 | 80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 815067FC | 80 A4 00 20 */	lwz r5, 0x20(r4)
/* 81506800 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81506804 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81506808 | 91 83 00 04 */	stw r12, 0x4(r3)
/* 8150680C | 91 63 00 08 */	stw r11, 0x8(r3)
/* 81506810 | 91 43 00 0C */	stw r10, 0xc(r3)
/* 81506814 | 91 23 00 10 */	stw r9, 0x10(r3)
/* 81506818 | 91 03 00 14 */	stw r8, 0x14(r3)
/* 8150681C | 90 E3 00 18 */	stw r7, 0x18(r3)
/* 81506820 | 90 C3 00 1C */	stw r6, 0x1c(r3)
/* 81506824 | 90 A3 00 20 */	stw r5, 0x20(r3)
/* 81506828 | 90 03 00 24 */	stw r0, 0x24(r3)
.L_8150682C:
/* 8150682C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81506830 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81506834 | 4E 80 00 20 */	blr
.endfn Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv

# .text:0x6CC | 0x81506838 | size: 0xA8
# nw4r::snd::detail::SoundArchiveFileReader::SetStringChunk(const void*, unsigned long)
.fn SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl, global
/* 81506838 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8150683C | 38 A4 00 08 */	addi r5, r4, 0x8
/* 81506840 | 90 A3 00 2C */	stw r5, 0x2c(r3)
/* 81506844 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81506848 | 40 82 00 0C */	bne .L_81506854
/* 8150684C | 38 00 00 00 */	li r0, 0x0
/* 81506850 | 48 00 00 08 */	b .L_81506858
.L_81506854:
/* 81506854 | 7C 00 2A 14 */	add r0, r0, r5
.L_81506858:
/* 81506858 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8150685C | 90 03 00 30 */	stw r0, 0x30(r3)
/* 81506860 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81506864 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81506868 | 40 82 00 0C */	bne .L_81506874
/* 8150686C | 38 00 00 00 */	li r0, 0x0
/* 81506870 | 48 00 00 08 */	b .L_81506878
.L_81506874:
/* 81506874 | 7C 04 02 14 */	add r0, r4, r0
.L_81506878:
/* 81506878 | 80 85 00 08 */	lwz r4, 0x8(r5)
/* 8150687C | 90 03 00 34 */	stw r0, 0x34(r3)
/* 81506880 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81506884 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81506888 | 40 82 00 0C */	bne .L_81506894
/* 8150688C | 38 00 00 00 */	li r0, 0x0
/* 81506890 | 48 00 00 08 */	b .L_81506898
.L_81506894:
/* 81506894 | 7C 04 02 14 */	add r0, r4, r0
.L_81506898:
/* 81506898 | 80 85 00 0C */	lwz r4, 0xc(r5)
/* 8150689C | 90 03 00 38 */	stw r0, 0x38(r3)
/* 815068A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815068A4 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 815068A8 | 40 82 00 0C */	bne .L_815068B4
/* 815068AC | 38 00 00 00 */	li r0, 0x0
/* 815068B0 | 48 00 00 08 */	b .L_815068B8
.L_815068B4:
/* 815068B4 | 7C 04 02 14 */	add r0, r4, r0
.L_815068B8:
/* 815068B8 | 80 85 00 10 */	lwz r4, 0x10(r5)
/* 815068BC | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 815068C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815068C4 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 815068C8 | 40 82 00 0C */	bne .L_815068D4
/* 815068CC | 38 00 00 00 */	li r0, 0x0
/* 815068D0 | 48 00 00 08 */	b .L_815068D8
.L_815068D4:
/* 815068D4 | 7C 04 02 14 */	add r0, r4, r0
.L_815068D8:
/* 815068D8 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 815068DC | 4E 80 00 20 */	blr
.endfn SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl

# .text:0x774 | 0x815068E0 | size: 0xC
# nw4r::snd::detail::SoundArchiveFileReader::SetInfoChunk(const void*, unsigned long)
.fn SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl, global
/* 815068E0 | 38 04 00 08 */	addi r0, r4, 0x8
/* 815068E4 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 815068E8 | 4E 80 00 20 */	blr
.endfn SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl

# .text:0x780 | 0x815068EC | size: 0xF0
# nw4r::snd::detail::SoundArchiveFileReader::GetSoundType(unsigned long) const
.fn GetSoundType__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl, global
/* 815068EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815068F0 | 7C 08 02 A6 */	mflr r0
/* 815068F4 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 815068F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815068FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81506900 | 7C 9F 23 78 */	mr r31, r4
/* 81506904 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81506908 | 7C 7E 1B 78 */	mr r30, r3
/* 8150690C | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 81506910 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81506914 | 48 00 8B B9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150691C | 40 82 00 0C */	bne .L_81506928
/* 81506920 | 38 60 00 00 */	li r3, 0x0
/* 81506924 | 48 00 00 A0 */	b .L_815069C4
.L_81506928:
/* 81506928 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8150692C | 7C 1F 00 40 */	cmplw r31, r0
/* 81506930 | 41 80 00 0C */	blt .L_8150693C
/* 81506934 | 38 60 00 00 */	li r3, 0x0
/* 81506938 | 48 00 00 8C */	b .L_815069C4
.L_8150693C:
/* 8150693C | A0 1E 00 06 */	lhz r0, 0x6(r30)
/* 81506940 | 28 00 01 01 */	cmplwi r0, 0x101
/* 81506944 | 41 80 00 34 */	blt .L_81506978
/* 81506948 | 57 E0 18 38 */	slwi r0, r31, 3
/* 8150694C | 80 BE 00 28 */	lwz r5, 0x28(r30)
/* 81506950 | 7C 83 02 14 */	add r4, r3, r0
/* 81506954 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506958 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8150695C | 48 00 8B 71 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506964 | 40 82 00 0C */	bne .L_81506970
/* 81506968 | 38 60 00 00 */	li r3, 0x0
/* 8150696C | 48 00 00 58 */	b .L_815069C4
.L_81506970:
/* 81506970 | 88 03 00 16 */	lbz r0, 0x16(r3)
/* 81506974 | 48 00 00 10 */	b .L_81506984
.L_81506978:
/* 81506978 | 57 E0 18 38 */	slwi r0, r31, 3
/* 8150697C | 7C 63 02 14 */	add r3, r3, r0
/* 81506980 | 88 03 00 05 */	lbz r0, 0x5(r3)
.L_81506984:
/* 81506984 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81506988 | 41 82 00 28 */	beq .L_815069B0
/* 8150698C | 40 80 00 10 */	bge .L_8150699C
/* 81506990 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81506994 | 40 80 00 14 */	bge .L_815069A8
/* 81506998 | 48 00 00 28 */	b .L_815069C0
.L_8150699C:
/* 8150699C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 815069A0 | 40 80 00 20 */	bge .L_815069C0
/* 815069A4 | 48 00 00 14 */	b .L_815069B8
.L_815069A8:
/* 815069A8 | 38 60 00 01 */	li r3, 0x1
/* 815069AC | 48 00 00 18 */	b .L_815069C4
.L_815069B0:
/* 815069B0 | 38 60 00 02 */	li r3, 0x2
/* 815069B4 | 48 00 00 10 */	b .L_815069C4
.L_815069B8:
/* 815069B8 | 38 60 00 03 */	li r3, 0x3
/* 815069BC | 48 00 00 08 */	b .L_815069C4
.L_815069C0:
/* 815069C0 | 38 60 00 00 */	li r3, 0x0
.L_815069C4:
/* 815069C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815069C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815069CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815069D0 | 7C 08 03 A6 */	mtlr r0
/* 815069D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815069D8 | 4E 80 00 20 */	blr
.endfn GetSoundType__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl

# .text:0x870 | 0x815069DC | size: 0xEC
# nw4r::snd::detail::SoundArchiveFileReader::ReadSoundInfo(unsigned long, nw4r::snd::SoundArchive::SoundInfo*) const
.fn ReadSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9SoundInfo, global
/* 815069DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815069E0 | 7C 08 02 A6 */	mflr r0
/* 815069E4 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 815069E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815069EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815069F0 | 7C BF 2B 78 */	mr r31, r5
/* 815069F4 | 7C C5 33 78 */	mr r5, r6
/* 815069F8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815069FC | 7C 9E 23 78 */	mr r30, r4
/* 81506A00 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81506A04 | 7C 7D 1B 78 */	mr r29, r3
/* 81506A08 | 88 66 00 00 */	lbz r3, 0x0(r6)
/* 81506A0C | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 81506A10 | 48 00 8A BD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506A18 | 40 82 00 0C */	bne .L_81506A24
/* 81506A1C | 38 80 00 00 */	li r4, 0x0
/* 81506A20 | 48 00 00 58 */	b .L_81506A78
.L_81506A24:
/* 81506A24 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506A28 | 7C 1E 00 40 */	cmplw r30, r0
/* 81506A2C | 41 80 00 0C */	blt .L_81506A38
/* 81506A30 | 38 80 00 00 */	li r4, 0x0
/* 81506A34 | 48 00 00 44 */	b .L_81506A78
.L_81506A38:
/* 81506A38 | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 81506A3C | 28 00 01 01 */	cmplwi r0, 0x101
/* 81506A40 | 41 80 00 24 */	blt .L_81506A64
/* 81506A44 | 57 C0 18 38 */	slwi r0, r30, 3
/* 81506A48 | 80 BD 00 28 */	lwz r5, 0x28(r29)
/* 81506A4C | 7C 83 02 14 */	add r4, r3, r0
/* 81506A50 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506A54 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81506A58 | 48 00 8A 75 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506A5C | 7C 64 1B 78 */	mr r4, r3
/* 81506A60 | 48 00 00 18 */	b .L_81506A78
.L_81506A64:
/* 81506A64 | 57 C4 18 38 */	slwi r4, r30, 3
/* 81506A68 | 80 1D 00 28 */	lwz r0, 0x28(r29)
/* 81506A6C | 7C 63 22 14 */	add r3, r3, r4
/* 81506A70 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81506A74 | 7C 83 02 14 */	add r4, r3, r0
.L_81506A78:
/* 81506A78 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81506A7C | 40 82 00 0C */	bne .L_81506A88
/* 81506A80 | 38 60 00 00 */	li r3, 0x0
/* 81506A84 | 48 00 00 28 */	b .L_81506AAC
.L_81506A88:
/* 81506A88 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81506A8C | 38 60 00 01 */	li r3, 0x1
/* 81506A90 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81506A94 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81506A98 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81506A9C | 88 04 00 15 */	lbz r0, 0x15(r4)
/* 81506AA0 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81506AA4 | 88 04 00 14 */	lbz r0, 0x14(r4)
/* 81506AA8 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81506AAC:
/* 81506AAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506AB0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506AB4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506AB8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81506ABC | 7C 08 03 A6 */	mtlr r0
/* 81506AC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506AC4 | 4E 80 00 20 */	blr
.endfn ReadSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9SoundInfo

# .text:0x95C | 0x81506AC8 | size: 0x80
# nw4r::snd::detail::SoundArchiveFileReader::ReadSeqSoundInfo(unsigned long, nw4r::snd::SoundArchive::SeqSoundInfo*) const
.fn ReadSeqSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo, global
/* 81506AC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506ACC | 7C 08 02 A6 */	mflr r0
/* 81506AD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506AD4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506AD8 | 7C BF 2B 78 */	mr r31, r5
/* 81506ADC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81506AE0 | 7C 7E 1B 78 */	mr r30, r3
/* 81506AE4 | 48 00 09 3D */	bl impl_GetSoundInfoOffset__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl
/* 81506AE8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81506AEC | 80 BE 00 28 */	lwz r5, 0x28(r30)
/* 81506AF0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81506AF4 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81506AF8 | 48 00 89 D5 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506AFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506B00 | 40 82 00 0C */	bne .L_81506B0C
/* 81506B04 | 38 60 00 00 */	li r3, 0x0
/* 81506B08 | 48 00 00 28 */	b .L_81506B30
.L_81506B0C:
/* 81506B0C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506B10 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81506B14 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81506B18 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81506B1C | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81506B20 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81506B24 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81506B28 | 38 60 00 01 */	li r3, 0x1
/* 81506B2C | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_81506B30:
/* 81506B30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506B34 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506B38 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506B3C | 7C 08 03 A6 */	mtlr r0
/* 81506B40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506B44 | 4E 80 00 20 */	blr
.endfn ReadSeqSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo

# .text:0x9DC | 0x81506B48 | size: 0x4C
# nw4r::snd::detail::SoundArchiveFileReader::ReadStrmSoundInfo(unsigned long, nw4r::snd::SoundArchive::StrmSoundInfo*) const
.fn ReadStrmSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo, global
/* 81506B48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506B4C | 7C 08 02 A6 */	mflr r0
/* 81506B50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506B54 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506B58 | 7C 7F 1B 78 */	mr r31, r3
/* 81506B5C | 48 00 08 C5 */	bl impl_GetSoundInfoOffset__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl
/* 81506B60 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81506B64 | 80 BF 00 28 */	lwz r5, 0x28(r31)
/* 81506B68 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81506B6C | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81506B70 | 48 00 89 5D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506B74 | 7C 03 00 D0 */	neg r0, r3
/* 81506B78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506B7C | 7C 00 1B 78 */	or r0, r0, r3
/* 81506B80 | 54 03 0F FE */	srwi r3, r0, 31
/* 81506B84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506B88 | 7C 08 03 A6 */	mtlr r0
/* 81506B8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506B90 | 4E 80 00 20 */	blr
.endfn ReadStrmSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo

# .text:0xA28 | 0x81506B94 | size: 0x70
# nw4r::snd::detail::SoundArchiveFileReader::ReadWaveSoundInfo(unsigned long, nw4r::snd::SoundArchive::WaveSoundInfo*) const
.fn ReadWaveSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo, global
/* 81506B94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506B98 | 7C 08 02 A6 */	mflr r0
/* 81506B9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506BA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506BA4 | 7C BF 2B 78 */	mr r31, r5
/* 81506BA8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81506BAC | 7C 7E 1B 78 */	mr r30, r3
/* 81506BB0 | 48 00 08 71 */	bl impl_GetSoundInfoOffset__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl
/* 81506BB4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81506BB8 | 80 BE 00 28 */	lwz r5, 0x28(r30)
/* 81506BBC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81506BC0 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81506BC4 | 48 00 89 09 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506BCC | 40 82 00 0C */	bne .L_81506BD8
/* 81506BD0 | 38 60 00 00 */	li r3, 0x0
/* 81506BD4 | 48 00 00 18 */	b .L_81506BEC
.L_81506BD8:
/* 81506BD8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506BDC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81506BE0 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81506BE4 | 38 60 00 01 */	li r3, 0x1
/* 81506BE8 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_81506BEC:
/* 81506BEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506BF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506BF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506BF8 | 7C 08 03 A6 */	mtlr r0
/* 81506BFC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506C00 | 4E 80 00 20 */	blr
.endfn ReadWaveSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo

# .text:0xA98 | 0x81506C04 | size: 0xAC
# nw4r::snd::detail::SoundArchiveFileReader::ReadBankInfo(unsigned long, nw4r::snd::SoundArchive::BankInfo*) const
.fn ReadBankInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8BankInfo, global
/* 81506C04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506C08 | 7C 08 02 A6 */	mflr r0
/* 81506C0C | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 81506C10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506C14 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506C18 | 7C BF 2B 78 */	mr r31, r5
/* 81506C1C | 7C C5 33 78 */	mr r5, r6
/* 81506C20 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81506C24 | 7C 9E 23 78 */	mr r30, r4
/* 81506C28 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81506C2C | 7C 7D 1B 78 */	mr r29, r3
/* 81506C30 | 88 66 00 08 */	lbz r3, 0x8(r6)
/* 81506C34 | 80 86 00 0C */	lwz r4, 0xc(r6)
/* 81506C38 | 48 00 88 95 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506C3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506C40 | 40 82 00 0C */	bne .L_81506C4C
/* 81506C44 | 38 60 00 00 */	li r3, 0x0
/* 81506C48 | 48 00 00 30 */	b .L_81506C78
.L_81506C4C:
/* 81506C4C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506C50 | 7C 1E 00 40 */	cmplw r30, r0
/* 81506C54 | 41 80 00 0C */	blt .L_81506C60
/* 81506C58 | 38 60 00 00 */	li r3, 0x0
/* 81506C5C | 48 00 00 1C */	b .L_81506C78
.L_81506C60:
/* 81506C60 | 57 C0 18 38 */	slwi r0, r30, 3
/* 81506C64 | 80 BD 00 28 */	lwz r5, 0x28(r29)
/* 81506C68 | 7C 83 02 14 */	add r4, r3, r0
/* 81506C6C | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506C70 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81506C74 | 48 00 88 59 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
.L_81506C78:
/* 81506C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506C7C | 40 82 00 0C */	bne .L_81506C88
/* 81506C80 | 38 60 00 00 */	li r3, 0x0
/* 81506C84 | 48 00 00 10 */	b .L_81506C94
.L_81506C88:
/* 81506C88 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81506C8C | 38 60 00 01 */	li r3, 0x1
/* 81506C90 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81506C94:
/* 81506C94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506C98 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506C9C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506CA0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81506CA4 | 7C 08 03 A6 */	mtlr r0
/* 81506CA8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506CAC | 4E 80 00 20 */	blr
.endfn ReadBankInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8BankInfo

# .text:0xB44 | 0x81506CB0 | size: 0xB8
# nw4r::snd::detail::SoundArchiveFileReader::ReadPlayerInfo(unsigned long, nw4r::snd::SoundArchive::PlayerInfo*) const
.fn ReadPlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo, global
/* 81506CB0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506CB4 | 7C 08 02 A6 */	mflr r0
/* 81506CB8 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 81506CBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506CC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506CC4 | 7C BF 2B 78 */	mr r31, r5
/* 81506CC8 | 7C C5 33 78 */	mr r5, r6
/* 81506CCC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81506CD0 | 7C 9E 23 78 */	mr r30, r4
/* 81506CD4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81506CD8 | 7C 7D 1B 78 */	mr r29, r3
/* 81506CDC | 88 66 00 10 */	lbz r3, 0x10(r6)
/* 81506CE0 | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 81506CE4 | 48 00 87 E9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506CE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506CEC | 40 82 00 0C */	bne .L_81506CF8
/* 81506CF0 | 38 80 00 00 */	li r4, 0x0
/* 81506CF4 | 48 00 00 34 */	b .L_81506D28
.L_81506CF8:
/* 81506CF8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506CFC | 7C 1E 00 40 */	cmplw r30, r0
/* 81506D00 | 41 80 00 0C */	blt .L_81506D0C
/* 81506D04 | 38 80 00 00 */	li r4, 0x0
/* 81506D08 | 48 00 00 20 */	b .L_81506D28
.L_81506D0C:
/* 81506D0C | 57 C0 18 38 */	slwi r0, r30, 3
/* 81506D10 | 80 BD 00 28 */	lwz r5, 0x28(r29)
/* 81506D14 | 7C 83 02 14 */	add r4, r3, r0
/* 81506D18 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506D1C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81506D20 | 48 00 87 AD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506D24 | 7C 64 1B 78 */	mr r4, r3
.L_81506D28:
/* 81506D28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81506D2C | 40 82 00 0C */	bne .L_81506D38
/* 81506D30 | 38 60 00 00 */	li r3, 0x0
/* 81506D34 | 48 00 00 18 */	b .L_81506D4C
.L_81506D38:
/* 81506D38 | 88 04 00 04 */	lbz r0, 0x4(r4)
/* 81506D3C | 38 60 00 01 */	li r3, 0x1
/* 81506D40 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81506D44 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81506D48 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_81506D4C:
/* 81506D4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506D50 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506D54 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506D58 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81506D5C | 7C 08 03 A6 */	mtlr r0
/* 81506D60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506D64 | 4E 80 00 20 */	blr
.endfn ReadPlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo

# .text:0xBFC | 0x81506D68 | size: 0x110
# nw4r::snd::detail::SoundArchiveFileReader::ReadGroupInfo(unsigned long, nw4r::snd::SoundArchive::GroupInfo*) const
.fn ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo, global
/* 81506D68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506D6C | 7C 08 02 A6 */	mflr r0
/* 81506D70 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 81506D74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506D78 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506D7C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81506D80 | 7C 9E 23 78 */	mr r30, r4
/* 81506D84 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81506D88 | 7C BD 2B 78 */	mr r29, r5
/* 81506D8C | 7C C5 33 78 */	mr r5, r6
/* 81506D90 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81506D94 | 7C 7C 1B 78 */	mr r28, r3
/* 81506D98 | 88 66 00 20 */	lbz r3, 0x20(r6)
/* 81506D9C | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 81506DA0 | 48 00 87 2D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506DA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506DA8 | 40 82 00 0C */	bne .L_81506DB4
/* 81506DAC | 3B C0 00 00 */	li r30, 0x0
/* 81506DB0 | 48 00 00 34 */	b .L_81506DE4
.L_81506DB4:
/* 81506DB4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506DB8 | 7C 1E 00 40 */	cmplw r30, r0
/* 81506DBC | 41 80 00 0C */	blt .L_81506DC8
/* 81506DC0 | 3B C0 00 00 */	li r30, 0x0
/* 81506DC4 | 48 00 00 20 */	b .L_81506DE4
.L_81506DC8:
/* 81506DC8 | 57 C0 18 38 */	slwi r0, r30, 3
/* 81506DCC | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81506DD0 | 7C 83 02 14 */	add r4, r3, r0
/* 81506DD4 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506DD8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81506DDC | 48 00 86 F1 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506DE0 | 7C 7E 1B 78 */	mr r30, r3
.L_81506DE4:
/* 81506DE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81506DE8 | 40 82 00 0C */	bne .L_81506DF4
/* 81506DEC | 38 60 00 00 */	li r3, 0x0
/* 81506DF0 | 48 00 00 68 */	b .L_81506E58
.L_81506DF4:
/* 81506DF4 | 88 7E 00 20 */	lbz r3, 0x20(r30)
/* 81506DF8 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 81506DFC | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81506E00 | 48 00 86 CD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506E08 | 7C 7F 1B 78 */	mr r31, r3
/* 81506E0C | 40 82 00 0C */	bne .L_81506E18
/* 81506E10 | 38 60 00 00 */	li r3, 0x0
/* 81506E14 | 48 00 00 44 */	b .L_81506E58
.L_81506E18:
/* 81506E18 | 88 7E 00 08 */	lbz r3, 0x8(r30)
/* 81506E1C | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 81506E20 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81506E24 | 48 00 86 A9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506E28 | 90 7D 00 04 */	stw r3, 0x4(r29)
/* 81506E2C | 38 60 00 01 */	li r3, 0x1
/* 81506E30 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81506E34 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 81506E38 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81506E3C | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 81506E40 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 81506E44 | 90 1D 00 10 */	stw r0, 0x10(r29)
/* 81506E48 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 81506E4C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81506E50 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81506E54 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_81506E58:
/* 81506E58 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506E5C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506E60 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506E64 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81506E68 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81506E6C | 7C 08 03 A6 */	mtlr r0
/* 81506E70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506E74 | 4E 80 00 20 */	blr
.endfn ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo

# .text:0xD0C | 0x81506E78 | size: 0x138
# nw4r::snd::detail::SoundArchiveFileReader::ReadGroupItemInfo(unsigned long, unsigned long, nw4r::snd::SoundArchive::GroupItemInfo*) const
.fn ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo, global
/* 81506E78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81506E7C | 7C 08 02 A6 */	mflr r0
/* 81506E80 | 80 E3 00 28 */	lwz r7, 0x28(r3)
/* 81506E84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81506E88 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81506E8C | 7C DF 33 78 */	mr r31, r6
/* 81506E90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81506E94 | 7C BE 2B 78 */	mr r30, r5
/* 81506E98 | 7C E5 3B 78 */	mr r5, r7
/* 81506E9C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81506EA0 | 7C 9D 23 78 */	mr r29, r4
/* 81506EA4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81506EA8 | 7C 7C 1B 78 */	mr r28, r3
/* 81506EAC | 88 67 00 20 */	lbz r3, 0x20(r7)
/* 81506EB0 | 80 87 00 24 */	lwz r4, 0x24(r7)
/* 81506EB4 | 48 00 86 19 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506EB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506EBC | 40 82 00 0C */	bne .L_81506EC8
/* 81506EC0 | 38 80 00 00 */	li r4, 0x0
/* 81506EC4 | 48 00 00 34 */	b .L_81506EF8
.L_81506EC8:
/* 81506EC8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506ECC | 7C 1D 00 40 */	cmplw r29, r0
/* 81506ED0 | 41 80 00 0C */	blt .L_81506EDC
/* 81506ED4 | 38 80 00 00 */	li r4, 0x0
/* 81506ED8 | 48 00 00 20 */	b .L_81506EF8
.L_81506EDC:
/* 81506EDC | 57 A0 18 38 */	slwi r0, r29, 3
/* 81506EE0 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81506EE4 | 7C 83 02 14 */	add r4, r3, r0
/* 81506EE8 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506EEC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81506EF0 | 48 00 85 DD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506EF4 | 7C 64 1B 78 */	mr r4, r3
.L_81506EF8:
/* 81506EF8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81506EFC | 40 82 00 0C */	bne .L_81506F08
/* 81506F00 | 38 60 00 00 */	li r3, 0x0
/* 81506F04 | 48 00 00 8C */	b .L_81506F90
.L_81506F08:
/* 81506F08 | 88 64 00 20 */	lbz r3, 0x20(r4)
/* 81506F0C | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 81506F10 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81506F14 | 48 00 85 B9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506F18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506F1C | 40 82 00 0C */	bne .L_81506F28
/* 81506F20 | 38 60 00 00 */	li r3, 0x0
/* 81506F24 | 48 00 00 6C */	b .L_81506F90
.L_81506F28:
/* 81506F28 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506F2C | 7C 1E 00 40 */	cmplw r30, r0
/* 81506F30 | 41 80 00 0C */	blt .L_81506F3C
/* 81506F34 | 38 60 00 00 */	li r3, 0x0
/* 81506F38 | 48 00 00 58 */	b .L_81506F90
.L_81506F3C:
/* 81506F3C | 57 C0 18 38 */	slwi r0, r30, 3
/* 81506F40 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81506F44 | 7C 83 02 14 */	add r4, r3, r0
/* 81506F48 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81506F4C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81506F50 | 48 00 85 7D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506F54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81506F58 | 40 82 00 0C */	bne .L_81506F64
/* 81506F5C | 38 60 00 00 */	li r3, 0x0
/* 81506F60 | 48 00 00 30 */	b .L_81506F90
.L_81506F64:
/* 81506F64 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81506F68 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81506F6C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81506F70 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81506F74 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81506F78 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81506F7C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81506F80 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81506F84 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81506F88 | 38 60 00 01 */	li r3, 0x1
/* 81506F8C | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_81506F90:
/* 81506F90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81506F94 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81506F98 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81506F9C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81506FA0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81506FA4 | 7C 08 03 A6 */	mtlr r0
/* 81506FA8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81506FAC | 4E 80 00 20 */	blr
.endfn ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo

# .text:0xE44 | 0x81506FB0 | size: 0x84
# nw4r::snd::detail::SoundArchiveFileReader::ReadSoundArchivePlayerInfo(nw4r::snd::SoundArchive::SoundArchivePlayerInfo*) const
.fn ReadSoundArchivePlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo, global
/* 81506FB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81506FB4 | 7C 08 02 A6 */	mflr r0
/* 81506FB8 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 81506FBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81506FC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81506FC4 | 7C 9F 23 78 */	mr r31, r4
/* 81506FC8 | 88 65 00 28 */	lbz r3, 0x28(r5)
/* 81506FCC | 80 85 00 2C */	lwz r4, 0x2c(r5)
/* 81506FD0 | 48 00 84 FD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81506FD4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81506FD8 | 40 82 00 0C */	bne .L_81506FE4
/* 81506FDC | 38 60 00 00 */	li r3, 0x0
/* 81506FE0 | 48 00 00 40 */	b .L_81507020
.L_81506FE4:
/* 81506FE4 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81506FE8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81506FEC | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 81506FF0 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81506FF4 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 81506FF8 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81506FFC | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 81507000 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81507004 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 81507008 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150700C | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 81507010 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81507014 | A0 03 00 0C */	lhz r0, 0xc(r3)
/* 81507018 | 38 60 00 01 */	li r3, 0x1
/* 8150701C | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_81507020:
/* 81507020 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81507024 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81507028 | 7C 08 03 A6 */	mtlr r0
/* 8150702C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81507030 | 4E 80 00 20 */	blr
.endfn ReadSoundArchivePlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo

# .text:0xEC8 | 0x81507034 | size: 0x40
# nw4r::snd::detail::SoundArchiveFileReader::GetPlayerCount() const
.fn GetPlayerCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv, global
/* 81507034 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81507038 | 7C 08 02 A6 */	mflr r0
/* 8150703C | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 81507040 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81507044 | 88 65 00 10 */	lbz r3, 0x10(r5)
/* 81507048 | 80 85 00 14 */	lwz r4, 0x14(r5)
/* 8150704C | 48 00 84 81 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507054 | 40 82 00 0C */	bne .L_81507060
/* 81507058 | 38 60 00 00 */	li r3, 0x0
/* 8150705C | 48 00 00 08 */	b .L_81507064
.L_81507060:
/* 81507060 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81507064:
/* 81507064 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81507068 | 7C 08 03 A6 */	mtlr r0
/* 8150706C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81507070 | 4E 80 00 20 */	blr
.endfn GetPlayerCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv

# .text:0xF08 | 0x81507074 | size: 0x44
# nw4r::snd::detail::SoundArchiveFileReader::GetGroupCount() const
.fn GetGroupCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv, global
/* 81507074 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81507078 | 7C 08 02 A6 */	mflr r0
/* 8150707C | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 81507080 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81507084 | 88 65 00 20 */	lbz r3, 0x20(r5)
/* 81507088 | 80 85 00 24 */	lwz r4, 0x24(r5)
/* 8150708C | 48 00 84 41 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507094 | 40 82 00 0C */	bne .L_815070A0
/* 81507098 | 38 60 00 00 */	li r3, 0x0
/* 8150709C | 48 00 00 0C */	b .L_815070A8
.L_815070A0:
/* 815070A0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 815070A4 | 38 63 FF FF */	subi r3, r3, 0x1
.L_815070A8:
/* 815070A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815070AC | 7C 08 03 A6 */	mtlr r0
/* 815070B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815070B4 | 4E 80 00 20 */	blr
.endfn GetGroupCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv

# .text:0xF4C | 0x815070B8 | size: 0x100
# nw4r::snd::detail::SoundArchiveFileReader::ReadFileInfo(unsigned long, nw4r::snd::SoundArchive::FileInfo*) const
.fn ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo, global
/* 815070B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815070BC | 7C 08 02 A6 */	mflr r0
/* 815070C0 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 815070C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815070C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815070CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815070D0 | 7C 9E 23 78 */	mr r30, r4
/* 815070D4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815070D8 | 7C BD 2B 78 */	mr r29, r5
/* 815070DC | 7C C5 33 78 */	mr r5, r6
/* 815070E0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 815070E4 | 7C 7C 1B 78 */	mr r28, r3
/* 815070E8 | 88 66 00 18 */	lbz r3, 0x18(r6)
/* 815070EC | 80 86 00 1C */	lwz r4, 0x1c(r6)
/* 815070F0 | 48 00 83 DD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 815070F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815070F8 | 40 82 00 0C */	bne .L_81507104
/* 815070FC | 38 60 00 00 */	li r3, 0x0
/* 81507100 | 48 00 00 98 */	b .L_81507198
.L_81507104:
/* 81507104 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81507108 | 7C 1E 00 40 */	cmplw r30, r0
/* 8150710C | 41 80 00 0C */	blt .L_81507118
/* 81507110 | 38 60 00 00 */	li r3, 0x0
/* 81507114 | 48 00 00 84 */	b .L_81507198
.L_81507118:
/* 81507118 | 57 C0 18 38 */	slwi r0, r30, 3
/* 8150711C | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81507120 | 7C 83 02 14 */	add r4, r3, r0
/* 81507124 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81507128 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8150712C | 48 00 83 A1 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507134 | 7C 7E 1B 78 */	mr r30, r3
/* 81507138 | 40 82 00 0C */	bne .L_81507144
/* 8150713C | 38 60 00 00 */	li r3, 0x0
/* 81507140 | 48 00 00 58 */	b .L_81507198
.L_81507144:
/* 81507144 | 88 63 00 14 */	lbz r3, 0x14(r3)
/* 81507148 | 80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8150714C | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81507150 | 48 00 83 7D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507158 | 7C 7F 1B 78 */	mr r31, r3
/* 8150715C | 40 82 00 0C */	bne .L_81507168
/* 81507160 | 38 60 00 00 */	li r3, 0x0
/* 81507164 | 48 00 00 34 */	b .L_81507198
.L_81507168:
/* 81507168 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8150716C | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81507170 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 81507174 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81507178 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 8150717C | 88 7E 00 0C */	lbz r3, 0xc(r30)
/* 81507180 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 81507184 | 48 00 83 49 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507188 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8150718C | 38 60 00 01 */	li r3, 0x1
/* 81507190 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81507194 | 90 1D 00 0C */	stw r0, 0xc(r29)
.L_81507198:
/* 81507198 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150719C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815071A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815071A4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815071A8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 815071AC | 7C 08 03 A6 */	mtlr r0
/* 815071B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815071B4 | 4E 80 00 20 */	blr
.endfn ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo

# .text:0x104C | 0x815071B8 | size: 0x120
# nw4r::snd::detail::SoundArchiveFileReader::ReadFilePos(unsigned long, unsigned long, nw4r::snd::SoundArchive::FilePos*) const
.fn ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos, global
/* 815071B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815071BC | 7C 08 02 A6 */	mflr r0
/* 815071C0 | 80 E3 00 28 */	lwz r7, 0x28(r3)
/* 815071C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815071C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815071CC | 7C DF 33 78 */	mr r31, r6
/* 815071D0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815071D4 | 7C BE 2B 78 */	mr r30, r5
/* 815071D8 | 7C E5 3B 78 */	mr r5, r7
/* 815071DC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815071E0 | 7C 9D 23 78 */	mr r29, r4
/* 815071E4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 815071E8 | 7C 7C 1B 78 */	mr r28, r3
/* 815071EC | 88 67 00 18 */	lbz r3, 0x18(r7)
/* 815071F0 | 80 87 00 1C */	lwz r4, 0x1c(r7)
/* 815071F4 | 48 00 82 D9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 815071F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815071FC | 40 82 00 0C */	bne .L_81507208
/* 81507200 | 38 60 00 00 */	li r3, 0x0
/* 81507204 | 48 00 00 B4 */	b .L_815072B8
.L_81507208:
/* 81507208 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8150720C | 7C 1D 00 40 */	cmplw r29, r0
/* 81507210 | 41 80 00 0C */	blt .L_8150721C
/* 81507214 | 38 60 00 00 */	li r3, 0x0
/* 81507218 | 48 00 00 A0 */	b .L_815072B8
.L_8150721C:
/* 8150721C | 57 A0 18 38 */	slwi r0, r29, 3
/* 81507220 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81507224 | 7C 83 02 14 */	add r4, r3, r0
/* 81507228 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 8150722C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81507230 | 48 00 82 9D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507234 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507238 | 7C 64 1B 78 */	mr r4, r3
/* 8150723C | 40 82 00 0C */	bne .L_81507248
/* 81507240 | 38 60 00 00 */	li r3, 0x0
/* 81507244 | 48 00 00 74 */	b .L_815072B8
.L_81507248:
/* 81507248 | 88 63 00 14 */	lbz r3, 0x14(r3)
/* 8150724C | 80 84 00 18 */	lwz r4, 0x18(r4)
/* 81507250 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81507254 | 48 00 82 79 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150725C | 40 82 00 0C */	bne .L_81507268
/* 81507260 | 38 60 00 00 */	li r3, 0x0
/* 81507264 | 48 00 00 54 */	b .L_815072B8
.L_81507268:
/* 81507268 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8150726C | 7C 1E 00 40 */	cmplw r30, r0
/* 81507270 | 41 80 00 0C */	blt .L_8150727C
/* 81507274 | 38 60 00 00 */	li r3, 0x0
/* 81507278 | 48 00 00 40 */	b .L_815072B8
.L_8150727C:
/* 8150727C | 57 C0 18 38 */	slwi r0, r30, 3
/* 81507280 | 80 BC 00 28 */	lwz r5, 0x28(r28)
/* 81507284 | 7C 83 02 14 */	add r4, r3, r0
/* 81507288 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 8150728C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81507290 | 48 00 82 3D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 81507294 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507298 | 40 82 00 0C */	bne .L_815072A4
/* 8150729C | 38 60 00 00 */	li r3, 0x0
/* 815072A0 | 48 00 00 18 */	b .L_815072B8
.L_815072A4:
/* 815072A4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 815072A8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 815072AC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 815072B0 | 38 60 00 01 */	li r3, 0x1
/* 815072B4 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_815072B8:
/* 815072B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815072BC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815072C0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815072C4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815072C8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 815072CC | 7C 08 03 A6 */	mtlr r0
/* 815072D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815072D4 | 4E 80 00 20 */	blr
.endfn ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos

# .text:0x116C | 0x815072D8 | size: 0x148
# nw4r::snd::detail::SoundArchiveFileReader::ConvertLabelStringToId(const nw4r::snd::detail::SoundArchiveFile::StringTree*, const char*) const
.fn ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc, global
/* 815072D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815072DC | 7C 08 02 A6 */	mflr r0
/* 815072E0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815072E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815072E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815072EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815072F0 | 7C BE 2B 78 */	mr r30, r5
/* 815072F4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815072F8 | 7C 9D 23 78 */	mr r29, r4
/* 815072FC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81507300 | 7C 7C 1B 78 */	mr r28, r3
/* 81507304 | 40 82 00 0C */	bne .L_81507310
/* 81507308 | 38 60 FF FF */	li r3, -0x1
/* 8150730C | 48 00 00 F4 */	b .L_81507400
.L_81507310:
/* 81507310 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 81507314 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81507318 | 7C 03 00 40 */	cmplw r3, r0
/* 8150731C | 41 80 00 0C */	blt .L_81507328
/* 81507320 | 38 60 FF FF */	li r3, -0x1
/* 81507324 | 48 00 00 DC */	b .L_81507400
.L_81507328:
/* 81507328 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 8150732C | 7F C3 F3 78 */	mr r3, r30
/* 81507330 | 7C 84 02 14 */	add r4, r4, r0
/* 81507334 | 3B E4 00 08 */	addi r31, r4, 0x8
/* 81507338 | 48 0F 1B C5 */	bl strlen
/* 8150733C | 38 A0 00 01 */	li r5, 0x1
/* 81507340 | 48 00 00 48 */	b .L_81507388
.L_81507344:
/* 81507344 | A0 1F 00 02 */	lhz r0, 0x2(r31)
/* 81507348 | 7C 04 1E 70 */	srawi r4, r0, 3
/* 8150734C | 54 06 07 7E */	clrlwi r6, r0, 29
/* 81507350 | 7C 04 18 00 */	cmpw r4, r3
/* 81507354 | 40 80 00 24 */	bge .L_81507378
/* 81507358 | 7C 1E 20 AE */	lbzx r0, r30, r4
/* 8150735C | 20 86 00 07 */	subfic r4, r6, 0x7
/* 81507360 | 7C A4 20 30 */	slw r4, r5, r4
/* 81507364 | 7C 00 07 74 */	extsb r0, r0
/* 81507368 | 7C 80 00 39 */	and. r0, r4, r0
/* 8150736C | 41 82 00 0C */	beq .L_81507378
/* 81507370 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81507374 | 48 00 00 08 */	b .L_8150737C
.L_81507378:
/* 81507378 | 80 1F 00 04 */	lwz r0, 0x4(r31)
.L_8150737C:
/* 8150737C | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 81507380 | 7C 9D 02 14 */	add r4, r29, r0
/* 81507384 | 3B E4 00 08 */	addi r31, r4, 0x8
.L_81507388:
/* 81507388 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8150738C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 81507390 | 41 82 FF B4 */	beq .L_81507344
/* 81507394 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81507398 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 8150739C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 815073A0 | 40 82 00 0C */	bne .L_815073AC
/* 815073A4 | 38 80 00 00 */	li r4, 0x0
/* 815073A8 | 48 00 00 3C */	b .L_815073E4
.L_815073AC:
/* 815073AC | 80 BC 00 30 */	lwz r5, 0x30(r28)
/* 815073B0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 815073B4 | 40 82 00 0C */	bne .L_815073C0
/* 815073B8 | 38 80 00 00 */	li r4, 0x0
/* 815073BC | 48 00 00 28 */	b .L_815073E4
.L_815073C0:
/* 815073C0 | 54 60 10 3A */	slwi r0, r3, 2
/* 815073C4 | 80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 815073C8 | 7C 65 02 14 */	add r3, r5, r0
/* 815073CC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 815073D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815073D4 | 40 82 00 0C */	bne .L_815073E0
/* 815073D8 | 38 80 00 00 */	li r4, 0x0
/* 815073DC | 48 00 00 08 */	b .L_815073E4
.L_815073E0:
/* 815073E0 | 7C 80 22 14 */	add r4, r0, r4
.L_815073E4:
/* 815073E4 | 7F C3 F3 78 */	mr r3, r30
/* 815073E8 | 48 0F B0 99 */	bl strcmp
/* 815073EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815073F0 | 40 82 00 0C */	bne .L_815073FC
/* 815073F4 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 815073F8 | 48 00 00 08 */	b .L_81507400
.L_815073FC:
/* 815073FC | 38 60 FF FF */	li r3, -0x1
.L_81507400:
/* 81507400 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81507404 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81507408 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150740C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81507410 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81507414 | 7C 08 03 A6 */	mtlr r0
/* 81507418 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150741C | 4E 80 00 20 */	blr
.endfn ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc

# .text:0x12B4 | 0x81507420 | size: 0xF4
# nw4r::snd::detail::SoundArchiveFileReader::impl_GetSoundInfoOffset(unsigned long) const
.fn impl_GetSoundInfoOffset__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl, global
/* 81507420 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81507424 | 7C 08 02 A6 */	mflr r0
/* 81507428 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8150742C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81507430 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81507434 | 7C 9F 23 78 */	mr r31, r4
/* 81507438 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150743C | 7C 7E 1B 78 */	mr r30, r3
/* 81507440 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 81507444 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81507448 | 48 00 80 85 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150744C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507450 | 40 82 00 10 */	bne .L_81507460
/* 81507454 | 80 6D AE C8 */	lwz r3, INVALID_DATA_REF$1361@sda21(r0)
/* 81507458 | 80 8D AE CC */	lwz r4, INVALID_DATA_REF$1361+0x4@sda21(r0)
/* 8150745C | 48 00 00 A0 */	b .L_815074FC
.L_81507460:
/* 81507460 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81507464 | 7C 1F 00 40 */	cmplw r31, r0
/* 81507468 | 41 80 00 10 */	blt .L_81507478
/* 8150746C | 80 6D AE C8 */	lwz r3, INVALID_DATA_REF$1361@sda21(r0)
/* 81507470 | 80 8D AE CC */	lwz r4, INVALID_DATA_REF$1361+0x4@sda21(r0)
/* 81507474 | 48 00 00 88 */	b .L_815074FC
.L_81507478:
/* 81507478 | A0 1E 00 06 */	lhz r0, 0x6(r30)
/* 8150747C | 28 00 01 01 */	cmplwi r0, 0x101
/* 81507480 | 41 80 00 54 */	blt .L_815074D4
/* 81507484 | 57 E0 18 38 */	slwi r0, r31, 3
/* 81507488 | 80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8150748C | 7C 83 02 14 */	add r4, r3, r0
/* 81507490 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81507494 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81507498 | 48 00 80 35 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150749C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815074A0 | 40 82 00 18 */	bne .L_815074B8
/* 815074A4 | 80 6D AE C8 */	lwz r3, INVALID_DATA_REF$1361@sda21(r0)
/* 815074A8 | 80 0D AE CC */	lwz r0, INVALID_DATA_REF$1361+0x4@sda21(r0)
/* 815074AC | 90 61 00 10 */	stw r3, 0x10(r1)
/* 815074B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815074B4 | 48 00 00 14 */	b .L_815074C8
.L_815074B8:
/* 815074B8 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 815074BC | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 815074C0 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 815074C4 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_815074C8:
/* 815074C8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 815074CC | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 815074D0 | 48 00 00 2C */	b .L_815074FC
.L_815074D4:
/* 815074D4 | 57 E0 18 38 */	slwi r0, r31, 3
/* 815074D8 | 7C 63 02 14 */	add r3, r3, r0
/* 815074DC | 88 83 00 04 */	lbz r4, 0x4(r3)
/* 815074E0 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 815074E4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 815074E8 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 815074EC | 38 83 00 1C */	addi r4, r3, 0x1c
/* 815074F0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 815074F4 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 815074F8 | 80 61 00 08 */	lwz r3, 0x8(r1)
.L_815074FC:
/* 815074FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81507500 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81507504 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81507508 | 7C 08 03 A6 */	mtlr r0
/* 8150750C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81507510 | 4E 80 00 20 */	blr
.endfn impl_GetSoundInfoOffset__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl

# 0x8166F8F8..0x8166F918 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166F8F8 | size: 0x20
# nw4r::snd::SoundArchive::__vtable
.obj __vt__Q34nw4r3snd12SoundArchive, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd12SoundArchiveFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q34nw4r3snd12SoundArchive

# 0x81698F08..0x81698F10 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F08 | size: 0x8
.obj INVALID_DATA_REF$1361, local
	.skip 0x8
.endobj INVALID_DATA_REF$1361
