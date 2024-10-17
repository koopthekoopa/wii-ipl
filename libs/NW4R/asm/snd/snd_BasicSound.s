.include "macros.inc"
.file "snd_BasicSound.cpp"

# 0x814FC524..0x814FD65C | size: 0x1138
.text
.balign 4

# .text:0x0 | 0x814FC524 | size: 0x94
# nw4r::snd::detail::BasicSound::BasicSound()
.fn __ct__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FC524 | C0 02 8E 50 */	lfs f0, lbl_81695250@sda21(r0)
/* 814FC528 | 3C A0 81 67 */	lis r5, __vt__Q44nw4r3snd6detail10BasicSound@ha
/* 814FC52C | 38 80 00 00 */	li r4, 0x0
/* 814FC530 | 38 00 FF FF */	li r0, -0x1
/* 814FC534 | 38 A5 F2 E0 */	addi r5, r5, __vt__Q44nw4r3snd6detail10BasicSound@l
/* 814FC538 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814FC53C | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 814FC540 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 814FC544 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814FC548 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 814FC54C | 90 83 00 14 */	stw r4, 0x14(r3)
/* 814FC550 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 814FC554 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 814FC558 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 814FC55C | 90 83 00 24 */	stw r4, 0x24(r3)
/* 814FC560 | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 814FC564 | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 814FC568 | 90 83 00 4C */	stw r4, 0x4c(r3)
/* 814FC56C | 90 83 00 50 */	stw r4, 0x50(r3)
/* 814FC570 | D0 03 00 54 */	stfs f0, 0x54(r3)
/* 814FC574 | D0 03 00 58 */	stfs f0, 0x58(r3)
/* 814FC578 | 90 83 00 5C */	stw r4, 0x5c(r3)
/* 814FC57C | 90 83 00 60 */	stw r4, 0x60(r3)
/* 814FC580 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 814FC584 | D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 814FC588 | D0 03 00 80 */	stfs f0, 0x80(r3)
/* 814FC58C | 90 83 00 84 */	stw r4, 0x84(r3)
/* 814FC590 | 90 83 00 88 */	stw r4, 0x88(r3)
/* 814FC594 | 90 83 00 B8 */	stw r4, 0xb8(r3)
/* 814FC598 | 90 83 00 BC */	stw r4, 0xbc(r3)
/* 814FC59C | 90 83 00 C0 */	stw r4, 0xc0(r3)
/* 814FC5A0 | 90 83 00 C4 */	stw r4, 0xc4(r3)
/* 814FC5A4 | 90 83 00 C8 */	stw r4, 0xc8(r3)
/* 814FC5A8 | 90 83 00 CC */	stw r4, 0xcc(r3)
/* 814FC5AC | 90 83 00 D0 */	stw r4, 0xd0(r3)
/* 814FC5B0 | 90 83 00 D4 */	stw r4, 0xd4(r3)
/* 814FC5B4 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail10BasicSoundFv

# .text:0x94 | 0x814FC5B8 | size: 0x118
# nw4r::snd::detail::BasicSound::InitParam()
.fn InitParam__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FC5B8 | 38 00 00 00 */	li r0, 0x0
/* 814FC5BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FC5C0 | C0 82 8E 50 */	lfs f4, lbl_81695250@sda21(r0)
/* 814FC5C4 | 7C 00 00 00 */	cmpw r0, r0
/* 814FC5C8 | C0 02 8E 54 */	lfs f0, lbl_81695254@sda21(r0)
/* 814FC5CC | 98 03 00 67 */	stb r0, 0x67(r3)
/* 814FC5D0 | 98 03 00 68 */	stb r0, 0x68(r3)
/* 814FC5D4 | 98 03 00 64 */	stb r0, 0x64(r3)
/* 814FC5D8 | 98 03 00 65 */	stb r0, 0x65(r3)
/* 814FC5DC | 98 03 00 66 */	stb r0, 0x66(r3)
/* 814FC5E0 | 98 03 00 69 */	stb r0, 0x69(r3)
/* 814FC5E4 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 814FC5E8 | 90 03 00 70 */	stw r0, 0x70(r3)
/* 814FC5EC | D0 83 00 44 */	stfs f4, 0x44(r3)
/* 814FC5F0 | D0 83 00 48 */	stfs f4, 0x48(r3)
/* 814FC5F4 | 90 03 00 4C */	stw r0, 0x4c(r3)
/* 814FC5F8 | 90 03 00 50 */	stw r0, 0x50(r3)
/* 814FC5FC | D0 03 00 54 */	stfs f0, 0x54(r3)
/* 814FC600 | D0 03 00 58 */	stfs f0, 0x58(r3)
/* 814FC604 | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 814FC608 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 814FC60C | 41 80 00 08 */	blt .L_814FC614
/* 814FC610 | 48 00 00 40 */	b .L_814FC650
.L_814FC614:
/* 814FC614 | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 814FC618 | 3C 00 43 30 */	lis r0, 0x4330
/* 814FC61C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814FC620 | EC 24 20 28 */	fsubs f1, f4, f4
/* 814FC624 | C8 62 8E 58 */	lfd f3, lbl_81695258@sda21(r0)
/* 814FC628 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FC62C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC630 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814FC634 | EC 40 18 28 */	fsubs f2, f0, f3
/* 814FC638 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FC63C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FC640 | EC 22 00 72 */	fmuls f1, f2, f1
/* 814FC644 | EC 00 18 28 */	fsubs f0, f0, f3
/* 814FC648 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FC64C | EC 84 00 2A */	fadds f4, f4, f0
.L_814FC650:
/* 814FC650 | C0 22 8E 54 */	lfs f1, lbl_81695254@sda21(r0)
/* 814FC654 | 38 00 00 00 */	li r0, 0x0
/* 814FC658 | C0 02 8E 50 */	lfs f0, lbl_81695250@sda21(r0)
/* 814FC65C | 38 80 00 01 */	li r4, 0x1
/* 814FC660 | D0 83 00 44 */	stfs f4, 0x44(r3)
/* 814FC664 | D0 23 00 48 */	stfs f1, 0x48(r3)
/* 814FC668 | 90 83 00 4C */	stw r4, 0x4c(r3)
/* 814FC66C | 90 03 00 50 */	stw r0, 0x50(r3)
/* 814FC670 | D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 814FC674 | D0 23 00 98 */	stfs f1, 0x98(r3)
/* 814FC678 | D0 03 00 90 */	stfs f0, 0x90(r3)
/* 814FC67C | D0 03 00 94 */	stfs f0, 0x94(r3)
/* 814FC680 | D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 814FC684 | D0 23 00 80 */	stfs f1, 0x80(r3)
/* 814FC688 | 90 03 00 84 */	stw r0, 0x84(r3)
/* 814FC68C | 90 03 00 88 */	stw r0, 0x88(r3)
/* 814FC690 | 90 83 00 A0 */	stw r4, 0xa0(r3)
/* 814FC694 | 98 03 00 9C */	stb r0, 0x9c(r3)
/* 814FC698 | D0 23 00 A4 */	stfs f1, 0xa4(r3)
/* 814FC69C | D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 814FC6A0 | D0 23 00 AC */	stfs f1, 0xac(r3)
/* 814FC6A4 | D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 814FC6A8 | D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 814FC6AC | D0 23 00 28 */	stfs f1, 0x28(r3)
/* 814FC6B0 | D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 814FC6B4 | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 814FC6B8 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 814FC6BC | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 814FC6C0 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 814FC6C4 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 814FC6C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FC6CC | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail10BasicSoundFv

# .text:0x1AC | 0x814FC6D0 | size: 0x18
# nw4r::snd::detail::BasicSound::StartPrepared()
.fn StartPrepared__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FC6D0 | 88 03 00 65 */	lbz r0, 0x65(r3)
/* 814FC6D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FC6D8 | 4C 82 00 20 */	bnelr
/* 814FC6DC | 38 00 00 01 */	li r0, 0x1
/* 814FC6E0 | 98 03 00 64 */	stb r0, 0x64(r3)
/* 814FC6E4 | 4E 80 00 20 */	blr
.endfn StartPrepared__Q44nw4r3snd6detail10BasicSoundFv

