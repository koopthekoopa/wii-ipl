.include "macros.inc"
.file "signwindow.cpp"

# 0x81430A08..0x81432618 | size: 0x1C10
.text
.balign 4

# .text:0x0 | 0x81430A08 | size: 0x5C
# textinput::keyboard::signwindow::Base::create(MEMAllocator*)
.fn create__Q49textinput8keyboard10signwindow4BaseFP12MEMAllocator, global
/* 81430A08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430A0C | 7C 08 02 A6 */	mflr r0
/* 81430A10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81430A14 | 38 00 00 00 */	li r0, 0x0
/* 81430A18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81430A1C | 7C 7F 1B 78 */	mr r31, r3
/* 81430A20 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81430A24 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81430A28 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81430A2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430A30 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81430A34 | 7D 89 03 A6 */	mtctr r12
/* 81430A38 | 4E 80 04 21 */	bctrl
/* 81430A3C | 3C 80 81 61 */	lis r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@ha
/* 81430A40 | 54 60 18 38 */	slwi r0, r3, 3
/* 81430A44 | 38 84 5D F0 */	addi r4, r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@l
/* 81430A48 | 7C 04 02 14 */	add r0, r4, r0
/* 81430A4C | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 81430A50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81430A54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430A58 | 7C 08 03 A6 */	mtlr r0
/* 81430A5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430A60 | 4E 80 00 20 */	blr
.endfn create__Q49textinput8keyboard10signwindow4BaseFP12MEMAllocator

# .text:0x5C | 0x81430A64 | size: 0x5C
# textinput::keyboard::signwindow::Base::init()
.fn init__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81430A64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430A68 | 7C 08 02 A6 */	mflr r0
/* 81430A6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81430A70 | 38 00 00 00 */	li r0, 0x0
/* 81430A74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81430A78 | 7C 7F 1B 78 */	mr r31, r3
/* 81430A7C | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81430A80 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81430A84 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81430A88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430A8C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81430A90 | 7D 89 03 A6 */	mtctr r12
/* 81430A94 | 4E 80 04 21 */	bctrl
/* 81430A98 | 3C 80 81 61 */	lis r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@ha
/* 81430A9C | 54 60 18 38 */	slwi r0, r3, 3
/* 81430AA0 | 38 84 5D F0 */	addi r4, r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@l
/* 81430AA4 | 7C 04 02 14 */	add r0, r4, r0
/* 81430AA8 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 81430AAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81430AB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430AB4 | 7C 08 03 A6 */	mtlr r0
/* 81430AB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430ABC | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard10signwindow4BaseFv

# .text:0xB8 | 0x81430AC0 | size: 0x1CC
# textinput::keyboard::signwindow::Base::onKey(unsigned long, void*)
.fn onKey__Q49textinput8keyboard10signwindow4BaseFUlPv, global
/* 81430AC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81430AC4 | 7C 08 02 A6 */	mflr r0
/* 81430AC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81430ACC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81430AD0 | 48 1C 89 ED */	bl _savegpr_26
/* 81430AD4 | 28 04 00 04 */	cmplwi r4, 0x4
/* 81430AD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81430ADC | 7C BA 2B 78 */	mr r26, r5
/* 81430AE0 | 40 82 01 94 */	bne .L_81430C74
/* 81430AE4 | 3F C0 81 61 */	lis r30, csPaneNameToControlKey__Q39textinput8keyboard10signwindow@ha
/* 81430AE8 | 3B A0 00 00 */	li r29, 0x0
/* 81430AEC | 3B DE 5D A8 */	addi r30, r30, csPaneNameToControlKey__Q39textinput8keyboard10signwindow@l
.L_81430AF0:
/* 81430AF0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81430AF4 | 7F 44 D3 78 */	mr r4, r26
/* 81430AF8 | 1F 80 00 18 */	mulli r28, r0, 0x18
/* 81430AFC | 7C 7E E2 14 */	add r3, r30, r28
/* 81430B00 | 48 00 96 F5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81430B04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430B08 | 41 82 00 10 */	beq .L_81430B18
/* 81430B0C | 7C 7E E2 14 */	add r3, r30, r28
/* 81430B10 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81430B14 | 48 00 00 14 */	b .L_81430B28
.L_81430B18:
/* 81430B18 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81430B1C | 28 1D 00 03 */	cmplwi r29, 0x3
/* 81430B20 | 41 80 FF D0 */	blt .L_81430AF0
/* 81430B24 | 38 00 00 1B */	li r0, 0x1b
.L_81430B28:
/* 81430B28 | 2C 80 00 1B */	cmpwi cr1, r0, 0x1b
/* 81430B2C | 41 86 00 6C */	beq cr1, .L_81430B98
/* 81430B30 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 81430B34 | 41 82 00 4C */	beq .L_81430B80
/* 81430B38 | 40 80 00 10 */	bge .L_81430B48
/* 81430B3C | 2C 00 00 18 */	cmpwi r0, 0x18
/* 81430B40 | 40 80 00 10 */	bge .L_81430B50
/* 81430B44 | 48 00 01 30 */	b .L_81430C74
.L_81430B48:
/* 81430B48 | 40 84 01 2C */	bge cr1, .L_81430C74
/* 81430B4C | 48 00 00 1C */	b .L_81430B68
.L_81430B50:
/* 81430B50 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81430B54 | 7F E3 FB 78 */	mr r3, r31
/* 81430B58 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81430B5C | 7D 89 03 A6 */	mtctr r12
/* 81430B60 | 4E 80 04 21 */	bctrl
/* 81430B64 | 48 00 01 10 */	b .L_81430C74
.L_81430B68:
/* 81430B68 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81430B6C | 7F E3 FB 78 */	mr r3, r31
/* 81430B70 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81430B74 | 7D 89 03 A6 */	mtctr r12
/* 81430B78 | 4E 80 04 21 */	bctrl
/* 81430B7C | 48 00 00 F8 */	b .L_81430C74
.L_81430B80:
/* 81430B80 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81430B84 | 7F E3 FB 78 */	mr r3, r31
/* 81430B88 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81430B8C | 7D 89 03 A6 */	mtctr r12
/* 81430B90 | 4E 80 04 21 */	bctrl
/* 81430B94 | 48 00 00 E0 */	b .L_81430C74
.L_81430B98:
/* 81430B98 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81430B9C | 3B 80 00 00 */	li r28, 0x0
/* 81430BA0 | 8B DF 00 17 */	lbz r30, 0x17(r31)
/* 81430BA4 | 83 A3 00 04 */	lwz r29, 0x4(r3)
.L_81430BA8:
/* 81430BA8 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81430BAC | 7F 44 D3 78 */	mr r4, r26
/* 81430BB0 | 1F 60 00 28 */	mulli r27, r0, 0x28
/* 81430BB4 | 7C 7D D8 2E */	lwzx r3, r29, r27
/* 81430BB8 | 48 00 96 3D */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81430BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430BC0 | 41 82 00 18 */	beq .L_81430BD8
/* 81430BC4 | 7C 7D DA 14 */	add r3, r29, r27
/* 81430BC8 | 57 C0 0B FC */	clrlslwi r0, r30, 16, 1
/* 81430BCC | 7C 63 02 14 */	add r3, r3, r0
/* 81430BD0 | A0 A3 00 08 */	lhz r5, 0x8(r3)
/* 81430BD4 | 48 00 00 14 */	b .L_81430BE8
.L_81430BD8:
/* 81430BD8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81430BDC | 28 1C 00 14 */	cmplwi r28, 0x14
/* 81430BE0 | 41 80 FF C8 */	blt .L_81430BA8
/* 81430BE4 | 38 A0 00 00 */	li r5, 0x0
.L_81430BE8:
/* 81430BE8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81430BEC | 41 82 00 88 */	beq .L_81430C74
/* 81430BF0 | 3C 80 81 61 */	lis r4, lbl_81615E40@ha
/* 81430BF4 | 84 04 5E 40 */	lwzu r0, lbl_81615E40@l(r4)
/* 81430BF8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81430BFC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81430C00 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81430C04 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81430C08 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81430C0C | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 81430C10 | 88 1F 00 16 */	lbz r0, 0x16(r31)
/* 81430C14 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81430C18 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81430C1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430C20 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81430C24 | 7D 89 03 A6 */	mtctr r12
/* 81430C28 | 4E 80 04 21 */	bctrl
/* 81430C2C | 4B FF 14 99 */	bl isAtokActive__Q39textinput9inputform4BaseCFv
/* 81430C30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430C34 | 41 82 00 0C */	beq .L_81430C40
/* 81430C38 | 38 00 00 01 */	li r0, 0x1
/* 81430C3C | 98 01 00 0C */	stb r0, 0xc(r1)
.L_81430C40:
/* 81430C40 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81430C44 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 81430C48 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81430C4C | 41 81 00 0C */	bgt .L_81430C58
/* 81430C50 | 38 00 00 01 */	li r0, 0x1
/* 81430C54 | 98 01 00 0C */	stb r0, 0xc(r1)
.L_81430C58:
/* 81430C58 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81430C5C | 7F E3 FB 78 */	mr r3, r31
/* 81430C60 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81430C64 | 38 80 00 05 */	li r4, 0x5
/* 81430C68 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81430C6C | 7D 89 03 A6 */	mtctr r12
/* 81430C70 | 4E 80 04 21 */	bctrl
.L_81430C74:
/* 81430C74 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81430C78 | 48 1C 88 91 */	bl _restgpr_26
/* 81430C7C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81430C80 | 7C 08 03 A6 */	mtlr r0
/* 81430C84 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81430C88 | 4E 80 00 20 */	blr
.endfn onKey__Q49textinput8keyboard10signwindow4BaseFUlPv

