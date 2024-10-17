.include "macros.inc"
.file "snd_FxReverbHi.cpp"

# 0x815005D4..0x81500A30 | size: 0x45C
.text
.balign 4

# .text:0x0 | 0x815005D4 | size: 0x8C
# nw4r::snd::FxReverbHi::FxReverbHi()
.fn __ct__Q34nw4r3snd10FxReverbHiFv, global
/* 815005D4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 815005D8 | 7C 08 02 A6 */	mflr r0
/* 815005DC | 3C A0 81 67 */	lis r5, __vt__Q34nw4r3snd10FxReverbHi@ha
/* 815005E0 | 3D 40 81 62 */	lis r10, lbl_8161E610@ha
/* 815005E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 815005E8 | 38 00 00 00 */	li r0, 0x0
/* 815005EC | 38 A5 F4 10 */	addi r5, r5, __vt__Q34nw4r3snd10FxReverbHi@l
/* 815005F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 815005F4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 815005F8 | 7C 7F 1B 78 */	mr r31, r3
/* 815005FC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81500600 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81500604 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81500608 | 98 03 00 0C */	stb r0, 0xc(r3)
/* 8150060C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81500610 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81500614 | 85 2A E6 10 */	lwzu r9, lbl_8161E610@l(r10)
/* 81500618 | 81 0A 00 04 */	lwz r8, 0x4(r10)
/* 8150061C | 80 EA 00 08 */	lwz r7, 0x8(r10)
/* 81500620 | 80 CA 00 0C */	lwz r6, 0xc(r10)
/* 81500624 | 80 AA 00 10 */	lwz r5, 0x10(r10)
/* 81500628 | 80 0A 00 14 */	lwz r0, 0x14(r10)
/* 8150062C | 91 21 00 08 */	stw r9, 0x8(r1)
/* 81500630 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 81500634 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 81500638 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 8150063C | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 81500640 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81500644 | 48 00 01 6D */	bl SetParam__Q34nw4r3snd10FxReverbHiFRCQ44nw4r3snd10FxReverbHi13ReverbHiParam
/* 81500648 | 7F E3 FB 78 */	mr r3, r31
/* 8150064C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81500650 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81500654 | 7C 08 03 A6 */	mtlr r0
/* 81500658 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150065C | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd10FxReverbHiFv

# .text:0x8C | 0x81500660 | size: 0x2C
# nw4r::snd::FxReverbHi::GetRequiredMemSize()
.fn GetRequiredMemSize__Q34nw4r3snd10FxReverbHiFv, global
/* 81500660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500664 | 7C 08 02 A6 */	mflr r0
/* 81500668 | 38 63 00 30 */	addi r3, r3, 0x30
/* 8150066C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500670 | 48 05 53 D9 */	bl fn_81555A48
/* 81500674 | 38 03 00 87 */	addi r0, r3, 0x87
/* 81500678 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 8150067C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500680 | 7C 08 03 A6 */	mtlr r0
/* 81500684 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500688 | 4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q34nw4r3snd10FxReverbHiFv

# .text:0xB8 | 0x8150068C | size: 0x8
# nw4r::snd::FxReverbHi::AssignWorkBuffer(void*, unsigned long)
.fn AssignWorkBuffer__Q34nw4r3snd10FxReverbHiFPvUl, global
/* 8150068C | 38 63 00 0C */	addi r3, r3, 0xc
/* 81500690 | 4B FF B7 70 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd10FxReverbHiFPvUl

# .text:0xC0 | 0x81500694 | size: 0x8
# nw4r::snd::FxReverbHi::ReleaseWorkBuffer()
.fn ReleaseWorkBuffer__Q34nw4r3snd10FxReverbHiFv, global
/* 81500694 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81500698 | 4B FF B7 B0 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd10FxReverbHiFv

# .text:0xC8 | 0x8150069C | size: 0xB4
# nw4r::snd::FxReverbHi::StartUp()
.fn StartUp__Q34nw4r3snd10FxReverbHiFv, global
/* 8150069C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815006A0 | 7C 08 02 A6 */	mflr r0
/* 815006A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815006A8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815006AC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815006B0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815006B4 | 7C 7D 1B 78 */	mr r29, r3
/* 815006B8 | 38 63 00 30 */	addi r3, r3, 0x30
/* 815006BC | 48 05 53 8D */	bl fn_81555A48
/* 815006C0 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 815006C4 | 38 03 00 87 */	addi r0, r3, 0x87
/* 815006C8 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 815006CC | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 815006D0 | 7C 04 00 50 */	subf r0, r4, r0
/* 815006D4 | 7C 03 00 40 */	cmplw r3, r0
/* 815006D8 | 40 81 00 0C */	ble .L_815006E4
/* 815006DC | 38 60 00 00 */	li r3, 0x0
/* 815006E0 | 48 00 00 54 */	b .L_81500734
.L_815006E4:
/* 815006E4 | 38 1D 00 0C */	addi r0, r29, 0xc
/* 815006E8 | 3B C0 00 00 */	li r30, 0x0
/* 815006EC | 3C 60 81 50 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 815006F0 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 815006F4 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 815006F8 | 38 63 BE 5C */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 815006FC | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 81500700 | 93 CD AE 84 */	stw r30, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500704 | 48 05 94 95 */	bl fn_81559B98
/* 81500708 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 8150070C | 48 05 53 49 */	bl fn_81555A54
/* 81500710 | 7C 7F 1B 78 */	mr r31, r3
/* 81500714 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 81500718 | 48 05 53 31 */	bl fn_81555A48
/* 8150071C | 93 CD AE 80 */	stw r30, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500720 | 7C 1F 00 D0 */	neg r0, r31
/* 81500724 | 38 60 00 01 */	li r3, 0x1
/* 81500728 | 7C 00 FB 78 */	or r0, r0, r31
/* 8150072C | 98 7D 00 0C */	stb r3, 0xc(r29)
/* 81500730 | 54 03 0F FE */	srwi r3, r0, 31
.L_81500734:
/* 81500734 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81500738 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150073C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81500740 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81500744 | 7C 08 03 A6 */	mtlr r0
/* 81500748 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150074C | 4E 80 00 20 */	blr
.endfn StartUp__Q34nw4r3snd10FxReverbHiFv