# .text:0x1C4 | 0x814FC6E8 | size: 0x1D0
# nw4r::snd::detail::BasicSound::Stop(int)
.fn Stop__Q44nw4r3snd6detail10BasicSoundFi, global
/* 814FC6E8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FC6EC | 7C 08 02 A6 */	mflr r0
/* 814FC6F0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FC6F4 | 3C 00 43 30 */	lis r0, 0x4330
/* 814FC6F8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814FC6FC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814FC700 | 7C 9E 23 78 */	mr r30, r4
/* 814FC704 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814FC708 | 7C 7D 1B 78 */	mr r29, r3
/* 814FC70C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FC710 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FC714 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FC718 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FC71C | 7D 89 03 A6 */	mtctr r12
/* 814FC720 | 4E 80 04 21 */	bctrl
/* 814FC724 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FC728 | 7C 7F 1B 78 */	mr r31, r3
/* 814FC72C | 41 82 00 54 */	beq .L_814FC780
/* 814FC730 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FC734 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814FC738 | 7D 89 03 A6 */	mtctr r12
/* 814FC73C | 4E 80 04 21 */	bctrl
/* 814FC740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC744 | 41 82 00 3C */	beq .L_814FC780
/* 814FC748 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FC74C | 7F E3 FB 78 */	mr r3, r31
/* 814FC750 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814FC754 | 7D 89 03 A6 */	mtctr r12
/* 814FC758 | 4E 80 04 21 */	bctrl
/* 814FC75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC760 | 41 82 00 20 */	beq .L_814FC780
/* 814FC764 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FC768 | 7F E3 FB 78 */	mr r3, r31
/* 814FC76C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 814FC770 | 7D 89 03 A6 */	mtctr r12
/* 814FC774 | 4E 80 04 21 */	bctrl
/* 814FC778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FC77C | 41 82 00 1C */	beq .L_814FC798
.L_814FC780:
/* 814FC780 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814FC784 | 7F A3 EB 78 */	mr r3, r29
/* 814FC788 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814FC78C | 7D 89 03 A6 */	mtctr r12
/* 814FC790 | 4E 80 04 21 */	bctrl
/* 814FC794 | 48 00 01 08 */	b .L_814FC89C
.L_814FC798:
/* 814FC798 | 80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 814FC79C | 80 9D 00 50 */	lwz r4, 0x50(r29)
/* 814FC7A0 | 7C 04 28 00 */	cmpw r4, r5
/* 814FC7A4 | 41 80 00 0C */	blt .L_814FC7B0
/* 814FC7A8 | C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 814FC7AC | 48 00 00 40 */	b .L_814FC7EC
.L_814FC7B0:
/* 814FC7B0 | 6C 83 80 00 */	xoris r3, r4, 0x8000
/* 814FC7B4 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814FC7B8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814FC7BC | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FC7C0 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC7C4 | C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 814FC7C8 | C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 814FC7CC | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FC7D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FC7D4 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FC7D8 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FC7DC | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FC7E0 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FC7E4 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FC7E8 | EC 22 00 2A */	fadds f1, f2, f0
.L_814FC7EC:
/* 814FC7EC | 6F C0 80 00 */	xoris r0, r30, 0x8000
/* 814FC7F0 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FC7F4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FC7F8 | 7C 04 28 00 */	cmpw r4, r5
/* 814FC7FC | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC800 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FC804 | EC 00 00 72 */	fmuls f0, f0, f1
/* 814FC808 | FC 00 00 1E */	fctiwz f0, f0
/* 814FC80C | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 814FC810 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 814FC814 | 41 80 00 0C */	blt .L_814FC820
/* 814FC818 | C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 814FC81C | 48 00 00 3C */	b .L_814FC858
.L_814FC820:
/* 814FC820 | 6C 83 80 00 */	xoris r3, r4, 0x8000
/* 814FC824 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814FC828 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814FC82C | C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 814FC830 | C8 21 00 10 */	lfd f1, 0x10(r1)
/* 814FC834 | C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 814FC838 | EC 61 20 28 */	fsubs f3, f1, f4
/* 814FC83C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FC840 | EC 20 10 28 */	fsubs f1, f0, f2
/* 814FC844 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC848 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FC84C | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FC850 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FC854 | EC 22 00 2A */	fadds f1, f2, f0
.L_814FC858:
/* 814FC858 | C0 02 8E 50 */	lfs f0, lbl_81695250@sda21(r0)
/* 814FC85C | 3B E0 00 00 */	li r31, 0x0
/* 814FC860 | D0 3D 00 44 */	stfs f1, 0x44(r29)
/* 814FC864 | 7F A3 EB 78 */	mr r3, r29
/* 814FC868 | 38 80 00 00 */	li r4, 0x0
/* 814FC86C | D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 814FC870 | 90 DD 00 4C */	stw r6, 0x4c(r29)
/* 814FC874 | 93 FD 00 50 */	stw r31, 0x50(r29)
/* 814FC878 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814FC87C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814FC880 | 7D 89 03 A6 */	mtctr r12
/* 814FC884 | 4E 80 04 21 */	bctrl
/* 814FC888 | 38 00 00 01 */	li r0, 0x1
/* 814FC88C | 9B FD 00 66 */	stb r31, 0x66(r29)
/* 814FC890 | 9B FD 00 67 */	stb r31, 0x67(r29)
/* 814FC894 | 9B FD 00 68 */	stb r31, 0x68(r29)
/* 814FC898 | 98 1D 00 69 */	stb r0, 0x69(r29)
.L_814FC89C:
/* 814FC89C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FC8A0 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814FC8A4 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814FC8A8 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814FC8AC | 7C 08 03 A6 */	mtlr r0
/* 814FC8B0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FC8B4 | 4E 80 00 20 */	blr
.endfn Stop__Q44nw4r3snd6detail10BasicSoundFi

