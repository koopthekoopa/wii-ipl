.include "macros.inc"
.file "layout.cpp"

# 0x81449C98..0x8144A5AC | size: 0x914
.text
.balign 4

# .text:0x0 | 0x81449C98 | size: 0xC8
# textinput::AnimTransformPane::SetResource(const nw4r::lyt::res::AnimationBlock*, nw4r::lyt::ResourceAccessor*)
.fn SetResource__Q29textinput17AnimTransformPaneFPCQ44nw4r3lyt3res14AnimationBlockPQ34nw4r3lyt16ResourceAccessor, global
/* 81449C98 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81449C9C | 7C 08 02 A6 */	mflr r0
/* 81449CA0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81449CA4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81449CA8 | 48 1A F8 11 */	bl _savegpr_25
/* 81449CAC | A0 C4 00 0C */	lhz r6, 0xc(r4)
/* 81449CB0 | 38 00 00 00 */	li r0, 0x0
/* 81449CB4 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 81449CB8 | 7C 79 1B 78 */	mr r25, r3
/* 81449CBC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81449CC0 | 7C BA 2B 78 */	mr r26, r5
/* 81449CC4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81449CC8 | 41 82 00 80 */	beq .L_81449D48
/* 81449CCC | 80 6D AF 68 */	lwz r3, lbl_81698FA8@sda21(r0)
/* 81449CD0 | 54 C4 13 BA */	clrlslwi r4, r6, 16, 2
/* 81449CD4 | 48 11 19 95 */	bl fn_8155B668
/* 81449CD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449CDC | 90 79 00 14 */	stw r3, 0x14(r25)
/* 81449CE0 | 41 82 00 68 */	beq .L_81449D48
/* 81449CE4 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 81449CE8 | 3B 60 00 00 */	li r27, 0x0
/* 81449CEC | 3B 80 00 00 */	li r28, 0x0
/* 81449CF0 | 3F E0 74 69 */	lis r31, 0x7469
/* 81449CF4 | 3B C3 00 14 */	addi r30, r3, 0x14
/* 81449CF8 | 7F DD F3 78 */	mr r29, r30
/* 81449CFC | 48 00 00 3C */	b .L_81449D38
.L_81449D00:
/* 81449D00 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81449D04 | 7F 43 D3 78 */	mr r3, r26
/* 81449D08 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81449D0C | 38 9F 6D 67 */	addi r4, r31, 0x6d67
/* 81449D10 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81449D14 | 38 C0 00 00 */	li r6, 0x0
/* 81449D18 | 7C BE 02 14 */	add r5, r30, r0
/* 81449D1C | 7D 89 03 A6 */	mtctr r12
/* 81449D20 | 4E 80 04 21 */	bctrl
/* 81449D24 | 80 99 00 14 */	lwz r4, 0x14(r25)
/* 81449D28 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81449D2C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81449D30 | 7C 64 E1 2E */	stwx r3, r4, r28
/* 81449D34 | 3B 9C 00 04 */	addi r28, r28, 0x4
.L_81449D38:
/* 81449D38 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 81449D3C | A0 03 00 0C */	lhz r0, 0xc(r3)
/* 81449D40 | 7C 1B 00 00 */	cmpw r27, r0
/* 81449D44 | 41 80 FF BC */	blt .L_81449D00
.L_81449D48:
/* 81449D48 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81449D4C | 48 1A F7 B9 */	bl _restgpr_25
/* 81449D50 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81449D54 | 7C 08 03 A6 */	mtlr r0
/* 81449D58 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81449D5C | 4E 80 00 20 */	blr
.endfn SetResource__Q29textinput17AnimTransformPaneFPCQ44nw4r3lyt3res14AnimationBlockPQ34nw4r3lyt16ResourceAccessor

