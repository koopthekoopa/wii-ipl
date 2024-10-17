.include "macros.inc"
.file "snd_MidiSeqPlayer.cpp"

# 0x81501B58..0x81501BF4 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x81501B58 | size: 0x4
# nw4r::snd::detail::SeqPlayer::InvalidateWaveData(const void*, const void*)
.fn InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv, global
/* 81501B58 | 4E 80 00 20 */	blr
.endfn InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

# .text:0x4 | 0x81501B5C | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetLpfFreq() const
.fn GetLpfFreq__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B5C | C0 23 00 38 */	lfs f1, 0x38(r3)
/* 81501B60 | 4E 80 00 20 */	blr
.endfn GetLpfFreq__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0xC | 0x81501B64 | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetSurroundPan2() const
.fn GetSurroundPan2__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B64 | C0 23 00 30 */	lfs f1, 0x30(r3)
/* 81501B68 | 4E 80 00 20 */	blr
.endfn GetSurroundPan2__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x14 | 0x81501B6C | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetPan2() const
.fn GetPan2__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B6C | C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 81501B70 | 4E 80 00 20 */	blr
.endfn GetPan2__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x1C | 0x81501B74 | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetSurroundPan() const
.fn GetSurroundPan__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B74 | C0 23 00 24 */	lfs f1, 0x24(r3)
/* 81501B78 | 4E 80 00 20 */	blr
.endfn GetSurroundPan__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x24 | 0x81501B7C | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetPan() const
.fn GetPan__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B7C | C0 23 00 20 */	lfs f1, 0x20(r3)
/* 81501B80 | 4E 80 00 20 */	blr
.endfn GetPan__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x2C | 0x81501B84 | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetPitch() const
.fn GetPitch__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B84 | C0 23 00 34 */	lfs f1, 0x34(r3)
/* 81501B88 | 4E 80 00 20 */	blr
.endfn GetPitch__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x34 | 0x81501B8C | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetVolume() const
.fn GetVolume__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B8C | C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 81501B90 | 4E 80 00 20 */	blr
.endfn GetVolume__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x3C | 0x81501B94 | size: 0x14
# nw4r::snd::detail::SeqPlayer::IsPause() const
.fn IsPause__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501B94 | 88 63 00 18 */	lbz r3, 0x18(r3)
/* 81501B98 | 7C 03 00 D0 */	neg r0, r3
/* 81501B9C | 7C 00 1B 78 */	or r0, r0, r3
/* 81501BA0 | 54 03 0F FE */	srwi r3, r0, 31
/* 81501BA4 | 4E 80 00 20 */	blr
.endfn IsPause__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x50 | 0x81501BA8 | size: 0x14
# nw4r::snd::detail::SeqPlayer::IsStarted() const
.fn IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501BA8 | 88 63 00 17 */	lbz r3, 0x17(r3)
/* 81501BAC | 7C 03 00 D0 */	neg r0, r3
/* 81501BB0 | 7C 00 1B 78 */	or r0, r0, r3
/* 81501BB4 | 54 03 0F FE */	srwi r3, r0, 31
/* 81501BB8 | 4E 80 00 20 */	blr
.endfn IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x64 | 0x81501BBC | size: 0x14
# nw4r::snd::detail::SeqPlayer::IsPrepared() const
.fn IsPrepared__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501BBC | 88 63 00 16 */	lbz r3, 0x16(r3)
/* 81501BC0 | 7C 03 00 D0 */	neg r0, r3
/* 81501BC4 | 7C 00 1B 78 */	or r0, r0, r3
/* 81501BC8 | 54 03 0F FE */	srwi r3, r0, 31
/* 81501BCC | 4E 80 00 20 */	blr
.endfn IsPrepared__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x78 | 0x81501BD0 | size: 0x14
# nw4r::snd::detail::SeqPlayer::IsActive() const
.fn IsActive__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81501BD0 | 88 63 00 15 */	lbz r3, 0x15(r3)
/* 81501BD4 | 7C 03 00 D0 */	neg r0, r3
/* 81501BD8 | 7C 00 1B 78 */	or r0, r0, r3
/* 81501BDC | 54 03 0F FE */	srwi r3, r0, 31
/* 81501BE0 | 4E 80 00 20 */	blr
.endfn IsActive__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x8C | 0x81501BE4 | size: 0x8
# nw4r::snd::detail::SeqPlayer::@8@InvalidateWaveData(const void*, const void*)
.fn "@8@InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv", global
/* 81501BE4 | 38 63 FF F8 */	subi r3, r3, 0x8
/* 81501BE8 | 4B FF FF 70 */	b InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
.endfn "@8@InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv"

# .text:0x94 | 0x81501BEC | size: 0x8
# nw4r::snd::detail::SeqPlayer::@8@InvalidateData(const void*, const void*)
.fn "@8@InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv", global
/* 81501BEC | 38 63 FF F8 */	subi r3, r3, 0x8
/* 81501BF0 | 48 00 2B D4 */	b InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
.endfn "@8@InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv"
