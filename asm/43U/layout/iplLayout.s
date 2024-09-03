.include "macros.inc"
.file "iplLayout.cpp"

# 0x81369ABC..0x8136AF8C | size: 0x14D0
.text
.balign 4

# .text:0x0 | 0x81369ABC | size: 0x100
# ipl::layout::Animator::Animator(nw4r::lyt::AnimTransform*, bool, bool)
.fn __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb, global
/* 81369ABC 00037EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369AC0 00037EC0  7C 08 02 A6 */	mflr r0
/* 81369AC4 00037EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 81369AC8 00037EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 81369ACC 00037ECC  48 28 F9 F9 */	bl _savegpr_28
/* 81369AD0 00037ED0  3C E0 81 64 */	lis r7, __vt__Q33ipl6layout8Animator@ha
/* 81369AD4 00037ED4  38 00 00 00 */	li r0, 0x0
/* 81369AD8 00037ED8  38 E7 29 30 */	addi r7, r7, __vt__Q33ipl6layout8Animator@l
/* 81369ADC 00037EDC  7C 9F 23 78 */	mr r31, r4
/* 81369AE0 00037EE0  90 E3 00 00 */	stw r7, 0x0(r3)
/* 81369AE4 00037EE4  7C 7C 1B 78 */	mr r28, r3
/* 81369AE8 00037EE8  7C BD 2B 78 */	mr r29, r5
/* 81369AEC 00037EEC  7C DE 33 78 */	mr r30, r6
/* 81369AF0 00037EF0  90 83 00 20 */	stw r4, 0x20(r3)
/* 81369AF4 00037EF4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 81369AF8 00037EF8  7F E3 FB 78 */	mr r3, r31
/* 81369AFC 00037EFC  48 1B FC 5D */	bl fn_81529758
/* 81369B00 00037F00  2C 03 00 00 */	cmpwi r3, 0x0
/* 81369B04 00037F04  41 82 00 30 */	beq .L_81369B34
/* 81369B08 00037F08  7F E3 FB 78 */	mr r3, r31
/* 81369B0C 00037F0C  3B E0 00 02 */	li r31, 0x2
/* 81369B10 00037F10  48 1B FC 3D */	bl fn_8152974C
/* 81369B14 00037F14  54 63 04 3E */	clrlwi r3, r3, 16
/* 81369B18 00037F18  3C 00 43 30 */	lis r0, 0x4330
/* 81369B1C 00037F1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 81369B20 00037F20  C8 22 82 90 */	lfd f1, lbl_81694690@sda21(r0)
/* 81369B24 00037F24  90 01 00 08 */	stw r0, 0x8(r1)
/* 81369B28 00037F28  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81369B2C 00037F2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 81369B30 00037F30  48 00 00 34 */	b .L_81369B64
.L_81369B34:
/* 81369B34 00037F34  7F E3 FB 78 */	mr r3, r31
/* 81369B38 00037F38  3B E0 00 00 */	li r31, 0x0
/* 81369B3C 00037F3C  48 1B FC 11 */	bl fn_8152974C
/* 81369B40 00037F40  54 63 04 3E */	clrlwi r3, r3, 16
/* 81369B44 00037F44  3C 00 43 30 */	lis r0, 0x4330
/* 81369B48 00037F48  90 61 00 0C */	stw r3, 0xc(r1)
/* 81369B4C 00037F4C  C8 42 82 90 */	lfd f2, lbl_81694690@sda21(r0)
/* 81369B50 00037F50  90 01 00 08 */	stw r0, 0x8(r1)
/* 81369B54 00037F54  C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 81369B58 00037F58  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81369B5C 00037F5C  EC 21 10 28 */	fsubs f1, f1, f2
/* 81369B60 00037F60  EC 21 00 28 */	fsubs f1, f1, f0
.L_81369B64:
/* 81369B64 00037F64  C0 42 82 8C */	lfs f2, lbl_8169468C@sda21(r0)
/* 81369B68 00037F68  7F 83 E3 78 */	mr r3, r28
/* 81369B6C 00037F6C  C0 62 82 88 */	lfs f3, lbl_81694688@sda21(r0)
/* 81369B70 00037F70  7F E4 FB 78 */	mr r4, r31
/* 81369B74 00037F74  4B FF 8C DD */	bl init__Q33ipl7utility15FrameControllerFifff
/* 81369B78 00037F78  2C 1D 00 00 */	cmpwi r29, 0x0
/* 81369B7C 00037F7C  41 82 00 10 */	beq .L_81369B8C
/* 81369B80 00037F80  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 81369B84 00037F84  60 00 00 01 */	ori r0, r0, 0x1
/* 81369B88 00037F88  90 1C 00 2C */	stw r0, 0x2c(r28)
.L_81369B8C:
/* 81369B8C 00037F8C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81369B90 00037F90  41 82 00 10 */	beq .L_81369BA0
/* 81369B94 00037F94  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 81369B98 00037F98  60 00 00 02 */	ori r0, r0, 0x2
/* 81369B9C 00037F9C  90 1C 00 2C */	stw r0, 0x2c(r28)
.L_81369BA0:
/* 81369BA0 00037FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 81369BA4 00037FA4  7F 83 E3 78 */	mr r3, r28
/* 81369BA8 00037FA8  48 28 F9 69 */	bl _restgpr_28
/* 81369BAC 00037FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369BB0 00037FB0  7C 08 03 A6 */	mtlr r0
/* 81369BB4 00037FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 81369BB8 00037FB8  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb

# .text:0x100 | 0x81369BBC | size: 0x54
# ipl::layout::Animator::calc()
.fn calc__Q33ipl6layout8AnimatorFv, global
/* 81369BBC 00037FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369BC0 00037FC0  7C 08 02 A6 */	mflr r0
/* 81369BC4 00037FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 81369BC8 00037FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369BCC 00037FCC  7C 7F 1B 78 */	mr r31, r3
/* 81369BD0 00037FD0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369BD4 00037FD4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 81369BD8 00037FD8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81369BDC 00037FDC  30 04 FF FF */	subic r0, r4, 0x1
/* 81369BE0 00037FE0  7C 80 21 10 */	subfe r4, r0, r4
/* 81369BE4 00037FE4  7D 89 03 A6 */	mtctr r12
/* 81369BE8 00037FE8  4E 80 04 21 */	bctrl
/* 81369BEC 00037FEC  7F E3 FB 78 */	mr r3, r31
/* 81369BF0 00037FF0  4B FF 8C A1 */	bl calc__Q33ipl7utility15FrameControllerFv
/* 81369BF4 00037FF4  7F E3 FB 78 */	mr r3, r31
/* 81369BF8 00037FF8  48 00 00 1D */	bl setFrame__Q33ipl6layout8AnimatorFv
/* 81369BFC 00037FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369C00 00038000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369C04 00038004  7C 08 03 A6 */	mtlr r0
/* 81369C08 00038008  38 21 00 10 */	addi r1, r1, 0x10
/* 81369C0C 0003800C  4E 80 00 20 */	blr
.endfn calc__Q33ipl6layout8AnimatorFv

# .text:0x154 | 0x81369C10 | size: 0x4
# ipl::layout::Animator::setFlag(bool)
.fn setFlag__Q33ipl6layout8AnimatorFb, global
/* 81369C10 00038010  4E 80 00 20 */	blr
.endfn setFlag__Q33ipl6layout8AnimatorFb

# .text:0x158 | 0x81369C14 | size: 0x10
# ipl::layout::Animator::setFrame()
.fn setFrame__Q33ipl6layout8AnimatorFv, global
/* 81369C14 00038014  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 81369C18 00038018  80 63 00 20 */	lwz r3, 0x20(r3)
/* 81369C1C 0003801C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 81369C20 00038020  4E 80 00 20 */	blr
.endfn setFrame__Q33ipl6layout8AnimatorFv

# .text:0x168 | 0x81369C24 | size: 0x3C
# ipl::layout::Animator::initAnmFrame()
.fn initAnmFrame__Q33ipl6layout8AnimatorFv, global
/* 81369C24 00038024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369C28 00038028  7C 08 02 A6 */	mflr r0
/* 81369C2C 0003802C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81369C30 00038030  38 00 00 02 */	li r0, 0x2
/* 81369C34 00038034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369C38 00038038  7C 7F 1B 78 */	mr r31, r3
/* 81369C3C 0003803C  90 03 00 14 */	stw r0, 0x14(r3)
/* 81369C40 00038040  4B FF 8C 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81369C44 00038044  7F E3 FB 78 */	mr r3, r31
/* 81369C48 00038048  4B FF FF CD */	bl setFrame__Q33ipl6layout8AnimatorFv
/* 81369C4C 0003804C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369C50 00038050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369C54 00038054  7C 08 03 A6 */	mtlr r0
/* 81369C58 00038058  38 21 00 10 */	addi r1, r1, 0x10
/* 81369C5C 0003805C  4E 80 00 20 */	blr
.endfn initAnmFrame__Q33ipl6layout8AnimatorFv

# .text:0x1A4 | 0x81369C60 | size: 0x10
# ipl::layout::Animator::initAnmFrame(float)
.fn initAnmFrame__Q33ipl6layout8AnimatorFf, global
/* 81369C60 00038060  38 00 00 02 */	li r0, 0x2
/* 81369C64 00038064  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81369C68 00038068  90 03 00 14 */	stw r0, 0x14(r3)
/* 81369C6C 0003806C  4B FF FF A8 */	b setFrame__Q33ipl6layout8AnimatorFv
.endfn initAnmFrame__Q33ipl6layout8AnimatorFf

# .text:0x1B4 | 0x81369C70 | size: 0x54
# ipl::layout::PaneAnimator::PaneAnimator(nw4r::lyt::AnimTransform*, nw4r::lyt::Pane*, bool, bool)
.fn __ct__Q33ipl6layout12PaneAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt4Panebb, global
/* 81369C70 00038070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369C74 00038074  7C 08 02 A6 */	mflr r0
/* 81369C78 00038078  90 01 00 14 */	stw r0, 0x14(r1)
/* 81369C7C 0003807C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369C80 00038080  7C BF 2B 78 */	mr r31, r5
/* 81369C84 00038084  7C C5 33 78 */	mr r5, r6
/* 81369C88 00038088  7C E6 3B 78 */	mr r6, r7
/* 81369C8C 0003808C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81369C90 00038090  7C 7E 1B 78 */	mr r30, r3
/* 81369C94 00038094  4B FF FE 29 */	bl __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb
/* 81369C98 00038098  3C 80 81 64 */	lis r4, __vt__Q33ipl6layout12PaneAnimator@ha
/* 81369C9C 0003809C  93 FE 00 30 */	stw r31, 0x30(r30)
/* 81369CA0 000380A0  38 84 29 18 */	addi r4, r4, __vt__Q33ipl6layout12PaneAnimator@l
/* 81369CA4 000380A4  7F C3 F3 78 */	mr r3, r30
/* 81369CA8 000380A8  90 9E 00 00 */	stw r4, 0x0(r30)
/* 81369CAC 000380AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369CB0 000380B0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81369CB4 000380B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369CB8 000380B8  7C 08 03 A6 */	mtlr r0
/* 81369CBC 000380BC  38 21 00 10 */	addi r1, r1, 0x10
/* 81369CC0 000380C0  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout12PaneAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt4Panebb

# .text:0x208 | 0x81369CC4 | size: 0x40
# ipl::layout::Animator::~Animator()
.fn __dt__Q33ipl6layout8AnimatorFv, global
/* 81369CC4 000380C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369CC8 000380C8  7C 08 02 A6 */	mflr r0
/* 81369CCC 000380CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81369CD0 000380D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81369CD4 000380D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369CD8 000380D8  7C 7F 1B 78 */	mr r31, r3
/* 81369CDC 000380DC  41 82 00 10 */	beq .L_81369CEC
/* 81369CE0 000380E0  2C 04 00 00 */	cmpwi r4, 0x0
/* 81369CE4 000380E4  40 81 00 08 */	ble .L_81369CEC
/* 81369CE8 000380E8  48 28 E3 FD */	bl __dl__FPv
.L_81369CEC:
/* 81369CEC 000380EC  7F E3 FB 78 */	mr r3, r31
/* 81369CF0 000380F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369CF4 000380F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369CF8 000380F8  7C 08 03 A6 */	mtlr r0
/* 81369CFC 000380FC  38 21 00 10 */	addi r1, r1, 0x10
/* 81369D00 00038100  4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout8AnimatorFv

# .text:0x248 | 0x81369D04 | size: 0x24
# ipl::layout::PaneAnimator::bind()
.fn bind__Q33ipl6layout12PaneAnimatorFv, global
/* 81369D04 00038104  7C 64 1B 78 */	mr r4, r3
/* 81369D08 00038108  80 63 00 30 */	lwz r3, 0x30(r3)
/* 81369D0C 0003810C  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 81369D10 00038110  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369D14 00038114  54 05 07 FE */	clrlwi r5, r0, 31
/* 81369D18 00038118  80 84 00 20 */	lwz r4, 0x20(r4)
/* 81369D1C 0003811C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81369D20 00038120  7D 89 03 A6 */	mtctr r12
/* 81369D24 00038124  4E 80 04 20 */	bctr
.endfn bind__Q33ipl6layout12PaneAnimatorFv

