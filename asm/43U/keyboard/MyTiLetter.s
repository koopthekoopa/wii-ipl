.include "macros.inc"
.file "MyTiLetter.cpp"

# 0x81444730..0x814454D8 | size: 0xDA8
.text
.balign 4

# .text:0x0 | 0x81444730 | size: 0x2CC
# textinput::extend::letter::InputForm::create(MEMAllocator*, textinput::inputform::EditBuffer*)
.fn create__Q49textinput6extend6letter9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer, global
/* 81444730 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81444734 | 7C 08 02 A6 */	mflr r0
/* 81444738 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8144473C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81444740 | 48 1B 4D 59 */	bl _savegpr_17
/* 81444744 | 7C 79 1B 78 */	mr r25, r3
/* 81444748 | 7C 9A 23 78 */	mr r26, r4
/* 8144474C | 4B FF CF 65 */	bl create__Q49textinput6extend4memo9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer
/* 81444750 | 80 99 02 D0 */	lwz r4, 0x2d0(r25)
/* 81444754 | 7F 43 D3 78 */	mr r3, r26
/* 81444758 | 48 11 6F 21 */	bl fn_8155B678
/* 8144475C | 7F 43 D3 78 */	mr r3, r26
/* 81444760 | 38 80 00 14 */	li r4, 0x14
/* 81444764 | 48 11 6F 05 */	bl fn_8155B668
/* 81444768 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144476C | 41 82 00 20 */	beq .L_8144478C
/* 81444770 | 38 00 00 00 */	li r0, 0x0
/* 81444774 | 3C 80 81 67 */	lis r4, __vt__Q49textinput6extend6letter12EventHandler@ha
/* 81444778 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8144477C | 38 84 89 B0 */	addi r4, r4, __vt__Q49textinput6extend6letter12EventHandler@l
/* 81444780 | 93 23 00 0C */	stw r25, 0xc(r3)
/* 81444784 | 93 23 00 10 */	stw r25, 0x10(r3)
/* 81444788 | 90 83 00 00 */	stw r4, 0x0(r3)
.L_8144478C:
/* 8144478C | 90 79 02 D0 */	stw r3, 0x2d0(r25)
/* 81444790 | 80 99 02 2C */	lwz r4, 0x22c(r25)
/* 81444794 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444798 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8144479C | 7D 89 03 A6 */	mtctr r12
/* 814447A0 | 4E 80 04 21 */	bctrl
/* 814447A4 | 80 79 02 28 */	lwz r3, 0x228(r25)
/* 814447A8 | 80 99 02 D0 */	lwz r4, 0x2d0(r25)
/* 814447AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814447B0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814447B4 | 7D 89 03 A6 */	mtctr r12
/* 814447B8 | 4E 80 04 21 */	bctrl
/* 814447BC | 3E 60 81 66 */	lis r19, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 814447C0 | 3F E0 81 61 */	lis r31, lbl_81616AD8@ha
/* 814447C4 | 3E A0 81 67 */	lis r21, __vt__Q49textinput6extend6letter7PicPane@ha
/* 814447C8 | 3E E0 81 67 */	lis r23, __vt__Q49textinput6extend6letter9WholePane@ha
/* 814447CC | 3B FF 6A D8 */	addi r31, r31, lbl_81616AD8@l
/* 814447D0 | 3A 73 F8 C8 */	addi r19, r19, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 814447D4 | 3A B5 89 28 */	addi r21, r21, __vt__Q49textinput6extend6letter7PicPane@l
/* 814447D8 | 3A F7 89 54 */	addi r23, r23, __vt__Q49textinput6extend6letter9WholePane@l
/* 814447DC | 3B C0 00 00 */	li r30, 0x0
/* 814447E0 | 3A 80 00 00 */	li r20, 0x0
/* 814447E4 | 3A C0 00 01 */	li r22, 0x1
.L_814447E8:
/* 814447E8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814447EC | 3B 80 00 00 */	li r28, 0x0
/* 814447F0 | 1C 00 00 3C */	mulli r0, r0, 0x3c
/* 814447F4 | 7F BF 02 14 */	add r29, r31, r0
/* 814447F8 | 7C 1F 00 2E */	lwzx r0, r31, r0
/* 814447FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81444800 | 41 82 00 14 */	beq .L_81444814
/* 81444804 | 40 80 00 C4 */	bge .L_814448C8
/* 81444808 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144480C | 40 80 00 64 */	bge .L_81444870
/* 81444810 | 48 00 00 B8 */	b .L_814448C8
.L_81444814:
/* 81444814 | 7F 43 D3 78 */	mr r3, r26
/* 81444818 | 38 80 00 34 */	li r4, 0x34
/* 8144481C | 48 11 6E 4D */	bl fn_8155B668
/* 81444820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444824 | 7C 7C 1B 78 */	mr r28, r3
/* 81444828 | 41 82 00 A0 */	beq .L_814448C8
/* 8144482C | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 81444830 | 38 79 02 18 */	addi r3, r25, 0x218
/* 81444834 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81444838 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144483C | 7D 89 03 A6 */	mtctr r12
/* 81444840 | 4E 80 04 21 */	bctrl
/* 81444844 | 92 7C 00 00 */	stw r19, 0x0(r28)
/* 81444848 | 38 80 00 10 */	li r4, 0x10
/* 8144484C | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 81444850 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 81444854 | 92 9C 00 14 */	stw r20, 0x14(r28)
/* 81444858 | 92 9C 00 18 */	stw r20, 0x18(r28)
/* 8144485C | 48 0C D8 01 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81444860 | 92 9C 00 2C */	stw r20, 0x2c(r28)
/* 81444864 | 92 BC 00 00 */	stw r21, 0x0(r28)
/* 81444868 | 92 DC 00 30 */	stw r22, 0x30(r28)
/* 8144486C | 48 00 00 5C */	b .L_814448C8
.L_81444870:
/* 81444870 | 7F 43 D3 78 */	mr r3, r26
/* 81444874 | 38 80 00 34 */	li r4, 0x34
/* 81444878 | 48 11 6D F1 */	bl fn_8155B668
/* 8144487C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444880 | 7C 7C 1B 78 */	mr r28, r3
/* 81444884 | 41 82 00 44 */	beq .L_814448C8
/* 81444888 | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 8144488C | 38 79 02 18 */	addi r3, r25, 0x218
/* 81444890 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81444894 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444898 | 7D 89 03 A6 */	mtctr r12
/* 8144489C | 4E 80 04 21 */	bctrl
/* 814448A0 | 92 7C 00 00 */	stw r19, 0x0(r28)
/* 814448A4 | 38 80 00 10 */	li r4, 0x10
/* 814448A8 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 814448AC | 38 7C 00 08 */	addi r3, r28, 0x8
/* 814448B0 | 92 9C 00 14 */	stw r20, 0x14(r28)
/* 814448B4 | 92 9C 00 18 */	stw r20, 0x18(r28)
/* 814448B8 | 48 0C D7 A5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 814448BC | 92 9C 00 2C */	stw r20, 0x2c(r28)
/* 814448C0 | 92 FC 00 00 */	stw r23, 0x0(r28)
/* 814448C4 | 92 9C 00 30 */	stw r20, 0x30(r28)
.L_814448C8:
/* 814448C8 | 7F 84 E3 78 */	mr r4, r28
/* 814448CC | 38 79 02 84 */	addi r3, r25, 0x284
/* 814448D0 | 48 0C D7 A5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 814448D4 | 83 1D 00 08 */	lwz r24, 0x8(r29)
/* 814448D8 | 3B 60 00 00 */	li r27, 0x0
/* 814448DC | 48 00 00 84 */	b .L_81444960
.L_814448E0:
/* 814448E0 | 80 79 02 24 */	lwz r3, 0x224(r25)
/* 814448E4 | 57 60 13 BA */	clrlslwi r0, r27, 16, 2
/* 814448E8 | 7E 5D 02 14 */	add r18, r29, r0
/* 814448EC | 38 80 00 00 */	li r4, 0x0
/* 814448F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814448F4 | 38 C0 00 00 */	li r6, 0x0
/* 814448F8 | 80 B2 00 0C */	lwz r5, 0xc(r18)
/* 814448FC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81444900 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81444904 | 7D 89 03 A6 */	mtctr r12
/* 81444908 | 4E 80 04 21 */	bctrl
/* 8144490C | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 81444910 | 7C 71 1B 78 */	mr r17, r3
/* 81444914 | 38 79 02 18 */	addi r3, r25, 0x218
/* 81444918 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8144491C | 7D 89 03 A6 */	mtctr r12
/* 81444920 | 4E 80 04 21 */	bctrl
/* 81444924 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444928 | 7E 24 8B 78 */	mr r4, r17
/* 8144492C | 80 B9 02 24 */	lwz r5, 0x224(r25)
/* 81444930 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81444934 | 7D 89 03 A6 */	mtctr r12
/* 81444938 | 4E 80 04 21 */	bctrl
/* 8144493C | 80 B2 00 0C */	lwz r5, 0xc(r18)
/* 81444940 | 7C 66 1B 78 */	mr r6, r3
/* 81444944 | 7F 83 E3 78 */	mr r3, r28
/* 81444948 | 7F 44 D3 78 */	mr r4, r26
/* 8144494C | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81444950 | 38 E0 00 00 */	li r7, 0x0
/* 81444954 | 39 00 00 01 */	li r8, 0x1
/* 81444958 | 4B FF 26 09 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 8144495C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81444960:
/* 81444960 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 81444964 | 7C 00 C0 40 */	cmplw r0, r24
/* 81444968 | 41 80 FF 78 */	blt .L_814448E0
/* 8144496C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81444970 | 28 1E 00 04 */	cmplwi r30, 0x4
/* 81444974 | 41 80 FE 74 */	blt .L_814447E8
/* 81444978 | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 8144497C | 38 79 02 18 */	addi r3, r25, 0x218
/* 81444980 | 38 8D 95 10 */	li r4, lbl_81697550@sda21
/* 81444984 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444988 | 7D 89 03 A6 */	mtctr r12
/* 8144498C | 4E 80 04 21 */	bctrl
/* 81444990 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444994 | 38 80 00 03 */	li r4, 0x3
/* 81444998 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144499C | 7D 89 03 A6 */	mtctr r12
/* 814449A0 | 4E 80 04 21 */	bctrl
/* 814449A4 | 80 79 02 1C */	lwz r3, 0x21c(r25)
/* 814449A8 | 38 80 00 00 */	li r4, 0x0
/* 814449AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814449B0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814449B4 | 7D 89 03 A6 */	mtctr r12
/* 814449B8 | 4E 80 04 21 */	bctrl
/* 814449BC | 80 79 02 1C */	lwz r3, 0x21c(r25)
/* 814449C0 | 38 99 02 30 */	addi r4, r25, 0x230
/* 814449C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814449C8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 814449CC | 7D 89 03 A6 */	mtctr r12
/* 814449D0 | 4E 80 04 21 */	bctrl
/* 814449D4 | 38 00 00 00 */	li r0, 0x0
/* 814449D8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814449DC | 98 19 04 00 */	stb r0, 0x400(r25)
/* 814449E0 | 98 19 04 01 */	stb r0, 0x401(r25)
/* 814449E4 | 98 19 03 F0 */	stb r0, 0x3f0(r25)
/* 814449E8 | 48 1B 4A FD */	bl _restgpr_17
/* 814449EC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814449F0 | 7C 08 03 A6 */	mtlr r0
/* 814449F4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814449F8 | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend6letter9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer

# .text:0x2CC | 0x814449FC | size: 0x58
# textinput::extend::letter::AnmPane::~AnmPane()
.fn __dt__Q49textinput6extend6letter7AnmPaneFv, global
/* 814449FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444A00 | 7C 08 02 A6 */	mflr r0
/* 81444A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444A08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444A0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444A10 | 7C 9F 23 78 */	mr r31, r4
/* 81444A14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81444A18 | 7C 7E 1B 78 */	mr r30, r3
/* 81444A1C | 41 82 00 1C */	beq .L_81444A38
/* 81444A20 | 38 80 00 00 */	li r4, 0x0
/* 81444A24 | 4B FF 24 FD */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 81444A28 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81444A2C | 40 81 00 0C */	ble .L_81444A38
/* 81444A30 | 7F C3 F3 78 */	mr r3, r30
/* 81444A34 | 48 1B 36 B1 */	bl __dl__FPv
.L_81444A38:
/* 81444A38 | 7F C3 F3 78 */	mr r3, r30
/* 81444A3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444A40 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81444A44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81444A48 | 7C 08 03 A6 */	mtlr r0
/* 81444A4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444A50 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend6letter7AnmPaneFv

# .text:0x324 | 0x81444A54 | size: 0x208
# textinput::extend::letter::InputForm::drawBody()
.fn drawBody__Q49textinput6extend6letter9InputFormFv, global
/* 81444A54 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81444A58 | 7C 08 02 A6 */	mflr r0
/* 81444A5C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81444A60 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81444A64 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 81444A68 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 81444A6C | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 81444A70 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81444A74 | 3F E0 81 67 */	lis r31, lbl_81668860@ha
/* 81444A78 | 3B FF 88 60 */	addi r31, r31, lbl_81668860@l
/* 81444A7C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81444A80 | 38 9F 00 4C */	addi r4, r31, 0x4c
/* 81444A84 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 81444A88 | 93 81 00 30 */	stw r28, 0x30(r1)
/* 81444A8C | 7C 7C 1B 78 */	mr r28, r3
/* 81444A90 | 81 83 02 18 */	lwz r12, 0x218(r3)
/* 81444A94 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81444A98 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444A9C | 7D 89 03 A6 */	mtctr r12
/* 81444AA0 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81444AA4 | 4E 80 04 21 */	bctrl
/* 81444AA8 | C3 C2 8A B0 */	lfs f30, lbl_81694EB0@sda21(r0)
/* 81444AAC | 7C 7E 1B 78 */	mr r30, r3
/* 81444AB0 | 3B A0 00 00 */	li r29, 0x0
/* 81444AB4 | FF E0 F0 90 */	fmr f31, f30
/* 81444AB8 | 48 00 00 64 */	b .L_81444B1C
.L_81444ABC:
/* 81444ABC | FC 00 F0 18 */	frsp f0, f30
/* 81444AC0 | D3 FE 00 2C */	stfs f31, 0x2c(r30)
/* 81444AC4 | 7F C3 F3 78 */	mr r3, r30
/* 81444AC8 | 38 9C 02 30 */	addi r4, r28, 0x230
/* 81444ACC | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 81444AD0 | D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 81444AD4 | D3 FE 00 34 */	stfs f31, 0x34(r30)
/* 81444AD8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81444ADC | D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 81444AE0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81444AE4 | D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 81444AE8 | D0 01 00 28 */	stfs f0, 0x28(r1)
/* 81444AEC | D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 81444AF0 | 7D 89 03 A6 */	mtctr r12
/* 81444AF4 | 4E 80 04 21 */	bctrl
/* 81444AF8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81444AFC | 7F C3 F3 78 */	mr r3, r30
/* 81444B00 | 38 9C 02 30 */	addi r4, r28, 0x230
/* 81444B04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444B08 | 7D 89 03 A6 */	mtctr r12
/* 81444B0C | 4E 80 04 21 */	bctrl
/* 81444B10 | C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 81444B14 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81444B18 | EF DE 00 28 */	fsubs f30, f30, f0
.L_81444B1C:
/* 81444B1C | 80 7C 03 24 */	lwz r3, 0x324(r28)
/* 81444B20 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81444B24 | 7C 00 16 70 */	srawi r0, r0, 2
/* 81444B28 | 7C 60 01 94 */	addze r3, r0
/* 81444B2C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81444B30 | 7C 1D 00 00 */	cmpw r29, r0
/* 81444B34 | 41 80 FF 88 */	blt .L_81444ABC
/* 81444B38 | 88 1C 03 EC */	lbz r0, 0x3ec(r28)
/* 81444B3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444B40 | 40 82 00 30 */	bne .L_81444B70
/* 81444B44 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81444B48 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81444B4C | 38 9F 00 88 */	addi r4, r31, 0x88
/* 81444B50 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444B54 | 7D 89 03 A6 */	mtctr r12
/* 81444B58 | 4E 80 04 21 */	bctrl
/* 81444B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444B60 | 38 9C 02 30 */	addi r4, r28, 0x230
/* 81444B64 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444B68 | 7D 89 03 A6 */	mtctr r12
/* 81444B6C | 4E 80 04 21 */	bctrl
.L_81444B70:
/* 81444B70 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81444B74 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81444B78 | 38 8D 95 18 */	li r4, lbl_81697558@sda21
/* 81444B7C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444B80 | 7D 89 03 A6 */	mtctr r12
/* 81444B84 | 4E 80 04 21 */	bctrl
/* 81444B88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444B8C | 38 9C 02 30 */	addi r4, r28, 0x230
/* 81444B90 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444B94 | 7D 89 03 A6 */	mtctr r12
/* 81444B98 | 4E 80 04 21 */	bctrl
/* 81444B9C | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81444BA0 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81444BA4 | 38 9F 00 98 */	addi r4, r31, 0x98
/* 81444BA8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444BAC | 7D 89 03 A6 */	mtctr r12
/* 81444BB0 | 4E 80 04 21 */	bctrl
/* 81444BB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444BB8 | 38 9C 02 30 */	addi r4, r28, 0x230
/* 81444BBC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444BC0 | 7D 89 03 A6 */	mtctr r12
/* 81444BC4 | 4E 80 04 21 */	bctrl
/* 81444BC8 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81444BCC | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81444BD0 | 38 9F 00 A4 */	addi r4, r31, 0xa4
/* 81444BD4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444BD8 | 7D 89 03 A6 */	mtctr r12
/* 81444BDC | 4E 80 04 21 */	bctrl
/* 81444BE0 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81444BE4 | 38 9F 00 A4 */	addi r4, r31, 0xa4
/* 81444BE8 | C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 81444BEC | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81444BF0 | C0 02 8A B4 */	lfs f0, lbl_81694EB4@sda21(r0)
/* 81444BF4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444BF8 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81444BFC | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81444C00 | 7D 89 03 A6 */	mtctr r12
/* 81444C04 | 4E 80 04 21 */	bctrl
/* 81444C08 | C0 41 00 08 */	lfs f2, 0x8(r1)
/* 81444C0C | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81444C10 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 81444C14 | C0 02 8A B0 */	lfs f0, lbl_81694EB0@sda21(r0)
/* 81444C18 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81444C1C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81444C20 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 81444C24 | D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 81444C28 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 81444C2C | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 81444C30 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 81444C34 | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 81444C38 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 81444C3C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81444C40 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81444C44 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 81444C48 | 83 81 00 30 */	lwz r28, 0x30(r1)
/* 81444C4C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81444C50 | 7C 08 03 A6 */	mtlr r0
/* 81444C54 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81444C58 | 4E 80 00 20 */	blr
.endfn drawBody__Q49textinput6extend6letter9InputFormFv

