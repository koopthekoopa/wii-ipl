.include "macros.inc"
.file "iplLayout.cpp"

# 0x81369ABC..0x8136AF8C | size: 0x14D0
.text
.balign 4

# .text:0x0 | 0x81369ABC | size: 0x100
# ipl::layout::Animator::Animator(nw4r::lyt::AnimTransform*, bool, bool)
.fn __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb, global
/* 81369ABC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369AC0 | 7C 08 02 A6 */	mflr r0
/* 81369AC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369AC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369ACC | 48 28 F9 F9 */	bl _savegpr_28
/* 81369AD0 | 3C E0 81 64 */	lis r7, __vt__Q33ipl6layout8Animator@ha
/* 81369AD4 | 38 00 00 00 */	li r0, 0x0
/* 81369AD8 | 38 E7 29 30 */	addi r7, r7, __vt__Q33ipl6layout8Animator@l
/* 81369ADC | 7C 9F 23 78 */	mr r31, r4
/* 81369AE0 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 81369AE4 | 7C 7C 1B 78 */	mr r28, r3
/* 81369AE8 | 7C BD 2B 78 */	mr r29, r5
/* 81369AEC | 7C DE 33 78 */	mr r30, r6
/* 81369AF0 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 81369AF4 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81369AF8 | 7F E3 FB 78 */	mr r3, r31
/* 81369AFC | 48 1B FC 5D */	bl fn_81529758
/* 81369B00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369B04 | 41 82 00 30 */	beq .L_81369B34
/* 81369B08 | 7F E3 FB 78 */	mr r3, r31
/* 81369B0C | 3B E0 00 02 */	li r31, 0x2
/* 81369B10 | 48 1B FC 3D */	bl fn_8152974C
/* 81369B14 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81369B18 | 3C 00 43 30 */	lis r0, 0x4330
/* 81369B1C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81369B20 | C8 22 82 90 */	lfd f1, lbl_81694690@sda21(r0)
/* 81369B24 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81369B28 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81369B2C | EC 20 08 28 */	fsubs f1, f0, f1
/* 81369B30 | 48 00 00 34 */	b .L_81369B64
.L_81369B34:
/* 81369B34 | 7F E3 FB 78 */	mr r3, r31
/* 81369B38 | 3B E0 00 00 */	li r31, 0x0
/* 81369B3C | 48 1B FC 11 */	bl fn_8152974C
/* 81369B40 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81369B44 | 3C 00 43 30 */	lis r0, 0x4330
/* 81369B48 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81369B4C | C8 42 82 90 */	lfd f2, lbl_81694690@sda21(r0)
/* 81369B50 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81369B54 | C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 81369B58 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81369B5C | EC 21 10 28 */	fsubs f1, f1, f2
/* 81369B60 | EC 21 00 28 */	fsubs f1, f1, f0
.L_81369B64:
/* 81369B64 | C0 42 82 8C */	lfs f2, lbl_8169468C@sda21(r0)
/* 81369B68 | 7F 83 E3 78 */	mr r3, r28
/* 81369B6C | C0 62 82 88 */	lfs f3, lbl_81694688@sda21(r0)
/* 81369B70 | 7F E4 FB 78 */	mr r4, r31
/* 81369B74 | 4B FF 8C DD */	bl init__Q33ipl7utility15FrameControllerFifff
/* 81369B78 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81369B7C | 41 82 00 10 */	beq .L_81369B8C
/* 81369B80 | 80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 81369B84 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81369B88 | 90 1C 00 2C */	stw r0, 0x2c(r28)
.L_81369B8C:
/* 81369B8C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81369B90 | 41 82 00 10 */	beq .L_81369BA0
/* 81369B94 | 80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 81369B98 | 60 00 00 02 */	ori r0, r0, 0x2
/* 81369B9C | 90 1C 00 2C */	stw r0, 0x2c(r28)
.L_81369BA0:
/* 81369BA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369BA4 | 7F 83 E3 78 */	mr r3, r28
/* 81369BA8 | 48 28 F9 69 */	bl _restgpr_28
/* 81369BAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369BB0 | 7C 08 03 A6 */	mtlr r0
/* 81369BB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81369BB8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb

# .text:0x100 | 0x81369BBC | size: 0x54
# ipl::layout::Animator::calc()
.fn calc__Q33ipl6layout8AnimatorFv, global
/* 81369BBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369BC0 | 7C 08 02 A6 */	mflr r0
/* 81369BC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369BC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369BCC | 7C 7F 1B 78 */	mr r31, r3
/* 81369BD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369BD4 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 81369BD8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81369BDC | 30 04 FF FF */	subic r0, r4, 0x1
/* 81369BE0 | 7C 80 21 10 */	subfe r4, r0, r4
/* 81369BE4 | 7D 89 03 A6 */	mtctr r12
/* 81369BE8 | 4E 80 04 21 */	bctrl
/* 81369BEC | 7F E3 FB 78 */	mr r3, r31
/* 81369BF0 | 4B FF 8C A1 */	bl calc__Q33ipl7utility15FrameControllerFv
/* 81369BF4 | 7F E3 FB 78 */	mr r3, r31
/* 81369BF8 | 48 00 00 1D */	bl setFrame__Q33ipl6layout8AnimatorFv
/* 81369BFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369C00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369C04 | 7C 08 03 A6 */	mtlr r0
/* 81369C08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369C0C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl6layout8AnimatorFv

# .text:0x154 | 0x81369C10 | size: 0x4
# ipl::layout::Animator::setFlag(bool)
.fn setFlag__Q33ipl6layout8AnimatorFb, global
/* 81369C10 | 4E 80 00 20 */	blr
.endfn setFlag__Q33ipl6layout8AnimatorFb

# .text:0x158 | 0x81369C14 | size: 0x10
# ipl::layout::Animator::setFrame()
.fn setFrame__Q33ipl6layout8AnimatorFv, global
/* 81369C14 | C0 03 00 0C */	lfs f0, 0xc(r3)
/* 81369C18 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81369C1C | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 81369C20 | 4E 80 00 20 */	blr
.endfn setFrame__Q33ipl6layout8AnimatorFv

# .text:0x168 | 0x81369C24 | size: 0x3C
# ipl::layout::Animator::initAnmFrame()
.fn initAnmFrame__Q33ipl6layout8AnimatorFv, global
/* 81369C24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369C28 | 7C 08 02 A6 */	mflr r0
/* 81369C2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369C30 | 38 00 00 02 */	li r0, 0x2
/* 81369C34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369C38 | 7C 7F 1B 78 */	mr r31, r3
/* 81369C3C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81369C40 | 4B FF 8C 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81369C44 | 7F E3 FB 78 */	mr r3, r31
/* 81369C48 | 4B FF FF CD */	bl setFrame__Q33ipl6layout8AnimatorFv
/* 81369C4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369C50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369C54 | 7C 08 03 A6 */	mtlr r0
/* 81369C58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369C5C | 4E 80 00 20 */	blr
.endfn initAnmFrame__Q33ipl6layout8AnimatorFv

# .text:0x1A4 | 0x81369C60 | size: 0x10
# ipl::layout::Animator::initAnmFrame(float)
.fn initAnmFrame__Q33ipl6layout8AnimatorFf, global
/* 81369C60 | 38 00 00 02 */	li r0, 0x2
/* 81369C64 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81369C68 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81369C6C | 4B FF FF A8 */	b setFrame__Q33ipl6layout8AnimatorFv
.endfn initAnmFrame__Q33ipl6layout8AnimatorFf

# .text:0x1B4 | 0x81369C70 | size: 0x54
# ipl::layout::PaneAnimator::PaneAnimator(nw4r::lyt::AnimTransform*, nw4r::lyt::Pane*, bool, bool)
.fn __ct__Q33ipl6layout12PaneAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt4Panebb, global
/* 81369C70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369C74 | 7C 08 02 A6 */	mflr r0
/* 81369C78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369C7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369C80 | 7C BF 2B 78 */	mr r31, r5
/* 81369C84 | 7C C5 33 78 */	mr r5, r6
/* 81369C88 | 7C E6 3B 78 */	mr r6, r7
/* 81369C8C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81369C90 | 7C 7E 1B 78 */	mr r30, r3
/* 81369C94 | 4B FF FE 29 */	bl __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb
/* 81369C98 | 3C 80 81 64 */	lis r4, __vt__Q33ipl6layout12PaneAnimator@ha
/* 81369C9C | 93 FE 00 30 */	stw r31, 0x30(r30)
/* 81369CA0 | 38 84 29 18 */	addi r4, r4, __vt__Q33ipl6layout12PaneAnimator@l
/* 81369CA4 | 7F C3 F3 78 */	mr r3, r30
/* 81369CA8 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 81369CAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369CB0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81369CB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369CB8 | 7C 08 03 A6 */	mtlr r0
/* 81369CBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369CC0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout12PaneAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt4Panebb

# .text:0x208 | 0x81369CC4 | size: 0x40
# ipl::layout::Animator::~Animator()
.fn __dt__Q33ipl6layout8AnimatorFv, global
/* 81369CC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369CC8 | 7C 08 02 A6 */	mflr r0
/* 81369CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369CD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369CD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369CD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81369CDC | 41 82 00 10 */	beq .L_81369CEC
/* 81369CE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81369CE4 | 40 81 00 08 */	ble .L_81369CEC
/* 81369CE8 | 48 28 E3 FD */	bl __dl__FPv
.L_81369CEC:
/* 81369CEC | 7F E3 FB 78 */	mr r3, r31
/* 81369CF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369CF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369CF8 | 7C 08 03 A6 */	mtlr r0
/* 81369CFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369D00 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout8AnimatorFv

# .text:0x248 | 0x81369D04 | size: 0x24
# ipl::layout::PaneAnimator::bind()
.fn bind__Q33ipl6layout12PaneAnimatorFv, global
/* 81369D04 | 7C 64 1B 78 */	mr r4, r3
/* 81369D08 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 81369D0C | 80 04 00 2C */	lwz r0, 0x2c(r4)
/* 81369D10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369D14 | 54 05 07 FE */	clrlwi r5, r0, 31
/* 81369D18 | 80 84 00 20 */	lwz r4, 0x20(r4)
/* 81369D1C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81369D20 | 7D 89 03 A6 */	mtctr r12
/* 81369D24 | 4E 80 04 20 */	bctr
.endfn bind__Q33ipl6layout12PaneAnimatorFv

# .text:0x26C | 0x81369D28 | size: 0x28
# ipl::layout::PaneAnimator::setFlag(bool)
.fn setFlag__Q33ipl6layout12PaneAnimatorFb, global
/* 81369D28 | 7C 67 1B 78 */	mr r7, r3
/* 81369D2C | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 81369D30 | 80 07 00 2C */	lwz r0, 0x2c(r7)
/* 81369D34 | 7C 85 23 78 */	mr r5, r4
/* 81369D38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369D3C | 54 06 07 FE */	clrlwi r6, r0, 31
/* 81369D40 | 80 87 00 20 */	lwz r4, 0x20(r7)
/* 81369D44 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81369D48 | 7D 89 03 A6 */	mtctr r12
/* 81369D4C | 4E 80 04 20 */	bctr
.endfn setFlag__Q33ipl6layout12PaneAnimatorFb

