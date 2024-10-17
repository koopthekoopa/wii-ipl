.include "macros.inc"
.file "snd_FxReverbStd.cpp"

# 0x81500E94..0x815012B4 | size: 0x420
.text
.balign 4

# .text:0x0 | 0x81500E94 | size: 0x84
# nw4r::snd::FxReverbStd::FxReverbStd()
.fn __ct__Q34nw4r3snd11FxReverbStdFv, global
/* 81500E94 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81500E98 | 7C 08 02 A6 */	mflr r0
/* 81500E9C | 3C A0 81 67 */	lis r5, __vt__Q34nw4r3snd11FxReverbStd@ha
/* 81500EA0 | 3D 20 81 62 */	lis r9, lbl_8161E640@ha
/* 81500EA4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81500EA8 | 38 00 00 00 */	li r0, 0x0
/* 81500EAC | 38 A5 F4 50 */	addi r5, r5, __vt__Q34nw4r3snd11FxReverbStd@l
/* 81500EB0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81500EB4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81500EB8 | 7C 7F 1B 78 */	mr r31, r3
/* 81500EBC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81500EC0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81500EC4 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81500EC8 | 98 03 00 0C */	stb r0, 0xc(r3)
/* 81500ECC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81500ED0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81500ED4 | 85 09 E6 40 */	lwzu r8, lbl_8161E640@l(r9)
/* 81500ED8 | 80 E9 00 04 */	lwz r7, 0x4(r9)
/* 81500EDC | 80 C9 00 08 */	lwz r6, 0x8(r9)
/* 81500EE0 | 80 A9 00 0C */	lwz r5, 0xc(r9)
/* 81500EE4 | 80 09 00 10 */	lwz r0, 0x10(r9)
/* 81500EE8 | 91 01 00 08 */	stw r8, 0x8(r1)
/* 81500EEC | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 81500EF0 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 81500EF4 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81500EF8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81500EFC | 48 00 01 6D */	bl SetParam__Q34nw4r3snd11FxReverbStdFRCQ44nw4r3snd11FxReverbStd14ReverbStdParam
/* 81500F00 | 7F E3 FB 78 */	mr r3, r31
/* 81500F04 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81500F08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81500F0C | 7C 08 03 A6 */	mtlr r0
/* 81500F10 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81500F14 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd11FxReverbStdFv

# .text:0x84 | 0x81500F18 | size: 0x2C
# nw4r::snd::FxReverbStd::GetRequiredMemSize()
.fn GetRequiredMemSize__Q34nw4r3snd11FxReverbStdFv, global
/* 81500F18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500F1C | 7C 08 02 A6 */	mflr r0
/* 81500F20 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 81500F24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500F28 | 48 05 73 21 */	bl fn_81558248
/* 81500F2C | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500F30 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81500F34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500F38 | 7C 08 03 A6 */	mtlr r0
/* 81500F3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500F40 | 4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q34nw4r3snd11FxReverbStdFv

# .text:0xB0 | 0x81500F44 | size: 0x8
# nw4r::snd::FxReverbStd::AssignWorkBuffer(void*, unsigned long)
.fn AssignWorkBuffer__Q34nw4r3snd11FxReverbStdFPvUl, global
/* 81500F44 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81500F48 | 4B FF AE B8 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd11FxReverbStdFPvUl

# .text:0xB8 | 0x81500F4C | size: 0x8
# nw4r::snd::FxReverbStd::ReleaseWorkBuffer()
.fn ReleaseWorkBuffer__Q34nw4r3snd11FxReverbStdFv, global
/* 81500F4C | 38 63 00 0C */	addi r3, r3, 0xc
/* 81500F50 | 4B FF AE F8 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd11FxReverbStdFv

# .text:0xC0 | 0x81500F54 | size: 0xB4
# nw4r::snd::FxReverbStd::StartUp()
.fn StartUp__Q34nw4r3snd11FxReverbStdFv, global
/* 81500F54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81500F58 | 7C 08 02 A6 */	mflr r0
/* 81500F5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81500F60 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81500F64 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81500F68 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81500F6C | 7C 7D 1B 78 */	mr r29, r3
/* 81500F70 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 81500F74 | 48 05 72 D5 */	bl fn_81558248
/* 81500F78 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 81500F7C | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500F80 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81500F84 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81500F88 | 7C 04 00 50 */	subf r0, r4, r0
/* 81500F8C | 7C 03 00 40 */	cmplw r3, r0
/* 81500F90 | 40 81 00 0C */	ble .L_81500F9C
/* 81500F94 | 38 60 00 00 */	li r3, 0x0
/* 81500F98 | 48 00 00 54 */	b .L_81500FEC
.L_81500F9C:
/* 81500F9C | 38 1D 00 0C */	addi r0, r29, 0xc
/* 81500FA0 | 3B C0 00 00 */	li r30, 0x0
/* 81500FA4 | 3C 60 81 50 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 81500FA8 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 81500FAC | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500FB0 | 38 63 BE 5C */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 81500FB4 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 81500FB8 | 93 CD AE 84 */	stw r30, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500FBC | 48 05 8B DD */	bl fn_81559B98
/* 81500FC0 | 38 7D 00 2C */	addi r3, r29, 0x2c
/* 81500FC4 | 48 05 72 91 */	bl fn_81558254
/* 81500FC8 | 7C 7F 1B 78 */	mr r31, r3
/* 81500FCC | 38 7D 00 2C */	addi r3, r29, 0x2c
/* 81500FD0 | 48 05 72 79 */	bl fn_81558248
/* 81500FD4 | 93 CD AE 80 */	stw r30, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500FD8 | 7C 1F 00 D0 */	neg r0, r31
/* 81500FDC | 38 60 00 01 */	li r3, 0x1
/* 81500FE0 | 7C 00 FB 78 */	or r0, r0, r31
/* 81500FE4 | 98 7D 00 0C */	stb r3, 0xc(r29)
/* 81500FE8 | 54 03 0F FE */	srwi r3, r0, 31
.L_81500FEC:
/* 81500FEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81500FF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81500FF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81500FF8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81500FFC | 7C 08 03 A6 */	mtlr r0
/* 81501000 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81501004 | 4E 80 00 20 */	blr
.endfn StartUp__Q34nw4r3snd11FxReverbStdFv