# .text:0x26C | 0x81369D28 | size: 0x28
# ipl::layout::PaneAnimator::setFlag(bool)
.fn setFlag__Q33ipl6layout12PaneAnimatorFb, global
/* 81369D28 00038128  7C 67 1B 78 */	mr r7, r3
/* 81369D2C 0003812C  80 63 00 30 */	lwz r3, 0x30(r3)
/* 81369D30 00038130  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 81369D34 00038134  7C 85 23 78 */	mr r5, r4
/* 81369D38 00038138  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369D3C 0003813C  54 06 07 FE */	clrlwi r6, r0, 31
/* 81369D40 00038140  80 87 00 20 */	lwz r4, 0x20(r7)
/* 81369D44 00038144  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81369D48 00038148  7D 89 03 A6 */	mtctr r12
/* 81369D4C 0003814C  4E 80 04 20 */	bctr
.endfn setFlag__Q33ipl6layout12PaneAnimatorFb

# .text:0x294 | 0x81369D50 | size: 0x54
# ipl::layout::GroupAnimator::GroupAnimator(nw4r::lyt::AnimTransform*, nw4r::lyt::Group*, bool, bool)
.fn __ct__Q33ipl6layout13GroupAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt5Groupbb, global
/* 81369D50 00038150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369D54 00038154  7C 08 02 A6 */	mflr r0
/* 81369D58 00038158  90 01 00 14 */	stw r0, 0x14(r1)
/* 81369D5C 0003815C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369D60 00038160  7C BF 2B 78 */	mr r31, r5
/* 81369D64 00038164  7C C5 33 78 */	mr r5, r6
/* 81369D68 00038168  7C E6 3B 78 */	mr r6, r7
/* 81369D6C 0003816C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81369D70 00038170  7C 7E 1B 78 */	mr r30, r3
/* 81369D74 00038174  4B FF FD 49 */	bl __ct__Q33ipl6layout8AnimatorFPQ34nw4r3lyt13AnimTransformbb
/* 81369D78 00038178  3C 80 81 64 */	lis r4, __vt__Q33ipl6layout13GroupAnimator@ha
/* 81369D7C 0003817C  93 FE 00 30 */	stw r31, 0x30(r30)
/* 81369D80 00038180  38 84 29 00 */	addi r4, r4, __vt__Q33ipl6layout13GroupAnimator@l
/* 81369D84 00038184  7F C3 F3 78 */	mr r3, r30
/* 81369D88 00038188  90 9E 00 00 */	stw r4, 0x0(r30)
/* 81369D8C 0003818C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369D90 00038190  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81369D94 00038194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369D98 00038198  7C 08 03 A6 */	mtlr r0
/* 81369D9C 0003819C  38 21 00 10 */	addi r1, r1, 0x10
/* 81369DA0 000381A0  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout13GroupAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt5Groupbb

# .text:0x2E8 | 0x81369DA4 | size: 0x90
# ipl::layout::GroupAnimator::bind()
.fn bind__Q33ipl6layout13GroupAnimatorFv, global
/* 81369DA4 000381A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369DA8 000381A8  7C 08 02 A6 */	mflr r0
/* 81369DAC 000381AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 81369DB0 000381B0  39 61 00 20 */	addi r11, r1, 0x20
/* 81369DB4 000381B4  48 28 F7 15 */	bl _savegpr_29
/* 81369DB8 000381B8  80 83 00 30 */	lwz r4, 0x30(r3)
/* 81369DBC 000381BC  7C 7D 1B 78 */	mr r29, r3
/* 81369DC0 000381C0  3B C4 00 0C */	addi r30, r4, 0xc
/* 81369DC4 000381C4  7F C3 F3 78 */	mr r3, r30
/* 81369DC8 000381C8  48 00 00 6D */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369DCC 000381CC  7C 7F 1B 78 */	mr r31, r3
/* 81369DD0 000381D0  48 00 00 28 */	b .L_81369DF8
.L_81369DD4:
/* 81369DD4 000381D4  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81369DD8 000381D8  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 81369DDC 000381DC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369DE0 000381E0  54 05 07 FE */	clrlwi r5, r0, 31
/* 81369DE4 000381E4  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 81369DE8 000381E8  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81369DEC 000381EC  7D 89 03 A6 */	mtctr r12
/* 81369DF0 000381F0  4E 80 04 21 */	bctrl
/* 81369DF4 000381F4  83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81369DF8:
/* 81369DF8 000381F8  7F C3 F3 78 */	mr r3, r30
/* 81369DFC 000381FC  48 00 00 41 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369E00 00038200  90 61 00 08 */	stw r3, 0x8(r1)
/* 81369E04 00038204  38 61 00 0C */	addi r3, r1, 0xc
/* 81369E08 00038208  38 81 00 08 */	addi r4, r1, 0x8
/* 81369E0C 0003820C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369E10 00038210  48 00 00 35 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 81369E14 00038214  2C 03 00 00 */	cmpwi r3, 0x0
/* 81369E18 00038218  40 82 FF BC */	bne .L_81369DD4
/* 81369E1C 0003821C  39 61 00 20 */	addi r11, r1, 0x20
/* 81369E20 00038220  48 28 F6 F5 */	bl _restgpr_29
/* 81369E24 00038224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369E28 00038228  7C 08 03 A6 */	mtlr r0
/* 81369E2C 0003822C  38 21 00 20 */	addi r1, r1, 0x20
/* 81369E30 00038230  4E 80 00 20 */	blr
.endfn bind__Q33ipl6layout13GroupAnimatorFv

# .text:0x378 | 0x81369E34 | size: 0x8
# nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::GetBeginIter()
.fn "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv", global
/* 81369E34 00038234  80 63 00 04 */	lwz r3, 0x4(r3)
/* 81369E38 00038238  4E 80 00 20 */	blr
.endfn "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"

# .text:0x380 | 0x81369E3C | size: 0x8
# nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::GetEndIter()
.fn "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv", global
/* 81369E3C 0003823C  38 63 00 04 */	addi r3, r3, 0x4
/* 81369E40 00038240  4E 80 00 20 */	blr
.endfn "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"

# .text:0x388 | 0x81369E44 | size: 0x18
# nw4r::ut::operator!=(nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::Iterator, nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::Iterator)
.fn "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator", global
/* 81369E44 00038244  80 84 00 00 */	lwz r4, 0x0(r4)
/* 81369E48 00038248  80 03 00 00 */	lwz r0, 0x0(r3)
/* 81369E4C 0003824C  7C 60 20 50 */	subf r3, r0, r4
/* 81369E50 00038250  30 03 FF FF */	subic r0, r3, 0x1
/* 81369E54 00038254  7C 60 19 10 */	subfe r3, r0, r3
/* 81369E58 00038258  4E 80 00 20 */	blr
.endfn "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"

# .text:0x3A0 | 0x81369E5C | size: 0x98
# ipl::layout::GroupAnimator::setFlag(bool)
.fn setFlag__Q33ipl6layout13GroupAnimatorFb, global
/* 81369E5C 0003825C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369E60 00038260  7C 08 02 A6 */	mflr r0
/* 81369E64 00038264  90 01 00 24 */	stw r0, 0x24(r1)
/* 81369E68 00038268  39 61 00 20 */	addi r11, r1, 0x20
/* 81369E6C 0003826C  48 28 F6 59 */	bl _savegpr_28
/* 81369E70 00038270  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 81369E74 00038274  7C 7C 1B 78 */	mr r28, r3
/* 81369E78 00038278  7C 9D 23 78 */	mr r29, r4
/* 81369E7C 0003827C  3B C5 00 0C */	addi r30, r5, 0xc
/* 81369E80 00038280  7F C3 F3 78 */	mr r3, r30
/* 81369E84 00038284  4B FF FF B1 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369E88 00038288  7C 7F 1B 78 */	mr r31, r3
/* 81369E8C 0003828C  48 00 00 2C */	b .L_81369EB8
.L_81369E90:
/* 81369E90 00038290  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81369E94 00038294  7F A5 EB 78 */	mr r5, r29
/* 81369E98 00038298  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 81369E9C 0003829C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369EA0 000382A0  54 06 07 FE */	clrlwi r6, r0, 31
/* 81369EA4 000382A4  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 81369EA8 000382A8  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81369EAC 000382AC  7D 89 03 A6 */	mtctr r12
/* 81369EB0 000382B0  4E 80 04 21 */	bctrl
/* 81369EB4 000382B4  83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81369EB8:
/* 81369EB8 000382B8  7F C3 F3 78 */	mr r3, r30
/* 81369EBC 000382BC  4B FF FF 81 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81369EC0 000382C0  90 61 00 08 */	stw r3, 0x8(r1)
/* 81369EC4 000382C4  38 61 00 0C */	addi r3, r1, 0xc
/* 81369EC8 000382C8  38 81 00 08 */	addi r4, r1, 0x8
/* 81369ECC 000382CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369ED0 000382D0  4B FF FF 75 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 81369ED4 000382D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 81369ED8 000382D8  40 82 FF B8 */	bne .L_81369E90
/* 81369EDC 000382DC  39 61 00 20 */	addi r11, r1, 0x20
/* 81369EE0 000382E0  48 28 F6 31 */	bl _restgpr_28
/* 81369EE4 000382E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369EE8 000382E8  7C 08 03 A6 */	mtlr r0
/* 81369EEC 000382EC  38 21 00 20 */	addi r1, r1, 0x20
/* 81369EF0 000382F0  4E 80 00 20 */	blr
.endfn setFlag__Q33ipl6layout13GroupAnimatorFb