# .text:0x52C | 0x81444C5C | size: 0x140
# textinput::extend::letter::InputForm::drawFooter()
.fn drawFooter__Q49textinput6extend6letter9InputFormFv, global
/* 81444C5C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81444C60 | 7C 08 02 A6 */	mflr r0
/* 81444C64 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81444C68 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81444C6C | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81444C70 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81444C74 | 3F E0 81 67 */	lis r31, lbl_816688AC@ha
/* 81444C78 | 3B FF 88 AC */	addi r31, r31, lbl_816688AC@l
/* 81444C7C | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81444C80 | 7C 7E 1B 78 */	mr r30, r3
/* 81444C84 | 81 83 02 18 */	lwz r12, 0x218(r3)
/* 81444C88 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81444C8C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444C90 | 7D 89 03 A6 */	mtctr r12
/* 81444C94 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81444C98 | 4E 80 04 21 */	bctrl
/* 81444C9C | 80 9E 03 24 */	lwz r4, 0x324(r30)
/* 81444CA0 | 3C 00 43 30 */	lis r0, 0x4330
/* 81444CA4 | C0 03 00 50 */	lfs f0, 0x50(r3)
/* 81444CA8 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81444CAC | 38 84 FF FF */	subi r4, r4, 0x1
/* 81444CB0 | C0 22 8A B8 */	lfs f1, lbl_81694EB8@sda21(r0)
/* 81444CB4 | 7C 84 16 70 */	srawi r4, r4, 2
/* 81444CB8 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81444CBC | 7C 84 01 94 */	addze r4, r4
/* 81444CC0 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81444CC4 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 81444CC8 | C8 42 8A C0 */	lfd f2, lbl_81694EC0@sda21(r0)
/* 81444CCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81444CD0 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81444CD4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444CD8 | C8 21 00 20 */	lfd f1, 0x20(r1)
/* 81444CDC | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81444CE0 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81444CE4 | EF E1 00 32 */	fmuls f31, f1, f0
/* 81444CE8 | 7D 89 03 A6 */	mtctr r12
/* 81444CEC | 4E 80 04 21 */	bctrl
/* 81444CF0 | C0 02 8A B0 */	lfs f0, lbl_81694EB0@sda21(r0)
/* 81444CF4 | 7C 7F 1B 78 */	mr r31, r3
/* 81444CF8 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81444CFC | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81444D00 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81444D04 | D3 E3 00 30 */	stfs f31, 0x30(r3)
/* 81444D08 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81444D0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444D10 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81444D14 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81444D18 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81444D1C | D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 81444D20 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81444D24 | 7D 89 03 A6 */	mtctr r12
/* 81444D28 | 4E 80 04 21 */	bctrl
/* 81444D2C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81444D30 | 7F E3 FB 78 */	mr r3, r31
/* 81444D34 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81444D38 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444D3C | 7D 89 03 A6 */	mtctr r12
/* 81444D40 | 4E 80 04 21 */	bctrl
/* 81444D44 | 88 1E 04 01 */	lbz r0, 0x401(r30)
/* 81444D48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444D4C | 41 82 00 30 */	beq .L_81444D7C
/* 81444D50 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81444D54 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81444D58 | 38 8D 95 10 */	li r4, lbl_81697550@sda21
/* 81444D5C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444D60 | 7D 89 03 A6 */	mtctr r12
/* 81444D64 | 4E 80 04 21 */	bctrl
/* 81444D68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444D6C | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81444D70 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444D74 | 7D 89 03 A6 */	mtctr r12
/* 81444D78 | 4E 80 04 21 */	bctrl
.L_81444D7C:
/* 81444D7C | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81444D80 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81444D84 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81444D88 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81444D8C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81444D90 | 7C 08 03 A6 */	mtlr r0
/* 81444D94 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81444D98 | 4E 80 00 20 */	blr
.endfn drawFooter__Q49textinput6extend6letter9InputFormFv