# .text:0x394 | 0x814FC8B8 | size: 0x290
# nw4r::snd::detail::BasicSound::Pause(bool, int)
.fn Pause__Q44nw4r3snd6detail10BasicSoundFbi, global
/* 814FC8B8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FC8BC | 7C 08 02 A6 */	mflr r0
/* 814FC8C0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FC8C4 | 3C 00 43 30 */	lis r0, 0x4330
/* 814FC8C8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814FC8CC | 7C 9F 23 78 */	mr r31, r4
/* 814FC8D0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814FC8D4 | 7C 7E 1B 78 */	mr r30, r3
/* 814FC8D8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814FC8DC | 7C BD 2B 78 */	mr r29, r5
/* 814FC8E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FC8E4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FC8E8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FC8EC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814FC8F0 | 7D 89 03 A6 */	mtctr r12
/* 814FC8F4 | 4E 80 04 21 */	bctrl
/* 814FC8F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FC8FC | 41 82 01 00 */	beq .L_814FC9FC
/* 814FC900 | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 814FC904 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 814FC908 | 7C 00 20 00 */	cmpw r0, r4
/* 814FC90C | 41 80 00 0C */	blt .L_814FC918
/* 814FC910 | C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 814FC914 | 48 00 00 40 */	b .L_814FC954
.L_814FC918:
/* 814FC918 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 814FC91C | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FC920 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814FC924 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FC928 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC92C | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FC930 | C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 814FC934 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FC938 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FC93C | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FC940 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FC944 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FC948 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FC94C | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FC950 | EC 42 00 2A */	fadds f2, f2, f0
.L_814FC954:
/* 814FC954 | 6F A3 80 00 */	xoris r3, r29, 0x8000
/* 814FC958 | 38 00 00 01 */	li r0, 0x1
/* 814FC95C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814FC960 | C8 22 8E 58 */	lfd f1, lbl_81695258@sda21(r0)
/* 814FC964 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC968 | 98 1E 00 68 */	stb r0, 0x68(r30)
/* 814FC96C | EC 00 08 28 */	fsubs f0, f0, f1
/* 814FC970 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 814FC974 | FC 00 00 1E */	fctiwz f0, f0
/* 814FC978 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 814FC97C | 80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 814FC980 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FC984 | 41 81 00 08 */	bgt .L_814FC98C
/* 814FC988 | 38 A0 00 01 */	li r5, 0x1
.L_814FC98C:
/* 814FC98C | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 814FC990 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 814FC994 | 7C 00 20 00 */	cmpw r0, r4
/* 814FC998 | 41 80 00 0C */	blt .L_814FC9A4
/* 814FC99C | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FC9A0 | 48 00 00 40 */	b .L_814FC9E0
.L_814FC9A4:
/* 814FC9A4 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 814FC9A8 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FC9AC | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814FC9B0 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FC9B4 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FC9B8 | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FC9BC | C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 814FC9C0 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FC9C4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FC9C8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FC9CC | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FC9D0 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FC9D4 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FC9D8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FC9DC | EC 22 00 2A */	fadds f1, f2, f0
.L_814FC9E0:
/* 814FC9E0 | C0 02 8E 50 */	lfs f0, lbl_81695250@sda21(r0)
/* 814FC9E4 | 38 00 00 00 */	li r0, 0x0
/* 814FC9E8 | D0 3E 00 54 */	stfs f1, 0x54(r30)
/* 814FC9EC | D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 814FC9F0 | 90 BE 00 5C */	stw r5, 0x5c(r30)
/* 814FC9F4 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 814FC9F8 | 48 00 01 30 */	b .L_814FCB28
.L_814FC9FC:
/* 814FC9FC | 88 9E 00 67 */	lbz r4, 0x67(r30)
/* 814FCA00 | 7C 04 00 D0 */	neg r0, r4
/* 814FCA04 | 7C 00 23 78 */	or r0, r0, r4
/* 814FCA08 | 54 00 0F FE */	srwi r0, r0, 31
/* 814FCA0C | 7C 00 F8 40 */	cmplw r0, r31
/* 814FCA10 | 41 82 00 18 */	beq .L_814FCA28
/* 814FCA14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCA18 | 38 80 00 00 */	li r4, 0x0
/* 814FCA1C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814FCA20 | 7D 89 03 A6 */	mtctr r12
/* 814FCA24 | 4E 80 04 21 */	bctrl
.L_814FCA28:
/* 814FCA28 | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 814FCA2C | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 814FCA30 | 7C 00 20 00 */	cmpw r0, r4
/* 814FCA34 | 41 80 00 0C */	blt .L_814FCA40
/* 814FCA38 | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FCA3C | 48 00 00 40 */	b .L_814FCA7C
.L_814FCA40:
/* 814FCA40 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 814FCA44 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FCA48 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814FCA4C | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCA50 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FCA54 | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FCA58 | C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 814FCA5C | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FCA60 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FCA64 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCA68 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FCA6C | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCA70 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCA74 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCA78 | EC 22 00 2A */	fadds f1, f2, f0
.L_814FCA7C:
/* 814FCA7C | 6F A0 80 00 */	xoris r0, r29, 0x8000
/* 814FCA80 | C0 02 8E 54 */	lfs f0, lbl_81695254@sda21(r0)
/* 814FCA84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FCA88 | 38 00 00 01 */	li r0, 0x1
/* 814FCA8C | EC 00 08 28 */	fsubs f0, f0, f1
/* 814FCA90 | C8 42 8E 58 */	lfd f2, lbl_81695258@sda21(r0)
/* 814FCA94 | C8 21 00 10 */	lfd f1, 0x10(r1)
/* 814FCA98 | 98 1E 00 68 */	stb r0, 0x68(r30)
/* 814FCA9C | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCAA0 | EC 01 00 32 */	fmuls f0, f1, f0
/* 814FCAA4 | FC 00 00 1E */	fctiwz f0, f0
/* 814FCAA8 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 814FCAAC | 80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 814FCAB0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FCAB4 | 41 81 00 08 */	bgt .L_814FCABC
/* 814FCAB8 | 38 A0 00 01 */	li r5, 0x1
.L_814FCABC:
/* 814FCABC | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 814FCAC0 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 814FCAC4 | 7C 00 20 00 */	cmpw r0, r4
/* 814FCAC8 | 41 80 00 0C */	blt .L_814FCAD4
/* 814FCACC | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FCAD0 | 48 00 00 40 */	b .L_814FCB10
.L_814FCAD4:
/* 814FCAD4 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 814FCAD8 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FCADC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814FCAE0 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCAE4 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FCAE8 | C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 814FCAEC | C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 814FCAF0 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FCAF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FCAF8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCAFC | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FCB00 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCB04 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCB08 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCB0C | EC 22 00 2A */	fadds f1, f2, f0
.L_814FCB10:
/* 814FCB10 | C0 02 8E 54 */	lfs f0, lbl_81695254@sda21(r0)
/* 814FCB14 | 38 00 00 00 */	li r0, 0x0
/* 814FCB18 | D0 3E 00 54 */	stfs f1, 0x54(r30)
/* 814FCB1C | D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 814FCB20 | 90 BE 00 5C */	stw r5, 0x5c(r30)
/* 814FCB24 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_814FCB28:
/* 814FCB28 | 9B FE 00 67 */	stb r31, 0x67(r30)
/* 814FCB2C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814FCB30 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814FCB34 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814FCB38 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FCB3C | 7C 08 03 A6 */	mtlr r0
/* 814FCB40 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FCB44 | 4E 80 00 20 */	blr
.endfn Pause__Q44nw4r3snd6detail10BasicSoundFbi

# .text:0x624 | 0x814FCB48 | size: 0x18
# nw4r::snd::detail::BasicSound::SetAutoStopCounter(int)
.fn SetAutoStopCounter__Q44nw4r3snd6detail10BasicSoundFi, global
/* 814FCB48 | 7C 04 00 D0 */	neg r0, r4
/* 814FCB4C | 90 83 00 6C */	stw r4, 0x6c(r3)
/* 814FCB50 | 7C 00 20 78 */	andc r0, r0, r4
/* 814FCB54 | 54 00 0F FE */	srwi r0, r0, 31
/* 814FCB58 | 98 03 00 66 */	stb r0, 0x66(r3)
/* 814FCB5C | 4E 80 00 20 */	blr
.endfn SetAutoStopCounter__Q44nw4r3snd6detail10BasicSoundFi

# .text:0x63C | 0x814FCB60 | size: 0x104
# nw4r::snd::detail::BasicSound::FadeIn(int)
.fn FadeIn__Q44nw4r3snd6detail10BasicSoundFi, global
/* 814FCB60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FCB64 | 3C A0 43 30 */	lis r5, 0x4330
/* 814FCB68 | 88 03 00 69 */	lbz r0, 0x69(r3)
/* 814FCB6C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814FCB70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FCB74 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814FCB78 | 40 82 00 E4 */	bne .L_814FCC5C
/* 814FCB7C | 80 E3 00 4C */	lwz r7, 0x4c(r3)
/* 814FCB80 | 80 C3 00 50 */	lwz r6, 0x50(r3)
/* 814FCB84 | 7C 06 38 00 */	cmpw r6, r7
/* 814FCB88 | 41 80 00 0C */	blt .L_814FCB94
/* 814FCB8C | C0 23 00 48 */	lfs f1, 0x48(r3)
/* 814FCB90 | 48 00 00 40 */	b .L_814FCBD0
.L_814FCB94:
/* 814FCB94 | 6C C5 80 00 */	xoris r5, r6, 0x8000
/* 814FCB98 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 814FCB9C | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 814FCBA0 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCBA4 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FCBA8 | C0 23 00 48 */	lfs f1, 0x48(r3)
/* 814FCBAC | C0 43 00 44 */	lfs f2, 0x44(r3)
/* 814FCBB0 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FCBB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FCBB8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCBBC | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FCBC0 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCBC4 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCBC8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCBCC | EC 22 00 2A */	fadds f1, f2, f0
.L_814FCBD0:
/* 814FCBD0 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FCBD4 | C0 02 8E 54 */	lfs f0, lbl_81695254@sda21(r0)
/* 814FCBD8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FCBDC | 7C 06 38 00 */	cmpw r6, r7
/* 814FCBE0 | EC 00 08 28 */	fsubs f0, f0, f1
/* 814FCBE4 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCBE8 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 814FCBEC | EC 21 20 28 */	fsubs f1, f1, f4
/* 814FCBF0 | EC 01 00 32 */	fmuls f0, f1, f0
/* 814FCBF4 | FC 00 00 1E */	fctiwz f0, f0
/* 814FCBF8 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 814FCBFC | 80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 814FCC00 | 41 80 00 0C */	blt .L_814FCC0C
/* 814FCC04 | C0 23 00 48 */	lfs f1, 0x48(r3)
/* 814FCC08 | 48 00 00 3C */	b .L_814FCC44
.L_814FCC0C:
/* 814FCC0C | 6C C4 80 00 */	xoris r4, r6, 0x8000
/* 814FCC10 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 814FCC14 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814FCC18 | C0 03 00 48 */	lfs f0, 0x48(r3)
/* 814FCC1C | C8 21 00 10 */	lfd f1, 0x10(r1)
/* 814FCC20 | C0 43 00 44 */	lfs f2, 0x44(r3)
/* 814FCC24 | EC 61 20 28 */	fsubs f3, f1, f4
/* 814FCC28 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FCC2C | EC 20 10 28 */	fsubs f1, f0, f2
/* 814FCC30 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814FCC34 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCC38 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCC3C | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCC40 | EC 22 00 2A */	fadds f1, f2, f0
.L_814FCC44:
/* 814FCC44 | C0 02 8E 54 */	lfs f0, lbl_81695254@sda21(r0)
/* 814FCC48 | 38 00 00 00 */	li r0, 0x0
/* 814FCC4C | D0 23 00 44 */	stfs f1, 0x44(r3)
/* 814FCC50 | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 814FCC54 | 90 A3 00 4C */	stw r5, 0x4c(r3)
/* 814FCC58 | 90 03 00 50 */	stw r0, 0x50(r3)
.L_814FCC5C:
/* 814FCC5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FCC60 | 4E 80 00 20 */	blr
.endfn FadeIn__Q44nw4r3snd6detail10BasicSoundFi