# .text:0x438 | 0x81369EF4 | size: 0xE0
# ipl::layout::Object::Object(EGG::Heap*, void*, const char*, const char*)
.fn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc, global
/* 81369EF4 000382F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369EF8 000382F8  7C 08 02 A6 */	mflr r0
/* 81369EFC 000382FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 81369F00 00038300  39 61 00 20 */	addi r11, r1, 0x20
/* 81369F04 00038304  48 28 F5 BD */	bl _savegpr_27
/* 81369F08 00038308  3D 00 81 64 */	lis r8, __vt__Q33ipl6layout6Object@ha
/* 81369F0C 0003830C  7C 7B 1B 78 */	mr r27, r3
/* 81369F10 00038310  39 08 28 F4 */	addi r8, r8, __vt__Q33ipl6layout6Object@l
/* 81369F14 00038314  7C 9C 23 78 */	mr r28, r4
/* 81369F18 00038318  91 03 00 00 */	stw r8, 0x0(r3)
/* 81369F1C 0003831C  7C BD 2B 78 */	mr r29, r5
/* 81369F20 00038320  7C DE 33 78 */	mr r30, r6
/* 81369F24 00038324  7C FF 3B 78 */	mr r31, r7
/* 81369F28 00038328  38 63 00 04 */	addi r3, r3, 0x4
/* 81369F2C 0003832C  48 1B 61 29 */	bl fn_81520054
/* 81369F30 00038330  38 7B 00 28 */	addi r3, r27, 0x28
/* 81369F34 00038334  48 1C 04 C1 */	bl fn_8152A3F4
/* 81369F38 00038338  38 7B 00 44 */	addi r3, r27, 0x44
/* 81369F3C 0003833C  48 1C 03 F9 */	bl fn_8152A334
/* 81369F40 00038340  38 7B 00 D0 */	addi r3, r27, 0xd0
/* 81369F44 00038344  48 1C 03 F1 */	bl fn_8152A334
/* 81369F48 00038348  38 7B 01 5C */	addi r3, r27, 0x15c
/* 81369F4C 0003834C  48 1C 03 E9 */	bl fn_8152A334
/* 81369F50 00038350  38 7B 01 E8 */	addi r3, r27, 0x1e8
/* 81369F54 00038354  48 1C 03 E1 */	bl fn_8152A334
/* 81369F58 00038358  93 9B 02 74 */	stw r28, 0x274(r27)
/* 81369F5C 0003835C  7F 84 E3 78 */	mr r4, r28
/* 81369F60 00038360  38 7B 02 78 */	addi r3, r27, 0x278
/* 81369F64 00038364  38 A0 00 04 */	li r5, 0x4
/* 81369F68 00038368  48 28 BB 15 */	bl fn_815F5A7C
/* 81369F6C 0003836C  38 7B 02 98 */	addi r3, r27, 0x298
/* 81369F70 00038370  48 1B F2 39 */	bl fn_815291A8
/* 81369F74 00038374  38 00 00 00 */	li r0, 0x0
/* 81369F78 00038378  3C 80 81 37 */	lis r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 81369F7C 0003837C  3C A0 81 37 */	lis r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 81369F80 00038380  90 1B 02 EC */	stw r0, 0x2ec(r27)
/* 81369F84 00038384  38 7B 02 F0 */	addi r3, r27, 0x2f0
/* 81369F88 00038388  38 84 9F D4 */	addi r4, r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 81369F8C 0003838C  38 A5 9F E4 */	addi r5, r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 81369F90 00038390  38 C0 00 A4 */	li r6, 0xa4
/* 81369F94 00038394  38 E0 00 04 */	li r7, 0x4
/* 81369F98 00038398  48 28 F2 69 */	bl __construct_array
/* 81369F9C 0003839C  7F 63 DB 78 */	mr r3, r27
/* 81369FA0 000383A0  7F A4 EB 78 */	mr r4, r29
/* 81369FA4 000383A4  7F C5 F3 78 */	mr r5, r30
/* 81369FA8 000383A8  48 00 0B C1 */	bl attach__Q33ipl6layout6ObjectFPvPCc
/* 81369FAC 000383AC  7F 63 DB 78 */	mr r3, r27
/* 81369FB0 000383B0  7F E4 FB 78 */	mr r4, r31
/* 81369FB4 000383B4  48 00 02 BD */	bl init___Q33ipl6layout6ObjectFPCc
/* 81369FB8 000383B8  39 61 00 20 */	addi r11, r1, 0x20
/* 81369FBC 000383BC  7F 63 DB 78 */	mr r3, r27
/* 81369FC0 000383C0  48 28 F5 4D */	bl _restgpr_27
/* 81369FC4 000383C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369FC8 000383C8  7C 08 03 A6 */	mtlr r0
/* 81369FCC 000383CC  38 21 00 20 */	addi r1, r1, 0x20
/* 81369FD0 000383D0  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc

# .text:0x518 | 0x81369FD4 | size: 0x10
# nw4r::lyt::ArcResourceLink::ArcResourceLink()
.fn __ct__Q34nw4r3lyt15ArcResourceLinkFv, global
/* 81369FD4 000383D4  38 00 00 00 */	li r0, 0x0
/* 81369FD8 000383D8  90 03 00 00 */	stw r0, 0x0(r3)
/* 81369FDC 000383DC  90 03 00 04 */	stw r0, 0x4(r3)
/* 81369FE0 000383E0  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt15ArcResourceLinkFv

# .text:0x528 | 0x81369FE4 | size: 0x40
# nw4r::lyt::ArcResourceLink::~ArcResourceLink()
.fn __dt__Q34nw4r3lyt15ArcResourceLinkFv, global
/* 81369FE4 000383E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369FE8 000383E8  7C 08 02 A6 */	mflr r0
/* 81369FEC 000383EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81369FF0 000383F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81369FF4 000383F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369FF8 000383F8  7C 7F 1B 78 */	mr r31, r3
/* 81369FFC 000383FC  41 82 00 10 */	beq .L_8136A00C
/* 8136A000 00038400  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136A004 00038404  40 81 00 08 */	ble .L_8136A00C
/* 8136A008 00038408  48 28 E0 DD */	bl __dl__FPv
.L_8136A00C:
/* 8136A00C 0003840C  7F E3 FB 78 */	mr r3, r31
/* 8136A010 00038410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A014 00038414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A018 00038418  7C 08 03 A6 */	mtlr r0
/* 8136A01C 0003841C  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A020 00038420  4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3lyt15ArcResourceLinkFv

# .text:0x568 | 0x8136A024 | size: 0x128
# ipl::layout::Object::Object(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 8136A024 00038424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A028 00038428  7C 08 02 A6 */	mflr r0
/* 8136A02C 0003842C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A030 00038430  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A034 00038434  48 28 F4 8D */	bl _savegpr_27
/* 8136A038 00038438  3D 00 81 64 */	lis r8, __vt__Q33ipl6layout6Object@ha
/* 8136A03C 0003843C  7C 7B 1B 78 */	mr r27, r3
/* 8136A040 00038440  39 08 28 F4 */	addi r8, r8, __vt__Q33ipl6layout6Object@l
/* 8136A044 00038444  7C 9C 23 78 */	mr r28, r4
/* 8136A048 00038448  91 03 00 00 */	stw r8, 0x0(r3)
/* 8136A04C 0003844C  7C BD 2B 78 */	mr r29, r5
/* 8136A050 00038450  7C DE 33 78 */	mr r30, r6
/* 8136A054 00038454  7C FF 3B 78 */	mr r31, r7
/* 8136A058 00038458  38 63 00 04 */	addi r3, r3, 0x4
/* 8136A05C 0003845C  48 1B 5F F9 */	bl fn_81520054
/* 8136A060 00038460  38 7B 00 28 */	addi r3, r27, 0x28
/* 8136A064 00038464  48 1C 03 91 */	bl fn_8152A3F4
/* 8136A068 00038468  38 7B 00 44 */	addi r3, r27, 0x44
/* 8136A06C 0003846C  48 1C 02 C9 */	bl fn_8152A334
/* 8136A070 00038470  38 7B 00 D0 */	addi r3, r27, 0xd0
/* 8136A074 00038474  48 1C 02 C1 */	bl fn_8152A334
/* 8136A078 00038478  38 7B 01 5C */	addi r3, r27, 0x15c
/* 8136A07C 0003847C  48 1C 02 B9 */	bl fn_8152A334
/* 8136A080 00038480  38 7B 01 E8 */	addi r3, r27, 0x1e8
/* 8136A084 00038484  48 1C 02 B1 */	bl fn_8152A334
/* 8136A088 00038488  93 9B 02 74 */	stw r28, 0x274(r27)
/* 8136A08C 0003848C  7F 84 E3 78 */	mr r4, r28
/* 8136A090 00038490  38 7B 02 78 */	addi r3, r27, 0x278
/* 8136A094 00038494  38 A0 00 04 */	li r5, 0x4
/* 8136A098 00038498  48 28 B9 E5 */	bl fn_815F5A7C
/* 8136A09C 0003849C  38 7B 02 98 */	addi r3, r27, 0x298
/* 8136A0A0 000384A0  48 1B F1 09 */	bl fn_815291A8
/* 8136A0A4 000384A4  38 00 00 00 */	li r0, 0x0
/* 8136A0A8 000384A8  3C 80 81 37 */	lis r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 8136A0AC 000384AC  3C A0 81 37 */	lis r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 8136A0B0 000384B0  90 1B 02 EC */	stw r0, 0x2ec(r27)
/* 8136A0B4 000384B4  38 7B 02 F0 */	addi r3, r27, 0x2f0
/* 8136A0B8 000384B8  38 84 9F D4 */	addi r4, r4, __ct__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 8136A0BC 000384BC  38 A5 9F E4 */	addi r5, r5, __dt__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 8136A0C0 000384C0  38 C0 00 A4 */	li r6, 0xa4
/* 8136A0C4 000384C4  38 E0 00 04 */	li r7, 0x4
/* 8136A0C8 000384C8  48 28 F1 39 */	bl __construct_array
/* 8136A0CC 000384CC  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8136A0D0 000384D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A0D4 000384D4  41 82 00 0C */	beq .L_8136A0E0
/* 8136A0D8 000384D8  80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8136A0DC 000384DC  48 00 00 08 */	b .L_8136A0E4
.L_8136A0E0:
/* 8136A0E0 000384E0  38 80 00 00 */	li r4, 0x0
.L_8136A0E4:
/* 8136A0E4 000384E4  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136A0E8 000384E8  41 82 00 10 */	beq .L_8136A0F8
/* 8136A0EC 000384EC  7F 63 DB 78 */	mr r3, r27
/* 8136A0F0 000384F0  7F C5 F3 78 */	mr r5, r30
/* 8136A0F4 000384F4  48 00 0A 75 */	bl attach__Q33ipl6layout6ObjectFPvPCc
.L_8136A0F8:
/* 8136A0F8 000384F8  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8136A0FC 000384FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A100 00038500  41 82 00 0C */	beq .L_8136A10C
/* 8136A104 00038504  80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8136A108 00038508  48 00 00 08 */	b .L_8136A110
.L_8136A10C:
/* 8136A10C 0003850C  38 80 00 00 */	li r4, 0x0
.L_8136A110:
/* 8136A110 00038510  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136A114 00038514  41 82 00 10 */	beq .L_8136A124
/* 8136A118 00038518  7F 63 DB 78 */	mr r3, r27
/* 8136A11C 0003851C  7F C5 F3 78 */	mr r5, r30
/* 8136A120 00038520  48 00 0A 49 */	bl attach__Q33ipl6layout6ObjectFPvPCc
.L_8136A124:
/* 8136A124 00038524  7F 63 DB 78 */	mr r3, r27
/* 8136A128 00038528  7F E4 FB 78 */	mr r4, r31
/* 8136A12C 0003852C  48 00 01 45 */	bl init___Q33ipl6layout6ObjectFPCc
/* 8136A130 00038530  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A134 00038534  7F 63 DB 78 */	mr r3, r27
/* 8136A138 00038538  48 28 F3 D5 */	bl _restgpr_27
/* 8136A13C 0003853C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A140 00038540  7C 08 03 A6 */	mtlr r0
/* 8136A144 00038544  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A148 00038548  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x690 | 0x8136A14C | size: 0x124
# ipl::layout::Object::~Object()
.fn __dt__Q33ipl6layout6ObjectFv, global
/* 8136A14C 0003854C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A150 00038550  7C 08 02 A6 */	mflr r0
/* 8136A154 00038554  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A158 00038558  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A15C 0003855C  48 28 F3 6D */	bl _savegpr_29
/* 8136A160 00038560  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A164 00038564  7C 7D 1B 78 */	mr r29, r3
/* 8136A168 00038568  7C 9E 23 78 */	mr r30, r4
/* 8136A16C 0003856C  41 82 00 E8 */	beq .L_8136A254
/* 8136A170 00038570  3C 80 81 64 */	lis r4, __vt__Q33ipl6layout6Object@ha
/* 8136A174 00038574  38 84 28 F4 */	addi r4, r4, __vt__Q33ipl6layout6Object@l
/* 8136A178 00038578  90 83 00 00 */	stw r4, 0x0(r3)
/* 8136A17C 0003857C  48 00 00 30 */	b .L_8136A1AC
.L_8136A180:
/* 8136A180 00038580  7F E4 FB 78 */	mr r4, r31
/* 8136A184 00038584  38 7D 02 8C */	addi r3, r29, 0x28c
/* 8136A188 00038588  48 1A 80 E9 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8136A18C 0003858C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136A190 00038590  41 82 00 1C */	beq .L_8136A1AC
/* 8136A194 00038594  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A198 00038598  7F E3 FB 78 */	mr r3, r31
/* 8136A19C 0003859C  38 80 00 01 */	li r4, 0x1
/* 8136A1A0 000385A0  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136A1A4 000385A4  7D 89 03 A6 */	mtctr r12
/* 8136A1A8 000385A8  4E 80 04 21 */	bctrl
.L_8136A1AC:
/* 8136A1AC 000385AC  38 7D 02 8C */	addi r3, r29, 0x28c
/* 8136A1B0 000385B0  38 80 00 00 */	li r4, 0x0
/* 8136A1B4 000385B4  48 1A 81 29 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A1B8 000385B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A1BC 000385BC  7C 7F 1B 78 */	mr r31, r3
/* 8136A1C0 000385C0  40 82 FF C0 */	bne .L_8136A180
/* 8136A1C4 000385C4  38 1D 02 78 */	addi r0, r29, 0x278
/* 8136A1C8 000385C8  3C 80 81 37 */	lis r4, __dt__Q34nw4r3lyt15ArcResourceLinkFv@ha
/* 8136A1CC 000385CC  90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 8136A1D0 000385D0  38 7D 02 F0 */	addi r3, r29, 0x2f0
/* 8136A1D4 000385D4  38 84 9F E4 */	addi r4, r4, __dt__Q34nw4r3lyt15ArcResourceLinkFv@l
/* 8136A1D8 000385D8  38 A0 00 A4 */	li r5, 0xa4
/* 8136A1DC 000385DC  38 C0 00 04 */	li r6, 0x4
/* 8136A1E0 000385E0  48 28 F1 19 */	bl __destroy_arr
/* 8136A1E4 000385E4  38 7D 02 98 */	addi r3, r29, 0x298
/* 8136A1E8 000385E8  38 80 FF FF */	li r4, -0x1
/* 8136A1EC 000385EC  48 1B F0 31 */	bl fn_8152921C
/* 8136A1F0 000385F0  38 7D 02 78 */	addi r3, r29, 0x278
/* 8136A1F4 000385F4  38 80 FF FF */	li r4, -0x1
/* 8136A1F8 000385F8  48 28 B8 D5 */	bl fn_815F5ACC
/* 8136A1FC 000385FC  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 8136A200 00038600  38 80 FF FF */	li r4, -0x1
/* 8136A204 00038604  4B FE B2 DD */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A208 00038608  38 7D 01 5C */	addi r3, r29, 0x15c
/* 8136A20C 0003860C  38 80 FF FF */	li r4, -0x1
/* 8136A210 00038610  4B FE B2 D1 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A214 00038614  38 7D 00 D0 */	addi r3, r29, 0xd0
/* 8136A218 00038618  38 80 FF FF */	li r4, -0x1
/* 8136A21C 0003861C  4B FE B2 C5 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A220 00038620  38 7D 00 44 */	addi r3, r29, 0x44
/* 8136A224 00038624  38 80 FF FF */	li r4, -0x1
/* 8136A228 00038628  4B FE B2 B9 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8136A22C 0003862C  38 7D 00 28 */	addi r3, r29, 0x28
/* 8136A230 00038630  38 80 FF FF */	li r4, -0x1
/* 8136A234 00038634  48 1C 02 31 */	bl fn_8152A464
/* 8136A238 00038638  38 7D 00 04 */	addi r3, r29, 0x4
/* 8136A23C 0003863C  38 80 FF FF */	li r4, -0x1
/* 8136A240 00038640  48 1B 5E 59 */	bl fn_81520098
/* 8136A244 00038644  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136A248 00038648  40 81 00 0C */	ble .L_8136A254
/* 8136A24C 0003864C  7F A3 EB 78 */	mr r3, r29
/* 8136A250 00038650  48 28 DE 95 */	bl __dl__FPv
.L_8136A254:
/* 8136A254 00038654  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A258 00038658  7F A3 EB 78 */	mr r3, r29
/* 8136A25C 0003865C  48 28 F2 B9 */	bl _restgpr_29
/* 8136A260 00038660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A264 00038664  7C 08 03 A6 */	mtlr r0
/* 8136A268 00038668  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A26C 0003866C  4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout6ObjectFv

# .text:0x7B4 | 0x8136A270 | size: 0xFC
# ipl::layout::Object::init_(const char*)
.fn init___Q33ipl6layout6ObjectFPCc, global
/* 8136A270 00038670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A274 00038674  7C 08 02 A6 */	mflr r0
/* 8136A278 00038678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A27C 0003867C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136A280 00038680  7C 9F 23 78 */	mr r31, r4
/* 8136A284 00038684  38 80 00 24 */	li r4, 0x24
/* 8136A288 00038688  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8136A28C 0003868C  7C 7E 1B 78 */	mr r30, r3
/* 8136A290 00038690  38 63 02 8C */	addi r3, r3, 0x28c
/* 8136A294 00038694  48 1A 7D C9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8136A298 00038698  7F C3 F3 78 */	mr r3, r30
/* 8136A29C 0003869C  48 00 09 2D */	bl attach_font__Q33ipl6layout6ObjectFv
/* 8136A2A0 000386A0  38 1E 02 78 */	addi r0, r30, 0x278
/* 8136A2A4 000386A4  38 7E 00 28 */	addi r3, r30, 0x28
/* 8136A2A8 000386A8  90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 8136A2AC 000386AC  7F E5 FB 78 */	mr r5, r31
/* 8136A2B0 000386B0  38 80 00 00 */	li r4, 0x0
/* 8136A2B4 000386B4  38 C0 00 00 */	li r6, 0x0
/* 8136A2B8 000386B8  81 9E 00 28 */	lwz r12, 0x28(r30)
/* 8136A2BC 000386BC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A2C0 000386C0  7D 89 03 A6 */	mtctr r12
/* 8136A2C4 000386C4  4E 80 04 21 */	bctrl
/* 8136A2C8 000386C8  81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A2CC 000386CC  7C 64 1B 78 */	mr r4, r3
/* 8136A2D0 000386D0  38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A2D4 000386D4  38 BE 00 28 */	addi r5, r30, 0x28
/* 8136A2D8 000386D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A2DC 000386DC  7D 89 03 A6 */	mtctr r12
/* 8136A2E0 000386E0  4E 80 04 21 */	bctrl
/* 8136A2E4 000386E4  4B FF 8A 05 */	bl calcOrthoCamera__Q33ipl7utility8GraphicsFv
/* 8136A2E8 000386E8  3C 60 81 09 */	lis r3, mArg__Q33ipl7utility8Graphics@ha
/* 8136A2EC 000386EC  38 00 00 06 */	li r0, 0x6
/* 8136A2F0 000386F0  38 63 97 C0 */	addi r3, r3, mArg__Q33ipl7utility8Graphics@l
/* 8136A2F4 000386F4  38 BE 02 98 */	addi r5, r30, 0x298
/* 8136A2F8 000386F8  38 83 00 3C */	addi r4, r3, 0x3c
/* 8136A2FC 000386FC  7C 09 03 A6 */	mtctr r0
.L_8136A300:
/* 8136A300 00038700  80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136A304 00038704  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8136A308 00038708  90 65 00 04 */	stw r3, 0x4(r5)
/* 8136A30C 0003870C  94 05 00 08 */	stwu r0, 0x8(r5)
/* 8136A310 00038710  42 00 FF F0 */	bdnz .L_8136A300
/* 8136A314 00038714  38 61 00 08 */	addi r3, r1, 0x8
/* 8136A318 00038718  38 9E 00 04 */	addi r4, r30, 0x4
/* 8136A31C 0003871C  48 1B 63 FD */	bl fn_81520718
/* 8136A320 00038720  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 8136A324 00038724  7F C3 F3 78 */	mr r3, r30
/* 8136A328 00038728  88 1E 02 E8 */	lbz r0, 0x2e8(r30)
/* 8136A32C 0003872C  D0 1E 02 CC */	stfs f0, 0x2cc(r30)
/* 8136A330 00038730  60 00 00 10 */	ori r0, r0, 0x10
/* 8136A334 00038734  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8136A338 00038738  D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
/* 8136A33C 0003873C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8136A340 00038740  D0 1E 02 D4 */	stfs f0, 0x2d4(r30)
/* 8136A344 00038744  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8136A348 00038748  D0 1E 02 D8 */	stfs f0, 0x2d8(r30)
/* 8136A34C 0003874C  98 1E 02 E8 */	stb r0, 0x2e8(r30)
/* 8136A350 00038750  48 00 09 75 */	bl initLocationAdjust__Q33ipl6layout6ObjectFv
/* 8136A354 00038754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A358 00038758  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136A35C 0003875C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8136A360 00038760  7C 08 03 A6 */	mtlr r0
/* 8136A364 00038764  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A368 00038768  4E 80 00 20 */	blr
.endfn init___Q33ipl6layout6ObjectFPCc

