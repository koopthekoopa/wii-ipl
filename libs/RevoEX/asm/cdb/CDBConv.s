.include "macros.inc"
.file "CDBConv.c"

# 0x8148615C..0x814873A0 | size: 0x1244
.text
.balign 4

# .text:0x0 | 0x8148615C | size: 0x30
.fn CDBIsMakerCodeStr, global
/* 8148615C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81486160 | 7C 08 02 A6 */	mflr r0
/* 81486164 | 38 80 00 03 */	li r4, 0x3
/* 81486168 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148616C | 48 00 A4 A1 */	bl CDBSafeStrLen
/* 81486170 | 38 03 FF FE */	subi r0, r3, 0x2
/* 81486174 | 7C 00 00 34 */	cntlzw r0, r0
/* 81486178 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8148617C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81486180 | 7C 08 03 A6 */	mtlr r0
/* 81486184 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81486188 | 4E 80 00 20 */	blr
.endfn CDBIsMakerCodeStr

# .text:0x30 | 0x8148618C | size: 0x30
.fn CDBIsGameCodeStr, global
/* 8148618C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81486190 | 7C 08 02 A6 */	mflr r0
/* 81486194 | 38 80 00 05 */	li r4, 0x5
/* 81486198 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148619C | 48 00 A4 71 */	bl CDBSafeStrLen
/* 814861A0 | 38 03 FF FC */	subi r0, r3, 0x4
/* 814861A4 | 7C 00 00 34 */	cntlzw r0, r0
/* 814861A8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814861AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814861B0 | 7C 08 03 A6 */	mtlr r0
/* 814861B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814861B8 | 4E 80 00 20 */	blr
.endfn CDBIsGameCodeStr

# .text:0x60 | 0x814861BC | size: 0x74
.fn CDBCompareTypeStr, global
/* 814861BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814861C0 | 7C 08 02 A6 */	mflr r0
/* 814861C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814861C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814861CC | 7C 9F 23 78 */	mr r31, r4
/* 814861D0 | 38 80 00 06 */	li r4, 0x6
/* 814861D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814861D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814861DC | 48 00 A4 31 */	bl CDBSafeStrLen
/* 814861E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814861E4 | 40 80 00 0C */	bge .L_814861F0
/* 814861E8 | 38 60 FF FF */	li r3, -0x1
/* 814861EC | 48 00 00 2C */	b .L_81486218
.L_814861F0:
/* 814861F0 | 7F E3 FB 78 */	mr r3, r31
/* 814861F4 | 38 80 00 06 */	li r4, 0x6
/* 814861F8 | 48 00 A4 15 */	bl CDBSafeStrLen
/* 814861FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486200 | 40 80 00 0C */	bge .L_8148620C
/* 81486204 | 38 60 00 01 */	li r3, 0x1
/* 81486208 | 48 00 00 10 */	b .L_81486218
.L_8148620C:
/* 8148620C | 7F C3 F3 78 */	mr r3, r30
/* 81486210 | 7F E4 FB 78 */	mr r4, r31
/* 81486214 | 48 18 28 E9 */	bl strcmpi
.L_81486218:
/* 81486218 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148621C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81486220 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81486224 | 7C 08 03 A6 */	mtlr r0
/* 81486228 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148622C | 4E 80 00 20 */	blr
.endfn CDBCompareTypeStr

# .text:0xD4 | 0x81486230 | size: 0xB8
.fn CDBClampCDBDate, global
/* 81486230 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81486234 | 7C 08 02 A6 */	mflr r0
/* 81486238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148623C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81486240 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81486244 | 7C 7F 1B 78 */	mr r31, r3
/* 81486248 | 41 82 00 8C */	beq .L_814862D4
/* 8148624C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81486250 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81486254 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81486258 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 8148625C | 38 E1 00 10 */	addi r7, r1, 0x10
/* 81486260 | 39 01 00 0C */	addi r8, r1, 0xc
/* 81486264 | 39 21 00 08 */	addi r9, r1, 0x8
/* 81486268 | 48 00 10 65 */	bl CDBConvertCDBDateToCalendarTime
/* 8148626C | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81486270 | 2C 00 07 F3 */	cmpwi r0, 0x7f3
/* 81486274 | 40 81 00 60 */	ble .L_814862D4
/* 81486278 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8148627C | 38 00 00 00 */	li r0, 0x0
/* 81486280 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81486284 | 38 60 07 F3 */	li r3, 0x7f3
/* 81486288 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8148628C | 39 00 00 0B */	li r8, 0xb
/* 81486290 | 38 E0 00 1F */	li r7, 0x1f
/* 81486294 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 81486298 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8148629C | 91 01 00 30 */	stw r8, 0x30(r1)
/* 814862A0 | 90 E1 00 2C */	stw r7, 0x2c(r1)
/* 814862A4 | 90 C1 00 28 */	stw r6, 0x28(r1)
/* 814862A8 | 90 A1 00 24 */	stw r5, 0x24(r1)
/* 814862AC | 90 81 00 20 */	stw r4, 0x20(r1)
/* 814862B0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814862B4 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 814862B8 | 48 0A FE 75 */	bl OSCalendarTimeToTicks
/* 814862BC | 3C C0 80 00 */	lis r6, 0x8000
/* 814862C0 | 38 A0 00 00 */	li r5, 0x0
/* 814862C4 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 814862C8 | 54 06 F0 BE */	srwi r6, r0, 2
/* 814862CC | 48 17 33 45 */	bl __div2i
/* 814862D0 | 90 9F 00 00 */	stw r4, 0x0(r31)
.L_814862D4:
/* 814862D4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814862D8 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 814862DC | 7C 08 03 A6 */	mtlr r0
/* 814862E0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814862E4 | 4E 80 00 20 */	blr
.endfn CDBClampCDBDate

