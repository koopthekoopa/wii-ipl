.include "macros.inc"
.file "iplCSColor.cpp"

# 0x8145D5F8..0x8145DC4C | size: 0x654
.text
.balign 4

# .text:0x0 | 0x8145D5F8 | size: 0x120
# ipl::cs::color::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145D5F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D5FC | 7C 08 02 A6 */	mflr r0
/* 8145D600 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D604 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D608 | 48 19 BE B9 */	bl _savegpr_27
/* 8145D60C | 7C A4 2B 78 */	mr r4, r5
/* 8145D610 | 7C 7B 1B 78 */	mr r27, r3
/* 8145D614 | 3B A0 00 00 */	li r29, 0x0
/* 8145D618 | 38 A0 00 04 */	li r5, 0x4
/* 8145D61C | 4B FE D6 39 */	bl CHANSVmNewObjData
/* 8145D620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D624 | 7C 7C 1B 78 */	mr r28, r3
/* 8145D628 | 41 82 00 D4 */	beq .L_8145D6FC
/* 8145D62C | 7F 63 DB 78 */	mr r3, r27
/* 8145D630 | 4B FE F0 55 */	bl CHANSVmGetArgc
/* 8145D634 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8145D638 | 40 82 00 24 */	bne .L_8145D65C
/* 8145D63C | 7F 63 DB 78 */	mr r3, r27
/* 8145D640 | 38 80 00 00 */	li r4, 0x0
/* 8145D644 | 4B FE F0 7D */	bl CHANSVmGetArgInteger
/* 8145D648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D64C | 41 82 00 AC */	beq .L_8145D6F8
/* 8145D650 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145D654 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 8145D658 | 48 00 00 A0 */	b .L_8145D6F8
.L_8145D65C:
/* 8145D65C | 7F 63 DB 78 */	mr r3, r27
/* 8145D660 | 38 80 00 00 */	li r4, 0x0
/* 8145D664 | 4B FE F0 5D */	bl CHANSVmGetArgInteger
/* 8145D668 | 7C 7D 1B 78 */	mr r29, r3
/* 8145D66C | 7F 63 DB 78 */	mr r3, r27
/* 8145D670 | 38 80 00 01 */	li r4, 0x1
/* 8145D674 | 4B FE F0 4D */	bl CHANSVmGetArgInteger
/* 8145D678 | 7C 7E 1B 78 */	mr r30, r3
/* 8145D67C | 7F 63 DB 78 */	mr r3, r27
/* 8145D680 | 38 80 00 02 */	li r4, 0x2
/* 8145D684 | 4B FE F0 3D */	bl CHANSVmGetArgInteger
/* 8145D688 | 7C 7F 1B 78 */	mr r31, r3
/* 8145D68C | 7F 63 DB 78 */	mr r3, r27
/* 8145D690 | 38 80 00 03 */	li r4, 0x3
/* 8145D694 | 4B FE F0 2D */	bl CHANSVmGetArgInteger
/* 8145D698 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145D69C | 41 82 00 0C */	beq .L_8145D6A8
/* 8145D6A0 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8145D6A4 | 48 00 00 08 */	b .L_8145D6AC
.L_8145D6A8:
/* 8145D6A8 | 38 00 00 00 */	li r0, 0x0
.L_8145D6AC:
/* 8145D6AC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145D6B0 | 98 1C 00 00 */	stb r0, 0x0(r28)
/* 8145D6B4 | 41 82 00 0C */	beq .L_8145D6C0
/* 8145D6B8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8145D6BC | 48 00 00 08 */	b .L_8145D6C4
.L_8145D6C0:
/* 8145D6C0 | 38 00 00 00 */	li r0, 0x0
.L_8145D6C4:
/* 8145D6C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145D6C8 | 98 1C 00 01 */	stb r0, 0x1(r28)
/* 8145D6CC | 41 82 00 0C */	beq .L_8145D6D8
/* 8145D6D0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145D6D4 | 48 00 00 08 */	b .L_8145D6DC
.L_8145D6D8:
/* 8145D6D8 | 38 00 00 00 */	li r0, 0x0
.L_8145D6DC:
/* 8145D6DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D6E0 | 98 1C 00 02 */	stb r0, 0x2(r28)
/* 8145D6E4 | 41 82 00 0C */	beq .L_8145D6F0
/* 8145D6E8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145D6EC | 48 00 00 08 */	b .L_8145D6F4
.L_8145D6F0:
/* 8145D6F0 | 38 00 00 00 */	li r0, 0x0
.L_8145D6F4:
/* 8145D6F4 | 98 1C 00 03 */	stb r0, 0x3(r28)
.L_8145D6F8:
/* 8145D6F8 | 3B A0 00 01 */	li r29, 0x1
.L_8145D6FC:
/* 8145D6FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D700 | 7F A3 EB 78 */	mr r3, r29
/* 8145D704 | 48 19 BE 09 */	bl _restgpr_27
/* 8145D708 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D70C | 7C 08 03 A6 */	mtlr r0
/* 8145D710 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D714 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x120 | 0x8145D718 | size: 0x90
# ipl::cs::color::_ctor(CHANSVm*, CHANSVmObjHdr*, nw4r::ut::Color)
.fn _ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrQ34nw4r2ut5Color, global
/* 8145D718 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D71C | 7C 08 02 A6 */	mflr r0
/* 8145D720 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D724 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D728 | 48 19 BD 9D */	bl _savegpr_28
/* 8145D72C | 7C BE 2B 78 */	mr r30, r5
/* 8145D730 | 7C 7C 1B 78 */	mr r28, r3
/* 8145D734 | 7C 9D 23 78 */	mr r29, r4
/* 8145D738 | 3B E0 00 00 */	li r31, 0x0
/* 8145D73C | 38 A0 00 04 */	li r5, 0x4
/* 8145D740 | 4B FE D5 15 */	bl CHANSVmNewObjData
/* 8145D744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D748 | 41 82 00 44 */	beq .L_8145D78C
/* 8145D74C | 88 DE 00 00 */	lbz r6, 0x0(r30)
/* 8145D750 | 38 00 00 08 */	li r0, 0x8
/* 8145D754 | 88 BE 00 01 */	lbz r5, 0x1(r30)
/* 8145D758 | 38 8D 99 08 */	li r4, lbl_81697948@sda21
/* 8145D75C | 98 C3 00 00 */	stb r6, 0x0(r3)
/* 8145D760 | 88 DE 00 02 */	lbz r6, 0x2(r30)
/* 8145D764 | 98 A3 00 01 */	stb r5, 0x1(r3)
/* 8145D768 | 88 BE 00 03 */	lbz r5, 0x3(r30)
/* 8145D76C | 98 C3 00 02 */	stb r6, 0x2(r3)
/* 8145D770 | 98 A3 00 03 */	stb r5, 0x3(r3)
/* 8145D774 | 7F 83 E3 78 */	mr r3, r28
/* 8145D778 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8145D77C | 4B FE EF F9 */	bl CHANSVmFindNativeClass
/* 8145D780 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145D784 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8145D788 | 7F E0 19 10 */	subfe r31, r0, r3
.L_8145D78C:
/* 8145D78C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D790 | 7F E3 FB 78 */	mr r3, r31
/* 8145D794 | 48 19 BD 7D */	bl _restgpr_28
/* 8145D798 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D79C | 7C 08 03 A6 */	mtlr r0
/* 8145D7A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D7A4 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrQ34nw4r2ut5Color

# .text:0x1B0 | 0x8145D7A8 | size: 0x74
# ipl::cs::color::init(CHANSVm*)
.fn init__Q33ipl2cs5colorFP7CHANSVm, global
/* 8145D7A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145D7AC | 7C 08 02 A6 */	mflr r0
/* 8145D7B0 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145D7B4 | 38 8D 99 08 */	li r4, lbl_81697948@sda21
/* 8145D7B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145D7BC | 38 A5 D5 F8 */	addi r5, r5, ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145D7C0 | 38 C0 00 00 */	li r6, 0x0
/* 8145D7C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145D7C8 | 3B E0 00 00 */	li r31, 0x0
/* 8145D7CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145D7D0 | 7C 7E 1B 78 */	mr r30, r3
/* 8145D7D4 | 4B FE F1 01 */	bl CHANSVmAddNativeClass
/* 8145D7D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D7DC | 7C 64 1B 78 */	mr r4, r3
/* 8145D7E0 | 41 82 00 20 */	beq .L_8145D800
/* 8145D7E4 | 3C A0 81 61 */	lis r5, scPropertyList__Q33ipl2cs5color@ha
/* 8145D7E8 | 7F C3 F3 78 */	mr r3, r30
/* 8145D7EC | 38 C0 00 04 */	li r6, 0x4
/* 8145D7F0 | 38 A5 77 80 */	addi r5, r5, scPropertyList__Q33ipl2cs5color@l
/* 8145D7F4 | 4B FE F4 65 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145D7F8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D7FC | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D800:
/* 8145D800 | 7F E3 FB 78 */	mr r3, r31
/* 8145D804 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145D808 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145D80C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145D810 | 7C 08 03 A6 */	mtlr r0
/* 8145D814 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145D818 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs5colorFP7CHANSVm

# .text:0x224 | 0x8145D81C | size: 0x84
# int ipl::cs::color::get<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<0>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145D81C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D820 | 7C 08 02 A6 */	mflr r0
/* 8145D824 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D828 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D82C | 48 19 BC 99 */	bl _savegpr_28
/* 8145D830 | 7C 9D 23 78 */	mr r29, r4
/* 8145D834 | 7C 7C 1B 78 */	mr r28, r3
/* 8145D838 | 7C BE 2B 78 */	mr r30, r5
/* 8145D83C | 3B E0 00 00 */	li r31, 0x0
/* 8145D840 | 7F A3 EB 78 */	mr r3, r29
/* 8145D844 | 4B FF EC E5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D84C | 41 82 00 38 */	beq .L_8145D884
/* 8145D850 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145D854 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145D858 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D85C | 41 82 00 28 */	beq .L_8145D884
/* 8145D860 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145D864 | 7F 83 E3 78 */	mr r3, r28
/* 8145D868 | 7F C4 F3 78 */	mr r4, r30
/* 8145D86C | 38 A0 00 00 */	li r5, 0x0
/* 8145D870 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145D874 | 88 C1 00 08 */	lbz r6, 0x8(r1)
/* 8145D878 | 4B FE E1 21 */	bl CHANSVmSetInteger
/* 8145D87C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D880 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D884:
/* 8145D884 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D888 | 7F E3 FB 78 */	mr r3, r31
/* 8145D88C | 48 19 BC 85 */	bl _restgpr_28
/* 8145D890 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D894 | 7C 08 03 A6 */	mtlr r0
/* 8145D898 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D89C | 4E 80 00 20 */	blr
.endfn "get<0>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x2A8 | 0x8145D8A0 | size: 0x88
# int ipl::cs::color::set<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<0>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145D8A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D8A4 | 7C 08 02 A6 */	mflr r0
/* 8145D8A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D8AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D8B0 | 48 19 BC 19 */	bl _savegpr_29
/* 8145D8B4 | 7C 9D 23 78 */	mr r29, r4
/* 8145D8B8 | 3B C0 00 00 */	li r30, 0x0
/* 8145D8BC | 38 80 00 00 */	li r4, 0x0
/* 8145D8C0 | 4B FE EE 01 */	bl CHANSVmGetArgInteger
/* 8145D8C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145D8C8 | 7F A3 EB 78 */	mr r3, r29
/* 8145D8CC | 4B FF EC 5D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D8D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D8D4 | 41 82 00 38 */	beq .L_8145D90C
/* 8145D8D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145D8DC | 41 82 00 30 */	beq .L_8145D90C
/* 8145D8E0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145D8E4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8145D8E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145D8EC | 41 82 00 20 */	beq .L_8145D90C
/* 8145D8F0 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8145D8F4 | 3B C0 00 01 */	li r30, 0x1
/* 8145D8F8 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145D8FC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8145D900 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8145D904 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145D908 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_8145D90C:
/* 8145D90C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D910 | 7F C3 F3 78 */	mr r3, r30
/* 8145D914 | 48 19 BC 01 */	bl _restgpr_29
/* 8145D918 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D91C | 7C 08 03 A6 */	mtlr r0
/* 8145D920 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D924 | 4E 80 00 20 */	blr
.endfn "set<0>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x330 | 0x8145D928 | size: 0x84
# int ipl::cs::color::get<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<1>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145D928 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D92C | 7C 08 02 A6 */	mflr r0
/* 8145D930 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D934 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D938 | 48 19 BB 8D */	bl _savegpr_28
/* 8145D93C | 7C 9D 23 78 */	mr r29, r4
/* 8145D940 | 7C 7C 1B 78 */	mr r28, r3
/* 8145D944 | 7C BE 2B 78 */	mr r30, r5
/* 8145D948 | 3B E0 00 00 */	li r31, 0x0
/* 8145D94C | 7F A3 EB 78 */	mr r3, r29
/* 8145D950 | 4B FF EB D9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D954 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D958 | 41 82 00 38 */	beq .L_8145D990
/* 8145D95C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145D960 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145D964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D968 | 41 82 00 28 */	beq .L_8145D990
/* 8145D96C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145D970 | 7F 83 E3 78 */	mr r3, r28
/* 8145D974 | 7F C4 F3 78 */	mr r4, r30
/* 8145D978 | 38 A0 00 00 */	li r5, 0x0
/* 8145D97C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145D980 | 88 C1 00 09 */	lbz r6, 0x9(r1)
/* 8145D984 | 4B FE E0 15 */	bl CHANSVmSetInteger
/* 8145D988 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D98C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D990:
/* 8145D990 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D994 | 7F E3 FB 78 */	mr r3, r31
/* 8145D998 | 48 19 BB 79 */	bl _restgpr_28
/* 8145D99C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D9A0 | 7C 08 03 A6 */	mtlr r0
/* 8145D9A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D9A8 | 4E 80 00 20 */	blr
.endfn "get<1>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x3B4 | 0x8145D9AC | size: 0x88
# int ipl::cs::color::set<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<1>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145D9AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D9B0 | 7C 08 02 A6 */	mflr r0
/* 8145D9B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D9B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D9BC | 48 19 BB 0D */	bl _savegpr_29
/* 8145D9C0 | 7C 9D 23 78 */	mr r29, r4
/* 8145D9C4 | 3B C0 00 00 */	li r30, 0x0
/* 8145D9C8 | 38 80 00 00 */	li r4, 0x0
/* 8145D9CC | 4B FE EC F5 */	bl CHANSVmGetArgInteger
/* 8145D9D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145D9D4 | 7F A3 EB 78 */	mr r3, r29
/* 8145D9D8 | 4B FF EB 51 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D9E0 | 41 82 00 38 */	beq .L_8145DA18
/* 8145D9E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145D9E8 | 41 82 00 30 */	beq .L_8145DA18
/* 8145D9EC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145D9F0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8145D9F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145D9F8 | 41 82 00 20 */	beq .L_8145DA18
/* 8145D9FC | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8145DA00 | 3B C0 00 01 */	li r30, 0x1
/* 8145DA04 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145DA08 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8145DA0C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8145DA10 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145DA14 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_8145DA18:
/* 8145DA18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DA1C | 7F C3 F3 78 */	mr r3, r30
/* 8145DA20 | 48 19 BA F5 */	bl _restgpr_29
/* 8145DA24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DA28 | 7C 08 03 A6 */	mtlr r0
/* 8145DA2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DA30 | 4E 80 00 20 */	blr
.endfn "set<1>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x43C | 0x8145DA34 | size: 0x84
# int ipl::cs::color::get<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<2>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DA34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DA38 | 7C 08 02 A6 */	mflr r0
/* 8145DA3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DA40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DA44 | 48 19 BA 81 */	bl _savegpr_28
/* 8145DA48 | 7C 9D 23 78 */	mr r29, r4
/* 8145DA4C | 7C 7C 1B 78 */	mr r28, r3
/* 8145DA50 | 7C BE 2B 78 */	mr r30, r5
/* 8145DA54 | 3B E0 00 00 */	li r31, 0x0
/* 8145DA58 | 7F A3 EB 78 */	mr r3, r29
/* 8145DA5C | 4B FF EA CD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DA60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DA64 | 41 82 00 38 */	beq .L_8145DA9C
/* 8145DA68 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DA6C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145DA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DA74 | 41 82 00 28 */	beq .L_8145DA9C
/* 8145DA78 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145DA7C | 7F 83 E3 78 */	mr r3, r28
/* 8145DA80 | 7F C4 F3 78 */	mr r4, r30
/* 8145DA84 | 38 A0 00 00 */	li r5, 0x0
/* 8145DA88 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145DA8C | 88 C1 00 0A */	lbz r6, 0xa(r1)
/* 8145DA90 | 4B FE DF 09 */	bl CHANSVmSetInteger
/* 8145DA94 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145DA98 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145DA9C:
/* 8145DA9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DAA0 | 7F E3 FB 78 */	mr r3, r31
/* 8145DAA4 | 48 19 BA 6D */	bl _restgpr_28
/* 8145DAA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DAAC | 7C 08 03 A6 */	mtlr r0
/* 8145DAB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DAB4 | 4E 80 00 20 */	blr
.endfn "get<2>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x4C0 | 0x8145DAB8 | size: 0x88
# int ipl::cs::color::set<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<2>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DAB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DABC | 7C 08 02 A6 */	mflr r0
/* 8145DAC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DAC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DAC8 | 48 19 BA 01 */	bl _savegpr_29
/* 8145DACC | 7C 9D 23 78 */	mr r29, r4
/* 8145DAD0 | 3B C0 00 00 */	li r30, 0x0
/* 8145DAD4 | 38 80 00 00 */	li r4, 0x0
/* 8145DAD8 | 4B FE EB E9 */	bl CHANSVmGetArgInteger
/* 8145DADC | 7C 7F 1B 78 */	mr r31, r3
/* 8145DAE0 | 7F A3 EB 78 */	mr r3, r29
/* 8145DAE4 | 4B FF EA 45 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DAE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DAEC | 41 82 00 38 */	beq .L_8145DB24
/* 8145DAF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145DAF4 | 41 82 00 30 */	beq .L_8145DB24
/* 8145DAF8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DAFC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8145DB00 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145DB04 | 41 82 00 20 */	beq .L_8145DB24
/* 8145DB08 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8145DB0C | 3B C0 00 01 */	li r30, 0x1
/* 8145DB10 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145DB14 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8145DB18 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8145DB1C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145DB20 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_8145DB24:
/* 8145DB24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DB28 | 7F C3 F3 78 */	mr r3, r30
/* 8145DB2C | 48 19 B9 E9 */	bl _restgpr_29
/* 8145DB30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DB34 | 7C 08 03 A6 */	mtlr r0
/* 8145DB38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DB3C | 4E 80 00 20 */	blr
.endfn "set<2>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x548 | 0x8145DB40 | size: 0x84
# int ipl::cs::color::get<3>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<3>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DB40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DB44 | 7C 08 02 A6 */	mflr r0
/* 8145DB48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DB4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DB50 | 48 19 B9 75 */	bl _savegpr_28
/* 8145DB54 | 7C 9D 23 78 */	mr r29, r4
/* 8145DB58 | 7C 7C 1B 78 */	mr r28, r3
/* 8145DB5C | 7C BE 2B 78 */	mr r30, r5
/* 8145DB60 | 3B E0 00 00 */	li r31, 0x0
/* 8145DB64 | 7F A3 EB 78 */	mr r3, r29
/* 8145DB68 | 4B FF E9 C1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DB70 | 41 82 00 38 */	beq .L_8145DBA8
/* 8145DB74 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DB78 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145DB7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DB80 | 41 82 00 28 */	beq .L_8145DBA8
/* 8145DB84 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145DB88 | 7F 83 E3 78 */	mr r3, r28
/* 8145DB8C | 7F C4 F3 78 */	mr r4, r30
/* 8145DB90 | 38 A0 00 00 */	li r5, 0x0
/* 8145DB94 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145DB98 | 88 C1 00 0B */	lbz r6, 0xb(r1)
/* 8145DB9C | 4B FE DD FD */	bl CHANSVmSetInteger
/* 8145DBA0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145DBA4 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145DBA8:
/* 8145DBA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DBAC | 7F E3 FB 78 */	mr r3, r31
/* 8145DBB0 | 48 19 B9 61 */	bl _restgpr_28
/* 8145DBB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DBB8 | 7C 08 03 A6 */	mtlr r0
/* 8145DBBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DBC0 | 4E 80 00 20 */	blr
.endfn "get<3>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x5CC | 0x8145DBC4 | size: 0x88
# int ipl::cs::color::set<3>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<3>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DBC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DBC8 | 7C 08 02 A6 */	mflr r0
/* 8145DBCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DBD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DBD4 | 48 19 B8 F5 */	bl _savegpr_29
/* 8145DBD8 | 7C 9D 23 78 */	mr r29, r4
/* 8145DBDC | 3B C0 00 00 */	li r30, 0x0
/* 8145DBE0 | 38 80 00 00 */	li r4, 0x0
/* 8145DBE4 | 4B FE EA DD */	bl CHANSVmGetArgInteger
/* 8145DBE8 | 7C 7F 1B 78 */	mr r31, r3
/* 8145DBEC | 7F A3 EB 78 */	mr r3, r29
/* 8145DBF0 | 4B FF E9 39 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DBF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DBF8 | 41 82 00 38 */	beq .L_8145DC30
/* 8145DBFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145DC00 | 41 82 00 30 */	beq .L_8145DC30
/* 8145DC04 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DC08 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8145DC0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145DC10 | 41 82 00 20 */	beq .L_8145DC30
/* 8145DC14 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8145DC18 | 3B C0 00 01 */	li r30, 0x1
/* 8145DC1C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145DC20 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8145DC24 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8145DC28 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145DC2C | 90 04 00 00 */	stw r0, 0x0(r4)
.L_8145DC30:
/* 8145DC30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DC34 | 7F C3 F3 78 */	mr r3, r30
/* 8145DC38 | 48 19 B8 DD */	bl _restgpr_29
/* 8145DC3C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DC40 | 7C 08 03 A6 */	mtlr r0
/* 8145DC44 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DC48 | 4E 80 00 20 */	blr
.endfn "set<3>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x81617780..0x816177B0 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x81617780 | size: 0x30
# ipl::cs::color::scPropertyList
.obj scPropertyList__Q33ipl2cs5color, local
	.4byte lbl_8169794E
	.4byte "get<0>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<0>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697950
	.4byte "get<1>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<1>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697952
	.4byte "get<2>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<2>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697954
	.4byte "get<3>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<3>__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
.endobj scPropertyList__Q33ipl2cs5color

# 0x81697948..0x81697958 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697948 | size: 0x6
.obj lbl_81697948, global
	.string "Color"
.endobj lbl_81697948

# .sdata:0x6 | 0x8169794E | size: 0x2
.obj lbl_8169794E, global
	.string "r"
.endobj lbl_8169794E

# .sdata:0x8 | 0x81697950 | size: 0x2
.obj lbl_81697950, global
	.string "g"
.endobj lbl_81697950

# .sdata:0xA | 0x81697952 | size: 0x2
.obj lbl_81697952, global
	.string "b"
.endobj lbl_81697952

# .sdata:0xC | 0x81697954 | size: 0x2
.obj lbl_81697954, global
	.string "a"
.endobj lbl_81697954

# .sdata:0xE | 0x81697956 | size: 0x2
.obj gap_11_81697956_sdata, global
.hidden gap_11_81697956_sdata
	.2byte 0x0000
.endobj gap_11_81697956_sdata