# .text:0xC8 | 0x81449D60 | size: 0xBC
# textinput::AnimTransformPane::CountAnimForPane_(const char*)
.fn CountAnimForPane___Q29textinput17AnimTransformPaneFPCc, global
/* 81449D60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81449D64 | 7C 08 02 A6 */	mflr r0
/* 81449D68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81449D6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81449D70 | 48 1A F7 4D */	bl _savegpr_26
/* 81449D74 | 83 C3 00 0C */	lwz r30, 0xc(r3)
/* 81449D78 | 7C 9A 23 78 */	mr r26, r4
/* 81449D7C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81449D80 | 40 82 00 0C */	bne .L_81449D8C
/* 81449D84 | 38 60 00 00 */	li r3, 0x0
/* 81449D88 | 48 00 00 7C */	b .L_81449E04
.L_81449D8C:
/* 81449D8C | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81449D90 | 3B A0 00 00 */	li r29, 0x0
/* 81449D94 | A3 FE 00 0E */	lhz r31, 0xe(r30)
/* 81449D98 | 3B 60 00 00 */	li r27, 0x0
/* 81449D9C | 7F 9E 02 14 */	add r28, r30, r0
/* 81449DA0 | 48 00 00 54 */	b .L_81449DF4
.L_81449DA4:
/* 81449DA4 | 57 60 13 BA */	clrlslwi r0, r27, 16, 2
/* 81449DA8 | 7C 1C 00 2E */	lwzx r0, r28, r0
/* 81449DAC | 7C 7E 02 14 */	add r3, r30, r0
/* 81449DB0 | 88 03 00 15 */	lbz r0, 0x15(r3)
/* 81449DB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81449DB8 | 40 82 00 20 */	bne .L_81449DD8
/* 81449DBC | 7F 44 D3 78 */	mr r4, r26
/* 81449DC0 | 38 A0 00 11 */	li r5, 0x11
/* 81449DC4 | 48 1B 87 D9 */	bl strncmp
/* 81449DC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449DCC | 40 82 00 24 */	bne .L_81449DF0
/* 81449DD0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81449DD4 | 48 00 00 1C */	b .L_81449DF0
.L_81449DD8:
/* 81449DD8 | 7F 44 D3 78 */	mr r4, r26
/* 81449DDC | 38 A0 00 11 */	li r5, 0x11
/* 81449DE0 | 48 1B 87 BD */	bl strncmp
/* 81449DE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449DE8 | 40 82 00 08 */	bne .L_81449DF0
/* 81449DEC | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81449DF0:
/* 81449DF0 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81449DF4:
/* 81449DF4 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 81449DF8 | 7C 00 F8 40 */	cmplw r0, r31
/* 81449DFC | 41 80 FF A8 */	blt .L_81449DA4
/* 81449E00 | 7F A3 EB 78 */	mr r3, r29
.L_81449E04:
/* 81449E04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81449E08 | 48 1A F7 01 */	bl _restgpr_26
/* 81449E0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81449E10 | 7C 08 03 A6 */	mtlr r0
/* 81449E14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81449E18 | 4E 80 00 20 */	blr
.endfn CountAnimForPane___Q29textinput17AnimTransformPaneFPCc

# .text:0x184 | 0x81449E1C | size: 0xE4
# textinput::AnimTransformPane::CountAnimForPane_(nw4r::lyt::Pane*, bool)
.fn CountAnimForPane___Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb, global
/* 81449E1C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81449E20 | 7C 08 02 A6 */	mflr r0
/* 81449E24 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81449E28 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81449E2C | 48 1A F6 7D */	bl _savegpr_21
/* 81449E30 | 7C 98 23 78 */	mr r24, r4
/* 81449E34 | 7C 75 1B 78 */	mr r21, r3
/* 81449E38 | 7C B6 2B 78 */	mr r22, r5
/* 81449E3C | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 81449E40 | 4B FF FF 21 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449E44 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 81449E48 | 7C 77 1B 78 */	mr r23, r3
/* 81449E4C | 41 82 00 98 */	beq .L_81449EE4
/* 81449E50 | 83 F8 00 14 */	lwz r31, 0x14(r24)
/* 81449E54 | 3B D8 00 14 */	addi r30, r24, 0x14
/* 81449E58 | 48 00 00 84 */	b .L_81449EDC
.L_81449E5C:
/* 81449E5C | 7E A3 AB 78 */	mr r3, r21
/* 81449E60 | 38 9F 00 B0 */	addi r4, r31, 0xb0
/* 81449E64 | 4B FF FE FD */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449E68 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 81449E6C | 7C 79 1B 78 */	mr r25, r3
/* 81449E70 | 41 82 00 64 */	beq .L_81449ED4
/* 81449E74 | 83 BF 00 10 */	lwz r29, 0x10(r31)
/* 81449E78 | 3B 9F 00 10 */	addi r28, r31, 0x10
/* 81449E7C | 48 00 00 50 */	b .L_81449ECC
.L_81449E80:
/* 81449E80 | 7E A3 AB 78 */	mr r3, r21
/* 81449E84 | 38 9D 00 B0 */	addi r4, r29, 0xb0
/* 81449E88 | 4B FF FE D9 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449E8C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 81449E90 | 7C 78 1B 78 */	mr r24, r3
/* 81449E94 | 41 82 00 30 */	beq .L_81449EC4
/* 81449E98 | 83 7D 00 10 */	lwz r27, 0x10(r29)
/* 81449E9C | 3B 5D 00 10 */	addi r26, r29, 0x10
/* 81449EA0 | 48 00 00 1C */	b .L_81449EBC
.L_81449EA4:
/* 81449EA4 | 7E A3 AB 78 */	mr r3, r21
/* 81449EA8 | 7E C5 B3 78 */	mr r5, r22
/* 81449EAC | 38 9B FF FC */	subi r4, r27, 0x4
/* 81449EB0 | 4B FF FF 6D */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb
/* 81449EB4 | 7F 18 1A 14 */	add r24, r24, r3
/* 81449EB8 | 83 7B 00 00 */	lwz r27, 0x0(r27)
.L_81449EBC:
/* 81449EBC | 7C 1B D0 40 */	cmplw r27, r26
/* 81449EC0 | 40 82 FF E4 */	bne .L_81449EA4
.L_81449EC4:
/* 81449EC4 | 7F 39 C2 14 */	add r25, r25, r24
/* 81449EC8 | 83 BD 00 00 */	lwz r29, 0x0(r29)
.L_81449ECC:
/* 81449ECC | 7C 1D E0 40 */	cmplw r29, r28
/* 81449ED0 | 40 82 FF B0 */	bne .L_81449E80
.L_81449ED4:
/* 81449ED4 | 7E F7 CA 14 */	add r23, r23, r25
/* 81449ED8 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81449EDC:
/* 81449EDC | 7C 1F F0 40 */	cmplw r31, r30
/* 81449EE0 | 40 82 FF 7C */	bne .L_81449E5C
.L_81449EE4:
/* 81449EE4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81449EE8 | 7E E3 BB 78 */	mr r3, r23
/* 81449EEC | 48 1A F6 09 */	bl _restgpr_21
/* 81449EF0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81449EF4 | 7C 08 03 A6 */	mtlr r0
/* 81449EF8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81449EFC | 4E 80 00 20 */	blr
.endfn CountAnimForPane___Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb

# .text:0x268 | 0x81449F00 | size: 0x210
# textinput::AnimTransformPane::Bind(nw4r::lyt::Pane*, bool)
.fn Bind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb, global
/* 81449F00 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81449F04 | 7C 08 02 A6 */	mflr r0
/* 81449F08 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81449F0C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81449F10 | 48 1A F5 95 */	bl _savegpr_20
/* 81449F14 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81449F18 | 7C 7B 1B 78 */	mr r27, r3
/* 81449F1C | 7C 9C 23 78 */	mr r28, r4
/* 81449F20 | 7C BD 2B 78 */	mr r29, r5
/* 81449F24 | 40 82 00 14 */	bne .L_81449F38
/* 81449F28 | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 81449F2C | 4B FF FE 35 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449F30 | 7C 74 1B 78 */	mr r20, r3
/* 81449F34 | 48 00 00 94 */	b .L_81449FC8
.L_81449F38:
/* 81449F38 | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 81449F3C | 4B FF FE 25 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449F40 | 83 5C 00 14 */	lwz r26, 0x14(r28)
/* 81449F44 | 7C 74 1B 78 */	mr r20, r3
/* 81449F48 | 3B DC 00 14 */	addi r30, r28, 0x14
/* 81449F4C | 48 00 00 74 */	b .L_81449FC0
.L_81449F50:
/* 81449F50 | 7F 63 DB 78 */	mr r3, r27
/* 81449F54 | 38 9A 00 B0 */	addi r4, r26, 0xb0
/* 81449F58 | 4B FF FE 09 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449F5C | 83 FA 00 10 */	lwz r31, 0x10(r26)
/* 81449F60 | 7C 75 1B 78 */	mr r21, r3
/* 81449F64 | 3B 3A 00 10 */	addi r25, r26, 0x10
/* 81449F68 | 48 00 00 48 */	b .L_81449FB0
.L_81449F6C:
/* 81449F6C | 7F 63 DB 78 */	mr r3, r27
/* 81449F70 | 38 9F 00 B0 */	addi r4, r31, 0xb0
/* 81449F74 | 4B FF FD ED */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 81449F78 | 83 1F 00 10 */	lwz r24, 0x10(r31)
/* 81449F7C | 7C 76 1B 78 */	mr r22, r3
/* 81449F80 | 3A FF 00 10 */	addi r23, r31, 0x10
/* 81449F84 | 48 00 00 1C */	b .L_81449FA0
.L_81449F88:
/* 81449F88 | 7F 63 DB 78 */	mr r3, r27
/* 81449F8C | 38 98 FF FC */	subi r4, r24, 0x4
/* 81449F90 | 38 A0 00 01 */	li r5, 0x1
/* 81449F94 | 4B FF FE 89 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb
/* 81449F98 | 7E D6 1A 14 */	add r22, r22, r3
/* 81449F9C | 83 18 00 00 */	lwz r24, 0x0(r24)
.L_81449FA0:
/* 81449FA0 | 7C 18 B8 40 */	cmplw r24, r23
/* 81449FA4 | 40 82 FF E4 */	bne .L_81449F88
/* 81449FA8 | 7E B5 B2 14 */	add r21, r21, r22
/* 81449FAC | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81449FB0:
/* 81449FB0 | 7C 1F C8 40 */	cmplw r31, r25
/* 81449FB4 | 40 82 FF B8 */	bne .L_81449F6C
/* 81449FB8 | 7E 94 AA 14 */	add r20, r20, r21
/* 81449FBC | 83 5A 00 00 */	lwz r26, 0x0(r26)
.L_81449FC0:
/* 81449FC0 | 7C 1A F0 40 */	cmplw r26, r30
/* 81449FC4 | 40 82 FF 8C */	bne .L_81449F50
.L_81449FC8:
/* 81449FC8 | 56 95 20 36 */	slwi r21, r20, 4
/* 81449FCC | 80 6D AF 68 */	lwz r3, lbl_81698FA8@sda21(r0)
/* 81449FD0 | 7E A4 AB 78 */	mr r4, r21
/* 81449FD4 | 48 11 16 95 */	bl fn_8155B668
/* 81449FD8 | 90 7B 00 18 */	stw r3, 0x18(r27)
/* 81449FDC | 7E A5 AB 78 */	mr r5, r21
/* 81449FE0 | 38 80 00 00 */	li r4, 0x0
/* 81449FE4 | B2 9B 00 1C */	sth r20, 0x1c(r27)
/* 81449FE8 | 4B EE 63 4D */	bl memset
/* 81449FEC | 38 A0 00 00 */	li r5, 0x0
/* 81449FF0 | 38 60 00 00 */	li r3, 0x0
/* 81449FF4 | 48 00 00 2C */	b .L_8144A020
.L_81449FF8:
/* 81449FF8 | 80 9B 00 18 */	lwz r4, 0x18(r27)
/* 81449FFC | 54 A0 23 36 */	clrlslwi r0, r5, 16, 4
/* 8144A000 | 7C 84 02 15 */	add. r4, r4, r0
/* 8144A004 | 41 82 00 18 */	beq .L_8144A01C
/* 8144A008 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 8144A00C | 90 64 00 04 */	stw r3, 0x4(r4)
/* 8144A010 | 98 64 00 0E */	stb r3, 0xe(r4)
/* 8144A014 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 8144A018 | B0 64 00 0C */	sth r3, 0xc(r4)
.L_8144A01C:
/* 8144A01C | 38 A5 00 01 */	addi r5, r5, 0x1
.L_8144A020:
/* 8144A020 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 8144A024 | 7C 00 A0 40 */	cmplw r0, r20
/* 8144A028 | 41 80 FF D0 */	blt .L_81449FF8
/* 8144A02C | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8144A030 | 3B 40 00 00 */	li r26, 0x0
/* 8144A034 | 3B C0 00 00 */	li r30, 0x0
/* 8144A038 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8144A03C | 7F E3 02 14 */	add r31, r3, r0
/* 8144A040 | 48 00 00 A4 */	b .L_8144A0E4
.L_8144A044:
/* 8144A044 | 57 C0 13 BA */	clrlslwi r0, r30, 16, 2
/* 8144A048 | 7C 1F 00 2E */	lwzx r0, r31, r0
/* 8144A04C | 7C 84 02 14 */	add r4, r4, r0
/* 8144A050 | 88 04 00 15 */	lbz r0, 0x15(r4)
/* 8144A054 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144A058 | 40 82 00 48 */	bne .L_8144A0A0
/* 8144A05C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8144A060 | 7F 83 E3 78 */	mr r3, r28
/* 8144A064 | 7F A5 EB 78 */	mr r5, r29
/* 8144A068 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8144A06C | 7D 89 03 A6 */	mtctr r12
/* 8144A070 | 4E 80 04 21 */	bctrl
/* 8144A074 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A078 | 41 82 00 68 */	beq .L_8144A0E0
/* 8144A07C | 80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8144A080 | 7C 80 D2 14 */	add r4, r0, r26
/* 8144A084 | 93 64 00 08 */	stw r27, 0x8(r4)
/* 8144A088 | B3 C4 00 0C */	sth r30, 0xc(r4)
/* 8144A08C | 80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8144A090 | 7C 80 D2 14 */	add r4, r0, r26
/* 8144A094 | 48 0D 57 A1 */	bl fn_8151F834
/* 8144A098 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 8144A09C | 48 00 00 44 */	b .L_8144A0E0
.L_8144A0A0:
/* 8144A0A0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8144A0A4 | 7F 83 E3 78 */	mr r3, r28
/* 8144A0A8 | 7F A5 EB 78 */	mr r5, r29
/* 8144A0AC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8144A0B0 | 7D 89 03 A6 */	mtctr r12
/* 8144A0B4 | 4E 80 04 21 */	bctrl
/* 8144A0B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A0BC | 41 82 00 24 */	beq .L_8144A0E0
/* 8144A0C0 | 80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8144A0C4 | 7C 80 D2 14 */	add r4, r0, r26
/* 8144A0C8 | 93 64 00 08 */	stw r27, 0x8(r4)
/* 8144A0CC | B3 C4 00 0C */	sth r30, 0xc(r4)
/* 8144A0D0 | 80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8144A0D4 | 7C 80 D2 14 */	add r4, r0, r26
/* 8144A0D8 | 48 0D EF 49 */	bl fn_81529020
/* 8144A0DC | 3B 5A 00 10 */	addi r26, r26, 0x10
.L_8144A0E0:
/* 8144A0E0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8144A0E4:
/* 8144A0E4 | 80 9B 00 0C */	lwz r4, 0xc(r27)
/* 8144A0E8 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8144A0EC | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 8144A0F0 | 7C 03 00 40 */	cmplw r3, r0
/* 8144A0F4 | 41 80 FF 50 */	blt .L_8144A044
/* 8144A0F8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144A0FC | 48 1A F3 F5 */	bl _restgpr_20
/* 8144A100 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144A104 | 7C 08 03 A6 */	mtlr r0
/* 8144A108 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8144A10C | 4E 80 00 20 */	blr
.endfn Bind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb

# .text:0x478 | 0x8144A110 | size: 0x4
# textinput::AnimTransformPane::Bind(nw4r::lyt::Material*)
.fn Bind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt8Material, global
/* 8144A110 | 4E 80 00 20 */	blr
.endfn Bind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt8Material

# .text:0x47C | 0x8144A114 | size: 0x168
# textinput::AnimTransformPane::ForceBind(nw4r::lyt::Pane*, const char*)
.fn ForceBind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4PanePCc, global
/* 8144A114 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144A118 | 7C 08 02 A6 */	mflr r0
/* 8144A11C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144A120 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144A124 | 48 1A F3 95 */	bl _savegpr_25
/* 8144A128 | 7C BE 2B 78 */	mr r30, r5
/* 8144A12C | 7C 9D 23 78 */	mr r29, r4
/* 8144A130 | 7C 7C 1B 78 */	mr r28, r3
/* 8144A134 | 7F C4 F3 78 */	mr r4, r30
/* 8144A138 | 4B FF FC 29 */	bl CountAnimForPane___Q29textinput17AnimTransformPaneFPCc
/* 8144A13C | 54 7A 20 36 */	slwi r26, r3, 4
/* 8144A140 | 7C 7F 1B 78 */	mr r31, r3
/* 8144A144 | 80 6D AF 68 */	lwz r3, lbl_81698FA8@sda21(r0)
/* 8144A148 | 7F 44 D3 78 */	mr r4, r26
/* 8144A14C | 48 11 15 1D */	bl fn_8155B668
/* 8144A150 | 90 7C 00 18 */	stw r3, 0x18(r28)
/* 8144A154 | 7F 45 D3 78 */	mr r5, r26
/* 8144A158 | 38 80 00 00 */	li r4, 0x0
/* 8144A15C | B3 FC 00 1C */	sth r31, 0x1c(r28)
/* 8144A160 | 4B EE 61 D5 */	bl memset
/* 8144A164 | 38 A0 00 00 */	li r5, 0x0
/* 8144A168 | 38 60 00 00 */	li r3, 0x0
/* 8144A16C | 48 00 00 44 */	b .L_8144A1B0
.L_8144A170:
/* 8144A170 | 38 C0 00 00 */	li r6, 0x0
/* 8144A174 | 48 00 00 2C */	b .L_8144A1A0
.L_8144A178:
/* 8144A178 | 80 9C 00 18 */	lwz r4, 0x18(r28)
/* 8144A17C | 54 C0 23 36 */	clrlslwi r0, r6, 16, 4
/* 8144A180 | 7C 84 02 15 */	add. r4, r4, r0
/* 8144A184 | 41 82 00 18 */	beq .L_8144A19C
/* 8144A188 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 8144A18C | 90 64 00 04 */	stw r3, 0x4(r4)
/* 8144A190 | 98 64 00 0E */	stb r3, 0xe(r4)
/* 8144A194 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 8144A198 | B0 64 00 0C */	sth r3, 0xc(r4)
.L_8144A19C:
/* 8144A19C | 38 C6 00 01 */	addi r6, r6, 0x1
.L_8144A1A0:
/* 8144A1A0 | 54 C0 04 3E */	clrlwi r0, r6, 16
/* 8144A1A4 | 7C 00 F8 40 */	cmplw r0, r31
/* 8144A1A8 | 41 80 FF D0 */	blt .L_8144A178
/* 8144A1AC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_8144A1B0:
/* 8144A1B0 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 8144A1B4 | 7C 00 F8 40 */	cmplw r0, r31
/* 8144A1B8 | 41 80 FF B8 */	blt .L_8144A170
/* 8144A1BC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8144A1C0 | 3B E0 00 00 */	li r31, 0x0
/* 8144A1C4 | 3B 40 00 00 */	li r26, 0x0
/* 8144A1C8 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8144A1CC | 7F 23 02 14 */	add r25, r3, r0
/* 8144A1D0 | 48 00 00 80 */	b .L_8144A250
.L_8144A1D4:
/* 8144A1D4 | 57 E0 13 BA */	clrlslwi r0, r31, 16, 2
/* 8144A1D8 | 7F C4 F3 78 */	mr r4, r30
/* 8144A1DC | 7C 19 00 2E */	lwzx r0, r25, r0
/* 8144A1E0 | 38 A0 00 11 */	li r5, 0x11
/* 8144A1E4 | 7F 66 02 14 */	add r27, r6, r0
/* 8144A1E8 | 7F 63 DB 78 */	mr r3, r27
/* 8144A1EC | 48 1B 83 B1 */	bl strncmp
/* 8144A1F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A1F4 | 40 82 00 58 */	bne .L_8144A24C
/* 8144A1F8 | 80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8144A1FC | 7C 60 D2 14 */	add r3, r0, r26
/* 8144A200 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 8144A204 | B3 E3 00 0C */	sth r31, 0xc(r3)
/* 8144A208 | 88 1B 00 15 */	lbz r0, 0x15(r27)
/* 8144A20C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144A210 | 40 82 00 18 */	bne .L_8144A228
/* 8144A214 | 80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8144A218 | 7F A3 EB 78 */	mr r3, r29
/* 8144A21C | 7C 80 D2 14 */	add r4, r0, r26
/* 8144A220 | 48 0D 56 15 */	bl fn_8151F834
/* 8144A224 | 48 00 00 24 */	b .L_8144A248
.L_8144A228:
/* 8144A228 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8144A22C | 7F A3 EB 78 */	mr r3, r29
/* 8144A230 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8144A234 | 7D 89 03 A6 */	mtctr r12
/* 8144A238 | 4E 80 04 21 */	bctrl
/* 8144A23C | 80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8144A240 | 7C 80 D2 14 */	add r4, r0, r26
/* 8144A244 | 48 0D ED DD */	bl fn_81529020
.L_8144A248:
/* 8144A248 | 3B 5A 00 10 */	addi r26, r26, 0x10
.L_8144A24C:
/* 8144A24C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8144A250:
/* 8144A250 | 80 DC 00 0C */	lwz r6, 0xc(r28)
/* 8144A254 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8144A258 | A0 06 00 0E */	lhz r0, 0xe(r6)
/* 8144A25C | 7C 03 00 40 */	cmplw r3, r0
/* 8144A260 | 41 80 FF 74 */	blt .L_8144A1D4
/* 8144A264 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144A268 | 48 1A F2 9D */	bl _restgpr_25
/* 8144A26C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144A270 | 7C 08 03 A6 */	mtlr r0
/* 8144A274 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144A278 | 4E 80 00 20 */	blr
.endfn ForceBind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4PanePCc