# .text:0x66C | 0x81444D9C | size: 0x48
# textinput::extend::letter::InputForm::getPhotoPaneMaterial()
.fn getPhotoPaneMaterial__Q49textinput6extend6letter9InputFormFv, global
/* 81444D9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444DA0 | 7C 08 02 A6 */	mflr r0
/* 81444DA4 | 38 8D 95 20 */	li r4, lbl_81697560@sda21
/* 81444DA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444DAC | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81444DB0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444DB4 | 7D 89 03 A6 */	mtctr r12
/* 81444DB8 | 4E 80 04 21 */	bctrl
/* 81444DBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444DC0 | 38 8D 95 20 */	li r4, lbl_81697560@sda21
/* 81444DC4 | 38 A0 00 01 */	li r5, 0x1
/* 81444DC8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81444DCC | 7D 89 03 A6 */	mtctr r12
/* 81444DD0 | 4E 80 04 21 */	bctrl
/* 81444DD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81444DD8 | 7C 08 03 A6 */	mtlr r0
/* 81444DDC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444DE0 | 4E 80 00 20 */	blr
.endfn getPhotoPaneMaterial__Q49textinput6extend6letter9InputFormFv

# .text:0x6B4 | 0x81444DE4 | size: 0x1C
# textinput::extend::letter::InputForm::onPhotoTrig()
.fn onPhotoTrig__Q49textinput6extend6letter9InputFormFv, global
/* 81444DE4 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81444DE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81444DEC | 4C 82 00 20 */	bnelr
/* 81444DF0 | 88 03 04 01 */	lbz r0, 0x401(r3)
/* 81444DF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444DF8 | 4C 82 00 20 */	bnelr
/* 81444DFC | 4E 80 00 20 */	blr
.endfn onPhotoTrig__Q49textinput6extend6letter9InputFormFv

# .text:0x6D0 | 0x81444E00 | size: 0x28
# textinput::extend::letter::InputForm::onPhotoPoint()
.fn onPhotoPoint__Q49textinput6extend6letter9InputFormFv, global
/* 81444E00 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81444E04 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81444E08 | 4C 82 00 20 */	bnelr
/* 81444E0C | 88 03 04 00 */	lbz r0, 0x400(r3)
/* 81444E10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444E14 | 4C 82 00 20 */	bnelr
/* 81444E18 | 88 03 04 01 */	lbz r0, 0x401(r3)
/* 81444E1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444E20 | 4C 82 00 20 */	bnelr
/* 81444E24 | 4E 80 00 20 */	blr
.endfn onPhotoPoint__Q49textinput6extend6letter9InputFormFv

# .text:0x6F8 | 0x81444E28 | size: 0x28
# textinput::extend::letter::InputForm::onPhotoLeft()
.fn onPhotoLeft__Q49textinput6extend6letter9InputFormFv, global
/* 81444E28 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81444E2C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81444E30 | 4C 82 00 20 */	bnelr
/* 81444E34 | 88 03 04 00 */	lbz r0, 0x400(r3)
/* 81444E38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444E3C | 4C 82 00 20 */	bnelr
/* 81444E40 | 88 03 04 01 */	lbz r0, 0x401(r3)
/* 81444E44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444E48 | 4C 82 00 20 */	bnelr
/* 81444E4C | 4E 80 00 20 */	blr
.endfn onPhotoLeft__Q49textinput6extend6letter9InputFormFv

