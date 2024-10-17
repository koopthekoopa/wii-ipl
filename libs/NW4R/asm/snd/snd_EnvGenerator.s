.include "macros.inc"
.file "snd_EnvGenerator.cpp"

# 0x814FF084..0x814FF3BC | size: 0x338
.text
.balign 4

# .text:0x0 | 0x814FF084 | size: 0x38
# nw4r::snd::detail::EnvGenerator::EnvGenerator()
.fn __ct__Q44nw4r3snd6detail12EnvGeneratorFv, global
/* 814FF084 | 3C 80 81 62 */	lis r4, attackTable$1656@ha
/* 814FF088 | C0 42 8E 88 */	lfs f2, lbl_81695288@sda21(r0)
/* 814FF08C | 38 84 E3 F0 */	addi r4, r4, attackTable$1656@l
/* 814FF090 | C0 02 8E 8C */	lfs f0, lbl_8169528C@sda21(r0)
/* 814FF094 | C0 24 01 FC */	lfs f1, 0x1fc(r4)
/* 814FF098 | 38 80 00 7F */	li r4, 0x7f
/* 814FF09C | 38 00 00 00 */	li r0, 0x0
/* 814FF0A0 | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 814FF0A4 | D0 23 00 10 */	stfs f1, 0x10(r3)
/* 814FF0A8 | 98 83 00 14 */	stb r4, 0x14(r3)
/* 814FF0AC | D0 43 00 0C */	stfs f2, 0xc(r3)
/* 814FF0B0 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 814FF0B4 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF0B8 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail12EnvGeneratorFv

# .text:0x38 | 0x814FF0BC | size: 0x38
# nw4r::snd::detail::EnvGenerator::Init()
.fn Init__Q44nw4r3snd6detail12EnvGeneratorFv, global
/* 814FF0BC | 3C 80 81 62 */	lis r4, attackTable$1656@ha
/* 814FF0C0 | C0 42 8E 88 */	lfs f2, lbl_81695288@sda21(r0)
/* 814FF0C4 | 38 84 E3 F0 */	addi r4, r4, attackTable$1656@l
/* 814FF0C8 | C0 02 8E 8C */	lfs f0, lbl_8169528C@sda21(r0)
/* 814FF0CC | C0 24 01 FC */	lfs f1, 0x1fc(r4)
/* 814FF0D0 | 38 80 00 7F */	li r4, 0x7f
/* 814FF0D4 | 38 00 00 00 */	li r0, 0x0
/* 814FF0D8 | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 814FF0DC | D0 23 00 10 */	stfs f1, 0x10(r3)
/* 814FF0E0 | 98 83 00 14 */	stb r4, 0x14(r3)
/* 814FF0E4 | D0 43 00 0C */	stfs f2, 0xc(r3)
/* 814FF0E8 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 814FF0EC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF0F0 | 4E 80 00 20 */	blr
.endfn Init__Q44nw4r3snd6detail12EnvGeneratorFv

# .text:0x70 | 0x814FF0F4 | size: 0x14
# nw4r::snd::detail::EnvGenerator::Reset()
.fn Reset__Q44nw4r3snd6detail12EnvGeneratorFv, global
/* 814FF0F4 | C0 02 8E 8C */	lfs f0, lbl_8169528C@sda21(r0)
/* 814FF0F8 | 38 00 00 00 */	li r0, 0x0
/* 814FF0FC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF100 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 814FF104 | 4E 80 00 20 */	blr
.endfn Reset__Q44nw4r3snd6detail12EnvGeneratorFv

# .text:0x84 | 0x814FF108 | size: 0x30
# nw4r::snd::detail::EnvGenerator::GetValue() const
.fn GetValue__Q44nw4r3snd6detail12EnvGeneratorCFv, global
/* 814FF108 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FF10C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF110 | 40 82 00 18 */	bne .L_814FF128
/* 814FF114 | C0 22 8E 90 */	lfs f1, lbl_81695290@sda21(r0)
/* 814FF118 | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 814FF11C | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 814FF120 | 40 82 00 08 */	bne .L_814FF128
/* 814FF124 | 48 01 01 F8 */	b CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf
.L_814FF128:
/* 814FF128 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 814FF12C | C0 02 8E 94 */	lfs f0, lbl_81695294@sda21(r0)
/* 814FF130 | EC 21 00 24 */	fdivs f1, f1, f0
/* 814FF134 | 48 01 01 E8 */	b CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf
.endfn GetValue__Q44nw4r3snd6detail12EnvGeneratorCFv