# .text:0x294 | 0x81369D50 | size: 0x54
# ipl::layout::GroupAnimator::GroupAnimator(nw4r::lyt::AnimTransform*, nw4r::lyt::Group*, bool, bool)
.fn __ct__Q33ipl6layout13GroupAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt5Groupbb, global
/* 81369D50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369D54 | 7C 08 02 A6 */	mflr r0
/* 81369D58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369D5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369D60 | 7C BF 2B 78 */	mr r31, r5
/* 81369D64 | 7C C5 33 78 */	mr r5, r6
/* 81369D68 | 7C E6 3B 78 */	mr r6, r7
/* 81369D6C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81369D70 | 7C 7E 1B 78 */	mr r30, r3
/* 81369D74 | 4B FF FD 49 */	bl __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb
/* 81369D78 | 3C 80 81 64 */	lis r4, __vt__Q33ipl6layout13GroupAnimator@ha
/* 81369D7C | 93 FE 00 30 */	stw r31, 0x30(r30)
/* 81369D80 | 38 84 29 00 */	addi r4, r4, __vt__Q33ipl6layout13GroupAnimator@l
/* 81369D84 | 7F C3 F3 78 */	mr r3, r30
/* 81369D88 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 81369D8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369D90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81369D94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369D98 | 7C 08 03 A6 */	mtlr r0
/* 81369D9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369DA0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout13GroupAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt5Groupbb

# .text:0x2E8 | 0x81369DA4 | size: 0x90
# ipl::layout::GroupAnimator::bind()
.fn bind__Q33ipl6layout13GroupAnimatorFv, global
/* 81369DA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369DA8 | 7C 08 02 A6 */	mflr r0
/* 81369DAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369DB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369DB4 | 48 28 F7 15 */	bl _savegpr_29
/* 81369DB8 | 80 83 00 30 */	lwz r4, 0x30(r3)
/* 81369DBC | 7C 7D 1B 78 */	mr r29, r3
/* 81369DC0 | 3B C4 00 0C */	addi r30, r4, 0xc
/* 81369DC4 | 7F C3 F3 78 */	mr r3, r30
/* 81369DC8 | 48 00 00 6D */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369DCC | 7C 7F 1B 78 */	mr r31, r3
/* 81369DD0 | 48 00 00 28 */	b .L_81369DF8
.L_81369DD4:
/* 81369DD4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81369DD8 | 80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 81369DDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369DE0 | 54 05 07 FE */	clrlwi r5, r0, 31
/* 81369DE4 | 80 9D 00 20 */	lwz r4, 0x20(r29)
/* 81369DE8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81369DEC | 7D 89 03 A6 */	mtctr r12
/* 81369DF0 | 4E 80 04 21 */	bctrl
/* 81369DF4 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81369DF8:
/* 81369DF8 | 7F C3 F3 78 */	mr r3, r30
/* 81369DFC | 48 00 00 41 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369E00 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81369E04 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81369E08 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81369E0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369E10 | 48 00 00 35 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 81369E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369E18 | 40 82 FF BC */	bne .L_81369DD4
/* 81369E1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369E20 | 48 28 F6 F5 */	bl _restgpr_29
/* 81369E24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369E28 | 7C 08 03 A6 */	mtlr r0
/* 81369E2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81369E30 | 4E 80 00 20 */	blr
.endfn bind__Q33ipl6layout13GroupAnimatorFv

# .text:0x378 | 0x81369E34 | size: 0x8
# nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::GetBeginIter()
.fn "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv", global
/* 81369E34 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81369E38 | 4E 80 00 20 */	blr
.endfn "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"

# .text:0x380 | 0x81369E3C | size: 0x8
# nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::GetEndIter()
.fn "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv", global
/* 81369E3C | 38 63 00 04 */	addi r3, r3, 0x4
/* 81369E40 | 4E 80 00 20 */	blr
.endfn "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"

# .text:0x388 | 0x81369E44 | size: 0x18
# nw4r::ut::operator!=(nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::Iterator, nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::Iterator)
.fn "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator", global
/* 81369E44 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81369E48 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81369E4C | 7C 60 20 50 */	subf r3, r0, r4
/* 81369E50 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81369E54 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81369E58 | 4E 80 00 20 */	blr
.endfn "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"

# .text:0x3A0 | 0x81369E5C | size: 0x98
# ipl::layout::GroupAnimator::setFlag(bool)
.fn setFlag__Q33ipl6layout13GroupAnimatorFb, global
/* 81369E5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369E60 | 7C 08 02 A6 */	mflr r0
/* 81369E64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369E68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369E6C | 48 28 F6 59 */	bl _savegpr_28
/* 81369E70 | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 81369E74 | 7C 7C 1B 78 */	mr r28, r3
/* 81369E78 | 7C 9D 23 78 */	mr r29, r4
/* 81369E7C | 3B C5 00 0C */	addi r30, r5, 0xc
/* 81369E80 | 7F C3 F3 78 */	mr r3, r30
/* 81369E84 | 4B FF FF B1 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369E88 | 7C 7F 1B 78 */	mr r31, r3
/* 81369E8C | 48 00 00 2C */	b .L_81369EB8
.L_81369E90:
/* 81369E90 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81369E94 | 7F A5 EB 78 */	mr r5, r29
/* 81369E98 | 80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 81369E9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369EA0 | 54 06 07 FE */	clrlwi r6, r0, 31
/* 81369EA4 | 80 9C 00 20 */	lwz r4, 0x20(r28)
/* 81369EA8 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81369EAC | 7D 89 03 A6 */	mtctr r12
/* 81369EB0 | 4E 80 04 21 */	bctrl
/* 81369EB4 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81369EB8:
/* 81369EB8 | 7F C3 F3 78 */	mr r3, r30
/* 81369EBC | 4B FF FF 81 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369EC0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81369EC4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81369EC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81369ECC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369ED0 | 4B FF FF 75 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 81369ED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369ED8 | 40 82 FF B8 */	bne .L_81369E90
/* 81369EDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369EE0 | 48 28 F6 31 */	bl _restgpr_28
/* 81369EE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369EE8 | 7C 08 03 A6 */	mtlr r0
/* 81369EEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81369EF0 | 4E 80 00 20 */	blr
.endfn setFlag__Q33ipl6layout13GroupAnimatorFb