# .text:0x284 | 0x81430C8C | size: 0x4
# textinput::keyboard::signwindow::Base::close()
.fn close__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81430C8C | 4E 80 00 20 */	blr
.endfn close__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x288 | 0x81430C90 | size: 0x2C
# textinput::keyboard::signwindow::Base::movePrevSignPage()
.fn movePrevSignPage__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81430C90 | 88 83 00 17 */	lbz r4, 0x17(r3)
/* 81430C94 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81430C98 | 40 82 00 18 */	bne .L_81430CB0
/* 81430C9C | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 81430CA0 | 88 84 00 00 */	lbz r4, 0x0(r4)
/* 81430CA4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81430CA8 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81430CAC | 4E 80 00 20 */	blr
.L_81430CB0:
/* 81430CB0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81430CB4 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81430CB8 | 4E 80 00 20 */	blr
.endfn movePrevSignPage__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x2B4 | 0x81430CBC | size: 0x2C
# textinput::keyboard::signwindow::Base::moveNextSignPage()
.fn moveNextSignPage__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81430CBC | 88 A3 00 17 */	lbz r5, 0x17(r3)
/* 81430CC0 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 81430CC4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81430CC8 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81430CCC | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81430CD0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81430CD4 | 7C 05 00 40 */	cmplw r5, r0
/* 81430CD8 | 4D 80 00 20 */	bltlr
/* 81430CDC | 38 00 00 00 */	li r0, 0x0
/* 81430CE0 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81430CE4 | 4E 80 00 20 */	blr
.endfn moveNextSignPage__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x2E0 | 0x81430CE8 | size: 0xE8
# textinput::keyboard::signwindow::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81430CE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81430CEC | 7C 08 02 A6 */	mflr r0
/* 81430CF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430CF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81430CF8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81430CFC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81430D00 | 7C 9E 23 78 */	mr r30, r4
/* 81430D04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81430D08 | 7C 7D 1B 78 */	mr r29, r3
/* 81430D0C | 41 82 00 A4 */	beq .L_81430DB0
/* 81430D10 | 3C C0 81 66 */	lis r6, __vt__Q49textinput8keyboard10signwindow12LayoutByNW4R@ha
/* 81430D14 | 38 80 FF FF */	li r4, -0x1
/* 81430D18 | 38 C6 F3 A0 */	addi r6, r6, __vt__Q49textinput8keyboard10signwindow12LayoutByNW4R@l
/* 81430D1C | 38 A6 00 50 */	addi r5, r6, 0x50
/* 81430D20 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81430D24 | 38 06 00 C8 */	addi r0, r6, 0xc8
/* 81430D28 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 81430D2C | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 81430D30 | 80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 81430D34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430D38 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81430D3C | 7D 89 03 A6 */	mtctr r12
/* 81430D40 | 4E 80 04 21 */	bctrl
/* 81430D44 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 81430D48 | 80 9D 00 D4 */	lwz r4, 0xd4(r29)
/* 81430D4C | 48 12 A9 2D */	bl fn_8155B678
/* 81430D50 | 38 7D 00 90 */	addi r3, r29, 0x90
/* 81430D54 | 38 80 00 00 */	li r4, 0x0
/* 81430D58 | 48 0E 15 85 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81430D5C | 7C 7F 1B 78 */	mr r31, r3
/* 81430D60 | 48 00 00 2C */	b .L_81430D8C
.L_81430D64:
/* 81430D64 | 7F E4 FB 78 */	mr r4, r31
/* 81430D68 | 38 7D 00 90 */	addi r3, r29, 0x90
/* 81430D6C | 48 0E 15 05 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81430D70 | 80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 81430D74 | 7F E3 FB 78 */	mr r3, r31
/* 81430D78 | 48 00 66 79 */	bl destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator
/* 81430D7C | 38 7D 00 90 */	addi r3, r29, 0x90
/* 81430D80 | 38 80 00 00 */	li r4, 0x0
/* 81430D84 | 48 0E 15 59 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81430D88 | 7C 7F 1B 78 */	mr r31, r3
.L_81430D8C:
/* 81430D8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81430D90 | 40 82 FF D4 */	bne .L_81430D64
/* 81430D94 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81430D98 | 38 80 00 00 */	li r4, 0x0
/* 81430D9C | 48 00 53 5D */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 81430DA0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81430DA4 | 40 81 00 0C */	ble .L_81430DB0
/* 81430DA8 | 7F A3 EB 78 */	mr r3, r29
/* 81430DAC | 48 1C 73 39 */	bl __dl__FPv
.L_81430DB0:
/* 81430DB0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81430DB4 | 7F A3 EB 78 */	mr r3, r29
/* 81430DB8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81430DBC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81430DC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81430DC4 | 7C 08 03 A6 */	mtlr r0
/* 81430DC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81430DCC | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x3C8 | 0x81430DD0 | size: 0x40
# textinput::keyboard::signwindow::Base::~Base()
.fn __dt__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81430DD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430DD4 | 7C 08 02 A6 */	mflr r0
/* 81430DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430DDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81430DE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81430DE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81430DE8 | 41 82 00 10 */	beq .L_81430DF8
/* 81430DEC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81430DF0 | 40 81 00 08 */	ble .L_81430DF8
/* 81430DF4 | 48 1C 72 F1 */	bl __dl__FPv
.L_81430DF8:
/* 81430DF8 | 7F E3 FB 78 */	mr r3, r31
/* 81430DFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81430E00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430E04 | 7C 08 03 A6 */	mtlr r0
/* 81430E08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430E0C | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x408 | 0x81430E10 | size: 0x40
# textinput::keyboard::signwindow::EventHandler::~EventHandler()
.fn __dt__Q49textinput8keyboard10signwindow12EventHandlerFv, global
/* 81430E10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81430E14 | 7C 08 02 A6 */	mflr r0
/* 81430E18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430E1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81430E20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81430E24 | 7C 7F 1B 78 */	mr r31, r3
/* 81430E28 | 41 82 00 10 */	beq .L_81430E38
/* 81430E2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81430E30 | 40 81 00 08 */	ble .L_81430E38
/* 81430E34 | 48 1C 72 B1 */	bl __dl__FPv
.L_81430E38:
/* 81430E38 | 7F E3 FB 78 */	mr r3, r31
/* 81430E3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81430E40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81430E44 | 7C 08 03 A6 */	mtlr r0
/* 81430E48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81430E4C | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow12EventHandlerFv

# .text:0x448 | 0x81430E50 | size: 0x374
# textinput::keyboard::signwindow::LayoutByNW4R::create(MEMAllocator*)
.fn create__Q49textinput8keyboard10signwindow12LayoutByNW4RFP12MEMAllocator, global
/* 81430E50 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81430E54 | 7C 08 02 A6 */	mflr r0
/* 81430E58 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81430E5C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81430E60 | 48 1C 86 2D */	bl _savegpr_14
/* 81430E64 | 39 C0 00 00 */	li r14, 0x0
/* 81430E68 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81430E6C | 7C 6F 1B 78 */	mr r15, r3
/* 81430E70 | 7C 90 23 78 */	mr r16, r4
/* 81430E74 | 99 C3 00 17 */	stb r14, 0x17(r3)
/* 81430E78 | 99 C3 00 15 */	stb r14, 0x15(r3)
/* 81430E7C | 99 C3 00 16 */	stb r14, 0x16(r3)
/* 81430E80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430E84 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81430E88 | 7D 89 03 A6 */	mtctr r12
/* 81430E8C | 4E 80 04 21 */	bctrl
/* 81430E90 | 3C 80 81 61 */	lis r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@ha
/* 81430E94 | 54 60 18 38 */	slwi r0, r3, 3
/* 81430E98 | 38 84 5D F0 */	addi r4, r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@l
/* 81430E9C | 7E 03 83 78 */	mr r3, r16
/* 81430EA0 | 7C 04 02 14 */	add r0, r4, r0
/* 81430EA4 | 90 0F 00 18 */	stw r0, 0x18(r15)
/* 81430EA8 | 38 80 00 10 */	li r4, 0x10
/* 81430EAC | 48 12 A7 BD */	bl fn_8155B668
/* 81430EB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430EB4 | 41 82 00 18 */	beq .L_81430ECC
/* 81430EB8 | 3C 80 81 66 */	lis r4, __vt__Q49textinput8keyboard10signwindow12EventHandler@ha
/* 81430EBC | 91 C3 00 04 */	stw r14, 0x4(r3)
/* 81430EC0 | 38 84 F3 80 */	addi r4, r4, __vt__Q49textinput8keyboard10signwindow12EventHandler@l
/* 81430EC4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81430EC8 | 91 E3 00 0C */	stw r15, 0xc(r3)
.L_81430ECC:
/* 81430ECC | 90 6F 00 D4 */	stw r3, 0xd4(r15)
/* 81430ED0 | 7C 65 1B 78 */	mr r5, r3
/* 81430ED4 | 7E 04 83 78 */	mr r4, r16
/* 81430ED8 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81430EDC | 48 00 53 39 */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 81430EE0 | 80 6F 00 34 */	lwz r3, 0x34(r15)
/* 81430EE4 | 38 80 00 00 */	li r4, 0x0
/* 81430EE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430EEC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81430EF0 | 7D 89 03 A6 */	mtctr r12
/* 81430EF4 | 4E 80 04 21 */	bctrl
/* 81430EF8 | 80 6F 00 34 */	lwz r3, 0x34(r15)
/* 81430EFC | 38 80 00 01 */	li r4, 0x1
/* 81430F00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81430F04 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81430F08 | 7D 89 03 A6 */	mtctr r12
/* 81430F0C | 4E 80 04 21 */	bctrl
/* 81430F10 | 3F 20 81 66 */	lis r25, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 81430F14 | 3F 60 81 66 */	lis r27, __vt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPane@ha
/* 81430F18 | 3F A0 81 66 */	lis r29, __vt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPane@ha
/* 81430F1C | 3F 00 81 66 */	lis r24, csPaneToAnimationInSign__Q39textinput8keyboard10signwindow@ha
/* 81430F20 | 3F C0 81 66 */	lis r30, __vt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPane@ha
/* 81430F24 | 3B 39 F8 C8 */	addi r25, r25, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 81430F28 | 3B 7B F2 E0 */	addi r27, r27, __vt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPane@l
/* 81430F2C | 3B BD F3 08 */	addi r29, r29, __vt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPane@l
/* 81430F30 | 3B 18 EB F8 */	addi r24, r24, csPaneToAnimationInSign__Q39textinput8keyboard10signwindow@l
/* 81430F34 | 3B DE F3 30 */	addi r30, r30, __vt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPane@l
/* 81430F38 | 3A A0 00 00 */	li r21, 0x0
/* 81430F3C | 3B 40 00 00 */	li r26, 0x0
/* 81430F40 | 3B 80 00 02 */	li r28, 0x2
/* 81430F44 | 39 C0 00 01 */	li r14, 0x1
.L_81430F48:
/* 81430F48 | 56 A0 32 B2 */	clrlslwi r0, r21, 16, 6
/* 81430F4C | 3A 60 00 00 */	li r19, 0x0
/* 81430F50 | 7E 98 02 14 */	add r20, r24, r0
/* 81430F54 | 7C 18 00 2E */	lwzx r0, r24, r0
/* 81430F58 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81430F5C | 41 82 00 88 */	beq .L_81430FE4
/* 81430F60 | 40 80 00 10 */	bge .L_81430F70
/* 81430F64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81430F68 | 40 80 00 E8 */	bge .L_81431050
/* 81430F6C | 48 00 01 4C */	b .L_814310B8
.L_81430F70:
/* 81430F70 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81430F74 | 40 80 01 44 */	bge .L_814310B8
/* 81430F78 | 7E 03 83 78 */	mr r3, r16
/* 81430F7C | 38 80 00 34 */	li r4, 0x34
/* 81430F80 | 48 12 A6 E9 */	bl fn_8155B668
/* 81430F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430F88 | 7C 73 1B 78 */	mr r19, r3
/* 81430F8C | 41 82 01 2C */	beq .L_814310B8
/* 81430F90 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 81430F94 | 7D F1 7B 78 */	mr r17, r15
/* 81430F98 | 41 82 00 08 */	beq .L_81430FA0
/* 81430F9C | 3A 2F 00 CC */	addi r17, r15, 0xcc
.L_81430FA0:
/* 81430FA0 | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81430FA4 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81430FA8 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81430FAC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81430FB0 | 7D 89 03 A6 */	mtctr r12
/* 81430FB4 | 4E 80 04 21 */	bctrl
/* 81430FB8 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81430FBC | 38 80 00 10 */	li r4, 0x10
/* 81430FC0 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81430FC4 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81430FC8 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 81430FCC | 92 33 00 18 */	stw r17, 0x18(r19)
/* 81430FD0 | 48 0E 10 8D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81430FD4 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81430FD8 | 93 73 00 00 */	stw r27, 0x0(r19)
/* 81430FDC | 93 93 00 30 */	stw r28, 0x30(r19)
/* 81430FE0 | 48 00 00 D8 */	b .L_814310B8
.L_81430FE4:
/* 81430FE4 | 7E 03 83 78 */	mr r3, r16
/* 81430FE8 | 38 80 00 34 */	li r4, 0x34
/* 81430FEC | 48 12 A6 7D */	bl fn_8155B668
/* 81430FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81430FF4 | 7C 73 1B 78 */	mr r19, r3
/* 81430FF8 | 41 82 00 C0 */	beq .L_814310B8
/* 81430FFC | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 81431000 | 7D F1 7B 78 */	mr r17, r15
/* 81431004 | 41 82 00 08 */	beq .L_8143100C
/* 81431008 | 3A 2F 00 CC */	addi r17, r15, 0xcc
.L_8143100C:
/* 8143100C | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81431010 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81431014 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81431018 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143101C | 7D 89 03 A6 */	mtctr r12
/* 81431020 | 4E 80 04 21 */	bctrl
/* 81431024 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81431028 | 38 80 00 10 */	li r4, 0x10
/* 8143102C | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81431030 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81431034 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 81431038 | 92 33 00 18 */	stw r17, 0x18(r19)
/* 8143103C | 48 0E 10 21 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81431040 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81431044 | 93 B3 00 00 */	stw r29, 0x0(r19)
/* 81431048 | 91 D3 00 30 */	stw r14, 0x30(r19)
/* 8143104C | 48 00 00 6C */	b .L_814310B8
.L_81431050:
/* 81431050 | 7E 03 83 78 */	mr r3, r16
/* 81431054 | 38 80 00 34 */	li r4, 0x34
/* 81431058 | 48 12 A6 11 */	bl fn_8155B668
/* 8143105C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81431060 | 7C 73 1B 78 */	mr r19, r3
/* 81431064 | 41 82 00 54 */	beq .L_814310B8
/* 81431068 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 8143106C | 7D F1 7B 78 */	mr r17, r15
/* 81431070 | 41 82 00 08 */	beq .L_81431078
/* 81431074 | 3A 2F 00 CC */	addi r17, r15, 0xcc
.L_81431078:
/* 81431078 | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 8143107C | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81431080 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81431084 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431088 | 7D 89 03 A6 */	mtctr r12
/* 8143108C | 4E 80 04 21 */	bctrl
/* 81431090 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81431094 | 38 80 00 10 */	li r4, 0x10
/* 81431098 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 8143109C | 38 73 00 08 */	addi r3, r19, 0x8
/* 814310A0 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 814310A4 | 92 33 00 18 */	stw r17, 0x18(r19)
/* 814310A8 | 48 0E 0F B5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 814310AC | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 814310B0 | 93 D3 00 00 */	stw r30, 0x0(r19)
/* 814310B4 | 93 53 00 30 */	stw r26, 0x30(r19)
.L_814310B8:
/* 814310B8 | 7E 64 9B 78 */	mr r4, r19
/* 814310BC | 38 6F 00 90 */	addi r3, r15, 0x90
/* 814310C0 | 48 0E 0F B5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 814310C4 | 82 F4 00 1C */	lwz r23, 0x1c(r20)
/* 814310C8 | 3A 40 00 00 */	li r18, 0x0
/* 814310CC | 83 F4 00 18 */	lwz r31, 0x18(r20)
/* 814310D0 | 48 00 00 B0 */	b .L_81431180
.L_814310D4:
/* 814310D4 | 80 6F 00 30 */	lwz r3, 0x30(r15)
/* 814310D8 | 56 40 13 BA */	clrlslwi r0, r18, 16, 2
/* 814310DC | 7E D4 02 14 */	add r22, r20, r0
/* 814310E0 | 38 80 00 00 */	li r4, 0x0
/* 814310E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814310E8 | 38 C0 00 00 */	li r6, 0x0
/* 814310EC | 80 B6 00 20 */	lwz r5, 0x20(r22)
/* 814310F0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814310F4 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 814310F8 | 7D 89 03 A6 */	mtctr r12
/* 814310FC | 4E 80 04 21 */	bctrl
/* 81431100 | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81431104 | 7C 71 1B 78 */	mr r17, r3
/* 81431108 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 8143110C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81431110 | 7D 89 03 A6 */	mtctr r12
/* 81431114 | 4E 80 04 21 */	bctrl
/* 81431118 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143111C | 7E 24 8B 78 */	mr r4, r17
/* 81431120 | 80 AF 00 30 */	lwz r5, 0x30(r15)
/* 81431124 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81431128 | 7D 89 03 A6 */	mtctr r12
/* 8143112C | 4E 80 04 21 */	bctrl
/* 81431130 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81431134 | 7C 66 1B 78 */	mr r6, r3
/* 81431138 | 41 82 00 28 */	beq .L_81431160
/* 8143113C | 80 B6 00 20 */	lwz r5, 0x20(r22)
/* 81431140 | 7E 63 9B 78 */	mr r3, r19
/* 81431144 | 7E 04 83 78 */	mr r4, r16
/* 81431148 | 7E E7 BB 78 */	mr r7, r23
/* 8143114C | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81431150 | 39 00 00 00 */	li r8, 0x0
/* 81431154 | 39 20 00 01 */	li r9, 0x1
/* 81431158 | 48 00 5E BD */	bl forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb
/* 8143115C | 48 00 00 20 */	b .L_8143117C
.L_81431160:
/* 81431160 | 80 B6 00 20 */	lwz r5, 0x20(r22)
/* 81431164 | 7E 63 9B 78 */	mr r3, r19
/* 81431168 | 7E 04 83 78 */	mr r4, r16
/* 8143116C | 38 E0 00 00 */	li r7, 0x0
/* 81431170 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81431174 | 39 00 00 01 */	li r8, 0x1
/* 81431178 | 48 00 5D E9 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
.L_8143117C:
/* 8143117C | 3A 52 00 01 */	addi r18, r18, 0x1
.L_81431180:
/* 81431180 | 56 40 04 3E */	clrlwi r0, r18, 16
/* 81431184 | 7C 00 F8 40 */	cmplw r0, r31
/* 81431188 | 41 80 FF 4C */	blt .L_814310D4
/* 8143118C | 3A B5 00 01 */	addi r21, r21, 0x1
/* 81431190 | 28 15 00 19 */	cmplwi r21, 0x19
/* 81431194 | 41 80 FD B4 */	blt .L_81430F48
/* 81431198 | 81 8F 00 00 */	lwz r12, 0x0(r15)
/* 8143119C | 7D E3 7B 78 */	mr r3, r15
/* 814311A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814311A4 | 7D 89 03 A6 */	mtctr r12
/* 814311A8 | 4E 80 04 21 */	bctrl
/* 814311AC | 39 61 00 50 */	addi r11, r1, 0x50
/* 814311B0 | 48 1C 83 29 */	bl _restgpr_14
/* 814311B4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814311B8 | 7C 08 03 A6 */	mtlr r0
/* 814311BC | 38 21 00 50 */	addi r1, r1, 0x50
/* 814311C0 | 4E 80 00 20 */	blr
.endfn create__Q49textinput8keyboard10signwindow12LayoutByNW4RFP12MEMAllocator

