.include "macros.inc"
.file "iplButton.cpp"

# 0x8139BC94..0x8139DA5C | size: 0x1DC8
.text
.balign 4

# .text:0x0 | 0x8139BC94 | size: 0xC8
# ipl::scene::Button::Button(EGG::Heap*)
.fn __ct__Q33ipl5scene6ButtonFPQ23EGG4Heap, global
/* 8139BC94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139BC98 | 7C 08 02 A6 */	mflr r0
/* 8139BC9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139BCA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139BCA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139BCA8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139BCAC | 48 06 DF 41 */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8139BCB0 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene6Button@ha
/* 8139BCB4 | 3B E0 00 00 */	li r31, 0x0
/* 8139BCB8 | 38 84 C2 30 */	addi r4, r4, __vt__Q33ipl5scene6Button@l
/* 8139BCBC | 93 FE 00 54 */	stw r31, 0x54(r30)
/* 8139BCC0 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 8139BCC4 | 38 7E 00 64 */	addi r3, r30, 0x64
/* 8139BCC8 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 8139BCCC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8139BCD0 | 48 00 17 C5 */	bl __ct__Q33ipl5scene12OptOutButtonFv
/* 8139BCD4 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 8139BCD8 | 48 04 EC E5 */	bl iplUnk1_813EA9BC
/* 8139BCDC | 38 60 00 08 */	li r3, 0x8
/* 8139BCE0 | 38 00 00 02 */	li r0, 0x2
/* 8139BCE4 | 9B FE 01 04 */	stb r31, 0x104(r30)
/* 8139BCE8 | 38 A0 00 00 */	li r5, 0x0
/* 8139BCEC | 38 80 00 01 */	li r4, 0x1
/* 8139BCF0 | 9B FE 01 05 */	stb r31, 0x105(r30)
/* 8139BCF4 | 90 7E 01 74 */	stw r3, 0x174(r30)
/* 8139BCF8 | 93 FE 01 78 */	stw r31, 0x178(r30)
/* 8139BCFC | 93 FE 01 7C */	stw r31, 0x17c(r30)
/* 8139BD00 | 93 FE 01 80 */	stw r31, 0x180(r30)
/* 8139BD04 | 7C 09 03 A6 */	mtctr r0
.L_8139BD08:
/* 8139BD08 | 7C 7E 2A 14 */	add r3, r30, r5
/* 8139BD0C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8139BD10 | 98 83 00 D4 */	stb r4, 0xd4(r3)
/* 8139BD14 | 42 00 FF F4 */	bdnz .L_8139BD08
/* 8139BD18 | 38 00 00 0B */	li r0, 0xb
/* 8139BD1C | 38 A0 00 00 */	li r5, 0x0
/* 8139BD20 | 38 60 00 00 */	li r3, 0x0
/* 8139BD24 | 7C 09 03 A6 */	mtctr r0
.L_8139BD28:
/* 8139BD28 | 7C 9E 1A 14 */	add r4, r30, r3
/* 8139BD2C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8139BD30 | 90 A4 00 D8 */	stw r5, 0xd8(r4)
/* 8139BD34 | 42 00 FF F4 */	bdnz .L_8139BD28
/* 8139BD38 | 38 00 00 01 */	li r0, 0x1
/* 8139BD3C | 7F C3 F3 78 */	mr r3, r30
/* 8139BD40 | 98 1E 01 10 */	stb r0, 0x110(r30)
/* 8139BD44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139BD48 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139BD4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139BD50 | 7C 08 03 A6 */	mtlr r0
/* 8139BD54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139BD58 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene6ButtonFPQ23EGG4Heap

# .text:0xC8 | 0x8139BD5C | size: 0x68
# ipl::scene::Button::~Button()
.fn __dt__Q33ipl5scene6ButtonFv, global
/* 8139BD5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139BD60 | 7C 08 02 A6 */	mflr r0
/* 8139BD64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139BD68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139BD6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139BD70 | 7C 9F 23 78 */	mr r31, r4
/* 8139BD74 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139BD78 | 7C 7E 1B 78 */	mr r30, r3
/* 8139BD7C | 41 82 00 2C */	beq .L_8139BDA8
/* 8139BD80 | 38 80 FF FF */	li r4, -0x1
/* 8139BD84 | 38 63 00 70 */	addi r3, r3, 0x70
/* 8139BD88 | 48 04 EC 51 */	bl iplUnk1_813EA9D8
/* 8139BD8C | 7F C3 F3 78 */	mr r3, r30
/* 8139BD90 | 38 80 00 00 */	li r4, 0x0
/* 8139BD94 | 48 06 DE D1 */	bl __dt__Q33ipl5scene4BaseFv
/* 8139BD98 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8139BD9C | 40 81 00 0C */	ble .L_8139BDA8
/* 8139BDA0 | 7F C3 F3 78 */	mr r3, r30
/* 8139BDA4 | 48 25 C3 41 */	bl __dl__FPv
.L_8139BDA8:
/* 8139BDA8 | 7F C3 F3 78 */	mr r3, r30
/* 8139BDAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139BDB0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139BDB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139BDB8 | 7C 08 03 A6 */	mtlr r0
/* 8139BDBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139BDC0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene6ButtonFv

# .text:0x130 | 0x8139BDC4 | size: 0x70
# ipl::scene::Button::prepare()
.fn prepare__Q33ipl5scene6ButtonFv, global
/* 8139BDC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139BDC8 | 7C 08 02 A6 */	mflr r0
/* 8139BDCC | 3C A0 81 65 */	lis r5, lbl_8164BFF9@ha
/* 8139BDD0 | 38 C0 00 00 */	li r6, 0x0
/* 8139BDD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139BDD8 | 38 A5 BF F9 */	addi r5, r5, lbl_8164BFF9@l
/* 8139BDDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139BDE0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139BDE4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139BDE8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139BDEC | 7C 7E 1B 78 */	mr r30, r3
/* 8139BDF0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8139BDF4 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8139BDF8 | 4B FA 1A BD */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 8139BDFC | 90 7E 00 5C */	stw r3, 0x5c(r30)
/* 8139BE00 | 3C A0 81 65 */	lis r5, lbl_8164C004@ha
/* 8139BE04 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8139BE08 | 38 A5 C0 04 */	addi r5, r5, lbl_8164C004@l
/* 8139BE0C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8139BE10 | 38 C0 00 00 */	li r6, 0x0
/* 8139BE14 | 4B FA 1A A1 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 8139BE18 | 90 7E 00 98 */	stw r3, 0x98(r30)
/* 8139BE1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139BE20 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139BE24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139BE28 | 7C 08 03 A6 */	mtlr r0
/* 8139BE2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139BE30 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene6ButtonFv

# .text:0x1A0 | 0x8139BE34 | size: 0x47C
# ipl::scene::Button::create()
.fn create__Q33ipl5scene6ButtonFv, global
/* 8139BE34 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8139BE38 | 7C 08 02 A6 */	mflr r0
/* 8139BE3C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8139BE40 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8139BE44 | 48 25 D6 71 */	bl _savegpr_24
/* 8139BE48 | 3F E0 81 65 */	lis r31, lbl_8164BF48@ha
/* 8139BE4C | 7C 7E 1B 78 */	mr r30, r3
/* 8139BE50 | 3B FF BF 48 */	addi r31, r31, lbl_8164BF48@l
/* 8139BE54 | 38 60 05 80 */	li r3, 0x580
/* 8139BE58 | 48 25 C2 45 */	bl __nw__FUl
/* 8139BE5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139BE60 | 41 82 00 18 */	beq .L_8139BE78
/* 8139BE64 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8139BE68 | 38 FF 00 C8 */	addi r7, r31, 0xc8
/* 8139BE6C | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 8139BE70 | 38 CD 87 44 */	li r6, lbl_81696784@sda21
/* 8139BE74 | 4B FC E1 B1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8139BE78:
/* 8139BE78 | 90 7E 00 58 */	stw r3, 0x58(r30)
/* 8139BE7C | 3B 7F 00 70 */	addi r27, r31, 0x70
/* 8139BE80 | 3B 20 00 00 */	li r25, 0x0
/* 8139BE84 | 3B A0 00 00 */	li r29, 0x0
.L_8139BE88:
/* 8139BE88 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BE8C | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BE90 | 7C BB E8 2E */	lwzx r5, r27, r29
/* 8139BE94 | 38 C0 00 00 */	li r6, 0x0
/* 8139BE98 | 38 E0 00 01 */	li r7, 0x1
/* 8139BE9C | 4B FC E6 45 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BEA0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8139BEA4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8139BEA8 | 2C 19 00 0B */	cmpwi r25, 0xb
/* 8139BEAC | 41 80 FF DC */	blt .L_8139BE88
/* 8139BEB0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BEB4 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BEB8 | 38 BF 00 EC */	addi r5, r31, 0xec
/* 8139BEBC | 38 C0 00 00 */	li r6, 0x0
/* 8139BEC0 | 38 E0 00 01 */	li r7, 0x1
/* 8139BEC4 | 4B FC E6 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BEC8 | 90 7E 00 9C */	stw r3, 0x9c(r30)
/* 8139BECC | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BED0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BED4 | 38 BF 00 F9 */	addi r5, r31, 0xf9
/* 8139BED8 | 38 C0 00 00 */	li r6, 0x0
/* 8139BEDC | 38 E0 00 01 */	li r7, 0x1
/* 8139BEE0 | 4B FC E6 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BEE4 | 90 7E 00 A0 */	stw r3, 0xa0(r30)
/* 8139BEE8 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BEEC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BEF0 | 38 BF 01 03 */	addi r5, r31, 0x103
/* 8139BEF4 | 38 C0 00 00 */	li r6, 0x0
/* 8139BEF8 | 38 E0 00 01 */	li r7, 0x1
/* 8139BEFC | 4B FC E5 E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BF00 | 90 7E 00 A4 */	stw r3, 0xa4(r30)
/* 8139BF04 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BF08 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BF0C | 38 BF 01 0D */	addi r5, r31, 0x10d
/* 8139BF10 | 38 C0 00 00 */	li r6, 0x0
/* 8139BF14 | 38 E0 00 01 */	li r7, 0x1
/* 8139BF18 | 4B FC E5 C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BF1C | 90 7E 00 A8 */	stw r3, 0xa8(r30)
/* 8139BF20 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BF24 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BF28 | 38 BF 01 19 */	addi r5, r31, 0x119
/* 8139BF2C | 38 C0 00 00 */	li r6, 0x0
/* 8139BF30 | 38 E0 00 01 */	li r7, 0x1
/* 8139BF34 | 4B FC E5 AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BF38 | 90 7E 00 AC */	stw r3, 0xac(r30)
/* 8139BF3C | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BF40 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BF44 | 38 BF 01 25 */	addi r5, r31, 0x125
/* 8139BF48 | 38 C0 00 00 */	li r6, 0x0
/* 8139BF4C | 38 E0 00 01 */	li r7, 0x1
/* 8139BF50 | 4B FC E5 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BF54 | 90 7E 00 B0 */	stw r3, 0xb0(r30)
/* 8139BF58 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BF5C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BF60 | 38 BF 01 30 */	addi r5, r31, 0x130
/* 8139BF64 | 38 C0 00 00 */	li r6, 0x0
/* 8139BF68 | 38 E0 00 01 */	li r7, 0x1
/* 8139BF6C | 4B FC E5 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BF70 | 90 7E 00 B4 */	stw r3, 0xb4(r30)
/* 8139BF74 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BF78 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BF7C | 38 BF 01 3B */	addi r5, r31, 0x13b
/* 8139BF80 | 38 C0 00 00 */	li r6, 0x0
/* 8139BF84 | 38 E0 00 01 */	li r7, 0x1
/* 8139BF88 | 4B FC E5 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BF8C | 90 7E 00 B8 */	stw r3, 0xb8(r30)
/* 8139BF90 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BF94 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BF98 | 38 AD 87 48 */	li r5, lbl_81696788@sda21
/* 8139BF9C | 38 C0 00 00 */	li r6, 0x0
/* 8139BFA0 | 38 E0 00 01 */	li r7, 0x1
/* 8139BFA4 | 4B FC E5 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BFA8 | 90 7E 00 BC */	stw r3, 0xbc(r30)
/* 8139BFAC | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BFB0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BFB4 | 38 AD 87 4F */	li r5, lbl_8169678F@sda21
/* 8139BFB8 | 38 C0 00 00 */	li r6, 0x0
/* 8139BFBC | 38 E0 00 01 */	li r7, 0x1
/* 8139BFC0 | 4B FC E5 21 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BFC4 | 90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 8139BFC8 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BFCC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BFD0 | 38 AD 87 57 */	li r5, lbl_81696797@sda21
/* 8139BFD4 | 38 C0 00 00 */	li r6, 0x0
/* 8139BFD8 | 38 E0 00 01 */	li r7, 0x1
/* 8139BFDC | 4B FC E5 05 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BFE0 | 90 7E 00 C4 */	stw r3, 0xc4(r30)
/* 8139BFE4 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139BFE8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139BFEC | 38 AD 87 5F */	li r5, lbl_8169679F@sda21
/* 8139BFF0 | 38 C0 00 00 */	li r6, 0x0
/* 8139BFF4 | 38 E0 00 01 */	li r7, 0x1
/* 8139BFF8 | 4B FC E4 E9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139BFFC | 90 7E 00 C8 */	stw r3, 0xc8(r30)
/* 8139C000 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139C004 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C008 | 38 BF 01 45 */	addi r5, r31, 0x145
/* 8139C00C | 38 C0 00 00 */	li r6, 0x0
/* 8139C010 | 38 E0 00 01 */	li r7, 0x1
/* 8139C014 | 4B FC E4 CD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139C018 | 90 7E 00 CC */	stw r3, 0xcc(r30)
/* 8139C01C | 38 82 84 A8 */	li r4, scNewArvAnmFrame__Q23ipl5scene@sda21
/* 8139C020 | C0 02 84 C0 */	lfs f0, lbl_816948C0@sda21(r0)
/* 8139C024 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8139C028 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139C02C | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8139C030 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139C034 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8139C038 | 4B FC DB ED */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8139C03C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C040 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139C044 | 38 BF 01 51 */	addi r5, r31, 0x151
/* 8139C048 | 38 C0 00 00 */	li r6, 0x0
/* 8139C04C | 38 E0 00 01 */	li r7, 0x1
/* 8139C050 | 4B FC E4 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139C054 | 90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 8139C058 | 38 82 84 B0 */	li r4, scLoopAnmFrame__Q23ipl5scene@sda21
/* 8139C05C | C0 02 84 C0 */	lfs f0, lbl_816948C0@sda21(r0)
/* 8139C060 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8139C064 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139C068 | 80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 8139C06C | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139C070 | 80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 8139C074 | 4B FC DB B1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8139C078 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C07C | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8139C080 | 38 BF 01 61 */	addi r5, r31, 0x161
/* 8139C084 | 38 C0 00 00 */	li r6, 0x0
/* 8139C088 | 38 E0 00 01 */	li r7, 0x1
/* 8139C08C | 4B FC E4 55 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139C090 | C0 02 84 B8 */	lfs f0, lbl_816948B8@sda21(r0)
/* 8139C094 | 38 82 84 B8 */	li r4, lbl_816948B8@sda21
/* 8139C098 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8139C09C | 38 00 00 02 */	li r0, 0x2
/* 8139C0A0 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139C0A4 | 7C 79 1B 78 */	mr r25, r3
/* 8139C0A8 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139C0AC | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8139C0B0 | 4B FC 67 C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139C0B4 | 38 00 00 01 */	li r0, 0x1
/* 8139C0B8 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 8139C0BC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C0C0 | 4B FC E5 75 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8139C0C4 | 38 60 00 34 */	li r3, 0x34
/* 8139C0C8 | 48 25 BF D5 */	bl __nw__FUl
/* 8139C0CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C0D0 | 41 82 00 20 */	beq .L_8139C0F0
/* 8139C0D4 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 8139C0D8 | 38 80 00 00 */	li r4, 0x0
/* 8139C0DC | 38 C0 00 00 */	li r6, 0x0
/* 8139C0E0 | 38 E0 00 00 */	li r7, 0x0
/* 8139C0E4 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 8139C0E8 | 39 00 00 00 */	li r8, 0x0
/* 8139C0EC | 4B FA 8F 85 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_8139C0F0:
/* 8139C0F0 | 90 7E 00 60 */	stw r3, 0x60(r30)
/* 8139C0F4 | 80 9E 00 58 */	lwz r4, 0x58(r30)
/* 8139C0F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C0FC | 38 84 00 04 */	addi r4, r4, 0x4
/* 8139C100 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8139C104 | 7D 89 03 A6 */	mtctr r12
/* 8139C108 | 4E 80 04 21 */	bctrl
/* 8139C10C | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8139C110 | 38 80 00 00 */	li r4, 0x0
/* 8139C114 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C118 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139C11C | 7D 89 03 A6 */	mtctr r12
/* 8139C120 | 4E 80 04 21 */	bctrl
/* 8139C124 | 3B 7F 00 14 */	addi r27, r31, 0x14
/* 8139C128 | 3B 20 00 00 */	li r25, 0x0
/* 8139C12C | 3B A0 00 00 */	li r29, 0x0
.L_8139C130:
/* 8139C130 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C134 | 38 A0 00 01 */	li r5, 0x1
/* 8139C138 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 8139C13C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139C140 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C144 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139C148 | 7D 89 03 A6 */	mtctr r12
/* 8139C14C | 4E 80 04 21 */	bctrl
/* 8139C150 | 7C 64 1B 78 */	mr r4, r3
/* 8139C154 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8139C158 | 38 A0 00 01 */	li r5, 0x1
/* 8139C15C | 4B FC F0 71 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8139C160 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8139C164 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8139C168 | 2C 19 00 0B */	cmpwi r25, 0xb
/* 8139C16C | 41 80 FF C4 */	blt .L_8139C130
/* 8139C170 | 3B 20 00 00 */	li r25, 0x0
/* 8139C174 | 3B A0 00 00 */	li r29, 0x0
/* 8139C178 | 3B 6D 87 3C */	li r27, lbl_8169677C@sda21
.L_8139C17C:
/* 8139C17C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C180 | 38 A0 00 01 */	li r5, 0x1
/* 8139C184 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 8139C188 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139C18C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C190 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139C194 | 7D 89 03 A6 */	mtctr r12
/* 8139C198 | 4E 80 04 21 */	bctrl
/* 8139C19C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8139C1A0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8139C1A4 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 8139C1A8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8139C1AC | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8139C1B0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8139C1B4 | 41 80 FF C8 */	blt .L_8139C17C
/* 8139C1B8 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 8139C1BC | 3F 80 81 61 */	lis r28, lbl_8160F9C8@ha
/* 8139C1C0 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 8139C1C4 | 3B 00 00 00 */	li r24, 0x0
/* 8139C1C8 | 3B 9C F9 C8 */	addi r28, r28, lbl_8160F9C8@l
/* 8139C1CC | 3B A0 00 00 */	li r29, 0x0
.L_8139C1D0:
/* 8139C1D0 | 38 60 00 3C */	li r3, 0x3c
/* 8139C1D4 | 48 25 BE C9 */	bl __nw__FUl
/* 8139C1D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C1DC | 7C 7A 1B 78 */	mr r26, r3
/* 8139C1E0 | 41 82 00 44 */	beq .L_8139C224
/* 8139C1E4 | C0 22 84 C0 */	lfs f1, lbl_816948C0@sda21(r0)
/* 8139C1E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139C1EC | 83 3E 00 24 */	lwz r25, 0x24(r30)
/* 8139C1F0 | FC 40 08 90 */	fmr f2, f1
/* 8139C1F4 | FC 60 08 90 */	fmr f3, f1
/* 8139C1F8 | 4B FC 68 65 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8139C1FC | 80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8139C200 | 7C 68 1B 78 */	mr r8, r3
/* 8139C204 | C0 22 84 C4 */	lfs f1, lbl_816948C4@sda21(r0)
/* 8139C208 | 7F 43 D3 78 */	mr r3, r26
/* 8139C20C | C0 42 84 C8 */	lfs f2, lbl_816948C8@sda21(r0)
/* 8139C210 | 7F 24 CB 78 */	mr r4, r25
/* 8139C214 | 38 FF 01 6B */	addi r7, r31, 0x16b
/* 8139C218 | 38 CD 87 44 */	li r6, lbl_81696784@sda21
/* 8139C21C | 48 03 51 F1 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 8139C220 | 7C 7A 1B 78 */	mr r26, r3
.L_8139C224:
/* 8139C224 | 7F 3E EA 14 */	add r25, r30, r29
/* 8139C228 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 8139C22C | 93 59 00 84 */	stw r26, 0x84(r25)
/* 8139C230 | 80 7B 00 80 */	lwz r3, 0x80(r27)
/* 8139C234 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139C238 | 4B FA 25 85 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139C23C | 7C 64 1B 78 */	mr r4, r3
/* 8139C240 | 80 79 00 84 */	lwz r3, 0x84(r25)
/* 8139C244 | 38 A0 00 00 */	li r5, 0x0
/* 8139C248 | 48 03 53 B9 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 8139C24C | 80 79 00 84 */	lwz r3, 0x84(r25)
/* 8139C250 | 38 A0 00 00 */	li r5, 0x0
/* 8139C254 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8139C258 | 48 03 5A 51 */	bl set_textbox__Q33ipl5scene11TextBalloonFPCw
/* 8139C25C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8139C260 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8139C264 | 2C 18 00 05 */	cmpwi r24, 0x5
/* 8139C268 | 41 80 FF 68 */	blt .L_8139C1D0
/* 8139C26C | 7F C3 F3 78 */	mr r3, r30
/* 8139C270 | 48 00 0E 01 */	bl stopMailNumAnm__Q33ipl5scene6ButtonFv
/* 8139C274 | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 8139C278 | 38 7E 00 64 */	addi r3, r30, 0x64
/* 8139C27C | 80 BE 00 24 */	lwz r5, 0x24(r30)
/* 8139C280 | 48 00 12 29 */	bl create__Q33ipl5scene12OptOutButtonFPQ33ipl4nand10LayoutFilePQ23EGG4Heap
/* 8139C284 | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 8139C288 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 8139C28C | 80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8139C290 | 80 DE 00 24 */	lwz r6, 0x24(r30)
/* 8139C294 | 48 04 E7 85 */	bl iplUnk1_813EAA18
/* 8139C298 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8139C29C | 48 25 D2 65 */	bl _restgpr_24
/* 8139C2A0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8139C2A4 | 7C 08 03 A6 */	mtlr r0
/* 8139C2A8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8139C2AC | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene6ButtonFv

# .text:0x61C | 0x8139C2B0 | size: 0x1EC
# ipl::scene::Button::calc()
.fn calc__Q33ipl5scene6ButtonFv, global
/* 8139C2B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139C2B4 | 7C 08 02 A6 */	mflr r0
/* 8139C2B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139C2BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139C2C0 | 48 25 D2 09 */	bl _savegpr_29
/* 8139C2C4 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 8139C2C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8139C2CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C2D0 | 41 82 00 C4 */	beq .L_8139C394
/* 8139C2D4 | 40 80 01 1C */	bge .L_8139C3F0
/* 8139C2D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C2DC | 40 80 00 08 */	bge .L_8139C2E4
/* 8139C2E0 | 48 00 01 10 */	b .L_8139C3F0
.L_8139C2E4:
/* 8139C2E4 | 80 03 01 78 */	lwz r0, 0x178(r3)
/* 8139C2E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C2EC | 41 82 01 04 */	beq .L_8139C3F0
/* 8139C2F0 | 80 03 01 7C */	lwz r0, 0x17c(r3)
/* 8139C2F4 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8139C2F8 | 7C A3 02 14 */	add r5, r3, r0
/* 8139C2FC | 80 05 01 14 */	lwz r0, 0x114(r5)
/* 8139C300 | 80 85 01 18 */	lwz r4, 0x118(r5)
/* 8139C304 | 80 C5 01 1C */	lwz r6, 0x11c(r5)
/* 8139C308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C30C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8139C310 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8139C314 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 8139C318 | 40 82 00 0C */	bne .L_8139C324
/* 8139C31C | 48 00 08 3D */	bl iplButton_8139CB58
/* 8139C320 | 48 00 00 38 */	b .L_8139C358
.L_8139C324:
/* 8139C324 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139C328 | 54 80 10 3A */	slwi r0, r4, 2
/* 8139C32C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139C330 | 38 AD 87 28 */	li r5, lbl_81696768@sda21
/* 8139C334 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 8139C338 | 7C C4 33 78 */	mr r4, r6
/* 8139C33C | 7F C5 00 2E */	lwzx r30, r5, r0
/* 8139C340 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139C344 | 4B FA 24 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139C348 | 7C 65 1B 78 */	mr r5, r3
/* 8139C34C | 7F E3 FB 78 */	mr r3, r31
/* 8139C350 | 7F C4 F3 78 */	mr r4, r30
/* 8139C354 | 48 00 06 A5 */	bl setText__Q33ipl5scene6ButtonFPCcPCw
.L_8139C358:
/* 8139C358 | 80 1F 01 78 */	lwz r0, 0x178(r31)
/* 8139C35C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C360 | 41 82 00 90 */	beq .L_8139C3F0
/* 8139C364 | 80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8139C368 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8139C36C | 38 63 00 01 */	addi r3, r3, 0x1
/* 8139C370 | 7C 03 00 00 */	cmpw r3, r0
/* 8139C374 | 90 7F 01 7C */	stw r3, 0x17c(r31)
/* 8139C378 | 41 80 00 0C */	blt .L_8139C384
/* 8139C37C | 38 00 00 00 */	li r0, 0x0
/* 8139C380 | 90 1F 01 7C */	stw r0, 0x17c(r31)
.L_8139C384:
/* 8139C384 | 80 7F 01 78 */	lwz r3, 0x178(r31)
/* 8139C388 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139C38C | 90 1F 01 78 */	stw r0, 0x178(r31)
/* 8139C390 | 48 00 00 60 */	b .L_8139C3F0
.L_8139C394:
/* 8139C394 | 80 83 00 9C */	lwz r4, 0x9c(r3)
/* 8139C398 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8139C39C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C3A0 | 41 82 00 50 */	beq .L_8139C3F0
/* 8139C3A4 | 80 83 00 B8 */	lwz r4, 0xb8(r3)
/* 8139C3A8 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8139C3AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C3B0 | 41 82 00 40 */	beq .L_8139C3F0
/* 8139C3B4 | 80 83 00 C0 */	lwz r4, 0xc0(r3)
/* 8139C3B8 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8139C3BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C3C0 | 41 82 00 30 */	beq .L_8139C3F0
/* 8139C3C4 | 80 83 00 BC */	lwz r4, 0xbc(r3)
/* 8139C3C8 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8139C3CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C3D0 | 41 82 00 20 */	beq .L_8139C3F0
/* 8139C3D4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139C3D8 | 38 80 FF FF */	li r4, -0x1
/* 8139C3DC | 4B FC E6 F5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 8139C3E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C3E4 | 40 82 00 0C */	bne .L_8139C3F0
/* 8139C3E8 | 38 00 00 00 */	li r0, 0x0
/* 8139C3EC | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_8139C3F0:
/* 8139C3F0 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8139C3F4 | 4B FC E3 11 */	bl calc__Q33ipl6layout6ObjectFv
/* 8139C3F8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8139C3FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C400 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8139C404 | 7D 89 03 A6 */	mtctr r12
/* 8139C408 | 4E 80 04 21 */	bctrl
/* 8139C40C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139C410 | 4B FC E2 F5 */	bl calc__Q33ipl6layout6ObjectFv
/* 8139C414 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139C418 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139C41C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8139C420 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C424 | 40 82 00 0C */	bne .L_8139C430
/* 8139C428 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 8139C42C | 48 04 E9 5D */	bl iplUnk1_813EAD88
.L_8139C430:
/* 8139C430 | 3B A0 00 00 */	li r29, 0x0
/* 8139C434 | 3B C0 00 00 */	li r30, 0x0
.L_8139C438:
/* 8139C438 | 7C 7F F2 14 */	add r3, r31, r30
/* 8139C43C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8139C440 | 48 03 51 6D */	bl calc__Q33ipl5scene11TextBalloonFv
/* 8139C444 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8139C448 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8139C44C | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 8139C450 | 41 80 FF E8 */	blt .L_8139C438
/* 8139C454 | 88 1F 01 04 */	lbz r0, 0x104(r31)
/* 8139C458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C45C | 41 82 00 28 */	beq .L_8139C484
/* 8139C460 | 88 1F 01 05 */	lbz r0, 0x105(r31)
/* 8139C464 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C468 | 40 82 00 1C */	bne .L_8139C484
/* 8139C46C | 38 7F 01 08 */	addi r3, r31, 0x108
/* 8139C470 | 4B FC 80 31 */	bl __cl__Q33ipl7utility5timerFv
/* 8139C474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C478 | 41 82 00 0C */	beq .L_8139C484
/* 8139C47C | 7F E3 FB 78 */	mr r3, r31
/* 8139C480 | 48 00 0C A5 */	bl startNewMailAnm___Q33ipl5scene6ButtonFv
.L_8139C484:
/* 8139C484 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139C488 | 48 25 D0 8D */	bl _restgpr_29
/* 8139C48C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139C490 | 7C 08 03 A6 */	mtlr r0
/* 8139C494 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139C498 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene6ButtonFv

# .text:0x808 | 0x8139C49C | size: 0x74
# ipl::scene::Button::draw()
.fn draw__Q33ipl5scene6ButtonFv, global
/* 8139C49C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139C4A0 | 7C 08 02 A6 */	mflr r0
/* 8139C4A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139C4A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139C4AC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139C4B0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139C4B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139C4B8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139C4BC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139C4C0 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 8139C4C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C4C8 | 40 82 00 30 */	bne .L_8139C4F8
/* 8139C4CC | 38 60 00 00 */	li r3, 0x0
/* 8139C4D0 | 4B FC 65 9D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8139C4D4 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8139C4D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C4DC | 40 82 00 0C */	bne .L_8139C4E8
/* 8139C4E0 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 8139C4E4 | 48 04 E8 F1 */	bl iplUnk1_813EADD4
.L_8139C4E8:
/* 8139C4E8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C4EC | 4B FC E2 B1 */	bl draw__Q33ipl6layout6ObjectFv
/* 8139C4F0 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139C4F4 | 4B FC E2 A9 */	bl draw__Q33ipl6layout6ObjectFv
.L_8139C4F8:
/* 8139C4F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139C4FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139C500 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139C504 | 7C 08 03 A6 */	mtlr r0
/* 8139C508 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139C50C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene6ButtonFv

# .text:0x87C | 0x8139C510 | size: 0x5C
# ipl::scene::Button::drawBalloon()
.fn drawBalloon__Q33ipl5scene6ButtonFv, global
/* 8139C510 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139C514 | 7C 08 02 A6 */	mflr r0
/* 8139C518 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139C51C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139C520 | 48 25 CF A9 */	bl _savegpr_29
/* 8139C524 | 7C 7D 1B 78 */	mr r29, r3
/* 8139C528 | 38 60 00 00 */	li r3, 0x0
/* 8139C52C | 4B FC 65 41 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8139C530 | 3B C0 00 00 */	li r30, 0x0
/* 8139C534 | 3B E0 00 00 */	li r31, 0x0
.L_8139C538:
/* 8139C538 | 7C 7D FA 14 */	add r3, r29, r31
/* 8139C53C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8139C540 | 48 03 50 B9 */	bl draw__Q33ipl5scene11TextBalloonFv
/* 8139C544 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139C548 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8139C54C | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 8139C550 | 41 80 FF E8 */	blt .L_8139C538
/* 8139C554 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139C558 | 48 25 CF BD */	bl _restgpr_29
/* 8139C55C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139C560 | 7C 08 03 A6 */	mtlr r0
/* 8139C564 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139C568 | 4E 80 00 20 */	blr
.endfn drawBalloon__Q33ipl5scene6ButtonFv

