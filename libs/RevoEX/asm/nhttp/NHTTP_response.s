.include "macros.inc"
.file "NHTTP_response.c"

# 0x8149723C..0x81497650 | size: 0x414
.text
.balign 4

# .text:0x0 | 0x8149723C | size: 0xCC
.fn NHTTP_DestroyResponse, global
/* 8149723C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81497240 | 7C 08 02 A6 */	mflr r0
/* 81497244 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81497248 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149724C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81497250 | 7C 9E 23 78 */	mr r30, r4
/* 81497254 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81497258 | 7C 7D 1B 78 */	mr r29, r3
/* 8149725C | 48 00 00 10 */	b .L_8149726C
.L_81497260:
/* 81497260 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81497264 | 4B FF E6 71 */	bl NHTTPi_free
/* 81497268 | 93 FE 00 34 */	stw r31, 0x34(r30)
.L_8149726C:
/* 8149726C | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 81497270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81497274 | 40 82 FF EC */	bne .L_81497260
/* 81497278 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8149727C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81497280 | 41 82 00 08 */	beq .L_81497288
/* 81497284 | 4B FF E6 51 */	bl NHTTPi_free
.L_81497288:
/* 81497288 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8149728C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81497290 | 41 82 00 08 */	beq .L_81497298
/* 81497294 | 4B FF E6 41 */	bl NHTTPi_free
.L_81497298:
/* 81497298 | 81 9E 00 30 */	lwz r12, 0x30(r30)
/* 8149729C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814972A0 | 41 82 00 28 */	beq .L_814972C8
/* 814972A4 | 3C 80 81 49 */	lis r4, NHTTPi_free@ha
/* 814972A8 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 814972AC | 38 84 58 D4 */	addi r4, r4, NHTTPi_free@l
/* 814972B0 | 80 BE 04 38 */	lwz r5, 0x438(r30)
/* 814972B4 | 7D 89 03 A6 */	mtctr r12
/* 814972B8 | 4E 80 04 21 */	bctrl
/* 814972BC | 38 00 00 00 */	li r0, 0x0
/* 814972C0 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 814972C4 | 90 1E 00 1C */	stw r0, 0x1c(r30)
.L_814972C8:
/* 814972C8 | 7F A3 EB 78 */	mr r3, r29
/* 814972CC | 7F C4 F3 78 */	mr r4, r30
/* 814972D0 | 48 00 55 41 */	bl NHTTPi_Response2Connection
/* 814972D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814972D8 | 41 82 00 0C */	beq .L_814972E4
/* 814972DC | 38 00 00 00 */	li r0, 0x0
/* 814972E0 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_814972E4:
/* 814972E4 | 7F C3 F3 78 */	mr r3, r30
/* 814972E8 | 4B FF E5 ED */	bl NHTTPi_free
/* 814972EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814972F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814972F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814972F8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814972FC | 7C 08 03 A6 */	mtlr r0
/* 81497300 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81497304 | 4E 80 00 20 */	blr
.endfn NHTTP_DestroyResponse