# .text:0x438 | 0x81369EF4 | size: 0xE0
# ipl::layout::Object::Object(EGG::Heap*, void*, const char*, const char*)
.fn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc, global
/* 81369EF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369EF8 | 7C 08 02 A6 */	mflr r0
/* 81369EFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369F00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369F04 | 48 28 F5 BD */	bl _savegpr_27
/* 81369F08 | 3D 00 81 64 */	lis r8, __vt__Q33ipl6layout6Object@ha
/* 81369F0C | 7C 7B 1B 78 */	mr r27, r3
/* 81369F10 | 39 08 28 F4 */	addi r8, r8, __vt__Q33ipl6layout6Object@l
/* 81369F14 | 7C 9C 23 78 */	mr r28, r4
/* 81369F18 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 81369F1C | 7C BD 2B 78 */	mr r29, r5
/* 81369F20 | 7C DE 33 78 */	mr r30, r6
/* 81369F24 | 7C FF 3B 78 */	mr r31, r7
/* 81369F28 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81369F2C | 48 1B 61 29 */	bl fn_81520054
/* 81369F30 | 38 7B 00 28 */	addi r3, r27, 0x28
/* 81369F34 | 48 1C 04 C1 */	bl fn_8152A3F4
/* 81369F38 | 38 7B 00 44 */	addi r3, r27, 0x44
/* 81369F3C | 48 1C 03 F9 */	bl fn_8152A334
/* 81369F40 | 38 7B 00 D0 */	addi r3, r27, 0xd0
/* 81369F44 | 48 1C 03 F1 */	bl fn_8152A334
/* 81369F48 | 38 7B 01 5C */	addi r3, r27, 0x15c
/* 81369F4C | 48 1C 03 E9 */	bl fn_8152A334
/* 81369F50 | 38 7B 01 E8 */	addi r3, r27, 0x1e8
/* 81369F54 | 48 1C 03 E1 */	bl fn_8152A334
/* 81369F58 | 93 9B 02 74 */	stw r28, 0x274(r27)
/* 81369F5C | 7F 84 E3 78 */	mr r4, r28
/* 81369F60 | 38 7B 02 78 */	addi r3, r27, 0x278
/* 81369F64 | 38 A0 00 04 */	li r5, 0x4
/* 81369F68 | 48 28 BB 15 */	bl fn_815F5A7C
/* 81369F6C | 38 7B 02 98 */	addi r3, r27, 0x298
/* 81369F70 | 48 1B F2 39 */	bl fn_815291A8
/* 81369F74 | 38 00 00 00 */	li r0, 0x0
/* 81369F78 | 3C 80 81 37 */	lis r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 81369F7C | 3C A0 81 37 */	lis r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 81369F80 | 90 1B 02 EC */	stw r0, 0x2ec(r27)
/* 81369F84 | 38 7B 02 F0 */	addi r3, r27, 0x2f0
/* 81369F88 | 38 84 9F D4 */	addi r4, r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 81369F8C | 38 A5 9F E4 */	addi r5, r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 81369F90 | 38 C0 00 A4 */	li r6, 0xa4
/* 81369F94 | 38 E0 00 04 */	li r7, 0x4
/* 81369F98 | 48 28 F2 69 */	bl __construct_array
/* 81369F9C | 7F 63 DB 78 */	mr r3, r27
/* 81369FA0 | 7F A4 EB 78 */	mr r4, r29
/* 81369FA4 | 7F C5 F3 78 */	mr r5, r30
/* 81369FA8 | 48 00 0B C1 */	bl attach__Q33ipl6layout6ObjectFPvPCc
/* 81369FAC | 7F 63 DB 78 */	mr r3, r27
/* 81369FB0 | 7F E4 FB 78 */	mr r4, r31
/* 81369FB4 | 48 00 02 BD */	bl init___Q33ipl6layout6ObjectFPCc
/* 81369FB8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369FBC | 7F 63 DB 78 */	mr r3, r27
/* 81369FC0 | 48 28 F5 4D */	bl _restgpr_27
/* 81369FC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369FC8 | 7C 08 03 A6 */	mtlr r0
/* 81369FCC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81369FD0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc

# .text:0x518 | 0x81369FD4 | size: 0x10
# nw4r::lyt::ArcResourceLink::ArcResourceLink()
.fn __ct__Q34nw4r3lyt15ArcResourceLinkFv, global
/* 81369FD4 | 38 00 00 00 */	li r0, 0x0
/* 81369FD8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81369FDC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81369FE0 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt15ArcResourceLinkFv

# .text:0x528 | 0x81369FE4 | size: 0x40
# nw4r::lyt::ArcResourceLink::~ArcResourceLink()
.fn __dt__Q34nw4r3lyt15ArcResourceLinkFv, global
/* 81369FE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369FE8 | 7C 08 02 A6 */	mflr r0
/* 81369FEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369FF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369FF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369FF8 | 7C 7F 1B 78 */	mr r31, r3
/* 81369FFC | 41 82 00 10 */	beq .L_8136A00C
/* 8136A000 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136A004 | 40 81 00 08 */	ble .L_8136A00C
/* 8136A008 | 48 28 E0 DD */	bl __dl__FPv
.L_8136A00C:
/* 8136A00C | 7F E3 FB 78 */	mr r3, r31
/* 8136A010 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A014 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A018 | 7C 08 03 A6 */	mtlr r0
/* 8136A01C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A020 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3lyt15ArcResourceLinkFv

# .text:0x568 | 0x8136A024 | size: 0x128
# ipl::layout::Object::Object(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 8136A024 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A028 | 7C 08 02 A6 */	mflr r0
/* 8136A02C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A030 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A034 | 48 28 F4 8D */	bl _savegpr_27
/* 8136A038 | 3D 00 81 64 */	lis r8, __vt__Q33ipl6layout6Object@ha
/* 8136A03C | 7C 7B 1B 78 */	mr r27, r3
/* 8136A040 | 39 08 28 F4 */	addi r8, r8, __vt__Q33ipl6layout6Object@l
/* 8136A044 | 7C 9C 23 78 */	mr r28, r4
/* 8136A048 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 8136A04C | 7C BD 2B 78 */	mr r29, r5
/* 8136A050 | 7C DE 33 78 */	mr r30, r6
/* 8136A054 | 7C FF 3B 78 */	mr r31, r7
/* 8136A058 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8136A05C | 48 1B 5F F9 */	bl fn_81520054
/* 8136A060 | 38 7B 00 28 */	addi r3, r27, 0x28
/* 8136A064 | 48 1C 03 91 */	bl fn_8152A3F4
/* 8136A068 | 38 7B 00 44 */	addi r3, r27, 0x44
/* 8136A06C | 48 1C 02 C9 */	bl fn_8152A334
/* 8136A070 | 38 7B 00 D0 */	addi r3, r27, 0xd0
/* 8136A074 | 48 1C 02 C1 */	bl fn_8152A334
/* 8136A078 | 38 7B 01 5C */	addi r3, r27, 0x15c
/* 8136A07C | 48 1C 02 B9 */	bl fn_8152A334
/* 8136A080 | 38 7B 01 E8 */	addi r3, r27, 0x1e8
/* 8136A084 | 48 1C 02 B1 */	bl fn_8152A334
/* 8136A088 | 93 9B 02 74 */	stw r28, 0x274(r27)
/* 8136A08C | 7F 84 E3 78 */	mr r4, r28
/* 8136A090 | 38 7B 02 78 */	addi r3, r27, 0x278
/* 8136A094 | 38 A0 00 04 */	li r5, 0x4
/* 8136A098 | 48 28 B9 E5 */	bl fn_815F5A7C
/* 8136A09C | 38 7B 02 98 */	addi r3, r27, 0x298
/* 8136A0A0 | 48 1B F1 09 */	bl fn_815291A8
/* 8136A0A4 | 38 00 00 00 */	li r0, 0x0
/* 8136A0A8 | 3C 80 81 37 */	lis r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 8136A0AC | 3C A0 81 37 */	lis r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 8136A0B0 | 90 1B 02 EC */	stw r0, 0x2ec(r27)
/* 8136A0B4 | 38 7B 02 F0 */	addi r3, r27, 0x2f0
/* 8136A0B8 | 38 84 9F D4 */	addi r4, r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 8136A0BC | 38 A5 9F E4 */	addi r5, r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 8136A0C0 | 38 C0 00 A4 */	li r6, 0xa4
/* 8136A0C4 | 38 E0 00 04 */	li r7, 0x4
/* 8136A0C8 | 48 28 F1 39 */	bl __construct_array
/* 8136A0CC | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8136A0D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A0D4 | 41 82 00 0C */	beq .L_8136A0E0
/* 8136A0D8 | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8136A0DC | 48 00 00 08 */	b .L_8136A0E4
.L_8136A0E0:
/* 8136A0E0 | 38 80 00 00 */	li r4, 0x0
.L_8136A0E4:
/* 8136A0E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136A0E8 | 41 82 00 10 */	beq .L_8136A0F8
/* 8136A0EC | 7F 63 DB 78 */	mr r3, r27
/* 8136A0F0 | 7F C5 F3 78 */	mr r5, r30
/* 8136A0F4 | 48 00 0A 75 */	bl attach__Q33ipl6layout6ObjectFPvPCc
.L_8136A0F8:
/* 8136A0F8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8136A0FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A100 | 41 82 00 0C */	beq .L_8136A10C
/* 8136A104 | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8136A108 | 48 00 00 08 */	b .L_8136A110
.L_8136A10C:
/* 8136A10C | 38 80 00 00 */	li r4, 0x0
.L_8136A110:
/* 8136A110 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136A114 | 41 82 00 10 */	beq .L_8136A124
/* 8136A118 | 7F 63 DB 78 */	mr r3, r27
/* 8136A11C | 7F C5 F3 78 */	mr r5, r30
/* 8136A120 | 48 00 0A 49 */	bl attach__Q33ipl6layout6ObjectFPvPCc
.L_8136A124:
/* 8136A124 | 7F 63 DB 78 */	mr r3, r27
/* 8136A128 | 7F E4 FB 78 */	mr r4, r31
/* 8136A12C | 48 00 01 45 */	bl init___Q33ipl6layout6ObjectFPCc
/* 8136A130 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A134 | 7F 63 DB 78 */	mr r3, r27
/* 8136A138 | 48 28 F3 D5 */	bl _restgpr_27
/* 8136A13C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A140 | 7C 08 03 A6 */	mtlr r0
/* 8136A144 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A148 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x690 | 0x8136A14C | size: 0x124
# ipl::layout::Object::~Object()
.fn __dt__Q33ipl6layout6ObjectFv, global
/* 8136A14C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A150 | 7C 08 02 A6 */	mflr r0
/* 8136A154 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A158 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A15C | 48 28 F3 6D */	bl _savegpr_29
/* 8136A160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A164 | 7C 7D 1B 78 */	mr r29, r3
/* 8136A168 | 7C 9E 23 78 */	mr r30, r4
/* 8136A16C | 41 82 00 E8 */	beq .L_8136A254
/* 8136A170 | 3C 80 81 64 */	lis r4, __vt__Q33ipl6layout6Object@ha
/* 8136A174 | 38 84 28 F4 */	addi r4, r4, __vt__Q33ipl6layout6Object@l
/* 8136A178 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8136A17C | 48 00 00 30 */	b .L_8136A1AC
.L_8136A180:
/* 8136A180 | 7F E4 FB 78 */	mr r4, r31
/* 8136A184 | 38 7D 02 8C */	addi r3, r29, 0x28c
/* 8136A188 | 48 1A 80 E9 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8136A18C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136A190 | 41 82 00 1C */	beq .L_8136A1AC
/* 8136A194 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A198 | 7F E3 FB 78 */	mr r3, r31
/* 8136A19C | 38 80 00 01 */	li r4, 0x1
/* 8136A1A0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136A1A4 | 7D 89 03 A6 */	mtctr r12
/* 8136A1A8 | 4E 80 04 21 */	bctrl
.L_8136A1AC:
/* 8136A1AC | 38 7D 02 8C */	addi r3, r29, 0x28c
/* 8136A1B0 | 38 80 00 00 */	li r4, 0x0
/* 8136A1B4 | 48 1A 81 29 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A1BC | 7C 7F 1B 78 */	mr r31, r3
/* 8136A1C0 | 40 82 FF C0 */	bne .L_8136A180
/* 8136A1C4 | 38 1D 02 78 */	addi r0, r29, 0x278
/* 8136A1C8 | 3C 80 81 37 */	lis r4, __dt__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 8136A1CC | 90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 8136A1D0 | 38 7D 02 F0 */	addi r3, r29, 0x2f0
/* 8136A1D4 | 38 84 9F E4 */	addi r4, r4, __dt__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 8136A1D8 | 38 A0 00 A4 */	li r5, 0xa4
/* 8136A1DC | 38 C0 00 04 */	li r6, 0x4
/* 8136A1E0 | 48 28 F1 19 */	bl __destroy_arr
/* 8136A1E4 | 38 7D 02 98 */	addi r3, r29, 0x298
/* 8136A1E8 | 38 80 FF FF */	li r4, -0x1
/* 8136A1EC | 48 1B F0 31 */	bl fn_8152921C
/* 8136A1F0 | 38 7D 02 78 */	addi r3, r29, 0x278
/* 8136A1F4 | 38 80 FF FF */	li r4, -0x1
/* 8136A1F8 | 48 28 B8 D5 */	bl fn_815F5ACC
/* 8136A1FC | 38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 8136A200 | 38 80 FF FF */	li r4, -0x1
/* 8136A204 | 4B FE B2 DD */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A208 | 38 7D 01 5C */	addi r3, r29, 0x15c
/* 8136A20C | 38 80 FF FF */	li r4, -0x1
/* 8136A210 | 4B FE B2 D1 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A214 | 38 7D 00 D0 */	addi r3, r29, 0xd0
/* 8136A218 | 38 80 FF FF */	li r4, -0x1
/* 8136A21C | 4B FE B2 C5 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A220 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 8136A224 | 38 80 FF FF */	li r4, -0x1
/* 8136A228 | 4B FE B2 B9 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A22C | 38 7D 00 28 */	addi r3, r29, 0x28
/* 8136A230 | 38 80 FF FF */	li r4, -0x1
/* 8136A234 | 48 1C 02 31 */	bl fn_8152A464
/* 8136A238 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8136A23C | 38 80 FF FF */	li r4, -0x1
/* 8136A240 | 48 1B 5E 59 */	bl fn_81520098
/* 8136A244 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136A248 | 40 81 00 0C */	ble .L_8136A254
/* 8136A24C | 7F A3 EB 78 */	mr r3, r29
/* 8136A250 | 48 28 DE 95 */	bl __dl__FPv
.L_8136A254:
/* 8136A254 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A258 | 7F A3 EB 78 */	mr r3, r29
/* 8136A25C | 48 28 F2 B9 */	bl _restgpr_29
/* 8136A260 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A264 | 7C 08 03 A6 */	mtlr r0
/* 8136A268 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A26C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout6ObjectFv

# .text:0x7B4 | 0x8136A270 | size: 0xFC
# ipl::layout::Object::init_(const char*)
.fn init___Q33ipl6layout6ObjectFPCc, global
/* 8136A270 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A274 | 7C 08 02 A6 */	mflr r0
/* 8136A278 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A27C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136A280 | 7C 9F 23 78 */	mr r31, r4
/* 8136A284 | 38 80 00 24 */	li r4, 0x24
/* 8136A288 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8136A28C | 7C 7E 1B 78 */	mr r30, r3
/* 8136A290 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8136A294 | 48 1A 7D C9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8136A298 | 7F C3 F3 78 */	mr r3, r30
/* 8136A29C | 48 00 09 2D */	bl attach_font__Q33ipl6layout6ObjectFv
/* 8136A2A0 | 38 1E 02 78 */	addi r0, r30, 0x278
/* 8136A2A4 | 38 7E 00 28 */	addi r3, r30, 0x28
/* 8136A2A8 | 90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 8136A2AC | 7F E5 FB 78 */	mr r5, r31
/* 8136A2B0 | 38 80 00 00 */	li r4, 0x0
/* 8136A2B4 | 38 C0 00 00 */	li r6, 0x0
/* 8136A2B8 | 81 9E 00 28 */	lwz r12, 0x28(r30)
/* 8136A2BC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A2C0 | 7D 89 03 A6 */	mtctr r12
/* 8136A2C4 | 4E 80 04 21 */	bctrl
/* 8136A2C8 | 81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A2CC | 7C 64 1B 78 */	mr r4, r3
/* 8136A2D0 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A2D4 | 38 BE 00 28 */	addi r5, r30, 0x28
/* 8136A2D8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A2DC | 7D 89 03 A6 */	mtctr r12
/* 8136A2E0 | 4E 80 04 21 */	bctrl
/* 8136A2E4 | 4B FF 8A 05 */	bl calcOrthoCamera__Q33ipl7utility8GraphicsFv
/* 8136A2E8 | 3C 60 81 09 */	lis r3, mArg__Q33ipl7utility8Graphics@ha
/* 8136A2EC | 38 00 00 06 */	li r0, 0x6
/* 8136A2F0 | 38 63 97 C0 */	addi r3, r3, mArg__Q33ipl7utility8Graphics@l
/* 8136A2F4 | 38 BE 02 98 */	addi r5, r30, 0x298
/* 8136A2F8 | 38 83 00 3C */	addi r4, r3, 0x3c
/* 8136A2FC | 7C 09 03 A6 */	mtctr r0
.L_8136A300:
/* 8136A300 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136A304 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8136A308 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8136A30C | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8136A310 | 42 00 FF F0 */	bdnz .L_8136A300
/* 8136A314 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136A318 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 8136A31C | 48 1B 63 FD */	bl fn_81520718
/* 8136A320 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 8136A324 | 7F C3 F3 78 */	mr r3, r30
/* 8136A328 | 88 1E 02 E8 */	lbz r0, 0x2e8(r30)
/* 8136A32C | D0 1E 02 CC */	stfs f0, 0x2cc(r30)
/* 8136A330 | 60 00 00 10 */	ori r0, r0, 0x10
/* 8136A334 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8136A338 | D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
/* 8136A33C | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8136A340 | D0 1E 02 D4 */	stfs f0, 0x2d4(r30)
/* 8136A344 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8136A348 | D0 1E 02 D8 */	stfs f0, 0x2d8(r30)
/* 8136A34C | 98 1E 02 E8 */	stb r0, 0x2e8(r30)
/* 8136A350 | 48 00 09 75 */	bl initLocationAdjust__Q33ipl6layout6ObjectFv
/* 8136A354 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A358 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136A35C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8136A360 | 7C 08 03 A6 */	mtlr r0
/* 8136A364 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A368 | 4E 80 00 20 */	blr
.endfn init___Q33ipl6layout6ObjectFPCc

