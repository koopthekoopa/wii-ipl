.include "macros.inc"
.file "HWKeyboard.cpp"

# 0x810C8940..0x810C8950 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8940 | size: 0x10
.obj lbl_810C8940, global
	.skip 0x10
.endobj lbl_810C8940

# 0x81448AA4..0x81449C98 | size: 0x11F4
.text
.balign 4

# .text:0x0 | 0x81448AA4 | size: 0x28
# textinput::keyboard::hwkey::HWKeyboard::HWKeyboard(textinput::Manager*)
.fn __ct__Q49textinput8keyboard5hwkey10HWKeyboardFPQ29textinput7Manager, global
/* 81448AA4 | 3C A0 81 67 */	lis r5, __vt__Q49textinput8keyboard5hwkey10HWKeyboard@ha
/* 81448AA8 | 38 00 00 00 */	li r0, 0x0
/* 81448AAC | 38 A5 8F F4 */	addi r5, r5, __vt__Q49textinput8keyboard5hwkey10HWKeyboard@l
/* 81448AB0 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81448AB4 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81448AB8 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 81448ABC | 98 03 00 14 */	stb r0, 0x14(r3)
/* 81448AC0 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81448AC4 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81448AC8 | 4E 80 00 20 */	blr
.endfn __ct__Q49textinput8keyboard5hwkey10HWKeyboardFPQ29textinput7Manager

# .text:0x28 | 0x81448ACC | size: 0xA0
# textinput::keyboard::hwkey::HWKeyboard::init()
.fn init__Q49textinput8keyboard5hwkey10HWKeyboardFv, global
/* 81448ACC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81448AD0 | 7C 08 02 A6 */	mflr r0
/* 81448AD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81448AD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81448ADC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81448AE0 | 7C 7E 1B 78 */	mr r30, r3
/* 81448AE4 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 81448AE8 | 7C 00 07 75 */	extsb. r0, r0
/* 81448AEC | 40 82 00 2C */	bne .L_81448B18
/* 81448AF0 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81448AF4 | 48 00 1A 29 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81448AF8 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 81448AFC | 3C A0 81 0D */	lis r5, lbl_810C8940@ha
/* 81448B00 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 81448B04 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81448B08 | 38 A5 89 40 */	addi r5, r5, lbl_810C8940@l
/* 81448B0C | 48 1B 04 D5 */	bl __register_global_object
/* 81448B10 | 38 00 00 01 */	li r0, 0x1
/* 81448B14 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81448B18:
/* 81448B18 | 88 8D 95 30 */	lbz r4, lbl_81697570@sda21(r0)
/* 81448B1C | 3F E0 81 0D */	lis r31, sInstance__Q39textinput5input10HKBManager@ha
/* 81448B20 | 88 0D AC BC */	lbz r0, lbl_81698CFC@sda21(r0)
/* 81448B24 | 38 7F 88 44 */	addi r3, r31, sInstance__Q39textinput5input10HKBManager@l
/* 81448B28 | 50 80 36 72 */	rlwimi r0, r4, 6, 25, 25
/* 81448B2C | 98 0D AC BC */	stb r0, lbl_81698CFC@sda21(r0)
/* 81448B30 | 4B FF ED 31 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81448B34 | 7C 60 1B 78 */	mr r0, r3
/* 81448B38 | 38 7F 88 44 */	addi r3, r31, sInstance__Q39textinput5input10HKBManager@l
/* 81448B3C | 60 04 01 00 */	ori r4, r0, 0x100
/* 81448B40 | 38 A0 07 00 */	li r5, 0x700
/* 81448B44 | 4B FF EE 0D */	bl SetModifierState__Q39textinput5input10HKBManagerFUlUl
/* 81448B48 | 38 00 00 00 */	li r0, 0x0
/* 81448B4C | 98 1E 00 15 */	stb r0, 0x15(r30)
/* 81448B50 | 98 1E 00 16 */	stb r0, 0x16(r30)
/* 81448B54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81448B58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81448B5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81448B60 | 7C 08 03 A6 */	mtlr r0
/* 81448B64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81448B68 | 4E 80 00 20 */	blr
.endfn init__Q49textinput8keyboard5hwkey10HWKeyboardFv

# .text:0xC8 | 0x81448B6C | size: 0x184
# textinput::keyboard::hwkey::HWKeyboard::updateShift(textinput::input::HKBManager&)
.fn updateShift__Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager, global
/* 81448B6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81448B70 | 7C 08 02 A6 */	mflr r0
/* 81448B74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81448B78 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81448B7C | 7C 7F 1B 78 */	mr r31, r3
/* 81448B80 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81448B84 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81448B88 | 7C 9D 23 78 */	mr r29, r4
/* 81448B8C | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 81448B90 | 7C 00 07 75 */	extsb. r0, r0
/* 81448B94 | 40 82 00 2C */	bne .L_81448BC0
/* 81448B98 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81448B9C | 48 00 19 81 */	bl __ct__Q29textinput12LayoutGatherFv
/* 81448BA0 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 81448BA4 | 3C A0 81 0D */	lis r5, lbl_810C8940@ha
/* 81448BA8 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 81448BAC | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 81448BB0 | 38 A5 89 40 */	addi r5, r5, lbl_810C8940@l
/* 81448BB4 | 48 1B 04 2D */	bl __register_global_object
/* 81448BB8 | 38 00 00 01 */	li r0, 0x1
/* 81448BBC | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_81448BC0:
/* 81448BC0 | 7F A3 EB 78 */	mr r3, r29
/* 81448BC4 | 3B AD AC BC */	li r29, lbl_81698CFC@sda21
/* 81448BC8 | 4B FF EC 99 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81448BCC | 7C 7E 1B 78 */	mr r30, r3
/* 81448BD0 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81448BD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448BD8 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81448BDC | 7D 89 03 A6 */	mtctr r12
/* 81448BE0 | 4E 80 04 21 */	bctrl
/* 81448BE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448BE8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81448BEC | 7D 89 03 A6 */	mtctr r12
/* 81448BF0 | 4E 80 04 21 */	bctrl
/* 81448BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448BF8 | 40 82 00 30 */	bne .L_81448C28
/* 81448BFC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81448C00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448C04 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81448C08 | 7D 89 03 A6 */	mtctr r12
/* 81448C0C | 4E 80 04 21 */	bctrl
/* 81448C10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448C14 | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 81448C18 | 7D 89 03 A6 */	mtctr r12
/* 81448C1C | 4E 80 04 21 */	bctrl
/* 81448C20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448C24 | 41 82 00 B0 */	beq .L_81448CD4
.L_81448C28:
/* 81448C28 | 88 7D 00 00 */	lbz r3, 0x0(r29)
/* 81448C2C | 38 80 00 01 */	li r4, 0x1
/* 81448C30 | 54 60 D7 FF */	extrwi. r0, r3, 1, 25
/* 81448C34 | 40 82 00 10 */	bne .L_81448C44
/* 81448C38 | 54 60 DF FF */	extrwi. r0, r3, 1, 26
/* 81448C3C | 40 82 00 08 */	bne .L_81448C44
/* 81448C40 | 38 80 00 00 */	li r4, 0x0
.L_81448C44:
/* 81448C44 | 57 C0 07 BD */	rlwinm. r0, r30, 0, 30, 30
/* 81448C48 | 41 82 00 3C */	beq .L_81448C84
/* 81448C4C | 88 6D 95 31 */	lbz r3, lbl_81697571@sda21(r0)
/* 81448C50 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81448C54 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81448C58 | 50 60 36 72 */	rlwimi r0, r3, 6, 25, 25
/* 81448C5C | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81448C60 | 40 82 00 74 */	bne .L_81448CD4
/* 81448C64 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81448C68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448C6C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81448C70 | 7D 89 03 A6 */	mtctr r12
/* 81448C74 | 4E 80 04 21 */	bctrl
/* 81448C78 | 38 80 00 01 */	li r4, 0x1
/* 81448C7C | 4B FC A6 51 */	bl onPressedShift__Q49textinput8keyboard6pctype12LayoutByNW4RFb
/* 81448C80 | 48 00 00 54 */	b .L_81448CD4
.L_81448C84:
/* 81448C84 | 88 0D 95 32 */	lbz r0, lbl_81697572@sda21(r0)
/* 81448C88 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81448C8C | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 81448C90 | 50 04 36 72 */	rlwimi r4, r0, 6, 25, 25
/* 81448C94 | 98 9D 00 00 */	stb r4, 0x0(r29)
/* 81448C98 | 41 82 00 3C */	beq .L_81448CD4
/* 81448C9C | 54 80 D7 FF */	extrwi. r0, r4, 1, 25
/* 81448CA0 | 38 60 00 00 */	li r3, 0x0
/* 81448CA4 | 40 82 00 0C */	bne .L_81448CB0
/* 81448CA8 | 54 80 DF FF */	extrwi. r0, r4, 1, 26
/* 81448CAC | 41 82 00 08 */	beq .L_81448CB4
.L_81448CB0:
/* 81448CB0 | 38 60 00 01 */	li r3, 0x1
.L_81448CB4:
/* 81448CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448CB8 | 40 82 00 1C */	bne .L_81448CD4
/* 81448CBC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81448CC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448CC4 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81448CC8 | 7D 89 03 A6 */	mtctr r12
/* 81448CCC | 4E 80 04 21 */	bctrl
/* 81448CD0 | 4B FC A6 C1 */	bl onReleasedShift__Q49textinput8keyboard6pctype12LayoutByNW4RFv
.L_81448CD4:
/* 81448CD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81448CD8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81448CDC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81448CE0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81448CE4 | 7C 08 03 A6 */	mtlr r0
/* 81448CE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81448CEC | 4E 80 00 20 */	blr
.endfn updateShift__Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager

# .text:0x24C | 0x81448CF0 | size: 0x1E8
# textinput::keyboard::hwkey::HWKeyboard::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager, global
/* 81448CF0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81448CF4 | 7C 08 02 A6 */	mflr r0
/* 81448CF8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81448CFC | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81448D00 | 7C 9F 23 78 */	mr r31, r4
/* 81448D04 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81448D08 | 7C 7E 1B 78 */	mr r30, r3
/* 81448D0C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81448D10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448D14 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 81448D18 | 7D 89 03 A6 */	mtctr r12
/* 81448D1C | 4E 80 04 21 */	bctrl
/* 81448D20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448D24 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81448D28 | 7D 89 03 A6 */	mtctr r12
/* 81448D2C | 4E 80 04 21 */	bctrl
/* 81448D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448D34 | 40 82 01 7C */	bne .L_81448EB0
/* 81448D38 | 7F E3 FB 78 */	mr r3, r31
/* 81448D3C | 4B FF EB 25 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81448D40 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 81448D44 | 40 82 00 0C */	bne .L_81448D50
/* 81448D48 | 38 00 00 00 */	li r0, 0x0
/* 81448D4C | 48 00 01 28 */	b .L_81448E74
.L_81448D50:
/* 81448D50 | 38 A0 00 00 */	li r5, 0x0
/* 81448D54 | 38 00 FF FF */	li r0, -0x1
/* 81448D58 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81448D5C | 7F E4 FB 78 */	mr r4, r31
/* 81448D60 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81448D64 | 98 A1 00 0C */	stb r5, 0xc(r1)
/* 81448D68 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81448D6C | 98 A1 00 0E */	stb r5, 0xe(r1)
/* 81448D70 | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 81448D74 | 4B FF ED E1 */	bl GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv
/* 81448D78 | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 81448D7C | 88 A1 00 18 */	lbz r5, 0x18(r1)
/* 81448D80 | 88 81 00 19 */	lbz r4, 0x19(r1)
/* 81448D84 | 88 61 00 1A */	lbz r3, 0x1a(r1)
/* 81448D88 | A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 81448D8C | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81448D90 | 98 A1 00 0C */	stb r5, 0xc(r1)
/* 81448D94 | 98 81 00 0D */	stb r4, 0xd(r1)
/* 81448D98 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 81448D9C | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81448DA0 | 48 00 00 C0 */	b .L_81448E60
.L_81448DA4:
/* 81448DA4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81448DA8 | 4B FF F4 E5 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 81448DAC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81448DB0 | 2C 00 00 2B */	cmpwi r0, 0x2b
/* 81448DB4 | 40 80 00 14 */	bge .L_81448DC8
/* 81448DB8 | 2C 00 00 28 */	cmpwi r0, 0x28
/* 81448DBC | 41 82 00 18 */	beq .L_81448DD4
/* 81448DC0 | 40 80 00 40 */	bge .L_81448E00
/* 81448DC4 | 48 00 00 68 */	b .L_81448E2C
.L_81448DC8:
/* 81448DC8 | 2C 00 00 58 */	cmpwi r0, 0x58
/* 81448DCC | 41 82 00 08 */	beq .L_81448DD4
/* 81448DD0 | 48 00 00 5C */	b .L_81448E2C
.L_81448DD4:
/* 81448DD4 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81448DD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448DDC | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81448DE0 | 7D 89 03 A6 */	mtctr r12
/* 81448DE4 | 4E 80 04 21 */	bctrl
/* 81448DE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448DEC | 81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 81448DF0 | 7D 89 03 A6 */	mtctr r12
/* 81448DF4 | 4E 80 04 21 */	bctrl
/* 81448DF8 | 38 00 00 01 */	li r0, 0x1
/* 81448DFC | 48 00 00 78 */	b .L_81448E74
.L_81448E00:
/* 81448E00 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81448E04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448E08 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81448E0C | 7D 89 03 A6 */	mtctr r12
/* 81448E10 | 4E 80 04 21 */	bctrl
/* 81448E14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448E18 | 81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 81448E1C | 7D 89 03 A6 */	mtctr r12
/* 81448E20 | 4E 80 04 21 */	bctrl
/* 81448E24 | 38 00 00 01 */	li r0, 0x1
/* 81448E28 | 48 00 00 4C */	b .L_81448E74
.L_81448E2C:
/* 81448E2C | 38 61 00 20 */	addi r3, r1, 0x20
/* 81448E30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81448E34 | 4B FF FA D1 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 81448E38 | 80 C1 00 20 */	lwz r6, 0x20(r1)
/* 81448E3C | 88 A1 00 24 */	lbz r5, 0x24(r1)
/* 81448E40 | 88 81 00 25 */	lbz r4, 0x25(r1)
/* 81448E44 | 88 61 00 26 */	lbz r3, 0x26(r1)
/* 81448E48 | A0 01 00 28 */	lhz r0, 0x28(r1)
/* 81448E4C | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81448E50 | 98 A1 00 0C */	stb r5, 0xc(r1)
/* 81448E54 | 98 81 00 0D */	stb r4, 0xd(r1)
/* 81448E58 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 81448E5C | B0 01 00 10 */	sth r0, 0x10(r1)
.L_81448E60:
/* 81448E60 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81448E64 | 4B FF F9 89 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81448E68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448E6C | 40 82 FF 38 */	bne .L_81448DA4
/* 81448E70 | 38 00 00 00 */	li r0, 0x0
.L_81448E74:
/* 81448E74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448E78 | 40 82 00 38 */	bne .L_81448EB0
/* 81448E7C | 7F C3 F3 78 */	mr r3, r30
/* 81448E80 | 7F E4 FB 78 */	mr r4, r31
/* 81448E84 | 48 00 00 55 */	bl updateRepeatKey___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager
/* 81448E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448E8C | 40 82 00 24 */	bne .L_81448EB0
/* 81448E90 | 7F C3 F3 78 */	mr r3, r30
/* 81448E94 | 7F E4 FB 78 */	mr r4, r31
/* 81448E98 | 48 00 03 11 */	bl updateTriggerKey___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager
/* 81448E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448EA0 | 40 82 00 10 */	bne .L_81448EB0
/* 81448EA4 | 7F C3 F3 78 */	mr r3, r30
/* 81448EA8 | 7F E4 FB 78 */	mr r4, r31
/* 81448EAC | 48 00 09 51 */	bl updateTappingShift___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager
.L_81448EB0:
/* 81448EB0 | 7F C3 F3 78 */	mr r3, r30
/* 81448EB4 | 7F E4 FB 78 */	mr r4, r31
/* 81448EB8 | 4B FF FC B5 */	bl updateShift__Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager
/* 81448EBC | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81448EC0 | 38 60 00 00 */	li r3, 0x0
/* 81448EC4 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81448EC8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81448ECC | 7C 08 03 A6 */	mtlr r0
/* 81448ED0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81448ED4 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager

# .text:0x434 | 0x81448ED8 | size: 0x2D0
# textinput::keyboard::hwkey::HWKeyboard::updateRepeatKey_(textinput::input::HKBManager&)
.fn updateRepeatKey___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager, global
/* 81448ED8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81448EDC | 7C 08 02 A6 */	mflr r0
/* 81448EE0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81448EE4 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81448EE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81448EEC | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81448EF0 | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 81448EF4 | 7C 9D 23 78 */	mr r29, r4
/* 81448EF8 | 7F A3 EB 78 */	mr r3, r29
/* 81448EFC | 4B FF E9 65 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81448F00 | 38 A0 00 00 */	li r5, 0x0
/* 81448F04 | 38 00 FF FF */	li r0, -0x1
/* 81448F08 | 90 A1 00 30 */	stw r5, 0x30(r1)
/* 81448F0C | 7C 7E 1B 78 */	mr r30, r3
/* 81448F10 | 7F A4 EB 78 */	mr r4, r29
/* 81448F14 | 38 61 00 24 */	addi r3, r1, 0x24
/* 81448F18 | 98 A1 00 34 */	stb r5, 0x34(r1)
/* 81448F1C | 98 01 00 35 */	stb r0, 0x35(r1)
/* 81448F20 | 98 A1 00 36 */	stb r5, 0x36(r1)
/* 81448F24 | B0 A1 00 38 */	sth r5, 0x38(r1)
/* 81448F28 | 4B FF EC B5 */	bl GetRepeatedKeySet__Q39textinput5input10HKBManagerCFv
/* 81448F2C | 80 E1 00 24 */	lwz r7, 0x24(r1)
/* 81448F30 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81448F34 | 88 C1 00 28 */	lbz r6, 0x28(r1)
/* 81448F38 | 88 A1 00 29 */	lbz r5, 0x29(r1)
/* 81448F3C | 88 81 00 2A */	lbz r4, 0x2a(r1)
/* 81448F40 | A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 81448F44 | 90 E1 00 30 */	stw r7, 0x30(r1)
/* 81448F48 | 98 C1 00 34 */	stb r6, 0x34(r1)
/* 81448F4C | 98 A1 00 35 */	stb r5, 0x35(r1)
/* 81448F50 | 98 81 00 36 */	stb r4, 0x36(r1)
/* 81448F54 | B0 01 00 38 */	sth r0, 0x38(r1)
/* 81448F58 | 4B FF F8 95 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81448F5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448F60 | 40 82 00 0C */	bne .L_81448F6C
/* 81448F64 | 38 60 00 00 */	li r3, 0x0
/* 81448F68 | 48 00 02 24 */	b .L_8144918C
.L_81448F6C:
/* 81448F6C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81448F70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448F74 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81448F78 | 7D 89 03 A6 */	mtctr r12
/* 81448F7C | 4E 80 04 21 */	bctrl
/* 81448F80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448F84 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81448F88 | 7D 89 03 A6 */	mtctr r12
/* 81448F8C | 4E 80 04 21 */	bctrl
/* 81448F90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448F94 | 40 82 00 38 */	bne .L_81448FCC
/* 81448F98 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81448F9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448FA0 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81448FA4 | 7D 89 03 A6 */	mtctr r12
/* 81448FA8 | 4E 80 04 21 */	bctrl
/* 81448FAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81448FB0 | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 81448FB4 | 7D 89 03 A6 */	mtctr r12
/* 81448FB8 | 4E 80 04 21 */	bctrl
/* 81448FBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448FC0 | 41 82 00 0C */	beq .L_81448FCC
/* 81448FC4 | 38 60 00 01 */	li r3, 0x1
/* 81448FC8 | 48 00 01 C4 */	b .L_8144918C
.L_81448FCC:
/* 81448FCC | 57 DD 07 38 */	rlwinm r29, r30, 0, 28, 28
/* 81448FD0 | 48 00 01 A8 */	b .L_81449178
.L_81448FD4:
/* 81448FD4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81448FD8 | 4B FF F2 B5 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 81448FDC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81448FE0 | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 81448FE4 | 41 82 00 54 */	beq .L_81449038
/* 81448FE8 | 40 80 00 28 */	bge .L_81449010
/* 81448FEC | 2C 00 00 2B */	cmpwi r0, 0x2b
/* 81448FF0 | 41 82 01 54 */	beq .L_81449144
/* 81448FF4 | 40 80 00 10 */	bge .L_81449004
/* 81448FF8 | 2C 00 00 2A */	cmpwi r0, 0x2a
/* 81448FFC | 40 80 00 5C */	bge .L_81449058
/* 81449000 | 48 00 01 44 */	b .L_81449144
.L_81449004:
/* 81449004 | 2C 00 00 2D */	cmpwi r0, 0x2d
/* 81449008 | 40 80 01 3C */	bge .L_81449144
/* 8144900C | 48 00 00 B0 */	b .L_814490BC
.L_81449010:
/* 81449010 | 2C 00 00 51 */	cmpwi r0, 0x51
/* 81449014 | 41 82 00 74 */	beq .L_81449088
/* 81449018 | 40 80 00 14 */	bge .L_8144902C
/* 8144901C | 2C 00 00 4F */	cmpwi r0, 0x4f
/* 81449020 | 41 82 00 58 */	beq .L_81449078
/* 81449024 | 40 80 00 5C */	bge .L_81449080
/* 81449028 | 48 00 01 1C */	b .L_81449144
.L_8144902C:
/* 8144902C | 2C 00 00 53 */	cmpwi r0, 0x53
/* 81449030 | 40 80 01 14 */	bge .L_81449144
/* 81449034 | 48 00 00 5C */	b .L_81449090
.L_81449038:
/* 81449038 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144903C | 7F E3 FB 78 */	mr r3, r31
/* 81449040 | 38 80 00 02 */	li r4, 0x2
/* 81449044 | 38 A0 00 00 */	li r5, 0x0
/* 81449048 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8144904C | 7D 89 03 A6 */	mtctr r12
/* 81449050 | 4E 80 04 21 */	bctrl
/* 81449054 | 48 00 00 F0 */	b .L_81449144
.L_81449058:
/* 81449058 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144905C | 7F E3 FB 78 */	mr r3, r31
/* 81449060 | 38 80 00 01 */	li r4, 0x1
/* 81449064 | 38 A0 00 00 */	li r5, 0x0
/* 81449068 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8144906C | 7D 89 03 A6 */	mtctr r12
/* 81449070 | 4E 80 04 21 */	bctrl
/* 81449074 | 48 00 00 D0 */	b .L_81449144
.L_81449078:
/* 81449078 | 38 00 00 20 */	li r0, 0x20
/* 8144907C | 48 00 00 18 */	b .L_81449094
.L_81449080:
/* 81449080 | 38 00 00 1F */	li r0, 0x1f
/* 81449084 | 48 00 00 10 */	b .L_81449094
.L_81449088:
/* 81449088 | 38 00 00 1E */	li r0, 0x1e
/* 8144908C | 48 00 00 08 */	b .L_81449094
.L_81449090:
/* 81449090 | 38 00 00 1D */	li r0, 0x1d
.L_81449094:
/* 81449094 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81449098 | 7F E3 FB 78 */	mr r3, r31
/* 8144909C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814490A0 | 38 80 00 26 */	li r4, 0x26
/* 814490A4 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 814490A8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814490AC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814490B0 | 7D 89 03 A6 */	mtctr r12
/* 814490B4 | 4E 80 04 21 */	bctrl
/* 814490B8 | 48 00 00 8C */	b .L_81449144
.L_814490BC:
/* 814490BC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814490C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814490C4 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814490C8 | 7D 89 03 A6 */	mtctr r12
/* 814490CC | 4E 80 04 21 */	bctrl
/* 814490D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814490D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814490D8 | 7D 89 03 A6 */	mtctr r12
/* 814490DC | 4E 80 04 21 */	bctrl
/* 814490E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814490E4 | 40 82 00 30 */	bne .L_81449114
/* 814490E8 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814490EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814490F0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814490F4 | 7D 89 03 A6 */	mtctr r12
/* 814490F8 | 4E 80 04 21 */	bctrl
/* 814490FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449100 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81449104 | 7D 89 03 A6 */	mtctr r12
/* 81449108 | 4E 80 04 21 */	bctrl
/* 8144910C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449110 | 40 82 00 34 */	bne .L_81449144
.L_81449114:
/* 81449114 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81449118 | 40 82 00 2C */	bne .L_81449144
/* 8144911C | 80 02 8A F8 */	lwz r0, lbl_81694EF8@sda21(r0)
/* 81449120 | 7F E3 FB 78 */	mr r3, r31
/* 81449124 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81449128 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8144912C | 38 80 00 26 */	li r4, 0x26
/* 81449130 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81449134 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81449138 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8144913C | 7D 89 03 A6 */	mtctr r12
/* 81449140 | 4E 80 04 21 */	bctrl
.L_81449144:
/* 81449144 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81449148 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8144914C | 4B FF F7 B9 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 81449150 | 80 C1 00 18 */	lwz r6, 0x18(r1)
/* 81449154 | 88 A1 00 1C */	lbz r5, 0x1c(r1)
/* 81449158 | 88 81 00 1D */	lbz r4, 0x1d(r1)
/* 8144915C | 88 61 00 1E */	lbz r3, 0x1e(r1)
/* 81449160 | A0 01 00 20 */	lhz r0, 0x20(r1)
/* 81449164 | 90 C1 00 30 */	stw r6, 0x30(r1)
/* 81449168 | 98 A1 00 34 */	stb r5, 0x34(r1)
/* 8144916C | 98 81 00 35 */	stb r4, 0x35(r1)
/* 81449170 | 98 61 00 36 */	stb r3, 0x36(r1)
/* 81449174 | B0 01 00 38 */	sth r0, 0x38(r1)
.L_81449178:
/* 81449178 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8144917C | 4B FF F6 71 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81449180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449184 | 40 82 FE 50 */	bne .L_81448FD4
/* 81449188 | 38 60 00 00 */	li r3, 0x0
.L_8144918C:
/* 8144918C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81449190 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81449194 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81449198 | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8144919C | 7C 08 03 A6 */	mtlr r0
/* 814491A0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814491A4 | 4E 80 00 20 */	blr
.endfn updateRepeatKey___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager

# .text:0x704 | 0x814491A8 | size: 0x654
# textinput::keyboard::hwkey::HWKeyboard::updateTriggerKey_(textinput::input::HKBManager&)
.fn updateTriggerKey___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager, global
/* 814491A8 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 814491AC | 7C 08 02 A6 */	mflr r0
/* 814491B0 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 814491B4 | 39 61 00 80 */	addi r11, r1, 0x80
/* 814491B8 | 48 1B 02 F9 */	bl _savegpr_23
/* 814491BC | 7C 9C 23 78 */	mr r28, r4
/* 814491C0 | 7C 7B 1B 78 */	mr r27, r3
/* 814491C4 | 7F 83 E3 78 */	mr r3, r28
/* 814491C8 | 4B FF E6 99 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 814491CC | 38 A0 00 00 */	li r5, 0x0
/* 814491D0 | 38 00 FF FF */	li r0, -0x1
/* 814491D4 | 90 A1 00 40 */	stw r5, 0x40(r1)
/* 814491D8 | 7C 7D 1B 78 */	mr r29, r3
/* 814491DC | 7F 84 E3 78 */	mr r4, r28
/* 814491E0 | 38 61 00 24 */	addi r3, r1, 0x24
/* 814491E4 | 98 A1 00 44 */	stb r5, 0x44(r1)
/* 814491E8 | 98 01 00 45 */	stb r0, 0x45(r1)
/* 814491EC | 98 A1 00 46 */	stb r5, 0x46(r1)
/* 814491F0 | B0 A1 00 48 */	sth r5, 0x48(r1)
/* 814491F4 | 4B FF E9 61 */	bl GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv
/* 814491F8 | 80 E1 00 24 */	lwz r7, 0x24(r1)
/* 814491FC | 38 61 00 40 */	addi r3, r1, 0x40
/* 81449200 | 88 C1 00 28 */	lbz r6, 0x28(r1)
/* 81449204 | 88 A1 00 29 */	lbz r5, 0x29(r1)
/* 81449208 | 88 81 00 2A */	lbz r4, 0x2a(r1)
/* 8144920C | A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 81449210 | 90 E1 00 40 */	stw r7, 0x40(r1)
/* 81449214 | 98 C1 00 44 */	stb r6, 0x44(r1)
/* 81449218 | 98 A1 00 45 */	stb r5, 0x45(r1)
/* 8144921C | 98 81 00 46 */	stb r4, 0x46(r1)
/* 81449220 | B0 01 00 48 */	sth r0, 0x48(r1)
/* 81449224 | 4B FF F5 C9 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81449228 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144922C | 40 82 00 0C */	bne .L_81449238
/* 81449230 | 38 60 00 00 */	li r3, 0x0
/* 81449234 | 48 00 05 B0 */	b .L_814497E4
.L_81449238:
/* 81449238 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8144923C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449240 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81449244 | 7D 89 03 A6 */	mtctr r12
/* 81449248 | 4E 80 04 21 */	bctrl
/* 8144924C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449250 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81449254 | 7D 89 03 A6 */	mtctr r12
/* 81449258 | 4E 80 04 21 */	bctrl
/* 8144925C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449260 | 40 82 00 38 */	bne .L_81449298
/* 81449264 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449268 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144926C | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81449270 | 7D 89 03 A6 */	mtctr r12
/* 81449274 | 4E 80 04 21 */	bctrl
/* 81449278 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144927C | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 81449280 | 7D 89 03 A6 */	mtctr r12
/* 81449284 | 4E 80 04 21 */	bctrl
/* 81449288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144928C | 41 82 00 0C */	beq .L_81449298
/* 81449290 | 38 60 00 01 */	li r3, 0x1
/* 81449294 | 48 00 05 50 */	b .L_814497E4
.L_81449298:
/* 81449298 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8144929C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814492A0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814492A4 | 7D 89 03 A6 */	mtctr r12
/* 814492A8 | 4E 80 04 21 */	bctrl
/* 814492AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814492B0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814492B4 | 7D 89 03 A6 */	mtctr r12
/* 814492B8 | 4E 80 04 21 */	bctrl
/* 814492BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814492C0 | 40 82 00 7C */	bne .L_8144933C
/* 814492C4 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 814492C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814492CC | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814492D0 | 7D 89 03 A6 */	mtctr r12
/* 814492D4 | 4E 80 04 21 */	bctrl
/* 814492D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814492DC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814492E0 | 7D 89 03 A6 */	mtctr r12
/* 814492E4 | 4E 80 04 21 */	bctrl
/* 814492E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814492EC | 41 82 00 28 */	beq .L_81449314
/* 814492F0 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 814492F4 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 814492F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814492FC | 41 82 00 18 */	beq .L_81449314
/* 81449300 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449304 | 38 80 00 0D */	li r4, 0xd
/* 81449308 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144930C | 7D 89 03 A6 */	mtctr r12
/* 81449310 | 4E 80 04 21 */	bctrl
.L_81449314:
/* 81449314 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449318 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144931C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81449320 | 7D 89 03 A6 */	mtctr r12
/* 81449324 | 4E 80 04 21 */	bctrl
/* 81449328 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144932C | 38 80 00 01 */	li r4, 0x1
/* 81449330 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81449334 | 7D 89 03 A6 */	mtctr r12
/* 81449338 | 4E 80 04 21 */	bctrl
.L_8144933C:
/* 8144933C | 3F 40 81 61 */	lis r26, lbl_81616BF0@ha
/* 81449340 | 3F E0 81 61 */	lis r31, lbl_81616BC8@ha
/* 81449344 | 3B C0 FF 70 */	li r30, -0x90
/* 81449348 | 3B FF 6B C8 */	addi r31, r31, lbl_81616BC8@l
/* 8144934C | 3B 5A 6B F0 */	addi r26, r26, lbl_81616BF0@l
/* 81449350 | 48 00 04 80 */	b .L_814497D0
.L_81449354:
/* 81449354 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81449358 | 4B FF F1 0D */	bl GetWChar__Q49textinput5input10HKBManager6KeySetCFv
/* 8144935C | 7C 79 1B 78 */	mr r25, r3
/* 81449360 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81449364 | 4B FF EF 29 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 81449368 | 57 20 04 3E */	clrlwi r0, r25, 16
/* 8144936C | 28 00 00 20 */	cmplwi r0, 0x20
/* 81449370 | 40 82 00 38 */	bne .L_814493A8
/* 81449374 | 57 A0 07 39 */	rlwinm. r0, r29, 0, 28, 28
/* 81449378 | 41 82 03 9C */	beq .L_81449714
/* 8144937C | 80 02 8B 00 */	lwz r0, lbl_81694F00@sda21(r0)
/* 81449380 | 7F 63 DB 78 */	mr r3, r27
/* 81449384 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81449388 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8144938C | 38 80 00 26 */	li r4, 0x26
/* 81449390 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81449394 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81449398 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8144939C | 7D 89 03 A6 */	mtctr r12
/* 814493A0 | 4E 80 04 21 */	bctrl
/* 814493A4 | 48 00 03 70 */	b .L_81449714
.L_814493A8:
/* 814493A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814493AC | 41 82 01 D0 */	beq .L_8144957C
/* 814493B0 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 814493B4 | 3B 00 00 01 */	li r24, 0x1
/* 814493B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814493BC | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814493C0 | 7D 89 03 A6 */	mtctr r12
/* 814493C4 | 4E 80 04 21 */	bctrl
/* 814493C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814493CC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814493D0 | 7D 89 03 A6 */	mtctr r12
/* 814493D4 | 4E 80 04 21 */	bctrl
/* 814493D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814493DC | 40 82 00 88 */	bne .L_81449464
/* 814493E0 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 814493E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814493E8 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814493EC | 7D 89 03 A6 */	mtctr r12
/* 814493F0 | 4E 80 04 21 */	bctrl
/* 814493F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814493F8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814493FC | 7D 89 03 A6 */	mtctr r12
/* 81449400 | 4E 80 04 21 */	bctrl
/* 81449404 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449408 | 41 82 00 5C */	beq .L_81449464
/* 8144940C | 57 20 04 3E */	clrlwi r0, r25, 16
/* 81449410 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81449414 | 41 82 00 4C */	beq .L_81449460
/* 81449418 | 40 80 00 10 */	bge .L_81449428
/* 8144941C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 81449420 | 40 80 00 14 */	bge .L_81449434
/* 81449424 | 48 00 00 3C */	b .L_81449460
.L_81449428:
/* 81449428 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 8144942C | 40 80 00 34 */	bge .L_81449460
/* 81449430 | 48 00 00 34 */	b .L_81449464
.L_81449434:
/* 81449434 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449438 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144943C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81449440 | 7D 89 03 A6 */	mtctr r12
/* 81449444 | 4E 80 04 21 */	bctrl
/* 81449448 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144944C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81449450 | 7D 89 03 A6 */	mtctr r12
/* 81449454 | 4E 80 04 21 */	bctrl
/* 81449458 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144945C | 40 82 00 08 */	bne .L_81449464
.L_81449460:
/* 81449460 | 3B 00 00 00 */	li r24, 0x0
.L_81449464:
/* 81449464 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81449468 | 41 82 02 AC */	beq .L_81449714
/* 8144946C | 7F 83 E3 78 */	mr r3, r28
/* 81449470 | 3B A0 00 00 */	li r29, 0x0
/* 81449474 | 4B FF E3 ED */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81449478 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 8144947C | 41 82 00 08 */	beq .L_81449484
/* 81449480 | 63 BD 00 01 */	ori r29, r29, 0x1
.L_81449484:
/* 81449484 | 7F 83 E3 78 */	mr r3, r28
/* 81449488 | 4B FF E3 D9 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 8144948C | 54 60 05 AD */	rlwinm. r0, r3, 0, 22, 22
/* 81449490 | 41 82 00 08 */	beq .L_81449498
/* 81449494 | 63 BD 00 02 */	ori r29, r29, 0x2
.L_81449498:
/* 81449498 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 8144949C | 40 82 00 24 */	bne .L_814494C0
/* 814494A0 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 814494A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814494A8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814494AC | 7D 89 03 A6 */	mtctr r12
/* 814494B0 | 4E 80 04 21 */	bctrl
/* 814494B4 | 84 03 00 20 */	lwzu r0, 0x20(r3)
/* 814494B8 | 7C 04 F0 38 */	and r4, r0, r30
/* 814494BC | 4B FC 82 B1 */	bl setABCFlag__Q59textinput8keyboard6pctype4Base8KeyStateFUl
.L_814494C0:
/* 814494C0 | 7F 63 DB 78 */	mr r3, r27
/* 814494C4 | 57 24 04 3E */	clrlwi r4, r25, 16
/* 814494C8 | 48 00 05 8D */	bl convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw
/* 814494CC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814494D0 | 54 79 04 3E */	clrlwi r25, r3, 16
/* 814494D4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814494D8 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 814494DC | 90 81 00 30 */	stw r4, 0x30(r1)
/* 814494E0 | 38 80 00 00 */	li r4, 0x0
/* 814494E4 | 80 DF 00 08 */	lwz r6, 0x8(r31)
/* 814494E8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814494EC | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814494F0 | B0 61 00 30 */	sth r3, 0x30(r1)
/* 814494F4 | 7F 63 DB 78 */	mr r3, r27
/* 814494F8 | 90 C1 00 38 */	stw r6, 0x38(r1)
/* 814494FC | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 81449500 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 81449504 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81449508 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8144950C | 7D 89 03 A6 */	mtctr r12
/* 81449510 | 4E 80 04 21 */	bctrl
/* 81449514 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449518 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144951C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81449520 | 7D 89 03 A6 */	mtctr r12
/* 81449524 | 4E 80 04 21 */	bctrl
/* 81449528 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8144952C | 40 82 01 E8 */	bne .L_81449714
/* 81449530 | 3C 79 00 01 */	addis r3, r25, 0x1
/* 81449534 | 38 03 DF E4 */	subi r0, r3, 0x201c
/* 81449538 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8144953C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81449540 | 41 81 00 18 */	bgt .L_81449558
/* 81449544 | 88 1B 00 16 */	lbz r0, 0x16(r27)
/* 81449548 | 7C 00 00 34 */	cntlzw r0, r0
/* 8144954C | 54 00 D9 7E */	srwi r0, r0, 5
/* 81449550 | 98 1B 00 16 */	stb r0, 0x16(r27)
/* 81449554 | 48 00 01 C0 */	b .L_81449714
.L_81449558:
/* 81449558 | 38 03 DF E8 */	subi r0, r3, 0x2018
/* 8144955C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81449560 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81449564 | 41 81 01 B0 */	bgt .L_81449714
/* 81449568 | 88 1B 00 15 */	lbz r0, 0x15(r27)
/* 8144956C | 7C 00 00 34 */	cntlzw r0, r0
/* 81449570 | 54 00 D9 7E */	srwi r0, r0, 5
/* 81449574 | 98 1B 00 15 */	stb r0, 0x15(r27)
/* 81449578 | 48 00 01 9C */	b .L_81449714
.L_8144957C:
/* 8144957C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81449580 | 3B 00 00 01 */	li r24, 0x1
/* 81449584 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81449588 | 40 80 00 0C */	bge .L_81449594
/* 8144958C | 3B 20 00 00 */	li r25, 0x0
/* 81449590 | 48 00 00 40 */	b .L_814495D0
.L_81449594:
/* 81449594 | 28 00 00 98 */	cmplwi r0, 0x98
/* 81449598 | 40 80 00 10 */	bge .L_814495A8
/* 8144959C | 7C 7A 02 14 */	add r3, r26, r0
/* 814495A0 | 8B 23 FF E0 */	lbz r25, -0x20(r3)
/* 814495A4 | 48 00 00 2C */	b .L_814495D0
.L_814495A8:
/* 814495A8 | 28 00 00 E0 */	cmplwi r0, 0xe0
/* 814495AC | 40 80 00 0C */	bge .L_814495B8
/* 814495B0 | 3B 20 00 00 */	li r25, 0x0
/* 814495B4 | 48 00 00 1C */	b .L_814495D0
.L_814495B8:
/* 814495B8 | 28 00 00 F0 */	cmplwi r0, 0xf0
/* 814495BC | 40 80 00 10 */	bge .L_814495CC
/* 814495C0 | 7C 7A 02 14 */	add r3, r26, r0
/* 814495C4 | 8B 23 FF 98 */	lbz r25, -0x68(r3)
/* 814495C8 | 48 00 00 08 */	b .L_814495D0
.L_814495CC:
/* 814495CC | 3B 20 00 00 */	li r25, 0x0
.L_814495D0:
/* 814495D0 | 2C 19 00 1C */	cmpwi r25, 0x1c
/* 814495D4 | 40 82 00 90 */	bne .L_81449664
/* 814495D8 | 7F 83 E3 78 */	mr r3, r28
/* 814495DC | 4B FF E2 85 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 814495E0 | 54 60 05 EE */	rlwinm r0, r3, 0, 23, 23
/* 814495E4 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 814495E8 | 7C 00 00 34 */	cntlzw r0, r0
/* 814495EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814495F0 | 54 17 D9 7E */	srwi r23, r0, 5
/* 814495F4 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814495F8 | 7D 89 03 A6 */	mtctr r12
/* 814495FC | 4E 80 04 21 */	bctrl
/* 81449600 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449604 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81449608 | 7D 89 03 A6 */	mtctr r12
/* 8144960C | 4E 80 04 21 */	bctrl
/* 81449610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449614 | 40 82 00 34 */	bne .L_81449648
/* 81449618 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8144961C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449620 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81449624 | 7D 89 03 A6 */	mtctr r12
/* 81449628 | 4E 80 04 21 */	bctrl
/* 8144962C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449630 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81449634 | 7D 89 03 A6 */	mtctr r12
/* 81449638 | 4E 80 04 21 */	bctrl
/* 8144963C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449640 | 41 82 00 08 */	beq .L_81449648
/* 81449644 | 3A E0 00 01 */	li r23, 0x1
.L_81449648:
/* 81449648 | 7C 17 00 D0 */	neg r0, r23
/* 8144964C | 7F 83 E3 78 */	mr r3, r28
/* 81449650 | 7C 00 BB 78 */	or r0, r0, r23
/* 81449654 | 38 A0 01 00 */	li r5, 0x100
/* 81449658 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 8144965C | 54 04 05 EE */	rlwinm r4, r0, 0, 23, 23
/* 81449660 | 4B FF E2 F1 */	bl SetModifierState__Q39textinput5input10HKBManagerFUlUl
.L_81449664:
/* 81449664 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449668 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144966C | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81449670 | 7D 89 03 A6 */	mtctr r12
/* 81449674 | 4E 80 04 21 */	bctrl
/* 81449678 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144967C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81449680 | 7D 89 03 A6 */	mtctr r12
/* 81449684 | 4E 80 04 21 */	bctrl
/* 81449688 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144968C | 40 82 00 5C */	bne .L_814496E8
/* 81449690 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449694 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449698 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8144969C | 7D 89 03 A6 */	mtctr r12
/* 814496A0 | 4E 80 04 21 */	bctrl
/* 814496A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814496A8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814496AC | 7D 89 03 A6 */	mtctr r12
/* 814496B0 | 4E 80 04 21 */	bctrl
/* 814496B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814496B8 | 41 82 00 30 */	beq .L_814496E8
/* 814496BC | 2C 19 00 1D */	cmpwi r25, 0x1d
/* 814496C0 | 40 80 00 18 */	bge .L_814496D8
/* 814496C4 | 2C 19 00 17 */	cmpwi r25, 0x17
/* 814496C8 | 40 80 00 1C */	bge .L_814496E4
/* 814496CC | 2C 19 00 15 */	cmpwi r25, 0x15
/* 814496D0 | 40 80 00 18 */	bge .L_814496E8
/* 814496D4 | 48 00 00 10 */	b .L_814496E4
.L_814496D8:
/* 814496D8 | 2C 19 00 21 */	cmpwi r25, 0x21
/* 814496DC | 40 80 00 08 */	bge .L_814496E4
/* 814496E0 | 48 00 00 08 */	b .L_814496E8
.L_814496E4:
/* 814496E4 | 3B 00 00 00 */	li r24, 0x0
.L_814496E8:
/* 814496E8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814496EC | 41 82 00 28 */	beq .L_81449714
/* 814496F0 | 93 21 00 08 */	stw r25, 0x8(r1)
/* 814496F4 | 7F 63 DB 78 */	mr r3, r27
/* 814496F8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814496FC | 38 80 00 26 */	li r4, 0x26
/* 81449700 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 81449704 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81449708 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8144970C | 7D 89 03 A6 */	mtctr r12
/* 81449710 | 4E 80 04 21 */	bctrl
.L_81449714:
/* 81449714 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81449718 | 4B FF EB 75 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 8144971C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81449720 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 81449724 | 41 82 00 08 */	beq .L_8144972C
/* 81449728 | 48 00 00 74 */	b .L_8144979C
.L_8144972C:
/* 8144972C | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449730 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449734 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81449738 | 7D 89 03 A6 */	mtctr r12
/* 8144973C | 4E 80 04 21 */	bctrl
/* 81449740 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449744 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81449748 | 7D 89 03 A6 */	mtctr r12
/* 8144974C | 4E 80 04 21 */	bctrl
/* 81449750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449754 | 40 82 00 30 */	bne .L_81449784
/* 81449758 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8144975C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449760 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81449764 | 7D 89 03 A6 */	mtctr r12
/* 81449768 | 4E 80 04 21 */	bctrl
/* 8144976C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449770 | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 81449774 | 7D 89 03 A6 */	mtctr r12
/* 81449778 | 4E 80 04 21 */	bctrl
/* 8144977C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449780 | 41 82 00 1C */	beq .L_8144979C
.L_81449784:
/* 81449784 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81449788 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144978C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81449790 | 7D 89 03 A6 */	mtctr r12
/* 81449794 | 4E 80 04 21 */	bctrl
/* 81449798 | 4B FC 99 C5 */	bl onPressedCaps__Q49textinput8keyboard6pctype12LayoutByNW4RFv
.L_8144979C:
/* 8144979C | 38 61 00 18 */	addi r3, r1, 0x18
/* 814497A0 | 38 81 00 40 */	addi r4, r1, 0x40
/* 814497A4 | 4B FF F1 61 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 814497A8 | 80 C1 00 18 */	lwz r6, 0x18(r1)
/* 814497AC | 88 A1 00 1C */	lbz r5, 0x1c(r1)
/* 814497B0 | 88 81 00 1D */	lbz r4, 0x1d(r1)
/* 814497B4 | 88 61 00 1E */	lbz r3, 0x1e(r1)
/* 814497B8 | A0 01 00 20 */	lhz r0, 0x20(r1)
/* 814497BC | 90 C1 00 40 */	stw r6, 0x40(r1)
/* 814497C0 | 98 A1 00 44 */	stb r5, 0x44(r1)
/* 814497C4 | 98 81 00 45 */	stb r4, 0x45(r1)
/* 814497C8 | 98 61 00 46 */	stb r3, 0x46(r1)
/* 814497CC | B0 01 00 48 */	sth r0, 0x48(r1)
.L_814497D0:
/* 814497D0 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814497D4 | 4B FF F0 19 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 814497D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814497DC | 40 82 FB 78 */	bne .L_81449354
/* 814497E0 | 38 60 00 00 */	li r3, 0x0
.L_814497E4:
/* 814497E4 | 39 61 00 80 */	addi r11, r1, 0x80
/* 814497E8 | 48 1A FD 15 */	bl _restgpr_23
/* 814497EC | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814497F0 | 7C 08 03 A6 */	mtlr r0
/* 814497F4 | 38 21 00 80 */	addi r1, r1, 0x80
/* 814497F8 | 4E 80 00 20 */	blr
.endfn updateTriggerKey___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager

# .text:0xD58 | 0x814497FC | size: 0x244
# textinput::keyboard::hwkey::HWKeyboard::updateTappingShift_(textinput::input::HKBManager&)
.fn updateTappingShift___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager, global
/* 814497FC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81449800 | 7C 08 02 A6 */	mflr r0
/* 81449804 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81449808 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8144980C | 7C 7F 1B 78 */	mr r31, r3
/* 81449810 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 81449814 | 93 A1 00 54 */	stw r29, 0x54(r1)
/* 81449818 | 7C 9D 23 78 */	mr r29, r4
/* 8144981C | 7F A3 EB 78 */	mr r3, r29
/* 81449820 | 4B FF E0 41 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81449824 | 3B C0 00 00 */	li r30, 0x0
/* 81449828 | 38 00 FF FF */	li r0, -0x1
/* 8144982C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81449830 | 7F A4 EB 78 */	mr r4, r29
/* 81449834 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81449838 | 9B C1 00 3C */	stb r30, 0x3c(r1)
/* 8144983C | 98 01 00 3D */	stb r0, 0x3d(r1)
/* 81449840 | 9B C1 00 3E */	stb r30, 0x3e(r1)
/* 81449844 | B3 C1 00 40 */	sth r30, 0x40(r1)
/* 81449848 | 4B FF E3 0D */	bl GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv
/* 8144984C | 80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 81449850 | 88 A1 00 30 */	lbz r5, 0x30(r1)
/* 81449854 | 88 81 00 31 */	lbz r4, 0x31(r1)
/* 81449858 | 88 61 00 32 */	lbz r3, 0x32(r1)
/* 8144985C | A0 01 00 34 */	lhz r0, 0x34(r1)
/* 81449860 | 90 C1 00 38 */	stw r6, 0x38(r1)
/* 81449864 | 98 A1 00 3C */	stb r5, 0x3c(r1)
/* 81449868 | 98 81 00 3D */	stb r4, 0x3d(r1)
/* 8144986C | 98 61 00 3E */	stb r3, 0x3e(r1)
/* 81449870 | B0 01 00 40 */	sth r0, 0x40(r1)
/* 81449874 | 48 00 00 70 */	b .L_814498E4
.L_81449878:
/* 81449878 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8144987C | 4B FF EA 11 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 81449880 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81449884 | 2C 00 00 E5 */	cmpwi r0, 0xe5
/* 81449888 | 41 82 00 14 */	beq .L_8144989C
/* 8144988C | 40 80 00 20 */	bge .L_814498AC
/* 81449890 | 2C 00 00 E1 */	cmpwi r0, 0xe1
/* 81449894 | 41 82 00 08 */	beq .L_8144989C
/* 81449898 | 48 00 00 14 */	b .L_814498AC
.L_8144989C:
/* 8144989C | 38 00 00 01 */	li r0, 0x1
/* 814498A0 | 38 60 00 00 */	li r3, 0x0
/* 814498A4 | 98 1F 00 14 */	stb r0, 0x14(r31)
/* 814498A8 | 48 00 01 7C */	b .L_81449A24
.L_814498AC:
/* 814498AC | 9B DF 00 14 */	stb r30, 0x14(r31)
/* 814498B0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814498B4 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814498B8 | 4B FF F0 4D */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 814498BC | 80 C1 00 20 */	lwz r6, 0x20(r1)
/* 814498C0 | 88 A1 00 24 */	lbz r5, 0x24(r1)
/* 814498C4 | 88 81 00 25 */	lbz r4, 0x25(r1)
/* 814498C8 | 88 61 00 26 */	lbz r3, 0x26(r1)
/* 814498CC | A0 01 00 28 */	lhz r0, 0x28(r1)
/* 814498D0 | 90 C1 00 38 */	stw r6, 0x38(r1)
/* 814498D4 | 98 A1 00 3C */	stb r5, 0x3c(r1)
/* 814498D8 | 98 81 00 3D */	stb r4, 0x3d(r1)
/* 814498DC | 98 61 00 3E */	stb r3, 0x3e(r1)
/* 814498E0 | B0 01 00 40 */	sth r0, 0x40(r1)
.L_814498E4:
/* 814498E4 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814498E8 | 4B FF EF 05 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 814498EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814498F0 | 40 82 FF 88 */	bne .L_81449878
/* 814498F4 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 814498F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814498FC | 40 82 00 0C */	bne .L_81449908
/* 81449900 | 38 60 00 00 */	li r3, 0x0
/* 81449904 | 48 00 01 20 */	b .L_81449A24
.L_81449908:
/* 81449908 | 7F A4 EB 78 */	mr r4, r29
/* 8144990C | 38 61 00 14 */	addi r3, r1, 0x14
/* 81449910 | 4B FF E2 89 */	bl GetReleasedKeySet__Q39textinput5input10HKBManagerCFv
/* 81449914 | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 81449918 | 88 A1 00 18 */	lbz r5, 0x18(r1)
/* 8144991C | 88 81 00 19 */	lbz r4, 0x19(r1)
/* 81449920 | 88 61 00 1A */	lbz r3, 0x1a(r1)
/* 81449924 | A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 81449928 | 90 C1 00 38 */	stw r6, 0x38(r1)
/* 8144992C | 98 A1 00 3C */	stb r5, 0x3c(r1)
/* 81449930 | 98 81 00 3D */	stb r4, 0x3d(r1)
/* 81449934 | 98 61 00 3E */	stb r3, 0x3e(r1)
/* 81449938 | B0 01 00 40 */	sth r0, 0x40(r1)
/* 8144993C | 48 00 00 D4 */	b .L_81449A10
.L_81449940:
/* 81449940 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81449944 | 4B FF E9 49 */	bl GetKey__Q49textinput5input10HKBManager6KeySetCFv
/* 81449948 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8144994C | 2C 00 00 E5 */	cmpwi r0, 0xe5
/* 81449950 | 41 82 00 14 */	beq .L_81449964
/* 81449954 | 40 80 00 88 */	bge .L_814499DC
/* 81449958 | 2C 00 00 E1 */	cmpwi r0, 0xe1
/* 8144995C | 41 82 00 08 */	beq .L_81449964
/* 81449960 | 48 00 00 7C */	b .L_814499DC
.L_81449964:
/* 81449964 | 38 00 00 00 */	li r0, 0x0
/* 81449968 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8144996C | 98 1F 00 14 */	stb r0, 0x14(r31)
/* 81449970 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449974 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81449978 | 7D 89 03 A6 */	mtctr r12
/* 8144997C | 4E 80 04 21 */	bctrl
/* 81449980 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449984 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81449988 | 7D 89 03 A6 */	mtctr r12
/* 8144998C | 4E 80 04 21 */	bctrl
/* 81449990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449994 | 41 82 00 40 */	beq .L_814499D4
/* 81449998 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8144999C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814499A0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814499A4 | 7D 89 03 A6 */	mtctr r12
/* 814499A8 | 4E 80 04 21 */	bctrl
/* 814499AC | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 814499B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814499B4 | 41 82 00 20 */	beq .L_814499D4
/* 814499B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814499BC | 7F E3 FB 78 */	mr r3, r31
/* 814499C0 | 38 80 00 2E */	li r4, 0x2e
/* 814499C4 | 38 A0 00 00 */	li r5, 0x0
/* 814499C8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814499CC | 7D 89 03 A6 */	mtctr r12
/* 814499D0 | 4E 80 04 21 */	bctrl
.L_814499D4:
/* 814499D4 | 38 60 00 00 */	li r3, 0x0
/* 814499D8 | 48 00 00 4C */	b .L_81449A24
.L_814499DC:
/* 814499DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814499E0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814499E4 | 4B FF EF 21 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 814499E8 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814499EC | 88 A1 00 0C */	lbz r5, 0xc(r1)
/* 814499F0 | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 814499F4 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 814499F8 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 814499FC | 90 C1 00 38 */	stw r6, 0x38(r1)
/* 81449A00 | 98 A1 00 3C */	stb r5, 0x3c(r1)
/* 81449A04 | 98 81 00 3D */	stb r4, 0x3d(r1)
/* 81449A08 | 98 61 00 3E */	stb r3, 0x3e(r1)
/* 81449A0C | B0 01 00 40 */	sth r0, 0x40(r1)
.L_81449A10:
/* 81449A10 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81449A14 | 4B FF ED D9 */	bl IsValid__Q49textinput5input10HKBManager6KeySetCFv
/* 81449A18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449A1C | 40 82 FF 24 */	bne .L_81449940
/* 81449A20 | 38 60 00 00 */	li r3, 0x0
.L_81449A24:
/* 81449A24 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81449A28 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 81449A2C | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 81449A30 | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 81449A34 | 7C 08 03 A6 */	mtlr r0
/* 81449A38 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81449A3C | 4E 80 00 20 */	blr
.endfn updateTappingShift___Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager

# .text:0xF9C | 0x81449A40 | size: 0x14
# textinput::keyboard::hwkey::HWKeyboard::updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn updateInput__Q49textinput8keyboard5hwkey10HWKeyboardFiffUlUlUlPv, global
/* 81449A40 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81449A44 | 4D 82 00 20 */	beqlr
/* 81449A48 | 38 00 00 00 */	li r0, 0x0
/* 81449A4C | 98 03 00 14 */	stb r0, 0x14(r3)
/* 81449A50 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput8keyboard5hwkey10HWKeyboardFiffUlUlUlPv

# .text:0xFB0 | 0x81449A54 | size: 0x20C
# textinput::keyboard::hwkey::HWKeyboard::convertWCCode(wchar_t) const
.fn convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, global
/* 81449A54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81449A58 | 7C 08 02 A6 */	mflr r0
/* 81449A5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81449A60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81449A64 | 7C 9F 23 78 */	mr r31, r4
/* 81449A68 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81449A6C | 7C 7E 1B 78 */	mr r30, r3
/* 81449A70 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81449A74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449A78 | 81 8C 00 98 */	lwz r12, 0x98(r12)
/* 81449A7C | 7D 89 03 A6 */	mtctr r12
/* 81449A80 | 4E 80 04 21 */	bctrl
/* 81449A84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449A88 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81449A8C | 7D 89 03 A6 */	mtctr r12
/* 81449A90 | 4E 80 04 21 */	bctrl
/* 81449A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449A98 | 41 82 01 AC */	beq .L_81449C44
/* 81449A9C | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81449AA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449AA4 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 81449AA8 | 7D 89 03 A6 */	mtctr r12
/* 81449AAC | 4E 80 04 21 */	bctrl
/* 81449AB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449AB4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81449AB8 | 7D 89 03 A6 */	mtctr r12
/* 81449ABC | 4E 80 04 21 */	bctrl
/* 81449AC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449AC4 | 41 82 01 80 */	beq .L_81449C44
/* 81449AC8 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81449ACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449AD0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81449AD4 | 7D 89 03 A6 */	mtctr r12
/* 81449AD8 | 4E 80 04 21 */	bctrl
/* 81449ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81449AE0 | 40 82 00 68 */	bne .L_81449B48
/* 81449AE4 | 2C 1F 00 5B */	cmpwi r31, 0x5b
/* 81449AE8 | 41 82 00 50 */	beq .L_81449B38
/* 81449AEC | 40 80 00 28 */	bge .L_81449B14
/* 81449AF0 | 2C 1F 00 2D */	cmpwi r31, 0x2d
/* 81449AF4 | 41 82 00 3C */	beq .L_81449B30
/* 81449AF8 | 40 80 00 10 */	bge .L_81449B08
/* 81449AFC | 2C 1F 00 2C */	cmpwi r31, 0x2c
/* 81449B00 | 40 80 00 20 */	bge .L_81449B20
/* 81449B04 | 48 00 01 40 */	b .L_81449C44
.L_81449B08:
/* 81449B08 | 2C 1F 00 2F */	cmpwi r31, 0x2f
/* 81449B0C | 40 80 01 38 */	bge .L_81449C44
/* 81449B10 | 48 00 00 18 */	b .L_81449B28
.L_81449B14:
/* 81449B14 | 2C 1F 00 5D */	cmpwi r31, 0x5d
/* 81449B18 | 41 82 00 28 */	beq .L_81449B40
/* 81449B1C | 48 00 01 28 */	b .L_81449C44
.L_81449B20:
/* 81449B20 | 38 60 30 01 */	li r3, 0x3001
/* 81449B24 | 48 00 01 24 */	b .L_81449C48
.L_81449B28:
/* 81449B28 | 38 60 30 02 */	li r3, 0x3002
/* 81449B2C | 48 00 01 1C */	b .L_81449C48
.L_81449B30:
/* 81449B30 | 38 60 30 FC */	li r3, 0x30fc
/* 81449B34 | 48 00 01 14 */	b .L_81449C48
.L_81449B38:
/* 81449B38 | 38 60 30 0C */	li r3, 0x300c
/* 81449B3C | 48 00 01 0C */	b .L_81449C48
.L_81449B40:
/* 81449B40 | 38 60 30 0D */	li r3, 0x300d
/* 81449B44 | 48 00 01 04 */	b .L_81449C48
.L_81449B48:
/* 81449B48 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81449B4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81449B50 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81449B54 | 7D 89 03 A6 */	mtctr r12
/* 81449B58 | 4E 80 04 21 */	bctrl
/* 81449B5C | 2C 03 00 08 */	cmpwi r3, 0x8
/* 81449B60 | 40 82 00 E4 */	bne .L_81449C44
/* 81449B64 | 38 1F FF DF */	subi r0, r31, 0x21
/* 81449B68 | 28 00 00 3E */	cmplwi r0, 0x3e
/* 81449B6C | 41 81 00 D8 */	bgt .L_81449C44
/* 81449B70 | 3C 60 81 67 */	lis r3, jumptable_81668EF8@ha
/* 81449B74 | 54 00 10 3A */	slwi r0, r0, 2
/* 81449B78 | 38 63 8E F8 */	addi r3, r3, jumptable_81668EF8@l
/* 81449B7C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81449B80 | 7C 69 03 A6 */	mtctr r3
/* 81449B84 | 4E 80 04 20 */	bctr
.L_81449B88:
/* 81449B88 | 3C 60 00 01 */	lis r3, 0x1
/* 81449B8C | 38 63 FF 0C */	subi r3, r3, 0xf4
/* 81449B90 | 48 00 00 B8 */	b .L_81449C48
.L_81449B94:
/* 81449B94 | 38 60 30 02 */	li r3, 0x3002
/* 81449B98 | 48 00 00 B0 */	b .L_81449C48
.L_81449B9C:
/* 81449B9C | 38 60 30 0A */	li r3, 0x300a
/* 81449BA0 | 48 00 00 A8 */	b .L_81449C48
.L_81449BA4:
/* 81449BA4 | 38 60 30 0B */	li r3, 0x300b
/* 81449BA8 | 48 00 00 A0 */	b .L_81449C48
.L_81449BAC:
/* 81449BAC | 3C 60 00 01 */	lis r3, 0x1
/* 81449BB0 | 38 63 FF 01 */	subi r3, r3, 0xff
/* 81449BB4 | 48 00 00 94 */	b .L_81449C48
.L_81449BB8:
/* 81449BB8 | 3C 60 00 01 */	lis r3, 0x1
/* 81449BBC | 38 63 FF 1F */	subi r3, r3, 0xe1
/* 81449BC0 | 48 00 00 88 */	b .L_81449C48
.L_81449BC4:
/* 81449BC4 | 3C 60 00 01 */	lis r3, 0x1
/* 81449BC8 | 38 63 FF 08 */	subi r3, r3, 0xf8
/* 81449BCC | 48 00 00 7C */	b .L_81449C48
.L_81449BD0:
/* 81449BD0 | 3C 60 00 01 */	lis r3, 0x1
/* 81449BD4 | 38 63 FF 09 */	subi r3, r3, 0xf7
/* 81449BD8 | 48 00 00 70 */	b .L_81449C48
.L_81449BDC:
/* 81449BDC | 3C 60 00 01 */	lis r3, 0x1
/* 81449BE0 | 38 63 FF 1A */	subi r3, r3, 0xe6
/* 81449BE4 | 48 00 00 64 */	b .L_81449C48
.L_81449BE8:
/* 81449BE8 | 3C 60 00 01 */	lis r3, 0x1
/* 81449BEC | 38 63 FF 1B */	subi r3, r3, 0xe5
/* 81449BF0 | 48 00 00 58 */	b .L_81449C48
.L_81449BF4:
/* 81449BF4 | 3C 60 00 01 */	lis r3, 0x1
/* 81449BF8 | 38 63 FF 0D */	subi r3, r3, 0xf3
/* 81449BFC | 48 00 00 4C */	b .L_81449C48
.L_81449C00:
/* 81449C00 | 3C 60 00 01 */	lis r3, 0x1
/* 81449C04 | 38 63 FF 3F */	subi r3, r3, 0xc1
/* 81449C08 | 48 00 00 40 */	b .L_81449C48
.L_81449C0C:
/* 81449C0C | 38 60 30 01 */	li r3, 0x3001
/* 81449C10 | 48 00 00 38 */	b .L_81449C48
.L_81449C14:
/* 81449C14 | 88 7E 00 15 */	lbz r3, 0x15(r30)
/* 81449C18 | 7C 03 00 D0 */	neg r0, r3
/* 81449C1C | 7C 00 1B 78 */	or r0, r0, r3
/* 81449C20 | 54 03 0F FE */	srwi r3, r0, 31
/* 81449C24 | 38 63 20 18 */	addi r3, r3, 0x2018
/* 81449C28 | 48 00 00 20 */	b .L_81449C48
.L_81449C2C:
/* 81449C2C | 88 7E 00 16 */	lbz r3, 0x16(r30)
/* 81449C30 | 7C 03 00 D0 */	neg r0, r3
/* 81449C34 | 7C 00 1B 78 */	or r0, r0, r3
/* 81449C38 | 54 03 0F FE */	srwi r3, r0, 31
/* 81449C3C | 38 63 20 1C */	addi r3, r3, 0x201c
/* 81449C40 | 48 00 00 08 */	b .L_81449C48
.L_81449C44:
/* 81449C44 | 7F E3 FB 78 */	mr r3, r31
.L_81449C48:
/* 81449C48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81449C4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81449C50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81449C54 | 7C 08 03 A6 */	mtlr r0
/* 81449C58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81449C5C | 4E 80 00 20 */	blr
.endfn convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw

# .text:0x11BC | 0x81449C60 | size: 0x38
# textinput::keyboard::hwkey::HWKeyboard::setLanguage(textinput::Destination, textinput::Language)
.fn setLanguage__Q49textinput8keyboard5hwkey10HWKeyboardFQ29textinput11DestinationQ29textinput8Language, global
/* 81449C60 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81449C64 | 40 82 00 1C */	bne .L_81449C80
/* 81449C68 | 3C 80 81 61 */	lis r4, lbl_81616BD8@ha
/* 81449C6C | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 81449C70 | 38 84 6B D8 */	addi r4, r4, lbl_81616BD8@l
/* 81449C74 | 7C 84 28 AE */	lbzx r4, r4, r5
/* 81449C78 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 81449C7C | 4B FF DC 1C */	b SetCountry__Q39textinput5input10HKBManagerFUc
.L_81449C80:
/* 81449C80 | 3C 80 81 61 */	lis r4, lbl_81616BE4@ha
/* 81449C84 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 81449C88 | 38 84 6B E4 */	addi r4, r4, lbl_81616BE4@l
/* 81449C8C | 7C 84 28 AE */	lbzx r4, r4, r5
/* 81449C90 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 81449C94 | 4B FF DC 04 */	b SetCountry__Q39textinput5input10HKBManagerFUc
.endfn setLanguage__Q49textinput8keyboard5hwkey10HWKeyboardFQ29textinput11DestinationQ29textinput8Language