# .text:0x740 | 0x814FCC64 | size: 0x3C
# nw4r::snd::detail::BasicSound::IsPrepared() const
.fn IsPrepared__Q44nw4r3snd6detail10BasicSoundCFv, global
/* 814FCC64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FCC68 | 7C 08 02 A6 */	mflr r0
/* 814FCC6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FCC70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCC74 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814FCC78 | 7D 89 03 A6 */	mtctr r12
/* 814FCC7C | 4E 80 04 21 */	bctrl
/* 814FCC80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCC84 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814FCC88 | 7D 89 03 A6 */	mtctr r12
/* 814FCC8C | 4E 80 04 21 */	bctrl
/* 814FCC90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FCC94 | 7C 08 03 A6 */	mtlr r0
/* 814FCC98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FCC9C | 4E 80 00 20 */	blr
.endfn IsPrepared__Q44nw4r3snd6detail10BasicSoundCFv

# .text:0x77C | 0x814FCCA0 | size: 0x14
# nw4r::snd::detail::BasicSound::IsPause() const
.fn IsPause__Q44nw4r3snd6detail10BasicSoundCFv, global
/* 814FCCA0 | 88 63 00 67 */	lbz r3, 0x67(r3)
/* 814FCCA4 | 7C 03 00 D0 */	neg r0, r3
/* 814FCCA8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814FCCAC | 54 03 0F FE */	srwi r3, r0, 31
/* 814FCCB0 | 4E 80 00 20 */	blr
.endfn IsPause__Q44nw4r3snd6detail10BasicSoundCFv