# .text:0x5E4 | 0x8144A27C | size: 0x180
# textinput::TiLayout::CreateAnimTransform(const void*, nw4r::lyt::ResourceAccessor*)
.fn CreateAnimTransform__Q29textinput8TiLayoutFPCvPQ34nw4r3lyt16ResourceAccessor, global
/* 8144A27C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8144A280 | 7C 08 02 A6 */	mflr r0
/* 8144A284 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8144A288 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144A28C | 48 1A F2 21 */	bl _savegpr_22
/* 8144A290 | 7C 9E 23 78 */	mr r30, r4
/* 8144A294 | 7C 79 1B 78 */	mr r25, r3
/* 8144A298 | 7C BA 2B 78 */	mr r26, r5
/* 8144A29C | 7F C3 F3 78 */	mr r3, r30
/* 8144A2A0 | 48 0E 03 FD */	bl fn_8152A69C
/* 8144A2A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A2A8 | 40 82 00 0C */	bne .L_8144A2B4
/* 8144A2AC | 38 60 00 00 */	li r3, 0x0
/* 8144A2B0 | 48 00 01 34 */	b .L_8144A3E4
.L_8144A2B4:
/* 8144A2B4 | A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 8144A2B8 | 3C 60 70 61 */	lis r3, 0x7061
/* 8144A2BC | 3F 00 81 67 */	lis r24, __vt__Q29textinput17AnimTransformPane@ha
/* 8144A2C0 | 3B 80 00 00 */	li r28, 0x0
/* 8144A2C4 | 7F BE 02 14 */	add r29, r30, r0
/* 8144A2C8 | 3B E3 69 31 */	addi r31, r3, 0x6931
/* 8144A2CC | 3B 18 90 50 */	addi r24, r24, __vt__Q29textinput17AnimTransformPane@l
/* 8144A2D0 | 3B 60 00 00 */	li r27, 0x0
/* 8144A2D4 | 3E E0 52 4C */	lis r23, 0x524c
/* 8144A2D8 | 48 00 00 FC */	b .L_8144A3D4
.L_8144A2DC:
/* 8144A2DC | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8144A2E0 | 7C 00 F8 00 */	cmpw r0, r31
/* 8144A2E4 | 41 82 00 08 */	beq .L_8144A2EC
/* 8144A2E8 | 48 00 00 E0 */	b .L_8144A3C8
.L_8144A2EC:
/* 8144A2EC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8144A2F0 | 38 17 54 50 */	addi r0, r23, 0x5450
/* 8144A2F4 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A2F8 | 41 82 00 68 */	beq .L_8144A360
/* 8144A2FC | 40 80 00 34 */	bge .L_8144A330
/* 8144A300 | 38 17 4D 43 */	addi r0, r23, 0x4d43
/* 8144A304 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A308 | 41 82 00 58 */	beq .L_8144A360
/* 8144A30C | 40 80 00 14 */	bge .L_8144A320
/* 8144A310 | 38 17 41 4E */	addi r0, r23, 0x414e
/* 8144A314 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A318 | 41 82 00 48 */	beq .L_8144A360
/* 8144A31C | 48 00 00 8C */	b .L_8144A3A8
.L_8144A320:
/* 8144A320 | 38 17 50 41 */	addi r0, r23, 0x5041
/* 8144A324 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A328 | 41 82 00 38 */	beq .L_8144A360
/* 8144A32C | 48 00 00 7C */	b .L_8144A3A8
.L_8144A330:
/* 8144A330 | 38 17 56 43 */	addi r0, r23, 0x5643
/* 8144A334 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A338 | 41 82 00 28 */	beq .L_8144A360
/* 8144A33C | 40 80 00 14 */	bge .L_8144A350
/* 8144A340 | 38 17 54 53 */	addi r0, r23, 0x5453
/* 8144A344 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A348 | 41 82 00 18 */	beq .L_8144A360
/* 8144A34C | 48 00 00 5C */	b .L_8144A3A8
.L_8144A350:
/* 8144A350 | 38 17 56 49 */	addi r0, r23, 0x5649
/* 8144A354 | 7C 03 00 00 */	cmpw r3, r0
/* 8144A358 | 41 82 00 08 */	beq .L_8144A360
/* 8144A35C | 48 00 00 4C */	b .L_8144A3A8
.L_8144A360:
/* 8144A360 | 80 6D AF 68 */	lwz r3, lbl_81698FA8@sda21(r0)
/* 8144A364 | 38 80 00 20 */	li r4, 0x20
/* 8144A368 | 48 11 13 01 */	bl fn_8155B668
/* 8144A36C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A370 | 7C 76 1B 78 */	mr r22, r3
/* 8144A374 | 41 82 00 0C */	beq .L_8144A380
/* 8144A378 | 48 0D F3 F9 */	bl fn_81529770
/* 8144A37C | 93 16 00 00 */	stw r24, 0x0(r22)
.L_8144A380:
/* 8144A380 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8144A384 | 41 82 00 24 */	beq .L_8144A3A8
/* 8144A388 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8144A38C | 7E C3 B3 78 */	mr r3, r22
/* 8144A390 | 7F A4 EB 78 */	mr r4, r29
/* 8144A394 | 7F 45 D3 78 */	mr r5, r26
/* 8144A398 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8144A39C | 7D 89 03 A6 */	mtctr r12
/* 8144A3A0 | 4E 80 04 21 */	bctrl
/* 8144A3A4 | 7E DC B3 78 */	mr r28, r22
.L_8144A3A8:
/* 8144A3A8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144A3AC | 41 82 00 1C */	beq .L_8144A3C8
/* 8144A3B0 | 38 19 00 08 */	addi r0, r25, 0x8
/* 8144A3B4 | 38 79 00 04 */	addi r3, r25, 0x4
/* 8144A3B8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8144A3BC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8144A3C0 | 38 BC 00 04 */	addi r5, r28, 0x4
/* 8144A3C4 | 48 0C 80 B1 */	bl fn_81512474
.L_8144A3C8:
/* 8144A3C8 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8144A3CC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8144A3D0 | 7F BD 02 14 */	add r29, r29, r0
.L_8144A3D4:
/* 8144A3D4 | A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 8144A3D8 | 7C 1B 00 00 */	cmpw r27, r0
/* 8144A3DC | 41 80 FF 00 */	blt .L_8144A2DC
/* 8144A3E0 | 7F 83 E3 78 */	mr r3, r28
.L_8144A3E4:
/* 8144A3E4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144A3E8 | 48 1A F1 11 */	bl _restgpr_22
/* 8144A3EC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144A3F0 | 7C 08 03 A6 */	mtlr r0
/* 8144A3F4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8144A3F8 | 4E 80 00 20 */	blr
.endfn CreateAnimTransform__Q29textinput8TiLayoutFPCvPQ34nw4r3lyt16ResourceAccessor