# 0x81616B88..0x81616C78 | size: 0xF0
.rodata
.balign 8

# .rodata:0x0 | 0x81616B88 | size: 0x30
.obj lbl_81616B88, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816688DC
	.4byte 0x00000001
	.4byte lbl_81616A0C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616B88

# .rodata:0x30 | 0x81616BB8 | size: 0x10
.obj gap_07_81616BB8_rodata, global
.hidden gap_07_81616BB8_rodata
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj gap_07_81616BB8_rodata

# .rodata:0x40 | 0x81616BC8 | size: 0x10
.obj lbl_81616BC8, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01000000
	.4byte 0x00000000
.endobj lbl_81616BC8

# .rodata:0x50 | 0x81616BD8 | size: 0xC
.obj lbl_81616BD8, global
	.4byte 0x0F212008
	.4byte 0x090E1900
	.4byte 0x21210000
.endobj lbl_81616BD8

# .rodata:0x5C | 0x81616BE4 | size: 0xC
.obj lbl_81616BE4, global
	.4byte 0x0F212004
	.4byte 0x090E1100
	.4byte 0x21210000
.endobj lbl_81616BE4

# .rodata:0x68 | 0x81616BF0 | size: 0x88
.obj lbl_81616BF0, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x09010A03
	.4byte 0x08000000
	.4byte 0x00000000
	.4byte 0x00020000
	.4byte 0x00042122
	.4byte 0x23242526
	.4byte 0x2728292A
	.4byte 0x2B2C191A
	.4byte 0x1B131517
	.4byte 0x14161800
	.4byte 0x0000001C
	.4byte 0x00000000
	.4byte 0x09000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x10000F0E
	.4byte 0x00000000
	.4byte 0x11120000
	.4byte 0x00000000
	.4byte 0x0605070B
	.4byte 0x0605070B
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616BF0