# .text:0x720 | 0x81444E50 | size: 0xA4
# textinput::extend::letter::InputForm::open()
.fn open__Q49textinput6extend6letter9InputFormFv, global
/* 81444E50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444E54 | 7C 08 02 A6 */	mflr r0
/* 81444E58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444E5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444E60 | 7C 7F 1B 78 */	mr r31, r3
/* 81444E64 | 4B FF EC 9D */	bl open__Q49textinput6extend4memo9InputFormFv
/* 81444E68 | 80 1F 04 04 */	lwz r0, 0x404(r31)
/* 81444E6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444E70 | 41 82 00 0C */	beq .L_81444E7C
/* 81444E74 | 41 80 00 3C */	blt .L_81444EB0
/* 81444E78 | 48 00 00 38 */	b .L_81444EB0
.L_81444E7C:
/* 81444E7C | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444E80 | 3C 80 81 67 */	lis r4, lbl_81668910@ha
/* 81444E84 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444E88 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444E8C | 38 84 89 10 */	addi r4, r4, lbl_81668910@l
/* 81444E90 | 7D 89 03 A6 */	mtctr r12
/* 81444E94 | 4E 80 04 21 */	bctrl
/* 81444E98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444E9C | 38 80 00 06 */	li r4, 0x6
/* 81444EA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444EA4 | 7D 89 03 A6 */	mtctr r12
/* 81444EA8 | 4E 80 04 21 */	bctrl
/* 81444EAC | 48 00 00 34 */	b .L_81444EE0
.L_81444EB0:
/* 81444EB0 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444EB4 | 3C 80 81 67 */	lis r4, lbl_81668910@ha
/* 81444EB8 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444EBC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444EC0 | 38 84 89 10 */	addi r4, r4, lbl_81668910@l
/* 81444EC4 | 7D 89 03 A6 */	mtctr r12
/* 81444EC8 | 4E 80 04 21 */	bctrl
/* 81444ECC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444ED0 | 38 80 00 04 */	li r4, 0x4
/* 81444ED4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444ED8 | 7D 89 03 A6 */	mtctr r12
/* 81444EDC | 4E 80 04 21 */	bctrl
.L_81444EE0:
/* 81444EE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81444EE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444EE8 | 7C 08 03 A6 */	mtlr r0
/* 81444EEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444EF0 | 4E 80 00 20 */	blr
.endfn open__Q49textinput6extend6letter9InputFormFv

# .text:0x7C4 | 0x81444EF4 | size: 0x124
# textinput::extend::letter::InputForm::close()
.fn close__Q49textinput6extend6letter9InputFormFv, global
/* 81444EF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444EF8 | 7C 08 02 A6 */	mflr r0
/* 81444EFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444F00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444F04 | 7C 7F 1B 78 */	mr r31, r3
/* 81444F08 | 4B FF EC F5 */	bl close__Q49textinput6extend4memo9InputFormFv
/* 81444F0C | 88 1F 03 F0 */	lbz r0, 0x3f0(r31)
/* 81444F10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81444F14 | 41 82 00 94 */	beq .L_81444FA8
/* 81444F18 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444F1C | 3C 80 81 67 */	lis r4, lbl_81668910@ha
/* 81444F20 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444F24 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444F28 | 38 84 89 10 */	addi r4, r4, lbl_81668910@l
/* 81444F2C | 7D 89 03 A6 */	mtctr r12
/* 81444F30 | 4E 80 04 21 */	bctrl
/* 81444F34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444F38 | 38 80 00 05 */	li r4, 0x5
/* 81444F3C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444F40 | 7D 89 03 A6 */	mtctr r12
/* 81444F44 | 4E 80 04 21 */	bctrl
/* 81444F48 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444F4C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444F50 | 38 8D 95 18 */	li r4, lbl_81697558@sda21
/* 81444F54 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444F58 | 7D 89 03 A6 */	mtctr r12
/* 81444F5C | 4E 80 04 21 */	bctrl
/* 81444F60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444F64 | 38 80 00 05 */	li r4, 0x5
/* 81444F68 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444F6C | 7D 89 03 A6 */	mtctr r12
/* 81444F70 | 4E 80 04 21 */	bctrl
/* 81444F74 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444F78 | 3C 80 81 67 */	lis r4, lbl_816688F8@ha
/* 81444F7C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444F80 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444F84 | 38 84 88 F8 */	addi r4, r4, lbl_816688F8@l
/* 81444F88 | 7D 89 03 A6 */	mtctr r12
/* 81444F8C | 4E 80 04 21 */	bctrl
/* 81444F90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444F94 | 38 80 00 05 */	li r4, 0x5
/* 81444F98 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444F9C | 7D 89 03 A6 */	mtctr r12
/* 81444FA0 | 4E 80 04 21 */	bctrl
/* 81444FA4 | 48 00 00 60 */	b .L_81445004
.L_81444FA8:
/* 81444FA8 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444FAC | 3C 80 81 67 */	lis r4, lbl_81668910@ha
/* 81444FB0 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444FB4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444FB8 | 38 84 89 10 */	addi r4, r4, lbl_81668910@l
/* 81444FBC | 7D 89 03 A6 */	mtctr r12
/* 81444FC0 | 4E 80 04 21 */	bctrl
/* 81444FC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444FC8 | 38 80 00 07 */	li r4, 0x7
/* 81444FCC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444FD0 | 7D 89 03 A6 */	mtctr r12
/* 81444FD4 | 4E 80 04 21 */	bctrl
/* 81444FD8 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81444FDC | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81444FE0 | 38 8D 95 18 */	li r4, lbl_81697558@sda21
/* 81444FE4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444FE8 | 7D 89 03 A6 */	mtctr r12
/* 81444FEC | 4E 80 04 21 */	bctrl
/* 81444FF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444FF4 | 38 80 00 07 */	li r4, 0x7
/* 81444FF8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444FFC | 7D 89 03 A6 */	mtctr r12
/* 81445000 | 4E 80 04 21 */	bctrl
.L_81445004:
/* 81445004 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81445008 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144500C | 7C 08 03 A6 */	mtlr r0
/* 81445010 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81445014 | 4E 80 00 20 */	blr
.endfn close__Q49textinput6extend6letter9InputFormFv

# .text:0x8E8 | 0x81445018 | size: 0x44
# textinput::extend::letter::InputForm::isWholePaneInAnimation()
.fn isWholePaneInAnimation__Q49textinput6extend6letter9InputFormFv, global
/* 81445018 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144501C | 7C 08 02 A6 */	mflr r0
/* 81445020 | 3C 80 81 67 */	lis r4, lbl_81668910@ha
/* 81445024 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81445028 | 38 84 89 10 */	addi r4, r4, lbl_81668910@l
/* 8144502C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81445030 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81445034 | 7D 89 03 A6 */	mtctr r12
/* 81445038 | 4E 80 04 21 */	bctrl
/* 8144503C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445040 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81445044 | 7D 89 03 A6 */	mtctr r12
/* 81445048 | 4E 80 04 21 */	bctrl
/* 8144504C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81445050 | 7C 08 03 A6 */	mtlr r0
/* 81445054 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81445058 | 4E 80 00 20 */	blr
.endfn isWholePaneInAnimation__Q49textinput6extend6letter9InputFormFv

# .text:0x92C | 0x8144505C | size: 0x100
# textinput::extend::letter::InputForm::resizePhotoPane(float, float)
.fn resizePhotoPane__Q49textinput6extend6letter9InputFormFff, global
/* 8144505C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81445060 | 7C 08 02 A6 */	mflr r0
/* 81445064 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81445068 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8144506C | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81445070 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81445074 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 81445078 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8144507C | FF C0 08 90 */	fmr f30, f1
/* 81445080 | FF E0 10 90 */	fmr f31, f2
/* 81445084 | 38 8D 95 20 */	li r4, lbl_81697560@sda21
/* 81445088 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144508C | 7D 89 03 A6 */	mtctr r12
/* 81445090 | 4E 80 04 21 */	bctrl
/* 81445094 | C0 82 8A C8 */	lfs f4, lbl_81694EC8@sda21(r0)
/* 81445098 | C0 62 8A CC */	lfs f3, lbl_81694ECC@sda21(r0)
/* 8144509C | FC 40 20 18 */	frsp f2, f4
/* 814450A0 | C0 02 8A B0 */	lfs f0, lbl_81694EB0@sda21(r0)
/* 814450A4 | FC 20 18 18 */	frsp f1, f3
/* 814450A8 | D0 83 00 4C */	stfs f4, 0x4c(r3)
/* 814450AC | FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 814450B0 | D0 63 00 50 */	stfs f3, 0x50(r3)
/* 814450B4 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 814450B8 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 814450BC | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 814450C0 | D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 814450C4 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 814450C8 | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 814450CC | 41 82 00 70 */	beq .L_8144513C
/* 814450D0 | FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 814450D4 | 41 82 00 68 */	beq .L_8144513C
/* 814450D8 | FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 814450DC | 40 81 00 2C */	ble .L_81445108
/* 814450E0 | EC 02 07 F2 */	fmuls f0, f2, f31
/* 814450E4 | EC 00 F0 24 */	fdivs f0, f0, f30
/* 814450E8 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 814450EC | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 814450F0 | 40 81 00 3C */	ble .L_8144512C
/* 814450F4 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814450F8 | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 814450FC | EC 02 00 32 */	fmuls f0, f2, f0
/* 81445100 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81445104 | 48 00 00 28 */	b .L_8144512C
.L_81445108:
/* 81445108 | EC 01 07 B2 */	fmuls f0, f1, f30
/* 8144510C | EC 00 F8 24 */	fdivs f0, f0, f31
/* 81445110 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81445114 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81445118 | 40 81 00 14 */	ble .L_8144512C
/* 8144511C | EC 02 00 24 */	fdivs f0, f2, f0
/* 81445120 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 81445124 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81445128 | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_8144512C:
/* 8144512C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81445130 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81445134 | D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 81445138 | D0 03 00 50 */	stfs f0, 0x50(r3)
.L_8144513C:
/* 8144513C | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81445140 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81445144 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81445148 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144514C | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81445150 | 7C 08 03 A6 */	mtlr r0
/* 81445154 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81445158 | 4E 80 00 20 */	blr
.endfn resizePhotoPane__Q49textinput6extend6letter9InputFormFff

