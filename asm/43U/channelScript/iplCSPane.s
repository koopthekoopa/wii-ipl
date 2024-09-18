.include "macros.inc"
.file "iplCSPane.cpp"

# 0x81458588..0x81459C34 | size: 0x16AC
.text
.balign 4

# .text:0x0 | 0x81458588 | size: 0x70
# ipl::cs::pane::show(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn show__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458588 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145858C | 7C 08 02 A6 */	mflr r0
/* 81458590 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81458594 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81458598 | 3B E0 00 00 */	li r31, 0x0
/* 8145859C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814585A0 | 7C 9E 23 78 */	mr r30, r4
/* 814585A4 | 7F C3 F3 78 */	mr r3, r30
/* 814585A8 | 48 00 3F 81 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 814585AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814585B0 | 41 82 00 2C */	beq .L_814585DC
/* 814585B4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814585B8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814585BC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814585C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814585C4 | 41 82 00 18 */	beq .L_814585DC
/* 814585C8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814585CC | 3B E0 00 01 */	li r31, 0x1
/* 814585D0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814585D4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814585D8 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814585DC:
/* 814585DC | 7F E3 FB 78 */	mr r3, r31
/* 814585E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814585E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814585E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814585EC | 7C 08 03 A6 */	mtlr r0
/* 814585F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814585F4 | 4E 80 00 20 */	blr
.endfn show__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x70 | 0x814585F8 | size: 0x6C
# ipl::cs::pane::hide(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn hide__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814585F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814585FC | 7C 08 02 A6 */	mflr r0
/* 81458600 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81458604 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81458608 | 3B E0 00 00 */	li r31, 0x0
/* 8145860C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81458610 | 7C 9E 23 78 */	mr r30, r4
/* 81458614 | 7F C3 F3 78 */	mr r3, r30
/* 81458618 | 48 00 3F 11 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145861C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458620 | 41 82 00 28 */	beq .L_81458648
/* 81458624 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81458628 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145862C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458634 | 41 82 00 14 */	beq .L_81458648
/* 81458638 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8145863C | 3B E0 00 01 */	li r31, 0x1
/* 81458640 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81458644 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_81458648:
/* 81458648 | 7F E3 FB 78 */	mr r3, r31
/* 8145864C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81458650 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81458654 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81458658 | 7C 08 03 A6 */	mtlr r0
/* 8145865C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81458660 | 4E 80 00 20 */	blr
.endfn hide__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xDC | 0x81458664 | size: 0x9C
# ipl::cs::pane::get_material(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_material__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458664 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458668 | 7C 08 02 A6 */	mflr r0
/* 8145866C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458670 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458674 | 48 1A 0E 51 */	bl _savegpr_28
/* 81458678 | 7C 9D 23 78 */	mr r29, r4
/* 8145867C | 7C 7C 1B 78 */	mr r28, r3
/* 81458680 | 7C BE 2B 78 */	mr r30, r5
/* 81458684 | 3B E0 00 00 */	li r31, 0x0
/* 81458688 | 7F A3 EB 78 */	mr r3, r29
/* 8145868C | 48 00 3E 9D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458694 | 41 82 00 50 */	beq .L_814586E4
/* 81458698 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145869C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814586A0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814586A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814586A8 | 41 82 00 3C */	beq .L_814586E4
/* 814586AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814586B0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814586B4 | 7D 89 03 A6 */	mtctr r12
/* 814586B8 | 4E 80 04 21 */	bctrl
/* 814586BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814586C0 | 7C 65 1B 78 */	mr r5, r3
/* 814586C4 | 3B E0 00 00 */	li r31, 0x0
/* 814586C8 | 41 82 00 18 */	beq .L_814586E0
/* 814586CC | 7F 83 E3 78 */	mr r3, r28
/* 814586D0 | 7F C4 F3 78 */	mr r4, r30
/* 814586D4 | 48 00 1C 6D */	bl _ctor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrUl
/* 814586D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814586DC | 41 82 00 08 */	beq .L_814586E4
.L_814586E0:
/* 814586E0 | 3B E0 00 01 */	li r31, 0x1
.L_814586E4:
/* 814586E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814586E8 | 7F E3 FB 78 */	mr r3, r31
/* 814586EC | 48 1A 0E 25 */	bl _restgpr_28
/* 814586F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814586F4 | 7C 08 03 A6 */	mtlr r0
/* 814586F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814586FC | 4E 80 00 20 */	blr
.endfn get_material__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x178 | 0x81458700 | size: 0xB0
# ipl::cs::pane::get_string(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_string__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458700 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458704 | 7C 08 02 A6 */	mflr r0
/* 81458708 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145870C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458710 | 48 1A 0D B1 */	bl _savegpr_27
/* 81458714 | 7C 9D 23 78 */	mr r29, r4
/* 81458718 | 7C 7B 1B 78 */	mr r27, r3
/* 8145871C | 7C BC 2B 78 */	mr r28, r5
/* 81458720 | 3B C0 00 00 */	li r30, 0x0
/* 81458724 | 7F A3 EB 78 */	mr r3, r29
/* 81458728 | 48 00 3E 01 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145872C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458730 | 41 82 00 64 */	beq .L_81458794
/* 81458734 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81458738 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145873C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458744 | 41 82 00 50 */	beq .L_81458794
/* 81458748 | 4B EE D7 1D */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8145874C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458750 | 41 82 00 44 */	beq .L_81458794
/* 81458754 | 83 E3 00 D4 */	lwz r31, 0xd4(r3)
/* 81458758 | 7F E3 FB 78 */	mr r3, r31
/* 8145875C | 48 1A FF 51 */	bl fn_816086AC
/* 81458760 | 7C 7D 1B 78 */	mr r29, r3
/* 81458764 | 7F 63 DB 78 */	mr r3, r27
/* 81458768 | 7F 84 E3 78 */	mr r4, r28
/* 8145876C | 57 A5 08 3C */	slwi r5, r29, 1
/* 81458770 | 4B FF 27 15 */	bl CHANSVmNewStringObject
/* 81458774 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458778 | 41 82 00 1C */	beq .L_81458794
/* 8145877C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458780 | 7F E4 FB 78 */	mr r4, r31
/* 81458784 | 7F A5 EB 78 */	mr r5, r29
/* 81458788 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145878C | 48 1A FF 59 */	bl fn_816086E4
/* 81458790 | 3B C0 00 01 */	li r30, 0x1
.L_81458794:
/* 81458794 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458798 | 7F C3 F3 78 */	mr r3, r30
/* 8145879C | 48 1A 0D 71 */	bl _restgpr_27
/* 814587A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814587A4 | 7C 08 03 A6 */	mtlr r0
/* 814587A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814587AC | 4E 80 00 20 */	blr
.endfn get_string__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x228 | 0x814587B0 | size: 0xEC
# ipl::cs::pane::set_string(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_string__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814587B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814587B4 | 7C 08 02 A6 */	mflr r0
/* 814587B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814587BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814587C0 | 48 1A 0D 01 */	bl _savegpr_27
/* 814587C4 | 7C 9B 23 78 */	mr r27, r4
/* 814587C8 | 3B E0 00 00 */	li r31, 0x0
/* 814587CC | 38 80 00 00 */	li r4, 0x0
/* 814587D0 | 4B FF 3F 69 */	bl CHANSVmGetArgString
/* 814587D4 | 7C 7E 1B 78 */	mr r30, r3
/* 814587D8 | 48 00 3D 51 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 814587DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814587E0 | 41 82 00 A0 */	beq .L_81458880
/* 814587E4 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814587E8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 814587EC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 814587F0 | 38 A0 00 04 */	li r5, 0x4
/* 814587F4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814587F8 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 814587FC | 54 04 F8 7E */	srwi r4, r0, 1
/* 81458800 | 3B A4 00 01 */	addi r29, r4, 0x1
/* 81458804 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81458808 | 57 A3 08 3C */	slwi r3, r29, 1
/* 8145880C | 48 19 F8 C9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81458810 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458814 | 7C 7C 1B 78 */	mr r28, r3
/* 81458818 | 41 82 00 68 */	beq .L_81458880
/* 8145881C | 57 A5 08 3C */	slwi r5, r29, 1
/* 81458820 | 38 80 00 00 */	li r4, 0x0
/* 81458824 | 4B ED 7B 11 */	bl memset
/* 81458828 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8145882C | 7F 83 E3 78 */	mr r3, r28
/* 81458830 | 38 BD FF FF */	subi r5, r29, 0x1
/* 81458834 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81458838 | 48 1A FE AD */	bl fn_816086E4
/* 8145883C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81458840 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458844 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145884C | 41 82 00 2C */	beq .L_81458878
/* 81458850 | 4B EE D6 15 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81458854 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458858 | 41 82 00 20 */	beq .L_81458878
/* 8145885C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81458860 | 7F 84 E3 78 */	mr r4, r28
/* 81458864 | 38 A0 00 00 */	li r5, 0x0
/* 81458868 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8145886C | 7D 89 03 A6 */	mtctr r12
/* 81458870 | 4E 80 04 21 */	bctrl
/* 81458874 | 3B E0 00 01 */	li r31, 0x1
.L_81458878:
/* 81458878 | 7F 83 E3 78 */	mr r3, r28
/* 8145887C | 48 19 F8 71 */	bl __dla__FPv
.L_81458880:
/* 81458880 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458884 | 7F E3 FB 78 */	mr r3, r31
/* 81458888 | 48 1A 0C 85 */	bl _restgpr_27
/* 8145888C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458890 | 7C 08 03 A6 */	mtlr r0
/* 81458894 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458898 | 4E 80 00 20 */	blr
.endfn set_string__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x314 | 0x8145889C | size: 0x90
# ipl::cs::pane::get_scale(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_scale__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145889C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814588A0 | 7C 08 02 A6 */	mflr r0
/* 814588A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814588A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814588AC | 48 1A 0C 19 */	bl _savegpr_28
/* 814588B0 | 7C 9D 23 78 */	mr r29, r4
/* 814588B4 | 7C 7C 1B 78 */	mr r28, r3
/* 814588B8 | 7C BE 2B 78 */	mr r30, r5
/* 814588BC | 3B E0 00 00 */	li r31, 0x0
/* 814588C0 | 7F A3 EB 78 */	mr r3, r29
/* 814588C4 | 48 00 3C 65 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 814588C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814588CC | 41 82 00 44 */	beq .L_81458910
/* 814588D0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814588D4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814588D8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814588DC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814588E0 | 41 82 00 30 */	beq .L_81458910
/* 814588E4 | C0 24 00 44 */	lfs f1, 0x44(r4)
/* 814588E8 | 7F 83 E3 78 */	mr r3, r28
/* 814588EC | C0 44 00 48 */	lfs f2, 0x48(r4)
/* 814588F0 | 7F C4 F3 78 */	mr r4, r30
/* 814588F4 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 814588F8 | C0 62 8B C0 */	lfs f3, lbl_81694FC0@sda21(r0)
/* 814588FC | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 81458900 | 48 00 36 61 */	bl _ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrfff
/* 81458904 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81458908 | 7C 00 00 34 */	cntlzw r0, r0
/* 8145890C | 54 1F D9 7E */	srwi r31, r0, 5
.L_81458910:
/* 81458910 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458914 | 7F E3 FB 78 */	mr r3, r31
/* 81458918 | 48 1A 0B F9 */	bl _restgpr_28
/* 8145891C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458920 | 7C 08 03 A6 */	mtlr r0
/* 81458924 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458928 | 4E 80 00 20 */	blr
.endfn get_scale__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3A4 | 0x8145892C | size: 0x88
# ipl::cs::pane::set_scale(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_scale__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145892C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81458930 | 7C 08 02 A6 */	mflr r0
/* 81458934 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81458938 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145893C | 48 1A 0B 8D */	bl _savegpr_29
/* 81458940 | 7C 9F 23 78 */	mr r31, r4
/* 81458944 | 7C 7D 1B 78 */	mr r29, r3
/* 81458948 | 7F E3 FB 78 */	mr r3, r31
/* 8145894C | 3B C0 00 00 */	li r30, 0x0
/* 81458950 | 48 00 3B D9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458954 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458958 | 41 82 00 40 */	beq .L_81458998
/* 8145895C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81458960 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458964 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81458968 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145896C | 41 82 00 2C */	beq .L_81458998
/* 81458970 | 7F A4 EB 78 */	mr r4, r29
/* 81458974 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81458978 | 48 00 10 01 */	bl get_vec___Q33ipl2cs4paneFP7CHANSVm
/* 8145897C | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81458980 | 3B C0 00 01 */	li r30, 0x1
/* 81458984 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81458988 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8145898C | D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 81458990 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81458994 | D0 3F 00 48 */	stfs f1, 0x48(r31)
.L_81458998:
/* 81458998 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145899C | 7F C3 F3 78 */	mr r3, r30
/* 814589A0 | 48 1A 0B 75 */	bl _restgpr_29
/* 814589A4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814589A8 | 7C 08 03 A6 */	mtlr r0
/* 814589AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814589B0 | 4E 80 00 20 */	blr
.endfn set_scale__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x42C | 0x814589B4 | size: 0x94
# ipl::cs::pane::get_translate(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_translate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814589B4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814589B8 | 7C 08 02 A6 */	mflr r0
/* 814589BC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814589C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814589C4 | 48 1A 0B 01 */	bl _savegpr_28
/* 814589C8 | 7C 9D 23 78 */	mr r29, r4
/* 814589CC | 7C 7C 1B 78 */	mr r28, r3
/* 814589D0 | 7C BE 2B 78 */	mr r30, r5
/* 814589D4 | 3B E0 00 00 */	li r31, 0x0
/* 814589D8 | 7F A3 EB 78 */	mr r3, r29
/* 814589DC | 48 00 3B 4D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 814589E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814589E4 | 41 82 00 48 */	beq .L_81458A2C
/* 814589E8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814589EC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814589F0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814589F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814589F8 | 41 82 00 34 */	beq .L_81458A2C
/* 814589FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458A00 | 38 84 00 2C */	addi r4, r4, 0x2c
/* 81458A04 | 4B F3 EB A1 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 81458A08 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81458A0C | 7F 83 E3 78 */	mr r3, r28
/* 81458A10 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81458A14 | 7F C4 F3 78 */	mr r4, r30
/* 81458A18 | C0 61 00 10 */	lfs f3, 0x10(r1)
/* 81458A1C | 48 00 35 45 */	bl _ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrfff
/* 81458A20 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81458A24 | 7C 00 00 34 */	cntlzw r0, r0
/* 81458A28 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81458A2C:
/* 81458A2C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458A30 | 7F E3 FB 78 */	mr r3, r31
/* 81458A34 | 48 1A 0A DD */	bl _restgpr_28
/* 81458A38 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81458A3C | 7C 08 03 A6 */	mtlr r0
/* 81458A40 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81458A44 | 4E 80 00 20 */	blr
.endfn get_translate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4C0 | 0x81458A48 | size: 0x7C
# ipl::cs::pane::set_translate(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_translate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458A48 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81458A4C | 7C 08 02 A6 */	mflr r0
/* 81458A50 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81458A54 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458A58 | 48 1A 0A 71 */	bl _savegpr_29
/* 81458A5C | 7C 9F 23 78 */	mr r31, r4
/* 81458A60 | 7C 7D 1B 78 */	mr r29, r3
/* 81458A64 | 7F E3 FB 78 */	mr r3, r31
/* 81458A68 | 3B C0 00 00 */	li r30, 0x0
/* 81458A6C | 48 00 3A BD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458A70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458A74 | 41 82 00 34 */	beq .L_81458AA8
/* 81458A78 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81458A7C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458A80 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81458A84 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458A88 | 41 82 00 20 */	beq .L_81458AA8
/* 81458A8C | 7F A4 EB 78 */	mr r4, r29
/* 81458A90 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458A94 | 48 00 0E E5 */	bl get_vec___Q33ipl2cs4paneFP7CHANSVm
/* 81458A98 | 38 7F 00 2C */	addi r3, r31, 0x2c
/* 81458A9C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81458AA0 | 4B EE BB E5 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 81458AA4 | 3B C0 00 01 */	li r30, 0x1
.L_81458AA8:
/* 81458AA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458AAC | 7F C3 F3 78 */	mr r3, r30
/* 81458AB0 | 48 1A 0A 65 */	bl _restgpr_29
/* 81458AB4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81458AB8 | 7C 08 03 A6 */	mtlr r0
/* 81458ABC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81458AC0 | 4E 80 00 20 */	blr
.endfn set_translate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x53C | 0x81458AC4 | size: 0x94
# ipl::cs::pane::get_rotate(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_rotate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458AC4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81458AC8 | 7C 08 02 A6 */	mflr r0
/* 81458ACC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81458AD0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458AD4 | 48 1A 09 F1 */	bl _savegpr_28
/* 81458AD8 | 7C 9D 23 78 */	mr r29, r4
/* 81458ADC | 7C 7C 1B 78 */	mr r28, r3
/* 81458AE0 | 7C BE 2B 78 */	mr r30, r5
/* 81458AE4 | 3B E0 00 00 */	li r31, 0x0
/* 81458AE8 | 7F A3 EB 78 */	mr r3, r29
/* 81458AEC | 48 00 3A 3D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458AF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458AF4 | 41 82 00 48 */	beq .L_81458B3C
/* 81458AF8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81458AFC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458B00 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81458B04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81458B08 | 41 82 00 34 */	beq .L_81458B3C
/* 81458B0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458B10 | 38 84 00 38 */	addi r4, r4, 0x38
/* 81458B14 | 4B F3 EA 91 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 81458B18 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81458B1C | 7F 83 E3 78 */	mr r3, r28
/* 81458B20 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81458B24 | 7F C4 F3 78 */	mr r4, r30
/* 81458B28 | C0 61 00 10 */	lfs f3, 0x10(r1)
/* 81458B2C | 48 00 34 35 */	bl _ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrfff
/* 81458B30 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81458B34 | 7C 00 00 34 */	cntlzw r0, r0
/* 81458B38 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81458B3C:
/* 81458B3C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458B40 | 7F E3 FB 78 */	mr r3, r31
/* 81458B44 | 48 1A 09 CD */	bl _restgpr_28
/* 81458B48 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81458B4C | 7C 08 03 A6 */	mtlr r0
/* 81458B50 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81458B54 | 4E 80 00 20 */	blr
.endfn get_rotate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x5D0 | 0x81458B58 | size: 0x7C
# ipl::cs::pane::set_rotate(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_rotate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458B58 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81458B5C | 7C 08 02 A6 */	mflr r0
/* 81458B60 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81458B64 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458B68 | 48 1A 09 61 */	bl _savegpr_29
/* 81458B6C | 7C 9F 23 78 */	mr r31, r4
/* 81458B70 | 7C 7D 1B 78 */	mr r29, r3
/* 81458B74 | 7F E3 FB 78 */	mr r3, r31
/* 81458B78 | 3B C0 00 00 */	li r30, 0x0
/* 81458B7C | 48 00 39 AD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458B84 | 41 82 00 34 */	beq .L_81458BB8
/* 81458B88 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81458B8C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458B90 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81458B94 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458B98 | 41 82 00 20 */	beq .L_81458BB8
/* 81458B9C | 7F A4 EB 78 */	mr r4, r29
/* 81458BA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458BA4 | 48 00 0D D5 */	bl get_vec___Q33ipl2cs4paneFP7CHANSVm
/* 81458BA8 | 38 7F 00 38 */	addi r3, r31, 0x38
/* 81458BAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81458BB0 | 4B EE BA D5 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 81458BB4 | 3B C0 00 01 */	li r30, 0x1
.L_81458BB8:
/* 81458BB8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458BBC | 7F C3 F3 78 */	mr r3, r30
/* 81458BC0 | 48 1A 09 55 */	bl _restgpr_29
/* 81458BC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81458BC8 | 7C 08 03 A6 */	mtlr r0
/* 81458BCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81458BD0 | 4E 80 00 20 */	blr
.endfn set_rotate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x64C | 0x81458BD4 | size: 0x90
# ipl::cs::pane::get_size(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458BD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458BD8 | 7C 08 02 A6 */	mflr r0
/* 81458BDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458BE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458BE4 | 48 1A 08 E1 */	bl _savegpr_28
/* 81458BE8 | 7C 9D 23 78 */	mr r29, r4
/* 81458BEC | 7C 7C 1B 78 */	mr r28, r3
/* 81458BF0 | 7C BE 2B 78 */	mr r30, r5
/* 81458BF4 | 3B E0 00 00 */	li r31, 0x0
/* 81458BF8 | 7F A3 EB 78 */	mr r3, r29
/* 81458BFC | 48 00 39 2D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458C00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458C04 | 41 82 00 44 */	beq .L_81458C48
/* 81458C08 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81458C0C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458C10 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81458C14 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81458C18 | 41 82 00 30 */	beq .L_81458C48
/* 81458C1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458C20 | 38 84 00 4C */	addi r4, r4, 0x4c
/* 81458C24 | 48 00 00 41 */	bl __ct__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 81458C28 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81458C2C | 7F 83 E3 78 */	mr r3, r28
/* 81458C30 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81458C34 | 7F C4 F3 78 */	mr r4, r30
/* 81458C38 | 48 00 55 E1 */	bl _ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrff
/* 81458C3C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81458C40 | 7C 00 00 34 */	cntlzw r0, r0
/* 81458C44 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81458C48:
/* 81458C48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458C4C | 7F E3 FB 78 */	mr r3, r31
/* 81458C50 | 48 1A 08 C1 */	bl _restgpr_28
/* 81458C54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458C58 | 7C 08 03 A6 */	mtlr r0
/* 81458C5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458C60 | 4E 80 00 20 */	blr
.endfn get_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x6DC | 0x81458C64 | size: 0x14
# nw4r::lyt::Size::Size(const nw4r::lyt::Size&)
.fn __ct__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size, weak
/* 81458C64 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 81458C68 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 81458C6C | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 81458C70 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 81458C74 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size

# .text:0x6F0 | 0x81458C78 | size: 0x7C
# ipl::cs::pane::set_size(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458C78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458C7C | 7C 08 02 A6 */	mflr r0
/* 81458C80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458C84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458C88 | 48 1A 08 41 */	bl _savegpr_29
/* 81458C8C | 7C 9F 23 78 */	mr r31, r4
/* 81458C90 | 7C 7D 1B 78 */	mr r29, r3
/* 81458C94 | 7F E3 FB 78 */	mr r3, r31
/* 81458C98 | 3B C0 00 00 */	li r30, 0x0
/* 81458C9C | 48 00 38 8D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458CA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458CA4 | 41 82 00 34 */	beq .L_81458CD8
/* 81458CA8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81458CAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458CB0 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81458CB4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458CB8 | 41 82 00 20 */	beq .L_81458CD8
/* 81458CBC | 7F A4 EB 78 */	mr r4, r29
/* 81458CC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458CC4 | 48 00 0D B9 */	bl get_size___Q33ipl2cs4paneFP7CHANSVm
/* 81458CC8 | 38 7F 00 4C */	addi r3, r31, 0x4c
/* 81458CCC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81458CD0 | 4B F5 AA 85 */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 81458CD4 | 3B C0 00 01 */	li r30, 0x1
.L_81458CD8:
/* 81458CD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458CDC | 7F C3 F3 78 */	mr r3, r30
/* 81458CE0 | 48 1A 08 35 */	bl _restgpr_29
/* 81458CE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458CE8 | 7C 08 03 A6 */	mtlr r0
/* 81458CEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458CF0 | 4E 80 00 20 */	blr
.endfn set_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x76C | 0x81458CF4 | size: 0x80
# ipl::cs::pane::get_alpha(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_alpha__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458CF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458CF8 | 7C 08 02 A6 */	mflr r0
/* 81458CFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458D00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458D04 | 48 1A 07 C1 */	bl _savegpr_28
/* 81458D08 | 7C 9D 23 78 */	mr r29, r4
/* 81458D0C | 7C 7C 1B 78 */	mr r28, r3
/* 81458D10 | 7C BE 2B 78 */	mr r30, r5
/* 81458D14 | 3B E0 00 00 */	li r31, 0x0
/* 81458D18 | 7F A3 EB 78 */	mr r3, r29
/* 81458D1C | 48 00 38 0D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458D20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458D24 | 41 82 00 34 */	beq .L_81458D58
/* 81458D28 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81458D2C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458D30 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458D34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458D38 | 41 82 00 20 */	beq .L_81458D58
/* 81458D3C | 88 C3 00 CD */	lbz r6, 0xcd(r3)
/* 81458D40 | 7F 83 E3 78 */	mr r3, r28
/* 81458D44 | 7F C4 F3 78 */	mr r4, r30
/* 81458D48 | 38 A0 00 00 */	li r5, 0x0
/* 81458D4C | 4B FF 2C 4D */	bl CHANSVmSetInteger
/* 81458D50 | 7C 60 00 34 */	cntlzw r0, r3
/* 81458D54 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81458D58:
/* 81458D58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458D5C | 7F E3 FB 78 */	mr r3, r31
/* 81458D60 | 48 1A 07 B1 */	bl _restgpr_28
/* 81458D64 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458D68 | 7C 08 03 A6 */	mtlr r0
/* 81458D6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458D70 | 4E 80 00 20 */	blr
.endfn get_alpha__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x7EC | 0x81458D74 | size: 0x80
# ipl::cs::pane::set_alpha(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_alpha__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458D74 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458D78 | 7C 08 02 A6 */	mflr r0
/* 81458D7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458D80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458D84 | 48 1A 07 45 */	bl _savegpr_29
/* 81458D88 | 7C 9F 23 78 */	mr r31, r4
/* 81458D8C | 7C 7D 1B 78 */	mr r29, r3
/* 81458D90 | 7F E3 FB 78 */	mr r3, r31
/* 81458D94 | 3B C0 00 00 */	li r30, 0x0
/* 81458D98 | 48 00 37 91 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458DA0 | 41 82 00 38 */	beq .L_81458DD8
/* 81458DA4 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81458DA8 | 7F A3 EB 78 */	mr r3, r29
/* 81458DAC | 38 80 00 00 */	li r4, 0x0
/* 81458DB0 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81458DB4 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 81458DB8 | 4B FF 39 09 */	bl CHANSVmGetArgInteger
/* 81458DBC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458DC0 | 41 82 00 18 */	beq .L_81458DD8
/* 81458DC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458DC8 | 41 82 00 10 */	beq .L_81458DD8
/* 81458DCC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81458DD0 | 3B C0 00 01 */	li r30, 0x1
/* 81458DD4 | 98 1F 00 CD */	stb r0, 0xcd(r31)
.L_81458DD8:
/* 81458DD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458DDC | 7F C3 F3 78 */	mr r3, r30
/* 81458DE0 | 48 1A 07 35 */	bl _restgpr_29
/* 81458DE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458DE8 | 7C 08 03 A6 */	mtlr r0
/* 81458DEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458DF0 | 4E 80 00 20 */	blr
.endfn set_alpha__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x86C | 0x81458DF4 | size: 0x84
# ipl::cs::pane::become_youngest_pane(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn become_youngest_pane__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458DF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458DF8 | 7C 08 02 A6 */	mflr r0
/* 81458DFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458E00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458E04 | 48 1A 06 C5 */	bl _savegpr_29
/* 81458E08 | 7C 9E 23 78 */	mr r30, r4
/* 81458E0C | 3B A0 00 00 */	li r29, 0x0
/* 81458E10 | 7F C3 F3 78 */	mr r3, r30
/* 81458E14 | 48 00 37 15 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458E18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458E1C | 41 82 00 40 */	beq .L_81458E5C
/* 81458E20 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81458E24 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458E28 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81458E2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458E30 | 41 82 00 2C */	beq .L_81458E5C
/* 81458E34 | 83 DF 00 0C */	lwz r30, 0xc(r31)
/* 81458E38 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81458E3C | 41 82 00 20 */	beq .L_81458E5C
/* 81458E40 | 7F C3 F3 78 */	mr r3, r30
/* 81458E44 | 7F E4 FB 78 */	mr r4, r31
/* 81458E48 | 48 0C 5F E1 */	bl RemoveChild__Q34nw4r3lyt4PaneFPQ34nw4r3lyt4Pane
/* 81458E4C | 7F C3 F3 78 */	mr r3, r30
/* 81458E50 | 7F E4 FB 78 */	mr r4, r31
/* 81458E54 | 48 0C 5E 95 */	bl AppendChild__Q34nw4r3lyt4PaneFPQ34nw4r3lyt4Pane
/* 81458E58 | 3B A0 00 01 */	li r29, 0x1
.L_81458E5C:
/* 81458E5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458E60 | 7F A3 EB 78 */	mr r3, r29
/* 81458E64 | 48 1A 06 B1 */	bl _restgpr_29
/* 81458E68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458E6C | 7C 08 03 A6 */	mtlr r0
/* 81458E70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458E74 | 4E 80 00 20 */	blr
.endfn become_youngest_pane__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x8F0 | 0x81458E78 | size: 0xA8
# ipl::cs::pane::get_userdata(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_userdata__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458E78 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81458E7C | 7C 08 02 A6 */	mflr r0
/* 81458E80 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81458E84 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458E88 | 48 1A 06 3D */	bl _savegpr_28
/* 81458E8C | 7C 9F 23 78 */	mr r31, r4
/* 81458E90 | 7C 7C 1B 78 */	mr r28, r3
/* 81458E94 | 7C BD 2B 78 */	mr r29, r5
/* 81458E98 | 3B C0 00 00 */	li r30, 0x0
/* 81458E9C | 7F E3 FB 78 */	mr r3, r31
/* 81458EA0 | 48 00 36 89 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458EA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458EA8 | 41 82 00 5C */	beq .L_81458F04
/* 81458EAC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81458EB0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81458EB4 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81458EB8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458EBC | 41 82 00 48 */	beq .L_81458F04
/* 81458EC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458EC4 | 38 80 00 00 */	li r4, 0x0
/* 81458EC8 | 38 A0 00 0A */	li r5, 0xa
/* 81458ECC | 4B ED 74 69 */	bl memset
/* 81458ED0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458ED4 | 38 9F 00 C4 */	addi r4, r31, 0xc4
/* 81458ED8 | 38 A0 00 08 */	li r5, 0x8
/* 81458EDC | 48 1A 94 E9 */	bl strncpy
/* 81458EE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458EE4 | 48 1A 00 19 */	bl strlen
/* 81458EE8 | 7C 66 1B 78 */	mr r6, r3
/* 81458EEC | 7F 83 E3 78 */	mr r3, r28
/* 81458EF0 | 7F A4 EB 78 */	mr r4, r29
/* 81458EF4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81458EF8 | 4B FF 2B E5 */	bl CHANSVmSetU16StringFromU8
/* 81458EFC | 7C 60 00 34 */	cntlzw r0, r3
/* 81458F00 | 54 1E D9 7E */	srwi r30, r0, 5
.L_81458F04:
/* 81458F04 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458F08 | 7F C3 F3 78 */	mr r3, r30
/* 81458F0C | 48 1A 06 05 */	bl _restgpr_28
/* 81458F10 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81458F14 | 7C 08 03 A6 */	mtlr r0
/* 81458F18 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81458F1C | 4E 80 00 20 */	blr
.endfn get_userdata__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x998 | 0x81458F20 | size: 0xAC
# ipl::cs::pane::set_userdata(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_userdata__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458F20 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81458F24 | 7C 08 02 A6 */	mflr r0
/* 81458F28 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81458F2C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458F30 | 48 1A 05 99 */	bl _savegpr_29
/* 81458F34 | 7C 9D 23 78 */	mr r29, r4
/* 81458F38 | 7C 7F 1B 78 */	mr r31, r3
/* 81458F3C | 7F A3 EB 78 */	mr r3, r29
/* 81458F40 | 3B C0 00 00 */	li r30, 0x0
/* 81458F44 | 48 00 35 E5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458F4C | 41 82 00 64 */	beq .L_81458FB0
/* 81458F50 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 81458F54 | 7F E3 FB 78 */	mr r3, r31
/* 81458F58 | 38 80 00 00 */	li r4, 0x0
/* 81458F5C | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81458F60 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 81458F64 | 4B FF 37 D5 */	bl CHANSVmGetArgString
/* 81458F68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81458F6C | 7C 7D 1B 78 */	mr r29, r3
/* 81458F70 | 41 82 00 40 */	beq .L_81458FB0
/* 81458F74 | 48 00 35 B5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458F78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458F7C | 41 82 00 34 */	beq .L_81458FB0
/* 81458F80 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458F84 | 38 80 00 00 */	li r4, 0x0
/* 81458F88 | 38 A0 00 0A */	li r5, 0xa
/* 81458F8C | 4B ED 73 A9 */	bl memset
/* 81458F90 | 7F A4 EB 78 */	mr r4, r29
/* 81458F94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458F98 | 38 A0 00 08 */	li r5, 0x8
/* 81458F9C | 4B FF 21 35 */	bl CHANSVmStrCpyToU8FromStringObject
/* 81458FA0 | 7F E3 FB 78 */	mr r3, r31
/* 81458FA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81458FA8 | 48 0C 5D 35 */	bl fn_8151ECDC
/* 81458FAC | 3B C0 00 01 */	li r30, 0x1
.L_81458FB0:
/* 81458FB0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81458FB4 | 7F C3 F3 78 */	mr r3, r30
/* 81458FB8 | 48 1A 05 5D */	bl _restgpr_29
/* 81458FBC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81458FC0 | 7C 08 03 A6 */	mtlr r0
/* 81458FC4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81458FC8 | 4E 80 00 20 */	blr
.endfn set_userdata__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xA44 | 0x81458FCC | size: 0x88
# ipl::cs::pane::get_line_space(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_line_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458FCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458FD0 | 7C 08 02 A6 */	mflr r0
/* 81458FD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458FD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458FDC | 48 1A 04 E9 */	bl _savegpr_28
/* 81458FE0 | 7C 9D 23 78 */	mr r29, r4
/* 81458FE4 | 7C 7C 1B 78 */	mr r28, r3
/* 81458FE8 | 7C BE 2B 78 */	mr r30, r5
/* 81458FEC | 3B E0 00 00 */	li r31, 0x0
/* 81458FF0 | 7F A3 EB 78 */	mr r3, r29
/* 81458FF4 | 48 00 35 35 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458FF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458FFC | 41 82 00 3C */	beq .L_81459038
/* 81459000 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81459004 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459008 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145900C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459010 | 41 82 00 28 */	beq .L_81459038
/* 81459014 | 4B EE CE 51 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81459018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145901C | 41 82 00 1C */	beq .L_81459038
/* 81459020 | C0 23 00 EC */	lfs f1, 0xec(r3)
/* 81459024 | 7F 83 E3 78 */	mr r3, r28
/* 81459028 | 7F C4 F3 78 */	mr r4, r30
/* 8145902C | 4B FF 29 C1 */	bl CHANSVmSetFloat
/* 81459030 | 7C 60 00 34 */	cntlzw r0, r3
/* 81459034 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81459038:
/* 81459038 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145903C | 7F E3 FB 78 */	mr r3, r31
/* 81459040 | 48 1A 04 D1 */	bl _restgpr_28
/* 81459044 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459048 | 7C 08 03 A6 */	mtlr r0
/* 8145904C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459050 | 4E 80 00 20 */	blr
.endfn get_line_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xACC | 0x81459054 | size: 0x98
# ipl::cs::pane::set_line_space(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_line_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459054 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459058 | 7C 08 02 A6 */	mflr r0
/* 8145905C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459060 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459064 | 48 1A 04 65 */	bl _savegpr_29
/* 81459068 | 7C 9E 23 78 */	mr r30, r4
/* 8145906C | 7C 7F 1B 78 */	mr r31, r3
/* 81459070 | 7F C3 F3 78 */	mr r3, r30
/* 81459074 | 3B A0 00 00 */	li r29, 0x0
/* 81459078 | 48 00 34 B1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145907C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459080 | 41 82 00 50 */	beq .L_814590D0
/* 81459084 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81459088 | 7F E3 FB 78 */	mr r3, r31
/* 8145908C | 38 80 00 00 */	li r4, 0x0
/* 81459090 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81459094 | 83 C5 00 00 */	lwz r30, 0x0(r5)
/* 81459098 | 4B FF 36 65 */	bl CHANSVmGetArgFloat
/* 8145909C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814590A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814590A4 | 41 82 00 2C */	beq .L_814590D0
/* 814590A8 | 7F C3 F3 78 */	mr r3, r30
/* 814590AC | 4B EE CD B9 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 814590B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814590B4 | 41 82 00 1C */	beq .L_814590D0
/* 814590B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814590BC | 41 82 00 14 */	beq .L_814590D0
/* 814590C0 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 814590C4 | 3B A0 00 01 */	li r29, 0x1
/* 814590C8 | FC 00 00 18 */	frsp f0, f0
/* 814590CC | D0 03 00 EC */	stfs f0, 0xec(r3)
.L_814590D0:
/* 814590D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814590D4 | 7F A3 EB 78 */	mr r3, r29
/* 814590D8 | 48 1A 04 3D */	bl _restgpr_29
/* 814590DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814590E0 | 7C 08 03 A6 */	mtlr r0
/* 814590E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814590E8 | 4E 80 00 20 */	blr
.endfn set_line_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xB64 | 0x814590EC | size: 0x88
# ipl::cs::pane::get_char_space(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_char_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814590EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814590F0 | 7C 08 02 A6 */	mflr r0
/* 814590F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814590F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814590FC | 48 1A 03 C9 */	bl _savegpr_28
/* 81459100 | 7C 9D 23 78 */	mr r29, r4
/* 81459104 | 7C 7C 1B 78 */	mr r28, r3
/* 81459108 | 7C BE 2B 78 */	mr r30, r5
/* 8145910C | 3B E0 00 00 */	li r31, 0x0
/* 81459110 | 7F A3 EB 78 */	mr r3, r29
/* 81459114 | 48 00 34 15 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459118 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145911C | 41 82 00 3C */	beq .L_81459158
/* 81459120 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81459124 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459128 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145912C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459130 | 41 82 00 28 */	beq .L_81459158
/* 81459134 | 4B EE CD 31 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81459138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145913C | 41 82 00 1C */	beq .L_81459158
/* 81459140 | C0 23 00 F0 */	lfs f1, 0xf0(r3)
/* 81459144 | 7F 83 E3 78 */	mr r3, r28
/* 81459148 | 7F C4 F3 78 */	mr r4, r30
/* 8145914C | 4B FF 28 A1 */	bl CHANSVmSetFloat
/* 81459150 | 7C 60 00 34 */	cntlzw r0, r3
/* 81459154 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81459158:
/* 81459158 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145915C | 7F E3 FB 78 */	mr r3, r31
/* 81459160 | 48 1A 03 B1 */	bl _restgpr_28
/* 81459164 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459168 | 7C 08 03 A6 */	mtlr r0
/* 8145916C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459170 | 4E 80 00 20 */	blr
.endfn get_char_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xBEC | 0x81459174 | size: 0x98
# ipl::cs::pane::set_char_space(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_char_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459174 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459178 | 7C 08 02 A6 */	mflr r0
/* 8145917C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459180 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459184 | 48 1A 03 45 */	bl _savegpr_29
/* 81459188 | 7C 9E 23 78 */	mr r30, r4
/* 8145918C | 7C 7F 1B 78 */	mr r31, r3
/* 81459190 | 7F C3 F3 78 */	mr r3, r30
/* 81459194 | 3B A0 00 00 */	li r29, 0x0
/* 81459198 | 48 00 33 91 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145919C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814591A0 | 41 82 00 50 */	beq .L_814591F0
/* 814591A4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814591A8 | 7F E3 FB 78 */	mr r3, r31
/* 814591AC | 38 80 00 00 */	li r4, 0x0
/* 814591B0 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 814591B4 | 83 C5 00 00 */	lwz r30, 0x0(r5)
/* 814591B8 | 4B FF 35 45 */	bl CHANSVmGetArgFloat
/* 814591BC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814591C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814591C4 | 41 82 00 2C */	beq .L_814591F0
/* 814591C8 | 7F C3 F3 78 */	mr r3, r30
/* 814591CC | 4B EE CC 99 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 814591D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814591D4 | 41 82 00 1C */	beq .L_814591F0
/* 814591D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814591DC | 41 82 00 14 */	beq .L_814591F0
/* 814591E0 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 814591E4 | 3B A0 00 01 */	li r29, 0x1
/* 814591E8 | FC 00 00 18 */	frsp f0, f0
/* 814591EC | D0 03 00 F0 */	stfs f0, 0xf0(r3)
.L_814591F0:
/* 814591F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814591F4 | 7F A3 EB 78 */	mr r3, r29
/* 814591F8 | 48 1A 03 1D */	bl _restgpr_29
/* 814591FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459200 | 7C 08 03 A6 */	mtlr r0
/* 81459204 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459208 | 4E 80 00 20 */	blr
.endfn set_char_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xC84 | 0x8145920C | size: 0xEC
# ipl::cs::pane::get_vtx_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_vtx_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145920C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81459210 | 7C 08 02 A6 */	mflr r0
/* 81459214 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81459218 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145921C | 48 1A 02 A5 */	bl _savegpr_27
/* 81459220 | 7C 9E 23 78 */	mr r30, r4
/* 81459224 | 7C 7B 1B 78 */	mr r27, r3
/* 81459228 | 7C BC 2B 78 */	mr r28, r5
/* 8145922C | 3B A0 00 00 */	li r29, 0x0
/* 81459230 | 7F C3 F3 78 */	mr r3, r30
/* 81459234 | 48 00 32 F5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145923C | 41 82 00 A0 */	beq .L_814592DC
/* 81459240 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81459244 | 7F 63 DB 78 */	mr r3, r27
/* 81459248 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145924C | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 81459250 | 4B FF 34 35 */	bl CHANSVmGetArgc
/* 81459254 | 7C 7F 1B 78 */	mr r31, r3
/* 81459258 | 7F 63 DB 78 */	mr r3, r27
/* 8145925C | 38 80 00 00 */	li r4, 0x0
/* 81459260 | 4B FF 34 61 */	bl CHANSVmGetArgInteger
/* 81459264 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81459268 | 41 82 00 74 */	beq .L_814592DC
/* 8145926C | 28 1F 00 01 */	cmplwi r31, 0x1
/* 81459270 | 40 82 00 6C */	bne .L_814592DC
/* 81459274 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459278 | 41 82 00 64 */	beq .L_814592DC
/* 8145927C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81459280 | 38 00 00 04 */	li r0, 0x4
/* 81459284 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81459288 | 38 60 00 00 */	li r3, 0x0
/* 8145928C | 7C 00 28 10 */	subfc r0, r0, r5
/* 81459290 | 7C 03 21 10 */	subfe r0, r3, r4
/* 81459294 | 7C 05 29 10 */	subfe r0, r5, r5
/* 81459298 | 7C 00 00 D1 */	neg. r0, r0
/* 8145929C | 41 82 00 40 */	beq .L_814592DC
/* 814592A0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814592A4 | 7F C4 F3 78 */	mr r4, r30
/* 814592A8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814592AC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 814592B0 | 7D 89 03 A6 */	mtctr r12
/* 814592B4 | 4E 80 04 21 */	bctrl
/* 814592B8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814592BC | 7F 63 DB 78 */	mr r3, r27
/* 814592C0 | 7F 84 E3 78 */	mr r4, r28
/* 814592C4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814592C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814592CC | 48 00 44 4D */	bl _ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrQ34nw4r2ut5Color
/* 814592D0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814592D4 | 7C 00 00 34 */	cntlzw r0, r0
/* 814592D8 | 54 1D D9 7E */	srwi r29, r0, 5
.L_814592DC:
/* 814592DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814592E0 | 7F A3 EB 78 */	mr r3, r29
/* 814592E4 | 48 1A 02 29 */	bl _restgpr_27
/* 814592E8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814592EC | 7C 08 03 A6 */	mtlr r0
/* 814592F0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814592F4 | 4E 80 00 20 */	blr
.endfn get_vtx_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xD70 | 0x814592F8 | size: 0x118
# ipl::cs::pane::set_vtx_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_vtx_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814592F8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814592FC | 7C 08 02 A6 */	mflr r0
/* 81459300 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81459304 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459308 | 48 1A 01 B5 */	bl _savegpr_26
/* 8145930C | 7C 9B 23 78 */	mr r27, r4
/* 81459310 | 7C 7A 1B 78 */	mr r26, r3
/* 81459314 | 7F 63 DB 78 */	mr r3, r27
/* 81459318 | 3B 80 00 00 */	li r28, 0x0
/* 8145931C | 48 00 32 0D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459324 | 41 82 00 D0 */	beq .L_814593F4
/* 81459328 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8145932C | 7F 43 D3 78 */	mr r3, r26
/* 81459330 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81459334 | 83 A4 00 00 */	lwz r29, 0x0(r4)
/* 81459338 | 4B FF 33 4D */	bl CHANSVmGetArgc
/* 8145933C | 7C 7E 1B 78 */	mr r30, r3
/* 81459340 | 7F 43 D3 78 */	mr r3, r26
/* 81459344 | 38 80 00 00 */	li r4, 0x0
/* 81459348 | 4B FF 33 79 */	bl CHANSVmGetArgInteger
/* 8145934C | 7C 7F 1B 78 */	mr r31, r3
/* 81459350 | 7F 43 D3 78 */	mr r3, r26
/* 81459354 | 38 80 00 01 */	li r4, 0x1
/* 81459358 | 4B FF 33 39 */	bl CHANSVmGetArg
/* 8145935C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81459360 | 7C 7B 1B 78 */	mr r27, r3
/* 81459364 | 41 82 00 90 */	beq .L_814593F4
/* 81459368 | 28 1E 00 02 */	cmplwi r30, 0x2
/* 8145936C | 40 82 00 88 */	bne .L_814593F4
/* 81459370 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81459374 | 41 82 00 80 */	beq .L_814593F4
/* 81459378 | 38 8D 97 C0 */	li r4, lbl_81697800@sda21
/* 8145937C | 48 00 31 DD */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 81459380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459384 | 41 82 00 70 */	beq .L_814593F4
/* 81459388 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 8145938C | 38 00 00 04 */	li r0, 0x4
/* 81459390 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81459394 | 38 60 00 00 */	li r3, 0x0
/* 81459398 | 7C 00 28 10 */	subfc r0, r0, r5
/* 8145939C | 7C 03 21 10 */	subfe r0, r3, r4
/* 814593A0 | 7C 05 29 10 */	subfe r0, r5, r5
/* 814593A4 | 7C 00 00 D1 */	neg. r0, r0
/* 814593A8 | 41 82 00 4C */	beq .L_814593F4
/* 814593AC | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814593B0 | 7F A3 EB 78 */	mr r3, r29
/* 814593B4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814593B8 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814593BC | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814593C0 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814593C4 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814593C8 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814593CC | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 814593D0 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 814593D4 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 814593D8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814593DC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814593E0 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814593E4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814593E8 | 7D 89 03 A6 */	mtctr r12
/* 814593EC | 4E 80 04 21 */	bctrl
/* 814593F0 | 3B 80 00 01 */	li r28, 0x1
.L_814593F4:
/* 814593F4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814593F8 | 7F 83 E3 78 */	mr r3, r28
/* 814593FC | 48 1A 01 0D */	bl _restgpr_26
/* 81459400 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81459404 | 7C 08 03 A6 */	mtlr r0
/* 81459408 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145940C | 4E 80 00 20 */	blr
.endfn set_vtx_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xE88 | 0x81459410 | size: 0xF0
# ipl::cs::pane::get_text_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_text_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459410 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81459414 | 7C 08 02 A6 */	mflr r0
/* 81459418 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145941C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459420 | 48 1A 00 A1 */	bl _savegpr_27
/* 81459424 | 7C 9D 23 78 */	mr r29, r4
/* 81459428 | 7C 7B 1B 78 */	mr r27, r3
/* 8145942C | 7C BC 2B 78 */	mr r28, r5
/* 81459430 | 3B C0 00 00 */	li r30, 0x0
/* 81459434 | 7F A3 EB 78 */	mr r3, r29
/* 81459438 | 48 00 30 F1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145943C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459440 | 41 82 00 A4 */	beq .L_814594E4
/* 81459444 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81459448 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145944C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459454 | 41 82 00 90 */	beq .L_814594E4
/* 81459458 | 4B EE CA 0D */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8145945C | 7C 7D 1B 78 */	mr r29, r3
/* 81459460 | 7F 63 DB 78 */	mr r3, r27
/* 81459464 | 4B FF 32 21 */	bl CHANSVmGetArgc
/* 81459468 | 7C 7F 1B 78 */	mr r31, r3
/* 8145946C | 7F 63 DB 78 */	mr r3, r27
/* 81459470 | 38 80 00 00 */	li r4, 0x0
/* 81459474 | 4B FF 32 4D */	bl CHANSVmGetArgInteger
/* 81459478 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145947C | 41 82 00 68 */	beq .L_814594E4
/* 81459480 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 81459484 | 40 82 00 60 */	bne .L_814594E4
/* 81459488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145948C | 41 82 00 58 */	beq .L_814594E4
/* 81459490 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81459494 | 38 00 00 04 */	li r0, 0x4
/* 81459498 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8145949C | 38 60 00 00 */	li r3, 0x0
/* 814594A0 | 7C 00 28 10 */	subfc r0, r0, r5
/* 814594A4 | 7C 03 21 10 */	subfe r0, r3, r4
/* 814594A8 | 7C 05 29 10 */	subfe r0, r5, r5
/* 814594AC | 7C 00 00 D1 */	neg. r0, r0
/* 814594B0 | 41 82 00 34 */	beq .L_814594E4
/* 814594B4 | 7F A4 EB 78 */	mr r4, r29
/* 814594B8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814594BC | 4B F0 10 05 */	bl GetTextColor__Q34nw4r3lyt7TextBoxCFUl
/* 814594C0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814594C4 | 7F 63 DB 78 */	mr r3, r27
/* 814594C8 | 7F 84 E3 78 */	mr r4, r28
/* 814594CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814594D0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814594D4 | 48 00 42 45 */	bl _ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrQ34nw4r2ut5Color
/* 814594D8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814594DC | 7C 00 00 34 */	cntlzw r0, r0
/* 814594E0 | 54 1E D9 7E */	srwi r30, r0, 5
.L_814594E4:
/* 814594E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814594E8 | 7F C3 F3 78 */	mr r3, r30
/* 814594EC | 48 1A 00 21 */	bl _restgpr_27
/* 814594F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814594F4 | 7C 08 03 A6 */	mtlr r0
/* 814594F8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814594FC | 4E 80 00 20 */	blr
.endfn get_text_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xF78 | 0x81459500 | size: 0x11C
# ipl::cs::pane::set_text_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_text_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459500 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81459504 | 7C 08 02 A6 */	mflr r0
/* 81459508 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145950C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459510 | 48 19 FF AD */	bl _savegpr_26
/* 81459514 | 7C 9B 23 78 */	mr r27, r4
/* 81459518 | 7C 7A 1B 78 */	mr r26, r3
/* 8145951C | 7F 63 DB 78 */	mr r3, r27
/* 81459520 | 3B A0 00 00 */	li r29, 0x0
/* 81459524 | 48 00 30 05 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145952C | 41 82 00 D4 */	beq .L_81459600
/* 81459530 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 81459534 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459538 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145953C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459540 | 41 82 00 C0 */	beq .L_81459600
/* 81459544 | 4B EE C9 21 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81459548 | 7C 7C 1B 78 */	mr r28, r3
/* 8145954C | 7F 43 D3 78 */	mr r3, r26
/* 81459550 | 4B FF 31 35 */	bl CHANSVmGetArgc
/* 81459554 | 7C 7E 1B 78 */	mr r30, r3
/* 81459558 | 7F 43 D3 78 */	mr r3, r26
/* 8145955C | 38 80 00 00 */	li r4, 0x0
/* 81459560 | 4B FF 31 61 */	bl CHANSVmGetArgInteger
/* 81459564 | 7C 7F 1B 78 */	mr r31, r3
/* 81459568 | 7F 43 D3 78 */	mr r3, r26
/* 8145956C | 38 80 00 01 */	li r4, 0x1
/* 81459570 | 4B FF 31 21 */	bl CHANSVmGetArg
/* 81459574 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81459578 | 7C 7B 1B 78 */	mr r27, r3
/* 8145957C | 41 82 00 84 */	beq .L_81459600
/* 81459580 | 28 1E 00 02 */	cmplwi r30, 0x2
/* 81459584 | 40 82 00 7C */	bne .L_81459600
/* 81459588 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145958C | 41 82 00 74 */	beq .L_81459600
/* 81459590 | 38 8D 97 C0 */	li r4, lbl_81697800@sda21
/* 81459594 | 48 00 2F C5 */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 81459598 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145959C | 41 82 00 64 */	beq .L_81459600
/* 814595A0 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 814595A4 | 38 00 00 02 */	li r0, 0x2
/* 814595A8 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814595AC | 38 60 00 00 */	li r3, 0x0
/* 814595B0 | 7C 00 28 10 */	subfc r0, r0, r5
/* 814595B4 | 7C 03 21 10 */	subfe r0, r3, r4
/* 814595B8 | 7C 05 29 10 */	subfe r0, r5, r5
/* 814595BC | 7C 00 00 D1 */	neg. r0, r0
/* 814595C0 | 41 82 00 40 */	beq .L_81459600
/* 814595C4 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814595C8 | 7F 83 E3 78 */	mr r3, r28
/* 814595CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814595D0 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814595D4 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814595D8 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814595DC | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814595E0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814595E4 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 814595E8 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 814595EC | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 814595F0 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814595F4 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814595F8 | 48 00 00 25 */	bl SetTextColor__Q34nw4r3lyt7TextBoxFUlQ34nw4r2ut5Color
/* 814595FC | 3B A0 00 01 */	li r29, 0x1
.L_81459600:
/* 81459600 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459604 | 7F A3 EB 78 */	mr r3, r29
/* 81459608 | 48 19 FF 01 */	bl _restgpr_26
/* 8145960C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81459610 | 7C 08 03 A6 */	mtlr r0
/* 81459614 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81459618 | 4E 80 00 20 */	blr
.endfn set_text_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1094 | 0x8145961C | size: 0xD0
# nw4r::lyt::TextBox::SetTextColor(unsigned long, nw4r::ut::Color)
.fn SetTextColor__Q34nw4r3lyt7TextBoxFUlQ34nw4r2ut5Color, global
/* 8145961C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81459620 | 7C 08 02 A6 */	mflr r0
/* 81459624 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81459628 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145962C | 48 19 FE 9D */	bl _savegpr_29
/* 81459630 | 28 04 00 02 */	cmplwi r4, 0x2
/* 81459634 | 7C 7D 1B 78 */	mr r29, r3
/* 81459638 | 7C 9E 23 78 */	mr r30, r4
/* 8145963C | 7C BF 2B 78 */	mr r31, r5
/* 81459640 | 41 80 00 6C */	blt .L_814596AC
/* 81459644 | 89 2D 98 04 */	lbz r9, lbl_81697844@sda21(r0)
/* 81459648 | 38 00 00 00 */	li r0, 0x0
/* 8145964C | 89 0D 98 05 */	lbz r8, lbl_81697845@sda21(r0)
/* 81459650 | 3C A0 81 67 */	lis r5, lbl_8166A6E3@ha
/* 81459654 | 88 ED 98 06 */	lbz r7, lbl_81697846@sda21(r0)
/* 81459658 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145965C | 88 CD 98 07 */	lbz r6, lbl_81697847@sda21(r0)
/* 81459660 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81459664 | 99 21 00 14 */	stb r9, 0x14(r1)
/* 81459668 | 38 A5 A6 E3 */	addi r5, r5, lbl_8166A6E3@l
/* 8145966C | 99 01 00 15 */	stb r8, 0x15(r1)
/* 81459670 | 98 E1 00 16 */	stb r7, 0x16(r1)
/* 81459674 | 98 C1 00 17 */	stb r6, 0x17(r1)
/* 81459678 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 8145967C | 98 01 00 11 */	stb r0, 0x11(r1)
/* 81459680 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 81459684 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 81459688 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8145968C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81459690 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81459694 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81459698 | 99 21 00 0C */	stb r9, 0xc(r1)
/* 8145969C | 99 01 00 0D */	stb r8, 0xd(r1)
/* 814596A0 | 98 E1 00 0E */	stb r7, 0xe(r1)
/* 814596A4 | 98 C1 00 0F */	stb r6, 0xf(r1)
/* 814596A8 | 4B F2 78 75 */	bl OSFatal
.L_814596AC:
/* 814596AC | 57 C0 10 3A */	slwi r0, r30, 2
/* 814596B0 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814596B4 | 7C 9D 02 14 */	add r4, r29, r0
/* 814596B8 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 814596BC | 98 64 00 D8 */	stb r3, 0xd8(r4)
/* 814596C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814596C4 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 814596C8 | 98 04 00 D9 */	stb r0, 0xd9(r4)
/* 814596CC | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 814596D0 | 98 64 00 DA */	stb r3, 0xda(r4)
/* 814596D4 | 98 04 00 DB */	stb r0, 0xdb(r4)
/* 814596D8 | 48 19 FE 3D */	bl _restgpr_29
/* 814596DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814596E0 | 7C 08 03 A6 */	mtlr r0
/* 814596E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814596E8 | 4E 80 00 20 */	blr
.endfn SetTextColor__Q34nw4r3lyt7TextBoxFUlQ34nw4r2ut5Color