# .text:0x7BC | 0x814311C4 | size: 0x58
# textinput::keyboard::signwindow::AnmPane::~AnmPane()
.fn __dt__Q49textinput8keyboard10signwindow7AnmPaneFv, global
/* 814311C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814311C8 | 7C 08 02 A6 */	mflr r0
/* 814311CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814311D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814311D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814311D8 | 7C 9F 23 78 */	mr r31, r4
/* 814311DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814311E0 | 7C 7E 1B 78 */	mr r30, r3
/* 814311E4 | 41 82 00 1C */	beq .L_81431200
/* 814311E8 | 38 80 00 00 */	li r4, 0x0
/* 814311EC | 48 00 5D 35 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 814311F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814311F4 | 40 81 00 0C */	ble .L_81431200
/* 814311F8 | 7F C3 F3 78 */	mr r3, r30
/* 814311FC | 48 1C 6E E9 */	bl __dl__FPv
.L_81431200:
/* 81431200 | 7F C3 F3 78 */	mr r3, r30
/* 81431204 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81431208 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143120C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431210 | 7C 08 03 A6 */	mtlr r0
/* 81431214 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431218 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow7AnmPaneFv

# .text:0x814 | 0x8143121C | size: 0x170
# textinput::keyboard::signwindow::LayoutByNW4R::init()
.fn init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 8143121C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81431220 | 7C 08 02 A6 */	mflr r0
/* 81431224 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431228 | 38 00 00 00 */	li r0, 0x0
/* 8143122C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81431230 | 3F E0 81 66 */	lis r31, lbl_8165EAA8@ha
/* 81431234 | 3B FF EA A8 */	addi r31, r31, lbl_8165EAA8@l
/* 81431238 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143123C | 7C 7E 1B 78 */	mr r30, r3
/* 81431240 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81431244 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81431248 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 8143124C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431250 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431254 | 7D 89 03 A6 */	mtctr r12
/* 81431258 | 4E 80 04 21 */	bctrl
/* 8143125C | 3C 80 81 61 */	lis r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@ha
/* 81431260 | 54 60 18 38 */	slwi r0, r3, 3
/* 81431264 | 38 84 5D F0 */	addi r4, r4, csLanguageDependencyData__Q39textinput8keyboard10signwindow@l
/* 81431268 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 8143126C | 7C 04 02 14 */	add r0, r4, r0
/* 81431270 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 81431274 | 38 9F 07 90 */	addi r4, r31, 0x790
/* 81431278 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 8143127C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81431280 | 7D 89 03 A6 */	mtctr r12
/* 81431284 | 4E 80 04 21 */	bctrl
/* 81431288 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143128C | 38 80 00 00 */	li r4, 0x0
/* 81431290 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431294 | 7D 89 03 A6 */	mtctr r12
/* 81431298 | 4E 80 04 21 */	bctrl
/* 8143129C | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 814312A0 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 814312A4 | 38 9F 07 90 */	addi r4, r31, 0x790
/* 814312A8 | 38 A0 00 01 */	li r5, 0x1
/* 814312AC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814312B0 | 7D 89 03 A6 */	mtctr r12
/* 814312B4 | 4E 80 04 21 */	bctrl
/* 814312B8 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 814312BC | 38 7E 00 24 */	addi r3, r30, 0x24
/* 814312C0 | 38 9F 07 A0 */	addi r4, r31, 0x7a0
/* 814312C4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814312C8 | 7D 89 03 A6 */	mtctr r12
/* 814312CC | 4E 80 04 21 */	bctrl
/* 814312D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814312D4 | 38 80 00 00 */	li r4, 0x0
/* 814312D8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814312DC | 7D 89 03 A6 */	mtctr r12
/* 814312E0 | 4E 80 04 21 */	bctrl
/* 814312E4 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 814312E8 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 814312EC | 38 9F 07 B0 */	addi r4, r31, 0x7b0
/* 814312F0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814312F4 | 7D 89 03 A6 */	mtctr r12
/* 814312F8 | 4E 80 04 21 */	bctrl
/* 814312FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431300 | 38 80 00 00 */	li r4, 0x0
/* 81431304 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431308 | 7D 89 03 A6 */	mtctr r12
/* 8143130C | 4E 80 04 21 */	bctrl
/* 81431310 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431314 | 7F C3 F3 78 */	mr r3, r30
/* 81431318 | 88 9E 00 17 */	lbz r4, 0x17(r30)
/* 8143131C | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 81431320 | 7C 85 23 78 */	mr r5, r4
/* 81431324 | 7D 89 03 A6 */	mtctr r12
/* 81431328 | 4E 80 04 21 */	bctrl
/* 8143132C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431330 | 7F C3 F3 78 */	mr r3, r30
/* 81431334 | 88 9E 00 17 */	lbz r4, 0x17(r30)
/* 81431338 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8143133C | 7D 89 03 A6 */	mtctr r12
/* 81431340 | 4E 80 04 21 */	bctrl
/* 81431344 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 81431348 | 38 80 00 00 */	li r4, 0x0
/* 8143134C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431350 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431354 | 7D 89 03 A6 */	mtctr r12
/* 81431358 | 4E 80 04 21 */	bctrl
/* 8143135C | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 81431360 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 81431364 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431368 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8143136C | 7D 89 03 A6 */	mtctr r12
/* 81431370 | 4E 80 04 21 */	bctrl
/* 81431374 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431378 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143137C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81431380 | 7C 08 03 A6 */	mtlr r0
/* 81431384 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431388 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x984 | 0x8143138C | size: 0x14C
# textinput::keyboard::signwindow::LayoutByNW4R::onKey(unsigned long, void*)
.fn onKey__Q49textinput8keyboard10signwindow12LayoutByNW4RFUlPv, global
/* 8143138C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81431390 | 7C 08 02 A6 */	mflr r0
/* 81431394 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81431398 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8143139C | 48 1C 81 21 */	bl _savegpr_26
/* 814313A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814313A4 | 7C 9B 23 78 */	mr r27, r4
/* 814313A8 | 7C BA 2B 78 */	mr r26, r5
/* 814313AC | 4B FF F7 15 */	bl onKey__Q49textinput8keyboard10signwindow4BaseFUlPv
/* 814313B0 | 28 1B 00 04 */	cmplwi r27, 0x4
/* 814313B4 | 40 82 01 0C */	bne .L_814314C0
/* 814313B8 | 3F C0 81 61 */	lis r30, csPaneNameToControlKey__Q39textinput8keyboard10signwindow@ha
/* 814313BC | 3B A0 00 00 */	li r29, 0x0
/* 814313C0 | 3B DE 5D A8 */	addi r30, r30, csPaneNameToControlKey__Q39textinput8keyboard10signwindow@l
.L_814313C4:
/* 814313C4 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814313C8 | 7F 44 D3 78 */	mr r4, r26
/* 814313CC | 1F 80 00 18 */	mulli r28, r0, 0x18
/* 814313D0 | 7C 7E E2 14 */	add r3, r30, r28
/* 814313D4 | 48 00 8E 21 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814313D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814313DC | 41 82 00 10 */	beq .L_814313EC
/* 814313E0 | 7C 7E E2 14 */	add r3, r30, r28
/* 814313E4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814313E8 | 48 00 00 14 */	b .L_814313FC
.L_814313EC:
/* 814313EC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814313F0 | 28 1D 00 03 */	cmplwi r29, 0x3
/* 814313F4 | 41 80 FF D0 */	blt .L_814313C4
/* 814313F8 | 38 00 00 1B */	li r0, 0x1b
.L_814313FC:
/* 814313FC | 2C 00 00 1B */	cmpwi r0, 0x1b
/* 81431400 | 41 82 00 30 */	beq .L_81431430
/* 81431404 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 81431408 | 41 82 00 0C */	beq .L_81431414
/* 8143140C | 41 80 00 B4 */	blt .L_814314C0
/* 81431410 | 48 00 00 B0 */	b .L_814314C0
.L_81431414:
/* 81431414 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 81431418 | 38 80 00 09 */	li r4, 0x9
/* 8143141C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431420 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431424 | 7D 89 03 A6 */	mtctr r12
/* 81431428 | 4E 80 04 21 */	bctrl
/* 8143142C | 48 00 00 94 */	b .L_814314C0
.L_81431430:
/* 81431430 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81431434 | 3B 80 00 00 */	li r28, 0x0
/* 81431438 | 8B DF 00 17 */	lbz r30, 0x17(r31)
/* 8143143C | 83 A3 00 04 */	lwz r29, 0x4(r3)
.L_81431440:
/* 81431440 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81431444 | 7F 44 D3 78 */	mr r4, r26
/* 81431448 | 1F 60 00 28 */	mulli r27, r0, 0x28
/* 8143144C | 7C 7D D8 2E */	lwzx r3, r29, r27
/* 81431450 | 48 00 8D A5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81431454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81431458 | 41 82 00 18 */	beq .L_81431470
/* 8143145C | 7C 7D DA 14 */	add r3, r29, r27
/* 81431460 | 57 C0 0B FC */	clrlslwi r0, r30, 16, 1
/* 81431464 | 7C 63 02 14 */	add r3, r3, r0
/* 81431468 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 8143146C | 48 00 00 14 */	b .L_81431480
.L_81431470:
/* 81431470 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81431474 | 28 1C 00 14 */	cmplwi r28, 0x14
/* 81431478 | 41 80 FF C8 */	blt .L_81431440
/* 8143147C | 38 00 00 00 */	li r0, 0x0
.L_81431480:
/* 81431480 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81431484 | 41 82 00 3C */	beq .L_814314C0
/* 81431488 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8143148C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431490 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81431494 | 7D 89 03 A6 */	mtctr r12
/* 81431498 | 4E 80 04 21 */	bctrl
/* 8143149C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814314A0 | 40 82 00 20 */	bne .L_814314C0
/* 814314A4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814314A8 | 7F E3 FB 78 */	mr r3, r31
/* 814314AC | 38 80 00 27 */	li r4, 0x27
/* 814314B0 | 38 A0 00 00 */	li r5, 0x0
/* 814314B4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814314B8 | 7D 89 03 A6 */	mtctr r12
/* 814314BC | 4E 80 04 21 */	bctrl
.L_814314C0:
/* 814314C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814314C4 | 48 1C 80 45 */	bl _restgpr_26
/* 814314C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814314CC | 7C 08 03 A6 */	mtlr r0
/* 814314D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814314D4 | 4E 80 00 20 */	blr
.endfn onKey__Q49textinput8keyboard10signwindow12LayoutByNW4RFUlPv

# .text:0xAD0 | 0x814314D8 | size: 0x15C
# textinput::keyboard::signwindow::LayoutByNW4R::open(textinput::keyboard::KeyboardBase*, bool)
.fn open__Q49textinput8keyboard10signwindow12LayoutByNW4RFPQ39textinput8keyboard12KeyboardBaseb, global
/* 814314D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814314DC | 7C 08 02 A6 */	mflr r0
/* 814314E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814314E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814314E8 | 7C BF 2B 78 */	mr r31, r5
/* 814314EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814314F0 | 7C 9E 23 78 */	mr r30, r4
/* 814314F4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814314F8 | 7C 7D 1B 78 */	mr r29, r3
/* 814314FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431500 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 81431504 | 7D 89 03 A6 */	mtctr r12
/* 81431508 | 4E 80 04 21 */	bctrl
/* 8143150C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81431510 | 7F A3 EB 78 */	mr r3, r29
/* 81431514 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81431518 | 7D 89 03 A6 */	mtctr r12
/* 8143151C | 4E 80 04 21 */	bctrl
/* 81431520 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81431524 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81431528 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8143152C | 7D 89 03 A6 */	mtctr r12
/* 81431530 | 4E 80 04 21 */	bctrl
/* 81431534 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431538 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143153C | 7D 89 03 A6 */	mtctr r12
/* 81431540 | 4E 80 04 21 */	bctrl
/* 81431544 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 81431548 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 8143154C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81431550 | 41 81 00 20 */	bgt .L_81431570
/* 81431554 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81431558 | 7F A3 EB 78 */	mr r3, r29
/* 8143155C | 38 80 00 06 */	li r4, 0x6
/* 81431560 | 38 A0 00 00 */	li r5, 0x0
/* 81431564 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81431568 | 7D 89 03 A6 */	mtctr r12
/* 8143156C | 4E 80 04 21 */	bctrl
.L_81431570:
/* 81431570 | 38 60 00 01 */	li r3, 0x1
/* 81431574 | 38 00 00 00 */	li r0, 0x0
/* 81431578 | 98 7D 00 D0 */	stb r3, 0xd0(r29)
/* 8143157C | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81431580 | 98 1D 00 D1 */	stb r0, 0xd1(r29)
/* 81431584 | 93 DD 00 D8 */	stw r30, 0xd8(r29)
/* 81431588 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8143158C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81431590 | 7D 89 03 A6 */	mtctr r12
/* 81431594 | 4E 80 04 21 */	bctrl
/* 81431598 | 9B FD 00 16 */	stb r31, 0x16(r29)
/* 8143159C | 7F A3 EB 78 */	mr r3, r29
/* 814315A0 | 88 9D 00 17 */	lbz r4, 0x17(r29)
/* 814315A4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814315A8 | 7C 85 23 78 */	mr r5, r4
/* 814315AC | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 814315B0 | 7D 89 03 A6 */	mtctr r12
/* 814315B4 | 4E 80 04 21 */	bctrl
/* 814315B8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814315BC | 7F A3 EB 78 */	mr r3, r29
/* 814315C0 | 88 9D 00 17 */	lbz r4, 0x17(r29)
/* 814315C4 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 814315C8 | 7D 89 03 A6 */	mtctr r12
/* 814315CC | 4E 80 04 21 */	bctrl
/* 814315D0 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 814315D4 | 3C 80 81 66 */	lis r4, lbl_8165F238@ha
/* 814315D8 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 814315DC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814315E0 | 38 84 F2 38 */	addi r4, r4, lbl_8165F238@l
/* 814315E4 | 7D 89 03 A6 */	mtctr r12
/* 814315E8 | 4E 80 04 21 */	bctrl
/* 814315EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814315F0 | 38 80 00 06 */	li r4, 0x6
/* 814315F4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814315F8 | 7D 89 03 A6 */	mtctr r12
/* 814315FC | 4E 80 04 21 */	bctrl
/* 81431600 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 81431604 | 38 80 00 0E */	li r4, 0xe
/* 81431608 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143160C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431610 | 7D 89 03 A6 */	mtctr r12
/* 81431614 | 4E 80 04 21 */	bctrl
/* 81431618 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143161C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81431620 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81431624 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81431628 | 7C 08 03 A6 */	mtlr r0
/* 8143162C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81431630 | 4E 80 00 20 */	blr
.endfn open__Q49textinput8keyboard10signwindow12LayoutByNW4RFPQ39textinput8keyboard12KeyboardBaseb