# .text:0xA2C | 0x8144515C | size: 0xC4
# textinput::extend::letter::InputForm::setSendOutMessage(const wchar_t*)
.fn setSendOutMessage__Q49textinput6extend6letter9InputFormFPCw, global
/* 8144515C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81445160 | 7C 08 02 A6 */	mflr r0
/* 81445164 | 3C C0 81 67 */	lis r6, lbl_8166891C@ha
/* 81445168 | 38 A0 00 01 */	li r5, 0x1
/* 8144516C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81445170 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81445174 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81445178 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8144517C | 7C 9D 23 78 */	mr r29, r4
/* 81445180 | 38 86 89 1C */	addi r4, r6, lbl_8166891C@l
/* 81445184 | 80 63 02 1C */	lwz r3, 0x21c(r3)
/* 81445188 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8144518C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445190 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81445194 | 7D 89 03 A6 */	mtctr r12
/* 81445198 | 4E 80 04 21 */	bctrl
/* 8144519C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814451A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814451A4 | 3B CD AF 78 */	li r30, lbl_81698FB8@sda21
/* 814451A8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814451AC | 7D 89 03 A6 */	mtctr r12
/* 814451B0 | 4E 80 04 21 */	bctrl
/* 814451B4 | 48 00 00 18 */	b .L_814451CC
.L_814451B8:
/* 814451B8 | 7C 03 F0 40 */	cmplw r3, r30
/* 814451BC | 40 82 00 0C */	bne .L_814451C8
/* 814451C0 | 38 00 00 01 */	li r0, 0x1
/* 814451C4 | 48 00 00 14 */	b .L_814451D8
.L_814451C8:
/* 814451C8 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814451CC:
/* 814451CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814451D0 | 40 82 FF E8 */	bne .L_814451B8
/* 814451D4 | 38 00 00 00 */	li r0, 0x0
.L_814451D8:
/* 814451D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814451DC | 41 82 00 0C */	beq .L_814451E8
/* 814451E0 | 7F E3 FB 78 */	mr r3, r31
/* 814451E4 | 48 00 00 08 */	b .L_814451EC
.L_814451E8:
/* 814451E8 | 38 60 00 00 */	li r3, 0x0
.L_814451EC:
/* 814451EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814451F0 | 7F A4 EB 78 */	mr r4, r29
/* 814451F4 | 38 A0 00 00 */	li r5, 0x0
/* 814451F8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814451FC | 7D 89 03 A6 */	mtctr r12
/* 81445200 | 4E 80 04 21 */	bctrl
/* 81445204 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81445208 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144520C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81445210 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81445214 | 7C 08 03 A6 */	mtlr r0
/* 81445218 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144521C | 4E 80 00 20 */	blr
.endfn setSendOutMessage__Q49textinput6extend6letter9InputFormFPCw

# .text:0xAF0 | 0x81445220 | size: 0x12C
# textinput::extend::letter::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q49textinput6extend6letter12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81445220 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81445224 | 7C 08 02 A6 */	mflr r0
/* 81445228 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144522C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81445230 | 7C 9F 23 78 */	mr r31, r4
/* 81445234 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81445238 | 7C DE 33 78 */	mr r30, r6
/* 8144523C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81445240 | 7C BD 2B 78 */	mr r29, r5
/* 81445244 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81445248 | 7C 7C 1B 78 */	mr r28, r3
/* 8144524C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81445250 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445254 | 81 8C 02 E0 */	lwz r12, 0x2e0(r12)
/* 81445258 | 7D 89 03 A6 */	mtctr r12
/* 8144525C | 4E 80 04 21 */	bctrl
/* 81445260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445264 | 40 82 00 18 */	bne .L_8144527C
/* 81445268 | 7F 83 E3 78 */	mr r3, r28
/* 8144526C | 7F E4 FB 78 */	mr r4, r31
/* 81445270 | 7F A5 EB 78 */	mr r5, r29
/* 81445274 | 7F C6 F3 78 */	mr r6, r30
/* 81445278 | 4B FF F0 B9 */	bl onTiEvent__Q49textinput6extend4memo12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
.L_8144527C:
/* 8144527C | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 81445280 | 88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 81445284 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 81445288 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 8144528C | 40 82 00 A0 */	bne .L_8144532C
/* 81445290 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 81445294 | 40 82 00 38 */	bne .L_814452CC
/* 81445298 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8144529C | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 814452A0 | 41 82 00 2C */	beq .L_814452CC
/* 814452A4 | 7F E4 FB 78 */	mr r4, r31
/* 814452A8 | 38 6D 95 24 */	li r3, lbl_81697564@sda21
/* 814452AC | 4B FF 4F 49 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814452B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814452B4 | 41 82 00 18 */	beq .L_814452CC
/* 814452B8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814452BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814452C0 | 81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 814452C4 | 7D 89 03 A6 */	mtctr r12
/* 814452C8 | 4E 80 04 21 */	bctrl
.L_814452CC:
/* 814452CC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814452D0 | 40 82 00 2C */	bne .L_814452FC
/* 814452D4 | 7F E4 FB 78 */	mr r4, r31
/* 814452D8 | 38 6D 95 24 */	li r3, lbl_81697564@sda21
/* 814452DC | 4B FF 4F 19 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814452E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814452E4 | 41 82 00 18 */	beq .L_814452FC
/* 814452E8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814452EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814452F0 | 81 8C 02 D8 */	lwz r12, 0x2d8(r12)
/* 814452F4 | 7D 89 03 A6 */	mtctr r12
/* 814452F8 | 4E 80 04 21 */	bctrl
.L_814452FC:
/* 814452FC | 28 1D 00 01 */	cmplwi r29, 0x1
/* 81445300 | 40 82 00 2C */	bne .L_8144532C
/* 81445304 | 7F E4 FB 78 */	mr r4, r31
/* 81445308 | 38 6D 95 24 */	li r3, lbl_81697564@sda21
/* 8144530C | 4B FF 4E E9 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81445310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445314 | 41 82 00 18 */	beq .L_8144532C
/* 81445318 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8144531C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445320 | 81 8C 02 DC */	lwz r12, 0x2dc(r12)
/* 81445324 | 7D 89 03 A6 */	mtctr r12
/* 81445328 | 4E 80 04 21 */	bctrl
.L_8144532C:
/* 8144532C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81445330 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81445334 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81445338 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8144533C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81445340 | 7C 08 03 A6 */	mtlr r0
/* 81445344 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81445348 | 4E 80 00 20 */	blr
.endfn onTiEvent__Q49textinput6extend6letter12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0xC1C | 0x8144534C | size: 0x8
# textinput::extend::letter::InputForm::isPhotoScaledUp()
.fn isPhotoScaledUp__Q49textinput6extend6letter9InputFormFv, global
/* 8144534C | 88 63 04 00 */	lbz r3, 0x400(r3)
/* 81445350 | 4E 80 00 20 */	blr
.endfn isPhotoScaledUp__Q49textinput6extend6letter9InputFormFv

# .text:0xC24 | 0x81445354 | size: 0x8
# textinput::extend::letter::AnmPane::getState()
.fn getState__Q49textinput6extend6letter7AnmPaneFv, global
/* 81445354 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81445358 | 4E 80 00 20 */	blr
.endfn getState__Q49textinput6extend6letter7AnmPaneFv

# .text:0xC2C | 0x8144535C | size: 0x8
# textinput::extend::letter::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q49textinput6extend6letter7AnmPaneFUl, global
/* 8144535C | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81445360 | 4B FF 1D 60 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q49textinput6extend6letter7AnmPaneFUl

# .text:0xC34 | 0x81445364 | size: 0x8
# textinput::extend::letter::AnmPane::getKeyType() const
.fn getKeyType__Q49textinput6extend6letter7AnmPaneCFv, global
/* 81445364 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 81445368 | 4E 80 00 20 */	blr
.endfn getKeyType__Q49textinput6extend6letter7AnmPaneCFv