# .text:0x1164 | 0x814596EC | size: 0xAC
# ipl::cs::pane::get_font_size(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_font_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814596EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814596F0 | 7C 08 02 A6 */	mflr r0
/* 814596F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814596F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814596FC | 48 19 FD C9 */	bl _savegpr_28
/* 81459700 | 7C 9F 23 78 */	mr r31, r4
/* 81459704 | 7C 7C 1B 78 */	mr r28, r3
/* 81459708 | 7C BD 2B 78 */	mr r29, r5
/* 8145970C | 3B C0 00 00 */	li r30, 0x0
/* 81459710 | 7F E3 FB 78 */	mr r3, r31
/* 81459714 | 48 00 2E 15 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145971C | 41 82 00 60 */	beq .L_8145977C
/* 81459720 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81459724 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459728 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 8145972C | 7F E3 FB 78 */	mr r3, r31
/* 81459730 | 4B EE C7 35 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81459734 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81459738 | 41 82 00 44 */	beq .L_8145977C
/* 8145973C | 7F E3 FB 78 */	mr r3, r31
/* 81459740 | 4B EE C7 25 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81459744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459748 | 7C 64 1B 78 */	mr r4, r3
/* 8145974C | 41 82 00 30 */	beq .L_8145977C
/* 81459750 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81459754 | 38 84 00 E4 */	addi r4, r4, 0xe4
/* 81459758 | 4B FF F5 0D */	bl __ct__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 8145975C | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81459760 | 7F 83 E3 78 */	mr r3, r28
/* 81459764 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81459768 | 7F A4 EB 78 */	mr r4, r29
/* 8145976C | 48 00 4A AD */	bl _ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrff
/* 81459770 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81459774 | 7C 00 00 34 */	cntlzw r0, r0
/* 81459778 | 54 1E D9 7E */	srwi r30, r0, 5
.L_8145977C:
/* 8145977C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459780 | 7F C3 F3 78 */	mr r3, r30
/* 81459784 | 48 19 FD 8D */	bl _restgpr_28
/* 81459788 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145978C | 7C 08 03 A6 */	mtlr r0
/* 81459790 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459794 | 4E 80 00 20 */	blr
.endfn get_font_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1210 | 0x81459798 | size: 0x8C
# ipl::cs::pane::set_font_size(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_font_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459798 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145979C | 7C 08 02 A6 */	mflr r0
/* 814597A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814597A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814597A8 | 48 19 FD 21 */	bl _savegpr_29
/* 814597AC | 7C 9F 23 78 */	mr r31, r4
/* 814597B0 | 7C 7D 1B 78 */	mr r29, r3
/* 814597B4 | 7F E3 FB 78 */	mr r3, r31
/* 814597B8 | 3B C0 00 00 */	li r30, 0x0
/* 814597BC | 48 00 2D 6D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 814597C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814597C4 | 41 82 00 44 */	beq .L_81459808
/* 814597C8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814597CC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814597D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814597D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814597D8 | 41 82 00 30 */	beq .L_81459808
/* 814597DC | 4B EE C6 89 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 814597E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814597E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814597E8 | 41 82 00 20 */	beq .L_81459808
/* 814597EC | 7F A4 EB 78 */	mr r4, r29
/* 814597F0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814597F4 | 48 00 02 89 */	bl get_size___Q33ipl2cs4paneFP7CHANSVm
/* 814597F8 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 814597FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81459800 | 4B F5 9F 55 */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 81459804 | 3B C0 00 01 */	li r30, 0x1
.L_81459808:
/* 81459808 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145980C | 7F C3 F3 78 */	mr r3, r30
/* 81459810 | 48 19 FD 05 */	bl _restgpr_29
/* 81459814 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459818 | 7C 08 03 A6 */	mtlr r0
/* 8145981C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459820 | 4E 80 00 20 */	blr
.endfn set_font_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x129C | 0x81459824 | size: 0x9C
# ipl::cs::pane::get_font(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_font__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459824 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459828 | 7C 08 02 A6 */	mflr r0
/* 8145982C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459830 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459834 | 48 19 FC 91 */	bl _savegpr_28
/* 81459838 | 7C 9F 23 78 */	mr r31, r4
/* 8145983C | 7C 7C 1B 78 */	mr r28, r3
/* 81459840 | 7C BD 2B 78 */	mr r29, r5
/* 81459844 | 3B C0 00 00 */	li r30, 0x0
/* 81459848 | 7F E3 FB 78 */	mr r3, r31
/* 8145984C | 48 00 2C DD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459854 | 41 82 00 50 */	beq .L_814598A4
/* 81459858 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8145985C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459860 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81459864 | 7F E3 FB 78 */	mr r3, r31
/* 81459868 | 4B EE C5 FD */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8145986C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81459870 | 41 82 00 34 */	beq .L_814598A4
/* 81459874 | 7F E3 FB 78 */	mr r3, r31
/* 81459878 | 4B EE C5 ED */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8145987C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459880 | 41 82 00 24 */	beq .L_814598A4
/* 81459884 | 48 0C 90 E5 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 81459888 | 7C 65 1B 78 */	mr r5, r3
/* 8145988C | 7F 83 E3 78 */	mr r3, r28
/* 81459890 | 7F A4 EB 78 */	mr r4, r29
/* 81459894 | 48 00 38 D1 */	bl _ctor__Q33ipl2cs4fontFP7CHANSVmP13CHANSVmObjHdrUl
/* 81459898 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8145989C | 7C 00 00 34 */	cntlzw r0, r0
/* 814598A0 | 54 1E D9 7E */	srwi r30, r0, 5
.L_814598A4:
/* 814598A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814598A8 | 7F C3 F3 78 */	mr r3, r30
/* 814598AC | 48 19 FC 65 */	bl _restgpr_28
/* 814598B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814598B4 | 7C 08 03 A6 */	mtlr r0
/* 814598B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814598BC | 4E 80 00 20 */	blr
.endfn get_font__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1338 | 0x814598C0 | size: 0xB8
# ipl::cs::pane::set_font(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_font__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814598C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814598C4 | 7C 08 02 A6 */	mflr r0
/* 814598C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814598CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814598D0 | 48 19 FB F9 */	bl _savegpr_29
/* 814598D4 | 7C 9D 23 78 */	mr r29, r4
/* 814598D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814598DC | 7F A3 EB 78 */	mr r3, r29
/* 814598E0 | 3B C0 00 00 */	li r30, 0x0
/* 814598E4 | 48 00 2C 45 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 814598E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814598EC | 41 82 00 70 */	beq .L_8145995C
/* 814598F0 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 814598F4 | 7F E3 FB 78 */	mr r3, r31
/* 814598F8 | 38 80 00 00 */	li r4, 0x0
/* 814598FC | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81459900 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 81459904 | 4B FF 2D 8D */	bl CHANSVmGetArg
/* 81459908 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145990C | 7C 7D 1B 78 */	mr r29, r3
/* 81459910 | 41 82 00 4C */	beq .L_8145995C
/* 81459914 | 7F E3 FB 78 */	mr r3, r31
/* 81459918 | 4B EE C5 4D */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8145991C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459920 | 7C 7F 1B 78 */	mr r31, r3
/* 81459924 | 41 82 00 38 */	beq .L_8145995C
/* 81459928 | 7F A3 EB 78 */	mr r3, r29
/* 8145992C | 38 8D 97 C6 */	li r4, lbl_81697806@sda21
/* 81459930 | 48 00 2C 29 */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 81459934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459938 | 41 82 00 24 */	beq .L_8145995C
/* 8145993C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81459940 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459944 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81459948 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145994C | 41 82 00 10 */	beq .L_8145995C
/* 81459950 | 7F E3 FB 78 */	mr r3, r31
/* 81459954 | 48 0C 90 1D */	bl fn_81522970
/* 81459958 | 3B C0 00 01 */	li r30, 0x1
.L_8145995C:
/* 8145995C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459960 | 7F C3 F3 78 */	mr r3, r30
/* 81459964 | 48 19 FB B1 */	bl _restgpr_29
/* 81459968 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145996C | 7C 08 03 A6 */	mtlr r0
/* 81459970 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459974 | 4E 80 00 20 */	blr
.endfn set_font__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x13F0 | 0x81459978 | size: 0x104
# ipl::cs::pane::get_vec_(CHANSVm*)
.fn get_vec___Q33ipl2cs4paneFP7CHANSVm, global
/* 81459978 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145997C | 7C 08 02 A6 */	mflr r0
/* 81459980 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459984 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459988 | 48 19 FB 3D */	bl _savegpr_28
/* 8145998C | 7C 9D 23 78 */	mr r29, r4
/* 81459990 | 7C 7C 1B 78 */	mr r28, r3
/* 81459994 | 7F A3 EB 78 */	mr r3, r29
/* 81459998 | 4B FF 2C ED */	bl CHANSVmGetArgc
/* 8145999C | 7C 7E 1B 78 */	mr r30, r3
/* 814599A0 | 7F A3 EB 78 */	mr r3, r29
/* 814599A4 | 38 80 00 00 */	li r4, 0x0
/* 814599A8 | 4B FF 2C E9 */	bl CHANSVmGetArg
/* 814599AC | C0 02 8B C0 */	lfs f0, lbl_81694FC0@sda21(r0)
/* 814599B0 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814599B4 | 7C 7E 1B 78 */	mr r30, r3
/* 814599B8 | D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 814599BC | D0 1C 00 04 */	stfs f0, 0x4(r28)
/* 814599C0 | D0 1C 00 08 */	stfs f0, 0x8(r28)
/* 814599C4 | 40 82 00 38 */	bne .L_814599FC
/* 814599C8 | 38 8D 97 CB */	li r4, lbl_8169780B@sda21
/* 814599CC | 48 00 2B 8D */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 814599D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814599D4 | 41 82 00 28 */	beq .L_814599FC
/* 814599D8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814599DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814599E0 | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 814599E4 | D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 814599E8 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 814599EC | D0 1C 00 04 */	stfs f0, 0x4(r28)
/* 814599F0 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 814599F4 | D0 1C 00 08 */	stfs f0, 0x8(r28)
/* 814599F8 | 48 00 00 6C */	b .L_81459A64
.L_814599FC:
/* 814599FC | 7F A3 EB 78 */	mr r3, r29
/* 81459A00 | 38 80 00 00 */	li r4, 0x0
/* 81459A04 | 4B FF 2C F9 */	bl CHANSVmGetArgFloat
/* 81459A08 | 7C 7E 1B 78 */	mr r30, r3
/* 81459A0C | 7F A3 EB 78 */	mr r3, r29
/* 81459A10 | 38 80 00 01 */	li r4, 0x1
/* 81459A14 | 4B FF 2C E9 */	bl CHANSVmGetArgFloat
/* 81459A18 | 7C 7F 1B 78 */	mr r31, r3
/* 81459A1C | 7F A3 EB 78 */	mr r3, r29
/* 81459A20 | 38 80 00 02 */	li r4, 0x2
/* 81459A24 | 4B FF 2C D9 */	bl CHANSVmGetArgFloat
/* 81459A28 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81459A2C | 41 82 00 10 */	beq .L_81459A3C
/* 81459A30 | C8 1E 00 00 */	lfd f0, 0x0(r30)
/* 81459A34 | FC 00 00 18 */	frsp f0, f0
/* 81459A38 | D0 1C 00 00 */	stfs f0, 0x0(r28)
.L_81459A3C:
/* 81459A3C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81459A40 | 41 82 00 10 */	beq .L_81459A50
/* 81459A44 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 81459A48 | FC 00 00 18 */	frsp f0, f0
/* 81459A4C | D0 1C 00 04 */	stfs f0, 0x4(r28)
.L_81459A50:
/* 81459A50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459A54 | 41 82 00 10 */	beq .L_81459A64
/* 81459A58 | C8 03 00 00 */	lfd f0, 0x0(r3)
/* 81459A5C | FC 00 00 18 */	frsp f0, f0
/* 81459A60 | D0 1C 00 08 */	stfs f0, 0x8(r28)
.L_81459A64:
/* 81459A64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459A68 | 48 19 FA A9 */	bl _restgpr_28
/* 81459A6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459A70 | 7C 08 03 A6 */	mtlr r0
/* 81459A74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459A78 | 4E 80 00 20 */	blr
.endfn get_vec___Q33ipl2cs4paneFP7CHANSVm