# .text:0x174 | 0x81501008 | size: 0x60
# nw4r::snd::FxReverbStd::Shutdown()
.fn Shutdown__Q34nw4r3snd11FxReverbStdFv, global
/* 81501008 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150100C | 7C 08 02 A6 */	mflr r0
/* 81501010 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 81501014 | 3C A0 81 50 */	lis r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 81501018 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150101C | 38 03 00 0C */	addi r0, r3, 0xc
/* 81501020 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 81501024 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501028 | 3B E0 00 00 */	li r31, 0x0
/* 8150102C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81501030 | 7C 7E 1B 78 */	mr r30, r3
/* 81501034 | 9B E3 00 0C */	stb r31, 0xc(r3)
/* 81501038 | 38 65 BE 5C */	addi r3, r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 8150103C | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81501040 | 48 05 8B 59 */	bl fn_81559B98
/* 81501044 | 38 7E 00 2C */	addi r3, r30, 0x2c
/* 81501048 | 48 05 72 69 */	bl fn_815582B0
/* 8150104C | 93 ED AE 80 */	stw r31, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81501050 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81501054 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81501058 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150105C | 7C 08 03 A6 */	mtlr r0
/* 81501060 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81501064 | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd11FxReverbStdFv

# .text:0x1D4 | 0x81501068 | size: 0x18C
# nw4r::snd::FxReverbStd::SetParam(const nw4r::snd::FxReverbStd::ReverbStdParam&)
.fn SetParam__Q34nw4r3snd11FxReverbStdFRCQ44nw4r3snd11FxReverbStd14ReverbStdParam, global
/* 81501068 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150106C | 7C 08 02 A6 */	mflr r0
/* 81501070 | C0 84 00 00 */	lfs f4, 0x0(r4)
/* 81501074 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501078 | C0 A2 8E E8 */	lfs f5, lbl_816952E8@sda21(r0)
/* 8150107C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501080 | 7C 7F 1B 78 */	mr r31, r3
/* 81501084 | C0 64 00 04 */	lfs f3, 0x4(r4)
/* 81501088 | FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8150108C | C0 44 00 08 */	lfs f2, 0x8(r4)
/* 81501090 | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 81501094 | C0 04 00 10 */	lfs f0, 0x10(r4)
/* 81501098 | D0 83 00 18 */	stfs f4, 0x18(r3)
/* 8150109C | D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 815010A0 | D0 43 00 20 */	stfs f2, 0x20(r3)
/* 815010A4 | D0 23 00 24 */	stfs f1, 0x24(r3)
/* 815010A8 | D0 03 00 28 */	stfs f0, 0x28(r3)
/* 815010AC | 40 81 00 08 */	ble .L_815010B4
/* 815010B0 | 48 00 00 18 */	b .L_815010C8
.L_815010B4:
/* 815010B4 | C0 A2 8E EC */	lfs f5, lbl_816952EC@sda21(r0)
/* 815010B8 | FC 04 28 40 */	fcmpo cr0, f4, f5
/* 815010BC | 40 80 00 08 */	bge .L_815010C4
/* 815010C0 | 48 00 00 08 */	b .L_815010C8
.L_815010C4:
/* 815010C4 | FC A0 20 90 */	fmr f5, f4
.L_815010C8:
/* 815010C8 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 815010CC | C0 22 8E F0 */	lfs f1, lbl_816952F0@sda21(r0)
/* 815010D0 | D0 A3 01 24 */	stfs f5, 0x124(r3)
/* 815010D4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 815010D8 | 40 81 00 08 */	ble .L_815010E0
/* 815010DC | 48 00 00 18 */	b .L_815010F4
.L_815010E0:
/* 815010E0 | C0 22 8E EC */	lfs f1, lbl_816952EC@sda21(r0)
/* 815010E4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 815010E8 | 40 80 00 08 */	bge .L_815010F0
/* 815010EC | 48 00 00 08 */	b .L_815010F4
.L_815010F0:
/* 815010F0 | FC 20 00 90 */	fmr f1, f0
.L_815010F4:
/* 815010F4 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 815010F8 | C0 42 8E F4 */	lfs f2, lbl_816952F4@sda21(r0)
/* 815010FC | D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 81501100 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81501104 | 40 81 00 08 */	ble .L_8150110C
/* 81501108 | 48 00 00 18 */	b .L_81501120
.L_8150110C:
/* 8150110C | C0 42 8E EC */	lfs f2, lbl_816952EC@sda21(r0)
/* 81501110 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81501114 | 40 80 00 08 */	bge .L_8150111C
/* 81501118 | 48 00 00 08 */	b .L_81501120
.L_8150111C:
/* 8150111C | FC 40 00 90 */	fmr f2, f0
.L_81501120:
/* 81501120 | C0 04 00 0C */	lfs f0, 0xc(r4)
/* 81501124 | C0 22 8E F4 */	lfs f1, lbl_816952F4@sda21(r0)
/* 81501128 | D0 43 01 14 */	stfs f2, 0x114(r3)
/* 8150112C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81501130 | 40 81 00 08 */	ble .L_81501138
/* 81501134 | 48 00 00 18 */	b .L_8150114C
.L_81501138:
/* 81501138 | C0 22 8E EC */	lfs f1, lbl_816952EC@sda21(r0)
/* 8150113C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81501140 | 40 80 00 08 */	bge .L_81501148
/* 81501144 | 48 00 00 08 */	b .L_8150114C
.L_81501148:
/* 81501148 | FC 20 00 90 */	fmr f1, f0
.L_8150114C:
/* 8150114C | C0 04 00 10 */	lfs f0, 0x10(r4)
/* 81501150 | C0 42 8E F4 */	lfs f2, lbl_816952F4@sda21(r0)
/* 81501154 | D0 23 01 20 */	stfs f1, 0x120(r3)
/* 81501158 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8150115C | 40 81 00 08 */	ble .L_81501164
/* 81501160 | 48 00 00 18 */	b .L_81501178
.L_81501164:
/* 81501164 | C0 42 8E EC */	lfs f2, lbl_816952EC@sda21(r0)
/* 81501168 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8150116C | 40 80 00 08 */	bge .L_81501174
/* 81501170 | 48 00 00 08 */	b .L_81501178
.L_81501174:
/* 81501174 | FC 40 00 90 */	fmr f2, f0
.L_81501178:
/* 81501178 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 8150117C | D0 43 01 18 */	stfs f2, 0x118(r3)
/* 81501180 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81501184 | 40 82 00 0C */	bne .L_81501190
/* 81501188 | 38 60 00 01 */	li r3, 0x1
/* 8150118C | 48 00 00 54 */	b .L_815011E0
.L_81501190:
/* 81501190 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 81501194 | 48 05 70 B5 */	bl fn_81558248
/* 81501198 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8150119C | 38 03 00 87 */	addi r0, r3, 0x87
/* 815011A0 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 815011A4 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 815011A8 | 7C 04 00 50 */	subf r0, r4, r0
/* 815011AC | 7C 03 00 40 */	cmplw r3, r0
/* 815011B0 | 40 81 00 0C */	ble .L_815011BC
/* 815011B4 | 38 60 00 00 */	li r3, 0x0
/* 815011B8 | 48 00 00 28 */	b .L_815011E0
.L_815011BC:
/* 815011BC | 38 1F 00 0C */	addi r0, r31, 0xc
/* 815011C0 | 38 7F 00 2C */	addi r3, r31, 0x2c
/* 815011C4 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815011C8 | 48 05 71 0D */	bl fn_815582D4
/* 815011CC | 7C 03 00 D0 */	neg r0, r3
/* 815011D0 | 38 80 00 00 */	li r4, 0x0
/* 815011D4 | 7C 00 1B 78 */	or r0, r0, r3
/* 815011D8 | 90 8D AE 80 */	stw r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815011DC | 54 03 0F FE */	srwi r3, r0, 31
.L_815011E0:
/* 815011E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815011E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815011E8 | 7C 08 03 A6 */	mtlr r0
/* 815011EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 815011F0 | 4E 80 00 20 */	blr
.endfn SetParam__Q34nw4r3snd11FxReverbStdFRCQ44nw4r3snd11FxReverbStd14ReverbStdParam