# .text:0x8D8 | 0x8139C56C | size: 0x54
# ipl::scene::Button::update()
.fn update__Q33ipl5scene6ButtonFv, global
/* 8139C56C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139C570 | 7C 08 02 A6 */	mflr r0
/* 8139C574 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139C578 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139C57C | 7C 7F 1B 78 */	mr r31, r3
/* 8139C580 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 8139C584 | 4B FC EA 09 */	bl update__Q33ipl3gui11PaneManagerFv
/* 8139C588 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8139C58C | 4B FC EA 01 */	bl update__Q33ipl3gui11PaneManagerFv
/* 8139C590 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139C594 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139C598 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8139C59C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C5A0 | 40 82 00 0C */	bne .L_8139C5AC
/* 8139C5A4 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 8139C5A8 | 48 04 E8 6D */	bl iplUnk1_813EAE14
.L_8139C5AC:
/* 8139C5AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139C5B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139C5B4 | 7C 08 03 A6 */	mtlr r0
/* 8139C5B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139C5BC | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene6ButtonFv

# .text:0x92C | 0x8139C5C0 | size: 0xD0
# ipl::scene::Button::reset_gui()
.fn reset_gui__Q33ipl5scene6ButtonFv, global
/* 8139C5C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139C5C4 | 7C 08 02 A6 */	mflr r0
/* 8139C5C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139C5CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139C5D0 | 48 25 CE DD */	bl _savegpr_22
/* 8139C5D4 | 3A E0 00 00 */	li r23, 0x0
/* 8139C5D8 | 3F 40 81 61 */	lis r26, scBtnFadeFrame__Q23ipl5scene@ha
/* 8139C5DC | 7C 76 1B 78 */	mr r22, r3
/* 8139C5E0 | 3B E0 00 00 */	li r31, 0x0
/* 8139C5E4 | 7E FB BB 78 */	mr r27, r23
/* 8139C5E8 | 7E FD BB 78 */	mr r29, r23
/* 8139C5EC | 3B 5A F9 18 */	addi r26, r26, scBtnFadeFrame__Q23ipl5scene@l
/* 8139C5F0 | 3B C0 00 00 */	li r30, 0x0
/* 8139C5F4 | 3B 80 00 01 */	li r28, 0x1
.L_8139C5F8:
/* 8139C5F8 | 7F 16 F2 14 */	add r24, r22, r30
/* 8139C5FC | 80 18 00 D8 */	lwz r0, 0xd8(r24)
/* 8139C600 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C604 | 41 82 00 3C */	beq .L_8139C640
/* 8139C608 | 80 76 00 58 */	lwz r3, 0x58(r22)
/* 8139C60C | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 8139C610 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139C614 | 48 17 5D 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139C618 | 7C 9A FA 14 */	add r4, r26, r31
/* 8139C61C | 7C 79 1B 78 */	mr r25, r3
/* 8139C620 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8139C624 | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8139C628 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139C62C | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139C630 | 93 63 00 18 */	stw r27, 0x18(r3)
/* 8139C634 | 4B FC 62 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139C638 | 93 99 00 14 */	stw r28, 0x14(r25)
/* 8139C63C | 93 B8 00 D8 */	stw r29, 0xd8(r24)
.L_8139C640:
/* 8139C640 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8139C644 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8139C648 | 2C 17 00 0B */	cmpwi r23, 0xb
/* 8139C64C | 3B FF 00 10 */	addi r31, r31, 0x10
/* 8139C650 | 41 80 FF A8 */	blt .L_8139C5F8
/* 8139C654 | 80 76 00 60 */	lwz r3, 0x60(r22)
/* 8139C658 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C65C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139C660 | 7D 89 03 A6 */	mtctr r12
/* 8139C664 | 4E 80 04 21 */	bctrl
/* 8139C668 | 38 76 00 64 */	addi r3, r22, 0x64
/* 8139C66C | 48 00 10 3D */	bl reset_gui__Q33ipl5scene12OptOutButtonFv
/* 8139C670 | 38 76 00 70 */	addi r3, r22, 0x70
/* 8139C674 | 48 04 E7 A9 */	bl iplUnk1_813EAE1C
/* 8139C678 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139C67C | 48 25 CE 7D */	bl _restgpr_22
/* 8139C680 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139C684 | 7C 08 03 A6 */	mtlr r0
/* 8139C688 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139C68C | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene6ButtonFv

# .text:0x9FC | 0x8139C690 | size: 0x15C
# ipl::scene::Button::startPointEvent(const char*, ipl::controller::Interface*)
.fn startPointEvent__Q33ipl5scene6ButtonFPCcPQ33ipl10controller9Interface, global
/* 8139C690 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139C694 | 7C 08 02 A6 */	mflr r0
/* 8139C698 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139C69C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139C6A0 | 48 25 CE 1D */	bl _savegpr_26
/* 8139C6A4 | 7C 9D 23 78 */	mr r29, r4
/* 8139C6A8 | 7C 7C 1B 78 */	mr r28, r3
/* 8139C6AC | 7C BE 2B 78 */	mr r30, r5
/* 8139C6B0 | 7F A3 EB 78 */	mr r3, r29
/* 8139C6B4 | 48 00 08 25 */	bl getButtonNo__Q33ipl5scene6ButtonFPCc
/* 8139C6B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C6BC | 7C 7F 1B 78 */	mr r31, r3
/* 8139C6C0 | 40 82 00 18 */	bne .L_8139C6D8
/* 8139C6C4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139C6C8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139C6CC | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8139C6D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C6D4 | 40 82 01 00 */	bne .L_8139C7D4
.L_8139C6D8:
/* 8139C6D8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8139C6DC | 41 82 00 F8 */	beq .L_8139C7D4
/* 8139C6E0 | 88 1C 01 10 */	lbz r0, 0x110(r28)
/* 8139C6E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C6E8 | 40 82 00 10 */	bne .L_8139C6F8
/* 8139C6EC | 38 03 FF F7 */	subi r0, r3, 0x9
/* 8139C6F0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139C6F4 | 41 81 00 E0 */	bgt .L_8139C7D4
.L_8139C6F8:
/* 8139C6F8 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 8139C6FC | 40 82 00 10 */	bne .L_8139C70C
/* 8139C700 | 88 1C 00 D4 */	lbz r0, 0xd4(r28)
/* 8139C704 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139C708 | 40 82 00 CC */	bne .L_8139C7D4
.L_8139C70C:
/* 8139C70C | 2C 03 00 0A */	cmpwi r3, 0xa
/* 8139C710 | 40 82 00 10 */	bne .L_8139C720
/* 8139C714 | 88 1C 00 D5 */	lbz r0, 0xd5(r28)
/* 8139C718 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139C71C | 40 82 00 B8 */	bne .L_8139C7D4
.L_8139C720:
/* 8139C720 | 54 60 10 3A */	slwi r0, r3, 2
/* 8139C724 | 7F 7C 02 14 */	add r27, r28, r0
/* 8139C728 | 80 1B 00 D8 */	lwz r0, 0xd8(r27)
/* 8139C72C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C730 | 40 82 00 90 */	bne .L_8139C7C0
/* 8139C734 | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 8139C738 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8139C73C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139C740 | 48 17 5B D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139C744 | 3C 80 81 61 */	lis r4, scBtnFadeFrame__Q23ipl5scene@ha
/* 8139C748 | 57 E5 20 36 */	slwi r5, r31, 4
/* 8139C74C | 38 84 F9 18 */	addi r4, r4, scBtnFadeFrame__Q23ipl5scene@l
/* 8139C750 | 38 00 00 00 */	li r0, 0x0
/* 8139C754 | 7C 04 2C 2E */	lfsx f0, r4, r5
/* 8139C758 | 7C 84 2A 14 */	add r4, r4, r5
/* 8139C75C | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8139C760 | 7C 7A 1B 78 */	mr r26, r3
/* 8139C764 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139C768 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139C76C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8139C770 | 4B FC 61 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139C774 | 38 00 00 01 */	li r0, 0x1
/* 8139C778 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139C77C | 3C 80 81 65 */	lis r4, lbl_8164C0CC@ha
/* 8139C780 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 8139C784 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139C788 | 38 84 C0 CC */	addi r4, r4, lbl_8164C0CC@l
/* 8139C78C | 4B FC EC E1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139C790 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139C794 | 41 82 00 1C */	beq .L_8139C7B0
/* 8139C798 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139C79C | 7F C3 F3 78 */	mr r3, r30
/* 8139C7A0 | 38 80 00 00 */	li r4, 0x0
/* 8139C7A4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139C7A8 | 7D 89 03 A6 */	mtctr r12
/* 8139C7AC | 4E 80 04 21 */	bctrl
.L_8139C7B0:
/* 8139C7B0 | 7F 83 E3 78 */	mr r3, r28
/* 8139C7B4 | 7F E4 FB 78 */	mr r4, r31
/* 8139C7B8 | 7F A5 EB 78 */	mr r5, r29
/* 8139C7BC | 48 00 07 91 */	bl show_balloon__Q33ipl5scene6ButtonFiPCc
.L_8139C7C0:
/* 8139C7C0 | 80 7B 00 D8 */	lwz r3, 0xd8(r27)
/* 8139C7C4 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8139C7C8 | 40 80 00 0C */	bge .L_8139C7D4
/* 8139C7CC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139C7D0 | 90 1B 00 D8 */	stw r0, 0xd8(r27)
.L_8139C7D4:
/* 8139C7D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139C7D8 | 48 25 CD 31 */	bl _restgpr_26
/* 8139C7DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139C7E0 | 7C 08 03 A6 */	mtlr r0
/* 8139C7E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139C7E8 | 4E 80 00 20 */	blr
.endfn startPointEvent__Q33ipl5scene6ButtonFPCcPQ33ipl10controller9Interface