# .text:0x764 | 0x8144A3FC | size: 0xC8
# textinput::PaneAccessor::GetNextPane()
.fn GetNextPane__Q29textinput12PaneAccessorFv, global
/* 8144A3FC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144A400 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144A404 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144A408 | 40 82 00 1C */	bne .L_8144A424
/* 8144A40C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144A410 | 38 00 00 00 */	li r0, 0x0
/* 8144A414 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144A418 | 38 80 00 00 */	li r4, 0x0
/* 8144A41C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8144A420 | 48 00 00 9C */	b .L_8144A4BC
.L_8144A424:
/* 8144A424 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8144A428 | 80 05 00 10 */	lwz r0, 0x10(r5)
/* 8144A42C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144A430 | 41 82 00 1C */	beq .L_8144A44C
/* 8144A434 | 80 85 00 14 */	lwz r4, 0x14(r5)
/* 8144A438 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144A43C | 38 84 FF FC */	subi r4, r4, 0x4
/* 8144A440 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8144A444 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8144A448 | 48 00 00 74 */	b .L_8144A4BC
.L_8144A44C:
/* 8144A44C | 80 C5 00 0C */	lwz r6, 0xc(r5)
/* 8144A450 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144A454 | 48 00 00 48 */	b .L_8144A49C
.L_8144A458:
/* 8144A458 | 80 86 00 18 */	lwz r4, 0x18(r6)
/* 8144A45C | 38 04 FF FC */	subi r0, r4, 0x4
/* 8144A460 | 7C 00 28 40 */	cmplw r0, r5
/* 8144A464 | 41 82 00 30 */	beq .L_8144A494
/* 8144A468 | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 8144A46C | 48 00 00 08 */	b .L_8144A474
.L_8144A470:
/* 8144A470 | 80 84 00 00 */	lwz r4, 0x0(r4)
.L_8144A474:
/* 8144A474 | 38 04 FF FC */	subi r0, r4, 0x4
/* 8144A478 | 7C 00 28 40 */	cmplw r0, r5
/* 8144A47C | 40 82 FF F4 */	bne .L_8144A470
/* 8144A480 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144A484 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8144A488 | 38 84 FF FC */	subi r4, r4, 0x4
/* 8144A48C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8144A490 | 48 00 00 2C */	b .L_8144A4BC
.L_8144A494:
/* 8144A494 | 7C C5 33 78 */	mr r5, r6
/* 8144A498 | 80 C6 00 0C */	lwz r6, 0xc(r6)
.L_8144A49C:
/* 8144A49C | 7C 05 18 40 */	cmplw r5, r3
/* 8144A4A0 | 41 82 00 0C */	beq .L_8144A4AC
/* 8144A4A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144A4A8 | 40 82 FF B0 */	bne .L_8144A458
.L_8144A4AC:
/* 8144A4AC | 38 00 00 00 */	li r0, 0x0
/* 8144A4B0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8144A4B4 | 38 80 00 00 */	li r4, 0x0
/* 8144A4B8 | 90 01 00 0C */	stw r0, 0xc(r1)
.L_8144A4BC:
/* 8144A4BC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144A4C0 | 4E 80 00 20 */	blr
.endfn GetNextPane__Q29textinput12PaneAccessorFv