# .text:0xC2C | 0x81431634 | size: 0xA4
# textinput::keyboard::signwindow::LayoutByNW4R::close()
.fn close__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431634 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81431638 | 7C 08 02 A6 */	mflr r0
/* 8143163C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81431644 | 7C 7F 1B 78 */	mr r31, r3
/* 81431648 | 80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 8143164C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431650 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81431654 | 7D 89 03 A6 */	mtctr r12
/* 81431658 | 4E 80 04 21 */	bctrl
/* 8143165C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81431660 | 40 82 00 2C */	bne .L_8143168C
/* 81431664 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 81431668 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8143166C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81431670 | 7D 89 03 A6 */	mtctr r12
/* 81431674 | 4E 80 04 21 */	bctrl
/* 81431678 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143167C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81431680 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81431684 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81431688 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_8143168C:
/* 8143168C | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 81431690 | 3C 80 81 66 */	lis r4, lbl_8165F238@ha
/* 81431694 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 81431698 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8143169C | 38 84 F2 38 */	addi r4, r4, lbl_8165F238@l
/* 814316A0 | 7D 89 03 A6 */	mtctr r12
/* 814316A4 | 4E 80 04 21 */	bctrl
/* 814316A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814316AC | 38 80 00 07 */	li r4, 0x7
/* 814316B0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814316B4 | 7D 89 03 A6 */	mtctr r12
/* 814316B8 | 4E 80 04 21 */	bctrl
/* 814316BC | 38 00 00 00 */	li r0, 0x0
/* 814316C0 | 98 1F 00 D1 */	stb r0, 0xd1(r31)
/* 814316C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814316C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814316CC | 7C 08 03 A6 */	mtlr r0
/* 814316D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814316D4 | 4E 80 00 20 */	blr
.endfn close__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0xCD0 | 0x814316D8 | size: 0x70
# textinput::keyboard::signwindow::LayoutByNW4R::endToClose()
.fn endToClose__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 814316D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814316DC | 7C 08 02 A6 */	mflr r0
/* 814316E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814316E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814316E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814316EC | 80 03 00 D8 */	lwz r0, 0xd8(r3)
/* 814316F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814316F4 | 41 82 00 18 */	beq .L_8143170C
/* 814316F8 | 7C 03 03 78 */	mr r3, r0
/* 814316FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431700 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81431704 | 7D 89 03 A6 */	mtctr r12
/* 81431708 | 4E 80 04 21 */	bctrl
.L_8143170C:
/* 8143170C | 38 00 00 00 */	li r0, 0x0
/* 81431710 | 3C 80 81 66 */	lis r4, lbl_8165F238@ha
/* 81431714 | 98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 81431718 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8143171C | 38 84 F2 38 */	addi r4, r4, lbl_8165F238@l
/* 81431720 | 38 A0 00 00 */	li r5, 0x0
/* 81431724 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 81431728 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143172C | 7D 89 03 A6 */	mtctr r12
/* 81431730 | 4E 80 04 21 */	bctrl
/* 81431734 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431738 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143173C | 7C 08 03 A6 */	mtlr r0
/* 81431740 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431744 | 4E 80 00 20 */	blr
.endfn endToClose__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0xD40 | 0x81431748 | size: 0x70
# textinput::keyboard::signwindow::LayoutByNW4R::startToInput()
.fn startToInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431748 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143174C | 7C 08 02 A6 */	mflr r0
/* 81431750 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431754 | 38 00 00 01 */	li r0, 0x1
/* 81431758 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143175C | 7C 7F 1B 78 */	mr r31, r3
/* 81431760 | 98 03 00 D1 */	stb r0, 0xd1(r3)
/* 81431764 | 80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 81431768 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143176C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81431770 | 7D 89 03 A6 */	mtctr r12
/* 81431774 | 4E 80 04 21 */	bctrl
/* 81431778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143177C | 40 82 00 28 */	bne .L_814317A4
/* 81431780 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 81431784 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 81431788 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143178C | 7D 89 03 A6 */	mtctr r12
/* 81431790 | 4E 80 04 21 */	bctrl
/* 81431794 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81431798 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143179C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814317A0 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814317A4:
/* 814317A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814317A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814317AC | 7C 08 03 A6 */	mtlr r0
/* 814317B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814317B4 | 4E 80 00 20 */	blr
.endfn startToInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0xDB0 | 0x814317B8 | size: 0x140
# textinput::keyboard::signwindow::LayoutByNW4R::onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim, global
/* 814317B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814317BC | 7C 08 02 A6 */	mflr r0
/* 814317C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814317C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814317C8 | 7C DF 33 78 */	mr r31, r6
/* 814317CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814317D0 | 7C BE 2B 78 */	mr r30, r5
/* 814317D4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814317D8 | 7C 9D 23 78 */	mr r29, r4
/* 814317DC | 3C 80 81 66 */	lis r4, lbl_8165F268@ha
/* 814317E0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814317E4 | 7C 7C 1B 78 */	mr r28, r3
/* 814317E8 | 38 64 F2 68 */	addi r3, r4, lbl_8165F268@l
/* 814317EC | 80 E5 00 04 */	lwz r7, 0x4(r5)
/* 814317F0 | 38 87 00 B4 */	addi r4, r7, 0xb4
/* 814317F4 | 48 00 8A 01 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814317F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814317FC | 41 82 00 3C */	beq .L_81431838
/* 81431800 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81431804 | 28 00 00 07 */	cmplwi r0, 0x7
/* 81431808 | 41 82 00 0C */	beq .L_81431814
/* 8143180C | 28 00 00 05 */	cmplwi r0, 0x5
/* 81431810 | 40 82 00 28 */	bne .L_81431838
.L_81431814:
/* 81431814 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81431818 | 40 82 00 20 */	bne .L_81431838
/* 8143181C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81431820 | 7F 83 E3 78 */	mr r3, r28
/* 81431824 | 88 9C 00 17 */	lbz r4, 0x17(r28)
/* 81431828 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143182C | 7C 85 23 78 */	mr r5, r4
/* 81431830 | 7D 89 03 A6 */	mtctr r12
/* 81431834 | 4E 80 04 21 */	bctrl
.L_81431838:
/* 81431838 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8143183C | 3C 60 81 66 */	lis r3, lbl_8165F238@ha
/* 81431840 | 38 63 F2 38 */	addi r3, r3, lbl_8165F238@l
/* 81431844 | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 81431848 | 48 00 89 AD */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8143184C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81431850 | 41 82 00 54 */	beq .L_814318A4
/* 81431854 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81431858 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8143185C | 40 82 00 20 */	bne .L_8143187C
/* 81431860 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81431864 | 40 82 00 18 */	bne .L_8143187C
/* 81431868 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8143186C | 7F 83 E3 78 */	mr r3, r28
/* 81431870 | 81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 81431874 | 7D 89 03 A6 */	mtctr r12
/* 81431878 | 4E 80 04 21 */	bctrl
.L_8143187C:
/* 8143187C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81431880 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81431884 | 40 82 00 20 */	bne .L_814318A4
/* 81431888 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8143188C | 40 82 00 18 */	bne .L_814318A4
/* 81431890 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81431894 | 7F 83 E3 78 */	mr r3, r28
/* 81431898 | 81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8143189C | 7D 89 03 A6 */	mtctr r12
/* 814318A0 | 4E 80 04 21 */	bctrl
.L_814318A4:
/* 814318A4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814318A8 | 28 00 00 07 */	cmplwi r0, 0x7
/* 814318AC | 41 82 00 0C */	beq .L_814318B8
/* 814318B0 | 28 00 00 05 */	cmplwi r0, 0x5
/* 814318B4 | 40 82 00 24 */	bne .L_814318D8
.L_814318B8:
/* 814318B8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814318BC | 40 82 00 0C */	bne .L_814318C8
/* 814318C0 | 38 00 00 01 */	li r0, 0x1
/* 814318C4 | 98 1C 00 15 */	stb r0, 0x15(r28)
.L_814318C8:
/* 814318C8 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814318CC | 40 82 00 0C */	bne .L_814318D8
/* 814318D0 | 38 00 00 00 */	li r0, 0x0
/* 814318D4 | 98 1C 00 15 */	stb r0, 0x15(r28)
.L_814318D8:
/* 814318D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814318DC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814318E0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814318E4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814318E8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814318EC | 7C 08 03 A6 */	mtlr r0
/* 814318F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814318F4 | 4E 80 00 20 */	blr
.endfn onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim

# .text:0xEF0 | 0x814318F8 | size: 0x90
# textinput::keyboard::signwindow::LayoutByNW4R::throwReleaseForAll()
.fn throwReleaseForAll__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 814318F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814318FC | 7C 08 02 A6 */	mflr r0
/* 81431900 | 38 80 00 00 */	li r4, 0x0
/* 81431904 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431908 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143190C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81431910 | 7C 7E 1B 78 */	mr r30, r3
/* 81431914 | 38 63 00 90 */	addi r3, r3, 0x90
/* 81431918 | 48 0E 09 C5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8143191C | 7C 7F 1B 78 */	mr r31, r3
/* 81431920 | 48 00 00 48 */	b .L_81431968
.L_81431924:
/* 81431924 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81431928 | 7F E3 FB 78 */	mr r3, r31
/* 8143192C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81431930 | 7D 89 03 A6 */	mtctr r12
/* 81431934 | 4E 80 04 21 */	bctrl
/* 81431938 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143193C | 40 82 00 1C */	bne .L_81431958
/* 81431940 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81431944 | 7F E3 FB 78 */	mr r3, r31
/* 81431948 | 38 80 00 02 */	li r4, 0x2
/* 8143194C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81431950 | 7D 89 03 A6 */	mtctr r12
/* 81431954 | 4E 80 04 21 */	bctrl
.L_81431958:
/* 81431958 | 7F E4 FB 78 */	mr r4, r31
/* 8143195C | 38 7E 00 90 */	addi r3, r30, 0x90
/* 81431960 | 48 0E 09 7D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81431964 | 7C 7F 1B 78 */	mr r31, r3
.L_81431968:
/* 81431968 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143196C | 40 82 FF B8 */	bne .L_81431924
/* 81431970 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431974 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81431978 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143197C | 7C 08 03 A6 */	mtlr r0
/* 81431980 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431984 | 4E 80 00 20 */	blr
.endfn throwReleaseForAll__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0xF80 | 0x81431988 | size: 0x8
# textinput::keyboard::signwindow::AnmPane::getKeyType() const
.fn getKeyType__Q49textinput8keyboard10signwindow7AnmPaneCFv, global
/* 81431988 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8143198C | 4E 80 00 20 */	blr
.endfn getKeyType__Q49textinput8keyboard10signwindow7AnmPaneCFv