# .text:0xB58 | 0x8139C7EC | size: 0x128
# ipl::scene::Button::startLeftEvent(const char*)
.fn startLeftEvent__Q33ipl5scene6ButtonFPCc, global
/* 8139C7EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139C7F0 | 7C 08 02 A6 */	mflr r0
/* 8139C7F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139C7F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139C7FC | 48 25 CC C5 */	bl _savegpr_27
/* 8139C800 | 7C 7E 1B 78 */	mr r30, r3
/* 8139C804 | 7C 83 23 78 */	mr r3, r4
/* 8139C808 | 48 00 06 D1 */	bl getButtonNo__Q33ipl5scene6ButtonFPCc
/* 8139C80C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C810 | 7C 7F 1B 78 */	mr r31, r3
/* 8139C814 | 40 82 00 18 */	bne .L_8139C82C
/* 8139C818 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139C81C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139C820 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8139C824 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139C828 | 40 82 00 D4 */	bne .L_8139C8FC
.L_8139C82C:
/* 8139C82C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8139C830 | 41 82 00 CC */	beq .L_8139C8FC
/* 8139C834 | 38 03 FF F7 */	subi r0, r3, 0x9
/* 8139C838 | 88 9E 01 10 */	lbz r4, 0x110(r30)
/* 8139C83C | 7C 00 00 34 */	cntlzw r0, r0
/* 8139C840 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8139C844 | 7C 80 03 79 */	or. r0, r4, r0
/* 8139C848 | 40 82 00 0C */	bne .L_8139C854
/* 8139C84C | 2C 03 00 0A */	cmpwi r3, 0xa
/* 8139C850 | 40 82 00 AC */	bne .L_8139C8FC
.L_8139C854:
/* 8139C854 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 8139C858 | 40 82 00 10 */	bne .L_8139C868
/* 8139C85C | 88 1E 00 D4 */	lbz r0, 0xd4(r30)
/* 8139C860 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139C864 | 40 82 00 98 */	bne .L_8139C8FC
.L_8139C868:
/* 8139C868 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 8139C86C | 40 82 00 10 */	bne .L_8139C87C
/* 8139C870 | 88 1E 00 D5 */	lbz r0, 0xd5(r30)
/* 8139C874 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139C878 | 40 82 00 84 */	bne .L_8139C8FC
.L_8139C87C:
/* 8139C87C | 54 7B 10 3A */	slwi r27, r3, 2
/* 8139C880 | 7F BE DA 14 */	add r29, r30, r27
/* 8139C884 | 80 1D 00 D8 */	lwz r0, 0xd8(r29)
/* 8139C888 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C88C | 40 82 00 5C */	bne .L_8139C8E8
/* 8139C890 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8139C894 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8139C898 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139C89C | 48 17 5A 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139C8A0 | 3C 80 81 61 */	lis r4, scBtnFadeFrame__Q23ipl5scene@ha
/* 8139C8A4 | 57 E5 20 36 */	slwi r5, r31, 4
/* 8139C8A8 | 38 84 F9 18 */	addi r4, r4, scBtnFadeFrame__Q23ipl5scene@l
/* 8139C8AC | 38 00 00 00 */	li r0, 0x0
/* 8139C8B0 | 7C 84 2A 14 */	add r4, r4, r5
/* 8139C8B4 | 7C 7C 1B 78 */	mr r28, r3
/* 8139C8B8 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8139C8BC | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8139C8C0 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139C8C4 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139C8C8 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8139C8CC | 4B FC 5F A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139C8D0 | 38 00 00 01 */	li r0, 0x1
/* 8139C8D4 | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 8139C8D8 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 8139C8DC | 40 80 00 0C */	bge .L_8139C8E8
/* 8139C8E0 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8139C8E4 | 48 03 50 C9 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_8139C8E8:
/* 8139C8E8 | 80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 8139C8EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139C8F0 | 40 81 00 0C */	ble .L_8139C8FC
/* 8139C8F4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139C8F8 | 90 1D 00 D8 */	stw r0, 0xd8(r29)
.L_8139C8FC:
/* 8139C8FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139C900 | 48 25 CC 0D */	bl _restgpr_27
/* 8139C904 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139C908 | 7C 08 03 A6 */	mtlr r0
/* 8139C90C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139C910 | 4E 80 00 20 */	blr
.endfn startLeftEvent__Q33ipl5scene6ButtonFPCc

# .text:0xC80 | 0x8139C914 | size: 0x28
# ipl::scene::Button::isActive() const
.fn isActive__Q33ipl5scene6ButtonCFv, global
/* 8139C914 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8139C918 | 38 80 00 00 */	li r4, 0x0
/* 8139C91C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8139C920 | 41 82 00 14 */	beq .L_8139C934
/* 8139C924 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 8139C928 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139C92C | 41 82 00 08 */	beq .L_8139C934
/* 8139C930 | 38 80 00 01 */	li r4, 0x1
.L_8139C934:
/* 8139C934 | 7C 83 23 78 */	mr r3, r4
/* 8139C938 | 4E 80 00 20 */	blr
.endfn isActive__Q33ipl5scene6ButtonCFv

# .text:0xCA8 | 0x8139C93C | size: 0x60
# ipl::scene::Button::setEventHandler(gui::EventHandler*, gui::EventHandler*)
.fn setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler, global
/* 8139C93C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139C940 | 7C 08 02 A6 */	mflr r0
/* 8139C944 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139C948 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139C94C | 7C BF 2B 78 */	mr r31, r5
/* 8139C950 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139C954 | 7C 7E 1B 78 */	mr r30, r3
/* 8139C958 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 8139C95C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C960 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8139C964 | 7D 89 03 A6 */	mtctr r12
/* 8139C968 | 4E 80 04 21 */	bctrl
/* 8139C96C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8139C970 | 7F E4 FB 78 */	mr r4, r31
/* 8139C974 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139C978 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8139C97C | 7D 89 03 A6 */	mtctr r12
/* 8139C980 | 4E 80 04 21 */	bctrl
/* 8139C984 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139C988 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139C98C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139C990 | 7C 08 03 A6 */	mtlr r0
/* 8139C994 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139C998 | 4E 80 00 20 */	blr
.endfn setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler

# .text:0xD08 | 0x8139C99C | size: 0x5C
# ipl::scene::Button::setText(const char*, unsigned long)
.fn setText__Q33ipl5scene6ButtonFPCcUl, global
/* 8139C99C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139C9A0 | 7C 08 02 A6 */	mflr r0
/* 8139C9A4 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8139C9A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139C9AC | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8139C9B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139C9B4 | 7C 9F 23 78 */	mr r31, r4
/* 8139C9B8 | 7C A4 2B 78 */	mr r4, r5
/* 8139C9BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139C9C0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139C9C4 | 80 66 00 80 */	lwz r3, 0x80(r6)
/* 8139C9C8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139C9CC | 4B FA 1D F1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139C9D0 | 7C 65 1B 78 */	mr r5, r3
/* 8139C9D4 | 7F C3 F3 78 */	mr r3, r30
/* 8139C9D8 | 7F E4 FB 78 */	mr r4, r31
/* 8139C9DC | 48 00 00 1D */	bl setText__Q33ipl5scene6ButtonFPCcPCw
/* 8139C9E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139C9E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139C9E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139C9EC | 7C 08 03 A6 */	mtlr r0
/* 8139C9F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139C9F4 | 4E 80 00 20 */	blr
.endfn setText__Q33ipl5scene6ButtonFPCcUl