# .text:0x82C | 0x8144A4C4 | size: 0x58
# textinput::AnimTransformPane::~AnimTransformPane()
.fn __dt__Q29textinput17AnimTransformPaneFv, global
/* 8144A4C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144A4C8 | 7C 08 02 A6 */	mflr r0
/* 8144A4CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A4D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144A4D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144A4D8 | 7C 9F 23 78 */	mr r31, r4
/* 8144A4DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144A4E0 | 7C 7E 1B 78 */	mr r30, r3
/* 8144A4E4 | 41 82 00 1C */	beq .L_8144A500
/* 8144A4E8 | 38 80 00 00 */	li r4, 0x0
/* 8144A4EC | 48 0D F2 B9 */	bl fn_815297A4
/* 8144A4F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144A4F4 | 40 81 00 0C */	ble .L_8144A500
/* 8144A4F8 | 7F C3 F3 78 */	mr r3, r30
/* 8144A4FC | 48 1A DB E9 */	bl __dl__FPv
.L_8144A500:
/* 8144A500 | 7F C3 F3 78 */	mr r3, r30
/* 8144A504 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144A508 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144A50C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144A510 | 7C 08 03 A6 */	mtlr r0
/* 8144A514 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144A518 | 4E 80 00 20 */	blr
.endfn __dt__Q29textinput17AnimTransformPaneFv

