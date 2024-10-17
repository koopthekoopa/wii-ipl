.include "macros.inc"
.file "snd_FxChorus.cpp"

# 0x814FFD6C..0x81500138 | size: 0x3CC
.text
.balign 4

# .text:0x0 | 0x814FFD6C | size: 0x74
# nw4r::snd::FxChorus::FxChorus()
.fn __ct__Q34nw4r3snd8FxChorusFv, global
/* 814FFD6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FFD70 | 7C 08 02 A6 */	mflr r0
/* 814FFD74 | 3C A0 81 67 */	lis r5, __vt__Q34nw4r3snd8FxChorus@ha
/* 814FFD78 | 3C E0 81 62 */	lis r7, lbl_8161E5F0@ha
/* 814FFD7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FFD80 | 38 00 00 00 */	li r0, 0x0
/* 814FFD84 | 38 A5 F3 D0 */	addi r5, r5, __vt__Q34nw4r3snd8FxChorus@l
/* 814FFD88 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FFD8C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FFD90 | 7C 7F 1B 78 */	mr r31, r3
/* 814FFD94 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FFD98 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FFD9C | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 814FFDA0 | 98 03 00 0C */	stb r0, 0xc(r3)
/* 814FFDA4 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FFDA8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814FFDAC | 84 C7 E5 F0 */	lwzu r6, lbl_8161E5F0@l(r7)
/* 814FFDB0 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 814FFDB4 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814FFDB8 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 814FFDBC | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 814FFDC0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FFDC4 | 48 00 01 6D */	bl SetParam__Q34nw4r3snd8FxChorusFRCQ44nw4r3snd8FxChorus11ChorusParam
/* 814FFDC8 | 7F E3 FB 78 */	mr r3, r31
/* 814FFDCC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FFDD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FFDD4 | 7C 08 03 A6 */	mtlr r0
/* 814FFDD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FFDDC | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd8FxChorusFv

# .text:0x74 | 0x814FFDE0 | size: 0x2C
# nw4r::snd::FxChorus::GetRequiredMemSize()
.fn GetRequiredMemSize__Q34nw4r3snd8FxChorusFv, global
/* 814FFDE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FFDE4 | 7C 08 02 A6 */	mflr r0
/* 814FFDE8 | 38 63 00 24 */	addi r3, r3, 0x24
/* 814FFDEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FFDF0 | 48 05 91 91 */	bl fn_81558F80
/* 814FFDF4 | 38 03 00 87 */	addi r0, r3, 0x87
/* 814FFDF8 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 814FFDFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FFE00 | 7C 08 03 A6 */	mtlr r0
/* 814FFE04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FFE08 | 4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q34nw4r3snd8FxChorusFv

# .text:0xA0 | 0x814FFE0C | size: 0x8
# nw4r::snd::FxChorus::AssignWorkBuffer(void*, unsigned long)
.fn AssignWorkBuffer__Q34nw4r3snd8FxChorusFPvUl, global
/* 814FFE0C | 38 63 00 0C */	addi r3, r3, 0xc
/* 814FFE10 | 4B FF BF F0 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd8FxChorusFPvUl

# .text:0xA8 | 0x814FFE14 | size: 0x8
# nw4r::snd::FxChorus::ReleaseWorkBuffer()
.fn ReleaseWorkBuffer__Q34nw4r3snd8FxChorusFv, global
/* 814FFE14 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814FFE18 | 4B FF C0 30 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd8FxChorusFv

# .text:0xB0 | 0x814FFE1C | size: 0xB4
# nw4r::snd::FxChorus::StartUp()
.fn StartUp__Q34nw4r3snd8FxChorusFv, global
/* 814FFE1C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FFE20 | 7C 08 02 A6 */	mflr r0
/* 814FFE24 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FFE28 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FFE2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FFE30 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FFE34 | 7C 7D 1B 78 */	mr r29, r3
/* 814FFE38 | 38 63 00 24 */	addi r3, r3, 0x24
/* 814FFE3C | 48 05 91 45 */	bl fn_81558F80
/* 814FFE40 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 814FFE44 | 38 03 00 87 */	addi r0, r3, 0x87
/* 814FFE48 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 814FFE4C | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 814FFE50 | 7C 04 00 50 */	subf r0, r4, r0
/* 814FFE54 | 7C 03 00 40 */	cmplw r3, r0
/* 814FFE58 | 40 81 00 0C */	ble .L_814FFE64
/* 814FFE5C | 38 60 00 00 */	li r3, 0x0
/* 814FFE60 | 48 00 00 54 */	b .L_814FFEB4
.L_814FFE64:
/* 814FFE64 | 38 1D 00 0C */	addi r0, r29, 0xc
/* 814FFE68 | 3B C0 00 00 */	li r30, 0x0
/* 814FFE6C | 3C 60 81 50 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 814FFE70 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 814FFE74 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FFE78 | 38 63 BE 5C */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 814FFE7C | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 814FFE80 | 93 CD AE 84 */	stw r30, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FFE84 | 48 05 9D 15 */	bl fn_81559B98
/* 814FFE88 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 814FFE8C | 48 05 90 F9 */	bl fn_81558F84
/* 814FFE90 | 7C 7F 1B 78 */	mr r31, r3
/* 814FFE94 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 814FFE98 | 48 05 90 E9 */	bl fn_81558F80
/* 814FFE9C | 93 CD AE 80 */	stw r30, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FFEA0 | 7C 1F 00 D0 */	neg r0, r31
/* 814FFEA4 | 38 60 00 01 */	li r3, 0x1
/* 814FFEA8 | 7C 00 FB 78 */	or r0, r0, r31
/* 814FFEAC | 98 7D 00 0C */	stb r3, 0xc(r29)
/* 814FFEB0 | 54 03 0F FE */	srwi r3, r0, 31
.L_814FFEB4:
/* 814FFEB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FFEB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FFEBC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FFEC0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FFEC4 | 7C 08 03 A6 */	mtlr r0
/* 814FFEC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FFECC | 4E 80 00 20 */	blr
.endfn StartUp__Q34nw4r3snd8FxChorusFv