# .text:0xD64 | 0x8139C9F8 | size: 0x60
# ipl::scene::Button::setText(const char*, const wchar_t*)
.fn setText__Q33ipl5scene6ButtonFPCcPCw, global
/* 8139C9F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139C9FC | 7C 08 02 A6 */	mflr r0
/* 8139CA00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139CA04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139CA08 | 7C BF 2B 78 */	mr r31, r5
/* 8139CA0C | 38 A0 00 01 */	li r5, 0x1
/* 8139CA10 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 8139CA14 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CA18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139CA1C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139CA20 | 7D 89 03 A6 */	mtctr r12
/* 8139CA24 | 4E 80 04 21 */	bctrl
/* 8139CA28 | 4B FA 94 3D */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8139CA2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139CA30 | 7F E4 FB 78 */	mr r4, r31
/* 8139CA34 | 38 A0 00 00 */	li r5, 0x0
/* 8139CA38 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8139CA3C | 7D 89 03 A6 */	mtctr r12
/* 8139CA40 | 4E 80 04 21 */	bctrl
/* 8139CA44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139CA48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139CA4C | 7C 08 03 A6 */	mtlr r0
/* 8139CA50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139CA54 | 4E 80 00 20 */	blr
.endfn setText__Q33ipl5scene6ButtonFPCcPCw

# .text:0xDC4 | 0x8139CA58 | size: 0x100
# ipl::scene::Button::animation(int)
.fn animation__Q33ipl5scene6ButtonFi, global
/* 8139CA58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139CA5C | 7C 08 02 A6 */	mflr r0
/* 8139CA60 | 2C 04 00 29 */	cmpwi r4, 0x29
/* 8139CA64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139CA68 | 41 82 00 70 */	beq .L_8139CAD8
/* 8139CA6C | 40 80 00 14 */	bge .L_8139CA80
/* 8139CA70 | 2C 04 00 27 */	cmpwi r4, 0x27
/* 8139CA74 | 41 82 00 1C */	beq .L_8139CA90
/* 8139CA78 | 40 80 00 3C */	bge .L_8139CAB4
/* 8139CA7C | 48 00 00 C8 */	b .L_8139CB44
.L_8139CA80:
/* 8139CA80 | 2C 04 00 2B */	cmpwi r4, 0x2b
/* 8139CA84 | 41 82 00 9C */	beq .L_8139CB20
/* 8139CA88 | 40 80 00 BC */	bge .L_8139CB44
/* 8139CA8C | 48 00 00 70 */	b .L_8139CAFC
.L_8139CA90:
/* 8139CA90 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8139CA94 | 38 80 00 00 */	li r4, 0x0
/* 8139CA98 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CA9C | 48 17 58 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CAA0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CAA4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139CAA8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CAAC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139CAB0 | 48 00 00 98 */	b .L_8139CB48
.L_8139CAB4:
/* 8139CAB4 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8139CAB8 | 38 80 00 01 */	li r4, 0x1
/* 8139CABC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CAC0 | 48 17 58 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CAC4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CAC8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139CACC | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CAD0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139CAD4 | 48 00 00 74 */	b .L_8139CB48
.L_8139CAD8:
/* 8139CAD8 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8139CADC | 38 80 00 02 */	li r4, 0x2
/* 8139CAE0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CAE4 | 48 17 58 35 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CAE8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CAEC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139CAF0 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CAF4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139CAF8 | 48 00 00 50 */	b .L_8139CB48
.L_8139CAFC:
/* 8139CAFC | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8139CB00 | 38 80 00 03 */	li r4, 0x3
/* 8139CB04 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CB08 | 48 17 58 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CB0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CB10 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139CB14 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CB18 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139CB1C | 48 00 00 2C */	b .L_8139CB48
.L_8139CB20:
/* 8139CB20 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8139CB24 | 38 80 00 04 */	li r4, 0x4
/* 8139CB28 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CB2C | 48 17 57 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CB30 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CB34 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139CB38 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CB3C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139CB40 | 48 00 00 08 */	b .L_8139CB48
.L_8139CB44:
/* 8139CB44 | 38 60 00 00 */	li r3, 0x0
.L_8139CB48:
/* 8139CB48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139CB4C | 7C 08 03 A6 */	mtlr r0
/* 8139CB50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139CB54 | 4E 80 00 20 */	blr
.endfn animation__Q33ipl5scene6ButtonFi

# .text:0xEC4 | 0x8139CB58 | size: 0x2D0
.fn iplButton_8139CB58, global
/* 8139CB58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139CB5C | 7C 08 02 A6 */	mflr r0
/* 8139CB60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139CB64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139CB68 | 48 25 C9 5D */	bl _savegpr_28
/* 8139CB6C | 38 04 FF ED */	subi r0, r4, 0x13
/* 8139CB70 | 7C 7D 1B 78 */	mr r29, r3
/* 8139CB74 | 28 00 00 18 */	cmplwi r0, 0x18
/* 8139CB78 | 7C 9E 23 78 */	mr r30, r4
/* 8139CB7C | 3B E0 00 00 */	li r31, 0x0
/* 8139CB80 | 41 81 01 14 */	bgt .L_8139CC94
/* 8139CB84 | 3C 80 81 65 */	lis r4, jumptable_8164C0E4@ha
/* 8139CB88 | 54 00 10 3A */	slwi r0, r0, 2
/* 8139CB8C | 38 84 C0 E4 */	addi r4, r4, jumptable_8164C0E4@l
/* 8139CB90 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8139CB94 | 7C 89 03 A6 */	mtctr r4
/* 8139CB98 | 4E 80 04 20 */	bctr
.L_8139CB9C:
/* 8139CB9C | 83 E3 00 A0 */	lwz r31, 0xa0(r3)
/* 8139CBA0 | 48 00 00 F8 */	b .L_8139CC98
.L_8139CBA4:
/* 8139CBA4 | 83 E3 00 A4 */	lwz r31, 0xa4(r3)
/* 8139CBA8 | 48 00 00 F0 */	b .L_8139CC98
.L_8139CBAC:
/* 8139CBAC | 83 E3 00 A8 */	lwz r31, 0xa8(r3)
/* 8139CBB0 | 48 00 00 E8 */	b .L_8139CC98
.L_8139CBB4:
/* 8139CBB4 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 8139CBB8 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 8139CBBC | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 8139CBC0 | 4B FF FC 2D */	bl startLeftEvent__Q33ipl5scene6ButtonFPCc
.L_8139CBC4:
/* 8139CBC4 | 38 1E FF E9 */	subi r0, r30, 0x17
/* 8139CBC8 | 83 FD 00 B0 */	lwz r31, 0xb0(r29)
/* 8139CBCC | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CBD0 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8139CBD4 | 98 1D 00 D4 */	stb r0, 0xd4(r29)
/* 8139CBD8 | 48 00 00 C0 */	b .L_8139CC98
.L_8139CBDC:
/* 8139CBDC | 83 E3 00 AC */	lwz r31, 0xac(r3)
/* 8139CBE0 | 48 00 00 B8 */	b .L_8139CC98
.L_8139CBE4:
/* 8139CBE4 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 8139CBE8 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 8139CBEC | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 8139CBF0 | 4B FF FB FD */	bl startLeftEvent__Q33ipl5scene6ButtonFPCc
.L_8139CBF4:
/* 8139CBF4 | 38 1E FF E8 */	subi r0, r30, 0x18
/* 8139CBF8 | 83 FD 00 B4 */	lwz r31, 0xb4(r29)
/* 8139CBFC | 7C 00 00 34 */	cntlzw r0, r0
/* 8139CC00 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8139CC04 | 98 1D 00 D5 */	stb r0, 0xd5(r29)
/* 8139CC08 | 48 00 00 90 */	b .L_8139CC98
.L_8139CC0C:
/* 8139CC0C | 83 E3 00 B8 */	lwz r31, 0xb8(r3)
/* 8139CC10 | 38 80 00 05 */	li r4, 0x5
/* 8139CC14 | 48 00 07 3D */	bl initBtn__Q33ipl5scene6ButtonFi
/* 8139CC18 | 48 00 00 80 */	b .L_8139CC98
.L_8139CC1C:
/* 8139CC1C | 83 E3 00 BC */	lwz r31, 0xbc(r3)
/* 8139CC20 | 48 00 00 78 */	b .L_8139CC98
.L_8139CC24:
/* 8139CC24 | 83 E3 00 C0 */	lwz r31, 0xc0(r3)
/* 8139CC28 | 38 80 00 07 */	li r4, 0x7
/* 8139CC2C | 48 00 07 25 */	bl initBtn__Q33ipl5scene6ButtonFi
/* 8139CC30 | 48 00 00 68 */	b .L_8139CC98
.L_8139CC34:
/* 8139CC34 | 83 E3 00 C4 */	lwz r31, 0xc4(r3)
/* 8139CC38 | 48 00 00 60 */	b .L_8139CC98
.L_8139CC3C:
/* 8139CC3C | 83 E3 00 C8 */	lwz r31, 0xc8(r3)
/* 8139CC40 | 48 00 00 58 */	b .L_8139CC98
.L_8139CC44:
/* 8139CC44 | 38 80 00 00 */	li r4, 0x0
/* 8139CC48 | 38 63 00 70 */	addi r3, r3, 0x70
/* 8139CC4C | 48 04 E3 F5 */	bl iplUnk1_813EB040
/* 8139CC50 | 48 00 00 48 */	b .L_8139CC98
.L_8139CC54:
/* 8139CC54 | 38 80 00 01 */	li r4, 0x1
/* 8139CC58 | 38 63 00 70 */	addi r3, r3, 0x70
/* 8139CC5C | 48 04 E3 E5 */	bl iplUnk1_813EB040
/* 8139CC60 | 48 00 00 38 */	b .L_8139CC98
.L_8139CC64:
/* 8139CC64 | 38 80 00 02 */	li r4, 0x2
/* 8139CC68 | 38 63 00 70 */	addi r3, r3, 0x70
/* 8139CC6C | 48 04 E3 D5 */	bl iplUnk1_813EB040
/* 8139CC70 | 48 00 00 28 */	b .L_8139CC98
.L_8139CC74:
/* 8139CC74 | 38 80 00 03 */	li r4, 0x3
/* 8139CC78 | 38 63 00 70 */	addi r3, r3, 0x70
/* 8139CC7C | 48 04 E3 C5 */	bl iplUnk1_813EB040
/* 8139CC80 | 48 00 00 18 */	b .L_8139CC98
.L_8139CC84:
/* 8139CC84 | 38 80 00 04 */	li r4, 0x4
/* 8139CC88 | 38 63 00 70 */	addi r3, r3, 0x70
/* 8139CC8C | 48 04 E3 B5 */	bl iplUnk1_813EB040
/* 8139CC90 | 48 00 00 08 */	b .L_8139CC98
.L_8139CC94:
/* 8139CC94 | 83 E3 00 9C */	lwz r31, 0x9c(r3)
.L_8139CC98:
/* 8139CC98 | 2C 1E 00 24 */	cmpwi r30, 0x24
/* 8139CC9C | 3B 80 00 00 */	li r28, 0x0
/* 8139CCA0 | 41 82 00 60 */	beq .L_8139CD00
/* 8139CCA4 | 40 80 00 14 */	bge .L_8139CCB8
/* 8139CCA8 | 2C 1E 00 22 */	cmpwi r30, 0x22
/* 8139CCAC | 41 82 00 1C */	beq .L_8139CCC8
/* 8139CCB0 | 40 80 00 34 */	bge .L_8139CCE4
/* 8139CCB4 | 48 00 00 98 */	b .L_8139CD4C
.L_8139CCB8:
/* 8139CCB8 | 2C 1E 00 26 */	cmpwi r30, 0x26
/* 8139CCBC | 41 82 00 7C */	beq .L_8139CD38
/* 8139CCC0 | 40 80 00 8C */	bge .L_8139CD4C
/* 8139CCC4 | 48 00 00 58 */	b .L_8139CD1C
.L_8139CCC8:
/* 8139CCC8 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8139CCCC | 3B C0 00 0D */	li r30, 0xd
/* 8139CCD0 | 38 80 00 00 */	li r4, 0x0
/* 8139CCD4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CCD8 | 48 17 56 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CCDC | 7C 7C 1B 78 */	mr r28, r3
/* 8139CCE0 | 48 00 00 6C */	b .L_8139CD4C
.L_8139CCE4:
/* 8139CCE4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8139CCE8 | 3B C0 00 0E */	li r30, 0xe
/* 8139CCEC | 38 80 00 01 */	li r4, 0x1
/* 8139CCF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CCF4 | 48 17 56 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CCF8 | 7C 7C 1B 78 */	mr r28, r3
/* 8139CCFC | 48 00 00 50 */	b .L_8139CD4C
.L_8139CD00:
/* 8139CD00 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8139CD04 | 3B C0 00 11 */	li r30, 0x11
/* 8139CD08 | 38 80 00 00 */	li r4, 0x0
/* 8139CD0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CD10 | 48 17 56 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CD14 | 7C 7C 1B 78 */	mr r28, r3
/* 8139CD18 | 48 00 00 34 */	b .L_8139CD4C
.L_8139CD1C:
/* 8139CD1C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8139CD20 | 3B C0 00 12 */	li r30, 0x12
/* 8139CD24 | 38 80 00 01 */	li r4, 0x1
/* 8139CD28 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CD2C | 48 17 55 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CD30 | 7C 7C 1B 78 */	mr r28, r3
/* 8139CD34 | 48 00 00 18 */	b .L_8139CD4C
.L_8139CD38:
/* 8139CD38 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8139CD3C | 38 80 00 04 */	li r4, 0x4
/* 8139CD40 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139CD44 | 48 17 55 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139CD48 | 7C 7C 1B 78 */	mr r28, r3
.L_8139CD4C:
/* 8139CD4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8139CD50 | 41 82 00 60 */	beq .L_8139CDB0
/* 8139CD54 | 2C 1E 00 17 */	cmpwi r30, 0x17
/* 8139CD58 | 40 80 00 20 */	bge .L_8139CD78
/* 8139CD5C | 2C 1E 00 15 */	cmpwi r30, 0x15
/* 8139CD60 | 40 80 00 08 */	bge .L_8139CD68
/* 8139CD64 | 48 00 00 14 */	b .L_8139CD78
.L_8139CD68:
/* 8139CD68 | 38 62 84 A0 */	li r3, scAnmRepeatAnmFrame__Q23ipl5scene@sda21
/* 8139CD6C | C0 02 84 A0 */	lfs f0, scAnmRepeatAnmFrame__Q23ipl5scene@sda21(r0)
/* 8139CD70 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 8139CD74 | 48 00 00 1C */	b .L_8139CD90
.L_8139CD78:
/* 8139CD78 | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139CD7C | 57 C0 18 38 */	slwi r0, r30, 3
/* 8139CD80 | 38 84 F7 B8 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 8139CD84 | 7C 64 02 14 */	add r3, r4, r0
/* 8139CD88 | 7C 04 04 2E */	lfsx f0, r4, r0
/* 8139CD8C | C0 23 00 04 */	lfs f1, 0x4(r3)
.L_8139CD90:
/* 8139CD90 | D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 8139CD94 | 38 00 00 00 */	li r0, 0x0
/* 8139CD98 | 7F E3 FB 78 */	mr r3, r31
/* 8139CD9C | D0 3F 00 04 */	stfs f1, 0x4(r31)
/* 8139CDA0 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 8139CDA4 | 4B FC 5A CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139CDA8 | 38 00 00 01 */	li r0, 0x1
/* 8139CDAC | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8139CDB0:
/* 8139CDB0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8139CDB4 | 41 82 00 14 */	beq .L_8139CDC8
/* 8139CDB8 | 7F 83 E3 78 */	mr r3, r28
/* 8139CDBC | 4B FC 5A B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139CDC0 | 38 00 00 01 */	li r0, 0x1
/* 8139CDC4 | 90 1C 00 14 */	stw r0, 0x14(r28)
.L_8139CDC8:
/* 8139CDC8 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 8139CDCC | 40 80 00 3C */	bge .L_8139CE08
/* 8139CDD0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139CDD4 | 40 80 00 08 */	bge .L_8139CDDC
/* 8139CDD8 | 48 00 00 30 */	b .L_8139CE08
.L_8139CDDC:
/* 8139CDDC | 3B 80 00 00 */	li r28, 0x0
/* 8139CDE0 | 3B C0 00 00 */	li r30, 0x0
.L_8139CDE4:
/* 8139CDE4 | 7C 7D F2 14 */	add r3, r29, r30
/* 8139CDE8 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8139CDEC | 48 03 4B C1 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8139CDF0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8139CDF4 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8139CDF8 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 8139CDFC | 41 80 FF E8 */	blt .L_8139CDE4
/* 8139CE00 | 7F A3 EB 78 */	mr r3, r29
/* 8139CE04 | 4B FF F7 BD */	bl reset_gui__Q33ipl5scene6ButtonFv
.L_8139CE08:
/* 8139CE08 | 38 00 00 01 */	li r0, 0x1
/* 8139CE0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139CE10 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 8139CE14 | 48 25 C6 FD */	bl _restgpr_28
/* 8139CE18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139CE1C | 7C 08 03 A6 */	mtlr r0
/* 8139CE20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139CE24 | 4E 80 00 20 */	blr
.endfn iplButton_8139CB58