# .text:0xF88 | 0x81431990 | size: 0x80
# textinput::keyboard::signwindow::LayoutByNW4R::resetAnmSignWindow()
.fn resetAnmSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431990 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81431994 | 7C 08 02 A6 */	mflr r0
/* 81431998 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143199C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814319A0 | 3F E0 81 66 */	lis r31, csPaneToAnimationInSign__Q39textinput8keyboard10signwindow@ha
/* 814319A4 | 3B FF EB F8 */	addi r31, r31, csPaneToAnimationInSign__Q39textinput8keyboard10signwindow@l
/* 814319A8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814319AC | 3B C0 00 00 */	li r30, 0x0
/* 814319B0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814319B4 | 7C 7D 1B 78 */	mr r29, r3
.L_814319B8:
/* 814319B8 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 814319BC | 57 C0 32 B2 */	clrlslwi r0, r30, 16, 6
/* 814319C0 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 814319C4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814319C8 | 7C 9F 02 14 */	add r4, r31, r0
/* 814319CC | 7D 89 03 A6 */	mtctr r12
/* 814319D0 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814319D4 | 4E 80 04 21 */	bctrl
/* 814319D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814319DC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814319E0 | 7D 89 03 A6 */	mtctr r12
/* 814319E4 | 4E 80 04 21 */	bctrl
/* 814319E8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814319EC | 28 1E 00 19 */	cmplwi r30, 0x19
/* 814319F0 | 41 80 FF C8 */	blt .L_814319B8
/* 814319F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814319F8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814319FC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81431A00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81431A04 | 7C 08 03 A6 */	mtlr r0
/* 81431A08 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81431A0C | 4E 80 00 20 */	blr
.endfn resetAnmSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x1008 | 0x81431A10 | size: 0xC
# textinput::keyboard::signwindow::AnmPane::init()
.fn init__Q49textinput8keyboard10signwindow7AnmPaneFv, global
/* 81431A10 | 38 00 00 00 */	li r0, 0x0
/* 81431A14 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81431A18 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard10signwindow7AnmPaneFv

# .text:0x1014 | 0x81431A1C | size: 0x1E8
# textinput::keyboard::signwindow::LayoutByNW4R::setSignKeyTop(unsigned short, unsigned short)
.fn setSignKeyTop__Q49textinput8keyboard10signwindow12LayoutByNW4RFUsUs, global
/* 81431A1C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81431A20 | 7C 08 02 A6 */	mflr r0
/* 81431A24 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81431A28 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81431A2C | 48 1C 7A 85 */	bl _savegpr_23
/* 81431A30 | 3F C0 81 66 */	lis r30, lbl_8165EAA8@ha
/* 81431A34 | 7C 79 1B 78 */	mr r25, r3
/* 81431A38 | 3B DE EA A8 */	addi r30, r30, lbl_8165EAA8@l
/* 81431A3C | 54 9D 0B FC */	clrlslwi r29, r4, 16, 1
/* 81431A40 | 54 BC 0B FC */	clrlslwi r28, r5, 16, 1
/* 81431A44 | 3B 40 00 00 */	li r26, 0x0
/* 81431A48 | 3B E0 00 54 */	li r31, 0x54
/* 81431A4C | 3B 00 00 00 */	li r24, 0x0
.L_81431A50:
/* 81431A50 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 81431A54 | 80 99 00 18 */	lwz r4, 0x18(r25)
/* 81431A58 | 1F 60 00 28 */	mulli r27, r0, 0x28
/* 81431A5C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81431A60 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81431A64 | 38 80 00 00 */	li r4, 0x0
/* 81431A68 | 38 A0 00 11 */	li r5, 0x11
/* 81431A6C | 7E E6 D8 2E */	lwzx r23, r6, r27
/* 81431A70 | 4B EF E8 C5 */	bl memset
/* 81431A74 | 7E E3 BB 78 */	mr r3, r23
/* 81431A78 | 48 1C 74 85 */	bl strlen
/* 81431A7C | 7C 65 1B 78 */	mr r5, r3
/* 81431A80 | 7E E4 BB 78 */	mr r4, r23
/* 81431A84 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81431A88 | 48 1D 09 3D */	bl strncpy
/* 81431A8C | 9B E1 00 10 */	stb r31, 0x10(r1)
/* 81431A90 | 7C 1B EA 14 */	add r0, r27, r29
/* 81431A94 | 38 79 00 24 */	addi r3, r25, 0x24
/* 81431A98 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81431A9C | 80 B9 00 18 */	lwz r5, 0x18(r25)
/* 81431AA0 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 81431AA4 | 7C A5 02 14 */	add r5, r5, r0
/* 81431AA8 | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 81431AAC | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81431AB0 | B3 01 00 0E */	sth r24, 0xe(r1)
/* 81431AB4 | 80 B9 00 18 */	lwz r5, 0x18(r25)
/* 81431AB8 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 81431ABC | 7C C5 DA 14 */	add r6, r5, r27
/* 81431AC0 | 7C 1C 2A 14 */	add r0, r28, r5
/* 81431AC4 | 7C BB 02 14 */	add r5, r27, r0
/* 81431AC8 | 82 E6 00 04 */	lwz r23, 0x4(r6)
/* 81431ACC | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 81431AD0 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81431AD4 | B3 01 00 0A */	sth r24, 0xa(r1)
/* 81431AD8 | 81 99 00 24 */	lwz r12, 0x24(r25)
/* 81431ADC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431AE0 | 7D 89 03 A6 */	mtctr r12
/* 81431AE4 | 4E 80 04 21 */	bctrl
/* 81431AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431AEC | 38 81 00 0C */	addi r4, r1, 0xc
/* 81431AF0 | 38 A0 00 00 */	li r5, 0x0
/* 81431AF4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81431AF8 | 7D 89 03 A6 */	mtctr r12
/* 81431AFC | 4E 80 04 21 */	bctrl
/* 81431B00 | 81 99 00 24 */	lwz r12, 0x24(r25)
/* 81431B04 | 38 79 00 24 */	addi r3, r25, 0x24
/* 81431B08 | 7E E4 BB 78 */	mr r4, r23
/* 81431B0C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431B10 | 7D 89 03 A6 */	mtctr r12
/* 81431B14 | 4E 80 04 21 */	bctrl
/* 81431B18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431B1C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81431B20 | 38 A0 00 00 */	li r5, 0x0
/* 81431B24 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81431B28 | 7D 89 03 A6 */	mtctr r12
/* 81431B2C | 4E 80 04 21 */	bctrl
/* 81431B30 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81431B34 | 28 1A 00 14 */	cmplwi r26, 0x14
/* 81431B38 | 41 80 FF 18 */	blt .L_81431A50
/* 81431B3C | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81431B40 | 7F 23 CB 78 */	mr r3, r25
/* 81431B44 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431B48 | 7D 89 03 A6 */	mtctr r12
/* 81431B4C | 4E 80 04 21 */	bctrl
/* 81431B50 | 81 99 00 24 */	lwz r12, 0x24(r25)
/* 81431B54 | 3F 40 81 66 */	lis r26, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 81431B58 | 54 60 10 3A */	slwi r0, r3, 2
/* 81431B5C | 38 79 00 24 */	addi r3, r25, 0x24
/* 81431B60 | 3B 5A 7C 88 */	addi r26, r26, cLanguageIndependentString__Q29textinput15langindependent@l
/* 81431B64 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81431B68 | 7C BA 02 14 */	add r5, r26, r0
/* 81431B6C | 38 9E 07 CC */	addi r4, r30, 0x7cc
/* 81431B70 | 80 A5 00 A0 */	lwz r5, 0xa0(r5)
/* 81431B74 | 7D 89 03 A6 */	mtctr r12
/* 81431B78 | 4E 80 04 21 */	bctrl
/* 81431B7C | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81431B80 | 7F 23 CB 78 */	mr r3, r25
/* 81431B84 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431B88 | 7D 89 03 A6 */	mtctr r12
/* 81431B8C | 4E 80 04 21 */	bctrl
/* 81431B90 | 81 99 00 24 */	lwz r12, 0x24(r25)
/* 81431B94 | 54 60 10 3A */	slwi r0, r3, 2
/* 81431B98 | 7C BA 02 14 */	add r5, r26, r0
/* 81431B9C | 38 79 00 24 */	addi r3, r25, 0x24
/* 81431BA0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81431BA4 | 38 9E 07 DC */	addi r4, r30, 0x7dc
/* 81431BA8 | 80 A5 00 78 */	lwz r5, 0x78(r5)
/* 81431BAC | 7D 89 03 A6 */	mtctr r12
/* 81431BB0 | 4E 80 04 21 */	bctrl
/* 81431BB4 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81431BB8 | 7F 23 CB 78 */	mr r3, r25
/* 81431BBC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431BC0 | 7D 89 03 A6 */	mtctr r12
/* 81431BC4 | 4E 80 04 21 */	bctrl
/* 81431BC8 | 81 99 00 24 */	lwz r12, 0x24(r25)
/* 81431BCC | 54 60 10 3A */	slwi r0, r3, 2
/* 81431BD0 | 7C BA 02 14 */	add r5, r26, r0
/* 81431BD4 | 38 79 00 24 */	addi r3, r25, 0x24
/* 81431BD8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81431BDC | 38 9E 07 EC */	addi r4, r30, 0x7ec
/* 81431BE0 | 80 A5 00 F0 */	lwz r5, 0xf0(r5)
/* 81431BE4 | 7D 89 03 A6 */	mtctr r12
/* 81431BE8 | 4E 80 04 21 */	bctrl
/* 81431BEC | 39 61 00 50 */	addi r11, r1, 0x50
/* 81431BF0 | 48 1C 79 0D */	bl _restgpr_23
/* 81431BF4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81431BF8 | 7C 08 03 A6 */	mtlr r0
/* 81431BFC | 38 21 00 50 */	addi r1, r1, 0x50
/* 81431C00 | 4E 80 00 20 */	blr
.endfn setSignKeyTop__Q49textinput8keyboard10signwindow12LayoutByNW4RFUsUs

# .text:0x11FC | 0x81431C04 | size: 0x80
# textinput::keyboard::signwindow::LayoutByNW4R::setPageNumber(unsigned short)
.fn setPageNumber__Q49textinput8keyboard10signwindow12LayoutByNW4RFUs, global
/* 81431C04 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81431C08 | 7C 08 02 A6 */	mflr r0
/* 81431C0C | 3C A0 81 66 */	lis r5, lbl_8165F2A4@ha
/* 81431C10 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81431C14 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81431C18 | 38 A5 F2 A4 */	addi r5, r5, lbl_8165F2A4@l
/* 81431C1C | 38 80 00 11 */	li r4, 0x11
/* 81431C20 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81431C24 | 7C 7F 1B 78 */	mr r31, r3
/* 81431C28 | 80 E3 00 18 */	lwz r7, 0x18(r3)
/* 81431C2C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81431C30 | 88 E7 00 00 */	lbz r7, 0x0(r7)
/* 81431C34 | 4C C6 31 82 */	crclr cr1eq
/* 81431C38 | 48 1D 69 99 */	bl swprintf
/* 81431C3C | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 81431C40 | 3C 80 81 66 */	lis r4, lbl_8165F2B0@ha
/* 81431C44 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 81431C48 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81431C4C | 38 84 F2 B0 */	addi r4, r4, lbl_8165F2B0@l
/* 81431C50 | 7D 89 03 A6 */	mtctr r12
/* 81431C54 | 4E 80 04 21 */	bctrl
/* 81431C58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431C5C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81431C60 | 38 A0 00 00 */	li r5, 0x0
/* 81431C64 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81431C68 | 7D 89 03 A6 */	mtctr r12
/* 81431C6C | 4E 80 04 21 */	bctrl
/* 81431C70 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81431C74 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81431C78 | 7C 08 03 A6 */	mtlr r0
/* 81431C7C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81431C80 | 4E 80 00 20 */	blr
.endfn setPageNumber__Q49textinput8keyboard10signwindow12LayoutByNW4RFUs

