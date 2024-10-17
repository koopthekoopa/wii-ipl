.include "macros.inc"
.file "snd_FxReverbHiDpl2.cpp"

# 0x81500A30..0x81500E94 | size: 0x464
.text
.balign 4

# .text:0x0 | 0x81500A30 | size: 0x8C
# nw4r::snd::FxReverbHiDpl2::FxReverbHiDpl2()
.fn __ct__Q34nw4r3snd14FxReverbHiDpl2Fv, global
/* 81500A30 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81500A34 | 7C 08 02 A6 */	mflr r0
/* 81500A38 | 3C A0 81 67 */	lis r5, __vt__Q34nw4r3snd14FxReverbHiDpl2@ha
/* 81500A3C | 3D 40 81 62 */	lis r10, lbl_8161E628@ha
/* 81500A40 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81500A44 | 38 00 00 00 */	li r0, 0x0
/* 81500A48 | 38 A5 F4 30 */	addi r5, r5, __vt__Q34nw4r3snd14FxReverbHiDpl2@l
/* 81500A4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81500A50 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81500A54 | 7C 7F 1B 78 */	mr r31, r3
/* 81500A58 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81500A5C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81500A60 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81500A64 | 98 03 00 0C */	stb r0, 0xc(r3)
/* 81500A68 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81500A6C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81500A70 | 85 2A E6 28 */	lwzu r9, lbl_8161E628@l(r10)
/* 81500A74 | 81 0A 00 04 */	lwz r8, 0x4(r10)
/* 81500A78 | 80 EA 00 08 */	lwz r7, 0x8(r10)
/* 81500A7C | 80 CA 00 0C */	lwz r6, 0xc(r10)
/* 81500A80 | 80 AA 00 10 */	lwz r5, 0x10(r10)
/* 81500A84 | 80 0A 00 14 */	lwz r0, 0x14(r10)
/* 81500A88 | 91 21 00 08 */	stw r9, 0x8(r1)
/* 81500A8C | 91 01 00 0C */	stw r8, 0xc(r1)
/* 81500A90 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 81500A94 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 81500A98 | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 81500A9C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81500AA0 | 48 00 01 6D */	bl SetParam__Q34nw4r3snd14FxReverbHiDpl2FRCQ44nw4r3snd14FxReverbHiDpl217ReverbHiDpl2Param
/* 81500AA4 | 7F E3 FB 78 */	mr r3, r31
/* 81500AA8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81500AAC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81500AB0 | 7C 08 03 A6 */	mtlr r0
/* 81500AB4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81500AB8 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd14FxReverbHiDpl2Fv

# .text:0x8C | 0x81500ABC | size: 0x2C
# nw4r::snd::FxReverbHiDpl2::GetRequiredMemSize()
.fn GetRequiredMemSize__Q34nw4r3snd14FxReverbHiDpl2Fv, global
/* 81500ABC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500AC0 | 7C 08 02 A6 */	mflr r0
/* 81500AC4 | 38 63 00 30 */	addi r3, r3, 0x30
/* 81500AC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500ACC | 48 05 50 79 */	bl fn_81555B44
/* 81500AD0 | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500AD4 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81500AD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500ADC | 7C 08 03 A6 */	mtlr r0
/* 81500AE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500AE4 | 4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q34nw4r3snd14FxReverbHiDpl2Fv

# .text:0xB8 | 0x81500AE8 | size: 0x8
# nw4r::snd::FxReverbHiDpl2::AssignWorkBuffer(void*, unsigned long)
.fn AssignWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2FPvUl, global
/* 81500AE8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81500AEC | 4B FF B3 14 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2FPvUl

# .text:0xC0 | 0x81500AF0 | size: 0x8
# nw4r::snd::FxReverbHiDpl2::ReleaseWorkBuffer()
.fn ReleaseWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2Fv, global
/* 81500AF0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81500AF4 | 4B FF B3 54 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2Fv

# .text:0xC8 | 0x81500AF8 | size: 0xB4
# nw4r::snd::FxReverbHiDpl2::StartUp()
.fn StartUp__Q34nw4r3snd14FxReverbHiDpl2Fv, global
/* 81500AF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81500AFC | 7C 08 02 A6 */	mflr r0
/* 81500B00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81500B04 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81500B08 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81500B0C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81500B10 | 7C 7D 1B 78 */	mr r29, r3
/* 81500B14 | 38 63 00 30 */	addi r3, r3, 0x30
/* 81500B18 | 48 05 50 2D */	bl fn_81555B44
/* 81500B1C | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 81500B20 | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500B24 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81500B28 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81500B2C | 7C 04 00 50 */	subf r0, r4, r0
/* 81500B30 | 7C 03 00 40 */	cmplw r3, r0
/* 81500B34 | 40 81 00 0C */	ble .L_81500B40
/* 81500B38 | 38 60 00 00 */	li r3, 0x0
/* 81500B3C | 48 00 00 54 */	b .L_81500B90
.L_81500B40:
/* 81500B40 | 38 1D 00 0C */	addi r0, r29, 0xc
/* 81500B44 | 3B C0 00 00 */	li r30, 0x0
/* 81500B48 | 3C 60 81 50 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 81500B4C | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 81500B50 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500B54 | 38 63 BE 5C */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 81500B58 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 81500B5C | 93 CD AE 84 */	stw r30, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500B60 | 48 05 90 39 */	bl fn_81559B98
/* 81500B64 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 81500B68 | 48 05 4F E9 */	bl fn_81555B50
/* 81500B6C | 7C 7F 1B 78 */	mr r31, r3
/* 81500B70 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 81500B74 | 48 05 4F D1 */	bl fn_81555B44
/* 81500B78 | 93 CD AE 80 */	stw r30, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500B7C | 7C 1F 00 D0 */	neg r0, r31
/* 81500B80 | 38 60 00 01 */	li r3, 0x1
/* 81500B84 | 7C 00 FB 78 */	or r0, r0, r31
/* 81500B88 | 98 7D 00 0C */	stb r3, 0xc(r29)
/* 81500B8C | 54 03 0F FE */	srwi r3, r0, 31
.L_81500B90:
/* 81500B90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81500B94 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81500B98 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81500B9C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81500BA0 | 7C 08 03 A6 */	mtlr r0
/* 81500BA4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81500BA8 | 4E 80 00 20 */	blr
.endfn StartUp__Q34nw4r3snd14FxReverbHiDpl2Fv