# .text:0xB4 | 0x814FF138 | size: 0x124
# nw4r::snd::detail::EnvGenerator::Update(int)
.fn Update__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 814FF138 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF13C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FF140 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814FF144 | 41 82 01 10 */	beq .L_814FF254
/* 814FF148 | 40 80 00 14 */	bge .L_814FF15C
/* 814FF14C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FF150 | 41 82 00 18 */	beq .L_814FF168
/* 814FF154 | 40 80 00 60 */	bge .L_814FF1B4
/* 814FF158 | 48 00 00 FC */	b .L_814FF254
.L_814FF15C:
/* 814FF15C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814FF160 | 40 80 00 F4 */	bge .L_814FF254
/* 814FF164 | 48 00 00 C0 */	b .L_814FF224
.L_814FF168:
/* 814FF168 | C0 02 8E 90 */	lfs f0, lbl_81695290@sda21(r0)
/* 814FF16C | 38 00 00 01 */	li r0, 0x1
/* 814FF170 | C0 22 8E 98 */	lfs f1, lbl_81695298@sda21(r0)
/* 814FF174 | 7C 89 03 A6 */	mtctr r4
/* 814FF178 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FF17C | 40 81 00 2C */	ble .L_814FF1A8
.L_814FF180:
/* 814FF180 | C0 63 00 04 */	lfs f3, 0x4(r3)
/* 814FF184 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814FF188 | C0 43 00 10 */	lfs f2, 0x10(r3)
/* 814FF18C | EC 43 00 B2 */	fmuls f2, f3, f2
/* 814FF190 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 814FF194 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 814FF198 | 40 81 00 0C */	ble .L_814FF1A4
/* 814FF19C | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 814FF1A0 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814FF1A4:
/* 814FF1A4 | 42 00 FF DC */	bdnz .L_814FF180
.L_814FF1A8:
/* 814FF1A8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814FF1AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814FF1B0 | 40 82 00 A4 */	bne .L_814FF254
.L_814FF1B4:
/* 814FF1B4 | 3C A0 43 30 */	lis r5, 0x4330
/* 814FF1B8 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FF1BC | 88 C3 00 14 */	lbz r6, 0x14(r3)
/* 814FF1C0 | 3C 80 81 62 */	lis r4, DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator@ha
/* 814FF1C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FF1C8 | 38 84 E2 F0 */	addi r4, r4, DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator@l
/* 814FF1CC | 54 C0 08 3C */	slwi r0, r6, 1
/* 814FF1D0 | C8 62 8E A0 */	lfd f3, lbl_816952A0@sda21(r0)
/* 814FF1D4 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814FF1D8 | 7C 04 02 AE */	lhax r0, r4, r0
/* 814FF1DC | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FF1E0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814FF1E4 | C0 23 00 08 */	lfs f1, 0x8(r3)
/* 814FF1E8 | EC 40 18 28 */	fsubs f2, f0, f3
/* 814FF1EC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FF1F0 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 814FF1F4 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814FF1F8 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 814FF1FC | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814FF200 | EC 00 08 28 */	fsubs f0, f0, f1
/* 814FF204 | EC 22 18 28 */	fsubs f1, f2, f3
/* 814FF208 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 814FF20C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 814FF210 | 41 81 00 44 */	bgt .L_814FF254
/* 814FF214 | 38 00 00 02 */	li r0, 0x2
/* 814FF218 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 814FF21C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814FF220 | 48 00 00 34 */	b .L_814FF254
.L_814FF224:
/* 814FF224 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 814FF228 | 3C 00 43 30 */	lis r0, 0x4330
/* 814FF22C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814FF230 | C8 62 8E A0 */	lfd f3, lbl_816952A0@sda21(r0)
/* 814FF234 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FF238 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 814FF23C | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 814FF240 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 814FF244 | EC 42 18 28 */	fsubs f2, f2, f3
/* 814FF248 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 814FF24C | EC 00 08 28 */	fsubs f0, f0, f1
/* 814FF250 | D0 03 00 04 */	stfs f0, 0x4(r3)
.L_814FF254:
/* 814FF254 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF258 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail12EnvGeneratorFi

# .text:0x1D8 | 0x814FF25C | size: 0x18
# nw4r::snd::detail::EnvGenerator::SetAttack(int)
.fn SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 814FF25C | 3C A0 81 62 */	lis r5, attackTable$1656@ha
/* 814FF260 | 54 80 10 3A */	slwi r0, r4, 2
/* 814FF264 | 38 A5 E3 F0 */	addi r5, r5, attackTable$1656@l
/* 814FF268 | 7C 05 04 2E */	lfsx f0, r5, r0
/* 814FF26C | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 814FF270 | 4E 80 00 20 */	blr
.endfn SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi

# .text:0x1F0 | 0x814FF274 | size: 0xA0
# nw4r::snd::detail::EnvGenerator::SetDecay(int)
.fn SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 814FF274 | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 814FF278 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF27C | 40 82 00 0C */	bne .L_814FF288
/* 814FF280 | C0 02 8E 88 */	lfs f0, lbl_81695288@sda21(r0)
/* 814FF284 | 48 00 00 84 */	b .L_814FF308
.L_814FF288:
/* 814FF288 | 2C 04 00 7E */	cmpwi r4, 0x7e
/* 814FF28C | 40 82 00 0C */	bne .L_814FF298
/* 814FF290 | C0 02 8E A8 */	lfs f0, lbl_816952A8@sda21(r0)
/* 814FF294 | 48 00 00 74 */	b .L_814FF308
.L_814FF298:
/* 814FF298 | 2C 04 00 32 */	cmpwi r4, 0x32
/* 814FF29C | 40 80 00 3C */	bge .L_814FF2D8
/* 814FF2A0 | 54 84 08 3C */	slwi r4, r4, 1
/* 814FF2A4 | 3C 00 43 30 */	lis r0, 0x4330
/* 814FF2A8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814FF2AC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FF2B0 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FF2B4 | C8 62 8E A0 */	lfd f3, lbl_816952A0@sda21(r0)
/* 814FF2B8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FF2BC | C0 22 8E AC */	lfs f1, lbl_816952AC@sda21(r0)
/* 814FF2C0 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814FF2C4 | C0 02 8E B0 */	lfs f0, lbl_816952B0@sda21(r0)
/* 814FF2C8 | EC 42 18 28 */	fsubs f2, f2, f3
/* 814FF2CC | EC 22 00 72 */	fmuls f1, f2, f1
/* 814FF2D0 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FF2D4 | 48 00 00 34 */	b .L_814FF308
.L_814FF2D8:
/* 814FF2D8 | 20 84 00 7E */	subfic r4, r4, 0x7e
/* 814FF2DC | 3C 00 43 30 */	lis r0, 0x4330
/* 814FF2E0 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 814FF2E4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FF2E8 | C8 62 8E A0 */	lfd f3, lbl_816952A0@sda21(r0)
/* 814FF2EC | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814FF2F0 | C0 22 8E B4 */	lfs f1, lbl_816952B4@sda21(r0)
/* 814FF2F4 | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 814FF2F8 | C0 02 8E B0 */	lfs f0, lbl_816952B0@sda21(r0)
/* 814FF2FC | EC 42 18 28 */	fsubs f2, f2, f3
/* 814FF300 | EC 21 10 24 */	fdivs f1, f1, f2
/* 814FF304 | EC 01 00 24 */	fdivs f0, f1, f0
.L_814FF308:
/* 814FF308 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 814FF30C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF310 | 4E 80 00 20 */	blr
.endfn SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi

# .text:0x290 | 0x814FF314 | size: 0x8
# nw4r::snd::detail::EnvGenerator::SetSustain(int)
.fn SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 814FF314 | 98 83 00 14 */	stb r4, 0x14(r3)
/* 814FF318 | 4E 80 00 20 */	blr
.endfn SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi

# .text:0x298 | 0x814FF31C | size: 0xA0
# nw4r::snd::detail::EnvGenerator::SetRelease(int)
.fn SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 814FF31C | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 814FF320 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF324 | 40 82 00 0C */	bne .L_814FF330
/* 814FF328 | C0 02 8E 88 */	lfs f0, lbl_81695288@sda21(r0)
/* 814FF32C | 48 00 00 84 */	b .L_814FF3B0
.L_814FF330:
/* 814FF330 | 2C 04 00 7E */	cmpwi r4, 0x7e
/* 814FF334 | 40 82 00 0C */	bne .L_814FF340
/* 814FF338 | C0 02 8E A8 */	lfs f0, lbl_816952A8@sda21(r0)
/* 814FF33C | 48 00 00 74 */	b .L_814FF3B0
.L_814FF340:
/* 814FF340 | 2C 04 00 32 */	cmpwi r4, 0x32
/* 814FF344 | 40 80 00 3C */	bge .L_814FF380
/* 814FF348 | 54 84 08 3C */	slwi r4, r4, 1
/* 814FF34C | 3C 00 43 30 */	lis r0, 0x4330
/* 814FF350 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814FF354 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FF358 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FF35C | C8 62 8E A0 */	lfd f3, lbl_816952A0@sda21(r0)
/* 814FF360 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FF364 | C0 22 8E AC */	lfs f1, lbl_816952AC@sda21(r0)
/* 814FF368 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814FF36C | C0 02 8E B0 */	lfs f0, lbl_816952B0@sda21(r0)
/* 814FF370 | EC 42 18 28 */	fsubs f2, f2, f3
/* 814FF374 | EC 22 00 72 */	fmuls f1, f2, f1
/* 814FF378 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FF37C | 48 00 00 34 */	b .L_814FF3B0
.L_814FF380:
/* 814FF380 | 20 84 00 7E */	subfic r4, r4, 0x7e
/* 814FF384 | 3C 00 43 30 */	lis r0, 0x4330
/* 814FF388 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 814FF38C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FF390 | C8 62 8E A0 */	lfd f3, lbl_816952A0@sda21(r0)
/* 814FF394 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814FF398 | C0 22 8E B4 */	lfs f1, lbl_816952B4@sda21(r0)
/* 814FF39C | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 814FF3A0 | C0 02 8E B0 */	lfs f0, lbl_816952B0@sda21(r0)
/* 814FF3A4 | EC 42 18 28 */	fsubs f2, f2, f3
/* 814FF3A8 | EC 21 10 24 */	fdivs f1, f1, f2
/* 814FF3AC | EC 01 00 24 */	fdivs f0, f1, f0
.L_814FF3B0:
/* 814FF3B0 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 814FF3B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF3B8 | 4E 80 00 20 */	blr
.endfn SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi

# 0x8161E2F0..0x8161E5F0 | size: 0x300
.rodata
.balign 8