# .text:0x127C | 0x81431C84 | size: 0xB8
# textinput::keyboard::signwindow::LayoutByNW4R::movePrevSignPage()
.fn movePrevSignPage__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431C84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81431C88 | 7C 08 02 A6 */	mflr r0
/* 81431C8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431C90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81431C94 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81431C98 | 7C 7E 1B 78 */	mr r30, r3
/* 81431C9C | 88 83 00 17 */	lbz r4, 0x17(r3)
/* 81431CA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81431CA4 | 40 82 00 18 */	bne .L_81431CBC
/* 81431CA8 | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81431CAC | 88 A5 00 00 */	lbz r5, 0x0(r5)
/* 81431CB0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 81431CB4 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81431CB8 | 48 00 00 0C */	b .L_81431CC4
.L_81431CBC:
/* 81431CBC | 38 04 FF FF */	subi r0, r4, 0x1
/* 81431CC0 | 98 03 00 17 */	stb r0, 0x17(r3)
.L_81431CC4:
/* 81431CC4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431CC8 | 8B E3 00 17 */	lbz r31, 0x17(r3)
/* 81431CCC | 7F C3 F3 78 */	mr r3, r30
/* 81431CD0 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 81431CD4 | 7F E5 FB 78 */	mr r5, r31
/* 81431CD8 | 7D 89 03 A6 */	mtctr r12
/* 81431CDC | 4E 80 04 21 */	bctrl
/* 81431CE0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431CE4 | 7F C3 F3 78 */	mr r3, r30
/* 81431CE8 | 7F E4 FB 78 */	mr r4, r31
/* 81431CEC | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 81431CF0 | 7D 89 03 A6 */	mtctr r12
/* 81431CF4 | 4E 80 04 21 */	bctrl
/* 81431CF8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431CFC | 7F C3 F3 78 */	mr r3, r30
/* 81431D00 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81431D04 | 7D 89 03 A6 */	mtctr r12
/* 81431D08 | 4E 80 04 21 */	bctrl
/* 81431D0C | 80 7E 00 38 */	lwz r3, 0x38(r30)
/* 81431D10 | 38 80 00 0F */	li r4, 0xf
/* 81431D14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431D18 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431D1C | 7D 89 03 A6 */	mtctr r12
/* 81431D20 | 4E 80 04 21 */	bctrl
/* 81431D24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431D28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81431D2C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81431D30 | 7C 08 03 A6 */	mtlr r0
/* 81431D34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431D38 | 4E 80 00 20 */	blr
.endfn movePrevSignPage__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x1334 | 0x81431D3C | size: 0xB8
# textinput::keyboard::signwindow::LayoutByNW4R::moveNextSignPage()
.fn moveNextSignPage__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431D3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81431D40 | 7C 08 02 A6 */	mflr r0
/* 81431D44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431D48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81431D4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81431D50 | 7C 7E 1B 78 */	mr r30, r3
/* 81431D54 | 88 83 00 17 */	lbz r4, 0x17(r3)
/* 81431D58 | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81431D5C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81431D60 | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81431D64 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 81431D68 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 81431D6C | 7C 06 00 40 */	cmplw r6, r0
/* 81431D70 | 41 80 00 0C */	blt .L_81431D7C
/* 81431D74 | 38 00 00 00 */	li r0, 0x0
/* 81431D78 | 98 03 00 17 */	stb r0, 0x17(r3)
.L_81431D7C:
/* 81431D7C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431D80 | 8B E3 00 17 */	lbz r31, 0x17(r3)
/* 81431D84 | 7F C3 F3 78 */	mr r3, r30
/* 81431D88 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 81431D8C | 7F E5 FB 78 */	mr r5, r31
/* 81431D90 | 7D 89 03 A6 */	mtctr r12
/* 81431D94 | 4E 80 04 21 */	bctrl
/* 81431D98 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431D9C | 7F C3 F3 78 */	mr r3, r30
/* 81431DA0 | 7F E4 FB 78 */	mr r4, r31
/* 81431DA4 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 81431DA8 | 7D 89 03 A6 */	mtctr r12
/* 81431DAC | 4E 80 04 21 */	bctrl
/* 81431DB0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431DB4 | 7F C3 F3 78 */	mr r3, r30
/* 81431DB8 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 81431DBC | 7D 89 03 A6 */	mtctr r12
/* 81431DC0 | 4E 80 04 21 */	bctrl
/* 81431DC4 | 80 7E 00 38 */	lwz r3, 0x38(r30)
/* 81431DC8 | 38 80 00 0F */	li r4, 0xf
/* 81431DCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431DD0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431DD4 | 7D 89 03 A6 */	mtctr r12
/* 81431DD8 | 4E 80 04 21 */	bctrl
/* 81431DDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431DE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81431DE4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81431DE8 | 7C 08 03 A6 */	mtlr r0
/* 81431DEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431DF0 | 4E 80 00 20 */	blr
.endfn moveNextSignPage__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x13EC | 0x81431DF4 | size: 0x48
# textinput::keyboard::signwindow::LayoutByNW4R::movePrevSignWindow()
.fn movePrevSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431DF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81431DF8 | 7C 08 02 A6 */	mflr r0
/* 81431DFC | 3C 80 81 66 */	lis r4, lbl_8165F268@ha
/* 81431E00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431E04 | 38 84 F2 68 */	addi r4, r4, lbl_8165F268@l
/* 81431E08 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 81431E0C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81431E10 | 7D 89 03 A6 */	mtctr r12
/* 81431E14 | 4E 80 04 21 */	bctrl
/* 81431E18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431E1C | 38 80 00 08 */	li r4, 0x8
/* 81431E20 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81431E24 | 7D 89 03 A6 */	mtctr r12
/* 81431E28 | 4E 80 04 21 */	bctrl
/* 81431E2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431E30 | 7C 08 03 A6 */	mtlr r0
/* 81431E34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431E38 | 4E 80 00 20 */	blr
.endfn movePrevSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x1434 | 0x81431E3C | size: 0x48
# textinput::keyboard::signwindow::LayoutByNW4R::moveNextSignWindow()
.fn moveNextSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81431E3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81431E40 | 7C 08 02 A6 */	mflr r0
/* 81431E44 | 3C 80 81 66 */	lis r4, lbl_8165F268@ha
/* 81431E48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81431E4C | 38 84 F2 68 */	addi r4, r4, lbl_8165F268@l
/* 81431E50 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 81431E54 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81431E58 | 7D 89 03 A6 */	mtctr r12
/* 81431E5C | 4E 80 04 21 */	bctrl
/* 81431E60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431E64 | 38 80 00 09 */	li r4, 0x9
/* 81431E68 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81431E6C | 7D 89 03 A6 */	mtctr r12
/* 81431E70 | 4E 80 04 21 */	bctrl
/* 81431E74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81431E78 | 7C 08 03 A6 */	mtlr r0
/* 81431E7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81431E80 | 4E 80 00 20 */	blr
.endfn moveNextSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x147C | 0x81431E84 | size: 0x1C
# textinput::keyboard::signwindow::LayoutByNW4R::updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv, global
/* 81431E84 | 88 03 00 D1 */	lbz r0, 0xd1(r3)
/* 81431E88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81431E8C | 41 82 00 0C */	beq .L_81431E98
/* 81431E90 | 38 63 00 24 */	addi r3, r3, 0x24
/* 81431E94 | 48 00 49 6C */	b updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
.L_81431E98:
/* 81431E98 | 38 60 00 00 */	li r3, 0x0
/* 81431E9C | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv

# .text:0x1498 | 0x81431EA0 | size: 0xB4
# textinput::keyboard::signwindow::LayoutByNW4R::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager, global
/* 81431EA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81431EA4 | 7C 08 02 A6 */	mflr r0
/* 81431EA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81431EAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81431EB0 | 7C 9F 23 78 */	mr r31, r4
/* 81431EB4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81431EB8 | 7C 7E 1B 78 */	mr r30, r3
/* 81431EBC | 88 03 00 D1 */	lbz r0, 0xd1(r3)
/* 81431EC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81431EC4 | 40 82 00 0C */	bne .L_81431ED0
/* 81431EC8 | 38 60 00 00 */	li r3, 0x0
/* 81431ECC | 48 00 00 70 */	b .L_81431F3C
.L_81431ED0:
/* 81431ED0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81431ED4 | 48 01 5C 81 */	bl GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv
/* 81431ED8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81431EDC | 48 01 69 11 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81431EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81431EE4 | 41 82 00 4C */	beq .L_81431F30
/* 81431EE8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431EEC | 7F C3 F3 78 */	mr r3, r30
/* 81431EF0 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81431EF4 | 7D 89 03 A6 */	mtctr r12
/* 81431EF8 | 4E 80 04 21 */	bctrl
/* 81431EFC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81431F00 | 7F C3 F3 78 */	mr r3, r30
/* 81431F04 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81431F08 | 7D 89 03 A6 */	mtctr r12
/* 81431F0C | 4E 80 04 21 */	bctrl
/* 81431F10 | 80 7E 00 38 */	lwz r3, 0x38(r30)
/* 81431F14 | 38 80 00 09 */	li r4, 0x9
/* 81431F18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431F1C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81431F20 | 7D 89 03 A6 */	mtctr r12
/* 81431F24 | 4E 80 04 21 */	bctrl
/* 81431F28 | 38 60 00 00 */	li r3, 0x0
/* 81431F2C | 48 00 00 10 */	b .L_81431F3C
.L_81431F30:
/* 81431F30 | 7F E4 FB 78 */	mr r4, r31
/* 81431F34 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 81431F38 | 48 00 48 DD */	bl updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
.L_81431F3C:
/* 81431F3C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81431F40 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81431F44 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81431F48 | 7C 08 03 A6 */	mtlr r0
/* 81431F4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81431F50 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager

# .text:0x154C | 0x81431F54 | size: 0x1AC
# textinput::keyboard::signwindow::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q49textinput8keyboard10signwindow12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81431F54 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81431F58 | 7C 08 02 A6 */	mflr r0
/* 81431F5C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81431F60 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81431F64 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81431F68 | 7C DE 33 78 */	mr r30, r6
/* 81431F6C | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81431F70 | 7C BD 2B 78 */	mr r29, r5
/* 81431F74 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 81431F78 | 7C 7C 1B 78 */	mr r28, r3
/* 81431F7C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81431F80 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 81431F84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431F88 | 3B E4 00 B4 */	addi r31, r4, 0xb4
/* 81431F8C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81431F90 | 7D 89 03 A6 */	mtctr r12
/* 81431F94 | 4E 80 04 21 */	bctrl
/* 81431F98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81431F9C | 41 82 00 0C */	beq .L_81431FA8
/* 81431FA0 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 81431FA4 | 41 82 01 3C */	beq .L_814320E0
.L_81431FA8:
/* 81431FA8 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 81431FAC | 40 82 00 2C */	bne .L_81431FD8
/* 81431FB0 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81431FB4 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81431FB8 | 41 82 00 20 */	beq .L_81431FD8
/* 81431FBC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 81431FC0 | 7F E5 FB 78 */	mr r5, r31
/* 81431FC4 | 38 80 00 04 */	li r4, 0x4
/* 81431FC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81431FCC | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81431FD0 | 7D 89 03 A6 */	mtctr r12
/* 81431FD4 | 4E 80 04 21 */	bctrl
.L_81431FD8:
/* 81431FD8 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81431FDC | 2C 00 00 42 */	cmpwi r0, 0x42
/* 81431FE0 | 40 82 01 00 */	bne .L_814320E0
/* 81431FE4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81431FE8 | 38 80 00 00 */	li r4, 0x0
/* 81431FEC | 38 A0 00 11 */	li r5, 0x11
/* 81431FF0 | 4B EF E3 45 */	bl memset
/* 81431FF4 | 7F E3 FB 78 */	mr r3, r31
/* 81431FF8 | 48 1C 6F 05 */	bl strlen
/* 81431FFC | 7C 65 1B 78 */	mr r5, r3
/* 81432000 | 7F E4 FB 78 */	mr r4, r31
/* 81432004 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81432008 | 48 1D 03 BD */	bl strncpy
/* 8143200C | 38 00 00 50 */	li r0, 0x50
/* 81432010 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81432014 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81432018 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8143201C | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 81432020 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81432024 | 7D 89 03 A6 */	mtctr r12
/* 81432028 | 4E 80 04 21 */	bctrl
/* 8143202C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81432030 | 7C 7F 1B 78 */	mr r31, r3
/* 81432034 | 41 82 00 AC */	beq .L_814320E0
/* 81432038 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8143203C | 41 82 00 44 */	beq .L_81432080
/* 81432040 | 40 80 00 10 */	bge .L_81432050
/* 81432044 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81432048 | 40 80 00 50 */	bge .L_81432098
/* 8143204C | 48 00 00 94 */	b .L_814320E0
.L_81432050:
/* 81432050 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81432054 | 41 82 00 08 */	beq .L_8143205C
/* 81432058 | 48 00 00 88 */	b .L_814320E0
.L_8143205C:
/* 8143205C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81432060 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81432064 | 41 82 00 7C */	beq .L_814320E0
/* 81432068 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143206C | 38 80 00 00 */	li r4, 0x0
/* 81432070 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81432074 | 7D 89 03 A6 */	mtctr r12
/* 81432078 | 4E 80 04 21 */	bctrl
/* 8143207C | 48 00 00 64 */	b .L_814320E0
.L_81432080:
/* 81432080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432084 | 38 80 00 02 */	li r4, 0x2
/* 81432088 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143208C | 7D 89 03 A6 */	mtctr r12
/* 81432090 | 4E 80 04 21 */	bctrl
/* 81432094 | 48 00 00 4C */	b .L_814320E0
.L_81432098:
/* 81432098 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 8143209C | 38 80 00 04 */	li r4, 0x4
/* 814320A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814320A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814320A8 | 7D 89 03 A6 */	mtctr r12
/* 814320AC | 4E 80 04 21 */	bctrl
/* 814320B0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814320B4 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 814320B8 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814320BC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814320C0 | 7D 89 03 A6 */	mtctr r12
/* 814320C4 | 4E 80 04 21 */	bctrl
/* 814320C8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814320CC | 7F E3 FB 78 */	mr r3, r31
/* 814320D0 | 38 80 00 01 */	li r4, 0x1
/* 814320D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814320D8 | 7D 89 03 A6 */	mtctr r12
/* 814320DC | 4E 80 04 21 */	bctrl
.L_814320E0:
/* 814320E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814320E4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814320E8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814320EC | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814320F0 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814320F4 | 7C 08 03 A6 */	mtlr r0
/* 814320F8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814320FC | 4E 80 00 20 */	blr
.endfn onTiEvent__Q49textinput8keyboard10signwindow12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x16F8 | 0x81432100 | size: 0x8
# textinput::keyboard::signwindow::Base::isLocked()
.fn isLocked__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81432100 | 88 63 00 15 */	lbz r3, 0x15(r3)
/* 81432104 | 4E 80 00 20 */	blr
.endfn isLocked__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x1700 | 0x81432108 | size: 0x9C
# textinput::keyboard::signwindow::CellPhoneSignAllAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81432108 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 8143210C | 40 82 00 2C */	bne .L_81432138
/* 81432110 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81432114 | 38 80 00 01 */	li r4, 0x1
/* 81432118 | 88 05 00 CF */	lbz r0, 0xcf(r5)
/* 8143211C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81432120 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81432124 | 98 05 00 CF */	stb r0, 0xcf(r5)
/* 81432128 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143212C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432130 | 7D 89 03 A6 */	mtctr r12
/* 81432134 | 4E 80 04 20 */	bctr
.L_81432138:
/* 81432138 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 8143213C | 40 82 00 18 */	bne .L_81432154
/* 81432140 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432144 | 38 80 00 08 */	li r4, 0x8
/* 81432148 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143214C | 7D 89 03 A6 */	mtctr r12
/* 81432150 | 4E 80 04 20 */	bctr
.L_81432154:
/* 81432154 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81432158 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8143215C | 41 82 00 2C */	beq .L_81432188
/* 81432160 | 4C 80 00 20 */	bgelr
/* 81432164 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81432168 | 4C 82 00 20 */	bnelr
/* 8143216C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81432170 | 4C 82 00 20 */	bnelr
/* 81432174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432178 | 38 80 00 00 */	li r4, 0x0
/* 8143217C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432180 | 7D 89 03 A6 */	mtctr r12
/* 81432184 | 4E 80 04 20 */	bctr
.L_81432188:
/* 81432188 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8143218C | 4C 82 00 20 */	bnelr
/* 81432190 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81432194 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81432198 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8143219C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 814321A0 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x179C | 0x814321A4 | size: 0x8
# textinput::keyboard::signwindow::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q49textinput8keyboard10signwindow7AnmPaneFUl, global
/* 814321A4 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 814321A8 | 48 00 4F 18 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q49textinput8keyboard10signwindow7AnmPaneFUl

# .text:0x17A4 | 0x814321AC | size: 0xBC
# textinput::keyboard::signwindow::CellPhoneSignScrollAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 814321AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814321B0 | 7C 08 02 A6 */	mflr r0
/* 814321B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814321B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814321BC | 7C 9F 23 78 */	mr r31, r4
/* 814321C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814321C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814321C8 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814321CC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814321D0 | 41 82 00 60 */	beq .L_81432230
/* 814321D4 | 40 80 00 10 */	bge .L_814321E4
/* 814321D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814321DC | 41 82 00 14 */	beq .L_814321F0
/* 814321E0 | 48 00 00 70 */	b .L_81432250
.L_814321E4:
/* 814321E4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814321E8 | 41 82 00 48 */	beq .L_81432230
/* 814321EC | 48 00 00 64 */	b .L_81432250
.L_814321F0:
/* 814321F0 | 2C 04 00 09 */	cmpwi r4, 0x9
/* 814321F4 | 40 82 00 18 */	bne .L_8143220C
/* 814321F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814321FC | 38 80 00 05 */	li r4, 0x5
/* 81432200 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432204 | 7D 89 03 A6 */	mtctr r12
/* 81432208 | 4E 80 04 21 */	bctrl
.L_8143220C:
/* 8143220C | 2C 1F 00 08 */	cmpwi r31, 0x8
/* 81432210 | 40 82 00 40 */	bne .L_81432250
/* 81432214 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81432218 | 7F C3 F3 78 */	mr r3, r30
/* 8143221C | 38 80 00 07 */	li r4, 0x7
/* 81432220 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432224 | 7D 89 03 A6 */	mtctr r12
/* 81432228 | 4E 80 04 21 */	bctrl
/* 8143222C | 48 00 00 24 */	b .L_81432250
.L_81432230:
/* 81432230 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81432234 | 40 82 00 1C */	bne .L_81432250
/* 81432238 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143223C | 7F C3 F3 78 */	mr r3, r30
/* 81432240 | 38 80 00 00 */	li r4, 0x0
/* 81432244 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432248 | 7D 89 03 A6 */	mtctr r12
/* 8143224C | 4E 80 04 21 */	bctrl
.L_81432250:
/* 81432250 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432254 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432258 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143225C | 7C 08 03 A6 */	mtlr r0
/* 81432260 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432264 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x1860 | 0x81432268 | size: 0x184
# textinput::keyboard::signwindow::CellPhoneSignButtonPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81432268 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143226C | 7C 08 02 A6 */	mflr r0
/* 81432270 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81432274 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432278 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143227C | 7C 9F 23 78 */	mr r31, r4
/* 81432280 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81432284 | 7C 7E 1B 78 */	mr r30, r3
/* 81432288 | 40 82 00 18 */	bne .L_814322A0
/* 8143228C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432290 | 38 80 00 04 */	li r4, 0x4
/* 81432294 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432298 | 7D 89 03 A6 */	mtctr r12
/* 8143229C | 4E 80 04 21 */	bctrl
.L_814322A0:
/* 814322A0 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 814322A4 | 28 00 00 06 */	cmplwi r0, 0x6
/* 814322A8 | 41 81 01 2C */	bgt .L_814323D4
/* 814322AC | 3C 60 81 66 */	lis r3, jumptable_8165F2C4@ha
/* 814322B0 | 54 00 10 3A */	slwi r0, r0, 2
/* 814322B4 | 38 63 F2 C4 */	addi r3, r3, jumptable_8165F2C4@l
/* 814322B8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814322BC | 7C 69 03 A6 */	mtctr r3
/* 814322C0 | 4E 80 04 20 */	bctr
.L_814322C4:
/* 814322C4 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814322C8 | 40 82 01 0C */	bne .L_814323D4
/* 814322CC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814322D0 | 7F C3 F3 78 */	mr r3, r30
/* 814322D4 | 38 80 00 02 */	li r4, 0x2
/* 814322D8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814322DC | 7D 89 03 A6 */	mtctr r12
/* 814322E0 | 4E 80 04 21 */	bctrl
/* 814322E4 | 48 00 00 F0 */	b .L_814323D4
.L_814322E8:
/* 814322E8 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 814322EC | 40 82 00 1C */	bne .L_81432308
/* 814322F0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814322F4 | 7F C3 F3 78 */	mr r3, r30
/* 814322F8 | 38 80 00 03 */	li r4, 0x3
/* 814322FC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432300 | 7D 89 03 A6 */	mtctr r12
/* 81432304 | 4E 80 04 21 */	bctrl
.L_81432308:
/* 81432308 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8143230C | 40 82 00 C8 */	bne .L_814323D4
/* 81432310 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81432314 | 7F C3 F3 78 */	mr r3, r30
/* 81432318 | 38 80 00 06 */	li r4, 0x6
/* 8143231C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432320 | 7D 89 03 A6 */	mtctr r12
/* 81432324 | 4E 80 04 21 */	bctrl
/* 81432328 | 48 00 00 AC */	b .L_814323D4
.L_8143232C:
/* 8143232C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81432330 | 40 82 00 A4 */	bne .L_814323D4
/* 81432334 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81432338 | 7F C3 F3 78 */	mr r3, r30
/* 8143233C | 38 80 00 06 */	li r4, 0x6
/* 81432340 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432344 | 7D 89 03 A6 */	mtctr r12
/* 81432348 | 4E 80 04 21 */	bctrl
/* 8143234C | 48 00 00 88 */	b .L_814323D4
.L_81432350:
/* 81432350 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81432354 | 40 82 00 1C */	bne .L_81432370
/* 81432358 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143235C | 7F C3 F3 78 */	mr r3, r30
/* 81432360 | 38 80 00 00 */	li r4, 0x0
/* 81432364 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432368 | 7D 89 03 A6 */	mtctr r12
/* 8143236C | 4E 80 04 21 */	bctrl
.L_81432370:
/* 81432370 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81432374 | 40 82 00 60 */	bne .L_814323D4
/* 81432378 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143237C | 7F C3 F3 78 */	mr r3, r30
/* 81432380 | 38 80 00 02 */	li r4, 0x2
/* 81432384 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81432388 | 7D 89 03 A6 */	mtctr r12
/* 8143238C | 4E 80 04 21 */	bctrl
/* 81432390 | 48 00 00 44 */	b .L_814323D4
.L_81432394:
/* 81432394 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81432398 | 40 82 00 1C */	bne .L_814323B4
/* 8143239C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814323A0 | 7F C3 F3 78 */	mr r3, r30
/* 814323A4 | 38 80 00 03 */	li r4, 0x3
/* 814323A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814323AC | 7D 89 03 A6 */	mtctr r12
/* 814323B0 | 4E 80 04 21 */	bctrl
.L_814323B4:
/* 814323B4 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 814323B8 | 40 82 00 1C */	bne .L_814323D4
/* 814323BC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814323C0 | 7F C3 F3 78 */	mr r3, r30
/* 814323C4 | 38 80 00 06 */	li r4, 0x6
/* 814323C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814323CC | 7D 89 03 A6 */	mtctr r12
/* 814323D0 | 4E 80 04 21 */	bctrl
.L_814323D4:
/* 814323D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814323D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814323DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814323E0 | 7C 08 03 A6 */	mtlr r0
/* 814323E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814323E8 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x19E4 | 0x814323EC | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::draw()
.fn draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 814323EC | 38 63 00 24 */	addi r3, r3, 0x24
/* 814323F0 | 48 00 40 E0 */	b draw__Q39textinput11nw4rmanager6LayoutFv
.endfn draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x19EC | 0x814323F4 | size: 0x4
# textinput::keyboard::KeyboardBase::onActive()
.fn onActive__Q39textinput8keyboard12KeyboardBaseFv, global
/* 814323F4 | 4E 80 00 20 */	blr
.endfn onActive__Q39textinput8keyboard12KeyboardBaseFv