# .text:0x8B0 | 0x8136A36C | size: 0x10
# ipl::layout::Object::bind(const char*, bool)
.fn bind__Q33ipl6layout6ObjectFPCcb, global
/* 8136A36C | 7C A7 2B 78 */	mr r7, r5
/* 8136A370 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8136A374 | 38 C0 00 01 */	li r6, 0x1
/* 8136A378 | 48 00 00 74 */	b bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb
.endfn bind__Q33ipl6layout6ObjectFPCcb

# .text:0x8C0 | 0x8136A37C | size: 0x70
# ipl::layout::Object::bind(const char*, const char*, bool, bool)
.fn bind__Q33ipl6layout6ObjectFPCcPCcbb, global
/* 8136A37C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A380 | 7C 08 02 A6 */	mflr r0
/* 8136A384 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A388 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A38C | 48 28 F1 39 */	bl _savegpr_28
/* 8136A390 | 7C 7C 1B 78 */	mr r28, r3
/* 8136A394 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136A398 | 7C 9D 23 78 */	mr r29, r4
/* 8136A39C | 7C A4 2B 78 */	mr r4, r5
/* 8136A3A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136A3A4 | 7C DE 33 78 */	mr r30, r6
/* 8136A3A8 | 7C FF 3B 78 */	mr r31, r7
/* 8136A3AC | 38 A0 00 01 */	li r5, 0x1
/* 8136A3B0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136A3B4 | 7D 89 03 A6 */	mtctr r12
/* 8136A3B8 | 4E 80 04 21 */	bctrl
/* 8136A3BC | 7C 65 1B 78 */	mr r5, r3
/* 8136A3C0 | 7F 83 E3 78 */	mr r3, r28
/* 8136A3C4 | 7F A4 EB 78 */	mr r4, r29
/* 8136A3C8 | 7F C6 F3 78 */	mr r6, r30
/* 8136A3CC | 7F E7 FB 78 */	mr r7, r31
/* 8136A3D0 | 48 00 00 1D */	bl bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb
/* 8136A3D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A3D8 | 48 28 F1 39 */	bl _restgpr_28
/* 8136A3DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A3E0 | 7C 08 03 A6 */	mtlr r0
/* 8136A3E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A3E8 | 4E 80 00 20 */	blr
.endfn bind__Q33ipl6layout6ObjectFPCcPCcbb

# .text:0x930 | 0x8136A3EC | size: 0xF0
# ipl::layout::Object::bind_(const char*, nw4r::lyt::Pane*, bool, bool)
.fn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb, global
/* 8136A3EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A3F0 | 7C 08 02 A6 */	mflr r0
/* 8136A3F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A3F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A3FC | 48 28 F0 C1 */	bl _savegpr_26
/* 8136A400 | 81 83 00 28 */	lwz r12, 0x28(r3)
/* 8136A404 | 7C BB 2B 78 */	mr r27, r5
/* 8136A408 | 7C DC 33 78 */	mr r28, r6
/* 8136A40C | 7C 85 23 78 */	mr r5, r4
/* 8136A410 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A414 | 7C 7A 1B 78 */	mr r26, r3
/* 8136A418 | 7C FD 3B 78 */	mr r29, r7
/* 8136A41C | 38 80 00 00 */	li r4, 0x0
/* 8136A420 | 38 C0 00 00 */	li r6, 0x0
/* 8136A424 | 7D 89 03 A6 */	mtctr r12
/* 8136A428 | 38 63 00 28 */	addi r3, r3, 0x28
/* 8136A42C | 4E 80 04 21 */	bctrl
/* 8136A430 | 80 9A 02 74 */	lwz r4, 0x274(r26)
/* 8136A434 | 7C 7E 1B 78 */	mr r30, r3
/* 8136A438 | 38 60 00 34 */	li r3, 0x34
/* 8136A43C | 38 A0 00 04 */	li r5, 0x4
/* 8136A440 | 48 28 DC 71 */	bl __nw__FUlPQ23EGG4Heapi
/* 8136A444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A448 | 7C 7F 1B 78 */	mr r31, r3
/* 8136A44C | 41 82 00 3C */	beq .L_8136A488
/* 8136A450 | 81 9A 00 04 */	lwz r12, 0x4(r26)
/* 8136A454 | 38 7A 00 04 */	addi r3, r26, 0x4
/* 8136A458 | 7F C4 F3 78 */	mr r4, r30
/* 8136A45C | 38 BA 00 28 */	addi r5, r26, 0x28
/* 8136A460 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A464 | 7D 89 03 A6 */	mtctr r12
/* 8136A468 | 4E 80 04 21 */	bctrl
/* 8136A46C | 7C 64 1B 78 */	mr r4, r3
/* 8136A470 | 7F E3 FB 78 */	mr r3, r31
/* 8136A474 | 7F 65 DB 78 */	mr r5, r27
/* 8136A478 | 7F 86 E3 78 */	mr r6, r28
/* 8136A47C | 7F A7 EB 78 */	mr r7, r29
/* 8136A480 | 4B FF F7 F1 */	bl __ct__Q33ipl6layout12PaneAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt4Panebb
/* 8136A484 | 7C 7F 1B 78 */	mr r31, r3
.L_8136A488:
/* 8136A488 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A48C | 7F E3 FB 78 */	mr r3, r31
/* 8136A490 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A494 | 7D 89 03 A6 */	mtctr r12
/* 8136A498 | 4E 80 04 21 */	bctrl
/* 8136A49C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A4A0 | 7F E3 FB 78 */	mr r3, r31
/* 8136A4A4 | 7F A4 EB 78 */	mr r4, r29
/* 8136A4A8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A4AC | 7D 89 03 A6 */	mtctr r12
/* 8136A4B0 | 4E 80 04 21 */	bctrl
/* 8136A4B4 | 7F E4 FB 78 */	mr r4, r31
/* 8136A4B8 | 38 7A 02 8C */	addi r3, r26, 0x28c
/* 8136A4BC | 48 1A 7B B9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8136A4C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A4C4 | 7F E3 FB 78 */	mr r3, r31
/* 8136A4C8 | 48 28 F0 41 */	bl _restgpr_26
/* 8136A4CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A4D0 | 7C 08 03 A6 */	mtlr r0
/* 8136A4D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A4D8 | 4E 80 00 20 */	blr
.endfn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb

# .text:0xA20 | 0x8136A4DC | size: 0x4
# ipl::layout::Animator::bind()
.fn bind__Q33ipl6layout8AnimatorFv, global
/* 8136A4DC | 4E 80 00 20 */	blr
.endfn bind__Q33ipl6layout8AnimatorFv

