.include "macros.inc"
.file "snd_Bank.cpp"

# 0x814FBEF4..0x814FC11C | size: 0x228
.text
.balign 4

# .text:0x0 | 0x814FBEF4 | size: 0x38
# nw4r::snd::detail::Bank::Bank(const void*)
.fn __ct__Q44nw4r3snd6detail4BankFPCv, global
/* 814FBEF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FBEF8 | 7C 08 02 A6 */	mflr r0
/* 814FBEFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FBF00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FBF04 | 7C 7F 1B 78 */	mr r31, r3
/* 814FBF08 | 48 00 02 15 */	bl __ct__Q44nw4r3snd6detail14BankFileReaderFPCv
/* 814FBF0C | 38 00 00 00 */	li r0, 0x0
/* 814FBF10 | 7F E3 FB 78 */	mr r3, r31
/* 814FBF14 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814FBF18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FBF1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FBF20 | 7C 08 03 A6 */	mtlr r0
/* 814FBF24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FBF28 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail4BankFPCv

# .text:0x38 | 0x814FBF2C | size: 0x40
# nw4r::snd::detail::Bank::~Bank()
.fn __dt__Q44nw4r3snd6detail4BankFv, global
/* 814FBF2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FBF30 | 7C 08 02 A6 */	mflr r0
/* 814FBF34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FBF38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FBF3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FBF40 | 7C 7F 1B 78 */	mr r31, r3
/* 814FBF44 | 41 82 00 10 */	beq .L_814FBF54
/* 814FBF48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FBF4C | 40 81 00 08 */	ble .L_814FBF54
/* 814FBF50 | 48 0F C1 95 */	bl __dl__FPv
.L_814FBF54:
/* 814FBF54 | 7F E3 FB 78 */	mr r3, r31
/* 814FBF58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FBF5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FBF60 | 7C 08 03 A6 */	mtlr r0
/* 814FBF64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FBF68 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail4BankFv

# .text:0x78 | 0x814FBF6C | size: 0x1B0
# nw4r::snd::detail::Bank::NoteOn(const nw4r::snd::detail::NoteOnInfo&) const
.fn NoteOn__Q44nw4r3snd6detail4BankCFRCQ44nw4r3snd6detail10NoteOnInfo, global
/* 814FBF6C | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814FBF70 | 7C 08 02 A6 */	mflr r0
/* 814FBF74 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 814FBF78 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814FBF7C | 3C 00 43 30 */	lis r0, 0x4330
/* 814FBF80 | 93 E1 00 CC */	stw r31, 0xcc(r1)
/* 814FBF84 | 7C 7F 1B 78 */	mr r31, r3
/* 814FBF88 | 93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 814FBF8C | 7C 9E 23 78 */	mr r30, r4
/* 814FBF90 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 814FBF94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FBF98 | 90 01 00 B0 */	stw r0, 0xb0(r1)
/* 814FBF9C | 80 FE 00 08 */	lwz r7, 0x8(r30)
/* 814FBFA0 | 90 01 00 B8 */	stw r0, 0xb8(r1)
/* 814FBFA4 | 48 00 01 F5 */	bl ReadInstInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8InstInfoiii
/* 814FBFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FBFAC | 40 82 00 0C */	bne .L_814FBFB8
/* 814FBFB0 | 38 60 00 00 */	li r3, 0x0
/* 814FBFB4 | 48 00 01 50 */	b .L_814FC104
.L_814FBFB8:
/* 814FBFB8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814FBFBC | 7F E3 FB 78 */	mr r3, r31
/* 814FBFC0 | 80 DF 00 0C */	lwz r6, 0xc(r31)
/* 814FBFC4 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814FBFC8 | 48 00 04 A5 */	bl ReadWaveParam__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8WaveDataiPCv
/* 814FBFCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FBFD0 | 40 82 00 0C */	bne .L_814FBFDC
/* 814FBFD4 | 38 60 00 00 */	li r3, 0x0
/* 814FBFD8 | 48 00 01 2C */	b .L_814FC104
.L_814FBFDC:
/* 814FBFDC | 88 01 00 1A */	lbz r0, 0x1a(r1)
/* 814FBFE0 | 38 60 00 02 */	li r3, 0x2
/* 814FBFE4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814FBFE8 | 41 81 00 08 */	bgt .L_814FBFF0
/* 814FBFEC | 7C 03 03 78 */	mr r3, r0
.L_814FBFF0:
/* 814FBFF0 | 80 9E 00 18 */	lwz r4, 0x18(r30)
/* 814FBFF4 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 814FBFF8 | 80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 814FBFFC | 80 FE 00 20 */	lwz r7, 0x20(r30)
/* 814FC000 | 48 00 22 D1 */	bl AllocChannel__Q44nw4r3snd6detail7ChannelFiiiPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl
/* 814FC004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC008 | 7C 7F 1B 78 */	mr r31, r3
/* 814FC00C | 40 82 00 0C */	bne .L_814FC018
/* 814FC010 | 38 60 00 00 */	li r3, 0x0
/* 814FC014 | 48 00 00 F0 */	b .L_814FC104
.L_814FC018:
/* 814FC018 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814FC01C | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 814FC020 | 90 83 00 CC */	stw r4, 0xcc(r3)
/* 814FC024 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814FC028 | C8 22 8E 38 */	lfd f1, lbl_81695238@sda21(r0)
/* 814FC02C | 88 81 00 10 */	lbz r4, 0x10(r1)
/* 814FC030 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814FC034 | C0 42 8E 28 */	lfs f2, lbl_81695228@sda21(r0)
/* 814FC038 | 90 83 00 D0 */	stw r4, 0xd0(r3)
/* 814FC03C | C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 814FC040 | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 814FC044 | EC 60 08 28 */	fsubs f3, f0, f1
/* 814FC048 | C8 22 8E 40 */	lfd f1, lbl_81695240@sda21(r0)
/* 814FC04C | 90 01 00 BC */	stw r0, 0xbc(r1)
/* 814FC050 | C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 814FC054 | EC 63 10 24 */	fdivs f3, f3, f2
/* 814FC058 | EC 00 08 28 */	fsubs f0, f0, f1
/* 814FC05C | EC 63 00 F2 */	fmuls f3, f3, f3
/* 814FC060 | EC 00 10 24 */	fdivs f0, f0, f2
/* 814FC064 | EC 63 00 32 */	fmuls f3, f3, f0
/* 814FC068 | D0 63 00 B4 */	stfs f3, 0xb4(r3)
/* 814FC06C | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 814FC070 | D0 03 00 C0 */	stfs f0, 0xc0(r3)
/* 814FC074 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814FC078 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 814FC07C | 48 00 31 E1 */	bl SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi
/* 814FC080 | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 814FC084 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 814FC088 | 48 00 31 ED */	bl SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi
/* 814FC08C | 88 81 00 0E */	lbz r4, 0xe(r1)
/* 814FC090 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 814FC094 | 48 00 32 81 */	bl SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi
/* 814FC098 | 88 81 00 0F */	lbz r4, 0xf(r1)
/* 814FC09C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 814FC0A0 | 48 00 32 7D */	bl SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi
/* 814FC0A4 | 88 A1 00 11 */	lbz r5, 0x11(r1)
/* 814FC0A8 | 7F E3 FB 78 */	mr r3, r31
/* 814FC0AC | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 814FC0B0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814FC0B4 | 38 A5 FF C0 */	subi r5, r5, 0x40
/* 814FC0B8 | C8 82 8E 38 */	lfd f4, lbl_81695238@sda21(r0)
/* 814FC0BC | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814FC0C0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814FC0C4 | 90 A1 00 B4 */	stw r5, 0xb4(r1)
/* 814FC0C8 | C0 42 8E 2C */	lfs f2, lbl_8169522C@sda21(r0)
/* 814FC0CC | 90 01 00 BC */	stw r0, 0xbc(r1)
/* 814FC0D0 | C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 814FC0D4 | C8 21 00 B8 */	lfd f1, 0xb8(r1)
/* 814FC0D8 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FC0DC | C0 02 8E 30 */	lfs f0, lbl_81695230@sda21(r0)
/* 814FC0E0 | EC 21 20 28 */	fsubs f1, f1, f4
/* 814FC0E4 | 80 BE 00 0C */	lwz r5, 0xc(r30)
/* 814FC0E8 | EC 63 10 24 */	fdivs f3, f3, f2
/* 814FC0EC | EC 21 10 24 */	fdivs f1, f1, f2
/* 814FC0F0 | EC 63 08 2A */	fadds f3, f3, f1
/* 814FC0F4 | D0 7F 00 B8 */	stfs f3, 0xb8(r31)
/* 814FC0F8 | D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 814FC0FC | 48 00 1E 59 */	bl Start__Q44nw4r3snd6detail7ChannelFRCQ44nw4r3snd6detail8WaveDatal
/* 814FC100 | 7F E3 FB 78 */	mr r3, r31
.L_814FC104:
/* 814FC104 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 814FC108 | 83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 814FC10C | 83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 814FC110 | 7C 08 03 A6 */	mtlr r0
/* 814FC114 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 814FC118 | 4E 80 00 20 */	blr
.endfn NoteOn__Q44nw4r3snd6detail4BankCFRCQ44nw4r3snd6detail10NoteOnInfo

# 0x81695228..0x81695248 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695228 | size: 0x4
.obj lbl_81695228, global
	.float 127
.endobj lbl_81695228

# .sdata2:0x4 | 0x8169522C | size: 0x4
.obj lbl_8169522C, global
	.float 63
.endobj lbl_8169522C

# .sdata2:0x8 | 0x81695230 | size: 0x4
.obj lbl_81695230, global
	.float 0
.endobj lbl_81695230

# .sdata2:0xC | 0x81695234 | size: 0x4
.obj gap_09_81695234_sdata2, global
.hidden gap_09_81695234_sdata2
	.4byte 0x00000000
.endobj gap_09_81695234_sdata2

# .sdata2:0x10 | 0x81695238 | size: 0x8
.obj lbl_81695238, global
	.double 4503601774854144
.endobj lbl_81695238

# .sdata2:0x18 | 0x81695240 | size: 0x8
.obj lbl_81695240, global
	.double 4503599627370496
.endobj lbl_81695240