# .text:0x790 | 0x814FCCB4 | size: 0x628
# nw4r::snd::detail::BasicSound::Update()
.fn Update__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FCCB4 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814FCCB8 | 7C 08 02 A6 */	mflr r0
/* 814FCCBC | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814FCCC0 | DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 814FCCC4 | F3 E1 00 C8 */	psq_st f31, 0xc8(r1), 0, qr0
/* 814FCCC8 | DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 814FCCCC | F3 C1 00 B8 */	psq_st f30, 0xb8(r1), 0, qr0
/* 814FCCD0 | DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 814FCCD4 | F3 A1 00 A8 */	psq_st f29, 0xa8(r1), 0, qr0
/* 814FCCD8 | DB 81 00 90 */	stfd f28, 0x90(r1)
/* 814FCCDC | F3 81 00 98 */	psq_st f28, 0x98(r1), 0, qr0
/* 814FCCE0 | DB 61 00 80 */	stfd f27, 0x80(r1)
/* 814FCCE4 | F3 61 00 88 */	psq_st f27, 0x88(r1), 0, qr0
/* 814FCCE8 | DB 41 00 70 */	stfd f26, 0x70(r1)
/* 814FCCEC | F3 41 00 78 */	psq_st f26, 0x78(r1), 0, qr0
/* 814FCCF0 | DB 21 00 60 */	stfd f25, 0x60(r1)
/* 814FCCF4 | F3 21 00 68 */	psq_st f25, 0x68(r1), 0, qr0
/* 814FCCF8 | DB 01 00 50 */	stfd f24, 0x50(r1)
/* 814FCCFC | F3 01 00 58 */	psq_st f24, 0x58(r1), 0, qr0
/* 814FCD00 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814FCD04 | 48 0F C7 B5 */	bl _savegpr_25
/* 814FCD08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCD0C | 3C 00 43 30 */	lis r0, 0x4330
/* 814FCD10 | 7C 7D 1B 78 */	mr r29, r3
/* 814FCD14 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814FCD18 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FCD1C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814FCD20 | 7D 89 03 A6 */	mtctr r12
/* 814FCD24 | 4E 80 04 21 */	bctrl
/* 814FCD28 | 88 1D 00 66 */	lbz r0, 0x66(r29)
/* 814FCD2C | 7C 7F 1B 78 */	mr r31, r3
/* 814FCD30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FCD34 | 41 82 00 4C */	beq .L_814FCD80
/* 814FCD38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCD3C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814FCD40 | 7D 89 03 A6 */	mtctr r12
/* 814FCD44 | 4E 80 04 21 */	bctrl
/* 814FCD48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCD4C | 41 82 00 34 */	beq .L_814FCD80
/* 814FCD50 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 814FCD54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCD58 | 40 82 00 20 */	bne .L_814FCD78
/* 814FCD5C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814FCD60 | 7F A3 EB 78 */	mr r3, r29
/* 814FCD64 | 38 80 00 00 */	li r4, 0x0
/* 814FCD68 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814FCD6C | 7D 89 03 A6 */	mtctr r12
/* 814FCD70 | 4E 80 04 21 */	bctrl
/* 814FCD74 | 48 00 05 10 */	b .L_814FD284
.L_814FCD78:
/* 814FCD78 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814FCD7C | 90 1D 00 6C */	stw r0, 0x6c(r29)
.L_814FCD80:
/* 814FCD80 | 88 1D 00 65 */	lbz r0, 0x65(r29)
/* 814FCD84 | 3B C0 00 00 */	li r30, 0x0
/* 814FCD88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FCD8C | 40 82 00 14 */	bne .L_814FCDA0
/* 814FCD90 | 88 1D 00 64 */	lbz r0, 0x64(r29)
/* 814FCD94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FCD98 | 41 82 04 EC */	beq .L_814FD284
/* 814FCD9C | 3B C0 00 01 */	li r30, 0x1
.L_814FCDA0:
/* 814FCDA0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FCDA4 | 7F E3 FB 78 */	mr r3, r31
/* 814FCDA8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 814FCDAC | 7D 89 03 A6 */	mtctr r12
/* 814FCDB0 | 4E 80 04 21 */	bctrl
/* 814FCDB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCDB8 | 41 82 00 1C */	beq .L_814FCDD4
/* 814FCDBC | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 814FCDC0 | 38 00 FF FF */	li r0, -0x1
/* 814FCDC4 | 7C 03 00 40 */	cmplw r3, r0
/* 814FCDC8 | 40 80 00 0C */	bge .L_814FCDD4
/* 814FCDCC | 38 03 00 01 */	addi r0, r3, 0x1
/* 814FCDD0 | 90 1D 00 70 */	stw r0, 0x70(r29)
.L_814FCDD4:
/* 814FCDD4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FCDD8 | 7F E3 FB 78 */	mr r3, r31
/* 814FCDDC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814FCDE0 | 7D 89 03 A6 */	mtctr r12
/* 814FCDE4 | 4E 80 04 21 */	bctrl
/* 814FCDE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCDEC | 40 82 00 1C */	bne .L_814FCE08
/* 814FCDF0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814FCDF4 | 7F A3 EB 78 */	mr r3, r29
/* 814FCDF8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814FCDFC | 7D 89 03 A6 */	mtctr r12
/* 814FCE00 | 4E 80 04 21 */	bctrl
/* 814FCE04 | 48 00 04 80 */	b .L_814FD284
.L_814FCE08:
/* 814FCE08 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FCE0C | 7F E3 FB 78 */	mr r3, r31
/* 814FCE10 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 814FCE14 | 7D 89 03 A6 */	mtctr r12
/* 814FCE18 | 4E 80 04 21 */	bctrl
/* 814FCE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCE20 | 40 82 04 64 */	bne .L_814FD284
/* 814FCE24 | 88 1D 00 68 */	lbz r0, 0x68(r29)
/* 814FCE28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FCE2C | 41 82 00 20 */	beq .L_814FCE4C
/* 814FCE30 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 814FCE34 | 80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 814FCE38 | 7C 03 00 00 */	cmpw r3, r0
/* 814FCE3C | 40 80 00 40 */	bge .L_814FCE7C
/* 814FCE40 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814FCE44 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 814FCE48 | 48 00 00 34 */	b .L_814FCE7C
.L_814FCE4C:
/* 814FCE4C | 80 7D 00 50 */	lwz r3, 0x50(r29)
/* 814FCE50 | 80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 814FCE54 | 7C 03 00 00 */	cmpw r3, r0
/* 814FCE58 | 40 80 00 0C */	bge .L_814FCE64
/* 814FCE5C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814FCE60 | 90 1D 00 50 */	stw r0, 0x50(r29)
.L_814FCE64:
/* 814FCE64 | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 814FCE68 | 80 1D 00 84 */	lwz r0, 0x84(r29)
/* 814FCE6C | 7C 03 00 00 */	cmpw r3, r0
/* 814FCE70 | 40 80 00 0C */	bge .L_814FCE7C
/* 814FCE74 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814FCE78 | 90 1D 00 88 */	stw r0, 0x88(r29)
.L_814FCE7C:
/* 814FCE7C | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 814FCE80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCE84 | 41 82 00 1C */	beq .L_814FCEA0
/* 814FCE88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCE8C | 7F A5 EB 78 */	mr r5, r29
/* 814FCE90 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 814FCE94 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814FCE98 | 7D 89 03 A6 */	mtctr r12
/* 814FCE9C | 4E 80 04 21 */	bctrl
.L_814FCEA0:
/* 814FCEA0 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 814FCEA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FCEA8 | 41 82 00 28 */	beq .L_814FCED0
/* 814FCEAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FCEB0 | 7F A6 EB 78 */	mr r6, r29
/* 814FCEB4 | 38 9D 00 28 */	addi r4, r29, 0x28
/* 814FCEB8 | 80 BD 00 78 */	lwz r5, 0x78(r29)
/* 814FCEBC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814FCEC0 | 39 00 FF FF */	li r8, -0x1
/* 814FCEC4 | 80 FD 00 24 */	lwz r7, 0x24(r29)
/* 814FCEC8 | 7D 89 03 A6 */	mtctr r12
/* 814FCECC | 4E 80 04 21 */	bctrl
.L_814FCED0:
/* 814FCED0 | C3 E2 8E 54 */	lfs f31, lbl_81695254@sda21(r0)
/* 814FCED4 | C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 814FCED8 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 814FCEDC | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FCEE0 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 814FCEE4 | C0 03 00 28 */	lfs f0, 0x28(r3)
/* 814FCEE8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FCEEC | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FCEF0 | 41 82 00 0C */	beq .L_814FCEFC
/* 814FCEF4 | C0 04 00 10 */	lfs f0, 0x10(r4)
/* 814FCEF8 | EF FF 00 32 */	fmuls f31, f31, f0
.L_814FCEFC:
/* 814FCEFC | 80 BD 00 84 */	lwz r5, 0x84(r29)
/* 814FCF00 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 814FCF04 | 7C 00 28 00 */	cmpw r0, r5
/* 814FCF08 | 41 80 00 0C */	blt .L_814FCF14
/* 814FCF0C | C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 814FCF10 | 48 00 00 40 */	b .L_814FCF50
.L_814FCF14:
/* 814FCF14 | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 814FCF18 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814FCF1C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 814FCF20 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCF24 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 814FCF28 | C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 814FCF2C | C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 814FCF30 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FCF34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FCF38 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCF3C | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 814FCF40 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCF44 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCF48 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCF4C | EC 02 00 2A */	fadds f0, f2, f0
.L_814FCF50:
/* 814FCF50 | 80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 814FCF54 | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FCF58 | 80 1D 00 50 */	lwz r0, 0x50(r29)
/* 814FCF5C | 7C 00 28 00 */	cmpw r0, r5
/* 814FCF60 | 41 80 00 0C */	blt .L_814FCF6C
/* 814FCF64 | C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 814FCF68 | 48 00 00 40 */	b .L_814FCFA8
.L_814FCF6C:
/* 814FCF6C | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 814FCF70 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814FCF74 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 814FCF78 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCF7C | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 814FCF80 | C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 814FCF84 | C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 814FCF88 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FCF8C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FCF90 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCF94 | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 814FCF98 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCF9C | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCFA0 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCFA4 | EC 02 00 2A */	fadds f0, f2, f0
.L_814FCFA8:
/* 814FCFA8 | 80 BD 00 5C */	lwz r5, 0x5c(r29)
/* 814FCFAC | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FCFB0 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 814FCFB4 | 7C 00 28 00 */	cmpw r0, r5
/* 814FCFB8 | 41 80 00 0C */	blt .L_814FCFC4
/* 814FCFBC | C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 814FCFC0 | 48 00 00 40 */	b .L_814FD000
.L_814FCFC4:
/* 814FCFC4 | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 814FCFC8 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814FCFCC | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 814FCFD0 | C8 82 8E 58 */	lfd f4, lbl_81695258@sda21(r0)
/* 814FCFD4 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 814FCFD8 | C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 814FCFDC | C0 5D 00 54 */	lfs f2, 0x54(r29)
/* 814FCFE0 | EC 60 20 28 */	fsubs f3, f0, f4
/* 814FCFE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FCFE8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FCFEC | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 814FCFF0 | EC 00 20 28 */	fsubs f0, f0, f4
/* 814FCFF4 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FCFF8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FCFFC | EC 02 00 2A */	fadds f0, f2, f0
.L_814FD000:
/* 814FD000 | C3 82 8E 50 */	lfs f28, lbl_81695250@sda21(r0)
/* 814FD004 | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FD008 | C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 814FD00C | 3B 40 00 01 */	li r26, 0x1
/* 814FD010 | FF 60 E0 90 */	fmr f27, f28
/* 814FD014 | C3 C2 8E 54 */	lfs f30, lbl_81695254@sda21(r0)
/* 814FD018 | C0 23 00 34 */	lfs f1, 0x34(r3)
/* 814FD01C | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FD020 | C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 814FD024 | EF DE 00 72 */	fmuls f30, f30, f1
/* 814FD028 | C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 814FD02C | FF 40 D8 90 */	fmr f26, f27
/* 814FD030 | C0 5D 00 94 */	lfs f2, 0x94(r29)
/* 814FD034 | EF DE 00 72 */	fmuls f30, f30, f1
/* 814FD038 | C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 814FD03C | FF 20 D0 90 */	fmr f25, f26
/* 814FD040 | C3 02 8E 54 */	lfs f24, lbl_81695254@sda21(r0)
/* 814FD044 | EF 9C 00 2A */	fadds f28, f28, f0
/* 814FD048 | C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 814FD04C | EF 5A 08 2A */	fadds f26, f26, f1
/* 814FD050 | C0 3D 00 98 */	lfs f1, 0x98(r29)
/* 814FD054 | EF 7B 10 2A */	fadds f27, f27, f2
/* 814FD058 | EF 39 00 2A */	fadds f25, f25, f0
/* 814FD05C | EF 18 00 72 */	fmuls f24, f24, f1
/* 814FD060 | 48 00 DD 05 */	bl detail_IsEnabledOutputLine__Q34nw4r3snd11SoundPlayerCFv
/* 814FD064 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD068 | 41 82 00 10 */	beq .L_814FD078
/* 814FD06C | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 814FD070 | 48 00 DC ED */	bl detail_GetOutputLine__Q34nw4r3snd11SoundPlayerCFv
/* 814FD074 | 7C 7A 1B 78 */	mr r26, r3
.L_814FD078:
/* 814FD078 | 88 1D 00 9C */	lbz r0, 0x9c(r29)
/* 814FD07C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FD080 | 41 82 00 08 */	beq .L_814FD088
/* 814FD084 | 83 5D 00 A0 */	lwz r26, 0xa0(r29)
.L_814FD088:
/* 814FD088 | C3 A2 8E 54 */	lfs f29, lbl_81695254@sda21(r0)
/* 814FD08C | 7F BB EB 78 */	mr r27, r29
/* 814FD090 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 814FD094 | 3B 20 00 00 */	li r25, 0x0
.L_814FD098:
/* 814FD098 | D3 BC 00 00 */	stfs f29, 0x0(r28)
/* 814FD09C | 7F 24 CB 78 */	mr r4, r25
/* 814FD0A0 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 814FD0A4 | 48 00 DC C9 */	bl detail_GetRemoteOutVolume__Q34nw4r3snd11SoundPlayerCFi
/* 814FD0A8 | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 814FD0AC | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814FD0B0 | C0 5B 00 A8 */	lfs f2, 0xa8(r27)
/* 814FD0B4 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 814FD0B8 | EC 00 00 72 */	fmuls f0, f0, f1
/* 814FD0BC | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814FD0C0 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 814FD0C4 | D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 814FD0C8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FD0CC | 41 80 FF CC */	blt .L_814FD098
/* 814FD0D0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD0D4 | FC 20 F8 90 */	fmr f1, f31
/* 814FD0D8 | 7F E3 FB 78 */	mr r3, r31
/* 814FD0DC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814FD0E0 | 7D 89 03 A6 */	mtctr r12
/* 814FD0E4 | 4E 80 04 21 */	bctrl
/* 814FD0E8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD0EC | FC 20 E0 90 */	fmr f1, f28
/* 814FD0F0 | 7F E3 FB 78 */	mr r3, r31
/* 814FD0F4 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 814FD0F8 | 7D 89 03 A6 */	mtctr r12
/* 814FD0FC | 4E 80 04 21 */	bctrl
/* 814FD100 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD104 | FC 20 D8 90 */	fmr f1, f27
/* 814FD108 | 7F E3 FB 78 */	mr r3, r31
/* 814FD10C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814FD110 | 7D 89 03 A6 */	mtctr r12
/* 814FD114 | 4E 80 04 21 */	bctrl
/* 814FD118 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD11C | FC 20 D0 90 */	fmr f1, f26
/* 814FD120 | 7F E3 FB 78 */	mr r3, r31
/* 814FD124 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 814FD128 | 7D 89 03 A6 */	mtctr r12
/* 814FD12C | 4E 80 04 21 */	bctrl
/* 814FD130 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD134 | FC 20 C8 90 */	fmr f1, f25
/* 814FD138 | 7F E3 FB 78 */	mr r3, r31
/* 814FD13C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814FD140 | 7D 89 03 A6 */	mtctr r12
/* 814FD144 | 4E 80 04 21 */	bctrl
/* 814FD148 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD14C | FC 20 C0 90 */	fmr f1, f24
/* 814FD150 | 7F E3 FB 78 */	mr r3, r31
/* 814FD154 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814FD158 | 7D 89 03 A6 */	mtctr r12
/* 814FD15C | 4E 80 04 21 */	bctrl
/* 814FD160 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD164 | 7F E3 FB 78 */	mr r3, r31
/* 814FD168 | 7F 44 D3 78 */	mr r4, r26
/* 814FD16C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814FD170 | 7D 89 03 A6 */	mtctr r12
/* 814FD174 | 4E 80 04 21 */	bctrl
/* 814FD178 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD17C | FC 20 F0 90 */	fmr f1, f30
/* 814FD180 | 7F E3 FB 78 */	mr r3, r31
/* 814FD184 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 814FD188 | 7D 89 03 A6 */	mtctr r12
/* 814FD18C | 4E 80 04 21 */	bctrl
/* 814FD190 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 814FD194 | 3B 20 00 00 */	li r25, 0x0
.L_814FD198:
/* 814FD198 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD19C | 7F E3 FB 78 */	mr r3, r31
/* 814FD1A0 | 7F 24 CB 78 */	mr r4, r25
/* 814FD1A4 | C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 814FD1A8 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814FD1AC | 7D 89 03 A6 */	mtctr r12
/* 814FD1B0 | 4E 80 04 21 */	bctrl
/* 814FD1B4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814FD1B8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FD1BC | 2C 19 00 04 */	cmpwi r25, 0x4
/* 814FD1C0 | 41 80 FF D8 */	blt .L_814FD198
/* 814FD1C4 | 88 1D 00 69 */	lbz r0, 0x69(r29)
/* 814FD1C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FD1CC | 41 82 00 34 */	beq .L_814FD200
/* 814FD1D0 | 80 7D 00 50 */	lwz r3, 0x50(r29)
/* 814FD1D4 | 80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 814FD1D8 | 7C 03 00 00 */	cmpw r3, r0
/* 814FD1DC | 41 80 00 24 */	blt .L_814FD200
/* 814FD1E0 | 38 00 00 00 */	li r0, 0x0
/* 814FD1E4 | 7F A3 EB 78 */	mr r3, r29
/* 814FD1E8 | 98 1D 00 69 */	stb r0, 0x69(r29)
/* 814FD1EC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814FD1F0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814FD1F4 | 7D 89 03 A6 */	mtctr r12
/* 814FD1F8 | 4E 80 04 21 */	bctrl
/* 814FD1FC | 48 00 00 88 */	b .L_814FD284
.L_814FD200:
/* 814FD200 | 88 1D 00 68 */	lbz r0, 0x68(r29)
/* 814FD204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FD208 | 41 82 00 48 */	beq .L_814FD250
/* 814FD20C | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 814FD210 | 80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 814FD214 | 7C 03 00 00 */	cmpw r3, r0
/* 814FD218 | 41 80 00 38 */	blt .L_814FD250
/* 814FD21C | 88 9D 00 67 */	lbz r4, 0x67(r29)
/* 814FD220 | 38 00 00 00 */	li r0, 0x0
/* 814FD224 | 98 1D 00 68 */	stb r0, 0x68(r29)
/* 814FD228 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FD22C | 41 82 00 24 */	beq .L_814FD250
/* 814FD230 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD234 | 7C 04 00 D0 */	neg r0, r4
/* 814FD238 | 7C 00 23 78 */	or r0, r0, r4
/* 814FD23C | 7F E3 FB 78 */	mr r3, r31
/* 814FD240 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814FD244 | 54 04 0F FE */	srwi r4, r0, 31
/* 814FD248 | 7D 89 03 A6 */	mtctr r12
/* 814FD24C | 4E 80 04 21 */	bctrl
.L_814FD250:
/* 814FD250 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FD254 | 41 82 00 30 */	beq .L_814FD284
/* 814FD258 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD25C | 7F E3 FB 78 */	mr r3, r31
/* 814FD260 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814FD264 | 7D 89 03 A6 */	mtctr r12
/* 814FD268 | 4E 80 04 21 */	bctrl
/* 814FD26C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD270 | 41 82 00 14 */	beq .L_814FD284
/* 814FD274 | 38 60 00 01 */	li r3, 0x1
/* 814FD278 | 38 00 00 00 */	li r0, 0x0
/* 814FD27C | 98 7D 00 65 */	stb r3, 0x65(r29)
/* 814FD280 | 98 1D 00 64 */	stb r0, 0x64(r29)
.L_814FD284:
/* 814FD284 | E3 E1 00 C8 */	psq_l f31, 0xc8(r1), 0, qr0
/* 814FD288 | CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 814FD28C | E3 C1 00 B8 */	psq_l f30, 0xb8(r1), 0, qr0
/* 814FD290 | CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 814FD294 | E3 A1 00 A8 */	psq_l f29, 0xa8(r1), 0, qr0
/* 814FD298 | CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 814FD29C | E3 81 00 98 */	psq_l f28, 0x98(r1), 0, qr0
/* 814FD2A0 | CB 81 00 90 */	lfd f28, 0x90(r1)
/* 814FD2A4 | E3 61 00 88 */	psq_l f27, 0x88(r1), 0, qr0
/* 814FD2A8 | CB 61 00 80 */	lfd f27, 0x80(r1)
/* 814FD2AC | E3 41 00 78 */	psq_l f26, 0x78(r1), 0, qr0
/* 814FD2B0 | CB 41 00 70 */	lfd f26, 0x70(r1)
/* 814FD2B4 | E3 21 00 68 */	psq_l f25, 0x68(r1), 0, qr0
/* 814FD2B8 | CB 21 00 60 */	lfd f25, 0x60(r1)
/* 814FD2BC | E3 01 00 58 */	psq_l f24, 0x58(r1), 0, qr0
/* 814FD2C0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814FD2C4 | CB 01 00 50 */	lfd f24, 0x50(r1)
/* 814FD2C8 | 48 0F C2 3D */	bl _restgpr_25
/* 814FD2CC | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 814FD2D0 | 7C 08 03 A6 */	mtlr r0
/* 814FD2D4 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 814FD2D8 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail10BasicSoundFv

# .text:0xDB8 | 0x814FD2DC | size: 0x180
# nw4r::snd::detail::BasicSound::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FD2DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD2E0 | 7C 08 02 A6 */	mflr r0
/* 814FD2E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD2E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD2EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FD2F0 | 7C 7E 1B 78 */	mr r30, r3
/* 814FD2F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FD2F8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FD2FC | 7D 89 03 A6 */	mtctr r12
/* 814FD300 | 4E 80 04 21 */	bctrl
/* 814FD304 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FD308 | 7C 7F 1B 78 */	mr r31, r3
/* 814FD30C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814FD310 | 7D 89 03 A6 */	mtctr r12
/* 814FD314 | 4E 80 04 21 */	bctrl
/* 814FD318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD31C | 41 82 00 3C */	beq .L_814FD358
/* 814FD320 | 88 1E 00 69 */	lbz r0, 0x69(r30)
/* 814FD324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FD328 | 41 82 00 1C */	beq .L_814FD344
/* 814FD32C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD330 | 7F E3 FB 78 */	mr r3, r31
/* 814FD334 | C0 22 8E 50 */	lfs f1, lbl_81695250@sda21(r0)
/* 814FD338 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814FD33C | 7D 89 03 A6 */	mtctr r12
/* 814FD340 | 4E 80 04 21 */	bctrl
.L_814FD344:
/* 814FD344 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814FD348 | 7F E3 FB 78 */	mr r3, r31
/* 814FD34C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814FD350 | 7D 89 03 A6 */	mtctr r12
/* 814FD354 | 4E 80 04 21 */	bctrl
.L_814FD358:
/* 814FD358 | 3B E0 FF FF */	li r31, -0x1
/* 814FD35C | 7F C3 F3 78 */	mr r3, r30
/* 814FD360 | 93 FE 00 78 */	stw r31, 0x78(r30)
/* 814FD364 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814FD368 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FD36C | 7D 89 03 A6 */	mtctr r12
/* 814FD370 | 4E 80 04 21 */	bctrl
/* 814FD374 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 814FD378 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814FD37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD380 | 41 82 00 08 */	beq .L_814FD388
/* 814FD384 | 48 00 D4 F5 */	bl DetachSound__Q34nw4r3snd11SoundHandleFv
.L_814FD388:
/* 814FD388 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814FD38C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD390 | 41 82 00 08 */	beq .L_814FD398
/* 814FD394 | 48 00 D4 E5 */	bl DetachSound__Q34nw4r3snd11SoundHandleFv
.L_814FD398:
/* 814FD398 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814FD39C | 7F C3 F3 78 */	mr r3, r30
/* 814FD3A0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 814FD3A4 | 7D 89 03 A6 */	mtctr r12
/* 814FD3A8 | 4E 80 04 21 */	bctrl
/* 814FD3AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD3B0 | 41 82 00 18 */	beq .L_814FD3C8
/* 814FD3B4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814FD3B8 | 7F C3 F3 78 */	mr r3, r30
/* 814FD3BC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814FD3C0 | 7D 89 03 A6 */	mtctr r12
/* 814FD3C4 | 4E 80 04 21 */	bctrl
.L_814FD3C8:
/* 814FD3C8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814FD3CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FD3D0 | 41 82 00 10 */	beq .L_814FD3E0
/* 814FD3D4 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 814FD3D8 | 7F C4 F3 78 */	mr r4, r30
/* 814FD3DC | 48 00 E7 F1 */	bl detail_FreePlayerHeap__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound
.L_814FD3E0:
/* 814FD3E0 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 814FD3E4 | 7F C4 F3 78 */	mr r4, r30
/* 814FD3E8 | 48 00 DA 69 */	bl detail_RemovePriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound
/* 814FD3EC | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 814FD3F0 | 7F C4 F3 78 */	mr r4, r30
/* 814FD3F4 | 48 00 D9 89 */	bl detail_RemoveSoundList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound
/* 814FD3F8 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814FD3FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD400 | 41 82 00 0C */	beq .L_814FD40C
/* 814FD404 | 7F C4 F3 78 */	mr r4, r30
/* 814FD408 | 48 00 20 01 */	bl RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
.L_814FD40C:
/* 814FD40C | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 814FD410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD414 | 41 82 00 24 */	beq .L_814FD438
/* 814FD418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FD41C | 7F C5 F3 78 */	mr r5, r30
/* 814FD420 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 814FD424 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814FD428 | 7D 89 03 A6 */	mtctr r12
/* 814FD42C | 4E 80 04 21 */	bctrl
/* 814FD430 | 38 00 00 00 */	li r0, 0x0
/* 814FD434 | 90 1E 00 24 */	stw r0, 0x24(r30)
.L_814FD438:
/* 814FD438 | 38 00 00 00 */	li r0, 0x0
/* 814FD43C | 98 1E 00 65 */	stb r0, 0x65(r30)
/* 814FD440 | 98 1E 00 69 */	stb r0, 0x69(r30)
/* 814FD444 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD448 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FD44C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD450 | 7C 08 03 A6 */	mtlr r0
/* 814FD454 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD458 | 4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail10BasicSoundFv

# .text:0xF38 | 0x814FD45C | size: 0x50
# nw4r::snd::detail::BasicSound::SetPlayerPriority(int)
.fn SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi, global
/* 814FD45C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD460 | 7C 08 02 A6 */	mflr r0
/* 814FD464 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD468 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD46C | 7C 7F 1B 78 */	mr r31, r3
/* 814FD470 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814FD474 | 98 83 00 74 */	stb r4, 0x74(r3)
/* 814FD478 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FD47C | 41 82 00 1C */	beq .L_814FD498
/* 814FD480 | 7C 03 03 78 */	mr r3, r0
/* 814FD484 | 7F E4 FB 78 */	mr r4, r31
/* 814FD488 | 48 00 D9 C9 */	bl detail_RemovePriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound
/* 814FD48C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814FD490 | 7F E4 FB 78 */	mr r4, r31
/* 814FD494 | 48 00 D9 21 */	bl detail_InsertPriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound
.L_814FD498:
/* 814FD498 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD49C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD4A0 | 7C 08 03 A6 */	mtlr r0
/* 814FD4A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD4A8 | 4E 80 00 20 */	blr
.endfn SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi

# .text:0xF88 | 0x814FD4AC | size: 0x8
# nw4r::snd::detail::BasicSound::SetInitialVolume(float)
.fn SetInitialVolume__Q44nw4r3snd6detail10BasicSoundFf, global
/* 814FD4AC | D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 814FD4B0 | 4E 80 00 20 */	blr
.endfn SetInitialVolume__Q44nw4r3snd6detail10BasicSoundFf

# .text:0xF90 | 0x814FD4B4 | size: 0x80
# nw4r::snd::detail::BasicSound::SetVolume(float, int)
.fn SetVolume__Q44nw4r3snd6detail10BasicSoundFfi, global
/* 814FD4B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FD4B8 | 80 C3 00 84 */	lwz r6, 0x84(r3)
/* 814FD4BC | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 814FD4C0 | 7C 00 30 00 */	cmpw r0, r6
/* 814FD4C4 | 41 80 00 0C */	blt .L_814FD4D0
/* 814FD4C8 | C0 03 00 80 */	lfs f0, 0x80(r3)
/* 814FD4CC | 48 00 00 4C */	b .L_814FD518
.L_814FD4D0:
/* 814FD4D0 | 3C A0 43 30 */	lis r5, 0x4330
/* 814FD4D4 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814FD4D8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FD4DC | 6C C0 80 00 */	xoris r0, r6, 0x8000
/* 814FD4E0 | C8 A2 8E 58 */	lfd f5, lbl_81695258@sda21(r0)
/* 814FD4E4 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814FD4E8 | C0 03 00 80 */	lfs f0, 0x80(r3)
/* 814FD4EC | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814FD4F0 | C0 63 00 7C */	lfs f3, 0x7c(r3)
/* 814FD4F4 | EC 82 28 28 */	fsubs f4, f2, f5
/* 814FD4F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD4FC | EC 40 18 28 */	fsubs f2, f0, f3
/* 814FD500 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814FD504 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814FD508 | EC 44 00 B2 */	fmuls f2, f4, f2
/* 814FD50C | EC 00 28 28 */	fsubs f0, f0, f5
/* 814FD510 | EC 02 00 24 */	fdivs f0, f2, f0
/* 814FD514 | EC 03 00 2A */	fadds f0, f3, f0
.L_814FD518:
/* 814FD518 | 38 00 00 00 */	li r0, 0x0
/* 814FD51C | D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 814FD520 | D0 23 00 80 */	stfs f1, 0x80(r3)
/* 814FD524 | 90 83 00 84 */	stw r4, 0x84(r3)
/* 814FD528 | 90 03 00 88 */	stw r0, 0x88(r3)
/* 814FD52C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FD530 | 4E 80 00 20 */	blr
.endfn SetVolume__Q44nw4r3snd6detail10BasicSoundFfi