# .text:0xC3C | 0x8144536C | size: 0xC
# textinput::extend::letter::AnmPane::init()
.fn init__Q49textinput6extend6letter7AnmPaneFv, global
/* 8144536C | 38 00 00 00 */	li r0, 0x0
/* 81445370 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81445374 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend6letter7AnmPaneFv

# .text:0xC48 | 0x81445378 | size: 0x5C
# textinput::extend::letter::PicPane::~PicPane()
.fn __dt__Q49textinput6extend6letter7PicPaneFv, global
/* 81445378 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144537C | 7C 08 02 A6 */	mflr r0
/* 81445380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445384 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81445388 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144538C | 7C 9F 23 78 */	mr r31, r4
/* 81445390 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81445394 | 7C 7E 1B 78 */	mr r30, r3
/* 81445398 | 41 82 00 20 */	beq .L_814453B8
/* 8144539C | 41 82 00 0C */	beq .L_814453A8
/* 814453A0 | 38 80 00 00 */	li r4, 0x0
/* 814453A4 | 4B FF 1B 7D */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_814453A8:
/* 814453A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814453AC | 40 81 00 0C */	ble .L_814453B8
/* 814453B0 | 7F C3 F3 78 */	mr r3, r30
/* 814453B4 | 48 1B 2D 31 */	bl __dl__FPv
.L_814453B8:
/* 814453B8 | 7F C3 F3 78 */	mr r3, r30
/* 814453BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814453C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814453C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814453C8 | 7C 08 03 A6 */	mtlr r0
/* 814453CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814453D0 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend6letter7PicPaneFv

# .text:0xCA4 | 0x814453D4 | size: 0x4
# textinput::extend::letter::PicPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput6extend6letter7PicPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 814453D4 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput6extend6letter7PicPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0xCA8 | 0x814453D8 | size: 0x5C
# textinput::extend::letter::WholePane::~WholePane()
.fn __dt__Q49textinput6extend6letter9WholePaneFv, global
/* 814453D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814453DC | 7C 08 02 A6 */	mflr r0
/* 814453E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814453E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814453E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814453EC | 7C 9F 23 78 */	mr r31, r4
/* 814453F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814453F4 | 7C 7E 1B 78 */	mr r30, r3
/* 814453F8 | 41 82 00 20 */	beq .L_81445418
/* 814453FC | 41 82 00 0C */	beq .L_81445408
/* 81445400 | 38 80 00 00 */	li r4, 0x0
/* 81445404 | 4B FF 1B 1D */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81445408:
/* 81445408 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144540C | 40 81 00 0C */	ble .L_81445418
/* 81445410 | 7F C3 F3 78 */	mr r3, r30
/* 81445414 | 48 1B 2C D1 */	bl __dl__FPv
.L_81445418:
/* 81445418 | 7F C3 F3 78 */	mr r3, r30
/* 8144541C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81445420 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81445424 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81445428 | 7C 08 03 A6 */	mtlr r0
/* 8144542C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81445430 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend6letter9WholePaneFv

# .text:0xD04 | 0x81445434 | size: 0x4
# textinput::extend::letter::WholePane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput6extend6letter9WholePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81445434 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput6extend6letter9WholePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0xD08 | 0x81445438 | size: 0x58
# textinput::extend::letter::InputForm::~InputForm()
.fn __dt__Q49textinput6extend6letter9InputFormFv, global
/* 81445438 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144543C | 7C 08 02 A6 */	mflr r0
/* 81445440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445444 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81445448 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144544C | 7C 9F 23 78 */	mr r31, r4
/* 81445450 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81445454 | 7C 7E 1B 78 */	mr r30, r3
/* 81445458 | 41 82 00 1C */	beq .L_81445474
/* 8144545C | 38 80 00 00 */	li r4, 0x0
/* 81445460 | 4B FF BA 0D */	bl __dt__Q49textinput6extend4memo9InputFormFv
/* 81445464 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81445468 | 40 81 00 0C */	ble .L_81445474
/* 8144546C | 7F C3 F3 78 */	mr r3, r30
/* 81445470 | 48 1B 2C 75 */	bl __dl__FPv
.L_81445474:
/* 81445474 | 7F C3 F3 78 */	mr r3, r30
/* 81445478 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144547C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81445480 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81445484 | 7C 08 03 A6 */	mtlr r0
/* 81445488 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144548C | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend6letter9InputFormFv

# .text:0xD60 | 0x81445490 | size: 0x40
# textinput::extend::letter::EventHandler::~EventHandler()
.fn __dt__Q49textinput6extend6letter12EventHandlerFv, global
/* 81445490 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81445494 | 7C 08 02 A6 */	mflr r0
/* 81445498 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144549C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814454A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814454A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814454A8 | 41 82 00 10 */	beq .L_814454B8
/* 814454AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814454B0 | 40 81 00 08 */	ble .L_814454B8
/* 814454B4 | 48 1B 2C 31 */	bl __dl__FPv
.L_814454B8:
/* 814454B8 | 7F E3 FB 78 */	mr r3, r31
/* 814454BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814454C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814454C4 | 7C 08 03 A6 */	mtlr r0
/* 814454C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814454CC | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend6letter12EventHandlerFv

# .text:0xDA0 | 0x814454D0 | size: 0x8
.fn "@536@__dt__Q49textinput6extend6letter9InputFormFv", global
/* 814454D0 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 814454D4 | 4B FF FF 64 */	b __dt__Q49textinput6extend6letter9InputFormFv
.endfn "@536@__dt__Q49textinput6extend6letter9InputFormFv"

# 0x816168B8..0x81616B88 | size: 0x2D0
.rodata
.balign 8

# .rodata:0x0 | 0x816168B8 | size: 0x220
# textinput::keyboard::hwkey::HWKeyboard::csAninationFile
.obj csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, global
	.4byte 0x00000000
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F50
	.4byte 0x6963466F
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816168FC:
	.4byte 0x00000001
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F53
	.4byte 0x656C6563
	.4byte 0x74506963
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81616940:
	.4byte 0x00000002
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F45
	.4byte 0x78697450
	.4byte 0x69632E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81616984:
	.4byte 0x00000003
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F50
	.4byte 0x6963466F
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816169C8:
	.4byte 0x00000004
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F52
	.4byte 0x65747572
	.4byte 0x6E496E2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81616A0C:
	.4byte 0x00000005
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F53
	.4byte 0x656E644F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81616A50:
	.4byte 0x00000006
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F4D
	.4byte 0x61696C49
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81616A94:
	.4byte 0x00000007
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F4D
	.4byte 0x61696C4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8

# .rodata:0x220 | 0x81616AD8 | size: 0xC
.obj lbl_81616AD8, global
	.4byte 0x00000000
	.4byte lbl_816688D0
	.4byte 0x00000004
.endobj lbl_81616AD8

# .rodata:0x22C | 0x81616AE4 | size: 0x30
.obj lbl_81616AE4, global
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_816169C8
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616A0C
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616A50
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616A94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616AE4

# .rodata:0x25C | 0x81616B14 | size: 0x74
.obj lbl_81616B14, global
	.4byte 0x00000000
	.4byte lbl_81697540
	.4byte 0x00000004
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_816169C8
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616A0C
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616A50
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616A94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte lbl_81697548
	.4byte 0x00000005
	.4byte csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_816168FC
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616940
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_81616984
	.rel csAninationFile__Q49textinput8keyboard5hwkey10HWKeyboard_816168B8, .L_816169C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616B14

# 0x81668860..0x81668D68 | size: 0x508
.data
.balign 8

# .data:0x0 | 0x81668860 | size: 0xC
.obj lbl_81668860, global
	.4byte 0x4E5F4865
	.4byte 0x61646572
	.4byte 0x00000000
.endobj lbl_81668860

# .data:0xC | 0x8166886C | size: 0xC
.obj lbl_8166886C, global
	.4byte 0x4E5F466F
	.4byte 0x6F746572
	.4byte 0x00000000
.endobj lbl_8166886C

# .data:0x18 | 0x81668878 | size: 0xC
.obj lbl_81668878, global
	.4byte 0x545F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_81668878

# .data:0x24 | 0x81668884 | size: 0xC
.obj lbl_81668884, global
	.4byte 0x425F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_81668884

# .data:0x30 | 0x81668890 | size: 0xC
.obj lbl_81668890, global
	.4byte 0x545F4C65
	.4byte 0x74746572
	.4byte 0x00000000
.endobj lbl_81668890

# .data:0x3C | 0x8166889C | size: 0x10
.obj lbl_8166889C, global
	.4byte 0x545F546F
	.4byte 0x7563684C
	.4byte 0x65747465
	.4byte 0x72000000
.endobj lbl_8166889C

# .data:0x4C | 0x816688AC | size: 0x24
.obj lbl_816688AC, global
	.4byte lbl_81668860
	.4byte lbl_81697528
	.4byte lbl_81697530
	.4byte lbl_8166886C
	.4byte lbl_81697538
	.4byte lbl_81668878
	.4byte lbl_81668884
	.4byte lbl_81668890
	.4byte lbl_8166889C
.endobj lbl_816688AC

# .data:0x70 | 0x816688D0 | size: 0xC
.obj lbl_816688D0, global
	.4byte 0x4E5F4D65
	.4byte 0x6D6F526F
	.4byte 0x6F740000
.endobj lbl_816688D0