# .text:0x884 | 0x8144A51C | size: 0x10
# textinput::LayoutGather::LayoutGather()
.fn __ct__Q29textinput12LayoutGatherFv, global
/* 8144A51C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8144A520 | 54 00 06 EE */	rlwinm r0, r0, 0, 27, 23
/* 8144A524 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8144A528 | 4E 80 00 20 */	blr
.endfn __ct__Q29textinput12LayoutGatherFv

# .text:0x894 | 0x8144A52C | size: 0x40
# textinput::LayoutGather::~LayoutGather()
.fn __dt__Q29textinput12LayoutGatherFv, global
/* 8144A52C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144A530 | 7C 08 02 A6 */	mflr r0
/* 8144A534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A538 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144A53C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144A540 | 7C 7F 1B 78 */	mr r31, r3
/* 8144A544 | 41 82 00 10 */	beq .L_8144A554
/* 8144A548 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144A54C | 40 81 00 08 */	ble .L_8144A554
/* 8144A550 | 48 1A DB 95 */	bl __dl__FPv
.L_8144A554:
/* 8144A554 | 7F E3 FB 78 */	mr r3, r31
/* 8144A558 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144A55C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144A560 | 7C 08 03 A6 */	mtlr r0
/* 8144A564 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144A568 | 4E 80 00 20 */	blr
.endfn __dt__Q29textinput12LayoutGatherFv

# .text:0x8D4 | 0x8144A56C | size: 0x40
# textinput::LayoutGather::changeCapsLock(const unsigned char&)
.fn changeCapsLock__Q29textinput12LayoutGatherFRCUc, global
/* 8144A56C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8144A570 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 8144A574 | 50 04 3E 30 */	rlwimi r4, r0, 7, 24, 24
/* 8144A578 | 54 80 CF FF */	extrwi. r0, r4, 1, 24
/* 8144A57C | 98 83 00 00 */	stb r4, 0x0(r3)
/* 8144A580 | 41 82 00 18 */	beq .L_8144A598
/* 8144A584 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 8144A588 | 38 80 02 00 */	li r4, 0x200
/* 8144A58C | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 8144A590 | 38 A0 02 00 */	li r5, 0x200
/* 8144A594 | 4B FF D3 BC */	b SetModifierState__Q39textinput5input10HKBManagerFUlUl
.L_8144A598:
/* 8144A598 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 8144A59C | 38 80 00 00 */	li r4, 0x0
/* 8144A5A0 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 8144A5A4 | 38 A0 02 00 */	li r5, 0x200
/* 8144A5A8 | 4B FF D3 A8 */	b SetModifierState__Q39textinput5input10HKBManagerFUlUl
.endfn changeCapsLock__Q29textinput12LayoutGatherFRCUc

# 0x81669050..0x81669070 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x81669050 | size: 0x20
# textinput::AnimTransformPane::__vtable
.obj __vt__Q29textinput17AnimTransformPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q29textinput17AnimTransformPaneFv
	.4byte SetResource__Q29textinput17AnimTransformPaneFPCQ44nw4r3lyt3res14AnimationBlockPQ34nw4r3lyt16ResourceAccessor
	.4byte Bind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4Paneb
	.4byte Bind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt8Material
	.4byte fn_81529B24
	.4byte fn_81529D98
.endobj __vt__Q29textinput17AnimTransformPane
