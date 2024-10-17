.include "macros.inc"
.file "inputform.cpp"

# 0x8141BB70..0x81428150 | size: 0xC5E0
.text
.balign 4

# .text:0x0 | 0x8141BB70 | size: 0xF4
# textinput::inputform::EditBuffer::~EditBuffer()
.fn __dt__Q39textinput9inputform10EditBufferFv, global
/* 8141BB70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141BB74 | 7C 08 02 A6 */	mflr r0
/* 8141BB78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BB7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141BB80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141BB84 | 7C 9F 23 78 */	mr r31, r4
/* 8141BB88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8141BB8C | 7C 7E 1B 78 */	mr r30, r3
/* 8141BB90 | 41 82 00 B8 */	beq .L_8141BC48
/* 8141BB94 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8141BB98 | 3C 80 81 66 */	lis r4, __vt__Q39textinput9inputform10EditBuffer@ha
/* 8141BB9C | 38 84 D0 D8 */	addi r4, r4, __vt__Q39textinput9inputform10EditBuffer@l
/* 8141BBA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141BBA4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8141BBA8 | 41 82 00 28 */	beq .L_8141BBD0
/* 8141BBAC | 7C 03 03 78 */	mr r3, r0
/* 8141BBB0 | 38 80 FF FF */	li r4, -0x1
/* 8141BBB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141BBB8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8141BBBC | 7D 89 03 A6 */	mtctr r12
/* 8141BBC0 | 4E 80 04 21 */	bctrl
/* 8141BBC4 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8141BBC8 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8141BBCC | 48 13 FA AD */	bl fn_8155B678
.L_8141BBD0:
/* 8141BBD0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8141BBD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BBD8 | 41 82 00 24 */	beq .L_8141BBFC
/* 8141BBDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141BBE0 | 38 80 FF FF */	li r4, -0x1
/* 8141BBE4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8141BBE8 | 7D 89 03 A6 */	mtctr r12
/* 8141BBEC | 4E 80 04 21 */	bctrl
/* 8141BBF0 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8141BBF4 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 8141BBF8 | 48 13 FA 81 */	bl fn_8155B678
.L_8141BBFC:
/* 8141BBFC | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8141BC00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BC04 | 41 82 00 24 */	beq .L_8141BC28
/* 8141BC08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141BC0C | 38 80 FF FF */	li r4, -0x1
/* 8141BC10 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8141BC14 | 7D 89 03 A6 */	mtctr r12
/* 8141BC18 | 4E 80 04 21 */	bctrl
/* 8141BC1C | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8141BC20 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8141BC24 | 48 13 FA 55 */	bl fn_8155B678
.L_8141BC28:
/* 8141BC28 | 38 00 00 00 */	li r0, 0x0
/* 8141BC2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141BC30 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 8141BC34 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 8141BC38 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 8141BC3C | 40 81 00 0C */	ble .L_8141BC48
/* 8141BC40 | 7F C3 F3 78 */	mr r3, r30
/* 8141BC44 | 48 1D C4 A1 */	bl __dl__FPv
.L_8141BC48:
/* 8141BC48 | 7F C3 F3 78 */	mr r3, r30
/* 8141BC4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141BC50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141BC54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141BC58 | 7C 08 03 A6 */	mtlr r0
/* 8141BC5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141BC60 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput9inputform10EditBufferFv

# .text:0xF4 | 0x8141BC64 | size: 0x58
# textinput::tistring::Decolated::~Decolated()
.fn __dt__Q39textinput8tistring9DecolatedFv, global
/* 8141BC64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141BC68 | 7C 08 02 A6 */	mflr r0
/* 8141BC6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BC70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141BC74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141BC78 | 7C 9F 23 78 */	mr r31, r4
/* 8141BC7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8141BC80 | 7C 7E 1B 78 */	mr r30, r3
/* 8141BC84 | 41 82 00 1C */	beq .L_8141BCA0
/* 8141BC88 | 38 80 00 00 */	li r4, 0x0
/* 8141BC8C | 48 01 6A 0D */	bl __dt__Q39textinput8tistring10StringBaseFv
/* 8141BC90 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141BC94 | 40 81 00 0C */	ble .L_8141BCA0
/* 8141BC98 | 7F C3 F3 78 */	mr r3, r30
/* 8141BC9C | 48 1D C4 49 */	bl __dl__FPv
.L_8141BCA0:
/* 8141BCA0 | 7F C3 F3 78 */	mr r3, r30
/* 8141BCA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141BCA8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141BCAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141BCB0 | 7C 08 03 A6 */	mtlr r0
/* 8141BCB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141BCB8 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput8tistring9DecolatedFv

# .text:0x14C | 0x8141BCBC | size: 0x5C
# textinput::tistring::WithAtok::~WithAtok()
.fn __dt__Q39textinput8tistring8WithAtokFv, global
/* 8141BCBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141BCC0 | 7C 08 02 A6 */	mflr r0
/* 8141BCC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BCC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141BCCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141BCD0 | 7C 9F 23 78 */	mr r31, r4
/* 8141BCD4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8141BCD8 | 7C 7E 1B 78 */	mr r30, r3
/* 8141BCDC | 41 82 00 20 */	beq .L_8141BCFC
/* 8141BCE0 | 41 82 00 0C */	beq .L_8141BCEC
/* 8141BCE4 | 38 80 00 00 */	li r4, 0x0
/* 8141BCE8 | 48 01 69 B1 */	bl __dt__Q39textinput8tistring10StringBaseFv
.L_8141BCEC:
/* 8141BCEC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141BCF0 | 40 81 00 0C */	ble .L_8141BCFC
/* 8141BCF4 | 7F C3 F3 78 */	mr r3, r30
/* 8141BCF8 | 48 1D C3 ED */	bl __dl__FPv
.L_8141BCFC:
/* 8141BCFC | 7F C3 F3 78 */	mr r3, r30
/* 8141BD00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141BD04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141BD08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141BD0C | 7C 08 03 A6 */	mtlr r0
/* 8141BD10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141BD14 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput8tistring8WithAtokFv

# .text:0x1A8 | 0x8141BD18 | size: 0x214
# textinput::inputform::EditBuffer::create(MEMAllocator*)
.fn create__Q39textinput9inputform10EditBufferFP12MEMAllocator, global
/* 8141BD18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141BD1C | 7C 08 02 A6 */	mflr r0
/* 8141BD20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141BD24 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141BD28 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141BD2C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8141BD30 | 7C 9D 23 78 */	mr r29, r4
/* 8141BD34 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8141BD38 | 7C 7C 1B 78 */	mr r28, r3
/* 8141BD3C | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8141BD40 | 38 80 00 4C */	li r4, 0x4c
/* 8141BD44 | 7F A3 EB 78 */	mr r3, r29
/* 8141BD48 | 48 13 F9 21 */	bl fn_8155B668
/* 8141BD4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BD50 | 7C 7E 1B 78 */	mr r30, r3
/* 8141BD54 | 41 82 00 4C */	beq .L_8141BDA0
/* 8141BD58 | 38 00 04 00 */	li r0, 0x400
/* 8141BD5C | 3D 80 81 66 */	lis r12, __vt__Q39textinput8tistring9Decolated@ha
/* 8141BD60 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 8141BD64 | 38 00 00 00 */	li r0, 0x0
/* 8141BD68 | 39 8C F5 18 */	addi r12, r12, __vt__Q39textinput8tistring9Decolated@l
/* 8141BD6C | B0 03 00 06 */	sth r0, 0x6(r3)
/* 8141BD70 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8141BD74 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8141BD78 | B0 03 00 10 */	sth r0, 0x10(r3)
/* 8141BD7C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8141BD80 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 8141BD84 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8141BD88 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 8141BD8C | 98 03 00 20 */	stb r0, 0x20(r3)
/* 8141BD90 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 8141BD94 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8141BD98 | 7D 89 03 A6 */	mtctr r12
/* 8141BD9C | 4E 80 04 21 */	bctrl
.L_8141BDA0:
/* 8141BDA0 | 93 DC 00 04 */	stw r30, 0x4(r28)
/* 8141BDA4 | 7F C3 F3 78 */	mr r3, r30
/* 8141BDA8 | 7F A4 EB 78 */	mr r4, r29
/* 8141BDAC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141BDB0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8141BDB4 | 7D 89 03 A6 */	mtctr r12
/* 8141BDB8 | 4E 80 04 21 */	bctrl
/* 8141BDBC | 7F A3 EB 78 */	mr r3, r29
/* 8141BDC0 | 38 80 00 4C */	li r4, 0x4c
/* 8141BDC4 | 48 13 F8 A5 */	bl fn_8155B668
/* 8141BDC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BDCC | 7C 7E 1B 78 */	mr r30, r3
/* 8141BDD0 | 41 82 00 58 */	beq .L_8141BE28
/* 8141BDD4 | 38 00 04 00 */	li r0, 0x400
/* 8141BDD8 | 3D 80 81 66 */	lis r12, __vt__Q39textinput8tistring9Decolated@ha
/* 8141BDDC | B0 03 00 04 */	sth r0, 0x4(r3)
/* 8141BDE0 | 38 00 00 00 */	li r0, 0x0
/* 8141BDE4 | 39 8C F5 18 */	addi r12, r12, __vt__Q39textinput8tistring9Decolated@l
/* 8141BDE8 | B0 03 00 06 */	sth r0, 0x6(r3)
/* 8141BDEC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8141BDF0 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8141BDF4 | B0 03 00 10 */	sth r0, 0x10(r3)
/* 8141BDF8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8141BDFC | 91 83 00 00 */	stw r12, 0x0(r3)
/* 8141BE00 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8141BE04 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 8141BE08 | 98 03 00 20 */	stb r0, 0x20(r3)
/* 8141BE0C | 90 03 00 24 */	stw r0, 0x24(r3)
/* 8141BE10 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8141BE14 | 7D 89 03 A6 */	mtctr r12
/* 8141BE18 | 4E 80 04 21 */	bctrl
/* 8141BE1C | 3C 60 81 66 */	lis r3, __vt__Q39textinput8tistring8WithAtok@ha
/* 8141BE20 | 38 63 D0 E8 */	addi r3, r3, __vt__Q39textinput8tistring8WithAtok@l
/* 8141BE24 | 90 7E 00 00 */	stw r3, 0x0(r30)
.L_8141BE28:
/* 8141BE28 | 93 DC 00 08 */	stw r30, 0x8(r28)
/* 8141BE2C | 7F C3 F3 78 */	mr r3, r30
/* 8141BE30 | 7F A4 EB 78 */	mr r4, r29
/* 8141BE34 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141BE38 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8141BE3C | 7D 89 03 A6 */	mtctr r12
/* 8141BE40 | 4E 80 04 21 */	bctrl
/* 8141BE44 | 7F A3 EB 78 */	mr r3, r29
/* 8141BE48 | 38 80 00 AC */	li r4, 0xac
/* 8141BE4C | 48 13 F8 1D */	bl fn_8155B668
/* 8141BE50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141BE54 | 7C 7E 1B 78 */	mr r30, r3
/* 8141BE58 | 41 82 00 98 */	beq .L_8141BEF0
/* 8141BE5C | 38 00 04 00 */	li r0, 0x400
/* 8141BE60 | 3D 80 81 66 */	lis r12, __vt__Q39textinput8tistring9Decolated@ha
/* 8141BE64 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 8141BE68 | 3B E0 00 00 */	li r31, 0x0
/* 8141BE6C | 39 8C F5 18 */	addi r12, r12, __vt__Q39textinput8tistring9Decolated@l
/* 8141BE70 | B3 E3 00 06 */	sth r31, 0x6(r3)
/* 8141BE74 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 8141BE78 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 8141BE7C | B3 E3 00 10 */	sth r31, 0x10(r3)
/* 8141BE80 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 8141BE84 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 8141BE88 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 8141BE8C | 93 E3 00 1C */	stw r31, 0x1c(r3)
/* 8141BE90 | 9B E3 00 20 */	stb r31, 0x20(r3)
/* 8141BE94 | 93 E3 00 24 */	stw r31, 0x24(r3)
/* 8141BE98 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8141BE9C | 7D 89 03 A6 */	mtctr r12
/* 8141BEA0 | 4E 80 04 21 */	bctrl
/* 8141BEA4 | 3C 80 81 66 */	lis r4, __vt__Q39textinput8tistring6WithZi@ha
/* 8141BEA8 | 38 60 00 FF */	li r3, 0xff
/* 8141BEAC | 38 84 F6 78 */	addi r4, r4, __vt__Q39textinput8tistring6WithZi@l
/* 8141BEB0 | 38 00 00 02 */	li r0, 0x2
/* 8141BEB4 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 8141BEB8 | 9B FE 00 78 */	stb r31, 0x78(r30)
/* 8141BEBC | 9B FE 00 79 */	stb r31, 0x79(r30)
/* 8141BEC0 | 93 FE 00 7C */	stw r31, 0x7c(r30)
/* 8141BEC4 | 93 FE 00 80 */	stw r31, 0x80(r30)
/* 8141BEC8 | 93 FE 00 84 */	stw r31, 0x84(r30)
/* 8141BECC | B3 FE 00 88 */	sth r31, 0x88(r30)
/* 8141BED0 | 93 FE 00 8C */	stw r31, 0x8c(r30)
/* 8141BED4 | 93 FE 00 90 */	stw r31, 0x90(r30)
/* 8141BED8 | 98 7E 00 94 */	stb r3, 0x94(r30)
/* 8141BEDC | 93 FE 00 98 */	stw r31, 0x98(r30)
/* 8141BEE0 | 93 FE 00 9C */	stw r31, 0x9c(r30)
/* 8141BEE4 | 90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 8141BEE8 | 93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 8141BEEC | 9B FE 00 A8 */	stb r31, 0xa8(r30)
.L_8141BEF0:
/* 8141BEF0 | 93 DC 00 0C */	stw r30, 0xc(r28)
/* 8141BEF4 | 7F C3 F3 78 */	mr r3, r30
/* 8141BEF8 | 7F A4 EB 78 */	mr r4, r29
/* 8141BEFC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141BF00 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8141BF04 | 7D 89 03 A6 */	mtctr r12
/* 8141BF08 | 4E 80 04 21 */	bctrl
/* 8141BF0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141BF10 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141BF14 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141BF18 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8141BF1C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8141BF20 | 7C 08 03 A6 */	mtlr r0
/* 8141BF24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141BF28 | 4E 80 00 20 */	blr
.endfn create__Q39textinput9inputform10EditBufferFP12MEMAllocator

# .text:0x3BC | 0x8141BF2C | size: 0x114
# textinput::inputform::DeadKeyStream::ToCombineClass(textinput::Language, wchar_t)
.fn ToCombineClass__Q39textinput9inputform13DeadKeyStreamFQ29textinput8Languagew, global
/* 8141BF2C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8141BF30 | 41 82 01 08 */	beq .L_8141C038
/* 8141BF34 | 40 80 00 14 */	bge .L_8141BF48
/* 8141BF38 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8141BF3C | 41 82 00 3C */	beq .L_8141BF78
/* 8141BF40 | 40 80 00 18 */	bge .L_8141BF58
/* 8141BF44 | 48 00 00 F4 */	b .L_8141C038
.L_8141BF48:
/* 8141BF48 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 8141BF4C | 41 82 00 9C */	beq .L_8141BFE8
/* 8141BF50 | 40 80 00 E8 */	bge .L_8141C038
/* 8141BF54 | 48 00 00 44 */	b .L_8141BF98
.L_8141BF58:
/* 8141BF58 | 28 04 00 B4 */	cmplwi r4, 0xb4
/* 8141BF5C | 40 82 00 0C */	bne .L_8141BF68
/* 8141BF60 | 38 60 03 01 */	li r3, 0x301
/* 8141BF64 | 4E 80 00 20 */	blr
.L_8141BF68:
/* 8141BF68 | 28 04 00 60 */	cmplwi r4, 0x60
/* 8141BF6C | 40 82 00 CC */	bne .L_8141C038
/* 8141BF70 | 38 60 03 00 */	li r3, 0x300
/* 8141BF74 | 4E 80 00 20 */	blr
.L_8141BF78:
/* 8141BF78 | 28 04 00 5E */	cmplwi r4, 0x5e
/* 8141BF7C | 40 82 00 0C */	bne .L_8141BF88
/* 8141BF80 | 38 60 03 02 */	li r3, 0x302
/* 8141BF84 | 4E 80 00 20 */	blr
.L_8141BF88:
/* 8141BF88 | 28 04 00 A8 */	cmplwi r4, 0xa8
/* 8141BF8C | 40 82 00 AC */	bne .L_8141C038
/* 8141BF90 | 38 60 03 08 */	li r3, 0x308
/* 8141BF94 | 4E 80 00 20 */	blr
.L_8141BF98:
/* 8141BF98 | 28 04 00 60 */	cmplwi r4, 0x60
/* 8141BF9C | 40 82 00 0C */	bne .L_8141BFA8
/* 8141BFA0 | 38 60 03 00 */	li r3, 0x300
/* 8141BFA4 | 4E 80 00 20 */	blr
.L_8141BFA8:
/* 8141BFA8 | 28 04 00 B4 */	cmplwi r4, 0xb4
/* 8141BFAC | 40 82 00 0C */	bne .L_8141BFB8
/* 8141BFB0 | 38 60 03 01 */	li r3, 0x301
/* 8141BFB4 | 4E 80 00 20 */	blr
.L_8141BFB8:
/* 8141BFB8 | 28 04 00 5E */	cmplwi r4, 0x5e
/* 8141BFBC | 40 82 00 0C */	bne .L_8141BFC8
/* 8141BFC0 | 38 60 03 02 */	li r3, 0x302
/* 8141BFC4 | 4E 80 00 20 */	blr
.L_8141BFC8:
/* 8141BFC8 | 28 04 00 7E */	cmplwi r4, 0x7e
/* 8141BFCC | 40 82 00 0C */	bne .L_8141BFD8
/* 8141BFD0 | 38 60 03 03 */	li r3, 0x303
/* 8141BFD4 | 4E 80 00 20 */	blr
.L_8141BFD8:
/* 8141BFD8 | 28 04 00 A8 */	cmplwi r4, 0xa8
/* 8141BFDC | 40 82 00 5C */	bne .L_8141C038
/* 8141BFE0 | 38 60 03 08 */	li r3, 0x308
/* 8141BFE4 | 4E 80 00 20 */	blr
.L_8141BFE8:
/* 8141BFE8 | 28 04 00 60 */	cmplwi r4, 0x60
/* 8141BFEC | 40 82 00 0C */	bne .L_8141BFF8
/* 8141BFF0 | 38 60 03 00 */	li r3, 0x300
/* 8141BFF4 | 4E 80 00 20 */	blr
.L_8141BFF8:
/* 8141BFF8 | 28 04 00 5E */	cmplwi r4, 0x5e
/* 8141BFFC | 40 82 00 0C */	bne .L_8141C008
/* 8141C000 | 38 60 03 02 */	li r3, 0x302
/* 8141C004 | 4E 80 00 20 */	blr
.L_8141C008:
/* 8141C008 | 28 04 00 7E */	cmplwi r4, 0x7e
/* 8141C00C | 40 82 00 0C */	bne .L_8141C018
/* 8141C010 | 38 60 03 03 */	li r3, 0x303
/* 8141C014 | 4E 80 00 20 */	blr
.L_8141C018:
/* 8141C018 | 28 04 00 27 */	cmplwi r4, 0x27
/* 8141C01C | 40 82 00 0C */	bne .L_8141C028
/* 8141C020 | 38 60 03 0D */	li r3, 0x30d
/* 8141C024 | 4E 80 00 20 */	blr
.L_8141C028:
/* 8141C028 | 28 04 00 22 */	cmplwi r4, 0x22
/* 8141C02C | 40 82 00 0C */	bne .L_8141C038
/* 8141C030 | 38 60 03 0E */	li r3, 0x30e
/* 8141C034 | 4E 80 00 20 */	blr
.L_8141C038:
/* 8141C038 | 7C 83 23 78 */	mr r3, r4
/* 8141C03C | 4E 80 00 20 */	blr
.endfn ToCombineClass__Q39textinput9inputform13DeadKeyStreamFQ29textinput8Languagew

# .text:0x4D0 | 0x8141C040 | size: 0x78
# textinput::inputform::DeadKeyStream::ToIndependentClass(wchar_t)
.fn ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, global
/* 8141C040 | 28 03 03 00 */	cmplwi r3, 0x300
/* 8141C044 | 4D 80 00 20 */	bltlr
/* 8141C048 | 28 03 03 30 */	cmplwi r3, 0x330
/* 8141C04C | 40 81 00 08 */	ble .L_8141C054
/* 8141C050 | 4E 80 00 20 */	blr
.L_8141C054:
/* 8141C054 | 38 03 FD 00 */	subi r0, r3, 0x300
/* 8141C058 | 28 00 00 27 */	cmplwi r0, 0x27
/* 8141C05C | 4D 81 00 20 */	bgtlr
/* 8141C060 | 3C 80 81 66 */	lis r4, jumptable_8165C990@ha
/* 8141C064 | 54 00 10 3A */	slwi r0, r0, 2
/* 8141C068 | 38 84 C9 90 */	addi r4, r4, jumptable_8165C990@l
/* 8141C06C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8141C070 | 7C 89 03 A6 */	mtctr r4
/* 8141C074 | 4E 80 04 20 */	bctr
.L_8141C078:
/* 8141C078 | 38 60 00 60 */	li r3, 0x60
/* 8141C07C | 4E 80 00 20 */	blr
.L_8141C080:
/* 8141C080 | 38 60 00 B4 */	li r3, 0xb4
/* 8141C084 | 4E 80 00 20 */	blr
.L_8141C088:
/* 8141C088 | 38 60 00 5E */	li r3, 0x5e
/* 8141C08C | 4E 80 00 20 */	blr
.L_8141C090:
/* 8141C090 | 38 60 00 7E */	li r3, 0x7e
/* 8141C094 | 4E 80 00 20 */	blr
.L_8141C098:
/* 8141C098 | 38 60 00 A8 */	li r3, 0xa8
/* 8141C09C | 4E 80 00 20 */	blr
.L_8141C0A0:
/* 8141C0A0 | 38 60 00 27 */	li r3, 0x27
/* 8141C0A4 | 4E 80 00 20 */	blr
.L_8141C0A8:
/* 8141C0A8 | 38 60 00 22 */	li r3, 0x22
/* 8141C0AC | 4E 80 00 20 */	blr
.L_8141C0B0:
/* 8141C0B0 | 38 60 00 B8 */	li r3, 0xb8
.L_8141C0B4:
/* 8141C0B4 | 4E 80 00 20 */	blr
.endfn ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw

# .text:0x548 | 0x8141C0B8 | size: 0x9C
# textinput::inputform::Base::RowInfoManager::init()
.fn init__Q49textinput9inputform4Base14RowInfoManagerFv, global
/* 8141C0B8 | 39 00 00 00 */	li r8, 0x0
/* 8141C0BC | 38 80 00 00 */	li r4, 0x0
/* 8141C0C0 | 48 00 00 28 */	b .L_8141C0E8
.L_8141C0C4:
/* 8141C0C4 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8141C0C8 | 38 A8 FF FF */	subi r5, r8, 0x1
/* 8141C0CC | 55 06 1B 78 */	clrlslwi r6, r8, 16, 3
/* 8141C0D0 | 38 08 00 01 */	addi r0, r8, 0x1
/* 8141C0D4 | 7C A6 3B 6E */	sthux r5, r6, r7
/* 8141C0D8 | 39 08 00 01 */	addi r8, r8, 0x1
/* 8141C0DC | B0 06 00 02 */	sth r0, 0x2(r6)
/* 8141C0E0 | B0 86 00 04 */	sth r4, 0x4(r6)
/* 8141C0E4 | B0 86 00 06 */	sth r4, 0x6(r6)
.L_8141C0E8:
/* 8141C0E8 | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 8141C0EC | 55 00 04 3E */	clrlwi r0, r8, 16
/* 8141C0F0 | 7C 00 28 40 */	cmplw r0, r5
/* 8141C0F4 | 41 80 FF D0 */	blt .L_8141C0C4
/* 8141C0F8 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8141C0FC | 38 A5 FF FF */	subi r5, r5, 0x1
/* 8141C100 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8141C104 | 38 80 00 00 */	li r4, 0x0
/* 8141C108 | 54 06 18 38 */	slwi r6, r0, 3
/* 8141C10C | 54 A0 1B 78 */	clrlslwi r0, r5, 16, 3
/* 8141C110 | 7C A6 3B 6E */	sthux r5, r6, r7
/* 8141C114 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 8141C118 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8141C11C | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 8141C120 | 7C 86 02 14 */	add r4, r6, r0
/* 8141C124 | B0 A4 00 02 */	sth r5, 0x2(r4)
/* 8141C128 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8141C12C | B0 06 00 00 */	sth r0, 0x0(r6)
/* 8141C130 | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 8141C134 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8141C138 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8141C13C | 54 A0 1B 78 */	clrlslwi r0, r5, 16, 3
/* 8141C140 | 7C A4 03 6E */	sthux r5, r4, r0
/* 8141C144 | A0 63 00 04 */	lhz r3, 0x4(r3)
/* 8141C148 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8141C14C | B0 04 00 02 */	sth r0, 0x2(r4)
/* 8141C150 | 4E 80 00 20 */	blr
.endfn init__Q49textinput9inputform4Base14RowInfoManagerFv

# .text:0x5E4 | 0x8141C154 | size: 0x18
# textinput::inputform::Base::setCursorPos(textinput::tistring::Decolated*, unsigned long)
.fn setCursorPos__Q39textinput9inputform4BaseFPQ39textinput8tistring9DecolatedUl, global
/* 8141C154 | 7C 83 23 78 */	mr r3, r4
/* 8141C158 | 7C A4 2B 78 */	mr r4, r5
/* 8141C15C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C160 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141C164 | 7D 89 03 A6 */	mtctr r12
/* 8141C168 | 4E 80 04 20 */	bctr
.endfn setCursorPos__Q39textinput9inputform4BaseFPQ39textinput8tistring9DecolatedUl

# .text:0x5FC | 0x8141C16C | size: 0x210
# textinput::inputform::Base::Base(textinput::Manager*)
.fn __ct__Q39textinput9inputform4BaseFPQ29textinput7Manager, global
/* 8141C16C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141C170 | 7C 08 02 A6 */	mflr r0
/* 8141C174 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141C178 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8141C17C | 48 1D D3 45 */	bl _savegpr_27
/* 8141C180 | 3D 80 81 66 */	lis r12, __vt__Q29textinput15CommandReceiver@ha
/* 8141C184 | 7C 7F 1B 78 */	mr r31, r3
/* 8141C188 | 39 8C 7E 18 */	addi r12, r12, __vt__Q29textinput15CommandReceiver@l
/* 8141C18C | 7C 9B 23 78 */	mr r27, r4
/* 8141C190 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 8141C194 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141C198 | 7D 89 03 A6 */	mtctr r12
/* 8141C19C | 4E 80 04 21 */	bctrl
/* 8141C1A0 | 3B 9F 00 10 */	addi r28, r31, 0x10
/* 8141C1A4 | 7F 83 E3 78 */	mr r3, r28
/* 8141C1A8 | 48 0F AA 1D */	bl fn_81516BC4
/* 8141C1AC | C0 22 89 28 */	lfs f1, lbl_81694D28@sda21(r0)
/* 8141C1B0 | 3C 80 81 66 */	lis r4, __vt__Q39textinput10textdrawer4Base@ha
/* 8141C1B4 | 3B A0 00 00 */	li r29, 0x0
/* 8141C1B8 | C0 02 89 2C */	lfs f0, lbl_81694D2C@sda21(r0)
/* 8141C1BC | 3C 60 00 01 */	lis r3, 0x1
/* 8141C1C0 | 38 84 F7 80 */	addi r4, r4, __vt__Q39textinput10textdrawer4Base@l
/* 8141C1C4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8141C1C8 | 3B C0 00 01 */	li r30, 0x1
/* 8141C1CC | 90 9C 00 4C */	stw r4, 0x4c(r28)
/* 8141C1D0 | 38 7C 00 F8 */	addi r3, r28, 0xf8
/* 8141C1D4 | 38 80 00 00 */	li r4, 0x0
/* 8141C1D8 | 38 A0 00 0C */	li r5, 0xc
/* 8141C1DC | 93 BC 00 50 */	stw r29, 0x50(r28)
/* 8141C1E0 | D0 3C 00 88 */	stfs f1, 0x88(r28)
/* 8141C1E4 | D0 3C 00 8C */	stfs f1, 0x8c(r28)
/* 8141C1E8 | D0 3C 00 90 */	stfs f1, 0x90(r28)
/* 8141C1EC | D0 3C 00 94 */	stfs f1, 0x94(r28)
/* 8141C1F0 | D0 1C 00 98 */	stfs f0, 0x98(r28)
/* 8141C1F4 | 9B BC 00 9C */	stb r29, 0x9c(r28)
/* 8141C1F8 | 9B BC 00 9D */	stb r29, 0x9d(r28)
/* 8141C1FC | 93 BC 00 A0 */	stw r29, 0xa0(r28)
/* 8141C200 | D0 3C 00 A4 */	stfs f1, 0xa4(r28)
/* 8141C204 | D0 3C 00 A8 */	stfs f1, 0xa8(r28)
/* 8141C208 | D0 3C 00 AC */	stfs f1, 0xac(r28)
/* 8141C20C | D0 3C 00 B0 */	stfs f1, 0xb0(r28)
/* 8141C210 | D0 3C 00 B4 */	stfs f1, 0xb4(r28)
/* 8141C214 | D0 3C 00 B8 */	stfs f1, 0xb8(r28)
/* 8141C218 | 93 BC 00 BC */	stw r29, 0xbc(r28)
/* 8141C21C | 90 1C 00 C0 */	stw r0, 0xc0(r28)
/* 8141C220 | 9B BC 00 C8 */	stb r29, 0xc8(r28)
/* 8141C224 | 93 BC 00 CC */	stw r29, 0xcc(r28)
/* 8141C228 | 93 BC 00 D0 */	stw r29, 0xd0(r28)
/* 8141C22C | 93 BC 00 D4 */	stw r29, 0xd4(r28)
/* 8141C230 | 93 BC 00 D8 */	stw r29, 0xd8(r28)
/* 8141C234 | 93 BC 00 DC */	stw r29, 0xdc(r28)
/* 8141C238 | 93 BC 00 E0 */	stw r29, 0xe0(r28)
/* 8141C23C | 9B BC 00 E4 */	stb r29, 0xe4(r28)
/* 8141C240 | D0 3C 00 E8 */	stfs f1, 0xe8(r28)
/* 8141C244 | D0 3C 00 EC */	stfs f1, 0xec(r28)
/* 8141C248 | D0 3C 00 F0 */	stfs f1, 0xf0(r28)
/* 8141C24C | 93 BC 00 F4 */	stw r29, 0xf4(r28)
/* 8141C250 | 9B BC 01 04 */	stb r29, 0x104(r28)
/* 8141C254 | 9B DC 01 05 */	stb r30, 0x105(r28)
/* 8141C258 | 4B F1 40 DD */	bl memset
/* 8141C25C | 3D 40 81 66 */	lis r10, __vt__Q39textinput9inputform4Base@ha
/* 8141C260 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 8141C264 | 39 4A CF 30 */	addi r10, r10, __vt__Q39textinput9inputform4Base@l
/* 8141C268 | 3C C0 81 66 */	lis r6, __vt__Q39textinput4util9Animation@ha
/* 8141C26C | 39 2A 00 20 */	addi r9, r10, 0x20
/* 8141C270 | 38 E0 00 02 */	li r7, 0x2
/* 8141C274 | 39 0A 00 B8 */	addi r8, r10, 0xb8
/* 8141C278 | 38 C6 D2 58 */	addi r6, r6, __vt__Q39textinput4util9Animation@l
/* 8141C27C | 38 A0 04 00 */	li r5, 0x400
/* 8141C280 | 38 80 27 0F */	li r4, 0x270f
/* 8141C284 | 38 60 00 FF */	li r3, 0xff
/* 8141C288 | 38 00 FF FF */	li r0, -0x1
/* 8141C28C | 93 BF 01 1C */	stw r29, 0x11c(r31)
/* 8141C290 | 91 5F 00 00 */	stw r10, 0x0(r31)
/* 8141C294 | 91 3F 00 5C */	stw r9, 0x5c(r31)
/* 8141C298 | 91 1F 01 18 */	stw r8, 0x118(r31)
/* 8141C29C | D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 8141C2A0 | D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 8141C2A4 | D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 8141C2A8 | D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 8141C2AC | 93 BF 01 64 */	stw r29, 0x164(r31)
/* 8141C2B0 | 93 BF 01 68 */	stw r29, 0x168(r31)
/* 8141C2B4 | 93 BF 01 6C */	stw r29, 0x16c(r31)
/* 8141C2B8 | 93 BF 01 70 */	stw r29, 0x170(r31)
/* 8141C2BC | 90 FF 01 74 */	stw r7, 0x174(r31)
/* 8141C2C0 | 9B BF 01 78 */	stb r29, 0x178(r31)
/* 8141C2C4 | 9B DF 01 79 */	stb r30, 0x179(r31)
/* 8141C2C8 | 9B DF 01 7A */	stb r30, 0x17a(r31)
/* 8141C2CC | D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 8141C2D0 | D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 8141C2D4 | D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 8141C2D8 | D0 1F 01 88 */	stfs f0, 0x188(r31)
/* 8141C2DC | 90 DF 01 8C */	stw r6, 0x18c(r31)
/* 8141C2E0 | D0 1F 01 9C */	stfs f0, 0x19c(r31)
/* 8141C2E4 | 9B BF 01 A0 */	stb r29, 0x1a0(r31)
/* 8141C2E8 | 9B BF 01 A1 */	stb r29, 0x1a1(r31)
/* 8141C2EC | 93 BF 01 A4 */	stw r29, 0x1a4(r31)
/* 8141C2F0 | D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 8141C2F4 | 93 BF 01 B0 */	stw r29, 0x1b0(r31)
/* 8141C2F8 | 93 BF 01 B4 */	stw r29, 0x1b4(r31)
/* 8141C2FC | 90 BF 01 B8 */	stw r5, 0x1b8(r31)
/* 8141C300 | 90 9F 01 BC */	stw r4, 0x1bc(r31)
/* 8141C304 | D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 8141C308 | 98 7F 01 C8 */	stb r3, 0x1c8(r31)
/* 8141C30C | 90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 8141C310 | 93 BF 01 D0 */	stw r29, 0x1d0(r31)
/* 8141C314 | 93 7F 01 D4 */	stw r27, 0x1d4(r31)
/* 8141C318 | 48 1D 87 81 */	bl fn_815F4A98
/* 8141C31C | 38 7F 01 D8 */	addi r3, r31, 0x1d8
/* 8141C320 | 48 1D 87 89 */	bl fn_815F4AA8
/* 8141C324 | 38 7F 01 D8 */	addi r3, r31, 0x1d8
/* 8141C328 | 38 80 00 02 */	li r4, 0x2
/* 8141C32C | 48 1D 87 ED */	bl fn_815F4B18
/* 8141C330 | 80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 8141C334 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8141C338 | 93 DF 01 F0 */	stw r30, 0x1f0(r31)
/* 8141C33C | 7F E3 FB 78 */	mr r3, r31
/* 8141C340 | 9B BF 01 F4 */	stb r29, 0x1f4(r31)
/* 8141C344 | 9B BF 01 F5 */	stb r29, 0x1f5(r31)
/* 8141C348 | 93 BF 01 F8 */	stw r29, 0x1f8(r31)
/* 8141C34C | B0 1F 01 FC */	sth r0, 0x1fc(r31)
/* 8141C350 | 93 BF 02 00 */	stw r29, 0x200(r31)
/* 8141C354 | 93 BF 02 04 */	stw r29, 0x204(r31)
/* 8141C358 | B3 BF 02 0C */	sth r29, 0x20c(r31)
/* 8141C35C | 9B DF 02 0E */	stb r30, 0x20e(r31)
/* 8141C360 | 93 BF 02 10 */	stw r29, 0x210(r31)
/* 8141C364 | 93 BF 02 14 */	stw r29, 0x214(r31)
/* 8141C368 | 48 1D D1 A5 */	bl _restgpr_27
/* 8141C36C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141C370 | 7C 08 03 A6 */	mtlr r0
/* 8141C374 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141C378 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput9inputform4BaseFPQ29textinput7Manager

# .text:0x80C | 0x8141C37C | size: 0x40
# textinput::Base::~Base()
.fn __dt__Q29textinput4BaseFv, global
/* 8141C37C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141C380 | 7C 08 02 A6 */	mflr r0
/* 8141C384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141C388 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141C38C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141C390 | 7C 7F 1B 78 */	mr r31, r3
/* 8141C394 | 41 82 00 10 */	beq .L_8141C3A4
/* 8141C398 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8141C39C | 40 81 00 08 */	ble .L_8141C3A4
/* 8141C3A0 | 48 1D BD 45 */	bl __dl__FPv
.L_8141C3A4:
/* 8141C3A4 | 7F E3 FB 78 */	mr r3, r31
/* 8141C3A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141C3AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141C3B0 | 7C 08 03 A6 */	mtlr r0
/* 8141C3B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141C3B8 | 4E 80 00 20 */	blr
.endfn __dt__Q29textinput4BaseFv

# .text:0x84C | 0x8141C3BC | size: 0x40
# textinput::CommandReceiver::~CommandReceiver()
.fn __dt__Q29textinput15CommandReceiverFv, global
/* 8141C3BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141C3C0 | 7C 08 02 A6 */	mflr r0
/* 8141C3C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141C3C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141C3CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141C3D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8141C3D4 | 41 82 00 10 */	beq .L_8141C3E4
/* 8141C3D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8141C3DC | 40 81 00 08 */	ble .L_8141C3E4
/* 8141C3E0 | 48 1D BD 05 */	bl __dl__FPv
.L_8141C3E4:
/* 8141C3E4 | 7F E3 FB 78 */	mr r3, r31
/* 8141C3E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141C3EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141C3F0 | 7C 08 03 A6 */	mtlr r0
/* 8141C3F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141C3F8 | 4E 80 00 20 */	blr
.endfn __dt__Q29textinput15CommandReceiverFv

# .text:0x88C | 0x8141C3FC | size: 0x74
# textinput::inputform::Base::~Base()
.fn __dt__Q39textinput9inputform4BaseFv, global
/* 8141C3FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141C400 | 7C 08 02 A6 */	mflr r0
/* 8141C404 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141C408 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141C40C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141C410 | 7C 9F 23 78 */	mr r31, r4
/* 8141C414 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8141C418 | 7C 7E 1B 78 */	mr r30, r3
/* 8141C41C | 41 82 00 38 */	beq .L_8141C454
/* 8141C420 | 34 03 01 F8 */	addic. r0, r3, 0x1f8
/* 8141C424 | 41 82 00 10 */	beq .L_8141C434
/* 8141C428 | 80 63 02 00 */	lwz r3, 0x200(r3)
/* 8141C42C | 80 9E 01 F8 */	lwz r4, 0x1f8(r30)
/* 8141C430 | 48 13 F2 49 */	bl fn_8155B678
.L_8141C434:
/* 8141C434 | 34 7E 00 10 */	addic. r3, r30, 0x10
/* 8141C438 | 41 82 00 0C */	beq .L_8141C444
/* 8141C43C | 38 80 00 00 */	li r4, 0x0
/* 8141C440 | 48 0F A9 A5 */	bl fn_81516DE4
.L_8141C444:
/* 8141C444 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141C448 | 40 81 00 0C */	ble .L_8141C454
/* 8141C44C | 7F C3 F3 78 */	mr r3, r30
/* 8141C450 | 48 1D BC 95 */	bl __dl__FPv
.L_8141C454:
/* 8141C454 | 7F C3 F3 78 */	mr r3, r30
/* 8141C458 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141C45C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141C460 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141C464 | 7C 08 03 A6 */	mtlr r0
/* 8141C468 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141C46C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput9inputform4BaseFv

# .text:0x900 | 0x8141C470 | size: 0x144
# textinput::inputform::Base::init()
.fn init__Q39textinput9inputform4BaseFv, global
/* 8141C470 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141C474 | 7C 08 02 A6 */	mflr r0
/* 8141C478 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 8141C47C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141C480 | 38 00 00 FF */	li r0, 0xff
/* 8141C484 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141C488 | 3B E0 00 00 */	li r31, 0x0
/* 8141C48C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141C490 | 7C 7E 1B 78 */	mr r30, r3
/* 8141C494 | 93 E3 01 70 */	stw r31, 0x170(r3)
/* 8141C498 | D0 03 01 7C */	stfs f0, 0x17c(r3)
/* 8141C49C | D0 03 01 80 */	stfs f0, 0x180(r3)
/* 8141C4A0 | D0 03 01 84 */	stfs f0, 0x184(r3)
/* 8141C4A4 | D0 03 01 88 */	stfs f0, 0x188(r3)
/* 8141C4A8 | D0 03 01 AC */	stfs f0, 0x1ac(r3)
/* 8141C4AC | D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 8141C4B0 | 98 03 01 C8 */	stb r0, 0x1c8(r3)
/* 8141C4B4 | 38 63 01 D8 */	addi r3, r3, 0x1d8
/* 8141C4B8 | 48 1D 85 F1 */	bl fn_815F4AA8
/* 8141C4BC | 38 7E 01 D8 */	addi r3, r30, 0x1d8
/* 8141C4C0 | 38 80 00 02 */	li r4, 0x2
/* 8141C4C4 | 48 1D 86 55 */	bl fn_815F4B18
/* 8141C4C8 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141C4CC | 48 0F A9 61 */	bl fn_81516E2C
/* 8141C4D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C4D4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8141C4D8 | 7D 89 03 A6 */	mtctr r12
/* 8141C4DC | 4E 80 04 21 */	bctrl
/* 8141C4E0 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8141C4E4 | 3C 00 43 30 */	lis r0, 0x4330
/* 8141C4E8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8141C4EC | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141C4F0 | C8 22 89 30 */	lfd f1, lbl_81694D30@sda21(r0)
/* 8141C4F4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8141C4F8 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8141C4FC | EC 20 08 28 */	fsubs f1, f0, f1
/* 8141C500 | 48 0F BA C1 */	bl fn_81517FC0
/* 8141C504 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141C508 | 38 80 00 00 */	li r4, 0x0
/* 8141C50C | 48 0F BA A5 */	bl fn_81517FB0
/* 8141C510 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141C514 | 7F C3 F3 78 */	mr r3, r30
/* 8141C518 | 38 80 00 01 */	li r4, 0x1
/* 8141C51C | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8141C520 | 7D 89 03 A6 */	mtctr r12
/* 8141C524 | 4E 80 04 21 */	bctrl
/* 8141C528 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 8141C52C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C530 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141C534 | 7D 89 03 A6 */	mtctr r12
/* 8141C538 | 4E 80 04 21 */	bctrl
/* 8141C53C | 9B E3 00 15 */	stb r31, 0x15(r3)
/* 8141C540 | 9B E3 00 16 */	stb r31, 0x16(r3)
/* 8141C544 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8141C548 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C54C | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8141C550 | 7D 89 03 A6 */	mtctr r12
/* 8141C554 | 4E 80 04 21 */	bctrl
/* 8141C558 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141C55C | 7F C3 F3 78 */	mr r3, r30
/* 8141C560 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141C564 | 7D 89 03 A6 */	mtctr r12
/* 8141C568 | 4E 80 04 21 */	bctrl
/* 8141C56C | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8141C570 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141C574 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8141C578 | 7D 89 03 A6 */	mtctr r12
/* 8141C57C | 4E 80 04 21 */	bctrl
/* 8141C580 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8141C584 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141C588 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8141C58C | 7D 89 03 A6 */	mtctr r12
/* 8141C590 | 4E 80 04 21 */	bctrl
/* 8141C594 | C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8141C598 | D0 1E 01 00 */	stfs f0, 0x100(r30)
/* 8141C59C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141C5A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141C5A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141C5A8 | 7C 08 03 A6 */	mtlr r0
/* 8141C5AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141C5B0 | 4E 80 00 20 */	blr
.endfn init__Q39textinput9inputform4BaseFv

# .text:0xA44 | 0x8141C5B4 | size: 0x4
# textinput::Base::init()
.fn init__Q29textinput4BaseFv, global
/* 8141C5B4 | 4E 80 00 20 */	blr
.endfn init__Q29textinput4BaseFv

# .text:0xA48 | 0x8141C5B8 | size: 0x8
# textinput::inputform::Base::enableSpaceByRight(bool)
.fn enableSpaceByRight__Q39textinput9inputform4BaseFb, global
/* 8141C5B8 | 98 83 01 7A */	stb r4, 0x17a(r3)
/* 8141C5BC | 4E 80 00 20 */	blr
.endfn enableSpaceByRight__Q39textinput9inputform4BaseFb

# .text:0xA50 | 0x8141C5C0 | size: 0xC
# textinput::textdrawer::Base::dirtyDrawCache()
.fn dirtyDrawCache__Q39textinput10textdrawer4BaseFv, global
/* 8141C5C0 | 38 00 00 00 */	li r0, 0x0
/* 8141C5C4 | 98 03 00 E4 */	stb r0, 0xe4(r3)
/* 8141C5C8 | 4E 80 00 20 */	blr
.endfn dirtyDrawCache__Q39textinput10textdrawer4BaseFv

# .text:0xA5C | 0x8141C5CC | size: 0xC
# textinput::textdrawer::Base::dirtyCursorCache()
.fn dirtyCursorCache__Q39textinput10textdrawer4BaseFv, global
/* 8141C5CC | 38 00 00 00 */	li r0, 0x0
/* 8141C5D0 | 98 03 01 04 */	stb r0, 0x104(r3)
/* 8141C5D4 | 4E 80 00 20 */	blr
.endfn dirtyCursorCache__Q39textinput10textdrawer4BaseFv

# .text:0xA68 | 0x8141C5D8 | size: 0x58
# textinput::inputform::Base::isEditMode()
.fn isEditMode__Q39textinput9inputform4BaseFv, global
/* 8141C5D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141C5DC | 7C 08 02 A6 */	mflr r0
/* 8141C5E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141C5E4 | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 8141C5E8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8141C5EC | 40 80 00 0C */	bge .L_8141C5F8
/* 8141C5F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141C5F4 | 40 80 00 28 */	bge .L_8141C61C
.L_8141C5F8:
/* 8141C5F8 | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 8141C5FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C600 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8141C604 | 7D 89 03 A6 */	mtctr r12
/* 8141C608 | 4E 80 04 21 */	bctrl
/* 8141C60C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141C610 | 40 82 00 0C */	bne .L_8141C61C
/* 8141C614 | 38 60 00 00 */	li r3, 0x0
/* 8141C618 | 48 00 00 08 */	b .L_8141C620
.L_8141C61C:
/* 8141C61C | 38 60 00 01 */	li r3, 0x1
.L_8141C620:
/* 8141C620 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141C624 | 7C 08 03 A6 */	mtlr r0
/* 8141C628 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141C62C | 4E 80 00 20 */	blr
.endfn isEditMode__Q39textinput9inputform4BaseFv

# .text:0xAC0 | 0x8141C630 | size: 0x11C
# textinput::inputform::Base::checkHeadOfSentence(bool)
.fn checkHeadOfSentence__Q39textinput9inputform4BaseFb, global
/* 8141C630 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141C634 | 7C 08 02 A6 */	mflr r0
/* 8141C638 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141C63C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141C640 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141C644 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141C648 | 7C 9E 23 78 */	mr r30, r4
/* 8141C64C | 38 80 00 20 */	li r4, 0x20
/* 8141C650 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8141C654 | 7C 7D 1B 78 */	mr r29, r3
/* 8141C658 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C65C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141C660 | 7D 89 03 A6 */	mtctr r12
/* 8141C664 | 4E 80 04 21 */	bctrl
/* 8141C668 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8141C66C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141C670 | 41 82 00 0C */	beq .L_8141C67C
/* 8141C674 | 38 60 00 00 */	li r3, 0x0
/* 8141C678 | 48 00 00 B8 */	b .L_8141C730
.L_8141C67C:
/* 8141C67C | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141C680 | 3B E0 00 00 */	li r31, 0x0
/* 8141C684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C688 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141C68C | 7D 89 03 A6 */	mtctr r12
/* 8141C690 | 4E 80 04 21 */	bctrl
/* 8141C694 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8141C698 | 40 80 00 0C */	bge .L_8141C6A4
/* 8141C69C | 38 60 00 01 */	li r3, 0x1
/* 8141C6A0 | 48 00 00 90 */	b .L_8141C730
.L_8141C6A4:
/* 8141C6A4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8141C6A8 | 41 82 00 50 */	beq .L_8141C6F8
/* 8141C6AC | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141C6B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C6B4 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8141C6B8 | 7D 89 03 A6 */	mtctr r12
/* 8141C6BC | 4E 80 04 21 */	bctrl
/* 8141C6C0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8141C6C4 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 8141C6C8 | 41 82 00 18 */	beq .L_8141C6E0
/* 8141C6CC | 40 80 00 0C */	bge .L_8141C6D8
/* 8141C6D0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8141C6D4 | 41 82 00 0C */	beq .L_8141C6E0
.L_8141C6D8:
/* 8141C6D8 | 38 60 00 00 */	li r3, 0x0
/* 8141C6DC | 48 00 00 54 */	b .L_8141C730
.L_8141C6E0:
/* 8141C6E0 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141C6E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C6E8 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8141C6EC | 7D 89 03 A6 */	mtctr r12
/* 8141C6F0 | 4E 80 04 21 */	bctrl
/* 8141C6F4 | 7C 7F 1B 78 */	mr r31, r3
.L_8141C6F8:
/* 8141C6F8 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141C6FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C700 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8141C704 | 7D 89 03 A6 */	mtctr r12
/* 8141C708 | 4E 80 04 21 */	bctrl
/* 8141C70C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8141C710 | 7C 7F 1B 78 */	mr r31, r3
/* 8141C714 | 41 82 00 18 */	beq .L_8141C72C
/* 8141C718 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141C71C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C720 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8141C724 | 7D 89 03 A6 */	mtctr r12
/* 8141C728 | 4E 80 04 21 */	bctrl
.L_8141C72C:
/* 8141C72C | 7F E3 FB 78 */	mr r3, r31
.L_8141C730:
/* 8141C730 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141C734 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141C738 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141C73C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8141C740 | 7C 08 03 A6 */	mtlr r0
/* 8141C744 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141C748 | 4E 80 00 20 */	blr
.endfn checkHeadOfSentence__Q39textinput9inputform4BaseFb

# .text:0xBDC | 0x8141C74C | size: 0x8
# textinput::tistring::Decolated::getCursorPos() const
.fn getCursorPos__Q39textinput8tistring9DecolatedCFv, global
/* 8141C74C | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8141C750 | 4E 80 00 20 */	blr
.endfn getCursorPos__Q39textinput8tistring9DecolatedCFv

# .text:0xBE4 | 0x8141C754 | size: 0x8
# textinput::inputform::Base::setDestination(textinput::Destination)
.fn setDestination__Q39textinput9inputform4BaseFQ29textinput11Destination, global
/* 8141C754 | 90 83 01 60 */	stw r4, 0x160(r3)
/* 8141C758 | 4E 80 00 20 */	blr
.endfn setDestination__Q39textinput9inputform4BaseFQ29textinput11Destination

# .text:0xBEC | 0x8141C75C | size: 0x130
# textinput::inputform::Base::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, global
/* 8141C75C | 28 04 00 09 */	cmplwi r4, 0x9
/* 8141C760 | 90 83 01 F0 */	stw r4, 0x1f0(r3)
/* 8141C764 | 4D 81 00 20 */	bgtlr
/* 8141C768 | 3C A0 81 66 */	lis r5, jumptable_8165CA30@ha
/* 8141C76C | 54 80 10 3A */	slwi r0, r4, 2
/* 8141C770 | 38 A5 CA 30 */	addi r5, r5, jumptable_8165CA30@l
/* 8141C774 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8141C778 | 7C A9 03 A6 */	mtctr r5
/* 8141C77C | 4E 80 04 20 */	bctr
.L_8141C780:
/* 8141C780 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C784 | 38 80 00 01 */	li r4, 0x1
/* 8141C788 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C78C | 7D 89 03 A6 */	mtctr r12
/* 8141C790 | 4E 80 04 20 */	bctr
.L_8141C794:
/* 8141C794 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C798 | 38 80 00 02 */	li r4, 0x2
/* 8141C79C | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C7A0 | 7D 89 03 A6 */	mtctr r12
/* 8141C7A4 | 4E 80 04 20 */	bctr
.L_8141C7A8:
/* 8141C7A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C7AC | 38 80 00 05 */	li r4, 0x5
/* 8141C7B0 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C7B4 | 7D 89 03 A6 */	mtctr r12
/* 8141C7B8 | 4E 80 04 20 */	bctr
.L_8141C7BC:
/* 8141C7BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C7C0 | 38 80 00 06 */	li r4, 0x6
/* 8141C7C4 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C7C8 | 7D 89 03 A6 */	mtctr r12
/* 8141C7CC | 4E 80 04 20 */	bctr
.L_8141C7D0:
/* 8141C7D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C7D4 | 38 80 00 09 */	li r4, 0x9
/* 8141C7D8 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C7DC | 7D 89 03 A6 */	mtctr r12
/* 8141C7E0 | 4E 80 04 20 */	bctr
.L_8141C7E4:
/* 8141C7E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C7E8 | 38 80 00 0A */	li r4, 0xa
/* 8141C7EC | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C7F0 | 7D 89 03 A6 */	mtctr r12
/* 8141C7F4 | 4E 80 04 20 */	bctr
.L_8141C7F8:
/* 8141C7F8 | 80 03 01 60 */	lwz r0, 0x160(r3)
/* 8141C7FC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8141C800 | 40 82 00 18 */	bne .L_8141C818
/* 8141C804 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C808 | 38 80 00 08 */	li r4, 0x8
/* 8141C80C | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C810 | 7D 89 03 A6 */	mtctr r12
/* 8141C814 | 4E 80 04 20 */	bctr
.L_8141C818:
/* 8141C818 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C81C | 38 80 00 04 */	li r4, 0x4
/* 8141C820 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C824 | 7D 89 03 A6 */	mtctr r12
/* 8141C828 | 4E 80 04 20 */	bctr
.L_8141C82C:
/* 8141C82C | 80 03 01 60 */	lwz r0, 0x160(r3)
/* 8141C830 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8141C834 | 40 82 00 18 */	bne .L_8141C84C
/* 8141C838 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C83C | 38 80 00 07 */	li r4, 0x7
/* 8141C840 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C844 | 7D 89 03 A6 */	mtctr r12
/* 8141C848 | 4E 80 04 20 */	bctr
.L_8141C84C:
/* 8141C84C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C850 | 38 80 00 03 */	li r4, 0x3
/* 8141C854 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C858 | 7D 89 03 A6 */	mtctr r12
/* 8141C85C | 4E 80 04 20 */	bctr
.L_8141C860:
/* 8141C860 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C864 | 38 80 00 0B */	li r4, 0xb
/* 8141C868 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C86C | 7D 89 03 A6 */	mtctr r12
/* 8141C870 | 4E 80 04 20 */	bctr
.L_8141C874:
/* 8141C874 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C878 | 38 80 00 0C */	li r4, 0xc
/* 8141C87C | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141C880 | 7D 89 03 A6 */	mtctr r12
/* 8141C884 | 4E 80 04 20 */	bctr
/* 8141C888 | 4E 80 00 20 */	blr
.endfn setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language

# .text:0xD1C | 0x8141C88C | size: 0x110
# textinput::inputform::Base::setPredictMode(textinput::inputform::Base::PredictMode)
.fn setPredictMode__Q39textinput9inputform4BaseFQ49textinput9inputform4Base11PredictMode, global
/* 8141C88C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141C890 | 7C 08 02 A6 */	mflr r0
/* 8141C894 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141C898 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141C89C | 7C 9F 23 78 */	mr r31, r4
/* 8141C8A0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141C8A4 | 7C 7E 1B 78 */	mr r30, r3
/* 8141C8A8 | 80 03 01 60 */	lwz r0, 0x160(r3)
/* 8141C8AC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8141C8B0 | 41 82 00 28 */	beq .L_8141C8D8
/* 8141C8B4 | 40 80 00 14 */	bge .L_8141C8C8
/* 8141C8B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141C8BC | 41 82 00 50 */	beq .L_8141C90C
/* 8141C8C0 | 40 80 00 58 */	bge .L_8141C918
/* 8141C8C4 | 48 00 00 84 */	b .L_8141C948
.L_8141C8C8:
/* 8141C8C8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8141C8CC | 41 82 00 74 */	beq .L_8141C940
/* 8141C8D0 | 40 80 00 78 */	bge .L_8141C948
/* 8141C8D4 | 48 00 00 60 */	b .L_8141C934
.L_8141C8D8:
/* 8141C8D8 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 8141C8DC | 41 82 00 6C */	beq .L_8141C948
/* 8141C8E0 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 8141C8E4 | 41 82 00 64 */	beq .L_8141C948
/* 8141C8E8 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 8141C8EC | 41 82 00 5C */	beq .L_8141C948
/* 8141C8F0 | 2C 04 00 08 */	cmpwi r4, 0x8
/* 8141C8F4 | 41 82 00 54 */	beq .L_8141C948
/* 8141C8F8 | 2C 04 00 09 */	cmpwi r4, 0x9
/* 8141C8FC | 41 82 00 4C */	beq .L_8141C948
/* 8141C900 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 8141C904 | 41 82 00 44 */	beq .L_8141C948
/* 8141C908 | 48 00 00 7C */	b .L_8141C984
.L_8141C90C:
/* 8141C90C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8141C910 | 41 82 00 38 */	beq .L_8141C948
/* 8141C914 | 48 00 00 70 */	b .L_8141C984
.L_8141C918:
/* 8141C918 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8141C91C | 41 82 00 2C */	beq .L_8141C948
/* 8141C920 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8141C924 | 41 82 00 24 */	beq .L_8141C948
/* 8141C928 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8141C92C | 41 82 00 1C */	beq .L_8141C948
/* 8141C930 | 48 00 00 54 */	b .L_8141C984
.L_8141C934:
/* 8141C934 | 2C 04 00 0B */	cmpwi r4, 0xb
/* 8141C938 | 41 82 00 10 */	beq .L_8141C948
/* 8141C93C | 48 00 00 48 */	b .L_8141C984
.L_8141C940:
/* 8141C940 | 2C 04 00 0C */	cmpwi r4, 0xc
/* 8141C944 | 40 82 00 40 */	bne .L_8141C984
.L_8141C948:
/* 8141C948 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141C94C | 7F C3 F3 78 */	mr r3, r30
/* 8141C950 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141C954 | 38 80 00 1F */	li r4, 0x1f
/* 8141C958 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141C95C | 7D 89 03 A6 */	mtctr r12
/* 8141C960 | 4E 80 04 21 */	bctrl
/* 8141C964 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8141C968 | 7F C3 F3 78 */	mr r3, r30
/* 8141C96C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141C970 | 38 80 00 1D */	li r4, 0x1d
/* 8141C974 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141C978 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141C97C | 7D 89 03 A6 */	mtctr r12
/* 8141C980 | 4E 80 04 21 */	bctrl
.L_8141C984:
/* 8141C984 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141C988 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141C98C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141C990 | 7C 08 03 A6 */	mtlr r0
/* 8141C994 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141C998 | 4E 80 00 20 */	blr
.endfn setPredictMode__Q39textinput9inputform4BaseFQ49textinput9inputform4Base11PredictMode

# .text:0xE2C | 0x8141C99C | size: 0x38
# textinput::inputform::Base::getPredictMode()
.fn getPredictMode__Q39textinput9inputform4BaseFv, global
/* 8141C99C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141C9A0 | 7C 08 02 A6 */	mflr r0
/* 8141C9A4 | 38 80 00 1F */	li r4, 0x1f
/* 8141C9A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141C9AC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141C9B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141C9B4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141C9B8 | 7D 89 03 A6 */	mtctr r12
/* 8141C9BC | 4E 80 04 21 */	bctrl
/* 8141C9C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141C9C4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8141C9C8 | 7C 08 03 A6 */	mtlr r0
/* 8141C9CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141C9D0 | 4E 80 00 20 */	blr
.endfn getPredictMode__Q39textinput9inputform4BaseFv

# .text:0xE64 | 0x8141C9D4 | size: 0x2014
# textinput::inputform::Base::onCommand(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 8141C9D4 | 94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8141C9D8 | 7C 08 02 A6 */	mflr r0
/* 8141C9DC | 90 01 02 54 */	stw r0, 0x254(r1)
/* 8141C9E0 | 39 61 02 50 */	addi r11, r1, 0x250
/* 8141C9E4 | 48 1D CA BD */	bl _savegpr_19
/* 8141C9E8 | 7C 7A 1B 78 */	mr r26, r3
/* 8141C9EC | 7C 93 23 78 */	mr r19, r4
/* 8141C9F0 | 7C BB 2B 78 */	mr r27, r5
/* 8141C9F4 | 48 01 F4 F9 */	bl onCommand__Q29textinput15CommandReceiverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
/* 8141C9F8 | 7F 43 D3 78 */	mr r3, r26
/* 8141C9FC | 38 80 00 00 */	li r4, 0x0
/* 8141CA00 | 48 00 54 F5 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141CA04 | 80 BA 01 64 */	lwz r5, 0x164(r26)
/* 8141CA08 | 28 13 00 2F */	cmplwi r19, 0x2f
/* 8141CA0C | 7C 7D 1B 78 */	mr r29, r3
/* 8141CA10 | 7C 03 28 50 */	subf r0, r3, r5
/* 8141CA14 | 7C 00 00 34 */	cntlzw r0, r0
/* 8141CA18 | 54 06 D9 7E */	srwi r6, r0, 5
/* 8141CA1C | 41 81 1F A0 */	bgt .L_8141E9BC
/* 8141CA20 | 3C 80 81 66 */	lis r4, jumptable_8165CA8C@ha
/* 8141CA24 | 56 60 10 3A */	slwi r0, r19, 2
/* 8141CA28 | 38 84 CA 8C */	addi r4, r4, jumptable_8165CA8C@l
/* 8141CA2C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8141CA30 | 7C 89 03 A6 */	mtctr r4
/* 8141CA34 | 4E 80 04 20 */	bctr
.L_8141CA38:
/* 8141CA38 | 80 1A 01 68 */	lwz r0, 0x168(r26)
/* 8141CA3C | 7C 03 00 40 */	cmplw r3, r0
/* 8141CA40 | 40 82 00 94 */	bne .L_8141CAD4
/* 8141CA44 | 88 0D AC B8 */	lbz r0, lbl_81698CF8@sda21(r0)
/* 8141CA48 | 7C 00 07 75 */	extsb. r0, r0
/* 8141CA4C | 40 82 00 2C */	bne .L_8141CA78
/* 8141CA50 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 8141CA54 | 48 02 DA C9 */	bl __ct__Q29textinput12LayoutGatherFv
/* 8141CA58 | 3C 80 81 45 */	lis r4, __dt__Q29textinput12LayoutGatherFv@ha
/* 8141CA5C | 3C A0 81 0C */	lis r5, lbl_810C6590@ha
/* 8141CA60 | 38 84 A5 2C */	addi r4, r4, __dt__Q29textinput12LayoutGatherFv@l
/* 8141CA64 | 38 6D AC BC */	li r3, lbl_81698CFC@sda21
/* 8141CA68 | 38 A5 65 90 */	addi r5, r5, lbl_810C6590@l
/* 8141CA6C | 48 1D C5 75 */	bl __register_global_object
/* 8141CA70 | 38 00 00 01 */	li r0, 0x1
/* 8141CA74 | 98 0D AC B8 */	stb r0, lbl_81698CF8@sda21(r0)
.L_8141CA78:
/* 8141CA78 | 88 0D AC BC */	lbz r0, lbl_81698CFC@sda21(r0)
/* 8141CA7C | 38 8D AC BC */	li r4, lbl_81698CFC@sda21
/* 8141CA80 | 38 60 00 00 */	li r3, 0x0
/* 8141CA84 | 54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 8141CA88 | 40 82 00 10 */	bne .L_8141CA98
/* 8141CA8C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8141CA90 | 54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 8141CA94 | 41 82 00 08 */	beq .L_8141CA9C
.L_8141CA98:
/* 8141CA98 | 38 60 00 01 */	li r3, 0x1
.L_8141CA9C:
/* 8141CA9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141CAA0 | 41 82 00 1C */	beq .L_8141CABC
/* 8141CAA4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141CAA8 | 7F 43 D3 78 */	mr r3, r26
/* 8141CAAC | 81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8141CAB0 | 7D 89 03 A6 */	mtctr r12
/* 8141CAB4 | 4E 80 04 21 */	bctrl
/* 8141CAB8 | 48 00 1F 18 */	b .L_8141E9D0
.L_8141CABC:
/* 8141CABC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141CAC0 | 7F 43 D3 78 */	mr r3, r26
/* 8141CAC4 | 81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8141CAC8 | 7D 89 03 A6 */	mtctr r12
/* 8141CACC | 4E 80 04 21 */	bctrl
/* 8141CAD0 | 48 00 1F 00 */	b .L_8141E9D0
.L_8141CAD4:
/* 8141CAD4 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CAD8 | 38 80 00 00 */	li r4, 0x0
/* 8141CADC | 38 A0 00 00 */	li r5, 0x0
/* 8141CAE0 | 48 1D 82 05 */	bl fn_815F4CE4
/* 8141CAE4 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 8141CAE8 | 41 82 00 1C */	beq .L_8141CB04
/* 8141CAEC | 3C 80 00 01 */	lis r4, 0x1
/* 8141CAF0 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CAF4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8141CAF8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8141CAFC | 48 1D 80 35 */	bl fn_815F4B30
/* 8141CB00 | 48 00 00 10 */	b .L_8141CB10
.L_8141CB04:
/* 8141CB04 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CB08 | 38 80 00 20 */	li r4, 0x20
/* 8141CB0C | 48 1D 80 25 */	bl fn_815F4B30
.L_8141CB10:
/* 8141CB10 | 88 1A 01 E8 */	lbz r0, 0x1e8(r26)
/* 8141CB14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CB18 | 40 82 00 1C */	bne .L_8141CB34
/* 8141CB1C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141CB20 | 7F 43 D3 78 */	mr r3, r26
/* 8141CB24 | 38 80 00 0A */	li r4, 0xa
/* 8141CB28 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141CB2C | 7D 89 03 A6 */	mtctr r12
/* 8141CB30 | 4E 80 04 21 */	bctrl
.L_8141CB34:
/* 8141CB34 | 82 7A 01 68 */	lwz r19, 0x168(r26)
/* 8141CB38 | 7F 43 D3 78 */	mr r3, r26
/* 8141CB3C | 38 80 00 00 */	li r4, 0x0
/* 8141CB40 | 48 00 53 B5 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141CB44 | 7C 03 98 40 */	cmplw r3, r19
/* 8141CB48 | 40 82 00 18 */	bne .L_8141CB60
/* 8141CB4C | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 8141CB50 | 7E 63 9B 78 */	mr r3, r19
/* 8141CB54 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141CB58 | 7D 89 03 A6 */	mtctr r12
/* 8141CB5C | 4E 80 04 21 */	bctrl
.L_8141CB60:
/* 8141CB60 | 3F E0 81 66 */	lis r31, lbl_8165C970@ha
/* 8141CB64 | 3B 20 00 03 */	li r25, 0x3
/* 8141CB68 | 3B FF C9 70 */	addi r31, r31, lbl_8165C970@l
.L_8141CB6C:
/* 8141CB6C | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CB70 | 48 1D 80 E9 */	bl fn_815F4C58
/* 8141CB74 | 88 0D 93 72 */	lbz r0, lbl_816973B2@sda21(r0)
/* 8141CB78 | 7C 7E 1B 78 */	mr r30, r3
/* 8141CB7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CB80 | 41 82 01 38 */	beq .L_8141CCB8
/* 8141CB84 | 48 00 00 10 */	b .L_8141CB94
.L_8141CB88:
/* 8141CB88 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CB8C | 48 1D 80 CD */	bl fn_815F4C58
/* 8141CB90 | 7C 7E 1B 78 */	mr r30, r3
.L_8141CB94:
/* 8141CB94 | A3 1F 00 00 */	lhz r24, 0x0(r31)
/* 8141CB98 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8141CB9C | A2 FF 00 02 */	lhz r23, 0x2(r31)
/* 8141CBA0 | A2 DF 00 04 */	lhz r22, 0x4(r31)
/* 8141CBA4 | 7C 03 C0 40 */	cmplw r3, r24
/* 8141CBA8 | A2 BF 00 06 */	lhz r21, 0x6(r31)
/* 8141CBAC | A2 9F 00 08 */	lhz r20, 0x8(r31)
/* 8141CBB0 | A2 7F 00 0A */	lhz r19, 0xa(r31)
/* 8141CBB4 | A1 9F 00 0C */	lhz r12, 0xc(r31)
/* 8141CBB8 | A1 7F 00 0E */	lhz r11, 0xe(r31)
/* 8141CBBC | A1 5F 00 10 */	lhz r10, 0x10(r31)
/* 8141CBC0 | A1 3F 00 12 */	lhz r9, 0x12(r31)
/* 8141CBC4 | A1 1F 00 14 */	lhz r8, 0x14(r31)
/* 8141CBC8 | A0 FF 00 16 */	lhz r7, 0x16(r31)
/* 8141CBCC | A0 DF 00 18 */	lhz r6, 0x18(r31)
/* 8141CBD0 | A0 BF 00 1A */	lhz r5, 0x1a(r31)
/* 8141CBD4 | A0 9F 00 1C */	lhz r4, 0x1c(r31)
/* 8141CBD8 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8141CBDC | B3 01 00 70 */	sth r24, 0x70(r1)
/* 8141CBE0 | B2 E1 00 72 */	sth r23, 0x72(r1)
/* 8141CBE4 | B2 C1 00 74 */	sth r22, 0x74(r1)
/* 8141CBE8 | B2 A1 00 76 */	sth r21, 0x76(r1)
/* 8141CBEC | B2 81 00 78 */	sth r20, 0x78(r1)
/* 8141CBF0 | B2 61 00 7A */	sth r19, 0x7a(r1)
/* 8141CBF4 | B1 81 00 7C */	sth r12, 0x7c(r1)
/* 8141CBF8 | B1 61 00 7E */	sth r11, 0x7e(r1)
/* 8141CBFC | B1 41 00 80 */	sth r10, 0x80(r1)
/* 8141CC00 | B1 21 00 82 */	sth r9, 0x82(r1)
/* 8141CC04 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 8141CC08 | B0 E1 00 86 */	sth r7, 0x86(r1)
/* 8141CC0C | B0 C1 00 88 */	sth r6, 0x88(r1)
/* 8141CC10 | B0 A1 00 8A */	sth r5, 0x8a(r1)
/* 8141CC14 | B0 81 00 8C */	sth r4, 0x8c(r1)
/* 8141CC18 | B0 01 00 8E */	sth r0, 0x8e(r1)
/* 8141CC1C | 41 80 00 0C */	blt .L_8141CC28
/* 8141CC20 | 7C 03 20 40 */	cmplw r3, r4
/* 8141CC24 | 40 81 00 0C */	ble .L_8141CC30
.L_8141CC28:
/* 8141CC28 | 38 00 00 01 */	li r0, 0x1
/* 8141CC2C | 48 00 00 84 */	b .L_8141CCB0
.L_8141CC30:
/* 8141CC30 | 38 A1 00 70 */	addi r5, r1, 0x70
/* 8141CC34 | 38 80 00 00 */	li r4, 0x0
/* 8141CC38 | 7F 29 03 A6 */	mtctr r25
.L_8141CC3C:
/* 8141CC3C | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8141CC40 | 7C 03 00 40 */	cmplw r3, r0
/* 8141CC44 | 40 82 00 0C */	bne .L_8141CC50
/* 8141CC48 | 38 00 00 00 */	li r0, 0x0
/* 8141CC4C | 48 00 00 64 */	b .L_8141CCB0
.L_8141CC50:
/* 8141CC50 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 8141CC54 | 7C 03 00 40 */	cmplw r3, r0
/* 8141CC58 | 40 82 00 0C */	bne .L_8141CC64
/* 8141CC5C | 38 00 00 00 */	li r0, 0x0
/* 8141CC60 | 48 00 00 50 */	b .L_8141CCB0
.L_8141CC64:
/* 8141CC64 | A0 05 00 04 */	lhz r0, 0x4(r5)
/* 8141CC68 | 7C 03 00 40 */	cmplw r3, r0
/* 8141CC6C | 40 82 00 0C */	bne .L_8141CC78
/* 8141CC70 | 38 00 00 00 */	li r0, 0x0
/* 8141CC74 | 48 00 00 3C */	b .L_8141CCB0
.L_8141CC78:
/* 8141CC78 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 8141CC7C | 7C 03 00 40 */	cmplw r3, r0
/* 8141CC80 | 40 82 00 0C */	bne .L_8141CC8C
/* 8141CC84 | 38 00 00 00 */	li r0, 0x0
/* 8141CC88 | 48 00 00 28 */	b .L_8141CCB0
.L_8141CC8C:
/* 8141CC8C | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 8141CC90 | 7C 03 00 40 */	cmplw r3, r0
/* 8141CC94 | 40 82 00 0C */	bne .L_8141CCA0
/* 8141CC98 | 38 00 00 00 */	li r0, 0x0
/* 8141CC9C | 48 00 00 14 */	b .L_8141CCB0
.L_8141CCA0:
/* 8141CCA0 | 38 A5 00 0A */	addi r5, r5, 0xa
/* 8141CCA4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8141CCA8 | 42 00 FF 94 */	bdnz .L_8141CC3C
/* 8141CCAC | 38 00 00 01 */	li r0, 0x1
.L_8141CCB0:
/* 8141CCB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CCB4 | 41 82 FE D4 */	beq .L_8141CB88
.L_8141CCB8:
/* 8141CCB8 | 57 C0 04 3F */	clrlwi. r0, r30, 16
/* 8141CCBC | 41 82 1D 00 */	beq .L_8141E9BC
/* 8141CCC0 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141CCC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CCC8 | 40 82 00 0C */	bne .L_8141CCD4
/* 8141CCCC | 38 00 00 00 */	li r0, 0x0
/* 8141CCD0 | 48 00 00 5C */	b .L_8141CD2C
.L_8141CCD4:
/* 8141CCD4 | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141CCD8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141CCDC | 40 82 00 0C */	bne .L_8141CCE8
/* 8141CCE0 | 38 00 00 00 */	li r0, 0x0
/* 8141CCE4 | 48 00 00 48 */	b .L_8141CD2C
.L_8141CCE8:
/* 8141CCE8 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141CCEC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141CCF0 | 40 82 00 38 */	bne .L_8141CD28
/* 8141CCF4 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141CCF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CCFC | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8141CD00 | 7D 89 03 A6 */	mtctr r12
/* 8141CD04 | 4E 80 04 21 */	bctrl
/* 8141CD08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CD0C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8141CD10 | 7D 89 03 A6 */	mtctr r12
/* 8141CD14 | 4E 80 04 21 */	bctrl
/* 8141CD18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141CD1C | 41 82 00 0C */	beq .L_8141CD28
/* 8141CD20 | 38 00 00 00 */	li r0, 0x0
/* 8141CD24 | 48 00 00 08 */	b .L_8141CD2C
.L_8141CD28:
/* 8141CD28 | 38 00 00 01 */	li r0, 0x1
.L_8141CD2C:
/* 8141CD2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CD30 | 41 82 00 18 */	beq .L_8141CD48
/* 8141CD34 | 7F 43 D3 78 */	mr r3, r26
/* 8141CD38 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8141CD3C | 38 A0 00 00 */	li r5, 0x0
/* 8141CD40 | 48 00 4C 91 */	bl inputCharZi___Q39textinput9inputform4BaseFwUl
/* 8141CD44 | 4B FF FE 28 */	b .L_8141CB6C
.L_8141CD48:
/* 8141CD48 | 7F 43 D3 78 */	mr r3, r26
/* 8141CD4C | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8141CD50 | 38 A0 00 00 */	li r5, 0x0
/* 8141CD54 | 48 00 4F 15 */	bl inputCharDefault___Q39textinput9inputform4BaseFwUl
/* 8141CD58 | 4B FF FE 14 */	b .L_8141CB6C
.L_8141CD5C:
/* 8141CD5C | 88 1B 00 08 */	lbz r0, 0x8(r27)
/* 8141CD60 | A3 DB 00 00 */	lhz r30, 0x0(r27)
/* 8141CD64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CD68 | 83 9B 00 04 */	lwz r28, 0x4(r27)
/* 8141CD6C | 41 82 01 84 */	beq .L_8141CEF0
/* 8141CD70 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141CD74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CD78 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141CD7C | 7D 89 03 A6 */	mtctr r12
/* 8141CD80 | 4E 80 04 21 */	bctrl
/* 8141CD84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CD88 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8141CD8C | 7D 89 03 A6 */	mtctr r12
/* 8141CD90 | 4E 80 04 21 */	bctrl
/* 8141CD94 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 8141CD98 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141CD9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CDA0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141CDA4 | 7D 89 03 A6 */	mtctr r12
/* 8141CDA8 | 4E 80 04 21 */	bctrl
/* 8141CDAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CDB0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8141CDB4 | 7D 89 03 A6 */	mtctr r12
/* 8141CDB8 | 4E 80 04 21 */	bctrl
/* 8141CDBC | 7C 60 00 34 */	cntlzw r0, r3
/* 8141CDC0 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141CDC4 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8141CDC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CDCC | 98 01 00 45 */	stb r0, 0x45(r1)
/* 8141CDD0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141CDD4 | 7D 89 03 A6 */	mtctr r12
/* 8141CDD8 | 4E 80 04 21 */	bctrl
/* 8141CDDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CDE0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8141CDE4 | 7D 89 03 A6 */	mtctr r12
/* 8141CDE8 | 4E 80 04 21 */	bctrl
/* 8141CDEC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8141CDF0 | 7F 43 D3 78 */	mr r3, r26
/* 8141CDF4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8141CDF8 | 38 80 00 00 */	li r4, 0x0
/* 8141CDFC | 54 00 D9 7E */	srwi r0, r0, 5
/* 8141CE00 | 98 01 00 44 */	stb r0, 0x44(r1)
/* 8141CE04 | 48 00 50 F1 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141CE08 | 80 9A 01 64 */	lwz r4, 0x164(r26)
/* 8141CE0C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8141CE10 | 7C 03 20 40 */	cmplw r3, r4
/* 8141CE14 | 90 01 00 48 */	stw r0, 0x48(r1)
/* 8141CE18 | 40 82 00 68 */	bne .L_8141CE80
/* 8141CE1C | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141CE20 | 82 61 00 40 */	lwz r19, 0x40(r1)
/* 8141CE24 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141CE28 | 40 82 00 14 */	bne .L_8141CE3C
/* 8141CE2C | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8141CE30 | 41 82 00 18 */	beq .L_8141CE48
/* 8141CE34 | 3A 60 00 03 */	li r19, 0x3
/* 8141CE38 | 48 00 00 10 */	b .L_8141CE48
.L_8141CE3C:
/* 8141CE3C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141CE40 | 40 82 00 08 */	bne .L_8141CE48
/* 8141CE44 | 3A 60 00 00 */	li r19, 0x0
.L_8141CE48:
/* 8141CE48 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 8141CE4C | 7C 83 23 78 */	mr r3, r4
/* 8141CE50 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141CE54 | 7D 89 03 A6 */	mtctr r12
/* 8141CE58 | 4E 80 04 21 */	bctrl
/* 8141CE5C | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141CE60 | 7E 64 9B 78 */	mr r4, r19
/* 8141CE64 | 48 01 6A 49 */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
/* 8141CE68 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141CE6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CE70 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141CE74 | 7D 89 03 A6 */	mtctr r12
/* 8141CE78 | 4E 80 04 21 */	bctrl
/* 8141CE7C | 48 00 00 0C */	b .L_8141CE88
.L_8141CE80:
/* 8141CE80 | 80 81 00 40 */	lwz r4, 0x40(r1)
/* 8141CE84 | 48 01 6A 29 */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
.L_8141CE88:
/* 8141CE88 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141CE8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CE90 | 40 82 00 0C */	bne .L_8141CE9C
/* 8141CE94 | 38 00 00 00 */	li r0, 0x0
/* 8141CE98 | 48 00 00 14 */	b .L_8141CEAC
.L_8141CE9C:
/* 8141CE9C | 80 7A 01 74 */	lwz r3, 0x174(r26)
/* 8141CEA0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8141CEA4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8141CEA8 | 54 00 D9 7E */	srwi r0, r0, 5
.L_8141CEAC:
/* 8141CEAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CEB0 | 41 82 00 40 */	beq .L_8141CEF0
/* 8141CEB4 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141CEB8 | 38 00 00 00 */	li r0, 0x0
/* 8141CEBC | 98 01 00 4D */	stb r0, 0x4d(r1)
/* 8141CEC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CEC4 | 98 01 00 4C */	stb r0, 0x4c(r1)
/* 8141CEC8 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8141CECC | 88 81 00 45 */	lbz r4, 0x45(r1)
/* 8141CED0 | 7D 89 03 A6 */	mtctr r12
/* 8141CED4 | 4E 80 04 21 */	bctrl
/* 8141CED8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141CEDC | 88 81 00 44 */	lbz r4, 0x44(r1)
/* 8141CEE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141CEE4 | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8141CEE8 | 7D 89 03 A6 */	mtctr r12
/* 8141CEEC | 4E 80 04 21 */	bctrl
.L_8141CEF0:
/* 8141CEF0 | 88 1B 00 09 */	lbz r0, 0x9(r27)
/* 8141CEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CEF8 | 41 82 00 14 */	beq .L_8141CF0C
/* 8141CEFC | 80 7A 01 F0 */	lwz r3, 0x1f0(r26)
/* 8141CF00 | 7F C4 F3 78 */	mr r4, r30
/* 8141CF04 | 4B FF F0 29 */	bl ToCombineClass__Q39textinput9inputform13DeadKeyStreamFQ29textinput8Languagew
/* 8141CF08 | 7C 7E 1B 78 */	mr r30, r3
.L_8141CF0C:
/* 8141CF0C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8141CF10 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8141CF14 | 40 82 00 34 */	bne .L_8141CF48
/* 8141CF18 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CF1C | 38 80 00 00 */	li r4, 0x0
/* 8141CF20 | 38 A0 00 00 */	li r5, 0x0
/* 8141CF24 | 48 1D 7D C1 */	bl fn_815F4CE4
/* 8141CF28 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 8141CF2C | 41 82 00 1C */	beq .L_8141CF48
/* 8141CF30 | 3C 80 00 01 */	lis r4, 0x1
/* 8141CF34 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CF38 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8141CF3C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8141CF40 | 48 1D 7B F1 */	bl fn_815F4B30
/* 8141CF44 | 48 00 00 10 */	b .L_8141CF54
.L_8141CF48:
/* 8141CF48 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CF4C | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8141CF50 | 48 1D 7B E1 */	bl fn_815F4B30
.L_8141CF54:
/* 8141CF54 | 88 1A 01 E8 */	lbz r0, 0x1e8(r26)
/* 8141CF58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CF5C | 40 82 00 1C */	bne .L_8141CF78
/* 8141CF60 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141CF64 | 7F 43 D3 78 */	mr r3, r26
/* 8141CF68 | 38 80 00 0A */	li r4, 0xa
/* 8141CF6C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141CF70 | 7D 89 03 A6 */	mtctr r12
/* 8141CF74 | 4E 80 04 21 */	bctrl
.L_8141CF78:
/* 8141CF78 | 82 7A 01 68 */	lwz r19, 0x168(r26)
/* 8141CF7C | 7F 43 D3 78 */	mr r3, r26
/* 8141CF80 | 38 80 00 00 */	li r4, 0x0
/* 8141CF84 | 48 00 4F 71 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141CF88 | 7C 03 98 40 */	cmplw r3, r19
/* 8141CF8C | 40 82 00 18 */	bne .L_8141CFA4
/* 8141CF90 | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 8141CF94 | 7E 63 9B 78 */	mr r3, r19
/* 8141CF98 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141CF9C | 7D 89 03 A6 */	mtctr r12
/* 8141CFA0 | 4E 80 04 21 */	bctrl
.L_8141CFA4:
/* 8141CFA4 | 3F E0 81 66 */	lis r31, lbl_8165C970@ha
/* 8141CFA8 | 3B 20 00 03 */	li r25, 0x3
/* 8141CFAC | 3B FF C9 70 */	addi r31, r31, lbl_8165C970@l
.L_8141CFB0:
/* 8141CFB0 | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CFB4 | 48 1D 7C A5 */	bl fn_815F4C58
/* 8141CFB8 | 88 0D 93 72 */	lbz r0, lbl_816973B2@sda21(r0)
/* 8141CFBC | 7C 7E 1B 78 */	mr r30, r3
/* 8141CFC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141CFC4 | 41 82 01 38 */	beq .L_8141D0FC
/* 8141CFC8 | 48 00 00 10 */	b .L_8141CFD8
.L_8141CFCC:
/* 8141CFCC | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141CFD0 | 48 1D 7C 89 */	bl fn_815F4C58
/* 8141CFD4 | 7C 7E 1B 78 */	mr r30, r3
.L_8141CFD8:
/* 8141CFD8 | A2 7F 00 00 */	lhz r19, 0x0(r31)
/* 8141CFDC | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8141CFE0 | A2 9F 00 02 */	lhz r20, 0x2(r31)
/* 8141CFE4 | A2 BF 00 04 */	lhz r21, 0x4(r31)
/* 8141CFE8 | 7C 03 98 40 */	cmplw r3, r19
/* 8141CFEC | A2 DF 00 06 */	lhz r22, 0x6(r31)
/* 8141CFF0 | A2 FF 00 08 */	lhz r23, 0x8(r31)
/* 8141CFF4 | A3 1F 00 0A */	lhz r24, 0xa(r31)
/* 8141CFF8 | A1 9F 00 0C */	lhz r12, 0xc(r31)
/* 8141CFFC | A1 7F 00 0E */	lhz r11, 0xe(r31)
/* 8141D000 | A1 5F 00 10 */	lhz r10, 0x10(r31)
/* 8141D004 | A1 3F 00 12 */	lhz r9, 0x12(r31)
/* 8141D008 | A1 1F 00 14 */	lhz r8, 0x14(r31)
/* 8141D00C | A0 FF 00 16 */	lhz r7, 0x16(r31)
/* 8141D010 | A0 DF 00 18 */	lhz r6, 0x18(r31)
/* 8141D014 | A0 BF 00 1A */	lhz r5, 0x1a(r31)
/* 8141D018 | A0 9F 00 1C */	lhz r4, 0x1c(r31)
/* 8141D01C | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8141D020 | B2 61 00 50 */	sth r19, 0x50(r1)
/* 8141D024 | B2 81 00 52 */	sth r20, 0x52(r1)
/* 8141D028 | B2 A1 00 54 */	sth r21, 0x54(r1)
/* 8141D02C | B2 C1 00 56 */	sth r22, 0x56(r1)
/* 8141D030 | B2 E1 00 58 */	sth r23, 0x58(r1)
/* 8141D034 | B3 01 00 5A */	sth r24, 0x5a(r1)
/* 8141D038 | B1 81 00 5C */	sth r12, 0x5c(r1)
/* 8141D03C | B1 61 00 5E */	sth r11, 0x5e(r1)
/* 8141D040 | B1 41 00 60 */	sth r10, 0x60(r1)
/* 8141D044 | B1 21 00 62 */	sth r9, 0x62(r1)
/* 8141D048 | B1 01 00 64 */	sth r8, 0x64(r1)
/* 8141D04C | B0 E1 00 66 */	sth r7, 0x66(r1)
/* 8141D050 | B0 C1 00 68 */	sth r6, 0x68(r1)
/* 8141D054 | B0 A1 00 6A */	sth r5, 0x6a(r1)
/* 8141D058 | B0 81 00 6C */	sth r4, 0x6c(r1)
/* 8141D05C | B0 01 00 6E */	sth r0, 0x6e(r1)
/* 8141D060 | 41 80 00 0C */	blt .L_8141D06C
/* 8141D064 | 7C 03 20 40 */	cmplw r3, r4
/* 8141D068 | 40 81 00 0C */	ble .L_8141D074
.L_8141D06C:
/* 8141D06C | 38 00 00 01 */	li r0, 0x1
/* 8141D070 | 48 00 00 84 */	b .L_8141D0F4
.L_8141D074:
/* 8141D074 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 8141D078 | 38 80 00 00 */	li r4, 0x0
/* 8141D07C | 7F 29 03 A6 */	mtctr r25
.L_8141D080:
/* 8141D080 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8141D084 | 7C 03 00 40 */	cmplw r3, r0
/* 8141D088 | 40 82 00 0C */	bne .L_8141D094
/* 8141D08C | 38 00 00 00 */	li r0, 0x0
/* 8141D090 | 48 00 00 64 */	b .L_8141D0F4
.L_8141D094:
/* 8141D094 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 8141D098 | 7C 03 00 40 */	cmplw r3, r0
/* 8141D09C | 40 82 00 0C */	bne .L_8141D0A8
/* 8141D0A0 | 38 00 00 00 */	li r0, 0x0
/* 8141D0A4 | 48 00 00 50 */	b .L_8141D0F4
.L_8141D0A8:
/* 8141D0A8 | A0 05 00 04 */	lhz r0, 0x4(r5)
/* 8141D0AC | 7C 03 00 40 */	cmplw r3, r0
/* 8141D0B0 | 40 82 00 0C */	bne .L_8141D0BC
/* 8141D0B4 | 38 00 00 00 */	li r0, 0x0
/* 8141D0B8 | 48 00 00 3C */	b .L_8141D0F4
.L_8141D0BC:
/* 8141D0BC | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 8141D0C0 | 7C 03 00 40 */	cmplw r3, r0
/* 8141D0C4 | 40 82 00 0C */	bne .L_8141D0D0
/* 8141D0C8 | 38 00 00 00 */	li r0, 0x0
/* 8141D0CC | 48 00 00 28 */	b .L_8141D0F4
.L_8141D0D0:
/* 8141D0D0 | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 8141D0D4 | 7C 03 00 40 */	cmplw r3, r0
/* 8141D0D8 | 40 82 00 0C */	bne .L_8141D0E4
/* 8141D0DC | 38 00 00 00 */	li r0, 0x0
/* 8141D0E0 | 48 00 00 14 */	b .L_8141D0F4
.L_8141D0E4:
/* 8141D0E4 | 38 A5 00 0A */	addi r5, r5, 0xa
/* 8141D0E8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8141D0EC | 42 00 FF 94 */	bdnz .L_8141D080
/* 8141D0F0 | 38 00 00 01 */	li r0, 0x1
.L_8141D0F4:
/* 8141D0F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D0F8 | 41 82 FE D4 */	beq .L_8141CFCC
.L_8141D0FC:
/* 8141D0FC | 57 C0 04 3F */	clrlwi. r0, r30, 16
/* 8141D100 | 41 82 00 A0 */	beq .L_8141D1A0
/* 8141D104 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141D108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D10C | 40 82 00 0C */	bne .L_8141D118
/* 8141D110 | 38 00 00 00 */	li r0, 0x0
/* 8141D114 | 48 00 00 5C */	b .L_8141D170
.L_8141D118:
/* 8141D118 | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141D11C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141D120 | 40 82 00 0C */	bne .L_8141D12C
/* 8141D124 | 38 00 00 00 */	li r0, 0x0
/* 8141D128 | 48 00 00 48 */	b .L_8141D170
.L_8141D12C:
/* 8141D12C | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141D130 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141D134 | 40 82 00 38 */	bne .L_8141D16C
/* 8141D138 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D13C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D140 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8141D144 | 7D 89 03 A6 */	mtctr r12
/* 8141D148 | 4E 80 04 21 */	bctrl
/* 8141D14C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D150 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8141D154 | 7D 89 03 A6 */	mtctr r12
/* 8141D158 | 4E 80 04 21 */	bctrl
/* 8141D15C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D160 | 41 82 00 0C */	beq .L_8141D16C
/* 8141D164 | 38 00 00 00 */	li r0, 0x0
/* 8141D168 | 48 00 00 08 */	b .L_8141D170
.L_8141D16C:
/* 8141D16C | 38 00 00 01 */	li r0, 0x1
.L_8141D170:
/* 8141D170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D174 | 41 82 00 18 */	beq .L_8141D18C
/* 8141D178 | 7F 43 D3 78 */	mr r3, r26
/* 8141D17C | 7F 85 E3 78 */	mr r5, r28
/* 8141D180 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8141D184 | 48 00 48 4D */	bl inputCharZi___Q39textinput9inputform4BaseFwUl
/* 8141D188 | 4B FF FE 28 */	b .L_8141CFB0
.L_8141D18C:
/* 8141D18C | 7F 43 D3 78 */	mr r3, r26
/* 8141D190 | 7F 85 E3 78 */	mr r5, r28
/* 8141D194 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8141D198 | 48 00 4A D1 */	bl inputCharDefault___Q39textinput9inputform4BaseFwUl
/* 8141D19C | 4B FF FE 14 */	b .L_8141CFB0
.L_8141D1A0:
/* 8141D1A0 | 80 1A 01 6C */	lwz r0, 0x16c(r26)
/* 8141D1A4 | 7C 1D 00 40 */	cmplw r29, r0
/* 8141D1A8 | 40 82 00 0C */	bne .L_8141D1B4
/* 8141D1AC | 38 00 00 00 */	li r0, 0x0
/* 8141D1B0 | 98 1A 01 F4 */	stb r0, 0x1f4(r26)
.L_8141D1B4:
/* 8141D1B4 | 88 1B 00 08 */	lbz r0, 0x8(r27)
/* 8141D1B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D1BC | 41 82 00 E4 */	beq .L_8141D2A0
/* 8141D1C0 | 7F 43 D3 78 */	mr r3, r26
/* 8141D1C4 | 38 80 00 00 */	li r4, 0x0
/* 8141D1C8 | 48 00 4D 2D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141D1CC | 80 9A 01 64 */	lwz r4, 0x164(r26)
/* 8141D1D0 | 7C 03 20 40 */	cmplw r3, r4
/* 8141D1D4 | 40 82 00 68 */	bne .L_8141D23C
/* 8141D1D8 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141D1DC | 82 61 00 48 */	lwz r19, 0x48(r1)
/* 8141D1E0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141D1E4 | 40 82 00 14 */	bne .L_8141D1F8
/* 8141D1E8 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8141D1EC | 41 82 00 18 */	beq .L_8141D204
/* 8141D1F0 | 3A 60 00 03 */	li r19, 0x3
/* 8141D1F4 | 48 00 00 10 */	b .L_8141D204
.L_8141D1F8:
/* 8141D1F8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141D1FC | 40 82 00 08 */	bne .L_8141D204
/* 8141D200 | 3A 60 00 00 */	li r19, 0x0
.L_8141D204:
/* 8141D204 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 8141D208 | 7C 83 23 78 */	mr r3, r4
/* 8141D20C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D210 | 7D 89 03 A6 */	mtctr r12
/* 8141D214 | 4E 80 04 21 */	bctrl
/* 8141D218 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D21C | 7E 64 9B 78 */	mr r4, r19
/* 8141D220 | 48 01 66 8D */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
/* 8141D224 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D22C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D230 | 7D 89 03 A6 */	mtctr r12
/* 8141D234 | 4E 80 04 21 */	bctrl
/* 8141D238 | 48 00 00 0C */	b .L_8141D244
.L_8141D23C:
/* 8141D23C | 80 81 00 48 */	lwz r4, 0x48(r1)
/* 8141D240 | 48 01 66 6D */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
.L_8141D244:
/* 8141D244 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141D248 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D24C | 40 82 00 0C */	bne .L_8141D258
/* 8141D250 | 38 00 00 00 */	li r0, 0x0
/* 8141D254 | 48 00 00 14 */	b .L_8141D268
.L_8141D258:
/* 8141D258 | 80 7A 01 74 */	lwz r3, 0x174(r26)
/* 8141D25C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8141D260 | 7C 00 00 34 */	cntlzw r0, r0
/* 8141D264 | 54 00 D9 7E */	srwi r0, r0, 5
.L_8141D268:
/* 8141D268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D26C | 41 82 00 34 */	beq .L_8141D2A0
/* 8141D270 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141D274 | 88 81 00 4D */	lbz r4, 0x4d(r1)
/* 8141D278 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D27C | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8141D280 | 7D 89 03 A6 */	mtctr r12
/* 8141D284 | 4E 80 04 21 */	bctrl
/* 8141D288 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141D28C | 88 81 00 4C */	lbz r4, 0x4c(r1)
/* 8141D290 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D294 | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8141D298 | 7D 89 03 A6 */	mtctr r12
/* 8141D29C | 4E 80 04 21 */	bctrl
.L_8141D2A0:
/* 8141D2A0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D2A4 | 7F 43 D3 78 */	mr r3, r26
/* 8141D2A8 | 38 80 00 01 */	li r4, 0x1
/* 8141D2AC | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8141D2B0 | 7D 89 03 A6 */	mtctr r12
/* 8141D2B4 | 4E 80 04 21 */	bctrl
/* 8141D2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D2BC | 41 82 17 00 */	beq .L_8141E9BC
/* 8141D2C0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D2C4 | 7F 43 D3 78 */	mr r3, r26
/* 8141D2C8 | 38 80 00 21 */	li r4, 0x21
/* 8141D2CC | 38 A0 00 00 */	li r5, 0x0
/* 8141D2D0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141D2D4 | 7D 89 03 A6 */	mtctr r12
/* 8141D2D8 | 4E 80 04 21 */	bctrl
/* 8141D2DC | 48 00 16 E0 */	b .L_8141E9BC
.L_8141D2E0:
/* 8141D2E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D2E4 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8141D2E8 | 7D 89 03 A6 */	mtctr r12
/* 8141D2EC | 4E 80 04 21 */	bctrl
/* 8141D2F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D2F4 | 41 82 00 20 */	beq .L_8141D314
/* 8141D2F8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D2FC | 7F 43 D3 78 */	mr r3, r26
/* 8141D300 | 38 80 00 07 */	li r4, 0x7
/* 8141D304 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D308 | 7D 89 03 A6 */	mtctr r12
/* 8141D30C | 4E 80 04 21 */	bctrl
/* 8141D310 | 48 00 00 1C */	b .L_8141D32C
.L_8141D314:
/* 8141D314 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D318 | 7F 43 D3 78 */	mr r3, r26
/* 8141D31C | 38 80 00 08 */	li r4, 0x8
/* 8141D320 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D324 | 7D 89 03 A6 */	mtctr r12
/* 8141D328 | 4E 80 04 21 */	bctrl
.L_8141D32C:
/* 8141D32C | 80 1A 01 64 */	lwz r0, 0x164(r26)
/* 8141D330 | 7C 1D 00 40 */	cmplw r29, r0
/* 8141D334 | 40 82 01 08 */	bne .L_8141D43C
/* 8141D338 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D33C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D340 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141D344 | 7D 89 03 A6 */	mtctr r12
/* 8141D348 | 4E 80 04 21 */	bctrl
/* 8141D34C | 38 00 00 00 */	li r0, 0x0
/* 8141D350 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 8141D354 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 8141D358 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141D35C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D360 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8141D364 | 7D 89 03 A6 */	mtctr r12
/* 8141D368 | 4E 80 04 21 */	bctrl
/* 8141D36C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D370 | 7F 43 D3 78 */	mr r3, r26
/* 8141D374 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141D378 | 7D 89 03 A6 */	mtctr r12
/* 8141D37C | 4E 80 04 21 */	bctrl
/* 8141D380 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D384 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D388 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D38C | 7D 89 03 A6 */	mtctr r12
/* 8141D390 | 4E 80 04 21 */	bctrl
/* 8141D394 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D398 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D39C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141D3A0 | 7D 89 03 A6 */	mtctr r12
/* 8141D3A4 | 4E 80 04 21 */	bctrl
/* 8141D3A8 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D3AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D3B0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D3B4 | 7D 89 03 A6 */	mtctr r12
/* 8141D3B8 | 4E 80 04 21 */	bctrl
/* 8141D3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D3C0 | 41 82 00 1C */	beq .L_8141D3DC
/* 8141D3C4 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D3C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D3CC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D3D0 | 7D 89 03 A6 */	mtctr r12
/* 8141D3D4 | 4E 80 04 21 */	bctrl
/* 8141D3D8 | 4B FF DC D9 */	bl resetHoldingButton__Q49textinput8keyboard13cellphonetype12LayoutByNW4RFv
.L_8141D3DC:
/* 8141D3DC | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D3E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D3E4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D3E8 | 7D 89 03 A6 */	mtctr r12
/* 8141D3EC | 4E 80 04 21 */	bctrl
/* 8141D3F0 | 7F 43 D3 78 */	mr r3, r26
/* 8141D3F4 | 38 80 00 00 */	li r4, 0x0
/* 8141D3F8 | 48 00 4A FD */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141D3FC | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D404 | 41 82 01 10 */	beq .L_8141D514
/* 8141D408 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141D40C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141D410 | 40 82 01 04 */	bne .L_8141D514
/* 8141D414 | 38 80 00 00 */	li r4, 0x0
/* 8141D418 | 48 01 7A BD */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8141D41C | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D420 | 48 01 70 A5 */	bl update__Q39textinput8tistring6WithZiFv
/* 8141D424 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D428 | 7F 43 D3 78 */	mr r3, r26
/* 8141D42C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141D430 | 7D 89 03 A6 */	mtctr r12
/* 8141D434 | 4E 80 04 21 */	bctrl
/* 8141D438 | 48 00 00 DC */	b .L_8141D514
.L_8141D43C:
/* 8141D43C | 80 1A 01 6C */	lwz r0, 0x16c(r26)
/* 8141D440 | 7C 1D 00 40 */	cmplw r29, r0
/* 8141D444 | 40 82 00 58 */	bne .L_8141D49C
/* 8141D448 | 38 00 00 00 */	li r0, 0x0
/* 8141D44C | 7F A3 EB 78 */	mr r3, r29
/* 8141D450 | 98 1A 01 F4 */	stb r0, 0x1f4(r26)
/* 8141D454 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141D458 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141D45C | 7D 89 03 A6 */	mtctr r12
/* 8141D460 | 4E 80 04 21 */	bctrl
/* 8141D464 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D468 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D46C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D470 | 7D 89 03 A6 */	mtctr r12
/* 8141D474 | 4E 80 04 21 */	bctrl
/* 8141D478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D47C | 41 82 00 98 */	beq .L_8141D514
/* 8141D480 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D484 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D488 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D48C | 7D 89 03 A6 */	mtctr r12
/* 8141D490 | 4E 80 04 21 */	bctrl
/* 8141D494 | 4B FF DC 1D */	bl resetHoldingButton__Q49textinput8keyboard13cellphonetype12LayoutByNW4RFv
/* 8141D498 | 48 00 00 7C */	b .L_8141D514
.L_8141D49C:
/* 8141D49C | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141D4A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D4A4 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141D4A8 | 7D 89 03 A6 */	mtctr r12
/* 8141D4AC | 4E 80 04 21 */	bctrl
/* 8141D4B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D4B4 | 40 82 00 4C */	bne .L_8141D500
/* 8141D4B8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141D4BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D4C0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141D4C4 | 7D 89 03 A6 */	mtctr r12
/* 8141D4C8 | 4E 80 04 21 */	bctrl
/* 8141D4CC | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D4D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D4D4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D4D8 | 7D 89 03 A6 */	mtctr r12
/* 8141D4DC | 4E 80 04 21 */	bctrl
/* 8141D4E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D4E4 | 41 82 00 1C */	beq .L_8141D500
/* 8141D4E8 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D4EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D4F0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D4F4 | 7D 89 03 A6 */	mtctr r12
/* 8141D4F8 | 4E 80 04 21 */	bctrl
/* 8141D4FC | 4B FF DB B5 */	bl resetHoldingButton__Q49textinput8keyboard13cellphonetype12LayoutByNW4RFv
.L_8141D500:
/* 8141D500 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D504 | 7F 43 D3 78 */	mr r3, r26
/* 8141D508 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141D50C | 7D 89 03 A6 */	mtctr r12
/* 8141D510 | 4E 80 04 21 */	bctrl
.L_8141D514:
/* 8141D514 | 38 00 00 02 */	li r0, 0x2
/* 8141D518 | 7F 43 D3 78 */	mr r3, r26
/* 8141D51C | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141D520 | 38 80 00 01 */	li r4, 0x1
/* 8141D524 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D528 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8141D52C | 7D 89 03 A6 */	mtctr r12
/* 8141D530 | 4E 80 04 21 */	bctrl
/* 8141D534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D538 | 41 82 14 84 */	beq .L_8141E9BC
/* 8141D53C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D540 | 7F 43 D3 78 */	mr r3, r26
/* 8141D544 | 38 80 00 21 */	li r4, 0x21
/* 8141D548 | 38 A0 00 00 */	li r5, 0x0
/* 8141D54C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141D550 | 7D 89 03 A6 */	mtctr r12
/* 8141D554 | 4E 80 04 21 */	bctrl
/* 8141D558 | 48 00 14 64 */	b .L_8141E9BC
.L_8141D55C:
/* 8141D55C | 7C 03 28 40 */	cmplw r3, r5
/* 8141D560 | 41 82 00 20 */	beq .L_8141D580
/* 8141D564 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D568 | 7F 43 D3 78 */	mr r3, r26
/* 8141D56C | 38 80 00 08 */	li r4, 0x8
/* 8141D570 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D574 | 7D 89 03 A6 */	mtctr r12
/* 8141D578 | 4E 80 04 21 */	bctrl
/* 8141D57C | 48 00 14 54 */	b .L_8141E9D0
.L_8141D580:
/* 8141D580 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 8141D584 | 7C A3 2B 78 */	mr r3, r5
/* 8141D588 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8141D58C | 7D 89 03 A6 */	mtctr r12
/* 8141D590 | 4E 80 04 21 */	bctrl
/* 8141D594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D598 | 40 82 00 20 */	bne .L_8141D5B8
/* 8141D59C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D5A0 | 7F 43 D3 78 */	mr r3, r26
/* 8141D5A4 | 38 80 00 08 */	li r4, 0x8
/* 8141D5A8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D5AC | 7D 89 03 A6 */	mtctr r12
/* 8141D5B0 | 4E 80 04 21 */	bctrl
/* 8141D5B4 | 48 00 14 08 */	b .L_8141E9BC
.L_8141D5B8:
/* 8141D5B8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D5BC | 7F 43 D3 78 */	mr r3, r26
/* 8141D5C0 | 38 80 00 07 */	li r4, 0x7
/* 8141D5C4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D5C8 | 7D 89 03 A6 */	mtctr r12
/* 8141D5CC | 4E 80 04 21 */	bctrl
/* 8141D5D0 | 48 00 13 EC */	b .L_8141E9BC
.L_8141D5D4:
/* 8141D5D4 | 7C 03 28 40 */	cmplw r3, r5
/* 8141D5D8 | 40 82 03 40 */	bne .L_8141D918
/* 8141D5DC | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141D5E0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141D5E4 | 40 82 00 D8 */	bne .L_8141D6BC
/* 8141D5E8 | 7F 43 D3 78 */	mr r3, r26
/* 8141D5EC | 38 80 00 00 */	li r4, 0x0
/* 8141D5F0 | 48 00 49 05 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141D5F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D5F8 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8141D5FC | 7D 89 03 A6 */	mtctr r12
/* 8141D600 | 4E 80 04 21 */	bctrl
/* 8141D604 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D608 | 40 82 00 B4 */	bne .L_8141D6BC
/* 8141D60C | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D614 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D618 | 7D 89 03 A6 */	mtctr r12
/* 8141D61C | 4E 80 04 21 */	bctrl
/* 8141D620 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D624 | 38 80 00 0A */	li r4, 0xa
/* 8141D628 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D62C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8141D630 | 7D 89 03 A6 */	mtctr r12
/* 8141D634 | 4E 80 04 21 */	bctrl
/* 8141D638 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D63C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D640 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D644 | 7D 89 03 A6 */	mtctr r12
/* 8141D648 | 4E 80 04 21 */	bctrl
/* 8141D64C | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141D650 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141D654 | 40 82 00 68 */	bne .L_8141D6BC
/* 8141D658 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141D65C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D660 | 40 82 00 0C */	bne .L_8141D66C
/* 8141D664 | 38 00 00 00 */	li r0, 0x0
/* 8141D668 | 48 00 00 38 */	b .L_8141D6A0
.L_8141D66C:
/* 8141D66C | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141D670 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141D674 | 41 82 00 28 */	beq .L_8141D69C
/* 8141D678 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D67C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D680 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141D684 | 7D 89 03 A6 */	mtctr r12
/* 8141D688 | 4E 80 04 21 */	bctrl
/* 8141D68C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D690 | 40 81 00 0C */	ble .L_8141D69C
/* 8141D694 | 38 00 00 01 */	li r0, 0x1
/* 8141D698 | 48 00 00 08 */	b .L_8141D6A0
.L_8141D69C:
/* 8141D69C | 38 00 00 00 */	li r0, 0x0
.L_8141D6A0:
/* 8141D6A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D6A4 | 41 82 00 18 */	beq .L_8141D6BC
/* 8141D6A8 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D6AC | 38 80 00 00 */	li r4, 0x0
/* 8141D6B0 | 48 01 78 25 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8141D6B4 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D6B8 | 48 01 6E 0D */	bl update__Q39textinput8tistring6WithZiFv
.L_8141D6BC:
/* 8141D6BC | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D6C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D6C4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141D6C8 | 7D 89 03 A6 */	mtctr r12
/* 8141D6CC | 4E 80 04 21 */	bctrl
/* 8141D6D0 | 38 00 00 00 */	li r0, 0x0
/* 8141D6D4 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 8141D6D8 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 8141D6DC | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141D6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D6E4 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8141D6E8 | 7D 89 03 A6 */	mtctr r12
/* 8141D6EC | 4E 80 04 21 */	bctrl
/* 8141D6F0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D6F4 | 7F 43 D3 78 */	mr r3, r26
/* 8141D6F8 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141D6FC | 7D 89 03 A6 */	mtctr r12
/* 8141D700 | 4E 80 04 21 */	bctrl
/* 8141D704 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D708 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D70C | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8141D710 | 7D 89 03 A6 */	mtctr r12
/* 8141D714 | 4E 80 04 21 */	bctrl
/* 8141D718 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D71C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141D720 | 7D 89 03 A6 */	mtctr r12
/* 8141D724 | 4E 80 04 21 */	bctrl
/* 8141D728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D72C | 41 82 00 20 */	beq .L_8141D74C
/* 8141D730 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D734 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D738 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141D73C | 7D 89 03 A6 */	mtctr r12
/* 8141D740 | 4E 80 04 21 */	bctrl
/* 8141D744 | 8A 63 00 FC */	lbz r19, 0xfc(r3)
/* 8141D748 | 48 00 00 1C */	b .L_8141D764
.L_8141D74C:
/* 8141D74C | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D750 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D754 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D758 | 7D 89 03 A6 */	mtctr r12
/* 8141D75C | 4E 80 04 21 */	bctrl
/* 8141D760 | 8A 63 00 E0 */	lbz r19, 0xe0(r3)
.L_8141D764:
/* 8141D764 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D768 | 3A 80 00 01 */	li r20, 0x1
/* 8141D76C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D770 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8141D774 | 7D 89 03 A6 */	mtctr r12
/* 8141D778 | 4E 80 04 21 */	bctrl
/* 8141D77C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D780 | 41 82 00 44 */	beq .L_8141D7C4
/* 8141D784 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8141D788 | 3B 20 00 00 */	li r25, 0x0
/* 8141D78C | 41 82 00 2C */	beq .L_8141D7B8
/* 8141D790 | 81 9A 00 5C */	lwz r12, 0x5c(r26)
/* 8141D794 | 38 7A 00 10 */	addi r3, r26, 0x10
/* 8141D798 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8141D79C | 7D 89 03 A6 */	mtctr r12
/* 8141D7A0 | 4E 80 04 21 */	bctrl
/* 8141D7A4 | 80 1A 01 BC */	lwz r0, 0x1bc(r26)
/* 8141D7A8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8141D7AC | 7C 00 18 40 */	cmplw r0, r3
/* 8141D7B0 | 41 80 00 08 */	blt .L_8141D7B8
/* 8141D7B4 | 3B 20 00 01 */	li r25, 0x1
.L_8141D7B8:
/* 8141D7B8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8141D7BC | 40 82 00 08 */	bne .L_8141D7C4
/* 8141D7C0 | 3A 80 00 00 */	li r20, 0x0
.L_8141D7C4:
/* 8141D7C4 | 81 9A 00 5C */	lwz r12, 0x5c(r26)
/* 8141D7C8 | 38 7A 00 10 */	addi r3, r26, 0x10
/* 8141D7CC | 3A 60 00 01 */	li r19, 0x1
/* 8141D7D0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8141D7D4 | 7D 89 03 A6 */	mtctr r12
/* 8141D7D8 | 4E 80 04 21 */	bctrl
/* 8141D7DC | 80 1A 01 BC */	lwz r0, 0x1bc(r26)
/* 8141D7E0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8141D7E4 | 7C 00 18 40 */	cmplw r0, r3
/* 8141D7E8 | 41 80 00 34 */	blt .L_8141D81C
/* 8141D7EC | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D7F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D7F4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8141D7F8 | 7D 89 03 A6 */	mtctr r12
/* 8141D7FC | 4E 80 04 21 */	bctrl
/* 8141D800 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D804 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8141D808 | 7D 89 03 A6 */	mtctr r12
/* 8141D80C | 4E 80 04 21 */	bctrl
/* 8141D810 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D814 | 40 82 00 08 */	bne .L_8141D81C
/* 8141D818 | 3A 60 00 00 */	li r19, 0x0
.L_8141D81C:
/* 8141D81C | 2C 14 00 00 */	cmpwi r20, 0x0
/* 8141D820 | 41 82 00 D0 */	beq .L_8141D8F0
/* 8141D824 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D828 | 7F 43 D3 78 */	mr r3, r26
/* 8141D82C | 38 80 00 09 */	li r4, 0x9
/* 8141D830 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D834 | 7D 89 03 A6 */	mtctr r12
/* 8141D838 | 4E 80 04 21 */	bctrl
/* 8141D83C | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D840 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D844 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D848 | 7D 89 03 A6 */	mtctr r12
/* 8141D84C | 4E 80 04 21 */	bctrl
/* 8141D850 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D854 | 38 80 00 0A */	li r4, 0xa
/* 8141D858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D85C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8141D860 | 7D 89 03 A6 */	mtctr r12
/* 8141D864 | 4E 80 04 21 */	bctrl
/* 8141D868 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D86C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D870 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D874 | 7D 89 03 A6 */	mtctr r12
/* 8141D878 | 4E 80 04 21 */	bctrl
/* 8141D87C | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141D880 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141D884 | 40 82 02 88 */	bne .L_8141DB0C
/* 8141D888 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141D88C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D890 | 40 82 00 0C */	bne .L_8141D89C
/* 8141D894 | 38 00 00 00 */	li r0, 0x0
/* 8141D898 | 48 00 00 38 */	b .L_8141D8D0
.L_8141D89C:
/* 8141D89C | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141D8A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141D8A4 | 41 82 00 28 */	beq .L_8141D8CC
/* 8141D8A8 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D8AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D8B0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141D8B4 | 7D 89 03 A6 */	mtctr r12
/* 8141D8B8 | 4E 80 04 21 */	bctrl
/* 8141D8BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D8C0 | 40 81 00 0C */	ble .L_8141D8CC
/* 8141D8C4 | 38 00 00 01 */	li r0, 0x1
/* 8141D8C8 | 48 00 00 08 */	b .L_8141D8D0
.L_8141D8CC:
/* 8141D8CC | 38 00 00 00 */	li r0, 0x0
.L_8141D8D0:
/* 8141D8D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D8D4 | 41 82 02 38 */	beq .L_8141DB0C
/* 8141D8D8 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D8DC | 38 80 00 00 */	li r4, 0x0
/* 8141D8E0 | 48 01 75 F5 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8141D8E4 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D8E8 | 48 01 6B DD */	bl update__Q39textinput8tistring6WithZiFv
/* 8141D8EC | 48 00 02 20 */	b .L_8141DB0C
.L_8141D8F0:
/* 8141D8F0 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8141D8F4 | 41 82 10 DC */	beq .L_8141E9D0
/* 8141D8F8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D8FC | 7F 43 D3 78 */	mr r3, r26
/* 8141D900 | 38 80 00 08 */	li r4, 0x8
/* 8141D904 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D908 | 7D 89 03 A6 */	mtctr r12
/* 8141D90C | 4E 80 04 21 */	bctrl
/* 8141D910 | 48 00 10 C0 */	b .L_8141E9D0
/* 8141D914 | 48 00 10 BC */	b .L_8141E9D0
.L_8141D918:
/* 8141D918 | 80 1A 01 6C */	lwz r0, 0x16c(r26)
/* 8141D91C | 7C 03 00 40 */	cmplw r3, r0
/* 8141D920 | 40 82 01 6C */	bne .L_8141DA8C
/* 8141D924 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D928 | 7F 43 D3 78 */	mr r3, r26
/* 8141D92C | 38 80 00 09 */	li r4, 0x9
/* 8141D930 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141D934 | 7D 89 03 A6 */	mtctr r12
/* 8141D938 | 4E 80 04 21 */	bctrl
/* 8141D93C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D940 | 7F 43 D3 78 */	mr r3, r26
/* 8141D944 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141D948 | 7D 89 03 A6 */	mtctr r12
/* 8141D94C | 4E 80 04 21 */	bctrl
/* 8141D950 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8141D954 | 41 82 00 20 */	beq .L_8141D974
/* 8141D958 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141D95C | 7F 43 D3 78 */	mr r3, r26
/* 8141D960 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141D964 | 7D 89 03 A6 */	mtctr r12
/* 8141D968 | 4E 80 04 21 */	bctrl
/* 8141D96C | 2C 03 00 0C */	cmpwi r3, 0xc
/* 8141D970 | 40 82 00 10 */	bne .L_8141D980
.L_8141D974:
/* 8141D974 | 7F 43 D3 78 */	mr r3, r26
/* 8141D978 | 48 00 35 B9 */	bl confirmInput___Q39textinput9inputform4BaseFv
/* 8141D97C | 48 00 01 90 */	b .L_8141DB0C
.L_8141D980:
/* 8141D980 | 88 7A 01 F5 */	lbz r3, 0x1f5(r26)
/* 8141D984 | 88 1A 01 F4 */	lbz r0, 0x1f4(r26)
/* 8141D988 | 7C 60 03 79 */	or. r0, r3, r0
/* 8141D98C | 40 82 00 F4 */	bne .L_8141DA80
/* 8141D990 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141D994 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D998 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8141D99C | 7D 89 03 A6 */	mtctr r12
/* 8141D9A0 | 4E 80 04 21 */	bctrl
/* 8141D9A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D9A8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141D9AC | 7D 89 03 A6 */	mtctr r12
/* 8141D9B0 | 4E 80 04 21 */	bctrl
/* 8141D9B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141D9B8 | 41 82 00 C8 */	beq .L_8141DA80
/* 8141D9BC | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141D9C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141D9C4 | 41 82 01 48 */	beq .L_8141DB0C
/* 8141D9C8 | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141D9CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141D9D0 | 41 82 01 3C */	beq .L_8141DB0C
/* 8141D9D4 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141D9D8 | 38 81 00 90 */	addi r4, r1, 0x90
/* 8141D9DC | 38 A0 00 40 */	li r5, 0x40
/* 8141D9E0 | 48 01 67 D9 */	bl getCurrentInput__Q39textinput8tistring6WithZiFPwUl
/* 8141D9E4 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D9E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141D9EC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141D9F0 | 7D 89 03 A6 */	mtctr r12
/* 8141D9F4 | 4E 80 04 21 */	bctrl
/* 8141D9F8 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141D9FC | 38 81 00 90 */	addi r4, r1, 0x90
/* 8141DA00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DA04 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8141DA08 | 7D 89 03 A6 */	mtctr r12
/* 8141DA0C | 4E 80 04 21 */	bctrl
/* 8141DA10 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141DA14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DA18 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141DA1C | 7D 89 03 A6 */	mtctr r12
/* 8141DA20 | 4E 80 04 21 */	bctrl
/* 8141DA24 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141DA28 | 48 01 63 65 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 8141DA2C | 38 00 00 00 */	li r0, 0x0
/* 8141DA30 | 7F 43 D3 78 */	mr r3, r26
/* 8141DA34 | 98 1A 01 F4 */	stb r0, 0x1f4(r26)
/* 8141DA38 | 38 80 00 00 */	li r4, 0x0
/* 8141DA3C | 48 00 44 B9 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141DA40 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141DA44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DA48 | 41 82 00 C4 */	beq .L_8141DB0C
/* 8141DA4C | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141DA50 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141DA54 | 40 82 00 B8 */	bne .L_8141DB0C
/* 8141DA58 | 38 80 00 00 */	li r4, 0x0
/* 8141DA5C | 48 01 74 79 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8141DA60 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141DA64 | 48 01 6A 61 */	bl update__Q39textinput8tistring6WithZiFv
/* 8141DA68 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DA6C | 7F 43 D3 78 */	mr r3, r26
/* 8141DA70 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141DA74 | 7D 89 03 A6 */	mtctr r12
/* 8141DA78 | 4E 80 04 21 */	bctrl
/* 8141DA7C | 48 00 00 90 */	b .L_8141DB0C
.L_8141DA80:
/* 8141DA80 | 7F 43 D3 78 */	mr r3, r26
/* 8141DA84 | 48 00 34 AD */	bl confirmInput___Q39textinput9inputform4BaseFv
/* 8141DA88 | 48 00 00 84 */	b .L_8141DB0C
.L_8141DA8C:
/* 8141DA8C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DA90 | 7F 43 D3 78 */	mr r3, r26
/* 8141DA94 | 38 80 00 09 */	li r4, 0x9
/* 8141DA98 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141DA9C | 7D 89 03 A6 */	mtctr r12
/* 8141DAA0 | 4E 80 04 21 */	bctrl
/* 8141DAA4 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141DAA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DAAC | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141DAB0 | 7D 89 03 A6 */	mtctr r12
/* 8141DAB4 | 4E 80 04 21 */	bctrl
/* 8141DAB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DABC | 41 82 00 48 */	beq .L_8141DB04
/* 8141DAC0 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141DAC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DAC8 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 8141DACC | 7D 89 03 A6 */	mtctr r12
/* 8141DAD0 | 4E 80 04 21 */	bctrl
/* 8141DAD4 | 7C 64 07 34 */	extsh r4, r3
/* 8141DAD8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141DADC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DAE0 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8141DAE4 | 7D 89 03 A6 */	mtctr r12
/* 8141DAE8 | 4E 80 04 21 */	bctrl
/* 8141DAEC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DAF0 | 7F 43 D3 78 */	mr r3, r26
/* 8141DAF4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141DAF8 | 7D 89 03 A6 */	mtctr r12
/* 8141DAFC | 4E 80 04 21 */	bctrl
/* 8141DB00 | 48 00 00 0C */	b .L_8141DB0C
.L_8141DB04:
/* 8141DB04 | 7F 43 D3 78 */	mr r3, r26
/* 8141DB08 | 48 00 34 29 */	bl confirmInput___Q39textinput9inputform4BaseFv
.L_8141DB0C:
/* 8141DB0C | 38 00 00 01 */	li r0, 0x1
/* 8141DB10 | 7F 43 D3 78 */	mr r3, r26
/* 8141DB14 | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141DB18 | 38 80 00 01 */	li r4, 0x1
/* 8141DB1C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DB20 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8141DB24 | 7D 89 03 A6 */	mtctr r12
/* 8141DB28 | 4E 80 04 21 */	bctrl
/* 8141DB2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DB30 | 41 82 0E 8C */	beq .L_8141E9BC
/* 8141DB34 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DB38 | 7F 43 D3 78 */	mr r3, r26
/* 8141DB3C | 38 80 00 21 */	li r4, 0x21
/* 8141DB40 | 38 A0 00 00 */	li r5, 0x0
/* 8141DB44 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141DB48 | 7D 89 03 A6 */	mtctr r12
/* 8141DB4C | 4E 80 04 21 */	bctrl
/* 8141DB50 | 48 00 0E 6C */	b .L_8141E9BC
.L_8141DB54:
/* 8141DB54 | 7F 43 D3 78 */	mr r3, r26
/* 8141DB58 | 48 00 33 D9 */	bl confirmInput___Q39textinput9inputform4BaseFv
/* 8141DB5C | 38 00 00 01 */	li r0, 0x1
/* 8141DB60 | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141DB64 | 48 00 0E 58 */	b .L_8141E9BC
.L_8141DB68:
/* 8141DB68 | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141DB6C | 2C 00 00 0B */	cmpwi r0, 0xb
/* 8141DB70 | 40 82 00 18 */	bne .L_8141DB88
/* 8141DB74 | 80 1A 01 6C */	lwz r0, 0x16c(r26)
/* 8141DB78 | 7C 03 00 40 */	cmplw r3, r0
/* 8141DB7C | 40 82 00 0C */	bne .L_8141DB88
/* 8141DB80 | 38 00 00 00 */	li r0, 0x0
/* 8141DB84 | 98 1A 01 F4 */	stb r0, 0x1f4(r26)
.L_8141DB88:
/* 8141DB88 | A0 9B 00 00 */	lhz r4, 0x0(r27)
/* 8141DB8C | 7F 43 D3 78 */	mr r3, r26
/* 8141DB90 | 48 00 36 1D */	bl inputInputting___Q39textinput9inputform4BaseFw
/* 8141DB94 | 48 00 0E 28 */	b .L_8141E9BC
.L_8141DB98:
/* 8141DB98 | A0 9B 00 00 */	lhz r4, 0x0(r27)
/* 8141DB9C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8141DBA0 | 41 82 0E 30 */	beq .L_8141E9D0
/* 8141DBA4 | 88 BB 00 04 */	lbz r5, 0x4(r27)
/* 8141DBA8 | 7F 43 D3 78 */	mr r3, r26
/* 8141DBAC | A0 DB 00 02 */	lhz r6, 0x2(r27)
/* 8141DBB0 | 88 FB 00 06 */	lbz r7, 0x6(r27)
/* 8141DBB4 | 81 1B 00 08 */	lwz r8, 0x8(r27)
/* 8141DBB8 | 48 00 38 A1 */	bl confirmInputting___Q39textinput9inputform4BaseFwbUsbPv
/* 8141DBBC | 88 1B 00 07 */	lbz r0, 0x7(r27)
/* 8141DBC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141DBC4 | 40 82 00 44 */	bne .L_8141DC08
/* 8141DBC8 | 88 1B 00 06 */	lbz r0, 0x6(r27)
/* 8141DBCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141DBD0 | 41 82 00 20 */	beq .L_8141DBF0
/* 8141DBD4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DBD8 | 7F 43 D3 78 */	mr r3, r26
/* 8141DBDC | 38 80 00 09 */	li r4, 0x9
/* 8141DBE0 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141DBE4 | 7D 89 03 A6 */	mtctr r12
/* 8141DBE8 | 4E 80 04 21 */	bctrl
/* 8141DBEC | 48 00 00 1C */	b .L_8141DC08
.L_8141DBF0:
/* 8141DBF0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DBF4 | 7F 43 D3 78 */	mr r3, r26
/* 8141DBF8 | 38 80 00 0A */	li r4, 0xa
/* 8141DBFC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141DC00 | 7D 89 03 A6 */	mtctr r12
/* 8141DC04 | 4E 80 04 21 */	bctrl
.L_8141DC08:
/* 8141DC08 | 38 00 00 01 */	li r0, 0x1
/* 8141DC0C | 7F 43 D3 78 */	mr r3, r26
/* 8141DC10 | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141DC14 | 38 80 00 01 */	li r4, 0x1
/* 8141DC18 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DC1C | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8141DC20 | 7D 89 03 A6 */	mtctr r12
/* 8141DC24 | 4E 80 04 21 */	bctrl
/* 8141DC28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DC2C | 41 82 0D 90 */	beq .L_8141E9BC
/* 8141DC30 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DC34 | 7F 43 D3 78 */	mr r3, r26
/* 8141DC38 | 38 80 00 21 */	li r4, 0x21
/* 8141DC3C | 38 A0 00 00 */	li r5, 0x0
/* 8141DC40 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141DC44 | 7D 89 03 A6 */	mtctr r12
/* 8141DC48 | 4E 80 04 21 */	bctrl
/* 8141DC4C | 48 00 0D 70 */	b .L_8141E9BC
.L_8141DC50:
/* 8141DC50 | 7C 03 28 40 */	cmplw r3, r5
/* 8141DC54 | 40 82 00 1C */	bne .L_8141DC70
/* 8141DC58 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DC5C | 7F 43 D3 78 */	mr r3, r26
/* 8141DC60 | 81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8141DC64 | 7D 89 03 A6 */	mtctr r12
/* 8141DC68 | 4E 80 04 21 */	bctrl
/* 8141DC6C | 48 00 0D 64 */	b .L_8141E9D0
.L_8141DC70:
/* 8141DC70 | 7F 43 D3 78 */	mr r3, r26
/* 8141DC74 | 38 80 00 1F */	li r4, 0x1f
/* 8141DC78 | 38 A0 00 00 */	li r5, 0x0
/* 8141DC7C | 48 00 44 71 */	bl onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl
/* 8141DC80 | 48 00 0D 50 */	b .L_8141E9D0
.L_8141DC84:
/* 8141DC84 | 7C 03 28 40 */	cmplw r3, r5
/* 8141DC88 | 40 82 00 1C */	bne .L_8141DCA4
/* 8141DC8C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DC90 | 7F 43 D3 78 */	mr r3, r26
/* 8141DC94 | 81 8C 01 A0 */	lwz r12, 0x1a0(r12)
/* 8141DC98 | 7D 89 03 A6 */	mtctr r12
/* 8141DC9C | 4E 80 04 21 */	bctrl
/* 8141DCA0 | 48 00 0D 30 */	b .L_8141E9D0
.L_8141DCA4:
/* 8141DCA4 | 7F 43 D3 78 */	mr r3, r26
/* 8141DCA8 | 38 80 00 20 */	li r4, 0x20
/* 8141DCAC | 38 A0 00 00 */	li r5, 0x0
/* 8141DCB0 | 48 00 44 3D */	bl onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl
/* 8141DCB4 | 48 00 0D 1C */	b .L_8141E9D0
.L_8141DCB8:
/* 8141DCB8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DCBC | 7F 43 D3 78 */	mr r3, r26
/* 8141DCC0 | 81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8141DCC4 | 7D 89 03 A6 */	mtctr r12
/* 8141DCC8 | 4E 80 04 21 */	bctrl
/* 8141DCCC | 48 00 0D 04 */	b .L_8141E9D0
.L_8141DCD0:
/* 8141DCD0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DCD4 | 7F 43 D3 78 */	mr r3, r26
/* 8141DCD8 | 81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8141DCDC | 7D 89 03 A6 */	mtctr r12
/* 8141DCE0 | 4E 80 04 21 */	bctrl
/* 8141DCE4 | 48 00 0C EC */	b .L_8141E9D0
.L_8141DCE8:
/* 8141DCE8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DCEC | 7F 43 D3 78 */	mr r3, r26
/* 8141DCF0 | 7F 64 DB 78 */	mr r4, r27
/* 8141DCF4 | 81 8C 01 68 */	lwz r12, 0x168(r12)
/* 8141DCF8 | 7D 89 03 A6 */	mtctr r12
/* 8141DCFC | 4E 80 04 21 */	bctrl
/* 8141DD00 | 48 00 0C D0 */	b .L_8141E9D0
.L_8141DD04:
/* 8141DD04 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8141DD08 | 41 82 01 04 */	beq .L_8141DE0C
/* 8141DD0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DD10 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8141DD14 | 7D 89 03 A6 */	mtctr r12
/* 8141DD18 | 4E 80 04 21 */	bctrl
/* 8141DD1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DD20 | 41 82 00 EC */	beq .L_8141DE0C
/* 8141DD24 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DD28 | 7F 43 D3 78 */	mr r3, r26
/* 8141DD2C | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 8141DD30 | 7D 89 03 A6 */	mtctr r12
/* 8141DD34 | 4E 80 04 21 */	bctrl
/* 8141DD38 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 8141DD3C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DD40 | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 8141DD44 | C0 7B 00 00 */	lfs f3, 0x0(r27)
/* 8141DD48 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8141DD4C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8141DD50 | 7F 43 D3 78 */	mr r3, r26
/* 8141DD54 | C0 5B 00 04 */	lfs f2, 0x4(r27)
/* 8141DD58 | EC 23 08 28 */	fsubs f1, f3, f1
/* 8141DD5C | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8141DD60 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 8141DD64 | EC 42 00 28 */	fsubs f2, f2, f0
/* 8141DD68 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 8141DD6C | 7D 89 03 A6 */	mtctr r12
/* 8141DD70 | 4E 80 04 21 */	bctrl
/* 8141DD74 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141DD78 | 7C 64 1B 78 */	mr r4, r3
/* 8141DD7C | 7F A3 EB 78 */	mr r3, r29
/* 8141DD80 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141DD84 | 7D 89 03 A6 */	mtctr r12
/* 8141DD88 | 4E 80 04 21 */	bctrl
/* 8141DD8C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DD90 | 7F 43 D3 78 */	mr r3, r26
/* 8141DD94 | 38 80 00 05 */	li r4, 0x5
/* 8141DD98 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141DD9C | 7D 89 03 A6 */	mtctr r12
/* 8141DDA0 | 4E 80 04 21 */	bctrl
/* 8141DDA4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DDA8 | 7F 43 D3 78 */	mr r3, r26
/* 8141DDAC | 38 80 00 0C */	li r4, 0xc
/* 8141DDB0 | 38 A0 00 00 */	li r5, 0x0
/* 8141DDB4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141DDB8 | 7D 89 03 A6 */	mtctr r12
/* 8141DDBC | 4E 80 04 21 */	bctrl
/* 8141DDC0 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141DDC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DDC8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141DDCC | 7D 89 03 A6 */	mtctr r12
/* 8141DDD0 | 4E 80 04 21 */	bctrl
/* 8141DDD4 | 38 00 00 00 */	li r0, 0x0
/* 8141DDD8 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 8141DDDC | 98 03 00 16 */	stb r0, 0x16(r3)
/* 8141DDE0 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141DDE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DDE8 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8141DDEC | 7D 89 03 A6 */	mtctr r12
/* 8141DDF0 | 4E 80 04 21 */	bctrl
/* 8141DDF4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DDF8 | 7F 43 D3 78 */	mr r3, r26
/* 8141DDFC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141DE00 | 7D 89 03 A6 */	mtctr r12
/* 8141DE04 | 4E 80 04 21 */	bctrl
/* 8141DE08 | 48 00 0B C8 */	b .L_8141E9D0
.L_8141DE0C:
/* 8141DE0C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DE10 | 7F 43 D3 78 */	mr r3, r26
/* 8141DE14 | 38 80 00 09 */	li r4, 0x9
/* 8141DE18 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141DE1C | 7D 89 03 A6 */	mtctr r12
/* 8141DE20 | 4E 80 04 21 */	bctrl
/* 8141DE24 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DE28 | 7F 43 D3 78 */	mr r3, r26
/* 8141DE2C | 38 80 00 06 */	li r4, 0x6
/* 8141DE30 | 38 A0 00 00 */	li r5, 0x0
/* 8141DE34 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141DE38 | 7D 89 03 A6 */	mtctr r12
/* 8141DE3C | 4E 80 04 21 */	bctrl
/* 8141DE40 | 48 00 0B 90 */	b .L_8141E9D0
.L_8141DE44:
/* 8141DE44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DE48 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8141DE4C | 7D 89 03 A6 */	mtctr r12
/* 8141DE50 | 4E 80 04 21 */	bctrl
/* 8141DE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DE58 | 41 82 0B 78 */	beq .L_8141E9D0
/* 8141DE5C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DE60 | 7F 43 D3 78 */	mr r3, r26
/* 8141DE64 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 8141DE68 | 7D 89 03 A6 */	mtctr r12
/* 8141DE6C | 4E 80 04 21 */	bctrl
/* 8141DE70 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 8141DE74 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DE78 | 90 81 00 34 */	stw r4, 0x34(r1)
/* 8141DE7C | C0 7B 00 00 */	lfs f3, 0x0(r27)
/* 8141DE80 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8141DE84 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8141DE88 | 7F 43 D3 78 */	mr r3, r26
/* 8141DE8C | C0 5B 00 04 */	lfs f2, 0x4(r27)
/* 8141DE90 | EC 23 08 28 */	fsubs f1, f3, f1
/* 8141DE94 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8141DE98 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 8141DE9C | EC 42 00 28 */	fsubs f2, f2, f0
/* 8141DEA0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8141DEA4 | 7D 89 03 A6 */	mtctr r12
/* 8141DEA8 | 4E 80 04 21 */	bctrl
/* 8141DEAC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141DEB0 | 7C 64 1B 78 */	mr r4, r3
/* 8141DEB4 | 7F A3 EB 78 */	mr r3, r29
/* 8141DEB8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141DEBC | 7D 89 03 A6 */	mtctr r12
/* 8141DEC0 | 4E 80 04 21 */	bctrl
/* 8141DEC4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DEC8 | 7F 43 D3 78 */	mr r3, r26
/* 8141DECC | 38 80 00 0D */	li r4, 0xd
/* 8141DED0 | 38 A0 00 00 */	li r5, 0x0
/* 8141DED4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141DED8 | 7D 89 03 A6 */	mtctr r12
/* 8141DEDC | 4E 80 04 21 */	bctrl
/* 8141DEE0 | 48 00 0A F0 */	b .L_8141E9D0
.L_8141DEE4:
/* 8141DEE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DEE8 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8141DEEC | 7D 89 03 A6 */	mtctr r12
/* 8141DEF0 | 4E 80 04 21 */	bctrl
/* 8141DEF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141DEF8 | 41 82 0A D8 */	beq .L_8141E9D0
/* 8141DEFC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DF00 | 7F 43 D3 78 */	mr r3, r26
/* 8141DF04 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 8141DF08 | 7D 89 03 A6 */	mtctr r12
/* 8141DF0C | 4E 80 04 21 */	bctrl
/* 8141DF10 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141DF14 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141DF18 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8141DF1C | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8141DF20 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 8141DF24 | 7F A3 EB 78 */	mr r3, r29
/* 8141DF28 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8141DF2C | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 8141DF30 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8141DF34 | 7D 89 03 A6 */	mtctr r12
/* 8141DF38 | 4E 80 04 21 */	bctrl
/* 8141DF3C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DF40 | 7F 43 D3 78 */	mr r3, r26
/* 8141DF44 | C0 7B 00 00 */	lfs f3, 0x0(r27)
/* 8141DF48 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8141DF4C | C0 5B 00 04 */	lfs f2, 0x4(r27)
/* 8141DF50 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8141DF54 | EC 23 08 28 */	fsubs f1, f3, f1
/* 8141DF58 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 8141DF5C | EC 42 00 28 */	fsubs f2, f2, f0
/* 8141DF60 | 7D 89 03 A6 */	mtctr r12
/* 8141DF64 | 4E 80 04 21 */	bctrl
/* 8141DF68 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141DF6C | 7C 73 1B 78 */	mr r19, r3
/* 8141DF70 | 7F A3 EB 78 */	mr r3, r29
/* 8141DF74 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141DF78 | 7E 64 9B 78 */	mr r4, r19
/* 8141DF7C | 7D 89 03 A6 */	mtctr r12
/* 8141DF80 | 4E 80 04 21 */	bctrl
/* 8141DF84 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8141DF88 | 7C 00 98 40 */	cmplw r0, r19
/* 8141DF8C | 41 82 00 1C */	beq .L_8141DFA8
/* 8141DF90 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DF94 | 7F 43 D3 78 */	mr r3, r26
/* 8141DF98 | 38 80 00 05 */	li r4, 0x5
/* 8141DF9C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141DFA0 | 7D 89 03 A6 */	mtctr r12
/* 8141DFA4 | 4E 80 04 21 */	bctrl
.L_8141DFA8:
/* 8141DFA8 | 38 00 00 01 */	li r0, 0x1
/* 8141DFAC | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141DFB0 | 48 00 0A 20 */	b .L_8141E9D0
.L_8141DFB4:
/* 8141DFB4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8141DFB8 | 41 82 0A 04 */	beq .L_8141E9BC
/* 8141DFBC | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8141DFC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141DFC4 | 41 82 09 F8 */	beq .L_8141E9BC
/* 8141DFC8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141DFCC | 38 80 00 00 */	li r4, 0x0
/* 8141DFD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141DFD4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141DFD8 | 7D 89 03 A6 */	mtctr r12
/* 8141DFDC | 4E 80 04 21 */	bctrl
/* 8141DFE0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141DFE4 | 7F 43 D3 78 */	mr r3, r26
/* 8141DFE8 | 38 80 00 06 */	li r4, 0x6
/* 8141DFEC | 38 A0 00 00 */	li r5, 0x0
/* 8141DFF0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141DFF4 | 7D 89 03 A6 */	mtctr r12
/* 8141DFF8 | 4E 80 04 21 */	bctrl
/* 8141DFFC | 38 7A 01 18 */	addi r3, r26, 0x118
/* 8141E000 | 48 00 A1 51 */	bl resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8141E004 | 38 7A 01 18 */	addi r3, r26, 0x118
/* 8141E008 | 48 00 A1 89 */	bl updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8141E00C | 48 00 09 B0 */	b .L_8141E9BC
.L_8141E010:
/* 8141E010 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141E014 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E018 | 41 82 01 44 */	beq .L_8141E15C
/* 8141E01C | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141E020 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141E024 | 40 82 00 AC */	bne .L_8141E0D0
/* 8141E028 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E02C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E030 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141E034 | 7D 89 03 A6 */	mtctr r12
/* 8141E038 | 4E 80 04 21 */	bctrl
/* 8141E03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141E040 | 41 82 00 20 */	beq .L_8141E060
/* 8141E044 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E048 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8141E04C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E050 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8141E054 | 7D 89 03 A6 */	mtctr r12
/* 8141E058 | 4E 80 04 21 */	bctrl
/* 8141E05C | 48 00 01 00 */	b .L_8141E15C
.L_8141E060:
/* 8141E060 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E064 | 38 A1 01 90 */	addi r5, r1, 0x190
/* 8141E068 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8141E06C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E070 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8141E074 | 7D 89 03 A6 */	mtctr r12
/* 8141E078 | 4E 80 04 21 */	bctrl
/* 8141E07C | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E084 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E088 | 7D 89 03 A6 */	mtctr r12
/* 8141E08C | 4E 80 04 21 */	bctrl
/* 8141E090 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E094 | 38 81 01 90 */	addi r4, r1, 0x190
/* 8141E098 | 38 A0 00 00 */	li r5, 0x0
/* 8141E09C | 48 01 4F 19 */	bl inputString__Q39textinput8tistring9DecolatedFPCwQ49textinput8tistring9Decolated13TranslateMode
/* 8141E0A0 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E0A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E0A8 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E0AC | 7D 89 03 A6 */	mtctr r12
/* 8141E0B0 | 4E 80 04 21 */	bctrl
/* 8141E0B4 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E0B8 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8141E0BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E0C0 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8141E0C4 | 7D 89 03 A6 */	mtctr r12
/* 8141E0C8 | 4E 80 04 21 */	bctrl
/* 8141E0CC | 48 00 00 90 */	b .L_8141E15C
.L_8141E0D0:
/* 8141E0D0 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E0D4 | 38 A1 01 10 */	addi r5, r1, 0x110
/* 8141E0D8 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8141E0DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E0E0 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141E0E4 | 7D 89 03 A6 */	mtctr r12
/* 8141E0E8 | 4E 80 04 21 */	bctrl
/* 8141E0EC | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E0F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E0F4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E0F8 | 7D 89 03 A6 */	mtctr r12
/* 8141E0FC | 4E 80 04 21 */	bctrl
/* 8141E100 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E104 | 38 81 01 10 */	addi r4, r1, 0x110
/* 8141E108 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E10C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8141E110 | 7D 89 03 A6 */	mtctr r12
/* 8141E114 | 4E 80 04 21 */	bctrl
/* 8141E118 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E11C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E120 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E124 | 7D 89 03 A6 */	mtctr r12
/* 8141E128 | 4E 80 04 21 */	bctrl
/* 8141E12C | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E130 | 48 01 5C 5D */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 8141E134 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141E138 | 38 60 00 00 */	li r3, 0x0
/* 8141E13C | 98 7A 01 F4 */	stb r3, 0x1f4(r26)
/* 8141E140 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141E144 | 40 82 00 18 */	bne .L_8141E15C
/* 8141E148 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E14C | 38 81 01 10 */	addi r4, r1, 0x110
/* 8141E150 | 48 01 6D 85 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8141E154 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E158 | 48 01 63 6D */	bl update__Q39textinput8tistring6WithZiFv
.L_8141E15C:
/* 8141E15C | 38 00 00 01 */	li r0, 0x1
/* 8141E160 | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141E164 | 48 00 08 58 */	b .L_8141E9BC
.L_8141E168:
/* 8141E168 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141E16C | 82 9B 00 00 */	lwz r20, 0x0(r27)
/* 8141E170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E174 | 41 82 00 10 */	beq .L_8141E184
/* 8141E178 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141E17C | 41 82 00 08 */	beq .L_8141E184
/* 8141E180 | 3A 80 00 00 */	li r20, 0x0
.L_8141E184:
/* 8141E184 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141E188 | 7E 93 A3 78 */	mr r19, r20
/* 8141E18C | 40 82 00 14 */	bne .L_8141E1A0
/* 8141E190 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 8141E194 | 41 82 00 18 */	beq .L_8141E1AC
/* 8141E198 | 3A 60 00 03 */	li r19, 0x3
/* 8141E19C | 48 00 00 10 */	b .L_8141E1AC
.L_8141E1A0:
/* 8141E1A0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141E1A4 | 40 82 00 08 */	bne .L_8141E1AC
/* 8141E1A8 | 3A 60 00 00 */	li r19, 0x0
.L_8141E1AC:
/* 8141E1AC | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 8141E1B0 | 7C A3 2B 78 */	mr r3, r5
/* 8141E1B4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E1B8 | 7D 89 03 A6 */	mtctr r12
/* 8141E1BC | 4E 80 04 21 */	bctrl
/* 8141E1C0 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E1C4 | 7E 64 9B 78 */	mr r4, r19
/* 8141E1C8 | 48 01 56 E5 */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
/* 8141E1CC | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E1D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E1D4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E1D8 | 7D 89 03 A6 */	mtctr r12
/* 8141E1DC | 4E 80 04 21 */	bctrl
/* 8141E1E0 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E1E4 | 7E 84 A3 78 */	mr r4, r20
/* 8141E1E8 | 48 01 56 C5 */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
/* 8141E1EC | 48 00 07 D0 */	b .L_8141E9BC
.L_8141E1F0:
/* 8141E1F0 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E1F4 | 88 9B 00 00 */	lbz r4, 0x0(r27)
/* 8141E1F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E1FC | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8141E200 | 7D 89 03 A6 */	mtctr r12
/* 8141E204 | 4E 80 04 21 */	bctrl
/* 8141E208 | 48 00 07 B4 */	b .L_8141E9BC
.L_8141E20C:
/* 8141E20C | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E210 | 88 9B 00 00 */	lbz r4, 0x0(r27)
/* 8141E214 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E218 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8141E21C | 7D 89 03 A6 */	mtctr r12
/* 8141E220 | 4E 80 04 21 */	bctrl
/* 8141E224 | 48 00 07 98 */	b .L_8141E9BC
.L_8141E228:
/* 8141E228 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8141E22C | 7F 43 D3 78 */	mr r3, r26
/* 8141E230 | 48 00 61 21 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 8141E234 | 38 00 00 01 */	li r0, 0x1
/* 8141E238 | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141E23C | 48 00 07 94 */	b .L_8141E9D0
.L_8141E240:
/* 8141E240 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141E244 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E248 | 41 82 07 74 */	beq .L_8141E9BC
/* 8141E24C | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141E250 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141E254 | 40 82 00 20 */	bne .L_8141E274
/* 8141E258 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E25C | 38 80 FF FF */	li r4, -0x1
/* 8141E260 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E264 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E268 | 7D 89 03 A6 */	mtctr r12
/* 8141E26C | 4E 80 04 21 */	bctrl
/* 8141E270 | 48 00 00 2C */	b .L_8141E29C
.L_8141E274:
/* 8141E274 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 8141E278 | 40 82 00 24 */	bne .L_8141E29C
/* 8141E27C | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E280 | 38 80 FF FF */	li r4, -0x1
/* 8141E284 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E288 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8141E28C | 7D 89 03 A6 */	mtctr r12
/* 8141E290 | 4E 80 04 21 */	bctrl
/* 8141E294 | 38 00 00 00 */	li r0, 0x0
/* 8141E298 | 98 1A 01 F4 */	stb r0, 0x1f4(r26)
.L_8141E29C:
/* 8141E29C | 38 00 00 01 */	li r0, 0x1
/* 8141E2A0 | 90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8141E2A4 | 48 00 07 2C */	b .L_8141E9D0
.L_8141E2A8:
/* 8141E2A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E2AC | 81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8141E2B0 | 7D 89 03 A6 */	mtctr r12
/* 8141E2B4 | 4E 80 04 21 */	bctrl
/* 8141E2B8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E2BC | 7F 43 D3 78 */	mr r3, r26
/* 8141E2C0 | 38 80 00 0A */	li r4, 0xa
/* 8141E2C4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141E2C8 | 7D 89 03 A6 */	mtctr r12
/* 8141E2CC | 4E 80 04 21 */	bctrl
/* 8141E2D0 | 48 00 06 EC */	b .L_8141E9BC
.L_8141E2D4:
/* 8141E2D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E2D8 | 81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8141E2DC | 7D 89 03 A6 */	mtctr r12
/* 8141E2E0 | 4E 80 04 21 */	bctrl
/* 8141E2E4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E2E8 | 7F 43 D3 78 */	mr r3, r26
/* 8141E2EC | 38 80 00 0A */	li r4, 0xa
/* 8141E2F0 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141E2F4 | 7D 89 03 A6 */	mtctr r12
/* 8141E2F8 | 4E 80 04 21 */	bctrl
/* 8141E2FC | 48 00 06 C0 */	b .L_8141E9BC
.L_8141E300:
/* 8141E300 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E304 | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8141E308 | 7D 89 03 A6 */	mtctr r12
/* 8141E30C | 4E 80 04 21 */	bctrl
/* 8141E310 | 48 00 06 AC */	b .L_8141E9BC
.L_8141E314:
/* 8141E314 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E318 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8141E31C | 7D 89 03 A6 */	mtctr r12
/* 8141E320 | 4E 80 04 21 */	bctrl
/* 8141E324 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E328 | 7F 43 D3 78 */	mr r3, r26
/* 8141E32C | 38 80 00 0A */	li r4, 0xa
/* 8141E330 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141E334 | 7D 89 03 A6 */	mtctr r12
/* 8141E338 | 4E 80 04 21 */	bctrl
/* 8141E33C | 48 00 06 80 */	b .L_8141E9BC
.L_8141E340:
/* 8141E340 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8141E344 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141E348 | 90 7A 01 74 */	stw r3, 0x174(r26)
/* 8141E34C | 88 9B 00 04 */	lbz r4, 0x4(r27)
/* 8141E350 | 7C 64 00 D0 */	neg r3, r4
/* 8141E354 | 7C 63 23 78 */	or r3, r3, r4
/* 8141E358 | 54 63 0F FE */	srwi r3, r3, 31
/* 8141E35C | 7C 00 18 40 */	cmplw r0, r3
/* 8141E360 | 41 82 00 38 */	beq .L_8141E398
/* 8141E364 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141E368 | 98 7A 01 78 */	stb r3, 0x178(r26)
/* 8141E36C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141E370 | 40 82 00 28 */	bne .L_8141E398
/* 8141E374 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E378 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E37C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141E380 | 7D 89 03 A6 */	mtctr r12
/* 8141E384 | 4E 80 04 21 */	bctrl
/* 8141E388 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E38C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8141E390 | 7D 89 03 A6 */	mtctr r12
/* 8141E394 | 4E 80 04 21 */	bctrl
.L_8141E398:
/* 8141E398 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E39C | 80 9A 01 68 */	lwz r4, 0x168(r26)
/* 8141E3A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E3A4 | 82 63 00 24 */	lwz r19, 0x24(r3)
/* 8141E3A8 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8141E3AC | 82 84 00 24 */	lwz r20, 0x24(r4)
/* 8141E3B0 | 7D 89 03 A6 */	mtctr r12
/* 8141E3B4 | 4E 80 04 21 */	bctrl
/* 8141E3B8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E3BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E3C0 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8141E3C4 | 7D 89 03 A6 */	mtctr r12
/* 8141E3C8 | 4E 80 04 21 */	bctrl
/* 8141E3CC | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141E3D0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8141E3D4 | 40 82 00 14 */	bne .L_8141E3E8
/* 8141E3D8 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8141E3DC | 41 82 00 18 */	beq .L_8141E3F4
/* 8141E3E0 | 3A 60 00 03 */	li r19, 0x3
/* 8141E3E4 | 48 00 00 10 */	b .L_8141E3F4
.L_8141E3E8:
/* 8141E3E8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141E3EC | 40 82 00 08 */	bne .L_8141E3F4
/* 8141E3F0 | 3A 60 00 00 */	li r19, 0x0
.L_8141E3F4:
/* 8141E3F4 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E3F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E3FC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E400 | 7D 89 03 A6 */	mtctr r12
/* 8141E404 | 4E 80 04 21 */	bctrl
/* 8141E408 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E40C | 7E 64 9B 78 */	mr r4, r19
/* 8141E410 | 48 01 54 9D */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
/* 8141E414 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E41C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E420 | 7D 89 03 A6 */	mtctr r12
/* 8141E424 | 4E 80 04 21 */	bctrl
/* 8141E428 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E42C | 7E 84 A3 78 */	mr r4, r20
/* 8141E430 | 48 01 54 7D */	bl setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode
/* 8141E434 | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141E438 | 28 00 00 0C */	cmplwi r0, 0xc
/* 8141E43C | 41 81 02 84 */	bgt .L_8141E6C0
/* 8141E440 | 3C 60 81 66 */	lis r3, jumptable_8165CA58@ha
/* 8141E444 | 54 00 10 3A */	slwi r0, r0, 2
/* 8141E448 | 38 63 CA 58 */	addi r3, r3, jumptable_8165CA58@l
/* 8141E44C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8141E450 | 7C 69 03 A6 */	mtctr r3
/* 8141E454 | 4E 80 04 20 */	bctr
.L_8141E458:
/* 8141E458 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141E45C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E460 | 40 82 00 B4 */	bne .L_8141E514
/* 8141E464 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E468 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E46C | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8141E470 | 7D 89 03 A6 */	mtctr r12
/* 8141E474 | 4E 80 04 21 */	bctrl
/* 8141E478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141E47C | 41 82 05 54 */	beq .L_8141E9D0
/* 8141E480 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E484 | 7C 1D 18 40 */	cmplw r29, r3
/* 8141E488 | 40 82 05 48 */	bne .L_8141E9D0
/* 8141E48C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E490 | 38 80 00 00 */	li r4, 0x0
/* 8141E494 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141E498 | 7D 89 03 A6 */	mtctr r12
/* 8141E49C | 4E 80 04 21 */	bctrl
/* 8141E4A0 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E4A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E4A8 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8141E4AC | 7D 89 03 A6 */	mtctr r12
/* 8141E4B0 | 4E 80 04 21 */	bctrl
/* 8141E4B4 | 7C 73 1B 78 */	mr r19, r3
/* 8141E4B8 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E4BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E4C0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E4C4 | 7D 89 03 A6 */	mtctr r12
/* 8141E4C8 | 4E 80 04 21 */	bctrl
/* 8141E4CC | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E4D0 | 7E 64 9B 78 */	mr r4, r19
/* 8141E4D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E4D8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141E4DC | 7D 89 03 A6 */	mtctr r12
/* 8141E4E0 | 4E 80 04 21 */	bctrl
/* 8141E4E4 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E4E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E4EC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E4F0 | 7D 89 03 A6 */	mtctr r12
/* 8141E4F4 | 4E 80 04 21 */	bctrl
/* 8141E4F8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E4FC | 38 80 00 00 */	li r4, 0x0
/* 8141E500 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E504 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141E508 | 7D 89 03 A6 */	mtctr r12
/* 8141E50C | 4E 80 04 21 */	bctrl
/* 8141E510 | 48 00 04 C0 */	b .L_8141E9D0
.L_8141E514:
/* 8141E514 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E518 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E51C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8141E520 | 7D 89 03 A6 */	mtctr r12
/* 8141E524 | 4E 80 04 21 */	bctrl
/* 8141E528 | 38 00 00 00 */	li r0, 0x0
/* 8141E52C | 98 03 00 15 */	stb r0, 0x15(r3)
/* 8141E530 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 8141E534 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E538 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E53C | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8141E540 | 7D 89 03 A6 */	mtctr r12
/* 8141E544 | 4E 80 04 21 */	bctrl
/* 8141E548 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E54C | 7F 43 D3 78 */	mr r3, r26
/* 8141E550 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141E554 | 7D 89 03 A6 */	mtctr r12
/* 8141E558 | 4E 80 04 21 */	bctrl
/* 8141E55C | 48 00 04 74 */	b .L_8141E9D0
.L_8141E560:
/* 8141E560 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E564 | 38 80 00 00 */	li r4, 0x0
/* 8141E568 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E56C | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E570 | 7D 89 03 A6 */	mtctr r12
/* 8141E574 | 4E 80 04 21 */	bctrl
/* 8141E578 | 48 00 01 48 */	b .L_8141E6C0
.L_8141E57C:
/* 8141E57C | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E580 | 38 80 00 01 */	li r4, 0x1
/* 8141E584 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E588 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E58C | 7D 89 03 A6 */	mtctr r12
/* 8141E590 | 4E 80 04 21 */	bctrl
/* 8141E594 | 48 00 01 2C */	b .L_8141E6C0
.L_8141E598:
/* 8141E598 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E59C | 38 80 00 02 */	li r4, 0x2
/* 8141E5A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E5A4 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E5A8 | 7D 89 03 A6 */	mtctr r12
/* 8141E5AC | 4E 80 04 21 */	bctrl
/* 8141E5B0 | 48 00 01 10 */	b .L_8141E6C0
.L_8141E5B4:
/* 8141E5B4 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E5B8 | 38 80 00 03 */	li r4, 0x3
/* 8141E5BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E5C0 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E5C4 | 7D 89 03 A6 */	mtctr r12
/* 8141E5C8 | 4E 80 04 21 */	bctrl
/* 8141E5CC | 48 00 00 F4 */	b .L_8141E6C0
.L_8141E5D0:
/* 8141E5D0 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E5D4 | 38 80 00 04 */	li r4, 0x4
/* 8141E5D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E5DC | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E5E0 | 7D 89 03 A6 */	mtctr r12
/* 8141E5E4 | 4E 80 04 21 */	bctrl
/* 8141E5E8 | 48 00 00 D8 */	b .L_8141E6C0
.L_8141E5EC:
/* 8141E5EC | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E5F0 | 38 80 00 05 */	li r4, 0x5
/* 8141E5F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E5F8 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E5FC | 7D 89 03 A6 */	mtctr r12
/* 8141E600 | 4E 80 04 21 */	bctrl
/* 8141E604 | 48 00 00 BC */	b .L_8141E6C0
.L_8141E608:
/* 8141E608 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E60C | 38 80 00 06 */	li r4, 0x6
/* 8141E610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E614 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E618 | 7D 89 03 A6 */	mtctr r12
/* 8141E61C | 4E 80 04 21 */	bctrl
/* 8141E620 | 48 00 00 A0 */	b .L_8141E6C0
.L_8141E624:
/* 8141E624 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E628 | 38 80 00 07 */	li r4, 0x7
/* 8141E62C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E630 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E634 | 7D 89 03 A6 */	mtctr r12
/* 8141E638 | 4E 80 04 21 */	bctrl
/* 8141E63C | 48 00 00 84 */	b .L_8141E6C0
.L_8141E640:
/* 8141E640 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E644 | 38 80 00 08 */	li r4, 0x8
/* 8141E648 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E64C | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E650 | 7D 89 03 A6 */	mtctr r12
/* 8141E654 | 4E 80 04 21 */	bctrl
/* 8141E658 | 48 00 00 68 */	b .L_8141E6C0
.L_8141E65C:
/* 8141E65C | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E660 | 38 80 00 09 */	li r4, 0x9
/* 8141E664 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E668 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E66C | 7D 89 03 A6 */	mtctr r12
/* 8141E670 | 4E 80 04 21 */	bctrl
/* 8141E674 | 48 00 00 4C */	b .L_8141E6C0
.L_8141E678:
/* 8141E678 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E67C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E680 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8141E684 | 7D 89 03 A6 */	mtctr r12
/* 8141E688 | 4E 80 04 21 */	bctrl
/* 8141E68C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E690 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141E694 | 7D 89 03 A6 */	mtctr r12
/* 8141E698 | 4E 80 04 21 */	bctrl
/* 8141E69C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141E6A0 | 38 80 00 0B */	li r4, 0xb
/* 8141E6A4 | 41 82 00 08 */	beq .L_8141E6AC
/* 8141E6A8 | 38 80 00 0A */	li r4, 0xa
.L_8141E6AC:
/* 8141E6AC | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E6B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E6B4 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8141E6B8 | 7D 89 03 A6 */	mtctr r12
/* 8141E6BC | 4E 80 04 21 */	bctrl
.L_8141E6C0:
/* 8141E6C0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E6C4 | 7F 43 D3 78 */	mr r3, r26
/* 8141E6C8 | 38 80 00 1E */	li r4, 0x1e
/* 8141E6CC | 38 A0 00 00 */	li r5, 0x0
/* 8141E6D0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141E6D4 | 7D 89 03 A6 */	mtctr r12
/* 8141E6D8 | 4E 80 04 21 */	bctrl
/* 8141E6DC | 48 00 02 F4 */	b .L_8141E9D0
.L_8141E6E0:
/* 8141E6E0 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E6E4 | 38 80 00 00 */	li r4, 0x0
/* 8141E6E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E6EC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141E6F0 | 7D 89 03 A6 */	mtctr r12
/* 8141E6F4 | 4E 80 04 21 */	bctrl
/* 8141E6F8 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E6FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E700 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8141E704 | 7D 89 03 A6 */	mtctr r12
/* 8141E708 | 4E 80 04 21 */	bctrl
/* 8141E70C | 7C 73 1B 78 */	mr r19, r3
/* 8141E710 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E714 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E718 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E71C | 7D 89 03 A6 */	mtctr r12
/* 8141E720 | 4E 80 04 21 */	bctrl
/* 8141E724 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E728 | 7E 64 9B 78 */	mr r4, r19
/* 8141E72C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E730 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141E734 | 7D 89 03 A6 */	mtctr r12
/* 8141E738 | 4E 80 04 21 */	bctrl
/* 8141E73C | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E740 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E744 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141E748 | 7D 89 03 A6 */	mtctr r12
/* 8141E74C | 4E 80 04 21 */	bctrl
/* 8141E750 | 80 7A 01 68 */	lwz r3, 0x168(r26)
/* 8141E754 | 38 80 00 00 */	li r4, 0x0
/* 8141E758 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E75C | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141E760 | 7D 89 03 A6 */	mtctr r12
/* 8141E764 | 4E 80 04 21 */	bctrl
/* 8141E768 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E76C | 48 01 56 21 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 8141E770 | 38 00 00 00 */	li r0, 0x0
/* 8141E774 | 7F 43 D3 78 */	mr r3, r26
/* 8141E778 | 98 1A 01 F4 */	stb r0, 0x1f4(r26)
/* 8141E77C | 38 80 00 00 */	li r4, 0x0
/* 8141E780 | 48 00 37 75 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8141E784 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E788 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141E78C | 41 82 00 34 */	beq .L_8141E7C0
/* 8141E790 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141E794 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141E798 | 40 82 00 28 */	bne .L_8141E7C0
/* 8141E79C | 38 80 00 00 */	li r4, 0x0
/* 8141E7A0 | 48 01 67 35 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8141E7A4 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E7A8 | 48 01 5D 1D */	bl update__Q39textinput8tistring6WithZiFv
/* 8141E7AC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E7B0 | 7F 43 D3 78 */	mr r3, r26
/* 8141E7B4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141E7B8 | 7D 89 03 A6 */	mtctr r12
/* 8141E7BC | 4E 80 04 21 */	bctrl
.L_8141E7C0:
/* 8141E7C0 | 38 7A 01 18 */	addi r3, r26, 0x118
/* 8141E7C4 | 48 00 99 8D */	bl resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8141E7C8 | 48 00 02 08 */	b .L_8141E9D0
.L_8141E7CC:
/* 8141E7CC | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141E7D0 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 8141E7D4 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141E7D8 | 98 1B 00 04 */	stb r0, 0x4(r27)
/* 8141E7DC | 48 00 01 F4 */	b .L_8141E9D0
.L_8141E7E0:
/* 8141E7E0 | 88 1A 01 78 */	lbz r0, 0x178(r26)
/* 8141E7E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E7E8 | 40 82 00 0C */	bne .L_8141E7F4
/* 8141E7EC | 38 00 00 00 */	li r0, 0x0
/* 8141E7F0 | 48 00 00 38 */	b .L_8141E828
.L_8141E7F4:
/* 8141E7F4 | 80 1A 01 74 */	lwz r0, 0x174(r26)
/* 8141E7F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141E7FC | 41 82 00 28 */	beq .L_8141E824
/* 8141E800 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 8141E804 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E808 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141E80C | 7D 89 03 A6 */	mtctr r12
/* 8141E810 | 4E 80 04 21 */	bctrl
/* 8141E814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141E818 | 40 81 00 0C */	ble .L_8141E824
/* 8141E81C | 38 00 00 01 */	li r0, 0x1
/* 8141E820 | 48 00 00 08 */	b .L_8141E828
.L_8141E824:
/* 8141E824 | 38 00 00 00 */	li r0, 0x0
.L_8141E828:
/* 8141E828 | 98 1B 00 00 */	stb r0, 0x0(r27)
/* 8141E82C | 48 00 01 A4 */	b .L_8141E9D0
.L_8141E830:
/* 8141E830 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8141E834 | 7F 43 D3 78 */	mr r3, r26
/* 8141E838 | 80 BB 00 04 */	lwz r5, 0x4(r27)
/* 8141E83C | 48 00 38 B1 */	bl onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl
/* 8141E840 | 48 00 01 90 */	b .L_8141E9D0
.L_8141E844:
/* 8141E844 | 7F 43 D3 78 */	mr r3, r26
/* 8141E848 | 48 00 60 F5 */	bl notifyChangeMode__Q39textinput9inputform4BaseFv
/* 8141E84C | 48 00 01 84 */	b .L_8141E9D0
.L_8141E850:
/* 8141E850 | 7F 43 D3 78 */	mr r3, r26
/* 8141E854 | 48 00 52 91 */	bl onPressLeftHWKB__Q39textinput9inputform4BaseFv
/* 8141E858 | 48 00 01 78 */	b .L_8141E9D0
.L_8141E85C:
/* 8141E85C | 7F 43 D3 78 */	mr r3, r26
/* 8141E860 | 48 00 56 A5 */	bl onPressRightHWKB__Q39textinput9inputform4BaseFv
/* 8141E864 | 48 00 01 6C */	b .L_8141E9D0
.L_8141E868:
/* 8141E868 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E86C | 7F 43 D3 78 */	mr r3, r26
/* 8141E870 | 81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8141E874 | 7D 89 03 A6 */	mtctr r12
/* 8141E878 | 4E 80 04 21 */	bctrl
/* 8141E87C | 48 00 01 54 */	b .L_8141E9D0
.L_8141E880:
/* 8141E880 | 7F 43 D3 78 */	mr r3, r26
/* 8141E884 | 48 00 4E 29 */	bl onPressDownHWKB__Q39textinput9inputform4BaseFv
/* 8141E888 | 48 00 01 48 */	b .L_8141E9D0
.L_8141E88C:
/* 8141E88C | 38 7A 01 D8 */	addi r3, r26, 0x1d8
/* 8141E890 | 48 1D 62 75 */	bl fn_815F4B04
/* 8141E894 | 48 00 01 3C */	b .L_8141E9D0
.L_8141E898:
/* 8141E898 | 48 00 01 38 */	b .L_8141E9D0
.L_8141E89C:
/* 8141E89C | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 8141E8A0 | 7C A3 2B 78 */	mr r3, r5
/* 8141E8A4 | 82 7B 00 00 */	lwz r19, 0x0(r27)
/* 8141E8A8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8141E8AC | 7D 89 03 A6 */	mtctr r12
/* 8141E8B0 | 4E 80 04 21 */	bctrl
/* 8141E8B4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8141E8B8 | 7C 00 98 40 */	cmplw r0, r19
/* 8141E8BC | 40 81 00 18 */	ble .L_8141E8D4
/* 8141E8C0 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E8C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E8C8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8141E8CC | 7D 89 03 A6 */	mtctr r12
/* 8141E8D0 | 4E 80 04 21 */	bctrl
.L_8141E8D4:
/* 8141E8D4 | 80 7A 01 64 */	lwz r3, 0x164(r26)
/* 8141E8D8 | 56 64 04 3E */	clrlwi r4, r19, 16
/* 8141E8DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E8E0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8141E8E4 | 7D 89 03 A6 */	mtctr r12
/* 8141E8E8 | 4E 80 04 21 */	bctrl
/* 8141E8EC | 48 00 00 E4 */	b .L_8141E9D0
.L_8141E8F0:
/* 8141E8F0 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8141E8F4 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8141E8F8 | 40 82 00 C4 */	bne .L_8141E9BC
/* 8141E8FC | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E900 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E904 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141E908 | 7D 89 03 A6 */	mtctr r12
/* 8141E90C | 4E 80 04 21 */	bctrl
/* 8141E910 | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8141E914 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E918 | 40 82 00 A4 */	bne .L_8141E9BC
/* 8141E91C | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E920 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E924 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141E928 | 7D 89 03 A6 */	mtctr r12
/* 8141E92C | 4E 80 04 21 */	bctrl
/* 8141E930 | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 8141E934 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141E938 | 41 82 00 84 */	beq .L_8141E9BC
/* 8141E93C | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E940 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E944 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141E948 | 7D 89 03 A6 */	mtctr r12
/* 8141E94C | 4E 80 04 21 */	bctrl
/* 8141E950 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E954 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8141E958 | 7D 89 03 A6 */	mtctr r12
/* 8141E95C | 4E 80 04 21 */	bctrl
/* 8141E960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141E964 | 40 82 00 30 */	bne .L_8141E994
/* 8141E968 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E96C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E970 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141E974 | 7D 89 03 A6 */	mtctr r12
/* 8141E978 | 4E 80 04 21 */	bctrl
/* 8141E97C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E980 | 38 80 00 01 */	li r4, 0x1
/* 8141E984 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141E988 | 7D 89 03 A6 */	mtctr r12
/* 8141E98C | 4E 80 04 21 */	bctrl
/* 8141E990 | 48 00 00 2C */	b .L_8141E9BC
.L_8141E994:
/* 8141E994 | 80 7A 01 D4 */	lwz r3, 0x1d4(r26)
/* 8141E998 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E99C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8141E9A0 | 7D 89 03 A6 */	mtctr r12
/* 8141E9A4 | 4E 80 04 21 */	bctrl
/* 8141E9A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141E9AC | 38 80 00 00 */	li r4, 0x0
/* 8141E9B0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8141E9B4 | 7D 89 03 A6 */	mtctr r12
/* 8141E9B8 | 4E 80 04 21 */	bctrl
.L_8141E9BC:
/* 8141E9BC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8141E9C0 | 7F 43 D3 78 */	mr r3, r26
/* 8141E9C4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141E9C8 | 7D 89 03 A6 */	mtctr r12
/* 8141E9CC | 4E 80 04 21 */	bctrl
.L_8141E9D0:
/* 8141E9D0 | 39 61 02 50 */	addi r11, r1, 0x250
/* 8141E9D4 | 48 1D AB 19 */	bl _restgpr_19
/* 8141E9D8 | 80 01 02 54 */	lwz r0, 0x254(r1)
/* 8141E9DC | 7C 08 03 A6 */	mtlr r0
/* 8141E9E0 | 38 21 02 50 */	addi r1, r1, 0x250
/* 8141E9E4 | 4E 80 00 20 */	blr
.endfn onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x2E78 | 0x8141E9E8 | size: 0x4
# textinput::inputform::Base::onSE(textinput::sound::SE)
.fn onSE__Q39textinput9inputform4BaseFQ39textinput5sound2SE, global
/* 8141E9E8 | 4E 80 00 20 */	blr
.endfn onSE__Q39textinput9inputform4BaseFQ39textinput5sound2SE

# .text:0x2E7C | 0x8141E9EC | size: 0x8
# textinput::Manager::getCellPhoneKeyboard()
.fn getCellPhoneKeyboard__Q29textinput7ManagerFv, global
/* 8141E9EC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8141E9F0 | 4E 80 00 20 */	blr
.endfn getCellPhoneKeyboard__Q29textinput7ManagerFv

# .text:0x2E84 | 0x8141E9F4 | size: 0x8
# textinput::tistring::WithAtok::isConverting()
.fn isConverting__Q39textinput8tistring8WithAtokFv, global
/* 8141E9F4 | 38 60 00 00 */	li r3, 0x0
/* 8141E9F8 | 4E 80 00 20 */	blr
.endfn isConverting__Q39textinput8tistring8WithAtokFv

# .text:0x2E8C | 0x8141E9FC | size: 0x4
# textinput::tistring::WithAtok::backSpace()
.fn backSpace__Q39textinput8tistring8WithAtokFv, global
/* 8141E9FC | 4E 80 00 20 */	blr
.endfn backSpace__Q39textinput8tistring8WithAtokFv

# .text:0x2E90 | 0x8141EA00 | size: 0x4C
# textinput::tistring::Decolated::isKanaFix() const
.fn isKanaFix__Q39textinput8tistring9DecolatedCFv, global
/* 8141EA00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141EA04 | 7C 08 02 A6 */	mflr r0
/* 8141EA08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141EA0C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8141EA10 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8141EA14 | 40 82 00 0C */	bne .L_8141EA20
/* 8141EA18 | 38 60 00 01 */	li r3, 0x1
/* 8141EA1C | 48 00 00 20 */	b .L_8141EA3C
.L_8141EA20:
/* 8141EA20 | 38 80 00 00 */	li r4, 0x0
/* 8141EA24 | 38 A0 00 00 */	li r5, 0x0
/* 8141EA28 | 38 63 00 28 */	addi r3, r3, 0x28
/* 8141EA2C | 48 1D 62 B9 */	bl fn_815F4CE4
/* 8141EA30 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8141EA34 | 7C 00 00 34 */	cntlzw r0, r0
/* 8141EA38 | 54 03 D9 7E */	srwi r3, r0, 5
.L_8141EA3C:
/* 8141EA3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141EA40 | 7C 08 03 A6 */	mtlr r0
/* 8141EA44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141EA48 | 4E 80 00 20 */	blr
.endfn isKanaFix__Q39textinput8tistring9DecolatedCFv

# .text:0x2EDC | 0x8141EA4C | size: 0xC
# textinput::textdrawer::Base::getLine()
.fn getLine__Q39textinput10textdrawer4BaseFv, global
/* 8141EA4C | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 8141EA50 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8141EA54 | 4E 80 00 20 */	blr
.endfn getLine__Q39textinput10textdrawer4BaseFv

# .text:0x2EE8 | 0x8141EA58 | size: 0x8
# textinput::tistring::WithAtok::getSelectedConverting()
.fn getSelectedConverting__Q39textinput8tistring8WithAtokFv, global
/* 8141EA58 | 38 60 00 00 */	li r3, 0x0
/* 8141EA5C | 4E 80 00 20 */	blr
.endfn getSelectedConverting__Q39textinput8tistring8WithAtokFv

# .text:0x2EF0 | 0x8141EA60 | size: 0x4
# textinput::tistring::WithAtok::commitPredicted(int)
.fn commitPredicted__Q39textinput8tistring8WithAtokFi, global
/* 8141EA60 | 4E 80 00 20 */	blr
.endfn commitPredicted__Q39textinput8tistring8WithAtokFi

# .text:0x2EF4 | 0x8141EA64 | size: 0x8
# textinput::tistring::Decolated::isOnSustain()
.fn isOnSustain__Q39textinput8tistring9DecolatedFv, global
/* 8141EA64 | 88 63 00 20 */	lbz r3, 0x20(r3)
/* 8141EA68 | 4E 80 00 20 */	blr
.endfn isOnSustain__Q39textinput8tistring9DecolatedFv

# .text:0x2EFC | 0x8141EA6C | size: 0x4
# textinput::tistring::WithAtok::confirm(const wchar_t*)
.fn confirm__Q39textinput8tistring8WithAtokFPCw, global
/* 8141EA6C | 4E 80 00 20 */	blr
.endfn confirm__Q39textinput8tistring8WithAtokFPCw

# .text:0x2F00 | 0x8141EA70 | size: 0x4
# textinput::tistring::WithAtok::getPredicted(int, wchar_t*)
.fn getPredicted__Q39textinput8tistring8WithAtokFiPw, global
/* 8141EA70 | 4E 80 00 20 */	blr
.endfn getPredicted__Q39textinput8tistring8WithAtokFiPw

# .text:0x2F04 | 0x8141EA74 | size: 0x4
# textinput::tistring::WithAtok::changeKanaMode(bool)
.fn changeKanaMode__Q39textinput8tistring8WithAtokFb, global
/* 8141EA74 | 4E 80 00 20 */	blr
.endfn changeKanaMode__Q39textinput8tistring8WithAtokFb

# .text:0x2F08 | 0x8141EA78 | size: 0x4
# textinput::tistring::WithAtok::setFixMode(bool)
.fn setFixMode__Q39textinput8tistring8WithAtokFb, global
/* 8141EA78 | 4E 80 00 20 */	blr
.endfn setFixMode__Q39textinput8tistring8WithAtokFb

# .text:0x2F0C | 0x8141EA7C | size: 0x4
# textinput::tistring::WithAtok::setSelectedCandidate(long)
.fn setSelectedCandidate__Q39textinput8tistring8WithAtokFl, global
/* 8141EA7C | 4E 80 00 20 */	blr
.endfn setSelectedCandidate__Q39textinput8tistring8WithAtokFl

# .text:0x2F10 | 0x8141EA80 | size: 0x8
# textinput::tistring::WithZi::setSelectedCandidate(long)
.fn setSelectedCandidate__Q39textinput8tistring6WithZiFl, global
/* 8141EA80 | 90 83 00 98 */	stw r4, 0x98(r3)
/* 8141EA84 | 4E 80 00 20 */	blr
.endfn setSelectedCandidate__Q39textinput8tistring6WithZiFl

# .text:0x2F18 | 0x8141EA88 | size: 0x8
# textinput::tistring::WithAtok::isDictionaryOpened()
.fn isDictionaryOpened__Q39textinput8tistring8WithAtokFv, global
/* 8141EA88 | 38 60 00 00 */	li r3, 0x0
/* 8141EA8C | 4E 80 00 20 */	blr
.endfn isDictionaryOpened__Q39textinput8tistring8WithAtokFv

# .text:0x2F20 | 0x8141EA90 | size: 0x8
# textinput::tistring::WithAtok::getConfirmedWCString() const
.fn getConfirmedWCString__Q39textinput8tistring8WithAtokCFv, global
/* 8141EA90 | 38 60 00 00 */	li r3, 0x0
/* 8141EA94 | 4E 80 00 20 */	blr
.endfn getConfirmedWCString__Q39textinput8tistring8WithAtokCFv

# .text:0x2F28 | 0x8141EA98 | size: 0x4
# textinput::tistring::WithAtok::enableConfirmedString(bool)
.fn enableConfirmedString__Q39textinput8tistring8WithAtokFb, global
/* 8141EA98 | 4E 80 00 20 */	blr
.endfn enableConfirmedString__Q39textinput8tistring8WithAtokFb

# .text:0x2F2C | 0x8141EA9C | size: 0x8
# textinput::tistring::WithZi::setPredictLaunguage(textinput::tistring::WithZi::PredictLanguage)
.fn setPredictLaunguage__Q39textinput8tistring6WithZiFQ49textinput8tistring6WithZi15PredictLanguage, global
/* 8141EA9C | 90 83 00 9C */	stw r4, 0x9c(r3)
/* 8141EAA0 | 4E 80 00 20 */	blr
.endfn setPredictLaunguage__Q39textinput8tistring6WithZiFQ49textinput8tistring6WithZi15PredictLanguage

# .text:0x2F34 | 0x8141EAA4 | size: 0x1E4
# textinput::inputform::Base::updateCandidateState_()
.fn updateCandidateState___Q39textinput9inputform4BaseFv, global
/* 8141EAA4 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8141EAA8 | 7C 08 02 A6 */	mflr r0
/* 8141EAAC | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8141EAB0 | 93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8141EAB4 | 93 C1 00 98 */	stw r30, 0x98(r1)
/* 8141EAB8 | 93 A1 00 94 */	stw r29, 0x94(r1)
/* 8141EABC | 7C 7D 1B 78 */	mr r29, r3
/* 8141EAC0 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 8141EAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141EAC8 | 41 82 01 A4 */	beq .L_8141EC6C
/* 8141EACC | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 8141EAD0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141EAD4 | 40 82 01 34 */	bne .L_8141EC08
/* 8141EAD8 | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 8141EADC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EAE0 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8141EAE4 | 7D 89 03 A6 */	mtctr r12
/* 8141EAE8 | 4E 80 04 21 */	bctrl
/* 8141EAEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141EAF0 | 41 82 00 8C */	beq .L_8141EB7C
/* 8141EAF4 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 8141EAF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EAFC | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8141EB00 | 7D 89 03 A6 */	mtctr r12
/* 8141EB04 | 4E 80 04 21 */	bctrl
/* 8141EB08 | 7C 7F 1B 78 */	mr r31, r3
/* 8141EB0C | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141EB10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EB14 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141EB18 | 7D 89 03 A6 */	mtctr r12
/* 8141EB1C | 4E 80 04 21 */	bctrl
/* 8141EB20 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141EB24 | 7F E4 FB 78 */	mr r4, r31
/* 8141EB28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EB2C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8141EB30 | 7D 89 03 A6 */	mtctr r12
/* 8141EB34 | 4E 80 04 21 */	bctrl
/* 8141EB38 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8141EB3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EB40 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141EB44 | 7D 89 03 A6 */	mtctr r12
/* 8141EB48 | 4E 80 04 21 */	bctrl
/* 8141EB4C | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 8141EB50 | 38 80 00 00 */	li r4, 0x0
/* 8141EB54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EB58 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141EB5C | 7D 89 03 A6 */	mtctr r12
/* 8141EB60 | 4E 80 04 21 */	bctrl
/* 8141EB64 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8141EB68 | 7F A3 EB 78 */	mr r3, r29
/* 8141EB6C | 38 80 00 09 */	li r4, 0x9
/* 8141EB70 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8141EB74 | 7D 89 03 A6 */	mtctr r12
/* 8141EB78 | 4E 80 04 21 */	bctrl
.L_8141EB7C:
/* 8141EB7C | 38 00 00 00 */	li r0, 0x0
/* 8141EB80 | 7F A3 EB 78 */	mr r3, r29
/* 8141EB84 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8141EB88 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141EB8C | 38 80 00 23 */	li r4, 0x23
/* 8141EB90 | 48 01 D3 5D */	bl onCommand__Q29textinput15CommandReceiverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
/* 8141EB94 | 38 7D 01 18 */	addi r3, r29, 0x118
/* 8141EB98 | 48 00 95 B9 */	bl resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8141EB9C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8141EBA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141EBA4 | 40 82 00 C8 */	bne .L_8141EC6C
/* 8141EBA8 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 8141EBAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EBB0 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8141EBB4 | 7D 89 03 A6 */	mtctr r12
/* 8141EBB8 | 4E 80 04 21 */	bctrl
/* 8141EBBC | 7C 7F 1B 78 */	mr r31, r3
/* 8141EBC0 | 3B C0 00 00 */	li r30, 0x0
/* 8141EBC4 | 48 00 00 30 */	b .L_8141EBF4
.L_8141EBC8:
/* 8141EBC8 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 8141EBCC | 7F C4 F3 78 */	mr r4, r30
/* 8141EBD0 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8141EBD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EBD8 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8141EBDC | 7D 89 03 A6 */	mtctr r12
/* 8141EBE0 | 4E 80 04 21 */	bctrl
/* 8141EBE4 | 38 7D 01 18 */	addi r3, r29, 0x118
/* 8141EBE8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8141EBEC | 48 00 95 85 */	bl addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw
/* 8141EBF0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8141EBF4:
/* 8141EBF4 | 7C 1E F8 00 */	cmpw r30, r31
/* 8141EBF8 | 41 80 FF D0 */	blt .L_8141EBC8
/* 8141EBFC | 38 7D 01 18 */	addi r3, r29, 0x118
/* 8141EC00 | 48 00 95 91 */	bl updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8141EC04 | 48 00 00 68 */	b .L_8141EC6C
.L_8141EC08:
/* 8141EC08 | 38 63 01 18 */	addi r3, r3, 0x118
/* 8141EC0C | 48 00 95 45 */	bl resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8141EC10 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 8141EC14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EC18 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8141EC1C | 7D 89 03 A6 */	mtctr r12
/* 8141EC20 | 4E 80 04 21 */	bctrl
/* 8141EC24 | 7C 7F 1B 78 */	mr r31, r3
/* 8141EC28 | 3B C0 00 00 */	li r30, 0x0
/* 8141EC2C | 48 00 00 30 */	b .L_8141EC5C
.L_8141EC30:
/* 8141EC30 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 8141EC34 | 7F C4 F3 78 */	mr r4, r30
/* 8141EC38 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8141EC3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EC40 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8141EC44 | 7D 89 03 A6 */	mtctr r12
/* 8141EC48 | 4E 80 04 21 */	bctrl
/* 8141EC4C | 38 7D 01 18 */	addi r3, r29, 0x118
/* 8141EC50 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8141EC54 | 48 00 95 1D */	bl addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw
/* 8141EC58 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8141EC5C:
/* 8141EC5C | 7C 1E F8 00 */	cmpw r30, r31
/* 8141EC60 | 41 80 FF D0 */	blt .L_8141EC30
/* 8141EC64 | 38 7D 01 18 */	addi r3, r29, 0x118
/* 8141EC68 | 48 00 95 29 */	bl updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
.L_8141EC6C:
/* 8141EC6C | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8141EC70 | 83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8141EC74 | 83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8141EC78 | 83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8141EC7C | 7C 08 03 A6 */	mtlr r0
/* 8141EC80 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 8141EC84 | 4E 80 00 20 */	blr
.endfn updateCandidateState___Q39textinput9inputform4BaseFv

# .text:0x3118 | 0x8141EC88 | size: 0x8
# textinput::tistring::WithAtok::hasConfirmedString()
.fn hasConfirmedString__Q39textinput8tistring8WithAtokFv, global
/* 8141EC88 | 38 60 00 00 */	li r3, 0x0
/* 8141EC8C | 4E 80 00 20 */	blr
.endfn hasConfirmedString__Q39textinput8tistring8WithAtokFv

# .text:0x3120 | 0x8141EC90 | size: 0x8
# textinput::tistring::WithAtok::getCurrentNumPredicted()
.fn getCurrentNumPredicted__Q39textinput8tistring8WithAtokFv, global
/* 8141EC90 | 38 60 00 00 */	li r3, 0x0
/* 8141EC94 | 4E 80 00 20 */	blr
.endfn getCurrentNumPredicted__Q39textinput8tistring8WithAtokFv

# .text:0x3128 | 0x8141EC98 | size: 0x8
# textinput::tistring::WithZi::getCurrentNumPredicted()
.fn getCurrentNumPredicted__Q39textinput8tistring6WithZiFv, global
/* 8141EC98 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8141EC9C | 4E 80 00 20 */	blr
.endfn getCurrentNumPredicted__Q39textinput8tistring6WithZiFv

# .text:0x3130 | 0x8141ECA0 | size: 0x120
# textinput::inputform::Base::create(MEMAllocator*, textinput::inputform::EditBuffer*)
.fn create__Q39textinput9inputform4BaseFP12MEMAllocatorPQ39textinput9inputform10EditBuffer, global
/* 8141ECA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141ECA4 | 7C 08 02 A6 */	mflr r0
/* 8141ECA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141ECAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141ECB0 | 7C 7F 1B 78 */	mr r31, r3
/* 8141ECB4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141ECB8 | 7C BE 2B 78 */	mr r30, r5
/* 8141ECBC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8141ECC0 | 7C 9D 23 78 */	mr r29, r4
/* 8141ECC4 | 90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 8141ECC8 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141ECCC | 48 01 63 05 */	bl create__Q39textinput10textdrawer4BaseFP12MEMAllocator
/* 8141ECD0 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8141ECD4 | 7F A3 EB 78 */	mr r3, r29
/* 8141ECD8 | A0 9F 01 FC */	lhz r4, 0x1fc(r31)
/* 8141ECDC | 90 1F 01 64 */	stw r0, 0x164(r31)
/* 8141ECE0 | 38 04 00 02 */	addi r0, r4, 0x2
/* 8141ECE4 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8141ECE8 | 54 04 18 38 */	slwi r4, r0, 3
/* 8141ECEC | 90 BF 01 68 */	stw r5, 0x168(r31)
/* 8141ECF0 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8141ECF4 | 90 1F 01 6C */	stw r0, 0x16c(r31)
/* 8141ECF8 | 93 BF 02 00 */	stw r29, 0x200(r31)
/* 8141ECFC | 48 13 C9 6D */	bl fn_8155B668
/* 8141ED00 | 90 7F 01 F8 */	stw r3, 0x1f8(r31)
/* 8141ED04 | 38 7F 01 F8 */	addi r3, r31, 0x1f8
/* 8141ED08 | 4B FF D3 B1 */	bl init__Q49textinput9inputform4Base14RowInfoManagerFv
/* 8141ED0C | A0 1F 01 FC */	lhz r0, 0x1fc(r31)
/* 8141ED10 | 80 DF 01 F8 */	lwz r6, 0x1f8(r31)
/* 8141ED14 | 54 00 18 38 */	slwi r0, r0, 3
/* 8141ED18 | 7C 66 02 14 */	add r3, r6, r0
/* 8141ED1C | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8141ED20 | 54 00 18 38 */	slwi r0, r0, 3
/* 8141ED24 | 7C A6 02 14 */	add r5, r6, r0
/* 8141ED28 | 7D 06 02 2E */	lhzx r8, r6, r0
/* 8141ED2C | A0 E5 00 02 */	lhz r7, 0x2(r5)
/* 8141ED30 | 55 00 18 38 */	slwi r0, r8, 3
/* 8141ED34 | 54 E4 18 38 */	slwi r4, r7, 3
/* 8141ED38 | 7D 26 22 2E */	lhzx r9, r6, r4
/* 8141ED3C | 7C 66 02 14 */	add r3, r6, r0
/* 8141ED40 | 7D 06 23 2E */	sthx r8, r6, r4
/* 8141ED44 | 7C 09 48 40 */	cmplw r9, r9
/* 8141ED48 | B0 E3 00 02 */	sth r7, 0x2(r3)
/* 8141ED4C | B1 25 00 00 */	sth r9, 0x0(r5)
/* 8141ED50 | B1 25 00 02 */	sth r9, 0x2(r5)
/* 8141ED54 | A0 7F 01 FC */	lhz r3, 0x1fc(r31)
/* 8141ED58 | 80 DF 01 F8 */	lwz r6, 0x1f8(r31)
/* 8141ED5C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8141ED60 | 54 00 1B 78 */	clrlslwi r0, r0, 16, 3
/* 8141ED64 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 8141ED68 | 54 00 18 38 */	slwi r0, r0, 3
/* 8141ED6C | 7C 86 02 14 */	add r4, r6, r0
/* 8141ED70 | 40 82 00 20 */	bne .L_8141ED90
/* 8141ED74 | A0 E4 00 02 */	lhz r7, 0x2(r4)
/* 8141ED78 | 54 E3 18 38 */	slwi r3, r7, 3
/* 8141ED7C | 7C 06 1A 2E */	lhzx r0, r6, r3
/* 8141ED80 | B0 05 00 00 */	sth r0, 0x0(r5)
/* 8141ED84 | B0 E5 00 02 */	sth r7, 0x2(r5)
/* 8141ED88 | B1 24 00 02 */	sth r9, 0x2(r4)
/* 8141ED8C | 7D 26 1B 2E */	sthx r9, r6, r3
.L_8141ED90:
/* 8141ED90 | 38 60 00 00 */	li r3, 0x0
/* 8141ED94 | 38 00 00 01 */	li r0, 0x1
/* 8141ED98 | B0 65 00 04 */	sth r3, 0x4(r5)
/* 8141ED9C | B0 05 00 06 */	sth r0, 0x6(r5)
/* 8141EDA0 | 90 BF 02 04 */	stw r5, 0x204(r31)
/* 8141EDA4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141EDA8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141EDAC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8141EDB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141EDB4 | 7C 08 03 A6 */	mtlr r0
/* 8141EDB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141EDBC | 4E 80 00 20 */	blr
.endfn create__Q39textinput9inputform4BaseFP12MEMAllocatorPQ39textinput9inputform10EditBuffer

# .text:0x3250 | 0x8141EDC0 | size: 0x158
# textinput::inputform::Base::draw()
.fn draw__Q39textinput9inputform4BaseFv, global
/* 8141EDC0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8141EDC4 | 7C 08 02 A6 */	mflr r0
/* 8141EDC8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8141EDCC | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8141EDD0 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 8141EDD4 | 7C 7E 1B 78 */	mr r30, r3
/* 8141EDD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EDDC | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141EDE0 | 7D 89 03 A6 */	mtctr r12
/* 8141EDE4 | 4E 80 04 21 */	bctrl
/* 8141EDE8 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8141EDEC | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141EDF0 | C0 5E 01 88 */	lfs f2, 0x188(r30)
/* 8141EDF4 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8141EDF8 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8141EDFC | 48 0F 92 FD */	bl fn_815180F8
/* 8141EE00 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141EE04 | 7F C3 F3 78 */	mr r3, r30
/* 8141EE08 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141EE0C | 7D 89 03 A6 */	mtctr r12
/* 8141EE10 | 4E 80 04 21 */	bctrl
/* 8141EE14 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 8141EE18 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8141EE1C | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8141EE20 | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8141EE24 | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8141EE28 | D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8141EE2C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141EE30 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 8141EE34 | 7F C3 F3 78 */	mr r3, r30
/* 8141EE38 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 8141EE3C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8141EE40 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 8141EE44 | 7D 89 03 A6 */	mtctr r12
/* 8141EE48 | 4E 80 04 21 */	bctrl
/* 8141EE4C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8141EE50 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8141EE54 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 8141EE58 | C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 8141EE5C | C0 81 00 24 */	lfs f4, 0x24(r1)
/* 8141EE60 | D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8141EE64 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8141EE68 | D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8141EE6C | C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 8141EE70 | C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 8141EE74 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8141EE78 | EC 43 10 28 */	fsubs f2, f3, f2
/* 8141EE7C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8141EE80 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 8141EE84 | EC 25 08 2A */	fadds f1, f5, f1
/* 8141EE88 | D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8141EE8C | C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 8141EE90 | C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 8141EE94 | EC 22 08 28 */	fsubs f1, f2, f1
/* 8141EE98 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8141EE9C | EC 04 00 2A */	fadds f0, f4, f0
/* 8141EEA0 | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8141EEA4 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8141EEA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EEAC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8141EEB0 | 7D 89 03 A6 */	mtctr r12
/* 8141EEB4 | 4E 80 04 21 */	bctrl
/* 8141EEB8 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8141EEBC | 7C 7F 1B 78 */	mr r31, r3
/* 8141EEC0 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141EEC4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8141EEC8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8141EECC | 7D 89 03 A6 */	mtctr r12
/* 8141EED0 | 4E 80 04 21 */	bctrl
/* 8141EED4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141EED8 | 7F C3 F3 78 */	mr r3, r30
/* 8141EEDC | 7F E4 FB 78 */	mr r4, r31
/* 8141EEE0 | 81 8C 01 74 */	lwz r12, 0x174(r12)
/* 8141EEE4 | 7D 89 03 A6 */	mtctr r12
/* 8141EEE8 | 4E 80 04 21 */	bctrl
/* 8141EEEC | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8141EEF0 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141EEF4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8141EEF8 | 7D 89 03 A6 */	mtctr r12
/* 8141EEFC | 4E 80 04 21 */	bctrl
/* 8141EF00 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8141EF04 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8141EF08 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8141EF0C | 7C 08 03 A6 */	mtlr r0
/* 8141EF10 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8141EF14 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput9inputform4BaseFv

# .text:0x33A8 | 0x8141EF18 | size: 0x20
# textinput::inputform::Base::getScale() const
.fn getScale__Q39textinput9inputform4BaseCFv, global
/* 8141EF18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141EF1C | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 8141EF20 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8141EF24 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8141EF28 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8141EF2C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8141EF30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141EF34 | 4E 80 00 20 */	blr
.endfn getScale__Q39textinput9inputform4BaseCFv

# .text:0x33C8 | 0x8141EF38 | size: 0x44
# textinput::inputform::Base::makeUpCursorPos(textinput::textdrawer::Base::CursorPos*, unsigned long, long, long)
.fn makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll, global
/* 8141EF38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141EF3C | 7C 08 02 A6 */	mflr r0
/* 8141EF40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141EF44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141EF48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8141EF4C | 7C 7E 1B 78 */	mr r30, r3
/* 8141EF50 | 83 E3 01 B4 */	lwz r31, 0x1b4(r3)
/* 8141EF54 | 90 A3 01 B4 */	stw r5, 0x1b4(r3)
/* 8141EF58 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141EF5C | 48 01 62 79 */	bl makeUpCursorPos__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
/* 8141EF60 | 93 FE 01 B4 */	stw r31, 0x1b4(r30)
/* 8141EF64 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141EF68 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8141EF6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141EF70 | 7C 08 03 A6 */	mtlr r0
/* 8141EF74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141EF78 | 4E 80 00 20 */	blr
.endfn makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll

# .text:0x340C | 0x8141EF7C | size: 0x8
# textinput::textdrawer::Base::getDrawModifyEndLine() const
.fn getDrawModifyEndLine__Q39textinput10textdrawer4BaseCFv, global
/* 8141EF7C | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8141EF80 | 4E 80 00 20 */	blr
.endfn getDrawModifyEndLine__Q39textinput10textdrawer4BaseCFv

# .text:0x3414 | 0x8141EF84 | size: 0x8
# textinput::textdrawer::Base::getEndPos() const
.fn getEndPos__Q39textinput10textdrawer4BaseCFv, global
/* 8141EF84 | 80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 8141EF88 | 4E 80 00 20 */	blr
.endfn getEndPos__Q39textinput10textdrawer4BaseCFv

# .text:0x341C | 0x8141EF8C | size: 0xDC
# textinput::inputform::Base::drawFixString(unsigned long)
.fn drawFixString__Q39textinput9inputform4BaseFUl, global
/* 8141EF8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8141EF90 | 7C 08 02 A6 */	mflr r0
/* 8141EF94 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 8141EF98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141EF9C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141EFA0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141EFA4 | 7C 7E 1B 78 */	mr r30, r3
/* 8141EFA8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8141EFAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8141EFB0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8141EFB4 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8141EFB8 | 88 A3 01 C8 */	lbz r5, 0x1c8(r3)
/* 8141EFBC | 88 03 01 CC */	lbz r0, 0x1cc(r3)
/* 8141EFC0 | 98 A3 01 CF */	stb r5, 0x1cf(r3)
/* 8141EFC4 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8141EFC8 | 88 03 01 CD */	lbz r0, 0x1cd(r3)
/* 8141EFCC | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8141EFD0 | 88 03 01 CE */	lbz r0, 0x1ce(r3)
/* 8141EFD4 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8141EFD8 | 88 03 01 CF */	lbz r0, 0x1cf(r3)
/* 8141EFDC | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141EFE0 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8141EFE4 | 48 0F 8A 3D */	bl fn_81517A20
/* 8141EFE8 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8141EFEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141EFF0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8141EFF4 | 7D 89 03 A6 */	mtctr r12
/* 8141EFF8 | 4E 80 04 21 */	bctrl
/* 8141EFFC | 54 7F 04 3E */	clrlwi r31, r3, 16
/* 8141F000 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8141F004 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F008 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8141F00C | 7D 89 03 A6 */	mtctr r12
/* 8141F010 | 4E 80 04 21 */	bctrl
/* 8141F014 | 7C 64 1B 78 */	mr r4, r3
/* 8141F018 | 7F E6 FB 78 */	mr r6, r31
/* 8141F01C | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141F020 | 38 A0 00 00 */	li r5, 0x0
/* 8141F024 | 48 01 60 71 */	bl setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl
/* 8141F028 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141F02C | 38 81 00 0C */	addi r4, r1, 0xc
/* 8141F030 | 48 01 63 D9 */	bl draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
/* 8141F034 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F038 | 7F C3 F3 78 */	mr r3, r30
/* 8141F03C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8141F040 | 81 8C 01 64 */	lwz r12, 0x164(r12)
/* 8141F044 | C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8141F048 | 7D 89 03 A6 */	mtctr r12
/* 8141F04C | 4E 80 04 21 */	bctrl
/* 8141F050 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141F054 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141F058 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141F05C | 7C 08 03 A6 */	mtlr r0
/* 8141F060 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8141F064 | 4E 80 00 20 */	blr
.endfn drawFixString__Q39textinput9inputform4BaseFUl

# .text:0x34F8 | 0x8141F068 | size: 0x8
# textinput::tistring::StringBase::getLength() const
.fn getLength__Q39textinput8tistring10StringBaseCFv, global
/* 8141F068 | A0 63 00 06 */	lhz r3, 0x6(r3)
/* 8141F06C | 4E 80 00 20 */	blr
.endfn getLength__Q39textinput8tistring10StringBaseCFv

# .text:0x3500 | 0x8141F070 | size: 0x294
# textinput::inputform::Base::calc()
.fn calc__Q39textinput9inputform4BaseFv, global
/* 8141F070 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8141F074 | 7C 08 02 A6 */	mflr r0
/* 8141F078 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8141F07C | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8141F080 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8141F084 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8141F088 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8141F08C | 7C 7E 1B 78 */	mr r30, r3
/* 8141F090 | 81 83 01 8C */	lwz r12, 0x18c(r3)
/* 8141F094 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141F098 | 7D 89 03 A6 */	mtctr r12
/* 8141F09C | 38 63 01 8C */	addi r3, r3, 0x18c
/* 8141F0A0 | 4E 80 04 21 */	bctrl
/* 8141F0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F0A8 | 41 82 00 24 */	beq .L_8141F0CC
/* 8141F0AC | 81 9E 01 8C */	lwz r12, 0x18c(r30)
/* 8141F0B0 | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 8141F0B4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141F0B8 | 7D 89 03 A6 */	mtctr r12
/* 8141F0BC | 4E 80 04 21 */	bctrl
/* 8141F0C0 | FC 00 08 18 */	frsp f0, f1
/* 8141F0C4 | D0 3E 01 88 */	stfs f1, 0x188(r30)
/* 8141F0C8 | D0 1E 01 00 */	stfs f0, 0x100(r30)
.L_8141F0CC:
/* 8141F0CC | 81 9E 01 8C */	lwz r12, 0x18c(r30)
/* 8141F0D0 | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 8141F0D4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8141F0D8 | 7D 89 03 A6 */	mtctr r12
/* 8141F0DC | 4E 80 04 21 */	bctrl
/* 8141F0E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F0E4 | 40 82 00 18 */	bne .L_8141F0FC
/* 8141F0E8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F0EC | 7F C3 F3 78 */	mr r3, r30
/* 8141F0F0 | 81 8C 01 6C */	lwz r12, 0x16c(r12)
/* 8141F0F4 | 7D 89 03 A6 */	mtctr r12
/* 8141F0F8 | 4E 80 04 21 */	bctrl
.L_8141F0FC:
/* 8141F0FC | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8141F100 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F104 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8141F108 | 7D 89 03 A6 */	mtctr r12
/* 8141F10C | 4E 80 04 21 */	bctrl
/* 8141F110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F114 | 40 82 00 14 */	bne .L_8141F128
/* 8141F118 | C0 22 89 38 */	lfs f1, lbl_81694D38@sda21(r0)
/* 8141F11C | C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 8141F120 | EC 01 00 2A */	fadds f0, f1, f0
/* 8141F124 | D0 1E 01 AC */	stfs f0, 0x1ac(r30)
.L_8141F128:
/* 8141F128 | 81 9E 01 8C */	lwz r12, 0x18c(r30)
/* 8141F12C | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 8141F130 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8141F134 | 7D 89 03 A6 */	mtctr r12
/* 8141F138 | 4E 80 04 21 */	bctrl
/* 8141F13C | C0 2D AC DC */	lfs f1, lbl_81698D1C@sda21(r0)
/* 8141F140 | C0 02 89 40 */	lfs f0, lbl_81694D40@sda21(r0)
/* 8141F144 | EC 20 00 72 */	fmuls f1, f0, f1
/* 8141F148 | 48 0F F4 6D */	bl fn_8151E5B4
/* 8141F14C | C0 02 89 48 */	lfs f0, lbl_81694D48@sda21(r0)
/* 8141F150 | 38 00 00 5A */	li r0, 0x5a
/* 8141F154 | 38 60 00 02 */	li r3, 0x2
/* 8141F158 | 3B E0 00 FD */	li r31, 0xfd
/* 8141F15C | EC 40 00 72 */	fmuls f2, f0, f1
/* 8141F160 | C0 02 89 44 */	lfs f0, lbl_81694D44@sda21(r0)
/* 8141F164 | 98 7E 01 C0 */	stb r3, 0x1c0(r30)
/* 8141F168 | FF E0 08 90 */	fmr f31, f1
/* 8141F16C | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8141F170 | EC 00 10 2A */	fadds f0, f0, f2
/* 8141F174 | 98 1E 01 C1 */	stb r0, 0x1c1(r30)
/* 8141F178 | FC 00 00 1E */	fctiwz f0, f0
/* 8141F17C | 9B FE 01 C2 */	stb r31, 0x1c2(r30)
/* 8141F180 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8141F184 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8141F188 | 98 1E 01 C3 */	stb r0, 0x1c3(r30)
/* 8141F18C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F190 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8141F194 | 7D 89 03 A6 */	mtctr r12
/* 8141F198 | 4E 80 04 21 */	bctrl
/* 8141F19C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F1A0 | 41 82 00 3C */	beq .L_8141F1DC
/* 8141F1A4 | C0 22 89 50 */	lfs f1, lbl_81694D50@sda21(r0)
/* 8141F1A8 | 38 00 00 8C */	li r0, 0x8c
/* 8141F1AC | 38 60 00 34 */	li r3, 0x34
/* 8141F1B0 | C0 02 89 4C */	lfs f0, lbl_81694D4C@sda21(r0)
/* 8141F1B4 | EC 21 07 F2 */	fmuls f1, f1, f31
/* 8141F1B8 | 98 1E 01 C1 */	stb r0, 0x1c1(r30)
/* 8141F1BC | 98 7E 01 C0 */	stb r3, 0x1c0(r30)
/* 8141F1C0 | EC 00 08 2A */	fadds f0, f0, f1
/* 8141F1C4 | 9B FE 01 C2 */	stb r31, 0x1c2(r30)
/* 8141F1C8 | FC 00 00 1E */	fctiwz f0, f0
/* 8141F1CC | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8141F1D0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8141F1D4 | 98 1E 01 C3 */	stb r0, 0x1c3(r30)
/* 8141F1D8 | 48 00 00 F0 */	b .L_8141F2C8
.L_8141F1DC:
/* 8141F1DC | C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8141F1E0 | C0 A2 89 4C */	lfs f5, lbl_81694D4C@sda21(r0)
/* 8141F1E4 | FC 01 28 40 */	fcmpo cr0, f1, f5
/* 8141F1E8 | 4C 40 13 82 */	cror eq, lt, eq
/* 8141F1EC | 40 82 00 DC */	bne .L_8141F2C8
/* 8141F1F0 | C0 42 89 28 */	lfs f2, lbl_81694D28@sda21(r0)
/* 8141F1F4 | C0 62 89 54 */	lfs f3, lbl_81694D54@sda21(r0)
/* 8141F1F8 | FC 80 10 90 */	fmr f4, f2
/* 8141F1FC | C0 C2 89 58 */	lfs f6, lbl_81694D58@sda21(r0)
/* 8141F200 | FC E0 10 90 */	fmr f7, f2
/* 8141F204 | 48 01 B0 F1 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8141F208 | FC 00 08 1E */	fctiwz f0, f1
/* 8141F20C | C0 42 89 28 */	lfs f2, lbl_81694D28@sda21(r0)
/* 8141F210 | C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8141F214 | FC 80 10 90 */	fmr f4, f2
/* 8141F218 | C0 62 89 5C */	lfs f3, lbl_81694D5C@sda21(r0)
/* 8141F21C | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8141F220 | FC E0 10 90 */	fmr f7, f2
/* 8141F224 | C0 A2 89 4C */	lfs f5, lbl_81694D4C@sda21(r0)
/* 8141F228 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8141F22C | C0 C2 89 60 */	lfs f6, lbl_81694D60@sda21(r0)
/* 8141F230 | 98 1E 01 C0 */	stb r0, 0x1c0(r30)
/* 8141F234 | 48 01 B0 C1 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8141F238 | FC 00 08 1E */	fctiwz f0, f1
/* 8141F23C | C0 42 89 28 */	lfs f2, lbl_81694D28@sda21(r0)
/* 8141F240 | C0 62 89 64 */	lfs f3, lbl_81694D64@sda21(r0)
/* 8141F244 | FC 80 10 90 */	fmr f4, f2
/* 8141F248 | C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8141F24C | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8141F250 | FC C0 18 90 */	fmr f6, f3
/* 8141F254 | C0 A2 89 4C */	lfs f5, lbl_81694D4C@sda21(r0)
/* 8141F258 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141F25C | FC E0 10 90 */	fmr f7, f2
/* 8141F260 | 98 1E 01 C1 */	stb r0, 0x1c1(r30)
/* 8141F264 | 48 01 B0 91 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8141F268 | FC 20 08 1E */	fctiwz f1, f1
/* 8141F26C | C0 4D AC DC */	lfs f2, lbl_81698D1C@sda21(r0)
/* 8141F270 | C0 02 89 40 */	lfs f0, lbl_81694D40@sda21(r0)
/* 8141F274 | D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8141F278 | EC 20 00 B2 */	fmuls f1, f0, f2
/* 8141F27C | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8141F280 | 98 1E 01 C2 */	stb r0, 0x1c2(r30)
/* 8141F284 | 48 0F F3 31 */	bl fn_8151E5B4
/* 8141F288 | C0 42 89 28 */	lfs f2, lbl_81694D28@sda21(r0)
/* 8141F28C | FF E0 08 90 */	fmr f31, f1
/* 8141F290 | C0 62 89 4C */	lfs f3, lbl_81694D4C@sda21(r0)
/* 8141F294 | FC 80 10 90 */	fmr f4, f2
/* 8141F298 | C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8141F29C | FC A0 18 90 */	fmr f5, f3
/* 8141F2A0 | C0 C2 89 44 */	lfs f6, lbl_81694D44@sda21(r0)
/* 8141F2A4 | FC E0 10 90 */	fmr f7, f2
/* 8141F2A8 | 48 01 B0 4D */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8141F2AC | C0 02 89 68 */	lfs f0, lbl_81694D68@sda21(r0)
/* 8141F2B0 | EC 00 07 F2 */	fmuls f0, f0, f31
/* 8141F2B4 | EC 01 00 2A */	fadds f0, f1, f0
/* 8141F2B8 | FC 00 00 1E */	fctiwz f0, f0
/* 8141F2BC | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8141F2C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8141F2C4 | 98 1E 01 C3 */	stb r0, 0x1c3(r30)
.L_8141F2C8:
/* 8141F2C8 | 80 7E 02 14 */	lwz r3, 0x214(r30)
/* 8141F2CC | C0 2D AC DC */	lfs f1, lbl_81698D1C@sda21(r0)
/* 8141F2D0 | C0 02 89 58 */	lfs f0, lbl_81694D58@sda21(r0)
/* 8141F2D4 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8141F2D8 | 90 1E 02 14 */	stw r0, 0x214(r30)
/* 8141F2DC | EC 01 00 2A */	fadds f0, f1, f0
/* 8141F2E0 | D0 0D AC DC */	stfs f0, lbl_81698D1C@sda21(r0)
/* 8141F2E4 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8141F2E8 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8141F2EC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8141F2F0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8141F2F4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8141F2F8 | 7C 08 03 A6 */	mtlr r0
/* 8141F2FC | 38 21 00 40 */	addi r1, r1, 0x40
/* 8141F300 | 4E 80 00 20 */	blr
.endfn calc__Q39textinput9inputform4BaseFv

# .text:0x3794 | 0x8141F304 | size: 0x8
# textinput::util::Animation::isActive()
.fn isActive__Q39textinput4util9AnimationFv, global
/* 8141F304 | 88 63 00 14 */	lbz r3, 0x14(r3)
/* 8141F308 | 4E 80 00 20 */	blr
.endfn isActive__Q39textinput4util9AnimationFv

# .text:0x379C | 0x8141F30C | size: 0x20
# textinput::util::Animation::getValue()
.fn getValue__Q39textinput4util9AnimationFv, global
/* 8141F30C | C0 42 89 28 */	lfs f2, lbl_81694D28@sda21(r0)
/* 8141F310 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8141F314 | FC 80 10 90 */	fmr f4, f2
/* 8141F318 | C0 63 00 04 */	lfs f3, 0x4(r3)
/* 8141F31C | FC E0 10 90 */	fmr f7, f2
/* 8141F320 | C0 A3 00 10 */	lfs f5, 0x10(r3)
/* 8141F324 | C0 C3 00 08 */	lfs f6, 0x8(r3)
/* 8141F328 | 48 01 AF CC */	b hermiteInterporation__Q29textinput4utilFfffffff
.endfn getValue__Q39textinput4util9AnimationFv

# .text:0x37BC | 0x8141F32C | size: 0x84
# textinput::util::Animation::calc()
.fn calc__Q39textinput4util9AnimationFv, global
/* 8141F32C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141F330 | 7C 08 02 A6 */	mflr r0
/* 8141F334 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141F338 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141F33C | 7C 7F 1B 78 */	mr r31, r3
/* 8141F340 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 8141F344 | 2C 80 00 00 */	cmpwi cr1, r0, 0x0
/* 8141F348 | 41 86 00 54 */	beq cr1, .L_8141F39C
/* 8141F34C | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8141F350 | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8141F354 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8141F358 | 40 80 00 14 */	bge .L_8141F36C
/* 8141F35C | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 8141F360 | EC 00 08 2A */	fadds f0, f0, f1
/* 8141F364 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8141F368 | 48 00 00 34 */	b .L_8141F39C
.L_8141F36C:
/* 8141F36C | 41 86 00 28 */	beq cr1, .L_8141F394
/* 8141F370 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8141F374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F378 | 41 82 00 1C */	beq .L_8141F394
/* 8141F37C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F380 | 38 80 00 01 */	li r4, 0x1
/* 8141F384 | 80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 8141F388 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8141F38C | 7D 89 03 A6 */	mtctr r12
/* 8141F390 | 4E 80 04 21 */	bctrl
.L_8141F394:
/* 8141F394 | 38 00 00 00 */	li r0, 0x0
/* 8141F398 | 98 1F 00 14 */	stb r0, 0x14(r31)
.L_8141F39C:
/* 8141F39C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141F3A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141F3A4 | 7C 08 03 A6 */	mtlr r0
/* 8141F3A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141F3AC | 4E 80 00 20 */	blr
.endfn calc__Q39textinput4util9AnimationFv

# .text:0x3840 | 0x8141F3B0 | size: 0x10
# textinput::inputform::Base::calcCursorTimer()
.fn calcCursorTimer__Q39textinput9inputform4BaseFv, global
/* 8141F3B0 | 80 83 02 14 */	lwz r4, 0x214(r3)
/* 8141F3B4 | 38 04 00 08 */	addi r0, r4, 0x8
/* 8141F3B8 | 90 03 02 14 */	stw r0, 0x214(r3)
/* 8141F3BC | 4E 80 00 20 */	blr
.endfn calcCursorTimer__Q39textinput9inputform4BaseFv

# .text:0x3850 | 0x8141F3C0 | size: 0x8
# textinput::inputform::Base::setFont(const nw4r::ut::Font&)
.fn setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font, global
/* 8141F3C0 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141F3C4 | 48 01 63 B8 */	b setFont__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Font
.endfn setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font

# .text:0x3858 | 0x8141F3C8 | size: 0x14
# textinput::inputform::Base::setString(const wchar_t*)
.fn setString__Q39textinput9inputform4BaseFPCw, global
/* 8141F3C8 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 8141F3CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F3D0 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8141F3D4 | 7D 89 03 A6 */	mtctr r12
/* 8141F3D8 | 4E 80 04 20 */	bctr
.endfn setString__Q39textinput9inputform4BaseFPCw

# .text:0x386C | 0x8141F3DC | size: 0x4C
# textinput::tistring::Decolated::set(const wchar_t*)
.fn set__Q39textinput8tistring9DecolatedFPCw, global
/* 8141F3DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141F3E0 | 7C 08 02 A6 */	mflr r0
/* 8141F3E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141F3E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141F3EC | 7C 7F 1B 78 */	mr r31, r3
/* 8141F3F0 | 48 01 37 A1 */	bl set__Q39textinput8tistring10StringBaseFPCw
/* 8141F3F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141F3F8 | 7F E3 FB 78 */	mr r3, r31
/* 8141F3FC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8141F400 | 7D 89 03 A6 */	mtctr r12
/* 8141F404 | 4E 80 04 21 */	bctrl
/* 8141F408 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8141F40C | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 8141F410 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8141F414 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141F418 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141F41C | 7C 08 03 A6 */	mtlr r0
/* 8141F420 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141F424 | 4E 80 00 20 */	blr
.endfn set__Q39textinput8tistring9DecolatedFPCw

# .text:0x38B8 | 0x8141F428 | size: 0x4C
# textinput::inputform::Base::clear()
.fn clear__Q39textinput9inputform4BaseFv, global
/* 8141F428 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141F42C | 7C 08 02 A6 */	mflr r0
/* 8141F430 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141F434 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141F438 | 7C 7F 1B 78 */	mr r31, r3
/* 8141F43C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F440 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8141F444 | 7D 89 03 A6 */	mtctr r12
/* 8141F448 | 4E 80 04 21 */	bctrl
/* 8141F44C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8141F450 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141F454 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8141F458 | 7D 89 03 A6 */	mtctr r12
/* 8141F45C | 4E 80 04 21 */	bctrl
/* 8141F460 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141F464 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141F468 | 7C 08 03 A6 */	mtlr r0
/* 8141F46C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141F470 | 4E 80 00 20 */	blr
.endfn clear__Q39textinput9inputform4BaseFv

# .text:0x3904 | 0x8141F474 | size: 0x50
# textinput::tistring::Decolated::clear()
.fn clear__Q39textinput8tistring9DecolatedFv, global
/* 8141F474 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8141F478 | 7C 08 02 A6 */	mflr r0
/* 8141F47C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8141F480 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8141F484 | 7C 7F 1B 78 */	mr r31, r3
/* 8141F488 | 48 01 37 F9 */	bl clear__Q39textinput8tistring10StringBaseFv
/* 8141F48C | 38 00 00 00 */	li r0, 0x0
/* 8141F490 | 7F E3 FB 78 */	mr r3, r31
/* 8141F494 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 8141F498 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8141F49C | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 8141F4A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141F4A4 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8141F4A8 | 7D 89 03 A6 */	mtctr r12
/* 8141F4AC | 4E 80 04 21 */	bctrl
/* 8141F4B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8141F4B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8141F4B8 | 7C 08 03 A6 */	mtlr r0
/* 8141F4BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8141F4C0 | 4E 80 00 20 */	blr
.endfn clear__Q39textinput8tistring9DecolatedFv

# .text:0x3954 | 0x8141F4C4 | size: 0x10
# textinput::inputform::Base::preDraw(unsigned long)
.fn preDraw__Q39textinput9inputform4BaseFUl, global
/* 8141F4C4 | 90 83 01 B4 */	stw r4, 0x1b4(r3)
/* 8141F4C8 | 38 00 00 00 */	li r0, 0x0
/* 8141F4CC | 98 0D 93 73 */	stb r0, lbl_816973B3@sda21(r0)
/* 8141F4D0 | 4E 80 00 20 */	blr
.endfn preDraw__Q39textinput9inputform4BaseFUl

# .text:0x3964 | 0x8141F4D4 | size: 0x1BC
# textinput::inputform::Base::findURL(unsigned long*, unsigned long*, const wchar_t*, unsigned long, unsigned long)
.fn findURL__Q39textinput9inputform4BaseFPUlPUlPCwUlUl, global
/* 8141F4D4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8141F4D8 | 7C 08 02 A6 */	mflr r0
/* 8141F4DC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8141F4E0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8141F4E4 | 48 1D 9F C1 */	bl _savegpr_20
/* 8141F4E8 | 3F 60 81 61 */	lis r27, pppURLCheck@ha
/* 8141F4EC | 7C 94 23 78 */	mr r20, r4
/* 8141F4F0 | 7C B5 2B 78 */	mr r21, r5
/* 8141F4F4 | 7C D6 33 78 */	mr r22, r6
/* 8141F4F8 | 7C FA 3B 78 */	mr r26, r7
/* 8141F4FC | 7D 17 43 78 */	mr r23, r8
/* 8141F500 | 3B 7B 52 A8 */	addi r27, r27, pppURLCheck@l
/* 8141F504 | 3B A0 00 00 */	li r29, 0x0
/* 8141F508 | 3B 80 00 01 */	li r28, 0x1
/* 8141F50C | 48 00 01 60 */	b .L_8141F66C
.L_8141F510:
/* 8141F510 | 57 43 08 3C */	slwi r3, r26, 1
/* 8141F514 | 7C 16 1A 2E */	lhzx r0, r22, r3
/* 8141F518 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 8141F51C | 40 80 00 48 */	bge .L_8141F564
/* 8141F520 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8141F524 | 41 82 00 A0 */	beq .L_8141F5C4
/* 8141F528 | 40 80 00 1C */	bge .L_8141F544
/* 8141F52C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8141F530 | 41 82 00 94 */	beq .L_8141F5C4
/* 8141F534 | 40 80 01 30 */	bge .L_8141F664
/* 8141F538 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141F53C | 41 82 00 6C */	beq .L_8141F5A8
/* 8141F540 | 48 00 01 24 */	b .L_8141F664
.L_8141F544:
/* 8141F544 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 8141F548 | 40 80 00 10 */	bge .L_8141F558
/* 8141F54C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 8141F550 | 41 82 00 74 */	beq .L_8141F5C4
/* 8141F554 | 48 00 01 10 */	b .L_8141F664
.L_8141F558:
/* 8141F558 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 8141F55C | 40 80 01 08 */	bge .L_8141F664
/* 8141F560 | 48 00 00 FC */	b .L_8141F65C
.L_8141F564:
/* 8141F564 | 2C 00 00 68 */	cmpwi r0, 0x68
/* 8141F568 | 41 82 00 80 */	beq .L_8141F5E8
/* 8141F56C | 40 80 00 24 */	bge .L_8141F590
/* 8141F570 | 2C 00 00 5B */	cmpwi r0, 0x5b
/* 8141F574 | 40 80 00 10 */	bge .L_8141F584
/* 8141F578 | 2C 00 00 48 */	cmpwi r0, 0x48
/* 8141F57C | 41 82 00 6C */	beq .L_8141F5E8
/* 8141F580 | 48 00 00 DC */	b .L_8141F65C
.L_8141F584:
/* 8141F584 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 8141F588 | 40 80 00 D4 */	bge .L_8141F65C
/* 8141F58C | 48 00 00 D8 */	b .L_8141F664
.L_8141F590:
/* 8141F590 | 2C 00 30 00 */	cmpwi r0, 0x3000
/* 8141F594 | 41 82 00 30 */	beq .L_8141F5C4
/* 8141F598 | 40 80 00 CC */	bge .L_8141F664
/* 8141F59C | 2C 00 00 7B */	cmpwi r0, 0x7b
/* 8141F5A0 | 40 80 00 C4 */	bge .L_8141F664
/* 8141F5A4 | 48 00 00 B8 */	b .L_8141F65C
.L_8141F5A8:
/* 8141F5A8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8141F5AC | 41 82 00 10 */	beq .L_8141F5BC
/* 8141F5B0 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8141F5B4 | 41 82 00 08 */	beq .L_8141F5BC
/* 8141F5B8 | 93 55 00 00 */	stw r26, 0x0(r21)
.L_8141F5BC:
/* 8141F5BC | 7F A3 EB 78 */	mr r3, r29
/* 8141F5C0 | 48 00 00 B8 */	b .L_8141F678
.L_8141F5C4:
/* 8141F5C4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8141F5C8 | 40 82 00 0C */	bne .L_8141F5D4
/* 8141F5CC | 3B 80 00 01 */	li r28, 0x1
/* 8141F5D0 | 48 00 00 98 */	b .L_8141F668
.L_8141F5D4:
/* 8141F5D4 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8141F5D8 | 41 82 00 08 */	beq .L_8141F5E0
/* 8141F5DC | 93 55 00 00 */	stw r26, 0x0(r21)
.L_8141F5E0:
/* 8141F5E0 | 38 60 00 01 */	li r3, 0x1
/* 8141F5E4 | 48 00 00 94 */	b .L_8141F678
.L_8141F5E8:
/* 8141F5E8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8141F5EC | 41 82 00 7C */	beq .L_8141F668
/* 8141F5F0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8141F5F4 | 40 82 00 74 */	bne .L_8141F668
/* 8141F5F8 | 7F 7F DB 78 */	mr r31, r27
/* 8141F5FC | 7F D6 1A 14 */	add r30, r22, r3
/* 8141F600 | 3B 80 00 00 */	li r28, 0x0
/* 8141F604 | 3B 20 00 00 */	li r25, 0x0
.L_8141F608:
/* 8141F608 | 7F E3 FB 78 */	mr r3, r31
/* 8141F60C | 48 1E 90 A1 */	bl fn_816086AC
/* 8141F610 | 7C 78 1B 78 */	mr r24, r3
/* 8141F614 | 7F C3 F3 78 */	mr r3, r30
/* 8141F618 | 7F E4 FB 78 */	mr r4, r31
/* 8141F61C | 7F 05 C3 78 */	mr r5, r24
/* 8141F620 | 48 1E 95 89 */	bl fn_81608BA8
/* 8141F624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F628 | 40 82 00 20 */	bne .L_8141F648
/* 8141F62C | 2C 14 00 00 */	cmpwi r20, 0x0
/* 8141F630 | 41 82 00 08 */	beq .L_8141F638
/* 8141F634 | 93 54 00 00 */	stw r26, 0x0(r20)
.L_8141F638:
/* 8141F638 | 7C 7A C2 14 */	add r3, r26, r24
/* 8141F63C | 3B A0 00 01 */	li r29, 0x1
/* 8141F640 | 3B 43 FF FF */	subi r26, r3, 0x1
/* 8141F644 | 48 00 00 24 */	b .L_8141F668
.L_8141F648:
/* 8141F648 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8141F64C | 3B FF 00 14 */	addi r31, r31, 0x14
/* 8141F650 | 28 19 00 02 */	cmplwi r25, 0x2
/* 8141F654 | 41 80 FF B4 */	blt .L_8141F608
/* 8141F658 | 48 00 00 10 */	b .L_8141F668
.L_8141F65C:
/* 8141F65C | 3B 80 00 00 */	li r28, 0x0
/* 8141F660 | 48 00 00 08 */	b .L_8141F668
.L_8141F664:
/* 8141F664 | 3B 80 00 01 */	li r28, 0x1
.L_8141F668:
/* 8141F668 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_8141F66C:
/* 8141F66C | 7C 1A B8 40 */	cmplw r26, r23
/* 8141F670 | 41 80 FE A0 */	blt .L_8141F510
/* 8141F674 | 7F A3 EB 78 */	mr r3, r29
.L_8141F678:
/* 8141F678 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8141F67C | 48 1D 9E 75 */	bl _restgpr_20
/* 8141F680 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8141F684 | 7C 08 03 A6 */	mtlr r0
/* 8141F688 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8141F68C | 4E 80 00 20 */	blr
.endfn findURL__Q39textinput9inputform4BaseFPUlPUlPCwUlUl

# .text:0x3B20 | 0x8141F690 | size: 0x334
# textinput::inputform::Base::doWordWrap(const wchar_t*, unsigned long, float)
.fn doWordWrap__Q39textinput9inputform4BaseFPCwUlf, global
/* 8141F690 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8141F694 | 7C 08 02 A6 */	mflr r0
/* 8141F698 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8141F69C | DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8141F6A0 | F3 E1 00 A8 */	psq_st f31, 0xa8(r1), 0, qr0
/* 8141F6A4 | DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8141F6A8 | F3 C1 00 98 */	psq_st f30, 0x98(r1), 0, qr0
/* 8141F6AC | DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8141F6B0 | F3 A1 00 88 */	psq_st f29, 0x88(r1), 0, qr0
/* 8141F6B4 | DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8141F6B8 | F3 81 00 78 */	psq_st f28, 0x78(r1), 0, qr0
/* 8141F6BC | 39 61 00 70 */	addi r11, r1, 0x70
/* 8141F6C0 | 48 1D 9D ED */	bl _savegpr_22
/* 8141F6C4 | 88 03 01 79 */	lbz r0, 0x179(r3)
/* 8141F6C8 | FF 80 08 90 */	fmr f28, f1
/* 8141F6CC | 7C 7E 1B 78 */	mr r30, r3
/* 8141F6D0 | 7C 9F 23 78 */	mr r31, r4
/* 8141F6D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141F6D8 | 40 82 00 0C */	bne .L_8141F6E4
/* 8141F6DC | 38 60 00 00 */	li r3, 0x0
/* 8141F6E0 | 48 00 02 AC */	b .L_8141F98C
.L_8141F6E4:
/* 8141F6E4 | 83 43 01 B4 */	lwz r26, 0x1b4(r3)
/* 8141F6E8 | 7C 05 D0 40 */	cmplw r5, r26
/* 8141F6EC | 40 80 00 0C */	bge .L_8141F6F8
/* 8141F6F0 | 38 60 00 00 */	li r3, 0x0
/* 8141F6F4 | 48 00 02 98 */	b .L_8141F98C
.L_8141F6F8:
/* 8141F6F8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8141F6FC | 3B 20 00 00 */	li r25, 0x0
/* 8141F700 | 41 82 00 48 */	beq .L_8141F748
/* 8141F704 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 8141F708 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8141F70C | 7D 89 03 A6 */	mtctr r12
/* 8141F710 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141F714 | 4E 80 04 21 */	bctrl
/* 8141F718 | 7C 1A 18 40 */	cmplw r26, r3
/* 8141F71C | 41 82 00 2C */	beq .L_8141F748
/* 8141F720 | 57 40 08 3C */	slwi r0, r26, 1
/* 8141F724 | 7C 7F 02 14 */	add r3, r31, r0
/* 8141F728 | A0 03 FF FE */	lhz r0, -0x2(r3)
/* 8141F72C | 28 00 00 2D */	cmplwi r0, 0x2d
/* 8141F730 | 40 82 00 0C */	bne .L_8141F73C
/* 8141F734 | 3B 20 00 01 */	li r25, 0x1
/* 8141F738 | 48 00 00 10 */	b .L_8141F748
.L_8141F73C:
/* 8141F73C | 28 00 00 20 */	cmplwi r0, 0x20
/* 8141F740 | 41 82 00 08 */	beq .L_8141F748
/* 8141F744 | 3B 20 00 02 */	li r25, 0x2
.L_8141F748:
/* 8141F748 | C3 E2 89 28 */	lfs f31, lbl_81694D28@sda21(r0)
/* 8141F74C | 3A E0 00 00 */	li r23, 0x0
/* 8141F750 | 83 5E 01 B4 */	lwz r26, 0x1b4(r30)
/* 8141F754 | 3A C0 00 00 */	li r22, 0x0
/* 8141F758 | FF C0 F8 90 */	fmr f30, f31
/* 8141F75C | 3B A0 00 01 */	li r29, 0x1
/* 8141F760 | 57 40 08 3C */	slwi r0, r26, 1
/* 8141F764 | 7F 58 D3 78 */	mr r24, r26
/* 8141F768 | 7F 7F 02 14 */	add r27, r31, r0
.L_8141F76C:
/* 8141F76C | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 8141F770 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8141F774 | 41 82 01 14 */	beq .L_8141F888
/* 8141F778 | 28 00 00 0A */	cmplwi r0, 0xa
/* 8141F77C | 41 82 01 0C */	beq .L_8141F888
/* 8141F780 | D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 8141F784 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141F788 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8141F78C | D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 8141F790 | D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 8141F794 | D3 C1 00 3C */	stfs f30, 0x3c(r1)
/* 8141F798 | B0 01 00 40 */	sth r0, 0x40(r1)
/* 8141F79C | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8141F7A0 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8141F7A4 | 7D 89 03 A6 */	mtctr r12
/* 8141F7A8 | 4E 80 04 21 */	bctrl
/* 8141F7AC | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8141F7B0 | 7F C3 F3 78 */	mr r3, r30
/* 8141F7B4 | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8141F7B8 | 3B 80 00 00 */	li r28, 0x0
/* 8141F7BC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F7C0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8141F7C4 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141F7C8 | EF FF 00 2A */	fadds f31, f31, f0
/* 8141F7CC | 7D 89 03 A6 */	mtctr r12
/* 8141F7D0 | 4E 80 04 21 */	bctrl
/* 8141F7D4 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 8141F7D8 | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8141F7DC | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 8141F7E0 | FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 8141F7E4 | 41 82 00 6C */	beq .L_8141F850
/* 8141F7E8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F7EC | 7F C3 F3 78 */	mr r3, r30
/* 8141F7F0 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141F7F4 | 7D 89 03 A6 */	mtctr r12
/* 8141F7F8 | 4E 80 04 21 */	bctrl
/* 8141F7FC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F800 | C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8141F804 | C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8141F808 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141F80C | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8141F810 | EF A1 00 28 */	fsubs f29, f1, f0
/* 8141F814 | 7F C3 F3 78 */	mr r3, r30
/* 8141F818 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8141F81C | 7D 89 03 A6 */	mtctr r12
/* 8141F820 | 4E 80 04 21 */	bctrl
/* 8141F824 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8141F828 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8141F82C | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8141F830 | EC 1D 00 32 */	fmuls f0, f29, f0
/* 8141F834 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 8141F838 | EC 3F 00 72 */	fmuls f1, f31, f1
/* 8141F83C | EC 3C 08 2A */	fadds f1, f28, f1
/* 8141F840 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8141F844 | 4C 41 13 82 */	cror eq, gt, eq
/* 8141F848 | 40 82 00 08 */	bne .L_8141F850
/* 8141F84C | 3B 80 00 01 */	li r28, 0x1
.L_8141F850:
/* 8141F850 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8141F854 | 41 82 00 08 */	beq .L_8141F85C
/* 8141F858 | 3A C0 00 01 */	li r22, 0x1
.L_8141F85C:
/* 8141F85C | 7C 18 D0 40 */	cmplw r24, r26
/* 8141F860 | 41 82 00 18 */	beq .L_8141F878
/* 8141F864 | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 8141F868 | 28 00 00 2D */	cmplwi r0, 0x2d
/* 8141F86C | 40 82 00 0C */	bne .L_8141F878
/* 8141F870 | 7F 17 C3 78 */	mr r23, r24
/* 8141F874 | 9B AD 93 73 */	stb r29, lbl_816973B3@sda21(r0)
.L_8141F878:
/* 8141F878 | A4 1B 00 02 */	lhzu r0, 0x2(r27)
/* 8141F87C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8141F880 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141F884 | 40 82 FE E8 */	bne .L_8141F76C
.L_8141F888:
/* 8141F888 | 7C 18 D0 40 */	cmplw r24, r26
/* 8141F88C | 40 82 00 0C */	bne .L_8141F898
/* 8141F890 | 38 00 00 00 */	li r0, 0x0
/* 8141F894 | 98 0D 93 73 */	stb r0, lbl_816973B3@sda21(r0)
.L_8141F898:
/* 8141F898 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F89C | 7F C3 F3 78 */	mr r3, r30
/* 8141F8A0 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141F8A4 | 7D 89 03 A6 */	mtctr r12
/* 8141F8A8 | 4E 80 04 21 */	bctrl
/* 8141F8AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F8B0 | C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8141F8B4 | C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8141F8B8 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141F8BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8141F8C0 | EF A1 00 28 */	fsubs f29, f1, f0
/* 8141F8C4 | 7F C3 F3 78 */	mr r3, r30
/* 8141F8C8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8141F8CC | 7D 89 03 A6 */	mtctr r12
/* 8141F8D0 | 4E 80 04 21 */	bctrl
/* 8141F8D4 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8141F8D8 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 8141F8DC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8141F8E0 | EC 1D 00 32 */	fmuls f0, f29, f0
/* 8141F8E4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8141F8E8 | EC 3F 00 72 */	fmuls f1, f31, f1
/* 8141F8EC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8141F8F0 | 4C 41 13 82 */	cror eq, gt, eq
/* 8141F8F4 | 40 82 00 24 */	bne .L_8141F918
/* 8141F8F8 | 88 0D 93 73 */	lbz r0, lbl_816973B3@sda21(r0)
/* 8141F8FC | 3A C0 00 00 */	li r22, 0x0
/* 8141F900 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141F904 | 41 82 00 08 */	beq .L_8141F90C
/* 8141F908 | 3A C0 00 01 */	li r22, 0x1
.L_8141F90C:
/* 8141F90C | 2C 19 00 01 */	cmpwi r25, 0x1
/* 8141F910 | 40 82 00 08 */	bne .L_8141F918
/* 8141F914 | 3A C0 00 01 */	li r22, 0x1
.L_8141F918:
/* 8141F918 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8141F91C | 41 82 00 5C */	beq .L_8141F978
/* 8141F920 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141F924 | 7F C3 F3 78 */	mr r3, r30
/* 8141F928 | 7F E6 FB 78 */	mr r6, r31
/* 8141F92C | 7F 47 D3 78 */	mr r7, r26
/* 8141F930 | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8141F934 | 7F 08 C3 78 */	mr r8, r24
/* 8141F938 | 38 80 00 00 */	li r4, 0x0
/* 8141F93C | 38 A0 00 00 */	li r5, 0x0
/* 8141F940 | 7D 89 03 A6 */	mtctr r12
/* 8141F944 | 4E 80 04 21 */	bctrl
/* 8141F948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141F94C | 40 82 00 34 */	bne .L_8141F980
/* 8141F950 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8141F954 | 40 82 00 1C */	bne .L_8141F970
/* 8141F958 | 38 60 00 00 */	li r3, 0x0
/* 8141F95C | 38 18 00 01 */	addi r0, r24, 0x1
/* 8141F960 | 98 6D 93 73 */	stb r3, lbl_816973B3@sda21(r0)
/* 8141F964 | 38 60 00 01 */	li r3, 0x1
/* 8141F968 | 90 1E 01 B4 */	stw r0, 0x1b4(r30)
/* 8141F96C | 48 00 00 20 */	b .L_8141F98C
.L_8141F970:
/* 8141F970 | 7E F8 BB 78 */	mr r24, r23
/* 8141F974 | 48 00 00 0C */	b .L_8141F980
.L_8141F978:
/* 8141F978 | 38 00 00 00 */	li r0, 0x0
/* 8141F97C | 98 0D 93 73 */	stb r0, lbl_816973B3@sda21(r0)
.L_8141F980:
/* 8141F980 | 38 18 00 01 */	addi r0, r24, 0x1
/* 8141F984 | 38 60 00 00 */	li r3, 0x0
/* 8141F988 | 90 1E 01 B4 */	stw r0, 0x1b4(r30)
.L_8141F98C:
/* 8141F98C | E3 E1 00 A8 */	psq_l f31, 0xa8(r1), 0, qr0
/* 8141F990 | CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8141F994 | E3 C1 00 98 */	psq_l f30, 0x98(r1), 0, qr0
/* 8141F998 | CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8141F99C | E3 A1 00 88 */	psq_l f29, 0x88(r1), 0, qr0
/* 8141F9A0 | CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8141F9A4 | E3 81 00 78 */	psq_l f28, 0x78(r1), 0, qr0
/* 8141F9A8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8141F9AC | CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8141F9B0 | 48 1D 9B 49 */	bl _restgpr_22
/* 8141F9B4 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8141F9B8 | 7C 08 03 A6 */	mtlr r0
/* 8141F9BC | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8141F9C0 | 4E 80 00 20 */	blr
.endfn doWordWrap__Q39textinput9inputform4BaseFPCwUlf

# .text:0x3E54 | 0x8141F9C4 | size: 0x20
# textinput::textdrawer::Base::getDrawCacheStartPos() const
.fn getDrawCacheStartPos__Q39textinput10textdrawer4BaseCFv, global
/* 8141F9C4 | 88 03 00 E4 */	lbz r0, 0xe4(r3)
/* 8141F9C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141F9CC | 41 82 00 0C */	beq .L_8141F9D8
/* 8141F9D0 | 80 63 00 DC */	lwz r3, 0xdc(r3)
/* 8141F9D4 | 4E 80 00 20 */	blr
.L_8141F9D8:
/* 8141F9D8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8141F9DC | 38 63 FF FF */	subi r3, r3, 0x1
/* 8141F9E0 | 4E 80 00 20 */	blr
.endfn getDrawCacheStartPos__Q39textinput10textdrawer4BaseCFv

# .text:0x3E74 | 0x8141F9E4 | size: 0xCC
# textinput::inputform::Base::isOverLine(const textinput::textdrawer::Base::DrawInfo&)
.fn isOverLine__Q39textinput9inputform4BaseFRCQ49textinput10textdrawer4Base8DrawInfo, global
/* 8141F9E4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8141F9E8 | 7C 08 02 A6 */	mflr r0
/* 8141F9EC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8141F9F0 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8141F9F4 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8141F9F8 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8141F9FC | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 8141FA00 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141FA04 | 7C 9F 23 78 */	mr r31, r4
/* 8141FA08 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8141FA0C | 7C 7E 1B 78 */	mr r30, r3
/* 8141FA10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FA14 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141FA18 | 7D 89 03 A6 */	mtctr r12
/* 8141FA1C | 4E 80 04 21 */	bctrl
/* 8141FA20 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8141FA24 | C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8141FA28 | C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8141FA2C | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141FA30 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8141FA34 | EF E1 00 28 */	fsubs f31, f1, f0
/* 8141FA38 | 7F C3 F3 78 */	mr r3, r30
/* 8141FA3C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8141FA40 | 7D 89 03 A6 */	mtctr r12
/* 8141FA44 | 4E 80 04 21 */	bctrl
/* 8141FA48 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8141FA4C | C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 8141FA50 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8141FA54 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8141FA58 | EF C1 00 28 */	fsubs f30, f1, f0
/* 8141FA5C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8141FA60 | 48 0F 86 D5 */	bl fn_81518134
/* 8141FA64 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8141FA68 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 8141FA6C | EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8141FA70 | EC 1F 00 32 */	fmuls f0, f31, f0
/* 8141FA74 | EC 21 10 2A */	fadds f1, f1, f2
/* 8141FA78 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8141FA7C | 4C 41 13 82 */	cror eq, gt, eq
/* 8141FA80 | 7C 60 00 26 */	mfcr r3
/* 8141FA84 | 54 63 1F FE */	extrwi r3, r3, 1, 2
/* 8141FA88 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8141FA8C | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8141FA90 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 8141FA94 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8141FA98 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141FA9C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8141FAA0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8141FAA4 | 7C 08 03 A6 */	mtlr r0
/* 8141FAA8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8141FAAC | 4E 80 00 20 */	blr
.endfn isOverLine__Q39textinput9inputform4BaseFRCQ49textinput10textdrawer4Base8DrawInfo

# .text:0x3F40 | 0x8141FAB0 | size: 0x1CC
# textinput::inputform::Base::doBeforeDrawProcess(const wchar_t*, unsigned long, const textinput::textdrawer::Base::DrawInfo&)
.fn doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo, global
/* 8141FAB0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8141FAB4 | 7C 08 02 A6 */	mflr r0
/* 8141FAB8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8141FABC | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8141FAC0 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 8141FAC4 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8141FAC8 | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 8141FACC | DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8141FAD0 | F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 8141FAD4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8141FAD8 | 7C DF 33 78 */	mr r31, r6
/* 8141FADC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8141FAE0 | 7C BE 2B 78 */	mr r30, r5
/* 8141FAE4 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8141FAE8 | 7C 9D 23 78 */	mr r29, r4
/* 8141FAEC | 93 81 00 20 */	stw r28, 0x20(r1)
/* 8141FAF0 | 7C 7C 1B 78 */	mr r28, r3
/* 8141FAF4 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141FAF8 | 48 0F 86 3D */	bl fn_81518134
/* 8141FAFC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8141FB00 | 7F 83 E3 78 */	mr r3, r28
/* 8141FB04 | 7F A4 EB 78 */	mr r4, r29
/* 8141FB08 | 7F C5 F3 78 */	mr r5, r30
/* 8141FB0C | 81 8C 01 70 */	lwz r12, 0x170(r12)
/* 8141FB10 | 7D 89 03 A6 */	mtctr r12
/* 8141FB14 | 4E 80 04 21 */	bctrl
/* 8141FB18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141FB1C | 41 82 00 18 */	beq .L_8141FB34
/* 8141FB20 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8141FB24 | 7F 83 E3 78 */	mr r3, r28
/* 8141FB28 | 81 8C 01 58 */	lwz r12, 0x158(r12)
/* 8141FB2C | 7D 89 03 A6 */	mtctr r12
/* 8141FB30 | 4E 80 04 21 */	bctrl
.L_8141FB34:
/* 8141FB34 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8141FB38 | 7F 83 E3 78 */	mr r3, r28
/* 8141FB3C | 7F E4 FB 78 */	mr r4, r31
/* 8141FB40 | 81 8C 01 60 */	lwz r12, 0x160(r12)
/* 8141FB44 | 7D 89 03 A6 */	mtctr r12
/* 8141FB48 | 4E 80 04 21 */	bctrl
/* 8141FB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8141FB50 | 41 82 00 64 */	beq .L_8141FBB4
/* 8141FB54 | 80 9C 00 B0 */	lwz r4, 0xb0(r28)
/* 8141FB58 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FB5C | 38 04 00 01 */	addi r0, r4, 0x1
/* 8141FB60 | 90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 8141FB64 | 81 9C 00 5C */	lwz r12, 0x5c(r28)
/* 8141FB68 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8141FB6C | 7D 89 03 A6 */	mtctr r12
/* 8141FB70 | 4E 80 04 21 */	bctrl
/* 8141FB74 | FF E0 08 90 */	fmr f31, f1
/* 8141FB78 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FB7C | 48 0F 85 C1 */	bl fn_8151813C
/* 8141FB80 | EC 21 F8 2A */	fadds f1, f1, f31
/* 8141FB84 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FB88 | 48 0F 85 85 */	bl fn_8151810C
/* 8141FB8C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8141FB90 | 7F 83 E3 78 */	mr r3, r28
/* 8141FB94 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141FB98 | 7D 89 03 A6 */	mtctr r12
/* 8141FB9C | 4E 80 04 21 */	bctrl
/* 8141FBA0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8141FBA4 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FBA8 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8141FBAC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8141FBB0 | 48 0F 85 55 */	bl fn_81518104
.L_8141FBB4:
/* 8141FBB4 | 80 7C 01 64 */	lwz r3, 0x164(r28)
/* 8141FBB8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8141FBBC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8141FBC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FBC4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8141FBC8 | 7D 89 03 A6 */	mtctr r12
/* 8141FBCC | 4E 80 04 21 */	bctrl
/* 8141FBD0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8141FBD4 | 7C 1E 00 40 */	cmplw r30, r0
/* 8141FBD8 | 41 80 00 6C */	blt .L_8141FC44
/* 8141FBDC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8141FBE0 | 7C 1E 00 40 */	cmplw r30, r0
/* 8141FBE4 | 40 80 00 60 */	bge .L_8141FC44
/* 8141FBE8 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FBEC | 48 0F 85 49 */	bl fn_81518134
/* 8141FBF0 | C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 8141FBF4 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FBF8 | EF E0 08 2A */	fadds f31, f0, f1
/* 8141FBFC | 48 0F 85 41 */	bl fn_8151813C
/* 8141FC00 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 8141FC04 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FC08 | EF C0 08 2A */	fadds f30, f0, f1
/* 8141FC0C | 48 0F 85 29 */	bl fn_81518134
/* 8141FC10 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 8141FC14 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 8141FC18 | EF A0 08 2A */	fadds f29, f0, f1
/* 8141FC1C | 48 0F 85 21 */	bl fn_8151813C
/* 8141FC20 | C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8141FC24 | FC 40 F0 90 */	fmr f2, f30
/* 8141FC28 | FC 60 E8 90 */	fmr f3, f29
/* 8141FC2C | C0 A2 89 28 */	lfs f5, lbl_81694D28@sda21(r0)
/* 8141FC30 | EC 80 08 2A */	fadds f4, f0, f1
/* 8141FC34 | C0 C2 89 38 */	lfs f6, lbl_81694D38@sda21(r0)
/* 8141FC38 | FC 20 F8 90 */	fmr f1, f31
/* 8141FC3C | 38 7C 01 C0 */	addi r3, r28, 0x1c0
/* 8141FC40 | 48 02 59 51 */	bl drawBox___Q29textinput5debugFffffffR8_GXColor
.L_8141FC44:
/* 8141FC44 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 8141FC48 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8141FC4C | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 8141FC50 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8141FC54 | E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 8141FC58 | CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8141FC5C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8141FC60 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8141FC64 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8141FC68 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8141FC6C | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 8141FC70 | 7C 08 03 A6 */	mtlr r0
/* 8141FC74 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8141FC78 | 4E 80 00 20 */	blr
.endfn doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo

# .text:0x410C | 0x8141FC7C | size: 0x98
# textinput::inputform::Base::doLineFeed()
.fn doLineFeed__Q39textinput9inputform4BaseFv, global
/* 8141FC7C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8141FC80 | 7C 08 02 A6 */	mflr r0
/* 8141FC84 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8141FC88 | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8141FC8C | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 8141FC90 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8141FC94 | 7C 7F 1B 78 */	mr r31, r3
/* 8141FC98 | 80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 8141FC9C | 38 04 00 01 */	addi r0, r4, 0x1
/* 8141FCA0 | 90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8141FCA4 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 8141FCA8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8141FCAC | 7D 89 03 A6 */	mtctr r12
/* 8141FCB0 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8141FCB4 | 4E 80 04 21 */	bctrl
/* 8141FCB8 | FF E0 08 90 */	fmr f31, f1
/* 8141FCBC | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8141FCC0 | 48 0F 84 7D */	bl fn_8151813C
/* 8141FCC4 | EC 21 F8 2A */	fadds f1, f1, f31
/* 8141FCC8 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8141FCCC | 48 0F 84 41 */	bl fn_8151810C
/* 8141FCD0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8141FCD4 | 7F E3 FB 78 */	mr r3, r31
/* 8141FCD8 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8141FCDC | 7D 89 03 A6 */	mtctr r12
/* 8141FCE0 | 4E 80 04 21 */	bctrl
/* 8141FCE4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8141FCE8 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8141FCEC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8141FCF0 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 8141FCF4 | 48 0F 84 11 */	bl fn_81518104
/* 8141FCF8 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 8141FCFC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8141FD00 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8141FD04 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8141FD08 | 7C 08 03 A6 */	mtlr r0
/* 8141FD0C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8141FD10 | 4E 80 00 20 */	blr
.endfn doLineFeed__Q39textinput9inputform4BaseFv

# .text:0x41A4 | 0x8141FD14 | size: 0x764
# textinput::inputform::Base::onCursor(textinput::textdrawer::Base::CursorPos*)
.fn onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos, global
/* 8141FD14 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8141FD18 | 7C 08 02 A6 */	mflr r0
/* 8141FD1C | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8141FD20 | DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8141FD24 | F3 E1 01 18 */	psq_st f31, 0x118(r1), 0, qr0
/* 8141FD28 | DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8141FD2C | F3 C1 01 08 */	psq_st f30, 0x108(r1), 0, qr0
/* 8141FD30 | DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 8141FD34 | F3 A1 00 F8 */	psq_st f29, 0xf8(r1), 0, qr0
/* 8141FD38 | DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 8141FD3C | F3 81 00 E8 */	psq_st f28, 0xe8(r1), 0, qr0
/* 8141FD40 | DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 8141FD44 | F3 61 00 D8 */	psq_st f27, 0xd8(r1), 0, qr0
/* 8141FD48 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8141FD4C | 48 1D 97 6D */	bl _savegpr_25
/* 8141FD50 | 7C 79 1B 78 */	mr r25, r3
/* 8141FD54 | 7C 9A 23 78 */	mr r26, r4
/* 8141FD58 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8141FD5C | 3B C0 00 00 */	li r30, 0x0
/* 8141FD60 | 38 99 00 10 */	addi r4, r25, 0x10
/* 8141FD64 | 48 0F 7F 9D */	bl fn_81517D00
/* 8141FD68 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FD6C | 48 0F 70 C9 */	bl fn_81516E34
/* 8141FD70 | 80 79 01 64 */	lwz r3, 0x164(r25)
/* 8141FD74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FD78 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8141FD7C | 7D 89 03 A6 */	mtctr r12
/* 8141FD80 | 4E 80 04 21 */	bctrl
/* 8141FD84 | 7C 7D 1B 78 */	mr r29, r3
/* 8141FD88 | 80 79 01 64 */	lwz r3, 0x164(r25)
/* 8141FD8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FD90 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8141FD94 | 7D 89 03 A6 */	mtctr r12
/* 8141FD98 | 4E 80 04 21 */	bctrl
/* 8141FD9C | 88 19 01 78 */	lbz r0, 0x178(r25)
/* 8141FDA0 | 7C 7F 1B 78 */	mr r31, r3
/* 8141FDA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141FDA8 | 41 82 02 28 */	beq .L_8141FFD0
/* 8141FDAC | 80 19 01 74 */	lwz r0, 0x174(r25)
/* 8141FDB0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8141FDB4 | 41 82 02 1C */	beq .L_8141FFD0
/* 8141FDB8 | 80 79 01 6C */	lwz r3, 0x16c(r25)
/* 8141FDBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FDC0 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8141FDC4 | 7D 89 03 A6 */	mtctr r12
/* 8141FDC8 | 4E 80 04 21 */	bctrl
/* 8141FDCC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8141FDD0 | 7C 7C 1B 78 */	mr r28, r3
/* 8141FDD4 | 7F 23 CB 78 */	mr r3, r25
/* 8141FDD8 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141FDDC | 7D 89 03 A6 */	mtctr r12
/* 8141FDE0 | 4E 80 04 21 */	bctrl
/* 8141FDE4 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8141FDE8 | 40 82 00 34 */	bne .L_8141FE1C
/* 8141FDEC | 88 19 01 F5 */	lbz r0, 0x1f5(r25)
/* 8141FDF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141FDF4 | 41 82 00 0C */	beq .L_8141FE00
/* 8141FDF8 | 38 00 00 01 */	li r0, 0x1
/* 8141FDFC | 98 19 01 F4 */	stb r0, 0x1f4(r25)
.L_8141FE00:
/* 8141FE00 | 88 79 01 F5 */	lbz r3, 0x1f5(r25)
/* 8141FE04 | 88 19 01 F4 */	lbz r0, 0x1f4(r25)
/* 8141FE08 | 7C 60 03 79 */	or. r0, r3, r0
/* 8141FE0C | 40 82 00 10 */	bne .L_8141FE1C
/* 8141FE10 | 80 79 01 6C */	lwz r3, 0x16c(r25)
/* 8141FE14 | 48 01 44 59 */	bl getCurrentInput__Q39textinput8tistring6WithZiFv
/* 8141FE18 | 7C 7C 1B 78 */	mr r28, r3
.L_8141FE1C:
/* 8141FE1C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8141FE20 | 41 82 01 B0 */	beq .L_8141FFD0
/* 8141FE24 | 80 0D AC C8 */	lwz r0, lbl_81698D08@sda21(r0)
/* 8141FE28 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FE2C | 38 81 00 2C */	addi r4, r1, 0x2c
/* 8141FE30 | 3B 60 00 00 */	li r27, 0x0
/* 8141FE34 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8141FE38 | 48 0F 7B E9 */	bl fn_81517A20
/* 8141FE3C | C3 C2 89 28 */	lfs f30, lbl_81694D28@sda21(r0)
/* 8141FE40 | 48 00 01 84 */	b .L_8141FFC4
.L_8141FE44:
/* 8141FE44 | 88 79 01 F5 */	lbz r3, 0x1f5(r25)
/* 8141FE48 | 88 19 01 F4 */	lbz r0, 0x1f4(r25)
/* 8141FE4C | 7C 60 03 79 */	or. r0, r3, r0
/* 8141FE50 | 40 82 00 44 */	bne .L_8141FE94
/* 8141FE54 | 80 79 01 6C */	lwz r3, 0x16c(r25)
/* 8141FE58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FE5C | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8141FE60 | 7D 89 03 A6 */	mtctr r12
/* 8141FE64 | 4E 80 04 21 */	bctrl
/* 8141FE68 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8141FE6C | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8141FE70 | 7C 00 18 40 */	cmplw r0, r3
/* 8141FE74 | 40 82 00 20 */	bne .L_8141FE94
/* 8141FE78 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FE7C | 3B C0 00 01 */	li r30, 0x1
/* 8141FE80 | 48 0F 82 B5 */	bl fn_81518134
/* 8141FE84 | D0 3A 00 04 */	stfs f1, 0x4(r26)
/* 8141FE88 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FE8C | 48 0F 82 B1 */	bl fn_8151813C
/* 8141FE90 | D0 3A 00 08 */	stfs f1, 0x8(r26)
.L_8141FE94:
/* 8141FE94 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8141FE98 | 7F 23 CB 78 */	mr r3, r25
/* 8141FE9C | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8141FEA0 | 7D 89 03 A6 */	mtctr r12
/* 8141FEA4 | 4E 80 04 21 */	bctrl
/* 8141FEA8 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8141FEAC | 41 82 00 64 */	beq .L_8141FF10
/* 8141FEB0 | 80 79 01 6C */	lwz r3, 0x16c(r25)
/* 8141FEB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8141FEB8 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8141FEBC | 7D 89 03 A6 */	mtctr r12
/* 8141FEC0 | 4E 80 04 21 */	bctrl
/* 8141FEC4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8141FEC8 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8141FECC | 7C 03 00 40 */	cmplw r3, r0
/* 8141FED0 | 41 81 00 40 */	bgt .L_8141FF10
/* 8141FED4 | 88 79 01 F5 */	lbz r3, 0x1f5(r25)
/* 8141FED8 | 88 19 01 F4 */	lbz r0, 0x1f4(r25)
/* 8141FEDC | 7C 60 03 79 */	or. r0, r3, r0
/* 8141FEE0 | 41 82 00 1C */	beq .L_8141FEFC
/* 8141FEE4 | 80 0D AC D0 */	lwz r0, lbl_81698D10@sda21(r0)
/* 8141FEE8 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FEEC | 38 81 00 28 */	addi r4, r1, 0x28
/* 8141FEF0 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8141FEF4 | 48 0F 7B 2D */	bl fn_81517A20
/* 8141FEF8 | 48 00 00 18 */	b .L_8141FF10
.L_8141FEFC:
/* 8141FEFC | 80 0D AC CC */	lwz r0, lbl_81698D0C@sda21(r0)
/* 8141FF00 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FF04 | 38 81 00 24 */	addi r4, r1, 0x24
/* 8141FF08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8141FF0C | 48 0F 7B 15 */	bl fn_81517A20
.L_8141FF10:
/* 8141FF10 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8141FF14 | 28 00 FF FE */	cmplwi r0, 0xfffe
/* 8141FF18 | 40 82 00 18 */	bne .L_8141FF30
/* 8141FF1C | 80 0D AC C8 */	lwz r0, lbl_81698D08@sda21(r0)
/* 8141FF20 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FF24 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8141FF28 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8141FF2C | 48 0F 7A F5 */	bl fn_81517A20
.L_8141FF30:
/* 8141FF30 | D3 C1 00 98 */	stfs f30, 0x98(r1)
/* 8141FF34 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FF38 | 38 81 00 98 */	addi r4, r1, 0x98
/* 8141FF3C | D3 C1 00 9C */	stfs f30, 0x9c(r1)
/* 8141FF40 | D3 C1 00 A0 */	stfs f30, 0xa0(r1)
/* 8141FF44 | D3 C1 00 A4 */	stfs f30, 0xa4(r1)
/* 8141FF48 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8141FF4C | B0 01 00 A8 */	sth r0, 0xa8(r1)
/* 8141FF50 | 81 99 00 5C */	lwz r12, 0x5c(r25)
/* 8141FF54 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8141FF58 | 7D 89 03 A6 */	mtctr r12
/* 8141FF5C | 4E 80 04 21 */	bctrl
/* 8141FF60 | C0 61 00 A0 */	lfs f3, 0xa0(r1)
/* 8141FF64 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FF68 | C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8141FF6C | C0 39 01 28 */	lfs f1, 0x128(r25)
/* 8141FF70 | C0 19 01 20 */	lfs f0, 0x120(r25)
/* 8141FF74 | EF E3 10 28 */	fsubs f31, f3, f2
/* 8141FF78 | EF A1 00 28 */	fsubs f29, f1, f0
/* 8141FF7C | 48 0F 81 B9 */	bl fn_81518134
/* 8141FF80 | EC 01 F8 2A */	fadds f0, f1, f31
/* 8141FF84 | FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8141FF88 | 4C 41 13 82 */	cror eq, gt, eq
/* 8141FF8C | 40 82 00 18 */	bne .L_8141FFA4
/* 8141FF90 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8141FF94 | 7F 23 CB 78 */	mr r3, r25
/* 8141FF98 | 81 8C 01 58 */	lwz r12, 0x158(r12)
/* 8141FF9C | 7D 89 03 A6 */	mtctr r12
/* 8141FFA0 | 4E 80 04 21 */	bctrl
.L_8141FFA4:
/* 8141FFA4 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 8141FFA8 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FFAC | 48 0F 80 1D */	bl fn_81517FC8
/* 8141FFB0 | C0 39 00 B8 */	lfs f1, 0xb8(r25)
/* 8141FFB4 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FFB8 | 48 0F 81 5D */	bl fn_81518114
/* 8141FFBC | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8141FFC0 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8141FFC4:
/* 8141FFC4 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8141FFC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141FFCC | 40 82 FE 78 */	bne .L_8141FE44
.L_8141FFD0:
/* 8141FFD0 | 80 19 01 60 */	lwz r0, 0x160(r25)
/* 8141FFD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8141FFD8 | 40 82 01 EC */	bne .L_814201C4
/* 8141FFDC | 57 E0 04 3F */	clrlwi. r0, r31, 16
/* 8141FFE0 | 41 82 01 E4 */	beq .L_814201C4
/* 8141FFE4 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 8141FFE8 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8141FFEC | B3 E1 00 94 */	sth r31, 0x94(r1)
/* 8141FFF0 | 38 81 00 84 */	addi r4, r1, 0x84
/* 8141FFF4 | D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8141FFF8 | D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8141FFFC | D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 81420000 | D0 01 00 90 */	stfs f0, 0x90(r1)
/* 81420004 | 81 99 00 5C */	lwz r12, 0x5c(r25)
/* 81420008 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8142000C | 7D 89 03 A6 */	mtctr r12
/* 81420010 | 4E 80 04 21 */	bctrl
/* 81420014 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420018 | 48 0F 81 1D */	bl fn_81518134
/* 8142001C | C0 01 00 84 */	lfs f0, 0x84(r1)
/* 81420020 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420024 | EF A0 08 2A */	fadds f29, f0, f1
/* 81420028 | 48 0F 81 15 */	bl fn_8151813C
/* 8142002C | C0 01 00 88 */	lfs f0, 0x88(r1)
/* 81420030 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420034 | EF E0 08 2A */	fadds f31, f0, f1
/* 81420038 | 48 0F 80 FD */	bl fn_81518134
/* 8142003C | C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 81420040 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420044 | EF 80 08 2A */	fadds f28, f0, f1
/* 81420048 | 48 0F 80 F5 */	bl fn_8151813C
/* 8142004C | FF C0 08 90 */	fmr f30, f1
/* 81420050 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420054 | 48 0F 7E 95 */	bl fn_81517EE8
/* 81420058 | 88 19 01 C8 */	lbz r0, 0x1c8(r25)
/* 8142005C | EC 81 F0 2A */	fadds f4, f1, f30
/* 81420060 | 38 6D 93 5C */	li r3, lbl_8169739C@sda21
/* 81420064 | FC 20 E8 90 */	fmr f1, f29
/* 81420068 | 98 03 00 03 */	stb r0, 0x3(r3)
/* 8142006C | FC 40 F8 90 */	fmr f2, f31
/* 81420070 | FC 60 E0 90 */	fmr f3, f28
/* 81420074 | C0 A2 89 28 */	lfs f5, lbl_81694D28@sda21(r0)
/* 81420078 | 38 6D 93 5C */	li r3, lbl_8169739C@sda21
/* 8142007C | C0 C2 89 38 */	lfs f6, lbl_81694D38@sda21(r0)
/* 81420080 | 48 02 55 11 */	bl drawBox___Q29textinput5debugFffffffR8_GXColor
/* 81420084 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420088 | 48 0F 6D AD */	bl fn_81516E34
/* 8142008C | 88 19 01 CC */	lbz r0, 0x1cc(r25)
/* 81420090 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420094 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81420098 | 98 01 00 1C */	stb r0, 0x1c(r1)
/* 8142009C | 88 19 01 CD */	lbz r0, 0x1cd(r25)
/* 814200A0 | 98 01 00 1D */	stb r0, 0x1d(r1)
/* 814200A4 | 88 19 01 CE */	lbz r0, 0x1ce(r25)
/* 814200A8 | 98 01 00 1E */	stb r0, 0x1e(r1)
/* 814200AC | 88 19 01 CF */	lbz r0, 0x1cf(r25)
/* 814200B0 | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 814200B4 | 48 0F 79 6D */	bl fn_81517A20
/* 814200B8 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814200BC | 2C 00 30 00 */	cmpwi r0, 0x3000
/* 814200C0 | 41 82 00 14 */	beq .L_814200D4
/* 814200C4 | 40 80 00 E8 */	bge .L_814201AC
/* 814200C8 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814200CC | 41 82 00 08 */	beq .L_814200D4
/* 814200D0 | 48 00 00 DC */	b .L_814201AC
.L_814200D4:
/* 814200D4 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 814200D8 | 3F 40 00 01 */	lis r26, 0x1
/* 814200DC | 38 1A E0 57 */	subi r0, r26, 0x1fa9
/* 814200E0 | B3 E1 00 80 */	sth r31, 0x80(r1)
/* 814200E4 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814200E8 | 38 81 00 70 */	addi r4, r1, 0x70
/* 814200EC | D0 01 00 70 */	stfs f0, 0x70(r1)
/* 814200F0 | D0 01 00 74 */	stfs f0, 0x74(r1)
/* 814200F4 | D0 01 00 78 */	stfs f0, 0x78(r1)
/* 814200F8 | D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 814200FC | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 81420100 | D0 01 00 60 */	stfs f0, 0x60(r1)
/* 81420104 | D0 01 00 64 */	stfs f0, 0x64(r1)
/* 81420108 | D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8142010C | B0 01 00 6C */	sth r0, 0x6c(r1)
/* 81420110 | 81 99 00 5C */	lwz r12, 0x5c(r25)
/* 81420114 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81420118 | 7D 89 03 A6 */	mtctr r12
/* 8142011C | 4E 80 04 21 */	bctrl
/* 81420120 | 81 99 00 5C */	lwz r12, 0x5c(r25)
/* 81420124 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420128 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 8142012C | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81420130 | 7D 89 03 A6 */	mtctr r12
/* 81420134 | 4E 80 04 21 */	bctrl
/* 81420138 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142013C | 7F 23 CB 78 */	mr r3, r25
/* 81420140 | C0 61 00 64 */	lfs f3, 0x64(r1)
/* 81420144 | C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 81420148 | C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8142014C | C0 01 00 70 */	lfs f0, 0x70(r1)
/* 81420150 | EF A3 10 28 */	fsubs f29, f3, f2
/* 81420154 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81420158 | EF C1 00 28 */	fsubs f30, f1, f0
/* 8142015C | 7D 89 03 A6 */	mtctr r12
/* 81420160 | 4E 80 04 21 */	bctrl
/* 81420164 | EC 5E E8 28 */	fsubs f2, f30, f29
/* 81420168 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 8142016C | C0 22 89 3C */	lfs f1, lbl_81694D3C@sda21(r0)
/* 81420170 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420174 | C0 01 00 40 */	lfs f0, 0x40(r1)
/* 81420178 | EC 22 00 72 */	fmuls f1, f2, f1
/* 8142017C | 90 81 00 44 */	stw r4, 0x44(r1)
/* 81420180 | EF 80 00 72 */	fmuls f28, f0, f1
/* 81420184 | FC 20 E0 90 */	fmr f1, f28
/* 81420188 | 48 0F 7F 8D */	bl fn_81518114
/* 8142018C | 38 1A E0 57 */	subi r0, r26, 0x1fa9
/* 81420190 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420194 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81420198 | 48 0F 7E 31 */	bl fn_81517FC8
/* 8142019C | FC 20 E0 90 */	fmr f1, f28
/* 814201A0 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814201A4 | 48 0F 7F 71 */	bl fn_81518114
/* 814201A8 | 48 00 00 10 */	b .L_814201B8
.L_814201AC:
/* 814201AC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814201B0 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814201B4 | 48 0F 7E 15 */	bl fn_81517FC8
.L_814201B8:
/* 814201B8 | C0 39 00 B8 */	lfs f1, 0xb8(r25)
/* 814201BC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814201C0 | 48 0F 7F 55 */	bl fn_81518114
.L_814201C4:
/* 814201C4 | 80 19 01 60 */	lwz r0, 0x160(r25)
/* 814201C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814201CC | 41 82 00 78 */	beq .L_81420244
/* 814201D0 | 80 79 01 64 */	lwz r3, 0x164(r25)
/* 814201D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814201D8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 814201DC | 7D 89 03 A6 */	mtctr r12
/* 814201E0 | 4E 80 04 21 */	bctrl
/* 814201E4 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814201E8 | 7C 7A 1B 78 */	mr r26, r3
/* 814201EC | 41 82 00 58 */	beq .L_81420244
/* 814201F0 | 80 0D AC C0 */	lwz r0, lbl_81698D00@sda21(r0)
/* 814201F4 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814201F8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814201FC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81420200 | 48 0F 78 21 */	bl fn_81517A20
/* 81420204 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 81420208 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8142020C | 40 82 00 20 */	bne .L_8142022C
/* 81420210 | 80 0D AC D8 */	lwz r0, lbl_81698D18@sda21(r0)
/* 81420214 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420218 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8142021C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81420220 | 48 0F 78 01 */	bl fn_81517A20
/* 81420224 | 3C 60 00 01 */	lis r3, 0x1
/* 81420228 | 3B 43 E0 57 */	subi r26, r3, 0x1fa9
.L_8142022C:
/* 8142022C | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420230 | 57 44 04 3E */	clrlwi r4, r26, 16
/* 81420234 | 48 0F 7D 95 */	bl fn_81517FC8
/* 81420238 | C0 39 00 B8 */	lfs f1, 0xb8(r25)
/* 8142023C | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420240 | 48 0F 7E D5 */	bl fn_81518114
.L_81420244:
/* 81420244 | C3 C2 89 28 */	lfs f30, lbl_81694D28@sda21(r0)
/* 81420248 | 3B 4D 93 58 */	li r26, lbl_81697398@sda21
/* 8142024C | 48 00 01 C8 */	b .L_81420414
.L_81420250:
/* 81420250 | 88 19 01 78 */	lbz r0, 0x178(r25)
/* 81420254 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81420258 | 41 82 00 10 */	beq .L_81420268
/* 8142025C | 7F 63 DB 78 */	mr r3, r27
/* 81420260 | 48 01 95 7D */	bl HankakuToZenkaku__Q29textinput4utilFw
/* 81420264 | 7C 7B 1B 78 */	mr r27, r3
.L_81420268:
/* 81420268 | D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 8142026C | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420270 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81420274 | D3 C1 00 4C */	stfs f30, 0x4c(r1)
/* 81420278 | D3 C1 00 50 */	stfs f30, 0x50(r1)
/* 8142027C | D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 81420280 | B3 61 00 58 */	sth r27, 0x58(r1)
/* 81420284 | 81 99 00 5C */	lwz r12, 0x5c(r25)
/* 81420288 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8142028C | 7D 89 03 A6 */	mtctr r12
/* 81420290 | 4E 80 04 21 */	bctrl
/* 81420294 | 80 19 01 F0 */	lwz r0, 0x1f0(r25)
/* 81420298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142029C | 40 82 00 B0 */	bne .L_8142034C
/* 814202A0 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814202A4 | 48 0F 7E 91 */	bl fn_81518134
/* 814202A8 | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 814202AC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814202B0 | EF 80 08 2A */	fadds f28, f0, f1
/* 814202B4 | 48 0F 7E 89 */	bl fn_8151813C
/* 814202B8 | C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 814202BC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814202C0 | EF A0 08 2A */	fadds f29, f0, f1
/* 814202C4 | 48 0F 7E 71 */	bl fn_81518134
/* 814202C8 | C0 01 00 50 */	lfs f0, 0x50(r1)
/* 814202CC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814202D0 | EF 60 08 2A */	fadds f27, f0, f1
/* 814202D4 | 48 0F 7E 69 */	bl fn_8151813C
/* 814202D8 | FF E0 08 90 */	fmr f31, f1
/* 814202DC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814202E0 | 48 0F 7C 09 */	bl fn_81517EE8
/* 814202E4 | 88 19 01 C8 */	lbz r0, 0x1c8(r25)
/* 814202E8 | EC 81 F8 2A */	fadds f4, f1, f31
/* 814202EC | FC 20 E0 90 */	fmr f1, f28
/* 814202F0 | C0 A2 89 28 */	lfs f5, lbl_81694D28@sda21(r0)
/* 814202F4 | FC 40 E8 90 */	fmr f2, f29
/* 814202F8 | 98 1A 00 03 */	stb r0, 0x3(r26)
/* 814202FC | FC 60 D8 90 */	fmr f3, f27
/* 81420300 | C0 C2 89 38 */	lfs f6, lbl_81694D38@sda21(r0)
/* 81420304 | 38 6D 93 58 */	li r3, lbl_81697398@sda21
/* 81420308 | 48 02 52 89 */	bl drawBox___Q29textinput5debugFffffffR8_GXColor
/* 8142030C | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420310 | 48 0F 6B 25 */	bl fn_81516E34
/* 81420314 | 88 B9 01 C8 */	lbz r5, 0x1c8(r25)
/* 81420318 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8142031C | 88 19 01 CC */	lbz r0, 0x1cc(r25)
/* 81420320 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81420324 | 98 B9 01 CF */	stb r5, 0x1cf(r25)
/* 81420328 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 8142032C | 88 19 01 CD */	lbz r0, 0x1cd(r25)
/* 81420330 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 81420334 | 88 19 01 CE */	lbz r0, 0x1ce(r25)
/* 81420338 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 8142033C | 88 19 01 CF */	lbz r0, 0x1cf(r25)
/* 81420340 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 81420344 | 48 0F 76 DD */	bl fn_81517A20
/* 81420348 | 48 00 00 B0 */	b .L_814203F8
.L_8142034C:
/* 8142034C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81420350 | 40 82 00 A8 */	bne .L_814203F8
/* 81420354 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420358 | 48 0F 6A DD */	bl fn_81516E34
/* 8142035C | 88 19 01 C8 */	lbz r0, 0x1c8(r25)
/* 81420360 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420364 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81420368 | 98 19 01 CF */	stb r0, 0x1cf(r25)
/* 8142036C | 80 0D AC C8 */	lwz r0, lbl_81698D08@sda21(r0)
/* 81420370 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81420374 | 48 0F 76 AD */	bl fn_81517A20
/* 81420378 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142037C | 7F 23 CB 78 */	mr r3, r25
/* 81420380 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81420384 | 81 8C 01 60 */	lwz r12, 0x160(r12)
/* 81420388 | 7D 89 03 A6 */	mtctr r12
/* 8142038C | 4E 80 04 21 */	bctrl
/* 81420390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81420394 | 41 82 00 64 */	beq .L_814203F8
/* 81420398 | 80 99 00 B0 */	lwz r4, 0xb0(r25)
/* 8142039C | 38 79 00 10 */	addi r3, r25, 0x10
/* 814203A0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814203A4 | 90 19 00 B0 */	stw r0, 0xb0(r25)
/* 814203A8 | 81 99 00 5C */	lwz r12, 0x5c(r25)
/* 814203AC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814203B0 | 7D 89 03 A6 */	mtctr r12
/* 814203B4 | 4E 80 04 21 */	bctrl
/* 814203B8 | FF E0 08 90 */	fmr f31, f1
/* 814203BC | 38 79 00 10 */	addi r3, r25, 0x10
/* 814203C0 | 48 0F 7D 7D */	bl fn_8151813C
/* 814203C4 | EC 21 F8 2A */	fadds f1, f1, f31
/* 814203C8 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814203CC | 48 0F 7D 41 */	bl fn_8151810C
/* 814203D0 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 814203D4 | 7F 23 CB 78 */	mr r3, r25
/* 814203D8 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 814203DC | 7D 89 03 A6 */	mtctr r12
/* 814203E0 | 4E 80 04 21 */	bctrl
/* 814203E4 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 814203E8 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814203EC | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 814203F0 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 814203F4 | 48 0F 7D 11 */	bl fn_81518104
.L_814203F8:
/* 814203F8 | 38 79 00 10 */	addi r3, r25, 0x10
/* 814203FC | 57 64 04 3E */	clrlwi r4, r27, 16
/* 81420400 | 48 0F 7B C9 */	bl fn_81517FC8
/* 81420404 | C0 39 00 B8 */	lfs f1, 0xb8(r25)
/* 81420408 | 38 79 00 10 */	addi r3, r25, 0x10
/* 8142040C | 48 0F 7D 09 */	bl fn_81518114
/* 81420410 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_81420414:
/* 81420414 | A3 7D 00 00 */	lhz r27, 0x0(r29)
/* 81420418 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8142041C | 40 82 FE 34 */	bne .L_81420250
/* 81420420 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 81420424 | 38 79 00 10 */	addi r3, r25, 0x10
/* 81420428 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8142042C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81420430 | 48 0F 75 F1 */	bl fn_81517A20
/* 81420434 | 7F C3 F3 78 */	mr r3, r30
/* 81420438 | E3 E1 01 18 */	psq_l f31, 0x118(r1), 0, qr0
/* 8142043C | CB E1 01 10 */	lfd f31, 0x110(r1)
/* 81420440 | E3 C1 01 08 */	psq_l f30, 0x108(r1), 0, qr0
/* 81420444 | CB C1 01 00 */	lfd f30, 0x100(r1)
/* 81420448 | E3 A1 00 F8 */	psq_l f29, 0xf8(r1), 0, qr0
/* 8142044C | CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 81420450 | E3 81 00 E8 */	psq_l f28, 0xe8(r1), 0, qr0
/* 81420454 | CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 81420458 | E3 61 00 D8 */	psq_l f27, 0xd8(r1), 0, qr0
/* 8142045C | CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 81420460 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81420464 | 48 1D 90 A1 */	bl _restgpr_25
/* 81420468 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8142046C | 7C 08 03 A6 */	mtlr r0
/* 81420470 | 38 21 01 20 */	addi r1, r1, 0x120
/* 81420474 | 4E 80 00 20 */	blr
.endfn onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos

# .text:0x4908 | 0x81420478 | size: 0x8
# textinput::tistring::Decolated::getKanaBuffer()
.fn getKanaBuffer__Q39textinput8tistring9DecolatedFv, global
/* 81420478 | 38 63 00 42 */	addi r3, r3, 0x42
/* 8142047C | 4E 80 00 20 */	blr
.endfn getKanaBuffer__Q39textinput8tistring9DecolatedFv

# .text:0x4910 | 0x81420480 | size: 0x8
# textinput::tistring::StringBase::getCandidate() const
.fn getCandidate__Q39textinput8tistring10StringBaseCFv, global
/* 81420480 | A0 63 00 10 */	lhz r3, 0x10(r3)
/* 81420484 | 4E 80 00 20 */	blr
.endfn getCandidate__Q39textinput8tistring10StringBaseCFv

# .text:0x4918 | 0x81420488 | size: 0x8
# textinput::tistring::WithZi::getInputStringLength()
.fn getInputStringLength__Q39textinput8tistring6WithZiFv, global
/* 81420488 | A0 63 00 88 */	lhz r3, 0x88(r3)
/* 8142048C | 4E 80 00 20 */	blr
.endfn getInputStringLength__Q39textinput8tistring6WithZiFv

# .text:0x4920 | 0x81420490 | size: 0x6C
# textinput::inputform::Base::getCursorPos()
.fn getCursorPos__Q39textinput9inputform4BaseFv, global
/* 81420490 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81420494 | 7C 08 02 A6 */	mflr r0
/* 81420498 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142049C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814204A0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814204A4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814204A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814204AC | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 814204B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814204B4 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 814204B8 | 7D 89 03 A6 */	mtctr r12
/* 814204BC | 4E 80 04 21 */	bctrl
/* 814204C0 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814204C4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814204C8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814204CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814204D0 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 814204D4 | 7D 89 03 A6 */	mtctr r12
/* 814204D8 | 4E 80 04 21 */	bctrl
/* 814204DC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814204E0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814204E4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814204E8 | 7C 63 02 14 */	add r3, r3, r0
/* 814204EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814204F0 | 7C 08 03 A6 */	mtlr r0
/* 814204F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814204F8 | 4E 80 00 20 */	blr
.endfn getCursorPos__Q39textinput9inputform4BaseFv

# .text:0x498C | 0x814204FC | size: 0x4
# textinput::tistring::WithAtok::getCursorPos(unsigned long*, unsigned long*)
.fn getCursorPos__Q39textinput8tistring8WithAtokFPUlPUl, global
/* 814204FC | 4E 80 00 20 */	blr
.endfn getCursorPos__Q39textinput8tistring8WithAtokFPUlPUl

# .text:0x4990 | 0x81420500 | size: 0x118
# textinput::inputform::Base::drawCursor(float, float)
.fn drawCursor__Q39textinput9inputform4BaseFff, global
/* 81420500 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81420504 | 7C 08 02 A6 */	mflr r0
/* 81420508 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8142050C | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 81420510 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 81420514 | 3C E0 43 30 */	lis r7, 0x4330
/* 81420518 | C8 82 89 80 */	lfd f4, lbl_81694D80@sda21(r0)
/* 8142051C | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81420520 | 7C 7F 1B 78 */	mr r31, r3
/* 81420524 | C0 62 89 70 */	lfs f3, lbl_81694D70@sda21(r0)
/* 81420528 | 88 03 01 C8 */	lbz r0, 0x1c8(r3)
/* 8142052C | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 81420530 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81420534 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81420538 | D0 23 01 7C */	stfs f1, 0x17c(r3)
/* 8142053C | EC 20 20 28 */	fsubs f1, f0, f4
/* 81420540 | C0 02 89 40 */	lfs f0, lbl_81694D40@sda21(r0)
/* 81420544 | D0 43 01 80 */	stfs f2, 0x180(r3)
/* 81420548 | 88 C2 89 6C */	lbz r6, lbl_81694D6C@sda21(r0)
/* 8142054C | EF E1 18 24 */	fdivs f31, f1, f3
/* 81420550 | 88 A2 89 6D */	lbz r5, lbl_81694D6D@sda21(r0)
/* 81420554 | 88 82 89 6E */	lbz r4, lbl_81694D6E@sda21(r0)
/* 81420558 | 88 02 89 6F */	lbz r0, lbl_81694D6F@sda21(r0)
/* 8142055C | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 81420560 | 98 A1 00 09 */	stb r5, 0x9(r1)
/* 81420564 | 98 81 00 0A */	stb r4, 0xa(r1)
/* 81420568 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8142056C | 80 03 02 14 */	lwz r0, 0x214(r3)
/* 81420570 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 81420574 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81420578 | C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8142057C | EC 21 20 28 */	fsubs f1, f1, f4
/* 81420580 | EC 20 00 72 */	fmuls f1, f0, f1
/* 81420584 | 48 0F E0 31 */	bl fn_8151E5B4
/* 81420588 | C0 42 89 74 */	lfs f2, lbl_81694D74@sda21(r0)
/* 8142058C | 38 7F 00 10 */	addi r3, r31, 0x10
/* 81420590 | EC 02 00 72 */	fmuls f0, f2, f1
/* 81420594 | EC 02 00 2A */	fadds f0, f2, f0
/* 81420598 | EC 1F 00 32 */	fmuls f0, f31, f0
/* 8142059C | FC 00 00 1E */	fctiwz f0, f0
/* 814205A0 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 814205A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814205A8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814205AC | C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 814205B0 | C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 814205B4 | EF E1 00 28 */	fsubs f31, f1, f0
/* 814205B8 | 48 0F 79 31 */	bl fn_81517EE8
/* 814205BC | C0 02 89 78 */	lfs f0, lbl_81694D78@sda21(r0)
/* 814205C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814205C4 | C0 DF 01 80 */	lfs f6, 0x180(r31)
/* 814205C8 | EC 00 F8 24 */	fdivs f0, f0, f31
/* 814205CC | C0 42 89 58 */	lfs f2, lbl_81694D58@sda21(r0)
/* 814205D0 | C0 A2 89 28 */	lfs f5, lbl_81694D28@sda21(r0)
/* 814205D4 | FC 00 00 1E */	fctiwz f0, f0
/* 814205D8 | EC 86 08 2A */	fadds f4, f6, f1
/* 814205DC | C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 814205E0 | D8 01 00 28 */	stfd f0, 0x28(r1)
/* 814205E4 | FC 60 08 90 */	fmr f3, f1
/* 814205E8 | EC 84 10 28 */	fsubs f4, f4, f2
/* 814205EC | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 814205F0 | EC 42 30 2A */	fadds f2, f2, f6
/* 814205F4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814205F8 | 48 02 53 0D */	bl drawLine___Q29textinput5debugFfffffUcR8_GXColor
/* 814205FC | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 81420600 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81420604 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 81420608 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8142060C | 7C 08 03 A6 */	mtlr r0
/* 81420610 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81420614 | 4E 80 00 20 */	blr
.endfn drawCursor__Q39textinput9inputform4BaseFff

# .text:0x4AA8 | 0x81420618 | size: 0x518
# textinput::inputform::Base::calcCursorPos(float, float)
.fn calcCursorPos__Q39textinput9inputform4BaseFff, global
/* 81420618 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8142061C | 7C 08 02 A6 */	mflr r0
/* 81420620 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 81420624 | DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 81420628 | F3 E1 00 E8 */	psq_st f31, 0xe8(r1), 0, qr0
/* 8142062C | DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 81420630 | F3 C1 00 D8 */	psq_st f30, 0xd8(r1), 0, qr0
/* 81420634 | DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 81420638 | F3 A1 00 C8 */	psq_st f29, 0xc8(r1), 0, qr0
/* 8142063C | DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 81420640 | F3 81 00 B8 */	psq_st f28, 0xb8(r1), 0, qr0
/* 81420644 | DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 81420648 | F3 61 00 A8 */	psq_st f27, 0xa8(r1), 0, qr0
/* 8142064C | DB 41 00 90 */	stfd f26, 0x90(r1)
/* 81420650 | F3 41 00 98 */	psq_st f26, 0x98(r1), 0, qr0
/* 81420654 | DB 21 00 80 */	stfd f25, 0x80(r1)
/* 81420658 | F3 21 00 88 */	psq_st f25, 0x88(r1), 0, qr0
/* 8142065C | DB 01 00 70 */	stfd f24, 0x70(r1)
/* 81420660 | F3 01 00 78 */	psq_st f24, 0x78(r1), 0, qr0
/* 81420664 | DA E1 00 60 */	stfd f23, 0x60(r1)
/* 81420668 | F2 E1 00 68 */	psq_st f23, 0x68(r1), 0, qr0
/* 8142066C | FF 00 08 90 */	fmr f24, f1
/* 81420670 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 81420674 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 81420678 | 93 A1 00 54 */	stw r29, 0x54(r1)
/* 8142067C | 7C 7D 1B 78 */	mr r29, r3
/* 81420680 | C0 03 01 88 */	lfs f0, 0x188(r3)
/* 81420684 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81420688 | EF 22 00 28 */	fsubs f25, f2, f0
/* 8142068C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420690 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81420694 | 7D 89 03 A6 */	mtctr r12
/* 81420698 | 4E 80 04 21 */	bctrl
/* 8142069C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814206A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814206A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814206A8 | 40 82 00 0C */	bne .L_814206B4
/* 814206AC | 38 60 00 00 */	li r3, 0x0
/* 814206B0 | 48 00 04 1C */	b .L_81420ACC
.L_814206B4:
/* 814206B4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814206B8 | 7F A3 EB 78 */	mr r3, r29
/* 814206BC | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 814206C0 | 7D 89 03 A6 */	mtctr r12
/* 814206C4 | 4E 80 04 21 */	bctrl
/* 814206C8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814206CC | C3 62 89 28 */	lfs f27, lbl_81694D28@sda21(r0)
/* 814206D0 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 814206D4 | 7F A3 EB 78 */	mr r3, r29
/* 814206D8 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 814206DC | FF 40 D8 90 */	fmr f26, f27
/* 814206E0 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 814206E4 | C3 81 00 28 */	lfs f28, 0x28(r1)
/* 814206E8 | 7D 89 03 A6 */	mtctr r12
/* 814206EC | 4E 80 04 21 */	bctrl
/* 814206F0 | 3B C0 00 00 */	li r30, 0x0
/* 814206F4 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 814206F8 | C3 A2 89 28 */	lfs f29, lbl_81694D28@sda21(r0)
/* 814206FC | 90 81 00 34 */	stw r4, 0x34(r1)
/* 81420700 | C3 C1 00 30 */	lfs f30, 0x30(r1)
/* 81420704 | 93 DD 01 B4 */	stw r30, 0x1b4(r29)
/* 81420708 | C3 E1 00 34 */	lfs f31, 0x34(r1)
/* 8142070C | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81420710 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81420714 | 9B CD 93 73 */	stb r30, lbl_816973B3@sda21(r0)
/* 81420718 | 48 00 03 5C */	b .L_81420A74
.L_8142071C:
/* 8142071C | D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 81420720 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81420724 | 38 81 00 38 */	addi r4, r1, 0x38
/* 81420728 | D3 A1 00 3C */	stfs f29, 0x3c(r1)
/* 8142072C | D3 A1 00 40 */	stfs f29, 0x40(r1)
/* 81420730 | D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 81420734 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81420738 | B0 01 00 48 */	sth r0, 0x48(r1)
/* 8142073C | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 81420740 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81420744 | 7D 89 03 A6 */	mtctr r12
/* 81420748 | 4E 80 04 21 */	bctrl
/* 8142074C | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 81420750 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 81420754 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 81420758 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8142075C | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 81420760 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 81420764 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420768 | EC 1F 00 32 */	fmuls f0, f31, f0
/* 8142076C | EC 22 08 28 */	fsubs f1, f2, f1
/* 81420770 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81420774 | EF 5B 00 2A */	fadds f26, f27, f0
/* 81420778 | EC 1E 00 72 */	fmuls f0, f30, f1
/* 8142077C | EE FC 00 2A */	fadds f23, f28, f0
/* 81420780 | 7D 89 03 A6 */	mtctr r12
/* 81420784 | 4E 80 04 21 */	bctrl
/* 81420788 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142078C | 7C 64 1B 78 */	mr r4, r3
/* 81420790 | FC 20 E0 90 */	fmr f1, f28
/* 81420794 | 7F A3 EB 78 */	mr r3, r29
/* 81420798 | 81 8C 01 70 */	lwz r12, 0x170(r12)
/* 8142079C | 7F C5 F3 78 */	mr r5, r30
/* 814207A0 | 7D 89 03 A6 */	mtctr r12
/* 814207A4 | 4E 80 04 21 */	bctrl
/* 814207A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814207AC | 41 82 00 A4 */	beq .L_81420850
/* 814207B0 | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 814207B4 | 4C 41 13 82 */	cror eq, gt, eq
/* 814207B8 | 40 82 00 28 */	bne .L_814207E0
/* 814207BC | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 814207C0 | 4C 40 13 82 */	cror eq, lt, eq
/* 814207C4 | 40 82 00 1C */	bne .L_814207E0
/* 814207C8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814207CC | 41 82 00 0C */	beq .L_814207D8
/* 814207D0 | 38 7E FF FF */	subi r3, r30, 0x1
/* 814207D4 | 48 00 02 F8 */	b .L_81420ACC
.L_814207D8:
/* 814207D8 | 7F C3 F3 78 */	mr r3, r30
/* 814207DC | 48 00 02 F0 */	b .L_81420ACC
.L_814207E0:
/* 814207E0 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 814207E4 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 814207E8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814207EC | 7D 89 03 A6 */	mtctr r12
/* 814207F0 | 4E 80 04 21 */	bctrl
/* 814207F4 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 814207F8 | 7F A3 EB 78 */	mr r3, r29
/* 814207FC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81420800 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81420804 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81420808 | EF 7B 00 2A */	fadds f27, f27, f0
/* 8142080C | 7D 89 03 A6 */	mtctr r12
/* 81420810 | 4E 80 04 21 */	bctrl
/* 81420814 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 81420818 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8142081C | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81420820 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81420824 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 81420828 | C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8142082C | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 81420830 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81420834 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 81420838 | EC 43 10 28 */	fsubs f2, f3, f2
/* 8142083C | C3 81 00 18 */	lfs f28, 0x18(r1)
/* 81420840 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81420844 | EF 5B 00 2A */	fadds f26, f27, f0
/* 81420848 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 8142084C | EE FC 00 2A */	fadds f23, f28, f0
.L_81420850:
/* 81420850 | C0 3D 01 28 */	lfs f1, 0x128(r29)
/* 81420854 | C0 1D 01 20 */	lfs f0, 0x120(r29)
/* 81420858 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8142085C | EC 1E 00 32 */	fmuls f0, f30, f0
/* 81420860 | FC 17 00 40 */	fcmpo cr0, f23, f0
/* 81420864 | 4C 41 13 82 */	cror eq, gt, eq
/* 81420868 | 40 82 00 94 */	bne .L_814208FC
/* 8142086C | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 81420870 | 4C 41 13 82 */	cror eq, gt, eq
/* 81420874 | 40 82 00 18 */	bne .L_8142088C
/* 81420878 | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 8142087C | 4C 40 13 82 */	cror eq, lt, eq
/* 81420880 | 40 82 00 0C */	bne .L_8142088C
/* 81420884 | 7F C3 F3 78 */	mr r3, r30
/* 81420888 | 48 00 02 44 */	b .L_81420ACC
.L_8142088C:
/* 8142088C | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 81420890 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81420894 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420898 | 7D 89 03 A6 */	mtctr r12
/* 8142089C | 4E 80 04 21 */	bctrl
/* 814208A0 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 814208A4 | 7F A3 EB 78 */	mr r3, r29
/* 814208A8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814208AC | EC 00 00 72 */	fmuls f0, f0, f1
/* 814208B0 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 814208B4 | EF 7B 00 2A */	fadds f27, f27, f0
/* 814208B8 | 7D 89 03 A6 */	mtctr r12
/* 814208BC | 4E 80 04 21 */	bctrl
/* 814208C0 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 814208C4 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 814208C8 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 814208CC | EC 21 00 28 */	fsubs f1, f1, f0
/* 814208D0 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 814208D4 | C0 61 00 40 */	lfs f3, 0x40(r1)
/* 814208D8 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 814208DC | EC 00 00 72 */	fmuls f0, f0, f1
/* 814208E0 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 814208E4 | EC 43 10 28 */	fsubs f2, f3, f2
/* 814208E8 | C3 81 00 10 */	lfs f28, 0x10(r1)
/* 814208EC | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814208F0 | EF 5B 00 2A */	fadds f26, f27, f0
/* 814208F4 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 814208F8 | EE FC 00 2A */	fadds f23, f28, f0
.L_814208FC:
/* 814208FC | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 81420900 | FC 18 00 40 */	fcmpo cr0, f24, f0
/* 81420904 | 4C 40 13 82 */	cror eq, lt, eq
/* 81420908 | 40 82 00 24 */	bne .L_8142092C
/* 8142090C | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 81420910 | 4C 41 13 82 */	cror eq, gt, eq
/* 81420914 | 40 82 00 18 */	bne .L_8142092C
/* 81420918 | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 8142091C | 4C 40 13 82 */	cror eq, lt, eq
/* 81420920 | 40 82 00 0C */	bne .L_8142092C
/* 81420924 | 7F C3 F3 78 */	mr r3, r30
/* 81420928 | 48 00 01 A4 */	b .L_81420ACC
.L_8142092C:
/* 8142092C | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81420930 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81420934 | 40 82 00 A8 */	bne .L_814209DC
/* 81420938 | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 8142093C | 4C 41 13 82 */	cror eq, gt, eq
/* 81420940 | 40 82 00 18 */	bne .L_81420958
/* 81420944 | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 81420948 | 4C 40 13 82 */	cror eq, lt, eq
/* 8142094C | 40 82 00 0C */	bne .L_81420958
/* 81420950 | 7F C3 F3 78 */	mr r3, r30
/* 81420954 | 48 00 01 78 */	b .L_81420ACC
.L_81420958:
/* 81420958 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 8142095C | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81420960 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420964 | 7D 89 03 A6 */	mtctr r12
/* 81420968 | 4E 80 04 21 */	bctrl
/* 8142096C | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 81420970 | 7F A3 EB 78 */	mr r3, r29
/* 81420974 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81420978 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8142097C | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81420980 | EF 7B 00 2A */	fadds f27, f27, f0
/* 81420984 | 7D 89 03 A6 */	mtctr r12
/* 81420988 | 4E 80 04 21 */	bctrl
/* 8142098C | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 81420990 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 81420994 | A0 1F 00 02 */	lhz r0, 0x2(r31)
/* 81420998 | EC 21 00 28 */	fsubs f1, f1, f0
/* 8142099C | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 814209A0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814209A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814209A8 | EC 00 00 72 */	fmuls f0, f0, f1
/* 814209AC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814209B0 | C3 81 00 08 */	lfs f28, 0x8(r1)
/* 814209B4 | EF 5B 00 2A */	fadds f26, f27, f0
/* 814209B8 | 40 82 00 8C */	bne .L_81420A44
/* 814209BC | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 814209C0 | 4C 41 13 82 */	cror eq, gt, eq
/* 814209C4 | 40 82 00 80 */	bne .L_81420A44
/* 814209C8 | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 814209CC | 4C 40 13 82 */	cror eq, lt, eq
/* 814209D0 | 40 82 00 74 */	bne .L_81420A44
/* 814209D4 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 814209D8 | 48 00 00 F4 */	b .L_81420ACC
.L_814209DC:
/* 814209DC | FC 18 E0 40 */	fcmpo cr0, f24, f28
/* 814209E0 | 4C 41 13 82 */	cror eq, gt, eq
/* 814209E4 | 40 82 00 48 */	bne .L_81420A2C
/* 814209E8 | FC 18 B8 40 */	fcmpo cr0, f24, f23
/* 814209EC | 40 80 00 40 */	bge .L_81420A2C
/* 814209F0 | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 814209F4 | 4C 41 13 82 */	cror eq, gt, eq
/* 814209F8 | 40 82 00 34 */	bne .L_81420A2C
/* 814209FC | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 81420A00 | 40 80 00 2C */	bge .L_81420A2C
/* 81420A04 | EC 37 E0 28 */	fsubs f1, f23, f28
/* 81420A08 | C0 02 89 3C */	lfs f0, lbl_81694D3C@sda21(r0)
/* 81420A0C | EC 01 00 32 */	fmuls f0, f1, f0
/* 81420A10 | EC 1C 00 2A */	fadds f0, f28, f0
/* 81420A14 | FC 00 C0 40 */	fcmpo cr0, f0, f24
/* 81420A18 | 40 81 00 0C */	ble .L_81420A24
/* 81420A1C | 7F C3 F3 78 */	mr r3, r30
/* 81420A20 | 48 00 00 AC */	b .L_81420ACC
.L_81420A24:
/* 81420A24 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 81420A28 | 48 00 00 A4 */	b .L_81420ACC
.L_81420A2C:
/* 81420A2C | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 81420A30 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 81420A34 | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 81420A38 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81420A3C | EC 00 00 72 */	fmuls f0, f0, f1
/* 81420A40 | EF 9C 00 2A */	fadds f28, f28, f0
.L_81420A44:
/* 81420A44 | A4 1F 00 02 */	lhzu r0, 0x2(r31)
/* 81420A48 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81420A4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81420A50 | 40 82 00 24 */	bne .L_81420A74
/* 81420A54 | FC 19 D8 40 */	fcmpo cr0, f25, f27
/* 81420A58 | 4C 41 13 82 */	cror eq, gt, eq
/* 81420A5C | 40 82 00 18 */	bne .L_81420A74
/* 81420A60 | FC 19 D0 40 */	fcmpo cr0, f25, f26
/* 81420A64 | 4C 40 13 82 */	cror eq, lt, eq
/* 81420A68 | 40 82 00 0C */	bne .L_81420A74
/* 81420A6C | 7F C3 F3 78 */	mr r3, r30
/* 81420A70 | 48 00 00 5C */	b .L_81420ACC
.L_81420A74:
/* 81420A74 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81420A78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81420A7C | 40 82 FC A0 */	bne .L_8142071C
/* 81420A80 | EC 3A D8 28 */	fsubs f1, f26, f27
/* 81420A84 | C0 02 89 3C */	lfs f0, lbl_81694D3C@sda21(r0)
/* 81420A88 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81420A8C | EC 1B 00 2A */	fadds f0, f27, f0
/* 81420A90 | FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 81420A94 | 4C 40 13 82 */	cror eq, lt, eq
/* 81420A98 | 40 82 00 24 */	bne .L_81420ABC
/* 81420A9C | C0 42 89 38 */	lfs f2, lbl_81694D38@sda21(r0)
/* 81420AA0 | FC 20 C0 90 */	fmr f1, f24
/* 81420AA4 | C0 1D 01 88 */	lfs f0, 0x188(r29)
/* 81420AA8 | 7F A3 EB 78 */	mr r3, r29
/* 81420AAC | EC 42 D8 2A */	fadds f2, f2, f27
/* 81420AB0 | EC 42 00 2A */	fadds f2, f2, f0
/* 81420AB4 | 4B FF FB 65 */	bl calcCursorPos__Q39textinput9inputform4BaseFff
/* 81420AB8 | 48 00 00 14 */	b .L_81420ACC
.L_81420ABC:
/* 81420ABC | FC 20 C0 90 */	fmr f1, f24
/* 81420AC0 | C0 42 89 38 */	lfs f2, lbl_81694D38@sda21(r0)
/* 81420AC4 | 7F A3 EB 78 */	mr r3, r29
/* 81420AC8 | 4B FF FB 51 */	bl calcCursorPos__Q39textinput9inputform4BaseFff
.L_81420ACC:
/* 81420ACC | E3 E1 00 E8 */	psq_l f31, 0xe8(r1), 0, qr0
/* 81420AD0 | CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 81420AD4 | E3 C1 00 D8 */	psq_l f30, 0xd8(r1), 0, qr0
/* 81420AD8 | CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 81420ADC | E3 A1 00 C8 */	psq_l f29, 0xc8(r1), 0, qr0
/* 81420AE0 | CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 81420AE4 | E3 81 00 B8 */	psq_l f28, 0xb8(r1), 0, qr0
/* 81420AE8 | CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 81420AEC | E3 61 00 A8 */	psq_l f27, 0xa8(r1), 0, qr0
/* 81420AF0 | CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 81420AF4 | E3 41 00 98 */	psq_l f26, 0x98(r1), 0, qr0
/* 81420AF8 | CB 41 00 90 */	lfd f26, 0x90(r1)
/* 81420AFC | E3 21 00 88 */	psq_l f25, 0x88(r1), 0, qr0
/* 81420B00 | CB 21 00 80 */	lfd f25, 0x80(r1)
/* 81420B04 | E3 01 00 78 */	psq_l f24, 0x78(r1), 0, qr0
/* 81420B08 | CB 01 00 70 */	lfd f24, 0x70(r1)
/* 81420B0C | E2 E1 00 68 */	psq_l f23, 0x68(r1), 0, qr0
/* 81420B10 | CA E1 00 60 */	lfd f23, 0x60(r1)
/* 81420B14 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 81420B18 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 81420B1C | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 81420B20 | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 81420B24 | 7C 08 03 A6 */	mtlr r0
/* 81420B28 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 81420B2C | 4E 80 00 20 */	blr
.endfn calcCursorPos__Q39textinput9inputform4BaseFff

# .text:0x4FC0 | 0x81420B30 | size: 0x60
# textinput::inputform::Base::getGlobalLeftTopPos() const
.fn getGlobalLeftTopPos__Q39textinput9inputform4BaseCFv, global
/* 81420B30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81420B34 | 7C 08 02 A6 */	mflr r0
/* 81420B38 | C0 43 01 20 */	lfs f2, 0x120(r3)
/* 81420B3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81420B40 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81420B44 | C0 23 01 2C */	lfs f1, 0x12c(r3)
/* 81420B48 | 7C 85 23 78 */	mr r5, r4
/* 81420B4C | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 81420B50 | 38 63 01 30 */	addi r3, r3, 0x130
/* 81420B54 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 81420B58 | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 81420B5C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81420B60 | 48 12 09 5D */	bl fn_815414BC
/* 81420B64 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81420B68 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81420B6C | FC 00 00 50 */	fneg f0, f0
/* 81420B70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81420B74 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81420B78 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81420B7C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81420B80 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81420B84 | 7C 08 03 A6 */	mtlr r0
/* 81420B88 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81420B8C | 4E 80 00 20 */	blr
.endfn getGlobalLeftTopPos__Q39textinput9inputform4BaseCFv

# .text:0x5020 | 0x81420B90 | size: 0xC8
# textinput::inputform::Base::doScroll(textinput::CommandReceiver::Scroll*)
.fn doScroll__Q39textinput9inputform4BaseFPQ39textinput15CommandReceiver6Scroll, global
/* 81420B90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81420B94 | 7C 08 02 A6 */	mflr r0
/* 81420B98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81420B9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81420BA0 | 7C 9F 23 78 */	mr r31, r4
/* 81420BA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81420BA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81420BAC | 81 83 01 8C */	lwz r12, 0x18c(r3)
/* 81420BB0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81420BB4 | 7D 89 03 A6 */	mtctr r12
/* 81420BB8 | 38 63 01 8C */	addi r3, r3, 0x18c
/* 81420BBC | 4E 80 04 21 */	bctrl
/* 81420BC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81420BC4 | 40 82 00 7C */	bne .L_81420C40
/* 81420BC8 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81420BCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81420BD0 | 41 82 00 1C */	beq .L_81420BEC
/* 81420BD4 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 81420BD8 | D0 1E 01 84 */	stfs f0, 0x184(r30)
/* 81420BDC | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 81420BE0 | D0 1E 01 88 */	stfs f0, 0x188(r30)
/* 81420BE4 | D0 1E 01 00 */	stfs f0, 0x100(r30)
/* 81420BE8 | 48 00 00 40 */	b .L_81420C28
.L_81420BEC:
/* 81420BEC | C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 81420BF0 | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 81420BF4 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 81420BF8 | 38 80 00 00 */	li r4, 0x0
/* 81420BFC | C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 81420C00 | 38 A0 00 00 */	li r5, 0x0
/* 81420C04 | EC 02 00 2A */	fadds f0, f2, f0
/* 81420C08 | C0 62 89 88 */	lfs f3, lbl_81694D88@sda21(r0)
/* 81420C0C | D0 1E 01 84 */	stfs f0, 0x184(r30)
/* 81420C10 | 81 9E 01 8C */	lwz r12, 0x18c(r30)
/* 81420C14 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 81420C18 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81420C1C | EC 41 00 2A */	fadds f2, f1, f0
/* 81420C20 | 7D 89 03 A6 */	mtctr r12
/* 81420C24 | 4E 80 04 21 */	bctrl
.L_81420C28:
/* 81420C28 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81420C2C | 7F C3 F3 78 */	mr r3, r30
/* 81420C30 | 38 80 00 0B */	li r4, 0xb
/* 81420C34 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81420C38 | 7D 89 03 A6 */	mtctr r12
/* 81420C3C | 4E 80 04 21 */	bctrl
.L_81420C40:
/* 81420C40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81420C44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81420C48 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81420C4C | 7C 08 03 A6 */	mtlr r0
/* 81420C50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81420C54 | 4E 80 00 20 */	blr
.endfn doScroll__Q39textinput9inputform4BaseFPQ39textinput15CommandReceiver6Scroll

# .text:0x50E8 | 0x81420C58 | size: 0x50
# textinput::util::Animation::startAnm(float, float, float, textinput::util::AnimObserver*, void*)
.fn startAnm__Q39textinput4util9AnimationFfffPQ39textinput4util12AnimObserverPv, global
/* 81420C58 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 81420C5C | 38 C0 00 01 */	li r6, 0x1
/* 81420C60 | 38 00 00 00 */	li r0, 0x0
/* 81420C64 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81420C68 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 81420C6C | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81420C70 | D0 63 00 10 */	stfs f3, 0x10(r3)
/* 81420C74 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81420C78 | 98 C3 00 14 */	stb r6, 0x14(r3)
/* 81420C7C | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81420C80 | 90 A3 00 1C */	stw r5, 0x1c(r3)
/* 81420C84 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81420C88 | 4D 82 00 20 */	beqlr
/* 81420C8C | 7C 83 23 78 */	mr r3, r4
/* 81420C90 | 38 80 00 00 */	li r4, 0x0
/* 81420C94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420C98 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81420C9C | 7D 89 03 A6 */	mtctr r12
/* 81420CA0 | 4E 80 04 20 */	bctr
/* 81420CA4 | 4E 80 00 20 */	blr
.endfn startAnm__Q39textinput4util9AnimationFfffPQ39textinput4util12AnimObserverPv

# .text:0x5138 | 0x81420CA8 | size: 0x258
# textinput::inputform::Base::autoScroll()
.fn autoScroll__Q39textinput9inputform4BaseFv, global
/* 81420CA8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81420CAC | 7C 08 02 A6 */	mflr r0
/* 81420CB0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81420CB4 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81420CB8 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81420CBC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81420CC0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81420CC4 | 7C 7E 1B 78 */	mr r30, r3
/* 81420CC8 | 81 83 01 8C */	lwz r12, 0x18c(r3)
/* 81420CCC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81420CD0 | 7D 89 03 A6 */	mtctr r12
/* 81420CD4 | 38 63 01 8C */	addi r3, r3, 0x18c
/* 81420CD8 | 4E 80 04 21 */	bctrl
/* 81420CDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81420CE0 | 40 82 02 00 */	bne .L_81420EE0
/* 81420CE4 | 80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 81420CE8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81420CEC | 28 00 00 01 */	cmplwi r0, 0x1
/* 81420CF0 | 41 81 01 F0 */	bgt .L_81420EE0
/* 81420CF4 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81420CF8 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81420CFC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420D00 | 7D 89 03 A6 */	mtctr r12
/* 81420D04 | 4E 80 04 21 */	bctrl
/* 81420D08 | C0 02 89 3C */	lfs f0, lbl_81694D3C@sda21(r0)
/* 81420D0C | C0 5E 01 80 */	lfs f2, 0x180(r30)
/* 81420D10 | EC 21 00 32 */	fmuls f1, f1, f0
/* 81420D14 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 81420D18 | EF E2 08 2A */	fadds f31, f2, f1
/* 81420D1C | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 81420D20 | 40 80 00 A8 */	bge .L_81420DC8
/* 81420D24 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81420D28 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81420D2C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420D30 | 7D 89 03 A6 */	mtctr r12
/* 81420D34 | 4E 80 04 21 */	bctrl
/* 81420D38 | EC 3F 08 24 */	fdivs f1, f31, f1
/* 81420D3C | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 81420D40 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81420D44 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81420D48 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420D4C | EC 01 00 28 */	fsubs f0, f1, f0
/* 81420D50 | FC 00 00 1E */	fctiwz f0, f0
/* 81420D54 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 81420D58 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81420D5C | 7D 89 03 A6 */	mtctr r12
/* 81420D60 | 4E 80 04 21 */	bctrl
/* 81420D64 | 6F E3 80 00 */	xoris r3, r31, 0x8000
/* 81420D68 | 3C 00 43 30 */	lis r0, 0x4330
/* 81420D6C | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81420D70 | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 81420D74 | 81 9E 01 8C */	lwz r12, 0x18c(r30)
/* 81420D78 | 38 80 00 00 */	li r4, 0x0
/* 81420D7C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81420D80 | 38 A0 00 00 */	li r5, 0x0
/* 81420D84 | C8 62 89 30 */	lfd f3, lbl_81694D30@sda21(r0)
/* 81420D88 | C8 41 00 20 */	lfd f2, 0x20(r1)
/* 81420D8C | C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 81420D90 | EC 42 18 28 */	fsubs f2, f2, f3
/* 81420D94 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81420D98 | C0 62 89 88 */	lfs f3, lbl_81694D88@sda21(r0)
/* 81420D9C | EC 42 00 72 */	fmuls f2, f2, f1
/* 81420DA0 | FC 20 00 90 */	fmr f1, f0
/* 81420DA4 | EC 40 10 28 */	fsubs f2, f0, f2
/* 81420DA8 | 7D 89 03 A6 */	mtctr r12
/* 81420DAC | 4E 80 04 21 */	bctrl
/* 81420DB0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81420DB4 | 7F C3 F3 78 */	mr r3, r30
/* 81420DB8 | 38 80 00 0B */	li r4, 0xb
/* 81420DBC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81420DC0 | 7D 89 03 A6 */	mtctr r12
/* 81420DC4 | 4E 80 04 21 */	bctrl
.L_81420DC8:
/* 81420DC8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81420DCC | 7F C3 F3 78 */	mr r3, r30
/* 81420DD0 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81420DD4 | 7D 89 03 A6 */	mtctr r12
/* 81420DD8 | 4E 80 04 21 */	bctrl
/* 81420DDC | C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 81420DE0 | C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 81420DE4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81420DE8 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81420DEC | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81420DF0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81420DF4 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81420DF8 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 81420DFC | 4C 41 13 82 */	cror eq, gt, eq
/* 81420E00 | 40 82 00 D8 */	bne .L_81420ED8
/* 81420E04 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81420E08 | 7F C3 F3 78 */	mr r3, r30
/* 81420E0C | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81420E10 | 7D 89 03 A6 */	mtctr r12
/* 81420E14 | 4E 80 04 21 */	bctrl
/* 81420E18 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81420E1C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81420E20 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81420E24 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420E28 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81420E2C | 7D 89 03 A6 */	mtctr r12
/* 81420E30 | 4E 80 04 21 */	bctrl
/* 81420E34 | C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 81420E38 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81420E3C | C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 81420E40 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81420E44 | EC 42 00 28 */	fsubs f2, f2, f0
/* 81420E48 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 81420E4C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81420E50 | EC 02 00 32 */	fmuls f0, f2, f0
/* 81420E54 | EC 1F 00 28 */	fsubs f0, f31, f0
/* 81420E58 | EC 00 08 24 */	fdivs f0, f0, f1
/* 81420E5C | FC 00 00 1E */	fctiwz f0, f0
/* 81420E60 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81420E64 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 81420E68 | 3B E4 00 01 */	addi r31, r4, 0x1
/* 81420E6C | 7D 89 03 A6 */	mtctr r12
/* 81420E70 | 4E 80 04 21 */	bctrl
/* 81420E74 | 6F E3 80 00 */	xoris r3, r31, 0x8000
/* 81420E78 | 3C 00 43 30 */	lis r0, 0x4330
/* 81420E7C | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81420E80 | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 81420E84 | 81 9E 01 8C */	lwz r12, 0x18c(r30)
/* 81420E88 | 38 80 00 00 */	li r4, 0x0
/* 81420E8C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81420E90 | 38 A0 00 00 */	li r5, 0x0
/* 81420E94 | C8 62 89 30 */	lfd f3, lbl_81694D30@sda21(r0)
/* 81420E98 | C8 41 00 18 */	lfd f2, 0x18(r1)
/* 81420E9C | C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 81420EA0 | EC 42 18 28 */	fsubs f2, f2, f3
/* 81420EA4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81420EA8 | C0 62 89 88 */	lfs f3, lbl_81694D88@sda21(r0)
/* 81420EAC | EC 42 00 72 */	fmuls f2, f2, f1
/* 81420EB0 | FC 20 00 90 */	fmr f1, f0
/* 81420EB4 | EC 40 10 28 */	fsubs f2, f0, f2
/* 81420EB8 | 7D 89 03 A6 */	mtctr r12
/* 81420EBC | 4E 80 04 21 */	bctrl
/* 81420EC0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81420EC4 | 7F C3 F3 78 */	mr r3, r30
/* 81420EC8 | 38 80 00 0B */	li r4, 0xb
/* 81420ECC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81420ED0 | 7D 89 03 A6 */	mtctr r12
/* 81420ED4 | 4E 80 04 21 */	bctrl
.L_81420ED8:
/* 81420ED8 | 38 00 00 00 */	li r0, 0x0
/* 81420EDC | 90 1E 01 B0 */	stw r0, 0x1b0(r30)
.L_81420EE0:
/* 81420EE0 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81420EE4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81420EE8 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81420EEC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81420EF0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81420EF4 | 7C 08 03 A6 */	mtlr r0
/* 81420EF8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81420EFC | 4E 80 00 20 */	blr
.endfn autoScroll__Q39textinput9inputform4BaseFv

# .text:0x5390 | 0x81420F00 | size: 0x14
# textinput::inputform::Base::setAtokDictionary(void*, int, void*, int, void*, int)
.fn setAtokDictionary__Q39textinput9inputform4BaseFPviPviPvi, global
/* 81420F00 | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 81420F04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420F08 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 81420F0C | 7D 89 03 A6 */	mtctr r12
/* 81420F10 | 4E 80 04 20 */	bctr
.endfn setAtokDictionary__Q39textinput9inputform4BaseFPviPviPvi

# .text:0x53A4 | 0x81420F14 | size: 0x4
# textinput::tistring::WithAtok::openDictionary(void*, int, void*, int, void*, int)
.fn openDictionary__Q39textinput8tistring8WithAtokFPviPviPvi, global
/* 81420F14 | 4E 80 00 20 */	blr
.endfn openDictionary__Q39textinput8tistring8WithAtokFPviPviPvi

# .text:0x53A8 | 0x81420F18 | size: 0x14
# textinput::inputform::Base::closeAtokDictionary()
.fn closeAtokDictionary__Q39textinput9inputform4BaseFv, global
/* 81420F18 | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 81420F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420F20 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 81420F24 | 7D 89 03 A6 */	mtctr r12
/* 81420F28 | 4E 80 04 20 */	bctr
.endfn closeAtokDictionary__Q39textinput9inputform4BaseFv

# .text:0x53BC | 0x81420F2C | size: 0x4
# textinput::tistring::WithAtok::closeDictionary()
.fn closeDictionary__Q39textinput8tistring8WithAtokFv, global
/* 81420F2C | 4E 80 00 20 */	blr
.endfn closeDictionary__Q39textinput8tistring8WithAtokFv

# .text:0x53C0 | 0x81420F30 | size: 0x234
# textinput::inputform::Base::confirmInput_()
.fn confirmInput___Q39textinput9inputform4BaseFv, global
/* 81420F30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81420F34 | 7C 08 02 A6 */	mflr r0
/* 81420F38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81420F3C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81420F40 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81420F44 | 7C 7E 1B 78 */	mr r30, r3
/* 81420F48 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 81420F4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81420F50 | 40 82 00 60 */	bne .L_81420FB0
/* 81420F54 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81420F58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420F5C | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81420F60 | 7D 89 03 A6 */	mtctr r12
/* 81420F64 | 4E 80 04 21 */	bctrl
/* 81420F68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81420F6C | 40 82 01 E0 */	bne .L_8142114C
/* 81420F70 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81420F74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420F78 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81420F7C | 7D 89 03 A6 */	mtctr r12
/* 81420F80 | 4E 80 04 21 */	bctrl
/* 81420F84 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81420F88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420F8C | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 81420F90 | 7D 89 03 A6 */	mtctr r12
/* 81420F94 | 4E 80 04 21 */	bctrl
/* 81420F98 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81420F9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420FA0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81420FA4 | 7D 89 03 A6 */	mtctr r12
/* 81420FA8 | 4E 80 04 21 */	bctrl
/* 81420FAC | 48 00 01 A0 */	b .L_8142114C
.L_81420FB0:
/* 81420FB0 | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 81420FB4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81420FB8 | 40 82 00 E4 */	bne .L_8142109C
/* 81420FBC | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 81420FC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420FC4 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 81420FC8 | 7D 89 03 A6 */	mtctr r12
/* 81420FCC | 4E 80 04 21 */	bctrl
/* 81420FD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81420FD4 | 41 82 00 3C */	beq .L_81421010
/* 81420FD8 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81420FDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81420FE0 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 81420FE4 | 7D 89 03 A6 */	mtctr r12
/* 81420FE8 | 4E 80 04 21 */	bctrl
/* 81420FEC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81420FF0 | 7F C3 F3 78 */	mr r3, r30
/* 81420FF4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81420FF8 | 38 80 00 15 */	li r4, 0x15
/* 81420FFC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81421000 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81421004 | 7D 89 03 A6 */	mtctr r12
/* 81421008 | 4E 80 04 21 */	bctrl
/* 8142100C | 48 00 01 40 */	b .L_8142114C
.L_81421010:
/* 81421010 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81421014 | 38 80 00 00 */	li r4, 0x0
/* 81421018 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142101C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81421020 | 7D 89 03 A6 */	mtctr r12
/* 81421024 | 4E 80 04 21 */	bctrl
/* 81421028 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8142102C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421030 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 81421034 | 7D 89 03 A6 */	mtctr r12
/* 81421038 | 4E 80 04 21 */	bctrl
/* 8142103C | 7C 7F 1B 78 */	mr r31, r3
/* 81421040 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81421044 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421048 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142104C | 7D 89 03 A6 */	mtctr r12
/* 81421050 | 4E 80 04 21 */	bctrl
/* 81421054 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81421058 | 7F E4 FB 78 */	mr r4, r31
/* 8142105C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421060 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81421064 | 7D 89 03 A6 */	mtctr r12
/* 81421068 | 4E 80 04 21 */	bctrl
/* 8142106C | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81421070 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421074 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421078 | 7D 89 03 A6 */	mtctr r12
/* 8142107C | 4E 80 04 21 */	bctrl
/* 81421080 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81421084 | 38 80 00 00 */	li r4, 0x0
/* 81421088 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142108C | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 81421090 | 7D 89 03 A6 */	mtctr r12
/* 81421094 | 4E 80 04 21 */	bctrl
/* 81421098 | 48 00 00 B4 */	b .L_8142114C
.L_8142109C:
/* 8142109C | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 814210A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814210A4 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 814210A8 | 7D 89 03 A6 */	mtctr r12
/* 814210AC | 4E 80 04 21 */	bctrl
/* 814210B0 | 7C 7F 1B 78 */	mr r31, r3
/* 814210B4 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 814210B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814210BC | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 814210C0 | 7D 89 03 A6 */	mtctr r12
/* 814210C4 | 4E 80 04 21 */	bctrl
/* 814210C8 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814210CC | 41 82 00 5C */	beq .L_81421128
/* 814210D0 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 814210D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814210D8 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814210DC | 7D 89 03 A6 */	mtctr r12
/* 814210E0 | 4E 80 04 21 */	bctrl
/* 814210E4 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 814210E8 | 7F E4 FB 78 */	mr r4, r31
/* 814210EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814210F0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814210F4 | 7D 89 03 A6 */	mtctr r12
/* 814210F8 | 4E 80 04 21 */	bctrl
/* 814210FC | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81421100 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421104 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421108 | 7D 89 03 A6 */	mtctr r12
/* 8142110C | 4E 80 04 21 */	bctrl
/* 81421110 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81421114 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421118 | 40 82 00 10 */	bne .L_81421128
/* 8142111C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81421120 | 7F E4 FB 78 */	mr r4, r31
/* 81421124 | 48 01 3D B1 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
.L_81421128:
/* 81421128 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 8142112C | 48 01 2C 61 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 81421130 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81421134 | 38 60 00 00 */	li r3, 0x0
/* 81421138 | 98 7E 01 F4 */	stb r3, 0x1f4(r30)
/* 8142113C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421140 | 40 82 00 0C */	bne .L_8142114C
/* 81421144 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81421148 | 48 01 33 7D */	bl update__Q39textinput8tistring6WithZiFv
.L_8142114C:
/* 8142114C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81421150 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81421154 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81421158 | 7C 08 03 A6 */	mtlr r0
/* 8142115C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81421160 | 4E 80 00 20 */	blr
.endfn confirmInput___Q39textinput9inputform4BaseFv

# .text:0x55F4 | 0x81421164 | size: 0x8
# textinput::tistring::WithAtok::isCandidateSelected()
.fn isCandidateSelected__Q39textinput8tistring8WithAtokFv, global
/* 81421164 | 38 60 00 00 */	li r3, 0x0
/* 81421168 | 4E 80 00 20 */	blr
.endfn isCandidateSelected__Q39textinput8tistring8WithAtokFv

# .text:0x55FC | 0x8142116C | size: 0x8
# textinput::tistring::WithAtok::getSelectedCandidate()
.fn getSelectedCandidate__Q39textinput8tistring8WithAtokFv, global
/* 8142116C | 38 60 00 00 */	li r3, 0x0
/* 81421170 | 4E 80 00 20 */	blr
.endfn getSelectedCandidate__Q39textinput8tistring8WithAtokFv

# .text:0x5604 | 0x81421174 | size: 0x38
# textinput::inputform::Base::initZiString()
.fn initZiString__Q39textinput9inputform4BaseFv, global
/* 81421174 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81421178 | 7C 08 02 A6 */	mflr r0
/* 8142117C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81421180 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81421184 | 7C 7F 1B 78 */	mr r31, r3
/* 81421188 | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 8142118C | 48 01 2C 01 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 81421190 | 38 00 00 00 */	li r0, 0x0
/* 81421194 | 98 1F 01 F4 */	stb r0, 0x1f4(r31)
/* 81421198 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142119C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814211A0 | 7C 08 03 A6 */	mtlr r0
/* 814211A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814211A8 | 4E 80 00 20 */	blr
.endfn initZiString__Q39textinput9inputform4BaseFv

# .text:0x563C | 0x814211AC | size: 0x284
# textinput::inputform::Base::inputInputting_(wchar_t)
.fn inputInputting___Q39textinput9inputform4BaseFw, global
/* 814211AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814211B0 | 7C 08 02 A6 */	mflr r0
/* 814211B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814211B8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814211BC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814211C0 | 7C 9E 23 78 */	mr r30, r4
/* 814211C4 | 38 80 00 00 */	li r4, 0x0
/* 814211C8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814211CC | 7C 7D 1B 78 */	mr r29, r3
/* 814211D0 | 48 00 0D 25 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 814211D4 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 814211D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814211DC | 38 04 CF 65 */	subi r0, r4, 0x309b
/* 814211E0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814211E4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814211E8 | 41 81 00 24 */	bgt .L_8142120C
/* 814211EC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814211F0 | 7F A3 EB 78 */	mr r3, r29
/* 814211F4 | 38 80 00 1B */	li r4, 0x1b
/* 814211F8 | 38 A0 00 00 */	li r5, 0x0
/* 814211FC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81421200 | 7D 89 03 A6 */	mtctr r12
/* 81421204 | 4E 80 04 21 */	bctrl
/* 81421208 | 48 00 01 E4 */	b .L_814213EC
.L_8142120C:
/* 8142120C | 88 7D 01 78 */	lbz r3, 0x178(r29)
/* 81421210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421214 | 41 82 00 64 */	beq .L_81421278
/* 81421218 | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 8142121C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421220 | 40 82 00 58 */	bne .L_81421278
/* 81421224 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81421228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142122C | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 81421230 | 7D 89 03 A6 */	mtctr r12
/* 81421234 | 4E 80 04 21 */	bctrl
/* 81421238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142123C | 41 82 00 20 */	beq .L_8142125C
/* 81421240 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81421244 | 7F A3 EB 78 */	mr r3, r29
/* 81421248 | 38 80 00 06 */	li r4, 0x6
/* 8142124C | 38 A0 00 00 */	li r5, 0x0
/* 81421250 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81421254 | 7D 89 03 A6 */	mtctr r12
/* 81421258 | 4E 80 04 21 */	bctrl
.L_8142125C:
/* 8142125C | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81421260 | 7F C4 F3 78 */	mr r4, r30
/* 81421264 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421268 | 81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8142126C | 7D 89 03 A6 */	mtctr r12
/* 81421270 | 4E 80 04 21 */	bctrl
/* 81421274 | 48 00 01 78 */	b .L_814213EC
.L_81421278:
/* 81421278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142127C | 41 82 01 58 */	beq .L_814213D4
/* 81421280 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81421284 | 7F A3 EB 78 */	mr r3, r29
/* 81421288 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8142128C | 7D 89 03 A6 */	mtctr r12
/* 81421290 | 4E 80 04 21 */	bctrl
/* 81421294 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 81421298 | 40 82 01 3C */	bne .L_814213D4
/* 8142129C | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814212A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814212A4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814212A8 | 7D 89 03 A6 */	mtctr r12
/* 814212AC | 4E 80 04 21 */	bctrl
/* 814212B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814212B4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814212B8 | 7D 89 03 A6 */	mtctr r12
/* 814212BC | 4E 80 04 21 */	bctrl
/* 814212C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814212C4 | 40 82 01 10 */	bne .L_814213D4
/* 814212C8 | 7F C3 F3 78 */	mr r3, r30
/* 814212CC | 48 01 8F F1 */	bl isAlphabet__Q29textinput4utilFw
/* 814212D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814212D4 | 40 82 00 14 */	bne .L_814212E8
/* 814212D8 | 28 1E 00 31 */	cmplwi r30, 0x31
/* 814212DC | 41 80 00 28 */	blt .L_81421304
/* 814212E0 | 28 1E 00 35 */	cmplwi r30, 0x35
/* 814212E4 | 41 81 00 20 */	bgt .L_81421304
.L_814212E8:
/* 814212E8 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 814212EC | 7F C4 F3 78 */	mr r4, r30
/* 814212F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814212F4 | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 814212F8 | 7D 89 03 A6 */	mtctr r12
/* 814212FC | 4E 80 04 21 */	bctrl
/* 81421300 | 48 00 00 EC */	b .L_814213EC
.L_81421304:
/* 81421304 | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81421308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142130C | 40 82 00 0C */	bne .L_81421318
/* 81421310 | 38 00 00 00 */	li r0, 0x0
/* 81421314 | 48 00 00 38 */	b .L_8142134C
.L_81421318:
/* 81421318 | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 8142131C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421320 | 41 82 00 28 */	beq .L_81421348
/* 81421324 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81421328 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142132C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421330 | 7D 89 03 A6 */	mtctr r12
/* 81421334 | 4E 80 04 21 */	bctrl
/* 81421338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142133C | 40 81 00 0C */	ble .L_81421348
/* 81421340 | 38 00 00 01 */	li r0, 0x1
/* 81421344 | 48 00 00 08 */	b .L_8142134C
.L_81421348:
/* 81421348 | 38 00 00 00 */	li r0, 0x0
.L_8142134C:
/* 8142134C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421350 | 41 82 00 50 */	beq .L_814213A0
/* 81421354 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81421358 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142135C | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81421360 | 7D 89 03 A6 */	mtctr r12
/* 81421364 | 4E 80 04 21 */	bctrl
/* 81421368 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 8142136C | 41 82 00 34 */	beq .L_814213A0
/* 81421370 | 80 1D 01 F0 */	lwz r0, 0x1f0(r29)
/* 81421374 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421378 | 40 82 00 20 */	bne .L_81421398
/* 8142137C | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81421380 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421384 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81421388 | 7D 89 03 A6 */	mtctr r12
/* 8142138C | 4E 80 04 21 */	bctrl
/* 81421390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421394 | 40 82 00 0C */	bne .L_814213A0
.L_81421398:
/* 81421398 | 7F A3 EB 78 */	mr r3, r29
/* 8142139C | 4B FF FB 95 */	bl confirmInput___Q39textinput9inputform4BaseFv
.L_814213A0:
/* 814213A0 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 814213A4 | 7F C4 F3 78 */	mr r4, r30
/* 814213A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814213AC | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 814213B0 | 7D 89 03 A6 */	mtctr r12
/* 814213B4 | 4E 80 04 21 */	bctrl
/* 814213B8 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 814213BC | 38 80 FF FF */	li r4, -0x1
/* 814213C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814213C4 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 814213C8 | 7D 89 03 A6 */	mtctr r12
/* 814213CC | 4E 80 04 21 */	bctrl
/* 814213D0 | 48 00 00 44 */	b .L_81421414
.L_814213D4:
/* 814213D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814213D8 | 7F E3 FB 78 */	mr r3, r31
/* 814213DC | 7F C4 F3 78 */	mr r4, r30
/* 814213E0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814213E4 | 7D 89 03 A6 */	mtctr r12
/* 814213E8 | 4E 80 04 21 */	bctrl
.L_814213EC:
/* 814213EC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814213F0 | 41 82 00 1C */	beq .L_8142140C
/* 814213F4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814213F8 | 7F A3 EB 78 */	mr r3, r29
/* 814213FC | 38 80 00 0A */	li r4, 0xa
/* 81421400 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81421404 | 7D 89 03 A6 */	mtctr r12
/* 81421408 | 4E 80 04 21 */	bctrl
.L_8142140C:
/* 8142140C | 38 00 00 01 */	li r0, 0x1
/* 81421410 | 90 1D 01 B0 */	stw r0, 0x1b0(r29)
.L_81421414:
/* 81421414 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81421418 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142141C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81421420 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81421424 | 7C 08 03 A6 */	mtlr r0
/* 81421428 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142142C | 4E 80 00 20 */	blr
.endfn inputInputting___Q39textinput9inputform4BaseFw

# .text:0x58C0 | 0x81421430 | size: 0x4
# textinput::tistring::WithAtok::setInputting(wchar_t)
.fn setInputting__Q39textinput8tistring8WithAtokFw, global
/* 81421430 | 4E 80 00 20 */	blr
.endfn setInputting__Q39textinput8tistring8WithAtokFw

# .text:0x58C4 | 0x81421434 | size: 0x8
# textinput::candidatebox::Base::isInvalid() const
.fn isInvalid__Q39textinput12candidatebox4BaseCFv, global
/* 81421434 | 88 63 00 19 */	lbz r3, 0x19(r3)
/* 81421438 | 4E 80 00 20 */	blr
.endfn isInvalid__Q39textinput12candidatebox4BaseCFv

# .text:0x58CC | 0x8142143C | size: 0x14
# textinput::tistring::StringBase::hasCandidate() const
.fn hasCandidate__Q39textinput8tistring10StringBaseCFv, global
/* 8142143C | A0 63 00 10 */	lhz r3, 0x10(r3)
/* 81421440 | 7C 03 00 D0 */	neg r0, r3
/* 81421444 | 7C 00 1B 78 */	or r0, r0, r3
/* 81421448 | 54 03 0F FE */	srwi r3, r0, 31
/* 8142144C | 4E 80 00 20 */	blr
.endfn hasCandidate__Q39textinput8tistring10StringBaseCFv

# .text:0x58E0 | 0x81421450 | size: 0x8
# textinput::tistring::StringBase::setCandidate(wchar_t)
.fn setCandidate__Q39textinput8tistring10StringBaseFw, global
/* 81421450 | B0 83 00 10 */	sth r4, 0x10(r3)
/* 81421454 | 4E 80 00 20 */	blr
.endfn setCandidate__Q39textinput8tistring10StringBaseFw

# .text:0x58E8 | 0x81421458 | size: 0x568
# textinput::inputform::Base::confirmInputting_(wchar_t, bool, unsigned short, bool, void*)
.fn confirmInputting___Q39textinput9inputform4BaseFwbUsbPv, global
/* 81421458 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8142145C | 7C 08 02 A6 */	mflr r0
/* 81421460 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 81421464 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81421468 | 48 1D 80 51 */	bl _savegpr_25
/* 8142146C | 7C 99 23 78 */	mr r25, r4
/* 81421470 | 7C 7F 1B 78 */	mr r31, r3
/* 81421474 | 7C BA 2B 78 */	mr r26, r5
/* 81421478 | 7C DB 33 78 */	mr r27, r6
/* 8142147C | 7C FC 3B 78 */	mr r28, r7
/* 81421480 | 7D 1D 43 78 */	mr r29, r8
/* 81421484 | 38 80 00 01 */	li r4, 0x1
/* 81421488 | 48 00 0A 6D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 8142148C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81421490 | 7C 7E 1B 78 */	mr r30, r3
/* 81421494 | 41 82 05 14 */	beq .L_814219A8
/* 81421498 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 8142149C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814214A0 | 41 82 01 50 */	beq .L_814215F0
/* 814214A4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814214A8 | 7F E3 FB 78 */	mr r3, r31
/* 814214AC | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 814214B0 | 7D 89 03 A6 */	mtctr r12
/* 814214B4 | 4E 80 04 21 */	bctrl
/* 814214B8 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 814214BC | 40 82 01 34 */	bne .L_814215F0
/* 814214C0 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814214C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814214C8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814214CC | 7D 89 03 A6 */	mtctr r12
/* 814214D0 | 4E 80 04 21 */	bctrl
/* 814214D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814214D8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814214DC | 7D 89 03 A6 */	mtctr r12
/* 814214E0 | 4E 80 04 21 */	bctrl
/* 814214E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814214E8 | 40 82 01 08 */	bne .L_814215F0
/* 814214EC | 7F 23 CB 78 */	mr r3, r25
/* 814214F0 | 48 01 8D CD */	bl isAlphabet__Q29textinput4utilFw
/* 814214F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814214F8 | 40 82 00 F8 */	bne .L_814215F0
/* 814214FC | 28 19 00 31 */	cmplwi r25, 0x31
/* 81421500 | 41 80 00 0C */	blt .L_8142150C
/* 81421504 | 28 19 00 35 */	cmplwi r25, 0x35
/* 81421508 | 40 81 00 E8 */	ble .L_814215F0
.L_8142150C:
/* 8142150C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421510 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421514 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421518 | 7D 89 03 A6 */	mtctr r12
/* 8142151C | 4E 80 04 21 */	bctrl
/* 81421520 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421524 | 7F 24 CB 78 */	mr r4, r25
/* 81421528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142152C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81421530 | 7D 89 03 A6 */	mtctr r12
/* 81421534 | 4E 80 04 21 */	bctrl
/* 81421538 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8142153C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421540 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421544 | 7D 89 03 A6 */	mtctr r12
/* 81421548 | 4E 80 04 21 */	bctrl
/* 8142154C | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81421550 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421554 | 40 82 00 68 */	bne .L_814215BC
/* 81421558 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 8142155C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421560 | 40 82 00 0C */	bne .L_8142156C
/* 81421564 | 38 00 00 00 */	li r0, 0x0
/* 81421568 | 48 00 00 38 */	b .L_814215A0
.L_8142156C:
/* 8142156C | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 81421570 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421574 | 41 82 00 28 */	beq .L_8142159C
/* 81421578 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 8142157C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421580 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421584 | 7D 89 03 A6 */	mtctr r12
/* 81421588 | 4E 80 04 21 */	bctrl
/* 8142158C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421590 | 40 81 00 0C */	ble .L_8142159C
/* 81421594 | 38 00 00 01 */	li r0, 0x1
/* 81421598 | 48 00 00 08 */	b .L_814215A0
.L_8142159C:
/* 8142159C | 38 00 00 00 */	li r0, 0x0
.L_814215A0:
/* 814215A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814215A4 | 41 82 00 18 */	beq .L_814215BC
/* 814215A8 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814215AC | 38 80 00 00 */	li r4, 0x0
/* 814215B0 | 48 01 39 25 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 814215B4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814215B8 | 48 01 2F 0D */	bl update__Q39textinput8tistring6WithZiFv
.L_814215BC:
/* 814215BC | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 814215C0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814215C4 | 40 82 00 20 */	bne .L_814215E4
/* 814215C8 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814215CC | 48 01 27 C1 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 814215D0 | 38 00 00 00 */	li r0, 0x0
/* 814215D4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814215D8 | 98 1F 01 F4 */	stb r0, 0x1f4(r31)
/* 814215DC | 48 01 2E E9 */	bl update__Q39textinput8tistring6WithZiFv
/* 814215E0 | 48 00 03 C8 */	b .L_814219A8
.L_814215E4:
/* 814215E4 | 7F E3 FB 78 */	mr r3, r31
/* 814215E8 | 4B FF F9 49 */	bl confirmInput___Q39textinput9inputform4BaseFv
/* 814215EC | 48 00 03 BC */	b .L_814219A8
.L_814215F0:
/* 814215F0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814215F4 | 41 82 00 B8 */	beq .L_814216AC
/* 814215F8 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 814215FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421600 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421604 | 7D 89 03 A6 */	mtctr r12
/* 81421608 | 4E 80 04 21 */	bctrl
/* 8142160C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421610 | 7F 24 CB 78 */	mr r4, r25
/* 81421614 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421618 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142161C | 7D 89 03 A6 */	mtctr r12
/* 81421620 | 4E 80 04 21 */	bctrl
/* 81421624 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421628 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142162C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421630 | 7D 89 03 A6 */	mtctr r12
/* 81421634 | 4E 80 04 21 */	bctrl
/* 81421638 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 8142163C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421640 | 40 82 03 68 */	bne .L_814219A8
/* 81421644 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 81421648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142164C | 40 82 00 0C */	bne .L_81421658
/* 81421650 | 38 00 00 00 */	li r0, 0x0
/* 81421654 | 48 00 00 38 */	b .L_8142168C
.L_81421658:
/* 81421658 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8142165C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421660 | 41 82 00 28 */	beq .L_81421688
/* 81421664 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421668 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142166C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421670 | 7D 89 03 A6 */	mtctr r12
/* 81421674 | 4E 80 04 21 */	bctrl
/* 81421678 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142167C | 40 81 00 0C */	ble .L_81421688
/* 81421680 | 38 00 00 01 */	li r0, 0x1
/* 81421684 | 48 00 00 08 */	b .L_8142168C
.L_81421688:
/* 81421688 | 38 00 00 00 */	li r0, 0x0
.L_8142168C:
/* 8142168C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421690 | 41 82 03 18 */	beq .L_814219A8
/* 81421694 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421698 | 38 80 00 00 */	li r4, 0x0
/* 8142169C | 48 01 38 39 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 814216A0 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814216A4 | 48 01 2E 21 */	bl update__Q39textinput8tistring6WithZiFv
/* 814216A8 | 48 00 03 00 */	b .L_814219A8
.L_814216AC:
/* 814216AC | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814216B0 | 7C 1E 18 40 */	cmplw r30, r3
/* 814216B4 | 40 82 00 E8 */	bne .L_8142179C
/* 814216B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814216BC | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 814216C0 | 7D 89 03 A6 */	mtctr r12
/* 814216C4 | 4E 80 04 21 */	bctrl
/* 814216C8 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814216CC | 40 82 00 34 */	bne .L_81421700
/* 814216D0 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814216D4 | 7F 64 DB 78 */	mr r4, r27
/* 814216D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814216DC | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 814216E0 | 7D 89 03 A6 */	mtctr r12
/* 814216E4 | 4E 80 04 21 */	bctrl
/* 814216E8 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814216EC | 7F A4 EB 78 */	mr r4, r29
/* 814216F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814216F4 | 81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 814216F8 | 7D 89 03 A6 */	mtctr r12
/* 814216FC | 4E 80 04 21 */	bctrl
.L_81421700:
/* 81421700 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421704 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421708 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8142170C | 7D 89 03 A6 */	mtctr r12
/* 81421710 | 4E 80 04 21 */	bctrl
/* 81421714 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81421718 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8142171C | 41 80 00 EC */	blt .L_81421808
/* 81421720 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81421724 | 7F E3 FB 78 */	mr r3, r31
/* 81421728 | 38 80 00 06 */	li r4, 0x6
/* 8142172C | 38 A0 00 00 */	li r5, 0x0
/* 81421730 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81421734 | 7D 89 03 A6 */	mtctr r12
/* 81421738 | 4E 80 04 21 */	bctrl
/* 8142173C | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421740 | 7F 64 DB 78 */	mr r4, r27
/* 81421744 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421748 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8142174C | 7D 89 03 A6 */	mtctr r12
/* 81421750 | 4E 80 04 21 */	bctrl
/* 81421754 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421758 | 7F 24 CB 78 */	mr r4, r25
/* 8142175C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421760 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81421764 | 7D 89 03 A6 */	mtctr r12
/* 81421768 | 4E 80 04 21 */	bctrl
/* 8142176C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81421770 | 7F E3 FB 78 */	mr r3, r31
/* 81421774 | 38 80 00 09 */	li r4, 0x9
/* 81421778 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8142177C | 7D 89 03 A6 */	mtctr r12
/* 81421780 | 4E 80 04 21 */	bctrl
/* 81421784 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81421788 | 7F E3 FB 78 */	mr r3, r31
/* 8142178C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421790 | 7D 89 03 A6 */	mtctr r12
/* 81421794 | 4E 80 04 21 */	bctrl
/* 81421798 | 48 00 02 10 */	b .L_814219A8
.L_8142179C:
/* 8142179C | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814217A0 | 7C 9E 18 40 */	cmplw cr1, r30, r3
/* 814217A4 | 40 86 00 28 */	bne cr1, .L_814217CC
/* 814217A8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814217AC | 41 82 00 5C */	beq .L_81421808
/* 814217B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814217B4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814217B8 | 7D 89 03 A6 */	mtctr r12
/* 814217BC | 4E 80 04 21 */	bctrl
/* 814217C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814217C4 | 40 82 00 44 */	bne .L_81421808
/* 814217C8 | 48 00 01 E0 */	b .L_814219A8
.L_814217CC:
/* 814217CC | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 814217D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814217D4 | 41 82 00 34 */	beq .L_81421808
/* 814217D8 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 814217DC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814217E0 | 40 82 00 28 */	bne .L_81421808
/* 814217E4 | 41 86 00 24 */	beq cr1, .L_81421808
/* 814217E8 | 28 19 00 20 */	cmplwi r25, 0x20
/* 814217EC | 40 82 00 1C */	bne .L_81421808
/* 814217F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814217F4 | 3B 20 30 00 */	li r25, 0x3000
/* 814217F8 | 38 80 00 00 */	li r4, 0x0
/* 814217FC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81421800 | 7D 89 03 A6 */	mtctr r12
/* 81421804 | 4E 80 04 21 */	bctrl
.L_81421808:
/* 81421808 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8142180C | 7C 1E 18 40 */	cmplw r30, r3
/* 81421810 | 40 82 00 B4 */	bne .L_814218C4
/* 81421814 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421818 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142181C | 7D 89 03 A6 */	mtctr r12
/* 81421820 | 4E 80 04 21 */	bctrl
/* 81421824 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421828 | 7F 24 CB 78 */	mr r4, r25
/* 8142182C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421830 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81421834 | 7D 89 03 A6 */	mtctr r12
/* 81421838 | 4E 80 04 21 */	bctrl
/* 8142183C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421840 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421844 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421848 | 7D 89 03 A6 */	mtctr r12
/* 8142184C | 4E 80 04 21 */	bctrl
/* 81421850 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81421854 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421858 | 40 82 01 38 */	bne .L_81421990
/* 8142185C | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 81421860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421864 | 40 82 00 0C */	bne .L_81421870
/* 81421868 | 38 00 00 00 */	li r0, 0x0
/* 8142186C | 48 00 00 38 */	b .L_814218A4
.L_81421870:
/* 81421870 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 81421874 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421878 | 41 82 00 28 */	beq .L_814218A0
/* 8142187C | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421880 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421884 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421888 | 7D 89 03 A6 */	mtctr r12
/* 8142188C | 4E 80 04 21 */	bctrl
/* 81421890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421894 | 40 81 00 0C */	ble .L_814218A0
/* 81421898 | 38 00 00 01 */	li r0, 0x1
/* 8142189C | 48 00 00 08 */	b .L_814218A4
.L_814218A0:
/* 814218A0 | 38 00 00 00 */	li r0, 0x0
.L_814218A4:
/* 814218A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814218A8 | 41 82 00 E8 */	beq .L_81421990
/* 814218AC | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814218B0 | 38 80 00 00 */	li r4, 0x0
/* 814218B4 | 48 01 36 21 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 814218B8 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814218BC | 48 01 2C 09 */	bl update__Q39textinput8tistring6WithZiFv
/* 814218C0 | 48 00 00 D0 */	b .L_81421990
.L_814218C4:
/* 814218C4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814218C8 | 7F C3 F3 78 */	mr r3, r30
/* 814218CC | 7F 24 CB 78 */	mr r4, r25
/* 814218D0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 814218D4 | 7D 89 03 A6 */	mtctr r12
/* 814218D8 | 4E 80 04 21 */	bctrl
/* 814218DC | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 814218E0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814218E4 | 40 82 00 AC */	bne .L_81421990
/* 814218E8 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814218EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814218F0 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814218F4 | 7D 89 03 A6 */	mtctr r12
/* 814218F8 | 4E 80 04 21 */	bctrl
/* 814218FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421900 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81421904 | 7D 89 03 A6 */	mtctr r12
/* 81421908 | 4E 80 04 21 */	bctrl
/* 8142190C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421910 | 41 82 00 80 */	beq .L_81421990
/* 81421914 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421918 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8142191C | 38 80 00 00 */	li r4, 0x0
/* 81421920 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421924 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81421928 | 7D 89 03 A6 */	mtctr r12
/* 8142192C | 4E 80 04 21 */	bctrl
/* 81421930 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81421934 | 48 1E 6D 79 */	bl fn_816086AC
/* 81421938 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8142193C | 41 80 00 54 */	blt .L_81421990
/* 81421940 | 38 00 00 00 */	li r0, 0x0
/* 81421944 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81421948 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8142194C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421950 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421954 | 7D 89 03 A6 */	mtctr r12
/* 81421958 | 4E 80 04 21 */	bctrl
/* 8142195C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421960 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81421964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421968 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142196C | 7D 89 03 A6 */	mtctr r12
/* 81421970 | 4E 80 04 21 */	bctrl
/* 81421974 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421978 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142197C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421980 | 7D 89 03 A6 */	mtctr r12
/* 81421984 | 4E 80 04 21 */	bctrl
/* 81421988 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 8142198C | 48 01 28 ED */	bl partialConfirmForKR__Q39textinput8tistring6WithZiFv
.L_81421990:
/* 81421990 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81421994 | 7F E3 FB 78 */	mr r3, r31
/* 81421998 | 38 80 00 0A */	li r4, 0xa
/* 8142199C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814219A0 | 7D 89 03 A6 */	mtctr r12
/* 814219A4 | 4E 80 04 21 */	bctrl
.L_814219A8:
/* 814219A8 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814219AC | 48 1D 7B 59 */	bl _restgpr_25
/* 814219B0 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814219B4 | 7C 08 03 A6 */	mtlr r0
/* 814219B8 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814219BC | 4E 80 00 20 */	blr
.endfn confirmInputting___Q39textinput9inputform4BaseFwbUsbPv

# .text:0x5E50 | 0x814219C0 | size: 0x8
# textinput::tistring::WithZi::changeLetterMode(textinput::tistring::WithZi::LetterMode)
.fn changeLetterMode__Q39textinput8tistring6WithZiFQ49textinput8tistring6WithZi10LetterMode, global
/* 814219C0 | 90 83 00 A0 */	stw r4, 0xa0(r3)
/* 814219C4 | 4E 80 00 20 */	blr
.endfn changeLetterMode__Q39textinput8tistring6WithZiFQ49textinput8tistring6WithZi10LetterMode

# .text:0x5E58 | 0x814219C8 | size: 0x8
# textinput::tistring::WithZi::setCellPhoneHoldingkey(void*)
.fn setCellPhoneHoldingkey__Q39textinput8tistring6WithZiFPv, global
/* 814219C8 | 90 83 00 A4 */	stw r4, 0xa4(r3)
/* 814219CC | 4E 80 00 20 */	blr
.endfn setCellPhoneHoldingkey__Q39textinput8tistring6WithZiFPv

# .text:0x5E60 | 0x814219D0 | size: 0x298
# textinput::inputform::Base::inputCharZi_(wchar_t, unsigned long)
.fn inputCharZi___Q39textinput9inputform4BaseFwUl, global
/* 814219D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814219D4 | 7C 08 02 A6 */	mflr r0
/* 814219D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814219DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814219E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814219E4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814219E8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814219EC | 7C BD 2B 78 */	mr r29, r5
/* 814219F0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814219F4 | 7C 9C 23 78 */	mr r28, r4
/* 814219F8 | 80 03 01 F0 */	lwz r0, 0x1f0(r3)
/* 814219FC | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81421A00 | 41 82 00 18 */	beq .L_81421A18
/* 81421A04 | 54 A0 07 BF */	clrlwi. r0, r5, 30
/* 81421A08 | 41 82 00 10 */	beq .L_81421A18
/* 81421A0C | 7F 83 E3 78 */	mr r3, r28
/* 81421A10 | 48 01 7B F9 */	bl toWLower__Q29textinput4utilFw
/* 81421A14 | 7C 7C 1B 78 */	mr r28, r3
.L_81421A18:
/* 81421A18 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81421A1C | 3B C0 00 00 */	li r30, 0x0
/* 81421A20 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81421A24 | 40 82 00 08 */	bne .L_81421A2C
/* 81421A28 | 3B C0 00 01 */	li r30, 0x1
.L_81421A2C:
/* 81421A2C | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81421A30 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421A34 | 40 82 00 4C */	bne .L_81421A80
/* 81421A38 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 81421A3C | 48 01 88 81 */	bl isAlphabet__Q29textinput4utilFw
/* 81421A40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421A44 | 40 82 00 88 */	bne .L_81421ACC
/* 81421A48 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81421A4C | 28 00 00 31 */	cmplwi r0, 0x31
/* 81421A50 | 41 80 00 28 */	blt .L_81421A78
/* 81421A54 | 28 00 00 35 */	cmplwi r0, 0x35
/* 81421A58 | 41 81 00 20 */	bgt .L_81421A78
/* 81421A5C | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421A60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421A64 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81421A68 | 7D 89 03 A6 */	mtctr r12
/* 81421A6C | 4E 80 04 21 */	bctrl
/* 81421A70 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81421A74 | 40 82 00 58 */	bne .L_81421ACC
.L_81421A78:
/* 81421A78 | 3B C0 00 01 */	li r30, 0x1
/* 81421A7C | 48 00 00 50 */	b .L_81421ACC
.L_81421A80:
/* 81421A80 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81421A84 | 40 82 00 48 */	bne .L_81421ACC
/* 81421A88 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 81421A8C | 48 01 88 31 */	bl isAlphabet__Q29textinput4utilFw
/* 81421A90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421A94 | 41 82 00 34 */	beq .L_81421AC8
/* 81421A98 | 7F E3 FB 78 */	mr r3, r31
/* 81421A9C | 38 80 00 01 */	li r4, 0x1
/* 81421AA0 | 48 00 04 55 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81421AA4 | 80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 81421AA8 | 7C 03 00 40 */	cmplw r3, r0
/* 81421AAC | 40 82 00 20 */	bne .L_81421ACC
/* 81421AB0 | 57 A0 07 BD */	rlwinm. r0, r29, 0, 30, 30
/* 81421AB4 | 41 82 00 18 */	beq .L_81421ACC
/* 81421AB8 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 81421ABC | 48 01 7C 3D */	bl reverseLetterCaseW__Q29textinput4utilFw
/* 81421AC0 | 7C 7C 1B 78 */	mr r28, r3
/* 81421AC4 | 48 00 00 08 */	b .L_81421ACC
.L_81421AC8:
/* 81421AC8 | 3B C0 00 01 */	li r30, 0x1
.L_81421ACC:
/* 81421ACC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81421AD0 | 41 82 01 28 */	beq .L_81421BF8
/* 81421AD4 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 81421AD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421ADC | 40 82 00 0C */	bne .L_81421AE8
/* 81421AE0 | 38 00 00 00 */	li r0, 0x0
/* 81421AE4 | 48 00 00 38 */	b .L_81421B1C
.L_81421AE8:
/* 81421AE8 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 81421AEC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421AF0 | 41 82 00 28 */	beq .L_81421B18
/* 81421AF4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421AF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421AFC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421B00 | 7D 89 03 A6 */	mtctr r12
/* 81421B04 | 4E 80 04 21 */	bctrl
/* 81421B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421B0C | 40 81 00 0C */	ble .L_81421B18
/* 81421B10 | 38 00 00 01 */	li r0, 0x1
/* 81421B14 | 48 00 00 08 */	b .L_81421B1C
.L_81421B18:
/* 81421B18 | 38 00 00 00 */	li r0, 0x0
.L_81421B1C:
/* 81421B1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421B20 | 41 82 00 0C */	beq .L_81421B2C
/* 81421B24 | 7F E3 FB 78 */	mr r3, r31
/* 81421B28 | 4B FF F4 09 */	bl confirmInput___Q39textinput9inputform4BaseFv
.L_81421B2C:
/* 81421B2C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421B30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421B34 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421B38 | 7D 89 03 A6 */	mtctr r12
/* 81421B3C | 4E 80 04 21 */	bctrl
/* 81421B40 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421B44 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81421B48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421B4C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81421B50 | 7D 89 03 A6 */	mtctr r12
/* 81421B54 | 4E 80 04 21 */	bctrl
/* 81421B58 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81421B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421B60 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421B64 | 7D 89 03 A6 */	mtctr r12
/* 81421B68 | 4E 80 04 21 */	bctrl
/* 81421B6C | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81421B70 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421B74 | 40 82 00 68 */	bne .L_81421BDC
/* 81421B78 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 81421B7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421B80 | 40 82 00 0C */	bne .L_81421B8C
/* 81421B84 | 38 00 00 00 */	li r0, 0x0
/* 81421B88 | 48 00 00 38 */	b .L_81421BC0
.L_81421B8C:
/* 81421B8C | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 81421B90 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421B94 | 41 82 00 28 */	beq .L_81421BBC
/* 81421B98 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421B9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421BA0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421BA4 | 7D 89 03 A6 */	mtctr r12
/* 81421BA8 | 4E 80 04 21 */	bctrl
/* 81421BAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421BB0 | 40 81 00 0C */	ble .L_81421BBC
/* 81421BB4 | 38 00 00 01 */	li r0, 0x1
/* 81421BB8 | 48 00 00 08 */	b .L_81421BC0
.L_81421BBC:
/* 81421BBC | 38 00 00 00 */	li r0, 0x0
.L_81421BC0:
/* 81421BC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421BC4 | 41 82 00 18 */	beq .L_81421BDC
/* 81421BC8 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421BCC | 38 80 00 00 */	li r4, 0x0
/* 81421BD0 | 48 01 33 05 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81421BD4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81421BD8 | 48 01 28 ED */	bl update__Q39textinput8tistring6WithZiFv
.L_81421BDC:
/* 81421BDC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81421BE0 | 7F E3 FB 78 */	mr r3, r31
/* 81421BE4 | 38 80 00 09 */	li r4, 0x9
/* 81421BE8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81421BEC | 7D 89 03 A6 */	mtctr r12
/* 81421BF0 | 4E 80 04 21 */	bctrl
/* 81421BF4 | 48 00 00 4C */	b .L_81421C40
.L_81421BF8:
/* 81421BF8 | 57 A0 07 BE */	clrlwi r0, r29, 30
/* 81421BFC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81421C00 | 41 82 00 1C */	beq .L_81421C1C
/* 81421C04 | 40 80 00 20 */	bge .L_81421C24
/* 81421C08 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421C0C | 40 80 00 08 */	bge .L_81421C14
/* 81421C10 | 48 00 00 14 */	b .L_81421C24
.L_81421C14:
/* 81421C14 | 38 C0 00 00 */	li r6, 0x0
/* 81421C18 | 48 00 00 10 */	b .L_81421C28
.L_81421C1C:
/* 81421C1C | 38 C0 00 02 */	li r6, 0x2
/* 81421C20 | 48 00 00 08 */	b .L_81421C28
.L_81421C24:
/* 81421C24 | 38 C0 00 01 */	li r6, 0x1
.L_81421C28:
/* 81421C28 | 7F E3 FB 78 */	mr r3, r31
/* 81421C2C | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81421C30 | 38 A0 00 00 */	li r5, 0x0
/* 81421C34 | 38 E0 00 00 */	li r7, 0x0
/* 81421C38 | 39 00 00 00 */	li r8, 0x0
/* 81421C3C | 4B FF F8 1D */	bl confirmInputting___Q39textinput9inputform4BaseFwbUsbPv
.L_81421C40:
/* 81421C40 | 38 00 00 01 */	li r0, 0x1
/* 81421C44 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 81421C48 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81421C4C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81421C50 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81421C54 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81421C58 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81421C5C | 7C 08 03 A6 */	mtlr r0
/* 81421C60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81421C64 | 4E 80 00 20 */	blr
.endfn inputCharZi___Q39textinput9inputform4BaseFwUl

# .text:0x60F8 | 0x81421C68 | size: 0x21C
# textinput::inputform::Base::inputCharDefault_(wchar_t, unsigned long)
.fn inputCharDefault___Q39textinput9inputform4BaseFwUl, global
/* 81421C68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81421C6C | 7C 08 02 A6 */	mflr r0
/* 81421C70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81421C74 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81421C78 | 48 1D 78 49 */	bl _savegpr_27
/* 81421C7C | 7C 9C 23 78 */	mr r28, r4
/* 81421C80 | 7C 7B 1B 78 */	mr r27, r3
/* 81421C84 | 7C BD 2B 78 */	mr r29, r5
/* 81421C88 | 38 80 00 01 */	li r4, 0x1
/* 81421C8C | 48 00 02 69 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81421C90 | 83 FB 01 68 */	lwz r31, 0x168(r27)
/* 81421C94 | 7C 7E 1B 78 */	mr r30, r3
/* 81421C98 | 7F 63 DB 78 */	mr r3, r27
/* 81421C9C | 38 80 00 00 */	li r4, 0x0
/* 81421CA0 | 48 00 02 55 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81421CA4 | 7C 03 F8 40 */	cmplw r3, r31
/* 81421CA8 | 40 82 00 44 */	bne .L_81421CEC
/* 81421CAC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81421CB0 | 7F E3 FB 78 */	mr r3, r31
/* 81421CB4 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81421CB8 | 7D 89 03 A6 */	mtctr r12
/* 81421CBC | 4E 80 04 21 */	bctrl
/* 81421CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421CC4 | 40 82 00 28 */	bne .L_81421CEC
/* 81421CC8 | 80 7B 01 68 */	lwz r3, 0x168(r27)
/* 81421CCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421CD0 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 81421CD4 | 7D 89 03 A6 */	mtctr r12
/* 81421CD8 | 4E 80 04 21 */	bctrl
/* 81421CDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421CE0 | 41 80 00 0C */	blt .L_81421CEC
/* 81421CE4 | 7F 63 DB 78 */	mr r3, r27
/* 81421CE8 | 4B FF F2 49 */	bl confirmInput___Q39textinput9inputform4BaseFv
.L_81421CEC:
/* 81421CEC | 80 1B 01 F0 */	lwz r0, 0x1f0(r27)
/* 81421CF0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81421CF4 | 40 82 00 54 */	bne .L_81421D48
/* 81421CF8 | 80 7B 01 D4 */	lwz r3, 0x1d4(r27)
/* 81421CFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421D00 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81421D04 | 7D 89 03 A6 */	mtctr r12
/* 81421D08 | 4E 80 04 21 */	bctrl
/* 81421D0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421D10 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81421D14 | 7D 89 03 A6 */	mtctr r12
/* 81421D18 | 4E 80 04 21 */	bctrl
/* 81421D1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421D20 | 41 82 00 28 */	beq .L_81421D48
/* 81421D24 | 7F 83 E3 78 */	mr r3, r28
/* 81421D28 | 48 01 85 95 */	bl isAlphabet__Q29textinput4utilFw
/* 81421D2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421D30 | 41 82 00 18 */	beq .L_81421D48
/* 81421D34 | 57 A0 07 BD */	rlwinm. r0, r29, 0, 30, 30
/* 81421D38 | 41 82 00 10 */	beq .L_81421D48
/* 81421D3C | 7F 83 E3 78 */	mr r3, r28
/* 81421D40 | 48 01 79 B9 */	bl reverseLetterCaseW__Q29textinput4utilFw
/* 81421D44 | 7C 7C 1B 78 */	mr r28, r3
.L_81421D48:
/* 81421D48 | 80 7B 01 64 */	lwz r3, 0x164(r27)
/* 81421D4C | 7C 03 F0 40 */	cmplw r3, r30
/* 81421D50 | 40 82 00 B4 */	bne .L_81421E04
/* 81421D54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421D58 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421D5C | 7D 89 03 A6 */	mtctr r12
/* 81421D60 | 4E 80 04 21 */	bctrl
/* 81421D64 | 80 7B 01 64 */	lwz r3, 0x164(r27)
/* 81421D68 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81421D6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421D70 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81421D74 | 7D 89 03 A6 */	mtctr r12
/* 81421D78 | 4E 80 04 21 */	bctrl
/* 81421D7C | 80 7B 01 64 */	lwz r3, 0x164(r27)
/* 81421D80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421D84 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421D88 | 7D 89 03 A6 */	mtctr r12
/* 81421D8C | 4E 80 04 21 */	bctrl
/* 81421D90 | 80 1B 01 F0 */	lwz r0, 0x1f0(r27)
/* 81421D94 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421D98 | 40 82 00 84 */	bne .L_81421E1C
/* 81421D9C | 88 1B 01 78 */	lbz r0, 0x178(r27)
/* 81421DA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421DA4 | 40 82 00 0C */	bne .L_81421DB0
/* 81421DA8 | 38 00 00 00 */	li r0, 0x0
/* 81421DAC | 48 00 00 38 */	b .L_81421DE4
.L_81421DB0:
/* 81421DB0 | 80 1B 01 74 */	lwz r0, 0x174(r27)
/* 81421DB4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81421DB8 | 41 82 00 28 */	beq .L_81421DE0
/* 81421DBC | 80 7B 01 6C */	lwz r3, 0x16c(r27)
/* 81421DC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421DC4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81421DC8 | 7D 89 03 A6 */	mtctr r12
/* 81421DCC | 4E 80 04 21 */	bctrl
/* 81421DD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421DD4 | 40 81 00 0C */	ble .L_81421DE0
/* 81421DD8 | 38 00 00 01 */	li r0, 0x1
/* 81421DDC | 48 00 00 08 */	b .L_81421DE4
.L_81421DE0:
/* 81421DE0 | 38 00 00 00 */	li r0, 0x0
.L_81421DE4:
/* 81421DE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421DE8 | 41 82 00 34 */	beq .L_81421E1C
/* 81421DEC | 80 7B 01 6C */	lwz r3, 0x16c(r27)
/* 81421DF0 | 38 80 00 00 */	li r4, 0x0
/* 81421DF4 | 48 01 30 E1 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81421DF8 | 80 7B 01 6C */	lwz r3, 0x16c(r27)
/* 81421DFC | 48 01 26 C9 */	bl update__Q39textinput8tistring6WithZiFv
/* 81421E00 | 48 00 00 1C */	b .L_81421E1C
.L_81421E04:
/* 81421E04 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81421E08 | 7F C3 F3 78 */	mr r3, r30
/* 81421E0C | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81421E10 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81421E14 | 7D 89 03 A6 */	mtctr r12
/* 81421E18 | 4E 80 04 21 */	bctrl
.L_81421E1C:
/* 81421E1C | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81421E20 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81421E24 | 40 82 00 20 */	bne .L_81421E44
/* 81421E28 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81421E2C | 7F 63 DB 78 */	mr r3, r27
/* 81421E30 | 38 80 00 09 */	li r4, 0x9
/* 81421E34 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81421E38 | 7D 89 03 A6 */	mtctr r12
/* 81421E3C | 4E 80 04 21 */	bctrl
/* 81421E40 | 48 00 00 24 */	b .L_81421E64
.L_81421E44:
/* 81421E44 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81421E48 | 41 82 00 1C */	beq .L_81421E64
/* 81421E4C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81421E50 | 7F 63 DB 78 */	mr r3, r27
/* 81421E54 | 38 80 00 0A */	li r4, 0xa
/* 81421E58 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81421E5C | 7D 89 03 A6 */	mtctr r12
/* 81421E60 | 4E 80 04 21 */	bctrl
.L_81421E64:
/* 81421E64 | 38 00 00 01 */	li r0, 0x1
/* 81421E68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81421E6C | 90 1B 01 B0 */	stw r0, 0x1b0(r27)
/* 81421E70 | 48 1D 76 9D */	bl _restgpr_27
/* 81421E74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81421E78 | 7C 08 03 A6 */	mtlr r0
/* 81421E7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81421E80 | 4E 80 00 20 */	blr
.endfn inputCharDefault___Q39textinput9inputform4BaseFwUl

# .text:0x6314 | 0x81421E84 | size: 0x70
# textinput::inputform::Base::onClose()
.fn onClose__Q39textinput9inputform4BaseFv, global
/* 81421E84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81421E88 | 7C 08 02 A6 */	mflr r0
/* 81421E8C | 38 80 00 06 */	li r4, 0x6
/* 81421E90 | 38 A0 00 00 */	li r5, 0x0
/* 81421E94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81421E98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81421E9C | 7C 7F 1B 78 */	mr r31, r3
/* 81421EA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421EA4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81421EA8 | 7D 89 03 A6 */	mtctr r12
/* 81421EAC | 4E 80 04 21 */	bctrl
/* 81421EB0 | 38 7F 01 18 */	addi r3, r31, 0x118
/* 81421EB4 | 48 00 62 FD */	bl makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 81421EB8 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 81421EBC | 38 7F 00 10 */	addi r3, r31, 0x10
/* 81421EC0 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81421EC4 | 7D 89 03 A6 */	mtctr r12
/* 81421EC8 | 4E 80 04 21 */	bctrl
/* 81421ECC | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 81421ED0 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 81421ED4 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81421ED8 | 7D 89 03 A6 */	mtctr r12
/* 81421EDC | 4E 80 04 21 */	bctrl
/* 81421EE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81421EE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81421EE8 | 7C 08 03 A6 */	mtlr r0
/* 81421EEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81421EF0 | 4E 80 00 20 */	blr
.endfn onClose__Q39textinput9inputform4BaseFv

# .text:0x6384 | 0x81421EF4 | size: 0x1C0
# textinput::inputform::Base::getCurrentString(bool)
.fn getCurrentString__Q39textinput9inputform4BaseFb, global
/* 81421EF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81421EF8 | 7C 08 02 A6 */	mflr r0
/* 81421EFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81421F00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81421F04 | 7C 9F 23 78 */	mr r31, r4
/* 81421F08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81421F0C | 7C 7E 1B 78 */	mr r30, r3
/* 81421F10 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 81421F14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81421F18 | 40 82 00 0C */	bne .L_81421F24
/* 81421F1C | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81421F20 | 48 00 01 7C */	b .L_8142209C
.L_81421F24:
/* 81421F24 | 80 03 01 F0 */	lwz r0, 0x1f0(r3)
/* 81421F28 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81421F2C | 40 82 00 98 */	bne .L_81421FC4
/* 81421F30 | 80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 81421F34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421F38 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81421F3C | 7D 89 03 A6 */	mtctr r12
/* 81421F40 | 4E 80 04 21 */	bctrl
/* 81421F44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421F48 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81421F4C | 7D 89 03 A6 */	mtctr r12
/* 81421F50 | 4E 80 04 21 */	bctrl
/* 81421F54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421F58 | 41 82 00 38 */	beq .L_81421F90
/* 81421F5C | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81421F60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421F64 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81421F68 | 7D 89 03 A6 */	mtctr r12
/* 81421F6C | 4E 80 04 21 */	bctrl
/* 81421F70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421F74 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81421F78 | 7D 89 03 A6 */	mtctr r12
/* 81421F7C | 4E 80 04 21 */	bctrl
/* 81421F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421F84 | 40 82 00 40 */	bne .L_81421FC4
/* 81421F88 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81421F8C | 48 00 01 10 */	b .L_8142209C
.L_81421F90:
/* 81421F90 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81421F94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421F98 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81421F9C | 7D 89 03 A6 */	mtctr r12
/* 81421FA0 | 4E 80 04 21 */	bctrl
/* 81421FA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421FA8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81421FAC | 7D 89 03 A6 */	mtctr r12
/* 81421FB0 | 4E 80 04 21 */	bctrl
/* 81421FB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421FB8 | 41 82 00 0C */	beq .L_81421FC4
/* 81421FBC | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81421FC0 | 48 00 00 DC */	b .L_8142209C
.L_81421FC4:
/* 81421FC4 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81421FC8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81421FCC | 40 82 00 64 */	bne .L_81422030
/* 81421FD0 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81421FD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421FD8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81421FDC | 7D 89 03 A6 */	mtctr r12
/* 81421FE0 | 4E 80 04 21 */	bctrl
/* 81421FE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81421FE8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81421FEC | 7D 89 03 A6 */	mtctr r12
/* 81421FF0 | 4E 80 04 21 */	bctrl
/* 81421FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81421FF8 | 40 82 00 30 */	bne .L_81422028
/* 81421FFC | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422000 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422004 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422008 | 7D 89 03 A6 */	mtctr r12
/* 8142200C | 4E 80 04 21 */	bctrl
/* 81422010 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422014 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 81422018 | 7D 89 03 A6 */	mtctr r12
/* 8142201C | 4E 80 04 21 */	bctrl
/* 81422020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422024 | 40 82 00 0C */	bne .L_81422030
.L_81422028:
/* 81422028 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8142202C | 48 00 00 70 */	b .L_8142209C
.L_81422030:
/* 81422030 | 80 1E 01 74 */	lwz r0, 0x174(r30)
/* 81422034 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81422038 | 41 82 00 08 */	beq .L_81422040
/* 8142203C | 48 00 00 30 */	b .L_8142206C
.L_81422040:
/* 81422040 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422044 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422048 | 81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 8142204C | 7D 89 03 A6 */	mtctr r12
/* 81422050 | 4E 80 04 21 */	bctrl
/* 81422054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422058 | 41 82 00 0C */	beq .L_81422064
/* 8142205C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81422060 | 41 82 00 38 */	beq .L_81422098
.L_81422064:
/* 81422064 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422068 | 48 00 00 34 */	b .L_8142209C
.L_8142206C:
/* 8142206C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81422070 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422074 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81422078 | 7D 89 03 A6 */	mtctr r12
/* 8142207C | 4E 80 04 21 */	bctrl
/* 81422080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422084 | 41 82 00 0C */	beq .L_81422090
/* 81422088 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142208C | 41 82 00 0C */	beq .L_81422098
.L_81422090:
/* 81422090 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81422094 | 48 00 00 08 */	b .L_8142209C
.L_81422098:
/* 81422098 | 80 7E 01 64 */	lwz r3, 0x164(r30)
.L_8142209C:
/* 8142209C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814220A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814220A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814220A8 | 7C 08 03 A6 */	mtlr r0
/* 814220AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814220B0 | 4E 80 00 20 */	blr
.endfn getCurrentString__Q39textinput9inputform4BaseFb

# .text:0x6544 | 0x814220B4 | size: 0x8
# textinput::tistring::WithAtok::isFix()
.fn isFix__Q39textinput8tistring8WithAtokFv, global
/* 814220B4 | 38 60 00 01 */	li r3, 0x1
/* 814220B8 | 4E 80 00 20 */	blr
.endfn isFix__Q39textinput8tistring8WithAtokFv

# .text:0x654C | 0x814220BC | size: 0x8
# textinput::Manager::getCandidateBox() const
.fn getCandidateBox__Q29textinput7ManagerCFv, global
/* 814220BC | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 814220C0 | 4E 80 00 20 */	blr
.endfn getCandidateBox__Q29textinput7ManagerCFv

# .text:0x6554 | 0x814220C4 | size: 0x28
# textinput::inputform::Base::isAtokActive() const
.fn isAtokActive__Q39textinput9inputform4BaseCFv, global
/* 814220C4 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 814220C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814220CC | 40 82 00 0C */	bne .L_814220D8
/* 814220D0 | 38 60 00 00 */	li r3, 0x0
/* 814220D4 | 4E 80 00 20 */	blr
.L_814220D8:
/* 814220D8 | 80 63 01 74 */	lwz r3, 0x174(r3)
/* 814220DC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814220E0 | 7C 00 00 34 */	cntlzw r0, r0
/* 814220E4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814220E8 | 4E 80 00 20 */	blr
.endfn isAtokActive__Q39textinput9inputform4BaseCFv

# .text:0x657C | 0x814220EC | size: 0x5DC
# textinput::inputform::Base::onHKBCtrlCode(textinput::HVKCode, unsigned long)
.fn onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, global
/* 814220EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814220F0 | 7C 08 02 A6 */	mflr r0
/* 814220F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814220F8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814220FC | 7C 7F 1B 78 */	mr r31, r3
/* 81422100 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81422104 | 7C BE 2B 78 */	mr r30, r5
/* 81422108 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142210C | 7C 9D 23 78 */	mr r29, r4
/* 81422110 | 38 80 00 00 */	li r4, 0x0
/* 81422114 | 4B FF FD E1 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81422118 | 28 1D 00 24 */	cmplwi r29, 0x24
/* 8142211C | 41 81 05 90 */	bgt .L_814226AC
/* 81422120 | 3C 80 81 66 */	lis r4, jumptable_8165CB4C@ha
/* 81422124 | 57 A0 10 3A */	slwi r0, r29, 2
/* 81422128 | 38 84 CB 4C */	addi r4, r4, jumptable_8165CB4C@l
/* 8142212C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81422130 | 7C 89 03 A6 */	mtctr r4
/* 81422134 | 4E 80 04 20 */	bctr
.L_81422138:
/* 81422138 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8142213C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81422140 | 40 82 05 6C */	bne .L_814226AC
/* 81422144 | 7F E3 FB 78 */	mr r3, r31
/* 81422148 | 38 80 00 00 */	li r4, 0x0
/* 8142214C | 48 00 23 B9 */	bl toggleAtokMode___Q39textinput9inputform4BaseFUc
/* 81422150 | 48 00 05 5C */	b .L_814226AC
.L_81422154:
/* 81422154 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 81422158 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8142215C | 40 82 00 C0 */	bne .L_8142221C
/* 81422160 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422164 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422168 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8142216C | 7D 89 03 A6 */	mtctr r12
/* 81422170 | 4E 80 04 21 */	bctrl
/* 81422174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422178 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8142217C | 7D 89 03 A6 */	mtctr r12
/* 81422180 | 4E 80 04 21 */	bctrl
/* 81422184 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81422188 | 40 82 00 30 */	bne .L_814221B8
/* 8142218C | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422190 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422194 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422198 | 7D 89 03 A6 */	mtctr r12
/* 8142219C | 4E 80 04 21 */	bctrl
/* 814221A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814221A4 | 38 80 00 02 */	li r4, 0x2
/* 814221A8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814221AC | 7D 89 03 A6 */	mtctr r12
/* 814221B0 | 4E 80 04 21 */	bctrl
/* 814221B4 | 48 00 00 58 */	b .L_8142220C
.L_814221B8:
/* 814221B8 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814221BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814221C0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814221C4 | 7D 89 03 A6 */	mtctr r12
/* 814221C8 | 4E 80 04 21 */	bctrl
/* 814221CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814221D0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814221D4 | 7D 89 03 A6 */	mtctr r12
/* 814221D8 | 4E 80 04 21 */	bctrl
/* 814221DC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814221E0 | 40 82 00 2C */	bne .L_8142220C
/* 814221E4 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814221E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814221EC | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814221F0 | 7D 89 03 A6 */	mtctr r12
/* 814221F4 | 4E 80 04 21 */	bctrl
/* 814221F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814221FC | 38 80 00 01 */	li r4, 0x1
/* 81422200 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81422204 | 7D 89 03 A6 */	mtctr r12
/* 81422208 | 4E 80 04 21 */	bctrl
.L_8142220C:
/* 8142220C | 7F E3 FB 78 */	mr r3, r31
/* 81422210 | 38 80 00 01 */	li r4, 0x1
/* 81422214 | 48 00 22 F1 */	bl toggleAtokMode___Q39textinput9inputform4BaseFUc
/* 81422218 | 48 00 04 94 */	b .L_814226AC
.L_8142221C:
/* 8142221C | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81422220 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81422224 | 40 82 04 88 */	bne .L_814226AC
/* 81422228 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 8142222C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422230 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422234 | 7D 89 03 A6 */	mtctr r12
/* 81422238 | 4E 80 04 21 */	bctrl
/* 8142223C | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 81422240 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422244 | 40 82 04 68 */	bne .L_814226AC
/* 81422248 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 8142224C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422250 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422254 | 7D 89 03 A6 */	mtctr r12
/* 81422258 | 4E 80 04 21 */	bctrl
/* 8142225C | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 81422260 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422264 | 41 82 04 48 */	beq .L_814226AC
/* 81422268 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 8142226C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422270 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422274 | 7D 89 03 A6 */	mtctr r12
/* 81422278 | 4E 80 04 21 */	bctrl
/* 8142227C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422280 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81422284 | 7D 89 03 A6 */	mtctr r12
/* 81422288 | 4E 80 04 21 */	bctrl
/* 8142228C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422290 | 40 82 00 30 */	bne .L_814222C0
/* 81422294 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142229C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814222A0 | 7D 89 03 A6 */	mtctr r12
/* 814222A4 | 4E 80 04 21 */	bctrl
/* 814222A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814222AC | 38 80 00 01 */	li r4, 0x1
/* 814222B0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814222B4 | 7D 89 03 A6 */	mtctr r12
/* 814222B8 | 4E 80 04 21 */	bctrl
/* 814222BC | 48 00 03 F0 */	b .L_814226AC
.L_814222C0:
/* 814222C0 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814222C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814222C8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814222CC | 7D 89 03 A6 */	mtctr r12
/* 814222D0 | 4E 80 04 21 */	bctrl
/* 814222D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814222D8 | 38 80 00 00 */	li r4, 0x0
/* 814222DC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814222E0 | 7D 89 03 A6 */	mtctr r12
/* 814222E4 | 4E 80 04 21 */	bctrl
/* 814222E8 | 48 00 03 C4 */	b .L_814226AC
.L_814222EC:
/* 814222EC | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 814222F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814222F4 | 40 82 03 B8 */	bne .L_814226AC
/* 814222F8 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814222FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422300 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422304 | 7D 89 03 A6 */	mtctr r12
/* 81422308 | 4E 80 04 21 */	bctrl
/* 8142230C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422310 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81422314 | 7D 89 03 A6 */	mtctr r12
/* 81422318 | 4E 80 04 21 */	bctrl
/* 8142231C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422320 | 40 82 00 4C */	bne .L_8142236C
/* 81422324 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 81422328 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142232C | 40 82 00 40 */	bne .L_8142236C
/* 81422330 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422334 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422338 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8142233C | 7D 89 03 A6 */	mtctr r12
/* 81422340 | 4E 80 04 21 */	bctrl
/* 81422344 | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 81422348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142234C | 40 82 03 60 */	bne .L_814226AC
/* 81422350 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81422354 | 7F E3 FB 78 */	mr r3, r31
/* 81422358 | 38 80 00 06 */	li r4, 0x6
/* 8142235C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81422360 | 7D 89 03 A6 */	mtctr r12
/* 81422364 | 4E 80 04 21 */	bctrl
/* 81422368 | 48 00 03 44 */	b .L_814226AC
.L_8142236C:
/* 8142236C | 7F E3 FB 78 */	mr r3, r31
/* 81422370 | 38 80 00 02 */	li r4, 0x2
/* 81422374 | 48 00 21 91 */	bl toggleAtokMode___Q39textinput9inputform4BaseFUc
/* 81422378 | 48 00 03 34 */	b .L_814226AC
.L_8142237C:
/* 8142237C | 80 9F 01 74 */	lwz r4, 0x174(r31)
/* 81422380 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81422384 | 40 82 00 14 */	bne .L_81422398
/* 81422388 | 7F E3 FB 78 */	mr r3, r31
/* 8142238C | 38 80 00 00 */	li r4, 0x0
/* 81422390 | 48 00 21 75 */	bl toggleAtokMode___Q39textinput9inputform4BaseFUc
/* 81422394 | 48 00 03 18 */	b .L_814226AC
.L_81422398:
/* 81422398 | 80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 8142239C | 38 03 FF F8 */	subi r0, r3, 0x8
/* 814223A0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814223A4 | 41 81 00 C8 */	bgt .L_8142246C
/* 814223A8 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814223AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814223B0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814223B4 | 7D 89 03 A6 */	mtctr r12
/* 814223B8 | 4E 80 04 21 */	bctrl
/* 814223BC | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 814223C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814223C4 | 40 82 02 E8 */	bne .L_814226AC
/* 814223C8 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814223CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814223D0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814223D4 | 7D 89 03 A6 */	mtctr r12
/* 814223D8 | 4E 80 04 21 */	bctrl
/* 814223DC | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 814223E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814223E4 | 41 82 02 C8 */	beq .L_814226AC
/* 814223E8 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814223EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814223F0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814223F4 | 7D 89 03 A6 */	mtctr r12
/* 814223F8 | 4E 80 04 21 */	bctrl
/* 814223FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422400 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81422404 | 7D 89 03 A6 */	mtctr r12
/* 81422408 | 4E 80 04 21 */	bctrl
/* 8142240C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422410 | 40 82 00 30 */	bne .L_81422440
/* 81422414 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142241C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422420 | 7D 89 03 A6 */	mtctr r12
/* 81422424 | 4E 80 04 21 */	bctrl
/* 81422428 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142242C | 38 80 00 01 */	li r4, 0x1
/* 81422430 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81422434 | 7D 89 03 A6 */	mtctr r12
/* 81422438 | 4E 80 04 21 */	bctrl
/* 8142243C | 48 00 02 70 */	b .L_814226AC
.L_81422440:
/* 81422440 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422444 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422448 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8142244C | 7D 89 03 A6 */	mtctr r12
/* 81422450 | 4E 80 04 21 */	bctrl
/* 81422454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422458 | 38 80 00 00 */	li r4, 0x0
/* 8142245C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81422460 | 7D 89 03 A6 */	mtctr r12
/* 81422464 | 4E 80 04 21 */	bctrl
/* 81422468 | 48 00 02 44 */	b .L_814226AC
.L_8142246C:
/* 8142246C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81422470 | 41 82 02 3C */	beq .L_814226AC
/* 81422474 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422478 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142247C | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422480 | 7D 89 03 A6 */	mtctr r12
/* 81422484 | 4E 80 04 21 */	bctrl
/* 81422488 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142248C | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 81422490 | 7D 89 03 A6 */	mtctr r12
/* 81422494 | 4E 80 04 21 */	bctrl
/* 81422498 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142249C | 41 82 02 10 */	beq .L_814226AC
/* 814224A0 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 814224A4 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814224A8 | 7C 00 00 34 */	cntlzw r0, r0
/* 814224AC | 54 04 D9 7E */	srwi r4, r0, 5
/* 814224B0 | 48 01 6B 51 */	bl startPredictTurnOn__Q29textinput7ManagerFb
/* 814224B4 | 48 00 01 F8 */	b .L_814226AC
.L_814224B8:
/* 814224B8 | 80 1F 01 68 */	lwz r0, 0x168(r31)
/* 814224BC | 7C 03 00 40 */	cmplw r3, r0
/* 814224C0 | 40 82 01 EC */	bne .L_814226AC
/* 814224C4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814224C8 | 7F E3 FB 78 */	mr r3, r31
/* 814224CC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814224D0 | 7D 89 03 A6 */	mtctr r12
/* 814224D4 | 4E 80 04 21 */	bctrl
/* 814224D8 | 48 00 01 D4 */	b .L_814226AC
.L_814224DC:
/* 814224DC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814224E0 | 7F E3 FB 78 */	mr r3, r31
/* 814224E4 | 38 80 00 07 */	li r4, 0x7
/* 814224E8 | 38 A0 00 00 */	li r5, 0x0
/* 814224EC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814224F0 | 7D 89 03 A6 */	mtctr r12
/* 814224F4 | 4E 80 04 21 */	bctrl
/* 814224F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814224FC | 7F E3 FB 78 */	mr r3, r31
/* 81422500 | 38 80 00 27 */	li r4, 0x27
/* 81422504 | 38 A0 00 00 */	li r5, 0x0
/* 81422508 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142250C | 7D 89 03 A6 */	mtctr r12
/* 81422510 | 4E 80 04 21 */	bctrl
/* 81422514 | 48 00 01 98 */	b .L_814226AC
.L_81422518:
/* 81422518 | 7F E3 FB 78 */	mr r3, r31
/* 8142251C | 7F C4 F3 78 */	mr r4, r30
/* 81422520 | 48 00 26 39 */	bl onSpaceKeyHWKB__Q39textinput9inputform4BaseFUl
/* 81422524 | 48 00 01 88 */	b .L_814226AC
.L_81422528:
/* 81422528 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142252C | 7F E3 FB 78 */	mr r3, r31
/* 81422530 | 38 80 00 2C */	li r4, 0x2c
/* 81422534 | 38 A0 00 00 */	li r5, 0x0
/* 81422538 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142253C | 7D 89 03 A6 */	mtctr r12
/* 81422540 | 4E 80 04 21 */	bctrl
/* 81422544 | 48 00 01 68 */	b .L_814226AC
.L_81422548:
/* 81422548 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142254C | 7F E3 FB 78 */	mr r3, r31
/* 81422550 | 38 80 00 2D */	li r4, 0x2d
/* 81422554 | 38 A0 00 00 */	li r5, 0x0
/* 81422558 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142255C | 7D 89 03 A6 */	mtctr r12
/* 81422560 | 4E 80 04 21 */	bctrl
/* 81422564 | 48 00 01 48 */	b .L_814226AC
.L_81422568:
/* 81422568 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142256C | 7F E3 FB 78 */	mr r3, r31
/* 81422570 | 38 80 00 2A */	li r4, 0x2a
/* 81422574 | 38 A0 00 00 */	li r5, 0x0
/* 81422578 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142257C | 7D 89 03 A6 */	mtctr r12
/* 81422580 | 4E 80 04 21 */	bctrl
/* 81422584 | 48 00 01 28 */	b .L_814226AC
.L_81422588:
/* 81422588 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142258C | 7F E3 FB 78 */	mr r3, r31
/* 81422590 | 38 80 00 2B */	li r4, 0x2b
/* 81422594 | 38 A0 00 00 */	li r5, 0x0
/* 81422598 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142259C | 7D 89 03 A6 */	mtctr r12
/* 814225A0 | 4E 80 04 21 */	bctrl
/* 814225A4 | 48 00 01 08 */	b .L_814226AC
.L_814225A8:
/* 814225A8 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 814225AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814225B0 | 40 82 00 FC */	bne .L_814226AC
/* 814225B4 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814225B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814225BC | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814225C0 | 7D 89 03 A6 */	mtctr r12
/* 814225C4 | 4E 80 04 21 */	bctrl
/* 814225C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814225CC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814225D0 | 7D 89 03 A6 */	mtctr r12
/* 814225D4 | 4E 80 04 21 */	bctrl
/* 814225D8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814225DC | 40 82 00 30 */	bne .L_8142260C
/* 814225E0 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814225E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814225E8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814225EC | 7D 89 03 A6 */	mtctr r12
/* 814225F0 | 4E 80 04 21 */	bctrl
/* 814225F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814225F8 | 38 80 00 02 */	li r4, 0x2
/* 814225FC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81422600 | 7D 89 03 A6 */	mtctr r12
/* 81422604 | 4E 80 04 21 */	bctrl
/* 81422608 | 48 00 00 A4 */	b .L_814226AC
.L_8142260C:
/* 8142260C | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422614 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422618 | 7D 89 03 A6 */	mtctr r12
/* 8142261C | 4E 80 04 21 */	bctrl
/* 81422620 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422624 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81422628 | 7D 89 03 A6 */	mtctr r12
/* 8142262C | 4E 80 04 21 */	bctrl
/* 81422630 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81422634 | 40 82 00 30 */	bne .L_81422664
/* 81422638 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 8142263C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422640 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422644 | 7D 89 03 A6 */	mtctr r12
/* 81422648 | 4E 80 04 21 */	bctrl
/* 8142264C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422650 | 38 80 00 01 */	li r4, 0x1
/* 81422654 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81422658 | 7D 89 03 A6 */	mtctr r12
/* 8142265C | 4E 80 04 21 */	bctrl
/* 81422660 | 48 00 00 4C */	b .L_814226AC
.L_81422664:
/* 81422664 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422668 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142266C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422670 | 7D 89 03 A6 */	mtctr r12
/* 81422674 | 4E 80 04 21 */	bctrl
/* 81422678 | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8142267C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422680 | 40 82 00 2C */	bne .L_814226AC
/* 81422684 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81422688 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142268C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81422690 | 7D 89 03 A6 */	mtctr r12
/* 81422694 | 4E 80 04 21 */	bctrl
/* 81422698 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142269C | 38 80 00 01 */	li r4, 0x1
/* 814226A0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814226A4 | 7D 89 03 A6 */	mtctr r12
/* 814226A8 | 4E 80 04 21 */	bctrl
.L_814226AC:
/* 814226AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814226B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814226B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814226B8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814226BC | 7C 08 03 A6 */	mtlr r0
/* 814226C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814226C4 | 4E 80 00 20 */	blr
.endfn onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl

# .text:0x6B58 | 0x814226C8 | size: 0x160
# textinput::inputform::Base::moveCursorUp()
.fn moveCursorUp__Q39textinput9inputform4BaseFv, global
/* 814226C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814226CC | 7C 08 02 A6 */	mflr r0
/* 814226D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814226D4 | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 814226D8 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 814226DC | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 814226E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814226E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814226E8 | C3 E3 01 80 */	lfs f31, 0x180(r3)
/* 814226EC | C0 23 01 88 */	lfs f1, 0x188(r3)
/* 814226F0 | EC 3F 08 28 */	fsubs f1, f31, f1
/* 814226F4 | FC 20 08 50 */	fneg f1, f1
/* 814226F8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814226FC | 4C 41 13 82 */	cror eq, gt, eq
/* 81422700 | 40 82 00 88 */	bne .L_81422788
/* 81422704 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81422708 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8142270C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81422710 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422714 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81422718 | 7D 89 03 A6 */	mtctr r12
/* 8142271C | 4E 80 04 21 */	bctrl
/* 81422720 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81422724 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422728 | 40 82 00 2C */	bne .L_81422754
/* 8142272C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81422730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422734 | 40 82 00 20 */	bne .L_81422754
/* 81422738 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142273C | 7F E3 FB 78 */	mr r3, r31
/* 81422740 | 38 80 00 06 */	li r4, 0x6
/* 81422744 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81422748 | 7D 89 03 A6 */	mtctr r12
/* 8142274C | 4E 80 04 21 */	bctrl
/* 81422750 | 48 00 00 1C */	b .L_8142276C
.L_81422754:
/* 81422754 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81422758 | 7F E3 FB 78 */	mr r3, r31
/* 8142275C | 38 80 00 05 */	li r4, 0x5
/* 81422760 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81422764 | 7D 89 03 A6 */	mtctr r12
/* 81422768 | 4E 80 04 21 */	bctrl
.L_8142276C:
/* 8142276C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81422770 | 38 80 00 00 */	li r4, 0x0
/* 81422774 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422778 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142277C | 7D 89 03 A6 */	mtctr r12
/* 81422780 | 4E 80 04 21 */	bctrl
/* 81422784 | 48 00 00 80 */	b .L_81422804
.L_81422788:
/* 81422788 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8142278C | 4C 41 13 82 */	cror eq, gt, eq
/* 81422790 | 40 82 00 08 */	bne .L_81422798
/* 81422794 | 48 00 00 08 */	b .L_8142279C
.L_81422798:
/* 81422798 | FF E0 00 90 */	fmr f31, f0
.L_8142279C:
/* 8142279C | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 814227A0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814227A4 | 7D 89 03 A6 */	mtctr r12
/* 814227A8 | 38 63 00 10 */	addi r3, r3, 0x10
/* 814227AC | 4E 80 04 21 */	bctrl
/* 814227B0 | EC 5F 08 28 */	fsubs f2, f31, f1
/* 814227B4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814227B8 | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 814227BC | 7F E3 FB 78 */	mr r3, r31
/* 814227C0 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 814227C4 | EC 40 10 2A */	fadds f2, f0, f2
/* 814227C8 | C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 814227CC | 7D 89 03 A6 */	mtctr r12
/* 814227D0 | 4E 80 04 21 */	bctrl
/* 814227D4 | 7C 64 1B 78 */	mr r4, r3
/* 814227D8 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 814227DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814227E0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814227E4 | 7D 89 03 A6 */	mtctr r12
/* 814227E8 | 4E 80 04 21 */	bctrl
/* 814227EC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814227F0 | 7F E3 FB 78 */	mr r3, r31
/* 814227F4 | 38 80 00 05 */	li r4, 0x5
/* 814227F8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814227FC | 7D 89 03 A6 */	mtctr r12
/* 81422800 | 4E 80 04 21 */	bctrl
.L_81422804:
/* 81422804 | 38 00 00 01 */	li r0, 0x1
/* 81422808 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8142280C | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 81422810 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 81422814 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81422818 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8142281C | 7C 08 03 A6 */	mtlr r0
/* 81422820 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81422824 | 4E 80 00 20 */	blr
.endfn moveCursorUp__Q39textinput9inputform4BaseFv

# .text:0x6CB8 | 0x81422828 | size: 0x180
# textinput::inputform::Base::moveCursorDown()
.fn moveCursorDown__Q39textinput9inputform4BaseFv, global
/* 81422828 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142282C | 7C 08 02 A6 */	mflr r0
/* 81422830 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81422834 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81422838 | 7C 7F 1B 78 */	mr r31, r3
/* 8142283C | C0 43 01 80 */	lfs f2, 0x180(r3)
/* 81422840 | C0 23 01 88 */	lfs f1, 0x188(r3)
/* 81422844 | C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 81422848 | EC 22 08 28 */	fsubs f1, f2, f1
/* 8142284C | FC 20 08 50 */	fneg f1, f1
/* 81422850 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81422854 | 40 80 00 CC */	bge .L_81422920
/* 81422858 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 8142285C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81422860 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81422864 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422868 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8142286C | 7D 89 03 A6 */	mtctr r12
/* 81422870 | 4E 80 04 21 */	bctrl
/* 81422874 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81422878 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142287C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81422880 | 7D 89 03 A6 */	mtctr r12
/* 81422884 | 4E 80 04 21 */	bctrl
/* 81422888 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8142288C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81422890 | 7C 00 18 40 */	cmplw r0, r3
/* 81422894 | 40 82 00 44 */	bne .L_814228D8
/* 81422898 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8142289C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814228A0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814228A4 | 7D 89 03 A6 */	mtctr r12
/* 814228A8 | 4E 80 04 21 */	bctrl
/* 814228AC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814228B0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814228B4 | 7C 00 18 40 */	cmplw r0, r3
/* 814228B8 | 40 82 00 20 */	bne .L_814228D8
/* 814228BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814228C0 | 7F E3 FB 78 */	mr r3, r31
/* 814228C4 | 38 80 00 06 */	li r4, 0x6
/* 814228C8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814228CC | 7D 89 03 A6 */	mtctr r12
/* 814228D0 | 4E 80 04 21 */	bctrl
/* 814228D4 | 48 00 00 1C */	b .L_814228F0
.L_814228D8:
/* 814228D8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814228DC | 7F E3 FB 78 */	mr r3, r31
/* 814228E0 | 38 80 00 05 */	li r4, 0x5
/* 814228E4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814228E8 | 7D 89 03 A6 */	mtctr r12
/* 814228EC | 4E 80 04 21 */	bctrl
.L_814228F0:
/* 814228F0 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 814228F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814228F8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814228FC | 7D 89 03 A6 */	mtctr r12
/* 81422900 | 4E 80 04 21 */	bctrl
/* 81422904 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81422908 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8142290C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422910 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81422914 | 7D 89 03 A6 */	mtctr r12
/* 81422918 | 4E 80 04 21 */	bctrl
/* 8142291C | 48 00 00 70 */	b .L_8142298C
.L_81422920:
/* 81422920 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 81422924 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81422928 | 7D 89 03 A6 */	mtctr r12
/* 8142292C | 38 63 00 10 */	addi r3, r3, 0x10
/* 81422930 | 4E 80 04 21 */	bctrl
/* 81422934 | C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 81422938 | 7F E3 FB 78 */	mr r3, r31
/* 8142293C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81422940 | EC 40 08 2A */	fadds f2, f0, f1
/* 81422944 | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 81422948 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 8142294C | C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 81422950 | EC 40 10 2A */	fadds f2, f0, f2
/* 81422954 | 7D 89 03 A6 */	mtctr r12
/* 81422958 | 4E 80 04 21 */	bctrl
/* 8142295C | 7C 64 1B 78 */	mr r4, r3
/* 81422960 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81422964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422968 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142296C | 7D 89 03 A6 */	mtctr r12
/* 81422970 | 4E 80 04 21 */	bctrl
/* 81422974 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81422978 | 7F E3 FB 78 */	mr r3, r31
/* 8142297C | 38 80 00 05 */	li r4, 0x5
/* 81422980 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81422984 | 7D 89 03 A6 */	mtctr r12
/* 81422988 | 4E 80 04 21 */	bctrl
.L_8142298C:
/* 8142298C | 38 00 00 01 */	li r0, 0x1
/* 81422990 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 81422994 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81422998 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142299C | 7C 08 03 A6 */	mtlr r0
/* 814229A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814229A4 | 4E 80 00 20 */	blr
.endfn moveCursorDown__Q39textinput9inputform4BaseFv

# .text:0x6E38 | 0x814229A8 | size: 0x3D8
# textinput::inputform::Base::onPressUp()
.fn onPressUp__Q39textinput9inputform4BaseFv, global
/* 814229A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814229AC | 7C 08 02 A6 */	mflr r0
/* 814229B0 | 38 80 00 00 */	li r4, 0x0
/* 814229B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814229B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814229BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814229C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814229C4 | 4B FF F5 31 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 814229C8 | 80 1E 01 6C */	lwz r0, 0x16c(r30)
/* 814229CC | 7C 7F 1B 78 */	mr r31, r3
/* 814229D0 | 7C 00 18 40 */	cmplw r0, r3
/* 814229D4 | 41 82 03 94 */	beq .L_81422D68
/* 814229D8 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 814229DC | 7C 00 18 40 */	cmplw r0, r3
/* 814229E0 | 40 82 01 C8 */	bne .L_81422BA8
/* 814229E4 | 7C 03 03 78 */	mr r3, r0
/* 814229E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814229EC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814229F0 | 7D 89 03 A6 */	mtctr r12
/* 814229F4 | 4E 80 04 21 */	bctrl
/* 814229F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814229FC | 40 82 00 18 */	bne .L_81422A14
/* 81422A00 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422A04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422A08 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 81422A0C | 7D 89 03 A6 */	mtctr r12
/* 81422A10 | 4E 80 04 21 */	bctrl
.L_81422A14:
/* 81422A14 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422A18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422A1C | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81422A20 | 7D 89 03 A6 */	mtctr r12
/* 81422A24 | 4E 80 04 21 */	bctrl
/* 81422A28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422A2C | 41 82 00 F0 */	beq .L_81422B1C
/* 81422A30 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422A34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422A38 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422A3C | 7D 89 03 A6 */	mtctr r12
/* 81422A40 | 4E 80 04 21 */	bctrl
/* 81422A44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422A48 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81422A4C | 7D 89 03 A6 */	mtctr r12
/* 81422A50 | 4E 80 04 21 */	bctrl
/* 81422A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422A58 | 40 82 03 10 */	bne .L_81422D68
/* 81422A5C | 7F C3 F3 78 */	mr r3, r30
/* 81422A60 | 38 80 00 00 */	li r4, 0x0
/* 81422A64 | 4B FF F4 91 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81422A68 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 81422A6C | 7C 03 00 40 */	cmplw r3, r0
/* 81422A70 | 40 82 00 90 */	bne .L_81422B00
/* 81422A74 | 7C 03 03 78 */	mr r3, r0
/* 81422A78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422A7C | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81422A80 | 7D 89 03 A6 */	mtctr r12
/* 81422A84 | 4E 80 04 21 */	bctrl
/* 81422A88 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81422A8C | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422A90 | 7C 1F 07 34 */	extsh r31, r0
/* 81422A94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422A98 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81422A9C | 7D 89 03 A6 */	mtctr r12
/* 81422AA0 | 4E 80 04 21 */	bctrl
/* 81422AA4 | 7C 1F 18 00 */	cmpw r31, r3
/* 81422AA8 | 41 80 00 0C */	blt .L_81422AB4
/* 81422AAC | 3B E0 00 00 */	li r31, 0x0
/* 81422AB0 | 48 00 00 28 */	b .L_81422AD8
.L_81422AB4:
/* 81422AB4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81422AB8 | 40 80 00 20 */	bge .L_81422AD8
/* 81422ABC | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422AC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422AC4 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81422AC8 | 7D 89 03 A6 */	mtctr r12
/* 81422ACC | 4E 80 04 21 */	bctrl
/* 81422AD0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81422AD4 | 7C 1F 07 34 */	extsh r31, r0
.L_81422AD8:
/* 81422AD8 | 7F C3 F3 78 */	mr r3, r30
/* 81422ADC | 7F E4 FB 78 */	mr r4, r31
/* 81422AE0 | 48 00 18 71 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81422AE4 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422AEC | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422AF0 | 7D 89 03 A6 */	mtctr r12
/* 81422AF4 | 4E 80 04 21 */	bctrl
/* 81422AF8 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81422AFC | 48 00 A3 B1 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
.L_81422B00:
/* 81422B00 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422B04 | 7F C3 F3 78 */	mr r3, r30
/* 81422B08 | 38 80 00 06 */	li r4, 0x6
/* 81422B0C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81422B10 | 7D 89 03 A6 */	mtctr r12
/* 81422B14 | 4E 80 04 21 */	bctrl
/* 81422B18 | 48 00 02 50 */	b .L_81422D68
.L_81422B1C:
/* 81422B1C | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422B20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422B24 | 81 8C 01 24 */	lwz r12, 0x124(r12)
/* 81422B28 | 7D 89 03 A6 */	mtctr r12
/* 81422B2C | 4E 80 04 21 */	bctrl
/* 81422B30 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81422B34 | 41 82 02 34 */	beq .L_81422D68
/* 81422B38 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422B3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422B40 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 81422B44 | 7D 89 03 A6 */	mtctr r12
/* 81422B48 | 4E 80 04 21 */	bctrl
/* 81422B4C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422B50 | 7F C3 F3 78 */	mr r3, r30
/* 81422B54 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81422B58 | 7D 89 03 A6 */	mtctr r12
/* 81422B5C | 4E 80 04 21 */	bctrl
/* 81422B60 | 7F C3 F3 78 */	mr r3, r30
/* 81422B64 | 38 80 00 00 */	li r4, 0x0
/* 81422B68 | 48 00 17 E9 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81422B6C | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422B70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422B74 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422B78 | 7D 89 03 A6 */	mtctr r12
/* 81422B7C | 4E 80 04 21 */	bctrl
/* 81422B80 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81422B84 | 48 00 A3 29 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81422B88 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422B8C | 7F C3 F3 78 */	mr r3, r30
/* 81422B90 | 38 80 00 2F */	li r4, 0x2f
/* 81422B94 | 38 A0 00 00 */	li r5, 0x0
/* 81422B98 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81422B9C | 7D 89 03 A6 */	mtctr r12
/* 81422BA0 | 4E 80 04 21 */	bctrl
/* 81422BA4 | 48 00 01 C4 */	b .L_81422D68
.L_81422BA8:
/* 81422BA8 | 80 1E 01 64 */	lwz r0, 0x164(r30)
/* 81422BAC | 7C 03 00 40 */	cmplw r3, r0
/* 81422BB0 | 40 82 01 B8 */	bne .L_81422D68
/* 81422BB4 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81422BB8 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81422BBC | 40 82 00 D8 */	bne .L_81422C94
/* 81422BC0 | 7F C3 F3 78 */	mr r3, r30
/* 81422BC4 | 38 80 00 00 */	li r4, 0x0
/* 81422BC8 | 4B FF F3 2D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81422BCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422BD0 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81422BD4 | 7D 89 03 A6 */	mtctr r12
/* 81422BD8 | 4E 80 04 21 */	bctrl
/* 81422BDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422BE0 | 40 82 00 B4 */	bne .L_81422C94
/* 81422BE4 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81422BE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422BEC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81422BF0 | 7D 89 03 A6 */	mtctr r12
/* 81422BF4 | 4E 80 04 21 */	bctrl
/* 81422BF8 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81422BFC | 38 80 00 0A */	li r4, 0xa
/* 81422C00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422C04 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81422C08 | 7D 89 03 A6 */	mtctr r12
/* 81422C0C | 4E 80 04 21 */	bctrl
/* 81422C10 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81422C14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422C18 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81422C1C | 7D 89 03 A6 */	mtctr r12
/* 81422C20 | 4E 80 04 21 */	bctrl
/* 81422C24 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81422C28 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81422C2C | 40 82 00 68 */	bne .L_81422C94
/* 81422C30 | 88 1E 01 78 */	lbz r0, 0x178(r30)
/* 81422C34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422C38 | 40 82 00 0C */	bne .L_81422C44
/* 81422C3C | 38 00 00 00 */	li r0, 0x0
/* 81422C40 | 48 00 00 38 */	b .L_81422C78
.L_81422C44:
/* 81422C44 | 80 1E 01 74 */	lwz r0, 0x174(r30)
/* 81422C48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81422C4C | 41 82 00 28 */	beq .L_81422C74
/* 81422C50 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81422C54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422C58 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81422C5C | 7D 89 03 A6 */	mtctr r12
/* 81422C60 | 4E 80 04 21 */	bctrl
/* 81422C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422C68 | 40 81 00 0C */	ble .L_81422C74
/* 81422C6C | 38 00 00 01 */	li r0, 0x1
/* 81422C70 | 48 00 00 08 */	b .L_81422C78
.L_81422C74:
/* 81422C74 | 38 00 00 00 */	li r0, 0x0
.L_81422C78:
/* 81422C78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81422C7C | 41 82 00 18 */	beq .L_81422C94
/* 81422C80 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81422C84 | 38 80 00 00 */	li r4, 0x0
/* 81422C88 | 48 01 22 4D */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81422C8C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81422C90 | 48 01 18 35 */	bl update__Q39textinput8tistring6WithZiFv
.L_81422C94:
/* 81422C94 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81422C98 | 7F E3 FB 78 */	mr r3, r31
/* 81422C9C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81422CA0 | 7D 89 03 A6 */	mtctr r12
/* 81422CA4 | 4E 80 04 21 */	bctrl
/* 81422CA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422CAC | 40 82 00 BC */	bne .L_81422D68
/* 81422CB0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81422CB4 | 7F E3 FB 78 */	mr r3, r31
/* 81422CB8 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81422CBC | 7D 89 03 A6 */	mtctr r12
/* 81422CC0 | 4E 80 04 21 */	bctrl
/* 81422CC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422CC8 | 40 82 00 08 */	bne .L_81422CD0
/* 81422CCC | 48 00 00 9C */	b .L_81422D68
.L_81422CD0:
/* 81422CD0 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422CD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422CD8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81422CDC | 7D 89 03 A6 */	mtctr r12
/* 81422CE0 | 4E 80 04 21 */	bctrl
/* 81422CE4 | 38 00 00 00 */	li r0, 0x0
/* 81422CE8 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81422CEC | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81422CF0 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422CF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422CF8 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 81422CFC | 7D 89 03 A6 */	mtctr r12
/* 81422D00 | 4E 80 04 21 */	bctrl
/* 81422D04 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422D08 | 7F C3 F3 78 */	mr r3, r30
/* 81422D0C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81422D10 | 7D 89 03 A6 */	mtctr r12
/* 81422D14 | 4E 80 04 21 */	bctrl
/* 81422D18 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422D1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422D20 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81422D24 | 7D 89 03 A6 */	mtctr r12
/* 81422D28 | 4E 80 04 21 */	bctrl
/* 81422D2C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81422D30 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81422D34 | 41 82 00 34 */	beq .L_81422D68
/* 81422D38 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422D3C | 7F C3 F3 78 */	mr r3, r30
/* 81422D40 | 81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 81422D44 | 7D 89 03 A6 */	mtctr r12
/* 81422D48 | 4E 80 04 21 */	bctrl
/* 81422D4C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422D50 | 7F C3 F3 78 */	mr r3, r30
/* 81422D54 | 38 80 00 2F */	li r4, 0x2f
/* 81422D58 | 38 A0 00 00 */	li r5, 0x0
/* 81422D5C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81422D60 | 7D 89 03 A6 */	mtctr r12
/* 81422D64 | 4E 80 04 21 */	bctrl
.L_81422D68:
/* 81422D68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81422D6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81422D70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81422D74 | 7C 08 03 A6 */	mtlr r0
/* 81422D78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81422D7C | 4E 80 00 20 */	blr
.endfn onPressUp__Q39textinput9inputform4BaseFv

# .text:0x7210 | 0x81422D80 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::isInScroll()
.fn isInScroll__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81422D80 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81422D84 | 48 00 A1 18 */	b IsScrolling__Q39textinput12candidatebox10UITextAreaFv
.endfn isInScroll__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x7218 | 0x81422D88 | size: 0x3D8
# textinput::inputform::Base::onPressDown()
.fn onPressDown__Q39textinput9inputform4BaseFv, global
/* 81422D88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81422D8C | 7C 08 02 A6 */	mflr r0
/* 81422D90 | 38 80 00 00 */	li r4, 0x0
/* 81422D94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81422D98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81422D9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81422DA0 | 7C 7E 1B 78 */	mr r30, r3
/* 81422DA4 | 4B FF F1 51 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81422DA8 | 80 1E 01 6C */	lwz r0, 0x16c(r30)
/* 81422DAC | 7C 7F 1B 78 */	mr r31, r3
/* 81422DB0 | 7C 00 18 40 */	cmplw r0, r3
/* 81422DB4 | 41 82 03 94 */	beq .L_81423148
/* 81422DB8 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 81422DBC | 7C 00 18 40 */	cmplw r0, r3
/* 81422DC0 | 40 82 01 C8 */	bne .L_81422F88
/* 81422DC4 | 7C 03 03 78 */	mr r3, r0
/* 81422DC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422DCC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81422DD0 | 7D 89 03 A6 */	mtctr r12
/* 81422DD4 | 4E 80 04 21 */	bctrl
/* 81422DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422DDC | 40 82 00 18 */	bne .L_81422DF4
/* 81422DE0 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422DE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422DE8 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 81422DEC | 7D 89 03 A6 */	mtctr r12
/* 81422DF0 | 4E 80 04 21 */	bctrl
.L_81422DF4:
/* 81422DF4 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422DF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422DFC | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81422E00 | 7D 89 03 A6 */	mtctr r12
/* 81422E04 | 4E 80 04 21 */	bctrl
/* 81422E08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422E0C | 41 82 00 F0 */	beq .L_81422EFC
/* 81422E10 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422E14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422E18 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422E1C | 7D 89 03 A6 */	mtctr r12
/* 81422E20 | 4E 80 04 21 */	bctrl
/* 81422E24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422E28 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81422E2C | 7D 89 03 A6 */	mtctr r12
/* 81422E30 | 4E 80 04 21 */	bctrl
/* 81422E34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422E38 | 40 82 03 10 */	bne .L_81423148
/* 81422E3C | 7F C3 F3 78 */	mr r3, r30
/* 81422E40 | 38 80 00 00 */	li r4, 0x0
/* 81422E44 | 4B FF F0 B1 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81422E48 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 81422E4C | 7C 03 00 40 */	cmplw r3, r0
/* 81422E50 | 40 82 00 90 */	bne .L_81422EE0
/* 81422E54 | 7C 03 03 78 */	mr r3, r0
/* 81422E58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422E5C | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81422E60 | 7D 89 03 A6 */	mtctr r12
/* 81422E64 | 4E 80 04 21 */	bctrl
/* 81422E68 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81422E6C | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422E70 | 7C 1F 07 34 */	extsh r31, r0
/* 81422E74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422E78 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81422E7C | 7D 89 03 A6 */	mtctr r12
/* 81422E80 | 4E 80 04 21 */	bctrl
/* 81422E84 | 7C 1F 18 00 */	cmpw r31, r3
/* 81422E88 | 41 80 00 0C */	blt .L_81422E94
/* 81422E8C | 3B E0 00 00 */	li r31, 0x0
/* 81422E90 | 48 00 00 28 */	b .L_81422EB8
.L_81422E94:
/* 81422E94 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81422E98 | 40 80 00 20 */	bge .L_81422EB8
/* 81422E9C | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422EA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422EA4 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81422EA8 | 7D 89 03 A6 */	mtctr r12
/* 81422EAC | 4E 80 04 21 */	bctrl
/* 81422EB0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81422EB4 | 7C 1F 07 34 */	extsh r31, r0
.L_81422EB8:
/* 81422EB8 | 7F C3 F3 78 */	mr r3, r30
/* 81422EBC | 7F E4 FB 78 */	mr r4, r31
/* 81422EC0 | 48 00 14 91 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81422EC4 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422EC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422ECC | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422ED0 | 7D 89 03 A6 */	mtctr r12
/* 81422ED4 | 4E 80 04 21 */	bctrl
/* 81422ED8 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81422EDC | 48 00 9F D1 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
.L_81422EE0:
/* 81422EE0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422EE4 | 7F C3 F3 78 */	mr r3, r30
/* 81422EE8 | 38 80 00 06 */	li r4, 0x6
/* 81422EEC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81422EF0 | 7D 89 03 A6 */	mtctr r12
/* 81422EF4 | 4E 80 04 21 */	bctrl
/* 81422EF8 | 48 00 02 50 */	b .L_81423148
.L_81422EFC:
/* 81422EFC | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422F00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422F04 | 81 8C 01 24 */	lwz r12, 0x124(r12)
/* 81422F08 | 7D 89 03 A6 */	mtctr r12
/* 81422F0C | 4E 80 04 21 */	bctrl
/* 81422F10 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81422F14 | 41 82 02 34 */	beq .L_81423148
/* 81422F18 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81422F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422F20 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 81422F24 | 7D 89 03 A6 */	mtctr r12
/* 81422F28 | 4E 80 04 21 */	bctrl
/* 81422F2C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422F30 | 7F C3 F3 78 */	mr r3, r30
/* 81422F34 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81422F38 | 7D 89 03 A6 */	mtctr r12
/* 81422F3C | 4E 80 04 21 */	bctrl
/* 81422F40 | 7F C3 F3 78 */	mr r3, r30
/* 81422F44 | 38 80 00 00 */	li r4, 0x0
/* 81422F48 | 48 00 14 09 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81422F4C | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81422F50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422F54 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81422F58 | 7D 89 03 A6 */	mtctr r12
/* 81422F5C | 4E 80 04 21 */	bctrl
/* 81422F60 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81422F64 | 48 00 9F 49 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81422F68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81422F6C | 7F C3 F3 78 */	mr r3, r30
/* 81422F70 | 38 80 00 2F */	li r4, 0x2f
/* 81422F74 | 38 A0 00 00 */	li r5, 0x0
/* 81422F78 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81422F7C | 7D 89 03 A6 */	mtctr r12
/* 81422F80 | 4E 80 04 21 */	bctrl
/* 81422F84 | 48 00 01 C4 */	b .L_81423148
.L_81422F88:
/* 81422F88 | 80 1E 01 64 */	lwz r0, 0x164(r30)
/* 81422F8C | 7C 03 00 40 */	cmplw r3, r0
/* 81422F90 | 40 82 01 B8 */	bne .L_81423148
/* 81422F94 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81422F98 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81422F9C | 40 82 00 D8 */	bne .L_81423074
/* 81422FA0 | 7F C3 F3 78 */	mr r3, r30
/* 81422FA4 | 38 80 00 00 */	li r4, 0x0
/* 81422FA8 | 4B FF EF 4D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81422FAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422FB0 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81422FB4 | 7D 89 03 A6 */	mtctr r12
/* 81422FB8 | 4E 80 04 21 */	bctrl
/* 81422FBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81422FC0 | 40 82 00 B4 */	bne .L_81423074
/* 81422FC4 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81422FC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422FCC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81422FD0 | 7D 89 03 A6 */	mtctr r12
/* 81422FD4 | 4E 80 04 21 */	bctrl
/* 81422FD8 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81422FDC | 38 80 00 0A */	li r4, 0xa
/* 81422FE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422FE4 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81422FE8 | 7D 89 03 A6 */	mtctr r12
/* 81422FEC | 4E 80 04 21 */	bctrl
/* 81422FF0 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81422FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81422FF8 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81422FFC | 7D 89 03 A6 */	mtctr r12
/* 81423000 | 4E 80 04 21 */	bctrl
/* 81423004 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81423008 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8142300C | 40 82 00 68 */	bne .L_81423074
/* 81423010 | 88 1E 01 78 */	lbz r0, 0x178(r30)
/* 81423014 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423018 | 40 82 00 0C */	bne .L_81423024
/* 8142301C | 38 00 00 00 */	li r0, 0x0
/* 81423020 | 48 00 00 38 */	b .L_81423058
.L_81423024:
/* 81423024 | 80 1E 01 74 */	lwz r0, 0x174(r30)
/* 81423028 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8142302C | 41 82 00 28 */	beq .L_81423054
/* 81423030 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423034 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423038 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8142303C | 7D 89 03 A6 */	mtctr r12
/* 81423040 | 4E 80 04 21 */	bctrl
/* 81423044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423048 | 40 81 00 0C */	ble .L_81423054
/* 8142304C | 38 00 00 01 */	li r0, 0x1
/* 81423050 | 48 00 00 08 */	b .L_81423058
.L_81423054:
/* 81423054 | 38 00 00 00 */	li r0, 0x0
.L_81423058:
/* 81423058 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142305C | 41 82 00 18 */	beq .L_81423074
/* 81423060 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423064 | 38 80 00 00 */	li r4, 0x0
/* 81423068 | 48 01 1E 6D */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8142306C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423070 | 48 01 14 55 */	bl update__Q39textinput8tistring6WithZiFv
.L_81423074:
/* 81423074 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423078 | 7F E3 FB 78 */	mr r3, r31
/* 8142307C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81423080 | 7D 89 03 A6 */	mtctr r12
/* 81423084 | 4E 80 04 21 */	bctrl
/* 81423088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142308C | 40 82 00 BC */	bne .L_81423148
/* 81423090 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423094 | 7F E3 FB 78 */	mr r3, r31
/* 81423098 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8142309C | 7D 89 03 A6 */	mtctr r12
/* 814230A0 | 4E 80 04 21 */	bctrl
/* 814230A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814230A8 | 40 82 00 08 */	bne .L_814230B0
/* 814230AC | 48 00 00 9C */	b .L_81423148
.L_814230B0:
/* 814230B0 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 814230B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814230B8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814230BC | 7D 89 03 A6 */	mtctr r12
/* 814230C0 | 4E 80 04 21 */	bctrl
/* 814230C4 | 38 00 00 00 */	li r0, 0x0
/* 814230C8 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 814230CC | 98 03 00 16 */	stb r0, 0x16(r3)
/* 814230D0 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 814230D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814230D8 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 814230DC | 7D 89 03 A6 */	mtctr r12
/* 814230E0 | 4E 80 04 21 */	bctrl
/* 814230E4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814230E8 | 7F C3 F3 78 */	mr r3, r30
/* 814230EC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814230F0 | 7D 89 03 A6 */	mtctr r12
/* 814230F4 | 4E 80 04 21 */	bctrl
/* 814230F8 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 814230FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423100 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81423104 | 7D 89 03 A6 */	mtctr r12
/* 81423108 | 4E 80 04 21 */	bctrl
/* 8142310C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81423110 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81423114 | 41 82 00 34 */	beq .L_81423148
/* 81423118 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142311C | 7F C3 F3 78 */	mr r3, r30
/* 81423120 | 81 8C 01 90 */	lwz r12, 0x190(r12)
/* 81423124 | 7D 89 03 A6 */	mtctr r12
/* 81423128 | 4E 80 04 21 */	bctrl
/* 8142312C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423130 | 7F C3 F3 78 */	mr r3, r30
/* 81423134 | 38 80 00 2F */	li r4, 0x2f
/* 81423138 | 38 A0 00 00 */	li r5, 0x0
/* 8142313C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81423140 | 7D 89 03 A6 */	mtctr r12
/* 81423144 | 4E 80 04 21 */	bctrl
.L_81423148:
/* 81423148 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142314C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81423150 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81423154 | 7C 08 03 A6 */	mtlr r0
/* 81423158 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142315C | 4E 80 00 20 */	blr
.endfn onPressDown__Q39textinput9inputform4BaseFv

# .text:0x75F0 | 0x81423160 | size: 0x268
# textinput::inputform::Base::onPressLeft()
.fn onPressLeft__Q39textinput9inputform4BaseFv, global
/* 81423160 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81423164 | 7C 08 02 A6 */	mflr r0
/* 81423168 | 38 80 00 00 */	li r4, 0x0
/* 8142316C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81423170 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81423174 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81423178 | 7C 7E 1B 78 */	mr r30, r3
/* 8142317C | 4B FF ED 79 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423180 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423184 | 7C 7F 1B 78 */	mr r31, r3
/* 81423188 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142318C | 7D 89 03 A6 */	mtctr r12
/* 81423190 | 4E 80 04 21 */	bctrl
/* 81423194 | 80 1E 01 64 */	lwz r0, 0x164(r30)
/* 81423198 | 7C 1F 00 40 */	cmplw r31, r0
/* 8142319C | 40 82 01 9C */	bne .L_81423338
/* 814231A0 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 814231A4 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814231A8 | 40 82 00 EC */	bne .L_81423294
/* 814231AC | 7F C3 F3 78 */	mr r3, r30
/* 814231B0 | 38 80 00 00 */	li r4, 0x0
/* 814231B4 | 4B FF ED 41 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 814231B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814231BC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814231C0 | 7D 89 03 A6 */	mtctr r12
/* 814231C4 | 4E 80 04 21 */	bctrl
/* 814231C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814231CC | 40 82 00 B4 */	bne .L_81423280
/* 814231D0 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 814231D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814231D8 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814231DC | 7D 89 03 A6 */	mtctr r12
/* 814231E0 | 4E 80 04 21 */	bctrl
/* 814231E4 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 814231E8 | 38 80 00 0A */	li r4, 0xa
/* 814231EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814231F0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 814231F4 | 7D 89 03 A6 */	mtctr r12
/* 814231F8 | 4E 80 04 21 */	bctrl
/* 814231FC | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81423200 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423204 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423208 | 7D 89 03 A6 */	mtctr r12
/* 8142320C | 4E 80 04 21 */	bctrl
/* 81423210 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81423214 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81423218 | 40 82 00 68 */	bne .L_81423280
/* 8142321C | 88 1E 01 78 */	lbz r0, 0x178(r30)
/* 81423220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423224 | 40 82 00 0C */	bne .L_81423230
/* 81423228 | 38 00 00 00 */	li r0, 0x0
/* 8142322C | 48 00 00 38 */	b .L_81423264
.L_81423230:
/* 81423230 | 80 1E 01 74 */	lwz r0, 0x174(r30)
/* 81423234 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81423238 | 41 82 00 28 */	beq .L_81423260
/* 8142323C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423240 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423244 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423248 | 7D 89 03 A6 */	mtctr r12
/* 8142324C | 4E 80 04 21 */	bctrl
/* 81423250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423254 | 40 81 00 0C */	ble .L_81423260
/* 81423258 | 38 00 00 01 */	li r0, 0x1
/* 8142325C | 48 00 00 08 */	b .L_81423264
.L_81423260:
/* 81423260 | 38 00 00 00 */	li r0, 0x0
.L_81423264:
/* 81423264 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423268 | 41 82 00 18 */	beq .L_81423280
/* 8142326C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423270 | 38 80 00 00 */	li r4, 0x0
/* 81423274 | 48 01 1C 61 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81423278 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 8142327C | 48 01 12 49 */	bl update__Q39textinput8tistring6WithZiFv
.L_81423280:
/* 81423280 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423284 | 7F E3 FB 78 */	mr r3, r31
/* 81423288 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142328C | 7D 89 03 A6 */	mtctr r12
/* 81423290 | 4E 80 04 21 */	bctrl
.L_81423294:
/* 81423294 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423298 | 7F E3 FB 78 */	mr r3, r31
/* 8142329C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814232A0 | 7D 89 03 A6 */	mtctr r12
/* 814232A4 | 4E 80 04 21 */	bctrl
/* 814232A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814232AC | 40 82 01 04 */	bne .L_814233B0
/* 814232B0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814232B4 | 7F E3 FB 78 */	mr r3, r31
/* 814232B8 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814232BC | 7D 89 03 A6 */	mtctr r12
/* 814232C0 | 4E 80 04 21 */	bctrl
/* 814232C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814232C8 | 40 82 00 08 */	bne .L_814232D0
/* 814232CC | 48 00 00 E4 */	b .L_814233B0
.L_814232D0:
/* 814232D0 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 814232D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814232D8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814232DC | 7D 89 03 A6 */	mtctr r12
/* 814232E0 | 4E 80 04 21 */	bctrl
/* 814232E4 | 38 00 00 00 */	li r0, 0x0
/* 814232E8 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 814232EC | 98 03 00 16 */	stb r0, 0x16(r3)
/* 814232F0 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 814232F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814232F8 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 814232FC | 7D 89 03 A6 */	mtctr r12
/* 81423300 | 4E 80 04 21 */	bctrl
/* 81423304 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423308 | 7F C3 F3 78 */	mr r3, r30
/* 8142330C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423310 | 7D 89 03 A6 */	mtctr r12
/* 81423314 | 4E 80 04 21 */	bctrl
/* 81423318 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8142331C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423320 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81423324 | 7D 89 03 A6 */	mtctr r12
/* 81423328 | 4E 80 04 21 */	bctrl
/* 8142332C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81423330 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81423334 | 41 82 00 7C */	beq .L_814233B0
.L_81423338:
/* 81423338 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142333C | 7F E3 FB 78 */	mr r3, r31
/* 81423340 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81423344 | 7D 89 03 A6 */	mtctr r12
/* 81423348 | 4E 80 04 21 */	bctrl
/* 8142334C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423350 | 41 82 00 20 */	beq .L_81423370
/* 81423354 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423358 | 7F C3 F3 78 */	mr r3, r30
/* 8142335C | 38 80 00 05 */	li r4, 0x5
/* 81423360 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423364 | 7D 89 03 A6 */	mtctr r12
/* 81423368 | 4E 80 04 21 */	bctrl
/* 8142336C | 48 00 00 1C */	b .L_81423388
.L_81423370:
/* 81423370 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423374 | 7F C3 F3 78 */	mr r3, r30
/* 81423378 | 38 80 00 06 */	li r4, 0x6
/* 8142337C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423380 | 7D 89 03 A6 */	mtctr r12
/* 81423384 | 4E 80 04 21 */	bctrl
.L_81423388:
/* 81423388 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 8142338C | 7C 1F 00 40 */	cmplw r31, r0
/* 81423390 | 40 82 00 18 */	bne .L_814233A8
/* 81423394 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423398 | 7F C3 F3 78 */	mr r3, r30
/* 8142339C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814233A0 | 7D 89 03 A6 */	mtctr r12
/* 814233A4 | 4E 80 04 21 */	bctrl
.L_814233A8:
/* 814233A8 | 38 00 00 01 */	li r0, 0x1
/* 814233AC | 90 1E 01 B0 */	stw r0, 0x1b0(r30)
.L_814233B0:
/* 814233B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814233B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814233B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814233BC | 7C 08 03 A6 */	mtlr r0
/* 814233C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814233C4 | 4E 80 00 20 */	blr
.endfn onPressLeft__Q39textinput9inputform4BaseFv

# .text:0x7858 | 0x814233C8 | size: 0x2E4
# textinput::inputform::Base::onPressRight()
.fn onPressRight__Q39textinput9inputform4BaseFv, global
/* 814233C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814233CC | 7C 08 02 A6 */	mflr r0
/* 814233D0 | 38 80 00 00 */	li r4, 0x0
/* 814233D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814233D8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814233DC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814233E0 | 7C 7E 1B 78 */	mr r30, r3
/* 814233E4 | 4B FF EB 11 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 814233E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814233EC | 7C 7F 1B 78 */	mr r31, r3
/* 814233F0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814233F4 | 7D 89 03 A6 */	mtctr r12
/* 814233F8 | 4E 80 04 21 */	bctrl
/* 814233FC | 80 1E 01 64 */	lwz r0, 0x164(r30)
/* 81423400 | 7C 1F 00 40 */	cmplw r31, r0
/* 81423404 | 40 82 01 9C */	bne .L_814235A0
/* 81423408 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 8142340C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81423410 | 40 82 00 EC */	bne .L_814234FC
/* 81423414 | 7F C3 F3 78 */	mr r3, r30
/* 81423418 | 38 80 00 00 */	li r4, 0x0
/* 8142341C | 4B FF EA D9 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423424 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423428 | 7D 89 03 A6 */	mtctr r12
/* 8142342C | 4E 80 04 21 */	bctrl
/* 81423430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423434 | 40 82 00 B4 */	bne .L_814234E8
/* 81423438 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8142343C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423440 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423444 | 7D 89 03 A6 */	mtctr r12
/* 81423448 | 4E 80 04 21 */	bctrl
/* 8142344C | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81423450 | 38 80 00 0A */	li r4, 0xa
/* 81423454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423458 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142345C | 7D 89 03 A6 */	mtctr r12
/* 81423460 | 4E 80 04 21 */	bctrl
/* 81423464 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81423468 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142346C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423470 | 7D 89 03 A6 */	mtctr r12
/* 81423474 | 4E 80 04 21 */	bctrl
/* 81423478 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 8142347C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81423480 | 40 82 00 68 */	bne .L_814234E8
/* 81423484 | 88 1E 01 78 */	lbz r0, 0x178(r30)
/* 81423488 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142348C | 40 82 00 0C */	bne .L_81423498
/* 81423490 | 38 00 00 00 */	li r0, 0x0
/* 81423494 | 48 00 00 38 */	b .L_814234CC
.L_81423498:
/* 81423498 | 80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8142349C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814234A0 | 41 82 00 28 */	beq .L_814234C8
/* 814234A4 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 814234A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814234AC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814234B0 | 7D 89 03 A6 */	mtctr r12
/* 814234B4 | 4E 80 04 21 */	bctrl
/* 814234B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814234BC | 40 81 00 0C */	ble .L_814234C8
/* 814234C0 | 38 00 00 01 */	li r0, 0x1
/* 814234C4 | 48 00 00 08 */	b .L_814234CC
.L_814234C8:
/* 814234C8 | 38 00 00 00 */	li r0, 0x0
.L_814234CC:
/* 814234CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814234D0 | 41 82 00 18 */	beq .L_814234E8
/* 814234D4 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 814234D8 | 38 80 00 00 */	li r4, 0x0
/* 814234DC | 48 01 19 F9 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 814234E0 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 814234E4 | 48 01 0F E1 */	bl update__Q39textinput8tistring6WithZiFv
.L_814234E8:
/* 814234E8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814234EC | 7F E3 FB 78 */	mr r3, r31
/* 814234F0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814234F4 | 7D 89 03 A6 */	mtctr r12
/* 814234F8 | 4E 80 04 21 */	bctrl
.L_814234FC:
/* 814234FC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423500 | 7F E3 FB 78 */	mr r3, r31
/* 81423504 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81423508 | 7D 89 03 A6 */	mtctr r12
/* 8142350C | 4E 80 04 21 */	bctrl
/* 81423510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423514 | 40 82 01 80 */	bne .L_81423694
/* 81423518 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142351C | 7F E3 FB 78 */	mr r3, r31
/* 81423520 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423524 | 7D 89 03 A6 */	mtctr r12
/* 81423528 | 4E 80 04 21 */	bctrl
/* 8142352C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423530 | 40 82 00 08 */	bne .L_81423538
/* 81423534 | 48 00 01 60 */	b .L_81423694
.L_81423538:
/* 81423538 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 8142353C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423540 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81423544 | 7D 89 03 A6 */	mtctr r12
/* 81423548 | 4E 80 04 21 */	bctrl
/* 8142354C | 38 00 00 00 */	li r0, 0x0
/* 81423550 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81423554 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81423558 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8142355C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423560 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 81423564 | 7D 89 03 A6 */	mtctr r12
/* 81423568 | 4E 80 04 21 */	bctrl
/* 8142356C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423570 | 7F C3 F3 78 */	mr r3, r30
/* 81423574 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423578 | 7D 89 03 A6 */	mtctr r12
/* 8142357C | 4E 80 04 21 */	bctrl
/* 81423580 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81423584 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423588 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8142358C | 7D 89 03 A6 */	mtctr r12
/* 81423590 | 4E 80 04 21 */	bctrl
/* 81423594 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81423598 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8142359C | 41 82 00 F8 */	beq .L_81423694
.L_814235A0:
/* 814235A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814235A4 | 7F E3 FB 78 */	mr r3, r31
/* 814235A8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 814235AC | 7D 89 03 A6 */	mtctr r12
/* 814235B0 | 4E 80 04 21 */	bctrl
/* 814235B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814235B8 | 41 82 00 68 */	beq .L_81423620
/* 814235BC | 88 1E 01 7A */	lbz r0, 0x17a(r30)
/* 814235C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814235C4 | 41 82 00 5C */	beq .L_81423620
/* 814235C8 | 3D 20 81 61 */	lis r9, lbl_816152D0@ha
/* 814235CC | 85 09 52 D0 */	lwzu r8, lbl_816152D0@l(r9)
/* 814235D0 | 7F C3 F3 78 */	mr r3, r30
/* 814235D4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814235D8 | 80 E9 00 04 */	lwz r7, 0x4(r9)
/* 814235DC | 38 80 00 00 */	li r4, 0x0
/* 814235E0 | 80 C9 00 08 */	lwz r6, 0x8(r9)
/* 814235E4 | 80 09 00 0C */	lwz r0, 0xc(r9)
/* 814235E8 | 91 01 00 08 */	stw r8, 0x8(r1)
/* 814235EC | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814235F0 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 814235F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814235F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814235FC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81423600 | 7D 89 03 A6 */	mtctr r12
/* 81423604 | 4E 80 04 21 */	bctrl
/* 81423608 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142360C | 7F C3 F3 78 */	mr r3, r30
/* 81423610 | 38 80 00 05 */	li r4, 0x5
/* 81423614 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423618 | 7D 89 03 A6 */	mtctr r12
/* 8142361C | 4E 80 04 21 */	bctrl
.L_81423620:
/* 81423620 | 80 1E 01 6C */	lwz r0, 0x16c(r30)
/* 81423624 | 7C 1F 00 40 */	cmplw r31, r0
/* 81423628 | 41 82 00 10 */	beq .L_81423638
/* 8142362C | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 81423630 | 7C 1F 00 40 */	cmplw r31, r0
/* 81423634 | 40 82 00 20 */	bne .L_81423654
.L_81423638:
/* 81423638 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142363C | 7F C3 F3 78 */	mr r3, r30
/* 81423640 | 38 80 00 06 */	li r4, 0x6
/* 81423644 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423648 | 7D 89 03 A6 */	mtctr r12
/* 8142364C | 4E 80 04 21 */	bctrl
/* 81423650 | 48 00 00 1C */	b .L_8142366C
.L_81423654:
/* 81423654 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423658 | 7F C3 F3 78 */	mr r3, r30
/* 8142365C | 38 80 00 05 */	li r4, 0x5
/* 81423660 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423664 | 7D 89 03 A6 */	mtctr r12
/* 81423668 | 4E 80 04 21 */	bctrl
.L_8142366C:
/* 8142366C | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 81423670 | 7C 1F 00 40 */	cmplw r31, r0
/* 81423674 | 40 82 00 18 */	bne .L_8142368C
/* 81423678 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142367C | 7F C3 F3 78 */	mr r3, r30
/* 81423680 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423684 | 7D 89 03 A6 */	mtctr r12
/* 81423688 | 4E 80 04 21 */	bctrl
.L_8142368C:
/* 8142368C | 38 00 00 01 */	li r0, 0x1
/* 81423690 | 90 1E 01 B0 */	stw r0, 0x1b0(r30)
.L_81423694:
/* 81423694 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81423698 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142369C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814236A0 | 7C 08 03 A6 */	mtlr r0
/* 814236A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814236A8 | 4E 80 00 20 */	blr
.endfn onPressRight__Q39textinput9inputform4BaseFv

# .text:0x7B3C | 0x814236AC | size: 0x438
# textinput::inputform::Base::onPressDownHWKB()
.fn onPressDownHWKB__Q39textinput9inputform4BaseFv, global
/* 814236AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814236B0 | 7C 08 02 A6 */	mflr r0
/* 814236B4 | 38 80 00 00 */	li r4, 0x0
/* 814236B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814236BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814236C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814236C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814236C8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814236CC | 4B FF E8 29 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 814236D0 | 3C 80 81 0D */	lis r4, sInstance__Q39textinput5input10HKBManager@ha
/* 814236D4 | 7C 7D 1B 78 */	mr r29, r3
/* 814236D8 | 38 64 88 44 */	addi r3, r4, sInstance__Q39textinput5input10HKBManager@l
/* 814236DC | 48 02 41 85 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 814236E0 | 80 1F 01 64 */	lwz r0, 0x164(r31)
/* 814236E4 | 7C 7E 1B 78 */	mr r30, r3
/* 814236E8 | 7C 1D 00 40 */	cmplw r29, r0
/* 814236EC | 40 82 01 BC */	bne .L_814238A8
/* 814236F0 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814236F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814236F8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814236FC | 7D 89 03 A6 */	mtctr r12
/* 81423700 | 4E 80 04 21 */	bctrl
/* 81423704 | 38 00 00 00 */	li r0, 0x0
/* 81423708 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 8142370C | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81423710 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81423714 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423718 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8142371C | 7D 89 03 A6 */	mtctr r12
/* 81423720 | 4E 80 04 21 */	bctrl
/* 81423724 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423728 | 7F E3 FB 78 */	mr r3, r31
/* 8142372C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423730 | 7D 89 03 A6 */	mtctr r12
/* 81423734 | 4E 80 04 21 */	bctrl
/* 81423738 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 8142373C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81423740 | 40 82 00 D8 */	bne .L_81423818
/* 81423744 | 7F E3 FB 78 */	mr r3, r31
/* 81423748 | 38 80 00 00 */	li r4, 0x0
/* 8142374C | 4B FF E7 A9 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423750 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423754 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423758 | 7D 89 03 A6 */	mtctr r12
/* 8142375C | 4E 80 04 21 */	bctrl
/* 81423760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423764 | 40 82 00 B4 */	bne .L_81423818
/* 81423768 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8142376C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423770 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423774 | 7D 89 03 A6 */	mtctr r12
/* 81423778 | 4E 80 04 21 */	bctrl
/* 8142377C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81423780 | 38 80 00 0A */	li r4, 0xa
/* 81423784 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423788 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142378C | 7D 89 03 A6 */	mtctr r12
/* 81423790 | 4E 80 04 21 */	bctrl
/* 81423794 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81423798 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142379C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814237A0 | 7D 89 03 A6 */	mtctr r12
/* 814237A4 | 4E 80 04 21 */	bctrl
/* 814237A8 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 814237AC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814237B0 | 40 82 00 68 */	bne .L_81423818
/* 814237B4 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 814237B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814237BC | 40 82 00 0C */	bne .L_814237C8
/* 814237C0 | 38 00 00 00 */	li r0, 0x0
/* 814237C4 | 48 00 00 38 */	b .L_814237FC
.L_814237C8:
/* 814237C8 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 814237CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814237D0 | 41 82 00 28 */	beq .L_814237F8
/* 814237D4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814237D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814237DC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814237E0 | 7D 89 03 A6 */	mtctr r12
/* 814237E4 | 4E 80 04 21 */	bctrl
/* 814237E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814237EC | 40 81 00 0C */	ble .L_814237F8
/* 814237F0 | 38 00 00 01 */	li r0, 0x1
/* 814237F4 | 48 00 00 08 */	b .L_814237FC
.L_814237F8:
/* 814237F8 | 38 00 00 00 */	li r0, 0x0
.L_814237FC:
/* 814237FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423800 | 41 82 00 18 */	beq .L_81423818
/* 81423804 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81423808 | 38 80 00 00 */	li r4, 0x0
/* 8142380C | 48 01 16 C9 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81423810 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81423814 | 48 01 0C B1 */	bl update__Q39textinput8tistring6WithZiFv
.L_81423818:
/* 81423818 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142381C | 7F A3 EB 78 */	mr r3, r29
/* 81423820 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81423824 | 7D 89 03 A6 */	mtctr r12
/* 81423828 | 4E 80 04 21 */	bctrl
/* 8142382C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423830 | 40 82 02 98 */	bne .L_81423AC8
/* 81423834 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81423838 | 7F A3 EB 78 */	mr r3, r29
/* 8142383C | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423840 | 7D 89 03 A6 */	mtctr r12
/* 81423844 | 4E 80 04 21 */	bctrl
/* 81423848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142384C | 40 82 00 08 */	bne .L_81423854
/* 81423850 | 48 00 02 78 */	b .L_81423AC8
.L_81423854:
/* 81423854 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81423858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142385C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81423860 | 7D 89 03 A6 */	mtctr r12
/* 81423864 | 4E 80 04 21 */	bctrl
/* 81423868 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8142386C | 28 00 00 20 */	cmplwi r0, 0x20
/* 81423870 | 41 82 02 58 */	beq .L_81423AC8
/* 81423874 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423878 | 7F E3 FB 78 */	mr r3, r31
/* 8142387C | 81 8C 01 90 */	lwz r12, 0x190(r12)
/* 81423880 | 7D 89 03 A6 */	mtctr r12
/* 81423884 | 4E 80 04 21 */	bctrl
/* 81423888 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142388C | 7F E3 FB 78 */	mr r3, r31
/* 81423890 | 38 80 00 2F */	li r4, 0x2f
/* 81423894 | 38 A0 00 00 */	li r5, 0x0
/* 81423898 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142389C | 7D 89 03 A6 */	mtctr r12
/* 814238A0 | 4E 80 04 21 */	bctrl
/* 814238A4 | 48 00 02 24 */	b .L_81423AC8
.L_814238A8:
/* 814238A8 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814238AC | 7C 03 E8 40 */	cmplw r3, r29
/* 814238B0 | 40 82 02 10 */	bne .L_81423AC0
/* 814238B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814238B8 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814238BC | 7D 89 03 A6 */	mtctr r12
/* 814238C0 | 4E 80 04 21 */	bctrl
/* 814238C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814238C8 | 40 82 00 18 */	bne .L_814238E0
/* 814238CC | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814238D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814238D4 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 814238D8 | 7D 89 03 A6 */	mtctr r12
/* 814238DC | 4E 80 04 21 */	bctrl
.L_814238E0:
/* 814238E0 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814238E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814238E8 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 814238EC | 7D 89 03 A6 */	mtctr r12
/* 814238F0 | 4E 80 04 21 */	bctrl
/* 814238F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814238F8 | 41 82 01 3C */	beq .L_81423A34
/* 814238FC | 57 C0 07 BD */	rlwinm. r0, r30, 0, 30, 30
/* 81423900 | 41 82 00 48 */	beq .L_81423948
/* 81423904 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81423908 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142390C | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81423910 | 7D 89 03 A6 */	mtctr r12
/* 81423914 | 4E 80 04 21 */	bctrl
/* 81423918 | 7C 64 07 34 */	extsh r4, r3
/* 8142391C | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81423920 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423924 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81423928 | 7D 89 03 A6 */	mtctr r12
/* 8142392C | 4E 80 04 21 */	bctrl
/* 81423930 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423934 | 7F E3 FB 78 */	mr r3, r31
/* 81423938 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8142393C | 7D 89 03 A6 */	mtctr r12
/* 81423940 | 4E 80 04 21 */	bctrl
/* 81423944 | 48 00 01 84 */	b .L_81423AC8
.L_81423948:
/* 81423948 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 8142394C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423950 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423954 | 7D 89 03 A6 */	mtctr r12
/* 81423958 | 4E 80 04 21 */	bctrl
/* 8142395C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423960 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81423964 | 7D 89 03 A6 */	mtctr r12
/* 81423968 | 4E 80 04 21 */	bctrl
/* 8142396C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423970 | 40 82 01 58 */	bne .L_81423AC8
/* 81423974 | 7F E3 FB 78 */	mr r3, r31
/* 81423978 | 38 80 00 00 */	li r4, 0x0
/* 8142397C | 4B FF E5 79 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423980 | 80 1F 01 68 */	lwz r0, 0x168(r31)
/* 81423984 | 7C 03 00 40 */	cmplw r3, r0
/* 81423988 | 40 82 00 90 */	bne .L_81423A18
/* 8142398C | 7C 03 03 78 */	mr r3, r0
/* 81423990 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423994 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81423998 | 7D 89 03 A6 */	mtctr r12
/* 8142399C | 4E 80 04 21 */	bctrl
/* 814239A0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814239A4 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814239A8 | 7C 1E 07 34 */	extsh r30, r0
/* 814239AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814239B0 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 814239B4 | 7D 89 03 A6 */	mtctr r12
/* 814239B8 | 4E 80 04 21 */	bctrl
/* 814239BC | 7C 1E 18 00 */	cmpw r30, r3
/* 814239C0 | 41 80 00 0C */	blt .L_814239CC
/* 814239C4 | 3B C0 00 00 */	li r30, 0x0
/* 814239C8 | 48 00 00 28 */	b .L_814239F0
.L_814239CC:
/* 814239CC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814239D0 | 40 80 00 20 */	bge .L_814239F0
/* 814239D4 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814239D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814239DC | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 814239E0 | 7D 89 03 A6 */	mtctr r12
/* 814239E4 | 4E 80 04 21 */	bctrl
/* 814239E8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814239EC | 7C 1E 07 34 */	extsh r30, r0
.L_814239F0:
/* 814239F0 | 7F E3 FB 78 */	mr r3, r31
/* 814239F4 | 7F C4 F3 78 */	mr r4, r30
/* 814239F8 | 48 00 09 59 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 814239FC | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81423A00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423A04 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423A08 | 7D 89 03 A6 */	mtctr r12
/* 81423A0C | 4E 80 04 21 */	bctrl
/* 81423A10 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81423A14 | 48 00 94 99 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
.L_81423A18:
/* 81423A18 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423A1C | 7F E3 FB 78 */	mr r3, r31
/* 81423A20 | 38 80 00 06 */	li r4, 0x6
/* 81423A24 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423A28 | 7D 89 03 A6 */	mtctr r12
/* 81423A2C | 4E 80 04 21 */	bctrl
/* 81423A30 | 48 00 00 98 */	b .L_81423AC8
.L_81423A34:
/* 81423A34 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81423A38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423A3C | 81 8C 01 24 */	lwz r12, 0x124(r12)
/* 81423A40 | 7D 89 03 A6 */	mtctr r12
/* 81423A44 | 4E 80 04 21 */	bctrl
/* 81423A48 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81423A4C | 41 82 00 7C */	beq .L_81423AC8
/* 81423A50 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81423A54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423A58 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 81423A5C | 7D 89 03 A6 */	mtctr r12
/* 81423A60 | 4E 80 04 21 */	bctrl
/* 81423A64 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423A68 | 7F E3 FB 78 */	mr r3, r31
/* 81423A6C | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423A70 | 7D 89 03 A6 */	mtctr r12
/* 81423A74 | 4E 80 04 21 */	bctrl
/* 81423A78 | 7F E3 FB 78 */	mr r3, r31
/* 81423A7C | 38 80 00 00 */	li r4, 0x0
/* 81423A80 | 48 00 08 D1 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81423A84 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81423A88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423A8C | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423A90 | 7D 89 03 A6 */	mtctr r12
/* 81423A94 | 4E 80 04 21 */	bctrl
/* 81423A98 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81423A9C | 48 00 94 11 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81423AA0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423AA4 | 7F E3 FB 78 */	mr r3, r31
/* 81423AA8 | 38 80 00 2F */	li r4, 0x2f
/* 81423AAC | 38 A0 00 00 */	li r5, 0x0
/* 81423AB0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81423AB4 | 7D 89 03 A6 */	mtctr r12
/* 81423AB8 | 4E 80 04 21 */	bctrl
/* 81423ABC | 48 00 00 0C */	b .L_81423AC8
.L_81423AC0:
/* 81423AC0 | 80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 81423AC4 | 7C 00 E8 40 */	cmplw r0, r29
.L_81423AC8:
/* 81423AC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81423ACC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81423AD0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81423AD4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81423AD8 | 7C 08 03 A6 */	mtlr r0
/* 81423ADC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81423AE0 | 4E 80 00 20 */	blr
.endfn onPressDownHWKB__Q39textinput9inputform4BaseFv

# .text:0x7F74 | 0x81423AE4 | size: 0x420
# textinput::inputform::Base::onPressLeftHWKB()
.fn onPressLeftHWKB__Q39textinput9inputform4BaseFv, global
/* 81423AE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81423AE8 | 7C 08 02 A6 */	mflr r0
/* 81423AEC | 38 80 00 00 */	li r4, 0x0
/* 81423AF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81423AF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81423AF8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81423AFC | 7C 7E 1B 78 */	mr r30, r3
/* 81423B00 | 4B FF E3 F5 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423B04 | 3C 80 81 0D */	lis r4, sInstance__Q39textinput5input10HKBManager@ha
/* 81423B08 | 7C 7F 1B 78 */	mr r31, r3
/* 81423B0C | 38 64 88 44 */	addi r3, r4, sInstance__Q39textinput5input10HKBManager@l
/* 81423B10 | 48 02 3D 51 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81423B14 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423B18 | 7F E3 FB 78 */	mr r3, r31
/* 81423B1C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423B20 | 7D 89 03 A6 */	mtctr r12
/* 81423B24 | 4E 80 04 21 */	bctrl
/* 81423B28 | 80 1E 01 64 */	lwz r0, 0x164(r30)
/* 81423B2C | 7C 1F 00 40 */	cmplw r31, r0
/* 81423B30 | 40 82 01 D0 */	bne .L_81423D00
/* 81423B34 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81423B38 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81423B3C | 40 82 00 EC */	bne .L_81423C28
/* 81423B40 | 7F C3 F3 78 */	mr r3, r30
/* 81423B44 | 38 80 00 00 */	li r4, 0x0
/* 81423B48 | 4B FF E3 AD */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423B4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423B50 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423B54 | 7D 89 03 A6 */	mtctr r12
/* 81423B58 | 4E 80 04 21 */	bctrl
/* 81423B5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423B60 | 40 82 00 B4 */	bne .L_81423C14
/* 81423B64 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81423B68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423B6C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423B70 | 7D 89 03 A6 */	mtctr r12
/* 81423B74 | 4E 80 04 21 */	bctrl
/* 81423B78 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81423B7C | 38 80 00 0A */	li r4, 0xa
/* 81423B80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423B84 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81423B88 | 7D 89 03 A6 */	mtctr r12
/* 81423B8C | 4E 80 04 21 */	bctrl
/* 81423B90 | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81423B94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423B98 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423B9C | 7D 89 03 A6 */	mtctr r12
/* 81423BA0 | 4E 80 04 21 */	bctrl
/* 81423BA4 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 81423BA8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81423BAC | 40 82 00 68 */	bne .L_81423C14
/* 81423BB0 | 88 1E 01 78 */	lbz r0, 0x178(r30)
/* 81423BB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423BB8 | 40 82 00 0C */	bne .L_81423BC4
/* 81423BBC | 38 00 00 00 */	li r0, 0x0
/* 81423BC0 | 48 00 00 38 */	b .L_81423BF8
.L_81423BC4:
/* 81423BC4 | 80 1E 01 74 */	lwz r0, 0x174(r30)
/* 81423BC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81423BCC | 41 82 00 28 */	beq .L_81423BF4
/* 81423BD0 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423BD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423BD8 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423BDC | 7D 89 03 A6 */	mtctr r12
/* 81423BE0 | 4E 80 04 21 */	bctrl
/* 81423BE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423BE8 | 40 81 00 0C */	ble .L_81423BF4
/* 81423BEC | 38 00 00 01 */	li r0, 0x1
/* 81423BF0 | 48 00 00 08 */	b .L_81423BF8
.L_81423BF4:
/* 81423BF4 | 38 00 00 00 */	li r0, 0x0
.L_81423BF8:
/* 81423BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423BFC | 41 82 00 18 */	beq .L_81423C14
/* 81423C00 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423C04 | 38 80 00 00 */	li r4, 0x0
/* 81423C08 | 48 01 12 CD */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81423C0C | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423C10 | 48 01 08 B5 */	bl update__Q39textinput8tistring6WithZiFv
.L_81423C14:
/* 81423C14 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423C18 | 7F E3 FB 78 */	mr r3, r31
/* 81423C1C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423C20 | 7D 89 03 A6 */	mtctr r12
/* 81423C24 | 4E 80 04 21 */	bctrl
.L_81423C28:
/* 81423C28 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423C2C | 7F E3 FB 78 */	mr r3, r31
/* 81423C30 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81423C34 | 7D 89 03 A6 */	mtctr r12
/* 81423C38 | 4E 80 04 21 */	bctrl
/* 81423C3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423C40 | 40 82 02 AC */	bne .L_81423EEC
/* 81423C44 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423C48 | 7F E3 FB 78 */	mr r3, r31
/* 81423C4C | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423C50 | 7D 89 03 A6 */	mtctr r12
/* 81423C54 | 4E 80 04 21 */	bctrl
/* 81423C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423C5C | 40 82 00 08 */	bne .L_81423C64
/* 81423C60 | 48 00 02 8C */	b .L_81423EEC
.L_81423C64:
/* 81423C64 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81423C68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423C6C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81423C70 | 7D 89 03 A6 */	mtctr r12
/* 81423C74 | 4E 80 04 21 */	bctrl
/* 81423C78 | 38 00 00 00 */	li r0, 0x0
/* 81423C7C | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81423C80 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 81423C84 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81423C88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423C8C | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 81423C90 | 7D 89 03 A6 */	mtctr r12
/* 81423C94 | 4E 80 04 21 */	bctrl
/* 81423C98 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423C9C | 7F C3 F3 78 */	mr r3, r30
/* 81423CA0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423CA4 | 7D 89 03 A6 */	mtctr r12
/* 81423CA8 | 4E 80 04 21 */	bctrl
/* 81423CAC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81423CB0 | 7F E3 FB 78 */	mr r3, r31
/* 81423CB4 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81423CB8 | 7D 89 03 A6 */	mtctr r12
/* 81423CBC | 4E 80 04 21 */	bctrl
/* 81423CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423CC4 | 41 82 00 20 */	beq .L_81423CE4
/* 81423CC8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423CCC | 7F C3 F3 78 */	mr r3, r30
/* 81423CD0 | 38 80 00 05 */	li r4, 0x5
/* 81423CD4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423CD8 | 7D 89 03 A6 */	mtctr r12
/* 81423CDC | 4E 80 04 21 */	bctrl
/* 81423CE0 | 48 00 02 04 */	b .L_81423EE4
.L_81423CE4:
/* 81423CE4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423CE8 | 7F C3 F3 78 */	mr r3, r30
/* 81423CEC | 38 80 00 06 */	li r4, 0x6
/* 81423CF0 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423CF4 | 7D 89 03 A6 */	mtctr r12
/* 81423CF8 | 4E 80 04 21 */	bctrl
/* 81423CFC | 48 00 01 E8 */	b .L_81423EE4
.L_81423D00:
/* 81423D00 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 81423D04 | 7C 1F 00 40 */	cmplw r31, r0
/* 81423D08 | 40 82 01 10 */	bne .L_81423E18
/* 81423D0C | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81423D10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423D14 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423D18 | 7D 89 03 A6 */	mtctr r12
/* 81423D1C | 4E 80 04 21 */	bctrl
/* 81423D20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423D24 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81423D28 | 7D 89 03 A6 */	mtctr r12
/* 81423D2C | 4E 80 04 21 */	bctrl
/* 81423D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423D34 | 40 82 01 B8 */	bne .L_81423EEC
/* 81423D38 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81423D3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423D40 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81423D44 | 7D 89 03 A6 */	mtctr r12
/* 81423D48 | 4E 80 04 21 */	bctrl
/* 81423D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423D50 | 40 81 01 9C */	ble .L_81423EEC
/* 81423D54 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81423D58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423D5C | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81423D60 | 7D 89 03 A6 */	mtctr r12
/* 81423D64 | 4E 80 04 21 */	bctrl
/* 81423D68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423D6C | 41 82 00 1C */	beq .L_81423D88
/* 81423D70 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423D74 | 7F C3 F3 78 */	mr r3, r30
/* 81423D78 | 81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 81423D7C | 7D 89 03 A6 */	mtctr r12
/* 81423D80 | 4E 80 04 21 */	bctrl
/* 81423D84 | 48 00 01 68 */	b .L_81423EEC
.L_81423D88:
/* 81423D88 | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81423D8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423D90 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 81423D94 | 7D 89 03 A6 */	mtctr r12
/* 81423D98 | 4E 80 04 21 */	bctrl
/* 81423D9C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81423DA0 | 7C 04 07 34 */	extsh r4, r0
/* 81423DA4 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 81423DA8 | 40 80 00 0C */	bge .L_81423DB4
/* 81423DAC | 38 80 00 00 */	li r4, 0x0
/* 81423DB0 | 48 00 00 28 */	b .L_81423DD8
.L_81423DB4:
/* 81423DB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81423DB8 | 40 80 00 20 */	bge .L_81423DD8
/* 81423DBC | 80 7E 01 68 */	lwz r3, 0x168(r30)
/* 81423DC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423DC4 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81423DC8 | 7D 89 03 A6 */	mtctr r12
/* 81423DCC | 4E 80 04 21 */	bctrl
/* 81423DD0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81423DD4 | 7C 04 07 34 */	extsh r4, r0
.L_81423DD8:
/* 81423DD8 | 7F C3 F3 78 */	mr r3, r30
/* 81423DDC | 48 00 05 75 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81423DE0 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81423DE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423DE8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423DEC | 7D 89 03 A6 */	mtctr r12
/* 81423DF0 | 4E 80 04 21 */	bctrl
/* 81423DF4 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81423DF8 | 48 00 90 B5 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81423DFC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423E00 | 7F C3 F3 78 */	mr r3, r30
/* 81423E04 | 38 80 00 06 */	li r4, 0x6
/* 81423E08 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423E0C | 7D 89 03 A6 */	mtctr r12
/* 81423E10 | 4E 80 04 21 */	bctrl
/* 81423E14 | 48 00 00 D0 */	b .L_81423EE4
.L_81423E18:
/* 81423E18 | 80 1E 01 6C */	lwz r0, 0x16c(r30)
/* 81423E1C | 7C 1F 00 40 */	cmplw r31, r0
/* 81423E20 | 40 82 00 C4 */	bne .L_81423EE4
/* 81423E24 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81423E28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423E2C | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423E30 | 7D 89 03 A6 */	mtctr r12
/* 81423E34 | 4E 80 04 21 */	bctrl
/* 81423E38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423E3C | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81423E40 | 7D 89 03 A6 */	mtctr r12
/* 81423E44 | 4E 80 04 21 */	bctrl
/* 81423E48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423E4C | 40 82 00 A0 */	bne .L_81423EEC
/* 81423E50 | 8B FE 01 F4 */	lbz r31, 0x1f4(r30)
/* 81423E54 | 38 00 00 01 */	li r0, 0x1
/* 81423E58 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423E5C | 98 1E 01 F4 */	stb r0, 0x1f4(r30)
/* 81423E60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423E64 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423E68 | 7D 89 03 A6 */	mtctr r12
/* 81423E6C | 4E 80 04 21 */	bctrl
/* 81423E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423E74 | 41 80 00 78 */	blt .L_81423EEC
/* 81423E78 | 80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 81423E7C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81423E80 | 80 83 00 98 */	lwz r4, 0x98(r3)
/* 81423E84 | 41 82 00 08 */	beq .L_81423E8C
/* 81423E88 | 38 84 FF FF */	subi r4, r4, 0x1
.L_81423E8C:
/* 81423E8C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81423E90 | 40 80 00 18 */	bge .L_81423EA8
/* 81423E94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423E98 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423E9C | 7D 89 03 A6 */	mtctr r12
/* 81423EA0 | 4E 80 04 21 */	bctrl
/* 81423EA4 | 38 83 FF FF */	subi r4, r3, 0x1
.L_81423EA8:
/* 81423EA8 | 7F C3 F3 78 */	mr r3, r30
/* 81423EAC | 48 00 04 A5 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81423EB0 | 80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 81423EB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423EB8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81423EBC | 7D 89 03 A6 */	mtctr r12
/* 81423EC0 | 4E 80 04 21 */	bctrl
/* 81423EC4 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81423EC8 | 48 00 8F E5 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81423ECC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423ED0 | 7F C3 F3 78 */	mr r3, r30
/* 81423ED4 | 38 80 00 06 */	li r4, 0x6
/* 81423ED8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81423EDC | 7D 89 03 A6 */	mtctr r12
/* 81423EE0 | 4E 80 04 21 */	bctrl
.L_81423EE4:
/* 81423EE4 | 38 00 00 01 */	li r0, 0x1
/* 81423EE8 | 90 1E 01 B0 */	stw r0, 0x1b0(r30)
.L_81423EEC:
/* 81423EEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81423EF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81423EF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81423EF8 | 7C 08 03 A6 */	mtlr r0
/* 81423EFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81423F00 | 4E 80 00 20 */	blr
.endfn onPressLeftHWKB__Q39textinput9inputform4BaseFv

# .text:0x8394 | 0x81423F04 | size: 0x44C
# textinput::inputform::Base::onPressRightHWKB()
.fn onPressRightHWKB__Q39textinput9inputform4BaseFv, global
/* 81423F04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81423F08 | 7C 08 02 A6 */	mflr r0
/* 81423F0C | 38 80 00 00 */	li r4, 0x0
/* 81423F10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81423F14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81423F18 | 7C 7F 1B 78 */	mr r31, r3
/* 81423F1C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81423F20 | 4B FF DF D5 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423F24 | 3C 80 81 0D */	lis r4, sInstance__Q39textinput5input10HKBManager@ha
/* 81423F28 | 7C 7E 1B 78 */	mr r30, r3
/* 81423F2C | 38 64 88 44 */	addi r3, r4, sInstance__Q39textinput5input10HKBManager@l
/* 81423F30 | 48 02 39 31 */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 81423F34 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81423F38 | 7F C3 F3 78 */	mr r3, r30
/* 81423F3C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423F40 | 7D 89 03 A6 */	mtctr r12
/* 81423F44 | 4E 80 04 21 */	bctrl
/* 81423F48 | 80 1F 01 64 */	lwz r0, 0x164(r31)
/* 81423F4C | 7C 1E 00 40 */	cmplw r30, r0
/* 81423F50 | 40 82 01 D0 */	bne .L_81424120
/* 81423F54 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81423F58 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81423F5C | 40 82 00 EC */	bne .L_81424048
/* 81423F60 | 7F E3 FB 78 */	mr r3, r31
/* 81423F64 | 38 80 00 00 */	li r4, 0x0
/* 81423F68 | 4B FF DF 8D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81423F6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423F70 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81423F74 | 7D 89 03 A6 */	mtctr r12
/* 81423F78 | 4E 80 04 21 */	bctrl
/* 81423F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81423F80 | 40 82 00 B4 */	bne .L_81424034
/* 81423F84 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81423F88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423F8C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423F90 | 7D 89 03 A6 */	mtctr r12
/* 81423F94 | 4E 80 04 21 */	bctrl
/* 81423F98 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81423F9C | 38 80 00 0A */	li r4, 0xa
/* 81423FA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423FA4 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81423FA8 | 7D 89 03 A6 */	mtctr r12
/* 81423FAC | 4E 80 04 21 */	bctrl
/* 81423FB0 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81423FB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423FB8 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81423FBC | 7D 89 03 A6 */	mtctr r12
/* 81423FC0 | 4E 80 04 21 */	bctrl
/* 81423FC4 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81423FC8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81423FCC | 40 82 00 68 */	bne .L_81424034
/* 81423FD0 | 88 1F 01 78 */	lbz r0, 0x178(r31)
/* 81423FD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81423FD8 | 40 82 00 0C */	bne .L_81423FE4
/* 81423FDC | 38 00 00 00 */	li r0, 0x0
/* 81423FE0 | 48 00 00 38 */	b .L_81424018
.L_81423FE4:
/* 81423FE4 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 81423FE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81423FEC | 41 82 00 28 */	beq .L_81424014
/* 81423FF0 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81423FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81423FF8 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81423FFC | 7D 89 03 A6 */	mtctr r12
/* 81424000 | 4E 80 04 21 */	bctrl
/* 81424004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424008 | 40 81 00 0C */	ble .L_81424014
/* 8142400C | 38 00 00 01 */	li r0, 0x1
/* 81424010 | 48 00 00 08 */	b .L_81424018
.L_81424014:
/* 81424014 | 38 00 00 00 */	li r0, 0x0
.L_81424018:
/* 81424018 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142401C | 41 82 00 18 */	beq .L_81424034
/* 81424020 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424024 | 38 80 00 00 */	li r4, 0x0
/* 81424028 | 48 01 0E AD */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 8142402C | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424030 | 48 01 04 95 */	bl update__Q39textinput8tistring6WithZiFv
.L_81424034:
/* 81424034 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81424038 | 7F C3 F3 78 */	mr r3, r30
/* 8142403C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81424040 | 7D 89 03 A6 */	mtctr r12
/* 81424044 | 4E 80 04 21 */	bctrl
.L_81424048:
/* 81424048 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142404C | 7F C3 F3 78 */	mr r3, r30
/* 81424050 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81424054 | 7D 89 03 A6 */	mtctr r12
/* 81424058 | 4E 80 04 21 */	bctrl
/* 8142405C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424060 | 40 82 02 D8 */	bne .L_81424338
/* 81424064 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81424068 | 7F C3 F3 78 */	mr r3, r30
/* 8142406C | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81424070 | 7D 89 03 A6 */	mtctr r12
/* 81424074 | 4E 80 04 21 */	bctrl
/* 81424078 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142407C | 40 82 00 08 */	bne .L_81424084
/* 81424080 | 48 00 02 B8 */	b .L_81424338
.L_81424084:
/* 81424084 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81424088 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142408C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81424090 | 7D 89 03 A6 */	mtctr r12
/* 81424094 | 4E 80 04 21 */	bctrl
/* 81424098 | 38 00 00 00 */	li r0, 0x0
/* 8142409C | 98 03 00 15 */	stb r0, 0x15(r3)
/* 814240A0 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 814240A4 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814240A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814240AC | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 814240B0 | 7D 89 03 A6 */	mtctr r12
/* 814240B4 | 4E 80 04 21 */	bctrl
/* 814240B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814240BC | 7F E3 FB 78 */	mr r3, r31
/* 814240C0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814240C4 | 7D 89 03 A6 */	mtctr r12
/* 814240C8 | 4E 80 04 21 */	bctrl
/* 814240CC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814240D0 | 7F C3 F3 78 */	mr r3, r30
/* 814240D4 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 814240D8 | 7D 89 03 A6 */	mtctr r12
/* 814240DC | 4E 80 04 21 */	bctrl
/* 814240E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814240E4 | 41 82 00 20 */	beq .L_81424104
/* 814240E8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814240EC | 7F E3 FB 78 */	mr r3, r31
/* 814240F0 | 38 80 00 06 */	li r4, 0x6
/* 814240F4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814240F8 | 7D 89 03 A6 */	mtctr r12
/* 814240FC | 4E 80 04 21 */	bctrl
/* 81424100 | 48 00 02 30 */	b .L_81424330
.L_81424104:
/* 81424104 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81424108 | 7F E3 FB 78 */	mr r3, r31
/* 8142410C | 38 80 00 05 */	li r4, 0x5
/* 81424110 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81424114 | 7D 89 03 A6 */	mtctr r12
/* 81424118 | 4E 80 04 21 */	bctrl
/* 8142411C | 48 00 02 14 */	b .L_81424330
.L_81424120:
/* 81424120 | 80 1F 01 68 */	lwz r0, 0x168(r31)
/* 81424124 | 7C 1E 00 40 */	cmplw r30, r0
/* 81424128 | 40 82 01 2C */	bne .L_81424254
/* 8142412C | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81424130 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424134 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424138 | 7D 89 03 A6 */	mtctr r12
/* 8142413C | 4E 80 04 21 */	bctrl
/* 81424140 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424144 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81424148 | 7D 89 03 A6 */	mtctr r12
/* 8142414C | 4E 80 04 21 */	bctrl
/* 81424150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424154 | 40 82 01 E4 */	bne .L_81424338
/* 81424158 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 8142415C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424160 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81424164 | 7D 89 03 A6 */	mtctr r12
/* 81424168 | 4E 80 04 21 */	bctrl
/* 8142416C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424170 | 40 81 01 C8 */	ble .L_81424338
/* 81424174 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81424178 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142417C | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81424180 | 7D 89 03 A6 */	mtctr r12
/* 81424184 | 4E 80 04 21 */	bctrl
/* 81424188 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142418C | 41 82 00 48 */	beq .L_814241D4
/* 81424190 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81424194 | 7F C3 F3 78 */	mr r3, r30
/* 81424198 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142419C | 7D 89 03 A6 */	mtctr r12
/* 814241A0 | 4E 80 04 21 */	bctrl
/* 814241A4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814241A8 | 7F E3 FB 78 */	mr r3, r31
/* 814241AC | 38 80 00 06 */	li r4, 0x6
/* 814241B0 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814241B4 | 7D 89 03 A6 */	mtctr r12
/* 814241B8 | 4E 80 04 21 */	bctrl
/* 814241BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814241C0 | 7F E3 FB 78 */	mr r3, r31
/* 814241C4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814241C8 | 7D 89 03 A6 */	mtctr r12
/* 814241CC | 4E 80 04 21 */	bctrl
/* 814241D0 | 48 00 01 60 */	b .L_81424330
.L_814241D4:
/* 814241D4 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814241D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814241DC | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 814241E0 | 7D 89 03 A6 */	mtctr r12
/* 814241E4 | 4E 80 04 21 */	bctrl
/* 814241E8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814241EC | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814241F0 | 7C 1E 07 34 */	extsh r30, r0
/* 814241F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814241F8 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 814241FC | 7D 89 03 A6 */	mtctr r12
/* 81424200 | 4E 80 04 21 */	bctrl
/* 81424204 | 7C 1E 18 00 */	cmpw r30, r3
/* 81424208 | 41 80 00 08 */	blt .L_81424210
/* 8142420C | 3B C0 00 00 */	li r30, 0x0
.L_81424210:
/* 81424210 | 7F E3 FB 78 */	mr r3, r31
/* 81424214 | 7F C4 F3 78 */	mr r4, r30
/* 81424218 | 48 00 01 39 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 8142421C | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81424220 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424224 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424228 | 7D 89 03 A6 */	mtctr r12
/* 8142422C | 4E 80 04 21 */	bctrl
/* 81424230 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81424234 | 48 00 8C 79 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81424238 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142423C | 7F E3 FB 78 */	mr r3, r31
/* 81424240 | 38 80 00 06 */	li r4, 0x6
/* 81424244 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81424248 | 7D 89 03 A6 */	mtctr r12
/* 8142424C | 4E 80 04 21 */	bctrl
/* 81424250 | 48 00 00 E0 */	b .L_81424330
.L_81424254:
/* 81424254 | 80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 81424258 | 7C 1E 00 40 */	cmplw r30, r0
/* 8142425C | 40 82 00 D4 */	bne .L_81424330
/* 81424260 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81424264 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424268 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8142426C | 7D 89 03 A6 */	mtctr r12
/* 81424270 | 4E 80 04 21 */	bctrl
/* 81424274 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424278 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8142427C | 7D 89 03 A6 */	mtctr r12
/* 81424280 | 4E 80 04 21 */	bctrl
/* 81424284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424288 | 40 82 00 B0 */	bne .L_81424338
/* 8142428C | 8B DF 01 F4 */	lbz r30, 0x1f4(r31)
/* 81424290 | 38 00 00 01 */	li r0, 0x1
/* 81424294 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424298 | 98 1F 01 F4 */	stb r0, 0x1f4(r31)
/* 8142429C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814242A0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814242A4 | 7D 89 03 A6 */	mtctr r12
/* 814242A8 | 4E 80 04 21 */	bctrl
/* 814242AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814242B0 | 41 80 00 88 */	blt .L_81424338
/* 814242B4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814242B8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814242BC | 83 C3 00 98 */	lwz r30, 0x98(r3)
/* 814242C0 | 41 82 00 08 */	beq .L_814242C8
/* 814242C4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814242C8:
/* 814242C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814242CC | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814242D0 | 7D 89 03 A6 */	mtctr r12
/* 814242D4 | 4E 80 04 21 */	bctrl
/* 814242D8 | 7C 1E 18 00 */	cmpw r30, r3
/* 814242DC | 41 80 00 08 */	blt .L_814242E4
/* 814242E0 | 3B C0 00 00 */	li r30, 0x0
.L_814242E4:
/* 814242E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814242E8 | 40 80 00 08 */	bge .L_814242F0
/* 814242EC | 3B C0 00 00 */	li r30, 0x0
.L_814242F0:
/* 814242F0 | 7F E3 FB 78 */	mr r3, r31
/* 814242F4 | 7F C4 F3 78 */	mr r4, r30
/* 814242F8 | 48 00 00 59 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 814242FC | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81424300 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424304 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424308 | 7D 89 03 A6 */	mtctr r12
/* 8142430C | 4E 80 04 21 */	bctrl
/* 81424310 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81424314 | 48 00 8B 99 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81424318 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142431C | 7F E3 FB 78 */	mr r3, r31
/* 81424320 | 38 80 00 06 */	li r4, 0x6
/* 81424324 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81424328 | 7D 89 03 A6 */	mtctr r12
/* 8142432C | 4E 80 04 21 */	bctrl
.L_81424330:
/* 81424330 | 38 00 00 01 */	li r0, 0x1
/* 81424334 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
.L_81424338:
/* 81424338 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142433C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81424340 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81424344 | 7C 08 03 A6 */	mtlr r0
/* 81424348 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142434C | 4E 80 00 20 */	blr
.endfn onPressRightHWKB__Q39textinput9inputform4BaseFv

# .text:0x87E0 | 0x81424350 | size: 0x1A0
# textinput::inputform::Base::moveCandidateToIdx(long)
.fn moveCandidateToIdx__Q39textinput9inputform4BaseFl, global
/* 81424350 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81424354 | 7C 08 02 A6 */	mflr r0
/* 81424358 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142435C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81424360 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81424364 | 7C 9E 23 78 */	mr r30, r4
/* 81424368 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142436C | 7C 7D 1B 78 */	mr r29, r3
/* 81424370 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 81424374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424378 | 41 82 01 54 */	beq .L_814244CC
/* 8142437C | 80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 81424380 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424384 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424388 | 7D 89 03 A6 */	mtctr r12
/* 8142438C | 4E 80 04 21 */	bctrl
/* 81424390 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424394 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81424398 | 7D 89 03 A6 */	mtctr r12
/* 8142439C | 4E 80 04 21 */	bctrl
/* 814243A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814243A4 | 40 82 01 30 */	bne .L_814244D4
/* 814243A8 | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 814243AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814243B0 | 40 82 00 E0 */	bne .L_81424490
/* 814243B4 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 814243B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814243BC | 81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 814243C0 | 7D 89 03 A6 */	mtctr r12
/* 814243C4 | 4E 80 04 21 */	bctrl
/* 814243C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814243CC | 41 82 00 A8 */	beq .L_81424474
/* 814243D0 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 814243D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814243D8 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 814243DC | 7D 89 03 A6 */	mtctr r12
/* 814243E0 | 4E 80 04 21 */	bctrl
/* 814243E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814243E8 | 40 82 00 8C */	bne .L_81424474
/* 814243EC | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 814243F0 | 38 80 00 00 */	li r4, 0x0
/* 814243F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814243F8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814243FC | 7D 89 03 A6 */	mtctr r12
/* 81424400 | 4E 80 04 21 */	bctrl
/* 81424404 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424408 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142440C | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 81424410 | 7D 89 03 A6 */	mtctr r12
/* 81424414 | 4E 80 04 21 */	bctrl
/* 81424418 | 7C 7F 1B 78 */	mr r31, r3
/* 8142441C | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 81424420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424424 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81424428 | 7D 89 03 A6 */	mtctr r12
/* 8142442C | 4E 80 04 21 */	bctrl
/* 81424430 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 81424434 | 7F E4 FB 78 */	mr r4, r31
/* 81424438 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142443C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81424440 | 7D 89 03 A6 */	mtctr r12
/* 81424444 | 4E 80 04 21 */	bctrl
/* 81424448 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 8142444C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424450 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81424454 | 7D 89 03 A6 */	mtctr r12
/* 81424458 | 4E 80 04 21 */	bctrl
/* 8142445C | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424460 | 38 80 00 00 */	li r4, 0x0
/* 81424464 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424468 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8142446C | 7D 89 03 A6 */	mtctr r12
/* 81424470 | 4E 80 04 21 */	bctrl
.L_81424474:
/* 81424474 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424478 | 7F C4 F3 78 */	mr r4, r30
/* 8142447C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424480 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 81424484 | 7D 89 03 A6 */	mtctr r12
/* 81424488 | 4E 80 04 21 */	bctrl
/* 8142448C | 48 00 00 1C */	b .L_814244A8
.L_81424490:
/* 81424490 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81424494 | 7F C4 F3 78 */	mr r4, r30
/* 81424498 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142449C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 814244A0 | 7D 89 03 A6 */	mtctr r12
/* 814244A4 | 4E 80 04 21 */	bctrl
.L_814244A8:
/* 814244A8 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814244AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814244B0 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814244B4 | 7D 89 03 A6 */	mtctr r12
/* 814244B8 | 4E 80 04 21 */	bctrl
/* 814244BC | 7F C4 F3 78 */	mr r4, r30
/* 814244C0 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 814244C4 | 48 00 7A C5 */	bl ChangeSelectedText__Q39textinput12candidatebox10UITextAreaFl
/* 814244C8 | 48 00 00 0C */	b .L_814244D4
.L_814244CC:
/* 814244CC | 38 00 00 01 */	li r0, 0x1
/* 814244D0 | 90 03 01 B0 */	stw r0, 0x1b0(r3)
.L_814244D4:
/* 814244D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814244D8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814244DC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814244E0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814244E4 | 7C 08 03 A6 */	mtlr r0
/* 814244E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814244EC | 4E 80 00 20 */	blr
.endfn moveCandidateToIdx__Q39textinput9inputform4BaseFl

# .text:0x8980 | 0x814244F0 | size: 0x8
# textinput::tistring::WithAtok::getFixedPredictionNum()
.fn getFixedPredictionNum__Q39textinput8tistring8WithAtokFv, global
/* 814244F0 | 38 60 00 00 */	li r3, 0x0
/* 814244F4 | 4E 80 00 20 */	blr
.endfn getFixedPredictionNum__Q39textinput8tistring8WithAtokFv

# .text:0x8988 | 0x814244F8 | size: 0x8
# textinput::tistring::WithAtok::getInputStringLength()
.fn getInputStringLength__Q39textinput8tistring8WithAtokFv, global
/* 814244F8 | 38 60 00 00 */	li r3, 0x0
/* 814244FC | 4E 80 00 20 */	blr
.endfn getInputStringLength__Q39textinput8tistring8WithAtokFv

# .text:0x8990 | 0x81424500 | size: 0x4
# textinput::tistring::WithAtok::startConverting()
.fn startConverting__Q39textinput8tistring8WithAtokFv, global
/* 81424500 | 4E 80 00 20 */	blr
.endfn startConverting__Q39textinput8tistring8WithAtokFv

# .text:0x8994 | 0x81424504 | size: 0x268
# textinput::inputform::Base::toggleAtokMode_(unsigned char)
.fn toggleAtokMode___Q39textinput9inputform4BaseFUc, global
/* 81424504 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81424508 | 7C 08 02 A6 */	mflr r0
/* 8142450C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81424510 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81424514 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81424518 | 7C 9E 23 78 */	mr r30, r4
/* 8142451C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81424520 | 7C 7D 1B 78 */	mr r29, r3
/* 81424524 | 80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 81424528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142452C | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81424530 | 7D 89 03 A6 */	mtctr r12
/* 81424534 | 4E 80 04 21 */	bctrl
/* 81424538 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142453C | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 81424540 | 7D 89 03 A6 */	mtctr r12
/* 81424544 | 4E 80 04 21 */	bctrl
/* 81424548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142454C | 40 82 00 38 */	bne .L_81424584
/* 81424550 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424558 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8142455C | 7D 89 03 A6 */	mtctr r12
/* 81424560 | 4E 80 04 21 */	bctrl
/* 81424564 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424568 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142456C | 7D 89 03 A6 */	mtctr r12
/* 81424570 | 4E 80 04 21 */	bctrl
/* 81424574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424578 | 40 82 00 0C */	bne .L_81424584
/* 8142457C | 38 00 00 00 */	li r0, 0x0
/* 81424580 | 48 00 00 24 */	b .L_814245A4
.L_81424584:
/* 81424584 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142458C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424590 | 7D 89 03 A6 */	mtctr r12
/* 81424594 | 4E 80 04 21 */	bctrl
/* 81424598 | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8142459C | 7C 00 00 34 */	cntlzw r0, r0
/* 814245A0 | 54 00 D9 7E */	srwi r0, r0, 5
.L_814245A4:
/* 814245A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814245A8 | 41 82 01 A8 */	beq .L_81424750
/* 814245AC | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814245B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814245B4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814245B8 | 7D 89 03 A6 */	mtctr r12
/* 814245BC | 4E 80 04 21 */	bctrl
/* 814245C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814245C4 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 814245C8 | 7D 89 03 A6 */	mtctr r12
/* 814245CC | 4E 80 04 21 */	bctrl
/* 814245D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814245D4 | 41 82 00 54 */	beq .L_81424628
/* 814245D8 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814245DC | 48 01 4A 91 */	bl isPredictTurning__Q29textinput7ManagerCFv
/* 814245E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814245E4 | 40 82 01 6C */	bne .L_81424750
/* 814245E8 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814245EC | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 814245F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814245F4 | 7C 00 00 34 */	cntlzw r0, r0
/* 814245F8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814245FC | 54 1F D9 7E */	srwi r31, r0, 5
/* 81424600 | 7D 89 03 A6 */	mtctr r12
/* 81424604 | 4E 80 04 21 */	bctrl
/* 81424608 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142460C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81424610 | 7D 89 03 A6 */	mtctr r12
/* 81424614 | 4E 80 04 21 */	bctrl
/* 81424618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142461C | 40 82 00 38 */	bne .L_81424654
/* 81424620 | 3B E0 00 01 */	li r31, 0x1
/* 81424624 | 48 00 00 30 */	b .L_81424654
.L_81424628:
/* 81424628 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 8142462C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424630 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424634 | 7D 89 03 A6 */	mtctr r12
/* 81424638 | 4E 80 04 21 */	bctrl
/* 8142463C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424640 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81424644 | 7D 89 03 A6 */	mtctr r12
/* 81424648 | 4E 80 04 21 */	bctrl
/* 8142464C | 7C 60 00 34 */	cntlzw r0, r3
/* 81424650 | 54 1F D9 7E */	srwi r31, r0, 5
.L_81424654:
/* 81424654 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81424658 | 41 82 00 14 */	beq .L_8142466C
/* 8142465C | 28 1E 00 02 */	cmplwi r30, 0x2
/* 81424660 | 40 82 00 0C */	bne .L_8142466C
/* 81424664 | 3B E0 00 00 */	li r31, 0x0
/* 81424668 | 48 00 00 18 */	b .L_81424680
.L_8142466C:
/* 8142466C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81424670 | 40 82 00 10 */	bne .L_81424680
/* 81424674 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 81424678 | 40 82 00 08 */	bne .L_81424680
/* 8142467C | 3B E0 00 01 */	li r31, 0x1
.L_81424680:
/* 81424680 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81424684 | 41 82 00 5C */	beq .L_814246E0
/* 81424688 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 8142468C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424690 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424694 | 7D 89 03 A6 */	mtctr r12
/* 81424698 | 4E 80 04 21 */	bctrl
/* 8142469C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814246A0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814246A4 | 7D 89 03 A6 */	mtctr r12
/* 814246A8 | 4E 80 04 21 */	bctrl
/* 814246AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814246B0 | 40 82 00 58 */	bne .L_81424708
/* 814246B4 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814246B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814246BC | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814246C0 | 7D 89 03 A6 */	mtctr r12
/* 814246C4 | 4E 80 04 21 */	bctrl
/* 814246C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814246CC | 38 80 00 01 */	li r4, 0x1
/* 814246D0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814246D4 | 7D 89 03 A6 */	mtctr r12
/* 814246D8 | 4E 80 04 21 */	bctrl
/* 814246DC | 48 00 00 2C */	b .L_81424708
.L_814246E0:
/* 814246E0 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814246E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814246E8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814246EC | 7D 89 03 A6 */	mtctr r12
/* 814246F0 | 4E 80 04 21 */	bctrl
/* 814246F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814246F8 | 38 80 00 00 */	li r4, 0x0
/* 814246FC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81424700 | 7D 89 03 A6 */	mtctr r12
/* 81424704 | 4E 80 04 21 */	bctrl
.L_81424708:
/* 81424708 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 8142470C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424710 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424714 | 7D 89 03 A6 */	mtctr r12
/* 81424718 | 4E 80 04 21 */	bctrl
/* 8142471C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424720 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 81424724 | 7D 89 03 A6 */	mtctr r12
/* 81424728 | 4E 80 04 21 */	bctrl
/* 8142472C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424730 | 41 82 00 20 */	beq .L_81424750
/* 81424734 | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81424738 | 7C 00 F8 40 */	cmplw r0, r31
/* 8142473C | 41 82 00 14 */	beq .L_81424750
/* 81424740 | 7C 00 00 34 */	cntlzw r0, r0
/* 81424744 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424748 | 54 04 D9 7E */	srwi r4, r0, 5
/* 8142474C | 48 01 48 B5 */	bl startPredictTurnOn__Q29textinput7ManagerFb
.L_81424750:
/* 81424750 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81424754 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81424758 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142475C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81424760 | 7C 08 03 A6 */	mtlr r0
/* 81424764 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81424768 | 4E 80 00 20 */	blr
.endfn toggleAtokMode___Q39textinput9inputform4BaseFUc

# .text:0x8BFC | 0x8142476C | size: 0x180
# textinput::inputform::Base::isVacancy() const
.fn isVacancy__Q39textinput9inputform4BaseCFv, global
/* 8142476C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81424770 | 7C 08 02 A6 */	mflr r0
/* 81424774 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81424778 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8142477C | 7C 7F 1B 78 */	mr r31, r3
/* 81424780 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81424784 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424788 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142478C | 7D 89 03 A6 */	mtctr r12
/* 81424790 | 4E 80 04 21 */	bctrl
/* 81424794 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81424798 | 40 82 00 20 */	bne .L_814247B8
/* 8142479C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 814247A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814247A4 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814247A8 | 7D 89 03 A6 */	mtctr r12
/* 814247AC | 4E 80 04 21 */	bctrl
/* 814247B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814247B4 | 40 82 00 0C */	bne .L_814247C0
.L_814247B8:
/* 814247B8 | 38 60 00 00 */	li r3, 0x0
/* 814247BC | 48 00 01 1C */	b .L_814248D8
.L_814247C0:
/* 814247C0 | 80 1F 01 74 */	lwz r0, 0x174(r31)
/* 814247C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814247C8 | 40 82 00 70 */	bne .L_81424838
/* 814247CC | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 814247D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814247D4 | 81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 814247D8 | 7D 89 03 A6 */	mtctr r12
/* 814247DC | 4E 80 04 21 */	bctrl
/* 814247E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814247E4 | 40 82 00 0C */	bne .L_814247F0
/* 814247E8 | 38 60 00 00 */	li r3, 0x0
/* 814247EC | 48 00 00 EC */	b .L_814248D8
.L_814247F0:
/* 814247F0 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 814247F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814247F8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814247FC | 7D 89 03 A6 */	mtctr r12
/* 81424800 | 4E 80 04 21 */	bctrl
/* 81424804 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81424808 | 41 82 00 0C */	beq .L_81424814
/* 8142480C | 38 60 00 00 */	li r3, 0x0
/* 81424810 | 48 00 00 C8 */	b .L_814248D8
.L_81424814:
/* 81424814 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81424818 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142481C | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 81424820 | 7D 89 03 A6 */	mtctr r12
/* 81424824 | 4E 80 04 21 */	bctrl
/* 81424828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142482C | 41 82 00 A8 */	beq .L_814248D4
/* 81424830 | 38 60 00 00 */	li r3, 0x0
/* 81424834 | 48 00 00 A4 */	b .L_814248D8
.L_81424838:
/* 81424838 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 8142483C | 40 82 00 0C */	bne .L_81424848
/* 81424840 | 38 60 00 01 */	li r3, 0x1
/* 81424844 | 48 00 00 94 */	b .L_814248D8
.L_81424848:
/* 81424848 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142484C | 41 82 00 88 */	beq .L_814248D4
/* 81424850 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424854 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424858 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142485C | 7D 89 03 A6 */	mtctr r12
/* 81424860 | 4E 80 04 21 */	bctrl
/* 81424864 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81424868 | 41 82 00 0C */	beq .L_81424874
/* 8142486C | 38 60 00 00 */	li r3, 0x0
/* 81424870 | 48 00 00 68 */	b .L_814248D8
.L_81424874:
/* 81424874 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424878 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8142487C | 38 A0 00 10 */	li r5, 0x10
/* 81424880 | 48 00 F9 39 */	bl getCurrentInput__Q39textinput8tistring6WithZiFPwUl
/* 81424884 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424888 | 40 81 00 0C */	ble .L_81424894
/* 8142488C | 38 60 00 00 */	li r3, 0x0
/* 81424890 | 48 00 00 48 */	b .L_814248D8
.L_81424894:
/* 81424894 | 88 7F 01 F5 */	lbz r3, 0x1f5(r31)
/* 81424898 | 88 1F 01 F4 */	lbz r0, 0x1f4(r31)
/* 8142489C | 7C 60 03 79 */	or. r0, r3, r0
/* 814248A0 | 41 82 00 34 */	beq .L_814248D4
/* 814248A4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 814248A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814248AC | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 814248B0 | 7D 89 03 A6 */	mtctr r12
/* 814248B4 | 4E 80 04 21 */	bctrl
/* 814248B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814248BC | 41 82 00 18 */	beq .L_814248D4
/* 814248C0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814248C4 | 28 00 FF FE */	cmplwi r0, 0xfffe
/* 814248C8 | 41 82 00 0C */	beq .L_814248D4
/* 814248CC | 38 60 00 00 */	li r3, 0x0
/* 814248D0 | 48 00 00 08 */	b .L_814248D8
.L_814248D4:
/* 814248D4 | 38 60 00 01 */	li r3, 0x1
.L_814248D8:
/* 814248D8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814248DC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814248E0 | 7C 08 03 A6 */	mtlr r0
/* 814248E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814248E8 | 4E 80 00 20 */	blr
.endfn isVacancy__Q39textinput9inputform4BaseCFv

# .text:0x8D7C | 0x814248EC | size: 0x50
# textinput::inputform::Base::dirtyCacheAll()
.fn dirtyCacheAll__Q39textinput9inputform4BaseFv, global
/* 814248EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814248F0 | 7C 08 02 A6 */	mflr r0
/* 814248F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814248F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814248FC | 7C 7F 1B 78 */	mr r31, r3
/* 81424900 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 81424904 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81424908 | 7D 89 03 A6 */	mtctr r12
/* 8142490C | 38 63 00 10 */	addi r3, r3, 0x10
/* 81424910 | 4E 80 04 21 */	bctrl
/* 81424914 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 81424918 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8142491C | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81424920 | 7D 89 03 A6 */	mtctr r12
/* 81424924 | 4E 80 04 21 */	bctrl
/* 81424928 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142492C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81424930 | 7C 08 03 A6 */	mtlr r0
/* 81424934 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81424938 | 4E 80 00 20 */	blr
.endfn dirtyCacheAll__Q39textinput9inputform4BaseFv

# .text:0x8DCC | 0x8142493C | size: 0x1B0
# textinput::inputform::Base::notifyChangeMode()
.fn notifyChangeMode__Q39textinput9inputform4BaseFv, global
/* 8142493C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81424940 | 7C 08 02 A6 */	mflr r0
/* 81424944 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81424948 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142494C | 7C 7F 1B 78 */	mr r31, r3
/* 81424950 | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 81424954 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81424958 | 40 82 01 0C */	bne .L_81424A64
/* 8142495C | 80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 81424960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424964 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81424968 | 7D 89 03 A6 */	mtctr r12
/* 8142496C | 4E 80 04 21 */	bctrl
/* 81424970 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424974 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81424978 | 7D 89 03 A6 */	mtctr r12
/* 8142497C | 4E 80 04 21 */	bctrl
/* 81424980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424984 | 41 82 00 5C */	beq .L_814249E0
/* 81424988 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 8142498C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424990 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424994 | 7D 89 03 A6 */	mtctr r12
/* 81424998 | 4E 80 04 21 */	bctrl
/* 8142499C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814249A0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814249A4 | 7D 89 03 A6 */	mtctr r12
/* 814249A8 | 4E 80 04 21 */	bctrl
/* 814249AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814249B0 | 41 82 00 30 */	beq .L_814249E0
/* 814249B4 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814249B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814249BC | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814249C0 | 7D 89 03 A6 */	mtctr r12
/* 814249C4 | 4E 80 04 21 */	bctrl
/* 814249C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814249CC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814249D0 | 7D 89 03 A6 */	mtctr r12
/* 814249D4 | 4E 80 04 21 */	bctrl
/* 814249D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814249DC | 41 82 00 54 */	beq .L_81424A30
.L_814249E0:
/* 814249E0 | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 814249E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814249E8 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814249EC | 7D 89 03 A6 */	mtctr r12
/* 814249F0 | 4E 80 04 21 */	bctrl
/* 814249F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814249F8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814249FC | 7D 89 03 A6 */	mtctr r12
/* 81424A00 | 4E 80 04 21 */	bctrl
/* 81424A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424A08 | 40 82 00 28 */	bne .L_81424A30
/* 81424A0C | 80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 81424A10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424A14 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81424A18 | 7D 89 03 A6 */	mtctr r12
/* 81424A1C | 4E 80 04 21 */	bctrl
/* 81424A20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424A24 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81424A28 | 7D 89 03 A6 */	mtctr r12
/* 81424A2C | 4E 80 04 21 */	bctrl
.L_81424A30:
/* 81424A30 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81424A34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424A38 | 81 8C 01 24 */	lwz r12, 0x124(r12)
/* 81424A3C | 7D 89 03 A6 */	mtctr r12
/* 81424A40 | 4E 80 04 21 */	bctrl
/* 81424A44 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 81424A48 | 40 82 00 90 */	bne .L_81424AD8
/* 81424A4C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81424A50 | 7F E3 FB 78 */	mr r3, r31
/* 81424A54 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81424A58 | 7D 89 03 A6 */	mtctr r12
/* 81424A5C | 4E 80 04 21 */	bctrl
/* 81424A60 | 48 00 00 78 */	b .L_81424AD8
.L_81424A64:
/* 81424A64 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 81424A68 | 40 82 00 50 */	bne .L_81424AB8
/* 81424A6C | 80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 81424A70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424A74 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81424A78 | 7D 89 03 A6 */	mtctr r12
/* 81424A7C | 4E 80 04 21 */	bctrl
/* 81424A80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424A84 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81424A88 | 7D 89 03 A6 */	mtctr r12
/* 81424A8C | 4E 80 04 21 */	bctrl
/* 81424A90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424A94 | 38 80 00 0B */	li r4, 0xb
/* 81424A98 | 41 82 00 08 */	beq .L_81424AA0
/* 81424A9C | 38 80 00 0A */	li r4, 0xa
.L_81424AA0:
/* 81424AA0 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424AA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424AA8 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 81424AAC | 7D 89 03 A6 */	mtctr r12
/* 81424AB0 | 4E 80 04 21 */	bctrl
/* 81424AB4 | 48 00 00 24 */	b .L_81424AD8
.L_81424AB8:
/* 81424AB8 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 81424ABC | 40 82 00 1C */	bne .L_81424AD8
/* 81424AC0 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 81424AC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424AC8 | 41 82 00 10 */	beq .L_81424AD8
/* 81424ACC | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 81424AD0 | 38 80 00 00 */	li r4, 0x0
/* 81424AD4 | 48 01 04 01 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
.L_81424AD8:
/* 81424AD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81424ADC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81424AE0 | 7C 08 03 A6 */	mtlr r0
/* 81424AE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81424AE8 | 4E 80 00 20 */	blr
.endfn notifyChangeMode__Q39textinput9inputform4BaseFv

# .text:0x8F7C | 0x81424AEC | size: 0x6C
# textinput::inputform::Base::resetContextPredict_()
.fn resetContextPredict___Q39textinput9inputform4BaseFv, global
/* 81424AEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81424AF0 | 7C 08 02 A6 */	mflr r0
/* 81424AF4 | 38 80 00 00 */	li r4, 0x0
/* 81424AF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81424AFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81424B00 | 7C 7F 1B 78 */	mr r31, r3
/* 81424B04 | 4B FF D3 F1 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81424B08 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424B0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424B10 | 41 82 00 34 */	beq .L_81424B44
/* 81424B14 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81424B18 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81424B1C | 40 82 00 28 */	bne .L_81424B44
/* 81424B20 | 38 80 00 00 */	li r4, 0x0
/* 81424B24 | 48 01 03 B1 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81424B28 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 81424B2C | 48 00 F9 99 */	bl update__Q39textinput8tistring6WithZiFv
/* 81424B30 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81424B34 | 7F E3 FB 78 */	mr r3, r31
/* 81424B38 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81424B3C | 7D 89 03 A6 */	mtctr r12
/* 81424B40 | 4E 80 04 21 */	bctrl
.L_81424B44:
/* 81424B44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81424B48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81424B4C | 7C 08 03 A6 */	mtlr r0
/* 81424B50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81424B54 | 4E 80 00 20 */	blr
.endfn resetContextPredict___Q39textinput9inputform4BaseFv

# .text:0x8FE8 | 0x81424B58 | size: 0x96C
# textinput::inputform::Base::onSpaceKeyHWKB(unsigned long)
.fn onSpaceKeyHWKB__Q39textinput9inputform4BaseFUl, global
/* 81424B58 | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 81424B5C | 7C 08 02 A6 */	mflr r0
/* 81424B60 | 90 01 01 04 */	stw r0, 0x104(r1)
/* 81424B64 | 39 61 01 00 */	addi r11, r1, 0x100
/* 81424B68 | 48 1D 49 41 */	bl _savegpr_21
/* 81424B6C | 7C 9E 23 78 */	mr r30, r4
/* 81424B70 | 7C 7D 1B 78 */	mr r29, r3
/* 81424B74 | 38 80 00 00 */	li r4, 0x0
/* 81424B78 | 4B FF D3 7D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81424B7C | 57 C0 07 39 */	rlwinm. r0, r30, 0, 28, 28
/* 81424B80 | 7C 75 1B 78 */	mr r21, r3
/* 81424B84 | 41 82 00 D8 */	beq .L_81424C5C
/* 81424B88 | 80 7D 01 F0 */	lwz r3, 0x1f0(r29)
/* 81424B8C | 38 03 FF F8 */	subi r0, r3, 0x8
/* 81424B90 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81424B94 | 41 81 09 18 */	bgt .L_814254AC
/* 81424B98 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424B9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424BA0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424BA4 | 7D 89 03 A6 */	mtctr r12
/* 81424BA8 | 4E 80 04 21 */	bctrl
/* 81424BAC | 88 03 00 3C */	lbz r0, 0x3c(r3)
/* 81424BB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424BB4 | 40 82 08 F8 */	bne .L_814254AC
/* 81424BB8 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424BC0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424BC4 | 7D 89 03 A6 */	mtctr r12
/* 81424BC8 | 4E 80 04 21 */	bctrl
/* 81424BCC | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 81424BD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424BD4 | 41 82 08 D8 */	beq .L_814254AC
/* 81424BD8 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424BDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424BE0 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424BE4 | 7D 89 03 A6 */	mtctr r12
/* 81424BE8 | 4E 80 04 21 */	bctrl
/* 81424BEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424BF0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81424BF4 | 7D 89 03 A6 */	mtctr r12
/* 81424BF8 | 4E 80 04 21 */	bctrl
/* 81424BFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424C00 | 40 82 00 30 */	bne .L_81424C30
/* 81424C04 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424C08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424C0C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424C10 | 7D 89 03 A6 */	mtctr r12
/* 81424C14 | 4E 80 04 21 */	bctrl
/* 81424C18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424C1C | 38 80 00 01 */	li r4, 0x1
/* 81424C20 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81424C24 | 7D 89 03 A6 */	mtctr r12
/* 81424C28 | 4E 80 04 21 */	bctrl
/* 81424C2C | 48 00 08 80 */	b .L_814254AC
.L_81424C30:
/* 81424C30 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424C38 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81424C3C | 7D 89 03 A6 */	mtctr r12
/* 81424C40 | 4E 80 04 21 */	bctrl
/* 81424C44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424C48 | 38 80 00 00 */	li r4, 0x0
/* 81424C4C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81424C50 | 7D 89 03 A6 */	mtctr r12
/* 81424C54 | 4E 80 04 21 */	bctrl
/* 81424C58 | 48 00 08 54 */	b .L_814254AC
.L_81424C5C:
/* 81424C5C | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81424C60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424C64 | 40 82 00 0C */	bne .L_81424C70
/* 81424C68 | 38 00 00 00 */	li r0, 0x0
/* 81424C6C | 48 00 00 5C */	b .L_81424CC8
.L_81424C70:
/* 81424C70 | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 81424C74 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81424C78 | 40 82 00 0C */	bne .L_81424C84
/* 81424C7C | 38 00 00 00 */	li r0, 0x0
/* 81424C80 | 48 00 00 48 */	b .L_81424CC8
.L_81424C84:
/* 81424C84 | 80 1D 01 F0 */	lwz r0, 0x1f0(r29)
/* 81424C88 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81424C8C | 40 82 00 38 */	bne .L_81424CC4
/* 81424C90 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424C94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424C98 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81424C9C | 7D 89 03 A6 */	mtctr r12
/* 81424CA0 | 4E 80 04 21 */	bctrl
/* 81424CA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424CA8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81424CAC | 7D 89 03 A6 */	mtctr r12
/* 81424CB0 | 4E 80 04 21 */	bctrl
/* 81424CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424CB8 | 41 82 00 0C */	beq .L_81424CC4
/* 81424CBC | 38 00 00 00 */	li r0, 0x0
/* 81424CC0 | 48 00 00 08 */	b .L_81424CC8
.L_81424CC4:
/* 81424CC4 | 38 00 00 01 */	li r0, 0x1
.L_81424CC8:
/* 81424CC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424CCC | 41 82 01 88 */	beq .L_81424E54
/* 81424CD0 | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81424CD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424CD8 | 40 82 00 0C */	bne .L_81424CE4
/* 81424CDC | 38 00 00 00 */	li r0, 0x0
/* 81424CE0 | 48 00 00 38 */	b .L_81424D18
.L_81424CE4:
/* 81424CE4 | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 81424CE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81424CEC | 41 82 00 28 */	beq .L_81424D14
/* 81424CF0 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81424CF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424CF8 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81424CFC | 7D 89 03 A6 */	mtctr r12
/* 81424D00 | 4E 80 04 21 */	bctrl
/* 81424D04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424D08 | 40 81 00 0C */	ble .L_81424D14
/* 81424D0C | 38 00 00 01 */	li r0, 0x1
/* 81424D10 | 48 00 00 08 */	b .L_81424D18
.L_81424D14:
/* 81424D14 | 38 00 00 00 */	li r0, 0x0
.L_81424D18:
/* 81424D18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424D1C | 41 82 03 FC */	beq .L_81425118
/* 81424D20 | 88 7D 01 F5 */	lbz r3, 0x1f5(r29)
/* 81424D24 | 88 1D 01 F4 */	lbz r0, 0x1f4(r29)
/* 81424D28 | 7C 60 03 79 */	or. r0, r3, r0
/* 81424D2C | 40 82 01 08 */	bne .L_81424E34
/* 81424D30 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424D34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424D38 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81424D3C | 7D 89 03 A6 */	mtctr r12
/* 81424D40 | 4E 80 04 21 */	bctrl
/* 81424D44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424D48 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81424D4C | 7D 89 03 A6 */	mtctr r12
/* 81424D50 | 4E 80 04 21 */	bctrl
/* 81424D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424D58 | 41 82 00 DC */	beq .L_81424E34
/* 81424D5C | 80 1D 01 F0 */	lwz r0, 0x1f0(r29)
/* 81424D60 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81424D64 | 41 82 00 D8 */	beq .L_81424E3C
/* 81424D68 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81424D6C | 41 82 00 D0 */	beq .L_81424E3C
/* 81424D70 | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81424D74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424D78 | 41 82 00 C4 */	beq .L_81424E3C
/* 81424D7C | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 81424D80 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81424D84 | 41 82 00 B8 */	beq .L_81424E3C
/* 81424D88 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81424D8C | 38 81 00 48 */	addi r4, r1, 0x48
/* 81424D90 | 38 A0 00 40 */	li r5, 0x40
/* 81424D94 | 48 00 F4 25 */	bl getCurrentInput__Q39textinput8tistring6WithZiFPwUl
/* 81424D98 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 81424D9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424DA0 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81424DA4 | 7D 89 03 A6 */	mtctr r12
/* 81424DA8 | 4E 80 04 21 */	bctrl
/* 81424DAC | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 81424DB0 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81424DB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424DB8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81424DBC | 7D 89 03 A6 */	mtctr r12
/* 81424DC0 | 4E 80 04 21 */	bctrl
/* 81424DC4 | 80 7D 01 64 */	lwz r3, 0x164(r29)
/* 81424DC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424DCC | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81424DD0 | 7D 89 03 A6 */	mtctr r12
/* 81424DD4 | 4E 80 04 21 */	bctrl
/* 81424DD8 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81424DDC | 48 00 EF B1 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 81424DE0 | 38 00 00 00 */	li r0, 0x0
/* 81424DE4 | 7F A3 EB 78 */	mr r3, r29
/* 81424DE8 | 98 1D 01 F4 */	stb r0, 0x1f4(r29)
/* 81424DEC | 38 80 00 00 */	li r4, 0x0
/* 81424DF0 | 4B FF D1 05 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81424DF4 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81424DF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424DFC | 41 82 00 40 */	beq .L_81424E3C
/* 81424E00 | 80 1D 01 F0 */	lwz r0, 0x1f0(r29)
/* 81424E04 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81424E08 | 40 82 00 34 */	bne .L_81424E3C
/* 81424E0C | 38 80 00 00 */	li r4, 0x0
/* 81424E10 | 48 01 00 C5 */	bl setCurrentWord__Q39textinput8tistring6WithZiFPCw
/* 81424E14 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 81424E18 | 48 00 F6 AD */	bl update__Q39textinput8tistring6WithZiFv
/* 81424E1C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81424E20 | 7F A3 EB 78 */	mr r3, r29
/* 81424E24 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81424E28 | 7D 89 03 A6 */	mtctr r12
/* 81424E2C | 4E 80 04 21 */	bctrl
/* 81424E30 | 48 00 00 0C */	b .L_81424E3C
.L_81424E34:
/* 81424E34 | 7F A3 EB 78 */	mr r3, r29
/* 81424E38 | 4B FF C0 F9 */	bl confirmInput___Q39textinput9inputform4BaseFv
.L_81424E3C:
/* 81424E3C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81424E40 | 7F A3 EB 78 */	mr r3, r29
/* 81424E44 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81424E48 | 7D 89 03 A6 */	mtctr r12
/* 81424E4C | 4E 80 04 21 */	bctrl
/* 81424E50 | 48 00 02 C8 */	b .L_81425118
.L_81424E54:
/* 81424E54 | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81424E58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424E5C | 40 82 00 0C */	bne .L_81424E68
/* 81424E60 | 38 00 00 00 */	li r0, 0x0
/* 81424E64 | 48 00 00 14 */	b .L_81424E78
.L_81424E68:
/* 81424E68 | 80 7D 01 74 */	lwz r3, 0x174(r29)
/* 81424E6C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81424E70 | 7C 00 00 34 */	cntlzw r0, r0
/* 81424E74 | 54 00 D9 7E */	srwi r0, r0, 5
.L_81424E78:
/* 81424E78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81424E7C | 41 82 02 9C */	beq .L_81425118
/* 81424E80 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424E84 | 7C 15 18 40 */	cmplw r21, r3
/* 81424E88 | 40 82 02 90 */	bne .L_81425118
/* 81424E8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424E90 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81424E94 | 7D 89 03 A6 */	mtctr r12
/* 81424E98 | 4E 80 04 21 */	bctrl
/* 81424E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424EA0 | 40 82 00 18 */	bne .L_81424EB8
/* 81424EA4 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424EA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424EAC | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 81424EB0 | 7D 89 03 A6 */	mtctr r12
/* 81424EB4 | 4E 80 04 21 */	bctrl
.L_81424EB8:
/* 81424EB8 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424EBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424EC0 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81424EC4 | 7D 89 03 A6 */	mtctr r12
/* 81424EC8 | 4E 80 04 21 */	bctrl
/* 81424ECC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424ED0 | 41 82 01 BC */	beq .L_8142508C
/* 81424ED4 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424ED8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424EDC | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424EE0 | 7D 89 03 A6 */	mtctr r12
/* 81424EE4 | 4E 80 04 21 */	bctrl
/* 81424EE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424EEC | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81424EF0 | 7D 89 03 A6 */	mtctr r12
/* 81424EF4 | 4E 80 04 21 */	bctrl
/* 81424EF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81424EFC | 40 82 05 B0 */	bne .L_814254AC
/* 81424F00 | 57 C0 07 BD */	rlwinm. r0, r30, 0, 30, 30
/* 81424F04 | 41 82 00 AC */	beq .L_81424FB0
/* 81424F08 | 7F A3 EB 78 */	mr r3, r29
/* 81424F0C | 38 80 00 00 */	li r4, 0x0
/* 81424F10 | 4B FF CF E5 */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81424F14 | 80 1D 01 68 */	lwz r0, 0x168(r29)
/* 81424F18 | 7C 03 00 40 */	cmplw r3, r0
/* 81424F1C | 40 82 01 38 */	bne .L_81425054
/* 81424F20 | 7C 03 03 78 */	mr r3, r0
/* 81424F24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424F28 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81424F2C | 7D 89 03 A6 */	mtctr r12
/* 81424F30 | 4E 80 04 21 */	bctrl
/* 81424F34 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81424F38 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424F3C | 7C 15 07 34 */	extsh r21, r0
/* 81424F40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424F44 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81424F48 | 7D 89 03 A6 */	mtctr r12
/* 81424F4C | 4E 80 04 21 */	bctrl
/* 81424F50 | 7C 15 18 00 */	cmpw r21, r3
/* 81424F54 | 41 80 00 0C */	blt .L_81424F60
/* 81424F58 | 3A A0 00 00 */	li r21, 0x0
/* 81424F5C | 48 00 00 28 */	b .L_81424F84
.L_81424F60:
/* 81424F60 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 81424F64 | 40 80 00 20 */	bge .L_81424F84
/* 81424F68 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424F6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424F70 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81424F74 | 7D 89 03 A6 */	mtctr r12
/* 81424F78 | 4E 80 04 21 */	bctrl
/* 81424F7C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81424F80 | 7C 15 07 34 */	extsh r21, r0
.L_81424F84:
/* 81424F84 | 7F A3 EB 78 */	mr r3, r29
/* 81424F88 | 7E A4 AB 78 */	mr r4, r21
/* 81424F8C | 4B FF F3 C5 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81424F90 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81424F94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424F98 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81424F9C | 7D 89 03 A6 */	mtctr r12
/* 81424FA0 | 4E 80 04 21 */	bctrl
/* 81424FA4 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81424FA8 | 48 00 7F 05 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81424FAC | 48 00 00 A8 */	b .L_81425054
.L_81424FB0:
/* 81424FB0 | 7F A3 EB 78 */	mr r3, r29
/* 81424FB4 | 38 80 00 00 */	li r4, 0x0
/* 81424FB8 | 4B FF CF 3D */	bl getCurrentString__Q39textinput9inputform4BaseFb
/* 81424FBC | 80 1D 01 68 */	lwz r0, 0x168(r29)
/* 81424FC0 | 7C 03 00 40 */	cmplw r3, r0
/* 81424FC4 | 40 82 00 90 */	bne .L_81425054
/* 81424FC8 | 7C 03 03 78 */	mr r3, r0
/* 81424FCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424FD0 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 81424FD4 | 7D 89 03 A6 */	mtctr r12
/* 81424FD8 | 4E 80 04 21 */	bctrl
/* 81424FDC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81424FE0 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81424FE4 | 7C 15 07 34 */	extsh r21, r0
/* 81424FE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81424FEC | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 81424FF0 | 7D 89 03 A6 */	mtctr r12
/* 81424FF4 | 4E 80 04 21 */	bctrl
/* 81424FF8 | 7C 15 18 00 */	cmpw r21, r3
/* 81424FFC | 41 80 00 0C */	blt .L_81425008
/* 81425000 | 3A A0 00 00 */	li r21, 0x0
/* 81425004 | 48 00 00 28 */	b .L_8142502C
.L_81425008:
/* 81425008 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8142500C | 40 80 00 20 */	bge .L_8142502C
/* 81425010 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81425014 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425018 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8142501C | 7D 89 03 A6 */	mtctr r12
/* 81425020 | 4E 80 04 21 */	bctrl
/* 81425024 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81425028 | 7C 15 07 34 */	extsh r21, r0
.L_8142502C:
/* 8142502C | 7F A3 EB 78 */	mr r3, r29
/* 81425030 | 7E A4 AB 78 */	mr r4, r21
/* 81425034 | 4B FF F3 1D */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 81425038 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 8142503C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425040 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81425044 | 7D 89 03 A6 */	mtctr r12
/* 81425048 | 4E 80 04 21 */	bctrl
/* 8142504C | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81425050 | 48 00 7E 5D */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
.L_81425054:
/* 81425054 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81425058 | 7F A3 EB 78 */	mr r3, r29
/* 8142505C | 38 80 00 06 */	li r4, 0x6
/* 81425060 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81425064 | 7D 89 03 A6 */	mtctr r12
/* 81425068 | 4E 80 04 21 */	bctrl
/* 8142506C | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 81425070 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425074 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81425078 | 7D 89 03 A6 */	mtctr r12
/* 8142507C | 4E 80 04 21 */	bctrl
/* 81425080 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81425084 | 48 00 7E 29 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 81425088 | 48 00 04 24 */	b .L_814254AC
.L_8142508C:
/* 8142508C | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 81425090 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425094 | 81 8C 01 24 */	lwz r12, 0x124(r12)
/* 81425098 | 7D 89 03 A6 */	mtctr r12
/* 8142509C | 4E 80 04 21 */	bctrl
/* 814250A0 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814250A4 | 41 82 04 08 */	beq .L_814254AC
/* 814250A8 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 814250AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814250B0 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 814250B4 | 7D 89 03 A6 */	mtctr r12
/* 814250B8 | 4E 80 04 21 */	bctrl
/* 814250BC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814250C0 | 7F A3 EB 78 */	mr r3, r29
/* 814250C4 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814250C8 | 7D 89 03 A6 */	mtctr r12
/* 814250CC | 4E 80 04 21 */	bctrl
/* 814250D0 | 7F A3 EB 78 */	mr r3, r29
/* 814250D4 | 38 80 00 00 */	li r4, 0x0
/* 814250D8 | 4B FF F2 79 */	bl moveCandidateToIdx__Q39textinput9inputform4BaseFl
/* 814250DC | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 814250E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814250E4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814250E8 | 7D 89 03 A6 */	mtctr r12
/* 814250EC | 4E 80 04 21 */	bctrl
/* 814250F0 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 814250F4 | 48 00 7D B9 */	bl ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv
/* 814250F8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814250FC | 7F A3 EB 78 */	mr r3, r29
/* 81425100 | 38 80 00 2F */	li r4, 0x2f
/* 81425104 | 38 A0 00 00 */	li r5, 0x0
/* 81425108 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142510C | 7D 89 03 A6 */	mtctr r12
/* 81425110 | 4E 80 04 21 */	bctrl
/* 81425114 | 48 00 03 98 */	b .L_814254AC
.L_81425118:
/* 81425118 | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 8142511C | 38 80 00 00 */	li r4, 0x0
/* 81425120 | 38 A0 00 00 */	li r5, 0x0
/* 81425124 | 48 1C FB C1 */	bl fn_815F4CE4
/* 81425128 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 8142512C | 41 82 00 1C */	beq .L_81425148
/* 81425130 | 3C 80 00 01 */	lis r4, 0x1
/* 81425134 | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 81425138 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8142513C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81425140 | 48 1C F9 F1 */	bl fn_815F4B30
/* 81425144 | 48 00 00 10 */	b .L_81425154
.L_81425148:
/* 81425148 | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 8142514C | 38 80 00 20 */	li r4, 0x20
/* 81425150 | 48 1C F9 E1 */	bl fn_815F4B30
.L_81425154:
/* 81425154 | 88 1D 01 78 */	lbz r0, 0x178(r29)
/* 81425158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142515C | 40 82 00 0C */	bne .L_81425168
/* 81425160 | 38 00 00 00 */	li r0, 0x0
/* 81425164 | 48 00 00 5C */	b .L_814251C0
.L_81425168:
/* 81425168 | 80 1D 01 74 */	lwz r0, 0x174(r29)
/* 8142516C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81425170 | 40 82 00 0C */	bne .L_8142517C
/* 81425174 | 38 00 00 00 */	li r0, 0x0
/* 81425178 | 48 00 00 48 */	b .L_814251C0
.L_8142517C:
/* 8142517C | 80 1D 01 F0 */	lwz r0, 0x1f0(r29)
/* 81425180 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81425184 | 40 82 00 38 */	bne .L_814251BC
/* 81425188 | 80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 8142518C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425190 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81425194 | 7D 89 03 A6 */	mtctr r12
/* 81425198 | 4E 80 04 21 */	bctrl
/* 8142519C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814251A0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814251A4 | 7D 89 03 A6 */	mtctr r12
/* 814251A8 | 4E 80 04 21 */	bctrl
/* 814251AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814251B0 | 41 82 00 0C */	beq .L_814251BC
/* 814251B4 | 38 00 00 00 */	li r0, 0x0
/* 814251B8 | 48 00 00 08 */	b .L_814251C0
.L_814251BC:
/* 814251BC | 38 00 00 01 */	li r0, 0x1
.L_814251C0:
/* 814251C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814251C4 | 41 82 01 6C */	beq .L_81425330
/* 814251C8 | 3F E0 81 66 */	lis r31, lbl_8165C970@ha
/* 814251CC | 3B 80 00 03 */	li r28, 0x3
/* 814251D0 | 3B FF C9 70 */	addi r31, r31, lbl_8165C970@l
.L_814251D4:
/* 814251D4 | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 814251D8 | 48 1C FA 81 */	bl fn_815F4C58
/* 814251DC | 88 0D 93 72 */	lbz r0, lbl_816973B2@sda21(r0)
/* 814251E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814251E4 | 41 82 01 34 */	beq .L_81425318
/* 814251E8 | 48 00 00 0C */	b .L_814251F4
.L_814251EC:
/* 814251EC | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 814251F0 | 48 1C FA 69 */	bl fn_815F4C58
.L_814251F4:
/* 814251F4 | A3 7F 00 00 */	lhz r27, 0x0(r31)
/* 814251F8 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 814251FC | A3 5F 00 02 */	lhz r26, 0x2(r31)
/* 81425200 | A3 3F 00 04 */	lhz r25, 0x4(r31)
/* 81425204 | 7C 04 D8 40 */	cmplw r4, r27
/* 81425208 | A3 1F 00 06 */	lhz r24, 0x6(r31)
/* 8142520C | A2 FF 00 08 */	lhz r23, 0x8(r31)
/* 81425210 | A2 DF 00 0A */	lhz r22, 0xa(r31)
/* 81425214 | A2 BF 00 0C */	lhz r21, 0xc(r31)
/* 81425218 | A1 9F 00 0E */	lhz r12, 0xe(r31)
/* 8142521C | A1 7F 00 10 */	lhz r11, 0x10(r31)
/* 81425220 | A1 5F 00 12 */	lhz r10, 0x12(r31)
/* 81425224 | A1 3F 00 14 */	lhz r9, 0x14(r31)
/* 81425228 | A1 1F 00 16 */	lhz r8, 0x16(r31)
/* 8142522C | A0 FF 00 18 */	lhz r7, 0x18(r31)
/* 81425230 | A0 DF 00 1A */	lhz r6, 0x1a(r31)
/* 81425234 | A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 81425238 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8142523C | B3 61 00 28 */	sth r27, 0x28(r1)
/* 81425240 | B3 41 00 2A */	sth r26, 0x2a(r1)
/* 81425244 | B3 21 00 2C */	sth r25, 0x2c(r1)
/* 81425248 | B3 01 00 2E */	sth r24, 0x2e(r1)
/* 8142524C | B2 E1 00 30 */	sth r23, 0x30(r1)
/* 81425250 | B2 C1 00 32 */	sth r22, 0x32(r1)
/* 81425254 | B2 A1 00 34 */	sth r21, 0x34(r1)
/* 81425258 | B1 81 00 36 */	sth r12, 0x36(r1)
/* 8142525C | B1 61 00 38 */	sth r11, 0x38(r1)
/* 81425260 | B1 41 00 3A */	sth r10, 0x3a(r1)
/* 81425264 | B1 21 00 3C */	sth r9, 0x3c(r1)
/* 81425268 | B1 01 00 3E */	sth r8, 0x3e(r1)
/* 8142526C | B0 E1 00 40 */	sth r7, 0x40(r1)
/* 81425270 | B0 C1 00 42 */	sth r6, 0x42(r1)
/* 81425274 | B0 A1 00 44 */	sth r5, 0x44(r1)
/* 81425278 | B0 01 00 46 */	sth r0, 0x46(r1)
/* 8142527C | 41 80 00 0C */	blt .L_81425288
/* 81425280 | 7C 04 28 40 */	cmplw r4, r5
/* 81425284 | 40 81 00 0C */	ble .L_81425290
.L_81425288:
/* 81425288 | 38 00 00 01 */	li r0, 0x1
/* 8142528C | 48 00 00 84 */	b .L_81425310
.L_81425290:
/* 81425290 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 81425294 | 38 A0 00 00 */	li r5, 0x0
/* 81425298 | 7F 89 03 A6 */	mtctr r28
.L_8142529C:
/* 8142529C | A0 06 00 00 */	lhz r0, 0x0(r6)
/* 814252A0 | 7C 04 00 40 */	cmplw r4, r0
/* 814252A4 | 40 82 00 0C */	bne .L_814252B0
/* 814252A8 | 38 00 00 00 */	li r0, 0x0
/* 814252AC | 48 00 00 64 */	b .L_81425310
.L_814252B0:
/* 814252B0 | A0 06 00 02 */	lhz r0, 0x2(r6)
/* 814252B4 | 7C 04 00 40 */	cmplw r4, r0
/* 814252B8 | 40 82 00 0C */	bne .L_814252C4
/* 814252BC | 38 00 00 00 */	li r0, 0x0
/* 814252C0 | 48 00 00 50 */	b .L_81425310
.L_814252C4:
/* 814252C4 | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 814252C8 | 7C 04 00 40 */	cmplw r4, r0
/* 814252CC | 40 82 00 0C */	bne .L_814252D8
/* 814252D0 | 38 00 00 00 */	li r0, 0x0
/* 814252D4 | 48 00 00 3C */	b .L_81425310
.L_814252D8:
/* 814252D8 | A0 06 00 06 */	lhz r0, 0x6(r6)
/* 814252DC | 7C 04 00 40 */	cmplw r4, r0
/* 814252E0 | 40 82 00 0C */	bne .L_814252EC
/* 814252E4 | 38 00 00 00 */	li r0, 0x0
/* 814252E8 | 48 00 00 28 */	b .L_81425310
.L_814252EC:
/* 814252EC | A0 06 00 08 */	lhz r0, 0x8(r6)
/* 814252F0 | 7C 04 00 40 */	cmplw r4, r0
/* 814252F4 | 40 82 00 0C */	bne .L_81425300
/* 814252F8 | 38 00 00 00 */	li r0, 0x0
/* 814252FC | 48 00 00 14 */	b .L_81425310
.L_81425300:
/* 81425300 | 38 C6 00 0A */	addi r6, r6, 0xa
/* 81425304 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81425308 | 42 00 FF 94 */	bdnz .L_8142529C
/* 8142530C | 38 00 00 01 */	li r0, 0x1
.L_81425310:
/* 81425310 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81425314 | 41 82 FE D8 */	beq .L_814251EC
.L_81425318:
/* 81425318 | 54 64 04 3F */	clrlwi. r4, r3, 16
/* 8142531C | 41 82 01 7C */	beq .L_81425498
/* 81425320 | 7F A3 EB 78 */	mr r3, r29
/* 81425324 | 7F C5 F3 78 */	mr r5, r30
/* 81425328 | 4B FF C6 A9 */	bl inputCharZi___Q39textinput9inputform4BaseFwUl
/* 8142532C | 4B FF FE A8 */	b .L_814251D4
.L_81425330:
/* 81425330 | 3F E0 81 66 */	lis r31, lbl_8165C970@ha
/* 81425334 | 3B 80 00 03 */	li r28, 0x3
/* 81425338 | 3B FF C9 70 */	addi r31, r31, lbl_8165C970@l
.L_8142533C:
/* 8142533C | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 81425340 | 48 1C F9 19 */	bl fn_815F4C58
/* 81425344 | 88 0D 93 72 */	lbz r0, lbl_816973B2@sda21(r0)
/* 81425348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142534C | 41 82 01 34 */	beq .L_81425480
/* 81425350 | 48 00 00 0C */	b .L_8142535C
.L_81425354:
/* 81425354 | 38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 81425358 | 48 1C F9 01 */	bl fn_815F4C58
.L_8142535C:
/* 8142535C | A2 BF 00 00 */	lhz r21, 0x0(r31)
/* 81425360 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81425364 | A2 DF 00 02 */	lhz r22, 0x2(r31)
/* 81425368 | A2 FF 00 04 */	lhz r23, 0x4(r31)
/* 8142536C | 7C 04 A8 40 */	cmplw r4, r21
/* 81425370 | A3 1F 00 06 */	lhz r24, 0x6(r31)
/* 81425374 | A3 3F 00 08 */	lhz r25, 0x8(r31)
/* 81425378 | A3 5F 00 0A */	lhz r26, 0xa(r31)
/* 8142537C | A3 7F 00 0C */	lhz r27, 0xc(r31)
/* 81425380 | A1 9F 00 0E */	lhz r12, 0xe(r31)
/* 81425384 | A1 7F 00 10 */	lhz r11, 0x10(r31)
/* 81425388 | A1 5F 00 12 */	lhz r10, 0x12(r31)
/* 8142538C | A1 3F 00 14 */	lhz r9, 0x14(r31)
/* 81425390 | A1 1F 00 16 */	lhz r8, 0x16(r31)
/* 81425394 | A0 FF 00 18 */	lhz r7, 0x18(r31)
/* 81425398 | A0 DF 00 1A */	lhz r6, 0x1a(r31)
/* 8142539C | A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 814253A0 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 814253A4 | B2 A1 00 08 */	sth r21, 0x8(r1)
/* 814253A8 | B2 C1 00 0A */	sth r22, 0xa(r1)
/* 814253AC | B2 E1 00 0C */	sth r23, 0xc(r1)
/* 814253B0 | B3 01 00 0E */	sth r24, 0xe(r1)
/* 814253B4 | B3 21 00 10 */	sth r25, 0x10(r1)
/* 814253B8 | B3 41 00 12 */	sth r26, 0x12(r1)
/* 814253BC | B3 61 00 14 */	sth r27, 0x14(r1)
/* 814253C0 | B1 81 00 16 */	sth r12, 0x16(r1)
/* 814253C4 | B1 61 00 18 */	sth r11, 0x18(r1)
/* 814253C8 | B1 41 00 1A */	sth r10, 0x1a(r1)
/* 814253CC | B1 21 00 1C */	sth r9, 0x1c(r1)
/* 814253D0 | B1 01 00 1E */	sth r8, 0x1e(r1)
/* 814253D4 | B0 E1 00 20 */	sth r7, 0x20(r1)
/* 814253D8 | B0 C1 00 22 */	sth r6, 0x22(r1)
/* 814253DC | B0 A1 00 24 */	sth r5, 0x24(r1)
/* 814253E0 | B0 01 00 26 */	sth r0, 0x26(r1)
/* 814253E4 | 41 80 00 0C */	blt .L_814253F0
/* 814253E8 | 7C 04 28 40 */	cmplw r4, r5
/* 814253EC | 40 81 00 0C */	ble .L_814253F8
.L_814253F0:
/* 814253F0 | 38 00 00 01 */	li r0, 0x1
/* 814253F4 | 48 00 00 84 */	b .L_81425478
.L_814253F8:
/* 814253F8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814253FC | 38 A0 00 00 */	li r5, 0x0
/* 81425400 | 7F 89 03 A6 */	mtctr r28
.L_81425404:
/* 81425404 | A0 06 00 00 */	lhz r0, 0x0(r6)
/* 81425408 | 7C 04 00 40 */	cmplw r4, r0
/* 8142540C | 40 82 00 0C */	bne .L_81425418
/* 81425410 | 38 00 00 00 */	li r0, 0x0
/* 81425414 | 48 00 00 64 */	b .L_81425478
.L_81425418:
/* 81425418 | A0 06 00 02 */	lhz r0, 0x2(r6)
/* 8142541C | 7C 04 00 40 */	cmplw r4, r0
/* 81425420 | 40 82 00 0C */	bne .L_8142542C
/* 81425424 | 38 00 00 00 */	li r0, 0x0
/* 81425428 | 48 00 00 50 */	b .L_81425478
.L_8142542C:
/* 8142542C | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 81425430 | 7C 04 00 40 */	cmplw r4, r0
/* 81425434 | 40 82 00 0C */	bne .L_81425440
/* 81425438 | 38 00 00 00 */	li r0, 0x0
/* 8142543C | 48 00 00 3C */	b .L_81425478
.L_81425440:
/* 81425440 | A0 06 00 06 */	lhz r0, 0x6(r6)
/* 81425444 | 7C 04 00 40 */	cmplw r4, r0
/* 81425448 | 40 82 00 0C */	bne .L_81425454
/* 8142544C | 38 00 00 00 */	li r0, 0x0
/* 81425450 | 48 00 00 28 */	b .L_81425478
.L_81425454:
/* 81425454 | A0 06 00 08 */	lhz r0, 0x8(r6)
/* 81425458 | 7C 04 00 40 */	cmplw r4, r0
/* 8142545C | 40 82 00 0C */	bne .L_81425468
/* 81425460 | 38 00 00 00 */	li r0, 0x0
/* 81425464 | 48 00 00 14 */	b .L_81425478
.L_81425468:
/* 81425468 | 38 C6 00 0A */	addi r6, r6, 0xa
/* 8142546C | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81425470 | 42 00 FF 94 */	bdnz .L_81425404
/* 81425474 | 38 00 00 01 */	li r0, 0x1
.L_81425478:
/* 81425478 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142547C | 41 82 FE D8 */	beq .L_81425354
.L_81425480:
/* 81425480 | 54 64 04 3F */	clrlwi. r4, r3, 16
/* 81425484 | 41 82 00 14 */	beq .L_81425498
/* 81425488 | 7F A3 EB 78 */	mr r3, r29
/* 8142548C | 7F C5 F3 78 */	mr r5, r30
/* 81425490 | 4B FF C7 D9 */	bl inputCharDefault___Q39textinput9inputform4BaseFwUl
/* 81425494 | 4B FF FE A8 */	b .L_8142533C
.L_81425498:
/* 81425498 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142549C | 7F A3 EB 78 */	mr r3, r29
/* 814254A0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 814254A4 | 7D 89 03 A6 */	mtctr r12
/* 814254A8 | 4E 80 04 21 */	bctrl
.L_814254AC:
/* 814254AC | 39 61 01 00 */	addi r11, r1, 0x100
/* 814254B0 | 48 1D 40 45 */	bl _restgpr_21
/* 814254B4 | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 814254B8 | 7C 08 03 A6 */	mtlr r0
/* 814254BC | 38 21 01 00 */	addi r1, r1, 0x100
/* 814254C0 | 4E 80 00 20 */	blr
.endfn onSpaceKeyHWKB__Q39textinput9inputform4BaseFUl

# .text:0x9954 | 0x814254C4 | size: 0x34
# textinput::inputform::Base::deselectCandidate()
.fn deselectCandidate__Q39textinput9inputform4BaseFv, global
/* 814254C4 | 88 03 01 78 */	lbz r0, 0x178(r3)
/* 814254C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814254CC | 4D 82 00 20 */	beqlr
/* 814254D0 | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 814254D4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814254D8 | 4C 82 00 20 */	bnelr
/* 814254DC | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 814254E0 | 38 80 FF FF */	li r4, -0x1
/* 814254E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814254E8 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 814254EC | 7D 89 03 A6 */	mtctr r12
/* 814254F0 | 4E 80 04 20 */	bctr
/* 814254F4 | 4E 80 00 20 */	blr
.endfn deselectCandidate__Q39textinput9inputform4BaseFv

# .text:0x9988 | 0x814254F8 | size: 0x5C
# textinput::inputform::Base::resetRelation()
.fn resetRelation__Q39textinput9inputform4BaseFv, global
/* 814254F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814254FC | 7C 08 02 A6 */	mflr r0
/* 81425500 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81425504 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81425508 | 7C 7F 1B 78 */	mr r31, r3
/* 8142550C | 80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 81425510 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425514 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81425518 | 7D 89 03 A6 */	mtctr r12
/* 8142551C | 4E 80 04 21 */	bctrl
/* 81425520 | 38 00 00 00 */	li r0, 0x0
/* 81425524 | 98 03 00 15 */	stb r0, 0x15(r3)
/* 81425528 | 98 03 00 16 */	stb r0, 0x16(r3)
/* 8142552C | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 81425530 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425534 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 81425538 | 7D 89 03 A6 */	mtctr r12
/* 8142553C | 4E 80 04 21 */	bctrl
/* 81425540 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81425544 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81425548 | 7C 08 03 A6 */	mtlr r0
/* 8142554C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81425550 | 4E 80 00 20 */	blr
.endfn resetRelation__Q39textinput9inputform4BaseFv

# .text:0x99E4 | 0x81425554 | size: 0x8
# textinput::Manager::getHWKeyboard()
.fn getHWKeyboard__Q29textinput7ManagerFv, global
/* 81425554 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81425558 | 4E 80 00 20 */	blr
.endfn getHWKeyboard__Q29textinput7ManagerFv

# .text:0x99EC | 0x8142555C | size: 0x4
# textinput::tistring::WithAtok::resetRelation()
.fn resetRelation__Q39textinput8tistring8WithAtokFv, global
/* 8142555C | 4E 80 00 20 */	blr
.endfn resetRelation__Q39textinput8tistring8WithAtokFv

# .text:0x99F0 | 0x81425560 | size: 0xB8
# textinput::inputform::LayoutByNW4R::LayoutByNW4R(textinput::Manager*, nw4r::lyt::MultiArcResourceAccessor*, const char*, textinput::EventObserver*, const char*)
.fn __ct__Q39textinput9inputform12LayoutByNW4RFPQ29textinput7ManagerPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserverPCc, global
/* 81425560 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81425564 | 7C 08 02 A6 */	mflr r0
/* 81425568 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142556C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81425570 | 48 1D 3F 51 */	bl _savegpr_27
/* 81425574 | 7C 7B 1B 78 */	mr r27, r3
/* 81425578 | 7C BC 2B 78 */	mr r28, r5
/* 8142557C | 7C DD 33 78 */	mr r29, r6
/* 81425580 | 7C FE 3B 78 */	mr r30, r7
/* 81425584 | 7D 1F 43 78 */	mr r31, r8
/* 81425588 | 4B FF 6B E5 */	bl __ct__Q39textinput9inputform4BaseFPQ29textinput7Manager
/* 8142558C | 7F 84 E3 78 */	mr r4, r28
/* 81425590 | 7F A5 EB 78 */	mr r5, r29
/* 81425594 | 7F C6 F3 78 */	mr r6, r30
/* 81425598 | 38 7B 02 18 */	addi r3, r27, 0x218
/* 8142559C | 48 01 0A 99 */	bl __ct__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserver
/* 814255A0 | 3C C0 81 66 */	lis r6, __vt__Q39textinput9inputform12LayoutByNW4R@ha
/* 814255A4 | 38 00 00 00 */	li r0, 0x0
/* 814255A8 | 38 C6 CC F0 */	addi r6, r6, __vt__Q39textinput9inputform12LayoutByNW4R@l
/* 814255AC | 3C A0 81 66 */	lis r5, lbl_8165CBE0@ha
/* 814255B0 | 3C 80 81 61 */	lis r4, csLanguageDependencyDataUEJ__Q29textinput9inputform@ha
/* 814255B4 | 90 DB 00 00 */	stw r6, 0x0(r27)
/* 814255B8 | 38 66 00 20 */	addi r3, r6, 0x20
/* 814255BC | 38 E6 00 B8 */	addi r7, r6, 0xb8
/* 814255C0 | 38 C6 01 A8 */	addi r6, r6, 0x1a8
/* 814255C4 | 38 A5 CB E0 */	addi r5, r5, lbl_8165CBE0@l
/* 814255C8 | 38 84 52 78 */	addi r4, r4, csLanguageDependencyDataUEJ__Q29textinput9inputform@l
/* 814255CC | 90 7B 00 5C */	stw r3, 0x5c(r27)
/* 814255D0 | 38 7B 02 D4 */	addi r3, r27, 0x2d4
/* 814255D4 | 90 FB 01 18 */	stw r7, 0x118(r27)
/* 814255D8 | 90 DB 02 18 */	stw r6, 0x218(r27)
/* 814255DC | 90 BB 02 C0 */	stw r5, 0x2c0(r27)
/* 814255E0 | 90 9B 02 C4 */	stw r4, 0x2c4(r27)
/* 814255E4 | 93 FB 02 C8 */	stw r31, 0x2c8(r27)
/* 814255E8 | 98 1B 02 CC */	stb r0, 0x2cc(r27)
/* 814255EC | 98 1B 02 CD */	stb r0, 0x2cd(r27)
/* 814255F0 | 98 1B 02 CE */	stb r0, 0x2ce(r27)
/* 814255F4 | 90 1B 02 D0 */	stw r0, 0x2d0(r27)
/* 814255F8 | 48 0E F5 C1 */	bl fn_81514BB8
/* 814255FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81425600 | 7F 63 DB 78 */	mr r3, r27
/* 81425604 | 48 1D 3F 09 */	bl _restgpr_27
/* 81425608 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142560C | 7C 08 03 A6 */	mtlr r0
/* 81425610 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81425614 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput9inputform12LayoutByNW4RFPQ29textinput7ManagerPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserverPCc

# .text:0x9AA8 | 0x81425618 | size: 0x134
# textinput::inputform::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81425618 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142561C | 7C 08 02 A6 */	mflr r0
/* 81425620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81425624 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81425628 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142562C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81425630 | 7C 9E 23 78 */	mr r30, r4
/* 81425634 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81425638 | 7C 7D 1B 78 */	mr r29, r3
/* 8142563C | 41 82 00 F0 */	beq .L_8142572C
/* 81425640 | 80 E3 02 D0 */	lwz r7, 0x2d0(r3)
/* 81425644 | 3C C0 81 66 */	lis r6, __vt__Q39textinput9inputform12LayoutByNW4R@ha
/* 81425648 | 38 C6 CC F0 */	addi r6, r6, __vt__Q39textinput9inputform12LayoutByNW4R@l
/* 8142564C | 38 A6 00 20 */	addi r5, r6, 0x20
/* 81425650 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81425654 | 38 86 00 B8 */	addi r4, r6, 0xb8
/* 81425658 | 38 06 01 A8 */	addi r0, r6, 0x1a8
/* 8142565C | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81425660 | 90 A3 00 5C */	stw r5, 0x5c(r3)
/* 81425664 | 90 83 01 18 */	stw r4, 0x118(r3)
/* 81425668 | 90 03 02 18 */	stw r0, 0x218(r3)
/* 8142566C | 41 82 00 28 */	beq .L_81425694
/* 81425670 | 81 87 00 00 */	lwz r12, 0x0(r7)
/* 81425674 | 7C E3 3B 78 */	mr r3, r7
/* 81425678 | 38 80 FF FF */	li r4, -0x1
/* 8142567C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81425680 | 7D 89 03 A6 */	mtctr r12
/* 81425684 | 4E 80 04 21 */	bctrl
/* 81425688 | 80 7D 01 D0 */	lwz r3, 0x1d0(r29)
/* 8142568C | 80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 81425690 | 48 13 5F E9 */	bl fn_8155B678
.L_81425694:
/* 81425694 | 38 7D 02 84 */	addi r3, r29, 0x284
/* 81425698 | 38 80 00 00 */	li r4, 0x0
/* 8142569C | 48 0E CC 41 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814256A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814256A4 | 48 00 00 2C */	b .L_814256D0
.L_814256A8:
/* 814256A8 | 7F E4 FB 78 */	mr r4, r31
/* 814256AC | 38 7D 02 84 */	addi r3, r29, 0x284
/* 814256B0 | 48 0E CB C1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 814256B4 | 80 9D 01 D0 */	lwz r4, 0x1d0(r29)
/* 814256B8 | 7F E3 FB 78 */	mr r3, r31
/* 814256BC | 48 01 1D 35 */	bl destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator
/* 814256C0 | 38 7D 02 84 */	addi r3, r29, 0x284
/* 814256C4 | 38 80 00 00 */	li r4, 0x0
/* 814256C8 | 48 0E CC 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814256CC | 7C 7F 1B 78 */	mr r31, r3
.L_814256D0:
/* 814256D0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814256D4 | 40 82 FF D4 */	bne .L_814256A8
/* 814256D8 | 38 7D 02 D4 */	addi r3, r29, 0x2d4
/* 814256DC | 38 80 FF FF */	li r4, -0x1
/* 814256E0 | 48 0E F5 15 */	bl fn_81514BF4
/* 814256E4 | 38 7D 02 18 */	addi r3, r29, 0x218
/* 814256E8 | 38 80 00 00 */	li r4, 0x0
/* 814256EC | 48 01 0A 0D */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 814256F0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814256F4 | 41 82 00 28 */	beq .L_8142571C
/* 814256F8 | 34 1D 01 F8 */	addic. r0, r29, 0x1f8
/* 814256FC | 41 82 00 10 */	beq .L_8142570C
/* 81425700 | 80 7D 02 00 */	lwz r3, 0x200(r29)
/* 81425704 | 80 9D 01 F8 */	lwz r4, 0x1f8(r29)
/* 81425708 | 48 13 5F 71 */	bl fn_8155B678
.L_8142570C:
/* 8142570C | 34 7D 00 10 */	addic. r3, r29, 0x10
/* 81425710 | 41 82 00 0C */	beq .L_8142571C
/* 81425714 | 38 80 00 00 */	li r4, 0x0
/* 81425718 | 48 0F 16 CD */	bl fn_81516DE4
.L_8142571C:
/* 8142571C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81425720 | 40 81 00 0C */	ble .L_8142572C
/* 81425724 | 7F A3 EB 78 */	mr r3, r29
/* 81425728 | 48 1D 29 BD */	bl __dl__FPv
.L_8142572C:
/* 8142572C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81425730 | 7F A3 EB 78 */	mr r3, r29
/* 81425734 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81425738 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142573C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81425740 | 7C 08 03 A6 */	mtlr r0
/* 81425744 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81425748 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput9inputform12LayoutByNW4RFv

# .text:0x9BDC | 0x8142574C | size: 0x40
# textinput::inputform::EventHandler::~EventHandler()
.fn __dt__Q39textinput9inputform12EventHandlerFv, global
/* 8142574C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81425750 | 7C 08 02 A6 */	mflr r0
/* 81425754 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81425758 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142575C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81425760 | 7C 7F 1B 78 */	mr r31, r3
/* 81425764 | 41 82 00 10 */	beq .L_81425774
/* 81425768 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142576C | 40 81 00 08 */	ble .L_81425774
/* 81425770 | 48 1D 29 75 */	bl __dl__FPv
.L_81425774:
/* 81425774 | 7F E3 FB 78 */	mr r3, r31
/* 81425778 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142577C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81425780 | 7C 08 03 A6 */	mtlr r0
/* 81425784 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81425788 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput9inputform12EventHandlerFv

# .text:0x9C1C | 0x8142578C | size: 0x590
# textinput::inputform::LayoutByNW4R::create(MEMAllocator*, textinput::inputform::EditBuffer*)
.fn create__Q39textinput9inputform12LayoutByNW4RFP12MEMAllocatorPQ39textinput9inputform10EditBuffer, global
/* 8142578C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81425790 | 7C 08 02 A6 */	mflr r0
/* 81425794 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81425798 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8142579C | 48 1D 3D 01 */	bl _savegpr_18
/* 814257A0 | 3F C0 81 66 */	lis r30, lbl_8165C820@ha
/* 814257A4 | 90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 814257A8 | 7C 77 1B 78 */	mr r23, r3
/* 814257AC | 7C 98 23 78 */	mr r24, r4
/* 814257B0 | 7C B2 2B 78 */	mr r18, r5
/* 814257B4 | 3B DE C8 20 */	addi r30, r30, lbl_8165C820@l
/* 814257B8 | 38 63 00 10 */	addi r3, r3, 0x10
/* 814257BC | 48 00 F8 15 */	bl create__Q39textinput10textdrawer4BaseFP12MEMAllocator
/* 814257C0 | 80 12 00 04 */	lwz r0, 0x4(r18)
/* 814257C4 | 7F 03 C3 78 */	mr r3, r24
/* 814257C8 | A0 97 01 FC */	lhz r4, 0x1fc(r23)
/* 814257CC | 90 17 01 64 */	stw r0, 0x164(r23)
/* 814257D0 | 38 04 00 02 */	addi r0, r4, 0x2
/* 814257D4 | 80 B2 00 08 */	lwz r5, 0x8(r18)
/* 814257D8 | 54 04 18 38 */	slwi r4, r0, 3
/* 814257DC | 90 B7 01 68 */	stw r5, 0x168(r23)
/* 814257E0 | 80 12 00 0C */	lwz r0, 0xc(r18)
/* 814257E4 | 90 17 01 6C */	stw r0, 0x16c(r23)
/* 814257E8 | 93 17 02 00 */	stw r24, 0x200(r23)
/* 814257EC | 48 13 5E 7D */	bl fn_8155B668
/* 814257F0 | 90 77 01 F8 */	stw r3, 0x1f8(r23)
/* 814257F4 | 38 77 01 F8 */	addi r3, r23, 0x1f8
/* 814257F8 | 4B FF 68 C1 */	bl init__Q49textinput9inputform4Base14RowInfoManagerFv
/* 814257FC | A0 17 01 FC */	lhz r0, 0x1fc(r23)
/* 81425800 | 80 D7 01 F8 */	lwz r6, 0x1f8(r23)
/* 81425804 | 54 00 18 38 */	slwi r0, r0, 3
/* 81425808 | 7C 66 02 14 */	add r3, r6, r0
/* 8142580C | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 81425810 | 54 00 18 38 */	slwi r0, r0, 3
/* 81425814 | 7C A6 02 14 */	add r5, r6, r0
/* 81425818 | 7D 06 02 2E */	lhzx r8, r6, r0
/* 8142581C | A0 E5 00 02 */	lhz r7, 0x2(r5)
/* 81425820 | 55 00 18 38 */	slwi r0, r8, 3
/* 81425824 | 54 E4 18 38 */	slwi r4, r7, 3
/* 81425828 | 7D 26 22 2E */	lhzx r9, r6, r4
/* 8142582C | 7C 66 02 14 */	add r3, r6, r0
/* 81425830 | 7D 06 23 2E */	sthx r8, r6, r4
/* 81425834 | 7C 09 48 40 */	cmplw r9, r9
/* 81425838 | B0 E3 00 02 */	sth r7, 0x2(r3)
/* 8142583C | B1 25 00 00 */	sth r9, 0x0(r5)
/* 81425840 | B1 25 00 02 */	sth r9, 0x2(r5)
/* 81425844 | A0 77 01 FC */	lhz r3, 0x1fc(r23)
/* 81425848 | 80 D7 01 F8 */	lwz r6, 0x1f8(r23)
/* 8142584C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81425850 | 54 00 1B 78 */	clrlslwi r0, r0, 16, 3
/* 81425854 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 81425858 | 54 00 18 38 */	slwi r0, r0, 3
/* 8142585C | 7C 86 02 14 */	add r4, r6, r0
/* 81425860 | 40 82 00 20 */	bne .L_81425880
/* 81425864 | A0 E4 00 02 */	lhz r7, 0x2(r4)
/* 81425868 | 54 E3 18 38 */	slwi r3, r7, 3
/* 8142586C | 7C 06 1A 2E */	lhzx r0, r6, r3
/* 81425870 | B0 05 00 00 */	sth r0, 0x0(r5)
/* 81425874 | B0 E5 00 02 */	sth r7, 0x2(r5)
/* 81425878 | B1 24 00 02 */	sth r9, 0x2(r4)
/* 8142587C | 7D 26 1B 2E */	sthx r9, r6, r3
.L_81425880:
/* 81425880 | 3A 80 00 00 */	li r20, 0x0
/* 81425884 | 38 00 00 01 */	li r0, 0x1
/* 81425888 | B2 85 00 04 */	sth r20, 0x4(r5)
/* 8142588C | 7F 03 C3 78 */	mr r3, r24
/* 81425890 | 38 80 00 10 */	li r4, 0x10
/* 81425894 | B0 05 00 06 */	sth r0, 0x6(r5)
/* 81425898 | 90 B7 02 04 */	stw r5, 0x204(r23)
/* 8142589C | 48 13 5D CD */	bl fn_8155B668
/* 814258A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814258A4 | 41 82 00 18 */	beq .L_814258BC
/* 814258A8 | 3C 80 81 66 */	lis r4, __vt__Q39textinput9inputform12EventHandler@ha
/* 814258AC | 92 83 00 04 */	stw r20, 0x4(r3)
/* 814258B0 | 38 84 CC D0 */	addi r4, r4, __vt__Q39textinput9inputform12EventHandler@l
/* 814258B4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814258B8 | 92 E3 00 0C */	stw r23, 0xc(r3)
.L_814258BC:
/* 814258BC | 90 77 02 D0 */	stw r3, 0x2d0(r23)
/* 814258C0 | 7C 65 1B 78 */	mr r5, r3
/* 814258C4 | 7F 04 C3 78 */	mr r4, r24
/* 814258C8 | 38 77 02 18 */	addi r3, r23, 0x218
/* 814258CC | 48 01 09 49 */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 814258D0 | 80 97 02 C8 */	lwz r4, 0x2c8(r23)
/* 814258D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814258D8 | 40 82 00 70 */	bne .L_81425948
/* 814258DC | 38 BE 03 D0 */	addi r5, r30, 0x3d0
/* 814258E0 | 80 77 02 24 */	lwz r3, 0x224(r23)
/* 814258E4 | 90 B7 02 C8 */	stw r5, 0x2c8(r23)
/* 814258E8 | 38 80 00 00 */	li r4, 0x0
/* 814258EC | 38 C0 00 00 */	li r6, 0x0
/* 814258F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814258F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814258F8 | 7D 89 03 A6 */	mtctr r12
/* 814258FC | 4E 80 04 21 */	bctrl
/* 81425900 | 7C 64 1B 78 */	mr r4, r3
/* 81425904 | 38 77 02 D4 */	addi r3, r23, 0x2d4
/* 81425908 | 48 0E F3 45 */	bl fn_81514C4C
/* 8142590C | 81 97 02 D4 */	lwz r12, 0x2d4(r23)
/* 81425910 | 3C 80 00 01 */	lis r4, 0x1
/* 81425914 | 38 04 E0 6B */	subi r0, r4, 0x1f95
/* 81425918 | 38 77 02 D4 */	addi r3, r23, 0x2d4
/* 8142591C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81425920 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81425924 | 7D 89 03 A6 */	mtctr r12
/* 81425928 | 4E 80 04 21 */	bctrl
/* 8142592C | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81425930 | 7E E3 BB 78 */	mr r3, r23
/* 81425934 | 38 97 02 D4 */	addi r4, r23, 0x2d4
/* 81425938 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8142593C | 7D 89 03 A6 */	mtctr r12
/* 81425940 | 4E 80 04 21 */	bctrl
/* 81425944 | 48 00 00 64 */	b .L_814259A8
.L_81425948:
/* 81425948 | 80 77 02 24 */	lwz r3, 0x224(r23)
/* 8142594C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425950 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81425954 | 7D 89 03 A6 */	mtctr r12
/* 81425958 | 4E 80 04 21 */	bctrl
/* 8142595C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425960 | 3C 80 00 01 */	lis r4, 0x1
/* 81425964 | 38 04 E0 6B */	subi r0, r4, 0x1f95
/* 81425968 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8142596C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81425970 | 7D 89 03 A6 */	mtctr r12
/* 81425974 | 4E 80 04 21 */	bctrl
/* 81425978 | 80 77 02 24 */	lwz r3, 0x224(r23)
/* 8142597C | 80 97 02 C8 */	lwz r4, 0x2c8(r23)
/* 81425980 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425984 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81425988 | 7D 89 03 A6 */	mtctr r12
/* 8142598C | 4E 80 04 21 */	bctrl
/* 81425990 | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81425994 | 7C 64 1B 78 */	mr r4, r3
/* 81425998 | 7E E3 BB 78 */	mr r3, r23
/* 8142599C | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 814259A0 | 7D 89 03 A6 */	mtctr r12
/* 814259A4 | 4E 80 04 21 */	bctrl
.L_814259A8:
/* 814259A8 | 80 77 02 1C */	lwz r3, 0x21c(r23)
/* 814259AC | 38 A0 00 01 */	li r5, 0x1
/* 814259B0 | 80 97 02 C0 */	lwz r4, 0x2c0(r23)
/* 814259B4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814259B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814259BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814259C0 | 7D 89 03 A6 */	mtctr r12
/* 814259C4 | 4E 80 04 21 */	bctrl
/* 814259C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814259CC | 7C 74 1B 78 */	mr r20, r3
/* 814259D0 | 38 8D 93 74 */	li r4, lbl_816973B4@sda21
/* 814259D4 | 38 A0 00 00 */	li r5, 0x0
/* 814259D8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814259DC | 7D 89 03 A6 */	mtctr r12
/* 814259E0 | 4E 80 04 21 */	bctrl
/* 814259E4 | C0 14 00 F0 */	lfs f0, 0xf0(r20)
/* 814259E8 | 7E 84 A3 78 */	mr r4, r20
/* 814259EC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814259F0 | 38 B7 02 30 */	addi r5, r23, 0x230
/* 814259F4 | D0 17 00 B8 */	stfs f0, 0xb8(r23)
/* 814259F8 | C0 14 00 EC */	lfs f0, 0xec(r20)
/* 814259FC | D0 17 00 B4 */	stfs f0, 0xb4(r23)
/* 81425A00 | C0 14 00 E4 */	lfs f0, 0xe4(r20)
/* 81425A04 | D0 17 00 BC */	stfs f0, 0xbc(r23)
/* 81425A08 | C0 14 00 E8 */	lfs f0, 0xe8(r20)
/* 81425A0C | D0 17 00 C0 */	stfs f0, 0xc0(r23)
/* 81425A10 | 48 0F 94 55 */	bl fn_8151EE64
/* 81425A14 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81425A18 | 38 77 02 18 */	addi r3, r23, 0x218
/* 81425A1C | 38 97 01 30 */	addi r4, r23, 0x130
/* 81425A20 | 38 B7 02 30 */	addi r5, r23, 0x230
/* 81425A24 | D0 17 01 20 */	stfs f0, 0x120(r23)
/* 81425A28 | 38 D4 00 84 */	addi r6, r20, 0x84
/* 81425A2C | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81425A30 | D0 17 01 24 */	stfs f0, 0x124(r23)
/* 81425A34 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81425A38 | D0 17 01 28 */	stfs f0, 0x128(r23)
/* 81425A3C | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81425A40 | D0 17 01 2C */	stfs f0, 0x12c(r23)
/* 81425A44 | 81 97 02 18 */	lwz r12, 0x218(r23)
/* 81425A48 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81425A4C | 7D 89 03 A6 */	mtctr r12
/* 81425A50 | 4E 80 04 21 */	bctrl
/* 81425A54 | 7E 84 A3 78 */	mr r4, r20
/* 81425A58 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81425A5C | 38 A0 00 00 */	li r5, 0x0
/* 81425A60 | 4B F3 4A 61 */	bl GetTextColor__Q34nw4r3lyt7TextBoxCFUl
/* 81425A64 | 88 81 00 08 */	lbz r4, 0x8(r1)
/* 81425A68 | 38 ED AC C4 */	li r7, lbl_81698D04@sda21
/* 81425A6C | 89 01 00 09 */	lbz r8, 0x9(r1)
/* 81425A70 | 38 77 02 18 */	addi r3, r23, 0x218
/* 81425A74 | 88 C1 00 0A */	lbz r6, 0xa(r1)
/* 81425A78 | 38 A0 00 01 */	li r5, 0x1
/* 81425A7C | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 81425A80 | 98 8D AC C4 */	stb r4, lbl_81698D04@sda21(r0)
/* 81425A84 | 38 8D 93 78 */	li r4, lbl_816973B8@sda21
/* 81425A88 | 99 07 00 01 */	stb r8, 0x1(r7)
/* 81425A8C | 98 C7 00 02 */	stb r6, 0x2(r7)
/* 81425A90 | 98 07 00 03 */	stb r0, 0x3(r7)
/* 81425A94 | 81 97 02 18 */	lwz r12, 0x218(r23)
/* 81425A98 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81425A9C | 7D 89 03 A6 */	mtctr r12
/* 81425AA0 | 4E 80 04 21 */	bctrl
/* 81425AA4 | 80 77 02 28 */	lwz r3, 0x228(r23)
/* 81425AA8 | 38 80 00 00 */	li r4, 0x0
/* 81425AAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425AB0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81425AB4 | 7D 89 03 A6 */	mtctr r12
/* 81425AB8 | 4E 80 04 21 */	bctrl
/* 81425ABC | 80 77 02 28 */	lwz r3, 0x228(r23)
/* 81425AC0 | 38 80 00 01 */	li r4, 0x1
/* 81425AC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425AC8 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81425ACC | 7D 89 03 A6 */	mtctr r12
/* 81425AD0 | 4E 80 04 21 */	bctrl
/* 81425AD4 | 80 77 02 1C */	lwz r3, 0x21c(r23)
/* 81425AD8 | 38 A0 00 01 */	li r5, 0x1
/* 81425ADC | 80 97 02 C4 */	lwz r4, 0x2c4(r23)
/* 81425AE0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81425AE4 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81425AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425AEC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81425AF0 | 7D 89 03 A6 */	mtctr r12
/* 81425AF4 | 4E 80 04 21 */	bctrl
/* 81425AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81425AFC | 7C 64 1B 78 */	mr r4, r3
/* 81425B00 | 40 82 00 58 */	bne .L_81425B58
/* 81425B04 | 81 97 02 18 */	lwz r12, 0x218(r23)
/* 81425B08 | 38 77 02 18 */	addi r3, r23, 0x218
/* 81425B0C | 80 97 02 C4 */	lwz r4, 0x2c4(r23)
/* 81425B10 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81425B14 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81425B18 | 7D 89 03 A6 */	mtctr r12
/* 81425B1C | 4E 80 04 21 */	bctrl
/* 81425B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81425B24 | 41 82 00 10 */	beq .L_81425B34
/* 81425B28 | 80 77 02 C4 */	lwz r3, 0x2c4(r23)
/* 81425B2C | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 81425B30 | 48 00 00 08 */	b .L_81425B38
.L_81425B34:
/* 81425B34 | 38 9E 03 C0 */	addi r4, r30, 0x3c0
.L_81425B38:
/* 81425B38 | 80 77 02 1C */	lwz r3, 0x21c(r23)
/* 81425B3C | 38 A0 00 01 */	li r5, 0x1
/* 81425B40 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81425B44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425B48 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81425B4C | 7D 89 03 A6 */	mtctr r12
/* 81425B50 | 4E 80 04 21 */	bctrl
/* 81425B54 | 7C 64 1B 78 */	mr r4, r3
.L_81425B58:
/* 81425B58 | 80 77 02 28 */	lwz r3, 0x228(r23)
/* 81425B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425B60 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81425B64 | 7D 89 03 A6 */	mtctr r12
/* 81425B68 | 4E 80 04 21 */	bctrl
/* 81425B6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425B70 | 38 80 00 01 */	li r4, 0x1
/* 81425B74 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81425B78 | 7D 89 03 A6 */	mtctr r12
/* 81425B7C | 4E 80 04 21 */	bctrl
/* 81425B80 | 3F E0 81 66 */	lis r31, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 81425B84 | 3E A0 81 66 */	lis r21, __vt__Q39textinput9inputform19NormalButtonAnmPane@ha
/* 81425B88 | 3B DE 00 20 */	addi r30, r30, 0x20
/* 81425B8C | 3B 80 00 00 */	li r28, 0x0
/* 81425B90 | 3B FF F8 C8 */	addi r31, r31, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 81425B94 | 3A B5 CC 78 */	addi r21, r21, __vt__Q39textinput9inputform19NormalButtonAnmPane@l
/* 81425B98 | 3A 80 00 00 */	li r20, 0x0
.L_81425B9C:
/* 81425B9C | 57 80 32 B2 */	clrlslwi r0, r28, 16, 6
/* 81425BA0 | 3B 40 00 00 */	li r26, 0x0
/* 81425BA4 | 7F 7E 02 14 */	add r27, r30, r0
/* 81425BA8 | 7C 1E 00 2E */	lwzx r0, r30, r0
/* 81425BAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81425BB0 | 41 82 00 08 */	beq .L_81425BB8
/* 81425BB4 | 48 00 00 5C */	b .L_81425C10
.L_81425BB8:
/* 81425BB8 | 7F 03 C3 78 */	mr r3, r24
/* 81425BBC | 38 80 00 34 */	li r4, 0x34
/* 81425BC0 | 48 13 5A A9 */	bl fn_8155B668
/* 81425BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81425BC8 | 7C 7A 1B 78 */	mr r26, r3
/* 81425BCC | 41 82 00 44 */	beq .L_81425C10
/* 81425BD0 | 81 97 02 18 */	lwz r12, 0x218(r23)
/* 81425BD4 | 38 77 02 18 */	addi r3, r23, 0x218
/* 81425BD8 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 81425BDC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81425BE0 | 7D 89 03 A6 */	mtctr r12
/* 81425BE4 | 4E 80 04 21 */	bctrl
/* 81425BE8 | 93 FA 00 00 */	stw r31, 0x0(r26)
/* 81425BEC | 38 80 00 10 */	li r4, 0x10
/* 81425BF0 | 90 7A 00 04 */	stw r3, 0x4(r26)
/* 81425BF4 | 38 7A 00 08 */	addi r3, r26, 0x8
/* 81425BF8 | 92 9A 00 14 */	stw r20, 0x14(r26)
/* 81425BFC | 92 9A 00 18 */	stw r20, 0x18(r26)
/* 81425C00 | 48 0E C4 5D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81425C04 | 92 9A 00 2C */	stw r20, 0x2c(r26)
/* 81425C08 | 92 BA 00 00 */	stw r21, 0x0(r26)
/* 81425C0C | 92 9A 00 30 */	stw r20, 0x30(r26)
.L_81425C10:
/* 81425C10 | 7F 44 D3 78 */	mr r4, r26
/* 81425C14 | 38 77 02 84 */	addi r3, r23, 0x284
/* 81425C18 | 48 0E C4 5D */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81425C1C | 83 BB 00 0C */	lwz r29, 0xc(r27)
/* 81425C20 | 3B 20 00 00 */	li r25, 0x0
/* 81425C24 | 82 DB 00 08 */	lwz r22, 0x8(r27)
/* 81425C28 | 48 00 00 B0 */	b .L_81425CD8
.L_81425C2C:
/* 81425C2C | 80 77 02 24 */	lwz r3, 0x224(r23)
/* 81425C30 | 57 20 13 BA */	clrlslwi r0, r25, 16, 2
/* 81425C34 | 7E 7B 02 14 */	add r19, r27, r0
/* 81425C38 | 38 80 00 00 */	li r4, 0x0
/* 81425C3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425C40 | 38 C0 00 00 */	li r6, 0x0
/* 81425C44 | 80 B3 00 10 */	lwz r5, 0x10(r19)
/* 81425C48 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81425C4C | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81425C50 | 7D 89 03 A6 */	mtctr r12
/* 81425C54 | 4E 80 04 21 */	bctrl
/* 81425C58 | 81 97 02 18 */	lwz r12, 0x218(r23)
/* 81425C5C | 7C 72 1B 78 */	mr r18, r3
/* 81425C60 | 38 77 02 18 */	addi r3, r23, 0x218
/* 81425C64 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81425C68 | 7D 89 03 A6 */	mtctr r12
/* 81425C6C | 4E 80 04 21 */	bctrl
/* 81425C70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425C74 | 7E 44 93 78 */	mr r4, r18
/* 81425C78 | 80 B7 02 24 */	lwz r5, 0x224(r23)
/* 81425C7C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81425C80 | 7D 89 03 A6 */	mtctr r12
/* 81425C84 | 4E 80 04 21 */	bctrl
/* 81425C88 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81425C8C | 7C 66 1B 78 */	mr r6, r3
/* 81425C90 | 40 82 00 24 */	bne .L_81425CB4
/* 81425C94 | 80 B3 00 10 */	lwz r5, 0x10(r19)
/* 81425C98 | 7F 43 D3 78 */	mr r3, r26
/* 81425C9C | 7F 04 C3 78 */	mr r4, r24
/* 81425CA0 | 38 E0 00 00 */	li r7, 0x0
/* 81425CA4 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81425CA8 | 39 00 00 01 */	li r8, 0x1
/* 81425CAC | 48 01 12 B5 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 81425CB0 | 48 00 00 24 */	b .L_81425CD4
.L_81425CB4:
/* 81425CB4 | 80 B3 00 10 */	lwz r5, 0x10(r19)
/* 81425CB8 | 7F 43 D3 78 */	mr r3, r26
/* 81425CBC | 7F 04 C3 78 */	mr r4, r24
/* 81425CC0 | 7F A7 EB 78 */	mr r7, r29
/* 81425CC4 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81425CC8 | 39 00 00 00 */	li r8, 0x0
/* 81425CCC | 39 20 00 01 */	li r9, 0x1
/* 81425CD0 | 48 01 13 45 */	bl forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb
.L_81425CD4:
/* 81425CD4 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_81425CD8:
/* 81425CD8 | 57 20 04 3E */	clrlwi r0, r25, 16
/* 81425CDC | 7C 00 B0 40 */	cmplw r0, r22
/* 81425CE0 | 41 80 FF 4C */	blt .L_81425C2C
/* 81425CE4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81425CE8 | 28 1C 00 02 */	cmplwi r28, 0x2
/* 81425CEC | 41 80 FE B0 */	blt .L_81425B9C
/* 81425CF0 | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81425CF4 | 7E E3 BB 78 */	mr r3, r23
/* 81425CF8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81425CFC | 7D 89 03 A6 */	mtctr r12
/* 81425D00 | 4E 80 04 21 */	bctrl
/* 81425D04 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81425D08 | 48 1D 37 E1 */	bl _restgpr_18
/* 81425D0C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81425D10 | 7C 08 03 A6 */	mtlr r0
/* 81425D14 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81425D18 | 4E 80 00 20 */	blr
.endfn create__Q39textinput9inputform12LayoutByNW4RFP12MEMAllocatorPQ39textinput9inputform10EditBuffer

# .text:0xA1AC | 0x81425D1C | size: 0x58
# textinput::inputform::AnmPane::~AnmPane()
.fn __dt__Q39textinput9inputform7AnmPaneFv, global
/* 81425D1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81425D20 | 7C 08 02 A6 */	mflr r0
/* 81425D24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81425D28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81425D2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81425D30 | 7C 9F 23 78 */	mr r31, r4
/* 81425D34 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81425D38 | 7C 7E 1B 78 */	mr r30, r3
/* 81425D3C | 41 82 00 1C */	beq .L_81425D58
/* 81425D40 | 38 80 00 00 */	li r4, 0x0
/* 81425D44 | 48 01 11 DD */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 81425D48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81425D4C | 40 81 00 0C */	ble .L_81425D58
/* 81425D50 | 7F C3 F3 78 */	mr r3, r30
/* 81425D54 | 48 1D 23 91 */	bl __dl__FPv
.L_81425D58:
/* 81425D58 | 7F C3 F3 78 */	mr r3, r30
/* 81425D5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81425D60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81425D64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81425D68 | 7C 08 03 A6 */	mtlr r0
/* 81425D6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81425D70 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput9inputform7AnmPaneFv

# .text:0xA204 | 0x81425D74 | size: 0x25C
# textinput::inputform::LayoutByNW4R::init()
.fn init__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81425D74 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81425D78 | 7C 08 02 A6 */	mflr r0
/* 81425D7C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81425D80 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81425D84 | 7C 7F 1B 78 */	mr r31, r3
/* 81425D88 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81425D8C | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81425D90 | 4B FF 66 E1 */	bl init__Q39textinput9inputform4BaseFv
/* 81425D94 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81425D98 | 3C 80 81 66 */	lis r4, lbl_8165CC14@ha
/* 81425D9C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81425DA0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81425DA4 | 38 84 CC 14 */	addi r4, r4, lbl_8165CC14@l
/* 81425DA8 | 7D 89 03 A6 */	mtctr r12
/* 81425DAC | 4E 80 04 21 */	bctrl
/* 81425DB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425DB4 | 38 80 00 07 */	li r4, 0x7
/* 81425DB8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81425DBC | 7D 89 03 A6 */	mtctr r12
/* 81425DC0 | 4E 80 04 21 */	bctrl
/* 81425DC4 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81425DC8 | 3C 80 81 66 */	lis r4, lbl_8165CC28@ha
/* 81425DCC | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81425DD0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81425DD4 | 38 84 CC 28 */	addi r4, r4, lbl_8165CC28@l
/* 81425DD8 | 7D 89 03 A6 */	mtctr r12
/* 81425DDC | 4E 80 04 21 */	bctrl
/* 81425DE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425DE4 | 38 80 00 07 */	li r4, 0x7
/* 81425DE8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81425DEC | 7D 89 03 A6 */	mtctr r12
/* 81425DF0 | 4E 80 04 21 */	bctrl
/* 81425DF4 | 38 00 00 00 */	li r0, 0x0
/* 81425DF8 | 38 AD AC C4 */	li r5, lbl_81698D04@sda21
/* 81425DFC | 98 1F 02 CC */	stb r0, 0x2cc(r31)
/* 81425E00 | 7F E3 FB 78 */	mr r3, r31
/* 81425E04 | 38 80 00 00 */	li r4, 0x0
/* 81425E08 | 98 1F 02 CD */	stb r0, 0x2cd(r31)
/* 81425E0C | 90 1F 02 EC */	stw r0, 0x2ec(r31)
/* 81425E10 | 90 1F 02 F0 */	stw r0, 0x2f0(r31)
/* 81425E14 | 90 1F 02 F4 */	stw r0, 0x2f4(r31)
/* 81425E18 | 90 1F 02 F8 */	stw r0, 0x2f8(r31)
/* 81425E1C | 90 1F 03 04 */	stw r0, 0x304(r31)
/* 81425E20 | 88 0D AC C4 */	lbz r0, lbl_81698D04@sda21(r0)
/* 81425E24 | 98 1F 01 CC */	stb r0, 0x1cc(r31)
/* 81425E28 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 81425E2C | 98 1F 01 CD */	stb r0, 0x1cd(r31)
/* 81425E30 | 88 05 00 02 */	lbz r0, 0x2(r5)
/* 81425E34 | 98 1F 01 CE */	stb r0, 0x1ce(r31)
/* 81425E38 | 88 05 00 03 */	lbz r0, 0x3(r5)
/* 81425E3C | 98 1F 01 CF */	stb r0, 0x1cf(r31)
/* 81425E40 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81425E44 | 81 8C 02 3C */	lwz r12, 0x23c(r12)
/* 81425E48 | 7D 89 03 A6 */	mtctr r12
/* 81425E4C | 4E 80 04 21 */	bctrl
/* 81425E50 | 80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 81425E54 | 38 A0 00 01 */	li r5, 0x1
/* 81425E58 | 80 9F 02 C0 */	lwz r4, 0x2c0(r31)
/* 81425E5C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81425E60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425E64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81425E68 | 7D 89 03 A6 */	mtctr r12
/* 81425E6C | 4E 80 04 21 */	bctrl
/* 81425E70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425E74 | 7C 7E 1B 78 */	mr r30, r3
/* 81425E78 | 38 8D 93 74 */	li r4, lbl_816973B4@sda21
/* 81425E7C | 38 A0 00 00 */	li r5, 0x0
/* 81425E80 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81425E84 | 7D 89 03 A6 */	mtctr r12
/* 81425E88 | 4E 80 04 21 */	bctrl
/* 81425E8C | C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 81425E90 | 7F C4 F3 78 */	mr r4, r30
/* 81425E94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81425E98 | 38 BF 02 30 */	addi r5, r31, 0x230
/* 81425E9C | D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 81425EA0 | C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 81425EA4 | D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 81425EA8 | C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 81425EAC | D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 81425EB0 | C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 81425EB4 | D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 81425EB8 | 48 0F 8F AD */	bl fn_8151EE64
/* 81425EBC | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 81425EC0 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81425EC4 | 38 9F 01 30 */	addi r4, r31, 0x130
/* 81425EC8 | 38 BF 02 30 */	addi r5, r31, 0x230
/* 81425ECC | D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 81425ED0 | 38 DE 00 84 */	addi r6, r30, 0x84
/* 81425ED4 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 81425ED8 | D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 81425EDC | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81425EE0 | D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 81425EE4 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81425EE8 | D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 81425EEC | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81425EF0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81425EF4 | 7D 89 03 A6 */	mtctr r12
/* 81425EF8 | 4E 80 04 21 */	bctrl
/* 81425EFC | 80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 81425F00 | 38 80 00 00 */	li r4, 0x0
/* 81425F04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425F08 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81425F0C | 7D 89 03 A6 */	mtctr r12
/* 81425F10 | 4E 80 04 21 */	bctrl
/* 81425F14 | 80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 81425F18 | 38 9F 02 30 */	addi r4, r31, 0x230
/* 81425F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81425F20 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81425F24 | 7D 89 03 A6 */	mtctr r12
/* 81425F28 | 4E 80 04 21 */	bctrl
/* 81425F2C | 80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 81425F30 | 3B A0 00 00 */	li r29, 0x0
/* 81425F34 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81425F38 | 48 00 00 2C */	b .L_81425F64
.L_81425F3C:
/* 81425F3C | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81425F40 | 57 A0 13 BA */	clrlslwi r0, r29, 16, 2
/* 81425F44 | 7C 9E 02 14 */	add r4, r30, r0
/* 81425F48 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81425F4C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81425F50 | 38 A0 00 01 */	li r5, 0x1
/* 81425F54 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81425F58 | 7D 89 03 A6 */	mtctr r12
/* 81425F5C | 4E 80 04 21 */	bctrl
/* 81425F60 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81425F64:
/* 81425F64 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81425F68 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81425F6C | 7C 03 00 40 */	cmplw r3, r0
/* 81425F70 | 41 80 FF CC */	blt .L_81425F3C
/* 81425F74 | 3B A0 00 00 */	li r29, 0x0
/* 81425F78 | 48 00 00 2C */	b .L_81425FA4
.L_81425F7C:
/* 81425F7C | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81425F80 | 57 A0 13 BA */	clrlslwi r0, r29, 16, 2
/* 81425F84 | 7C 9E 02 14 */	add r4, r30, r0
/* 81425F88 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81425F8C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81425F90 | 38 A0 00 00 */	li r5, 0x0
/* 81425F94 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 81425F98 | 7D 89 03 A6 */	mtctr r12
/* 81425F9C | 4E 80 04 21 */	bctrl
/* 81425FA0 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81425FA4:
/* 81425FA4 | A0 1E 00 02 */	lhz r0, 0x2(r30)
/* 81425FA8 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81425FAC | 7C 03 00 40 */	cmplw r3, r0
/* 81425FB0 | 41 80 FF CC */	blt .L_81425F7C
/* 81425FB4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81425FB8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81425FBC | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81425FC0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81425FC4 | 7C 08 03 A6 */	mtlr r0
/* 81425FC8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81425FCC | 4E 80 00 20 */	blr
.endfn init__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xA460 | 0x81425FD0 | size: 0x8
# textinput::inputform::LayoutByNW4R::visibleSeparator(bool)
.fn visibleSeparator__Q39textinput9inputform12LayoutByNW4RFb, global
/* 81425FD0 | 98 83 02 CE */	stb r4, 0x2ce(r3)
/* 81425FD4 | 4E 80 00 20 */	blr
.endfn visibleSeparator__Q39textinput9inputform12LayoutByNW4RFb

# .text:0xA468 | 0x81425FD8 | size: 0x1C8
# textinput::inputform::LayoutByNW4R::draw()
.fn draw__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81425FD8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81425FDC | 7C 08 02 A6 */	mflr r0
/* 81425FE0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81425FE4 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81425FE8 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81425FEC | 7C 7E 1B 78 */	mr r30, r3
/* 81425FF0 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81425FF4 | 48 01 04 DD */	bl draw__Q39textinput11nw4rmanager6LayoutFv
/* 81425FF8 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81425FFC | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81426000 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81426004 | 7D 89 03 A6 */	mtctr r12
/* 81426008 | 4E 80 04 21 */	bctrl
/* 8142600C | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81426010 | 38 A0 00 01 */	li r5, 0x1
/* 81426014 | 80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 81426018 | 88 04 00 CD */	lbz r0, 0xcd(r4)
/* 8142601C | 80 9E 02 C0 */	lwz r4, 0x2c0(r30)
/* 81426020 | 98 1E 01 C8 */	stb r0, 0x1c8(r30)
/* 81426024 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81426028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142602C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81426030 | 7D 89 03 A6 */	mtctr r12
/* 81426034 | 4E 80 04 21 */	bctrl
/* 81426038 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 8142603C | 7C 66 1B 78 */	mr r6, r3
/* 81426040 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81426044 | 38 9E 01 30 */	addi r4, r30, 0x130
/* 81426048 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8142604C | 38 BE 02 30 */	addi r5, r30, 0x230
/* 81426050 | 38 C6 00 84 */	addi r6, r6, 0x84
/* 81426054 | 7D 89 03 A6 */	mtctr r12
/* 81426058 | 4E 80 04 21 */	bctrl
/* 8142605C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81426060 | 7F C3 F3 78 */	mr r3, r30
/* 81426064 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81426068 | 7D 89 03 A6 */	mtctr r12
/* 8142606C | 4E 80 04 21 */	bctrl
/* 81426070 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81426074 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81426078 | C0 5E 01 88 */	lfs f2, 0x188(r30)
/* 8142607C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81426080 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81426084 | 48 0F 20 75 */	bl fn_815180F8
/* 81426088 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142608C | 7F C3 F3 78 */	mr r3, r30
/* 81426090 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81426094 | 7D 89 03 A6 */	mtctr r12
/* 81426098 | 4E 80 04 21 */	bctrl
/* 8142609C | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 814260A0 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 814260A4 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 814260A8 | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 814260AC | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 814260B0 | D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 814260B4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814260B8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814260BC | 7F C3 F3 78 */	mr r3, r30
/* 814260C0 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 814260C4 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 814260C8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814260CC | 7D 89 03 A6 */	mtctr r12
/* 814260D0 | 4E 80 04 21 */	bctrl
/* 814260D4 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 814260D8 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 814260DC | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814260E0 | C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 814260E4 | C0 81 00 14 */	lfs f4, 0x14(r1)
/* 814260E8 | D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 814260EC | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 814260F0 | D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 814260F4 | C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 814260F8 | C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 814260FC | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81426100 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81426104 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81426108 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 8142610C | EC 25 08 2A */	fadds f1, f5, f1
/* 81426110 | D0 21 00 38 */	stfs f1, 0x38(r1)
/* 81426114 | C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 81426118 | C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 8142611C | EC 22 08 28 */	fsubs f1, f2, f1
/* 81426120 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81426124 | EC 04 00 2A */	fadds f0, f4, f0
/* 81426128 | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8142612C | 80 7E 01 64 */	lwz r3, 0x164(r30)
/* 81426130 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426134 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81426138 | 7D 89 03 A6 */	mtctr r12
/* 8142613C | 4E 80 04 21 */	bctrl
/* 81426140 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81426144 | 7C 7F 1B 78 */	mr r31, r3
/* 81426148 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8142614C | 38 81 00 30 */	addi r4, r1, 0x30
/* 81426150 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81426154 | 7D 89 03 A6 */	mtctr r12
/* 81426158 | 4E 80 04 21 */	bctrl
/* 8142615C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81426160 | 7F C3 F3 78 */	mr r3, r30
/* 81426164 | 7F E4 FB 78 */	mr r4, r31
/* 81426168 | 81 8C 01 74 */	lwz r12, 0x174(r12)
/* 8142616C | 7D 89 03 A6 */	mtctr r12
/* 81426170 | 4E 80 04 21 */	bctrl
/* 81426174 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81426178 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8142617C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81426180 | 7D 89 03 A6 */	mtctr r12
/* 81426184 | 4E 80 04 21 */	bctrl
/* 81426188 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8142618C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81426190 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81426194 | 7C 08 03 A6 */	mtlr r0
/* 81426198 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8142619C | 4E 80 00 20 */	blr
.endfn draw__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xA630 | 0x814261A0 | size: 0x224
# textinput::inputform::LayoutByNW4R::calc()
.fn calc__Q39textinput9inputform12LayoutByNW4RFv, global
/* 814261A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814261A4 | 7C 08 02 A6 */	mflr r0
/* 814261A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814261AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814261B0 | 3F E0 81 66 */	lis r31, lbl_8165C820@ha
/* 814261B4 | 3B FF C8 20 */	addi r31, r31, lbl_8165C820@l
/* 814261B8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814261BC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814261C0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814261C4 | 7C 7C 1B 78 */	mr r28, r3
/* 814261C8 | 4B FF 8E A9 */	bl calc__Q39textinput9inputform4BaseFv
/* 814261CC | 38 7C 02 18 */	addi r3, r28, 0x218
/* 814261D0 | 48 01 05 B5 */	bl calc__Q39textinput11nw4rmanager6LayoutFv
/* 814261D4 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 814261D8 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 814261DC | 80 9C 02 C4 */	lwz r4, 0x2c4(r28)
/* 814261E0 | 3B C0 00 00 */	li r30, 0x0
/* 814261E4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814261E8 | 3B A0 00 00 */	li r29, 0x0
/* 814261EC | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814261F0 | 7D 89 03 A6 */	mtctr r12
/* 814261F4 | 4E 80 04 21 */	bctrl
/* 814261F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814261FC | 41 82 00 28 */	beq .L_81426224
/* 81426200 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81426204 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81426208 | 80 9C 02 C4 */	lwz r4, 0x2c4(r28)
/* 8142620C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81426210 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81426214 | 88 BC 02 CE */	lbz r5, 0x2ce(r28)
/* 81426218 | 7D 89 03 A6 */	mtctr r12
/* 8142621C | 4E 80 04 21 */	bctrl
/* 81426220 | 48 00 00 20 */	b .L_81426240
.L_81426224:
/* 81426224 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81426228 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 8142622C | 38 9F 04 18 */	addi r4, r31, 0x418
/* 81426230 | 88 BC 02 CE */	lbz r5, 0x2ce(r28)
/* 81426234 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81426238 | 7D 89 03 A6 */	mtctr r12
/* 8142623C | 4E 80 04 21 */	bctrl
.L_81426240:
/* 81426240 | 81 9C 01 8C */	lwz r12, 0x18c(r28)
/* 81426244 | 38 7C 01 8C */	addi r3, r28, 0x18c
/* 81426248 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142624C | 7D 89 03 A6 */	mtctr r12
/* 81426250 | 4E 80 04 21 */	bctrl
/* 81426254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426258 | 40 82 01 4C */	bne .L_814263A4
/* 8142625C | C0 22 89 28 */	lfs f1, lbl_81694D28@sda21(r0)
/* 81426260 | C0 1C 01 88 */	lfs f0, 0x188(r28)
/* 81426264 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81426268 | 40 81 00 08 */	ble .L_81426270
/* 8142626C | 3B C0 00 01 */	li r30, 0x1
.L_81426270:
/* 81426270 | C0 3C 00 C8 */	lfs f1, 0xc8(r28)
/* 81426274 | C0 1C 01 88 */	lfs f0, 0x188(r28)
/* 81426278 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142627C | 40 80 00 08 */	bge .L_81426284
/* 81426280 | 3B A0 00 01 */	li r29, 0x1
.L_81426284:
/* 81426284 | 88 1C 02 CC */	lbz r0, 0x2cc(r28)
/* 81426288 | 7C 00 F0 40 */	cmplw r0, r30
/* 8142628C | 41 82 00 88 */	beq .L_81426314
/* 81426290 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81426294 | 9B DC 02 CC */	stb r30, 0x2cc(r28)
/* 81426298 | 41 82 00 50 */	beq .L_814262E8
/* 8142629C | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 814262A0 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 814262A4 | 38 9F 03 F4 */	addi r4, r31, 0x3f4
/* 814262A8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814262AC | 7D 89 03 A6 */	mtctr r12
/* 814262B0 | 4E 80 04 21 */	bctrl
/* 814262B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814262B8 | 38 80 00 06 */	li r4, 0x6
/* 814262BC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814262C0 | 7D 89 03 A6 */	mtctr r12
/* 814262C4 | 4E 80 04 21 */	bctrl
/* 814262C8 | 80 7C 02 28 */	lwz r3, 0x228(r28)
/* 814262CC | 38 9F 03 F4 */	addi r4, r31, 0x3f4
/* 814262D0 | 48 02 0A F9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 814262D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814262D8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814262DC | 7D 89 03 A6 */	mtctr r12
/* 814262E0 | 4E 80 04 21 */	bctrl
/* 814262E4 | 48 00 00 30 */	b .L_81426314
.L_814262E8:
/* 814262E8 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 814262EC | 38 7C 02 18 */	addi r3, r28, 0x218
/* 814262F0 | 38 9F 03 F4 */	addi r4, r31, 0x3f4
/* 814262F4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814262F8 | 7D 89 03 A6 */	mtctr r12
/* 814262FC | 4E 80 04 21 */	bctrl
/* 81426300 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426304 | 38 80 00 07 */	li r4, 0x7
/* 81426308 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142630C | 7D 89 03 A6 */	mtctr r12
/* 81426310 | 4E 80 04 21 */	bctrl
.L_81426314:
/* 81426314 | 88 1C 02 CD */	lbz r0, 0x2cd(r28)
/* 81426318 | 7C 00 E8 40 */	cmplw r0, r29
/* 8142631C | 41 82 00 88 */	beq .L_814263A4
/* 81426320 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81426324 | 9B BC 02 CD */	stb r29, 0x2cd(r28)
/* 81426328 | 41 82 00 50 */	beq .L_81426378
/* 8142632C | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 81426330 | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81426334 | 38 9F 04 08 */	addi r4, r31, 0x408
/* 81426338 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142633C | 7D 89 03 A6 */	mtctr r12
/* 81426340 | 4E 80 04 21 */	bctrl
/* 81426344 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426348 | 38 80 00 06 */	li r4, 0x6
/* 8142634C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81426350 | 7D 89 03 A6 */	mtctr r12
/* 81426354 | 4E 80 04 21 */	bctrl
/* 81426358 | 80 7C 02 28 */	lwz r3, 0x228(r28)
/* 8142635C | 38 9F 04 08 */	addi r4, r31, 0x408
/* 81426360 | 48 02 0A 69 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81426364 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426368 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142636C | 7D 89 03 A6 */	mtctr r12
/* 81426370 | 4E 80 04 21 */	bctrl
/* 81426374 | 48 00 00 30 */	b .L_814263A4
.L_81426378:
/* 81426378 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 8142637C | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81426380 | 38 9F 04 08 */	addi r4, r31, 0x408
/* 81426384 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81426388 | 7D 89 03 A6 */	mtctr r12
/* 8142638C | 4E 80 04 21 */	bctrl
/* 81426390 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426394 | 38 80 00 07 */	li r4, 0x7
/* 81426398 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142639C | 7D 89 03 A6 */	mtctr r12
/* 814263A0 | 4E 80 04 21 */	bctrl
.L_814263A4:
/* 814263A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814263A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814263AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814263B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814263B4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814263B8 | 7C 08 03 A6 */	mtlr r0
/* 814263BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814263C0 | 4E 80 00 20 */	blr
.endfn calc__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xA854 | 0x814263C4 | size: 0xD8
# textinput::gui::GUIComponent::init()
.fn init__Q39textinput3gui12GUIComponentFv, global
/* 814263C4 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 814263C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814263CC | 4C 82 00 20 */	bnelr
/* 814263D0 | C0 02 89 28 */	lfs f0, lbl_81694D28@sda21(r0)
/* 814263D4 | 38 00 00 00 */	li r0, 0x0
/* 814263D8 | 98 03 00 05 */	stb r0, 0x5(r3)
/* 814263DC | D0 03 00 18 */	stfs f0, 0x18(r3)
/* 814263E0 | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 814263E4 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 814263E8 | 98 03 00 0D */	stb r0, 0xd(r3)
/* 814263EC | B0 03 00 80 */	sth r0, 0x80(r3)
/* 814263F0 | 98 03 00 06 */	stb r0, 0x6(r3)
/* 814263F4 | D0 03 00 24 */	stfs f0, 0x24(r3)
/* 814263F8 | D0 03 00 28 */	stfs f0, 0x28(r3)
/* 814263FC | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81426400 | 98 03 00 0E */	stb r0, 0xe(r3)
/* 81426404 | B0 03 00 82 */	sth r0, 0x82(r3)
/* 81426408 | 98 03 00 07 */	stb r0, 0x7(r3)
/* 8142640C | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 81426410 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81426414 | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 81426418 | 98 03 00 0F */	stb r0, 0xf(r3)
/* 8142641C | B0 03 00 84 */	sth r0, 0x84(r3)
/* 81426420 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 81426424 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 81426428 | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8142642C | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 81426430 | 98 03 00 10 */	stb r0, 0x10(r3)
/* 81426434 | B0 03 00 86 */	sth r0, 0x86(r3)
/* 81426438 | 98 03 00 09 */	stb r0, 0x9(r3)
/* 8142643C | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 81426440 | D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 81426444 | D0 03 00 50 */	stfs f0, 0x50(r3)
/* 81426448 | 98 03 00 11 */	stb r0, 0x11(r3)
/* 8142644C | B0 03 00 88 */	sth r0, 0x88(r3)
/* 81426450 | 98 03 00 0A */	stb r0, 0xa(r3)
/* 81426454 | D0 03 00 54 */	stfs f0, 0x54(r3)
/* 81426458 | D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8142645C | D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 81426460 | 98 03 00 12 */	stb r0, 0x12(r3)
/* 81426464 | B0 03 00 8A */	sth r0, 0x8a(r3)
/* 81426468 | 98 03 00 0B */	stb r0, 0xb(r3)
/* 8142646C | D0 03 00 60 */	stfs f0, 0x60(r3)
/* 81426470 | D0 03 00 64 */	stfs f0, 0x64(r3)
/* 81426474 | D0 03 00 68 */	stfs f0, 0x68(r3)
/* 81426478 | 98 03 00 13 */	stb r0, 0x13(r3)
/* 8142647C | B0 03 00 8C */	sth r0, 0x8c(r3)
/* 81426480 | 98 03 00 0C */	stb r0, 0xc(r3)
/* 81426484 | D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 81426488 | D0 03 00 70 */	stfs f0, 0x70(r3)
/* 8142648C | D0 03 00 74 */	stfs f0, 0x74(r3)
/* 81426490 | 98 03 00 14 */	stb r0, 0x14(r3)
/* 81426494 | B0 03 00 8E */	sth r0, 0x8e(r3)
/* 81426498 | 4E 80 00 20 */	blr
.endfn init__Q39textinput3gui12GUIComponentFv

# .text:0xA92C | 0x8142649C | size: 0x3B4
# textinput::inputform::LayoutByNW4R::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput9inputform12LayoutByNW4RFQ29textinput8Language, global
/* 8142649C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814264A0 | 7C 08 02 A6 */	mflr r0
/* 814264A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814264A8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814264AC | 7C 7F 1B 78 */	mr r31, r3
/* 814264B0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814264B4 | 3F C0 81 61 */	lis r30, csAninationFile__Q29textinput9inputform@ha
/* 814264B8 | 3B DE 4F E8 */	addi r30, r30, csAninationFile__Q29textinput9inputform@l
/* 814264BC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814264C0 | 7C 9D 23 78 */	mr r29, r4
/* 814264C4 | 4B FF 62 99 */	bl setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language
/* 814264C8 | 2C 1D 00 08 */	cmpwi r29, 0x8
/* 814264CC | 40 82 00 10 */	bne .L_814264DC
/* 814264D0 | 38 1E 02 B0 */	addi r0, r30, 0x2b0
/* 814264D4 | 90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 814264D8 | 48 00 00 20 */	b .L_814264F8
.L_814264DC:
/* 814264DC | 2C 1D 00 09 */	cmpwi r29, 0x9
/* 814264E0 | 40 82 00 10 */	bne .L_814264F0
/* 814264E4 | 38 1E 02 A0 */	addi r0, r30, 0x2a0
/* 814264E8 | 90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 814264EC | 48 00 00 0C */	b .L_814264F8
.L_814264F0:
/* 814264F0 | 38 1E 02 90 */	addi r0, r30, 0x290
/* 814264F4 | 90 1F 02 C4 */	stw r0, 0x2c4(r31)
.L_814264F8:
/* 814264F8 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 814264FC | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81426500 | 80 9F 02 C4 */	lwz r4, 0x2c4(r31)
/* 81426504 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81426508 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8142650C | 7D 89 03 A6 */	mtctr r12
/* 81426510 | 4E 80 04 21 */	bctrl
/* 81426514 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426518 | 41 82 00 10 */	beq .L_81426528
/* 8142651C | 80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 81426520 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81426524 | 48 00 00 0C */	b .L_81426530
.L_81426528:
/* 81426528 | 3C 60 81 66 */	lis r3, lbl_8165CBE0@ha
/* 8142652C | 38 63 CB E0 */	addi r3, r3, lbl_8165CBE0@l
.L_81426530:
/* 81426530 | 3F C0 81 66 */	lis r30, lbl_8165CBE0@ha
/* 81426534 | 90 7F 02 C0 */	stw r3, 0x2c0(r31)
/* 81426538 | 38 9E CB E0 */	addi r4, r30, lbl_8165CBE0@l
/* 8142653C | 48 1D BF 45 */	bl strcmp
/* 81426540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426544 | 41 82 00 20 */	beq .L_81426564
/* 81426548 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 8142654C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81426550 | 38 9E CB E0 */	addi r4, r30, lbl_8165CBE0@l
/* 81426554 | 38 A0 00 00 */	li r5, 0x0
/* 81426558 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142655C | 7D 89 03 A6 */	mtctr r12
/* 81426560 | 4E 80 04 21 */	bctrl
.L_81426564:
/* 81426564 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81426568 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 8142656C | 80 9F 02 C4 */	lwz r4, 0x2c4(r31)
/* 81426570 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81426574 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81426578 | 7D 89 03 A6 */	mtctr r12
/* 8142657C | 4E 80 04 21 */	bctrl
/* 81426580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426584 | 41 82 00 10 */	beq .L_81426594
/* 81426588 | 80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 8142658C | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 81426590 | 48 00 00 0C */	b .L_8142659C
.L_81426594:
/* 81426594 | 3C 80 81 66 */	lis r4, lbl_8165CBE0@ha
/* 81426598 | 38 84 CB E0 */	addi r4, r4, lbl_8165CBE0@l
.L_8142659C:
/* 8142659C | 80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 814265A0 | 38 A0 00 01 */	li r5, 0x1
/* 814265A4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814265A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814265AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814265B0 | 7D 89 03 A6 */	mtctr r12
/* 814265B4 | 4E 80 04 21 */	bctrl
/* 814265B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814265BC | 38 8D 93 74 */	li r4, lbl_816973B4@sda21
/* 814265C0 | 38 A0 00 00 */	li r5, 0x0
/* 814265C4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814265C8 | 7D 89 03 A6 */	mtctr r12
/* 814265CC | 4E 80 04 21 */	bctrl
/* 814265D0 | 80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 814265D4 | 3B C0 00 00 */	li r30, 0x0
/* 814265D8 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 814265DC | 48 00 00 2C */	b .L_81426608
.L_814265E0:
/* 814265E0 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 814265E4 | 57 C0 13 BA */	clrlslwi r0, r30, 16, 2
/* 814265E8 | 7C 9D 02 14 */	add r4, r29, r0
/* 814265EC | 38 7F 02 18 */	addi r3, r31, 0x218
/* 814265F0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814265F4 | 38 A0 00 01 */	li r5, 0x1
/* 814265F8 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814265FC | 7D 89 03 A6 */	mtctr r12
/* 81426600 | 4E 80 04 21 */	bctrl
/* 81426604 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81426608:
/* 81426608 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8142660C | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 81426610 | 7C 03 00 40 */	cmplw r3, r0
/* 81426614 | 41 80 FF CC */	blt .L_814265E0
/* 81426618 | 3B C0 00 00 */	li r30, 0x0
/* 8142661C | 48 00 00 2C */	b .L_81426648
.L_81426620:
/* 81426620 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81426624 | 57 C0 13 BA */	clrlslwi r0, r30, 16, 2
/* 81426628 | 7C 9D 02 14 */	add r4, r29, r0
/* 8142662C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81426630 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81426634 | 38 A0 00 00 */	li r5, 0x0
/* 81426638 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 8142663C | 7D 89 03 A6 */	mtctr r12
/* 81426640 | 4E 80 04 21 */	bctrl
/* 81426644 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81426648:
/* 81426648 | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 8142664C | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 81426650 | 7C 03 00 40 */	cmplw r3, r0
/* 81426654 | 41 80 FF CC */	blt .L_81426620
/* 81426658 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 8142665C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81426660 | 80 9F 02 C4 */	lwz r4, 0x2c4(r31)
/* 81426664 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81426668 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8142666C | 7D 89 03 A6 */	mtctr r12
/* 81426670 | 4E 80 04 21 */	bctrl
/* 81426674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426678 | 41 82 00 10 */	beq .L_81426688
/* 8142667C | 80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 81426680 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 81426684 | 48 00 00 0C */	b .L_81426690
.L_81426688:
/* 81426688 | 3C 80 81 66 */	lis r4, lbl_8165CBE0@ha
/* 8142668C | 38 84 CB E0 */	addi r4, r4, lbl_8165CBE0@l
.L_81426690:
/* 81426690 | 80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 81426694 | 38 A0 00 01 */	li r5, 0x1
/* 81426698 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8142669C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814266A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814266A4 | 7D 89 03 A6 */	mtctr r12
/* 814266A8 | 4E 80 04 21 */	bctrl
/* 814266AC | 7C 64 1B 78 */	mr r4, r3
/* 814266B0 | 80 7F 02 28 */	lwz r3, 0x228(r31)
/* 814266B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814266B8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814266BC | 7D 89 03 A6 */	mtctr r12
/* 814266C0 | 4E 80 04 21 */	bctrl
/* 814266C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814266C8 | 38 80 00 01 */	li r4, 0x1
/* 814266CC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814266D0 | 7D 89 03 A6 */	mtctr r12
/* 814266D4 | 4E 80 04 21 */	bctrl
/* 814266D8 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 814266DC | 3F C0 81 66 */	lis r30, lbl_8165CC4C@ha
/* 814266E0 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 814266E4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814266E8 | 38 9E CC 4C */	addi r4, r30, lbl_8165CC4C@l
/* 814266EC | 7D 89 03 A6 */	mtctr r12
/* 814266F0 | 4E 80 04 21 */	bctrl
/* 814266F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814266F8 | 41 82 01 3C */	beq .L_81426834
/* 814266FC | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81426700 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81426704 | 38 9E CC 4C */	addi r4, r30, lbl_8165CC4C@l
/* 81426708 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142670C | 7D 89 03 A6 */	mtctr r12
/* 81426710 | 4E 80 04 21 */	bctrl
/* 81426714 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426718 | 7C 7E 1B 78 */	mr r30, r3
/* 8142671C | 3B AD AF 78 */	li r29, lbl_81698FB8@sda21
/* 81426720 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81426724 | 7D 89 03 A6 */	mtctr r12
/* 81426728 | 4E 80 04 21 */	bctrl
/* 8142672C | 48 00 00 18 */	b .L_81426744
.L_81426730:
/* 81426730 | 7C 03 E8 40 */	cmplw r3, r29
/* 81426734 | 40 82 00 0C */	bne .L_81426740
/* 81426738 | 38 00 00 01 */	li r0, 0x1
/* 8142673C | 48 00 00 14 */	b .L_81426750
.L_81426740:
/* 81426740 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81426744:
/* 81426744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426748 | 40 82 FF E8 */	bne .L_81426730
/* 8142674C | 38 00 00 00 */	li r0, 0x0
.L_81426750:
/* 81426750 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81426754 | 41 82 00 08 */	beq .L_8142675C
/* 81426758 | 48 00 00 08 */	b .L_81426760
.L_8142675C:
/* 8142675C | 3B C0 00 00 */	li r30, 0x0
.L_81426760:
/* 81426760 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81426764 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81426768 | 80 9F 02 C4 */	lwz r4, 0x2c4(r31)
/* 8142676C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81426770 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 81426774 | 7D 89 03 A6 */	mtctr r12
/* 81426778 | 4E 80 04 21 */	bctrl
/* 8142677C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426780 | 41 82 00 B4 */	beq .L_81426834
/* 81426784 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81426788 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 8142678C | 80 9F 02 C4 */	lwz r4, 0x2c4(r31)
/* 81426790 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81426794 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 81426798 | 7D 89 03 A6 */	mtctr r12
/* 8142679C | 4E 80 04 21 */	bctrl
/* 814267A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814267A4 | 7C 7D 1B 78 */	mr r29, r3
/* 814267A8 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 814267AC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814267B0 | 7D 89 03 A6 */	mtctr r12
/* 814267B4 | 4E 80 04 21 */	bctrl
/* 814267B8 | 48 00 00 18 */	b .L_814267D0
.L_814267BC:
/* 814267BC | 7C 03 F8 40 */	cmplw r3, r31
/* 814267C0 | 40 82 00 0C */	bne .L_814267CC
/* 814267C4 | 38 00 00 01 */	li r0, 0x1
/* 814267C8 | 48 00 00 14 */	b .L_814267DC
.L_814267CC:
/* 814267CC | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814267D0:
/* 814267D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814267D4 | 40 82 FF E8 */	bne .L_814267BC
/* 814267D8 | 38 00 00 00 */	li r0, 0x0
.L_814267DC:
/* 814267DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814267E0 | 41 82 00 08 */	beq .L_814267E8
/* 814267E4 | 48 00 00 08 */	b .L_814267EC
.L_814267E8:
/* 814267E8 | 3B A0 00 00 */	li r29, 0x0
.L_814267EC:
/* 814267EC | C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 814267F0 | D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 814267F4 | C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 814267F8 | D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 814267FC | C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 81426800 | D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 81426804 | C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 81426808 | D0 1E 00 E8 */	stfs f0, 0xe8(r30)
/* 8142680C | C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 81426810 | D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 81426814 | C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 81426818 | D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8142681C | C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 81426820 | D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 81426824 | C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 81426828 | D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 8142682C | C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 81426830 | D0 1E 00 50 */	stfs f0, 0x50(r30)
.L_81426834:
/* 81426834 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81426838 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142683C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81426840 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81426844 | 7C 08 03 A6 */	mtlr r0
/* 81426848 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142684C | 4E 80 00 20 */	blr
.endfn setLanguage__Q39textinput9inputform12LayoutByNW4RFQ29textinput8Language

# .text:0xACE0 | 0x81426850 | size: 0x5C
# textinput::inputform::LayoutByNW4R::updateInputCommon(int, unsigned long, unsigned long, unsigned long, void*)
.fn updateInputCommon__Q39textinput9inputform12LayoutByNW4RFiUlUlUlPv, global
/* 81426850 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81426854 | 7C 08 02 A6 */	mflr r0
/* 81426858 | 7C A4 2B 78 */	mr r4, r5
/* 8142685C | 7C C5 33 78 */	mr r5, r6
/* 81426860 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81426864 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81426868 | 7C 7F 1B 78 */	mr r31, r3
/* 8142686C | 48 00 02 B1 */	bl updateRepeatInput__Q39textinput9inputform12LayoutByNW4RFUlUl
/* 81426870 | 80 1F 03 04 */	lwz r0, 0x304(r31)
/* 81426874 | 54 00 04 E7 */	rlwinm. r0, r0, 0, 19, 19
/* 81426878 | 41 82 00 20 */	beq .L_81426898
/* 8142687C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81426880 | 7F E3 FB 78 */	mr r3, r31
/* 81426884 | 38 80 00 01 */	li r4, 0x1
/* 81426888 | 38 A0 00 00 */	li r5, 0x0
/* 8142688C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81426890 | 7D 89 03 A6 */	mtctr r12
/* 81426894 | 4E 80 04 21 */	bctrl
.L_81426898:
/* 81426898 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142689C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814268A0 | 7C 08 03 A6 */	mtlr r0
/* 814268A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814268A8 | 4E 80 00 20 */	blr
.endfn updateInputCommon__Q39textinput9inputform12LayoutByNW4RFiUlUlUlPv

# .text:0xAD3C | 0x814268AC | size: 0x268
# textinput::inputform::LayoutByNW4R::updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv, global
/* 814268AC | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814268B0 | 7C 08 02 A6 */	mflr r0
/* 814268B4 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814268B8 | DB E1 00 60 */	stfd f31, 0x60(r1)
/* 814268BC | F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 814268C0 | DB C1 00 50 */	stfd f30, 0x50(r1)
/* 814268C4 | F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 814268C8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814268CC | 48 1D 2B ED */	bl _savegpr_25
/* 814268D0 | 83 E3 03 04 */	lwz r31, 0x304(r3)
/* 814268D4 | FF C0 08 90 */	fmr f30, f1
/* 814268D8 | FF E0 10 90 */	fmr f31, f2
/* 814268DC | 7C 79 1B 78 */	mr r25, r3
/* 814268E0 | 57 E0 07 FF */	clrlwi. r0, r31, 31
/* 814268E4 | 7C 9A 23 78 */	mr r26, r4
/* 814268E8 | 7C BB 2B 78 */	mr r27, r5
/* 814268EC | 7C DC 33 78 */	mr r28, r6
/* 814268F0 | 7C FD 3B 78 */	mr r29, r7
/* 814268F4 | 7D 1E 43 78 */	mr r30, r8
/* 814268F8 | 41 82 00 1C */	beq .L_81426914
/* 814268FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426900 | 38 80 00 08 */	li r4, 0x8
/* 81426904 | 38 A0 00 00 */	li r5, 0x0
/* 81426908 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142690C | 7D 89 03 A6 */	mtctr r12
/* 81426910 | 4E 80 04 21 */	bctrl
.L_81426914:
/* 81426914 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 81426918 | 41 82 00 20 */	beq .L_81426938
/* 8142691C | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426920 | 7F 23 CB 78 */	mr r3, r25
/* 81426924 | 38 80 00 09 */	li r4, 0x9
/* 81426928 | 38 A0 00 00 */	li r5, 0x0
/* 8142692C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81426930 | 7D 89 03 A6 */	mtctr r12
/* 81426934 | 4E 80 04 21 */	bctrl
.L_81426938:
/* 81426938 | 57 E0 07 39 */	rlwinm. r0, r31, 0, 28, 28
/* 8142693C | 41 82 00 20 */	beq .L_8142695C
/* 81426940 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426944 | 7F 23 CB 78 */	mr r3, r25
/* 81426948 | 38 80 00 0A */	li r4, 0xa
/* 8142694C | 38 A0 00 00 */	li r5, 0x0
/* 81426950 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81426954 | 7D 89 03 A6 */	mtctr r12
/* 81426958 | 4E 80 04 21 */	bctrl
.L_8142695C:
/* 8142695C | 57 E0 07 7B */	rlwinm. r0, r31, 0, 29, 29
/* 81426960 | 41 82 00 20 */	beq .L_81426980
/* 81426964 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426968 | 7F 23 CB 78 */	mr r3, r25
/* 8142696C | 38 80 00 0B */	li r4, 0xb
/* 81426970 | 38 A0 00 00 */	li r5, 0x0
/* 81426974 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81426978 | 7D 89 03 A6 */	mtctr r12
/* 8142697C | 4E 80 04 21 */	bctrl
.L_81426980:
/* 81426980 | FC 20 F0 90 */	fmr f1, f30
/* 81426984 | 7F 44 D3 78 */	mr r4, r26
/* 81426988 | FC 40 F8 90 */	fmr f2, f31
/* 8142698C | 7F 65 DB 78 */	mr r5, r27
/* 81426990 | 7F 86 E3 78 */	mr r6, r28
/* 81426994 | 7F A7 EB 78 */	mr r7, r29
/* 81426998 | 7F C8 F3 78 */	mr r8, r30
/* 8142699C | 38 79 02 18 */	addi r3, r25, 0x218
/* 814269A0 | 48 00 FE 61 */	bl updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
/* 814269A4 | 57 A0 05 29 */	rlwinm. r0, r29, 0, 20, 20
/* 814269A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814269AC | 41 82 00 3C */	beq .L_814269E8
/* 814269B0 | 80 79 01 64 */	lwz r3, 0x164(r25)
/* 814269B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814269B8 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 814269BC | 7D 89 03 A6 */	mtctr r12
/* 814269C0 | 4E 80 04 21 */	bctrl
/* 814269C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814269C8 | 41 82 00 20 */	beq .L_814269E8
/* 814269CC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 814269D0 | 7F 23 CB 78 */	mr r3, r25
/* 814269D4 | 38 80 00 0D */	li r4, 0xd
/* 814269D8 | 38 A0 00 00 */	li r5, 0x0
/* 814269DC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814269E0 | 7D 89 03 A6 */	mtctr r12
/* 814269E4 | 4E 80 04 21 */	bctrl
.L_814269E8:
/* 814269E8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814269EC | 40 82 00 FC */	bne .L_81426AE8
/* 814269F0 | 57 80 05 29 */	rlwinm. r0, r28, 0, 20, 20
/* 814269F4 | 41 82 00 F4 */	beq .L_81426AE8
/* 814269F8 | 80 79 01 64 */	lwz r3, 0x164(r25)
/* 814269FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426A00 | 81 8C 00 78 */	lwz r12, 0x78(r12)
/* 81426A04 | 7D 89 03 A6 */	mtctr r12
/* 81426A08 | 4E 80 04 21 */	bctrl
/* 81426A0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426A10 | 41 82 00 D8 */	beq .L_81426AE8
/* 81426A14 | D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 81426A18 | 7F 23 CB 78 */	mr r3, r25
/* 81426A1C | D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 81426A20 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426A24 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 81426A28 | 7D 89 03 A6 */	mtctr r12
/* 81426A2C | 4E 80 04 21 */	bctrl
/* 81426A30 | C0 39 01 24 */	lfs f1, 0x124(r25)
/* 81426A34 | FC 60 F8 50 */	fneg f3, f31
/* 81426A38 | C0 19 01 2C */	lfs f0, 0x12c(r25)
/* 81426A3C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81426A40 | EC 41 00 28 */	fsubs f2, f1, f0
/* 81426A44 | C0 22 89 3C */	lfs f1, lbl_81694D3C@sda21(r0)
/* 81426A48 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81426A4C | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81426A50 | EC 22 00 72 */	fmuls f1, f2, f1
/* 81426A54 | EC 01 00 2A */	fadds f0, f1, f0
/* 81426A58 | FC 03 00 40 */	fcmpo cr0, f3, f0
/* 81426A5C | 40 80 00 34 */	bge .L_81426A90
/* 81426A60 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426A64 | 7F 23 CB 78 */	mr r3, r25
/* 81426A68 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 81426A6C | 7D 89 03 A6 */	mtctr r12
/* 81426A70 | 4E 80 04 21 */	bctrl
/* 81426A74 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81426A78 | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 81426A7C | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81426A80 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81426A84 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81426A88 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 81426A8C | 48 00 00 40 */	b .L_81426ACC
.L_81426A90:
/* 81426A90 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426A94 | 7F 23 CB 78 */	mr r3, r25
/* 81426A98 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 81426A9C | 7D 89 03 A6 */	mtctr r12
/* 81426AA0 | 4E 80 04 21 */	bctrl
/* 81426AA4 | C0 39 01 24 */	lfs f1, 0x124(r25)
/* 81426AA8 | C0 19 01 2C */	lfs f0, 0x12c(r25)
/* 81426AAC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81426AB0 | EC 41 00 28 */	fsubs f2, f1, f0
/* 81426AB4 | C0 02 89 38 */	lfs f0, lbl_81694D38@sda21(r0)
/* 81426AB8 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81426ABC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81426AC0 | EC 22 08 2A */	fadds f1, f2, f1
/* 81426AC4 | EC 00 08 2A */	fadds f0, f0, f1
/* 81426AC8 | D0 01 00 24 */	stfs f0, 0x24(r1)
.L_81426ACC:
/* 81426ACC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81426AD0 | 7F 23 CB 78 */	mr r3, r25
/* 81426AD4 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81426AD8 | 38 80 00 10 */	li r4, 0x10
/* 81426ADC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81426AE0 | 7D 89 03 A6 */	mtctr r12
/* 81426AE4 | 4E 80 04 21 */	bctrl
.L_81426AE8:
/* 81426AE8 | 7F E3 FB 78 */	mr r3, r31
/* 81426AEC | E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 81426AF0 | CB E1 00 60 */	lfd f31, 0x60(r1)
/* 81426AF4 | E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 81426AF8 | CB C1 00 50 */	lfd f30, 0x50(r1)
/* 81426AFC | 39 61 00 50 */	addi r11, r1, 0x50
/* 81426B00 | 48 1D 2A 05 */	bl _restgpr_25
/* 81426B04 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81426B08 | 7C 08 03 A6 */	mtlr r0
/* 81426B0C | 38 21 00 70 */	addi r1, r1, 0x70
/* 81426B10 | 4E 80 00 20 */	blr
.endfn updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv

# .text:0xAFA4 | 0x81426B14 | size: 0x8
# textinput::inputform::LayoutByNW4R::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager, global
/* 81426B14 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81426B18 | 48 00 FC FC */	b updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
.endfn updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager

# .text:0xAFAC | 0x81426B1C | size: 0x11C
# textinput::inputform::LayoutByNW4R::updateRepeatInput(unsigned long, unsigned long)
.fn updateRepeatInput__Q39textinput9inputform12LayoutByNW4RFUlUl, global
/* 81426B1C | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 81426B20 | 90 83 03 04 */	stw r4, 0x304(r3)
/* 81426B24 | 41 82 00 28 */	beq .L_81426B4C
/* 81426B28 | 80 03 02 F4 */	lwz r0, 0x2f4(r3)
/* 81426B2C | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81426B30 | 90 03 02 F4 */	stw r0, 0x2f4(r3)
/* 81426B34 | 40 82 00 20 */	bne .L_81426B54
/* 81426B38 | 60 84 00 01 */	ori r4, r4, 0x1
/* 81426B3C | 38 00 00 09 */	li r0, 0x9
/* 81426B40 | 90 83 03 04 */	stw r4, 0x304(r3)
/* 81426B44 | 90 03 02 F4 */	stw r0, 0x2f4(r3)
/* 81426B48 | 48 00 00 0C */	b .L_81426B54
.L_81426B4C:
/* 81426B4C | 38 00 00 1E */	li r0, 0x1e
/* 81426B50 | 90 03 02 F4 */	stw r0, 0x2f4(r3)
.L_81426B54:
/* 81426B54 | 54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 81426B58 | 41 82 00 2C */	beq .L_81426B84
/* 81426B5C | 80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 81426B60 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81426B64 | 90 03 02 F8 */	stw r0, 0x2f8(r3)
/* 81426B68 | 40 82 00 24 */	bne .L_81426B8C
/* 81426B6C | 80 83 03 04 */	lwz r4, 0x304(r3)
/* 81426B70 | 38 00 00 09 */	li r0, 0x9
/* 81426B74 | 90 03 02 F8 */	stw r0, 0x2f8(r3)
/* 81426B78 | 60 80 00 02 */	ori r0, r4, 0x2
/* 81426B7C | 90 03 03 04 */	stw r0, 0x304(r3)
/* 81426B80 | 48 00 00 0C */	b .L_81426B8C
.L_81426B84:
/* 81426B84 | 38 00 00 1E */	li r0, 0x1e
/* 81426B88 | 90 03 02 F8 */	stw r0, 0x2f8(r3)
.L_81426B8C:
/* 81426B8C | 54 A0 07 39 */	rlwinm. r0, r5, 0, 28, 28
/* 81426B90 | 41 82 00 2C */	beq .L_81426BBC
/* 81426B94 | 80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 81426B98 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81426B9C | 90 03 02 EC */	stw r0, 0x2ec(r3)
/* 81426BA0 | 40 82 00 24 */	bne .L_81426BC4
/* 81426BA4 | 80 83 03 04 */	lwz r4, 0x304(r3)
/* 81426BA8 | 38 00 00 09 */	li r0, 0x9
/* 81426BAC | 90 03 02 EC */	stw r0, 0x2ec(r3)
/* 81426BB0 | 60 80 00 08 */	ori r0, r4, 0x8
/* 81426BB4 | 90 03 03 04 */	stw r0, 0x304(r3)
/* 81426BB8 | 48 00 00 0C */	b .L_81426BC4
.L_81426BBC:
/* 81426BBC | 38 00 00 1E */	li r0, 0x1e
/* 81426BC0 | 90 03 02 EC */	stw r0, 0x2ec(r3)
.L_81426BC4:
/* 81426BC4 | 54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 81426BC8 | 41 82 00 2C */	beq .L_81426BF4
/* 81426BCC | 80 03 02 F0 */	lwz r0, 0x2f0(r3)
/* 81426BD0 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81426BD4 | 90 03 02 F0 */	stw r0, 0x2f0(r3)
/* 81426BD8 | 40 82 00 24 */	bne .L_81426BFC
/* 81426BDC | 80 83 03 04 */	lwz r4, 0x304(r3)
/* 81426BE0 | 38 00 00 09 */	li r0, 0x9
/* 81426BE4 | 90 03 02 F0 */	stw r0, 0x2f0(r3)
/* 81426BE8 | 60 80 00 04 */	ori r0, r4, 0x4
/* 81426BEC | 90 03 03 04 */	stw r0, 0x304(r3)
/* 81426BF0 | 48 00 00 0C */	b .L_81426BFC
.L_81426BF4:
/* 81426BF4 | 38 00 00 1E */	li r0, 0x1e
/* 81426BF8 | 90 03 02 F0 */	stw r0, 0x2f0(r3)
.L_81426BFC:
/* 81426BFC | 54 A0 04 E7 */	rlwinm. r0, r5, 0, 19, 19
/* 81426C00 | 41 82 00 2C */	beq .L_81426C2C
/* 81426C04 | 80 03 02 FC */	lwz r0, 0x2fc(r3)
/* 81426C08 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81426C0C | 90 03 02 FC */	stw r0, 0x2fc(r3)
/* 81426C10 | 4C 82 00 20 */	bnelr
/* 81426C14 | 80 83 03 04 */	lwz r4, 0x304(r3)
/* 81426C18 | 38 00 00 09 */	li r0, 0x9
/* 81426C1C | 90 03 02 FC */	stw r0, 0x2fc(r3)
/* 81426C20 | 60 80 10 00 */	ori r0, r4, 0x1000
/* 81426C24 | 90 03 03 04 */	stw r0, 0x304(r3)
/* 81426C28 | 4E 80 00 20 */	blr
.L_81426C2C:
/* 81426C2C | 38 00 00 1E */	li r0, 0x1e
/* 81426C30 | 90 03 02 FC */	stw r0, 0x2fc(r3)
/* 81426C34 | 4E 80 00 20 */	blr
.endfn updateRepeatInput__Q39textinput9inputform12LayoutByNW4RFUlUl

# .text:0xB0C8 | 0x81426C38 | size: 0x48
# textinput::inputform::LayoutByNW4R::getScale() const
.fn getScale__Q39textinput9inputform12LayoutByNW4RCFv, global
/* 81426C38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81426C3C | 7C 08 02 A6 */	mflr r0
/* 81426C40 | 80 C3 02 1C */	lwz r6, 0x21c(r3)
/* 81426C44 | 38 A0 00 01 */	li r5, 0x1
/* 81426C48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81426C4C | 80 83 02 C0 */	lwz r4, 0x2c0(r3)
/* 81426C50 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81426C54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426C58 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81426C5C | 7D 89 03 A6 */	mtctr r12
/* 81426C60 | 4E 80 04 21 */	bctrl
/* 81426C64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81426C68 | 7C 64 1B 78 */	mr r4, r3
/* 81426C6C | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 81426C70 | 80 84 00 48 */	lwz r4, 0x48(r4)
/* 81426C74 | 7C 08 03 A6 */	mtlr r0
/* 81426C78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81426C7C | 4E 80 00 20 */	blr
.endfn getScale__Q39textinput9inputform12LayoutByNW4RCFv

# .text:0xB110 | 0x81426C80 | size: 0x3EC
# textinput::inputform::LayoutByNW4R::onCommand(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 81426C80 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81426C84 | 7C 08 02 A6 */	mflr r0
/* 81426C88 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81426C8C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81426C90 | 7C 7F 1B 78 */	mr r31, r3
/* 81426C94 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81426C98 | 7C BE 2B 78 */	mr r30, r5
/* 81426C9C | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81426CA0 | 7C 9D 23 78 */	mr r29, r4
/* 81426CA4 | 80 63 02 2C */	lwz r3, 0x22c(r3)
/* 81426CA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426CAC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81426CB0 | 7D 89 03 A6 */	mtctr r12
/* 81426CB4 | 4E 80 04 21 */	bctrl
/* 81426CB8 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81426CBC | 7F A4 EB 78 */	mr r4, r29
/* 81426CC0 | 7F C5 F3 78 */	mr r5, r30
/* 81426CC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426CC8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81426CCC | 7D 89 03 A6 */	mtctr r12
/* 81426CD0 | 4E 80 04 21 */	bctrl
/* 81426CD4 | 7F E3 FB 78 */	mr r3, r31
/* 81426CD8 | 7F A4 EB 78 */	mr r4, r29
/* 81426CDC | 7F C5 F3 78 */	mr r5, r30
/* 81426CE0 | 4B FF 5C F5 */	bl onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv
/* 81426CE4 | 2C 1D 00 1F */	cmpwi r29, 0x1f
/* 81426CE8 | 41 82 03 68 */	beq .L_81427050
/* 81426CEC | 80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 81426CF0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81426CF4 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81426CF8 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81426CFC | 40 82 00 A0 */	bne .L_81426D9C
/* 81426D00 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426D04 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81426D08 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 81426D0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426D10 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81426D14 | 7D 89 03 A6 */	mtctr r12
/* 81426D18 | 4E 80 04 21 */	bctrl
/* 81426D1C | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81426D20 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81426D24 | 7C 03 00 40 */	cmplw r3, r0
/* 81426D28 | 41 80 00 4C */	blt .L_81426D74
/* 81426D2C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426D30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426D34 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81426D38 | 7D 89 03 A6 */	mtctr r12
/* 81426D3C | 4E 80 04 21 */	bctrl
/* 81426D40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426D44 | 40 82 00 30 */	bne .L_81426D74
/* 81426D48 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426D4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426D50 | 81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 81426D54 | 7D 89 03 A6 */	mtctr r12
/* 81426D58 | 4E 80 04 21 */	bctrl
/* 81426D5C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81426D60 | 7F E3 FB 78 */	mr r3, r31
/* 81426D64 | 38 80 00 08 */	li r4, 0x8
/* 81426D68 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81426D6C | 7D 89 03 A6 */	mtctr r12
/* 81426D70 | 4E 80 04 21 */	bctrl
.L_81426D74:
/* 81426D74 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426D78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426D7C | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81426D80 | 7D 89 03 A6 */	mtctr r12
/* 81426D84 | 4E 80 04 21 */	bctrl
/* 81426D88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426D8C | 40 82 00 10 */	bne .L_81426D9C
/* 81426D90 | 80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 81426D94 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81426D98 | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_81426D9C:
/* 81426D9C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426DA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426DA4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81426DA8 | 7D 89 03 A6 */	mtctr r12
/* 81426DAC | 4E 80 04 21 */	bctrl
/* 81426DB0 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81426DB4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81426DB8 | 7C 00 18 40 */	cmplw r0, r3
/* 81426DBC | 40 80 00 64 */	bge .L_81426E20
/* 81426DC0 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426DC4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81426DC8 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81426DCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426DD0 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81426DD4 | 7D 89 03 A6 */	mtctr r12
/* 81426DD8 | 4E 80 04 21 */	bctrl
/* 81426DDC | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81426DE0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81426DE4 | 7C 00 18 40 */	cmplw r0, r3
/* 81426DE8 | 41 81 00 10 */	bgt .L_81426DF8
/* 81426DEC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81426DF0 | 7C 00 18 40 */	cmplw r0, r3
/* 81426DF4 | 40 81 00 2C */	ble .L_81426E20
.L_81426DF8:
/* 81426DF8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81426DFC | 7F E3 FB 78 */	mr r3, r31
/* 81426E00 | 38 80 00 08 */	li r4, 0x8
/* 81426E04 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81426E08 | 7D 89 03 A6 */	mtctr r12
/* 81426E0C | 4E 80 04 21 */	bctrl
/* 81426E10 | 7F E3 FB 78 */	mr r3, r31
/* 81426E14 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 81426E18 | 38 80 00 24 */	li r4, 0x24
/* 81426E1C | 4B FF 5B B9 */	bl onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv
.L_81426E20:
/* 81426E20 | 2C 1D 00 22 */	cmpwi r29, 0x22
/* 81426E24 | 41 82 00 20 */	beq .L_81426E44
/* 81426E28 | 40 80 00 10 */	bge .L_81426E38
/* 81426E2C | 2C 1D 00 20 */	cmpwi r29, 0x20
/* 81426E30 | 40 80 00 E0 */	bge .L_81426F10
/* 81426E34 | 48 00 00 10 */	b .L_81426E44
.L_81426E38:
/* 81426E38 | 2C 1D 00 24 */	cmpwi r29, 0x24
/* 81426E3C | 40 80 00 08 */	bge .L_81426E44
/* 81426E40 | 48 00 00 D0 */	b .L_81426F10
.L_81426E44:
/* 81426E44 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426E48 | 83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 81426E4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426E50 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81426E54 | 7D 89 03 A6 */	mtctr r12
/* 81426E58 | 4E 80 04 21 */	bctrl
/* 81426E5C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81426E60 | 7C 1E 00 40 */	cmplw r30, r0
/* 81426E64 | 40 80 00 AC */	bge .L_81426F10
/* 81426E68 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426E6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426E70 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81426E74 | 7D 89 03 A6 */	mtctr r12
/* 81426E78 | 4E 80 04 21 */	bctrl
/* 81426E7C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81426E80 | 7C 00 F0 40 */	cmplw r0, r30
/* 81426E84 | 40 81 00 18 */	ble .L_81426E9C
/* 81426E88 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426E8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426E90 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81426E94 | 7D 89 03 A6 */	mtctr r12
/* 81426E98 | 4E 80 04 21 */	bctrl
.L_81426E9C:
/* 81426E9C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426EA0 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 81426EA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426EA8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81426EAC | 7D 89 03 A6 */	mtctr r12
/* 81426EB0 | 4E 80 04 21 */	bctrl
/* 81426EB4 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81426EB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426EBC | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81426EC0 | 7D 89 03 A6 */	mtctr r12
/* 81426EC4 | 4E 80 04 21 */	bctrl
/* 81426EC8 | 2C 1D 00 06 */	cmpwi r29, 0x6
/* 81426ECC | 41 82 00 2C */	beq .L_81426EF8
/* 81426ED0 | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 81426ED4 | 41 82 00 24 */	beq .L_81426EF8
/* 81426ED8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81426EDC | 41 82 00 1C */	beq .L_81426EF8
/* 81426EE0 | 2C 1D 00 26 */	cmpwi r29, 0x26
/* 81426EE4 | 41 82 00 14 */	beq .L_81426EF8
/* 81426EE8 | 2C 1D 00 15 */	cmpwi r29, 0x15
/* 81426EEC | 41 82 00 0C */	beq .L_81426EF8
/* 81426EF0 | 2C 1D 00 07 */	cmpwi r29, 0x7
/* 81426EF4 | 40 82 00 1C */	bne .L_81426F10
.L_81426EF8:
/* 81426EF8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81426EFC | 7F E3 FB 78 */	mr r3, r31
/* 81426F00 | 38 80 00 08 */	li r4, 0x8
/* 81426F04 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81426F08 | 7D 89 03 A6 */	mtctr r12
/* 81426F0C | 4E 80 04 21 */	bctrl
.L_81426F10:
/* 81426F10 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426F14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426F18 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81426F1C | 7D 89 03 A6 */	mtctr r12
/* 81426F20 | 4E 80 04 21 */	bctrl
/* 81426F24 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81426F28 | 7C 65 1B 78 */	mr r5, r3
/* 81426F2C | 7F E3 FB 78 */	mr r3, r31
/* 81426F30 | 80 9F 01 BC */	lwz r4, 0x1bc(r31)
/* 81426F34 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 81426F38 | 7D 89 03 A6 */	mtctr r12
/* 81426F3C | 4E 80 04 21 */	bctrl
/* 81426F40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426F44 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81426F48 | 7C 7E 1B 78 */	mr r30, r3
/* 81426F4C | 41 82 01 04 */	beq .L_81427050
/* 81426F50 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426F54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426F58 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81426F5C | 7D 89 03 A6 */	mtctr r12
/* 81426F60 | 4E 80 04 21 */	bctrl
/* 81426F64 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81426F68 | 7C 00 F0 40 */	cmplw r0, r30
/* 81426F6C | 40 81 00 18 */	ble .L_81426F84
/* 81426F70 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426F74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426F78 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81426F7C | 7D 89 03 A6 */	mtctr r12
/* 81426F80 | 4E 80 04 21 */	bctrl
.L_81426F84:
/* 81426F84 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426F88 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 81426F8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426F90 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81426F94 | 7D 89 03 A6 */	mtctr r12
/* 81426F98 | 4E 80 04 21 */	bctrl
/* 81426F9C | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81426FA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426FA4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81426FA8 | 7D 89 03 A6 */	mtctr r12
/* 81426FAC | 4E 80 04 21 */	bctrl
/* 81426FB0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81426FB4 | 7F E3 FB 78 */	mr r3, r31
/* 81426FB8 | 38 80 00 08 */	li r4, 0x8
/* 81426FBC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81426FC0 | 7D 89 03 A6 */	mtctr r12
/* 81426FC4 | 4E 80 04 21 */	bctrl
/* 81426FC8 | 7F E3 FB 78 */	mr r3, r31
/* 81426FCC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81426FD0 | 38 80 00 24 */	li r4, 0x24
/* 81426FD4 | 4B FF 5A 01 */	bl onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv
/* 81426FD8 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81426FDC | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81426FE0 | 40 82 00 70 */	bne .L_81427050
/* 81426FE4 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81426FE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81426FEC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81426FF0 | 7D 89 03 A6 */	mtctr r12
/* 81426FF4 | 4E 80 04 21 */	bctrl
/* 81426FF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81426FFC | 40 82 00 54 */	bne .L_81427050
/* 81427000 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81427004 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427008 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8142700C | 7D 89 03 A6 */	mtctr r12
/* 81427010 | 4E 80 04 21 */	bctrl
/* 81427014 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81427018 | 7C 65 1B 78 */	mr r5, r3
/* 8142701C | 7F E3 FB 78 */	mr r3, r31
/* 81427020 | 80 9F 01 BC */	lwz r4, 0x1bc(r31)
/* 81427024 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 81427028 | 7D 89 03 A6 */	mtctr r12
/* 8142702C | 4E 80 04 21 */	bctrl
/* 81427030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427034 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81427038 | 41 82 00 18 */	beq .L_81427050
/* 8142703C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81427040 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427044 | 81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 81427048 | 7D 89 03 A6 */	mtctr r12
/* 8142704C | 4E 80 04 21 */	bctrl
.L_81427050:
/* 81427050 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81427054 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81427058 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8142705C | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81427060 | 7C 08 03 A6 */	mtlr r0
/* 81427064 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81427068 | 4E 80 00 20 */	blr
.endfn onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0xB4FC | 0x8142706C | size: 0x3B8
# textinput::inputform::Base::isOverRowLimit(unsigned long, const wchar_t*)
.fn isOverRowLimit__Q39textinput9inputform4BaseFUlPCw, global
/* 8142706C | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 81427070 | 7C 08 02 A6 */	mflr r0
/* 81427074 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 81427078 | DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8142707C | F3 E1 00 C8 */	psq_st f31, 0xc8(r1), 0, qr0
/* 81427080 | DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 81427084 | F3 C1 00 B8 */	psq_st f30, 0xb8(r1), 0, qr0
/* 81427088 | DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8142708C | F3 A1 00 A8 */	psq_st f29, 0xa8(r1), 0, qr0
/* 81427090 | DB 81 00 90 */	stfd f28, 0x90(r1)
/* 81427094 | F3 81 00 98 */	psq_st f28, 0x98(r1), 0, qr0
/* 81427098 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8142709C | 48 1D 24 15 */	bl _savegpr_23
/* 814270A0 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 814270A4 | 7C B8 2B 78 */	mr r24, r5
/* 814270A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814270AC | 7C 97 23 78 */	mr r23, r4
/* 814270B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814270B4 | 7F 1E C3 78 */	mr r30, r24
/* 814270B8 | 40 82 00 0C */	bne .L_814270C4
/* 814270BC | 38 60 00 00 */	li r3, 0x0
/* 814270C0 | 48 00 03 2C */	b .L_814273EC
.L_814270C4:
/* 814270C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814270C8 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 814270CC | 7D 89 03 A6 */	mtctr r12
/* 814270D0 | 4E 80 04 21 */	bctrl
/* 814270D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814270D8 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 814270DC | 7F E3 FB 78 */	mr r3, r31
/* 814270E0 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 814270E4 | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 814270E8 | C3 E1 00 38 */	lfs f31, 0x38(r1)
/* 814270EC | 7D 89 03 A6 */	mtctr r12
/* 814270F0 | 4E 80 04 21 */	bctrl
/* 814270F4 | 3B 20 00 00 */	li r25, 0x0
/* 814270F8 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 814270FC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81427100 | 3B A0 00 00 */	li r29, 0x0
/* 81427104 | 93 3F 01 B4 */	stw r25, 0x1b4(r31)
/* 81427108 | 3B 80 00 00 */	li r28, 0x0
/* 8142710C | 9B 2D 93 73 */	stb r25, lbl_816973B3@sda21(r0)
/* 81427110 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 81427114 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81427118 | 90 81 00 34 */	stw r4, 0x34(r1)
/* 8142711C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427120 | 90 81 00 44 */	stw r4, 0x44(r1)
/* 81427124 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81427128 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8142712C | 7D 89 03 A6 */	mtctr r12
/* 81427130 | 4E 80 04 21 */	bctrl
/* 81427134 | C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 81427138 | C3 A2 89 28 */	lfs f29, lbl_81694D28@sda21(r0)
.L_8142713C:
/* 8142713C | D3 A1 00 48 */	stfs f29, 0x48(r1)
/* 81427140 | 3B 60 00 00 */	li r27, 0x0
/* 81427144 | D3 A1 00 4C */	stfs f29, 0x4c(r1)
/* 81427148 | D3 A1 00 50 */	stfs f29, 0x50(r1)
/* 8142714C | D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 81427150 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81427154 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81427158 | 40 82 00 44 */	bne .L_8142719C
/* 8142715C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81427160 | 40 82 00 3C */	bne .L_8142719C
/* 81427164 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81427168 | 7C 00 C8 40 */	cmplw r0, r25
/* 8142716C | 40 82 00 30 */	bne .L_8142719C
/* 81427170 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81427174 | 3B 80 00 01 */	li r28, 0x1
/* 81427178 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142717C | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 81427180 | 7D 89 03 A6 */	mtctr r12
/* 81427184 | 4E 80 04 21 */	bctrl
/* 81427188 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8142718C | 7C 7A 1B 78 */	mr r26, r3
/* 81427190 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81427194 | 41 82 00 08 */	beq .L_8142719C
/* 81427198 | 3B 60 00 01 */	li r27, 0x1
.L_8142719C:
/* 8142719C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814271A0 | 40 82 00 14 */	bne .L_814271B4
/* 814271A4 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814271A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814271AC | 41 82 02 3C */	beq .L_814273E8
/* 814271B0 | 7F DA F3 78 */	mr r26, r30
.L_814271B4:
/* 814271B4 | A0 1A 00 00 */	lhz r0, 0x0(r26)
/* 814271B8 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 814271BC | 38 81 00 48 */	addi r4, r1, 0x48
/* 814271C0 | B0 01 00 58 */	sth r0, 0x58(r1)
/* 814271C4 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 814271C8 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 814271CC | 7D 89 03 A6 */	mtctr r12
/* 814271D0 | 4E 80 04 21 */	bctrl
/* 814271D4 | C0 21 00 50 */	lfs f1, 0x50(r1)
/* 814271D8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814271DC | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 814271E0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 814271E4 | EC 1E 00 32 */	fmuls f0, f30, f0
/* 814271E8 | EF 9F 00 2A */	fadds f28, f31, f0
/* 814271EC | 41 82 00 5C */	beq .L_81427248
/* 814271F0 | C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 814271F4 | C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 814271F8 | EC 01 00 28 */	fsubs f0, f1, f0
/* 814271FC | EC 1E 00 32 */	fmuls f0, f30, f0
/* 81427200 | FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 81427204 | 4C 41 13 82 */	cror eq, gt, eq
/* 81427208 | 40 82 00 38 */	bne .L_81427240
/* 8142720C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81427210 | 7F E3 FB 78 */	mr r3, r31
/* 81427214 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81427218 | 7D 89 03 A6 */	mtctr r12
/* 8142721C | 4E 80 04 21 */	bctrl
/* 81427220 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81427224 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81427228 | 7C 1D B8 40 */	cmplw r29, r23
/* 8142722C | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81427230 | C3 E1 00 28 */	lfs f31, 0x28(r1)
/* 81427234 | 41 80 FF 08 */	blt .L_8142713C
/* 81427238 | 7F 23 CB 78 */	mr r3, r25
/* 8142723C | 48 00 01 B0 */	b .L_814273EC
.L_81427240:
/* 81427240 | FF E0 E0 90 */	fmr f31, f28
/* 81427244 | 4B FF FE F8 */	b .L_8142713C
.L_81427248:
/* 81427248 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142724C | FC 20 F8 90 */	fmr f1, f31
/* 81427250 | 7F E3 FB 78 */	mr r3, r31
/* 81427254 | 7F 04 C3 78 */	mr r4, r24
/* 81427258 | 81 8C 01 70 */	lwz r12, 0x170(r12)
/* 8142725C | 7F 25 CB 78 */	mr r5, r25
/* 81427260 | 7D 89 03 A6 */	mtctr r12
/* 81427264 | 4E 80 04 21 */	bctrl
/* 81427268 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142726C | 41 82 00 B0 */	beq .L_8142731C
/* 81427270 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81427274 | 7C 1D B8 40 */	cmplw r29, r23
/* 81427278 | 41 80 00 80 */	blt .L_814272F8
/* 8142727C | C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 81427280 | 48 00 00 64 */	b .L_814272E4
.L_81427284:
/* 81427284 | C0 41 00 50 */	lfs f2, 0x50(r1)
/* 81427288 | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8142728C | C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 81427290 | EC 42 00 28 */	fsubs f2, f2, f0
/* 81427294 | C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 81427298 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8142729C | EC 3E 00 B2 */	fmuls f1, f30, f2
/* 814272A0 | EC 1E 00 32 */	fmuls f0, f30, f0
/* 814272A4 | EC 5F 08 2A */	fadds f2, f31, f1
/* 814272A8 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 814272AC | 4C 41 13 82 */	cror eq, gt, eq
/* 814272B0 | 40 82 00 0C */	bne .L_814272BC
/* 814272B4 | 7F 23 CB 78 */	mr r3, r25
/* 814272B8 | 48 00 01 34 */	b .L_814273EC
.L_814272BC:
/* 814272BC | A4 1E 00 02 */	lhzu r0, 0x2(r30)
/* 814272C0 | EF FF 08 2A */	fadds f31, f31, f1
/* 814272C4 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 814272C8 | 38 81 00 48 */	addi r4, r1, 0x48
/* 814272CC | B0 01 00 58 */	sth r0, 0x58(r1)
/* 814272D0 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 814272D4 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 814272D8 | 7D 89 03 A6 */	mtctr r12
/* 814272DC | 4E 80 04 21 */	bctrl
/* 814272E0 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814272E4:
/* 814272E4 | 80 7F 01 B4 */	lwz r3, 0x1b4(r31)
/* 814272E8 | 7C 19 18 40 */	cmplw r25, r3
/* 814272EC | 41 80 FF 98 */	blt .L_81427284
/* 814272F0 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814272F4 | 48 00 00 F8 */	b .L_814273EC
.L_814272F8:
/* 814272F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814272FC | 7F E3 FB 78 */	mr r3, r31
/* 81427300 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81427304 | 7D 89 03 A6 */	mtctr r12
/* 81427308 | 4E 80 04 21 */	bctrl
/* 8142730C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81427310 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81427314 | C3 E1 00 20 */	lfs f31, 0x20(r1)
/* 81427318 | 48 00 00 58 */	b .L_81427370
.L_8142731C:
/* 8142731C | C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 81427320 | C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 81427324 | C0 01 00 40 */	lfs f0, 0x40(r1)
/* 81427328 | EC 22 08 28 */	fsubs f1, f2, f1
/* 8142732C | EC 00 00 72 */	fmuls f0, f0, f1
/* 81427330 | FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 81427334 | 4C 41 13 82 */	cror eq, gt, eq
/* 81427338 | 40 82 00 38 */	bne .L_81427370
/* 8142733C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81427340 | 7F E3 FB 78 */	mr r3, r31
/* 81427344 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81427348 | 7D 89 03 A6 */	mtctr r12
/* 8142734C | 4E 80 04 21 */	bctrl
/* 81427350 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81427354 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81427358 | 7C 1D B8 40 */	cmplw r29, r23
/* 8142735C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81427360 | C3 E1 00 18 */	lfs f31, 0x18(r1)
/* 81427364 | 41 80 00 0C */	blt .L_81427370
/* 81427368 | 7F 23 CB 78 */	mr r3, r25
/* 8142736C | 48 00 00 80 */	b .L_814273EC
.L_81427370:
/* 81427370 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81427374 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81427378 | 40 82 00 4C */	bne .L_814273C4
/* 8142737C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81427380 | 7F E3 FB 78 */	mr r3, r31
/* 81427384 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81427388 | 7D 89 03 A6 */	mtctr r12
/* 8142738C | 4E 80 04 21 */	bctrl
/* 81427390 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81427394 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81427398 | 7C 1D B8 40 */	cmplw r29, r23
/* 8142739C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814273A0 | C3 E1 00 10 */	lfs f31, 0x10(r1)
/* 814273A4 | 41 80 00 0C */	blt .L_814273B0
/* 814273A8 | 7F 23 CB 78 */	mr r3, r25
/* 814273AC | 48 00 00 40 */	b .L_814273EC
.L_814273B0:
/* 814273B0 | A0 1E 00 02 */	lhz r0, 0x2(r30)
/* 814273B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814273B8 | 40 82 00 24 */	bne .L_814273DC
/* 814273BC | 38 60 00 00 */	li r3, 0x0
/* 814273C0 | 48 00 00 2C */	b .L_814273EC
.L_814273C4:
/* 814273C4 | C0 41 00 50 */	lfs f2, 0x50(r1)
/* 814273C8 | C0 21 00 48 */	lfs f1, 0x48(r1)
/* 814273CC | C0 01 00 40 */	lfs f0, 0x40(r1)
/* 814273D0 | EC 22 08 28 */	fsubs f1, f2, f1
/* 814273D4 | EC 00 00 72 */	fmuls f0, f0, f1
/* 814273D8 | EF FF 00 2A */	fadds f31, f31, f0
.L_814273DC:
/* 814273DC | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814273E0 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 814273E4 | 4B FF FD 58 */	b .L_8142713C
.L_814273E8:
/* 814273E8 | 38 60 00 00 */	li r3, 0x0
.L_814273EC:
/* 814273EC | E3 E1 00 C8 */	psq_l f31, 0xc8(r1), 0, qr0
/* 814273F0 | CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 814273F4 | E3 C1 00 B8 */	psq_l f30, 0xb8(r1), 0, qr0
/* 814273F8 | CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 814273FC | E3 A1 00 A8 */	psq_l f29, 0xa8(r1), 0, qr0
/* 81427400 | CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 81427404 | E3 81 00 98 */	psq_l f28, 0x98(r1), 0, qr0
/* 81427408 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8142740C | CB 81 00 90 */	lfd f28, 0x90(r1)
/* 81427410 | 48 1D 20 ED */	bl _restgpr_23
/* 81427414 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 81427418 | 7C 08 03 A6 */	mtlr r0
/* 8142741C | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 81427420 | 4E 80 00 20 */	blr
.endfn isOverRowLimit__Q39textinput9inputform4BaseFUlPCw

# .text:0xB8B4 | 0x81427424 | size: 0x14
# textinput::inputform::LayoutByNW4R::onSE(textinput::sound::SE)
.fn onSE__Q39textinput9inputform12LayoutByNW4RFQ39textinput5sound2SE, global
/* 81427424 | 80 63 02 2C */	lwz r3, 0x22c(r3)
/* 81427428 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142742C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427430 | 7D 89 03 A6 */	mtctr r12
/* 81427434 | 4E 80 04 20 */	bctr
.endfn onSE__Q39textinput9inputform12LayoutByNW4RFQ39textinput5sound2SE

# .text:0xB8C8 | 0x81427438 | size: 0x3C
# textinput::inputform::LayoutByNW4R::setRootPaneScaleFor16x9()
.fn setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81427438 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142743C | 7C 08 02 A6 */	mflr r0
/* 81427440 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81427444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81427448 | 7C 7F 1B 78 */	mr r31, r3
/* 8142744C | 38 63 02 18 */	addi r3, r3, 0x218
/* 81427450 | 48 00 F6 BD */	bl setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
/* 81427454 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 81427458 | 38 80 00 00 */	li r4, 0x0
/* 8142745C | 48 00 DC 1D */	bl setAspectRatio__Q39textinput10textdrawer4BaseFb
/* 81427460 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81427464 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81427468 | 7C 08 03 A6 */	mtlr r0
/* 8142746C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81427470 | 4E 80 00 20 */	blr
.endfn setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xB904 | 0x81427474 | size: 0x3C
# textinput::inputform::LayoutByNW4R::setRootPaneScaleFor4x3()
.fn setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81427474 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81427478 | 7C 08 02 A6 */	mflr r0
/* 8142747C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81427480 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81427484 | 7C 7F 1B 78 */	mr r31, r3
/* 81427488 | 38 63 02 18 */	addi r3, r3, 0x218
/* 8142748C | 48 00 F7 79 */	bl setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
/* 81427490 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 81427494 | 38 80 00 01 */	li r4, 0x1
/* 81427498 | 48 00 DB E1 */	bl setAspectRatio__Q39textinput10textdrawer4BaseFb
/* 8142749C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814274A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814274A4 | 7C 08 03 A6 */	mtlr r0
/* 814274A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814274AC | 4E 80 00 20 */	blr
.endfn setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xB940 | 0x814274B0 | size: 0x68C
# textinput::inputform::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q39textinput9inputform12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 814274B0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814274B4 | 7C 08 02 A6 */	mflr r0
/* 814274B8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814274BC | 39 61 00 70 */	addi r11, r1, 0x70
/* 814274C0 | 48 1D 1F FD */	bl _savegpr_26
/* 814274C4 | 80 E4 00 9C */	lwz r7, 0x9c(r4)
/* 814274C8 | 3F E0 81 66 */	lis r31, lbl_8165C820@ha
/* 814274CC | C0 06 00 04 */	lfs f0, 0x4(r6)
/* 814274D0 | 7C 7A 1B 78 */	mr r26, r3
/* 814274D4 | 3B C7 00 B4 */	addi r30, r7, 0xb4
/* 814274D8 | 7C 9B 23 78 */	mr r27, r4
/* 814274DC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 814274E0 | 7C BC 2B 78 */	mr r28, r5
/* 814274E4 | 7C DD 33 78 */	mr r29, r6
/* 814274E8 | 3B FF C8 20 */	addi r31, r31, lbl_8165C820@l
/* 814274EC | C0 06 00 08 */	lfs f0, 0x8(r6)
/* 814274F0 | FC 00 00 50 */	fneg f0, f0
/* 814274F4 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 814274F8 | 88 07 00 B4 */	lbz r0, 0xb4(r7)
/* 814274FC | 7C 00 07 74 */	extsb r0, r0
/* 81427500 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 81427504 | 40 82 04 6C */	bne .L_81427970
/* 81427508 | 7F C5 F3 78 */	mr r5, r30
/* 8142750C | 38 61 00 40 */	addi r3, r1, 0x40
/* 81427510 | 38 80 00 11 */	li r4, 0x11
/* 81427514 | 38 C0 00 00 */	li r6, 0x0
/* 81427518 | 38 E0 00 50 */	li r7, 0x50
/* 8142751C | 48 01 2D 41 */	bl replaceChar__Q29textinput4utilFPcUlPCcic
/* 81427520 | 28 1C 00 04 */	cmplwi r28, 0x4
/* 81427524 | 40 82 01 7C */	bne .L_814276A0
/* 81427528 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8142752C | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81427530 | 41 82 01 70 */	beq .L_814276A0
/* 81427534 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427538 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142753C | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 81427540 | 7D 89 03 A6 */	mtctr r12
/* 81427544 | 4E 80 04 21 */	bctrl
/* 81427548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142754C | 40 82 01 54 */	bne .L_814276A0
/* 81427550 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427558 | 81 8C 02 2C */	lwz r12, 0x22c(r12)
/* 8142755C | 7D 89 03 A6 */	mtctr r12
/* 81427560 | 4E 80 04 21 */	bctrl
/* 81427564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427568 | 41 82 00 90 */	beq .L_814275F8
/* 8142756C | 38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 81427570 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81427574 | 48 01 2C 81 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81427578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142757C | 41 82 00 7C */	beq .L_814275F8
/* 81427580 | 38 00 00 00 */	li r0, 0x0
/* 81427584 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81427588 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 8142758C | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 81427590 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427594 | 38 63 00 10 */	addi r3, r3, 0x10
/* 81427598 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 8142759C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814275A0 | 7D 89 03 A6 */	mtctr r12
/* 814275A4 | 4E 80 04 21 */	bctrl
/* 814275A8 | D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 814275AC | 38 A1 00 34 */	addi r5, r1, 0x34
/* 814275B0 | 38 80 00 18 */	li r4, 0x18
/* 814275B4 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814275B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814275BC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814275C0 | 7D 89 03 A6 */	mtctr r12
/* 814275C4 | 4E 80 04 21 */	bctrl
/* 814275C8 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814275CC | 38 81 00 40 */	addi r4, r1, 0x40
/* 814275D0 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 814275D4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814275D8 | 7D 89 03 A6 */	mtctr r12
/* 814275DC | 4E 80 04 21 */	bctrl
/* 814275E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814275E4 | 38 80 00 00 */	li r4, 0x0
/* 814275E8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814275EC | 7D 89 03 A6 */	mtctr r12
/* 814275F0 | 4E 80 04 21 */	bctrl
/* 814275F4 | 48 00 00 AC */	b .L_814276A0
.L_814275F8:
/* 814275F8 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814275FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427600 | 81 8C 02 30 */	lwz r12, 0x230(r12)
/* 81427604 | 7D 89 03 A6 */	mtctr r12
/* 81427608 | 4E 80 04 21 */	bctrl
/* 8142760C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427610 | 41 82 00 90 */	beq .L_814276A0
/* 81427614 | 38 7F 04 08 */	addi r3, r31, 0x408
/* 81427618 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8142761C | 48 01 2B D9 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81427620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427624 | 41 82 00 7C */	beq .L_814276A0
/* 81427628 | 38 00 00 00 */	li r0, 0x0
/* 8142762C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81427630 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81427634 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 81427638 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8142763C | 38 63 00 10 */	addi r3, r3, 0x10
/* 81427640 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 81427644 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81427648 | 7D 89 03 A6 */	mtctr r12
/* 8142764C | 4E 80 04 21 */	bctrl
/* 81427650 | FC 00 08 50 */	fneg f0, f1
/* 81427654 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81427658 | 38 80 00 18 */	li r4, 0x18
/* 8142765C | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 81427660 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427664 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427668 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142766C | 7D 89 03 A6 */	mtctr r12
/* 81427670 | 4E 80 04 21 */	bctrl
/* 81427674 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427678 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8142767C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81427680 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81427684 | 7D 89 03 A6 */	mtctr r12
/* 81427688 | 4E 80 04 21 */	bctrl
/* 8142768C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427690 | 38 80 00 00 */	li r4, 0x0
/* 81427694 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81427698 | 7D 89 03 A6 */	mtctr r12
/* 8142769C | 4E 80 04 21 */	bctrl
.L_814276A0:
/* 814276A0 | 28 1C 00 02 */	cmplwi r28, 0x2
/* 814276A4 | 40 82 02 2C */	bne .L_814278D0
/* 814276A8 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814276AC | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 814276B0 | 41 82 02 20 */	beq .L_814278D0
/* 814276B4 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814276B8 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 814276BC | 40 82 02 14 */	bne .L_814278D0
/* 814276C0 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814276C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814276C8 | 81 8C 02 2C */	lwz r12, 0x22c(r12)
/* 814276CC | 7D 89 03 A6 */	mtctr r12
/* 814276D0 | 4E 80 04 21 */	bctrl
/* 814276D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814276D8 | 41 82 00 F0 */	beq .L_814277C8
/* 814276DC | 38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 814276E0 | 38 81 00 40 */	addi r4, r1, 0x40
/* 814276E4 | 48 01 2B 11 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814276E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814276EC | 41 82 00 DC */	beq .L_814277C8
/* 814276F0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 814276F4 | 7F 63 DB 78 */	mr r3, r27
/* 814276F8 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814276FC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81427700 | 7D 89 03 A6 */	mtctr r12
/* 81427704 | 4E 80 04 21 */	bctrl
/* 81427708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142770C | 41 82 01 C4 */	beq .L_814278D0
/* 81427710 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427714 | 7F C5 F3 78 */	mr r5, r30
/* 81427718 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8142771C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81427720 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81427724 | 7D 89 03 A6 */	mtctr r12
/* 81427728 | 4E 80 04 21 */	bctrl
/* 8142772C | 28 03 00 3C */	cmplwi r3, 0x3c
/* 81427730 | 41 80 01 A0 */	blt .L_814278D0
/* 81427734 | 3C 80 CC CD */	lis r4, 0xcccd
/* 81427738 | 38 04 CC CD */	subi r0, r4, 0x3333
/* 8142773C | 7C 00 18 16 */	mulhwu r0, r0, r3
/* 81427740 | 54 00 E1 3E */	srwi r0, r0, 4
/* 81427744 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 81427748 | 7C 00 18 51 */	subf. r0, r0, r3
/* 8142774C | 40 82 01 84 */	bne .L_814278D0
/* 81427750 | 38 00 00 00 */	li r0, 0x0
/* 81427754 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81427758 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8142775C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81427760 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427764 | 38 63 00 10 */	addi r3, r3, 0x10
/* 81427768 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 8142776C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81427770 | 7D 89 03 A6 */	mtctr r12
/* 81427774 | 4E 80 04 21 */	bctrl
/* 81427778 | D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8142777C | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 81427780 | 38 80 00 18 */	li r4, 0x18
/* 81427784 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427788 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142778C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81427790 | 7D 89 03 A6 */	mtctr r12
/* 81427794 | 4E 80 04 21 */	bctrl
/* 81427798 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8142779C | 38 81 00 40 */	addi r4, r1, 0x40
/* 814277A0 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 814277A4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814277A8 | 7D 89 03 A6 */	mtctr r12
/* 814277AC | 4E 80 04 21 */	bctrl
/* 814277B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814277B4 | 38 80 00 00 */	li r4, 0x0
/* 814277B8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814277BC | 7D 89 03 A6 */	mtctr r12
/* 814277C0 | 4E 80 04 21 */	bctrl
/* 814277C4 | 48 00 01 0C */	b .L_814278D0
.L_814277C8:
/* 814277C8 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814277CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814277D0 | 81 8C 02 30 */	lwz r12, 0x230(r12)
/* 814277D4 | 7D 89 03 A6 */	mtctr r12
/* 814277D8 | 4E 80 04 21 */	bctrl
/* 814277DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814277E0 | 41 82 00 F0 */	beq .L_814278D0
/* 814277E4 | 38 7F 04 08 */	addi r3, r31, 0x408
/* 814277E8 | 38 81 00 40 */	addi r4, r1, 0x40
/* 814277EC | 48 01 2A 09 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814277F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814277F4 | 41 82 00 DC */	beq .L_814278D0
/* 814277F8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 814277FC | 7F 63 DB 78 */	mr r3, r27
/* 81427800 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81427804 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81427808 | 7D 89 03 A6 */	mtctr r12
/* 8142780C | 4E 80 04 21 */	bctrl
/* 81427810 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427814 | 41 82 00 BC */	beq .L_814278D0
/* 81427818 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8142781C | 7F C5 F3 78 */	mr r5, r30
/* 81427820 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81427824 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81427828 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8142782C | 7D 89 03 A6 */	mtctr r12
/* 81427830 | 4E 80 04 21 */	bctrl
/* 81427834 | 28 03 00 3C */	cmplwi r3, 0x3c
/* 81427838 | 41 80 00 98 */	blt .L_814278D0
/* 8142783C | 3C 80 CC CD */	lis r4, 0xcccd
/* 81427840 | 38 04 CC CD */	subi r0, r4, 0x3333
/* 81427844 | 7C 00 18 16 */	mulhwu r0, r0, r3
/* 81427848 | 54 00 E1 3E */	srwi r0, r0, 4
/* 8142784C | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 81427850 | 7C 00 18 51 */	subf. r0, r0, r3
/* 81427854 | 40 82 00 7C */	bne .L_814278D0
/* 81427858 | 38 00 00 00 */	li r0, 0x0
/* 8142785C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81427860 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81427864 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81427868 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8142786C | 38 63 00 10 */	addi r3, r3, 0x10
/* 81427870 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 81427874 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81427878 | 7D 89 03 A6 */	mtctr r12
/* 8142787C | 4E 80 04 21 */	bctrl
/* 81427880 | FC 00 08 50 */	fneg f0, f1
/* 81427884 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81427888 | 38 80 00 18 */	li r4, 0x18
/* 8142788C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81427890 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427894 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427898 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142789C | 7D 89 03 A6 */	mtctr r12
/* 814278A0 | 4E 80 04 21 */	bctrl
/* 814278A4 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814278A8 | 38 81 00 40 */	addi r4, r1, 0x40
/* 814278AC | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 814278B0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814278B4 | 7D 89 03 A6 */	mtctr r12
/* 814278B8 | 4E 80 04 21 */	bctrl
/* 814278BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814278C0 | 38 80 00 00 */	li r4, 0x0
/* 814278C4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814278C8 | 7D 89 03 A6 */	mtctr r12
/* 814278CC | 4E 80 04 21 */	bctrl
.L_814278D0:
/* 814278D0 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814278D4 | 38 81 00 40 */	addi r4, r1, 0x40
/* 814278D8 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 814278DC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814278E0 | 7D 89 03 A6 */	mtctr r12
/* 814278E4 | 4E 80 04 21 */	bctrl
/* 814278E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814278EC | 7C 7B 1B 78 */	mr r27, r3
/* 814278F0 | 41 82 02 34 */	beq .L_81427B24
/* 814278F4 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814278F8 | 41 82 00 14 */	beq .L_8142790C
/* 814278FC | 40 80 02 28 */	bge .L_81427B24
/* 81427900 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81427904 | 40 80 00 20 */	bge .L_81427924
/* 81427908 | 48 00 02 1C */	b .L_81427B24
.L_8142790C:
/* 8142790C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427910 | 38 80 00 02 */	li r4, 0x2
/* 81427914 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81427918 | 7D 89 03 A6 */	mtctr r12
/* 8142791C | 4E 80 04 21 */	bctrl
/* 81427920 | 48 00 02 04 */	b .L_81427B24
.L_81427924:
/* 81427924 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427928 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142792C | 7D 89 03 A6 */	mtctr r12
/* 81427930 | 4E 80 04 21 */	bctrl
/* 81427934 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81427938 | 41 82 01 EC */	beq .L_81427B24
/* 8142793C | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 81427940 | 38 80 00 04 */	li r4, 0x4
/* 81427944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427948 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142794C | 7D 89 03 A6 */	mtctr r12
/* 81427950 | 4E 80 04 21 */	bctrl
/* 81427954 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81427958 | 7F 63 DB 78 */	mr r3, r27
/* 8142795C | 38 80 00 01 */	li r4, 0x1
/* 81427960 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81427964 | 7D 89 03 A6 */	mtctr r12
/* 81427968 | 4E 80 04 21 */	bctrl
/* 8142796C | 48 00 01 B8 */	b .L_81427B24
.L_81427970:
/* 81427970 | 2C 00 00 50 */	cmpwi r0, 0x50
/* 81427974 | 40 82 00 D8 */	bne .L_81427A4C
/* 81427978 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8142797C | 7F C4 F3 78 */	mr r4, r30
/* 81427980 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81427984 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81427988 | 7D 89 03 A6 */	mtctr r12
/* 8142798C | 4E 80 04 21 */	bctrl
/* 81427990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427994 | 7C 7B 1B 78 */	mr r27, r3
/* 81427998 | 41 82 01 8C */	beq .L_81427B24
/* 8142799C | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814279A0 | 41 82 00 60 */	beq .L_81427A00
/* 814279A4 | 40 80 01 80 */	bge .L_81427B24
/* 814279A8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814279AC | 40 80 00 08 */	bge .L_814279B4
/* 814279B0 | 48 00 01 74 */	b .L_81427B24
.L_814279B4:
/* 814279B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814279B8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814279BC | 7D 89 03 A6 */	mtctr r12
/* 814279C0 | 4E 80 04 21 */	bctrl
/* 814279C4 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814279C8 | 41 82 01 5C */	beq .L_81427B24
/* 814279CC | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 814279D0 | 38 80 00 04 */	li r4, 0x4
/* 814279D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814279D8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814279DC | 7D 89 03 A6 */	mtctr r12
/* 814279E0 | 4E 80 04 21 */	bctrl
/* 814279E4 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 814279E8 | 7F 63 DB 78 */	mr r3, r27
/* 814279EC | 38 80 00 01 */	li r4, 0x1
/* 814279F0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814279F4 | 7D 89 03 A6 */	mtctr r12
/* 814279F8 | 4E 80 04 21 */	bctrl
/* 814279FC | 48 00 01 28 */	b .L_81427B24
.L_81427A00:
/* 81427A00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427A04 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81427A08 | 7D 89 03 A6 */	mtctr r12
/* 81427A0C | 4E 80 04 21 */	bctrl
/* 81427A10 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81427A14 | 41 82 01 10 */	beq .L_81427B24
/* 81427A18 | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 81427A1C | 38 80 00 04 */	li r4, 0x4
/* 81427A20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427A24 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427A28 | 7D 89 03 A6 */	mtctr r12
/* 81427A2C | 4E 80 04 21 */	bctrl
/* 81427A30 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81427A34 | 7F 63 DB 78 */	mr r3, r27
/* 81427A38 | 38 80 00 02 */	li r4, 0x2
/* 81427A3C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81427A40 | 7D 89 03 A6 */	mtctr r12
/* 81427A44 | 4E 80 04 21 */	bctrl
/* 81427A48 | 48 00 00 DC */	b .L_81427B24
.L_81427A4C:
/* 81427A4C | 83 63 00 0C */	lwz r27, 0xc(r3)
/* 81427A50 | 81 9B 02 18 */	lwz r12, 0x218(r27)
/* 81427A54 | 38 7B 02 18 */	addi r3, r27, 0x218
/* 81427A58 | 80 9B 02 C4 */	lwz r4, 0x2c4(r27)
/* 81427A5C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81427A60 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81427A64 | 7D 89 03 A6 */	mtctr r12
/* 81427A68 | 4E 80 04 21 */	bctrl
/* 81427A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427A70 | 41 82 00 10 */	beq .L_81427A80
/* 81427A74 | 80 7B 02 C4 */	lwz r3, 0x2c4(r27)
/* 81427A78 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 81427A7C | 48 00 00 08 */	b .L_81427A84
.L_81427A80:
/* 81427A80 | 38 9F 03 C0 */	addi r4, r31, 0x3c0
.L_81427A84:
/* 81427A84 | 7F C3 F3 78 */	mr r3, r30
/* 81427A88 | 48 01 27 6D */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81427A8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427A90 | 41 82 00 94 */	beq .L_81427B24
/* 81427A94 | 28 1C 00 04 */	cmplwi r28, 0x4
/* 81427A98 | 40 82 00 2C */	bne .L_81427AC4
/* 81427A9C | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 81427AA0 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81427AA4 | 41 82 00 20 */	beq .L_81427AC4
/* 81427AA8 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427AAC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81427AB0 | 38 80 00 0E */	li r4, 0xe
/* 81427AB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427AB8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81427ABC | 7D 89 03 A6 */	mtctr r12
/* 81427AC0 | 4E 80 04 21 */	bctrl
.L_81427AC4:
/* 81427AC4 | 28 1C 00 05 */	cmplwi r28, 0x5
/* 81427AC8 | 40 82 00 2C */	bne .L_81427AF4
/* 81427ACC | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 81427AD0 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81427AD4 | 41 82 00 20 */	beq .L_81427AF4
/* 81427AD8 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427ADC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81427AE0 | 38 80 00 0F */	li r4, 0xf
/* 81427AE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427AE8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81427AEC | 7D 89 03 A6 */	mtctr r12
/* 81427AF0 | 4E 80 04 21 */	bctrl
.L_81427AF4:
/* 81427AF4 | 28 1C 00 02 */	cmplwi r28, 0x2
/* 81427AF8 | 40 82 00 2C */	bne .L_81427B24
/* 81427AFC | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 81427B00 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81427B04 | 41 82 00 20 */	beq .L_81427B24
/* 81427B08 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81427B0C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81427B10 | 38 80 00 10 */	li r4, 0x10
/* 81427B14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427B18 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81427B1C | 7D 89 03 A6 */	mtctr r12
/* 81427B20 | 4E 80 04 21 */	bctrl
.L_81427B24:
/* 81427B24 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81427B28 | 48 1D 19 E1 */	bl _restgpr_26
/* 81427B2C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81427B30 | 7C 08 03 A6 */	mtlr r0
/* 81427B34 | 38 21 00 70 */	addi r1, r1, 0x70
/* 81427B38 | 4E 80 00 20 */	blr
.endfn onTiEvent__Q39textinput9inputform12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0xBFCC | 0x81427B3C | size: 0x10
# textinput::inputform::Base::isInScroll()
.fn isInScroll__Q39textinput9inputform4BaseFv, global
/* 81427B3C | 85 83 01 8C */	lwzu r12, 0x18c(r3)
/* 81427B40 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427B44 | 7D 89 03 A6 */	mtctr r12
/* 81427B48 | 4E 80 04 20 */	bctr
.endfn isInScroll__Q39textinput9inputform4BaseFv

# .text:0xBFDC | 0x81427B4C | size: 0x8
# textinput::inputform::LayoutByNW4R::isAbleToUp()
.fn isAbleToUp__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81427B4C | 88 63 02 CC */	lbz r3, 0x2cc(r3)
/* 81427B50 | 4E 80 00 20 */	blr
.endfn isAbleToUp__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xBFE4 | 0x81427B54 | size: 0x8
# textinput::inputform::LayoutByNW4R::isAbleToDown()
.fn isAbleToDown__Q39textinput9inputform12LayoutByNW4RFv, global
/* 81427B54 | 88 63 02 CD */	lbz r3, 0x2cd(r3)
/* 81427B58 | 4E 80 00 20 */	blr
.endfn isAbleToDown__Q39textinput9inputform12LayoutByNW4RFv

# .text:0xBFEC | 0x81427B5C | size: 0x8
# textinput::inputform::AnmPane::getState()
.fn getState__Q39textinput9inputform7AnmPaneFv, global
/* 81427B5C | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81427B60 | 4E 80 00 20 */	blr
.endfn getState__Q39textinput9inputform7AnmPaneFv

# .text:0xBFF4 | 0x81427B64 | size: 0x24C
# textinput::inputform::NormalButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 81427B64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81427B68 | 7C 08 02 A6 */	mflr r0
/* 81427B6C | 2C 04 00 06 */	cmpwi r4, 0x6
/* 81427B70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81427B74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81427B78 | 7C 9F 23 78 */	mr r31, r4
/* 81427B7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81427B80 | 7C 7E 1B 78 */	mr r30, r3
/* 81427B84 | 40 82 00 28 */	bne .L_81427BAC
/* 81427B88 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81427B8C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 81427B90 | 40 82 00 1C */	bne .L_81427BAC
/* 81427B94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427B98 | 38 80 00 05 */	li r4, 0x5
/* 81427B9C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427BA0 | 7D 89 03 A6 */	mtctr r12
/* 81427BA4 | 4E 80 04 21 */	bctrl
/* 81427BA8 | 48 00 00 54 */	b .L_81427BFC
.L_81427BAC:
/* 81427BAC | 2C 04 00 07 */	cmpwi r4, 0x7
/* 81427BB0 | 40 82 00 2C */	bne .L_81427BDC
/* 81427BB4 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81427BB8 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 81427BBC | 41 82 00 20 */	beq .L_81427BDC
/* 81427BC0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427BC4 | 7F C3 F3 78 */	mr r3, r30
/* 81427BC8 | 38 80 00 06 */	li r4, 0x6
/* 81427BCC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427BD0 | 7D 89 03 A6 */	mtctr r12
/* 81427BD4 | 4E 80 04 21 */	bctrl
/* 81427BD8 | 48 00 00 24 */	b .L_81427BFC
.L_81427BDC:
/* 81427BDC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81427BE0 | 40 82 00 1C */	bne .L_81427BFC
/* 81427BE4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427BE8 | 7F C3 F3 78 */	mr r3, r30
/* 81427BEC | 38 80 00 04 */	li r4, 0x4
/* 81427BF0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427BF4 | 7D 89 03 A6 */	mtctr r12
/* 81427BF8 | 4E 80 04 21 */	bctrl
.L_81427BFC:
/* 81427BFC | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 81427C00 | 28 00 00 06 */	cmplwi r0, 0x6
/* 81427C04 | 41 81 01 94 */	bgt .L_81427D98
/* 81427C08 | 3C 60 81 66 */	lis r3, jumptable_8165CC5C@ha
/* 81427C0C | 54 00 10 3A */	slwi r0, r0, 2
/* 81427C10 | 38 63 CC 5C */	addi r3, r3, jumptable_8165CC5C@l
/* 81427C14 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81427C18 | 7C 69 03 A6 */	mtctr r3
/* 81427C1C | 4E 80 04 20 */	bctr
.L_81427C20:
/* 81427C20 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81427C24 | 40 82 00 1C */	bne .L_81427C40
/* 81427C28 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427C2C | 7F C3 F3 78 */	mr r3, r30
/* 81427C30 | 38 80 00 00 */	li r4, 0x0
/* 81427C34 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427C38 | 7D 89 03 A6 */	mtctr r12
/* 81427C3C | 4E 80 04 21 */	bctrl
.L_81427C40:
/* 81427C40 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81427C44 | 40 82 01 54 */	bne .L_81427D98
/* 81427C48 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427C4C | 7F C3 F3 78 */	mr r3, r30
/* 81427C50 | 38 80 00 01 */	li r4, 0x1
/* 81427C54 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427C58 | 7D 89 03 A6 */	mtctr r12
/* 81427C5C | 4E 80 04 21 */	bctrl
/* 81427C60 | 48 00 01 38 */	b .L_81427D98
.L_81427C64:
/* 81427C64 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81427C68 | 40 82 01 30 */	bne .L_81427D98
/* 81427C6C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427C70 | 7F C3 F3 78 */	mr r3, r30
/* 81427C74 | 38 80 00 01 */	li r4, 0x1
/* 81427C78 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427C7C | 7D 89 03 A6 */	mtctr r12
/* 81427C80 | 4E 80 04 21 */	bctrl
/* 81427C84 | 48 00 01 14 */	b .L_81427D98
.L_81427C88:
/* 81427C88 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81427C8C | 40 82 00 1C */	bne .L_81427CA8
/* 81427C90 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427C94 | 7F C3 F3 78 */	mr r3, r30
/* 81427C98 | 38 80 00 03 */	li r4, 0x3
/* 81427C9C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427CA0 | 7D 89 03 A6 */	mtctr r12
/* 81427CA4 | 4E 80 04 21 */	bctrl
.L_81427CA8:
/* 81427CA8 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81427CAC | 40 82 00 EC */	bne .L_81427D98
/* 81427CB0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427CB4 | 7F C3 F3 78 */	mr r3, r30
/* 81427CB8 | 38 80 00 02 */	li r4, 0x2
/* 81427CBC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427CC0 | 7D 89 03 A6 */	mtctr r12
/* 81427CC4 | 4E 80 04 21 */	bctrl
/* 81427CC8 | 48 00 00 D0 */	b .L_81427D98
.L_81427CCC:
/* 81427CCC | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81427CD0 | 40 82 00 C8 */	bne .L_81427D98
/* 81427CD4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427CD8 | 7F C3 F3 78 */	mr r3, r30
/* 81427CDC | 38 80 00 02 */	li r4, 0x2
/* 81427CE0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427CE4 | 7D 89 03 A6 */	mtctr r12
/* 81427CE8 | 4E 80 04 21 */	bctrl
/* 81427CEC | 48 00 00 AC */	b .L_81427D98
.L_81427CF0:
/* 81427CF0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81427CF4 | 40 82 00 1C */	bne .L_81427D10
/* 81427CF8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427CFC | 7F C3 F3 78 */	mr r3, r30
/* 81427D00 | 38 80 00 00 */	li r4, 0x0
/* 81427D04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427D08 | 7D 89 03 A6 */	mtctr r12
/* 81427D0C | 4E 80 04 21 */	bctrl
.L_81427D10:
/* 81427D10 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81427D14 | 40 82 00 84 */	bne .L_81427D98
/* 81427D18 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427D1C | 7F C3 F3 78 */	mr r3, r30
/* 81427D20 | 38 80 00 01 */	li r4, 0x1
/* 81427D24 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427D28 | 7D 89 03 A6 */	mtctr r12
/* 81427D2C | 4E 80 04 21 */	bctrl
/* 81427D30 | 48 00 00 68 */	b .L_81427D98
.L_81427D34:
/* 81427D34 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81427D38 | 40 82 00 1C */	bne .L_81427D54
/* 81427D3C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427D40 | 7F C3 F3 78 */	mr r3, r30
/* 81427D44 | 38 80 00 03 */	li r4, 0x3
/* 81427D48 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427D4C | 7D 89 03 A6 */	mtctr r12
/* 81427D50 | 4E 80 04 21 */	bctrl
.L_81427D54:
/* 81427D54 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81427D58 | 40 82 00 40 */	bne .L_81427D98
/* 81427D5C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427D60 | 7F C3 F3 78 */	mr r3, r30
/* 81427D64 | 38 80 00 02 */	li r4, 0x2
/* 81427D68 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427D6C | 7D 89 03 A6 */	mtctr r12
/* 81427D70 | 4E 80 04 21 */	bctrl
/* 81427D74 | 48 00 00 24 */	b .L_81427D98
.L_81427D78:
/* 81427D78 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81427D7C | 40 82 00 1C */	bne .L_81427D98
/* 81427D80 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81427D84 | 7F C3 F3 78 */	mr r3, r30
/* 81427D88 | 38 80 00 07 */	li r4, 0x7
/* 81427D8C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81427D90 | 7D 89 03 A6 */	mtctr r12
/* 81427D94 | 4E 80 04 21 */	bctrl
.L_81427D98:
/* 81427D98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81427D9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81427DA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81427DA4 | 7C 08 03 A6 */	mtlr r0
/* 81427DA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81427DAC | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0xC240 | 0x81427DB0 | size: 0x8
# textinput::inputform::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q39textinput9inputform7AnmPaneFUl, global
/* 81427DB0 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81427DB4 | 48 00 F3 0C */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q39textinput9inputform7AnmPaneFUl

# .text:0xC248 | 0x81427DB8 | size: 0x4
# textinput::inputform::Base::create(MEMAllocator*)
.fn create__Q39textinput9inputform4BaseFP12MEMAllocator, global
/* 81427DB8 | 4E 80 00 20 */	blr
.endfn create__Q39textinput9inputform4BaseFP12MEMAllocator

# .text:0xC24C | 0x81427DBC | size: 0x4
# textinput::inputform::Base::doAfterDrawProcess(const wchar_t*, unsigned long, const textinput::textdrawer::Base::DrawInfo&)
.fn doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo, global
/* 81427DBC | 4E 80 00 20 */	blr
.endfn doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo

# .text:0xC250 | 0x81427DC0 | size: 0x4
# textinput::inputform::Base::finishDraw(unsigned long)
.fn finishDraw__Q39textinput9inputform4BaseFUl, global
/* 81427DC0 | 4E 80 00 20 */	blr
.endfn finishDraw__Q39textinput9inputform4BaseFUl

# .text:0xC254 | 0x81427DC4 | size: 0x8
# textinput::CommandReceiver::addSender(textinput::CommandSender*)
.fn addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender, global
/* 81427DC4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81427DC8 | 48 0E A2 AC */	b List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.endfn addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender

# .text:0xC25C | 0x81427DCC | size: 0x8
# textinput::textdrawer::Base::getDrawModifyStartLine() const
.fn getDrawModifyStartLine__Q39textinput10textdrawer4BaseCFv, global
/* 81427DCC | 80 63 00 CC */	lwz r3, 0xcc(r3)
/* 81427DD0 | 4E 80 00 20 */	blr
.endfn getDrawModifyStartLine__Q39textinput10textdrawer4BaseCFv

# .text:0xC264 | 0x81427DD4 | size: 0x8
.fn isEnableCursorCache__Q39textinput10textdrawer4BaseCFvgetStartPos__Q39textinput10textdrawer4BaseCFv, global
/* 81427DD4 | 88 63 01 04 */	lbz r3, 0x104(r3)
/* 81427DD8 | 4E 80 00 20 */	blr
.endfn isEnableCursorCache__Q39textinput10textdrawer4BaseCFvgetStartPos__Q39textinput10textdrawer4BaseCFv

# .text:0xC26C | 0x81427DDC | size: 0x8
# textinput::textdrawer::Base::getStartPos() const
.fn getStartPos__Q39textinput10textdrawer4BaseCFv, global
/* 81427DDC | 80 63 00 BC */	lwz r3, 0xbc(r3)
/* 81427DE0 | 4E 80 00 20 */	blr
.endfn getStartPos__Q39textinput10textdrawer4BaseCFv

# .text:0xC274 | 0x81427DE4 | size: 0x8
# textinput::textdrawer::Base::setVIWidth(float)
.fn setVIWidth__Q39textinput10textdrawer4BaseFf, global
/* 81427DE4 | D0 23 00 98 */	stfs f1, 0x98(r3)
/* 81427DE8 | 4E 80 00 20 */	blr
.endfn setVIWidth__Q39textinput10textdrawer4BaseFf

# .text:0xC27C | 0x81427DEC | size: 0x8
# textinput::candidatebox::CandidateBoxCaller::setCandidateBox(textinput::candidatebox::Base*)
.fn setCandidateBox__Q39textinput12candidatebox18CandidateBoxCallerFPQ39textinput12candidatebox4Base, global
/* 81427DEC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81427DF0 | 4E 80 00 20 */	blr
.endfn setCandidateBox__Q39textinput12candidatebox18CandidateBoxCallerFPQ39textinput12candidatebox4Base

# .text:0xC284 | 0x81427DF4 | size: 0x14
# textinput::inputform::Base::isAtokDictionaryOpened()
.fn isAtokDictionaryOpened__Q39textinput9inputform4BaseFv, global
/* 81427DF4 | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 81427DF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427DFC | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 81427E00 | 7D 89 03 A6 */	mtctr r12
/* 81427E04 | 4E 80 04 20 */	bctr
.endfn isAtokDictionaryOpened__Q39textinput9inputform4BaseFv

# .text:0xC298 | 0x81427E08 | size: 0xC
# textinput::inputform::Base::setLineDrawInfo(bool, unsigned long)
.fn setLineDrawInfo__Q39textinput9inputform4BaseFbUl, global
/* 81427E08 | 98 83 02 0E */	stb r4, 0x20e(r3)
/* 81427E0C | 90 A3 02 10 */	stw r5, 0x210(r3)
/* 81427E10 | 4E 80 00 20 */	blr
.endfn setLineDrawInfo__Q39textinput9inputform4BaseFbUl

# .text:0xC2A4 | 0x81427E14 | size: 0x8
# textinput::inputform::Base::doWordWrap(bool)
.fn doWordWrap__Q39textinput9inputform4BaseFb, global
/* 81427E14 | 98 83 01 79 */	stb r4, 0x179(r3)
/* 81427E18 | 4E 80 00 20 */	blr
.endfn doWordWrap__Q39textinput9inputform4BaseFb

# .text:0xC2AC | 0x81427E1C | size: 0x24
# textinput::inputform::Base::limitRowNum(unsigned long)
.fn limitRowNum__Q39textinput9inputform4BaseFUl, global
/* 81427E1C | 28 04 00 01 */	cmplwi r4, 0x1
/* 81427E20 | 90 83 01 BC */	stw r4, 0x1bc(r3)
/* 81427E24 | 4C 82 00 20 */	bnelr
/* 81427E28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427E2C | 38 80 00 00 */	li r4, 0x0
/* 81427E30 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81427E34 | 7D 89 03 A6 */	mtctr r12
/* 81427E38 | 4E 80 04 20 */	bctr
/* 81427E3C | 4E 80 00 20 */	blr
.endfn limitRowNum__Q39textinput9inputform4BaseFUl

# .text:0xC2D0 | 0x81427E40 | size: 0x8
# textinput::inputform::Base::limitStringLength(unsigned long)
.fn limitStringLength__Q39textinput9inputform4BaseFUl, global
/* 81427E40 | 90 83 01 B8 */	stw r4, 0x1b8(r3)
/* 81427E44 | 4E 80 00 20 */	blr
.endfn limitStringLength__Q39textinput9inputform4BaseFUl

# .text:0xC2D8 | 0x81427E48 | size: 0x14
# textinput::inputform::Base::getCandidate() const
.fn getCandidate__Q39textinput9inputform4BaseCFv, global
/* 81427E48 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81427E4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427E50 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81427E54 | 7D 89 03 A6 */	mtctr r12
/* 81427E58 | 4E 80 04 20 */	bctr
.endfn getCandidate__Q39textinput9inputform4BaseCFv

# .text:0xC2EC | 0x81427E5C | size: 0x8
# textinput::inputform::Base::getAtokString()
.fn getAtokString__Q39textinput9inputform4BaseFv, global
/* 81427E5C | 80 63 01 68 */	lwz r3, 0x168(r3)
/* 81427E60 | 4E 80 00 20 */	blr
.endfn getAtokString__Q39textinput9inputform4BaseFv

# .text:0xC2F4 | 0x81427E64 | size: 0x14
# textinput::inputform::Base::getWCString() const
.fn getWCString__Q39textinput9inputform4BaseCFv, global
/* 81427E64 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 81427E68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81427E6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81427E70 | 7D 89 03 A6 */	mtctr r12
/* 81427E74 | 4E 80 04 20 */	bctr
.endfn getWCString__Q39textinput9inputform4BaseCFv

# .text:0xC308 | 0x81427E78 | size: 0x8
# textinput::inputform::AnmPane::getKeyType() const
.fn getKeyType__Q39textinput9inputform7AnmPaneCFv, global
/* 81427E78 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 81427E7C | 4E 80 00 20 */	blr
.endfn getKeyType__Q39textinput9inputform7AnmPaneCFv

# .text:0xC310 | 0x81427E80 | size: 0xC
# textinput::inputform::AnmPane::init()
.fn init__Q39textinput9inputform7AnmPaneFv, global
/* 81427E80 | 38 00 00 00 */	li r0, 0x0
/* 81427E84 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81427E88 | 4E 80 00 20 */	blr
.endfn init__Q39textinput9inputform7AnmPaneFv

# .text:0xC31C | 0x81427E8C | size: 0x5C
# textinput::inputform::NormalButtonAnmPane::~NormalButtonAnmPane()
.fn __dt__Q39textinput9inputform19NormalButtonAnmPaneFv, global
/* 81427E8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81427E90 | 7C 08 02 A6 */	mflr r0
/* 81427E94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81427E98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81427E9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81427EA0 | 7C 9F 23 78 */	mr r31, r4
/* 81427EA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81427EA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81427EAC | 41 82 00 20 */	beq .L_81427ECC
/* 81427EB0 | 41 82 00 0C */	beq .L_81427EBC
/* 81427EB4 | 38 80 00 00 */	li r4, 0x0
/* 81427EB8 | 48 00 F0 69 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_81427EBC:
/* 81427EBC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81427EC0 | 40 81 00 0C */	ble .L_81427ECC
/* 81427EC4 | 7F C3 F3 78 */	mr r3, r30
/* 81427EC8 | 48 1D 02 1D */	bl __dl__FPv
.L_81427ECC:
/* 81427ECC | 7F C3 F3 78 */	mr r3, r30
/* 81427ED0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81427ED4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81427ED8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81427EDC | 7C 08 03 A6 */	mtlr r0
/* 81427EE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81427EE4 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput9inputform19NormalButtonAnmPaneFv

# .text:0xC378 | 0x81427EE8 | size: 0x4
# textinput::tistring::Decolated::EnableKSXFilter(bool)
.fn EnableKSXFilter__Q39textinput8tistring9DecolatedFb, global
/* 81427EE8 | 4E 80 00 20 */	blr
.endfn EnableKSXFilter__Q39textinput8tistring9DecolatedFb

# .text:0xC37C | 0x81427EEC | size: 0x4
# textinput::tistring::Decolated::deleteChar()
.fn deleteChar__Q39textinput8tistring9DecolatedFv, global
/* 81427EEC | 4E 80 00 20 */	blr
.endfn deleteChar__Q39textinput8tistring9DecolatedFv

# .text:0xC380 | 0x81427EF0 | size: 0x4
# textinput::tistring::WithAtok::setDefaultPrediction(int, const char**)
.fn setDefaultPrediction__Q39textinput8tistring8WithAtokFiPPCc, global
/* 81427EF0 | 4E 80 00 20 */	blr
.endfn setDefaultPrediction__Q39textinput8tistring8WithAtokFiPPCc

# .text:0xC384 | 0x81427EF4 | size: 0x4
# textinput::tistring::WithAtok::setFixPrediction(int, const char**)
.fn setFixPrediction__Q39textinput8tistring8WithAtokFiPPCc, global
/* 81427EF4 | 4E 80 00 20 */	blr
.endfn setFixPrediction__Q39textinput8tistring8WithAtokFiPPCc

# .text:0xC388 | 0x81427EF8 | size: 0x4
# textinput::tistring::WithAtok::getDrawString(textinput::tistring::WithAtok::DrawInfo&)
.fn getDrawString__Q39textinput8tistring8WithAtokFRQ49textinput8tistring8WithAtok8DrawInfo, global
/* 81427EF8 | 4E 80 00 20 */	blr
.endfn getDrawString__Q39textinput8tistring8WithAtokFRQ49textinput8tistring8WithAtok8DrawInfo

# .text:0xC38C | 0x81427EFC | size: 0x4
# textinput::tistring::WithAtok::init()
.fn init__Q39textinput8tistring8WithAtokFv, global
/* 81427EFC | 4E 80 00 20 */	blr
.endfn init__Q39textinput8tistring8WithAtokFv

# .text:0xC390 | 0x81427F00 | size: 0x8
# textinput::tistring::WithAtok::moveCursorLeft()
.fn moveCursorLeft__Q39textinput8tistring8WithAtokFv, global
/* 81427F00 | 38 60 00 00 */	li r3, 0x0
/* 81427F04 | 4E 80 00 20 */	blr
.endfn moveCursorLeft__Q39textinput8tistring8WithAtokFv

# .text:0xC398 | 0x81427F08 | size: 0x8
# textinput::tistring::WithAtok::moveCursorRight()
.fn moveCursorRight__Q39textinput8tistring8WithAtokFv, global
/* 81427F08 | 38 60 00 00 */	li r3, 0x0
/* 81427F0C | 4E 80 00 20 */	blr
.endfn moveCursorRight__Q39textinput8tistring8WithAtokFv

# .text:0xC3A0 | 0x81427F10 | size: 0x4
# textinput::tistring::WithAtok::inputChar(wchar_t)
.fn inputChar__Q39textinput8tistring8WithAtokFw, global
/* 81427F10 | 4E 80 00 20 */	blr
.endfn inputChar__Q39textinput8tistring8WithAtokFw

# .text:0xC3A4 | 0x81427F14 | size: 0x4
# textinput::tistring::WithAtok::popBack()
.fn popBack__Q39textinput8tistring8WithAtokFv, global
/* 81427F14 | 4E 80 00 20 */	blr
.endfn popBack__Q39textinput8tistring8WithAtokFv

# .text:0xC3A8 | 0x81427F18 | size: 0x4
# textinput::tistring::WithAtok::pushBack(wchar_t)
.fn pushBack__Q39textinput8tistring8WithAtokFw, global
/* 81427F18 | 4E 80 00 20 */	blr
.endfn pushBack__Q39textinput8tistring8WithAtokFw

# .text:0xC3AC | 0x81427F1C | size: 0x4
# textinput::tistring::WithAtok::initConverting()
.fn initConverting__Q39textinput8tistring8WithAtokFv, global
/* 81427F1C | 4E 80 00 20 */	blr
.endfn initConverting__Q39textinput8tistring8WithAtokFv

# .text:0xC3B0 | 0x81427F20 | size: 0x4
# textinput::tistring::WithAtok::setFix(bool)
.fn setFix__Q39textinput8tistring8WithAtokFb, global
/* 81427F20 | 4E 80 00 20 */	blr
.endfn setFix__Q39textinput8tistring8WithAtokFb

# .text:0xC3B4 | 0x81427F24 | size: 0x4
# textinput::Base::create(MEMAllocator*)
.fn create__Q29textinput4BaseFP12MEMAllocator, global
/* 81427F24 | 4E 80 00 20 */	blr
.endfn create__Q29textinput4BaseFP12MEMAllocator

# .text:0xC3B8 | 0x81427F28 | size: 0xC
# textinput::util::Animation::stop()
.fn stop__Q39textinput4util9AnimationFv, global
/* 81427F28 | 38 00 00 00 */	li r0, 0x0
/* 81427F2C | 98 03 00 14 */	stb r0, 0x14(r3)
/* 81427F30 | 4E 80 00 20 */	blr
.endfn stop__Q39textinput4util9AnimationFv

# .text:0xC3C4 | 0x81427F34 | size: 0x8
# textinput::util::Animation::isSEFlag()
.fn isSEFlag__Q39textinput4util9AnimationFv, global
/* 81427F34 | 88 63 00 15 */	lbz r3, 0x15(r3)
/* 81427F38 | 4E 80 00 20 */	blr
.endfn isSEFlag__Q39textinput4util9AnimationFv

# .text:0xC3CC | 0x81427F3C | size: 0x8
# textinput::util::Animation::setSEFlag(bool)
.fn setSEFlag__Q39textinput4util9AnimationFb, global
/* 81427F3C | 98 83 00 15 */	stb r4, 0x15(r3)
/* 81427F40 | 4E 80 00 20 */	blr
.endfn setSEFlag__Q39textinput4util9AnimationFb

# .text:0xC3D4 | 0x81427F44 | size: 0x15C
.fn "__sinit_\\inputform_cpp", global
/* 81427F44 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81427F48 | 7C 08 02 A6 */	mflr r0
/* 81427F4C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81427F50 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81427F54 | 48 1D 15 65 */	bl _savegpr_25
/* 81427F58 | 3F 20 81 0C */	lis r25, lbl_810C6590@ha
/* 81427F5C | 3B 40 00 C8 */	li r26, 0xc8
/* 81427F60 | 3F A0 81 33 */	lis r29, __dt__Q34nw4r2ut5ColorFv@ha
/* 81427F64 | 38 CD AC C0 */	li r6, lbl_81698D00@sda21
/* 81427F68 | 3B 60 00 32 */	li r27, 0x32
/* 81427F6C | 3B 80 00 FF */	li r28, 0xff
/* 81427F70 | 3B 39 65 90 */	addi r25, r25, lbl_810C6590@l
/* 81427F74 | 9B 4D AC C0 */	stb r26, lbl_81698D00@sda21(r0)
/* 81427F78 | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 81427F7C | 38 6D AC C0 */	li r3, lbl_81698D00@sda21
/* 81427F80 | 9B 66 00 01 */	stb r27, 0x1(r6)
/* 81427F84 | 38 B9 00 0C */	addi r5, r25, 0xc
/* 81427F88 | 9B 66 00 02 */	stb r27, 0x2(r6)
/* 81427F8C | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 81427F90 | 48 1D 10 51 */	bl __register_global_object
/* 81427F94 | 38 CD AC C4 */	li r6, lbl_81698D04@sda21
/* 81427F98 | 3B C0 00 14 */	li r30, 0x14
/* 81427F9C | 9B CD AC C4 */	stb r30, lbl_81698D04@sda21(r0)
/* 81427FA0 | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 81427FA4 | 38 B9 00 18 */	addi r5, r25, 0x18
/* 81427FA8 | 38 6D AC C4 */	li r3, lbl_81698D04@sda21
/* 81427FAC | 9B C6 00 01 */	stb r30, 0x1(r6)
/* 81427FB0 | 9B C6 00 02 */	stb r30, 0x2(r6)
/* 81427FB4 | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 81427FB8 | 48 1D 10 29 */	bl __register_global_object
/* 81427FBC | 38 CD AC C8 */	li r6, lbl_81698D08@sda21
/* 81427FC0 | 9B 8D AC C8 */	stb r28, lbl_81698D08@sda21(r0)
/* 81427FC4 | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 81427FC8 | 38 B9 00 24 */	addi r5, r25, 0x24
/* 81427FCC | 9B 66 00 01 */	stb r27, 0x1(r6)
/* 81427FD0 | 38 6D AC C8 */	li r3, lbl_81698D08@sda21
/* 81427FD4 | 9B 66 00 02 */	stb r27, 0x2(r6)
/* 81427FD8 | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 81427FDC | 48 1D 10 05 */	bl __register_global_object
/* 81427FE0 | 38 CD AC CC */	li r6, lbl_81698D0C@sda21
/* 81427FE4 | 38 00 00 C0 */	li r0, 0xc0
/* 81427FE8 | 98 0D AC CC */	stb r0, lbl_81698D0C@sda21(r0)
/* 81427FEC | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 81427FF0 | 38 B9 00 30 */	addi r5, r25, 0x30
/* 81427FF4 | 38 6D AC CC */	li r3, lbl_81698D0C@sda21
/* 81427FF8 | 98 06 00 01 */	stb r0, 0x1(r6)
/* 81427FFC | 98 06 00 02 */	stb r0, 0x2(r6)
/* 81428000 | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 81428004 | 48 1D 0F DD */	bl __register_global_object
/* 81428008 | 38 CD AC D0 */	li r6, lbl_81698D10@sda21
/* 8142800C | 3B E0 00 64 */	li r31, 0x64
/* 81428010 | 9B 6D AC D0 */	stb r27, lbl_81698D10@sda21(r0)
/* 81428014 | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 81428018 | 38 B9 00 3C */	addi r5, r25, 0x3c
/* 8142801C | 38 6D AC D0 */	li r3, lbl_81698D10@sda21
/* 81428020 | 9B E6 00 01 */	stb r31, 0x1(r6)
/* 81428024 | 9B 66 00 02 */	stb r27, 0x2(r6)
/* 81428028 | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 8142802C | 48 1D 0F B5 */	bl __register_global_object
/* 81428030 | 38 CD AC D4 */	li r6, lbl_81698D14@sda21
/* 81428034 | 9B ED AC D4 */	stb r31, lbl_81698D14@sda21(r0)
/* 81428038 | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 8142803C | 38 B9 00 48 */	addi r5, r25, 0x48
/* 81428040 | 9B 46 00 01 */	stb r26, 0x1(r6)
/* 81428044 | 38 6D AC D4 */	li r3, lbl_81698D14@sda21
/* 81428048 | 9B 46 00 02 */	stb r26, 0x2(r6)
/* 8142804C | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 81428050 | 48 1D 0F 91 */	bl __register_global_object
/* 81428054 | 38 CD AC D8 */	li r6, lbl_81698D18@sda21
/* 81428058 | 9B 8D AC D8 */	stb r28, lbl_81698D18@sda21(r0)
/* 8142805C | 38 9D 4A D0 */	addi r4, r29, __dt__Q34nw4r2ut5ColorFv@l
/* 81428060 | 38 B9 00 54 */	addi r5, r25, 0x54
/* 81428064 | 9B C6 00 01 */	stb r30, 0x1(r6)
/* 81428068 | 38 6D AC D8 */	li r3, lbl_81698D18@sda21
/* 8142806C | 9B C6 00 02 */	stb r30, 0x2(r6)
/* 81428070 | 9B 86 00 03 */	stb r28, 0x3(r6)
/* 81428074 | 48 1D 0F 6D */	bl __register_global_object
/* 81428078 | 3C 60 81 66 */	lis r3, lbl_8165C840@ha
/* 8142807C | 80 0D 93 60 */	lwz r0, lbl_816973A0@sda21(r0)
/* 81428080 | 38 63 C8 40 */	addi r3, r3, lbl_8165C840@l
/* 81428084 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81428088 | 90 03 00 4C */	stw r0, 0x4c(r3)
/* 8142808C | 48 1D 14 79 */	bl _restgpr_25
/* 81428090 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81428094 | 7C 08 03 A6 */	mtlr r0
/* 81428098 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8142809C | 4E 80 00 20 */	blr
.endfn "__sinit_\\inputform_cpp"

# .text:0xC530 | 0x814280A0 | size: 0x8
# textinput::inputform::Base::@16@getScale() const
.fn "@16@getScale__Q39textinput9inputform4BaseCFv", global
/* 814280A0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280A4 | 4B FF 6E 74 */	b getScale__Q39textinput9inputform4BaseCFv
.endfn "@16@getScale__Q39textinput9inputform4BaseCFv"

# .text:0xC538 | 0x814280A8 | size: 0x8
# textinput::inputform::Base::@16@draw()
.fn "@16@draw__Q39textinput9inputform4BaseFv", global
/* 814280A8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280AC | 4B FF 6D 14 */	b draw__Q39textinput9inputform4BaseFv
.endfn "@16@draw__Q39textinput9inputform4BaseFv"

# .text:0xC540 | 0x814280B0 | size: 0x8
.fn "@536@__dt__Q39textinput9inputform12LayoutByNW4RFv", global
/* 814280B0 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 814280B4 | 4B FF D5 64 */	b __dt__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@536@__dt__Q39textinput9inputform12LayoutByNW4RFv"

# .text:0xC548 | 0x814280B8 | size: 0x8
# textinput::inputform::Base::@16@drawCursor(float, float)
.fn "@16@drawCursor__Q39textinput9inputform4BaseFff", global
/* 814280B8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280BC | 4B FF 84 44 */	b drawCursor__Q39textinput9inputform4BaseFff
.endfn "@16@drawCursor__Q39textinput9inputform4BaseFff"

# .text:0xC550 | 0x814280C0 | size: 0x8
# textinput::inputform::Base::@16@makeUpCursorPos(textinput::textdrawer::Base::CursorPos*, unsigned long, long, long)
.fn "@16@makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll", global
/* 814280C0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280C4 | 4B FF 6E 74 */	b makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
.endfn "@16@makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll"

# .text:0xC558 | 0x814280C8 | size: 0x8
# textinput::inputform::Base::@16@onCursor(textinput::textdrawer::Base::CursorPos*)
.fn "@16@onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos", global
/* 814280C8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280CC | 4B FF 7C 48 */	b onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos
.endfn "@16@onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos"

# .text:0xC560 | 0x814280D0 | size: 0x8
# textinput::inputform::Base::@16@doLineFeed()
.fn "@16@doLineFeed__Q39textinput9inputform4BaseFv", global
/* 814280D0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280D4 | 4B FF 7B A8 */	b doLineFeed__Q39textinput9inputform4BaseFv
.endfn "@16@doLineFeed__Q39textinput9inputform4BaseFv"

# .text:0xC568 | 0x814280D8 | size: 0x8
# textinput::inputform::Base::@16@finishDraw(unsigned long)
.fn "@16@finishDraw__Q39textinput9inputform4BaseFUl", global
/* 814280D8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280DC | 4B FF FC E4 */	b finishDraw__Q39textinput9inputform4BaseFUl
.endfn "@16@finishDraw__Q39textinput9inputform4BaseFUl"

# .text:0xC570 | 0x814280E0 | size: 0x8
# textinput::inputform::Base::@16@preDraw(unsigned long)
.fn "@16@preDraw__Q39textinput9inputform4BaseFUl", global
/* 814280E0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280E4 | 4B FF 73 E0 */	b preDraw__Q39textinput9inputform4BaseFUl
.endfn "@16@preDraw__Q39textinput9inputform4BaseFUl"

# .text:0xC578 | 0x814280E8 | size: 0x8
# textinput::inputform::Base::@16@doAfterDrawProcess(const wchar_t*, unsigned long, const textinput::textdrawer::Base::DrawInfo&)
.fn "@16@doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo", global
/* 814280E8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280EC | 4B FF FC D0 */	b doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
.endfn "@16@doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"

# .text:0xC580 | 0x814280F0 | size: 0x8
# textinput::inputform::Base::@16@doBeforeDrawProcess(const wchar_t*, unsigned long, const textinput::textdrawer::Base::DrawInfo&)
.fn "@16@doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo", global
/* 814280F0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280F4 | 4B FF 79 BC */	b doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
.endfn "@16@doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"

# .text:0xC588 | 0x814280F8 | size: 0x8
# textinput::inputform::LayoutByNW4R::@16@getScale() const
.fn "@16@getScale__Q39textinput9inputform12LayoutByNW4RCFv", global
/* 814280F8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814280FC | 4B FF EB 3C */	b getScale__Q39textinput9inputform12LayoutByNW4RCFv
.endfn "@16@getScale__Q39textinput9inputform12LayoutByNW4RCFv"

# .text:0xC590 | 0x81428100 | size: 0x8
# textinput::inputform::Base::@16@setFont(const nw4r::ut::Font&)
.fn "@16@setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font", global
/* 81428100 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 81428104 | 4B FF 72 BC */	b setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font
.endfn "@16@setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font"

# .text:0xC598 | 0x81428108 | size: 0x8
# textinput::inputform::LayoutByNW4R::@16@draw()
.fn "@16@draw__Q39textinput9inputform12LayoutByNW4RFv", global
/* 81428108 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 8142810C | 4B FF DE CC */	b draw__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@16@draw__Q39textinput9inputform12LayoutByNW4RFv"

# .text:0xC5A0 | 0x81428110 | size: 0x8
# textinput::inputform::Base::@16@create(MEMAllocator*)
.fn "@16@create__Q39textinput9inputform4BaseFP12MEMAllocator", global
/* 81428110 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 81428114 | 4B FF FC A4 */	b create__Q39textinput9inputform4BaseFP12MEMAllocator
.endfn "@16@create__Q39textinput9inputform4BaseFP12MEMAllocator"

# .text:0xC5A8 | 0x81428118 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@setRootPaneScaleFor4x3()
.fn "@536@setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv", global
/* 81428118 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8142811C | 4B FF F3 58 */	b setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@536@setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv"

# .text:0xC5B0 | 0x81428120 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@setRootPaneScaleFor16x9()
.fn "@536@setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv", global
/* 81428120 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 81428124 | 4B FF F3 14 */	b setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@536@setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv"

# .text:0xC5B8 | 0x81428128 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn "@536@updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv", global
/* 81428128 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8142812C | 4B FF E7 80 */	b updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv
.endfn "@536@updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv"

# .text:0xC5C0 | 0x81428130 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@updateInput(textinput::input::HKBManager&)
.fn "@536@updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager", global
/* 81428130 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 81428134 | 4B FF E9 E0 */	b updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager
.endfn "@536@updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager"

# .text:0xC5C8 | 0x81428138 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@calc()
.fn "@536@calc__Q39textinput9inputform12LayoutByNW4RFv", global
/* 81428138 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8142813C | 4B FF E0 64 */	b calc__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@536@calc__Q39textinput9inputform12LayoutByNW4RFv"

# .text:0xC5D0 | 0x81428140 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@draw()
.fn "@536@draw__Q39textinput9inputform12LayoutByNW4RFv", global
/* 81428140 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 81428144 | 4B FF DE 94 */	b draw__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@536@draw__Q39textinput9inputform12LayoutByNW4RFv"

# .text:0xC5D8 | 0x81428148 | size: 0x8
# textinput::inputform::LayoutByNW4R::@536@init()
.fn "@536@init__Q39textinput9inputform12LayoutByNW4RFv", global
/* 81428148 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8142814C | 4B FF DC 28 */	b init__Q39textinput9inputform12LayoutByNW4RFv
.endfn "@536@init__Q39textinput9inputform12LayoutByNW4RFv"

# 0x8160D1F4..0x8160D1F8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\inputform_cpp"

# 0x81614FE8..0x816152E0 | size: 0x2F8
.rodata
.balign 8

# .rodata:0x0 | 0x81614FE8 | size: 0x220
# textinput::inputform::csAninationFile
.obj csAninationFile__Q29textinput9inputform, local
	.4byte 0x00000000
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
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
	.4byte 0x00000000
.L_8161502C:
	.4byte 0x00000001
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
	.4byte 0x466F7563
	.4byte 0x75735F49
	.4byte 0x4E2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615070:
	.4byte 0x00000002
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
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
	.4byte 0x00000000
.L_816150B4:
	.4byte 0x00000003
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
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
	.4byte 0x00000000
.L_816150F8:
	.4byte 0x00000004
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
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
	.4byte 0x00000000
.L_8161513C:
	.4byte 0x00000005
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
	.4byte 0x46616465
	.4byte 0x5F494E2E
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
.L_81615180:
	.4byte 0x00000006
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
	.4byte 0x46616465
	.4byte 0x5F4F5554
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
.L_816151C4:
	.4byte 0x00000007
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F615F
	.4byte 0x4F66662E
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
.endobj csAninationFile__Q29textinput9inputform

# .rodata:0x220 | 0x81615208 | size: 0x24
# textinput::inputform::csVisiblePaneUEJ
.obj csVisiblePaneUEJ__Q29textinput9inputform, local
	.4byte 0x00010002
	.4byte lbl_8165C8C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816973A4
	.4byte lbl_816973AC
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csVisiblePaneUEJ__Q29textinput9inputform

# .rodata:0x244 | 0x8161522C | size: 0x24
# textinput::inputform::csVisiblePaneKOR
.obj csVisiblePaneKOR__Q29textinput9inputform, local
	.4byte 0x00010002
	.4byte lbl_816973A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816973AC
	.4byte lbl_8165C8C0
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csVisiblePaneKOR__Q29textinput9inputform

# .rodata:0x268 | 0x81615250 | size: 0x28
# textinput::inputform::csVisiblePaneCHN
.obj csVisiblePaneCHN__Q29textinput9inputform, local
	.4byte 0x00010002
	.4byte lbl_816973AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_816973A4
	.4byte lbl_8165C8C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csVisiblePaneCHN__Q29textinput9inputform

# .rodata:0x290 | 0x81615278 | size: 0x10
# textinput::inputform::csLanguageDependencyDataUEJ
.obj csLanguageDependencyDataUEJ__Q29textinput9inputform, local
	.4byte csVisiblePaneUEJ__Q29textinput9inputform
	.4byte lbl_8165C8CC
	.4byte lbl_8165C8E0
	.4byte lbl_8165C8F0
.endobj csLanguageDependencyDataUEJ__Q29textinput9inputform

# .rodata:0x2A0 | 0x81615288 | size: 0x10
# textinput::inputform::csLanguageDependencyDataKOR
.obj csLanguageDependencyDataKOR__Q29textinput9inputform, local
	.4byte csVisiblePaneKOR__Q29textinput9inputform
	.4byte lbl_8165C900
	.4byte lbl_8165C918
	.4byte lbl_8165C928
.endobj csLanguageDependencyDataKOR__Q29textinput9inputform

# .rodata:0x2B0 | 0x81615298 | size: 0x10
# textinput::inputform::csLanguageDependencyDataCHN
.obj csLanguageDependencyDataCHN__Q29textinput9inputform, local
	.4byte csVisiblePaneCHN__Q29textinput9inputform
	.4byte lbl_8165C938
	.4byte lbl_8165C950
	.4byte lbl_8165C960
.endobj csLanguageDependencyDataCHN__Q29textinput9inputform

# .rodata:0x2C0 | 0x816152A8 | size: 0x28
.obj pppURLCheck, local
	.4byte 0x00680074
	.4byte 0x00740070
	.4byte 0x003A002F
	.4byte 0x002F0000
	.4byte 0x00000000
	.4byte 0x00680074
	.4byte 0x00740070
	.4byte 0x0073003A
	.4byte 0x002F002F
	.4byte 0x00000000
.endobj pppURLCheck

# .rodata:0x2E8 | 0x816152D0 | size: 0x10
.obj lbl_816152D0, local
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816152D0

# 0x8165C820..0x8165D2D0 | size: 0xAB0
.data
.balign 8

# .data:0x0 | 0x8165C820 | size: 0x10
.obj lbl_8165C820, global
	.4byte 0x505F7478
	.4byte 0x74536372
	.4byte 0x6C6C5F55
	.4byte 0x50000000
.endobj lbl_8165C820

# .data:0x10 | 0x8165C830 | size: 0x10
.obj lbl_8165C830, global
	.string "P_txtScrll_DOWN"
.endobj lbl_8165C830

# .data:0x20 | 0x8165C840 | size: 0x80
.obj lbl_8165C840, global
	.4byte 0x00000000
	.4byte lbl_8165C820
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput9inputform
	.rel csAninationFile__Q29textinput9inputform, .L_8161502C
	.rel csAninationFile__Q29textinput9inputform, .L_81615070
	.rel csAninationFile__Q29textinput9inputform, .L_816150B4
	.rel csAninationFile__Q29textinput9inputform, .L_816150F8
	.rel csAninationFile__Q29textinput9inputform, .L_8161513C
	.rel csAninationFile__Q29textinput9inputform, .L_81615180
	.rel csAninationFile__Q29textinput9inputform, .L_816151C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165C830
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput9inputform
	.rel csAninationFile__Q29textinput9inputform, .L_8161502C
	.rel csAninationFile__Q29textinput9inputform, .L_81615070
	.rel csAninationFile__Q29textinput9inputform, .L_816150B4
	.rel csAninationFile__Q29textinput9inputform, .L_816150F8
	.rel csAninationFile__Q29textinput9inputform, .L_8161513C
	.rel csAninationFile__Q29textinput9inputform, .L_81615180
	.rel csAninationFile__Q29textinput9inputform, .L_816151C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8165C840

# .data:0xA0 | 0x8165C8C0 | size: 0xC
.obj lbl_8165C8C0, global
	.string "N_JPNUSAEUR"
.endobj lbl_8165C8C0

# .data:0xAC | 0x8165C8CC | size: 0x14
.obj lbl_8165C8CC, global
	.4byte 0x4E5F7365
	.4byte 0x70617261
	.4byte 0x74654261
	.4byte 0x72416C6C
	.4byte 0x00000000
.endobj lbl_8165C8CC

# .data:0xC0 | 0x8165C8E0 | size: 0x10
.obj lbl_8165C8E0, global
	.4byte 0x545F326C
	.4byte 0x5F546578
	.4byte 0x74426F78
	.4byte 0x00000000
.endobj lbl_8165C8E0

# .data:0xD0 | 0x8165C8F0 | size: 0x10
.obj lbl_8165C8F0, global
	.string "T_title_textJPN"
.endobj lbl_8165C8F0

# .data:0xE0 | 0x8165C900 | size: 0x18
.obj lbl_8165C900, global
	.4byte 0x4E5F7365
	.4byte 0x70617261
	.4byte 0x74654261
	.4byte 0x724B4F52
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8165C900

# .data:0xF8 | 0x8165C918 | size: 0x10
.obj lbl_8165C918, global
	.string "T_2l_TextBoxKOR"
.endobj lbl_8165C918

# .data:0x108 | 0x8165C928 | size: 0x10
.obj lbl_8165C928, global
	.string "T_title_textKOR"
.endobj lbl_8165C928

# .data:0x118 | 0x8165C938 | size: 0x18
.obj lbl_8165C938, global
	.4byte 0x4E5F7365
	.4byte 0x70617261
	.4byte 0x74654261
	.4byte 0x7243484E
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8165C938

# .data:0x130 | 0x8165C950 | size: 0x10
.obj lbl_8165C950, global
	.string "T_2l_TextBoxCHN"
.endobj lbl_8165C950

# .data:0x140 | 0x8165C960 | size: 0x10
.obj lbl_8165C960, global
	.string "T_title_textCHN"
.endobj lbl_8165C960

# .data:0x150 | 0x8165C970 | size: 0x20
.obj lbl_8165C970, global
	.2byte 0x00A4
	.2byte 0x00AC
	.2byte 0x00AF
	.2byte 0x00B2
	.2byte 0x00B3
	.2byte 0x00B6
	.2byte 0x00B8
	.2byte 0x00B9
	.2byte 0x00BC
	.2byte 0x00BD
	.2byte 0x00BE
	.2byte 0x00D0
	.2byte 0x00DE
	.2byte 0x00F0
	.2byte 0x00FE
	.2byte 0x0000
.endobj lbl_8165C970

# .data:0x170 | 0x8165C990 | size: 0xA0
.obj jumptable_8165C990, local
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C078
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C080
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C088
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C090
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C098
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0A0
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0A8
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B4
	.rel ToIndependentClass__Q39textinput9inputform13DeadKeyStreamFw, .L_8141C0B0
.endobj jumptable_8165C990

# .data:0x210 | 0x8165CA30 | size: 0x28
.obj jumptable_8165CA30, local
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C780
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C794
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C7A8
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C82C
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C7BC
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C7D0
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C7F8
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C7E4
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C860
	.rel setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language, .L_8141C874
.endobj jumptable_8165CA30

# .data:0x238 | 0x8165CA58 | size: 0x34
.obj jumptable_8165CA58, local
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E6C0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E458
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E560
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E57C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E598
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E5B4
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E5D0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E5EC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E608
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E624
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E640
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E65C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E678
.endobj jumptable_8165CA58

# .data:0x26C | 0x8165CA8C | size: 0xC0
.obj jumptable_8165CA8C, local
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141CD5C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141D2E0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141D55C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DB68
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DB98
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DB54
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141D5D4
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DC50
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DC84
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DCB8
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DCD0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DD04
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DE44
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DEE4
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DFB4
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E168
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E1F0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E20C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E010
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E228
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E240
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141DCE8
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E2A8
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E2D4
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E300
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E314
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E340
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E6E0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E7CC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E7E0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E89C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E9BC
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E830
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E88C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141CA38
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E844
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E850
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E85C
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E868
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E880
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E8F0
	.rel onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_8141E898
.endobj jumptable_8165CA8C

# .data:0x32C | 0x8165CB4C | size: 0x94
.obj jumptable_8165CB4C, local
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814224B8
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422138
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422518
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814224DC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814225A8
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422154
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814222EC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422528
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422548
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422568
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_81422588
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_814226AC
	.rel onHKBCtrlCode__Q39textinput9inputform4BaseFQ29textinput7HVKCodeUl, .L_8142237C
.endobj jumptable_8165CB4C

# .data:0x3C0 | 0x8165CBE0 | size: 0x34
.obj lbl_8165CBE0, global
	.4byte 0x545F326C
	.4byte 0x5F546578
	.4byte 0x74426F78
	.4byte 0x00000000
	.4byte 0x5265766F
	.4byte 0x49706C5F
	.4byte 0x526F6469
	.4byte 0x6E4E544C
	.4byte 0x4750726F
	.4byte 0x4D5F3332
	.4byte 0x5F49342E
	.4byte 0x6272666E
	.4byte 0x74000000
.endobj lbl_8165CBE0

# .data:0x3F4 | 0x8165CC14 | size: 0x14
.obj lbl_8165CC14, global
	.4byte 0x505F7478
	.4byte 0x74536372
	.4byte 0x6C6C5F55
	.4byte 0x50000000
	.4byte 0x00000000
.endobj lbl_8165CC14

# .data:0x408 | 0x8165CC28 | size: 0x24
.obj lbl_8165CC28, global
	.4byte 0x505F7478
	.4byte 0x74536372
	.4byte 0x6C6C5F44
	.4byte 0x4F574E00
	.4byte 0x4E5F7365
	.4byte 0x70617261
	.4byte 0x74654261
	.4byte 0x72416C6C
	.4byte 0x00000000
.endobj lbl_8165CC28

# .data:0x42C | 0x8165CC4C | size: 0x10
.obj lbl_8165CC4C, global
	.4byte 0x545F7469
	.4byte 0x746C655F
	.4byte 0x74657874
	.4byte 0x00000000
.endobj lbl_8165CC4C

# .data:0x43C | 0x8165CC5C | size: 0x1C
.obj jumptable_8165CC5C, local
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427C64
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427C88
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427CF0
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427CCC
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427D34
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427C20
	.rel onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_81427D78
.endobj jumptable_8165CC5C

# .data:0x458 | 0x8165CC78 | size: 0x2C
# textinput::inputform::NormalButtonAnmPane::__vtable
.obj __vt__Q39textinput9inputform19NormalButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput9inputform7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput9inputform19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput9inputform7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput9inputform19NormalButtonAnmPaneFv
	.4byte getKeyType__Q39textinput9inputform7AnmPaneCFv
	.4byte getState__Q39textinput9inputform7AnmPaneFv
.endobj __vt__Q39textinput9inputform19NormalButtonAnmPane

# .data:0x484 | 0x8165CCA4 | size: 0x2C
# textinput::inputform::AnmPane::__vtable
.obj __vt__Q39textinput9inputform7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput9inputform7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput9inputform7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput9inputform7AnmPaneFv
	.4byte getKeyType__Q39textinput9inputform7AnmPaneCFv
	.4byte getState__Q39textinput9inputform7AnmPaneFv
.endobj __vt__Q39textinput9inputform7AnmPane

# .data:0x4B0 | 0x8165CCD0 | size: 0x20
# textinput::inputform::EventHandler::__vtable
.obj __vt__Q39textinput9inputform12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput9inputform12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q39textinput9inputform12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q39textinput9inputform12EventHandler

# .data:0x4D0 | 0x8165CCF0 | size: 0x240
# textinput::inputform::LayoutByNW4R::__vtable
.obj __vt__Q39textinput9inputform12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput9inputform12LayoutByNW4RFv
	.4byte create__Q39textinput9inputform4BaseFP12MEMAllocator
	.4byte init__Q39textinput9inputform12LayoutByNW4RFv
	.4byte clearSender__Q29textinput15CommandReceiverFv
	.4byte onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@16@create__Q39textinput9inputform4BaseFP12MEMAllocator"
	.4byte draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte "@16@draw__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl
	.4byte setAspectRatio__Q39textinput10textdrawer4BaseFb
	.4byte setVIWidth__Q39textinput10textdrawer4BaseFf
	.4byte beginDraw__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Rect
	.4byte endDraw__Q39textinput10textdrawer4BaseFv
	.4byte getLineHeight__Q39textinput10textdrawer4BaseFv
	.4byte "@16@setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font"
	.4byte getWidth__Q39textinput10textdrawer4BaseFPCw
	.4byte getLine__Q39textinput10textdrawer4BaseFv
	.4byte "@16@getScale__Q39textinput9inputform12LayoutByNW4RCFv"
	.4byte setSecretModeOn__Q39textinput10textdrawer4BaseFb
	.4byte "@16@doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@preDraw__Q39textinput9inputform4BaseFUl"
	.4byte "@16@finishDraw__Q39textinput9inputform4BaseFUl"
	.4byte "@16@doLineFeed__Q39textinput9inputform4BaseFv"
	.4byte put__Q39textinput10textdrawer4BaseFw
	.4byte procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl
	.4byte "@16@onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos"
	.4byte "@16@makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll"
	.4byte "@16@drawCursor__Q39textinput9inputform4BaseFff"
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
	.4byte create__Q39textinput9inputform12LayoutByNW4RFP12MEMAllocatorPQ39textinput9inputform10EditBuffer
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
	.4byte isInScroll__Q39textinput9inputform4BaseFv
	.4byte setAtokDictionary__Q39textinput9inputform4BaseFPviPviPvi
	.4byte closeAtokDictionary__Q39textinput9inputform4BaseFv
	.4byte isAtokDictionaryOpened__Q39textinput9inputform4BaseFv
	.4byte enableSpaceByRight__Q39textinput9inputform4BaseFb
	.4byte onClose__Q39textinput9inputform4BaseFv
	.4byte canConvert__Q39textinput9inputform4BaseFv
	.4byte setString__Q39textinput9inputform4BaseFPCw
	.4byte draw__Q39textinput9inputform12LayoutByNW4RFv
	.4byte calc__Q39textinput9inputform12LayoutByNW4RFv
	.4byte doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte preDraw__Q39textinput9inputform4BaseFUl
	.4byte finishDraw__Q39textinput9inputform4BaseFUl
	.4byte doLineFeed__Q39textinput9inputform4BaseFv
	.4byte onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte isOverLine__Q39textinput9inputform4BaseFRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte drawCursor__Q39textinput9inputform4BaseFff
	.4byte doScroll__Q39textinput9inputform4BaseFPQ39textinput15CommandReceiver6Scroll
	.4byte autoScroll__Q39textinput9inputform4BaseFv
	.4byte doWordWrap__Q39textinput9inputform4BaseFPCwUlf
	.4byte drawFixString__Q39textinput9inputform4BaseFUl
	.4byte onSE__Q39textinput9inputform12LayoutByNW4RFQ39textinput5sound2SE
	.4byte clear__Q39textinput9inputform4BaseFv
	.4byte calcCursorPos__Q39textinput9inputform4BaseFff
	.4byte getGlobalLeftTopPos__Q39textinput9inputform4BaseCFv
	.4byte getScale__Q39textinput9inputform12LayoutByNW4RCFv
	.4byte moveCursorUp__Q39textinput9inputform4BaseFv
	.4byte moveCursorDown__Q39textinput9inputform4BaseFv
	.4byte onPressUp__Q39textinput9inputform4BaseFv
	.4byte onPressDown__Q39textinput9inputform4BaseFv
	.4byte onPressLeft__Q39textinput9inputform4BaseFv
	.4byte onPressRight__Q39textinput9inputform4BaseFv
	.4byte makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@536@__dt__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@536@init__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@536@draw__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte "@536@calc__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte "@536@updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv"
	.4byte "@536@updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager"
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
	.4byte updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv
	.4byte updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager
	.4byte isAbleToUp__Q39textinput9inputform12LayoutByNW4RFv
	.4byte isAbleToDown__Q39textinput9inputform12LayoutByNW4RFv
	.4byte setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv
	.4byte setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv
	.4byte visibleSeparator__Q39textinput9inputform12LayoutByNW4RFb
.endobj __vt__Q39textinput9inputform12LayoutByNW4R

# .data:0x710 | 0x8165CF30 | size: 0x1A8
# textinput::inputform::Base::__vtable
.obj __vt__Q39textinput9inputform4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput9inputform4BaseFv
	.4byte create__Q39textinput9inputform4BaseFP12MEMAllocator
	.4byte init__Q39textinput9inputform4BaseFv
	.4byte clearSender__Q29textinput15CommandReceiverFv
	.4byte onCommand__Q39textinput9inputform4BaseFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@16@create__Q39textinput9inputform4BaseFP12MEMAllocator"
	.4byte draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte "@16@draw__Q39textinput9inputform4BaseFv"
	.4byte setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl
	.4byte setAspectRatio__Q39textinput10textdrawer4BaseFb
	.4byte setVIWidth__Q39textinput10textdrawer4BaseFf
	.4byte beginDraw__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Rect
	.4byte endDraw__Q39textinput10textdrawer4BaseFv
	.4byte getLineHeight__Q39textinput10textdrawer4BaseFv
	.4byte "@16@setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font"
	.4byte getWidth__Q39textinput10textdrawer4BaseFPCw
	.4byte getLine__Q39textinput10textdrawer4BaseFv
	.4byte "@16@getScale__Q39textinput9inputform4BaseCFv"
	.4byte setSecretModeOn__Q39textinput10textdrawer4BaseFb
	.4byte "@16@doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@preDraw__Q39textinput9inputform4BaseFUl"
	.4byte "@16@finishDraw__Q39textinput9inputform4BaseFUl"
	.4byte "@16@doLineFeed__Q39textinput9inputform4BaseFv"
	.4byte put__Q39textinput10textdrawer4BaseFw
	.4byte procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl
	.4byte "@16@onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos"
	.4byte "@16@makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll"
	.4byte "@16@drawCursor__Q39textinput9inputform4BaseFff"
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
	.4byte create__Q39textinput9inputform4BaseFP12MEMAllocatorPQ39textinput9inputform10EditBuffer
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
	.4byte setLanguage__Q39textinput9inputform4BaseFQ29textinput8Language
	.4byte setPredictMode__Q39textinput9inputform4BaseFQ49textinput9inputform4Base11PredictMode
	.4byte getPredictMode__Q39textinput9inputform4BaseFv
	.4byte isOverRowLimit__Q39textinput9inputform4BaseFUlPCw
	.4byte findURL__Q39textinput9inputform4BaseFPUlPUlPCwUlUl
	.4byte isInScroll__Q39textinput9inputform4BaseFv
	.4byte setAtokDictionary__Q39textinput9inputform4BaseFPviPviPvi
	.4byte closeAtokDictionary__Q39textinput9inputform4BaseFv
	.4byte isAtokDictionaryOpened__Q39textinput9inputform4BaseFv
	.4byte enableSpaceByRight__Q39textinput9inputform4BaseFb
	.4byte onClose__Q39textinput9inputform4BaseFv
	.4byte canConvert__Q39textinput9inputform4BaseFv
	.4byte setString__Q39textinput9inputform4BaseFPCw
	.4byte draw__Q39textinput9inputform4BaseFv
	.4byte calc__Q39textinput9inputform4BaseFv
	.4byte doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte preDraw__Q39textinput9inputform4BaseFUl
	.4byte finishDraw__Q39textinput9inputform4BaseFUl
	.4byte doLineFeed__Q39textinput9inputform4BaseFv
	.4byte onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte isOverLine__Q39textinput9inputform4BaseFRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte drawCursor__Q39textinput9inputform4BaseFff
	.4byte doScroll__Q39textinput9inputform4BaseFPQ39textinput15CommandReceiver6Scroll
	.4byte autoScroll__Q39textinput9inputform4BaseFv
	.4byte doWordWrap__Q39textinput9inputform4BaseFPCwUlf
	.4byte drawFixString__Q39textinput9inputform4BaseFUl
	.4byte onSE__Q39textinput9inputform4BaseFQ39textinput5sound2SE
	.4byte clear__Q39textinput9inputform4BaseFv
	.4byte calcCursorPos__Q39textinput9inputform4BaseFff
	.4byte getGlobalLeftTopPos__Q39textinput9inputform4BaseCFv
	.4byte getScale__Q39textinput9inputform4BaseCFv
	.4byte moveCursorUp__Q39textinput9inputform4BaseFv
	.4byte moveCursorDown__Q39textinput9inputform4BaseFv
	.4byte onPressUp__Q39textinput9inputform4BaseFv
	.4byte onPressDown__Q39textinput9inputform4BaseFv
	.4byte onPressLeft__Q39textinput9inputform4BaseFv
	.4byte onPressRight__Q39textinput9inputform4BaseFv
	.4byte makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
.endobj __vt__Q39textinput9inputform4Base

# .data:0x8B8 | 0x8165D0D8 | size: 0x10
# textinput::inputform::EditBuffer::__vtable
.obj __vt__Q39textinput9inputform10EditBuffer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput9inputform10EditBufferFv
	.4byte 0x00000000
.endobj __vt__Q39textinput9inputform10EditBuffer

# .data:0x8C8 | 0x8165D0E8 | size: 0x140
# textinput::tistring::WithAtok::__vtable
.obj __vt__Q39textinput8tistring8WithAtok, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput8tistring8WithAtokFv
	.4byte create__Q39textinput8tistring10StringBaseFP12MEMAllocator
	.4byte pushBack__Q39textinput8tistring8WithAtokFw
	.4byte popBack__Q39textinput8tistring8WithAtokFv
	.4byte clear__Q39textinput8tistring9DecolatedFv
	.4byte getLength__Q39textinput8tistring10StringBaseCFv
	.4byte append__Q39textinput8tistring10StringBaseFPCw
	.4byte insert__Q39textinput8tistring10StringBaseFUsPCw
	.4byte remove__Q39textinput8tistring10StringBaseFUsUs
	.4byte replace__Q39textinput8tistring10StringBaseFUsUsPCw
	.4byte set__Q39textinput8tistring9DecolatedFPCw
	.4byte setAt__Q39textinput8tistring10StringBaseFUsw
	.4byte setLength__Q39textinput8tistring9DecolatedFUs
	.4byte getWCString__Q39textinput8tistring10StringBaseCFv
	.4byte setCandidate__Q39textinput8tistring10StringBaseFw
	.4byte getCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte hasCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte getLastWChar__Q39textinput8tistring10StringBaseFv
	.4byte inputChar__Q39textinput8tistring8WithAtokFw
	.4byte inputString__Q39textinput8tistring9DecolatedFPCw
	.4byte deleteChar__Q39textinput8tistring9DecolatedFv
	.4byte backSpace__Q39textinput8tistring8WithAtokFv
	.4byte confirm__Q39textinput8tistring8WithAtokFPCw
	.4byte moveCursorRight__Q39textinput8tistring8WithAtokFv
	.4byte moveCursorLeft__Q39textinput8tistring8WithAtokFv
	.4byte setCursorPos__Q39textinput8tistring9DecolatedFUl
	.4byte onSustain__Q39textinput8tistring9DecolatedFv
	.4byte offSustain__Q39textinput8tistring9DecolatedFv
	.4byte isOnSustain__Q39textinput8tistring9DecolatedFv
	.4byte getCursorPos__Q39textinput8tistring9DecolatedCFv
	.4byte getCursorPos__Q39textinput8tistring8WithAtokFPUlPUl
	.4byte canBackSpace__Q39textinput8tistring9DecolatedFv
	.4byte deleteForward__Q39textinput8tistring9DecolatedFv
	.4byte getSelected__Q39textinput8tistring9DecolatedFRUlRUl
	.4byte getWCharAtCursor__Q39textinput8tistring9DecolatedFv
	.4byte replaceAtCursor__Q39textinput8tistring9DecolatedFw
	.4byte isDakuten__Q39textinput8tistring9DecolatedFv
	.4byte converDakuten__Q39textinput8tistring9DecolatedFv
	.4byte isHandaku__Q39textinput8tistring9DecolatedFv
	.4byte converHandaku__Q39textinput8tistring9DecolatedFv
	.4byte convertAll__Q39textinput8tistring9DecolatedFv
	.4byte isSmall__Q39textinput8tistring9DecolatedFv
	.4byte converSmall__Q39textinput8tistring9DecolatedFv
	.4byte atTheBeginningOfASentence__Q39textinput8tistring9DecolatedFv
	.4byte initKanaConverter__Q39textinput8tistring9DecolatedFv
	.4byte getKanaBuffer__Q39textinput8tistring9DecolatedFv
	.4byte isKanaFix__Q39textinput8tistring9DecolatedCFv
	.4byte confirmKana__Q39textinput8tistring9DecolatedFv
	.4byte clearKana__Q39textinput8tistring9DecolatedFv
	.4byte EnableKSXFilter__Q39textinput8tistring9DecolatedFb
	.4byte isFix__Q39textinput8tistring8WithAtokFv
	.4byte setFix__Q39textinput8tistring8WithAtokFb
	.4byte initConverting__Q39textinput8tistring8WithAtokFv
	.4byte isConverting__Q39textinput8tistring8WithAtokFv
	.4byte getConfirmedWCString__Q39textinput8tistring8WithAtokCFv
	.4byte getCurrentNumPredicted__Q39textinput8tistring8WithAtokFv
	.4byte getPredicted__Q39textinput8tistring8WithAtokFiPw
	.4byte commitPredicted__Q39textinput8tistring8WithAtokFi
	.4byte setSelectedCandidate__Q39textinput8tistring8WithAtokFl
	.4byte isCandidateSelected__Q39textinput8tistring8WithAtokFv
	.4byte getSelectedCandidate__Q39textinput8tistring8WithAtokFv
	.4byte init__Q39textinput8tistring8WithAtokFv
	.4byte setInputting__Q39textinput8tistring8WithAtokFw
	.4byte getDrawString__Q39textinput8tistring8WithAtokFRQ49textinput8tistring8WithAtok8DrawInfo
	.4byte openDictionary__Q39textinput8tistring8WithAtokFPviPviPvi
	.4byte closeDictionary__Q39textinput8tistring8WithAtokFv
	.4byte hasConfirmedString__Q39textinput8tistring8WithAtokFv
	.4byte enableConfirmedString__Q39textinput8tistring8WithAtokFb
	.4byte startConverting__Q39textinput8tistring8WithAtokFv
	.4byte isDictionaryOpened__Q39textinput8tistring8WithAtokFv
	.4byte changeKanaMode__Q39textinput8tistring8WithAtokFb
	.4byte getInputStringLength__Q39textinput8tistring8WithAtokFv
	.4byte resetRelation__Q39textinput8tistring8WithAtokFv
	.4byte setFixMode__Q39textinput8tistring8WithAtokFb
	.4byte setFixPrediction__Q39textinput8tistring8WithAtokFiPPCc
	.4byte setDefaultPrediction__Q39textinput8tistring8WithAtokFiPPCc
	.4byte getSelectedConverting__Q39textinput8tistring8WithAtokFv
	.4byte getFixedPredictionNum__Q39textinput8tistring8WithAtokFv
.endobj __vt__Q39textinput8tistring8WithAtok

# .data:0xA08 | 0x8165D228 | size: 0x30
# textinput::Base::__vtable
.obj __vt__Q29textinput4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q29textinput4BaseFv
	.4byte create__Q29textinput4BaseFP12MEMAllocator
	.4byte init__Q29textinput4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q29textinput4Base

# .data:0xA38 | 0x8165D258 | size: 0x24
# textinput::util::Animation::__vtable
.obj __vt__Q39textinput4util9Animation, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte startAnm__Q39textinput4util9AnimationFfffPQ39textinput4util12AnimObserverPv
	.4byte calc__Q39textinput4util9AnimationFv
	.4byte getValue__Q39textinput4util9AnimationFv
	.4byte isActive__Q39textinput4util9AnimationFv
	.4byte setSEFlag__Q39textinput4util9AnimationFb
	.4byte isSEFlag__Q39textinput4util9AnimationFv
	.4byte stop__Q39textinput4util9AnimationFv
.endobj __vt__Q39textinput4util9Animation

# .data:0xA5C | 0x8165D27C | size: 0x10
.obj lbl_8165D258, global
	.4byte 0x4F75744F
	.4byte 0x664C656E
	.4byte 0x6774680A
	.4byte 0x00000000
.endobj lbl_8165D258

# .data:0xA6C | 0x8165D28C | size: 0x44
# nw4r::lyt::TextBox::@STRING@GetTextColor(unsigned long) const
.obj "@STRING@GetTextColor__Q34nw4r3lyt7TextBoxCFUl", global
	.4byte 0x4572726F
	.4byte 0x72233030
	.4byte 0x340A416E
	.4byte 0x20657272
	.4byte 0x6F722068
	.4byte 0x6173206F
	.4byte 0x63637572
	.4byte 0x7265642E
	.4byte 0x0A546865
	.4byte 0x20737973
	.4byte 0x74656D20
	.4byte 0x66696C65
	.4byte 0x73206172
	.4byte 0x6520636F
	.4byte 0x72727570
	.4byte 0x7465642E
	.4byte 0x00000000
.endobj "@STRING@GetTextColor__Q34nw4r3lyt7TextBoxCFUl"

# 0x81694D28..0x81694D90 | size: 0x68
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694D28 | size: 0x4
.obj lbl_81694D28, global
	.float 0
.endobj lbl_81694D28

# .sdata2:0x4 | 0x81694D2C | size: 0x4
.obj lbl_81694D2C, global
	.float 640
.endobj lbl_81694D2C

# .sdata2:0x8 | 0x81694D30 | size: 0x8
.obj lbl_81694D30, global
	.double 4503601774854144
.endobj lbl_81694D30

# .sdata2:0x10 | 0x81694D38 | size: 0x4
.obj lbl_81694D38, global
	.float 1
.endobj lbl_81694D38

# .sdata2:0x14 | 0x81694D3C | size: 0x4
.obj lbl_81694D3C, global
	.float 0.5
.endobj lbl_81694D3C

# .sdata2:0x18 | 0x81694D40 | size: 0x4
.obj lbl_81694D40, global
	.float 0.7111111
.endobj lbl_81694D40

# .sdata2:0x1C | 0x81694D44 | size: 0x4
.obj lbl_81694D44, global
	.float 150
.endobj lbl_81694D44

# .sdata2:0x20 | 0x81694D48 | size: 0x4
.obj lbl_81694D48, global
	.float 30
.endobj lbl_81694D48

# .sdata2:0x24 | 0x81694D4C | size: 0x4
.obj lbl_81694D4C, global
	.float 50
.endobj lbl_81694D4C

# .sdata2:0x28 | 0x81694D50 | size: 0x4
.obj lbl_81694D50, global
	.float 10
.endobj lbl_81694D50

# .sdata2:0x2C | 0x81694D54 | size: 0x4
.obj lbl_81694D54, global
	.float 52
.endobj lbl_81694D54

# .sdata2:0x30 | 0x81694D58 | size: 0x4
.obj lbl_81694D58, global
	.float 2
.endobj lbl_81694D58

# .sdata2:0x34 | 0x81694D5C | size: 0x4
.obj lbl_81694D5C, global
	.float 140
.endobj lbl_81694D5C

# .sdata2:0x38 | 0x81694D60 | size: 0x4
.obj lbl_81694D60, global
	.float 90
.endobj lbl_81694D60

# .sdata2:0x3C | 0x81694D64 | size: 0x4
.obj lbl_81694D64, global
	.float 253
.endobj lbl_81694D64

# .sdata2:0x40 | 0x81694D68 | size: 0x4
.obj lbl_81694D68, global
	.float 20
.endobj lbl_81694D68

# .sdata2:0x44 | 0x81694D6C | size: 0x1
.obj lbl_81694D6C, global
	.byte 0xFF
.endobj lbl_81694D6C

# .sdata2:0x45 | 0x81694D6D | size: 0x1
.obj lbl_81694D6D, global
	.byte 0x32
.endobj lbl_81694D6D

# .sdata2:0x46 | 0x81694D6E | size: 0x1
.obj lbl_81694D6E, global
	.byte 0x32
.endobj lbl_81694D6E

# .sdata2:0x47 | 0x81694D6F | size: 0x1
.obj lbl_81694D6F, global
	.byte 0x00
.endobj lbl_81694D6F

# .sdata2:0x48 | 0x81694D70 | size: 0x4
.obj lbl_81694D70, global
	.float 255
.endobj lbl_81694D70

# .sdata2:0x4C | 0x81694D74 | size: 0x4
.obj lbl_81694D74, global
	.float 127
.endobj lbl_81694D74

# .sdata2:0x50 | 0x81694D78 | size: 0x4
.obj lbl_81694D78, global
	.float 14592
.endobj lbl_81694D78

# .sdata2:0x54 | 0x81694D7C | size: 0x4
.obj gap_09_81694D7C_sdata2, global
.hidden gap_09_81694D7C_sdata2
	.4byte 0x00000000
.endobj gap_09_81694D7C_sdata2

# .sdata2:0x58 | 0x81694D80 | size: 0x8
.obj lbl_81694D80, global
	.double 4503599627370496
.endobj lbl_81694D80

# .sdata2:0x60 | 0x81694D88 | size: 0x4
.obj lbl_81694D88, global
	.float 15
.endobj lbl_81694D88

# .sdata2:0x64 | 0x81694D8C | size: 0x4
.obj gap_09_81694D8C_sdata2, global
.hidden gap_09_81694D8C_sdata2
	.4byte 0x00000000
.endobj gap_09_81694D8C_sdata2

# 0x81697398..0x816973C8 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697398 | size: 0x4
.obj lbl_81697398, global
	.4byte 0x80FF80FF
.endobj lbl_81697398

# .sdata:0x4 | 0x8169739C | size: 0x4
.obj lbl_8169739C, global
	.4byte 0xFFD20CFF
.endobj lbl_8169739C

# .sdata:0x8 | 0x816973A0 | size: 0x4
.obj lbl_816973A0, global
	.4byte lbl_8165C820
.endobj lbl_816973A0

# .sdata:0xC | 0x816973A4 | size: 0x8
.obj lbl_816973A4, global
	.4byte 0x4E5F4B4F
	.4byte 0x52000000
.endobj lbl_816973A4

# .sdata:0x14 | 0x816973AC | size: 0x6
.obj lbl_816973AC, global
	.string "N_CHN"
.endobj lbl_816973AC

# .sdata:0x1A | 0x816973B2 | size: 0x1
.obj lbl_816973B2, global
	.byte 0x01
.endobj lbl_816973B2

# .sdata:0x1B | 0x816973B3 | size: 0x1
.obj lbl_816973B3, global
	.byte 0x01
.endobj lbl_816973B3

# .sdata:0x1C | 0x816973B4 | size: 0x4
.obj lbl_816973B4, global
	.4byte 0x00000000
.endobj lbl_816973B4

# .sdata:0x20 | 0x816973B8 | size: 0x8
.obj lbl_816973B8, global
	.string "N_2line"
.endobj lbl_816973B8

# .sdata:0x28 | 0x816973C0 | size: 0x4
.obj lbl_816973C0, global
	.4byte lbl_8165D2D0
.endobj lbl_816973C0

# .sdata:0x2C | 0x816973C4 | size: 0x4
.obj lbl_816973C4, global
	.4byte lbl_8165D2E0
.endobj lbl_816973C4

# 0x81698D00..0x81698D20 | size: 0x20
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D00 | size: 0x1
.obj lbl_81698D00, global
	.skip 0x1
.endobj lbl_81698D00

# .sbss:0x1 | 0x81698D01 | size: 0x3
.obj gap_12_81698D01_sbss, global
.hidden gap_12_81698D01_sbss
	.skip 0x3
.endobj gap_12_81698D01_sbss

# .sbss:0x4 | 0x81698D04 | size: 0x1
.obj lbl_81698D04, global
	.skip 0x1
.endobj lbl_81698D04

# .sbss:0x5 | 0x81698D05 | size: 0x3
.obj gap_12_81698D05_sbss, global
.hidden gap_12_81698D05_sbss
	.skip 0x3
.endobj gap_12_81698D05_sbss

# .sbss:0x8 | 0x81698D08 | size: 0x1
.obj lbl_81698D08, global
	.skip 0x1
.endobj lbl_81698D08

# .sbss:0x9 | 0x81698D09 | size: 0x3
.obj gap_12_81698D09_sbss, global
.hidden gap_12_81698D09_sbss
	.skip 0x3
.endobj gap_12_81698D09_sbss

# .sbss:0xC | 0x81698D0C | size: 0x1
.obj lbl_81698D0C, global
	.skip 0x1
.endobj lbl_81698D0C

# .sbss:0xD | 0x81698D0D | size: 0x3
.obj gap_12_81698D0D_sbss, global
.hidden gap_12_81698D0D_sbss
	.skip 0x3
.endobj gap_12_81698D0D_sbss

# .sbss:0x10 | 0x81698D10 | size: 0x1
.obj lbl_81698D10, global
	.skip 0x1
.endobj lbl_81698D10

# .sbss:0x11 | 0x81698D11 | size: 0x3
.obj gap_12_81698D11_sbss, global
.hidden gap_12_81698D11_sbss
	.skip 0x3
.endobj gap_12_81698D11_sbss

# .sbss:0x14 | 0x81698D14 | size: 0x1
.obj lbl_81698D14, global
	.skip 0x1
.endobj lbl_81698D14

# .sbss:0x15 | 0x81698D15 | size: 0x3
.obj gap_12_81698D15_sbss, global
.hidden gap_12_81698D15_sbss
	.skip 0x3
.endobj gap_12_81698D15_sbss

# .sbss:0x18 | 0x81698D18 | size: 0x1
.obj lbl_81698D18, global
	.skip 0x1
.endobj lbl_81698D18

# .sbss:0x19 | 0x81698D19 | size: 0x3
.obj gap_12_81698D19_sbss, global
.hidden gap_12_81698D19_sbss
	.skip 0x3
.endobj gap_12_81698D19_sbss

# .sbss:0x1C | 0x81698D1C | size: 0x4
.obj lbl_81698D1C, global
	.skip 0x4
.endobj lbl_81698D1C