# .text:0xCC | 0x81497308 | size: 0x134
.fn NHTTPi_getHeaderValue, global
/* 81497308 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149730C | 7C 08 02 A6 */	mflr r0
/* 81497310 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81497314 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81497318 | 48 16 21 A9 */	bl _savegpr_27
/* 8149731C | 38 00 00 00 */	li r0, 0x0
/* 81497320 | 7C BD 2B 78 */	mr r29, r5
/* 81497324 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81497328 | 7C 9C 23 78 */	mr r28, r4
/* 8149732C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81497330 | 7C 7B 1B 78 */	mr r27, r3
/* 81497334 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81497338 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8149733C | 38 80 00 0C */	li r4, 0xc
/* 81497340 | 4B FF EE 91 */	bl NHTTPi_findNextLineHdrRecvBuf
/* 81497344 | 7C 7F 1B 78 */	mr r31, r3
/* 81497348 | 48 00 00 D0 */	b .L_81497418
.L_8149734C:
/* 8149734C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81497350 | 7F 63 DB 78 */	mr r3, r27
/* 81497354 | 7F E4 FB 78 */	mr r4, r31
/* 81497358 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8149735C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81497360 | 4B FF EE 71 */	bl NHTTPi_findNextLineHdrRecvBuf
/* 81497364 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81497368 | 7C 7E 1B 78 */	mr r30, r3
/* 8149736C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81497370 | 40 81 00 A4 */	ble .L_81497414
/* 81497374 | 7F 63 DB 78 */	mr r3, r27
/* 81497378 | 7F E4 FB 78 */	mr r4, r31
/* 8149737C | 7F 86 E3 78 */	mr r6, r28
/* 81497380 | 38 E0 00 00 */	li r7, 0x0
/* 81497384 | 4B FF F1 3D */	bl NHTTPi_compareTokenN_HdrRecvBuf
/* 81497388 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149738C | 40 82 00 88 */	bne .L_81497414
/* 81497390 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81497394 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81497398 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8149739C | 7C 04 00 00 */	cmpw r4, r0
/* 814973A0 | 40 80 00 6C */	bge .L_8149740C
/* 814973A4 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 814973A8 | 7F 63 DB 78 */	mr r3, r27
/* 814973AC | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814973B0 | 38 C0 00 00 */	li r6, 0x0
/* 814973B4 | 4B FF EE 1D */	bl NHTTPi_findNextLineHdrRecvBuf
/* 814973B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814973BC | 41 81 00 0C */	bgt .L_814973C8
/* 814973C0 | 83 DB 00 00 */	lwz r30, 0x0(r27)
/* 814973C4 | 48 00 00 1C */	b .L_814973E0
.L_814973C8:
/* 814973C8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814973CC | 7C 03 00 00 */	cmpw r3, r0
/* 814973D0 | 40 80 00 0C */	bge .L_814973DC
/* 814973D4 | 38 60 FF FF */	li r3, -0x1
/* 814973D8 | 48 00 00 4C */	b .L_81497424
.L_814973DC:
/* 814973DC | 7F C0 18 50 */	subf r30, r0, r3
.L_814973E0:
/* 814973E0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814973E4 | 7F 63 DB 78 */	mr r3, r27
/* 814973E8 | 7F C5 F3 78 */	mr r5, r30
/* 814973EC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814973F0 | 4B FF EF D9 */	bl NHTTPi_skipSpaceHdrRecvBuf
/* 814973F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814973F8 | 40 80 00 08 */	bge .L_81497400
/* 814973FC | 7F C3 F3 78 */	mr r3, r30
.L_81497400:
/* 81497400 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 81497404 | 7C 63 F0 50 */	subf r3, r3, r30
/* 81497408 | 48 00 00 1C */	b .L_81497424
.L_8149740C:
/* 8149740C | 38 60 00 00 */	li r3, 0x0
/* 81497410 | 48 00 00 14 */	b .L_81497424
.L_81497414:
/* 81497414 | 7F DF F3 78 */	mr r31, r30
.L_81497418:
/* 81497418 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149741C | 41 81 FF 30 */	bgt .L_8149734C
/* 81497420 | 38 60 FF FF */	li r3, -0x1
.L_81497424:
/* 81497424 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81497428 | 48 16 20 E5 */	bl _restgpr_27
/* 8149742C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81497430 | 7C 08 03 A6 */	mtlr r0
/* 81497434 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81497438 | 4E 80 00 20 */	blr
.endfn NHTTPi_getHeaderValue

# .text:0x200 | 0x8149743C | size: 0x144
.fn NHTTP_GetHeaderField, global
/* 8149743C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81497440 | 7C 08 02 A6 */	mflr r0
/* 81497444 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81497448 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149744C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81497450 | 7C BE 2B 78 */	mr r30, r5
/* 81497454 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81497458 | 7C 9D 23 78 */	mr r29, r4
/* 8149745C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81497460 | 7C 7C 1B 78 */	mr r28, r3
/* 81497464 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81497468 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149746C | 40 82 00 0C */	bne .L_81497478
/* 81497470 | 38 60 FF FF */	li r3, -0x1
/* 81497474 | 48 00 00 EC */	b .L_81497560
.L_81497478:
/* 81497478 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8149747C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81497480 | 41 82 00 10 */	beq .L_81497490
/* 81497484 | 4B FF E4 51 */	bl NHTTPi_free
/* 81497488 | 38 00 00 00 */	li r0, 0x0
/* 8149748C | 90 1C 00 24 */	stw r0, 0x24(r28)
.L_81497490:
/* 81497490 | 7F 83 E3 78 */	mr r3, r28
/* 81497494 | 7F A4 EB 78 */	mr r4, r29
/* 81497498 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149749C | 4B FF FE 6D */	bl NHTTPi_getHeaderValue
/* 814974A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814974A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814974A8 | 41 80 00 50 */	blt .L_814974F8
/* 814974AC | 38 80 00 04 */	li r4, 0x4
/* 814974B0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814974B4 | 4B FF E3 C5 */	bl NHTTPi_alloc
/* 814974B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814974BC | 90 7C 00 24 */	stw r3, 0x24(r28)
/* 814974C0 | 40 82 00 0C */	bne .L_814974CC
/* 814974C4 | 38 60 FF FF */	li r3, -0x1
/* 814974C8 | 48 00 00 98 */	b .L_81497560
.L_814974CC:
/* 814974CC | 38 00 00 00 */	li r0, 0x0
/* 814974D0 | 7F E6 FB 78 */	mr r6, r31
/* 814974D4 | 7C 03 F9 AE */	stbx r0, r3, r31
/* 814974D8 | 7F 83 E3 78 */	mr r3, r28
/* 814974DC | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 814974E0 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814974E4 | 4B FF F1 CD */	bl NHTTPi_loadFromHdrRecvBuf
/* 814974E8 | 80 1C 00 24 */	lwz r0, 0x24(r28)
/* 814974EC | 7F E3 FB 78 */	mr r3, r31
/* 814974F0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814974F4 | 48 00 00 6C */	b .L_81497560
.L_814974F8:
/* 814974F8 | 3C 60 81 67 */	lis r3, lbl_8166D150@ha
/* 814974FC | 7F A4 EB 78 */	mr r4, r29
/* 81497500 | 38 63 D1 50 */	addi r3, r3, lbl_8166D150@l
/* 81497504 | 48 00 09 B1 */	bl NHTTPi_strcmp
/* 81497508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149750C | 40 82 00 50 */	bne .L_8149755C
/* 81497510 | 38 60 00 04 */	li r3, 0x4
/* 81497514 | 38 80 00 04 */	li r4, 0x4
/* 81497518 | 4B FF E3 61 */	bl NHTTPi_alloc
/* 8149751C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81497520 | 90 7C 00 24 */	stw r3, 0x24(r28)
/* 81497524 | 40 82 00 0C */	bne .L_81497530
/* 81497528 | 38 60 FF FF */	li r3, -0x1
/* 8149752C | 48 00 00 34 */	b .L_81497560
.L_81497530:
/* 81497530 | 38 00 00 00 */	li r0, 0x0
/* 81497534 | 38 A0 00 09 */	li r5, 0x9
/* 81497538 | 98 03 00 03 */	stb r0, 0x3(r3)
/* 8149753C | 7F 83 E3 78 */	mr r3, r28
/* 81497540 | 38 C0 00 03 */	li r6, 0x3
/* 81497544 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 81497548 | 4B FF F1 69 */	bl NHTTPi_loadFromHdrRecvBuf
/* 8149754C | 80 1C 00 24 */	lwz r0, 0x24(r28)
/* 81497550 | 38 60 00 03 */	li r3, 0x3
/* 81497554 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81497558 | 48 00 00 08 */	b .L_81497560
.L_8149755C:
/* 8149755C | 38 60 FF FF */	li r3, -0x1
.L_81497560:
/* 81497560 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81497564 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81497568 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149756C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81497570 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81497574 | 7C 08 03 A6 */	mtlr r0
/* 81497578 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149757C | 4E 80 00 20 */	blr
.endfn NHTTP_GetHeaderField