# .text:0x1194 | 0x8139CE28 | size: 0xB0
# ipl::scene::Button::initArrowAppearance(int, bool)
.fn initArrowAppearance__Q33ipl5scene6ButtonFib, global
/* 8139CE28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139CE2C | 7C 08 02 A6 */	mflr r0
/* 8139CE30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139CE34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139CE38 | 48 25 C6 91 */	bl _savegpr_29
/* 8139CE3C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8139CE40 | 7C 7D 1B 78 */	mr r29, r3
/* 8139CE44 | 7C 9E 23 78 */	mr r30, r4
/* 8139CE48 | 7C BF 2B 78 */	mr r31, r5
/* 8139CE4C | 41 82 00 40 */	beq .L_8139CE8C
/* 8139CE50 | 40 80 00 64 */	bge .L_8139CEB4
/* 8139CE54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139CE58 | 40 80 00 08 */	bge .L_8139CE60
/* 8139CE5C | 48 00 00 58 */	b .L_8139CEB4
.L_8139CE60:
/* 8139CE60 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8139CE64 | 80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 8139CE68 | 41 82 00 14 */	beq .L_8139CE7C
/* 8139CE6C | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139CE70 | 38 84 F7 B8 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 8139CE74 | C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 8139CE78 | 48 00 00 3C */	b .L_8139CEB4
.L_8139CE7C:
/* 8139CE7C | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139CE80 | 38 84 F7 B8 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 8139CE84 | C0 24 00 CC */	lfs f1, 0xcc(r4)
/* 8139CE88 | 48 00 00 2C */	b .L_8139CEB4
.L_8139CE8C:
/* 8139CE8C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8139CE90 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 8139CE94 | 41 82 00 14 */	beq .L_8139CEA8
/* 8139CE98 | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139CE9C | 38 84 F7 B8 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 8139CEA0 | C0 24 00 C4 */	lfs f1, 0xc4(r4)
/* 8139CEA4 | 48 00 00 10 */	b .L_8139CEB4
.L_8139CEA8:
/* 8139CEA8 | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139CEAC | 38 84 F7 B8 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 8139CEB0 | C0 24 00 D4 */	lfs f1, 0xd4(r4)
.L_8139CEB4:
/* 8139CEB4 | 4B FC CD AD */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 8139CEB8 | 7C 7D F2 14 */	add r3, r29, r30
/* 8139CEBC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139CEC0 | 9B E3 00 D4 */	stb r31, 0xd4(r3)
/* 8139CEC4 | 48 25 C6 51 */	bl _restgpr_29
/* 8139CEC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139CECC | 7C 08 03 A6 */	mtlr r0
/* 8139CED0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139CED4 | 4E 80 00 20 */	blr
.endfn initArrowAppearance__Q33ipl5scene6ButtonFib

# .text:0x1244 | 0x8139CED8 | size: 0x74
# ipl::scene::Button::getButtonNo(const char*)
.fn getButtonNo__Q33ipl5scene6ButtonFPCc, global
/* 8139CED8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139CEDC | 7C 08 02 A6 */	mflr r0
/* 8139CEE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139CEE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139CEE8 | 48 25 C5 D9 */	bl _savegpr_27
/* 8139CEEC | 3F C0 81 65 */	lis r30, mscButtonName__Q33ipl5scene6Button@ha
/* 8139CEF0 | 7C 7B 1B 78 */	mr r27, r3
/* 8139CEF4 | 3B DE BF 5C */	addi r30, r30, mscButtonName__Q33ipl5scene6Button@l
/* 8139CEF8 | 3B A0 FF FF */	li r29, -0x1
/* 8139CEFC | 3B 80 00 00 */	li r28, 0x0
/* 8139CF00 | 3B E0 00 00 */	li r31, 0x0
.L_8139CF04:
/* 8139CF04 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 8139CF08 | 7F 63 DB 78 */	mr r3, r27
/* 8139CF0C | 48 26 55 75 */	bl strcmp
/* 8139CF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139CF14 | 40 82 00 0C */	bne .L_8139CF20
/* 8139CF18 | 7F 9D E3 78 */	mr r29, r28
/* 8139CF1C | 48 00 00 14 */	b .L_8139CF30
.L_8139CF20:
/* 8139CF20 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8139CF24 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8139CF28 | 2C 1C 00 0B */	cmpwi r28, 0xb
/* 8139CF2C | 41 80 FF D8 */	blt .L_8139CF04
.L_8139CF30:
/* 8139CF30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139CF34 | 7F A3 EB 78 */	mr r3, r29
/* 8139CF38 | 48 25 C5 D5 */	bl _restgpr_27
/* 8139CF3C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139CF40 | 7C 08 03 A6 */	mtlr r0
/* 8139CF44 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139CF48 | 4E 80 00 20 */	blr
.endfn getButtonNo__Q33ipl5scene6ButtonFPCc

# .text:0x12B8 | 0x8139CF4C | size: 0xB8
# ipl::scene::Button::show_balloon(int, const char*)
.fn show_balloon__Q33ipl5scene6ButtonFiPCc, global
/* 8139CF4C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139CF50 | 7C 08 02 A6 */	mflr r0
/* 8139CF54 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139CF58 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139CF5C | 48 25 C5 6D */	bl _savegpr_29
/* 8139CF60 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 8139CF64 | 7C 7D 1B 78 */	mr r29, r3
/* 8139CF68 | 7C 9E 23 78 */	mr r30, r4
/* 8139CF6C | 40 80 00 80 */	bge .L_8139CFEC
/* 8139CF70 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 8139CF74 | 7C A4 2B 78 */	mr r4, r5
/* 8139CF78 | 38 A0 00 01 */	li r5, 0x1
/* 8139CF7C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139CF80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139CF84 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139CF88 | 7D 89 03 A6 */	mtctr r12
/* 8139CF8C | 4E 80 04 21 */	bctrl
/* 8139CF90 | C0 22 84 C0 */	lfs f1, lbl_816948C0@sda21(r0)
/* 8139CF94 | 7C 7F 1B 78 */	mr r31, r3
/* 8139CF98 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139CF9C | FC 40 08 90 */	fmr f2, f1
/* 8139CFA0 | FC 60 08 90 */	fmr f3, f1
/* 8139CFA4 | 4B FC 5A B9 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8139CFA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139CFAC | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8139CFB0 | 7C 85 23 78 */	mr r5, r4
/* 8139CFB4 | 48 1A 45 09 */	bl fn_815414BC
/* 8139CFB8 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8139CFBC | 57 C0 10 3A */	slwi r0, r30, 2
/* 8139CFC0 | C0 02 84 CC */	lfs f0, lbl_816948CC@sda21(r0)
/* 8139CFC4 | 7F FD 02 14 */	add r31, r29, r0
/* 8139CFC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139CFCC | 38 A0 00 01 */	li r5, 0x1
/* 8139CFD0 | EC 01 00 2A */	fadds f0, f1, f0
/* 8139CFD4 | 38 C0 00 00 */	li r6, 0x0
/* 8139CFD8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8139CFDC | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8139CFE0 | 48 03 47 ED */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 8139CFE4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8139CFE8 | 48 03 47 BD */	bl fadeinNoSetTextbox__Q33ipl5scene11TextBalloonFv
.L_8139CFEC:
/* 8139CFEC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139CFF0 | 48 25 C5 25 */	bl _restgpr_29
/* 8139CFF4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139CFF8 | 7C 08 03 A6 */	mtlr r0
/* 8139CFFC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139D000 | 4E 80 00 20 */	blr
.endfn show_balloon__Q33ipl5scene6ButtonFiPCc

# .text:0x1370 | 0x8139D004 | size: 0x6C
# ipl::scene::Button::startMailNumAnm()
.fn startMailNumAnm__Q33ipl5scene6ButtonFv, global
/* 8139D004 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D008 | 7C 08 02 A6 */	mflr r0
/* 8139D00C | 38 82 84 A8 */	li r4, scNewArvAnmFrame__Q23ipl5scene@sda21
/* 8139D010 | C0 22 84 A8 */	lfs f1, scNewArvAnmFrame__Q23ipl5scene@sda21(r0)
/* 8139D014 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D018 | 38 00 00 02 */	li r0, 0x2
/* 8139D01C | C0 44 00 04 */	lfs f2, 0x4(r4)
/* 8139D020 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D024 | C0 02 84 D0 */	lfs f0, lbl_816948D0@sda21(r0)
/* 8139D028 | 80 A3 00 CC */	lwz r5, 0xcc(r3)
/* 8139D02C | 90 05 00 18 */	stw r0, 0x18(r5)
/* 8139D030 | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D034 | D0 24 00 08 */	stfs f1, 0x8(r4)
/* 8139D038 | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D03C | D0 44 00 04 */	stfs f2, 0x4(r4)
/* 8139D040 | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D044 | D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8139D048 | 83 E3 00 CC */	lwz r31, 0xcc(r3)
/* 8139D04C | 7F E3 FB 78 */	mr r3, r31
/* 8139D050 | 4B FC 58 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D054 | 38 00 00 01 */	li r0, 0x1
/* 8139D058 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139D05C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D060 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D064 | 7C 08 03 A6 */	mtlr r0
/* 8139D068 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D06C | 4E 80 00 20 */	blr
.endfn startMailNumAnm__Q33ipl5scene6ButtonFv

# .text:0x13DC | 0x8139D070 | size: 0x64
# ipl::scene::Button::stopMailNumAnm()
.fn stopMailNumAnm__Q33ipl5scene6ButtonFv, global
/* 8139D070 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D074 | 7C 08 02 A6 */	mflr r0
/* 8139D078 | C0 22 84 C0 */	lfs f1, lbl_816948C0@sda21(r0)
/* 8139D07C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D080 | 38 00 00 02 */	li r0, 0x2
/* 8139D084 | C0 02 84 D0 */	lfs f0, lbl_816948D0@sda21(r0)
/* 8139D088 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D08C | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D090 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 8139D094 | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D098 | D0 24 00 08 */	stfs f1, 0x8(r4)
/* 8139D09C | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D0A0 | D0 04 00 04 */	stfs f0, 0x4(r4)
/* 8139D0A4 | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8139D0A8 | D0 24 00 10 */	stfs f1, 0x10(r4)
/* 8139D0AC | 83 E3 00 CC */	lwz r31, 0xcc(r3)
/* 8139D0B0 | 7F E3 FB 78 */	mr r3, r31
/* 8139D0B4 | 4B FC 57 BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D0B8 | 38 00 00 01 */	li r0, 0x1
/* 8139D0BC | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139D0C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D0C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D0C8 | 7C 08 03 A6 */	mtlr r0
/* 8139D0CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D0D0 | 4E 80 00 20 */	blr
.endfn stopMailNumAnm__Q33ipl5scene6ButtonFv

# .text:0x1440 | 0x8139D0D4 | size: 0x50
# ipl::scene::Button::startNewMailAnm()
.fn startNewMailAnm__Q33ipl5scene6ButtonFv, global
/* 8139D0D4 | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8139D0D8 | 38 00 00 00 */	li r0, 0x0
/* 8139D0DC | 38 A2 84 B0 */	li r5, scLoopAnmFrame__Q23ipl5scene@sda21
/* 8139D0E0 | C0 22 84 B0 */	lfs f1, scLoopAnmFrame__Q23ipl5scene@sda21(r0)
/* 8139D0E4 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 8139D0E8 | 38 80 00 01 */	li r4, 0x1
/* 8139D0EC | C0 45 00 04 */	lfs f2, 0x4(r5)
/* 8139D0F0 | 80 A3 00 D0 */	lwz r5, 0xd0(r3)
/* 8139D0F4 | C0 02 84 D0 */	lfs f0, lbl_816948D0@sda21(r0)
/* 8139D0F8 | D0 25 00 08 */	stfs f1, 0x8(r5)
/* 8139D0FC | 80 A3 00 D0 */	lwz r5, 0xd0(r3)
/* 8139D100 | D0 45 00 04 */	stfs f2, 0x4(r5)
/* 8139D104 | 80 A3 00 D0 */	lwz r5, 0xd0(r3)
/* 8139D108 | D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8139D10C | 88 03 01 05 */	lbz r0, 0x105(r3)
/* 8139D110 | 98 83 01 04 */	stb r4, 0x104(r3)
/* 8139D114 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139D118 | 4C 82 00 20 */	bnelr
/* 8139D11C | 48 00 00 08 */	b startNewMailAnm___Q33ipl5scene6ButtonFv
/* 8139D120 | 4E 80 00 20 */	blr
.endfn startNewMailAnm__Q33ipl5scene6ButtonFv

# .text:0x1490 | 0x8139D124 | size: 0x64
# ipl::scene::Button::startNewMailAnm_()
.fn startNewMailAnm___Q33ipl5scene6ButtonFv, global
/* 8139D124 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D128 | 7C 08 02 A6 */	mflr r0
/* 8139D12C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D130 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D134 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139D138 | 7C 7E 1B 78 */	mr r30, r3
/* 8139D13C | 83 E3 00 D0 */	lwz r31, 0xd0(r3)
/* 8139D140 | 7F E3 FB 78 */	mr r3, r31
/* 8139D144 | 4B FC 57 2D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D148 | 38 00 00 01 */	li r0, 0x1
/* 8139D14C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139D150 | 3C 80 81 65 */	lis r4, lbl_8164C148@ha
/* 8139D154 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139D158 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139D15C | 38 84 C1 48 */	addi r4, r4, lbl_8164C148@l
/* 8139D160 | 4B FC E3 0D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139D164 | 38 7E 01 08 */	addi r3, r30, 0x108
/* 8139D168 | 38 80 0B B8 */	li r4, 0xbb8
/* 8139D16C | 4B FC 72 B9 */	bl set_msec__Q33ipl7utility5timerFi
/* 8139D170 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D174 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D178 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139D17C | 7C 08 03 A6 */	mtlr r0
/* 8139D180 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D184 | 4E 80 00 20 */	blr
.endfn startNewMailAnm___Q33ipl5scene6ButtonFv

# .text:0x14F4 | 0x8139D188 | size: 0x78
# ipl::scene::Button::stopNewMailAnm()
.fn stopNewMailAnm__Q33ipl5scene6ButtonFv, global
/* 8139D188 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D18C | 7C 08 02 A6 */	mflr r0
/* 8139D190 | C0 22 84 C0 */	lfs f1, lbl_816948C0@sda21(r0)
/* 8139D194 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D198 | 38 00 00 02 */	li r0, 0x2
/* 8139D19C | C0 02 84 D0 */	lfs f0, lbl_816948D0@sda21(r0)
/* 8139D1A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D1A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139D1A8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139D1AC | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8139D1B0 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 8139D1B4 | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8139D1B8 | D0 24 00 08 */	stfs f1, 0x8(r4)
/* 8139D1BC | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8139D1C0 | D0 04 00 04 */	stfs f0, 0x4(r4)
/* 8139D1C4 | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8139D1C8 | D0 24 00 10 */	stfs f1, 0x10(r4)
/* 8139D1CC | 83 E3 00 D0 */	lwz r31, 0xd0(r3)
/* 8139D1D0 | 7F E3 FB 78 */	mr r3, r31
/* 8139D1D4 | 4B FC 56 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D1D8 | 38 60 00 01 */	li r3, 0x1
/* 8139D1DC | 38 00 00 00 */	li r0, 0x0
/* 8139D1E0 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8139D1E4 | 98 1E 01 04 */	stb r0, 0x104(r30)
/* 8139D1E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D1EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139D1F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D1F4 | 7C 08 03 A6 */	mtlr r0
/* 8139D1F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D1FC | 4E 80 00 20 */	blr
.endfn stopNewMailAnm__Q33ipl5scene6ButtonFv