# .text:0x8B0 | 0x8136A36C | size: 0x10
# ipl::layout::Object::bind(const char*, bool)
.fn bind__Q33ipl6layout6ObjectFPCcb, global
/* 8136A36C 0003876C  7C A7 2B 78 */	mr r7, r5
/* 8136A370 00038770  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8136A374 00038774  38 C0 00 01 */	li r6, 0x1
/* 8136A378 00038778  48 00 00 74 */	b bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb
.endfn bind__Q33ipl6layout6ObjectFPCcb

# .text:0x8C0 | 0x8136A37C | size: 0x70
# ipl::layout::Object::bind(const char*, const char*, bool, bool)
.fn bind__Q33ipl6layout6ObjectFPCcPCcbb, global
/* 8136A37C 0003877C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A380 00038780  7C 08 02 A6 */	mflr r0
/* 8136A384 00038784  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A388 00038788  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A38C 0003878C  48 28 F1 39 */	bl _savegpr_28
/* 8136A390 00038790  7C 7C 1B 78 */	mr r28, r3
/* 8136A394 00038794  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136A398 00038798  7C 9D 23 78 */	mr r29, r4
/* 8136A39C 0003879C  7C A4 2B 78 */	mr r4, r5
/* 8136A3A0 000387A0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136A3A4 000387A4  7C DE 33 78 */	mr r30, r6
/* 8136A3A8 000387A8  7C FF 3B 78 */	mr r31, r7
/* 8136A3AC 000387AC  38 A0 00 01 */	li r5, 0x1
/* 8136A3B0 000387B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136A3B4 000387B4  7D 89 03 A6 */	mtctr r12
/* 8136A3B8 000387B8  4E 80 04 21 */	bctrl
/* 8136A3BC 000387BC  7C 65 1B 78 */	mr r5, r3
/* 8136A3C0 000387C0  7F 83 E3 78 */	mr r3, r28
/* 8136A3C4 000387C4  7F A4 EB 78 */	mr r4, r29
/* 8136A3C8 000387C8  7F C6 F3 78 */	mr r6, r30
/* 8136A3CC 000387CC  7F E7 FB 78 */	mr r7, r31
/* 8136A3D0 000387D0  48 00 00 1D */	bl bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb
/* 8136A3D4 000387D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A3D8 000387D8  48 28 F1 39 */	bl _restgpr_28
/* 8136A3DC 000387DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A3E0 000387E0  7C 08 03 A6 */	mtlr r0
/* 8136A3E4 000387E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A3E8 000387E8  4E 80 00 20 */	blr
.endfn bind__Q33ipl6layout6ObjectFPCcPCcbb

# .text:0x930 | 0x8136A3EC | size: 0xF0
# ipl::layout::Object::bind_(const char*, nw4r::lyt::Pane*, bool, bool)
.fn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb, global
/* 8136A3EC 000387EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A3F0 000387F0  7C 08 02 A6 */	mflr r0
/* 8136A3F4 000387F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A3F8 000387F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A3FC 000387FC  48 28 F0 C1 */	bl _savegpr_26
/* 8136A400 00038800  81 83 00 28 */	lwz r12, 0x28(r3)
/* 8136A404 00038804  7C BB 2B 78 */	mr r27, r5
/* 8136A408 00038808  7C DC 33 78 */	mr r28, r6
/* 8136A40C 0003880C  7C 85 23 78 */	mr r5, r4
/* 8136A410 00038810  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A414 00038814  7C 7A 1B 78 */	mr r26, r3
/* 8136A418 00038818  7C FD 3B 78 */	mr r29, r7
/* 8136A41C 0003881C  38 80 00 00 */	li r4, 0x0
/* 8136A420 00038820  38 C0 00 00 */	li r6, 0x0
/* 8136A424 00038824  7D 89 03 A6 */	mtctr r12
/* 8136A428 00038828  38 63 00 28 */	addi r3, r3, 0x28
/* 8136A42C 0003882C  4E 80 04 21 */	bctrl
/* 8136A430 00038830  80 9A 02 74 */	lwz r4, 0x274(r26)
/* 8136A434 00038834  7C 7E 1B 78 */	mr r30, r3
/* 8136A438 00038838  38 60 00 34 */	li r3, 0x34
/* 8136A43C 0003883C  38 A0 00 04 */	li r5, 0x4
/* 8136A440 00038840  48 28 DC 71 */	bl __nw__FUlPQ23EGG4Heapi
/* 8136A444 00038844  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A448 00038848  7C 7F 1B 78 */	mr r31, r3
/* 8136A44C 0003884C  41 82 00 3C */	beq .L_8136A488
/* 8136A450 00038850  81 9A 00 04 */	lwz r12, 0x4(r26)
/* 8136A454 00038854  38 7A 00 04 */	addi r3, r26, 0x4
/* 8136A458 00038858  7F C4 F3 78 */	mr r4, r30
/* 8136A45C 0003885C  38 BA 00 28 */	addi r5, r26, 0x28
/* 8136A460 00038860  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A464 00038864  7D 89 03 A6 */	mtctr r12
/* 8136A468 00038868  4E 80 04 21 */	bctrl
/* 8136A46C 0003886C  7C 64 1B 78 */	mr r4, r3
/* 8136A470 00038870  7F E3 FB 78 */	mr r3, r31
/* 8136A474 00038874  7F 65 DB 78 */	mr r5, r27
/* 8136A478 00038878  7F 86 E3 78 */	mr r6, r28
/* 8136A47C 0003887C  7F A7 EB 78 */	mr r7, r29
/* 8136A480 00038880  4B FF F7 F1 */	bl __ct__Q33ipl6layout12PaneAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt4Panebb
/* 8136A484 00038884  7C 7F 1B 78 */	mr r31, r3
.L_8136A488:
/* 8136A488 00038888  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A48C 0003888C  7F E3 FB 78 */	mr r3, r31
/* 8136A490 00038890  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A494 00038894  7D 89 03 A6 */	mtctr r12
/* 8136A498 00038898  4E 80 04 21 */	bctrl
/* 8136A49C 0003889C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A4A0 000388A0  7F E3 FB 78 */	mr r3, r31
/* 8136A4A4 000388A4  7F A4 EB 78 */	mr r4, r29
/* 8136A4A8 000388A8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A4AC 000388AC  7D 89 03 A6 */	mtctr r12
/* 8136A4B0 000388B0  4E 80 04 21 */	bctrl
/* 8136A4B4 000388B4  7F E4 FB 78 */	mr r4, r31
/* 8136A4B8 000388B8  38 7A 02 8C */	addi r3, r26, 0x28c
/* 8136A4BC 000388BC  48 1A 7B B9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8136A4C0 000388C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A4C4 000388C4  7F E3 FB 78 */	mr r3, r31
/* 8136A4C8 000388C8  48 28 F0 41 */	bl _restgpr_26
/* 8136A4CC 000388CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A4D0 000388D0  7C 08 03 A6 */	mtlr r0
/* 8136A4D4 000388D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A4D8 000388D8  4E 80 00 20 */	blr
.endfn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt4Panebb