# .text:0x18C | 0x814862E8 | size: 0x60
.fn CDBMakeCDBDate, global
/* 814862E8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814862EC | 7C 08 02 A6 */	mflr r0
/* 814862F0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814862F4 | 38 00 00 00 */	li r0, 0x0
/* 814862F8 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 814862FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486300 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 81486304 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81486308 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 8148630C | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 81486310 | 91 01 00 08 */	stw r8, 0x8(r1)
/* 81486314 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81486318 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8148631C | 48 0A FE 11 */	bl OSCalendarTimeToTicks
/* 81486320 | 3C C0 80 00 */	lis r6, 0x8000
/* 81486324 | 38 A0 00 00 */	li r5, 0x0
/* 81486328 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 8148632C | 54 06 F0 BE */	srwi r6, r0, 2
/* 81486330 | 48 17 32 E1 */	bl __div2i
/* 81486334 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486338 | 7C 83 23 78 */	mr r3, r4
/* 8148633C | 7C 08 03 A6 */	mtlr r0
/* 81486340 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81486344 | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDate

# .text:0x1EC | 0x81486348 | size: 0x60
.fn CDBMakeCDBDateDayBegin, global
/* 81486348 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8148634C | 7C 08 02 A6 */	mflr r0
/* 81486350 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81486354 | 38 00 00 00 */	li r0, 0x0
/* 81486358 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8148635C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486360 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 81486364 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81486368 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8148636C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81486370 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81486374 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81486378 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8148637C | 48 0A FD B1 */	bl OSCalendarTimeToTicks
/* 81486380 | 3C C0 80 00 */	lis r6, 0x8000
/* 81486384 | 38 A0 00 00 */	li r5, 0x0
/* 81486388 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 8148638C | 54 06 F0 BE */	srwi r6, r0, 2
/* 81486390 | 48 17 32 81 */	bl __div2i
/* 81486394 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486398 | 7C 83 23 78 */	mr r3, r4
/* 8148639C | 7C 08 03 A6 */	mtlr r0
/* 814863A0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814863A4 | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDateDayBegin

# .text:0x24C | 0x814863A8 | size: 0x68
.fn CDBMakeCDBDateDayEnd, global
/* 814863A8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814863AC | 7C 08 02 A6 */	mflr r0
/* 814863B0 | 38 C0 00 3B */	li r6, 0x3b
/* 814863B4 | 38 E0 00 17 */	li r7, 0x17
/* 814863B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814863BC | 38 00 00 00 */	li r0, 0x0
/* 814863C0 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 814863C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814863C8 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 814863CC | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 814863D0 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 814863D4 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 814863D8 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 814863DC | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 814863E0 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 814863E4 | 48 0A FD 49 */	bl OSCalendarTimeToTicks
/* 814863E8 | 3C C0 80 00 */	lis r6, 0x8000
/* 814863EC | 38 A0 00 00 */	li r5, 0x0
/* 814863F0 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 814863F4 | 54 06 F0 BE */	srwi r6, r0, 2
/* 814863F8 | 48 17 32 19 */	bl __div2i
/* 814863FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486400 | 7C 83 23 78 */	mr r3, r4
/* 81486404 | 7C 08 03 A6 */	mtlr r0
/* 81486408 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8148640C | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDateDayEnd

# .text:0x2B4 | 0x81486410 | size: 0x64
.fn CDBMakeCDBDateMonthBegin, global
/* 81486410 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81486414 | 7C 08 02 A6 */	mflr r0
/* 81486418 | 38 A0 00 01 */	li r5, 0x1
/* 8148641C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81486420 | 38 00 00 00 */	li r0, 0x0
/* 81486424 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81486428 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148642C | 90 81 00 18 */	stw r4, 0x18(r1)
/* 81486430 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81486434 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81486438 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8148643C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81486440 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81486444 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81486448 | 48 0A FC E5 */	bl OSCalendarTimeToTicks
/* 8148644C | 3C C0 80 00 */	lis r6, 0x8000
/* 81486450 | 38 A0 00 00 */	li r5, 0x0
/* 81486454 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81486458 | 54 06 F0 BE */	srwi r6, r0, 2
/* 8148645C | 48 17 31 B5 */	bl __div2i
/* 81486460 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486464 | 7C 83 23 78 */	mr r3, r4
/* 81486468 | 7C 08 03 A6 */	mtlr r0
/* 8148646C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81486470 | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDateMonthBegin

# .text:0x318 | 0x81486474 | size: 0x108
.fn CDBMakeCDBDateMonthEnd, global
/* 81486474 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81486478 | 7C 08 02 A6 */	mflr r0
/* 8148647C | 28 04 00 0B */	cmplwi r4, 0xb
/* 81486480 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81486484 | 41 81 00 2C */	bgt .L_814864B0
/* 81486488 | 3C A0 81 67 */	lis r5, jumptable_8166B478@ha
/* 8148648C | 54 80 10 3A */	slwi r0, r4, 2
/* 81486490 | 38 A5 B4 78 */	addi r5, r5, jumptable_8166B478@l
/* 81486494 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 81486498 | 7C A9 03 A6 */	mtctr r5
/* 8148649C | 4E 80 04 20 */	bctr
.L_814864A0:
/* 814864A0 | 38 E0 00 1C */	li r7, 0x1c
/* 814864A4 | 48 00 00 10 */	b .L_814864B4
.L_814864A8:
/* 814864A8 | 38 E0 00 1F */	li r7, 0x1f
/* 814864AC | 48 00 00 08 */	b .L_814864B4
.L_814864B0:
/* 814864B0 | 38 E0 00 1E */	li r7, 0x1e
.L_814864B4:
/* 814864B4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814864B8 | 40 82 00 68 */	bne .L_81486520
/* 814864BC | 54 60 F0 02 */	slwi r0, r3, 30
/* 814864C0 | 54 65 0F FE */	srwi r5, r3, 31
/* 814864C4 | 7C 05 00 50 */	subf r0, r5, r0
/* 814864C8 | 54 00 10 3E */	rotlwi r0, r0, 2
/* 814864CC | 7C 00 2A 15 */	add. r0, r0, r5
/* 814864D0 | 40 82 00 28 */	bne .L_814864F8
/* 814864D4 | 3C A0 51 EC */	lis r5, 0x51ec
/* 814864D8 | 38 05 85 1F */	subi r0, r5, 0x7ae1
/* 814864DC | 7C 00 18 96 */	mulhw r0, r0, r3
/* 814864E0 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 814864E4 | 54 05 0F FE */	srwi r5, r0, 31
/* 814864E8 | 7C 00 2A 14 */	add r0, r0, r5
/* 814864EC | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 814864F0 | 7C 00 18 51 */	subf. r0, r0, r3
/* 814864F4 | 40 82 00 28 */	bne .L_8148651C
.L_814864F8:
/* 814864F8 | 3C A0 51 EC */	lis r5, 0x51ec
/* 814864FC | 38 05 85 1F */	subi r0, r5, 0x7ae1
/* 81486500 | 7C 00 18 96 */	mulhw r0, r0, r3
/* 81486504 | 7C 00 3E 70 */	srawi r0, r0, 7
/* 81486508 | 54 05 0F FE */	srwi r5, r0, 31
/* 8148650C | 7C 00 2A 14 */	add r0, r0, r5
/* 81486510 | 1C 00 01 90 */	mulli r0, r0, 0x190
/* 81486514 | 7C 00 18 51 */	subf. r0, r0, r3
/* 81486518 | 40 82 00 08 */	bne .L_81486520
.L_8148651C:
/* 8148651C | 38 E0 00 1D */	li r7, 0x1d
.L_81486520:
/* 81486520 | 38 A0 00 3B */	li r5, 0x3b
/* 81486524 | 38 00 00 00 */	li r0, 0x0
/* 81486528 | 38 C0 00 17 */	li r6, 0x17
/* 8148652C | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81486530 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486534 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 81486538 | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 8148653C | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 81486540 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 81486544 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81486548 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8148654C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81486550 | 48 0A FB DD */	bl OSCalendarTimeToTicks
/* 81486554 | 3C C0 80 00 */	lis r6, 0x8000
/* 81486558 | 38 A0 00 00 */	li r5, 0x0
/* 8148655C | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81486560 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81486564 | 48 17 30 AD */	bl __div2i
/* 81486568 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8148656C | 7C 83 23 78 */	mr r3, r4
/* 81486570 | 7C 08 03 A6 */	mtlr r0
/* 81486574 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81486578 | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDateMonthEnd

# .text:0x420 | 0x8148657C | size: 0x64
.fn CDBMakeCDBDateYearBegin, global
/* 8148657C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81486580 | 7C 08 02 A6 */	mflr r0
/* 81486584 | 38 80 00 00 */	li r4, 0x0
/* 81486588 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8148658C | 38 00 00 01 */	li r0, 0x1
/* 81486590 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81486594 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486598 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 8148659C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814865A0 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 814865A4 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814865A8 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814865AC | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 814865B0 | 90 81 00 28 */	stw r4, 0x28(r1)
/* 814865B4 | 48 0A FB 79 */	bl OSCalendarTimeToTicks
/* 814865B8 | 3C C0 80 00 */	lis r6, 0x8000
/* 814865BC | 38 A0 00 00 */	li r5, 0x0
/* 814865C0 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 814865C4 | 54 06 F0 BE */	srwi r6, r0, 2
/* 814865C8 | 48 17 30 49 */	bl __div2i
/* 814865CC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814865D0 | 7C 83 23 78 */	mr r3, r4
/* 814865D4 | 7C 08 03 A6 */	mtlr r0
/* 814865D8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814865DC | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDateYearBegin

# .text:0x484 | 0x814865E0 | size: 0x70
.fn CDBMakeCDBDateYearEnd, global
/* 814865E0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814865E4 | 7C 08 02 A6 */	mflr r0
/* 814865E8 | 38 80 00 3B */	li r4, 0x3b
/* 814865EC | 38 E0 00 0B */	li r7, 0xb
/* 814865F0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814865F4 | 38 00 00 00 */	li r0, 0x0
/* 814865F8 | 38 C0 00 1F */	li r6, 0x1f
/* 814865FC | 38 A0 00 17 */	li r5, 0x17
/* 81486600 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81486604 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486608 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 8148660C | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 81486610 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 81486614 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81486618 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8148661C | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81486620 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81486624 | 48 0A FB 09 */	bl OSCalendarTimeToTicks
/* 81486628 | 3C C0 80 00 */	lis r6, 0x8000
/* 8148662C | 38 A0 00 00 */	li r5, 0x0
/* 81486630 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81486634 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81486638 | 48 17 2F D9 */	bl __div2i
/* 8148663C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486640 | 7C 83 23 78 */	mr r3, r4
/* 81486644 | 7C 08 03 A6 */	mtlr r0
/* 81486648 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8148664C | 4E 80 00 20 */	blr
.endfn CDBMakeCDBDateYearEnd

# .text:0x4F4 | 0x81486650 | size: 0x10
.fn CDBConvYearValueToYearStr, global
/* 81486650 | 7C 85 23 78 */	mr r5, r4
/* 81486654 | 38 8D 99 70 */	li r4, lbl_816979B0@sda21
/* 81486658 | 4C C6 31 82 */	crclr cr1eq
/* 8148665C | 48 17 A4 24 */	b sprintf
.endfn CDBConvYearValueToYearStr

# .text:0x504 | 0x81486660 | size: 0x10
.fn CDBConvMonthValueToMonthStr, global
/* 81486660 | 7C 85 23 78 */	mr r5, r4
/* 81486664 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486668 | 4C C6 31 82 */	crclr cr1eq
/* 8148666C | 48 17 A4 14 */	b sprintf
.endfn CDBConvMonthValueToMonthStr

# .text:0x514 | 0x81486670 | size: 0x10
.fn CDBConvDayValueToDayStr, global
/* 81486670 | 7C 85 23 78 */	mr r5, r4
/* 81486674 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486678 | 4C C6 31 82 */	crclr cr1eq
/* 8148667C | 48 17 A4 04 */	b sprintf
.endfn CDBConvDayValueToDayStr

# .text:0x524 | 0x81486680 | size: 0x10
.fn CDBConvHourValueToHourStr, global
/* 81486680 | 7C 85 23 78 */	mr r5, r4
/* 81486684 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486688 | 4C C6 31 82 */	crclr cr1eq
/* 8148668C | 48 17 A3 F4 */	b sprintf
.endfn CDBConvHourValueToHourStr

