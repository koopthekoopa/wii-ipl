.include "macros.inc"
.file "HBMAnmController.cpp"

# 0x813771E0..0x813772DC | size: 0xFC
.text
.balign 4

# .text:0x0 | 0x813771E0 | size: 0x1C
# homebutton::GroupAnmController::GroupAnmController()
.fn __ct__Q210homebutton18GroupAnmControllerFv, global
/* 813771E0 | 3C 80 81 64 */	lis r4, __vt__Q210homebutton18GroupAnmController@ha
/* 813771E4 | 38 00 00 00 */	li r0, 0x0
/* 813771E8 | 38 84 56 20 */	addi r4, r4, __vt__Q210homebutton18GroupAnmController@l
/* 813771EC | 90 03 00 20 */	stw r0, 0x20(r3)
/* 813771F0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813771F4 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 813771F8 | 4E 80 00 20 */	blr
.endfn __ct__Q210homebutton18GroupAnmControllerFv

# .text:0x1C | 0x813771FC | size: 0x40
# homebutton::GroupAnmController::~GroupAnmController()
.fn __dt__Q210homebutton18GroupAnmControllerFv, global
/* 813771FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377200 | 7C 08 02 A6 */	mflr r0
/* 81377204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377208 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137720C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377210 | 7C 7F 1B 78 */	mr r31, r3
/* 81377214 | 41 82 00 10 */	beq .L_81377224
/* 81377218 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8137721C | 40 81 00 08 */	ble .L_81377224
/* 81377220 | 48 28 0E C5 */	bl __dl__FPv
.L_81377224:
/* 81377224 | 7F E3 FB 78 */	mr r3, r31
/* 81377228 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137722C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377230 | 7C 08 03 A6 */	mtlr r0
/* 81377234 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377238 | 4E 80 00 20 */	blr
.endfn __dt__Q210homebutton18GroupAnmControllerFv

# .text:0x5C | 0x8137723C | size: 0xA0
# homebutton::GroupAnmController::do_calc()
.fn do_calc__Q210homebutton18GroupAnmControllerFv, global
/* 8137723C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81377240 | 7C 08 02 A6 */	mflr r0
/* 81377244 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81377248 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137724C | 48 28 22 79 */	bl _savegpr_28
/* 81377250 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81377254 | 7C 7C 1B 78 */	mr r28, r3
/* 81377258 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137725C | 40 82 00 28 */	bne .L_81377284
/* 81377260 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81377264 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81377268 | 7D 89 03 A6 */	mtctr r12
/* 8137726C | 4E 80 04 21 */	bctrl
/* 81377270 | C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 81377274 | 3B A0 00 01 */	li r29, 0x1
/* 81377278 | 80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8137727C | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 81377280 | 48 00 00 08 */	b .L_81377288
.L_81377284:
/* 81377284 | 3B A0 00 00 */	li r29, 0x0
.L_81377288:
/* 81377288 | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8137728C | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 81377290 | 3B C3 00 10 */	addi r30, r3, 0x10
/* 81377294 | 48 00 00 28 */	b .L_813772BC
.L_81377298:
/* 81377298 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8137729C | 7F A5 EB 78 */	mr r5, r29
/* 813772A0 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 813772A4 | 38 C0 00 00 */	li r6, 0x0
/* 813772A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813772AC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813772B0 | 7D 89 03 A6 */	mtctr r12
/* 813772B4 | 4E 80 04 21 */	bctrl
/* 813772B8 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_813772BC:
/* 813772BC | 7C 1F F0 40 */	cmplw r31, r30
/* 813772C0 | 40 82 FF D8 */	bne .L_81377298
/* 813772C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813772C8 | 48 28 22 49 */	bl _restgpr_28
/* 813772CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813772D0 | 7C 08 03 A6 */	mtlr r0
/* 813772D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813772D8 | 4E 80 00 20 */	blr
.endfn do_calc__Q210homebutton18GroupAnmControllerFv

# 0x81645620..0x81645630 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x81645620 | size: 0x10
# homebutton::GroupAnmController::__vtable
.obj __vt__Q210homebutton18GroupAnmController, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q210homebutton18GroupAnmControllerFv
	.4byte calc__Q210homebutton15FrameControllerFv
.endobj __vt__Q210homebutton18GroupAnmController