# .text:0xA20 | 0x8136A4DC | size: 0x4
# ipl::layout::Animator::bind()
.fn bind__Q33ipl6layout8AnimatorFv, global
/* 8136A4DC 000388DC  4E 80 00 20 */	blr
.endfn bind__Q33ipl6layout8AnimatorFv

# .text:0xA24 | 0x8136A4E0 | size: 0x60
# ipl::layout::Object::bindToGroup(const char*, const char*, bool, bool)
.fn bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb, global
/* 8136A4E0 000388E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A4E4 000388E4  7C 08 02 A6 */	mflr r0
/* 8136A4E8 000388E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A4EC 000388EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A4F0 000388F0  48 28 EF D5 */	bl _savegpr_28
/* 8136A4F4 000388F4  7C 7C 1B 78 */	mr r28, r3
/* 8136A4F8 000388F8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8136A4FC 000388FC  7C 9D 23 78 */	mr r29, r4
/* 8136A500 00038900  7C A4 2B 78 */	mr r4, r5
/* 8136A504 00038904  7C DE 33 78 */	mr r30, r6
/* 8136A508 00038908  7C FF 3B 78 */	mr r31, r7
/* 8136A50C 0003890C  48 1B 59 31 */	bl fn_8151FE3C
/* 8136A510 00038910  7C 65 1B 78 */	mr r5, r3
/* 8136A514 00038914  7F 83 E3 78 */	mr r3, r28
/* 8136A518 00038918  7F A4 EB 78 */	mr r4, r29
/* 8136A51C 0003891C  7F C6 F3 78 */	mr r6, r30
/* 8136A520 00038920  7F E7 FB 78 */	mr r7, r31
/* 8136A524 00038924  48 00 00 21 */	bl bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb
/* 8136A528 00038928  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A52C 0003892C  48 28 EF E5 */	bl _restgpr_28
/* 8136A530 00038930  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A534 00038934  7C 08 03 A6 */	mtlr r0
/* 8136A538 00038938  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A53C 0003893C  4E 80 00 20 */	blr
.endfn bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb

# .text:0xA84 | 0x8136A540 | size: 0x4
# ipl::layout::Object::bindToGroup(const char*, nw4r::lyt::Group*, bool, bool)
.fn bindToGroup__Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb, global
/* 8136A540 00038940  48 00 00 04 */	b bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb
.endfn bindToGroup__Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb

# .text:0xA88 | 0x8136A544 | size: 0xF0
# ipl::layout::Object::bind_(const char*, nw4r::lyt::Group*, bool, bool)
.fn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb, global
/* 8136A544 00038944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A548 00038948  7C 08 02 A6 */	mflr r0
/* 8136A54C 0003894C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A550 00038950  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A554 00038954  48 28 EF 69 */	bl _savegpr_26
/* 8136A558 00038958  81 83 00 28 */	lwz r12, 0x28(r3)
/* 8136A55C 0003895C  7C BB 2B 78 */	mr r27, r5
/* 8136A560 00038960  7C DC 33 78 */	mr r28, r6
/* 8136A564 00038964  7C 85 23 78 */	mr r5, r4
/* 8136A568 00038968  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A56C 0003896C  7C 7A 1B 78 */	mr r26, r3
/* 8136A570 00038970  7C FD 3B 78 */	mr r29, r7
/* 8136A574 00038974  38 80 00 00 */	li r4, 0x0
/* 8136A578 00038978  38 C0 00 00 */	li r6, 0x0
/* 8136A57C 0003897C  7D 89 03 A6 */	mtctr r12
/* 8136A580 00038980  38 63 00 28 */	addi r3, r3, 0x28
/* 8136A584 00038984  4E 80 04 21 */	bctrl
/* 8136A588 00038988  80 9A 02 74 */	lwz r4, 0x274(r26)
/* 8136A58C 0003898C  7C 7E 1B 78 */	mr r30, r3
/* 8136A590 00038990  38 60 00 34 */	li r3, 0x34
/* 8136A594 00038994  38 A0 00 04 */	li r5, 0x4
/* 8136A598 00038998  48 28 DB 19 */	bl __nw__FUlPQ23EGG4Heapi
/* 8136A59C 0003899C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A5A0 000389A0  7C 7F 1B 78 */	mr r31, r3
/* 8136A5A4 000389A4  41 82 00 3C */	beq .L_8136A5E0
/* 8136A5A8 000389A8  81 9A 00 04 */	lwz r12, 0x4(r26)
/* 8136A5AC 000389AC  38 7A 00 04 */	addi r3, r26, 0x4
/* 8136A5B0 000389B0  7F C4 F3 78 */	mr r4, r30
/* 8136A5B4 000389B4  38 BA 00 28 */	addi r5, r26, 0x28
/* 8136A5B8 000389B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A5BC 000389BC  7D 89 03 A6 */	mtctr r12
/* 8136A5C0 000389C0  4E 80 04 21 */	bctrl
/* 8136A5C4 000389C4  7C 64 1B 78 */	mr r4, r3
/* 8136A5C8 000389C8  7F E3 FB 78 */	mr r3, r31
/* 8136A5CC 000389CC  7F 65 DB 78 */	mr r5, r27
/* 8136A5D0 000389D0  7F 86 E3 78 */	mr r6, r28
/* 8136A5D4 000389D4  7F A7 EB 78 */	mr r7, r29
/* 8136A5D8 000389D8  4B FF F7 79 */	bl __ct__Q33ipl6layout13GroupAnimatorFPQ34nw4r3lyt13AnimTransformPQ34nw4r3lyt5Groupbb
/* 8136A5DC 000389DC  7C 7F 1B 78 */	mr r31, r3
.L_8136A5E0:
/* 8136A5E0 000389E0  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A5E4 000389E4  7F E3 FB 78 */	mr r3, r31
/* 8136A5E8 000389E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A5EC 000389EC  7D 89 03 A6 */	mtctr r12
/* 8136A5F0 000389F0  4E 80 04 21 */	bctrl
/* 8136A5F4 000389F4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A5F8 000389F8  7F E3 FB 78 */	mr r3, r31
/* 8136A5FC 000389FC  7F A4 EB 78 */	mr r4, r29
/* 8136A600 00038A00  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8136A604 00038A04  7D 89 03 A6 */	mtctr r12
/* 8136A608 00038A08  4E 80 04 21 */	bctrl
/* 8136A60C 00038A0C  7F E4 FB 78 */	mr r4, r31
/* 8136A610 00038A10  38 7A 02 8C */	addi r3, r26, 0x28c
/* 8136A614 00038A14  48 1A 7A 61 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8136A618 00038A18  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A61C 00038A1C  7F E3 FB 78 */	mr r3, r31
/* 8136A620 00038A20  48 28 EE E9 */	bl _restgpr_26
/* 8136A624 00038A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A628 00038A28  7C 08 03 A6 */	mtlr r0
/* 8136A62C 00038A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A630 00038A30  4E 80 00 20 */	blr
.endfn bind___Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb

# .text:0xB78 | 0x8136A634 | size: 0x90
# ipl::layout::Object::finishBinding()
.fn finishBinding__Q33ipl6layout6ObjectFv, global
/* 8136A634 00038A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A638 00038A38  7C 08 02 A6 */	mflr r0
/* 8136A63C 00038A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A640 00038A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A644 00038A44  3B E0 00 00 */	li r31, 0x0
/* 8136A648 00038A48  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A64C 00038A4C  7C 7E 1B 78 */	mr r30, r3
/* 8136A650 00038A50  48 00 00 14 */	b .L_8136A664
.L_8136A654:
/* 8136A654 00038A54  7F E3 FB 78 */	mr r3, r31
/* 8136A658 00038A58  4B FF 82 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8136A65C 00038A5C  7F E3 FB 78 */	mr r3, r31
/* 8136A660 00038A60  4B FF F5 B5 */	bl setFrame__Q33ipl6layout8AnimatorFv
.L_8136A664:
/* 8136A664 00038A64  7F E4 FB 78 */	mr r4, r31
/* 8136A668 00038A68  38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136A66C 00038A6C  48 1A 7C 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A670 00038A70  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A674 00038A74  7C 7F 1B 78 */	mr r31, r3
/* 8136A678 00038A78  40 82 FF DC */	bne .L_8136A654
/* 8136A67C 00038A7C  81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A680 00038A80  38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A684 00038A84  38 80 00 00 */	li r4, 0x0
/* 8136A688 00038A88  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8136A68C 00038A8C  7D 89 03 A6 */	mtctr r12
/* 8136A690 00038A90  4E 80 04 21 */	bctrl
/* 8136A694 00038A94  81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A698 00038A98  38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A69C 00038A9C  38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A6A0 00038AA0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8136A6A4 00038AA4  7D 89 03 A6 */	mtctr r12
/* 8136A6A8 00038AA8  4E 80 04 21 */	bctrl
/* 8136A6AC 00038AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A6B0 00038AB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A6B4 00038AB4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A6B8 00038AB8  7C 08 03 A6 */	mtlr r0
/* 8136A6BC 00038ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A6C0 00038AC0  4E 80 00 20 */	blr
.endfn finishBinding__Q33ipl6layout6ObjectFv

# .text:0xC08 | 0x8136A6C4 | size: 0x40
# ipl::layout::Object::searchFile(const char*)
.fn searchFile__Q33ipl6layout6ObjectFPCc, global
/* 8136A6C4 00038AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A6C8 00038AC8  7C 08 02 A6 */	mflr r0
/* 8136A6CC 00038ACC  7C 85 23 78 */	mr r5, r4
/* 8136A6D0 00038AD0  38 80 00 00 */	li r4, 0x0
/* 8136A6D4 00038AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A6D8 00038AD8  38 C0 00 00 */	li r6, 0x0
/* 8136A6DC 00038ADC  85 83 00 28 */	lwzu r12, 0x28(r3)
/* 8136A6E0 00038AE0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A6E4 00038AE4  7D 89 03 A6 */	mtctr r12
/* 8136A6E8 00038AE8  4E 80 04 21 */	bctrl
/* 8136A6EC 00038AEC  30 03 FF FF */	subic r0, r3, 0x1
/* 8136A6F0 00038AF0  7C 60 19 10 */	subfe r3, r0, r3
/* 8136A6F4 00038AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A6F8 00038AF8  7C 08 03 A6 */	mtlr r0
/* 8136A6FC 00038AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A700 00038B00  4E 80 00 20 */	blr
.endfn searchFile__Q33ipl6layout6ObjectFPCc

# .text:0xC48 | 0x8136A704 | size: 0x98
# ipl::layout::Object::calc()
.fn calc__Q33ipl6layout6ObjectFv, global
/* 8136A704 00038B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A708 00038B08  7C 08 02 A6 */	mflr r0
/* 8136A70C 00038B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A710 00038B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A714 00038B14  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A718 00038B18  7C 7E 1B 78 */	mr r30, r3
/* 8136A71C 00038B1C  48 00 05 A9 */	bl initLocationAdjust__Q33ipl6layout6ObjectFv
/* 8136A720 00038B20  3B E0 00 00 */	li r31, 0x0
/* 8136A724 00038B24  48 00 00 18 */	b .L_8136A73C
.L_8136A728:
/* 8136A728 00038B28  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A72C 00038B2C  7F E3 FB 78 */	mr r3, r31
/* 8136A730 00038B30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136A734 00038B34  7D 89 03 A6 */	mtctr r12
/* 8136A738 00038B38  4E 80 04 21 */	bctrl
.L_8136A73C:
/* 8136A73C 00038B3C  7F E4 FB 78 */	mr r4, r31
/* 8136A740 00038B40  38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136A744 00038B44  48 1A 7B 99 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A748 00038B48  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A74C 00038B4C  7C 7F 1B 78 */	mr r31, r3
/* 8136A750 00038B50  40 82 FF D8 */	bne .L_8136A728
/* 8136A754 00038B54  81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A758 00038B58  38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A75C 00038B5C  38 80 00 00 */	li r4, 0x0
/* 8136A760 00038B60  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8136A764 00038B64  7D 89 03 A6 */	mtctr r12
/* 8136A768 00038B68  4E 80 04 21 */	bctrl
/* 8136A76C 00038B6C  81 9E 00 04 */	lwz r12, 0x4(r30)
/* 8136A770 00038B70  38 7E 00 04 */	addi r3, r30, 0x4
/* 8136A774 00038B74  38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A778 00038B78  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8136A77C 00038B7C  7D 89 03 A6 */	mtctr r12
/* 8136A780 00038B80  4E 80 04 21 */	bctrl
/* 8136A784 00038B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A788 00038B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A78C 00038B8C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A790 00038B90  7C 08 03 A6 */	mtlr r0
/* 8136A794 00038B94  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A798 00038B98  4E 80 00 20 */	blr
.endfn calc__Q33ipl6layout6ObjectFv