# .text:0x164 | 0x814FFED0 | size: 0x60
# nw4r::snd::FxChorus::Shutdown()
.fn Shutdown__Q34nw4r3snd8FxChorusFv, global
/* 814FFED0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FFED4 | 7C 08 02 A6 */	mflr r0
/* 814FFED8 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 814FFEDC | 3C A0 81 50 */	lis r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 814FFEE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FFEE4 | 38 03 00 0C */	addi r0, r3, 0xc
/* 814FFEE8 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 814FFEEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FFEF0 | 3B E0 00 00 */	li r31, 0x0
/* 814FFEF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FFEF8 | 7C 7E 1B 78 */	mr r30, r3
/* 814FFEFC | 9B E3 00 0C */	stb r31, 0xc(r3)
/* 814FFF00 | 38 65 BE 5C */	addi r3, r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 814FFF04 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FFF08 | 48 05 9C 91 */	bl fn_81559B98
/* 814FFF0C | 38 7E 00 24 */	addi r3, r30, 0x24
/* 814FFF10 | 48 05 91 11 */	bl fn_81559020
/* 814FFF14 | 93 ED AE 80 */	stw r31, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FFF18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FFF1C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FFF20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FFF24 | 7C 08 03 A6 */	mtlr r0
/* 814FFF28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FFF2C | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd8FxChorusFv

# .text:0x1C4 | 0x814FFF30 | size: 0x148
# nw4r::snd::FxChorus::SetParam(const nw4r::snd::FxChorus::ChorusParam&)
.fn SetParam__Q34nw4r3snd8FxChorusFRCQ44nw4r3snd8FxChorus11ChorusParam, global
/* 814FFF30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FFF34 | 7C 08 02 A6 */	mflr r0
/* 814FFF38 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 814FFF3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FFF40 | C0 44 00 04 */	lfs f2, 0x4(r4)
/* 814FFF44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FFF48 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 814FFF4C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FFF50 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FFF54 | 7C 9D 23 78 */	mr r29, r4
/* 814FFF58 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814FFF5C | 7C 7C 1B 78 */	mr r28, r3
/* 814FFF60 | D0 23 00 18 */	stfs f1, 0x18(r3)
/* 814FFF64 | D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 814FFF68 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 814FFF6C | 48 0F 94 2D */	bl __cvt_fp2unsigned
/* 814FFF70 | C0 3D 00 00 */	lfs f1, 0x0(r29)
/* 814FFF74 | 7C 7F 1B 78 */	mr r31, r3
/* 814FFF78 | C0 1D 00 04 */	lfs f0, 0x4(r29)
/* 814FFF7C | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FFF80 | 48 0F 94 19 */	bl __cvt_fp2unsigned
/* 814FFF84 | C0 22 8E B8 */	lfs f1, lbl_816952B8@sda21(r0)
/* 814FFF88 | 7C 7E 1B 78 */	mr r30, r3
/* 814FFF8C | C0 1D 00 08 */	lfs f0, 0x8(r29)
/* 814FFF90 | EC 21 00 24 */	fdivs f1, f1, f0
/* 814FFF94 | 48 0F 94 05 */	bl __cvt_fp2unsigned
/* 814FFF98 | 28 1F 00 32 */	cmplwi r31, 0x32
/* 814FFF9C | 40 81 00 0C */	ble .L_814FFFA8
/* 814FFFA0 | 38 00 00 32 */	li r0, 0x32
/* 814FFFA4 | 48 00 00 14 */	b .L_814FFFB8
.L_814FFFA8:
/* 814FFFA8 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814FFFAC | 38 00 00 01 */	li r0, 0x1
/* 814FFFB0 | 41 80 00 08 */	blt .L_814FFFB8
/* 814FFFB4 | 7F E0 FB 78 */	mr r0, r31
.L_814FFFB8:
/* 814FFFB8 | 28 1E 00 32 */	cmplwi r30, 0x32
/* 814FFFBC | 90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 814FFFC0 | 38 00 00 32 */	li r0, 0x32
/* 814FFFC4 | 41 81 00 08 */	bgt .L_814FFFCC
/* 814FFFC8 | 7F C0 F3 78 */	mr r0, r30
.L_814FFFCC:
/* 814FFFCC | 28 03 27 10 */	cmplwi r3, 0x2710
/* 814FFFD0 | 90 1C 00 C8 */	stw r0, 0xc8(r28)
/* 814FFFD4 | 40 81 00 0C */	ble .L_814FFFE0
/* 814FFFD8 | 38 80 27 10 */	li r4, 0x2710
/* 814FFFDC | 48 00 00 14 */	b .L_814FFFF0
.L_814FFFE0:
/* 814FFFE0 | 28 03 01 F4 */	cmplwi r3, 0x1f4
/* 814FFFE4 | 38 80 01 F4 */	li r4, 0x1f4
/* 814FFFE8 | 41 80 00 08 */	blt .L_814FFFF0
/* 814FFFEC | 7C 64 1B 78 */	mr r4, r3
.L_814FFFF0:
/* 814FFFF0 | 88 1C 00 0C */	lbz r0, 0xc(r28)
/* 814FFFF4 | 90 9C 00 CC */	stw r4, 0xcc(r28)
/* 814FFFF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FFFFC | 40 82 00 0C */	bne .L_81500008
/* 81500000 | 38 60 00 01 */	li r3, 0x1
/* 81500004 | 48 00 00 54 */	b .L_81500058
.L_81500008:
/* 81500008 | 38 7C 00 24 */	addi r3, r28, 0x24
/* 8150000C | 48 05 8F 75 */	bl fn_81558F80
/* 81500010 | 80 9C 00 10 */	lwz r4, 0x10(r28)
/* 81500014 | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500018 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 8150001C | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81500020 | 7C 04 00 50 */	subf r0, r4, r0
/* 81500024 | 7C 03 00 40 */	cmplw r3, r0
/* 81500028 | 40 81 00 0C */	ble .L_81500034
/* 8150002C | 38 60 00 00 */	li r3, 0x0
/* 81500030 | 48 00 00 28 */	b .L_81500058
.L_81500034:
/* 81500034 | 38 1C 00 0C */	addi r0, r28, 0xc
/* 81500038 | 38 7C 00 24 */	addi r3, r28, 0x24
/* 8150003C | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500040 | 48 05 90 05 */	bl fn_81559044
/* 81500044 | 7C 03 00 D0 */	neg r0, r3
/* 81500048 | 38 80 00 00 */	li r4, 0x0
/* 8150004C | 7C 00 1B 78 */	or r0, r0, r3
/* 81500050 | 90 8D AE 80 */	stw r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500054 | 54 03 0F FE */	srwi r3, r0, 31
.L_81500058:
/* 81500058 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150005C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81500060 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81500064 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81500068 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150006C | 7C 08 03 A6 */	mtlr r0
/* 81500070 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81500074 | 4E 80 00 20 */	blr
.endfn SetParam__Q34nw4r3snd8FxChorusFRCQ44nw4r3snd8FxChorus11ChorusParam