# .data:0x7C | 0x816688DC | size: 0x1C
.obj lbl_816688DC, global
	.4byte 0x4E5F5365
	.4byte 0x6E644D65
	.4byte 0x73000000
	.4byte 0x545F546F
	.4byte 0x7563684C
	.4byte 0x65747465
	.4byte 0x72000000
.endobj lbl_816688DC

# .data:0x98 | 0x816688F8 | size: 0x18
.obj lbl_816688F8, global
	.4byte 0x4E5F5365
	.4byte 0x6E644D65
	.4byte 0x73000000
	.4byte 0x4E5F7478
	.4byte 0x745F7363
	.4byte 0x726C0000
.endobj lbl_816688F8

# .data:0xB0 | 0x81668910 | size: 0xC
.obj lbl_81668910, global
	.4byte 0x4E5F4D65
	.4byte 0x6D6F526F
	.4byte 0x6F740000
.endobj lbl_81668910

# .data:0xBC | 0x8166891C | size: 0xC
.obj lbl_8166891C, global
	.4byte 0x545F5365
	.4byte 0x6E644D65
	.4byte 0x73000000
.endobj lbl_8166891C

# .data:0xC8 | 0x81668928 | size: 0x2C
# textinput::extend::letter::PicPane::__vtable
.obj __vt__Q49textinput6extend6letter7PicPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend6letter7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput6extend6letter7PicPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend6letter7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend6letter7PicPaneFv
	.4byte getKeyType__Q49textinput6extend6letter7AnmPaneCFv
	.4byte getState__Q49textinput6extend6letter7AnmPaneFv
.endobj __vt__Q49textinput6extend6letter7PicPane

# .data:0xF4 | 0x81668954 | size: 0x2C
# textinput::extend::letter::WholePane::__vtable
.obj __vt__Q49textinput6extend6letter9WholePane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend6letter7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput6extend6letter9WholePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend6letter7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend6letter9WholePaneFv
	.4byte getKeyType__Q49textinput6extend6letter7AnmPaneCFv
	.4byte getState__Q49textinput6extend6letter7AnmPaneFv
.endobj __vt__Q49textinput6extend6letter9WholePane

# .data:0x120 | 0x81668980 | size: 0x30
# textinput::extend::letter::AnmPane::__vtable
.obj __vt__Q49textinput6extend6letter7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend6letter7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend6letter7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend6letter7AnmPaneFv
	.4byte getKeyType__Q49textinput6extend6letter7AnmPaneCFv
	.4byte getState__Q49textinput6extend6letter7AnmPaneFv
	.4byte 0x00000000
.endobj __vt__Q49textinput6extend6letter7AnmPane

# .data:0x150 | 0x816689B0 | size: 0x20
# textinput::extend::letter::EventHandler::__vtable
.obj __vt__Q49textinput6extend6letter12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend6letter12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q49textinput6extend6letter12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q49textinput6extend6letter12EventHandler

# .data:0x170 | 0x816689D0 | size: 0x308
# textinput::extend::letter::InputForm::__vtable
.obj __vt__Q49textinput6extend6letter9InputForm, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend6letter9InputFormFv
	.4byte create__Q39textinput9inputform4BaseFP12MEMAllocator
	.4byte init__Q49textinput6extend4memo9InputFormFv
	.4byte clearSender__Q29textinput15CommandReceiverFv
	.4byte onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@16@create__Q39textinput9inputform4BaseFP12MEMAllocator"
	.4byte draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte "@16@draw__Q49textinput6extend4memo9InputFormFv"
	.4byte setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl
	.4byte setAspectRatio__Q39textinput10textdrawer4BaseFb
	.4byte setVIWidth__Q39textinput10textdrawer4BaseFf
	.4byte "@16@beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect"
	.4byte endDraw__Q39textinput10textdrawer4BaseFv
	.4byte getLineHeight__Q39textinput10textdrawer4BaseFv
	.4byte "@16@setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font"
	.4byte getWidth__Q39textinput10textdrawer4BaseFPCw
	.4byte getLine__Q39textinput10textdrawer4BaseFv
	.4byte "@16@getScale__Q49textinput6extend4memo9InputFormCFv"
	.4byte setSecretModeOn__Q39textinput10textdrawer4BaseFb
	.4byte "@16@doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@preDraw__Q49textinput6extend4memo9InputFormFUl"
	.4byte "@16@finishDraw__Q49textinput6extend4memo9InputFormFUl"
	.4byte "@16@doLineFeed__Q49textinput6extend4memo9InputFormFv"
	.4byte "@16@put__Q49textinput6extend4memo9InputFormFw"
	.4byte procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl
	.4byte "@16@onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos"
	.4byte "@16@makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll"
	.4byte "@16@drawCursor__Q49textinput6extend4memo9InputFormFff"
	.4byte calcRect__Q39textinput10textdrawer4BaseFRQ49textinput10textdrawer4Base8DrawInfo
	.4byte getStartPos__Q39textinput10textdrawer4BaseCFv
	.4byte getEndPos__Q39textinput10textdrawer4BaseCFv
	.4byte setDrawModifyScopeLine__Q39textinput10textdrawer4BaseFll
	.4byte setDrawCacheScopeLine__Q39textinput10textdrawer4BaseFll
	.4byte modifyCursorCache__Q39textinput10textdrawer4BaseFlUlffff
	.4byte isEnableCursorCache__Q39textinput10textdrawer4BaseCFvgetStartPos__Q39textinput10textdrawer4BaseCFv
	.4byte getDrawModifyStartLine__Q39textinput10textdrawer4BaseCFv
	.4byte getDrawModifyEndLine__Q39textinput10textdrawer4BaseCFv
	.4byte getDrawCacheStartPos__Q39textinput10textdrawer4BaseCFv
	.4byte dirtyDrawCache__Q39textinput10textdrawer4BaseFv
	.4byte dirtyCursorCache__Q39textinput10textdrawer4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw
	.4byte setCandidateBox__Q39textinput12candidatebox18CandidateBoxCallerFPQ39textinput12candidatebox4Base
	.4byte updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte create__Q49textinput6extend6letter9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer
	.4byte updateCandidateState___Q39textinput9inputform4BaseFv
	.4byte getWCString__Q39textinput9inputform4BaseCFv
	.4byte getAtokString__Q39textinput9inputform4BaseFv
	.4byte getCandidate__Q39textinput9inputform4BaseCFv
	.4byte getCursorPos__Q39textinput9inputform4BaseFv
	.4byte setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font
	.4byte isEditMode__Q39textinput9inputform4BaseFv
	.4byte checkHeadOfSentence__Q39textinput9inputform4BaseFb
	.4byte setDestination__Q39textinput9inputform4BaseFQ29textinput11Destination
	.4byte limitStringLength__Q39textinput9inputform4BaseFUl
	.4byte limitRowNum__Q39textinput9inputform4BaseFUl
	.4byte doWordWrap__Q39textinput9inputform4BaseFb
	.4byte setLineDrawInfo__Q39textinput9inputform4BaseFbUl
	.4byte setLanguage__Q39textinput9inputform12LayoutByNW4RFQ29textinput8Language
	.4byte setPredictMode__Q39textinput9inputform4BaseFQ49textinput9inputform4Base11PredictMode
	.4byte getPredictMode__Q39textinput9inputform4BaseFv
	.4byte isOverRowLimit__Q39textinput9inputform4BaseFUlPCw
	.4byte findURL__Q39textinput9inputform4BaseFPUlPUlPCwUlUl
	.4byte isInScroll__Q49textinput6extend4memo9InputFormFv
	.4byte setAtokDictionary__Q39textinput9inputform4BaseFPviPviPvi
	.4byte closeAtokDictionary__Q39textinput9inputform4BaseFv
	.4byte isAtokDictionaryOpened__Q39textinput9inputform4BaseFv
	.4byte enableSpaceByRight__Q39textinput9inputform4BaseFb
	.4byte onClose__Q39textinput9inputform4BaseFv
	.4byte canConvert__Q39textinput9inputform4BaseFv
	.4byte setString__Q39textinput9inputform4BaseFPCw
	.4byte draw__Q49textinput6extend4memo9InputFormFv
	.4byte calc__Q49textinput6extend4memo9InputFormFv
	.4byte doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte preDraw__Q49textinput6extend4memo9InputFormFUl
	.4byte finishDraw__Q49textinput6extend4memo9InputFormFUl
	.4byte doLineFeed__Q49textinput6extend4memo9InputFormFv
	.4byte onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte isOverLine__Q39textinput9inputform4BaseFRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte drawCursor__Q49textinput6extend4memo9InputFormFff
	.4byte doScroll__Q49textinput6extend4memo9InputFormFPQ39textinput15CommandReceiver6Scroll
	.4byte autoScroll__Q39textinput9inputform4BaseFv
	.4byte doWordWrap__Q39textinput9inputform4BaseFPCwUlf
	.4byte drawFixString__Q39textinput9inputform4BaseFUl
	.4byte onSE__Q39textinput9inputform12LayoutByNW4RFQ39textinput5sound2SE
	.4byte clear__Q39textinput9inputform4BaseFv
	.4byte calcCursorPos__Q49textinput6extend4memo9InputFormFff
	.4byte getGlobalLeftTopPos__Q39textinput9inputform4BaseCFv
	.4byte getScale__Q49textinput6extend4memo9InputFormCFv
	.4byte moveCursorUp__Q49textinput6extend4memo9InputFormFv
	.4byte moveCursorDown__Q49textinput6extend4memo9InputFormFv
	.4byte onPressUp__Q39textinput9inputform4BaseFv
	.4byte onPressDown__Q39textinput9inputform4BaseFv
	.4byte onPressLeft__Q39textinput9inputform4BaseFv
	.4byte onPressRight__Q39textinput9inputform4BaseFv
	.4byte makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@536@__dt__Q49textinput6extend6letter9InputFormFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@536@init__Q49textinput6extend4memo9InputFormFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@536@draw__Q49textinput6extend4memo9InputFormFv"
	.4byte "@536@calc__Q49textinput6extend4memo9InputFormFv"
	.4byte "@536@updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv"
	.4byte "@536@updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager"
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte "@536@setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte "@536@setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv
	.4byte setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane
	.4byte initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv
	.4byte setVisible__Q39textinput11nw4rmanager6LayoutFPCcb
	.4byte isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb
	.4byte setString__Q39textinput11nw4rmanager6LayoutFPCcPCw
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFw
	.4byte getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34
	.4byte createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte updateInputCommon__Q39textinput9inputform12LayoutByNW4RFiUlUlUlPv
	.4byte updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv
	.4byte updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager
	.4byte isAbleToUp__Q39textinput9inputform12LayoutByNW4RFv
	.4byte isAbleToDown__Q39textinput9inputform12LayoutByNW4RFv
	.4byte setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv
	.4byte setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv
	.4byte visibleSeparator__Q39textinput9inputform12LayoutByNW4RFb
	.4byte setScroll__Q49textinput6extend4memo9InputFormFf
	.4byte setAddScroll__Q49textinput6extend4memo9InputFormFfbb
	.4byte getScroll__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollFrom__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollTo__Q49textinput6extend4memo9InputFormFv
	.4byte open__Q49textinput6extend6letter9InputFormFv
	.4byte close__Q49textinput6extend6letter9InputFormFv
	.4byte isWholePaneInAnimation__Q49textinput6extend6letter9InputFormFv
	.4byte setHeaderCaption__Q49textinput6extend4memo9InputFormFPCw
	.4byte setMiiName__Q49textinput6extend4memo9InputFormFPCw
	.4byte setTouchLetterCaption__Q49textinput6extend4memo9InputFormFPCw
	.4byte onNigaoeButtonTrig__Q49textinput6extend4memo9InputFormFv
	.4byte onNigaoeButtonPoint__Q49textinput6extend4memo9InputFormFv
	.4byte onNigaoeButtonLeft__Q49textinput6extend4memo9InputFormFv
	.4byte setDefaultNigaoe__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowRPoint__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowRLeft__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowLPoint__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowLLeft__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowRTrig__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowLTrig__Q49textinput6extend4memo9InputFormFv
	.4byte setNigaoeEventObserver__Q49textinput6extend4memo9InputFormFPQ49textinput6extend4memo19NigaoeEventObserver
	.4byte getNigaoePane__Q49textinput6extend4memo9InputFormFv
	.4byte getNigaoePaneMaterial__Q49textinput6extend4memo9InputFormFv
	.4byte getDrawBoxHeight__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollMin__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollMax__Q49textinput6extend4memo9InputFormFv
	.4byte beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect
	.4byte put__Q49textinput6extend4memo9InputFormFw
	.4byte createAnimation__Q49textinput6extend4memo9InputFormFP12MEMAllocator
	.4byte drawHeader__Q49textinput6extend4memo9InputFormFv
	.4byte drawBody__Q49textinput6extend6letter9InputFormFv
	.4byte drawFooter__Q49textinput6extend6letter9InputFormFv
	.4byte onCommandOnDispMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte onCommandOnEditMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte doAutoScroll__Q49textinput6extend4memo9InputFormFv
	.4byte getPhotoPaneMaterial__Q49textinput6extend6letter9InputFormFv
	.4byte onPhotoTrig__Q49textinput6extend6letter9InputFormFv
	.4byte onPhotoPoint__Q49textinput6extend6letter9InputFormFv
	.4byte onPhotoLeft__Q49textinput6extend6letter9InputFormFv
	.4byte isPhotoScaledUp__Q49textinput6extend6letter9InputFormFv
	.4byte setPhotoDraw__Q49textinput6extend6letter9InputFormFb
	.4byte setType__Q49textinput6extend6letter9InputFormFQ59textinput6extend6letter9InputForm4Type
	.4byte setSendOutMessage__Q49textinput6extend6letter9InputFormFPCw
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q49textinput6extend6letter9InputForm

