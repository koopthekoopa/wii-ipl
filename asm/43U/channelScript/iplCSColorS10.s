.include "macros.inc"
.file "iplCSColorS10.cpp"

# 0x8145DC4C..0x8145E218 | size: 0x5CC
.text
.balign 4

# .text:0x0 | 0x8145DC4C | size: 0xF0
# ipl::cs::color_s10::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145DC4C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DC50 | 7C 08 02 A6 */	mflr r0
/* 8145DC54 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DC58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DC5C | 48 19 B8 65 */	bl _savegpr_27
/* 8145DC60 | 7C A4 2B 78 */	mr r4, r5
/* 8145DC64 | 7C 7B 1B 78 */	mr r27, r3
/* 8145DC68 | 3B A0 00 00 */	li r29, 0x0
/* 8145DC6C | 38 A0 00 08 */	li r5, 0x8
/* 8145DC70 | 4B FE CF E5 */	bl CHANSVmNewObjData
/* 8145DC74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DC78 | 7C 7C 1B 78 */	mr r28, r3
/* 8145DC7C | 41 82 00 A4 */	beq .L_8145DD20
/* 8145DC80 | 7F 63 DB 78 */	mr r3, r27
/* 8145DC84 | 38 80 00 00 */	li r4, 0x0
/* 8145DC88 | 4B FE EA 39 */	bl CHANSVmGetArgInteger
/* 8145DC8C | 7C 7D 1B 78 */	mr r29, r3
/* 8145DC90 | 7F 63 DB 78 */	mr r3, r27
/* 8145DC94 | 38 80 00 01 */	li r4, 0x1
/* 8145DC98 | 4B FE EA 29 */	bl CHANSVmGetArgInteger
/* 8145DC9C | 7C 7E 1B 78 */	mr r30, r3
/* 8145DCA0 | 7F 63 DB 78 */	mr r3, r27
/* 8145DCA4 | 38 80 00 02 */	li r4, 0x2
/* 8145DCA8 | 4B FE EA 19 */	bl CHANSVmGetArgInteger
/* 8145DCAC | 7C 7F 1B 78 */	mr r31, r3
/* 8145DCB0 | 7F 63 DB 78 */	mr r3, r27
/* 8145DCB4 | 38 80 00 03 */	li r4, 0x3
/* 8145DCB8 | 4B FE EA 09 */	bl CHANSVmGetArgInteger
/* 8145DCBC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145DCC0 | 41 82 00 0C */	beq .L_8145DCCC
/* 8145DCC4 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8145DCC8 | 48 00 00 08 */	b .L_8145DCD0
.L_8145DCCC:
/* 8145DCCC | 38 00 00 00 */	li r0, 0x0
.L_8145DCD0:
/* 8145DCD0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145DCD4 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8145DCD8 | 41 82 00 0C */	beq .L_8145DCE4
/* 8145DCDC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8145DCE0 | 48 00 00 08 */	b .L_8145DCE8
.L_8145DCE4:
/* 8145DCE4 | 38 00 00 00 */	li r0, 0x0
.L_8145DCE8:
/* 8145DCE8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145DCEC | B0 1C 00 02 */	sth r0, 0x2(r28)
/* 8145DCF0 | 41 82 00 0C */	beq .L_8145DCFC
/* 8145DCF4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145DCF8 | 48 00 00 08 */	b .L_8145DD00
.L_8145DCFC:
/* 8145DCFC | 38 00 00 00 */	li r0, 0x0
.L_8145DD00:
/* 8145DD00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DD04 | B0 1C 00 04 */	sth r0, 0x4(r28)
/* 8145DD08 | 41 82 00 0C */	beq .L_8145DD14
/* 8145DD0C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145DD10 | 48 00 00 08 */	b .L_8145DD18
.L_8145DD14:
/* 8145DD14 | 38 00 00 00 */	li r0, 0x0
.L_8145DD18:
/* 8145DD18 | B0 1C 00 06 */	sth r0, 0x6(r28)
/* 8145DD1C | 3B A0 00 01 */	li r29, 0x1
.L_8145DD20:
/* 8145DD20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DD24 | 7F A3 EB 78 */	mr r3, r29
/* 8145DD28 | 48 19 B7 E5 */	bl _restgpr_27
/* 8145DD2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DD30 | 7C 08 03 A6 */	mtlr r0
/* 8145DD34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DD38 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xF0 | 0x8145DD3C | size: 0x94
# ipl::cs::color_s10::_ctor(CHANSVm*, CHANSVmObjHdr*, _GXColorS10)
.fn _ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdr11_GXColorS10, global
/* 8145DD3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DD40 | 7C 08 02 A6 */	mflr r0
/* 8145DD44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DD48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DD4C | 48 19 B7 79 */	bl _savegpr_28
/* 8145DD50 | 7C BE 2B 78 */	mr r30, r5
/* 8145DD54 | 7C 7C 1B 78 */	mr r28, r3
/* 8145DD58 | 7C 9D 23 78 */	mr r29, r4
/* 8145DD5C | 3B E0 00 00 */	li r31, 0x0
/* 8145DD60 | 38 A0 00 08 */	li r5, 0x8
/* 8145DD64 | 4B FE CE F1 */	bl CHANSVmNewObjData
/* 8145DD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DD6C | 41 82 00 48 */	beq .L_8145DDB4
/* 8145DD70 | A8 DE 00 00 */	lha r6, 0x0(r30)
/* 8145DD74 | 3C 80 81 67 */	lis r4, lbl_8166A948@ha
/* 8145DD78 | A8 BE 00 02 */	lha r5, 0x2(r30)
/* 8145DD7C | 38 00 00 08 */	li r0, 0x8
/* 8145DD80 | B0 C3 00 00 */	sth r6, 0x0(r3)
/* 8145DD84 | 38 84 A9 48 */	addi r4, r4, lbl_8166A948@l
/* 8145DD88 | A8 DE 00 04 */	lha r6, 0x4(r30)
/* 8145DD8C | B0 A3 00 02 */	sth r5, 0x2(r3)
/* 8145DD90 | A8 BE 00 06 */	lha r5, 0x6(r30)
/* 8145DD94 | B0 C3 00 04 */	sth r6, 0x4(r3)
/* 8145DD98 | B0 A3 00 06 */	sth r5, 0x6(r3)
/* 8145DD9C | 7F 83 E3 78 */	mr r3, r28
/* 8145DDA0 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8145DDA4 | 4B FE E9 D1 */	bl CHANSVmFindNativeClass
/* 8145DDA8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145DDAC | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8145DDB0 | 7F E0 19 10 */	subfe r31, r0, r3
.L_8145DDB4:
/* 8145DDB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DDB8 | 7F E3 FB 78 */	mr r3, r31
/* 8145DDBC | 48 19 B7 55 */	bl _restgpr_28
/* 8145DDC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DDC4 | 7C 08 03 A6 */	mtlr r0
/* 8145DDC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DDCC | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdr11_GXColorS10

# .text:0x184 | 0x8145DDD0 | size: 0x78
# ipl::cs::color_s10::init(CHANSVm*)
.fn init__Q33ipl2cs9color_s10FP7CHANSVm, global
/* 8145DDD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145DDD4 | 7C 08 02 A6 */	mflr r0
/* 8145DDD8 | 3C 80 81 67 */	lis r4, lbl_8166A948@ha
/* 8145DDDC | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145DDE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145DDE4 | 38 84 A9 48 */	addi r4, r4, lbl_8166A948@l
/* 8145DDE8 | 38 A5 DC 4C */	addi r5, r5, ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145DDEC | 38 C0 00 00 */	li r6, 0x0
/* 8145DDF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145DDF4 | 3B E0 00 00 */	li r31, 0x0
/* 8145DDF8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145DDFC | 7C 7E 1B 78 */	mr r30, r3
/* 8145DE00 | 4B FE EA D5 */	bl CHANSVmAddNativeClass
/* 8145DE04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DE08 | 7C 64 1B 78 */	mr r4, r3
/* 8145DE0C | 41 82 00 20 */	beq .L_8145DE2C
/* 8145DE10 | 3C A0 81 61 */	lis r5, lbl_816177B0@ha
/* 8145DE14 | 7F C3 F3 78 */	mr r3, r30
/* 8145DE18 | 38 C0 00 04 */	li r6, 0x4
/* 8145DE1C | 38 A5 77 B0 */	addi r5, r5, lbl_816177B0@l
/* 8145DE20 | 4B FE EE 39 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145DE24 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145DE28 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145DE2C:
/* 8145DE2C | 7F E3 FB 78 */	mr r3, r31
/* 8145DE30 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145DE34 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145DE38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145DE3C | 7C 08 03 A6 */	mtlr r0
/* 8145DE40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145DE44 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs9color_s10FP7CHANSVm

# .text:0x1FC | 0x8145DE48 | size: 0x7C
# int ipl::cs::color_s10::get<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<0>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DE48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DE4C | 7C 08 02 A6 */	mflr r0
/* 8145DE50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DE54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DE58 | 48 19 B6 6D */	bl _savegpr_28
/* 8145DE5C | 7C 9D 23 78 */	mr r29, r4
/* 8145DE60 | 7C 7C 1B 78 */	mr r28, r3
/* 8145DE64 | 7C BE 2B 78 */	mr r30, r5
/* 8145DE68 | 3B E0 00 00 */	li r31, 0x0
/* 8145DE6C | 7F A3 EB 78 */	mr r3, r29
/* 8145DE70 | 4B FF E6 B9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DE74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DE78 | 41 82 00 30 */	beq .L_8145DEA8
/* 8145DE7C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DE80 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145DE84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DE88 | 41 82 00 20 */	beq .L_8145DEA8
/* 8145DE8C | A8 C3 00 00 */	lha r6, 0x0(r3)
/* 8145DE90 | 7F 83 E3 78 */	mr r3, r28
/* 8145DE94 | 7F C4 F3 78 */	mr r4, r30
/* 8145DE98 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145DE9C | 4B FE DA FD */	bl CHANSVmSetInteger
/* 8145DEA0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145DEA4 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145DEA8:
/* 8145DEA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DEAC | 7F E3 FB 78 */	mr r3, r31
/* 8145DEB0 | 48 19 B6 61 */	bl _restgpr_28
/* 8145DEB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DEB8 | 7C 08 03 A6 */	mtlr r0
/* 8145DEBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DEC0 | 4E 80 00 20 */	blr
.endfn "get<0>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x278 | 0x8145DEC4 | size: 0x78
# int ipl::cs::color_s10::set<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<0>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DEC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DEC8 | 7C 08 02 A6 */	mflr r0
/* 8145DECC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DED0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DED4 | 48 19 B5 F5 */	bl _savegpr_29
/* 8145DED8 | 7C 9D 23 78 */	mr r29, r4
/* 8145DEDC | 3B C0 00 00 */	li r30, 0x0
/* 8145DEE0 | 38 80 00 00 */	li r4, 0x0
/* 8145DEE4 | 4B FE E7 DD */	bl CHANSVmGetArgInteger
/* 8145DEE8 | 7C 7F 1B 78 */	mr r31, r3
/* 8145DEEC | 7F A3 EB 78 */	mr r3, r29
/* 8145DEF0 | 4B FF E6 39 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DEF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DEF8 | 41 82 00 28 */	beq .L_8145DF20
/* 8145DEFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145DF00 | 41 82 00 20 */	beq .L_8145DF20
/* 8145DF04 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DF08 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145DF0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DF10 | 41 82 00 10 */	beq .L_8145DF20
/* 8145DF14 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145DF18 | 3B C0 00 01 */	li r30, 0x1
/* 8145DF1C | B0 03 00 00 */	sth r0, 0x0(r3)
.L_8145DF20:
/* 8145DF20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DF24 | 7F C3 F3 78 */	mr r3, r30
/* 8145DF28 | 48 19 B5 ED */	bl _restgpr_29
/* 8145DF2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DF30 | 7C 08 03 A6 */	mtlr r0
/* 8145DF34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DF38 | 4E 80 00 20 */	blr
.endfn "set<0>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x2F0 | 0x8145DF3C | size: 0x7C
# int ipl::cs::color_s10::get<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<1>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DF3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DF40 | 7C 08 02 A6 */	mflr r0
/* 8145DF44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DF48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DF4C | 48 19 B5 79 */	bl _savegpr_28
/* 8145DF50 | 7C 9D 23 78 */	mr r29, r4
/* 8145DF54 | 7C 7C 1B 78 */	mr r28, r3
/* 8145DF58 | 7C BE 2B 78 */	mr r30, r5
/* 8145DF5C | 3B E0 00 00 */	li r31, 0x0
/* 8145DF60 | 7F A3 EB 78 */	mr r3, r29
/* 8145DF64 | 4B FF E5 C5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DF68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DF6C | 41 82 00 30 */	beq .L_8145DF9C
/* 8145DF70 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DF74 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145DF78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DF7C | 41 82 00 20 */	beq .L_8145DF9C
/* 8145DF80 | A8 C3 00 02 */	lha r6, 0x2(r3)
/* 8145DF84 | 7F 83 E3 78 */	mr r3, r28
/* 8145DF88 | 7F C4 F3 78 */	mr r4, r30
/* 8145DF8C | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145DF90 | 4B FE DA 09 */	bl CHANSVmSetInteger
/* 8145DF94 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145DF98 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145DF9C:
/* 8145DF9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DFA0 | 7F E3 FB 78 */	mr r3, r31
/* 8145DFA4 | 48 19 B5 6D */	bl _restgpr_28
/* 8145DFA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145DFAC | 7C 08 03 A6 */	mtlr r0
/* 8145DFB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145DFB4 | 4E 80 00 20 */	blr
.endfn "get<1>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x36C | 0x8145DFB8 | size: 0x78
# int ipl::cs::color_s10::set<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<1>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145DFB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145DFBC | 7C 08 02 A6 */	mflr r0
/* 8145DFC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145DFC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145DFC8 | 48 19 B5 01 */	bl _savegpr_29
/* 8145DFCC | 7C 9D 23 78 */	mr r29, r4
/* 8145DFD0 | 3B C0 00 00 */	li r30, 0x0
/* 8145DFD4 | 38 80 00 00 */	li r4, 0x0
/* 8145DFD8 | 4B FE E6 E9 */	bl CHANSVmGetArgInteger
/* 8145DFDC | 7C 7F 1B 78 */	mr r31, r3
/* 8145DFE0 | 7F A3 EB 78 */	mr r3, r29
/* 8145DFE4 | 4B FF E5 45 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145DFE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145DFEC | 41 82 00 28 */	beq .L_8145E014
/* 8145DFF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145DFF4 | 41 82 00 20 */	beq .L_8145E014
/* 8145DFF8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145DFFC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E004 | 41 82 00 10 */	beq .L_8145E014
/* 8145E008 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145E00C | 3B C0 00 01 */	li r30, 0x1
/* 8145E010 | B0 03 00 02 */	sth r0, 0x2(r3)
.L_8145E014:
/* 8145E014 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E018 | 7F C3 F3 78 */	mr r3, r30
/* 8145E01C | 48 19 B4 F9 */	bl _restgpr_29
/* 8145E020 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E024 | 7C 08 03 A6 */	mtlr r0
/* 8145E028 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E02C | 4E 80 00 20 */	blr
.endfn "set<1>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x3E4 | 0x8145E030 | size: 0x7C
# int ipl::cs::color_s10::get<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<2>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E030 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E034 | 7C 08 02 A6 */	mflr r0
/* 8145E038 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E03C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E040 | 48 19 B4 85 */	bl _savegpr_28
/* 8145E044 | 7C 9D 23 78 */	mr r29, r4
/* 8145E048 | 7C 7C 1B 78 */	mr r28, r3
/* 8145E04C | 7C BE 2B 78 */	mr r30, r5
/* 8145E050 | 3B E0 00 00 */	li r31, 0x0
/* 8145E054 | 7F A3 EB 78 */	mr r3, r29
/* 8145E058 | 4B FF E4 D1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E05C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E060 | 41 82 00 30 */	beq .L_8145E090
/* 8145E064 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E068 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E06C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E070 | 41 82 00 20 */	beq .L_8145E090
/* 8145E074 | A8 C3 00 04 */	lha r6, 0x4(r3)
/* 8145E078 | 7F 83 E3 78 */	mr r3, r28
/* 8145E07C | 7F C4 F3 78 */	mr r4, r30
/* 8145E080 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145E084 | 4B FE D9 15 */	bl CHANSVmSetInteger
/* 8145E088 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145E08C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145E090:
/* 8145E090 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E094 | 7F E3 FB 78 */	mr r3, r31
/* 8145E098 | 48 19 B4 79 */	bl _restgpr_28
/* 8145E09C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E0A0 | 7C 08 03 A6 */	mtlr r0
/* 8145E0A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E0A8 | 4E 80 00 20 */	blr
.endfn "get<2>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x460 | 0x8145E0AC | size: 0x78
# int ipl::cs::color_s10::set<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<2>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E0AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E0B0 | 7C 08 02 A6 */	mflr r0
/* 8145E0B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E0B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E0BC | 48 19 B4 0D */	bl _savegpr_29
/* 8145E0C0 | 7C 9D 23 78 */	mr r29, r4
/* 8145E0C4 | 3B C0 00 00 */	li r30, 0x0
/* 8145E0C8 | 38 80 00 00 */	li r4, 0x0
/* 8145E0CC | 4B FE E5 F5 */	bl CHANSVmGetArgInteger
/* 8145E0D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E0D4 | 7F A3 EB 78 */	mr r3, r29
/* 8145E0D8 | 4B FF E4 51 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E0DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E0E0 | 41 82 00 28 */	beq .L_8145E108
/* 8145E0E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E0E8 | 41 82 00 20 */	beq .L_8145E108
/* 8145E0EC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E0F0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E0F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E0F8 | 41 82 00 10 */	beq .L_8145E108
/* 8145E0FC | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145E100 | 3B C0 00 01 */	li r30, 0x1
/* 8145E104 | B0 03 00 04 */	sth r0, 0x4(r3)
.L_8145E108:
/* 8145E108 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E10C | 7F C3 F3 78 */	mr r3, r30
/* 8145E110 | 48 19 B4 05 */	bl _restgpr_29
/* 8145E114 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E118 | 7C 08 03 A6 */	mtlr r0
/* 8145E11C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E120 | 4E 80 00 20 */	blr
.endfn "set<2>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x4D8 | 0x8145E124 | size: 0x7C
# int ipl::cs::color_s10::get<3>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<3>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E124 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E128 | 7C 08 02 A6 */	mflr r0
/* 8145E12C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E130 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E134 | 48 19 B3 91 */	bl _savegpr_28
/* 8145E138 | 7C 9D 23 78 */	mr r29, r4
/* 8145E13C | 7C 7C 1B 78 */	mr r28, r3
/* 8145E140 | 7C BE 2B 78 */	mr r30, r5
/* 8145E144 | 3B E0 00 00 */	li r31, 0x0
/* 8145E148 | 7F A3 EB 78 */	mr r3, r29
/* 8145E14C | 4B FF E3 DD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E154 | 41 82 00 30 */	beq .L_8145E184
/* 8145E158 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E15C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E164 | 41 82 00 20 */	beq .L_8145E184
/* 8145E168 | A8 C3 00 06 */	lha r6, 0x6(r3)
/* 8145E16C | 7F 83 E3 78 */	mr r3, r28
/* 8145E170 | 7F C4 F3 78 */	mr r4, r30
/* 8145E174 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145E178 | 4B FE D8 21 */	bl CHANSVmSetInteger
/* 8145E17C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145E180 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145E184:
/* 8145E184 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E188 | 7F E3 FB 78 */	mr r3, r31
/* 8145E18C | 48 19 B3 85 */	bl _restgpr_28
/* 8145E190 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E194 | 7C 08 03 A6 */	mtlr r0
/* 8145E198 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E19C | 4E 80 00 20 */	blr
.endfn "get<3>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x554 | 0x8145E1A0 | size: 0x78
# int ipl::cs::color_s10::set<3>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<3>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E1A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E1A4 | 7C 08 02 A6 */	mflr r0
/* 8145E1A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E1AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E1B0 | 48 19 B3 19 */	bl _savegpr_29
/* 8145E1B4 | 7C 9D 23 78 */	mr r29, r4
/* 8145E1B8 | 3B C0 00 00 */	li r30, 0x0
/* 8145E1BC | 38 80 00 00 */	li r4, 0x0
/* 8145E1C0 | 4B FE E5 01 */	bl CHANSVmGetArgInteger
/* 8145E1C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E1C8 | 7F A3 EB 78 */	mr r3, r29
/* 8145E1CC | 4B FF E3 5D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E1D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E1D4 | 41 82 00 28 */	beq .L_8145E1FC
/* 8145E1D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E1DC | 41 82 00 20 */	beq .L_8145E1FC
/* 8145E1E0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E1E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E1E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E1EC | 41 82 00 10 */	beq .L_8145E1FC
/* 8145E1F0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145E1F4 | 3B C0 00 01 */	li r30, 0x1
/* 8145E1F8 | B0 03 00 06 */	sth r0, 0x6(r3)
.L_8145E1FC:
/* 8145E1FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E200 | 7F C3 F3 78 */	mr r3, r30
/* 8145E204 | 48 19 B3 11 */	bl _restgpr_29
/* 8145E208 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E20C | 7C 08 03 A6 */	mtlr r0
/* 8145E210 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E214 | 4E 80 00 20 */	blr
.endfn "set<3>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x816177B0..0x816177E0 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x816177B0 | size: 0x30
.obj lbl_816177B0, global
	.4byte lbl_8169794E
	.4byte "get<0>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<0>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697950
	.4byte "get<1>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<1>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697952
	.4byte "get<2>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<2>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697954
	.4byte "get<3>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<3>__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
.endobj lbl_816177B0

# 0x8166A948..0x8166A958 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166A948 | size: 0x10
.obj lbl_8166A948, global
	.4byte 0x4758436F
	.4byte 0x6C6F7253
	.4byte 0x31300000
	.4byte 0x00000000
.endobj lbl_8166A948