# 0x81668EF8..0x81669050 | size: 0x158
.data
.balign 8

# .data:0x0 | 0x81668EF8 | size: 0xFC
.obj jumptable_81668EF8, local
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BAC
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C2C
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C14
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BC4
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BD0
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449B88
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BF4
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449B94
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BDC
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BE8
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449B9C
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BA4
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449BB8
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C0C
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C44
	.rel convertWCCode__Q49textinput8keyboard5hwkey10HWKeyboardCFw, .L_81449C00
.endobj jumptable_81668EF8

# .data:0xFC | 0x81668FF4 | size: 0x24
# textinput::keyboard::hwkey::HWKeyboard::__vtable
.obj __vt__Q49textinput8keyboard5hwkey10HWKeyboard, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput8keyboard5hwkey10HWKeyboardFv
	.4byte create__Q29textinput4BaseFP12MEMAllocator
	.4byte init__Q49textinput8keyboard5hwkey10HWKeyboardFv
	.4byte setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q29textinput13CommandSenderFUlPv
	.4byte updateInput__Q49textinput8keyboard5hwkey10HWKeyboardFRQ39textinput5input10HKBManager
.endobj __vt__Q49textinput8keyboard5hwkey10HWKeyboard

# .data:0x120 | 0x81669018 | size: 0x38
# textinput::TiLayout::__vtable
.obj __vt__Q29textinput8TiLayout, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q29textinput8TiLayoutFv
	.4byte fn_815201B4
	.4byte CreateAnimTransform__Q29textinput8TiLayoutFPCvPQ34nw4r3lyt16ResourceAccessor
	.4byte fn_81520638
	.4byte fn_8152065C
	.4byte fn_81520680
	.4byte fn_81520694
	.4byte fn_815206B8
	.4byte fn_815206D8
	.4byte fn_815206F8
	.4byte fn_8152077C
	.4byte 0x00000000
.endobj __vt__Q29textinput8TiLayout

# 0x81694EF8..0x81694F08 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694EF8 | size: 0x8
.obj lbl_81694EF8, global
	.4byte 0x00000008
	.4byte 0x00000000
.endobj lbl_81694EF8

# .sdata2:0x8 | 0x81694F00 | size: 0x4
.obj lbl_81694F00, global
	.4byte 0x00000008
.endobj lbl_81694F00

# .sdata2:0xC | 0x81694F04 | size: 0x4
.obj gap_09_81694F04_sdata2, global
.hidden gap_09_81694F04_sdata2
	.4byte 0x00000000
.endobj gap_09_81694F04_sdata2

# 0x81697570..0x81697578 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697570 | size: 0x1
.obj lbl_81697570, global
	.byte 0x00
.endobj lbl_81697570

# .sdata:0x1 | 0x81697571 | size: 0x1
.obj lbl_81697571, global
	.byte 0x01
.endobj lbl_81697571

# .sdata:0x2 | 0x81697572 | size: 0x6
.obj lbl_81697572, global
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
.endobj lbl_81697572