# .text:0xA24 | 0x8136A4E0 | size: 0x60
# ipl::layout::Object::bindToGroup(const char*, const char*, bool, bool)
.fn bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb, global
/* 8136A4E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A4E4 | 7C 08 02 A6 */	mflr r0
/* 8136A4E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A4EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A4F0 | 48 28 EF D5 */	bl _savegpr_28
/* 8136A4F4 | 7C 7C 1B 78 */	mr r28, r3
/* 8136A4F8 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8136A4FC | 7C 9D 23 78 */	mr r29, r4
/* 8136A500 | 7C A4 2B 78 */	mr r4, r5
/* 8136A504 | 7C DE 33 78 */	mr r30, r6
/* 8136A508 | 7C FF 3B 78 */	mr r31, r7
/* 8136A50C | 48 1B 59 31 */	bl fn_8151FE3C
/* 8136A510 | 7C 65 1B 78 */	mr r5, r3
/* 8136A514 | 7F 83 E3 78 */	mr r3, r28
/* 8136A518 | 7F A4 EB 78 */	mr r4, r29
/* 8136A51C | 7F C6 F3 78 */	mr r6, r30
/* 8136A520 | 7F E7 FB 78 */	mr r7, r31
/* 8136A524 | 48 00 00 21 */	bl bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb
/* 8136A528 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A52C | 48 28 EF E5 */	bl _restgpr_28
/* 8136A530 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A534 | 7C 08 03 A6 */	mtlr r0
/* 8136A538 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A53C | 4E 80 00 20 */	blr
.endfn bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb

# .text:0xA84 | 0x8136A540 | size: 0x4
# ipl::layout::Object::bindToGroup(const char*, nw4r::lyt::Group*, bool, bool)
.fn bindToGroup__Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb, global
/* 8136A540 | 48 00 00 04 */	b bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb
.endfn bindToGroup__Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb

# .text:0xA88 | 0x8136A544 | size: 0xF0
# ipl::layout::Object::bind_(const char*, nw4r::lyt::Group*, bool, bool)
.fn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb, global
/* 8136A544 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A548 | 7C 08 02 A6 */	mflr r0
/* 8136A54C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A550 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A554 | 48 28 EF 69 */	bl _savegpr_26
/* 8136A558 | 81 83 00 28 */	lwz r12, 0x28(r3)
/* 8136A55C | 7C BB 2B 78 */	mr r27, r5
/* 8136A560 | 7C DC 33 78 */	mr r28, r6
/* 8136A564 | 7C 85 23 78 */	mr r5, r4
/* 8136A568 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A56C | 7C 7A 1B 78 */	mr r26, r3
/* 8136A570 | 7C FD 3B 78 */	mr r29, r7
/* 8136A574 | 38 80 00 00 */	li r4, 0x0
/* 8136A578 | 38 C0 00 00 */	li r6, 0x0
/* 8136A57C | 7D 89 03 A6 */	mtctr r12
/* 8136A580 | 38 63 00 28 */	addi r3, r3, 0x28
/* 8136A584 | 4E 80 04 21 */	bctrl
/* 8136A588 | 80 9A 02 74 */	lwz r4, 0x274(r26)
/* 8136A58C | 7C 7E 1B 78 */	mr r30, r3
/* 8136A590 | 38 60 00 34 */	li r3, 0x34
/* 8136A594 | 38 A0 00 04 */	li r5, 0x4
/* 8136A598 | 48 28 DB 19 */	bl __nw__FUlPQ23EGG4Heapi
/* 8136A59C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A5A0 | 7C 7F 1B 78 */	mr r31, r3
/* 8136A5A4 | 41 82 00 3C */	beq .L_8136A5E0
/* 8136A5A8 | 81 9A 00 04 */	lwz r12, 0x4(r26)
/* 8136A5AC | 38 7A 00 04 */	addi r3, r26, 0x4
/* 8136A5B0 | 7F C4 F3 78 */	mr r4, r30
/* 8136A5B4 | 38 BA 00 28 */	addi r5, r26, 0x28
/* 8136A5B8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A5BC | 7D 89 03 A6 */	mtctr r12
/* 8136A5C0 | 4E 80 04 21 */	bctrl
/* 8136A5C4 | 7C 64 1B 78 */	mr r4, r3
/* 8136A5C8 | 7F E3 FB 78 */	mr r3, r31
/* 8136A5CC | 7F 65 DB 78 */	mr r5, r27
/* 8136A5D0 | 7F 86 E3 78 */	mr r6, r28
/* 8136A5D4 | 7F A7 EB 78 */	mr r7, r29
/* 8136A5D8 | 4B FF F7 79 */	bl __ct__Q33ipl6layout13GroupAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt5Groupbb
/* 8136A5DC | 7C 7F 1B 78 */	mr r31, r3
.L_8136A5E0:
/* 8136A5E0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A5E4 | 7F E3 FB 78 */	mr r3, r31
/* 8136A5E8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A5EC | 7D 89 03 A6 */	mtctr r12
/* 8136A5F0 | 4E 80 04 21 */	bctrl
/* 8136A5F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A5F8 | 7F E3 FB 78 */	mr r3, r31
/* 8136A5FC | 7F A4 EB 78 */	mr r4, r29
/* 8136A600 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A604 | 7D 89 03 A6 */	mtctr r12
/* 8136A608 | 4E 80 04 21 */	bctrl
/* 8136A60C | 7F E4 FB 78 */	mr r4, r31
/* 8136A610 | 38 7A 02 8C */	addi r3, r26, 0x28c
/* 8136A614 | 48 1A 7A 61 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8136A618 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A61C | 7F E3 FB 78 */	mr r3, r31
/* 8136A620 | 48 28 EE E9 */	bl _restgpr_26
/* 8136A624 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A628 | 7C 08 03 A6 */	mtlr r0
/* 8136A62C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A630 | 4E 80 00 20 */	blr
.endfn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb

# .text:0xB78 | 0x8136A634 | size: 0x90
# ipl::layout::Object::finishBinding()
.fn finishBinding__Q33ipl6layout6ObjectFv, global
/* 8136A634 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A638 | 7C 08 02 A6 */	mflr r0
/* 8136A63C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A644 | 3B E0 00 00 */	li r31, 0x0
/* 8136A648 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A64C | 7C 7E 1B 78 */	mr r30, r3
/* 8136A650 | 48 00 00 14 */	b .L_8136A664
.L_8136A654:
/* 8136A654 | 7F E3 FB 78 */	mr r3, r31
/* 8136A658 | 4B FF 82 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8136A65C | 7F E3 FB 78 */	mr r3, r31
/* 8136A660 | 4B FF F5 B5 */	bl setFrame__Q33ipl6layout8AnimatorFv
.L_8136A664:
/* 8136A664 | 7F E4 FB 78 */	mr r4, r31
/* 8136A668 | 38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136A66C | 48 1A 7C 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A674 | 7C 7F 1B 78 */	mr r31, r3
/* 8136A678 | 40 82 FF DC */	bne .L_8136A654
/* 8136A67C | 81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A680 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A684 | 38 80 00 00 */	li r4, 0x0
/* 8136A688 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8136A68C | 7D 89 03 A6 */	mtctr r12
/* 8136A690 | 4E 80 04 21 */	bctrl
/* 8136A694 | 81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A698 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A69C | 38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A6A0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8136A6A4 | 7D 89 03 A6 */	mtctr r12
/* 8136A6A8 | 4E 80 04 21 */	bctrl
/* 8136A6AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A6B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A6B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A6B8 | 7C 08 03 A6 */	mtlr r0
/* 8136A6BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A6C0 | 4E 80 00 20 */	blr
.endfn finishBinding__Q33ipl6layout6ObjectFv

# .text:0xC08 | 0x8136A6C4 | size: 0x40
# ipl::layout::Object::searchFile(const char*)
.fn searchFile__Q33ipl6layout6ObjectFPCc, global
/* 8136A6C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A6C8 | 7C 08 02 A6 */	mflr r0
/* 8136A6CC | 7C 85 23 78 */	mr r5, r4
/* 8136A6D0 | 38 80 00 00 */	li r4, 0x0
/* 8136A6D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A6D8 | 38 C0 00 00 */	li r6, 0x0
/* 8136A6DC | 85 83 00 28 */	lwzu r12, 0x28(r3)
/* 8136A6E0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A6E4 | 7D 89 03 A6 */	mtctr r12
/* 8136A6E8 | 4E 80 04 21 */	bctrl
/* 8136A6EC | 30 03 FF FF */	subic r0, r3, 0x1
/* 8136A6F0 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8136A6F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A6F8 | 7C 08 03 A6 */	mtlr r0
/* 8136A6FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A700 | 4E 80 00 20 */	blr
.endfn searchFile__Q33ipl6layout6ObjectFPCc