# .rodata:0x0 | 0x8161E2F0 | size: 0x100
# nw4r::snd::detail::EnvGenerator::DecibelSquareTable
.obj DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator, global
	.4byte 0xFD2DFD2E
	.4byte 0xFD2FFD75
	.4byte 0xFDA7FDCE
	.4byte 0xFDEEFE09
	.4byte 0xFE20FE34
	.4byte 0xFE46FE57
	.4byte 0xFE66FE74
	.4byte 0xFE81FE8D
	.4byte 0xFE98FEA3
	.4byte 0xFEADFEB6
	.4byte 0xFEBFFEC7
	.4byte 0xFECFFED7
	.4byte 0xFEDFFEE6
	.4byte 0xFEECFEF3
	.4byte 0xFEF9FEFF
	.4byte 0xFF05FF0B
	.4byte 0xFF11FF16
	.4byte 0xFF1BFF20
	.4byte 0xFF25FF2A
	.4byte 0xFF2EFF33
	.4byte 0xFF37FF3C
	.4byte 0xFF40FF44
	.4byte 0xFF48FF4C
	.4byte 0xFF50FF53
	.4byte 0xFF57FF5B
	.4byte 0xFF5EFF62
	.4byte 0xFF65FF68
	.4byte 0xFF6BFF6F
	.4byte 0xFF72FF75
	.4byte 0xFF78FF7B
	.4byte 0xFF7EFF81
	.4byte 0xFF83FF86
	.4byte 0xFF89FF8C
	.4byte 0xFF8EFF91
	.4byte 0xFF93FF96
	.4byte 0xFF99FF9B
	.4byte 0xFF9DFFA0
	.4byte 0xFFA2FFA5
	.4byte 0xFFA7FFA9
	.4byte 0xFFABFFAE
	.4byte 0xFFB0FFB2
	.4byte 0xFFB4FFB6
	.4byte 0xFFB8FFBA
	.4byte 0xFFBCFFBE
	.4byte 0xFFC0FFC2
	.4byte 0xFFC4FFC6
	.4byte 0xFFC8FFCA
	.4byte 0xFFCCFFCE
	.4byte 0xFFCFFFD1
	.4byte 0xFFD3FFD5
	.4byte 0xFFD6FFD8
	.4byte 0xFFDAFFDC
	.4byte 0xFFDDFFDF
	.4byte 0xFFE1FFE2
	.4byte 0xFFE4FFE5
	.4byte 0xFFE7FFE9
	.4byte 0xFFEAFFEC
	.4byte 0xFFEDFFEF
	.4byte 0xFFF0FFF2
	.4byte 0xFFF3FFF5
	.4byte 0xFFF6FFF8
	.4byte 0xFFF9FFFA
	.4byte 0xFFFCFFFD
	.4byte 0xFFFF0000
.endobj DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator

# .rodata:0x100 | 0x8161E3F0 | size: 0x200
.obj attackTable$1656, local
	.4byte 0x3F7FCCB8
	.4byte 0x3F7F9947
	.4byte 0x3F7F65AD
	.4byte 0x3F7F31E9
	.4byte 0x3F7EFDFA
	.4byte 0x3F7EC9E1
	.4byte 0x3F7E959D
	.4byte 0x3F7E612F
	.4byte 0x3F7E2C94
	.4byte 0x3F7DF7CF
	.4byte 0x3F7DC2DD
	.4byte 0x3F7D8DBF
	.4byte 0x3F7D5873
	.4byte 0x3F7D22FD
	.4byte 0x3F7CED57
	.4byte 0x3F7CB784
	.4byte 0x3F7C8183
	.4byte 0x3F7C4B54
	.4byte 0x3F7C14F7
	.4byte 0x3F7BDE6A
	.4byte 0x3F7BA7AD
	.4byte 0x3F7B70C2
	.4byte 0x3F7B39A4
	.4byte 0x3F7B0258
	.4byte 0x3F7ACADB
	.4byte 0x3F7A932B
	.4byte 0x3F7A5B4B
	.4byte 0x3F7A2338
	.4byte 0x3F79EAF3
	.4byte 0x3F79B27C
	.4byte 0x3F7979D1
	.4byte 0x3F7940F1
	.4byte 0x3F7907DE
	.4byte 0x3F78CE97
	.4byte 0x3F78951A
	.4byte 0x3F785B69
	.4byte 0x3F782181
	.4byte 0x3F77E762
	.4byte 0x3F77AD0F
	.4byte 0x3F777282
	.4byte 0x3F7737C0
	.4byte 0x3F76FCC4
	.4byte 0x3F76C190
	.4byte 0x3F768622
	.4byte 0x3F764A7B
	.4byte 0x3F760E9C
	.4byte 0x3F75D281
	.4byte 0x3F75962A
	.4byte 0x3F755999
	.4byte 0x3F751CCB
	.4byte 0x3F74DFC1
	.4byte 0x3F74A27A
	.4byte 0x3F7464F5
	.4byte 0x3F742732
	.4byte 0x3F73E930
	.4byte 0x3F73AAEF
	.4byte 0x3F736C6D
	.4byte 0x3F732DAD
	.4byte 0x3F72EEAA
	.4byte 0x3F72AF65
	.4byte 0x3F726FDF
	.4byte 0x3F723015
	.4byte 0x3F71F009
	.4byte 0x3F71AFB8
	.4byte 0x3F716F22
	.4byte 0x3F712E47
	.4byte 0x3F70ED26
	.4byte 0x3F70ABBE
	.4byte 0x3F706A10
	.4byte 0x3F702818
	.4byte 0x3F6FE5D8
	.4byte 0x3F6FA34E
	.4byte 0x3F6F607B
	.4byte 0x3F6F1D5B
	.4byte 0x3F6ED9F2
	.4byte 0x3F6E963A
	.4byte 0x3F6E5237
	.4byte 0x3F6E0DE5
	.4byte 0x3F6DC944
	.4byte 0x3F6D8454
	.4byte 0x3F6D3F12
	.4byte 0x3F6CF981
	.4byte 0x3F6CB39C
	.4byte 0x3F6C6D65
	.4byte 0x3F6C26DA
	.4byte 0x3F6BDFFB
	.4byte 0x3F6B98C5
	.4byte 0x3F6B5139
	.4byte 0x3F6B0956
	.4byte 0x3F6AC11C
	.4byte 0x3F6A7887
	.4byte 0x3F6A2F98
	.4byte 0x3F69E64C
	.4byte 0x3F699CA6
	.4byte 0x3F6952A2
	.4byte 0x3F69083F
	.4byte 0x3F68BD7E
	.4byte 0x3F68725B
	.4byte 0x3F6826D8
	.4byte 0x3F67DAF0
	.4byte 0x3F678EA6
	.4byte 0x3F6741F5
	.4byte 0x3F66F4E0
	.4byte 0x3F66A763
	.4byte 0x3F66597C
	.4byte 0x3F660B2D
	.4byte 0x3F65BC70
	.4byte 0x3F656D49
	.4byte 0x3F651DB3
	.4byte 0x3F63DAF7
	.4byte 0x3F61E90B
	.4byte 0x3F603C9A
	.4byte 0x3F5E82FB
	.4byte 0x3F5D178D
	.4byte 0x3F5A8424
	.4byte 0x3F57D016
	.4byte 0x3F542004
	.4byte 0x3F509DEF
	.4byte 0x3F4CDB09
	.4byte 0x3F472F5A
	.4byte 0x3F4166CF
	.4byte 0x3F3965FE
	.4byte 0x3F2ECD8C
	.4byte 0x3F2206D8
	.4byte 0x3F0F289E
	.4byte 0x3EE90841
	.4byte 0x3EA8E5A3
	.4byte 0x00000000
