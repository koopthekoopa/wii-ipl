.include "macros.inc"
.file "iplCSUtil.cpp"

# 0x8145C528..0x8145C668 | size: 0x140
.text
.balign 4

# .text:0x0 | 0x8145C528 | size: 0x30
# ipl::cs::util::is_valid_datap(const CHANSVmObjHdr*)
.fn is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr, global
/* 8145C528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C52C | 38 80 00 00 */	li r4, 0x0
/* 8145C530 | 41 82 00 20 */	beq .L_8145C550
/* 8145C534 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145C538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C53C | 41 82 00 14 */	beq .L_8145C550
/* 8145C540 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145C544 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145C548 | 41 82 00 08 */	beq .L_8145C550
/* 8145C54C | 38 80 00 01 */	li r4, 0x1
.L_8145C550:
/* 8145C550 | 7C 83 23 78 */	mr r3, r4
/* 8145C554 | 4E 80 00 20 */	blr
.endfn is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr

# .text:0x30 | 0x8145C558 | size: 0x90
# ipl::cs::util::is_valid_class(const CHANSVmObjHdr*, const char*)
.fn is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc, global
/* 8145C558 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8145C55C | 7C 08 02 A6 */	mflr r0
/* 8145C560 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8145C564 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8145C568 | 48 19 CF 61 */	bl _savegpr_29
/* 8145C56C | 7C 7D 1B 78 */	mr r29, r3
/* 8145C570 | 7C 9E 23 78 */	mr r30, r4
/* 8145C574 | 3B E0 00 00 */	li r31, 0x0
/* 8145C578 | 4B FF FF B1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C580 | 41 82 00 4C */	beq .L_8145C5CC
/* 8145C584 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8145C588 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145C58C | 41 82 00 40 */	beq .L_8145C5CC
/* 8145C590 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145C594 | 38 80 00 00 */	li r4, 0x0
/* 8145C598 | 38 A0 00 20 */	li r5, 0x20
/* 8145C59C | 4B ED 3D 99 */	bl memset
/* 8145C5A0 | 80 BD 00 0C */	lwz r5, 0xc(r29)
/* 8145C5A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145C5A8 | 38 80 00 20 */	li r4, 0x20
/* 8145C5AC | 80 C5 00 18 */	lwz r6, 0x18(r5)
/* 8145C5B0 | 38 A5 00 1C */	addi r5, r5, 0x1c
/* 8145C5B4 | 4B F0 85 11 */	bl memcpy_s__Q23ipl7utilityFPvUlPCvUl
/* 8145C5B8 | 7F C4 F3 78 */	mr r4, r30
/* 8145C5BC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145C5C0 | 48 1A 5E C1 */	bl strcmp
/* 8145C5C4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C5C8 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C5CC:
/* 8145C5CC | 39 61 00 40 */	addi r11, r1, 0x40
/* 8145C5D0 | 7F E3 FB 78 */	mr r3, r31
/* 8145C5D4 | 48 19 CF 41 */	bl _restgpr_29
/* 8145C5D8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8145C5DC | 7C 08 03 A6 */	mtlr r0
/* 8145C5E0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8145C5E4 | 4E 80 00 20 */	blr
.endfn is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc

# .text:0xC0 | 0x8145C5E8 | size: 0x80
# ipl::cs::util::utf16_to_ascii(char*, wchar_t*, int, const CHANSVmObjHdr*)
.fn utf16_to_ascii__Q33ipl2cs4utilFPcPwiPC13CHANSVmObjHdr, global
/* 8145C5E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C5EC | 7C 08 02 A6 */	mflr r0
/* 8145C5F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C5F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C5F8 | 48 19 CE CD */	bl _savegpr_28
/* 8145C5FC | 7C DF 33 78 */	mr r31, r6
/* 8145C600 | 7C 7C 1B 78 */	mr r28, r3
/* 8145C604 | 7C 9D 23 78 */	mr r29, r4
/* 8145C608 | 7C BE 2B 78 */	mr r30, r5
/* 8145C60C | 7F E3 FB 78 */	mr r3, r31
/* 8145C610 | 4B FF FF 19 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C618 | 41 82 00 38 */	beq .L_8145C650
/* 8145C61C | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 8145C620 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8145C624 | 40 82 00 2C */	bne .L_8145C650
/* 8145C628 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8145C62C | 7F A3 EB 78 */	mr r3, r29
/* 8145C630 | 57 C4 08 3C */	slwi r4, r30, 1
/* 8145C634 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8145C638 | 80 C6 00 04 */	lwz r6, 0x4(r6)
/* 8145C63C | 4B F0 84 89 */	bl memcpy_s__Q23ipl7utilityFPvUlPCvUl
/* 8145C640 | 7F 83 E3 78 */	mr r3, r28
/* 8145C644 | 7F A4 EB 78 */	mr r4, r29
/* 8145C648 | 7F C5 F3 78 */	mr r5, r30
/* 8145C64C | 4B F0 79 E1 */	bl UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl
.L_8145C650:
/* 8145C650 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C654 | 48 19 CE BD */	bl _restgpr_28
/* 8145C658 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C65C | 7C 08 03 A6 */	mtlr r0
/* 8145C660 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C664 | 4E 80 00 20 */	blr
.endfn utf16_to_ascii__Q33ipl2cs4utilFPcPwiPC13CHANSVmObjHdr