# .text:0x534 | 0x81486690 | size: 0x10
.fn CDBConvMinuteValueToMinuteStr, global
/* 81486690 | 7C 85 23 78 */	mr r5, r4
/* 81486694 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486698 | 4C C6 31 82 */	crclr cr1eq
/* 8148669C | 48 17 A3 E4 */	b sprintf
.endfn CDBConvMinuteValueToMinuteStr

# .text:0x544 | 0x814866A0 | size: 0xE4
.fn CDBGenRootPath, global
/* 814866A0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814866A4 | 7C 08 02 A6 */	mflr r0
/* 814866A8 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814866AC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814866B0 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 814866B4 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 814866B8 | 7C BE 2B 78 */	mr r30, r5
/* 814866BC | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 814866C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814866C4 | 40 82 00 10 */	bne .L_814866D4
/* 814866C8 | 38 8D 99 88 */	li r4, lbl_816979C8@sda21
/* 814866CC | 48 17 BC 39 */	bl strcpy
/* 814866D0 | 48 00 00 98 */	b .L_81486768
.L_814866D4:
/* 814866D4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814866D8 | 41 82 00 14 */	beq .L_814866EC
/* 814866DC | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 814866E0 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 814866E4 | 7C 80 1B 79 */	or. r0, r4, r3
/* 814866E8 | 40 82 00 18 */	bne .L_81486700
.L_814866EC:
/* 814866EC | 48 00 99 45 */	bl CDBGetWiiHighId
/* 814866F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814866F4 | 48 00 99 A9 */	bl CDBGetWiiLowId
/* 814866F8 | 7C 7E 1B 78 */	mr r30, r3
/* 814866FC | 48 00 00 1C */	b .L_81486718
.L_81486700:
/* 81486700 | 48 00 99 65 */	bl CDBGetWiiHighIdEx
/* 81486704 | 7C 7F 1B 78 */	mr r31, r3
/* 81486708 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8148670C | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81486710 | 48 00 99 C5 */	bl CDBGetWiiLowIdEx
/* 81486714 | 7C 7E 1B 78 */	mr r30, r3
.L_81486718:
/* 81486718 | 3C 80 81 0D */	lis r4, CDB_SD_ROOT_PATH_LS@ha
/* 8148671C | 7F A3 EB 78 */	mr r3, r29
/* 81486720 | 38 84 8A 08 */	addi r4, r4, CDB_SD_ROOT_PATH_LS@l
/* 81486724 | 48 17 BB E1 */	bl strcpy
/* 81486728 | 7F E5 FB 78 */	mr r5, r31
/* 8148672C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81486730 | 38 8D 99 80 */	li r4, lbl_816979C0@sda21
/* 81486734 | 4C C6 31 82 */	crclr cr1eq
/* 81486738 | 48 17 A3 49 */	bl sprintf
/* 8148673C | 7F C5 F3 78 */	mr r5, r30
/* 81486740 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486744 | 38 8D 99 80 */	li r4, lbl_816979C0@sda21
/* 81486748 | 4C C6 31 82 */	crclr cr1eq
/* 8148674C | 48 17 A3 35 */	bl sprintf
/* 81486750 | 7F A3 EB 78 */	mr r3, r29
/* 81486754 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81486758 | 48 00 3B C1 */	bl CDBFSConcatenatePath
/* 8148675C | 7F A3 EB 78 */	mr r3, r29
/* 81486760 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81486764 | 48 00 3B B5 */	bl CDBFSConcatenatePath
.L_81486768:
/* 81486768 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8148676C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81486770 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81486774 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 81486778 | 7C 08 03 A6 */	mtlr r0
/* 8148677C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81486780 | 4E 80 00 20 */	blr
.endfn CDBGenRootPath

# .text:0x628 | 0x81486784 | size: 0x4C
.fn CDBConvYearStrToFullPath, global
/* 81486784 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81486788 | 7C 08 02 A6 */	mflr r0
/* 8148678C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81486790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81486794 | 7C 9F 23 78 */	mr r31, r4
/* 81486798 | 7C A4 2B 78 */	mr r4, r5
/* 8148679C | 7C C5 33 78 */	mr r5, r6
/* 814867A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814867A4 | 7C 7E 1B 78 */	mr r30, r3
/* 814867A8 | 4B FF FE F9 */	bl CDBGenRootPath
/* 814867AC | 7F C3 F3 78 */	mr r3, r30
/* 814867B0 | 7F E4 FB 78 */	mr r4, r31
/* 814867B4 | 48 00 3B 65 */	bl CDBFSConcatenatePath
/* 814867B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814867BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814867C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814867C4 | 7C 08 03 A6 */	mtlr r0
/* 814867C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814867CC | 4E 80 00 20 */	blr
.endfn CDBConvYearStrToFullPath

# .text:0x674 | 0x814867D0 | size: 0x64
.fn CDBConvMonthStrToFullPath, global
/* 814867D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814867D4 | 7C 08 02 A6 */	mflr r0
/* 814867D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814867DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814867E0 | 7C BF 2B 78 */	mr r31, r5
/* 814867E4 | 7C E5 3B 78 */	mr r5, r7
/* 814867E8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814867EC | 7C 9E 23 78 */	mr r30, r4
/* 814867F0 | 7C C4 33 78 */	mr r4, r6
/* 814867F4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814867F8 | 7C 7D 1B 78 */	mr r29, r3
/* 814867FC | 4B FF FE A5 */	bl CDBGenRootPath
/* 81486800 | 7F A3 EB 78 */	mr r3, r29
/* 81486804 | 7F C4 F3 78 */	mr r4, r30
/* 81486808 | 48 00 3B 11 */	bl CDBFSConcatenatePath
/* 8148680C | 7F A3 EB 78 */	mr r3, r29
/* 81486810 | 7F E4 FB 78 */	mr r4, r31
/* 81486814 | 48 00 3B 05 */	bl CDBFSConcatenatePath
/* 81486818 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148681C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81486820 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81486824 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81486828 | 7C 08 03 A6 */	mtlr r0
/* 8148682C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81486830 | 4E 80 00 20 */	blr
.endfn CDBConvMonthStrToFullPath

# .text:0x6D8 | 0x81486834 | size: 0x7C
.fn CDBConvDayStrToFullPath, global
/* 81486834 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81486838 | 7C 08 02 A6 */	mflr r0
/* 8148683C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81486840 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81486844 | 7C DF 33 78 */	mr r31, r6
/* 81486848 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148684C | 7C BE 2B 78 */	mr r30, r5
/* 81486850 | 7D 05 43 78 */	mr r5, r8
/* 81486854 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81486858 | 7C 9D 23 78 */	mr r29, r4
/* 8148685C | 7C E4 3B 78 */	mr r4, r7
/* 81486860 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81486864 | 7C 7C 1B 78 */	mr r28, r3
/* 81486868 | 4B FF FE 39 */	bl CDBGenRootPath
/* 8148686C | 7F 83 E3 78 */	mr r3, r28
/* 81486870 | 7F A4 EB 78 */	mr r4, r29
/* 81486874 | 48 00 3A A5 */	bl CDBFSConcatenatePath
/* 81486878 | 7F 83 E3 78 */	mr r3, r28
/* 8148687C | 7F C4 F3 78 */	mr r4, r30
/* 81486880 | 48 00 3A 99 */	bl CDBFSConcatenatePath
/* 81486884 | 7F 83 E3 78 */	mr r3, r28
/* 81486888 | 7F E4 FB 78 */	mr r4, r31
/* 8148688C | 48 00 3A 8D */	bl CDBFSConcatenatePath
/* 81486890 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81486894 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81486898 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148689C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814868A0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814868A4 | 7C 08 03 A6 */	mtlr r0
/* 814868A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814868AC | 4E 80 00 20 */	blr
.endfn CDBConvDayStrToFullPath

# .text:0x754 | 0x814868B0 | size: 0x7C
.fn CDBConvHourStrToFullPath, global
/* 814868B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814868B4 | 7C 08 02 A6 */	mflr r0
/* 814868B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814868BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814868C0 | 48 17 2C 01 */	bl _savegpr_27
/* 814868C4 | 7C 9C 23 78 */	mr r28, r4
/* 814868C8 | 7C BD 2B 78 */	mr r29, r5
/* 814868CC | 7C 7B 1B 78 */	mr r27, r3
/* 814868D0 | 7C DE 33 78 */	mr r30, r6
/* 814868D4 | 7C FF 3B 78 */	mr r31, r7
/* 814868D8 | 7D 04 43 78 */	mr r4, r8
/* 814868DC | 7D 25 4B 78 */	mr r5, r9
/* 814868E0 | 4B FF FD C1 */	bl CDBGenRootPath
/* 814868E4 | 7F 63 DB 78 */	mr r3, r27
/* 814868E8 | 7F 84 E3 78 */	mr r4, r28
/* 814868EC | 48 00 3A 2D */	bl CDBFSConcatenatePath
/* 814868F0 | 7F 63 DB 78 */	mr r3, r27
/* 814868F4 | 7F A4 EB 78 */	mr r4, r29
/* 814868F8 | 48 00 3A 21 */	bl CDBFSConcatenatePath
/* 814868FC | 7F 63 DB 78 */	mr r3, r27
/* 81486900 | 7F C4 F3 78 */	mr r4, r30
/* 81486904 | 48 00 3A 15 */	bl CDBFSConcatenatePath
/* 81486908 | 7F 63 DB 78 */	mr r3, r27
/* 8148690C | 7F E4 FB 78 */	mr r4, r31
/* 81486910 | 48 00 3A 09 */	bl CDBFSConcatenatePath
/* 81486914 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81486918 | 48 17 2B F5 */	bl _restgpr_27
/* 8148691C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81486920 | 7C 08 03 A6 */	mtlr r0
/* 81486924 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81486928 | 4E 80 00 20 */	blr
.endfn CDBConvHourStrToFullPath