# .text:0x17C | 0x81500BAC | size: 0x60
# nw4r::snd::FxReverbHiDpl2::Shutdown()
.fn Shutdown__Q34nw4r3snd14FxReverbHiDpl2Fv, global
/* 81500BAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500BB0 | 7C 08 02 A6 */	mflr r0
/* 81500BB4 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 81500BB8 | 3C A0 81 50 */	lis r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 81500BBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500BC0 | 38 03 00 0C */	addi r0, r3, 0xc
/* 81500BC4 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 81500BC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81500BCC | 3B E0 00 00 */	li r31, 0x0
/* 81500BD0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81500BD4 | 7C 7E 1B 78 */	mr r30, r3
/* 81500BD8 | 9B E3 00 0C */	stb r31, 0xc(r3)
/* 81500BDC | 38 65 BE 5C */	addi r3, r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 81500BE0 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500BE4 | 48 05 8F B5 */	bl fn_81559B98
/* 81500BE8 | 38 7E 00 30 */	addi r3, r30, 0x30
/* 81500BEC | 48 05 50 09 */	bl fn_81555BF4
/* 81500BF0 | 93 ED AE 80 */	stw r31, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500BF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500BF8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81500BFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500C00 | 7C 08 03 A6 */	mtlr r0
/* 81500C04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500C08 | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd14FxReverbHiDpl2Fv

# .text:0x1DC | 0x81500C0C | size: 0x1C0
# nw4r::snd::FxReverbHiDpl2::SetParam(const nw4r::snd::FxReverbHiDpl2::ReverbHiDpl2Param&)
.fn SetParam__Q34nw4r3snd14FxReverbHiDpl2FRCQ44nw4r3snd14FxReverbHiDpl217ReverbHiDpl2Param, global
/* 81500C0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500C10 | 7C 08 02 A6 */	mflr r0
/* 81500C14 | C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 81500C18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500C1C | C0 C2 8E D8 */	lfs f6, lbl_816952D8@sda21(r0)
/* 81500C20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81500C24 | 7C 7F 1B 78 */	mr r31, r3
/* 81500C28 | C0 84 00 04 */	lfs f4, 0x4(r4)
/* 81500C2C | FC 05 30 40 */	fcmpo cr0, f5, f6
/* 81500C30 | C0 64 00 08 */	lfs f3, 0x8(r4)
/* 81500C34 | C0 44 00 0C */	lfs f2, 0xc(r4)
/* 81500C38 | C0 24 00 10 */	lfs f1, 0x10(r4)
/* 81500C3C | C0 04 00 14 */	lfs f0, 0x14(r4)
/* 81500C40 | D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 81500C44 | D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 81500C48 | D0 63 00 20 */	stfs f3, 0x20(r3)
/* 81500C4C | D0 43 00 24 */	stfs f2, 0x24(r3)
/* 81500C50 | D0 23 00 28 */	stfs f1, 0x28(r3)
/* 81500C54 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81500C58 | 40 81 00 08 */	ble .L_81500C60
/* 81500C5C | 48 00 00 18 */	b .L_81500C74
.L_81500C60:
/* 81500C60 | C0 C2 8E DC */	lfs f6, lbl_816952DC@sda21(r0)
/* 81500C64 | FC 05 30 40 */	fcmpo cr0, f5, f6
/* 81500C68 | 40 80 00 08 */	bge .L_81500C70
/* 81500C6C | 48 00 00 08 */	b .L_81500C74
.L_81500C70:
/* 81500C70 | FC C0 28 90 */	fmr f6, f5
.L_81500C74:
/* 81500C74 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 81500C78 | C0 22 8E E0 */	lfs f1, lbl_816952E0@sda21(r0)
/* 81500C7C | D0 C3 01 B8 */	stfs f6, 0x1b8(r3)
/* 81500C80 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500C84 | 40 81 00 08 */	ble .L_81500C8C
/* 81500C88 | 48 00 00 18 */	b .L_81500CA0
.L_81500C8C:
/* 81500C8C | C0 22 8E DC */	lfs f1, lbl_816952DC@sda21(r0)
/* 81500C90 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500C94 | 40 80 00 08 */	bge .L_81500C9C
/* 81500C98 | 48 00 00 08 */	b .L_81500CA0
.L_81500C9C:
/* 81500C9C | FC 20 00 90 */	fmr f1, f0
.L_81500CA0:
/* 81500CA0 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 81500CA4 | C0 42 8E E4 */	lfs f2, lbl_816952E4@sda21(r0)
/* 81500CA8 | D0 23 01 B0 */	stfs f1, 0x1b0(r3)
/* 81500CAC | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81500CB0 | 40 81 00 08 */	ble .L_81500CB8
/* 81500CB4 | 48 00 00 18 */	b .L_81500CCC
.L_81500CB8:
/* 81500CB8 | C0 42 8E DC */	lfs f2, lbl_816952DC@sda21(r0)
/* 81500CBC | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81500CC0 | 40 80 00 08 */	bge .L_81500CC8
/* 81500CC4 | 48 00 00 08 */	b .L_81500CCC
.L_81500CC8:
/* 81500CC8 | FC 40 00 90 */	fmr f2, f0
.L_81500CCC:
/* 81500CCC | C0 04 00 0C */	lfs f0, 0xc(r4)
/* 81500CD0 | C0 22 8E E4 */	lfs f1, lbl_816952E4@sda21(r0)
/* 81500CD4 | D0 43 01 A8 */	stfs f2, 0x1a8(r3)
/* 81500CD8 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500CDC | 40 81 00 08 */	ble .L_81500CE4
/* 81500CE0 | 48 00 00 18 */	b .L_81500CF8
.L_81500CE4:
/* 81500CE4 | C0 22 8E DC */	lfs f1, lbl_816952DC@sda21(r0)
/* 81500CE8 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500CEC | 40 80 00 08 */	bge .L_81500CF4
/* 81500CF0 | 48 00 00 08 */	b .L_81500CF8
.L_81500CF4:
/* 81500CF4 | FC 20 00 90 */	fmr f1, f0
.L_81500CF8:
/* 81500CF8 | C0 04 00 10 */	lfs f0, 0x10(r4)
/* 81500CFC | C0 42 8E E4 */	lfs f2, lbl_816952E4@sda21(r0)
/* 81500D00 | D0 23 01 B4 */	stfs f1, 0x1b4(r3)
/* 81500D04 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81500D08 | 40 81 00 08 */	ble .L_81500D10
/* 81500D0C | 48 00 00 18 */	b .L_81500D24
.L_81500D10:
/* 81500D10 | C0 42 8E DC */	lfs f2, lbl_816952DC@sda21(r0)
/* 81500D14 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81500D18 | 40 80 00 08 */	bge .L_81500D20
/* 81500D1C | 48 00 00 08 */	b .L_81500D24
.L_81500D20:
/* 81500D20 | FC 40 00 90 */	fmr f2, f0
.L_81500D24:
/* 81500D24 | C0 04 00 14 */	lfs f0, 0x14(r4)
/* 81500D28 | C0 22 8E E4 */	lfs f1, lbl_816952E4@sda21(r0)
/* 81500D2C | D0 43 01 BC */	stfs f2, 0x1bc(r3)
/* 81500D30 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500D34 | 40 81 00 08 */	ble .L_81500D3C
/* 81500D38 | 48 00 00 18 */	b .L_81500D50
.L_81500D3C:
/* 81500D3C | C0 22 8E DC */	lfs f1, lbl_816952DC@sda21(r0)
/* 81500D40 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500D44 | 40 80 00 08 */	bge .L_81500D4C
/* 81500D48 | 48 00 00 08 */	b .L_81500D50
.L_81500D4C:
/* 81500D4C | FC 20 00 90 */	fmr f1, f0
.L_81500D50:
/* 81500D50 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81500D54 | D0 23 01 AC */	stfs f1, 0x1ac(r3)
/* 81500D58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81500D5C | 40 82 00 0C */	bne .L_81500D68
/* 81500D60 | 38 60 00 01 */	li r3, 0x1
/* 81500D64 | 48 00 00 54 */	b .L_81500DB8
.L_81500D68:
/* 81500D68 | 38 63 00 30 */	addi r3, r3, 0x30
/* 81500D6C | 48 05 4D D9 */	bl fn_81555B44
/* 81500D70 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 81500D74 | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500D78 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81500D7C | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81500D80 | 7C 04 00 50 */	subf r0, r4, r0
/* 81500D84 | 7C 03 00 40 */	cmplw r3, r0
/* 81500D88 | 40 81 00 0C */	ble .L_81500D94
/* 81500D8C | 38 60 00 00 */	li r3, 0x0
/* 81500D90 | 48 00 00 28 */	b .L_81500DB8
.L_81500D94:
/* 81500D94 | 38 1F 00 0C */	addi r0, r31, 0xc
/* 81500D98 | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81500D9C | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500DA0 | 48 05 4E 79 */	bl fn_81555C18
/* 81500DA4 | 7C 03 00 D0 */	neg r0, r3
/* 81500DA8 | 38 80 00 00 */	li r4, 0x0
/* 81500DAC | 7C 00 1B 78 */	or r0, r0, r3
/* 81500DB0 | 90 8D AE 80 */	stw r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500DB4 | 54 03 0F FE */	srwi r3, r0, 31
.L_81500DB8:
/* 81500DB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500DBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500DC0 | 7C 08 03 A6 */	mtlr r0
/* 81500DC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500DC8 | 4E 80 00 20 */	blr
.endfn SetParam__Q34nw4r3snd14FxReverbHiDpl2FRCQ44nw4r3snd14FxReverbHiDpl217ReverbHiDpl2Param

