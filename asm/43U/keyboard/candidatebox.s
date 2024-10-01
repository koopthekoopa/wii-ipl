.include "macros.inc"
.file "candidatebox.cpp"

# 0x81428150..0x8142DF10 | size: 0x5DC0
.text
.balign 4

# .text:0x0 | 0x81428150 | size: 0x20
# textinput::candidatebox::CandidateBoxCaller::resetCandidate()
.fn resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv, global
/* 81428150 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81428154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428158 | 4D 82 00 20 */	beqlr
/* 8142815C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428160 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81428164 | 7D 89 03 A6 */	mtctr r12
/* 81428168 | 4E 80 04 20 */	bctr
/* 8142816C | 4E 80 00 20 */	blr
.endfn resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv

# .text:0x20 | 0x81428170 | size: 0x20
# textinput::candidatebox::CandidateBoxCaller::addCandidate(const wchar_t*)
.fn addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw, global
/* 81428170 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81428174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428178 | 4D 82 00 20 */	beqlr
/* 8142817C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428180 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81428184 | 7D 89 03 A6 */	mtctr r12
/* 81428188 | 4E 80 04 20 */	bctr
/* 8142818C | 4E 80 00 20 */	blr
.endfn addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw

# .text:0x40 | 0x81428190 | size: 0x20
# textinput::candidatebox::CandidateBoxCaller::updateCandidate()
.fn updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv, global
/* 81428190 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81428194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428198 | 4D 82 00 20 */	beqlr
/* 8142819C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814281A0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814281A4 | 7D 89 03 A6 */	mtctr r12
/* 814281A8 | 4E 80 04 20 */	bctr
/* 814281AC | 4E 80 00 20 */	blr
.endfn updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv

# .text:0x60 | 0x814281B0 | size: 0x20
# textinput::candidatebox::CandidateBoxCaller::makeEmptyCandidate()
.fn makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv, global
/* 814281B0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814281B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814281B8 | 4D 82 00 20 */	beqlr
/* 814281BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814281C0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 814281C4 | 7D 89 03 A6 */	mtctr r12
/* 814281C8 | 4E 80 04 20 */	bctr
/* 814281CC | 4E 80 00 20 */	blr
.endfn makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv

# .text:0x80 | 0x814281D0 | size: 0x4
# textinput::candidatebox::Base::makeEmpty()
.fn makeEmpty__Q39textinput12candidatebox4BaseFv, global
/* 814281D0 | 4E 80 00 20 */	blr
.endfn makeEmpty__Q39textinput12candidatebox4BaseFv

# .text:0x84 | 0x814281D4 | size: 0x78
# textinput::candidatebox::Base::~Base()
.fn __dt__Q39textinput12candidatebox4BaseFv, global
/* 814281D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814281D8 | 7C 08 02 A6 */	mflr r0
/* 814281DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814281E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814281E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814281E8 | 7C 9F 23 78 */	mr r31, r4
/* 814281EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814281F0 | 7C 7E 1B 78 */	mr r30, r3
/* 814281F4 | 41 82 00 3C */	beq .L_81428230
/* 814281F8 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814281FC | 3C A0 81 66 */	lis r5, __vt__Q39textinput12candidatebox4Base@ha
/* 81428200 | 38 A5 DF A8 */	addi r5, r5, __vt__Q39textinput12candidatebox4Base@l
/* 81428204 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81428208 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8142820C | 41 82 00 14 */	beq .L_81428220
/* 81428210 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81428214 | 48 13 34 65 */	bl fn_8155B678
/* 81428218 | 38 00 00 00 */	li r0, 0x0
/* 8142821C | 90 1E 00 10 */	stw r0, 0x10(r30)
.L_81428220:
/* 81428220 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81428224 | 40 81 00 0C */	ble .L_81428230
/* 81428228 | 7F C3 F3 78 */	mr r3, r30
/* 8142822C | 48 1C FE B9 */	bl __dl__FPv
.L_81428230:
/* 81428230 | 7F C3 F3 78 */	mr r3, r30
/* 81428234 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81428238 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142823C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428240 | 7C 08 03 A6 */	mtlr r0
/* 81428244 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81428248 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox4BaseFv

# .text:0xFC | 0x8142824C | size: 0x5C
# textinput::candidatebox::Base::create(MEMAllocator*)
.fn create__Q39textinput12candidatebox4BaseFP12MEMAllocator, global
/* 8142824C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428250 | 7C 08 02 A6 */	mflr r0
/* 81428254 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81428258 | 7C 80 23 78 */	mr r0, r4
/* 8142825C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81428260 | 7C 7F 1B 78 */	mr r31, r3
/* 81428264 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 81428268 | 38 80 14 04 */	li r4, 0x1404
/* 8142826C | 7C 03 03 78 */	mr r3, r0
/* 81428270 | 48 13 33 F9 */	bl fn_8155B668
/* 81428274 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428278 | 41 82 00 0C */	beq .L_81428284
/* 8142827C | 38 00 00 00 */	li r0, 0x0
/* 81428280 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_81428284:
/* 81428284 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81428288 | 38 80 00 00 */	li r4, 0x0
/* 8142828C | 38 A0 14 04 */	li r5, 0x1404
/* 81428290 | 4B F0 80 A5 */	bl memset
/* 81428294 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428298 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142829C | 7C 08 03 A6 */	mtlr r0
/* 814282A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814282A4 | 4E 80 00 20 */	blr
.endfn create__Q39textinput12candidatebox4BaseFP12MEMAllocator

# .text:0x158 | 0x814282A8 | size: 0x40
# textinput::candidatebox::Base::setCommandReceiver(textinput::CommandReceiver*)
.fn setCommandReceiver__Q39textinput12candidatebox4BaseFPQ29textinput15CommandReceiver, global
/* 814282A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814282AC | 7C 08 02 A6 */	mflr r0
/* 814282B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814282B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814282B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814282BC | 48 01 3C 11 */	bl setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver
/* 814282C0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814282C4 | 7F E3 FB 78 */	mr r3, r31
/* 814282C8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814282CC | 7D 89 03 A6 */	mtctr r12
/* 814282D0 | 4E 80 04 21 */	bctrl
/* 814282D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814282D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814282DC | 7C 08 03 A6 */	mtlr r0
/* 814282E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814282E4 | 4E 80 00 20 */	blr
.endfn setCommandReceiver__Q39textinput12candidatebox4BaseFPQ29textinput15CommandReceiver

# .text:0x198 | 0x814282E8 | size: 0x4
# textinput::candidatebox::Base::init()
.fn init__Q39textinput12candidatebox4BaseFv, global
/* 814282E8 | 4E 80 00 20 */	blr
.endfn init__Q39textinput12candidatebox4BaseFv

# .text:0x19C | 0x814282EC | size: 0x18
# textinput::candidatebox::Base::resetCandidate()
.fn resetCandidate__Q39textinput12candidatebox4BaseFv, global
/* 814282EC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814282F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814282F4 | 4D 82 00 20 */	beqlr
/* 814282F8 | 38 00 00 00 */	li r0, 0x0
/* 814282FC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81428300 | 4E 80 00 20 */	blr
.endfn resetCandidate__Q39textinput12candidatebox4BaseFv

# .text:0x1B4 | 0x81428304 | size: 0x54
# textinput::candidatebox::Base::addCandidate(const wchar_t*)
.fn addCandidate__Q39textinput12candidatebox4BaseFPCw, global
/* 81428304 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428308 | 7C 08 02 A6 */	mflr r0
/* 8142830C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81428310 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81428314 | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 81428318 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142831C | 41 82 00 28 */	beq .L_81428344
/* 81428320 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81428324 | 38 A0 00 40 */	li r5, 0x40
/* 81428328 | 54 00 38 30 */	slwi r0, r0, 7
/* 8142832C | 7C 7F 02 14 */	add r3, r31, r0
/* 81428330 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81428334 | 48 1E 03 B1 */	bl fn_816086E4
/* 81428338 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8142833C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81428340 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81428344:
/* 81428344 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428348 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142834C | 7C 08 03 A6 */	mtlr r0
/* 81428350 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81428354 | 4E 80 00 20 */	blr
.endfn addCandidate__Q39textinput12candidatebox4BaseFPCw

# .text:0x208 | 0x81428358 | size: 0x58
# textinput::candidatebox::Base::updateCandidate()
.fn updateCandidate__Q39textinput12candidatebox4BaseFv, global
/* 81428358 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8142835C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81428360 | 4D 82 00 20 */	beqlr
/* 81428364 | 3C 60 00 01 */	lis r3, 0x1
/* 81428368 | 7C E6 3B 78 */	mr r6, r7
/* 8142836C | 38 A7 00 04 */	addi r5, r7, 0x4
/* 81428370 | 38 80 00 00 */	li r4, 0x0
/* 81428374 | 38 63 E0 57 */	subi r3, r3, 0x1fa9
/* 81428378 | 48 00 00 28 */	b .L_814283A0
.L_8142837C:
/* 8142837C | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 81428380 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81428384 | 41 82 00 0C */	beq .L_81428390
/* 81428388 | 28 00 30 00 */	cmplwi r0, 0x3000
/* 8142838C | 40 82 00 08 */	bne .L_81428394
.L_81428390:
/* 81428390 | B0 66 00 04 */	sth r3, 0x4(r6)
.L_81428394:
/* 81428394 | 38 A5 00 80 */	addi r5, r5, 0x80
/* 81428398 | 38 C6 00 80 */	addi r6, r6, 0x80
/* 8142839C | 38 84 00 01 */	addi r4, r4, 0x1
.L_814283A0:
/* 814283A0 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814283A4 | 7C 04 00 40 */	cmplw r4, r0
/* 814283A8 | 41 80 FF D4 */	blt .L_8142837C
/* 814283AC | 4E 80 00 20 */	blr
.endfn updateCandidate__Q39textinput12candidatebox4BaseFv

# .text:0x260 | 0x814283B0 | size: 0x70
# textinput::candidatebox::Base::setOnOff(bool)
.fn setOnOff__Q39textinput12candidatebox4BaseFb, global
/* 814283B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814283B4 | 7C 08 02 A6 */	mflr r0
/* 814283B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814283BC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814283C0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814283C4 | 7C 9F 23 78 */	mr r31, r4
/* 814283C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814283CC | 7C 7E 1B 78 */	mr r30, r3
/* 814283D0 | 98 83 00 18 */	stb r4, 0x18(r3)
/* 814283D4 | 38 80 00 1F */	li r4, 0x1f
/* 814283D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814283DC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814283E0 | 7D 89 03 A6 */	mtctr r12
/* 814283E4 | 4E 80 04 21 */	bctrl
/* 814283E8 | 9B E1 00 0C */	stb r31, 0xc(r1)
/* 814283EC | 7F C3 F3 78 */	mr r3, r30
/* 814283F0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814283F4 | 38 80 00 1D */	li r4, 0x1d
/* 814283F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814283FC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81428400 | 7D 89 03 A6 */	mtctr r12
/* 81428404 | 4E 80 04 21 */	bctrl
/* 81428408 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142840C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81428410 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81428414 | 7C 08 03 A6 */	mtlr r0
/* 81428418 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142841C | 4E 80 00 20 */	blr
.endfn setOnOff__Q39textinput12candidatebox4BaseFb

# .text:0x2D0 | 0x81428420 | size: 0x7C
# textinput::candidatebox::Base::updateFromReceiver(unsigned long, void*)
.fn updateFromReceiver__Q39textinput12candidatebox4BaseFUlPv, global
/* 81428420 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81428424 | 7C 08 02 A6 */	mflr r0
/* 81428428 | 2C 04 00 22 */	cmpwi r4, 0x22
/* 8142842C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81428430 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81428434 | 7C BF 2B 78 */	mr r31, r5
/* 81428438 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142843C | 7C 9E 23 78 */	mr r30, r4
/* 81428440 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81428444 | 7C 7D 1B 78 */	mr r29, r3
/* 81428448 | 40 82 00 18 */	bne .L_81428460
/* 8142844C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428450 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81428454 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81428458 | 7D 89 03 A6 */	mtctr r12
/* 8142845C | 4E 80 04 21 */	bctrl
.L_81428460:
/* 81428460 | 2C 1E 00 23 */	cmpwi r30, 0x23
/* 81428464 | 40 82 00 1C */	bne .L_81428480
/* 81428468 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142846C | 7F A3 EB 78 */	mr r3, r29
/* 81428470 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81428474 | 7D 89 03 A6 */	mtctr r12
/* 81428478 | 4E 80 04 21 */	bctrl
/* 8142847C | 98 7F 00 00 */	stb r3, 0x0(r31)
.L_81428480:
/* 81428480 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81428484 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81428488 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142848C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81428490 | 7C 08 03 A6 */	mtlr r0
/* 81428494 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81428498 | 4E 80 00 20 */	blr
.endfn updateFromReceiver__Q39textinput12candidatebox4BaseFUlPv

# .text:0x34C | 0x8142849C | size: 0x8
# textinput::candidatebox::Base::setInvalid(bool)
.fn setInvalid__Q39textinput12candidatebox4BaseFb, global
/* 8142849C | 98 83 00 19 */	stb r4, 0x19(r3)
/* 814284A0 | 4E 80 00 20 */	blr
.endfn setInvalid__Q39textinput12candidatebox4BaseFb

# .text:0x354 | 0x814284A4 | size: 0x194
# textinput::candidatebox::Base::checkValidation()
.fn checkValidation__Q39textinput12candidatebox4BaseFv, global
/* 814284A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814284A8 | 7C 08 02 A6 */	mflr r0
/* 814284AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814284B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814284B4 | 3B E0 00 01 */	li r31, 0x1
/* 814284B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814284BC | 7C 7E 1B 78 */	mr r30, r3
/* 814284C0 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814284C4 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814284C8 | 40 82 00 58 */	bne .L_81428520
/* 814284CC | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 814284D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814284D4 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814284D8 | 7D 89 03 A6 */	mtctr r12
/* 814284DC | 4E 80 04 21 */	bctrl
/* 814284E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814284E4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814284E8 | 7D 89 03 A6 */	mtctr r12
/* 814284EC | 4E 80 04 21 */	bctrl
/* 814284F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814284F4 | 40 82 00 24 */	bne .L_81428518
/* 814284F8 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 814284FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428500 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81428504 | 7D 89 03 A6 */	mtctr r12
/* 81428508 | 4E 80 04 21 */	bctrl
/* 8142850C | 4B FE FF 91 */	bl getInputType__Q49textinput8keyboard13cellphonetype4BaseCFv
/* 81428510 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81428514 | 41 82 00 EC */	beq .L_81428600
.L_81428518:
/* 81428518 | 3B E0 00 00 */	li r31, 0x0
/* 8142851C | 48 00 00 E4 */	b .L_81428600
.L_81428520:
/* 81428520 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81428524 | 40 82 00 8C */	bne .L_814285B0
/* 81428528 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8142852C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428530 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81428534 | 7D 89 03 A6 */	mtctr r12
/* 81428538 | 4E 80 04 21 */	bctrl
/* 8142853C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428540 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81428544 | 7D 89 03 A6 */	mtctr r12
/* 81428548 | 4E 80 04 21 */	bctrl
/* 8142854C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428550 | 41 82 00 38 */	beq .L_81428588
/* 81428554 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81428558 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142855C | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 81428560 | 7D 89 03 A6 */	mtctr r12
/* 81428564 | 4E 80 04 21 */	bctrl
/* 81428568 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142856C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81428570 | 7D 89 03 A6 */	mtctr r12
/* 81428574 | 4E 80 04 21 */	bctrl
/* 81428578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142857C | 40 82 00 84 */	bne .L_81428600
/* 81428580 | 3B E0 00 00 */	li r31, 0x0
/* 81428584 | 48 00 00 7C */	b .L_81428600
.L_81428588:
/* 81428588 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8142858C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428590 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81428594 | 7D 89 03 A6 */	mtctr r12
/* 81428598 | 4E 80 04 21 */	bctrl
/* 8142859C | 4B FE FF 01 */	bl getInputType__Q49textinput8keyboard13cellphonetype4BaseCFv
/* 814285A0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814285A4 | 41 82 00 5C */	beq .L_81428600
/* 814285A8 | 3B E0 00 00 */	li r31, 0x0
/* 814285AC | 48 00 00 54 */	b .L_81428600
.L_814285B0:
/* 814285B0 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 814285B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814285B8 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814285BC | 7D 89 03 A6 */	mtctr r12
/* 814285C0 | 4E 80 04 21 */	bctrl
/* 814285C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814285C8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814285CC | 7D 89 03 A6 */	mtctr r12
/* 814285D0 | 4E 80 04 21 */	bctrl
/* 814285D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814285D8 | 40 82 00 28 */	bne .L_81428600
/* 814285DC | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 814285E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814285E4 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 814285E8 | 7D 89 03 A6 */	mtctr r12
/* 814285EC | 4E 80 04 21 */	bctrl
/* 814285F0 | 4B FE FE AD */	bl getInputType__Q49textinput8keyboard13cellphonetype4BaseCFv
/* 814285F4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814285F8 | 40 82 00 08 */	bne .L_81428600
/* 814285FC | 3B E0 00 00 */	li r31, 0x0
.L_81428600:
/* 81428600 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81428604 | 7F E0 00 34 */	cntlzw r0, r31
/* 81428608 | 7F C3 F3 78 */	mr r3, r30
/* 8142860C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81428610 | 54 04 D9 7E */	srwi r4, r0, 5
/* 81428614 | 7D 89 03 A6 */	mtctr r12
/* 81428618 | 4E 80 04 21 */	bctrl
/* 8142861C | 7F E3 FB 78 */	mr r3, r31
/* 81428620 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81428624 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81428628 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142862C | 7C 08 03 A6 */	mtlr r0
/* 81428630 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81428634 | 4E 80 00 20 */	blr
.endfn checkValidation__Q39textinput12candidatebox4BaseFv

# .text:0x4E8 | 0x81428638 | size: 0x118
# textinput::candidatebox::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81428638 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142863C | 7C 08 02 A6 */	mflr r0
/* 81428640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428644 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81428648 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142864C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81428650 | 7C 9E 23 78 */	mr r30, r4
/* 81428654 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81428658 | 7C 7D 1B 78 */	mr r29, r3
/* 8142865C | 41 82 00 D4 */	beq .L_81428730
/* 81428660 | 3C C0 81 66 */	lis r6, __vt__Q39textinput12candidatebox12LayoutByNW4R@ha
/* 81428664 | 38 80 FF FF */	li r4, -0x1
/* 81428668 | 38 C6 DD 98 */	addi r6, r6, __vt__Q39textinput12candidatebox12LayoutByNW4R@l
/* 8142866C | 38 A6 00 54 */	addi r5, r6, 0x54
/* 81428670 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81428674 | 38 06 00 CC */	addi r0, r6, 0xcc
/* 81428678 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8142867C | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 81428680 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 81428684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428688 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142868C | 7D 89 03 A6 */	mtctr r12
/* 81428690 | 4E 80 04 21 */	bctrl
/* 81428694 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81428698 | 80 9D 00 E0 */	lwz r4, 0xe0(r29)
/* 8142869C | 48 13 2F DD */	bl fn_8155B678
/* 814286A0 | 38 7D 00 90 */	addi r3, r29, 0x90
/* 814286A4 | 38 80 00 00 */	li r4, 0x0
/* 814286A8 | 48 0E 9C 35 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814286AC | 7C 7F 1B 78 */	mr r31, r3
/* 814286B0 | 48 00 00 2C */	b .L_814286DC
.L_814286B4:
/* 814286B4 | 7F E4 FB 78 */	mr r4, r31
/* 814286B8 | 38 7D 00 90 */	addi r3, r29, 0x90
/* 814286BC | 48 0E 9B B5 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 814286C0 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 814286C4 | 7F E3 FB 78 */	mr r3, r31
/* 814286C8 | 48 00 ED 29 */	bl destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator
/* 814286CC | 38 7D 00 90 */	addi r3, r29, 0x90
/* 814286D0 | 38 80 00 00 */	li r4, 0x0
/* 814286D4 | 48 0E 9C 09 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814286D8 | 7C 7F 1B 78 */	mr r31, r3
.L_814286DC:
/* 814286DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814286E0 | 40 82 FF D4 */	bne .L_814286B4
/* 814286E4 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 814286E8 | 38 80 00 00 */	li r4, 0x0
/* 814286EC | 48 00 DA 0D */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 814286F0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814286F4 | 41 82 00 2C */	beq .L_81428720
/* 814286F8 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 814286FC | 3C 60 81 66 */	lis r3, __vt__Q39textinput12candidatebox4Base@ha
/* 81428700 | 38 63 DF A8 */	addi r3, r3, __vt__Q39textinput12candidatebox4Base@l
/* 81428704 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81428708 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 8142870C | 41 82 00 14 */	beq .L_81428720
/* 81428710 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81428714 | 48 13 2F 65 */	bl fn_8155B678
/* 81428718 | 38 00 00 00 */	li r0, 0x0
/* 8142871C | 90 1D 00 10 */	stw r0, 0x10(r29)
.L_81428720:
/* 81428720 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81428724 | 40 81 00 0C */	ble .L_81428730
/* 81428728 | 7F A3 EB 78 */	mr r3, r29
/* 8142872C | 48 1C F9 B9 */	bl __dl__FPv
.L_81428730:
/* 81428730 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81428734 | 7F A3 EB 78 */	mr r3, r29
/* 81428738 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142873C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81428740 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81428744 | 7C 08 03 A6 */	mtlr r0
/* 81428748 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142874C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x600 | 0x81428750 | size: 0x40
# textinput::candidatebox::UITextWindow::~UITextWindow()
.fn __dt__Q39textinput12candidatebox12UITextWindowFv, global
/* 81428750 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428754 | 7C 08 02 A6 */	mflr r0
/* 81428758 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142875C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81428760 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81428764 | 7C 7F 1B 78 */	mr r31, r3
/* 81428768 | 41 82 00 10 */	beq .L_81428778
/* 8142876C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81428770 | 40 81 00 08 */	ble .L_81428778
/* 81428774 | 48 1C F9 71 */	bl __dl__FPv
.L_81428778:
/* 81428778 | 7F E3 FB 78 */	mr r3, r31
/* 8142877C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81428780 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428784 | 7C 08 03 A6 */	mtlr r0
/* 81428788 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142878C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox12UITextWindowFv

# .text:0x640 | 0x81428790 | size: 0x40
# textinput::candidatebox::UIObj::~UIObj()
.fn __dt__Q39textinput12candidatebox5UIObjFv, global
/* 81428790 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428794 | 7C 08 02 A6 */	mflr r0
/* 81428798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142879C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814287A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814287A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814287A8 | 41 82 00 10 */	beq .L_814287B8
/* 814287AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814287B0 | 40 81 00 08 */	ble .L_814287B8
/* 814287B4 | 48 1C F9 31 */	bl __dl__FPv
.L_814287B8:
/* 814287B8 | 7F E3 FB 78 */	mr r3, r31
/* 814287BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814287C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814287C4 | 7C 08 03 A6 */	mtlr r0
/* 814287C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814287CC | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox5UIObjFv

# .text:0x680 | 0x814287D0 | size: 0x40
# textinput::candidatebox::UIOnOffButton::~UIOnOffButton()
.fn __dt__Q39textinput12candidatebox13UIOnOffButtonFv, global
/* 814287D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814287D4 | 7C 08 02 A6 */	mflr r0
/* 814287D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814287DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814287E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814287E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814287E8 | 41 82 00 10 */	beq .L_814287F8
/* 814287EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814287F0 | 40 81 00 08 */	ble .L_814287F8
/* 814287F4 | 48 1C F8 F1 */	bl __dl__FPv
.L_814287F8:
/* 814287F8 | 7F E3 FB 78 */	mr r3, r31
/* 814287FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81428800 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428804 | 7C 08 03 A6 */	mtlr r0
/* 81428808 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142880C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox13UIOnOffButtonFv

# .text:0x6C0 | 0x81428810 | size: 0x40
# textinput::candidatebox::UIButton::~UIButton()
.fn __dt__Q39textinput12candidatebox8UIButtonFv, global
/* 81428810 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428814 | 7C 08 02 A6 */	mflr r0
/* 81428818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142881C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81428820 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81428824 | 7C 7F 1B 78 */	mr r31, r3
/* 81428828 | 41 82 00 10 */	beq .L_81428838
/* 8142882C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81428830 | 40 81 00 08 */	ble .L_81428838
/* 81428834 | 48 1C F8 B1 */	bl __dl__FPv
.L_81428838:
/* 81428838 | 7F E3 FB 78 */	mr r3, r31
/* 8142883C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81428840 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428844 | 7C 08 03 A6 */	mtlr r0
/* 81428848 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142884C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox8UIButtonFv

# .text:0x700 | 0x81428850 | size: 0x40
# textinput::candidatebox::UITextArea::~UITextArea()
.fn __dt__Q39textinput12candidatebox10UITextAreaFv, global
/* 81428850 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428854 | 7C 08 02 A6 */	mflr r0
/* 81428858 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142885C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81428860 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81428864 | 7C 7F 1B 78 */	mr r31, r3
/* 81428868 | 41 82 00 10 */	beq .L_81428878
/* 8142886C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81428870 | 40 81 00 08 */	ble .L_81428878
/* 81428874 | 48 1C F8 71 */	bl __dl__FPv
.L_81428878:
/* 81428878 | 7F E3 FB 78 */	mr r3, r31
/* 8142887C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81428880 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81428884 | 7C 08 03 A6 */	mtlr r0
/* 81428888 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142888C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox10UITextAreaFv

# .text:0x740 | 0x81428890 | size: 0x40
# textinput::candidatebox::EventHandler::~EventHandler()
.fn __dt__Q39textinput12candidatebox12EventHandlerFv, global
/* 81428890 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81428894 | 7C 08 02 A6 */	mflr r0
/* 81428898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142889C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814288A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814288A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814288A8 | 41 82 00 10 */	beq .L_814288B8
/* 814288AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814288B0 | 40 81 00 08 */	ble .L_814288B8
/* 814288B4 | 48 1C F8 31 */	bl __dl__FPv
.L_814288B8:
/* 814288B8 | 7F E3 FB 78 */	mr r3, r31
/* 814288BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814288C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814288C4 | 7C 08 03 A6 */	mtlr r0
/* 814288C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814288CC | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox12EventHandlerFv

# .text:0x780 | 0x814288D0 | size: 0x580
# textinput::candidatebox::LayoutByNW4R::create(MEMAllocator*)
.fn create__Q39textinput12candidatebox12LayoutByNW4RFP12MEMAllocator, global
/* 814288D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814288D4 | 7C 08 02 A6 */	mflr r0
/* 814288D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814288DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814288E0 | 48 1D 0B DD */	bl _savegpr_26
/* 814288E4 | 3F C0 81 66 */	lis r30, lbl_8165D2D0@ha
/* 814288E8 | 7C 9B 23 78 */	mr r27, r4
/* 814288EC | 90 83 00 14 */	stw r4, 0x14(r3)
/* 814288F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814288F4 | 7F 63 DB 78 */	mr r3, r27
/* 814288F8 | 3B DE D2 D0 */	addi r30, r30, lbl_8165D2D0@l
/* 814288FC | 38 80 14 04 */	li r4, 0x1404
/* 81428900 | 48 13 2D 69 */	bl fn_8155B668
/* 81428904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428908 | 41 82 00 0C */	beq .L_81428914
/* 8142890C | 38 00 00 00 */	li r0, 0x0
/* 81428910 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_81428914:
/* 81428914 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81428918 | 38 80 00 00 */	li r4, 0x0
/* 8142891C | 38 A0 14 04 */	li r5, 0x1404
/* 81428920 | 4B F0 7A 15 */	bl memset
/* 81428924 | 7F 64 DB 78 */	mr r4, r27
/* 81428928 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8142892C | 38 BF 00 D0 */	addi r5, r31, 0xd0
/* 81428930 | 48 00 D8 E5 */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 81428934 | 7F 63 DB 78 */	mr r3, r27
/* 81428938 | 38 80 00 4C */	li r4, 0x4c
/* 8142893C | 48 13 2D 2D */	bl fn_8155B668
/* 81428940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428944 | 7C 7A 1B 78 */	mr r26, r3
/* 81428948 | 41 82 00 4C */	beq .L_81428994
/* 8142894C | 38 00 00 40 */	li r0, 0x40
/* 81428950 | 3D 80 81 66 */	lis r12, __vt__Q39textinput8tistring9Decolated@ha
/* 81428954 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 81428958 | 38 00 00 00 */	li r0, 0x0
/* 8142895C | 39 8C F5 18 */	addi r12, r12, __vt__Q39textinput8tistring9Decolated@l
/* 81428960 | B0 03 00 06 */	sth r0, 0x6(r3)
/* 81428964 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81428968 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8142896C | B0 03 00 10 */	sth r0, 0x10(r3)
/* 81428970 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81428974 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81428978 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8142897C | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81428980 | 98 03 00 20 */	stb r0, 0x20(r3)
/* 81428984 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 81428988 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8142898C | 7D 89 03 A6 */	mtctr r12
/* 81428990 | 4E 80 04 21 */	bctrl
.L_81428994:
/* 81428994 | 93 5F 00 E0 */	stw r26, 0xe0(r31)
/* 81428998 | 7F 43 D3 78 */	mr r3, r26
/* 8142899C | 7F 64 DB 78 */	mr r4, r27
/* 814289A0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 814289A4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814289A8 | 7D 89 03 A6 */	mtctr r12
/* 814289AC | 4E 80 04 21 */	bctrl
/* 814289B0 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814289B4 | 38 80 00 00 */	li r4, 0x0
/* 814289B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814289BC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 814289C0 | 7D 89 03 A6 */	mtctr r12
/* 814289C4 | 4E 80 04 21 */	bctrl
/* 814289C8 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814289CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814289D0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814289D4 | 7D 89 03 A6 */	mtctr r12
/* 814289D8 | 4E 80 04 21 */	bctrl
/* 814289DC | 7F E3 FB 78 */	mr r3, r31
/* 814289E0 | 7F 64 DB 78 */	mr r4, r27
/* 814289E4 | 48 00 04 71 */	bl createAnmPane___Q39textinput12candidatebox12LayoutByNW4RFP12MEMAllocator
/* 814289E8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814289EC | 7F E4 FB 78 */	mr r4, r31
/* 814289F0 | 41 82 00 08 */	beq .L_814289F8
/* 814289F4 | 38 9F 00 24 */	addi r4, r31, 0x24
.L_814289F8:
/* 814289F8 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 814289FC | 48 00 2D 69 */	bl Create__Q39textinput12candidatebox10UITextAreaFPQ39textinput11nw4rmanager6Layout
/* 81428A00 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81428A04 | 7F FA FB 78 */	mr r26, r31
/* 81428A08 | 3B A0 00 00 */	li r29, 0x0
/* 81428A0C | 90 1F 02 E8 */	stw r0, 0x2e8(r31)
.L_81428A10:
/* 81428A10 | 80 7A 01 1C */	lwz r3, 0x11c(r26)
/* 81428A14 | 38 8D 93 88 */	li r4, lbl_816973C8@sda21
/* 81428A18 | 38 A0 00 00 */	li r5, 0x0
/* 81428A1C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81428A20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428A24 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81428A28 | 7D 89 03 A6 */	mtctr r12
/* 81428A2C | 4E 80 04 21 */	bctrl
/* 81428A30 | 80 7A 01 6C */	lwz r3, 0x16c(r26)
/* 81428A34 | 38 80 00 01 */	li r4, 0x1
/* 81428A38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428A3C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81428A40 | 7D 89 03 A6 */	mtctr r12
/* 81428A44 | 4E 80 04 21 */	bctrl
/* 81428A48 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81428A4C | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81428A50 | 28 1D 00 14 */	cmplwi r29, 0x14
/* 81428A54 | 41 80 FF BC */	blt .L_81428A10
/* 81428A58 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 81428A5C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81428A60 | 7F FB FB 78 */	mr r27, r31
/* 81428A64 | D0 1F 02 DC */	stfs f0, 0x2dc(r31)
/* 81428A68 | 41 82 00 08 */	beq .L_81428A70
/* 81428A6C | 3B 7F 00 24 */	addi r27, r31, 0x24
.L_81428A70:
/* 81428A70 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428A74 | 7F 63 DB 78 */	mr r3, r27
/* 81428A78 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81428A7C | 7D 89 03 A6 */	mtctr r12
/* 81428A80 | 4E 80 04 21 */	bctrl
/* 81428A84 | 7C 7D 1B 78 */	mr r29, r3
/* 81428A88 | 38 8D 93 90 */	li r4, lbl_816973D0@sda21
/* 81428A8C | 48 01 E3 3D */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428A90 | 90 7F 03 44 */	stw r3, 0x344(r31)
/* 81428A94 | 7F A3 EB 78 */	mr r3, r29
/* 81428A98 | 38 8D 93 98 */	li r4, lbl_816973D8@sda21
/* 81428A9C | 48 01 E3 2D */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428AA0 | 90 7F 03 48 */	stw r3, 0x348(r31)
/* 81428AA4 | 7F 63 DB 78 */	mr r3, r27
/* 81428AA8 | 38 8D 93 90 */	li r4, lbl_816973D0@sda21
/* 81428AAC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428AB0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81428AB4 | 7D 89 03 A6 */	mtctr r12
/* 81428AB8 | 4E 80 04 21 */	bctrl
/* 81428ABC | 90 7F 03 54 */	stw r3, 0x354(r31)
/* 81428AC0 | 7F A3 EB 78 */	mr r3, r29
/* 81428AC4 | 38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 81428AC8 | 48 01 E3 01 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428ACC | 90 7F 03 4C */	stw r3, 0x34c(r31)
/* 81428AD0 | 7F A3 EB 78 */	mr r3, r29
/* 81428AD4 | 38 9E 06 B4 */	addi r4, r30, 0x6b4
/* 81428AD8 | 48 01 E2 F1 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428ADC | 90 7F 03 50 */	stw r3, 0x350(r31)
/* 81428AE0 | 7F 63 DB 78 */	mr r3, r27
/* 81428AE4 | 38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 81428AE8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428AEC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81428AF0 | 7D 89 03 A6 */	mtctr r12
/* 81428AF4 | 4E 80 04 21 */	bctrl
/* 81428AF8 | 90 7F 03 58 */	stw r3, 0x358(r31)
/* 81428AFC | 7F 63 DB 78 */	mr r3, r27
/* 81428B00 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428B04 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81428B08 | 7D 89 03 A6 */	mtctr r12
/* 81428B0C | 4E 80 04 21 */	bctrl
/* 81428B10 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81428B14 | 38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 81428B18 | 38 A0 00 01 */	li r5, 0x1
/* 81428B1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428B20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81428B24 | 7D 89 03 A6 */	mtctr r12
/* 81428B28 | 4E 80 04 21 */	bctrl
/* 81428B2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428B30 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81428B34 | 7D 89 03 A6 */	mtctr r12
/* 81428B38 | 4E 80 04 21 */	bctrl
/* 81428B3C | 38 9F 03 5C */	addi r4, r31, 0x35c
/* 81428B40 | 38 A0 00 00 */	li r5, 0x0
/* 81428B44 | 48 0F F1 E9 */	bl fn_81527D2C
/* 81428B48 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428B4C | 7F 63 DB 78 */	mr r3, r27
/* 81428B50 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81428B54 | 7D 89 03 A6 */	mtctr r12
/* 81428B58 | 4E 80 04 21 */	bctrl
/* 81428B5C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81428B60 | 38 9E 06 C0 */	addi r4, r30, 0x6c0
/* 81428B64 | 38 A0 00 01 */	li r5, 0x1
/* 81428B68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428B6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81428B70 | 7D 89 03 A6 */	mtctr r12
/* 81428B74 | 4E 80 04 21 */	bctrl
/* 81428B78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428B7C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81428B80 | 7D 89 03 A6 */	mtctr r12
/* 81428B84 | 4E 80 04 21 */	bctrl
/* 81428B88 | 38 9F 03 7C */	addi r4, r31, 0x37c
/* 81428B8C | 38 A0 00 00 */	li r5, 0x0
/* 81428B90 | 48 0F F1 9D */	bl fn_81527D2C
/* 81428B94 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428B98 | 7F 63 DB 78 */	mr r3, r27
/* 81428B9C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81428BA0 | 7D 89 03 A6 */	mtctr r12
/* 81428BA4 | 4E 80 04 21 */	bctrl
/* 81428BA8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81428BAC | 38 9E 06 CC */	addi r4, r30, 0x6cc
/* 81428BB0 | 38 A0 00 01 */	li r5, 0x1
/* 81428BB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428BB8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81428BBC | 7D 89 03 A6 */	mtctr r12
/* 81428BC0 | 4E 80 04 21 */	bctrl
/* 81428BC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428BC8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81428BCC | 7D 89 03 A6 */	mtctr r12
/* 81428BD0 | 4E 80 04 21 */	bctrl
/* 81428BD4 | 38 9F 03 9C */	addi r4, r31, 0x39c
/* 81428BD8 | 38 A0 00 00 */	li r5, 0x0
/* 81428BDC | 48 0F F1 51 */	bl fn_81527D2C
/* 81428BE0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428BE4 | 7F 63 DB 78 */	mr r3, r27
/* 81428BE8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81428BEC | 7D 89 03 A6 */	mtctr r12
/* 81428BF0 | 4E 80 04 21 */	bctrl
/* 81428BF4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81428BF8 | 38 8D 93 90 */	li r4, lbl_816973D0@sda21
/* 81428BFC | 38 A0 00 01 */	li r5, 0x1
/* 81428C00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428C04 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81428C08 | 7D 89 03 A6 */	mtctr r12
/* 81428C0C | 4E 80 04 21 */	bctrl
/* 81428C10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428C14 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81428C18 | 7D 89 03 A6 */	mtctr r12
/* 81428C1C | 4E 80 04 21 */	bctrl
/* 81428C20 | 38 9F 03 BC */	addi r4, r31, 0x3bc
/* 81428C24 | 38 A0 00 00 */	li r5, 0x0
/* 81428C28 | 48 0F F1 05 */	bl fn_81527D2C
/* 81428C2C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81428C30 | 7F 63 DB 78 */	mr r3, r27
/* 81428C34 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81428C38 | 7D 89 03 A6 */	mtctr r12
/* 81428C3C | 4E 80 04 21 */	bctrl
/* 81428C40 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81428C44 | 38 9E 06 D8 */	addi r4, r30, 0x6d8
/* 81428C48 | 38 A0 00 01 */	li r5, 0x1
/* 81428C4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428C50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81428C54 | 7D 89 03 A6 */	mtctr r12
/* 81428C58 | 4E 80 04 21 */	bctrl
/* 81428C5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428C60 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81428C64 | 7D 89 03 A6 */	mtctr r12
/* 81428C68 | 4E 80 04 21 */	bctrl
/* 81428C6C | 38 9F 03 DC */	addi r4, r31, 0x3dc
/* 81428C70 | 38 A0 00 00 */	li r5, 0x0
/* 81428C74 | 48 0F F0 B9 */	bl fn_81527D2C
/* 81428C78 | 80 7F 03 50 */	lwz r3, 0x350(r31)
/* 81428C7C | 38 1F 03 2C */	addi r0, r31, 0x32c
/* 81428C80 | 38 80 00 01 */	li r4, 0x1
/* 81428C84 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 81428C88 | 80 7F 03 48 */	lwz r3, 0x348(r31)
/* 81428C8C | 90 03 00 98 */	stw r0, 0x98(r3)
/* 81428C90 | 80 7F 03 48 */	lwz r3, 0x348(r31)
/* 81428C94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428C98 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81428C9C | 7D 89 03 A6 */	mtctr r12
/* 81428CA0 | 4E 80 04 21 */	bctrl
/* 81428CA4 | 80 7F 03 50 */	lwz r3, 0x350(r31)
/* 81428CA8 | 38 80 00 01 */	li r4, 0x1
/* 81428CAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428CB0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81428CB4 | 7D 89 03 A6 */	mtctr r12
/* 81428CB8 | 4E 80 04 21 */	bctrl
/* 81428CBC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81428CC0 | 7F FA FB 78 */	mr r26, r31
/* 81428CC4 | 3B 9E 06 E4 */	addi r28, r30, 0x6e4
/* 81428CC8 | 3B BE 06 F8 */	addi r29, r30, 0x6f8
/* 81428CCC | 41 82 00 08 */	beq .L_81428CD4
/* 81428CD0 | 3B 5F 00 24 */	addi r26, r31, 0x24
.L_81428CD4:
/* 81428CD4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81428CD8 | 7F 43 D3 78 */	mr r3, r26
/* 81428CDC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81428CE0 | 7D 89 03 A6 */	mtctr r12
/* 81428CE4 | 4E 80 04 21 */	bctrl
/* 81428CE8 | 7C 7B 1B 78 */	mr r27, r3
/* 81428CEC | 7F A4 EB 78 */	mr r4, r29
/* 81428CF0 | 48 01 E0 D9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428CF4 | 90 7F 03 00 */	stw r3, 0x300(r31)
/* 81428CF8 | 7F 63 DB 78 */	mr r3, r27
/* 81428CFC | 7F 84 E3 78 */	mr r4, r28
/* 81428D00 | 48 01 E0 C9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428D04 | 90 7F 03 04 */	stw r3, 0x304(r31)
/* 81428D08 | 7F 43 D3 78 */	mr r3, r26
/* 81428D0C | 7F A4 EB 78 */	mr r4, r29
/* 81428D10 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81428D14 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81428D18 | 7D 89 03 A6 */	mtctr r12
/* 81428D1C | 4E 80 04 21 */	bctrl
/* 81428D20 | 90 7F 03 08 */	stw r3, 0x308(r31)
/* 81428D24 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81428D28 | 80 7F 03 04 */	lwz r3, 0x304(r31)
/* 81428D2C | 38 1F 02 EC */	addi r0, r31, 0x2ec
/* 81428D30 | 7F FA FB 78 */	mr r26, r31
/* 81428D34 | 3B 9E 07 0C */	addi r28, r30, 0x70c
/* 81428D38 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 81428D3C | 3B 7E 07 20 */	addi r27, r30, 0x720
/* 81428D40 | 41 82 00 08 */	beq .L_81428D48
/* 81428D44 | 3B 5F 00 24 */	addi r26, r31, 0x24
.L_81428D48:
/* 81428D48 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81428D4C | 7F 43 D3 78 */	mr r3, r26
/* 81428D50 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81428D54 | 7D 89 03 A6 */	mtctr r12
/* 81428D58 | 4E 80 04 21 */	bctrl
/* 81428D5C | 7C 7D 1B 78 */	mr r29, r3
/* 81428D60 | 7F 64 DB 78 */	mr r4, r27
/* 81428D64 | 48 01 E0 65 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428D68 | 90 7F 03 20 */	stw r3, 0x320(r31)
/* 81428D6C | 7F A3 EB 78 */	mr r3, r29
/* 81428D70 | 7F 84 E3 78 */	mr r4, r28
/* 81428D74 | 48 01 E0 55 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428D78 | 90 7F 03 24 */	stw r3, 0x324(r31)
/* 81428D7C | 7F 43 D3 78 */	mr r3, r26
/* 81428D80 | 7F 64 DB 78 */	mr r4, r27
/* 81428D84 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81428D88 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81428D8C | 7D 89 03 A6 */	mtctr r12
/* 81428D90 | 4E 80 04 21 */	bctrl
/* 81428D94 | 90 7F 03 28 */	stw r3, 0x328(r31)
/* 81428D98 | 38 1F 03 0C */	addi r0, r31, 0x30c
/* 81428D9C | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 81428DA0 | 38 80 00 01 */	li r4, 0x1
/* 81428DA4 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 81428DA8 | 80 7F 03 04 */	lwz r3, 0x304(r31)
/* 81428DAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428DB0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81428DB4 | 7D 89 03 A6 */	mtctr r12
/* 81428DB8 | 4E 80 04 21 */	bctrl
/* 81428DBC | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 81428DC0 | 38 80 00 01 */	li r4, 0x1
/* 81428DC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81428DC8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81428DCC | 7D 89 03 A6 */	mtctr r12
/* 81428DD0 | 4E 80 04 21 */	bctrl
/* 81428DD4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81428DD8 | 7F FA FB 78 */	mr r26, r31
/* 81428DDC | 3B 7E 07 38 */	addi r27, r30, 0x738
/* 81428DE0 | 41 82 00 08 */	beq .L_81428DE8
/* 81428DE4 | 3B 5F 00 24 */	addi r26, r31, 0x24
.L_81428DE8:
/* 81428DE8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81428DEC | 7F 43 D3 78 */	mr r3, r26
/* 81428DF0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81428DF4 | 7D 89 03 A6 */	mtctr r12
/* 81428DF8 | 4E 80 04 21 */	bctrl
/* 81428DFC | 7F 64 DB 78 */	mr r4, r27
/* 81428E00 | 48 01 DF C9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 81428E04 | 90 7F 04 14 */	stw r3, 0x414(r31)
/* 81428E08 | 7F 43 D3 78 */	mr r3, r26
/* 81428E0C | 7F 64 DB 78 */	mr r4, r27
/* 81428E10 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81428E14 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81428E18 | 7D 89 03 A6 */	mtctr r12
/* 81428E1C | 4E 80 04 21 */	bctrl
/* 81428E20 | 90 7F 04 18 */	stw r3, 0x418(r31)
/* 81428E24 | 7F E3 FB 78 */	mr r3, r31
/* 81428E28 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81428E2C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81428E30 | 7D 89 03 A6 */	mtctr r12
/* 81428E34 | 4E 80 04 21 */	bctrl
/* 81428E38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81428E3C | 48 1D 06 CD */	bl _restgpr_26
/* 81428E40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81428E44 | 7C 08 03 A6 */	mtlr r0
/* 81428E48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81428E4C | 4E 80 00 20 */	blr
.endfn create__Q39textinput12candidatebox12LayoutByNW4RFP12MEMAllocator

# .text:0xD00 | 0x81428E50 | size: 0x4
# textinput::gui::GUIInterface::create()
.fn create__Q39textinput3gui12GUIInterfaceFv, global
/* 81428E50 | 4E 80 00 20 */	blr
.endfn create__Q39textinput3gui12GUIInterfaceFv

# .text:0xD04 | 0x81428E54 | size: 0x360
# textinput::candidatebox::LayoutByNW4R::createAnmPane_(MEMAllocator*)
.fn createAnmPane___Q39textinput12candidatebox12LayoutByNW4RFP12MEMAllocator, global
/* 81428E54 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81428E58 | 7C 08 02 A6 */	mflr r0
/* 81428E5C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81428E60 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81428E64 | 48 1D 06 29 */	bl _savegpr_14
/* 81428E68 | 3F 20 81 66 */	lis r25, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 81428E6C | 3F 60 81 66 */	lis r27, __vt__Q39textinput12candidatebox20CandidateTextAnmPane@ha
/* 81428E70 | 3F 80 81 66 */	lis r28, __vt__Q39textinput12candidatebox22CandidateScrollAnmPane@ha
/* 81428E74 | 3F 00 81 66 */	lis r24, lbl_8165D2F8@ha
/* 81428E78 | 3F A0 81 66 */	lis r29, __vt__Q39textinput12candidatebox12OnOffAnmPane@ha
/* 81428E7C | 3F C0 81 66 */	lis r30, __vt__Q39textinput12candidatebox13PredictWindow@ha
/* 81428E80 | 39 C0 00 01 */	li r14, 0x1
/* 81428E84 | 7C 6F 1B 78 */	mr r15, r3
/* 81428E88 | 7C 90 23 78 */	mr r16, r4
/* 81428E8C | 3B 39 F8 C8 */	addi r25, r25, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 81428E90 | 3B 7B DD 68 */	addi r27, r27, __vt__Q39textinput12candidatebox20CandidateTextAnmPane@l
/* 81428E94 | 3B 9C DD 3C */	addi r28, r28, __vt__Q39textinput12candidatebox22CandidateScrollAnmPane@l
/* 81428E98 | 3B 18 D2 F8 */	addi r24, r24, lbl_8165D2F8@l
/* 81428E9C | 3B BD DD 10 */	addi r29, r29, __vt__Q39textinput12candidatebox12OnOffAnmPane@l
/* 81428EA0 | 3B DE DC E4 */	addi r30, r30, __vt__Q39textinput12candidatebox13PredictWindow@l
/* 81428EA4 | 3A A0 00 00 */	li r21, 0x0
/* 81428EA8 | 3B 40 00 00 */	li r26, 0x0
.L_81428EAC:
/* 81428EAC | 56 A0 32 B2 */	clrlslwi r0, r21, 16, 6
/* 81428EB0 | 3A 60 00 00 */	li r19, 0x0
/* 81428EB4 | 7E 98 02 14 */	add r20, r24, r0
/* 81428EB8 | 7C 18 00 2E */	lwzx r0, r24, r0
/* 81428EBC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81428EC0 | 41 82 01 08 */	beq .L_81428FC8
/* 81428EC4 | 40 80 00 14 */	bge .L_81428ED8
/* 81428EC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81428ECC | 41 82 00 18 */	beq .L_81428EE4
/* 81428ED0 | 40 80 00 88 */	bge .L_81428F58
/* 81428ED4 | 48 00 01 E8 */	b .L_814290BC
.L_81428ED8:
/* 81428ED8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81428EDC | 40 80 01 E0 */	bge .L_814290BC
/* 81428EE0 | 48 00 01 64 */	b .L_81429044
.L_81428EE4:
/* 81428EE4 | 7E 03 83 78 */	mr r3, r16
/* 81428EE8 | 38 80 00 34 */	li r4, 0x34
/* 81428EEC | 48 13 27 7D */	bl fn_8155B668
/* 81428EF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428EF4 | 7C 73 1B 78 */	mr r19, r3
/* 81428EF8 | 41 82 01 C4 */	beq .L_814290BC
/* 81428EFC | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81428F00 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81428F04 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81428F08 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81428F0C | 7D 89 03 A6 */	mtctr r12
/* 81428F10 | 4E 80 04 21 */	bctrl
/* 81428F14 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81428F18 | 38 80 00 10 */	li r4, 0x10
/* 81428F1C | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81428F20 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81428F24 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 81428F28 | 93 53 00 18 */	stw r26, 0x18(r19)
/* 81428F2C | 48 0E 91 31 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81428F30 | 93 73 00 00 */	stw r27, 0x0(r19)
/* 81428F34 | 7E 63 9B 78 */	mr r3, r19
/* 81428F38 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81428F3C | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 81428F40 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81428F44 | 7D 89 03 A6 */	mtctr r12
/* 81428F48 | 4E 80 04 21 */	bctrl
/* 81428F4C | 93 93 00 00 */	stw r28, 0x0(r19)
/* 81428F50 | 93 53 00 30 */	stw r26, 0x30(r19)
/* 81428F54 | 48 00 01 68 */	b .L_814290BC
.L_81428F58:
/* 81428F58 | 7E 03 83 78 */	mr r3, r16
/* 81428F5C | 38 80 00 34 */	li r4, 0x34
/* 81428F60 | 48 13 27 09 */	bl fn_8155B668
/* 81428F64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428F68 | 7C 73 1B 78 */	mr r19, r3
/* 81428F6C | 41 82 01 50 */	beq .L_814290BC
/* 81428F70 | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81428F74 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81428F78 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81428F7C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81428F80 | 7D 89 03 A6 */	mtctr r12
/* 81428F84 | 4E 80 04 21 */	bctrl
/* 81428F88 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81428F8C | 38 80 00 10 */	li r4, 0x10
/* 81428F90 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81428F94 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81428F98 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 81428F9C | 93 53 00 18 */	stw r26, 0x18(r19)
/* 81428FA0 | 48 0E 90 BD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81428FA4 | 93 73 00 00 */	stw r27, 0x0(r19)
/* 81428FA8 | 7E 63 9B 78 */	mr r3, r19
/* 81428FAC | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81428FB0 | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 81428FB4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81428FB8 | 7D 89 03 A6 */	mtctr r12
/* 81428FBC | 4E 80 04 21 */	bctrl
/* 81428FC0 | 91 D3 00 30 */	stw r14, 0x30(r19)
/* 81428FC4 | 48 00 00 F8 */	b .L_814290BC
.L_81428FC8:
/* 81428FC8 | 7E 03 83 78 */	mr r3, r16
/* 81428FCC | 38 80 00 34 */	li r4, 0x34
/* 81428FD0 | 48 13 26 99 */	bl fn_8155B668
/* 81428FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81428FD8 | 7C 73 1B 78 */	mr r19, r3
/* 81428FDC | 41 82 00 E0 */	beq .L_814290BC
/* 81428FE0 | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81428FE4 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81428FE8 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81428FEC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81428FF0 | 7D 89 03 A6 */	mtctr r12
/* 81428FF4 | 4E 80 04 21 */	bctrl
/* 81428FF8 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81428FFC | 38 0F 03 40 */	addi r0, r15, 0x340
/* 81429000 | 38 80 00 10 */	li r4, 0x10
/* 81429004 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81429008 | 38 73 00 08 */	addi r3, r19, 0x8
/* 8142900C | 93 53 00 14 */	stw r26, 0x14(r19)
/* 81429010 | 90 13 00 18 */	stw r0, 0x18(r19)
/* 81429014 | 48 0E 90 49 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81429018 | 93 73 00 00 */	stw r27, 0x0(r19)
/* 8142901C | 7E 63 9B 78 */	mr r3, r19
/* 81429020 | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 81429024 | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 81429028 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142902C | 7D 89 03 A6 */	mtctr r12
/* 81429030 | 4E 80 04 21 */	bctrl
/* 81429034 | 93 B3 00 00 */	stw r29, 0x0(r19)
/* 81429038 | 38 00 00 02 */	li r0, 0x2
/* 8142903C | 90 13 00 30 */	stw r0, 0x30(r19)
/* 81429040 | 48 00 00 7C */	b .L_814290BC
.L_81429044:
/* 81429044 | 7E 03 83 78 */	mr r3, r16
/* 81429048 | 38 80 00 34 */	li r4, 0x34
/* 8142904C | 48 13 26 1D */	bl fn_8155B668
/* 81429050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81429054 | 7C 73 1B 78 */	mr r19, r3
/* 81429058 | 41 82 00 64 */	beq .L_814290BC
/* 8142905C | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81429060 | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81429064 | 38 94 00 04 */	addi r4, r20, 0x4
/* 81429068 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142906C | 7D 89 03 A6 */	mtctr r12
/* 81429070 | 4E 80 04 21 */	bctrl
/* 81429074 | 93 33 00 00 */	stw r25, 0x0(r19)
/* 81429078 | 38 0F 04 10 */	addi r0, r15, 0x410
/* 8142907C | 38 80 00 10 */	li r4, 0x10
/* 81429080 | 90 73 00 04 */	stw r3, 0x4(r19)
/* 81429084 | 38 73 00 08 */	addi r3, r19, 0x8
/* 81429088 | 93 53 00 14 */	stw r26, 0x14(r19)
/* 8142908C | 90 13 00 18 */	stw r0, 0x18(r19)
/* 81429090 | 48 0E 8F CD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81429094 | 93 73 00 00 */	stw r27, 0x0(r19)
/* 81429098 | 7E 63 9B 78 */	mr r3, r19
/* 8142909C | 93 53 00 2C */	stw r26, 0x2c(r19)
/* 814290A0 | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 814290A4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814290A8 | 7D 89 03 A6 */	mtctr r12
/* 814290AC | 4E 80 04 21 */	bctrl
/* 814290B0 | 93 D3 00 00 */	stw r30, 0x0(r19)
/* 814290B4 | 38 00 00 03 */	li r0, 0x3
/* 814290B8 | 90 13 00 30 */	stw r0, 0x30(r19)
.L_814290BC:
/* 814290BC | 7E 64 9B 78 */	mr r4, r19
/* 814290C0 | 38 6F 00 90 */	addi r3, r15, 0x90
/* 814290C4 | 48 0E 8F B1 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 814290C8 | 82 D4 00 1C */	lwz r22, 0x1c(r20)
/* 814290CC | 3A 40 00 00 */	li r18, 0x0
/* 814290D0 | 83 F4 00 18 */	lwz r31, 0x18(r20)
/* 814290D4 | 48 00 00 B0 */	b .L_81429184
.L_814290D8:
/* 814290D8 | 80 6F 00 30 */	lwz r3, 0x30(r15)
/* 814290DC | 56 40 13 BA */	clrlslwi r0, r18, 16, 2
/* 814290E0 | 7E F4 02 14 */	add r23, r20, r0
/* 814290E4 | 38 80 00 00 */	li r4, 0x0
/* 814290E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814290EC | 38 C0 00 00 */	li r6, 0x0
/* 814290F0 | 80 B7 00 20 */	lwz r5, 0x20(r23)
/* 814290F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814290F8 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 814290FC | 7D 89 03 A6 */	mtctr r12
/* 81429100 | 4E 80 04 21 */	bctrl
/* 81429104 | 81 8F 00 24 */	lwz r12, 0x24(r15)
/* 81429108 | 7C 71 1B 78 */	mr r17, r3
/* 8142910C | 38 6F 00 24 */	addi r3, r15, 0x24
/* 81429110 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81429114 | 7D 89 03 A6 */	mtctr r12
/* 81429118 | 4E 80 04 21 */	bctrl
/* 8142911C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429120 | 7E 24 8B 78 */	mr r4, r17
/* 81429124 | 80 AF 00 30 */	lwz r5, 0x30(r15)
/* 81429128 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142912C | 7D 89 03 A6 */	mtctr r12
/* 81429130 | 4E 80 04 21 */	bctrl
/* 81429134 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 81429138 | 7C 66 1B 78 */	mr r6, r3
/* 8142913C | 40 82 00 24 */	bne .L_81429160
/* 81429140 | 80 B7 00 20 */	lwz r5, 0x20(r23)
/* 81429144 | 7E 63 9B 78 */	mr r3, r19
/* 81429148 | 7E 04 83 78 */	mr r4, r16
/* 8142914C | 38 E0 00 00 */	li r7, 0x0
/* 81429150 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81429154 | 39 00 00 01 */	li r8, 0x1
/* 81429158 | 48 00 DE 09 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 8142915C | 48 00 00 24 */	b .L_81429180
.L_81429160:
/* 81429160 | 80 B7 00 20 */	lwz r5, 0x20(r23)
/* 81429164 | 7E 63 9B 78 */	mr r3, r19
/* 81429168 | 7E 04 83 78 */	mr r4, r16
/* 8142916C | 7E C7 B3 78 */	mr r7, r22
/* 81429170 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81429174 | 39 00 00 00 */	li r8, 0x0
/* 81429178 | 39 20 00 01 */	li r9, 0x1
/* 8142917C | 48 00 DE 99 */	bl forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb
.L_81429180:
/* 81429180 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_81429184:
/* 81429184 | 56 40 04 3E */	clrlwi r0, r18, 16
/* 81429188 | 7C 00 F8 40 */	cmplw r0, r31
/* 8142918C | 41 80 FF 4C */	blt .L_814290D8
/* 81429190 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 81429194 | 28 15 00 1A */	cmplwi r21, 0x1a
/* 81429198 | 41 80 FD 14 */	blt .L_81428EAC
/* 8142919C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814291A0 | 48 1D 03 39 */	bl _restgpr_14
/* 814291A4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814291A8 | 7C 08 03 A6 */	mtlr r0
/* 814291AC | 38 21 00 50 */	addi r1, r1, 0x50
/* 814291B0 | 4E 80 00 20 */	blr
.endfn createAnmPane___Q39textinput12candidatebox12LayoutByNW4RFP12MEMAllocator

# .text:0x1064 | 0x814291B4 | size: 0xC
# textinput::candidatebox::CandidateTextAnmPane::init()
.fn init__Q39textinput12candidatebox20CandidateTextAnmPaneFv, global
/* 814291B4 | 38 00 00 00 */	li r0, 0x0
/* 814291B8 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 814291BC | 4E 80 00 20 */	blr
.endfn init__Q39textinput12candidatebox20CandidateTextAnmPaneFv

# .text:0x1070 | 0x814291C0 | size: 0x58
# textinput::candidatebox::CandidateTextAnmPane::~CandidateTextAnmPane()
.fn __dt__Q39textinput12candidatebox20CandidateTextAnmPaneFv, global
/* 814291C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814291C4 | 7C 08 02 A6 */	mflr r0
/* 814291C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814291CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814291D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814291D4 | 7C 9F 23 78 */	mr r31, r4
/* 814291D8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814291DC | 7C 7E 1B 78 */	mr r30, r3
/* 814291E0 | 41 82 00 1C */	beq .L_814291FC
/* 814291E4 | 38 80 00 00 */	li r4, 0x0
/* 814291E8 | 48 00 DD 39 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 814291EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814291F0 | 40 81 00 0C */	ble .L_814291FC
/* 814291F4 | 7F C3 F3 78 */	mr r3, r30
/* 814291F8 | 48 1C EE ED */	bl __dl__FPv
.L_814291FC:
/* 814291FC | 7F C3 F3 78 */	mr r3, r30
/* 81429200 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429204 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81429208 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142920C | 7C 08 03 A6 */	mtlr r0
/* 81429210 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429214 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox20CandidateTextAnmPaneFv

# .text:0x10C8 | 0x81429218 | size: 0x3CC
# textinput::candidatebox::LayoutByNW4R::init()
.fn init__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429218 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142921C | 7C 08 02 A6 */	mflr r0
/* 81429220 | 3C 80 81 66 */	lis r4, lbl_8165DA18@ha
/* 81429224 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81429228 | 38 84 DA 18 */	addi r4, r4, lbl_8165DA18@l
/* 8142922C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81429230 | 7C 7F 1B 78 */	mr r31, r3
/* 81429234 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81429238 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142923C | 81 83 00 24 */	lwz r12, 0x24(r3)
/* 81429240 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81429244 | 7D 89 03 A6 */	mtctr r12
/* 81429248 | 38 63 00 24 */	addi r3, r3, 0x24
/* 8142924C | 4E 80 04 21 */	bctrl
/* 81429250 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429254 | 38 80 00 00 */	li r4, 0x0
/* 81429258 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142925C | 7D 89 03 A6 */	mtctr r12
/* 81429260 | 4E 80 04 21 */	bctrl
/* 81429264 | 38 00 00 00 */	li r0, 0x0
/* 81429268 | 7F E3 FB 78 */	mr r3, r31
/* 8142926C | 98 1F 00 19 */	stb r0, 0x19(r31)
/* 81429270 | 38 80 00 01 */	li r4, 0x1
/* 81429274 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429278 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8142927C | 7D 89 03 A6 */	mtctr r12
/* 81429280 | 4E 80 04 21 */	bctrl
/* 81429284 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429288 | 7F E3 FB 78 */	mr r3, r31
/* 8142928C | 38 80 00 00 */	li r4, 0x0
/* 81429290 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81429294 | 7D 89 03 A6 */	mtctr r12
/* 81429298 | 4E 80 04 21 */	bctrl
/* 8142929C | 88 1F 00 8C */	lbz r0, 0x8c(r31)
/* 814292A0 | 7F FD FB 78 */	mr r29, r31
/* 814292A4 | 3B C0 00 00 */	li r30, 0x0
/* 814292A8 | 60 00 00 10 */	ori r0, r0, 0x10
/* 814292AC | 98 1F 00 8C */	stb r0, 0x8c(r31)
.L_814292B0:
/* 814292B0 | 80 7D 01 1C */	lwz r3, 0x11c(r29)
/* 814292B4 | 38 8D 93 88 */	li r4, lbl_816973C8@sda21
/* 814292B8 | 38 A0 00 00 */	li r5, 0x0
/* 814292BC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814292C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814292C4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814292C8 | 7D 89 03 A6 */	mtctr r12
/* 814292CC | 4E 80 04 21 */	bctrl
/* 814292D0 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 814292D4 | 38 80 00 01 */	li r4, 0x1
/* 814292D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814292DC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814292E0 | 7D 89 03 A6 */	mtctr r12
/* 814292E4 | 4E 80 04 21 */	bctrl
/* 814292E8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814292EC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814292F0 | 28 1E 00 14 */	cmplwi r30, 0x14
/* 814292F4 | 41 80 FF BC */	blt .L_814292B0
/* 814292F8 | C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 814292FC | C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 81429300 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 81429304 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81429308 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142930C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81429310 | D0 1F 02 DC */	stfs f0, 0x2dc(r31)
/* 81429314 | D0 3F 02 E0 */	stfs f1, 0x2e0(r31)
/* 81429318 | 40 82 00 50 */	bne .L_81429368
/* 8142931C | 80 7F 03 4C */	lwz r3, 0x34c(r31)
/* 81429320 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429324 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429328 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8142932C | 7D 89 03 A6 */	mtctr r12
/* 81429330 | 4E 80 04 21 */	bctrl
/* 81429334 | 38 BF 03 7C */	addi r5, r31, 0x37c
/* 81429338 | 38 80 00 00 */	li r4, 0x0
/* 8142933C | 48 0F EA E1 */	bl fn_81527E1C
/* 81429340 | 80 7F 03 44 */	lwz r3, 0x344(r31)
/* 81429344 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429348 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142934C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81429350 | 7D 89 03 A6 */	mtctr r12
/* 81429354 | 4E 80 04 21 */	bctrl
/* 81429358 | 38 BF 03 BC */	addi r5, r31, 0x3bc
/* 8142935C | 38 80 00 00 */	li r4, 0x0
/* 81429360 | 48 0F EA BD */	bl fn_81527E1C
/* 81429364 | 48 00 00 A0 */	b .L_81429404
.L_81429368:
/* 81429368 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8142936C | 40 82 00 50 */	bne .L_814293BC
/* 81429370 | 80 7F 03 4C */	lwz r3, 0x34c(r31)
/* 81429374 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429378 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142937C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81429380 | 7D 89 03 A6 */	mtctr r12
/* 81429384 | 4E 80 04 21 */	bctrl
/* 81429388 | 38 BF 03 9C */	addi r5, r31, 0x39c
/* 8142938C | 38 80 00 00 */	li r4, 0x0
/* 81429390 | 48 0F EA 8D */	bl fn_81527E1C
/* 81429394 | 80 7F 03 44 */	lwz r3, 0x344(r31)
/* 81429398 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142939C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814293A0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814293A4 | 7D 89 03 A6 */	mtctr r12
/* 814293A8 | 4E 80 04 21 */	bctrl
/* 814293AC | 38 BF 03 DC */	addi r5, r31, 0x3dc
/* 814293B0 | 38 80 00 00 */	li r4, 0x0
/* 814293B4 | 48 0F EA 69 */	bl fn_81527E1C
/* 814293B8 | 48 00 00 4C */	b .L_81429404
.L_814293BC:
/* 814293BC | 80 7F 03 4C */	lwz r3, 0x34c(r31)
/* 814293C0 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814293C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814293C8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814293CC | 7D 89 03 A6 */	mtctr r12
/* 814293D0 | 4E 80 04 21 */	bctrl
/* 814293D4 | 38 BF 03 5C */	addi r5, r31, 0x35c
/* 814293D8 | 38 80 00 00 */	li r4, 0x0
/* 814293DC | 48 0F EA 41 */	bl fn_81527E1C
/* 814293E0 | 80 7F 03 44 */	lwz r3, 0x344(r31)
/* 814293E4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814293E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814293EC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814293F0 | 7D 89 03 A6 */	mtctr r12
/* 814293F4 | 4E 80 04 21 */	bctrl
/* 814293F8 | 38 BF 03 BC */	addi r5, r31, 0x3bc
/* 814293FC | 38 80 00 00 */	li r4, 0x0
/* 81429400 | 48 0F EA 1D */	bl fn_81527E1C
.L_81429404:
/* 81429404 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 81429408 | 38 80 00 09 */	li r4, 0x9
/* 8142940C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429410 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429414 | 7D 89 03 A6 */	mtctr r12
/* 81429418 | 4E 80 04 21 */	bctrl
/* 8142941C | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 81429420 | 38 80 00 00 */	li r4, 0x0
/* 81429424 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429428 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142942C | 7D 89 03 A6 */	mtctr r12
/* 81429430 | 4E 80 04 21 */	bctrl
/* 81429434 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 81429438 | 38 9F 00 3C */	addi r4, r31, 0x3c
/* 8142943C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429440 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81429444 | 7D 89 03 A6 */	mtctr r12
/* 81429448 | 4E 80 04 21 */	bctrl
/* 8142944C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 81429450 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81429454 | 40 82 00 94 */	bne .L_814294E8
/* 81429458 | 80 7F 04 14 */	lwz r3, 0x414(r31)
/* 8142945C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429460 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81429464 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81429468 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142946C | 80 7F 04 08 */	lwz r3, 0x408(r31)
/* 81429470 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429474 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81429478 | 7D 89 03 A6 */	mtctr r12
/* 8142947C | 4E 80 04 21 */	bctrl
/* 81429480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81429484 | 41 82 00 20 */	beq .L_814294A4
/* 81429488 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 8142948C | 38 80 00 0A */	li r4, 0xa
/* 81429490 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429494 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429498 | 7D 89 03 A6 */	mtctr r12
/* 8142949C | 4E 80 04 21 */	bctrl
/* 814294A0 | 48 00 00 1C */	b .L_814294BC
.L_814294A4:
/* 814294A4 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 814294A8 | 38 80 00 00 */	li r4, 0x0
/* 814294AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814294B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814294B4 | 7D 89 03 A6 */	mtctr r12
/* 814294B8 | 4E 80 04 21 */	bctrl
.L_814294BC:
/* 814294BC | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814294C0 | 3C 80 81 66 */	lis r4, lbl_8165DA28@ha
/* 814294C4 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 814294C8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814294CC | 38 84 DA 28 */	addi r4, r4, lbl_8165DA28@l
/* 814294D0 | 7D 89 03 A6 */	mtctr r12
/* 814294D4 | 4E 80 04 21 */	bctrl
/* 814294D8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814294DC | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814294E0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 814294E4 | 48 00 00 E4 */	b .L_814295C8
.L_814294E8:
/* 814294E8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814294EC | 40 82 00 B0 */	bne .L_8142959C
/* 814294F0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814294F4 | 7F E3 FB 78 */	mr r3, r31
/* 814294F8 | 38 80 00 01 */	li r4, 0x1
/* 814294FC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81429500 | 7D 89 03 A6 */	mtctr r12
/* 81429504 | 4E 80 04 21 */	bctrl
/* 81429508 | 80 9F 04 14 */	lwz r4, 0x414(r31)
/* 8142950C | 7F E3 FB 78 */	mr r3, r31
/* 81429510 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 81429514 | 88 04 00 CF */	lbz r0, 0xcf(r4)
/* 81429518 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142951C | 60 00 00 01 */	ori r0, r0, 0x1
/* 81429520 | 98 04 00 CF */	stb r0, 0xcf(r4)
/* 81429524 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429528 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8142952C | 7D 89 03 A6 */	mtctr r12
/* 81429530 | 4E 80 04 21 */	bctrl
/* 81429534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81429538 | 41 82 00 20 */	beq .L_81429558
/* 8142953C | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 81429540 | 38 80 00 0A */	li r4, 0xa
/* 81429544 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429548 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142954C | 7D 89 03 A6 */	mtctr r12
/* 81429550 | 4E 80 04 21 */	bctrl
/* 81429554 | 48 00 00 1C */	b .L_81429570
.L_81429558:
/* 81429558 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 8142955C | 38 80 00 00 */	li r4, 0x0
/* 81429560 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429564 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429568 | 7D 89 03 A6 */	mtctr r12
/* 8142956C | 4E 80 04 21 */	bctrl
.L_81429570:
/* 81429570 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 81429574 | 3C 80 81 66 */	lis r4, lbl_8165DA28@ha
/* 81429578 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8142957C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81429580 | 38 84 DA 28 */	addi r4, r4, lbl_8165DA28@l
/* 81429584 | 7D 89 03 A6 */	mtctr r12
/* 81429588 | 4E 80 04 21 */	bctrl
/* 8142958C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81429590 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81429594 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81429598 | 48 00 00 30 */	b .L_814295C8
.L_8142959C:
/* 8142959C | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814295A0 | 3C 80 81 66 */	lis r4, lbl_8165DA28@ha
/* 814295A4 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 814295A8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814295AC | 38 84 DA 28 */	addi r4, r4, lbl_8165DA28@l
/* 814295B0 | 7D 89 03 A6 */	mtctr r12
/* 814295B4 | 4E 80 04 21 */	bctrl
/* 814295B8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814295BC | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814295C0 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814295C4 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814295C8:
/* 814295C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814295CC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814295D0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814295D4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814295D8 | 7C 08 03 A6 */	mtlr r0
/* 814295DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814295E0 | 4E 80 00 20 */	blr
.endfn init__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1494 | 0x814295E4 | size: 0xB0
# textinput::candidatebox::LayoutByNW4R::draw()
.fn draw__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 814295E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814295E8 | 7C 08 02 A6 */	mflr r0
/* 814295EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814295F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814295F4 | 3F E0 81 66 */	lis r31, lbl_8165DA38@ha
/* 814295F8 | 38 9F DA 38 */	addi r4, r31, lbl_8165DA38@l
/* 814295FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81429600 | 7C 7E 1B 78 */	mr r30, r3
/* 81429604 | 81 83 00 24 */	lwz r12, 0x24(r3)
/* 81429608 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142960C | 7D 89 03 A6 */	mtctr r12
/* 81429610 | 38 63 00 24 */	addi r3, r3, 0x24
/* 81429614 | 4E 80 04 21 */	bctrl
/* 81429618 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142961C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81429620 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81429624 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 81429628 | 48 00 CE A9 */	bl draw__Q39textinput11nw4rmanager6LayoutFv
/* 8142962C | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 81429630 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 81429634 | 38 9F DA 38 */	addi r4, r31, lbl_8165DA38@l
/* 81429638 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142963C | 7D 89 03 A6 */	mtctr r12
/* 81429640 | 4E 80 04 21 */	bctrl
/* 81429644 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81429648 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142964C | 60 00 00 01 */	ori r0, r0, 0x1
/* 81429650 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81429654 | 7F C3 F3 78 */	mr r3, r30
/* 81429658 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142965C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81429660 | 7D 89 03 A6 */	mtctr r12
/* 81429664 | 4E 80 04 21 */	bctrl
/* 81429668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142966C | 40 82 00 10 */	bne .L_8142967C
/* 81429670 | 38 7E 00 E4 */	addi r3, r30, 0xe4
/* 81429674 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 81429678 | 48 00 2A 9D */	bl Draw__Q39textinput12candidatebox10UITextAreaFRCQ34nw4r3lyt8DrawInfo
.L_8142967C:
/* 8142967C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81429680 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429684 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81429688 | 7C 08 03 A6 */	mtlr r0
/* 8142968C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429690 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1544 | 0x81429694 | size: 0xF0
# textinput::candidatebox::LayoutByNW4R::calc()
.fn calc__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429694 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81429698 | 7C 08 02 A6 */	mflr r0
/* 8142969C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814296A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814296A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814296A8 | 7C 7E 1B 78 */	mr r30, r3
/* 814296AC | 38 63 00 24 */	addi r3, r3, 0x24
/* 814296B0 | 48 00 D0 D5 */	bl calc__Q39textinput11nw4rmanager6LayoutFv
/* 814296B4 | 81 9E 00 FC */	lwz r12, 0xfc(r30)
/* 814296B8 | 38 7E 00 FC */	addi r3, r30, 0xfc
/* 814296BC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814296C0 | 7D 89 03 A6 */	mtctr r12
/* 814296C4 | 4E 80 04 21 */	bctrl
/* 814296C8 | 81 9E 00 FC */	lwz r12, 0xfc(r30)
/* 814296CC | 38 7E 00 FC */	addi r3, r30, 0xfc
/* 814296D0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814296D4 | 7D 89 03 A6 */	mtctr r12
/* 814296D8 | 4E 80 04 21 */	bctrl
/* 814296DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814296E0 | 41 82 00 1C */	beq .L_814296FC
/* 814296E4 | 81 9E 00 FC */	lwz r12, 0xfc(r30)
/* 814296E8 | 38 7E 00 FC */	addi r3, r30, 0xfc
/* 814296EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814296F0 | 7D 89 03 A6 */	mtctr r12
/* 814296F4 | 4E 80 04 21 */	bctrl
/* 814296F8 | D0 3E 02 C8 */	stfs f1, 0x2c8(r30)
.L_814296FC:
/* 814296FC | 38 7E 00 E4 */	addi r3, r30, 0xe4
/* 81429700 | 48 00 21 BD */	bl CalcPaneLocate___Q39textinput12candidatebox10UITextAreaFv
/* 81429704 | 88 1E 00 AC */	lbz r0, 0xac(r30)
/* 81429708 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142970C | 41 82 00 60 */	beq .L_8142976C
/* 81429710 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 81429714 | 3F E0 81 66 */	lis r31, lbl_8165DA38@ha
/* 81429718 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 8142971C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81429720 | 38 9F DA 38 */	addi r4, r31, lbl_8165DA38@l
/* 81429724 | 7D 89 03 A6 */	mtctr r12
/* 81429728 | 4E 80 04 21 */	bctrl
/* 8142972C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429730 | 38 80 00 00 */	li r4, 0x0
/* 81429734 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81429738 | 7D 89 03 A6 */	mtctr r12
/* 8142973C | 4E 80 04 21 */	bctrl
/* 81429740 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 81429744 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 81429748 | 38 9F DA 38 */	addi r4, r31, lbl_8165DA38@l
/* 8142974C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81429750 | 7D 89 03 A6 */	mtctr r12
/* 81429754 | 4E 80 04 21 */	bctrl
/* 81429758 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142975C | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 81429760 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81429764 | 7D 89 03 A6 */	mtctr r12
/* 81429768 | 4E 80 04 21 */	bctrl
.L_8142976C:
/* 8142976C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81429770 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429774 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81429778 | 7C 08 03 A6 */	mtlr r0
/* 8142977C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429780 | 4E 80 00 20 */	blr
.endfn calc__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1634 | 0x81429784 | size: 0x3D8
# textinput::candidatebox::LayoutByNW4R::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput12candidatebox12LayoutByNW4RFQ29textinput8Language, global
/* 81429784 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81429788 | 7C 08 02 A6 */	mflr r0
/* 8142978C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81429790 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81429794 | 7C 7F 1B 78 */	mr r31, r3
/* 81429798 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 8142979C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814297A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814297A4 | 7D 89 03 A6 */	mtctr r12
/* 814297A8 | 4E 80 04 21 */	bctrl
/* 814297AC | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814297B0 | 3C 80 81 66 */	lis r4, lbl_8165DA08@ha
/* 814297B4 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 814297B8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814297BC | 38 84 DA 08 */	addi r4, r4, lbl_8165DA08@l
/* 814297C0 | 7D 89 03 A6 */	mtctr r12
/* 814297C4 | 4E 80 04 21 */	bctrl
/* 814297C8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814297CC | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 814297D0 | 80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 814297D4 | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814297D8 | 80 83 00 30 */	lwz r4, 0x30(r3)
/* 814297DC | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814297E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814297E4 | 90 A1 00 20 */	stw r5, 0x20(r1)
/* 814297E8 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 814297EC | 90 61 00 28 */	stw r3, 0x28(r1)
/* 814297F0 | 41 81 00 68 */	bgt .L_81429858
/* 814297F4 | 7F E3 FB 78 */	mr r3, r31
/* 814297F8 | 4B FF EC AD */	bl checkValidation__Q39textinput12candidatebox4BaseFv
/* 814297FC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429800 | 7F E3 FB 78 */	mr r3, r31
/* 81429804 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81429808 | 7D 89 03 A6 */	mtctr r12
/* 8142980C | 4E 80 04 21 */	bctrl
/* 81429810 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81429814 | 41 82 00 20 */	beq .L_81429834
/* 81429818 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 8142981C | 38 80 00 0A */	li r4, 0xa
/* 81429820 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429824 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429828 | 7D 89 03 A6 */	mtctr r12
/* 8142982C | 4E 80 04 21 */	bctrl
/* 81429830 | 48 00 00 1C */	b .L_8142984C
.L_81429834:
/* 81429834 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 81429838 | 38 80 00 00 */	li r4, 0x0
/* 8142983C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429840 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429844 | 7D 89 03 A6 */	mtctr r12
/* 81429848 | 4E 80 04 21 */	bctrl
.L_8142984C:
/* 8142984C | C0 02 89 94 */	lfs f0, lbl_81694D94@sda21(r0)
/* 81429850 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 81429854 | 48 00 00 0C */	b .L_81429860
.L_81429858:
/* 81429858 | C0 02 89 98 */	lfs f0, lbl_81694D98@sda21(r0)
/* 8142985C | D0 01 00 20 */	stfs f0, 0x20(r1)
.L_81429860:
/* 81429860 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 81429864 | 3C 80 81 66 */	lis r4, lbl_8165DA08@ha
/* 81429868 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8142986C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81429870 | 38 84 DA 08 */	addi r4, r4, lbl_8165DA08@l
/* 81429874 | 7D 89 03 A6 */	mtctr r12
/* 81429878 | 4E 80 04 21 */	bctrl
/* 8142987C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81429880 | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81429884 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81429888 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8142988C | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 81429890 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81429894 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81429898 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8142989C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814298A0 | 40 82 00 E4 */	bne .L_81429984
/* 814298A4 | 38 00 00 04 */	li r0, 0x4
/* 814298A8 | 7F E4 FB 78 */	mr r4, r31
/* 814298AC | C0 42 89 9C */	lfs f2, lbl_81694D9C@sda21(r0)
/* 814298B0 | 7C 09 03 A6 */	mtctr r0
.L_814298B4:
/* 814298B4 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 814298B8 | 80 64 01 1C */	lwz r3, 0x11c(r4)
/* 814298BC | EC 80 00 B2 */	fmuls f4, f0, f2
/* 814298C0 | C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 814298C4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814298C8 | EC 60 00 B2 */	fmuls f3, f0, f2
/* 814298CC | D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 814298D0 | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 814298D4 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 814298D8 | 80 64 01 20 */	lwz r3, 0x120(r4)
/* 814298DC | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 814298E0 | ED 00 00 B2 */	fmuls f8, f0, f2
/* 814298E4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814298E8 | EC A1 00 B2 */	fmuls f5, f1, f2
/* 814298EC | D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 814298F0 | D1 03 00 E4 */	stfs f8, 0xe4(r3)
/* 814298F4 | D0 A3 00 E8 */	stfs f5, 0xe8(r3)
/* 814298F8 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 814298FC | 80 64 01 24 */	lwz r3, 0x124(r4)
/* 81429900 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429904 | EC E0 00 B2 */	fmuls f7, f0, f2
/* 81429908 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142990C | EC 01 00 B2 */	fmuls f0, f1, f2
/* 81429910 | D0 81 00 18 */	stfs f4, 0x18(r1)
/* 81429914 | D0 E3 00 E4 */	stfs f7, 0xe4(r3)
/* 81429918 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8142991C | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429920 | 80 64 01 28 */	lwz r3, 0x128(r4)
/* 81429924 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429928 | EC C0 00 B2 */	fmuls f6, f0, f2
/* 8142992C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429930 | EC 61 00 B2 */	fmuls f3, f1, f2
/* 81429934 | D1 01 00 18 */	stfs f8, 0x18(r1)
/* 81429938 | D0 C3 00 E4 */	stfs f6, 0xe4(r3)
/* 8142993C | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 81429940 | 80 64 01 2C */	lwz r3, 0x12c(r4)
/* 81429944 | 38 84 00 14 */	addi r4, r4, 0x14
/* 81429948 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 8142994C | D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 81429950 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429954 | EC 80 00 B2 */	fmuls f4, f0, f2
/* 81429958 | D0 E1 00 18 */	stfs f7, 0x18(r1)
/* 8142995C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429960 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 81429964 | D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 81429968 | D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8142996C | D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 81429970 | D0 81 00 18 */	stfs f4, 0x18(r1)
/* 81429974 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81429978 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8142997C | 42 00 FF 38 */	bdnz .L_814298B4
/* 81429980 | 48 00 01 C8 */	b .L_81429B48
.L_81429984:
/* 81429984 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81429988 | 40 82 00 E4 */	bne .L_81429A6C
/* 8142998C | 38 00 00 04 */	li r0, 0x4
/* 81429990 | 7F E4 FB 78 */	mr r4, r31
/* 81429994 | C0 42 89 A0 */	lfs f2, lbl_81694DA0@sda21(r0)
/* 81429998 | 7C 09 03 A6 */	mtctr r0
.L_8142999C:
/* 8142999C | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 814299A0 | 80 64 01 1C */	lwz r3, 0x11c(r4)
/* 814299A4 | EC 80 00 B2 */	fmuls f4, f0, f2
/* 814299A8 | C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 814299AC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814299B0 | EC 60 00 B2 */	fmuls f3, f0, f2
/* 814299B4 | D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 814299B8 | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 814299BC | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 814299C0 | 80 64 01 20 */	lwz r3, 0x120(r4)
/* 814299C4 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 814299C8 | ED 00 00 B2 */	fmuls f8, f0, f2
/* 814299CC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814299D0 | EC A1 00 B2 */	fmuls f5, f1, f2
/* 814299D4 | D0 61 00 14 */	stfs f3, 0x14(r1)
/* 814299D8 | D1 03 00 E4 */	stfs f8, 0xe4(r3)
/* 814299DC | D0 A3 00 E8 */	stfs f5, 0xe8(r3)
/* 814299E0 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 814299E4 | 80 64 01 24 */	lwz r3, 0x124(r4)
/* 814299E8 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 814299EC | EC E0 00 B2 */	fmuls f7, f0, f2
/* 814299F0 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 814299F4 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 814299F8 | D0 81 00 10 */	stfs f4, 0x10(r1)
/* 814299FC | D0 E3 00 E4 */	stfs f7, 0xe4(r3)
/* 81429A00 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 81429A04 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429A08 | 80 64 01 28 */	lwz r3, 0x128(r4)
/* 81429A0C | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429A10 | EC C0 00 B2 */	fmuls f6, f0, f2
/* 81429A14 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429A18 | EC 61 00 B2 */	fmuls f3, f1, f2
/* 81429A1C | D1 01 00 10 */	stfs f8, 0x10(r1)
/* 81429A20 | D0 C3 00 E4 */	stfs f6, 0xe4(r3)
/* 81429A24 | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 81429A28 | 80 64 01 2C */	lwz r3, 0x12c(r4)
/* 81429A2C | 38 84 00 14 */	addi r4, r4, 0x14
/* 81429A30 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429A34 | D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 81429A38 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429A3C | EC 80 00 B2 */	fmuls f4, f0, f2
/* 81429A40 | D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 81429A44 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429A48 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 81429A4C | D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 81429A50 | D0 61 00 14 */	stfs f3, 0x14(r1)
/* 81429A54 | D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 81429A58 | D0 81 00 10 */	stfs f4, 0x10(r1)
/* 81429A5C | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81429A60 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 81429A64 | 42 00 FF 38 */	bdnz .L_8142999C
/* 81429A68 | 48 00 00 E0 */	b .L_81429B48
.L_81429A6C:
/* 81429A6C | 38 00 00 04 */	li r0, 0x4
/* 81429A70 | 7F E4 FB 78 */	mr r4, r31
/* 81429A74 | C0 42 89 A4 */	lfs f2, lbl_81694DA4@sda21(r0)
/* 81429A78 | 7C 09 03 A6 */	mtctr r0
.L_81429A7C:
/* 81429A7C | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429A80 | 80 64 01 1C */	lwz r3, 0x11c(r4)
/* 81429A84 | EC 80 00 B2 */	fmuls f4, f0, f2
/* 81429A88 | C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 81429A8C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429A90 | EC 60 00 B2 */	fmuls f3, f0, f2
/* 81429A94 | D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 81429A98 | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 81429A9C | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429AA0 | 80 64 01 20 */	lwz r3, 0x120(r4)
/* 81429AA4 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429AA8 | ED 00 00 B2 */	fmuls f8, f0, f2
/* 81429AAC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429AB0 | EC A1 00 B2 */	fmuls f5, f1, f2
/* 81429AB4 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 81429AB8 | D1 03 00 E4 */	stfs f8, 0xe4(r3)
/* 81429ABC | D0 A3 00 E8 */	stfs f5, 0xe8(r3)
/* 81429AC0 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429AC4 | 80 64 01 24 */	lwz r3, 0x124(r4)
/* 81429AC8 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429ACC | EC E0 00 B2 */	fmuls f7, f0, f2
/* 81429AD0 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429AD4 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 81429AD8 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 81429ADC | D0 E3 00 E4 */	stfs f7, 0xe4(r3)
/* 81429AE0 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 81429AE4 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429AE8 | 80 64 01 28 */	lwz r3, 0x128(r4)
/* 81429AEC | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429AF0 | EC C0 00 B2 */	fmuls f6, f0, f2
/* 81429AF4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429AF8 | EC 61 00 B2 */	fmuls f3, f1, f2
/* 81429AFC | D1 01 00 08 */	stfs f8, 0x8(r1)
/* 81429B00 | D0 C3 00 E4 */	stfs f6, 0xe4(r3)
/* 81429B04 | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 81429B08 | 80 64 01 2C */	lwz r3, 0x12c(r4)
/* 81429B0C | 38 84 00 14 */	addi r4, r4, 0x14
/* 81429B10 | C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 81429B14 | D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 81429B18 | C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 81429B1C | EC 80 00 B2 */	fmuls f4, f0, f2
/* 81429B20 | D0 E1 00 08 */	stfs f7, 0x8(r1)
/* 81429B24 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429B28 | EC 01 00 B2 */	fmuls f0, f1, f2
/* 81429B2C | D0 C1 00 08 */	stfs f6, 0x8(r1)
/* 81429B30 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 81429B34 | D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 81429B38 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 81429B3C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81429B40 | D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 81429B44 | 42 00 FF 38 */	bdnz .L_81429A7C
.L_81429B48:
/* 81429B48 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81429B4C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81429B50 | 7C 08 03 A6 */	mtlr r0
/* 81429B54 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81429B58 | 4E 80 00 20 */	blr
.endfn setLanguage__Q39textinput12candidatebox12LayoutByNW4RFQ29textinput8Language

# .text:0x1A0C | 0x81429B5C | size: 0x8
# textinput::candidatebox::Base::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput12candidatebox4BaseFQ29textinput8Language, global
/* 81429B5C | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81429B60 | 4E 80 00 20 */	blr
.endfn setLanguage__Q39textinput12candidatebox4BaseFQ29textinput8Language

# .text:0x1A14 | 0x81429B64 | size: 0x1BC
# textinput::candidatebox::LayoutByNW4R::onOnOffButton(bool)
.fn onOnOffButton__Q39textinput12candidatebox12LayoutByNW4RFb, global
/* 81429B64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81429B68 | 7C 08 02 A6 */	mflr r0
/* 81429B6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81429B70 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81429B74 | 3F E0 81 66 */	lis r31, lbl_8165D2D0@ha
/* 81429B78 | 3B FF D2 D0 */	addi r31, r31, lbl_8165D2D0@l
/* 81429B7C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81429B80 | 7C 9E 23 78 */	mr r30, r4
/* 81429B84 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81429B88 | 7C 7D 1B 78 */	mr r29, r3
/* 81429B8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429B90 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81429B94 | 7D 89 03 A6 */	mtctr r12
/* 81429B98 | 4E 80 04 21 */	bctrl
/* 81429B9C | 7C 60 00 34 */	cntlzw r0, r3
/* 81429BA0 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81429BA4 | 41 82 00 38 */	beq .L_81429BDC
/* 81429BA8 | 80 7D 04 14 */	lwz r3, 0x414(r29)
/* 81429BAC | 38 80 00 08 */	li r4, 0x8
/* 81429BB0 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429BB4 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81429BB8 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81429BBC | 60 00 00 01 */	ori r0, r0, 0x1
/* 81429BC0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81429BC4 | 80 7D 04 18 */	lwz r3, 0x418(r29)
/* 81429BC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429BCC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429BD0 | 7D 89 03 A6 */	mtctr r12
/* 81429BD4 | 4E 80 04 21 */	bctrl
/* 81429BD8 | 48 00 00 1C */	b .L_81429BF4
.L_81429BDC:
/* 81429BDC | 80 7D 04 18 */	lwz r3, 0x418(r29)
/* 81429BE0 | 38 80 00 09 */	li r4, 0x9
/* 81429BE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429BE8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429BEC | 7D 89 03 A6 */	mtctr r12
/* 81429BF0 | 4E 80 04 21 */	bctrl
.L_81429BF4:
/* 81429BF4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81429BF8 | 7F A3 EB 78 */	mr r3, r29
/* 81429BFC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81429C00 | 7D 89 03 A6 */	mtctr r12
/* 81429C04 | 4E 80 04 21 */	bctrl
/* 81429C08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81429C0C | 41 82 00 54 */	beq .L_81429C60
/* 81429C10 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81429C14 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81429C18 | 38 8D 93 90 */	li r4, lbl_816973D0@sda21
/* 81429C1C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81429C20 | 7D 89 03 A6 */	mtctr r12
/* 81429C24 | 4E 80 04 21 */	bctrl
/* 81429C28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429C2C | 38 80 00 00 */	li r4, 0x0
/* 81429C30 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81429C34 | 7D 89 03 A6 */	mtctr r12
/* 81429C38 | 4E 80 04 21 */	bctrl
/* 81429C3C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81429C40 | 41 82 00 C4 */	beq .L_81429D04
/* 81429C44 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 81429C48 | 38 80 00 11 */	li r4, 0x11
/* 81429C4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429C50 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429C54 | 7D 89 03 A6 */	mtctr r12
/* 81429C58 | 4E 80 04 21 */	bctrl
/* 81429C5C | 48 00 00 A8 */	b .L_81429D04
.L_81429C60:
/* 81429C60 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81429C64 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81429C68 | 38 9F 06 A8 */	addi r4, r31, 0x6a8
/* 81429C6C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81429C70 | 7D 89 03 A6 */	mtctr r12
/* 81429C74 | 4E 80 04 21 */	bctrl
/* 81429C78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429C7C | 38 80 00 00 */	li r4, 0x0
/* 81429C80 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81429C84 | 7D 89 03 A6 */	mtctr r12
/* 81429C88 | 4E 80 04 21 */	bctrl
/* 81429C8C | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81429C90 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81429C94 | 38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 81429C98 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81429C9C | 7D 89 03 A6 */	mtctr r12
/* 81429CA0 | 4E 80 04 21 */	bctrl
/* 81429CA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429CA8 | 38 80 00 00 */	li r4, 0x0
/* 81429CAC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429CB0 | 7D 89 03 A6 */	mtctr r12
/* 81429CB4 | 4E 80 04 21 */	bctrl
/* 81429CB8 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81429CBC | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81429CC0 | 38 9F 07 20 */	addi r4, r31, 0x720
/* 81429CC4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81429CC8 | 7D 89 03 A6 */	mtctr r12
/* 81429CCC | 4E 80 04 21 */	bctrl
/* 81429CD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429CD4 | 38 80 00 00 */	li r4, 0x0
/* 81429CD8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429CDC | 7D 89 03 A6 */	mtctr r12
/* 81429CE0 | 4E 80 04 21 */	bctrl
/* 81429CE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81429CE8 | 41 82 00 1C */	beq .L_81429D04
/* 81429CEC | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 81429CF0 | 38 80 00 10 */	li r4, 0x10
/* 81429CF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429CF8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81429CFC | 7D 89 03 A6 */	mtctr r12
/* 81429D00 | 4E 80 04 21 */	bctrl
.L_81429D04:
/* 81429D04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81429D08 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81429D0C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81429D10 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81429D14 | 7C 08 03 A6 */	mtlr r0
/* 81429D18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81429D1C | 4E 80 00 20 */	blr
.endfn onOnOffButton__Q39textinput12candidatebox12LayoutByNW4RFb

# .text:0x1BD0 | 0x81429D20 | size: 0x8
# textinput::candidatebox::Base::isOn() const
.fn isOn__Q39textinput12candidatebox4BaseCFv, global
/* 81429D20 | 88 63 00 18 */	lbz r3, 0x18(r3)
/* 81429D24 | 4E 80 00 20 */	blr
.endfn isOn__Q39textinput12candidatebox4BaseCFv

# .text:0x1BD8 | 0x81429D28 | size: 0x6C
# textinput::candidatebox::LayoutByNW4R::turnOn()
.fn turnOn__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429D28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81429D2C | 7C 08 02 A6 */	mflr r0
/* 81429D30 | 38 80 00 00 */	li r4, 0x0
/* 81429D34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81429D38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81429D3C | 7C 7F 1B 78 */	mr r31, r3
/* 81429D40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429D44 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81429D48 | 7D 89 03 A6 */	mtctr r12
/* 81429D4C | 4E 80 04 21 */	bctrl
/* 81429D50 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429D54 | 7F E3 FB 78 */	mr r3, r31
/* 81429D58 | 38 80 00 00 */	li r4, 0x0
/* 81429D5C | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81429D60 | 7D 89 03 A6 */	mtctr r12
/* 81429D64 | 4E 80 04 21 */	bctrl
/* 81429D68 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429D6C | 7F E3 FB 78 */	mr r3, r31
/* 81429D70 | 38 80 00 01 */	li r4, 0x1
/* 81429D74 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81429D78 | 7D 89 03 A6 */	mtctr r12
/* 81429D7C | 4E 80 04 21 */	bctrl
/* 81429D80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81429D84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429D88 | 7C 08 03 A6 */	mtlr r0
/* 81429D8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429D90 | 4E 80 00 20 */	blr
.endfn turnOn__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1C44 | 0x81429D94 | size: 0x6C
# textinput::candidatebox::LayoutByNW4R::turnOff()
.fn turnOff__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429D94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81429D98 | 7C 08 02 A6 */	mflr r0
/* 81429D9C | 38 80 00 01 */	li r4, 0x1
/* 81429DA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81429DA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81429DA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81429DAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429DB0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81429DB4 | 7D 89 03 A6 */	mtctr r12
/* 81429DB8 | 4E 80 04 21 */	bctrl
/* 81429DBC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429DC0 | 7F E3 FB 78 */	mr r3, r31
/* 81429DC4 | 38 80 00 00 */	li r4, 0x0
/* 81429DC8 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81429DCC | 7D 89 03 A6 */	mtctr r12
/* 81429DD0 | 4E 80 04 21 */	bctrl
/* 81429DD4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429DD8 | 7F E3 FB 78 */	mr r3, r31
/* 81429DDC | 38 80 00 00 */	li r4, 0x0
/* 81429DE0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81429DE4 | 7D 89 03 A6 */	mtctr r12
/* 81429DE8 | 4E 80 04 21 */	bctrl
/* 81429DEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81429DF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429DF4 | 7C 08 03 A6 */	mtlr r0
/* 81429DF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429DFC | 4E 80 00 20 */	blr
.endfn turnOff__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1CB0 | 0x81429E00 | size: 0x8C
# textinput::candidatebox::LayoutByNW4R::makeEmpty()
.fn makeEmpty__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429E00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81429E04 | 7C 08 02 A6 */	mflr r0
/* 81429E08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81429E0C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81429E10 | 3B E0 00 00 */	li r31, 0x0
/* 81429E14 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81429E18 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81429E1C | 7C 7D 1B 78 */	mr r29, r3
/* 81429E20 | 7F BE EB 78 */	mr r30, r29
.L_81429E24:
/* 81429E24 | 80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 81429E28 | 38 8D 93 88 */	li r4, lbl_816973C8@sda21
/* 81429E2C | 38 A0 00 00 */	li r5, 0x0
/* 81429E30 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81429E34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429E38 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81429E3C | 7D 89 03 A6 */	mtctr r12
/* 81429E40 | 4E 80 04 21 */	bctrl
/* 81429E44 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81429E48 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81429E4C | 28 1F 00 14 */	cmplwi r31, 0x14
/* 81429E50 | 41 80 FF D4 */	blt .L_81429E24
/* 81429E54 | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 81429E58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429E5C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81429E60 | 7D 89 03 A6 */	mtctr r12
/* 81429E64 | 4E 80 04 21 */	bctrl
/* 81429E68 | 38 00 00 00 */	li r0, 0x0
/* 81429E6C | 98 03 01 F5 */	stb r0, 0x1f5(r3)
/* 81429E70 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81429E74 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81429E78 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81429E7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81429E80 | 7C 08 03 A6 */	mtlr r0
/* 81429E84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81429E88 | 4E 80 00 20 */	blr
.endfn makeEmpty__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1D3C | 0x81429E8C | size: 0x8C
# textinput::candidatebox::LayoutByNW4R::changeSelectEmpty()
.fn changeSelectEmpty__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429E8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81429E90 | 7C 08 02 A6 */	mflr r0
/* 81429E94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81429E98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81429E9C | 7C 7F 1B 78 */	mr r31, r3
/* 81429EA0 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81429EA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429EA8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81429EAC | 7D 89 03 A6 */	mtctr r12
/* 81429EB0 | 4E 80 04 21 */	bctrl
/* 81429EB4 | 38 00 00 00 */	li r0, 0x0
/* 81429EB8 | 98 03 01 F5 */	stb r0, 0x1f5(r3)
/* 81429EBC | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81429EC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429EC4 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81429EC8 | 7D 89 03 A6 */	mtctr r12
/* 81429ECC | 4E 80 04 21 */	bctrl
/* 81429ED0 | 4B FF B5 F5 */	bl deselectCandidate__Q39textinput9inputform4BaseFv
/* 81429ED4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429ED8 | 7F E3 FB 78 */	mr r3, r31
/* 81429EDC | 38 80 FF FF */	li r4, -0x1
/* 81429EE0 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 81429EE4 | 7D 89 03 A6 */	mtctr r12
/* 81429EE8 | 4E 80 04 21 */	bctrl
/* 81429EEC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429EF0 | 7F E3 FB 78 */	mr r3, r31
/* 81429EF4 | 38 80 FF FF */	li r4, -0x1
/* 81429EF8 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 81429EFC | 7D 89 03 A6 */	mtctr r12
/* 81429F00 | 4E 80 04 21 */	bctrl
/* 81429F04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81429F08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429F0C | 7C 08 03 A6 */	mtlr r0
/* 81429F10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429F14 | 4E 80 00 20 */	blr
.endfn changeSelectEmpty__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1DC8 | 0x81429F18 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::setSelectedTextPane(int)
.fn setSelectedTextPane__Q39textinput12candidatebox12LayoutByNW4RFi, global
/* 81429F18 | 90 83 02 BC */	stw r4, 0x2bc(r3)
/* 81429F1C | 4E 80 00 20 */	blr
.endfn setSelectedTextPane__Q39textinput12candidatebox12LayoutByNW4RFi

# .text:0x1DD0 | 0x81429F20 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::setFocusedTextPane(int)
.fn setFocusedTextPane__Q39textinput12candidatebox12LayoutByNW4RFi, global
/* 81429F20 | 90 83 02 C0 */	stw r4, 0x2c0(r3)
/* 81429F24 | 4E 80 00 20 */	blr
.endfn setFocusedTextPane__Q39textinput12candidatebox12LayoutByNW4RFi

# .text:0x1DD8 | 0x81429F28 | size: 0x90
# textinput::candidatebox::LayoutByNW4R::changeSelectEmpty_compatible()
.fn changeSelectEmpty_compatible__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 81429F28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81429F2C | 7C 08 02 A6 */	mflr r0
/* 81429F30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81429F34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81429F38 | 7C 7F 1B 78 */	mr r31, r3
/* 81429F3C | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81429F40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429F44 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81429F48 | 7D 89 03 A6 */	mtctr r12
/* 81429F4C | 4E 80 04 21 */	bctrl
/* 81429F50 | 38 00 00 00 */	li r0, 0x0
/* 81429F54 | 38 80 00 17 */	li r4, 0x17
/* 81429F58 | 98 03 01 F5 */	stb r0, 0x1f5(r3)
/* 81429F5C | 7F E3 FB 78 */	mr r3, r31
/* 81429F60 | 38 A0 00 00 */	li r5, 0x0
/* 81429F64 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429F68 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81429F6C | 7D 89 03 A6 */	mtctr r12
/* 81429F70 | 4E 80 04 21 */	bctrl
/* 81429F74 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429F78 | 7F E3 FB 78 */	mr r3, r31
/* 81429F7C | 38 80 FF FF */	li r4, -0x1
/* 81429F80 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 81429F84 | 7D 89 03 A6 */	mtctr r12
/* 81429F88 | 4E 80 04 21 */	bctrl
/* 81429F8C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81429F90 | 7F E3 FB 78 */	mr r3, r31
/* 81429F94 | 38 80 FF FF */	li r4, -0x1
/* 81429F98 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 81429F9C | 7D 89 03 A6 */	mtctr r12
/* 81429FA0 | 4E 80 04 21 */	bctrl
/* 81429FA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81429FA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81429FAC | 7C 08 03 A6 */	mtlr r0
/* 81429FB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81429FB4 | 4E 80 00 20 */	blr
.endfn changeSelectEmpty_compatible__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x1E68 | 0x81429FB8 | size: 0xA4
# textinput::candidatebox::LayoutByNW4R::changeSelect(long)
.fn changeSelect__Q39textinput12candidatebox12LayoutByNW4RFl, global
/* 81429FB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81429FBC | 7C 08 02 A6 */	mflr r0
/* 81429FC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81429FC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81429FC8 | 7C 9F 23 78 */	mr r31, r4
/* 81429FCC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81429FD0 | 7C 7E 1B 78 */	mr r30, r3
/* 81429FD4 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81429FD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81429FDC | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81429FE0 | 7D 89 03 A6 */	mtctr r12
/* 81429FE4 | 4E 80 04 21 */	bctrl
/* 81429FE8 | 38 80 00 01 */	li r4, 0x1
/* 81429FEC | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81429FF0 | 98 83 01 F5 */	stb r4, 0x1f5(r3)
/* 81429FF4 | 7F C3 F3 78 */	mr r3, r30
/* 81429FF8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81429FFC | 38 80 00 16 */	li r4, 0x16
/* 8142A000 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8142A004 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142A008 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142A00C | 7D 89 03 A6 */	mtctr r12
/* 8142A010 | 4E 80 04 21 */	bctrl
/* 8142A014 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142A018 | 7F C3 F3 78 */	mr r3, r30
/* 8142A01C | 7F E4 FB 78 */	mr r4, r31
/* 8142A020 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8142A024 | 7D 89 03 A6 */	mtctr r12
/* 8142A028 | 4E 80 04 21 */	bctrl
/* 8142A02C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142A030 | 7F C3 F3 78 */	mr r3, r30
/* 8142A034 | 7F E4 FB 78 */	mr r4, r31
/* 8142A038 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8142A03C | 7D 89 03 A6 */	mtctr r12
/* 8142A040 | 4E 80 04 21 */	bctrl
/* 8142A044 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142A048 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142A04C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142A050 | 7C 08 03 A6 */	mtlr r0
/* 8142A054 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142A058 | 4E 80 00 20 */	blr
.endfn changeSelect__Q39textinput12candidatebox12LayoutByNW4RFl

# .text:0x1F0C | 0x8142A05C | size: 0x1E8
# textinput::candidatebox::LayoutByNW4R::startTurnOn(bool)
.fn startTurnOn__Q39textinput12candidatebox12LayoutByNW4RFb, global
/* 8142A05C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142A060 | 7C 08 02 A6 */	mflr r0
/* 8142A064 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142A068 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142A06C | 3F E0 81 66 */	lis r31, lbl_8165D2D0@ha
/* 8142A070 | 3B FF D2 D0 */	addi r31, r31, lbl_8165D2D0@l
/* 8142A074 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142A078 | 7C 9E 23 78 */	mr r30, r4
/* 8142A07C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142A080 | 7C 7D 1B 78 */	mr r29, r3
/* 8142A084 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A088 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8142A08C | 7D 89 03 A6 */	mtctr r12
/* 8142A090 | 4E 80 04 21 */	bctrl
/* 8142A094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A098 | 40 82 01 90 */	bne .L_8142A228
/* 8142A09C | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8142A0A0 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8142A0A4 | 38 9F 07 38 */	addi r4, r31, 0x738
/* 8142A0A8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142A0AC | 7D 89 03 A6 */	mtctr r12
/* 8142A0B0 | 4E 80 04 21 */	bctrl
/* 8142A0B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A0B8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142A0BC | 7D 89 03 A6 */	mtctr r12
/* 8142A0C0 | 4E 80 04 21 */	bctrl
/* 8142A0C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A0C8 | 40 82 01 60 */	bne .L_8142A228
/* 8142A0CC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142A0D0 | 7F A3 EB 78 */	mr r3, r29
/* 8142A0D4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8142A0D8 | 7D 89 03 A6 */	mtctr r12
/* 8142A0DC | 4E 80 04 21 */	bctrl
/* 8142A0E0 | 7C 1E 18 40 */	cmplw r30, r3
/* 8142A0E4 | 41 82 01 44 */	beq .L_8142A228
/* 8142A0E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142A0EC | 41 82 00 38 */	beq .L_8142A124
/* 8142A0F0 | 80 7D 04 14 */	lwz r3, 0x414(r29)
/* 8142A0F4 | 38 80 00 08 */	li r4, 0x8
/* 8142A0F8 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A0FC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A100 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A104 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A108 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A10C | 80 7D 04 18 */	lwz r3, 0x418(r29)
/* 8142A110 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A114 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A118 | 7D 89 03 A6 */	mtctr r12
/* 8142A11C | 4E 80 04 21 */	bctrl
/* 8142A120 | 48 00 00 1C */	b .L_8142A13C
.L_8142A124:
/* 8142A124 | 80 7D 04 18 */	lwz r3, 0x418(r29)
/* 8142A128 | 38 80 00 09 */	li r4, 0x9
/* 8142A12C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A130 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A134 | 7D 89 03 A6 */	mtctr r12
/* 8142A138 | 4E 80 04 21 */	bctrl
.L_8142A13C:
/* 8142A13C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142A140 | 40 82 00 4C */	bne .L_8142A18C
/* 8142A144 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8142A148 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8142A14C | 38 8D 93 90 */	li r4, lbl_816973D0@sda21
/* 8142A150 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142A154 | 7D 89 03 A6 */	mtctr r12
/* 8142A158 | 4E 80 04 21 */	bctrl
/* 8142A15C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A160 | 38 80 00 00 */	li r4, 0x0
/* 8142A164 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142A168 | 7D 89 03 A6 */	mtctr r12
/* 8142A16C | 4E 80 04 21 */	bctrl
/* 8142A170 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8142A174 | 38 80 00 11 */	li r4, 0x11
/* 8142A178 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A17C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A180 | 7D 89 03 A6 */	mtctr r12
/* 8142A184 | 4E 80 04 21 */	bctrl
/* 8142A188 | 48 00 00 A0 */	b .L_8142A228
.L_8142A18C:
/* 8142A18C | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8142A190 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8142A194 | 38 9F 06 A8 */	addi r4, r31, 0x6a8
/* 8142A198 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142A19C | 7D 89 03 A6 */	mtctr r12
/* 8142A1A0 | 4E 80 04 21 */	bctrl
/* 8142A1A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A1A8 | 38 80 00 00 */	li r4, 0x0
/* 8142A1AC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142A1B0 | 7D 89 03 A6 */	mtctr r12
/* 8142A1B4 | 4E 80 04 21 */	bctrl
/* 8142A1B8 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8142A1BC | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8142A1C0 | 38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 8142A1C4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142A1C8 | 7D 89 03 A6 */	mtctr r12
/* 8142A1CC | 4E 80 04 21 */	bctrl
/* 8142A1D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A1D4 | 38 80 00 00 */	li r4, 0x0
/* 8142A1D8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A1DC | 7D 89 03 A6 */	mtctr r12
/* 8142A1E0 | 4E 80 04 21 */	bctrl
/* 8142A1E4 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8142A1E8 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8142A1EC | 38 9F 07 20 */	addi r4, r31, 0x720
/* 8142A1F0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142A1F4 | 7D 89 03 A6 */	mtctr r12
/* 8142A1F8 | 4E 80 04 21 */	bctrl
/* 8142A1FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A200 | 38 80 00 00 */	li r4, 0x0
/* 8142A204 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A208 | 7D 89 03 A6 */	mtctr r12
/* 8142A20C | 4E 80 04 21 */	bctrl
/* 8142A210 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8142A214 | 38 80 00 10 */	li r4, 0x10
/* 8142A218 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A21C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A220 | 7D 89 03 A6 */	mtctr r12
/* 8142A224 | 4E 80 04 21 */	bctrl
.L_8142A228:
/* 8142A228 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142A22C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142A230 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142A234 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142A238 | 7C 08 03 A6 */	mtlr r0
/* 8142A23C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142A240 | 4E 80 00 20 */	blr
.endfn startTurnOn__Q39textinput12candidatebox12LayoutByNW4RFb

# .text:0x20F4 | 0x8142A244 | size: 0x210
# textinput::candidatebox::LayoutByNW4R::setOnOff(bool)
.fn setOnOff__Q39textinput12candidatebox12LayoutByNW4RFb, global
/* 8142A244 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142A248 | 7C 08 02 A6 */	mflr r0
/* 8142A24C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142A250 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142A254 | 7C 9F 23 78 */	mr r31, r4
/* 8142A258 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142A25C | 7C 7E 1B 78 */	mr r30, r3
/* 8142A260 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8142A264 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8142A268 | 40 82 00 08 */	bne .L_8142A270
/* 8142A26C | 3B E0 00 01 */	li r31, 0x1
.L_8142A270:
/* 8142A270 | 9B E3 00 18 */	stb r31, 0x18(r3)
/* 8142A274 | 7F C3 F3 78 */	mr r3, r30
/* 8142A278 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8142A27C | 38 80 00 1F */	li r4, 0x1f
/* 8142A280 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142A284 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142A288 | 7D 89 03 A6 */	mtctr r12
/* 8142A28C | 4E 80 04 21 */	bctrl
/* 8142A290 | 9B E1 00 0C */	stb r31, 0xc(r1)
/* 8142A294 | 7F C3 F3 78 */	mr r3, r30
/* 8142A298 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8142A29C | 38 80 00 1D */	li r4, 0x1d
/* 8142A2A0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142A2A4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142A2A8 | 7D 89 03 A6 */	mtctr r12
/* 8142A2AC | 4E 80 04 21 */	bctrl
/* 8142A2B0 | 80 7E 03 54 */	lwz r3, 0x354(r30)
/* 8142A2B4 | 38 80 00 00 */	li r4, 0x0
/* 8142A2B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A2BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A2C0 | 7D 89 03 A6 */	mtctr r12
/* 8142A2C4 | 4E 80 04 21 */	bctrl
/* 8142A2C8 | 80 7E 03 58 */	lwz r3, 0x358(r30)
/* 8142A2CC | 38 80 00 00 */	li r4, 0x0
/* 8142A2D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A2D4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A2D8 | 7D 89 03 A6 */	mtctr r12
/* 8142A2DC | 4E 80 04 21 */	bctrl
/* 8142A2E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142A2E4 | 41 82 00 60 */	beq .L_8142A344
/* 8142A2E8 | 80 7E 03 44 */	lwz r3, 0x344(r30)
/* 8142A2EC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A2F0 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A2F4 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A2F8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A2FC | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A300 | 80 7E 03 48 */	lwz r3, 0x348(r30)
/* 8142A304 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A308 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A30C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A310 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A314 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A318 | 80 7E 03 4C */	lwz r3, 0x34c(r30)
/* 8142A31C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A320 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A324 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A328 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A32C | 80 7E 03 50 */	lwz r3, 0x350(r30)
/* 8142A330 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A334 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A338 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A33C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A340 | 48 00 00 5C */	b .L_8142A39C
.L_8142A344:
/* 8142A344 | 80 7E 03 44 */	lwz r3, 0x344(r30)
/* 8142A348 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A34C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A350 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A354 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A358 | 80 7E 03 48 */	lwz r3, 0x348(r30)
/* 8142A35C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A360 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A364 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A368 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A36C | 80 7E 03 4C */	lwz r3, 0x34c(r30)
/* 8142A370 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A374 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A378 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A37C | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A380 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A384 | 80 7E 03 50 */	lwz r3, 0x350(r30)
/* 8142A388 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A38C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A390 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A394 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A398 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_8142A39C:
/* 8142A39C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142A3A0 | 40 82 00 9C */	bne .L_8142A43C
/* 8142A3A4 | 80 7E 04 14 */	lwz r3, 0x414(r30)
/* 8142A3A8 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A3AC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A3B0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A3B4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A3B8 | 80 7E 04 08 */	lwz r3, 0x408(r30)
/* 8142A3BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A3C0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8142A3C4 | 7D 89 03 A6 */	mtctr r12
/* 8142A3C8 | 4E 80 04 21 */	bctrl
/* 8142A3CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A3D0 | 41 82 00 20 */	beq .L_8142A3F0
/* 8142A3D4 | 80 7E 04 18 */	lwz r3, 0x418(r30)
/* 8142A3D8 | 38 80 00 0A */	li r4, 0xa
/* 8142A3DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A3E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A3E4 | 7D 89 03 A6 */	mtctr r12
/* 8142A3E8 | 4E 80 04 21 */	bctrl
/* 8142A3EC | 48 00 00 1C */	b .L_8142A408
.L_8142A3F0:
/* 8142A3F0 | 80 7E 04 18 */	lwz r3, 0x418(r30)
/* 8142A3F4 | 38 80 00 00 */	li r4, 0x0
/* 8142A3F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A3FC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A400 | 7D 89 03 A6 */	mtctr r12
/* 8142A404 | 4E 80 04 21 */	bctrl
.L_8142A408:
/* 8142A408 | 3B E0 00 00 */	li r31, 0x0
.L_8142A40C:
/* 8142A40C | 80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 8142A410 | 38 8D 93 88 */	li r4, lbl_816973C8@sda21
/* 8142A414 | 38 A0 00 00 */	li r5, 0x0
/* 8142A418 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A41C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A420 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142A424 | 7D 89 03 A6 */	mtctr r12
/* 8142A428 | 4E 80 04 21 */	bctrl
/* 8142A42C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8142A430 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8142A434 | 28 1F 00 14 */	cmplwi r31, 0x14
/* 8142A438 | 41 80 FF D4 */	blt .L_8142A40C
.L_8142A43C:
/* 8142A43C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142A440 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142A444 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142A448 | 7C 08 03 A6 */	mtlr r0
/* 8142A44C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142A450 | 4E 80 00 20 */	blr
.endfn setOnOff__Q39textinput12candidatebox12LayoutByNW4RFb

# .text:0x2304 | 0x8142A454 | size: 0x20C
# textinput::candidatebox::LayoutByNW4R::updateCandidate()
.fn updateCandidate__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142A454 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8142A458 | 7C 08 02 A6 */	mflr r0
/* 8142A45C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8142A460 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142A464 | 48 1C F0 5D */	bl _savegpr_27
/* 8142A468 | 81 83 00 FC */	lwz r12, 0xfc(r3)
/* 8142A46C | 7C 7F 1B 78 */	mr r31, r3
/* 8142A470 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8142A474 | 7D 89 03 A6 */	mtctr r12
/* 8142A478 | 38 63 00 FC */	addi r3, r3, 0xfc
/* 8142A47C | 4E 80 04 21 */	bctrl
/* 8142A480 | 80 FF 00 10 */	lwz r7, 0x10(r31)
/* 8142A484 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8142A488 | 41 82 00 4C */	beq .L_8142A4D4
/* 8142A48C | 3C 60 00 01 */	lis r3, 0x1
/* 8142A490 | 7C E6 3B 78 */	mr r6, r7
/* 8142A494 | 38 A7 00 04 */	addi r5, r7, 0x4
/* 8142A498 | 38 80 00 00 */	li r4, 0x0
/* 8142A49C | 38 63 E0 57 */	subi r3, r3, 0x1fa9
/* 8142A4A0 | 48 00 00 28 */	b .L_8142A4C8
.L_8142A4A4:
/* 8142A4A4 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8142A4A8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8142A4AC | 41 82 00 0C */	beq .L_8142A4B8
/* 8142A4B0 | 28 00 30 00 */	cmplwi r0, 0x3000
/* 8142A4B4 | 40 82 00 08 */	bne .L_8142A4BC
.L_8142A4B8:
/* 8142A4B8 | B0 66 00 04 */	sth r3, 0x4(r6)
.L_8142A4BC:
/* 8142A4BC | 38 A5 00 80 */	addi r5, r5, 0x80
/* 8142A4C0 | 38 C6 00 80 */	addi r6, r6, 0x80
/* 8142A4C4 | 38 84 00 01 */	addi r4, r4, 0x1
.L_8142A4C8:
/* 8142A4C8 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8142A4CC | 7C 04 00 40 */	cmplw r4, r0
/* 8142A4D0 | 41 80 FF D4 */	blt .L_8142A4A4
.L_8142A4D4:
/* 8142A4D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142A4D8 | 7F E3 FB 78 */	mr r3, r31
/* 8142A4DC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8142A4E0 | 7D 89 03 A6 */	mtctr r12
/* 8142A4E4 | 4E 80 04 21 */	bctrl
/* 8142A4E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A4EC | 3C 80 81 66 */	lis r4, lbl_8165D984@ha
/* 8142A4F0 | 38 84 D9 84 */	addi r4, r4, lbl_8165D984@l
/* 8142A4F4 | 41 82 00 08 */	beq .L_8142A4FC
/* 8142A4F8 | 38 8D 93 98 */	li r4, lbl_816973D8@sda21
.L_8142A4FC:
/* 8142A4FC | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8142A500 | 48 01 C8 C9 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 8142A504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A508 | 7C 7E 1B 78 */	mr r30, r3
/* 8142A50C | 41 82 00 0C */	beq .L_8142A518
/* 8142A510 | 38 00 00 01 */	li r0, 0x1
/* 8142A514 | 98 03 00 04 */	stb r0, 0x4(r3)
.L_8142A518:
/* 8142A518 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8142A51C | 48 00 BF 91 */	bl init__Q39textinput11nw4rmanager6LayoutFv
/* 8142A520 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142A524 | 7F E3 FB 78 */	mr r3, r31
/* 8142A528 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8142A52C | 7D 89 03 A6 */	mtctr r12
/* 8142A530 | 4E 80 04 21 */	bctrl
/* 8142A534 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142A538 | 41 82 00 0C */	beq .L_8142A544
/* 8142A53C | 38 00 00 00 */	li r0, 0x0
/* 8142A540 | 98 1E 00 04 */	stb r0, 0x4(r30)
.L_8142A544:
/* 8142A544 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142A548 | 38 00 FF FF */	li r0, -0x1
/* 8142A54C | 3B C0 00 00 */	li r30, 0x0
/* 8142A550 | 90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 8142A554 | 7F FB FB 78 */	mr r27, r31
/* 8142A558 | 3B 9F 02 14 */	addi r28, r31, 0x214
/* 8142A55C | 90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 8142A560 | 3B A0 00 00 */	li r29, 0x0
/* 8142A564 | D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 8142A568 | 93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 8142A56C | 93 DF 02 D4 */	stw r30, 0x2d4(r31)
.L_8142A570:
/* 8142A570 | 80 7B 01 C4 */	lwz r3, 0x1c4(r27)
/* 8142A574 | 7F 84 E3 78 */	mr r4, r28
/* 8142A578 | 48 00 CD 6D */	bl storeAnmState__Q39textinput11nw4rmanager7AnmPaneFPQ49textinput11nw4rmanager7AnmPane8AnmState
/* 8142A57C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142A580 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 8142A584 | 80 7B 01 C4 */	lwz r3, 0x1c4(r27)
/* 8142A588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A58C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142A590 | 7D 89 03 A6 */	mtctr r12
/* 8142A594 | 4E 80 04 21 */	bctrl
/* 8142A598 | 80 7B 01 C4 */	lwz r3, 0x1c4(r27)
/* 8142A59C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8142A5A0 | 48 00 CD 7D */	bl restoreAnmState__Q39textinput11nw4rmanager7AnmPaneFPCQ49textinput11nw4rmanager7AnmPane8AnmState
/* 8142A5A4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142A5A8 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 8142A5AC | 28 1D 00 14 */	cmplwi r29, 0x14
/* 8142A5B0 | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 8142A5B4 | 41 80 FF BC */	blt .L_8142A570
/* 8142A5B8 | C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 8142A5BC | 38 60 00 00 */	li r3, 0x0
/* 8142A5C0 | C0 02 89 B4 */	lfs f0, lbl_81694DB4@sda21(r0)
/* 8142A5C4 | 38 00 FF FF */	li r0, -0x1
/* 8142A5C8 | C0 42 89 90 */	lfs f2, lbl_81694D90@sda21(r0)
/* 8142A5CC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142A5D0 | 90 7F 02 C4 */	stw r3, 0x2c4(r31)
/* 8142A5D4 | D0 5F 02 C8 */	stfs f2, 0x2c8(r31)
/* 8142A5D8 | 90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 8142A5DC | 80 7F 02 E8 */	lwz r3, 0x2e8(r31)
/* 8142A5E0 | 7F FE FB 78 */	mr r30, r31
/* 8142A5E4 | 3B A0 00 00 */	li r29, 0x0
/* 8142A5E8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8142A5EC | 90 1F 02 CC */	stw r0, 0x2cc(r31)
.L_8142A5F0:
/* 8142A5F0 | 80 7E 01 C4 */	lwz r3, 0x1c4(r30)
/* 8142A5F4 | 38 80 00 00 */	li r4, 0x0
/* 8142A5F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A5FC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A600 | 7D 89 03 A6 */	mtctr r12
/* 8142A604 | 4E 80 04 21 */	bctrl
/* 8142A608 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142A60C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8142A610 | 28 1D 00 14 */	cmplwi r29, 0x14
/* 8142A614 | 41 80 FF DC */	blt .L_8142A5F0
/* 8142A618 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142A61C | 38 00 FF FF */	li r0, -0x1
/* 8142A620 | 90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 8142A624 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8142A628 | 90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 8142A62C | D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 8142A630 | 48 00 12 8D */	bl CalcPaneLocate___Q39textinput12candidatebox10UITextAreaFv
/* 8142A634 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142A638 | 7F E3 FB 78 */	mr r3, r31
/* 8142A63C | 81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 8142A640 | 7D 89 03 A6 */	mtctr r12
/* 8142A644 | 4E 80 04 21 */	bctrl
/* 8142A648 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142A64C | 48 1C EE C1 */	bl _restgpr_27
/* 8142A650 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8142A654 | 7C 08 03 A6 */	mtlr r0
/* 8142A658 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8142A65C | 4E 80 00 20 */	blr
.endfn updateCandidate__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x2510 | 0x8142A660 | size: 0x21C
# textinput::candidatebox::LayoutByNW4R::updateDisplay()
.fn updateDisplay__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142A660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142A664 | 7C 08 02 A6 */	mflr r0
/* 8142A668 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142A66C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142A670 | 7C 7F 1B 78 */	mr r31, r3
/* 8142A674 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A678 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8142A67C | 7D 89 03 A6 */	mtctr r12
/* 8142A680 | 4E 80 04 21 */	bctrl
/* 8142A684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A688 | 41 82 00 88 */	beq .L_8142A710
/* 8142A68C | 80 7F 03 00 */	lwz r3, 0x300(r31)
/* 8142A690 | 38 80 00 00 */	li r4, 0x0
/* 8142A694 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A698 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A69C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A6A0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A6A4 | 80 7F 03 04 */	lwz r3, 0x304(r31)
/* 8142A6A8 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A6AC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A6B0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A6B4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A6B8 | 80 7F 03 08 */	lwz r3, 0x308(r31)
/* 8142A6BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A6C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A6C4 | 7D 89 03 A6 */	mtctr r12
/* 8142A6C8 | 4E 80 04 21 */	bctrl
/* 8142A6CC | 80 7F 03 20 */	lwz r3, 0x320(r31)
/* 8142A6D0 | 38 80 00 00 */	li r4, 0x0
/* 8142A6D4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A6D8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A6DC | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A6E0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A6E4 | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 8142A6E8 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A6EC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A6F0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A6F4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A6F8 | 80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8142A6FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A700 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A704 | 7D 89 03 A6 */	mtctr r12
/* 8142A708 | 4E 80 04 21 */	bctrl
/* 8142A70C | 48 00 01 5C */	b .L_8142A868
.L_8142A710:
/* 8142A710 | 80 1F 02 C4 */	lwz r0, 0x2c4(r31)
/* 8142A714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142A718 | 41 81 00 48 */	bgt .L_8142A760
/* 8142A71C | 80 7F 03 00 */	lwz r3, 0x300(r31)
/* 8142A720 | 38 80 00 00 */	li r4, 0x0
/* 8142A724 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A728 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A72C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A730 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A734 | 80 7F 03 04 */	lwz r3, 0x304(r31)
/* 8142A738 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A73C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A740 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A744 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A748 | 80 7F 03 08 */	lwz r3, 0x308(r31)
/* 8142A74C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A750 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A754 | 7D 89 03 A6 */	mtctr r12
/* 8142A758 | 4E 80 04 21 */	bctrl
/* 8142A75C | 48 00 00 5C */	b .L_8142A7B8
.L_8142A760:
/* 8142A760 | 80 7F 03 00 */	lwz r3, 0x300(r31)
/* 8142A764 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A768 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A76C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8142A770 | 40 82 00 48 */	bne .L_8142A7B8
/* 8142A774 | 80 7F 03 00 */	lwz r3, 0x300(r31)
/* 8142A778 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A77C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A780 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A784 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A788 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A78C | 80 7F 03 04 */	lwz r3, 0x304(r31)
/* 8142A790 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A794 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A798 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A79C | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A7A0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A7A4 | 80 7F 03 04 */	lwz r3, 0x304(r31)
/* 8142A7A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A7AC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142A7B0 | 7D 89 03 A6 */	mtctr r12
/* 8142A7B4 | 4E 80 04 21 */	bctrl
.L_8142A7B8:
/* 8142A7B8 | 80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 8142A7BC | 80 9F 02 D8 */	lwz r4, 0x2d8(r31)
/* 8142A7C0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8142A7C4 | 7C 04 00 00 */	cmpw r4, r0
/* 8142A7C8 | 41 80 00 48 */	blt .L_8142A810
/* 8142A7CC | 80 7F 03 20 */	lwz r3, 0x320(r31)
/* 8142A7D0 | 38 80 00 00 */	li r4, 0x0
/* 8142A7D4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A7D8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A7DC | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A7E0 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A7E4 | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 8142A7E8 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A7EC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A7F0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A7F4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A7F8 | 80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8142A7FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A800 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A804 | 7D 89 03 A6 */	mtctr r12
/* 8142A808 | 4E 80 04 21 */	bctrl
/* 8142A80C | 48 00 00 5C */	b .L_8142A868
.L_8142A810:
/* 8142A810 | 80 7F 03 20 */	lwz r3, 0x320(r31)
/* 8142A814 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A818 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A81C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8142A820 | 40 82 00 48 */	bne .L_8142A868
/* 8142A824 | 80 7F 03 20 */	lwz r3, 0x320(r31)
/* 8142A828 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A82C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A830 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A834 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A838 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A83C | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 8142A840 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142A844 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142A848 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142A84C | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142A850 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142A854 | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 8142A858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A85C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142A860 | 7D 89 03 A6 */	mtctr r12
/* 8142A864 | 4E 80 04 21 */	bctrl
.L_8142A868:
/* 8142A868 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142A86C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142A870 | 7C 08 03 A6 */	mtlr r0
/* 8142A874 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142A878 | 4E 80 00 20 */	blr
.endfn updateDisplay__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x272C | 0x8142A87C | size: 0x60
# textinput::candidatebox::LayoutByNW4R::onRightScroll()
.fn onRightScroll__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142A87C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142A880 | 7C 08 02 A6 */	mflr r0
/* 8142A884 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142A888 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142A88C | 7C 7F 1B 78 */	mr r31, r3
/* 8142A890 | 80 83 02 CC */	lwz r4, 0x2cc(r3)
/* 8142A894 | 80 A3 02 D8 */	lwz r5, 0x2d8(r3)
/* 8142A898 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8142A89C | 7C 05 00 00 */	cmpw r5, r0
/* 8142A8A0 | 40 80 00 28 */	bge .L_8142A8C8
/* 8142A8A4 | 38 80 00 01 */	li r4, 0x1
/* 8142A8A8 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 8142A8AC | 48 00 1F 85 */	bl StartScroll__Q39textinput12candidatebox10UITextAreaFl
/* 8142A8B0 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8142A8B4 | 38 80 00 0B */	li r4, 0xb
/* 8142A8B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A8BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A8C0 | 7D 89 03 A6 */	mtctr r12
/* 8142A8C4 | 4E 80 04 21 */	bctrl
.L_8142A8C8:
/* 8142A8C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142A8CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142A8D0 | 7C 08 03 A6 */	mtlr r0
/* 8142A8D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142A8D8 | 4E 80 00 20 */	blr
.endfn onRightScroll__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x278C | 0x8142A8DC | size: 0x58
# textinput::candidatebox::LayoutByNW4R::onLeftScroll()
.fn onLeftScroll__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142A8DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142A8E0 | 7C 08 02 A6 */	mflr r0
/* 8142A8E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142A8E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142A8EC | 7C 7F 1B 78 */	mr r31, r3
/* 8142A8F0 | 80 03 02 C4 */	lwz r0, 0x2c4(r3)
/* 8142A8F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142A8F8 | 40 81 00 28 */	ble .L_8142A920
/* 8142A8FC | 38 80 FF FF */	li r4, -0x1
/* 8142A900 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 8142A904 | 48 00 1F 2D */	bl StartScroll__Q39textinput12candidatebox10UITextAreaFl
/* 8142A908 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8142A90C | 38 80 00 0B */	li r4, 0xb
/* 8142A910 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A914 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A918 | 7D 89 03 A6 */	mtctr r12
/* 8142A91C | 4E 80 04 21 */	bctrl
.L_8142A920:
/* 8142A920 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142A924 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142A928 | 7C 08 03 A6 */	mtlr r0
/* 8142A92C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142A930 | 4E 80 00 20 */	blr
.endfn onLeftScroll__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x27E4 | 0x8142A934 | size: 0x98
# textinput::candidatebox::LayoutByNW4R::onRightPageScroll()
.fn onRightPageScroll__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142A934 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142A938 | 7C 08 02 A6 */	mflr r0
/* 8142A93C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142A940 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142A944 | 7C 7F 1B 78 */	mr r31, r3
/* 8142A948 | 80 83 02 CC */	lwz r4, 0x2cc(r3)
/* 8142A94C | 80 A3 02 D8 */	lwz r5, 0x2d8(r3)
/* 8142A950 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8142A954 | 7C 05 00 00 */	cmpw r5, r0
/* 8142A958 | 40 80 00 60 */	bge .L_8142A9B8
/* 8142A95C | C0 23 02 C8 */	lfs f1, 0x2c8(r3)
/* 8142A960 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142A964 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142A968 | 40 81 00 14 */	ble .L_8142A97C
/* 8142A96C | 80 83 02 C4 */	lwz r4, 0x2c4(r3)
/* 8142A970 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 8142A974 | 48 00 21 A1 */	bl StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl
/* 8142A978 | 48 00 00 28 */	b .L_8142A9A0
.L_8142A97C:
/* 8142A97C | 41 80 00 24 */	blt .L_8142A9A0
/* 8142A980 | 80 83 02 C4 */	lwz r4, 0x2c4(r3)
/* 8142A984 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 8142A988 | 48 00 1A 9D */	bl GetNextPageIdx___Q39textinput12candidatebox10UITextAreaCFl
/* 8142A98C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142A990 | 41 80 00 10 */	blt .L_8142A9A0
/* 8142A994 | 7C 64 1B 78 */	mr r4, r3
/* 8142A998 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8142A99C | 48 00 21 79 */	bl StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl
.L_8142A9A0:
/* 8142A9A0 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8142A9A4 | 38 80 00 0B */	li r4, 0xb
/* 8142A9A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142A9AC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142A9B0 | 7D 89 03 A6 */	mtctr r12
/* 8142A9B4 | 4E 80 04 21 */	bctrl
.L_8142A9B8:
/* 8142A9B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142A9BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142A9C0 | 7C 08 03 A6 */	mtlr r0
/* 8142A9C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142A9C8 | 4E 80 00 20 */	blr
.endfn onRightPageScroll__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x287C | 0x8142A9CC | size: 0x88
# textinput::candidatebox::LayoutByNW4R::onLeftPageScroll()
.fn onLeftPageScroll__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142A9CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142A9D0 | 7C 08 02 A6 */	mflr r0
/* 8142A9D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142A9D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142A9DC | 7C 7F 1B 78 */	mr r31, r3
/* 8142A9E0 | 80 03 02 C4 */	lwz r0, 0x2c4(r3)
/* 8142A9E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142A9E8 | 40 81 00 58 */	ble .L_8142AA40
/* 8142A9EC | C0 23 02 C8 */	lfs f1, 0x2c8(r3)
/* 8142A9F0 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142A9F4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142A9F8 | 40 80 00 14 */	bge .L_8142AA0C
/* 8142A9FC | 80 83 02 C4 */	lwz r4, 0x2c4(r3)
/* 8142AA00 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 8142AA04 | 48 00 21 11 */	bl StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl
/* 8142AA08 | 48 00 00 20 */	b .L_8142AA28
.L_8142AA0C:
/* 8142AA0C | 41 81 00 1C */	bgt .L_8142AA28
/* 8142AA10 | 80 83 02 C4 */	lwz r4, 0x2c4(r3)
/* 8142AA14 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 8142AA18 | 48 00 1C 15 */	bl GetPrevPageIdx___Q39textinput12candidatebox10UITextAreaCFl
/* 8142AA1C | 7C 64 1B 78 */	mr r4, r3
/* 8142AA20 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8142AA24 | 48 00 20 F1 */	bl StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl
.L_8142AA28:
/* 8142AA28 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8142AA2C | 38 80 00 0B */	li r4, 0xb
/* 8142AA30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AA34 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AA38 | 7D 89 03 A6 */	mtctr r12
/* 8142AA3C | 4E 80 04 21 */	bctrl
.L_8142AA40:
/* 8142AA40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142AA44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142AA48 | 7C 08 03 A6 */	mtlr r0
/* 8142AA4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142AA50 | 4E 80 00 20 */	blr
.endfn onLeftPageScroll__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x2904 | 0x8142AA54 | size: 0x50
# textinput::candidatebox::LayoutByNW4R::onClose()
.fn onClose__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142AA54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142AA58 | 7C 08 02 A6 */	mflr r0
/* 8142AA5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142AA60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142AA64 | 7C 7F 1B 78 */	mr r31, r3
/* 8142AA68 | 81 83 00 24 */	lwz r12, 0x24(r3)
/* 8142AA6C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142AA70 | 7D 89 03 A6 */	mtctr r12
/* 8142AA74 | 38 63 00 24 */	addi r3, r3, 0x24
/* 8142AA78 | 4E 80 04 21 */	bctrl
/* 8142AA7C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142AA80 | 7F E3 FB 78 */	mr r3, r31
/* 8142AA84 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8142AA88 | 7D 89 03 A6 */	mtctr r12
/* 8142AA8C | 4E 80 04 21 */	bctrl
/* 8142AA90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142AA94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142AA98 | 7C 08 03 A6 */	mtlr r0
/* 8142AA9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142AAA0 | 4E 80 00 20 */	blr
.endfn onClose__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x2954 | 0x8142AAA4 | size: 0x4
# textinput::candidatebox::Base::onClose()
.fn onClose__Q39textinput12candidatebox4BaseFv, global
/* 8142AAA4 | 4E 80 00 20 */	blr
.endfn onClose__Q39textinput12candidatebox4BaseFv

# .text:0x2958 | 0x8142AAA8 | size: 0x1A0
# textinput::candidatebox::LayoutByNW4R::cancelStateFocusIn()
.fn cancelStateFocusIn__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142AAA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142AAAC | 7C 08 02 A6 */	mflr r0
/* 8142AAB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142AAB4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142AAB8 | 3F E0 81 66 */	lis r31, lbl_8165D2F8@ha
/* 8142AABC | 3B FF D2 F8 */	addi r31, r31, lbl_8165D2F8@l
/* 8142AAC0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142AAC4 | 3B C0 00 00 */	li r30, 0x0
/* 8142AAC8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142AACC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8142AAD0 | 7C 7C 1B 78 */	mr r28, r3
.L_8142AAD4:
/* 8142AAD4 | 81 9C 00 24 */	lwz r12, 0x24(r28)
/* 8142AAD8 | 38 7C 00 24 */	addi r3, r28, 0x24
/* 8142AADC | 38 9F 00 04 */	addi r4, r31, 0x4
/* 8142AAE0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142AAE4 | 7D 89 03 A6 */	mtctr r12
/* 8142AAE8 | 4E 80 04 21 */	bctrl
/* 8142AAEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142AAF0 | 7C 7D 1B 78 */	mr r29, r3
/* 8142AAF4 | 41 82 01 24 */	beq .L_8142AC18
/* 8142AAF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AAFC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142AB00 | 7D 89 03 A6 */	mtctr r12
/* 8142AB04 | 4E 80 04 21 */	bctrl
/* 8142AB08 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8142AB0C | 41 82 00 20 */	beq .L_8142AB2C
/* 8142AB10 | 40 80 00 10 */	bge .L_8142AB20
/* 8142AB14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142AB18 | 40 80 00 64 */	bge .L_8142AB7C
/* 8142AB1C | 48 00 00 FC */	b .L_8142AC18
.L_8142AB20:
/* 8142AB20 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8142AB24 | 40 80 00 F4 */	bge .L_8142AC18
/* 8142AB28 | 48 00 00 A4 */	b .L_8142ABCC
.L_8142AB2C:
/* 8142AB2C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142AB30 | 7F A3 EB 78 */	mr r3, r29
/* 8142AB34 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142AB38 | 7D 89 03 A6 */	mtctr r12
/* 8142AB3C | 4E 80 04 21 */	bctrl
/* 8142AB40 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8142AB44 | 41 82 00 D4 */	beq .L_8142AC18
/* 8142AB48 | 40 80 00 10 */	bge .L_8142AB58
/* 8142AB4C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8142AB50 | 40 80 00 10 */	bge .L_8142AB60
/* 8142AB54 | 48 00 00 C4 */	b .L_8142AC18
.L_8142AB58:
/* 8142AB58 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8142AB5C | 40 80 00 BC */	bge .L_8142AC18
.L_8142AB60:
/* 8142AB60 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142AB64 | 7F A3 EB 78 */	mr r3, r29
/* 8142AB68 | 38 80 00 02 */	li r4, 0x2
/* 8142AB6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AB70 | 7D 89 03 A6 */	mtctr r12
/* 8142AB74 | 4E 80 04 21 */	bctrl
/* 8142AB78 | 48 00 00 A0 */	b .L_8142AC18
.L_8142AB7C:
/* 8142AB7C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142AB80 | 7F A3 EB 78 */	mr r3, r29
/* 8142AB84 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142AB88 | 7D 89 03 A6 */	mtctr r12
/* 8142AB8C | 4E 80 04 21 */	bctrl
/* 8142AB90 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8142AB94 | 41 82 00 84 */	beq .L_8142AC18
/* 8142AB98 | 40 80 00 10 */	bge .L_8142ABA8
/* 8142AB9C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8142ABA0 | 40 80 00 10 */	bge .L_8142ABB0
/* 8142ABA4 | 48 00 00 74 */	b .L_8142AC18
.L_8142ABA8:
/* 8142ABA8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8142ABAC | 40 80 00 6C */	bge .L_8142AC18
.L_8142ABB0:
/* 8142ABB0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142ABB4 | 7F A3 EB 78 */	mr r3, r29
/* 8142ABB8 | 38 80 00 02 */	li r4, 0x2
/* 8142ABBC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142ABC0 | 7D 89 03 A6 */	mtctr r12
/* 8142ABC4 | 4E 80 04 21 */	bctrl
/* 8142ABC8 | 48 00 00 50 */	b .L_8142AC18
.L_8142ABCC:
/* 8142ABCC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142ABD0 | 7F A3 EB 78 */	mr r3, r29
/* 8142ABD4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142ABD8 | 7D 89 03 A6 */	mtctr r12
/* 8142ABDC | 4E 80 04 21 */	bctrl
/* 8142ABE0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8142ABE4 | 41 82 00 34 */	beq .L_8142AC18
/* 8142ABE8 | 40 80 00 10 */	bge .L_8142ABF8
/* 8142ABEC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8142ABF0 | 40 80 00 10 */	bge .L_8142AC00
/* 8142ABF4 | 48 00 00 24 */	b .L_8142AC18
.L_8142ABF8:
/* 8142ABF8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8142ABFC | 40 80 00 1C */	bge .L_8142AC18
.L_8142AC00:
/* 8142AC00 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142AC04 | 7F A3 EB 78 */	mr r3, r29
/* 8142AC08 | 38 80 00 02 */	li r4, 0x2
/* 8142AC0C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AC10 | 7D 89 03 A6 */	mtctr r12
/* 8142AC14 | 4E 80 04 21 */	bctrl
.L_8142AC18:
/* 8142AC18 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8142AC1C | 3B FF 00 40 */	addi r31, r31, 0x40
/* 8142AC20 | 28 1E 00 1A */	cmplwi r30, 0x1a
/* 8142AC24 | 41 80 FE B0 */	blt .L_8142AAD4
/* 8142AC28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142AC2C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142AC30 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142AC34 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142AC38 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8142AC3C | 7C 08 03 A6 */	mtlr r0
/* 8142AC40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142AC44 | 4E 80 00 20 */	blr
.endfn cancelStateFocusIn__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x2AF8 | 0x8142AC48 | size: 0x8
# textinput::candidatebox::CandidateTextAnmPane::getKeyType() const
.fn getKeyType__Q39textinput12candidatebox20CandidateTextAnmPaneCFv, global
/* 8142AC48 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8142AC4C | 4E 80 00 20 */	blr
.endfn getKeyType__Q39textinput12candidatebox20CandidateTextAnmPaneCFv

# .text:0x2B00 | 0x8142AC50 | size: 0x8
# textinput::candidatebox::CandidateTextAnmPane::getState() const
.fn getState__Q39textinput12candidatebox20CandidateTextAnmPaneCFv, global
/* 8142AC50 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8142AC54 | 4E 80 00 20 */	blr
.endfn getState__Q39textinput12candidatebox20CandidateTextAnmPaneCFv

# .text:0x2B08 | 0x8142AC58 | size: 0x8
# textinput::candidatebox::CandidateTextAnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q39textinput12candidatebox20CandidateTextAnmPaneFUl, global
/* 8142AC58 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 8142AC5C | 48 00 C4 64 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q39textinput12candidatebox20CandidateTextAnmPaneFUl

# .text:0x2B10 | 0x8142AC60 | size: 0x80
# textinput::candidatebox::LayoutByNW4R::setInvalid(bool)
.fn setInvalid__Q39textinput12candidatebox12LayoutByNW4RFb, global
/* 8142AC60 | 88 03 00 19 */	lbz r0, 0x19(r3)
/* 8142AC64 | 7C 04 00 40 */	cmplw r4, r0
/* 8142AC68 | 40 82 00 3C */	bne .L_8142ACA4
/* 8142AC6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142AC70 | 41 82 00 1C */	beq .L_8142AC8C
/* 8142AC74 | 80 63 04 18 */	lwz r3, 0x418(r3)
/* 8142AC78 | 38 80 00 0A */	li r4, 0xa
/* 8142AC7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AC80 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AC84 | 7D 89 03 A6 */	mtctr r12
/* 8142AC88 | 4E 80 04 20 */	bctr
.L_8142AC8C:
/* 8142AC8C | 80 63 04 18 */	lwz r3, 0x418(r3)
/* 8142AC90 | 38 80 00 00 */	li r4, 0x0
/* 8142AC94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AC98 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AC9C | 7D 89 03 A6 */	mtctr r12
/* 8142ACA0 | 4E 80 04 20 */	bctr
.L_8142ACA4:
/* 8142ACA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142ACA8 | 98 83 00 19 */	stb r4, 0x19(r3)
/* 8142ACAC | 41 82 00 1C */	beq .L_8142ACC8
/* 8142ACB0 | 80 63 04 18 */	lwz r3, 0x418(r3)
/* 8142ACB4 | 38 80 00 0B */	li r4, 0xb
/* 8142ACB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142ACBC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142ACC0 | 7D 89 03 A6 */	mtctr r12
/* 8142ACC4 | 4E 80 04 20 */	bctr
.L_8142ACC8:
/* 8142ACC8 | 80 63 04 18 */	lwz r3, 0x418(r3)
/* 8142ACCC | 38 80 00 0C */	li r4, 0xc
/* 8142ACD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142ACD4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142ACD8 | 7D 89 03 A6 */	mtctr r12
/* 8142ACDC | 4E 80 04 20 */	bctr
.endfn setInvalid__Q39textinput12candidatebox12LayoutByNW4RFb

# .text:0x2B90 | 0x8142ACE0 | size: 0x98
# textinput::candidatebox::LayoutByNW4R::setActive(bool)
.fn setActive__Q39textinput12candidatebox12LayoutByNW4RFb, global
/* 8142ACE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142ACE4 | 7C 08 02 A6 */	mflr r0
/* 8142ACE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142ACEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142ACF0 | 7C 9F 23 78 */	mr r31, r4
/* 8142ACF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142ACF8 | 7C 7E 1B 78 */	mr r30, r3
/* 8142ACFC | 80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8142AD00 | 98 83 04 1C */	stb r4, 0x41c(r3)
/* 8142AD04 | 38 05 FF F8 */	subi r0, r5, 0x8
/* 8142AD08 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8142AD0C | 41 81 00 54 */	bgt .L_8142AD60
/* 8142AD10 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8142AD14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AD18 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8142AD1C | 7D 89 03 A6 */	mtctr r12
/* 8142AD20 | 4E 80 04 21 */	bctrl
/* 8142AD24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AD28 | 7F E4 FB 78 */	mr r4, r31
/* 8142AD2C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142AD30 | 7D 89 03 A6 */	mtctr r12
/* 8142AD34 | 4E 80 04 21 */	bctrl
/* 8142AD38 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8142AD3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AD40 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142AD44 | 7D 89 03 A6 */	mtctr r12
/* 8142AD48 | 4E 80 04 21 */	bctrl
/* 8142AD4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AD50 | 7F E4 FB 78 */	mr r4, r31
/* 8142AD54 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8142AD58 | 7D 89 03 A6 */	mtctr r12
/* 8142AD5C | 4E 80 04 21 */	bctrl
.L_8142AD60:
/* 8142AD60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142AD64 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142AD68 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142AD6C | 7C 08 03 A6 */	mtlr r0
/* 8142AD70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142AD74 | 4E 80 00 20 */	blr
.endfn setActive__Q39textinput12candidatebox12LayoutByNW4RFb

# .text:0x2C28 | 0x8142AD78 | size: 0x280
# textinput::candidatebox::LayoutByNW4R::onEvent(textinput::candidatebox::UIObj*, unsigned long, void*)
.fn onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv, global
/* 8142AD78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142AD7C | 7C 08 02 A6 */	mflr r0
/* 8142AD80 | 2C 05 01 02 */	cmpwi r5, 0x102
/* 8142AD84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142AD88 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142AD8C | 3F E0 81 66 */	lis r31, lbl_8165D2D0@ha
/* 8142AD90 | 3B FF D2 D0 */	addi r31, r31, lbl_8165D2D0@l
/* 8142AD94 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142AD98 | 7C 7E 1B 78 */	mr r30, r3
/* 8142AD9C | 41 82 01 00 */	beq .L_8142AE9C
/* 8142ADA0 | 40 80 00 1C */	bge .L_8142ADBC
/* 8142ADA4 | 2C 05 01 00 */	cmpwi r5, 0x100
/* 8142ADA8 | 41 82 00 54 */	beq .L_8142ADFC
/* 8142ADAC | 40 80 00 64 */	bge .L_8142AE10
/* 8142ADB0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8142ADB4 | 41 82 00 2C */	beq .L_8142ADE0
/* 8142ADB8 | 48 00 02 28 */	b .L_8142AFE0
.L_8142ADBC:
/* 8142ADBC | 2C 05 03 01 */	cmpwi r5, 0x301
/* 8142ADC0 | 41 82 01 CC */	beq .L_8142AF8C
/* 8142ADC4 | 40 80 00 10 */	bge .L_8142ADD4
/* 8142ADC8 | 2C 05 03 00 */	cmpwi r5, 0x300
/* 8142ADCC | 40 80 01 04 */	bge .L_8142AED0
/* 8142ADD0 | 48 00 02 10 */	b .L_8142AFE0
.L_8142ADD4:
/* 8142ADD4 | 2C 05 04 00 */	cmpwi r5, 0x400
/* 8142ADD8 | 41 82 01 F4 */	beq .L_8142AFCC
/* 8142ADDC | 48 00 02 04 */	b .L_8142AFE0
.L_8142ADE0:
/* 8142ADE0 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142ADE4 | 7C C4 33 78 */	mr r4, r6
/* 8142ADE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142ADEC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142ADF0 | 7D 89 03 A6 */	mtctr r12
/* 8142ADF4 | 4E 80 04 21 */	bctrl
/* 8142ADF8 | 48 00 01 E8 */	b .L_8142AFE0
.L_8142ADFC:
/* 8142ADFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AE00 | 81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 8142AE04 | 7D 89 03 A6 */	mtctr r12
/* 8142AE08 | 4E 80 04 21 */	bctrl
/* 8142AE0C | 48 00 01 D4 */	b .L_8142AFE0
.L_8142AE10:
/* 8142AE10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AE14 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8142AE18 | 7D 89 03 A6 */	mtctr r12
/* 8142AE1C | 4E 80 04 21 */	bctrl
/* 8142AE20 | 3C 03 00 00 */	addis r0, r3, 0x0
/* 8142AE24 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8142AE28 | 41 82 01 B8 */	beq .L_8142AFE0
/* 8142AE2C | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8142AE30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AE34 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142AE38 | 7D 89 03 A6 */	mtctr r12
/* 8142AE3C | 4E 80 04 21 */	bctrl
/* 8142AE40 | 38 00 00 00 */	li r0, 0x0
/* 8142AE44 | 98 03 01 F5 */	stb r0, 0x1f5(r3)
/* 8142AE48 | 7F C3 F3 78 */	mr r3, r30
/* 8142AE4C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142AE50 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8142AE54 | 7D 89 03 A6 */	mtctr r12
/* 8142AE58 | 4E 80 04 21 */	bctrl
/* 8142AE5C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8142AE60 | 38 80 00 09 */	li r4, 0x9
/* 8142AE64 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8142AE68 | 80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8142AE6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AE70 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AE74 | 7D 89 03 A6 */	mtctr r12
/* 8142AE78 | 4E 80 04 21 */	bctrl
/* 8142AE7C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142AE80 | 7F C3 F3 78 */	mr r3, r30
/* 8142AE84 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8142AE88 | 38 80 00 15 */	li r4, 0x15
/* 8142AE8C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142AE90 | 7D 89 03 A6 */	mtctr r12
/* 8142AE94 | 4E 80 04 21 */	bctrl
/* 8142AE98 | 48 00 01 48 */	b .L_8142AFE0
.L_8142AE9C:
/* 8142AE9C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8142AEA0 | 41 80 00 1C */	blt .L_8142AEBC
/* 8142AEA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AEA8 | 7C C4 33 78 */	mr r4, r6
/* 8142AEAC | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8142AEB0 | 7D 89 03 A6 */	mtctr r12
/* 8142AEB4 | 4E 80 04 21 */	bctrl
/* 8142AEB8 | 48 00 01 28 */	b .L_8142AFE0
.L_8142AEBC:
/* 8142AEBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AEC0 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8142AEC4 | 7D 89 03 A6 */	mtctr r12
/* 8142AEC8 | 4E 80 04 21 */	bctrl
/* 8142AECC | 48 00 01 14 */	b .L_8142AFE0
.L_8142AED0:
/* 8142AED0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AED4 | 38 80 00 01 */	li r4, 0x1
/* 8142AED8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8142AEDC | 7D 89 03 A6 */	mtctr r12
/* 8142AEE0 | 4E 80 04 21 */	bctrl
/* 8142AEE4 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8142AEE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AEEC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142AEF0 | 7D 89 03 A6 */	mtctr r12
/* 8142AEF4 | 4E 80 04 21 */	bctrl
/* 8142AEF8 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 8142AEFC | 38 7E 00 24 */	addi r3, r30, 0x24
/* 8142AF00 | 38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 8142AF04 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142AF08 | 7D 89 03 A6 */	mtctr r12
/* 8142AF0C | 4E 80 04 21 */	bctrl
/* 8142AF10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AF14 | 38 80 00 00 */	li r4, 0x0
/* 8142AF18 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AF1C | 7D 89 03 A6 */	mtctr r12
/* 8142AF20 | 4E 80 04 21 */	bctrl
/* 8142AF24 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 8142AF28 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 8142AF2C | 38 9F 07 20 */	addi r4, r31, 0x720
/* 8142AF30 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142AF34 | 7D 89 03 A6 */	mtctr r12
/* 8142AF38 | 4E 80 04 21 */	bctrl
/* 8142AF3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AF40 | 38 80 00 00 */	li r4, 0x0
/* 8142AF44 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AF48 | 7D 89 03 A6 */	mtctr r12
/* 8142AF4C | 4E 80 04 21 */	bctrl
/* 8142AF50 | 88 1E 00 19 */	lbz r0, 0x19(r30)
/* 8142AF54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142AF58 | 41 82 00 88 */	beq .L_8142AFE0
/* 8142AF5C | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 8142AF60 | 38 7E 00 24 */	addi r3, r30, 0x24
/* 8142AF64 | 38 9F 07 38 */	addi r4, r31, 0x738
/* 8142AF68 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142AF6C | 7D 89 03 A6 */	mtctr r12
/* 8142AF70 | 4E 80 04 21 */	bctrl
/* 8142AF74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AF78 | 38 80 00 0B */	li r4, 0xb
/* 8142AF7C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142AF80 | 7D 89 03 A6 */	mtctr r12
/* 8142AF84 | 4E 80 04 21 */	bctrl
/* 8142AF88 | 48 00 00 58 */	b .L_8142AFE0
.L_8142AF8C:
/* 8142AF8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AF90 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8142AF94 | 7D 89 03 A6 */	mtctr r12
/* 8142AF98 | 4E 80 04 21 */	bctrl
/* 8142AF9C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142AFA0 | 7F C3 F3 78 */	mr r3, r30
/* 8142AFA4 | 38 80 00 00 */	li r4, 0x0
/* 8142AFA8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8142AFAC | 7D 89 03 A6 */	mtctr r12
/* 8142AFB0 | 4E 80 04 21 */	bctrl
/* 8142AFB4 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8142AFB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AFBC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142AFC0 | 7D 89 03 A6 */	mtctr r12
/* 8142AFC4 | 4E 80 04 21 */	bctrl
/* 8142AFC8 | 48 00 00 18 */	b .L_8142AFE0
.L_8142AFCC:
/* 8142AFCC | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 8142AFD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142AFD4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142AFD8 | 7D 89 03 A6 */	mtctr r12
/* 8142AFDC | 4E 80 04 21 */	bctrl
.L_8142AFE0:
/* 8142AFE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142AFE4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142AFE8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142AFEC | 7C 08 03 A6 */	mtlr r0
/* 8142AFF0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142AFF4 | 4E 80 00 20 */	blr
.endfn onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv

# .text:0x2EA8 | 0x8142AFF8 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::getFocusedTextPane()
.fn getFocusedTextPane__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142AFF8 | 80 63 02 C0 */	lwz r3, 0x2c0(r3)
/* 8142AFFC | 4E 80 00 20 */	blr
.endfn getFocusedTextPane__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x2EB0 | 0x8142B000 | size: 0x4
# textinput::candidatebox::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q39textinput12candidatebox12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8142B000 | 4E 80 00 20 */	blr
.endfn onTiEvent__Q39textinput12candidatebox12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x2EB4 | 0x8142B004 | size: 0x1A0
# textinput::candidatebox::CandidateTextAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput12candidatebox20CandidateTextAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8142B004 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142B008 | 7C 08 02 A6 */	mflr r0
/* 8142B00C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142B010 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142B014 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142B018 | 7C 9F 23 78 */	mr r31, r4
/* 8142B01C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142B020 | 7C 7E 1B 78 */	mr r30, r3
/* 8142B024 | 40 82 00 1C */	bne .L_8142B040
/* 8142B028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B02C | 38 80 00 04 */	li r4, 0x4
/* 8142B030 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B034 | 7D 89 03 A6 */	mtctr r12
/* 8142B038 | 4E 80 04 21 */	bctrl
/* 8142B03C | 48 00 01 50 */	b .L_8142B18C
.L_8142B040:
/* 8142B040 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 8142B044 | 40 82 00 1C */	bne .L_8142B060
/* 8142B048 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B04C | 38 80 00 00 */	li r4, 0x0
/* 8142B050 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B054 | 7D 89 03 A6 */	mtctr r12
/* 8142B058 | 4E 80 04 21 */	bctrl
/* 8142B05C | 48 00 01 30 */	b .L_8142B18C
.L_8142B060:
/* 8142B060 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142B064 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8142B068 | 41 82 00 A8 */	beq .L_8142B110
/* 8142B06C | 40 80 00 14 */	bge .L_8142B080
/* 8142B070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142B074 | 41 82 00 1C */	beq .L_8142B090
/* 8142B078 | 40 80 00 38 */	bge .L_8142B0B0
/* 8142B07C | 48 00 01 10 */	b .L_8142B18C
.L_8142B080:
/* 8142B080 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8142B084 | 41 82 00 CC */	beq .L_8142B150
/* 8142B088 | 40 80 01 04 */	bge .L_8142B18C
/* 8142B08C | 48 00 00 64 */	b .L_8142B0F0
.L_8142B090:
/* 8142B090 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8142B094 | 40 82 00 F8 */	bne .L_8142B18C
/* 8142B098 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B09C | 38 80 00 01 */	li r4, 0x1
/* 8142B0A0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B0A4 | 7D 89 03 A6 */	mtctr r12
/* 8142B0A8 | 4E 80 04 21 */	bctrl
/* 8142B0AC | 48 00 00 E0 */	b .L_8142B18C
.L_8142B0B0:
/* 8142B0B0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B0B4 | 40 82 00 18 */	bne .L_8142B0CC
/* 8142B0B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B0BC | 38 80 00 03 */	li r4, 0x3
/* 8142B0C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B0C4 | 7D 89 03 A6 */	mtctr r12
/* 8142B0C8 | 4E 80 04 21 */	bctrl
.L_8142B0CC:
/* 8142B0CC | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142B0D0 | 40 82 00 BC */	bne .L_8142B18C
/* 8142B0D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B0D8 | 7F C3 F3 78 */	mr r3, r30
/* 8142B0DC | 38 80 00 02 */	li r4, 0x2
/* 8142B0E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B0E4 | 7D 89 03 A6 */	mtctr r12
/* 8142B0E8 | 4E 80 04 21 */	bctrl
/* 8142B0EC | 48 00 00 A0 */	b .L_8142B18C
.L_8142B0F0:
/* 8142B0F0 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8142B0F4 | 40 82 00 98 */	bne .L_8142B18C
/* 8142B0F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B0FC | 38 80 00 02 */	li r4, 0x2
/* 8142B100 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B104 | 7D 89 03 A6 */	mtctr r12
/* 8142B108 | 4E 80 04 21 */	bctrl
/* 8142B10C | 48 00 00 80 */	b .L_8142B18C
.L_8142B110:
/* 8142B110 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B114 | 40 82 00 18 */	bne .L_8142B12C
/* 8142B118 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B11C | 38 80 00 00 */	li r4, 0x0
/* 8142B120 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B124 | 7D 89 03 A6 */	mtctr r12
/* 8142B128 | 4E 80 04 21 */	bctrl
.L_8142B12C:
/* 8142B12C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142B130 | 40 82 00 5C */	bne .L_8142B18C
/* 8142B134 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B138 | 7F C3 F3 78 */	mr r3, r30
/* 8142B13C | 38 80 00 01 */	li r4, 0x1
/* 8142B140 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B144 | 7D 89 03 A6 */	mtctr r12
/* 8142B148 | 4E 80 04 21 */	bctrl
/* 8142B14C | 48 00 00 40 */	b .L_8142B18C
.L_8142B150:
/* 8142B150 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B154 | 40 82 00 18 */	bne .L_8142B16C
/* 8142B158 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B15C | 38 80 00 03 */	li r4, 0x3
/* 8142B160 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B164 | 7D 89 03 A6 */	mtctr r12
/* 8142B168 | 4E 80 04 21 */	bctrl
.L_8142B16C:
/* 8142B16C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142B170 | 40 82 00 1C */	bne .L_8142B18C
/* 8142B174 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B178 | 7F C3 F3 78 */	mr r3, r30
/* 8142B17C | 38 80 00 02 */	li r4, 0x2
/* 8142B180 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B184 | 7D 89 03 A6 */	mtctr r12
/* 8142B188 | 4E 80 04 21 */	bctrl
.L_8142B18C:
/* 8142B18C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142B190 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142B194 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142B198 | 7C 08 03 A6 */	mtlr r0
/* 8142B19C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142B1A0 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput12candidatebox20CandidateTextAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x3054 | 0x8142B1A4 | size: 0x20C
# textinput::candidatebox::CandidateScrollAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8142B1A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142B1A8 | 7C 08 02 A6 */	mflr r0
/* 8142B1AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142B1B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142B1B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142B1B8 | 7C 9F 23 78 */	mr r31, r4
/* 8142B1BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142B1C0 | 7C 7E 1B 78 */	mr r30, r3
/* 8142B1C4 | 40 82 00 24 */	bne .L_8142B1E8
/* 8142B1C8 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142B1CC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8142B1D0 | 41 82 00 18 */	beq .L_8142B1E8
/* 8142B1D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B1D8 | 38 80 00 04 */	li r4, 0x4
/* 8142B1DC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B1E0 | 7D 89 03 A6 */	mtctr r12
/* 8142B1E4 | 4E 80 04 21 */	bctrl
.L_8142B1E8:
/* 8142B1E8 | 2C 1F 00 06 */	cmpwi r31, 0x6
/* 8142B1EC | 40 82 00 28 */	bne .L_8142B214
/* 8142B1F0 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8142B1F4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8142B1F8 | 40 82 00 1C */	bne .L_8142B214
/* 8142B1FC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B200 | 7F C3 F3 78 */	mr r3, r30
/* 8142B204 | 38 80 00 05 */	li r4, 0x5
/* 8142B208 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B20C | 7D 89 03 A6 */	mtctr r12
/* 8142B210 | 4E 80 04 21 */	bctrl
.L_8142B214:
/* 8142B214 | 2C 1F 00 07 */	cmpwi r31, 0x7
/* 8142B218 | 40 82 00 28 */	bne .L_8142B240
/* 8142B21C | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8142B220 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8142B224 | 41 82 00 1C */	beq .L_8142B240
/* 8142B228 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B22C | 7F C3 F3 78 */	mr r3, r30
/* 8142B230 | 38 80 00 06 */	li r4, 0x6
/* 8142B234 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B238 | 7D 89 03 A6 */	mtctr r12
/* 8142B23C | 4E 80 04 21 */	bctrl
.L_8142B240:
/* 8142B240 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8142B244 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8142B248 | 41 81 01 50 */	bgt .L_8142B398
/* 8142B24C | 3C 60 81 66 */	lis r3, jumptable_8165DA48@ha
/* 8142B250 | 54 00 10 3A */	slwi r0, r0, 2
/* 8142B254 | 38 63 DA 48 */	addi r3, r3, jumptable_8165DA48@l
/* 8142B258 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8142B25C | 7C 69 03 A6 */	mtctr r3
/* 8142B260 | 4E 80 04 20 */	bctr
.L_8142B264:
/* 8142B264 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142B268 | 40 82 01 30 */	bne .L_8142B398
/* 8142B26C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B270 | 7F C3 F3 78 */	mr r3, r30
/* 8142B274 | 38 80 00 01 */	li r4, 0x1
/* 8142B278 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B27C | 7D 89 03 A6 */	mtctr r12
/* 8142B280 | 4E 80 04 21 */	bctrl
/* 8142B284 | 48 00 01 14 */	b .L_8142B398
.L_8142B288:
/* 8142B288 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142B28C | 40 82 00 1C */	bne .L_8142B2A8
/* 8142B290 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B294 | 7F C3 F3 78 */	mr r3, r30
/* 8142B298 | 38 80 00 03 */	li r4, 0x3
/* 8142B29C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B2A0 | 7D 89 03 A6 */	mtctr r12
/* 8142B2A4 | 4E 80 04 21 */	bctrl
.L_8142B2A8:
/* 8142B2A8 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142B2AC | 40 82 00 EC */	bne .L_8142B398
/* 8142B2B0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B2B4 | 7F C3 F3 78 */	mr r3, r30
/* 8142B2B8 | 38 80 00 02 */	li r4, 0x2
/* 8142B2BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B2C0 | 7D 89 03 A6 */	mtctr r12
/* 8142B2C4 | 4E 80 04 21 */	bctrl
/* 8142B2C8 | 48 00 00 D0 */	b .L_8142B398
.L_8142B2CC:
/* 8142B2CC | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142B2D0 | 40 82 00 C8 */	bne .L_8142B398
/* 8142B2D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B2D8 | 7F C3 F3 78 */	mr r3, r30
/* 8142B2DC | 38 80 00 02 */	li r4, 0x2
/* 8142B2E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B2E4 | 7D 89 03 A6 */	mtctr r12
/* 8142B2E8 | 4E 80 04 21 */	bctrl
/* 8142B2EC | 48 00 00 AC */	b .L_8142B398
.L_8142B2F0:
/* 8142B2F0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142B2F4 | 40 82 00 1C */	bne .L_8142B310
/* 8142B2F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B2FC | 7F C3 F3 78 */	mr r3, r30
/* 8142B300 | 38 80 00 00 */	li r4, 0x0
/* 8142B304 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B308 | 7D 89 03 A6 */	mtctr r12
/* 8142B30C | 4E 80 04 21 */	bctrl
.L_8142B310:
/* 8142B310 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142B314 | 40 82 00 84 */	bne .L_8142B398
/* 8142B318 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B31C | 7F C3 F3 78 */	mr r3, r30
/* 8142B320 | 38 80 00 01 */	li r4, 0x1
/* 8142B324 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B328 | 7D 89 03 A6 */	mtctr r12
/* 8142B32C | 4E 80 04 21 */	bctrl
/* 8142B330 | 48 00 00 68 */	b .L_8142B398
.L_8142B334:
/* 8142B334 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142B338 | 40 82 00 1C */	bne .L_8142B354
/* 8142B33C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B340 | 7F C3 F3 78 */	mr r3, r30
/* 8142B344 | 38 80 00 03 */	li r4, 0x3
/* 8142B348 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B34C | 7D 89 03 A6 */	mtctr r12
/* 8142B350 | 4E 80 04 21 */	bctrl
.L_8142B354:
/* 8142B354 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142B358 | 40 82 00 40 */	bne .L_8142B398
/* 8142B35C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B360 | 7F C3 F3 78 */	mr r3, r30
/* 8142B364 | 38 80 00 02 */	li r4, 0x2
/* 8142B368 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B36C | 7D 89 03 A6 */	mtctr r12
/* 8142B370 | 4E 80 04 21 */	bctrl
/* 8142B374 | 48 00 00 24 */	b .L_8142B398
.L_8142B378:
/* 8142B378 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142B37C | 40 82 00 1C */	bne .L_8142B398
/* 8142B380 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B384 | 7F C3 F3 78 */	mr r3, r30
/* 8142B388 | 38 80 00 00 */	li r4, 0x0
/* 8142B38C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B390 | 7D 89 03 A6 */	mtctr r12
/* 8142B394 | 4E 80 04 21 */	bctrl
.L_8142B398:
/* 8142B398 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142B39C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142B3A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142B3A4 | 7C 08 03 A6 */	mtlr r0
/* 8142B3A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142B3AC | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x3260 | 0x8142B3B0 | size: 0x140
# textinput::candidatebox::OnOffAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput12candidatebox12OnOffAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8142B3B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142B3B4 | 7C 08 02 A6 */	mflr r0
/* 8142B3B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142B3BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142B3C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142B3C4 | 7C 9F 23 78 */	mr r31, r4
/* 8142B3C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142B3CC | 7C 7E 1B 78 */	mr r30, r3
/* 8142B3D0 | 40 82 00 1C */	bne .L_8142B3EC
/* 8142B3D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B3D8 | 38 80 00 07 */	li r4, 0x7
/* 8142B3DC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B3E0 | 7D 89 03 A6 */	mtctr r12
/* 8142B3E4 | 4E 80 04 21 */	bctrl
/* 8142B3E8 | 48 00 00 F0 */	b .L_8142B4D8
.L_8142B3EC:
/* 8142B3EC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142B3F0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8142B3F4 | 41 82 00 A8 */	beq .L_8142B49C
/* 8142B3F8 | 40 80 00 14 */	bge .L_8142B40C
/* 8142B3FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142B400 | 41 82 00 1C */	beq .L_8142B41C
/* 8142B404 | 40 80 00 38 */	bge .L_8142B43C
/* 8142B408 | 48 00 00 D0 */	b .L_8142B4D8
.L_8142B40C:
/* 8142B40C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8142B410 | 41 82 00 C8 */	beq .L_8142B4D8
/* 8142B414 | 40 80 00 C4 */	bge .L_8142B4D8
/* 8142B418 | 48 00 00 64 */	b .L_8142B47C
.L_8142B41C:
/* 8142B41C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8142B420 | 40 82 00 B8 */	bne .L_8142B4D8
/* 8142B424 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B428 | 38 80 00 01 */	li r4, 0x1
/* 8142B42C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B430 | 7D 89 03 A6 */	mtctr r12
/* 8142B434 | 4E 80 04 21 */	bctrl
/* 8142B438 | 48 00 00 A0 */	b .L_8142B4D8
.L_8142B43C:
/* 8142B43C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B440 | 40 82 00 18 */	bne .L_8142B458
/* 8142B444 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B448 | 38 80 00 03 */	li r4, 0x3
/* 8142B44C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B450 | 7D 89 03 A6 */	mtctr r12
/* 8142B454 | 4E 80 04 21 */	bctrl
.L_8142B458:
/* 8142B458 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142B45C | 40 82 00 7C */	bne .L_8142B4D8
/* 8142B460 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B464 | 7F C3 F3 78 */	mr r3, r30
/* 8142B468 | 38 80 00 02 */	li r4, 0x2
/* 8142B46C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B470 | 7D 89 03 A6 */	mtctr r12
/* 8142B474 | 4E 80 04 21 */	bctrl
/* 8142B478 | 48 00 00 60 */	b .L_8142B4D8
.L_8142B47C:
/* 8142B47C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8142B480 | 40 82 00 58 */	bne .L_8142B4D8
/* 8142B484 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B488 | 38 80 00 02 */	li r4, 0x2
/* 8142B48C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B490 | 7D 89 03 A6 */	mtctr r12
/* 8142B494 | 4E 80 04 21 */	bctrl
/* 8142B498 | 48 00 00 40 */	b .L_8142B4D8
.L_8142B49C:
/* 8142B49C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B4A0 | 40 82 00 18 */	bne .L_8142B4B8
/* 8142B4A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B4A8 | 38 80 00 00 */	li r4, 0x0
/* 8142B4AC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B4B0 | 7D 89 03 A6 */	mtctr r12
/* 8142B4B4 | 4E 80 04 21 */	bctrl
.L_8142B4B8:
/* 8142B4B8 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142B4BC | 40 82 00 1C */	bne .L_8142B4D8
/* 8142B4C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142B4C4 | 7F C3 F3 78 */	mr r3, r30
/* 8142B4C8 | 38 80 00 01 */	li r4, 0x1
/* 8142B4CC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B4D0 | 7D 89 03 A6 */	mtctr r12
/* 8142B4D4 | 4E 80 04 21 */	bctrl
.L_8142B4D8:
/* 8142B4D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142B4DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142B4E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142B4E4 | 7C 08 03 A6 */	mtlr r0
/* 8142B4E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142B4EC | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput12candidatebox12OnOffAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x33A0 | 0x8142B4F0 | size: 0x54
# textinput::candidatebox::PredictWindow::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput12candidatebox13PredictWindowFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8142B4F0 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142B4F4 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 8142B4F8 | 41 82 00 2C */	beq .L_8142B524
/* 8142B4FC | 4C 80 00 20 */	bgelr
/* 8142B500 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 8142B504 | 4D 80 00 20 */	bltlr
/* 8142B508 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B50C | 4C 82 00 20 */	bnelr
/* 8142B510 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B514 | 38 80 00 0A */	li r4, 0xa
/* 8142B518 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B51C | 7D 89 03 A6 */	mtctr r12
/* 8142B520 | 4E 80 04 20 */	bctr
.L_8142B524:
/* 8142B524 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8142B528 | 4C 82 00 20 */	bnelr
/* 8142B52C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142B530 | 38 80 00 00 */	li r4, 0x0
/* 8142B534 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142B538 | 7D 89 03 A6 */	mtctr r12
/* 8142B53C | 4E 80 04 20 */	bctr
/* 8142B540 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput12candidatebox13PredictWindowFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x33F4 | 0x8142B544 | size: 0x44
# textinput::candidatebox::LayoutByNW4R::setRootPaneScaleFor16x9()
.fn setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142B544 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142B548 | 7C 08 02 A6 */	mflr r0
/* 8142B54C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142B550 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142B554 | 7C 7F 1B 78 */	mr r31, r3
/* 8142B558 | 38 63 00 24 */	addi r3, r3, 0x24
/* 8142B55C | 48 00 B5 B1 */	bl setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
/* 8142B560 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142B564 | 7F E3 FB 78 */	mr r3, r31
/* 8142B568 | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8142B56C | 7D 89 03 A6 */	mtctr r12
/* 8142B570 | 4E 80 04 21 */	bctrl
/* 8142B574 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142B578 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142B57C | 7C 08 03 A6 */	mtlr r0
/* 8142B580 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142B584 | 4E 80 00 20 */	blr
.endfn setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x3438 | 0x8142B588 | size: 0x14
# textinput::candidatebox::LayoutByNW4R::SetScreenSize()
.fn SetScreenSize__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142B588 | C0 23 00 A4 */	lfs f1, 0xa4(r3)
/* 8142B58C | C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 8142B590 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8142B594 | D0 03 02 E0 */	stfs f0, 0x2e0(r3)
/* 8142B598 | 4E 80 00 20 */	blr
.endfn SetScreenSize__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x344C | 0x8142B59C | size: 0x44
# textinput::candidatebox::LayoutByNW4R::setRootPaneScaleFor4x3()
.fn setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142B59C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142B5A0 | 7C 08 02 A6 */	mflr r0
/* 8142B5A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142B5A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142B5AC | 7C 7F 1B 78 */	mr r31, r3
/* 8142B5B0 | 38 63 00 24 */	addi r3, r3, 0x24
/* 8142B5B4 | 48 00 B6 51 */	bl setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
/* 8142B5B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142B5BC | 7F E3 FB 78 */	mr r3, r31
/* 8142B5C0 | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8142B5C4 | 7D 89 03 A6 */	mtctr r12
/* 8142B5C8 | 4E 80 04 21 */	bctrl
/* 8142B5CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142B5D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142B5D4 | 7C 08 03 A6 */	mtlr r0
/* 8142B5D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142B5DC | 4E 80 00 20 */	blr
.endfn setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x3490 | 0x8142B5E0 | size: 0x184
# textinput::candidatebox::UITextArea::UITextArea(unsigned long, textinput::candidatebox::LayoutByNW4R*, textinput::candidatebox::UIObj::Listener*)
.fn __ct__Q39textinput12candidatebox10UITextAreaFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener, global
/* 8142B5E0 | 3D 20 81 66 */	lis r9, __vt__Q39textinput12candidatebox10UITextArea@ha
/* 8142B5E4 | 39 40 00 00 */	li r10, 0x0
/* 8142B5E8 | C0 22 89 90 */	lfs f1, lbl_81694D90@sda21(r0)
/* 8142B5EC | 39 29 DF 3C */	addi r9, r9, __vt__Q39textinput12candidatebox10UITextArea@l
/* 8142B5F0 | 38 00 FF FF */	li r0, -0x1
/* 8142B5F4 | C0 02 89 B8 */	lfs f0, lbl_81694DB8@sda21(r0)
/* 8142B5F8 | 3C E0 81 66 */	lis r7, __vt__Q39textinput4util9Animation@ha
/* 8142B5FC | 39 09 00 1C */	addi r8, r9, 0x1c
/* 8142B600 | 38 E7 D2 58 */	addi r7, r7, __vt__Q39textinput4util9Animation@l
/* 8142B604 | 91 43 00 04 */	stw r10, 0x4(r3)
/* 8142B608 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8142B60C | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 8142B610 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 8142B614 | 91 23 00 00 */	stw r9, 0x0(r3)
/* 8142B618 | 91 03 00 14 */	stw r8, 0x14(r3)
/* 8142B61C | 90 E3 00 18 */	stw r7, 0x18(r3)
/* 8142B620 | D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8142B624 | 99 43 00 2C */	stb r10, 0x2c(r3)
/* 8142B628 | 99 43 00 2D */	stb r10, 0x2d(r3)
/* 8142B62C | 91 43 00 30 */	stw r10, 0x30(r3)
/* 8142B630 | D0 23 01 D0 */	stfs f1, 0x1d0(r3)
/* 8142B634 | D0 23 01 D4 */	stfs f1, 0x1d4(r3)
/* 8142B638 | 90 03 01 D8 */	stw r0, 0x1d8(r3)
/* 8142B63C | 90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8142B640 | 91 43 01 E0 */	stw r10, 0x1e0(r3)
/* 8142B644 | D0 23 01 E4 */	stfs f1, 0x1e4(r3)
/* 8142B648 | 91 43 01 E8 */	stw r10, 0x1e8(r3)
/* 8142B64C | 91 43 01 EC */	stw r10, 0x1ec(r3)
/* 8142B650 | 91 43 01 F0 */	stw r10, 0x1f0(r3)
/* 8142B654 | 91 43 01 F4 */	stw r10, 0x1f4(r3)
/* 8142B658 | D0 23 01 F8 */	stfs f1, 0x1f8(r3)
/* 8142B65C | D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 8142B660 | 99 43 02 00 */	stb r10, 0x200(r3)
/* 8142B664 | 91 43 02 04 */	stw r10, 0x204(r3)
/* 8142B668 | 91 43 00 38 */	stw r10, 0x38(r3)
/* 8142B66C | 91 43 00 88 */	stw r10, 0x88(r3)
/* 8142B670 | 91 43 00 E0 */	stw r10, 0xe0(r3)
/* 8142B674 | 91 43 00 3C */	stw r10, 0x3c(r3)
/* 8142B678 | 91 43 00 8C */	stw r10, 0x8c(r3)
/* 8142B67C | 91 43 00 E4 */	stw r10, 0xe4(r3)
/* 8142B680 | 91 43 00 40 */	stw r10, 0x40(r3)
/* 8142B684 | 91 43 00 90 */	stw r10, 0x90(r3)
/* 8142B688 | 91 43 00 E8 */	stw r10, 0xe8(r3)
/* 8142B68C | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8142B690 | 91 43 00 94 */	stw r10, 0x94(r3)
/* 8142B694 | 91 43 00 EC */	stw r10, 0xec(r3)
/* 8142B698 | 91 43 00 48 */	stw r10, 0x48(r3)
/* 8142B69C | 91 43 00 98 */	stw r10, 0x98(r3)
/* 8142B6A0 | 91 43 00 F0 */	stw r10, 0xf0(r3)
/* 8142B6A4 | 91 43 00 4C */	stw r10, 0x4c(r3)
/* 8142B6A8 | 91 43 00 9C */	stw r10, 0x9c(r3)
/* 8142B6AC | 91 43 00 F4 */	stw r10, 0xf4(r3)
/* 8142B6B0 | 91 43 00 50 */	stw r10, 0x50(r3)
/* 8142B6B4 | 91 43 00 A0 */	stw r10, 0xa0(r3)
/* 8142B6B8 | 91 43 00 F8 */	stw r10, 0xf8(r3)
/* 8142B6BC | 91 43 00 54 */	stw r10, 0x54(r3)
/* 8142B6C0 | 91 43 00 A4 */	stw r10, 0xa4(r3)
/* 8142B6C4 | 91 43 00 FC */	stw r10, 0xfc(r3)
/* 8142B6C8 | 91 43 00 58 */	stw r10, 0x58(r3)
/* 8142B6CC | 91 43 00 A8 */	stw r10, 0xa8(r3)
/* 8142B6D0 | 91 43 01 00 */	stw r10, 0x100(r3)
/* 8142B6D4 | 91 43 00 5C */	stw r10, 0x5c(r3)
/* 8142B6D8 | 91 43 00 AC */	stw r10, 0xac(r3)
/* 8142B6DC | 91 43 01 04 */	stw r10, 0x104(r3)
/* 8142B6E0 | 91 43 00 60 */	stw r10, 0x60(r3)
/* 8142B6E4 | 91 43 00 B0 */	stw r10, 0xb0(r3)
/* 8142B6E8 | 91 43 01 08 */	stw r10, 0x108(r3)
/* 8142B6EC | 91 43 00 64 */	stw r10, 0x64(r3)
/* 8142B6F0 | 91 43 00 B4 */	stw r10, 0xb4(r3)
/* 8142B6F4 | 91 43 01 0C */	stw r10, 0x10c(r3)
/* 8142B6F8 | 91 43 00 68 */	stw r10, 0x68(r3)
/* 8142B6FC | 91 43 00 B8 */	stw r10, 0xb8(r3)
/* 8142B700 | 91 43 01 10 */	stw r10, 0x110(r3)
/* 8142B704 | 91 43 00 6C */	stw r10, 0x6c(r3)
/* 8142B708 | 91 43 00 BC */	stw r10, 0xbc(r3)
/* 8142B70C | 91 43 01 14 */	stw r10, 0x114(r3)
/* 8142B710 | 91 43 00 70 */	stw r10, 0x70(r3)
/* 8142B714 | 91 43 00 C0 */	stw r10, 0xc0(r3)
/* 8142B718 | 91 43 01 18 */	stw r10, 0x118(r3)
/* 8142B71C | 91 43 00 74 */	stw r10, 0x74(r3)
/* 8142B720 | 91 43 00 C4 */	stw r10, 0xc4(r3)
/* 8142B724 | 91 43 01 1C */	stw r10, 0x11c(r3)
/* 8142B728 | 91 43 00 78 */	stw r10, 0x78(r3)
/* 8142B72C | 91 43 00 C8 */	stw r10, 0xc8(r3)
/* 8142B730 | 91 43 01 20 */	stw r10, 0x120(r3)
/* 8142B734 | 91 43 00 7C */	stw r10, 0x7c(r3)
/* 8142B738 | 91 43 00 CC */	stw r10, 0xcc(r3)
/* 8142B73C | 91 43 01 24 */	stw r10, 0x124(r3)
/* 8142B740 | 91 43 00 80 */	stw r10, 0x80(r3)
/* 8142B744 | 91 43 00 D0 */	stw r10, 0xd0(r3)
/* 8142B748 | 91 43 01 28 */	stw r10, 0x128(r3)
/* 8142B74C | 91 43 00 84 */	stw r10, 0x84(r3)
/* 8142B750 | 91 43 00 D4 */	stw r10, 0xd4(r3)
/* 8142B754 | 91 43 01 2C */	stw r10, 0x12c(r3)
/* 8142B758 | 91 43 00 D8 */	stw r10, 0xd8(r3)
/* 8142B75C | 91 43 00 DC */	stw r10, 0xdc(r3)
/* 8142B760 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput12candidatebox10UITextAreaFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener

# .text:0x3614 | 0x8142B764 | size: 0x158
# textinput::candidatebox::UITextArea::Create(textinput::nw4rmanager::Layout*)
.fn Create__Q39textinput12candidatebox10UITextAreaFPQ39textinput11nw4rmanager6Layout, global
/* 8142B764 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8142B768 | 7C 08 02 A6 */	mflr r0
/* 8142B76C | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8142B770 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8142B774 | 48 1C DD 45 */	bl _savegpr_25
/* 8142B778 | 3C A0 81 61 */	lis r5, csAninationFile__Q29textinput7toolbar_81615658@ha
/* 8142B77C | 38 00 00 0A */	li r0, 0xa
/* 8142B780 | 38 A5 56 58 */	addi r5, r5, csAninationFile__Q29textinput7toolbar_81615658@l
/* 8142B784 | 7C 9F 23 78 */	mr r31, r4
/* 8142B788 | 7C 7E 1B 78 */	mr r30, r3
/* 8142B78C | 38 C1 00 54 */	addi r6, r1, 0x54
/* 8142B790 | 38 85 FF FC */	subi r4, r5, 0x4
/* 8142B794 | 7C 09 03 A6 */	mtctr r0
.L_8142B798:
/* 8142B798 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8142B79C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8142B7A0 | 90 66 00 04 */	stw r3, 0x4(r6)
/* 8142B7A4 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 8142B7A8 | 42 00 FF F0 */	bdnz .L_8142B798
/* 8142B7AC | 3C 60 81 61 */	lis r3, csAninationFile__Q29textinput7toolbar_81615658+0x50@ha
/* 8142B7B0 | 38 00 00 0A */	li r0, 0xa
/* 8142B7B4 | 38 63 56 A8 */	addi r3, r3, csAninationFile__Q29textinput7toolbar_81615658+0x50@l
/* 8142B7B8 | 38 A1 00 04 */	addi r5, r1, 0x4
/* 8142B7BC | 38 83 FF FC */	subi r4, r3, 0x4
/* 8142B7C0 | 7C 09 03 A6 */	mtctr r0
.L_8142B7C4:
/* 8142B7C4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8142B7C8 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8142B7CC | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8142B7D0 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8142B7D4 | 42 00 FF F0 */	bdnz .L_8142B7C4
/* 8142B7D8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142B7DC | 7F E3 FB 78 */	mr r3, r31
/* 8142B7E0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142B7E4 | 7D 89 03 A6 */	mtctr r12
/* 8142B7E8 | 4E 80 04 21 */	bctrl
/* 8142B7EC | 7C 7A 1B 78 */	mr r26, r3
/* 8142B7F0 | 7F DC F3 78 */	mr r28, r30
/* 8142B7F4 | 3B A1 00 58 */	addi r29, r1, 0x58
/* 8142B7F8 | 3B 61 00 08 */	addi r27, r1, 0x8
/* 8142B7FC | 3B 20 00 00 */	li r25, 0x0
.L_8142B800:
/* 8142B800 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8142B804 | 7F 43 D3 78 */	mr r3, r26
/* 8142B808 | 48 01 B5 C1 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 8142B80C | 90 7C 00 38 */	stw r3, 0x38(r28)
/* 8142B810 | 7F 43 D3 78 */	mr r3, r26
/* 8142B814 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8142B818 | 48 01 B5 B1 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 8142B81C | 90 7C 00 88 */	stw r3, 0x88(r28)
/* 8142B820 | 7F E3 FB 78 */	mr r3, r31
/* 8142B824 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142B828 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8142B82C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142B830 | 7D 89 03 A6 */	mtctr r12
/* 8142B834 | 4E 80 04 21 */	bctrl
/* 8142B838 | 90 7C 00 E0 */	stw r3, 0xe0(r28)
/* 8142B83C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8142B840 | 28 19 00 14 */	cmplwi r25, 0x14
/* 8142B844 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8142B848 | 80 7C 00 88 */	lwz r3, 0x88(r28)
/* 8142B84C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8142B850 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 8142B854 | 93 C3 00 98 */	stw r30, 0x98(r3)
/* 8142B858 | 41 80 FF A8 */	blt .L_8142B800
/* 8142B85C | 3C 80 81 66 */	lis r4, lbl_8165DCD4@ha
/* 8142B860 | 7F 43 D3 78 */	mr r3, r26
/* 8142B864 | 38 84 DC D4 */	addi r4, r4, lbl_8165DCD4@l
/* 8142B868 | 48 01 B5 61 */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 8142B86C | 90 7E 00 D8 */	stw r3, 0xd8(r30)
/* 8142B870 | 3C 80 81 66 */	lis r4, lbl_8165DA38@ha
/* 8142B874 | 7F 43 D3 78 */	mr r3, r26
/* 8142B878 | 38 84 DA 38 */	addi r4, r4, lbl_8165DA38@l
/* 8142B87C | 48 01 B5 4D */	bl searchPaneComponent__Q39textinput3gui11PaneManagerFPCc
/* 8142B880 | 90 7E 00 DC */	stw r3, 0xdc(r30)
/* 8142B884 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8142B888 | 80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8142B88C | 80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 8142B890 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 8142B894 | C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 8142B898 | D0 1E 01 D0 */	stfs f0, 0x1d0(r30)
/* 8142B89C | C0 04 00 E8 */	lfs f0, 0xe8(r4)
/* 8142B8A0 | D0 1E 01 D4 */	stfs f0, 0x1d4(r30)
/* 8142B8A4 | 93 C3 00 98 */	stw r30, 0x98(r3)
/* 8142B8A8 | 48 1C DC 5D */	bl _restgpr_25
/* 8142B8AC | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8142B8B0 | 7C 08 03 A6 */	mtlr r0
/* 8142B8B4 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 8142B8B8 | 4E 80 00 20 */	blr
.endfn Create__Q39textinput12candidatebox10UITextAreaFPQ39textinput11nw4rmanager6Layout

# .text:0x376C | 0x8142B8BC | size: 0x6CC
# textinput::candidatebox::UITextArea::CalcPaneLocate_()
.fn CalcPaneLocate___Q39textinput12candidatebox10UITextAreaFv, global
/* 8142B8BC | 94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8142B8C0 | 7C 08 02 A6 */	mflr r0
/* 8142B8C4 | 90 01 01 94 */	stw r0, 0x194(r1)
/* 8142B8C8 | DB E1 01 80 */	stfd f31, 0x180(r1)
/* 8142B8CC | F3 E1 01 88 */	psq_st f31, 0x188(r1), 0, qr0
/* 8142B8D0 | DB C1 01 70 */	stfd f30, 0x170(r1)
/* 8142B8D4 | F3 C1 01 78 */	psq_st f30, 0x178(r1), 0, qr0
/* 8142B8D8 | DB A1 01 60 */	stfd f29, 0x160(r1)
/* 8142B8DC | F3 A1 01 68 */	psq_st f29, 0x168(r1), 0, qr0
/* 8142B8E0 | DB 81 01 50 */	stfd f28, 0x150(r1)
/* 8142B8E4 | F3 81 01 58 */	psq_st f28, 0x158(r1), 0, qr0
/* 8142B8E8 | DB 61 01 40 */	stfd f27, 0x140(r1)
/* 8142B8EC | F3 61 01 48 */	psq_st f27, 0x148(r1), 0, qr0
/* 8142B8F0 | DB 41 01 30 */	stfd f26, 0x130(r1)
/* 8142B8F4 | F3 41 01 38 */	psq_st f26, 0x138(r1), 0, qr0
/* 8142B8F8 | DB 21 01 20 */	stfd f25, 0x120(r1)
/* 8142B8FC | F3 21 01 28 */	psq_st f25, 0x128(r1), 0, qr0
/* 8142B900 | DB 01 01 10 */	stfd f24, 0x110(r1)
/* 8142B904 | F3 01 01 18 */	psq_st f24, 0x118(r1), 0, qr0
/* 8142B908 | DA E1 01 00 */	stfd f23, 0x100(r1)
/* 8142B90C | F2 E1 01 08 */	psq_st f23, 0x108(r1), 0, qr0
/* 8142B910 | DA C1 00 F0 */	stfd f22, 0xf0(r1)
/* 8142B914 | F2 C1 00 F8 */	psq_st f22, 0xf8(r1), 0, qr0
/* 8142B918 | DA A1 00 E0 */	stfd f21, 0xe0(r1)
/* 8142B91C | F2 A1 00 E8 */	psq_st f21, 0xe8(r1), 0, qr0
/* 8142B920 | DA 81 00 D0 */	stfd f20, 0xd0(r1)
/* 8142B924 | F2 81 00 D8 */	psq_st f20, 0xd8(r1), 0, qr0
/* 8142B928 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8142B92C | 48 1C DB 81 */	bl _savegpr_22
/* 8142B930 | C0 42 89 A8 */	lfs f2, lbl_81694DA8@sda21(r0)
/* 8142B934 | 3C 00 43 30 */	lis r0, 0x4330
/* 8142B938 | C0 23 01 FC */	lfs f1, 0x1fc(r3)
/* 8142B93C | 7C 7A 1B 78 */	mr r26, r3
/* 8142B940 | C0 02 89 B4 */	lfs f0, lbl_81694DB4@sda21(r0)
/* 8142B944 | EF A2 08 24 */	fdivs f29, f2, f1
/* 8142B948 | 90 01 00 98 */	stw r0, 0x98(r1)
/* 8142B94C | 90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8142B950 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142B954 | 40 81 00 0C */	ble .L_8142B960
/* 8142B958 | C3 C2 89 AC */	lfs f30, lbl_81694DAC@sda21(r0)
/* 8142B95C | 48 00 00 08 */	b .L_8142B964
.L_8142B960:
/* 8142B960 | C3 C2 89 B0 */	lfs f30, lbl_81694DB0@sda21(r0)
.L_8142B964:
/* 8142B964 | 80 83 00 D8 */	lwz r4, 0xd8(r3)
/* 8142B968 | 7F 56 D3 78 */	mr r22, r26
/* 8142B96C | C3 83 01 E4 */	lfs f28, 0x1e4(r3)
/* 8142B970 | 3A E0 00 00 */	li r23, 0x0
/* 8142B974 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 8142B978 | 83 63 01 D8 */	lwz r27, 0x1d8(r3)
/* 8142B97C | C3 64 00 2C */	lfs f27, 0x2c(r4)
/* 8142B980 | C3 44 00 4C */	lfs f26, 0x4c(r4)
/* 8142B984 | C2 C2 89 90 */	lfs f22, lbl_81694D90@sda21(r0)
.L_8142B988:
/* 8142B988 | 80 D6 00 38 */	lwz r6, 0x38(r22)
/* 8142B98C | 38 8D 93 88 */	li r4, lbl_816973C8@sda21
/* 8142B990 | 80 76 00 88 */	lwz r3, 0x88(r22)
/* 8142B994 | 38 A0 00 00 */	li r5, 0x0
/* 8142B998 | 83 26 00 9C */	lwz r25, 0x9c(r6)
/* 8142B99C | 83 83 00 9C */	lwz r28, 0x9c(r3)
/* 8142B9A0 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142B9A4 | 7F 23 CB 78 */	mr r3, r25
/* 8142B9A8 | C0 39 00 4C */	lfs f1, 0x4c(r25)
/* 8142B9AC | C0 19 00 50 */	lfs f0, 0x50(r25)
/* 8142B9B0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142B9B4 | D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8142B9B8 | D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8142B9BC | 7D 89 03 A6 */	mtctr r12
/* 8142B9C0 | 4E 80 04 21 */	bctrl
/* 8142B9C4 | 88 19 00 CF */	lbz r0, 0xcf(r25)
/* 8142B9C8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8142B9CC | C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8142B9D0 | 2C 17 00 14 */	cmpwi r23, 0x14
/* 8142B9D4 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142B9D8 | D2 C1 00 48 */	stfs f22, 0x48(r1)
/* 8142B9DC | 3A D6 00 04 */	addi r22, r22, 0x4
/* 8142B9E0 | 98 19 00 CF */	stb r0, 0xcf(r25)
/* 8142B9E4 | D2 DC 00 4C */	stfs f22, 0x4c(r28)
/* 8142B9E8 | D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8142B9EC | D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 8142B9F0 | 41 80 FF 98 */	blt .L_8142B988
/* 8142B9F4 | 80 7A 00 DC */	lwz r3, 0xdc(r26)
/* 8142B9F8 | 3B 80 00 14 */	li r28, 0x14
/* 8142B9FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BA00 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8142BA04 | 7D 89 03 A6 */	mtctr r12
/* 8142BA08 | 4E 80 04 21 */	bctrl
/* 8142BA0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142BA10 | 41 82 00 0C */	beq .L_8142BA1C
/* 8142BA14 | 83 BA 01 E0 */	lwz r29, 0x1e0(r26)
/* 8142BA18 | 48 00 00 08 */	b .L_8142BA20
.L_8142BA1C:
/* 8142BA1C | 3B A0 00 00 */	li r29, 0x0
.L_8142BA20:
/* 8142BA20 | CB E2 89 C8 */	lfd f31, lbl_81694DC8@sda21(r0)
/* 8142BA24 | 57 BF 38 30 */	slwi r31, r29, 7
/* 8142BA28 | C3 02 89 BC */	lfs f24, lbl_81694DBC@sda21(r0)
/* 8142BA2C | C2 E2 89 C0 */	lfs f23, lbl_81694DC0@sda21(r0)
/* 8142BA30 | C2 C2 89 90 */	lfs f22, lbl_81694D90@sda21(r0)
/* 8142BA34 | 48 00 01 E4 */	b .L_8142BC18
.L_8142BA38:
/* 8142BA38 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8142BA3C | 41 82 01 E4 */	beq .L_8142BC20
/* 8142BA40 | 37 9C FF FF */	subic. r28, r28, 0x1
/* 8142BA44 | 3B BD FF FF */	subi r29, r29, 0x1
/* 8142BA48 | 3B FF FF 80 */	subi r31, r31, 0x80
/* 8142BA4C | 40 80 00 08 */	bge .L_8142BA54
/* 8142BA50 | 3B 80 00 13 */	li r28, 0x13
.L_8142BA54:
/* 8142BA54 | 57 83 10 3A */	slwi r3, r28, 2
/* 8142BA58 | 80 1A 02 04 */	lwz r0, 0x204(r26)
/* 8142BA5C | 7F DA 1A 14 */	add r30, r26, r3
/* 8142BA60 | 38 A0 00 00 */	li r5, 0x0
/* 8142BA64 | 80 FE 00 38 */	lwz r7, 0x38(r30)
/* 8142BA68 | 7C 60 FA 14 */	add r3, r0, r31
/* 8142BA6C | 80 DE 00 88 */	lwz r6, 0x88(r30)
/* 8142BA70 | 38 83 00 04 */	addi r4, r3, 0x4
/* 8142BA74 | 83 07 00 9C */	lwz r24, 0x9c(r7)
/* 8142BA78 | 82 E6 00 9C */	lwz r23, 0x9c(r6)
/* 8142BA7C | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8142BA80 | 7F 03 C3 78 */	mr r3, r24
/* 8142BA84 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142BA88 | 7D 89 03 A6 */	mtctr r12
/* 8142BA8C | 4E 80 04 21 */	bctrl
/* 8142BA90 | 88 18 00 CF */	lbz r0, 0xcf(r24)
/* 8142BA94 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8142BA98 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142BA9C | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142BAA0 | 98 18 00 CF */	stb r0, 0xcf(r24)
/* 8142BAA4 | C0 38 00 4C */	lfs f1, 0x4c(r24)
/* 8142BAA8 | C0 18 00 50 */	lfs f0, 0x50(r24)
/* 8142BAAC | D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8142BAB0 | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8142BAB4 | 40 82 00 0C */	bne .L_8142BAC0
/* 8142BAB8 | C0 22 89 90 */	lfs f1, lbl_81694D90@sda21(r0)
/* 8142BABC | 48 00 00 A0 */	b .L_8142BB5C
.L_8142BAC0:
/* 8142BAC0 | 82 D8 00 D4 */	lwz r22, 0xd4(r24)
/* 8142BAC4 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8142BAC8 | 40 82 00 0C */	bne .L_8142BAD4
/* 8142BACC | C0 22 89 90 */	lfs f1, lbl_81694D90@sda21(r0)
/* 8142BAD0 | 48 00 00 8C */	b .L_8142BB5C
.L_8142BAD4:
/* 8142BAD4 | 7F 03 C3 78 */	mr r3, r24
/* 8142BAD8 | 48 0F 6E 91 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142BADC | C3 38 00 E4 */	lfs f25, 0xe4(r24)
/* 8142BAE0 | 7C 79 1B 78 */	mr r25, r3
/* 8142BAE4 | C2 98 00 F0 */	lfs f20, 0xf0(r24)
/* 8142BAE8 | C2 A2 89 90 */	lfs f21, lbl_81694D90@sda21(r0)
/* 8142BAEC | 48 00 00 34 */	b .L_8142BB20
.L_8142BAF0:
/* 8142BAF0 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142BAF4 | EE B5 A0 2A */	fadds f21, f21, f20
/* 8142BAF8 | 7F 23 CB 78 */	mr r3, r25
/* 8142BAFC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142BB00 | 7D 89 03 A6 */	mtctr r12
/* 8142BB04 | 4E 80 04 21 */	bctrl
/* 8142BB08 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142BB0C | 3A D6 00 02 */	addi r22, r22, 0x2
/* 8142BB10 | 90 01 00 9C */	stw r0, 0x9c(r1)
/* 8142BB14 | C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8142BB18 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 8142BB1C | EE B5 00 2A */	fadds f21, f21, f0
.L_8142BB20:
/* 8142BB20 | A0 96 00 00 */	lhz r4, 0x0(r22)
/* 8142BB24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142BB28 | 40 82 FF C8 */	bne .L_8142BAF0
/* 8142BB2C | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142BB30 | 7F 23 CB 78 */	mr r3, r25
/* 8142BB34 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142BB38 | 7D 89 03 A6 */	mtctr r12
/* 8142BB3C | 4E 80 04 21 */	bctrl
/* 8142BB40 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142BB44 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8142BB48 | C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8142BB4C | EC 00 F8 28 */	fsubs f0, f0, f31
/* 8142BB50 | EC 19 00 24 */	fdivs f0, f25, f0
/* 8142BB54 | EC 15 00 32 */	fmuls f0, f21, f0
/* 8142BB58 | EC 38 00 2A */	fadds f1, f24, f0
.L_8142BB5C:
/* 8142BB5C | EC 41 07 72 */	fmuls f2, f1, f29
/* 8142BB60 | C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 8142BB64 | EF 9C F0 28 */	fsubs f28, f28, f30
/* 8142BB68 | D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8142BB6C | FC 00 08 18 */	frsp f0, f1
/* 8142BB70 | 7C 1D D8 00 */	cmpw r29, r27
/* 8142BB74 | EF 9C 10 28 */	fsubs f28, f28, f2
/* 8142BB78 | D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8142BB7C | EC 22 05 F2 */	fmuls f1, f2, f23
/* 8142BB80 | D0 18 00 4C */	stfs f0, 0x4c(r24)
/* 8142BB84 | EC 1B E0 2A */	fadds f0, f27, f28
/* 8142BB88 | D0 78 00 50 */	stfs f3, 0x50(r24)
/* 8142BB8C | EC 01 00 2A */	fadds f0, f1, f0
/* 8142BB90 | D0 57 00 4C */	stfs f2, 0x4c(r23)
/* 8142BB94 | D0 77 00 50 */	stfs f3, 0x50(r23)
/* 8142BB98 | D0 18 00 2C */	stfs f0, 0x2c(r24)
/* 8142BB9C | D2 D8 00 30 */	stfs f22, 0x30(r24)
/* 8142BBA0 | D2 D8 00 34 */	stfs f22, 0x34(r24)
/* 8142BBA4 | D0 17 00 2C */	stfs f0, 0x2c(r23)
/* 8142BBA8 | D2 D7 00 30 */	stfs f22, 0x30(r23)
/* 8142BBAC | D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8142BBB0 | D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8142BBB4 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8142BBB8 | D2 C1 00 34 */	stfs f22, 0x34(r1)
/* 8142BBBC | D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8142BBC0 | D2 C1 00 90 */	stfs f22, 0x90(r1)
/* 8142BBC4 | D2 C1 00 94 */	stfs f22, 0x94(r1)
/* 8142BBC8 | D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8142BBCC | D2 C1 00 2C */	stfs f22, 0x2c(r1)
/* 8142BBD0 | D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8142BBD4 | D2 C1 00 84 */	stfs f22, 0x84(r1)
/* 8142BBD8 | D2 C1 00 88 */	stfs f22, 0x88(r1)
/* 8142BBDC | D2 D7 00 34 */	stfs f22, 0x34(r23)
/* 8142BBE0 | 40 82 00 20 */	bne .L_8142BC00
/* 8142BBE4 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8142BBE8 | 38 80 00 01 */	li r4, 0x1
/* 8142BBEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BBF0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142BBF4 | 7D 89 03 A6 */	mtctr r12
/* 8142BBF8 | 4E 80 04 21 */	bctrl
/* 8142BBFC | 48 00 00 1C */	b .L_8142BC18
.L_8142BC00:
/* 8142BC00 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8142BC04 | 38 80 00 02 */	li r4, 0x2
/* 8142BC08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BC0C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142BC10 | 7D 89 03 A6 */	mtctr r12
/* 8142BC14 | 4E 80 04 21 */	bctrl
.L_8142BC18:
/* 8142BC18 | FC 1C B0 40 */	fcmpo cr0, f28, f22
/* 8142BC1C | 41 81 FE 1C */	bgt .L_8142BA38
.L_8142BC20:
/* 8142BC20 | 93 BA 01 EC */	stw r29, 0x1ec(r26)
/* 8142BC24 | 3B A0 00 00 */	li r29, 0x0
/* 8142BC28 | 80 7A 00 DC */	lwz r3, 0xdc(r26)
/* 8142BC2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BC30 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8142BC34 | 7D 89 03 A6 */	mtctr r12
/* 8142BC38 | 4E 80 04 21 */	bctrl
/* 8142BC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142BC40 | 41 82 00 0C */	beq .L_8142BC4C
/* 8142BC44 | 83 9A 01 E0 */	lwz r28, 0x1e0(r26)
/* 8142BC48 | 48 00 00 08 */	b .L_8142BC50
.L_8142BC4C:
/* 8142BC4C | 83 9A 01 E8 */	lwz r28, 0x1e8(r26)
.L_8142BC50:
/* 8142BC50 | C3 9A 01 E4 */	lfs f28, 0x1e4(r26)
/* 8142BC54 | 57 9F 38 30 */	slwi r31, r28, 7
/* 8142BC58 | CB E2 89 C8 */	lfd f31, lbl_81694DC8@sda21(r0)
/* 8142BC5C | C2 C2 89 BC */	lfs f22, lbl_81694DBC@sda21(r0)
/* 8142BC60 | C3 02 89 C0 */	lfs f24, lbl_81694DC0@sda21(r0)
/* 8142BC64 | C3 22 89 90 */	lfs f25, lbl_81694D90@sda21(r0)
/* 8142BC68 | 48 00 01 F4 */	b .L_8142BE5C
.L_8142BC6C:
/* 8142BC6C | 80 1A 01 E8 */	lwz r0, 0x1e8(r26)
/* 8142BC70 | 7C 1C 00 00 */	cmpw r28, r0
/* 8142BC74 | 41 82 01 F0 */	beq .L_8142BE64
/* 8142BC78 | 57 A3 10 3A */	slwi r3, r29, 2
/* 8142BC7C | 80 1A 02 04 */	lwz r0, 0x204(r26)
/* 8142BC80 | 7F DA 1A 14 */	add r30, r26, r3
/* 8142BC84 | 38 A0 00 00 */	li r5, 0x0
/* 8142BC88 | 80 FE 00 38 */	lwz r7, 0x38(r30)
/* 8142BC8C | 7C 60 FA 14 */	add r3, r0, r31
/* 8142BC90 | 80 DE 00 88 */	lwz r6, 0x88(r30)
/* 8142BC94 | 38 83 00 04 */	addi r4, r3, 0x4
/* 8142BC98 | 82 C7 00 9C */	lwz r22, 0x9c(r7)
/* 8142BC9C | 82 E6 00 9C */	lwz r23, 0x9c(r6)
/* 8142BCA0 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8142BCA4 | 7E C3 B3 78 */	mr r3, r22
/* 8142BCA8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142BCAC | 7D 89 03 A6 */	mtctr r12
/* 8142BCB0 | 4E 80 04 21 */	bctrl
/* 8142BCB4 | 88 16 00 CF */	lbz r0, 0xcf(r22)
/* 8142BCB8 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8142BCBC | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142BCC0 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142BCC4 | 98 16 00 CF */	stb r0, 0xcf(r22)
/* 8142BCC8 | C0 36 00 4C */	lfs f1, 0x4c(r22)
/* 8142BCCC | C0 16 00 50 */	lfs f0, 0x50(r22)
/* 8142BCD0 | D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8142BCD4 | D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8142BCD8 | 40 82 00 0C */	bne .L_8142BCE4
/* 8142BCDC | C0 62 89 90 */	lfs f3, lbl_81694D90@sda21(r0)
/* 8142BCE0 | 48 00 00 A0 */	b .L_8142BD80
.L_8142BCE4:
/* 8142BCE4 | 83 16 00 D4 */	lwz r24, 0xd4(r22)
/* 8142BCE8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8142BCEC | 40 82 00 0C */	bne .L_8142BCF8
/* 8142BCF0 | C0 62 89 90 */	lfs f3, lbl_81694D90@sda21(r0)
/* 8142BCF4 | 48 00 00 8C */	b .L_8142BD80
.L_8142BCF8:
/* 8142BCF8 | 7E C3 B3 78 */	mr r3, r22
/* 8142BCFC | 48 0F 6C 6D */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142BD00 | C2 B6 00 E4 */	lfs f21, 0xe4(r22)
/* 8142BD04 | 7C 79 1B 78 */	mr r25, r3
/* 8142BD08 | C2 96 00 F0 */	lfs f20, 0xf0(r22)
/* 8142BD0C | C2 E2 89 90 */	lfs f23, lbl_81694D90@sda21(r0)
/* 8142BD10 | 48 00 00 34 */	b .L_8142BD44
.L_8142BD14:
/* 8142BD14 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142BD18 | EE F7 A0 2A */	fadds f23, f23, f20
/* 8142BD1C | 7F 23 CB 78 */	mr r3, r25
/* 8142BD20 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142BD24 | 7D 89 03 A6 */	mtctr r12
/* 8142BD28 | 4E 80 04 21 */	bctrl
/* 8142BD2C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142BD30 | 3B 18 00 02 */	addi r24, r24, 0x2
/* 8142BD34 | 90 01 00 9C */	stw r0, 0x9c(r1)
/* 8142BD38 | C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8142BD3C | EC 00 F8 28 */	fsubs f0, f0, f31
/* 8142BD40 | EE F7 00 2A */	fadds f23, f23, f0
.L_8142BD44:
/* 8142BD44 | A0 98 00 00 */	lhz r4, 0x0(r24)
/* 8142BD48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142BD4C | 40 82 FF C8 */	bne .L_8142BD14
/* 8142BD50 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8142BD54 | 7F 23 CB 78 */	mr r3, r25
/* 8142BD58 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142BD5C | 7D 89 03 A6 */	mtctr r12
/* 8142BD60 | 4E 80 04 21 */	bctrl
/* 8142BD64 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142BD68 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8142BD6C | C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8142BD70 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 8142BD74 | EC 15 00 24 */	fdivs f0, f21, f0
/* 8142BD78 | EC 17 00 32 */	fmuls f0, f23, f0
/* 8142BD7C | EC 76 00 2A */	fadds f3, f22, f0
.L_8142BD80:
/* 8142BD80 | FC 20 18 18 */	frsp f1, f3
/* 8142BD84 | C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8142BD88 | EE E3 07 72 */	fmuls f23, f3, f29
/* 8142BD8C | 7C 1C D8 00 */	cmpw r28, r27
/* 8142BD90 | EC 1B E0 2A */	fadds f0, f27, f28
/* 8142BD94 | D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8142BD98 | D0 36 00 4C */	stfs f1, 0x4c(r22)
/* 8142BD9C | EC 37 06 32 */	fmuls f1, f23, f24
/* 8142BDA0 | D0 56 00 50 */	stfs f2, 0x50(r22)
/* 8142BDA4 | EC 01 00 2A */	fadds f0, f1, f0
/* 8142BDA8 | D2 F7 00 4C */	stfs f23, 0x4c(r23)
/* 8142BDAC | D0 57 00 50 */	stfs f2, 0x50(r23)
/* 8142BDB0 | D0 16 00 2C */	stfs f0, 0x2c(r22)
/* 8142BDB4 | D3 36 00 30 */	stfs f25, 0x30(r22)
/* 8142BDB8 | D3 36 00 34 */	stfs f25, 0x34(r22)
/* 8142BDBC | D0 17 00 2C */	stfs f0, 0x2c(r23)
/* 8142BDC0 | D3 37 00 30 */	stfs f25, 0x30(r23)
/* 8142BDC4 | D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8142BDC8 | D2 E1 00 18 */	stfs f23, 0x18(r1)
/* 8142BDCC | D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8142BDD0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8142BDD4 | D3 21 00 14 */	stfs f25, 0x14(r1)
/* 8142BDD8 | D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8142BDDC | D3 21 00 78 */	stfs f25, 0x78(r1)
/* 8142BDE0 | D3 21 00 7C */	stfs f25, 0x7c(r1)
/* 8142BDE4 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8142BDE8 | D3 21 00 0C */	stfs f25, 0xc(r1)
/* 8142BDEC | D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8142BDF0 | D3 21 00 6C */	stfs f25, 0x6c(r1)
/* 8142BDF4 | D3 21 00 70 */	stfs f25, 0x70(r1)
/* 8142BDF8 | D3 37 00 34 */	stfs f25, 0x34(r23)
/* 8142BDFC | 40 82 00 1C */	bne .L_8142BE18
/* 8142BE00 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8142BE04 | 38 80 00 01 */	li r4, 0x1
/* 8142BE08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BE0C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142BE10 | 7D 89 03 A6 */	mtctr r12
/* 8142BE14 | 4E 80 04 21 */	bctrl
.L_8142BE18:
/* 8142BE18 | EF 9C F0 2A */	fadds f28, f28, f30
/* 8142BE1C | EF 9C B8 2A */	fadds f28, f28, f23
/* 8142BE20 | FC 1C C8 40 */	fcmpo cr0, f28, f25
/* 8142BE24 | 4C 40 13 82 */	cror eq, lt, eq
/* 8142BE28 | 3B FF 00 80 */	addi r31, r31, 0x80
/* 8142BE2C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8142BE30 | 40 82 00 1C */	bne .L_8142BE4C
/* 8142BE34 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8142BE38 | 38 80 00 05 */	li r4, 0x5
/* 8142BE3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BE40 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142BE44 | 7D 89 03 A6 */	mtctr r12
/* 8142BE48 | 4E 80 04 21 */	bctrl
.L_8142BE4C:
/* 8142BE4C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142BE50 | 2C 1D 00 14 */	cmpwi r29, 0x14
/* 8142BE54 | 41 80 00 08 */	blt .L_8142BE5C
/* 8142BE58 | 3B A0 00 00 */	li r29, 0x0
.L_8142BE5C:
/* 8142BE5C | FC 1C D0 40 */	fcmpo cr0, f28, f26
/* 8142BE60 | 41 80 FE 0C */	blt .L_8142BC6C
.L_8142BE64:
/* 8142BE64 | 7F 56 D3 78 */	mr r22, r26
/* 8142BE68 | 3A E0 00 00 */	li r23, 0x0
.L_8142BE6C:
/* 8142BE6C | 80 76 00 38 */	lwz r3, 0x38(r22)
/* 8142BE70 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142BE74 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142BE78 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8142BE7C | 40 82 00 1C */	bne .L_8142BE98
/* 8142BE80 | 80 76 00 E0 */	lwz r3, 0xe0(r22)
/* 8142BE84 | 38 80 00 05 */	li r4, 0x5
/* 8142BE88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142BE8C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142BE90 | 7D 89 03 A6 */	mtctr r12
/* 8142BE94 | 4E 80 04 21 */	bctrl
.L_8142BE98:
/* 8142BE98 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8142BE9C | 3A D6 00 04 */	addi r22, r22, 0x4
/* 8142BEA0 | 2C 17 00 14 */	cmpwi r23, 0x14
/* 8142BEA4 | 41 80 FF C8 */	blt .L_8142BE6C
/* 8142BEA8 | EC 1C F0 28 */	fsubs f0, f28, f30
/* 8142BEAC | 38 7C FF FF */	subi r3, r28, 0x1
/* 8142BEB0 | 90 7A 01 F0 */	stw r3, 0x1f0(r26)
/* 8142BEB4 | 38 80 00 01 */	li r4, 0x1
/* 8142BEB8 | FC 00 D0 40 */	fcmpo cr0, f0, f26
/* 8142BEBC | 4C 40 13 82 */	cror eq, lt, eq
/* 8142BEC0 | 41 82 00 30 */	beq .L_8142BEF0
/* 8142BEC4 | 80 1A 01 E8 */	lwz r0, 0x1e8(r26)
/* 8142BEC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142BECC | 40 81 00 14 */	ble .L_8142BEE0
/* 8142BED0 | 80 1A 01 EC */	lwz r0, 0x1ec(r26)
/* 8142BED4 | 7C 60 18 50 */	subf r3, r0, r3
/* 8142BED8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8142BEDC | 48 00 00 08 */	b .L_8142BEE4
.L_8142BEE0:
/* 8142BEE0 | 38 00 00 00 */	li r0, 0x0
.L_8142BEE4:
/* 8142BEE4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8142BEE8 | 41 82 00 08 */	beq .L_8142BEF0
/* 8142BEEC | 38 80 00 00 */	li r4, 0x0
.L_8142BEF0:
/* 8142BEF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142BEF4 | 41 82 00 0C */	beq .L_8142BF00
/* 8142BEF8 | 80 1A 01 F0 */	lwz r0, 0x1f0(r26)
/* 8142BEFC | 48 00 00 0C */	b .L_8142BF08
.L_8142BF00:
/* 8142BF00 | 80 7A 01 F0 */	lwz r3, 0x1f0(r26)
/* 8142BF04 | 38 03 FF FF */	subi r0, r3, 0x1
.L_8142BF08:
/* 8142BF08 | 90 1A 01 F4 */	stw r0, 0x1f4(r26)
/* 8142BF0C | D3 9A 01 F8 */	stfs f28, 0x1f8(r26)
/* 8142BF10 | E3 E1 01 88 */	psq_l f31, 0x188(r1), 0, qr0
/* 8142BF14 | CB E1 01 80 */	lfd f31, 0x180(r1)
/* 8142BF18 | E3 C1 01 78 */	psq_l f30, 0x178(r1), 0, qr0
/* 8142BF1C | CB C1 01 70 */	lfd f30, 0x170(r1)
/* 8142BF20 | E3 A1 01 68 */	psq_l f29, 0x168(r1), 0, qr0
/* 8142BF24 | CB A1 01 60 */	lfd f29, 0x160(r1)
/* 8142BF28 | E3 81 01 58 */	psq_l f28, 0x158(r1), 0, qr0
/* 8142BF2C | CB 81 01 50 */	lfd f28, 0x150(r1)
/* 8142BF30 | E3 61 01 48 */	psq_l f27, 0x148(r1), 0, qr0
/* 8142BF34 | CB 61 01 40 */	lfd f27, 0x140(r1)
/* 8142BF38 | E3 41 01 38 */	psq_l f26, 0x138(r1), 0, qr0
/* 8142BF3C | CB 41 01 30 */	lfd f26, 0x130(r1)
/* 8142BF40 | E3 21 01 28 */	psq_l f25, 0x128(r1), 0, qr0
/* 8142BF44 | CB 21 01 20 */	lfd f25, 0x120(r1)
/* 8142BF48 | E3 01 01 18 */	psq_l f24, 0x118(r1), 0, qr0
/* 8142BF4C | CB 01 01 10 */	lfd f24, 0x110(r1)
/* 8142BF50 | E2 E1 01 08 */	psq_l f23, 0x108(r1), 0, qr0
/* 8142BF54 | CA E1 01 00 */	lfd f23, 0x100(r1)
/* 8142BF58 | E2 C1 00 F8 */	psq_l f22, 0xf8(r1), 0, qr0
/* 8142BF5C | CA C1 00 F0 */	lfd f22, 0xf0(r1)
/* 8142BF60 | E2 A1 00 E8 */	psq_l f21, 0xe8(r1), 0, qr0
/* 8142BF64 | CA A1 00 E0 */	lfd f21, 0xe0(r1)
/* 8142BF68 | E2 81 00 D8 */	psq_l f20, 0xd8(r1), 0, qr0
/* 8142BF6C | CA 81 00 D0 */	lfd f20, 0xd0(r1)
/* 8142BF70 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8142BF74 | 48 1C D5 85 */	bl _restgpr_22
/* 8142BF78 | 80 01 01 94 */	lwz r0, 0x194(r1)
/* 8142BF7C | 7C 08 03 A6 */	mtlr r0
/* 8142BF80 | 38 21 01 90 */	addi r1, r1, 0x190
/* 8142BF84 | 4E 80 00 20 */	blr
.endfn CalcPaneLocate___Q39textinput12candidatebox10UITextAreaFv

# .text:0x3E38 | 0x8142BF88 | size: 0x18C
# textinput::candidatebox::UITextArea::ChangeSelectedText(long)
.fn ChangeSelectedText__Q39textinput12candidatebox10UITextAreaFl, global
/* 8142BF88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142BF8C | 7C 08 02 A6 */	mflr r0
/* 8142BF90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142BF94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142BF98 | 7C 9F 23 78 */	mr r31, r4
/* 8142BF9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142BFA0 | 7C 7E 1B 78 */	mr r30, r3
/* 8142BFA4 | 80 A3 01 D8 */	lwz r5, 0x1d8(r3)
/* 8142BFA8 | 80 03 01 EC */	lwz r0, 0x1ec(r3)
/* 8142BFAC | 7C 05 00 00 */	cmpw r5, r0
/* 8142BFB0 | 40 80 00 0C */	bge .L_8142BFBC
/* 8142BFB4 | 38 A0 FF FF */	li r5, -0x1
/* 8142BFB8 | 48 00 00 70 */	b .L_8142C028
.L_8142BFBC:
/* 8142BFBC | 80 03 01 F0 */	lwz r0, 0x1f0(r3)
/* 8142BFC0 | 7C 05 00 00 */	cmpw r5, r0
/* 8142BFC4 | 40 81 00 0C */	ble .L_8142BFD0
/* 8142BFC8 | 38 A0 FF FF */	li r5, -0x1
/* 8142BFCC | 48 00 00 5C */	b .L_8142C028
.L_8142BFD0:
/* 8142BFD0 | 80 03 01 E0 */	lwz r0, 0x1e0(r3)
/* 8142BFD4 | 7C 05 00 00 */	cmpw r5, r0
/* 8142BFD8 | 40 80 00 10 */	bge .L_8142BFE8
/* 8142BFDC | 7C 05 00 50 */	subf r0, r5, r0
/* 8142BFE0 | 20 A0 00 14 */	subfic r5, r0, 0x14
/* 8142BFE4 | 48 00 00 08 */	b .L_8142BFEC
.L_8142BFE8:
/* 8142BFE8 | 7C A0 28 50 */	subf r5, r0, r5
.L_8142BFEC:
/* 8142BFEC | 20 85 00 13 */	subfic r4, r5, 0x13
/* 8142BFF0 | 38 00 00 14 */	li r0, 0x14
/* 8142BFF4 | 7C 84 03 96 */	divwu r4, r4, r0
/* 8142BFF8 | 7C 89 03 A6 */	mtctr r4
/* 8142BFFC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8142C000 | 40 80 00 0C */	bge .L_8142C00C
.L_8142C004:
/* 8142C004 | 38 A5 00 14 */	addi r5, r5, 0x14
/* 8142C008 | 42 00 FF FC */	bdnz .L_8142C004
.L_8142C00C:
/* 8142C00C | 38 00 00 14 */	li r0, 0x14
/* 8142C010 | 7C 05 03 96 */	divwu r0, r5, r0
/* 8142C014 | 7C 09 03 A6 */	mtctr r0
/* 8142C018 | 2C 05 00 14 */	cmpwi r5, 0x14
/* 8142C01C | 41 80 00 0C */	blt .L_8142C028
.L_8142C020:
/* 8142C020 | 38 A5 FF EC */	subi r5, r5, 0x14
/* 8142C024 | 42 00 FF FC */	bdnz .L_8142C020
.L_8142C028:
/* 8142C028 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8142C02C | 41 80 00 24 */	blt .L_8142C050
/* 8142C030 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8142C034 | 38 80 00 02 */	li r4, 0x2
/* 8142C038 | 7C 63 02 14 */	add r3, r3, r0
/* 8142C03C | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8142C040 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142C044 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142C048 | 7D 89 03 A6 */	mtctr r12
/* 8142C04C | 4E 80 04 21 */	bctrl
.L_8142C050:
/* 8142C050 | 80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8142C054 | 7C 1F 00 00 */	cmpw r31, r0
/* 8142C058 | 40 80 00 0C */	bge .L_8142C064
/* 8142C05C | 38 80 FF FF */	li r4, -0x1
/* 8142C060 | 48 00 00 70 */	b .L_8142C0D0
.L_8142C064:
/* 8142C064 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 8142C068 | 7C 1F 00 00 */	cmpw r31, r0
/* 8142C06C | 40 81 00 0C */	ble .L_8142C078
/* 8142C070 | 38 80 FF FF */	li r4, -0x1
/* 8142C074 | 48 00 00 5C */	b .L_8142C0D0
.L_8142C078:
/* 8142C078 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142C07C | 7C 1F 00 00 */	cmpw r31, r0
/* 8142C080 | 40 80 00 10 */	bge .L_8142C090
/* 8142C084 | 7C 1F 00 50 */	subf r0, r31, r0
/* 8142C088 | 20 80 00 14 */	subfic r4, r0, 0x14
/* 8142C08C | 48 00 00 08 */	b .L_8142C094
.L_8142C090:
/* 8142C090 | 7C 80 F8 50 */	subf r4, r0, r31
.L_8142C094:
/* 8142C094 | 20 64 00 13 */	subfic r3, r4, 0x13
/* 8142C098 | 38 00 00 14 */	li r0, 0x14
/* 8142C09C | 7C 63 03 96 */	divwu r3, r3, r0
/* 8142C0A0 | 7C 69 03 A6 */	mtctr r3
/* 8142C0A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142C0A8 | 40 80 00 0C */	bge .L_8142C0B4
.L_8142C0AC:
/* 8142C0AC | 38 84 00 14 */	addi r4, r4, 0x14
/* 8142C0B0 | 42 00 FF FC */	bdnz .L_8142C0AC
.L_8142C0B4:
/* 8142C0B4 | 38 00 00 14 */	li r0, 0x14
/* 8142C0B8 | 7C 04 03 96 */	divwu r0, r4, r0
/* 8142C0BC | 7C 09 03 A6 */	mtctr r0
/* 8142C0C0 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 8142C0C4 | 41 80 00 0C */	blt .L_8142C0D0
.L_8142C0C8:
/* 8142C0C8 | 38 84 FF EC */	subi r4, r4, 0x14
/* 8142C0CC | 42 00 FF FC */	bdnz .L_8142C0C8
.L_8142C0D0:
/* 8142C0D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142C0D4 | 41 80 00 24 */	blt .L_8142C0F8
/* 8142C0D8 | 54 80 10 3A */	slwi r0, r4, 2
/* 8142C0DC | 38 80 00 01 */	li r4, 0x1
/* 8142C0E0 | 7C 7E 02 14 */	add r3, r30, r0
/* 8142C0E4 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8142C0E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142C0EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142C0F0 | 7D 89 03 A6 */	mtctr r12
/* 8142C0F4 | 4E 80 04 21 */	bctrl
.L_8142C0F8:
/* 8142C0F8 | 93 FE 01 D8 */	stw r31, 0x1d8(r30)
/* 8142C0FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142C100 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142C104 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142C108 | 7C 08 03 A6 */	mtlr r0
/* 8142C10C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142C110 | 4E 80 00 20 */	blr
.endfn ChangeSelectedText__Q39textinput12candidatebox10UITextAreaFl

# .text:0x3FC4 | 0x8142C114 | size: 0x310
# textinput::candidatebox::UITextArea::Draw(const nw4r::lyt::DrawInfo&)
.fn Draw__Q39textinput12candidatebox10UITextAreaFRCQ34nw4r3lyt8DrawInfo, global
/* 8142C114 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8142C118 | 7C 08 02 A6 */	mflr r0
/* 8142C11C | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8142C120 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8142C124 | 48 1C D3 9D */	bl _savegpr_27
/* 8142C128 | 80 A3 01 D8 */	lwz r5, 0x1d8(r3)
/* 8142C12C | 7C 7D 1B 78 */	mr r29, r3
/* 8142C130 | 80 03 01 EC */	lwz r0, 0x1ec(r3)
/* 8142C134 | 7C 9E 23 78 */	mr r30, r4
/* 8142C138 | 7C 05 00 00 */	cmpw r5, r0
/* 8142C13C | 40 80 00 0C */	bge .L_8142C148
/* 8142C140 | 3B E0 FF FF */	li r31, -0x1
/* 8142C144 | 48 00 00 70 */	b .L_8142C1B4
.L_8142C148:
/* 8142C148 | 80 03 01 F0 */	lwz r0, 0x1f0(r3)
/* 8142C14C | 7C 05 00 00 */	cmpw r5, r0
/* 8142C150 | 40 81 00 0C */	ble .L_8142C15C
/* 8142C154 | 3B E0 FF FF */	li r31, -0x1
/* 8142C158 | 48 00 00 5C */	b .L_8142C1B4
.L_8142C15C:
/* 8142C15C | 80 03 01 E0 */	lwz r0, 0x1e0(r3)
/* 8142C160 | 7C 05 00 00 */	cmpw r5, r0
/* 8142C164 | 40 80 00 10 */	bge .L_8142C174
/* 8142C168 | 7C 05 00 50 */	subf r0, r5, r0
/* 8142C16C | 23 E0 00 14 */	subfic r31, r0, 0x14
/* 8142C170 | 48 00 00 08 */	b .L_8142C178
.L_8142C174:
/* 8142C174 | 7F E0 28 50 */	subf r31, r0, r5
.L_8142C178:
/* 8142C178 | 20 9F 00 13 */	subfic r4, r31, 0x13
/* 8142C17C | 38 00 00 14 */	li r0, 0x14
/* 8142C180 | 7C 84 03 96 */	divwu r4, r4, r0
/* 8142C184 | 7C 89 03 A6 */	mtctr r4
/* 8142C188 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142C18C | 40 80 00 0C */	bge .L_8142C198
.L_8142C190:
/* 8142C190 | 3B FF 00 14 */	addi r31, r31, 0x14
/* 8142C194 | 42 00 FF FC */	bdnz .L_8142C190
.L_8142C198:
/* 8142C198 | 38 00 00 14 */	li r0, 0x14
/* 8142C19C | 7C 1F 03 96 */	divwu r0, r31, r0
/* 8142C1A0 | 7C 09 03 A6 */	mtctr r0
/* 8142C1A4 | 2C 1F 00 14 */	cmpwi r31, 0x14
/* 8142C1A8 | 41 80 00 0C */	blt .L_8142C1B4
.L_8142C1AC:
/* 8142C1AC | 3B FF FF EC */	subi r31, r31, 0x14
/* 8142C1B0 | 42 00 FF FC */	bdnz .L_8142C1AC
.L_8142C1B4:
/* 8142C1B4 | 85 83 00 18 */	lwzu r12, 0x18(r3)
/* 8142C1B8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142C1BC | 7D 89 03 A6 */	mtctr r12
/* 8142C1C0 | 4E 80 04 21 */	bctrl
/* 8142C1C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142C1C8 | 40 82 00 54 */	bne .L_8142C21C
/* 8142C1CC | 7F BC EB 78 */	mr r28, r29
/* 8142C1D0 | 3B 60 00 00 */	li r27, 0x0
.L_8142C1D4:
/* 8142C1D4 | 7C 1B F8 40 */	cmplw r27, r31
/* 8142C1D8 | 41 82 00 20 */	beq .L_8142C1F8
/* 8142C1DC | 80 7C 00 E0 */	lwz r3, 0xe0(r28)
/* 8142C1E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142C1E4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142C1E8 | 7D 89 03 A6 */	mtctr r12
/* 8142C1EC | 4E 80 04 21 */	bctrl
/* 8142C1F0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8142C1F4 | 40 82 00 18 */	bne .L_8142C20C
.L_8142C1F8:
/* 8142C1F8 | 80 7C 00 38 */	lwz r3, 0x38(r28)
/* 8142C1FC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142C200 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142C204 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142C208 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_8142C20C:
/* 8142C20C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8142C210 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8142C214 | 28 1B 00 14 */	cmplwi r27, 0x14
/* 8142C218 | 41 80 FF BC */	blt .L_8142C1D4
.L_8142C21C:
/* 8142C21C | 80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 8142C220 | 7F C5 F3 78 */	mr r5, r30
/* 8142C224 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8142C228 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 8142C22C | 48 0F 2C 39 */	bl fn_8151EE64
/* 8142C230 | 38 00 00 00 */	li r0, 0x0
/* 8142C234 | 38 81 00 24 */	addi r4, r1, 0x24
/* 8142C238 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142C23C | 7C 85 23 78 */	mr r5, r4
/* 8142C240 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8142C244 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8142C248 | C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8142C24C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8142C250 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8142C254 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8142C258 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8142C25C | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8142C260 | D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8142C264 | D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8142C268 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8142C26C | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8142C270 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8142C274 | 80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 8142C278 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142C27C | 38 63 00 84 */	addi r3, r3, 0x84
/* 8142C280 | 48 11 52 3D */	bl fn_815414BC
/* 8142C284 | 80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 8142C288 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8142C28C | 7C 85 23 78 */	mr r5, r4
/* 8142C290 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142C294 | 38 63 00 84 */	addi r3, r3, 0x84
/* 8142C298 | 48 11 52 25 */	bl fn_815414BC
/* 8142C29C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8142C2A0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8142C2A4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8142C2A8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8142C2AC | 48 11 BD 65 */	bl GXGetScissor
/* 8142C2B0 | C0 02 89 B8 */	lfs f0, lbl_81694DB8@sda21(r0)
/* 8142C2B4 | C0 9D 01 FC */	lfs f4, 0x1fc(r29)
/* 8142C2B8 | C0 42 89 C0 */	lfs f2, lbl_81694DC0@sda21(r0)
/* 8142C2BC | EC A0 20 24 */	fdivs f5, f0, f4
/* 8142C2C0 | C0 22 89 A4 */	lfs f1, lbl_81694DA4@sda21(r0)
/* 8142C2C4 | C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8142C2C8 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8142C2CC | EC 84 00 B2 */	fmuls f4, f4, f2
/* 8142C2D0 | EC 00 18 28 */	fsubs f0, f0, f3
/* 8142C2D4 | EC 45 08 28 */	fsubs f2, f5, f1
/* 8142C2D8 | EC 63 20 2A */	fadds f3, f3, f4
/* 8142C2DC | EC 25 00 32 */	fmuls f1, f5, f0
/* 8142C2E0 | EC 03 00 B2 */	fmuls f0, f3, f2
/* 8142C2E4 | D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8142C2E8 | EC 03 00 2A */	fadds f0, f3, f0
/* 8142C2EC | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8142C2F0 | 48 1C D0 A9 */	bl __cvt_fp2unsigned
/* 8142C2F4 | C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8142C2F8 | 7C 7C 1B 78 */	mr r28, r3
/* 8142C2FC | 48 1C D0 9D */	bl __cvt_fp2unsigned
/* 8142C300 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8142C304 | 7F 85 E3 78 */	mr r5, r28
/* 8142C308 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 8142C30C | 48 11 BC 9D */	bl GXSetScissor
/* 8142C310 | 80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 8142C314 | 7F C4 F3 78 */	mr r4, r30
/* 8142C318 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142C31C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142C320 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142C324 | 7D 89 03 A6 */	mtctr r12
/* 8142C328 | 4E 80 04 21 */	bctrl
/* 8142C32C | 81 9D 00 18 */	lwz r12, 0x18(r29)
/* 8142C330 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 8142C334 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142C338 | 7D 89 03 A6 */	mtctr r12
/* 8142C33C | 4E 80 04 21 */	bctrl
/* 8142C340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142C344 | 40 82 00 B4 */	bne .L_8142C3F8
/* 8142C348 | 83 81 00 14 */	lwz r28, 0x14(r1)
/* 8142C34C | 3C 00 43 30 */	lis r0, 0x4330
/* 8142C350 | 90 01 00 58 */	stw r0, 0x58(r1)
/* 8142C354 | C0 61 00 48 */	lfs f3, 0x48(r1)
/* 8142C358 | 93 81 00 5C */	stw r28, 0x5c(r1)
/* 8142C35C | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8142C360 | C8 22 89 D0 */	lfd f1, lbl_81694DD0@sda21(r0)
/* 8142C364 | C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8142C368 | EC 43 10 2A */	fadds f2, f3, f2
/* 8142C36C | EC 00 08 28 */	fsubs f0, f0, f1
/* 8142C370 | EC 22 00 28 */	fsubs f1, f2, f0
/* 8142C374 | 48 1C D0 25 */	bl __cvt_fp2unsigned
/* 8142C378 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8142C37C | 7C 65 1B 78 */	mr r5, r3
/* 8142C380 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 8142C384 | 7F 83 E3 78 */	mr r3, r28
/* 8142C388 | 48 11 BC 21 */	bl GXSetScissor
/* 8142C38C | 3B 60 00 00 */	li r27, 0x0
.L_8142C390:
/* 8142C390 | 7C 1B F8 40 */	cmplw r27, r31
/* 8142C394 | 41 82 00 20 */	beq .L_8142C3B4
/* 8142C398 | 80 7D 00 E0 */	lwz r3, 0xe0(r29)
/* 8142C39C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142C3A0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142C3A4 | 7D 89 03 A6 */	mtctr r12
/* 8142C3A8 | 4E 80 04 21 */	bctrl
/* 8142C3AC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8142C3B0 | 40 82 00 38 */	bne .L_8142C3E8
.L_8142C3B4:
/* 8142C3B4 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8142C3B8 | 7F C4 F3 78 */	mr r4, r30
/* 8142C3BC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142C3C0 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8142C3C4 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8142C3C8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8142C3CC | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8142C3D0 | 80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8142C3D4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8142C3D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142C3DC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142C3E0 | 7D 89 03 A6 */	mtctr r12
/* 8142C3E4 | 4E 80 04 21 */	bctrl
.L_8142C3E8:
/* 8142C3E8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8142C3EC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8142C3F0 | 28 1B 00 14 */	cmplwi r27, 0x14
/* 8142C3F4 | 41 80 FF 9C */	blt .L_8142C390
.L_8142C3F8:
/* 8142C3F8 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 8142C3FC | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8142C400 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8142C404 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 8142C408 | 48 11 BB A1 */	bl GXSetScissor
/* 8142C40C | 39 61 00 80 */	addi r11, r1, 0x80
/* 8142C410 | 48 1C D0 FD */	bl _restgpr_27
/* 8142C414 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8142C418 | 7C 08 03 A6 */	mtlr r0
/* 8142C41C | 38 21 00 80 */	addi r1, r1, 0x80
/* 8142C420 | 4E 80 00 20 */	blr
.endfn Draw__Q39textinput12candidatebox10UITextAreaFRCQ34nw4r3lyt8DrawInfo

# .text:0x42D4 | 0x8142C424 | size: 0x208
# textinput::candidatebox::UITextArea::GetNextPageIdx_(long) const
.fn GetNextPageIdx___Q39textinput12candidatebox10UITextAreaCFl, global
/* 8142C424 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8142C428 | 7C 08 02 A6 */	mflr r0
/* 8142C42C | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8142C430 | DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8142C434 | F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 8142C438 | DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8142C43C | F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 8142C440 | DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8142C444 | F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 8142C448 | DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8142C44C | F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 8142C450 | DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8142C454 | F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 8142C458 | DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8142C45C | F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 8142C460 | DB 21 00 50 */	stfd f25, 0x50(r1)
/* 8142C464 | F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 8142C468 | DB 01 00 40 */	stfd f24, 0x40(r1)
/* 8142C46C | F3 01 00 48 */	psq_st f24, 0x48(r1), 0, qr0
/* 8142C470 | DA E1 00 30 */	stfd f23, 0x30(r1)
/* 8142C474 | F2 E1 00 38 */	psq_st f23, 0x38(r1), 0, qr0
/* 8142C478 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142C47C | 48 1C D0 39 */	bl _savegpr_24
/* 8142C480 | C0 02 89 A8 */	lfs f0, lbl_81694DA8@sda21(r0)
/* 8142C484 | 7C 78 1B 78 */	mr r24, r3
/* 8142C488 | C0 23 01 FC */	lfs f1, 0x1fc(r3)
/* 8142C48C | 7C 99 23 78 */	mr r25, r4
/* 8142C490 | 80 A3 00 D8 */	lwz r5, 0xd8(r3)
/* 8142C494 | EF 20 08 24 */	fdivs f25, f0, f1
/* 8142C498 | C0 02 89 B4 */	lfs f0, lbl_81694DB4@sda21(r0)
/* 8142C49C | 80 A5 00 9C */	lwz r5, 0x9c(r5)
/* 8142C4A0 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142C4A4 | C3 E5 00 4C */	lfs f31, 0x4c(r5)
/* 8142C4A8 | 83 63 00 9C */	lwz r27, 0x9c(r3)
/* 8142C4AC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142C4B0 | 40 81 00 0C */	ble .L_8142C4BC
/* 8142C4B4 | C3 82 89 AC */	lfs f28, lbl_81694DAC@sda21(r0)
/* 8142C4B8 | 48 00 00 08 */	b .L_8142C4C0
.L_8142C4BC:
/* 8142C4BC | C3 82 89 B0 */	lfs f28, lbl_81694DB0@sda21(r0)
.L_8142C4C0:
/* 8142C4C0 | FE E0 E0 50 */	fneg f23, f28
/* 8142C4C4 | CB A2 89 C8 */	lfd f29, lbl_81694DC8@sda21(r0)
/* 8142C4C8 | C3 C2 89 BC */	lfs f30, lbl_81694DBC@sda21(r0)
/* 8142C4CC | 7F 3A CB 78 */	mr r26, r25
/* 8142C4D0 | 54 9C 38 30 */	slwi r28, r4, 7
/* 8142C4D4 | 3F E0 43 30 */	lis r31, 0x4330
/* 8142C4D8 | 48 00 00 D4 */	b .L_8142C5AC
.L_8142C4DC:
/* 8142C4DC | 80 18 01 E8 */	lwz r0, 0x1e8(r24)
/* 8142C4E0 | 7C 1A 00 00 */	cmpw r26, r0
/* 8142C4E4 | 40 82 00 0C */	bne .L_8142C4F0
/* 8142C4E8 | 38 60 FF FF */	li r3, -0x1
/* 8142C4EC | 48 00 00 E0 */	b .L_8142C5CC
.L_8142C4F0:
/* 8142C4F0 | 80 18 02 04 */	lwz r0, 0x204(r24)
/* 8142C4F4 | 7C 00 E2 14 */	add r0, r0, r28
/* 8142C4F8 | 37 C0 00 04 */	addic. r30, r0, 0x4
/* 8142C4FC | 40 82 00 0C */	bne .L_8142C508
/* 8142C500 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142C504 | 48 00 00 94 */	b .L_8142C598
.L_8142C508:
/* 8142C508 | 7F 63 DB 78 */	mr r3, r27
/* 8142C50C | 48 0F 64 5D */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142C510 | C3 5B 00 E4 */	lfs f26, 0xe4(r27)
/* 8142C514 | 7C 7D 1B 78 */	mr r29, r3
/* 8142C518 | C3 1B 00 F0 */	lfs f24, 0xf0(r27)
/* 8142C51C | C3 62 89 90 */	lfs f27, lbl_81694D90@sda21(r0)
/* 8142C520 | 48 00 00 38 */	b .L_8142C558
.L_8142C524:
/* 8142C524 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142C528 | EF 7B C0 2A */	fadds f27, f27, f24
/* 8142C52C | 7F A3 EB 78 */	mr r3, r29
/* 8142C530 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142C534 | 7D 89 03 A6 */	mtctr r12
/* 8142C538 | 4E 80 04 21 */	bctrl
/* 8142C53C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142C540 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8142C544 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8142C548 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142C54C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142C550 | EC 00 E8 28 */	fsubs f0, f0, f29
/* 8142C554 | EF 7B 00 2A */	fadds f27, f27, f0
.L_8142C558:
/* 8142C558 | A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 8142C55C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142C560 | 40 82 FF C4 */	bne .L_8142C524
/* 8142C564 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142C568 | 7F A3 EB 78 */	mr r3, r29
/* 8142C56C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142C570 | 7D 89 03 A6 */	mtctr r12
/* 8142C574 | 4E 80 04 21 */	bctrl
/* 8142C578 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142C57C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8142C580 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142C584 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142C588 | EC 00 E8 28 */	fsubs f0, f0, f29
/* 8142C58C | EC 1A 00 24 */	fdivs f0, f26, f0
/* 8142C590 | EC 1B 00 32 */	fmuls f0, f27, f0
/* 8142C594 | EC 1E 00 2A */	fadds f0, f30, f0
.L_8142C598:
/* 8142C598 | EC 00 06 72 */	fmuls f0, f0, f25
/* 8142C59C | 3B 9C 00 80 */	addi r28, r28, 0x80
/* 8142C5A0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8142C5A4 | EC 1C 00 2A */	fadds f0, f28, f0
/* 8142C5A8 | EE F7 00 2A */	fadds f23, f23, f0
.L_8142C5AC:
/* 8142C5AC | FC 17 F8 40 */	fcmpo cr0, f23, f31
/* 8142C5B0 | 4C 40 13 82 */	cror eq, lt, eq
/* 8142C5B4 | 41 82 FF 28 */	beq .L_8142C4DC
/* 8142C5B8 | 38 1A FF FF */	subi r0, r26, 0x1
/* 8142C5BC | 7C 00 C8 00 */	cmpw r0, r25
/* 8142C5C0 | 40 82 00 08 */	bne .L_8142C5C8
/* 8142C5C4 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_8142C5C8:
/* 8142C5C8 | 38 7A FF FF */	subi r3, r26, 0x1
.L_8142C5CC:
/* 8142C5CC | E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 8142C5D0 | CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8142C5D4 | E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 8142C5D8 | CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8142C5DC | E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 8142C5E0 | CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8142C5E4 | E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 8142C5E8 | CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8142C5EC | E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 8142C5F0 | CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8142C5F4 | E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 8142C5F8 | CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8142C5FC | E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 8142C600 | CB 21 00 50 */	lfd f25, 0x50(r1)
/* 8142C604 | E3 01 00 48 */	psq_l f24, 0x48(r1), 0, qr0
/* 8142C608 | CB 01 00 40 */	lfd f24, 0x40(r1)
/* 8142C60C | E2 E1 00 38 */	psq_l f23, 0x38(r1), 0, qr0
/* 8142C610 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142C614 | CA E1 00 30 */	lfd f23, 0x30(r1)
/* 8142C618 | 48 1C CE E9 */	bl _restgpr_24
/* 8142C61C | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8142C620 | 7C 08 03 A6 */	mtlr r0
/* 8142C624 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 8142C628 | 4E 80 00 20 */	blr
.endfn GetNextPageIdx___Q39textinput12candidatebox10UITextAreaCFl

# .text:0x44DC | 0x8142C62C | size: 0x204
# textinput::candidatebox::UITextArea::GetPrevPageIdx_(long) const
.fn GetPrevPageIdx___Q39textinput12candidatebox10UITextAreaCFl, global
/* 8142C62C | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8142C630 | 7C 08 02 A6 */	mflr r0
/* 8142C634 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8142C638 | DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8142C63C | F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 8142C640 | DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8142C644 | F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 8142C648 | DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8142C64C | F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 8142C650 | DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8142C654 | F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 8142C658 | DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8142C65C | F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 8142C660 | DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8142C664 | F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 8142C668 | DB 21 00 50 */	stfd f25, 0x50(r1)
/* 8142C66C | F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 8142C670 | DB 01 00 40 */	stfd f24, 0x40(r1)
/* 8142C674 | F3 01 00 48 */	psq_st f24, 0x48(r1), 0, qr0
/* 8142C678 | DA E1 00 30 */	stfd f23, 0x30(r1)
/* 8142C67C | F2 E1 00 38 */	psq_st f23, 0x38(r1), 0, qr0
/* 8142C680 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142C684 | 48 1C CE 31 */	bl _savegpr_24
/* 8142C688 | C0 02 89 A8 */	lfs f0, lbl_81694DA8@sda21(r0)
/* 8142C68C | 7C 78 1B 78 */	mr r24, r3
/* 8142C690 | C0 23 01 FC */	lfs f1, 0x1fc(r3)
/* 8142C694 | 7C 99 23 78 */	mr r25, r4
/* 8142C698 | 80 A3 00 D8 */	lwz r5, 0xd8(r3)
/* 8142C69C | EF 20 08 24 */	fdivs f25, f0, f1
/* 8142C6A0 | C0 02 89 B4 */	lfs f0, lbl_81694DB4@sda21(r0)
/* 8142C6A4 | 80 A5 00 9C */	lwz r5, 0x9c(r5)
/* 8142C6A8 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142C6AC | C3 E5 00 4C */	lfs f31, 0x4c(r5)
/* 8142C6B0 | 83 63 00 9C */	lwz r27, 0x9c(r3)
/* 8142C6B4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142C6B8 | 40 81 00 0C */	ble .L_8142C6C4
/* 8142C6BC | C3 82 89 AC */	lfs f28, lbl_81694DAC@sda21(r0)
/* 8142C6C0 | 48 00 00 08 */	b .L_8142C6C8
.L_8142C6C4:
/* 8142C6C4 | C3 82 89 B0 */	lfs f28, lbl_81694DB0@sda21(r0)
.L_8142C6C8:
/* 8142C6C8 | FE E0 E0 50 */	fneg f23, f28
/* 8142C6CC | 3B 44 FF FF */	subi r26, r4, 0x1
/* 8142C6D0 | CB A2 89 C8 */	lfd f29, lbl_81694DC8@sda21(r0)
/* 8142C6D4 | 57 5C 38 30 */	slwi r28, r26, 7
/* 8142C6D8 | C3 C2 89 BC */	lfs f30, lbl_81694DBC@sda21(r0)
/* 8142C6DC | 3F E0 43 30 */	lis r31, 0x4330
/* 8142C6E0 | 48 00 00 D0 */	b .L_8142C7B0
.L_8142C6E4:
/* 8142C6E4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8142C6E8 | 40 80 00 0C */	bge .L_8142C6F4
/* 8142C6EC | 38 60 00 00 */	li r3, 0x0
/* 8142C6F0 | 48 00 00 E0 */	b .L_8142C7D0
.L_8142C6F4:
/* 8142C6F4 | 80 18 02 04 */	lwz r0, 0x204(r24)
/* 8142C6F8 | 7C 00 E2 14 */	add r0, r0, r28
/* 8142C6FC | 37 C0 00 04 */	addic. r30, r0, 0x4
/* 8142C700 | 40 82 00 0C */	bne .L_8142C70C
/* 8142C704 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142C708 | 48 00 00 94 */	b .L_8142C79C
.L_8142C70C:
/* 8142C70C | 7F 63 DB 78 */	mr r3, r27
/* 8142C710 | 48 0F 62 59 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142C714 | C3 5B 00 E4 */	lfs f26, 0xe4(r27)
/* 8142C718 | 7C 7D 1B 78 */	mr r29, r3
/* 8142C71C | C3 1B 00 F0 */	lfs f24, 0xf0(r27)
/* 8142C720 | C3 62 89 90 */	lfs f27, lbl_81694D90@sda21(r0)
/* 8142C724 | 48 00 00 38 */	b .L_8142C75C
.L_8142C728:
/* 8142C728 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142C72C | EF 7B C0 2A */	fadds f27, f27, f24
/* 8142C730 | 7F A3 EB 78 */	mr r3, r29
/* 8142C734 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142C738 | 7D 89 03 A6 */	mtctr r12
/* 8142C73C | 4E 80 04 21 */	bctrl
/* 8142C740 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142C744 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8142C748 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8142C74C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142C750 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142C754 | EC 00 E8 28 */	fsubs f0, f0, f29
/* 8142C758 | EF 7B 00 2A */	fadds f27, f27, f0
.L_8142C75C:
/* 8142C75C | A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 8142C760 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142C764 | 40 82 FF C4 */	bne .L_8142C728
/* 8142C768 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142C76C | 7F A3 EB 78 */	mr r3, r29
/* 8142C770 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142C774 | 7D 89 03 A6 */	mtctr r12
/* 8142C778 | 4E 80 04 21 */	bctrl
/* 8142C77C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142C780 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8142C784 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142C788 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142C78C | EC 00 E8 28 */	fsubs f0, f0, f29
/* 8142C790 | EC 1A 00 24 */	fdivs f0, f26, f0
/* 8142C794 | EC 1B 00 32 */	fmuls f0, f27, f0
/* 8142C798 | EC 1E 00 2A */	fadds f0, f30, f0
.L_8142C79C:
/* 8142C79C | EC 00 06 72 */	fmuls f0, f0, f25
/* 8142C7A0 | 3B 9C FF 80 */	subi r28, r28, 0x80
/* 8142C7A4 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8142C7A8 | EC 1C 00 2A */	fadds f0, f28, f0
/* 8142C7AC | EE F7 00 2A */	fadds f23, f23, f0
.L_8142C7B0:
/* 8142C7B0 | FC 17 F8 40 */	fcmpo cr0, f23, f31
/* 8142C7B4 | 4C 40 13 82 */	cror eq, lt, eq
/* 8142C7B8 | 41 82 FF 2C */	beq .L_8142C6E4
/* 8142C7BC | 38 1A 00 02 */	addi r0, r26, 0x2
/* 8142C7C0 | 7C 00 C8 00 */	cmpw r0, r25
/* 8142C7C4 | 40 82 00 08 */	bne .L_8142C7CC
/* 8142C7C8 | 3B 5A FF FF */	subi r26, r26, 0x1
.L_8142C7CC:
/* 8142C7CC | 38 7A 00 02 */	addi r3, r26, 0x2
.L_8142C7D0:
/* 8142C7D0 | E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 8142C7D4 | CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8142C7D8 | E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 8142C7DC | CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8142C7E0 | E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 8142C7E4 | CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8142C7E8 | E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 8142C7EC | CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8142C7F0 | E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 8142C7F4 | CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8142C7F8 | E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 8142C7FC | CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8142C800 | E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 8142C804 | CB 21 00 50 */	lfd f25, 0x50(r1)
/* 8142C808 | E3 01 00 48 */	psq_l f24, 0x48(r1), 0, qr0
/* 8142C80C | CB 01 00 40 */	lfd f24, 0x40(r1)
/* 8142C810 | E2 E1 00 38 */	psq_l f23, 0x38(r1), 0, qr0
/* 8142C814 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142C818 | CA E1 00 30 */	lfd f23, 0x30(r1)
/* 8142C81C | 48 1C CC E5 */	bl _restgpr_24
/* 8142C820 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8142C824 | 7C 08 03 A6 */	mtlr r0
/* 8142C828 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 8142C82C | 4E 80 00 20 */	blr
.endfn GetPrevPageIdx___Q39textinput12candidatebox10UITextAreaCFl

# .text:0x46E0 | 0x8142C830 | size: 0x2E4
# textinput::candidatebox::UITextArea::StartScroll(long)
.fn StartScroll__Q39textinput12candidatebox10UITextAreaFl, global
/* 8142C830 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8142C834 | 7C 08 02 A6 */	mflr r0
/* 8142C838 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8142C83C | DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8142C840 | F3 E1 00 A8 */	psq_st f31, 0xa8(r1), 0, qr0
/* 8142C844 | DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8142C848 | F3 C1 00 98 */	psq_st f30, 0x98(r1), 0, qr0
/* 8142C84C | DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8142C850 | F3 A1 00 88 */	psq_st f29, 0x88(r1), 0, qr0
/* 8142C854 | DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8142C858 | F3 81 00 78 */	psq_st f28, 0x78(r1), 0, qr0
/* 8142C85C | DB 61 00 60 */	stfd f27, 0x60(r1)
/* 8142C860 | F3 61 00 68 */	psq_st f27, 0x68(r1), 0, qr0
/* 8142C864 | DB 41 00 50 */	stfd f26, 0x50(r1)
/* 8142C868 | F3 41 00 58 */	psq_st f26, 0x58(r1), 0, qr0
/* 8142C86C | DB 21 00 40 */	stfd f25, 0x40(r1)
/* 8142C870 | F3 21 00 48 */	psq_st f25, 0x48(r1), 0, qr0
/* 8142C874 | DB 01 00 30 */	stfd f24, 0x30(r1)
/* 8142C878 | F3 01 00 38 */	psq_st f24, 0x38(r1), 0, qr0
/* 8142C87C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142C880 | 48 1C CC 3D */	bl _savegpr_26
/* 8142C884 | C0 42 89 A8 */	lfs f2, lbl_81694DA8@sda21(r0)
/* 8142C888 | 3C 00 43 30 */	lis r0, 0x4330
/* 8142C88C | C0 23 01 FC */	lfs f1, 0x1fc(r3)
/* 8142C890 | 7C 7E 1B 78 */	mr r30, r3
/* 8142C894 | C0 02 89 B4 */	lfs f0, lbl_81694DB4@sda21(r0)
/* 8142C898 | 7C 9F 23 78 */	mr r31, r4
/* 8142C89C | EF C2 08 24 */	fdivs f30, f2, f1
/* 8142C8A0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8142C8A4 | C3 A2 89 90 */	lfs f29, lbl_81694D90@sda21(r0)
/* 8142C8A8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8142C8AC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142C8B0 | 40 81 00 0C */	ble .L_8142C8BC
/* 8142C8B4 | C3 E2 89 AC */	lfs f31, lbl_81694DAC@sda21(r0)
/* 8142C8B8 | 48 00 00 08 */	b .L_8142C8C0
.L_8142C8BC:
/* 8142C8BC | C3 E2 89 B0 */	lfs f31, lbl_81694DB0@sda21(r0)
.L_8142C8C0:
/* 8142C8C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142C8C4 | 40 80 00 E8 */	bge .L_8142C9AC
/* 8142C8C8 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142C8CC | 3B 40 00 00 */	li r26, 0x0
/* 8142C8D0 | CB 82 89 C8 */	lfd f28, lbl_81694DC8@sda21(r0)
/* 8142C8D4 | 83 63 00 9C */	lwz r27, 0x9c(r3)
/* 8142C8D8 | C3 62 89 BC */	lfs f27, lbl_81694DBC@sda21(r0)
/* 8142C8DC | 48 00 00 C4 */	b .L_8142C9A0
.L_8142C8E0:
/* 8142C8E0 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142C8E4 | 80 9E 02 04 */	lwz r4, 0x204(r30)
/* 8142C8E8 | 7C 7A 02 14 */	add r3, r26, r0
/* 8142C8EC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8142C8F0 | 54 00 38 30 */	slwi r0, r0, 7
/* 8142C8F4 | 7C 04 02 14 */	add r0, r4, r0
/* 8142C8F8 | 37 A0 00 04 */	addic. r29, r0, 0x4
/* 8142C8FC | 40 82 00 0C */	bne .L_8142C908
/* 8142C900 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142C904 | 48 00 00 8C */	b .L_8142C990
.L_8142C908:
/* 8142C908 | 7F 63 DB 78 */	mr r3, r27
/* 8142C90C | 48 0F 60 5D */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142C910 | C3 3B 00 E4 */	lfs f25, 0xe4(r27)
/* 8142C914 | 7C 7C 1B 78 */	mr r28, r3
/* 8142C918 | C3 1B 00 F0 */	lfs f24, 0xf0(r27)
/* 8142C91C | C3 42 89 90 */	lfs f26, lbl_81694D90@sda21(r0)
/* 8142C920 | 48 00 00 34 */	b .L_8142C954
.L_8142C924:
/* 8142C924 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142C928 | EF 5A C0 2A */	fadds f26, f26, f24
/* 8142C92C | 7F 83 E3 78 */	mr r3, r28
/* 8142C930 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142C934 | 7D 89 03 A6 */	mtctr r12
/* 8142C938 | 4E 80 04 21 */	bctrl
/* 8142C93C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142C940 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8142C944 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142C948 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142C94C | EC 00 E0 28 */	fsubs f0, f0, f28
/* 8142C950 | EF 5A 00 2A */	fadds f26, f26, f0
.L_8142C954:
/* 8142C954 | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 8142C958 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142C95C | 40 82 FF C8 */	bne .L_8142C924
/* 8142C960 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142C964 | 7F 83 E3 78 */	mr r3, r28
/* 8142C968 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142C96C | 7D 89 03 A6 */	mtctr r12
/* 8142C970 | 4E 80 04 21 */	bctrl
/* 8142C974 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142C978 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142C97C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8142C980 | EC 00 E0 28 */	fsubs f0, f0, f28
/* 8142C984 | EC 19 00 24 */	fdivs f0, f25, f0
/* 8142C988 | EC 1A 00 32 */	fmuls f0, f26, f0
/* 8142C98C | EC 1B 00 2A */	fadds f0, f27, f0
.L_8142C990:
/* 8142C990 | EC 00 07 B2 */	fmuls f0, f0, f30
/* 8142C994 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8142C998 | EC 1F 00 2A */	fadds f0, f31, f0
/* 8142C99C | EF BD 00 28 */	fsubs f29, f29, f0
.L_8142C9A0:
/* 8142C9A0 | 7C 1A F8 00 */	cmpw r26, r31
/* 8142C9A4 | 41 81 FF 3C */	bgt .L_8142C8E0
/* 8142C9A8 | 48 00 00 E0 */	b .L_8142CA88
.L_8142C9AC:
/* 8142C9AC | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142C9B0 | 3B 40 00 00 */	li r26, 0x0
/* 8142C9B4 | CB 62 89 C8 */	lfd f27, lbl_81694DC8@sda21(r0)
/* 8142C9B8 | 83 63 00 9C */	lwz r27, 0x9c(r3)
/* 8142C9BC | C3 82 89 BC */	lfs f28, lbl_81694DBC@sda21(r0)
/* 8142C9C0 | 48 00 00 C0 */	b .L_8142CA80
.L_8142C9C4:
/* 8142C9C4 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142C9C8 | 80 7E 02 04 */	lwz r3, 0x204(r30)
/* 8142C9CC | 7C 00 D2 14 */	add r0, r0, r26
/* 8142C9D0 | 54 00 38 30 */	slwi r0, r0, 7
/* 8142C9D4 | 7C 03 02 14 */	add r0, r3, r0
/* 8142C9D8 | 37 80 00 04 */	addic. r28, r0, 0x4
/* 8142C9DC | 40 82 00 0C */	bne .L_8142C9E8
/* 8142C9E0 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142C9E4 | 48 00 00 8C */	b .L_8142CA70
.L_8142C9E8:
/* 8142C9E8 | 7F 63 DB 78 */	mr r3, r27
/* 8142C9EC | 48 0F 5F 7D */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142C9F0 | C3 5B 00 E4 */	lfs f26, 0xe4(r27)
/* 8142C9F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8142C9F8 | C3 1B 00 F0 */	lfs f24, 0xf0(r27)
/* 8142C9FC | C3 22 89 90 */	lfs f25, lbl_81694D90@sda21(r0)
/* 8142CA00 | 48 00 00 34 */	b .L_8142CA34
.L_8142CA04:
/* 8142CA04 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142CA08 | EF 39 C0 2A */	fadds f25, f25, f24
/* 8142CA0C | 7F A3 EB 78 */	mr r3, r29
/* 8142CA10 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142CA14 | 7D 89 03 A6 */	mtctr r12
/* 8142CA18 | 4E 80 04 21 */	bctrl
/* 8142CA1C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142CA20 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8142CA24 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142CA28 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142CA2C | EC 00 D8 28 */	fsubs f0, f0, f27
/* 8142CA30 | EF 39 00 2A */	fadds f25, f25, f0
.L_8142CA34:
/* 8142CA34 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 8142CA38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142CA3C | 40 82 FF C8 */	bne .L_8142CA04
/* 8142CA40 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142CA44 | 7F A3 EB 78 */	mr r3, r29
/* 8142CA48 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142CA4C | 7D 89 03 A6 */	mtctr r12
/* 8142CA50 | 4E 80 04 21 */	bctrl
/* 8142CA54 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142CA58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142CA5C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8142CA60 | EC 00 D8 28 */	fsubs f0, f0, f27
/* 8142CA64 | EC 1A 00 24 */	fdivs f0, f26, f0
/* 8142CA68 | EC 19 00 32 */	fmuls f0, f25, f0
/* 8142CA6C | EC 1C 00 2A */	fadds f0, f28, f0
.L_8142CA70:
/* 8142CA70 | EC 00 07 B2 */	fmuls f0, f0, f30
/* 8142CA74 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8142CA78 | EC 1F 00 2A */	fadds f0, f31, f0
/* 8142CA7C | EF BD 00 2A */	fadds f29, f29, f0
.L_8142CA80:
/* 8142CA80 | 7C 1A F8 00 */	cmpw r26, r31
/* 8142CA84 | 41 80 FF 40 */	blt .L_8142C9C4
.L_8142CA88:
/* 8142CA88 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142CA8C | 7F C4 F3 78 */	mr r4, r30
/* 8142CA90 | 41 82 00 08 */	beq .L_8142CA98
/* 8142CA94 | 38 9E 00 14 */	addi r4, r30, 0x14
.L_8142CA98:
/* 8142CA98 | 81 9E 00 18 */	lwz r12, 0x18(r30)
/* 8142CA9C | FC 40 E8 50 */	fneg f2, f29
/* 8142CAA0 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 8142CAA4 | 7F E5 FB 78 */	mr r5, r31
/* 8142CAA8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142CAAC | C0 22 89 90 */	lfs f1, lbl_81694D90@sda21(r0)
/* 8142CAB0 | C0 62 89 D8 */	lfs f3, lbl_81694DD8@sda21(r0)
/* 8142CAB4 | 7D 89 03 A6 */	mtctr r12
/* 8142CAB8 | 4E 80 04 21 */	bctrl
/* 8142CABC | E3 E1 00 A8 */	psq_l f31, 0xa8(r1), 0, qr0
/* 8142CAC0 | CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8142CAC4 | E3 C1 00 98 */	psq_l f30, 0x98(r1), 0, qr0
/* 8142CAC8 | CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8142CACC | E3 A1 00 88 */	psq_l f29, 0x88(r1), 0, qr0
/* 8142CAD0 | CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8142CAD4 | E3 81 00 78 */	psq_l f28, 0x78(r1), 0, qr0
/* 8142CAD8 | CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8142CADC | E3 61 00 68 */	psq_l f27, 0x68(r1), 0, qr0
/* 8142CAE0 | CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8142CAE4 | E3 41 00 58 */	psq_l f26, 0x58(r1), 0, qr0
/* 8142CAE8 | CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8142CAEC | E3 21 00 48 */	psq_l f25, 0x48(r1), 0, qr0
/* 8142CAF0 | CB 21 00 40 */	lfd f25, 0x40(r1)
/* 8142CAF4 | E3 01 00 38 */	psq_l f24, 0x38(r1), 0, qr0
/* 8142CAF8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142CAFC | CB 01 00 30 */	lfd f24, 0x30(r1)
/* 8142CB00 | 48 1C CA 09 */	bl _restgpr_26
/* 8142CB04 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8142CB08 | 7C 08 03 A6 */	mtlr r0
/* 8142CB0C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8142CB10 | 4E 80 00 20 */	blr
.endfn StartScroll__Q39textinput12candidatebox10UITextAreaFl

# .text:0x49C4 | 0x8142CB14 | size: 0x2E0
# textinput::candidatebox::UITextArea::StartScrollToIdx(long)
.fn StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl, global
/* 8142CB14 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8142CB18 | 7C 08 02 A6 */	mflr r0
/* 8142CB1C | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8142CB20 | DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8142CB24 | F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 8142CB28 | DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8142CB2C | F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 8142CB30 | DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8142CB34 | F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 8142CB38 | DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8142CB3C | F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 8142CB40 | DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8142CB44 | F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 8142CB48 | DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8142CB4C | F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 8142CB50 | DB 21 00 50 */	stfd f25, 0x50(r1)
/* 8142CB54 | F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 8142CB58 | DB 01 00 40 */	stfd f24, 0x40(r1)
/* 8142CB5C | F3 01 00 48 */	psq_st f24, 0x48(r1), 0, qr0
/* 8142CB60 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8142CB64 | 48 1C C9 55 */	bl _savegpr_25
/* 8142CB68 | C0 42 89 A8 */	lfs f2, lbl_81694DA8@sda21(r0)
/* 8142CB6C | 3C 00 43 30 */	lis r0, 0x4330
/* 8142CB70 | C0 23 01 FC */	lfs f1, 0x1fc(r3)
/* 8142CB74 | 7C 7E 1B 78 */	mr r30, r3
/* 8142CB78 | C0 02 89 B4 */	lfs f0, lbl_81694DB4@sda21(r0)
/* 8142CB7C | 7C 9F 23 78 */	mr r31, r4
/* 8142CB80 | EF C2 08 24 */	fdivs f30, f2, f1
/* 8142CB84 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8142CB88 | C3 A2 89 90 */	lfs f29, lbl_81694D90@sda21(r0)
/* 8142CB8C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8142CB90 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8142CB94 | 40 81 00 0C */	ble .L_8142CBA0
/* 8142CB98 | C3 E2 89 AC */	lfs f31, lbl_81694DAC@sda21(r0)
/* 8142CB9C | 48 00 00 08 */	b .L_8142CBA4
.L_8142CBA0:
/* 8142CBA0 | C3 E2 89 B0 */	lfs f31, lbl_81694DB0@sda21(r0)
.L_8142CBA4:
/* 8142CBA4 | 83 23 01 E0 */	lwz r25, 0x1e0(r3)
/* 8142CBA8 | 7C 04 C8 00 */	cmpw r4, r25
/* 8142CBAC | 40 81 00 DC */	ble .L_8142CC88
/* 8142CBB0 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142CBB4 | 57 3B 38 30 */	slwi r27, r25, 7
/* 8142CBB8 | CB 82 89 C8 */	lfd f28, lbl_81694DC8@sda21(r0)
/* 8142CBBC | 83 43 00 9C */	lwz r26, 0x9c(r3)
/* 8142CBC0 | C3 62 89 BC */	lfs f27, lbl_81694DBC@sda21(r0)
/* 8142CBC4 | 48 00 00 B8 */	b .L_8142CC7C
.L_8142CBC8:
/* 8142CBC8 | 80 1E 02 04 */	lwz r0, 0x204(r30)
/* 8142CBCC | 7C 00 DA 14 */	add r0, r0, r27
/* 8142CBD0 | 37 A0 00 04 */	addic. r29, r0, 0x4
/* 8142CBD4 | 40 82 00 0C */	bne .L_8142CBE0
/* 8142CBD8 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142CBDC | 48 00 00 8C */	b .L_8142CC68
.L_8142CBE0:
/* 8142CBE0 | 7F 43 D3 78 */	mr r3, r26
/* 8142CBE4 | 48 0F 5D 85 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142CBE8 | C3 3A 00 E4 */	lfs f25, 0xe4(r26)
/* 8142CBEC | 7C 7C 1B 78 */	mr r28, r3
/* 8142CBF0 | C3 1A 00 F0 */	lfs f24, 0xf0(r26)
/* 8142CBF4 | C3 42 89 90 */	lfs f26, lbl_81694D90@sda21(r0)
/* 8142CBF8 | 48 00 00 34 */	b .L_8142CC2C
.L_8142CBFC:
/* 8142CBFC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142CC00 | EF 5A C0 2A */	fadds f26, f26, f24
/* 8142CC04 | 7F 83 E3 78 */	mr r3, r28
/* 8142CC08 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142CC0C | 7D 89 03 A6 */	mtctr r12
/* 8142CC10 | 4E 80 04 21 */	bctrl
/* 8142CC14 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142CC18 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8142CC1C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142CC20 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142CC24 | EC 00 E0 28 */	fsubs f0, f0, f28
/* 8142CC28 | EF 5A 00 2A */	fadds f26, f26, f0
.L_8142CC2C:
/* 8142CC2C | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 8142CC30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142CC34 | 40 82 FF C8 */	bne .L_8142CBFC
/* 8142CC38 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142CC3C | 7F 83 E3 78 */	mr r3, r28
/* 8142CC40 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142CC44 | 7D 89 03 A6 */	mtctr r12
/* 8142CC48 | 4E 80 04 21 */	bctrl
/* 8142CC4C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142CC50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142CC54 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8142CC58 | EC 00 E0 28 */	fsubs f0, f0, f28
/* 8142CC5C | EC 19 00 24 */	fdivs f0, f25, f0
/* 8142CC60 | EC 1A 00 32 */	fmuls f0, f26, f0
/* 8142CC64 | EC 1B 00 2A */	fadds f0, f27, f0
.L_8142CC68:
/* 8142CC68 | EC 00 07 B2 */	fmuls f0, f0, f30
/* 8142CC6C | 3B 7B 00 80 */	addi r27, r27, 0x80
/* 8142CC70 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8142CC74 | EC 1F 00 2A */	fadds f0, f31, f0
/* 8142CC78 | EF BD 00 28 */	fsubs f29, f29, f0
.L_8142CC7C:
/* 8142CC7C | 7C 19 F8 00 */	cmpw r25, r31
/* 8142CC80 | 41 80 FF 48 */	blt .L_8142CBC8
/* 8142CC84 | 48 00 00 E0 */	b .L_8142CD64
.L_8142CC88:
/* 8142CC88 | 40 80 00 DC */	bge .L_8142CD64
/* 8142CC8C | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142CC90 | 3B 59 FF FF */	subi r26, r25, 0x1
/* 8142CC94 | CB 62 89 C8 */	lfd f27, lbl_81694DC8@sda21(r0)
/* 8142CC98 | 57 5B 38 30 */	slwi r27, r26, 7
/* 8142CC9C | 83 23 00 9C */	lwz r25, 0x9c(r3)
/* 8142CCA0 | C3 82 89 BC */	lfs f28, lbl_81694DBC@sda21(r0)
/* 8142CCA4 | 48 00 00 B8 */	b .L_8142CD5C
.L_8142CCA8:
/* 8142CCA8 | 80 1E 02 04 */	lwz r0, 0x204(r30)
/* 8142CCAC | 7C 00 DA 14 */	add r0, r0, r27
/* 8142CCB0 | 37 80 00 04 */	addic. r28, r0, 0x4
/* 8142CCB4 | 40 82 00 0C */	bne .L_8142CCC0
/* 8142CCB8 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142CCBC | 48 00 00 8C */	b .L_8142CD48
.L_8142CCC0:
/* 8142CCC0 | 7F 23 CB 78 */	mr r3, r25
/* 8142CCC4 | 48 0F 5C A5 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 8142CCC8 | C3 59 00 E4 */	lfs f26, 0xe4(r25)
/* 8142CCCC | 7C 7D 1B 78 */	mr r29, r3
/* 8142CCD0 | C3 19 00 F0 */	lfs f24, 0xf0(r25)
/* 8142CCD4 | C3 22 89 90 */	lfs f25, lbl_81694D90@sda21(r0)
/* 8142CCD8 | 48 00 00 34 */	b .L_8142CD0C
.L_8142CCDC:
/* 8142CCDC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142CCE0 | EF 39 C0 2A */	fadds f25, f25, f24
/* 8142CCE4 | 7F A3 EB 78 */	mr r3, r29
/* 8142CCE8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142CCEC | 7D 89 03 A6 */	mtctr r12
/* 8142CCF0 | 4E 80 04 21 */	bctrl
/* 8142CCF4 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142CCF8 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8142CCFC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8142CD00 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8142CD04 | EC 00 D8 28 */	fsubs f0, f0, f27
/* 8142CD08 | EF 39 00 2A */	fadds f25, f25, f0
.L_8142CD0C:
/* 8142CD0C | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 8142CD10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142CD14 | 40 82 FF C8 */	bne .L_8142CCDC
/* 8142CD18 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142CD1C | 7F A3 EB 78 */	mr r3, r29
/* 8142CD20 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142CD24 | 7D 89 03 A6 */	mtctr r12
/* 8142CD28 | 4E 80 04 21 */	bctrl
/* 8142CD2C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8142CD30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142CD34 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8142CD38 | EC 00 D8 28 */	fsubs f0, f0, f27
/* 8142CD3C | EC 1A 00 24 */	fdivs f0, f26, f0
/* 8142CD40 | EC 19 00 32 */	fmuls f0, f25, f0
/* 8142CD44 | EC 1C 00 2A */	fadds f0, f28, f0
.L_8142CD48:
/* 8142CD48 | EC 00 07 B2 */	fmuls f0, f0, f30
/* 8142CD4C | 3B 7B FF 80 */	subi r27, r27, 0x80
/* 8142CD50 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8142CD54 | EC 1F 00 2A */	fadds f0, f31, f0
/* 8142CD58 | EF BD 00 2A */	fadds f29, f29, f0
.L_8142CD5C:
/* 8142CD5C | 7C 1A F8 00 */	cmpw r26, r31
/* 8142CD60 | 40 80 FF 48 */	bge .L_8142CCA8
.L_8142CD64:
/* 8142CD64 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142CD68 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142CD6C | 7F C4 F3 78 */	mr r4, r30
/* 8142CD70 | 7C A0 F8 50 */	subf r5, r0, r31
/* 8142CD74 | 41 82 00 08 */	beq .L_8142CD7C
/* 8142CD78 | 38 9E 00 14 */	addi r4, r30, 0x14
.L_8142CD7C:
/* 8142CD7C | 81 9E 00 18 */	lwz r12, 0x18(r30)
/* 8142CD80 | FC 40 E8 90 */	fmr f2, f29
/* 8142CD84 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 8142CD88 | C0 3E 01 E4 */	lfs f1, 0x1e4(r30)
/* 8142CD8C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142CD90 | C0 62 89 D8 */	lfs f3, lbl_81694DD8@sda21(r0)
/* 8142CD94 | 7D 89 03 A6 */	mtctr r12
/* 8142CD98 | 4E 80 04 21 */	bctrl
/* 8142CD9C | E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 8142CDA0 | CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8142CDA4 | E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 8142CDA8 | CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8142CDAC | E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 8142CDB0 | CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8142CDB4 | E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 8142CDB8 | CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8142CDBC | E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 8142CDC0 | CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8142CDC4 | E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 8142CDC8 | CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8142CDCC | E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 8142CDD0 | CB 21 00 50 */	lfd f25, 0x50(r1)
/* 8142CDD4 | E3 01 00 48 */	psq_l f24, 0x48(r1), 0, qr0
/* 8142CDD8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8142CDDC | CB 01 00 40 */	lfd f24, 0x40(r1)
/* 8142CDE0 | 48 1C C7 25 */	bl _restgpr_25
/* 8142CDE4 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8142CDE8 | 7C 08 03 A6 */	mtlr r0
/* 8142CDEC | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 8142CDF0 | 4E 80 00 20 */	blr
.endfn StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl

# .text:0x4CA4 | 0x8142CDF4 | size: 0xA8
# textinput::candidatebox::UITextArea::StartScrollPageToIdx(long)
.fn StartScrollPageToIdx__Q39textinput12candidatebox10UITextAreaFl, global
/* 8142CDF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142CDF8 | 7C 08 02 A6 */	mflr r0
/* 8142CDFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142CE00 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142CE04 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142CE08 | 7C 9E 23 78 */	mr r30, r4
/* 8142CE0C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142CE10 | 7C 7D 1B 78 */	mr r29, r3
/* 8142CE14 | 83 E3 01 E0 */	lwz r31, 0x1e0(r3)
/* 8142CE18 | 7C 04 F8 00 */	cmpw r4, r31
/* 8142CE1C | 40 81 00 38 */	ble .L_8142CE54
.L_8142CE20:
/* 8142CE20 | 7F A3 EB 78 */	mr r3, r29
/* 8142CE24 | 7F E4 FB 78 */	mr r4, r31
/* 8142CE28 | 4B FF F5 FD */	bl GetNextPageIdx___Q39textinput12candidatebox10UITextAreaCFl
/* 8142CE2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142CE30 | 41 80 00 14 */	blt .L_8142CE44
/* 8142CE34 | 7C 03 F0 00 */	cmpw r3, r30
/* 8142CE38 | 41 81 00 0C */	bgt .L_8142CE44
/* 8142CE3C | 7C 7F 1B 78 */	mr r31, r3
/* 8142CE40 | 4B FF FF E0 */	b .L_8142CE20
.L_8142CE44:
/* 8142CE44 | 7F A3 EB 78 */	mr r3, r29
/* 8142CE48 | 7F E4 FB 78 */	mr r4, r31
/* 8142CE4C | 4B FF FC C9 */	bl StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl
/* 8142CE50 | 48 00 00 30 */	b .L_8142CE80
.L_8142CE54:
/* 8142CE54 | 40 80 00 2C */	bge .L_8142CE80
/* 8142CE58 | 48 00 00 14 */	b .L_8142CE6C
.L_8142CE5C:
/* 8142CE5C | 7F A3 EB 78 */	mr r3, r29
/* 8142CE60 | 7F E4 FB 78 */	mr r4, r31
/* 8142CE64 | 4B FF F7 C9 */	bl GetPrevPageIdx___Q39textinput12candidatebox10UITextAreaCFl
/* 8142CE68 | 7C 7F 1B 78 */	mr r31, r3
.L_8142CE6C:
/* 8142CE6C | 7C 1E F8 00 */	cmpw r30, r31
/* 8142CE70 | 41 80 FF EC */	blt .L_8142CE5C
/* 8142CE74 | 7F A3 EB 78 */	mr r3, r29
/* 8142CE78 | 7F E4 FB 78 */	mr r4, r31
/* 8142CE7C | 4B FF FC 99 */	bl StartScrollToIdx__Q39textinput12candidatebox10UITextAreaFl
.L_8142CE80:
/* 8142CE80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142CE84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142CE88 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142CE8C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142CE90 | 7C 08 03 A6 */	mtlr r0
/* 8142CE94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142CE98 | 4E 80 00 20 */	blr
.endfn StartScrollPageToIdx__Q39textinput12candidatebox10UITextAreaFl

# .text:0x4D4C | 0x8142CE9C | size: 0x10
# textinput::candidatebox::UITextArea::IsScrolling()
.fn IsScrolling__Q39textinput12candidatebox10UITextAreaFv, global
/* 8142CE9C | 85 83 00 18 */	lwzu r12, 0x18(r3)
/* 8142CEA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142CEA4 | 7D 89 03 A6 */	mtctr r12
/* 8142CEA8 | 4E 80 04 20 */	bctr
.endfn IsScrolling__Q39textinput12candidatebox10UITextAreaFv

# .text:0x4D5C | 0x8142CEAC | size: 0x7C
# textinput::candidatebox::UITextArea::ScrollToSelectedText()
.fn ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv, global
/* 8142CEAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142CEB0 | 7C 08 02 A6 */	mflr r0
/* 8142CEB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142CEB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142CEBC | 7C 7F 1B 78 */	mr r31, r3
/* 8142CEC0 | 80 03 01 D8 */	lwz r0, 0x1d8(r3)
/* 8142CEC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142CEC8 | 41 80 00 4C */	blt .L_8142CF14
/* 8142CECC | 85 83 00 18 */	lwzu r12, 0x18(r3)
/* 8142CED0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142CED4 | 7D 89 03 A6 */	mtctr r12
/* 8142CED8 | 4E 80 04 21 */	bctrl
/* 8142CEDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142CEE0 | 40 82 00 34 */	bne .L_8142CF14
/* 8142CEE4 | 80 9F 01 D8 */	lwz r4, 0x1d8(r31)
/* 8142CEE8 | 80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 8142CEEC | 7C 00 20 00 */	cmpw r0, r4
/* 8142CEF0 | 40 81 00 10 */	ble .L_8142CF00
/* 8142CEF4 | 7F E3 FB 78 */	mr r3, r31
/* 8142CEF8 | 4B FF FE FD */	bl StartScrollPageToIdx__Q39textinput12candidatebox10UITextAreaFl
/* 8142CEFC | 48 00 00 18 */	b .L_8142CF14
.L_8142CF00:
/* 8142CF00 | 80 1F 01 F4 */	lwz r0, 0x1f4(r31)
/* 8142CF04 | 7C 00 20 00 */	cmpw r0, r4
/* 8142CF08 | 40 80 00 0C */	bge .L_8142CF14
/* 8142CF0C | 7F E3 FB 78 */	mr r3, r31
/* 8142CF10 | 4B FF FE E5 */	bl StartScrollPageToIdx__Q39textinput12candidatebox10UITextAreaFl
.L_8142CF14:
/* 8142CF14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142CF18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142CF1C | 7C 08 03 A6 */	mtlr r0
/* 8142CF20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142CF24 | 4E 80 00 20 */	blr
.endfn ScrollToSelectedText__Q39textinput12candidatebox10UITextAreaFv

# .text:0x4DD8 | 0x8142CF28 | size: 0x14C
# textinput::candidatebox::UITextArea::onAnmEvent(textinput::util::AnimObserver::AnmEvent, void*)
.fn onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv, global
/* 8142CF28 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8142CF2C | 7C 08 02 A6 */	mflr r0
/* 8142CF30 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8142CF34 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142CF38 | 48 1C C5 85 */	bl _savegpr_26
/* 8142CF3C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8142CF40 | 7C 7A 1B 78 */	mr r26, r3
/* 8142CF44 | 40 82 01 18 */	bne .L_8142D05C
/* 8142CF48 | 80 03 01 E0 */	lwz r0, 0x1e0(r3)
/* 8142CF4C | 7F 60 2A 15 */	add. r27, r0, r5
/* 8142CF50 | 40 80 00 78 */	bge .L_8142CFC8
/* 8142CF54 | 7F 5D D3 78 */	mr r29, r26
/* 8142CF58 | 3B 83 01 30 */	addi r28, r3, 0x130
/* 8142CF5C | 3B C0 00 00 */	li r30, 0x0
/* 8142CF60 | 3B E0 00 00 */	li r31, 0x0
.L_8142CF64:
/* 8142CF64 | 80 7D 00 E0 */	lwz r3, 0xe0(r29)
/* 8142CF68 | 7F 84 E3 78 */	mr r4, r28
/* 8142CF6C | 48 00 A3 79 */	bl storeAnmState__Q39textinput11nw4rmanager7AnmPaneFPQ49textinput11nw4rmanager7AnmPane8AnmState
/* 8142CF70 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 8142CF74 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8142CF78 | 80 7D 00 E0 */	lwz r3, 0xe0(r29)
/* 8142CF7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142CF80 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142CF84 | 7D 89 03 A6 */	mtctr r12
/* 8142CF88 | 4E 80 04 21 */	bctrl
/* 8142CF8C | 80 7D 00 E0 */	lwz r3, 0xe0(r29)
/* 8142CF90 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8142CF94 | 48 00 A3 89 */	bl restoreAnmState__Q39textinput11nw4rmanager7AnmPaneFPCQ49textinput11nw4rmanager7AnmPane8AnmState
/* 8142CF98 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8142CF9C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8142CFA0 | 28 1E 00 14 */	cmplwi r30, 0x14
/* 8142CFA4 | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 8142CFA8 | 41 80 FF BC */	blt .L_8142CF64
/* 8142CFAC | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142CFB0 | 38 60 00 00 */	li r3, 0x0
/* 8142CFB4 | 38 00 FF FF */	li r0, -0x1
/* 8142CFB8 | 90 7A 01 E0 */	stw r3, 0x1e0(r26)
/* 8142CFBC | D0 1A 01 E4 */	stfs f0, 0x1e4(r26)
/* 8142CFC0 | 90 1A 01 DC */	stw r0, 0x1dc(r26)
/* 8142CFC4 | 48 00 00 70 */	b .L_8142D034
.L_8142CFC8:
/* 8142CFC8 | 7F 5C D3 78 */	mr r28, r26
/* 8142CFCC | 3B A3 01 30 */	addi r29, r3, 0x130
/* 8142CFD0 | 3B C0 00 00 */	li r30, 0x0
/* 8142CFD4 | 3B E0 00 00 */	li r31, 0x0
.L_8142CFD8:
/* 8142CFD8 | 80 7C 00 E0 */	lwz r3, 0xe0(r28)
/* 8142CFDC | 7F A4 EB 78 */	mr r4, r29
/* 8142CFE0 | 48 00 A3 05 */	bl storeAnmState__Q39textinput11nw4rmanager7AnmPaneFPQ49textinput11nw4rmanager7AnmPane8AnmState
/* 8142CFE4 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8142CFE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142CFEC | 80 7C 00 E0 */	lwz r3, 0xe0(r28)
/* 8142CFF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142CFF4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142CFF8 | 7D 89 03 A6 */	mtctr r12
/* 8142CFFC | 4E 80 04 21 */	bctrl
/* 8142D000 | 80 7C 00 E0 */	lwz r3, 0xe0(r28)
/* 8142D004 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8142D008 | 48 00 A3 15 */	bl restoreAnmState__Q39textinput11nw4rmanager7AnmPaneFPCQ49textinput11nw4rmanager7AnmPane8AnmState
/* 8142D00C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8142D010 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8142D014 | 28 1E 00 14 */	cmplwi r30, 0x14
/* 8142D018 | 3B BD 00 08 */	addi r29, r29, 0x8
/* 8142D01C | 41 80 FF BC */	blt .L_8142CFD8
/* 8142D020 | C0 02 89 90 */	lfs f0, lbl_81694D90@sda21(r0)
/* 8142D024 | 38 00 FF FF */	li r0, -0x1
/* 8142D028 | 93 7A 01 E0 */	stw r27, 0x1e0(r26)
/* 8142D02C | D0 1A 01 E4 */	stfs f0, 0x1e4(r26)
/* 8142D030 | 90 1A 01 DC */	stw r0, 0x1dc(r26)
.L_8142D034:
/* 8142D034 | 80 7A 00 10 */	lwz r3, 0x10(r26)
/* 8142D038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D03C | 41 82 00 20 */	beq .L_8142D05C
/* 8142D040 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D044 | 7F 44 D3 78 */	mr r4, r26
/* 8142D048 | 38 A0 01 00 */	li r5, 0x100
/* 8142D04C | 38 C0 00 00 */	li r6, 0x0
/* 8142D050 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142D054 | 7D 89 03 A6 */	mtctr r12
/* 8142D058 | 4E 80 04 21 */	bctrl
.L_8142D05C:
/* 8142D05C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8142D060 | 48 1C C4 A9 */	bl _restgpr_26
/* 8142D064 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8142D068 | 7C 08 03 A6 */	mtlr r0
/* 8142D06C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8142D070 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv

# .text:0x4F24 | 0x8142D074 | size: 0x708
# textinput::candidatebox::UITextArea::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q39textinput12candidatebox10UITextAreaFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8142D074 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142D078 | 7C 08 02 A6 */	mflr r0
/* 8142D07C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142D080 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142D084 | 7C BF 2B 78 */	mr r31, r5
/* 8142D088 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142D08C | 7C 7E 1B 78 */	mr r30, r3
/* 8142D090 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142D094 | 7C DD 33 78 */	mr r29, r6
/* 8142D098 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8142D09C | 7C 9C 23 78 */	mr r28, r4
/* 8142D0A0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8142D0A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D0A8 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8142D0AC | 7D 89 03 A6 */	mtctr r12
/* 8142D0B0 | 4E 80 04 21 */	bctrl
/* 8142D0B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D0B8 | 41 82 00 14 */	beq .L_8142D0CC
/* 8142D0BC | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8142D0C0 | 41 82 00 0C */	beq .L_8142D0CC
/* 8142D0C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142D0C8 | 40 82 06 94 */	bne .L_8142D75C
.L_8142D0CC:
/* 8142D0CC | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8142D0D0 | 3C 80 81 66 */	lis r4, lbl_8165DA08@ha
/* 8142D0D4 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8142D0D8 | 38 84 DA 08 */	addi r4, r4, lbl_8165DA08@l
/* 8142D0DC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142D0E0 | 7D 89 03 A6 */	mtctr r12
/* 8142D0E4 | 4E 80 04 21 */	bctrl
/* 8142D0E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D0EC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142D0F0 | 7D 89 03 A6 */	mtctr r12
/* 8142D0F4 | 4E 80 04 21 */	bctrl
/* 8142D0F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D0FC | 41 82 00 0C */	beq .L_8142D108
/* 8142D100 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8142D104 | 40 82 06 58 */	bne .L_8142D75C
.L_8142D108:
/* 8142D108 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8142D10C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D110 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8142D114 | 7D 89 03 A6 */	mtctr r12
/* 8142D118 | 4E 80 04 21 */	bctrl
/* 8142D11C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D120 | 40 82 06 3C */	bne .L_8142D75C
/* 8142D124 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142D128 | 41 82 05 60 */	beq .L_8142D688
/* 8142D12C | 40 80 00 10 */	bge .L_8142D13C
/* 8142D130 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142D134 | 40 80 01 34 */	bge .L_8142D268
/* 8142D138 | 48 00 06 24 */	b .L_8142D75C
.L_8142D13C:
/* 8142D13C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142D140 | 41 82 00 08 */	beq .L_8142D148
/* 8142D144 | 48 00 06 18 */	b .L_8142D75C
.L_8142D148:
/* 8142D148 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8142D14C | 28 00 08 00 */	cmplwi r0, 0x800
/* 8142D150 | 40 82 06 0C */	bne .L_8142D75C
/* 8142D154 | 80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 8142D158 | 80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8142D15C | 7C 03 00 00 */	cmpw r3, r0
/* 8142D160 | 40 80 00 0C */	bge .L_8142D16C
/* 8142D164 | 38 80 FF FF */	li r4, -0x1
/* 8142D168 | 48 00 00 70 */	b .L_8142D1D8
.L_8142D16C:
/* 8142D16C | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 8142D170 | 7C 03 00 00 */	cmpw r3, r0
/* 8142D174 | 40 81 00 0C */	ble .L_8142D180
/* 8142D178 | 38 80 FF FF */	li r4, -0x1
/* 8142D17C | 48 00 00 5C */	b .L_8142D1D8
.L_8142D180:
/* 8142D180 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142D184 | 7C 03 00 00 */	cmpw r3, r0
/* 8142D188 | 40 80 00 10 */	bge .L_8142D198
/* 8142D18C | 7C 03 00 50 */	subf r0, r3, r0
/* 8142D190 | 20 80 00 14 */	subfic r4, r0, 0x14
/* 8142D194 | 48 00 00 08 */	b .L_8142D19C
.L_8142D198:
/* 8142D198 | 7C 80 18 50 */	subf r4, r0, r3
.L_8142D19C:
/* 8142D19C | 20 64 00 13 */	subfic r3, r4, 0x13
/* 8142D1A0 | 38 00 00 14 */	li r0, 0x14
/* 8142D1A4 | 7C 63 03 96 */	divwu r3, r3, r0
/* 8142D1A8 | 7C 69 03 A6 */	mtctr r3
/* 8142D1AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D1B0 | 40 80 00 0C */	bge .L_8142D1BC
.L_8142D1B4:
/* 8142D1B4 | 38 84 00 14 */	addi r4, r4, 0x14
/* 8142D1B8 | 42 00 FF FC */	bdnz .L_8142D1B4
.L_8142D1BC:
/* 8142D1BC | 38 00 00 14 */	li r0, 0x14
/* 8142D1C0 | 7C 04 03 96 */	divwu r0, r4, r0
/* 8142D1C4 | 7C 09 03 A6 */	mtctr r0
/* 8142D1C8 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 8142D1CC | 41 80 00 0C */	blt .L_8142D1D8
.L_8142D1D0:
/* 8142D1D0 | 38 84 FF EC */	subi r4, r4, 0x14
/* 8142D1D4 | 42 00 FF FC */	bdnz .L_8142D1D0
.L_8142D1D8:
/* 8142D1D8 | 80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 8142D1DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142D1E0 | 41 80 05 7C */	blt .L_8142D75C
/* 8142D1E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D1E8 | 41 80 05 74 */	blt .L_8142D75C
/* 8142D1EC | 54 9F 10 3A */	slwi r31, r4, 2
/* 8142D1F0 | 7C 7E FA 14 */	add r3, r30, r31
/* 8142D1F4 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8142D1F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D1FC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D200 | 7D 89 03 A6 */	mtctr r12
/* 8142D204 | 4E 80 04 21 */	bctrl
/* 8142D208 | 7C 7E FA 14 */	add r3, r30, r31
/* 8142D20C | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 8142D210 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D214 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D218 | 7D 89 03 A6 */	mtctr r12
/* 8142D21C | 4E 80 04 21 */	bctrl
/* 8142D220 | 7C 7E FA 14 */	add r3, r30, r31
/* 8142D224 | 38 80 00 00 */	li r4, 0x0
/* 8142D228 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8142D22C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D230 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D234 | 7D 89 03 A6 */	mtctr r12
/* 8142D238 | 4E 80 04 21 */	bctrl
/* 8142D23C | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142D240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D244 | 41 82 05 18 */	beq .L_8142D75C
/* 8142D248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D24C | 7F C4 F3 78 */	mr r4, r30
/* 8142D250 | 38 A0 01 01 */	li r5, 0x101
/* 8142D254 | 38 C0 00 00 */	li r6, 0x0
/* 8142D258 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142D25C | 7D 89 03 A6 */	mtctr r12
/* 8142D260 | 4E 80 04 21 */	bctrl
/* 8142D264 | 48 00 04 F8 */	b .L_8142D75C
.L_8142D268:
/* 8142D268 | 80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 8142D26C | 7C 1C 00 40 */	cmplw r28, r0
/* 8142D270 | 40 82 01 AC */	bne .L_8142D41C
/* 8142D274 | 38 00 00 01 */	li r0, 0x1
/* 8142D278 | 7F DF F3 78 */	mr r31, r30
/* 8142D27C | 98 1E 02 00 */	stb r0, 0x200(r30)
/* 8142D280 | 3B A0 00 00 */	li r29, 0x0
.L_8142D284:
/* 8142D284 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8142D288 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D28C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D290 | 7D 89 03 A6 */	mtctr r12
/* 8142D294 | 4E 80 04 21 */	bctrl
/* 8142D298 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8142D29C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D2A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D2A4 | 7D 89 03 A6 */	mtctr r12
/* 8142D2A8 | 4E 80 04 21 */	bctrl
/* 8142D2AC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142D2B0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8142D2B4 | 2C 1D 00 14 */	cmpwi r29, 0x14
/* 8142D2B8 | 41 80 FF CC */	blt .L_8142D284
/* 8142D2BC | 80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 8142D2C0 | 80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8142D2C4 | 7C 03 00 00 */	cmpw r3, r0
/* 8142D2C8 | 40 80 00 0C */	bge .L_8142D2D4
/* 8142D2CC | 38 80 FF FF */	li r4, -0x1
/* 8142D2D0 | 48 00 00 70 */	b .L_8142D340
.L_8142D2D4:
/* 8142D2D4 | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 8142D2D8 | 7C 03 00 00 */	cmpw r3, r0
/* 8142D2DC | 40 81 00 0C */	ble .L_8142D2E8
/* 8142D2E0 | 38 80 FF FF */	li r4, -0x1
/* 8142D2E4 | 48 00 00 5C */	b .L_8142D340
.L_8142D2E8:
/* 8142D2E8 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142D2EC | 7C 03 00 00 */	cmpw r3, r0
/* 8142D2F0 | 40 80 00 10 */	bge .L_8142D300
/* 8142D2F4 | 7C 03 00 50 */	subf r0, r3, r0
/* 8142D2F8 | 20 80 00 14 */	subfic r4, r0, 0x14
/* 8142D2FC | 48 00 00 08 */	b .L_8142D304
.L_8142D300:
/* 8142D300 | 7C 80 18 50 */	subf r4, r0, r3
.L_8142D304:
/* 8142D304 | 20 64 00 13 */	subfic r3, r4, 0x13
/* 8142D308 | 38 00 00 14 */	li r0, 0x14
/* 8142D30C | 7C 63 03 96 */	divwu r3, r3, r0
/* 8142D310 | 7C 69 03 A6 */	mtctr r3
/* 8142D314 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D318 | 40 80 00 0C */	bge .L_8142D324
.L_8142D31C:
/* 8142D31C | 38 84 00 14 */	addi r4, r4, 0x14
/* 8142D320 | 42 00 FF FC */	bdnz .L_8142D31C
.L_8142D324:
/* 8142D324 | 38 00 00 14 */	li r0, 0x14
/* 8142D328 | 7C 04 03 96 */	divwu r0, r4, r0
/* 8142D32C | 7C 09 03 A6 */	mtctr r0
/* 8142D330 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 8142D334 | 41 80 00 0C */	blt .L_8142D340
.L_8142D338:
/* 8142D338 | 38 84 FF EC */	subi r4, r4, 0x14
/* 8142D33C | 42 00 FF FC */	bdnz .L_8142D338
.L_8142D340:
/* 8142D340 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D344 | 41 80 00 24 */	blt .L_8142D368
/* 8142D348 | 54 80 10 3A */	slwi r0, r4, 2
/* 8142D34C | 38 80 00 02 */	li r4, 0x2
/* 8142D350 | 7C 7E 02 14 */	add r3, r30, r0
/* 8142D354 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8142D358 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D35C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D360 | 7D 89 03 A6 */	mtctr r12
/* 8142D364 | 4E 80 04 21 */	bctrl
.L_8142D368:
/* 8142D368 | 80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8142D36C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8142D370 | 40 81 00 0C */	ble .L_8142D37C
/* 8142D374 | 38 80 FF FF */	li r4, -0x1
/* 8142D378 | 48 00 00 70 */	b .L_8142D3E8
.L_8142D37C:
/* 8142D37C | 80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 8142D380 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8142D384 | 40 80 00 0C */	bge .L_8142D390
/* 8142D388 | 38 80 FF FF */	li r4, -0x1
/* 8142D38C | 48 00 00 5C */	b .L_8142D3E8
.L_8142D390:
/* 8142D390 | 80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 8142D394 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8142D398 | 40 81 00 10 */	ble .L_8142D3A8
/* 8142D39C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8142D3A0 | 20 80 00 14 */	subfic r4, r0, 0x14
/* 8142D3A4 | 48 00 00 08 */	b .L_8142D3AC
.L_8142D3A8:
/* 8142D3A8 | 20 83 FF FF */	subfic r4, r3, -0x1
.L_8142D3AC:
/* 8142D3AC | 20 64 00 13 */	subfic r3, r4, 0x13
/* 8142D3B0 | 38 00 00 14 */	li r0, 0x14
/* 8142D3B4 | 7C 63 03 96 */	divwu r3, r3, r0
/* 8142D3B8 | 7C 69 03 A6 */	mtctr r3
/* 8142D3BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D3C0 | 40 80 00 0C */	bge .L_8142D3CC
.L_8142D3C4:
/* 8142D3C4 | 38 84 00 14 */	addi r4, r4, 0x14
/* 8142D3C8 | 42 00 FF FC */	bdnz .L_8142D3C4
.L_8142D3CC:
/* 8142D3CC | 38 00 00 14 */	li r0, 0x14
/* 8142D3D0 | 7C 04 03 96 */	divwu r0, r4, r0
/* 8142D3D4 | 7C 09 03 A6 */	mtctr r0
/* 8142D3D8 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 8142D3DC | 41 80 00 0C */	blt .L_8142D3E8
.L_8142D3E0:
/* 8142D3E0 | 38 84 FF EC */	subi r4, r4, 0x14
/* 8142D3E4 | 42 00 FF FC */	bdnz .L_8142D3E0
.L_8142D3E8:
/* 8142D3E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D3EC | 41 80 00 24 */	blt .L_8142D410
/* 8142D3F0 | 54 80 10 3A */	slwi r0, r4, 2
/* 8142D3F4 | 38 80 00 01 */	li r4, 0x1
/* 8142D3F8 | 7C 7E 02 14 */	add r3, r30, r0
/* 8142D3FC | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8142D400 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D404 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D408 | 7D 89 03 A6 */	mtctr r12
/* 8142D40C | 4E 80 04 21 */	bctrl
.L_8142D410:
/* 8142D410 | 38 00 FF FF */	li r0, -0x1
/* 8142D414 | 90 1E 01 D8 */	stw r0, 0x1d8(r30)
/* 8142D418 | 48 00 03 44 */	b .L_8142D75C
.L_8142D41C:
/* 8142D41C | 80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 8142D420 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142D424 | 40 80 03 38 */	bge .L_8142D75C
/* 8142D428 | 88 1E 02 00 */	lbz r0, 0x200(r30)
/* 8142D42C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142D430 | 41 82 03 2C */	beq .L_8142D75C
/* 8142D434 | 38 00 00 14 */	li r0, 0x14
/* 8142D438 | 7F C3 F3 78 */	mr r3, r30
/* 8142D43C | 3B E0 00 00 */	li r31, 0x0
/* 8142D440 | 7C 09 03 A6 */	mtctr r0
.L_8142D444:
/* 8142D444 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 8142D448 | 7C 00 E0 40 */	cmplw r0, r28
/* 8142D44C | 40 82 02 2C */	bne .L_8142D678
/* 8142D450 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142D454 | 81 7E 01 EC */	lwz r11, 0x1ec(r30)
/* 8142D458 | 7C C0 FA 14 */	add r6, r0, r31
/* 8142D45C | 7C 86 58 00 */	cmpw cr1, r6, r11
/* 8142D460 | 40 84 01 80 */	bge cr1, .L_8142D5E0
/* 8142D464 | 7C 66 58 50 */	subf r3, r6, r11
/* 8142D468 | 3C 80 66 66 */	lis r4, 0x6666
/* 8142D46C | 38 03 00 13 */	addi r0, r3, 0x13
/* 8142D470 | 38 84 66 67 */	addi r4, r4, 0x6667
/* 8142D474 | 38 6B FF 60 */	subi r3, r11, 0xa0
/* 8142D478 | 7C 04 00 96 */	mulhw r0, r4, r0
/* 8142D47C | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8142D480 | 54 04 0F FE */	srwi r4, r0, 31
/* 8142D484 | 7C 00 22 14 */	add r0, r0, r4
/* 8142D488 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8142D48C | 40 81 01 2C */	ble .L_8142D5B8
/* 8142D490 | 38 E0 00 00 */	li r7, 0x0
/* 8142D494 | 39 00 00 00 */	li r8, 0x0
/* 8142D498 | 39 20 00 00 */	li r9, 0x0
/* 8142D49C | 39 40 00 00 */	li r10, 0x0
/* 8142D4A0 | 38 A0 00 00 */	li r5, 0x0
/* 8142D4A4 | 41 85 00 18 */	bgt cr1, .L_8142D4BC
/* 8142D4A8 | 3C 80 80 00 */	lis r4, 0x8000
/* 8142D4AC | 38 04 FF EB */	subi r0, r4, 0x15
/* 8142D4B0 | 7C 0B 00 00 */	cmpw r11, r0
/* 8142D4B4 | 41 81 00 08 */	bgt .L_8142D4BC
/* 8142D4B8 | 38 A0 00 01 */	li r5, 0x1
.L_8142D4BC:
/* 8142D4BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8142D4C0 | 41 82 00 20 */	beq .L_8142D4E0
/* 8142D4C4 | 80 BE 01 E0 */	lwz r5, 0x1e0(r30)
/* 8142D4C8 | 3C 80 80 00 */	lis r4, 0x8000
/* 8142D4CC | 38 04 FF EB */	subi r0, r4, 0x15
/* 8142D4D0 | 7C 85 FA 14 */	add r4, r5, r31
/* 8142D4D4 | 7C 04 00 00 */	cmpw r4, r0
/* 8142D4D8 | 41 81 00 08 */	bgt .L_8142D4E0
/* 8142D4DC | 39 40 00 01 */	li r10, 0x1
.L_8142D4E0:
/* 8142D4E0 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8142D4E4 | 41 82 00 1C */	beq .L_8142D500
/* 8142D4E8 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142D4EC | 7C 80 FA 14 */	add r4, r0, r31
/* 8142D4F0 | 3C 04 80 00 */	addis r0, r4, 0x8000
/* 8142D4F4 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8142D4F8 | 41 82 00 08 */	beq .L_8142D500
/* 8142D4FC | 39 20 00 01 */	li r9, 0x1
.L_8142D500:
/* 8142D500 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8142D504 | 41 82 00 48 */	beq .L_8142D54C
/* 8142D508 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8142D50C | 38 80 00 01 */	li r4, 0x1
/* 8142D510 | 81 5E 01 EC */	lwz r10, 0x1ec(r30)
/* 8142D514 | 7C A0 FA 14 */	add r5, r0, r31
/* 8142D518 | 7C 05 00 D0 */	neg r0, r5
/* 8142D51C | 55 49 00 00 */	clrrwi r9, r10, 31
/* 8142D520 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 8142D524 | 7C 09 00 00 */	cmpw r9, r0
/* 8142D528 | 40 82 00 18 */	bne .L_8142D540
/* 8142D52C | 7C 05 50 50 */	subf r0, r5, r10
/* 8142D530 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 8142D534 | 7C 09 00 00 */	cmpw r9, r0
/* 8142D538 | 41 82 00 08 */	beq .L_8142D540
/* 8142D53C | 38 80 00 00 */	li r4, 0x0
.L_8142D540:
/* 8142D540 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142D544 | 41 82 00 08 */	beq .L_8142D54C
/* 8142D548 | 39 00 00 01 */	li r8, 0x1
.L_8142D54C:
/* 8142D54C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8142D550 | 41 82 00 3C */	beq .L_8142D58C
/* 8142D554 | 80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8142D558 | 38 A0 00 01 */	li r5, 0x1
/* 8142D55C | 80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8142D560 | 7C 84 FA 14 */	add r4, r4, r31
/* 8142D564 | 7C 84 00 50 */	subf r4, r4, r0
/* 8142D568 | 54 80 00 01 */	clrrwi. r0, r4, 31
/* 8142D56C | 40 82 00 14 */	bne .L_8142D580
/* 8142D570 | 38 04 00 13 */	addi r0, r4, 0x13
/* 8142D574 | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 8142D578 | 41 82 00 08 */	beq .L_8142D580
/* 8142D57C | 38 A0 00 00 */	li r5, 0x0
.L_8142D580:
/* 8142D580 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8142D584 | 41 82 00 08 */	beq .L_8142D58C
/* 8142D588 | 38 E0 00 01 */	li r7, 0x1
.L_8142D58C:
/* 8142D58C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8142D590 | 41 82 00 28 */	beq .L_8142D5B8
/* 8142D594 | 38 83 00 9F */	addi r4, r3, 0x9f
/* 8142D598 | 38 00 00 A0 */	li r0, 0xa0
/* 8142D59C | 7C 86 20 50 */	subf r4, r6, r4
/* 8142D5A0 | 7C 84 03 96 */	divwu r4, r4, r0
/* 8142D5A4 | 7C 89 03 A6 */	mtctr r4
/* 8142D5A8 | 7C 06 18 00 */	cmpw r6, r3
/* 8142D5AC | 40 80 00 0C */	bge .L_8142D5B8
.L_8142D5B0:
/* 8142D5B0 | 38 C6 00 A0 */	addi r6, r6, 0xa0
/* 8142D5B4 | 42 00 FF FC */	bdnz .L_8142D5B0
.L_8142D5B8:
/* 8142D5B8 | 80 9E 01 EC */	lwz r4, 0x1ec(r30)
/* 8142D5BC | 38 00 00 14 */	li r0, 0x14
/* 8142D5C0 | 38 64 00 13 */	addi r3, r4, 0x13
/* 8142D5C4 | 7C 66 18 50 */	subf r3, r6, r3
/* 8142D5C8 | 7C 63 03 96 */	divwu r3, r3, r0
/* 8142D5CC | 7C 69 03 A6 */	mtctr r3
/* 8142D5D0 | 7C 06 20 00 */	cmpw r6, r4
/* 8142D5D4 | 40 80 00 0C */	bge .L_8142D5E0
.L_8142D5D8:
/* 8142D5D8 | 38 C6 00 14 */	addi r6, r6, 0x14
/* 8142D5DC | 42 00 FF FC */	bdnz .L_8142D5D8
.L_8142D5E0:
/* 8142D5E0 | 80 9E 01 F0 */	lwz r4, 0x1f0(r30)
/* 8142D5E4 | 38 66 00 13 */	addi r3, r6, 0x13
/* 8142D5E8 | 38 00 00 14 */	li r0, 0x14
/* 8142D5EC | 7C 64 18 50 */	subf r3, r4, r3
/* 8142D5F0 | 7C 63 03 96 */	divwu r3, r3, r0
/* 8142D5F4 | 7C 69 03 A6 */	mtctr r3
/* 8142D5F8 | 7C 06 20 00 */	cmpw r6, r4
/* 8142D5FC | 40 81 00 0C */	ble .L_8142D608
.L_8142D600:
/* 8142D600 | 38 C6 FF EC */	subi r6, r6, 0x14
/* 8142D604 | 42 00 FF FC */	bdnz .L_8142D600
.L_8142D608:
/* 8142D608 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142D60C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D610 | 41 82 00 1C */	beq .L_8142D62C
/* 8142D614 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D618 | 7F C4 F3 78 */	mr r4, r30
/* 8142D61C | 38 A0 01 02 */	li r5, 0x102
/* 8142D620 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142D624 | 7D 89 03 A6 */	mtctr r12
/* 8142D628 | 4E 80 04 21 */	bctrl
.L_8142D62C:
/* 8142D62C | 57 E0 10 3A */	slwi r0, r31, 2
/* 8142D630 | 38 80 00 01 */	li r4, 0x1
/* 8142D634 | 7C 7E 02 14 */	add r3, r30, r0
/* 8142D638 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8142D63C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D640 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D644 | 7D 89 03 A6 */	mtctr r12
/* 8142D648 | 4E 80 04 21 */	bctrl
/* 8142D64C | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142D650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D654 | 41 82 01 08 */	beq .L_8142D75C
/* 8142D658 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D65C | 7F C4 F3 78 */	mr r4, r30
/* 8142D660 | 38 A0 00 00 */	li r5, 0x0
/* 8142D664 | 38 C0 00 04 */	li r6, 0x4
/* 8142D668 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142D66C | 7D 89 03 A6 */	mtctr r12
/* 8142D670 | 4E 80 04 21 */	bctrl
/* 8142D674 | 48 00 00 E8 */	b .L_8142D75C
.L_8142D678:
/* 8142D678 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8142D67C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8142D680 | 42 00 FD C4 */	bdnz .L_8142D444
/* 8142D684 | 48 00 00 D8 */	b .L_8142D75C
.L_8142D688:
/* 8142D688 | 80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 8142D68C | 7C 1C 00 40 */	cmplw r28, r0
/* 8142D690 | 40 82 00 3C */	bne .L_8142D6CC
/* 8142D694 | 38 00 00 00 */	li r0, 0x0
/* 8142D698 | 7F DF F3 78 */	mr r31, r30
/* 8142D69C | 98 1E 02 00 */	stb r0, 0x200(r30)
/* 8142D6A0 | 3B A0 00 00 */	li r29, 0x0
.L_8142D6A4:
/* 8142D6A4 | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8142D6A8 | 38 80 00 02 */	li r4, 0x2
/* 8142D6AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D6B0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D6B4 | 7D 89 03 A6 */	mtctr r12
/* 8142D6B8 | 4E 80 04 21 */	bctrl
/* 8142D6BC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142D6C0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8142D6C4 | 2C 1D 00 14 */	cmpwi r29, 0x14
/* 8142D6C8 | 41 80 FF DC */	blt .L_8142D6A4
.L_8142D6CC:
/* 8142D6CC | 80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 8142D6D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142D6D4 | 41 80 00 88 */	blt .L_8142D75C
/* 8142D6D8 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142D6DC | 38 00 FF FF */	li r0, -0x1
/* 8142D6E0 | 90 1E 01 DC */	stw r0, 0x1dc(r30)
/* 8142D6E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D6E8 | 41 82 00 20 */	beq .L_8142D708
/* 8142D6EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D6F0 | 7F C4 F3 78 */	mr r4, r30
/* 8142D6F4 | 38 A0 01 02 */	li r5, 0x102
/* 8142D6F8 | 38 C0 FF FF */	li r6, -0x1
/* 8142D6FC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142D700 | 7D 89 03 A6 */	mtctr r12
/* 8142D704 | 4E 80 04 21 */	bctrl
.L_8142D708:
/* 8142D708 | 3B A0 00 00 */	li r29, 0x0
.L_8142D70C:
/* 8142D70C | 80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8142D710 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D714 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D718 | 7D 89 03 A6 */	mtctr r12
/* 8142D71C | 4E 80 04 21 */	bctrl
/* 8142D720 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 8142D724 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D728 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D72C | 7D 89 03 A6 */	mtctr r12
/* 8142D730 | 4E 80 04 21 */	bctrl
/* 8142D734 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8142D738 | 38 80 00 02 */	li r4, 0x2
/* 8142D73C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D740 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D744 | 7D 89 03 A6 */	mtctr r12
/* 8142D748 | 4E 80 04 21 */	bctrl
/* 8142D74C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142D750 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8142D754 | 2C 1D 00 14 */	cmpwi r29, 0x14
/* 8142D758 | 41 80 FF B4 */	blt .L_8142D70C
.L_8142D75C:
/* 8142D75C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142D760 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142D764 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142D768 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142D76C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8142D770 | 7C 08 03 A6 */	mtlr r0
/* 8142D774 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142D778 | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q39textinput12candidatebox10UITextAreaFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x562C | 0x8142D77C | size: 0x34
# textinput::candidatebox::UITextWindow::UITextWindow(unsigned long, textinput::candidatebox::LayoutByNW4R*, textinput::candidatebox::UIObj::Listener*)
.fn __ct__Q39textinput12candidatebox12UITextWindowFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener, global
/* 8142D77C | 3C E0 81 66 */	lis r7, __vt__Q39textinput12candidatebox12UITextWindow@ha
/* 8142D780 | 39 00 00 00 */	li r8, 0x0
/* 8142D784 | 38 E7 DE C8 */	addi r7, r7, __vt__Q39textinput12candidatebox12UITextWindow@l
/* 8142D788 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 8142D78C | 38 07 00 1C */	addi r0, r7, 0x1c
/* 8142D790 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8142D794 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 8142D798 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 8142D79C | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8142D7A0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8142D7A4 | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8142D7A8 | 91 03 00 1C */	stw r8, 0x1c(r3)
/* 8142D7AC | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput12candidatebox12UITextWindowFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener

# .text:0x5660 | 0x8142D7B0 | size: 0x44
# textinput::candidatebox::UITextWindow::onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim, global
/* 8142D7B0 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8142D7B4 | 7C 65 1B 78 */	mr r5, r3
/* 8142D7B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142D7BC | 4C 82 00 20 */	bnelr
/* 8142D7C0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8142D7C4 | 4C 82 00 20 */	bnelr
/* 8142D7C8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8142D7CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D7D0 | 4D 82 00 20 */	beqlr
/* 8142D7D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D7D8 | 7C A4 2B 78 */	mr r4, r5
/* 8142D7DC | 38 A0 04 00 */	li r5, 0x400
/* 8142D7E0 | 38 C0 00 00 */	li r6, 0x0
/* 8142D7E4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142D7E8 | 7D 89 03 A6 */	mtctr r12
/* 8142D7EC | 4E 80 04 20 */	bctr
/* 8142D7F0 | 4E 80 00 20 */	blr
.endfn onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim

# .text:0x56A4 | 0x8142D7F4 | size: 0x30
# textinput::candidatebox::UIButton::UIButton(unsigned long, textinput::candidatebox::LayoutByNW4R*, textinput::candidatebox::UIObj::Listener*)
.fn __ct__Q39textinput12candidatebox8UIButtonFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener, global
/* 8142D7F4 | 3C E0 81 66 */	lis r7, __vt__Q39textinput12candidatebox8UIButton@ha
/* 8142D7F8 | 38 00 00 00 */	li r0, 0x0
/* 8142D7FC | 38 E7 DF 20 */	addi r7, r7, __vt__Q39textinput12candidatebox8UIButton@l
/* 8142D800 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8142D804 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8142D808 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 8142D80C | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 8142D810 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8142D814 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8142D818 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8142D81C | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 8142D820 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput12candidatebox8UIButtonFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener

# .text:0x56D4 | 0x8142D824 | size: 0x270
# textinput::candidatebox::UIButton::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q39textinput12candidatebox8UIButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8142D824 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142D828 | 7C 08 02 A6 */	mflr r0
/* 8142D82C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142D830 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142D834 | 7C 7F 1B 78 */	mr r31, r3
/* 8142D838 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142D83C | 7C DE 33 78 */	mr r30, r6
/* 8142D840 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142D844 | 7C BD 2B 78 */	mr r29, r5
/* 8142D848 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8142D84C | 7C 9C 23 78 */	mr r28, r4
/* 8142D850 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8142D854 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D858 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8142D85C | 7D 89 03 A6 */	mtctr r12
/* 8142D860 | 4E 80 04 21 */	bctrl
/* 8142D864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D868 | 41 82 00 14 */	beq .L_8142D87C
/* 8142D86C | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8142D870 | 41 82 00 0C */	beq .L_8142D87C
/* 8142D874 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8142D878 | 40 82 01 FC */	bne .L_8142DA74
.L_8142D87C:
/* 8142D87C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8142D880 | 3C 80 81 66 */	lis r4, lbl_8165DA08@ha
/* 8142D884 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8142D888 | 38 84 DA 08 */	addi r4, r4, lbl_8165DA08@l
/* 8142D88C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142D890 | 7D 89 03 A6 */	mtctr r12
/* 8142D894 | 4E 80 04 21 */	bctrl
/* 8142D898 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D89C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142D8A0 | 7D 89 03 A6 */	mtctr r12
/* 8142D8A4 | 4E 80 04 21 */	bctrl
/* 8142D8A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D8AC | 41 82 00 0C */	beq .L_8142D8B8
/* 8142D8B0 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8142D8B4 | 40 82 01 C0 */	bne .L_8142DA74
.L_8142D8B8:
/* 8142D8B8 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8142D8BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D8C0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8142D8C4 | 7D 89 03 A6 */	mtctr r12
/* 8142D8C8 | 4E 80 04 21 */	bctrl
/* 8142D8CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142D8D0 | 40 82 01 A4 */	bne .L_8142DA74
/* 8142D8D4 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 8142D8D8 | 41 82 00 8C */	beq .L_8142D964
/* 8142D8DC | 40 80 00 14 */	bge .L_8142D8F0
/* 8142D8E0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8142D8E4 | 41 82 01 50 */	beq .L_8142DA34
/* 8142D8E8 | 40 80 01 30 */	bge .L_8142DA18
/* 8142D8EC | 48 00 01 88 */	b .L_8142DA74
.L_8142D8F0:
/* 8142D8F0 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 8142D8F4 | 41 82 00 08 */	beq .L_8142D8FC
/* 8142D8F8 | 48 00 01 7C */	b .L_8142DA74
.L_8142D8FC:
/* 8142D8FC | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8142D900 | 28 00 08 00 */	cmplwi r0, 0x800
/* 8142D904 | 40 82 01 70 */	bne .L_8142DA74
/* 8142D908 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8142D90C | 38 80 00 00 */	li r4, 0x0
/* 8142D910 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D914 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D918 | 7D 89 03 A6 */	mtctr r12
/* 8142D91C | 4E 80 04 21 */	bctrl
/* 8142D920 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8142D924 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8142D928 | 40 82 00 1C */	bne .L_8142D944
/* 8142D92C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8142D930 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D934 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8142D938 | 7D 89 03 A6 */	mtctr r12
/* 8142D93C | 4E 80 04 21 */	bctrl
/* 8142D940 | 48 00 01 34 */	b .L_8142DA74
.L_8142D944:
/* 8142D944 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8142D948 | 40 82 01 2C */	bne .L_8142DA74
/* 8142D94C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8142D950 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D954 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8142D958 | 7D 89 03 A6 */	mtctr r12
/* 8142D95C | 4E 80 04 21 */	bctrl
/* 8142D960 | 48 00 01 14 */	b .L_8142DA74
.L_8142D964:
/* 8142D964 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8142D968 | 28 00 08 00 */	cmplwi r0, 0x800
/* 8142D96C | 40 82 01 08 */	bne .L_8142DA74
/* 8142D970 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8142D974 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 8142D978 | 40 82 00 FC */	bne .L_8142DA74
/* 8142D97C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142D980 | 7F 83 E3 78 */	mr r3, r28
/* 8142D984 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8142D988 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8142D98C | 7D 89 03 A6 */	mtctr r12
/* 8142D990 | 4E 80 04 21 */	bctrl
/* 8142D994 | 3C 80 66 66 */	lis r4, 0x6666
/* 8142D998 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 8142D99C | 38 04 66 67 */	addi r0, r4, 0x6667
/* 8142D9A0 | 7C 00 28 96 */	mulhw r0, r0, r5
/* 8142D9A4 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8142D9A8 | 54 03 0F FE */	srwi r3, r0, 31
/* 8142D9AC | 7C 00 1A 14 */	add r0, r0, r3
/* 8142D9B0 | 1C 00 00 14 */	mulli r0, r0, 0x14
/* 8142D9B4 | 7C 00 28 51 */	subf. r0, r0, r5
/* 8142D9B8 | 41 82 00 BC */	beq .L_8142DA74
/* 8142D9BC | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8142D9C0 | 38 80 00 00 */	li r4, 0x0
/* 8142D9C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D9C8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142D9CC | 7D 89 03 A6 */	mtctr r12
/* 8142D9D0 | 4E 80 04 21 */	bctrl
/* 8142D9D4 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8142D9D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8142D9DC | 40 82 00 1C */	bne .L_8142D9F8
/* 8142D9E0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8142D9E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142D9E8 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8142D9EC | 7D 89 03 A6 */	mtctr r12
/* 8142D9F0 | 4E 80 04 21 */	bctrl
/* 8142D9F4 | 48 00 00 80 */	b .L_8142DA74
.L_8142D9F8:
/* 8142D9F8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8142D9FC | 40 82 00 78 */	bne .L_8142DA74
/* 8142DA00 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8142DA04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DA08 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8142DA0C | 7D 89 03 A6 */	mtctr r12
/* 8142DA10 | 4E 80 04 21 */	bctrl
/* 8142DA14 | 48 00 00 60 */	b .L_8142DA74
.L_8142DA18:
/* 8142DA18 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8142DA1C | 38 80 00 02 */	li r4, 0x2
/* 8142DA20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DA24 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142DA28 | 7D 89 03 A6 */	mtctr r12
/* 8142DA2C | 4E 80 04 21 */	bctrl
/* 8142DA30 | 48 00 00 44 */	b .L_8142DA74
.L_8142DA34:
/* 8142DA34 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8142DA38 | 38 80 00 01 */	li r4, 0x1
/* 8142DA3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DA40 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142DA44 | 7D 89 03 A6 */	mtctr r12
/* 8142DA48 | 4E 80 04 21 */	bctrl
/* 8142DA4C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142DA50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DA54 | 41 82 00 20 */	beq .L_8142DA74
/* 8142DA58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DA5C | 7F E4 FB 78 */	mr r4, r31
/* 8142DA60 | 38 A0 00 00 */	li r5, 0x0
/* 8142DA64 | 38 C0 00 04 */	li r6, 0x4
/* 8142DA68 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142DA6C | 7D 89 03 A6 */	mtctr r12
/* 8142DA70 | 4E 80 04 21 */	bctrl
.L_8142DA74:
/* 8142DA74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142DA78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142DA7C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142DA80 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142DA84 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8142DA88 | 7C 08 03 A6 */	mtlr r0
/* 8142DA8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142DA90 | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q39textinput12candidatebox8UIButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x5944 | 0x8142DA94 | size: 0x10
# textinput::gui::GUIComponent::getFlightDuration(int)
.fn getFlightDuration__Q39textinput3gui12GUIComponentFi, global
/* 8142DA94 | 54 80 08 3C */	slwi r0, r4, 1
/* 8142DA98 | 7C 63 02 14 */	add r3, r3, r0
/* 8142DA9C | A0 63 00 80 */	lhz r3, 0x80(r3)
/* 8142DAA0 | 4E 80 00 20 */	blr
.endfn getFlightDuration__Q39textinput3gui12GUIComponentFi

# .text:0x5954 | 0x8142DAA4 | size: 0x44
# textinput::candidatebox::UIOnOffButton::UIOnOffButton(unsigned long, textinput::candidatebox::LayoutByNW4R*, textinput::candidatebox::UIObj::Listener*)
.fn __ct__Q39textinput12candidatebox13UIOnOffButtonFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener, global
/* 8142DAA4 | 3C E0 81 66 */	lis r7, __vt__Q39textinput12candidatebox13UIOnOffButton@ha
/* 8142DAA8 | 39 00 00 00 */	li r8, 0x0
/* 8142DAAC | 38 E7 DE F4 */	addi r7, r7, __vt__Q39textinput12candidatebox13UIOnOffButton@l
/* 8142DAB0 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 8142DAB4 | 38 07 00 1C */	addi r0, r7, 0x1c
/* 8142DAB8 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8142DABC | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 8142DAC0 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 8142DAC4 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8142DAC8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8142DACC | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8142DAD0 | 91 03 00 1C */	stw r8, 0x1c(r3)
/* 8142DAD4 | 91 03 00 20 */	stw r8, 0x20(r3)
/* 8142DAD8 | 91 03 00 24 */	stw r8, 0x24(r3)
/* 8142DADC | 91 03 00 28 */	stw r8, 0x28(r3)
/* 8142DAE0 | 91 03 00 2C */	stw r8, 0x2c(r3)
/* 8142DAE4 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput12candidatebox13UIOnOffButtonFUlPQ39textinput12candidatebox12LayoutByNW4RPQ49textinput12candidatebox5UIObj8Listener

# .text:0x5998 | 0x8142DAE8 | size: 0x98
# textinput::candidatebox::UIOnOffButton::onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim, global
/* 8142DAE8 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8142DAEC | 7C 67 1B 78 */	mr r7, r3
/* 8142DAF0 | 7C 05 00 40 */	cmplw r5, r0
/* 8142DAF4 | 40 82 00 40 */	bne .L_8142DB34
/* 8142DAF8 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8142DAFC | 28 00 00 07 */	cmplwi r0, 0x7
/* 8142DB00 | 4C 82 00 20 */	bnelr
/* 8142DB04 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8142DB08 | 4C 82 00 20 */	bnelr
/* 8142DB0C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8142DB10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DB14 | 4D 82 00 20 */	beqlr
/* 8142DB18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DB1C | 7C E4 3B 78 */	mr r4, r7
/* 8142DB20 | 38 A0 03 01 */	li r5, 0x301
/* 8142DB24 | 38 C0 00 00 */	li r6, 0x0
/* 8142DB28 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142DB2C | 7D 89 03 A6 */	mtctr r12
/* 8142DB30 | 4E 80 04 20 */	bctr
.L_8142DB34:
/* 8142DB34 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142DB38 | 7C 05 00 40 */	cmplw r5, r0
/* 8142DB3C | 4C 82 00 20 */	bnelr
/* 8142DB40 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8142DB44 | 28 00 00 07 */	cmplwi r0, 0x7
/* 8142DB48 | 4C 82 00 20 */	bnelr
/* 8142DB4C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8142DB50 | 4C 82 00 20 */	bnelr
/* 8142DB54 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8142DB58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DB5C | 4D 82 00 20 */	beqlr
/* 8142DB60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DB64 | 7C E4 3B 78 */	mr r4, r7
/* 8142DB68 | 38 A0 03 00 */	li r5, 0x300
/* 8142DB6C | 38 C0 00 00 */	li r6, 0x0
/* 8142DB70 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142DB74 | 7D 89 03 A6 */	mtctr r12
/* 8142DB78 | 4E 80 04 20 */	bctr
/* 8142DB7C | 4E 80 00 20 */	blr
.endfn onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim

# .text:0x5A30 | 0x8142DB80 | size: 0x16C
# textinput::candidatebox::UIOnOffButton::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q39textinput12candidatebox13UIOnOffButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8142DB80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142DB84 | 7C 08 02 A6 */	mflr r0
/* 8142DB88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142DB8C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142DB90 | 7C DF 33 78 */	mr r31, r6
/* 8142DB94 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142DB98 | 7C BE 2B 78 */	mr r30, r5
/* 8142DB9C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142DBA0 | 7C 9D 23 78 */	mr r29, r4
/* 8142DBA4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8142DBA8 | 7C 7C 1B 78 */	mr r28, r3
/* 8142DBAC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8142DBB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DBB4 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8142DBB8 | 7D 89 03 A6 */	mtctr r12
/* 8142DBBC | 4E 80 04 21 */	bctrl
/* 8142DBC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DBC4 | 41 82 00 14 */	beq .L_8142DBD8
/* 8142DBC8 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 8142DBCC | 41 82 00 0C */	beq .L_8142DBD8
/* 8142DBD0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142DBD4 | 40 82 00 F8 */	bne .L_8142DCCC
.L_8142DBD8:
/* 8142DBD8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8142DBDC | 3C 80 81 66 */	lis r4, lbl_8165DA08@ha
/* 8142DBE0 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8142DBE4 | 38 84 DA 08 */	addi r4, r4, lbl_8165DA08@l
/* 8142DBE8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142DBEC | 7D 89 03 A6 */	mtctr r12
/* 8142DBF0 | 4E 80 04 21 */	bctrl
/* 8142DBF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DBF8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142DBFC | 7D 89 03 A6 */	mtctr r12
/* 8142DC00 | 4E 80 04 21 */	bctrl
/* 8142DC04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DC08 | 41 82 00 0C */	beq .L_8142DC14
/* 8142DC0C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 8142DC10 | 40 82 00 BC */	bne .L_8142DCCC
.L_8142DC14:
/* 8142DC14 | 80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 8142DC18 | 7C 1D 00 40 */	cmplw r29, r0
/* 8142DC1C | 40 82 00 0C */	bne .L_8142DC28
/* 8142DC20 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8142DC24 | 48 00 00 08 */	b .L_8142DC2C
.L_8142DC28:
/* 8142DC28 | 80 7C 00 2C */	lwz r3, 0x2c(r28)
.L_8142DC2C:
/* 8142DC2C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 8142DC30 | 41 82 00 48 */	beq .L_8142DC78
/* 8142DC34 | 40 80 00 10 */	bge .L_8142DC44
/* 8142DC38 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142DC3C | 40 80 00 54 */	bge .L_8142DC90
/* 8142DC40 | 48 00 00 8C */	b .L_8142DCCC
.L_8142DC44:
/* 8142DC44 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 8142DC48 | 41 82 00 08 */	beq .L_8142DC50
/* 8142DC4C | 48 00 00 80 */	b .L_8142DCCC
.L_8142DC50:
/* 8142DC50 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8142DC54 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 8142DC58 | 41 82 00 74 */	beq .L_8142DCCC
/* 8142DC5C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8142DC60 | 38 80 00 01 */	li r4, 0x1
/* 8142DC64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DC68 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8142DC6C | 7D 89 03 A6 */	mtctr r12
/* 8142DC70 | 4E 80 04 21 */	bctrl
/* 8142DC74 | 48 00 00 58 */	b .L_8142DCCC
.L_8142DC78:
/* 8142DC78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DC7C | 38 80 00 02 */	li r4, 0x2
/* 8142DC80 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142DC84 | 7D 89 03 A6 */	mtctr r12
/* 8142DC88 | 4E 80 04 21 */	bctrl
/* 8142DC8C | 48 00 00 40 */	b .L_8142DCCC
.L_8142DC90:
/* 8142DC90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DC94 | 38 80 00 01 */	li r4, 0x1
/* 8142DC98 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142DC9C | 7D 89 03 A6 */	mtctr r12
/* 8142DCA0 | 4E 80 04 21 */	bctrl
/* 8142DCA4 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8142DCA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DCAC | 41 82 00 20 */	beq .L_8142DCCC
/* 8142DCB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DCB4 | 7F 84 E3 78 */	mr r4, r28
/* 8142DCB8 | 38 A0 00 00 */	li r5, 0x0
/* 8142DCBC | 38 C0 00 04 */	li r6, 0x4
/* 8142DCC0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142DCC4 | 7D 89 03 A6 */	mtctr r12
/* 8142DCC8 | 4E 80 04 21 */	bctrl
.L_8142DCCC:
/* 8142DCCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142DCD0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142DCD4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142DCD8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142DCDC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8142DCE0 | 7C 08 03 A6 */	mtlr r0
/* 8142DCE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142DCE8 | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q39textinput12candidatebox13UIOnOffButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x5B9C | 0x8142DCEC | size: 0x30
# textinput::candidatebox::UIOnOffButton::IsTurning() const
.fn IsTurning__Q39textinput12candidatebox13UIOnOffButtonCFv, global
/* 8142DCEC | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 8142DCF0 | 80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8142DCF4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8142DCF8 | 41 82 00 14 */	beq .L_8142DD0C
/* 8142DCFC | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8142DD00 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142DD04 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8142DD08 | 40 82 00 0C */	bne .L_8142DD14
.L_8142DD0C:
/* 8142DD0C | 38 60 00 01 */	li r3, 0x1
/* 8142DD10 | 4E 80 00 20 */	blr
.L_8142DD14:
/* 8142DD14 | 38 60 00 00 */	li r3, 0x0
/* 8142DD18 | 4E 80 00 20 */	blr
.endfn IsTurning__Q39textinput12candidatebox13UIOnOffButtonCFv

# .text:0x5BCC | 0x8142DD1C | size: 0xC
# textinput::candidatebox::LayoutByNW4R::getScroll()
.fn getScroll__Q39textinput12candidatebox12LayoutByNW4RFv, global
/* 8142DD1C | 80 03 02 C4 */	lwz r0, 0x2c4(r3)
/* 8142DD20 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8142DD24 | 4E 80 00 20 */	blr
.endfn getScroll__Q39textinput12candidatebox12LayoutByNW4RFv

# .text:0x5BD8 | 0x8142DD28 | size: 0x10
# textinput::candidatebox::UIObj::onEvent(textinput::gui::GUIComponent&, unsigned long, void*)
.fn onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv, global
/* 8142DD28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DD2C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142DD30 | 7D 89 03 A6 */	mtctr r12
/* 8142DD34 | 4E 80 04 20 */	bctr
.endfn onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv

# .text:0x5BE8 | 0x8142DD38 | size: 0x4
# textinput::candidatebox::UIObj::onGUIEvent(textinput::gui::PaneComponent&, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onGUIEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8142DD38 | 4E 80 00 20 */	blr
.endfn onGUIEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x5BEC | 0x8142DD3C | size: 0x4
# textinput::candidatebox::Base::turnOff()
.fn turnOff__Q39textinput12candidatebox4BaseFv, global
/* 8142DD3C | 4E 80 00 20 */	blr
.endfn turnOff__Q39textinput12candidatebox4BaseFv

# .text:0x5BF0 | 0x8142DD40 | size: 0x4
# textinput::candidatebox::Base::turnOn()
.fn turnOn__Q39textinput12candidatebox4BaseFv, global
/* 8142DD40 | 4E 80 00 20 */	blr
.endfn turnOn__Q39textinput12candidatebox4BaseFv

# .text:0x5BF4 | 0x8142DD44 | size: 0x4
# textinput::candidatebox::Base::draw()
.fn draw__Q39textinput12candidatebox4BaseFv, global
/* 8142DD44 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput12candidatebox4BaseFv

# .text:0x5BF8 | 0x8142DD48 | size: 0x5C
# textinput::candidatebox::CandidateScrollAnmPane::~CandidateScrollAnmPane()
.fn __dt__Q39textinput12candidatebox22CandidateScrollAnmPaneFv, global
/* 8142DD48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142DD4C | 7C 08 02 A6 */	mflr r0
/* 8142DD50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DD54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142DD58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142DD5C | 7C 9F 23 78 */	mr r31, r4
/* 8142DD60 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142DD64 | 7C 7E 1B 78 */	mr r30, r3
/* 8142DD68 | 41 82 00 20 */	beq .L_8142DD88
/* 8142DD6C | 41 82 00 0C */	beq .L_8142DD78
/* 8142DD70 | 38 80 00 00 */	li r4, 0x0
/* 8142DD74 | 48 00 91 AD */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_8142DD78:
/* 8142DD78 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142DD7C | 40 81 00 0C */	ble .L_8142DD88
/* 8142DD80 | 7F C3 F3 78 */	mr r3, r30
/* 8142DD84 | 48 1C A3 61 */	bl __dl__FPv
.L_8142DD88:
/* 8142DD88 | 7F C3 F3 78 */	mr r3, r30
/* 8142DD8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142DD90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142DD94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142DD98 | 7C 08 03 A6 */	mtlr r0
/* 8142DD9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142DDA0 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox22CandidateScrollAnmPaneFv

# .text:0x5C54 | 0x8142DDA4 | size: 0x5C
# textinput::candidatebox::OnOffAnmPane::~OnOffAnmPane()
.fn __dt__Q39textinput12candidatebox12OnOffAnmPaneFv, global
/* 8142DDA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142DDA8 | 7C 08 02 A6 */	mflr r0
/* 8142DDAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DDB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142DDB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142DDB8 | 7C 9F 23 78 */	mr r31, r4
/* 8142DDBC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142DDC0 | 7C 7E 1B 78 */	mr r30, r3
/* 8142DDC4 | 41 82 00 20 */	beq .L_8142DDE4
/* 8142DDC8 | 41 82 00 0C */	beq .L_8142DDD4
/* 8142DDCC | 38 80 00 00 */	li r4, 0x0
/* 8142DDD0 | 48 00 91 51 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_8142DDD4:
/* 8142DDD4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142DDD8 | 40 81 00 0C */	ble .L_8142DDE4
/* 8142DDDC | 7F C3 F3 78 */	mr r3, r30
/* 8142DDE0 | 48 1C A3 05 */	bl __dl__FPv
.L_8142DDE4:
/* 8142DDE4 | 7F C3 F3 78 */	mr r3, r30
/* 8142DDE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142DDEC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142DDF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142DDF4 | 7C 08 03 A6 */	mtlr r0
/* 8142DDF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142DDFC | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox12OnOffAnmPaneFv

# .text:0x5CB0 | 0x8142DE00 | size: 0x5C
# textinput::candidatebox::PredictWindow::~PredictWindow()
.fn __dt__Q39textinput12candidatebox13PredictWindowFv, global
/* 8142DE00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142DE04 | 7C 08 02 A6 */	mflr r0
/* 8142DE08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DE0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142DE10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142DE14 | 7C 9F 23 78 */	mr r31, r4
/* 8142DE18 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142DE1C | 7C 7E 1B 78 */	mr r30, r3
/* 8142DE20 | 41 82 00 20 */	beq .L_8142DE40
/* 8142DE24 | 41 82 00 0C */	beq .L_8142DE30
/* 8142DE28 | 38 80 00 00 */	li r4, 0x0
/* 8142DE2C | 48 00 90 F5 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_8142DE30:
/* 8142DE30 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142DE34 | 40 81 00 0C */	ble .L_8142DE40
/* 8142DE38 | 7F C3 F3 78 */	mr r3, r30
/* 8142DE3C | 48 1C A2 A9 */	bl __dl__FPv
.L_8142DE40:
/* 8142DE40 | 7F C3 F3 78 */	mr r3, r30
/* 8142DE44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142DE48 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142DE4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142DE50 | 7C 08 03 A6 */	mtlr r0
/* 8142DE54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142DE58 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput12candidatebox13PredictWindowFv

# .text:0x5D0C | 0x8142DE5C | size: 0x64
.fn "__sinit_\\candidatebox_cpp", global
/* 8142DE5C | 3C 60 81 66 */	lis r3, lbl_8165D2F8@ha
/* 8142DE60 | 80 0D 93 84 */	lwz r0, lbl_816973C4@sda21(r0)
/* 8142DE64 | 38 63 D2 F8 */	addi r3, r3, lbl_8165D2F8@l
/* 8142DE68 | 80 8D 93 80 */	lwz r4, lbl_816973C0@sda21(r0)
/* 8142DE6C | 90 03 00 9C */	stw r0, 0x9c(r3)
/* 8142DE70 | 90 83 01 1C */	stw r4, 0x11c(r3)
/* 8142DE74 | 90 83 01 5C */	stw r4, 0x15c(r3)
/* 8142DE78 | 90 83 01 9C */	stw r4, 0x19c(r3)
/* 8142DE7C | 90 83 01 DC */	stw r4, 0x1dc(r3)
/* 8142DE80 | 90 83 02 1C */	stw r4, 0x21c(r3)
/* 8142DE84 | 90 83 02 5C */	stw r4, 0x25c(r3)
/* 8142DE88 | 90 83 02 9C */	stw r4, 0x29c(r3)
/* 8142DE8C | 90 83 02 DC */	stw r4, 0x2dc(r3)
/* 8142DE90 | 90 83 03 1C */	stw r4, 0x31c(r3)
/* 8142DE94 | 90 83 03 5C */	stw r4, 0x35c(r3)
/* 8142DE98 | 90 83 03 9C */	stw r4, 0x39c(r3)
/* 8142DE9C | 90 83 03 DC */	stw r4, 0x3dc(r3)
/* 8142DEA0 | 90 83 04 1C */	stw r4, 0x41c(r3)
/* 8142DEA4 | 90 83 04 5C */	stw r4, 0x45c(r3)
/* 8142DEA8 | 90 83 04 9C */	stw r4, 0x49c(r3)
/* 8142DEAC | 90 83 04 DC */	stw r4, 0x4dc(r3)
/* 8142DEB0 | 90 83 05 1C */	stw r4, 0x51c(r3)
/* 8142DEB4 | 90 83 05 5C */	stw r4, 0x55c(r3)
/* 8142DEB8 | 90 83 05 9C */	stw r4, 0x59c(r3)
/* 8142DEBC | 4E 80 00 20 */	blr
.endfn "__sinit_\\candidatebox_cpp"

# .text:0x5D70 | 0x8142DEC0 | size: 0x8
# textinput::candidatebox::UITextArea::@20@onAnmEvent(textinput::util::AnimObserver::AnmEvent, void*)
.fn "@20@onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv", global
/* 8142DEC0 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8142DEC4 | 4B FF F0 64 */	b onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv
.endfn "@20@onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv"

# .text:0x5D78 | 0x8142DEC8 | size: 0x8
# textinput::candidatebox::UIOnOffButton::@20@onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn "@20@onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim", global
/* 8142DEC8 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8142DECC | 4B FF FC 1C */	b onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
.endfn "@20@onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"

# .text:0x5D80 | 0x8142DED0 | size: 0x8
# textinput::candidatebox::UITextWindow::@20@onChangeAnmState(textinput::nw4rmanager::AnmObserver::AnmEvent, textinput::nw4rmanager::AnmPane*, textinput::nw4rmanager::Anim*)
.fn "@20@onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim", global
/* 8142DED0 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8142DED4 | 4B FF F8 DC */	b onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
.endfn "@20@onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"

# .text:0x5D88 | 0x8142DED8 | size: 0x8
.fn "@36@__dt__Q39textinput12candidatebox12LayoutByNW4RFv", global
/* 8142DED8 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8142DEDC | 4B FF A7 5C */	b __dt__Q39textinput12candidatebox12LayoutByNW4RFv
.endfn "@36@__dt__Q39textinput12candidatebox12LayoutByNW4RFv"

# .text:0x5D90 | 0x8142DEE0 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::@36@setRootPaneScaleFor4x3()
.fn "@36@setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv", global
/* 8142DEE0 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8142DEE4 | 4B FF D6 B8 */	b setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv
.endfn "@36@setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv"

# .text:0x5D98 | 0x8142DEE8 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::@36@setRootPaneScaleFor16x9()
.fn "@36@setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv", global
/* 8142DEE8 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8142DEEC | 4B FF D6 58 */	b setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv
.endfn "@36@setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv"

# .text:0x5DA0 | 0x8142DEF0 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::@36@calc()
.fn "@36@calc__Q39textinput12candidatebox12LayoutByNW4RFv", global
/* 8142DEF0 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8142DEF4 | 4B FF B7 A0 */	b calc__Q39textinput12candidatebox12LayoutByNW4RFv
.endfn "@36@calc__Q39textinput12candidatebox12LayoutByNW4RFv"

# .text:0x5DA8 | 0x8142DEF8 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::@36@draw()
.fn "@36@draw__Q39textinput12candidatebox12LayoutByNW4RFv", global
/* 8142DEF8 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8142DEFC | 4B FF B6 E8 */	b draw__Q39textinput12candidatebox12LayoutByNW4RFv
.endfn "@36@draw__Q39textinput12candidatebox12LayoutByNW4RFv"

# .text:0x5DB0 | 0x8142DF00 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::@36@init()
.fn "@36@init__Q39textinput12candidatebox12LayoutByNW4RFv", global
/* 8142DF00 | 38 63 FF DC */	subi r3, r3, 0x24
/* 8142DF04 | 4B FF B3 14 */	b init__Q39textinput12candidatebox12LayoutByNW4RFv
.endfn "@36@init__Q39textinput12candidatebox12LayoutByNW4RFv"

# .text:0x5DB8 | 0x8142DF08 | size: 0x8
# textinput::candidatebox::LayoutByNW4R::@204@onEvent(textinput::candidatebox::UIObj*, unsigned long, void*)
.fn "@204@onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv", global
/* 8142DF08 | 38 63 FF 34 */	subi r3, r3, 0xcc
/* 8142DF0C | 4B FF CE 6C */	b onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv
.endfn "@204@onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv"

# 0x8160D1F8..0x8160D1FC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\candidatebox_cpp"

# 0x816152E0..0x81615658 | size: 0x378
.rodata
.balign 8

# .rodata:0x0 | 0x816152E0 | size: 0x378
# textinput::candidatebox::csAninationFile
.obj csAninationFile__Q29textinput12candidatebox, local
	.4byte 0x00000000
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F6E6F72
	.4byte 0x6D616C2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615324:
	.4byte 0x00000001
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F466F75
	.4byte 0x6375735F
	.4byte 0x494E2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615368:
	.4byte 0x00000002
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F466F63
	.4byte 0x75735F4F
	.4byte 0x55542E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816153AC:
	.4byte 0x00000004
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F507573
	.4byte 0x6865642E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816153F0:
	.4byte 0x00000005
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F466164
	.4byte 0x655F494E
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615434:
	.4byte 0x00000006
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F466164
	.4byte 0x655F4F55
	.4byte 0x542E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615478:
	.4byte 0x00000003
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F526F6C
	.4byte 0x6C5F6F76
	.4byte 0x65722E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816154BC:
	.4byte 0x00000007
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F4F6E4F
	.4byte 0x66664275
	.4byte 0x74746F6E
	.4byte 0x5F507573
	.4byte 0x6865642E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615500:
	.4byte 0x00000008
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F707265
	.4byte 0x64696374
	.4byte 0x5F4F4E2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615544:
	.4byte 0x00000009
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F707265
	.4byte 0x64696374
	.4byte 0x5F4F4646
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615588:
	.4byte 0x0000000B
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F696E76
	.4byte 0x616C6964
	.4byte 0x4D6F6465
	.4byte 0x5F4F4E2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_816155CC:
	.4byte 0x0000000A
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F696E76
	.4byte 0x616C6964
	.4byte 0x4D6F6465
	.4byte 0x5F6E6F72
	.4byte 0x6D616C2E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81615610:
	.4byte 0x0000000C
	.4byte 0x66735F56
	.4byte 0x4B5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75745F61
	.4byte 0x5F696E76
	.4byte 0x616C6964
	.4byte 0x4D6F6465
	.4byte 0x5F4F4646
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAninationFile__Q29textinput12candidatebox

# 0x8165D2D0..0x8165E070 | size: 0xDA0
.data
.balign 8

# .data:0x0 | 0x8165D2D0 | size: 0x10
.obj lbl_8165D2D0, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30300000
.endobj lbl_8165D2D0

# .data:0x10 | 0x8165D2E0 | size: 0x18
.obj lbl_8165D2E0, global
	.4byte 0x505F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x4C656674
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8165D2E0

# .data:0x28 | 0x8165D2F8 | size: 0x68C
.obj lbl_8165D2F8, global
	.4byte 0x00000001
	.4byte 0x4E5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75740000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x505F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x4C656674
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153F0
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615434
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x505F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x52676874
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153F0
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615434
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30300000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30310000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30320000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30330000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30340000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30350000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30360000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30370000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30380000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30390000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31300000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31310000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31320000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31330000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31340000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31350000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31360000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31370000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31380000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31390000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x505F4F6E
	.4byte 0x42746E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153F0
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615434
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.rel csAninationFile__Q29textinput12candidatebox, .L_816154BC
	.4byte 0x00000002
	.4byte 0x505F4F66
	.4byte 0x6642746E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615324
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615368
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153AC
	.rel csAninationFile__Q29textinput12candidatebox, .L_816153F0
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615434
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615478
	.rel csAninationFile__Q29textinput12candidatebox, .L_816154BC
	.4byte 0x00000003
	.4byte 0x575F7072
	.4byte 0x65646963
	.4byte 0x7457696E
	.4byte 0x646F7700
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte csAninationFile__Q29textinput12candidatebox
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615500
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615544
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615588
	.rel csAninationFile__Q29textinput12candidatebox, .L_816155CC
	.rel csAninationFile__Q29textinput12candidatebox, .L_81615610
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x505F4F66
	.4byte 0x6642746E
	.4byte 0x00000000
.endobj lbl_8165D2F8

# .data:0x6B4 | 0x8165D984 | size: 0x84
.obj lbl_8165D984, global
	.4byte 0x425F4F66
	.4byte 0x6642746E
	.4byte 0x00000000
	.4byte 0x505F4A50
	.4byte 0x4F666642
	.4byte 0x746E0000
	.4byte 0x505F434E
	.4byte 0x4F666642
	.4byte 0x746E0000
	.4byte 0x505F434E
	.4byte 0x4F6E4274
	.4byte 0x6E000000
	.4byte 0x425F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x4C656674
	.4byte 0x00000000
	.4byte 0x505F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x4C656674
	.4byte 0x00000000
	.4byte 0x425F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x52676874
	.4byte 0x00000000
	.4byte 0x505F7072
	.4byte 0x64635F73
	.4byte 0x63726C5F
	.4byte 0x52676874
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8165D984

# .data:0x738 | 0x8165DA08 | size: 0x10
.obj lbl_8165DA08, global
	.string "W_predictWindow"
.endobj lbl_8165DA08

# .data:0x748 | 0x8165DA18 | size: 0x10
.obj lbl_8165DA18, global
	.4byte 0x4E5F7072
	.4byte 0x65646963
	.4byte 0x74496E70
	.4byte 0x75740000
.endobj lbl_8165DA18

# .data:0x758 | 0x8165DA28 | size: 0x10
.obj lbl_8165DA28, global
	.4byte 0x575F4F6E
	.4byte 0x4F66665F
	.4byte 0x41726561
	.4byte 0x00000000
.endobj lbl_8165DA28

# .data:0x768 | 0x8165DA38 | size: 0x10
.obj lbl_8165DA38, global
	.4byte 0x4E5F7072
	.4byte 0x64635F54
	.4byte 0x65787473
	.4byte 0x00000000
.endobj lbl_8165DA38

# .data:0x778 | 0x8165DA48 | size: 0x1C
.obj jumptable_8165DA48, local
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B264
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B288
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B2F0
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B2CC
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B334
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B378
	.rel onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142B398
.endobj jumptable_8165DA48

# .data:0x794 | 0x8165DA64 | size: 0x10
.obj lbl_8165DA64, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30310000
.endobj lbl_8165DA64

# .data:0x7A4 | 0x8165DA74 | size: 0x10
.obj lbl_8165DA74, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30320000
.endobj lbl_8165DA74

# .data:0x7B4 | 0x8165DA84 | size: 0x10
.obj lbl_8165DA84, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30330000
.endobj lbl_8165DA84

# .data:0x7C4 | 0x8165DA94 | size: 0x10
.obj lbl_8165DA94, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30340000
.endobj lbl_8165DA94

# .data:0x7D4 | 0x8165DAA4 | size: 0x10
.obj lbl_8165DAA4, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30350000
.endobj lbl_8165DAA4

# .data:0x7E4 | 0x8165DAB4 | size: 0x10
.obj lbl_8165DAB4, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30360000
.endobj lbl_8165DAB4

# .data:0x7F4 | 0x8165DAC4 | size: 0x10
.obj lbl_8165DAC4, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30370000
.endobj lbl_8165DAC4

# .data:0x804 | 0x8165DAD4 | size: 0x10
.obj lbl_8165DAD4, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30380000
.endobj lbl_8165DAD4

# .data:0x814 | 0x8165DAE4 | size: 0x10
.obj lbl_8165DAE4, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30390000
.endobj lbl_8165DAE4

# .data:0x824 | 0x8165DAF4 | size: 0x10
.obj lbl_8165DAF4, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31300000
.endobj lbl_8165DAF4

# .data:0x834 | 0x8165DB04 | size: 0x10
.obj lbl_8165DB04, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31310000
.endobj lbl_8165DB04

# .data:0x844 | 0x8165DB14 | size: 0x10
.obj lbl_8165DB14, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31320000
.endobj lbl_8165DB14

# .data:0x854 | 0x8165DB24 | size: 0x10
.obj lbl_8165DB24, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31330000
.endobj lbl_8165DB24

# .data:0x864 | 0x8165DB34 | size: 0x10
.obj lbl_8165DB34, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31340000
.endobj lbl_8165DB34

# .data:0x874 | 0x8165DB44 | size: 0x10
.obj lbl_8165DB44, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31350000
.endobj lbl_8165DB44

# .data:0x884 | 0x8165DB54 | size: 0x10
.obj lbl_8165DB54, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31360000
.endobj lbl_8165DB54

# .data:0x894 | 0x8165DB64 | size: 0x10
.obj lbl_8165DB64, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31370000
.endobj lbl_8165DB64

# .data:0x8A4 | 0x8165DB74 | size: 0x10
.obj lbl_8165DB74, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31380000
.endobj lbl_8165DB74

# .data:0x8B4 | 0x8165DB84 | size: 0x10
.obj lbl_8165DB84, global
	.4byte 0x545F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31390000
.endobj lbl_8165DB84

# .data:0x8C4 | 0x8165DB94 | size: 0x10
.obj lbl_8165DB94, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30300000
.endobj lbl_8165DB94

# .data:0x8D4 | 0x8165DBA4 | size: 0x10
.obj lbl_8165DBA4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30310000
.endobj lbl_8165DBA4

# .data:0x8E4 | 0x8165DBB4 | size: 0x10
.obj lbl_8165DBB4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30320000
.endobj lbl_8165DBB4

# .data:0x8F4 | 0x8165DBC4 | size: 0x10
.obj lbl_8165DBC4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30330000
.endobj lbl_8165DBC4

# .data:0x904 | 0x8165DBD4 | size: 0x10
.obj lbl_8165DBD4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30340000
.endobj lbl_8165DBD4

# .data:0x914 | 0x8165DBE4 | size: 0x10
.obj lbl_8165DBE4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30350000
.endobj lbl_8165DBE4

# .data:0x924 | 0x8165DBF4 | size: 0x10
.obj lbl_8165DBF4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30360000
.endobj lbl_8165DBF4

# .data:0x934 | 0x8165DC04 | size: 0x10
.obj lbl_8165DC04, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30370000
.endobj lbl_8165DC04

# .data:0x944 | 0x8165DC14 | size: 0x10
.obj lbl_8165DC14, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30380000
.endobj lbl_8165DC14

# .data:0x954 | 0x8165DC24 | size: 0x10
.obj lbl_8165DC24, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x30390000
.endobj lbl_8165DC24

# .data:0x964 | 0x8165DC34 | size: 0x10
.obj lbl_8165DC34, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31300000
.endobj lbl_8165DC34

# .data:0x974 | 0x8165DC44 | size: 0x10
.obj lbl_8165DC44, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31310000
.endobj lbl_8165DC44

# .data:0x984 | 0x8165DC54 | size: 0x10
.obj lbl_8165DC54, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31320000
.endobj lbl_8165DC54

# .data:0x994 | 0x8165DC64 | size: 0x10
.obj lbl_8165DC64, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31330000
.endobj lbl_8165DC64

# .data:0x9A4 | 0x8165DC74 | size: 0x10
.obj lbl_8165DC74, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31340000
.endobj lbl_8165DC74

# .data:0x9B4 | 0x8165DC84 | size: 0x10
.obj lbl_8165DC84, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31350000
.endobj lbl_8165DC84

# .data:0x9C4 | 0x8165DC94 | size: 0x10
.obj lbl_8165DC94, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31360000
.endobj lbl_8165DC94

# .data:0x9D4 | 0x8165DCA4 | size: 0x10
.obj lbl_8165DCA4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31370000
.endobj lbl_8165DCA4

# .data:0x9E4 | 0x8165DCB4 | size: 0x10
.obj lbl_8165DCB4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31380000
.endobj lbl_8165DCB4

# .data:0x9F4 | 0x8165DCC4 | size: 0x10
.obj lbl_8165DCC4, global
	.4byte 0x425F7072
	.4byte 0x64635F54
	.4byte 0x6578745F
	.4byte 0x31390000
.endobj lbl_8165DCC4

# .data:0xA04 | 0x8165DCD4 | size: 0x10
.obj lbl_8165DCD4, global
	.4byte 0x4E5F7072
	.4byte 0x64635465
	.4byte 0x78744172
	.4byte 0x65610000
.endobj lbl_8165DCD4

# .data:0xA14 | 0x8165DCE4 | size: 0x2C
# textinput::candidatebox::PredictWindow::__vtable
.obj __vt__Q39textinput12candidatebox13PredictWindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput12candidatebox20CandidateTextAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput12candidatebox13PredictWindowFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput12candidatebox20CandidateTextAnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput12candidatebox13PredictWindowFv
	.4byte getState__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
	.4byte getKeyType__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
.endobj __vt__Q39textinput12candidatebox13PredictWindow

# .data:0xA40 | 0x8165DD10 | size: 0x2C
# textinput::candidatebox::OnOffAnmPane::__vtable
.obj __vt__Q39textinput12candidatebox12OnOffAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput12candidatebox20CandidateTextAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput12candidatebox12OnOffAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput12candidatebox20CandidateTextAnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput12candidatebox12OnOffAnmPaneFv
	.4byte getState__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
	.4byte getKeyType__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
.endobj __vt__Q39textinput12candidatebox12OnOffAnmPane

# .data:0xA6C | 0x8165DD3C | size: 0x2C
# textinput::candidatebox::CandidateScrollAnmPane::__vtable
.obj __vt__Q39textinput12candidatebox22CandidateScrollAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput12candidatebox20CandidateTextAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput12candidatebox22CandidateScrollAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput12candidatebox20CandidateTextAnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput12candidatebox22CandidateScrollAnmPaneFv
	.4byte getState__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
	.4byte getKeyType__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
.endobj __vt__Q39textinput12candidatebox22CandidateScrollAnmPane

# .data:0xA98 | 0x8165DD68 | size: 0x30
# textinput::candidatebox::CandidateTextAnmPane::__vtable
.obj __vt__Q39textinput12candidatebox20CandidateTextAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput12candidatebox20CandidateTextAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput12candidatebox20CandidateTextAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput12candidatebox20CandidateTextAnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput12candidatebox20CandidateTextAnmPaneFv
	.4byte getState__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
	.4byte getKeyType__Q39textinput12candidatebox20CandidateTextAnmPaneCFv
	.4byte 0x00000000
.endobj __vt__Q39textinput12candidatebox20CandidateTextAnmPane

# .data:0xAC8 | 0x8165DD98 | size: 0x130
# textinput::candidatebox::LayoutByNW4R::__vtable
.obj __vt__Q39textinput12candidatebox12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte create__Q39textinput12candidatebox12LayoutByNW4RFP12MEMAllocator
	.4byte init__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte setCommandReceiver__Q39textinput12candidatebox4BaseFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q39textinput12candidatebox4BaseFUlPv
	.4byte resetCandidate__Q39textinput12candidatebox4BaseFv
	.4byte addCandidate__Q39textinput12candidatebox4BaseFPCw
	.4byte updateCandidate__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte draw__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte turnOn__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte turnOff__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte makeEmpty__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte isOn__Q39textinput12candidatebox4BaseCFv
	.4byte onClose__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte setOnOff__Q39textinput12candidatebox12LayoutByNW4RFb
	.4byte setInvalid__Q39textinput12candidatebox12LayoutByNW4RFb
	.4byte isInvalid__Q39textinput12candidatebox4BaseCFv
	.4byte setLanguage__Q39textinput12candidatebox12LayoutByNW4RFQ29textinput8Language
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@36@__dt__Q39textinput12candidatebox12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@36@init__Q39textinput12candidatebox12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@36@draw__Q39textinput12candidatebox12LayoutByNW4RFv"
	.4byte "@36@calc__Q39textinput12candidatebox12LayoutByNW4RFv"
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte "@36@setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv"
	.4byte "@36@setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv"
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
	.4byte "@204@onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv"
	.4byte calc__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte onRightScroll__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte onLeftScroll__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte onRightPageScroll__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte onLeftPageScroll__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte onOnOffButton__Q39textinput12candidatebox12LayoutByNW4RFb
	.4byte changeSelectEmpty__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte changeSelectEmpty_compatible__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte changeSelect__Q39textinput12candidatebox12LayoutByNW4RFl
	.4byte updateDisplay__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte getScroll__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte isInScroll__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte setActive__Q39textinput12candidatebox12LayoutByNW4RFb
	.4byte isActive__Q39textinput12candidatebox12LayoutByNW4RCFv
	.4byte setSelectedTextPane__Q39textinput12candidatebox12LayoutByNW4RFi
	.4byte setFocusedTextPane__Q39textinput12candidatebox12LayoutByNW4RFi
	.4byte getFocusedTextPane__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte SetScreenSize__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte setRootPaneScaleFor16x9__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte setRootPaneScaleFor4x3__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte cancelStateFocusIn__Q39textinput12candidatebox12LayoutByNW4RFv
	.4byte onEvent__Q39textinput12candidatebox12LayoutByNW4RFPQ39textinput12candidatebox5UIObjUlPv
.endobj __vt__Q39textinput12candidatebox12LayoutByNW4R

# .data:0xBF8 | 0x8165DEC8 | size: 0x2C
# textinput::candidatebox::UITextWindow::__vtable
.obj __vt__Q39textinput12candidatebox12UITextWindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox12UITextWindowFv
	.4byte onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"
	.4byte onChangeAnmState__Q39textinput12candidatebox12UITextWindowFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
.endobj __vt__Q39textinput12candidatebox12UITextWindow

# .data:0xC24 | 0x8165DEF4 | size: 0x2C
# textinput::candidatebox::UIOnOffButton::__vtable
.obj __vt__Q39textinput12candidatebox13UIOnOffButton, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox13UIOnOffButtonFv
	.4byte onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q39textinput12candidatebox13UIOnOffButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim"
	.4byte onChangeAnmState__Q39textinput12candidatebox13UIOnOffButtonFQ49textinput11nw4rmanager11AnmObserver8AnmEventPQ39textinput11nw4rmanager7AnmPanePQ39textinput11nw4rmanager4Anim
.endobj __vt__Q39textinput12candidatebox13UIOnOffButton

# .data:0xC50 | 0x8165DF20 | size: 0x1C
# textinput::candidatebox::UIButton::__vtable
.obj __vt__Q39textinput12candidatebox8UIButton, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox8UIButtonFv
	.4byte onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q39textinput12candidatebox8UIButtonFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
.endobj __vt__Q39textinput12candidatebox8UIButton

# .data:0xC6C | 0x8165DF3C | size: 0x2C
# textinput::candidatebox::UITextArea::__vtable
.obj __vt__Q39textinput12candidatebox10UITextArea, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox10UITextAreaFv
	.4byte onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q39textinput12candidatebox10UITextAreaFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv"
	.4byte onAnmEvent__Q39textinput12candidatebox10UITextAreaFQ49textinput4util12AnimObserver8AnmEventPv
.endobj __vt__Q39textinput12candidatebox10UITextArea

# .data:0xC98 | 0x8165DF68 | size: 0x20
# textinput::candidatebox::UIObj::__vtable
.obj __vt__Q39textinput12candidatebox5UIObj, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox5UIObjFv
	.4byte onEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onGUIEvent__Q39textinput12candidatebox5UIObjFRQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte 0x00000000
.endobj __vt__Q39textinput12candidatebox5UIObj

# .data:0xCB8 | 0x8165DF88 | size: 0x20
# textinput::candidatebox::EventHandler::__vtable
.obj __vt__Q39textinput12candidatebox12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q39textinput12candidatebox12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q39textinput12candidatebox12EventHandler

# .data:0xCD8 | 0x8165DFA8 | size: 0x54
# textinput::candidatebox::Base::__vtable
.obj __vt__Q39textinput12candidatebox4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput12candidatebox4BaseFv
	.4byte create__Q39textinput12candidatebox4BaseFP12MEMAllocator
	.4byte init__Q39textinput12candidatebox4BaseFv
	.4byte setCommandReceiver__Q39textinput12candidatebox4BaseFPQ29textinput15CommandReceiver
	.4byte sendCommand__Q29textinput13CommandSenderFUlPv
	.4byte updateFromReceiver__Q39textinput12candidatebox4BaseFUlPv
	.4byte resetCandidate__Q39textinput12candidatebox4BaseFv
	.4byte addCandidate__Q39textinput12candidatebox4BaseFPCw
	.4byte updateCandidate__Q39textinput12candidatebox4BaseFv
	.4byte draw__Q39textinput12candidatebox4BaseFv
	.4byte turnOn__Q39textinput12candidatebox4BaseFv
	.4byte turnOff__Q39textinput12candidatebox4BaseFv
	.4byte makeEmpty__Q39textinput12candidatebox4BaseFv
	.4byte isOn__Q39textinput12candidatebox4BaseCFv
	.4byte onClose__Q39textinput12candidatebox4BaseFv
	.4byte setOnOff__Q39textinput12candidatebox4BaseFb
	.4byte setInvalid__Q39textinput12candidatebox4BaseFb
	.4byte isInvalid__Q39textinput12candidatebox4BaseCFv
	.4byte setLanguage__Q39textinput12candidatebox4BaseFQ29textinput8Language
.endobj __vt__Q39textinput12candidatebox4Base

# .data:0xD2C | 0x8165DFFC | size: 0x1C
# textinput::candidatebox::CandidateBoxCaller::__vtable
.obj __vt__Q39textinput12candidatebox18CandidateBoxCaller, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw
	.4byte setCandidateBox__Q39textinput12candidatebox18CandidateBoxCallerFPQ39textinput12candidatebox4Base
	.4byte updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
.endobj __vt__Q39textinput12candidatebox18CandidateBoxCaller

# .data:0xD48 | 0x8165E018 | size: 0x4C
# textinput::nw4rmanager::AnmObserver::__vtable
.obj __vt__Q39textinput11nw4rmanager11AnmObserver, global
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
.endobj __vt__Q39textinput11nw4rmanager11AnmObserver

# .data:0xD94 | 0x8165E064 | size: 0xC
# textinput::util::AnimObserver::__vtable
.obj __vt__Q39textinput4util12AnimObserver, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q39textinput4util12AnimObserver

# 0x81694D90..0x81694DE0 | size: 0x50
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694D90 | size: 0x4
.obj lbl_81694D90, global
	.float 0
.endobj lbl_81694D90

# .sdata2:0x4 | 0x81694D94 | size: 0x4
.obj lbl_81694D94, global
	.float 242
.endobj lbl_81694D94

# .sdata2:0x8 | 0x81694D98 | size: 0x4
.obj lbl_81694D98, global
	.float 202
.endobj lbl_81694D98

# .sdata2:0xC | 0x81694D9C | size: 0x4
.obj lbl_81694D9C, global
	.float 1.2
.endobj lbl_81694D9C

# .sdata2:0x10 | 0x81694DA0 | size: 0x4
.obj lbl_81694DA0, global
	.float 1.3
.endobj lbl_81694DA0

# .sdata2:0x14 | 0x81694DA4 | size: 0x4
.obj lbl_81694DA4, global
	.float 1
.endobj lbl_81694DA4

# .sdata2:0x18 | 0x81694DA8 | size: 0x4
.obj lbl_81694DA8, global
	.float 608
.endobj lbl_81694DA8

# .sdata2:0x1C | 0x81694DAC | size: 0x4
.obj lbl_81694DAC, global
	.float 10
.endobj lbl_81694DAC

# .sdata2:0x20 | 0x81694DB0 | size: 0x4
.obj lbl_81694DB0, global
	.float 20
.endobj lbl_81694DB0

# .sdata2:0x24 | 0x81694DB4 | size: 0x4
.obj lbl_81694DB4, global
	.float 700
.endobj lbl_81694DB4

# .sdata2:0x28 | 0x81694DB8 | size: 0x4
.obj lbl_81694DB8, global
	.float 640
.endobj lbl_81694DB8

# .sdata2:0x2C | 0x81694DBC | size: 0x4
.obj lbl_81694DBC, global
	.float 0.01
.endobj lbl_81694DBC

# .sdata2:0x30 | 0x81694DC0 | size: 0x4
.obj lbl_81694DC0, global
	.float 0.5
.endobj lbl_81694DC0

# .sdata2:0x34 | 0x81694DC4 | size: 0x4
.obj gap_09_81694DC4_sdata2, global
.hidden gap_09_81694DC4_sdata2
	.4byte 0x00000000
.endobj gap_09_81694DC4_sdata2

# .sdata2:0x38 | 0x81694DC8 | size: 0x8
.obj lbl_81694DC8, global
	.double 4503601774854144
.endobj lbl_81694DC8

# .sdata2:0x40 | 0x81694DD0 | size: 0x8
.obj lbl_81694DD0, global
	.double 4503599627370496
.endobj lbl_81694DD0

# .sdata2:0x48 | 0x81694DD8 | size: 0x8
.obj lbl_81694DD8, global
	.float 15
	.float 0
.endobj lbl_81694DD8

# 0x816973C8..0x816973F8 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816973C8 | size: 0x8
.obj lbl_816973C8, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816973C8

# .sdata:0x8 | 0x816973D0 | size: 0x8
.obj lbl_816973D0, global
	.string "P_OnBtn"
.endobj lbl_816973D0

# .sdata:0x10 | 0x816973D8 | size: 0x8
.obj lbl_816973D8, global
	.string "B_OnBtn"
.endobj lbl_816973D8

# .sdata:0x18 | 0x816973E0 | size: 0x4
.obj lbl_816973E0, global
	.4byte lbl_8165E070
.endobj lbl_816973E0

# .sdata:0x1C | 0x816973E4 | size: 0x4
.obj lbl_816973E4, global
	.4byte lbl_8165E080
.endobj lbl_816973E4

# .sdata:0x20 | 0x816973E8 | size: 0x8
.obj lbl_816973E8, global
	.4byte 0x4E5F5550
	.4byte 0x00000000
.endobj lbl_816973E8

# .sdata:0x28 | 0x816973F0 | size: 0x8
.obj lbl_816973F0, global
	.4byte 0x4E5F444F
	.4byte 0x574E0000
.endobj lbl_816973F0