# .text:0x7D0 | 0x8148692C | size: 0x8C
.fn CDBConvMinuteStrToFullPath, global
/* 8148692C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81486930 | 7C 08 02 A6 */	mflr r0
/* 81486934 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81486938 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148693C | 48 17 2B 81 */	bl _savegpr_26
/* 81486940 | 7C 9B 23 78 */	mr r27, r4
/* 81486944 | 7C BC 2B 78 */	mr r28, r5
/* 81486948 | 7C 7A 1B 78 */	mr r26, r3
/* 8148694C | 7C DD 33 78 */	mr r29, r6
/* 81486950 | 7C FE 3B 78 */	mr r30, r7
/* 81486954 | 7D 1F 43 78 */	mr r31, r8
/* 81486958 | 7D 24 4B 78 */	mr r4, r9
/* 8148695C | 7D 45 53 78 */	mr r5, r10
/* 81486960 | 4B FF FD 41 */	bl CDBGenRootPath
/* 81486964 | 7F 43 D3 78 */	mr r3, r26
/* 81486968 | 7F 64 DB 78 */	mr r4, r27
/* 8148696C | 48 00 39 AD */	bl CDBFSConcatenatePath
/* 81486970 | 7F 43 D3 78 */	mr r3, r26
/* 81486974 | 7F 84 E3 78 */	mr r4, r28
/* 81486978 | 48 00 39 A1 */	bl CDBFSConcatenatePath
/* 8148697C | 7F 43 D3 78 */	mr r3, r26
/* 81486980 | 7F A4 EB 78 */	mr r4, r29
/* 81486984 | 48 00 39 95 */	bl CDBFSConcatenatePath
/* 81486988 | 7F 43 D3 78 */	mr r3, r26
/* 8148698C | 7F C4 F3 78 */	mr r4, r30
/* 81486990 | 48 00 39 89 */	bl CDBFSConcatenatePath
/* 81486994 | 7F 43 D3 78 */	mr r3, r26
/* 81486998 | 7F E4 FB 78 */	mr r4, r31
/* 8148699C | 48 00 39 7D */	bl CDBFSConcatenatePath
/* 814869A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814869A4 | 48 17 2B 65 */	bl _restgpr_26
/* 814869A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814869AC | 7C 08 03 A6 */	mtlr r0
/* 814869B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814869B4 | 4E 80 00 20 */	blr
.endfn CDBConvMinuteStrToFullPath

# .text:0x85C | 0x814869B8 | size: 0x9C
.fn CDBConvCodeStrToFullPath, global
/* 814869B8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814869BC | 7C 08 02 A6 */	mflr r0
/* 814869C0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814869C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814869C8 | 48 17 2A F1 */	bl _savegpr_25
/* 814869CC | 7C BB 2B 78 */	mr r27, r5
/* 814869D0 | 80 A1 00 38 */	lwz r5, 0x38(r1)
/* 814869D4 | 7C 9A 23 78 */	mr r26, r4
/* 814869D8 | 7C 79 1B 78 */	mr r25, r3
/* 814869DC | 7C DC 33 78 */	mr r28, r6
/* 814869E0 | 7C FD 3B 78 */	mr r29, r7
/* 814869E4 | 7D 1E 43 78 */	mr r30, r8
/* 814869E8 | 7D 3F 4B 78 */	mr r31, r9
/* 814869EC | 7D 44 53 78 */	mr r4, r10
/* 814869F0 | 4B FF FC B1 */	bl CDBGenRootPath
/* 814869F4 | 7F 23 CB 78 */	mr r3, r25
/* 814869F8 | 7F 44 D3 78 */	mr r4, r26
/* 814869FC | 48 00 39 1D */	bl CDBFSConcatenatePath
/* 81486A00 | 7F 23 CB 78 */	mr r3, r25
/* 81486A04 | 7F 64 DB 78 */	mr r4, r27
/* 81486A08 | 48 00 39 11 */	bl CDBFSConcatenatePath
/* 81486A0C | 7F 23 CB 78 */	mr r3, r25
/* 81486A10 | 7F 84 E3 78 */	mr r4, r28
/* 81486A14 | 48 00 39 05 */	bl CDBFSConcatenatePath
/* 81486A18 | 7F 23 CB 78 */	mr r3, r25
/* 81486A1C | 7F A4 EB 78 */	mr r4, r29
/* 81486A20 | 48 00 38 F9 */	bl CDBFSConcatenatePath
/* 81486A24 | 7F 23 CB 78 */	mr r3, r25
/* 81486A28 | 7F C4 F3 78 */	mr r4, r30
/* 81486A2C | 48 00 38 ED */	bl CDBFSConcatenatePath
/* 81486A30 | 7F 23 CB 78 */	mr r3, r25
/* 81486A34 | 7F E4 FB 78 */	mr r4, r31
/* 81486A38 | 48 00 38 E1 */	bl CDBFSConcatenatePath
/* 81486A3C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81486A40 | 48 17 2A C5 */	bl _restgpr_25
/* 81486A44 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486A48 | 7C 08 03 A6 */	mtlr r0
/* 81486A4C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81486A50 | 4E 80 00 20 */	blr
.endfn CDBConvCodeStrToFullPath

# .text:0x8F8 | 0x81486A54 | size: 0xAC
.fn CDBConvTypeStrToFullPath, global
/* 81486A54 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81486A58 | 7C 08 02 A6 */	mflr r0
/* 81486A5C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81486A60 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81486A64 | 48 17 2A 51 */	bl _savegpr_24
/* 81486A68 | 7C 99 23 78 */	mr r25, r4
/* 81486A6C | 7C BA 2B 78 */	mr r26, r5
/* 81486A70 | 80 81 00 38 */	lwz r4, 0x38(r1)
/* 81486A74 | 7C 78 1B 78 */	mr r24, r3
/* 81486A78 | 80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 81486A7C | 7C DB 33 78 */	mr r27, r6
/* 81486A80 | 7C FC 3B 78 */	mr r28, r7
/* 81486A84 | 7D 1D 43 78 */	mr r29, r8
/* 81486A88 | 7D 3E 4B 78 */	mr r30, r9
/* 81486A8C | 7D 5F 53 78 */	mr r31, r10
/* 81486A90 | 4B FF FC 11 */	bl CDBGenRootPath
/* 81486A94 | 7F 03 C3 78 */	mr r3, r24
/* 81486A98 | 7F 24 CB 78 */	mr r4, r25
/* 81486A9C | 48 00 38 7D */	bl CDBFSConcatenatePath
/* 81486AA0 | 7F 03 C3 78 */	mr r3, r24
/* 81486AA4 | 7F 44 D3 78 */	mr r4, r26
/* 81486AA8 | 48 00 38 71 */	bl CDBFSConcatenatePath
/* 81486AAC | 7F 03 C3 78 */	mr r3, r24
/* 81486AB0 | 7F 64 DB 78 */	mr r4, r27
/* 81486AB4 | 48 00 38 65 */	bl CDBFSConcatenatePath
/* 81486AB8 | 7F 03 C3 78 */	mr r3, r24
/* 81486ABC | 7F 84 E3 78 */	mr r4, r28
/* 81486AC0 | 48 00 38 59 */	bl CDBFSConcatenatePath
/* 81486AC4 | 7F 03 C3 78 */	mr r3, r24
/* 81486AC8 | 7F A4 EB 78 */	mr r4, r29
/* 81486ACC | 48 00 38 4D */	bl CDBFSConcatenatePath
/* 81486AD0 | 7F 03 C3 78 */	mr r3, r24
/* 81486AD4 | 7F C4 F3 78 */	mr r4, r30
/* 81486AD8 | 48 00 38 41 */	bl CDBFSConcatenatePath
/* 81486ADC | 7F 03 C3 78 */	mr r3, r24
/* 81486AE0 | 7F E4 FB 78 */	mr r4, r31
/* 81486AE4 | 48 00 38 35 */	bl CDBFSConcatenatePath
/* 81486AE8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81486AEC | 48 17 2A 15 */	bl _restgpr_24
/* 81486AF0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486AF4 | 7C 08 03 A6 */	mtlr r0
/* 81486AF8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81486AFC | 4E 80 00 20 */	blr
.endfn CDBConvTypeStrToFullPath