# .text:0xCE0 | 0x8136A79C | size: 0x6C
# ipl::layout::Object::draw()
.fn draw__Q33ipl6layout6ObjectFv, global
/* 8136A79C 00038B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A7A0 00038BA0  7C 08 02 A6 */	mflr r0
/* 8136A7A4 00038BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A7A8 00038BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A7AC 00038BAC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A7B0 00038BB0  7C 7E 1B 78 */	mr r30, r3
/* 8136A7B4 00038BB4  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 8136A7B8 00038BB8  38 60 00 00 */	li r3, 0x0
/* 8136A7BC 00038BBC  48 1D D0 89 */	bl GXSetZCompLoc
/* 8136A7C0 00038BC0  38 60 00 00 */	li r3, 0x0
/* 8136A7C4 00038BC4  38 80 00 07 */	li r4, 0x7
/* 8136A7C8 00038BC8  38 A0 00 00 */	li r5, 0x0
/* 8136A7CC 00038BCC  48 1D D0 45 */	bl GXSetZMode
/* 8136A7D0 00038BD0  38 60 00 00 */	li r3, 0x0
/* 8136A7D4 00038BD4  48 1D A4 E9 */	bl GXSetCullMode
/* 8136A7D8 00038BD8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A7DC 00038BDC  7F E3 FB 78 */	mr r3, r31
/* 8136A7E0 00038BE0  38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A7E4 00038BE4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A7E8 00038BE8  7D 89 03 A6 */	mtctr r12
/* 8136A7EC 00038BEC  4E 80 04 21 */	bctrl
/* 8136A7F0 00038BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A7F4 00038BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A7F8 00038BF8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A7FC 00038BFC  7C 08 03 A6 */	mtlr r0
/* 8136A800 00038C00  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A804 00038C04  4E 80 00 20 */	blr
.endfn draw__Q33ipl6layout6ObjectFv

# .text:0xD4C | 0x8136A808 | size: 0x84
# ipl::layout::Object::draw(const char*)
.fn draw__Q33ipl6layout6ObjectFPCc, global
/* 8136A808 00038C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A80C 00038C0C  7C 08 02 A6 */	mflr r0
/* 8136A810 00038C10  38 A0 00 01 */	li r5, 0x1
/* 8136A814 00038C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A818 00038C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A81C 00038C1C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A820 00038C20  7C 7E 1B 78 */	mr r30, r3
/* 8136A824 00038C24  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136A828 00038C28  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136A82C 00038C2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136A830 00038C30  7D 89 03 A6 */	mtctr r12
/* 8136A834 00038C34  4E 80 04 21 */	bctrl
/* 8136A838 00038C38  7C 7F 1B 78 */	mr r31, r3
/* 8136A83C 00038C3C  38 60 00 00 */	li r3, 0x0
/* 8136A840 00038C40  48 1D D0 05 */	bl GXSetZCompLoc
/* 8136A844 00038C44  38 60 00 00 */	li r3, 0x0
/* 8136A848 00038C48  38 80 00 07 */	li r4, 0x7
/* 8136A84C 00038C4C  38 A0 00 00 */	li r5, 0x0
/* 8136A850 00038C50  48 1D CF C1 */	bl GXSetZMode
/* 8136A854 00038C54  38 60 00 00 */	li r3, 0x0
/* 8136A858 00038C58  48 1D A4 65 */	bl GXSetCullMode
/* 8136A85C 00038C5C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A860 00038C60  7F E3 FB 78 */	mr r3, r31
/* 8136A864 00038C64  38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A868 00038C68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A86C 00038C6C  7D 89 03 A6 */	mtctr r12
/* 8136A870 00038C70  4E 80 04 21 */	bctrl
/* 8136A874 00038C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A878 00038C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A87C 00038C7C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A880 00038C80  7C 08 03 A6 */	mtlr r0
/* 8136A884 00038C84  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A888 00038C88  4E 80 00 20 */	blr
.endfn draw__Q33ipl6layout6ObjectFPCc

# .text:0xDD0 | 0x8136A88C | size: 0x6C
# ipl::layout::Object::draw(nw4r::lyt::Pane*)
.fn draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane, global
/* 8136A88C 00038C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136A890 00038C90  7C 08 02 A6 */	mflr r0
/* 8136A894 00038C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136A898 00038C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136A89C 00038C9C  7C 9F 23 78 */	mr r31, r4
/* 8136A8A0 00038CA0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136A8A4 00038CA4  7C 7E 1B 78 */	mr r30, r3
/* 8136A8A8 00038CA8  38 60 00 00 */	li r3, 0x0
/* 8136A8AC 00038CAC  48 1D CF 99 */	bl GXSetZCompLoc
/* 8136A8B0 00038CB0  38 60 00 00 */	li r3, 0x0
/* 8136A8B4 00038CB4  38 80 00 07 */	li r4, 0x7
/* 8136A8B8 00038CB8  38 A0 00 00 */	li r5, 0x0
/* 8136A8BC 00038CBC  48 1D CF 55 */	bl GXSetZMode
/* 8136A8C0 00038CC0  38 60 00 00 */	li r3, 0x0
/* 8136A8C4 00038CC4  48 1D A3 F9 */	bl GXSetCullMode
/* 8136A8C8 00038CC8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8136A8CC 00038CCC  7F E3 FB 78 */	mr r3, r31
/* 8136A8D0 00038CD0  38 9E 02 98 */	addi r4, r30, 0x298
/* 8136A8D4 00038CD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136A8D8 00038CD8  7D 89 03 A6 */	mtctr r12
/* 8136A8DC 00038CDC  4E 80 04 21 */	bctrl
/* 8136A8E0 00038CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136A8E4 00038CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136A8E8 00038CE8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136A8EC 00038CEC  7C 08 03 A6 */	mtlr r0
/* 8136A8F0 00038CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8136A8F4 00038CF4  4E 80 00 20 */	blr
.endfn draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane

# .text:0xE3C | 0x8136A8F8 | size: 0x88
# ipl::layout::Object::start(int)
.fn start__Q33ipl6layout6ObjectFi, global
/* 8136A8F8 00038CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A8FC 00038CFC  7C 08 02 A6 */	mflr r0
/* 8136A900 00038D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A904 00038D04  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A908 00038D08  48 28 EB C1 */	bl _savegpr_29
/* 8136A90C 00038D0C  2C 04 FF FF */	cmpwi r4, -0x1
/* 8136A910 00038D10  7C 7D 1B 78 */	mr r29, r3
/* 8136A914 00038D14  40 82 00 38 */	bne .L_8136A94C
/* 8136A918 00038D18  3B C0 00 00 */	li r30, 0x0
/* 8136A91C 00038D1C  3B E0 00 01 */	li r31, 0x1
/* 8136A920 00038D20  48 00 00 10 */	b .L_8136A930
.L_8136A924:
/* 8136A924 00038D24  7F C3 F3 78 */	mr r3, r30
/* 8136A928 00038D28  4B FF 7F 49 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8136A92C 00038D2C  93 FE 00 14 */	stw r31, 0x14(r30)
.L_8136A930:
/* 8136A930 00038D30  7F C4 F3 78 */	mr r4, r30
/* 8136A934 00038D34  38 7D 02 8C */	addi r3, r29, 0x28c
/* 8136A938 00038D38  48 1A 79 A5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A93C 00038D3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A940 00038D40  7C 7E 1B 78 */	mr r30, r3
/* 8136A944 00038D44  40 82 FF E0 */	bne .L_8136A924
/* 8136A948 00038D48  48 00 00 20 */	b .L_8136A968
.L_8136A94C:
/* 8136A94C 00038D4C  54 84 04 3E */	clrlwi r4, r4, 16
/* 8136A950 00038D50  38 63 02 8C */	addi r3, r3, 0x28c
/* 8136A954 00038D54  48 1A 79 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136A958 00038D58  7C 7F 1B 78 */	mr r31, r3
/* 8136A95C 00038D5C  4B FF 7F 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8136A960 00038D60  38 00 00 01 */	li r0, 0x1
/* 8136A964 00038D64  90 1F 00 14 */	stw r0, 0x14(r31)
.L_8136A968:
/* 8136A968 00038D68  39 61 00 20 */	addi r11, r1, 0x20
/* 8136A96C 00038D6C  48 28 EB A9 */	bl _restgpr_29
/* 8136A970 00038D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A974 00038D74  7C 08 03 A6 */	mtlr r0
/* 8136A978 00038D78  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A97C 00038D7C  4E 80 00 20 */	blr
.endfn start__Q33ipl6layout6ObjectFi

# .text:0xEC4 | 0x8136A980 | size: 0x70
# ipl::layout::Object::setMaxFrame(float, int)
.fn setMaxFrame__Q33ipl6layout6ObjectFfi, global
/* 8136A980 00038D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A984 00038D84  7C 08 02 A6 */	mflr r0
/* 8136A988 00038D88  2C 04 FF FF */	cmpwi r4, -0x1
/* 8136A98C 00038D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136A990 00038D90  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8136A994 00038D94  FF E0 08 90 */	fmr f31, f1
/* 8136A998 00038D98  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8136A99C 00038D9C  7C 7F 1B 78 */	mr r31, r3
/* 8136A9A0 00038DA0  40 82 00 28 */	bne .L_8136A9C8
/* 8136A9A4 00038DA4  38 80 00 00 */	li r4, 0x0
/* 8136A9A8 00038DA8  48 00 00 08 */	b .L_8136A9B0
.L_8136A9AC:
/* 8136A9AC 00038DAC  D3 E3 00 04 */	stfs f31, 0x4(r3)
.L_8136A9B0:
/* 8136A9B0 00038DB0  38 7F 02 8C */	addi r3, r31, 0x28c
/* 8136A9B4 00038DB4  48 1A 79 29 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136A9B8 00038DB8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136A9BC 00038DBC  7C 64 1B 78 */	mr r4, r3
/* 8136A9C0 00038DC0  40 82 FF EC */	bne .L_8136A9AC
/* 8136A9C4 00038DC4  48 00 00 14 */	b .L_8136A9D8
.L_8136A9C8:
/* 8136A9C8 00038DC8  54 84 04 3E */	clrlwi r4, r4, 16
/* 8136A9CC 00038DCC  38 63 02 8C */	addi r3, r3, 0x28c
/* 8136A9D0 00038DD0  48 1A 79 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136A9D4 00038DD4  D3 E3 00 04 */	stfs f31, 0x4(r3)
.L_8136A9D8:
/* 8136A9D8 00038DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136A9DC 00038DDC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8136A9E0 00038DE0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8136A9E4 00038DE4  7C 08 03 A6 */	mtlr r0
/* 8136A9E8 00038DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8136A9EC 00038DEC  4E 80 00 20 */	blr
.endfn setMaxFrame__Q33ipl6layout6ObjectFfi

# .text:0xF34 | 0x8136A9F0 | size: 0x70
# ipl::layout::Object::setMinFrame(float, int)
.fn setMinFrame__Q33ipl6layout6ObjectFfi, global
/* 8136A9F0 00038DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136A9F4 00038DF4  7C 08 02 A6 */	mflr r0
/* 8136A9F8 00038DF8  2C 04 FF FF */	cmpwi r4, -0x1
/* 8136A9FC 00038DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136AA00 00038E00  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8136AA04 00038E04  FF E0 08 90 */	fmr f31, f1
/* 8136AA08 00038E08  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8136AA0C 00038E0C  7C 7F 1B 78 */	mr r31, r3
/* 8136AA10 00038E10  40 82 00 28 */	bne .L_8136AA38
/* 8136AA14 00038E14  38 80 00 00 */	li r4, 0x0
/* 8136AA18 00038E18  48 00 00 08 */	b .L_8136AA20
.L_8136AA1C:
/* 8136AA1C 00038E1C  D3 E3 00 08 */	stfs f31, 0x8(r3)
.L_8136AA20:
/* 8136AA20 00038E20  38 7F 02 8C */	addi r3, r31, 0x28c
/* 8136AA24 00038E24  48 1A 78 B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136AA28 00038E28  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AA2C 00038E2C  7C 64 1B 78 */	mr r4, r3
/* 8136AA30 00038E30  40 82 FF EC */	bne .L_8136AA1C
/* 8136AA34 00038E34  48 00 00 14 */	b .L_8136AA48
.L_8136AA38:
/* 8136AA38 00038E38  54 84 04 3E */	clrlwi r4, r4, 16
/* 8136AA3C 00038E3C  38 63 02 8C */	addi r3, r3, 0x28c
/* 8136AA40 00038E40  48 1A 78 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136AA44 00038E44  D3 E3 00 08 */	stfs f31, 0x8(r3)
.L_8136AA48:
/* 8136AA48 00038E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136AA4C 00038E4C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8136AA50 00038E50  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8136AA54 00038E54  7C 08 03 A6 */	mtlr r0
/* 8136AA58 00038E58  38 21 00 20 */	addi r1, r1, 0x20
/* 8136AA5C 00038E5C  4E 80 00 20 */	blr
.endfn setMinFrame__Q33ipl6layout6ObjectFfi