# .text:0xC48 | 0x8136A704 | size: 0x98
# ipl::layout::Object::calc()
.fn calc__Q33ipl6layout6ObjectFv, global
/* 8136A704 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A708 | 7C 08 02 A6 */	mflr r0
/* 8136A70C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A710 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A714 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A718 | 7C 7E 1B 78 */	mr r30, r3
/* 8136A71C | 48 00 05 A9 */	bl initLocationAdjust__Q33ipl6layout6ObjectFv
/* 8136A720 | 3B E0 00 00 */	li r31, 0x0
/* 8136A724 | 48 00 00 18 */	b .L_8136A73C
.L_8136A728:
/* 8136A728 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A72C | 7F E3 FB 78 */	mr r3, r31
/* 8136A730 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A734 | 7D 89 03 A6 */	mtctr r12
/* 8136A738 | 4E 80 04 21 */	bctrl
.L_8136A73C:
/* 8136A73C | 7F E4 FB 78 */	mr r4, r31
/* 8136A740 | 38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136A744 | 48 1A 7B 99 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A74C | 7C 7F 1B 78 */	mr r31, r3
/* 8136A750 | 40 82 FF D8 */	bne .L_8136A728
/* 8136A754 | 81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A758 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A75C | 38 80 00 00 */	li r4, 0x0
/* 8136A760 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8136A764 | 7D 89 03 A6 */	mtctr r12
/* 8136A768 | 4E 80 04 21 */	bctrl
/* 8136A76C | 81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A770 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A774 | 38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A778 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8136A77C | 7D 89 03 A6 */	mtctr r12
/* 8136A780 | 4E 80 04 21 */	bctrl
/* 8136A784 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A788 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A78C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A790 | 7C 08 03 A6 */	mtlr r0
/* 8136A794 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A798 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl6layout6ObjectFv

# .text:0xCE0 | 0x8136A79C | size: 0x6C
# ipl::layout::Object::draw()
.fn draw__Q33ipl6layout6ObjectFv, global
/* 8136A79C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A7A0 | 7C 08 02 A6 */	mflr r0
/* 8136A7A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A7A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A7AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A7B0 | 7C 7E 1B 78 */	mr r30, r3
/* 8136A7B4 | 83 E3 00 14 */	lwz r31, 0x14(r3)
/* 8136A7B8 | 38 60 00 00 */	li r3, 0x0
/* 8136A7BC | 48 1D D0 89 */	bl GXSetZCompLoc
/* 8136A7C0 | 38 60 00 00 */	li r3, 0x0
/* 8136A7C4 | 38 80 00 07 */	li r4, 0x7
/* 8136A7C8 | 38 A0 00 00 */	li r5, 0x0
/* 8136A7CC | 48 1D D0 45 */	bl GXSetZMode
/* 8136A7D0 | 38 60 00 00 */	li r3, 0x0
/* 8136A7D4 | 48 1D A4 E9 */	bl GXSetCullMode
/* 8136A7D8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A7DC | 7F E3 FB 78 */	mr r3, r31
/* 8136A7E0 | 38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A7E4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A7E8 | 7D 89 03 A6 */	mtctr r12
/* 8136A7EC | 4E 80 04 21 */	bctrl
/* 8136A7F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A7F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A7F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A7FC | 7C 08 03 A6 */	mtlr r0
/* 8136A800 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A804 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl6layout6ObjectFv

# .text:0xD4C | 0x8136A808 | size: 0x84
# ipl::layout::Object::draw(const char*)
.fn draw__Q33ipl6layout6ObjectFPCc, global
/* 8136A808 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A80C | 7C 08 02 A6 */	mflr r0
/* 8136A810 | 38 A0 00 01 */	li r5, 0x1
/* 8136A814 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A818 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A81C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A820 | 7C 7E 1B 78 */	mr r30, r3
/* 8136A824 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136A828 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136A82C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136A830 | 7D 89 03 A6 */	mtctr r12
/* 8136A834 | 4E 80 04 21 */	bctrl
/* 8136A838 | 7C 7F 1B 78 */	mr r31, r3
/* 8136A83C | 38 60 00 00 */	li r3, 0x0
/* 8136A840 | 48 1D D0 05 */	bl GXSetZCompLoc
/* 8136A844 | 38 60 00 00 */	li r3, 0x0
/* 8136A848 | 38 80 00 07 */	li r4, 0x7
/* 8136A84C | 38 A0 00 00 */	li r5, 0x0
/* 8136A850 | 48 1D CF C1 */	bl GXSetZMode
/* 8136A854 | 38 60 00 00 */	li r3, 0x0
/* 8136A858 | 48 1D A4 65 */	bl GXSetCullMode
/* 8136A85C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A860 | 7F E3 FB 78 */	mr r3, r31
/* 8136A864 | 38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A868 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A86C | 7D 89 03 A6 */	mtctr r12
/* 8136A870 | 4E 80 04 21 */	bctrl
/* 8136A874 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A878 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A87C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A880 | 7C 08 03 A6 */	mtlr r0
/* 8136A884 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A888 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl6layout6ObjectFPCc

# .text:0xDD0 | 0x8136A88C | size: 0x6C
# ipl::layout::Object::draw(nw4r::lyt::Pane*)
.fn draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane, global
/* 8136A88C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A890 | 7C 08 02 A6 */	mflr r0
/* 8136A894 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A898 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A89C | 7C 9F 23 78 */	mr r31, r4
/* 8136A8A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A8A4 | 7C 7E 1B 78 */	mr r30, r3
/* 8136A8A8 | 38 60 00 00 */	li r3, 0x0
/* 8136A8AC | 48 1D CF 99 */	bl GXSetZCompLoc
/* 8136A8B0 | 38 60 00 00 */	li r3, 0x0
/* 8136A8B4 | 38 80 00 07 */	li r4, 0x7
/* 8136A8B8 | 38 A0 00 00 */	li r5, 0x0
/* 8136A8BC | 48 1D CF 55 */	bl GXSetZMode
/* 8136A8C0 | 38 60 00 00 */	li r3, 0x0
/* 8136A8C4 | 48 1D A3 F9 */	bl GXSetCullMode
/* 8136A8C8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A8CC | 7F E3 FB 78 */	mr r3, r31
/* 8136A8D0 | 38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A8D4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A8D8 | 7D 89 03 A6 */	mtctr r12
/* 8136A8DC | 4E 80 04 21 */	bctrl
/* 8136A8E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A8E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A8E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A8EC | 7C 08 03 A6 */	mtlr r0
/* 8136A8F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136A8F4 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane

# .text:0xE3C | 0x8136A8F8 | size: 0x88
# ipl::layout::Object::start(int)
.fn start__Q33ipl6layout6ObjectFi, global
/* 8136A8F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A8FC | 7C 08 02 A6 */	mflr r0
/* 8136A900 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A904 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A908 | 48 28 EB C1 */	bl _savegpr_29
/* 8136A90C | 2C 04 FF FF */	cmpwi r4, -0x1
/* 8136A910 | 7C 7D 1B 78 */	mr r29, r3
/* 8136A914 | 40 82 00 38 */	bne .L_8136A94C
/* 8136A918 | 3B C0 00 00 */	li r30, 0x0
/* 8136A91C | 3B E0 00 01 */	li r31, 0x1
/* 8136A920 | 48 00 00 10 */	b .L_8136A930
.L_8136A924:
/* 8136A924 | 7F C3 F3 78 */	mr r3, r30
/* 8136A928 | 4B FF 7F 49 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8136A92C | 93 FE 00 14 */	stw r31, 0x14(r30)
.L_8136A930:
/* 8136A930 | 7F C4 F3 78 */	mr r4, r30
/* 8136A934 | 38 7D 02 8C */	addi r3, r29, 0x28c
/* 8136A938 | 48 1A 79 A5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A93C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A940 | 7C 7E 1B 78 */	mr r30, r3
/* 8136A944 | 40 82 FF E0 */	bne .L_8136A924
/* 8136A948 | 48 00 00 20 */	b .L_8136A968
.L_8136A94C:
/* 8136A94C | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8136A950 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8136A954 | 48 1A 79 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136A958 | 7C 7F 1B 78 */	mr r31, r3
/* 8136A95C | 4B FF 7F 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8136A960 | 38 00 00 01 */	li r0, 0x1
/* 8136A964 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8136A968:
/* 8136A968 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136A96C | 48 28 EB A9 */	bl _restgpr_29
/* 8136A970 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A974 | 7C 08 03 A6 */	mtlr r0
/* 8136A978 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A97C | 4E 80 00 20 */	blr
.endfn start__Q33ipl6layout6ObjectFi

# .text:0xEC4 | 0x8136A980 | size: 0x70
# ipl::layout::Object::setMaxFrame(float, int)
.fn setMaxFrame__Q33ipl6layout6ObjectFfi, global
/* 8136A980 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A984 | 7C 08 02 A6 */	mflr r0
/* 8136A988 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 8136A98C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A990 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8136A994 | FF E0 08 90 */	fmr f31, f1
/* 8136A998 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8136A99C | 7C 7F 1B 78 */	mr r31, r3
/* 8136A9A0 | 40 82 00 28 */	bne .L_8136A9C8
/* 8136A9A4 | 38 80 00 00 */	li r4, 0x0
/* 8136A9A8 | 48 00 00 08 */	b .L_8136A9B0
.L_8136A9AC:
/* 8136A9AC | D3 E3 00 04 */	stfs f31, 0x4(r3)
.L_8136A9B0:
/* 8136A9B0 | 38 7F 02 8C */	addi r3, r31, 0x28c
/* 8136A9B4 | 48 1A 79 29 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A9B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A9BC | 7C 64 1B 78 */	mr r4, r3
/* 8136A9C0 | 40 82 FF EC */	bne .L_8136A9AC
/* 8136A9C4 | 48 00 00 14 */	b .L_8136A9D8
.L_8136A9C8:
/* 8136A9C8 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8136A9CC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8136A9D0 | 48 1A 79 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136A9D4 | D3 E3 00 04 */	stfs f31, 0x4(r3)
.L_8136A9D8:
/* 8136A9D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A9DC | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8136A9E0 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8136A9E4 | 7C 08 03 A6 */	mtlr r0
/* 8136A9E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136A9EC | 4E 80 00 20 */	blr
.endfn setMaxFrame__Q33ipl6layout6ObjectFfi

# .text:0xF34 | 0x8136A9F0 | size: 0x70
# ipl::layout::Object::setMinFrame(float, int)
.fn setMinFrame__Q33ipl6layout6ObjectFfi, global
/* 8136A9F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A9F4 | 7C 08 02 A6 */	mflr r0
/* 8136A9F8 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 8136A9FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136AA00 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8136AA04 | FF E0 08 90 */	fmr f31, f1
/* 8136AA08 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8136AA0C | 7C 7F 1B 78 */	mr r31, r3
/* 8136AA10 | 40 82 00 28 */	bne .L_8136AA38
/* 8136AA14 | 38 80 00 00 */	li r4, 0x0
/* 8136AA18 | 48 00 00 08 */	b .L_8136AA20
.L_8136AA1C:
/* 8136AA1C | D3 E3 00 08 */	stfs f31, 0x8(r3)
.L_8136AA20:
/* 8136AA20 | 38 7F 02 8C */	addi r3, r31, 0x28c
/* 8136AA24 | 48 1A 78 B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136AA28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AA2C | 7C 64 1B 78 */	mr r4, r3
/* 8136AA30 | 40 82 FF EC */	bne .L_8136AA1C
/* 8136AA34 | 48 00 00 14 */	b .L_8136AA48
.L_8136AA38:
/* 8136AA38 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8136AA3C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8136AA40 | 48 1A 78 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136AA44 | D3 E3 00 08 */	stfs f31, 0x8(r3)
.L_8136AA48:
/* 8136AA48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136AA4C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8136AA50 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8136AA54 | 7C 08 03 A6 */	mtlr r0
/* 8136AA58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136AA5C | 4E 80 00 20 */	blr
.endfn setMinFrame__Q33ipl6layout6ObjectFfi

# .text:0xFA4 | 0x8136AA60 | size: 0x70
# ipl::layout::Object::setAnmType(int, int)
.fn setAnmType__Q33ipl6layout6ObjectFii, global
/* 8136AA60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AA64 | 7C 08 02 A6 */	mflr r0
/* 8136AA68 | 2C 05 FF FF */	cmpwi r5, -0x1
/* 8136AA6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AA70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AA74 | 7C 9F 23 78 */	mr r31, r4
/* 8136AA78 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136AA7C | 7C 7E 1B 78 */	mr r30, r3
/* 8136AA80 | 40 82 00 28 */	bne .L_8136AAA8
/* 8136AA84 | 38 80 00 00 */	li r4, 0x0
/* 8136AA88 | 48 00 00 08 */	b .L_8136AA90
.L_8136AA8C:
/* 8136AA8C | 93 E3 00 18 */	stw r31, 0x18(r3)
.L_8136AA90:
/* 8136AA90 | 38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136AA94 | 48 1A 78 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136AA98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AA9C | 7C 64 1B 78 */	mr r4, r3
/* 8136AAA0 | 40 82 FF EC */	bne .L_8136AA8C
/* 8136AAA4 | 48 00 00 14 */	b .L_8136AAB8
.L_8136AAA8:
/* 8136AAA8 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 8136AAAC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8136AAB0 | 48 1A 78 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136AAB4 | 93 E3 00 18 */	stw r31, 0x18(r3)
.L_8136AAB8:
/* 8136AAB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AABC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AAC0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136AAC4 | 7C 08 03 A6 */	mtlr r0
/* 8136AAC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136AACC | 4E 80 00 20 */	blr
.endfn setAnmType__Q33ipl6layout6ObjectFii