# .text:0x156C | 0x8139D200 | size: 0xEC
# ipl::scene::Button::enableBtn()
.fn enableBtn__Q33ipl5scene6ButtonFv, global
/* 8139D200 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139D204 | 7C 08 02 A6 */	mflr r0
/* 8139D208 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139D20C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139D210 | 48 25 C2 9D */	bl _savegpr_22
/* 8139D214 | 3B 20 00 01 */	li r25, 0x1
/* 8139D218 | 3A E0 00 00 */	li r23, 0x0
/* 8139D21C | 3F 60 81 61 */	lis r27, scBtnFadeFrame__Q23ipl5scene@ha
/* 8139D220 | 3F A0 81 65 */	lis r29, mscButtonName__Q33ipl5scene6Button@ha
/* 8139D224 | 9B 23 01 10 */	stb r25, 0x110(r3)
/* 8139D228 | 7C 76 1B 78 */	mr r22, r3
/* 8139D22C | 7E FA BB 78 */	mr r26, r23
/* 8139D230 | 7E FC BB 78 */	mr r28, r23
/* 8139D234 | 3B 7B F9 18 */	addi r27, r27, scBtnFadeFrame__Q23ipl5scene@l
/* 8139D238 | 3B BD BF 5C */	addi r29, r29, mscButtonName__Q33ipl5scene6Button@l
/* 8139D23C | 3B E0 00 00 */	li r31, 0x0
/* 8139D240 | 3B C0 00 00 */	li r30, 0x0
.L_8139D244:
/* 8139D244 | 7C 76 F2 14 */	add r3, r22, r30
/* 8139D248 | 80 03 00 D8 */	lwz r0, 0xd8(r3)
/* 8139D24C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139D250 | 41 82 00 3C */	beq .L_8139D28C
/* 8139D254 | 93 43 00 D8 */	stw r26, 0xd8(r3)
/* 8139D258 | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 8139D25C | 80 76 00 58 */	lwz r3, 0x58(r22)
/* 8139D260 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139D264 | 48 17 50 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139D268 | 7C 9B FA 14 */	add r4, r27, r31
/* 8139D26C | 7C 78 1B 78 */	mr r24, r3
/* 8139D270 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8139D274 | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8139D278 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139D27C | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139D280 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 8139D284 | 4B FC 55 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D288 | 93 38 00 14 */	stw r25, 0x14(r24)
.L_8139D28C:
/* 8139D28C | 80 76 00 58 */	lwz r3, 0x58(r22)
/* 8139D290 | 38 A0 00 01 */	li r5, 0x1
/* 8139D294 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 8139D298 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139D29C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D2A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139D2A4 | 7D 89 03 A6 */	mtctr r12
/* 8139D2A8 | 4E 80 04 21 */	bctrl
/* 8139D2AC | 7C 64 1B 78 */	mr r4, r3
/* 8139D2B0 | 80 76 00 60 */	lwz r3, 0x60(r22)
/* 8139D2B4 | 4B FC DF 65 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 8139D2B8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8139D2BC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8139D2C0 | 2C 17 00 09 */	cmpwi r23, 0x9
/* 8139D2C4 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 8139D2C8 | 41 80 FF 7C */	blt .L_8139D244
/* 8139D2CC | 38 76 00 70 */	addi r3, r22, 0x70
/* 8139D2D0 | 48 04 DF 81 */	bl iplUnk1_813EB250
/* 8139D2D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139D2D8 | 48 25 C2 21 */	bl _restgpr_22
/* 8139D2DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139D2E0 | 7C 08 03 A6 */	mtlr r0
/* 8139D2E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139D2E8 | 4E 80 00 20 */	blr
.endfn enableBtn__Q33ipl5scene6ButtonFv

# .text:0x1658 | 0x8139D2EC | size: 0x64
# ipl::scene::Button::disableBtn()
.fn disableBtn__Q33ipl5scene6ButtonFv, global
/* 8139D2EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D2F0 | 7C 08 02 A6 */	mflr r0
/* 8139D2F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D2F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D2FC | 48 25 C1 CD */	bl _savegpr_29
/* 8139D300 | 7C 7D 1B 78 */	mr r29, r3
/* 8139D304 | 3B C0 00 00 */	li r30, 0x0
/* 8139D308 | 3B E0 00 00 */	li r31, 0x0
.L_8139D30C:
/* 8139D30C | 7C 7D FA 14 */	add r3, r29, r31
/* 8139D310 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8139D314 | 48 03 46 99 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8139D318 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139D31C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8139D320 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 8139D324 | 41 80 FF E8 */	blt .L_8139D30C
/* 8139D328 | 38 00 00 00 */	li r0, 0x0
/* 8139D32C | 38 7D 00 70 */	addi r3, r29, 0x70
/* 8139D330 | 98 1D 01 10 */	stb r0, 0x110(r29)
/* 8139D334 | 48 04 DF C5 */	bl iplUnk1_813EB2F8
/* 8139D338 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D33C | 48 25 C1 D9 */	bl _restgpr_29
/* 8139D340 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D344 | 7C 08 03 A6 */	mtlr r0
/* 8139D348 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D34C | 4E 80 00 20 */	blr
.endfn disableBtn__Q33ipl5scene6ButtonFv

# .text:0x16BC | 0x8139D350 | size: 0xD8
# ipl::scene::Button::initBtn(int)
.fn initBtn__Q33ipl5scene6ButtonFi, global
/* 8139D350 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D354 | 7C 08 02 A6 */	mflr r0
/* 8139D358 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D35C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D360 | 48 25 C1 65 */	bl _savegpr_28
/* 8139D364 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139D368 | 7C 7C 1B 78 */	mr r28, r3
/* 8139D36C | 7C 9E 23 78 */	mr r30, r4
/* 8139D370 | 41 80 00 A0 */	blt .L_8139D410
/* 8139D374 | 2C 04 00 0B */	cmpwi r4, 0xb
/* 8139D378 | 40 80 00 98 */	bge .L_8139D410
/* 8139D37C | 54 9D 10 3A */	slwi r29, r4, 2
/* 8139D380 | 7C A3 EA 14 */	add r5, r3, r29
/* 8139D384 | 80 05 00 D8 */	lwz r0, 0xd8(r5)
/* 8139D388 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139D38C | 41 82 00 50 */	beq .L_8139D3DC
/* 8139D390 | 3B E0 00 00 */	li r31, 0x0
/* 8139D394 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8139D398 | 93 E5 00 D8 */	stw r31, 0xd8(r5)
/* 8139D39C | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 8139D3A0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139D3A4 | 48 17 4F 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139D3A8 | 3C 80 81 61 */	lis r4, scBtnFadeFrame__Q23ipl5scene@ha
/* 8139D3AC | 57 C0 20 36 */	slwi r0, r30, 4
/* 8139D3B0 | 38 84 F9 18 */	addi r4, r4, scBtnFadeFrame__Q23ipl5scene@l
/* 8139D3B4 | 7C 7E 1B 78 */	mr r30, r3
/* 8139D3B8 | 7C 84 02 14 */	add r4, r4, r0
/* 8139D3BC | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8139D3C0 | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8139D3C4 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139D3C8 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8139D3CC | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 8139D3D0 | 4B FC 54 A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D3D4 | 38 00 00 01 */	li r0, 0x1
/* 8139D3D8 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_8139D3DC:
/* 8139D3DC | 80 7C 00 58 */	lwz r3, 0x58(r28)
/* 8139D3E0 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 8139D3E4 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 8139D3E8 | 38 A0 00 01 */	li r5, 0x1
/* 8139D3EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139D3F0 | 7C 84 E8 2E */	lwzx r4, r4, r29
/* 8139D3F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D3F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139D3FC | 7D 89 03 A6 */	mtctr r12
/* 8139D400 | 4E 80 04 21 */	bctrl
/* 8139D404 | 7C 64 1B 78 */	mr r4, r3
/* 8139D408 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8139D40C | 4B FC DE 0D */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
.L_8139D410:
/* 8139D410 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D414 | 48 25 C0 FD */	bl _restgpr_28
/* 8139D418 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D41C | 7C 08 03 A6 */	mtlr r0
/* 8139D420 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D424 | 4E 80 00 20 */	blr
.endfn initBtn__Q33ipl5scene6ButtonFi

# .text:0x1794 | 0x8139D428 | size: 0x34
# ipl::scene::Button::reserveAnm(int)
.fn reserveAnm__Q33ipl5scene6ButtonFi, global
/* 8139D428 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D42C | 7C 08 02 A6 */	mflr r0
/* 8139D430 | 38 63 01 14 */	addi r3, r3, 0x114
/* 8139D434 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D438 | 38 00 00 00 */	li r0, 0x0
/* 8139D43C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8139D440 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139D444 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8139D448 | 48 00 05 9D */	bl "push__Q33ipl7utility36Queue<Q43ipl5scene6Button7Command,8>FRCQ43ipl5scene6Button7Command"
/* 8139D44C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D450 | 7C 08 03 A6 */	mtlr r0
/* 8139D454 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D458 | 4E 80 00 20 */	blr
.endfn reserveAnm__Q33ipl5scene6ButtonFi

# .text:0x17C8 | 0x8139D45C | size: 0x38
# ipl::scene::Button::reserveText(int, unsigned long)
.fn reserveText__Q33ipl5scene6ButtonFiUl, global
/* 8139D45C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D460 | 7C 08 02 A6 */	mflr r0
/* 8139D464 | 38 63 01 14 */	addi r3, r3, 0x114
/* 8139D468 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D46C | 38 00 00 01 */	li r0, 0x1
/* 8139D470 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8139D474 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139D478 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8139D47C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8139D480 | 48 00 05 65 */	bl "push__Q33ipl7utility36Queue<Q43ipl5scene6Button7Command,8>FRCQ43ipl5scene6Button7Command"
/* 8139D484 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D488 | 7C 08 03 A6 */	mtlr r0
/* 8139D48C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D490 | 4E 80 00 20 */	blr
.endfn reserveText__Q33ipl5scene6ButtonFiUl

# .text:0x1800 | 0x8139D494 | size: 0x14
# ipl::scene::OptOutButton::OptOutButton()
.fn __ct__Q33ipl5scene12OptOutButtonFv, global
/* 8139D494 | 38 00 00 00 */	li r0, 0x0
/* 8139D498 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8139D49C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139D4A0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8139D4A4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12OptOutButtonFv

# .text:0x1814 | 0x8139D4A8 | size: 0x174
# ipl::scene::OptOutButton::create(ipl::nand::LayoutFile*, EGG::Heap*)
.fn create__Q33ipl5scene12OptOutButtonFPQ33ipl4nand10LayoutFilePQ23EGG4Heap, global
/* 8139D4A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D4AC | 7C 08 02 A6 */	mflr r0
/* 8139D4B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D4B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D4B8 | 48 25 C0 0D */	bl _savegpr_28
/* 8139D4BC | 3F E0 81 65 */	lis r31, lbl_8164BF48@ha
/* 8139D4C0 | 7C 7C 1B 78 */	mr r28, r3
/* 8139D4C4 | 7C 9D 23 78 */	mr r29, r4
/* 8139D4C8 | 7C BE 2B 78 */	mr r30, r5
/* 8139D4CC | 3B FF BF 48 */	addi r31, r31, lbl_8164BF48@l
/* 8139D4D0 | 38 60 05 80 */	li r3, 0x580
/* 8139D4D4 | 48 25 AB C9 */	bl __nw__FUl
/* 8139D4D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139D4DC | 41 82 00 18 */	beq .L_8139D4F4
/* 8139D4E0 | 7F C4 F3 78 */	mr r4, r30
/* 8139D4E4 | 7F A5 EB 78 */	mr r5, r29
/* 8139D4E8 | 38 FF 02 14 */	addi r7, r31, 0x214
/* 8139D4EC | 38 CD 87 44 */	li r6, lbl_81696784@sda21
/* 8139D4F0 | 4B FC CB 35 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8139D4F4:
/* 8139D4F4 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 8139D4F8 | 38 9F 02 27 */	addi r4, r31, 0x227
/* 8139D4FC | 38 BF 00 EC */	addi r5, r31, 0xec
/* 8139D500 | 38 C0 00 00 */	li r6, 0x0
/* 8139D504 | 38 E0 00 01 */	li r7, 0x1
/* 8139D508 | 4B FC CF D9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139D50C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8139D510 | 38 9F 02 41 */	addi r4, r31, 0x241
/* 8139D514 | 38 BF 00 EC */	addi r5, r31, 0xec
/* 8139D518 | 38 C0 00 00 */	li r6, 0x0
/* 8139D51C | 38 E0 00 00 */	li r7, 0x0
/* 8139D520 | 4B FC CF C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139D524 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8139D528 | 38 9F 02 5C */	addi r4, r31, 0x25c
/* 8139D52C | 38 AD 87 67 */	li r5, lbl_816967A7@sda21
/* 8139D530 | 38 C0 00 00 */	li r6, 0x0
/* 8139D534 | 38 E0 00 00 */	li r7, 0x0
/* 8139D538 | 4B FC CF A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139D53C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8139D540 | 38 9F 02 78 */	addi r4, r31, 0x278
/* 8139D544 | 38 AD 87 67 */	li r5, lbl_816967A7@sda21
/* 8139D548 | 38 C0 00 00 */	li r6, 0x0
/* 8139D54C | 38 E0 00 00 */	li r7, 0x0
/* 8139D550 | 4B FC CF 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139D554 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8139D558 | 38 9F 02 95 */	addi r4, r31, 0x295
/* 8139D55C | 38 AD 87 67 */	li r5, lbl_816967A7@sda21
/* 8139D560 | 38 C0 00 00 */	li r6, 0x0
/* 8139D564 | 38 E0 00 00 */	li r7, 0x0
/* 8139D568 | 4B FC CF 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139D56C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8139D570 | 4B FC D0 C5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8139D574 | 38 60 00 34 */	li r3, 0x34
/* 8139D578 | 48 25 AB 25 */	bl __nw__FUl
/* 8139D57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139D580 | 41 82 00 20 */	beq .L_8139D5A0
/* 8139D584 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8139D588 | 38 80 00 00 */	li r4, 0x0
/* 8139D58C | 38 C0 00 00 */	li r6, 0x0
/* 8139D590 | 38 E0 00 00 */	li r7, 0x0
/* 8139D594 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 8139D598 | 39 00 00 00 */	li r8, 0x0
/* 8139D59C | 4B FA 7A D5 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_8139D5A0:
/* 8139D5A0 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 8139D5A4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8139D5A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D5AC | 38 84 00 04 */	addi r4, r4, 0x4
/* 8139D5B0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8139D5B4 | 7D 89 03 A6 */	mtctr r12
/* 8139D5B8 | 4E 80 04 21 */	bctrl
/* 8139D5BC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8139D5C0 | 38 80 00 00 */	li r4, 0x0
/* 8139D5C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D5C8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139D5CC | 7D 89 03 A6 */	mtctr r12
/* 8139D5D0 | 4E 80 04 21 */	bctrl
/* 8139D5D4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8139D5D8 | 38 8D 87 6E */	li r4, lbl_816967AE@sda21
/* 8139D5DC | 38 A0 00 01 */	li r5, 0x1
/* 8139D5E0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139D5E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D5E8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139D5EC | 7D 89 03 A6 */	mtctr r12
/* 8139D5F0 | 4E 80 04 21 */	bctrl
/* 8139D5F4 | 7C 64 1B 78 */	mr r4, r3
/* 8139D5F8 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8139D5FC | 38 A0 00 01 */	li r5, 0x1
/* 8139D600 | 4B FC DB CD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8139D604 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D608 | 48 25 BF 09 */	bl _restgpr_28
/* 8139D60C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D610 | 7C 08 03 A6 */	mtlr r0
/* 8139D614 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D618 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene12OptOutButtonFPQ33ipl4nand10LayoutFilePQ23EGG4Heap

# .text:0x1988 | 0x8139D61C | size: 0x8C
# ipl::scene::OptOutButton::setText(unsigned long)
.fn setText__Q33ipl5scene12OptOutButtonFUl, global
/* 8139D61C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D620 | 7C 08 02 A6 */	mflr r0
/* 8139D624 | 38 A0 00 01 */	li r5, 0x1
/* 8139D628 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D62C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D630 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139D634 | 7C 9E 23 78 */	mr r30, r4
/* 8139D638 | 38 8D 87 75 */	li r4, lbl_816967B5@sda21
/* 8139D63C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139D640 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139D644 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D648 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139D64C | 7D 89 03 A6 */	mtctr r12
/* 8139D650 | 4E 80 04 21 */	bctrl
/* 8139D654 | 4B FA 88 11 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8139D658 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139D65C | 7C 7F 1B 78 */	mr r31, r3
/* 8139D660 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139D664 | 7F C4 F3 78 */	mr r4, r30
/* 8139D668 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 8139D66C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139D670 | 4B FA 11 4D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139D674 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139D678 | 7C 64 1B 78 */	mr r4, r3
/* 8139D67C | 7F E3 FB 78 */	mr r3, r31
/* 8139D680 | 38 A0 00 00 */	li r5, 0x0
/* 8139D684 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8139D688 | 7D 89 03 A6 */	mtctr r12
/* 8139D68C | 4E 80 04 21 */	bctrl
/* 8139D690 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D694 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D698 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139D69C | 7C 08 03 A6 */	mtlr r0
/* 8139D6A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D6A4 | 4E 80 00 20 */	blr
.endfn setText__Q33ipl5scene12OptOutButtonFUl