# .text:0xFA4 | 0x8136AA60 | size: 0x70
# ipl::layout::Object::setAnmType(int, int)
.fn setAnmType__Q33ipl6layout6ObjectFii, global
/* 8136AA60 00038E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AA64 00038E64  7C 08 02 A6 */	mflr r0
/* 8136AA68 00038E68  2C 05 FF FF */	cmpwi r5, -0x1
/* 8136AA6C 00038E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AA70 00038E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AA74 00038E74  7C 9F 23 78 */	mr r31, r4
/* 8136AA78 00038E78  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136AA7C 00038E7C  7C 7E 1B 78 */	mr r30, r3
/* 8136AA80 00038E80  40 82 00 28 */	bne .L_8136AAA8
/* 8136AA84 00038E84  38 80 00 00 */	li r4, 0x0
/* 8136AA88 00038E88  48 00 00 08 */	b .L_8136AA90
.L_8136AA8C:
/* 8136AA8C 00038E8C  93 E3 00 18 */	stw r31, 0x18(r3)
.L_8136AA90:
/* 8136AA90 00038E90  38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136AA94 00038E94  48 1A 78 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136AA98 00038E98  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AA9C 00038E9C  7C 64 1B 78 */	mr r4, r3
/* 8136AAA0 00038EA0  40 82 FF EC */	bne .L_8136AA8C
/* 8136AAA4 00038EA4  48 00 00 14 */	b .L_8136AAB8
.L_8136AAA8:
/* 8136AAA8 00038EA8  54 A4 04 3E */	clrlwi r4, r5, 16
/* 8136AAAC 00038EAC  38 63 02 8C */	addi r3, r3, 0x28c
/* 8136AAB0 00038EB0  48 1A 78 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136AAB4 00038EB4  93 E3 00 18 */	stw r31, 0x18(r3)
.L_8136AAB8:
/* 8136AAB8 00038EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AABC 00038EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AAC0 00038EC0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136AAC4 00038EC4  7C 08 03 A6 */	mtlr r0
/* 8136AAC8 00038EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8136AACC 00038ECC  4E 80 00 20 */	blr
.endfn setAnmType__Q33ipl6layout6ObjectFii

# .text:0x1014 | 0x8136AAD0 | size: 0x98
# ipl::layout::Object::isPlaying(int) const
.fn isPlaying__Q33ipl6layout6ObjectCFi, global
/* 8136AAD0 00038ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AAD4 00038ED4  7C 08 02 A6 */	mflr r0
/* 8136AAD8 00038ED8  2C 04 FF FF */	cmpwi r4, -0x1
/* 8136AADC 00038EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AAE0 00038EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AAE4 00038EE4  3B E0 00 00 */	li r31, 0x0
/* 8136AAE8 00038EE8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136AAEC 00038EEC  7C 7E 1B 78 */	mr r30, r3
/* 8136AAF0 00038EF0  40 82 00 40 */	bne .L_8136AB30
/* 8136AAF4 00038EF4  38 80 00 00 */	li r4, 0x0
/* 8136AAF8 00038EF8  48 00 00 20 */	b .L_8136AB18
.L_8136AAFC:
/* 8136AAFC 00038EFC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136AB00 00038F00  38 03 FF FF */	subi r0, r3, 0x1
/* 8136AB04 00038F04  7C 00 00 34 */	cntlzw r0, r0
/* 8136AB08 00038F08  54 00 D9 7E */	srwi r0, r0, 5
/* 8136AB0C 00038F0C  7F E3 03 78 */	or r3, r31, r0
/* 8136AB10 00038F10  30 03 FF FF */	subic r0, r3, 0x1
/* 8136AB14 00038F14  7F E0 19 10 */	subfe r31, r0, r3
.L_8136AB18:
/* 8136AB18 00038F18  38 7E 02 8C */	addi r3, r30, 0x28c
/* 8136AB1C 00038F1C  48 1A 77 C1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8136AB20 00038F20  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AB24 00038F24  7C 64 1B 78 */	mr r4, r3
/* 8136AB28 00038F28  40 82 FF D4 */	bne .L_8136AAFC
/* 8136AB2C 00038F2C  48 00 00 20 */	b .L_8136AB4C
.L_8136AB30:
/* 8136AB30 00038F30  54 84 04 3E */	clrlwi r4, r4, 16
/* 8136AB34 00038F34  38 63 02 8C */	addi r3, r3, 0x28c
/* 8136AB38 00038F38  48 1A 77 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136AB3C 00038F3C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8136AB40 00038F40  38 03 FF FF */	subi r0, r3, 0x1
/* 8136AB44 00038F44  7C 00 00 34 */	cntlzw r0, r0
/* 8136AB48 00038F48  54 1F D9 7E */	srwi r31, r0, 5
.L_8136AB4C:
/* 8136AB4C 00038F4C  7F E3 FB 78 */	mr r3, r31
/* 8136AB50 00038F50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AB54 00038F54  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136AB58 00038F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AB5C 00038F5C  7C 08 03 A6 */	mtlr r0
/* 8136AB60 00038F60  38 21 00 10 */	addi r1, r1, 0x10
/* 8136AB64 00038F64  4E 80 00 20 */	blr
.endfn isPlaying__Q33ipl6layout6ObjectCFi

# .text:0x10AC | 0x8136AB68 | size: 0x60
# ipl::layout::Object::attach(void*, const char*)
.fn attach__Q33ipl6layout6ObjectFPvPCc, global
/* 8136AB68 00038F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AB6C 00038F6C  7C 08 02 A6 */	mflr r0
/* 8136AB70 00038F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AB74 00038F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AB78 00038F78  7C 7F 1B 78 */	mr r31, r3
/* 8136AB7C 00038F7C  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 8136AB80 00038F80  1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 8136AB84 00038F84  7C 63 02 14 */	add r3, r3, r0
/* 8136AB88 00038F88  38 63 02 F0 */	addi r3, r3, 0x2f0
/* 8136AB8C 00038F8C  48 1B F7 FD */	bl fn_8152A388
/* 8136AB90 00038F90  80 1F 02 EC */	lwz r0, 0x2ec(r31)
/* 8136AB94 00038F94  38 7F 00 28 */	addi r3, r31, 0x28
/* 8136AB98 00038F98  1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 8136AB9C 00038F9C  7C 9F 02 14 */	add r4, r31, r0
/* 8136ABA0 00038FA0  38 84 02 F0 */	addi r4, r4, 0x2f0
/* 8136ABA4 00038FA4  48 1B F9 51 */	bl fn_8152A4F4
/* 8136ABA8 00038FA8  80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 8136ABAC 00038FAC  38 03 00 01 */	addi r0, r3, 0x1
/* 8136ABB0 00038FB0  90 1F 02 EC */	stw r0, 0x2ec(r31)
/* 8136ABB4 00038FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136ABB8 00038FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136ABBC 00038FBC  7C 08 03 A6 */	mtlr r0
/* 8136ABC0 00038FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8136ABC4 00038FC4  4E 80 00 20 */	blr
.endfn attach__Q33ipl6layout6ObjectFPvPCc

# .text:0x110C | 0x8136ABC8 | size: 0xFC
# ipl::layout::Object::attach_font()
.fn attach_font__Q33ipl6layout6ObjectFv, global
/* 8136ABC8 00038FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136ABCC 00038FCC  7C 08 02 A6 */	mflr r0
/* 8136ABD0 00038FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136ABD4 00038FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8136ABD8 00038FD8  48 28 E8 F1 */	bl _savegpr_29
/* 8136ABDC 00038FDC  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8136ABE0 00038FE0  3F C0 81 64 */	lis r30, lbl_81642890@ha
/* 8136ABE4 00038FE4  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8136ABE8 00038FE8  7C 7D 1B 78 */	mr r29, r3
/* 8136ABEC 00038FEC  88 04 02 B6 */	lbz r0, 0x2b6(r4)
/* 8136ABF0 00038FF0  3B DE 28 90 */	addi r30, r30, lbl_81642890@l
/* 8136ABF4 00038FF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136ABF8 00038FF8  41 82 00 B4 */	beq .L_8136ACAC
/* 8136ABFC 00038FFC  4B FC AE F9 */	bl getFont__Q23ipl6SystemFv
/* 8136AC00 00039000  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AC04 00039004  41 82 00 18 */	beq .L_8136AC1C
/* 8136AC08 00039008  4B FC AE ED */	bl getFont__Q23ipl6SystemFv
/* 8136AC0C 0003900C  7C 64 1B 78 */	mr r4, r3
/* 8136AC10 00039010  7F A3 EB 78 */	mr r3, r29
/* 8136AC14 00039014  38 AD 82 80 */	li r5, lbl_816962C0@sda21
/* 8136AC18 00039018  4B FF FF 51 */	bl attach__Q33ipl6layout6ObjectFPvPCc
.L_8136AC1C:
/* 8136AC1C 0003901C  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8136AC20 00039020  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8136AC24 00039024  80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8136AC28 00039028  2C 05 00 00 */	cmpwi r5, 0x0
/* 8136AC2C 0003902C  41 82 00 38 */	beq .L_8136AC64
/* 8136AC30 00039030  38 7D 00 44 */	addi r3, r29, 0x44
/* 8136AC34 00039034  38 9E 00 00 */	addi r4, r30, 0x0
/* 8136AC38 00039038  48 1B F7 11 */	bl fn_8152A348
/* 8136AC3C 0003903C  38 7D 00 28 */	addi r3, r29, 0x28
/* 8136AC40 00039040  38 9D 00 44 */	addi r4, r29, 0x44
/* 8136AC44 00039044  48 1B F9 5D */	bl fn_8152A5A0
/* 8136AC48 00039048  80 BF 00 DC */	lwz r5, 0xdc(r31)
/* 8136AC4C 0003904C  38 7D 01 5C */	addi r3, r29, 0x15c
/* 8136AC50 00039050  38 9E 00 24 */	addi r4, r30, 0x24
/* 8136AC54 00039054  48 1B F6 F5 */	bl fn_8152A348
/* 8136AC58 00039058  38 7D 00 28 */	addi r3, r29, 0x28
/* 8136AC5C 0003905C  38 9D 01 5C */	addi r4, r29, 0x15c
/* 8136AC60 00039060  48 1B F9 41 */	bl fn_8152A5A0
.L_8136AC64:
/* 8136AC64 00039064  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8136AC68 00039068  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8136AC6C 0003906C  80 BF 00 E4 */	lwz r5, 0xe4(r31)
/* 8136AC70 00039070  2C 05 00 00 */	cmpwi r5, 0x0
/* 8136AC74 00039074  41 82 00 38 */	beq .L_8136ACAC
/* 8136AC78 00039078  38 7D 00 D0 */	addi r3, r29, 0xd0
/* 8136AC7C 0003907C  38 9E 00 2F */	addi r4, r30, 0x2f
/* 8136AC80 00039080  48 1B F6 C9 */	bl fn_8152A348
/* 8136AC84 00039084  38 7D 00 28 */	addi r3, r29, 0x28
/* 8136AC88 00039088  38 9D 00 D0 */	addi r4, r29, 0xd0
/* 8136AC8C 0003908C  48 1B F9 15 */	bl fn_8152A5A0
/* 8136AC90 00039090  80 BF 00 E4 */	lwz r5, 0xe4(r31)
/* 8136AC94 00039094  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 8136AC98 00039098  38 9E 00 58 */	addi r4, r30, 0x58
/* 8136AC9C 0003909C  48 1B F6 AD */	bl fn_8152A348
/* 8136ACA0 000390A0  38 7D 00 28 */	addi r3, r29, 0x28
/* 8136ACA4 000390A4  38 9D 01 E8 */	addi r4, r29, 0x1e8
/* 8136ACA8 000390A8  48 1B F8 F9 */	bl fn_8152A5A0
.L_8136ACAC:
/* 8136ACAC 000390AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8136ACB0 000390B0  48 28 E8 65 */	bl _restgpr_29
/* 8136ACB4 000390B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136ACB8 000390B8  7C 08 03 A6 */	mtlr r0
/* 8136ACBC 000390BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8136ACC0 000390C0  4E 80 00 20 */	blr
.endfn attach_font__Q33ipl6layout6ObjectFv