# .text:0x39C | 0x81500DCC | size: 0x4C
# nw4r::snd::FxReverbHiDpl2::UpdateBuffer(int, void**, unsigned long, nw4r::snd::SampleFormat, float, nw4r::snd::OutputMode)
.fn UpdateBuffer__Q34nw4r3snd14FxReverbHiDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 81500DCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81500DD0 | 7C 08 02 A6 */	mflr r0
/* 81500DD4 | 7C 64 1B 78 */	mr r4, r3
/* 81500DD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81500DDC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81500DE0 | 38 84 00 30 */	addi r4, r4, 0x30
/* 81500DE4 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81500DE8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81500DEC | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81500DF0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81500DF4 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 81500DF8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81500DFC | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 81500E00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500E04 | 48 05 4E 79 */	bl fn_81555C7C
/* 81500E08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81500E0C | 7C 08 03 A6 */	mtlr r0
/* 81500E10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81500E14 | 4E 80 00 20 */	blr
.endfn UpdateBuffer__Q34nw4r3snd14FxReverbHiDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

# .text:0x3E8 | 0x81500E18 | size: 0x7C
# nw4r::snd::FxReverbHiDpl2::~FxReverbHiDpl2()
.fn __dt__Q34nw4r3snd14FxReverbHiDpl2Fv, global
/* 81500E18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500E1C | 7C 08 02 A6 */	mflr r0
/* 81500E20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81500E24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500E28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81500E2C | 7C 9F 23 78 */	mr r31, r4
/* 81500E30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81500E34 | 7C 7E 1B 78 */	mr r30, r3
/* 81500E38 | 41 82 00 40 */	beq .L_81500E78
/* 81500E3C | 3D 80 81 67 */	lis r12, __vt__Q34nw4r3snd14FxReverbHiDpl2@ha
/* 81500E40 | 39 8C F4 30 */	addi r12, r12, __vt__Q34nw4r3snd14FxReverbHiDpl2@l
/* 81500E44 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81500E48 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81500E4C | 7D 89 03 A6 */	mtctr r12
/* 81500E50 | 4E 80 04 21 */	bctrl
/* 81500E54 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81500E58 | 7F C3 F3 78 */	mr r3, r30
/* 81500E5C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81500E60 | 7D 89 03 A6 */	mtctr r12
/* 81500E64 | 4E 80 04 21 */	bctrl
/* 81500E68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81500E6C | 40 81 00 0C */	ble .L_81500E78
/* 81500E70 | 7F C3 F3 78 */	mr r3, r30
/* 81500E74 | 48 0F 72 71 */	bl __dl__FPv
.L_81500E78:
/* 81500E78 | 7F C3 F3 78 */	mr r3, r30
/* 81500E7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500E80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81500E84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500E88 | 7C 08 03 A6 */	mtlr r0
/* 81500E8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500E90 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd14FxReverbHiDpl2Fv

# 0x8161E628..0x8161E640 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8161E628 | size: 0x18
.obj lbl_8161E628, global
	.4byte 0x3CA3D70A
	.4byte 0x40400000
	.4byte 0x3F19999A
	.4byte 0x3ECCCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3F800000
.endobj lbl_8161E628

# 0x8166F430..0x8166F450 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166F430 | size: 0x20
# nw4r::snd::FxReverbHiDpl2::__vtable
.obj __vt__Q34nw4r3snd14FxReverbHiDpl2, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd14FxReverbHiDpl2Fv
	.4byte StartUp__Q34nw4r3snd14FxReverbHiDpl2Fv
	.4byte Shutdown__Q34nw4r3snd14FxReverbHiDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd14FxReverbHiDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte AssignWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2Fv
.endobj __vt__Q34nw4r3snd14FxReverbHiDpl2

# 0x816952D8..0x816952E8 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816952D8 | size: 0x4
.obj lbl_816952D8, global
	.float 0.1
.endobj lbl_816952D8

# .sdata2:0x4 | 0x816952DC | size: 0x4
.obj lbl_816952DC, global
	.float 0
.endobj lbl_816952DC

# .sdata2:0x8 | 0x816952E0 | size: 0x4
.obj lbl_816952E0, global
	.float 10
.endobj lbl_816952E0

# .sdata2:0xC | 0x816952E4 | size: 0x4
.obj lbl_816952E4, global
	.float 1
.endobj lbl_816952E4