# .text:0x14F4 | 0x81459A7C | size: 0xD4
# ipl::cs::pane::get_size_(CHANSVm*)
.fn get_size___Q33ipl2cs4paneFP7CHANSVm, global
/* 81459A7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459A80 | 7C 08 02 A6 */	mflr r0
/* 81459A84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459A88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459A8C | 48 19 FA 3D */	bl _savegpr_29
/* 81459A90 | 7C 9E 23 78 */	mr r30, r4
/* 81459A94 | 7C 7D 1B 78 */	mr r29, r3
/* 81459A98 | 7F C3 F3 78 */	mr r3, r30
/* 81459A9C | 4B FF 2B E9 */	bl CHANSVmGetArgc
/* 81459AA0 | 7C 7F 1B 78 */	mr r31, r3
/* 81459AA4 | 7F C3 F3 78 */	mr r3, r30
/* 81459AA8 | 38 80 00 00 */	li r4, 0x0
/* 81459AAC | 4B FF 2B E5 */	bl CHANSVmGetArg
/* 81459AB0 | C0 02 8B C0 */	lfs f0, lbl_81694FC0@sda21(r0)
/* 81459AB4 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 81459AB8 | 7C 7F 1B 78 */	mr r31, r3
/* 81459ABC | D0 1D 00 00 */	stfs f0, 0x0(r29)
/* 81459AC0 | D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 81459AC4 | 40 82 00 30 */	bne .L_81459AF4
/* 81459AC8 | 38 8D 97 D0 */	li r4, lbl_81697810@sda21
/* 81459ACC | 48 00 2A 8D */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 81459AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459AD4 | 41 82 00 20 */	beq .L_81459AF4
/* 81459AD8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81459ADC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459AE0 | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 81459AE4 | D0 1D 00 00 */	stfs f0, 0x0(r29)
/* 81459AE8 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81459AEC | D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 81459AF0 | 48 00 00 48 */	b .L_81459B38
.L_81459AF4:
/* 81459AF4 | 7F C3 F3 78 */	mr r3, r30
/* 81459AF8 | 38 80 00 00 */	li r4, 0x0
/* 81459AFC | 4B FF 2C 01 */	bl CHANSVmGetArgFloat
/* 81459B00 | 7C 7F 1B 78 */	mr r31, r3
/* 81459B04 | 7F C3 F3 78 */	mr r3, r30
/* 81459B08 | 38 80 00 01 */	li r4, 0x1
/* 81459B0C | 4B FF 2B F1 */	bl CHANSVmGetArgFloat
/* 81459B10 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81459B14 | 41 82 00 10 */	beq .L_81459B24
/* 81459B18 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 81459B1C | FC 00 00 18 */	frsp f0, f0
/* 81459B20 | D0 1D 00 00 */	stfs f0, 0x0(r29)
.L_81459B24:
/* 81459B24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459B28 | 41 82 00 10 */	beq .L_81459B38
/* 81459B2C | C8 03 00 00 */	lfd f0, 0x0(r3)
/* 81459B30 | FC 00 00 18 */	frsp f0, f0
/* 81459B34 | D0 1D 00 04 */	stfs f0, 0x4(r29)
.L_81459B38:
/* 81459B38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459B3C | 48 19 F9 D9 */	bl _restgpr_29
/* 81459B40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459B44 | 7C 08 03 A6 */	mtlr r0
/* 81459B48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459B4C | 4E 80 00 20 */	blr
.endfn get_size___Q33ipl2cs4paneFP7CHANSVm