# .data:0x478 | 0x81668CD8 | size: 0x90
# textinput::extend::bg::LayoutByNW4R::__vtable
.obj __vt__Q49textinput6extend2bg12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q49textinput6extend2bg12LayoutByNW4RFP12MEMAllocator
	.4byte init__Q49textinput6extend2bg12LayoutByNW4RFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@4@__dt__Q49textinput6extend2bg12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@4@init__Q49textinput6extend2bg12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@4@draw__Q49textinput6extend2bg12LayoutByNW4RFv"
	.4byte calc__Q39textinput11nw4rmanager6LayoutFv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
	.4byte setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
	.4byte setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv
	.4byte setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane
	.4byte initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv
	.4byte setVisible__Q39textinput11nw4rmanager6LayoutFPCcb
	.4byte isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb
	.4byte setString__Q39textinput11nw4rmanager6LayoutFPCcPCw
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFw
	.4byte getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34
	.4byte createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte __dt__Q49textinput6extend2bg12LayoutByNW4RFv
	.4byte draw__Q49textinput6extend2bg12LayoutByNW4RFv
.endobj __vt__Q49textinput6extend2bg12LayoutByNW4R

# 0x81694EB0..0x81694ED0 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694EB0 | size: 0x4
.obj lbl_81694EB0, global
	.float 0
.endobj lbl_81694EB0

# .sdata2:0x4 | 0x81694EB4 | size: 0x4
.obj lbl_81694EB4, global
	.float -6
.endobj lbl_81694EB4

# .sdata2:0x8 | 0x81694EB8 | size: 0x4
.obj lbl_81694EB8, global
	.float -1
.endobj lbl_81694EB8

# .sdata2:0xC | 0x81694EBC | size: 0x4
.obj gap_09_81694EBC_sdata2, global
.hidden gap_09_81694EBC_sdata2
	.4byte 0x00000000
.endobj gap_09_81694EBC_sdata2

# .sdata2:0x10 | 0x81694EC0 | size: 0x8
.obj lbl_81694EC0, global
	.double 4503601774854144
.endobj lbl_81694EC0

# .sdata2:0x18 | 0x81694EC8 | size: 0x4
.obj lbl_81694EC8, global
	.float 412
.endobj lbl_81694EC8

# .sdata2:0x1C | 0x81694ECC | size: 0x4
.obj lbl_81694ECC, global
	.float 309
.endobj lbl_81694ECC

# 0x81697528..0x81697570 | size: 0x48
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697528 | size: 0x8
.obj lbl_81697528, global
	.4byte 0x4E5F426F
	.4byte 0x64790000
.endobj lbl_81697528

# .sdata:0x8 | 0x81697530 | size: 0x8
.obj lbl_81697530, global
	.4byte 0x425F426F
	.4byte 0x64790000
.endobj lbl_81697530

# .sdata:0x10 | 0x81697538 | size: 0x8
.obj lbl_81697538, global
	.4byte 0x4E696761
	.4byte 0x6F650000
.endobj lbl_81697538

# .sdata:0x18 | 0x81697540 | size: 0x8
.obj lbl_81697540, global
	.string "SendPic"
.endobj lbl_81697540

# .sdata:0x20 | 0x81697548 | size: 0x8
.obj lbl_81697548, global
	.4byte 0x4E5F5069
	.4byte 0x63000000
.endobj lbl_81697548

# .sdata:0x28 | 0x81697550 | size: 0x8
.obj lbl_81697550, global
	.4byte 0x4E5F5069
	.4byte 0x63000000
.endobj lbl_81697550

# .sdata:0x30 | 0x81697558 | size: 0x8
.obj lbl_81697558, global
	.string "SendPic"
.endobj lbl_81697558

# .sdata:0x38 | 0x81697560 | size: 0x4
.obj lbl_81697560, global
	.string "Pic"
.endobj lbl_81697560

# .sdata:0x3C | 0x81697564 | size: 0x6
.obj lbl_81697564, global
	.string "B_Pic"
.endobj lbl_81697564

# .sdata:0x42 | 0x8169756A | size: 0x6
.obj gap_11_8169756A_sdata, global
.hidden gap_11_8169756A_sdata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_11_8169756A_sdata