# .text:0x30C | 0x81500078 | size: 0x44
# nw4r::snd::FxChorus::UpdateBuffer(int, void**, unsigned long, nw4r::snd::SampleFormat, float, nw4r::snd::OutputMode)
.fn UpdateBuffer__Q34nw4r3snd8FxChorusFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 81500078 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150007C | 7C 08 02 A6 */	mflr r0
/* 81500080 | 7C 64 1B 78 */	mr r4, r3
/* 81500084 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81500088 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8150008C | 38 84 00 24 */	addi r4, r4, 0x24
/* 81500090 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81500094 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81500098 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8150009C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 815000A0 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 815000A4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 815000A8 | 48 05 90 39 */	bl fn_815590E0
/* 815000AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815000B0 | 7C 08 03 A6 */	mtlr r0
/* 815000B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815000B8 | 4E 80 00 20 */	blr
.endfn UpdateBuffer__Q34nw4r3snd8FxChorusFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

# .text:0x350 | 0x815000BC | size: 0x7C
# nw4r::snd::FxChorus::~FxChorus()
.fn __dt__Q34nw4r3snd8FxChorusFv, global
/* 815000BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815000C0 | 7C 08 02 A6 */	mflr r0
/* 815000C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815000C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815000CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815000D0 | 7C 9F 23 78 */	mr r31, r4
/* 815000D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815000D8 | 7C 7E 1B 78 */	mr r30, r3
/* 815000DC | 41 82 00 40 */	beq .L_8150011C
/* 815000E0 | 3D 80 81 67 */	lis r12, __vt__Q34nw4r3snd8FxChorus@ha
/* 815000E4 | 39 8C F3 D0 */	addi r12, r12, __vt__Q34nw4r3snd8FxChorus@l
/* 815000E8 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 815000EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 815000F0 | 7D 89 03 A6 */	mtctr r12
/* 815000F4 | 4E 80 04 21 */	bctrl
/* 815000F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 815000FC | 7F C3 F3 78 */	mr r3, r30
/* 81500100 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81500104 | 7D 89 03 A6 */	mtctr r12
/* 81500108 | 4E 80 04 21 */	bctrl
/* 8150010C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81500110 | 40 81 00 0C */	ble .L_8150011C
/* 81500114 | 7F C3 F3 78 */	mr r3, r30
/* 81500118 | 48 0F 7F CD */	bl __dl__FPv
.L_8150011C:
/* 8150011C | 7F C3 F3 78 */	mr r3, r30
/* 81500120 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500124 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81500128 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150012C | 7C 08 03 A6 */	mtlr r0
/* 81500130 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500134 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd8FxChorusFv

# 0x8161E5F0..0x8161E600 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8161E5F0 | size: 0x10
.obj lbl_8161E5F0, global
	.4byte 0x41200000
	.4byte 0x3F000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj lbl_8161E5F0

# 0x816952B8..0x816952C0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816952B8 | size: 0x4
.obj lbl_816952B8, global
	.float 1000
.endobj lbl_816952B8

# .sdata2:0x4 | 0x816952BC | size: 0x4
.obj gap_09_816952BC_sdata2, global
.hidden gap_09_816952BC_sdata2
	.4byte 0x00000000
.endobj gap_09_816952BC_sdata2