# .text:0x1A14 | 0x8139D6A8 | size: 0x78
# ipl::scene::OptOutButton::reset_gui()
.fn reset_gui__Q33ipl5scene12OptOutButtonFv, global
/* 8139D6A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D6AC | 7C 08 02 A6 */	mflr r0
/* 8139D6B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D6B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D6B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139D6BC | 7C 7E 1B 78 */	mr r30, r3
/* 8139D6C0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8139D6C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139D6C8 | 41 82 00 2C */	beq .L_8139D6F4
/* 8139D6CC | 38 00 00 00 */	li r0, 0x0
/* 8139D6D0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8139D6D4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8139D6D8 | 38 80 00 03 */	li r4, 0x3
/* 8139D6DC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8139D6E0 | 48 17 4C 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139D6E4 | 7C 7F 1B 78 */	mr r31, r3
/* 8139D6E8 | 4B FC 51 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D6EC | 38 00 00 01 */	li r0, 0x1
/* 8139D6F0 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8139D6F4:
/* 8139D6F4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8139D6F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D6FC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139D700 | 7D 89 03 A6 */	mtctr r12
/* 8139D704 | 4E 80 04 21 */	bctrl
/* 8139D708 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D70C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D710 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139D714 | 7C 08 03 A6 */	mtlr r0
/* 8139D718 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D71C | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene12OptOutButtonFv

# .text:0x1A8C | 0x8139D720 | size: 0xAC
# ipl::scene::OptOutButton::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene12OptOutButtonFPCcPQ33ipl10controller9Interface, global
/* 8139D720 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D724 | 7C 08 02 A6 */	mflr r0
/* 8139D728 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D72C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D730 | 48 25 BD 99 */	bl _savegpr_29
/* 8139D734 | 7C 7D 1B 78 */	mr r29, r3
/* 8139D738 | 7C 83 23 78 */	mr r3, r4
/* 8139D73C | 7C BE 2B 78 */	mr r30, r5
/* 8139D740 | 38 8D 86 B9 */	li r4, lbl_816966F9@sda21
/* 8139D744 | 48 26 4D 3D */	bl strcmp
/* 8139D748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139D74C | 40 82 00 68 */	bne .L_8139D7B4
/* 8139D750 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8139D754 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139D758 | 40 82 00 50 */	bne .L_8139D7A8
/* 8139D75C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8139D760 | 38 80 00 02 */	li r4, 0x2
/* 8139D764 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139D768 | 48 17 4B B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139D76C | 7C 7F 1B 78 */	mr r31, r3
/* 8139D770 | 4B FC 51 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D774 | 38 00 00 01 */	li r0, 0x1
/* 8139D778 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139D77C | 3C 80 81 65 */	lis r4, lbl_8164C0CC@ha
/* 8139D780 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139D784 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139D788 | 38 84 C0 CC */	addi r4, r4, lbl_8164C0CC@l
/* 8139D78C | 4B FC DC E1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139D790 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139D794 | 7F C3 F3 78 */	mr r3, r30
/* 8139D798 | 38 80 00 00 */	li r4, 0x0
/* 8139D79C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139D7A0 | 7D 89 03 A6 */	mtctr r12
/* 8139D7A4 | 4E 80 04 21 */	bctrl
.L_8139D7A8:
/* 8139D7A8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8139D7AC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139D7B0 | 90 1D 00 08 */	stw r0, 0x8(r29)
.L_8139D7B4:
/* 8139D7B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D7B8 | 48 25 BD 5D */	bl _restgpr_29
/* 8139D7BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D7C0 | 7C 08 03 A6 */	mtlr r0
/* 8139D7C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D7C8 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene12OptOutButtonFPCcPQ33ipl10controller9Interface

# .text:0x1B38 | 0x8139D7CC | size: 0x7C
# ipl::scene::OptOutButton::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene12OptOutButtonFPCc, global
/* 8139D7CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139D7D0 | 7C 08 02 A6 */	mflr r0
/* 8139D7D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139D7D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139D7DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139D7E0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139D7E4 | 7C 83 23 78 */	mr r3, r4
/* 8139D7E8 | 38 8D 86 B9 */	li r4, lbl_816966F9@sda21
/* 8139D7EC | 48 26 4C 95 */	bl strcmp
/* 8139D7F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139D7F4 | 40 82 00 3C */	bne .L_8139D830
/* 8139D7F8 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8139D7FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139D800 | 40 82 00 24 */	bne .L_8139D824
/* 8139D804 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8139D808 | 38 80 00 03 */	li r4, 0x3
/* 8139D80C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139D810 | 48 17 4B 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139D814 | 7C 7F 1B 78 */	mr r31, r3
/* 8139D818 | 4B FC 50 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139D81C | 38 00 00 01 */	li r0, 0x1
/* 8139D820 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8139D824:
/* 8139D824 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8139D828 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139D82C | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8139D830:
/* 8139D830 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139D834 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139D838 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139D83C | 7C 08 03 A6 */	mtlr r0
/* 8139D840 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139D844 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene12OptOutButtonFPCc

# .text:0x1BB4 | 0x8139D848 | size: 0xC8
# ipl::scene::ButtonEventHandlerBase::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv, global
/* 8139D848 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D84C | 7C 08 02 A6 */	mflr r0
/* 8139D850 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D854 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D858 | 48 25 BC 69 */	bl _savegpr_27
/* 8139D85C | 7C 7B 1B 78 */	mr r27, r3
/* 8139D860 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139D864 | 7C 9C 23 78 */	mr r28, r4
/* 8139D868 | 7C BD 2B 78 */	mr r29, r5
/* 8139D86C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D870 | 7C DE 33 78 */	mr r30, r6
/* 8139D874 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139D878 | 7D 89 03 A6 */	mtctr r12
/* 8139D87C | 4E 80 04 21 */	bctrl
/* 8139D880 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D884 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139D888 | 7D 89 03 A6 */	mtctr r12
/* 8139D88C | 4E 80 04 21 */	bctrl
/* 8139D890 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139D894 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8139D898 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139D89C | 38 80 00 05 */	li r4, 0x5
/* 8139D8A0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8139D8A4 | 48 06 D8 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139D8A8 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 8139D8AC | 41 82 00 24 */	beq .L_8139D8D0
/* 8139D8B0 | 40 80 00 28 */	bge .L_8139D8D8
/* 8139D8B4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8139D8B8 | 40 80 00 08 */	bge .L_8139D8C0
/* 8139D8BC | 48 00 00 1C */	b .L_8139D8D8
.L_8139D8C0:
/* 8139D8C0 | 7F E4 FB 78 */	mr r4, r31
/* 8139D8C4 | 7F C5 F3 78 */	mr r5, r30
/* 8139D8C8 | 4B FF ED C9 */	bl startPointEvent__Q33ipl5scene6ButtonFPCcPQ33ipl10controller9Interface
/* 8139D8CC | 48 00 00 0C */	b .L_8139D8D8
.L_8139D8D0:
/* 8139D8D0 | 7F E4 FB 78 */	mr r4, r31
/* 8139D8D4 | 4B FF EF 19 */	bl startLeftEvent__Q33ipl5scene6ButtonFPCc
.L_8139D8D8:
/* 8139D8D8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8139D8DC | 7F 63 DB 78 */	mr r3, r27
/* 8139D8E0 | 7F 84 E3 78 */	mr r4, r28
/* 8139D8E4 | 7F A5 EB 78 */	mr r5, r29
/* 8139D8E8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139D8EC | 7F C6 F3 78 */	mr r6, r30
/* 8139D8F0 | 7D 89 03 A6 */	mtctr r12
/* 8139D8F4 | 4E 80 04 21 */	bctrl
/* 8139D8F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D8FC | 48 25 BC 11 */	bl _restgpr_27
/* 8139D900 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D904 | 7C 08 03 A6 */	mtlr r0
/* 8139D908 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D90C | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv

# .text:0x1C7C | 0x8139D910 | size: 0x4
# ipl::scene::ButtonEventHandlerBase::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPCQ33ipl10controller9Interface, global
/* 8139D910 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPCQ33ipl10controller9Interface

# .text:0x1C80 | 0x8139D914 | size: 0xCC
# ipl::scene::OptOutButtonEventHandlerBase::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPv, global
/* 8139D914 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139D918 | 7C 08 02 A6 */	mflr r0
/* 8139D91C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139D920 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D924 | 48 25 BB 9D */	bl _savegpr_27
/* 8139D928 | 7C 7B 1B 78 */	mr r27, r3
/* 8139D92C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139D930 | 7C 9C 23 78 */	mr r28, r4
/* 8139D934 | 7C BD 2B 78 */	mr r29, r5
/* 8139D938 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D93C | 7C DE 33 78 */	mr r30, r6
/* 8139D940 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139D944 | 7D 89 03 A6 */	mtctr r12
/* 8139D948 | 4E 80 04 21 */	bctrl
/* 8139D94C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139D950 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139D954 | 7D 89 03 A6 */	mtctr r12
/* 8139D958 | 4E 80 04 21 */	bctrl
/* 8139D95C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139D960 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8139D964 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139D968 | 38 80 00 05 */	li r4, 0x5
/* 8139D96C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8139D970 | 48 06 D7 C9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139D974 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 8139D978 | 38 63 00 64 */	addi r3, r3, 0x64
/* 8139D97C | 41 82 00 24 */	beq .L_8139D9A0
/* 8139D980 | 40 80 00 28 */	bge .L_8139D9A8
/* 8139D984 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8139D988 | 40 80 00 08 */	bge .L_8139D990
/* 8139D98C | 48 00 00 1C */	b .L_8139D9A8
.L_8139D990:
/* 8139D990 | 7F E4 FB 78 */	mr r4, r31
/* 8139D994 | 7F C5 F3 78 */	mr r5, r30
/* 8139D998 | 4B FF FD 89 */	bl start_point_event__Q33ipl5scene12OptOutButtonFPCcPQ33ipl10controller9Interface
/* 8139D99C | 48 00 00 0C */	b .L_8139D9A8
.L_8139D9A0:
/* 8139D9A0 | 7F E4 FB 78 */	mr r4, r31
/* 8139D9A4 | 4B FF FE 29 */	bl start_left_event__Q33ipl5scene12OptOutButtonFPCc
.L_8139D9A8:
/* 8139D9A8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8139D9AC | 7F 63 DB 78 */	mr r3, r27
/* 8139D9B0 | 7F 84 E3 78 */	mr r4, r28
/* 8139D9B4 | 7F A5 EB 78 */	mr r5, r29
/* 8139D9B8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139D9BC | 7F C6 F3 78 */	mr r6, r30
/* 8139D9C0 | 7D 89 03 A6 */	mtctr r12
/* 8139D9C4 | 4E 80 04 21 */	bctrl
/* 8139D9C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139D9CC | 48 25 BB 41 */	bl _restgpr_27
/* 8139D9D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139D9D4 | 7C 08 03 A6 */	mtlr r0
/* 8139D9D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139D9DC | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPv

# .text:0x1D4C | 0x8139D9E0 | size: 0x4
# ipl::scene::OptOutButtonEventHandlerBase::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPCQ33ipl10controller9Interface, global
/* 8139D9E0 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPCQ33ipl10controller9Interface

# .text:0x1D50 | 0x8139D9E4 | size: 0x70
# ipl::utility::Queue<ipl::scene::Button::Command, 8>::push(const ipl::scene::Button::Command&)
.fn "push__Q33ipl7utility36Queue<Q43ipl5scene6Button7Command,8>FRCQ43ipl5scene6Button7Command", global
/* 8139D9E4 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 8139D9E8 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8139D9EC | 7C 05 00 00 */	cmpw r5, r0
/* 8139D9F0 | 40 82 00 0C */	bne .L_8139D9FC
/* 8139D9F4 | 38 60 00 00 */	li r3, 0x0
/* 8139D9F8 | 4E 80 00 20 */	blr
.L_8139D9FC:
/* 8139D9FC | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8139DA00 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8139DA04 | 1C E0 00 0C */	mulli r7, r0, 0xc
/* 8139DA08 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8139DA0C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8139DA10 | 7C C3 39 2E */	stwx r6, r3, r7
/* 8139DA14 | 7C 83 3A 14 */	add r4, r3, r7
/* 8139DA18 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 8139DA1C | 90 04 00 08 */	stw r0, 0x8(r4)
/* 8139DA20 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 8139DA24 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 8139DA28 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8139DA2C | 7C 04 00 00 */	cmpw r4, r0
/* 8139DA30 | 90 83 00 6C */	stw r4, 0x6c(r3)
/* 8139DA34 | 41 80 00 0C */	blt .L_8139DA40
/* 8139DA38 | 38 00 00 00 */	li r0, 0x0
/* 8139DA3C | 90 03 00 6C */	stw r0, 0x6c(r3)
.L_8139DA40:
/* 8139DA40 | 80 83 00 64 */	lwz r4, 0x64(r3)
/* 8139DA44 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8139DA48 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8139DA4C | 38 60 00 01 */	li r3, 0x1
/* 8139DA50 | 4E 80 00 20 */	blr
.endfn "push__Q33ipl7utility36Queue<Q43ipl5scene6Button7Command,8>FRCQ43ipl5scene6Button7Command"

# .text:0x1DC0 | 0x8139DA54 | size: 0x8
.fn "@20@__dt__Q33ipl5scene6ButtonFv", global
/* 8139DA54 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8139DA58 | 4B FF E3 04 */	b __dt__Q33ipl5scene6ButtonFv
.endfn "@20@__dt__Q33ipl5scene6ButtonFv"

# 0x8160F7B8..0x8160F9E0 | size: 0x228
.rodata
.balign 8

# .rodata:0x0 | 0x8160F7B8 | size: 0x160
# ipl::scene::scAnmFrame
.obj scAnmFrame__Q23ipl5scene, local
	.4byte 0x447A0000
	.4byte 0x44820000
	.4byte 0x45DAC000
	.4byte 0x45DC0000
	.4byte 0x45FA0000
	.4byte 0x45FB4000
	.4byte 0x45BB8000
	.4byte 0x45BCC000
	.4byte 0x44FA0000
	.4byte 0x45002000
	.4byte 0x453B8000
	.4byte 0x453EA000
	.4byte 0x455AC000
	.4byte 0x455DE000
	.4byte 0x457A0000
	.4byte 0x457BA000
	.4byte 0x459C4000
	.4byte 0x459DD000
	.4byte 0x4541C000
	.4byte 0x45429000
	.4byte 0x45562000
	.4byte 0x4556F000
	.4byte 0x45429000
	.4byte 0x45436000
	.4byte 0x4548D000
	.4byte 0x4549A000
	.4byte 0x45610000
	.4byte 0x4561D000
	.4byte 0x45624000
	.4byte 0x45631000
	.4byte 0x454F1000
	.4byte 0x454FE000
	.4byte 0x45555000
	.4byte 0x45562000
	.4byte 0x45638000
	.4byte 0x45645000
	.4byte 0x4564C000
	.4byte 0x45659000
	.4byte 0x46273000
	.4byte 0x4627A800
	.4byte 0x46273000
	.4byte 0x4627A800
	.4byte 0x46241000
	.4byte 0x46255000
	.4byte 0x46241000
	.4byte 0x46255000
	.4byte 0x461E9800
	.4byte 0x461EC000
	.4byte 0x461E9800
	.4byte 0x461EC000
	.4byte 0x461DD000
	.4byte 0x461DF800
	.4byte 0x461DD000
	.4byte 0x461DF800
	.4byte 0x453B8000
	.4byte 0x453CC000
	.4byte 0x452F0000
	.4byte 0x45304000
	.4byte 0x453B8000
	.4byte 0x453CC000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41F00000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41F00000
	.4byte 0x42200000
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
.endobj scAnmFrame__Q23ipl5scene