# .text:0x1014 | 0x8136AAD0 | size: 0x98
# ipl::layout::Object::isPlaying(int) const
.fn isPlaying__Q33ipl6layout6ObjectCFi, global
/* 8136AAD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AAD4 | 7C 08 02 A6 */	mflr r0
/* 8136AAD8 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 8136AADC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AAE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AAE4 | 3B E0 00 00 */	li r31, 0x0
/* 8136AAE8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136AAEC | 7C 7E 1B 78 */	mr r30, r3
/* 8136AAF0 | 40 82 00 40 */	bne .L_8136AB30
/* 8136AAF4 | 38 80 00 00 */	li r4, 0x0
/* 8136AAF8 | 48 00 00 20 */	b .L_8136AB18
.L_8136AAFC:
/* 8136AAFC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136AB00 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8136AB04 | 7C 00 00 34 */	cntlzw r0, r0
/* 8136AB08 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8136AB0C | 7F E3 03 78 */	or r3, r31, r0
/* 8136AB10 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8136AB14 | 7F E0 19 10 */	subfe r31, r0, r3
.L_8136AB18:
/* 8136AB18 | 38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136AB1C | 48 1A 77 C1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136AB20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AB24 | 7C 64 1B 78 */	mr r4, r3
/* 8136AB28 | 40 82 FF D4 */	bne .L_8136AAFC
/* 8136AB2C | 48 00 00 20 */	b .L_8136AB4C
.L_8136AB30:
/* 8136AB30 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8136AB34 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8136AB38 | 48 1A 77 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136AB3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136AB40 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8136AB44 | 7C 00 00 34 */	cntlzw r0, r0
/* 8136AB48 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8136AB4C:
/* 8136AB4C | 7F E3 FB 78 */	mr r3, r31
/* 8136AB50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AB54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136AB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AB5C | 7C 08 03 A6 */	mtlr r0
/* 8136AB60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136AB64 | 4E 80 00 20 */	blr
.endfn isPlaying__Q33ipl6layout6ObjectCFi

# .text:0x10AC | 0x8136AB68 | size: 0x60
# ipl::layout::Object::attach(void*, const char*)
.fn attach__Q33ipl6layout6ObjectFPvPCc, global
/* 8136AB68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AB6C | 7C 08 02 A6 */	mflr r0
/* 8136AB70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AB74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AB78 | 7C 7F 1B 78 */	mr r31, r3
/* 8136AB7C | 80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 8136AB80 | 1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 8136AB84 | 7C 63 02 14 */	add r3, r3, r0
/* 8136AB88 | 38 63 02 F0 */	addi r3, r3, 0x2f0
/* 8136AB8C | 48 1B F7 FD */	bl fn_8152A388
/* 8136AB90 | 80 1F 02 EC */	lwz r0, 0x2ec(r31)
/* 8136AB94 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 8136AB98 | 1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 8136AB9C | 7C 9F 02 14 */	add r4, r31, r0
/* 8136ABA0 | 38 84 02 F0 */	addi r4, r4, 0x2f0
/* 8136ABA4 | 48 1B F9 51 */	bl fn_8152A4F4
/* 8136ABA8 | 80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 8136ABAC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8136ABB0 | 90 1F 02 EC */	stw r0, 0x2ec(r31)
/* 8136ABB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136ABB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136ABBC | 7C 08 03 A6 */	mtlr r0
/* 8136ABC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136ABC4 | 4E 80 00 20 */	blr
.endfn attach__Q33ipl6layout6ObjectFPvPCc

# .text:0x110C | 0x8136ABC8 | size: 0xFC
# ipl::layout::Object::attach_font()
.fn attach_font__Q33ipl6layout6ObjectFv, global
/* 8136ABC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136ABCC | 7C 08 02 A6 */	mflr r0
/* 8136ABD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136ABD4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136ABD8 | 48 28 E8 F1 */	bl _savegpr_29
/* 8136ABDC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8136ABE0 | 3F C0 81 64 */	lis r30, lbl_81642890@ha
/* 8136ABE4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8136ABE8 | 7C 7D 1B 78 */	mr r29, r3
/* 8136ABEC | 88 04 02 B6 */	lbz r0, 0x2b6(r4)
/* 8136ABF0 | 3B DE 28 90 */	addi r30, r30, lbl_81642890@l
/* 8136ABF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136ABF8 | 41 82 00 B4 */	beq .L_8136ACAC
/* 8136ABFC | 4B FC AE F9 */	bl getFont__Q23ipl6SystemFv
/* 8136AC00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AC04 | 41 82 00 18 */	beq .L_8136AC1C
/* 8136AC08 | 4B FC AE ED */	bl getFont__Q23ipl6SystemFv
/* 8136AC0C | 7C 64 1B 78 */	mr r4, r3
/* 8136AC10 | 7F A3 EB 78 */	mr r3, r29
/* 8136AC14 | 38 AD 82 80 */	li r5, lbl_816962C0@sda21
/* 8136AC18 | 4B FF FF 51 */	bl attach__Q33ipl6layout6ObjectFPvPCc
.L_8136AC1C:
/* 8136AC1C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8136AC20 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8136AC24 | 80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8136AC28 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136AC2C | 41 82 00 38 */	beq .L_8136AC64
/* 8136AC30 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 8136AC34 | 38 9E 00 00 */	addi r4, r30, 0x0
/* 8136AC38 | 48 1B F7 11 */	bl fn_8152A348
/* 8136AC3C | 38 7D 00 28 */	addi r3, r29, 0x28
/* 8136AC40 | 38 9D 00 44 */	addi r4, r29, 0x44
/* 8136AC44 | 48 1B F9 5D */	bl fn_8152A5A0
/* 8136AC48 | 80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8136AC4C | 38 7D 01 5C */	addi r3, r29, 0x15c
/* 8136AC50 | 38 9E 00 24 */	addi r4, r30, 0x24
/* 8136AC54 | 48 1B F6 F5 */	bl fn_8152A348
/* 8136AC58 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 8136AC5C | 38 9D 01 5C */	addi r4, r29, 0x15c
/* 8136AC60 | 48 1B F9 41 */	bl fn_8152A5A0
.L_8136AC64:
/* 8136AC64 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8136AC68 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8136AC6C | 80 BF 00 E4 */	lwz r5, 0xe4(r31)
/* 8136AC70 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136AC74 | 41 82 00 38 */	beq .L_8136ACAC
/* 8136AC78 | 38 7D 00 D0 */	addi r3, r29, 0xd0
/* 8136AC7C | 38 9E 00 2F */	addi r4, r30, 0x2f
/* 8136AC80 | 48 1B F6 C9 */	bl fn_8152A348
/* 8136AC84 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 8136AC88 | 38 9D 00 D0 */	addi r4, r29, 0xd0
/* 8136AC8C | 48 1B F9 15 */	bl fn_8152A5A0
/* 8136AC90 | 80 BF 00 E4 */	lwz r5, 0xe4(r31)
/* 8136AC94 | 38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 8136AC98 | 38 9E 00 58 */	addi r4, r30, 0x58
/* 8136AC9C | 48 1B F6 AD */	bl fn_8152A348
/* 8136ACA0 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 8136ACA4 | 38 9D 01 E8 */	addi r4, r29, 0x1e8
/* 8136ACA8 | 48 1B F8 F9 */	bl fn_8152A5A0
.L_8136ACAC:
/* 8136ACAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136ACB0 | 48 28 E8 65 */	bl _restgpr_29
/* 8136ACB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136ACB8 | 7C 08 03 A6 */	mtlr r0
/* 8136ACBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136ACC0 | 4E 80 00 20 */	blr
.endfn attach_font__Q33ipl6layout6ObjectFv

# .text:0x1208 | 0x8136ACC4 | size: 0x114
# ipl::layout::Object::initLocationAdjust()
.fn initLocationAdjust__Q33ipl6layout6ObjectFv, global
/* 8136ACC4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136ACC8 | 7C 08 02 A6 */	mflr r0
/* 8136ACCC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8136ACD0 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8136ACD4 | 7C 7F 1B 78 */	mr r31, r3
/* 8136ACD8 | 48 1F F2 DD */	bl SCGetAspectRatio
/* 8136ACDC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8136ACE0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8136ACE4 | 40 82 00 A0 */	bne .L_8136AD84
/* 8136ACE8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8136ACEC | 4B FC B7 3D */	bl __ct__Q34nw4r2ut4RectFv
/* 8136ACF0 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8136ACF4 | 4B FC AC 59 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136ACF8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8136ACFC | 4B FC B7 2D */	bl __ct__Q34nw4r2ut4RectFv
/* 8136AD00 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8136AD04 | 4B FC AC 6D */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136AD08 | C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8136AD0C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8136AD10 | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8136AD14 | C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8136AD18 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8136AD1C | EC 63 00 28 */	fsubs f3, f3, f0
/* 8136AD20 | C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136AD24 | EC 22 08 28 */	fsubs f1, f2, f1
/* 8136AD28 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8136AD2C | EC 01 18 24 */	fdivs f0, f1, f3
/* 8136AD30 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8136AD34 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8136AD38 | 38 63 00 44 */	addi r3, r3, 0x44
/* 8136AD3C | 48 00 00 9D */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136AD40 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8136AD44 | 38 7F 02 DC */	addi r3, r31, 0x2dc
/* 8136AD48 | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8136AD4C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8136AD50 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8136AD54 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8136AD58 | EC 63 00 28 */	fsubs f3, f3, f0
/* 8136AD5C | C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136AD60 | EC 22 08 28 */	fsubs f1, f2, f1
/* 8136AD64 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8136AD68 | EC 01 18 24 */	fdivs f0, f1, f3
/* 8136AD6C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8136AD70 | 48 00 00 69 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136AD74 | 88 1F 02 E8 */	lbz r0, 0x2e8(r31)
/* 8136AD78 | 60 00 00 20 */	ori r0, r0, 0x20
/* 8136AD7C | 98 1F 02 E8 */	stb r0, 0x2e8(r31)
/* 8136AD80 | 48 00 00 44 */	b .L_8136ADC4
.L_8136AD84:
/* 8136AD84 | C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136AD88 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8136AD8C | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8136AD90 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8136AD94 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8136AD98 | 38 63 00 44 */	addi r3, r3, 0x44
/* 8136AD9C | 48 00 00 3D */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136ADA0 | C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136ADA4 | 38 7F 02 DC */	addi r3, r31, 0x2dc
/* 8136ADA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136ADAC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8136ADB0 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8136ADB4 | 48 00 00 25 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136ADB8 | 88 1F 02 E8 */	lbz r0, 0x2e8(r31)
/* 8136ADBC | 54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 8136ADC0 | 98 1F 02 E8 */	stb r0, 0x2e8(r31)
.L_8136ADC4:
/* 8136ADC4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136ADC8 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8136ADCC | 7C 08 03 A6 */	mtlr r0
/* 8136ADD0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8136ADD4 | 4E 80 00 20 */	blr
.endfn initLocationAdjust__Q33ipl6layout6ObjectFv