# .text:0x1010 | 0x814FD534 | size: 0x8
# nw4r::snd::detail::BasicSound::SetPitch(float)
.fn SetPitch__Q44nw4r3snd6detail10BasicSoundFf, global
/* 814FD534 | D0 23 00 98 */	stfs f1, 0x98(r3)
/* 814FD538 | 4E 80 00 20 */	blr
.endfn SetPitch__Q44nw4r3snd6detail10BasicSoundFf

# .text:0x1018 | 0x814FD53C | size: 0x8
# nw4r::snd::detail::BasicSound::SetPan(float)
.fn SetPan__Q44nw4r3snd6detail10BasicSoundFf, global
/* 814FD53C | D0 23 00 90 */	stfs f1, 0x90(r3)
/* 814FD540 | 4E 80 00 20 */	blr
.endfn SetPan__Q44nw4r3snd6detail10BasicSoundFf

# .text:0x1020 | 0x814FD544 | size: 0x8
# nw4r::snd::detail::BasicSound::SetSurroundPan(float)
.fn SetSurroundPan__Q44nw4r3snd6detail10BasicSoundFf, global
/* 814FD544 | D0 23 00 94 */	stfs f1, 0x94(r3)
/* 814FD548 | 4E 80 00 20 */	blr
.endfn SetSurroundPan__Q44nw4r3snd6detail10BasicSoundFf

