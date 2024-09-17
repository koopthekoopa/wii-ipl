.include "macros.inc"
.file "iplAddressEdit.cpp"

# 0x810B71C0..0x810B7300 | size: 0x140
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B71C0 | size: 0x140
# ipl::scene::sFriendInfo
.obj sFriendInfo__Q23ipl5scene, global
	.skip 0x140
.endobj sFriendInfo__Q23ipl5scene

# 0x8138807C..0x8138EA64 | size: 0x69E8
.text
.balign 4

# .text:0x0 | 0x8138807C | size: 0x260
.fn NWC24CheckPublicMailAddr_, global
/* 8138807C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81388080 | 7C 08 02 A6 */	mflr r0
/* 81388084 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81388088 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138808C | 48 27 14 3D */	bl _savegpr_29
/* 81388090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81388094 | 7C 7E 1B 78 */	mr r30, r3
/* 81388098 | 40 82 00 0C */	bne .L_813880A4
/* 8138809C | 38 60 FF FB */	li r3, -0x5
/* 813880A0 | 48 00 02 24 */	b .L_813882C4
.L_813880A4:
/* 813880A4 | 38 80 01 00 */	li r4, 0x100
/* 813880A8 | 48 11 4C F9 */	bl fn_8149CDA0
/* 813880AC | 2C 03 01 00 */	cmpwi r3, 0x100
/* 813880B0 | 40 82 00 0C */	bne .L_813880BC
/* 813880B4 | 38 60 FF E7 */	li r3, -0x19
/* 813880B8 | 48 00 02 0C */	b .L_813882C4
.L_813880BC:
/* 813880BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813880C0 | 40 82 00 0C */	bne .L_813880CC
/* 813880C4 | 38 60 FF E8 */	li r3, -0x18
/* 813880C8 | 48 00 01 FC */	b .L_813882C4
.L_813880CC:
/* 813880CC | 3C E0 81 61 */	lis r7, lbl_8160F668@ha
/* 813880D0 | 7F C4 F3 78 */	mr r4, r30
/* 813880D4 | 38 E7 F6 68 */	addi r7, r7, lbl_8160F668@l
/* 813880D8 | 39 20 00 00 */	li r9, 0x0
/* 813880DC | 3B E0 00 00 */	li r31, 0x0
/* 813880E0 | 38 00 00 0B */	li r0, 0xb
/* 813880E4 | 48 00 00 7C */	b .L_81388160
.L_813880E8:
/* 813880E8 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 813880EC | 7C AA 07 74 */	extsb r10, r5
/* 813880F0 | 2C 0A 00 40 */	cmpwi r10, 0x40
/* 813880F4 | 40 82 00 1C */	bne .L_81388110
/* 813880F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813880FC | 40 82 00 0C */	bne .L_81388108
/* 81388100 | 38 60 FF E8 */	li r3, -0x18
/* 81388104 | 48 00 01 C0 */	b .L_813882C4
.L_81388108:
/* 81388108 | 39 20 00 01 */	li r9, 0x1
/* 8138810C | 48 00 00 5C */	b .L_81388168
.L_81388110:
/* 81388110 | 2C 0A 00 20 */	cmpwi r10, 0x20
/* 81388114 | 40 81 00 0C */	ble .L_81388120
/* 81388118 | 2C 0A 00 7F */	cmpwi r10, 0x7f
/* 8138811C | 41 80 00 0C */	blt .L_81388128
.L_81388120:
/* 81388120 | 38 60 FF E8 */	li r3, -0x18
/* 81388124 | 48 00 01 A0 */	b .L_813882C4
.L_81388128:
/* 81388128 | 7C E5 3B 78 */	mr r5, r7
/* 8138812C | 39 00 00 00 */	li r8, 0x0
/* 81388130 | 7C 09 03 A6 */	mtctr r0
.L_81388134:
/* 81388134 | 88 C5 00 00 */	lbz r6, 0x0(r5)
/* 81388138 | 7C C6 07 74 */	extsb r6, r6
/* 8138813C | 7C 0A 30 00 */	cmpw r10, r6
/* 81388140 | 40 82 00 0C */	bne .L_8138814C
/* 81388144 | 38 60 FF E8 */	li r3, -0x18
/* 81388148 | 48 00 01 7C */	b .L_813882C4
.L_8138814C:
/* 8138814C | 39 08 00 01 */	addi r8, r8, 0x1
/* 81388150 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81388154 | 42 00 FF E0 */	bdnz .L_81388134
/* 81388158 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8138815C | 38 84 00 01 */	addi r4, r4, 0x1
.L_81388160:
/* 81388160 | 7C 1F 18 00 */	cmpw r31, r3
/* 81388164 | 41 80 FF 84 */	blt .L_813880E8
.L_81388168:
/* 81388168 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8138816C | 40 82 00 0C */	bne .L_81388178
/* 81388170 | 38 60 FF E8 */	li r3, -0x18
/* 81388174 | 48 00 01 50 */	b .L_813882C4
.L_81388178:
/* 81388178 | 7F BF 18 51 */	subf. r29, r31, r3
/* 8138817C | 40 82 00 0C */	bne .L_81388188
/* 81388180 | 38 00 FF FF */	li r0, -0x1
/* 81388184 | 48 00 01 0C */	b .L_81388290
.L_81388188:
/* 81388188 | 7C 9F F2 14 */	add r4, r31, r30
/* 8138818C | 34 64 00 01 */	addic. r3, r4, 0x1
/* 81388190 | 40 82 00 0C */	bne .L_8138819C
/* 81388194 | 38 00 FF FE */	li r0, -0x2
/* 81388198 | 48 00 00 F8 */	b .L_81388290
.L_8138819C:
/* 8138819C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813881A0 | 7C 00 07 75 */	extsb. r0, r0
/* 813881A4 | 40 82 00 0C */	bne .L_813881B0
/* 813881A8 | 38 00 FF FD */	li r0, -0x3
/* 813881AC | 48 00 00 E4 */	b .L_81388290
.L_813881B0:
/* 813881B0 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813881B4 | 40 82 00 0C */	bne .L_813881C0
/* 813881B8 | 38 00 FF FC */	li r0, -0x4
/* 813881BC | 48 00 00 D4 */	b .L_81388290
.L_813881C0:
/* 813881C0 | 38 A0 00 00 */	li r5, 0x0
/* 813881C4 | 38 C0 00 00 */	li r6, 0x0
/* 813881C8 | 7F A9 03 A6 */	mtctr r29
/* 813881CC | 28 1D 00 00 */	cmplwi r29, 0x0
/* 813881D0 | 40 81 00 88 */	ble .L_81388258
.L_813881D4:
/* 813881D4 | 7C 64 32 14 */	add r3, r4, r6
/* 813881D8 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 813881DC | 7C 00 07 75 */	extsb. r0, r0
/* 813881E0 | 41 82 00 78 */	beq .L_81388258
/* 813881E4 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813881E8 | 40 82 00 1C */	bne .L_81388204
/* 813881EC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813881F0 | 41 82 00 0C */	beq .L_813881FC
/* 813881F4 | 38 00 FF FB */	li r0, -0x5
/* 813881F8 | 48 00 00 98 */	b .L_81388290
.L_813881FC:
/* 813881FC | 38 A0 00 01 */	li r5, 0x1
/* 81388200 | 48 00 00 50 */	b .L_81388250
.L_81388204:
/* 81388204 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81388208 | 41 80 00 0C */	blt .L_81388214
/* 8138820C | 2C 00 00 39 */	cmpwi r0, 0x39
/* 81388210 | 40 81 00 3C */	ble .L_8138824C
.L_81388214:
/* 81388214 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 81388218 | 41 80 00 0C */	blt .L_81388224
/* 8138821C | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 81388220 | 40 81 00 2C */	ble .L_8138824C
.L_81388224:
/* 81388224 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81388228 | 41 80 00 0C */	blt .L_81388234
/* 8138822C | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 81388230 | 40 81 00 1C */	ble .L_8138824C
.L_81388234:
/* 81388234 | 2C 00 00 2D */	cmpwi r0, 0x2d
/* 81388238 | 41 82 00 14 */	beq .L_8138824C
/* 8138823C | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 81388240 | 41 82 00 0C */	beq .L_8138824C
/* 81388244 | 38 00 FF FA */	li r0, -0x6
/* 81388248 | 48 00 00 48 */	b .L_81388290
.L_8138824C:
/* 8138824C | 38 A0 00 00 */	li r5, 0x0
.L_81388250:
/* 81388250 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81388254 | 42 00 FF 80 */	bdnz .L_813881D4
.L_81388258:
/* 81388258 | 7C 06 E8 40 */	cmplw r6, r29
/* 8138825C | 40 82 00 0C */	bne .L_81388268
/* 81388260 | 38 00 FF F9 */	li r0, -0x7
/* 81388264 | 48 00 00 2C */	b .L_81388290
.L_81388268:
/* 81388268 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8138826C | 40 81 00 20 */	ble .L_8138828C
/* 81388270 | 7C 1F F2 14 */	add r0, r31, r30
/* 81388274 | 7C 06 00 AE */	lbzx r0, r6, r0
/* 81388278 | 7C 00 07 74 */	extsb r0, r0
/* 8138827C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 81388280 | 40 82 00 0C */	bne .L_8138828C
/* 81388284 | 38 00 FF F8 */	li r0, -0x8
/* 81388288 | 48 00 00 08 */	b .L_81388290
.L_8138828C:
/* 8138828C | 38 00 00 00 */	li r0, 0x0
.L_81388290:
/* 81388290 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81388294 | 40 80 00 0C */	bge .L_813882A0
/* 81388298 | 38 60 FF E8 */	li r3, -0x18
/* 8138829C | 48 00 00 28 */	b .L_813882C4
.L_813882A0:
/* 813882A0 | 48 11 77 25 */	bl fn_8149F9C4
/* 813882A4 | 7C 64 1B 78 */	mr r4, r3
/* 813882A8 | 7C 7E FA 14 */	add r3, r30, r31
/* 813882AC | 38 BD 00 01 */	addi r5, r29, 0x1
/* 813882B0 | 48 28 08 49 */	bl strnicmp
/* 813882B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813882B8 | 38 60 00 00 */	li r3, 0x0
/* 813882BC | 40 82 00 08 */	bne .L_813882C4
/* 813882C0 | 38 60 FF F9 */	li r3, -0x7
.L_813882C4:
/* 813882C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813882C8 | 48 27 12 4D */	bl _restgpr_29
/* 813882CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813882D0 | 7C 08 03 A6 */	mtlr r0
/* 813882D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813882D8 | 4E 80 00 20 */	blr
.endfn NWC24CheckPublicMailAddr_

# .text:0x260 | 0x813882DC | size: 0xD0
# ipl::scene::AddressEdit::AddressEdit(EGG::Heap*, int)
.fn __ct__Q33ipl5scene11AddressEditFPQ23EGG4Heapi, global
/* 813882DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813882E0 | 7C 08 02 A6 */	mflr r0
/* 813882E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813882E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813882EC | 48 27 11 DD */	bl _savegpr_29
/* 813882F0 | 7C 7D 1B 78 */	mr r29, r3
/* 813882F4 | 7C BE 2B 78 */	mr r30, r5
/* 813882F8 | 48 08 2F 11 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813882FC | 3C C0 81 65 */	lis r6, __vt__Q33ipl5scene11AddressEdit@ha
/* 81388300 | 3B E0 00 00 */	li r31, 0x0
/* 81388304 | 38 C6 86 28 */	addi r6, r6, __vt__Q33ipl5scene11AddressEdit@l
/* 81388308 | 38 00 FF FF */	li r0, -0x1
/* 8138830C | 38 A6 00 1C */	addi r5, r6, 0x1c
/* 81388310 | 93 FD 00 60 */	stw r31, 0x60(r29)
/* 81388314 | 38 86 00 68 */	addi r4, r6, 0x68
/* 81388318 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8138831C | 90 DD 00 00 */	stw r6, 0x0(r29)
/* 81388320 | 90 BD 00 14 */	stw r5, 0x14(r29)
/* 81388324 | 90 9D 00 58 */	stw r4, 0x58(r29)
/* 81388328 | 93 DD 00 84 */	stw r30, 0x84(r29)
/* 8138832C | 90 1D 00 88 */	stw r0, 0x88(r29)
/* 81388330 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 81388334 | 93 FD 00 A4 */	stw r31, 0xa4(r29)
/* 81388338 | 93 BD 04 D4 */	stw r29, 0x4d4(r29)
/* 8138833C | 48 00 5F F5 */	bl clear__Q43ipl5scene11AddressEdit6StringFv
/* 81388340 | 38 80 00 03 */	li r4, 0x3
/* 81388344 | 38 00 00 05 */	li r0, 0x5
/* 81388348 | 7F E3 FB 78 */	mr r3, r31
/* 8138834C | 9B FD 04 D8 */	stb r31, 0x4d8(r29)
/* 81388350 | 93 FD 04 DC */	stw r31, 0x4dc(r29)
/* 81388354 | 93 FD 04 E8 */	stw r31, 0x4e8(r29)
/* 81388358 | 90 9D 00 28 */	stw r4, 0x28(r29)
/* 8138835C | 7C 09 03 A6 */	mtctr r0
.L_81388360:
/* 81388360 | 7C 9D 1A 14 */	add r4, r29, r3
/* 81388364 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81388368 | 93 E4 00 90 */	stw r31, 0x90(r4)
/* 8138836C | 42 00 FF F4 */	bdnz .L_81388360
/* 81388370 | 38 00 00 08 */	li r0, 0x8
/* 81388374 | 38 A0 00 00 */	li r5, 0x0
/* 81388378 | 38 80 00 00 */	li r4, 0x0
/* 8138837C | 7C 09 03 A6 */	mtctr r0
.L_81388380:
/* 81388380 | 7C 7D 2A 14 */	add r3, r29, r5
/* 81388384 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81388388 | 98 83 04 E0 */	stb r4, 0x4e0(r3)
/* 8138838C | 42 00 FF F4 */	bdnz .L_81388380
/* 81388390 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81388394 | 7F A3 EB 78 */	mr r3, r29
/* 81388398 | 48 27 11 7D */	bl _restgpr_29
/* 8138839C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813883A0 | 7C 08 03 A6 */	mtlr r0
/* 813883A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813883A8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11AddressEditFPQ23EGG4Heapi

# .text:0x330 | 0x813883AC | size: 0x98
# ipl::scene::AddressEdit::~AddressEdit()
.fn __dt__Q33ipl5scene11AddressEditFv, global
/* 813883AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813883B0 | 7C 08 02 A6 */	mflr r0
/* 813883B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813883B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813883BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813883C0 | 7C 9F 23 78 */	mr r31, r4
/* 813883C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813883C8 | 7C 7E 1B 78 */	mr r30, r3
/* 813883CC | 41 82 00 5C */	beq .L_81388428
/* 813883D0 | 80 C3 04 DC */	lwz r6, 0x4dc(r3)
/* 813883D4 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene11AddressEdit@ha
/* 813883D8 | 38 A5 86 28 */	addi r5, r5, __vt__Q33ipl5scene11AddressEdit@l
/* 813883DC | 38 85 00 1C */	addi r4, r5, 0x1c
/* 813883E0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813883E4 | 38 05 00 68 */	addi r0, r5, 0x68
/* 813883E8 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813883EC | 90 83 00 14 */	stw r4, 0x14(r3)
/* 813883F0 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813883F4 | 41 82 00 10 */	beq .L_81388404
/* 813883F8 | 7C C3 33 78 */	mr r3, r6
/* 813883FC | 38 80 00 01 */	li r4, 0x1
/* 81388400 | 4B FB 6B 11 */	bl __dt__Q33ipl6nigaoe6ObjectFv
.L_81388404:
/* 81388404 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81388408 | 41 82 00 10 */	beq .L_81388418
/* 8138840C | 7F C3 F3 78 */	mr r3, r30
/* 81388410 | 38 80 00 00 */	li r4, 0x0
/* 81388414 | 48 08 18 51 */	bl __dt__Q33ipl5scene4BaseFv
.L_81388418:
/* 81388418 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138841C | 40 81 00 0C */	ble .L_81388428
/* 81388420 | 7F C3 F3 78 */	mr r3, r30
/* 81388424 | 48 26 FC C1 */	bl __dl__FPv
.L_81388428:
/* 81388428 | 7F C3 F3 78 */	mr r3, r30
/* 8138842C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81388430 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81388434 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81388438 | 7C 08 03 A6 */	mtlr r0
/* 8138843C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81388440 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11AddressEditFv

# .text:0x3C8 | 0x81388444 | size: 0x4C
# ipl::scene::AddressEdit::prepare()
.fn prepare__Q33ipl5scene11AddressEditFv, global
/* 81388444 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81388448 | 7C 08 02 A6 */	mflr r0
/* 8138844C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81388450 | 3C A0 81 64 */	lis r5, lbl_81647F46@ha
/* 81388454 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81388458 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138845C | 38 A5 7F 46 */	addi r5, r5, lbl_81647F46@l
/* 81388460 | 38 C0 00 00 */	li r6, 0x0
/* 81388464 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81388468 | 7C 7F 1B 78 */	mr r31, r3
/* 8138846C | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 81388470 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81388474 | 4B FB 54 41 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 81388478 | 90 7F 00 AC */	stw r3, 0xac(r31)
/* 8138847C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81388480 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81388484 | 7C 08 03 A6 */	mtlr r0
/* 81388488 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138848C | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene11AddressEditFv

# .text:0x414 | 0x81388490 | size: 0xCD0
# ipl::scene::AddressEdit::create()
.fn create__Q33ipl5scene11AddressEditFv, global
/* 81388490 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81388494 | 7C 08 02 A6 */	mflr r0
/* 81388498 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138849C | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813884A0 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813884A4 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 813884A8 | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 813884AC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813884B0 | 48 27 10 01 */	bl _savegpr_23
/* 813884B4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813884B8 | 3F E0 81 64 */	lis r31, lbl_81647EE0@ha
/* 813884BC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813884C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813884C4 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813884C8 | 3B FF 7E E0 */	addi r31, r31, lbl_81647EE0@l
/* 813884CC | 38 80 00 04 */	li r4, 0x4
/* 813884D0 | 48 08 2C 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813884D4 | 83 C3 0D 20 */	lwz r30, 0xd20(r3)
/* 813884D8 | 38 60 05 80 */	li r3, 0x580
/* 813884DC | 48 26 FB C1 */	bl __nw__FUl
/* 813884E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813884E4 | 7C 7A 1B 78 */	mr r26, r3
/* 813884E8 | 41 82 00 1C */	beq .L_81388504
/* 813884EC | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813884F0 | 7F C5 F3 78 */	mr r5, r30
/* 813884F4 | 38 FF 00 72 */	addi r7, r31, 0x72
/* 813884F8 | 38 CD 85 A4 */	li r6, lbl_816965E4@sda21
/* 813884FC | 4B FE 1B 29 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
/* 81388500 | 7C 7A 1B 78 */	mr r26, r3
.L_81388504:
/* 81388504 | 7F 43 D3 78 */	mr r3, r26
/* 81388508 | 38 9F 00 84 */	addi r4, r31, 0x84
/* 8138850C | 38 BF 00 A0 */	addi r5, r31, 0xa0
/* 81388510 | 38 C0 00 00 */	li r6, 0x0
/* 81388514 | 38 E0 00 01 */	li r7, 0x1
/* 81388518 | 4B FE 1F C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138851C | 7F 43 D3 78 */	mr r3, r26
/* 81388520 | 38 9F 00 AF */	addi r4, r31, 0xaf
/* 81388524 | 38 BF 00 C8 */	addi r5, r31, 0xc8
/* 81388528 | 38 C0 00 00 */	li r6, 0x0
/* 8138852C | 38 E0 00 01 */	li r7, 0x1
/* 81388530 | 4B FE 1F B1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388534 | 7F 43 D3 78 */	mr r3, r26
/* 81388538 | 38 9F 00 AF */	addi r4, r31, 0xaf
/* 8138853C | 38 BF 00 D3 */	addi r5, r31, 0xd3
/* 81388540 | 38 C0 00 00 */	li r6, 0x0
/* 81388544 | 38 E0 00 00 */	li r7, 0x0
/* 81388548 | 4B FE 1F 99 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138854C | 7F 43 D3 78 */	mr r3, r26
/* 81388550 | 38 9F 00 AF */	addi r4, r31, 0xaf
/* 81388554 | 38 BF 00 DE */	addi r5, r31, 0xde
/* 81388558 | 38 C0 00 00 */	li r6, 0x0
/* 8138855C | 38 E0 00 00 */	li r7, 0x0
/* 81388560 | 4B FE 1F 81 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388564 | 7F 43 D3 78 */	mr r3, r26
/* 81388568 | 38 9F 00 AF */	addi r4, r31, 0xaf
/* 8138856C | 38 BF 00 E9 */	addi r5, r31, 0xe9
/* 81388570 | 38 C0 00 00 */	li r6, 0x0
/* 81388574 | 38 E0 00 00 */	li r7, 0x0
/* 81388578 | 4B FE 1F 69 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138857C | 7F 43 D3 78 */	mr r3, r26
/* 81388580 | 38 9F 00 AF */	addi r4, r31, 0xaf
/* 81388584 | 38 BF 00 F5 */	addi r5, r31, 0xf5
/* 81388588 | 38 C0 00 00 */	li r6, 0x0
/* 8138858C | 38 E0 00 00 */	li r7, 0x0
/* 81388590 | 4B FE 1D ED */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388594 | 7F 43 D3 78 */	mr r3, r26
/* 81388598 | 38 9F 01 03 */	addi r4, r31, 0x103
/* 8138859C | 38 BF 00 C8 */	addi r5, r31, 0xc8
/* 813885A0 | 38 C0 00 00 */	li r6, 0x0
/* 813885A4 | 38 E0 00 00 */	li r7, 0x0
/* 813885A8 | 4B FE 1F 39 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813885AC | 7F 43 D3 78 */	mr r3, r26
/* 813885B0 | 38 9F 01 03 */	addi r4, r31, 0x103
/* 813885B4 | 38 BF 00 D3 */	addi r5, r31, 0xd3
/* 813885B8 | 38 C0 00 00 */	li r6, 0x0
/* 813885BC | 38 E0 00 00 */	li r7, 0x0
/* 813885C0 | 4B FE 1F 21 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813885C4 | 7F 43 D3 78 */	mr r3, r26
/* 813885C8 | 38 9F 01 03 */	addi r4, r31, 0x103
/* 813885CC | 38 BF 00 DE */	addi r5, r31, 0xde
/* 813885D0 | 38 C0 00 00 */	li r6, 0x0
/* 813885D4 | 38 E0 00 00 */	li r7, 0x0
/* 813885D8 | 4B FE 1F 09 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813885DC | 7F 43 D3 78 */	mr r3, r26
/* 813885E0 | 38 9F 01 03 */	addi r4, r31, 0x103
/* 813885E4 | 38 BF 00 E9 */	addi r5, r31, 0xe9
/* 813885E8 | 38 C0 00 00 */	li r6, 0x0
/* 813885EC | 38 E0 00 00 */	li r7, 0x0
/* 813885F0 | 4B FE 1E F1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813885F4 | 7F 43 D3 78 */	mr r3, r26
/* 813885F8 | 38 9F 01 03 */	addi r4, r31, 0x103
/* 813885FC | 38 BF 00 F5 */	addi r5, r31, 0xf5
/* 81388600 | 38 C0 00 00 */	li r6, 0x0
/* 81388604 | 38 E0 00 00 */	li r7, 0x0
/* 81388608 | 4B FE 1D 75 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138860C | 7F 43 D3 78 */	mr r3, r26
/* 81388610 | 38 9F 01 1D */	addi r4, r31, 0x11d
/* 81388614 | 38 BF 00 C8 */	addi r5, r31, 0xc8
/* 81388618 | 38 C0 00 00 */	li r6, 0x0
/* 8138861C | 38 E0 00 00 */	li r7, 0x0
/* 81388620 | 4B FE 1E C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388624 | 7F 43 D3 78 */	mr r3, r26
/* 81388628 | 38 9F 01 1D */	addi r4, r31, 0x11d
/* 8138862C | 38 BF 00 D3 */	addi r5, r31, 0xd3
/* 81388630 | 38 C0 00 00 */	li r6, 0x0
/* 81388634 | 38 E0 00 01 */	li r7, 0x1
/* 81388638 | 4B FE 1E A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138863C | 7F 43 D3 78 */	mr r3, r26
/* 81388640 | 38 9F 01 1D */	addi r4, r31, 0x11d
/* 81388644 | 38 BF 00 DE */	addi r5, r31, 0xde
/* 81388648 | 38 C0 00 00 */	li r6, 0x0
/* 8138864C | 38 E0 00 01 */	li r7, 0x1
/* 81388650 | 4B FE 1E 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388654 | 7F 43 D3 78 */	mr r3, r26
/* 81388658 | 38 9F 01 1D */	addi r4, r31, 0x11d
/* 8138865C | 38 BF 00 E9 */	addi r5, r31, 0xe9
/* 81388660 | 38 C0 00 00 */	li r6, 0x0
/* 81388664 | 38 E0 00 01 */	li r7, 0x1
/* 81388668 | 4B FE 1E 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138866C | 7F 43 D3 78 */	mr r3, r26
/* 81388670 | 38 9F 01 1D */	addi r4, r31, 0x11d
/* 81388674 | 38 BF 00 F5 */	addi r5, r31, 0xf5
/* 81388678 | 38 C0 00 00 */	li r6, 0x0
/* 8138867C | 38 E0 00 01 */	li r7, 0x1
/* 81388680 | 4B FE 1C FD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388684 | 7F 43 D3 78 */	mr r3, r26
/* 81388688 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 8138868C | 38 BF 00 C8 */	addi r5, r31, 0xc8
/* 81388690 | 38 C0 00 00 */	li r6, 0x0
/* 81388694 | 38 E0 00 00 */	li r7, 0x0
/* 81388698 | 4B FE 1E 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138869C | 7F 43 D3 78 */	mr r3, r26
/* 813886A0 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 813886A4 | 38 BF 00 D3 */	addi r5, r31, 0xd3
/* 813886A8 | 38 C0 00 00 */	li r6, 0x0
/* 813886AC | 38 E0 00 00 */	li r7, 0x0
/* 813886B0 | 4B FE 1E 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813886B4 | 7F 43 D3 78 */	mr r3, r26
/* 813886B8 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 813886BC | 38 BF 00 DE */	addi r5, r31, 0xde
/* 813886C0 | 38 C0 00 00 */	li r6, 0x0
/* 813886C4 | 38 E0 00 00 */	li r7, 0x0
/* 813886C8 | 4B FE 1E 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813886CC | 7F 43 D3 78 */	mr r3, r26
/* 813886D0 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 813886D4 | 38 BF 00 E9 */	addi r5, r31, 0xe9
/* 813886D8 | 38 C0 00 00 */	li r6, 0x0
/* 813886DC | 38 E0 00 00 */	li r7, 0x0
/* 813886E0 | 4B FE 1E 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813886E4 | 7F 43 D3 78 */	mr r3, r26
/* 813886E8 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 813886EC | 38 BF 00 F5 */	addi r5, r31, 0xf5
/* 813886F0 | 38 C0 00 00 */	li r6, 0x0
/* 813886F4 | 38 E0 00 00 */	li r7, 0x0
/* 813886F8 | 4B FE 1C 85 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813886FC | 7F 43 D3 78 */	mr r3, r26
/* 81388700 | 38 9F 01 54 */	addi r4, r31, 0x154
/* 81388704 | 38 BF 00 C8 */	addi r5, r31, 0xc8
/* 81388708 | 38 C0 00 00 */	li r6, 0x0
/* 8138870C | 38 E0 00 01 */	li r7, 0x1
/* 81388710 | 4B FE 1D D1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388714 | 7F 43 D3 78 */	mr r3, r26
/* 81388718 | 38 9F 01 54 */	addi r4, r31, 0x154
/* 8138871C | 38 BF 00 D3 */	addi r5, r31, 0xd3
/* 81388720 | 38 C0 00 00 */	li r6, 0x0
/* 81388724 | 38 E0 00 01 */	li r7, 0x1
/* 81388728 | 4B FE 1D B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138872C | 7F 43 D3 78 */	mr r3, r26
/* 81388730 | 38 9F 01 54 */	addi r4, r31, 0x154
/* 81388734 | 38 BF 00 DE */	addi r5, r31, 0xde
/* 81388738 | 38 C0 00 00 */	li r6, 0x0
/* 8138873C | 38 E0 00 01 */	li r7, 0x1
/* 81388740 | 4B FE 1D A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388744 | 7F 43 D3 78 */	mr r3, r26
/* 81388748 | 38 9F 01 54 */	addi r4, r31, 0x154
/* 8138874C | 38 BF 00 E9 */	addi r5, r31, 0xe9
/* 81388750 | 38 C0 00 00 */	li r6, 0x0
/* 81388754 | 38 E0 00 01 */	li r7, 0x1
/* 81388758 | 4B FE 1D 89 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138875C | 7F 43 D3 78 */	mr r3, r26
/* 81388760 | 38 9F 01 54 */	addi r4, r31, 0x154
/* 81388764 | 38 BF 00 F5 */	addi r5, r31, 0xf5
/* 81388768 | 38 C0 00 00 */	li r6, 0x0
/* 8138876C | 38 E0 00 01 */	li r7, 0x1
/* 81388770 | 4B FE 1C 0D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388774 | 7F 43 D3 78 */	mr r3, r26
/* 81388778 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 8138877C | 38 BF 01 72 */	addi r5, r31, 0x172
/* 81388780 | 38 C0 00 00 */	li r6, 0x0
/* 81388784 | 38 E0 00 01 */	li r7, 0x1
/* 81388788 | 4B FE 1D 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138878C | 7F 43 D3 78 */	mr r3, r26
/* 81388790 | 38 9F 01 54 */	addi r4, r31, 0x154
/* 81388794 | 38 BF 01 72 */	addi r5, r31, 0x172
/* 81388798 | 38 C0 00 00 */	li r6, 0x0
/* 8138879C | 38 E0 00 00 */	li r7, 0x0
/* 813887A0 | 4B FE 1D 41 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813887A4 | 7F 43 D3 78 */	mr r3, r26
/* 813887A8 | 38 9F 01 7E */	addi r4, r31, 0x17e
/* 813887AC | 38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 813887B0 | 38 C0 00 00 */	li r6, 0x0
/* 813887B4 | 38 E0 00 01 */	li r7, 0x1
/* 813887B8 | 4B FE 1D 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813887BC | 7F 43 D3 78 */	mr r3, r26
/* 813887C0 | 38 9F 01 A9 */	addi r4, r31, 0x1a9
/* 813887C4 | 38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 813887C8 | 38 C0 00 00 */	li r6, 0x0
/* 813887CC | 38 E0 00 00 */	li r7, 0x0
/* 813887D0 | 4B FE 1D 11 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813887D4 | 7F 43 D3 78 */	mr r3, r26
/* 813887D8 | 38 9F 01 CC */	addi r4, r31, 0x1cc
/* 813887DC | 38 BF 00 A0 */	addi r5, r31, 0xa0
/* 813887E0 | 38 C0 00 00 */	li r6, 0x0
/* 813887E4 | 38 E0 00 00 */	li r7, 0x0
/* 813887E8 | 4B FE 1C F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813887EC | 7F 43 D3 78 */	mr r3, r26
/* 813887F0 | 4B FE 1E 45 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813887F4 | 38 60 00 10 */	li r3, 0x10
/* 813887F8 | 48 26 F8 A5 */	bl __nw__FUl
/* 813887FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81388800 | 7C 79 1B 78 */	mr r25, r3
/* 81388804 | 41 82 00 1C */	beq .L_81388820
/* 81388808 | 38 00 00 00 */	li r0, 0x0
/* 8138880C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene16AddressEditEvent@ha
/* 81388810 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81388814 | 38 84 86 10 */	addi r4, r4, __vt__Q33ipl5scene16AddressEditEvent@l
/* 81388818 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8138881C | 93 A3 00 0C */	stw r29, 0xc(r3)
.L_81388820:
/* 81388820 | 38 60 00 34 */	li r3, 0x34
/* 81388824 | 48 26 F8 79 */	bl __nw__FUl
/* 81388828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138882C | 7C 78 1B 78 */	mr r24, r3
/* 81388830 | 41 82 00 20 */	beq .L_81388850
/* 81388834 | 7F 24 CB 78 */	mr r4, r25
/* 81388838 | 38 BA 02 98 */	addi r5, r26, 0x298
/* 8138883C | 38 C0 00 00 */	li r6, 0x0
/* 81388840 | 38 E0 00 00 */	li r7, 0x0
/* 81388844 | 39 00 00 00 */	li r8, 0x0
/* 81388848 | 4B FB C8 29 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
/* 8138884C | 7C 78 1B 78 */	mr r24, r3
.L_81388850:
/* 81388850 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81388854 | 7F 03 C3 78 */	mr r3, r24
/* 81388858 | 38 9A 00 04 */	addi r4, r26, 0x4
/* 8138885C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81388860 | 7D 89 03 A6 */	mtctr r12
/* 81388864 | 4E 80 04 21 */	bctrl
/* 81388868 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8138886C | 7F 03 C3 78 */	mr r3, r24
/* 81388870 | 38 80 00 00 */	li r4, 0x0
/* 81388874 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81388878 | 7D 89 03 A6 */	mtctr r12
/* 8138887C | 4E 80 04 21 */	bctrl
/* 81388880 | 3B 7F 00 44 */	addi r27, r31, 0x44
/* 81388884 | 3A E0 00 00 */	li r23, 0x0
/* 81388888 | 3B 80 00 00 */	li r28, 0x0
.L_8138888C:
/* 8138888C | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81388890 | 38 A0 00 01 */	li r5, 0x1
/* 81388894 | 7C 9B E0 2E */	lwzx r4, r27, r28
/* 81388898 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138889C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813888A0 | 7D 89 03 A6 */	mtctr r12
/* 813888A4 | 4E 80 04 21 */	bctrl
/* 813888A8 | 7C 64 1B 78 */	mr r4, r3
/* 813888AC | 7F 03 C3 78 */	mr r3, r24
/* 813888B0 | 38 A0 00 01 */	li r5, 0x1
/* 813888B4 | 4B FE 29 19 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813888B8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813888BC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813888C0 | 2C 17 00 05 */	cmpwi r23, 0x5
/* 813888C4 | 41 80 FF C8 */	blt .L_8138888C
/* 813888C8 | 93 5D 00 68 */	stw r26, 0x68(r29)
/* 813888CC | 38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 813888D0 | 38 A0 00 01 */	li r5, 0x1
/* 813888D4 | 93 3D 00 6C */	stw r25, 0x6c(r29)
/* 813888D8 | 93 1D 00 70 */	stw r24, 0x70(r29)
/* 813888DC | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813888E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813888E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813888E8 | 7D 89 03 A6 */	mtctr r12
/* 813888EC | 4E 80 04 21 */	bctrl
/* 813888F0 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813888F4 | 7C 7B 1B 78 */	mr r27, r3
/* 813888F8 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813888FC | 38 80 00 2A */	li r4, 0x2a
/* 81388900 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 81388904 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81388908 | 4B FB 5E B5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138890C | 7C 65 1B 78 */	mr r5, r3
/* 81388910 | 7F A3 EB 78 */	mr r3, r29
/* 81388914 | 7F 64 DB 78 */	mr r4, r27
/* 81388918 | 48 00 3B 51 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138891C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388920 | 38 9F 01 F5 */	addi r4, r31, 0x1f5
/* 81388924 | 38 A0 00 01 */	li r5, 0x1
/* 81388928 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138892C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388930 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388934 | 7D 89 03 A6 */	mtctr r12
/* 81388938 | 4E 80 04 21 */	bctrl
/* 8138893C | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 81388940 | 7C 7B 1B 78 */	mr r27, r3
/* 81388944 | 38 80 00 2B */	li r4, 0x2b
/* 81388948 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8138894C | 4B FB 5E 71 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81388950 | 7C 65 1B 78 */	mr r5, r3
/* 81388954 | 7F A3 EB 78 */	mr r3, r29
/* 81388958 | 7F 64 DB 78 */	mr r4, r27
/* 8138895C | 48 00 3B 0D */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388960 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388964 | 38 9F 02 02 */	addi r4, r31, 0x202
/* 81388968 | 38 A0 00 01 */	li r5, 0x1
/* 8138896C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388970 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388974 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388978 | 7D 89 03 A6 */	mtctr r12
/* 8138897C | 4E 80 04 21 */	bctrl
/* 81388980 | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 81388984 | 7C 7B 1B 78 */	mr r27, r3
/* 81388988 | 38 80 00 2F */	li r4, 0x2f
/* 8138898C | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81388990 | 4B FB 5E 2D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81388994 | 7C 65 1B 78 */	mr r5, r3
/* 81388998 | 7F A3 EB 78 */	mr r3, r29
/* 8138899C | 7F 64 DB 78 */	mr r4, r27
/* 813889A0 | 48 00 3A C9 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 813889A4 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813889A8 | 38 9F 02 0F */	addi r4, r31, 0x20f
/* 813889AC | 38 A0 00 01 */	li r5, 0x1
/* 813889B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813889B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813889B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813889BC | 7D 89 03 A6 */	mtctr r12
/* 813889C0 | 4E 80 04 21 */	bctrl
/* 813889C4 | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 813889C8 | 7C 7B 1B 78 */	mr r27, r3
/* 813889CC | 38 80 00 2A */	li r4, 0x2a
/* 813889D0 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813889D4 | 4B FB 5D E9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813889D8 | 7C 65 1B 78 */	mr r5, r3
/* 813889DC | 7F A3 EB 78 */	mr r3, r29
/* 813889E0 | 7F 64 DB 78 */	mr r4, r27
/* 813889E4 | 48 00 3A 85 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 813889E8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813889EC | 38 9F 02 1D */	addi r4, r31, 0x21d
/* 813889F0 | 38 A0 00 01 */	li r5, 0x1
/* 813889F4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813889F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813889FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388A00 | 7D 89 03 A6 */	mtctr r12
/* 81388A04 | 4E 80 04 21 */	bctrl
/* 81388A08 | 7C 64 1B 78 */	mr r4, r3
/* 81388A0C | 7F A3 EB 78 */	mr r3, r29
/* 81388A10 | 38 AD 85 A8 */	li r5, lbl_816965E8@sda21
/* 81388A14 | 48 00 3A 55 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388A18 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388A1C | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 81388A20 | 38 A0 00 01 */	li r5, 0x1
/* 81388A24 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388A28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388A2C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388A30 | 7D 89 03 A6 */	mtctr r12
/* 81388A34 | 4E 80 04 21 */	bctrl
/* 81388A38 | 7C 64 1B 78 */	mr r4, r3
/* 81388A3C | 7F A3 EB 78 */	mr r3, r29
/* 81388A40 | 38 AD 85 A8 */	li r5, lbl_816965E8@sda21
/* 81388A44 | 48 00 3A 25 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388A48 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388A4C | 38 9F 00 F5 */	addi r4, r31, 0xf5
/* 81388A50 | 38 A0 00 01 */	li r5, 0x1
/* 81388A54 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388A58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388A5C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388A60 | 7D 89 03 A6 */	mtctr r12
/* 81388A64 | 4E 80 04 21 */	bctrl
/* 81388A68 | 7C 64 1B 78 */	mr r4, r3
/* 81388A6C | 7F A3 EB 78 */	mr r3, r29
/* 81388A70 | 38 AD 85 A8 */	li r5, lbl_816965E8@sda21
/* 81388A74 | 48 00 39 F5 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388A78 | 38 60 05 80 */	li r3, 0x580
/* 81388A7C | 48 26 F6 21 */	bl __nw__FUl
/* 81388A80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81388A84 | 7C 79 1B 78 */	mr r25, r3
/* 81388A88 | 41 82 00 1C */	beq .L_81388AA4
/* 81388A8C | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 81388A90 | 7F C5 F3 78 */	mr r5, r30
/* 81388A94 | 38 FF 02 35 */	addi r7, r31, 0x235
/* 81388A98 | 38 CD 85 A4 */	li r6, lbl_816965E4@sda21
/* 81388A9C | 4B FE 15 89 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
/* 81388AA0 | 7C 79 1B 78 */	mr r25, r3
.L_81388AA4:
/* 81388AA4 | 7F 23 CB 78 */	mr r3, r25
/* 81388AA8 | 38 9F 02 47 */	addi r4, r31, 0x247
/* 81388AAC | 38 BF 02 63 */	addi r5, r31, 0x263
/* 81388AB0 | 38 C0 00 00 */	li r6, 0x0
/* 81388AB4 | 38 E0 00 01 */	li r7, 0x1
/* 81388AB8 | 4B FE 1A 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388ABC | 7F 23 CB 78 */	mr r3, r25
/* 81388AC0 | 38 9F 02 74 */	addi r4, r31, 0x274
/* 81388AC4 | 38 BF 02 96 */	addi r5, r31, 0x296
/* 81388AC8 | 38 C0 00 00 */	li r6, 0x0
/* 81388ACC | 38 E0 00 01 */	li r7, 0x1
/* 81388AD0 | 4B FE 1A 11 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388AD4 | 7F 23 CB 78 */	mr r3, r25
/* 81388AD8 | 38 9F 02 A4 */	addi r4, r31, 0x2a4
/* 81388ADC | 38 BF 02 C2 */	addi r5, r31, 0x2c2
/* 81388AE0 | 38 C0 00 00 */	li r6, 0x0
/* 81388AE4 | 38 E0 00 01 */	li r7, 0x1
/* 81388AE8 | 4B FE 19 F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388AEC | 7F 23 CB 78 */	mr r3, r25
/* 81388AF0 | 38 9F 02 CC */	addi r4, r31, 0x2cc
/* 81388AF4 | 38 BF 02 E9 */	addi r5, r31, 0x2e9
/* 81388AF8 | 38 C0 00 00 */	li r6, 0x0
/* 81388AFC | 38 E0 00 01 */	li r7, 0x1
/* 81388B00 | 4B FE 19 E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B04 | 7F 23 CB 78 */	mr r3, r25
/* 81388B08 | 38 9F 02 F2 */	addi r4, r31, 0x2f2
/* 81388B0C | 38 AD 85 AA */	li r5, lbl_816965EA@sda21
/* 81388B10 | 38 C0 00 00 */	li r6, 0x0
/* 81388B14 | 38 E0 00 01 */	li r7, 0x1
/* 81388B18 | 4B FE 19 C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B1C | 7F 23 CB 78 */	mr r3, r25
/* 81388B20 | 38 9F 03 0F */	addi r4, r31, 0x30f
/* 81388B24 | 38 BF 02 96 */	addi r5, r31, 0x296
/* 81388B28 | 38 C0 00 00 */	li r6, 0x0
/* 81388B2C | 38 E0 00 00 */	li r7, 0x0
/* 81388B30 | 4B FE 19 B1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B34 | 7F 23 CB 78 */	mr r3, r25
/* 81388B38 | 38 9F 03 32 */	addi r4, r31, 0x332
/* 81388B3C | 38 BF 02 C2 */	addi r5, r31, 0x2c2
/* 81388B40 | 38 C0 00 00 */	li r6, 0x0
/* 81388B44 | 38 E0 00 00 */	li r7, 0x0
/* 81388B48 | 4B FE 19 99 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B4C | 7F 23 CB 78 */	mr r3, r25
/* 81388B50 | 38 9F 03 51 */	addi r4, r31, 0x351
/* 81388B54 | 38 BF 02 E9 */	addi r5, r31, 0x2e9
/* 81388B58 | 38 C0 00 00 */	li r6, 0x0
/* 81388B5C | 38 E0 00 00 */	li r7, 0x0
/* 81388B60 | 4B FE 19 81 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B64 | 7F 23 CB 78 */	mr r3, r25
/* 81388B68 | 38 9F 03 6F */	addi r4, r31, 0x36f
/* 81388B6C | 38 AD 85 AA */	li r5, lbl_816965EA@sda21
/* 81388B70 | 38 C0 00 00 */	li r6, 0x0
/* 81388B74 | 38 E0 00 00 */	li r7, 0x0
/* 81388B78 | 4B FE 19 69 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B7C | 7F 23 CB 78 */	mr r3, r25
/* 81388B80 | 38 9F 03 8D */	addi r4, r31, 0x38d
/* 81388B84 | 38 BF 02 63 */	addi r5, r31, 0x263
/* 81388B88 | 38 C0 00 00 */	li r6, 0x0
/* 81388B8C | 38 E0 00 00 */	li r7, 0x0
/* 81388B90 | 4B FE 19 51 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388B94 | 7F 23 CB 78 */	mr r3, r25
/* 81388B98 | 4B FE 1A 9D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81388B9C | 38 60 00 10 */	li r3, 0x10
/* 81388BA0 | 48 26 F4 FD */	bl __nw__FUl
/* 81388BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81388BA8 | 7C 7A 1B 78 */	mr r26, r3
/* 81388BAC | 41 82 00 1C */	beq .L_81388BC8
/* 81388BB0 | 38 00 00 00 */	li r0, 0x0
/* 81388BB4 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene17AddressInputEvent@ha
/* 81388BB8 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81388BBC | 38 84 85 F8 */	addi r4, r4, __vt__Q33ipl5scene17AddressInputEvent@l
/* 81388BC0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81388BC4 | 93 A3 00 0C */	stw r29, 0xc(r3)
.L_81388BC8:
/* 81388BC8 | 38 60 00 34 */	li r3, 0x34
/* 81388BCC | 48 26 F4 D1 */	bl __nw__FUl
/* 81388BD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81388BD4 | 7C 7B 1B 78 */	mr r27, r3
/* 81388BD8 | 41 82 00 20 */	beq .L_81388BF8
/* 81388BDC | 7F 44 D3 78 */	mr r4, r26
/* 81388BE0 | 38 B9 02 98 */	addi r5, r25, 0x298
/* 81388BE4 | 38 C0 00 00 */	li r6, 0x0
/* 81388BE8 | 38 E0 00 00 */	li r7, 0x0
/* 81388BEC | 39 00 00 00 */	li r8, 0x0
/* 81388BF0 | 4B FB C4 81 */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
/* 81388BF4 | 7C 7B 1B 78 */	mr r27, r3
.L_81388BF8:
/* 81388BF8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81388BFC | 7F 63 DB 78 */	mr r3, r27
/* 81388C00 | 38 99 00 04 */	addi r4, r25, 0x4
/* 81388C04 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81388C08 | 7D 89 03 A6 */	mtctr r12
/* 81388C0C | 4E 80 04 21 */	bctrl
/* 81388C10 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81388C14 | 7F 63 DB 78 */	mr r3, r27
/* 81388C18 | 38 80 00 00 */	li r4, 0x0
/* 81388C1C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81388C20 | 7D 89 03 A6 */	mtctr r12
/* 81388C24 | 4E 80 04 21 */	bctrl
/* 81388C28 | 80 79 00 14 */	lwz r3, 0x14(r25)
/* 81388C2C | 38 A0 00 01 */	li r5, 0x1
/* 81388C30 | 80 8D 85 A0 */	lwz r4, lbl_816965E0@sda21(r0)
/* 81388C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388C38 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388C3C | 7D 89 03 A6 */	mtctr r12
/* 81388C40 | 4E 80 04 21 */	bctrl
/* 81388C44 | 7C 64 1B 78 */	mr r4, r3
/* 81388C48 | 7F 63 DB 78 */	mr r3, r27
/* 81388C4C | 38 A0 00 01 */	li r5, 0x1
/* 81388C50 | 4B FE 25 7D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81388C54 | 93 3D 00 74 */	stw r25, 0x74(r29)
/* 81388C58 | 38 60 05 80 */	li r3, 0x580
/* 81388C5C | 93 5D 00 78 */	stw r26, 0x78(r29)
/* 81388C60 | 93 7D 00 7C */	stw r27, 0x7c(r29)
/* 81388C64 | 48 26 F4 39 */	bl __nw__FUl
/* 81388C68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81388C6C | 41 82 00 18 */	beq .L_81388C84
/* 81388C70 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 81388C74 | 7F C5 F3 78 */	mr r5, r30
/* 81388C78 | 38 FF 03 A9 */	addi r7, r31, 0x3a9
/* 81388C7C | 38 CD 85 A4 */	li r6, lbl_816965E4@sda21
/* 81388C80 | 4B FE 13 A5 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81388C84:
/* 81388C84 | 90 7D 00 80 */	stw r3, 0x80(r29)
/* 81388C88 | 38 9F 03 B9 */	addi r4, r31, 0x3b9
/* 81388C8C | 38 BF 03 CF */	addi r5, r31, 0x3cf
/* 81388C90 | 38 C0 00 00 */	li r6, 0x0
/* 81388C94 | 38 E0 00 01 */	li r7, 0x1
/* 81388C98 | 4B FE 16 E5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388C9C | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 81388CA0 | 38 9F 03 DA */	addi r4, r31, 0x3da
/* 81388CA4 | 38 BF 03 CF */	addi r5, r31, 0x3cf
/* 81388CA8 | 38 C0 00 00 */	li r6, 0x0
/* 81388CAC | 38 E0 00 00 */	li r7, 0x0
/* 81388CB0 | 4B FE 16 CD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81388CB4 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 81388CB8 | 4B FE 19 7D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81388CBC | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 81388CC0 | 38 80 00 00 */	li r4, 0x0
/* 81388CC4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388CC8 | 48 18 96 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388CCC | 4B FE 0F 59 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388CD0 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 81388CD4 | 48 00 56 5D */	bl clear__Q43ipl5scene11AddressEdit6StringFv
/* 81388CD8 | 3C 60 81 0B */	lis r3, sFriendInfo__Q23ipl5scene@ha
/* 81388CDC | 38 80 00 00 */	li r4, 0x0
/* 81388CE0 | 38 63 71 C0 */	addi r3, r3, sFriendInfo__Q23ipl5scene@l
/* 81388CE4 | 38 A0 01 40 */	li r5, 0x140
/* 81388CE8 | 4B FA 76 4D */	bl memset
/* 81388CEC | 38 00 00 00 */	li r0, 0x0
/* 81388CF0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81388CF4 | 90 1D 04 DC */	stw r0, 0x4dc(r29)
/* 81388CF8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81388CFC | 38 80 00 14 */	li r4, 0x14
/* 81388D00 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
/* 81388D04 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81388D08 | 48 08 24 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81388D0C | 80 1D 00 84 */	lwz r0, 0x84(r29)
/* 81388D10 | 80 83 02 74 */	lwz r4, 0x274(r3)
/* 81388D14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81388D18 | 90 9D 04 EC */	stw r4, 0x4ec(r29)
/* 81388D1C | 41 82 01 34 */	beq .L_81388E50
/* 81388D20 | 40 80 00 10 */	bge .L_81388D30
/* 81388D24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81388D28 | 40 80 00 14 */	bge .L_81388D3C
/* 81388D2C | 48 00 03 48 */	b .L_81389074
.L_81388D30:
/* 81388D30 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81388D34 | 40 80 03 40 */	bge .L_81389074
/* 81388D38 | 48 00 02 2C */	b .L_81388F64
.L_81388D3C:
/* 81388D3C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 81388D40 | 7F A3 EB 78 */	mr r3, r29
/* 81388D44 | 90 1D 00 A4 */	stw r0, 0xa4(r29)
/* 81388D48 | 48 00 49 39 */	bl get_friendinfo__Q33ipl5scene11AddressEditFv
/* 81388D4C | 80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 81388D50 | 80 7D 04 EC */	lwz r3, 0x4ec(r29)
/* 81388D54 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 81388D58 | 7C 63 02 14 */	add r3, r3, r0
/* 81388D5C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81388D60 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81388D64 | 40 82 00 30 */	bne .L_81388D94
/* 81388D68 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388D6C | 38 80 00 15 */	li r4, 0x15
/* 81388D70 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388D74 | 48 18 95 A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388D78 | 4B FE 0E AD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388D7C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388D80 | 38 80 00 1A */	li r4, 0x1a
/* 81388D84 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388D88 | 48 18 95 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388D8C | 4B FE 0E 99 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388D90 | 48 00 00 2C */	b .L_81388DBC
.L_81388D94:
/* 81388D94 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388D98 | 38 80 00 10 */	li r4, 0x10
/* 81388D9C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388DA0 | 48 18 95 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388DA4 | 4B FE 0E 81 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388DA8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388DAC | 38 80 00 1B */	li r4, 0x1b
/* 81388DB0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388DB4 | 48 18 95 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388DB8 | 4B FE 0E 6D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_81388DBC:
/* 81388DBC | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388DC0 | 38 80 00 00 */	li r4, 0x0
/* 81388DC4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388DC8 | 48 18 95 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388DCC | 7C 7B 1B 78 */	mr r27, r3
/* 81388DD0 | 4B FD 9A A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388DD4 | 38 00 00 01 */	li r0, 0x1
/* 81388DD8 | 3B 3D 02 B4 */	addi r25, r29, 0x2b4
/* 81388DDC | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81388DE0 | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 81388DE4 | 38 A0 00 01 */	li r5, 0x1
/* 81388DE8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388DEC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388DF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388DF4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388DF8 | 7D 89 03 A6 */	mtctr r12
/* 81388DFC | 4E 80 04 21 */	bctrl
/* 81388E00 | 7C 64 1B 78 */	mr r4, r3
/* 81388E04 | 7F A3 EB 78 */	mr r3, r29
/* 81388E08 | 7F 25 CB 78 */	mr r5, r25
/* 81388E0C | 48 00 36 5D */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388E10 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388E14 | 3B 3D 02 CC */	addi r25, r29, 0x2cc
/* 81388E18 | 38 9F 00 F5 */	addi r4, r31, 0xf5
/* 81388E1C | 38 A0 00 01 */	li r5, 0x1
/* 81388E20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388E24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388E28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388E2C | 7D 89 03 A6 */	mtctr r12
/* 81388E30 | 4E 80 04 21 */	bctrl
/* 81388E34 | 7C 64 1B 78 */	mr r4, r3
/* 81388E38 | 7F A3 EB 78 */	mr r3, r29
/* 81388E3C | 7F 25 CB 78 */	mr r5, r25
/* 81388E40 | 48 00 36 29 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388E44 | 38 00 00 00 */	li r0, 0x0
/* 81388E48 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81388E4C | 48 00 02 28 */	b .L_81389074
.L_81388E50:
/* 81388E50 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388E54 | 38 80 00 00 */	li r4, 0x0
/* 81388E58 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388E5C | 48 18 94 BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388E60 | 7C 7B 1B 78 */	mr r27, r3
/* 81388E64 | 4B FD 9A 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388E68 | 3B 80 00 01 */	li r28, 0x1
/* 81388E6C | 38 80 00 01 */	li r4, 0x1
/* 81388E70 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81388E74 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388E78 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388E7C | 48 18 94 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388E80 | 7C 7B 1B 78 */	mr r27, r3
/* 81388E84 | 4B FD 99 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388E88 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81388E8C | 38 80 00 03 */	li r4, 0x3
/* 81388E90 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388E94 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388E98 | 48 18 94 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388E9C | 7C 7B 1B 78 */	mr r27, r3
/* 81388EA0 | 4B FD 99 D1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388EA4 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81388EA8 | 38 80 00 1A */	li r4, 0x1a
/* 81388EAC | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388EB0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388EB4 | 48 18 94 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388EB8 | 4B FE 0D 6D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388EBC | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388EC0 | 38 80 00 10 */	li r4, 0x10
/* 81388EC4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388EC8 | 48 18 94 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388ECC | 4B FE 0D 59 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388ED0 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388ED4 | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 81388ED8 | 38 A0 00 01 */	li r5, 0x1
/* 81388EDC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388EE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388EE4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388EE8 | 7D 89 03 A6 */	mtctr r12
/* 81388EEC | 4E 80 04 21 */	bctrl
/* 81388EF0 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 81388EF4 | 7C 7B 1B 78 */	mr r27, r3
/* 81388EF8 | 38 80 00 31 */	li r4, 0x31
/* 81388EFC | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81388F00 | 4B FB 58 BD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81388F04 | 7C 65 1B 78 */	mr r5, r3
/* 81388F08 | 7F A3 EB 78 */	mr r3, r29
/* 81388F0C | 7F 64 DB 78 */	mr r4, r27
/* 81388F10 | 48 00 35 59 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388F14 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388F18 | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 81388F1C | 38 A0 00 01 */	li r5, 0x1
/* 81388F20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388F24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388F28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388F2C | 7D 89 03 A6 */	mtctr r12
/* 81388F30 | 4E 80 04 21 */	bctrl
/* 81388F34 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 81388F38 | 7C 7B 1B 78 */	mr r27, r3
/* 81388F3C | 38 80 00 47 */	li r4, 0x47
/* 81388F40 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81388F44 | 4B FB 58 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81388F48 | 7C 65 1B 78 */	mr r5, r3
/* 81388F4C | 7F A3 EB 78 */	mr r3, r29
/* 81388F50 | 7F 64 DB 78 */	mr r4, r27
/* 81388F54 | 48 00 35 15 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81388F58 | 38 00 00 10 */	li r0, 0x10
/* 81388F5C | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81388F60 | 48 00 01 14 */	b .L_81389074
.L_81388F64:
/* 81388F64 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388F68 | 38 80 00 00 */	li r4, 0x0
/* 81388F6C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388F70 | 48 18 93 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388F74 | 7C 7B 1B 78 */	mr r27, r3
/* 81388F78 | 4B FD 98 F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388F7C | 3B 80 00 01 */	li r28, 0x1
/* 81388F80 | 38 80 00 01 */	li r4, 0x1
/* 81388F84 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81388F88 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388F8C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388F90 | 48 18 93 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388F94 | 7C 7B 1B 78 */	mr r27, r3
/* 81388F98 | 4B FD 98 D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388F9C | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81388FA0 | 38 80 00 03 */	li r4, 0x3
/* 81388FA4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388FA8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388FAC | 48 18 93 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388FB0 | 7C 7B 1B 78 */	mr r27, r3
/* 81388FB4 | 4B FD 98 BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81388FB8 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81388FBC | 38 80 00 1A */	li r4, 0x1a
/* 81388FC0 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388FC4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388FC8 | 48 18 93 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388FCC | 4B FE 0C 59 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388FD0 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81388FD4 | 38 80 00 10 */	li r4, 0x10
/* 81388FD8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81388FDC | 48 18 93 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81388FE0 | 4B FE 0C 45 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81388FE4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81388FE8 | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 81388FEC | 38 A0 00 01 */	li r5, 0x1
/* 81388FF0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81388FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81388FF8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81388FFC | 7D 89 03 A6 */	mtctr r12
/* 81389000 | 4E 80 04 21 */	bctrl
/* 81389004 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 81389008 | 7C 7B 1B 78 */	mr r27, r3
/* 8138900C | 38 80 00 3F */	li r4, 0x3f
/* 81389010 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81389014 | 4B FB 57 A9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81389018 | 7C 65 1B 78 */	mr r5, r3
/* 8138901C | 7F A3 EB 78 */	mr r3, r29
/* 81389020 | 7F 64 DB 78 */	mr r4, r27
/* 81389024 | 48 00 34 45 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81389028 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138902C | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 81389030 | 38 A0 00 01 */	li r5, 0x1
/* 81389034 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389038 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138903C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81389040 | 7D 89 03 A6 */	mtctr r12
/* 81389044 | 4E 80 04 21 */	bctrl
/* 81389048 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 8138904C | 7C 7B 1B 78 */	mr r27, r3
/* 81389050 | 38 80 00 48 */	li r4, 0x48
/* 81389054 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81389058 | 4B FB 57 65 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138905C | 7C 65 1B 78 */	mr r5, r3
/* 81389060 | 7F A3 EB 78 */	mr r3, r29
/* 81389064 | 7F 64 DB 78 */	mr r4, r27
/* 81389068 | 48 00 34 01 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138906C | 38 00 00 10 */	li r0, 0x10
/* 81389070 | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_81389074:
/* 81389074 | 38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 81389078 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138907C | 48 15 D4 55 */	bl RFLSearchOfficialData
/* 81389080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81389084 | 41 82 00 38 */	beq .L_813890BC
/* 81389088 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138908C | 3D 00 81 39 */	lis r8, nigaoe_create_callback_edit__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv@ha
/* 81389090 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81389094 | A8 E1 00 08 */	lha r7, 0x8(r1)
/* 81389098 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 8138909C | 7F A9 EB 78 */	mr r9, r29
/* 813890A0 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 813890A4 | 39 08 C5 04 */	addi r8, r8, nigaoe_create_callback_edit__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv@l
/* 813890A8 | 38 A0 00 4C */	li r5, 0x4c
/* 813890AC | 38 C0 00 4C */	li r6, 0x4c
/* 813890B0 | 4B FB 59 E5 */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 813890B4 | 38 00 00 01 */	li r0, 0x1
/* 813890B8 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
.L_813890BC:
/* 813890BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813890C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813890C4 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813890C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813890CC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813890D0 | 7D 89 03 A6 */	mtctr r12
/* 813890D4 | 4E 80 04 21 */	bctrl
/* 813890D8 | 38 60 00 3C */	li r3, 0x3c
/* 813890DC | 48 26 EF C1 */	bl __nw__FUl
/* 813890E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813890E4 | 7C 79 1B 78 */	mr r25, r3
/* 813890E8 | 41 82 00 4C */	beq .L_81389134
/* 813890EC | C0 22 83 F8 */	lfs f1, lbl_816947F8@sda21(r0)
/* 813890F0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813890F4 | C3 E2 83 F0 */	lfs f31, lbl_816947F0@sda21(r0)
/* 813890F8 | FC 40 08 90 */	fmr f2, f1
/* 813890FC | C3 C2 83 F4 */	lfs f30, lbl_816947F4@sda21(r0)
/* 81389100 | FC 60 08 90 */	fmr f3, f1
/* 81389104 | 83 5D 00 24 */	lwz r26, 0x24(r29)
/* 81389108 | 4B FD 99 55 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8138910C | FC 20 F0 90 */	fmr f1, f30
/* 81389110 | 7C 68 1B 78 */	mr r8, r3
/* 81389114 | FC 40 F8 90 */	fmr f2, f31
/* 81389118 | 80 BD 00 AC */	lwz r5, 0xac(r29)
/* 8138911C | 7F 23 CB 78 */	mr r3, r25
/* 81389120 | 7F 44 D3 78 */	mr r4, r26
/* 81389124 | 38 FF 04 06 */	addi r7, r31, 0x406
/* 81389128 | 38 CD 85 A4 */	li r6, lbl_816965E4@sda21
/* 8138912C | 48 04 82 E1 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 81389130 | 7C 79 1B 78 */	mr r25, r3
.L_81389134:
/* 81389134 | 93 3D 00 A8 */	stw r25, 0xa8(r29)
/* 81389138 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 8138913C | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 81389140 | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 81389144 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 81389148 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8138914C | 48 27 03 B1 */	bl _restgpr_23
/* 81389150 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81389154 | 7C 08 03 A6 */	mtlr r0
/* 81389158 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138915C | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene11AddressEditFv

# .text:0x10E4 | 0x81389160 | size: 0x74
# ipl::scene::AddressEdit::calcFadein()
.fn calcFadein__Q33ipl5scene11AddressEditFv, global
/* 81389160 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389164 | 7C 08 02 A6 */	mflr r0
/* 81389168 | 38 80 00 00 */	li r4, 0x0
/* 8138916C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389170 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81389174 | 3B E0 00 00 */	li r31, 0x0
/* 81389178 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138917C | 7C 7E 1B 78 */	mr r30, r3
/* 81389180 | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 81389184 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81389188 | 48 18 91 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138918C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81389190 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81389194 | 41 82 00 24 */	beq .L_813891B8
/* 81389198 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138919C | 38 80 00 00 */	li r4, 0x0
/* 813891A0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813891A4 | 48 18 91 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813891A8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813891AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813891B0 | 41 82 00 08 */	beq .L_813891B8
/* 813891B4 | 3B E0 00 01 */	li r31, 0x1
.L_813891B8:
/* 813891B8 | 7F E3 FB 78 */	mr r3, r31
/* 813891BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813891C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813891C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813891C8 | 7C 08 03 A6 */	mtlr r0
/* 813891CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813891D0 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene11AddressEditFv

# .text:0x1158 | 0x813891D4 | size: 0x54
# ipl::scene::AddressEdit::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene11AddressEditFv, global
/* 813891D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813891D8 | 7C 08 02 A6 */	mflr r0
/* 813891DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813891E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813891E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813891E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813891EC | 41 82 00 08 */	beq .L_813891F4
/* 813891F0 | 3B E3 00 58 */	addi r31, r3, 0x58
.L_813891F4:
/* 813891F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813891F8 | 38 80 00 05 */	li r4, 0x5
/* 813891FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81389200 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81389204 | 48 08 1F 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81389208 | 7F E4 FB 78 */	mr r4, r31
/* 8138920C | 38 A0 00 00 */	li r5, 0x0
/* 81389210 | 48 01 37 2D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81389214 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389218 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138921C | 7C 08 03 A6 */	mtlr r0
/* 81389220 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389224 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene11AddressEditFv

# .text:0x11AC | 0x81389228 | size: 0x204
# ipl::scene::AddressEdit::calcNormal()
.fn calcNormal__Q33ipl5scene11AddressEditFv, global
/* 81389228 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138922C | 7C 08 02 A6 */	mflr r0
/* 81389230 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389234 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81389238 | 7C 7F 1B 78 */	mr r31, r3
/* 8138923C | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 81389240 | 28 00 00 2F */	cmplwi r0, 0x2f
/* 81389244 | 41 81 01 98 */	bgt .L_813893DC
/* 81389248 | 3C 80 81 65 */	lis r4, jumptable_816483C0@ha
/* 8138924C | 54 00 10 3A */	slwi r0, r0, 2
/* 81389250 | 38 84 83 C0 */	addi r4, r4, jumptable_816483C0@l
/* 81389254 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81389258 | 7C 89 03 A6 */	mtctr r4
/* 8138925C | 4E 80 04 20 */	bctr
.L_81389260:
/* 81389260 | 48 00 03 AD */	bl stt_normal__Q33ipl5scene11AddressEditFv
/* 81389264 | 48 00 01 78 */	b .L_813893DC
.L_81389268:
/* 81389268 | 48 00 04 15 */	bl stt_wait_decide_anm__Q33ipl5scene11AddressEditFv
/* 8138926C | 48 00 01 70 */	b .L_813893DC
.L_81389270:
/* 81389270 | 48 00 0A 0D */	bl stt_wait_btn_fadein__Q33ipl5scene11AddressEditFv
/* 81389274 | 48 00 01 68 */	b .L_813893DC
.L_81389278:
/* 81389278 | 48 00 0A F9 */	bl stt_wait_btn_fadeout__Q33ipl5scene11AddressEditFv
/* 8138927C | 48 00 01 60 */	b .L_813893DC
.L_81389280:
/* 81389280 | 48 00 0C 69 */	bl stt_wait_del_msg_fadein__Q33ipl5scene11AddressEditFv
/* 81389284 | 48 00 01 58 */	b .L_813893DC
.L_81389288:
/* 81389288 | 48 00 0C AD */	bl stt_wait_del_msg_fadeout__Q33ipl5scene11AddressEditFv
/* 8138928C | 48 00 01 50 */	b .L_813893DC
.L_81389290:
/* 81389290 | 48 00 0E 5D */	bl stt_wait_del_msg_fadeout_to_rlt__Q33ipl5scene11AddressEditFv
/* 81389294 | 48 00 01 48 */	b .L_813893DC
.L_81389298:
/* 81389298 | 48 00 0D 8D */	bl stt_wait_delete__Q33ipl5scene11AddressEditFv
/* 8138929C | 48 00 01 40 */	b .L_813893DC
.L_813892A0:
/* 813892A0 | 48 00 0E B1 */	bl stt_msg_del_rlt__Q33ipl5scene11AddressEditFv
/* 813892A4 | 48 00 01 38 */	b .L_813893DC
.L_813892A8:
/* 813892A8 | 48 00 29 AD */	bl stt_msg_code_edit__Q33ipl5scene11AddressEditFv
/* 813892AC | 48 00 01 30 */	b .L_813893DC
.L_813892B0:
/* 813892B0 | 48 00 29 C9 */	bl stt_msg_no_mii__Q33ipl5scene11AddressEditFv
/* 813892B4 | 48 00 01 28 */	b .L_813893DC
.L_813892B8:
/* 813892B8 | 48 00 2A 41 */	bl stt_select_mii__Q33ipl5scene11AddressEditFv
/* 813892BC | 48 00 01 20 */	b .L_813893DC
.L_813892C0:
/* 813892C0 | 48 00 0F 2D */	bl stt_ipt_wait_fadein__Q33ipl5scene11AddressEditFv
/* 813892C4 | 48 00 01 18 */	b .L_813893DC
.L_813892C8:
/* 813892C8 | 48 00 0F C5 */	bl stt_ipt_normal__Q33ipl5scene11AddressEditFv
/* 813892CC | 48 00 01 10 */	b .L_813893DC
.L_813892D0:
/* 813892D0 | 48 00 10 2D */	bl stt_ipt_input__Q33ipl5scene11AddressEditFv
/* 813892D4 | 48 00 01 08 */	b .L_813893DC
.L_813892D8:
/* 813892D8 | 48 00 12 31 */	bl stt_ipt_wait_fadeout__Q33ipl5scene11AddressEditFv
/* 813892DC | 48 00 01 00 */	b .L_813893DC
.L_813892E0:
/* 813892E0 | 48 00 13 01 */	bl stt_add_code_fadein__Q33ipl5scene11AddressEditFv
/* 813892E4 | 48 00 00 F8 */	b .L_813893DC
.L_813892E8:
/* 813892E8 | 48 00 13 B5 */	bl stt_add_code_normal__Q33ipl5scene11AddressEditFv
/* 813892EC | 48 00 00 F0 */	b .L_813893DC
.L_813892F0:
/* 813892F0 | 48 00 14 1D */	bl stt_add_code_input__Q33ipl5scene11AddressEditFv
/* 813892F4 | 48 00 00 E8 */	b .L_813893DC
.L_813892F8:
/* 813892F8 | 48 00 17 69 */	bl stt_msg_code_invalid__Q33ipl5scene11AddressEditFv
/* 813892FC | 48 00 00 E0 */	b .L_813893DC
.L_81389300:
/* 81389300 | 48 00 17 C1 */	bl stt_msg_dup_wii_no__Q33ipl5scene11AddressEditFv
/* 81389304 | 48 00 00 D8 */	b .L_813893DC
.L_81389308:
/* 81389308 | 48 00 18 19 */	bl stt_msg_dup_email__Q33ipl5scene11AddressEditFv
/* 8138930C | 48 00 00 D0 */	b .L_813893DC
.L_81389310:
/* 81389310 | 48 00 18 71 */	bl stt_msg_my_wii_no__Q33ipl5scene11AddressEditFv
/* 81389314 | 48 00 00 C8 */	b .L_813893DC
.L_81389318:
/* 81389318 | 48 00 18 C9 */	bl stt_add_code_fadeout__Q33ipl5scene11AddressEditFv
/* 8138931C | 48 00 00 C0 */	b .L_813893DC
.L_81389320:
/* 81389320 | 48 00 1A 7D */	bl stt_add_name_fadein__Q33ipl5scene11AddressEditFv
/* 81389324 | 48 00 00 B8 */	b .L_813893DC
.L_81389328:
/* 81389328 | 48 00 1A F9 */	bl stt_add_name_normal__Q33ipl5scene11AddressEditFv
/* 8138932C | 48 00 00 B0 */	b .L_813893DC
.L_81389330:
/* 81389330 | 48 00 1B 61 */	bl stt_add_name_input__Q33ipl5scene11AddressEditFv
/* 81389334 | 48 00 00 A8 */	b .L_813893DC
.L_81389338:
/* 81389338 | 48 00 1D 65 */	bl stt_add_name_fadeout__Q33ipl5scene11AddressEditFv
/* 8138933C | 48 00 00 A0 */	b .L_813893DC
.L_81389340:
/* 81389340 | 48 00 20 B9 */	bl stt_add_mii_fadein__Q33ipl5scene11AddressEditFv
/* 81389344 | 48 00 00 98 */	b .L_813893DC
.L_81389348:
/* 81389348 | 48 00 21 35 */	bl stt_add_mii_normal__Q33ipl5scene11AddressEditFv
/* 8138934C | 48 00 00 90 */	b .L_813893DC
.L_81389350:
/* 81389350 | 48 00 21 9D */	bl stt_add_mii_input__Q33ipl5scene11AddressEditFv
/* 81389354 | 48 00 00 88 */	b .L_813893DC
.L_81389358:
/* 81389358 | 48 00 23 0D */	bl stt_msg_no_mii_add__Q33ipl5scene11AddressEditFv
/* 8138935C | 48 00 00 80 */	b .L_813893DC
.L_81389360:
/* 81389360 | 48 00 23 65 */	bl stt_add_mii_fadeout__Q33ipl5scene11AddressEditFv
/* 81389364 | 48 00 00 78 */	b .L_813893DC
.L_81389368:
/* 81389368 | 48 00 26 45 */	bl stt_add_confirm_fadein__Q33ipl5scene11AddressEditFv
/* 8138936C | 48 00 00 70 */	b .L_813893DC
.L_81389370:
/* 81389370 | 48 00 26 89 */	bl stt_add_confirm_normal__Q33ipl5scene11AddressEditFv
/* 81389374 | 48 00 00 68 */	b .L_813893DC
.L_81389378:
/* 81389378 | 48 00 26 F1 */	bl stt_add_confirm_fadeout__Q33ipl5scene11AddressEditFv
/* 8138937C | 48 00 00 60 */	b .L_813893DC
.L_81389380:
/* 81389380 | 48 00 27 E1 */	bl stt_wait_decide_anm_add__Q33ipl5scene11AddressEditFv
/* 81389384 | 48 00 00 58 */	b .L_813893DC
.L_81389388:
/* 81389388 | 48 00 28 A9 */	bl stt_msg_code_add__Q33ipl5scene11AddressEditFv
/* 8138938C | 48 00 00 50 */	b .L_813893DC
.L_81389390:
/* 81389390 | 48 00 2A F9 */	bl stt_msg_add_rlt__Q33ipl5scene11AddressEditFv
/* 81389394 | 48 00 00 48 */	b .L_813893DC
.L_81389398:
/* 81389398 | 48 00 2B 59 */	bl stt_msg_net__Q33ipl5scene11AddressEditFv
/* 8138939C | 48 00 00 40 */	b .L_813893DC
.L_813893A0:
/* 813893A0 | 48 00 2C 5D */	bl stt_wait_parental__Q33ipl5scene11AddressEditFv
/* 813893A4 | 48 00 00 38 */	b .L_813893DC
.L_813893A8:
/* 813893A8 | 48 00 2C D9 */	bl stt_wait_parental_dst__Q33ipl5scene11AddressEditFv
/* 813893AC | 48 00 00 30 */	b .L_813893DC
.L_813893B0:
/* 813893B0 | 48 00 2D B1 */	bl stt_msg_wc__Q33ipl5scene11AddressEditFv
/* 813893B4 | 48 00 00 28 */	b .L_813893DC
.L_813893B8:
/* 813893B8 | 48 00 2E B5 */	bl stt_wait_parental_wc__Q33ipl5scene11AddressEditFv
/* 813893BC | 48 00 00 20 */	b .L_813893DC
.L_813893C0:
/* 813893C0 | 48 00 2F 31 */	bl stt_wait_parental_dst_wc__Q33ipl5scene11AddressEditFv
/* 813893C4 | 48 00 00 18 */	b .L_813893DC
.L_813893C8:
/* 813893C8 | 48 00 30 09 */	bl stt_msg_parental__Q33ipl5scene11AddressEditFv
/* 813893CC | 48 00 00 10 */	b .L_813893DC
.L_813893D0:
/* 813893D0 | 48 00 30 25 */	bl stt_msg_nwc24_error__Q33ipl5scene11AddressEditFv
/* 813893D4 | 48 00 00 08 */	b .L_813893DC
.L_813893D8:
/* 813893D8 | 48 00 30 41 */	bl stt_msg_no_established__Q33ipl5scene11AddressEditFv
.L_813893DC:
/* 813893DC | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 813893E0 | 28 00 00 2F */	cmplwi r0, 0x2f
/* 813893E4 | 41 81 00 24 */	bgt .L_81389408
/* 813893E8 | 3C 60 81 65 */	lis r3, jumptable_81648300@ha
/* 813893EC | 54 00 10 3A */	slwi r0, r0, 2
/* 813893F0 | 38 63 83 00 */	addi r3, r3, jumptable_81648300@l
/* 813893F4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813893F8 | 7C 69 03 A6 */	mtctr r3
/* 813893FC | 4E 80 04 20 */	bctr
.L_81389400:
/* 81389400 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 81389404 | 48 04 81 A9 */	bl calc__Q33ipl5scene11TextBalloonFv
.L_81389408:
/* 81389408 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138940C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81389410 | 38 03 FF D0 */	subi r0, r3, 0x30
/* 81389414 | 7C 00 00 34 */	cntlzw r0, r0
/* 81389418 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8138941C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389420 | 7C 08 03 A6 */	mtlr r0
/* 81389424 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389428 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene11AddressEditFv

# .text:0x13B0 | 0x8138942C | size: 0x50
# ipl::scene::AddressEdit::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene11AddressEditFv, global
/* 8138942C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389430 | 7C 08 02 A6 */	mflr r0
/* 81389434 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81389438 | 38 80 00 05 */	li r4, 0x5
/* 8138943C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389440 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81389444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81389448 | 7C 7F 1B 78 */	mr r31, r3
/* 8138944C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81389450 | 48 08 1C E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81389454 | 38 80 00 00 */	li r4, 0x0
/* 81389458 | 38 A0 00 00 */	li r5, 0x0
/* 8138945C | 48 01 34 E1 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81389460 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 81389464 | 48 04 81 49 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 81389468 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138946C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81389470 | 7C 08 03 A6 */	mtlr r0
/* 81389474 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389478 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene11AddressEditFv

# .text:0x1400 | 0x8138947C | size: 0xC0
# ipl::scene::AddressEdit::calcFadeout()
.fn calcFadeout__Q33ipl5scene11AddressEditFv, global
/* 8138947C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389480 | 7C 08 02 A6 */	mflr r0
/* 81389484 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389488 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138948C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81389490 | 7C 7E 1B 78 */	mr r30, r3
/* 81389494 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 81389498 | 48 04 81 15 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 8138949C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813894A0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813894A4 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813894A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813894AC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813894B0 | 7D 89 03 A6 */	mtctr r12
/* 813894B4 | 4E 80 04 21 */	bctrl
/* 813894B8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813894BC | 40 82 00 4C */	bne .L_81389508
/* 813894C0 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813894C4 | 3B E0 00 00 */	li r31, 0x0
/* 813894C8 | 38 80 00 1E */	li r4, 0x1e
/* 813894CC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813894D0 | 48 18 8E 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813894D4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813894D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813894DC | 41 82 00 24 */	beq .L_81389500
/* 813894E0 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 813894E4 | 38 80 00 09 */	li r4, 0x9
/* 813894E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813894EC | 48 18 8E 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813894F0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813894F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813894F8 | 41 82 00 08 */	beq .L_81389500
/* 813894FC | 3B E0 00 01 */	li r31, 0x1
.L_81389500:
/* 81389500 | 7F E3 FB 78 */	mr r3, r31
/* 81389504 | 48 00 00 20 */	b .L_81389524
.L_81389508:
/* 81389508 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8138950C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81389510 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81389514 | 7D 89 03 A6 */	mtctr r12
/* 81389518 | 4E 80 04 21 */	bctrl
/* 8138951C | 7C 60 00 34 */	cntlzw r0, r3
/* 81389520 | 54 03 D9 7E */	srwi r3, r0, 5
.L_81389524:
/* 81389524 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389528 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138952C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81389530 | 7C 08 03 A6 */	mtlr r0
/* 81389534 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389538 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene11AddressEditFv

# .text:0x14C0 | 0x8138953C | size: 0x68
# ipl::scene::AddressEdit::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene11AddressEditFv, global
/* 8138953C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389540 | 7C 08 02 A6 */	mflr r0
/* 81389544 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389548 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138954C | 7C 7F 1B 78 */	mr r31, r3
/* 81389550 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 81389554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81389558 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138955C | 7D 89 03 A6 */	mtctr r12
/* 81389560 | 4E 80 04 21 */	bctrl
/* 81389564 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389568 | 4B FE 11 9D */	bl calc__Q33ipl6layout6ObjectFv
/* 8138956C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 81389570 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81389574 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81389578 | 7D 89 03 A6 */	mtctr r12
/* 8138957C | 4E 80 04 21 */	bctrl
/* 81389580 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81389584 | 4B FE 11 81 */	bl calc__Q33ipl6layout6ObjectFv
/* 81389588 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8138958C | 4B FE 11 79 */	bl calc__Q33ipl6layout6ObjectFv
/* 81389590 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389594 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81389598 | 7C 08 03 A6 */	mtlr r0
/* 8138959C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813895A0 | 4E 80 00 20 */	blr
.endfn calcCommonAfter__Q33ipl5scene11AddressEditFv

# .text:0x1528 | 0x813895A4 | size: 0x68
# ipl::scene::AddressEdit::draw()
.fn draw__Q33ipl5scene11AddressEditFv, global
/* 813895A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813895A8 | 7C 08 02 A6 */	mflr r0
/* 813895AC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813895B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813895B4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813895B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813895BC | 7C 7F 1B 78 */	mr r31, r3
/* 813895C0 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813895C4 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813895C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813895CC | 40 82 00 2C */	bne .L_813895F8
/* 813895D0 | 38 60 00 00 */	li r3, 0x0
/* 813895D4 | 4B FD 94 99 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813895D8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813895DC | 4B FE 11 C1 */	bl draw__Q33ipl6layout6ObjectFv
/* 813895E0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813895E4 | 4B FE 11 B9 */	bl draw__Q33ipl6layout6ObjectFv
/* 813895E8 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813895EC | 4B FE 11 B1 */	bl draw__Q33ipl6layout6ObjectFv
/* 813895F0 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813895F4 | 48 04 80 05 */	bl draw__Q33ipl5scene11TextBalloonFv
.L_813895F8:
/* 813895F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813895FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81389600 | 7C 08 03 A6 */	mtlr r0
/* 81389604 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389608 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene11AddressEditFv

# .text:0x1590 | 0x8138960C | size: 0x70
# ipl::scene::AddressEdit::stt_normal()
.fn stt_normal__Q33ipl5scene11AddressEditFv, global
/* 8138960C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389610 | 7C 08 02 A6 */	mflr r0
/* 81389614 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81389618 | 38 80 00 05 */	li r4, 0x5
/* 8138961C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389620 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81389624 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81389628 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138962C | 7C 7E 1B 78 */	mr r30, r3
/* 81389630 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81389634 | 48 08 1B 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81389638 | 7C 7F 1B 78 */	mr r31, r3
/* 8138963C | 48 01 32 D9 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81389640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81389644 | 41 82 00 0C */	beq .L_81389650
/* 81389648 | 7F E3 FB 78 */	mr r3, r31
/* 8138964C | 48 01 2F 21 */	bl update__Q33ipl5scene6ButtonFv
.L_81389650:
/* 81389650 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 81389654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81389658 | 40 82 00 0C */	bne .L_81389664
/* 8138965C | 80 7E 00 70 */	lwz r3, 0x70(r30)
/* 81389660 | 4B FE 19 2D */	bl update__Q33ipl3gui11PaneManagerFv
.L_81389664:
/* 81389664 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389668 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138966C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81389670 | 7C 08 03 A6 */	mtlr r0
/* 81389674 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389678 | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene11AddressEditFv

# .text:0x1600 | 0x8138967C | size: 0x5EC
# ipl::scene::AddressEdit::stt_wait_decide_anm()
.fn stt_wait_decide_anm__Q33ipl5scene11AddressEditFv, global
/* 8138967C | 94 21 F7 90 */	stwu r1, -0x870(r1)
/* 81389680 | 7C 08 02 A6 */	mflr r0
/* 81389684 | 90 01 08 74 */	stw r0, 0x874(r1)
/* 81389688 | 39 61 08 70 */	addi r11, r1, 0x870
/* 8138968C | 48 26 FE 35 */	bl _savegpr_27
/* 81389690 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81389694 | 3F E0 81 64 */	lis r31, lbl_81647EE0@ha
/* 81389698 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138969C | 7C 7D 1B 78 */	mr r29, r3
/* 813896A0 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813896A4 | 3B FF 7E E0 */	addi r31, r31, lbl_81647EE0@l
/* 813896A8 | 3B 80 00 01 */	li r28, 0x1
/* 813896AC | 38 80 00 05 */	li r4, 0x5
/* 813896B0 | 48 08 1A 89 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813896B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813896B8 | 3B 60 00 00 */	li r27, 0x0
.L_813896BC:
/* 813896BC | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 813896C0 | 80 9D 00 68 */	lwz r4, 0x68(r29)
/* 813896C4 | 38 03 00 06 */	addi r0, r3, 0x6
/* 813896C8 | 38 64 02 8C */	addi r3, r4, 0x28c
/* 813896CC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813896D0 | 48 18 8C 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813896D4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813896D8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813896DC | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 813896E0 | 38 63 FF FF */	subi r3, r3, 0x1
/* 813896E4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813896E8 | 7C 00 19 10 */	subfe r0, r0, r3
/* 813896EC | 7F 83 00 38 */	and r3, r28, r0
/* 813896F0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813896F4 | 7F 80 19 10 */	subfe r28, r0, r3
/* 813896F8 | 41 80 FF C4 */	blt .L_813896BC
/* 813896FC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81389700 | 41 82 05 50 */	beq .L_81389C50
/* 81389704 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 81389708 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138970C | 41 82 00 28 */	beq .L_81389734
/* 81389710 | 40 80 00 14 */	bge .L_81389724
/* 81389714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81389718 | 41 82 02 F4 */	beq .L_81389A0C
/* 8138971C | 40 80 00 DC */	bge .L_813897F8
/* 81389720 | 48 00 05 28 */	b .L_81389C48
.L_81389724:
/* 81389724 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81389728 | 41 82 04 E0 */	beq .L_81389C08
/* 8138972C | 40 80 05 1C */	bge .L_81389C48
/* 81389730 | 48 00 02 54 */	b .L_81389984
.L_81389734:
/* 81389734 | 80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 81389738 | 80 7D 04 EC */	lwz r3, 0x4ec(r29)
/* 8138973C | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 81389740 | 7C 63 02 14 */	add r3, r3, r0
/* 81389744 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81389748 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8138974C | 40 82 00 28 */	bne .L_81389774
/* 81389750 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81389754 | 38 80 00 15 */	li r4, 0x15
/* 81389758 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138975C | 48 18 8B BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389760 | 7C 7F 1B 78 */	mr r31, r3
/* 81389764 | 4B FD 91 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389768 | 38 00 00 01 */	li r0, 0x1
/* 8138976C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81389770 | 48 00 00 24 */	b .L_81389794
.L_81389774:
/* 81389774 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81389778 | 38 80 00 1B */	li r4, 0x1b
/* 8138977C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389780 | 48 18 8B 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389784 | 7C 7F 1B 78 */	mr r31, r3
/* 81389788 | 4B FD 90 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138978C | 38 00 00 01 */	li r0, 0x1
/* 81389790 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81389794:
/* 81389794 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81389798 | 38 80 00 16 */	li r4, 0x16
/* 8138979C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813897A0 | 48 18 8B 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813897A4 | 7C 7C 1B 78 */	mr r28, r3
/* 813897A8 | 4B FD 90 C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813897AC | 3B E0 00 01 */	li r31, 0x1
/* 813897B0 | 38 80 00 17 */	li r4, 0x17
/* 813897B4 | 93 FC 00 14 */	stw r31, 0x14(r28)
/* 813897B8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813897BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813897C0 | 48 18 8B 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813897C4 | 7C 7C 1B 78 */	mr r28, r3
/* 813897C8 | 4B FD 90 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813897CC | 93 FC 00 14 */	stw r31, 0x14(r28)
/* 813897D0 | 7F C3 F3 78 */	mr r3, r30
/* 813897D4 | 38 80 00 0C */	li r4, 0xc
/* 813897D8 | 48 01 3C 51 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813897DC | 38 00 00 03 */	li r0, 0x3
/* 813897E0 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813897E4 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 813897E8 | 48 04 81 C5 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813897EC | 7F A3 EB 78 */	mr r3, r29
/* 813897F0 | 48 00 3C 95 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 813897F4 | 48 00 04 5C */	b .L_81389C50
.L_813897F8:
/* 813897F8 | 7F C3 F3 78 */	mr r3, r30
/* 813897FC | 38 80 00 0C */	li r4, 0xc
/* 81389800 | 48 01 3C 29 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81389804 | 7F C3 F3 78 */	mr r3, r30
/* 81389808 | 38 80 00 01 */	li r4, 0x1
/* 8138980C | 38 A0 00 2E */	li r5, 0x2e
/* 81389810 | 48 01 3C 4D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81389814 | 7F C3 F3 78 */	mr r3, r30
/* 81389818 | 38 80 00 0F */	li r4, 0xf
/* 8138981C | 48 01 3C 0D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81389820 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81389824 | 38 80 00 00 */	li r4, 0x0
/* 81389828 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138982C | 48 18 8A ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389830 | 7C 7C 1B 78 */	mr r28, r3
/* 81389834 | 4B FD 90 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389838 | 3B C0 00 01 */	li r30, 0x1
/* 8138983C | 38 80 00 01 */	li r4, 0x1
/* 81389840 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81389844 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81389848 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138984C | 48 18 8A CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389850 | 7C 7C 1B 78 */	mr r28, r3
/* 81389854 | 4B FD 90 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389858 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 8138985C | 38 80 00 02 */	li r4, 0x2
/* 81389860 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81389864 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389868 | 48 18 8A B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138986C | 7C 7C 1B 78 */	mr r28, r3
/* 81389870 | 4B FD 90 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389874 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81389878 | 38 80 00 03 */	li r4, 0x3
/* 8138987C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81389880 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389884 | 48 18 8A 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389888 | 4B FE 03 9D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8138988C | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 81389890 | 38 80 00 00 */	li r4, 0x0
/* 81389894 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389898 | 48 18 8A 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138989C | 7C 7C 1B 78 */	mr r28, r3
/* 813898A0 | 4B FD 8F D1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813898A4 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813898A8 | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 813898AC | 38 A0 00 01 */	li r5, 0x1
/* 813898B0 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813898B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813898B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813898BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813898C0 | 7D 89 03 A6 */	mtctr r12
/* 813898C4 | 4E 80 04 21 */	bctrl
/* 813898C8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813898CC | 7C 7C 1B 78 */	mr r28, r3
/* 813898D0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813898D4 | 38 80 00 32 */	li r4, 0x32
/* 813898D8 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813898DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813898E0 | 4B FB 4E DD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813898E4 | 7C 65 1B 78 */	mr r5, r3
/* 813898E8 | 7F A3 EB 78 */	mr r3, r29
/* 813898EC | 7F 84 E3 78 */	mr r4, r28
/* 813898F0 | 48 00 2B 79 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 813898F4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813898F8 | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 813898FC | 38 A0 00 01 */	li r5, 0x1
/* 81389900 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389904 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81389908 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138990C | 7D 89 03 A6 */	mtctr r12
/* 81389910 | 4E 80 04 21 */	bctrl
/* 81389914 | 7C 64 1B 78 */	mr r4, r3
/* 81389918 | 7F A3 EB 78 */	mr r3, r29
/* 8138991C | 38 BD 02 B4 */	addi r5, r29, 0x2b4
/* 81389920 | 48 00 2B 49 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81389924 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81389928 | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 8138992C | 38 A0 00 01 */	li r5, 0x1
/* 81389930 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389934 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81389938 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138993C | 7D 89 03 A6 */	mtctr r12
/* 81389940 | 4E 80 04 21 */	bctrl
/* 81389944 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 81389948 | 7C 7C 1B 78 */	mr r28, r3
/* 8138994C | 38 80 00 49 */	li r4, 0x49
/* 81389950 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81389954 | 4B FB 4E 69 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81389958 | 7C 65 1B 78 */	mr r5, r3
/* 8138995C | 7F A3 EB 78 */	mr r3, r29
/* 81389960 | 7F 84 E3 78 */	mr r4, r28
/* 81389964 | 48 00 2B 05 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81389968 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138996C | 48 04 80 41 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 81389970 | 7F A3 EB 78 */	mr r3, r29
/* 81389974 | 48 00 3B 11 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 81389978 | 38 00 00 0C */	li r0, 0xc
/* 8138997C | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81389980 | 48 00 02 D0 */	b .L_81389C50
.L_81389984:
/* 81389984 | 80 1D 04 E8 */	lwz r0, 0x4e8(r29)
/* 81389988 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138998C | 41 82 02 C4 */	beq .L_81389C50
/* 81389990 | 38 00 00 00 */	li r0, 0x0
/* 81389994 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
/* 81389998 | 48 15 C5 A1 */	bl RFLGetAvailableOfficialDataNum
/* 8138999C | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 813899A0 | 41 82 00 40 */	beq .L_813899E0
/* 813899A4 | 7F C3 F3 78 */	mr r3, r30
/* 813899A8 | 38 80 00 0C */	li r4, 0xc
/* 813899AC | 48 01 3A 7D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813899B0 | 7F C3 F3 78 */	mr r3, r30
/* 813899B4 | 38 80 00 0B */	li r4, 0xb
/* 813899B8 | 48 01 3A 71 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813899BC | 7F A3 EB 78 */	mr r3, r29
/* 813899C0 | 7F A5 EB 78 */	mr r5, r29
/* 813899C4 | 38 80 00 1C */	li r4, 0x1c
/* 813899C8 | 38 C0 00 00 */	li r6, 0x0
/* 813899CC | 38 E0 00 01 */	li r7, 0x1
/* 813899D0 | 48 08 04 B9 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813899D4 | 38 00 00 0B */	li r0, 0xb
/* 813899D8 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 813899DC | 48 00 00 24 */	b .L_81389A00
.L_813899E0:
/* 813899E0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813899E4 | 38 80 01 7C */	li r4, 0x17c
/* 813899E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813899EC | 38 A0 00 2E */	li r5, 0x2e
/* 813899F0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813899F4 | 4B FB CD 05 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813899F8 | 38 00 00 0A */	li r0, 0xa
/* 813899FC | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_81389A00:
/* 81389A00 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81389A04 | 48 04 7F A9 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 81389A08 | 48 00 02 48 */	b .L_81389C50
.L_81389A0C:
/* 81389A0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81389A10 | 48 1E 07 69 */	bl fn_8156A178
/* 81389A14 | 7C 7F 1B 78 */	mr r31, r3
/* 81389A18 | 48 07 1E D5 */	bl getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 81389A1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81389A20 | 40 82 00 3C */	bne .L_81389A5C
/* 81389A24 | 7F C3 F3 78 */	mr r3, r30
/* 81389A28 | 38 80 00 1D */	li r4, 0x1d
/* 81389A2C | 48 01 31 2D */	bl iplButton_8139CB58
/* 81389A30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81389A34 | 38 80 01 44 */	li r4, 0x144
/* 81389A38 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81389A3C | 38 A0 01 46 */	li r5, 0x146
/* 81389A40 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81389A44 | 38 C0 00 25 */	li r6, 0x25
/* 81389A48 | 38 E0 00 00 */	li r7, 0x0
/* 81389A4C | 4B FB D0 89 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 81389A50 | 38 00 00 27 */	li r0, 0x27
/* 81389A54 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81389A58 | 48 00 01 9C */	b .L_81389BF4
.L_81389A5C:
/* 81389A5C | 48 1E 0D C5 */	bl fn_8156A820
/* 81389A60 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81389A64 | 40 82 00 3C */	bne .L_81389AA0
/* 81389A68 | 7F C3 F3 78 */	mr r3, r30
/* 81389A6C | 38 80 00 1D */	li r4, 0x1d
/* 81389A70 | 48 01 30 E9 */	bl iplButton_8139CB58
/* 81389A74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81389A78 | 38 80 01 7E */	li r4, 0x17e
/* 81389A7C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81389A80 | 38 A0 01 46 */	li r5, 0x146
/* 81389A84 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81389A88 | 38 C0 00 25 */	li r6, 0x25
/* 81389A8C | 38 E0 00 00 */	li r7, 0x0
/* 81389A90 | 4B FB D0 45 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 81389A94 | 38 00 00 2A */	li r0, 0x2a
/* 81389A98 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81389A9C | 48 00 01 58 */	b .L_81389BF4
.L_81389AA0:
/* 81389AA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81389AA4 | 41 82 00 4C */	beq .L_81389AF0
/* 81389AA8 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81389AAC | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81389AB0 | 41 82 00 40 */	beq .L_81389AF0
/* 81389AB4 | 48 1E 0B F9 */	bl fn_8156A6AC
/* 81389AB8 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 81389ABC | 41 82 00 34 */	beq .L_81389AF0
/* 81389AC0 | 7F C3 F3 78 */	mr r3, r30
/* 81389AC4 | 38 80 00 1D */	li r4, 0x1d
/* 81389AC8 | 48 01 30 91 */	bl iplButton_8139CB58
/* 81389ACC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81389AD0 | 38 80 01 4C */	li r4, 0x14c
/* 81389AD4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81389AD8 | 38 A0 00 2E */	li r5, 0x2e
/* 81389ADC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81389AE0 | 4B FB CC 19 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 81389AE4 | 38 00 00 2D */	li r0, 0x2d
/* 81389AE8 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81389AEC | 48 00 01 08 */	b .L_81389BF4
.L_81389AF0:
/* 81389AF0 | 80 7D 04 EC */	lwz r3, 0x4ec(r29)
/* 81389AF4 | 4B FF D8 4D */	bl check__Q33ipl5scene15FriendListCacheFv
/* 81389AF8 | 2C 03 FF E1 */	cmpwi r3, -0x1f
/* 81389AFC | 41 82 00 20 */	beq .L_81389B1C
/* 81389B00 | 80 7D 04 EC */	lwz r3, 0x4ec(r29)
/* 81389B04 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81389B08 | 80 03 9D 74 */	lwz r0, -0x628c(r3)
/* 81389B0C | 2C 00 FF E0 */	cmpwi r0, -0x20
/* 81389B10 | 41 82 00 0C */	beq .L_81389B1C
/* 81389B14 | 2C 00 FF FA */	cmpwi r0, -0x6
/* 81389B18 | 40 82 00 6C */	bne .L_81389B84
.L_81389B1C:
/* 81389B1C | 38 00 02 00 */	li r0, 0x200
/* 81389B20 | 38 81 00 50 */	addi r4, r1, 0x50
/* 81389B24 | 38 60 00 00 */	li r3, 0x0
/* 81389B28 | 7C 09 03 A6 */	mtctr r0
.L_81389B2C:
/* 81389B2C | B0 64 00 02 */	sth r3, 0x2(r4)
/* 81389B30 | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 81389B34 | 42 00 FF F8 */	bdnz .L_81389B2C
/* 81389B38 | 80 DD 04 EC */	lwz r6, 0x4ec(r29)
/* 81389B3C | 7F A3 EB 78 */	mr r3, r29
/* 81389B40 | 38 81 00 52 */	addi r4, r1, 0x52
/* 81389B44 | 38 A0 04 00 */	li r5, 0x400
/* 81389B48 | 3C C6 00 01 */	addis r6, r6, 0x1
/* 81389B4C | 80 C6 9D 74 */	lwz r6, -0x628c(r6)
/* 81389B50 | 48 00 4B BD */	bl set_err_msg__Q33ipl5scene11AddressEditFPwUl8NWC24Err
/* 81389B54 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81389B58 | 38 81 00 52 */	addi r4, r1, 0x52
/* 81389B5C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81389B60 | 38 A0 00 2E */	li r5, 0x2e
/* 81389B64 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81389B68 | 4B FB CD 3D */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 81389B6C | 7F C3 F3 78 */	mr r3, r30
/* 81389B70 | 38 80 00 1D */	li r4, 0x1d
/* 81389B74 | 48 01 2F E5 */	bl iplButton_8139CB58
/* 81389B78 | 38 00 00 2E */	li r0, 0x2e
/* 81389B7C | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81389B80 | 48 00 00 74 */	b .L_81389BF4
.L_81389B84:
/* 81389B84 | 7F C3 F3 78 */	mr r3, r30
/* 81389B88 | 38 80 00 0C */	li r4, 0xc
/* 81389B8C | 48 01 38 9D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81389B90 | 7F C3 F3 78 */	mr r3, r30
/* 81389B94 | 38 80 00 01 */	li r4, 0x1
/* 81389B98 | 38 A0 00 27 */	li r5, 0x27
/* 81389B9C | 48 01 38 C1 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81389BA0 | 7F C3 F3 78 */	mr r3, r30
/* 81389BA4 | 38 80 00 00 */	li r4, 0x0
/* 81389BA8 | 38 A0 00 4F */	li r5, 0x4f
/* 81389BAC | 48 01 38 B1 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81389BB0 | 7F C3 F3 78 */	mr r3, r30
/* 81389BB4 | 38 80 00 0F */	li r4, 0xf
/* 81389BB8 | 48 01 38 71 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81389BBC | 7F A3 EB 78 */	mr r3, r29
/* 81389BC0 | 38 80 00 0B */	li r4, 0xb
/* 81389BC4 | 38 A0 00 01 */	li r5, 0x1
/* 81389BC8 | 48 08 03 31 */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
/* 81389BCC | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81389BD0 | 38 80 00 1E */	li r4, 0x1e
/* 81389BD4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389BD8 | 48 18 87 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389BDC | 7C 7C 1B 78 */	mr r28, r3
/* 81389BE0 | 4B FD 8C 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389BE4 | 38 60 00 01 */	li r3, 0x1
/* 81389BE8 | 38 00 00 30 */	li r0, 0x30
/* 81389BEC | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 81389BF0 | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_81389BF4:
/* 81389BF4 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81389BF8 | 48 04 7D B5 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 81389BFC | 7F A3 EB 78 */	mr r3, r29
/* 81389C00 | 48 00 38 85 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 81389C04 | 48 00 00 4C */	b .L_81389C50
.L_81389C08:
/* 81389C08 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81389C0C | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 81389C10 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81389C14 | 83 84 00 AC */	lwz r28, 0xac(r4)
/* 81389C18 | 48 00 00 51 */	bl getDispCodeLong__Q43ipl5scene11AddressEdit6StringCFv
/* 81389C1C | 7C 64 1B 78 */	mr r4, r3
/* 81389C20 | 7F 83 E3 78 */	mr r3, r28
/* 81389C24 | 38 A0 00 2E */	li r5, 0x2e
/* 81389C28 | 4B FB CC 7D */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 81389C2C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81389C30 | 48 04 7D 7D */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 81389C34 | 7F A3 EB 78 */	mr r3, r29
/* 81389C38 | 48 00 38 4D */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 81389C3C | 38 00 00 09 */	li r0, 0x9
/* 81389C40 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 81389C44 | 48 00 00 0C */	b .L_81389C50
.L_81389C48:
/* 81389C48 | 38 00 00 00 */	li r0, 0x0
/* 81389C4C | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_81389C50:
/* 81389C50 | 39 61 08 70 */	addi r11, r1, 0x870
/* 81389C54 | 48 26 F8 B9 */	bl _restgpr_27
/* 81389C58 | 80 01 08 74 */	lwz r0, 0x874(r1)
/* 81389C5C | 7C 08 03 A6 */	mtlr r0
/* 81389C60 | 38 21 08 70 */	addi r1, r1, 0x870
/* 81389C64 | 4E 80 00 20 */	blr
.endfn stt_wait_decide_anm__Q33ipl5scene11AddressEditFv

# .text:0x1BEC | 0x81389C68 | size: 0x14
# ipl::scene::AddressEdit::String::getDispCodeLong() const
.fn getDispCodeLong__Q43ipl5scene11AddressEdit6StringCFv, global
/* 81389C68 | 88 03 04 22 */	lbz r0, 0x422(r3)
/* 81389C6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81389C70 | 4D 82 00 20 */	beqlr
/* 81389C74 | 38 63 02 1C */	addi r3, r3, 0x21c
/* 81389C78 | 4E 80 00 20 */	blr
.endfn getDispCodeLong__Q43ipl5scene11AddressEdit6StringCFv

# .text:0x1C00 | 0x81389C7C | size: 0xF4
# ipl::scene::AddressEdit::stt_wait_btn_fadein()
.fn stt_wait_btn_fadein__Q33ipl5scene11AddressEditFv, global
/* 81389C7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389C80 | 7C 08 02 A6 */	mflr r0
/* 81389C84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389C88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81389C8C | 7C 7F 1B 78 */	mr r31, r3
/* 81389C90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81389C94 | 80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 81389C98 | 80 83 04 EC */	lwz r4, 0x4ec(r3)
/* 81389C9C | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 81389CA0 | 7C 84 02 14 */	add r4, r4, r0
/* 81389CA4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81389CA8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81389CAC | 40 82 00 28 */	bne .L_81389CD4
/* 81389CB0 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81389CB4 | 38 80 00 10 */	li r4, 0x10
/* 81389CB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389CBC | 48 18 86 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389CC0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389CC4 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81389CC8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389CCC | 7F C0 19 10 */	subfe r30, r0, r3
/* 81389CD0 | 48 00 00 24 */	b .L_81389CF4
.L_81389CD4:
/* 81389CD4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81389CD8 | 38 80 00 1A */	li r4, 0x1a
/* 81389CDC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389CE0 | 48 18 86 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389CE4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389CE8 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81389CEC | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389CF0 | 7F C0 19 10 */	subfe r30, r0, r3
.L_81389CF4:
/* 81389CF4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389CF8 | 38 80 00 11 */	li r4, 0x11
/* 81389CFC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389D00 | 48 18 86 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389D04 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 81389D08 | 38 80 00 12 */	li r4, 0x12
/* 81389D0C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389D10 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 81389D14 | 30 05 FF FF */	subic r0, r5, 0x1
/* 81389D18 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389D1C | 7C 00 29 10 */	subfe r0, r0, r5
/* 81389D20 | 7F C5 00 38 */	and r5, r30, r0
/* 81389D24 | 30 05 FF FF */	subic r0, r5, 0x1
/* 81389D28 | 7F C0 29 10 */	subfe r30, r0, r5
/* 81389D2C | 48 18 85 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389D30 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389D34 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81389D38 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389D3C | 7C 00 19 10 */	subfe r0, r0, r3
/* 81389D40 | 7F C3 00 38 */	and r3, r30, r0
/* 81389D44 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389D48 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 81389D4C | 41 82 00 0C */	beq .L_81389D58
/* 81389D50 | 38 00 00 00 */	li r0, 0x0
/* 81389D54 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_81389D58:
/* 81389D58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389D5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81389D60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81389D64 | 7C 08 03 A6 */	mtlr r0
/* 81389D68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389D6C | 4E 80 00 20 */	blr
.endfn stt_wait_btn_fadein__Q33ipl5scene11AddressEditFv

# .text:0x1CF4 | 0x81389D70 | size: 0x178
# ipl::scene::AddressEdit::stt_wait_btn_fadeout()
.fn stt_wait_btn_fadeout__Q33ipl5scene11AddressEditFv, global
/* 81389D70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81389D74 | 7C 08 02 A6 */	mflr r0
/* 81389D78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81389D7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81389D80 | 48 26 F7 49 */	bl _savegpr_29
/* 81389D84 | 80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 81389D88 | 7C 7F 1B 78 */	mr r31, r3
/* 81389D8C | 80 83 04 EC */	lwz r4, 0x4ec(r3)
/* 81389D90 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 81389D94 | 7C 84 02 14 */	add r4, r4, r0
/* 81389D98 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81389D9C | 28 00 00 02 */	cmplwi r0, 0x2
/* 81389DA0 | 40 82 00 28 */	bne .L_81389DC8
/* 81389DA4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81389DA8 | 38 80 00 15 */	li r4, 0x15
/* 81389DAC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389DB0 | 48 18 85 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389DB4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389DB8 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81389DBC | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389DC0 | 7F A0 19 10 */	subfe r29, r0, r3
/* 81389DC4 | 48 00 00 24 */	b .L_81389DE8
.L_81389DC8:
/* 81389DC8 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81389DCC | 38 80 00 1B */	li r4, 0x1b
/* 81389DD0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389DD4 | 48 18 85 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389DD8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389DDC | 38 63 FF FF */	subi r3, r3, 0x1
/* 81389DE0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389DE4 | 7F A0 19 10 */	subfe r29, r0, r3
.L_81389DE8:
/* 81389DE8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389DEC | 38 80 00 16 */	li r4, 0x16
/* 81389DF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389DF4 | 48 18 85 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389DF8 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 81389DFC | 38 80 00 17 */	li r4, 0x17
/* 81389E00 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389E04 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 81389E08 | 30 05 FF FF */	subic r0, r5, 0x1
/* 81389E0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389E10 | 7C 00 29 10 */	subfe r0, r0, r5
/* 81389E14 | 7F A5 00 38 */	and r5, r29, r0
/* 81389E18 | 30 05 FF FF */	subic r0, r5, 0x1
/* 81389E1C | 7F C0 29 10 */	subfe r30, r0, r5
/* 81389E20 | 48 18 84 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389E24 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389E28 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81389E2C | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389E30 | 7C 00 19 10 */	subfe r0, r0, r3
/* 81389E34 | 7F C3 00 38 */	and r3, r30, r0
/* 81389E38 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81389E3C | 7C 00 19 11 */	subfe. r0, r0, r3
/* 81389E40 | 41 82 00 90 */	beq .L_81389ED0
/* 81389E44 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389E48 | 3C 80 81 65 */	lis r4, lbl_816480FD@ha
/* 81389E4C | 38 84 80 FD */	addi r4, r4, lbl_816480FD@l
/* 81389E50 | 38 A0 00 01 */	li r5, 0x1
/* 81389E54 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81389E58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81389E5C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81389E60 | 7D 89 03 A6 */	mtctr r12
/* 81389E64 | 4E 80 04 21 */	bctrl
/* 81389E68 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81389E6C | 7C 7D 1B 78 */	mr r29, r3
/* 81389E70 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81389E74 | 38 80 00 30 */	li r4, 0x30
/* 81389E78 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 81389E7C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81389E80 | 4B FB 49 3D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81389E84 | 7C 65 1B 78 */	mr r5, r3
/* 81389E88 | 7F E3 FB 78 */	mr r3, r31
/* 81389E8C | 7F A4 EB 78 */	mr r4, r29
/* 81389E90 | 48 00 25 D9 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 81389E94 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 81389E98 | 38 80 01 42 */	li r4, 0x142
/* 81389E9C | 38 A0 01 41 */	li r5, 0x141
/* 81389EA0 | 38 C0 00 01 */	li r6, 0x1
/* 81389EA4 | 4B FB D0 E9 */	bl callS2Btn2__Q23ipl12DialogWindowFUlUlb
/* 81389EA8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389EAC | 38 80 00 1C */	li r4, 0x1c
/* 81389EB0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389EB4 | 48 18 84 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389EB8 | 7C 7D 1B 78 */	mr r29, r3
/* 81389EBC | 4B FD 89 B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389EC0 | 38 60 00 01 */	li r3, 0x1
/* 81389EC4 | 38 00 00 04 */	li r0, 0x4
/* 81389EC8 | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 81389ECC | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_81389ED0:
/* 81389ED0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81389ED4 | 48 26 F6 41 */	bl _restgpr_29
/* 81389ED8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81389EDC | 7C 08 03 A6 */	mtlr r0
/* 81389EE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81389EE4 | 4E 80 00 20 */	blr
.endfn stt_wait_btn_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x1E6C | 0x81389EE8 | size: 0x4C
# ipl::scene::AddressEdit::stt_wait_del_msg_fadein()
.fn stt_wait_del_msg_fadein__Q33ipl5scene11AddressEditFv, global
/* 81389EE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81389EEC | 7C 08 02 A6 */	mflr r0
/* 81389EF0 | 38 80 00 1C */	li r4, 0x1c
/* 81389EF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81389EF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81389EFC | 7C 7F 1B 78 */	mr r31, r3
/* 81389F00 | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 81389F04 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81389F08 | 48 18 84 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389F0C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81389F10 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81389F14 | 41 82 00 0C */	beq .L_81389F20
/* 81389F18 | 38 00 00 07 */	li r0, 0x7
/* 81389F1C | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_81389F20:
/* 81389F20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81389F24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81389F28 | 7C 08 03 A6 */	mtlr r0
/* 81389F2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81389F30 | 4E 80 00 20 */	blr
.endfn stt_wait_del_msg_fadein__Q33ipl5scene11AddressEditFv

# .text:0x1EB8 | 0x81389F34 | size: 0xF0
# ipl::scene::AddressEdit::stt_wait_del_msg_fadeout()
.fn stt_wait_del_msg_fadeout__Q33ipl5scene11AddressEditFv, global
/* 81389F34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81389F38 | 7C 08 02 A6 */	mflr r0
/* 81389F3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81389F40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81389F44 | 48 26 F5 85 */	bl _savegpr_29
/* 81389F48 | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 81389F4C | 7C 7F 1B 78 */	mr r31, r3
/* 81389F50 | 38 80 00 1D */	li r4, 0x1d
/* 81389F54 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81389F58 | 48 18 83 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389F5C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81389F60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81389F64 | 41 82 00 A8 */	beq .L_8138A00C
/* 81389F68 | 80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 81389F6C | 80 7F 04 EC */	lwz r3, 0x4ec(r31)
/* 81389F70 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 81389F74 | 7C 63 02 14 */	add r3, r3, r0
/* 81389F78 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81389F7C | 28 00 00 02 */	cmplwi r0, 0x2
/* 81389F80 | 40 82 00 28 */	bne .L_81389FA8
/* 81389F84 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389F88 | 38 80 00 10 */	li r4, 0x10
/* 81389F8C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389F90 | 48 18 83 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389F94 | 7C 7E 1B 78 */	mr r30, r3
/* 81389F98 | 4B FD 88 D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389F9C | 38 00 00 01 */	li r0, 0x1
/* 81389FA0 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81389FA4 | 48 00 00 24 */	b .L_81389FC8
.L_81389FA8:
/* 81389FA8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389FAC | 38 80 00 1A */	li r4, 0x1a
/* 81389FB0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389FB4 | 48 18 83 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389FB8 | 7C 7E 1B 78 */	mr r30, r3
/* 81389FBC | 4B FD 88 B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389FC0 | 38 00 00 01 */	li r0, 0x1
/* 81389FC4 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_81389FC8:
/* 81389FC8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389FCC | 38 80 00 11 */	li r4, 0x11
/* 81389FD0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389FD4 | 48 18 83 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389FD8 | 7C 7D 1B 78 */	mr r29, r3
/* 81389FDC | 4B FD 88 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81389FE0 | 3B C0 00 01 */	li r30, 0x1
/* 81389FE4 | 38 80 00 12 */	li r4, 0x12
/* 81389FE8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81389FEC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 81389FF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81389FF4 | 48 18 83 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81389FF8 | 7C 7D 1B 78 */	mr r29, r3
/* 81389FFC | 4B FD 88 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A000 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 8138A004 | 38 00 00 02 */	li r0, 0x2
/* 8138A008 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138A00C:
/* 8138A00C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138A010 | 48 26 F5 05 */	bl _restgpr_29
/* 8138A014 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138A018 | 7C 08 03 A6 */	mtlr r0
/* 8138A01C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138A020 | 4E 80 00 20 */	blr
.endfn stt_wait_del_msg_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x1FA8 | 0x8138A024 | size: 0xC8
# ipl::scene::AddressEdit::stt_wait_delete()
.fn stt_wait_delete__Q33ipl5scene11AddressEditFv, global
/* 8138A024 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A028 | 7C 08 02 A6 */	mflr r0
/* 8138A02C | 38 80 00 05 */	li r4, 0x5
/* 8138A030 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A034 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A038 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138A03C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138A040 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138A044 | 7C 7E 1B 78 */	mr r30, r3
/* 8138A048 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138A04C | 48 08 10 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138A050 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8138A054 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138A058 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138A05C | 41 82 00 14 */	beq .L_8138A070
/* 8138A060 | 40 80 00 74 */	bge .L_8138A0D4
/* 8138A064 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A068 | 40 80 00 3C */	bge .L_8138A0A4
/* 8138A06C | 48 00 00 68 */	b .L_8138A0D4
.L_8138A070:
/* 8138A070 | 7F C3 F3 78 */	mr r3, r30
/* 8138A074 | 48 00 37 5D */	bl delete_friendinfo__Q33ipl5scene11AddressEditFv
/* 8138A078 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138A07C | 38 80 00 1D */	li r4, 0x1d
/* 8138A080 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A084 | 48 18 82 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A088 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A08C | 4B FD 87 E5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A090 | 38 60 00 01 */	li r3, 0x1
/* 8138A094 | 38 00 00 06 */	li r0, 0x6
/* 8138A098 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8138A09C | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A0A0 | 48 00 00 34 */	b .L_8138A0D4
.L_8138A0A4:
/* 8138A0A4 | 38 80 00 0B */	li r4, 0xb
/* 8138A0A8 | 48 01 33 81 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A0AC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138A0B0 | 38 80 00 1D */	li r4, 0x1d
/* 8138A0B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A0B8 | 48 18 82 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A0BC | 7C 7F 1B 78 */	mr r31, r3
/* 8138A0C0 | 4B FD 87 B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A0C4 | 38 60 00 01 */	li r3, 0x1
/* 8138A0C8 | 38 00 00 05 */	li r0, 0x5
/* 8138A0CC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8138A0D0 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138A0D4:
/* 8138A0D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A0D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A0DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138A0E0 | 7C 08 03 A6 */	mtlr r0
/* 8138A0E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A0E8 | 4E 80 00 20 */	blr
.endfn stt_wait_delete__Q33ipl5scene11AddressEditFv

# .text:0x2070 | 0x8138A0EC | size: 0x64
# ipl::scene::AddressEdit::stt_wait_del_msg_fadeout_to_rlt()
.fn stt_wait_del_msg_fadeout_to_rlt__Q33ipl5scene11AddressEditFv, global
/* 8138A0EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A0F0 | 7C 08 02 A6 */	mflr r0
/* 8138A0F4 | 38 80 00 1D */	li r4, 0x1d
/* 8138A0F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A0FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A100 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A104 | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 8138A108 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138A10C | 48 18 82 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A110 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A114 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A118 | 41 82 00 24 */	beq .L_8138A13C
/* 8138A11C | 38 00 00 08 */	li r0, 0x8
/* 8138A120 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138A124 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8138A128 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138A12C | 38 80 00 51 */	li r4, 0x51
/* 8138A130 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A134 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8138A138 | 4B FB C5 C1 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_8138A13C:
/* 8138A13C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A140 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A144 | 7C 08 03 A6 */	mtlr r0
/* 8138A148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A14C | 4E 80 00 20 */	blr
.endfn stt_wait_del_msg_fadeout_to_rlt__Q33ipl5scene11AddressEditFv

# .text:0x20D4 | 0x8138A150 | size: 0x9C
# ipl::scene::AddressEdit::stt_msg_del_rlt()
.fn stt_msg_del_rlt__Q33ipl5scene11AddressEditFv, global
/* 8138A150 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A154 | 7C 08 02 A6 */	mflr r0
/* 8138A158 | 38 80 00 05 */	li r4, 0x5
/* 8138A15C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A160 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A164 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138A168 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138A16C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138A170 | 7C 7E 1B 78 */	mr r30, r3
/* 8138A174 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138A178 | 48 08 0F C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138A17C | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8138A180 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A184 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138A188 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A18C | 41 82 00 08 */	beq .L_8138A194
/* 8138A190 | 48 00 00 44 */	b .L_8138A1D4
.L_8138A194:
/* 8138A194 | 38 80 00 01 */	li r4, 0x1
/* 8138A198 | 38 A0 00 29 */	li r5, 0x29
/* 8138A19C | 48 01 32 C1 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138A1A0 | 7F E3 FB 78 */	mr r3, r31
/* 8138A1A4 | 38 80 00 0F */	li r4, 0xf
/* 8138A1A8 | 48 01 32 81 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A1AC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138A1B0 | 38 80 00 1E */	li r4, 0x1e
/* 8138A1B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A1B8 | 48 18 81 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A1BC | 7C 7F 1B 78 */	mr r31, r3
/* 8138A1C0 | 4B FD 86 B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A1C4 | 38 60 00 01 */	li r3, 0x1
/* 8138A1C8 | 38 00 00 30 */	li r0, 0x30
/* 8138A1CC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8138A1D0 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138A1D4:
/* 8138A1D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A1D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A1DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138A1E0 | 7C 08 03 A6 */	mtlr r0
/* 8138A1E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A1E8 | 4E 80 00 20 */	blr
.endfn stt_msg_del_rlt__Q33ipl5scene11AddressEditFv

# .text:0x2170 | 0x8138A1EC | size: 0xA0
# ipl::scene::AddressEdit::stt_ipt_wait_fadein()
.fn stt_ipt_wait_fadein__Q33ipl5scene11AddressEditFv, global
/* 8138A1EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A1F0 | 7C 08 02 A6 */	mflr r0
/* 8138A1F4 | 38 80 00 00 */	li r4, 0x0
/* 8138A1F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A1FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A200 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A204 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138A208 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138A20C | 48 18 81 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A210 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A214 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A218 | 41 82 00 60 */	beq .L_8138A278
/* 8138A21C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A220 | 38 80 00 01 */	li r4, 0x1
/* 8138A224 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A228 | 48 18 80 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A22C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A230 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A234 | 41 82 00 44 */	beq .L_8138A278
/* 8138A238 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A23C | 38 80 00 02 */	li r4, 0x2
/* 8138A240 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A244 | 48 18 80 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A248 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A24C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A250 | 41 82 00 28 */	beq .L_8138A278
/* 8138A254 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8138A258 | 38 80 00 00 */	li r4, 0x0
/* 8138A25C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A260 | 48 18 80 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A264 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A268 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A26C | 41 82 00 0C */	beq .L_8138A278
/* 8138A270 | 38 00 00 0D */	li r0, 0xd
/* 8138A274 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138A278:
/* 8138A278 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A27C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A280 | 7C 08 03 A6 */	mtlr r0
/* 8138A284 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A288 | 4E 80 00 20 */	blr
.endfn stt_ipt_wait_fadein__Q33ipl5scene11AddressEditFv

# .text:0x2210 | 0x8138A28C | size: 0x70
# ipl::scene::AddressEdit::stt_ipt_normal()
.fn stt_ipt_normal__Q33ipl5scene11AddressEditFv, global
/* 8138A28C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A290 | 7C 08 02 A6 */	mflr r0
/* 8138A294 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138A298 | 38 80 00 05 */	li r4, 0x5
/* 8138A29C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A2A0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138A2A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A2A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138A2AC | 7C 7E 1B 78 */	mr r30, r3
/* 8138A2B0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138A2B4 | 48 08 0E 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138A2B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A2BC | 48 01 26 59 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8138A2C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A2C4 | 41 82 00 0C */	beq .L_8138A2D0
/* 8138A2C8 | 7F E3 FB 78 */	mr r3, r31
/* 8138A2CC | 48 01 22 A1 */	bl update__Q33ipl5scene6ButtonFv
.L_8138A2D0:
/* 8138A2D0 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138A2D4 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8138A2D8 | 40 82 00 0C */	bne .L_8138A2E4
/* 8138A2DC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8138A2E0 | 4B FE 0C AD */	bl update__Q33ipl3gui11PaneManagerFv
.L_8138A2E4:
/* 8138A2E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A2E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A2EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138A2F0 | 7C 08 03 A6 */	mtlr r0
/* 8138A2F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A2F8 | 4E 80 00 20 */	blr
.endfn stt_ipt_normal__Q33ipl5scene11AddressEditFv

# .text:0x2280 | 0x8138A2FC | size: 0x20C
# ipl::scene::AddressEdit::stt_ipt_input()
.fn stt_ipt_input__Q33ipl5scene11AddressEditFv, global
/* 8138A2FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138A300 | 7C 08 02 A6 */	mflr r0
/* 8138A304 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138A308 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138A30C | 48 26 F1 B9 */	bl _savegpr_28
/* 8138A310 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138A314 | 7C 7E 1B 78 */	mr r30, r3
/* 8138A318 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138A31C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138A320 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138A324 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8138A328 | 7D 89 03 A6 */	mtctr r12
/* 8138A32C | 4E 80 04 21 */	bctrl
/* 8138A330 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A334 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8138A338 | 38 80 00 05 */	li r4, 0x5
/* 8138A33C | 48 08 0D FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138A340 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8138A344 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A348 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8138A34C | 41 82 00 28 */	beq .L_8138A374
/* 8138A350 | 40 80 00 18 */	bge .L_8138A368
/* 8138A354 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138A358 | 40 80 01 98 */	bge .L_8138A4F0
/* 8138A35C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A360 | 40 80 01 74 */	bge .L_8138A4D4
/* 8138A364 | 48 00 01 8C */	b .L_8138A4F0
.L_8138A368:
/* 8138A368 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8138A36C | 40 80 01 84 */	bge .L_8138A4F0
/* 8138A370 | 48 00 01 3C */	b .L_8138A4AC
.L_8138A374:
/* 8138A374 | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 8138A378 | A0 7E 02 B4 */	lhz r3, 0x2b4(r30)
/* 8138A37C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A380 | 7C 60 00 34 */	cntlzw r0, r3
/* 8138A384 | 54 1D D9 7E */	srwi r29, r0, 5
/* 8138A388 | 41 82 00 44 */	beq .L_8138A3CC
/* 8138A38C | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8138A390 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A394 | 48 00 42 01 */	bl setName__Q43ipl5scene11AddressEdit6StringFPCw
/* 8138A398 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A39C | 3C 80 81 65 */	lis r4, lbl_8164810B@ha
/* 8138A3A0 | 38 84 81 0B */	addi r4, r4, lbl_8164810B@l
/* 8138A3A4 | 38 A0 00 01 */	li r5, 0x1
/* 8138A3A8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138A3AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138A3B0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138A3B4 | 7D 89 03 A6 */	mtctr r12
/* 8138A3B8 | 4E 80 04 21 */	bctrl
/* 8138A3BC | 7C 64 1B 78 */	mr r4, r3
/* 8138A3C0 | 7F C3 F3 78 */	mr r3, r30
/* 8138A3C4 | 38 BE 02 B4 */	addi r5, r30, 0x2b4
/* 8138A3C8 | 48 00 20 A1 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
.L_8138A3CC:
/* 8138A3CC | A0 1E 02 B4 */	lhz r0, 0x2b4(r30)
/* 8138A3D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A3D4 | 40 82 00 58 */	bne .L_8138A42C
/* 8138A3D8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138A3DC | 40 82 00 40 */	bne .L_8138A41C
/* 8138A3E0 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A3E4 | 38 80 00 06 */	li r4, 0x6
/* 8138A3E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A3EC | 48 18 7F 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A3F0 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A3F4 | 4B FD 84 7D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A3F8 | 3B A0 00 01 */	li r29, 0x1
/* 8138A3FC | 38 80 00 03 */	li r4, 0x3
/* 8138A400 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138A404 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A408 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A40C | 48 18 7F 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A410 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A414 | 4B FD 84 5D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A418 | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_8138A41C:
/* 8138A41C | 7F E3 FB 78 */	mr r3, r31
/* 8138A420 | 38 80 00 0B */	li r4, 0xb
/* 8138A424 | 48 01 30 05 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A428 | 48 00 00 C8 */	b .L_8138A4F0
.L_8138A42C:
/* 8138A42C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138A430 | 41 82 00 40 */	beq .L_8138A470
/* 8138A434 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A438 | 38 80 00 02 */	li r4, 0x2
/* 8138A43C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A440 | 48 18 7E D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A444 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A448 | 4B FD 84 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A44C | 3B A0 00 01 */	li r29, 0x1
/* 8138A450 | 38 80 00 07 */	li r4, 0x7
/* 8138A454 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138A458 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A45C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A460 | 48 18 7E B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A464 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A468 | 4B FD 84 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A46C | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_8138A470:
/* 8138A470 | 88 1E 04 D1 */	lbz r0, 0x4d1(r30)
/* 8138A474 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A478 | 41 82 00 24 */	beq .L_8138A49C
/* 8138A47C | 7F E3 FB 78 */	mr r3, r31
/* 8138A480 | 38 80 00 01 */	li r4, 0x1
/* 8138A484 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A488 | 48 01 2F D5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138A48C | 7F E3 FB 78 */	mr r3, r31
/* 8138A490 | 38 80 00 0F */	li r4, 0xf
/* 8138A494 | 48 01 2F 95 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A498 | 48 00 00 58 */	b .L_8138A4F0
.L_8138A49C:
/* 8138A49C | 7F E3 FB 78 */	mr r3, r31
/* 8138A4A0 | 38 80 00 0B */	li r4, 0xb
/* 8138A4A4 | 48 01 2F 85 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A4A8 | 48 00 00 48 */	b .L_8138A4F0
.L_8138A4AC:
/* 8138A4AC | 38 00 00 0D */	li r0, 0xd
/* 8138A4B0 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A4B4 | 4B FA B5 D9 */	bl getRegion__Q23ipl6SystemFv
/* 8138A4B8 | 28 03 00 06 */	cmplwi r3, 0x6
/* 8138A4BC | 40 82 00 34 */	bne .L_8138A4F0
/* 8138A4C0 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138A4C4 | 38 80 00 00 */	li r4, 0x0
/* 8138A4C8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138A4CC | 48 0A EB DD */	bl enableKSXFilter__Q29textinput7ManagerFb
/* 8138A4D0 | 48 00 00 20 */	b .L_8138A4F0
.L_8138A4D4:
/* 8138A4D4 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138A4D8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138A4DC | 48 0A EC 35 */	bl isVacancy__Q29textinput7ManagerCFv
/* 8138A4E0 | 7C 65 1B 78 */	mr r5, r3
/* 8138A4E4 | 7F C3 F3 78 */	mr r3, r30
/* 8138A4E8 | 38 80 00 00 */	li r4, 0x0
/* 8138A4EC | 48 00 34 ED */	bl setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb
.L_8138A4F0:
/* 8138A4F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138A4F4 | 48 26 F0 1D */	bl _restgpr_28
/* 8138A4F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138A4FC | 7C 08 03 A6 */	mtlr r0
/* 8138A500 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138A504 | 4E 80 00 20 */	blr
.endfn stt_ipt_input__Q33ipl5scene11AddressEditFv

# .text:0x248C | 0x8138A508 | size: 0xD8
# ipl::scene::AddressEdit::stt_ipt_wait_fadeout()
.fn stt_ipt_wait_fadeout__Q33ipl5scene11AddressEditFv, global
/* 8138A508 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A50C | 7C 08 02 A6 */	mflr r0
/* 8138A510 | 38 80 00 05 */	li r4, 0x5
/* 8138A514 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A518 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A51C | 7C 7F 1B 78 */	mr r31, r3
/* 8138A520 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138A524 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138A528 | 48 18 7D F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A52C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A530 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A534 | 41 82 00 98 */	beq .L_8138A5CC
/* 8138A538 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A53C | 38 80 00 07 */	li r4, 0x7
/* 8138A540 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A544 | 48 18 7D D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A548 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A54C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A550 | 41 82 00 7C */	beq .L_8138A5CC
/* 8138A554 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A558 | 38 80 00 06 */	li r4, 0x6
/* 8138A55C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A560 | 48 18 7D B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A564 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A568 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A56C | 41 82 00 60 */	beq .L_8138A5CC
/* 8138A570 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A574 | 38 80 00 08 */	li r4, 0x8
/* 8138A578 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A57C | 48 18 7D 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A580 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A584 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A588 | 41 82 00 44 */	beq .L_8138A5CC
/* 8138A58C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A590 | 38 80 00 09 */	li r4, 0x9
/* 8138A594 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A598 | 48 18 7D 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A59C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A5A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A5A4 | 41 82 00 28 */	beq .L_8138A5CC
/* 8138A5A8 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8138A5AC | 38 80 00 01 */	li r4, 0x1
/* 8138A5B0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A5B4 | 48 18 7D 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A5B8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A5BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A5C0 | 41 82 00 0C */	beq .L_8138A5CC
/* 8138A5C4 | 38 00 00 00 */	li r0, 0x0
/* 8138A5C8 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138A5CC:
/* 8138A5CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A5D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A5D4 | 7C 08 03 A6 */	mtlr r0
/* 8138A5D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A5DC | 4E 80 00 20 */	blr
.endfn stt_ipt_wait_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x2564 | 0x8138A5E0 | size: 0xBC
# ipl::scene::AddressEdit::stt_add_code_fadein()
.fn stt_add_code_fadein__Q33ipl5scene11AddressEditFv, global
/* 8138A5E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A5E4 | 7C 08 02 A6 */	mflr r0
/* 8138A5E8 | 38 80 00 00 */	li r4, 0x0
/* 8138A5EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A5F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A5F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A5F8 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138A5FC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138A600 | 48 18 7D 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A604 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A608 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A60C | 41 82 00 7C */	beq .L_8138A688
/* 8138A610 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A614 | 38 80 00 01 */	li r4, 0x1
/* 8138A618 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A61C | 48 18 7C FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A620 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A624 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A628 | 41 82 00 60 */	beq .L_8138A688
/* 8138A62C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A630 | 38 80 00 03 */	li r4, 0x3
/* 8138A634 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A638 | 48 18 7C E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A63C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A640 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A644 | 41 82 00 44 */	beq .L_8138A688
/* 8138A648 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A64C | 38 80 00 04 */	li r4, 0x4
/* 8138A650 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A654 | 48 18 7C C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A658 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A65C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A660 | 41 82 00 28 */	beq .L_8138A688
/* 8138A664 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138A668 | 38 80 00 02 */	li r4, 0x2
/* 8138A66C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A670 | 48 18 7C A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A674 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138A678 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A67C | 41 82 00 0C */	beq .L_8138A688
/* 8138A680 | 38 00 00 11 */	li r0, 0x11
/* 8138A684 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138A688:
/* 8138A688 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A68C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A690 | 7C 08 03 A6 */	mtlr r0
/* 8138A694 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A698 | 4E 80 00 20 */	blr
.endfn stt_add_code_fadein__Q33ipl5scene11AddressEditFv

# .text:0x2620 | 0x8138A69C | size: 0x70
# ipl::scene::AddressEdit::stt_add_code_normal()
.fn stt_add_code_normal__Q33ipl5scene11AddressEditFv, global
/* 8138A69C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138A6A0 | 7C 08 02 A6 */	mflr r0
/* 8138A6A4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138A6A8 | 38 80 00 05 */	li r4, 0x5
/* 8138A6AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138A6B0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138A6B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138A6B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138A6BC | 7C 7E 1B 78 */	mr r30, r3
/* 8138A6C0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138A6C4 | 48 08 0A 75 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138A6C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A6CC | 48 01 22 49 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8138A6D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A6D4 | 41 82 00 0C */	beq .L_8138A6E0
/* 8138A6D8 | 7F E3 FB 78 */	mr r3, r31
/* 8138A6DC | 48 01 1E 91 */	bl update__Q33ipl5scene6ButtonFv
.L_8138A6E0:
/* 8138A6E0 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138A6E4 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 8138A6E8 | 40 82 00 0C */	bne .L_8138A6F4
/* 8138A6EC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8138A6F0 | 4B FE 08 9D */	bl update__Q33ipl3gui11PaneManagerFv
.L_8138A6F4:
/* 8138A6F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138A6F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138A6FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138A700 | 7C 08 03 A6 */	mtlr r0
/* 8138A704 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138A708 | 4E 80 00 20 */	blr
.endfn stt_add_code_normal__Q33ipl5scene11AddressEditFv

# .text:0x2690 | 0x8138A70C | size: 0x354
# ipl::scene::AddressEdit::stt_add_code_input()
.fn stt_add_code_input__Q33ipl5scene11AddressEditFv, global
/* 8138A70C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138A710 | 7C 08 02 A6 */	mflr r0
/* 8138A714 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138A718 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138A71C | 48 26 ED A9 */	bl _savegpr_28
/* 8138A720 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138A724 | 7C 7E 1B 78 */	mr r30, r3
/* 8138A728 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138A72C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138A730 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138A734 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8138A738 | 7D 89 03 A6 */	mtctr r12
/* 8138A73C | 4E 80 04 21 */	bctrl
/* 8138A740 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A744 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8138A748 | 38 80 00 05 */	li r4, 0x5
/* 8138A74C | 48 08 09 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138A750 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8138A754 | 7C 7F 1B 78 */	mr r31, r3
/* 8138A758 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8138A75C | 41 82 00 28 */	beq .L_8138A784
/* 8138A760 | 40 80 00 18 */	bge .L_8138A778
/* 8138A764 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138A768 | 40 80 02 E0 */	bge .L_8138AA48
/* 8138A76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A770 | 40 80 02 B0 */	bge .L_8138AA20
/* 8138A774 | 48 00 02 D4 */	b .L_8138AA48
.L_8138A778:
/* 8138A778 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8138A77C | 40 80 02 CC */	bge .L_8138AA48
/* 8138A780 | 48 00 01 78 */	b .L_8138A8F8
.L_8138A784:
/* 8138A784 | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 8138A788 | A0 7E 00 B0 */	lhz r3, 0xb0(r30)
/* 8138A78C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A790 | 7C 60 00 34 */	cntlzw r0, r3
/* 8138A794 | 54 1D D9 7E */	srwi r29, r0, 5
/* 8138A798 | 41 82 00 60 */	beq .L_8138A7F8
/* 8138A79C | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8138A7A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A7A4 | 40 82 00 14 */	bne .L_8138A7B8
/* 8138A7A8 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8138A7AC | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A7B0 | 48 00 3C C1 */	bl setWiiNo__Q43ipl5scene11AddressEdit6StringFPCw
/* 8138A7B4 | 48 00 00 10 */	b .L_8138A7C4
.L_8138A7B8:
/* 8138A7B8 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8138A7BC | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A7C0 | 48 00 3B D5 */	bl setEMail__Q43ipl5scene11AddressEdit6StringFPCw
.L_8138A7C4:
/* 8138A7C4 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A7C8 | 3C 80 81 65 */	lis r4, lbl_8164810B@ha
/* 8138A7CC | 38 84 81 0B */	addi r4, r4, lbl_8164810B@l
/* 8138A7D0 | 38 A0 00 01 */	li r5, 0x1
/* 8138A7D4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138A7D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138A7DC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138A7E0 | 7D 89 03 A6 */	mtctr r12
/* 8138A7E4 | 4E 80 04 21 */	bctrl
/* 8138A7E8 | 7C 64 1B 78 */	mr r4, r3
/* 8138A7EC | 7F C3 F3 78 */	mr r3, r30
/* 8138A7F0 | 38 BE 02 CC */	addi r5, r30, 0x2cc
/* 8138A7F4 | 48 00 1C 75 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
.L_8138A7F8:
/* 8138A7F8 | A0 1E 00 B0 */	lhz r0, 0xb0(r30)
/* 8138A7FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A800 | 40 82 00 58 */	bne .L_8138A858
/* 8138A804 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138A808 | 40 82 00 40 */	bne .L_8138A848
/* 8138A80C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A810 | 38 80 00 06 */	li r4, 0x6
/* 8138A814 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A818 | 48 18 7B 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A81C | 7C 7C 1B 78 */	mr r28, r3
/* 8138A820 | 4B FD 80 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A824 | 3B A0 00 01 */	li r29, 0x1
/* 8138A828 | 38 80 00 03 */	li r4, 0x3
/* 8138A82C | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138A830 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A834 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A838 | 48 18 7A E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A83C | 7C 7C 1B 78 */	mr r28, r3
/* 8138A840 | 4B FD 80 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A844 | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_8138A848:
/* 8138A848 | 7F E3 FB 78 */	mr r3, r31
/* 8138A84C | 38 80 00 0B */	li r4, 0xb
/* 8138A850 | 48 01 2B D9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A854 | 48 00 01 F4 */	b .L_8138AA48
.L_8138A858:
/* 8138A858 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138A85C | 41 82 00 40 */	beq .L_8138A89C
/* 8138A860 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A864 | 38 80 00 02 */	li r4, 0x2
/* 8138A868 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A86C | 48 18 7A AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A870 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A874 | 4B FD 7F FD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A878 | 3B A0 00 01 */	li r29, 0x1
/* 8138A87C | 38 80 00 07 */	li r4, 0x7
/* 8138A880 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138A884 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138A888 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138A88C | 48 18 7A 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138A890 | 7C 7C 1B 78 */	mr r28, r3
/* 8138A894 | 4B FD 7F DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138A898 | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_8138A89C:
/* 8138A89C | 88 1E 04 D0 */	lbz r0, 0x4d0(r30)
/* 8138A8A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A8A4 | 41 82 00 44 */	beq .L_8138A8E8
/* 8138A8A8 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A8AC | 48 00 3D 75 */	bl isDupCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138A8B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A8B4 | 40 82 00 34 */	bne .L_8138A8E8
/* 8138A8B8 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A8BC | 48 00 3D E9 */	bl isMyCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138A8C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A8C4 | 40 82 00 24 */	bne .L_8138A8E8
/* 8138A8C8 | 7F E3 FB 78 */	mr r3, r31
/* 8138A8CC | 38 80 00 01 */	li r4, 0x1
/* 8138A8D0 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A8D4 | 48 01 2B 89 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138A8D8 | 7F E3 FB 78 */	mr r3, r31
/* 8138A8DC | 38 80 00 0F */	li r4, 0xf
/* 8138A8E0 | 48 01 2B 49 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A8E4 | 48 00 01 64 */	b .L_8138AA48
.L_8138A8E8:
/* 8138A8E8 | 7F E3 FB 78 */	mr r3, r31
/* 8138A8EC | 38 80 00 0B */	li r4, 0xb
/* 8138A8F0 | 48 01 2B 39 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138A8F4 | 48 00 01 54 */	b .L_8138AA48
.L_8138A8F8:
/* 8138A8F8 | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 8138A8FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A900 | 41 82 01 14 */	beq .L_8138AA14
/* 8138A904 | A0 1E 00 B0 */	lhz r0, 0xb0(r30)
/* 8138A908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A90C | 41 82 00 FC */	beq .L_8138AA08
/* 8138A910 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8138A914 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138A918 | 40 82 00 90 */	bne .L_8138A9A8
/* 8138A91C | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A920 | 48 00 3D 85 */	bl isMyCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138A924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A928 | 41 82 00 20 */	beq .L_8138A948
/* 8138A92C | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 8138A930 | 38 80 00 56 */	li r4, 0x56
/* 8138A934 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A938 | 4B FB BD C1 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138A93C | 38 00 00 16 */	li r0, 0x16
/* 8138A940 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A944 | 48 00 01 04 */	b .L_8138AA48
.L_8138A948:
/* 8138A948 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A94C | 48 00 3C D5 */	bl isDupCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138A950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A954 | 41 82 00 20 */	beq .L_8138A974
/* 8138A958 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 8138A95C | 38 80 00 52 */	li r4, 0x52
/* 8138A960 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A964 | 4B FB BD 95 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138A968 | 38 00 00 14 */	li r0, 0x14
/* 8138A96C | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A970 | 48 00 00 D8 */	b .L_8138AA48
.L_8138A974:
/* 8138A974 | 88 1E 04 D0 */	lbz r0, 0x4d0(r30)
/* 8138A978 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A97C | 40 82 00 20 */	bne .L_8138A99C
/* 8138A980 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 8138A984 | 38 80 00 54 */	li r4, 0x54
/* 8138A988 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A98C | 4B FB BD 6D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138A990 | 38 00 00 13 */	li r0, 0x13
/* 8138A994 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A998 | 48 00 00 B0 */	b .L_8138AA48
.L_8138A99C:
/* 8138A99C | 38 00 00 11 */	li r0, 0x11
/* 8138A9A0 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A9A4 | 48 00 00 A4 */	b .L_8138AA48
.L_8138A9A8:
/* 8138A9A8 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138A9AC | 48 00 3C 75 */	bl isDupCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138A9B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138A9B4 | 41 82 00 20 */	beq .L_8138A9D4
/* 8138A9B8 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 8138A9BC | 38 80 00 53 */	li r4, 0x53
/* 8138A9C0 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A9C4 | 4B FB BD 35 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138A9C8 | 38 00 00 15 */	li r0, 0x15
/* 8138A9CC | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A9D0 | 48 00 00 78 */	b .L_8138AA48
.L_8138A9D4:
/* 8138A9D4 | 88 1E 04 D0 */	lbz r0, 0x4d0(r30)
/* 8138A9D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138A9DC | 40 82 00 20 */	bne .L_8138A9FC
/* 8138A9E0 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 8138A9E4 | 38 80 01 BE */	li r4, 0x1be
/* 8138A9E8 | 38 A0 00 2E */	li r5, 0x2e
/* 8138A9EC | 4B FB BD 0D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138A9F0 | 38 00 00 13 */	li r0, 0x13
/* 8138A9F4 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138A9F8 | 48 00 00 50 */	b .L_8138AA48
.L_8138A9FC:
/* 8138A9FC | 38 00 00 11 */	li r0, 0x11
/* 8138AA00 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138AA04 | 48 00 00 44 */	b .L_8138AA48
.L_8138AA08:
/* 8138AA08 | 38 00 00 11 */	li r0, 0x11
/* 8138AA0C | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138AA10 | 48 00 00 38 */	b .L_8138AA48
.L_8138AA14:
/* 8138AA14 | 38 00 00 11 */	li r0, 0x11
/* 8138AA18 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138AA1C | 48 00 00 2C */	b .L_8138AA48
.L_8138AA20:
/* 8138AA20 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8138AA24 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AA28 | 41 82 00 20 */	beq .L_8138AA48
/* 8138AA2C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138AA30 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138AA34 | 48 0A E6 DD */	bl isVacancy__Q29textinput7ManagerCFv
/* 8138AA38 | 7C 65 1B 78 */	mr r5, r3
/* 8138AA3C | 7F C3 F3 78 */	mr r3, r30
/* 8138AA40 | 38 80 00 00 */	li r4, 0x0
/* 8138AA44 | 48 00 2F 95 */	bl setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb
.L_8138AA48:
/* 8138AA48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138AA4C | 48 26 EA C5 */	bl _restgpr_28
/* 8138AA50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138AA54 | 7C 08 03 A6 */	mtlr r0
/* 8138AA58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138AA5C | 4E 80 00 20 */	blr
.endfn stt_add_code_input__Q33ipl5scene11AddressEditFv

# .text:0x29E4 | 0x8138AA60 | size: 0x60
# ipl::scene::AddressEdit::stt_msg_code_invalid()
.fn stt_msg_code_invalid__Q33ipl5scene11AddressEditFv, global
/* 8138AA60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138AA64 | 7C 08 02 A6 */	mflr r0
/* 8138AA68 | 38 80 00 05 */	li r4, 0x5
/* 8138AA6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138AA70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138AA74 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138AA78 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138AA7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138AA80 | 7C 7E 1B 78 */	mr r30, r3
/* 8138AA84 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138AA88 | 48 08 06 B1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138AA8C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138AA90 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8138AA94 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AA98 | 41 82 00 08 */	beq .L_8138AAA0
/* 8138AA9C | 48 00 00 0C */	b .L_8138AAA8
.L_8138AAA0:
/* 8138AAA0 | 38 00 00 11 */	li r0, 0x11
/* 8138AAA4 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138AAA8:
/* 8138AAA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138AAAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138AAB0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138AAB4 | 7C 08 03 A6 */	mtlr r0
/* 8138AAB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138AABC | 4E 80 00 20 */	blr
.endfn stt_msg_code_invalid__Q33ipl5scene11AddressEditFv

# .text:0x2A44 | 0x8138AAC0 | size: 0x60
# ipl::scene::AddressEdit::stt_msg_dup_wii_no()
.fn stt_msg_dup_wii_no__Q33ipl5scene11AddressEditFv, global
/* 8138AAC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138AAC4 | 7C 08 02 A6 */	mflr r0
/* 8138AAC8 | 38 80 00 05 */	li r4, 0x5
/* 8138AACC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138AAD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138AAD4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138AAD8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138AADC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138AAE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8138AAE4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138AAE8 | 48 08 06 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138AAEC | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138AAF0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8138AAF4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AAF8 | 41 82 00 08 */	beq .L_8138AB00
/* 8138AAFC | 48 00 00 0C */	b .L_8138AB08
.L_8138AB00:
/* 8138AB00 | 38 00 00 11 */	li r0, 0x11
/* 8138AB04 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138AB08:
/* 8138AB08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138AB0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138AB10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138AB14 | 7C 08 03 A6 */	mtlr r0
/* 8138AB18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138AB1C | 4E 80 00 20 */	blr
.endfn stt_msg_dup_wii_no__Q33ipl5scene11AddressEditFv

# .text:0x2AA4 | 0x8138AB20 | size: 0x60
# ipl::scene::AddressEdit::stt_msg_dup_email()
.fn stt_msg_dup_email__Q33ipl5scene11AddressEditFv, global
/* 8138AB20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138AB24 | 7C 08 02 A6 */	mflr r0
/* 8138AB28 | 38 80 00 05 */	li r4, 0x5
/* 8138AB2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138AB30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138AB34 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138AB38 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138AB3C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138AB40 | 7C 7E 1B 78 */	mr r30, r3
/* 8138AB44 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138AB48 | 48 08 05 F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138AB4C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138AB50 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8138AB54 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AB58 | 41 82 00 08 */	beq .L_8138AB60
/* 8138AB5C | 48 00 00 0C */	b .L_8138AB68
.L_8138AB60:
/* 8138AB60 | 38 00 00 11 */	li r0, 0x11
/* 8138AB64 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138AB68:
/* 8138AB68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138AB6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138AB70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138AB74 | 7C 08 03 A6 */	mtlr r0
/* 8138AB78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138AB7C | 4E 80 00 20 */	blr
.endfn stt_msg_dup_email__Q33ipl5scene11AddressEditFv

# .text:0x2B04 | 0x8138AB80 | size: 0x60
# ipl::scene::AddressEdit::stt_msg_my_wii_no()
.fn stt_msg_my_wii_no__Q33ipl5scene11AddressEditFv, global
/* 8138AB80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138AB84 | 7C 08 02 A6 */	mflr r0
/* 8138AB88 | 38 80 00 05 */	li r4, 0x5
/* 8138AB8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138AB90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138AB94 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138AB98 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138AB9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138ABA0 | 7C 7E 1B 78 */	mr r30, r3
/* 8138ABA4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138ABA8 | 48 08 05 91 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138ABAC | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138ABB0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8138ABB4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138ABB8 | 41 82 00 08 */	beq .L_8138ABC0
/* 8138ABBC | 48 00 00 0C */	b .L_8138ABC8
.L_8138ABC0:
/* 8138ABC0 | 38 00 00 11 */	li r0, 0x11
/* 8138ABC4 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138ABC8:
/* 8138ABC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138ABCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138ABD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138ABD4 | 7C 08 03 A6 */	mtlr r0
/* 8138ABD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138ABDC | 4E 80 00 20 */	blr
.endfn stt_msg_my_wii_no__Q33ipl5scene11AddressEditFv

# .text:0x2B64 | 0x8138ABE0 | size: 0x1BC
# ipl::scene::AddressEdit::stt_add_code_fadeout()
.fn stt_add_code_fadeout__Q33ipl5scene11AddressEditFv, global
/* 8138ABE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138ABE4 | 7C 08 02 A6 */	mflr r0
/* 8138ABE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138ABEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138ABF0 | 48 26 E8 D5 */	bl _savegpr_28
/* 8138ABF4 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138ABF8 | 3F A0 81 64 */	lis r29, lbl_81647EE0@ha
/* 8138ABFC | 7C 7F 1B 78 */	mr r31, r3
/* 8138AC00 | 38 80 00 05 */	li r4, 0x5
/* 8138AC04 | 3B BD 7E E0 */	addi r29, r29, lbl_81647EE0@l
/* 8138AC08 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138AC0C | 48 18 77 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AC10 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138AC14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AC18 | 41 82 01 6C */	beq .L_8138AD84
/* 8138AC1C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138AC20 | 38 80 00 06 */	li r4, 0x6
/* 8138AC24 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AC28 | 48 18 76 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AC2C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138AC30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AC34 | 41 82 01 50 */	beq .L_8138AD84
/* 8138AC38 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138AC3C | 38 9D 03 EF */	addi r4, r29, 0x3ef
/* 8138AC40 | 38 A0 00 01 */	li r5, 0x1
/* 8138AC44 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138AC48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138AC4C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138AC50 | 7D 89 03 A6 */	mtctr r12
/* 8138AC54 | 4E 80 04 21 */	bctrl
/* 8138AC58 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8138AC5C | 7C 7C 1B 78 */	mr r28, r3
/* 8138AC60 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8138AC64 | 38 80 00 32 */	li r4, 0x32
/* 8138AC68 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 8138AC6C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138AC70 | 4B FB 3B 4D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138AC74 | 7C 65 1B 78 */	mr r5, r3
/* 8138AC78 | 7F E3 FB 78 */	mr r3, r31
/* 8138AC7C | 7F 84 E3 78 */	mr r4, r28
/* 8138AC80 | 48 00 17 E9 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138AC84 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138AC88 | 38 9D 03 FD */	addi r4, r29, 0x3fd
/* 8138AC8C | 38 A0 00 01 */	li r5, 0x1
/* 8138AC90 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138AC94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138AC98 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138AC9C | 7D 89 03 A6 */	mtctr r12
/* 8138ACA0 | 4E 80 04 21 */	bctrl
/* 8138ACA4 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 8138ACA8 | 7C 7C 1B 78 */	mr r28, r3
/* 8138ACAC | 38 80 00 49 */	li r4, 0x49
/* 8138ACB0 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8138ACB4 | 4B FB 3B 09 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138ACB8 | 7C 65 1B 78 */	mr r5, r3
/* 8138ACBC | 7F E3 FB 78 */	mr r3, r31
/* 8138ACC0 | 7F 84 E3 78 */	mr r4, r28
/* 8138ACC4 | 48 00 17 A5 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138ACC8 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138ACCC | 38 9D 02 2B */	addi r4, r29, 0x22b
/* 8138ACD0 | 38 A0 00 01 */	li r5, 0x1
/* 8138ACD4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138ACD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138ACDC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138ACE0 | 7D 89 03 A6 */	mtctr r12
/* 8138ACE4 | 4E 80 04 21 */	bctrl
/* 8138ACE8 | 7C 64 1B 78 */	mr r4, r3
/* 8138ACEC | 7F E3 FB 78 */	mr r3, r31
/* 8138ACF0 | 38 BF 02 B4 */	addi r5, r31, 0x2b4
/* 8138ACF4 | 48 00 17 75 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138ACF8 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138ACFC | 38 80 00 01 */	li r4, 0x1
/* 8138AD00 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AD04 | 48 18 76 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AD08 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AD0C | 4B FD 7B 65 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138AD10 | 3B C0 00 01 */	li r30, 0x1
/* 8138AD14 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 8138AD18 | A0 1F 02 B4 */	lhz r0, 0x2b4(r31)
/* 8138AD1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138AD20 | 41 82 00 24 */	beq .L_8138AD44
/* 8138AD24 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138AD28 | 38 80 00 02 */	li r4, 0x2
/* 8138AD2C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AD30 | 48 18 75 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AD34 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AD38 | 4B FD 7B 39 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138AD3C | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 8138AD40 | 48 00 00 20 */	b .L_8138AD60
.L_8138AD44:
/* 8138AD44 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138AD48 | 38 80 00 03 */	li r4, 0x3
/* 8138AD4C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AD50 | 48 18 75 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AD54 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AD58 | 4B FD 7B 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138AD5C | 93 DC 00 14 */	stw r30, 0x14(r28)
.L_8138AD60:
/* 8138AD60 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138AD64 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138AD68 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8138AD6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138AD70 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138AD74 | 7D 89 03 A6 */	mtctr r12
/* 8138AD78 | 4E 80 04 21 */	bctrl
/* 8138AD7C | 38 00 00 18 */	li r0, 0x18
/* 8138AD80 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138AD84:
/* 8138AD84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138AD88 | 48 26 E7 89 */	bl _restgpr_28
/* 8138AD8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138AD90 | 7C 08 03 A6 */	mtlr r0
/* 8138AD94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138AD98 | 4E 80 00 20 */	blr
.endfn stt_add_code_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x2D20 | 0x8138AD9C | size: 0x84
# ipl::scene::AddressEdit::stt_add_name_fadein()
.fn stt_add_name_fadein__Q33ipl5scene11AddressEditFv, global
/* 8138AD9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138ADA0 | 7C 08 02 A6 */	mflr r0
/* 8138ADA4 | 38 80 00 01 */	li r4, 0x1
/* 8138ADA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138ADAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138ADB0 | 7C 7F 1B 78 */	mr r31, r3
/* 8138ADB4 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138ADB8 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138ADBC | 48 18 75 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138ADC0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138ADC4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138ADC8 | 41 82 00 44 */	beq .L_8138AE0C
/* 8138ADCC | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138ADD0 | 38 80 00 03 */	li r4, 0x3
/* 8138ADD4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138ADD8 | 48 18 75 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138ADDC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138ADE0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138ADE4 | 41 82 00 28 */	beq .L_8138AE0C
/* 8138ADE8 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138ADEC | 38 80 00 02 */	li r4, 0x2
/* 8138ADF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138ADF4 | 48 18 75 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138ADF8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138ADFC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138AE00 | 41 82 00 0C */	beq .L_8138AE0C
/* 8138AE04 | 38 00 00 19 */	li r0, 0x19
/* 8138AE08 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138AE0C:
/* 8138AE0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138AE10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138AE14 | 7C 08 03 A6 */	mtlr r0
/* 8138AE18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138AE1C | 4E 80 00 20 */	blr
.endfn stt_add_name_fadein__Q33ipl5scene11AddressEditFv

# .text:0x2DA4 | 0x8138AE20 | size: 0x70
# ipl::scene::AddressEdit::stt_add_name_normal()
.fn stt_add_name_normal__Q33ipl5scene11AddressEditFv, global
/* 8138AE20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138AE24 | 7C 08 02 A6 */	mflr r0
/* 8138AE28 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138AE2C | 38 80 00 05 */	li r4, 0x5
/* 8138AE30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138AE34 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138AE38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138AE3C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138AE40 | 7C 7E 1B 78 */	mr r30, r3
/* 8138AE44 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138AE48 | 48 08 02 F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138AE4C | 7C 7F 1B 78 */	mr r31, r3
/* 8138AE50 | 48 01 1A C5 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8138AE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138AE58 | 41 82 00 0C */	beq .L_8138AE64
/* 8138AE5C | 7F E3 FB 78 */	mr r3, r31
/* 8138AE60 | 48 01 17 0D */	bl update__Q33ipl5scene6ButtonFv
.L_8138AE64:
/* 8138AE64 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138AE68 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 8138AE6C | 40 82 00 0C */	bne .L_8138AE78
/* 8138AE70 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8138AE74 | 4B FE 01 19 */	bl update__Q33ipl3gui11PaneManagerFv
.L_8138AE78:
/* 8138AE78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138AE7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138AE80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138AE84 | 7C 08 03 A6 */	mtlr r0
/* 8138AE88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138AE8C | 4E 80 00 20 */	blr
.endfn stt_add_name_normal__Q33ipl5scene11AddressEditFv

# .text:0x2E14 | 0x8138AE90 | size: 0x20C
# ipl::scene::AddressEdit::stt_add_name_input()
.fn stt_add_name_input__Q33ipl5scene11AddressEditFv, global
/* 8138AE90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138AE94 | 7C 08 02 A6 */	mflr r0
/* 8138AE98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138AE9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138AEA0 | 48 26 E6 25 */	bl _savegpr_28
/* 8138AEA4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138AEA8 | 7C 7E 1B 78 */	mr r30, r3
/* 8138AEAC | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138AEB0 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138AEB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138AEB8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8138AEBC | 7D 89 03 A6 */	mtctr r12
/* 8138AEC0 | 4E 80 04 21 */	bctrl
/* 8138AEC4 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AEC8 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8138AECC | 38 80 00 05 */	li r4, 0x5
/* 8138AED0 | 48 08 02 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138AED4 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8138AED8 | 7C 7F 1B 78 */	mr r31, r3
/* 8138AEDC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8138AEE0 | 41 82 00 28 */	beq .L_8138AF08
/* 8138AEE4 | 40 80 00 18 */	bge .L_8138AEFC
/* 8138AEE8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138AEEC | 40 80 01 98 */	bge .L_8138B084
/* 8138AEF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138AEF4 | 40 80 01 74 */	bge .L_8138B068
/* 8138AEF8 | 48 00 01 8C */	b .L_8138B084
.L_8138AEFC:
/* 8138AEFC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8138AF00 | 40 80 01 84 */	bge .L_8138B084
/* 8138AF04 | 48 00 01 3C */	b .L_8138B040
.L_8138AF08:
/* 8138AF08 | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 8138AF0C | A0 7E 02 B4 */	lhz r3, 0x2b4(r30)
/* 8138AF10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138AF14 | 7C 60 00 34 */	cntlzw r0, r3
/* 8138AF18 | 54 1D D9 7E */	srwi r29, r0, 5
/* 8138AF1C | 41 82 00 44 */	beq .L_8138AF60
/* 8138AF20 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8138AF24 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138AF28 | 48 00 36 6D */	bl setName__Q43ipl5scene11AddressEdit6StringFPCw
/* 8138AF2C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138AF30 | 3C 80 81 65 */	lis r4, lbl_8164810B@ha
/* 8138AF34 | 38 84 81 0B */	addi r4, r4, lbl_8164810B@l
/* 8138AF38 | 38 A0 00 01 */	li r5, 0x1
/* 8138AF3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138AF40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138AF44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138AF48 | 7D 89 03 A6 */	mtctr r12
/* 8138AF4C | 4E 80 04 21 */	bctrl
/* 8138AF50 | 7C 64 1B 78 */	mr r4, r3
/* 8138AF54 | 7F C3 F3 78 */	mr r3, r30
/* 8138AF58 | 38 BE 02 B4 */	addi r5, r30, 0x2b4
/* 8138AF5C | 48 00 15 0D */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
.L_8138AF60:
/* 8138AF60 | A0 1E 02 B4 */	lhz r0, 0x2b4(r30)
/* 8138AF64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138AF68 | 40 82 00 58 */	bne .L_8138AFC0
/* 8138AF6C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138AF70 | 40 82 00 40 */	bne .L_8138AFB0
/* 8138AF74 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138AF78 | 38 80 00 06 */	li r4, 0x6
/* 8138AF7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AF80 | 48 18 73 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AF84 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AF88 | 4B FD 78 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138AF8C | 3B A0 00 01 */	li r29, 0x1
/* 8138AF90 | 38 80 00 03 */	li r4, 0x3
/* 8138AF94 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138AF98 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138AF9C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AFA0 | 48 18 73 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AFA4 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AFA8 | 4B FD 78 C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138AFAC | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_8138AFB0:
/* 8138AFB0 | 7F E3 FB 78 */	mr r3, r31
/* 8138AFB4 | 38 80 00 0B */	li r4, 0xb
/* 8138AFB8 | 48 01 24 71 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138AFBC | 48 00 00 C8 */	b .L_8138B084
.L_8138AFC0:
/* 8138AFC0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138AFC4 | 41 82 00 40 */	beq .L_8138B004
/* 8138AFC8 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138AFCC | 38 80 00 02 */	li r4, 0x2
/* 8138AFD0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AFD4 | 48 18 73 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AFD8 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AFDC | 4B FD 78 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138AFE0 | 3B A0 00 01 */	li r29, 0x1
/* 8138AFE4 | 38 80 00 07 */	li r4, 0x7
/* 8138AFE8 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138AFEC | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138AFF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138AFF4 | 48 18 73 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138AFF8 | 7C 7C 1B 78 */	mr r28, r3
/* 8138AFFC | 4B FD 78 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B000 | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_8138B004:
/* 8138B004 | 88 1E 04 D1 */	lbz r0, 0x4d1(r30)
/* 8138B008 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138B00C | 41 82 00 24 */	beq .L_8138B030
/* 8138B010 | 7F E3 FB 78 */	mr r3, r31
/* 8138B014 | 38 80 00 01 */	li r4, 0x1
/* 8138B018 | 38 A0 00 2E */	li r5, 0x2e
/* 8138B01C | 48 01 24 41 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138B020 | 7F E3 FB 78 */	mr r3, r31
/* 8138B024 | 38 80 00 0F */	li r4, 0xf
/* 8138B028 | 48 01 24 01 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138B02C | 48 00 00 58 */	b .L_8138B084
.L_8138B030:
/* 8138B030 | 7F E3 FB 78 */	mr r3, r31
/* 8138B034 | 38 80 00 0B */	li r4, 0xb
/* 8138B038 | 48 01 23 F1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138B03C | 48 00 00 48 */	b .L_8138B084
.L_8138B040:
/* 8138B040 | 38 00 00 19 */	li r0, 0x19
/* 8138B044 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138B048 | 4B FA AA 45 */	bl getRegion__Q23ipl6SystemFv
/* 8138B04C | 28 03 00 06 */	cmplwi r3, 0x6
/* 8138B050 | 40 82 00 34 */	bne .L_8138B084
/* 8138B054 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138B058 | 38 80 00 00 */	li r4, 0x0
/* 8138B05C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138B060 | 48 0A E0 49 */	bl enableKSXFilter__Q29textinput7ManagerFb
/* 8138B064 | 48 00 00 20 */	b .L_8138B084
.L_8138B068:
/* 8138B068 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138B06C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138B070 | 48 0A E0 A1 */	bl isVacancy__Q29textinput7ManagerCFv
/* 8138B074 | 7C 65 1B 78 */	mr r5, r3
/* 8138B078 | 7F C3 F3 78 */	mr r3, r30
/* 8138B07C | 38 80 00 00 */	li r4, 0x0
/* 8138B080 | 48 00 29 59 */	bl setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb
.L_8138B084:
/* 8138B084 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138B088 | 48 26 E4 89 */	bl _restgpr_28
/* 8138B08C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138B090 | 7C 08 03 A6 */	mtlr r0
/* 8138B094 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138B098 | 4E 80 00 20 */	blr
.endfn stt_add_name_input__Q33ipl5scene11AddressEditFv

# .text:0x3020 | 0x8138B09C | size: 0x35C
# ipl::scene::AddressEdit::stt_add_name_fadeout()
.fn stt_add_name_fadeout__Q33ipl5scene11AddressEditFv, global
/* 8138B09C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138B0A0 | 7C 08 02 A6 */	mflr r0
/* 8138B0A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138B0A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138B0AC | 48 26 E4 19 */	bl _savegpr_28
/* 8138B0B0 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138B0B4 | 3F E0 81 64 */	lis r31, lbl_81647EE0@ha
/* 8138B0B8 | 7C 7E 1B 78 */	mr r30, r3
/* 8138B0BC | 38 80 00 05 */	li r4, 0x5
/* 8138B0C0 | 3B FF 7E E0 */	addi r31, r31, lbl_81647EE0@l
/* 8138B0C4 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138B0C8 | 48 18 72 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B0CC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B0D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B0D4 | 41 82 03 0C */	beq .L_8138B3E0
/* 8138B0D8 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B0DC | 38 80 00 07 */	li r4, 0x7
/* 8138B0E0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B0E4 | 48 18 72 35 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B0E8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B0EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B0F0 | 41 82 02 F0 */	beq .L_8138B3E0
/* 8138B0F4 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B0F8 | 38 80 00 06 */	li r4, 0x6
/* 8138B0FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B100 | 48 18 72 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B104 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B108 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B10C | 41 82 02 D4 */	beq .L_8138B3E0
/* 8138B110 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B114 | 38 80 00 09 */	li r4, 0x9
/* 8138B118 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B11C | 48 18 71 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B120 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B124 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B128 | 41 82 02 B8 */	beq .L_8138B3E0
/* 8138B12C | 80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 8138B130 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8138B134 | 41 82 02 AC */	beq .L_8138B3E0
/* 8138B138 | 40 80 00 10 */	bge .L_8138B148
/* 8138B13C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8138B140 | 40 80 00 14 */	bge .L_8138B154
/* 8138B144 | 48 00 02 9C */	b .L_8138B3E0
.L_8138B148:
/* 8138B148 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8138B14C | 40 80 02 94 */	bge .L_8138B3E0
/* 8138B150 | 48 00 01 BC */	b .L_8138B30C
.L_8138B154:
/* 8138B154 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B158 | 38 80 00 01 */	li r4, 0x1
/* 8138B15C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B160 | 48 18 71 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B164 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B168 | 4B FD 77 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B16C | 3B A0 00 01 */	li r29, 0x1
/* 8138B170 | 38 80 00 02 */	li r4, 0x2
/* 8138B174 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B178 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B17C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B180 | 48 18 71 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B184 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B188 | 4B FD 76 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B18C | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B190 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8138B194 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138B198 | 41 82 00 A8 */	beq .L_8138B240
/* 8138B19C | 40 80 01 34 */	bge .L_8138B2D0
/* 8138B1A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B1A4 | 40 80 00 08 */	bge .L_8138B1AC
/* 8138B1A8 | 48 00 01 28 */	b .L_8138B2D0
.L_8138B1AC:
/* 8138B1AC | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B1B0 | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 8138B1B4 | 38 A0 00 01 */	li r5, 0x1
/* 8138B1B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B1BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B1C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B1C4 | 7D 89 03 A6 */	mtctr r12
/* 8138B1C8 | 4E 80 04 21 */	bctrl
/* 8138B1CC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138B1D0 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B1D4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138B1D8 | 38 80 00 31 */	li r4, 0x31
/* 8138B1DC | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138B1E0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138B1E4 | 4B FB 35 D9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B1E8 | 7C 65 1B 78 */	mr r5, r3
/* 8138B1EC | 7F C3 F3 78 */	mr r3, r30
/* 8138B1F0 | 7F 84 E3 78 */	mr r4, r28
/* 8138B1F4 | 48 00 12 75 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B1F8 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B1FC | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 8138B200 | 38 A0 00 01 */	li r5, 0x1
/* 8138B204 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B208 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B20C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B210 | 7D 89 03 A6 */	mtctr r12
/* 8138B214 | 4E 80 04 21 */	bctrl
/* 8138B218 | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 8138B21C | 7C 7C 1B 78 */	mr r28, r3
/* 8138B220 | 38 80 00 47 */	li r4, 0x47
/* 8138B224 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8138B228 | 4B FB 35 95 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B22C | 7C 65 1B 78 */	mr r5, r3
/* 8138B230 | 7F C3 F3 78 */	mr r3, r30
/* 8138B234 | 7F 84 E3 78 */	mr r4, r28
/* 8138B238 | 48 00 12 31 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B23C | 48 00 00 94 */	b .L_8138B2D0
.L_8138B240:
/* 8138B240 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B244 | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 8138B248 | 38 A0 00 01 */	li r5, 0x1
/* 8138B24C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B250 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B254 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B258 | 7D 89 03 A6 */	mtctr r12
/* 8138B25C | 4E 80 04 21 */	bctrl
/* 8138B260 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138B264 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B268 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138B26C | 38 80 00 3F */	li r4, 0x3f
/* 8138B270 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138B274 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138B278 | 4B FB 35 45 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B27C | 7C 65 1B 78 */	mr r5, r3
/* 8138B280 | 7F C3 F3 78 */	mr r3, r30
/* 8138B284 | 7F 84 E3 78 */	mr r4, r28
/* 8138B288 | 48 00 11 E1 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B28C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B290 | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 8138B294 | 38 A0 00 01 */	li r5, 0x1
/* 8138B298 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B29C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B2A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B2A4 | 7D 89 03 A6 */	mtctr r12
/* 8138B2A8 | 4E 80 04 21 */	bctrl
/* 8138B2AC | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 8138B2B0 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B2B4 | 38 80 00 48 */	li r4, 0x48
/* 8138B2B8 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8138B2BC | 4B FB 35 01 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B2C0 | 7C 65 1B 78 */	mr r5, r3
/* 8138B2C4 | 7F C3 F3 78 */	mr r3, r30
/* 8138B2C8 | 7F 84 E3 78 */	mr r4, r28
/* 8138B2CC | 48 00 11 9D */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
.L_8138B2D0:
/* 8138B2D0 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B2D4 | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 8138B2D8 | 38 A0 00 01 */	li r5, 0x1
/* 8138B2DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B2E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B2E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B2E8 | 7D 89 03 A6 */	mtctr r12
/* 8138B2EC | 4E 80 04 21 */	bctrl
/* 8138B2F0 | 7C 64 1B 78 */	mr r4, r3
/* 8138B2F4 | 7F C3 F3 78 */	mr r3, r30
/* 8138B2F8 | 38 BE 02 CC */	addi r5, r30, 0x2cc
/* 8138B2FC | 48 00 11 6D */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B300 | 38 00 00 10 */	li r0, 0x10
/* 8138B304 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138B308 | 48 00 00 D8 */	b .L_8138B3E0
.L_8138B30C:
/* 8138B30C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B310 | 38 80 00 01 */	li r4, 0x1
/* 8138B314 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B318 | 48 18 70 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B31C | 7C 7C 1B 78 */	mr r28, r3
/* 8138B320 | 4B FD 75 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B324 | 3B A0 00 01 */	li r29, 0x1
/* 8138B328 | 38 80 00 04 */	li r4, 0x4
/* 8138B32C | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B330 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B334 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B338 | 48 18 6F E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B33C | 7C 7C 1B 78 */	mr r28, r3
/* 8138B340 | 4B FD 75 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B344 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B348 | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 8138B34C | 38 A0 00 01 */	li r5, 0x1
/* 8138B350 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B354 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B358 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B35C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B360 | 7D 89 03 A6 */	mtctr r12
/* 8138B364 | 4E 80 04 21 */	bctrl
/* 8138B368 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138B36C | 7C 7C 1B 78 */	mr r28, r3
/* 8138B370 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138B374 | 38 80 00 55 */	li r4, 0x55
/* 8138B378 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138B37C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138B380 | 4B FB 34 3D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B384 | 7C 65 1B 78 */	mr r5, r3
/* 8138B388 | 7F C3 F3 78 */	mr r3, r30
/* 8138B38C | 7F 84 E3 78 */	mr r4, r28
/* 8138B390 | 48 00 10 D9 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B394 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B398 | 38 9F 05 A0 */	addi r4, r31, 0x5a0
/* 8138B39C | 38 A0 00 01 */	li r5, 0x1
/* 8138B3A0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B3A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B3A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B3AC | 7D 89 03 A6 */	mtctr r12
/* 8138B3B0 | 4E 80 04 21 */	bctrl
/* 8138B3B4 | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 8138B3B8 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B3BC | 38 80 00 8B */	li r4, 0x8b
/* 8138B3C0 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8138B3C4 | 4B FB 33 F9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B3C8 | 7C 65 1B 78 */	mr r5, r3
/* 8138B3CC | 7F C3 F3 78 */	mr r3, r30
/* 8138B3D0 | 7F 84 E3 78 */	mr r4, r28
/* 8138B3D4 | 48 00 10 95 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B3D8 | 38 00 00 1C */	li r0, 0x1c
/* 8138B3DC | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138B3E0:
/* 8138B3E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138B3E4 | 48 26 E1 2D */	bl _restgpr_28
/* 8138B3E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138B3EC | 7C 08 03 A6 */	mtlr r0
/* 8138B3F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138B3F4 | 4E 80 00 20 */	blr
.endfn stt_add_name_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x337C | 0x8138B3F8 | size: 0x84
# ipl::scene::AddressEdit::stt_add_mii_fadein()
.fn stt_add_mii_fadein__Q33ipl5scene11AddressEditFv, global
/* 8138B3F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138B3FC | 7C 08 02 A6 */	mflr r0
/* 8138B400 | 38 80 00 01 */	li r4, 0x1
/* 8138B404 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138B408 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138B40C | 7C 7F 1B 78 */	mr r31, r3
/* 8138B410 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138B414 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138B418 | 48 18 6F 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B41C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B420 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B424 | 41 82 00 44 */	beq .L_8138B468
/* 8138B428 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138B42C | 38 80 00 04 */	li r4, 0x4
/* 8138B430 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B434 | 48 18 6E E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B438 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B43C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B440 | 41 82 00 28 */	beq .L_8138B468
/* 8138B444 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8138B448 | 38 80 00 00 */	li r4, 0x0
/* 8138B44C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B450 | 48 18 6E C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B454 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B458 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B45C | 41 82 00 0C */	beq .L_8138B468
/* 8138B460 | 38 00 00 1D */	li r0, 0x1d
/* 8138B464 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138B468:
/* 8138B468 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138B46C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138B470 | 7C 08 03 A6 */	mtlr r0
/* 8138B474 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138B478 | 4E 80 00 20 */	blr
.endfn stt_add_mii_fadein__Q33ipl5scene11AddressEditFv

# .text:0x3400 | 0x8138B47C | size: 0x70
# ipl::scene::AddressEdit::stt_add_mii_normal()
.fn stt_add_mii_normal__Q33ipl5scene11AddressEditFv, global
/* 8138B47C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138B480 | 7C 08 02 A6 */	mflr r0
/* 8138B484 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138B488 | 38 80 00 05 */	li r4, 0x5
/* 8138B48C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138B490 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138B494 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138B498 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138B49C | 7C 7E 1B 78 */	mr r30, r3
/* 8138B4A0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138B4A4 | 48 07 FC 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138B4A8 | 7C 7F 1B 78 */	mr r31, r3
/* 8138B4AC | 48 01 14 69 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8138B4B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138B4B4 | 41 82 00 0C */	beq .L_8138B4C0
/* 8138B4B8 | 7F E3 FB 78 */	mr r3, r31
/* 8138B4BC | 48 01 10 B1 */	bl update__Q33ipl5scene6ButtonFv
.L_8138B4C0:
/* 8138B4C0 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138B4C4 | 2C 00 00 1D */	cmpwi r0, 0x1d
/* 8138B4C8 | 40 82 00 0C */	bne .L_8138B4D4
/* 8138B4CC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8138B4D0 | 4B FD FA BD */	bl update__Q33ipl3gui11PaneManagerFv
.L_8138B4D4:
/* 8138B4D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138B4D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138B4DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138B4E0 | 7C 08 03 A6 */	mtlr r0
/* 8138B4E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138B4E8 | 4E 80 00 20 */	blr
.endfn stt_add_mii_normal__Q33ipl5scene11AddressEditFv

# .text:0x3470 | 0x8138B4EC | size: 0x178
# ipl::scene::AddressEdit::stt_add_mii_input()
.fn stt_add_mii_input__Q33ipl5scene11AddressEditFv, global
/* 8138B4EC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138B4F0 | 7C 08 02 A6 */	mflr r0
/* 8138B4F4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138B4F8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138B4FC | 48 26 DF CD */	bl _savegpr_29
/* 8138B500 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B504 | 7C 7D 1B 78 */	mr r29, r3
/* 8138B508 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138B50C | 7D 89 03 A6 */	mtctr r12
/* 8138B510 | 4E 80 04 21 */	bctrl
/* 8138B514 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138B518 | 41 82 00 CC */	beq .L_8138B5E4
/* 8138B51C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8138B520 | 7F A3 EB 78 */	mr r3, r29
/* 8138B524 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138B528 | 7D 89 03 A6 */	mtctr r12
/* 8138B52C | 4E 80 04 21 */	bctrl
/* 8138B530 | 83 C3 02 3C */	lwz r30, 0x23c(r3)
/* 8138B534 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138B538 | 41 80 00 AC */	blt .L_8138B5E4
/* 8138B53C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138B540 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8138B544 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138B548 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8138B54C | 4B FB 37 59 */	bl isAvalable__Q33ipl6nigaoe7ManagerFUs
/* 8138B550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138B554 | 41 82 00 90 */	beq .L_8138B5E4
/* 8138B558 | 80 1D 04 E8 */	lwz r0, 0x4e8(r29)
/* 8138B55C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138B560 | 40 82 00 84 */	bne .L_8138B5E4
/* 8138B564 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138B568 | 57 C6 04 3E */	clrlwi r6, r30, 16
/* 8138B56C | 38 80 00 00 */	li r4, 0x0
/* 8138B570 | 38 A0 00 00 */	li r5, 0x0
/* 8138B574 | 48 15 DD 91 */	bl RFLGetAdditionalInfo
/* 8138B578 | 38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 8138B57C | 38 81 00 34 */	addi r4, r1, 0x34
/* 8138B580 | 48 15 AB 05 */	bl RFLiIsSameID
/* 8138B584 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138B588 | 40 82 00 5C */	bne .L_8138B5E4
/* 8138B58C | 38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 8138B590 | 38 81 00 34 */	addi r4, r1, 0x34
/* 8138B594 | 38 A0 00 08 */	li r5, 0x8
/* 8138B598 | 4B FA 4C 99 */	bl memcpy
/* 8138B59C | 3D 00 81 39 */	lis r8, nigaoe_create_callback_add__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv@ha
/* 8138B5A0 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8138B5A4 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8138B5A8 | 7F C7 F3 78 */	mr r7, r30
/* 8138B5AC | 7F A9 EB 78 */	mr r9, r29
/* 8138B5B0 | 39 08 C5 F0 */	addi r8, r8, nigaoe_create_callback_add__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv@l
/* 8138B5B4 | 38 A0 00 4C */	li r5, 0x4c
/* 8138B5B8 | 38 C0 00 4C */	li r6, 0x4c
/* 8138B5BC | 4B FB 34 D9 */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 8138B5C0 | 38 00 00 01 */	li r0, 0x1
/* 8138B5C4 | 80 7D 00 7C */	lwz r3, 0x7c(r29)
/* 8138B5C8 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
/* 8138B5CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B5D0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138B5D4 | 7D 89 03 A6 */	mtctr r12
/* 8138B5D8 | 4E 80 04 21 */	bctrl
/* 8138B5DC | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138B5E0 | 48 04 63 CD */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_8138B5E4:
/* 8138B5E4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8138B5E8 | 7F A3 EB 78 */	mr r3, r29
/* 8138B5EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138B5F0 | 7D 89 03 A6 */	mtctr r12
/* 8138B5F4 | 4E 80 04 21 */	bctrl
/* 8138B5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138B5FC | 40 82 00 50 */	bne .L_8138B64C
/* 8138B600 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138B604 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138B608 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138B60C | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 8138B610 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138B614 | 40 82 00 38 */	bne .L_8138B64C
/* 8138B618 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138B61C | 7F BE EB 78 */	mr r30, r29
/* 8138B620 | 41 82 00 08 */	beq .L_8138B628
/* 8138B624 | 3B DD 00 58 */	addi r30, r29, 0x58
.L_8138B628:
/* 8138B628 | 38 80 00 05 */	li r4, 0x5
/* 8138B62C | 48 07 FB 0D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138B630 | 7F C4 F3 78 */	mr r4, r30
/* 8138B634 | 38 A0 00 00 */	li r5, 0x0
/* 8138B638 | 48 01 13 05 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138B63C | 38 60 00 1D */	li r3, 0x1d
/* 8138B640 | 38 00 00 00 */	li r0, 0x0
/* 8138B644 | 90 7D 00 64 */	stw r3, 0x64(r29)
/* 8138B648 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
.L_8138B64C:
/* 8138B64C | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138B650 | 48 26 DE C5 */	bl _restgpr_29
/* 8138B654 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138B658 | 7C 08 03 A6 */	mtlr r0
/* 8138B65C | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138B660 | 4E 80 00 20 */	blr
.endfn stt_add_mii_input__Q33ipl5scene11AddressEditFv

# .text:0x35E8 | 0x8138B664 | size: 0x60
# ipl::scene::AddressEdit::stt_msg_no_mii_add()
.fn stt_msg_no_mii_add__Q33ipl5scene11AddressEditFv, global
/* 8138B664 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138B668 | 7C 08 02 A6 */	mflr r0
/* 8138B66C | 38 80 00 05 */	li r4, 0x5
/* 8138B670 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138B674 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138B678 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138B67C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138B680 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138B684 | 7C 7E 1B 78 */	mr r30, r3
/* 8138B688 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138B68C | 48 07 FA AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138B690 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138B694 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8138B698 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B69C | 41 82 00 08 */	beq .L_8138B6A4
/* 8138B6A0 | 48 00 00 0C */	b .L_8138B6AC
.L_8138B6A4:
/* 8138B6A4 | 38 00 00 1D */	li r0, 0x1d
/* 8138B6A8 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138B6AC:
/* 8138B6AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138B6B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138B6B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138B6B8 | 7C 08 03 A6 */	mtlr r0
/* 8138B6BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138B6C0 | 4E 80 00 20 */	blr
.endfn stt_msg_no_mii_add__Q33ipl5scene11AddressEditFv

# .text:0x3648 | 0x8138B6C4 | size: 0x2E8
# ipl::scene::AddressEdit::stt_add_mii_fadeout()
.fn stt_add_mii_fadeout__Q33ipl5scene11AddressEditFv, global
/* 8138B6C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138B6C8 | 7C 08 02 A6 */	mflr r0
/* 8138B6CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138B6D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138B6D4 | 48 26 DD F1 */	bl _savegpr_28
/* 8138B6D8 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8138B6DC | 3F E0 81 64 */	lis r31, lbl_81647EE0@ha
/* 8138B6E0 | 7C 7E 1B 78 */	mr r30, r3
/* 8138B6E4 | 38 80 00 09 */	li r4, 0x9
/* 8138B6E8 | 3B FF 7E E0 */	addi r31, r31, lbl_81647EE0@l
/* 8138B6EC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138B6F0 | 48 18 6C 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B6F4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B6F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B6FC | 41 82 02 98 */	beq .L_8138B994
/* 8138B700 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B704 | 38 80 00 05 */	li r4, 0x5
/* 8138B708 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B70C | 48 18 6C 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B710 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B714 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B718 | 41 82 02 7C */	beq .L_8138B994
/* 8138B71C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B720 | 38 80 00 08 */	li r4, 0x8
/* 8138B724 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B728 | 48 18 6B F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B72C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B730 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B734 | 41 82 02 60 */	beq .L_8138B994
/* 8138B738 | 80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 8138B73C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8138B740 | 41 82 02 54 */	beq .L_8138B994
/* 8138B744 | 40 80 00 10 */	bge .L_8138B754
/* 8138B748 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8138B74C | 40 80 00 14 */	bge .L_8138B760
/* 8138B750 | 48 00 02 44 */	b .L_8138B994
.L_8138B754:
/* 8138B754 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8138B758 | 40 80 02 3C */	bge .L_8138B994
/* 8138B75C | 48 00 01 0C */	b .L_8138B868
.L_8138B760:
/* 8138B760 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B764 | 38 80 00 01 */	li r4, 0x1
/* 8138B768 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B76C | 48 18 6B AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B770 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B774 | 4B FD 70 FD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B778 | 3B A0 00 01 */	li r29, 0x1
/* 8138B77C | 38 80 00 02 */	li r4, 0x2
/* 8138B780 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B784 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B788 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B78C | 48 18 6B 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B790 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B794 | 4B FD 70 DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B798 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B79C | 38 9F 03 EF */	addi r4, r31, 0x3ef
/* 8138B7A0 | 38 A0 00 01 */	li r5, 0x1
/* 8138B7A4 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B7A8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B7AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B7B0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B7B4 | 7D 89 03 A6 */	mtctr r12
/* 8138B7B8 | 4E 80 04 21 */	bctrl
/* 8138B7BC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8138B7C0 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B7C4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8138B7C8 | 38 80 00 32 */	li r4, 0x32
/* 8138B7CC | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138B7D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138B7D4 | 4B FB 2F E9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B7D8 | 7C 65 1B 78 */	mr r5, r3
/* 8138B7DC | 7F C3 F3 78 */	mr r3, r30
/* 8138B7E0 | 7F 84 E3 78 */	mr r4, r28
/* 8138B7E4 | 48 00 0C 85 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B7E8 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B7EC | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 8138B7F0 | 38 A0 00 01 */	li r5, 0x1
/* 8138B7F4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B7F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B7FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B800 | 7D 89 03 A6 */	mtctr r12
/* 8138B804 | 4E 80 04 21 */	bctrl
/* 8138B808 | 7C 64 1B 78 */	mr r4, r3
/* 8138B80C | 7F C3 F3 78 */	mr r3, r30
/* 8138B810 | 38 BE 02 B4 */	addi r5, r30, 0x2b4
/* 8138B814 | 48 00 0C 55 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B818 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138B81C | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 8138B820 | 38 A0 00 01 */	li r5, 0x1
/* 8138B824 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B828 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B82C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B830 | 7D 89 03 A6 */	mtctr r12
/* 8138B834 | 4E 80 04 21 */	bctrl
/* 8138B838 | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 8138B83C | 7C 7C 1B 78 */	mr r28, r3
/* 8138B840 | 38 80 00 49 */	li r4, 0x49
/* 8138B844 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8138B848 | 4B FB 2F 75 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B84C | 7C 65 1B 78 */	mr r5, r3
/* 8138B850 | 7F C3 F3 78 */	mr r3, r30
/* 8138B854 | 7F 84 E3 78 */	mr r4, r28
/* 8138B858 | 48 00 0C 11 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B85C | 38 00 00 18 */	li r0, 0x18
/* 8138B860 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138B864 | 48 00 01 30 */	b .L_8138B994
.L_8138B868:
/* 8138B868 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B86C | 38 80 00 00 */	li r4, 0x0
/* 8138B870 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B874 | 48 18 6A A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B878 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B87C | 4B FD 6F F5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B880 | 3B A0 00 01 */	li r29, 0x1
/* 8138B884 | 38 80 00 10 */	li r4, 0x10
/* 8138B888 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B88C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B890 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B894 | 48 18 6A 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B898 | 4B FD E3 8D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8138B89C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B8A0 | 38 80 00 11 */	li r4, 0x11
/* 8138B8A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B8A8 | 48 18 6A 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B8AC | 4B FD E3 79 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8138B8B0 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B8B4 | 38 80 00 12 */	li r4, 0x12
/* 8138B8B8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B8BC | 48 18 6A 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B8C0 | 4B FD E3 65 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8138B8C4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B8C8 | 38 80 00 1C */	li r4, 0x1c
/* 8138B8CC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138B8D0 | 48 18 6A 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B8D4 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B8D8 | 4B FD 6F 99 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138B8DC | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138B8E0 | 38 9F 02 1D */	addi r4, r31, 0x21d
/* 8138B8E4 | 38 A0 00 01 */	li r5, 0x1
/* 8138B8E8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B8EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B8F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B8F4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B8F8 | 7D 89 03 A6 */	mtctr r12
/* 8138B8FC | 4E 80 04 21 */	bctrl
/* 8138B900 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138B904 | 7C 7C 1B 78 */	mr r28, r3
/* 8138B908 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138B90C | 38 80 00 44 */	li r4, 0x44
/* 8138B910 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 8138B914 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138B918 | 4B FB 2E A5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138B91C | 7C 65 1B 78 */	mr r5, r3
/* 8138B920 | 7F C3 F3 78 */	mr r3, r30
/* 8138B924 | 7F 84 E3 78 */	mr r4, r28
/* 8138B928 | 48 00 0B 41 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B92C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B930 | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 8138B934 | 38 A0 00 01 */	li r5, 0x1
/* 8138B938 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B93C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B940 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B944 | 7D 89 03 A6 */	mtctr r12
/* 8138B948 | 4E 80 04 21 */	bctrl
/* 8138B94C | 7C 64 1B 78 */	mr r4, r3
/* 8138B950 | 7F C3 F3 78 */	mr r3, r30
/* 8138B954 | 38 BE 02 B4 */	addi r5, r30, 0x2b4
/* 8138B958 | 48 00 0B 11 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B95C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138B960 | 38 9F 00 F5 */	addi r4, r31, 0xf5
/* 8138B964 | 38 A0 00 01 */	li r5, 0x1
/* 8138B968 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138B96C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138B970 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138B974 | 7D 89 03 A6 */	mtctr r12
/* 8138B978 | 4E 80 04 21 */	bctrl
/* 8138B97C | 7C 64 1B 78 */	mr r4, r3
/* 8138B980 | 7F C3 F3 78 */	mr r3, r30
/* 8138B984 | 38 BE 02 CC */	addi r5, r30, 0x2cc
/* 8138B988 | 48 00 0A E1 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138B98C | 38 00 00 21 */	li r0, 0x21
/* 8138B990 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138B994:
/* 8138B994 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138B998 | 48 26 DB 79 */	bl _restgpr_28
/* 8138B99C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138B9A0 | 7C 08 03 A6 */	mtlr r0
/* 8138B9A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138B9A8 | 4E 80 00 20 */	blr
.endfn stt_add_mii_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x3930 | 0x8138B9AC | size: 0x4C
# ipl::scene::AddressEdit::stt_add_confirm_fadein()
.fn stt_add_confirm_fadein__Q33ipl5scene11AddressEditFv, global
/* 8138B9AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138B9B0 | 7C 08 02 A6 */	mflr r0
/* 8138B9B4 | 38 80 00 00 */	li r4, 0x0
/* 8138B9B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138B9BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138B9C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8138B9C4 | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 8138B9C8 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138B9CC | 48 18 69 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138B9D0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138B9D4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138B9D8 | 41 82 00 0C */	beq .L_8138B9E4
/* 8138B9DC | 38 00 00 22 */	li r0, 0x22
/* 8138B9E0 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138B9E4:
/* 8138B9E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138B9E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138B9EC | 7C 08 03 A6 */	mtlr r0
/* 8138B9F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138B9F4 | 4E 80 00 20 */	blr
.endfn stt_add_confirm_fadein__Q33ipl5scene11AddressEditFv

# .text:0x397C | 0x8138B9F8 | size: 0x70
# ipl::scene::AddressEdit::stt_add_confirm_normal()
.fn stt_add_confirm_normal__Q33ipl5scene11AddressEditFv, global
/* 8138B9F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138B9FC | 7C 08 02 A6 */	mflr r0
/* 8138BA00 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138BA04 | 38 80 00 05 */	li r4, 0x5
/* 8138BA08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138BA0C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138BA10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138BA14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138BA18 | 7C 7E 1B 78 */	mr r30, r3
/* 8138BA1C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138BA20 | 48 07 F7 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BA24 | 7C 7F 1B 78 */	mr r31, r3
/* 8138BA28 | 48 01 0E ED */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8138BA2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138BA30 | 41 82 00 0C */	beq .L_8138BA3C
/* 8138BA34 | 7F E3 FB 78 */	mr r3, r31
/* 8138BA38 | 48 01 0B 35 */	bl update__Q33ipl5scene6ButtonFv
.L_8138BA3C:
/* 8138BA3C | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138BA40 | 2C 00 00 22 */	cmpwi r0, 0x22
/* 8138BA44 | 40 82 00 0C */	bne .L_8138BA50
/* 8138BA48 | 80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8138BA4C | 4B FD F5 41 */	bl update__Q33ipl3gui11PaneManagerFv
.L_8138BA50:
/* 8138BA50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138BA54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138BA58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138BA5C | 7C 08 03 A6 */	mtlr r0
/* 8138BA60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138BA64 | 4E 80 00 20 */	blr
.endfn stt_add_confirm_normal__Q33ipl5scene11AddressEditFv

# .text:0x39EC | 0x8138BA68 | size: 0xF8
# ipl::scene::AddressEdit::stt_add_confirm_fadeout()
.fn stt_add_confirm_fadeout__Q33ipl5scene11AddressEditFv, global
/* 8138BA68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138BA6C | 7C 08 02 A6 */	mflr r0
/* 8138BA70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138BA74 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138BA78 | 48 26 DA 51 */	bl _savegpr_29
/* 8138BA7C | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 8138BA80 | 7C 7D 1B 78 */	mr r29, r3
/* 8138BA84 | 38 80 00 1E */	li r4, 0x1e
/* 8138BA88 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138BA8C | 48 18 68 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138BA90 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138BA94 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138BA98 | 41 82 00 B0 */	beq .L_8138BB48
/* 8138BA9C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138BAA0 | 38 80 00 05 */	li r4, 0x5
/* 8138BAA4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138BAA8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138BAAC | 48 07 F6 8D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BAB0 | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 8138BAB4 | 7C 7E 1B 78 */	mr r30, r3
/* 8138BAB8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8138BABC | 41 82 00 8C */	beq .L_8138BB48
/* 8138BAC0 | 40 80 00 10 */	bge .L_8138BAD0
/* 8138BAC4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8138BAC8 | 40 80 00 14 */	bge .L_8138BADC
/* 8138BACC | 48 00 00 7C */	b .L_8138BB48
.L_8138BAD0:
/* 8138BAD0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8138BAD4 | 40 80 00 74 */	bge .L_8138BB48
/* 8138BAD8 | 48 00 00 30 */	b .L_8138BB08
.L_8138BADC:
/* 8138BADC | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138BAE0 | 38 80 00 00 */	li r4, 0x0
/* 8138BAE4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138BAE8 | 48 18 68 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138BAEC | 7C 7E 1B 78 */	mr r30, r3
/* 8138BAF0 | 4B FD 6D 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138BAF4 | 38 60 00 01 */	li r3, 0x1
/* 8138BAF8 | 38 00 00 1C */	li r0, 0x1c
/* 8138BAFC | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 8138BB00 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138BB04 | 48 00 00 44 */	b .L_8138BB48
.L_8138BB08:
/* 8138BB08 | 7F A3 EB 78 */	mr r3, r29
/* 8138BB0C | 48 00 1A 25 */	bl add_friendinfo__Q33ipl5scene11AddressEditFv
/* 8138BB10 | 7F C3 F3 78 */	mr r3, r30
/* 8138BB14 | 38 80 00 01 */	li r4, 0x1
/* 8138BB18 | 38 A0 00 29 */	li r5, 0x29
/* 8138BB1C | 48 01 19 41 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138BB20 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138BB24 | 38 80 00 14 */	li r4, 0x14
/* 8138BB28 | 48 07 F6 11 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BB2C | 4B FF 89 75 */	bl reset_friend__Q33ipl5scene7AddressFv
/* 8138BB30 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138BB34 | 38 80 00 4A */	li r4, 0x4a
/* 8138BB38 | 38 A0 00 2E */	li r5, 0x2e
/* 8138BB3C | 4B FB AB BD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138BB40 | 38 00 00 26 */	li r0, 0x26
/* 8138BB44 | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_8138BB48:
/* 8138BB48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138BB4C | 48 26 D9 C9 */	bl _restgpr_29
/* 8138BB50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138BB54 | 7C 08 03 A6 */	mtlr r0
/* 8138BB58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138BB5C | 4E 80 00 20 */	blr
.endfn stt_add_confirm_fadeout__Q33ipl5scene11AddressEditFv

# .text:0x3AE4 | 0x8138BB60 | size: 0xD0
# ipl::scene::AddressEdit::stt_wait_decide_anm_add()
.fn stt_wait_decide_anm_add__Q33ipl5scene11AddressEditFv, global
/* 8138BB60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138BB64 | 7C 08 02 A6 */	mflr r0
/* 8138BB68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138BB6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138BB70 | 48 26 D9 59 */	bl _savegpr_29
/* 8138BB74 | 7C 7D 1B 78 */	mr r29, r3
/* 8138BB78 | 3B E0 00 01 */	li r31, 0x1
/* 8138BB7C | 3B C0 00 00 */	li r30, 0x0
.L_8138BB80:
/* 8138BB80 | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 8138BB84 | 80 9D 00 68 */	lwz r4, 0x68(r29)
/* 8138BB88 | 38 03 00 06 */	addi r0, r3, 0x6
/* 8138BB8C | 38 64 02 8C */	addi r3, r4, 0x28c
/* 8138BB90 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138BB94 | 48 18 67 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138BB98 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138BB9C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8138BBA0 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 8138BBA4 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8138BBA8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8138BBAC | 7C 00 19 10 */	subfe r0, r0, r3
/* 8138BBB0 | 7F E3 00 38 */	and r3, r31, r0
/* 8138BBB4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8138BBB8 | 7F E0 19 10 */	subfe r31, r0, r3
/* 8138BBBC | 41 80 FF C4 */	blt .L_8138BB80
/* 8138BBC0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138BBC4 | 41 82 00 54 */	beq .L_8138BC18
/* 8138BBC8 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8138BBCC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8138BBD0 | 41 82 00 08 */	beq .L_8138BBD8
/* 8138BBD4 | 48 00 00 44 */	b .L_8138BC18
.L_8138BBD8:
/* 8138BBD8 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 8138BBDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138BBE0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138BBE4 | 7D 89 03 A6 */	mtctr r12
/* 8138BBE8 | 4E 80 04 21 */	bctrl
/* 8138BBEC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138BBF0 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8138BBF4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138BBF8 | 83 E4 00 AC */	lwz r31, 0xac(r4)
/* 8138BBFC | 4B FF E0 6D */	bl getDispCodeLong__Q43ipl5scene11AddressEdit6StringCFv
/* 8138BC00 | 7C 64 1B 78 */	mr r4, r3
/* 8138BC04 | 7F E3 FB 78 */	mr r3, r31
/* 8138BC08 | 38 A0 00 2E */	li r5, 0x2e
/* 8138BC0C | 4B FB AC 99 */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 8138BC10 | 38 00 00 25 */	li r0, 0x25
/* 8138BC14 | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_8138BC18:
/* 8138BC18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138BC1C | 48 26 D8 F9 */	bl _restgpr_29
/* 8138BC20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138BC24 | 7C 08 03 A6 */	mtlr r0
/* 8138BC28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138BC2C | 4E 80 00 20 */	blr
.endfn stt_wait_decide_anm_add__Q33ipl5scene11AddressEditFv

# .text:0x3BB4 | 0x8138BC30 | size: 0x24
# ipl::scene::AddressEdit::stt_msg_code_add()
.fn stt_msg_code_add__Q33ipl5scene11AddressEditFv, global
/* 8138BC30 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138BC34 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138BC38 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8138BC3C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138BC40 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138BC44 | 4C 82 00 20 */	bnelr
/* 8138BC48 | 38 00 00 22 */	li r0, 0x22
/* 8138BC4C | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8138BC50 | 4E 80 00 20 */	blr
.endfn stt_msg_code_add__Q33ipl5scene11AddressEditFv

# .text:0x3BD8 | 0x8138BC54 | size: 0x24
# ipl::scene::AddressEdit::stt_msg_code_edit()
.fn stt_msg_code_edit__Q33ipl5scene11AddressEditFv, global
/* 8138BC54 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138BC58 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138BC5C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8138BC60 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138BC64 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138BC68 | 4C 82 00 20 */	bnelr
/* 8138BC6C | 38 00 00 00 */	li r0, 0x0
/* 8138BC70 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8138BC74 | 4E 80 00 20 */	blr
.endfn stt_msg_code_edit__Q33ipl5scene11AddressEditFv

# .text:0x3BFC | 0x8138BC78 | size: 0x80
# ipl::scene::AddressEdit::stt_msg_no_mii()
.fn stt_msg_no_mii__Q33ipl5scene11AddressEditFv, global
/* 8138BC78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138BC7C | 7C 08 02 A6 */	mflr r0
/* 8138BC80 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138BC84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138BC88 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138BC8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138BC90 | 7C 7F 1B 78 */	mr r31, r3
/* 8138BC94 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8138BC98 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138BC9C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138BCA0 | 41 82 00 08 */	beq .L_8138BCA8
/* 8138BCA4 | 48 00 00 40 */	b .L_8138BCE4
.L_8138BCA8:
/* 8138BCA8 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8138BCAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138BCB0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138BCB4 | 7D 89 03 A6 */	mtctr r12
/* 8138BCB8 | 4E 80 04 21 */	bctrl
/* 8138BCBC | 38 00 00 05 */	li r0, 0x5
/* 8138BCC0 | 38 A0 00 00 */	li r5, 0x0
/* 8138BCC4 | 38 60 00 00 */	li r3, 0x0
/* 8138BCC8 | 7C 09 03 A6 */	mtctr r0
.L_8138BCCC:
/* 8138BCCC | 7C 9F 1A 14 */	add r4, r31, r3
/* 8138BCD0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8138BCD4 | 90 A4 00 90 */	stw r5, 0x90(r4)
/* 8138BCD8 | 42 00 FF F4 */	bdnz .L_8138BCCC
/* 8138BCDC | 38 00 00 00 */	li r0, 0x0
/* 8138BCE0 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138BCE4:
/* 8138BCE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138BCE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138BCEC | 7C 08 03 A6 */	mtlr r0
/* 8138BCF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138BCF4 | 4E 80 00 20 */	blr
.endfn stt_msg_no_mii__Q33ipl5scene11AddressEditFv

# .text:0x3C7C | 0x8138BCF8 | size: 0x190
# ipl::scene::AddressEdit::stt_select_mii()
.fn stt_select_mii__Q33ipl5scene11AddressEditFv, global
/* 8138BCF8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138BCFC | 7C 08 02 A6 */	mflr r0
/* 8138BD00 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138BD04 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138BD08 | 48 26 D7 C1 */	bl _savegpr_29
/* 8138BD0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138BD10 | 7C 7D 1B 78 */	mr r29, r3
/* 8138BD14 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138BD18 | 7D 89 03 A6 */	mtctr r12
/* 8138BD1C | 4E 80 04 21 */	bctrl
/* 8138BD20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138BD24 | 41 82 00 B8 */	beq .L_8138BDDC
/* 8138BD28 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8138BD2C | 7F A3 EB 78 */	mr r3, r29
/* 8138BD30 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138BD34 | 7D 89 03 A6 */	mtctr r12
/* 8138BD38 | 4E 80 04 21 */	bctrl
/* 8138BD3C | 83 C3 02 3C */	lwz r30, 0x23c(r3)
/* 8138BD40 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138BD44 | 41 80 00 98 */	blt .L_8138BDDC
/* 8138BD48 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138BD4C | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8138BD50 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138BD54 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8138BD58 | 4B FB 2F 4D */	bl isAvalable__Q33ipl6nigaoe7ManagerFUs
/* 8138BD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138BD60 | 41 82 00 7C */	beq .L_8138BDDC
/* 8138BD64 | 80 1D 04 E8 */	lwz r0, 0x4e8(r29)
/* 8138BD68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138BD6C | 40 82 00 70 */	bne .L_8138BDDC
/* 8138BD70 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138BD74 | 57 C6 04 3E */	clrlwi r6, r30, 16
/* 8138BD78 | 38 80 00 00 */	li r4, 0x0
/* 8138BD7C | 38 A0 00 00 */	li r5, 0x0
/* 8138BD80 | 48 15 D5 85 */	bl RFLGetAdditionalInfo
/* 8138BD84 | 38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 8138BD88 | 38 81 00 34 */	addi r4, r1, 0x34
/* 8138BD8C | 48 15 A2 F9 */	bl RFLiIsSameID
/* 8138BD90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138BD94 | 40 82 00 48 */	bne .L_8138BDDC
/* 8138BD98 | 38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 8138BD9C | 38 81 00 34 */	addi r4, r1, 0x34
/* 8138BDA0 | 38 A0 00 08 */	li r5, 0x8
/* 8138BDA4 | 4B FA 44 8D */	bl memcpy
/* 8138BDA8 | 3D 00 81 39 */	lis r8, nigaoe_create_callback_edit__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv@ha
/* 8138BDAC | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8138BDB0 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8138BDB4 | 7F C7 F3 78 */	mr r7, r30
/* 8138BDB8 | 7F A9 EB 78 */	mr r9, r29
/* 8138BDBC | 39 08 C5 04 */	addi r8, r8, nigaoe_create_callback_edit__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv@l
/* 8138BDC0 | 38 A0 00 4C */	li r5, 0x4c
/* 8138BDC4 | 38 C0 00 4C */	li r6, 0x4c
/* 8138BDC8 | 4B FB 2C CD */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 8138BDCC | 38 00 00 01 */	li r0, 0x1
/* 8138BDD0 | 7F A3 EB 78 */	mr r3, r29
/* 8138BDD4 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
/* 8138BDD8 | 48 00 1A 3D */	bl update_friendinfo__Q33ipl5scene11AddressEditFv
.L_8138BDDC:
/* 8138BDDC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8138BDE0 | 7F A3 EB 78 */	mr r3, r29
/* 8138BDE4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138BDE8 | 7D 89 03 A6 */	mtctr r12
/* 8138BDEC | 4E 80 04 21 */	bctrl
/* 8138BDF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138BDF4 | 40 82 00 7C */	bne .L_8138BE70
/* 8138BDF8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138BDFC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138BE00 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138BE04 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 8138BE08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138BE0C | 40 82 00 64 */	bne .L_8138BE70
/* 8138BE10 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138BE14 | 7F BE EB 78 */	mr r30, r29
/* 8138BE18 | 41 82 00 08 */	beq .L_8138BE20
/* 8138BE1C | 3B DD 00 58 */	addi r30, r29, 0x58
.L_8138BE20:
/* 8138BE20 | 38 80 00 05 */	li r4, 0x5
/* 8138BE24 | 48 07 F3 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BE28 | 7F C4 F3 78 */	mr r4, r30
/* 8138BE2C | 38 A0 00 00 */	li r5, 0x0
/* 8138BE30 | 48 01 0B 0D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138BE34 | 3B E0 00 00 */	li r31, 0x0
/* 8138BE38 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 8138BE3C | 93 FD 00 64 */	stw r31, 0x64(r29)
/* 8138BE40 | 93 FD 04 E8 */	stw r31, 0x4e8(r29)
/* 8138BE44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138BE48 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138BE4C | 7D 89 03 A6 */	mtctr r12
/* 8138BE50 | 4E 80 04 21 */	bctrl
/* 8138BE54 | 38 00 00 05 */	li r0, 0x5
/* 8138BE58 | 7F E3 FB 78 */	mr r3, r31
/* 8138BE5C | 7C 09 03 A6 */	mtctr r0
.L_8138BE60:
/* 8138BE60 | 7C 9D 1A 14 */	add r4, r29, r3
/* 8138BE64 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8138BE68 | 93 E4 00 90 */	stw r31, 0x90(r4)
/* 8138BE6C | 42 00 FF F4 */	bdnz .L_8138BE60
.L_8138BE70:
/* 8138BE70 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138BE74 | 48 26 D6 A1 */	bl _restgpr_29
/* 8138BE78 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138BE7C | 7C 08 03 A6 */	mtlr r0
/* 8138BE80 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138BE84 | 4E 80 00 20 */	blr
.endfn stt_select_mii__Q33ipl5scene11AddressEditFv

# .text:0x3E0C | 0x8138BE88 | size: 0x68
# ipl::scene::AddressEdit::stt_msg_add_rlt()
.fn stt_msg_add_rlt__Q33ipl5scene11AddressEditFv, global
/* 8138BE88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138BE8C | 7C 08 02 A6 */	mflr r0
/* 8138BE90 | 38 80 00 05 */	li r4, 0x5
/* 8138BE94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138BE98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138BE9C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138BEA0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138BEA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138BEA8 | 7C 7E 1B 78 */	mr r30, r3
/* 8138BEAC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138BEB0 | 48 07 F2 89 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BEB4 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8138BEB8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138BEBC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138BEC0 | 41 82 00 08 */	beq .L_8138BEC8
/* 8138BEC4 | 48 00 00 14 */	b .L_8138BED8
.L_8138BEC8:
/* 8138BEC8 | 38 80 00 0F */	li r4, 0xf
/* 8138BECC | 48 01 15 5D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138BED0 | 38 00 00 30 */	li r0, 0x30
/* 8138BED4 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138BED8:
/* 8138BED8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138BEDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138BEE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138BEE4 | 7C 08 03 A6 */	mtlr r0
/* 8138BEE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138BEEC | 4E 80 00 20 */	blr
.endfn stt_msg_add_rlt__Q33ipl5scene11AddressEditFv

# .text:0x3E74 | 0x8138BEF0 | size: 0x10C
# ipl::scene::AddressEdit::stt_msg_net()
.fn stt_msg_net__Q33ipl5scene11AddressEditFv, global
/* 8138BEF0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138BEF4 | 7C 08 02 A6 */	mflr r0
/* 8138BEF8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138BEFC | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8138BF00 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138BF04 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138BF08 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 8138BF0C | 7C 7E 1B 78 */	mr r30, r3
/* 8138BF10 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8138BF14 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138BF18 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138BF1C | 41 82 00 14 */	beq .L_8138BF30
/* 8138BF20 | 40 80 00 C4 */	bge .L_8138BFE4
/* 8138BF24 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138BF28 | 40 80 00 14 */	bge .L_8138BF3C
/* 8138BF2C | 48 00 00 B8 */	b .L_8138BFE4
.L_8138BF30:
/* 8138BF30 | 38 00 00 00 */	li r0, 0x0
/* 8138BF34 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8138BF38 | 48 00 00 AC */	b .L_8138BFE4
.L_8138BF3C:
/* 8138BF3C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138BF40 | 48 1D E2 39 */	bl fn_8156A178
/* 8138BF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138BF48 | 41 82 00 68 */	beq .L_8138BFB0
/* 8138BF4C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8138BF50 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8138BF54 | 41 82 00 5C */	beq .L_8138BFB0
/* 8138BF58 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138BF5C | 38 80 00 05 */	li r4, 0x5
/* 8138BF60 | 48 07 F1 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BF64 | 38 80 00 00 */	li r4, 0x0
/* 8138BF68 | 38 A0 00 00 */	li r5, 0x0
/* 8138BF6C | 48 01 09 D1 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138BF70 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138BF74 | 38 80 00 05 */	li r4, 0x5
/* 8138BF78 | 48 07 F1 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138BF7C | 38 80 00 0C */	li r4, 0xc
/* 8138BF80 | 48 01 0B D9 */	bl iplButton_8139CB58
/* 8138BF84 | 7F C3 F3 78 */	mr r3, r30
/* 8138BF88 | 7F C5 F3 78 */	mr r5, r30
/* 8138BF8C | 38 80 00 1B */	li r4, 0x1b
/* 8138BF90 | 38 C0 00 00 */	li r6, 0x0
/* 8138BF94 | 38 E0 00 01 */	li r7, 0x1
/* 8138BF98 | 48 07 DE F1 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 8138BF9C | 38 60 00 00 */	li r3, 0x0
/* 8138BFA0 | 38 00 00 28 */	li r0, 0x28
/* 8138BFA4 | 98 7E 04 D8 */	stb r3, 0x4d8(r30)
/* 8138BFA8 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138BFAC | 48 00 00 38 */	b .L_8138BFE4
.L_8138BFB0:
/* 8138BFB0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138BFB4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138BFB8 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138BFBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138BFC0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8138BFC4 | 7D 89 03 A6 */	mtctr r12
/* 8138BFC8 | 4E 80 04 21 */	bctrl
/* 8138BFCC | 7F C3 F3 78 */	mr r3, r30
/* 8138BFD0 | 38 80 00 12 */	li r4, 0x12
/* 8138BFD4 | 38 A0 00 01 */	li r5, 0x1
/* 8138BFD8 | 48 07 DF BD */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 8138BFDC | 38 00 00 30 */	li r0, 0x30
/* 8138BFE0 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138BFE4:
/* 8138BFE4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138BFE8 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8138BFEC | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8138BFF0 | 7C 08 03 A6 */	mtlr r0
/* 8138BFF4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138BFF8 | 4E 80 00 20 */	blr
.endfn stt_msg_net__Q33ipl5scene11AddressEditFv

# .text:0x3F80 | 0x8138BFFC | size: 0x84
# ipl::scene::AddressEdit::stt_wait_parental()
.fn stt_wait_parental__Q33ipl5scene11AddressEditFv, global
/* 8138BFFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C000 | 7C 08 02 A6 */	mflr r0
/* 8138C004 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138C008 | 38 80 00 1B */	li r4, 0x1b
/* 8138C00C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C010 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138C014 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138C018 | 7C 7F 1B 78 */	mr r31, r3
/* 8138C01C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138C020 | 48 07 F1 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C024 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C028 | 41 82 00 44 */	beq .L_8138C06C
/* 8138C02C | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 8138C030 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138C034 | 41 82 00 14 */	beq .L_8138C048
/* 8138C038 | 41 80 00 34 */	blt .L_8138C06C
/* 8138C03C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8138C040 | 40 80 00 2C */	bge .L_8138C06C
/* 8138C044 | 48 00 00 18 */	b .L_8138C05C
.L_8138C048:
/* 8138C048 | 38 60 00 01 */	li r3, 0x1
/* 8138C04C | 38 00 00 29 */	li r0, 0x29
/* 8138C050 | 98 7F 04 D8 */	stb r3, 0x4d8(r31)
/* 8138C054 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8138C058 | 48 00 00 14 */	b .L_8138C06C
.L_8138C05C:
/* 8138C05C | 38 60 00 00 */	li r3, 0x0
/* 8138C060 | 38 00 00 29 */	li r0, 0x29
/* 8138C064 | 98 7F 04 D8 */	stb r3, 0x4d8(r31)
/* 8138C068 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138C06C:
/* 8138C06C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C070 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138C074 | 7C 08 03 A6 */	mtlr r0
/* 8138C078 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C07C | 4E 80 00 20 */	blr
.endfn stt_wait_parental__Q33ipl5scene11AddressEditFv

# .text:0x4004 | 0x8138C080 | size: 0xE0
# ipl::scene::AddressEdit::stt_wait_parental_dst()
.fn stt_wait_parental_dst__Q33ipl5scene11AddressEditFv, global
/* 8138C080 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C084 | 7C 08 02 A6 */	mflr r0
/* 8138C088 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C08C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138C090 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138C094 | 7C 7E 1B 78 */	mr r30, r3
/* 8138C098 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C09C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138C0A0 | 7D 89 03 A6 */	mtctr r12
/* 8138C0A4 | 4E 80 04 21 */	bctrl
/* 8138C0A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C0AC | 40 82 00 9C */	bne .L_8138C148
/* 8138C0B0 | 88 1E 04 D8 */	lbz r0, 0x4d8(r30)
/* 8138C0B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C0B8 | 41 82 00 3C */	beq .L_8138C0F4
/* 8138C0BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C0C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C0C4 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138C0C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C0CC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8138C0D0 | 7D 89 03 A6 */	mtctr r12
/* 8138C0D4 | 4E 80 04 21 */	bctrl
/* 8138C0D8 | 7F C3 F3 78 */	mr r3, r30
/* 8138C0DC | 38 80 00 12 */	li r4, 0x12
/* 8138C0E0 | 38 A0 00 01 */	li r5, 0x1
/* 8138C0E4 | 48 07 DE B1 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 8138C0E8 | 38 00 00 30 */	li r0, 0x30
/* 8138C0EC | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138C0F0 | 48 00 00 58 */	b .L_8138C148
.L_8138C0F4:
/* 8138C0F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C0F8 | 38 80 00 05 */	li r4, 0x5
/* 8138C0FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C100 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138C104 | 48 07 F0 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C108 | 38 80 00 0B */	li r4, 0xb
/* 8138C10C | 48 01 0A 4D */	bl iplButton_8139CB58
/* 8138C110 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138C114 | 7F DF F3 78 */	mr r31, r30
/* 8138C118 | 41 82 00 08 */	beq .L_8138C120
/* 8138C11C | 3B FE 00 58 */	addi r31, r30, 0x58
.L_8138C120:
/* 8138C120 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C124 | 38 80 00 05 */	li r4, 0x5
/* 8138C128 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C12C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138C130 | 48 07 F0 09 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C134 | 7F E4 FB 78 */	mr r4, r31
/* 8138C138 | 38 A0 00 00 */	li r5, 0x0
/* 8138C13C | 48 01 08 01 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138C140 | 38 00 00 00 */	li r0, 0x0
/* 8138C144 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138C148:
/* 8138C148 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C14C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138C150 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138C154 | 7C 08 03 A6 */	mtlr r0
/* 8138C158 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C15C | 4E 80 00 20 */	blr
.endfn stt_wait_parental_dst__Q33ipl5scene11AddressEditFv

# .text:0x40E4 | 0x8138C160 | size: 0x10C
# ipl::scene::AddressEdit::stt_msg_wc()
.fn stt_msg_wc__Q33ipl5scene11AddressEditFv, global
/* 8138C160 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138C164 | 7C 08 02 A6 */	mflr r0
/* 8138C168 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138C16C | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8138C170 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138C174 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138C178 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 8138C17C | 7C 7E 1B 78 */	mr r30, r3
/* 8138C180 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8138C184 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138C188 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138C18C | 41 82 00 14 */	beq .L_8138C1A0
/* 8138C190 | 40 80 00 C4 */	bge .L_8138C254
/* 8138C194 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138C198 | 40 80 00 14 */	bge .L_8138C1AC
/* 8138C19C | 48 00 00 B8 */	b .L_8138C254
.L_8138C1A0:
/* 8138C1A0 | 38 00 00 00 */	li r0, 0x0
/* 8138C1A4 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8138C1A8 | 48 00 00 AC */	b .L_8138C254
.L_8138C1AC:
/* 8138C1AC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138C1B0 | 48 1D DF C9 */	bl fn_8156A178
/* 8138C1B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C1B8 | 41 82 00 68 */	beq .L_8138C220
/* 8138C1BC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8138C1C0 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8138C1C4 | 41 82 00 5C */	beq .L_8138C220
/* 8138C1C8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138C1CC | 38 80 00 05 */	li r4, 0x5
/* 8138C1D0 | 48 07 EF 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C1D4 | 38 80 00 00 */	li r4, 0x0
/* 8138C1D8 | 38 A0 00 00 */	li r5, 0x0
/* 8138C1DC | 48 01 07 61 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138C1E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138C1E4 | 38 80 00 05 */	li r4, 0x5
/* 8138C1E8 | 48 07 EF 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C1EC | 38 80 00 0C */	li r4, 0xc
/* 8138C1F0 | 48 01 09 69 */	bl iplButton_8139CB58
/* 8138C1F4 | 7F C3 F3 78 */	mr r3, r30
/* 8138C1F8 | 7F C5 F3 78 */	mr r5, r30
/* 8138C1FC | 38 80 00 1B */	li r4, 0x1b
/* 8138C200 | 38 C0 00 00 */	li r6, 0x0
/* 8138C204 | 38 E0 00 01 */	li r7, 0x1
/* 8138C208 | 48 07 DC 81 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 8138C20C | 38 60 00 00 */	li r3, 0x0
/* 8138C210 | 38 00 00 2B */	li r0, 0x2b
/* 8138C214 | 98 7E 04 D8 */	stb r3, 0x4d8(r30)
/* 8138C218 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138C21C | 48 00 00 38 */	b .L_8138C254
.L_8138C220:
/* 8138C220 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C224 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C228 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138C22C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C230 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8138C234 | 7D 89 03 A6 */	mtctr r12
/* 8138C238 | 4E 80 04 21 */	bctrl
/* 8138C23C | 7F C3 F3 78 */	mr r3, r30
/* 8138C240 | 38 80 00 12 */	li r4, 0x12
/* 8138C244 | 38 A0 00 04 */	li r5, 0x4
/* 8138C248 | 48 07 DD 4D */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 8138C24C | 38 00 00 30 */	li r0, 0x30
/* 8138C250 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138C254:
/* 8138C254 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138C258 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8138C25C | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8138C260 | 7C 08 03 A6 */	mtlr r0
/* 8138C264 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138C268 | 4E 80 00 20 */	blr
.endfn stt_msg_wc__Q33ipl5scene11AddressEditFv

# .text:0x41F0 | 0x8138C26C | size: 0x84
# ipl::scene::AddressEdit::stt_wait_parental_wc()
.fn stt_wait_parental_wc__Q33ipl5scene11AddressEditFv, global
/* 8138C26C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C270 | 7C 08 02 A6 */	mflr r0
/* 8138C274 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8138C278 | 38 80 00 1B */	li r4, 0x1b
/* 8138C27C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C280 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8138C284 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138C288 | 7C 7F 1B 78 */	mr r31, r3
/* 8138C28C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8138C290 | 48 07 EE A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C294 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C298 | 41 82 00 44 */	beq .L_8138C2DC
/* 8138C29C | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 8138C2A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138C2A4 | 41 82 00 14 */	beq .L_8138C2B8
/* 8138C2A8 | 41 80 00 34 */	blt .L_8138C2DC
/* 8138C2AC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8138C2B0 | 40 80 00 2C */	bge .L_8138C2DC
/* 8138C2B4 | 48 00 00 18 */	b .L_8138C2CC
.L_8138C2B8:
/* 8138C2B8 | 38 60 00 01 */	li r3, 0x1
/* 8138C2BC | 38 00 00 2C */	li r0, 0x2c
/* 8138C2C0 | 98 7F 04 D8 */	stb r3, 0x4d8(r31)
/* 8138C2C4 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8138C2C8 | 48 00 00 14 */	b .L_8138C2DC
.L_8138C2CC:
/* 8138C2CC | 38 60 00 00 */	li r3, 0x0
/* 8138C2D0 | 38 00 00 2C */	li r0, 0x2c
/* 8138C2D4 | 98 7F 04 D8 */	stb r3, 0x4d8(r31)
/* 8138C2D8 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138C2DC:
/* 8138C2DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C2E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138C2E4 | 7C 08 03 A6 */	mtlr r0
/* 8138C2E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C2EC | 4E 80 00 20 */	blr
.endfn stt_wait_parental_wc__Q33ipl5scene11AddressEditFv

# .text:0x4274 | 0x8138C2F0 | size: 0xE0
# ipl::scene::AddressEdit::stt_wait_parental_dst_wc()
.fn stt_wait_parental_dst_wc__Q33ipl5scene11AddressEditFv, global
/* 8138C2F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C2F4 | 7C 08 02 A6 */	mflr r0
/* 8138C2F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C2FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138C300 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138C304 | 7C 7E 1B 78 */	mr r30, r3
/* 8138C308 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C30C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138C310 | 7D 89 03 A6 */	mtctr r12
/* 8138C314 | 4E 80 04 21 */	bctrl
/* 8138C318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C31C | 40 82 00 9C */	bne .L_8138C3B8
/* 8138C320 | 88 1E 04 D8 */	lbz r0, 0x4d8(r30)
/* 8138C324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C328 | 41 82 00 3C */	beq .L_8138C364
/* 8138C32C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C330 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C334 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138C338 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C33C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8138C340 | 7D 89 03 A6 */	mtctr r12
/* 8138C344 | 4E 80 04 21 */	bctrl
/* 8138C348 | 7F C3 F3 78 */	mr r3, r30
/* 8138C34C | 38 80 00 12 */	li r4, 0x12
/* 8138C350 | 38 A0 00 04 */	li r5, 0x4
/* 8138C354 | 48 07 DC 41 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 8138C358 | 38 00 00 30 */	li r0, 0x30
/* 8138C35C | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138C360 | 48 00 00 58 */	b .L_8138C3B8
.L_8138C364:
/* 8138C364 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C368 | 38 80 00 05 */	li r4, 0x5
/* 8138C36C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C370 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138C374 | 48 07 ED C5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C378 | 38 80 00 0B */	li r4, 0xb
/* 8138C37C | 48 01 07 DD */	bl iplButton_8139CB58
/* 8138C380 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138C384 | 7F DF F3 78 */	mr r31, r30
/* 8138C388 | 41 82 00 08 */	beq .L_8138C390
/* 8138C38C | 3B FE 00 58 */	addi r31, r30, 0x58
.L_8138C390:
/* 8138C390 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138C394 | 38 80 00 05 */	li r4, 0x5
/* 8138C398 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138C39C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138C3A0 | 48 07 ED 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138C3A4 | 7F E4 FB 78 */	mr r4, r31
/* 8138C3A8 | 38 A0 00 00 */	li r5, 0x0
/* 8138C3AC | 48 01 05 91 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138C3B0 | 38 00 00 00 */	li r0, 0x0
/* 8138C3B4 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138C3B8:
/* 8138C3B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C3BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138C3C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138C3C4 | 7C 08 03 A6 */	mtlr r0
/* 8138C3C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C3CC | 4E 80 00 20 */	blr
.endfn stt_wait_parental_dst_wc__Q33ipl5scene11AddressEditFv

# .text:0x4354 | 0x8138C3D0 | size: 0x24
# ipl::scene::AddressEdit::stt_msg_parental()
.fn stt_msg_parental__Q33ipl5scene11AddressEditFv, global
/* 8138C3D0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138C3D4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138C3D8 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8138C3DC | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138C3E0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138C3E4 | 4C 82 00 20 */	bnelr
/* 8138C3E8 | 38 00 00 00 */	li r0, 0x0
/* 8138C3EC | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8138C3F0 | 4E 80 00 20 */	blr
.endfn stt_msg_parental__Q33ipl5scene11AddressEditFv

# .text:0x4378 | 0x8138C3F4 | size: 0x24
# ipl::scene::AddressEdit::stt_msg_nwc24_error()
.fn stt_msg_nwc24_error__Q33ipl5scene11AddressEditFv, global
/* 8138C3F4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138C3F8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138C3FC | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8138C400 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138C404 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138C408 | 4C 82 00 20 */	bnelr
/* 8138C40C | 38 00 00 00 */	li r0, 0x0
/* 8138C410 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8138C414 | 4E 80 00 20 */	blr
.endfn stt_msg_nwc24_error__Q33ipl5scene11AddressEditFv

# .text:0x439C | 0x8138C418 | size: 0x50
# ipl::scene::AddressEdit::stt_msg_no_established()
.fn stt_msg_no_established__Q33ipl5scene11AddressEditFv, global
/* 8138C418 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C41C | 7C 08 02 A6 */	mflr r0
/* 8138C420 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138C424 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C428 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138C42C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138C430 | 7C 7F 1B 78 */	mr r31, r3
/* 8138C434 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8138C438 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8138C43C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138C440 | 41 82 00 08 */	beq .L_8138C448
/* 8138C444 | 48 00 00 10 */	b .L_8138C454
.L_8138C448:
/* 8138C448 | 48 00 10 3D */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138C44C | 38 00 00 00 */	li r0, 0x0
/* 8138C450 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_8138C454:
/* 8138C454 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C458 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138C45C | 7C 08 03 A6 */	mtlr r0
/* 8138C460 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C464 | 4E 80 00 20 */	blr
.endfn stt_msg_no_established__Q33ipl5scene11AddressEditFv

# .text:0x43EC | 0x8138C468 | size: 0x9C
# ipl::scene::AddressEdit::set_textbox(nw4r::lyt::Pane*, const wchar_t*)
.fn set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw, global
/* 8138C468 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138C46C | 7C 08 02 A6 */	mflr r0
/* 8138C470 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138C474 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138C478 | 48 26 D0 51 */	bl _savegpr_29
/* 8138C47C | 7C 9D 23 78 */	mr r29, r4
/* 8138C480 | 7C BE 2B 78 */	mr r30, r5
/* 8138C484 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8138C488 | 7F A3 EB 78 */	mr r3, r29
/* 8138C48C | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 8138C490 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138C494 | 7D 89 03 A6 */	mtctr r12
/* 8138C498 | 4E 80 04 21 */	bctrl
/* 8138C49C | 48 00 00 18 */	b .L_8138C4B4
.L_8138C4A0:
/* 8138C4A0 | 7C 03 F8 40 */	cmplw r3, r31
/* 8138C4A4 | 40 82 00 0C */	bne .L_8138C4B0
/* 8138C4A8 | 38 00 00 01 */	li r0, 0x1
/* 8138C4AC | 48 00 00 14 */	b .L_8138C4C0
.L_8138C4B0:
/* 8138C4B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8138C4B4:
/* 8138C4B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C4B8 | 40 82 FF E8 */	bne .L_8138C4A0
/* 8138C4BC | 38 00 00 00 */	li r0, 0x0
.L_8138C4C0:
/* 8138C4C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C4C4 | 41 82 00 0C */	beq .L_8138C4D0
/* 8138C4C8 | 7F A3 EB 78 */	mr r3, r29
/* 8138C4CC | 48 00 00 08 */	b .L_8138C4D4
.L_8138C4D0:
/* 8138C4D0 | 38 60 00 00 */	li r3, 0x0
.L_8138C4D4:
/* 8138C4D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C4D8 | 7F C4 F3 78 */	mr r4, r30
/* 8138C4DC | 38 A0 00 00 */	li r5, 0x0
/* 8138C4E0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8138C4E4 | 7D 89 03 A6 */	mtctr r12
/* 8138C4E8 | 4E 80 04 21 */	bctrl
/* 8138C4EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138C4F0 | 48 26 D0 25 */	bl _restgpr_29
/* 8138C4F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138C4F8 | 7C 08 03 A6 */	mtlr r0
/* 8138C4FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138C500 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw

# .text:0x4488 | 0x8138C504 | size: 0xB0
# ipl::scene::AddressEdit::nigaoe_create_callback_edit(ipl::nigaoe::Object*, void*)
.fn nigaoe_create_callback_edit__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv, global
/* 8138C504 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C508 | 7C 08 02 A6 */	mflr r0
/* 8138C50C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C510 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138C514 | 7C 9F 23 78 */	mr r31, r4
/* 8138C518 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138C51C | 7C 7E 1B 78 */	mr r30, r3
/* 8138C520 | 80 04 04 DC */	lwz r0, 0x4dc(r4)
/* 8138C524 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C528 | 41 82 00 10 */	beq .L_8138C538
/* 8138C52C | 7C 03 03 78 */	mr r3, r0
/* 8138C530 | 38 80 00 01 */	li r4, 0x1
/* 8138C534 | 4B FB 29 DD */	bl __dt__Q33ipl6nigaoe6ObjectFv
.L_8138C538:
/* 8138C538 | 93 DF 04 DC */	stw r30, 0x4dc(r31)
/* 8138C53C | 3C 80 81 64 */	lis r4, lbl_81647FC9@ha
/* 8138C540 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8138C544 | 38 84 7F C9 */	addi r4, r4, lbl_81647FC9@l
/* 8138C548 | 38 A0 00 01 */	li r5, 0x1
/* 8138C54C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138C550 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C554 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138C558 | 7D 89 03 A6 */	mtctr r12
/* 8138C55C | 4E 80 04 21 */	bctrl
/* 8138C560 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C564 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8138C568 | 7D 89 03 A6 */	mtctr r12
/* 8138C56C | 4E 80 04 21 */	bctrl
/* 8138C570 | 38 BE 00 18 */	addi r5, r30, 0x18
/* 8138C574 | 38 80 00 00 */	li r4, 0x0
/* 8138C578 | 48 19 B8 A5 */	bl fn_81527E1C
/* 8138C57C | 38 00 00 02 */	li r0, 0x2
/* 8138C580 | 7F C3 F3 78 */	mr r3, r30
/* 8138C584 | 90 1F 04 E8 */	stw r0, 0x4e8(r31)
/* 8138C588 | 48 00 00 2D */	bl getName__Q33ipl6nigaoe6ObjectCFv
/* 8138C58C | 7C 64 1B 78 */	mr r4, r3
/* 8138C590 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 8138C594 | 38 A0 00 0A */	li r5, 0xa
/* 8138C598 | 48 04 50 69 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 8138C59C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C5A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138C5A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138C5A8 | 7C 08 03 A6 */	mtlr r0
/* 8138C5AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C5B0 | 4E 80 00 20 */	blr
.endfn nigaoe_create_callback_edit__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv

# .text:0x4538 | 0x8138C5B4 | size: 0x3C
# ipl::nigaoe::Object::getName() const
.fn getName__Q33ipl6nigaoe6ObjectCFv, global
/* 8138C5B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138C5B8 | 7C 08 02 A6 */	mflr r0
/* 8138C5BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138C5C0 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8138C5C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C5C8 | 41 80 00 14 */	blt .L_8138C5DC
/* 8138C5CC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8138C5D0 | 48 15 91 65 */	bl RFLiGetCharData
/* 8138C5D4 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8138C5D8 | 48 00 00 08 */	b .L_8138C5E0
.L_8138C5DC:
/* 8138C5DC | 38 60 00 00 */	li r3, 0x0
.L_8138C5E0:
/* 8138C5E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138C5E4 | 7C 08 03 A6 */	mtlr r0
/* 8138C5E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138C5EC | 4E 80 00 20 */	blr
.endfn getName__Q33ipl6nigaoe6ObjectCFv

# .text:0x4574 | 0x8138C5F0 | size: 0xEC
# ipl::scene::AddressEdit::nigaoe_create_callback_add(ipl::nigaoe::Object*, void*)
.fn nigaoe_create_callback_add__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv, global
/* 8138C5F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138C5F4 | 7C 08 02 A6 */	mflr r0
/* 8138C5F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138C5FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138C600 | 48 26 CE C9 */	bl _savegpr_29
/* 8138C604 | 80 04 04 DC */	lwz r0, 0x4dc(r4)
/* 8138C608 | 7C 7D 1B 78 */	mr r29, r3
/* 8138C60C | 7C 9E 23 78 */	mr r30, r4
/* 8138C610 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C614 | 41 82 00 10 */	beq .L_8138C624
/* 8138C618 | 7C 03 03 78 */	mr r3, r0
/* 8138C61C | 38 80 00 01 */	li r4, 0x1
/* 8138C620 | 4B FB 28 F1 */	bl __dt__Q33ipl6nigaoe6ObjectFv
.L_8138C624:
/* 8138C624 | 93 BE 04 DC */	stw r29, 0x4dc(r30)
/* 8138C628 | 3F E0 81 64 */	lis r31, lbl_81647FC9@ha
/* 8138C62C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138C630 | 38 9F 7F C9 */	addi r4, r31, lbl_81647FC9@l
/* 8138C634 | 38 A0 00 01 */	li r5, 0x1
/* 8138C638 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138C63C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C640 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138C644 | 7D 89 03 A6 */	mtctr r12
/* 8138C648 | 4E 80 04 21 */	bctrl
/* 8138C64C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C650 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8138C654 | 7D 89 03 A6 */	mtctr r12
/* 8138C658 | 4E 80 04 21 */	bctrl
/* 8138C65C | 38 BD 00 18 */	addi r5, r29, 0x18
/* 8138C660 | 38 80 00 00 */	li r4, 0x0
/* 8138C664 | 48 19 B7 B9 */	bl fn_81527E1C
/* 8138C668 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138C66C | 38 9F 7F C9 */	addi r4, r31, lbl_81647FC9@l
/* 8138C670 | 38 A0 00 01 */	li r5, 0x1
/* 8138C674 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138C678 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C67C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138C680 | 7D 89 03 A6 */	mtctr r12
/* 8138C684 | 4E 80 04 21 */	bctrl
/* 8138C688 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C68C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8138C690 | 7D 89 03 A6 */	mtctr r12
/* 8138C694 | 4E 80 04 21 */	bctrl
/* 8138C698 | 38 BD 00 18 */	addi r5, r29, 0x18
/* 8138C69C | 38 80 00 00 */	li r4, 0x0
/* 8138C6A0 | 48 19 B7 7D */	bl fn_81527E1C
/* 8138C6A4 | 38 00 00 02 */	li r0, 0x2
/* 8138C6A8 | 7F A3 EB 78 */	mr r3, r29
/* 8138C6AC | 90 1E 04 E8 */	stw r0, 0x4e8(r30)
/* 8138C6B0 | 4B FF FF 05 */	bl getName__Q33ipl6nigaoe6ObjectCFv
/* 8138C6B4 | 7C 64 1B 78 */	mr r4, r3
/* 8138C6B8 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138C6BC | 38 A0 00 0A */	li r5, 0xa
/* 8138C6C0 | 48 04 4F 41 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 8138C6C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138C6C8 | 48 26 CE 4D */	bl _restgpr_29
/* 8138C6CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138C6D0 | 7C 08 03 A6 */	mtlr r0
/* 8138C6D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138C6D8 | 4E 80 00 20 */	blr
.endfn nigaoe_create_callback_add__Q33ipl5scene11AddressEditFPQ33ipl6nigaoe6ObjectPv

# .text:0x4660 | 0x8138C6DC | size: 0x2D8
# ipl::scene::AddressEdit::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene11AddressEditFPCcPQ33ipl10controller9Interface, global
/* 8138C6DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138C6E0 | 7C 08 02 A6 */	mflr r0
/* 8138C6E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8138C6E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138C6EC | 48 26 CD D9 */	bl _savegpr_28
/* 8138C6F0 | 7C 7D 1B 78 */	mr r29, r3
/* 8138C6F4 | 7C 9C 23 78 */	mr r28, r4
/* 8138C6F8 | 7C BE 2B 78 */	mr r30, r5
/* 8138C6FC | 48 00 0D 15 */	bl get_button_no__Q33ipl5scene11AddressEditFPCc
/* 8138C700 | 80 1D 00 64 */	lwz r0, 0x64(r29)
/* 8138C704 | 7C 7F 1B 78 */	mr r31, r3
/* 8138C708 | 2C 00 00 22 */	cmpwi r0, 0x22
/* 8138C70C | 41 82 01 D8 */	beq .L_8138C8E4
/* 8138C710 | 40 80 02 8C */	bge .L_8138C99C
/* 8138C714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C718 | 41 82 00 08 */	beq .L_8138C720
/* 8138C71C | 48 00 02 80 */	b .L_8138C99C
.L_8138C720:
/* 8138C720 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8138C724 | 41 82 00 AC */	beq .L_8138C7D0
/* 8138C728 | 40 80 02 74 */	bge .L_8138C99C
/* 8138C72C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138C730 | 41 82 00 10 */	beq .L_8138C740
/* 8138C734 | 40 80 01 3C */	bge .L_8138C870
/* 8138C738 | 48 00 02 64 */	b .L_8138C99C
/* 8138C73C | 48 00 02 60 */	b .L_8138C99C
.L_8138C740:
/* 8138C740 | 80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 8138C744 | 80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 8138C748 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 8138C74C | 7C 84 02 14 */	add r4, r4, r0
/* 8138C750 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8138C754 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8138C758 | 40 82 02 44 */	bne .L_8138C99C
/* 8138C75C | 54 60 10 3A */	slwi r0, r3, 2
/* 8138C760 | 7F 9D 02 14 */	add r28, r29, r0
/* 8138C764 | 80 1C 00 90 */	lwz r0, 0x90(r28)
/* 8138C768 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C76C | 40 82 00 54 */	bne .L_8138C7C0
/* 8138C770 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138C774 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 8138C778 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138C77C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138C780 | 48 18 5B 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138C784 | 7C 7D 1B 78 */	mr r29, r3
/* 8138C788 | 4B FD 60 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138C78C | 38 00 00 01 */	li r0, 0x1
/* 8138C790 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138C794 | 3C 80 81 65 */	lis r4, lbl_8164848D@ha
/* 8138C798 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8138C79C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138C7A0 | 38 84 84 8D */	addi r4, r4, lbl_8164848D@l
/* 8138C7A4 | 4B FD EC C9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138C7A8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138C7AC | 7F C3 F3 78 */	mr r3, r30
/* 8138C7B0 | 38 80 00 01 */	li r4, 0x1
/* 8138C7B4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8138C7B8 | 7D 89 03 A6 */	mtctr r12
/* 8138C7BC | 4E 80 04 21 */	bctrl
.L_8138C7C0:
/* 8138C7C0 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138C7C4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8138C7C8 | 90 1C 00 90 */	stw r0, 0x90(r28)
/* 8138C7CC | 48 00 01 D0 */	b .L_8138C99C
.L_8138C7D0:
/* 8138C7D0 | 54 60 10 3A */	slwi r0, r3, 2
/* 8138C7D4 | 7C 7D 02 14 */	add r3, r29, r0
/* 8138C7D8 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 8138C7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C7E0 | 40 82 00 90 */	bne .L_8138C870
/* 8138C7E4 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138C7E8 | 7F 84 E3 78 */	mr r4, r28
/* 8138C7EC | 38 A0 00 01 */	li r5, 0x1
/* 8138C7F0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138C7F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C7F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138C7FC | 7D 89 03 A6 */	mtctr r12
/* 8138C800 | 4E 80 04 21 */	bctrl
/* 8138C804 | C0 22 83 F8 */	lfs f1, lbl_816947F8@sda21(r0)
/* 8138C808 | 7C 7C 1B 78 */	mr r28, r3
/* 8138C80C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8138C810 | FC 40 08 90 */	fmr f2, f1
/* 8138C814 | FC 60 08 90 */	fmr f3, f1
/* 8138C818 | 4B FD 62 45 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8138C81C | 38 81 00 14 */	addi r4, r1, 0x14
/* 8138C820 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 8138C824 | 7C 85 23 78 */	mr r5, r4
/* 8138C828 | 48 1B 4C 95 */	bl fn_815414BC
/* 8138C82C | C0 22 84 00 */	lfs f1, lbl_81694800@sda21(r0)
/* 8138C830 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8138C834 | C0 02 84 04 */	lfs f0, lbl_81694804@sda21(r0)
/* 8138C838 | 38 A0 00 00 */	li r5, 0x0
/* 8138C83C | C0 62 83 FC */	lfs f3, lbl_816947FC@sda21(r0)
/* 8138C840 | 38 C0 00 01 */	li r6, 0x1
/* 8138C844 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8138C848 | C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8138C84C | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8138C850 | EC 42 18 2A */	fadds f2, f2, f3
/* 8138C854 | EC 00 08 2A */	fadds f0, f0, f1
/* 8138C858 | D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8138C85C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8138C860 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138C864 | 48 04 4F 69 */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 8138C868 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138C86C | 48 04 4E AD */	bl fadein__Q33ipl5scene11TextBalloonFv
.L_8138C870:
/* 8138C870 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8138C874 | 7F 9D 02 14 */	add r28, r29, r0
/* 8138C878 | 80 1C 00 90 */	lwz r0, 0x90(r28)
/* 8138C87C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C880 | 40 82 00 54 */	bne .L_8138C8D4
/* 8138C884 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138C888 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 8138C88C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138C890 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138C894 | 48 18 5A 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138C898 | 7C 7D 1B 78 */	mr r29, r3
/* 8138C89C | 4B FD 5F D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138C8A0 | 38 00 00 01 */	li r0, 0x1
/* 8138C8A4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138C8A8 | 3C 80 81 65 */	lis r4, lbl_8164848D@ha
/* 8138C8AC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8138C8B0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138C8B4 | 38 84 84 8D */	addi r4, r4, lbl_8164848D@l
/* 8138C8B8 | 4B FD EB B5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138C8BC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138C8C0 | 7F C3 F3 78 */	mr r3, r30
/* 8138C8C4 | 38 80 00 01 */	li r4, 0x1
/* 8138C8C8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8138C8CC | 7D 89 03 A6 */	mtctr r12
/* 8138C8D0 | 4E 80 04 21 */	bctrl
.L_8138C8D4:
/* 8138C8D4 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138C8D8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8138C8DC | 90 1C 00 90 */	stw r0, 0x90(r28)
/* 8138C8E0 | 48 00 00 BC */	b .L_8138C99C
.L_8138C8E4:
/* 8138C8E4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8138C8E8 | 41 82 00 08 */	beq .L_8138C8F0
/* 8138C8EC | 48 00 00 B0 */	b .L_8138C99C
.L_8138C8F0:
/* 8138C8F0 | 54 60 10 3A */	slwi r0, r3, 2
/* 8138C8F4 | 7F FD 02 14 */	add r31, r29, r0
/* 8138C8F8 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 8138C8FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C900 | 40 82 00 90 */	bne .L_8138C990
/* 8138C904 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138C908 | 7F 84 E3 78 */	mr r4, r28
/* 8138C90C | 38 A0 00 01 */	li r5, 0x1
/* 8138C910 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138C914 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138C918 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138C91C | 7D 89 03 A6 */	mtctr r12
/* 8138C920 | 4E 80 04 21 */	bctrl
/* 8138C924 | C0 22 83 F8 */	lfs f1, lbl_816947F8@sda21(r0)
/* 8138C928 | 7C 7E 1B 78 */	mr r30, r3
/* 8138C92C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138C930 | FC 40 08 90 */	fmr f2, f1
/* 8138C934 | FC 60 08 90 */	fmr f3, f1
/* 8138C938 | 4B FD 61 25 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8138C93C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138C940 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8138C944 | 7C 85 23 78 */	mr r5, r4
/* 8138C948 | 48 1B 4B 75 */	bl fn_815414BC
/* 8138C94C | C0 22 84 00 */	lfs f1, lbl_81694800@sda21(r0)
/* 8138C950 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138C954 | C0 02 84 04 */	lfs f0, lbl_81694804@sda21(r0)
/* 8138C958 | 38 A0 00 00 */	li r5, 0x0
/* 8138C95C | C0 62 83 FC */	lfs f3, lbl_816947FC@sda21(r0)
/* 8138C960 | 38 C0 00 01 */	li r6, 0x1
/* 8138C964 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8138C968 | C0 41 00 08 */	lfs f2, 0x8(r1)
/* 8138C96C | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8138C970 | EC 42 18 2A */	fadds f2, f2, f3
/* 8138C974 | EC 00 08 2A */	fadds f0, f0, f1
/* 8138C978 | D0 41 00 08 */	stfs f2, 0x8(r1)
/* 8138C97C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8138C980 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138C984 | 48 04 4E 49 */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 8138C988 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138C98C | 48 04 4D 8D */	bl fadein__Q33ipl5scene11TextBalloonFv
.L_8138C990:
/* 8138C990 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8138C994 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8138C998 | 90 1F 00 90 */	stw r0, 0x90(r31)
.L_8138C99C:
/* 8138C99C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138C9A0 | 48 26 CB 71 */	bl _restgpr_28
/* 8138C9A4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8138C9A8 | 7C 08 03 A6 */	mtlr r0
/* 8138C9AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138C9B0 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene11AddressEditFPCcPQ33ipl10controller9Interface

# .text:0x4938 | 0x8138C9B4 | size: 0x180
# ipl::scene::AddressEdit::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene11AddressEditFPCc, global
/* 8138C9B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138C9B8 | 7C 08 02 A6 */	mflr r0
/* 8138C9BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138C9C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138C9C4 | 48 26 CB 05 */	bl _savegpr_29
/* 8138C9C8 | 7C 7E 1B 78 */	mr r30, r3
/* 8138C9CC | 48 00 0A 45 */	bl get_button_no__Q33ipl5scene11AddressEditFPCc
/* 8138C9D0 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138C9D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8138C9D8 | 2C 00 00 22 */	cmpwi r0, 0x22
/* 8138C9DC | 41 82 01 0C */	beq .L_8138CAE8
/* 8138C9E0 | 40 80 01 3C */	bge .L_8138CB1C
/* 8138C9E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138C9E8 | 41 82 00 08 */	beq .L_8138C9F0
/* 8138C9EC | 48 00 01 30 */	b .L_8138CB1C
.L_8138C9F0:
/* 8138C9F0 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8138C9F4 | 41 82 00 88 */	beq .L_8138CA7C
/* 8138C9F8 | 40 80 01 24 */	bge .L_8138CB1C
/* 8138C9FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CA00 | 41 82 00 10 */	beq .L_8138CA10
/* 8138CA04 | 40 80 00 94 */	bge .L_8138CA98
/* 8138CA08 | 48 00 01 14 */	b .L_8138CB1C
/* 8138CA0C | 48 00 01 10 */	b .L_8138CB1C
.L_8138CA10:
/* 8138CA10 | 80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 8138CA14 | 80 9E 04 EC */	lwz r4, 0x4ec(r30)
/* 8138CA18 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 8138CA1C | 7C 84 02 14 */	add r4, r4, r0
/* 8138CA20 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8138CA24 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8138CA28 | 40 82 00 F4 */	bne .L_8138CB1C
/* 8138CA2C | 54 60 10 3A */	slwi r0, r3, 2
/* 8138CA30 | 7F BE 02 14 */	add r29, r30, r0
/* 8138CA34 | 80 1D 00 90 */	lwz r0, 0x90(r29)
/* 8138CA38 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138CA3C | 40 82 00 28 */	bne .L_8138CA64
/* 8138CA40 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138CA44 | 38 1F 00 0B */	addi r0, r31, 0xb
/* 8138CA48 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138CA4C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138CA50 | 48 18 58 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138CA54 | 7C 7E 1B 78 */	mr r30, r3
/* 8138CA58 | 4B FD 5E 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138CA5C | 38 00 00 01 */	li r0, 0x1
/* 8138CA60 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_8138CA64:
/* 8138CA64 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138CA68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CA6C | 40 81 00 B0 */	ble .L_8138CB1C
/* 8138CA70 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8138CA74 | 90 1D 00 90 */	stw r0, 0x90(r29)
/* 8138CA78 | 48 00 00 A4 */	b .L_8138CB1C
.L_8138CA7C:
/* 8138CA7C | 54 60 10 3A */	slwi r0, r3, 2
/* 8138CA80 | 7C 7E 02 14 */	add r3, r30, r0
/* 8138CA84 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 8138CA88 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138CA8C | 40 82 00 0C */	bne .L_8138CA98
/* 8138CA90 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138CA94 | 48 04 4F 19 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_8138CA98:
/* 8138CA98 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8138CA9C | 7F BE 02 14 */	add r29, r30, r0
/* 8138CAA0 | 80 1D 00 90 */	lwz r0, 0x90(r29)
/* 8138CAA4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138CAA8 | 40 82 00 28 */	bne .L_8138CAD0
/* 8138CAAC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138CAB0 | 38 1F 00 0B */	addi r0, r31, 0xb
/* 8138CAB4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138CAB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138CABC | 48 18 58 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138CAC0 | 7C 7E 1B 78 */	mr r30, r3
/* 8138CAC4 | 4B FD 5D AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138CAC8 | 38 00 00 01 */	li r0, 0x1
/* 8138CACC | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_8138CAD0:
/* 8138CAD0 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8138CAD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CAD8 | 40 81 00 44 */	ble .L_8138CB1C
/* 8138CADC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8138CAE0 | 90 1D 00 90 */	stw r0, 0x90(r29)
/* 8138CAE4 | 48 00 00 38 */	b .L_8138CB1C
.L_8138CAE8:
/* 8138CAE8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8138CAEC | 41 82 00 08 */	beq .L_8138CAF4
/* 8138CAF0 | 48 00 00 2C */	b .L_8138CB1C
.L_8138CAF4:
/* 8138CAF4 | 54 60 10 3A */	slwi r0, r3, 2
/* 8138CAF8 | 7F FE 02 14 */	add r31, r30, r0
/* 8138CAFC | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 8138CB00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138CB04 | 40 82 00 0C */	bne .L_8138CB10
/* 8138CB08 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138CB0C | 48 04 4E A1 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_8138CB10:
/* 8138CB10 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8138CB14 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8138CB18 | 90 1F 00 90 */	stw r0, 0x90(r31)
.L_8138CB1C:
/* 8138CB1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138CB20 | 48 26 C9 F5 */	bl _restgpr_29
/* 8138CB24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138CB28 | 7C 08 03 A6 */	mtlr r0
/* 8138CB2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138CB30 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene11AddressEditFPCc

# .text:0x4AB8 | 0x8138CB34 | size: 0x1C0
# ipl::scene::AddressEdit::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene11AddressEditFPCc, global
/* 8138CB34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138CB38 | 7C 08 02 A6 */	mflr r0
/* 8138CB3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138CB40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138CB44 | 48 26 C9 81 */	bl _savegpr_28
/* 8138CB48 | 7C 7E 1B 78 */	mr r30, r3
/* 8138CB4C | 48 00 08 C5 */	bl get_button_no__Q33ipl5scene11AddressEditFPCc
/* 8138CB50 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138CB54 | 7C 7F 1B 78 */	mr r31, r3
/* 8138CB58 | 2C 00 00 22 */	cmpwi r0, 0x22
/* 8138CB5C | 41 82 01 0C */	beq .L_8138CC68
/* 8138CB60 | 40 80 01 7C */	bge .L_8138CCDC
/* 8138CB64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138CB68 | 41 82 00 08 */	beq .L_8138CB70
/* 8138CB6C | 48 00 01 70 */	b .L_8138CCDC
.L_8138CB70:
/* 8138CB70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CB74 | 41 82 00 14 */	beq .L_8138CB88
/* 8138CB78 | 41 80 01 64 */	blt .L_8138CCDC
/* 8138CB7C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8138CB80 | 40 80 01 5C */	bge .L_8138CCDC
/* 8138CB84 | 48 00 00 A0 */	b .L_8138CC24
.L_8138CB88:
/* 8138CB88 | 80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 8138CB8C | 80 7E 04 EC */	lwz r3, 0x4ec(r30)
/* 8138CB90 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 8138CB94 | 7C 63 02 14 */	add r3, r3, r0
/* 8138CB98 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8138CB9C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8138CBA0 | 40 82 00 50 */	bne .L_8138CBF0
/* 8138CBA4 | 7F C3 F3 78 */	mr r3, r30
/* 8138CBA8 | 48 00 08 DD */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138CBAC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138CBB0 | 38 1F 00 06 */	addi r0, r31, 0x6
/* 8138CBB4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138CBB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138CBBC | 48 18 57 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138CBC0 | 7C 7C 1B 78 */	mr r28, r3
/* 8138CBC4 | 4B FD 5C AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138CBC8 | 3B A0 00 01 */	li r29, 0x1
/* 8138CBCC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138CBD0 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138CBD4 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138CBD8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138CBDC | 93 FE 00 88 */	stw r31, 0x88(r30)
/* 8138CBE0 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138CBE4 | 4B FD E8 89 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138CBE8 | 93 BE 00 64 */	stw r29, 0x64(r30)
/* 8138CBEC | 48 00 00 F0 */	b .L_8138CCDC
.L_8138CBF0:
/* 8138CBF0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138CBF4 | 38 80 00 57 */	li r4, 0x57
/* 8138CBF8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138CBFC | 38 A0 00 2E */	li r5, 0x2e
/* 8138CC00 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8138CC04 | 4B FB 9A F5 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138CC08 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138CC0C | 48 04 4D A1 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8138CC10 | 7F C3 F3 78 */	mr r3, r30
/* 8138CC14 | 48 00 08 71 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138CC18 | 38 00 00 2F */	li r0, 0x2f
/* 8138CC1C | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 8138CC20 | 48 00 00 BC */	b .L_8138CCDC
.L_8138CC24:
/* 8138CC24 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138CC28 | 38 1F 00 06 */	addi r0, r31, 0x6
/* 8138CC2C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138CC30 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138CC34 | 48 18 56 E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138CC38 | 7C 7C 1B 78 */	mr r28, r3
/* 8138CC3C | 4B FD 5C 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138CC40 | 3B A0 00 01 */	li r29, 0x1
/* 8138CC44 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138CC48 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138CC4C | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138CC50 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138CC54 | 93 FE 00 88 */	stw r31, 0x88(r30)
/* 8138CC58 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138CC5C | 4B FD E8 11 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138CC60 | 93 BE 00 64 */	stw r29, 0x64(r30)
/* 8138CC64 | 48 00 00 78 */	b .L_8138CCDC
.L_8138CC68:
/* 8138CC68 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8138CC6C | 41 82 00 08 */	beq .L_8138CC74
/* 8138CC70 | 48 00 00 6C */	b .L_8138CCDC
.L_8138CC74:
/* 8138CC74 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138CC78 | 48 04 4D 35 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8138CC7C | 38 00 00 05 */	li r0, 0x5
/* 8138CC80 | 38 A0 00 00 */	li r5, 0x0
/* 8138CC84 | 38 60 00 00 */	li r3, 0x0
/* 8138CC88 | 7C 09 03 A6 */	mtctr r0
.L_8138CC8C:
/* 8138CC8C | 7C 9E 1A 14 */	add r4, r30, r3
/* 8138CC90 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8138CC94 | 90 A4 00 90 */	stw r5, 0x90(r4)
/* 8138CC98 | 42 00 FF F4 */	bdnz .L_8138CC8C
/* 8138CC9C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8138CCA0 | 38 80 00 0A */	li r4, 0xa
/* 8138CCA4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138CCA8 | 48 18 56 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138CCAC | 7C 7C 1B 78 */	mr r28, r3
/* 8138CCB0 | 4B FD 5B C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138CCB4 | 38 00 00 01 */	li r0, 0x1
/* 8138CCB8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138CCBC | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 8138CCC0 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138CCC4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138CCC8 | 93 FE 00 88 */	stw r31, 0x88(r30)
/* 8138CCCC | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138CCD0 | 4B FD E7 9D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138CCD4 | 38 00 00 24 */	li r0, 0x24
/* 8138CCD8 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8138CCDC:
/* 8138CCDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138CCE0 | 48 26 C8 31 */	bl _restgpr_28
/* 8138CCE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138CCE8 | 7C 08 03 A6 */	mtlr r0
/* 8138CCEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138CCF0 | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene11AddressEditFPCc

# .text:0x4C78 | 0x8138CCF4 | size: 0x4A4
# ipl::scene::AddressEdit::start_ipt_trig_event(const char*, int)
.fn start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, global
/* 8138CCF4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138CCF8 | 7C 08 02 A6 */	mflr r0
/* 8138CCFC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138CD00 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138CD04 | 48 26 C7 B9 */	bl _savegpr_26
/* 8138CD08 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 8138CD0C | 7C 9A 23 78 */	mr r26, r4
/* 8138CD10 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 8138CD14 | 7C 7D 1B 78 */	mr r29, r3
/* 8138CD18 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8138CD1C | 7C BE 2B 78 */	mr r30, r5
/* 8138CD20 | 38 80 00 05 */	li r4, 0x5
/* 8138CD24 | 48 07 E4 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138CD28 | 7C 7F 1B 78 */	mr r31, r3
/* 8138CD2C | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 8138CD30 | 4B FA AB 65 */	bl getYoungController__Q33ipl10controller7ManagerFv
/* 8138CD34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CD38 | 41 82 04 48 */	beq .L_8138D180
/* 8138CD3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138CD40 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138CD44 | 7D 89 03 A6 */	mtctr r12
/* 8138CD48 | 4E 80 04 21 */	bctrl
/* 8138CD4C | 7C 1E 18 00 */	cmpw r30, r3
/* 8138CD50 | 40 82 04 30 */	bne .L_8138D180
/* 8138CD54 | 80 6D 85 A0 */	lwz r3, lbl_816965E0@sda21(r0)
/* 8138CD58 | 7F 44 D3 78 */	mr r4, r26
/* 8138CD5C | 48 27 57 25 */	bl strcmp
/* 8138CD60 | 7C 60 00 34 */	cntlzw r0, r3
/* 8138CD64 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 8138CD68 | 41 82 04 18 */	beq .L_8138D180
/* 8138CD6C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8138CD70 | 38 03 FF F3 */	subi r0, r3, 0xd
/* 8138CD74 | 28 00 00 10 */	cmplwi r0, 0x10
/* 8138CD78 | 41 81 04 08 */	bgt .L_8138D180
/* 8138CD7C | 3C 60 81 65 */	lis r3, jumptable_816484B4@ha
/* 8138CD80 | 54 00 10 3A */	slwi r0, r0, 2
/* 8138CD84 | 38 63 84 B4 */	addi r3, r3, jumptable_816484B4@l
/* 8138CD88 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8138CD8C | 7C 69 03 A6 */	mtctr r3
/* 8138CD90 | 4E 80 04 20 */	bctr
.L_8138CD94:
/* 8138CD94 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8138CD98 | 38 BD 02 B4 */	addi r5, r29, 0x2b4
/* 8138CD9C | 38 80 00 0B */	li r4, 0xb
/* 8138CDA0 | 38 C0 00 0A */	li r6, 0xa
/* 8138CDA4 | 38 E0 00 01 */	li r7, 0x1
/* 8138CDA8 | 48 00 03 F1 */	bl __ct__Q43ipl8keyboard7Manager15KeyboardSettingFQ43ipl8keyboard7Manager12KeyboardTypePCwUlUl
/* 8138CDAC | 4B FA 8C E1 */	bl getRegion__Q23ipl6SystemFv
/* 8138CDB0 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8138CDB4 | 41 82 00 14 */	beq .L_8138CDC8
/* 8138CDB8 | 40 80 00 88 */	bge .L_8138CE40
/* 8138CDBC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8138CDC0 | 41 82 00 68 */	beq .L_8138CE28
/* 8138CDC4 | 48 00 00 7C */	b .L_8138CE40
.L_8138CDC8:
/* 8138CDC8 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138CDCC | 4B FC 96 6D */	bl getZiSystemDic__Q33ipl8keyboard7ManagerFv
/* 8138CDD0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138CDD4 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138CDD8 | 4B FC 96 6D */	bl getZiOemDic__Q33ipl8keyboard7ManagerFv
/* 8138CDDC | 80 9C 00 90 */	lwz r4, 0x90(r28)
/* 8138CDE0 | 7C 7A 1B 78 */	mr r26, r3
/* 8138CDE4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8138CDE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138CDEC | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8138CDF0 | 7D 89 03 A6 */	mtctr r12
/* 8138CDF4 | 4E 80 04 21 */	bctrl
/* 8138CDF8 | 7C 7C 1B 78 */	mr r28, r3
/* 8138CDFC | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 8138CE00 | 7F 64 DB 78 */	mr r4, r27
/* 8138CE04 | 7F 45 D3 78 */	mr r5, r26
/* 8138CE08 | 48 0A 70 C9 */	bl openDictionary__Q39textinput8tistring6WithZiFPvPv
/* 8138CE0C | 7F 83 E3 78 */	mr r3, r28
/* 8138CE10 | 48 09 43 65 */	bl initZiString__Q39textinput9inputform4BaseFv
/* 8138CE14 | 7F 83 E3 78 */	mr r3, r28
/* 8138CE18 | 48 09 7C D5 */	bl resetContextPredict___Q39textinput9inputform4BaseFv
/* 8138CE1C | 38 00 00 0D */	li r0, 0xd
/* 8138CE20 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 8138CE24 | 48 00 00 1C */	b .L_8138CE40
.L_8138CE28:
/* 8138CE28 | 38 00 00 0D */	li r0, 0xd
/* 8138CE2C | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138CE30 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 8138CE34 | 38 80 00 01 */	li r4, 0x1
/* 8138CE38 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138CE3C | 48 0A C2 6D */	bl enableKSXFilter__Q29textinput7ManagerFb
.L_8138CE40:
/* 8138CE40 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138CE44 | 7F C4 F3 78 */	mr r4, r30
/* 8138CE48 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138CE4C | 38 A1 00 38 */	addi r5, r1, 0x38
/* 8138CE50 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8138CE54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138CE58 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138CE5C | 7D 89 03 A6 */	mtctr r12
/* 8138CE60 | 4E 80 04 21 */	bctrl
/* 8138CE64 | 7F A3 EB 78 */	mr r3, r29
/* 8138CE68 | 38 9D 02 B4 */	addi r4, r29, 0x2b4
/* 8138CE6C | 38 A0 00 00 */	li r5, 0x0
/* 8138CE70 | 48 00 0B 69 */	bl setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb
/* 8138CE74 | 88 1D 04 D1 */	lbz r0, 0x4d1(r29)
/* 8138CE78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138CE7C | 41 82 00 14 */	beq .L_8138CE90
/* 8138CE80 | 7F E3 FB 78 */	mr r3, r31
/* 8138CE84 | 38 80 00 10 */	li r4, 0x10
/* 8138CE88 | 48 01 05 A1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138CE8C | 48 00 00 10 */	b .L_8138CE9C
.L_8138CE90:
/* 8138CE90 | 7F E3 FB 78 */	mr r3, r31
/* 8138CE94 | 38 80 00 0C */	li r4, 0xc
/* 8138CE98 | 48 01 05 91 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_8138CE9C:
/* 8138CE9C | 7F E3 FB 78 */	mr r3, r31
/* 8138CEA0 | 38 80 00 01 */	li r4, 0x1
/* 8138CEA4 | 38 A0 00 2E */	li r5, 0x2e
/* 8138CEA8 | 48 01 05 B5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138CEAC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138CEB0 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138CEB4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138CEB8 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138CEBC | 4B FD E5 B1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138CEC0 | 38 00 00 0E */	li r0, 0xe
/* 8138CEC4 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138CEC8 | 48 00 02 B8 */	b .L_8138D180
.L_8138CECC:
/* 8138CECC | 80 1D 00 84 */	lwz r0, 0x84(r29)
/* 8138CED0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138CED4 | 40 82 00 3C */	bne .L_8138CF10
/* 8138CED8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8138CEDC | 38 BD 00 B0 */	addi r5, r29, 0xb0
/* 8138CEE0 | 38 80 00 0C */	li r4, 0xc
/* 8138CEE4 | 38 C0 00 10 */	li r6, 0x10
/* 8138CEE8 | 38 E0 00 02 */	li r7, 0x2
/* 8138CEEC | 48 00 02 AD */	bl __ct__Q43ipl8keyboard7Manager15KeyboardSettingFQ43ipl8keyboard7Manager12KeyboardTypePCwUlUl
/* 8138CEF0 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138CEF4 | 7F C4 F3 78 */	mr r4, r30
/* 8138CEF8 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 8138CEFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138CF00 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138CF04 | 7D 89 03 A6 */	mtctr r12
/* 8138CF08 | 4E 80 04 21 */	bctrl
/* 8138CF0C | 48 00 00 48 */	b .L_8138CF54
.L_8138CF10:
/* 8138CF10 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8138CF14 | 38 BD 00 B0 */	addi r5, r29, 0xb0
/* 8138CF18 | 38 80 00 07 */	li r4, 0x7
/* 8138CF1C | 38 C0 00 63 */	li r6, 0x63
/* 8138CF20 | 38 E0 00 05 */	li r7, 0x5
/* 8138CF24 | 48 00 02 75 */	bl __ct__Q43ipl8keyboard7Manager15KeyboardSettingFQ43ipl8keyboard7Manager12KeyboardTypePCwUlUl
/* 8138CF28 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138CF2C | 7F C4 F3 78 */	mr r4, r30
/* 8138CF30 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8138CF34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138CF38 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138CF3C | 7D 89 03 A6 */	mtctr r12
/* 8138CF40 | 4E 80 04 21 */	bctrl
/* 8138CF44 | 7F A3 EB 78 */	mr r3, r29
/* 8138CF48 | 38 9D 00 B0 */	addi r4, r29, 0xb0
/* 8138CF4C | 38 A0 00 00 */	li r5, 0x0
/* 8138CF50 | 48 00 0A 89 */	bl setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb
.L_8138CF54:
/* 8138CF54 | 88 1D 04 D0 */	lbz r0, 0x4d0(r29)
/* 8138CF58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138CF5C | 41 82 00 34 */	beq .L_8138CF90
/* 8138CF60 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8138CF64 | 48 00 16 BD */	bl isDupCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138CF68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CF6C | 40 82 00 24 */	bne .L_8138CF90
/* 8138CF70 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8138CF74 | 48 00 17 31 */	bl isMyCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138CF78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138CF7C | 40 82 00 14 */	bne .L_8138CF90
/* 8138CF80 | 7F E3 FB 78 */	mr r3, r31
/* 8138CF84 | 38 80 00 10 */	li r4, 0x10
/* 8138CF88 | 48 01 04 A1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138CF8C | 48 00 00 10 */	b .L_8138CF9C
.L_8138CF90:
/* 8138CF90 | 7F E3 FB 78 */	mr r3, r31
/* 8138CF94 | 38 80 00 0C */	li r4, 0xc
/* 8138CF98 | 48 01 04 91 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_8138CF9C:
/* 8138CF9C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138CFA0 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138CFA4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138CFA8 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138CFAC | 4B FD E4 C1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138CFB0 | 38 00 00 12 */	li r0, 0x12
/* 8138CFB4 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138CFB8 | 48 00 01 C8 */	b .L_8138D180
.L_8138CFBC:
/* 8138CFBC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138CFC0 | 38 BD 02 B4 */	addi r5, r29, 0x2b4
/* 8138CFC4 | 38 80 00 0B */	li r4, 0xb
/* 8138CFC8 | 38 C0 00 0A */	li r6, 0xa
/* 8138CFCC | 38 E0 00 01 */	li r7, 0x1
/* 8138CFD0 | 48 00 01 C9 */	bl __ct__Q43ipl8keyboard7Manager15KeyboardSettingFQ43ipl8keyboard7Manager12KeyboardTypePCwUlUl
/* 8138CFD4 | 4B FA 8A B9 */	bl getRegion__Q23ipl6SystemFv
/* 8138CFD8 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8138CFDC | 41 82 00 14 */	beq .L_8138CFF0
/* 8138CFE0 | 40 80 00 88 */	bge .L_8138D068
/* 8138CFE4 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8138CFE8 | 41 82 00 68 */	beq .L_8138D050
/* 8138CFEC | 48 00 00 7C */	b .L_8138D068
.L_8138CFF0:
/* 8138CFF0 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138CFF4 | 4B FC 94 45 */	bl getZiSystemDic__Q33ipl8keyboard7ManagerFv
/* 8138CFF8 | 7C 7A 1B 78 */	mr r26, r3
/* 8138CFFC | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138D000 | 4B FC 94 45 */	bl getZiOemDic__Q33ipl8keyboard7ManagerFv
/* 8138D004 | 80 9C 00 90 */	lwz r4, 0x90(r28)
/* 8138D008 | 7C 7B 1B 78 */	mr r27, r3
/* 8138D00C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8138D010 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D014 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8138D018 | 7D 89 03 A6 */	mtctr r12
/* 8138D01C | 4E 80 04 21 */	bctrl
/* 8138D020 | 7C 7C 1B 78 */	mr r28, r3
/* 8138D024 | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 8138D028 | 7F 44 D3 78 */	mr r4, r26
/* 8138D02C | 7F 65 DB 78 */	mr r5, r27
/* 8138D030 | 48 0A 6E A1 */	bl openDictionary__Q39textinput8tistring6WithZiFPvPv
/* 8138D034 | 7F 83 E3 78 */	mr r3, r28
/* 8138D038 | 48 09 41 3D */	bl initZiString__Q39textinput9inputform4BaseFv
/* 8138D03C | 7F 83 E3 78 */	mr r3, r28
/* 8138D040 | 48 09 7A AD */	bl resetContextPredict___Q39textinput9inputform4BaseFv
/* 8138D044 | 38 00 00 0D */	li r0, 0xd
/* 8138D048 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8138D04C | 48 00 00 1C */	b .L_8138D068
.L_8138D050:
/* 8138D050 | 38 00 00 0D */	li r0, 0xd
/* 8138D054 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 8138D058 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8138D05C | 38 80 00 01 */	li r4, 0x1
/* 8138D060 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138D064 | 48 0A C0 45 */	bl enableKSXFilter__Q29textinput7ManagerFb
.L_8138D068:
/* 8138D068 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138D06C | 7F C4 F3 78 */	mr r4, r30
/* 8138D070 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138D074 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8138D078 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8138D07C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D080 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138D084 | 7D 89 03 A6 */	mtctr r12
/* 8138D088 | 4E 80 04 21 */	bctrl
/* 8138D08C | 7F A3 EB 78 */	mr r3, r29
/* 8138D090 | 38 9D 02 B4 */	addi r4, r29, 0x2b4
/* 8138D094 | 38 A0 00 00 */	li r5, 0x0
/* 8138D098 | 48 00 09 41 */	bl setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb
/* 8138D09C | 88 1D 04 D1 */	lbz r0, 0x4d1(r29)
/* 8138D0A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138D0A4 | 41 82 00 14 */	beq .L_8138D0B8
/* 8138D0A8 | 7F E3 FB 78 */	mr r3, r31
/* 8138D0AC | 38 80 00 10 */	li r4, 0x10
/* 8138D0B0 | 48 01 03 79 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138D0B4 | 48 00 00 10 */	b .L_8138D0C4
.L_8138D0B8:
/* 8138D0B8 | 7F E3 FB 78 */	mr r3, r31
/* 8138D0BC | 38 80 00 0C */	li r4, 0xc
/* 8138D0C0 | 48 01 03 69 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_8138D0C4:
/* 8138D0C4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138D0C8 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138D0CC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138D0D0 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138D0D4 | 4B FD E3 99 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138D0D8 | 38 00 00 1A */	li r0, 0x1a
/* 8138D0DC | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138D0E0 | 48 00 00 A0 */	b .L_8138D180
.L_8138D0E4:
/* 8138D0E4 | 80 1D 04 E8 */	lwz r0, 0x4e8(r29)
/* 8138D0E8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138D0EC | 41 82 00 94 */	beq .L_8138D180
/* 8138D0F0 | 38 00 00 00 */	li r0, 0x0
/* 8138D0F4 | 90 1D 04 E8 */	stw r0, 0x4e8(r29)
/* 8138D0F8 | 48 15 8E 41 */	bl RFLGetAvailableOfficialDataNum
/* 8138D0FC | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 8138D100 | 41 82 00 54 */	beq .L_8138D154
/* 8138D104 | 7F A3 EB 78 */	mr r3, r29
/* 8138D108 | 7F A5 EB 78 */	mr r5, r29
/* 8138D10C | 38 80 00 1C */	li r4, 0x1c
/* 8138D110 | 38 C0 00 00 */	li r6, 0x0
/* 8138D114 | 38 E0 00 02 */	li r7, 0x2
/* 8138D118 | 48 07 CD 71 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 8138D11C | 7F E3 FB 78 */	mr r3, r31
/* 8138D120 | 38 80 00 10 */	li r4, 0x10
/* 8138D124 | 48 01 03 05 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138D128 | 7F E3 FB 78 */	mr r3, r31
/* 8138D12C | 38 80 00 0B */	li r4, 0xb
/* 8138D130 | 48 01 02 F9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138D134 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138D138 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138D13C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138D140 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138D144 | 4B FD E3 29 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138D148 | 38 00 00 1E */	li r0, 0x1e
/* 8138D14C | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138D150 | 48 00 00 30 */	b .L_8138D180
.L_8138D154:
/* 8138D154 | 80 7C 00 AC */	lwz r3, 0xac(r28)
/* 8138D158 | 38 80 01 7C */	li r4, 0x17c
/* 8138D15C | 38 A0 00 2E */	li r5, 0x2e
/* 8138D160 | 4B FB 95 99 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8138D164 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138D168 | 3C 80 81 65 */	lis r4, lbl_816484A3@ha
/* 8138D16C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138D170 | 38 84 84 A3 */	addi r4, r4, lbl_816484A3@l
/* 8138D174 | 4B FD E2 F9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138D178 | 38 00 00 1F */	li r0, 0x1f
/* 8138D17C | 90 1D 00 64 */	stw r0, 0x64(r29)
.L_8138D180:
/* 8138D180 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138D184 | 48 26 C3 85 */	bl _restgpr_26
/* 8138D188 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138D18C | 7C 08 03 A6 */	mtlr r0
/* 8138D190 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138D194 | 4E 80 00 20 */	blr
.endfn start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci

# .text:0x511C | 0x8138D198 | size: 0x14
# ipl::keyboard::Manager::KeyboardSetting::KeyboardSetting(ipl::keyboard::Manager::KeyboardType, const wchar_t*, unsigned long, unsigned long)
.fn __ct__Q43ipl8keyboard7Manager15KeyboardSettingFQ43ipl8keyboard7Manager12KeyboardTypePCwUlUl, global
/* 8138D198 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8138D19C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8138D1A0 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8138D1A4 | 90 E3 00 0C */	stw r7, 0xc(r3)
/* 8138D1A8 | 4E 80 00 20 */	blr
.endfn __ct__Q43ipl8keyboard7Manager15KeyboardSettingFQ43ipl8keyboard7Manager12KeyboardTypePCwUlUl

# .text:0x5130 | 0x8138D1AC | size: 0x8
# textinput::Manager::getInputForm()
.fn getInputForm__Q29textinput7ManagerFv, global
/* 8138D1AC | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8138D1B0 | 4E 80 00 20 */	blr
.endfn getInputForm__Q29textinput7ManagerFv

# .text:0x5138 | 0x8138D1B4 | size: 0x164
# ipl::scene::AddressEdit::start_ipt_point_event(const char*, int)
.fn start_ipt_point_event__Q33ipl5scene11AddressEditFPCci, global
/* 8138D1B4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8138D1B8 | 7C 08 02 A6 */	mflr r0
/* 8138D1BC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8138D1C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8138D1C4 | 48 26 C2 F9 */	bl _savegpr_26
/* 8138D1C8 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8138D1CC | 7C 7E 1B 78 */	mr r30, r3
/* 8138D1D0 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8138D1D4 | 7C 9F 23 78 */	mr r31, r4
/* 8138D1D8 | 80 66 00 68 */	lwz r3, 0x68(r6)
/* 8138D1DC | 7C BA 2B 78 */	mr r26, r5
/* 8138D1E0 | 4B FA A6 B5 */	bl getYoungController__Q33ipl10controller7ManagerFv
/* 8138D1E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138D1E8 | 41 82 01 18 */	beq .L_8138D300
/* 8138D1EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D1F0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138D1F4 | 7D 89 03 A6 */	mtctr r12
/* 8138D1F8 | 4E 80 04 21 */	bctrl
/* 8138D1FC | 7C 1A 18 00 */	cmpw r26, r3
/* 8138D200 | 40 82 01 00 */	bne .L_8138D300
/* 8138D204 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8138D208 | 2C 00 00 1D */	cmpwi r0, 0x1d
/* 8138D20C | 41 82 00 08 */	beq .L_8138D214
/* 8138D210 | 48 00 00 F0 */	b .L_8138D300
.L_8138D214:
/* 8138D214 | 3F 40 81 61 */	lis r26, lbl_8160F673@ha
/* 8138D218 | 8F 7A F6 73 */	lbzu r27, lbl_8160F673@l(r26)
/* 8138D21C | 7F E4 FB 78 */	mr r4, r31
/* 8138D220 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8138D224 | 8B 9A 00 01 */	lbz r28, 0x1(r26)
/* 8138D228 | 8B BA 00 02 */	lbz r29, 0x2(r26)
/* 8138D22C | 89 9A 00 03 */	lbz r12, 0x3(r26)
/* 8138D230 | 89 7A 00 04 */	lbz r11, 0x4(r26)
/* 8138D234 | 89 5A 00 05 */	lbz r10, 0x5(r26)
/* 8138D238 | 89 3A 00 06 */	lbz r9, 0x6(r26)
/* 8138D23C | 89 1A 00 07 */	lbz r8, 0x7(r26)
/* 8138D240 | 88 FA 00 08 */	lbz r7, 0x8(r26)
/* 8138D244 | 88 DA 00 09 */	lbz r6, 0x9(r26)
/* 8138D248 | 88 BA 00 0A */	lbz r5, 0xa(r26)
/* 8138D24C | 88 1A 00 0B */	lbz r0, 0xb(r26)
/* 8138D250 | 9B 61 00 14 */	stb r27, 0x14(r1)
/* 8138D254 | 9B 81 00 15 */	stb r28, 0x15(r1)
/* 8138D258 | 9B A1 00 16 */	stb r29, 0x16(r1)
/* 8138D25C | 99 81 00 17 */	stb r12, 0x17(r1)
/* 8138D260 | 99 61 00 18 */	stb r11, 0x18(r1)
/* 8138D264 | 99 41 00 19 */	stb r10, 0x19(r1)
/* 8138D268 | 99 21 00 1A */	stb r9, 0x1a(r1)
/* 8138D26C | 99 01 00 1B */	stb r8, 0x1b(r1)
/* 8138D270 | 98 E1 00 1C */	stb r7, 0x1c(r1)
/* 8138D274 | 98 C1 00 1D */	stb r6, 0x1d(r1)
/* 8138D278 | 98 A1 00 1E */	stb r5, 0x1e(r1)
/* 8138D27C | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 8138D280 | 48 27 52 01 */	bl strcmp
/* 8138D284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138D288 | 40 82 00 78 */	bne .L_8138D300
/* 8138D28C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8138D290 | 7F E4 FB 78 */	mr r4, r31
/* 8138D294 | 38 A0 00 01 */	li r5, 0x1
/* 8138D298 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138D29C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D2A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138D2A4 | 7D 89 03 A6 */	mtctr r12
/* 8138D2A8 | 4E 80 04 21 */	bctrl
/* 8138D2AC | C0 22 83 F8 */	lfs f1, lbl_816947F8@sda21(r0)
/* 8138D2B0 | 7C 7F 1B 78 */	mr r31, r3
/* 8138D2B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138D2B8 | FC 40 08 90 */	fmr f2, f1
/* 8138D2BC | FC 60 08 90 */	fmr f3, f1
/* 8138D2C0 | 4B FD 57 9D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8138D2C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138D2C8 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8138D2CC | 7C 85 23 78 */	mr r5, r4
/* 8138D2D0 | 48 1B 41 ED */	bl fn_815414BC
/* 8138D2D4 | C0 22 84 00 */	lfs f1, lbl_81694800@sda21(r0)
/* 8138D2D8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138D2DC | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8138D2E0 | 38 A0 00 00 */	li r5, 0x0
/* 8138D2E4 | 38 C0 00 00 */	li r6, 0x0
/* 8138D2E8 | EC 00 08 2A */	fadds f0, f0, f1
/* 8138D2EC | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8138D2F0 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138D2F4 | 48 04 44 D9 */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 8138D2F8 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 8138D2FC | 48 04 44 1D */	bl fadein__Q33ipl5scene11TextBalloonFv
.L_8138D300:
/* 8138D300 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8138D304 | 48 26 C2 05 */	bl _restgpr_26
/* 8138D308 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8138D30C | 7C 08 03 A6 */	mtlr r0
/* 8138D310 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8138D314 | 4E 80 00 20 */	blr
.endfn start_ipt_point_event__Q33ipl5scene11AddressEditFPCci

# .text:0x529C | 0x8138D318 | size: 0xF8
# ipl::scene::AddressEdit::start_ipt_left_event(const char*, int)
.fn start_ipt_left_event__Q33ipl5scene11AddressEditFPCci, global
/* 8138D318 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138D31C | 7C 08 02 A6 */	mflr r0
/* 8138D320 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8138D324 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138D328 | 48 26 C1 99 */	bl _savegpr_27
/* 8138D32C | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8138D330 | 7C 7F 1B 78 */	mr r31, r3
/* 8138D334 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8138D338 | 7C 9C 23 78 */	mr r28, r4
/* 8138D33C | 80 66 00 68 */	lwz r3, 0x68(r6)
/* 8138D340 | 7C BB 2B 78 */	mr r27, r5
/* 8138D344 | 4B FA A5 51 */	bl getYoungController__Q33ipl10controller7ManagerFv
/* 8138D348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138D34C | 41 82 00 AC */	beq .L_8138D3F8
/* 8138D350 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D354 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138D358 | 7D 89 03 A6 */	mtctr r12
/* 8138D35C | 4E 80 04 21 */	bctrl
/* 8138D360 | 7C 1B 18 00 */	cmpw r27, r3
/* 8138D364 | 40 82 00 94 */	bne .L_8138D3F8
/* 8138D368 | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8138D36C | 2C 00 00 1D */	cmpwi r0, 0x1d
/* 8138D370 | 41 82 00 08 */	beq .L_8138D378
/* 8138D374 | 48 00 00 84 */	b .L_8138D3F8
.L_8138D378:
/* 8138D378 | 3F 60 81 61 */	lis r27, lbl_8160F67F@ha
/* 8138D37C | 7F 84 E3 78 */	mr r4, r28
/* 8138D380 | 8F 9B F6 7F */	lbzu r28, lbl_8160F67F@l(r27)
/* 8138D384 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138D388 | 8B BB 00 01 */	lbz r29, 0x1(r27)
/* 8138D38C | 8B DB 00 02 */	lbz r30, 0x2(r27)
/* 8138D390 | 89 9B 00 03 */	lbz r12, 0x3(r27)
/* 8138D394 | 89 7B 00 04 */	lbz r11, 0x4(r27)
/* 8138D398 | 89 5B 00 05 */	lbz r10, 0x5(r27)
/* 8138D39C | 89 3B 00 06 */	lbz r9, 0x6(r27)
/* 8138D3A0 | 89 1B 00 07 */	lbz r8, 0x7(r27)
/* 8138D3A4 | 88 FB 00 08 */	lbz r7, 0x8(r27)
/* 8138D3A8 | 88 DB 00 09 */	lbz r6, 0x9(r27)
/* 8138D3AC | 88 BB 00 0A */	lbz r5, 0xa(r27)
/* 8138D3B0 | 88 1B 00 0B */	lbz r0, 0xb(r27)
/* 8138D3B4 | 9B 81 00 08 */	stb r28, 0x8(r1)
/* 8138D3B8 | 9B A1 00 09 */	stb r29, 0x9(r1)
/* 8138D3BC | 9B C1 00 0A */	stb r30, 0xa(r1)
/* 8138D3C0 | 99 81 00 0B */	stb r12, 0xb(r1)
/* 8138D3C4 | 99 61 00 0C */	stb r11, 0xc(r1)
/* 8138D3C8 | 99 41 00 0D */	stb r10, 0xd(r1)
/* 8138D3CC | 99 21 00 0E */	stb r9, 0xe(r1)
/* 8138D3D0 | 99 01 00 0F */	stb r8, 0xf(r1)
/* 8138D3D4 | 98 E1 00 10 */	stb r7, 0x10(r1)
/* 8138D3D8 | 98 C1 00 11 */	stb r6, 0x11(r1)
/* 8138D3DC | 98 A1 00 12 */	stb r5, 0x12(r1)
/* 8138D3E0 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 8138D3E4 | 48 27 50 9D */	bl strcmp
/* 8138D3E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138D3EC | 40 82 00 0C */	bne .L_8138D3F8
/* 8138D3F0 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 8138D3F4 | 48 04 45 B9 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_8138D3F8:
/* 8138D3F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138D3FC | 48 26 C1 11 */	bl _restgpr_27
/* 8138D400 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8138D404 | 7C 08 03 A6 */	mtlr r0
/* 8138D408 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138D40C | 4E 80 00 20 */	blr
.endfn start_ipt_left_event__Q33ipl5scene11AddressEditFPCci

# .text:0x5394 | 0x8138D410 | size: 0x74
# ipl::scene::AddressEdit::get_button_no(const char*)
.fn get_button_no__Q33ipl5scene11AddressEditFPCc, global
/* 8138D410 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138D414 | 7C 08 02 A6 */	mflr r0
/* 8138D418 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138D41C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138D420 | 48 26 C0 A1 */	bl _savegpr_27
/* 8138D424 | 3F C0 81 64 */	lis r30, lbl_81647F24@ha
/* 8138D428 | 7C 9B 23 78 */	mr r27, r4
/* 8138D42C | 3B DE 7F 24 */	addi r30, r30, lbl_81647F24@l
/* 8138D430 | 3B A0 FF FF */	li r29, -0x1
/* 8138D434 | 3B 80 00 00 */	li r28, 0x0
/* 8138D438 | 3B E0 00 00 */	li r31, 0x0
.L_8138D43C:
/* 8138D43C | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 8138D440 | 7F 64 DB 78 */	mr r4, r27
/* 8138D444 | 48 27 50 3D */	bl strcmp
/* 8138D448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138D44C | 40 82 00 0C */	bne .L_8138D458
/* 8138D450 | 7F 9D E3 78 */	mr r29, r28
/* 8138D454 | 48 00 00 14 */	b .L_8138D468
.L_8138D458:
/* 8138D458 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8138D45C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8138D460 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 8138D464 | 41 80 FF D8 */	blt .L_8138D43C
.L_8138D468:
/* 8138D468 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138D46C | 7F A3 EB 78 */	mr r3, r29
/* 8138D470 | 48 26 C0 9D */	bl _restgpr_27
/* 8138D474 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138D478 | 7C 08 03 A6 */	mtlr r0
/* 8138D47C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138D480 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene11AddressEditFPCc

# .text:0x5408 | 0x8138D484 | size: 0xAC
# ipl::scene::AddressEdit::reset_gui()
.fn reset_gui__Q33ipl5scene11AddressEditFv, global
/* 8138D484 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138D488 | 7C 08 02 A6 */	mflr r0
/* 8138D48C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8138D490 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138D494 | 48 26 C0 25 */	bl _savegpr_25
/* 8138D498 | 7C 79 1B 78 */	mr r25, r3
/* 8138D49C | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8138D4A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D4A4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138D4A8 | 7D 89 03 A6 */	mtctr r12
/* 8138D4AC | 4E 80 04 21 */	bctrl
/* 8138D4B0 | 80 79 00 7C */	lwz r3, 0x7c(r25)
/* 8138D4B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D4B8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138D4BC | 7D 89 03 A6 */	mtctr r12
/* 8138D4C0 | 4E 80 04 21 */	bctrl
/* 8138D4C4 | 3B 40 00 00 */	li r26, 0x0
/* 8138D4C8 | 3B E0 00 00 */	li r31, 0x0
/* 8138D4CC | 7F 5E D3 78 */	mr r30, r26
/* 8138D4D0 | 3B A0 00 01 */	li r29, 0x1
.L_8138D4D4:
/* 8138D4D4 | 7F 79 FA 14 */	add r27, r25, r31
/* 8138D4D8 | 80 1B 00 90 */	lwz r0, 0x90(r27)
/* 8138D4DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138D4E0 | 40 81 00 28 */	ble .L_8138D508
/* 8138D4E4 | 80 79 00 68 */	lwz r3, 0x68(r25)
/* 8138D4E8 | 38 1A 00 0B */	addi r0, r26, 0xb
/* 8138D4EC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138D4F0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138D4F4 | 48 18 4E 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138D4F8 | 7C 7C 1B 78 */	mr r28, r3
/* 8138D4FC | 4B FD 53 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138D500 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 8138D504 | 93 DB 00 90 */	stw r30, 0x90(r27)
.L_8138D508:
/* 8138D508 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8138D50C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8138D510 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 8138D514 | 41 80 FF C0 */	blt .L_8138D4D4
/* 8138D518 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138D51C | 48 26 BF E9 */	bl _restgpr_25
/* 8138D520 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8138D524 | 7C 08 03 A6 */	mtlr r0
/* 8138D528 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138D52C | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene11AddressEditFv

# .text:0x54B4 | 0x8138D530 | size: 0x150
# ipl::scene::AddressEdit::add_friendinfo()
.fn add_friendinfo__Q33ipl5scene11AddressEditFv, global
/* 8138D530 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8138D534 | 7C 2C 0B 78 */	mr r12, r1
/* 8138D538 | 21 6B FE 80 */	subfic r11, r11, -0x180
/* 8138D53C | 7C 21 59 6E */	stwux r1, r1, r11
/* 8138D540 | 7C 08 02 A6 */	mflr r0
/* 8138D544 | 38 80 00 00 */	li r4, 0x0
/* 8138D548 | 38 A0 01 40 */	li r5, 0x140
/* 8138D54C | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8138D550 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 8138D554 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 8138D558 | 7C 7E 1B 78 */	mr r30, r3
/* 8138D55C | 38 61 00 20 */	addi r3, r1, 0x20
/* 8138D560 | 4B FA 2D D5 */	bl memset
/* 8138D564 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8138D568 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138D56C | 41 82 00 50 */	beq .L_8138D5BC
/* 8138D570 | 40 80 00 84 */	bge .L_8138D5F4
/* 8138D574 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138D578 | 40 80 00 08 */	bge .L_8138D580
/* 8138D57C | 48 00 00 78 */	b .L_8138D5F4
.L_8138D580:
/* 8138D580 | 38 00 00 01 */	li r0, 0x1
/* 8138D584 | 38 9E 02 B4 */	addi r4, r30, 0x2b4
/* 8138D588 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8138D58C | 38 61 00 28 */	addi r3, r1, 0x28
/* 8138D590 | 38 A0 00 0A */	li r5, 0xa
/* 8138D594 | 48 27 B1 51 */	bl fn_816086E4
/* 8138D598 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8138D59C | 48 00 03 11 */	bl utf16_wiiid__Q33ipl5scene11AddressEditFPCw
/* 8138D5A0 | 90 81 00 64 */	stw r4, 0x64(r1)
/* 8138D5A4 | 38 9E 04 E0 */	addi r4, r30, 0x4e0
/* 8138D5A8 | 38 A0 00 08 */	li r5, 0x8
/* 8138D5AC | 90 61 00 60 */	stw r3, 0x60(r1)
/* 8138D5B0 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8138D5B4 | 4B FA 2C 7D */	bl memcpy
/* 8138D5B8 | 48 00 00 3C */	b .L_8138D5F4
.L_8138D5BC:
/* 8138D5BC | 38 00 00 02 */	li r0, 0x2
/* 8138D5C0 | 38 9E 02 B4 */	addi r4, r30, 0x2b4
/* 8138D5C4 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8138D5C8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8138D5CC | 38 A0 00 0A */	li r5, 0xa
/* 8138D5D0 | 48 27 B1 15 */	bl fn_816086E4
/* 8138D5D4 | 38 9E 00 B0 */	addi r4, r30, 0xb0
/* 8138D5D8 | 38 61 00 60 */	addi r3, r1, 0x60
/* 8138D5DC | 38 A0 01 00 */	li r5, 0x100
/* 8138D5E0 | 4B FD 6A 4D */	bl UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl
/* 8138D5E4 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8138D5E8 | 38 9E 04 E0 */	addi r4, r30, 0x4e0
/* 8138D5EC | 38 A0 00 08 */	li r5, 0x8
/* 8138D5F0 | 4B FA 2C 41 */	bl memcpy
.L_8138D5F4:
/* 8138D5F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138D5F8 | 38 80 00 14 */	li r4, 0x14
/* 8138D5FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138D600 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138D604 | 48 07 DB 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138D608 | 83 E3 00 C0 */	lwz r31, 0xc0(r3)
/* 8138D60C | 28 1F 00 64 */	cmplwi r31, 0x64
/* 8138D610 | 41 80 00 2C */	blt .L_8138D63C
/* 8138D614 | 38 00 00 64 */	li r0, 0x64
/* 8138D618 | 3B E0 00 00 */	li r31, 0x0
/* 8138D61C | 7C 09 03 A6 */	mtctr r0
.L_8138D620:
/* 8138D620 | 80 1E 04 EC */	lwz r0, 0x4ec(r30)
/* 8138D624 | 7C 60 FA 14 */	add r3, r0, r31
/* 8138D628 | 88 03 7D 00 */	lbz r0, 0x7d00(r3)
/* 8138D62C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138D630 | 41 82 00 0C */	beq .L_8138D63C
/* 8138D634 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8138D638 | 42 00 FF E8 */	bdnz .L_8138D620
.L_8138D63C:
/* 8138D63C | 80 7E 04 EC */	lwz r3, 0x4ec(r30)
/* 8138D640 | 7F E4 FB 78 */	mr r4, r31
/* 8138D644 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8138D648 | 4B FF 98 11 */	bl add__Q33ipl5scene15FriendListCacheFUlRC15NWC24FriendInfo
/* 8138D64C | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8138D650 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8138D654 | 40 82 00 10 */	bne .L_8138D664
/* 8138D658 | 80 7E 04 EC */	lwz r3, 0x4ec(r30)
/* 8138D65C | 7F E4 FB 78 */	mr r4, r31
/* 8138D660 | 4B FF 9B 51 */	bl sendRegisterMail__Q33ipl5scene15FriendListCacheFUl
.L_8138D664:
/* 8138D664 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8138D668 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8138D66C | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 8138D670 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 8138D674 | 7C 08 03 A6 */	mtlr r0
/* 8138D678 | 7D 41 53 78 */	mr r1, r10
/* 8138D67C | 4E 80 00 20 */	blr
.endfn add_friendinfo__Q33ipl5scene11AddressEditFv

# .text:0x5604 | 0x8138D680 | size: 0x150
# ipl::scene::AddressEdit::get_friendinfo()
.fn get_friendinfo__Q33ipl5scene11AddressEditFv, global
/* 8138D680 | 94 21 FB E0 */	stwu r1, -0x420(r1)
/* 8138D684 | 7C 08 02 A6 */	mflr r0
/* 8138D688 | 90 01 04 24 */	stw r0, 0x424(r1)
/* 8138D68C | 39 61 04 20 */	addi r11, r1, 0x420
/* 8138D690 | 48 26 BE 35 */	bl _savegpr_28
/* 8138D694 | 80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 8138D698 | 3F C0 81 0B */	lis r30, sFriendInfo__Q23ipl5scene@ha
/* 8138D69C | 80 83 04 EC */	lwz r4, 0x4ec(r3)
/* 8138D6A0 | 7C 7C 1B 78 */	mr r28, r3
/* 8138D6A4 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 8138D6A8 | 38 7E 71 C0 */	addi r3, r30, sFriendInfo__Q23ipl5scene@l
/* 8138D6AC | 38 A0 01 40 */	li r5, 0x140
/* 8138D6B0 | 7C 84 02 14 */	add r4, r4, r0
/* 8138D6B4 | 4B FA 2B 7D */	bl memcpy
/* 8138D6B8 | 3B FE 71 C0 */	addi r31, r30, sFriendInfo__Q23ipl5scene@l
/* 8138D6BC | 38 7C 00 B0 */	addi r3, r28, 0xb0
/* 8138D6C0 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8138D6C4 | 48 00 0E D1 */	bl setName__Q43ipl5scene11AddressEdit6StringFPCw
/* 8138D6C8 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 8138D6CC | 3C 80 81 65 */	lis r4, lbl_8164810B@ha
/* 8138D6D0 | 3B BC 02 B4 */	addi r29, r28, 0x2b4
/* 8138D6D4 | 38 A0 00 01 */	li r5, 0x1
/* 8138D6D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138D6DC | 38 84 81 0B */	addi r4, r4, lbl_8164810B@l
/* 8138D6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D6E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138D6E8 | 7D 89 03 A6 */	mtctr r12
/* 8138D6EC | 4E 80 04 21 */	bctrl
/* 8138D6F0 | 7C 64 1B 78 */	mr r4, r3
/* 8138D6F4 | 7F 83 E3 78 */	mr r3, r28
/* 8138D6F8 | 7F A5 EB 78 */	mr r5, r29
/* 8138D6FC | 4B FF ED 6D */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138D700 | 80 1E 71 C0 */	lwz r0, sFriendInfo__Q23ipl5scene@l(r30)
/* 8138D704 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8138D708 | 40 82 00 34 */	bne .L_8138D73C
/* 8138D70C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138D710 | 38 80 00 00 */	li r4, 0x0
/* 8138D714 | 38 A0 02 00 */	li r5, 0x200
/* 8138D718 | 4B FA 2C 1D */	bl memset
/* 8138D71C | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8138D720 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8138D724 | 80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8138D728 | 48 00 02 09 */	bl wiiid_utf16__Q33ipl5scene11AddressEditFUxPw
/* 8138D72C | 38 7C 00 B0 */	addi r3, r28, 0xb0
/* 8138D730 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138D734 | 48 00 0D 3D */	bl setWiiNo__Q43ipl5scene11AddressEdit6StringFPCw
/* 8138D738 | 48 00 00 30 */	b .L_8138D768
.L_8138D73C:
/* 8138D73C | 38 61 02 08 */	addi r3, r1, 0x208
/* 8138D740 | 38 80 00 00 */	li r4, 0x0
/* 8138D744 | 38 A0 02 04 */	li r5, 0x204
/* 8138D748 | 4B FA 2B ED */	bl memset
/* 8138D74C | 38 61 02 08 */	addi r3, r1, 0x208
/* 8138D750 | 38 9F 00 40 */	addi r4, r31, 0x40
/* 8138D754 | 38 A0 01 02 */	li r5, 0x102
/* 8138D758 | 4B FD 68 A5 */	bl ANSIToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl
/* 8138D75C | 38 7C 00 B0 */	addi r3, r28, 0xb0
/* 8138D760 | 38 81 02 08 */	addi r4, r1, 0x208
/* 8138D764 | 48 00 0C 31 */	bl setEMail__Q43ipl5scene11AddressEdit6StringFPCw
.L_8138D768:
/* 8138D768 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 8138D76C | 3C 80 81 64 */	lis r4, lbl_81647FD5@ha
/* 8138D770 | 3B BC 02 CC */	addi r29, r28, 0x2cc
/* 8138D774 | 38 A0 00 01 */	li r5, 0x1
/* 8138D778 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138D77C | 38 84 7F D5 */	addi r4, r4, lbl_81647FD5@l
/* 8138D780 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138D784 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138D788 | 7D 89 03 A6 */	mtctr r12
/* 8138D78C | 4E 80 04 21 */	bctrl
/* 8138D790 | 7C 64 1B 78 */	mr r4, r3
/* 8138D794 | 7F 83 E3 78 */	mr r3, r28
/* 8138D798 | 7F A5 EB 78 */	mr r5, r29
/* 8138D79C | 4B FF EC CD */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138D7A0 | 3C 80 81 0B */	lis r4, sFriendInfo__Q23ipl5scene@ha
/* 8138D7A4 | 38 7C 04 E0 */	addi r3, r28, 0x4e0
/* 8138D7A8 | 38 84 71 C0 */	addi r4, r4, sFriendInfo__Q23ipl5scene@l
/* 8138D7AC | 38 A0 00 08 */	li r5, 0x8
/* 8138D7B0 | 38 84 00 20 */	addi r4, r4, 0x20
/* 8138D7B4 | 4B FA 2A 7D */	bl memcpy
/* 8138D7B8 | 39 61 04 20 */	addi r11, r1, 0x420
/* 8138D7BC | 48 26 BD 55 */	bl _restgpr_28
/* 8138D7C0 | 80 01 04 24 */	lwz r0, 0x424(r1)
/* 8138D7C4 | 7C 08 03 A6 */	mtlr r0
/* 8138D7C8 | 38 21 04 20 */	addi r1, r1, 0x420
/* 8138D7CC | 4E 80 00 20 */	blr
.endfn get_friendinfo__Q33ipl5scene11AddressEditFv

# .text:0x5754 | 0x8138D7D0 | size: 0x44
# ipl::scene::AddressEdit::delete_friendinfo()
.fn delete_friendinfo__Q33ipl5scene11AddressEditFv, global
/* 8138D7D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138D7D4 | 7C 08 02 A6 */	mflr r0
/* 8138D7D8 | 7C 64 1B 78 */	mr r4, r3
/* 8138D7DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138D7E0 | 80 63 04 EC */	lwz r3, 0x4ec(r3)
/* 8138D7E4 | 80 84 00 A4 */	lwz r4, 0xa4(r4)
/* 8138D7E8 | 4B FF 97 9D */	bl del__Q33ipl5scene15FriendListCacheFUl
/* 8138D7EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138D7F0 | 38 80 00 14 */	li r4, 0x14
/* 8138D7F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138D7F8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138D7FC | 48 07 D9 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138D800 | 4B FF 6C A1 */	bl reset_friend__Q33ipl5scene7AddressFv
/* 8138D804 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138D808 | 7C 08 03 A6 */	mtlr r0
/* 8138D80C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138D810 | 4E 80 00 20 */	blr
.endfn delete_friendinfo__Q33ipl5scene11AddressEditFv

# .text:0x5798 | 0x8138D814 | size: 0x98
# ipl::scene::AddressEdit::update_friendinfo()
.fn update_friendinfo__Q33ipl5scene11AddressEditFv, global
/* 8138D814 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138D818 | 7C 08 02 A6 */	mflr r0
/* 8138D81C | 38 80 00 00 */	li r4, 0x0
/* 8138D820 | 38 A0 00 18 */	li r5, 0x18
/* 8138D824 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138D828 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138D82C | 3F E0 81 0B */	lis r31, sFriendInfo__Q23ipl5scene@ha
/* 8138D830 | 3B FF 71 C0 */	addi r31, r31, sFriendInfo__Q23ipl5scene@l
/* 8138D834 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138D838 | 7C 7E 1B 78 */	mr r30, r3
/* 8138D83C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 8138D840 | 4B FA 2A F5 */	bl memset
/* 8138D844 | 38 9E 02 B4 */	addi r4, r30, 0x2b4
/* 8138D848 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 8138D84C | 38 A0 00 0A */	li r5, 0xa
/* 8138D850 | 48 27 AE 95 */	bl fn_816086E4
/* 8138D854 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8138D858 | 38 9E 04 E0 */	addi r4, r30, 0x4e0
/* 8138D85C | 38 A0 00 08 */	li r5, 0x8
/* 8138D860 | 4B FA 29 D1 */	bl memcpy
/* 8138D864 | 80 7E 04 EC */	lwz r3, 0x4ec(r30)
/* 8138D868 | 38 BF 00 08 */	addi r5, r31, 0x8
/* 8138D86C | 80 9E 00 A4 */	lwz r4, 0xa4(r30)
/* 8138D870 | 80 FF 00 20 */	lwz r7, 0x20(r31)
/* 8138D874 | 81 1F 00 24 */	lwz r8, 0x24(r31)
/* 8138D878 | 4B FF 96 6D */	bl update__Q33ipl5scene15FriendListCacheFUlPCwUx
/* 8138D87C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138D880 | 38 80 00 14 */	li r4, 0x14
/* 8138D884 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138D888 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138D88C | 48 07 D8 AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138D890 | 4B FF 6C 11 */	bl reset_friend__Q33ipl5scene7AddressFv
/* 8138D894 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138D898 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138D89C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138D8A0 | 7C 08 03 A6 */	mtlr r0
/* 8138D8A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138D8A8 | 4E 80 00 20 */	blr
.endfn update_friendinfo__Q33ipl5scene11AddressEditFv

# .text:0x5830 | 0x8138D8AC | size: 0x84
# ipl::scene::AddressEdit::utf16_wiiid(const wchar_t*)
.fn utf16_wiiid__Q33ipl5scene11AddressEditFPCw, global
/* 8138D8AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138D8B0 | 38 00 00 10 */	li r0, 0x10
/* 8138D8B4 | 38 80 00 00 */	li r4, 0x0
/* 8138D8B8 | 39 40 00 00 */	li r10, 0x0
/* 8138D8BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138D8C0 | 39 80 00 01 */	li r12, 0x1
/* 8138D8C4 | 39 60 00 00 */	li r11, 0x0
/* 8138D8C8 | 3B E0 00 00 */	li r31, 0x0
/* 8138D8CC | 38 C0 00 0A */	li r6, 0xa
/* 8138D8D0 | 7C 09 03 A6 */	mtctr r0
.L_8138D8D4:
/* 8138D8D4 | 20 1F 00 0F */	subfic r0, r31, 0xf
/* 8138D8D8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8138D8DC | 54 00 08 3C */	slwi r0, r0, 1
/* 8138D8E0 | 7C A3 02 2E */	lhzx r5, r3, r0
/* 8138D8E4 | 7C 0C 30 16 */	mulhwu r0, r12, r6
/* 8138D8E8 | 39 05 FF D0 */	subi r8, r5, 0x30
/* 8138D8EC | 7D 09 FE 70 */	srawi r9, r8, 31
/* 8138D8F0 | 7C EC 41 D6 */	mullw r7, r12, r8
/* 8138D8F4 | 7C AC 40 16 */	mulhwu r5, r12, r8
/* 8138D8F8 | 7C 84 38 14 */	addc r4, r4, r7
/* 8138D8FC | 7D 0B 41 D6 */	mullw r8, r11, r8
/* 8138D900 | 7C EC 49 D6 */	mullw r7, r12, r9
/* 8138D904 | 7D 05 42 14 */	add r8, r5, r8
/* 8138D908 | 7C AB 31 D6 */	mullw r5, r11, r6
/* 8138D90C | 7C E8 3A 14 */	add r7, r8, r7
/* 8138D910 | 7D 4A 39 14 */	adde r10, r10, r7
/* 8138D914 | 1D 8C 00 0A */	mulli r12, r12, 0xa
/* 8138D918 | 7D 60 2A 14 */	add r11, r0, r5
/* 8138D91C | 42 00 FF B8 */	bdnz .L_8138D8D4
/* 8138D920 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138D924 | 7D 43 53 78 */	mr r3, r10
/* 8138D928 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138D92C | 4E 80 00 20 */	blr
.endfn utf16_wiiid__Q33ipl5scene11AddressEditFPCw

# .text:0x58B4 | 0x8138D930 | size: 0xA8
# ipl::scene::AddressEdit::wiiid_utf16(unsigned long long, wchar_t*)
.fn wiiid_utf16__Q33ipl5scene11AddressEditFUxPw, global
/* 8138D930 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138D934 | 7C 08 02 A6 */	mflr r0
/* 8138D938 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8138D93C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138D940 | 48 26 BB 71 */	bl _savegpr_23
/* 8138D944 | 7C 78 1B 78 */	mr r24, r3
/* 8138D948 | 7C 97 23 78 */	mr r23, r4
/* 8138D94C | 7C B9 2B 78 */	mr r25, r5
/* 8138D950 | 3B 60 00 01 */	li r27, 0x1
/* 8138D954 | 3B 80 00 00 */	li r28, 0x0
/* 8138D958 | 3B 40 00 00 */	li r26, 0x0
/* 8138D95C | 3B A0 00 30 */	li r29, 0x30
/* 8138D960 | 3B C0 00 00 */	li r30, 0x0
/* 8138D964 | 3B E0 00 0A */	li r31, 0xa
.L_8138D968:
/* 8138D968 | 7F 03 C3 78 */	mr r3, r24
/* 8138D96C | 7E E4 BB 78 */	mr r4, r23
/* 8138D970 | 7F 85 E3 78 */	mr r5, r28
/* 8138D974 | 7F 66 DB 78 */	mr r6, r27
/* 8138D978 | 48 26 BB AD */	bl __div2u
/* 8138D97C | 38 C0 00 0A */	li r6, 0xa
/* 8138D980 | 38 A0 00 00 */	li r5, 0x0
/* 8138D984 | 48 26 BD C5 */	bl __mod2u
/* 8138D988 | 7C A4 E8 14 */	addc r5, r4, r29
/* 8138D98C | 7C 63 F1 14 */	adde r3, r3, r30
/* 8138D990 | 20 7A 00 0F */	subfic r3, r26, 0xf
/* 8138D994 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8138D998 | 54 64 08 3C */	slwi r4, r3, 1
/* 8138D99C | 7C 1B F8 16 */	mulhwu r0, r27, r31
/* 8138D9A0 | 2C 1A 00 10 */	cmpwi r26, 0x10
/* 8138D9A4 | 7C B9 23 2E */	sthx r5, r25, r4
/* 8138D9A8 | 7C 7C F9 D6 */	mullw r3, r28, r31
/* 8138D9AC | 1F 7B 00 0A */	mulli r27, r27, 0xa
/* 8138D9B0 | 7F 80 1A 14 */	add r28, r0, r3
/* 8138D9B4 | 41 80 FF B4 */	blt .L_8138D968
/* 8138D9B8 | 38 00 00 00 */	li r0, 0x0
/* 8138D9BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138D9C0 | B0 19 00 20 */	sth r0, 0x20(r25)
/* 8138D9C4 | 48 26 BB 39 */	bl _restgpr_23
/* 8138D9C8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8138D9CC | 7C 08 03 A6 */	mtlr r0
/* 8138D9D0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138D9D4 | 4E 80 00 20 */	blr
.endfn wiiid_utf16__Q33ipl5scene11AddressEditFUxPw

# .text:0x595C | 0x8138D9D8 | size: 0xFC
# ipl::scene::AddressEdit::setDefaultTitleText(const wchar_t*, bool)
.fn setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb, global
/* 8138D9D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138D9DC | 7C 08 02 A6 */	mflr r0
/* 8138D9E0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8138D9E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138D9E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138D9EC | 40 82 00 18 */	bne .L_8138DA04
/* 8138D9F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8138D9F4 | 41 82 00 A8 */	beq .L_8138DA9C
/* 8138D9F8 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 8138D9FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138DA00 | 40 82 00 9C */	bne .L_8138DA9C
.L_8138DA04:
/* 8138DA04 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8138DA08 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 8138DA0C | 41 82 00 58 */	beq .L_8138DA64
/* 8138DA10 | 40 80 00 10 */	bge .L_8138DA20
/* 8138DA14 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 8138DA18 | 41 82 00 14 */	beq .L_8138DA2C
/* 8138DA1C | 48 00 00 A4 */	b .L_8138DAC0
.L_8138DA20:
/* 8138DA20 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 8138DA24 | 41 82 00 08 */	beq .L_8138DA2C
/* 8138DA28 | 48 00 00 98 */	b .L_8138DAC0
.L_8138DA2C:
/* 8138DA2C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138DA30 | 38 80 01 5E */	li r4, 0x15e
/* 8138DA34 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138DA38 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8138DA3C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138DA40 | 4B FB 0D 7D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138DA44 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 8138DA48 | 7C 64 1B 78 */	mr r4, r3
/* 8138DA4C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8138DA50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138DA54 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8138DA58 | 7D 89 03 A6 */	mtctr r12
/* 8138DA5C | 4E 80 04 21 */	bctrl
/* 8138DA60 | 48 00 00 60 */	b .L_8138DAC0
.L_8138DA64:
/* 8138DA64 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138DA68 | 38 80 01 5D */	li r4, 0x15d
/* 8138DA6C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138DA70 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8138DA74 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138DA78 | 4B FB 0D 45 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138DA7C | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 8138DA80 | 7C 64 1B 78 */	mr r4, r3
/* 8138DA84 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8138DA88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138DA8C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8138DA90 | 7D 89 03 A6 */	mtctr r12
/* 8138DA94 | 4E 80 04 21 */	bctrl
/* 8138DA98 | 48 00 00 28 */	b .L_8138DAC0
.L_8138DA9C:
/* 8138DA9C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138DAA0 | 38 8D 85 A8 */	li r4, lbl_816965E8@sda21
/* 8138DAA4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138DAA8 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 8138DAAC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138DAB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138DAB4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8138DAB8 | 7D 89 03 A6 */	mtctr r12
/* 8138DABC | 4E 80 04 21 */	bctrl
.L_8138DAC0:
/* 8138DAC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138DAC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138DAC8 | 7C 08 03 A6 */	mtlr r0
/* 8138DACC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138DAD0 | 4E 80 00 20 */	blr
.endfn setDefaultTitleText__Q33ipl5scene11AddressEditFPCwb

# .text:0x5A58 | 0x8138DAD4 | size: 0x85C
# ipl::scene::AddressEdit::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, global
/* 8138DAD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138DAD8 | 7C 08 02 A6 */	mflr r0
/* 8138DADC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138DAE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138DAE4 | 48 26 B9 DD */	bl _savegpr_27
/* 8138DAE8 | 7C 7D 1B 78 */	mr r29, r3
/* 8138DAEC | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 8138DAF0 | 3F E0 81 64 */	lis r31, lbl_81647EE0@ha
/* 8138DAF4 | 7C BB 2B 78 */	mr r27, r5
/* 8138DAF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138DAFC | 7C DC 33 78 */	mr r28, r6
/* 8138DB00 | 3B FF 7E E0 */	addi r31, r31, lbl_81647EE0@l
/* 8138DB04 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138DB08 | 7D 89 03 A6 */	mtctr r12
/* 8138DB0C | 4E 80 04 21 */	bctrl
/* 8138DB10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138DB14 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8138DB18 | 7D 89 03 A6 */	mtctr r12
/* 8138DB1C | 4E 80 04 21 */	bctrl
/* 8138DB20 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8138DB24 | 3B 63 00 B4 */	addi r27, r3, 0xb4
/* 8138DB28 | 41 82 00 08 */	beq .L_8138DB30
/* 8138DB2C | 48 00 07 EC */	b .L_8138E318
.L_8138DB30:
/* 8138DB30 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8138DB34 | 41 82 07 E4 */	beq .L_8138E318
/* 8138DB38 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8138DB3C | 3C 80 00 10 */	lis r4, 0x10
/* 8138DB40 | 7F 83 E3 78 */	mr r3, r28
/* 8138DB44 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8138DB48 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8138DB4C | 7D 89 03 A6 */	mtctr r12
/* 8138DB50 | 4E 80 04 21 */	bctrl
/* 8138DB54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138DB58 | 41 82 07 C0 */	beq .L_8138E318
/* 8138DB5C | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 8138DB60 | 38 80 00 05 */	li r4, 0x5
/* 8138DB64 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 8138DB68 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8138DB6C | 48 07 D5 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138DB70 | 7C 7E 1B 78 */	mr r30, r3
/* 8138DB74 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8138DB78 | 38 80 00 14 */	li r4, 0x14
/* 8138DB7C | 48 07 D5 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138DB80 | 3F 80 81 65 */	lis r28, mscButtonName__Q33ipl5scene6Button@ha
/* 8138DB84 | 7F 63 DB 78 */	mr r3, r27
/* 8138DB88 | 3B 9C BF 5C */	addi r28, r28, mscButtonName__Q33ipl5scene6Button@l
/* 8138DB8C | 80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8138DB90 | 48 27 48 F1 */	bl strcmp
/* 8138DB94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138DB98 | 40 82 04 84 */	bne .L_8138E01C
/* 8138DB9C | 80 1D 00 64 */	lwz r0, 0x64(r29)
/* 8138DBA0 | 28 00 00 22 */	cmplwi r0, 0x22
/* 8138DBA4 | 41 81 07 74 */	bgt .L_8138E318
/* 8138DBA8 | 3C 60 81 65 */	lis r3, jumptable_81648560@ha
/* 8138DBAC | 54 00 10 3A */	slwi r0, r0, 2
/* 8138DBB0 | 38 63 85 60 */	addi r3, r3, jumptable_81648560@l
/* 8138DBB4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8138DBB8 | 7C 69 03 A6 */	mtctr r3
/* 8138DBBC | 4E 80 04 20 */	bctr
.L_8138DBC0:
/* 8138DBC0 | 7F C3 F3 78 */	mr r3, r30
/* 8138DBC4 | 38 80 00 1B */	li r4, 0x1b
/* 8138DBC8 | 48 00 F8 61 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DBCC | 7F C3 F3 78 */	mr r3, r30
/* 8138DBD0 | 38 80 00 0C */	li r4, 0xc
/* 8138DBD4 | 48 00 F8 55 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DBD8 | 7F C3 F3 78 */	mr r3, r30
/* 8138DBDC | 38 80 00 00 */	li r4, 0x0
/* 8138DBE0 | 38 A0 00 23 */	li r5, 0x23
/* 8138DBE4 | 48 00 F8 79 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138DBE8 | 7F C3 F3 78 */	mr r3, r30
/* 8138DBEC | 38 80 00 01 */	li r4, 0x1
/* 8138DBF0 | 38 A0 00 29 */	li r5, 0x29
/* 8138DBF4 | 48 00 F8 69 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8138DBF8 | 7F C3 F3 78 */	mr r3, r30
/* 8138DBFC | 38 80 00 0F */	li r4, 0xf
/* 8138DC00 | 48 00 F8 29 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DC04 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138DC08 | 38 80 00 1E */	li r4, 0x1e
/* 8138DC0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DC10 | 48 18 47 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DC14 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DC18 | 4B FD 4C 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DC1C | 38 00 00 01 */	li r0, 0x1
/* 8138DC20 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138DC24 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138DC28 | 38 00 00 05 */	li r0, 0x5
/* 8138DC2C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138DC30 | 38 9F 06 18 */	addi r4, r31, 0x618
/* 8138DC34 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138DC38 | 4B FD D8 35 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138DC3C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138DC40 | 48 04 3D 6D */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8138DC44 | 38 00 00 30 */	li r0, 0x30
/* 8138DC48 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138DC4C | 48 00 06 CC */	b .L_8138E318
.L_8138DC50:
/* 8138DC50 | 7F C3 F3 78 */	mr r3, r30
/* 8138DC54 | 38 80 00 1B */	li r4, 0x1b
/* 8138DC58 | 48 00 F7 D1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DC5C | 88 1D 04 D1 */	lbz r0, 0x4d1(r29)
/* 8138DC60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138DC64 | 41 82 00 14 */	beq .L_8138DC78
/* 8138DC68 | 7F C3 F3 78 */	mr r3, r30
/* 8138DC6C | 38 80 00 10 */	li r4, 0x10
/* 8138DC70 | 48 00 F7 B9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DC74 | 48 00 00 10 */	b .L_8138DC84
.L_8138DC78:
/* 8138DC78 | 7F C3 F3 78 */	mr r3, r30
/* 8138DC7C | 38 80 00 0C */	li r4, 0xc
/* 8138DC80 | 48 00 F7 A9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_8138DC84:
/* 8138DC84 | 7F C3 F3 78 */	mr r3, r30
/* 8138DC88 | 38 80 00 0B */	li r4, 0xb
/* 8138DC8C | 48 00 F7 9D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DC90 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DC94 | 38 80 00 09 */	li r4, 0x9
/* 8138DC98 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DC9C | 48 18 46 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DCA0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DCA4 | 4B FD 4B CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DCA8 | 3B C0 00 01 */	li r30, 0x1
/* 8138DCAC | 38 80 00 01 */	li r4, 0x1
/* 8138DCB0 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138DCB4 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138DCB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DCBC | 48 18 46 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DCC0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DCC4 | 4B FD 4B AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DCC8 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138DCCC | 7F A3 EB 78 */	mr r3, r29
/* 8138DCD0 | 4B FF F9 B1 */	bl get_friendinfo__Q33ipl5scene11AddressEditFv
/* 8138DCD4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138DCD8 | 38 9F 06 18 */	addi r4, r31, 0x618
/* 8138DCDC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138DCE0 | 4B FD D7 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138DCE4 | 38 00 00 0F */	li r0, 0xf
/* 8138DCE8 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138DCEC | 48 00 06 2C */	b .L_8138E318
.L_8138DCF0:
/* 8138DCF0 | 80 9D 00 34 */	lwz r4, 0x34(r29)
/* 8138DCF4 | 7F A3 EB 78 */	mr r3, r29
/* 8138DCF8 | 38 A0 00 00 */	li r5, 0x0
/* 8138DCFC | 48 07 C1 FD */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
/* 8138DD00 | 7F C3 F3 78 */	mr r3, r30
/* 8138DD04 | 38 80 00 1B */	li r4, 0x1b
/* 8138DD08 | 48 00 F7 21 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DD0C | 88 1D 04 D0 */	lbz r0, 0x4d0(r29)
/* 8138DD10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138DD14 | 41 82 00 34 */	beq .L_8138DD48
/* 8138DD18 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8138DD1C | 48 00 09 05 */	bl isDupCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138DD20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138DD24 | 40 82 00 24 */	bne .L_8138DD48
/* 8138DD28 | 38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8138DD2C | 48 00 09 79 */	bl isMyCode__Q43ipl5scene11AddressEdit6StringCFv
/* 8138DD30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138DD34 | 40 82 00 14 */	bne .L_8138DD48
/* 8138DD38 | 7F C3 F3 78 */	mr r3, r30
/* 8138DD3C | 38 80 00 10 */	li r4, 0x10
/* 8138DD40 | 48 00 F6 E9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DD44 | 48 00 00 10 */	b .L_8138DD54
.L_8138DD48:
/* 8138DD48 | 7F C3 F3 78 */	mr r3, r30
/* 8138DD4C | 38 80 00 0C */	li r4, 0xc
/* 8138DD50 | 48 00 F6 D9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_8138DD54:
/* 8138DD54 | A0 1D 00 B0 */	lhz r0, 0xb0(r29)
/* 8138DD58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138DD5C | 41 82 00 28 */	beq .L_8138DD84
/* 8138DD60 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DD64 | 38 80 00 06 */	li r4, 0x6
/* 8138DD68 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DD6C | 48 18 45 AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DD70 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DD74 | 4B FD 4A FD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DD78 | 38 00 00 01 */	li r0, 0x1
/* 8138DD7C | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138DD80 | 48 00 00 24 */	b .L_8138DDA4
.L_8138DD84:
/* 8138DD84 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DD88 | 38 80 00 07 */	li r4, 0x7
/* 8138DD8C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DD90 | 48 18 45 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DD94 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DD98 | 4B FD 4A D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DD9C | 38 00 00 01 */	li r0, 0x1
/* 8138DDA0 | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_8138DDA4:
/* 8138DDA4 | 7F C3 F3 78 */	mr r3, r30
/* 8138DDA8 | 38 80 00 0B */	li r4, 0xb
/* 8138DDAC | 48 00 F6 7D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DDB0 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DDB4 | 38 80 00 09 */	li r4, 0x9
/* 8138DDB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DDBC | 48 18 45 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DDC0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DDC4 | 4B FD 4A AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DDC8 | 3B C0 00 01 */	li r30, 0x1
/* 8138DDCC | 38 80 00 05 */	li r4, 0x5
/* 8138DDD0 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138DDD4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DDD8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DDDC | 48 18 45 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DDE0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DDE4 | 4B FD 4A 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DDE8 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138DDEC | 38 00 00 05 */	li r0, 0x5
/* 8138DDF0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138DDF4 | 38 9F 06 18 */	addi r4, r31, 0x618
/* 8138DDF8 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138DDFC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138DE00 | 4B FD D6 6D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138DE04 | 38 00 00 30 */	li r0, 0x30
/* 8138DE08 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138DE0C | 48 00 05 0C */	b .L_8138E318
.L_8138DE10:
/* 8138DE10 | 7F C3 F3 78 */	mr r3, r30
/* 8138DE14 | 38 80 00 1B */	li r4, 0x1b
/* 8138DE18 | 48 00 F6 11 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DE1C | 88 1D 04 D1 */	lbz r0, 0x4d1(r29)
/* 8138DE20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138DE24 | 41 82 00 34 */	beq .L_8138DE58
/* 8138DE28 | 7F C3 F3 78 */	mr r3, r30
/* 8138DE2C | 38 80 00 10 */	li r4, 0x10
/* 8138DE30 | 48 00 F5 F9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DE34 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DE38 | 38 80 00 06 */	li r4, 0x6
/* 8138DE3C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DE40 | 48 18 44 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DE44 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DE48 | 4B FD 4A 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DE4C | 38 00 00 01 */	li r0, 0x1
/* 8138DE50 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138DE54 | 48 00 00 6C */	b .L_8138DEC0
.L_8138DE58:
/* 8138DE58 | A0 1D 02 B4 */	lhz r0, 0x2b4(r29)
/* 8138DE5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138DE60 | 41 82 00 34 */	beq .L_8138DE94
/* 8138DE64 | 7F C3 F3 78 */	mr r3, r30
/* 8138DE68 | 38 80 00 0C */	li r4, 0xc
/* 8138DE6C | 48 00 F5 BD */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DE70 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DE74 | 38 80 00 06 */	li r4, 0x6
/* 8138DE78 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DE7C | 48 18 44 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DE80 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DE84 | 4B FD 49 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DE88 | 38 00 00 01 */	li r0, 0x1
/* 8138DE8C | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138DE90 | 48 00 00 30 */	b .L_8138DEC0
.L_8138DE94:
/* 8138DE94 | 7F C3 F3 78 */	mr r3, r30
/* 8138DE98 | 38 80 00 0C */	li r4, 0xc
/* 8138DE9C | 48 00 F5 8D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DEA0 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DEA4 | 38 80 00 07 */	li r4, 0x7
/* 8138DEA8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DEAC | 48 18 44 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DEB0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DEB4 | 4B FD 49 BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DEB8 | 38 00 00 01 */	li r0, 0x1
/* 8138DEBC | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_8138DEC0:
/* 8138DEC0 | 7F C3 F3 78 */	mr r3, r30
/* 8138DEC4 | 38 80 00 0F */	li r4, 0xf
/* 8138DEC8 | 48 00 F5 61 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DECC | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DED0 | 38 80 00 05 */	li r4, 0x5
/* 8138DED4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DED8 | 48 18 44 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DEDC | 7C 7B 1B 78 */	mr r27, r3
/* 8138DEE0 | 4B FD 49 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DEE4 | 38 00 00 01 */	li r0, 0x1
/* 8138DEE8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138DEEC | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138DEF0 | 38 00 00 05 */	li r0, 0x5
/* 8138DEF4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138DEF8 | 38 9F 06 18 */	addi r4, r31, 0x618
/* 8138DEFC | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138DF00 | 4B FD D5 6D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138DF04 | 38 00 00 1B */	li r0, 0x1b
/* 8138DF08 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138DF0C | 48 00 04 0C */	b .L_8138E318
.L_8138DF10:
/* 8138DF10 | 7F C3 F3 78 */	mr r3, r30
/* 8138DF14 | 38 80 00 1B */	li r4, 0x1b
/* 8138DF18 | 48 00 F5 11 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DF1C | 7F C3 F3 78 */	mr r3, r30
/* 8138DF20 | 38 80 00 10 */	li r4, 0x10
/* 8138DF24 | 48 00 F5 05 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DF28 | 7F C3 F3 78 */	mr r3, r30
/* 8138DF2C | 38 80 00 0F */	li r4, 0xf
/* 8138DF30 | 48 00 F4 F9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DF34 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DF38 | 38 80 00 05 */	li r4, 0x5
/* 8138DF3C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DF40 | 48 18 43 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DF44 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DF48 | 4B FD 49 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DF4C | 3B C0 00 01 */	li r30, 0x1
/* 8138DF50 | 38 80 00 08 */	li r4, 0x8
/* 8138DF54 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138DF58 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138DF5C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DF60 | 48 18 43 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DF64 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DF68 | 4B FD 49 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DF6C | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138DF70 | 38 00 00 05 */	li r0, 0x5
/* 8138DF74 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138DF78 | 38 9F 06 18 */	addi r4, r31, 0x618
/* 8138DF7C | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138DF80 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138DF84 | 4B FD D4 E9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138DF88 | 38 00 00 20 */	li r0, 0x20
/* 8138DF8C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138DF90 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138DF94 | 48 04 3A 19 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8138DF98 | 7F A3 EB 78 */	mr r3, r29
/* 8138DF9C | 4B FF F4 E9 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138DFA0 | 48 00 03 78 */	b .L_8138E318
.L_8138DFA4:
/* 8138DFA4 | 7F C3 F3 78 */	mr r3, r30
/* 8138DFA8 | 38 80 00 1B */	li r4, 0x1b
/* 8138DFAC | 48 00 F4 7D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DFB0 | 7F C3 F3 78 */	mr r3, r30
/* 8138DFB4 | 38 80 00 10 */	li r4, 0x10
/* 8138DFB8 | 48 00 F4 71 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DFBC | 7F C3 F3 78 */	mr r3, r30
/* 8138DFC0 | 38 80 00 0F */	li r4, 0xf
/* 8138DFC4 | 48 00 F4 65 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138DFC8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138DFCC | 38 80 00 1E */	li r4, 0x1e
/* 8138DFD0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138DFD4 | 48 18 43 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138DFD8 | 7C 7B 1B 78 */	mr r27, r3
/* 8138DFDC | 4B FD 48 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138DFE0 | 38 00 00 01 */	li r0, 0x1
/* 8138DFE4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138DFE8 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138DFEC | 38 00 00 05 */	li r0, 0x5
/* 8138DFF0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138DFF4 | 38 9F 06 18 */	addi r4, r31, 0x618
/* 8138DFF8 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138DFFC | 4B FD D4 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138E000 | 38 00 00 23 */	li r0, 0x23
/* 8138E004 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138E008 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138E00C | 48 04 39 A1 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8138E010 | 7F A3 EB 78 */	mr r3, r29
/* 8138E014 | 4B FF F4 71 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138E018 | 48 00 03 00 */	b .L_8138E318
.L_8138E01C:
/* 8138E01C | 80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8138E020 | 7F 63 DB 78 */	mr r3, r27
/* 8138E024 | 48 27 44 5D */	bl strcmp
/* 8138E028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138E02C | 40 82 02 EC */	bne .L_8138E318
/* 8138E030 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8138E034 | 38 03 FF F3 */	subi r0, r3, 0xd
/* 8138E038 | 28 00 00 15 */	cmplwi r0, 0x15
/* 8138E03C | 41 81 02 DC */	bgt .L_8138E318
/* 8138E040 | 3C 60 81 65 */	lis r3, jumptable_81648508@ha
/* 8138E044 | 54 00 10 3A */	slwi r0, r0, 2
/* 8138E048 | 38 63 85 08 */	addi r3, r3, jumptable_81648508@l
/* 8138E04C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8138E050 | 7C 69 03 A6 */	mtctr r3
/* 8138E054 | 4E 80 04 20 */	bctr
.L_8138E058:
/* 8138E058 | 7F C3 F3 78 */	mr r3, r30
/* 8138E05C | 38 80 00 1D */	li r4, 0x1d
/* 8138E060 | 48 00 F3 C9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E064 | 7F C3 F3 78 */	mr r3, r30
/* 8138E068 | 38 80 00 10 */	li r4, 0x10
/* 8138E06C | 48 00 F3 BD */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E070 | 7F C3 F3 78 */	mr r3, r30
/* 8138E074 | 38 80 00 0B */	li r4, 0xb
/* 8138E078 | 48 00 F3 B1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E07C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138E080 | 38 9F 02 2B */	addi r4, r31, 0x22b
/* 8138E084 | 38 A0 00 01 */	li r5, 0x1
/* 8138E088 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8138E08C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138E090 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138E094 | 7D 89 03 A6 */	mtctr r12
/* 8138E098 | 4E 80 04 21 */	bctrl
/* 8138E09C | 7C 64 1B 78 */	mr r4, r3
/* 8138E0A0 | 7F A3 EB 78 */	mr r3, r29
/* 8138E0A4 | 38 BD 02 B4 */	addi r5, r29, 0x2b4
/* 8138E0A8 | 4B FF E3 C1 */	bl set_textbox__Q33ipl5scene11AddressEditFPQ34nw4r3lyt4PanePCw
/* 8138E0AC | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138E0B0 | 38 00 00 07 */	li r0, 0x7
/* 8138E0B4 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138E0B8 | 38 80 00 09 */	li r4, 0x9
/* 8138E0BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E0C0 | 48 18 42 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E0C4 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E0C8 | 4B FD 47 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E0CC | 3B C0 00 01 */	li r30, 0x1
/* 8138E0D0 | 38 80 00 01 */	li r4, 0x1
/* 8138E0D4 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138E0D8 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138E0DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E0E0 | 48 18 42 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E0E4 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E0E8 | 4B FD 47 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E0EC | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138E0F0 | 7F A3 EB 78 */	mr r3, r29
/* 8138E0F4 | 4B FF F7 21 */	bl update_friendinfo__Q33ipl5scene11AddressEditFv
/* 8138E0F8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138E0FC | 38 9F 05 C3 */	addi r4, r31, 0x5c3
/* 8138E100 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138E104 | 4B FD D3 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138E108 | 38 00 00 0F */	li r0, 0xf
/* 8138E10C | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138E110 | 48 00 02 08 */	b .L_8138E318
.L_8138E114:
/* 8138E114 | 7F C3 F3 78 */	mr r3, r30
/* 8138E118 | 38 80 00 1D */	li r4, 0x1d
/* 8138E11C | 48 00 F3 0D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E120 | 7F C3 F3 78 */	mr r3, r30
/* 8138E124 | 38 80 00 10 */	li r4, 0x10
/* 8138E128 | 48 00 F3 01 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E12C | 88 1D 04 D1 */	lbz r0, 0x4d1(r29)
/* 8138E130 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138E134 | 41 82 00 14 */	beq .L_8138E148
/* 8138E138 | 7F C3 F3 78 */	mr r3, r30
/* 8138E13C | 38 80 00 0F */	li r4, 0xf
/* 8138E140 | 48 00 F2 E9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E144 | 48 00 00 10 */	b .L_8138E154
.L_8138E148:
/* 8138E148 | 7F C3 F3 78 */	mr r3, r30
/* 8138E14C | 38 80 00 0B */	li r4, 0xb
/* 8138E150 | 48 00 F2 D9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_8138E154:
/* 8138E154 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138E158 | 38 80 00 05 */	li r4, 0x5
/* 8138E15C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E160 | 48 18 41 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E164 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E168 | 4B FD 47 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E16C | 3B C0 00 01 */	li r30, 0x1
/* 8138E170 | 38 80 00 06 */	li r4, 0x6
/* 8138E174 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138E178 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138E17C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E180 | 48 18 41 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E184 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E188 | 4B FD 46 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E18C | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138E190 | 38 00 00 07 */	li r0, 0x7
/* 8138E194 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138E198 | 38 9F 05 C3 */	addi r4, r31, 0x5c3
/* 8138E19C | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138E1A0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138E1A4 | 4B FD D2 C9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138E1A8 | 38 00 00 17 */	li r0, 0x17
/* 8138E1AC | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138E1B0 | 48 00 01 68 */	b .L_8138E318
.L_8138E1B4:
/* 8138E1B4 | 7F C3 F3 78 */	mr r3, r30
/* 8138E1B8 | 38 80 00 1D */	li r4, 0x1d
/* 8138E1BC | 48 00 F2 6D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E1C0 | 7F C3 F3 78 */	mr r3, r30
/* 8138E1C4 | 38 80 00 10 */	li r4, 0x10
/* 8138E1C8 | 48 00 F2 61 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E1CC | 7F C3 F3 78 */	mr r3, r30
/* 8138E1D0 | 38 80 00 0F */	li r4, 0xf
/* 8138E1D4 | 48 00 F2 55 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E1D8 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138E1DC | 38 80 00 05 */	li r4, 0x5
/* 8138E1E0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E1E4 | 48 18 41 35 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E1E8 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E1EC | 4B FD 46 85 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E1F0 | 3B C0 00 01 */	li r30, 0x1
/* 8138E1F4 | 38 80 00 06 */	li r4, 0x6
/* 8138E1F8 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138E1FC | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138E200 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E204 | 48 18 41 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E208 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E20C | 4B FD 46 65 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E210 | 93 DB 00 14 */	stw r30, 0x14(r27)
/* 8138E214 | 38 00 00 07 */	li r0, 0x7
/* 8138E218 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138E21C | 38 9F 05 C3 */	addi r4, r31, 0x5c3
/* 8138E220 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138E224 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138E228 | 4B FD D2 45 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138E22C | 38 00 00 1B */	li r0, 0x1b
/* 8138E230 | 7F A3 EB 78 */	mr r3, r29
/* 8138E234 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138E238 | 4B FF F2 4D */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138E23C | 48 00 00 DC */	b .L_8138E318
.L_8138E240:
/* 8138E240 | 7F C3 F3 78 */	mr r3, r30
/* 8138E244 | 38 80 00 1D */	li r4, 0x1d
/* 8138E248 | 48 00 F1 E1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E24C | 7F C3 F3 78 */	mr r3, r30
/* 8138E250 | 38 80 00 10 */	li r4, 0x10
/* 8138E254 | 48 00 F1 D5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E258 | 7F C3 F3 78 */	mr r3, r30
/* 8138E25C | 38 80 00 0F */	li r4, 0xf
/* 8138E260 | 48 00 F1 C9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E264 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8138E268 | 38 80 00 09 */	li r4, 0x9
/* 8138E26C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E270 | 48 18 40 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E274 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E278 | 4B FD 45 F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E27C | 38 00 00 01 */	li r0, 0x1
/* 8138E280 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138E284 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138E288 | 38 00 00 07 */	li r0, 0x7
/* 8138E28C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138E290 | 38 9F 05 C3 */	addi r4, r31, 0x5c3
/* 8138E294 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138E298 | 4B FD D1 D5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138E29C | 38 00 00 20 */	li r0, 0x20
/* 8138E2A0 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138E2A4 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138E2A8 | 48 04 37 05 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 8138E2AC | 7F A3 EB 78 */	mr r3, r29
/* 8138E2B0 | 4B FF F1 D5 */	bl reset_gui__Q33ipl5scene11AddressEditFv
/* 8138E2B4 | 48 00 00 64 */	b .L_8138E318
.L_8138E2B8:
/* 8138E2B8 | 7F C3 F3 78 */	mr r3, r30
/* 8138E2BC | 38 80 00 1D */	li r4, 0x1d
/* 8138E2C0 | 48 00 F1 69 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E2C4 | 7F C3 F3 78 */	mr r3, r30
/* 8138E2C8 | 38 80 00 10 */	li r4, 0x10
/* 8138E2CC | 48 00 F1 5D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138E2D0 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 8138E2D4 | 38 80 00 1E */	li r4, 0x1e
/* 8138E2D8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138E2DC | 48 18 40 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138E2E0 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E2E4 | 4B FD 45 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138E2E8 | 38 00 00 01 */	li r0, 0x1
/* 8138E2EC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138E2F0 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8138E2F4 | 38 00 00 07 */	li r0, 0x7
/* 8138E2F8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138E2FC | 38 9F 05 C3 */	addi r4, r31, 0x5c3
/* 8138E300 | 90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8138E304 | 4B FD D1 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138E308 | 38 00 00 23 */	li r0, 0x23
/* 8138E30C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8138E310 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 8138E314 | 48 04 36 99 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_8138E318:
/* 8138E318 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138E31C | 48 26 B1 F1 */	bl _restgpr_27
/* 8138E320 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138E324 | 7C 08 03 A6 */	mtlr r0
/* 8138E328 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138E32C | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface

# .text:0x62B4 | 0x8138E330 | size: 0x64
# ipl::scene::AddressEdit::String::clear()
.fn clear__Q43ipl5scene11AddressEdit6StringFv, global
/* 8138E330 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138E334 | 7C 08 02 A6 */	mflr r0
/* 8138E338 | 38 80 00 00 */	li r4, 0x0
/* 8138E33C | 38 A0 02 04 */	li r5, 0x204
/* 8138E340 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138E344 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138E348 | 7C 7F 1B 78 */	mr r31, r3
/* 8138E34C | 4B FA 1F E9 */	bl memset
/* 8138E350 | 38 7F 02 04 */	addi r3, r31, 0x204
/* 8138E354 | 38 80 00 00 */	li r4, 0x0
/* 8138E358 | 38 A0 00 18 */	li r5, 0x18
/* 8138E35C | 4B FA 1F D9 */	bl memset
/* 8138E360 | 38 7F 02 1C */	addi r3, r31, 0x21c
/* 8138E364 | 38 80 00 00 */	li r4, 0x0
/* 8138E368 | 38 A0 02 04 */	li r5, 0x204
/* 8138E36C | 4B FA 1F C9 */	bl memset
/* 8138E370 | 38 00 00 00 */	li r0, 0x0
/* 8138E374 | 98 1F 04 20 */	stb r0, 0x420(r31)
/* 8138E378 | 98 1F 04 21 */	stb r0, 0x421(r31)
/* 8138E37C | 98 1F 04 22 */	stb r0, 0x422(r31)
/* 8138E380 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138E384 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138E388 | 7C 08 03 A6 */	mtlr r0
/* 8138E38C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138E390 | 4E 80 00 20 */	blr
.endfn clear__Q43ipl5scene11AddressEdit6StringFv

# .text:0x6318 | 0x8138E394 | size: 0xDC
# ipl::scene::AddressEdit::String::setEMail(const wchar_t*)
.fn setEMail__Q43ipl5scene11AddressEdit6StringFPCw, global
/* 8138E394 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8138E398 | 7C 08 02 A6 */	mflr r0
/* 8138E39C | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8138E3A0 | 39 61 01 20 */	addi r11, r1, 0x120
/* 8138E3A4 | 48 26 B1 25 */	bl _savegpr_29
/* 8138E3A8 | 38 00 00 00 */	li r0, 0x0
/* 8138E3AC | 7C 9E 23 78 */	mr r30, r4
/* 8138E3B0 | 98 03 04 22 */	stb r0, 0x422(r3)
/* 8138E3B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8138E3B8 | 38 80 00 00 */	li r4, 0x0
/* 8138E3BC | 38 A0 02 04 */	li r5, 0x204
/* 8138E3C0 | 4B FA 1F 75 */	bl memset
/* 8138E3C4 | 7F A3 EB 78 */	mr r3, r29
/* 8138E3C8 | 7F C4 F3 78 */	mr r4, r30
/* 8138E3CC | 38 A0 00 FF */	li r5, 0xff
/* 8138E3D0 | 48 27 A3 15 */	bl fn_816086E4
/* 8138E3D4 | 7F C3 F3 78 */	mr r3, r30
/* 8138E3D8 | 48 27 A2 D5 */	bl fn_816086AC
/* 8138E3DC | 7C 7F 1B 78 */	mr r31, r3
/* 8138E3E0 | 38 7D 02 1C */	addi r3, r29, 0x21c
/* 8138E3E4 | 38 80 00 00 */	li r4, 0x0
/* 8138E3E8 | 38 A0 02 04 */	li r5, 0x204
/* 8138E3EC | 4B FA 1F 49 */	bl memset
/* 8138E3F0 | 28 1F 00 10 */	cmplwi r31, 0x10
/* 8138E3F4 | 40 81 00 24 */	ble .L_8138E418
/* 8138E3F8 | 7F C4 F3 78 */	mr r4, r30
/* 8138E3FC | 38 7D 02 1C */	addi r3, r29, 0x21c
/* 8138E400 | 38 A0 00 0E */	li r5, 0xe
/* 8138E404 | 48 27 A2 E1 */	bl fn_816086E4
/* 8138E408 | 38 7D 02 38 */	addi r3, r29, 0x238
/* 8138E40C | 38 8D 85 B0 */	li r4, lbl_816965F0@sda21
/* 8138E410 | 48 27 A2 B9 */	bl fn_816086C8
/* 8138E414 | 48 00 00 10 */	b .L_8138E424
.L_8138E418:
/* 8138E418 | 7F C4 F3 78 */	mr r4, r30
/* 8138E41C | 38 7D 02 1C */	addi r3, r29, 0x21c
/* 8138E420 | 48 27 A2 A9 */	bl fn_816086C8
.L_8138E424:
/* 8138E424 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138E428 | 38 80 00 00 */	li r4, 0x0
/* 8138E42C | 38 A0 01 00 */	li r5, 0x100
/* 8138E430 | 4B FA 1F 05 */	bl memset
/* 8138E434 | 7F C4 F3 78 */	mr r4, r30
/* 8138E438 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138E43C | 38 A0 01 00 */	li r5, 0x100
/* 8138E440 | 4B FD 5B ED */	bl UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl
/* 8138E444 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138E448 | 4B FF 9C 35 */	bl NWC24CheckPublicMailAddr_
/* 8138E44C | 7C 60 00 34 */	cntlzw r0, r3
/* 8138E450 | 39 61 01 20 */	addi r11, r1, 0x120
/* 8138E454 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8138E458 | 98 1D 04 20 */	stb r0, 0x420(r29)
/* 8138E45C | 48 26 B0 B9 */	bl _restgpr_29
/* 8138E460 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8138E464 | 7C 08 03 A6 */	mtlr r0
/* 8138E468 | 38 21 01 20 */	addi r1, r1, 0x120
/* 8138E46C | 4E 80 00 20 */	blr
.endfn setEMail__Q43ipl5scene11AddressEdit6StringFPCw

# .text:0x63F4 | 0x8138E470 | size: 0x124
# ipl::scene::AddressEdit::String::setWiiNo(const wchar_t*)
.fn setWiiNo__Q43ipl5scene11AddressEdit6StringFPCw, global
/* 8138E470 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138E474 | 7C 08 02 A6 */	mflr r0
/* 8138E478 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138E47C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138E480 | 48 26 B0 49 */	bl _savegpr_29
/* 8138E484 | 38 00 00 01 */	li r0, 0x1
/* 8138E488 | 7C 9F 23 78 */	mr r31, r4
/* 8138E48C | 98 03 04 22 */	stb r0, 0x422(r3)
/* 8138E490 | 7C 7E 1B 78 */	mr r30, r3
/* 8138E494 | 38 80 00 00 */	li r4, 0x0
/* 8138E498 | 38 A0 02 04 */	li r5, 0x204
/* 8138E49C | 4B FA 1E 99 */	bl memset
/* 8138E4A0 | 7F C3 F3 78 */	mr r3, r30
/* 8138E4A4 | 7F E4 FB 78 */	mr r4, r31
/* 8138E4A8 | 38 A0 00 10 */	li r5, 0x10
/* 8138E4AC | 48 27 A2 39 */	bl fn_816086E4
/* 8138E4B0 | 38 7E 02 1C */	addi r3, r30, 0x21c
/* 8138E4B4 | 38 80 00 00 */	li r4, 0x0
/* 8138E4B8 | 38 A0 02 04 */	li r5, 0x204
/* 8138E4BC | 4B FA 1E 79 */	bl memset
/* 8138E4C0 | 38 00 00 10 */	li r0, 0x10
/* 8138E4C4 | 38 E0 00 00 */	li r7, 0x0
/* 8138E4C8 | 38 60 00 00 */	li r3, 0x0
/* 8138E4CC | 38 A0 00 3F */	li r5, 0x3f
/* 8138E4D0 | 7C 09 03 A6 */	mtctr r0
.L_8138E4D4:
/* 8138E4D4 | 7C DF 1A 2E */	lhzx r6, r31, r3
/* 8138E4D8 | 28 06 00 30 */	cmplwi r6, 0x30
/* 8138E4DC | 41 80 00 28 */	blt .L_8138E504
/* 8138E4E0 | 28 06 00 39 */	cmplwi r6, 0x39
/* 8138E4E4 | 41 81 00 20 */	bgt .L_8138E504
/* 8138E4E8 | 7C E0 16 70 */	srawi r0, r7, 2
/* 8138E4EC | 7C 00 01 94 */	addze r0, r0
/* 8138E4F0 | 7C 07 02 14 */	add r0, r7, r0
/* 8138E4F4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8138E4F8 | 7C 9E 02 14 */	add r4, r30, r0
/* 8138E4FC | B0 C4 02 1C */	sth r6, 0x21c(r4)
/* 8138E500 | 48 00 00 1C */	b .L_8138E51C
.L_8138E504:
/* 8138E504 | 7C E0 16 70 */	srawi r0, r7, 2
/* 8138E508 | 7C 00 01 94 */	addze r0, r0
/* 8138E50C | 7C 07 02 14 */	add r0, r7, r0
/* 8138E510 | 54 00 08 3C */	slwi r0, r0, 1
/* 8138E514 | 7C 9E 02 14 */	add r4, r30, r0
/* 8138E518 | B0 A4 02 1C */	sth r5, 0x21c(r4)
.L_8138E51C:
/* 8138E51C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8138E520 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8138E524 | 42 00 FF B0 */	bdnz .L_8138E4D4
/* 8138E528 | 38 00 00 20 */	li r0, 0x20
/* 8138E52C | 7F E3 FB 78 */	mr r3, r31
/* 8138E530 | B0 1E 02 38 */	sth r0, 0x238(r30)
/* 8138E534 | 3B A0 00 00 */	li r29, 0x0
/* 8138E538 | B0 1E 02 2E */	sth r0, 0x22e(r30)
/* 8138E53C | B0 1E 02 24 */	sth r0, 0x224(r30)
/* 8138E540 | 48 27 A1 6D */	bl fn_816086AC
/* 8138E544 | 28 03 00 10 */	cmplwi r3, 0x10
/* 8138E548 | 40 82 00 30 */	bne .L_8138E578
/* 8138E54C | 7F E3 FB 78 */	mr r3, r31
/* 8138E550 | 4B FF F3 5D */	bl utf16_wiiid__Q33ipl5scene11AddressEditFPCw
/* 8138E554 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8138E558 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138E55C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8138E560 | 80 7E 04 24 */	lwz r3, 0x424(r30)
/* 8138E564 | 80 63 04 EC */	lwz r3, 0x4ec(r3)
/* 8138E568 | 4B FF 8B 25 */	bl isValidId__Q33ipl5scene15FriendListCacheFRCUx
/* 8138E56C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138E570 | 41 82 00 08 */	beq .L_8138E578
/* 8138E574 | 3B A0 00 01 */	li r29, 0x1
.L_8138E578:
/* 8138E578 | 9B BE 04 20 */	stb r29, 0x420(r30)
/* 8138E57C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138E580 | 48 26 AF 95 */	bl _restgpr_29
/* 8138E584 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138E588 | 7C 08 03 A6 */	mtlr r0
/* 8138E58C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138E590 | 4E 80 00 20 */	blr
.endfn setWiiNo__Q43ipl5scene11AddressEdit6StringFPCw

# .text:0x6518 | 0x8138E594 | size: 0x8C
# ipl::scene::AddressEdit::String::setName(const wchar_t*)
.fn setName__Q43ipl5scene11AddressEdit6StringFPCw, global
/* 8138E594 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138E598 | 7C 08 02 A6 */	mflr r0
/* 8138E59C | 38 A0 00 0A */	li r5, 0xa
/* 8138E5A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138E5A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138E5A8 | 7C 9F 23 78 */	mr r31, r4
/* 8138E5AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138E5B0 | 7C 7E 1B 78 */	mr r30, r3
/* 8138E5B4 | 38 63 02 04 */	addi r3, r3, 0x204
/* 8138E5B8 | 48 27 A1 2D */	bl fn_816086E4
/* 8138E5BC | 7F E3 FB 78 */	mr r3, r31
/* 8138E5C0 | 48 27 A0 ED */	bl fn_816086AC
/* 8138E5C4 | 38 80 00 00 */	li r4, 0x0
/* 8138E5C8 | 98 9E 04 21 */	stb r4, 0x421(r30)
/* 8138E5CC | 7C 69 03 A6 */	mtctr r3
/* 8138E5D0 | 28 03 00 00 */	cmplwi r3, 0x0
/* 8138E5D4 | 40 81 00 34 */	ble .L_8138E608
.L_8138E5D8:
/* 8138E5D8 | 7C 1F 22 2E */	lhzx r0, r31, r4
/* 8138E5DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138E5E0 | 41 82 00 28 */	beq .L_8138E608
/* 8138E5E4 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8138E5E8 | 41 82 00 18 */	beq .L_8138E600
/* 8138E5EC | 28 00 30 00 */	cmplwi r0, 0x3000
/* 8138E5F0 | 41 82 00 10 */	beq .L_8138E600
/* 8138E5F4 | 38 00 00 01 */	li r0, 0x1
/* 8138E5F8 | 98 1E 04 21 */	stb r0, 0x421(r30)
/* 8138E5FC | 48 00 00 0C */	b .L_8138E608
.L_8138E600:
/* 8138E600 | 38 84 00 02 */	addi r4, r4, 0x2
/* 8138E604 | 42 00 FF D4 */	bdnz .L_8138E5D8
.L_8138E608:
/* 8138E608 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138E60C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138E610 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138E614 | 7C 08 03 A6 */	mtlr r0
/* 8138E618 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138E61C | 4E 80 00 20 */	blr
.endfn setName__Q43ipl5scene11AddressEdit6StringFPCw

# .text:0x65A4 | 0x8138E620 | size: 0x84
# ipl::scene::AddressEdit::String::isDupCode() const
.fn isDupCode__Q43ipl5scene11AddressEdit6StringCFv, global
/* 8138E620 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8138E624 | 7C 08 02 A6 */	mflr r0
/* 8138E628 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8138E62C | 88 03 04 22 */	lbz r0, 0x422(r3)
/* 8138E630 | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8138E634 | 7C 7F 1B 78 */	mr r31, r3
/* 8138E638 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138E63C | 41 82 00 24 */	beq .L_8138E660
/* 8138E640 | 4B FF F2 6D */	bl utf16_wiiid__Q33ipl5scene11AddressEditFPCw
/* 8138E644 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8138E648 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138E64C | 80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8138E650 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8138E654 | 80 65 04 EC */	lwz r3, 0x4ec(r5)
/* 8138E658 | 4B FF 8A 61 */	bl isDupId__Q33ipl5scene15FriendListCacheFRCUx
/* 8138E65C | 48 00 00 34 */	b .L_8138E690
.L_8138E660:
/* 8138E660 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8138E664 | 38 80 00 00 */	li r4, 0x0
/* 8138E668 | 38 A0 01 01 */	li r5, 0x101
/* 8138E66C | 4B FA 1C C9 */	bl memset
/* 8138E670 | 7F E4 FB 78 */	mr r4, r31
/* 8138E674 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8138E678 | 38 A0 01 00 */	li r5, 0x100
/* 8138E67C | 4B FD 59 B1 */	bl UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl
/* 8138E680 | 80 7F 04 24 */	lwz r3, 0x424(r31)
/* 8138E684 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8138E688 | 80 63 04 EC */	lwz r3, 0x4ec(r3)
/* 8138E68C | 4B FF 8A 99 */	bl isDupMail__Q33ipl5scene15FriendListCacheFPCc
.L_8138E690:
/* 8138E690 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8138E694 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8138E698 | 7C 08 03 A6 */	mtlr r0
/* 8138E69C | 38 21 01 20 */	addi r1, r1, 0x120
/* 8138E6A0 | 4E 80 00 20 */	blr
.endfn isDupCode__Q43ipl5scene11AddressEdit6StringCFv

# .text:0x6628 | 0x8138E6A4 | size: 0x68
# ipl::scene::AddressEdit::String::isMyCode() const
.fn isMyCode__Q43ipl5scene11AddressEdit6StringCFv, global
/* 8138E6A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138E6A8 | 7C 08 02 A6 */	mflr r0
/* 8138E6AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138E6B0 | 88 03 04 22 */	lbz r0, 0x422(r3)
/* 8138E6B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138E6B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138E6BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138E6C0 | 41 82 00 30 */	beq .L_8138E6F0
/* 8138E6C4 | 80 83 04 24 */	lwz r4, 0x424(r3)
/* 8138E6C8 | 80 84 04 EC */	lwz r4, 0x4ec(r4)
/* 8138E6CC | 83 E4 7D 68 */	lwz r31, 0x7d68(r4)
/* 8138E6D0 | 83 C4 7D 6C */	lwz r30, 0x7d6c(r4)
/* 8138E6D4 | 4B FF F1 D9 */	bl utf16_wiiid__Q33ipl5scene11AddressEditFPCw
/* 8138E6D8 | 7F C4 22 78 */	xor r4, r30, r4
/* 8138E6DC | 7F E0 1A 78 */	xor r0, r31, r3
/* 8138E6E0 | 7C 80 03 78 */	or r0, r4, r0
/* 8138E6E4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8138E6E8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8138E6EC | 48 00 00 08 */	b .L_8138E6F4
.L_8138E6F0:
/* 8138E6F0 | 38 60 00 00 */	li r3, 0x0
.L_8138E6F4:
/* 8138E6F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138E6F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138E6FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138E700 | 7C 08 03 A6 */	mtlr r0
/* 8138E704 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138E708 | 4E 80 00 20 */	blr
.endfn isMyCode__Q43ipl5scene11AddressEdit6StringCFv

# .text:0x6690 | 0x8138E70C | size: 0x12C
# ipl::scene::AddressEdit::set_err_msg(wchar_t*, unsigned long, NWC24Err)
.fn set_err_msg__Q33ipl5scene11AddressEditFPwUl8NWC24Err, global
/* 8138E70C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138E710 | 7C 08 02 A6 */	mflr r0
/* 8138E714 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8138E718 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138E71C | 48 26 AD A5 */	bl _savegpr_27
/* 8138E720 | 7C 9C 23 78 */	mr r28, r4
/* 8138E724 | 7C 7B 1B 78 */	mr r27, r3
/* 8138E728 | 7C BD 2B 78 */	mr r29, r5
/* 8138E72C | 7C DE 33 78 */	mr r30, r6
/* 8138E730 | 7F 83 E3 78 */	mr r3, r28
/* 8138E734 | 54 A5 08 3C */	slwi r5, r5, 1
/* 8138E738 | 38 80 00 00 */	li r4, 0x0
/* 8138E73C | 4B FA 1B F9 */	bl memset
/* 8138E740 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138E744 | 38 80 01 90 */	li r4, 0x190
/* 8138E748 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138E74C | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 8138E750 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138E754 | 4B FB 00 69 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138E758 | 7C 7F 1B 78 */	mr r31, r3
/* 8138E75C | 7F 83 E3 78 */	mr r3, r28
/* 8138E760 | 48 27 9F 4D */	bl fn_816086AC
/* 8138E764 | 7C A3 E8 50 */	subf r5, r3, r29
/* 8138E768 | 7F 83 E3 78 */	mr r3, r28
/* 8138E76C | 7F E4 FB 78 */	mr r4, r31
/* 8138E770 | 48 27 9F E5 */	bl fn_81608754
/* 8138E774 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138E778 | 38 80 00 00 */	li r4, 0x0
/* 8138E77C | 38 A0 00 40 */	li r5, 0x40
/* 8138E780 | 4B FA 1B B5 */	bl memset
/* 8138E784 | 80 7B 04 EC */	lwz r3, 0x4ec(r27)
/* 8138E788 | 4B FF 8C 11 */	bl getErrCode__Q33ipl5scene15FriendListCacheCFv
/* 8138E78C | 3C A0 81 65 */	lis r5, lbl_816485EC@ha
/* 8138E790 | 7C 66 1B 78 */	mr r6, r3
/* 8138E794 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138E798 | 38 80 00 20 */	li r4, 0x20
/* 8138E79C | 38 A5 85 EC */	addi r5, r5, lbl_816485EC@l
/* 8138E7A0 | 4C C6 31 82 */	crclr cr1eq
/* 8138E7A4 | 48 27 9E 2D */	bl swprintf
/* 8138E7A8 | 7F 83 E3 78 */	mr r3, r28
/* 8138E7AC | 48 27 9F 01 */	bl fn_816086AC
/* 8138E7B0 | 7C A3 E8 50 */	subf r5, r3, r29
/* 8138E7B4 | 7F 83 E3 78 */	mr r3, r28
/* 8138E7B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138E7BC | 48 27 9F 99 */	bl fn_81608754
/* 8138E7C0 | 2C 1E FF E1 */	cmpwi r30, -0x1f
/* 8138E7C4 | 41 82 00 20 */	beq .L_8138E7E4
/* 8138E7C8 | 40 80 00 10 */	bge .L_8138E7D8
/* 8138E7CC | 2C 1E FF E0 */	cmpwi r30, -0x20
/* 8138E7D0 | 40 80 00 1C */	bge .L_8138E7EC
/* 8138E7D4 | 48 00 00 1C */	b .L_8138E7F0
.L_8138E7D8:
/* 8138E7D8 | 2C 1E FF FA */	cmpwi r30, -0x6
/* 8138E7DC | 41 82 00 10 */	beq .L_8138E7EC
/* 8138E7E0 | 48 00 00 10 */	b .L_8138E7F0
.L_8138E7E4:
/* 8138E7E4 | 38 80 01 9A */	li r4, 0x19a
/* 8138E7E8 | 48 00 00 08 */	b .L_8138E7F0
.L_8138E7EC:
/* 8138E7EC | 38 80 01 C5 */	li r4, 0x1c5
.L_8138E7F0:
/* 8138E7F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138E7F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138E7F8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 8138E7FC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8138E800 | 4B FA FF BD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8138E804 | 7C 7F 1B 78 */	mr r31, r3
/* 8138E808 | 7F 83 E3 78 */	mr r3, r28
/* 8138E80C | 48 27 9E A1 */	bl fn_816086AC
/* 8138E810 | 7C A3 E8 50 */	subf r5, r3, r29
/* 8138E814 | 7F 83 E3 78 */	mr r3, r28
/* 8138E818 | 7F E4 FB 78 */	mr r4, r31
/* 8138E81C | 48 27 9F 39 */	bl fn_81608754
/* 8138E820 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8138E824 | 48 26 AC E9 */	bl _restgpr_27
/* 8138E828 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138E82C | 7C 08 03 A6 */	mtlr r0
/* 8138E830 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8138E834 | 4E 80 00 20 */	blr
.endfn set_err_msg__Q33ipl5scene11AddressEditFPwUl8NWC24Err

# .text:0x67BC | 0x8138E838 | size: 0xE8
# ipl::scene::AddressEditEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene16AddressEditEventFUlUlPv, global
/* 8138E838 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138E83C | 7C 08 02 A6 */	mflr r0
/* 8138E840 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138E844 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138E848 | 48 26 AC 7D */	bl _savegpr_28
/* 8138E84C | 7C 7C 1B 78 */	mr r28, r3
/* 8138E850 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138E854 | 7C BD 2B 78 */	mr r29, r5
/* 8138E858 | 7C DE 33 78 */	mr r30, r6
/* 8138E85C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138E860 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138E864 | 7D 89 03 A6 */	mtctr r12
/* 8138E868 | 4E 80 04 21 */	bctrl
/* 8138E86C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138E870 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8138E874 | 7D 89 03 A6 */	mtctr r12
/* 8138E878 | 4E 80 04 21 */	bctrl
/* 8138E87C | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8138E880 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8138E884 | 41 82 00 20 */	beq .L_8138E8A4
/* 8138E888 | 40 80 00 10 */	bge .L_8138E898
/* 8138E88C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138E890 | 40 80 00 40 */	bge .L_8138E8D0
/* 8138E894 | 48 00 00 74 */	b .L_8138E908
.L_8138E898:
/* 8138E898 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8138E89C | 40 80 00 6C */	bge .L_8138E908
/* 8138E8A0 | 48 00 00 20 */	b .L_8138E8C0
.L_8138E8A4:
/* 8138E8A4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138E8A8 | 41 82 00 60 */	beq .L_8138E908
/* 8138E8AC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8138E8B0 | 7F E4 FB 78 */	mr r4, r31
/* 8138E8B4 | 7F C5 F3 78 */	mr r5, r30
/* 8138E8B8 | 4B FF DE 25 */	bl start_point_event__Q33ipl5scene11AddressEditFPCcPQ33ipl10controller9Interface
/* 8138E8BC | 48 00 00 4C */	b .L_8138E908
.L_8138E8C0:
/* 8138E8C0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8138E8C4 | 7F E4 FB 78 */	mr r4, r31
/* 8138E8C8 | 4B FF E0 ED */	bl start_left_event__Q33ipl5scene11AddressEditFPCc
/* 8138E8CC | 48 00 00 3C */	b .L_8138E908
.L_8138E8D0:
/* 8138E8D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138E8D4 | 41 82 00 34 */	beq .L_8138E908
/* 8138E8D8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138E8DC | 3C 80 00 10 */	lis r4, 0x10
/* 8138E8E0 | 7F C3 F3 78 */	mr r3, r30
/* 8138E8E4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8138E8E8 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8138E8EC | 7D 89 03 A6 */	mtctr r12
/* 8138E8F0 | 4E 80 04 21 */	bctrl
/* 8138E8F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138E8F8 | 41 82 00 10 */	beq .L_8138E908
/* 8138E8FC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8138E900 | 7F E4 FB 78 */	mr r4, r31
/* 8138E904 | 4B FF E2 31 */	bl start_trig_event__Q33ipl5scene11AddressEditFPCc
.L_8138E908:
/* 8138E908 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138E90C | 48 26 AC 05 */	bl _restgpr_28
/* 8138E910 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138E914 | 7C 08 03 A6 */	mtlr r0
/* 8138E918 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138E91C | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene16AddressEditEventFUlUlPv

# .text:0x68A4 | 0x8138E920 | size: 0x134
# ipl::scene::AddressInputEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene17AddressInputEventFUlUlPv, global
/* 8138E920 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138E924 | 7C 08 02 A6 */	mflr r0
/* 8138E928 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138E92C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138E930 | 48 26 AB 95 */	bl _savegpr_28
/* 8138E934 | 7C 7C 1B 78 */	mr r28, r3
/* 8138E938 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8138E93C | 7C BD 2B 78 */	mr r29, r5
/* 8138E940 | 7C DE 33 78 */	mr r30, r6
/* 8138E944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138E948 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138E94C | 7D 89 03 A6 */	mtctr r12
/* 8138E950 | 4E 80 04 21 */	bctrl
/* 8138E954 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138E958 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8138E95C | 7D 89 03 A6 */	mtctr r12
/* 8138E960 | 4E 80 04 21 */	bctrl
/* 8138E964 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8138E968 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8138E96C | 41 82 00 74 */	beq .L_8138E9E0
/* 8138E970 | 40 80 00 10 */	bge .L_8138E980
/* 8138E974 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8138E978 | 40 80 00 14 */	bge .L_8138E98C
/* 8138E97C | 48 00 00 C0 */	b .L_8138EA3C
.L_8138E980:
/* 8138E980 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8138E984 | 40 80 00 B8 */	bge .L_8138EA3C
/* 8138E988 | 48 00 00 88 */	b .L_8138EA10
.L_8138E98C:
/* 8138E98C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138E990 | 41 82 00 AC */	beq .L_8138EA3C
/* 8138E994 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138E998 | 3C 80 00 10 */	lis r4, 0x10
/* 8138E99C | 7F C3 F3 78 */	mr r3, r30
/* 8138E9A0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8138E9A4 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8138E9A8 | 7D 89 03 A6 */	mtctr r12
/* 8138E9AC | 4E 80 04 21 */	bctrl
/* 8138E9B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138E9B4 | 41 82 00 88 */	beq .L_8138EA3C
/* 8138E9B8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138E9BC | 7F C3 F3 78 */	mr r3, r30
/* 8138E9C0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138E9C4 | 7D 89 03 A6 */	mtctr r12
/* 8138E9C8 | 4E 80 04 21 */	bctrl
/* 8138E9CC | 7C 65 1B 78 */	mr r5, r3
/* 8138E9D0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8138E9D4 | 7F E4 FB 78 */	mr r4, r31
/* 8138E9D8 | 4B FF E3 1D */	bl start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci
/* 8138E9DC | 48 00 00 60 */	b .L_8138EA3C
.L_8138E9E0:
/* 8138E9E0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138E9E4 | 41 82 00 58 */	beq .L_8138EA3C
/* 8138E9E8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138E9EC | 7F C3 F3 78 */	mr r3, r30
/* 8138E9F0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138E9F4 | 7D 89 03 A6 */	mtctr r12
/* 8138E9F8 | 4E 80 04 21 */	bctrl
/* 8138E9FC | 7C 65 1B 78 */	mr r5, r3
/* 8138EA00 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8138EA04 | 7F E4 FB 78 */	mr r4, r31
/* 8138EA08 | 4B FF E7 AD */	bl start_ipt_point_event__Q33ipl5scene11AddressEditFPCci
/* 8138EA0C | 48 00 00 30 */	b .L_8138EA3C
.L_8138EA10:
/* 8138EA10 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138EA14 | 41 82 00 28 */	beq .L_8138EA3C
/* 8138EA18 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8138EA1C | 7F C3 F3 78 */	mr r3, r30
/* 8138EA20 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138EA24 | 7D 89 03 A6 */	mtctr r12
/* 8138EA28 | 4E 80 04 21 */	bctrl
/* 8138EA2C | 7C 65 1B 78 */	mr r5, r3
/* 8138EA30 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8138EA34 | 7F E4 FB 78 */	mr r4, r31
/* 8138EA38 | 4B FF E8 E1 */	bl start_ipt_left_event__Q33ipl5scene11AddressEditFPCci
.L_8138EA3C:
/* 8138EA3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138EA40 | 48 26 AA D1 */	bl _restgpr_28
/* 8138EA44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138EA48 | 7C 08 03 A6 */	mtlr r0
/* 8138EA4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138EA50 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene17AddressInputEventFUlUlPv

# .text:0x69D8 | 0x8138EA54 | size: 0x8
.fn "@20@__dt__Q33ipl5scene11AddressEditFv", global
/* 8138EA54 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8138EA58 | 4B FF 99 54 */	b __dt__Q33ipl5scene11AddressEditFv
.endfn "@20@__dt__Q33ipl5scene11AddressEditFv"

# .text:0x69E0 | 0x8138EA5C | size: 0x8
# ipl::scene::AddressEdit::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface", global
/* 8138EA5C | 38 63 FF A8 */	subi r3, r3, 0x58
/* 8138EA60 | 4B FF F0 74 */	b onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface"

# 0x8160F668..0x8160F690 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8160F668 | size: 0xB
.obj lbl_8160F668, global
	.byte 0x28, 0x29, 0x3C, 0x3E, 0x5B, 0x5D, 0x3A, 0x3B
	.byte 0x5C, 0x2C, 0x22
.endobj lbl_8160F668

# .rodata:0xB | 0x8160F673 | size: 0xC
.obj lbl_8160F673, global
	.byte 0x6D, 0x69, 0x69, 0x5F, 0x69, 0x63, 0x6F, 0x6E
	.byte 0x5F, 0x30, 0x30, 0x00
.endobj lbl_8160F673

# .rodata:0x17 | 0x8160F67F | size: 0x11
.obj lbl_8160F67F, global
	.byte 0x6D, 0x69, 0x69, 0x5F, 0x69, 0x63, 0x6F, 0x6E
	.byte 0x5F, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00
.endobj lbl_8160F67F

# 0x81647EE0..0x81648748 | size: 0x868
.data
.balign 8

# .data:0x0 | 0x81647EE0 | size: 0xD
.obj lbl_81647EE0, global
	.string "B_crd_btn_00"
.endobj lbl_81647EE0

# .data:0xD | 0x81647EED | size: 0xD
.obj lbl_81647EED, global
	.string "B_crd_btn_10"
.endobj lbl_81647EED

# .data:0x1A | 0x81647EFA | size: 0xD
.obj lbl_81647EFA, global
	.string "B_crd_btn_11"
.endobj lbl_81647EFA

# .data:0x27 | 0x81647F07 | size: 0xE
.obj lbl_81647F07, global
	.string "B_mii_icon_00"
.endobj lbl_81647F07

# .data:0x35 | 0x81647F15 | size: 0xF
.obj lbl_81647F15, global
	.4byte 0x425F6361
	.4byte 0x72645F62
	.4byte 0x65746100
	.byte 0x00, 0x00, 0x00
.endobj lbl_81647F15

# .data:0x44 | 0x81647F24 | size: 0x14
.obj lbl_81647F24, global
	.4byte lbl_81647EE0
	.4byte lbl_81647EED
	.4byte lbl_81647EFA
	.4byte lbl_81647F07
	.4byte lbl_81647F15
.endobj lbl_81647F24

# .data:0x58 | 0x81647F38 | size: 0xE
.obj lbl_81647F38, global
	.string "B_crd_edgi_00"
.endobj lbl_81647F38

# .data:0x66 | 0x81647F46 | size: 0x83
.obj lbl_81647F46, global
	.4byte 0x62616C6C
	.4byte 0x6F6F6E2E
	.4byte 0x61736800
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F622E
	.4byte 0x62726C79
	.4byte 0x74007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x625F6361
	.4byte 0x72645F73
	.4byte 0x7472742E
	.4byte 0x62726C61
	.4byte 0x6E006361
	.4byte 0x72645F73
	.4byte 0x7472745F
	.4byte 0x666E7368
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F62
	.4byte 0x5F62746E
	.4byte 0x5F696E2E
	.4byte 0x62726C61
	.4byte 0x6E006372
	.4byte 0x645F6274
	.4byte 0x6E5F3030
	.4byte 0x00637264
	.4byte 0x5F62746E
	.4byte 0x5F313000
	.4byte 0x6372645F
	.4byte 0x62746E5F
	.byte 0x31, 0x31, 0x00
.endobj lbl_81647F46

# .data:0xE9 | 0x81647FC9 | size: 0xC
.obj lbl_81647FC9, global
	.string "mii_icon_00"
.endobj lbl_81647FC9

# .data:0xF5 | 0x81647FD5 | size: 0x128
.obj lbl_81647FD5, global
	.4byte 0x545F6672
	.4byte 0x6E645F63
	.4byte 0x72645F30
	.4byte 0x30007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x625F6274
	.4byte 0x6E5F7073
	.4byte 0x682E6272
	.4byte 0x6C616E00
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F625F
	.4byte 0x62746E5F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x625F6274
	.4byte 0x6E5F7363
	.4byte 0x6C5F696E
	.4byte 0x2E62726C
	.4byte 0x616E0074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F625F62
	.4byte 0x746E5F73
	.4byte 0x636C5F6F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x00637264
	.4byte 0x5F62746E
	.4byte 0x5F677279
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F62
	.4byte 0x5F636172
	.4byte 0x645F6D73
	.4byte 0x675F616C
	.4byte 0x705F696E
	.4byte 0x2E62726C
	.4byte 0x616E0063
	.4byte 0x6172645F
	.4byte 0x6D736700
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F625F
	.4byte 0x63617264
	.4byte 0x5F6D7367
	.4byte 0x5F616C70
	.4byte 0x5F6F7574
	.4byte 0x2E62726C
	.4byte 0x616E0074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F625F63
	.4byte 0x6172645F
	.4byte 0x666E7368
	.4byte 0x2E62726C
	.4byte 0x616E0054
	.4byte 0x5F637264
	.4byte 0x5F62746E
	.4byte 0x5F303000
	.4byte 0x545F6372
	.4byte 0x645F6274
	.4byte 0x6E5F3130
	.4byte 0x00545F63
	.4byte 0x72645F62
	.4byte 0x746E5F31
	.4byte 0x3100545F
	.4byte 0x6372645F
	.4byte 0x62746E5F
	.4byte 0x67727900
.endobj lbl_81647FD5

# .data:0x21D | 0x816480FD | size: 0xE
.obj lbl_816480FD, global
	.string "T_card_msg_00"
.endobj lbl_816480FD

# .data:0x22B | 0x8164810B | size: 0x1F5
.obj lbl_8164810B, global
	.4byte 0x545F6E61
	.4byte 0x6D655F30
	.4byte 0x30007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x632E6272
	.4byte 0x6C797400
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F635F
	.4byte 0x63617264
	.4byte 0x5F737472
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x475F6361
	.4byte 0x72645F73
	.4byte 0x7472745F
	.4byte 0x666E7368
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F63
	.4byte 0x5F717565
	.4byte 0x7374696F
	.4byte 0x6E5F616C
	.4byte 0x705F696E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F717565
	.4byte 0x7374696F
	.4byte 0x6E5F3030
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F63
	.4byte 0x5F6E616D
	.4byte 0x655F616C
	.4byte 0x705F696E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F6E616D
	.4byte 0x655F3030
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F63
	.4byte 0x5F6D7367
	.4byte 0x5F616C70
	.4byte 0x5F696E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x6D73675F
	.4byte 0x30300074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F635F6D
	.4byte 0x69695F61
	.4byte 0x6C705F69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F635F
	.4byte 0x71756573
	.4byte 0x74696F6E
	.4byte 0x5F616C70
	.4byte 0x5F6F7574
	.4byte 0x2E62726C
	.4byte 0x616E0074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F635F6E
	.4byte 0x616D655F
	.4byte 0x616C705F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x635F6D73
	.4byte 0x675F616C
	.4byte 0x705F6F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F635F
	.4byte 0x6D69695F
	.4byte 0x616C705F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x635F6361
	.4byte 0x72645F66
	.4byte 0x6E73682E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F426163
	.4byte 0x6B5F612E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F426163
	.4byte 0x6B5F615F
	.4byte 0x41706561
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x3030006D
	.4byte 0x795F4261
	.4byte 0x636B5F61
	.4byte 0x5F4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x545F7175
	.4byte 0x65737469
	.4byte 0x6F6E5F30
	.4byte 0x3000545F
	.4byte 0x6D73675F
	.4byte 0x3030006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x42616C6C
	.4byte 0x6F6F6E5F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.byte 0x00
.endobj lbl_8164810B

# .data:0x420 | 0x81648300 | size: 0xC0
.obj jumptable_81648300, local
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389408
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389400
.endobj jumptable_81648300

# .data:0x4E0 | 0x816483C0 | size: 0xC0
.obj jumptable_816483C0, local
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389260
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389268
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389270
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389278
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389280
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389288
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389290
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389298
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892A0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892A8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892B0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892B8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892C0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892C8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892D0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892D8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892E0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892E8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892F0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813892F8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389300
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389308
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389310
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389318
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389320
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389328
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389330
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389338
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389340
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389348
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389350
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389358
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389360
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389368
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389370
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389378
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389380
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389388
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389390
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_81389398
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893A0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893A8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893B0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893B8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893C0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893C8
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893D0
	.rel calcNormal__Q33ipl5scene11AddressEditFv, .L_813893D8
.endobj jumptable_816483C0

# .data:0x5A0 | 0x81648480 | size: 0xD
.obj gap_08_81648480_data, global
.hidden gap_08_81648480_data
	.4byte 0x545F6D69
	.4byte 0x695F6D73
	.4byte 0x675F3030
	.byte 0x00
.endobj gap_08_81648480_data

# .data:0x5AD | 0x8164848D | size: 0x16
.obj lbl_8164848D, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_8164848D

# .data:0x5C3 | 0x816484A3 | size: 0x11
.obj lbl_816484A3, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
	.byte 0x00
.endobj lbl_816484A3

# .data:0x5D4 | 0x816484B4 | size: 0x44
.obj jumptable_816484B4, local
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138CD94
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138CECC
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138CFBC
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D180
	.rel start_ipt_trig_event__Q33ipl5scene11AddressEditFPCci, .L_8138D0E4
.endobj jumptable_816484B4

# .data:0x618 | 0x816484F8 | size: 0x10
.obj gap_08_816484F8_data, global
.hidden gap_08_816484F8_data
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43414E43
	.4byte 0x454C0000
.endobj gap_08_816484F8_data

# .data:0x628 | 0x81648508 | size: 0x58
.obj jumptable_81648508, local
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E058
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E114
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E1B4
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E240
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E2B8
.endobj jumptable_81648508

# .data:0x680 | 0x81648560 | size: 0x8C
.obj jumptable_81648560, local
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138DBC0
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138DC50
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138DCF0
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138DE10
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138DF10
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138E318
	.rel onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface, .L_8138DFA4
.endobj jumptable_81648560

# .data:0x70C | 0x816485EC | size: 0xC
.obj lbl_816485EC, global
	.string16 "%06d\n"
.endobj lbl_816485EC

# .data:0x718 | 0x816485F8 | size: 0x18
# ipl::scene::AddressInputEvent::__vtable
.obj __vt__Q33ipl5scene17AddressInputEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene17AddressInputEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene17AddressInputEvent

# .data:0x730 | 0x81648610 | size: 0x18
# ipl::scene::AddressEditEvent::__vtable
.obj __vt__Q33ipl5scene16AddressEditEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene16AddressEditEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene16AddressEditEvent

# .data:0x748 | 0x81648628 | size: 0x120
# ipl::scene::AddressEdit::__vtable
.obj __vt__Q33ipl5scene11AddressEdit, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene11AddressEditFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene11AddressEditFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene11AddressEditFv
	.4byte create__Q33ipl5scene11AddressEditFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene11AddressEditFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene11AddressEditFv
	.4byte initCalcFadeout__Q33ipl5scene11AddressEditFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene11AddressEditFv
	.4byte calcNormal__Q33ipl5scene11AddressEditFv
	.4byte calcFadeout__Q33ipl5scene11AddressEditFv
	.4byte calcCommonAfter__Q33ipl5scene11AddressEditFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface"
	.4byte onEventDerived__Q33ipl5scene11AddressEditFUlUlPCQ33ipl10controller9Interface
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene11AddressEdit

# 0x816947F0..0x81694808 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816947F0 | size: 0x4
.obj lbl_816947F0, global
	.float 30
.endobj lbl_816947F0

# .sdata2:0x4 | 0x816947F4 | size: 0x4
.obj lbl_816947F4, global
	.float 120
.endobj lbl_816947F4

# .sdata2:0x8 | 0x816947F8 | size: 0x4
.obj lbl_816947F8, global
	.float 0
.endobj lbl_816947F8

# .sdata2:0xC | 0x816947FC | size: 0x4
.obj lbl_816947FC, global
	.float 15
.endobj lbl_816947FC

# .sdata2:0x10 | 0x81694800 | size: 0x4
.obj lbl_81694800, global
	.float 50
.endobj lbl_81694800

# .sdata2:0x14 | 0x81694804 | size: 0x4
.obj lbl_81694804, global
	.float 0.5
.endobj lbl_81694804

# 0x816965E0..0x816965F8 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816965E0 | size: 0x4
.obj lbl_816965E0, global
	.4byte lbl_81647F38
.endobj lbl_816965E0

# .sdata:0x4 | 0x816965E4 | size: 0x4
.obj lbl_816965E4, global
	.string "arc"
.endobj lbl_816965E4

# .sdata:0x8 | 0x816965E8 | size: 0x2
.obj lbl_816965E8, global
	.2byte 0x0000
.endobj lbl_816965E8

# .sdata:0xA | 0x816965EA | size: 0x6
.obj lbl_816965EA, global
	.string "G_mii"
.endobj lbl_816965EA

# .sdata:0x10 | 0x816965F0 | size: 0x8
.obj lbl_816965F0, global
	.string16 "..."
.endobj lbl_816965F0