# .text:0x360 | 0x815011F4 | size: 0x44
# nw4r::snd::FxReverbStd::UpdateBuffer(int, void**, unsigned long, nw4r::snd::SampleFormat, float, nw4r::snd::OutputMode)
.fn UpdateBuffer__Q34nw4r3snd11FxReverbStdFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 815011F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815011F8 | 7C 08 02 A6 */	mflr r0
/* 815011FC | 7C 64 1B 78 */	mr r4, r3
/* 81501200 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81501204 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81501208 | 38 84 00 2C */	addi r4, r4, 0x2c
/* 8150120C | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81501210 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81501214 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81501218 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150121C | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 81501220 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81501224 | 48 05 71 0D */	bl fn_81558330
/* 81501228 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150122C | 7C 08 03 A6 */	mtlr r0
/* 81501230 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81501234 | 4E 80 00 20 */	blr
.endfn UpdateBuffer__Q34nw4r3snd11FxReverbStdFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

# .text:0x3A4 | 0x81501238 | size: 0x7C
# nw4r::snd::FxReverbStd::~FxReverbStd()
.fn __dt__Q34nw4r3snd11FxReverbStdFv, global
/* 81501238 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150123C | 7C 08 02 A6 */	mflr r0
/* 81501240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501244 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501248 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150124C | 7C 9F 23 78 */	mr r31, r4
/* 81501250 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81501254 | 7C 7E 1B 78 */	mr r30, r3
/* 81501258 | 41 82 00 40 */	beq .L_81501298
/* 8150125C | 3D 80 81 67 */	lis r12, __vt__Q34nw4r3snd11FxReverbStd@ha
/* 81501260 | 39 8C F4 50 */	addi r12, r12, __vt__Q34nw4r3snd11FxReverbStd@l
/* 81501264 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81501268 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150126C | 7D 89 03 A6 */	mtctr r12
/* 81501270 | 4E 80 04 21 */	bctrl
/* 81501274 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81501278 | 7F C3 F3 78 */	mr r3, r30
/* 8150127C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81501280 | 7D 89 03 A6 */	mtctr r12
/* 81501284 | 4E 80 04 21 */	bctrl
/* 81501288 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150128C | 40 81 00 0C */	ble .L_81501298
/* 81501290 | 7F C3 F3 78 */	mr r3, r30
/* 81501294 | 48 0F 6E 51 */	bl __dl__FPv
.L_81501298:
/* 81501298 | 7F C3 F3 78 */	mr r3, r30
/* 8150129C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815012A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815012A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815012A8 | 7C 08 03 A6 */	mtlr r0
/* 815012AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 815012B0 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd11FxReverbStdFv

# 0x8161E640..0x8161E658 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8161E640 | size: 0x14
.obj lbl_8161E640, global
	.4byte 0x3CA3D70A
	.4byte 0x40400000
	.4byte 0x3F19999A
	.4byte 0x3ECCCCCD
	.4byte 0x3F800000
.endobj lbl_8161E640

# .rodata:0x14 | 0x8161E654 | size: 0x4
.obj gap_07_8161E654_rodata, global
.hidden gap_07_8161E654_rodata
	.4byte 0x00000000
.endobj gap_07_8161E654_rodata

# 0x8166F450..0x8166F470 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166F450 | size: 0x20
# nw4r::snd::FxReverbStd::__vtable
.obj __vt__Q34nw4r3snd11FxReverbStd, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd11FxReverbStdFv
	.4byte StartUp__Q34nw4r3snd11FxReverbStdFv
	.4byte Shutdown__Q34nw4r3snd11FxReverbStdFv
	.4byte UpdateBuffer__Q34nw4r3snd11FxReverbStdFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte AssignWorkBuffer__Q34nw4r3snd11FxReverbStdFPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd11FxReverbStdFv
.endobj __vt__Q34nw4r3snd11FxReverbStd

# 0x816952E8..0x816952F8 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816952E8 | size: 0x4
.obj lbl_816952E8, global
	.float 0.1
.endobj lbl_816952E8

# .sdata2:0x4 | 0x816952EC | size: 0x4
.obj lbl_816952EC, global
	.float 0
.endobj lbl_816952EC

# .sdata2:0x8 | 0x816952F0 | size: 0x4
.obj lbl_816952F0, global
	.float 10
.endobj lbl_816952F0

# .sdata2:0xC | 0x816952F4 | size: 0x4
.obj lbl_816952F4, global
	.float 1
.endobj lbl_816952F4