# .text:0x344 | 0x81497580 | size: 0xD0
.fn NHTTP_GetHeaderAll, global
/* 81497580 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81497584 | 7C 08 02 A6 */	mflr r0
/* 81497588 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149758C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81497590 | 7C BF 2B 78 */	mr r31, r5
/* 81497594 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81497598 | 7C 9E 23 78 */	mr r30, r4
/* 8149759C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814975A0 | 7C 7D 1B 78 */	mr r29, r3
/* 814975A4 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 814975A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814975AC | 41 82 00 10 */	beq .L_814975BC
/* 814975B0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814975B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814975B8 | 40 82 00 0C */	bne .L_814975C4
.L_814975BC:
/* 814975BC | 38 60 FF FF */	li r3, -0x1
/* 814975C0 | 48 00 00 74 */	b .L_81497634
.L_814975C4:
/* 814975C4 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814975C8 | 2C 00 04 00 */	cmpwi r0, 0x400
/* 814975CC | 40 80 00 10 */	bge .L_814975DC
/* 814975D0 | 38 04 00 38 */	addi r0, r4, 0x38
/* 814975D4 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814975D8 | 48 00 00 58 */	b .L_81497630
.L_814975DC:
/* 814975DC | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814975E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814975E4 | 40 82 00 44 */	bne .L_81497628
/* 814975E8 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814975EC | 38 80 00 04 */	li r4, 0x4
/* 814975F0 | 4B FF E2 89 */	bl NHTTPi_alloc
/* 814975F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814975F8 | 90 7E 00 20 */	stw r3, 0x20(r30)
/* 814975FC | 7C 64 1B 78 */	mr r4, r3
/* 81497600 | 40 82 00 18 */	bne .L_81497618
/* 81497604 | 7F A3 EB 78 */	mr r3, r29
/* 81497608 | 38 80 00 01 */	li r4, 0x1
/* 8149760C | 4B FF E3 0D */	bl NHTTPi_SetError
/* 81497610 | 38 60 FF FF */	li r3, -0x1
/* 81497614 | 48 00 00 20 */	b .L_81497634
.L_81497618:
/* 81497618 | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8149761C | 7F C3 F3 78 */	mr r3, r30
/* 81497620 | 38 A0 00 00 */	li r5, 0x0
/* 81497624 | 4B FF F0 8D */	bl NHTTPi_loadFromHdrRecvBuf
.L_81497628:
/* 81497628 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8149762C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81497630:
/* 81497630 | 80 7E 00 00 */	lwz r3, 0x0(r30)
.L_81497634:
/* 81497634 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81497638 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149763C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81497640 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81497644 | 7C 08 03 A6 */	mtlr r0
/* 81497648 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149764C | 4E 80 00 20 */	blr
.endfn NHTTP_GetHeaderAll

# 0x8166D150..0x8166D160 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166D150 | size: 0x10
.obj lbl_8166D150, global
	.4byte 0x48545450
	.4byte 0x53544154
	.4byte 0x5553434F
	.4byte 0x44450000
.endobj lbl_8166D150
