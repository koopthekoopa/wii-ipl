.include "macros.inc"
.file "iplCSTextWriter.cpp"

# 0x8145CC3C..0x8145D164 | size: 0x528
.text
.balign 4

# .text:0x0 | 0x8145CC3C | size: 0x8C
# ipl::cs::textwriter::set_font(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_font__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CC3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145CC40 | 7C 08 02 A6 */	mflr r0
/* 8145CC44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145CC48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CC4C | 48 19 C8 7D */	bl _savegpr_29
/* 8145CC50 | 7C 9D 23 78 */	mr r29, r4
/* 8145CC54 | 3B E0 00 00 */	li r31, 0x0
/* 8145CC58 | 38 80 00 00 */	li r4, 0x0
/* 8145CC5C | 4B FE FA 35 */	bl CHANSVmGetArg
/* 8145CC60 | 7C 7E 1B 78 */	mr r30, r3
/* 8145CC64 | 7F A3 EB 78 */	mr r3, r29
/* 8145CC68 | 4B FF F8 C1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CC6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CC70 | 41 82 00 3C */	beq .L_8145CCAC
/* 8145CC74 | 7F C3 F3 78 */	mr r3, r30
/* 8145CC78 | 38 8D 98 E0 */	li r4, lbl_81697920@sda21
/* 8145CC7C | 4B FF F8 DD */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 8145CC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CC84 | 41 82 00 28 */	beq .L_8145CCAC
/* 8145CC88 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145CC8C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8145CC90 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145CC94 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145CC98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CC9C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145CCA0 | 41 82 00 0C */	beq .L_8145CCAC
/* 8145CCA4 | 48 0B A1 81 */	bl SetFont__Q34nw4r2ut10CharWriterFRCQ34nw4r2ut4Font
/* 8145CCA8 | 3B E0 00 01 */	li r31, 0x1
.L_8145CCAC:
/* 8145CCAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CCB0 | 7F E3 FB 78 */	mr r3, r31
/* 8145CCB4 | 48 19 C8 61 */	bl _restgpr_29
/* 8145CCB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145CCBC | 7C 08 03 A6 */	mtlr r0
/* 8145CCC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145CCC4 | 4E 80 00 20 */	blr
.endfn set_font__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x8C | 0x8145CCC8 | size: 0xA0
# ipl::cs::textwriter::set_font_size(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_font_size__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CCC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145CCCC | 7C 08 02 A6 */	mflr r0
/* 8145CCD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145CCD4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CCD8 | 48 19 C7 ED */	bl _savegpr_28
/* 8145CCDC | 7C 9C 23 78 */	mr r28, r4
/* 8145CCE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145CCE4 | 3B A0 00 00 */	li r29, 0x0
/* 8145CCE8 | 38 80 00 00 */	li r4, 0x0
/* 8145CCEC | 4B FE FA 11 */	bl CHANSVmGetArgFloat
/* 8145CCF0 | 7C 7E 1B 78 */	mr r30, r3
/* 8145CCF4 | 7F E3 FB 78 */	mr r3, r31
/* 8145CCF8 | 38 80 00 01 */	li r4, 0x1
/* 8145CCFC | 4B FE FA 01 */	bl CHANSVmGetArgFloat
/* 8145CD00 | 7C 7F 1B 78 */	mr r31, r3
/* 8145CD04 | 7F 83 E3 78 */	mr r3, r28
/* 8145CD08 | 4B FF F8 21 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CD0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CD10 | 41 82 00 3C */	beq .L_8145CD4C
/* 8145CD14 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145CD18 | 41 82 00 34 */	beq .L_8145CD4C
/* 8145CD1C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145CD20 | 41 82 00 2C */	beq .L_8145CD4C
/* 8145CD24 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8145CD28 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145CD2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CD30 | 41 82 00 1C */	beq .L_8145CD4C
/* 8145CD34 | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8145CD38 | C8 5F 00 00 */	lfd f2, 0x0(r31)
/* 8145CD3C | FC 20 08 18 */	frsp f1, f1
/* 8145CD40 | FC 40 10 18 */	frsp f2, f2
/* 8145CD44 | 48 0B B0 09 */	bl SetFontSize__Q34nw4r2ut10CharWriterFff
/* 8145CD48 | 3B A0 00 01 */	li r29, 0x1
.L_8145CD4C:
/* 8145CD4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CD50 | 7F A3 EB 78 */	mr r3, r29
/* 8145CD54 | 48 19 C7 BD */	bl _restgpr_28
/* 8145CD58 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145CD5C | 7C 08 03 A6 */	mtlr r0
/* 8145CD60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145CD64 | 4E 80 00 20 */	blr
.endfn set_font_size__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x12C | 0x8145CD68 | size: 0x7C
# ipl::cs::textwriter::set_line_space(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_line_space__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CD68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145CD6C | 7C 08 02 A6 */	mflr r0
/* 8145CD70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145CD74 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CD78 | 48 19 C7 51 */	bl _savegpr_29
/* 8145CD7C | 7C 9D 23 78 */	mr r29, r4
/* 8145CD80 | 3B C0 00 00 */	li r30, 0x0
/* 8145CD84 | 38 80 00 00 */	li r4, 0x0
/* 8145CD88 | 4B FE F9 75 */	bl CHANSVmGetArgFloat
/* 8145CD8C | 7C 7F 1B 78 */	mr r31, r3
/* 8145CD90 | 7F A3 EB 78 */	mr r3, r29
/* 8145CD94 | 4B FF F7 95 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CD98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CD9C | 41 82 00 2C */	beq .L_8145CDC8
/* 8145CDA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145CDA4 | 41 82 00 24 */	beq .L_8145CDC8
/* 8145CDA8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145CDAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145CDB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CDB4 | 41 82 00 14 */	beq .L_8145CDC8
/* 8145CDB8 | C8 3F 00 00 */	lfd f1, 0x0(r31)
/* 8145CDBC | FC 20 08 18 */	frsp f1, f1
/* 8145CDC0 | 48 0B BA 81 */	bl fn_81518840
/* 8145CDC4 | 3B C0 00 01 */	li r30, 0x1
.L_8145CDC8:
/* 8145CDC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CDCC | 7F C3 F3 78 */	mr r3, r30
/* 8145CDD0 | 48 19 C7 45 */	bl _restgpr_29
/* 8145CDD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145CDD8 | 7C 08 03 A6 */	mtlr r0
/* 8145CDDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145CDE0 | 4E 80 00 20 */	blr
.endfn set_line_space__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1A8 | 0x8145CDE4 | size: 0x7C
# ipl::cs::textwriter::set_char_space(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_char_space__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CDE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145CDE8 | 7C 08 02 A6 */	mflr r0
/* 8145CDEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145CDF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CDF4 | 48 19 C6 D5 */	bl _savegpr_29
/* 8145CDF8 | 7C 9D 23 78 */	mr r29, r4
/* 8145CDFC | 3B C0 00 00 */	li r30, 0x0
/* 8145CE00 | 38 80 00 00 */	li r4, 0x0
/* 8145CE04 | 4B FE F8 F9 */	bl CHANSVmGetArgFloat
/* 8145CE08 | 7C 7F 1B 78 */	mr r31, r3
/* 8145CE0C | 7F A3 EB 78 */	mr r3, r29
/* 8145CE10 | 4B FF F7 19 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CE14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CE18 | 41 82 00 2C */	beq .L_8145CE44
/* 8145CE1C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145CE20 | 41 82 00 24 */	beq .L_8145CE44
/* 8145CE24 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145CE28 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145CE2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CE30 | 41 82 00 14 */	beq .L_8145CE44
/* 8145CE34 | C8 3F 00 00 */	lfd f1, 0x0(r31)
/* 8145CE38 | FC 20 08 18 */	frsp f1, f1
/* 8145CE3C | 48 0B BA 0D */	bl fn_81518848
/* 8145CE40 | 3B C0 00 01 */	li r30, 0x1
.L_8145CE44:
/* 8145CE44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CE48 | 7F C3 F3 78 */	mr r3, r30
/* 8145CE4C | 48 19 C6 C9 */	bl _restgpr_29
/* 8145CE50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145CE54 | 7C 08 03 A6 */	mtlr r0
/* 8145CE58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145CE5C | 4E 80 00 20 */	blr
.endfn set_char_space__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x224 | 0x8145CE60 | size: 0x130
# ipl::cs::textwriter::calc_string_rect(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn calc_string_rect__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CE60 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145CE64 | 7C 08 02 A6 */	mflr r0
/* 8145CE68 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145CE6C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145CE70 | 48 19 C6 49 */	bl _savegpr_25
/* 8145CE74 | 7C 9A 23 78 */	mr r26, r4
/* 8145CE78 | 7C 79 1B 78 */	mr r25, r3
/* 8145CE7C | 3B E0 00 00 */	li r31, 0x0
/* 8145CE80 | 38 80 00 00 */	li r4, 0x0
/* 8145CE84 | 4B FE F8 0D */	bl CHANSVmGetArg
/* 8145CE88 | 7C 7E 1B 78 */	mr r30, r3
/* 8145CE8C | 7F 23 CB 78 */	mr r3, r25
/* 8145CE90 | 38 80 00 01 */	li r4, 0x1
/* 8145CE94 | 4B FE F8 A5 */	bl CHANSVmGetArgString
/* 8145CE98 | 7C 7D 1B 78 */	mr r29, r3
/* 8145CE9C | 7F 43 D3 78 */	mr r3, r26
/* 8145CEA0 | 4B FF F6 89 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CEA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CEA8 | 41 82 00 CC */	beq .L_8145CF74
/* 8145CEAC | 7F C3 F3 78 */	mr r3, r30
/* 8145CEB0 | 38 8D 98 E5 */	li r4, lbl_81697925@sda21
/* 8145CEB4 | 4B FF F6 A5 */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 8145CEB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CEBC | 41 82 00 B8 */	beq .L_8145CF74
/* 8145CEC0 | 7F A3 EB 78 */	mr r3, r29
/* 8145CEC4 | 4B FF F6 65 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CEC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CECC | 41 82 00 A8 */	beq .L_8145CF74
/* 8145CED0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145CED4 | 3C 00 00 08 */	lis r0, 0x8
/* 8145CED8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8145CEDC | 7C 04 00 40 */	cmplw r4, r0
/* 8145CEE0 | 40 80 00 94 */	bge .L_8145CF74
/* 8145CEE4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8145CEE8 | 54 86 F8 7E */	srwi r6, r4, 1
/* 8145CEEC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8145CEF0 | 38 A0 00 04 */	li r5, 0x4
/* 8145CEF4 | 80 83 00 88 */	lwz r4, 0x88(r3)
/* 8145CEF8 | 3B 86 00 01 */	addi r28, r6, 0x1
/* 8145CEFC | 57 83 08 3C */	slwi r3, r28, 1
/* 8145CF00 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8145CF04 | 48 19 B1 D1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145CF08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CF0C | 7C 7B 1B 78 */	mr r27, r3
/* 8145CF10 | 41 82 00 64 */	beq .L_8145CF74
/* 8145CF14 | 57 85 08 3C */	slwi r5, r28, 1
/* 8145CF18 | 38 80 00 00 */	li r4, 0x0
/* 8145CF1C | 4B ED 34 19 */	bl memset
/* 8145CF20 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8145CF24 | 7F 63 DB 78 */	mr r3, r27
/* 8145CF28 | 38 BC FF FF */	subi r5, r28, 0x1
/* 8145CF2C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145CF30 | 48 1A B7 B5 */	bl fn_816086E4
/* 8145CF34 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8145CF38 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8145CF3C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145CF40 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145CF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CF48 | 41 82 00 24 */	beq .L_8145CF6C
/* 8145CF4C | 7F 65 DB 78 */	mr r5, r27
/* 8145CF50 | 48 0B DE 81 */	bl "CalcStringRect__Q34nw4r2ut17TextWriterBase<w>CFPQ34nw4r2ut4RectPCw"
/* 8145CF54 | 7F 23 CB 78 */	mr r3, r25
/* 8145CF58 | 7F 44 D3 78 */	mr r4, r26
/* 8145CF5C | 48 00 04 B1 */	bl _ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdr
/* 8145CF60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CF64 | 41 82 00 08 */	beq .L_8145CF6C
/* 8145CF68 | 3B E0 00 01 */	li r31, 0x1
.L_8145CF6C:
/* 8145CF6C | 7F 63 DB 78 */	mr r3, r27
/* 8145CF70 | 48 19 B1 7D */	bl __dla__FPv
.L_8145CF74:
/* 8145CF74 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145CF78 | 7F E3 FB 78 */	mr r3, r31
/* 8145CF7C | 48 19 C5 89 */	bl _restgpr_25
/* 8145CF80 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145CF84 | 7C 08 03 A6 */	mtlr r0
/* 8145CF88 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145CF8C | 4E 80 00 20 */	blr
.endfn calc_string_rect__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x354 | 0x8145CF90 | size: 0x15C
# ipl::cs::textwriter::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CF90 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8145CF94 | 7C 08 02 A6 */	mflr r0
/* 8145CF98 | 7C A4 2B 78 */	mr r4, r5
/* 8145CF9C | 38 A0 00 60 */	li r5, 0x60
/* 8145CFA0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8145CFA4 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8145CFA8 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 8145CFAC | 3B C0 00 00 */	li r30, 0x0
/* 8145CFB0 | 4B FE DC A5 */	bl CHANSVmNewObjData
/* 8145CFB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CFB8 | 7C 7F 1B 78 */	mr r31, r3
/* 8145CFBC | 41 82 01 14 */	beq .L_8145D0D0
/* 8145CFC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145CFC4 | 48 0B B7 49 */	bl fn_8151870C
/* 8145CFC8 | 7F E3 FB 78 */	mr r3, r31
/* 8145CFCC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145CFD0 | 4B EE 17 09 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145CFD4 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8145CFD8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8145CFDC | 4B EE 16 FD */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145CFE0 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 8145CFE4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8145CFE8 | 4B EE 16 F1 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145CFEC | 38 7F 00 0C */	addi r3, r31, 0xc
/* 8145CFF0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8145CFF4 | 4B EE 16 E5 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145CFF8 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8145CFFC | 38 81 00 18 */	addi r4, r1, 0x18
/* 8145D000 | 4B EE 16 D9 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145D004 | 38 7F 00 14 */	addi r3, r31, 0x14
/* 8145D008 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8145D00C | 4B EE 16 CD */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145D010 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 8145D014 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8145D018 | 4B EE 16 C1 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145D01C | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8145D020 | 38 81 00 24 */	addi r4, r1, 0x24
/* 8145D024 | 4B EE 16 B5 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145D028 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8145D02C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145D030 | 38 80 FF FF */	li r4, -0x1
/* 8145D034 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 8145D038 | 80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8145D03C | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 8145D040 | 90 BF 00 24 */	stw r5, 0x24(r31)
/* 8145D044 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 8145D048 | 80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8145D04C | 80 01 00 38 */	lwz r0, 0x38(r1)
/* 8145D050 | 90 BF 00 2C */	stw r5, 0x2c(r31)
/* 8145D054 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 8145D058 | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8145D05C | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 8145D060 | 80 A1 00 40 */	lwz r5, 0x40(r1)
/* 8145D064 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8145D068 | 90 BF 00 38 */	stw r5, 0x38(r31)
/* 8145D06C | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8145D070 | 88 01 00 48 */	lbz r0, 0x48(r1)
/* 8145D074 | 98 1F 00 40 */	stb r0, 0x40(r31)
/* 8145D078 | 88 01 00 49 */	lbz r0, 0x49(r1)
/* 8145D07C | 98 1F 00 41 */	stb r0, 0x41(r31)
/* 8145D080 | 88 01 00 4A */	lbz r0, 0x4a(r1)
/* 8145D084 | 98 1F 00 42 */	stb r0, 0x42(r31)
/* 8145D088 | 88 01 00 4B */	lbz r0, 0x4b(r1)
/* 8145D08C | 98 1F 00 43 */	stb r0, 0x43(r31)
/* 8145D090 | C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8145D094 | D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8145D098 | 80 01 00 50 */	lwz r0, 0x50(r1)
/* 8145D09C | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 8145D0A0 | C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8145D0A4 | D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8145D0A8 | C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8145D0AC | D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8145D0B0 | 80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8145D0B4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 8145D0B8 | 80 01 00 60 */	lwz r0, 0x60(r1)
/* 8145D0BC | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 8145D0C0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8145D0C4 | 90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8145D0C8 | 48 0B B6 99 */	bl fn_81518760
/* 8145D0CC | 3B C0 00 01 */	li r30, 0x1
.L_8145D0D0:
/* 8145D0D0 | 7F C3 F3 78 */	mr r3, r30
/* 8145D0D4 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8145D0D8 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8145D0DC | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8145D0E0 | 7C 08 03 A6 */	mtlr r0
/* 8145D0E4 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8145D0E8 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4B0 | 0x8145D0EC | size: 0x78
# ipl::cs::textwriter::init(CHANSVm*)
.fn init__Q33ipl2cs10textwriterFP7CHANSVm, global
/* 8145D0EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145D0F0 | 7C 08 02 A6 */	mflr r0
/* 8145D0F4 | 3C 80 81 67 */	lis r4, lbl_8166A915@ha
/* 8145D0F8 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145D0FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145D100 | 38 84 A9 15 */	addi r4, r4, lbl_8166A915@l
/* 8145D104 | 38 A5 CF 90 */	addi r5, r5, ctor__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145D108 | 38 C0 00 00 */	li r6, 0x0
/* 8145D10C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145D110 | 3B E0 00 00 */	li r31, 0x0
/* 8145D114 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145D118 | 7C 7E 1B 78 */	mr r30, r3
/* 8145D11C | 4B FE F7 B9 */	bl CHANSVmAddNativeClass
/* 8145D120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D124 | 7C 64 1B 78 */	mr r4, r3
/* 8145D128 | 41 82 00 20 */	beq .L_8145D148
/* 8145D12C | 3C A0 81 61 */	lis r5, scMethodList__Q33ipl2cs10textwriter@ha
/* 8145D130 | 7F C3 F3 78 */	mr r3, r30
/* 8145D134 | 38 C0 00 05 */	li r6, 0x5
/* 8145D138 | 38 A5 77 38 */	addi r5, r5, scMethodList__Q33ipl2cs10textwriter@l
/* 8145D13C | 4B FE F9 35 */	bl CHANSVmAddNativeMethodList
/* 8145D140 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D144 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D148:
/* 8145D148 | 7F E3 FB 78 */	mr r3, r31
/* 8145D14C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145D150 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145D154 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145D158 | 7C 08 03 A6 */	mtlr r0
/* 8145D15C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145D160 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs10textwriterFP7CHANSVm

# 0x81617738..0x81617760 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x81617738 | size: 0x28
# ipl::cs::textwriter::scMethodList
.obj scMethodList__Q33ipl2cs10textwriter, local
	.4byte lbl_8169792A
	.4byte set_font__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A8E0
	.4byte set_font_size__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A8EC
	.4byte set_line_space__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A8F9
	.4byte set_char_space__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A906
	.4byte calc_string_rect__Q33ipl2cs10textwriterFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj scMethodList__Q33ipl2cs10textwriter

# 0x8166A8E0..0x8166A920 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x8166A8E0 | size: 0xC
.obj lbl_8166A8E0, global
	.string "SetFontSize"
.endobj lbl_8166A8E0

# .data:0xC | 0x8166A8EC | size: 0xD
.obj lbl_8166A8EC, global
	.string "SetLineSpace"
.endobj lbl_8166A8EC

# .data:0x19 | 0x8166A8F9 | size: 0xD
.obj lbl_8166A8F9, global
	.string "SetCharSpace"
.endobj lbl_8166A8F9

# .data:0x26 | 0x8166A906 | size: 0xF
.obj lbl_8166A906, global
	.string "CalcStringRect"
.endobj lbl_8166A906

# .data:0x35 | 0x8166A915 | size: 0xB
.obj lbl_8166A915, global
	.string "TextWriter"
.endobj lbl_8166A915

# 0x81697920..0x81697938 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697920 | size: 0x5
.obj lbl_81697920, global
	.string "Font"
.endobj lbl_81697920

# .sdata:0x5 | 0x81697925 | size: 0x5
.obj lbl_81697925, global
	.string "Rect"
.endobj lbl_81697925

# .sdata:0xA | 0x8169792A | size: 0x8
.obj lbl_8169792A, global
	.string "SetFont"
.endobj lbl_8169792A

# .sdata:0x12 | 0x81697932 | size: 0x6
.obj gap_11_81697932_sdata, global
.hidden gap_11_81697932_sdata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_11_81697932_sdata