# .text:0x15C8 | 0x81459B50 | size: 0x74
# ipl::cs::pane::_ctor(CHANSVm*, CHANSVmObjHdr*, unsigned long)
.fn _ctor__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrUl, global
/* 81459B50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459B54 | 7C 08 02 A6 */	mflr r0
/* 81459B58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459B5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459B60 | 48 19 F9 65 */	bl _savegpr_28
/* 81459B64 | 7C BE 2B 78 */	mr r30, r5
/* 81459B68 | 7C 7C 1B 78 */	mr r28, r3
/* 81459B6C | 7C 9D 23 78 */	mr r29, r4
/* 81459B70 | 3B E0 00 00 */	li r31, 0x0
/* 81459B74 | 38 A0 00 04 */	li r5, 0x4
/* 81459B78 | 4B FF 10 DD */	bl CHANSVmNewObjData
/* 81459B7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459B80 | 41 82 00 28 */	beq .L_81459BA8
/* 81459B84 | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 81459B88 | 38 00 00 08 */	li r0, 0x8
/* 81459B8C | 7F 83 E3 78 */	mr r3, r28
/* 81459B90 | 38 8D 97 D5 */	li r4, lbl_81697815@sda21
/* 81459B94 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 81459B98 | 4B FF 2B DD */	bl CHANSVmFindNativeClass
/* 81459B9C | 30 03 FF FF */	subic r0, r3, 0x1
/* 81459BA0 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 81459BA4 | 7F E0 19 10 */	subfe r31, r0, r3
.L_81459BA8:
/* 81459BA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459BAC | 7F E3 FB 78 */	mr r3, r31
/* 81459BB0 | 48 19 F9 61 */	bl _restgpr_28
/* 81459BB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459BB8 | 7C 08 03 A6 */	mtlr r0
/* 81459BBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459BC0 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrUl

# .text:0x163C | 0x81459BC4 | size: 0x70
# ipl::cs::pane::init(CHANSVm*)
.fn init__Q33ipl2cs4paneFP7CHANSVm, global
/* 81459BC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81459BC8 | 7C 08 02 A6 */	mflr r0
/* 81459BCC | 38 8D 97 D5 */	li r4, lbl_81697815@sda21
/* 81459BD0 | 38 A0 00 00 */	li r5, 0x0
/* 81459BD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81459BD8 | 38 C0 00 00 */	li r6, 0x0
/* 81459BDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81459BE0 | 3B E0 00 00 */	li r31, 0x0
/* 81459BE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81459BE8 | 7C 7E 1B 78 */	mr r30, r3
/* 81459BEC | 4B FF 2C E9 */	bl CHANSVmAddNativeClass
/* 81459BF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459BF4 | 7C 64 1B 78 */	mr r4, r3
/* 81459BF8 | 41 82 00 20 */	beq .L_81459C18
/* 81459BFC | 3C A0 81 61 */	lis r5, lbl_816173F0@ha
/* 81459C00 | 7F C3 F3 78 */	mr r3, r30
/* 81459C04 | 38 C0 00 1E */	li r6, 0x1e
/* 81459C08 | 38 A5 73 F0 */	addi r5, r5, lbl_816173F0@l
/* 81459C0C | 4B FF 2E 65 */	bl CHANSVmAddNativeMethodList
/* 81459C10 | 7C 60 00 34 */	cntlzw r0, r3
/* 81459C14 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81459C18:
/* 81459C18 | 7F E3 FB 78 */	mr r3, r31
/* 81459C1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81459C20 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81459C24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81459C28 | 7C 08 03 A6 */	mtlr r0
/* 81459C2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81459C30 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs4paneFP7CHANSVm

# 0x816173F0..0x816174E0 | size: 0xF0
.rodata
.balign 8

# .rodata:0x0 | 0x816173F0 | size: 0xF0
.obj lbl_816173F0, global
	.4byte lbl_8169781A
	.4byte show__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169781F
	.4byte hide__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A5C8
	.4byte get_material__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A5D4
	.4byte get_string__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A5DE
	.4byte set_string__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A5E8
	.4byte set_scale__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A5F1
	.4byte get_scale__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A5FA
	.4byte set_translate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A607
	.4byte get_translate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A614
	.4byte set_rotate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A61E
	.4byte get_rotate__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697824
	.4byte set_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169782C
	.4byte get_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A628
	.4byte get_alpha__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A631
	.4byte set_alpha__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A63A
	.4byte get_vtx_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A646
	.4byte set_vtx_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A652
	.4byte get_text_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A65F
	.4byte set_text_color__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A66C
	.4byte become_youngest_pane__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A67F
	.4byte get_userdata__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A68B
	.4byte set_userdata__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A697
	.4byte get_line_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A6A4
	.4byte set_line_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A6B1
	.4byte get_char_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A6BE
	.4byte set_char_space__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A6CB
	.4byte get_font_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A6D7
	.4byte set_font_size__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697834
	.4byte get_font__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169783C
	.4byte set_font__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj lbl_816173F0

# 0x8166A5C8..0x8166A728 | size: 0x160
.data
.balign 8

# .data:0x0 | 0x8166A5C8 | size: 0xC
.obj lbl_8166A5C8, global
	.string "GetMaterial"
.endobj lbl_8166A5C8

# .data:0xC | 0x8166A5D4 | size: 0xA
.obj lbl_8166A5D4, global
	.string "GetString"
.endobj lbl_8166A5D4

# .data:0x16 | 0x8166A5DE | size: 0xA
.obj lbl_8166A5DE, global
	.string "SetString"
.endobj lbl_8166A5DE

# .data:0x20 | 0x8166A5E8 | size: 0x9
.obj lbl_8166A5E8, global
	.string "SetScale"
.endobj lbl_8166A5E8

# .data:0x29 | 0x8166A5F1 | size: 0x9
.obj lbl_8166A5F1, global
	.string "GetScale"
.endobj lbl_8166A5F1

# .data:0x32 | 0x8166A5FA | size: 0xD
.obj lbl_8166A5FA, global
	.string "SetTranslate"
.endobj lbl_8166A5FA

# .data:0x3F | 0x8166A607 | size: 0xD
.obj lbl_8166A607, global
	.string "GetTranslate"
.endobj lbl_8166A607

# .data:0x4C | 0x8166A614 | size: 0xA
.obj lbl_8166A614, global
	.string "SetRotate"
.endobj lbl_8166A614

# .data:0x56 | 0x8166A61E | size: 0xA
.obj lbl_8166A61E, global
	.string "GetRotate"
.endobj lbl_8166A61E

# .data:0x60 | 0x8166A628 | size: 0x9
.obj lbl_8166A628, global
	.string "GetAlpha"
.endobj lbl_8166A628

# .data:0x69 | 0x8166A631 | size: 0x9
.obj lbl_8166A631, global
	.string "SetAlpha"
.endobj lbl_8166A631

# .data:0x72 | 0x8166A63A | size: 0xC
.obj lbl_8166A63A, global
	.string "GetVtxColor"
.endobj lbl_8166A63A

# .data:0x7E | 0x8166A646 | size: 0xC
.obj lbl_8166A646, global
	.string "SetVtxColor"
.endobj lbl_8166A646

# .data:0x8A | 0x8166A652 | size: 0xD
.obj lbl_8166A652, global
	.string "GetTextColor"
.endobj lbl_8166A652

# .data:0x97 | 0x8166A65F | size: 0xD
.obj lbl_8166A65F, global
	.string "SetTextColor"
.endobj lbl_8166A65F

# .data:0xA4 | 0x8166A66C | size: 0x13
.obj lbl_8166A66C, global
	.string "becomeYoungestPane"
.endobj lbl_8166A66C

# .data:0xB7 | 0x8166A67F | size: 0xC
.obj lbl_8166A67F, global
	.string "GetUserData"
.endobj lbl_8166A67F

# .data:0xC3 | 0x8166A68B | size: 0xC
.obj lbl_8166A68B, global
	.string "SetUserData"
.endobj lbl_8166A68B

# .data:0xCF | 0x8166A697 | size: 0xD
.obj lbl_8166A697, global
	.string "GetLineSpace"
.endobj lbl_8166A697

# .data:0xDC | 0x8166A6A4 | size: 0xD
.obj lbl_8166A6A4, global
	.string "SetLineSpace"
.endobj lbl_8166A6A4

# .data:0xE9 | 0x8166A6B1 | size: 0xD
.obj lbl_8166A6B1, global
	.string "GetCharSpace"
.endobj lbl_8166A6B1

# .data:0xF6 | 0x8166A6BE | size: 0xD
.obj lbl_8166A6BE, global
	.string "SetCharSpace"
.endobj lbl_8166A6BE

# .data:0x103 | 0x8166A6CB | size: 0xC
.obj lbl_8166A6CB, global
	.string "GetFontSize"
.endobj lbl_8166A6CB

# .data:0x10F | 0x8166A6D7 | size: 0xC
.obj lbl_8166A6D7, global
	.string "SetFontSize"
.endobj lbl_8166A6D7

# .data:0x11B | 0x8166A6E3 | size: 0x45
.obj lbl_8166A6E3, global
	.4byte 0x4572726F
	.4byte 0x72233030
	.4byte 0x340A416E
	.4byte 0x20657272
	.4byte 0x6F722068
	.4byte 0x6173206F
	.4byte 0x63637572
	.4byte 0x7265642E
	.4byte 0x0A546865
	.4byte 0x20737973
	.4byte 0x74656D20
	.4byte 0x66696C65
	.4byte 0x73206172
	.4byte 0x6520636F
	.4byte 0x72727570
	.4byte 0x7465642E
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_8166A6E3

# 0x81697800..0x81697848 | size: 0x48
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697800 | size: 0x6
.obj lbl_81697800, global
	.string "Color"
.endobj lbl_81697800

# .sdata:0x6 | 0x81697806 | size: 0x5
.obj lbl_81697806, global
	.string "Font"
.endobj lbl_81697806

# .sdata:0xB | 0x8169780B | size: 0x5
.obj lbl_8169780B, global
	.string "VEC3"
.endobj lbl_8169780B

# .sdata:0x10 | 0x81697810 | size: 0x5
.obj lbl_81697810, global
	.string "Size"
.endobj lbl_81697810

# .sdata:0x15 | 0x81697815 | size: 0x5
.obj lbl_81697815, global
	.string "Pane"
.endobj lbl_81697815

# .sdata:0x1A | 0x8169781A | size: 0x5
.obj lbl_8169781A, global
	.string "show"
.endobj lbl_8169781A

# .sdata:0x1F | 0x8169781F | size: 0x5
.obj lbl_8169781F, global
	.string "hide"
.endobj lbl_8169781F

# .sdata:0x24 | 0x81697824 | size: 0x8
.obj lbl_81697824, global
	.string "SetSize"
.endobj lbl_81697824

# .sdata:0x2C | 0x8169782C | size: 0x8
.obj lbl_8169782C, global
	.string "GetSize"
.endobj lbl_8169782C

# .sdata:0x34 | 0x81697834 | size: 0x8
.obj lbl_81697834, global
	.string "GetFont"
.endobj lbl_81697834

# .sdata:0x3C | 0x8169783C | size: 0x8
.obj lbl_8169783C, global
	.string "SetFont"
.endobj lbl_8169783C

# .sdata:0x44 | 0x81697844 | size: 0x1
.obj lbl_81697844, global
	.byte 0xFF
.endobj lbl_81697844

# .sdata:0x45 | 0x81697845 | size: 0x1
.obj lbl_81697845, global
	.byte 0xFF
.endobj lbl_81697845

# .sdata:0x46 | 0x81697846 | size: 0x1
.obj lbl_81697846, global
	.byte 0xFF
.endobj lbl_81697846

# .sdata:0x47 | 0x81697847 | size: 0x1
.obj lbl_81697847, global
	.byte 0x00
.endobj lbl_81697847