# .text:0x9A4 | 0x81486B00 | size: 0xB8
.fn CDBConvDirStrToCDBDate, global
/* 81486B00 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81486B04 | 7C 08 02 A6 */	mflr r0
/* 81486B08 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81486B0C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81486B10 | 48 17 29 B1 */	bl _savegpr_27
/* 81486B14 | 7C 7B 1B 78 */	mr r27, r3
/* 81486B18 | 7C 9F 23 78 */	mr r31, r4
/* 81486B1C | 7C BE 2B 78 */	mr r30, r5
/* 81486B20 | 7C DD 33 78 */	mr r29, r6
/* 81486B24 | 7C E3 3B 78 */	mr r3, r7
/* 81486B28 | 48 17 DE 89 */	bl atoi
/* 81486B2C | 7C 7C 1B 78 */	mr r28, r3
/* 81486B30 | 7F A3 EB 78 */	mr r3, r29
/* 81486B34 | 48 17 DE 7D */	bl atoi
/* 81486B38 | 7C 7D 1B 78 */	mr r29, r3
/* 81486B3C | 7F C3 F3 78 */	mr r3, r30
/* 81486B40 | 48 17 DE 71 */	bl atoi
/* 81486B44 | 7C 7E 1B 78 */	mr r30, r3
/* 81486B48 | 7F E3 FB 78 */	mr r3, r31
/* 81486B4C | 48 17 DE 65 */	bl atoi
/* 81486B50 | 7C 7F 1B 78 */	mr r31, r3
/* 81486B54 | 7F 63 DB 78 */	mr r3, r27
/* 81486B58 | 48 17 DE 59 */	bl atoi
/* 81486B5C | 38 00 00 00 */	li r0, 0x0
/* 81486B60 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81486B64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486B68 | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 81486B6C | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 81486B70 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81486B74 | 93 81 00 0C */	stw r28, 0xc(r1)
/* 81486B78 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81486B7C | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81486B80 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81486B84 | 48 0A F5 A9 */	bl OSCalendarTimeToTicks
/* 81486B88 | 3C C0 80 00 */	lis r6, 0x8000
/* 81486B8C | 38 A0 00 00 */	li r5, 0x0
/* 81486B90 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81486B94 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81486B98 | 48 17 2A 79 */	bl __div2i
/* 81486B9C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81486BA0 | 7C 83 23 78 */	mr r3, r4
/* 81486BA4 | 48 17 29 69 */	bl _restgpr_27
/* 81486BA8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81486BAC | 7C 08 03 A6 */	mtlr r0
/* 81486BB0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81486BB4 | 4E 80 00 20 */	blr
.endfn CDBConvDirStrToCDBDate

# .text:0xA5C | 0x81486BB8 | size: 0x2C
.fn CDBConvGCStrToGCValue, global
/* 81486BB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486BBC | 7C 60 1B 78 */	mr r0, r3
/* 81486BC0 | 40 82 00 10 */	bne .L_81486BD0
/* 81486BC4 | 38 00 FF FF */	li r0, -0x1
/* 81486BC8 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81486BCC | 4E 80 00 20 */	blr
.L_81486BD0:
/* 81486BD0 | 7C 83 23 78 */	mr r3, r4
/* 81486BD4 | 7C 04 03 78 */	mr r4, r0
/* 81486BD8 | 38 A0 00 04 */	li r5, 0x4
/* 81486BDC | 4B EA 96 54 */	b memcpy
/* 81486BE0 | 4E 80 00 20 */	blr
.endfn CDBConvGCStrToGCValue

# .text:0xA88 | 0x81486BE4 | size: 0x50
.fn CDBConvGCValueToGCStr, global
/* 81486BE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81486BE8 | 7C 08 02 A6 */	mflr r0
/* 81486BEC | 38 A0 00 04 */	li r5, 0x4
/* 81486BF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81486BF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81486BF8 | 7C 9F 23 78 */	mr r31, r4
/* 81486BFC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81486C00 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81486C04 | 7F E3 FB 78 */	mr r3, r31
/* 81486C08 | 4B EA 96 29 */	bl memcpy
/* 81486C0C | 38 00 00 00 */	li r0, 0x0
/* 81486C10 | 7F E3 FB 78 */	mr r3, r31
/* 81486C14 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 81486C18 | 38 8D 99 90 */	li r4, lbl_816979D0@sda21
/* 81486C1C | 48 17 B8 65 */	bl strcmp
/* 81486C20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81486C24 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81486C28 | 7C 08 03 A6 */	mtlr r0
/* 81486C2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81486C30 | 4E 80 00 20 */	blr
.endfn CDBConvGCValueToGCStr

# .text:0xAD8 | 0x81486C34 | size: 0x4C
.fn CDBConvMCValueToMCStr, global
/* 81486C34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81486C38 | 7C 08 02 A6 */	mflr r0
/* 81486C3C | 38 A0 00 02 */	li r5, 0x2
/* 81486C40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81486C44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81486C48 | 7C 9F 23 78 */	mr r31, r4
/* 81486C4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81486C50 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 81486C54 | 7F E3 FB 78 */	mr r3, r31
/* 81486C58 | 4B EA 95 D9 */	bl memcpy
/* 81486C5C | 38 00 00 00 */	li r0, 0x0
/* 81486C60 | 7F E3 FB 78 */	mr r3, r31
/* 81486C64 | 98 1F 00 02 */	stb r0, 0x2(r31)
/* 81486C68 | 48 00 97 05 */	bl CDBCheckMakerCodeStr
/* 81486C6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81486C70 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81486C74 | 7C 08 03 A6 */	mtlr r0
/* 81486C78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81486C7C | 4E 80 00 20 */	blr
.endfn CDBConvMCValueToMCStr

# .text:0xB24 | 0x81486C80 | size: 0x30
.fn CDBConvMCStrToMCValue, global
/* 81486C80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486C84 | 7C 60 1B 78 */	mr r0, r3
/* 81486C88 | 40 82 00 14 */	bne .L_81486C9C
/* 81486C8C | 3C 60 00 01 */	lis r3, 0x1
/* 81486C90 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81486C94 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 81486C98 | 4E 80 00 20 */	blr
.L_81486C9C:
/* 81486C9C | 7C 83 23 78 */	mr r3, r4
/* 81486CA0 | 7C 04 03 78 */	mr r4, r0
/* 81486CA4 | 38 A0 00 02 */	li r5, 0x2
/* 81486CA8 | 4B EA 95 88 */	b memcpy
/* 81486CAC | 4E 80 00 20 */	blr
.endfn CDBConvMCStrToMCValue

# .text:0xB54 | 0x81486CB0 | size: 0x54
.fn CDBConvKeyStrToEpochValue, global
/* 81486CB0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81486CB4 | 7C 08 02 A6 */	mflr r0
/* 81486CB8 | 38 A0 00 0A */	li r5, 0xa
/* 81486CBC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81486CC0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81486CC4 | 7C 9F 23 78 */	mr r31, r4
/* 81486CC8 | 7C 64 1B 78 */	mr r4, r3
/* 81486CCC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486CD0 | 48 17 B6 F5 */	bl strncpy
/* 81486CD4 | 38 00 00 00 */	li r0, 0x0
/* 81486CD8 | 7F E5 FB 78 */	mr r5, r31
/* 81486CDC | 98 01 00 12 */	stb r0, 0x12(r1)
/* 81486CE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81486CE4 | 38 8D 99 98 */	li r4, lbl_816979D8@sda21
/* 81486CE8 | 4C C6 31 82 */	crclr cr1eq
/* 81486CEC | 48 17 B4 A1 */	bl sscanf
/* 81486CF0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81486CF4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81486CF8 | 7C 08 03 A6 */	mtlr r0
/* 81486CFC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81486D00 | 4E 80 00 20 */	blr
.endfn CDBConvKeyStrToEpochValue

# .text:0xBA8 | 0x81486D04 | size: 0x44
.fn CDBConvKeyStrToEpochStr, global
/* 81486D04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81486D08 | 7C 08 02 A6 */	mflr r0
/* 81486D0C | 38 A0 00 0A */	li r5, 0xa
/* 81486D10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81486D14 | 7C 60 1B 78 */	mr r0, r3
/* 81486D18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81486D1C | 7C 9F 23 78 */	mr r31, r4
/* 81486D20 | 7F E3 FB 78 */	mr r3, r31
/* 81486D24 | 7C 04 03 78 */	mr r4, r0
/* 81486D28 | 48 17 B6 9D */	bl strncpy
/* 81486D2C | 38 00 00 00 */	li r0, 0x0
/* 81486D30 | 98 1F 00 0A */	stb r0, 0xa(r31)
/* 81486D34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81486D38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81486D3C | 7C 08 03 A6 */	mtlr r0
/* 81486D40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81486D44 | 4E 80 00 20 */	blr
.endfn CDBConvKeyStrToEpochStr

# .text:0xBEC | 0x81486D48 | size: 0x10
.fn CDBConvEpochStrToEpochValue, global
/* 81486D48 | 7C 85 23 78 */	mr r5, r4
/* 81486D4C | 38 8D 99 98 */	li r4, lbl_816979D8@sda21
/* 81486D50 | 4C C6 31 82 */	crclr cr1eq
/* 81486D54 | 48 17 B4 38 */	b sscanf
.endfn CDBConvEpochStrToEpochValue