# .rodata:0x160 | 0x8160F918 | size: 0xB0
# ipl::scene::scBtnFadeFrame
.obj scBtnFadeFrame__Q23ipl5scene, local
	.4byte 0x44610000
	.4byte 0x44628000
	.4byte 0x44688000
	.4byte 0x446A8000
	.4byte 0x45B86000
	.4byte 0x45B89000
	.4byte 0x45B95000
	.4byte 0x45B99000
	.4byte 0x45D7A000
	.4byte 0x45D7D000
	.4byte 0x45D89000
	.4byte 0x45D8D000
	.4byte 0x44ED8000
	.4byte 0x44EE4000
	.4byte 0x44F14000
	.4byte 0x44F24000
	.4byte 0x4573C000
	.4byte 0x45742000
	.4byte 0x4575A000
	.4byte 0x45762000
	.4byte 0x45354000
	.4byte 0x4535A000
	.4byte 0x45372000
	.4byte 0x4537A000
	.4byte 0x45992000
	.4byte 0x45995000
	.4byte 0x459A1000
	.4byte 0x459A5000
	.4byte 0x45354000
	.4byte 0x4535A000
	.4byte 0x45372000
	.4byte 0x4537A000
	.4byte 0x45354000
	.4byte 0x4535D000
	.4byte 0x45372000
	.4byte 0x4537A000
	.4byte 0x4625A000
	.4byte 0x4625DC00
	.4byte 0x4628C000
	.4byte 0x4628FC00
	.4byte 0x4625A000
	.4byte 0x4625DC00
	.4byte 0x4628C000
	.4byte 0x4628FC00
.endobj scBtnFadeFrame__Q23ipl5scene

# .rodata:0x210 | 0x8160F9C8 | size: 0x18
.obj lbl_8160F9C8, local
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000000
.endobj lbl_8160F9C8

# 0x8164BF48..0x8164C2F8 | size: 0x3B0
.data
.balign 8

# .data:0x0 | 0x8164BF48 | size: 0xA
.obj lbl_8164BF48, global
	.string "B_CalExit"
.endobj lbl_8164BF48

# .data:0xA | 0x8164BF52 | size: 0xA
.obj lbl_8164BF52, global
	.string "B_AddExit"
.endobj lbl_8164BF52

# .data:0x14 | 0x8164BF5C | size: 0x2C
# ipl::scene::Button::mscButtonName
.obj mscButtonName__Q33ipl5scene6Button, global
	.4byte lbl_81696700
	.4byte lbl_81696706
	.4byte lbl_8169670B
	.4byte lbl_81696711
	.4byte lbl_81696717
	.4byte lbl_8164BF48
	.4byte lbl_8164BF52
	.4byte lbl_8169671D
	.4byte lbl_81696725
	.4byte lbl_8169672C
	.4byte lbl_81696733
.endobj mscButtonName__Q33ipl5scene6Button

# .data:0x40 | 0x8164BF88 | size: 0xA
.obj lbl_8164BF88, global
	.string "G_CalExit"
.endobj lbl_8164BF88

# .data:0x4A | 0x8164BF92 | size: 0xA
.obj lbl_8164BF92, global
	.string "G_AddExit"
.endobj lbl_8164BF92

# .data:0x54 | 0x8164BF9C | size: 0xD
.obj lbl_8164BF9C, global
	.string "G_ArwR_Focus"
.endobj lbl_8164BF9C

# .data:0x61 | 0x8164BFA9 | size: 0xF
.obj lbl_8164BFA9, global
	.4byte 0x475F4172
	.4byte 0x774C5F46
	.4byte 0x6F637573
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164BFA9

# .data:0x70 | 0x8164BFB8 | size: 0x2C
# ipl::scene::Button::mscGroupName
.obj mscGroupName__Q33ipl5scene6Button, global
	.4byte lbl_8169673A
	.4byte lbl_81696740
	.4byte lbl_81696745
	.4byte lbl_8169674B
	.4byte lbl_81696751
	.4byte lbl_8164BF88
	.4byte lbl_8164BF92
	.4byte lbl_81696757
	.4byte lbl_8169675F
	.4byte lbl_8164BF9C
	.4byte lbl_8164BFA9
.endobj mscGroupName__Q33ipl5scene6Button

# .data:0x9C | 0x8164BFE4 | size: 0xA
.obj lbl_8164BFE4, global
	.string "T_CalExit"
.endobj lbl_8164BFE4

# .data:0xA6 | 0x8164BFEE | size: 0xB
.obj lbl_8164BFEE, global
	.string "T_CalAdd_R"
.endobj lbl_8164BFEE

# .data:0xB1 | 0x8164BFF9 | size: 0xB
.obj lbl_8164BFF9, global
	.string "cmnBtn.ash"
.endobj lbl_8164BFF9

# .data:0xBC | 0x8164C004 | size: 0xC8
.obj lbl_8164C004, global
	.4byte 0x62616C6C
	.4byte 0x6F6F6E2E
	.4byte 0x61736800
	.4byte 0x6D795F49
	.4byte 0x706C546F
	.4byte 0x705F652E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F49706C
	.4byte 0x546F705F
	.4byte 0x652E6272
	.4byte 0x6C616E00
	.4byte 0x475F5365
	.4byte 0x656E4368
	.4byte 0x616E6765
	.4byte 0x00475F41
	.4byte 0x7277525F
	.4byte 0x41630047
	.4byte 0x5F417277
	.4byte 0x4C5F4163
	.4byte 0x00475F41
	.4byte 0x7277525F
	.4byte 0x48444163
	.4byte 0x00475F41
	.4byte 0x72774C5F
	.4byte 0x48444163
	.4byte 0x00475F41
	.4byte 0x7277525F
	.4byte 0x456E6400
	.4byte 0x475F4172
	.4byte 0x774C5F45
	.4byte 0x6E640047
	.4byte 0x5F43616C
	.4byte 0x45786974
	.4byte 0x00475F42
	.4byte 0x62735369
	.4byte 0x676E616C
	.4byte 0x00475F42
	.4byte 0x62735369
	.4byte 0x676E616C
	.4byte 0x5F6E6577
	.4byte 0x00475F41
	.4byte 0x7277526F
	.4byte 0x6F70006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x42616C6C
	.4byte 0x6F6F6E5F
	.4byte 0x612E6272
	.4byte 0x6C797400
.endobj lbl_8164C004

# .data:0x184 | 0x8164C0CC | size: 0x18
.obj lbl_8164C0CC, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F54
	.4byte 0x41524745
	.4byte 0x5454494E
	.4byte 0x47000000
.endobj lbl_8164C0CC

# .data:0x19C | 0x8164C0E4 | size: 0x64
.obj jumptable_8164C0E4, local
	.rel iplButton_8139CB58, .L_8139CB9C
	.rel iplButton_8139CB58, .L_8139CBA4
	.rel iplButton_8139CB58, .L_8139CBAC
	.rel iplButton_8139CB58, .L_8139CBDC
	.rel iplButton_8139CB58, .L_8139CBC4
	.rel iplButton_8139CB58, .L_8139CBF4
	.rel iplButton_8139CB58, .L_8139CBB4
	.rel iplButton_8139CB58, .L_8139CBE4
	.rel iplButton_8139CB58, .L_8139CC0C
	.rel iplButton_8139CB58, .L_8139CC1C
	.rel iplButton_8139CB58, .L_8139CC24
	.rel iplButton_8139CB58, .L_8139CC34
	.rel iplButton_8139CB58, .L_8139CC34
	.rel iplButton_8139CB58, .L_8139CC3C
	.rel iplButton_8139CB58, .L_8139CC3C
	.rel iplButton_8139CB58, .L_8139CC94
	.rel iplButton_8139CB58, .L_8139CC94
	.rel iplButton_8139CB58, .L_8139CC94
	.rel iplButton_8139CB58, .L_8139CC94
	.rel iplButton_8139CB58, .L_8139CC98
	.rel iplButton_8139CB58, .L_8139CC44
	.rel iplButton_8139CB58, .L_8139CC54
	.rel iplButton_8139CB58, .L_8139CC64
	.rel iplButton_8139CB58, .L_8139CC74
	.rel iplButton_8139CB58, .L_8139CC84
.endobj jumptable_8164C0E4

# .data:0x200 | 0x8164C148 | size: 0xB0
.obj lbl_8164C148, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x4E45575F
	.4byte 0x41525249
	.4byte 0x56414C00
	.4byte 0x6D795F42
	.4byte 0x746E5374
	.4byte 0x6F705F61
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F4274
	.4byte 0x6E53746F
	.4byte 0x705F615F
	.4byte 0x42746E5F
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x42746E53
	.4byte 0x746F705F
	.4byte 0x615F4274
	.4byte 0x6E5F4F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F42
	.4byte 0x746E5374
	.4byte 0x6F705F61
	.4byte 0x5F466F63
	.4byte 0x75735F49
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F42
	.4byte 0x746E5374
	.4byte 0x6F705F61
	.4byte 0x5F466F63
	.4byte 0x75735F4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x42746E53
	.4byte 0x746F705F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x2E62726C
	.4byte 0x616E0000
.endobj lbl_8164C148

# .data:0x2B0 | 0x8164C1F8 | size: 0x1C
# ipl::scene::OptOutButtonEventHandlerBase::__vtable
.obj __vt__Q33ipl5scene28OptOutButtonEventHandlerBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene28OptOutButtonEventHandlerBase

# .data:0x2CC | 0x8164C214 | size: 0x1C
# ipl::scene::ButtonEventHandlerBase::__vtable
.obj __vt__Q33ipl5scene22ButtonEventHandlerBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene22ButtonEventHandlerBase

# .data:0x2E8 | 0x8164C230 | size: 0xC8
# ipl::scene::Button::__vtable
.obj __vt__Q33ipl5scene6Button, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene6ButtonFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene6ButtonFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene6ButtonFv
	.4byte create__Q33ipl5scene6ButtonFv
	.4byte calc__Q33ipl5scene6ButtonFv
	.4byte draw__Q33ipl5scene6ButtonFv
	.4byte destroy__Q33ipl5scene4BaseFv
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
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene6Button

# 0x816948A0..0x816948D8 | size: 0x38
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816948A0 | size: 0x8
# ipl::scene::scAnmRepeatAnmFrame
.obj scAnmRepeatAnmFrame__Q23ipl5scene, global
	.float 10503
	.float 10580
.endobj scAnmRepeatAnmFrame__Q23ipl5scene

# .sdata2:0x8 | 0x816948A8 | size: 0x8
# ipl::scene::scNewArvAnmFrame
.obj scNewArvAnmFrame__Q23ipl5scene, global
	.float 1
	.float 400
.endobj scNewArvAnmFrame__Q23ipl5scene

# .sdata2:0x10 | 0x816948B0 | size: 0x8
# ipl::scene::scLoopAnmFrame
.obj scLoopAnmFrame__Q23ipl5scene, global
	.float 1
	.float 160
.endobj scLoopAnmFrame__Q23ipl5scene

# .sdata2:0x18 | 0x816948B8 | size: 0x8
.obj lbl_816948B8, global
	.float 10000
	.float 10055
.endobj lbl_816948B8

# .sdata2:0x20 | 0x816948C0 | size: 0x4
.obj lbl_816948C0, global
	.float 0
.endobj lbl_816948C0

# .sdata2:0x24 | 0x816948C4 | size: 0x4
.obj lbl_816948C4, global
	.float 120
.endobj lbl_816948C4

# .sdata2:0x28 | 0x816948C8 | size: 0x4
.obj lbl_816948C8, global
	.float 30
.endobj lbl_816948C8

# .sdata2:0x2C | 0x816948CC | size: 0x4
.obj lbl_816948CC, global
	.float 50
.endobj lbl_816948CC

# .sdata2:0x30 | 0x816948D0 | size: 0x4
.obj lbl_816948D0, global
	.float 1
.endobj lbl_816948D0

# .sdata2:0x34 | 0x816948D4 | size: 0x4
.obj gap_09_816948D4_sdata2, global
.hidden gap_09_816948D4_sdata2
	.4byte 0x00000000
.endobj gap_09_816948D4_sdata2

# 0x81696700..0x816967C0 | size: 0xC0
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696700 | size: 0x6
.obj lbl_81696700, global
	.string "B_Bbs"
.endobj lbl_81696700

# .sdata:0x6 | 0x81696706 | size: 0x5
.obj lbl_81696706, global
	.string "B_Ch"
.endobj lbl_81696706

# .sdata:0xB | 0x8169670B | size: 0x6
.obj lbl_8169670B, global
	.string "B_Set"
.endobj lbl_8169670B

# .sdata:0x11 | 0x81696711 | size: 0x6
.obj lbl_81696711, global
	.string "B_Cal"
.endobj lbl_81696711

# .sdata:0x17 | 0x81696717 | size: 0x6
.obj lbl_81696717, global
	.string "B_Add"
.endobj lbl_81696717

# .sdata:0x1D | 0x8169671D | size: 0x8
.obj lbl_8169671D, global
	.string "B_Add_R"
.endobj lbl_8169671D

# .sdata:0x25 | 0x81696725 | size: 0x7
.obj lbl_81696725, global
	.string "B_Dust"
.endobj lbl_81696725

# .sdata:0x2C | 0x8169672C | size: 0x7
.obj lbl_8169672C, global
	.string "B_ArwR"
.endobj lbl_8169672C

# .sdata:0x33 | 0x81696733 | size: 0x7
.obj lbl_81696733, global
	.string "B_ArwL"
.endobj lbl_81696733

# .sdata:0x3A | 0x8169673A | size: 0x6
.obj lbl_8169673A, global
	.string "G_Bbs"
.endobj lbl_8169673A

# .sdata:0x40 | 0x81696740 | size: 0x5
.obj lbl_81696740, global
	.string "G_Ch"
.endobj lbl_81696740

# .sdata:0x45 | 0x81696745 | size: 0x6
.obj lbl_81696745, global
	.string "G_Set"
.endobj lbl_81696745

# .sdata:0x4B | 0x8169674B | size: 0x6
.obj lbl_8169674B, global
	.string "G_Cal"
.endobj lbl_8169674B

# .sdata:0x51 | 0x81696751 | size: 0x6
.obj lbl_81696751, global
	.string "G_Add"
.endobj lbl_81696751

# .sdata:0x57 | 0x81696757 | size: 0x8
.obj lbl_81696757, global
	.string "G_Cmn_R"
.endobj lbl_81696757

# .sdata:0x5F | 0x8169675F | size: 0x9
.obj lbl_8169675F, global
	.4byte 0x475F4475
	.4byte 0x73740000
	.byte 0x00
.endobj lbl_8169675F

# .sdata:0x68 | 0x81696768 | size: 0x8
.obj lbl_81696768, global
	.4byte lbl_8164BFE4
	.4byte lbl_8164BFEE
.endobj lbl_81696768

# .sdata:0x70 | 0x81696770 | size: 0x5
.obj lbl_81696770, global
	.string "ArwR"
.endobj lbl_81696770

# .sdata:0x75 | 0x81696775 | size: 0x7
.obj lbl_81696775, global
	.4byte 0x4172774C
	.byte 0x00, 0x00, 0x00
.endobj lbl_81696775

# .sdata:0x7C | 0x8169677C | size: 0x8
.obj lbl_8169677C, global
	.4byte lbl_81696770
	.4byte lbl_81696775
.endobj lbl_8169677C

# .sdata:0x84 | 0x81696784 | size: 0x4
.obj lbl_81696784, global
	.string "arc"
.endobj lbl_81696784

# .sdata:0x88 | 0x81696788 | size: 0x7
.obj lbl_81696788, global
	.string "G_Dust"
.endobj lbl_81696788

# .sdata:0x8F | 0x8169678F | size: 0x8
.obj lbl_8169678F, global
	.string "G_Cmn_R"
.endobj lbl_8169678F

# .sdata:0x97 | 0x81696797 | size: 0x8
.obj lbl_81696797, global
	.string "G_TabaR"
.endobj lbl_81696797

# .sdata:0x9F | 0x8169679F | size: 0x8
.obj lbl_8169679F, global
	.string "G_TabaL"
.endobj lbl_8169679F

# .sdata:0xA7 | 0x816967A7 | size: 0x7
.obj lbl_816967A7, global
	.string "G_Stop"
.endobj lbl_816967A7

# .sdata:0xAE | 0x816967AE | size: 0x7
.obj lbl_816967AE, global
	.string "B_Stop"
.endobj lbl_816967AE

# .sdata:0xB5 | 0x816967B5 | size: 0xB
.obj lbl_816967B5, global
	.4byte 0x545F5374
	.4byte 0x6F700000
	.byte 0x00, 0x00, 0x00
.endobj lbl_816967B5