# .text:0x19F0 | 0x814323F8 | size: 0x8
# textinput::keyboard::signwindow::Base::getPage()
.fn getPage__Q49textinput8keyboard10signwindow4BaseFv, global
/* 814323F8 | 88 63 00 17 */	lbz r3, 0x17(r3)
/* 814323FC | 4E 80 00 20 */	blr
.endfn getPage__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x19F8 | 0x81432400 | size: 0x24
# textinput::keyboard::signwindow::Base::setPage(unsigned char)
.fn setPage__Q49textinput8keyboard10signwindow4BaseFUc, global
/* 81432400 | 98 83 00 17 */	stb r4, 0x17(r3)
/* 81432404 | 54 85 06 3E */	clrlwi r5, r4, 24
/* 81432408 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 8143240C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81432410 | 7C 05 00 40 */	cmplw r5, r0
/* 81432414 | 4D 80 00 20 */	bltlr
/* 81432418 | 38 00 00 00 */	li r0, 0x0
/* 8143241C | 98 03 00 17 */	stb r0, 0x17(r3)
/* 81432420 | 4E 80 00 20 */	blr
.endfn setPage__Q49textinput8keyboard10signwindow4BaseFUc

# .text:0x1A1C | 0x81432424 | size: 0x14
# textinput::keyboard::signwindow::Base::setLanguage(textinput::Language)
.fn setLanguage__Q49textinput8keyboard10signwindow4BaseFQ29textinput8Language, global
/* 81432424 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 81432428 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143242C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81432430 | 7D 89 03 A6 */	mtctr r12
/* 81432434 | 4E 80 04 20 */	bctr
.endfn setLanguage__Q49textinput8keyboard10signwindow4BaseFQ29textinput8Language

# .text:0x1A30 | 0x81432438 | size: 0x8
# textinput::keyboard::signwindow::Base::getType()
.fn getType__Q49textinput8keyboard10signwindow4BaseFv, global
/* 81432438 | 38 60 00 02 */	li r3, 0x2
/* 8143243C | 4E 80 00 20 */	blr
.endfn getType__Q49textinput8keyboard10signwindow4BaseFv

# .text:0x1A38 | 0x81432440 | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::isActive()
.fn isActive__Q49textinput8keyboard10signwindow12LayoutByNW4RFv, global
/* 81432440 | 88 63 00 D0 */	lbz r3, 0xd0(r3)
/* 81432444 | 4E 80 00 20 */	blr
.endfn isActive__Q49textinput8keyboard10signwindow12LayoutByNW4RFv

# .text:0x1A40 | 0x81432448 | size: 0x5C
# textinput::keyboard::signwindow::CellPhoneSignButtonPane::~CellPhoneSignButtonPane()
.fn __dt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFv, global
/* 81432448 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143244C | 7C 08 02 A6 */	mflr r0
/* 81432450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81432454 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432458 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143245C | 7C 9F 23 78 */	mr r31, r4
/* 81432460 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81432464 | 7C 7E 1B 78 */	mr r30, r3
/* 81432468 | 41 82 00 20 */	beq .L_81432488
/* 8143246C | 41 82 00 0C */	beq .L_81432478
/* 81432470 | 38 80 00 00 */	li r4, 0x0
/* 81432474 | 48 00 4A AD */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81432478:
/* 81432478 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143247C | 40 81 00 0C */	ble .L_81432488
/* 81432480 | 7F C3 F3 78 */	mr r3, r30
/* 81432484 | 48 1C 5C 61 */	bl __dl__FPv
.L_81432488:
/* 81432488 | 7F C3 F3 78 */	mr r3, r30
/* 8143248C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432490 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81432494 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432498 | 7C 08 03 A6 */	mtlr r0
/* 8143249C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814324A0 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFv

# .text:0x1A9C | 0x814324A4 | size: 0xC
# textinput::keyboard::signwindow::CellPhoneSignButtonPane::init()
.fn init__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFv, global
/* 814324A4 | 38 00 00 00 */	li r0, 0x0
/* 814324A8 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 814324AC | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFv

# .text:0x1AA8 | 0x814324B0 | size: 0xC
# textinput::keyboard::signwindow::CellPhoneSignScrollAnmPane::init()
.fn init__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFv, global
/* 814324B0 | 38 00 00 00 */	li r0, 0x0
/* 814324B4 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 814324B8 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFv

# .text:0x1AB4 | 0x814324BC | size: 0x5C
# textinput::keyboard::signwindow::CellPhoneSignAllAnmPane::~CellPhoneSignAllAnmPane()
.fn __dt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFv, global
/* 814324BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814324C0 | 7C 08 02 A6 */	mflr r0
/* 814324C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814324C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814324CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814324D0 | 7C 9F 23 78 */	mr r31, r4
/* 814324D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814324D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814324DC | 41 82 00 20 */	beq .L_814324FC
/* 814324E0 | 41 82 00 0C */	beq .L_814324EC
/* 814324E4 | 38 80 00 00 */	li r4, 0x0
/* 814324E8 | 48 00 4A 39 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_814324EC:
/* 814324EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814324F0 | 40 81 00 0C */	ble .L_814324FC
/* 814324F4 | 7F C3 F3 78 */	mr r3, r30
/* 814324F8 | 48 1C 5B ED */	bl __dl__FPv
.L_814324FC:
/* 814324FC | 7F C3 F3 78 */	mr r3, r30
/* 81432500 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432504 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81432508 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143250C | 7C 08 03 A6 */	mtlr r0
/* 81432510 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432514 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFv

# .text:0x1B10 | 0x81432518 | size: 0xC
# textinput::keyboard::signwindow::CellPhoneSignAllAnmPane::init()
.fn init__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFv, global
/* 81432518 | 38 00 00 00 */	li r0, 0x0
/* 8143251C | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81432520 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFv

# .text:0x1B1C | 0x81432524 | size: 0x5C
# textinput::keyboard::signwindow::CellPhoneSignScrollAnmPane::~CellPhoneSignScrollAnmPane()
.fn __dt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFv, global
/* 81432524 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81432528 | 7C 08 02 A6 */	mflr r0
/* 8143252C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81432530 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432534 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81432538 | 7C 9F 23 78 */	mr r31, r4
/* 8143253C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81432540 | 7C 7E 1B 78 */	mr r30, r3
/* 81432544 | 41 82 00 20 */	beq .L_81432564
/* 81432548 | 41 82 00 0C */	beq .L_81432554
/* 8143254C | 38 80 00 00 */	li r4, 0x0
/* 81432550 | 48 00 49 D1 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81432554:
/* 81432554 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81432558 | 40 81 00 0C */	ble .L_81432564
/* 8143255C | 7F C3 F3 78 */	mr r3, r30
/* 81432560 | 48 1C 5B 85 */	bl __dl__FPv
.L_81432564:
/* 81432564 | 7F C3 F3 78 */	mr r3, r30
/* 81432568 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143256C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81432570 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432574 | 7C 08 03 A6 */	mtlr r0
/* 81432578 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143257C | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFv

# .text:0x1B78 | 0x81432580 | size: 0x68
.fn "__sinit_\\signwindow_cpp", global
/* 81432580 | 3C 60 81 66 */	lis r3, csPaneToAnimationInSign__Q39textinput8keyboard10signwindow@ha
/* 81432584 | 80 0D 93 C0 */	lwz r0, lbl_81697400@sda21(r0)
/* 81432588 | 38 63 EB F8 */	addi r3, r3, csPaneToAnimationInSign__Q39textinput8keyboard10signwindow@l
/* 8143258C | 80 8D 93 C4 */	lwz r4, lbl_81697404@sda21(r0)
/* 81432590 | 90 03 00 DC */	stw r0, 0xdc(r3)
/* 81432594 | 90 03 01 1C */	stw r0, 0x11c(r3)
/* 81432598 | 90 03 01 5C */	stw r0, 0x15c(r3)
/* 8143259C | 90 03 01 9C */	stw r0, 0x19c(r3)
/* 814325A0 | 90 03 01 DC */	stw r0, 0x1dc(r3)
/* 814325A4 | 90 03 02 1C */	stw r0, 0x21c(r3)
/* 814325A8 | 90 03 02 5C */	stw r0, 0x25c(r3)
/* 814325AC | 90 03 02 9C */	stw r0, 0x29c(r3)
/* 814325B0 | 90 03 02 DC */	stw r0, 0x2dc(r3)
/* 814325B4 | 90 03 03 1C */	stw r0, 0x31c(r3)
/* 814325B8 | 90 03 03 5C */	stw r0, 0x35c(r3)
/* 814325BC | 90 03 03 9C */	stw r0, 0x39c(r3)
/* 814325C0 | 90 03 03 DC */	stw r0, 0x3dc(r3)
/* 814325C4 | 90 03 04 1C */	stw r0, 0x41c(r3)
/* 814325C8 | 90 03 04 5C */	stw r0, 0x45c(r3)
/* 814325CC | 90 03 04 9C */	stw r0, 0x49c(r3)
/* 814325D0 | 90 03 04 DC */	stw r0, 0x4dc(r3)
/* 814325D4 | 90 03 05 1C */	stw r0, 0x51c(r3)
/* 814325D8 | 90 03 05 5C */	stw r0, 0x55c(r3)
/* 814325DC | 90 83 05 9C */	stw r4, 0x59c(r3)
/* 814325E0 | 90 83 05 DC */	stw r4, 0x5dc(r3)
/* 814325E4 | 4E 80 00 20 */	blr
.endfn "__sinit_\\signwindow_cpp"

# .text:0x1BE0 | 0x814325E8 | size: 0x8
.fn "@36@__dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv", global
/* 814325E8 | 38 63 FF DC */	subi r3, r3, 0x24
/* 814325EC | 4B FF E6 FC */	b __dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
.endfn "@36@__dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv"

# .text:0x1BE8 | 0x814325F0 | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::@36@updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn "@36@updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv", global
/* 814325F0 | 38 63 FF DC */	subi r3, r3, 0x24
/* 814325F4 | 4B FF F8 90 */	b updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv
.endfn "@36@updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv"

# .text:0x1BF0 | 0x814325F8 | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::@36@updateInput(textinput::input::HKBManager&)
.fn "@36@updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager", global
/* 814325F8 | 38 63 FF DC */	subi r3, r3, 0x24
/* 814325FC | 4B FF F8 A4 */	b updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager
.endfn "@36@updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager"

# .text:0x1BF8 | 0x81432600 | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::@36@draw()
.fn "@36@draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv", global
/* 81432600 | 38 63 FF DC */	subi r3, r3, 0x24
/* 81432604 | 4B FF FD E8 */	b draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
.endfn "@36@draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv"

# .text:0x1C00 | 0x81432608 | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::@36@init()
.fn "@36@init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv", global
/* 81432608 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8143260C | 4B FF EC 10 */	b init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
.endfn "@36@init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv"

# .text:0x1C08 | 0x81432610 | size: 0x8
# textinput::keyboard::signwindow::LayoutByNW4R::@204@onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn "@204@onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim", global
/* 81432610 | 38 63 FF 34 */	subi r3, r3, 0xcc
/* 81432614 | 4B FF F1 A4 */	b onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
.endfn "@204@onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"

# 0x8160D204..0x8160D208 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\signwindow_cpp"

# 0x81615B40..0x81615E50 | size: 0x310
.rodata
.balign 8

# .rodata:0x0 | 0x81615B40 | size: 0x268
# textinput::keyboard::signwindow::csAninationFileForSign
.obj csAninationFileForSign__Q39textinput8keyboard10signwindow, local
	.4byte 0x00000000
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x6E6F726D
	.4byte 0x616C2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615B84:
	.4byte 0x00000001
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x46414445
	.4byte 0x2D494E2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615BC8:
	.4byte 0x00000008
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x5363726F
	.4byte 0x6C6C5F46
	.4byte 0x4144452D
	.4byte 0x4F55542E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615C0C:
	.4byte 0x00000002
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x466F6375
	.4byte 0x732D494E
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615C50:
	.4byte 0x00000006
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x466F6375
	.4byte 0x732D4F55
	.4byte 0x542E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615C94:
	.4byte 0x00000003
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x526F6C6C
	.4byte 0x5F6F7665
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615CD8:
	.4byte 0x00000004
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x50757368
	.4byte 0x65642E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615D1C:
	.4byte 0x00000007
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x7363726F
	.4byte 0x6C6C5F6E
	.4byte 0x6578742E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615D60:
	.4byte 0x00000005
	.4byte 0x66735F73
	.4byte 0x69676E57
	.4byte 0x696E646F
	.4byte 0x775F615F
	.4byte 0x53474E5F
	.4byte 0x7363726F
	.4byte 0x6C6C5F70
	.4byte 0x7265762E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAninationFileForSign__Q39textinput8keyboard10signwindow

# .rodata:0x268 | 0x81615DA8 | size: 0x48
# textinput::keyboard::signwindow::csPaneNameToControlKey
.obj csPaneNameToControlKey__Q39textinput8keyboard10signwindow, local
	.4byte 0x425F5347
	.4byte 0x4E6B6579
	.4byte 0x5F636C6F
	.4byte 0x73650000
	.4byte 0x00000000
	.4byte 0x00000018
	.4byte 0x425F5347
	.4byte 0x4E6B6579
	.4byte 0x5F707265
	.4byte 0x76000000
	.4byte 0x00000000
	.4byte 0x0000001A
	.4byte 0x425F5347
	.4byte 0x4E6B6579
	.4byte 0x5F6E6578
	.4byte 0x74000000
	.4byte 0x00000000
	.4byte 0x00000019