# .text:0xBFC | 0x81486D58 | size: 0xD4
.fn CDBConvEpochValueToDate, global
/* 81486D58 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81486D5C | 7C 08 02 A6 */	mflr r0
/* 81486D60 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81486D64 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81486D68 | 48 17 27 55 */	bl _savegpr_26
/* 81486D6C | 3D 40 80 00 */	lis r10, 0x8000
/* 81486D70 | 39 60 00 00 */	li r11, 0x0
/* 81486D74 | 81 4A 00 F8 */	lwz r10, 0xf8(r10)
/* 81486D78 | 7C 9A 23 78 */	mr r26, r4
/* 81486D7C | 7C BB 2B 78 */	mr r27, r5
/* 81486D80 | 7C DC 33 78 */	mr r28, r6
/* 81486D84 | 55 44 F0 BE */	srwi r4, r10, 2
/* 81486D88 | 7C FD 3B 78 */	mr r29, r7
/* 81486D8C | 7C C3 20 16 */	mulhwu r6, r3, r4
/* 81486D90 | 7D 1E 43 78 */	mr r30, r8
/* 81486D94 | 7D 3F 4B 78 */	mr r31, r9
/* 81486D98 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81486D9C | 7C EB 21 D6 */	mullw r7, r11, r4
/* 81486DA0 | 7C 03 59 D6 */	mullw r0, r3, r11
/* 81486DA4 | 7C 83 21 D6 */	mullw r4, r3, r4
/* 81486DA8 | 7C 66 3A 14 */	add r3, r6, r7
/* 81486DAC | 7C 63 02 14 */	add r3, r3, r0
/* 81486DB0 | 48 0A F1 B5 */	bl OSTicksToCalendarTime
/* 81486DB4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81486DB8 | 41 82 00 0C */	beq .L_81486DC4
/* 81486DBC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81486DC0 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_81486DC4:
/* 81486DC4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81486DC8 | 41 82 00 0C */	beq .L_81486DD4
/* 81486DCC | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81486DD0 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_81486DD4:
/* 81486DD4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81486DD8 | 41 82 00 0C */	beq .L_81486DE4
/* 81486DDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81486DE0 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81486DE4:
/* 81486DE4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81486DE8 | 41 82 00 0C */	beq .L_81486DF4
/* 81486DEC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81486DF0 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_81486DF4:
/* 81486DF4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81486DF8 | 41 82 00 0C */	beq .L_81486E04
/* 81486DFC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81486E00 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81486E04:
/* 81486E04 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81486E08 | 41 82 00 0C */	beq .L_81486E14
/* 81486E0C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81486E10 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81486E14:
/* 81486E14 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81486E18 | 48 17 26 F1 */	bl _restgpr_26
/* 81486E1C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81486E20 | 7C 08 03 A6 */	mtlr r0
/* 81486E24 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81486E28 | 4E 80 00 20 */	blr
.endfn CDBConvEpochValueToDate

# .text:0xCD0 | 0x81486E2C | size: 0x88
.fn CDBConvKeyToFullPath, global
/* 81486E2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81486E30 | 7C 08 02 A6 */	mflr r0
/* 81486E34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81486E38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81486E3C | 7C 9F 23 78 */	mr r31, r4
/* 81486E40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81486E44 | 7C 7E 1B 78 */	mr r30, r3
/* 81486E48 | 48 00 74 9D */	bl CDBRecordKeyIsValid
/* 81486E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486E50 | 40 82 00 34 */	bne .L_81486E84
/* 81486E54 | 38 60 00 02 */	li r3, 0x2
/* 81486E58 | 48 00 97 39 */	bl CDBIsPrintDebugMessage
/* 81486E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486E60 | 41 82 00 1C */	beq .L_81486E7C
/* 81486E64 | 38 60 00 02 */	li r3, 0x2
/* 81486E68 | 48 00 97 41 */	bl CDBReport_
/* 81486E6C | 3C 60 81 67 */	lis r3, lbl_8166B4B8@ha
/* 81486E70 | 38 63 B4 B8 */	addi r3, r3, lbl_8166B4B8@l
/* 81486E74 | 4C C6 31 82 */	crclr cr1eq
/* 81486E78 | 48 0A 78 29 */	bl OSReport
.L_81486E7C:
/* 81486E7C | 38 60 00 05 */	li r3, 0x5
/* 81486E80 | 48 00 00 1C */	b .L_81486E9C
.L_81486E84:
/* 81486E84 | 80 BE 00 28 */	lwz r5, 0x28(r30)
/* 81486E88 | 7F C3 F3 78 */	mr r3, r30
/* 81486E8C | 7F E4 FB 78 */	mr r4, r31
/* 81486E90 | 38 C0 00 00 */	li r6, 0x0
/* 81486E94 | 48 00 00 21 */	bl CDBConvKeyStrToFullPath_
/* 81486E98 | 38 60 00 00 */	li r3, 0x0
.L_81486E9C:
/* 81486E9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81486EA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81486EA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81486EA8 | 7C 08 03 A6 */	mtlr r0
/* 81486EAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81486EB0 | 4E 80 00 20 */	blr
.endfn CDBConvKeyToFullPath

