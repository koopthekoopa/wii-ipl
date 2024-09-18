.include "macros.inc"
.file "iplCSAnim.cpp"

# 0x8145E588..0x8145EE24 | size: 0x89C
.text
.balign 4

# .text:0x0 | 0x8145E588 | size: 0x70
# ipl::cs::anim::start(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn start__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E588 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145E58C | 7C 08 02 A6 */	mflr r0
/* 8145E590 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145E594 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145E598 | 7C 9F 23 78 */	mr r31, r4
/* 8145E59C | 7F E3 FB 78 */	mr r3, r31
/* 8145E5A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145E5A4 | 3B C0 00 00 */	li r30, 0x0
/* 8145E5A8 | 4B FF DF 81 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E5B0 | 41 82 00 2C */	beq .L_8145E5DC
/* 8145E5B4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8145E5B8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E5BC | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 8145E5C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E5C4 | 41 82 00 18 */	beq .L_8145E5DC
/* 8145E5C8 | 7F E3 FB 78 */	mr r3, r31
/* 8145E5CC | 4B F0 42 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8145E5D0 | 38 00 00 01 */	li r0, 0x1
/* 8145E5D4 | 3B C0 00 01 */	li r30, 0x1
/* 8145E5D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8145E5DC:
/* 8145E5DC | 7F C3 F3 78 */	mr r3, r30
/* 8145E5E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145E5E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145E5E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145E5EC | 7C 08 03 A6 */	mtlr r0
/* 8145E5F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145E5F4 | 4E 80 00 20 */	blr
.endfn start__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x70 | 0x8145E5F8 | size: 0x68
# ipl::cs::anim::restart(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn restart__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E5F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145E5FC | 7C 08 02 A6 */	mflr r0
/* 8145E600 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145E604 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145E608 | 3B E0 00 00 */	li r31, 0x0
/* 8145E60C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145E610 | 7C 9E 23 78 */	mr r30, r4
/* 8145E614 | 7F C3 F3 78 */	mr r3, r30
/* 8145E618 | 4B FF DF 11 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E61C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E620 | 41 82 00 24 */	beq .L_8145E644
/* 8145E624 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8145E628 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E62C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E634 | 41 82 00 10 */	beq .L_8145E644
/* 8145E638 | 38 00 00 01 */	li r0, 0x1
/* 8145E63C | 3B E0 00 01 */	li r31, 0x1
/* 8145E640 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_8145E644:
/* 8145E644 | 7F E3 FB 78 */	mr r3, r31
/* 8145E648 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145E64C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145E650 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145E654 | 7C 08 03 A6 */	mtlr r0
/* 8145E658 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145E65C | 4E 80 00 20 */	blr
.endfn restart__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xD8 | 0x8145E660 | size: 0x68
# ipl::cs::anim::stop(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn stop__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145E664 | 7C 08 02 A6 */	mflr r0
/* 8145E668 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145E66C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145E670 | 3B E0 00 00 */	li r31, 0x0
/* 8145E674 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145E678 | 7C 9E 23 78 */	mr r30, r4
/* 8145E67C | 7F C3 F3 78 */	mr r3, r30
/* 8145E680 | 4B FF DE A9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E688 | 41 82 00 24 */	beq .L_8145E6AC
/* 8145E68C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8145E690 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E694 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E698 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E69C | 41 82 00 10 */	beq .L_8145E6AC
/* 8145E6A0 | 38 00 00 00 */	li r0, 0x0
/* 8145E6A4 | 3B E0 00 01 */	li r31, 0x1
/* 8145E6A8 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_8145E6AC:
/* 8145E6AC | 7F E3 FB 78 */	mr r3, r31
/* 8145E6B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145E6B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145E6B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145E6BC | 7C 08 03 A6 */	mtlr r0
/* 8145E6C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145E6C4 | 4E 80 00 20 */	blr
.endfn stop__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x140 | 0x8145E6C8 | size: 0x8C
# ipl::cs::anim::is_playing(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn is_playing__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E6C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E6CC | 7C 08 02 A6 */	mflr r0
/* 8145E6D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E6D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E6D8 | 48 19 AD ED */	bl _savegpr_28
/* 8145E6DC | 7C 9D 23 78 */	mr r29, r4
/* 8145E6E0 | 7C 7C 1B 78 */	mr r28, r3
/* 8145E6E4 | 7C BE 2B 78 */	mr r30, r5
/* 8145E6E8 | 3B E0 00 00 */	li r31, 0x0
/* 8145E6EC | 7F A3 EB 78 */	mr r3, r29
/* 8145E6F0 | 4B FF DE 39 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E6F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E6F8 | 41 82 00 40 */	beq .L_8145E738
/* 8145E6FC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E700 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E704 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E70C | 41 82 00 2C */	beq .L_8145E738
/* 8145E710 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8145E714 | 7F 83 E3 78 */	mr r3, r28
/* 8145E718 | 7F C4 F3 78 */	mr r4, r30
/* 8145E71C | 38 A0 00 00 */	li r5, 0x0
/* 8145E720 | 38 06 FF FF */	subi r0, r6, 0x1
/* 8145E724 | 7C 00 00 34 */	cntlzw r0, r0
/* 8145E728 | 54 06 D9 7E */	srwi r6, r0, 5
/* 8145E72C | 4B FE D2 6D */	bl CHANSVmSetInteger
/* 8145E730 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145E734 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145E738:
/* 8145E738 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E73C | 7F E3 FB 78 */	mr r3, r31
/* 8145E740 | 48 19 AD D1 */	bl _restgpr_28
/* 8145E744 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E748 | 7C 08 03 A6 */	mtlr r0
/* 8145E74C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E750 | 4E 80 00 20 */	blr
.endfn is_playing__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1CC | 0x8145E754 | size: 0x90
# ipl::cs::anim::init_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn init_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E754 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E758 | 7C 08 02 A6 */	mflr r0
/* 8145E75C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E760 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E764 | 48 19 AD 65 */	bl _savegpr_29
/* 8145E768 | 7C 9D 23 78 */	mr r29, r4
/* 8145E76C | 3B C0 00 00 */	li r30, 0x0
/* 8145E770 | 38 80 00 00 */	li r4, 0x0
/* 8145E774 | 4B FE DF 89 */	bl CHANSVmGetArgFloat
/* 8145E778 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E77C | 7F A3 EB 78 */	mr r3, r29
/* 8145E780 | 4B FF DD A9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E788 | 41 82 00 40 */	beq .L_8145E7C8
/* 8145E78C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E790 | 41 82 00 38 */	beq .L_8145E7C8
/* 8145E794 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E798 | C8 3F 00 00 */	lfd f1, 0x0(r31)
/* 8145E79C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E7A0 | FC 20 08 18 */	frsp f1, f1
/* 8145E7A4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E7A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E7AC | 41 82 00 1C */	beq .L_8145E7C8
/* 8145E7B0 | C0 02 8B F0 */	lfs f0, lbl_81694FF0@sda21(r0)
/* 8145E7B4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8145E7B8 | 4C 41 13 82 */	cror eq, gt, eq
/* 8145E7BC | 40 82 00 0C */	bne .L_8145E7C8
/* 8145E7C0 | 4B F0 B4 A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 8145E7C4 | 3B C0 00 01 */	li r30, 0x1
.L_8145E7C8:
/* 8145E7C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E7CC | 7F C3 F3 78 */	mr r3, r30
/* 8145E7D0 | 48 19 AD 45 */	bl _restgpr_29
/* 8145E7D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E7D8 | 7C 08 03 A6 */	mtlr r0
/* 8145E7DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E7E0 | 4E 80 00 20 */	blr
.endfn init_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x25C | 0x8145E7E4 | size: 0x9C
# ipl::cs::anim::set_max_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_max_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E7E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E7E8 | 7C 08 02 A6 */	mflr r0
/* 8145E7EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E7F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E7F4 | 48 19 AC D5 */	bl _savegpr_29
/* 8145E7F8 | 7C 9D 23 78 */	mr r29, r4
/* 8145E7FC | 3B C0 00 00 */	li r30, 0x0
/* 8145E800 | 38 80 00 00 */	li r4, 0x0
/* 8145E804 | 4B FE DE F9 */	bl CHANSVmGetArgFloat
/* 8145E808 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E80C | 7F A3 EB 78 */	mr r3, r29
/* 8145E810 | 4B FF DD 19 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E818 | 41 82 00 4C */	beq .L_8145E864
/* 8145E81C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E820 | 41 82 00 44 */	beq .L_8145E864
/* 8145E824 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E828 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E82C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E830 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E834 | 41 82 00 30 */	beq .L_8145E864
/* 8145E838 | C8 5F 00 00 */	lfd f2, 0x0(r31)
/* 8145E83C | C0 02 8B F0 */	lfs f0, lbl_81694FF0@sda21(r0)
/* 8145E840 | FC 40 10 18 */	frsp f2, f2
/* 8145E844 | C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8145E848 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8145E84C | 4C 41 13 82 */	cror eq, gt, eq
/* 8145E850 | 40 82 00 14 */	bne .L_8145E864
/* 8145E854 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8145E858 | 40 80 00 0C */	bge .L_8145E864
/* 8145E85C | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 8145E860 | 3B C0 00 01 */	li r30, 0x1
.L_8145E864:
/* 8145E864 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E868 | 7F C3 F3 78 */	mr r3, r30
/* 8145E86C | 48 19 AC A9 */	bl _restgpr_29
/* 8145E870 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E874 | 7C 08 03 A6 */	mtlr r0
/* 8145E878 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E87C | 4E 80 00 20 */	blr
.endfn set_max_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x2F8 | 0x8145E880 | size: 0x9C
# ipl::cs::anim::set_min_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_min_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E880 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E884 | 7C 08 02 A6 */	mflr r0
/* 8145E888 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E88C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E890 | 48 19 AC 39 */	bl _savegpr_29
/* 8145E894 | 7C 9D 23 78 */	mr r29, r4
/* 8145E898 | 3B C0 00 00 */	li r30, 0x0
/* 8145E89C | 38 80 00 00 */	li r4, 0x0
/* 8145E8A0 | 4B FE DE 5D */	bl CHANSVmGetArgFloat
/* 8145E8A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E8A8 | 7F A3 EB 78 */	mr r3, r29
/* 8145E8AC | 4B FF DC 7D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E8B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E8B4 | 41 82 00 4C */	beq .L_8145E900
/* 8145E8B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E8BC | 41 82 00 44 */	beq .L_8145E900
/* 8145E8C0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E8C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E8C8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E8CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E8D0 | 41 82 00 30 */	beq .L_8145E900
/* 8145E8D4 | C8 5F 00 00 */	lfd f2, 0x0(r31)
/* 8145E8D8 | C0 02 8B F0 */	lfs f0, lbl_81694FF0@sda21(r0)
/* 8145E8DC | FC 40 10 18 */	frsp f2, f2
/* 8145E8E0 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 8145E8E4 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8145E8E8 | 4C 41 13 82 */	cror eq, gt, eq
/* 8145E8EC | 40 82 00 14 */	bne .L_8145E900
/* 8145E8F0 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8145E8F4 | 40 80 00 0C */	bge .L_8145E900
/* 8145E8F8 | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 8145E8FC | 3B C0 00 01 */	li r30, 0x1
.L_8145E900:
/* 8145E900 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E904 | 7F C3 F3 78 */	mr r3, r30
/* 8145E908 | 48 19 AC 0D */	bl _restgpr_29
/* 8145E90C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E910 | 7C 08 03 A6 */	mtlr r0
/* 8145E914 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E918 | 4E 80 00 20 */	blr
.endfn set_min_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x394 | 0x8145E91C | size: 0x80
# ipl::cs::anim::set_current_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_current_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E91C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E920 | 7C 08 02 A6 */	mflr r0
/* 8145E924 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E928 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E92C | 48 19 AB 9D */	bl _savegpr_29
/* 8145E930 | 7C 9D 23 78 */	mr r29, r4
/* 8145E934 | 3B C0 00 00 */	li r30, 0x0
/* 8145E938 | 38 80 00 00 */	li r4, 0x0
/* 8145E93C | 4B FE DD C1 */	bl CHANSVmGetArgFloat
/* 8145E940 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E944 | 7F A3 EB 78 */	mr r3, r29
/* 8145E948 | 4B FF DB E1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E94C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E950 | 41 82 00 30 */	beq .L_8145E980
/* 8145E954 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E958 | 41 82 00 28 */	beq .L_8145E980
/* 8145E95C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E960 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145E964 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E968 | FC 00 00 18 */	frsp f0, f0
/* 8145E96C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E974 | 41 82 00 0C */	beq .L_8145E980
/* 8145E978 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8145E97C | 3B C0 00 01 */	li r30, 0x1
.L_8145E980:
/* 8145E980 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E984 | 7F C3 F3 78 */	mr r3, r30
/* 8145E988 | 48 19 AB 8D */	bl _restgpr_29
/* 8145E98C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E990 | 7C 08 03 A6 */	mtlr r0
/* 8145E994 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E998 | 4E 80 00 20 */	blr
.endfn set_current_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x414 | 0x8145E99C | size: 0x8C
# ipl::cs::anim::set_type(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_type__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E99C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E9A0 | 7C 08 02 A6 */	mflr r0
/* 8145E9A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E9A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E9AC | 48 19 AB 1D */	bl _savegpr_29
/* 8145E9B0 | 7C 9D 23 78 */	mr r29, r4
/* 8145E9B4 | 3B C0 00 00 */	li r30, 0x0
/* 8145E9B8 | 38 80 00 00 */	li r4, 0x0
/* 8145E9BC | 4B FE DD 05 */	bl CHANSVmGetArgInteger
/* 8145E9C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E9C4 | 7F A3 EB 78 */	mr r3, r29
/* 8145E9C8 | 4B FF DB 61 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E9CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E9D0 | 41 82 00 3C */	beq .L_8145EA0C
/* 8145E9D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E9D8 | 41 82 00 34 */	beq .L_8145EA0C
/* 8145E9DC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E9E0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145E9E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E9E8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E9EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E9F0 | 41 82 00 1C */	beq .L_8145EA0C
/* 8145E9F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145E9F8 | 41 80 00 14 */	blt .L_8145EA0C
/* 8145E9FC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8145EA00 | 40 80 00 0C */	bge .L_8145EA0C
/* 8145EA04 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8145EA08 | 3B C0 00 01 */	li r30, 0x1
.L_8145EA0C:
/* 8145EA0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EA10 | 7F C3 F3 78 */	mr r3, r30
/* 8145EA14 | 48 19 AB 01 */	bl _restgpr_29
/* 8145EA18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EA1C | 7C 08 03 A6 */	mtlr r0
/* 8145EA20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EA24 | 4E 80 00 20 */	blr
.endfn set_type__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4A0 | 0x8145EA28 | size: 0x80
# ipl::cs::anim::set_delta(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_delta__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EA28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145EA2C | 7C 08 02 A6 */	mflr r0
/* 8145EA30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145EA34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EA38 | 48 19 AA 91 */	bl _savegpr_29
/* 8145EA3C | 7C 9D 23 78 */	mr r29, r4
/* 8145EA40 | 3B C0 00 00 */	li r30, 0x0
/* 8145EA44 | 38 80 00 00 */	li r4, 0x0
/* 8145EA48 | 4B FE DC B5 */	bl CHANSVmGetArgFloat
/* 8145EA4C | 7C 7F 1B 78 */	mr r31, r3
/* 8145EA50 | 7F A3 EB 78 */	mr r3, r29
/* 8145EA54 | 4B FF DA D5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145EA58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EA5C | 41 82 00 30 */	beq .L_8145EA8C
/* 8145EA60 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145EA64 | 41 82 00 28 */	beq .L_8145EA8C
/* 8145EA68 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145EA6C | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145EA70 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EA74 | FC 00 00 18 */	frsp f0, f0
/* 8145EA78 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EA7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EA80 | 41 82 00 0C */	beq .L_8145EA8C
/* 8145EA84 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8145EA88 | 3B C0 00 01 */	li r30, 0x1
.L_8145EA8C:
/* 8145EA8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EA90 | 7F C3 F3 78 */	mr r3, r30
/* 8145EA94 | 48 19 AA 81 */	bl _restgpr_29
/* 8145EA98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EA9C | 7C 08 03 A6 */	mtlr r0
/* 8145EAA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EAA4 | 4E 80 00 20 */	blr
.endfn set_delta__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x520 | 0x8145EAA8 | size: 0x7C
# ipl::cs::anim::get_max_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_max_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EAA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145EAAC | 7C 08 02 A6 */	mflr r0
/* 8145EAB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145EAB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EAB8 | 48 19 AA 0D */	bl _savegpr_28
/* 8145EABC | 7C 9D 23 78 */	mr r29, r4
/* 8145EAC0 | 7C 7C 1B 78 */	mr r28, r3
/* 8145EAC4 | 7C BE 2B 78 */	mr r30, r5
/* 8145EAC8 | 3B E0 00 00 */	li r31, 0x0
/* 8145EACC | 7F A3 EB 78 */	mr r3, r29
/* 8145EAD0 | 4B FF DA 59 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145EAD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EAD8 | 41 82 00 30 */	beq .L_8145EB08
/* 8145EADC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145EAE0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EAE4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EAE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EAEC | 41 82 00 1C */	beq .L_8145EB08
/* 8145EAF0 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 8145EAF4 | 7F 83 E3 78 */	mr r3, r28
/* 8145EAF8 | 7F C4 F3 78 */	mr r4, r30
/* 8145EAFC | 4B FE CE F1 */	bl CHANSVmSetFloat
/* 8145EB00 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EB04 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145EB08:
/* 8145EB08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EB0C | 7F E3 FB 78 */	mr r3, r31
/* 8145EB10 | 48 19 AA 01 */	bl _restgpr_28
/* 8145EB14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EB18 | 7C 08 03 A6 */	mtlr r0
/* 8145EB1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EB20 | 4E 80 00 20 */	blr
.endfn get_max_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x59C | 0x8145EB24 | size: 0x7C
# ipl::cs::anim::get_min_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_min_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EB24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145EB28 | 7C 08 02 A6 */	mflr r0
/* 8145EB2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145EB30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EB34 | 48 19 A9 91 */	bl _savegpr_28
/* 8145EB38 | 7C 9D 23 78 */	mr r29, r4
/* 8145EB3C | 7C 7C 1B 78 */	mr r28, r3
/* 8145EB40 | 7C BE 2B 78 */	mr r30, r5
/* 8145EB44 | 3B E0 00 00 */	li r31, 0x0
/* 8145EB48 | 7F A3 EB 78 */	mr r3, r29
/* 8145EB4C | 4B FF D9 DD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145EB50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EB54 | 41 82 00 30 */	beq .L_8145EB84
/* 8145EB58 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145EB5C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EB60 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EB64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EB68 | 41 82 00 1C */	beq .L_8145EB84
/* 8145EB6C | C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8145EB70 | 7F 83 E3 78 */	mr r3, r28
/* 8145EB74 | 7F C4 F3 78 */	mr r4, r30
/* 8145EB78 | 4B FE CE 75 */	bl CHANSVmSetFloat
/* 8145EB7C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EB80 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145EB84:
/* 8145EB84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EB88 | 7F E3 FB 78 */	mr r3, r31
/* 8145EB8C | 48 19 A9 85 */	bl _restgpr_28
/* 8145EB90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EB94 | 7C 08 03 A6 */	mtlr r0
/* 8145EB98 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EB9C | 4E 80 00 20 */	blr
.endfn get_min_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x618 | 0x8145EBA0 | size: 0x7C
# ipl::cs::anim::get_current_frame(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_current_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EBA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145EBA4 | 7C 08 02 A6 */	mflr r0
/* 8145EBA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145EBAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EBB0 | 48 19 A9 15 */	bl _savegpr_28
/* 8145EBB4 | 7C 9D 23 78 */	mr r29, r4
/* 8145EBB8 | 7C 7C 1B 78 */	mr r28, r3
/* 8145EBBC | 7C BE 2B 78 */	mr r30, r5
/* 8145EBC0 | 3B E0 00 00 */	li r31, 0x0
/* 8145EBC4 | 7F A3 EB 78 */	mr r3, r29
/* 8145EBC8 | 4B FF D9 61 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145EBCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EBD0 | 41 82 00 30 */	beq .L_8145EC00
/* 8145EBD4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145EBD8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EBDC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EBE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EBE4 | 41 82 00 1C */	beq .L_8145EC00
/* 8145EBE8 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8145EBEC | 7F 83 E3 78 */	mr r3, r28
/* 8145EBF0 | 7F C4 F3 78 */	mr r4, r30
/* 8145EBF4 | 4B FE CD F9 */	bl CHANSVmSetFloat
/* 8145EBF8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EBFC | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145EC00:
/* 8145EC00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EC04 | 7F E3 FB 78 */	mr r3, r31
/* 8145EC08 | 48 19 A9 09 */	bl _restgpr_28
/* 8145EC0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EC10 | 7C 08 03 A6 */	mtlr r0
/* 8145EC14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EC18 | 4E 80 00 20 */	blr
.endfn get_current_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x694 | 0x8145EC1C | size: 0x80
# ipl::cs::anim::get_type(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_type__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EC1C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145EC20 | 7C 08 02 A6 */	mflr r0
/* 8145EC24 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145EC28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EC2C | 48 19 A8 99 */	bl _savegpr_28
/* 8145EC30 | 7C 9D 23 78 */	mr r29, r4
/* 8145EC34 | 7C 7C 1B 78 */	mr r28, r3
/* 8145EC38 | 7C BE 2B 78 */	mr r30, r5
/* 8145EC3C | 3B E0 00 00 */	li r31, 0x0
/* 8145EC40 | 7F A3 EB 78 */	mr r3, r29
/* 8145EC44 | 4B FF D8 E5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145EC48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EC4C | 41 82 00 34 */	beq .L_8145EC80
/* 8145EC50 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145EC54 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EC58 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145EC5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EC60 | 41 82 00 20 */	beq .L_8145EC80
/* 8145EC64 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8145EC68 | 7F 83 E3 78 */	mr r3, r28
/* 8145EC6C | 7F C4 F3 78 */	mr r4, r30
/* 8145EC70 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145EC74 | 4B FE CD 25 */	bl CHANSVmSetInteger
/* 8145EC78 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EC7C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145EC80:
/* 8145EC80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EC84 | 7F E3 FB 78 */	mr r3, r31
/* 8145EC88 | 48 19 A8 89 */	bl _restgpr_28
/* 8145EC8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EC90 | 7C 08 03 A6 */	mtlr r0
/* 8145EC94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EC98 | 4E 80 00 20 */	blr
.endfn get_type__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x714 | 0x8145EC9C | size: 0x7C
# ipl::cs::anim::get_delta(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_delta__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EC9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145ECA0 | 7C 08 02 A6 */	mflr r0
/* 8145ECA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145ECA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145ECAC | 48 19 A8 19 */	bl _savegpr_28
/* 8145ECB0 | 7C 9D 23 78 */	mr r29, r4
/* 8145ECB4 | 7C 7C 1B 78 */	mr r28, r3
/* 8145ECB8 | 7C BE 2B 78 */	mr r30, r5
/* 8145ECBC | 3B E0 00 00 */	li r31, 0x0
/* 8145ECC0 | 7F A3 EB 78 */	mr r3, r29
/* 8145ECC4 | 4B FF D8 65 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145ECC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ECCC | 41 82 00 30 */	beq .L_8145ECFC
/* 8145ECD0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145ECD4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145ECD8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145ECDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ECE0 | 41 82 00 1C */	beq .L_8145ECFC
/* 8145ECE4 | C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8145ECE8 | 7F 83 E3 78 */	mr r3, r28
/* 8145ECEC | 7F C4 F3 78 */	mr r4, r30
/* 8145ECF0 | 4B FE CC FD */	bl CHANSVmSetFloat
/* 8145ECF4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145ECF8 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145ECFC:
/* 8145ECFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145ED00 | 7F E3 FB 78 */	mr r3, r31
/* 8145ED04 | 48 19 A8 0D */	bl _restgpr_28
/* 8145ED08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145ED0C | 7C 08 03 A6 */	mtlr r0
/* 8145ED10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145ED14 | 4E 80 00 20 */	blr
.endfn get_delta__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x790 | 0x8145ED18 | size: 0x74
# ipl::cs::anim::_ctor(CHANSVm*, CHANSVmObjHdr*, unsigned long)
.fn _ctor__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrUl, global
/* 8145ED18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145ED1C | 7C 08 02 A6 */	mflr r0
/* 8145ED20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145ED24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145ED28 | 48 19 A7 9D */	bl _savegpr_28
/* 8145ED2C | 7C BE 2B 78 */	mr r30, r5
/* 8145ED30 | 7C 7C 1B 78 */	mr r28, r3
/* 8145ED34 | 7C 9D 23 78 */	mr r29, r4
/* 8145ED38 | 3B E0 00 00 */	li r31, 0x0
/* 8145ED3C | 38 A0 00 04 */	li r5, 0x4
/* 8145ED40 | 4B FE BF 15 */	bl CHANSVmNewObjData
/* 8145ED44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ED48 | 41 82 00 28 */	beq .L_8145ED70
/* 8145ED4C | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 8145ED50 | 38 00 00 08 */	li r0, 0x8
/* 8145ED54 | 7F 83 E3 78 */	mr r3, r28
/* 8145ED58 | 38 8D 99 30 */	li r4, lbl_81697970@sda21
/* 8145ED5C | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8145ED60 | 4B FE DA 15 */	bl CHANSVmFindNativeClass
/* 8145ED64 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145ED68 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8145ED6C | 7F E0 19 10 */	subfe r31, r0, r3
.L_8145ED70:
/* 8145ED70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145ED74 | 7F E3 FB 78 */	mr r3, r31
/* 8145ED78 | 48 19 A7 99 */	bl _restgpr_28
/* 8145ED7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145ED80 | 7C 08 03 A6 */	mtlr r0
/* 8145ED84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145ED88 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrUl

# .text:0x804 | 0x8145ED8C | size: 0x98
# ipl::cs::anim::init(CHANSVm*)
.fn init__Q33ipl2cs4animFP7CHANSVm, global
/* 8145ED8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145ED90 | 7C 08 02 A6 */	mflr r0
/* 8145ED94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145ED98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145ED9C | 48 19 A7 2D */	bl _savegpr_29
/* 8145EDA0 | 7C 7D 1B 78 */	mr r29, r3
/* 8145EDA4 | 3B E0 00 00 */	li r31, 0x0
/* 8145EDA8 | 38 8D 99 30 */	li r4, lbl_81697970@sda21
/* 8145EDAC | 38 A0 00 00 */	li r5, 0x0
/* 8145EDB0 | 38 C0 00 00 */	li r6, 0x0
/* 8145EDB4 | 4B FE DB 21 */	bl CHANSVmAddNativeClass
/* 8145EDB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EDBC | 7C 7E 1B 78 */	mr r30, r3
/* 8145EDC0 | 41 82 00 48 */	beq .L_8145EE08
/* 8145EDC4 | 3C A0 81 61 */	lis r5, lbl_816177F8@ha
/* 8145EDC8 | 7F A3 EB 78 */	mr r3, r29
/* 8145EDCC | 7F C4 F3 78 */	mr r4, r30
/* 8145EDD0 | 38 C0 00 0F */	li r6, 0xf
/* 8145EDD4 | 38 A5 77 F8 */	addi r5, r5, lbl_816177F8@l
/* 8145EDD8 | 4B FE DC 99 */	bl CHANSVmAddNativeMethodList
/* 8145EDDC | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EDE0 | 3C A0 81 61 */	lis r5, lbl_81617870@ha
/* 8145EDE4 | 7F A3 EB 78 */	mr r3, r29
/* 8145EDE8 | 7F C4 F3 78 */	mr r4, r30
/* 8145EDEC | 54 1F D9 7E */	srwi r31, r0, 5
/* 8145EDF0 | 38 A5 78 70 */	addi r5, r5, lbl_81617870@l
/* 8145EDF4 | 38 C0 00 04 */	li r6, 0x4
/* 8145EDF8 | 4B FE DE 61 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145EDFC | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EE00 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8145EE04 | 7F FF 00 38 */	and r31, r31, r0
.L_8145EE08:
/* 8145EE08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EE0C | 7F E3 FB 78 */	mr r3, r31
/* 8145EE10 | 48 19 A7 05 */	bl _restgpr_29
/* 8145EE14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EE18 | 7C 08 03 A6 */	mtlr r0
/* 8145EE1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EE20 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs4animFP7CHANSVm

# 0x816177F8..0x816178A0 | size: 0xA8
.rodata
.balign 8

# .rodata:0x0 | 0x816177F8 | size: 0x78
.obj lbl_816177F8, global
	.4byte lbl_81697975
	.4byte start__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169797B
	.4byte restart__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697983
	.4byte stop__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A958
	.4byte is_playing__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A962
	.4byte init_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A96C
	.4byte set_max_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A978
	.4byte set_min_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A984
	.4byte set_current_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697988
	.4byte set_type__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A994
	.4byte set_delta__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A99D
	.4byte get_max_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A9A9
	.4byte get_min_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A9B5
	.4byte get_current_frame__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697990
	.4byte get_type__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A9C5
	.4byte get_delta__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj lbl_816177F8

# .rodata:0x78 | 0x81617870 | size: 0x30
.obj lbl_81617870, global
	.4byte lbl_8166A9CE
	.4byte "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A9DC
	.4byte "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A9EB
	.4byte "get_int<2>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A9F6
	.4byte "get_int<3>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
.endobj lbl_81617870

# 0x8166A958..0x8166AA08 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x8166A958 | size: 0xA
.obj lbl_8166A958, global
	.string "isPlaying"
.endobj lbl_8166A958

# .data:0xA | 0x8166A962 | size: 0xA
.obj lbl_8166A962, global
	.string "initFrame"
.endobj lbl_8166A962

# .data:0x14 | 0x8166A96C | size: 0xC
.obj lbl_8166A96C, global
	.string "setMaxFrame"
.endobj lbl_8166A96C

# .data:0x20 | 0x8166A978 | size: 0xC
.obj lbl_8166A978, global
	.string "setMinFrame"
.endobj lbl_8166A978

# .data:0x2C | 0x8166A984 | size: 0x10
.obj lbl_8166A984, global
	.string "setCurrentFrame"
.endobj lbl_8166A984

# .data:0x3C | 0x8166A994 | size: 0x9
.obj lbl_8166A994, global
	.string "setDelta"
.endobj lbl_8166A994

# .data:0x45 | 0x8166A99D | size: 0xC
.obj lbl_8166A99D, global
	.string "getMaxFrame"
.endobj lbl_8166A99D

# .data:0x51 | 0x8166A9A9 | size: 0xC
.obj lbl_8166A9A9, global
	.string "getMinFrame"
.endobj lbl_8166A9A9

# .data:0x5D | 0x8166A9B5 | size: 0x10
.obj lbl_8166A9B5, global
	.string "getCurrentFrame"
.endobj lbl_8166A9B5

# .data:0x6D | 0x8166A9C5 | size: 0x9
.obj lbl_8166A9C5, global
	.string "getDelta"
.endobj lbl_8166A9C5

# .data:0x76 | 0x8166A9CE | size: 0xE
.obj lbl_8166A9CE, global
	.string "*TYPE_FORWARD"
.endobj lbl_8166A9CE

# .data:0x84 | 0x8166A9DC | size: 0xF
.obj lbl_8166A9DC, global
	.string "*TYPE_BACKWARD"
.endobj lbl_8166A9DC

# .data:0x93 | 0x8166A9EB | size: 0xB
.obj lbl_8166A9EB, global
	.string "*TYPE_LOOP"
.endobj lbl_8166A9EB

# .data:0x9E | 0x8166A9F6 | size: 0x12
.obj lbl_8166A9F6, global
	.4byte 0x2A545950
	.4byte 0x455F414C
	.4byte 0x5445524E
	.4byte 0x41544500
	.2byte 0x0000
.endobj lbl_8166A9F6

# 0x81697970..0x81697998 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697970 | size: 0x5
.obj lbl_81697970, global
	.string "Anim"
.endobj lbl_81697970

# .sdata:0x5 | 0x81697975 | size: 0x6
.obj lbl_81697975, global
	.string "start"
.endobj lbl_81697975

# .sdata:0xB | 0x8169797B | size: 0x8
.obj lbl_8169797B, global
	.string "restart"
.endobj lbl_8169797B

# .sdata:0x13 | 0x81697983 | size: 0x5
.obj lbl_81697983, global
	.string "stop"
.endobj lbl_81697983

# .sdata:0x18 | 0x81697988 | size: 0x8
.obj lbl_81697988, global
	.string "setType"
.endobj lbl_81697988

# .sdata:0x20 | 0x81697990 | size: 0x8
.obj lbl_81697990, global
	.string "getType"
.endobj lbl_81697990