# .text:0x1208 | 0x8136ACC4 | size: 0x114
# ipl::layout::Object::initLocationAdjust()
.fn initLocationAdjust__Q33ipl6layout6ObjectFv, global
/* 8136ACC4 000390C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136ACC8 000390C8  7C 08 02 A6 */	mflr r0
/* 8136ACCC 000390CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8136ACD0 000390D0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8136ACD4 000390D4  7C 7F 1B 78 */	mr r31, r3
/* 8136ACD8 000390D8  48 1F F2 DD */	bl SCGetAspectRatio
/* 8136ACDC 000390DC  54 60 06 3E */	clrlwi r0, r3, 24
/* 8136ACE0 000390E0  28 00 00 01 */	cmplwi r0, 0x1
/* 8136ACE4 000390E4  40 82 00 A0 */	bne .L_8136AD84
/* 8136ACE8 000390E8  38 61 00 38 */	addi r3, r1, 0x38
/* 8136ACEC 000390EC  4B FC B7 3D */	bl __ct__Q34nw4r2ut4RectFv
/* 8136ACF0 000390F0  38 61 00 38 */	addi r3, r1, 0x38
/* 8136ACF4 000390F4  4B FC AC 59 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136ACF8 000390F8  38 61 00 28 */	addi r3, r1, 0x28
/* 8136ACFC 000390FC  4B FC B7 2D */	bl __ct__Q34nw4r2ut4RectFv
/* 8136AD00 00039100  38 61 00 28 */	addi r3, r1, 0x28
/* 8136AD04 00039104  4B FC AC 6D */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136AD08 00039108  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8136AD0C 0003910C  38 81 00 20 */	addi r4, r1, 0x20
/* 8136AD10 00039110  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8136AD14 00039114  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8136AD18 00039118  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8136AD1C 0003911C  EC 63 00 28 */	fsubs f3, f3, f0
/* 8136AD20 00039120  C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136AD24 00039124  EC 22 08 28 */	fsubs f1, f2, f1
/* 8136AD28 00039128  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8136AD2C 0003912C  EC 01 18 24 */	fdivs f0, f1, f3
/* 8136AD30 00039130  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8136AD34 00039134  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8136AD38 00039138  38 63 00 44 */	addi r3, r3, 0x44
/* 8136AD3C 0003913C  48 00 00 9D */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136AD40 00039140  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8136AD44 00039144  38 7F 02 DC */	addi r3, r31, 0x2dc
/* 8136AD48 00039148  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8136AD4C 0003914C  38 81 00 18 */	addi r4, r1, 0x18
/* 8136AD50 00039150  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8136AD54 00039154  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8136AD58 00039158  EC 63 00 28 */	fsubs f3, f3, f0
/* 8136AD5C 0003915C  C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136AD60 00039160  EC 22 08 28 */	fsubs f1, f2, f1
/* 8136AD64 00039164  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8136AD68 00039168  EC 01 18 24 */	fdivs f0, f1, f3
/* 8136AD6C 0003916C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8136AD70 00039170  48 00 00 69 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136AD74 00039174  88 1F 02 E8 */	lbz r0, 0x2e8(r31)
/* 8136AD78 00039178  60 00 00 20 */	ori r0, r0, 0x20
/* 8136AD7C 0003917C  98 1F 02 E8 */	stb r0, 0x2e8(r31)
/* 8136AD80 00039180  48 00 00 44 */	b .L_8136ADC4
.L_8136AD84:
/* 8136AD84 00039184  C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136AD88 00039188  38 81 00 10 */	addi r4, r1, 0x10
/* 8136AD8C 0003918C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8136AD90 00039190  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8136AD94 00039194  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8136AD98 00039198  38 63 00 44 */	addi r3, r3, 0x44
/* 8136AD9C 0003919C  48 00 00 3D */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136ADA0 000391A0  C0 02 82 88 */	lfs f0, lbl_81694688@sda21(r0)
/* 8136ADA4 000391A4  38 7F 02 DC */	addi r3, r31, 0x2dc
/* 8136ADA8 000391A8  38 81 00 08 */	addi r4, r1, 0x8
/* 8136ADAC 000391AC  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8136ADB0 000391B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8136ADB4 000391B4  48 00 00 25 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 8136ADB8 000391B8  88 1F 02 E8 */	lbz r0, 0x2e8(r31)
/* 8136ADBC 000391BC  54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 8136ADC0 000391C0  98 1F 02 E8 */	stb r0, 0x2e8(r31)
.L_8136ADC4:
/* 8136ADC4 000391C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136ADC8 000391C8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8136ADCC 000391CC  7C 08 03 A6 */	mtlr r0
/* 8136ADD0 000391D0  38 21 00 50 */	addi r1, r1, 0x50
/* 8136ADD4 000391D4  4E 80 00 20 */	blr
.endfn initLocationAdjust__Q33ipl6layout6ObjectFv

# .text:0x131C | 0x8136ADD8 | size: 0x14
# nw4r::math::VEC2::operator=(const nw4r::math::VEC2&)
.fn __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2, global
/* 8136ADD8 000391D8  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 8136ADDC 000391DC  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 8136ADE0 000391E0  D0 23 00 00 */	stfs f1, 0x0(r3)
/* 8136ADE4 000391E4  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8136ADE8 000391E8  4E 80 00 20 */	blr
.endfn __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2

# .text:0x1330 | 0x8136ADEC | size: 0x14
# ipl::layout::Object::adjustHeap()
.fn adjustHeap__Q33ipl6layout6ObjectFv, global
/* 8136ADEC 000391EC  80 63 02 74 */	lwz r3, 0x274(r3)
/* 8136ADF0 000391F0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136ADF4 000391F4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8136ADF8 000391F8  7D 89 03 A6 */	mtctr r12
/* 8136ADFC 000391FC  4E 80 04 20 */	bctr
.endfn adjustHeap__Q33ipl6layout6ObjectFv

# .text:0x1344 | 0x8136AE00 | size: 0x14
# ipl::layout::Object::destroyHeap()
.fn destroyHeap__Q33ipl6layout6ObjectFv, global
/* 8136AE00 00039200  80 63 02 74 */	lwz r3, 0x274(r3)
/* 8136AE04 00039204  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136AE08 00039208  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136AE0C 0003920C  7D 89 03 A6 */	mtctr r12
/* 8136AE10 00039210  4E 80 04 20 */	bctr
.endfn destroyHeap__Q33ipl6layout6ObjectFv

# .text:0x1358 | 0x8136AE14 | size: 0x7C
# ipl::layout::Object::create(EGG::Heap*, unsigned long, ipl::nand::LayoutFile*, const char*, const char*)
.fn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc, global
/* 8136AE14 00039214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136AE18 00039218  7C 08 02 A6 */	mflr r0
/* 8136AE1C 0003921C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136AE20 00039220  39 61 00 20 */	addi r11, r1, 0x20
/* 8136AE24 00039224  48 28 E6 A1 */	bl _savegpr_28
/* 8136AE28 00039228  7C 60 1B 78 */	mr r0, r3
/* 8136AE2C 0003922C  7C 83 23 78 */	mr r3, r4
/* 8136AE30 00039230  7C BC 2B 78 */	mr r28, r5
/* 8136AE34 00039234  7C DD 33 78 */	mr r29, r6
/* 8136AE38 00039238  7C FE 3B 78 */	mr r30, r7
/* 8136AE3C 0003923C  7C 04 03 78 */	mr r4, r0
/* 8136AE40 00039240  38 A0 00 02 */	li r5, 0x2
/* 8136AE44 00039244  48 28 C8 31 */	bl fn_815F7674
/* 8136AE48 00039248  7C 7F 1B 78 */	mr r31, r3
/* 8136AE4C 0003924C  38 60 05 80 */	li r3, 0x580
/* 8136AE50 00039250  7F E4 FB 78 */	mr r4, r31
/* 8136AE54 00039254  38 A0 00 04 */	li r5, 0x4
/* 8136AE58 00039258  48 28 D2 59 */	bl __nw__FUlPQ23EGG4Heapi
/* 8136AE5C 0003925C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AE60 00039260  41 82 00 18 */	beq .L_8136AE78
/* 8136AE64 00039264  7F E4 FB 78 */	mr r4, r31
/* 8136AE68 00039268  7F 85 E3 78 */	mr r5, r28
/* 8136AE6C 0003926C  7F A6 EB 78 */	mr r6, r29
/* 8136AE70 00039270  7F C7 F3 78 */	mr r7, r30
/* 8136AE74 00039274  4B FF F1 B1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8136AE78:
/* 8136AE78 00039278  39 61 00 20 */	addi r11, r1, 0x20
/* 8136AE7C 0003927C  48 28 E6 95 */	bl _restgpr_28
/* 8136AE80 00039280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136AE84 00039284  7C 08 03 A6 */	mtlr r0
/* 8136AE88 00039288  38 21 00 20 */	addi r1, r1, 0x20
/* 8136AE8C 0003928C  4E 80 00 20 */	blr
.endfn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x13D4 | 0x8136AE90 | size: 0x7C
# ipl::layout::Object::create(EGG::Heap*, unsigned long, void*, const char*, const char*)
.fn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc, global
/* 8136AE90 00039290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136AE94 00039294  7C 08 02 A6 */	mflr r0
/* 8136AE98 00039298  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136AE9C 0003929C  39 61 00 20 */	addi r11, r1, 0x20
/* 8136AEA0 000392A0  48 28 E6 25 */	bl _savegpr_28
/* 8136AEA4 000392A4  7C 60 1B 78 */	mr r0, r3
/* 8136AEA8 000392A8  7C 83 23 78 */	mr r3, r4
/* 8136AEAC 000392AC  7C BC 2B 78 */	mr r28, r5
/* 8136AEB0 000392B0  7C DD 33 78 */	mr r29, r6
/* 8136AEB4 000392B4  7C FE 3B 78 */	mr r30, r7
/* 8136AEB8 000392B8  7C 04 03 78 */	mr r4, r0
/* 8136AEBC 000392BC  38 A0 00 02 */	li r5, 0x2
/* 8136AEC0 000392C0  48 28 C7 B5 */	bl fn_815F7674
/* 8136AEC4 000392C4  7C 7F 1B 78 */	mr r31, r3
/* 8136AEC8 000392C8  38 60 05 80 */	li r3, 0x580
/* 8136AECC 000392CC  7F E4 FB 78 */	mr r4, r31
/* 8136AED0 000392D0  38 A0 00 04 */	li r5, 0x4
/* 8136AED4 000392D4  48 28 D1 DD */	bl __nw__FUlPQ23EGG4Heapi
/* 8136AED8 000392D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AEDC 000392DC  41 82 00 18 */	beq .L_8136AEF4
/* 8136AEE0 000392E0  7F E4 FB 78 */	mr r4, r31
/* 8136AEE4 000392E4  7F 85 E3 78 */	mr r5, r28
/* 8136AEE8 000392E8  7F A6 EB 78 */	mr r6, r29
/* 8136AEEC 000392EC  7F C7 F3 78 */	mr r7, r30
/* 8136AEF0 000392F0  4B FF F0 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc
.L_8136AEF4:
/* 8136AEF4 000392F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8136AEF8 000392F8  48 28 E6 19 */	bl _restgpr_28
/* 8136AEFC 000392FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136AF00 00039300  7C 08 03 A6 */	mtlr r0
/* 8136AF04 00039304  38 21 00 20 */	addi r1, r1, 0x20
/* 8136AF08 00039308  4E 80 00 20 */	blr
.endfn create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc

# .text:0x1450 | 0x8136AF0C | size: 0x40
# ipl::layout::PaneAnimator::~PaneAnimator()
.fn __dt__Q33ipl6layout12PaneAnimatorFv, global
/* 8136AF0C 0003930C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AF10 00039310  7C 08 02 A6 */	mflr r0
/* 8136AF14 00039314  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AF18 00039318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AF1C 0003931C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AF20 00039320  7C 7F 1B 78 */	mr r31, r3
/* 8136AF24 00039324  41 82 00 10 */	beq .L_8136AF34
/* 8136AF28 00039328  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136AF2C 0003932C  40 81 00 08 */	ble .L_8136AF34
/* 8136AF30 00039330  48 28 D1 B5 */	bl __dl__FPv
.L_8136AF34:
/* 8136AF34 00039334  7F E3 FB 78 */	mr r3, r31
/* 8136AF38 00039338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AF3C 0003933C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AF40 00039340  7C 08 03 A6 */	mtlr r0
/* 8136AF44 00039344  38 21 00 10 */	addi r1, r1, 0x10
/* 8136AF48 00039348  4E 80 00 20 */	blr
.endfn __dt__Q33ipl6layout12PaneAnimatorFv

# .text:0x1490 | 0x8136AF4C | size: 0x40
# ipl::layout::GroupAnimator::~GroupAnimator()
.fn __dt__Q33ipl6layout13GroupAnimatorFv, global
/* 8136AF4C 0003934C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AF50 00039350  7C 08 02 A6 */	mflr r0
/* 8136AF54 00039354  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136AF58 00039358  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AF5C 0003935C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AF60 00039360  7C 7F 1B 78 */	mr r31, r3
/* 8136AF64 00039364  41 82 00 10 */	beq .L_8136AF74
/* 8136AF68 00039368  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136AF6C 0003936C  40 81 00 08 */	ble .L_8136AF74
/* 8136AF70 00039370  48 28 D1 75 */	bl __dl__FPv
.L_8136AF74:
/* 8136AF74 00039374  7F E3 FB 78 */	mr r3, r31
/* 8136AF78 00039378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AF7C 0003937C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AF80 00039380  7C 08 03 A6 */	mtlr r0
/* 8136AF84 00039384  38 21 00 10 */	addi r1, r1, 0x10
/* 8136AF88 00039388  4E 80 00 20 */	blr
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

# .sdata:0x0 | 0x816962C0 | size: 0x8
.obj lbl_816962C0, global
	.4byte 0x61726300
	.4byte 0x00000000
.endobj lbl_816962C0