# .text:0xD58 | 0x81486EB4 | size: 0x2B4
.fn CDBConvKeyStrToFullPath_, global
/* 81486EB4 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 81486EB8 | 7C 08 02 A6 */	mflr r0
/* 81486EBC | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 81486EC0 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81486EC4 | 48 17 25 F5 */	bl _savegpr_25
/* 81486EC8 | 7C 79 1B 78 */	mr r25, r3
/* 81486ECC | 3F C0 81 67 */	lis r30, jumptable_8166B478@ha
/* 81486ED0 | 7C 9A 23 78 */	mr r26, r4
/* 81486ED4 | 7C BB 2B 78 */	mr r27, r5
/* 81486ED8 | 7C DC 33 78 */	mr r28, r6
/* 81486EDC | 7F 24 CB 78 */	mr r4, r25
/* 81486EE0 | 3B DE B4 78 */	addi r30, r30, jumptable_8166B478@l
/* 81486EE4 | 38 61 00 78 */	addi r3, r1, 0x78
/* 81486EE8 | 38 A0 00 0A */	li r5, 0xa
/* 81486EEC | 48 17 B4 D9 */	bl strncpy
/* 81486EF0 | 3B E0 00 00 */	li r31, 0x0
/* 81486EF4 | 38 61 00 78 */	addi r3, r1, 0x78
/* 81486EF8 | 9B E1 00 82 */	stb r31, 0x82(r1)
/* 81486EFC | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81486F00 | 38 8D 99 98 */	li r4, lbl_816979D8@sda21
/* 81486F04 | 4C C6 31 82 */	crclr cr1eq
/* 81486F08 | 48 17 B2 85 */	bl sscanf
/* 81486F0C | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 81486F10 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81486F14 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81486F18 | 38 C1 00 1C */	addi r6, r1, 0x1c
/* 81486F1C | 38 E1 00 18 */	addi r7, r1, 0x18
/* 81486F20 | 39 01 00 14 */	addi r8, r1, 0x14
/* 81486F24 | 39 20 00 00 */	li r9, 0x0
/* 81486F28 | 4B FF FE 31 */	bl CDBConvEpochValueToDate
/* 81486F2C | 80 A1 00 24 */	lwz r5, 0x24(r1)
/* 81486F30 | 38 61 00 60 */	addi r3, r1, 0x60
/* 81486F34 | 38 8D 99 70 */	li r4, lbl_816979B0@sda21
/* 81486F38 | 4C C6 31 82 */	crclr cr1eq
/* 81486F3C | 48 17 9B 45 */	bl sprintf
/* 81486F40 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81486F44 | 38 61 00 58 */	addi r3, r1, 0x58
/* 81486F48 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486F4C | 4C C6 31 82 */	crclr cr1eq
/* 81486F50 | 48 17 9B 31 */	bl sprintf
/* 81486F54 | 80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 81486F58 | 38 61 00 50 */	addi r3, r1, 0x50
/* 81486F5C | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486F60 | 4C C6 31 82 */	crclr cr1eq
/* 81486F64 | 48 17 9B 1D */	bl sprintf
/* 81486F68 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 81486F6C | 38 61 00 48 */	addi r3, r1, 0x48
/* 81486F70 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486F74 | 4C C6 31 82 */	crclr cr1eq
/* 81486F78 | 48 17 9B 09 */	bl sprintf
/* 81486F7C | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 81486F80 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81486F84 | 38 8D 99 78 */	li r4, lbl_816979B8@sda21
/* 81486F88 | 4C C6 31 82 */	crclr cr1eq
/* 81486F8C | 48 17 9A F5 */	bl sprintf
/* 81486F90 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81486F94 | 38 99 00 0B */	addi r4, r25, 0xb
/* 81486F98 | 38 A0 00 07 */	li r5, 0x7
/* 81486F9C | 48 17 B4 29 */	bl strncpy
/* 81486FA0 | 9B E1 00 3F */	stb r31, 0x3f(r1)
/* 81486FA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81486FA8 | 38 99 00 13 */	addi r4, r25, 0x13
/* 81486FAC | 38 A0 00 03 */	li r5, 0x3
/* 81486FB0 | 48 17 B4 15 */	bl strncpy
/* 81486FB4 | 9B E1 00 13 */	stb r31, 0x13(r1)
/* 81486FB8 | 7F 23 CB 78 */	mr r3, r25
/* 81486FBC | 38 80 00 20 */	li r4, 0x20
/* 81486FC0 | 48 00 96 4D */	bl CDBSafeStrLen
/* 81486FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486FC8 | 41 80 00 74 */	blt .L_8148703C
/* 81486FCC | 3B A3 FF E9 */	subi r29, r3, 0x17
/* 81486FD0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81486FD4 | 7F A5 EB 78 */	mr r5, r29
/* 81486FD8 | 38 99 00 17 */	addi r4, r25, 0x17
/* 81486FDC | 48 17 B3 E9 */	bl strncpy
/* 81486FE0 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 81486FE4 | 38 C1 00 2C */	addi r6, r1, 0x2c
/* 81486FE8 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 81486FEC | 7F E6 E9 AE */	stbx r31, r6, r29
/* 81486FF0 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 81486FF4 | 7F A9 03 A6 */	mtctr r29
/* 81486FF8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81486FFC | 40 81 00 40 */	ble .L_8148703C
.L_81487000:
/* 81487000 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 81487004 | 38 00 00 00 */	li r0, 0x0
/* 81487008 | 7C A5 07 75 */	extsb. r5, r5
/* 8148700C | 41 80 00 0C */	blt .L_81487018
/* 81487010 | 2C 05 01 00 */	cmpwi r5, 0x100
/* 81487014 | 41 80 00 08 */	blt .L_8148701C
.L_81487018:
/* 81487018 | 38 00 00 01 */	li r0, 0x1
.L_8148701C:
/* 8148701C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487020 | 41 82 00 08 */	beq .L_81487028
/* 81487024 | 48 00 00 0C */	b .L_81487030
.L_81487028:
/* 81487028 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8148702C | 7C A3 28 AE */	lbzx r5, r3, r5
.L_81487030:
/* 81487030 | 98 A6 00 00 */	stb r5, 0x0(r6)
/* 81487034 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81487038 | 42 00 FF C8 */	bdnz .L_81487000
.L_8148703C:
/* 8148703C | 7F 24 CB 78 */	mr r4, r25
/* 81487040 | 38 61 00 88 */	addi r3, r1, 0x88
/* 81487044 | 38 A0 00 0A */	li r5, 0xa
/* 81487048 | 48 17 B3 7D */	bl strncpy
/* 8148704C | 3B E0 00 00 */	li r31, 0x0
/* 81487050 | 38 61 00 88 */	addi r3, r1, 0x88
/* 81487054 | 9B E1 00 92 */	stb r31, 0x92(r1)
/* 81487058 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8148705C | 38 8D 99 98 */	li r4, lbl_816979D8@sda21
/* 81487060 | 4C C6 31 82 */	crclr cr1eq
/* 81487064 | 48 17 B1 29 */	bl sscanf
/* 81487068 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8148706C | 38 99 00 13 */	addi r4, r25, 0x13
/* 81487070 | 38 A0 00 03 */	li r5, 0x3
/* 81487074 | 48 17 B3 51 */	bl strncpy
/* 81487078 | 9B E1 00 0F */	stb r31, 0xf(r1)
/* 8148707C | 38 61 00 68 */	addi r3, r1, 0x68
/* 81487080 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81487084 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81487088 | 38 8D 99 A0 */	li r4, lbl_816979E0@sda21
/* 8148708C | 4C C6 31 82 */	crclr cr1eq
/* 81487090 | 48 17 99 F1 */	bl sprintf
/* 81487094 | 38 1B FF FF */	subi r0, r27, 0x1
/* 81487098 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8148709C | 41 81 00 78 */	bgt .L_81487114
/* 814870A0 | 7F 43 D3 78 */	mr r3, r26
/* 814870A4 | 7F 64 DB 78 */	mr r4, r27
/* 814870A8 | 7F 85 E3 78 */	mr r5, r28
/* 814870AC | 4B FF F5 F5 */	bl CDBGenRootPath
/* 814870B0 | 7F 43 D3 78 */	mr r3, r26
/* 814870B4 | 38 81 00 60 */	addi r4, r1, 0x60
/* 814870B8 | 48 00 32 61 */	bl CDBFSConcatenatePath
/* 814870BC | 7F 43 D3 78 */	mr r3, r26
/* 814870C0 | 38 81 00 58 */	addi r4, r1, 0x58
/* 814870C4 | 48 00 32 55 */	bl CDBFSConcatenatePath
/* 814870C8 | 7F 43 D3 78 */	mr r3, r26
/* 814870CC | 38 81 00 50 */	addi r4, r1, 0x50
/* 814870D0 | 48 00 32 49 */	bl CDBFSConcatenatePath
/* 814870D4 | 7F 43 D3 78 */	mr r3, r26
/* 814870D8 | 38 81 00 48 */	addi r4, r1, 0x48
/* 814870DC | 48 00 32 3D */	bl CDBFSConcatenatePath
/* 814870E0 | 7F 43 D3 78 */	mr r3, r26
/* 814870E4 | 38 81 00 40 */	addi r4, r1, 0x40
/* 814870E8 | 48 00 32 31 */	bl CDBFSConcatenatePath
/* 814870EC | 7F 43 D3 78 */	mr r3, r26
/* 814870F0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814870F4 | 48 00 32 25 */	bl CDBFSConcatenatePath
/* 814870F8 | 7F 43 D3 78 */	mr r3, r26
/* 814870FC | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81487100 | 48 00 32 19 */	bl CDBFSConcatenatePath
/* 81487104 | 7F 43 D3 78 */	mr r3, r26
/* 81487108 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8148710C | 48 00 32 0D */	bl CDBFSConcatenatePath
/* 81487110 | 48 00 00 40 */	b .L_81487150
.L_81487114:
/* 81487114 | 38 60 00 01 */	li r3, 0x1
/* 81487118 | 48 00 94 79 */	bl CDBIsPrintDebugMessage
/* 8148711C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487120 | 41 82 00 1C */	beq .L_8148713C
/* 81487124 | 38 60 00 01 */	li r3, 0x1
/* 81487128 | 48 00 94 81 */	bl CDBReport_
/* 8148712C | 7F 64 DB 78 */	mr r4, r27
/* 81487130 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 81487134 | 4C C6 31 82 */	crclr cr1eq
/* 81487138 | 48 0A 75 69 */	bl OSReport
.L_8148713C:
/* 8148713C | 38 7E 00 88 */	addi r3, r30, 0x88
/* 81487140 | 38 BE 00 98 */	addi r5, r30, 0x98
/* 81487144 | 38 80 02 DD */	li r4, 0x2dd
/* 81487148 | 4C C6 31 82 */	crclr cr1eq
/* 8148714C | 48 0A 75 E5 */	bl OSPanic
.L_81487150:
/* 81487150 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81487154 | 48 17 23 B1 */	bl _restgpr_25
/* 81487158 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8148715C | 7C 08 03 A6 */	mtlr r0
/* 81487160 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 81487164 | 4E 80 00 20 */	blr
.endfn CDBConvKeyStrToFullPath_

# .text:0x100C | 0x81487168 | size: 0x54
.fn CDBConvKeyStrToGameCode, global
/* 81487168 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148716C | 7C 08 02 A6 */	mflr r0
/* 81487170 | 7C 66 1B 78 */	mr r6, r3
/* 81487174 | 38 A0 00 04 */	li r5, 0x4
/* 81487178 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148717C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81487180 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81487184 | 7C 9F 23 78 */	mr r31, r4
/* 81487188 | 38 86 00 0B */	addi r4, r6, 0xb
/* 8148718C | 4B EA 90 A5 */	bl memcpy
/* 81487190 | 38 00 00 00 */	li r0, 0x0
/* 81487194 | 7F E3 FB 78 */	mr r3, r31
/* 81487198 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8148719C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814871A0 | 38 A0 00 04 */	li r5, 0x4
/* 814871A4 | 4B EA 90 8D */	bl memcpy
/* 814871A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814871AC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814871B0 | 7C 08 03 A6 */	mtlr r0
/* 814871B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814871B8 | 4E 80 00 20 */	blr
.endfn CDBConvKeyStrToGameCode

# .text:0x1060 | 0x814871BC | size: 0x54
.fn CDBConvKeyStrToMakerCode, global
/* 814871BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814871C0 | 7C 08 02 A6 */	mflr r0
/* 814871C4 | 7C 66 1B 78 */	mr r6, r3
/* 814871C8 | 38 A0 00 02 */	li r5, 0x2
/* 814871CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814871D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814871D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814871D8 | 7C 9F 23 78 */	mr r31, r4
/* 814871DC | 38 86 00 10 */	addi r4, r6, 0x10
/* 814871E0 | 4B EA 90 51 */	bl memcpy
/* 814871E4 | 38 00 00 00 */	li r0, 0x0
/* 814871E8 | 7F E3 FB 78 */	mr r3, r31
/* 814871EC | 98 01 00 0A */	stb r0, 0xa(r1)
/* 814871F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814871F4 | 38 A0 00 02 */	li r5, 0x2
/* 814871F8 | 4B EA 90 39 */	bl memcpy
/* 814871FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81487200 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81487204 | 7C 08 03 A6 */	mtlr r0
/* 81487208 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148720C | 4E 80 00 20 */	blr
.endfn CDBConvKeyStrToMakerCode