.endobj csPaneNameToControlKey__Q39textinput8keyboard10signwindow

# .rodata:0x2B0 | 0x81615DF0 | size: 0x50
# textinput::keyboard::signwindow::csLanguageDependencyData
.obj csLanguageDependencyData__Q39textinput8keyboard10signwindow, local
	.4byte 0x04000000
	.4byte csSignKeyJP__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeyUS__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeyUK__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeyFR__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeyDE__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeyIT__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeySP__Q39textinput8keyboard10signwindow
	.4byte 0x0A000000
	.4byte csSignKeyNL__Q39textinput8keyboard10signwindow
	.4byte 0x04000000
	.4byte csSignKeyCN__Q39textinput8keyboard10signwindow
	.4byte 0x04000000
	.4byte csSignKeyKR__Q39textinput8keyboard10signwindow
.endobj csLanguageDependencyData__Q39textinput8keyboard10signwindow

# .rodata:0x300 | 0x81615E40 | size: 0x10
.obj lbl_81615E40, local
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81615E40

# 0x8165EAA8..0x8165F518 | size: 0xA70
.data
.balign 8

# .data:0x0 | 0x8165EAA8 | size: 0xC
.obj lbl_8165EAA8, global
	.string "P_SGNkey_00"
.endobj lbl_8165EAA8

# .data:0xC | 0x8165EAB4 | size: 0xC
.obj lbl_8165EAB4, global
	.string "P_SGNkey_01"
.endobj lbl_8165EAB4

# .data:0x18 | 0x8165EAC0 | size: 0xC
.obj lbl_8165EAC0, global
	.string "P_SGNkey_02"
.endobj lbl_8165EAC0

# .data:0x24 | 0x8165EACC | size: 0xC
.obj lbl_8165EACC, global
	.string "P_SGNkey_03"
.endobj lbl_8165EACC

# .data:0x30 | 0x8165EAD8 | size: 0xC
.obj lbl_8165EAD8, global
	.string "P_SGNkey_04"
.endobj lbl_8165EAD8

# .data:0x3C | 0x8165EAE4 | size: 0xC
.obj lbl_8165EAE4, global
	.string "P_SGNkey_05"
.endobj lbl_8165EAE4

# .data:0x48 | 0x8165EAF0 | size: 0xC
.obj lbl_8165EAF0, global
	.string "P_SGNkey_06"
.endobj lbl_8165EAF0

# .data:0x54 | 0x8165EAFC | size: 0xC
.obj lbl_8165EAFC, global
	.string "P_SGNkey_07"
.endobj lbl_8165EAFC

# .data:0x60 | 0x8165EB08 | size: 0xC
.obj lbl_8165EB08, global
	.string "P_SGNkey_08"
.endobj lbl_8165EB08

# .data:0x6C | 0x8165EB14 | size: 0xC
.obj lbl_8165EB14, global
	.string "P_SGNkey_09"
.endobj lbl_8165EB14

# .data:0x78 | 0x8165EB20 | size: 0xC
.obj lbl_8165EB20, global
	.string "P_SGNkey_10"
.endobj lbl_8165EB20

# .data:0x84 | 0x8165EB2C | size: 0xC
.obj lbl_8165EB2C, global
	.string "P_SGNkey_11"
.endobj lbl_8165EB2C

# .data:0x90 | 0x8165EB38 | size: 0xC
.obj lbl_8165EB38, global
	.string "P_SGNkey_12"
.endobj lbl_8165EB38

# .data:0x9C | 0x8165EB44 | size: 0xC
.obj lbl_8165EB44, global
	.string "P_SGNkey_13"
.endobj lbl_8165EB44

# .data:0xA8 | 0x8165EB50 | size: 0xC
.obj lbl_8165EB50, global
	.string "P_SGNkey_14"
.endobj lbl_8165EB50

# .data:0xB4 | 0x8165EB5C | size: 0xC
.obj lbl_8165EB5C, global
	.string "P_SGNkey_15"
.endobj lbl_8165EB5C

# .data:0xC0 | 0x8165EB68 | size: 0xC
.obj lbl_8165EB68, global
	.string "P_SGNkey_16"
.endobj lbl_8165EB68

# .data:0xCC | 0x8165EB74 | size: 0xC
.obj lbl_8165EB74, global
	.string "P_SGNkey_17"
.endobj lbl_8165EB74

# .data:0xD8 | 0x8165EB80 | size: 0xC
.obj lbl_8165EB80, global
	.string "P_SGNkey_18"
.endobj lbl_8165EB80

# .data:0xE4 | 0x8165EB8C | size: 0xC
.obj lbl_8165EB8C, global
	.string "P_SGNkey_19"
.endobj lbl_8165EB8C

# .data:0xF0 | 0x8165EB98 | size: 0x50
# textinput::keyboard::signwindow::csSgnKeys
.obj csSgnKeys__Q39textinput8keyboard10signwindow, local
	.4byte lbl_8165EAA8
	.4byte lbl_8165EAB4
	.4byte lbl_8165EAC0
	.4byte lbl_8165EACC
	.4byte lbl_8165EAD8
	.4byte lbl_8165EAE4
	.4byte lbl_8165EAF0
	.4byte lbl_8165EAFC
	.4byte lbl_8165EB08
	.4byte lbl_8165EB14
	.4byte lbl_8165EB20
	.4byte lbl_8165EB2C
	.4byte lbl_8165EB38
	.4byte lbl_8165EB44
	.4byte lbl_8165EB50
	.4byte lbl_8165EB5C
	.4byte lbl_8165EB68
	.4byte lbl_8165EB74
	.4byte lbl_8165EB80
	.4byte lbl_8165EB8C
.endobj csSgnKeys__Q39textinput8keyboard10signwindow

# .data:0x140 | 0x8165EBE8 | size: 0x10
.obj lbl_8165EBE8, global
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F636C6F
	.4byte 0x73650000
.endobj lbl_8165EBE8

# .data:0x150 | 0x8165EBF8 | size: 0x640
# textinput::keyboard::signwindow::csPaneToAnimationInSign
.obj csPaneToAnimationInSign__Q39textinput8keyboard10signwindow, local
	.4byte 0x00000000
	.4byte 0x4E5F5347
	.4byte 0x4E6B6579
	.4byte 0x746F705F
	.4byte 0x616C6C00
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x4E5F5347
	.4byte 0x4E6B6579
	.4byte 0x616C6C00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615D1C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615D60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303400
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303800
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F303900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313400
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313800
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F313900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F707265
	.4byte 0x76000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F6E6578
	.4byte 0x74000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F636C6F
	.4byte 0x73650000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFileForSign__Q39textinput8keyboard10signwindow
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615B84
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615BC8
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C0C
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C50
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615C94
	.rel csAninationFileForSign__Q39textinput8keyboard10signwindow, .L_81615CD8
	.4byte 0x00000000
.endobj csPaneToAnimationInSign__Q39textinput8keyboard10signwindow

# .data:0x790 | 0x8165F238 | size: 0x30
.obj lbl_8165F238, global
	.4byte 0x4E5F5347
	.4byte 0x4E6B6579
	.4byte 0x746F705F
	.4byte 0x616C6C00
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F707265
	.4byte 0x76000000
	.4byte 0x505F5347
	.4byte 0x4E6B6579
	.4byte 0x5F6E6578
	.4byte 0x74000000
.endobj lbl_8165F238

# .data:0x7C0 | 0x8165F268 | size: 0x3C
.obj lbl_8165F268, global
	.4byte 0x4E5F5347
	.4byte 0x4E6B6579
	.4byte 0x616C6C00
	.4byte 0x545F5347
	.4byte 0x4E6B6579
	.4byte 0x5F707265
	.4byte 0x76000000
	.4byte 0x545F5347
	.4byte 0x4E6B6579
	.4byte 0x5F6E6578
	.4byte 0x74000000
	.4byte 0x545F5347
	.4byte 0x4E6B6579
	.4byte 0x5F636C6F
	.4byte 0x73650000
.endobj lbl_8165F268

# .data:0x7FC | 0x8165F2A4 | size: 0xC
.obj lbl_8165F2A4, global
	.string16 "%d/%d"
.endobj lbl_8165F2A4

# .data:0x808 | 0x8165F2B0 | size: 0x14
.obj lbl_8165F2B0, global
	.4byte 0x545F5347
	.4byte 0x4E5F7061
	.4byte 0x67654E75
	.4byte 0x6D626572
	.4byte 0x00000000
.endobj lbl_8165F2B0

# .data:0x81C | 0x8165F2C4 | size: 0x1C
.obj jumptable_8165F2C4, local
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814322C4
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814323D4
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814322E8
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8143232C
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81432394
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_814323D4
	.rel onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81432350
.endobj jumptable_8165F2C4

# .data:0x838 | 0x8165F2E0 | size: 0x28
# textinput::keyboard::signwindow::CellPhoneSignButtonPane::__vtable
.obj __vt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard10signwindow7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPaneFv
	.4byte getKeyType__Q49textinput8keyboard10signwindow7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard10signwindow23CellPhoneSignButtonPane

# .data:0x860 | 0x8165F308 | size: 0x28
# textinput::keyboard::signwindow::CellPhoneSignScrollAnmPane::__vtable
.obj __vt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard10signwindow7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPaneFv
	.4byte getKeyType__Q49textinput8keyboard10signwindow7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard10signwindow26CellPhoneSignScrollAnmPane

# .data:0x888 | 0x8165F330 | size: 0x28
# textinput::keyboard::signwindow::CellPhoneSignAllAnmPane::__vtable
.obj __vt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard10signwindow7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPaneFv
	.4byte getKeyType__Q49textinput8keyboard10signwindow7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard10signwindow23CellPhoneSignAllAnmPane

# .data:0x8B0 | 0x8165F358 | size: 0x28
# textinput::keyboard::signwindow::AnmPane::__vtable
.obj __vt__Q49textinput8keyboard10signwindow7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput8keyboard10signwindow7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput8keyboard10signwindow7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput8keyboard10signwindow7AnmPaneFv
	.4byte getKeyType__Q49textinput8keyboard10signwindow7AnmPaneCFv
.endobj __vt__Q49textinput8keyboard10signwindow7AnmPane

# .data:0x8D8 | 0x8165F380 | size: 0x20
# textinput::keyboard::signwindow::EventHandler::__vtable
.obj __vt__Q49textinput8keyboard10signwindow12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard10signwindow12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q49textinput8keyboard10signwindow12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q49textinput8keyboard10signwindow12EventHandler

# .data:0x8F8 | 0x8165F3A0 | size: 0x110
# textinput::keyboard::signwindow::LayoutByNW4R::__vtable
.obj __vt__Q49textinput8keyboard10signwindow12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte create__Q49textinput8keyboard10signwindow12LayoutByNW4RFP12MEMAllocator
	.4byte init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q29textinput13CommandSenderFUlPv
	.4byte onKey__Q49textinput8keyboard10signwindow12LayoutByNW4RFUlPv
	.4byte getType__Q49textinput8keyboard10signwindow4BaseFv
	.4byte setLanguage__Q49textinput8keyboard10signwindow4BaseFQ29textinput8Language
	.4byte getLanguage__Q39textinput8keyboard12KeyboardBaseCFv
	.4byte update__Q39textinput8keyboard12KeyboardBaseFv
	.4byte onActive__Q39textinput8keyboard12KeyboardBaseFv
	.4byte isLocked__Q49textinput8keyboard10signwindow4BaseFv
	.4byte setPage__Q49textinput8keyboard10signwindow4BaseFUc
	.4byte getPage__Q49textinput8keyboard10signwindow4BaseFv
	.4byte movePrevSignPage__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte moveNextSignPage__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte close__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@36@__dt__Q49textinput8keyboard10signwindow12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@36@init__Q49textinput8keyboard10signwindow12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@36@draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv"
	.4byte calc__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@36@updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv"
	.4byte "@36@updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager"
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@204@onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"
	.4byte draw__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte open__Q49textinput8keyboard10signwindow12LayoutByNW4RFPQ39textinput8keyboard12KeyboardBaseb
	.4byte isActive__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte onChangeAnmState__Q49textinput8keyboard10signwindow12LayoutByNW4RFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
	.4byte updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFiffUlUlUlPv
	.4byte updateInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFRQ39textinput5input10HKBManager
	.4byte throwReleaseForAll__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte resetAnmSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte setSignKeyTop__Q49textinput8keyboard10signwindow12LayoutByNW4RFUsUs
	.4byte setPageNumber__Q49textinput8keyboard10signwindow12LayoutByNW4RFUs
	.4byte endToClose__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte startToInput__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte movePrevSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte moveNextSignWindow__Q49textinput8keyboard10signwindow12LayoutByNW4RFv
	.4byte 0x00000000
.endobj __vt__Q49textinput8keyboard10signwindow12LayoutByNW4R

# .data:0xA08 | 0x8165F4B0 | size: 0x68
# textinput::keyboard::signwindow::Base::__vtable
.obj __vt__Q49textinput8keyboard10signwindow4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard10signwindow4BaseFv
	.4byte create__Q49textinput8keyboard10signwindow4BaseFP12MEMAllocator
	.4byte init__Q49textinput8keyboard10signwindow4BaseFv
	.4byte setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q29textinput13CommandSenderFUlPv
	.4byte onKey__Q49textinput8keyboard10signwindow4BaseFUlPv
	.4byte getType__Q49textinput8keyboard10signwindow4BaseFv
	.4byte setLanguage__Q49textinput8keyboard10signwindow4BaseFQ29textinput8Language
	.4byte getLanguage__Q39textinput8keyboard12KeyboardBaseCFv
	.4byte update__Q39textinput8keyboard12KeyboardBaseFv
	.4byte onActive__Q39textinput8keyboard12KeyboardBaseFv
	.4byte isLocked__Q49textinput8keyboard10signwindow4BaseFv
	.4byte setPage__Q49textinput8keyboard10signwindow4BaseFUc
	.4byte getPage__Q49textinput8keyboard10signwindow4BaseFv
	.4byte movePrevSignPage__Q49textinput8keyboard10signwindow4BaseFv
	.4byte moveNextSignPage__Q49textinput8keyboard10signwindow4BaseFv
	.4byte close__Q49textinput8keyboard10signwindow4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q49textinput8keyboard10signwindow4Base

# 0x81697400..0x81697408 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697400 | size: 0x4
.obj lbl_81697400, global
	.4byte lbl_8165EAA8
.endobj lbl_81697400

# .sdata:0x4 | 0x81697404 | size: 0x4
.obj lbl_81697404, global
	.4byte lbl_8165EBE8
.endobj lbl_81697404