# .text:0x1028 | 0x814FD54C | size: 0x4C
# nw4r::snd::detail::BasicSound::SetLpfFreq(float)
.fn SetLpfFreq__Q44nw4r3snd6detail10BasicSoundFf, global
/* 814FD54C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD550 | 7C 08 02 A6 */	mflr r0
/* 814FD554 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD558 | DB E1 00 08 */	stfd f31, 0x8(r1)
/* 814FD55C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FD560 | FF E0 08 90 */	fmr f31, f1
/* 814FD564 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FD568 | 7D 89 03 A6 */	mtctr r12
/* 814FD56C | 4E 80 04 21 */	bctrl
/* 814FD570 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FD574 | FC 20 F8 90 */	fmr f1, f31
/* 814FD578 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814FD57C | 7D 89 03 A6 */	mtctr r12
/* 814FD580 | 4E 80 04 21 */	bctrl
/* 814FD584 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD588 | CB E1 00 08 */	lfd f31, 0x8(r1)
/* 814FD58C | 7C 08 03 A6 */	mtlr r0
/* 814FD590 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD594 | 4E 80 00 20 */	blr
.endfn SetLpfFreq__Q44nw4r3snd6detail10BasicSoundFf

# .text:0x1074 | 0x814FD598 | size: 0x14
# nw4r::snd::detail::BasicSound::SetAmbientParamCallback(nw4r::snd::detail::BasicSound::AmbientParamUpdateCallback*, nw4r::snd::detail::BasicSound::AmbientArgUpdateCallback*, nw4r::snd::detail::BasicSound::AmbientArgAllocaterCallback*, void*)
.fn SetAmbientParamCallback__Q44nw4r3snd6detail10BasicSoundFPQ54nw4r3snd6detail10BasicSound26AmbientParamUpdateCallbackPQ54nw4r3snd6detail10BasicSound24AmbientArgUpdateCallbackPQ54nw4r3snd6detail10BasicSound27AmbientArgAllocaterCallbackPv, global
/* 814FD598 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 814FD59C | 90 A3 00 1C */	stw r5, 0x1c(r3)
/* 814FD5A0 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 814FD5A4 | 90 E3 00 24 */	stw r7, 0x24(r3)
/* 814FD5A8 | 4E 80 00 20 */	blr
.endfn SetAmbientParamCallback__Q44nw4r3snd6detail10BasicSoundFPQ54nw4r3snd6detail10BasicSound26AmbientParamUpdateCallbackPQ54nw4r3snd6detail10BasicSound24AmbientArgUpdateCallbackPQ54nw4r3snd6detail10BasicSound27AmbientArgAllocaterCallbackPv

# .text:0x1088 | 0x814FD5AC | size: 0x14
# nw4r::snd::detail::BasicSound::IsAttachedGeneralHandle()
.fn IsAttachedGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FD5AC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814FD5B0 | 7C 03 00 D0 */	neg r0, r3
/* 814FD5B4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814FD5B8 | 54 03 0F FE */	srwi r3, r0, 31
/* 814FD5BC | 4E 80 00 20 */	blr
.endfn IsAttachedGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv

# .text:0x109C | 0x814FD5C0 | size: 0x8
# nw4r::snd::detail::BasicSound::DetachGeneralHandle()
.fn DetachGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FD5C0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814FD5C4 | 48 00 D2 B4 */	b DetachSound__Q34nw4r3snd11SoundHandleFv
.endfn DetachGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv

# .text:0x10A4 | 0x814FD5C8 | size: 0x40
# nw4r::snd::detail::BasicSound::SetId(unsigned long)
.fn SetId__Q44nw4r3snd6detail10BasicSoundFUl, global
/* 814FD5C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD5CC | 7C 08 02 A6 */	mflr r0
/* 814FD5D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD5D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD5D8 | 7C 9F 23 78 */	mr r31, r4
/* 814FD5DC | 90 83 00 78 */	stw r4, 0x78(r3)
/* 814FD5E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814FD5E4 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814FD5E8 | 7D 89 03 A6 */	mtctr r12
/* 814FD5EC | 4E 80 04 21 */	bctrl
/* 814FD5F0 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 814FD5F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD5F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD5FC | 7C 08 03 A6 */	mtlr r0
/* 814FD600 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD604 | 4E 80 00 20 */	blr
.endfn SetId__Q44nw4r3snd6detail10BasicSoundFUl

# .text:0x10E4 | 0x814FD608 | size: 0x40
# nw4r::snd::detail::BasicSound::~BasicSound()
.fn __dt__Q44nw4r3snd6detail10BasicSoundFv, global
/* 814FD608 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD60C | 7C 08 02 A6 */	mflr r0
/* 814FD610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD614 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD618 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD61C | 7C 7F 1B 78 */	mr r31, r3
/* 814FD620 | 41 82 00 10 */	beq .L_814FD630
/* 814FD624 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FD628 | 40 81 00 08 */	ble .L_814FD630
/* 814FD62C | 48 0F AA B9 */	bl __dl__FPv
.L_814FD630:
/* 814FD630 | 7F E3 FB 78 */	mr r3, r31
/* 814FD634 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD638 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD63C | 7C 08 03 A6 */	mtlr r0
/* 814FD640 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD644 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail10BasicSoundFv

# .text:0x1124 | 0x814FD648 | size: 0x8
# nw4r::snd::detail::BasicSound::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q44nw4r3snd6detail10BasicSoundCFv, global
/* 814FD648 | 38 6D AE 88 */	li r3, typeInfo__Q44nw4r3snd6detail10BasicSound@sda21
/* 814FD64C | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q44nw4r3snd6detail10BasicSoundCFv

# .text:0x112C | 0x814FD650 | size: 0xC
.fn "__sinit_\\snd_BasicSound_cpp", weak
/* 814FD650 | 38 00 00 00 */	li r0, 0x0
/* 814FD654 | 90 0D AE 88 */	stw r0, typeInfo__Q44nw4r3snd6detail10BasicSound@sda21(r0)
/* 814FD658 | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_BasicSound_cpp"

# 0x8160D224..0x8160D228 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_BasicSound_cpp"

# 0x8166F2E0..0x8166F348 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x8166F2E0 | size: 0x64
# nw4r::snd::detail::BasicSound::__vtable
.obj __vt__Q44nw4r3snd6detail10BasicSound, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte __dt__Q44nw4r3snd6detail10BasicSoundFv
	.4byte Update__Q44nw4r3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q44nw4r3snd6detail10BasicSoundFv
	.4byte Stop__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Pause__Q44nw4r3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q44nw4r3snd6detail10BasicSoundFi
	.4byte FadeIn__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Shutdown__Q44nw4r3snd6detail10BasicSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte IsPause__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetVolume__Q44nw4r3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte InitParam__Q44nw4r3snd6detail10BasicSoundFv
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd6detail10BasicSound

# .data:0x64 | 0x8166F344 | size: 0x4
.obj gap_08_8166F344_data, global
.hidden gap_08_8166F344_data
	.4byte 0x00000000
.endobj gap_08_8166F344_data

# 0x81695250..0x81695260 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695250 | size: 0x4
.obj lbl_81695250, global
	.float 0
.endobj lbl_81695250

# .sdata2:0x4 | 0x81695254 | size: 0x4
.obj lbl_81695254, global
	.float 1
.endobj lbl_81695254

# .sdata2:0x8 | 0x81695258 | size: 0x8
.obj lbl_81695258, global
	.double 4503601774854144
.endobj lbl_81695258

# 0x81698EC8..0x81698ED0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EC8 | size: 0x4
# nw4r::snd::detail::BasicSound::typeInfo
.obj typeInfo__Q44nw4r3snd6detail10BasicSound, global
	.skip 0x4
.endobj typeInfo__Q44nw4r3snd6detail10BasicSound

# .sbss:0x4 | 0x81698ECC | size: 0x4
.obj gap_12_81698ECC_sbss, global
.hidden gap_12_81698ECC_sbss
	.skip 0x4
.endobj gap_12_81698ECC_sbss