# .text:0x10B4 | 0x81487210 | size: 0xBC
.fn CDBConvKeyStrToType, global
/* 81487210 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81487214 | 7C 08 02 A6 */	mflr r0
/* 81487218 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148721C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81487220 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81487224 | 7C 9E 23 78 */	mr r30, r4
/* 81487228 | 38 80 00 20 */	li r4, 0x20
/* 8148722C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81487230 | 7C 7D 1B 78 */	mr r29, r3
/* 81487234 | 48 00 93 D9 */	bl CDBSafeStrLen
/* 81487238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148723C | 41 80 00 74 */	blt .L_814872B0
/* 81487240 | 3B E3 FF E9 */	subi r31, r3, 0x17
/* 81487244 | 7F C3 F3 78 */	mr r3, r30
/* 81487248 | 7F E5 FB 78 */	mr r5, r31
/* 8148724C | 38 9D 00 17 */	addi r4, r29, 0x17
/* 81487250 | 48 17 B1 75 */	bl strncpy
/* 81487254 | 38 00 00 00 */	li r0, 0x0
/* 81487258 | 3C 80 81 69 */	lis r4, _current_locale@ha
/* 8148725C | 7C 1E F9 AE */	stbx r0, r30, r31
/* 81487260 | 38 84 3B 88 */	addi r4, r4, _current_locale@l
/* 81487264 | 7F E9 03 A6 */	mtctr r31
/* 81487268 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148726C | 40 81 00 44 */	ble .L_814872B0
.L_81487270:
/* 81487270 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 81487274 | 38 00 00 00 */	li r0, 0x0
/* 81487278 | 7C A5 07 75 */	extsb. r5, r5
/* 8148727C | 41 80 00 0C */	blt .L_81487288
/* 81487280 | 2C 05 01 00 */	cmpwi r5, 0x100
/* 81487284 | 41 80 00 08 */	blt .L_8148728C
.L_81487288:
/* 81487288 | 38 00 00 01 */	li r0, 0x1
.L_8148728C:
/* 8148728C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487290 | 41 82 00 08 */	beq .L_81487298
/* 81487294 | 48 00 00 10 */	b .L_814872A4
.L_81487298:
/* 81487298 | 80 64 00 38 */	lwz r3, 0x38(r4)
/* 8148729C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814872A0 | 7C A3 28 AE */	lbzx r5, r3, r5
.L_814872A4:
/* 814872A4 | 98 BE 00 00 */	stb r5, 0x0(r30)
/* 814872A8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814872AC | 42 00 FF C4 */	bdnz .L_81487270
.L_814872B0:
/* 814872B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814872B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814872B8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814872BC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814872C0 | 7C 08 03 A6 */	mtlr r0
/* 814872C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814872C8 | 4E 80 00 20 */	blr
.endfn CDBConvKeyStrToType

# .text:0x1170 | 0x814872CC | size: 0xD4
.fn CDBConvertCDBDateToCalendarTime, global
/* 814872CC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814872D0 | 7C 08 02 A6 */	mflr r0
/* 814872D4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814872D8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814872DC | 48 17 21 E1 */	bl _savegpr_26
/* 814872E0 | 3D 40 80 00 */	lis r10, 0x8000
/* 814872E4 | 39 60 00 00 */	li r11, 0x0
/* 814872E8 | 81 4A 00 F8 */	lwz r10, 0xf8(r10)
/* 814872EC | 7C 9A 23 78 */	mr r26, r4
/* 814872F0 | 7C BB 2B 78 */	mr r27, r5
/* 814872F4 | 7C DC 33 78 */	mr r28, r6
/* 814872F8 | 55 44 F0 BE */	srwi r4, r10, 2
/* 814872FC | 7C FD 3B 78 */	mr r29, r7
/* 81487300 | 7C C3 20 16 */	mulhwu r6, r3, r4
/* 81487304 | 7D 1E 43 78 */	mr r30, r8
/* 81487308 | 7D 3F 4B 78 */	mr r31, r9
/* 8148730C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81487310 | 7C EB 21 D6 */	mullw r7, r11, r4
/* 81487314 | 7C 03 59 D6 */	mullw r0, r3, r11
/* 81487318 | 7C 83 21 D6 */	mullw r4, r3, r4
/* 8148731C | 7C 66 3A 14 */	add r3, r6, r7
/* 81487320 | 7C 63 02 14 */	add r3, r3, r0
/* 81487324 | 48 0A EC 41 */	bl OSTicksToCalendarTime
/* 81487328 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8148732C | 41 82 00 0C */	beq .L_81487338
/* 81487330 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81487334 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_81487338:
/* 81487338 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148733C | 41 82 00 0C */	beq .L_81487348
/* 81487340 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81487344 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_81487348:
/* 81487348 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8148734C | 41 82 00 0C */	beq .L_81487358
/* 81487350 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81487354 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81487358:
/* 81487358 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8148735C | 41 82 00 0C */	beq .L_81487368
/* 81487360 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81487364 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_81487368:
/* 81487368 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148736C | 41 82 00 0C */	beq .L_81487378
/* 81487370 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81487374 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81487378:
/* 81487378 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148737C | 41 82 00 0C */	beq .L_81487388
/* 81487380 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81487384 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81487388:
/* 81487388 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8148738C | 48 17 21 7D */	bl _restgpr_26
/* 81487390 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81487394 | 7C 08 03 A6 */	mtlr r0
/* 81487398 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8148739C | 4E 80 00 20 */	blr
.endfn CDBConvertCDBDateToCalendarTime

# 0x8166B478..0x8166B528 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x8166B478 | size: 0x30
.obj jumptable_8166B478, local
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
	.rel CDBMakeCDBDateMonthEnd, .L_814864A0
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
	.rel CDBMakeCDBDateMonthEnd, .L_814864B0
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
	.rel CDBMakeCDBDateMonthEnd, .L_814864B0
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
	.rel CDBMakeCDBDateMonthEnd, .L_814864B0
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
	.rel CDBMakeCDBDateMonthEnd, .L_814864B0
	.rel CDBMakeCDBDateMonthEnd, .L_814864A8
.endobj jumptable_8166B478

# .data:0x30 | 0x8166B4A8 | size: 0x10
.obj gap_08_8166B4A8_data, global
.hidden gap_08_8166B4A8_data
	.4byte 0x25303464
	.4byte 0x25303264
	.4byte 0x25303264
	.4byte 0x00000000
.endobj gap_08_8166B4A8_data

# .data:0x40 | 0x8166B4B8 | size: 0x70
.obj lbl_8166B4B8, global
	.4byte 0x696E7661
	.4byte 0x6C696420
	.4byte 0x43444252
	.4byte 0x65636F72
	.4byte 0x644B6579
	.4byte 0x00000000
	.4byte 0x43444243
	.4byte 0x6F6E764B
	.4byte 0x65795374
	.4byte 0x72546F46
	.4byte 0x756C6C50
	.4byte 0x61746820
	.4byte 0x756E6B6E
	.4byte 0x6F776E20
	.4byte 0x6C6F6361
	.4byte 0x74696F6E
	.4byte 0x3D25640A
	.4byte 0x00000000
	.4byte 0x43444243
	.4byte 0x6F6E762E
	.4byte 0x63000000
	.4byte 0x00000000
	.4byte 0x43444243
	.4byte 0x6F6E764B
	.4byte 0x65795374
	.4byte 0x72546F46
	.4byte 0x756C6C50
	.4byte 0x61746800
.endobj lbl_8166B4B8

# 0x816979B0..0x816979E8 | size: 0x38
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816979B0 | size: 0x8
.obj lbl_816979B0, global
	.4byte 0x25303464
	.4byte 0x00000000
.endobj lbl_816979B0

# .sdata:0x8 | 0x816979B8 | size: 0x8
.obj lbl_816979B8, global
	.4byte 0x25303264
	.4byte 0x00000000
.endobj lbl_816979B8

# .sdata:0x10 | 0x816979C0 | size: 0x8
.obj lbl_816979C0, global
	.4byte 0x25303858
	.4byte 0x00000000
.endobj lbl_816979C0

# .sdata:0x18 | 0x816979C8 | size: 0x8
.obj lbl_816979C8, global
	.4byte 0x4344423A
	.4byte 0x00000000
.endobj lbl_816979C8

# .sdata:0x20 | 0x816979D0 | size: 0x8
.obj lbl_816979D0, global
	.4byte 0x4A58584E
	.4byte 0x00000000
.endobj lbl_816979D0

# .sdata:0x28 | 0x816979D8 | size: 0x8
.obj lbl_816979D8, global
	.4byte 0x25756C00
	.4byte 0x00000000
.endobj lbl_816979D8

# .sdata:0x30 | 0x816979E0 | size: 0x8
.obj lbl_816979E0, global
	.string "%08X.%s"
.endobj lbl_816979E0
