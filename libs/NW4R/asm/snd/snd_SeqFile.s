.include "macros.inc"
.file "snd_SeqFile.cpp"

# 0x81503BE0..0x81503C5C | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x81503BE0 | size: 0x6C
# nw4r::snd::detail::SeqFileReader::SeqFileReader(const void*)
.fn __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv, global
/* 81503BE0 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81503BE4 | 38 C0 00 00 */	li r6, 0x0
/* 81503BE8 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81503BEC | 3C 05 AD AD */	subis r0, r5, 0x5253
/* 81503BF0 | 28 00 45 51 */	cmplwi r0, 0x4551
/* 81503BF4 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81503BF8 | 41 82 00 0C */	beq .L_81503C04
/* 81503BFC | 38 00 00 00 */	li r0, 0x0
/* 81503C00 | 48 00 00 30 */	b .L_81503C30
.L_81503C04:
/* 81503C04 | A0 C4 00 06 */	lhz r6, 0x6(r4)
/* 81503C08 | 28 06 01 00 */	cmplwi r6, 0x100
/* 81503C0C | 40 80 00 0C */	bge .L_81503C18
/* 81503C10 | 38 00 00 00 */	li r0, 0x0
/* 81503C14 | 48 00 00 1C */	b .L_81503C30
.L_81503C18:
/* 81503C18 | 20 06 01 00 */	subfic r0, r6, 0x100
/* 81503C1C | 38 A0 01 00 */	li r5, 0x100
/* 81503C20 | 7C A5 33 38 */	orc r5, r5, r6
/* 81503C24 | 54 00 F8 7E */	srwi r0, r0, 1
/* 81503C28 | 7C 00 28 50 */	subf r0, r0, r5
/* 81503C2C | 54 00 0F FE */	srwi r0, r0, 31
.L_81503C30:
/* 81503C30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503C34 | 4D 82 00 20 */	beqlr
/* 81503C38 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 81503C3C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81503C40 | 7C 00 22 14 */	add r0, r0, r4
/* 81503C44 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81503C48 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv

# .text:0x6C | 0x81503C4C | size: 0x10
# nw4r::snd::detail::SeqFileReader::GetBaseAddress() const
.fn GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv, global
/* 81503C4C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81503C50 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81503C54 | 7C 60 1A 14 */	add r3, r0, r3
/* 81503C58 | 4E 80 00 20 */	blr
.endfn GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