# .text:0x131C | 0x8136ADD8 | size: 0x14
# nw4r::math::VEC2::operator=(const nw4r::math::VEC2&)
.fn __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2, global
/* 8136ADD8 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 8136ADDC | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 8136ADE0 | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 8136ADE4 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8136ADE8 | 4E 80 00 20 */	blr
.endfn __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2

# .text:0x1330 | 0x8136ADEC | size: 0x14
# ipl::layout::Object::adjustHeap()
.fn adjustHeap__Q33ipl6layout6ObjectFv, global
/* 8136ADEC | 80 63 02 74 */	lwz r3, 0x274(r3)
/* 8136ADF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136ADF4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8136ADF8 | 7D 89 03 A6 */	mtctr r12
/* 8136ADFC | 4E 80 04 20 */	bctr
.endfn adjustHeap__Q33ipl6layout6ObjectFv

# .text:0x1344 | 0x8136AE00 | size: 0x14
# ipl::layout::Object::destroyHeap()
.fn destroyHeap__Q33ipl6layout6ObjectFv, global
/* 8136AE00 | 80 63 02 74 */	lwz r3, 0x274(r3)
/* 8136AE04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136AE08 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136AE0C | 7D 89 03 A6 */	mtctr r12
/* 8136AE10 | 4E 80 04 20 */	bctr
.endfn destroyHeap__Q33ipl6layout6ObjectFv

# .text:0x1358 | 0x8136AE14 | size: 0x7C
# ipl::layout::Object::create(EGG::Heap*, unsigned long, ipl::nand::LayoutFile*, const char*, const char*)
.fn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc, global
/* 8136AE14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136AE18 | 7C 08 02 A6 */	mflr r0
/* 8136AE1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136AE20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136AE24 | 48 28 E6 A1 */	bl _savegpr_28
/* 8136AE28 | 7C 60 1B 78 */	mr r0, r3
/* 8136AE2C | 7C 83 23 78 */	mr r3, r4
/* 8136AE30 | 7C BC 2B 78 */	mr r28, r5
/* 8136AE34 | 7C DD 33 78 */	mr r29, r6
/* 8136AE38 | 7C FE 3B 78 */	mr r30, r7
/* 8136AE3C | 7C 04 03 78 */	mr r4, r0
/* 8136AE40 | 38 A0 00 02 */	li r5, 0x2
/* 8136AE44 | 48 28 C8 31 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 8136AE48 | 7C 7F 1B 78 */	mr r31, r3
/* 8136AE4C | 38 60 05 80 */	li r3, 0x580
/* 8136AE50 | 7F E4 FB 78 */	mr r4, r31
/* 8136AE54 | 38 A0 00 04 */	li r5, 0x4
/* 8136AE58 | 48 28 D2 59 */	bl __nw__FUlPQ23EGG4Heapi
/* 8136AE5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AE60 | 41 82 00 18 */	beq .L_8136AE78
/* 8136AE64 | 7F E4 FB 78 */	mr r4, r31
/* 8136AE68 | 7F 85 E3 78 */	mr r5, r28
/* 8136AE6C | 7F A6 EB 78 */	mr r6, r29
/* 8136AE70 | 7F C7 F3 78 */	mr r7, r30
/* 8136AE74 | 4B FF F1 B1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8136AE78:
/* 8136AE78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136AE7C | 48 28 E6 95 */	bl _restgpr_28
/* 8136AE80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136AE84 | 7C 08 03 A6 */	mtlr r0
/* 8136AE88 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136AE8C | 4E 80 00 20 */	blr
.endfn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x13D4 | 0x8136AE90 | size: 0x7C
# ipl::layout::Object::create(EGG::Heap*, unsigned long, void*, const char*, const char*)
.fn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc, global
/* 8136AE90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136AE94 | 7C 08 02 A6 */	mflr r0
/* 8136AE98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136AE9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136AEA0 | 48 28 E6 25 */	bl _savegpr_28
/* 8136AEA4 | 7C 60 1B 78 */	mr r0, r3
/* 8136AEA8 | 7C 83 23 78 */	mr r3, r4
/* 8136AEAC | 7C BC 2B 78 */	mr r28, r5
/* 8136AEB0 | 7C DD 33 78 */	mr r29, r6
/* 8136AEB4 | 7C FE 3B 78 */	mr r30, r7
/* 8136AEB8 | 7C 04 03 78 */	mr r4, r0
/* 8136AEBC | 38 A0 00 02 */	li r5, 0x2
/* 8136AEC0 | 48 28 C7 B5 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 8136AEC4 | 7C 7F 1B 78 */	mr r31, r3
/* 8136AEC8 | 38 60 05 80 */	li r3, 0x580
/* 8136AECC | 7F E4 FB 78 */	mr r4, r31
/* 8136AED0 | 38 A0 00 04 */	li r5, 0x4
/* 8136AED4 | 48 28 D1 DD */	bl __nw__FUlPQ23EGG4Heapi
/* 8136AED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AEDC | 41 82 00 18 */	beq .L_8136AEF4
/* 8136AEE0 | 7F E4 FB 78 */	mr r4, r31
/* 8136AEE4 | 7F 85 E3 78 */	mr r5, r28
/* 8136AEE8 | 7F A6 EB 78 */	mr r6, r29
/* 8136AEEC | 7F C7 F3 78 */	mr r7, r30
/* 8136AEF0 | 4B FF F0 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc
.L_8136AEF4:
/* 8136AEF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136AEF8 | 48 28 E6 19 */	bl _restgpr_28
/* 8136AEFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136AF00 | 7C 08 03 A6 */	mtlr r0
/* 8136AF04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136AF08 | 4E 80 00 20 */	blr
.endfn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc

# .text:0x1450 | 0x8136AF0C | size: 0x40
# ipl::layout::PaneAnimator::~PaneAnimator()
.fn __dt__Q33ipl6layout12PaneAnimatorFv, global
/* 8136AF0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AF10 | 7C 08 02 A6 */	mflr r0
/* 8136AF14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AF18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AF1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AF20 | 7C 7F 1B 78 */	mr r31, r3
/* 8136AF24 | 41 82 00 10 */	beq .L_8136AF34
/* 8136AF28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136AF2C | 40 81 00 08 */	ble .L_8136AF34
/* 8136AF30 | 48 28 D1 B5 */	bl __dl__FPv
.L_8136AF34:
/* 8136AF34 | 7F E3 FB 78 */	mr r3, r31
/* 8136AF38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AF3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AF40 | 7C 08 03 A6 */	mtlr r0
/* 8136AF44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136AF48 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout12PaneAnimatorFv

# .text:0x1490 | 0x8136AF4C | size: 0x40
# ipl::layout::GroupAnimator::~GroupAnimator()
.fn __dt__Q33ipl6layout13GroupAnimatorFv, global
/* 8136AF4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AF50 | 7C 08 02 A6 */	mflr r0
/* 8136AF54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AF58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AF5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AF60 | 7C 7F 1B 78 */	mr r31, r3
/* 8136AF64 | 41 82 00 10 */	beq .L_8136AF74
/* 8136AF68 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136AF6C | 40 81 00 08 */	ble .L_8136AF74
/* 8136AF70 | 48 28 D1 75 */	bl __dl__FPv
.L_8136AF74:
/* 8136AF74 | 7F E3 FB 78 */	mr r3, r31
/* 8136AF78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AF7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AF80 | 7C 08 03 A6 */	mtlr r0
/* 8136AF84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136AF88 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout13GroupAnimatorFv

# 0x81642890..0x81642948 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x81642890 | size: 0x64
.obj lbl_81642890, global
	.4byte 0x5265766F
	.4byte 0x49706C5F
	.4byte 0x526F6469
	.4byte 0x6E4E544C
	.4byte 0x4750726F
	.4byte 0x5F44425F
	.4byte 0x33325F49
	.4byte 0x342E6272
	.4byte 0x666E7400
	.4byte 0x77626631
	.4byte 0x2E627266
	.4byte 0x6E610052
	.4byte 0x65766F49
	.4byte 0x706C5F55
	.4byte 0x7472696C
	.4byte 0x6C6F5072
	.4byte 0x6F477265
	.4byte 0x636F5374
	.4byte 0x645F4D5F
	.4byte 0x33325F49
	.4byte 0x342E6272
	.4byte 0x666E7400
	.4byte 0x77626632
	.4byte 0x2E627266
	.4byte 0x6E610000
.endobj lbl_81642890

# .data:0x64 | 0x816428F4 | size: 0xC
# ipl::layout::Object::__vtable
.obj __vt__Q33ipl6layout6Object, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl6layout6ObjectFv
.endobj __vt__Q33ipl6layout6Object

# .data:0x70 | 0x81642900 | size: 0x18
# ipl::layout::GroupAnimator::__vtable
.obj __vt__Q33ipl6layout13GroupAnimator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl6layout13GroupAnimatorFv
	.4byte calc__Q33ipl6layout8AnimatorFv
	.4byte setFlag__Q33ipl6layout13GroupAnimatorFb
	.4byte bind__Q33ipl6layout13GroupAnimatorFv
.endobj __vt__Q33ipl6layout13GroupAnimator

# .data:0x88 | 0x81642918 | size: 0x18
# ipl::layout::PaneAnimator::__vtable
.obj __vt__Q33ipl6layout12PaneAnimator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl6layout12PaneAnimatorFv
	.4byte calc__Q33ipl6layout8AnimatorFv
	.4byte setFlag__Q33ipl6layout12PaneAnimatorFb
	.4byte bind__Q33ipl6layout12PaneAnimatorFv
.endobj __vt__Q33ipl6layout12PaneAnimator

# .data:0xA0 | 0x81642930 | size: 0x18
# ipl::layout::Animator::__vtable
.obj __vt__Q33ipl6layout8Animator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl6layout8AnimatorFv
	.4byte calc__Q33ipl6layout8AnimatorFv
	.4byte setFlag__Q33ipl6layout8AnimatorFb
	.4byte bind__Q33ipl6layout8AnimatorFv
.endobj __vt__Q33ipl6layout8Animator

# 0x81694688..0x81694698 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694688 | size: 0x4
.obj lbl_81694688, global
	.float 1
.endobj lbl_81694688

# .sdata2:0x4 | 0x8169468C | size: 0x4
.obj lbl_8169468C, global
	.float 0
.endobj lbl_8169468C

# .sdata2:0x8 | 0x81694690 | size: 0x8
.obj lbl_81694690, global
	.double 4503599627370496
.endobj lbl_81694690

# 0x816962C0..0x816962C8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816962C0 | size: 0x4
.obj lbl_816962C0, global
	.string "arc"
.endobj lbl_816962C0

# .sdata:0x4 | 0x816962C4 | size: 0x4
.obj gap_11_816962C4_sdata, global
.hidden gap_11_816962C4_sdata
	.4byte 0x00000000
.endobj gap_11_816962C4_sdata