# .text:0x17C | 0x81500750 | size: 0x60
# nw4r::snd::FxReverbHi::Shutdown()
.fn Shutdown__Q34nw4r3snd10FxReverbHiFv, global
/* 81500750 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81500754 | 7C 08 02 A6 */	mflr r0
/* 81500758 | 3C 80 81 50 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 8150075C | 3C A0 81 50 */	lis r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 81500760 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81500764 | 38 03 00 0C */	addi r0, r3, 0xc
/* 81500768 | 38 84 BE BC */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 8150076C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81500770 | 3B E0 00 00 */	li r31, 0x0
/* 81500774 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81500778 | 7C 7E 1B 78 */	mr r30, r3
/* 8150077C | 9B E3 00 0C */	stb r31, 0xc(r3)
/* 81500780 | 38 65 BE 5C */	addi r3, r5, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 81500784 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500788 | 48 05 94 11 */	bl fn_81559B98
/* 8150078C | 38 7E 00 30 */	addi r3, r30, 0x30
/* 81500790 | 48 05 53 29 */	bl fn_81555AB8
/* 81500794 | 93 ED AE 80 */	stw r31, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500798 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150079C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815007A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815007A4 | 7C 08 03 A6 */	mtlr r0
/* 815007A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815007AC | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd10FxReverbHiFv

# .text:0x1DC | 0x815007B0 | size: 0x1C0
# nw4r::snd::FxReverbHi::SetParam(const nw4r::snd::FxReverbHi::ReverbHiParam&)
.fn SetParam__Q34nw4r3snd10FxReverbHiFRCQ44nw4r3snd10FxReverbHi13ReverbHiParam, global
/* 815007B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815007B4 | 7C 08 02 A6 */	mflr r0
/* 815007B8 | C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 815007BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815007C0 | C0 C2 8E C8 */	lfs f6, lbl_816952C8@sda21(r0)
/* 815007C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815007C8 | 7C 7F 1B 78 */	mr r31, r3
/* 815007CC | C0 84 00 04 */	lfs f4, 0x4(r4)
/* 815007D0 | FC 05 30 40 */	fcmpo cr0, f5, f6
/* 815007D4 | C0 64 00 08 */	lfs f3, 0x8(r4)
/* 815007D8 | C0 44 00 0C */	lfs f2, 0xc(r4)
/* 815007DC | C0 24 00 10 */	lfs f1, 0x10(r4)
/* 815007E0 | C0 04 00 14 */	lfs f0, 0x14(r4)
/* 815007E4 | D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 815007E8 | D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 815007EC | D0 63 00 20 */	stfs f3, 0x20(r3)
/* 815007F0 | D0 43 00 24 */	stfs f2, 0x24(r3)
/* 815007F4 | D0 23 00 28 */	stfs f1, 0x28(r3)
/* 815007F8 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 815007FC | 40 81 00 08 */	ble .L_81500804
/* 81500800 | 48 00 00 18 */	b .L_81500818
.L_81500804:
/* 81500804 | C0 C2 8E CC */	lfs f6, lbl_816952CC@sda21(r0)
/* 81500808 | FC 05 30 40 */	fcmpo cr0, f5, f6
/* 8150080C | 40 80 00 08 */	bge .L_81500814
/* 81500810 | 48 00 00 08 */	b .L_81500818
.L_81500814:
/* 81500814 | FC C0 28 90 */	fmr f6, f5
.L_81500818:
/* 81500818 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 8150081C | C0 22 8E D0 */	lfs f1, lbl_816952D0@sda21(r0)
/* 81500820 | D0 C3 01 88 */	stfs f6, 0x188(r3)
/* 81500824 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500828 | 40 81 00 08 */	ble .L_81500830
/* 8150082C | 48 00 00 18 */	b .L_81500844
.L_81500830:
/* 81500830 | C0 22 8E CC */	lfs f1, lbl_816952CC@sda21(r0)
/* 81500834 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500838 | 40 80 00 08 */	bge .L_81500840
/* 8150083C | 48 00 00 08 */	b .L_81500844
.L_81500840:
/* 81500840 | FC 20 00 90 */	fmr f1, f0
.L_81500844:
/* 81500844 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 81500848 | C0 42 8E D4 */	lfs f2, lbl_816952D4@sda21(r0)
/* 8150084C | D0 23 01 80 */	stfs f1, 0x180(r3)
/* 81500850 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81500854 | 40 81 00 08 */	ble .L_8150085C
/* 81500858 | 48 00 00 18 */	b .L_81500870
.L_8150085C:
/* 8150085C | C0 42 8E CC */	lfs f2, lbl_816952CC@sda21(r0)
/* 81500860 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81500864 | 40 80 00 08 */	bge .L_8150086C
/* 81500868 | 48 00 00 08 */	b .L_81500870
.L_8150086C:
/* 8150086C | FC 40 00 90 */	fmr f2, f0
.L_81500870:
/* 81500870 | C0 04 00 0C */	lfs f0, 0xc(r4)
/* 81500874 | C0 22 8E D4 */	lfs f1, lbl_816952D4@sda21(r0)
/* 81500878 | D0 43 01 78 */	stfs f2, 0x178(r3)
/* 8150087C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500880 | 40 81 00 08 */	ble .L_81500888
/* 81500884 | 48 00 00 18 */	b .L_8150089C
.L_81500888:
/* 81500888 | C0 22 8E CC */	lfs f1, lbl_816952CC@sda21(r0)
/* 8150088C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81500890 | 40 80 00 08 */	bge .L_81500898
/* 81500894 | 48 00 00 08 */	b .L_8150089C
.L_81500898:
/* 81500898 | FC 20 00 90 */	fmr f1, f0
.L_8150089C:
/* 8150089C | C0 04 00 10 */	lfs f0, 0x10(r4)
/* 815008A0 | C0 42 8E D4 */	lfs f2, lbl_816952D4@sda21(r0)
/* 815008A4 | D0 23 01 84 */	stfs f1, 0x184(r3)
/* 815008A8 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 815008AC | 40 81 00 08 */	ble .L_815008B4
/* 815008B0 | 48 00 00 18 */	b .L_815008C8
.L_815008B4:
/* 815008B4 | C0 42 8E CC */	lfs f2, lbl_816952CC@sda21(r0)
/* 815008B8 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 815008BC | 40 80 00 08 */	bge .L_815008C4
/* 815008C0 | 48 00 00 08 */	b .L_815008C8
.L_815008C4:
/* 815008C4 | FC 40 00 90 */	fmr f2, f0
.L_815008C8:
/* 815008C8 | C0 04 00 14 */	lfs f0, 0x14(r4)
/* 815008CC | C0 22 8E D4 */	lfs f1, lbl_816952D4@sda21(r0)
/* 815008D0 | D0 43 01 8C */	stfs f2, 0x18c(r3)
/* 815008D4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 815008D8 | 40 81 00 08 */	ble .L_815008E0
/* 815008DC | 48 00 00 18 */	b .L_815008F4
.L_815008E0:
/* 815008E0 | C0 22 8E CC */	lfs f1, lbl_816952CC@sda21(r0)
/* 815008E4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 815008E8 | 40 80 00 08 */	bge .L_815008F0
/* 815008EC | 48 00 00 08 */	b .L_815008F4
.L_815008F0:
/* 815008F0 | FC 20 00 90 */	fmr f1, f0
.L_815008F4:
/* 815008F4 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 815008F8 | D0 23 01 7C */	stfs f1, 0x17c(r3)
/* 815008FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81500900 | 40 82 00 0C */	bne .L_8150090C
/* 81500904 | 38 60 00 01 */	li r3, 0x1
/* 81500908 | 48 00 00 54 */	b .L_8150095C
.L_8150090C:
/* 8150090C | 38 63 00 30 */	addi r3, r3, 0x30
/* 81500910 | 48 05 51 39 */	bl fn_81555A48
/* 81500914 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 81500918 | 38 03 00 87 */	addi r0, r3, 0x87
/* 8150091C | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81500920 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81500924 | 7C 04 00 50 */	subf r0, r4, r0
/* 81500928 | 7C 03 00 40 */	cmplw r3, r0
/* 8150092C | 40 81 00 0C */	ble .L_81500938
/* 81500930 | 38 60 00 00 */	li r3, 0x0
/* 81500934 | 48 00 00 28 */	b .L_8150095C
.L_81500938:
/* 81500938 | 38 1F 00 0C */	addi r0, r31, 0xc
/* 8150093C | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81500940 | 90 0D AE 80 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500944 | 48 05 51 99 */	bl fn_81555ADC
/* 81500948 | 7C 03 00 D0 */	neg r0, r3
/* 8150094C | 38 80 00 00 */	li r4, 0x0
/* 81500950 | 7C 00 1B 78 */	or r0, r0, r3
/* 81500954 | 90 8D AE 80 */	stw r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 81500958 | 54 03 0F FE */	srwi r3, r0, 31
.L_8150095C:
/* 8150095C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500960 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500964 | 7C 08 03 A6 */	mtlr r0
/* 81500968 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150096C | 4E 80 00 20 */	blr
.endfn SetParam__Q34nw4r3snd10FxReverbHiFRCQ44nw4r3snd10FxReverbHi13ReverbHiParam