.endobj attackTable$1656

# 0x81695288..0x816952B8 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695288 | size: 0x4
.obj lbl_81695288, global
	.float 65535
.endobj lbl_81695288

# .sdata2:0x4 | 0x8169528C | size: 0x4
.obj lbl_8169528C, global
	.float -904
.endobj lbl_8169528C

# .sdata2:0x8 | 0x81695290 | size: 0x4
.obj lbl_81695290, global
	.float 0
.endobj lbl_81695290

# .sdata2:0xC | 0x81695294 | size: 0x4
.obj lbl_81695294, global
	.float 10
.endobj lbl_81695294

# .sdata2:0x10 | 0x81695298 | size: 0x4
.obj lbl_81695298, global
	.float -0.03125
.endobj lbl_81695298

# .sdata2:0x14 | 0x8169529C | size: 0x4
.obj gap_09_8169529C_sdata2, global
.hidden gap_09_8169529C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169529C_sdata2

# .sdata2:0x18 | 0x816952A0 | size: 0x8
.obj lbl_816952A0, global
	.double 4503601774854144
.endobj lbl_816952A0

# .sdata2:0x20 | 0x816952A8 | size: 0x4
.obj lbl_816952A8, global
	.float 24
.endobj lbl_816952A8

# .sdata2:0x24 | 0x816952AC | size: 0x4
.obj lbl_816952AC, global
	.float 0.0078125
.endobj lbl_816952AC

# .sdata2:0x28 | 0x816952B0 | size: 0x4
.obj lbl_816952B0, global
	.float 5
.endobj lbl_816952B0

# .sdata2:0x2C | 0x816952B4 | size: 0x4
.obj lbl_816952B4, global
	.float 60
.endobj lbl_816952B4