# .text:0x39C | 0x81500970 | size: 0x44
# nw4r::snd::FxReverbHi::UpdateBuffer(int, void**, unsigned long, nw4r::snd::SampleFormat, float, nw4r::snd::OutputMode)
.fn UpdateBuffer__Q34nw4r3snd10FxReverbHiFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 81500970 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81500974 | 7C 08 02 A6 */	mflr r0
/* 81500978 | 7C 64 1B 78 */	mr r4, r3
/* 8150097C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81500980 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81500984 | 38 84 00 30 */	addi r4, r4, 0x30
/* 81500988 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8150098C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81500990 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81500994 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81500998 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 8150099C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 815009A0 | 48 05 51 A1 */	bl fn_81555B40
/* 815009A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815009A8 | 7C 08 03 A6 */	mtlr r0
/* 815009AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 815009B0 | 4E 80 00 20 */	blr
.endfn UpdateBuffer__Q34nw4r3snd10FxReverbHiFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

# .text:0x3E0 | 0x815009B4 | size: 0x7C
# nw4r::snd::FxReverbHi::~FxReverbHi()
.fn __dt__Q34nw4r3snd10FxReverbHiFv, global
/* 815009B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815009B8 | 7C 08 02 A6 */	mflr r0
/* 815009BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815009C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815009C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815009C8 | 7C 9F 23 78 */	mr r31, r4
/* 815009CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815009D0 | 7C 7E 1B 78 */	mr r30, r3
/* 815009D4 | 41 82 00 40 */	beq .L_81500A14
/* 815009D8 | 3D 80 81 67 */	lis r12, __vt__Q34nw4r3snd10FxReverbHi@ha
/* 815009DC | 39 8C F4 10 */	addi r12, r12, __vt__Q34nw4r3snd10FxReverbHi@l
/* 815009E0 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 815009E4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 815009E8 | 7D 89 03 A6 */	mtctr r12
/* 815009EC | 4E 80 04 21 */	bctrl
/* 815009F0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 815009F4 | 7F C3 F3 78 */	mr r3, r30
/* 815009F8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 815009FC | 7D 89 03 A6 */	mtctr r12
/* 81500A00 | 4E 80 04 21 */	bctrl
/* 81500A04 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81500A08 | 40 81 00 0C */	ble .L_81500A14
/* 81500A0C | 7F C3 F3 78 */	mr r3, r30
/* 81500A10 | 48 0F 76 D5 */	bl __dl__FPv
.L_81500A14:
/* 81500A14 | 7F C3 F3 78 */	mr r3, r30
/* 81500A18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81500A1C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81500A20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81500A24 | 7C 08 03 A6 */	mtlr r0
/* 81500A28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81500A2C | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd10FxReverbHiFv

# 0x8161E610..0x8161E628 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8161E610 | size: 0x18
.obj lbl_8161E610, global
	.4byte 0x3CA3D70A
	.4byte 0x40400000
	.4byte 0x3F19999A
	.4byte 0x3ECCCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3F800000
.endobj lbl_8161E610

# 0x8166F410..0x8166F430 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166F410 | size: 0x20
# nw4r::snd::FxReverbHi::__vtable
.obj __vt__Q34nw4r3snd10FxReverbHi, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd10FxReverbHiFv
	.4byte StartUp__Q34nw4r3snd10FxReverbHiFv
	.4byte Shutdown__Q34nw4r3snd10FxReverbHiFv
	.4byte UpdateBuffer__Q34nw4r3snd10FxReverbHiFiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte AssignWorkBuffer__Q34nw4r3snd10FxReverbHiFPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd10FxReverbHiFv
.endobj __vt__Q34nw4r3snd10FxReverbHi

# 0x816952C8..0x816952D8 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816952C8 | size: 0x4
.obj lbl_816952C8, global
	.float 0.1
.endobj lbl_816952C8

# .sdata2:0x4 | 0x816952CC | size: 0x4
.obj lbl_816952CC, global
	.float 0
.endobj lbl_816952CC

# .sdata2:0x8 | 0x816952D0 | size: 0x4
.obj lbl_816952D0, global
	.float 10
.endobj lbl_816952D0

# .sdata2:0xC | 0x816952D4 | size: 0x4
.obj lbl_816952D4, global
	.float 1
.endobj lbl_816952D4
