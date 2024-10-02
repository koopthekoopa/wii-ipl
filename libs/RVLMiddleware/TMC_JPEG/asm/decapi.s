.include "macros.inc"
.file "decapi.c"

# 0x814EA448..0x814F7024 | size: 0xCBDC
.text
.balign 4

# .text:0x0 | 0x814EA448 | size: 0x320
.fn TMCJPEGDEC_make_huffdec, global
/* 814EA448 | 94 21 F7 C0 */	stwu r1, -0x840(r1)
/* 814EA44C | 7C 08 02 A6 */	mflr r0
/* 814EA450 | 38 C0 00 01 */	li r6, 0x1
/* 814EA454 | 38 E0 00 01 */	li r7, 0x1
/* 814EA458 | 90 01 08 44 */	stw r0, 0x844(r1)
/* 814EA45C | BE 81 08 10 */	stmw r20, 0x810(r1)
/* 814EA460 | 7C 7A 1B 78 */	mr r26, r3
/* 814EA464 | 7C 9B 23 78 */	mr r27, r4
/* 814EA468 | 38 81 04 08 */	addi r4, r1, 0x408
/* 814EA46C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EA470 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 814EA474 | 83 C5 00 04 */	lwz r30, 0x4(r5)
/* 814EA478 | 83 A5 00 08 */	lwz r29, 0x8(r5)
/* 814EA47C | 8B 85 00 0C */	lbz r28, 0xc(r5)
/* 814EA480 | 38 A0 00 00 */	li r5, 0x0
.L_814EA484:
/* 814EA484 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814EA488 | 7C 07 00 00 */	cmpw r7, r0
/* 814EA48C | 40 81 00 2C */	ble .L_814EA4B8
/* 814EA490 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814EA494 | 38 E0 00 01 */	li r7, 0x1
/* 814EA498 | 2C 06 00 10 */	cmpwi r6, 0x10
/* 814EA49C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EA4A0 | 40 81 FF E4 */	ble .L_814EA484
/* 814EA4A4 | 54 A0 10 3A */	slwi r0, r5, 2
/* 814EA4A8 | 38 E1 04 08 */	addi r7, r1, 0x408
/* 814EA4AC | 38 60 00 00 */	li r3, 0x0
/* 814EA4B0 | 7C 67 01 2E */	stwx r3, r7, r0
/* 814EA4B4 | 48 00 00 28 */	b .L_814EA4DC
.L_814EA4B8:
/* 814EA4B8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814EA4BC | 90 C4 00 00 */	stw r6, 0x0(r4)
/* 814EA4C0 | 7C 05 E0 00 */	cmpw r5, r28
/* 814EA4C4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814EA4C8 | 40 81 00 0C */	ble .L_814EA4D4
/* 814EA4CC | 38 60 FF C0 */	li r3, -0x40
/* 814EA4D0 | 48 00 02 84 */	b .L_814EA754
.L_814EA4D4:
/* 814EA4D4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814EA4D8 | 4B FF FF AC */	b .L_814EA484
.L_814EA4DC:
/* 814EA4DC | 80 01 04 08 */	lwz r0, 0x408(r1)
/* 814EA4E0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814EA4E4 | 39 20 00 00 */	li r9, 0x0
/* 814EA4E8 | 39 00 00 00 */	li r8, 0x0
/* 814EA4EC | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 814EA4F0 | 38 80 00 01 */	li r4, 0x1
/* 814EA4F4 | 48 00 00 58 */	b .L_814EA54C
.L_814EA4F8:
/* 814EA4F8 | 55 45 06 3E */	clrlwi r5, r10, 24
/* 814EA4FC | 55 03 10 3A */	slwi r3, r8, 2
/* 814EA500 | 48 00 00 1C */	b .L_814EA51C
.L_814EA504:
/* 814EA504 | 55 20 04 3E */	clrlwi r0, r9, 16
/* 814EA508 | 38 E7 00 04 */	addi r7, r7, 0x4
/* 814EA50C | 7C 06 19 2E */	stwx r0, r6, r3
/* 814EA510 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814EA514 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814EA518 | 39 29 00 01 */	addi r9, r9, 0x1
.L_814EA51C:
/* 814EA51C | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814EA520 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814EA524 | 7C 05 00 40 */	cmplw r5, r0
/* 814EA528 | 41 82 FF DC */	beq .L_814EA504
/* 814EA52C | 55 23 04 3E */	clrlwi r3, r9, 16
/* 814EA530 | 7C 80 28 30 */	slw r0, r4, r5
/* 814EA534 | 7C 03 00 00 */	cmpw r3, r0
/* 814EA538 | 41 80 00 0C */	blt .L_814EA544
/* 814EA53C | 38 60 FF C0 */	li r3, -0x40
/* 814EA540 | 48 00 02 14 */	b .L_814EA754
.L_814EA544:
/* 814EA544 | 55 29 0C 3C */	clrlslwi r9, r9, 17, 1
/* 814EA548 | 39 4A 00 01 */	addi r10, r10, 0x1
.L_814EA54C:
/* 814EA54C | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814EA550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EA554 | 40 82 FF A4 */	bne .L_814EA4F8
/* 814EA558 | 7F C3 F3 78 */	mr r3, r30
/* 814EA55C | 38 80 00 00 */	li r4, 0x0
/* 814EA560 | 38 A0 00 44 */	li r5, 0x44
/* 814EA564 | 4B E4 5D D1 */	bl memset
/* 814EA568 | 38 81 04 08 */	addi r4, r1, 0x408
/* 814EA56C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814EA570 | 38 C0 00 00 */	li r6, 0x0
/* 814EA574 | 7F 89 03 A6 */	mtctr r28
/* 814EA578 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814EA57C | 40 81 00 34 */	ble .L_814EA5B0
.L_814EA580:
/* 814EA580 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814EA584 | 28 00 00 10 */	cmplwi r0, 0x10
/* 814EA588 | 41 81 00 18 */	bgt .L_814EA5A0
/* 814EA58C | 54 03 10 3A */	slwi r3, r0, 2
/* 814EA590 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814EA594 | 7C 7E 1A 14 */	add r3, r30, r3
/* 814EA598 | B0 C3 00 02 */	sth r6, 0x2(r3)
/* 814EA59C | B0 03 00 00 */	sth r0, 0x0(r3)
.L_814EA5A0:
/* 814EA5A0 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814EA5A4 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 814EA5A8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814EA5AC | 42 00 FF D4 */	bdnz .L_814EA580
.L_814EA5B0:
/* 814EA5B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814EA5B4 | 39 9A 00 01 */	addi r12, r26, 0x1
/* 814EA5B8 | 38 C0 00 00 */	li r6, 0x0
/* 814EA5BC | 38 E0 00 01 */	li r7, 0x1
/* 814EA5C0 | 3C 60 80 00 */	lis r3, 0x8000
.L_814EA5C4:
/* 814EA5C4 | 20 07 00 08 */	subfic r0, r7, 0x8
/* 814EA5C8 | 39 00 00 01 */	li r8, 0x1
/* 814EA5CC | 7D 05 00 30 */	slw r5, r8, r0
/* 814EA5D0 | 48 00 01 54 */	b .L_814EA724
.L_814EA5D4:
/* 814EA5D4 | 81 44 00 00 */	lwz r10, 0x0(r4)
/* 814EA5D8 | 2C 85 00 00 */	cmpwi cr1, r5, 0x0
/* 814EA5DC | 7C A9 2B 78 */	mr r9, r5
/* 814EA5E0 | 7D 4A 00 30 */	slw r10, r10, r0
/* 814EA5E4 | 40 85 01 34 */	ble cr1, .L_814EA718
/* 814EA5E8 | 2C 05 00 08 */	cmpwi r5, 0x8
/* 814EA5EC | 40 81 01 00 */	ble .L_814EA6EC
/* 814EA5F0 | 3A A0 00 00 */	li r21, 0x0
/* 814EA5F4 | 41 84 00 14 */	blt cr1, .L_814EA608
/* 814EA5F8 | 39 63 00 01 */	addi r11, r3, 0x1
/* 814EA5FC | 7C 05 58 00 */	cmpw r5, r11
/* 814EA600 | 41 80 00 08 */	blt .L_814EA608
/* 814EA604 | 3A A0 00 01 */	li r21, 0x1
.L_814EA608:
/* 814EA608 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814EA60C | 41 82 00 E0 */	beq .L_814EA6EC
/* 814EA610 | 39 65 FF FF */	subi r11, r5, 0x1
/* 814EA614 | 55 5A 10 3A */	slwi r26, r10, 2
/* 814EA618 | 55 6B E8 FE */	srwi r11, r11, 3
/* 814EA61C | 7D 69 03 A6 */	mtctr r11
/* 814EA620 | 2C 05 00 08 */	cmpwi r5, 0x8
/* 814EA624 | 40 81 00 C8 */	ble .L_814EA6EC
.L_814EA628:
/* 814EA628 | 7C FF D3 2E */	sthx r7, r31, r26
/* 814EA62C | 7F 3F D2 14 */	add r25, r31, r26
/* 814EA630 | 39 6A 00 01 */	addi r11, r10, 0x1
/* 814EA634 | 3A CA 00 02 */	addi r22, r10, 0x2
/* 814EA638 | 7F 1B 30 AE */	lbzx r24, r27, r6
/* 814EA63C | 55 75 10 3A */	slwi r21, r11, 2
/* 814EA640 | 39 6A 00 03 */	addi r11, r10, 0x3
/* 814EA644 | 3B CA 00 06 */	addi r30, r10, 0x6
/* 814EA648 | B3 19 00 02 */	sth r24, 0x2(r25)
/* 814EA64C | 55 77 10 3A */	slwi r23, r11, 2
/* 814EA650 | 39 6A 00 04 */	addi r11, r10, 0x4
/* 814EA654 | 7E 9F AA 14 */	add r20, r31, r21
/* 814EA658 | 7C FF AB 2E */	sthx r7, r31, r21
/* 814EA65C | 55 78 10 3A */	slwi r24, r11, 2
/* 814EA660 | 39 6A 00 05 */	addi r11, r10, 0x5
/* 814EA664 | 56 D6 10 3A */	slwi r22, r22, 2
/* 814EA668 | 7E BB 30 AE */	lbzx r21, r27, r6
/* 814EA66C | 55 79 10 3A */	slwi r25, r11, 2
/* 814EA670 | 39 6A 00 07 */	addi r11, r10, 0x7
/* 814EA674 | 57 DE 10 3A */	slwi r30, r30, 2
/* 814EA678 | B2 B4 00 02 */	sth r21, 0x2(r20)
/* 814EA67C | 7E 9F BA 14 */	add r20, r31, r23
/* 814EA680 | 7E BF C2 14 */	add r21, r31, r24
/* 814EA684 | 55 6B 10 3A */	slwi r11, r11, 2
/* 814EA688 | 7C F6 FB 6E */	sthux r7, r22, r31
/* 814EA68C | 7E FF CA 14 */	add r23, r31, r25
/* 814EA690 | 7F 3F 5A 14 */	add r25, r31, r11
/* 814EA694 | 7F 1F F2 14 */	add r24, r31, r30
/* 814EA698 | 7D 7B 30 AE */	lbzx r11, r27, r6
/* 814EA69C | 39 4A 00 08 */	addi r10, r10, 0x8
/* 814EA6A0 | 3B 5A 00 20 */	addi r26, r26, 0x20
/* 814EA6A4 | 39 29 FF F8 */	subi r9, r9, 0x8
/* 814EA6A8 | B1 76 00 02 */	sth r11, 0x2(r22)
/* 814EA6AC | B0 F4 00 00 */	sth r7, 0x0(r20)
/* 814EA6B0 | 7D 7B 30 AE */	lbzx r11, r27, r6
/* 814EA6B4 | B1 74 00 02 */	sth r11, 0x2(r20)
/* 814EA6B8 | B0 F5 00 00 */	sth r7, 0x0(r21)
/* 814EA6BC | 7D 7B 30 AE */	lbzx r11, r27, r6
/* 814EA6C0 | B1 75 00 02 */	sth r11, 0x2(r21)
/* 814EA6C4 | B0 F7 00 00 */	sth r7, 0x0(r23)
/* 814EA6C8 | 7D 7B 30 AE */	lbzx r11, r27, r6
/* 814EA6CC | B1 77 00 02 */	sth r11, 0x2(r23)
/* 814EA6D0 | 7C FF F3 2E */	sthx r7, r31, r30
/* 814EA6D4 | 7D 7B 30 AE */	lbzx r11, r27, r6
/* 814EA6D8 | B1 78 00 02 */	sth r11, 0x2(r24)
/* 814EA6DC | B0 F9 00 00 */	sth r7, 0x0(r25)
/* 814EA6E0 | 7D 7B 30 AE */	lbzx r11, r27, r6
/* 814EA6E4 | B1 79 00 02 */	sth r11, 0x2(r25)
/* 814EA6E8 | 42 00 FF 40 */	bdnz .L_814EA628
.L_814EA6EC:
/* 814EA6EC | 55 4A 10 3A */	slwi r10, r10, 2
/* 814EA6F0 | 7D 7F 52 14 */	add r11, r31, r10
/* 814EA6F4 | 7D 29 03 A6 */	mtctr r9
/* 814EA6F8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814EA6FC | 40 81 00 1C */	ble .L_814EA718
.L_814EA700:
/* 814EA700 | B0 EB 00 00 */	sth r7, 0x0(r11)
/* 814EA704 | 39 29 FF FF */	subi r9, r9, 0x1
/* 814EA708 | 7D 5B 30 AE */	lbzx r10, r27, r6
/* 814EA70C | B1 4B 00 02 */	sth r10, 0x2(r11)
/* 814EA710 | 39 6B 00 04 */	addi r11, r11, 0x4
/* 814EA714 | 42 00 FF EC */	bdnz .L_814EA700
.L_814EA718:
/* 814EA718 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814EA71C | 38 84 00 04 */	addi r4, r4, 0x4
/* 814EA720 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_814EA724:
/* 814EA724 | 89 2C 00 00 */	lbz r9, 0x0(r12)
/* 814EA728 | 7C 08 48 00 */	cmpw r8, r9
/* 814EA72C | 40 81 FE A8 */	ble .L_814EA5D4
/* 814EA730 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814EA734 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814EA738 | 2C 07 00 08 */	cmpwi r7, 0x8
/* 814EA73C | 40 81 FE 88 */	ble .L_814EA5C4
/* 814EA740 | 7F A3 EB 78 */	mr r3, r29
/* 814EA744 | 7F 64 DB 78 */	mr r4, r27
/* 814EA748 | 7F 85 E3 78 */	mr r5, r28
/* 814EA74C | 4B E4 5A E5 */	bl memcpy
/* 814EA750 | 38 60 00 00 */	li r3, 0x0
.L_814EA754:
/* 814EA754 | BA 81 08 10 */	lmw r20, 0x810(r1)
/* 814EA758 | 80 01 08 44 */	lwz r0, 0x844(r1)
/* 814EA75C | 7C 08 03 A6 */	mtlr r0
/* 814EA760 | 38 21 08 40 */	addi r1, r1, 0x840
/* 814EA764 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_make_huffdec

# .text:0x320 | 0x814EA768 | size: 0x1AC
.fn TMCJPEGDEC_set_HuffmanTable, global
/* 814EA768 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA76C | 7C 08 02 A6 */	mflr r0
/* 814EA770 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814EA774 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA778 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EA77C | 7C DF 33 78 */	mr r31, r6
/* 814EA780 | 40 82 00 C4 */	bne .L_814EA844
/* 814EA784 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814EA788 | 41 82 00 68 */	beq .L_814EA7F0
/* 814EA78C | 40 80 01 74 */	bge .L_814EA900
/* 814EA790 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EA794 | 40 80 00 08 */	bge .L_814EA79C
/* 814EA798 | 48 00 01 68 */	b .L_814EA900
.L_814EA79C:
/* 814EA79C | 39 06 04 60 */	addi r8, r6, 0x460
/* 814EA7A0 | 38 A6 15 70 */	addi r5, r6, 0x1570
/* 814EA7A4 | 38 E6 14 60 */	addi r7, r6, 0x1460
/* 814EA7A8 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814EA7AC | 38 00 00 01 */	li r0, 0x1
/* 814EA7B0 | 38 80 00 00 */	li r4, 0x0
/* 814EA7B4 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 814EA7B8 | 38 A0 04 00 */	li r5, 0x400
/* 814EA7BC | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814EA7C0 | 7D 03 43 78 */	mr r3, r8
/* 814EA7C4 | 98 06 17 94 */	stb r0, 0x1794(r6)
/* 814EA7C8 | 4B E4 5B 6D */	bl memset
/* 814EA7CC | 38 7F 15 70 */	addi r3, r31, 0x1570
/* 814EA7D0 | 38 80 00 00 */	li r4, 0x0
/* 814EA7D4 | 38 A0 00 10 */	li r5, 0x10
/* 814EA7D8 | 4B E4 5B 5D */	bl memset
/* 814EA7DC | 38 7F 14 60 */	addi r3, r31, 0x1460
/* 814EA7E0 | 38 80 00 00 */	li r4, 0x0
/* 814EA7E4 | 38 A0 00 44 */	li r5, 0x44
/* 814EA7E8 | 4B E4 5B 4D */	bl memset
/* 814EA7EC | 48 00 01 14 */	b .L_814EA900
.L_814EA7F0:
/* 814EA7F0 | 39 06 08 60 */	addi r8, r6, 0x860
/* 814EA7F4 | 38 A6 15 80 */	addi r5, r6, 0x1580
/* 814EA7F8 | 38 E6 14 A4 */	addi r7, r6, 0x14a4
/* 814EA7FC | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814EA800 | 38 00 00 01 */	li r0, 0x1
/* 814EA804 | 38 80 00 00 */	li r4, 0x0
/* 814EA808 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 814EA80C | 38 A0 04 00 */	li r5, 0x400
/* 814EA810 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814EA814 | 7D 03 43 78 */	mr r3, r8
/* 814EA818 | 98 06 17 95 */	stb r0, 0x1795(r6)
/* 814EA81C | 4B E4 5B 19 */	bl memset
/* 814EA820 | 38 7F 15 80 */	addi r3, r31, 0x1580
/* 814EA824 | 38 80 00 00 */	li r4, 0x0
/* 814EA828 | 38 A0 00 10 */	li r5, 0x10
/* 814EA82C | 4B E4 5B 09 */	bl memset
/* 814EA830 | 38 7F 14 A4 */	addi r3, r31, 0x14a4
/* 814EA834 | 38 80 00 00 */	li r4, 0x0
/* 814EA838 | 38 A0 00 44 */	li r5, 0x44
/* 814EA83C | 4B E4 5A F9 */	bl memset
/* 814EA840 | 48 00 00 C0 */	b .L_814EA900
.L_814EA844:
/* 814EA844 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814EA848 | 41 82 00 68 */	beq .L_814EA8B0
/* 814EA84C | 40 80 00 B4 */	bge .L_814EA900
/* 814EA850 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EA854 | 40 80 00 08 */	bge .L_814EA85C
/* 814EA858 | 48 00 00 A8 */	b .L_814EA900
.L_814EA85C:
/* 814EA85C | 39 06 0C 60 */	addi r8, r6, 0xc60
/* 814EA860 | 38 A6 15 90 */	addi r5, r6, 0x1590
/* 814EA864 | 38 E6 14 E8 */	addi r7, r6, 0x14e8
/* 814EA868 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814EA86C | 38 00 00 01 */	li r0, 0x1
/* 814EA870 | 38 80 00 00 */	li r4, 0x0
/* 814EA874 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 814EA878 | 38 A0 04 00 */	li r5, 0x400
/* 814EA87C | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814EA880 | 7D 03 43 78 */	mr r3, r8
/* 814EA884 | 98 06 17 96 */	stb r0, 0x1796(r6)
/* 814EA888 | 4B E4 5A AD */	bl memset
/* 814EA88C | 38 7F 15 90 */	addi r3, r31, 0x1590
/* 814EA890 | 38 80 00 00 */	li r4, 0x0
/* 814EA894 | 38 A0 01 00 */	li r5, 0x100
/* 814EA898 | 4B E4 5A 9D */	bl memset
/* 814EA89C | 38 7F 14 E8 */	addi r3, r31, 0x14e8
/* 814EA8A0 | 38 80 00 00 */	li r4, 0x0
/* 814EA8A4 | 38 A0 00 44 */	li r5, 0x44
/* 814EA8A8 | 4B E4 5A 8D */	bl memset
/* 814EA8AC | 48 00 00 54 */	b .L_814EA900
.L_814EA8B0:
/* 814EA8B0 | 39 06 10 60 */	addi r8, r6, 0x1060
/* 814EA8B4 | 38 A6 16 90 */	addi r5, r6, 0x1690
/* 814EA8B8 | 38 E6 15 2C */	addi r7, r6, 0x152c
/* 814EA8BC | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814EA8C0 | 38 00 00 01 */	li r0, 0x1
/* 814EA8C4 | 38 80 00 00 */	li r4, 0x0
/* 814EA8C8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 814EA8CC | 38 A0 04 00 */	li r5, 0x400
/* 814EA8D0 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814EA8D4 | 7D 03 43 78 */	mr r3, r8
/* 814EA8D8 | 98 06 17 97 */	stb r0, 0x1797(r6)
/* 814EA8DC | 4B E4 5A 59 */	bl memset
/* 814EA8E0 | 38 7F 16 90 */	addi r3, r31, 0x1690
/* 814EA8E4 | 38 80 00 00 */	li r4, 0x0
/* 814EA8E8 | 38 A0 01 00 */	li r5, 0x100
/* 814EA8EC | 4B E4 5A 49 */	bl memset
/* 814EA8F0 | 38 7F 15 2C */	addi r3, r31, 0x152c
/* 814EA8F4 | 38 80 00 00 */	li r4, 0x0
/* 814EA8F8 | 38 A0 00 44 */	li r5, 0x44
/* 814EA8FC | 4B E4 5A 39 */	bl memset
.L_814EA900:
/* 814EA900 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA904 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EA908 | 7C 08 03 A6 */	mtlr r0
/* 814EA90C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA910 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_set_HuffmanTable

# .text:0x4CC | 0x814EA914 | size: 0x11C
.fn TMCJPEGDEC_init_ptr_buff, global
/* 814EA914 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EA918 | 7C 08 02 A6 */	mflr r0
/* 814EA91C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EA920 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EA924 | 7C 7F 1B 78 */	mr r31, r3
/* 814EA928 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EA92C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EA930 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 814EA934 | 54 E0 06 FF */	clrlwi. r0, r7, 27
/* 814EA938 | 41 82 00 0C */	beq .L_814EA944
/* 814EA93C | 38 60 FF FF */	li r3, -0x1
/* 814EA940 | 48 00 00 D4 */	b .L_814EAA14
.L_814EA944:
/* 814EA944 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 814EA948 | 54 C0 06 FF */	clrlwi. r0, r6, 27
/* 814EA94C | 41 82 00 0C */	beq .L_814EA958
/* 814EA950 | 38 60 FF FF */	li r3, -0x1
/* 814EA954 | 48 00 00 C0 */	b .L_814EAA14
.L_814EA958:
/* 814EA958 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814EA95C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EA960 | 40 82 00 0C */	bne .L_814EA96C
/* 814EA964 | 38 60 FF FF */	li r3, -0x1
/* 814EA968 | 48 00 00 AC */	b .L_814EAA14
.L_814EA96C:
/* 814EA96C | 3C A0 00 01 */	lis r5, 0x1
/* 814EA970 | 38 05 00 40 */	addi r0, r5, 0x40
/* 814EA974 | 7C 06 00 40 */	cmplw r6, r0
/* 814EA978 | 40 80 00 0C */	bge .L_814EA984
/* 814EA97C | 38 60 FF FF */	li r3, -0x1
/* 814EA980 | 48 00 00 94 */	b .L_814EAA14
.L_814EA984:
/* 814EA984 | 90 E3 00 18 */	stw r7, 0x18(r3)
/* 814EA988 | 3B A7 00 20 */	addi r29, r7, 0x20
/* 814EA98C | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 814EA990 | 38 A5 FF E0 */	subi r5, r5, 0x20
/* 814EA994 | 90 A3 00 1C */	stw r5, 0x1c(r3)
/* 814EA998 | 38 A5 FF E0 */	subi r5, r5, 0x20
/* 814EA99C | 83 C4 00 08 */	lwz r30, 0x8(r4)
/* 814EA9A0 | 93 C3 00 20 */	stw r30, 0x20(r3)
/* 814EA9A4 | 7C 05 F0 40 */	cmplw r5, r30
/* 814EA9A8 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814EA9AC | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814EA9B0 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814EA9B4 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 814EA9B8 | 40 80 00 08 */	bge .L_814EA9C0
/* 814EA9BC | 7C BE 2B 78 */	mr r30, r5
.L_814EA9C0:
/* 814EA9C0 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814EA9C4 | 7F A4 EB 78 */	mr r4, r29
/* 814EA9C8 | 7F C5 F3 78 */	mr r5, r30
/* 814EA9CC | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814EA9D0 | 7D 89 03 A6 */	mtctr r12
/* 814EA9D4 | 4E 80 04 21 */	bctrl
/* 814EA9D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA9DC | 40 80 00 0C */	bge .L_814EA9E8
/* 814EA9E0 | 38 60 FF 10 */	li r3, -0xf0
/* 814EA9E4 | 48 00 00 30 */	b .L_814EAA14
.L_814EA9E8:
/* 814EA9E8 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814EA9EC | 7C 9D F2 14 */	add r4, r29, r30
/* 814EA9F0 | 80 BF 00 18 */	lwz r5, 0x18(r31)
/* 814EA9F4 | 38 04 FF DE */	subi r0, r4, 0x22
/* 814EA9F8 | 7C DE 18 50 */	subf r6, r30, r3
/* 814EA9FC | 93 BF 00 0C */	stw r29, 0xc(r31)
/* 814EAA00 | 38 60 00 00 */	li r3, 0x0
/* 814EAA04 | 90 DF 00 20 */	stw r6, 0x20(r31)
/* 814EAA08 | 90 BF 00 08 */	stw r5, 0x8(r31)
/* 814EAA0C | 90 9F 00 10 */	stw r4, 0x10(r31)
/* 814EAA10 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_814EAA14:
/* 814EAA14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EAA18 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EAA1C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EAA20 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EAA24 | 7C 08 03 A6 */	mtlr r0
/* 814EAA28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EAA2C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_init_ptr_buff

# .text:0x5E8 | 0x814EAA30 | size: 0xB8
.fn TMCJPEGDEC_get_byte, global
/* 814EAA30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EAA34 | 7C 08 02 A6 */	mflr r0
/* 814EAA38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EAA3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EAA40 | 7C 9F 23 78 */	mr r31, r4
/* 814EAA44 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814EAA48 | 7C 7E 1B 78 */	mr r30, r3
/* 814EAA4C | 80 A4 00 0C */	lwz r5, 0xc(r4)
/* 814EAA50 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814EAA54 | 7C 05 00 40 */	cmplw r5, r0
/* 814EAA58 | 41 80 00 2C */	blt .L_814EAA84
/* 814EAA5C | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814EAA60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAA64 | 41 82 00 18 */	beq .L_814EAA7C
/* 814EAA68 | 7F E3 FB 78 */	mr r3, r31
/* 814EAA6C | 48 00 06 9D */	bl TMCJPEG_814EB108
/* 814EAA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAA74 | 40 80 00 10 */	bge .L_814EAA84
/* 814EAA78 | 48 00 00 58 */	b .L_814EAAD0
.L_814EAA7C:
/* 814EAA7C | 38 60 FF 70 */	li r3, -0x90
/* 814EAA80 | 48 00 00 50 */	b .L_814EAAD0
.L_814EAA84:
/* 814EAA84 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814EAA88 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814EAA8C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EAA90 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 814EAA94 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814EAA98 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814EAA9C | 7C 03 00 40 */	cmplw r3, r0
/* 814EAAA0 | 41 80 00 2C */	blt .L_814EAACC
/* 814EAAA4 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EAAA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAAAC | 41 82 00 18 */	beq .L_814EAAC4
/* 814EAAB0 | 7F E3 FB 78 */	mr r3, r31
/* 814EAAB4 | 48 00 06 55 */	bl TMCJPEG_814EB108
/* 814EAAB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAABC | 40 80 00 10 */	bge .L_814EAACC
/* 814EAAC0 | 48 00 00 10 */	b .L_814EAAD0
.L_814EAAC4:
/* 814EAAC4 | 38 60 FF 70 */	li r3, -0x90
/* 814EAAC8 | 48 00 00 08 */	b .L_814EAAD0
.L_814EAACC:
/* 814EAACC | 38 60 00 00 */	li r3, 0x0
.L_814EAAD0:
/* 814EAAD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EAAD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EAAD8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814EAADC | 7C 08 03 A6 */	mtlr r0
/* 814EAAE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EAAE4 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_get_byte

# .text:0x6A0 | 0x814EAAE8 | size: 0x164
.fn TMCJPEGDEC_get_wbyte, global
/* 814EAAE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EAAEC | 7C 08 02 A6 */	mflr r0
/* 814EAAF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EAAF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EAAF8 | 7C 9F 23 78 */	mr r31, r4
/* 814EAAFC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EAB00 | 7C 7E 1B 78 */	mr r30, r3
/* 814EAB04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EAB08 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814EAB0C | 80 A4 00 0C */	lwz r5, 0xc(r4)
/* 814EAB10 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814EAB14 | 7C 05 00 40 */	cmplw r5, r0
/* 814EAB18 | 41 80 00 2C */	blt .L_814EAB44
/* 814EAB1C | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814EAB20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAB24 | 41 82 00 18 */	beq .L_814EAB3C
/* 814EAB28 | 7F E3 FB 78 */	mr r3, r31
/* 814EAB2C | 48 00 05 DD */	bl TMCJPEG_814EB108
/* 814EAB30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAB34 | 40 80 00 10 */	bge .L_814EAB44
/* 814EAB38 | 48 00 00 54 */	b .L_814EAB8C
.L_814EAB3C:
/* 814EAB3C | 38 60 FF 70 */	li r3, -0x90
/* 814EAB40 | 48 00 00 4C */	b .L_814EAB8C
.L_814EAB44:
/* 814EAB44 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 814EAB48 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814EAB4C | 38 64 00 01 */	addi r3, r4, 0x1
/* 814EAB50 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814EAB54 | 7C 03 00 40 */	cmplw r3, r0
/* 814EAB58 | 8B A4 00 00 */	lbz r29, 0x0(r4)
/* 814EAB5C | 41 80 00 2C */	blt .L_814EAB88
/* 814EAB60 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EAB64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAB68 | 41 82 00 18 */	beq .L_814EAB80
/* 814EAB6C | 7F E3 FB 78 */	mr r3, r31
/* 814EAB70 | 48 00 05 99 */	bl TMCJPEG_814EB108
/* 814EAB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAB78 | 40 80 00 10 */	bge .L_814EAB88
/* 814EAB7C | 48 00 00 10 */	b .L_814EAB8C
.L_814EAB80:
/* 814EAB80 | 38 60 FF 70 */	li r3, -0x90
/* 814EAB84 | 48 00 00 08 */	b .L_814EAB8C
.L_814EAB88:
/* 814EAB88 | 38 60 00 00 */	li r3, 0x0
.L_814EAB8C:
/* 814EAB8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAB90 | 57 BC 44 2E */	clrlslwi r28, r29, 24, 8
/* 814EAB94 | 40 80 00 08 */	bge .L_814EAB9C
/* 814EAB98 | 48 00 00 94 */	b .L_814EAC2C
.L_814EAB9C:
/* 814EAB9C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814EABA0 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814EABA4 | 7C 03 00 40 */	cmplw r3, r0
/* 814EABA8 | 41 80 00 2C */	blt .L_814EABD4
/* 814EABAC | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EABB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EABB4 | 41 82 00 18 */	beq .L_814EABCC
/* 814EABB8 | 7F E3 FB 78 */	mr r3, r31
/* 814EABBC | 48 00 05 4D */	bl TMCJPEG_814EB108
/* 814EABC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EABC4 | 40 80 00 10 */	bge .L_814EABD4
/* 814EABC8 | 48 00 00 54 */	b .L_814EAC1C
.L_814EABCC:
/* 814EABCC | 38 60 FF 70 */	li r3, -0x90
/* 814EABD0 | 48 00 00 4C */	b .L_814EAC1C
.L_814EABD4:
/* 814EABD4 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 814EABD8 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814EABDC | 38 64 00 01 */	addi r3, r4, 0x1
/* 814EABE0 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814EABE4 | 7C 03 00 40 */	cmplw r3, r0
/* 814EABE8 | 8B A4 00 00 */	lbz r29, 0x0(r4)
/* 814EABEC | 41 80 00 2C */	blt .L_814EAC18
/* 814EABF0 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EABF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EABF8 | 41 82 00 18 */	beq .L_814EAC10
/* 814EABFC | 7F E3 FB 78 */	mr r3, r31
/* 814EAC00 | 48 00 05 09 */	bl TMCJPEG_814EB108
/* 814EAC04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAC08 | 40 80 00 10 */	bge .L_814EAC18
/* 814EAC0C | 48 00 00 10 */	b .L_814EAC1C
.L_814EAC10:
/* 814EAC10 | 38 60 FF 70 */	li r3, -0x90
/* 814EAC14 | 48 00 00 08 */	b .L_814EAC1C
.L_814EAC18:
/* 814EAC18 | 38 60 00 00 */	li r3, 0x0
.L_814EAC1C:
/* 814EAC1C | 7C 9C EA 14 */	add r4, r28, r29
/* 814EAC20 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814EAC24 | B0 9E 00 00 */	sth r4, 0x0(r30)
/* 814EAC28 | 7C 63 00 38 */	and r3, r3, r0
.L_814EAC2C:
/* 814EAC2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EAC30 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EAC34 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EAC38 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EAC3C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814EAC40 | 7C 08 03 A6 */	mtlr r0
/* 814EAC44 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EAC48 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_get_wbyte

# .text:0x804 | 0x814EAC4C | size: 0xDC
.fn TMCJPEGDEC_get_sbyte, global
/* 814EAC4C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EAC50 | 7C 08 02 A6 */	mflr r0
/* 814EAC54 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EAC58 | BF 61 00 0C */	stmw r27, 0xc(r1)
/* 814EAC5C | 7C 7B 1B 78 */	mr r27, r3
/* 814EAC60 | 7C 9C 23 78 */	mr r28, r4
/* 814EAC64 | 7C BD 2B 78 */	mr r29, r5
/* 814EAC68 | 3B E0 00 00 */	li r31, 0x0
/* 814EAC6C | 48 00 00 9C */	b .L_814EAD08
.L_814EAC70:
/* 814EAC70 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814EAC74 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814EAC78 | 7C 03 00 40 */	cmplw r3, r0
/* 814EAC7C | 41 80 00 2C */	blt .L_814EACA8
/* 814EAC80 | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 814EAC84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAC88 | 41 82 00 18 */	beq .L_814EACA0
/* 814EAC8C | 7F A3 EB 78 */	mr r3, r29
/* 814EAC90 | 48 00 04 79 */	bl TMCJPEG_814EB108
/* 814EAC94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAC98 | 40 80 00 10 */	bge .L_814EACA8
/* 814EAC9C | 48 00 00 54 */	b .L_814EACF0
.L_814EACA0:
/* 814EACA0 | 38 60 FF 70 */	li r3, -0x90
/* 814EACA4 | 48 00 00 4C */	b .L_814EACF0
.L_814EACA8:
/* 814EACA8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 814EACAC | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 814EACB0 | 38 64 00 01 */	addi r3, r4, 0x1
/* 814EACB4 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 814EACB8 | 7C 03 00 40 */	cmplw r3, r0
/* 814EACBC | 8B C4 00 00 */	lbz r30, 0x0(r4)
/* 814EACC0 | 41 80 00 2C */	blt .L_814EACEC
/* 814EACC4 | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 814EACC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EACCC | 41 82 00 18 */	beq .L_814EACE4
/* 814EACD0 | 7F A3 EB 78 */	mr r3, r29
/* 814EACD4 | 48 00 04 35 */	bl TMCJPEG_814EB108
/* 814EACD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EACDC | 40 80 00 10 */	bge .L_814EACEC
/* 814EACE0 | 48 00 00 10 */	b .L_814EACF0
.L_814EACE4:
/* 814EACE4 | 38 60 FF 70 */	li r3, -0x90
/* 814EACE8 | 48 00 00 08 */	b .L_814EACF0
.L_814EACEC:
/* 814EACEC | 38 60 00 00 */	li r3, 0x0
.L_814EACF0:
/* 814EACF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EACF4 | 9B DB 00 00 */	stb r30, 0x0(r27)
/* 814EACF8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814EACFC | 40 80 00 08 */	bge .L_814EAD04
/* 814EAD00 | 48 00 00 14 */	b .L_814EAD14
.L_814EAD04:
/* 814EAD04 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814EAD08:
/* 814EAD08 | 7C 1F E0 40 */	cmplw r31, r28
/* 814EAD0C | 41 80 FF 64 */	blt .L_814EAC70
/* 814EAD10 | 38 60 00 00 */	li r3, 0x0
.L_814EAD14:
/* 814EAD14 | BB 61 00 0C */	lmw r27, 0xc(r1)
/* 814EAD18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EAD1C | 7C 08 03 A6 */	mtlr r0
/* 814EAD20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EAD24 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_get_sbyte

# .text:0x8E0 | 0x814EAD28 | size: 0xE4
.fn TMCJPEGDEC_move_ptr, global
/* 814EAD28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EAD2C | 7C 08 02 A6 */	mflr r0
/* 814EAD30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAD34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EAD38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EAD3C | 7C 9F 23 78 */	mr r31, r4
/* 814EAD40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814EAD44 | 7C 7E 1B 78 */	mr r30, r3
/* 814EAD48 | 41 80 00 80 */	blt .L_814EADC8
/* 814EAD4C | 48 00 00 30 */	b .L_814EAD7C
.L_814EAD50:
/* 814EAD50 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EAD54 | 7F C4 F0 50 */	subf r30, r4, r30
/* 814EAD58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAD5C | 41 82 00 18 */	beq .L_814EAD74
/* 814EAD60 | 7F E3 FB 78 */	mr r3, r31
/* 814EAD64 | 48 00 03 A5 */	bl TMCJPEG_814EB108
/* 814EAD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAD6C | 40 80 00 10 */	bge .L_814EAD7C
/* 814EAD70 | 48 00 00 84 */	b .L_814EADF4
.L_814EAD74:
/* 814EAD74 | 38 60 FF 70 */	li r3, -0x90
/* 814EAD78 | 48 00 00 7C */	b .L_814EADF4
.L_814EAD7C:
/* 814EAD7C | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814EAD80 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814EAD84 | 7C 80 18 50 */	subf r4, r0, r3
/* 814EAD88 | 7C 04 F0 00 */	cmpw r4, r30
/* 814EAD8C | 40 81 FF C4 */	ble .L_814EAD50
/* 814EAD90 | 7C 00 F2 14 */	add r0, r0, r30
/* 814EAD94 | 7C 03 00 40 */	cmplw r3, r0
/* 814EAD98 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814EAD9C | 41 81 00 54 */	bgt .L_814EADF0
/* 814EADA0 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EADA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EADA8 | 41 82 00 18 */	beq .L_814EADC0
/* 814EADAC | 7F E3 FB 78 */	mr r3, r31
/* 814EADB0 | 48 00 03 59 */	bl TMCJPEG_814EB108
/* 814EADB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EADB8 | 40 80 00 38 */	bge .L_814EADF0
/* 814EADBC | 48 00 00 38 */	b .L_814EADF4
.L_814EADC0:
/* 814EADC0 | 38 60 FF 70 */	li r3, -0x90
/* 814EADC4 | 48 00 00 30 */	b .L_814EADF4
.L_814EADC8:
/* 814EADC8 | 7F C3 00 D0 */	neg r30, r3
/* 814EADCC | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814EADD0 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 814EADD4 | 7C 00 18 50 */	subf r0, r0, r3
/* 814EADD8 | 7C 00 F0 00 */	cmpw r0, r30
/* 814EADDC | 40 80 00 0C */	bge .L_814EADE8
/* 814EADE0 | 38 60 FF 70 */	li r3, -0x90
/* 814EADE4 | 48 00 00 10 */	b .L_814EADF4
.L_814EADE8:
/* 814EADE8 | 7C 1E 18 50 */	subf r0, r30, r3
/* 814EADEC | 90 04 00 0C */	stw r0, 0xc(r4)
.L_814EADF0:
/* 814EADF0 | 38 60 00 00 */	li r3, 0x0
.L_814EADF4:
/* 814EADF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EADF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EADFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814EAE00 | 7C 08 03 A6 */	mtlr r0
/* 814EAE04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EAE08 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_move_ptr

# .text:0x9C4 | 0x814EAE0C | size: 0x124
.fn TMCJPEGDEC_load_buff, global
/* 814EAE0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EAE10 | 7C 08 02 A6 */	mflr r0
/* 814EAE14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EAE18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EAE1C | 7C 7F 1B 78 */	mr r31, r3
/* 814EAE20 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 814EAE24 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814EAE28 | 7C 06 00 40 */	cmplw r6, r0
/* 814EAE2C | 40 80 00 44 */	bge .L_814EAE70
/* 814EAE30 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EAE34 | 80 83 00 04 */	lwz r4, 0x4(r3)
.L_814EAE38:
/* 814EAE38 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 814EAE3C | 54 00 40 2E */	slwi r0, r0, 8
/* 814EAE40 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814EAE44 | 38 84 00 08 */	addi r4, r4, 0x8
/* 814EAE48 | 28 05 00 FF */	cmplwi r5, 0xff
/* 814EAE4C | 7C 00 2A 14 */	add r0, r0, r5
/* 814EAE50 | 40 82 00 08 */	bne .L_814EAE58
/* 814EAE54 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_814EAE58:
/* 814EAE58 | 2C 04 00 18 */	cmpwi r4, 0x18
/* 814EAE5C | 40 81 FF DC */	ble .L_814EAE38
/* 814EAE60 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814EAE64 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814EAE68 | 90 C3 00 0C */	stw r6, 0xc(r3)
/* 814EAE6C | 48 00 00 AC */	b .L_814EAF18
.L_814EAE70:
/* 814EAE70 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814EAE74 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814EAE78 | 7C 03 00 40 */	cmplw r3, r0
/* 814EAE7C | 41 81 00 24 */	bgt .L_814EAEA0
/* 814EAE80 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EAE84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAE88 | 41 82 00 90 */	beq .L_814EAF18
/* 814EAE8C | 7F E3 FB 78 */	mr r3, r31
/* 814EAE90 | 48 00 00 C1 */	bl TMCJPEG_814EAF50
/* 814EAE94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAE98 | 40 80 00 08 */	bge .L_814EAEA0
/* 814EAE9C | 48 00 00 80 */	b .L_814EAF1C
.L_814EAEA0:
/* 814EAEA0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814EAEA4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814EAEA8 | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 814EAEAC | 38 A3 00 01 */	addi r5, r3, 0x1
/* 814EAEB0 | 54 00 40 2E */	slwi r0, r0, 8
/* 814EAEB4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814EAEB8 | 7C 80 32 14 */	add r4, r0, r6
/* 814EAEBC | 28 06 00 FF */	cmplwi r6, 0xff
/* 814EAEC0 | 38 03 00 08 */	addi r0, r3, 0x8
/* 814EAEC4 | 90 BF 00 0C */	stw r5, 0xc(r31)
/* 814EAEC8 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 814EAECC | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814EAED0 | 40 82 00 0C */	bne .L_814EAEDC
/* 814EAED4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814EAED8 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_814EAEDC:
/* 814EAEDC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814EAEE0 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814EAEE4 | 7C 03 00 40 */	cmplw r3, r0
/* 814EAEE8 | 41 81 00 24 */	bgt .L_814EAF0C
/* 814EAEEC | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EAEF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EAEF4 | 41 82 00 24 */	beq .L_814EAF18
/* 814EAEF8 | 7F E3 FB 78 */	mr r3, r31
/* 814EAEFC | 48 00 00 55 */	bl TMCJPEG_814EAF50
/* 814EAF00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EAF04 | 40 80 00 08 */	bge .L_814EAF0C
/* 814EAF08 | 48 00 00 14 */	b .L_814EAF1C
.L_814EAF0C:
/* 814EAF0C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814EAF10 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 814EAF14 | 40 81 FF 5C */	ble .L_814EAE70
.L_814EAF18:
/* 814EAF18 | 38 60 00 00 */	li r3, 0x0
.L_814EAF1C:
/* 814EAF1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EAF20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EAF24 | 7C 08 03 A6 */	mtlr r0
/* 814EAF28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EAF2C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_load_buff

# .text:0xAE8 | 0x814EAF30 | size: 0x10
.fn TMCJPEGDEC_get_position, global
/* 814EAF30 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814EAF34 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814EAF38 | 7C 64 00 50 */	subf r3, r4, r0
/* 814EAF3C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_get_position

# .text:0xAF8 | 0x814EAF40 | size: 0x10
.fn TMCJPEGDEC_chk_possible_size, global
/* 814EAF40 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 814EAF44 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814EAF48 | 7C 64 00 50 */	subf r3, r4, r0
/* 814EAF4C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_chk_possible_size

# .text:0xB08 | 0x814EAF50 | size: 0x1B8
.fn TMCJPEG_814EAF50, local
/* 814EAF50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EAF54 | 7C 08 02 A6 */	mflr r0
/* 814EAF58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EAF5C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EAF60 | 3B E0 00 00 */	li r31, 0x0
/* 814EAF64 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EAF68 | 7C 7E 1B 78 */	mr r30, r3
/* 814EAF6C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EAF70 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814EAF74 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814EAF78 | 88 04 FF FF */	lbz r0, -0x1(r4)
/* 814EAF7C | 38 A4 FF FF */	subi r5, r4, 0x1
/* 814EAF80 | 28 00 00 FF */	cmplwi r0, 0xff
/* 814EAF84 | 40 82 00 08 */	bne .L_814EAF8C
/* 814EAF88 | 3B E0 00 01 */	li r31, 0x1
.L_814EAF8C:
/* 814EAF8C | 38 00 00 04 */	li r0, 0x4
/* 814EAF90 | 38 80 00 00 */	li r4, 0x0
/* 814EAF94 | 7C 09 03 A6 */	mtctr r0
.L_814EAF98:
/* 814EAF98 | 20 C4 00 1F */	subfic r6, r4, 0x1f
/* 814EAF9C | 38 04 00 01 */	addi r0, r4, 0x1
/* 814EAFA0 | 7C C6 28 50 */	subf r6, r6, r5
/* 814EAFA4 | 81 03 00 08 */	lwz r8, 0x8(r3)
/* 814EAFA8 | 89 26 00 00 */	lbz r9, 0x0(r6)
/* 814EAFAC | 20 E0 00 1F */	subfic r7, r0, 0x1f
/* 814EAFB0 | 38 C4 00 02 */	addi r6, r4, 0x2
/* 814EAFB4 | 38 04 00 03 */	addi r0, r4, 0x3
/* 814EAFB8 | 7D 28 21 AE */	stbx r9, r8, r4
/* 814EAFBC | 7D 07 28 50 */	subf r8, r7, r5
/* 814EAFC0 | 20 C6 00 1F */	subfic r6, r6, 0x1f
/* 814EAFC4 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 814EAFC8 | 21 20 00 1F */	subfic r9, r0, 0x1f
/* 814EAFCC | 89 48 00 00 */	lbz r10, 0x0(r8)
/* 814EAFD0 | 38 04 00 04 */	addi r0, r4, 0x4
/* 814EAFD4 | 7C E7 22 14 */	add r7, r7, r4
/* 814EAFD8 | 7D 66 28 50 */	subf r11, r6, r5
/* 814EAFDC | 99 47 00 01 */	stb r10, 0x1(r7)
/* 814EAFE0 | 21 00 00 1F */	subfic r8, r0, 0x1f
/* 814EAFE4 | 38 04 00 05 */	addi r0, r4, 0x5
/* 814EAFE8 | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 814EAFEC | 20 E0 00 1F */	subfic r7, r0, 0x1f
/* 814EAFF0 | 89 8B 00 00 */	lbz r12, 0x0(r11)
/* 814EAFF4 | 7D 69 28 50 */	subf r11, r9, r5
/* 814EAFF8 | 7D 4A 22 14 */	add r10, r10, r4
/* 814EAFFC | 38 04 00 06 */	addi r0, r4, 0x6
/* 814EB000 | 99 8A 00 02 */	stb r12, 0x2(r10)
/* 814EB004 | 20 C0 00 1F */	subfic r6, r0, 0x1f
/* 814EB008 | 38 04 00 07 */	addi r0, r4, 0x7
/* 814EB00C | 7D 28 28 50 */	subf r9, r8, r5
/* 814EB010 | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 814EB014 | 7D 07 28 50 */	subf r8, r7, r5
/* 814EB018 | 89 6B 00 00 */	lbz r11, 0x0(r11)
/* 814EB01C | 20 00 00 1F */	subfic r0, r0, 0x1f
/* 814EB020 | 7D 4A 22 14 */	add r10, r10, r4
/* 814EB024 | 7C E6 28 50 */	subf r7, r6, r5
/* 814EB028 | 99 6A 00 03 */	stb r11, 0x3(r10)
/* 814EB02C | 7C C0 28 50 */	subf r6, r0, r5
/* 814EB030 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814EB034 | 89 49 00 00 */	lbz r10, 0x0(r9)
/* 814EB038 | 7D 20 22 14 */	add r9, r0, r4
/* 814EB03C | 99 49 00 04 */	stb r10, 0x4(r9)
/* 814EB040 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814EB044 | 89 28 00 00 */	lbz r9, 0x0(r8)
/* 814EB048 | 7D 00 22 14 */	add r8, r0, r4
/* 814EB04C | 99 28 00 05 */	stb r9, 0x5(r8)
/* 814EB050 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814EB054 | 89 07 00 00 */	lbz r8, 0x0(r7)
/* 814EB058 | 7C E0 22 14 */	add r7, r0, r4
/* 814EB05C | 99 07 00 06 */	stb r8, 0x6(r7)
/* 814EB060 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814EB064 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 814EB068 | 7C C0 22 14 */	add r6, r0, r4
/* 814EB06C | 38 84 00 08 */	addi r4, r4, 0x8
/* 814EB070 | 98 E6 00 07 */	stb r7, 0x7(r6)
/* 814EB074 | 42 00 FF 24 */	bdnz .L_814EAF98
/* 814EB078 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 814EB07C | 83 A3 00 20 */	lwz r29, 0x20(r3)
/* 814EB080 | 38 04 FF E0 */	subi r0, r4, 0x20
/* 814EB084 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 814EB088 | 7C 00 E8 40 */	cmplw r0, r29
/* 814EB08C | 3B 84 00 20 */	addi r28, r4, 0x20
/* 814EB090 | 40 80 00 08 */	bge .L_814EB098
/* 814EB094 | 7C 1D 03 78 */	mr r29, r0
.L_814EB098:
/* 814EB098 | 81 9E 00 24 */	lwz r12, 0x24(r30)
/* 814EB09C | 7F 84 E3 78 */	mr r4, r28
/* 814EB0A0 | 7F A5 EB 78 */	mr r5, r29
/* 814EB0A4 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814EB0A8 | 7D 89 03 A6 */	mtctr r12
/* 814EB0AC | 4E 80 04 21 */	bctrl
/* 814EB0B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EB0B4 | 41 82 00 0C */	beq .L_814EB0C0
/* 814EB0B8 | 38 60 FF 10 */	li r3, -0xf0
/* 814EB0BC | 48 00 00 2C */	b .L_814EB0E8
.L_814EB0C0:
/* 814EB0C0 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814EB0C4 | 7C 7C EA 14 */	add r3, r28, r29
/* 814EB0C8 | 7C 9C FA 14 */	add r4, r28, r31
/* 814EB0CC | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 814EB0D0 | 7C BD 00 50 */	subf r5, r29, r0
/* 814EB0D4 | 38 03 FF DE */	subi r0, r3, 0x22
/* 814EB0D8 | 90 BE 00 20 */	stw r5, 0x20(r30)
/* 814EB0DC | 38 60 00 00 */	li r3, 0x0
/* 814EB0E0 | 90 9E 00 0C */	stw r4, 0xc(r30)
/* 814EB0E4 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_814EB0E8:
/* 814EB0E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EB0EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EB0F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EB0F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EB0F8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814EB0FC | 7C 08 03 A6 */	mtlr r0
/* 814EB100 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EB104 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EAF50

# .text:0xCC0 | 0x814EB108 | size: 0x198
.fn TMCJPEG_814EB108, local
/* 814EB108 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EB10C | 7C 08 02 A6 */	mflr r0
/* 814EB110 | 38 A0 00 04 */	li r5, 0x4
/* 814EB114 | 38 80 00 00 */	li r4, 0x0
/* 814EB118 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EB11C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EB120 | 7C 7F 1B 78 */	mr r31, r3
/* 814EB124 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EB128 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EB12C | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 814EB130 | 38 06 FF FF */	subi r0, r6, 0x1
/* 814EB134 | 7C A9 03 A6 */	mtctr r5
.L_814EB138:
/* 814EB138 | 20 C4 00 1F */	subfic r6, r4, 0x1f
/* 814EB13C | 38 A4 00 01 */	addi r5, r4, 0x1
/* 814EB140 | 7C C6 00 50 */	subf r6, r6, r0
/* 814EB144 | 81 03 00 08 */	lwz r8, 0x8(r3)
/* 814EB148 | 89 26 00 00 */	lbz r9, 0x0(r6)
/* 814EB14C | 20 E5 00 1F */	subfic r7, r5, 0x1f
/* 814EB150 | 38 C4 00 02 */	addi r6, r4, 0x2
/* 814EB154 | 38 A4 00 03 */	addi r5, r4, 0x3
/* 814EB158 | 7D 28 21 AE */	stbx r9, r8, r4
/* 814EB15C | 7D 07 00 50 */	subf r8, r7, r0
/* 814EB160 | 20 C6 00 1F */	subfic r6, r6, 0x1f
/* 814EB164 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 814EB168 | 21 25 00 1F */	subfic r9, r5, 0x1f
/* 814EB16C | 89 48 00 00 */	lbz r10, 0x0(r8)
/* 814EB170 | 38 A4 00 04 */	addi r5, r4, 0x4
/* 814EB174 | 7C E7 22 14 */	add r7, r7, r4
/* 814EB178 | 7D 66 00 50 */	subf r11, r6, r0
/* 814EB17C | 99 47 00 01 */	stb r10, 0x1(r7)
/* 814EB180 | 21 05 00 1F */	subfic r8, r5, 0x1f
/* 814EB184 | 38 A4 00 05 */	addi r5, r4, 0x5
/* 814EB188 | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 814EB18C | 20 E5 00 1F */	subfic r7, r5, 0x1f
/* 814EB190 | 89 8B 00 00 */	lbz r12, 0x0(r11)
/* 814EB194 | 38 A4 00 06 */	addi r5, r4, 0x6
/* 814EB198 | 7D 4A 22 14 */	add r10, r10, r4
/* 814EB19C | 7D 69 00 50 */	subf r11, r9, r0
/* 814EB1A0 | 99 8A 00 02 */	stb r12, 0x2(r10)
/* 814EB1A4 | 20 C5 00 1F */	subfic r6, r5, 0x1f
/* 814EB1A8 | 38 A4 00 07 */	addi r5, r4, 0x7
/* 814EB1AC | 7D 28 00 50 */	subf r9, r8, r0
/* 814EB1B0 | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 814EB1B4 | 7D 07 00 50 */	subf r8, r7, r0
/* 814EB1B8 | 20 A5 00 1F */	subfic r5, r5, 0x1f
/* 814EB1BC | 89 6B 00 00 */	lbz r11, 0x0(r11)
/* 814EB1C0 | 7C E6 00 50 */	subf r7, r6, r0
/* 814EB1C4 | 7C C5 00 50 */	subf r6, r5, r0
/* 814EB1C8 | 7C AA 22 14 */	add r5, r10, r4
/* 814EB1CC | 99 65 00 03 */	stb r11, 0x3(r5)
/* 814EB1D0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814EB1D4 | 89 29 00 00 */	lbz r9, 0x0(r9)
/* 814EB1D8 | 7C A5 22 14 */	add r5, r5, r4
/* 814EB1DC | 99 25 00 04 */	stb r9, 0x4(r5)
/* 814EB1E0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814EB1E4 | 89 08 00 00 */	lbz r8, 0x0(r8)
/* 814EB1E8 | 7C A5 22 14 */	add r5, r5, r4
/* 814EB1EC | 99 05 00 05 */	stb r8, 0x5(r5)
/* 814EB1F0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814EB1F4 | 88 E7 00 00 */	lbz r7, 0x0(r7)
/* 814EB1F8 | 7C A5 22 14 */	add r5, r5, r4
/* 814EB1FC | 98 E5 00 06 */	stb r7, 0x6(r5)
/* 814EB200 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814EB204 | 88 C6 00 00 */	lbz r6, 0x0(r6)
/* 814EB208 | 7C A5 22 14 */	add r5, r5, r4
/* 814EB20C | 38 84 00 08 */	addi r4, r4, 0x8
/* 814EB210 | 98 C5 00 07 */	stb r6, 0x7(r5)
/* 814EB214 | 42 00 FF 24 */	bdnz .L_814EB138
/* 814EB218 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 814EB21C | 83 C3 00 20 */	lwz r30, 0x20(r3)
/* 814EB220 | 38 04 FF E0 */	subi r0, r4, 0x20
/* 814EB224 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 814EB228 | 7C 00 F0 40 */	cmplw r0, r30
/* 814EB22C | 3B A4 00 20 */	addi r29, r4, 0x20
/* 814EB230 | 40 80 00 08 */	bge .L_814EB238
/* 814EB234 | 7C 1E 03 78 */	mr r30, r0
.L_814EB238:
/* 814EB238 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814EB23C | 7F A4 EB 78 */	mr r4, r29
/* 814EB240 | 7F C5 F3 78 */	mr r5, r30
/* 814EB244 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814EB248 | 7D 89 03 A6 */	mtctr r12
/* 814EB24C | 4E 80 04 21 */	bctrl
/* 814EB250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EB254 | 41 82 00 0C */	beq .L_814EB260
/* 814EB258 | 38 60 FF 10 */	li r3, -0xf0
/* 814EB25C | 48 00 00 28 */	b .L_814EB284
.L_814EB260:
/* 814EB260 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814EB264 | 7C 9D F2 14 */	add r4, r29, r30
/* 814EB268 | 38 04 FF DE */	subi r0, r4, 0x22
/* 814EB26C | 93 BF 00 0C */	stw r29, 0xc(r31)
/* 814EB270 | 7C BE 18 50 */	subf r5, r30, r3
/* 814EB274 | 38 60 00 00 */	li r3, 0x0
/* 814EB278 | 90 BF 00 20 */	stw r5, 0x20(r31)
/* 814EB27C | 90 9F 00 10 */	stw r4, 0x10(r31)
/* 814EB280 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_814EB284:
/* 814EB284 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EB288 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EB28C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EB290 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EB294 | 7C 08 03 A6 */	mtlr r0
/* 814EB298 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EB29C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EB108

# .text:0xE58 | 0x814EB2A0 | size: 0x88
.fn TMCJPEGDEC_init_buff_thumbnail, global
/* 814EB2A0 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 814EB2A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EB2A8 | 40 82 00 0C */	bne .L_814EB2B4
/* 814EB2AC | 38 60 FF FF */	li r3, -0x1
/* 814EB2B0 | 4E 80 00 20 */	blr
.L_814EB2B4:
/* 814EB2B4 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 814EB2B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EB2BC | 40 82 00 0C */	bne .L_814EB2C8
/* 814EB2C0 | 38 60 FF FF */	li r3, -0x1
/* 814EB2C4 | 4E 80 00 20 */	blr
.L_814EB2C8:
/* 814EB2C8 | 80 E5 00 00 */	lwz r7, 0x0(r5)
/* 814EB2CC | 38 00 00 00 */	li r0, 0x0
/* 814EB2D0 | 90 E4 00 18 */	stw r7, 0x18(r4)
/* 814EB2D4 | 80 C5 00 04 */	lwz r6, 0x4(r5)
/* 814EB2D8 | 90 C4 00 1C */	stw r6, 0x1c(r4)
/* 814EB2DC | 80 C5 00 08 */	lwz r6, 0x8(r5)
/* 814EB2E0 | 90 C4 00 20 */	stw r6, 0x20(r4)
/* 814EB2E4 | 80 C5 00 0C */	lwz r6, 0xc(r5)
/* 814EB2E8 | 90 C4 00 24 */	stw r6, 0x24(r4)
/* 814EB2EC | 80 A5 00 10 */	lwz r5, 0x10(r5)
/* 814EB2F0 | 90 A4 00 28 */	stw r5, 0x28(r4)
/* 814EB2F4 | 90 E4 00 08 */	stw r7, 0x8(r4)
/* 814EB2F8 | 80 C3 06 74 */	lwz r6, 0x674(r3)
/* 814EB2FC | 80 A3 06 6C */	lwz r5, 0x66c(r3)
/* 814EB300 | 7C A6 2A 14 */	add r5, r6, r5
/* 814EB304 | 90 A4 00 0C */	stw r5, 0xc(r4)
/* 814EB308 | 80 C3 06 70 */	lwz r6, 0x670(r3)
/* 814EB30C | 38 60 00 00 */	li r3, 0x0
/* 814EB310 | 7C A5 32 14 */	add r5, r5, r6
/* 814EB314 | 90 04 00 20 */	stw r0, 0x20(r4)
/* 814EB318 | 38 05 FF DE */	subi r0, r5, 0x22
/* 814EB31C | 90 A4 00 10 */	stw r5, 0x10(r4)
/* 814EB320 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 814EB324 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_init_buff_thumbnail

# .text:0xEE0 | 0x814EB328 | size: 0x10
.fn TMCJPEGDEC_init_buff, global
/* 814EB328 | 38 00 00 00 */	li r0, 0x0
/* 814EB32C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814EB330 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814EB334 | 4B FF FA D8 */	b TMCJPEGDEC_load_buff
.endfn TMCJPEGDEC_init_buff

# .text:0xEF0 | 0x814EB338 | size: 0xA4
.fn TMCJPEGDEC_rewind_ptr, global
/* 814EB338 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EB33C | 7C 08 02 A6 */	mflr r0
/* 814EB340 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EB344 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EB348 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EB34C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EB350 | 7C 7D 1B 78 */	mr r29, r3
/* 814EB354 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 814EB358 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 814EB35C | 3B DE FF F8 */	subi r30, r30, 0x8
/* 814EB360 | 48 00 00 48 */	b .L_814EB3A8
.L_814EB364:
/* 814EB364 | 7F A4 EB 78 */	mr r4, r29
/* 814EB368 | 38 60 FF FF */	li r3, -0x1
/* 814EB36C | 4B FF F9 BD */	bl TMCJPEGDEC_move_ptr
/* 814EB370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EB374 | 40 80 00 08 */	bge .L_814EB37C
/* 814EB378 | 48 00 00 48 */	b .L_814EB3C0
.L_814EB37C:
/* 814EB37C | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 814EB380 | 28 00 00 FF */	cmplwi r0, 0xff
/* 814EB384 | 40 82 00 1C */	bne .L_814EB3A0
/* 814EB388 | 7F A4 EB 78 */	mr r4, r29
/* 814EB38C | 38 60 FF FF */	li r3, -0x1
/* 814EB390 | 4B FF F9 99 */	bl TMCJPEGDEC_move_ptr
/* 814EB394 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EB398 | 40 80 00 08 */	bge .L_814EB3A0
/* 814EB39C | 48 00 00 24 */	b .L_814EB3C0
.L_814EB3A0:
/* 814EB3A0 | 57 FF C2 3E */	srwi r31, r31, 8
/* 814EB3A4 | 3B DE FF F8 */	subi r30, r30, 0x8
.L_814EB3A8:
/* 814EB3A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814EB3AC | 40 80 FF B8 */	bge .L_814EB364
/* 814EB3B0 | 38 00 00 00 */	li r0, 0x0
/* 814EB3B4 | 38 60 00 00 */	li r3, 0x0
/* 814EB3B8 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 814EB3BC | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814EB3C0:
/* 814EB3C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EB3C4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EB3C8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EB3CC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EB3D0 | 7C 08 03 A6 */	mtlr r0
/* 814EB3D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EB3D8 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_rewind_ptr

# .text:0xF94 | 0x814EB3DC | size: 0x404
.fn TMCJPEGDEC_IdctBlock_Lumi, global
/* 814EB3DC | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 814EB3E0 | 7C 08 02 A6 */	mflr r0
/* 814EB3E4 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 814EB3E8 | 7C C0 26 70 */	srawi r0, r6, 4
/* 814EB3EC | 54 06 18 39 */	slwi. r6, r0, 3
/* 814EB3F0 | BE 41 01 08 */	stmw r18, 0x108(r1)
/* 814EB3F4 | 7C 9E 23 78 */	mr r30, r4
/* 814EB3F8 | 7C BF 2B 78 */	mr r31, r5
/* 814EB3FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814EB400 | 38 06 00 07 */	addi r0, r6, 0x7
/* 814EB404 | 3A A0 00 00 */	li r21, 0x0
/* 814EB408 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814EB40C | 7C 09 03 A6 */	mtctr r0
/* 814EB410 | 40 81 01 34 */	ble .L_814EB544
.L_814EB414:
/* 814EB414 | 81 83 00 10 */	lwz r12, 0x10(r3)
/* 814EB418 | 82 43 00 18 */	lwz r18, 0x18(r3)
/* 814EB41C | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 814EB420 | 7D 80 93 78 */	or r0, r12, r18
/* 814EB424 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814EB428 | 7D 40 03 78 */	or r0, r10, r0
/* 814EB42C | 82 63 00 1C */	lwz r19, 0x1c(r3)
/* 814EB430 | 7D 00 03 78 */	or r0, r8, r0
/* 814EB434 | 81 63 00 14 */	lwz r11, 0x14(r3)
/* 814EB438 | 7E 60 03 78 */	or r0, r19, r0
/* 814EB43C | 81 23 00 0C */	lwz r9, 0xc(r3)
/* 814EB440 | 7D 60 03 78 */	or r0, r11, r0
/* 814EB444 | 7D 20 03 79 */	or. r0, r9, r0
/* 814EB448 | 40 82 00 2C */	bne .L_814EB474
/* 814EB44C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EB450 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814EB454 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814EB458 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 814EB45C | 90 04 00 10 */	stw r0, 0x10(r4)
/* 814EB460 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814EB464 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814EB468 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814EB46C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814EB470 | 48 00 00 C4 */	b .L_814EB534
.L_814EB474:
/* 814EB474 | 7C F2 50 50 */	subf r7, r18, r10
/* 814EB478 | 7C CB 4A 14 */	add r6, r11, r9
/* 814EB47C | 7C 09 58 50 */	subf r0, r9, r11
/* 814EB480 | 7C A8 9A 14 */	add r5, r8, r19
/* 814EB484 | 1D 27 00 B5 */	mulli r9, r7, 0xb5
/* 814EB488 | 7E F3 40 50 */	subf r23, r19, r8
/* 814EB48C | 7D 06 28 50 */	subf r8, r6, r5
/* 814EB490 | 81 63 00 00 */	lwz r11, 0x0(r3)
/* 814EB494 | 7C E0 BA 14 */	add r7, r0, r23
/* 814EB498 | 7D 34 46 70 */	srawi r20, r9, 8
/* 814EB49C | 1D 28 00 B5 */	mulli r9, r8, 0xb5
/* 814EB4A0 | 7D 52 52 14 */	add r10, r18, r10
/* 814EB4A4 | 7E 6C 58 50 */	subf r19, r12, r11
/* 814EB4A8 | 7E 4B 62 14 */	add r18, r11, r12
/* 814EB4AC | 1D 07 00 62 */	mulli r8, r7, 0x62
/* 814EB4B0 | 7E D4 52 14 */	add r22, r20, r10
/* 814EB4B4 | 7D 29 46 70 */	srawi r9, r9, 8
/* 814EB4B8 | 7D 73 A2 14 */	add r11, r19, r20
/* 814EB4BC | 7D 94 98 50 */	subf r12, r20, r19
/* 814EB4C0 | 7D 52 B2 14 */	add r10, r18, r22
/* 814EB4C4 | 1C F7 01 4E */	mulli r7, r23, 0x14e
/* 814EB4C8 | 7D 14 46 70 */	srawi r20, r8, 8
/* 814EB4CC | 7E 56 90 50 */	subf r18, r22, r18
/* 814EB4D0 | 7C E7 46 70 */	srawi r7, r7, 8
/* 814EB4D4 | 7C F4 38 50 */	subf r7, r20, r7
/* 814EB4D8 | 7C C6 3A 14 */	add r6, r6, r7
/* 814EB4DC | 7E 65 32 14 */	add r19, r5, r6
/* 814EB4E0 | 7D 09 3A 14 */	add r8, r9, r7
/* 814EB4E4 | 7C EA 9A 14 */	add r7, r10, r19
/* 814EB4E8 | 90 E4 00 00 */	stw r7, 0x0(r4)
/* 814EB4EC | 7C CB 42 14 */	add r6, r11, r8
/* 814EB4F0 | 7C A8 58 50 */	subf r5, r8, r11
/* 814EB4F4 | 1D 00 00 8B */	mulli r8, r0, 0x8b
/* 814EB4F8 | 7C 13 50 50 */	subf r0, r19, r10
/* 814EB4FC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814EB500 | 7D 00 46 70 */	srawi r0, r8, 8
/* 814EB504 | 90 C4 00 04 */	stw r6, 0x4(r4)
/* 814EB508 | 7C F4 02 14 */	add r7, r20, r0
/* 814EB50C | 7C C7 4A 14 */	add r6, r7, r9
/* 814EB510 | 90 A4 00 18 */	stw r5, 0x18(r4)
/* 814EB514 | 7C 0C 32 14 */	add r0, r12, r6
/* 814EB518 | 7C B2 3A 14 */	add r5, r18, r7
/* 814EB51C | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814EB520 | 7C C6 60 50 */	subf r6, r6, r12
/* 814EB524 | 7C 07 90 50 */	subf r0, r7, r18
/* 814EB528 | 90 C4 00 14 */	stw r6, 0x14(r4)
/* 814EB52C | 90 A4 00 0C */	stw r5, 0xc(r4)
/* 814EB530 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814EB534:
/* 814EB534 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814EB538 | 38 84 00 20 */	addi r4, r4, 0x20
/* 814EB53C | 3A B5 00 08 */	addi r21, r21, 0x8
/* 814EB540 | 42 00 FE D4 */	bdnz .L_814EB414
.L_814EB544:
/* 814EB544 | 56 A0 10 3A */	slwi r0, r21, 2
/* 814EB548 | 3A 81 00 08 */	addi r20, r1, 0x8
/* 814EB54C | 7E 94 02 14 */	add r20, r20, r0
/* 814EB550 | 48 00 00 1C */	b .L_814EB56C
.L_814EB554:
/* 814EB554 | 7E 83 A3 78 */	mr r3, r20
/* 814EB558 | 38 80 00 00 */	li r4, 0x0
/* 814EB55C | 38 A0 00 20 */	li r5, 0x20
/* 814EB560 | 4B E4 4D D5 */	bl memset
/* 814EB564 | 3A 94 00 20 */	addi r20, r20, 0x20
/* 814EB568 | 3A B5 00 08 */	addi r21, r21, 0x8
.L_814EB56C:
/* 814EB56C | 2C 15 00 38 */	cmpwi r21, 0x38
/* 814EB570 | 40 81 FF E4 */	ble .L_814EB554
/* 814EB574 | 57 E4 13 BA */	clrlslwi r4, r31, 16, 2
/* 814EB578 | 57 E0 1B 78 */	clrlslwi r0, r31, 16, 3
/* 814EB57C | 7C DF 00 50 */	subf r6, r31, r0
/* 814EB580 | 38 60 00 08 */	li r3, 0x8
/* 814EB584 | 1C FF 00 06 */	mulli r7, r31, 0x6
/* 814EB588 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 814EB58C | 7D 04 FA 14 */	add r8, r4, r31
/* 814EB590 | 7D 3F 20 50 */	subf r9, r31, r4
/* 814EB594 | 57 EA 0B FC */	clrlslwi r10, r31, 16, 1
/* 814EB598 | 39 60 00 07 */	li r11, 0x7
/* 814EB59C | 38 00 00 FF */	li r0, 0xff
/* 814EB5A0 | 7C 69 03 A6 */	mtctr r3
.L_814EB5A4:
/* 814EB5A4 | 83 A5 00 80 */	lwz r29, 0x80(r5)
/* 814EB5A8 | 7C 7E 5A 14 */	add r3, r30, r11
/* 814EB5AC | 81 85 00 C0 */	lwz r12, 0xc0(r5)
/* 814EB5B0 | 83 85 00 40 */	lwz r28, 0x40(r5)
/* 814EB5B4 | 7F B4 63 78 */	or r20, r29, r12
/* 814EB5B8 | 82 A5 00 20 */	lwz r21, 0x20(r5)
/* 814EB5BC | 7F 94 A3 78 */	or r20, r28, r20
/* 814EB5C0 | 83 25 00 E0 */	lwz r25, 0xe0(r5)
/* 814EB5C4 | 7E B4 A3 78 */	or r20, r21, r20
/* 814EB5C8 | 82 E5 00 A0 */	lwz r23, 0xa0(r5)
/* 814EB5CC | 7F 34 A3 78 */	or r20, r25, r20
/* 814EB5D0 | 83 45 00 60 */	lwz r26, 0x60(r5)
/* 814EB5D4 | 7E F4 A3 78 */	or r20, r23, r20
/* 814EB5D8 | 7F 54 A3 79 */	or. r20, r26, r20
/* 814EB5DC | 40 82 00 60 */	bne .L_814EB63C
/* 814EB5E0 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 814EB5E4 | 3A 80 00 00 */	li r20, 0x0
/* 814EB5E8 | 7D 8C 5E 70 */	srawi r12, r12, 11
/* 814EB5EC | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814EB5F0 | 2C 0C 01 00 */	cmpwi r12, 0x100
/* 814EB5F4 | 40 80 00 10 */	bge .L_814EB604
/* 814EB5F8 | 2C 0C FF FF */	cmpwi r12, -0x1
/* 814EB5FC | 40 81 00 08 */	ble .L_814EB604
/* 814EB600 | 3A 80 00 01 */	li r20, 0x1
.L_814EB604:
/* 814EB604 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814EB608 | 41 82 00 08 */	beq .L_814EB610
/* 814EB60C | 48 00 00 0C */	b .L_814EB618
.L_814EB610:
/* 814EB610 | 7D 8C FE 70 */	srawi r12, r12, 31
/* 814EB614 | 7C 0C 60 78 */	andc r12, r0, r12
.L_814EB618:
/* 814EB618 | 7D 86 19 AE */	stbx r12, r6, r3
/* 814EB61C | 7D 87 19 AE */	stbx r12, r7, r3
/* 814EB620 | 7D 88 19 AE */	stbx r12, r8, r3
/* 814EB624 | 7D 84 19 AE */	stbx r12, r4, r3
/* 814EB628 | 7D 89 19 AE */	stbx r12, r9, r3
/* 814EB62C | 7D 8A 19 AE */	stbx r12, r10, r3
/* 814EB630 | 7D 9F 19 AE */	stbx r12, r31, r3
/* 814EB634 | 99 83 00 00 */	stb r12, 0x0(r3)
/* 814EB638 | 48 00 01 88 */	b .L_814EB7C0
.L_814EB63C:
/* 814EB63C | 7E 8C E0 50 */	subf r20, r12, r28
/* 814EB640 | 7F 17 D2 14 */	add r24, r23, r26
/* 814EB644 | 7E D5 CA 14 */	add r22, r21, r25
/* 814EB648 | 7E FA B8 50 */	subf r23, r26, r23
/* 814EB64C | 83 45 00 00 */	lwz r26, 0x0(r5)
/* 814EB650 | 7F 39 A8 50 */	subf r25, r25, r21
/* 814EB654 | 1F 74 00 B5 */	mulli r27, r20, 0xb5
/* 814EB658 | 7E B8 B0 50 */	subf r21, r24, r22
/* 814EB65C | 3E 7A 00 04 */	addis r19, r26, 0x4
/* 814EB660 | 7D 8C E2 14 */	add r12, r12, r28
/* 814EB664 | 7F 7B 46 70 */	srawi r27, r27, 8
/* 814EB668 | 7E 97 CA 14 */	add r20, r23, r25
/* 814EB66C | 1F 55 00 B5 */	mulli r26, r21, 0xb5
/* 814EB670 | 7F 9D 98 50 */	subf r28, r29, r19
/* 814EB674 | 7E 5B 62 14 */	add r18, r27, r12
/* 814EB678 | 7E 73 EA 14 */	add r19, r19, r29
/* 814EB67C | 1E B4 00 62 */	mulli r21, r20, 0x62
/* 814EB680 | 7F 4C 46 70 */	srawi r12, r26, 8
/* 814EB684 | 7F 5C DA 14 */	add r26, r28, r27
/* 814EB688 | 1E 99 01 4E */	mulli r20, r25, 0x14e
/* 814EB68C | 7F 7B E0 50 */	subf r27, r27, r28
/* 814EB690 | 7E B5 46 70 */	srawi r21, r21, 8
/* 814EB694 | 7F B3 92 14 */	add r29, r19, r18
/* 814EB698 | 7E 94 46 70 */	srawi r20, r20, 8
/* 814EB69C | 7F 32 98 50 */	subf r25, r18, r19
/* 814EB6A0 | 7E 75 A0 50 */	subf r19, r21, r20
/* 814EB6A4 | 1F 97 00 8B */	mulli r28, r23, 0x8b
/* 814EB6A8 | 7F 18 9A 14 */	add r24, r24, r19
/* 814EB6AC | 7E EC 9A 14 */	add r23, r12, r19
/* 814EB6B0 | 7E 56 C2 14 */	add r18, r22, r24
/* 814EB6B4 | 7F 98 46 70 */	srawi r24, r28, 8
/* 814EB6B8 | 7E 9D 92 14 */	add r20, r29, r18
/* 814EB6BC | 7E B5 C2 14 */	add r21, r21, r24
/* 814EB6C0 | 7E 96 9E 71 */	srawi. r22, r20, 19
/* 814EB6C4 | 7D 95 62 14 */	add r12, r21, r12
/* 814EB6C8 | 40 82 00 0C */	bne .L_814EB6D4
/* 814EB6CC | 7E 96 5E 70 */	srawi r22, r20, 11
/* 814EB6D0 | 48 00 00 0C */	b .L_814EB6DC
.L_814EB6D4:
/* 814EB6D4 | 7E 96 FE 70 */	srawi r22, r20, 31
/* 814EB6D8 | 7C 16 B0 78 */	andc r22, r0, r22
.L_814EB6DC:
/* 814EB6DC | 7E 92 E8 50 */	subf r20, r18, r29
/* 814EB6E0 | 9A C3 00 00 */	stb r22, 0x0(r3)
/* 814EB6E4 | 7E 96 9E 71 */	srawi. r22, r20, 19
/* 814EB6E8 | 40 82 00 0C */	bne .L_814EB6F4
/* 814EB6EC | 7E 96 5E 70 */	srawi r22, r20, 11
/* 814EB6F0 | 48 00 00 0C */	b .L_814EB6FC
.L_814EB6F4:
/* 814EB6F4 | 7E 96 FE 70 */	srawi r22, r20, 31
/* 814EB6F8 | 7C 16 B0 78 */	andc r22, r0, r22
.L_814EB6FC:
/* 814EB6FC | 7E 9A BA 14 */	add r20, r26, r23
/* 814EB700 | 7E C6 19 AE */	stbx r22, r6, r3
/* 814EB704 | 7E 96 9E 71 */	srawi. r22, r20, 19
/* 814EB708 | 40 82 00 0C */	bne .L_814EB714
/* 814EB70C | 7E 96 5E 70 */	srawi r22, r20, 11
/* 814EB710 | 48 00 00 0C */	b .L_814EB71C
.L_814EB714:
/* 814EB714 | 7E 96 FE 70 */	srawi r22, r20, 31
/* 814EB718 | 7C 16 B0 78 */	andc r22, r0, r22
.L_814EB71C:
/* 814EB71C | 7E 97 D0 50 */	subf r20, r23, r26
/* 814EB720 | 7E DF 19 AE */	stbx r22, r31, r3
/* 814EB724 | 7E 96 9E 71 */	srawi. r22, r20, 19
/* 814EB728 | 40 82 00 0C */	bne .L_814EB734
/* 814EB72C | 7E 96 5E 70 */	srawi r22, r20, 11
/* 814EB730 | 48 00 00 0C */	b .L_814EB73C
.L_814EB734:
/* 814EB734 | 7E 96 FE 70 */	srawi r22, r20, 31
/* 814EB738 | 7C 16 B0 78 */	andc r22, r0, r22
.L_814EB73C:
/* 814EB73C | 7E 9B 62 14 */	add r20, r27, r12
/* 814EB740 | 7E C7 19 AE */	stbx r22, r7, r3
/* 814EB744 | 7E 96 9E 71 */	srawi. r22, r20, 19
/* 814EB748 | 40 82 00 0C */	bne .L_814EB754
/* 814EB74C | 7E 96 5E 70 */	srawi r22, r20, 11
/* 814EB750 | 48 00 00 0C */	b .L_814EB75C
.L_814EB754:
/* 814EB754 | 7E 96 FE 70 */	srawi r22, r20, 31
/* 814EB758 | 7C 16 B0 78 */	andc r22, r0, r22
.L_814EB75C:
/* 814EB75C | 7E 8C D8 50 */	subf r20, r12, r27
/* 814EB760 | 7E CA 19 AE */	stbx r22, r10, r3
/* 814EB764 | 7E 8C 9E 71 */	srawi. r12, r20, 19
/* 814EB768 | 40 82 00 0C */	bne .L_814EB774
/* 814EB76C | 7E 8C 5E 70 */	srawi r12, r20, 11
/* 814EB770 | 48 00 00 0C */	b .L_814EB77C
.L_814EB774:
/* 814EB774 | 7E 8C FE 70 */	srawi r12, r20, 31
/* 814EB778 | 7C 0C 60 78 */	andc r12, r0, r12
.L_814EB77C:
/* 814EB77C | 7E 99 AA 14 */	add r20, r25, r21
/* 814EB780 | 7D 88 19 AE */	stbx r12, r8, r3
/* 814EB784 | 7E 8C 9E 71 */	srawi. r12, r20, 19
/* 814EB788 | 40 82 00 0C */	bne .L_814EB794
/* 814EB78C | 7E 8C 5E 70 */	srawi r12, r20, 11
/* 814EB790 | 48 00 00 0C */	b .L_814EB79C
.L_814EB794:
/* 814EB794 | 7E 8C FE 70 */	srawi r12, r20, 31
/* 814EB798 | 7C 0C 60 78 */	andc r12, r0, r12
.L_814EB79C:
/* 814EB79C | 7E 95 C8 50 */	subf r20, r21, r25
/* 814EB7A0 | 7D 89 19 AE */	stbx r12, r9, r3
/* 814EB7A4 | 7E 8C 9E 71 */	srawi. r12, r20, 19
/* 814EB7A8 | 40 82 00 0C */	bne .L_814EB7B4
/* 814EB7AC | 7E 8C 5E 70 */	srawi r12, r20, 11
/* 814EB7B0 | 48 00 00 0C */	b .L_814EB7BC
.L_814EB7B4:
/* 814EB7B4 | 7E 8C FE 70 */	srawi r12, r20, 31
/* 814EB7B8 | 7C 0C 60 78 */	andc r12, r0, r12
.L_814EB7BC:
/* 814EB7BC | 7D 84 19 AE */	stbx r12, r4, r3
.L_814EB7C0:
/* 814EB7C0 | 38 A5 FF FC */	subi r5, r5, 0x4
/* 814EB7C4 | 39 6B FF FF */	subi r11, r11, 0x1
/* 814EB7C8 | 42 00 FD DC */	bdnz .L_814EB5A4
/* 814EB7CC | BA 41 01 08 */	lmw r18, 0x108(r1)
/* 814EB7D0 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 814EB7D4 | 7C 08 03 A6 */	mtlr r0
/* 814EB7D8 | 38 21 01 40 */	addi r1, r1, 0x140
/* 814EB7DC | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock_Lumi

# .text:0x1398 | 0x814EB7E0 | size: 0x718
.fn TMCJPEGDEC_IdctBlock_Col, global
/* 814EB7E0 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 814EB7E4 | 7C 08 02 A6 */	mflr r0
/* 814EB7E8 | 2C 06 00 11 */	cmpwi r6, 0x11
/* 814EB7EC | 90 01 01 34 */	stw r0, 0x134(r1)
/* 814EB7F0 | BF 21 01 14 */	stmw r25, 0x114(r1)
/* 814EB7F4 | 7C 9F 23 78 */	mr r31, r4
/* 814EB7F8 | 40 82 00 54 */	bne .L_814EB84C
/* 814EB7FC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EB800 | 38 60 00 00 */	li r3, 0x0
/* 814EB804 | 7C 00 5E 70 */	srawi r0, r0, 11
/* 814EB808 | 2C 00 00 80 */	cmpwi r0, 0x80
/* 814EB80C | 40 80 00 10 */	bge .L_814EB81C
/* 814EB810 | 2C 00 FF 7F */	cmpwi r0, -0x81
/* 814EB814 | 40 81 00 08 */	ble .L_814EB81C
/* 814EB818 | 38 60 00 01 */	li r3, 0x1
.L_814EB81C:
/* 814EB81C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EB820 | 7F E3 FB 78 */	mr r3, r31
/* 814EB824 | 41 82 00 08 */	beq .L_814EB82C
/* 814EB828 | 48 00 00 14 */	b .L_814EB83C
.L_814EB82C:
/* 814EB82C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EB830 | 38 00 FF 80 */	li r0, -0x80
/* 814EB834 | 40 81 00 08 */	ble .L_814EB83C
/* 814EB838 | 38 00 00 7F */	li r0, 0x7f
.L_814EB83C:
/* 814EB83C | 7C 04 07 74 */	extsb r4, r0
/* 814EB840 | 38 A0 00 40 */	li r5, 0x40
/* 814EB844 | 4B E4 4A F1 */	bl memset
/* 814EB848 | 48 00 06 9C */	b .L_814EBEE4
.L_814EB84C:
/* 814EB84C | 54 C0 07 3E */	clrlwi r0, r6, 28
/* 814EB850 | 7C C4 26 70 */	srawi r4, r6, 4
/* 814EB854 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814EB858 | 54 85 18 38 */	slwi r5, r4, 3
/* 814EB85C | 41 81 01 D4 */	bgt .L_814EBA30
/* 814EB860 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EB864 | 38 85 00 07 */	addi r4, r5, 0x7
/* 814EB868 | 39 61 00 08 */	addi r11, r1, 0x8
/* 814EB86C | 3B C0 00 00 */	li r30, 0x0
/* 814EB870 | 54 84 E8 FE */	srwi r4, r4, 3
/* 814EB874 | 40 81 01 88 */	ble .L_814EB9FC
/* 814EB878 | 54 80 F8 7F */	srwi. r0, r4, 1
/* 814EB87C | 54 9E 18 38 */	slwi r30, r4, 3
/* 814EB880 | 7C 09 03 A6 */	mtctr r0
/* 814EB884 | 41 82 00 F8 */	beq .L_814EB97C
.L_814EB888:
/* 814EB888 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814EB88C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814EB890 | 1C A8 00 B5 */	mulli r5, r8, 0xb5
/* 814EB894 | 1C 08 00 62 */	mulli r0, r8, 0x62
/* 814EB898 | 7C AA 46 70 */	srawi r10, r5, 8
/* 814EB89C | 7C 1A 46 70 */	srawi r26, r0, 8
/* 814EB8A0 | 1C 08 01 4E */	mulli r0, r8, 0x14e
/* 814EB8A4 | 7C DA 52 14 */	add r6, r26, r10
/* 814EB8A8 | 7C AC D2 14 */	add r5, r12, r26
/* 814EB8AC | 7C 00 46 70 */	srawi r0, r0, 8
/* 814EB8B0 | 7C EC 32 14 */	add r7, r12, r6
/* 814EB8B4 | 7F 3A 00 50 */	subf r25, r26, r0
/* 814EB8B8 | 7C C6 60 50 */	subf r6, r6, r12
/* 814EB8BC | 7D 28 CA 14 */	add r9, r8, r25
/* 814EB8C0 | 7C 1A 60 50 */	subf r0, r26, r12
/* 814EB8C4 | 7D 0C 4A 14 */	add r8, r12, r9
/* 814EB8C8 | 7F 2A CA 14 */	add r25, r10, r25
/* 814EB8CC | 91 0B 00 00 */	stw r8, 0x0(r11)
/* 814EB8D0 | 7D 49 60 50 */	subf r10, r9, r12
/* 814EB8D4 | 7D 2C CA 14 */	add r9, r12, r25
/* 814EB8D8 | 7D 19 60 50 */	subf r8, r25, r12
/* 814EB8DC | 91 4B 00 1C */	stw r10, 0x1c(r11)
/* 814EB8E0 | 91 2B 00 04 */	stw r9, 0x4(r11)
/* 814EB8E4 | 91 0B 00 18 */	stw r8, 0x18(r11)
/* 814EB8E8 | 90 EB 00 08 */	stw r7, 0x8(r11)
/* 814EB8EC | 90 CB 00 14 */	stw r6, 0x14(r11)
/* 814EB8F0 | 90 AB 00 0C */	stw r5, 0xc(r11)
/* 814EB8F4 | 90 0B 00 10 */	stw r0, 0x10(r11)
/* 814EB8F8 | 81 03 00 24 */	lwz r8, 0x24(r3)
/* 814EB8FC | 81 83 00 20 */	lwz r12, 0x20(r3)
/* 814EB900 | 38 63 00 40 */	addi r3, r3, 0x40
/* 814EB904 | 1C A8 00 B5 */	mulli r5, r8, 0xb5
/* 814EB908 | 1C 08 00 62 */	mulli r0, r8, 0x62
/* 814EB90C | 7C AA 46 70 */	srawi r10, r5, 8
/* 814EB910 | 7C 1A 46 70 */	srawi r26, r0, 8
/* 814EB914 | 1C 08 01 4E */	mulli r0, r8, 0x14e
/* 814EB918 | 7C DA 52 14 */	add r6, r26, r10
/* 814EB91C | 7C AC D2 14 */	add r5, r12, r26
/* 814EB920 | 7C 00 46 70 */	srawi r0, r0, 8
/* 814EB924 | 7C EC 32 14 */	add r7, r12, r6
/* 814EB928 | 7F 3A 00 50 */	subf r25, r26, r0
/* 814EB92C | 7C C6 60 50 */	subf r6, r6, r12
/* 814EB930 | 7D 28 CA 14 */	add r9, r8, r25
/* 814EB934 | 7C 1A 60 50 */	subf r0, r26, r12
/* 814EB938 | 7D 0C 4A 14 */	add r8, r12, r9
/* 814EB93C | 7F 2A CA 14 */	add r25, r10, r25
/* 814EB940 | 91 0B 00 20 */	stw r8, 0x20(r11)
/* 814EB944 | 7D 49 60 50 */	subf r10, r9, r12
/* 814EB948 | 7D 2C CA 14 */	add r9, r12, r25
/* 814EB94C | 7D 19 60 50 */	subf r8, r25, r12
/* 814EB950 | 91 4B 00 3C */	stw r10, 0x3c(r11)
/* 814EB954 | 91 2B 00 24 */	stw r9, 0x24(r11)
/* 814EB958 | 91 0B 00 38 */	stw r8, 0x38(r11)
/* 814EB95C | 90 EB 00 28 */	stw r7, 0x28(r11)
/* 814EB960 | 90 CB 00 34 */	stw r6, 0x34(r11)
/* 814EB964 | 90 AB 00 2C */	stw r5, 0x2c(r11)
/* 814EB968 | 90 0B 00 30 */	stw r0, 0x30(r11)
/* 814EB96C | 39 6B 00 40 */	addi r11, r11, 0x40
/* 814EB970 | 42 00 FF 18 */	bdnz .L_814EB888
/* 814EB974 | 70 84 00 01 */	andi. r4, r4, 0x1
/* 814EB978 | 41 82 00 84 */	beq .L_814EB9FC
.L_814EB97C:
/* 814EB97C | 7C 89 03 A6 */	mtctr r4
.L_814EB980:
/* 814EB980 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814EB984 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814EB988 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814EB98C | 1C A8 00 B5 */	mulli r5, r8, 0xb5
/* 814EB990 | 1C 08 00 62 */	mulli r0, r8, 0x62
/* 814EB994 | 7C AA 46 70 */	srawi r10, r5, 8
/* 814EB998 | 7C 1A 46 70 */	srawi r26, r0, 8
/* 814EB99C | 1C 08 01 4E */	mulli r0, r8, 0x14e
/* 814EB9A0 | 7C DA 52 14 */	add r6, r26, r10
/* 814EB9A4 | 7C AC D2 14 */	add r5, r12, r26
/* 814EB9A8 | 7C 00 46 70 */	srawi r0, r0, 8
/* 814EB9AC | 7C EC 32 14 */	add r7, r12, r6
/* 814EB9B0 | 7F 3A 00 50 */	subf r25, r26, r0
/* 814EB9B4 | 7C C6 60 50 */	subf r6, r6, r12
/* 814EB9B8 | 7D 28 CA 14 */	add r9, r8, r25
/* 814EB9BC | 7C 1A 60 50 */	subf r0, r26, r12
/* 814EB9C0 | 7D 0C 4A 14 */	add r8, r12, r9
/* 814EB9C4 | 7F 2A CA 14 */	add r25, r10, r25
/* 814EB9C8 | 91 0B 00 00 */	stw r8, 0x0(r11)
/* 814EB9CC | 7D 49 60 50 */	subf r10, r9, r12
/* 814EB9D0 | 7D 2C CA 14 */	add r9, r12, r25
/* 814EB9D4 | 7D 19 60 50 */	subf r8, r25, r12
/* 814EB9D8 | 91 4B 00 1C */	stw r10, 0x1c(r11)
/* 814EB9DC | 91 2B 00 04 */	stw r9, 0x4(r11)
/* 814EB9E0 | 91 0B 00 18 */	stw r8, 0x18(r11)
/* 814EB9E4 | 90 EB 00 08 */	stw r7, 0x8(r11)
/* 814EB9E8 | 90 CB 00 14 */	stw r6, 0x14(r11)
/* 814EB9EC | 90 AB 00 0C */	stw r5, 0xc(r11)
/* 814EB9F0 | 90 0B 00 10 */	stw r0, 0x10(r11)
/* 814EB9F4 | 39 6B 00 20 */	addi r11, r11, 0x20
/* 814EB9F8 | 42 00 FF 88 */	bdnz .L_814EB980
.L_814EB9FC:
/* 814EB9FC | 57 C0 10 3A */	slwi r0, r30, 2
/* 814EBA00 | 3B A1 00 08 */	addi r29, r1, 0x8
/* 814EBA04 | 7F BD 02 14 */	add r29, r29, r0
/* 814EBA08 | 48 00 00 1C */	b .L_814EBA24
.L_814EBA0C:
/* 814EBA0C | 7F A3 EB 78 */	mr r3, r29
/* 814EBA10 | 38 80 00 00 */	li r4, 0x0
/* 814EBA14 | 38 A0 00 20 */	li r5, 0x20
/* 814EBA18 | 4B E4 49 1D */	bl memset
/* 814EBA1C | 3B BD 00 20 */	addi r29, r29, 0x20
/* 814EBA20 | 3B DE 00 08 */	addi r30, r30, 0x8
.L_814EBA24:
/* 814EBA24 | 2C 1E 00 38 */	cmpwi r30, 0x38
/* 814EBA28 | 40 81 FF E4 */	ble .L_814EBA0C
/* 814EBA2C | 48 00 01 80 */	b .L_814EBBAC
.L_814EBA30:
/* 814EBA30 | 38 05 00 07 */	addi r0, r5, 0x7
/* 814EBA34 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814EBA38 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814EBA3C | 3B C0 00 00 */	li r30, 0x0
/* 814EBA40 | 7C 09 03 A6 */	mtctr r0
/* 814EBA44 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBA48 | 40 81 01 34 */	ble .L_814EBB7C
.L_814EBA4C:
/* 814EBA4C | 83 23 00 10 */	lwz r25, 0x10(r3)
/* 814EBA50 | 81 83 00 18 */	lwz r12, 0x18(r3)
/* 814EBA54 | 81 23 00 08 */	lwz r9, 0x8(r3)
/* 814EBA58 | 7F 20 63 78 */	or r0, r25, r12
/* 814EBA5C | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814EBA60 | 7D 20 03 78 */	or r0, r9, r0
/* 814EBA64 | 81 63 00 1C */	lwz r11, 0x1c(r3)
/* 814EBA68 | 7D 00 03 78 */	or r0, r8, r0
/* 814EBA6C | 81 43 00 14 */	lwz r10, 0x14(r3)
/* 814EBA70 | 7D 60 03 78 */	or r0, r11, r0
/* 814EBA74 | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 814EBA78 | 7D 40 03 78 */	or r0, r10, r0
/* 814EBA7C | 7C A0 03 79 */	or. r0, r5, r0
/* 814EBA80 | 40 82 00 2C */	bne .L_814EBAAC
/* 814EBA84 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EBA88 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814EBA8C | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814EBA90 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 814EBA94 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 814EBA98 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814EBA9C | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814EBAA0 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814EBAA4 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814EBAA8 | 48 00 00 C4 */	b .L_814EBB6C
.L_814EBAAC:
/* 814EBAAC | 7C 0C 48 50 */	subf r0, r12, r9
/* 814EBAB0 | 7C EA 2A 14 */	add r7, r10, r5
/* 814EBAB4 | 7C A5 50 50 */	subf r5, r5, r10
/* 814EBAB8 | 7C C8 5A 14 */	add r6, r8, r11
/* 814EBABC | 7F AB 40 50 */	subf r29, r11, r8
/* 814EBAC0 | 7D 2C 4A 14 */	add r9, r12, r9
/* 814EBAC4 | 1D 40 00 B5 */	mulli r10, r0, 0xb5
/* 814EBAC8 | 7D 07 30 50 */	subf r8, r7, r6
/* 814EBACC | 7C 05 EA 14 */	add r0, r5, r29
/* 814EBAD0 | 81 63 00 00 */	lwz r11, 0x0(r3)
/* 814EBAD4 | 7D 5B 46 70 */	srawi r27, r10, 8
/* 814EBAD8 | 7D 99 58 50 */	subf r12, r25, r11
/* 814EBADC | 1D 08 00 B5 */	mulli r8, r8, 0xb5
/* 814EBAE0 | 7D 6B CA 14 */	add r11, r11, r25
/* 814EBAE4 | 7F 9B 4A 14 */	add r28, r27, r9
/* 814EBAE8 | 7F 4C DA 14 */	add r26, r12, r27
/* 814EBAEC | 1D 20 00 62 */	mulli r9, r0, 0x62
/* 814EBAF0 | 7F 2B E2 14 */	add r25, r11, r28
/* 814EBAF4 | 7D 0A 46 70 */	srawi r10, r8, 8
/* 814EBAF8 | 7C 1C 58 50 */	subf r0, r28, r11
/* 814EBAFC | 1D 1D 01 4E */	mulli r8, r29, 0x14e
/* 814EBB00 | 7F 7B 60 50 */	subf r27, r27, r12
/* 814EBB04 | 7D 2B 46 70 */	srawi r11, r9, 8
/* 814EBB08 | 7D 08 46 70 */	srawi r8, r8, 8
/* 814EBB0C | 7D 0B 40 50 */	subf r8, r11, r8
/* 814EBB10 | 7C E7 42 14 */	add r7, r7, r8
/* 814EBB14 | 7D 86 3A 14 */	add r12, r6, r7
/* 814EBB18 | 7D 2A 42 14 */	add r9, r10, r8
/* 814EBB1C | 7D 19 62 14 */	add r8, r25, r12
/* 814EBB20 | 91 04 00 00 */	stw r8, 0x0(r4)
/* 814EBB24 | 7C FA 4A 14 */	add r7, r26, r9
/* 814EBB28 | 7C C9 D0 50 */	subf r6, r9, r26
/* 814EBB2C | 1D 25 00 8B */	mulli r9, r5, 0x8b
/* 814EBB30 | 7C AC C8 50 */	subf r5, r12, r25
/* 814EBB34 | 90 A4 00 1C */	stw r5, 0x1c(r4)
/* 814EBB38 | 7D 25 46 70 */	srawi r5, r9, 8
/* 814EBB3C | 90 E4 00 04 */	stw r7, 0x4(r4)
/* 814EBB40 | 7D 0B 2A 14 */	add r8, r11, r5
/* 814EBB44 | 7C A8 52 14 */	add r5, r8, r10
/* 814EBB48 | 90 C4 00 18 */	stw r6, 0x18(r4)
/* 814EBB4C | 7C FB 2A 14 */	add r7, r27, r5
/* 814EBB50 | 7C C5 D8 50 */	subf r6, r5, r27
/* 814EBB54 | 90 E4 00 08 */	stw r7, 0x8(r4)
/* 814EBB58 | 7C A0 42 14 */	add r5, r0, r8
/* 814EBB5C | 7C 08 00 50 */	subf r0, r8, r0
/* 814EBB60 | 90 C4 00 14 */	stw r6, 0x14(r4)
/* 814EBB64 | 90 A4 00 0C */	stw r5, 0xc(r4)
/* 814EBB68 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814EBB6C:
/* 814EBB6C | 38 63 00 20 */	addi r3, r3, 0x20
/* 814EBB70 | 38 84 00 20 */	addi r4, r4, 0x20
/* 814EBB74 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814EBB78 | 42 00 FE D4 */	bdnz .L_814EBA4C
.L_814EBB7C:
/* 814EBB7C | 57 C0 10 3A */	slwi r0, r30, 2
/* 814EBB80 | 3B A1 00 08 */	addi r29, r1, 0x8
/* 814EBB84 | 7F BD 02 14 */	add r29, r29, r0
/* 814EBB88 | 48 00 00 1C */	b .L_814EBBA4
.L_814EBB8C:
/* 814EBB8C | 7F A3 EB 78 */	mr r3, r29
/* 814EBB90 | 38 80 00 00 */	li r4, 0x0
/* 814EBB94 | 38 A0 00 20 */	li r5, 0x20
/* 814EBB98 | 4B E4 47 9D */	bl memset
/* 814EBB9C | 3B BD 00 20 */	addi r29, r29, 0x20
/* 814EBBA0 | 3B DE 00 08 */	addi r30, r30, 0x8
.L_814EBBA4:
/* 814EBBA4 | 2C 1E 00 38 */	cmpwi r30, 0x38
/* 814EBBA8 | 40 81 FF E4 */	ble .L_814EBB8C
.L_814EBBAC:
/* 814EBBAC | 38 00 00 08 */	li r0, 0x8
/* 814EBBB0 | 38 61 00 24 */	addi r3, r1, 0x24
/* 814EBBB4 | 38 80 00 07 */	li r4, 0x7
/* 814EBBB8 | 7C 09 03 A6 */	mtctr r0
.L_814EBBBC:
/* 814EBBBC | 83 43 00 80 */	lwz r26, 0x80(r3)
/* 814EBBC0 | 7D 7F 22 14 */	add r11, r31, r4
/* 814EBBC4 | 81 03 00 C0 */	lwz r8, 0xc0(r3)
/* 814EBBC8 | 83 63 00 40 */	lwz r27, 0x40(r3)
/* 814EBBCC | 7F 40 43 78 */	or r0, r26, r8
/* 814EBBD0 | 80 C3 00 20 */	lwz r6, 0x20(r3)
/* 814EBBD4 | 7F 60 03 78 */	or r0, r27, r0
/* 814EBBD8 | 80 E3 00 E0 */	lwz r7, 0xe0(r3)
/* 814EBBDC | 7C C0 03 78 */	or r0, r6, r0
/* 814EBBE0 | 81 23 00 A0 */	lwz r9, 0xa0(r3)
/* 814EBBE4 | 7C E0 03 78 */	or r0, r7, r0
/* 814EBBE8 | 81 83 00 60 */	lwz r12, 0x60(r3)
/* 814EBBEC | 7D 20 03 78 */	or r0, r9, r0
/* 814EBBF0 | 7D 80 03 79 */	or. r0, r12, r0
/* 814EBBF4 | 40 82 00 64 */	bne .L_814EBC58
/* 814EBBF8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EBBFC | 38 A0 00 00 */	li r5, 0x0
/* 814EBC00 | 7C 00 5E 70 */	srawi r0, r0, 11
/* 814EBC04 | 2C 00 00 80 */	cmpwi r0, 0x80
/* 814EBC08 | 40 80 00 10 */	bge .L_814EBC18
/* 814EBC0C | 2C 00 FF 7F */	cmpwi r0, -0x81
/* 814EBC10 | 40 81 00 08 */	ble .L_814EBC18
/* 814EBC14 | 38 A0 00 01 */	li r5, 0x1
.L_814EBC18:
/* 814EBC18 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBC1C | 41 82 00 08 */	beq .L_814EBC24
/* 814EBC20 | 48 00 00 14 */	b .L_814EBC34
.L_814EBC24:
/* 814EBC24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EBC28 | 38 00 FF 80 */	li r0, -0x80
/* 814EBC2C | 40 81 00 08 */	ble .L_814EBC34
/* 814EBC30 | 38 00 00 7F */	li r0, 0x7f
.L_814EBC34:
/* 814EBC34 | 98 0B 00 38 */	stb r0, 0x38(r11)
/* 814EBC38 | 98 0B 00 30 */	stb r0, 0x30(r11)
/* 814EBC3C | 98 0B 00 28 */	stb r0, 0x28(r11)
/* 814EBC40 | 98 0B 00 20 */	stb r0, 0x20(r11)
/* 814EBC44 | 98 0B 00 18 */	stb r0, 0x18(r11)
/* 814EBC48 | 98 0B 00 10 */	stb r0, 0x10(r11)
/* 814EBC4C | 98 0B 00 08 */	stb r0, 0x8(r11)
/* 814EBC50 | 98 0B 00 00 */	stb r0, 0x0(r11)
/* 814EBC54 | 48 00 02 84 */	b .L_814EBED8
.L_814EBC58:
/* 814EBC58 | 7C A8 D8 50 */	subf r5, r8, r27
/* 814EBC5C | 7C 09 62 14 */	add r0, r9, r12
/* 814EBC60 | 7D 46 3A 14 */	add r10, r6, r7
/* 814EBC64 | 7F 27 30 50 */	subf r25, r7, r6
/* 814EBC68 | 1C E5 00 B5 */	mulli r7, r5, 0xb5
/* 814EBC6C | 7D 2C 48 50 */	subf r9, r12, r9
/* 814EBC70 | 7C C0 50 50 */	subf r6, r0, r10
/* 814EBC74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814EBC78 | 7D 08 DA 14 */	add r8, r8, r27
/* 814EBC7C | 7C FB 46 70 */	srawi r27, r7, 8
/* 814EBC80 | 7C A9 CA 14 */	add r5, r9, r25
/* 814EBC84 | 7F 9A 60 50 */	subf r28, r26, r12
/* 814EBC88 | 1C E6 00 B5 */	mulli r7, r6, 0xb5
/* 814EBC8C | 7D 8C D2 14 */	add r12, r12, r26
/* 814EBC90 | 7D 1B 42 14 */	add r8, r27, r8
/* 814EBC94 | 7C DC DA 14 */	add r6, r28, r27
/* 814EBC98 | 1F C5 00 62 */	mulli r30, r5, 0x62
/* 814EBC9C | 7C AC 42 14 */	add r5, r12, r8
/* 814EBCA0 | 7C FD 46 70 */	srawi r29, r7, 8
/* 814EBCA4 | 7C E8 60 50 */	subf r7, r8, r12
/* 814EBCA8 | 7D 1B E0 50 */	subf r8, r27, r28
/* 814EBCAC | 7F DC 46 70 */	srawi r28, r30, 8
/* 814EBCB0 | 3B C0 00 00 */	li r30, 0x0
/* 814EBCB4 | 1D 99 01 4E */	mulli r12, r25, 0x14e
/* 814EBCB8 | 7D 8C 46 70 */	srawi r12, r12, 8
/* 814EBCBC | 7D 9C 60 50 */	subf r12, r28, r12
/* 814EBCC0 | 1D 29 00 8B */	mulli r9, r9, 0x8b
/* 814EBCC4 | 7C 00 62 14 */	add r0, r0, r12
/* 814EBCC8 | 7F 7D 62 14 */	add r27, r29, r12
/* 814EBCCC | 7F 4A 02 14 */	add r26, r10, r0
/* 814EBCD0 | 7D 29 46 70 */	srawi r9, r9, 8
/* 814EBCD4 | 7C 05 D2 14 */	add r0, r5, r26
/* 814EBCD8 | 7C 0A 5E 70 */	srawi r10, r0, 11
/* 814EBCDC | 7C 1C 4A 14 */	add r0, r28, r9
/* 814EBCE0 | 2C 0A 00 80 */	cmpwi r10, 0x80
/* 814EBCE4 | 7D 80 EA 14 */	add r12, r0, r29
/* 814EBCE8 | 40 80 00 10 */	bge .L_814EBCF8
/* 814EBCEC | 2C 0A FF 7F */	cmpwi r10, -0x81
/* 814EBCF0 | 40 81 00 08 */	ble .L_814EBCF8
/* 814EBCF4 | 3B C0 00 01 */	li r30, 0x1
.L_814EBCF8:
/* 814EBCF8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814EBCFC | 41 82 00 08 */	beq .L_814EBD04
/* 814EBD00 | 48 00 00 14 */	b .L_814EBD14
.L_814EBD04:
/* 814EBD04 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814EBD08 | 39 40 FF 80 */	li r10, -0x80
/* 814EBD0C | 40 81 00 08 */	ble .L_814EBD14
/* 814EBD10 | 39 40 00 7F */	li r10, 0x7f
.L_814EBD14:
/* 814EBD14 | 7C BA 28 50 */	subf r5, r26, r5
/* 814EBD18 | 99 4B 00 00 */	stb r10, 0x0(r11)
/* 814EBD1C | 7C A9 5E 70 */	srawi r9, r5, 11
/* 814EBD20 | 2C 09 00 80 */	cmpwi r9, 0x80
/* 814EBD24 | 38 A0 00 00 */	li r5, 0x0
/* 814EBD28 | 40 80 00 10 */	bge .L_814EBD38
/* 814EBD2C | 2C 09 FF 7F */	cmpwi r9, -0x81
/* 814EBD30 | 40 81 00 08 */	ble .L_814EBD38
/* 814EBD34 | 38 A0 00 01 */	li r5, 0x1
.L_814EBD38:
/* 814EBD38 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBD3C | 41 82 00 08 */	beq .L_814EBD44
/* 814EBD40 | 48 00 00 14 */	b .L_814EBD54
.L_814EBD44:
/* 814EBD44 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814EBD48 | 39 20 FF 80 */	li r9, -0x80
/* 814EBD4C | 40 81 00 08 */	ble .L_814EBD54
/* 814EBD50 | 39 20 00 7F */	li r9, 0x7f
.L_814EBD54:
/* 814EBD54 | 7C A6 DA 14 */	add r5, r6, r27
/* 814EBD58 | 99 2B 00 38 */	stb r9, 0x38(r11)
/* 814EBD5C | 7C A9 5E 70 */	srawi r9, r5, 11
/* 814EBD60 | 2C 09 00 80 */	cmpwi r9, 0x80
/* 814EBD64 | 38 A0 00 00 */	li r5, 0x0
/* 814EBD68 | 40 80 00 10 */	bge .L_814EBD78
/* 814EBD6C | 2C 09 FF 7F */	cmpwi r9, -0x81
/* 814EBD70 | 40 81 00 08 */	ble .L_814EBD78
/* 814EBD74 | 38 A0 00 01 */	li r5, 0x1
.L_814EBD78:
/* 814EBD78 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBD7C | 41 82 00 08 */	beq .L_814EBD84
/* 814EBD80 | 48 00 00 14 */	b .L_814EBD94
.L_814EBD84:
/* 814EBD84 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814EBD88 | 39 20 FF 80 */	li r9, -0x80
/* 814EBD8C | 40 81 00 08 */	ble .L_814EBD94
/* 814EBD90 | 39 20 00 7F */	li r9, 0x7f
.L_814EBD94:
/* 814EBD94 | 7C BB 30 50 */	subf r5, r27, r6
/* 814EBD98 | 99 2B 00 08 */	stb r9, 0x8(r11)
/* 814EBD9C | 7C A6 5E 70 */	srawi r6, r5, 11
/* 814EBDA0 | 2C 06 00 80 */	cmpwi r6, 0x80
/* 814EBDA4 | 38 A0 00 00 */	li r5, 0x0
/* 814EBDA8 | 40 80 00 10 */	bge .L_814EBDB8
/* 814EBDAC | 2C 06 FF 7F */	cmpwi r6, -0x81
/* 814EBDB0 | 40 81 00 08 */	ble .L_814EBDB8
/* 814EBDB4 | 38 A0 00 01 */	li r5, 0x1
.L_814EBDB8:
/* 814EBDB8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBDBC | 41 82 00 08 */	beq .L_814EBDC4
/* 814EBDC0 | 48 00 00 14 */	b .L_814EBDD4
.L_814EBDC4:
/* 814EBDC4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814EBDC8 | 38 C0 FF 80 */	li r6, -0x80
/* 814EBDCC | 40 81 00 08 */	ble .L_814EBDD4
/* 814EBDD0 | 38 C0 00 7F */	li r6, 0x7f
.L_814EBDD4:
/* 814EBDD4 | 7C A8 62 14 */	add r5, r8, r12
/* 814EBDD8 | 98 CB 00 30 */	stb r6, 0x30(r11)
/* 814EBDDC | 7C A6 5E 70 */	srawi r6, r5, 11
/* 814EBDE0 | 2C 06 00 80 */	cmpwi r6, 0x80
/* 814EBDE4 | 38 A0 00 00 */	li r5, 0x0
/* 814EBDE8 | 40 80 00 10 */	bge .L_814EBDF8
/* 814EBDEC | 2C 06 FF 7F */	cmpwi r6, -0x81
/* 814EBDF0 | 40 81 00 08 */	ble .L_814EBDF8
/* 814EBDF4 | 38 A0 00 01 */	li r5, 0x1
.L_814EBDF8:
/* 814EBDF8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBDFC | 41 82 00 08 */	beq .L_814EBE04
/* 814EBE00 | 48 00 00 14 */	b .L_814EBE14
.L_814EBE04:
/* 814EBE04 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814EBE08 | 38 C0 FF 80 */	li r6, -0x80
/* 814EBE0C | 40 81 00 08 */	ble .L_814EBE14
/* 814EBE10 | 38 C0 00 7F */	li r6, 0x7f
.L_814EBE14:
/* 814EBE14 | 7C AC 40 50 */	subf r5, r12, r8
/* 814EBE18 | 98 CB 00 10 */	stb r6, 0x10(r11)
/* 814EBE1C | 7C A6 5E 70 */	srawi r6, r5, 11
/* 814EBE20 | 2C 06 00 80 */	cmpwi r6, 0x80
/* 814EBE24 | 38 A0 00 00 */	li r5, 0x0
/* 814EBE28 | 40 80 00 10 */	bge .L_814EBE38
/* 814EBE2C | 2C 06 FF 7F */	cmpwi r6, -0x81
/* 814EBE30 | 40 81 00 08 */	ble .L_814EBE38
/* 814EBE34 | 38 A0 00 01 */	li r5, 0x1
.L_814EBE38:
/* 814EBE38 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBE3C | 41 82 00 08 */	beq .L_814EBE44
/* 814EBE40 | 48 00 00 14 */	b .L_814EBE54
.L_814EBE44:
/* 814EBE44 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814EBE48 | 38 C0 FF 80 */	li r6, -0x80
/* 814EBE4C | 40 81 00 08 */	ble .L_814EBE54
/* 814EBE50 | 38 C0 00 7F */	li r6, 0x7f
.L_814EBE54:
/* 814EBE54 | 7C A7 02 14 */	add r5, r7, r0
/* 814EBE58 | 98 CB 00 28 */	stb r6, 0x28(r11)
/* 814EBE5C | 7C A6 5E 70 */	srawi r6, r5, 11
/* 814EBE60 | 2C 06 00 80 */	cmpwi r6, 0x80
/* 814EBE64 | 38 A0 00 00 */	li r5, 0x0
/* 814EBE68 | 40 80 00 10 */	bge .L_814EBE78
/* 814EBE6C | 2C 06 FF 7F */	cmpwi r6, -0x81
/* 814EBE70 | 40 81 00 08 */	ble .L_814EBE78
/* 814EBE74 | 38 A0 00 01 */	li r5, 0x1
.L_814EBE78:
/* 814EBE78 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBE7C | 41 82 00 08 */	beq .L_814EBE84
/* 814EBE80 | 48 00 00 14 */	b .L_814EBE94
.L_814EBE84:
/* 814EBE84 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814EBE88 | 38 C0 FF 80 */	li r6, -0x80
/* 814EBE8C | 40 81 00 08 */	ble .L_814EBE94
/* 814EBE90 | 38 C0 00 7F */	li r6, 0x7f
.L_814EBE94:
/* 814EBE94 | 7C 00 38 50 */	subf r0, r0, r7
/* 814EBE98 | 98 CB 00 18 */	stb r6, 0x18(r11)
/* 814EBE9C | 7C 05 5E 70 */	srawi r5, r0, 11
/* 814EBEA0 | 2C 05 00 80 */	cmpwi r5, 0x80
/* 814EBEA4 | 38 00 00 00 */	li r0, 0x0
/* 814EBEA8 | 40 80 00 10 */	bge .L_814EBEB8
/* 814EBEAC | 2C 05 FF 7F */	cmpwi r5, -0x81
/* 814EBEB0 | 40 81 00 08 */	ble .L_814EBEB8
/* 814EBEB4 | 38 00 00 01 */	li r0, 0x1
.L_814EBEB8:
/* 814EBEB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EBEBC | 41 82 00 08 */	beq .L_814EBEC4
/* 814EBEC0 | 48 00 00 14 */	b .L_814EBED4
.L_814EBEC4:
/* 814EBEC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EBEC8 | 38 A0 FF 80 */	li r5, -0x80
/* 814EBECC | 40 81 00 08 */	ble .L_814EBED4
/* 814EBED0 | 38 A0 00 7F */	li r5, 0x7f
.L_814EBED4:
/* 814EBED4 | 98 AB 00 20 */	stb r5, 0x20(r11)
.L_814EBED8:
/* 814EBED8 | 38 63 FF FC */	subi r3, r3, 0x4
/* 814EBEDC | 38 84 FF FF */	subi r4, r4, 0x1
/* 814EBEE0 | 42 00 FC DC */	bdnz .L_814EBBBC
.L_814EBEE4:
/* 814EBEE4 | BB 21 01 14 */	lmw r25, 0x114(r1)
/* 814EBEE8 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 814EBEEC | 7C 08 03 A6 */	mtlr r0
/* 814EBEF0 | 38 21 01 30 */	addi r1, r1, 0x130
/* 814EBEF4 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock_Col

# .text:0x1AB0 | 0x814EBEF8 | size: 0x20C
.fn TMCCJPEGDecInit, global
/* 814EBEF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EBEFC | 7C 08 02 A6 */	mflr r0
/* 814EBF00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EBF04 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EBF08 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EBF0C | 7C 7E 1B 78 */	mr r30, r3
/* 814EBF10 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EBF14 | 7C 9D 23 78 */	mr r29, r4
/* 814EBF18 | 83 E4 00 28 */	lwz r31, 0x28(r4)
/* 814EBF1C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814EBF20 | 40 82 00 0C */	bne .L_814EBF2C
/* 814EBF24 | 38 60 FF FF */	li r3, -0x1
/* 814EBF28 | 48 00 01 C0 */	b .L_814EC0E8
.L_814EBF2C:
/* 814EBF2C | 38 80 00 00 */	li r4, 0x0
/* 814EBF30 | 38 A0 06 D4 */	li r5, 0x6d4
/* 814EBF34 | 4B E4 44 01 */	bl memset
/* 814EBF38 | 7F E3 FB 78 */	mr r3, r31
/* 814EBF3C | 38 80 00 00 */	li r4, 0x0
/* 814EBF40 | 38 A0 19 E8 */	li r5, 0x19e8
/* 814EBF44 | 4B E4 43 F1 */	bl memset
/* 814EBF48 | 93 DF 19 E4 */	stw r30, 0x19e4(r31)
/* 814EBF4C | 93 FE 06 C8 */	stw r31, 0x6c8(r30)
/* 814EBF50 | 88 7D 00 24 */	lbz r3, 0x24(r29)
/* 814EBF54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EBF58 | 41 82 00 0C */	beq .L_814EBF64
/* 814EBF5C | 38 60 FF FF */	li r3, -0x1
/* 814EBF60 | 48 00 00 40 */	b .L_814EBFA0
.L_814EBF64:
/* 814EBF64 | 88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 814EBF68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EBF6C | 41 82 00 1C */	beq .L_814EBF88
/* 814EBF70 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EBF74 | 41 82 00 14 */	beq .L_814EBF88
/* 814EBF78 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814EBF7C | 41 82 00 0C */	beq .L_814EBF88
/* 814EBF80 | 38 60 FF FF */	li r3, -0x1
/* 814EBF84 | 48 00 00 1C */	b .L_814EBFA0
.L_814EBF88:
/* 814EBF88 | 38 00 00 01 */	li r0, 0x1
/* 814EBF8C | 98 7E 00 21 */	stb r3, 0x21(r30)
/* 814EBF90 | 38 60 00 00 */	li r3, 0x0
/* 814EBF94 | 98 1E 00 20 */	stb r0, 0x20(r30)
/* 814EBF98 | 88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 814EBF9C | 98 1E 06 D0 */	stb r0, 0x6d0(r30)
.L_814EBFA0:
/* 814EBFA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EBFA4 | 41 80 01 30 */	blt .L_814EC0D4
/* 814EBFA8 | 7F E3 FB 78 */	mr r3, r31
/* 814EBFAC | 38 9D 00 10 */	addi r4, r29, 0x10
/* 814EBFB0 | 4B FF E9 65 */	bl TMCJPEGDEC_init_ptr_buff
/* 814EBFB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EBFB8 | 40 80 00 08 */	bge .L_814EBFC0
/* 814EBFBC | 48 00 01 2C */	b .L_814EC0E8
.L_814EBFC0:
/* 814EBFC0 | 7F E3 FB 78 */	mr r3, r31
/* 814EBFC4 | 48 00 09 41 */	bl TMCJPEGDEC_imagestart
/* 814EBFC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EBFCC | 40 80 00 08 */	bge .L_814EBFD4
/* 814EBFD0 | 48 00 00 38 */	b .L_814EC008
.L_814EBFD4:
/* 814EBFD4 | A0 1F 17 F0 */	lhz r0, 0x17f0(r31)
/* 814EBFD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EBFDC | 40 82 00 0C */	bne .L_814EBFE8
/* 814EBFE0 | 38 60 FF B0 */	li r3, -0x50
/* 814EBFE4 | 48 00 00 24 */	b .L_814EC008
.L_814EBFE8:
/* 814EBFE8 | 88 9F 17 FD */	lbz r4, 0x17fd(r31)
/* 814EBFEC | A0 1F 18 00 */	lhz r0, 0x1800(r31)
/* 814EBFF0 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814EBFF4 | 90 1F 17 F4 */	stw r0, 0x17f4(r31)
/* 814EBFF8 | 88 9F 17 FE */	lbz r4, 0x17fe(r31)
/* 814EBFFC | A0 1F 18 02 */	lhz r0, 0x1802(r31)
/* 814EC000 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814EC004 | 90 1F 17 F8 */	stw r0, 0x17f8(r31)
.L_814EC008:
/* 814EC008 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC00C | 41 80 00 C8 */	blt .L_814EC0D4
/* 814EC010 | 7F E3 FB 78 */	mr r3, r31
/* 814EC014 | 48 00 0B 21 */	bl TMCJPEGDEC_scanstart
/* 814EC018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC01C | 40 80 00 08 */	bge .L_814EC024
/* 814EC020 | 48 00 00 1C */	b .L_814EC03C
.L_814EC024:
/* 814EC024 | 88 BF 18 1C */	lbz r5, 0x181c(r31)
/* 814EC028 | 38 85 FF FF */	subi r4, r5, 0x1
/* 814EC02C | 20 05 00 01 */	subfic r0, r5, 0x1
/* 814EC030 | 7C 80 00 F8 */	nor r0, r4, r0
/* 814EC034 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814EC038 | 7C 63 00 78 */	andc r3, r3, r0
.L_814EC03C:
/* 814EC03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC040 | 41 80 00 94 */	blt .L_814EC0D4
/* 814EC044 | 88 1F 18 1C */	lbz r0, 0x181c(r31)
/* 814EC048 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC04C | 40 82 00 88 */	bne .L_814EC0D4
/* 814EC050 | 7F E3 FB 78 */	mr r3, r31
/* 814EC054 | 48 00 03 41 */	bl TMCJPEGDEC_Setsize
/* 814EC058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC05C | 41 80 00 78 */	blt .L_814EC0D4
/* 814EC060 | 88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 814EC064 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814EC068 | 41 82 00 34 */	beq .L_814EC09C
/* 814EC06C | 40 80 00 10 */	bge .L_814EC07C
/* 814EC070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC074 | 40 80 00 14 */	bge .L_814EC088
/* 814EC078 | 48 00 00 48 */	b .L_814EC0C0
.L_814EC07C:
/* 814EC07C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814EC080 | 40 80 00 40 */	bge .L_814EC0C0
/* 814EC084 | 48 00 00 2C */	b .L_814EC0B0
.L_814EC088:
/* 814EC088 | 7F E3 FB 78 */	mr r3, r31
/* 814EC08C | 48 00 79 5D */	bl TMCJPEGDEC_set_converterRGB565
/* 814EC090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC094 | 41 80 00 40 */	blt .L_814EC0D4
/* 814EC098 | 48 00 00 28 */	b .L_814EC0C0
.L_814EC09C:
/* 814EC09C | 7F E3 FB 78 */	mr r3, r31
/* 814EC0A0 | 48 00 91 71 */	bl TMCJPEGDEC_set_converterRGBA8
/* 814EC0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC0A8 | 41 80 00 2C */	blt .L_814EC0D4
/* 814EC0AC | 48 00 00 14 */	b .L_814EC0C0
.L_814EC0B0:
/* 814EC0B0 | 7F E3 FB 78 */	mr r3, r31
/* 814EC0B4 | 48 00 3A E9 */	bl TMCJPEGDEC_set_converterY8U8V8
/* 814EC0B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC0BC | 41 80 00 18 */	blt .L_814EC0D4
.L_814EC0C0:
/* 814EC0C0 | 7F E3 FB 78 */	mr r3, r31
/* 814EC0C4 | 4B FF EE 6D */	bl TMCJPEGDEC_get_position
/* 814EC0C8 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 814EC0CC | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814EC0D0 | 48 00 00 18 */	b .L_814EC0E8
.L_814EC0D4:
/* 814EC0D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC0D8 | 38 00 FF FE */	li r0, -0x2
/* 814EC0DC | 40 80 00 08 */	bge .L_814EC0E4
/* 814EC0E0 | 7C 60 1B 78 */	mr r0, r3
.L_814EC0E4:
/* 814EC0E4 | 7C 03 03 78 */	mr r3, r0
.L_814EC0E8:
/* 814EC0E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EC0EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EC0F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EC0F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EC0F8 | 7C 08 03 A6 */	mtlr r0
/* 814EC0FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EC100 | 4E 80 00 20 */	blr
.endfn TMCCJPEGDecInit

# .text:0x1CBC | 0x814EC104 | size: 0x160
.fn TMCCJPEGDecodeRGB565, global
/* 814EC104 | 94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 814EC108 | 7C 08 02 A6 */	mflr r0
/* 814EC10C | 90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 814EC110 | BE A1 01 94 */	stmw r21, 0x194(r1)
/* 814EC114 | 7C 7F 1B 78 */	mr r31, r3
/* 814EC118 | 7C 95 23 78 */	mr r21, r4
/* 814EC11C | 83 A3 06 C8 */	lwz r29, 0x6c8(r3)
/* 814EC120 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814EC124 | 40 82 00 0C */	bne .L_814EC130
/* 814EC128 | 38 60 FF FF */	li r3, -0x1
/* 814EC12C | 48 00 01 24 */	b .L_814EC250
.L_814EC130:
/* 814EC130 | 88 03 06 D0 */	lbz r0, 0x6d0(r3)
/* 814EC134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC138 | 41 82 00 0C */	beq .L_814EC144
/* 814EC13C | 38 60 FF FC */	li r3, -0x4
/* 814EC140 | 48 00 01 10 */	b .L_814EC250
.L_814EC144:
/* 814EC144 | 90 A3 00 48 */	stw r5, 0x48(r3)
/* 814EC148 | 3A C0 00 00 */	li r22, 0x0
/* 814EC14C | A3 83 00 00 */	lhz r28, 0x0(r3)
/* 814EC150 | A3 43 00 02 */	lhz r26, 0x2(r3)
/* 814EC154 | A3 63 00 10 */	lhz r27, 0x10(r3)
/* 814EC158 | A3 23 00 12 */	lhz r25, 0x12(r3)
/* 814EC15C | 8B 03 00 14 */	lbz r24, 0x14(r3)
/* 814EC160 | 8A E3 00 15 */	lbz r23, 0x15(r3)
/* 814EC164 | 48 00 00 60 */	b .L_814EC1C4
.L_814EC168:
/* 814EC168 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 814EC16C | 7F C0 B9 D6 */	mullw r30, r0, r23
/* 814EC170 | 48 00 00 2C */	b .L_814EC19C
.L_814EC174:
/* 814EC174 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814EC178 | 7F C4 F3 78 */	mr r4, r30
/* 814EC17C | 7C 60 C1 D6 */	mullw r3, r0, r24
/* 814EC180 | 7F A5 EB 78 */	mr r5, r29
/* 814EC184 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814EC188 | 48 00 05 B9 */	bl TMCJPEGDEC_decompmcu
/* 814EC18C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC190 | 41 80 00 A0 */	blt .L_814EC230
/* 814EC194 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814EC198 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814EC19C:
/* 814EC19C | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814EC1A0 | 7C 00 D8 40 */	cmplw r0, r27
/* 814EC1A4 | 40 80 00 0C */	bge .L_814EC1B0
/* 814EC1A8 | 7C 16 A8 00 */	cmpw r22, r21
/* 814EC1AC | 41 80 FF C8 */	blt .L_814EC174
.L_814EC1B0:
/* 814EC1B0 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814EC1B4 | 7C 1B 00 40 */	cmplw r27, r0
/* 814EC1B8 | 40 82 00 0C */	bne .L_814EC1C4
/* 814EC1BC | 3B 80 00 00 */	li r28, 0x0
/* 814EC1C0 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814EC1C4:
/* 814EC1C4 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 814EC1C8 | 7C 00 C8 40 */	cmplw r0, r25
/* 814EC1CC | 40 80 00 0C */	bge .L_814EC1D8
/* 814EC1D0 | 7C 16 A8 00 */	cmpw r22, r21
/* 814EC1D4 | 41 80 FF 94 */	blt .L_814EC168
.L_814EC1D8:
/* 814EC1D8 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 814EC1DC | 7C 19 00 40 */	cmplw r25, r0
/* 814EC1E0 | 40 82 00 20 */	bne .L_814EC200
/* 814EC1E4 | 57 80 04 3F */	clrlwi. r0, r28, 16
/* 814EC1E8 | 40 82 00 18 */	bne .L_814EC200
/* 814EC1EC | 7F A3 EB 78 */	mr r3, r29
/* 814EC1F0 | 48 00 08 A5 */	bl TMCJPEGDEC_imageend
/* 814EC1F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC1F8 | 40 80 00 08 */	bge .L_814EC200
/* 814EC1FC | 48 00 00 54 */	b .L_814EC250
.L_814EC200:
/* 814EC200 | B3 9F 00 00 */	sth r28, 0x0(r31)
/* 814EC204 | 7F A3 EB 78 */	mr r3, r29
/* 814EC208 | B3 5F 00 02 */	sth r26, 0x2(r31)
/* 814EC20C | 4B FF ED 25 */	bl TMCJPEGDEC_get_position
/* 814EC210 | 57 44 04 3E */	clrlwi r4, r26, 16
/* 814EC214 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814EC218 | 7C 84 D9 D6 */	mullw r4, r4, r27
/* 814EC21C | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814EC220 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 814EC224 | 7C 04 00 50 */	subf r0, r4, r0
/* 814EC228 | 7C 63 00 50 */	subf r3, r3, r0
/* 814EC22C | 48 00 00 24 */	b .L_814EC250
.L_814EC230:
/* 814EC230 | A0 1D 18 1A */	lhz r0, 0x181a(r29)
/* 814EC234 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC238 | 41 82 00 18 */	beq .L_814EC250
/* 814EC23C | 2C 03 FF 10 */	cmpwi r3, -0xf0
/* 814EC240 | 41 82 00 10 */	beq .L_814EC250
/* 814EC244 | 90 7F 06 CC */	stw r3, 0x6cc(r31)
/* 814EC248 | 7F A3 EB 78 */	mr r3, r29
/* 814EC24C | 48 00 18 75 */	bl TMCJPEGDEC_err_restart
.L_814EC250:
/* 814EC250 | BA A1 01 94 */	lmw r21, 0x194(r1)
/* 814EC254 | 80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 814EC258 | 7C 08 03 A6 */	mtlr r0
/* 814EC25C | 38 21 01 C0 */	addi r1, r1, 0x1c0
/* 814EC260 | 4E 80 00 20 */	blr
.endfn TMCCJPEGDecodeRGB565

# .text:0x1E1C | 0x814EC264 | size: 0xE0
.fn TMCCJPEGDecSetResolution, global
/* 814EC264 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EC268 | 7C 08 02 A6 */	mflr r0
/* 814EC26C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EC270 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 814EC274 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EC278 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EC27C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814EC280 | 7C 7E 1B 78 */	mr r30, r3
/* 814EC284 | 98 83 00 20 */	stb r4, 0x20(r3)
/* 814EC288 | 83 E3 06 C8 */	lwz r31, 0x6c8(r3)
/* 814EC28C | 41 82 00 24 */	beq .L_814EC2B0
/* 814EC290 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814EC294 | 41 82 00 1C */	beq .L_814EC2B0
/* 814EC298 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814EC29C | 41 82 00 14 */	beq .L_814EC2B0
/* 814EC2A0 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814EC2A4 | 41 82 00 0C */	beq .L_814EC2B0
/* 814EC2A8 | 38 60 FF FF */	li r3, -0x1
/* 814EC2AC | 48 00 00 80 */	b .L_814EC32C
.L_814EC2B0:
/* 814EC2B0 | 7F E3 FB 78 */	mr r3, r31
/* 814EC2B4 | 48 00 00 E1 */	bl TMCJPEGDEC_Setsize
/* 814EC2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC2BC | 40 80 00 08 */	bge .L_814EC2C4
/* 814EC2C0 | 48 00 00 6C */	b .L_814EC32C
.L_814EC2C4:
/* 814EC2C4 | 88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 814EC2C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814EC2CC | 41 82 00 34 */	beq .L_814EC300
/* 814EC2D0 | 40 80 00 10 */	bge .L_814EC2E0
/* 814EC2D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC2D8 | 40 80 00 14 */	bge .L_814EC2EC
/* 814EC2DC | 48 00 00 4C */	b .L_814EC328
.L_814EC2E0:
/* 814EC2E0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814EC2E4 | 40 80 00 44 */	bge .L_814EC328
/* 814EC2E8 | 48 00 00 2C */	b .L_814EC314
.L_814EC2EC:
/* 814EC2EC | 7F E3 FB 78 */	mr r3, r31
/* 814EC2F0 | 48 00 76 F9 */	bl TMCJPEGDEC_set_converterRGB565
/* 814EC2F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC2F8 | 40 80 00 30 */	bge .L_814EC328
/* 814EC2FC | 48 00 00 30 */	b .L_814EC32C
.L_814EC300:
/* 814EC300 | 7F E3 FB 78 */	mr r3, r31
/* 814EC304 | 48 00 8F 0D */	bl TMCJPEGDEC_set_converterRGBA8
/* 814EC308 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC30C | 40 80 00 1C */	bge .L_814EC328
/* 814EC310 | 48 00 00 1C */	b .L_814EC32C
.L_814EC314:
/* 814EC314 | 7F E3 FB 78 */	mr r3, r31
/* 814EC318 | 48 00 38 85 */	bl TMCJPEGDEC_set_converterY8U8V8
/* 814EC31C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC320 | 40 80 00 08 */	bge .L_814EC328
/* 814EC324 | 48 00 00 08 */	b .L_814EC32C
.L_814EC328:
/* 814EC328 | 38 60 00 00 */	li r3, 0x0
.L_814EC32C:
/* 814EC32C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EC330 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EC334 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814EC338 | 7C 08 03 A6 */	mtlr r0
/* 814EC33C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EC340 | 4E 80 00 20 */	blr
.endfn TMCCJPEGDecSetResolution

# .text:0x1EFC | 0x814EC344 | size: 0x50
.fn TMCJPEGDEC_Decompscan, global
/* 814EC344 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EC348 | 7C 08 02 A6 */	mflr r0
/* 814EC34C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EC350 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EC354 | 7C 7F 1B 78 */	mr r31, r3
/* 814EC358 | 48 00 07 DD */	bl TMCJPEGDEC_scanstart
/* 814EC35C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC360 | 40 80 00 08 */	bge .L_814EC368
/* 814EC364 | 48 00 00 1C */	b .L_814EC380
.L_814EC368:
/* 814EC368 | 88 BF 18 1C */	lbz r5, 0x181c(r31)
/* 814EC36C | 38 85 FF FF */	subi r4, r5, 0x1
/* 814EC370 | 20 05 00 01 */	subfic r0, r5, 0x1
/* 814EC374 | 7C 80 00 F8 */	nor r0, r4, r0
/* 814EC378 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814EC37C | 7C 63 00 78 */	andc r3, r3, r0
.L_814EC380:
/* 814EC380 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EC384 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EC388 | 7C 08 03 A6 */	mtlr r0
/* 814EC38C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EC390 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_Decompscan

# .text:0x1F4C | 0x814EC394 | size: 0x340
.fn TMCJPEGDEC_Setsize, global
/* 814EC394 | 80 83 19 E4 */	lwz r4, 0x19e4(r3)
/* 814EC398 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814EC39C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814EC3A0 | 41 82 00 A8 */	beq .L_814EC448
/* 814EC3A4 | 40 80 00 1C */	bge .L_814EC3C0
/* 814EC3A8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814EC3AC | 41 82 00 5C */	beq .L_814EC408
/* 814EC3B0 | 40 80 01 14 */	bge .L_814EC4C4
/* 814EC3B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814EC3B8 | 40 80 00 14 */	bge .L_814EC3CC
/* 814EC3BC | 48 00 01 08 */	b .L_814EC4C4
.L_814EC3C0:
/* 814EC3C0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814EC3C4 | 41 82 00 C4 */	beq .L_814EC488
/* 814EC3C8 | 48 00 00 FC */	b .L_814EC4C4
.L_814EC3CC:
/* 814EC3CC | 3C E0 81 4F */	lis r7, TMCJPEGDEC_IdctBlock_Lumi@ha
/* 814EC3D0 | 3C C0 81 4F */	lis r6, TMCJPEGDEC_IdctBlock_Col@ha
/* 814EC3D4 | 39 00 00 40 */	li r8, 0x40
/* 814EC3D8 | 3C A0 81 4F */	lis r5, TMCJPEGDEC_decode_iquant@ha
/* 814EC3DC | 38 E7 B3 DC */	addi r7, r7, TMCJPEGDEC_IdctBlock_Lumi@l
/* 814EC3E0 | 38 C6 B7 E0 */	addi r6, r6, TMCJPEGDEC_IdctBlock_Col@l
/* 814EC3E4 | 38 A5 6B D4 */	addi r5, r5, TMCJPEGDEC_decode_iquant@l
/* 814EC3E8 | 38 00 00 08 */	li r0, 0x8
/* 814EC3EC | 91 03 18 34 */	stw r8, 0x1834(r3)
/* 814EC3F0 | 91 03 18 38 */	stw r8, 0x1838(r3)
/* 814EC3F4 | 90 E3 18 20 */	stw r7, 0x1820(r3)
/* 814EC3F8 | 90 C3 18 24 */	stw r6, 0x1824(r3)
/* 814EC3FC | 90 A3 18 28 */	stw r5, 0x1828(r3)
/* 814EC400 | 98 03 19 DC */	stb r0, 0x19dc(r3)
/* 814EC404 | 48 00 00 C8 */	b .L_814EC4CC
.L_814EC408:
/* 814EC408 | 3C E0 81 4F */	lis r7, TMCJPEGDEC_IdctBlock4x4@ha
/* 814EC40C | 3C C0 81 4F */	lis r6, TMCJPEGDEC_IdctBlock4x4_Col@ha
/* 814EC410 | 3C A0 81 4F */	lis r5, TMCJPEGDEC_decode_iquant_rc@ha
/* 814EC414 | 39 20 00 19 */	li r9, 0x19
/* 814EC418 | 38 E7 F4 90 */	addi r7, r7, TMCJPEGDEC_IdctBlock4x4@l
/* 814EC41C | 38 C6 F8 10 */	addi r6, r6, TMCJPEGDEC_IdctBlock4x4_Col@l
/* 814EC420 | 38 A5 F1 04 */	addi r5, r5, TMCJPEGDEC_decode_iquant_rc@l
/* 814EC424 | 39 00 00 6C */	li r8, 0x6c
/* 814EC428 | 38 00 00 04 */	li r0, 0x4
/* 814EC42C | 91 23 18 34 */	stw r9, 0x1834(r3)
/* 814EC430 | 91 03 18 38 */	stw r8, 0x1838(r3)
/* 814EC434 | 90 E3 18 20 */	stw r7, 0x1820(r3)
/* 814EC438 | 90 C3 18 24 */	stw r6, 0x1824(r3)
/* 814EC43C | 90 A3 18 28 */	stw r5, 0x1828(r3)
/* 814EC440 | 98 03 19 DC */	stb r0, 0x19dc(r3)
/* 814EC444 | 48 00 00 88 */	b .L_814EC4CC
.L_814EC448:
/* 814EC448 | 3C E0 81 4F */	lis r7, TMCJPEGDEC_IdctBlock2x2@ha
/* 814EC44C | 3C C0 81 4F */	lis r6, TMCJPEGDEC_IdctBlock2x2_Col@ha
/* 814EC450 | 3C A0 81 4F */	lis r5, TMCJPEGDEC_decode_iquant_rc@ha
/* 814EC454 | 39 20 00 05 */	li r9, 0x5
/* 814EC458 | 38 E7 F6 B0 */	addi r7, r7, TMCJPEGDEC_IdctBlock2x2@l
/* 814EC45C | 38 C6 FA 34 */	addi r6, r6, TMCJPEGDEC_IdctBlock2x2_Col@l
/* 814EC460 | 38 A5 F1 04 */	addi r5, r5, TMCJPEGDEC_decode_iquant_rc@l
/* 814EC464 | 39 00 00 24 */	li r8, 0x24
/* 814EC468 | 38 00 00 02 */	li r0, 0x2
/* 814EC46C | 91 23 18 34 */	stw r9, 0x1834(r3)
/* 814EC470 | 91 03 18 38 */	stw r8, 0x1838(r3)
/* 814EC474 | 90 E3 18 20 */	stw r7, 0x1820(r3)
/* 814EC478 | 90 C3 18 24 */	stw r6, 0x1824(r3)
/* 814EC47C | 90 A3 18 28 */	stw r5, 0x1828(r3)
/* 814EC480 | 98 03 19 DC */	stb r0, 0x19dc(r3)
/* 814EC484 | 48 00 00 48 */	b .L_814EC4CC
.L_814EC488:
/* 814EC488 | 3C E0 81 4F */	lis r7, TMCJPEGDEC_IdctBlock1x1@ha
/* 814EC48C | 3C C0 81 4F */	lis r6, TMCJPEGDEC_IdctBlock1x1_Col@ha
/* 814EC490 | 39 00 00 01 */	li r8, 0x1
/* 814EC494 | 3C A0 81 4F */	lis r5, TMCJPEGDEC_decode_iquant_rc@ha
/* 814EC498 | 38 E7 F7 CC */	addi r7, r7, TMCJPEGDEC_IdctBlock1x1@l
/* 814EC49C | 38 C6 FB 58 */	addi r6, r6, TMCJPEGDEC_IdctBlock1x1_Col@l
/* 814EC4A0 | 38 A5 F1 04 */	addi r5, r5, TMCJPEGDEC_decode_iquant_rc@l
/* 814EC4A4 | 38 00 00 00 */	li r0, 0x0
/* 814EC4A8 | 91 03 18 34 */	stw r8, 0x1834(r3)
/* 814EC4AC | 90 03 18 38 */	stw r0, 0x1838(r3)
/* 814EC4B0 | 90 E3 18 20 */	stw r7, 0x1820(r3)
/* 814EC4B4 | 90 C3 18 24 */	stw r6, 0x1824(r3)
/* 814EC4B8 | 90 A3 18 28 */	stw r5, 0x1828(r3)
/* 814EC4BC | 99 03 19 DC */	stb r8, 0x19dc(r3)
/* 814EC4C0 | 48 00 00 0C */	b .L_814EC4CC
.L_814EC4C4:
/* 814EC4C4 | 38 60 FF 90 */	li r3, -0x70
/* 814EC4C8 | 4E 80 00 20 */	blr
.L_814EC4CC:
/* 814EC4CC | 88 03 17 FC */	lbz r0, 0x17fc(r3)
/* 814EC4D0 | 98 04 00 22 */	stb r0, 0x22(r4)
/* 814EC4D4 | 80 03 18 04 */	lwz r0, 0x1804(r3)
/* 814EC4D8 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814EC4DC | A0 03 18 00 */	lhz r0, 0x1800(r3)
/* 814EC4E0 | B0 04 00 10 */	sth r0, 0x10(r4)
/* 814EC4E4 | A0 03 18 02 */	lhz r0, 0x1802(r3)
/* 814EC4E8 | B0 04 00 12 */	sth r0, 0x12(r4)
/* 814EC4EC | 88 C4 00 20 */	lbz r6, 0x20(r4)
/* 814EC4F0 | 88 03 17 FD */	lbz r0, 0x17fd(r3)
/* 814EC4F4 | 7C A6 02 14 */	add r5, r6, r0
/* 814EC4F8 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814EC4FC | 7C 00 33 D6 */	divw r0, r0, r6
/* 814EC500 | 98 04 00 14 */	stb r0, 0x14(r4)
/* 814EC504 | 88 C4 00 20 */	lbz r6, 0x20(r4)
/* 814EC508 | 88 03 17 FE */	lbz r0, 0x17fe(r3)
/* 814EC50C | 7C A6 02 14 */	add r5, r6, r0
/* 814EC510 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814EC514 | 7C 00 33 D6 */	divw r0, r0, r6
/* 814EC518 | 98 04 00 15 */	stb r0, 0x15(r4)
/* 814EC51C | 88 C4 00 20 */	lbz r6, 0x20(r4)
/* 814EC520 | A0 03 17 F0 */	lhz r0, 0x17f0(r3)
/* 814EC524 | 7C A0 32 14 */	add r5, r0, r6
/* 814EC528 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814EC52C | 7C 00 33 D6 */	divw r0, r0, r6
/* 814EC530 | B0 04 00 24 */	sth r0, 0x24(r4)
/* 814EC534 | 88 C4 00 20 */	lbz r6, 0x20(r4)
/* 814EC538 | A0 03 17 F2 */	lhz r0, 0x17f2(r3)
/* 814EC53C | 7C A6 02 14 */	add r5, r6, r0
/* 814EC540 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814EC544 | 7C 00 33 D6 */	divw r0, r0, r6
/* 814EC548 | B0 04 00 26 */	sth r0, 0x26(r4)
/* 814EC54C | 88 C4 00 20 */	lbz r6, 0x20(r4)
/* 814EC550 | 88 03 18 08 */	lbz r0, 0x1808(r3)
/* 814EC554 | 7C A6 02 14 */	add r5, r6, r0
/* 814EC558 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814EC55C | 7C 00 33 D6 */	divw r0, r0, r6
/* 814EC560 | 98 04 00 16 */	stb r0, 0x16(r4)
/* 814EC564 | 54 00 06 3F */	clrlwi. r0, r0, 24
/* 814EC568 | 88 C4 00 20 */	lbz r6, 0x20(r4)
/* 814EC56C | 88 03 18 09 */	lbz r0, 0x1809(r3)
/* 814EC570 | 7C A6 02 14 */	add r5, r6, r0
/* 814EC574 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814EC578 | 7C 00 33 D6 */	divw r0, r0, r6
/* 814EC57C | 98 04 00 17 */	stb r0, 0x17(r4)
/* 814EC580 | 41 82 00 18 */	beq .L_814EC598
/* 814EC584 | A0 A4 00 10 */	lhz r5, 0x10(r4)
/* 814EC588 | 88 04 00 14 */	lbz r0, 0x14(r4)
/* 814EC58C | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814EC590 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814EC594 | 48 00 00 14 */	b .L_814EC5A8
.L_814EC598:
/* 814EC598 | A0 A4 00 10 */	lhz r5, 0x10(r4)
/* 814EC59C | 88 04 00 14 */	lbz r0, 0x14(r4)
/* 814EC5A0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814EC5A4 | 7C 05 01 D6 */	mullw r0, r5, r0
.L_814EC5A8:
/* 814EC5A8 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814EC5AC | 88 04 00 17 */	lbz r0, 0x17(r4)
/* 814EC5B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC5B4 | 41 82 00 18 */	beq .L_814EC5CC
/* 814EC5B8 | A0 A4 00 12 */	lhz r5, 0x12(r4)
/* 814EC5BC | 88 04 00 15 */	lbz r0, 0x15(r4)
/* 814EC5C0 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814EC5C4 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814EC5C8 | 48 00 00 14 */	b .L_814EC5DC
.L_814EC5CC:
/* 814EC5CC | A0 A4 00 12 */	lhz r5, 0x12(r4)
/* 814EC5D0 | 88 04 00 15 */	lbz r0, 0x15(r4)
/* 814EC5D4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814EC5D8 | 7C 05 01 D6 */	mullw r0, r5, r0
.L_814EC5DC:
/* 814EC5DC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814EC5E0 | 88 03 17 FC */	lbz r0, 0x17fc(r3)
/* 814EC5E4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814EC5E8 | 41 82 00 B8 */	beq .L_814EC6A0
/* 814EC5EC | 40 80 00 1C */	bge .L_814EC608
/* 814EC5F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814EC5F4 | 41 82 00 34 */	beq .L_814EC628
/* 814EC5F8 | 40 80 00 54 */	bge .L_814EC64C
/* 814EC5FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC600 | 40 80 00 80 */	bge .L_814EC680
/* 814EC604 | 48 00 00 C0 */	b .L_814EC6C4
.L_814EC608:
/* 814EC608 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814EC60C | 41 82 00 C0 */	beq .L_814EC6CC
/* 814EC610 | 40 80 00 B4 */	bge .L_814EC6C4
/* 814EC614 | A0 04 00 24 */	lhz r0, 0x24(r4)
/* 814EC618 | B0 04 00 28 */	sth r0, 0x28(r4)
/* 814EC61C | A0 04 00 26 */	lhz r0, 0x26(r4)
/* 814EC620 | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 814EC624 | 48 00 00 A8 */	b .L_814EC6CC
.L_814EC628:
/* 814EC628 | A0 64 00 24 */	lhz r3, 0x24(r4)
/* 814EC62C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EC630 | 54 60 0F FE */	srwi r0, r3, 31
/* 814EC634 | 7C 00 1A 14 */	add r0, r0, r3
/* 814EC638 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814EC63C | B0 04 00 28 */	sth r0, 0x28(r4)
/* 814EC640 | A0 04 00 26 */	lhz r0, 0x26(r4)
/* 814EC644 | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 814EC648 | 48 00 00 84 */	b .L_814EC6CC
.L_814EC64C:
/* 814EC64C | A0 64 00 24 */	lhz r3, 0x24(r4)
/* 814EC650 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EC654 | 54 60 0F FE */	srwi r0, r3, 31
/* 814EC658 | 7C 00 1A 14 */	add r0, r0, r3
/* 814EC65C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814EC660 | B0 04 00 28 */	sth r0, 0x28(r4)
/* 814EC664 | A0 64 00 26 */	lhz r3, 0x26(r4)
/* 814EC668 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EC66C | 54 60 0F FE */	srwi r0, r3, 31
/* 814EC670 | 7C 00 1A 14 */	add r0, r0, r3
/* 814EC674 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814EC678 | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 814EC67C | 48 00 00 50 */	b .L_814EC6CC
.L_814EC680:
/* 814EC680 | A0 64 00 24 */	lhz r3, 0x24(r4)
/* 814EC684 | 38 03 00 03 */	addi r0, r3, 0x3
/* 814EC688 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814EC68C | 7C 00 01 94 */	addze r0, r0
/* 814EC690 | B0 04 00 28 */	sth r0, 0x28(r4)
/* 814EC694 | A0 04 00 26 */	lhz r0, 0x26(r4)
/* 814EC698 | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 814EC69C | 48 00 00 30 */	b .L_814EC6CC
.L_814EC6A0:
/* 814EC6A0 | A0 04 00 24 */	lhz r0, 0x24(r4)
/* 814EC6A4 | B0 04 00 28 */	sth r0, 0x28(r4)
/* 814EC6A8 | A0 64 00 26 */	lhz r3, 0x26(r4)
/* 814EC6AC | 38 63 00 01 */	addi r3, r3, 0x1
/* 814EC6B0 | 54 60 0F FE */	srwi r0, r3, 31
/* 814EC6B4 | 7C 00 1A 14 */	add r0, r0, r3
/* 814EC6B8 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814EC6BC | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 814EC6C0 | 48 00 00 0C */	b .L_814EC6CC
.L_814EC6C4:
/* 814EC6C4 | 38 60 FF 90 */	li r3, -0x70
/* 814EC6C8 | 4E 80 00 20 */	blr
.L_814EC6CC:
/* 814EC6CC | 38 60 00 00 */	li r3, 0x0
/* 814EC6D0 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_Setsize

# .text:0x228C | 0x814EC6D4 | size: 0x6C
.fn TMCJPEGDEC_HeaderAnalyze, global
/* 814EC6D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EC6D8 | 7C 08 02 A6 */	mflr r0
/* 814EC6DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EC6E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EC6E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814EC6E8 | 48 00 02 1D */	bl TMCJPEGDEC_imagestart
/* 814EC6EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC6F0 | 40 80 00 08 */	bge .L_814EC6F8
/* 814EC6F4 | 48 00 00 38 */	b .L_814EC72C
.L_814EC6F8:
/* 814EC6F8 | A0 1F 17 F0 */	lhz r0, 0x17f0(r31)
/* 814EC6FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC700 | 40 82 00 0C */	bne .L_814EC70C
/* 814EC704 | 38 60 FF B0 */	li r3, -0x50
/* 814EC708 | 48 00 00 24 */	b .L_814EC72C
.L_814EC70C:
/* 814EC70C | 88 DF 17 FD */	lbz r6, 0x17fd(r31)
/* 814EC710 | A0 BF 18 00 */	lhz r5, 0x1800(r31)
/* 814EC714 | 88 9F 17 FE */	lbz r4, 0x17fe(r31)
/* 814EC718 | A0 1F 18 02 */	lhz r0, 0x1802(r31)
/* 814EC71C | 7C A6 29 D6 */	mullw r5, r6, r5
/* 814EC720 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814EC724 | 90 BF 17 F4 */	stw r5, 0x17f4(r31)
/* 814EC728 | 90 1F 17 F8 */	stw r0, 0x17f8(r31)
.L_814EC72C:
/* 814EC72C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EC730 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EC734 | 7C 08 03 A6 */	mtlr r0
/* 814EC738 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EC73C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_HeaderAnalyze

# .text:0x22F8 | 0x814EC740 | size: 0x1C4
.fn TMCJPEGDEC_decompmcu, global
/* 814EC740 | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 814EC744 | 7C 08 02 A6 */	mflr r0
/* 814EC748 | 90 01 01 64 */	stw r0, 0x164(r1)
/* 814EC74C | BD C1 01 18 */	stmw r14, 0x118(r1)
/* 814EC750 | 39 C5 00 2C */	addi r14, r5, 0x2c
/* 814EC754 | 7C AF 2B 78 */	mr r15, r5
/* 814EC758 | 3A A5 17 F0 */	addi r21, r5, 0x17f0
/* 814EC75C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814EC760 | 7D DF 73 78 */	mr r31, r14
/* 814EC764 | 3A 85 00 58 */	addi r20, r5, 0x58
/* 814EC768 | 3A 65 18 3C */	addi r19, r5, 0x183c
/* 814EC76C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814EC770 | 3B CE 00 04 */	addi r30, r14, 0x4
/* 814EC774 | 3B 20 00 00 */	li r25, 0x0
/* 814EC778 | 80 05 19 E4 */	lwz r0, 0x19e4(r5)
/* 814EC77C | 82 05 18 28 */	lwz r16, 0x1828(r5)
/* 814EC780 | 90 01 01 10 */	stw r0, 0x110(r1)
/* 814EC784 | 82 45 18 20 */	lwz r18, 0x1820(r5)
/* 814EC788 | 82 25 18 24 */	lwz r17, 0x1824(r5)
/* 814EC78C | A2 C5 19 DE */	lhz r22, 0x19de(r5)
/* 814EC790 | 48 00 00 CC */	b .L_814EC85C
.L_814EC794:
/* 814EC794 | 8B 1F 00 00 */	lbz r24, 0x0(r31)
/* 814EC798 | 7E 83 A3 78 */	mr r3, r20
/* 814EC79C | 7C AE C2 14 */	add r5, r14, r24
/* 814EC7A0 | 88 05 00 18 */	lbz r0, 0x18(r5)
/* 814EC7A4 | 88 85 00 1C */	lbz r4, 0x1c(r5)
/* 814EC7A8 | 54 00 40 2E */	slwi r0, r0, 8
/* 814EC7AC | 88 A5 00 20 */	lbz r5, 0x20(r5)
/* 814EC7B0 | 7F 54 02 14 */	add r26, r20, r0
/* 814EC7B4 | 48 00 14 D9 */	bl TMCJPEGDEC_set_entropytbl
/* 814EC7B8 | 57 00 10 3A */	slwi r0, r24, 2
/* 814EC7BC | 7E 7D 9B 78 */	mr r29, r19
/* 814EC7C0 | 7F 93 02 14 */	add r28, r19, r0
/* 814EC7C4 | 7F 75 CA 14 */	add r27, r21, r25
/* 814EC7C8 | 3A E0 00 00 */	li r23, 0x0
/* 814EC7CC | 48 00 00 78 */	b .L_814EC844
.L_814EC7D0:
/* 814EC7D0 | 7E 0C 83 78 */	mr r12, r16
/* 814EC7D4 | 7F 44 D3 78 */	mr r4, r26
/* 814EC7D8 | 7F C5 F3 78 */	mr r5, r30
/* 814EC7DC | 7D E6 7B 78 */	mr r6, r15
/* 814EC7E0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814EC7E4 | 7D 89 03 A6 */	mtctr r12
/* 814EC7E8 | 4E 80 04 21 */	bctrl
/* 814EC7EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC7F0 | 40 80 00 08 */	bge .L_814EC7F8
/* 814EC7F4 | 48 00 00 FC */	b .L_814EC8F0
.L_814EC7F8:
/* 814EC7F8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814EC7FC | 40 82 00 24 */	bne .L_814EC820
/* 814EC800 | 7E 4C 93 78 */	mr r12, r18
/* 814EC804 | 7C 66 1B 78 */	mr r6, r3
/* 814EC808 | 7E C5 B3 78 */	mr r5, r22
/* 814EC80C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814EC810 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814EC814 | 7D 89 03 A6 */	mtctr r12
/* 814EC818 | 4E 80 04 21 */	bctrl
/* 814EC81C | 48 00 00 20 */	b .L_814EC83C
.L_814EC820:
/* 814EC820 | 7E 2C 8B 78 */	mr r12, r17
/* 814EC824 | 7C 66 1B 78 */	mr r6, r3
/* 814EC828 | 7E C5 B3 78 */	mr r5, r22
/* 814EC82C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814EC830 | 80 9C 00 10 */	lwz r4, 0x10(r28)
/* 814EC834 | 7D 89 03 A6 */	mtctr r12
/* 814EC838 | 4E 80 04 21 */	bctrl
.L_814EC83C:
/* 814EC83C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814EC840 | 3A F7 00 01 */	addi r23, r23, 0x1
.L_814EC844:
/* 814EC844 | 88 1B 00 1C */	lbz r0, 0x1c(r27)
/* 814EC848 | 7C 17 00 00 */	cmpw r23, r0
/* 814EC84C | 41 80 FF 84 */	blt .L_814EC7D0
/* 814EC850 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 814EC854 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814EC858 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814EC85C:
/* 814EC85C | 88 15 00 1B */	lbz r0, 0x1b(r21)
/* 814EC860 | 7C 19 00 00 */	cmpw r25, r0
/* 814EC864 | 41 80 FF 30 */	blt .L_814EC794
/* 814EC868 | 80 61 01 10 */	lwz r3, 0x110(r1)
/* 814EC86C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814EC870 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 814EC874 | 7C 00 18 40 */	cmplw r0, r3
/* 814EC878 | 41 82 00 34 */	beq .L_814EC8AC
/* 814EC87C | 80 61 01 10 */	lwz r3, 0x110(r1)
/* 814EC880 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814EC884 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 814EC888 | 7C 00 18 40 */	cmplw r0, r3
/* 814EC88C | 41 82 00 20 */	beq .L_814EC8AC
/* 814EC890 | 81 8F 18 2C */	lwz r12, 0x182c(r15)
/* 814EC894 | 7D E3 7B 78 */	mr r3, r15
/* 814EC898 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814EC89C | 7C 05 03 78 */	mr r5, r0
/* 814EC8A0 | 7D 89 03 A6 */	mtctr r12
/* 814EC8A4 | 4E 80 04 21 */	bctrl
/* 814EC8A8 | 48 00 00 1C */	b .L_814EC8C4
.L_814EC8AC:
/* 814EC8AC | 81 8F 18 30 */	lwz r12, 0x1830(r15)
/* 814EC8B0 | 7D E3 7B 78 */	mr r3, r15
/* 814EC8B4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814EC8B8 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814EC8BC | 7D 89 03 A6 */	mtctr r12
/* 814EC8C0 | 4E 80 04 21 */	bctrl
.L_814EC8C4:
/* 814EC8C4 | A0 15 00 2A */	lhz r0, 0x2a(r21)
/* 814EC8C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EC8CC | 41 82 00 20 */	beq .L_814EC8EC
/* 814EC8D0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814EC8D4 | 7D E3 7B 78 */	mr r3, r15
/* 814EC8D8 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814EC8DC | 48 00 05 31 */	bl TMCJPEGDEC_restart_interval
/* 814EC8E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EC8E4 | 40 80 00 08 */	bge .L_814EC8EC
/* 814EC8E8 | 48 00 00 08 */	b .L_814EC8F0
.L_814EC8EC:
/* 814EC8EC | 38 60 00 00 */	li r3, 0x0
.L_814EC8F0:
/* 814EC8F0 | B9 C1 01 18 */	lmw r14, 0x118(r1)
/* 814EC8F4 | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 814EC8F8 | 7C 08 03 A6 */	mtlr r0
/* 814EC8FC | 38 21 01 60 */	addi r1, r1, 0x160
/* 814EC900 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_decompmcu

# .text:0x24BC | 0x814EC904 | size: 0x190
.fn TMCJPEGDEC_imagestart, global
/* 814EC904 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EC908 | 7C 08 02 A6 */	mflr r0
/* 814EC90C | 3D 00 81 62 */	lis r8, TMCJPEGDEC_Zigzag_data@ha
/* 814EC910 | 38 80 00 00 */	li r4, 0x0
/* 814EC914 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EC918 | 38 00 00 04 */	li r0, 0x4
/* 814EC91C | 39 08 E1 B0 */	addi r8, r8, TMCJPEGDEC_Zigzag_data@l
/* 814EC920 | 38 E0 00 00 */	li r7, 0x0
/* 814EC924 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EC928 | 7C 7F 1B 78 */	mr r31, r3
/* 814EC92C | B0 83 18 1A */	sth r4, 0x181a(r3)
/* 814EC930 | 98 83 18 1C */	stb r4, 0x181c(r3)
/* 814EC934 | 7C 09 03 A6 */	mtctr r0
.L_814EC938:
/* 814EC938 | 88 C8 00 00 */	lbz r6, 0x0(r8)
/* 814EC93C | 7D 23 3A 14 */	add r9, r3, r7
/* 814EC940 | 88 A8 00 01 */	lbz r5, 0x1(r8)
/* 814EC944 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 814EC948 | 54 C6 16 3A */	clrlslwi r6, r6, 26, 2
/* 814EC94C | 88 88 00 02 */	lbz r4, 0x2(r8)
/* 814EC950 | 98 C9 04 58 */	stb r6, 0x458(r9)
/* 814EC954 | 54 A5 16 3A */	clrlslwi r5, r5, 26, 2
/* 814EC958 | 54 86 16 3A */	clrlslwi r6, r4, 26, 2
/* 814EC95C | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814EC960 | 98 A9 04 59 */	stb r5, 0x459(r9)
/* 814EC964 | 54 05 16 3A */	clrlslwi r5, r0, 26, 2
/* 814EC968 | 88 88 00 04 */	lbz r4, 0x4(r8)
/* 814EC96C | 98 C9 04 5A */	stb r6, 0x45a(r9)
/* 814EC970 | 54 86 16 3A */	clrlslwi r6, r4, 26, 2
/* 814EC974 | 88 88 00 06 */	lbz r4, 0x6(r8)
/* 814EC978 | 98 A9 04 5B */	stb r5, 0x45b(r9)
/* 814EC97C | 88 08 00 05 */	lbz r0, 0x5(r8)
/* 814EC980 | 54 84 16 3A */	clrlslwi r4, r4, 26, 2
/* 814EC984 | 98 C9 04 5C */	stb r6, 0x45c(r9)
/* 814EC988 | 54 05 16 3A */	clrlslwi r5, r0, 26, 2
/* 814EC98C | 88 08 00 07 */	lbz r0, 0x7(r8)
/* 814EC990 | 98 A9 04 5D */	stb r5, 0x45d(r9)
/* 814EC994 | 88 C8 00 08 */	lbz r6, 0x8(r8)
/* 814EC998 | 54 00 16 3A */	clrlslwi r0, r0, 26, 2
/* 814EC99C | 98 89 04 5E */	stb r4, 0x45e(r9)
/* 814EC9A0 | 88 A8 00 09 */	lbz r5, 0x9(r8)
/* 814EC9A4 | 54 C6 16 3A */	clrlslwi r6, r6, 26, 2
/* 814EC9A8 | 98 09 04 5F */	stb r0, 0x45f(r9)
/* 814EC9AC | 7D 23 3A 14 */	add r9, r3, r7
/* 814EC9B0 | 88 88 00 0A */	lbz r4, 0xa(r8)
/* 814EC9B4 | 54 A5 16 3A */	clrlslwi r5, r5, 26, 2
/* 814EC9B8 | 98 C9 04 58 */	stb r6, 0x458(r9)
/* 814EC9BC | 38 E7 00 08 */	addi r7, r7, 0x8
/* 814EC9C0 | 54 86 16 3A */	clrlslwi r6, r4, 26, 2
/* 814EC9C4 | 88 08 00 0B */	lbz r0, 0xb(r8)
/* 814EC9C8 | 98 A9 04 59 */	stb r5, 0x459(r9)
/* 814EC9CC | 54 05 16 3A */	clrlslwi r5, r0, 26, 2
/* 814EC9D0 | 88 88 00 0C */	lbz r4, 0xc(r8)
/* 814EC9D4 | 98 C9 04 5A */	stb r6, 0x45a(r9)
/* 814EC9D8 | 54 86 16 3A */	clrlslwi r6, r4, 26, 2
/* 814EC9DC | 88 88 00 0E */	lbz r4, 0xe(r8)
/* 814EC9E0 | 98 A9 04 5B */	stb r5, 0x45b(r9)
/* 814EC9E4 | 88 08 00 0D */	lbz r0, 0xd(r8)
/* 814EC9E8 | 54 84 16 3A */	clrlslwi r4, r4, 26, 2
/* 814EC9EC | 98 C9 04 5C */	stb r6, 0x45c(r9)
/* 814EC9F0 | 54 05 16 3A */	clrlslwi r5, r0, 26, 2
/* 814EC9F4 | 88 08 00 0F */	lbz r0, 0xf(r8)
/* 814EC9F8 | 98 A9 04 5D */	stb r5, 0x45d(r9)
/* 814EC9FC | 39 08 00 10 */	addi r8, r8, 0x10
/* 814ECA00 | 54 00 16 3A */	clrlslwi r0, r0, 26, 2
/* 814ECA04 | 98 89 04 5E */	stb r4, 0x45e(r9)
/* 814ECA08 | 98 09 04 5F */	stb r0, 0x45f(r9)
/* 814ECA0C | 42 00 FF 2C */	bdnz .L_814EC938
/* 814ECA10 | 7F E4 FB 78 */	mr r4, r31
/* 814ECA14 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ECA18 | 4B FF E0 D1 */	bl TMCJPEGDEC_get_wbyte
/* 814ECA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECA20 | 40 80 00 08 */	bge .L_814ECA28
/* 814ECA24 | 48 00 00 5C */	b .L_814ECA80
.L_814ECA28:
/* 814ECA28 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814ECA2C | 28 00 FF D8 */	cmplwi r0, 0xffd8
/* 814ECA30 | 41 82 00 0C */	beq .L_814ECA3C
/* 814ECA34 | 38 60 FF E0 */	li r3, -0x20
/* 814ECA38 | 48 00 00 48 */	b .L_814ECA80
.L_814ECA3C:
/* 814ECA3C | 38 00 00 00 */	li r0, 0x0
/* 814ECA40 | 7F E4 FB 78 */	mr r4, r31
/* 814ECA44 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814ECA48 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ECA4C | 48 00 05 35 */	bl TMCJPEG_814ECF80
/* 814ECA50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECA54 | 40 80 00 08 */	bge .L_814ECA5C
/* 814ECA58 | 48 00 00 28 */	b .L_814ECA80
.L_814ECA5C:
/* 814ECA5C | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814ECA60 | 28 00 FF C0 */	cmplwi r0, 0xffc0
/* 814ECA64 | 41 82 00 0C */	beq .L_814ECA70
/* 814ECA68 | 38 60 FF F0 */	li r3, -0x10
/* 814ECA6C | 48 00 00 14 */	b .L_814ECA80
.L_814ECA70:
/* 814ECA70 | 7F E3 FB 78 */	mr r3, r31
/* 814ECA74 | 48 00 0B 11 */	bl TMCJPEG_814ED584
/* 814ECA78 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814ECA7C | 7C 63 00 38 */	and r3, r3, r0
.L_814ECA80:
/* 814ECA80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ECA84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ECA88 | 7C 08 03 A6 */	mtlr r0
/* 814ECA8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ECA90 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_imagestart

# .text:0x264C | 0x814ECA94 | size: 0xA0
.fn TMCJPEGDEC_imageend, global
/* 814ECA94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ECA98 | 7C 08 02 A6 */	mflr r0
/* 814ECA9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ECAA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814ECAA4 | 7C 7F 1B 78 */	mr r31, r3
/* 814ECAA8 | 80 83 19 E4 */	lwz r4, 0x19e4(r3)
/* 814ECAAC | 88 04 00 21 */	lbz r0, 0x21(r4)
/* 814ECAB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814ECAB4 | 40 82 00 0C */	bne .L_814ECAC0
/* 814ECAB8 | 38 60 00 00 */	li r3, 0x0
/* 814ECABC | 48 00 00 64 */	b .L_814ECB20
.L_814ECAC0:
/* 814ECAC0 | 88 03 18 1C */	lbz r0, 0x181c(r3)
/* 814ECAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814ECAC8 | 40 82 00 54 */	bne .L_814ECB1C
/* 814ECACC | 4B FF E8 6D */	bl TMCJPEGDEC_rewind_ptr
/* 814ECAD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECAD4 | 40 80 00 08 */	bge .L_814ECADC
/* 814ECAD8 | 48 00 00 48 */	b .L_814ECB20
.L_814ECADC:
/* 814ECADC | 7F E4 FB 78 */	mr r4, r31
/* 814ECAE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ECAE4 | 4B FF E0 05 */	bl TMCJPEGDEC_get_wbyte
/* 814ECAE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECAEC | 40 80 00 10 */	bge .L_814ECAFC
/* 814ECAF0 | 2C 03 FF 70 */	cmpwi r3, -0x90
/* 814ECAF4 | 41 82 00 08 */	beq .L_814ECAFC
/* 814ECAF8 | 48 00 00 28 */	b .L_814ECB20
.L_814ECAFC:
/* 814ECAFC | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814ECB00 | 28 00 FF D9 */	cmplwi r0, 0xffd9
/* 814ECB04 | 41 82 00 18 */	beq .L_814ECB1C
/* 814ECB08 | 80 9F 19 E4 */	lwz r4, 0x19e4(r31)
/* 814ECB0C | 38 00 FF DF */	li r0, -0x21
/* 814ECB10 | 38 60 00 00 */	li r3, 0x0
/* 814ECB14 | 90 04 06 CC */	stw r0, 0x6cc(r4)
/* 814ECB18 | 48 00 00 08 */	b .L_814ECB20
.L_814ECB1C:
/* 814ECB1C | 38 60 00 00 */	li r3, 0x0
.L_814ECB20:
/* 814ECB20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ECB24 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ECB28 | 7C 08 03 A6 */	mtlr r0
/* 814ECB2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ECB30 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_imageend

# .text:0x26EC | 0x814ECB34 | size: 0xD4
.fn TMCJPEGDEC_scanstart, global
/* 814ECB34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ECB38 | 7C 08 02 A6 */	mflr r0
/* 814ECB3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ECB40 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814ECB44 | 3B E0 00 00 */	li r31, 0x0
/* 814ECB48 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814ECB4C | 7C 7E 1B 78 */	mr r30, r3
/* 814ECB50 | 7F C4 F3 78 */	mr r4, r30
/* 814ECB54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ECB58 | B3 E1 00 08 */	sth r31, 0x8(r1)
/* 814ECB5C | 48 00 04 25 */	bl TMCJPEG_814ECF80
/* 814ECB60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECB64 | 40 80 00 08 */	bge .L_814ECB6C
/* 814ECB68 | 48 00 00 88 */	b .L_814ECBF0
.L_814ECB6C:
/* 814ECB6C | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814ECB70 | 28 00 FF DA */	cmplwi r0, 0xffda
/* 814ECB74 | 41 82 00 0C */	beq .L_814ECB80
/* 814ECB78 | 38 60 FF DE */	li r3, -0x22
/* 814ECB7C | 48 00 00 74 */	b .L_814ECBF0
.L_814ECB80:
/* 814ECB80 | 7F C3 F3 78 */	mr r3, r30
/* 814ECB84 | 48 00 0D 7D */	bl TMCJPEG_814ED900
/* 814ECB88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECB8C | 40 80 00 08 */	bge .L_814ECB94
/* 814ECB90 | 48 00 00 60 */	b .L_814ECBF0
.L_814ECB94:
/* 814ECB94 | A0 1E 17 F2 */	lhz r0, 0x17f2(r30)
/* 814ECB98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814ECB9C | 40 82 00 0C */	bne .L_814ECBA8
/* 814ECBA0 | 38 60 FF B0 */	li r3, -0x50
/* 814ECBA4 | 48 00 00 4C */	b .L_814ECBF0
.L_814ECBA8:
/* 814ECBA8 | 7F C3 F3 78 */	mr r3, r30
/* 814ECBAC | 48 00 00 5D */	bl TMCJPEGDEC_scan_varinit
/* 814ECBB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECBB4 | 40 80 00 08 */	bge .L_814ECBBC
/* 814ECBB8 | 48 00 00 38 */	b .L_814ECBF0
.L_814ECBBC:
/* 814ECBBC | 93 FE 00 30 */	stw r31, 0x30(r30)
/* 814ECBC0 | 7F C3 F3 78 */	mr r3, r30
/* 814ECBC4 | 93 FE 00 34 */	stw r31, 0x34(r30)
/* 814ECBC8 | 93 FE 00 38 */	stw r31, 0x38(r30)
/* 814ECBCC | 93 FE 00 3C */	stw r31, 0x3c(r30)
/* 814ECBD0 | B3 FE 00 50 */	sth r31, 0x50(r30)
/* 814ECBD4 | 4B FF E7 55 */	bl TMCJPEGDEC_init_buff
/* 814ECBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECBDC | 40 80 00 08 */	bge .L_814ECBE4
/* 814ECBE0 | 48 00 00 10 */	b .L_814ECBF0
.L_814ECBE4:
/* 814ECBE4 | B3 FE 00 52 */	sth r31, 0x52(r30)
/* 814ECBE8 | 38 60 00 00 */	li r3, 0x0
/* 814ECBEC | 93 FE 00 54 */	stw r31, 0x54(r30)
.L_814ECBF0:
/* 814ECBF0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ECBF4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ECBF8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814ECBFC | 7C 08 03 A6 */	mtlr r0
/* 814ECC00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ECC04 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_scanstart

# .text:0x27C0 | 0x814ECC08 | size: 0x204
.fn TMCJPEGDEC_scan_varinit, global
/* 814ECC08 | 88 83 17 FC */	lbz r4, 0x17fc(r3)
/* 814ECC0C | 38 A3 17 F0 */	addi r5, r3, 0x17f0
/* 814ECC10 | 88 03 18 0B */	lbz r0, 0x180b(r3)
/* 814ECC14 | 60 84 01 00 */	ori r4, r4, 0x100
/* 814ECC18 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814ECC1C | 98 83 17 FC */	stb r4, 0x17fc(r3)
/* 814ECC20 | 40 82 00 58 */	bne .L_814ECC78
/* 814ECC24 | 88 03 00 2C */	lbz r0, 0x2c(r3)
/* 814ECC28 | 88 C5 00 28 */	lbz r6, 0x28(r5)
/* 814ECC2C | 7D 05 02 14 */	add r8, r5, r0
/* 814ECC30 | 88 05 00 29 */	lbz r0, 0x29(r5)
/* 814ECC34 | 88 88 00 20 */	lbz r4, 0x20(r8)
/* 814ECC38 | 54 C9 18 38 */	slwi r9, r6, 3
/* 814ECC3C | 54 07 18 38 */	slwi r7, r0, 3
/* 814ECC40 | A0 C5 00 00 */	lhz r6, 0x0(r5)
/* 814ECC44 | 7C 09 23 D6 */	divw r0, r9, r4
/* 814ECC48 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 814ECC4C | 98 05 00 0D */	stb r0, 0xd(r5)
/* 814ECC50 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814ECC54 | 7C 06 03 D6 */	divw r0, r6, r0
/* 814ECC58 | 88 C8 00 24 */	lbz r6, 0x24(r8)
/* 814ECC5C | 7C C7 33 D6 */	divw r6, r7, r6
/* 814ECC60 | B0 05 00 10 */	sth r0, 0x10(r5)
/* 814ECC64 | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 814ECC68 | 98 C5 00 0E */	stb r6, 0xe(r5)
/* 814ECC6C | 7C 04 03 D6 */	divw r0, r4, r0
/* 814ECC70 | B0 05 00 12 */	sth r0, 0x12(r5)
/* 814ECC74 | 48 00 00 34 */	b .L_814ECCA8
.L_814ECC78:
/* 814ECC78 | 88 85 00 28 */	lbz r4, 0x28(r5)
/* 814ECC7C | 88 05 00 29 */	lbz r0, 0x29(r5)
/* 814ECC80 | 54 87 1E 38 */	clrlslwi r7, r4, 27, 3
/* 814ECC84 | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 814ECC88 | 54 06 1E 38 */	clrlslwi r6, r0, 27, 3
/* 814ECC8C | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 814ECC90 | 7C 84 3B D6 */	divw r4, r4, r7
/* 814ECC94 | 98 E5 00 0D */	stb r7, 0xd(r5)
/* 814ECC98 | 98 C5 00 0E */	stb r6, 0xe(r5)
/* 814ECC9C | 7C 00 33 D6 */	divw r0, r0, r6
/* 814ECCA0 | B0 85 00 10 */	sth r4, 0x10(r5)
/* 814ECCA4 | B0 05 00 12 */	sth r0, 0x12(r5)
.L_814ECCA8:
/* 814ECCA8 | A1 85 00 00 */	lhz r12, 0x0(r5)
/* 814ECCAC | 38 80 00 00 */	li r4, 0x0
/* 814ECCB0 | 89 65 00 0D */	lbz r11, 0xd(r5)
/* 814ECCB4 | A1 45 00 02 */	lhz r10, 0x2(r5)
/* 814ECCB8 | 7D 0C 5B D6 */	divw r8, r12, r11
/* 814ECCBC | 88 C5 00 0E */	lbz r6, 0xe(r5)
/* 814ECCC0 | A1 25 00 10 */	lhz r9, 0x10(r5)
/* 814ECCC4 | A0 E5 00 12 */	lhz r7, 0x12(r5)
/* 814ECCC8 | 7D 08 59 D6 */	mullw r8, r8, r11
/* 814ECCCC | 7D 68 60 50 */	subf r11, r8, r12
/* 814ECCD0 | 7C 0A 33 D6 */	divw r0, r10, r6
/* 814ECCD4 | 99 65 00 18 */	stb r11, 0x18(r5)
/* 814ECCD8 | 7D 00 31 D6 */	mullw r8, r0, r6
/* 814ECCDC | 55 66 06 3E */	clrlwi r6, r11, 24
/* 814ECCE0 | 7C 06 00 D0 */	neg r0, r6
/* 814ECCE4 | 7D 48 50 50 */	subf r10, r8, r10
/* 814ECCE8 | 7C 08 33 78 */	or r8, r0, r6
/* 814ECCEC | 99 45 00 19 */	stb r10, 0x19(r5)
/* 814ECCF0 | 55 46 06 3E */	clrlwi r6, r10, 24
/* 814ECCF4 | 7C 06 00 D0 */	neg r0, r6
/* 814ECCF8 | 55 08 0F FE */	srwi r8, r8, 31
/* 814ECCFC | 7C 00 33 78 */	or r0, r0, r6
/* 814ECD00 | 7D 09 42 14 */	add r8, r9, r8
/* 814ECD04 | 54 00 0F FE */	srwi r0, r0, 31
/* 814ECD08 | B1 05 00 10 */	sth r8, 0x10(r5)
/* 814ECD0C | 7C E7 02 14 */	add r7, r7, r0
/* 814ECD10 | 55 06 04 3E */	clrlwi r6, r8, 16
/* 814ECD14 | 54 E0 04 3E */	clrlwi r0, r7, 16
/* 814ECD18 | B0 E5 00 12 */	sth r7, 0x12(r5)
/* 814ECD1C | 7C 06 01 D6 */	mullw r0, r6, r0
/* 814ECD20 | 90 05 00 14 */	stw r0, 0x14(r5)
/* 814ECD24 | 48 00 00 38 */	b .L_814ECD5C
.L_814ECD28:
/* 814ECD28 | 7C C3 22 14 */	add r6, r3, r4
/* 814ECD2C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814ECD30 | 88 06 00 2C */	lbz r0, 0x2c(r6)
/* 814ECD34 | 40 82 00 0C */	bne .L_814ECD40
/* 814ECD38 | 38 00 00 01 */	li r0, 0x1
/* 814ECD3C | 48 00 00 14 */	b .L_814ECD50
.L_814ECD40:
/* 814ECD40 | 7C E5 02 14 */	add r7, r5, r0
/* 814ECD44 | 88 C7 00 20 */	lbz r6, 0x20(r7)
/* 814ECD48 | 88 07 00 24 */	lbz r0, 0x24(r7)
/* 814ECD4C | 7C 06 01 D6 */	mullw r0, r6, r0
.L_814ECD50:
/* 814ECD50 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECD54 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECD58 | 98 06 00 1C */	stb r0, 0x1c(r6)
.L_814ECD5C:
/* 814ECD5C | 88 05 00 1B */	lbz r0, 0x1b(r5)
/* 814ECD60 | 7C 04 00 00 */	cmpw r4, r0
/* 814ECD64 | 41 80 FF C4 */	blt .L_814ECD28
/* 814ECD68 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814ECD6C | 20 64 00 04 */	subfic r3, r4, 0x4
/* 814ECD70 | 38 E0 00 00 */	li r7, 0x0
/* 814ECD74 | 40 80 00 90 */	bge .L_814ECE04
/* 814ECD78 | 54 60 E8 FF */	srwi. r0, r3, 3
/* 814ECD7C | 7C 09 03 A6 */	mtctr r0
/* 814ECD80 | 41 82 00 70 */	beq .L_814ECDF0
.L_814ECD84:
/* 814ECD84 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECD88 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECD8C | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECD90 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECD94 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECD98 | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECD9C | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDA0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDA4 | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECDA8 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDAC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDB0 | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECDB4 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDB8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDBC | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECDC0 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDC4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDC8 | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECDCC | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDD0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDD4 | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECDD8 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDDC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDE0 | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECDE4 | 42 00 FF A0 */	bdnz .L_814ECD84
/* 814ECDE8 | 70 63 00 07 */	andi. r3, r3, 0x7
/* 814ECDEC | 41 82 00 18 */	beq .L_814ECE04
.L_814ECDF0:
/* 814ECDF0 | 7C 69 03 A6 */	mtctr r3
.L_814ECDF4:
/* 814ECDF4 | 7C C5 22 14 */	add r6, r5, r4
/* 814ECDF8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECDFC | 98 E6 00 1C */	stb r7, 0x1c(r6)
/* 814ECE00 | 42 00 FF F4 */	bdnz .L_814ECDF4
.L_814ECE04:
/* 814ECE04 | 38 60 00 00 */	li r3, 0x0
/* 814ECE08 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_scan_varinit

# .text:0x29C4 | 0x814ECE0C | size: 0x174
.fn TMCJPEGDEC_restart_interval, global
/* 814ECE0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ECE10 | 7C 08 02 A6 */	mflr r0
/* 814ECE14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ECE18 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814ECE1C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814ECE20 | 7C 9E 23 78 */	mr r30, r4
/* 814ECE24 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814ECE28 | 7C 7D 1B 78 */	mr r29, r3
/* 814ECE2C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814ECE30 | 7C BC 2B 78 */	mr r28, r5
/* 814ECE34 | A0 C3 00 50 */	lhz r6, 0x50(r3)
/* 814ECE38 | A0 03 18 1A */	lhz r0, 0x181a(r3)
/* 814ECE3C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814ECE40 | 83 E3 19 E4 */	lwz r31, 0x19e4(r3)
/* 814ECE44 | 54 C4 04 3E */	clrlwi r4, r6, 16
/* 814ECE48 | B0 C3 00 50 */	sth r6, 0x50(r3)
/* 814ECE4C | 7C 04 00 40 */	cmplw r4, r0
/* 814ECE50 | 38 00 00 00 */	li r0, 0x0
/* 814ECE54 | 40 82 01 08 */	bne .L_814ECF5C
/* 814ECE58 | 4B FF E4 E1 */	bl TMCJPEGDEC_rewind_ptr
/* 814ECE5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECE60 | 40 80 00 08 */	bge .L_814ECE68
/* 814ECE64 | 48 00 00 FC */	b .L_814ECF60
.L_814ECE68:
/* 814ECE68 | 7F A4 EB 78 */	mr r4, r29
/* 814ECE6C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ECE70 | 4B FF DC 79 */	bl TMCJPEGDEC_get_wbyte
/* 814ECE74 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814ECE78 | 28 00 FF D9 */	cmplwi r0, 0xffd9
/* 814ECE7C | 40 82 00 0C */	bne .L_814ECE88
/* 814ECE80 | 38 00 00 01 */	li r0, 0x1
/* 814ECE84 | 98 1D 18 1C */	stb r0, 0x181c(r29)
.L_814ECE88:
/* 814ECE88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECE8C | 40 80 00 08 */	bge .L_814ECE94
/* 814ECE90 | 48 00 00 D0 */	b .L_814ECF60
.L_814ECE94:
/* 814ECE94 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 814ECE98 | 28 04 FF C0 */	cmplwi r4, 0xffc0
/* 814ECE9C | 41 80 00 2C */	blt .L_814ECEC8
/* 814ECEA0 | 28 04 FF D0 */	cmplwi r4, 0xffd0
/* 814ECEA4 | 41 80 00 0C */	blt .L_814ECEB0
/* 814ECEA8 | 28 04 FF D7 */	cmplwi r4, 0xffd7
/* 814ECEAC | 40 81 00 1C */	ble .L_814ECEC8
.L_814ECEB0:
/* 814ECEB0 | 7F A4 EB 78 */	mr r4, r29
/* 814ECEB4 | 38 60 FF FE */	li r3, -0x2
/* 814ECEB8 | 4B FF DE 71 */	bl TMCJPEGDEC_move_ptr
/* 814ECEBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECEC0 | 40 80 00 24 */	bge .L_814ECEE4
/* 814ECEC4 | 48 00 00 9C */	b .L_814ECF60
.L_814ECEC8:
/* 814ECEC8 | A0 7D 00 52 */	lhz r3, 0x52(r29)
/* 814ECECC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814ECED0 | 38 03 FF D0 */	subi r0, r3, 0x30
/* 814ECED4 | 7C 04 00 00 */	cmpw r4, r0
/* 814ECED8 | 41 82 00 0C */	beq .L_814ECEE4
/* 814ECEDC | 38 60 FF DD */	li r3, -0x23
/* 814ECEE0 | 48 00 00 80 */	b .L_814ECF60
.L_814ECEE4:
/* 814ECEE4 | A0 9D 00 52 */	lhz r4, 0x52(r29)
/* 814ECEE8 | 38 00 00 00 */	li r0, 0x0
/* 814ECEEC | 7F A3 EB 78 */	mr r3, r29
/* 814ECEF0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ECEF4 | 54 84 07 7E */	clrlwi r4, r4, 29
/* 814ECEF8 | B0 9D 00 52 */	sth r4, 0x52(r29)
/* 814ECEFC | 88 BF 00 15 */	lbz r5, 0x15(r31)
/* 814ECF00 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 814ECF04 | 7C BC 2B 96 */	divwu r5, r28, r5
/* 814ECF08 | A0 DF 00 10 */	lhz r6, 0x10(r31)
/* 814ECF0C | 90 1D 00 30 */	stw r0, 0x30(r29)
/* 814ECF10 | 90 1D 00 34 */	stw r0, 0x34(r29)
/* 814ECF14 | 90 1D 00 38 */	stw r0, 0x38(r29)
/* 814ECF18 | 90 1D 00 3C */	stw r0, 0x3c(r29)
/* 814ECF1C | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814ECF20 | B0 1D 00 50 */	sth r0, 0x50(r29)
/* 814ECF24 | 7C 9E 23 96 */	divwu r4, r30, r4
/* 814ECF28 | 7C A5 31 D6 */	mullw r5, r5, r6
/* 814ECF2C | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814ECF30 | 7C 80 2A 14 */	add r4, r0, r5
/* 814ECF34 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814ECF38 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814ECF3C | 7C 85 33 D6 */	divw r4, r5, r6
/* 814ECF40 | 7C 04 31 D6 */	mullw r0, r4, r6
/* 814ECF44 | 7C 00 28 50 */	subf r0, r0, r5
/* 814ECF48 | 54 00 80 1E */	slwi r0, r0, 16
/* 814ECF4C | 7C 00 22 14 */	add r0, r0, r4
/* 814ECF50 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 814ECF54 | 4B FF E3 D5 */	bl TMCJPEGDEC_init_buff
/* 814ECF58 | 7C 60 1B 78 */	mr r0, r3
.L_814ECF5C:
/* 814ECF5C | 7C 03 03 78 */	mr r3, r0
.L_814ECF60:
/* 814ECF60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ECF64 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ECF68 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814ECF6C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814ECF70 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814ECF74 | 7C 08 03 A6 */	mtlr r0
/* 814ECF78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ECF7C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_restart_interval

# .text:0x2B38 | 0x814ECF80 | size: 0x2DC
.fn TMCJPEG_814ECF80, local
/* 814ECF80 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814ECF84 | 7C 08 02 A6 */	mflr r0
/* 814ECF88 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814ECF8C | BF 41 00 18 */	stmw r26, 0x18(r1)
/* 814ECF90 | 7C 7C 1B 78 */	mr r28, r3
/* 814ECF94 | 7C 9D 23 78 */	mr r29, r4
/* 814ECF98 | 3B E0 00 00 */	li r31, 0x0
/* 814ECF9C | 3F 40 00 01 */	lis r26, 0x1
/* 814ECFA0 | 3B 60 00 01 */	li r27, 0x1
/* 814ECFA4 | A3 C3 00 00 */	lhz r30, 0x0(r3)
.L_814ECFA8:
/* 814ECFA8 | 7F A4 EB 78 */	mr r4, r29
/* 814ECFAC | 38 61 00 12 */	addi r3, r1, 0x12
/* 814ECFB0 | 4B FF DB 39 */	bl TMCJPEGDEC_get_wbyte
/* 814ECFB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECFB8 | 40 80 00 24 */	bge .L_814ECFDC
/* 814ECFBC | 2C 03 FF 70 */	cmpwi r3, -0x90
/* 814ECFC0 | 40 82 02 88 */	bne .L_814ED248
/* 814ECFC4 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814ECFC8 | 28 00 FF D9 */	cmplwi r0, 0xffd9
/* 814ECFCC | 40 82 02 7C */	bne .L_814ED248
/* 814ECFD0 | 38 60 00 00 */	li r3, 0x0
/* 814ECFD4 | 48 00 00 08 */	b .L_814ECFDC
/* 814ECFD8 | 48 00 02 70 */	b .L_814ED248
.L_814ECFDC:
/* 814ECFDC | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814ECFE0 | 48 00 00 28 */	b .L_814ED008
.L_814ECFE4:
/* 814ECFE4 | 7F A4 EB 78 */	mr r4, r29
/* 814ECFE8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ECFEC | 4B FF DA 45 */	bl TMCJPEGDEC_get_byte
/* 814ECFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ECFF4 | 40 80 00 08 */	bge .L_814ECFFC
/* 814ECFF8 | 48 00 02 50 */	b .L_814ED248
.L_814ECFFC:
/* 814ECFFC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED000 | 60 00 FF 00 */	ori r0, r0, 0xff00
/* 814ED004 | B0 01 00 12 */	sth r0, 0x12(r1)
.L_814ED008:
/* 814ED008 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814ED00C | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814ED010 | 41 82 FF D4 */	beq .L_814ECFE4
/* 814ED014 | 28 04 FF E0 */	cmplwi r4, 0xffe0
/* 814ED018 | 41 80 00 60 */	blt .L_814ED078
/* 814ED01C | 28 04 FF EF */	cmplwi r4, 0xffef
/* 814ED020 | 41 81 00 58 */	bgt .L_814ED078
/* 814ED024 | 7F A4 EB 78 */	mr r4, r29
/* 814ED028 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814ED02C | 4B FF DA BD */	bl TMCJPEGDEC_get_wbyte
/* 814ED030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED034 | 40 80 00 08 */	bge .L_814ED03C
/* 814ED038 | 48 00 01 F4 */	b .L_814ED22C
.L_814ED03C:
/* 814ED03C | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 814ED040 | 28 03 00 02 */	cmplwi r3, 0x2
/* 814ED044 | 40 80 00 0C */	bge .L_814ED050
/* 814ED048 | 38 60 FF BB */	li r3, -0x45
/* 814ED04C | 48 00 01 E0 */	b .L_814ED22C
.L_814ED050:
/* 814ED050 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814ED054 | 7F A4 EB 78 */	mr r4, r29
/* 814ED058 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 814ED05C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814ED060 | 4B FF DC C9 */	bl TMCJPEGDEC_move_ptr
/* 814ED064 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814ED068 | 7C 63 00 38 */	and r3, r3, r0
/* 814ED06C | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814ED070 | 7C 63 00 38 */	and r3, r3, r0
/* 814ED074 | 48 00 01 B8 */	b .L_814ED22C
.L_814ED078:
/* 814ED078 | 38 1A FF D9 */	subi r0, r26, 0x27
/* 814ED07C | 7C 04 00 00 */	cmpw r4, r0
/* 814ED080 | 41 82 01 9C */	beq .L_814ED21C
/* 814ED084 | 40 80 00 34 */	bge .L_814ED0B8
/* 814ED088 | 38 1A FF C2 */	subi r0, r26, 0x3e
/* 814ED08C | 7C 04 00 00 */	cmpw r4, r0
/* 814ED090 | 41 82 01 7C */	beq .L_814ED20C
/* 814ED094 | 40 80 00 14 */	bge .L_814ED0A8
/* 814ED098 | 38 1A FF C0 */	subi r0, r26, 0x40
/* 814ED09C | 7C 04 00 00 */	cmpw r4, r0
/* 814ED0A0 | 41 82 01 64 */	beq .L_814ED204
/* 814ED0A4 | 48 00 01 84 */	b .L_814ED228
.L_814ED0A8:
/* 814ED0A8 | 38 1A FF C4 */	subi r0, r26, 0x3c
/* 814ED0AC | 7C 04 00 00 */	cmpw r4, r0
/* 814ED0B0 | 41 82 00 3C */	beq .L_814ED0EC
/* 814ED0B4 | 48 00 01 74 */	b .L_814ED228
.L_814ED0B8:
/* 814ED0B8 | 38 1A FF DD */	subi r0, r26, 0x23
/* 814ED0BC | 7C 04 00 00 */	cmpw r4, r0
/* 814ED0C0 | 41 82 00 48 */	beq .L_814ED108
/* 814ED0C4 | 40 80 00 18 */	bge .L_814ED0DC
/* 814ED0C8 | 38 1A FF DB */	subi r0, r26, 0x25
/* 814ED0CC | 7C 04 00 00 */	cmpw r4, r0
/* 814ED0D0 | 41 82 00 2C */	beq .L_814ED0FC
/* 814ED0D4 | 40 80 00 88 */	bge .L_814ED15C
/* 814ED0D8 | 48 00 01 3C */	b .L_814ED214
.L_814ED0DC:
/* 814ED0DC | 38 1A FF FE */	subi r0, r26, 0x2
/* 814ED0E0 | 7C 04 00 00 */	cmpw r4, r0
/* 814ED0E4 | 41 82 00 CC */	beq .L_814ED1B0
/* 814ED0E8 | 48 00 01 40 */	b .L_814ED228
.L_814ED0EC:
/* 814ED0EC | 7F C3 F3 78 */	mr r3, r30
/* 814ED0F0 | 7F A4 EB 78 */	mr r4, r29
/* 814ED0F4 | 48 00 01 69 */	bl TMCJPEG_814ED25C
/* 814ED0F8 | 48 00 01 34 */	b .L_814ED22C
.L_814ED0FC:
/* 814ED0FC | 7F A3 EB 78 */	mr r3, r29
/* 814ED100 | 48 00 03 3D */	bl TMCJPEG_814ED43C
/* 814ED104 | 48 00 01 28 */	b .L_814ED22C
.L_814ED108:
/* 814ED108 | 7F A4 EB 78 */	mr r4, r29
/* 814ED10C | 38 61 00 0E */	addi r3, r1, 0xe
/* 814ED110 | 4B FF D9 D9 */	bl TMCJPEGDEC_get_wbyte
/* 814ED114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED118 | 40 80 00 08 */	bge .L_814ED120
/* 814ED11C | 48 00 01 10 */	b .L_814ED22C
.L_814ED120:
/* 814ED120 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814ED124 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814ED128 | 41 82 00 0C */	beq .L_814ED134
/* 814ED12C | 38 60 FF BE */	li r3, -0x42
/* 814ED130 | 48 00 00 FC */	b .L_814ED22C
.L_814ED134:
/* 814ED134 | 7F A4 EB 78 */	mr r4, r29
/* 814ED138 | 38 61 00 0E */	addi r3, r1, 0xe
/* 814ED13C | 4B FF D9 AD */	bl TMCJPEGDEC_get_wbyte
/* 814ED140 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED144 | 40 80 00 08 */	bge .L_814ED14C
/* 814ED148 | 48 00 00 E4 */	b .L_814ED22C
.L_814ED14C:
/* 814ED14C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814ED150 | 38 60 00 00 */	li r3, 0x0
/* 814ED154 | B0 1D 18 1A */	sth r0, 0x181a(r29)
/* 814ED158 | 48 00 00 D4 */	b .L_814ED22C
.L_814ED15C:
/* 814ED15C | 7F A4 EB 78 */	mr r4, r29
/* 814ED160 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ED164 | 4B FF D9 85 */	bl TMCJPEGDEC_get_wbyte
/* 814ED168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED16C | 40 80 00 08 */	bge .L_814ED174
/* 814ED170 | 48 00 00 BC */	b .L_814ED22C
.L_814ED174:
/* 814ED174 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814ED178 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814ED17C | 41 82 00 0C */	beq .L_814ED188
/* 814ED180 | 38 60 FF BD */	li r3, -0x43
/* 814ED184 | 48 00 00 A8 */	b .L_814ED22C
.L_814ED188:
/* 814ED188 | 7F A4 EB 78 */	mr r4, r29
/* 814ED18C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ED190 | 4B FF D9 59 */	bl TMCJPEGDEC_get_wbyte
/* 814ED194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED198 | 40 80 00 08 */	bge .L_814ED1A0
/* 814ED19C | 48 00 00 90 */	b .L_814ED22C
.L_814ED1A0:
/* 814ED1A0 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814ED1A4 | 38 60 00 00 */	li r3, 0x0
/* 814ED1A8 | B0 1D 17 F2 */	sth r0, 0x17f2(r29)
/* 814ED1AC | 48 00 00 80 */	b .L_814ED22C
.L_814ED1B0:
/* 814ED1B0 | 7F A4 EB 78 */	mr r4, r29
/* 814ED1B4 | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED1B8 | 4B FF D9 31 */	bl TMCJPEGDEC_get_wbyte
/* 814ED1BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED1C0 | 40 80 00 08 */	bge .L_814ED1C8
/* 814ED1C4 | 48 00 00 68 */	b .L_814ED22C
.L_814ED1C8:
/* 814ED1C8 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814ED1CC | 28 03 00 02 */	cmplwi r3, 0x2
/* 814ED1D0 | 40 80 00 0C */	bge .L_814ED1DC
/* 814ED1D4 | 38 60 FF BC */	li r3, -0x44
/* 814ED1D8 | 48 00 00 54 */	b .L_814ED22C
.L_814ED1DC:
/* 814ED1DC | 38 03 FF FE */	subi r0, r3, 0x2
/* 814ED1E0 | 7F A4 EB 78 */	mr r4, r29
/* 814ED1E4 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814ED1E8 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814ED1EC | 4B FF DB 3D */	bl TMCJPEGDEC_move_ptr
/* 814ED1F0 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814ED1F4 | 7C 63 00 38 */	and r3, r3, r0
/* 814ED1F8 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814ED1FC | 7C 63 00 38 */	and r3, r3, r0
/* 814ED200 | 48 00 00 2C */	b .L_814ED22C
.L_814ED204:
/* 814ED204 | 3B E0 00 01 */	li r31, 0x1
/* 814ED208 | 48 00 00 24 */	b .L_814ED22C
.L_814ED20C:
/* 814ED20C | 3B E0 00 01 */	li r31, 0x1
/* 814ED210 | 48 00 00 1C */	b .L_814ED22C
.L_814ED214:
/* 814ED214 | 3B E0 00 01 */	li r31, 0x1
/* 814ED218 | 48 00 00 14 */	b .L_814ED22C
.L_814ED21C:
/* 814ED21C | 9B 7D 18 1C */	stb r27, 0x181c(r29)
/* 814ED220 | 3B E0 00 01 */	li r31, 0x1
/* 814ED224 | 48 00 00 08 */	b .L_814ED22C
.L_814ED228:
/* 814ED228 | 38 60 FF D1 */	li r3, -0x2f
.L_814ED22C:
/* 814ED22C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED230 | 40 80 00 08 */	bge .L_814ED238
/* 814ED234 | 3B E0 00 01 */	li r31, 0x1
.L_814ED238:
/* 814ED238 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814ED23C | 41 82 FD 6C */	beq .L_814ECFA8
/* 814ED240 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814ED244 | B0 1C 00 00 */	sth r0, 0x0(r28)
.L_814ED248:
/* 814ED248 | BB 41 00 18 */	lmw r26, 0x18(r1)
/* 814ED24C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814ED250 | 7C 08 03 A6 */	mtlr r0
/* 814ED254 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814ED258 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814ECF80

# .text:0x2E14 | 0x814ED25C | size: 0x1E0
.fn TMCJPEG_814ED25C, local
/* 814ED25C | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 814ED260 | 7C 08 02 A6 */	mflr r0
/* 814ED264 | 38 A0 00 11 */	li r5, 0x11
/* 814ED268 | 90 01 01 64 */	stw r0, 0x164(r1)
/* 814ED26C | 38 61 00 20 */	addi r3, r1, 0x20
/* 814ED270 | BF 21 01 44 */	stmw r25, 0x144(r1)
/* 814ED274 | 7C 9E 23 78 */	mr r30, r4
/* 814ED278 | 3B E4 00 58 */	addi r31, r4, 0x58
/* 814ED27C | 38 80 00 00 */	li r4, 0x0
/* 814ED280 | 4B E4 30 B5 */	bl memset
/* 814ED284 | 7F C4 F3 78 */	mr r4, r30
/* 814ED288 | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED28C | 4B FF D8 5D */	bl TMCJPEGDEC_get_wbyte
/* 814ED290 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED294 | 40 80 00 08 */	bge .L_814ED29C
/* 814ED298 | 48 00 01 90 */	b .L_814ED428
.L_814ED29C:
/* 814ED29C | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814ED2A0 | 3B A0 00 00 */	li r29, 0x0
/* 814ED2A4 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814ED2A8 | B0 01 00 0A */	sth r0, 0xa(r1)
.L_814ED2AC:
/* 814ED2AC | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 814ED2B0 | 7F C4 F3 78 */	mr r4, r30
/* 814ED2B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED2B8 | 38 05 FF EF */	subi r0, r5, 0x11
/* 814ED2BC | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814ED2C0 | 4B FF D7 71 */	bl TMCJPEGDEC_get_byte
/* 814ED2C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED2C8 | 40 80 00 08 */	bge .L_814ED2D0
/* 814ED2CC | 48 00 01 5C */	b .L_814ED428
.L_814ED2D0:
/* 814ED2D0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED2D4 | 7C 1B 26 70 */	srawi r27, r0, 4
/* 814ED2D8 | 54 1A 07 3E */	clrlwi r26, r0, 28
/* 814ED2DC | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 814ED2E0 | 40 80 00 0C */	bge .L_814ED2EC
/* 814ED2E4 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 814ED2E8 | 41 80 00 0C */	blt .L_814ED2F4
.L_814ED2EC:
/* 814ED2EC | 38 60 FF C0 */	li r3, -0x40
/* 814ED2F0 | 48 00 01 38 */	b .L_814ED428
.L_814ED2F4:
/* 814ED2F4 | 9B A1 00 20 */	stb r29, 0x20(r1)
/* 814ED2F8 | 3B 81 00 21 */	addi r28, r1, 0x21
/* 814ED2FC | 3B 20 00 01 */	li r25, 0x1
.L_814ED300:
/* 814ED300 | 7F C4 F3 78 */	mr r4, r30
/* 814ED304 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED308 | 4B FF D7 29 */	bl TMCJPEGDEC_get_byte
/* 814ED30C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED310 | 40 80 00 08 */	bge .L_814ED318
/* 814ED314 | 48 00 01 14 */	b .L_814ED428
.L_814ED318:
/* 814ED318 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 814ED31C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814ED320 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED324 | 2C 19 00 10 */	cmpwi r25, 0x10
/* 814ED328 | 98 7C 00 00 */	stb r3, 0x0(r28)
/* 814ED32C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814ED330 | 7C 03 00 50 */	subf r0, r3, r0
/* 814ED334 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814ED338 | 40 81 FF C8 */	ble .L_814ED300
/* 814ED33C | 88 81 00 21 */	lbz r4, 0x21(r1)
/* 814ED340 | 88 01 00 22 */	lbz r0, 0x22(r1)
/* 814ED344 | 88 61 00 23 */	lbz r3, 0x23(r1)
/* 814ED348 | 7F 24 02 14 */	add r25, r4, r0
/* 814ED34C | 88 01 00 24 */	lbz r0, 0x24(r1)
/* 814ED350 | 7F 39 1A 14 */	add r25, r25, r3
/* 814ED354 | 88 61 00 25 */	lbz r3, 0x25(r1)
/* 814ED358 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED35C | 88 01 00 26 */	lbz r0, 0x26(r1)
/* 814ED360 | 7F 39 1A 14 */	add r25, r25, r3
/* 814ED364 | 88 61 00 27 */	lbz r3, 0x27(r1)
/* 814ED368 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED36C | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 814ED370 | 7F 39 1A 14 */	add r25, r25, r3
/* 814ED374 | 88 81 00 29 */	lbz r4, 0x29(r1)
/* 814ED378 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED37C | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 814ED380 | 7F 39 22 14 */	add r25, r25, r4
/* 814ED384 | 88 61 00 2B */	lbz r3, 0x2b(r1)
/* 814ED388 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED38C | 88 01 00 2C */	lbz r0, 0x2c(r1)
/* 814ED390 | 7F 39 1A 14 */	add r25, r25, r3
/* 814ED394 | 88 61 00 2D */	lbz r3, 0x2d(r1)
/* 814ED398 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED39C | 88 01 00 2E */	lbz r0, 0x2e(r1)
/* 814ED3A0 | 7F 39 1A 14 */	add r25, r25, r3
/* 814ED3A4 | 88 61 00 2F */	lbz r3, 0x2f(r1)
/* 814ED3A8 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED3AC | 88 01 00 30 */	lbz r0, 0x30(r1)
/* 814ED3B0 | 7F 39 1A 14 */	add r25, r25, r3
/* 814ED3B4 | 7F 39 02 14 */	add r25, r25, r0
/* 814ED3B8 | 2C 19 00 B0 */	cmpwi r25, 0xb0
/* 814ED3BC | 40 81 00 0C */	ble .L_814ED3C8
/* 814ED3C0 | 38 60 FF C0 */	li r3, -0x40
/* 814ED3C4 | 48 00 00 64 */	b .L_814ED428
.L_814ED3C8:
/* 814ED3C8 | 7F C5 F3 78 */	mr r5, r30
/* 814ED3CC | 38 61 00 38 */	addi r3, r1, 0x38
/* 814ED3D0 | 57 24 06 3E */	clrlwi r4, r25, 24
/* 814ED3D4 | 4B FF D8 79 */	bl TMCJPEGDEC_get_sbyte
/* 814ED3D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED3DC | 40 80 00 08 */	bge .L_814ED3E4
/* 814ED3E0 | 48 00 00 48 */	b .L_814ED428
.L_814ED3E4:
/* 814ED3E4 | 9B 21 00 1C */	stb r25, 0x1c(r1)
/* 814ED3E8 | 7F 64 DB 78 */	mr r4, r27
/* 814ED3EC | 7F 45 D3 78 */	mr r5, r26
/* 814ED3F0 | 7F E6 FB 78 */	mr r6, r31
/* 814ED3F4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814ED3F8 | 4B FF D3 71 */	bl TMCJPEGDEC_set_HuffmanTable
/* 814ED3FC | 38 61 00 20 */	addi r3, r1, 0x20
/* 814ED400 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814ED404 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814ED408 | 4B FF D0 41 */	bl TMCJPEGDEC_make_huffdec
/* 814ED40C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED410 | 40 80 00 08 */	bge .L_814ED418
/* 814ED414 | 48 00 00 14 */	b .L_814ED428
.L_814ED418:
/* 814ED418 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED41C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814ED420 | 40 82 FE 8C */	bne .L_814ED2AC
/* 814ED424 | 38 60 00 00 */	li r3, 0x0
.L_814ED428:
/* 814ED428 | BB 21 01 44 */	lmw r25, 0x144(r1)
/* 814ED42C | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 814ED430 | 7C 08 03 A6 */	mtlr r0
/* 814ED434 | 38 21 01 60 */	addi r1, r1, 0x160
/* 814ED438 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814ED25C

# .text:0x2FF4 | 0x814ED43C | size: 0x148
.fn TMCJPEG_814ED43C, local
/* 814ED43C | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 814ED440 | 7C 08 02 A6 */	mflr r0
/* 814ED444 | 3C 80 81 62 */	lis r4, lbl_8161E080@ha
/* 814ED448 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 814ED44C | 38 84 E0 80 */	addi r4, r4, lbl_8161E080@l
/* 814ED450 | 38 00 00 20 */	li r0, 0x20
/* 814ED454 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814ED458 | BF 01 01 10 */	stmw r24, 0x110(r1)
/* 814ED45C | 7C 7E 1B 78 */	mr r30, r3
/* 814ED460 | 38 A4 FF FC */	subi r5, r4, 0x4
/* 814ED464 | 7C 09 03 A6 */	mtctr r0
.L_814ED468:
/* 814ED468 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 814ED46C | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 814ED470 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814ED474 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 814ED478 | 42 00 FF F0 */	bdnz .L_814ED468
/* 814ED47C | 3B E3 00 58 */	addi r31, r3, 0x58
/* 814ED480 | 7F C4 F3 78 */	mr r4, r30
/* 814ED484 | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED488 | 4B FF D6 61 */	bl TMCJPEGDEC_get_wbyte
/* 814ED48C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED490 | 40 80 00 08 */	bge .L_814ED498
/* 814ED494 | 48 00 00 DC */	b .L_814ED570
.L_814ED498:
/* 814ED498 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814ED49C | 3B A1 00 10 */	addi r29, r1, 0x10
/* 814ED4A0 | 3B 60 00 01 */	li r27, 0x1
/* 814ED4A4 | 3F 80 81 62 */	lis r28, TMCJPEGDEC_Zigzag_data@ha
/* 814ED4A8 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814ED4AC | B0 01 00 0A */	sth r0, 0xa(r1)
.L_814ED4B0:
/* 814ED4B0 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 814ED4B4 | 7F C4 F3 78 */	mr r4, r30
/* 814ED4B8 | 38 61 00 09 */	addi r3, r1, 0x9
/* 814ED4BC | 38 05 FF BF */	subi r0, r5, 0x41
/* 814ED4C0 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814ED4C4 | 4B FF D5 6D */	bl TMCJPEGDEC_get_byte
/* 814ED4C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED4CC | 40 80 00 08 */	bge .L_814ED4D4
/* 814ED4D0 | 48 00 00 A0 */	b .L_814ED570
.L_814ED4D4:
/* 814ED4D4 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 814ED4D8 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814ED4DC | 40 81 00 0C */	ble .L_814ED4E8
/* 814ED4E0 | 38 60 FF BF */	li r3, -0x41
/* 814ED4E4 | 48 00 00 8C */	b .L_814ED570
.L_814ED4E8:
/* 814ED4E8 | 7C 7F 02 14 */	add r3, r31, r0
/* 814ED4EC | 3B 5C E1 B0 */	addi r26, r28, TMCJPEGDEC_Zigzag_data@l
/* 814ED4F0 | 9B 63 17 90 */	stb r27, 0x1790(r3)
/* 814ED4F4 | 3B 20 00 00 */	li r25, 0x0
.L_814ED4F8:
/* 814ED4F8 | 8B 1A 00 00 */	lbz r24, 0x0(r26)
/* 814ED4FC | 2C 18 00 3F */	cmpwi r24, 0x3f
/* 814ED500 | 40 81 00 0C */	ble .L_814ED50C
/* 814ED504 | 38 60 FF BF */	li r3, -0x41
/* 814ED508 | 48 00 00 68 */	b .L_814ED570
.L_814ED50C:
/* 814ED50C | 7F C4 F3 78 */	mr r4, r30
/* 814ED510 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED514 | 4B FF D5 1D */	bl TMCJPEGDEC_get_byte
/* 814ED518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED51C | 40 80 00 08 */	bge .L_814ED524
/* 814ED520 | 48 00 00 50 */	b .L_814ED570
.L_814ED524:
/* 814ED524 | 57 04 10 3A */	slwi r4, r24, 2
/* 814ED528 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 814ED52C | 7C 04 FA 14 */	add r0, r4, r31
/* 814ED530 | 88 A1 00 08 */	lbz r5, 0x8(r1)
/* 814ED534 | 7C 9D 20 2E */	lwzx r4, r29, r4
/* 814ED538 | 54 63 40 2E */	slwi r3, r3, 8
/* 814ED53C | 7C 85 21 D7 */	mullw. r4, r5, r4
/* 814ED540 | 7C 83 01 2E */	stwx r4, r3, r0
/* 814ED544 | 40 82 00 0C */	bne .L_814ED550
/* 814ED548 | 38 60 FF BF */	li r3, -0x41
/* 814ED54C | 48 00 00 24 */	b .L_814ED570
.L_814ED550:
/* 814ED550 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814ED554 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814ED558 | 2C 19 00 40 */	cmpwi r25, 0x40
/* 814ED55C | 41 80 FF 9C */	blt .L_814ED4F8
/* 814ED560 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED564 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814ED568 | 40 82 FF 48 */	bne .L_814ED4B0
/* 814ED56C | 38 60 00 00 */	li r3, 0x0
.L_814ED570:
/* 814ED570 | BB 01 01 10 */	lmw r24, 0x110(r1)
/* 814ED574 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 814ED578 | 7C 08 03 A6 */	mtlr r0
/* 814ED57C | 38 21 01 30 */	addi r1, r1, 0x130
/* 814ED580 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814ED43C

# .text:0x313C | 0x814ED584 | size: 0x37C
.fn TMCJPEG_814ED584, local
/* 814ED584 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814ED588 | 7C 08 02 A6 */	mflr r0
/* 814ED58C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814ED590 | BF 21 00 14 */	stmw r25, 0x14(r1)
/* 814ED594 | 7C 7B 1B 78 */	mr r27, r3
/* 814ED598 | 3B A3 17 F0 */	addi r29, r3, 0x17f0
/* 814ED59C | 3B 83 00 2C */	addi r28, r3, 0x2c
/* 814ED5A0 | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED5A4 | 7F 64 DB 78 */	mr r4, r27
/* 814ED5A8 | 4B FF D5 41 */	bl TMCJPEGDEC_get_wbyte
/* 814ED5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED5B0 | 40 80 00 08 */	bge .L_814ED5B8
/* 814ED5B4 | 48 00 03 38 */	b .L_814ED8EC
.L_814ED5B8:
/* 814ED5B8 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED5BC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ED5C0 | 40 80 00 0C */	bge .L_814ED5CC
/* 814ED5C4 | 38 60 FF B0 */	li r3, -0x50
/* 814ED5C8 | 48 00 03 24 */	b .L_814ED8EC
.L_814ED5CC:
/* 814ED5CC | 7F 64 DB 78 */	mr r4, r27
/* 814ED5D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED5D4 | 4B FF D4 5D */	bl TMCJPEGDEC_get_byte
/* 814ED5D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED5DC | 40 80 00 08 */	bge .L_814ED5E4
/* 814ED5E0 | 48 00 03 0C */	b .L_814ED8EC
.L_814ED5E4:
/* 814ED5E4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED5E8 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814ED5EC | 41 82 00 0C */	beq .L_814ED5F8
/* 814ED5F0 | 38 60 FF B0 */	li r3, -0x50
/* 814ED5F4 | 48 00 02 F8 */	b .L_814ED8EC
.L_814ED5F8:
/* 814ED5F8 | 7F 64 DB 78 */	mr r4, r27
/* 814ED5FC | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED600 | 4B FF D4 E9 */	bl TMCJPEGDEC_get_wbyte
/* 814ED604 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED608 | 40 80 00 08 */	bge .L_814ED610
/* 814ED60C | 48 00 02 E0 */	b .L_814ED8EC
.L_814ED610:
/* 814ED610 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED614 | 7F 64 DB 78 */	mr r4, r27
/* 814ED618 | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED61C | B0 1D 00 02 */	sth r0, 0x2(r29)
/* 814ED620 | 4B FF D4 C9 */	bl TMCJPEGDEC_get_wbyte
/* 814ED624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED628 | 40 80 00 08 */	bge .L_814ED630
/* 814ED62C | 48 00 02 C0 */	b .L_814ED8EC
.L_814ED630:
/* 814ED630 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED634 | 7F 64 DB 78 */	mr r4, r27
/* 814ED638 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED63C | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 814ED640 | 4B FF D3 F1 */	bl TMCJPEGDEC_get_byte
/* 814ED644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED648 | 40 80 00 08 */	bge .L_814ED650
/* 814ED64C | 48 00 02 A0 */	b .L_814ED8EC
.L_814ED650:
/* 814ED650 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814ED658 | 98 1D 00 1A */	stb r0, 0x1a(r29)
/* 814ED65C | 40 81 00 0C */	ble .L_814ED668
/* 814ED660 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814ED664 | 40 81 00 0C */	ble .L_814ED670
.L_814ED668:
/* 814ED668 | 38 60 FF B0 */	li r3, -0x50
/* 814ED66C | 48 00 02 80 */	b .L_814ED8EC
.L_814ED670:
/* 814ED670 | 3B C0 00 00 */	li r30, 0x0
/* 814ED674 | 3B E0 00 00 */	li r31, 0x0
/* 814ED678 | 3B 20 00 00 */	li r25, 0x0
/* 814ED67C | 48 00 00 98 */	b .L_814ED714
.L_814ED680:
/* 814ED680 | 7F 64 DB 78 */	mr r4, r27
/* 814ED684 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED688 | 4B FF D3 A9 */	bl TMCJPEGDEC_get_byte
/* 814ED68C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED690 | 40 80 00 08 */	bge .L_814ED698
/* 814ED694 | 48 00 02 58 */	b .L_814ED8EC
.L_814ED698:
/* 814ED698 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED69C | 7F 5C CA 14 */	add r26, r28, r25
/* 814ED6A0 | 7F 64 DB 78 */	mr r4, r27
/* 814ED6A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED6A8 | 98 1A 00 14 */	stb r0, 0x14(r26)
/* 814ED6AC | 4B FF D3 85 */	bl TMCJPEGDEC_get_byte
/* 814ED6B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED6B4 | 40 80 00 08 */	bge .L_814ED6BC
/* 814ED6B8 | 48 00 02 34 */	b .L_814ED8EC
.L_814ED6BC:
/* 814ED6BC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED6C0 | 7C 9D CA 14 */	add r4, r29, r25
/* 814ED6C4 | 7C 03 26 70 */	srawi r3, r0, 4
/* 814ED6C8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814ED6CC | 98 64 00 20 */	stb r3, 0x20(r4)
/* 814ED6D0 | 7C 03 F8 00 */	cmpw r3, r31
/* 814ED6D4 | 98 04 00 24 */	stb r0, 0x24(r4)
/* 814ED6D8 | 40 81 00 08 */	ble .L_814ED6E0
/* 814ED6DC | 7C 7F 1B 78 */	mr r31, r3
.L_814ED6E0:
/* 814ED6E0 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 814ED6E4 | 7C 00 F0 00 */	cmpw r0, r30
/* 814ED6E8 | 40 81 00 08 */	ble .L_814ED6F0
/* 814ED6EC | 7C 1E 03 78 */	mr r30, r0
.L_814ED6F0:
/* 814ED6F0 | 7F 64 DB 78 */	mr r4, r27
/* 814ED6F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED6F8 | 4B FF D3 39 */	bl TMCJPEGDEC_get_byte
/* 814ED6FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED700 | 40 80 00 08 */	bge .L_814ED708
/* 814ED704 | 48 00 01 E8 */	b .L_814ED8EC
.L_814ED708:
/* 814ED708 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814ED70C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814ED710 | 98 1A 00 18 */	stb r0, 0x18(r26)
.L_814ED714:
/* 814ED714 | 88 1D 00 1A */	lbz r0, 0x1a(r29)
/* 814ED718 | 7C 19 00 00 */	cmpw r25, r0
/* 814ED71C | 41 80 FF 64 */	blt .L_814ED680
/* 814ED720 | 57 E0 04 3F */	clrlwi. r0, r31, 16
/* 814ED724 | 41 82 00 0C */	beq .L_814ED730
/* 814ED728 | 57 C0 04 3F */	clrlwi. r0, r30, 16
/* 814ED72C | 40 82 00 0C */	bne .L_814ED738
.L_814ED730:
/* 814ED730 | 38 60 FF B0 */	li r3, -0x50
/* 814ED734 | 48 00 01 B8 */	b .L_814ED8EC
.L_814ED738:
/* 814ED738 | 38 00 00 06 */	li r0, 0x6
/* 814ED73C | 3C C0 81 69 */	lis r6, lbl_816951B8@ha
/* 814ED740 | 3C E0 81 62 */	lis r7, TMCJPEGDEC_SampleH_N@ha
/* 814ED744 | 3D 00 81 62 */	lis r8, TMCJPEGDEC_SampleV_N@ha
/* 814ED748 | 9B FD 00 28 */	stb r31, 0x28(r29)
/* 814ED74C | 38 C6 51 B8 */	addi r6, r6, lbl_816951B8@l
/* 814ED750 | 38 E7 E1 80 */	addi r7, r7, TMCJPEGDEC_SampleH_N@l
/* 814ED754 | 39 08 E1 98 */	addi r8, r8, TMCJPEGDEC_SampleV_N@l
/* 814ED758 | 9B DD 00 29 */	stb r30, 0x29(r29)
/* 814ED75C | 39 40 00 00 */	li r10, 0x0
/* 814ED760 | 98 1D 00 0C */	stb r0, 0xc(r29)
.L_814ED764:
/* 814ED764 | 88 BD 00 1A */	lbz r5, 0x1a(r29)
/* 814ED768 | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 814ED76C | 7C 05 00 40 */	cmplw r5, r0
/* 814ED770 | 40 82 00 54 */	bne .L_814ED7C4
/* 814ED774 | 7C E4 3B 78 */	mr r4, r7
/* 814ED778 | 7D 03 43 78 */	mr r3, r8
/* 814ED77C | 39 60 00 00 */	li r11, 0x0
/* 814ED780 | 7C A9 03 A6 */	mtctr r5
/* 814ED784 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814ED788 | 40 81 00 38 */	ble .L_814ED7C0
.L_814ED78C:
/* 814ED78C | 7D 3D 5A 14 */	add r9, r29, r11
/* 814ED790 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814ED794 | 88 A9 00 20 */	lbz r5, 0x20(r9)
/* 814ED798 | 7C 05 00 40 */	cmplw r5, r0
/* 814ED79C | 40 82 00 28 */	bne .L_814ED7C4
/* 814ED7A0 | 88 A9 00 24 */	lbz r5, 0x24(r9)
/* 814ED7A4 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814ED7A8 | 7C 05 00 40 */	cmplw r5, r0
/* 814ED7AC | 40 82 00 18 */	bne .L_814ED7C4
/* 814ED7B0 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814ED7B4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814ED7B8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ED7BC | 42 00 FF D0 */	bdnz .L_814ED78C
.L_814ED7C0:
/* 814ED7C0 | 99 5D 00 0C */	stb r10, 0xc(r29)
.L_814ED7C4:
/* 814ED7C4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814ED7C8 | 38 E7 00 04 */	addi r7, r7, 0x4
/* 814ED7CC | 2C 0A 00 06 */	cmpwi r10, 0x6
/* 814ED7D0 | 39 08 00 04 */	addi r8, r8, 0x4
/* 814ED7D4 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814ED7D8 | 41 80 FF 8C */	blt .L_814ED764
/* 814ED7DC | 88 1D 00 0C */	lbz r0, 0xc(r29)
/* 814ED7E0 | 28 00 00 06 */	cmplwi r0, 0x6
/* 814ED7E4 | 40 82 00 0C */	bne .L_814ED7F0
/* 814ED7E8 | 38 60 FF 90 */	li r3, -0x70
/* 814ED7EC | 48 00 01 00 */	b .L_814ED8EC
.L_814ED7F0:
/* 814ED7F0 | A1 3D 00 00 */	lhz r9, 0x0(r29)
/* 814ED7F4 | 57 E8 1E 38 */	clrlslwi r8, r31, 27, 3
/* 814ED7F8 | 57 CC 1E 38 */	clrlslwi r12, r30, 27, 3
/* 814ED7FC | A1 7D 00 02 */	lhz r11, 0x2(r29)
/* 814ED800 | 7C C9 43 D6 */	divw r6, r9, r8
/* 814ED804 | 99 1D 00 0D */	stb r8, 0xd(r29)
/* 814ED808 | 88 BB 18 0A */	lbz r5, 0x180a(r27)
/* 814ED80C | 38 7B 17 F0 */	addi r3, r27, 0x17f0
/* 814ED810 | 38 1B 00 2C */	addi r0, r27, 0x2c
/* 814ED814 | 99 9D 00 0E */	stb r12, 0xe(r29)
/* 814ED818 | 54 CA 04 3E */	clrlwi r10, r6, 16
/* 814ED81C | 38 80 00 00 */	li r4, 0x0
/* 814ED820 | 7C C6 41 D6 */	mullw r6, r6, r8
/* 814ED824 | 7C EB 63 D6 */	divw r7, r11, r12
/* 814ED828 | 7C C6 48 50 */	subf r6, r6, r9
/* 814ED82C | 98 DD 00 18 */	stb r6, 0x18(r29)
/* 814ED830 | 7D 27 61 D6 */	mullw r9, r7, r12
/* 814ED834 | 54 E8 04 3E */	clrlwi r8, r7, 16
/* 814ED838 | 54 C7 06 3E */	clrlwi r7, r6, 24
/* 814ED83C | 7C C7 00 D0 */	neg r6, r7
/* 814ED840 | 7D 69 58 50 */	subf r11, r9, r11
/* 814ED844 | 7C C9 3B 78 */	or r9, r6, r7
/* 814ED848 | 99 7D 00 19 */	stb r11, 0x19(r29)
/* 814ED84C | 55 67 06 3E */	clrlwi r7, r11, 24
/* 814ED850 | 7C C7 00 D0 */	neg r6, r7
/* 814ED854 | 55 29 0F FE */	srwi r9, r9, 31
/* 814ED858 | 7C C6 3B 78 */	or r6, r6, r7
/* 814ED85C | 7D 2A 4A 14 */	add r9, r10, r9
/* 814ED860 | 54 C6 0F FE */	srwi r6, r6, 31
/* 814ED864 | B1 3D 00 10 */	sth r9, 0x10(r29)
/* 814ED868 | 7D 08 32 14 */	add r8, r8, r6
/* 814ED86C | 55 27 04 3E */	clrlwi r7, r9, 16
/* 814ED870 | 55 06 04 3E */	clrlwi r6, r8, 16
/* 814ED874 | B1 1D 00 12 */	sth r8, 0x12(r29)
/* 814ED878 | 7C C7 31 D6 */	mullw r6, r7, r6
/* 814ED87C | 90 DD 00 14 */	stw r6, 0x14(r29)
/* 814ED880 | 7C A9 03 A6 */	mtctr r5
/* 814ED884 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814ED888 | 40 81 00 60 */	ble .L_814ED8E8
.L_814ED88C:
/* 814ED88C | 7C A3 22 14 */	add r5, r3, r4
/* 814ED890 | 88 C5 00 20 */	lbz r6, 0x20(r5)
/* 814ED894 | 28 06 00 01 */	cmplwi r6, 0x1
/* 814ED898 | 41 80 00 0C */	blt .L_814ED8A4
/* 814ED89C | 28 06 00 04 */	cmplwi r6, 0x4
/* 814ED8A0 | 40 81 00 0C */	ble .L_814ED8AC
.L_814ED8A4:
/* 814ED8A4 | 38 60 FF B0 */	li r3, -0x50
/* 814ED8A8 | 48 00 00 44 */	b .L_814ED8EC
.L_814ED8AC:
/* 814ED8AC | 88 A5 00 24 */	lbz r5, 0x24(r5)
/* 814ED8B0 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814ED8B4 | 41 80 00 0C */	blt .L_814ED8C0
/* 814ED8B8 | 28 05 00 04 */	cmplwi r5, 0x4
/* 814ED8BC | 40 81 00 0C */	ble .L_814ED8C8
.L_814ED8C0:
/* 814ED8C0 | 38 60 FF B0 */	li r3, -0x50
/* 814ED8C4 | 48 00 00 28 */	b .L_814ED8EC
.L_814ED8C8:
/* 814ED8C8 | 7C A0 22 14 */	add r5, r0, r4
/* 814ED8CC | 88 A5 00 18 */	lbz r5, 0x18(r5)
/* 814ED8D0 | 28 05 00 04 */	cmplwi r5, 0x4
/* 814ED8D4 | 40 81 00 0C */	ble .L_814ED8E0
/* 814ED8D8 | 38 60 FF B0 */	li r3, -0x50
/* 814ED8DC | 48 00 00 10 */	b .L_814ED8EC
.L_814ED8E0:
/* 814ED8E0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814ED8E4 | 42 00 FF A8 */	bdnz .L_814ED88C
.L_814ED8E8:
/* 814ED8E8 | 38 60 00 00 */	li r3, 0x0
.L_814ED8EC:
/* 814ED8EC | BB 21 00 14 */	lmw r25, 0x14(r1)
/* 814ED8F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814ED8F4 | 7C 08 03 A6 */	mtlr r0
/* 814ED8F8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814ED8FC | 4E 80 00 20 */	blr
.endfn TMCJPEG_814ED584

# .text:0x34B8 | 0x814ED900 | size: 0x1C0
.fn TMCJPEG_814ED900, local
/* 814ED900 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814ED904 | 7C 08 02 A6 */	mflr r0
/* 814ED908 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814ED90C | BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 814ED910 | 7C 7C 1B 78 */	mr r28, r3
/* 814ED914 | 3B C3 00 2C */	addi r30, r3, 0x2c
/* 814ED918 | 3B A3 00 58 */	addi r29, r3, 0x58
/* 814ED91C | 38 61 00 0A */	addi r3, r1, 0xa
/* 814ED920 | 7F 84 E3 78 */	mr r4, r28
/* 814ED924 | 4B FF D1 C5 */	bl TMCJPEGDEC_get_wbyte
/* 814ED928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED92C | 40 80 00 08 */	bge .L_814ED934
/* 814ED930 | 48 00 01 7C */	b .L_814EDAAC
.L_814ED934:
/* 814ED934 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814ED938 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ED93C | 40 80 00 0C */	bge .L_814ED948
/* 814ED940 | 38 60 FF AF */	li r3, -0x51
/* 814ED944 | 48 00 01 68 */	b .L_814EDAAC
.L_814ED948:
/* 814ED948 | 7F 84 E3 78 */	mr r4, r28
/* 814ED94C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED950 | 4B FF D0 E1 */	bl TMCJPEGDEC_get_byte
/* 814ED954 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED958 | 40 80 00 08 */	bge .L_814ED960
/* 814ED95C | 48 00 01 50 */	b .L_814EDAAC
.L_814ED960:
/* 814ED960 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 814ED964 | 28 03 00 04 */	cmplwi r3, 0x4
/* 814ED968 | 98 7C 18 0B */	stb r3, 0x180b(r28)
/* 814ED96C | 41 81 00 10 */	bgt .L_814ED97C
/* 814ED970 | 88 1C 18 0A */	lbz r0, 0x180a(r28)
/* 814ED974 | 7C 03 00 40 */	cmplw r3, r0
/* 814ED978 | 41 82 00 0C */	beq .L_814ED984
.L_814ED97C:
/* 814ED97C | 38 60 FF AF */	li r3, -0x51
/* 814ED980 | 48 00 01 2C */	b .L_814EDAAC
.L_814ED984:
/* 814ED984 | 3B E0 00 00 */	li r31, 0x0
/* 814ED988 | 48 00 01 04 */	b .L_814EDA8C
.L_814ED98C:
/* 814ED98C | 7F 84 E3 78 */	mr r4, r28
/* 814ED990 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED994 | 4B FF D0 9D */	bl TMCJPEGDEC_get_byte
/* 814ED998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED99C | 40 80 00 08 */	bge .L_814ED9A4
/* 814ED9A0 | 48 00 01 0C */	b .L_814EDAAC
.L_814ED9A4:
/* 814ED9A4 | 88 1C 18 0A */	lbz r0, 0x180a(r28)
/* 814ED9A8 | 38 A0 00 00 */	li r5, 0x0
/* 814ED9AC | 88 81 00 08 */	lbz r4, 0x8(r1)
/* 814ED9B0 | 7C 09 03 A6 */	mtctr r0
/* 814ED9B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814ED9B8 | 40 81 00 28 */	ble .L_814ED9E0
.L_814ED9BC:
/* 814ED9BC | 7C 7E 2A 14 */	add r3, r30, r5
/* 814ED9C0 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814ED9C4 | 7C 04 00 00 */	cmpw r4, r0
/* 814ED9C8 | 40 82 00 10 */	bne .L_814ED9D8
/* 814ED9CC | 7C BE F9 AE */	stbx r5, r30, r31
/* 814ED9D0 | 7F 7E FA 14 */	add r27, r30, r31
/* 814ED9D4 | 48 00 00 14 */	b .L_814ED9E8
.L_814ED9D8:
/* 814ED9D8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814ED9DC | 42 00 FF E0 */	bdnz .L_814ED9BC
.L_814ED9E0:
/* 814ED9E0 | 38 60 FF AF */	li r3, -0x51
/* 814ED9E4 | 48 00 00 C8 */	b .L_814EDAAC
.L_814ED9E8:
/* 814ED9E8 | 7F 84 E3 78 */	mr r4, r28
/* 814ED9EC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ED9F0 | 4B FF D0 41 */	bl TMCJPEGDEC_get_byte
/* 814ED9F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ED9F8 | 40 80 00 08 */	bge .L_814EDA00
/* 814ED9FC | 48 00 00 B0 */	b .L_814EDAAC
.L_814EDA00:
/* 814EDA00 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814EDA04 | 7C 05 26 70 */	srawi r5, r0, 4
/* 814EDA08 | 54 06 07 3E */	clrlwi r6, r0, 28
/* 814EDA0C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814EDA10 | 41 81 00 0C */	bgt .L_814EDA1C
/* 814EDA14 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 814EDA18 | 40 81 00 0C */	ble .L_814EDA24
.L_814EDA1C:
/* 814EDA1C | 38 60 FF AF */	li r3, -0x51
/* 814EDA20 | 48 00 00 8C */	b .L_814EDAAC
.L_814EDA24:
/* 814EDA24 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814EDA28 | 7C 7D 2A 14 */	add r3, r29, r5
/* 814EDA2C | 7C 9E 02 14 */	add r4, r30, r0
/* 814EDA30 | 98 A4 00 1C */	stb r5, 0x1c(r4)
/* 814EDA34 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814EDA38 | 7C 9E 02 14 */	add r4, r30, r0
/* 814EDA3C | 98 C4 00 20 */	stb r6, 0x20(r4)
/* 814EDA40 | 88 03 17 94 */	lbz r0, 0x1794(r3)
/* 814EDA44 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EDA48 | 41 82 00 0C */	beq .L_814EDA54
/* 814EDA4C | 38 60 FF C0 */	li r3, -0x40
/* 814EDA50 | 48 00 00 5C */	b .L_814EDAAC
.L_814EDA54:
/* 814EDA54 | 7C 7D 32 14 */	add r3, r29, r6
/* 814EDA58 | 88 03 17 96 */	lbz r0, 0x1796(r3)
/* 814EDA5C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EDA60 | 41 82 00 0C */	beq .L_814EDA6C
/* 814EDA64 | 38 60 FF C0 */	li r3, -0x40
/* 814EDA68 | 48 00 00 44 */	b .L_814EDAAC
.L_814EDA6C:
/* 814EDA6C | 88 1B 00 18 */	lbz r0, 0x18(r27)
/* 814EDA70 | 7C 7D 02 14 */	add r3, r29, r0
/* 814EDA74 | 88 03 17 90 */	lbz r0, 0x1790(r3)
/* 814EDA78 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EDA7C | 41 82 00 0C */	beq .L_814EDA88
/* 814EDA80 | 38 60 FF BF */	li r3, -0x41
/* 814EDA84 | 48 00 00 28 */	b .L_814EDAAC
.L_814EDA88:
/* 814EDA88 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814EDA8C:
/* 814EDA8C | 88 1C 18 0B */	lbz r0, 0x180b(r28)
/* 814EDA90 | 7C 1F 00 00 */	cmpw r31, r0
/* 814EDA94 | 41 80 FE F8 */	blt .L_814ED98C
/* 814EDA98 | 7F 84 E3 78 */	mr r4, r28
/* 814EDA9C | 38 60 00 03 */	li r3, 0x3
/* 814EDAA0 | 4B FF D2 89 */	bl TMCJPEGDEC_move_ptr
/* 814EDAA4 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814EDAA8 | 7C 63 00 38 */	and r3, r3, r0
.L_814EDAAC:
/* 814EDAAC | BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 814EDAB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814EDAB4 | 7C 08 03 A6 */	mtlr r0
/* 814EDAB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814EDABC | 4E 80 00 20 */	blr
.endfn TMCJPEG_814ED900

# .text:0x3678 | 0x814EDAC0 | size: 0x1CC
.fn TMCJPEGDEC_err_restart, global
/* 814EDAC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EDAC4 | 7C 08 02 A6 */	mflr r0
/* 814EDAC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EDACC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EDAD0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EDAD4 | 7C 7E 1B 78 */	mr r30, r3
/* 814EDAD8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EDADC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814EDAE0 | 88 03 18 1C */	lbz r0, 0x181c(r3)
/* 814EDAE4 | 83 E3 19 E4 */	lwz r31, 0x19e4(r3)
/* 814EDAE8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EDAEC | 40 82 00 14 */	bne .L_814EDB00
/* 814EDAF0 | 38 00 00 00 */	li r0, 0x0
/* 814EDAF4 | 38 60 00 00 */	li r3, 0x0
/* 814EDAF8 | 90 1F 06 CC */	stw r0, 0x6cc(r31)
/* 814EDAFC | 48 00 01 70 */	b .L_814EDC6C
.L_814EDB00:
/* 814EDB00 | 4B FF D8 39 */	bl TMCJPEGDEC_rewind_ptr
/* 814EDB04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDB08 | 40 80 00 08 */	bge .L_814EDB10
/* 814EDB0C | 48 00 01 60 */	b .L_814EDC6C
.L_814EDB10:
/* 814EDB10 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814EDB14 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814EDB18 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814EDB1C | 48 00 00 1C */	b .L_814EDB38
.L_814EDB20:
/* 814EDB20 | 7F C4 F3 78 */	mr r4, r30
/* 814EDB24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814EDB28 | 4B FF CF 09 */	bl TMCJPEGDEC_get_byte
/* 814EDB2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDB30 | 40 80 00 08 */	bge .L_814EDB38
/* 814EDB34 | 48 00 01 38 */	b .L_814EDC6C
.L_814EDB38:
/* 814EDB38 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814EDB3C | 28 00 00 FF */	cmplwi r0, 0xff
/* 814EDB40 | 40 82 FF E0 */	bne .L_814EDB20
/* 814EDB44 | 7F C4 F3 78 */	mr r4, r30
/* 814EDB48 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814EDB4C | 4B FF CE E5 */	bl TMCJPEGDEC_get_byte
/* 814EDB50 | 88 C1 00 08 */	lbz r6, 0x8(r1)
/* 814EDB54 | 28 06 00 D9 */	cmplwi r6, 0xd9
/* 814EDB58 | 40 82 00 20 */	bne .L_814EDB78
/* 814EDB5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDB60 | 40 80 00 10 */	bge .L_814EDB70
/* 814EDB64 | 2C 03 FF 70 */	cmpwi r3, -0x90
/* 814EDB68 | 41 82 00 08 */	beq .L_814EDB70
/* 814EDB6C | 48 00 01 00 */	b .L_814EDC6C
.L_814EDB70:
/* 814EDB70 | 38 60 00 00 */	li r3, 0x0
/* 814EDB74 | 48 00 00 F8 */	b .L_814EDC6C
.L_814EDB78:
/* 814EDB78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDB7C | 40 80 00 08 */	bge .L_814EDB84
/* 814EDB80 | 48 00 00 EC */	b .L_814EDC6C
.L_814EDB84:
/* 814EDB84 | 28 06 00 D0 */	cmplwi r6, 0xd0
/* 814EDB88 | 41 80 FF B0 */	blt .L_814EDB38
/* 814EDB8C | 28 06 00 D7 */	cmplwi r6, 0xd7
/* 814EDB90 | 40 81 00 08 */	ble .L_814EDB98
/* 814EDB94 | 4B FF FF A4 */	b .L_814EDB38
.L_814EDB98:
/* 814EDB98 | A0 7E 00 52 */	lhz r3, 0x52(r30)
/* 814EDB9C | 38 06 00 08 */	addi r0, r6, 0x8
/* 814EDBA0 | 38 63 00 CF */	addi r3, r3, 0xcf
/* 814EDBA4 | 7C 06 18 00 */	cmpw r6, r3
/* 814EDBA8 | 7C 03 00 50 */	subf r0, r3, r0
/* 814EDBAC | 54 05 06 3E */	clrlwi r5, r0, 24
/* 814EDBB0 | 40 81 00 0C */	ble .L_814EDBBC
/* 814EDBB4 | 7C 03 30 50 */	subf r0, r3, r6
/* 814EDBB8 | 54 05 06 3E */	clrlwi r5, r0, 24
.L_814EDBBC:
/* 814EDBBC | A0 9E 18 1A */	lhz r4, 0x181a(r30)
/* 814EDBC0 | 38 06 00 01 */	addi r0, r6, 0x1
/* 814EDBC4 | 54 03 07 7E */	clrlwi r3, r0, 29
/* 814EDBC8 | A0 FF 00 10 */	lhz r7, 0x10(r31)
/* 814EDBCC | 7C A5 21 D6 */	mullw r5, r5, r4
/* 814EDBD0 | 38 00 00 00 */	li r0, 0x0
/* 814EDBD4 | 80 DE 00 54 */	lwz r6, 0x54(r30)
/* 814EDBD8 | B0 7E 00 52 */	sth r3, 0x52(r30)
/* 814EDBDC | 7F C3 F3 78 */	mr r3, r30
/* 814EDBE0 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 814EDBE4 | 54 A8 06 3E */	clrlwi r8, r5, 24
/* 814EDBE8 | 54 C6 84 3E */	srwi r6, r6, 16
/* 814EDBEC | 7C A4 39 D6 */	mullw r5, r4, r7
/* 814EDBF0 | 90 1E 00 30 */	stw r0, 0x30(r30)
/* 814EDBF4 | 7C 88 32 14 */	add r4, r8, r6
/* 814EDBF8 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 814EDBFC | 90 1E 00 38 */	stw r0, 0x38(r30)
/* 814EDC00 | 7C A5 22 14 */	add r5, r5, r4
/* 814EDC04 | 7C 85 3B D6 */	divw r4, r5, r7
/* 814EDC08 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 814EDC0C | B0 1E 00 50 */	sth r0, 0x50(r30)
/* 814EDC10 | 7C 04 39 D6 */	mullw r0, r4, r7
/* 814EDC14 | 54 9C 04 3E */	clrlwi r28, r4, 16
/* 814EDC18 | 7C 80 28 50 */	subf r4, r0, r5
/* 814EDC1C | 54 80 80 1E */	slwi r0, r4, 16
/* 814EDC20 | 7C 00 E2 14 */	add r0, r0, r28
/* 814EDC24 | 54 9D 04 3E */	clrlwi r29, r4, 16
/* 814EDC28 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 814EDC2C | 4B FF D6 FD */	bl TMCJPEGDEC_init_buff
/* 814EDC30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDC34 | 40 80 00 08 */	bge .L_814EDC3C
/* 814EDC38 | 48 00 00 34 */	b .L_814EDC6C
.L_814EDC3C:
/* 814EDC3C | B3 BF 00 00 */	sth r29, 0x0(r31)
/* 814EDC40 | 7F C3 F3 78 */	mr r3, r30
/* 814EDC44 | B3 9F 00 02 */	sth r28, 0x2(r31)
/* 814EDC48 | 4B FF D2 E9 */	bl TMCJPEGDEC_get_position
/* 814EDC4C | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814EDC50 | A0 9F 00 02 */	lhz r4, 0x2(r31)
/* 814EDC54 | A0 7F 00 10 */	lhz r3, 0x10(r31)
/* 814EDC58 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814EDC5C | 7C 64 19 D6 */	mullw r3, r4, r3
/* 814EDC60 | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 814EDC64 | 7C 03 00 50 */	subf r0, r3, r0
/* 814EDC68 | 7C 64 00 50 */	subf r3, r4, r0
.L_814EDC6C:
/* 814EDC6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EDC70 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EDC74 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EDC78 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EDC7C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814EDC80 | 7C 08 03 A6 */	mtlr r0
/* 814EDC84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EDC88 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_err_restart

# .text:0x3844 | 0x814EDC8C | size: 0x98
.fn TMCJPEGDEC_set_entropytbl, global
/* 814EDC8C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814EDC90 | 41 82 00 30 */	beq .L_814EDCC0
/* 814EDC94 | 40 80 00 44 */	bge .L_814EDCD8
/* 814EDC98 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814EDC9C | 40 80 00 08 */	bge .L_814EDCA4
/* 814EDCA0 | 48 00 00 38 */	b .L_814EDCD8
.L_814EDCA4:
/* 814EDCA4 | 38 C3 04 60 */	addi r6, r3, 0x460
/* 814EDCA8 | 38 83 15 70 */	addi r4, r3, 0x1570
/* 814EDCAC | 38 03 14 60 */	addi r0, r3, 0x1460
/* 814EDCB0 | 90 C3 04 40 */	stw r6, 0x440(r3)
/* 814EDCB4 | 90 83 04 48 */	stw r4, 0x448(r3)
/* 814EDCB8 | 90 03 04 44 */	stw r0, 0x444(r3)
/* 814EDCBC | 48 00 00 1C */	b .L_814EDCD8
.L_814EDCC0:
/* 814EDCC0 | 38 C3 08 60 */	addi r6, r3, 0x860
/* 814EDCC4 | 38 83 15 80 */	addi r4, r3, 0x1580
/* 814EDCC8 | 38 03 14 A4 */	addi r0, r3, 0x14a4
/* 814EDCCC | 90 C3 04 40 */	stw r6, 0x440(r3)
/* 814EDCD0 | 90 83 04 48 */	stw r4, 0x448(r3)
/* 814EDCD4 | 90 03 04 44 */	stw r0, 0x444(r3)
.L_814EDCD8:
/* 814EDCD8 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814EDCDC | 41 82 00 2C */	beq .L_814EDD08
/* 814EDCE0 | 4C 80 00 20 */	bgelr
/* 814EDCE4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EDCE8 | 4D 80 00 20 */	bltlr
/* 814EDCEC | 38 A3 0C 60 */	addi r5, r3, 0xc60
/* 814EDCF0 | 38 83 15 90 */	addi r4, r3, 0x1590
/* 814EDCF4 | 38 03 14 E8 */	addi r0, r3, 0x14e8
/* 814EDCF8 | 90 A3 04 50 */	stw r5, 0x450(r3)
/* 814EDCFC | 90 83 04 58 */	stw r4, 0x458(r3)
/* 814EDD00 | 90 03 04 54 */	stw r0, 0x454(r3)
/* 814EDD04 | 4E 80 00 20 */	blr
.L_814EDD08:
/* 814EDD08 | 38 A3 10 60 */	addi r5, r3, 0x1060
/* 814EDD0C | 38 83 16 90 */	addi r4, r3, 0x1690
/* 814EDD10 | 38 03 15 2C */	addi r0, r3, 0x152c
/* 814EDD14 | 90 A3 04 50 */	stw r5, 0x450(r3)
/* 814EDD18 | 90 83 04 58 */	stw r4, 0x458(r3)
/* 814EDD1C | 90 03 04 54 */	stw r0, 0x454(r3)
/* 814EDD20 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_set_entropytbl

# .text:0x38DC | 0x814EDD24 | size: 0x26C
.fn TMCCJPEGDecGetOffsetEXIF, global
/* 814EDD24 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814EDD28 | 7C 08 02 A6 */	mflr r0
/* 814EDD2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814EDD30 | BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 814EDD34 | 7C 7C 1B 78 */	mr r28, r3
/* 814EDD38 | 7C 9D 23 78 */	mr r29, r4
/* 814EDD3C | 7C BB 2B 78 */	mr r27, r5
/* 814EDD40 | 83 E5 00 28 */	lwz r31, 0x28(r5)
/* 814EDD44 | 83 C5 00 18 */	lwz r30, 0x18(r5)
/* 814EDD48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814EDD4C | 40 82 00 0C */	bne .L_814EDD58
/* 814EDD50 | 38 60 FF FF */	li r3, -0x1
/* 814EDD54 | 48 00 02 28 */	b .L_814EDF7C
.L_814EDD58:
/* 814EDD58 | 7F E3 FB 78 */	mr r3, r31
/* 814EDD5C | 38 80 00 00 */	li r4, 0x0
/* 814EDD60 | 38 A0 19 E8 */	li r5, 0x19e8
/* 814EDD64 | 4B E4 25 D1 */	bl memset
/* 814EDD68 | 7F E3 FB 78 */	mr r3, r31
/* 814EDD6C | 38 9B 00 10 */	addi r4, r27, 0x10
/* 814EDD70 | 4B FF CB A5 */	bl TMCJPEGDEC_init_ptr_buff
/* 814EDD74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDD78 | 40 80 00 08 */	bge .L_814EDD80
/* 814EDD7C | 48 00 02 00 */	b .L_814EDF7C
.L_814EDD80:
/* 814EDD80 | 7F E4 FB 78 */	mr r4, r31
/* 814EDD84 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814EDD88 | 4B FF CD 61 */	bl TMCJPEGDEC_get_wbyte
/* 814EDD8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDD90 | 40 80 00 08 */	bge .L_814EDD98
/* 814EDD94 | 48 00 01 E8 */	b .L_814EDF7C
.L_814EDD98:
/* 814EDD98 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814EDD9C | 28 00 FF D8 */	cmplwi r0, 0xffd8
/* 814EDDA0 | 41 82 00 0C */	beq .L_814EDDAC
/* 814EDDA4 | 38 60 FF E0 */	li r3, -0x20
/* 814EDDA8 | 48 00 01 D4 */	b .L_814EDF7C
.L_814EDDAC:
/* 814EDDAC | 3F 60 00 01 */	lis r27, 0x1
.L_814EDDB0:
/* 814EDDB0 | 7F E4 FB 78 */	mr r4, r31
/* 814EDDB4 | 38 61 00 0A */	addi r3, r1, 0xa
/* 814EDDB8 | 4B FF CD 31 */	bl TMCJPEGDEC_get_wbyte
/* 814EDDBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDDC0 | 40 80 00 08 */	bge .L_814EDDC8
/* 814EDDC4 | 48 00 01 B8 */	b .L_814EDF7C
.L_814EDDC8:
/* 814EDDC8 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814EDDCC | 28 00 FF E1 */	cmplwi r0, 0xffe1
/* 814EDDD0 | 40 82 00 B4 */	bne .L_814EDE84
/* 814EDDD4 | 7F E4 FB 78 */	mr r4, r31
/* 814EDDD8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814EDDDC | 4B FF CD 0D */	bl TMCJPEGDEC_get_wbyte
/* 814EDDE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDDE4 | 40 80 00 08 */	bge .L_814EDDEC
/* 814EDDE8 | 48 00 01 94 */	b .L_814EDF7C
.L_814EDDEC:
/* 814EDDEC | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814EDDF0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814EDDF4 | 40 80 00 0C */	bge .L_814EDE00
/* 814EDDF8 | 38 60 FF BB */	li r3, -0x45
/* 814EDDFC | 48 00 01 80 */	b .L_814EDF7C
.L_814EDE00:
/* 814EDE00 | 7F E5 FB 78 */	mr r5, r31
/* 814EDE04 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814EDE08 | 38 80 00 04 */	li r4, 0x4
/* 814EDE0C | 4B FF CE 41 */	bl TMCJPEGDEC_get_sbyte
/* 814EDE10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDE14 | 40 80 00 08 */	bge .L_814EDE1C
/* 814EDE18 | 48 00 01 64 */	b .L_814EDF7C
.L_814EDE1C:
/* 814EDE1C | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 814EDE20 | 28 00 00 45 */	cmplwi r0, 0x45
/* 814EDE24 | 40 82 00 58 */	bne .L_814EDE7C
/* 814EDE28 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 814EDE2C | 28 00 00 78 */	cmplwi r0, 0x78
/* 814EDE30 | 40 82 00 4C */	bne .L_814EDE7C
/* 814EDE34 | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 814EDE38 | 28 00 00 69 */	cmplwi r0, 0x69
/* 814EDE3C | 40 82 00 40 */	bne .L_814EDE7C
/* 814EDE40 | 88 01 00 13 */	lbz r0, 0x13(r1)
/* 814EDE44 | 28 00 00 66 */	cmplwi r0, 0x66
/* 814EDE48 | 40 82 00 34 */	bne .L_814EDE7C
/* 814EDE4C | 7F E3 FB 78 */	mr r3, r31
/* 814EDE50 | 4B FF D0 F1 */	bl TMCJPEGDEC_chk_possible_size
/* 814EDE54 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814EDE58 | 7C 00 F0 50 */	subf r0, r0, r30
/* 814EDE5C | 7C 83 00 50 */	subf r4, r3, r0
/* 814EDE60 | 38 60 00 00 */	li r3, 0x0
/* 814EDE64 | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814EDE68 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814EDE6C | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 814EDE70 | 38 04 00 02 */	addi r0, r4, 0x2
/* 814EDE74 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814EDE78 | 48 00 01 04 */	b .L_814EDF7C
.L_814EDE7C:
/* 814EDE7C | 38 60 FF BB */	li r3, -0x45
/* 814EDE80 | 48 00 00 FC */	b .L_814EDF7C
.L_814EDE84:
/* 814EDE84 | 7F E4 FB 78 */	mr r4, r31
/* 814EDE88 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814EDE8C | 4B FF CC 5D */	bl TMCJPEGDEC_get_wbyte
/* 814EDE90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDE94 | 40 80 00 08 */	bge .L_814EDE9C
/* 814EDE98 | 48 00 00 E4 */	b .L_814EDF7C
.L_814EDE9C:
/* 814EDE9C | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 814EDEA0 | 28 03 00 02 */	cmplwi r3, 0x2
/* 814EDEA4 | 40 80 00 0C */	bge .L_814EDEB0
/* 814EDEA8 | 38 60 FF BB */	li r3, -0x45
/* 814EDEAC | 48 00 00 D0 */	b .L_814EDF7C
.L_814EDEB0:
/* 814EDEB0 | A0 81 00 0A */	lhz r4, 0xa(r1)
/* 814EDEB4 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814EDEB8 | B0 61 00 0C */	sth r3, 0xc(r1)
/* 814EDEBC | 28 04 FF E0 */	cmplwi r4, 0xffe0
/* 814EDEC0 | 41 80 00 24 */	blt .L_814EDEE4
/* 814EDEC4 | 28 04 FF EF */	cmplwi r4, 0xffef
/* 814EDEC8 | 41 81 00 1C */	bgt .L_814EDEE4
/* 814EDECC | 7F E4 FB 78 */	mr r4, r31
/* 814EDED0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814EDED4 | 4B FF CE 55 */	bl TMCJPEGDEC_move_ptr
/* 814EDED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDEDC | 40 80 FE D4 */	bge .L_814EDDB0
/* 814EDEE0 | 48 00 00 9C */	b .L_814EDF7C
.L_814EDEE4:
/* 814EDEE4 | 38 1B FF D9 */	subi r0, r27, 0x27
/* 814EDEE8 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDEEC | 41 82 00 84 */	beq .L_814EDF70
/* 814EDEF0 | 40 80 00 34 */	bge .L_814EDF24
/* 814EDEF4 | 38 1B FF C2 */	subi r0, r27, 0x3e
/* 814EDEF8 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDEFC | 41 82 00 54 */	beq .L_814EDF50
/* 814EDF00 | 40 80 00 14 */	bge .L_814EDF14
/* 814EDF04 | 38 1B FF C0 */	subi r0, r27, 0x40
/* 814EDF08 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDF0C | 41 82 00 44 */	beq .L_814EDF50
/* 814EDF10 | 48 00 00 68 */	b .L_814EDF78
.L_814EDF14:
/* 814EDF14 | 38 1B FF C4 */	subi r0, r27, 0x3c
/* 814EDF18 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDF1C | 41 82 00 34 */	beq .L_814EDF50
/* 814EDF20 | 48 00 00 58 */	b .L_814EDF78
.L_814EDF24:
/* 814EDF24 | 38 1B FF FE */	subi r0, r27, 0x2
/* 814EDF28 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDF2C | 41 82 00 24 */	beq .L_814EDF50
/* 814EDF30 | 40 80 00 48 */	bge .L_814EDF78
/* 814EDF34 | 38 1B FF DE */	subi r0, r27, 0x22
/* 814EDF38 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDF3C | 40 80 00 3C */	bge .L_814EDF78
/* 814EDF40 | 38 1B FF DB */	subi r0, r27, 0x25
/* 814EDF44 | 7C 04 00 00 */	cmpw r4, r0
/* 814EDF48 | 40 80 00 08 */	bge .L_814EDF50
/* 814EDF4C | 48 00 00 1C */	b .L_814EDF68
.L_814EDF50:
/* 814EDF50 | 7F E4 FB 78 */	mr r4, r31
/* 814EDF54 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814EDF58 | 4B FF CD D1 */	bl TMCJPEGDEC_move_ptr
/* 814EDF5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EDF60 | 40 80 FE 50 */	bge .L_814EDDB0
/* 814EDF64 | 48 00 00 18 */	b .L_814EDF7C
.L_814EDF68:
/* 814EDF68 | 38 60 FF FE */	li r3, -0x2
/* 814EDF6C | 48 00 00 10 */	b .L_814EDF7C
.L_814EDF70:
/* 814EDF70 | 38 60 FF FE */	li r3, -0x2
/* 814EDF74 | 48 00 00 08 */	b .L_814EDF7C
.L_814EDF78:
/* 814EDF78 | 38 60 FF D1 */	li r3, -0x2f
.L_814EDF7C:
/* 814EDF7C | BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 814EDF80 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814EDF84 | 7C 08 03 A6 */	mtlr r0
/* 814EDF88 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814EDF8C | 4E 80 00 20 */	blr
.endfn TMCCJPEGDecGetOffsetEXIF

# .text:0x3B48 | 0x814EDF90 | size: 0x210
.fn TMCCJPEGDecGetInfoEXIF, global
/* 814EDF90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EDF94 | 7C 08 02 A6 */	mflr r0
/* 814EDF98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EDF9C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EDFA0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EDFA4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EDFA8 | 7C 9D 23 78 */	mr r29, r4
/* 814EDFAC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814EDFB0 | 7C 7C 1B 78 */	mr r28, r3
/* 814EDFB4 | 83 E4 00 28 */	lwz r31, 0x28(r4)
/* 814EDFB8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814EDFBC | 40 82 00 0C */	bne .L_814EDFC8
/* 814EDFC0 | 38 60 FF FF */	li r3, -0x1
/* 814EDFC4 | 48 00 01 BC */	b .L_814EE180
.L_814EDFC8:
/* 814EDFC8 | 38 80 00 00 */	li r4, 0x0
/* 814EDFCC | 38 A0 06 D4 */	li r5, 0x6d4
/* 814EDFD0 | 4B E4 23 65 */	bl memset
/* 814EDFD4 | 7F E3 FB 78 */	mr r3, r31
/* 814EDFD8 | 38 80 00 00 */	li r4, 0x0
/* 814EDFDC | 38 A0 19 E8 */	li r5, 0x19e8
/* 814EDFE0 | 4B E4 23 55 */	bl memset
/* 814EDFE4 | 93 9F 19 E4 */	stw r28, 0x19e4(r31)
/* 814EDFE8 | 93 FC 06 C8 */	stw r31, 0x6c8(r28)
/* 814EDFEC | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 814EDFF0 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814EDFF4 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 814EDFF8 | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 814EDFFC | 54 60 44 2E */	clrlslwi r0, r3, 24, 8
/* 814EE000 | 50 60 C6 3E */	rlwimi r0, r3, 24, 24, 31
/* 814EE004 | 28 00 FF E1 */	cmplwi r0, 0xffe1
/* 814EE008 | 41 82 00 0C */	beq .L_814EE014
/* 814EE00C | 38 60 FF BB */	li r3, -0x45
/* 814EE010 | 48 00 01 70 */	b .L_814EE180
.L_814EE014:
/* 814EE014 | 88 05 00 03 */	lbz r0, 0x3(r5)
/* 814EE018 | 88 65 00 02 */	lbz r3, 0x2(r5)
/* 814EE01C | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 814EE020 | 54 64 44 2E */	clrlslwi r4, r3, 24, 8
/* 814EE024 | 50 64 C6 3E */	rlwimi r4, r3, 24, 24, 31
/* 814EE028 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814EE02C | 40 80 00 0C */	bge .L_814EE038
/* 814EE030 | 38 60 FF BB */	li r3, -0x45
/* 814EE034 | 48 00 01 4C */	b .L_814EE180
.L_814EE038:
/* 814EE038 | 38 64 00 02 */	addi r3, r4, 0x2
/* 814EE03C | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814EE040 | 54 7E 04 3E */	clrlwi r30, r3, 16
/* 814EE044 | 38 65 00 0A */	addi r3, r5, 0xa
/* 814EE048 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814EE04C | 38 BC 00 4C */	addi r5, r28, 0x4c
/* 814EE050 | 48 00 01 51 */	bl TMCJPEG_814EE1A0
/* 814EE054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE058 | 40 80 00 08 */	bge .L_814EE060
/* 814EE05C | 48 00 01 24 */	b .L_814EE180
.L_814EE060:
/* 814EE060 | 88 1D 00 24 */	lbz r0, 0x24(r29)
/* 814EE064 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EE068 | 40 82 00 0C */	bne .L_814EE074
/* 814EE06C | 38 60 00 00 */	li r3, 0x0
/* 814EE070 | 48 00 01 10 */	b .L_814EE180
.L_814EE074:
/* 814EE074 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EE078 | 40 82 00 20 */	bne .L_814EE098
/* 814EE07C | 7F A3 EB 78 */	mr r3, r29
/* 814EE080 | 7F 84 E3 78 */	mr r4, r28
/* 814EE084 | 7F C5 F3 78 */	mr r5, r30
/* 814EE088 | 48 00 0F B5 */	bl TMCJPEG_814EF03C
/* 814EE08C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE090 | 40 80 00 10 */	bge .L_814EE0A0
/* 814EE094 | 48 00 00 EC */	b .L_814EE180
.L_814EE098:
/* 814EE098 | 38 60 FF FF */	li r3, -0x1
/* 814EE09C | 48 00 00 E4 */	b .L_814EE180
.L_814EE0A0:
/* 814EE0A0 | 7F E4 FB 78 */	mr r4, r31
/* 814EE0A4 | 38 7C 00 4C */	addi r3, r28, 0x4c
/* 814EE0A8 | 38 BD 00 10 */	addi r5, r29, 0x10
/* 814EE0AC | 4B FF D1 F5 */	bl TMCJPEGDEC_init_buff_thumbnail
/* 814EE0B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE0B4 | 40 80 00 08 */	bge .L_814EE0BC
/* 814EE0B8 | 48 00 00 C8 */	b .L_814EE180
.L_814EE0BC:
/* 814EE0BC | 7F E3 FB 78 */	mr r3, r31
/* 814EE0C0 | 4B FF E6 15 */	bl TMCJPEGDEC_HeaderAnalyze
/* 814EE0C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE0C8 | 41 80 00 A4 */	blt .L_814EE16C
/* 814EE0CC | 7F E3 FB 78 */	mr r3, r31
/* 814EE0D0 | 4B FF E2 75 */	bl TMCJPEGDEC_Decompscan
/* 814EE0D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE0D8 | 41 80 00 94 */	blt .L_814EE16C
/* 814EE0DC | 88 1F 18 1C */	lbz r0, 0x181c(r31)
/* 814EE0E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EE0E4 | 40 82 00 88 */	bne .L_814EE16C
/* 814EE0E8 | 7F E3 FB 78 */	mr r3, r31
/* 814EE0EC | 4B FF E2 A9 */	bl TMCJPEGDEC_Setsize
/* 814EE0F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE0F4 | 41 80 00 78 */	blt .L_814EE16C
/* 814EE0F8 | 88 1C 06 D0 */	lbz r0, 0x6d0(r28)
/* 814EE0FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814EE100 | 41 82 00 34 */	beq .L_814EE134
/* 814EE104 | 40 80 00 10 */	bge .L_814EE114
/* 814EE108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EE10C | 40 80 00 14 */	bge .L_814EE120
/* 814EE110 | 48 00 00 48 */	b .L_814EE158
.L_814EE114:
/* 814EE114 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814EE118 | 40 80 00 40 */	bge .L_814EE158
/* 814EE11C | 48 00 00 2C */	b .L_814EE148
.L_814EE120:
/* 814EE120 | 7F E3 FB 78 */	mr r3, r31
/* 814EE124 | 48 00 58 C5 */	bl TMCJPEGDEC_set_converterRGB565
/* 814EE128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE12C | 41 80 00 40 */	blt .L_814EE16C
/* 814EE130 | 48 00 00 28 */	b .L_814EE158
.L_814EE134:
/* 814EE134 | 7F E3 FB 78 */	mr r3, r31
/* 814EE138 | 48 00 70 D9 */	bl TMCJPEGDEC_set_converterRGBA8
/* 814EE13C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE140 | 41 80 00 2C */	blt .L_814EE16C
/* 814EE144 | 48 00 00 14 */	b .L_814EE158
.L_814EE148:
/* 814EE148 | 7F E3 FB 78 */	mr r3, r31
/* 814EE14C | 48 00 1A 51 */	bl TMCJPEGDEC_set_converterY8U8V8
/* 814EE150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE154 | 41 80 00 18 */	blt .L_814EE16C
.L_814EE158:
/* 814EE158 | 7F E3 FB 78 */	mr r3, r31
/* 814EE15C | 4B FF CD D5 */	bl TMCJPEGDEC_get_position
/* 814EE160 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 814EE164 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814EE168 | 48 00 00 18 */	b .L_814EE180
.L_814EE16C:
/* 814EE16C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE170 | 38 00 FF FE */	li r0, -0x2
/* 814EE174 | 40 80 00 08 */	bge .L_814EE17C
/* 814EE178 | 7C 60 1B 78 */	mr r0, r3
.L_814EE17C:
/* 814EE17C | 7C 03 03 78 */	mr r3, r0
.L_814EE180:
/* 814EE180 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EE184 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EE188 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EE18C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EE190 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814EE194 | 7C 08 03 A6 */	mtlr r0
/* 814EE198 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EE19C | 4E 80 00 20 */	blr
.endfn TMCCJPEGDecGetInfoEXIF

# .text:0x3D58 | 0x814EE1A0 | size: 0x350
.fn TMCJPEG_814EE1A0, local
/* 814EE1A0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814EE1A4 | 7C 08 02 A6 */	mflr r0
/* 814EE1A8 | 7C C3 22 14 */	add r6, r3, r4
/* 814EE1AC | 28 04 00 08 */	cmplwi r4, 0x8
/* 814EE1B0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814EE1B4 | 38 00 00 00 */	li r0, 0x0
/* 814EE1B8 | BE E1 00 0C */	stmw r23, 0xc(r1)
/* 814EE1BC | 7C 7E 1B 78 */	mr r30, r3
/* 814EE1C0 | 7C 9C 23 78 */	mr r28, r4
/* 814EE1C4 | 7C BD 2B 78 */	mr r29, r5
/* 814EE1C8 | 90 65 06 74 */	stw r3, 0x674(r5)
/* 814EE1CC | 90 C5 06 78 */	stw r6, 0x678(r5)
/* 814EE1D0 | 90 05 06 38 */	stw r0, 0x638(r5)
/* 814EE1D4 | 40 80 00 0C */	bge .L_814EE1E0
/* 814EE1D8 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE1DC | 48 00 03 00 */	b .L_814EE4DC
.L_814EE1E0:
/* 814EE1E0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814EE1E4 | 8B E3 00 00 */	lbz r31, 0x0(r3)
/* 814EE1E8 | 50 1F 44 2E */	rlwimi r31, r0, 8, 16, 23
/* 814EE1EC | 28 1F 4D 4D */	cmplwi r31, 0x4d4d
/* 814EE1F0 | 41 82 00 18 */	beq .L_814EE208
/* 814EE1F4 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE1F8 | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE1FC | 41 82 00 0C */	beq .L_814EE208
/* 814EE200 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE204 | 48 00 02 D8 */	b .L_814EE4DC
.L_814EE208:
/* 814EE208 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE20C | 88 C3 00 03 */	lbz r6, 0x3(r3)
/* 814EE210 | 88 A3 00 02 */	lbz r5, 0x2(r3)
/* 814EE214 | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE218 | 50 C5 44 2E */	rlwimi r5, r6, 8, 16, 23
/* 814EE21C | 54 A0 44 2E */	clrlslwi r0, r5, 24, 8
/* 814EE220 | 50 A0 C6 3E */	rlwimi r0, r5, 24, 24, 31
/* 814EE224 | 40 82 00 08 */	bne .L_814EE22C
/* 814EE228 | 54 A0 04 3E */	clrlwi r0, r5, 16
.L_814EE22C:
/* 814EE22C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814EE230 | 28 00 00 2A */	cmplwi r0, 0x2a
/* 814EE234 | 41 82 00 0C */	beq .L_814EE240
/* 814EE238 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE23C | 48 00 02 A0 */	b .L_814EE4DC
.L_814EE240:
/* 814EE240 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE244 | 88 A3 00 05 */	lbz r5, 0x5(r3)
/* 814EE248 | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE24C | 88 C3 00 06 */	lbz r6, 0x6(r3)
/* 814EE250 | 88 E3 00 04 */	lbz r7, 0x4(r3)
/* 814EE254 | 50 A7 44 2E */	rlwimi r7, r5, 8, 16, 23
/* 814EE258 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 814EE25C | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814EE260 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EE264 | 40 82 00 0C */	bne .L_814EE270
/* 814EE268 | 7C E5 3B 78 */	mr r5, r7
/* 814EE26C | 48 00 00 14 */	b .L_814EE280
.L_814EE270:
/* 814EE270 | 54 E5 C4 2E */	rlwinm r5, r7, 24, 16, 23
/* 814EE274 | 50 E5 46 3E */	rlwimi r5, r7, 8, 24, 31
/* 814EE278 | 50 E5 42 1E */	rlwimi r5, r7, 8, 8, 15
/* 814EE27C | 50 E5 C0 0E */	rlwimi r5, r7, 24, 0, 7
.L_814EE280:
/* 814EE280 | 7C 04 28 40 */	cmplw r4, r5
/* 814EE284 | 40 80 00 0C */	bge .L_814EE290
/* 814EE288 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE28C | 48 00 02 50 */	b .L_814EE4DC
.L_814EE290:
/* 814EE290 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814EE294 | 7F 63 2A 14 */	add r27, r3, r5
/* 814EE298 | 7C 00 20 50 */	subf r0, r0, r4
/* 814EE29C | 54 19 04 3E */	clrlwi r25, r0, 16
/* 814EE2A0 | 28 19 00 02 */	cmplwi r25, 0x2
/* 814EE2A4 | 40 80 00 0C */	bge .L_814EE2B0
/* 814EE2A8 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE2AC | 48 00 02 30 */	b .L_814EE4DC
.L_814EE2B0:
/* 814EE2B0 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE2B4 | 88 9B 00 01 */	lbz r4, 0x1(r27)
/* 814EE2B8 | 88 7B 00 00 */	lbz r3, 0x0(r27)
/* 814EE2BC | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE2C0 | 50 83 44 2E */	rlwimi r3, r4, 8, 16, 23
/* 814EE2C4 | 54 60 44 2E */	clrlslwi r0, r3, 24, 8
/* 814EE2C8 | 50 60 C6 3E */	rlwimi r0, r3, 24, 24, 31
/* 814EE2CC | 40 82 00 08 */	bne .L_814EE2D4
/* 814EE2D0 | 54 60 04 3E */	clrlwi r0, r3, 16
.L_814EE2D4:
/* 814EE2D4 | 54 17 04 3E */	clrlwi r23, r0, 16
/* 814EE2D8 | 38 19 FF FE */	subi r0, r25, 0x2
/* 814EE2DC | 1F 57 00 0C */	mulli r26, r23, 0xc
/* 814EE2E0 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814EE2E4 | 54 19 04 3E */	clrlwi r25, r0, 16
/* 814EE2E8 | 7C 19 D0 00 */	cmpw r25, r26
/* 814EE2EC | 40 80 00 0C */	bge .L_814EE2F8
/* 814EE2F0 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE2F4 | 48 00 01 E8 */	b .L_814EE4DC
.L_814EE2F8:
/* 814EE2F8 | 3B 00 00 00 */	li r24, 0x0
/* 814EE2FC | 48 00 00 1C */	b .L_814EE318
.L_814EE300:
/* 814EE300 | 7F A3 EB 78 */	mr r3, r29
/* 814EE304 | 7F 65 DB 78 */	mr r5, r27
/* 814EE308 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814EE30C | 48 00 01 E5 */	bl TMCJPEG_814EE4F0
/* 814EE310 | 3B 7B 00 0C */	addi r27, r27, 0xc
/* 814EE314 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814EE318:
/* 814EE318 | 57 00 04 3E */	clrlwi r0, r24, 16
/* 814EE31C | 7C 00 B8 40 */	cmplw r0, r23
/* 814EE320 | 41 80 FF E0 */	blt .L_814EE300
/* 814EE324 | 7C 1A C8 50 */	subf r0, r26, r25
/* 814EE328 | 54 19 04 3E */	clrlwi r25, r0, 16
/* 814EE32C | 28 19 00 04 */	cmplwi r25, 0x4
/* 814EE330 | 40 80 00 0C */	bge .L_814EE33C
/* 814EE334 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE338 | 48 00 01 A4 */	b .L_814EE4DC
.L_814EE33C:
/* 814EE33C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE340 | 88 7B 00 01 */	lbz r3, 0x1(r27)
/* 814EE344 | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE348 | 88 9B 00 02 */	lbz r4, 0x2(r27)
/* 814EE34C | 88 BB 00 00 */	lbz r5, 0x0(r27)
/* 814EE350 | 50 65 44 2E */	rlwimi r5, r3, 8, 16, 23
/* 814EE354 | 88 1B 00 03 */	lbz r0, 0x3(r27)
/* 814EE358 | 50 85 82 1E */	rlwimi r5, r4, 16, 8, 15
/* 814EE35C | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 814EE360 | 40 82 00 0C */	bne .L_814EE36C
/* 814EE364 | 7C A3 2B 78 */	mr r3, r5
/* 814EE368 | 48 00 00 14 */	b .L_814EE37C
.L_814EE36C:
/* 814EE36C | 54 A3 C4 2E */	rlwinm r3, r5, 24, 16, 23
/* 814EE370 | 50 A3 46 3E */	rlwimi r3, r5, 8, 24, 31
/* 814EE374 | 50 A3 42 1E */	rlwimi r3, r5, 8, 8, 15
/* 814EE378 | 50 A3 C0 0E */	rlwimi r3, r5, 24, 0, 7
.L_814EE37C:
/* 814EE37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EE380 | 40 82 00 0C */	bne .L_814EE38C
/* 814EE384 | 38 60 00 00 */	li r3, 0x0
/* 814EE388 | 48 00 01 54 */	b .L_814EE4DC
.L_814EE38C:
/* 814EE38C | 7C 1C 18 40 */	cmplw r28, r3
/* 814EE390 | 40 80 00 0C */	bge .L_814EE39C
/* 814EE394 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE398 | 48 00 01 44 */	b .L_814EE4DC
.L_814EE39C:
/* 814EE39C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814EE3A0 | 7F 5E 1A 14 */	add r26, r30, r3
/* 814EE3A4 | 7C 00 E0 50 */	subf r0, r0, r28
/* 814EE3A8 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814EE3AC | 28 05 00 02 */	cmplwi r5, 0x2
/* 814EE3B0 | 40 80 00 0C */	bge .L_814EE3BC
/* 814EE3B4 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE3B8 | 48 00 01 24 */	b .L_814EE4DC
.L_814EE3BC:
/* 814EE3BC | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE3C0 | 88 9A 00 01 */	lbz r4, 0x1(r26)
/* 814EE3C4 | 88 7A 00 00 */	lbz r3, 0x0(r26)
/* 814EE3C8 | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE3CC | 50 83 44 2E */	rlwimi r3, r4, 8, 16, 23
/* 814EE3D0 | 54 60 44 2E */	clrlslwi r0, r3, 24, 8
/* 814EE3D4 | 50 60 C6 3E */	rlwimi r0, r3, 24, 24, 31
/* 814EE3D8 | 40 82 00 08 */	bne .L_814EE3E0
/* 814EE3DC | 54 60 04 3E */	clrlwi r0, r3, 16
.L_814EE3E0:
/* 814EE3E0 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 814EE3E4 | 38 65 FF FE */	subi r3, r5, 0x2
/* 814EE3E8 | 1C 1B 00 0C */	mulli r0, r27, 0xc
/* 814EE3EC | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814EE3F0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814EE3F4 | 7C 03 00 00 */	cmpw r3, r0
/* 814EE3F8 | 40 80 00 0C */	bge .L_814EE404
/* 814EE3FC | 38 60 FF 5F */	li r3, -0xa1
/* 814EE400 | 48 00 00 DC */	b .L_814EE4DC
.L_814EE404:
/* 814EE404 | 3B 20 00 00 */	li r25, 0x0
/* 814EE408 | 48 00 00 1C */	b .L_814EE424
.L_814EE40C:
/* 814EE40C | 7F A3 EB 78 */	mr r3, r29
/* 814EE410 | 7F 45 D3 78 */	mr r5, r26
/* 814EE414 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814EE418 | 48 00 08 5D */	bl TMCJPEG_814EEC74
/* 814EE41C | 3B 5A 00 0C */	addi r26, r26, 0xc
/* 814EE420 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814EE424:
/* 814EE424 | 57 20 04 3E */	clrlwi r0, r25, 16
/* 814EE428 | 7C 00 D8 40 */	cmplw r0, r27
/* 814EE42C | 41 80 FF E0 */	blt .L_814EE40C
/* 814EE430 | 80 7D 06 38 */	lwz r3, 0x638(r29)
/* 814EE434 | 7C 1C 18 40 */	cmplw r28, r3
/* 814EE438 | 40 80 00 0C */	bge .L_814EE444
/* 814EE43C | 38 60 FF 5F */	li r3, -0xa1
/* 814EE440 | 48 00 00 9C */	b .L_814EE4DC
.L_814EE444:
/* 814EE444 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814EE448 | 7F 5E 1A 14 */	add r26, r30, r3
/* 814EE44C | 7C 00 E0 50 */	subf r0, r0, r28
/* 814EE450 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814EE454 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814EE458 | 40 80 00 0C */	bge .L_814EE464
/* 814EE45C | 38 60 FF 5F */	li r3, -0xa1
/* 814EE460 | 48 00 00 7C */	b .L_814EE4DC
.L_814EE464:
/* 814EE464 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814EE468 | 88 9A 00 01 */	lbz r4, 0x1(r26)
/* 814EE46C | 88 7A 00 00 */	lbz r3, 0x0(r26)
/* 814EE470 | 28 00 49 49 */	cmplwi r0, 0x4949
/* 814EE474 | 50 83 44 2E */	rlwimi r3, r4, 8, 16, 23
/* 814EE478 | 54 60 44 2E */	clrlslwi r0, r3, 24, 8
/* 814EE47C | 50 60 C6 3E */	rlwimi r0, r3, 24, 24, 31
/* 814EE480 | 40 82 00 08 */	bne .L_814EE488
/* 814EE484 | 54 60 04 3E */	clrlwi r0, r3, 16
.L_814EE488:
/* 814EE488 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 814EE48C | 38 65 FF FE */	subi r3, r5, 0x2
/* 814EE490 | 1C 1B 00 0C */	mulli r0, r27, 0xc
/* 814EE494 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814EE498 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814EE49C | 7C 03 00 00 */	cmpw r3, r0
/* 814EE4A0 | 40 80 00 0C */	bge .L_814EE4AC
/* 814EE4A4 | 38 60 FF 5F */	li r3, -0xa1
/* 814EE4A8 | 48 00 00 34 */	b .L_814EE4DC
.L_814EE4AC:
/* 814EE4AC | 3B 80 00 00 */	li r28, 0x0
/* 814EE4B0 | 48 00 00 1C */	b .L_814EE4CC
.L_814EE4B4:
/* 814EE4B4 | 7F A3 EB 78 */	mr r3, r29
/* 814EE4B8 | 7F 45 D3 78 */	mr r5, r26
/* 814EE4BC | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814EE4C0 | 48 00 00 31 */	bl TMCJPEG_814EE4F0
/* 814EE4C4 | 3B 5A 00 0C */	addi r26, r26, 0xc
/* 814EE4C8 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814EE4CC:
/* 814EE4CC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814EE4D0 | 7C 00 D8 40 */	cmplw r0, r27
/* 814EE4D4 | 41 80 FF E0 */	blt .L_814EE4B4
/* 814EE4D8 | 38 60 00 00 */	li r3, 0x0
.L_814EE4DC:
/* 814EE4DC | BA E1 00 0C */	lmw r23, 0xc(r1)
/* 814EE4E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814EE4E4 | 7C 08 03 A6 */	mtlr r0
/* 814EE4E8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814EE4EC | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EE1A0

# .text:0x40A8 | 0x814EE4F0 | size: 0x784
.fn TMCJPEG_814EE4F0, local
/* 814EE4F0 | 88 C5 00 01 */	lbz r6, 0x1(r5)
/* 814EE4F4 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE4F8 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814EE4FC | 50 C0 44 2E */	rlwimi r0, r6, 8, 16, 23
/* 814EE500 | 54 07 44 2E */	clrlslwi r7, r0, 24, 8
/* 814EE504 | 50 07 C6 3E */	rlwimi r7, r0, 24, 24, 31
/* 814EE508 | 40 82 00 08 */	bne .L_814EE510
/* 814EE50C | 54 07 04 3E */	clrlwi r7, r0, 16
.L_814EE510:
/* 814EE510 | 88 05 00 03 */	lbz r0, 0x3(r5)
/* 814EE514 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE518 | 88 C5 00 02 */	lbz r6, 0x2(r5)
/* 814EE51C | 54 E7 04 3E */	clrlwi r7, r7, 16
/* 814EE520 | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EE524 | 54 C0 44 2E */	clrlslwi r0, r6, 24, 8
/* 814EE528 | 50 C0 C6 3E */	rlwimi r0, r6, 24, 24, 31
/* 814EE52C | 40 82 00 08 */	bne .L_814EE534
/* 814EE530 | 54 C0 04 3E */	clrlwi r0, r6, 16
.L_814EE534:
/* 814EE534 | 2C 07 02 01 */	cmpwi r7, 0x201
/* 814EE538 | 54 08 04 3E */	clrlwi r8, r0, 16
/* 814EE53C | 40 80 00 64 */	bge .L_814EE5A0
/* 814EE540 | 2C 07 01 1B */	cmpwi r7, 0x11b
/* 814EE544 | 41 82 02 00 */	beq .L_814EE744
/* 814EE548 | 40 80 00 34 */	bge .L_814EE57C
/* 814EE54C | 2C 07 01 11 */	cmpwi r7, 0x111
/* 814EE550 | 4D 82 00 20 */	beqlr
/* 814EE554 | 40 80 00 14 */	bge .L_814EE568
/* 814EE558 | 2C 07 01 03 */	cmpwi r7, 0x103
/* 814EE55C | 4D 82 00 20 */	beqlr
/* 814EE560 | 4D 80 00 20 */	bltlr
/* 814EE564 | 4E 80 00 20 */	blr
.L_814EE568:
/* 814EE568 | 2C 07 01 1A */	cmpwi r7, 0x11a
/* 814EE56C | 40 80 00 D4 */	bge .L_814EE640
/* 814EE570 | 2C 07 01 13 */	cmpwi r7, 0x113
/* 814EE574 | 4C 80 00 20 */	bgelr
/* 814EE578 | 48 00 00 A0 */	b .L_814EE618
.L_814EE57C:
/* 814EE57C | 2C 07 01 2D */	cmpwi r7, 0x12d
/* 814EE580 | 41 82 02 F0 */	beq .L_814EE870
/* 814EE584 | 40 80 00 10 */	bge .L_814EE594
/* 814EE588 | 2C 07 01 28 */	cmpwi r7, 0x128
/* 814EE58C | 41 82 02 BC */	beq .L_814EE848
/* 814EE590 | 4E 80 00 20 */	blr
.L_814EE594:
/* 814EE594 | 2C 07 01 32 */	cmpwi r7, 0x132
/* 814EE598 | 41 82 03 DC */	beq .L_814EE974
/* 814EE59C | 4E 80 00 20 */	blr
.L_814EE5A0:
/* 814EE5A0 | 3C C0 00 01 */	lis r6, 0x1
/* 814EE5A4 | 38 06 91 01 */	subi r0, r6, 0x6eff
/* 814EE5A8 | 7C 07 00 00 */	cmpw r7, r0
/* 814EE5AC | 41 82 05 58 */	beq .L_814EEB04
/* 814EE5B0 | 40 80 00 34 */	bge .L_814EE5E4
/* 814EE5B4 | 38 06 87 69 */	subi r0, r6, 0x7897
/* 814EE5B8 | 7C 07 00 00 */	cmpw r7, r0
/* 814EE5BC | 41 82 04 E0 */	beq .L_814EEA9C
/* 814EE5C0 | 40 80 00 14 */	bge .L_814EE5D4
/* 814EE5C4 | 2C 07 02 13 */	cmpwi r7, 0x213
/* 814EE5C8 | 41 82 04 AC */	beq .L_814EEA74
/* 814EE5CC | 4C 80 00 20 */	bgelr
/* 814EE5D0 | 4E 80 00 20 */	blr
.L_814EE5D4:
/* 814EE5D4 | 38 06 90 00 */	subi r0, r6, 0x7000
/* 814EE5D8 | 7C 07 00 00 */	cmpw r7, r0
/* 814EE5DC | 41 82 05 04 */	beq .L_814EEAE0
/* 814EE5E0 | 4E 80 00 20 */	blr
.L_814EE5E4:
/* 814EE5E4 | 38 06 A0 02 */	subi r0, r6, 0x5ffe
/* 814EE5E8 | 7C 07 00 00 */	cmpw r7, r0
/* 814EE5EC | 41 82 05 88 */	beq .L_814EEB74
/* 814EE5F0 | 40 80 00 18 */	bge .L_814EE608
/* 814EE5F4 | 38 06 A0 00 */	subi r0, r6, 0x6000
/* 814EE5F8 | 7C 07 00 00 */	cmpw r7, r0
/* 814EE5FC | 41 82 05 2C */	beq .L_814EEB28
/* 814EE600 | 40 80 05 4C */	bge .L_814EEB4C
/* 814EE604 | 4E 80 00 20 */	blr
.L_814EE608:
/* 814EE608 | 38 06 A0 04 */	subi r0, r6, 0x5ffc
/* 814EE60C | 7C 07 00 00 */	cmpw r7, r0
/* 814EE610 | 4C 80 00 20 */	bgelr
/* 814EE614 | 48 00 05 E0 */	b .L_814EEBF4
.L_814EE618:
/* 814EE618 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EE61C | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE620 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EE624 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EE628 | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EE62C | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EE630 | 40 82 00 08 */	bne .L_814EE638
/* 814EE634 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EE638:
/* 814EE638 | B0 03 00 0C */	sth r0, 0xc(r3)
/* 814EE63C | 4E 80 00 20 */	blr
.L_814EE640:
/* 814EE640 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EE644 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE648 | 88 E5 00 08 */	lbz r7, 0x8(r5)
/* 814EE64C | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EE650 | 88 C5 00 0A */	lbz r6, 0xa(r5)
/* 814EE654 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EE658 | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814EE65C | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EE660 | 40 82 00 0C */	bne .L_814EE66C
/* 814EE664 | 7C E8 3B 78 */	mr r8, r7
/* 814EE668 | 48 00 00 14 */	b .L_814EE67C
.L_814EE66C:
/* 814EE66C | 54 E8 C4 2E */	rlwinm r8, r7, 24, 16, 23
/* 814EE670 | 50 E8 46 3E */	rlwimi r8, r7, 8, 24, 31
/* 814EE674 | 50 E8 42 1E */	rlwimi r8, r7, 8, 8, 15
/* 814EE678 | 50 E8 C0 0E */	rlwimi r8, r7, 24, 0, 7
.L_814EE67C:
/* 814EE67C | 80 03 06 74 */	lwz r0, 0x674(r3)
/* 814EE680 | 7C C0 42 14 */	add r6, r0, r8
/* 814EE684 | 7C 00 30 40 */	cmplw r0, r6
/* 814EE688 | 4D 81 00 20 */	bgtlr
/* 814EE68C | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EE690 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EE694 | 7C 06 00 40 */	cmplw r6, r0
/* 814EE698 | 4D 81 00 20 */	bgtlr
/* 814EE69C | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EE6A0 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE6A4 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 814EE6A8 | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EE6AC | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 814EE6B0 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EE6B4 | 50 A7 82 1E */	rlwimi r7, r5, 16, 8, 15
/* 814EE6B8 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EE6BC | 40 82 00 0C */	bne .L_814EE6C8
/* 814EE6C0 | 7C E0 3B 78 */	mr r0, r7
/* 814EE6C4 | 48 00 00 14 */	b .L_814EE6D8
.L_814EE6C8:
/* 814EE6C8 | 54 E0 C4 2E */	rlwinm r0, r7, 24, 16, 23
/* 814EE6CC | 50 E0 46 3E */	rlwimi r0, r7, 8, 24, 31
/* 814EE6D0 | 50 E0 42 1E */	rlwimi r0, r7, 8, 8, 15
/* 814EE6D4 | 50 E0 C0 0E */	rlwimi r0, r7, 24, 0, 7
.L_814EE6D8:
/* 814EE6D8 | 80 E3 06 74 */	lwz r7, 0x674(r3)
/* 814EE6DC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814EE6E0 | 7C A8 3A 14 */	add r5, r8, r7
/* 814EE6E4 | 38 C5 00 04 */	addi r6, r5, 0x4
/* 814EE6E8 | 7C 07 30 40 */	cmplw r7, r6
/* 814EE6EC | 4D 81 00 20 */	bgtlr
/* 814EE6F0 | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EE6F4 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EE6F8 | 7C 06 00 40 */	cmplw r6, r0
/* 814EE6FC | 4D 81 00 20 */	bgtlr
/* 814EE700 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EE704 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE708 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 814EE70C | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 814EE710 | 88 86 00 02 */	lbz r4, 0x2(r6)
/* 814EE714 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EE718 | 50 85 82 1E */	rlwimi r5, r4, 16, 8, 15
/* 814EE71C | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 814EE720 | 40 82 00 0C */	bne .L_814EE72C
/* 814EE724 | 7C A0 2B 78 */	mr r0, r5
/* 814EE728 | 48 00 00 14 */	b .L_814EE73C
.L_814EE72C:
/* 814EE72C | 54 A0 C4 2E */	rlwinm r0, r5, 24, 16, 23
/* 814EE730 | 50 A0 46 3E */	rlwimi r0, r5, 8, 24, 31
/* 814EE734 | 50 A0 42 1E */	rlwimi r0, r5, 8, 8, 15
/* 814EE738 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
.L_814EE73C:
/* 814EE73C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814EE740 | 4E 80 00 20 */	blr
.L_814EE744:
/* 814EE744 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EE748 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE74C | 88 E5 00 08 */	lbz r7, 0x8(r5)
/* 814EE750 | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EE754 | 88 C5 00 0A */	lbz r6, 0xa(r5)
/* 814EE758 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EE75C | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814EE760 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EE764 | 40 82 00 0C */	bne .L_814EE770
/* 814EE768 | 7C E8 3B 78 */	mr r8, r7
/* 814EE76C | 48 00 00 14 */	b .L_814EE780
.L_814EE770:
/* 814EE770 | 54 E8 C4 2E */	rlwinm r8, r7, 24, 16, 23
/* 814EE774 | 50 E8 46 3E */	rlwimi r8, r7, 8, 24, 31
/* 814EE778 | 50 E8 42 1E */	rlwimi r8, r7, 8, 8, 15
/* 814EE77C | 50 E8 C0 0E */	rlwimi r8, r7, 24, 0, 7
.L_814EE780:
/* 814EE780 | 80 03 06 74 */	lwz r0, 0x674(r3)
/* 814EE784 | 7C C0 42 14 */	add r6, r0, r8
/* 814EE788 | 7C 00 30 40 */	cmplw r0, r6
/* 814EE78C | 4D 81 00 20 */	bgtlr
/* 814EE790 | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EE794 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EE798 | 7C 06 00 40 */	cmplw r6, r0
/* 814EE79C | 4D 81 00 20 */	bgtlr
/* 814EE7A0 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EE7A4 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE7A8 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 814EE7AC | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EE7B0 | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 814EE7B4 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EE7B8 | 50 A7 82 1E */	rlwimi r7, r5, 16, 8, 15
/* 814EE7BC | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EE7C0 | 40 82 00 0C */	bne .L_814EE7CC
/* 814EE7C4 | 7C E0 3B 78 */	mr r0, r7
/* 814EE7C8 | 48 00 00 14 */	b .L_814EE7DC
.L_814EE7CC:
/* 814EE7CC | 54 E0 C4 2E */	rlwinm r0, r7, 24, 16, 23
/* 814EE7D0 | 50 E0 46 3E */	rlwimi r0, r7, 8, 24, 31
/* 814EE7D4 | 50 E0 42 1E */	rlwimi r0, r7, 8, 8, 15
/* 814EE7D8 | 50 E0 C0 0E */	rlwimi r0, r7, 24, 0, 7
.L_814EE7DC:
/* 814EE7DC | 80 E3 06 74 */	lwz r7, 0x674(r3)
/* 814EE7E0 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814EE7E4 | 7C A8 3A 14 */	add r5, r8, r7
/* 814EE7E8 | 38 C5 00 04 */	addi r6, r5, 0x4
/* 814EE7EC | 7C 07 30 40 */	cmplw r7, r6
/* 814EE7F0 | 4D 81 00 20 */	bgtlr
/* 814EE7F4 | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EE7F8 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EE7FC | 7C 06 00 40 */	cmplw r6, r0
/* 814EE800 | 4D 81 00 20 */	bgtlr
/* 814EE804 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EE808 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE80C | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 814EE810 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 814EE814 | 88 86 00 02 */	lbz r4, 0x2(r6)
/* 814EE818 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EE81C | 50 85 82 1E */	rlwimi r5, r4, 16, 8, 15
/* 814EE820 | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 814EE824 | 40 82 00 0C */	bne .L_814EE830
/* 814EE828 | 7C A0 2B 78 */	mr r0, r5
/* 814EE82C | 48 00 00 14 */	b .L_814EE840
.L_814EE830:
/* 814EE830 | 54 A0 C4 2E */	rlwinm r0, r5, 24, 16, 23
/* 814EE834 | 50 A0 46 3E */	rlwimi r0, r5, 8, 24, 31
/* 814EE838 | 50 A0 42 1E */	rlwimi r0, r5, 8, 8, 15
/* 814EE83C | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
.L_814EE840:
/* 814EE840 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814EE844 | 4E 80 00 20 */	blr
.L_814EE848:
/* 814EE848 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EE84C | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE850 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EE854 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EE858 | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EE85C | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EE860 | 40 82 00 08 */	bne .L_814EE868
/* 814EE864 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EE868:
/* 814EE868 | B0 03 00 20 */	sth r0, 0x20(r3)
/* 814EE86C | 4E 80 00 20 */	blr
.L_814EE870:
/* 814EE870 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EE874 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE878 | 88 E5 00 08 */	lbz r7, 0x8(r5)
/* 814EE87C | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EE880 | 88 C5 00 0A */	lbz r6, 0xa(r5)
/* 814EE884 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EE888 | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814EE88C | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EE890 | 40 82 00 0C */	bne .L_814EE89C
/* 814EE894 | 7C E9 3B 78 */	mr r9, r7
/* 814EE898 | 48 00 00 14 */	b .L_814EE8AC
.L_814EE89C:
/* 814EE89C | 54 E9 C4 2E */	rlwinm r9, r7, 24, 16, 23
/* 814EE8A0 | 50 E9 46 3E */	rlwimi r9, r7, 8, 24, 31
/* 814EE8A4 | 50 E9 42 1E */	rlwimi r9, r7, 8, 8, 15
/* 814EE8A8 | 50 E9 C0 0E */	rlwimi r9, r7, 24, 0, 7
.L_814EE8AC:
/* 814EE8AC | 7C 67 1B 78 */	mr r7, r3
/* 814EE8B0 | 39 40 00 00 */	li r10, 0x0
/* 814EE8B4 | 38 00 00 80 */	li r0, 0x80
.L_814EE8B8:
/* 814EE8B8 | 7C E8 3B 78 */	mr r8, r7
/* 814EE8BC | 39 60 00 00 */	li r11, 0x0
/* 814EE8C0 | 7C 09 03 A6 */	mtctr r0
.L_814EE8C4:
/* 814EE8C4 | 80 A3 06 74 */	lwz r5, 0x674(r3)
/* 814EE8C8 | 7C C5 4A 14 */	add r6, r5, r9
/* 814EE8CC | 7C 05 30 40 */	cmplw r5, r6
/* 814EE8D0 | 41 81 00 90 */	bgt .L_814EE960
/* 814EE8D4 | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EE8D8 | 38 A5 FF FE */	subi r5, r5, 0x2
/* 814EE8DC | 7C 06 28 40 */	cmplw r6, r5
/* 814EE8E0 | 41 81 00 80 */	bgt .L_814EE960
/* 814EE8E4 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 814EE8E8 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE8EC | 88 C6 00 00 */	lbz r6, 0x0(r6)
/* 814EE8F0 | 50 A6 44 2E */	rlwimi r6, r5, 8, 16, 23
/* 814EE8F4 | 54 C5 44 2E */	clrlslwi r5, r6, 24, 8
/* 814EE8F8 | 50 C5 C6 3E */	rlwimi r5, r6, 24, 24, 31
/* 814EE8FC | 40 82 00 08 */	bne .L_814EE904
/* 814EE900 | 54 C5 04 3E */	clrlwi r5, r6, 16
.L_814EE904:
/* 814EE904 | B0 A8 00 22 */	sth r5, 0x22(r8)
/* 814EE908 | 39 29 00 02 */	addi r9, r9, 0x2
/* 814EE90C | 80 A3 06 74 */	lwz r5, 0x674(r3)
/* 814EE910 | 7C C5 4A 14 */	add r6, r5, r9
/* 814EE914 | 7C 05 30 40 */	cmplw r5, r6
/* 814EE918 | 41 81 00 48 */	bgt .L_814EE960
/* 814EE91C | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EE920 | 38 A5 FF FE */	subi r5, r5, 0x2
/* 814EE924 | 7C 06 28 40 */	cmplw r6, r5
/* 814EE928 | 41 81 00 38 */	bgt .L_814EE960
/* 814EE92C | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 814EE930 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE934 | 88 C6 00 00 */	lbz r6, 0x0(r6)
/* 814EE938 | 50 A6 44 2E */	rlwimi r6, r5, 8, 16, 23
/* 814EE93C | 54 C5 44 2E */	clrlslwi r5, r6, 24, 8
/* 814EE940 | 50 C5 C6 3E */	rlwimi r5, r6, 24, 24, 31
/* 814EE944 | 40 82 00 08 */	bne .L_814EE94C
/* 814EE948 | 54 C5 04 3E */	clrlwi r5, r6, 16
.L_814EE94C:
/* 814EE94C | B0 A8 00 24 */	sth r5, 0x24(r8)
/* 814EE950 | 39 29 00 02 */	addi r9, r9, 0x2
/* 814EE954 | 39 08 00 04 */	addi r8, r8, 0x4
/* 814EE958 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814EE95C | 42 00 FF 68 */	bdnz .L_814EE8C4
.L_814EE960:
/* 814EE960 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814EE964 | 38 E7 02 00 */	addi r7, r7, 0x200
/* 814EE968 | 28 0A 00 03 */	cmplwi r10, 0x3
/* 814EE96C | 41 80 FF 4C */	blt .L_814EE8B8
/* 814EE970 | 4E 80 00 20 */	blr
.L_814EE974:
/* 814EE974 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EE978 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EE97C | 88 C5 00 08 */	lbz r6, 0x8(r5)
/* 814EE980 | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EE984 | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 814EE988 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EE98C | 50 86 82 1E */	rlwimi r6, r4, 16, 8, 15
/* 814EE990 | 50 06 C0 0E */	rlwimi r6, r0, 24, 0, 7
/* 814EE994 | 40 82 00 0C */	bne .L_814EE9A0
/* 814EE998 | 7C C0 33 78 */	mr r0, r6
/* 814EE99C | 48 00 00 14 */	b .L_814EE9B0
.L_814EE9A0:
/* 814EE9A0 | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814EE9A4 | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814EE9A8 | 50 C0 42 1E */	rlwimi r0, r6, 8, 8, 15
/* 814EE9AC | 50 C0 C0 0E */	rlwimi r0, r6, 24, 0, 7
.L_814EE9B0:
/* 814EE9B0 | 80 83 06 74 */	lwz r4, 0x674(r3)
/* 814EE9B4 | 7C A4 02 14 */	add r5, r4, r0
/* 814EE9B8 | 7C 04 28 40 */	cmplw r4, r5
/* 814EE9BC | 4D 81 00 20 */	bgtlr
/* 814EE9C0 | 80 83 06 78 */	lwz r4, 0x678(r3)
/* 814EE9C4 | 38 04 FF EC */	subi r0, r4, 0x14
/* 814EE9C8 | 7C 05 00 40 */	cmplw r5, r0
/* 814EE9CC | 4D 81 00 20 */	bgtlr
/* 814EE9D0 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814EE9D4 | 98 03 06 22 */	stb r0, 0x622(r3)
/* 814EE9D8 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814EE9DC | 98 03 06 23 */	stb r0, 0x623(r3)
/* 814EE9E0 | 88 05 00 02 */	lbz r0, 0x2(r5)
/* 814EE9E4 | 98 03 06 24 */	stb r0, 0x624(r3)
/* 814EE9E8 | 88 05 00 03 */	lbz r0, 0x3(r5)
/* 814EE9EC | 98 03 06 25 */	stb r0, 0x625(r3)
/* 814EE9F0 | 88 05 00 04 */	lbz r0, 0x4(r5)
/* 814EE9F4 | 98 03 06 26 */	stb r0, 0x626(r3)
/* 814EE9F8 | 88 05 00 05 */	lbz r0, 0x5(r5)
/* 814EE9FC | 98 03 06 27 */	stb r0, 0x627(r3)
/* 814EEA00 | 88 05 00 06 */	lbz r0, 0x6(r5)
/* 814EEA04 | 98 03 06 28 */	stb r0, 0x628(r3)
/* 814EEA08 | 88 05 00 07 */	lbz r0, 0x7(r5)
/* 814EEA0C | 98 03 06 29 */	stb r0, 0x629(r3)
/* 814EEA10 | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 814EEA14 | 98 03 06 2A */	stb r0, 0x62a(r3)
/* 814EEA18 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEA1C | 98 03 06 2B */	stb r0, 0x62b(r3)
/* 814EEA20 | 88 05 00 0A */	lbz r0, 0xa(r5)
/* 814EEA24 | 98 03 06 2C */	stb r0, 0x62c(r3)
/* 814EEA28 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEA2C | 98 03 06 2D */	stb r0, 0x62d(r3)
/* 814EEA30 | 88 05 00 0C */	lbz r0, 0xc(r5)
/* 814EEA34 | 98 03 06 2E */	stb r0, 0x62e(r3)
/* 814EEA38 | 88 05 00 0D */	lbz r0, 0xd(r5)
/* 814EEA3C | 98 03 06 2F */	stb r0, 0x62f(r3)
/* 814EEA40 | 88 05 00 0E */	lbz r0, 0xe(r5)
/* 814EEA44 | 98 03 06 30 */	stb r0, 0x630(r3)
/* 814EEA48 | 88 05 00 0F */	lbz r0, 0xf(r5)
/* 814EEA4C | 98 03 06 31 */	stb r0, 0x631(r3)
/* 814EEA50 | 88 05 00 10 */	lbz r0, 0x10(r5)
/* 814EEA54 | 98 03 06 32 */	stb r0, 0x632(r3)
/* 814EEA58 | 88 05 00 11 */	lbz r0, 0x11(r5)
/* 814EEA5C | 98 03 06 33 */	stb r0, 0x633(r3)
/* 814EEA60 | 88 05 00 12 */	lbz r0, 0x12(r5)
/* 814EEA64 | 98 03 06 34 */	stb r0, 0x634(r3)
/* 814EEA68 | 88 05 00 13 */	lbz r0, 0x13(r5)
/* 814EEA6C | 98 03 06 35 */	stb r0, 0x635(r3)
/* 814EEA70 | 4E 80 00 20 */	blr
.L_814EEA74:
/* 814EEA74 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEA78 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEA7C | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EEA80 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EEA84 | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EEA88 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EEA8C | 40 82 00 08 */	bne .L_814EEA94
/* 814EEA90 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EEA94:
/* 814EEA94 | B0 03 06 36 */	sth r0, 0x636(r3)
/* 814EEA98 | 4E 80 00 20 */	blr
.L_814EEA9C:
/* 814EEA9C | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEAA0 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEAA4 | 88 C5 00 08 */	lbz r6, 0x8(r5)
/* 814EEAA8 | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EEAAC | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 814EEAB0 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEAB4 | 50 86 82 1E */	rlwimi r6, r4, 16, 8, 15
/* 814EEAB8 | 50 06 C0 0E */	rlwimi r6, r0, 24, 0, 7
/* 814EEABC | 40 82 00 0C */	bne .L_814EEAC8
/* 814EEAC0 | 7C C0 33 78 */	mr r0, r6
/* 814EEAC4 | 48 00 00 14 */	b .L_814EEAD8
.L_814EEAC8:
/* 814EEAC8 | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814EEACC | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814EEAD0 | 50 C0 42 1E */	rlwimi r0, r6, 8, 8, 15
/* 814EEAD4 | 50 C0 C0 0E */	rlwimi r0, r6, 24, 0, 7
.L_814EEAD8:
/* 814EEAD8 | 90 03 06 38 */	stw r0, 0x638(r3)
/* 814EEADC | 4E 80 00 20 */	blr
.L_814EEAE0:
/* 814EEAE0 | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 814EEAE4 | 98 03 06 3C */	stb r0, 0x63c(r3)
/* 814EEAE8 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEAEC | 98 03 06 3D */	stb r0, 0x63d(r3)
/* 814EEAF0 | 88 05 00 0A */	lbz r0, 0xa(r5)
/* 814EEAF4 | 98 03 06 3E */	stb r0, 0x63e(r3)
/* 814EEAF8 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEAFC | 98 03 06 3F */	stb r0, 0x63f(r3)
/* 814EEB00 | 4E 80 00 20 */	blr
.L_814EEB04:
/* 814EEB04 | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 814EEB08 | 98 03 06 40 */	stb r0, 0x640(r3)
/* 814EEB0C | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEB10 | 98 03 06 41 */	stb r0, 0x641(r3)
/* 814EEB14 | 88 05 00 0A */	lbz r0, 0xa(r5)
/* 814EEB18 | 98 03 06 42 */	stb r0, 0x642(r3)
/* 814EEB1C | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEB20 | 98 03 06 43 */	stb r0, 0x643(r3)
/* 814EEB24 | 4E 80 00 20 */	blr
.L_814EEB28:
/* 814EEB28 | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 814EEB2C | 98 03 06 44 */	stb r0, 0x644(r3)
/* 814EEB30 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEB34 | 98 03 06 45 */	stb r0, 0x645(r3)
/* 814EEB38 | 88 05 00 0A */	lbz r0, 0xa(r5)
/* 814EEB3C | 98 03 06 46 */	stb r0, 0x646(r3)
/* 814EEB40 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEB44 | 98 03 06 47 */	stb r0, 0x647(r3)
/* 814EEB48 | 4E 80 00 20 */	blr
.L_814EEB4C:
/* 814EEB4C | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEB50 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEB54 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EEB58 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EEB5C | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EEB60 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EEB64 | 40 82 00 08 */	bne .L_814EEB6C
/* 814EEB68 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EEB6C:
/* 814EEB6C | B0 03 06 48 */	sth r0, 0x648(r3)
/* 814EEB70 | 4E 80 00 20 */	blr
.L_814EEB74:
/* 814EEB74 | 28 08 00 03 */	cmplwi r8, 0x3
/* 814EEB78 | 40 82 00 30 */	bne .L_814EEBA8
/* 814EEB7C | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEB80 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEB84 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EEB88 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EEB8C | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EEB90 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EEB94 | 40 82 00 08 */	bne .L_814EEB9C
/* 814EEB98 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EEB9C:
/* 814EEB9C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814EEBA0 | 90 03 06 4C */	stw r0, 0x64c(r3)
/* 814EEBA4 | 4E 80 00 20 */	blr
.L_814EEBA8:
/* 814EEBA8 | 28 08 00 04 */	cmplwi r8, 0x4
/* 814EEBAC | 4C 82 00 20 */	bnelr
/* 814EEBB0 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEBB4 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEBB8 | 88 C5 00 08 */	lbz r6, 0x8(r5)
/* 814EEBBC | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EEBC0 | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 814EEBC4 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEBC8 | 50 86 82 1E */	rlwimi r6, r4, 16, 8, 15
/* 814EEBCC | 50 06 C0 0E */	rlwimi r6, r0, 24, 0, 7
/* 814EEBD0 | 40 82 00 0C */	bne .L_814EEBDC
/* 814EEBD4 | 7C C0 33 78 */	mr r0, r6
/* 814EEBD8 | 48 00 00 14 */	b .L_814EEBEC
.L_814EEBDC:
/* 814EEBDC | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814EEBE0 | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814EEBE4 | 50 C0 42 1E */	rlwimi r0, r6, 8, 8, 15
/* 814EEBE8 | 50 C0 C0 0E */	rlwimi r0, r6, 24, 0, 7
.L_814EEBEC:
/* 814EEBEC | 90 03 06 4C */	stw r0, 0x64c(r3)
/* 814EEBF0 | 4E 80 00 20 */	blr
.L_814EEBF4:
/* 814EEBF4 | 28 08 00 03 */	cmplwi r8, 0x3
/* 814EEBF8 | 40 82 00 30 */	bne .L_814EEC28
/* 814EEBFC | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEC00 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEC04 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EEC08 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EEC0C | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EEC10 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EEC14 | 40 82 00 08 */	bne .L_814EEC1C
/* 814EEC18 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EEC1C:
/* 814EEC1C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814EEC20 | 90 03 06 50 */	stw r0, 0x650(r3)
/* 814EEC24 | 4E 80 00 20 */	blr
.L_814EEC28:
/* 814EEC28 | 28 08 00 04 */	cmplwi r8, 0x4
/* 814EEC2C | 4C 82 00 20 */	bnelr
/* 814EEC30 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEC34 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEC38 | 88 C5 00 08 */	lbz r6, 0x8(r5)
/* 814EEC3C | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EEC40 | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 814EEC44 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEC48 | 50 86 82 1E */	rlwimi r6, r4, 16, 8, 15
/* 814EEC4C | 50 06 C0 0E */	rlwimi r6, r0, 24, 0, 7
/* 814EEC50 | 40 82 00 0C */	bne .L_814EEC5C
/* 814EEC54 | 7C C0 33 78 */	mr r0, r6
/* 814EEC58 | 48 00 00 14 */	b .L_814EEC6C
.L_814EEC5C:
/* 814EEC5C | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814EEC60 | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814EEC64 | 50 C0 42 1E */	rlwimi r0, r6, 8, 8, 15
/* 814EEC68 | 50 C0 C0 0E */	rlwimi r0, r6, 24, 0, 7
.L_814EEC6C:
/* 814EEC6C | 90 03 06 50 */	stw r0, 0x650(r3)
/* 814EEC70 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EE4F0

# .text:0x482C | 0x814EEC74 | size: 0x3C8
.fn TMCJPEG_814EEC74, local
/* 814EEC74 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814EEC78 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEC7C | 88 C5 00 00 */	lbz r6, 0x0(r5)
/* 814EEC80 | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EEC84 | 54 C0 44 2E */	clrlslwi r0, r6, 24, 8
/* 814EEC88 | 50 C0 C6 3E */	rlwimi r0, r6, 24, 24, 31
/* 814EEC8C | 40 82 00 08 */	bne .L_814EEC94
/* 814EEC90 | 54 C0 04 3E */	clrlwi r0, r6, 16
.L_814EEC94:
/* 814EEC94 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 814EEC98 | 2C 07 01 32 */	cmpwi r7, 0x132
/* 814EEC9C | 4D 82 00 20 */	beqlr
/* 814EECA0 | 40 80 00 54 */	bge .L_814EECF4
/* 814EECA4 | 2C 07 01 1A */	cmpwi r7, 0x11a
/* 814EECA8 | 41 82 00 B4 */	beq .L_814EED5C
/* 814EECAC | 40 80 00 24 */	bge .L_814EECD0
/* 814EECB0 | 2C 07 01 11 */	cmpwi r7, 0x111
/* 814EECB4 | 4D 82 00 20 */	beqlr
/* 814EECB8 | 4C 80 00 20 */	bgelr
/* 814EECBC | 2C 07 01 03 */	cmpwi r7, 0x103
/* 814EECC0 | 41 82 02 CC */	beq .L_814EEF8C
/* 814EECC4 | 4D 80 00 20 */	bltlr
/* 814EECC8 | 4E 80 00 20 */	blr
/* 814EECCC | 4E 80 00 20 */	blr
.L_814EECD0:
/* 814EECD0 | 2C 07 01 28 */	cmpwi r7, 0x128
/* 814EECD4 | 41 82 02 90 */	beq .L_814EEF64
/* 814EECD8 | 40 80 00 10 */	bge .L_814EECE8
/* 814EECDC | 2C 07 01 1C */	cmpwi r7, 0x11c
/* 814EECE0 | 4C 80 00 20 */	bgelr
/* 814EECE4 | 48 00 01 7C */	b .L_814EEE60
.L_814EECE8:
/* 814EECE8 | 2C 07 01 2D */	cmpwi r7, 0x12d
/* 814EECEC | 4D 82 00 20 */	beqlr
/* 814EECF0 | 4E 80 00 20 */	blr
.L_814EECF4:
/* 814EECF4 | 3C C0 00 01 */	lis r6, 0x1
/* 814EECF8 | 38 06 87 69 */	subi r0, r6, 0x7897
/* 814EECFC | 7C 07 00 00 */	cmpw r7, r0
/* 814EED00 | 4D 82 00 20 */	beqlr
/* 814EED04 | 40 80 00 28 */	bge .L_814EED2C
/* 814EED08 | 2C 07 02 02 */	cmpwi r7, 0x202
/* 814EED0C | 41 82 02 EC */	beq .L_814EEFF8
/* 814EED10 | 40 80 00 10 */	bge .L_814EED20
/* 814EED14 | 2C 07 02 01 */	cmpwi r7, 0x201
/* 814EED18 | 40 80 02 9C */	bge .L_814EEFB4
/* 814EED1C | 4E 80 00 20 */	blr
.L_814EED20:
/* 814EED20 | 2C 07 02 13 */	cmpwi r7, 0x213
/* 814EED24 | 4D 82 00 20 */	beqlr
/* 814EED28 | 4E 80 00 20 */	blr
.L_814EED2C:
/* 814EED2C | 38 06 91 01 */	subi r0, r6, 0x6eff
/* 814EED30 | 7C 07 00 00 */	cmpw r7, r0
/* 814EED34 | 4D 82 00 20 */	beqlr
/* 814EED38 | 40 80 00 14 */	bge .L_814EED4C
/* 814EED3C | 38 06 90 00 */	subi r0, r6, 0x7000
/* 814EED40 | 7C 07 00 00 */	cmpw r7, r0
/* 814EED44 | 4D 82 00 20 */	beqlr
/* 814EED48 | 4E 80 00 20 */	blr
.L_814EED4C:
/* 814EED4C | 38 06 A0 04 */	subi r0, r6, 0x5ffc
/* 814EED50 | 7C 07 00 00 */	cmpw r7, r0
/* 814EED54 | 4C 80 00 20 */	bgelr
/* 814EED58 | 4E 80 00 20 */	blr
.L_814EED5C:
/* 814EED5C | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EED60 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EED64 | 88 E5 00 08 */	lbz r7, 0x8(r5)
/* 814EED68 | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EED6C | 88 C5 00 0A */	lbz r6, 0xa(r5)
/* 814EED70 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EED74 | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814EED78 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EED7C | 40 82 00 0C */	bne .L_814EED88
/* 814EED80 | 7C E8 3B 78 */	mr r8, r7
/* 814EED84 | 48 00 00 14 */	b .L_814EED98
.L_814EED88:
/* 814EED88 | 54 E8 C4 2E */	rlwinm r8, r7, 24, 16, 23
/* 814EED8C | 50 E8 46 3E */	rlwimi r8, r7, 8, 24, 31
/* 814EED90 | 50 E8 42 1E */	rlwimi r8, r7, 8, 8, 15
/* 814EED94 | 50 E8 C0 0E */	rlwimi r8, r7, 24, 0, 7
.L_814EED98:
/* 814EED98 | 80 03 06 74 */	lwz r0, 0x674(r3)
/* 814EED9C | 7C C0 42 14 */	add r6, r0, r8
/* 814EEDA0 | 7C 00 30 40 */	cmplw r0, r6
/* 814EEDA4 | 4D 81 00 20 */	bgtlr
/* 814EEDA8 | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EEDAC | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EEDB0 | 7C 06 00 40 */	cmplw r6, r0
/* 814EEDB4 | 4D 81 00 20 */	bgtlr
/* 814EEDB8 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EEDBC | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEDC0 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 814EEDC4 | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EEDC8 | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 814EEDCC | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EEDD0 | 50 A7 82 1E */	rlwimi r7, r5, 16, 8, 15
/* 814EEDD4 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EEDD8 | 40 82 00 0C */	bne .L_814EEDE4
/* 814EEDDC | 7C E0 3B 78 */	mr r0, r7
/* 814EEDE0 | 48 00 00 14 */	b .L_814EEDF4
.L_814EEDE4:
/* 814EEDE4 | 54 E0 C4 2E */	rlwinm r0, r7, 24, 16, 23
/* 814EEDE8 | 50 E0 46 3E */	rlwimi r0, r7, 8, 24, 31
/* 814EEDEC | 50 E0 42 1E */	rlwimi r0, r7, 8, 8, 15
/* 814EEDF0 | 50 E0 C0 0E */	rlwimi r0, r7, 24, 0, 7
.L_814EEDF4:
/* 814EEDF4 | 80 E3 06 74 */	lwz r7, 0x674(r3)
/* 814EEDF8 | 90 03 06 58 */	stw r0, 0x658(r3)
/* 814EEDFC | 7C A8 3A 14 */	add r5, r8, r7
/* 814EEE00 | 38 C5 00 04 */	addi r6, r5, 0x4
/* 814EEE04 | 7C 07 30 40 */	cmplw r7, r6
/* 814EEE08 | 4D 81 00 20 */	bgtlr
/* 814EEE0C | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EEE10 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EEE14 | 7C 06 00 40 */	cmplw r6, r0
/* 814EEE18 | 4D 81 00 20 */	bgtlr
/* 814EEE1C | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EEE20 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEE24 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 814EEE28 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 814EEE2C | 88 86 00 02 */	lbz r4, 0x2(r6)
/* 814EEE30 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EEE34 | 50 85 82 1E */	rlwimi r5, r4, 16, 8, 15
/* 814EEE38 | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 814EEE3C | 40 82 00 0C */	bne .L_814EEE48
/* 814EEE40 | 7C A0 2B 78 */	mr r0, r5
/* 814EEE44 | 48 00 00 14 */	b .L_814EEE58
.L_814EEE48:
/* 814EEE48 | 54 A0 C4 2E */	rlwinm r0, r5, 24, 16, 23
/* 814EEE4C | 50 A0 46 3E */	rlwimi r0, r5, 8, 24, 31
/* 814EEE50 | 50 A0 42 1E */	rlwimi r0, r5, 8, 8, 15
/* 814EEE54 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
.L_814EEE58:
/* 814EEE58 | 90 03 06 5C */	stw r0, 0x65c(r3)
/* 814EEE5C | 4E 80 00 20 */	blr
.L_814EEE60:
/* 814EEE60 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEE64 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEE68 | 88 E5 00 08 */	lbz r7, 0x8(r5)
/* 814EEE6C | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EEE70 | 88 C5 00 0A */	lbz r6, 0xa(r5)
/* 814EEE74 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEE78 | 50 C7 82 1E */	rlwimi r7, r6, 16, 8, 15
/* 814EEE7C | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EEE80 | 40 82 00 0C */	bne .L_814EEE8C
/* 814EEE84 | 7C E8 3B 78 */	mr r8, r7
/* 814EEE88 | 48 00 00 14 */	b .L_814EEE9C
.L_814EEE8C:
/* 814EEE8C | 54 E8 C4 2E */	rlwinm r8, r7, 24, 16, 23
/* 814EEE90 | 50 E8 46 3E */	rlwimi r8, r7, 8, 24, 31
/* 814EEE94 | 50 E8 42 1E */	rlwimi r8, r7, 8, 8, 15
/* 814EEE98 | 50 E8 C0 0E */	rlwimi r8, r7, 24, 0, 7
.L_814EEE9C:
/* 814EEE9C | 80 03 06 74 */	lwz r0, 0x674(r3)
/* 814EEEA0 | 7C C0 42 14 */	add r6, r0, r8
/* 814EEEA4 | 7C 00 30 40 */	cmplw r0, r6
/* 814EEEA8 | 4D 81 00 20 */	bgtlr
/* 814EEEAC | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EEEB0 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EEEB4 | 7C 06 00 40 */	cmplw r6, r0
/* 814EEEB8 | 4D 81 00 20 */	bgtlr
/* 814EEEBC | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EEEC0 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEEC4 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 814EEEC8 | 50 07 44 2E */	rlwimi r7, r0, 8, 16, 23
/* 814EEECC | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 814EEED0 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EEED4 | 50 A7 82 1E */	rlwimi r7, r5, 16, 8, 15
/* 814EEED8 | 50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 814EEEDC | 40 82 00 0C */	bne .L_814EEEE8
/* 814EEEE0 | 7C E0 3B 78 */	mr r0, r7
/* 814EEEE4 | 48 00 00 14 */	b .L_814EEEF8
.L_814EEEE8:
/* 814EEEE8 | 54 E0 C4 2E */	rlwinm r0, r7, 24, 16, 23
/* 814EEEEC | 50 E0 46 3E */	rlwimi r0, r7, 8, 24, 31
/* 814EEEF0 | 50 E0 42 1E */	rlwimi r0, r7, 8, 8, 15
/* 814EEEF4 | 50 E0 C0 0E */	rlwimi r0, r7, 24, 0, 7
.L_814EEEF8:
/* 814EEEF8 | 80 E3 06 74 */	lwz r7, 0x674(r3)
/* 814EEEFC | 90 03 06 60 */	stw r0, 0x660(r3)
/* 814EEF00 | 7C A8 3A 14 */	add r5, r8, r7
/* 814EEF04 | 38 C5 00 04 */	addi r6, r5, 0x4
/* 814EEF08 | 7C 07 30 40 */	cmplw r7, r6
/* 814EEF0C | 4D 81 00 20 */	bgtlr
/* 814EEF10 | 80 A3 06 78 */	lwz r5, 0x678(r3)
/* 814EEF14 | 38 05 FF FC */	subi r0, r5, 0x4
/* 814EEF18 | 7C 06 00 40 */	cmplw r6, r0
/* 814EEF1C | 4D 81 00 20 */	bgtlr
/* 814EEF20 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814EEF24 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEF28 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 814EEF2C | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 814EEF30 | 88 86 00 02 */	lbz r4, 0x2(r6)
/* 814EEF34 | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 814EEF38 | 50 85 82 1E */	rlwimi r5, r4, 16, 8, 15
/* 814EEF3C | 50 05 C0 0E */	rlwimi r5, r0, 24, 0, 7
/* 814EEF40 | 40 82 00 0C */	bne .L_814EEF4C
/* 814EEF44 | 7C A0 2B 78 */	mr r0, r5
/* 814EEF48 | 48 00 00 14 */	b .L_814EEF5C
.L_814EEF4C:
/* 814EEF4C | 54 A0 C4 2E */	rlwinm r0, r5, 24, 16, 23
/* 814EEF50 | 50 A0 46 3E */	rlwimi r0, r5, 8, 24, 31
/* 814EEF54 | 50 A0 42 1E */	rlwimi r0, r5, 8, 8, 15
/* 814EEF58 | 50 A0 C0 0E */	rlwimi r0, r5, 24, 0, 7
.L_814EEF5C:
/* 814EEF5C | 90 03 06 64 */	stw r0, 0x664(r3)
/* 814EEF60 | 4E 80 00 20 */	blr
.L_814EEF64:
/* 814EEF64 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEF68 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEF6C | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EEF70 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EEF74 | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EEF78 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EEF7C | 40 82 00 08 */	bne .L_814EEF84
/* 814EEF80 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EEF84:
/* 814EEF84 | B0 03 06 68 */	sth r0, 0x668(r3)
/* 814EEF88 | 4E 80 00 20 */	blr
.L_814EEF8C:
/* 814EEF8C | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEF90 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEF94 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 814EEF98 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814EEF9C | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814EEFA0 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814EEFA4 | 40 82 00 08 */	bne .L_814EEFAC
/* 814EEFA8 | 54 80 04 3E */	clrlwi r0, r4, 16
.L_814EEFAC:
/* 814EEFAC | B0 03 06 54 */	sth r0, 0x654(r3)
/* 814EEFB0 | 4E 80 00 20 */	blr
.L_814EEFB4:
/* 814EEFB4 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEFB8 | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EEFBC | 88 C5 00 08 */	lbz r6, 0x8(r5)
/* 814EEFC0 | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EEFC4 | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 814EEFC8 | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EEFCC | 50 86 82 1E */	rlwimi r6, r4, 16, 8, 15
/* 814EEFD0 | 50 06 C0 0E */	rlwimi r6, r0, 24, 0, 7
/* 814EEFD4 | 40 82 00 0C */	bne .L_814EEFE0
/* 814EEFD8 | 7C C0 33 78 */	mr r0, r6
/* 814EEFDC | 48 00 00 14 */	b .L_814EEFF0
.L_814EEFE0:
/* 814EEFE0 | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814EEFE4 | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814EEFE8 | 50 C0 42 1E */	rlwimi r0, r6, 8, 8, 15
/* 814EEFEC | 50 C0 C0 0E */	rlwimi r0, r6, 24, 0, 7
.L_814EEFF0:
/* 814EEFF0 | 90 03 06 6C */	stw r0, 0x66c(r3)
/* 814EEFF4 | 4E 80 00 20 */	blr
.L_814EEFF8:
/* 814EEFF8 | 88 05 00 09 */	lbz r0, 0x9(r5)
/* 814EEFFC | 28 04 49 49 */	cmplwi r4, 0x4949
/* 814EF000 | 88 C5 00 08 */	lbz r6, 0x8(r5)
/* 814EF004 | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 814EF008 | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 814EF00C | 88 05 00 0B */	lbz r0, 0xb(r5)
/* 814EF010 | 50 86 82 1E */	rlwimi r6, r4, 16, 8, 15
/* 814EF014 | 50 06 C0 0E */	rlwimi r6, r0, 24, 0, 7
/* 814EF018 | 40 82 00 0C */	bne .L_814EF024
/* 814EF01C | 7C C0 33 78 */	mr r0, r6
/* 814EF020 | 48 00 00 14 */	b .L_814EF034
.L_814EF024:
/* 814EF024 | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814EF028 | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814EF02C | 50 C0 42 1E */	rlwimi r0, r6, 8, 8, 15
/* 814EF030 | 50 C0 C0 0E */	rlwimi r0, r6, 24, 0, 7
.L_814EF034:
/* 814EF034 | 90 03 06 70 */	stw r0, 0x670(r3)
/* 814EF038 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EEC74

# .text:0x4BF4 | 0x814EF03C | size: 0xC8
.fn TMCJPEG_814EF03C, local
/* 814EF03C | 80 C4 06 B8 */	lwz r6, 0x6b8(r4)
/* 814EF040 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814EF044 | 40 82 00 0C */	bne .L_814EF050
/* 814EF048 | 38 60 FF 60 */	li r3, -0xa0
/* 814EF04C | 4E 80 00 20 */	blr
.L_814EF050:
/* 814EF050 | 80 E4 06 BC */	lwz r7, 0x6bc(r4)
/* 814EF054 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814EF058 | 40 82 00 0C */	bne .L_814EF064
/* 814EF05C | 38 60 FF 60 */	li r3, -0xa0
/* 814EF060 | 4E 80 00 20 */	blr
.L_814EF064:
/* 814EF064 | A0 04 06 A0 */	lhz r0, 0x6a0(r4)
/* 814EF068 | 28 00 00 06 */	cmplwi r0, 0x6
/* 814EF06C | 41 82 00 0C */	beq .L_814EF078
/* 814EF070 | 38 60 FF 60 */	li r3, -0xa0
/* 814EF074 | 4E 80 00 20 */	blr
.L_814EF078:
/* 814EF078 | 7C C7 32 14 */	add r6, r7, r6
/* 814EF07C | 81 03 00 10 */	lwz r8, 0x10(r3)
/* 814EF080 | 80 E4 06 C0 */	lwz r7, 0x6c0(r4)
/* 814EF084 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814EF088 | 7C E8 38 50 */	subf r7, r8, r7
/* 814EF08C | 7C C7 32 14 */	add r6, r7, r6
/* 814EF090 | 7C 06 00 40 */	cmplw r6, r0
/* 814EF094 | 40 81 00 0C */	ble .L_814EF0A0
/* 814EF098 | 38 60 FF 0F */	li r3, -0xf1
/* 814EF09C | 4E 80 00 20 */	blr
.L_814EF0A0:
/* 814EF0A0 | 7C 06 28 40 */	cmplw r6, r5
/* 814EF0A4 | 40 81 00 0C */	ble .L_814EF0B0
/* 814EF0A8 | 38 60 FF 0F */	li r3, -0xf1
/* 814EF0AC | 4E 80 00 20 */	blr
.L_814EF0B0:
/* 814EF0B0 | 38 00 00 01 */	li r0, 0x1
/* 814EF0B4 | 98 04 00 20 */	stb r0, 0x20(r4)
/* 814EF0B8 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 814EF0BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EF0C0 | 41 82 00 0C */	beq .L_814EF0CC
/* 814EF0C4 | 38 60 FF FF */	li r3, -0x1
/* 814EF0C8 | 4E 80 00 20 */	blr
.L_814EF0CC:
/* 814EF0CC | 38 00 00 00 */	li r0, 0x0
/* 814EF0D0 | 98 04 00 21 */	stb r0, 0x21(r4)
/* 814EF0D4 | 88 03 00 2C */	lbz r0, 0x2c(r3)
/* 814EF0D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF0DC | 41 82 00 1C */	beq .L_814EF0F8
/* 814EF0E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814EF0E4 | 41 82 00 14 */	beq .L_814EF0F8
/* 814EF0E8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814EF0EC | 41 82 00 0C */	beq .L_814EF0F8
/* 814EF0F0 | 38 60 FF FF */	li r3, -0x1
/* 814EF0F4 | 4E 80 00 20 */	blr
.L_814EF0F8:
/* 814EF0F8 | 98 04 06 D0 */	stb r0, 0x6d0(r4)
/* 814EF0FC | 38 60 00 00 */	li r3, 0x0
/* 814EF100 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EF03C

# .text:0x4CBC | 0x814EF104 | size: 0x29C
.fn TMCJPEGDEC_decode_iquant_rc, global
/* 814EF104 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814EF108 | 7C 08 02 A6 */	mflr r0
/* 814EF10C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814EF110 | BE A1 00 14 */	stmw r21, 0x14(r1)
/* 814EF114 | 7C 76 1B 78 */	mr r22, r3
/* 814EF118 | 7C 97 23 78 */	mr r23, r4
/* 814EF11C | 7C B9 2B 78 */	mr r25, r5
/* 814EF120 | 7C D8 33 78 */	mr r24, r6
/* 814EF124 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 814EF128 | 82 A6 04 98 */	lwz r21, 0x498(r6)
/* 814EF12C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814EF130 | 41 81 00 18 */	bgt .L_814EF148
/* 814EF134 | 7F 03 C3 78 */	mr r3, r24
/* 814EF138 | 4B FF BC D5 */	bl TMCJPEGDEC_load_buff
/* 814EF13C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF140 | 40 80 00 08 */	bge .L_814EF148
/* 814EF144 | 48 00 02 48 */	b .L_814EF38C
.L_814EF148:
/* 814EF148 | 80 98 00 04 */	lwz r4, 0x4(r24)
/* 814EF14C | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 814EF150 | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814EF154 | 7C 60 04 30 */	srw r0, r3, r0
/* 814EF158 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 814EF15C | 7C B5 02 2E */	lhzx r5, r21, r0
/* 814EF160 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EF164 | 41 82 00 18 */	beq .L_814EF17C
/* 814EF168 | 7C 75 02 14 */	add r3, r21, r0
/* 814EF16C | 7C 05 20 50 */	subf r0, r5, r4
/* 814EF170 | A2 A3 00 02 */	lhz r21, 0x2(r3)
/* 814EF174 | 90 18 00 04 */	stw r0, 0x4(r24)
/* 814EF178 | 48 00 00 24 */	b .L_814EF19C
.L_814EF17C:
/* 814EF17C | 80 78 04 9C */	lwz r3, 0x49c(r24)
/* 814EF180 | 7F 05 C3 78 */	mr r5, r24
/* 814EF184 | 80 98 04 A0 */	lwz r4, 0x4a0(r24)
/* 814EF188 | 48 00 02 19 */	bl TMCJPEG_814EF3A0
/* 814EF18C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF190 | 7C 75 1B 78 */	mr r21, r3
/* 814EF194 | 40 80 00 08 */	bge .L_814EF19C
/* 814EF198 | 48 00 01 F4 */	b .L_814EF38C
.L_814EF19C:
/* 814EF19C | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814EF1A0 | 41 82 00 64 */	beq .L_814EF204
/* 814EF1A4 | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 814EF1A8 | 7C 00 A8 00 */	cmpw r0, r21
/* 814EF1AC | 41 81 00 18 */	bgt .L_814EF1C4
/* 814EF1B0 | 7F 03 C3 78 */	mr r3, r24
/* 814EF1B4 | 4B FF BC 59 */	bl TMCJPEGDEC_load_buff
/* 814EF1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF1BC | 40 80 00 08 */	bge .L_814EF1C4
/* 814EF1C0 | 48 00 01 CC */	b .L_814EF38C
.L_814EF1C4:
/* 814EF1C4 | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 814EF1C8 | 38 80 00 01 */	li r4, 0x1
/* 814EF1CC | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 814EF1D0 | 7C 86 A8 30 */	slw r6, r4, r21
/* 814EF1D4 | 7C 95 00 50 */	subf r4, r21, r0
/* 814EF1D8 | 38 A6 FF FF */	subi r5, r6, 0x1
/* 814EF1DC | 54 C0 F8 7E */	srwi r0, r6, 1
/* 814EF1E0 | 7C 63 24 30 */	srw r3, r3, r4
/* 814EF1E4 | 90 98 00 04 */	stw r4, 0x4(r24)
/* 814EF1E8 | 7C A3 18 38 */	and r3, r5, r3
/* 814EF1EC | 7C 00 18 40 */	cmplw r0, r3
/* 814EF1F0 | 40 81 00 08 */	ble .L_814EF1F8
/* 814EF1F4 | 7C 65 18 50 */	subf r3, r5, r3
.L_814EF1F8:
/* 814EF1F8 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 814EF1FC | 7C 00 1A 14 */	add r0, r0, r3
/* 814EF200 | 90 19 00 00 */	stw r0, 0x0(r25)
.L_814EF204:
/* 814EF204 | 80 B9 00 00 */	lwz r5, 0x0(r25)
/* 814EF208 | 38 76 00 04 */	addi r3, r22, 0x4
/* 814EF20C | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814EF210 | 38 80 00 00 */	li r4, 0x0
/* 814EF214 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814EF218 | 90 16 00 00 */	stw r0, 0x0(r22)
/* 814EF21C | 83 D8 04 A8 */	lwz r30, 0x4a8(r24)
/* 814EF220 | 83 58 04 AC */	lwz r26, 0x4ac(r24)
/* 814EF224 | 83 38 04 B0 */	lwz r25, 0x4b0(r24)
/* 814EF228 | 83 78 18 34 */	lwz r27, 0x1834(r24)
/* 814EF22C | 80 B8 18 38 */	lwz r5, 0x1838(r24)
/* 814EF230 | 4B E4 11 05 */	bl memset
/* 814EF234 | 3E A0 81 62 */	lis r21, TMCJPEGDEC_Zigzag_data@ha
/* 814EF238 | 3B 80 00 01 */	li r28, 0x1
/* 814EF23C | 3A B5 E1 B0 */	addi r21, r21, TMCJPEGDEC_Zigzag_data@l
/* 814EF240 | 3B E0 00 01 */	li r31, 0x1
.L_814EF244:
/* 814EF244 | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 814EF248 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814EF24C | 41 81 00 18 */	bgt .L_814EF264
/* 814EF250 | 7F 03 C3 78 */	mr r3, r24
/* 814EF254 | 4B FF BB B9 */	bl TMCJPEGDEC_load_buff
/* 814EF258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF25C | 40 80 00 08 */	bge .L_814EF264
/* 814EF260 | 48 00 01 2C */	b .L_814EF38C
.L_814EF264:
/* 814EF264 | 80 98 00 04 */	lwz r4, 0x4(r24)
/* 814EF268 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 814EF26C | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814EF270 | 7C 60 04 30 */	srw r0, r3, r0
/* 814EF274 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 814EF278 | 7C 7E 02 14 */	add r3, r30, r0
/* 814EF27C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 814EF280 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF284 | 41 82 00 14 */	beq .L_814EF298
/* 814EF288 | A0 63 00 02 */	lhz r3, 0x2(r3)
/* 814EF28C | 7C 00 20 50 */	subf r0, r0, r4
/* 814EF290 | 90 18 00 04 */	stw r0, 0x4(r24)
/* 814EF294 | 48 00 00 20 */	b .L_814EF2B4
.L_814EF298:
/* 814EF298 | 7F 43 D3 78 */	mr r3, r26
/* 814EF29C | 7F 24 CB 78 */	mr r4, r25
/* 814EF2A0 | 7F 05 C3 78 */	mr r5, r24
/* 814EF2A4 | 48 00 00 FD */	bl TMCJPEG_814EF3A0
/* 814EF2A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF2AC | 40 80 00 08 */	bge .L_814EF2B4
/* 814EF2B0 | 48 00 00 DC */	b .L_814EF38C
.L_814EF2B4:
/* 814EF2B4 | 54 7D 07 3F */	clrlwi. r29, r3, 28
/* 814EF2B8 | 41 82 00 B4 */	beq .L_814EF36C
/* 814EF2BC | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 814EF2C0 | 7C 63 26 70 */	srawi r3, r3, 4
/* 814EF2C4 | 7F 9C 1A 14 */	add r28, r28, r3
/* 814EF2C8 | 7C 00 E8 00 */	cmpw r0, r29
/* 814EF2CC | 41 81 00 18 */	bgt .L_814EF2E4
/* 814EF2D0 | 7F 03 C3 78 */	mr r3, r24
/* 814EF2D4 | 4B FF BB 39 */	bl TMCJPEGDEC_load_buff
/* 814EF2D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF2DC | 40 80 00 08 */	bge .L_814EF2E4
/* 814EF2E0 | 48 00 00 AC */	b .L_814EF38C
.L_814EF2E4:
/* 814EF2E4 | 7C 1C D8 00 */	cmpw r28, r27
/* 814EF2E8 | 40 81 00 28 */	ble .L_814EF310
/* 814EF2EC | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 814EF2F0 | 2C 1C 00 40 */	cmpwi r28, 0x40
/* 814EF2F4 | 7C 1D 00 50 */	subf r0, r29, r0
/* 814EF2F8 | 90 18 00 04 */	stw r0, 0x4(r24)
/* 814EF2FC | 41 80 00 0C */	blt .L_814EF308
/* 814EF300 | 38 60 FF 9C */	li r3, -0x64
/* 814EF304 | 48 00 00 88 */	b .L_814EF38C
.L_814EF308:
/* 814EF308 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814EF30C | 48 00 00 74 */	b .L_814EF380
.L_814EF310:
/* 814EF310 | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 814EF314 | 7F E6 E8 30 */	slw r6, r31, r29
/* 814EF318 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 814EF31C | 38 A6 FF FF */	subi r5, r6, 0x1
/* 814EF320 | 7C 9D 00 50 */	subf r4, r29, r0
/* 814EF324 | 54 C0 F8 7E */	srwi r0, r6, 1
/* 814EF328 | 7C 63 24 30 */	srw r3, r3, r4
/* 814EF32C | 90 98 00 04 */	stw r4, 0x4(r24)
/* 814EF330 | 7C A4 18 38 */	and r4, r5, r3
/* 814EF334 | 7C 00 20 40 */	cmplw r0, r4
/* 814EF338 | 40 81 00 08 */	ble .L_814EF340
/* 814EF33C | 7C 85 20 50 */	subf r4, r5, r4
.L_814EF340:
/* 814EF340 | 2C 1C 00 40 */	cmpwi r28, 0x40
/* 814EF344 | 41 80 00 0C */	blt .L_814EF350
/* 814EF348 | 38 60 FF 9C */	li r3, -0x64
/* 814EF34C | 48 00 00 40 */	b .L_814EF38C
.L_814EF350:
/* 814EF350 | 7C 15 E0 AE */	lbzx r0, r21, r28
/* 814EF354 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814EF358 | 54 03 10 3A */	slwi r3, r0, 2
/* 814EF35C | 7C 17 18 2E */	lwzx r0, r23, r3
/* 814EF360 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814EF364 | 7C 16 19 2E */	stwx r0, r22, r3
/* 814EF368 | 48 00 00 18 */	b .L_814EF380
.L_814EF36C:
/* 814EF36C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF370 | 40 82 00 0C */	bne .L_814EF37C
/* 814EF374 | 38 60 00 00 */	li r3, 0x0
/* 814EF378 | 48 00 00 14 */	b .L_814EF38C
.L_814EF37C:
/* 814EF37C | 3B 9C 00 10 */	addi r28, r28, 0x10
.L_814EF380:
/* 814EF380 | 2C 1C 00 40 */	cmpwi r28, 0x40
/* 814EF384 | 41 80 FE C0 */	blt .L_814EF244
/* 814EF388 | 38 60 00 00 */	li r3, 0x0
.L_814EF38C:
/* 814EF38C | BA A1 00 14 */	lmw r21, 0x14(r1)
/* 814EF390 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814EF394 | 7C 08 03 A6 */	mtlr r0
/* 814EF398 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814EF39C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_decode_iquant_rc

# .text:0x4F58 | 0x814EF3A0 | size: 0xF0
.fn TMCJPEG_814EF3A0, local
/* 814EF3A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EF3A4 | 7C 08 02 A6 */	mflr r0
/* 814EF3A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EF3AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814EF3B0 | 7C BF 2B 78 */	mr r31, r5
/* 814EF3B4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814EF3B8 | 7C 9E 23 78 */	mr r30, r4
/* 814EF3BC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814EF3C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814EF3C4 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 814EF3C8 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 814EF3CC | 41 81 00 18 */	bgt .L_814EF3E4
/* 814EF3D0 | 7F E3 FB 78 */	mr r3, r31
/* 814EF3D4 | 4B FF BA 39 */	bl TMCJPEGDEC_load_buff
/* 814EF3D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF3DC | 40 80 00 08 */	bge .L_814EF3E4
/* 814EF3E0 | 48 00 00 94 */	b .L_814EF474
.L_814EF3E4:
/* 814EF3E4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814EF3E8 | 38 BD 00 24 */	addi r5, r29, 0x24
/* 814EF3EC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814EF3F0 | 38 E0 00 09 */	li r7, 0x9
/* 814EF3F4 | 38 63 FF F7 */	subi r3, r3, 0x9
/* 814EF3F8 | 7C 00 1C 30 */	srw r0, r0, r3
/* 814EF3FC | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814EF400 | 54 06 05 FE */	clrlwi r6, r0, 23
/* 814EF404 | 48 00 00 3C */	b .L_814EF440
.L_814EF408:
/* 814EF408 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814EF40C | 38 A5 00 04 */	addi r5, r5, 0x4
/* 814EF410 | 28 07 00 10 */	cmplwi r7, 0x10
/* 814EF414 | 40 81 00 0C */	ble .L_814EF420
/* 814EF418 | 38 60 FF 9C */	li r3, -0x64
/* 814EF41C | 48 00 00 58 */	b .L_814EF474
.L_814EF420:
/* 814EF420 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814EF424 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814EF428 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814EF42C | 38 63 FF FF */	subi r3, r3, 0x1
/* 814EF430 | 7C 00 1C 30 */	srw r0, r0, r3
/* 814EF434 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814EF438 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814EF43C | 7C C6 03 78 */	or r6, r6, r0
.L_814EF440:
/* 814EF440 | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 814EF444 | A0 65 00 02 */	lhz r3, 0x2(r5)
/* 814EF448 | B0 81 00 0C */	sth r4, 0xc(r1)
/* 814EF44C | B0 61 00 0E */	sth r3, 0xe(r1)
/* 814EF450 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814EF454 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814EF458 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814EF45C | 7C 06 00 40 */	cmplw r6, r0
/* 814EF460 | 41 81 FF A8 */	bgt .L_814EF408
/* 814EF464 | 7C 04 30 50 */	subf r0, r4, r6
/* 814EF468 | 7C 00 1A 14 */	add r0, r0, r3
/* 814EF46C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814EF470 | 7C 7E 00 AE */	lbzx r3, r30, r0
.L_814EF474:
/* 814EF474 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EF478 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814EF47C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EF480 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EF484 | 7C 08 03 A6 */	mtlr r0
/* 814EF488 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EF48C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EF3A0

# .text:0x5048 | 0x814EF490 | size: 0x220
.fn TMCJPEGDEC_IdctBlock4x4, global
/* 814EF490 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814EF494 | 38 00 00 02 */	li r0, 0x2
/* 814EF498 | 39 03 00 60 */	addi r8, r3, 0x60
/* 814EF49C | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 814EF4A0 | 39 21 00 68 */	addi r9, r1, 0x68
/* 814EF4A4 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 814EF4A8 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 814EF4AC | 93 81 01 10 */	stw r28, 0x110(r1)
/* 814EF4B0 | 7C 09 03 A6 */	mtctr r0
.L_814EF4B4:
/* 814EF4B4 | 81 68 00 04 */	lwz r11, 0x4(r8)
/* 814EF4B8 | 83 88 00 0C */	lwz r28, 0xc(r8)
/* 814EF4BC | 81 48 00 00 */	lwz r10, 0x0(r8)
/* 814EF4C0 | 7C FC 58 50 */	subf r7, r28, r11
/* 814EF4C4 | 7C 7C 5A 14 */	add r3, r28, r11
/* 814EF4C8 | 1C E7 00 B5 */	mulli r7, r7, 0xb5
/* 814EF4CC | 81 88 00 08 */	lwz r12, 0x8(r8)
/* 814EF4D0 | 81 68 FF E4 */	lwz r11, -0x1c(r8)
/* 814EF4D4 | 7F AA 62 14 */	add r29, r10, r12
/* 814EF4D8 | 83 88 FF EC */	lwz r28, -0x14(r8)
/* 814EF4DC | 7C FE 46 70 */	srawi r30, r7, 8
/* 814EF4E0 | 7F FE 1A 14 */	add r31, r30, r3
/* 814EF4E4 | 7D 8C 50 50 */	subf r12, r12, r10
/* 814EF4E8 | 7C 1D FA 14 */	add r0, r29, r31
/* 814EF4EC | 7C FC 58 50 */	subf r7, r28, r11
/* 814EF4F0 | 90 09 00 00 */	stw r0, 0x0(r9)
/* 814EF4F4 | 7C CC F2 14 */	add r6, r12, r30
/* 814EF4F8 | 1C E7 00 B5 */	mulli r7, r7, 0xb5
/* 814EF4FC | 7C 7E 60 50 */	subf r3, r30, r12
/* 814EF500 | 90 C9 00 04 */	stw r6, 0x4(r9)
/* 814EF504 | 7C 1F E8 50 */	subf r0, r31, r29
/* 814EF508 | 81 48 FF E0 */	lwz r10, -0x20(r8)
/* 814EF50C | 81 88 FF E8 */	lwz r12, -0x18(r8)
/* 814EF510 | 90 69 00 08 */	stw r3, 0x8(r9)
/* 814EF514 | 7C FE 46 70 */	srawi r30, r7, 8
/* 814EF518 | 7C 7C 5A 14 */	add r3, r28, r11
/* 814EF51C | 7F AA 62 14 */	add r29, r10, r12
/* 814EF520 | 7D 8C 50 50 */	subf r12, r12, r10
/* 814EF524 | 90 09 00 0C */	stw r0, 0xc(r9)
/* 814EF528 | 7F FE 1A 14 */	add r31, r30, r3
/* 814EF52C | 39 08 FF C0 */	subi r8, r8, 0x40
/* 814EF530 | 7C 1D FA 14 */	add r0, r29, r31
/* 814EF534 | 7C CC F2 14 */	add r6, r12, r30
/* 814EF538 | 90 09 FF E0 */	stw r0, -0x20(r9)
/* 814EF53C | 7C 7E 60 50 */	subf r3, r30, r12
/* 814EF540 | 7C 1F E8 50 */	subf r0, r31, r29
/* 814EF544 | 90 C9 FF E4 */	stw r6, -0x1c(r9)
/* 814EF548 | 90 69 FF E8 */	stw r3, -0x18(r9)
/* 814EF54C | 90 09 FF EC */	stw r0, -0x14(r9)
/* 814EF550 | 39 29 FF C0 */	subi r9, r9, 0x40
/* 814EF554 | 42 00 FF 60 */	bdnz .L_814EF4B4
/* 814EF558 | 54 A3 13 BA */	clrlslwi r3, r5, 16, 2
/* 814EF55C | 38 00 00 04 */	li r0, 0x4
/* 814EF560 | 7F E5 18 50 */	subf r31, r5, r3
/* 814EF564 | 39 61 00 14 */	addi r11, r1, 0x14
/* 814EF568 | 54 AC 0B FC */	clrlslwi r12, r5, 16, 1
/* 814EF56C | 38 60 00 03 */	li r3, 0x3
/* 814EF570 | 38 E0 00 FF */	li r7, 0xff
/* 814EF574 | 7C 09 03 A6 */	mtctr r0
.L_814EF578:
/* 814EF578 | 83 AB 00 20 */	lwz r29, 0x20(r11)
/* 814EF57C | 7C C4 1A 14 */	add r6, r4, r3
/* 814EF580 | 83 8B 00 60 */	lwz r28, 0x60(r11)
/* 814EF584 | 39 40 00 00 */	li r10, 0x0
/* 814EF588 | 81 2B 00 00 */	lwz r9, 0x0(r11)
/* 814EF58C | 7C 1C E8 50 */	subf r0, r28, r29
/* 814EF590 | 83 CB 00 40 */	lwz r30, 0x40(r11)
/* 814EF594 | 1D 00 00 B5 */	mulli r8, r0, 0xb5
/* 814EF598 | 3D 29 00 04 */	addis r9, r9, 0x4
/* 814EF59C | 7C 1C EA 14 */	add r0, r28, r29
/* 814EF5A0 | 7F A9 F2 14 */	add r29, r9, r30
/* 814EF5A4 | 7D 1C 46 70 */	srawi r28, r8, 8
/* 814EF5A8 | 7D 3E 48 50 */	subf r9, r30, r9
/* 814EF5AC | 7F DC 02 14 */	add r30, r28, r0
/* 814EF5B0 | 7C 1D F2 14 */	add r0, r29, r30
/* 814EF5B4 | 7C 08 5E 70 */	srawi r8, r0, 11
/* 814EF5B8 | 2C 08 01 00 */	cmpwi r8, 0x100
/* 814EF5BC | 40 80 00 10 */	bge .L_814EF5CC
/* 814EF5C0 | 2C 08 FF FF */	cmpwi r8, -0x1
/* 814EF5C4 | 40 81 00 08 */	ble .L_814EF5CC
/* 814EF5C8 | 39 40 00 01 */	li r10, 0x1
.L_814EF5CC:
/* 814EF5CC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814EF5D0 | 41 82 00 08 */	beq .L_814EF5D8
/* 814EF5D4 | 48 00 00 0C */	b .L_814EF5E0
.L_814EF5D8:
/* 814EF5D8 | 7D 00 FE 70 */	srawi r0, r8, 31
/* 814EF5DC | 7C E8 00 78 */	andc r8, r7, r0
.L_814EF5E0:
/* 814EF5E0 | 7C 09 E2 14 */	add r0, r9, r28
/* 814EF5E4 | 99 06 00 00 */	stb r8, 0x0(r6)
/* 814EF5E8 | 7C 08 5E 70 */	srawi r8, r0, 11
/* 814EF5EC | 2C 08 01 00 */	cmpwi r8, 0x100
/* 814EF5F0 | 38 00 00 00 */	li r0, 0x0
/* 814EF5F4 | 40 80 00 10 */	bge .L_814EF604
/* 814EF5F8 | 2C 08 FF FF */	cmpwi r8, -0x1
/* 814EF5FC | 40 81 00 08 */	ble .L_814EF604
/* 814EF600 | 38 00 00 01 */	li r0, 0x1
.L_814EF604:
/* 814EF604 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF608 | 41 82 00 08 */	beq .L_814EF610
/* 814EF60C | 48 00 00 0C */	b .L_814EF618
.L_814EF610:
/* 814EF610 | 7D 00 FE 70 */	srawi r0, r8, 31
/* 814EF614 | 7C E8 00 78 */	andc r8, r7, r0
.L_814EF618:
/* 814EF618 | 7C 1C 48 50 */	subf r0, r28, r9
/* 814EF61C | 7D 05 31 AE */	stbx r8, r5, r6
/* 814EF620 | 7C 08 5E 70 */	srawi r8, r0, 11
/* 814EF624 | 2C 08 01 00 */	cmpwi r8, 0x100
/* 814EF628 | 38 00 00 00 */	li r0, 0x0
/* 814EF62C | 40 80 00 10 */	bge .L_814EF63C
/* 814EF630 | 2C 08 FF FF */	cmpwi r8, -0x1
/* 814EF634 | 40 81 00 08 */	ble .L_814EF63C
/* 814EF638 | 38 00 00 01 */	li r0, 0x1
.L_814EF63C:
/* 814EF63C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF640 | 41 82 00 08 */	beq .L_814EF648
/* 814EF644 | 48 00 00 0C */	b .L_814EF650
.L_814EF648:
/* 814EF648 | 7D 00 FE 70 */	srawi r0, r8, 31
/* 814EF64C | 7C E8 00 78 */	andc r8, r7, r0
.L_814EF650:
/* 814EF650 | 7C 1E E8 50 */	subf r0, r30, r29
/* 814EF654 | 7D 0C 31 AE */	stbx r8, r12, r6
/* 814EF658 | 7C 08 5E 70 */	srawi r8, r0, 11
/* 814EF65C | 2C 08 01 00 */	cmpwi r8, 0x100
/* 814EF660 | 38 00 00 00 */	li r0, 0x0
/* 814EF664 | 40 80 00 10 */	bge .L_814EF674
/* 814EF668 | 2C 08 FF FF */	cmpwi r8, -0x1
/* 814EF66C | 40 81 00 08 */	ble .L_814EF674
/* 814EF670 | 38 00 00 01 */	li r0, 0x1
.L_814EF674:
/* 814EF674 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF678 | 41 82 00 08 */	beq .L_814EF680
/* 814EF67C | 48 00 00 0C */	b .L_814EF688
.L_814EF680:
/* 814EF680 | 7D 00 FE 70 */	srawi r0, r8, 31
/* 814EF684 | 7C E8 00 78 */	andc r8, r7, r0
.L_814EF688:
/* 814EF688 | 7D 1F 31 AE */	stbx r8, r31, r6
/* 814EF68C | 39 6B FF FC */	subi r11, r11, 0x4
/* 814EF690 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814EF694 | 42 00 FE E4 */	bdnz .L_814EF578
/* 814EF698 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 814EF69C | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 814EF6A0 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 814EF6A4 | 83 81 01 10 */	lwz r28, 0x110(r1)
/* 814EF6A8 | 38 21 01 20 */	addi r1, r1, 0x120
/* 814EF6AC | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock4x4

# .text:0x5268 | 0x814EF6B0 | size: 0x11C
.fn TMCJPEGDEC_IdctBlock2x2, global
/* 814EF6B0 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 814EF6B4 | 38 E0 00 00 */	li r7, 0x0
/* 814EF6B8 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814EF6BC | 3C 06 00 04 */	addis r0, r6, 0x4
/* 814EF6C0 | 80 C3 00 20 */	lwz r6, 0x20(r3)
/* 814EF6C4 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 814EF6C8 | 7D 20 42 14 */	add r9, r0, r8
/* 814EF6CC | 7D 08 00 50 */	subf r8, r8, r0
/* 814EF6D0 | 7D 46 1A 14 */	add r10, r6, r3
/* 814EF6D4 | 7C C3 30 50 */	subf r6, r3, r6
/* 814EF6D8 | 7C 09 52 14 */	add r0, r9, r10
/* 814EF6DC | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF6E0 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814EF6E4 | 40 80 00 10 */	bge .L_814EF6F4
/* 814EF6E8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814EF6EC | 40 81 00 08 */	ble .L_814EF6F4
/* 814EF6F0 | 38 E0 00 01 */	li r7, 0x1
.L_814EF6F4:
/* 814EF6F4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814EF6F8 | 41 82 00 08 */	beq .L_814EF700
/* 814EF6FC | 48 00 00 10 */	b .L_814EF70C
.L_814EF700:
/* 814EF700 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814EF704 | 38 00 00 FF */	li r0, 0xff
/* 814EF708 | 7C 03 18 78 */	andc r3, r0, r3
.L_814EF70C:
/* 814EF70C | 7C 0A 48 50 */	subf r0, r10, r9
/* 814EF710 | 98 64 00 00 */	stb r3, 0x0(r4)
/* 814EF714 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF718 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814EF71C | 38 00 00 00 */	li r0, 0x0
/* 814EF720 | 40 80 00 10 */	bge .L_814EF730
/* 814EF724 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814EF728 | 40 81 00 08 */	ble .L_814EF730
/* 814EF72C | 38 00 00 01 */	li r0, 0x1
.L_814EF730:
/* 814EF730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF734 | 41 82 00 08 */	beq .L_814EF73C
/* 814EF738 | 48 00 00 10 */	b .L_814EF748
.L_814EF73C:
/* 814EF73C | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814EF740 | 38 00 00 FF */	li r0, 0xff
/* 814EF744 | 7C 03 18 78 */	andc r3, r0, r3
.L_814EF748:
/* 814EF748 | 7C 08 32 14 */	add r0, r8, r6
/* 814EF74C | 7C 64 29 AE */	stbx r3, r4, r5
/* 814EF750 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF754 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814EF758 | 38 00 00 00 */	li r0, 0x0
/* 814EF75C | 40 80 00 10 */	bge .L_814EF76C
/* 814EF760 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814EF764 | 40 81 00 08 */	ble .L_814EF76C
/* 814EF768 | 38 00 00 01 */	li r0, 0x1
.L_814EF76C:
/* 814EF76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF770 | 41 82 00 08 */	beq .L_814EF778
/* 814EF774 | 48 00 00 10 */	b .L_814EF784
.L_814EF778:
/* 814EF778 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814EF77C | 38 00 00 FF */	li r0, 0xff
/* 814EF780 | 7C 03 18 78 */	andc r3, r0, r3
.L_814EF784:
/* 814EF784 | 7C 06 40 50 */	subf r0, r6, r8
/* 814EF788 | 98 64 00 01 */	stb r3, 0x1(r4)
/* 814EF78C | 7C 06 5E 70 */	srawi r6, r0, 11
/* 814EF790 | 2C 06 01 00 */	cmpwi r6, 0x100
/* 814EF794 | 38 00 00 00 */	li r0, 0x0
/* 814EF798 | 40 80 00 10 */	bge .L_814EF7A8
/* 814EF79C | 2C 06 FF FF */	cmpwi r6, -0x1
/* 814EF7A0 | 40 81 00 08 */	ble .L_814EF7A8
/* 814EF7A4 | 38 00 00 01 */	li r0, 0x1
.L_814EF7A8:
/* 814EF7A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF7AC | 41 82 00 08 */	beq .L_814EF7B4
/* 814EF7B0 | 48 00 00 10 */	b .L_814EF7C0
.L_814EF7B4:
/* 814EF7B4 | 7C C3 FE 70 */	srawi r3, r6, 31
/* 814EF7B8 | 38 00 00 FF */	li r0, 0xff
/* 814EF7BC | 7C 06 18 78 */	andc r6, r0, r3
.L_814EF7C0:
/* 814EF7C0 | 7C 64 2A 14 */	add r3, r4, r5
/* 814EF7C4 | 98 C3 00 01 */	stb r6, 0x1(r3)
/* 814EF7C8 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock2x2

# .text:0x5384 | 0x814EF7CC | size: 0x44
.fn TMCJPEGDEC_IdctBlock1x1, global
/* 814EF7CC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EF7D0 | 38 A0 00 00 */	li r5, 0x0
/* 814EF7D4 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF7D8 | 38 03 00 80 */	addi r0, r3, 0x80
/* 814EF7DC | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814EF7E0 | 40 80 00 10 */	bge .L_814EF7F0
/* 814EF7E4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814EF7E8 | 40 81 00 08 */	ble .L_814EF7F0
/* 814EF7EC | 38 A0 00 01 */	li r5, 0x1
.L_814EF7F0:
/* 814EF7F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EF7F4 | 41 82 00 08 */	beq .L_814EF7FC
/* 814EF7F8 | 48 00 00 10 */	b .L_814EF808
.L_814EF7FC:
/* 814EF7FC | 7C 03 FE 70 */	srawi r3, r0, 31
/* 814EF800 | 38 00 00 FF */	li r0, 0xff
/* 814EF804 | 7C 00 18 78 */	andc r0, r0, r3
.L_814EF808:
/* 814EF808 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814EF80C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock1x1

# .text:0x53C8 | 0x814EF810 | size: 0x224
.fn TMCJPEGDEC_IdctBlock4x4_Col, global
/* 814EF810 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814EF814 | 38 00 00 02 */	li r0, 0x2
/* 814EF818 | 38 E3 00 60 */	addi r7, r3, 0x60
/* 814EF81C | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 814EF820 | 39 01 00 68 */	addi r8, r1, 0x68
/* 814EF824 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 814EF828 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 814EF82C | 7C 09 03 A6 */	mtctr r0
.L_814EF830:
/* 814EF830 | 81 47 00 04 */	lwz r10, 0x4(r7)
/* 814EF834 | 81 87 00 0C */	lwz r12, 0xc(r7)
/* 814EF838 | 81 27 00 00 */	lwz r9, 0x0(r7)
/* 814EF83C | 7C CC 50 50 */	subf r6, r12, r10
/* 814EF840 | 7C 6C 52 14 */	add r3, r12, r10
/* 814EF844 | 1C C6 00 B5 */	mulli r6, r6, 0xb5
/* 814EF848 | 81 67 00 08 */	lwz r11, 0x8(r7)
/* 814EF84C | 81 47 FF E4 */	lwz r10, -0x1c(r7)
/* 814EF850 | 7F E9 5A 14 */	add r31, r9, r11
/* 814EF854 | 81 87 FF EC */	lwz r12, -0x14(r7)
/* 814EF858 | 7C DE 46 70 */	srawi r30, r6, 8
/* 814EF85C | 7F BE 1A 14 */	add r29, r30, r3
/* 814EF860 | 7D 6B 48 50 */	subf r11, r11, r9
/* 814EF864 | 7C 1F EA 14 */	add r0, r31, r29
/* 814EF868 | 7C CC 50 50 */	subf r6, r12, r10
/* 814EF86C | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814EF870 | 7C AB F2 14 */	add r5, r11, r30
/* 814EF874 | 1C C6 00 B5 */	mulli r6, r6, 0xb5
/* 814EF878 | 7C 7E 58 50 */	subf r3, r30, r11
/* 814EF87C | 90 A8 00 04 */	stw r5, 0x4(r8)
/* 814EF880 | 7C 1D F8 50 */	subf r0, r29, r31
/* 814EF884 | 81 27 FF E0 */	lwz r9, -0x20(r7)
/* 814EF888 | 81 67 FF E8 */	lwz r11, -0x18(r7)
/* 814EF88C | 90 68 00 08 */	stw r3, 0x8(r8)
/* 814EF890 | 7C DE 46 70 */	srawi r30, r6, 8
/* 814EF894 | 7C 6C 52 14 */	add r3, r12, r10
/* 814EF898 | 7F E9 5A 14 */	add r31, r9, r11
/* 814EF89C | 7D 6B 48 50 */	subf r11, r11, r9
/* 814EF8A0 | 90 08 00 0C */	stw r0, 0xc(r8)
/* 814EF8A4 | 7F BE 1A 14 */	add r29, r30, r3
/* 814EF8A8 | 38 E7 FF C0 */	subi r7, r7, 0x40
/* 814EF8AC | 7C 1F EA 14 */	add r0, r31, r29
/* 814EF8B0 | 7C AB F2 14 */	add r5, r11, r30
/* 814EF8B4 | 90 08 FF E0 */	stw r0, -0x20(r8)
/* 814EF8B8 | 7C 7E 58 50 */	subf r3, r30, r11
/* 814EF8BC | 7C 1D F8 50 */	subf r0, r29, r31
/* 814EF8C0 | 90 A8 FF E4 */	stw r5, -0x1c(r8)
/* 814EF8C4 | 90 68 FF E8 */	stw r3, -0x18(r8)
/* 814EF8C8 | 90 08 FF EC */	stw r0, -0x14(r8)
/* 814EF8CC | 39 08 FF C0 */	subi r8, r8, 0x40
/* 814EF8D0 | 42 00 FF 60 */	bdnz .L_814EF830
/* 814EF8D4 | 38 00 00 04 */	li r0, 0x4
/* 814EF8D8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 814EF8DC | 38 E0 00 03 */	li r7, 0x3
/* 814EF8E0 | 7C 09 03 A6 */	mtctr r0
.L_814EF8E4:
/* 814EF8E4 | 81 46 00 20 */	lwz r10, 0x20(r6)
/* 814EF8E8 | 7D 84 3A 14 */	add r12, r4, r7
/* 814EF8EC | 81 66 00 60 */	lwz r11, 0x60(r6)
/* 814EF8F0 | 38 A0 00 00 */	li r5, 0x0
/* 814EF8F4 | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 814EF8F8 | 7C 0B 50 50 */	subf r0, r11, r10
/* 814EF8FC | 81 26 00 40 */	lwz r9, 0x40(r6)
/* 814EF900 | 1C 60 00 B5 */	mulli r3, r0, 0xb5
/* 814EF904 | 7C 0B 52 14 */	add r0, r11, r10
/* 814EF908 | 7D 48 4A 14 */	add r10, r8, r9
/* 814EF90C | 7D 09 40 50 */	subf r8, r9, r8
/* 814EF910 | 7C 69 46 70 */	srawi r9, r3, 8
/* 814EF914 | 7D 69 02 14 */	add r11, r9, r0
/* 814EF918 | 7C 0A 5A 14 */	add r0, r10, r11
/* 814EF91C | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF920 | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EF924 | 40 80 00 10 */	bge .L_814EF934
/* 814EF928 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EF92C | 40 81 00 08 */	ble .L_814EF934
/* 814EF930 | 38 A0 00 01 */	li r5, 0x1
.L_814EF934:
/* 814EF934 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EF938 | 41 82 00 08 */	beq .L_814EF940
/* 814EF93C | 48 00 00 14 */	b .L_814EF950
.L_814EF940:
/* 814EF940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF944 | 38 60 FF 80 */	li r3, -0x80
/* 814EF948 | 40 81 00 08 */	ble .L_814EF950
/* 814EF94C | 38 60 00 7F */	li r3, 0x7f
.L_814EF950:
/* 814EF950 | 7C 08 4A 14 */	add r0, r8, r9
/* 814EF954 | 98 6C 00 00 */	stb r3, 0x0(r12)
/* 814EF958 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF95C | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EF960 | 38 00 00 00 */	li r0, 0x0
/* 814EF964 | 40 80 00 10 */	bge .L_814EF974
/* 814EF968 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EF96C | 40 81 00 08 */	ble .L_814EF974
/* 814EF970 | 38 00 00 01 */	li r0, 0x1
.L_814EF974:
/* 814EF974 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF978 | 41 82 00 08 */	beq .L_814EF980
/* 814EF97C | 48 00 00 14 */	b .L_814EF990
.L_814EF980:
/* 814EF980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF984 | 38 60 FF 80 */	li r3, -0x80
/* 814EF988 | 40 81 00 08 */	ble .L_814EF990
/* 814EF98C | 38 60 00 7F */	li r3, 0x7f
.L_814EF990:
/* 814EF990 | 7C 09 40 50 */	subf r0, r9, r8
/* 814EF994 | 98 6C 00 08 */	stb r3, 0x8(r12)
/* 814EF998 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF99C | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EF9A0 | 38 00 00 00 */	li r0, 0x0
/* 814EF9A4 | 40 80 00 10 */	bge .L_814EF9B4
/* 814EF9A8 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EF9AC | 40 81 00 08 */	ble .L_814EF9B4
/* 814EF9B0 | 38 00 00 01 */	li r0, 0x1
.L_814EF9B4:
/* 814EF9B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF9B8 | 41 82 00 08 */	beq .L_814EF9C0
/* 814EF9BC | 48 00 00 14 */	b .L_814EF9D0
.L_814EF9C0:
/* 814EF9C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EF9C4 | 38 60 FF 80 */	li r3, -0x80
/* 814EF9C8 | 40 81 00 08 */	ble .L_814EF9D0
/* 814EF9CC | 38 60 00 7F */	li r3, 0x7f
.L_814EF9D0:
/* 814EF9D0 | 7C 0B 50 50 */	subf r0, r11, r10
/* 814EF9D4 | 98 6C 00 10 */	stb r3, 0x10(r12)
/* 814EF9D8 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EF9DC | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EF9E0 | 38 00 00 00 */	li r0, 0x0
/* 814EF9E4 | 40 80 00 10 */	bge .L_814EF9F4
/* 814EF9E8 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EF9EC | 40 81 00 08 */	ble .L_814EF9F4
/* 814EF9F0 | 38 00 00 01 */	li r0, 0x1
.L_814EF9F4:
/* 814EF9F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EF9F8 | 41 82 00 08 */	beq .L_814EFA00
/* 814EF9FC | 48 00 00 14 */	b .L_814EFA10
.L_814EFA00:
/* 814EFA00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EFA04 | 38 60 FF 80 */	li r3, -0x80
/* 814EFA08 | 40 81 00 08 */	ble .L_814EFA10
/* 814EFA0C | 38 60 00 7F */	li r3, 0x7f
.L_814EFA10:
/* 814EFA10 | 98 6C 00 18 */	stb r3, 0x18(r12)
/* 814EFA14 | 38 C6 FF FC */	subi r6, r6, 0x4
/* 814EFA18 | 38 E7 FF FF */	subi r7, r7, 0x1
/* 814EFA1C | 42 00 FE C8 */	bdnz .L_814EF8E4
/* 814EFA20 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 814EFA24 | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 814EFA28 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 814EFA2C | 38 21 01 20 */	addi r1, r1, 0x120
/* 814EFA30 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock4x4_Col

# .text:0x55EC | 0x814EFA34 | size: 0x124
.fn TMCJPEGDEC_IdctBlock2x2_Col, global
/* 814EFA34 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EFA38 | 38 A0 00 00 */	li r5, 0x0
/* 814EFA3C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814EFA40 | 80 E3 00 20 */	lwz r7, 0x20(r3)
/* 814EFA44 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 814EFA48 | 7D 00 32 14 */	add r8, r0, r6
/* 814EFA4C | 7C C6 00 50 */	subf r6, r6, r0
/* 814EFA50 | 7D 27 1A 14 */	add r9, r7, r3
/* 814EFA54 | 7C E3 38 50 */	subf r7, r3, r7
/* 814EFA58 | 7C 08 4A 14 */	add r0, r8, r9
/* 814EFA5C | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EFA60 | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EFA64 | 40 80 00 10 */	bge .L_814EFA74
/* 814EFA68 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EFA6C | 40 81 00 08 */	ble .L_814EFA74
/* 814EFA70 | 38 A0 00 01 */	li r5, 0x1
.L_814EFA74:
/* 814EFA74 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814EFA78 | 41 82 00 08 */	beq .L_814EFA80
/* 814EFA7C | 48 00 00 14 */	b .L_814EFA90
.L_814EFA80:
/* 814EFA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EFA84 | 38 60 FF 80 */	li r3, -0x80
/* 814EFA88 | 40 81 00 08 */	ble .L_814EFA90
/* 814EFA8C | 38 60 00 7F */	li r3, 0x7f
.L_814EFA90:
/* 814EFA90 | 7C 09 40 50 */	subf r0, r9, r8
/* 814EFA94 | 98 64 00 00 */	stb r3, 0x0(r4)
/* 814EFA98 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EFA9C | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EFAA0 | 38 00 00 00 */	li r0, 0x0
/* 814EFAA4 | 40 80 00 10 */	bge .L_814EFAB4
/* 814EFAA8 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EFAAC | 40 81 00 08 */	ble .L_814EFAB4
/* 814EFAB0 | 38 00 00 01 */	li r0, 0x1
.L_814EFAB4:
/* 814EFAB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EFAB8 | 41 82 00 08 */	beq .L_814EFAC0
/* 814EFABC | 48 00 00 14 */	b .L_814EFAD0
.L_814EFAC0:
/* 814EFAC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EFAC4 | 38 60 FF 80 */	li r3, -0x80
/* 814EFAC8 | 40 81 00 08 */	ble .L_814EFAD0
/* 814EFACC | 38 60 00 7F */	li r3, 0x7f
.L_814EFAD0:
/* 814EFAD0 | 7C 06 3A 14 */	add r0, r6, r7
/* 814EFAD4 | 98 64 00 08 */	stb r3, 0x8(r4)
/* 814EFAD8 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EFADC | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EFAE0 | 38 00 00 00 */	li r0, 0x0
/* 814EFAE4 | 40 80 00 10 */	bge .L_814EFAF4
/* 814EFAE8 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EFAEC | 40 81 00 08 */	ble .L_814EFAF4
/* 814EFAF0 | 38 00 00 01 */	li r0, 0x1
.L_814EFAF4:
/* 814EFAF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EFAF8 | 41 82 00 08 */	beq .L_814EFB00
/* 814EFAFC | 48 00 00 14 */	b .L_814EFB10
.L_814EFB00:
/* 814EFB00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EFB04 | 38 60 FF 80 */	li r3, -0x80
/* 814EFB08 | 40 81 00 08 */	ble .L_814EFB10
/* 814EFB0C | 38 60 00 7F */	li r3, 0x7f
.L_814EFB10:
/* 814EFB10 | 7C 07 30 50 */	subf r0, r7, r6
/* 814EFB14 | 98 64 00 01 */	stb r3, 0x1(r4)
/* 814EFB18 | 7C 03 5E 70 */	srawi r3, r0, 11
/* 814EFB1C | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814EFB20 | 38 00 00 00 */	li r0, 0x0
/* 814EFB24 | 40 80 00 10 */	bge .L_814EFB34
/* 814EFB28 | 2C 03 FF 7F */	cmpwi r3, -0x81
/* 814EFB2C | 40 81 00 08 */	ble .L_814EFB34
/* 814EFB30 | 38 00 00 01 */	li r0, 0x1
.L_814EFB34:
/* 814EFB34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EFB38 | 41 82 00 08 */	beq .L_814EFB40
/* 814EFB3C | 48 00 00 14 */	b .L_814EFB50
.L_814EFB40:
/* 814EFB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EFB44 | 38 60 FF 80 */	li r3, -0x80
/* 814EFB48 | 40 81 00 08 */	ble .L_814EFB50
/* 814EFB4C | 38 60 00 7F */	li r3, 0x7f
.L_814EFB50:
/* 814EFB50 | 98 64 00 09 */	stb r3, 0x9(r4)
/* 814EFB54 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock2x2_Col

# .text:0x5710 | 0x814EFB58 | size: 0x44
.fn TMCJPEGDEC_IdctBlock1x1_Col, global
/* 814EFB58 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814EFB5C | 38 60 00 00 */	li r3, 0x0
/* 814EFB60 | 7C 00 5E 70 */	srawi r0, r0, 11
/* 814EFB64 | 2C 00 00 80 */	cmpwi r0, 0x80
/* 814EFB68 | 40 80 00 10 */	bge .L_814EFB78
/* 814EFB6C | 2C 00 FF 7F */	cmpwi r0, -0x81
/* 814EFB70 | 40 81 00 08 */	ble .L_814EFB78
/* 814EFB74 | 38 60 00 01 */	li r3, 0x1
.L_814EFB78:
/* 814EFB78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EFB7C | 41 82 00 08 */	beq .L_814EFB84
/* 814EFB80 | 48 00 00 14 */	b .L_814EFB94
.L_814EFB84:
/* 814EFB84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EFB88 | 38 00 FF 80 */	li r0, -0x80
/* 814EFB8C | 40 81 00 08 */	ble .L_814EFB94
/* 814EFB90 | 38 00 00 7F */	li r0, 0x7f
.L_814EFB94:
/* 814EFB94 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814EFB98 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_IdctBlock1x1_Col

# .text:0x5754 | 0x814EFB9C | size: 0x310
.fn TMCJPEGDEC_set_converterY8U8V8, global
/* 814EFB9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EFBA0 | 38 83 18 58 */	addi r4, r3, 0x1858
/* 814EFBA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EFBA8 | 88 03 17 FC */	lbz r0, 0x17fc(r3)
/* 814EFBAC | 80 A3 19 E4 */	lwz r5, 0x19e4(r3)
/* 814EFBB0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814EFBB4 | 41 82 01 44 */	beq .L_814EFCF8
/* 814EFBB8 | 40 80 00 1C */	bge .L_814EFBD4
/* 814EFBBC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814EFBC0 | 41 82 00 84 */	beq .L_814EFC44
/* 814EFBC4 | 40 80 00 D0 */	bge .L_814EFC94
/* 814EFBC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814EFBCC | 40 80 00 18 */	bge .L_814EFBE4
/* 814EFBD0 | 48 00 01 F4 */	b .L_814EFDC4
.L_814EFBD4:
/* 814EFBD4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814EFBD8 | 41 82 01 B8 */	beq .L_814EFD90
/* 814EFBDC | 40 80 01 E8 */	bge .L_814EFDC4
/* 814EFBE0 | 48 00 01 6C */	b .L_814EFD4C
.L_814EFBE4:
/* 814EFBE4 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814EFBE8 | 39 64 00 04 */	addi r11, r4, 0x4
/* 814EFBEC | 3F E0 81 4F */	lis r31, TMCJPEG_814EFEAC@ha
/* 814EFBF0 | 3D 80 81 4F */	lis r12, TMCJPEG_814F043C@ha
/* 814EFBF4 | 7D 4B 02 14 */	add r10, r11, r0
/* 814EFBF8 | 38 E4 01 04 */	addi r7, r4, 0x104
/* 814EFBFC | 7D 2A 02 14 */	add r9, r10, r0
/* 814EFC00 | 38 C4 01 44 */	addi r6, r4, 0x144
/* 814EFC04 | 7D 09 02 14 */	add r8, r9, r0
/* 814EFC08 | 3B FF FE AC */	addi r31, r31, TMCJPEG_814EFEAC@l
/* 814EFC0C | 39 8C 04 3C */	addi r12, r12, TMCJPEG_814F043C@l
/* 814EFC10 | 38 80 00 20 */	li r4, 0x20
/* 814EFC14 | 38 00 00 00 */	li r0, 0x0
/* 814EFC18 | 93 E3 18 2C */	stw r31, 0x182c(r3)
/* 814EFC1C | 91 83 18 30 */	stw r12, 0x1830(r3)
/* 814EFC20 | 91 63 18 3C */	stw r11, 0x183c(r3)
/* 814EFC24 | 91 43 18 40 */	stw r10, 0x1840(r3)
/* 814EFC28 | 91 23 18 44 */	stw r9, 0x1844(r3)
/* 814EFC2C | 91 03 18 48 */	stw r8, 0x1848(r3)
/* 814EFC30 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814EFC34 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814EFC38 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814EFC3C | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814EFC40 | 48 00 01 8C */	b .L_814EFDCC
.L_814EFC44:
/* 814EFC44 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814EFC48 | 39 24 00 04 */	addi r9, r4, 0x4
/* 814EFC4C | 3D 60 81 4F */	lis r11, TMCJPEG_814F0A58@ha
/* 814EFC50 | 3D 40 81 4F */	lis r10, TMCJPEG_814F11C4@ha
/* 814EFC54 | 7D 09 02 14 */	add r8, r9, r0
/* 814EFC58 | 38 E4 00 84 */	addi r7, r4, 0x84
/* 814EFC5C | 38 C4 00 C4 */	addi r6, r4, 0xc4
/* 814EFC60 | 39 6B 0A 58 */	addi r11, r11, TMCJPEG_814F0A58@l
/* 814EFC64 | 39 4A 11 C4 */	addi r10, r10, TMCJPEG_814F11C4@l
/* 814EFC68 | 38 80 00 10 */	li r4, 0x10
/* 814EFC6C | 38 00 00 00 */	li r0, 0x0
/* 814EFC70 | 91 63 18 2C */	stw r11, 0x182c(r3)
/* 814EFC74 | 91 43 18 30 */	stw r10, 0x1830(r3)
/* 814EFC78 | 91 23 18 3C */	stw r9, 0x183c(r3)
/* 814EFC7C | 91 03 18 40 */	stw r8, 0x1840(r3)
/* 814EFC80 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814EFC84 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814EFC88 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814EFC8C | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814EFC90 | 48 00 01 3C */	b .L_814EFDCC
.L_814EFC94:
/* 814EFC94 | 88 C3 19 DC */	lbz r6, 0x19dc(r3)
/* 814EFC98 | 39 64 00 04 */	addi r11, r4, 0x4
/* 814EFC9C | 3F E0 81 4F */	lis r31, TMCJPEG_814F17E0@ha
/* 814EFCA0 | 3D 80 81 4F */	lis r12, TMCJPEG_814F1F48@ha
/* 814EFCA4 | 54 C0 20 36 */	slwi r0, r6, 4
/* 814EFCA8 | 7D 4B 32 14 */	add r10, r11, r6
/* 814EFCAC | 7D 2B 02 14 */	add r9, r11, r0
/* 814EFCB0 | 3B FF 17 E0 */	addi r31, r31, TMCJPEG_814F17E0@l
/* 814EFCB4 | 7D 09 32 14 */	add r8, r9, r6
/* 814EFCB8 | 39 8C 1F 48 */	addi r12, r12, TMCJPEG_814F1F48@l
/* 814EFCBC | 38 E4 01 04 */	addi r7, r4, 0x104
/* 814EFCC0 | 38 C4 01 44 */	addi r6, r4, 0x144
/* 814EFCC4 | 38 80 00 10 */	li r4, 0x10
/* 814EFCC8 | 38 00 00 00 */	li r0, 0x0
/* 814EFCCC | 93 E3 18 2C */	stw r31, 0x182c(r3)
/* 814EFCD0 | 91 83 18 30 */	stw r12, 0x1830(r3)
/* 814EFCD4 | 91 63 18 3C */	stw r11, 0x183c(r3)
/* 814EFCD8 | 91 43 18 40 */	stw r10, 0x1840(r3)
/* 814EFCDC | 91 23 18 44 */	stw r9, 0x1844(r3)
/* 814EFCE0 | 91 03 18 48 */	stw r8, 0x1848(r3)
/* 814EFCE4 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814EFCE8 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814EFCEC | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814EFCF0 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814EFCF4 | 48 00 00 D8 */	b .L_814EFDCC
.L_814EFCF8:
/* 814EFCF8 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814EFCFC | 39 24 00 04 */	addi r9, r4, 0x4
/* 814EFD00 | 3D 60 81 4F */	lis r11, TMCJPEG_814F2570@ha
/* 814EFD04 | 3D 40 81 4F */	lis r10, TMCJPEG_814F2B50@ha
/* 814EFD08 | 54 00 18 38 */	slwi r0, r0, 3
/* 814EFD0C | 38 E4 00 84 */	addi r7, r4, 0x84
/* 814EFD10 | 7D 09 02 14 */	add r8, r9, r0
/* 814EFD14 | 38 C4 00 C4 */	addi r6, r4, 0xc4
/* 814EFD18 | 39 6B 25 70 */	addi r11, r11, TMCJPEG_814F2570@l
/* 814EFD1C | 39 4A 2B 50 */	addi r10, r10, TMCJPEG_814F2B50@l
/* 814EFD20 | 38 80 00 08 */	li r4, 0x8
/* 814EFD24 | 38 00 00 00 */	li r0, 0x0
/* 814EFD28 | 91 63 18 2C */	stw r11, 0x182c(r3)
/* 814EFD2C | 91 43 18 30 */	stw r10, 0x1830(r3)
/* 814EFD30 | 91 23 18 3C */	stw r9, 0x183c(r3)
/* 814EFD34 | 91 03 18 40 */	stw r8, 0x1840(r3)
/* 814EFD38 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814EFD3C | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814EFD40 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814EFD44 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814EFD48 | 48 00 00 84 */	b .L_814EFDCC
.L_814EFD4C:
/* 814EFD4C | 3D 40 81 4F */	lis r10, TMCJPEG_814F3158@ha
/* 814EFD50 | 3D 20 81 4F */	lis r9, TMCJPEG_814F32E4@ha
/* 814EFD54 | 39 4A 31 58 */	addi r10, r10, TMCJPEG_814F3158@l
/* 814EFD58 | 39 04 00 04 */	addi r8, r4, 0x4
/* 814EFD5C | 39 29 32 E4 */	addi r9, r9, TMCJPEG_814F32E4@l
/* 814EFD60 | 38 E4 00 44 */	addi r7, r4, 0x44
/* 814EFD64 | 38 C4 00 84 */	addi r6, r4, 0x84
/* 814EFD68 | 38 80 00 08 */	li r4, 0x8
/* 814EFD6C | 38 00 00 00 */	li r0, 0x0
/* 814EFD70 | 91 43 18 2C */	stw r10, 0x182c(r3)
/* 814EFD74 | 91 23 18 30 */	stw r9, 0x1830(r3)
/* 814EFD78 | 91 03 18 3C */	stw r8, 0x183c(r3)
/* 814EFD7C | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814EFD80 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814EFD84 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814EFD88 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814EFD8C | 48 00 00 40 */	b .L_814EFDCC
.L_814EFD90:
/* 814EFD90 | 3D 00 81 4F */	lis r8, TMCJPEG_814F34A4@ha
/* 814EFD94 | 3C E0 81 4F */	lis r7, TMCJPEG_814F372C@ha
/* 814EFD98 | 38 C4 00 04 */	addi r6, r4, 0x4
/* 814EFD9C | 38 80 00 08 */	li r4, 0x8
/* 814EFDA0 | 39 08 34 A4 */	addi r8, r8, TMCJPEG_814F34A4@l
/* 814EFDA4 | 38 E7 37 2C */	addi r7, r7, TMCJPEG_814F372C@l
/* 814EFDA8 | 38 00 00 00 */	li r0, 0x0
/* 814EFDAC | 91 03 18 2C */	stw r8, 0x182c(r3)
/* 814EFDB0 | 90 E3 18 30 */	stw r7, 0x1830(r3)
/* 814EFDB4 | 90 C3 18 3C */	stw r6, 0x183c(r3)
/* 814EFDB8 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814EFDBC | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814EFDC0 | 48 00 00 0C */	b .L_814EFDCC
.L_814EFDC4:
/* 814EFDC4 | 38 60 FF 90 */	li r3, -0x70
/* 814EFDC8 | 48 00 00 D8 */	b .L_814EFEA0
.L_814EFDCC:
/* 814EFDCC | A1 25 00 24 */	lhz r9, 0x24(r5)
/* 814EFDD0 | 38 60 00 00 */	li r3, 0x0
/* 814EFDD4 | A1 45 00 26 */	lhz r10, 0x26(r5)
/* 814EFDD8 | 55 20 E8 04 */	slwi r0, r9, 29
/* 814EFDDC | 55 27 0F FE */	srwi r7, r9, 31
/* 814EFDE0 | 7C 87 00 50 */	subf r4, r7, r0
/* 814EFDE4 | 55 46 0F FE */	srwi r6, r10, 31
/* 814EFDE8 | 54 84 18 3E */	rotlwi r4, r4, 3
/* 814EFDEC | 55 40 F0 02 */	slwi r0, r10, 30
/* 814EFDF0 | 7D 04 3A 14 */	add r8, r4, r7
/* 814EFDF4 | 55 29 E8 FE */	srwi r9, r9, 3
/* 814EFDF8 | 7C 86 00 50 */	subf r4, r6, r0
/* 814EFDFC | 55 40 F0 BE */	srwi r0, r10, 2
/* 814EFE00 | 7C E8 00 D0 */	neg r7, r8
/* 814EFE04 | 54 84 10 3E */	rotlwi r4, r4, 2
/* 814EFE08 | 7C E7 43 78 */	or r7, r7, r8
/* 814EFE0C | 7C C4 32 14 */	add r6, r4, r6
/* 814EFE10 | 54 E7 0F FE */	srwi r7, r7, 31
/* 814EFE14 | 7C 86 00 D0 */	neg r4, r6
/* 814EFE18 | 7C 84 33 78 */	or r4, r4, r6
/* 814EFE1C | 7C E9 3A 14 */	add r7, r9, r7
/* 814EFE20 | 54 86 0F FE */	srwi r6, r4, 31
/* 814EFE24 | 54 E4 18 38 */	slwi r4, r7, 3
/* 814EFE28 | 7C 00 32 14 */	add r0, r0, r6
/* 814EFE2C | 90 85 00 2C */	stw r4, 0x2c(r5)
/* 814EFE30 | 54 00 10 3A */	slwi r0, r0, 2
/* 814EFE34 | 90 05 00 30 */	stw r0, 0x30(r5)
/* 814EFE38 | A1 25 00 28 */	lhz r9, 0x28(r5)
/* 814EFE3C | A1 45 00 2A */	lhz r10, 0x2a(r5)
/* 814EFE40 | 55 20 E8 04 */	slwi r0, r9, 29
/* 814EFE44 | 55 27 0F FE */	srwi r7, r9, 31
/* 814EFE48 | 7C 87 00 50 */	subf r4, r7, r0
/* 814EFE4C | 55 46 0F FE */	srwi r6, r10, 31
/* 814EFE50 | 54 84 18 3E */	rotlwi r4, r4, 3
/* 814EFE54 | 55 40 F0 02 */	slwi r0, r10, 30
/* 814EFE58 | 7D 04 3A 14 */	add r8, r4, r7
/* 814EFE5C | 55 29 E8 FE */	srwi r9, r9, 3
/* 814EFE60 | 7C 86 00 50 */	subf r4, r6, r0
/* 814EFE64 | 55 40 F0 BE */	srwi r0, r10, 2
/* 814EFE68 | 7C E8 00 D0 */	neg r7, r8
/* 814EFE6C | 54 84 10 3E */	rotlwi r4, r4, 2
/* 814EFE70 | 7C E7 43 78 */	or r7, r7, r8
/* 814EFE74 | 7C C4 32 14 */	add r6, r4, r6
/* 814EFE78 | 54 E7 0F FE */	srwi r7, r7, 31
/* 814EFE7C | 7C 86 00 D0 */	neg r4, r6
/* 814EFE80 | 7C 84 33 78 */	or r4, r4, r6
/* 814EFE84 | 7C E9 3A 14 */	add r7, r9, r7
/* 814EFE88 | 54 86 0F FE */	srwi r6, r4, 31
/* 814EFE8C | 54 E4 18 38 */	slwi r4, r7, 3
/* 814EFE90 | 7C 00 32 14 */	add r0, r0, r6
/* 814EFE94 | 90 85 00 34 */	stw r4, 0x34(r5)
/* 814EFE98 | 54 00 10 3A */	slwi r0, r0, 2
/* 814EFE9C | 90 05 00 38 */	stw r0, 0x38(r5)
.L_814EFEA0:
/* 814EFEA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EFEA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EFEA8 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_set_converterY8U8V8

# .text:0x5A64 | 0x814EFEAC | size: 0x590
.fn TMCJPEG_814EFEAC, local
/* 814EFEAC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814EFEB0 | 38 C0 00 20 */	li r6, 0x20
/* 814EFEB4 | 38 00 00 08 */	li r0, 0x8
/* 814EFEB8 | 7C AB 2B 78 */	mr r11, r5
/* 814EFEBC | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814EFEC0 | 39 23 18 5C */	addi r9, r3, 0x185c
/* 814EFEC4 | 3A C3 19 5C */	addi r22, r3, 0x195c
/* 814EFEC8 | 3A A3 19 9C */	addi r21, r3, 0x199c
/* 814EFECC | 81 03 19 E4 */	lwz r8, 0x19e4(r3)
/* 814EFED0 | 89 88 00 20 */	lbz r12, 0x20(r8)
/* 814EFED4 | 81 48 00 2C */	lwz r10, 0x2c(r8)
/* 814EFED8 | 7D C6 63 D6 */	divw r14, r6, r12
/* 814EFEDC | 80 E8 00 3C */	lwz r7, 0x3c(r8)
/* 814EFEE0 | 83 08 00 40 */	lwz r24, 0x40(r8)
/* 814EFEE4 | 55 4F E8 FE */	srwi r15, r10, 3
/* 814EFEE8 | 82 E8 00 44 */	lwz r23, 0x44(r8)
/* 814EFEEC | 7C C0 63 D6 */	divw r6, r0, r12
/* 814EFEF0 | 7D 84 72 14 */	add r12, r4, r14
/* 814EFEF4 | 20 0E 00 20 */	subfic r0, r14, 0x20
/* 814EFEF8 | 7D C5 32 14 */	add r14, r5, r6
/* 814EFEFC | 48 00 01 DC */	b .L_814F00D8
.L_814EFF00:
/* 814EFF00 | 7D 63 16 70 */	srawi r3, r11, 2
/* 814EFF04 | 3A 2C 00 03 */	addi r17, r12, 0x3
/* 814EFF08 | 7C C3 79 D6 */	mullw r6, r3, r15
/* 814EFF0C | 7C 04 60 00 */	cmpw r4, r12
/* 814EFF10 | 55 63 1E F8 */	clrlslwi r3, r11, 30, 3
/* 814EFF14 | 7E 24 88 50 */	subf r17, r4, r17
/* 814EFF18 | 7C 8A 23 78 */	mr r10, r4
/* 814EFF1C | 7C 67 1A 14 */	add r3, r7, r3
/* 814EFF20 | 56 31 F0 BE */	srwi r17, r17, 2
/* 814EFF24 | 40 80 01 AC */	bge .L_814F00D0
/* 814EFF28 | 56 30 F8 7F */	srwi. r16, r17, 1
/* 814EFF2C | 7E 09 03 A6 */	mtctr r16
/* 814EFF30 | 41 82 01 14 */	beq .L_814F0044
.L_814EFF34:
/* 814EFF34 | 7D 59 1E 70 */	srawi r25, r10, 3
/* 814EFF38 | 3A 6A 00 01 */	addi r19, r10, 0x1
/* 814EFF3C | 7E 19 32 14 */	add r16, r25, r6
/* 814EFF40 | 55 5A 07 7E */	clrlwi r26, r10, 29
/* 814EFF44 | 56 14 28 34 */	slwi r20, r16, 5
/* 814EFF48 | 8B 69 00 00 */	lbz r27, 0x0(r9)
/* 814EFF4C | 7E 03 D2 14 */	add r16, r3, r26
/* 814EFF50 | 7E 72 1E 70 */	srawi r18, r19, 3
/* 814EFF54 | 7F 74 81 AE */	stbx r27, r20, r16
/* 814EFF58 | 56 73 07 7E */	clrlwi r19, r19, 29
/* 814EFF5C | 7E 52 32 14 */	add r18, r18, r6
/* 814EFF60 | 3A 0A 00 02 */	addi r16, r10, 0x2
/* 814EFF64 | 56 59 28 34 */	slwi r25, r18, 5
/* 814EFF68 | 7E 83 9A 14 */	add r20, r3, r19
/* 814EFF6C | 8B 49 00 01 */	lbz r26, 0x1(r9)
/* 814EFF70 | 7E 13 1E 70 */	srawi r19, r16, 3
/* 814EFF74 | 3A 4A 00 03 */	addi r18, r10, 0x3
/* 814EFF78 | 39 4A 00 04 */	addi r10, r10, 0x4
/* 814EFF7C | 7F 59 A1 AE */	stbx r26, r25, r20
/* 814EFF80 | 56 19 07 7E */	clrlwi r25, r16, 29
/* 814EFF84 | 7E 73 32 14 */	add r19, r19, r6
/* 814EFF88 | 7E 50 1E 70 */	srawi r16, r18, 3
/* 814EFF8C | 56 74 28 34 */	slwi r20, r19, 5
/* 814EFF90 | 8B 49 00 02 */	lbz r26, 0x2(r9)
/* 814EFF94 | 7E 63 CA 14 */	add r19, r3, r25
/* 814EFF98 | 7E 10 32 14 */	add r16, r16, r6
/* 814EFF9C | 7F 54 99 AE */	stbx r26, r20, r19
/* 814EFFA0 | 56 53 07 7E */	clrlwi r19, r18, 29
/* 814EFFA4 | 56 12 28 34 */	slwi r18, r16, 5
/* 814EFFA8 | 7D 59 1E 70 */	srawi r25, r10, 3
/* 814EFFAC | 7E 03 9A 14 */	add r16, r3, r19
/* 814EFFB0 | 8A 89 00 03 */	lbz r20, 0x3(r9)
/* 814EFFB4 | 55 5A 07 7E */	clrlwi r26, r10, 29
/* 814EFFB8 | 3A 6A 00 01 */	addi r19, r10, 0x1
/* 814EFFBC | 7E 92 81 AE */	stbx r20, r18, r16
/* 814EFFC0 | 7E 19 32 14 */	add r16, r25, r6
/* 814EFFC4 | 56 14 28 34 */	slwi r20, r16, 5
/* 814EFFC8 | 7E 72 1E 70 */	srawi r18, r19, 3
/* 814EFFCC | 8B 69 00 04 */	lbz r27, 0x4(r9)
/* 814EFFD0 | 7E 03 D2 14 */	add r16, r3, r26
/* 814EFFD4 | 7E 52 32 14 */	add r18, r18, r6
/* 814EFFD8 | 56 73 07 7E */	clrlwi r19, r19, 29
/* 814EFFDC | 7F 74 81 AE */	stbx r27, r20, r16
/* 814EFFE0 | 56 59 28 34 */	slwi r25, r18, 5
/* 814EFFE4 | 7E 83 9A 14 */	add r20, r3, r19
/* 814EFFE8 | 3A 0A 00 02 */	addi r16, r10, 0x2
/* 814EFFEC | 8B 49 00 05 */	lbz r26, 0x5(r9)
/* 814EFFF0 | 7E 13 1E 70 */	srawi r19, r16, 3
/* 814EFFF4 | 3A 4A 00 03 */	addi r18, r10, 0x3
/* 814EFFF8 | 39 4A 00 04 */	addi r10, r10, 0x4
/* 814EFFFC | 7F 59 A1 AE */	stbx r26, r25, r20
/* 814F0000 | 56 19 07 7E */	clrlwi r25, r16, 29
/* 814F0004 | 7E 73 32 14 */	add r19, r19, r6
/* 814F0008 | 7E 50 1E 70 */	srawi r16, r18, 3
/* 814F000C | 56 74 28 34 */	slwi r20, r19, 5
/* 814F0010 | 8B 49 00 06 */	lbz r26, 0x6(r9)
/* 814F0014 | 7E 63 CA 14 */	add r19, r3, r25
/* 814F0018 | 7E 10 32 14 */	add r16, r16, r6
/* 814F001C | 7F 54 99 AE */	stbx r26, r20, r19
/* 814F0020 | 56 53 07 7E */	clrlwi r19, r18, 29
/* 814F0024 | 56 12 28 34 */	slwi r18, r16, 5
/* 814F0028 | 8A 89 00 07 */	lbz r20, 0x7(r9)
/* 814F002C | 7E 03 9A 14 */	add r16, r3, r19
/* 814F0030 | 39 29 00 08 */	addi r9, r9, 0x8
/* 814F0034 | 7E 92 81 AE */	stbx r20, r18, r16
/* 814F0038 | 42 00 FE FC */	bdnz .L_814EFF34
/* 814F003C | 72 31 00 01 */	andi. r17, r17, 0x1
/* 814F0040 | 41 82 00 90 */	beq .L_814F00D0
.L_814F0044:
/* 814F0044 | 7E 29 03 A6 */	mtctr r17
.L_814F0048:
/* 814F0048 | 7D 59 1E 70 */	srawi r25, r10, 3
/* 814F004C | 3A 6A 00 01 */	addi r19, r10, 0x1
/* 814F0050 | 7E 19 32 14 */	add r16, r25, r6
/* 814F0054 | 55 5A 07 7E */	clrlwi r26, r10, 29
/* 814F0058 | 56 14 28 34 */	slwi r20, r16, 5
/* 814F005C | 8B 69 00 00 */	lbz r27, 0x0(r9)
/* 814F0060 | 7E 03 D2 14 */	add r16, r3, r26
/* 814F0064 | 7E 72 1E 70 */	srawi r18, r19, 3
/* 814F0068 | 7F 74 81 AE */	stbx r27, r20, r16
/* 814F006C | 56 73 07 7E */	clrlwi r19, r19, 29
/* 814F0070 | 7E 52 32 14 */	add r18, r18, r6
/* 814F0074 | 3A 0A 00 02 */	addi r16, r10, 0x2
/* 814F0078 | 56 59 28 34 */	slwi r25, r18, 5
/* 814F007C | 7E 83 9A 14 */	add r20, r3, r19
/* 814F0080 | 8B 49 00 01 */	lbz r26, 0x1(r9)
/* 814F0084 | 7E 13 1E 70 */	srawi r19, r16, 3
/* 814F0088 | 3A 4A 00 03 */	addi r18, r10, 0x3
/* 814F008C | 39 4A 00 04 */	addi r10, r10, 0x4
/* 814F0090 | 7F 59 A1 AE */	stbx r26, r25, r20
/* 814F0094 | 56 19 07 7E */	clrlwi r25, r16, 29
/* 814F0098 | 7E 73 32 14 */	add r19, r19, r6
/* 814F009C | 7E 50 1E 70 */	srawi r16, r18, 3
/* 814F00A0 | 56 74 28 34 */	slwi r20, r19, 5
/* 814F00A4 | 8B 49 00 02 */	lbz r26, 0x2(r9)
/* 814F00A8 | 7E 63 CA 14 */	add r19, r3, r25
/* 814F00AC | 7E 10 32 14 */	add r16, r16, r6
/* 814F00B0 | 7F 54 99 AE */	stbx r26, r20, r19
/* 814F00B4 | 56 53 07 7E */	clrlwi r19, r18, 29
/* 814F00B8 | 56 12 28 34 */	slwi r18, r16, 5
/* 814F00BC | 8A 89 00 03 */	lbz r20, 0x3(r9)
/* 814F00C0 | 7E 03 9A 14 */	add r16, r3, r19
/* 814F00C4 | 39 29 00 04 */	addi r9, r9, 0x4
/* 814F00C8 | 7E 92 81 AE */	stbx r20, r18, r16
/* 814F00CC | 42 00 FF 7C */	bdnz .L_814F0048
.L_814F00D0:
/* 814F00D0 | 7D 29 02 14 */	add r9, r9, r0
/* 814F00D4 | 39 6B 00 01 */	addi r11, r11, 0x1
.L_814F00D8:
/* 814F00D8 | 7C 0B 70 00 */	cmpw r11, r14
/* 814F00DC | 41 80 FE 24 */	blt .L_814EFF00
/* 814F00E0 | 88 08 00 20 */	lbz r0, 0x20(r8)
/* 814F00E4 | 38 60 00 08 */	li r3, 0x8
/* 814F00E8 | 80 C8 00 34 */	lwz r6, 0x34(r8)
/* 814F00EC | 54 84 F0 BE */	srwi r4, r4, 2
/* 814F00F0 | 7C 63 03 D6 */	divw r3, r3, r0
/* 814F00F4 | 7C 04 00 D0 */	neg r0, r4
/* 814F00F8 | 54 DB E8 FE */	srwi r27, r6, 3
/* 814F00FC | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814F0100 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F0104 | 7F 44 1A 14 */	add r26, r4, r3
/* 814F0108 | 7D C4 D0 50 */	subf r14, r4, r26
/* 814F010C | 7C 05 1A 14 */	add r0, r5, r3
/* 814F0110 | 20 C3 00 08 */	subfic r6, r3, 0x8
/* 814F0114 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F0118 | 55 C3 00 00 */	clrrwi r3, r14, 31
/* 814F011C | 57 40 00 00 */	clrrwi r0, r26, 31
/* 814F0120 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814F0124 | 48 00 03 00 */	b .L_814F0424
.L_814F0128:
/* 814F0128 | 7C 84 D0 00 */	cmpw cr1, r4, r26
/* 814F012C | 7C 99 23 78 */	mr r25, r4
/* 814F0130 | 40 84 02 E8 */	bge cr1, .L_814F0418
/* 814F0134 | 2C 0E 00 08 */	cmpwi r14, 0x8
/* 814F0138 | 39 7A FF F8 */	subi r11, r26, 0x8
/* 814F013C | 40 81 02 78 */	ble .L_814F03B4
/* 814F0140 | 38 E0 00 00 */	li r7, 0x0
/* 814F0144 | 39 00 00 00 */	li r8, 0x0
/* 814F0148 | 39 20 00 00 */	li r9, 0x0
/* 814F014C | 39 40 00 00 */	li r10, 0x0
/* 814F0150 | 41 85 00 18 */	bgt cr1, .L_814F0168
/* 814F0154 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F0158 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F015C | 7C 1A 18 00 */	cmpw r26, r3
/* 814F0160 | 41 81 00 08 */	bgt .L_814F0168
/* 814F0164 | 39 40 00 01 */	li r10, 0x1
.L_814F0168:
/* 814F0168 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F016C | 41 82 00 18 */	beq .L_814F0184
/* 814F0170 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F0174 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F0178 | 7C 04 18 00 */	cmpw r4, r3
/* 814F017C | 41 81 00 08 */	bgt .L_814F0184
/* 814F0180 | 39 20 00 01 */	li r9, 0x1
.L_814F0184:
/* 814F0184 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F0188 | 41 82 00 14 */	beq .L_814F019C
/* 814F018C | 3C 64 80 00 */	addis r3, r4, 0x8000
/* 814F0190 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814F0194 | 41 82 00 08 */	beq .L_814F019C
/* 814F0198 | 39 00 00 01 */	li r8, 0x1
.L_814F019C:
/* 814F019C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F01A0 | 41 82 00 30 */	beq .L_814F01D0
/* 814F01A4 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814F01A8 | 39 00 00 01 */	li r8, 0x1
/* 814F01AC | 7C 00 18 00 */	cmpw r0, r3
/* 814F01B0 | 40 82 00 14 */	bne .L_814F01C4
/* 814F01B4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814F01B8 | 7C 00 18 00 */	cmpw r0, r3
/* 814F01BC | 41 82 00 08 */	beq .L_814F01C4
/* 814F01C0 | 39 00 00 00 */	li r8, 0x0
.L_814F01C4:
/* 814F01C4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F01C8 | 41 82 00 08 */	beq .L_814F01D0
/* 814F01CC | 38 E0 00 01 */	li r7, 0x1
.L_814F01D0:
/* 814F01D0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F01D4 | 41 82 01 E0 */	beq .L_814F03B4
/* 814F01D8 | 7C 87 1E 70 */	srawi r7, r4, 3
/* 814F01DC | 38 6B 00 07 */	addi r3, r11, 0x7
/* 814F01E0 | 7C A9 16 70 */	srawi r9, r5, 2
/* 814F01E4 | 54 AA 1E F8 */	clrlslwi r10, r5, 30, 3
/* 814F01E8 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F01EC | 7D 29 D9 D6 */	mullw r9, r9, r27
/* 814F01F0 | 7D 18 52 14 */	add r8, r24, r10
/* 814F01F4 | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F01F8 | 7D 57 52 14 */	add r10, r23, r10
/* 814F01FC | 7C 69 03 A6 */	mtctr r3
/* 814F0200 | 7C 04 58 00 */	cmpw r4, r11
/* 814F0204 | 40 80 01 B0 */	bge .L_814F03B4
.L_814F0208:
/* 814F0208 | 89 96 00 00 */	lbz r12, 0x0(r22)
/* 814F020C | 57 23 07 7E */	clrlwi r3, r25, 29
/* 814F0210 | 7D 67 4A 14 */	add r11, r7, r9
/* 814F0214 | 39 F9 00 01 */	addi r15, r25, 0x1
/* 814F0218 | 3A 2C 00 80 */	addi r17, r12, 0x80
/* 814F021C | 7E 08 1A 14 */	add r16, r8, r3
/* 814F0220 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F0224 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F0228 | 7E 2B 81 AE */	stbx r17, r11, r16
/* 814F022C | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F0230 | 3A 39 00 02 */	addi r17, r25, 0x2
/* 814F0234 | 7E 6A 1A 14 */	add r19, r10, r3
/* 814F0238 | 8A 95 00 00 */	lbz r20, 0x0(r21)
/* 814F023C | 7E 52 4A 14 */	add r18, r18, r9
/* 814F0240 | 39 F9 00 03 */	addi r15, r25, 0x3
/* 814F0244 | 7E 30 1E 70 */	srawi r16, r17, 3
/* 814F0248 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F024C | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F0250 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F0254 | 7D 70 4A 14 */	add r11, r16, r9
/* 814F0258 | 56 53 28 34 */	slwi r19, r18, 5
/* 814F025C | 7E 48 62 14 */	add r18, r8, r12
/* 814F0260 | 8A 96 00 01 */	lbz r20, 0x1(r22)
/* 814F0264 | 7D F0 1E 70 */	srawi r16, r15, 3
/* 814F0268 | 55 F1 07 7E */	clrlwi r17, r15, 29
/* 814F026C | 39 F9 00 04 */	addi r15, r25, 0x4
/* 814F0270 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F0274 | 7D 8A 62 14 */	add r12, r10, r12
/* 814F0278 | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F027C | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F0280 | 55 FF 07 7E */	clrlwi r31, r15, 29
/* 814F0284 | 3A 99 00 05 */	addi r20, r25, 0x5
/* 814F0288 | 89 F5 00 01 */	lbz r15, 0x1(r21)
/* 814F028C | 56 9D 07 7E */	clrlwi r29, r20, 29
/* 814F0290 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F0294 | 7E 10 4A 14 */	add r16, r16, r9
/* 814F0298 | 3B 8F 00 80 */	addi r28, r15, 0x80
/* 814F029C | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F02A0 | 7F 93 61 AE */	stbx r28, r19, r12
/* 814F02A4 | 7E 6F 4A 14 */	add r19, r15, r9
/* 814F02A8 | 3B 99 00 06 */	addi r28, r25, 0x6
/* 814F02AC | 7D E8 1A 14 */	add r15, r8, r3
/* 814F02B0 | 8A 96 00 02 */	lbz r20, 0x2(r22)
/* 814F02B4 | 7F 8C 1E 70 */	srawi r12, r28, 3
/* 814F02B8 | 7E 52 4A 14 */	add r18, r18, r9
/* 814F02BC | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F02C0 | 3B D4 00 80 */	addi r30, r20, 0x80
/* 814F02C4 | 7E 8C 4A 14 */	add r20, r12, r9
/* 814F02C8 | 7F CB 79 AE */	stbx r30, r11, r15
/* 814F02CC | 7D EA 1A 14 */	add r15, r10, r3
/* 814F02D0 | 56 0C 28 34 */	slwi r12, r16, 5
/* 814F02D4 | 7E 08 8A 14 */	add r16, r8, r17
/* 814F02D8 | 88 75 00 02 */	lbz r3, 0x2(r21)
/* 814F02DC | 56 5E 28 34 */	slwi r30, r18, 5
/* 814F02E0 | 7E 48 FA 14 */	add r18, r8, r31
/* 814F02E4 | 7E 2A 8A 14 */	add r17, r10, r17
/* 814F02E8 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F02EC | 7F EA FA 14 */	add r31, r10, r31
/* 814F02F0 | 7C 6B 79 AE */	stbx r3, r11, r15
/* 814F02F4 | 56 63 28 34 */	slwi r3, r19, 5
/* 814F02F8 | 7D E8 EA 14 */	add r15, r8, r29
/* 814F02FC | 7D 6A EA 14 */	add r11, r10, r29
/* 814F0300 | 8A 76 00 03 */	lbz r19, 0x3(r22)
/* 814F0304 | 56 94 28 34 */	slwi r20, r20, 5
/* 814F0308 | 7F A8 E2 14 */	add r29, r8, r28
/* 814F030C | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F0310 | 7E 6C 81 AE */	stbx r19, r12, r16
/* 814F0314 | 8A 15 00 03 */	lbz r16, 0x3(r21)
/* 814F0318 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F031C | 7E 0C 89 AE */	stbx r16, r12, r17
/* 814F0320 | 89 96 00 04 */	lbz r12, 0x4(r22)
/* 814F0324 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0328 | 7D 9E 91 AE */	stbx r12, r30, r18
/* 814F032C | 89 95 00 04 */	lbz r12, 0x4(r21)
/* 814F0330 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0334 | 7D 9E F9 AE */	stbx r12, r30, r31
/* 814F0338 | 89 96 00 05 */	lbz r12, 0x5(r22)
/* 814F033C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0340 | 7D 83 79 AE */	stbx r12, r3, r15
/* 814F0344 | 89 95 00 05 */	lbz r12, 0x5(r21)
/* 814F0348 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F034C | 7D 83 59 AE */	stbx r12, r3, r11
/* 814F0350 | 88 76 00 06 */	lbz r3, 0x6(r22)
/* 814F0354 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F0358 | 7C 74 E9 AE */	stbx r3, r20, r29
/* 814F035C | 89 95 00 06 */	lbz r12, 0x6(r21)
/* 814F0360 | 38 79 00 07 */	addi r3, r25, 0x7
/* 814F0364 | 54 6F 07 7E */	clrlwi r15, r3, 29
/* 814F0368 | 7D 6A E2 14 */	add r11, r10, r28
/* 814F036C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0370 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F0374 | 7D 94 59 AE */	stbx r12, r20, r11
/* 814F0378 | 7C 63 4A 14 */	add r3, r3, r9
/* 814F037C | 54 70 28 34 */	slwi r16, r3, 5
/* 814F0380 | 7D 68 7A 14 */	add r11, r8, r15
/* 814F0384 | 89 96 00 07 */	lbz r12, 0x7(r22)
/* 814F0388 | 7C 6A 7A 14 */	add r3, r10, r15
/* 814F038C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814F0390 | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814F0394 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0398 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F039C | 7D 90 59 AE */	stbx r12, r16, r11
/* 814F03A0 | 89 75 00 07 */	lbz r11, 0x7(r21)
/* 814F03A4 | 3A B5 00 08 */	addi r21, r21, 0x8
/* 814F03A8 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F03AC | 7D 70 19 AE */	stbx r11, r16, r3
/* 814F03B0 | 42 00 FE 58 */	bdnz .L_814F0208
.L_814F03B4:
/* 814F03B4 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F03B8 | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F03BC | 7D 43 D9 D6 */	mullw r10, r3, r27
/* 814F03C0 | 7C 79 D0 50 */	subf r3, r25, r26
/* 814F03C4 | 7D 38 3A 14 */	add r9, r24, r7
/* 814F03C8 | 7D 77 3A 14 */	add r11, r23, r7
/* 814F03CC | 7C 69 03 A6 */	mtctr r3
/* 814F03D0 | 7C 19 D0 00 */	cmpw r25, r26
/* 814F03D4 | 40 80 00 44 */	bge .L_814F0418
.L_814F03D8:
/* 814F03D8 | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814F03DC | 7F 27 1E 70 */	srawi r7, r25, 3
/* 814F03E0 | 7D 07 52 14 */	add r8, r7, r10
/* 814F03E4 | 57 2C 07 7E */	clrlwi r12, r25, 29
/* 814F03E8 | 38 E3 00 80 */	addi r7, r3, 0x80
/* 814F03EC | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814F03F0 | 55 08 28 34 */	slwi r8, r8, 5
/* 814F03F4 | 7C 69 62 14 */	add r3, r9, r12
/* 814F03F8 | 7C E8 19 AE */	stbx r7, r8, r3
/* 814F03FC | 7C 6B 62 14 */	add r3, r11, r12
/* 814F0400 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F0404 | 88 F5 00 00 */	lbz r7, 0x0(r21)
/* 814F0408 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814F040C | 38 E7 00 80 */	addi r7, r7, 0x80
/* 814F0410 | 7C E8 19 AE */	stbx r7, r8, r3
/* 814F0414 | 42 00 FF C4 */	bdnz .L_814F03D8
.L_814F0418:
/* 814F0418 | 7E D6 32 14 */	add r22, r22, r6
/* 814F041C | 7E B5 32 14 */	add r21, r21, r6
/* 814F0420 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F0424:
/* 814F0424 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F0428 | 7C 05 18 00 */	cmpw r5, r3
/* 814F042C | 41 80 FC FC */	blt .L_814F0128
/* 814F0430 | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F0434 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F0438 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814EFEAC

# .text:0x5FF4 | 0x814F043C | size: 0x61C
.fn TMCJPEG_814F043C, local
/* 814F043C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F0440 | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F0444 | 3A 23 18 5C */	addi r17, r3, 0x185c
/* 814F0448 | 3A C3 19 5C */	addi r22, r3, 0x195c
/* 814F044C | 3A A3 19 9C */	addi r21, r3, 0x199c
/* 814F0450 | 81 E3 19 E4 */	lwz r15, 0x19e4(r3)
/* 814F0454 | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 814F0458 | 80 CF 00 2C */	lwz r6, 0x2c(r15)
/* 814F045C | 7C 00 20 40 */	cmplw r0, r4
/* 814F0460 | 82 0F 00 3C */	lwz r16, 0x3c(r15)
/* 814F0464 | 83 0F 00 40 */	lwz r24, 0x40(r15)
/* 814F0468 | 54 DA E8 FE */	srwi r26, r6, 3
/* 814F046C | 82 EF 00 44 */	lwz r23, 0x44(r15)
/* 814F0470 | 40 82 00 0C */	bne .L_814F047C
/* 814F0474 | 8A 8F 00 16 */	lbz r20, 0x16(r15)
/* 814F0478 | 48 00 00 10 */	b .L_814F0488
.L_814F047C:
/* 814F047C | 88 0F 00 20 */	lbz r0, 0x20(r15)
/* 814F0480 | 38 60 00 20 */	li r3, 0x20
/* 814F0484 | 7E 83 03 D6 */	divw r20, r3, r0
.L_814F0488:
/* 814F0488 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814F048C | 7C 00 28 40 */	cmplw r0, r5
/* 814F0490 | 40 82 00 0C */	bne .L_814F049C
/* 814F0494 | 88 CF 00 17 */	lbz r6, 0x17(r15)
/* 814F0498 | 48 00 00 10 */	b .L_814F04A8
.L_814F049C:
/* 814F049C | 88 0F 00 20 */	lbz r0, 0x20(r15)
/* 814F04A0 | 38 60 00 08 */	li r3, 0x8
/* 814F04A4 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F04A8:
/* 814F04A8 | 7F 24 A2 14 */	add r25, r4, r20
/* 814F04AC | 7C 64 00 D0 */	neg r3, r4
/* 814F04B0 | 7C 04 C8 50 */	subf r0, r4, r25
/* 814F04B4 | 7D 45 32 14 */	add r10, r5, r6
/* 814F04B8 | 54 66 00 00 */	clrrwi r6, r3, 31
/* 814F04BC | 7C B3 2B 78 */	mr r19, r5
/* 814F04C0 | 57 27 00 00 */	clrrwi r7, r25, 31
/* 814F04C4 | 54 08 00 00 */	clrrwi r8, r0, 31
/* 814F04C8 | 21 34 00 20 */	subfic r9, r20, 0x20
/* 814F04CC | 3C 60 80 00 */	lis r3, 0x8000
/* 814F04D0 | 48 00 02 28 */	b .L_814F06F8
.L_814F04D4:
/* 814F04D4 | 7C 84 C8 00 */	cmpw cr1, r4, r25
/* 814F04D8 | 7C 92 23 78 */	mr r18, r4
/* 814F04DC | 40 84 02 14 */	bge cr1, .L_814F06F0
/* 814F04E0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F04E4 | 3B 79 FF F8 */	subi r27, r25, 0x8
/* 814F04E8 | 40 81 01 C0 */	ble .L_814F06A8
/* 814F04EC | 39 80 00 00 */	li r12, 0x0
/* 814F04F0 | 39 C0 00 00 */	li r14, 0x0
/* 814F04F4 | 3B 80 00 00 */	li r28, 0x0
/* 814F04F8 | 3B A0 00 00 */	li r29, 0x0
/* 814F04FC | 41 85 00 14 */	bgt cr1, .L_814F0510
/* 814F0500 | 39 63 FF FE */	subi r11, r3, 0x2
/* 814F0504 | 7C 19 58 00 */	cmpw r25, r11
/* 814F0508 | 41 81 00 08 */	bgt .L_814F0510
/* 814F050C | 3B A0 00 01 */	li r29, 0x1
.L_814F0510:
/* 814F0510 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814F0514 | 41 82 00 14 */	beq .L_814F0528
/* 814F0518 | 39 63 FF FE */	subi r11, r3, 0x2
/* 814F051C | 7C 04 58 00 */	cmpw r4, r11
/* 814F0520 | 41 81 00 08 */	bgt .L_814F0528
/* 814F0524 | 3B 80 00 01 */	li r28, 0x1
.L_814F0528:
/* 814F0528 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F052C | 41 82 00 14 */	beq .L_814F0540
/* 814F0530 | 3D 64 80 00 */	addis r11, r4, 0x8000
/* 814F0534 | 28 0B 00 00 */	cmplwi r11, 0x0
/* 814F0538 | 41 82 00 08 */	beq .L_814F0540
/* 814F053C | 39 C0 00 01 */	li r14, 0x1
.L_814F0540:
/* 814F0540 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 814F0544 | 41 82 00 28 */	beq .L_814F056C
/* 814F0548 | 7C 07 30 00 */	cmpw r7, r6
/* 814F054C | 39 60 00 01 */	li r11, 0x1
/* 814F0550 | 40 82 00 10 */	bne .L_814F0560
/* 814F0554 | 7C 07 40 00 */	cmpw r7, r8
/* 814F0558 | 41 82 00 08 */	beq .L_814F0560
/* 814F055C | 39 60 00 00 */	li r11, 0x0
.L_814F0560:
/* 814F0560 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F0564 | 41 82 00 08 */	beq .L_814F056C
/* 814F0568 | 39 80 00 01 */	li r12, 0x1
.L_814F056C:
/* 814F056C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F0570 | 41 82 01 38 */	beq .L_814F06A8
/* 814F0574 | 7C 8B 1E 70 */	srawi r11, r4, 3
/* 814F0578 | 3B 9B 00 07 */	addi r28, r27, 0x7
/* 814F057C | 7E 6C 16 70 */	srawi r12, r19, 2
/* 814F0580 | 56 7D 1E F8 */	clrlslwi r29, r19, 30, 3
/* 814F0584 | 7F 84 E0 50 */	subf r28, r4, r28
/* 814F0588 | 7D CC D1 D6 */	mullw r14, r12, r26
/* 814F058C | 7D 90 EA 14 */	add r12, r16, r29
/* 814F0590 | 57 9C E8 FE */	srwi r28, r28, 3
/* 814F0594 | 7F 89 03 A6 */	mtctr r28
/* 814F0598 | 7C 04 D8 00 */	cmpw r4, r27
/* 814F059C | 40 80 01 0C */	bge .L_814F06A8
.L_814F05A0:
/* 814F05A0 | 7F 6B 72 14 */	add r27, r11, r14
/* 814F05A4 | 56 5D 07 7E */	clrlwi r29, r18, 29
/* 814F05A8 | 57 7C 28 34 */	slwi r28, r27, 5
/* 814F05AC | 8B D1 00 00 */	lbz r30, 0x0(r17)
/* 814F05B0 | 7F AC EA 14 */	add r29, r12, r29
/* 814F05B4 | 3B 72 00 01 */	addi r27, r18, 0x1
/* 814F05B8 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F05BC | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F05C0 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F05C4 | 3B 72 00 02 */	addi r27, r18, 0x2
/* 814F05C8 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F05CC | 8B D1 00 01 */	lbz r30, 0x1(r17)
/* 814F05D0 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F05D4 | 7F AC EA 14 */	add r29, r12, r29
/* 814F05D8 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F05DC | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F05E0 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F05E4 | 3B 72 00 03 */	addi r27, r18, 0x3
/* 814F05E8 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F05EC | 8B D1 00 02 */	lbz r30, 0x2(r17)
/* 814F05F0 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F05F4 | 7F AC EA 14 */	add r29, r12, r29
/* 814F05F8 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F05FC | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F0600 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F0604 | 3B 72 00 04 */	addi r27, r18, 0x4
/* 814F0608 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F060C | 8B D1 00 03 */	lbz r30, 0x3(r17)
/* 814F0610 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F0614 | 7F AC EA 14 */	add r29, r12, r29
/* 814F0618 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F061C | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F0620 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F0624 | 3B 72 00 05 */	addi r27, r18, 0x5
/* 814F0628 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F062C | 8B D1 00 04 */	lbz r30, 0x4(r17)
/* 814F0630 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F0634 | 7F AC EA 14 */	add r29, r12, r29
/* 814F0638 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F063C | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F0640 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F0644 | 3B 72 00 06 */	addi r27, r18, 0x6
/* 814F0648 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F064C | 8B D1 00 05 */	lbz r30, 0x5(r17)
/* 814F0650 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F0654 | 7F AC EA 14 */	add r29, r12, r29
/* 814F0658 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F065C | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F0660 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F0664 | 3B 72 00 07 */	addi r27, r18, 0x7
/* 814F0668 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F066C | 8B D1 00 06 */	lbz r30, 0x6(r17)
/* 814F0670 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F0674 | 7F AC EA 14 */	add r29, r12, r29
/* 814F0678 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F067C | 7F 7D 1E 70 */	srawi r29, r27, 3
/* 814F0680 | 57 7C 07 7E */	clrlwi r28, r27, 29
/* 814F0684 | 3A 52 00 08 */	addi r18, r18, 0x8
/* 814F0688 | 7F 7D 72 14 */	add r27, r29, r14
/* 814F068C | 8B B1 00 07 */	lbz r29, 0x7(r17)
/* 814F0690 | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F0694 | 7F 8C E2 14 */	add r28, r12, r28
/* 814F0698 | 7F BB E1 AE */	stbx r29, r27, r28
/* 814F069C | 3A 31 00 08 */	addi r17, r17, 0x8
/* 814F06A0 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F06A4 | 42 00 FE FC */	bdnz .L_814F05A0
.L_814F06A8:
/* 814F06A8 | 7E 6B 16 70 */	srawi r11, r19, 2
/* 814F06AC | 56 7B 1E F8 */	clrlslwi r27, r19, 30, 3
/* 814F06B0 | 7D 8B D1 D6 */	mullw r12, r11, r26
/* 814F06B4 | 7D D2 C8 50 */	subf r14, r18, r25
/* 814F06B8 | 7D 70 DA 14 */	add r11, r16, r27
/* 814F06BC | 7D C9 03 A6 */	mtctr r14
/* 814F06C0 | 7C 12 C8 00 */	cmpw r18, r25
/* 814F06C4 | 40 80 00 2C */	bge .L_814F06F0
.L_814F06C8:
/* 814F06C8 | 7E 4E 1E 70 */	srawi r14, r18, 3
/* 814F06CC | 56 5C 07 7E */	clrlwi r28, r18, 29
/* 814F06D0 | 7D CE 62 14 */	add r14, r14, r12
/* 814F06D4 | 8B B1 00 00 */	lbz r29, 0x0(r17)
/* 814F06D8 | 55 DB 28 34 */	slwi r27, r14, 5
/* 814F06DC | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814F06E0 | 7D CB E2 14 */	add r14, r11, r28
/* 814F06E4 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 814F06E8 | 7F BB 71 AE */	stbx r29, r27, r14
/* 814F06EC | 42 00 FF DC */	bdnz .L_814F06C8
.L_814F06F0:
/* 814F06F0 | 7E 31 4A 14 */	add r17, r17, r9
/* 814F06F4 | 3A 73 00 01 */	addi r19, r19, 0x1
.L_814F06F8:
/* 814F06F8 | 7C 13 50 00 */	cmpw r19, r10
/* 814F06FC | 41 80 FD D8 */	blt .L_814F04D4
/* 814F0700 | 38 14 00 03 */	addi r0, r20, 0x3
/* 814F0704 | 54 84 F0 BE */	srwi r4, r4, 2
/* 814F0708 | 7C 07 16 70 */	srawi r7, r0, 2
/* 814F070C | 80 CF 00 34 */	lwz r6, 0x34(r15)
/* 814F0710 | 7F 44 3A 14 */	add r26, r4, r7
/* 814F0714 | 7C 64 00 D0 */	neg r3, r4
/* 814F0718 | 7C 04 D0 50 */	subf r0, r4, r26
/* 814F071C | 54 DB E8 FE */	srwi r27, r6, 3
/* 814F0720 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F0724 | 54 60 00 00 */	clrrwi r0, r3, 31
/* 814F0728 | 57 4E 00 00 */	clrrwi r14, r26, 31
/* 814F072C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F0730 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814F0734 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814F0738 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F073C | 20 07 00 08 */	subfic r0, r7, 0x8
/* 814F0740 | 48 00 03 04 */	b .L_814F0A44
.L_814F0744:
/* 814F0744 | 7C 84 D0 00 */	cmpw cr1, r4, r26
/* 814F0748 | 7C 99 23 78 */	mr r25, r4
/* 814F074C | 40 84 02 EC */	bge cr1, .L_814F0A38
/* 814F0750 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814F0754 | 39 7A FF F8 */	subi r11, r26, 0x8
/* 814F0758 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814F075C | 40 81 02 78 */	ble .L_814F09D4
/* 814F0760 | 38 C0 00 00 */	li r6, 0x0
/* 814F0764 | 38 E0 00 00 */	li r7, 0x0
/* 814F0768 | 39 00 00 00 */	li r8, 0x0
/* 814F076C | 39 20 00 00 */	li r9, 0x0
/* 814F0770 | 41 85 00 18 */	bgt cr1, .L_814F0788
/* 814F0774 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F0778 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F077C | 7C 1A 18 00 */	cmpw r26, r3
/* 814F0780 | 41 81 00 08 */	bgt .L_814F0788
/* 814F0784 | 39 20 00 01 */	li r9, 0x1
.L_814F0788:
/* 814F0788 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F078C | 41 82 00 18 */	beq .L_814F07A4
/* 814F0790 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F0794 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F0798 | 7C 04 18 00 */	cmpw r4, r3
/* 814F079C | 41 81 00 08 */	bgt .L_814F07A4
/* 814F07A0 | 39 00 00 01 */	li r8, 0x1
.L_814F07A4:
/* 814F07A4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F07A8 | 41 82 00 14 */	beq .L_814F07BC
/* 814F07AC | 3C 64 80 00 */	addis r3, r4, 0x8000
/* 814F07B0 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814F07B4 | 41 82 00 08 */	beq .L_814F07BC
/* 814F07B8 | 38 E0 00 01 */	li r7, 0x1
.L_814F07BC:
/* 814F07BC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F07C0 | 41 82 00 30 */	beq .L_814F07F0
/* 814F07C4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814F07C8 | 38 E0 00 01 */	li r7, 0x1
/* 814F07CC | 7C 0E 18 00 */	cmpw r14, r3
/* 814F07D0 | 40 82 00 14 */	bne .L_814F07E4
/* 814F07D4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F07D8 | 7C 0E 18 00 */	cmpw r14, r3
/* 814F07DC | 41 82 00 08 */	beq .L_814F07E4
/* 814F07E0 | 38 E0 00 00 */	li r7, 0x0
.L_814F07E4:
/* 814F07E4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F07E8 | 41 82 00 08 */	beq .L_814F07F0
/* 814F07EC | 38 C0 00 01 */	li r6, 0x1
.L_814F07F0:
/* 814F07F0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F07F4 | 41 82 01 E0 */	beq .L_814F09D4
/* 814F07F8 | 7C 86 1E 70 */	srawi r6, r4, 3
/* 814F07FC | 38 6B 00 07 */	addi r3, r11, 0x7
/* 814F0800 | 7C A8 16 70 */	srawi r8, r5, 2
/* 814F0804 | 54 A9 1E F8 */	clrlslwi r9, r5, 30, 3
/* 814F0808 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F080C | 7D 08 D9 D6 */	mullw r8, r8, r27
/* 814F0810 | 7C F8 4A 14 */	add r7, r24, r9
/* 814F0814 | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F0818 | 7D 37 4A 14 */	add r9, r23, r9
/* 814F081C | 7C 69 03 A6 */	mtctr r3
/* 814F0820 | 7C 04 58 00 */	cmpw r4, r11
/* 814F0824 | 40 80 01 B0 */	bge .L_814F09D4
.L_814F0828:
/* 814F0828 | 89 96 00 00 */	lbz r12, 0x0(r22)
/* 814F082C | 57 23 07 7E */	clrlwi r3, r25, 29
/* 814F0830 | 7D 66 42 14 */	add r11, r6, r8
/* 814F0834 | 39 F9 00 01 */	addi r15, r25, 0x1
/* 814F0838 | 3A 2C 00 80 */	addi r17, r12, 0x80
/* 814F083C | 7E 07 1A 14 */	add r16, r7, r3
/* 814F0840 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F0844 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F0848 | 7E 2B 81 AE */	stbx r17, r11, r16
/* 814F084C | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F0850 | 3A 39 00 02 */	addi r17, r25, 0x2
/* 814F0854 | 7E 69 1A 14 */	add r19, r9, r3
/* 814F0858 | 8A 95 00 00 */	lbz r20, 0x0(r21)
/* 814F085C | 7E 52 42 14 */	add r18, r18, r8
/* 814F0860 | 39 F9 00 03 */	addi r15, r25, 0x3
/* 814F0864 | 7E 30 1E 70 */	srawi r16, r17, 3
/* 814F0868 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F086C | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F0870 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F0874 | 7D 70 42 14 */	add r11, r16, r8
/* 814F0878 | 56 53 28 34 */	slwi r19, r18, 5
/* 814F087C | 7E 47 62 14 */	add r18, r7, r12
/* 814F0880 | 8A 96 00 01 */	lbz r20, 0x1(r22)
/* 814F0884 | 7D F0 1E 70 */	srawi r16, r15, 3
/* 814F0888 | 55 F1 07 7E */	clrlwi r17, r15, 29
/* 814F088C | 39 F9 00 04 */	addi r15, r25, 0x4
/* 814F0890 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F0894 | 7D 89 62 14 */	add r12, r9, r12
/* 814F0898 | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F089C | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F08A0 | 55 FF 07 7E */	clrlwi r31, r15, 29
/* 814F08A4 | 3A 99 00 05 */	addi r20, r25, 0x5
/* 814F08A8 | 89 F5 00 01 */	lbz r15, 0x1(r21)
/* 814F08AC | 56 9D 07 7E */	clrlwi r29, r20, 29
/* 814F08B0 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F08B4 | 7E 10 42 14 */	add r16, r16, r8
/* 814F08B8 | 3B 8F 00 80 */	addi r28, r15, 0x80
/* 814F08BC | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F08C0 | 7F 93 61 AE */	stbx r28, r19, r12
/* 814F08C4 | 7E 6F 42 14 */	add r19, r15, r8
/* 814F08C8 | 3B 99 00 06 */	addi r28, r25, 0x6
/* 814F08CC | 7D E7 1A 14 */	add r15, r7, r3
/* 814F08D0 | 8A 96 00 02 */	lbz r20, 0x2(r22)
/* 814F08D4 | 7F 8C 1E 70 */	srawi r12, r28, 3
/* 814F08D8 | 7E 52 42 14 */	add r18, r18, r8
/* 814F08DC | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F08E0 | 3B D4 00 80 */	addi r30, r20, 0x80
/* 814F08E4 | 7E 8C 42 14 */	add r20, r12, r8
/* 814F08E8 | 7F CB 79 AE */	stbx r30, r11, r15
/* 814F08EC | 7D E9 1A 14 */	add r15, r9, r3
/* 814F08F0 | 56 0C 28 34 */	slwi r12, r16, 5
/* 814F08F4 | 7E 07 8A 14 */	add r16, r7, r17
/* 814F08F8 | 88 75 00 02 */	lbz r3, 0x2(r21)
/* 814F08FC | 56 5E 28 34 */	slwi r30, r18, 5
/* 814F0900 | 7E 47 FA 14 */	add r18, r7, r31
/* 814F0904 | 7E 29 8A 14 */	add r17, r9, r17
/* 814F0908 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F090C | 7F E9 FA 14 */	add r31, r9, r31
/* 814F0910 | 7C 6B 79 AE */	stbx r3, r11, r15
/* 814F0914 | 56 63 28 34 */	slwi r3, r19, 5
/* 814F0918 | 7D E7 EA 14 */	add r15, r7, r29
/* 814F091C | 7D 69 EA 14 */	add r11, r9, r29
/* 814F0920 | 8A 76 00 03 */	lbz r19, 0x3(r22)
/* 814F0924 | 56 94 28 34 */	slwi r20, r20, 5
/* 814F0928 | 7F A7 E2 14 */	add r29, r7, r28
/* 814F092C | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F0930 | 7E 6C 81 AE */	stbx r19, r12, r16
/* 814F0934 | 8A 15 00 03 */	lbz r16, 0x3(r21)
/* 814F0938 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F093C | 7E 0C 89 AE */	stbx r16, r12, r17
/* 814F0940 | 89 96 00 04 */	lbz r12, 0x4(r22)
/* 814F0944 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0948 | 7D 9E 91 AE */	stbx r12, r30, r18
/* 814F094C | 89 95 00 04 */	lbz r12, 0x4(r21)
/* 814F0950 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0954 | 7D 9E F9 AE */	stbx r12, r30, r31
/* 814F0958 | 89 96 00 05 */	lbz r12, 0x5(r22)
/* 814F095C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0960 | 7D 83 79 AE */	stbx r12, r3, r15
/* 814F0964 | 89 95 00 05 */	lbz r12, 0x5(r21)
/* 814F0968 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F096C | 7D 83 59 AE */	stbx r12, r3, r11
/* 814F0970 | 88 76 00 06 */	lbz r3, 0x6(r22)
/* 814F0974 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F0978 | 7C 74 E9 AE */	stbx r3, r20, r29
/* 814F097C | 89 95 00 06 */	lbz r12, 0x6(r21)
/* 814F0980 | 38 79 00 07 */	addi r3, r25, 0x7
/* 814F0984 | 54 6F 07 7E */	clrlwi r15, r3, 29
/* 814F0988 | 7D 69 E2 14 */	add r11, r9, r28
/* 814F098C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F0990 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F0994 | 7D 94 59 AE */	stbx r12, r20, r11
/* 814F0998 | 7C 63 42 14 */	add r3, r3, r8
/* 814F099C | 54 70 28 34 */	slwi r16, r3, 5
/* 814F09A0 | 7D 67 7A 14 */	add r11, r7, r15
/* 814F09A4 | 89 96 00 07 */	lbz r12, 0x7(r22)
/* 814F09A8 | 7C 69 7A 14 */	add r3, r9, r15
/* 814F09AC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814F09B0 | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814F09B4 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F09B8 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F09BC | 7D 90 59 AE */	stbx r12, r16, r11
/* 814F09C0 | 89 75 00 07 */	lbz r11, 0x7(r21)
/* 814F09C4 | 3A B5 00 08 */	addi r21, r21, 0x8
/* 814F09C8 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F09CC | 7D 70 19 AE */	stbx r11, r16, r3
/* 814F09D0 | 42 00 FE 58 */	bdnz .L_814F0828
.L_814F09D4:
/* 814F09D4 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F09D8 | 54 A6 1E F8 */	clrlslwi r6, r5, 30, 3
/* 814F09DC | 7D 23 D9 D6 */	mullw r9, r3, r27
/* 814F09E0 | 7C 79 D0 50 */	subf r3, r25, r26
/* 814F09E4 | 7D 18 32 14 */	add r8, r24, r6
/* 814F09E8 | 7D 77 32 14 */	add r11, r23, r6
/* 814F09EC | 7C 69 03 A6 */	mtctr r3
/* 814F09F0 | 7C 19 D0 00 */	cmpw r25, r26
/* 814F09F4 | 40 80 00 44 */	bge .L_814F0A38
.L_814F09F8:
/* 814F09F8 | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814F09FC | 7F 26 1E 70 */	srawi r6, r25, 3
/* 814F0A00 | 7C E6 4A 14 */	add r7, r6, r9
/* 814F0A04 | 57 2C 07 7E */	clrlwi r12, r25, 29
/* 814F0A08 | 38 C3 00 80 */	addi r6, r3, 0x80
/* 814F0A0C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814F0A10 | 54 E7 28 34 */	slwi r7, r7, 5
/* 814F0A14 | 7C 68 62 14 */	add r3, r8, r12
/* 814F0A18 | 7C C7 19 AE */	stbx r6, r7, r3
/* 814F0A1C | 7C 6B 62 14 */	add r3, r11, r12
/* 814F0A20 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F0A24 | 88 D5 00 00 */	lbz r6, 0x0(r21)
/* 814F0A28 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814F0A2C | 38 C6 00 80 */	addi r6, r6, 0x80
/* 814F0A30 | 7C C7 19 AE */	stbx r6, r7, r3
/* 814F0A34 | 42 00 FF C4 */	bdnz .L_814F09F8
.L_814F0A38:
/* 814F0A38 | 7E D6 02 14 */	add r22, r22, r0
/* 814F0A3C | 7E B5 02 14 */	add r21, r21, r0
/* 814F0A40 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F0A44:
/* 814F0A44 | 7C 05 50 00 */	cmpw r5, r10
/* 814F0A48 | 41 80 FC FC */	blt .L_814F0744
/* 814F0A4C | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F0A50 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F0A54 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F043C

# .text:0x6610 | 0x814F0A58 | size: 0x76C
.fn TMCJPEG_814F0A58, local
/* 814F0A58 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F0A5C | 39 00 00 10 */	li r8, 0x10
/* 814F0A60 | 38 E0 00 08 */	li r7, 0x8
/* 814F0A64 | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F0A68 | 39 E3 18 5C */	addi r15, r3, 0x185c
/* 814F0A6C | 3A C3 18 DC */	addi r22, r3, 0x18dc
/* 814F0A70 | 3A A3 19 1C */	addi r21, r3, 0x191c
/* 814F0A74 | 7C B1 2B 78 */	mr r17, r5
/* 814F0A78 | 3F E0 80 00 */	lis r31, 0x8000
/* 814F0A7C | 80 03 19 E4 */	lwz r0, 0x19e4(r3)
/* 814F0A80 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F0A84 | 7C 04 00 D0 */	neg r0, r4
/* 814F0A88 | 54 03 00 00 */	clrrwi r3, r0, 31
/* 814F0A8C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814F0A90 | 8A 06 00 20 */	lbz r16, 0x20(r6)
/* 814F0A94 | 81 46 00 2C */	lwz r10, 0x2c(r6)
/* 814F0A98 | 7D 28 83 D6 */	divw r9, r8, r16
/* 814F0A9C | 81 C6 00 3C */	lwz r14, 0x3c(r6)
/* 814F0AA0 | 83 06 00 40 */	lwz r24, 0x40(r6)
/* 814F0AA4 | 55 54 E8 FE */	srwi r20, r10, 3
/* 814F0AA8 | 82 E6 00 44 */	lwz r23, 0x44(r6)
/* 814F0AAC | 7E 44 4A 14 */	add r18, r4, r9
/* 814F0AB0 | 7D 07 83 D6 */	divw r8, r7, r16
/* 814F0AB4 | 7D 64 90 50 */	subf r11, r4, r18
/* 814F0AB8 | 56 46 00 00 */	clrrwi r6, r18, 31
/* 814F0ABC | 39 8B 00 01 */	addi r12, r11, 0x1
/* 814F0AC0 | 55 67 00 00 */	clrrwi r7, r11, 31
/* 814F0AC4 | 55 80 0F FE */	srwi r0, r12, 31
/* 814F0AC8 | 7C 00 62 14 */	add r0, r0, r12
/* 814F0ACC | 7E 65 42 14 */	add r19, r5, r8
/* 814F0AD0 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814F0AD4 | 55 88 00 00 */	clrrwi r8, r12, 31
/* 814F0AD8 | 21 29 00 10 */	subfic r9, r9, 0x10
/* 814F0ADC | 48 00 03 80 */	b .L_814F0E5C
.L_814F0AE0:
/* 814F0AE0 | 7C 84 90 00 */	cmpw cr1, r4, r18
/* 814F0AE4 | 7C 90 23 78 */	mr r16, r4
/* 814F0AE8 | 40 84 03 6C */	bge cr1, .L_814F0E54
/* 814F0AEC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F0AF0 | 3B 32 FF F0 */	subi r25, r18, 0x10
/* 814F0AF4 | 40 81 02 F0 */	ble .L_814F0DE4
/* 814F0AF8 | 39 60 00 00 */	li r11, 0x0
/* 814F0AFC | 39 80 00 00 */	li r12, 0x0
/* 814F0B00 | 3B 40 00 00 */	li r26, 0x0
/* 814F0B04 | 3B 60 00 00 */	li r27, 0x0
/* 814F0B08 | 3B 80 00 00 */	li r28, 0x0
/* 814F0B0C | 41 85 00 14 */	bgt cr1, .L_814F0B20
/* 814F0B10 | 39 5F FF FD */	subi r10, r31, 0x3
/* 814F0B14 | 7C 12 50 00 */	cmpw r18, r10
/* 814F0B18 | 41 81 00 08 */	bgt .L_814F0B20
/* 814F0B1C | 3B 80 00 01 */	li r28, 0x1
.L_814F0B20:
/* 814F0B20 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F0B24 | 41 82 00 14 */	beq .L_814F0B38
/* 814F0B28 | 39 5F FF FD */	subi r10, r31, 0x3
/* 814F0B2C | 7C 04 50 00 */	cmpw r4, r10
/* 814F0B30 | 41 81 00 08 */	bgt .L_814F0B38
/* 814F0B34 | 3B 60 00 01 */	li r27, 0x1
.L_814F0B38:
/* 814F0B38 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814F0B3C | 41 82 00 14 */	beq .L_814F0B50
/* 814F0B40 | 3D 44 80 00 */	addis r10, r4, 0x8000
/* 814F0B44 | 28 0A 00 00 */	cmplwi r10, 0x0
/* 814F0B48 | 41 82 00 08 */	beq .L_814F0B50
/* 814F0B4C | 3B 40 00 01 */	li r26, 0x1
.L_814F0B50:
/* 814F0B50 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814F0B54 | 41 82 00 28 */	beq .L_814F0B7C
/* 814F0B58 | 7C 06 18 00 */	cmpw r6, r3
/* 814F0B5C | 39 40 00 01 */	li r10, 0x1
/* 814F0B60 | 40 82 00 10 */	bne .L_814F0B70
/* 814F0B64 | 7C 06 38 00 */	cmpw r6, r7
/* 814F0B68 | 41 82 00 08 */	beq .L_814F0B70
/* 814F0B6C | 39 40 00 00 */	li r10, 0x0
.L_814F0B70:
/* 814F0B70 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F0B74 | 41 82 00 08 */	beq .L_814F0B7C
/* 814F0B78 | 39 80 00 01 */	li r12, 0x1
.L_814F0B7C:
/* 814F0B7C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F0B80 | 41 82 00 28 */	beq .L_814F0BA8
/* 814F0B84 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F0B88 | 39 40 00 01 */	li r10, 0x1
/* 814F0B8C | 40 82 00 10 */	bne .L_814F0B9C
/* 814F0B90 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F0B94 | 41 82 00 08 */	beq .L_814F0B9C
/* 814F0B98 | 39 40 00 00 */	li r10, 0x0
.L_814F0B9C:
/* 814F0B9C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F0BA0 | 41 82 00 08 */	beq .L_814F0BA8
/* 814F0BA4 | 39 60 00 01 */	li r11, 0x1
.L_814F0BA8:
/* 814F0BA8 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F0BAC | 41 82 02 38 */	beq .L_814F0DE4
/* 814F0BB0 | 7C 8A 1E 70 */	srawi r10, r4, 3
/* 814F0BB4 | 3B 59 00 0F */	addi r26, r25, 0xf
/* 814F0BB8 | 7E 2B 16 70 */	srawi r11, r17, 2
/* 814F0BBC | 56 3B 1E F8 */	clrlslwi r27, r17, 30, 3
/* 814F0BC0 | 7F 44 D0 50 */	subf r26, r4, r26
/* 814F0BC4 | 7D 8B A1 D6 */	mullw r12, r11, r20
/* 814F0BC8 | 7D 6E DA 14 */	add r11, r14, r27
/* 814F0BCC | 57 5A E1 3E */	srwi r26, r26, 4
/* 814F0BD0 | 7F 49 03 A6 */	mtctr r26
/* 814F0BD4 | 7C 04 C8 00 */	cmpw r4, r25
/* 814F0BD8 | 40 80 02 0C */	bge .L_814F0DE4
.L_814F0BDC:
/* 814F0BDC | 56 1B 07 7E */	clrlwi r27, r16, 29
/* 814F0BE0 | 7F 4A 62 14 */	add r26, r10, r12
/* 814F0BE4 | 57 5C 28 34 */	slwi r28, r26, 5
/* 814F0BE8 | 8B 2F 00 00 */	lbz r25, 0x0(r15)
/* 814F0BEC | 7F 6B DA 14 */	add r27, r11, r27
/* 814F0BF0 | 3B 50 00 01 */	addi r26, r16, 0x1
/* 814F0BF4 | 7F 3C D9 AE */	stbx r25, r28, r27
/* 814F0BF8 | 7F 59 1E 70 */	srawi r25, r26, 3
/* 814F0BFC | 57 5A 07 7E */	clrlwi r26, r26, 29
/* 814F0C00 | 3B 90 00 02 */	addi r28, r16, 0x2
/* 814F0C04 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0C08 | 8B 6F 00 01 */	lbz r27, 0x1(r15)
/* 814F0C0C | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0C10 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0C14 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0C18 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0C1C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0C20 | 3B 90 00 03 */	addi r28, r16, 0x3
/* 814F0C24 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0C28 | 8B 6F 00 02 */	lbz r27, 0x2(r15)
/* 814F0C2C | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0C30 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0C34 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0C38 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0C3C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0C40 | 3B 90 00 04 */	addi r28, r16, 0x4
/* 814F0C44 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0C48 | 8B 6F 00 03 */	lbz r27, 0x3(r15)
/* 814F0C4C | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0C50 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0C54 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0C58 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0C5C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0C60 | 3B 90 00 05 */	addi r28, r16, 0x5
/* 814F0C64 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0C68 | 8B 6F 00 04 */	lbz r27, 0x4(r15)
/* 814F0C6C | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0C70 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0C74 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0C78 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0C7C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0C80 | 3B 90 00 06 */	addi r28, r16, 0x6
/* 814F0C84 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0C88 | 8B 6F 00 05 */	lbz r27, 0x5(r15)
/* 814F0C8C | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0C90 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0C94 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0C98 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0C9C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0CA0 | 3B 90 00 07 */	addi r28, r16, 0x7
/* 814F0CA4 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0CA8 | 8B 6F 00 06 */	lbz r27, 0x6(r15)
/* 814F0CAC | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0CB0 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0CB4 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0CB8 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0CBC | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0CC0 | 3B 90 00 08 */	addi r28, r16, 0x8
/* 814F0CC4 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0CC8 | 8B 6F 00 07 */	lbz r27, 0x7(r15)
/* 814F0CCC | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0CD0 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0CD4 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0CD8 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0CDC | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0CE0 | 3B 90 00 09 */	addi r28, r16, 0x9
/* 814F0CE4 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0CE8 | 8B 6F 00 08 */	lbz r27, 0x8(r15)
/* 814F0CEC | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0CF0 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0CF4 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0CF8 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0CFC | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F0D00 | 3B 90 00 0A */	addi r28, r16, 0xa
/* 814F0D04 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0D08 | 8B 6F 00 09 */	lbz r27, 0x9(r15)
/* 814F0D0C | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0D10 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0D14 | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0D18 | 7F 99 1E 70 */	srawi r25, r28, 3
/* 814F0D1C | 57 9B 07 7E */	clrlwi r27, r28, 29
/* 814F0D20 | 7F 39 62 14 */	add r25, r25, r12
/* 814F0D24 | 8B 8F 00 0A */	lbz r28, 0xa(r15)
/* 814F0D28 | 57 3A 28 34 */	slwi r26, r25, 5
/* 814F0D2C | 7F 2B DA 14 */	add r25, r11, r27
/* 814F0D30 | 7F 9A C9 AE */	stbx r28, r26, r25
/* 814F0D34 | 3B 70 00 0B */	addi r27, r16, 0xb
/* 814F0D38 | 8B 8F 00 0B */	lbz r28, 0xb(r15)
/* 814F0D3C | 7F 79 1E 70 */	srawi r25, r27, 3
/* 814F0D40 | 3B D0 00 0C */	addi r30, r16, 0xc
/* 814F0D44 | 57 7B 07 7E */	clrlwi r27, r27, 29
/* 814F0D48 | 3B 50 00 0D */	addi r26, r16, 0xd
/* 814F0D4C | 7F 39 62 14 */	add r25, r25, r12
/* 814F0D50 | 7F DD 1E 70 */	srawi r29, r30, 3
/* 814F0D54 | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0D58 | 7F 6B DA 14 */	add r27, r11, r27
/* 814F0D5C | 7F 99 D9 AE */	stbx r28, r25, r27
/* 814F0D60 | 7F 7D 62 14 */	add r27, r29, r12
/* 814F0D64 | 57 D9 07 7E */	clrlwi r25, r30, 29
/* 814F0D68 | 7F 5D 1E 70 */	srawi r29, r26, 3
/* 814F0D6C | 7F CB CA 14 */	add r30, r11, r25
/* 814F0D70 | 8B 8F 00 0C */	lbz r28, 0xc(r15)
/* 814F0D74 | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F0D78 | 3B 30 00 0E */	addi r25, r16, 0xe
/* 814F0D7C | 7F 9B F1 AE */	stbx r28, r27, r30
/* 814F0D80 | 57 5E 07 7E */	clrlwi r30, r26, 29
/* 814F0D84 | 7F 5D 62 14 */	add r26, r29, r12
/* 814F0D88 | 3B 90 00 0F */	addi r28, r16, 0xf
/* 814F0D8C | 8B 6F 00 0D */	lbz r27, 0xd(r15)
/* 814F0D90 | 57 5A 28 34 */	slwi r26, r26, 5
/* 814F0D94 | 7F CB F2 14 */	add r30, r11, r30
/* 814F0D98 | 7F 3D 1E 70 */	srawi r29, r25, 3
/* 814F0D9C | 7F 7A F1 AE */	stbx r27, r26, r30
/* 814F0DA0 | 57 3A 07 7E */	clrlwi r26, r25, 29
/* 814F0DA4 | 7F 3D 62 14 */	add r25, r29, r12
/* 814F0DA8 | 7F 9D 1E 70 */	srawi r29, r28, 3
/* 814F0DAC | 8B 6F 00 0E */	lbz r27, 0xe(r15)
/* 814F0DB0 | 57 39 28 34 */	slwi r25, r25, 5
/* 814F0DB4 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F0DB8 | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F0DBC | 7F 79 D1 AE */	stbx r27, r25, r26
/* 814F0DC0 | 7F 3D 62 14 */	add r25, r29, r12
/* 814F0DC4 | 57 3A 28 34 */	slwi r26, r25, 5
/* 814F0DC8 | 39 4A 00 02 */	addi r10, r10, 0x2
/* 814F0DCC | 8B 6F 00 0F */	lbz r27, 0xf(r15)
/* 814F0DD0 | 7F 2B E2 14 */	add r25, r11, r28
/* 814F0DD4 | 3A 10 00 10 */	addi r16, r16, 0x10
/* 814F0DD8 | 39 EF 00 10 */	addi r15, r15, 0x10
/* 814F0DDC | 7F 7A C9 AE */	stbx r27, r26, r25
/* 814F0DE0 | 42 00 FD FC */	bdnz .L_814F0BDC
.L_814F0DE4:
/* 814F0DE4 | 7E 2B 16 70 */	srawi r11, r17, 2
/* 814F0DE8 | 39 52 00 01 */	addi r10, r18, 0x1
/* 814F0DEC | 7D 50 50 50 */	subf r10, r16, r10
/* 814F0DF0 | 56 2C 1E F8 */	clrlslwi r12, r17, 30, 3
/* 814F0DF4 | 7F 4B A1 D6 */	mullw r26, r11, r20
/* 814F0DF8 | 55 4A F8 7E */	srwi r10, r10, 1
/* 814F0DFC | 7F 2E 62 14 */	add r25, r14, r12
/* 814F0E00 | 7D 49 03 A6 */	mtctr r10
/* 814F0E04 | 7C 10 90 00 */	cmpw r16, r18
/* 814F0E08 | 40 80 00 4C */	bge .L_814F0E54
.L_814F0E0C:
/* 814F0E0C | 7E 0A 1E 70 */	srawi r10, r16, 3
/* 814F0E10 | 56 0B 07 7E */	clrlwi r11, r16, 29
/* 814F0E14 | 7D 4A D2 14 */	add r10, r10, r26
/* 814F0E18 | 89 8F 00 00 */	lbz r12, 0x0(r15)
/* 814F0E1C | 55 4A 28 34 */	slwi r10, r10, 5
/* 814F0E20 | 7D 79 5A 14 */	add r11, r25, r11
/* 814F0E24 | 3B 90 00 01 */	addi r28, r16, 0x1
/* 814F0E28 | 7D 8A 59 AE */	stbx r12, r10, r11
/* 814F0E2C | 7F 9B 1E 70 */	srawi r27, r28, 3
/* 814F0E30 | 3A 10 00 02 */	addi r16, r16, 0x2
/* 814F0E34 | 7D 5B D2 14 */	add r10, r27, r26
/* 814F0E38 | 8B 6F 00 01 */	lbz r27, 0x1(r15)
/* 814F0E3C | 57 8C 07 7E */	clrlwi r12, r28, 29
/* 814F0E40 | 39 EF 00 02 */	addi r15, r15, 0x2
/* 814F0E44 | 55 4B 28 34 */	slwi r11, r10, 5
/* 814F0E48 | 7D 59 62 14 */	add r10, r25, r12
/* 814F0E4C | 7F 6B 51 AE */	stbx r27, r11, r10
/* 814F0E50 | 42 00 FF BC */	bdnz .L_814F0E0C
.L_814F0E54:
/* 814F0E54 | 7D EF 4A 14 */	add r15, r15, r9
/* 814F0E58 | 3A 31 00 01 */	addi r17, r17, 0x1
.L_814F0E5C:
/* 814F0E5C | 7C 11 98 00 */	cmpw r17, r19
/* 814F0E60 | 41 80 FC 80 */	blt .L_814F0AE0
/* 814F0E64 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F0E68 | 38 C0 00 08 */	li r6, 0x8
/* 814F0E6C | 54 84 F8 7E */	srwi r4, r4, 1
/* 814F0E70 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814F0E74 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814F0E78 | 7C C6 03 D6 */	divw r6, r6, r0
/* 814F0E7C | 7C 04 00 D0 */	neg r0, r4
/* 814F0E80 | 54 7B E8 FE */	srwi r27, r3, 3
/* 814F0E84 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814F0E88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F0E8C | 7F 44 32 14 */	add r26, r4, r6
/* 814F0E90 | 7D C4 D0 50 */	subf r14, r4, r26
/* 814F0E94 | 7C 05 32 14 */	add r0, r5, r6
/* 814F0E98 | 55 C3 00 00 */	clrrwi r3, r14, 31
/* 814F0E9C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F0EA0 | 20 C6 00 08 */	subfic r6, r6, 0x8
/* 814F0EA4 | 57 40 00 00 */	clrrwi r0, r26, 31
/* 814F0EA8 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 814F0EAC | 48 00 03 00 */	b .L_814F11AC
.L_814F0EB0:
/* 814F0EB0 | 7C 84 D0 00 */	cmpw cr1, r4, r26
/* 814F0EB4 | 7C 99 23 78 */	mr r25, r4
/* 814F0EB8 | 40 84 02 E8 */	bge cr1, .L_814F11A0
/* 814F0EBC | 2C 0E 00 08 */	cmpwi r14, 0x8
/* 814F0EC0 | 39 7A FF F8 */	subi r11, r26, 0x8
/* 814F0EC4 | 40 81 02 78 */	ble .L_814F113C
/* 814F0EC8 | 38 E0 00 00 */	li r7, 0x0
/* 814F0ECC | 39 00 00 00 */	li r8, 0x0
/* 814F0ED0 | 39 20 00 00 */	li r9, 0x0
/* 814F0ED4 | 39 40 00 00 */	li r10, 0x0
/* 814F0ED8 | 41 85 00 18 */	bgt cr1, .L_814F0EF0
/* 814F0EDC | 3C 60 80 00 */	lis r3, 0x8000
/* 814F0EE0 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F0EE4 | 7C 1A 18 00 */	cmpw r26, r3
/* 814F0EE8 | 41 81 00 08 */	bgt .L_814F0EF0
/* 814F0EEC | 39 40 00 01 */	li r10, 0x1
.L_814F0EF0:
/* 814F0EF0 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F0EF4 | 41 82 00 18 */	beq .L_814F0F0C
/* 814F0EF8 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F0EFC | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F0F00 | 7C 04 18 00 */	cmpw r4, r3
/* 814F0F04 | 41 81 00 08 */	bgt .L_814F0F0C
/* 814F0F08 | 39 20 00 01 */	li r9, 0x1
.L_814F0F0C:
/* 814F0F0C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F0F10 | 41 82 00 14 */	beq .L_814F0F24
/* 814F0F14 | 3C 64 80 00 */	addis r3, r4, 0x8000
/* 814F0F18 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814F0F1C | 41 82 00 08 */	beq .L_814F0F24
/* 814F0F20 | 39 00 00 01 */	li r8, 0x1
.L_814F0F24:
/* 814F0F24 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F0F28 | 41 82 00 30 */	beq .L_814F0F58
/* 814F0F2C | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814F0F30 | 39 00 00 01 */	li r8, 0x1
/* 814F0F34 | 7C 00 18 00 */	cmpw r0, r3
/* 814F0F38 | 40 82 00 14 */	bne .L_814F0F4C
/* 814F0F3C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814F0F40 | 7C 00 18 00 */	cmpw r0, r3
/* 814F0F44 | 41 82 00 08 */	beq .L_814F0F4C
/* 814F0F48 | 39 00 00 00 */	li r8, 0x0
.L_814F0F4C:
/* 814F0F4C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F0F50 | 41 82 00 08 */	beq .L_814F0F58
/* 814F0F54 | 38 E0 00 01 */	li r7, 0x1
.L_814F0F58:
/* 814F0F58 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F0F5C | 41 82 01 E0 */	beq .L_814F113C
/* 814F0F60 | 7C 87 1E 70 */	srawi r7, r4, 3
/* 814F0F64 | 38 6B 00 07 */	addi r3, r11, 0x7
/* 814F0F68 | 7C A9 16 70 */	srawi r9, r5, 2
/* 814F0F6C | 54 AA 1E F8 */	clrlslwi r10, r5, 30, 3
/* 814F0F70 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F0F74 | 7D 29 D9 D6 */	mullw r9, r9, r27
/* 814F0F78 | 7D 18 52 14 */	add r8, r24, r10
/* 814F0F7C | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F0F80 | 7D 57 52 14 */	add r10, r23, r10
/* 814F0F84 | 7C 69 03 A6 */	mtctr r3
/* 814F0F88 | 7C 04 58 00 */	cmpw r4, r11
/* 814F0F8C | 40 80 01 B0 */	bge .L_814F113C
.L_814F0F90:
/* 814F0F90 | 89 96 00 00 */	lbz r12, 0x0(r22)
/* 814F0F94 | 57 23 07 7E */	clrlwi r3, r25, 29
/* 814F0F98 | 7D 67 4A 14 */	add r11, r7, r9
/* 814F0F9C | 39 F9 00 01 */	addi r15, r25, 0x1
/* 814F0FA0 | 3A 2C 00 80 */	addi r17, r12, 0x80
/* 814F0FA4 | 7E 08 1A 14 */	add r16, r8, r3
/* 814F0FA8 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F0FAC | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F0FB0 | 7E 2B 81 AE */	stbx r17, r11, r16
/* 814F0FB4 | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F0FB8 | 3A 39 00 02 */	addi r17, r25, 0x2
/* 814F0FBC | 7E 6A 1A 14 */	add r19, r10, r3
/* 814F0FC0 | 8A 95 00 00 */	lbz r20, 0x0(r21)
/* 814F0FC4 | 7E 52 4A 14 */	add r18, r18, r9
/* 814F0FC8 | 39 F9 00 03 */	addi r15, r25, 0x3
/* 814F0FCC | 7E 30 1E 70 */	srawi r16, r17, 3
/* 814F0FD0 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F0FD4 | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F0FD8 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F0FDC | 7D 70 4A 14 */	add r11, r16, r9
/* 814F0FE0 | 56 53 28 34 */	slwi r19, r18, 5
/* 814F0FE4 | 7E 48 62 14 */	add r18, r8, r12
/* 814F0FE8 | 8A 96 00 01 */	lbz r20, 0x1(r22)
/* 814F0FEC | 7D F0 1E 70 */	srawi r16, r15, 3
/* 814F0FF0 | 55 F1 07 7E */	clrlwi r17, r15, 29
/* 814F0FF4 | 39 F9 00 04 */	addi r15, r25, 0x4
/* 814F0FF8 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F0FFC | 7D 8A 62 14 */	add r12, r10, r12
/* 814F1000 | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F1004 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F1008 | 55 FF 07 7E */	clrlwi r31, r15, 29
/* 814F100C | 3A 99 00 05 */	addi r20, r25, 0x5
/* 814F1010 | 89 F5 00 01 */	lbz r15, 0x1(r21)
/* 814F1014 | 56 9D 07 7E */	clrlwi r29, r20, 29
/* 814F1018 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F101C | 7E 10 4A 14 */	add r16, r16, r9
/* 814F1020 | 3B 8F 00 80 */	addi r28, r15, 0x80
/* 814F1024 | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F1028 | 7F 93 61 AE */	stbx r28, r19, r12
/* 814F102C | 7E 6F 4A 14 */	add r19, r15, r9
/* 814F1030 | 3B 99 00 06 */	addi r28, r25, 0x6
/* 814F1034 | 7D E8 1A 14 */	add r15, r8, r3
/* 814F1038 | 8A 96 00 02 */	lbz r20, 0x2(r22)
/* 814F103C | 7F 8C 1E 70 */	srawi r12, r28, 3
/* 814F1040 | 7E 52 4A 14 */	add r18, r18, r9
/* 814F1044 | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F1048 | 3B D4 00 80 */	addi r30, r20, 0x80
/* 814F104C | 7E 8C 4A 14 */	add r20, r12, r9
/* 814F1050 | 7F CB 79 AE */	stbx r30, r11, r15
/* 814F1054 | 7D EA 1A 14 */	add r15, r10, r3
/* 814F1058 | 56 0C 28 34 */	slwi r12, r16, 5
/* 814F105C | 7E 08 8A 14 */	add r16, r8, r17
/* 814F1060 | 88 75 00 02 */	lbz r3, 0x2(r21)
/* 814F1064 | 56 5E 28 34 */	slwi r30, r18, 5
/* 814F1068 | 7E 48 FA 14 */	add r18, r8, r31
/* 814F106C | 7E 2A 8A 14 */	add r17, r10, r17
/* 814F1070 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F1074 | 7F EA FA 14 */	add r31, r10, r31
/* 814F1078 | 7C 6B 79 AE */	stbx r3, r11, r15
/* 814F107C | 56 63 28 34 */	slwi r3, r19, 5
/* 814F1080 | 7D E8 EA 14 */	add r15, r8, r29
/* 814F1084 | 7D 6A EA 14 */	add r11, r10, r29
/* 814F1088 | 8A 76 00 03 */	lbz r19, 0x3(r22)
/* 814F108C | 56 94 28 34 */	slwi r20, r20, 5
/* 814F1090 | 7F A8 E2 14 */	add r29, r8, r28
/* 814F1094 | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F1098 | 7E 6C 81 AE */	stbx r19, r12, r16
/* 814F109C | 8A 15 00 03 */	lbz r16, 0x3(r21)
/* 814F10A0 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F10A4 | 7E 0C 89 AE */	stbx r16, r12, r17
/* 814F10A8 | 89 96 00 04 */	lbz r12, 0x4(r22)
/* 814F10AC | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F10B0 | 7D 9E 91 AE */	stbx r12, r30, r18
/* 814F10B4 | 89 95 00 04 */	lbz r12, 0x4(r21)
/* 814F10B8 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F10BC | 7D 9E F9 AE */	stbx r12, r30, r31
/* 814F10C0 | 89 96 00 05 */	lbz r12, 0x5(r22)
/* 814F10C4 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F10C8 | 7D 83 79 AE */	stbx r12, r3, r15
/* 814F10CC | 89 95 00 05 */	lbz r12, 0x5(r21)
/* 814F10D0 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F10D4 | 7D 83 59 AE */	stbx r12, r3, r11
/* 814F10D8 | 88 76 00 06 */	lbz r3, 0x6(r22)
/* 814F10DC | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F10E0 | 7C 74 E9 AE */	stbx r3, r20, r29
/* 814F10E4 | 89 95 00 06 */	lbz r12, 0x6(r21)
/* 814F10E8 | 38 79 00 07 */	addi r3, r25, 0x7
/* 814F10EC | 54 6F 07 7E */	clrlwi r15, r3, 29
/* 814F10F0 | 7D 6A E2 14 */	add r11, r10, r28
/* 814F10F4 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F10F8 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F10FC | 7D 94 59 AE */	stbx r12, r20, r11
/* 814F1100 | 7C 63 4A 14 */	add r3, r3, r9
/* 814F1104 | 54 70 28 34 */	slwi r16, r3, 5
/* 814F1108 | 7D 68 7A 14 */	add r11, r8, r15
/* 814F110C | 89 96 00 07 */	lbz r12, 0x7(r22)
/* 814F1110 | 7C 6A 7A 14 */	add r3, r10, r15
/* 814F1114 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814F1118 | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814F111C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F1120 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F1124 | 7D 90 59 AE */	stbx r12, r16, r11
/* 814F1128 | 89 75 00 07 */	lbz r11, 0x7(r21)
/* 814F112C | 3A B5 00 08 */	addi r21, r21, 0x8
/* 814F1130 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1134 | 7D 70 19 AE */	stbx r11, r16, r3
/* 814F1138 | 42 00 FE 58 */	bdnz .L_814F0F90
.L_814F113C:
/* 814F113C | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F1140 | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F1144 | 7D 43 D9 D6 */	mullw r10, r3, r27
/* 814F1148 | 7C 79 D0 50 */	subf r3, r25, r26
/* 814F114C | 7D 38 3A 14 */	add r9, r24, r7
/* 814F1150 | 7D 77 3A 14 */	add r11, r23, r7
/* 814F1154 | 7C 69 03 A6 */	mtctr r3
/* 814F1158 | 7C 19 D0 00 */	cmpw r25, r26
/* 814F115C | 40 80 00 44 */	bge .L_814F11A0
.L_814F1160:
/* 814F1160 | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814F1164 | 7F 27 1E 70 */	srawi r7, r25, 3
/* 814F1168 | 7D 07 52 14 */	add r8, r7, r10
/* 814F116C | 57 2C 07 7E */	clrlwi r12, r25, 29
/* 814F1170 | 38 E3 00 80 */	addi r7, r3, 0x80
/* 814F1174 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814F1178 | 55 08 28 34 */	slwi r8, r8, 5
/* 814F117C | 7C 69 62 14 */	add r3, r9, r12
/* 814F1180 | 7C E8 19 AE */	stbx r7, r8, r3
/* 814F1184 | 7C 6B 62 14 */	add r3, r11, r12
/* 814F1188 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F118C | 88 F5 00 00 */	lbz r7, 0x0(r21)
/* 814F1190 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814F1194 | 38 E7 00 80 */	addi r7, r7, 0x80
/* 814F1198 | 7C E8 19 AE */	stbx r7, r8, r3
/* 814F119C | 42 00 FF C4 */	bdnz .L_814F1160
.L_814F11A0:
/* 814F11A0 | 7E D6 32 14 */	add r22, r22, r6
/* 814F11A4 | 7E B5 32 14 */	add r21, r21, r6
/* 814F11A8 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F11AC:
/* 814F11AC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814F11B0 | 7C 05 18 00 */	cmpw r5, r3
/* 814F11B4 | 41 80 FC FC */	blt .L_814F0EB0
/* 814F11B8 | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F11BC | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F11C0 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F0A58

# .text:0x6D7C | 0x814F11C4 | size: 0x61C
.fn TMCJPEG_814F11C4, local
/* 814F11C4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F11C8 | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F11CC | 3A 23 18 5C */	addi r17, r3, 0x185c
/* 814F11D0 | 3A C3 18 DC */	addi r22, r3, 0x18dc
/* 814F11D4 | 3A A3 19 1C */	addi r21, r3, 0x191c
/* 814F11D8 | 81 E3 19 E4 */	lwz r15, 0x19e4(r3)
/* 814F11DC | 80 0F 00 18 */	lwz r0, 0x18(r15)
/* 814F11E0 | 80 CF 00 2C */	lwz r6, 0x2c(r15)
/* 814F11E4 | 7C 00 20 40 */	cmplw r0, r4
/* 814F11E8 | 82 0F 00 3C */	lwz r16, 0x3c(r15)
/* 814F11EC | 83 0F 00 40 */	lwz r24, 0x40(r15)
/* 814F11F0 | 54 DA E8 FE */	srwi r26, r6, 3
/* 814F11F4 | 82 EF 00 44 */	lwz r23, 0x44(r15)
/* 814F11F8 | 40 82 00 0C */	bne .L_814F1204
/* 814F11FC | 8A 8F 00 16 */	lbz r20, 0x16(r15)
/* 814F1200 | 48 00 00 10 */	b .L_814F1210
.L_814F1204:
/* 814F1204 | 88 0F 00 20 */	lbz r0, 0x20(r15)
/* 814F1208 | 38 60 00 10 */	li r3, 0x10
/* 814F120C | 7E 83 03 D6 */	divw r20, r3, r0
.L_814F1210:
/* 814F1210 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814F1214 | 7C 00 28 40 */	cmplw r0, r5
/* 814F1218 | 40 82 00 0C */	bne .L_814F1224
/* 814F121C | 88 CF 00 17 */	lbz r6, 0x17(r15)
/* 814F1220 | 48 00 00 10 */	b .L_814F1230
.L_814F1224:
/* 814F1224 | 88 0F 00 20 */	lbz r0, 0x20(r15)
/* 814F1228 | 38 60 00 08 */	li r3, 0x8
/* 814F122C | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F1230:
/* 814F1230 | 7F 24 A2 14 */	add r25, r4, r20
/* 814F1234 | 7C 64 00 D0 */	neg r3, r4
/* 814F1238 | 7C 04 C8 50 */	subf r0, r4, r25
/* 814F123C | 7D 45 32 14 */	add r10, r5, r6
/* 814F1240 | 54 66 00 00 */	clrrwi r6, r3, 31
/* 814F1244 | 7C B3 2B 78 */	mr r19, r5
/* 814F1248 | 57 27 00 00 */	clrrwi r7, r25, 31
/* 814F124C | 54 08 00 00 */	clrrwi r8, r0, 31
/* 814F1250 | 21 34 00 10 */	subfic r9, r20, 0x10
/* 814F1254 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F1258 | 48 00 02 28 */	b .L_814F1480
.L_814F125C:
/* 814F125C | 7C 84 C8 00 */	cmpw cr1, r4, r25
/* 814F1260 | 7C 92 23 78 */	mr r18, r4
/* 814F1264 | 40 84 02 14 */	bge cr1, .L_814F1478
/* 814F1268 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F126C | 3B 79 FF F8 */	subi r27, r25, 0x8
/* 814F1270 | 40 81 01 C0 */	ble .L_814F1430
/* 814F1274 | 39 80 00 00 */	li r12, 0x0
/* 814F1278 | 39 C0 00 00 */	li r14, 0x0
/* 814F127C | 3B 80 00 00 */	li r28, 0x0
/* 814F1280 | 3B A0 00 00 */	li r29, 0x0
/* 814F1284 | 41 85 00 14 */	bgt cr1, .L_814F1298
/* 814F1288 | 39 63 FF FE */	subi r11, r3, 0x2
/* 814F128C | 7C 19 58 00 */	cmpw r25, r11
/* 814F1290 | 41 81 00 08 */	bgt .L_814F1298
/* 814F1294 | 3B A0 00 01 */	li r29, 0x1
.L_814F1298:
/* 814F1298 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814F129C | 41 82 00 14 */	beq .L_814F12B0
/* 814F12A0 | 39 63 FF FE */	subi r11, r3, 0x2
/* 814F12A4 | 7C 04 58 00 */	cmpw r4, r11
/* 814F12A8 | 41 81 00 08 */	bgt .L_814F12B0
/* 814F12AC | 3B 80 00 01 */	li r28, 0x1
.L_814F12B0:
/* 814F12B0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F12B4 | 41 82 00 14 */	beq .L_814F12C8
/* 814F12B8 | 3D 64 80 00 */	addis r11, r4, 0x8000
/* 814F12BC | 28 0B 00 00 */	cmplwi r11, 0x0
/* 814F12C0 | 41 82 00 08 */	beq .L_814F12C8
/* 814F12C4 | 39 C0 00 01 */	li r14, 0x1
.L_814F12C8:
/* 814F12C8 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 814F12CC | 41 82 00 28 */	beq .L_814F12F4
/* 814F12D0 | 7C 07 30 00 */	cmpw r7, r6
/* 814F12D4 | 39 60 00 01 */	li r11, 0x1
/* 814F12D8 | 40 82 00 10 */	bne .L_814F12E8
/* 814F12DC | 7C 07 40 00 */	cmpw r7, r8
/* 814F12E0 | 41 82 00 08 */	beq .L_814F12E8
/* 814F12E4 | 39 60 00 00 */	li r11, 0x0
.L_814F12E8:
/* 814F12E8 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F12EC | 41 82 00 08 */	beq .L_814F12F4
/* 814F12F0 | 39 80 00 01 */	li r12, 0x1
.L_814F12F4:
/* 814F12F4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F12F8 | 41 82 01 38 */	beq .L_814F1430
/* 814F12FC | 7C 8B 1E 70 */	srawi r11, r4, 3
/* 814F1300 | 3B 9B 00 07 */	addi r28, r27, 0x7
/* 814F1304 | 7E 6C 16 70 */	srawi r12, r19, 2
/* 814F1308 | 56 7D 1E F8 */	clrlslwi r29, r19, 30, 3
/* 814F130C | 7F 84 E0 50 */	subf r28, r4, r28
/* 814F1310 | 7D CC D1 D6 */	mullw r14, r12, r26
/* 814F1314 | 7D 90 EA 14 */	add r12, r16, r29
/* 814F1318 | 57 9C E8 FE */	srwi r28, r28, 3
/* 814F131C | 7F 89 03 A6 */	mtctr r28
/* 814F1320 | 7C 04 D8 00 */	cmpw r4, r27
/* 814F1324 | 40 80 01 0C */	bge .L_814F1430
.L_814F1328:
/* 814F1328 | 7F 6B 72 14 */	add r27, r11, r14
/* 814F132C | 56 5D 07 7E */	clrlwi r29, r18, 29
/* 814F1330 | 57 7C 28 34 */	slwi r28, r27, 5
/* 814F1334 | 8B D1 00 00 */	lbz r30, 0x0(r17)
/* 814F1338 | 7F AC EA 14 */	add r29, r12, r29
/* 814F133C | 3B 72 00 01 */	addi r27, r18, 0x1
/* 814F1340 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F1344 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F1348 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F134C | 3B 72 00 02 */	addi r27, r18, 0x2
/* 814F1350 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F1354 | 8B D1 00 01 */	lbz r30, 0x1(r17)
/* 814F1358 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F135C | 7F AC EA 14 */	add r29, r12, r29
/* 814F1360 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F1364 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F1368 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F136C | 3B 72 00 03 */	addi r27, r18, 0x3
/* 814F1370 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F1374 | 8B D1 00 02 */	lbz r30, 0x2(r17)
/* 814F1378 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F137C | 7F AC EA 14 */	add r29, r12, r29
/* 814F1380 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F1384 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F1388 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F138C | 3B 72 00 04 */	addi r27, r18, 0x4
/* 814F1390 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F1394 | 8B D1 00 03 */	lbz r30, 0x3(r17)
/* 814F1398 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F139C | 7F AC EA 14 */	add r29, r12, r29
/* 814F13A0 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F13A4 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F13A8 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F13AC | 3B 72 00 05 */	addi r27, r18, 0x5
/* 814F13B0 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F13B4 | 8B D1 00 04 */	lbz r30, 0x4(r17)
/* 814F13B8 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F13BC | 7F AC EA 14 */	add r29, r12, r29
/* 814F13C0 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F13C4 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F13C8 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F13CC | 3B 72 00 06 */	addi r27, r18, 0x6
/* 814F13D0 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F13D4 | 8B D1 00 05 */	lbz r30, 0x5(r17)
/* 814F13D8 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F13DC | 7F AC EA 14 */	add r29, r12, r29
/* 814F13E0 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F13E4 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F13E8 | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F13EC | 3B 72 00 07 */	addi r27, r18, 0x7
/* 814F13F0 | 7F 9C 72 14 */	add r28, r28, r14
/* 814F13F4 | 8B D1 00 06 */	lbz r30, 0x6(r17)
/* 814F13F8 | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F13FC | 7F AC EA 14 */	add r29, r12, r29
/* 814F1400 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F1404 | 7F 7D 1E 70 */	srawi r29, r27, 3
/* 814F1408 | 57 7C 07 7E */	clrlwi r28, r27, 29
/* 814F140C | 3A 52 00 08 */	addi r18, r18, 0x8
/* 814F1410 | 7F 7D 72 14 */	add r27, r29, r14
/* 814F1414 | 8B B1 00 07 */	lbz r29, 0x7(r17)
/* 814F1418 | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F141C | 7F 8C E2 14 */	add r28, r12, r28
/* 814F1420 | 7F BB E1 AE */	stbx r29, r27, r28
/* 814F1424 | 3A 31 00 08 */	addi r17, r17, 0x8
/* 814F1428 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F142C | 42 00 FE FC */	bdnz .L_814F1328
.L_814F1430:
/* 814F1430 | 7E 6B 16 70 */	srawi r11, r19, 2
/* 814F1434 | 56 7B 1E F8 */	clrlslwi r27, r19, 30, 3
/* 814F1438 | 7D 8B D1 D6 */	mullw r12, r11, r26
/* 814F143C | 7D D2 C8 50 */	subf r14, r18, r25
/* 814F1440 | 7D 70 DA 14 */	add r11, r16, r27
/* 814F1444 | 7D C9 03 A6 */	mtctr r14
/* 814F1448 | 7C 12 C8 00 */	cmpw r18, r25
/* 814F144C | 40 80 00 2C */	bge .L_814F1478
.L_814F1450:
/* 814F1450 | 7E 4E 1E 70 */	srawi r14, r18, 3
/* 814F1454 | 56 5C 07 7E */	clrlwi r28, r18, 29
/* 814F1458 | 7D CE 62 14 */	add r14, r14, r12
/* 814F145C | 8B B1 00 00 */	lbz r29, 0x0(r17)
/* 814F1460 | 55 DB 28 34 */	slwi r27, r14, 5
/* 814F1464 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814F1468 | 7D CB E2 14 */	add r14, r11, r28
/* 814F146C | 3A 31 00 01 */	addi r17, r17, 0x1
/* 814F1470 | 7F BB 71 AE */	stbx r29, r27, r14
/* 814F1474 | 42 00 FF DC */	bdnz .L_814F1450
.L_814F1478:
/* 814F1478 | 7E 31 4A 14 */	add r17, r17, r9
/* 814F147C | 3A 73 00 01 */	addi r19, r19, 0x1
.L_814F1480:
/* 814F1480 | 7C 13 50 00 */	cmpw r19, r10
/* 814F1484 | 41 80 FD D8 */	blt .L_814F125C
/* 814F1488 | 38 14 00 01 */	addi r0, r20, 0x1
/* 814F148C | 54 84 F8 7E */	srwi r4, r4, 1
/* 814F1490 | 7C 07 0E 70 */	srawi r7, r0, 1
/* 814F1494 | 80 CF 00 34 */	lwz r6, 0x34(r15)
/* 814F1498 | 7F 44 3A 14 */	add r26, r4, r7
/* 814F149C | 7C 64 00 D0 */	neg r3, r4
/* 814F14A0 | 7C 04 D0 50 */	subf r0, r4, r26
/* 814F14A4 | 54 DB E8 FE */	srwi r27, r6, 3
/* 814F14A8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F14AC | 54 60 00 00 */	clrrwi r0, r3, 31
/* 814F14B0 | 57 4E 00 00 */	clrrwi r14, r26, 31
/* 814F14B4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F14B8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814F14BC | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814F14C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F14C4 | 20 07 00 08 */	subfic r0, r7, 0x8
/* 814F14C8 | 48 00 03 04 */	b .L_814F17CC
.L_814F14CC:
/* 814F14CC | 7C 84 D0 00 */	cmpw cr1, r4, r26
/* 814F14D0 | 7C 99 23 78 */	mr r25, r4
/* 814F14D4 | 40 84 02 EC */	bge cr1, .L_814F17C0
/* 814F14D8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814F14DC | 39 7A FF F8 */	subi r11, r26, 0x8
/* 814F14E0 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814F14E4 | 40 81 02 78 */	ble .L_814F175C
/* 814F14E8 | 38 C0 00 00 */	li r6, 0x0
/* 814F14EC | 38 E0 00 00 */	li r7, 0x0
/* 814F14F0 | 39 00 00 00 */	li r8, 0x0
/* 814F14F4 | 39 20 00 00 */	li r9, 0x0
/* 814F14F8 | 41 85 00 18 */	bgt cr1, .L_814F1510
/* 814F14FC | 3C 60 80 00 */	lis r3, 0x8000
/* 814F1500 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F1504 | 7C 1A 18 00 */	cmpw r26, r3
/* 814F1508 | 41 81 00 08 */	bgt .L_814F1510
/* 814F150C | 39 20 00 01 */	li r9, 0x1
.L_814F1510:
/* 814F1510 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F1514 | 41 82 00 18 */	beq .L_814F152C
/* 814F1518 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F151C | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F1520 | 7C 04 18 00 */	cmpw r4, r3
/* 814F1524 | 41 81 00 08 */	bgt .L_814F152C
/* 814F1528 | 39 00 00 01 */	li r8, 0x1
.L_814F152C:
/* 814F152C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F1530 | 41 82 00 14 */	beq .L_814F1544
/* 814F1534 | 3C 64 80 00 */	addis r3, r4, 0x8000
/* 814F1538 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814F153C | 41 82 00 08 */	beq .L_814F1544
/* 814F1540 | 38 E0 00 01 */	li r7, 0x1
.L_814F1544:
/* 814F1544 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F1548 | 41 82 00 30 */	beq .L_814F1578
/* 814F154C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814F1550 | 38 E0 00 01 */	li r7, 0x1
/* 814F1554 | 7C 0E 18 00 */	cmpw r14, r3
/* 814F1558 | 40 82 00 14 */	bne .L_814F156C
/* 814F155C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F1560 | 7C 0E 18 00 */	cmpw r14, r3
/* 814F1564 | 41 82 00 08 */	beq .L_814F156C
/* 814F1568 | 38 E0 00 00 */	li r7, 0x0
.L_814F156C:
/* 814F156C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F1570 | 41 82 00 08 */	beq .L_814F1578
/* 814F1574 | 38 C0 00 01 */	li r6, 0x1
.L_814F1578:
/* 814F1578 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F157C | 41 82 01 E0 */	beq .L_814F175C
/* 814F1580 | 7C 86 1E 70 */	srawi r6, r4, 3
/* 814F1584 | 38 6B 00 07 */	addi r3, r11, 0x7
/* 814F1588 | 7C A8 16 70 */	srawi r8, r5, 2
/* 814F158C | 54 A9 1E F8 */	clrlslwi r9, r5, 30, 3
/* 814F1590 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F1594 | 7D 08 D9 D6 */	mullw r8, r8, r27
/* 814F1598 | 7C F8 4A 14 */	add r7, r24, r9
/* 814F159C | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F15A0 | 7D 37 4A 14 */	add r9, r23, r9
/* 814F15A4 | 7C 69 03 A6 */	mtctr r3
/* 814F15A8 | 7C 04 58 00 */	cmpw r4, r11
/* 814F15AC | 40 80 01 B0 */	bge .L_814F175C
.L_814F15B0:
/* 814F15B0 | 89 96 00 00 */	lbz r12, 0x0(r22)
/* 814F15B4 | 57 23 07 7E */	clrlwi r3, r25, 29
/* 814F15B8 | 7D 66 42 14 */	add r11, r6, r8
/* 814F15BC | 39 F9 00 01 */	addi r15, r25, 0x1
/* 814F15C0 | 3A 2C 00 80 */	addi r17, r12, 0x80
/* 814F15C4 | 7E 07 1A 14 */	add r16, r7, r3
/* 814F15C8 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F15CC | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F15D0 | 7E 2B 81 AE */	stbx r17, r11, r16
/* 814F15D4 | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F15D8 | 3A 39 00 02 */	addi r17, r25, 0x2
/* 814F15DC | 7E 69 1A 14 */	add r19, r9, r3
/* 814F15E0 | 8A 95 00 00 */	lbz r20, 0x0(r21)
/* 814F15E4 | 7E 52 42 14 */	add r18, r18, r8
/* 814F15E8 | 39 F9 00 03 */	addi r15, r25, 0x3
/* 814F15EC | 7E 30 1E 70 */	srawi r16, r17, 3
/* 814F15F0 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F15F4 | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F15F8 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F15FC | 7D 70 42 14 */	add r11, r16, r8
/* 814F1600 | 56 53 28 34 */	slwi r19, r18, 5
/* 814F1604 | 7E 47 62 14 */	add r18, r7, r12
/* 814F1608 | 8A 96 00 01 */	lbz r20, 0x1(r22)
/* 814F160C | 7D F0 1E 70 */	srawi r16, r15, 3
/* 814F1610 | 55 F1 07 7E */	clrlwi r17, r15, 29
/* 814F1614 | 39 F9 00 04 */	addi r15, r25, 0x4
/* 814F1618 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F161C | 7D 89 62 14 */	add r12, r9, r12
/* 814F1620 | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F1624 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F1628 | 55 FF 07 7E */	clrlwi r31, r15, 29
/* 814F162C | 3A 99 00 05 */	addi r20, r25, 0x5
/* 814F1630 | 89 F5 00 01 */	lbz r15, 0x1(r21)
/* 814F1634 | 56 9D 07 7E */	clrlwi r29, r20, 29
/* 814F1638 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F163C | 7E 10 42 14 */	add r16, r16, r8
/* 814F1640 | 3B 8F 00 80 */	addi r28, r15, 0x80
/* 814F1644 | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F1648 | 7F 93 61 AE */	stbx r28, r19, r12
/* 814F164C | 7E 6F 42 14 */	add r19, r15, r8
/* 814F1650 | 3B 99 00 06 */	addi r28, r25, 0x6
/* 814F1654 | 7D E7 1A 14 */	add r15, r7, r3
/* 814F1658 | 8A 96 00 02 */	lbz r20, 0x2(r22)
/* 814F165C | 7F 8C 1E 70 */	srawi r12, r28, 3
/* 814F1660 | 7E 52 42 14 */	add r18, r18, r8
/* 814F1664 | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F1668 | 3B D4 00 80 */	addi r30, r20, 0x80
/* 814F166C | 7E 8C 42 14 */	add r20, r12, r8
/* 814F1670 | 7F CB 79 AE */	stbx r30, r11, r15
/* 814F1674 | 7D E9 1A 14 */	add r15, r9, r3
/* 814F1678 | 56 0C 28 34 */	slwi r12, r16, 5
/* 814F167C | 7E 07 8A 14 */	add r16, r7, r17
/* 814F1680 | 88 75 00 02 */	lbz r3, 0x2(r21)
/* 814F1684 | 56 5E 28 34 */	slwi r30, r18, 5
/* 814F1688 | 7E 47 FA 14 */	add r18, r7, r31
/* 814F168C | 7E 29 8A 14 */	add r17, r9, r17
/* 814F1690 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F1694 | 7F E9 FA 14 */	add r31, r9, r31
/* 814F1698 | 7C 6B 79 AE */	stbx r3, r11, r15
/* 814F169C | 56 63 28 34 */	slwi r3, r19, 5
/* 814F16A0 | 7D E7 EA 14 */	add r15, r7, r29
/* 814F16A4 | 7D 69 EA 14 */	add r11, r9, r29
/* 814F16A8 | 8A 76 00 03 */	lbz r19, 0x3(r22)
/* 814F16AC | 56 94 28 34 */	slwi r20, r20, 5
/* 814F16B0 | 7F A7 E2 14 */	add r29, r7, r28
/* 814F16B4 | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F16B8 | 7E 6C 81 AE */	stbx r19, r12, r16
/* 814F16BC | 8A 15 00 03 */	lbz r16, 0x3(r21)
/* 814F16C0 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F16C4 | 7E 0C 89 AE */	stbx r16, r12, r17
/* 814F16C8 | 89 96 00 04 */	lbz r12, 0x4(r22)
/* 814F16CC | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F16D0 | 7D 9E 91 AE */	stbx r12, r30, r18
/* 814F16D4 | 89 95 00 04 */	lbz r12, 0x4(r21)
/* 814F16D8 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F16DC | 7D 9E F9 AE */	stbx r12, r30, r31
/* 814F16E0 | 89 96 00 05 */	lbz r12, 0x5(r22)
/* 814F16E4 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F16E8 | 7D 83 79 AE */	stbx r12, r3, r15
/* 814F16EC | 89 95 00 05 */	lbz r12, 0x5(r21)
/* 814F16F0 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F16F4 | 7D 83 59 AE */	stbx r12, r3, r11
/* 814F16F8 | 88 76 00 06 */	lbz r3, 0x6(r22)
/* 814F16FC | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F1700 | 7C 74 E9 AE */	stbx r3, r20, r29
/* 814F1704 | 89 95 00 06 */	lbz r12, 0x6(r21)
/* 814F1708 | 38 79 00 07 */	addi r3, r25, 0x7
/* 814F170C | 54 6F 07 7E */	clrlwi r15, r3, 29
/* 814F1710 | 7D 69 E2 14 */	add r11, r9, r28
/* 814F1714 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F1718 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F171C | 7D 94 59 AE */	stbx r12, r20, r11
/* 814F1720 | 7C 63 42 14 */	add r3, r3, r8
/* 814F1724 | 54 70 28 34 */	slwi r16, r3, 5
/* 814F1728 | 7D 67 7A 14 */	add r11, r7, r15
/* 814F172C | 89 96 00 07 */	lbz r12, 0x7(r22)
/* 814F1730 | 7C 69 7A 14 */	add r3, r9, r15
/* 814F1734 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814F1738 | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814F173C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F1740 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F1744 | 7D 90 59 AE */	stbx r12, r16, r11
/* 814F1748 | 89 75 00 07 */	lbz r11, 0x7(r21)
/* 814F174C | 3A B5 00 08 */	addi r21, r21, 0x8
/* 814F1750 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1754 | 7D 70 19 AE */	stbx r11, r16, r3
/* 814F1758 | 42 00 FE 58 */	bdnz .L_814F15B0
.L_814F175C:
/* 814F175C | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F1760 | 54 A6 1E F8 */	clrlslwi r6, r5, 30, 3
/* 814F1764 | 7D 23 D9 D6 */	mullw r9, r3, r27
/* 814F1768 | 7C 79 D0 50 */	subf r3, r25, r26
/* 814F176C | 7D 18 32 14 */	add r8, r24, r6
/* 814F1770 | 7D 77 32 14 */	add r11, r23, r6
/* 814F1774 | 7C 69 03 A6 */	mtctr r3
/* 814F1778 | 7C 19 D0 00 */	cmpw r25, r26
/* 814F177C | 40 80 00 44 */	bge .L_814F17C0
.L_814F1780:
/* 814F1780 | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814F1784 | 7F 26 1E 70 */	srawi r6, r25, 3
/* 814F1788 | 7C E6 4A 14 */	add r7, r6, r9
/* 814F178C | 57 2C 07 7E */	clrlwi r12, r25, 29
/* 814F1790 | 38 C3 00 80 */	addi r6, r3, 0x80
/* 814F1794 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814F1798 | 54 E7 28 34 */	slwi r7, r7, 5
/* 814F179C | 7C 68 62 14 */	add r3, r8, r12
/* 814F17A0 | 7C C7 19 AE */	stbx r6, r7, r3
/* 814F17A4 | 7C 6B 62 14 */	add r3, r11, r12
/* 814F17A8 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F17AC | 88 D5 00 00 */	lbz r6, 0x0(r21)
/* 814F17B0 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814F17B4 | 38 C6 00 80 */	addi r6, r6, 0x80
/* 814F17B8 | 7C C7 19 AE */	stbx r6, r7, r3
/* 814F17BC | 42 00 FF C4 */	bdnz .L_814F1780
.L_814F17C0:
/* 814F17C0 | 7E D6 02 14 */	add r22, r22, r0
/* 814F17C4 | 7E B5 02 14 */	add r21, r21, r0
/* 814F17C8 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F17CC:
/* 814F17CC | 7C 05 50 00 */	cmpw r5, r10
/* 814F17D0 | 41 80 FC FC */	blt .L_814F14CC
/* 814F17D4 | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F17D8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F17DC | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F11C4

# .text:0x7398 | 0x814F17E0 | size: 0x768
.fn TMCJPEG_814F17E0, local
/* 814F17E0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F17E4 | 39 00 00 10 */	li r8, 0x10
/* 814F17E8 | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F17EC | 39 E3 18 5C */	addi r15, r3, 0x185c
/* 814F17F0 | 3A E3 19 5C */	addi r23, r3, 0x195c
/* 814F17F4 | 3A C3 19 9C */	addi r22, r3, 0x199c
/* 814F17F8 | 7C B1 2B 78 */	mr r17, r5
/* 814F17FC | 3F E0 80 00 */	lis r31, 0x8000
/* 814F1800 | 80 03 19 E4 */	lwz r0, 0x19e4(r3)
/* 814F1804 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F1808 | 7C 04 00 D0 */	neg r0, r4
/* 814F180C | 54 03 00 00 */	clrrwi r3, r0, 31
/* 814F1810 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814F1814 | 88 E6 00 20 */	lbz r7, 0x20(r6)
/* 814F1818 | 81 26 00 2C */	lwz r9, 0x2c(r6)
/* 814F181C | 7D 48 3B D6 */	divw r10, r8, r7
/* 814F1820 | 81 C6 00 3C */	lwz r14, 0x3c(r6)
/* 814F1824 | 83 26 00 40 */	lwz r25, 0x40(r6)
/* 814F1828 | 55 34 E8 FE */	srwi r20, r9, 3
/* 814F182C | 83 06 00 44 */	lwz r24, 0x44(r6)
/* 814F1830 | 7E 44 52 14 */	add r18, r4, r10
/* 814F1834 | 7C E4 90 50 */	subf r7, r4, r18
/* 814F1838 | 7E 65 52 14 */	add r19, r5, r10
/* 814F183C | 39 07 00 01 */	addi r8, r7, 0x1
/* 814F1840 | 55 06 0F FE */	srwi r6, r8, 31
/* 814F1844 | 54 E7 00 00 */	clrrwi r7, r7, 31
/* 814F1848 | 7C 06 42 14 */	add r0, r6, r8
/* 814F184C | 55 08 00 00 */	clrrwi r8, r8, 31
/* 814F1850 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814F1854 | 56 46 00 00 */	clrrwi r6, r18, 31
/* 814F1858 | 21 2A 00 10 */	subfic r9, r10, 0x10
/* 814F185C | 48 00 03 80 */	b .L_814F1BDC
.L_814F1860:
/* 814F1860 | 7C 84 90 00 */	cmpw cr1, r4, r18
/* 814F1864 | 7C 90 23 78 */	mr r16, r4
/* 814F1868 | 40 84 03 6C */	bge cr1, .L_814F1BD4
/* 814F186C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F1870 | 3A B2 FF F0 */	subi r21, r18, 0x10
/* 814F1874 | 40 81 02 F0 */	ble .L_814F1B64
/* 814F1878 | 39 60 00 00 */	li r11, 0x0
/* 814F187C | 39 80 00 00 */	li r12, 0x0
/* 814F1880 | 3B 40 00 00 */	li r26, 0x0
/* 814F1884 | 3B 60 00 00 */	li r27, 0x0
/* 814F1888 | 3B 80 00 00 */	li r28, 0x0
/* 814F188C | 41 85 00 14 */	bgt cr1, .L_814F18A0
/* 814F1890 | 39 5F FF FD */	subi r10, r31, 0x3
/* 814F1894 | 7C 12 50 00 */	cmpw r18, r10
/* 814F1898 | 41 81 00 08 */	bgt .L_814F18A0
/* 814F189C | 3B 80 00 01 */	li r28, 0x1
.L_814F18A0:
/* 814F18A0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F18A4 | 41 82 00 14 */	beq .L_814F18B8
/* 814F18A8 | 39 5F FF FD */	subi r10, r31, 0x3
/* 814F18AC | 7C 04 50 00 */	cmpw r4, r10
/* 814F18B0 | 41 81 00 08 */	bgt .L_814F18B8
/* 814F18B4 | 3B 60 00 01 */	li r27, 0x1
.L_814F18B8:
/* 814F18B8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814F18BC | 41 82 00 14 */	beq .L_814F18D0
/* 814F18C0 | 3D 44 80 00 */	addis r10, r4, 0x8000
/* 814F18C4 | 28 0A 00 00 */	cmplwi r10, 0x0
/* 814F18C8 | 41 82 00 08 */	beq .L_814F18D0
/* 814F18CC | 3B 40 00 01 */	li r26, 0x1
.L_814F18D0:
/* 814F18D0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814F18D4 | 41 82 00 28 */	beq .L_814F18FC
/* 814F18D8 | 7C 06 18 00 */	cmpw r6, r3
/* 814F18DC | 39 40 00 01 */	li r10, 0x1
/* 814F18E0 | 40 82 00 10 */	bne .L_814F18F0
/* 814F18E4 | 7C 06 38 00 */	cmpw r6, r7
/* 814F18E8 | 41 82 00 08 */	beq .L_814F18F0
/* 814F18EC | 39 40 00 00 */	li r10, 0x0
.L_814F18F0:
/* 814F18F0 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F18F4 | 41 82 00 08 */	beq .L_814F18FC
/* 814F18F8 | 39 80 00 01 */	li r12, 0x1
.L_814F18FC:
/* 814F18FC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F1900 | 41 82 00 28 */	beq .L_814F1928
/* 814F1904 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F1908 | 39 40 00 01 */	li r10, 0x1
/* 814F190C | 40 82 00 10 */	bne .L_814F191C
/* 814F1910 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F1914 | 41 82 00 08 */	beq .L_814F191C
/* 814F1918 | 39 40 00 00 */	li r10, 0x0
.L_814F191C:
/* 814F191C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F1920 | 41 82 00 08 */	beq .L_814F1928
/* 814F1924 | 39 60 00 01 */	li r11, 0x1
.L_814F1928:
/* 814F1928 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F192C | 41 82 02 38 */	beq .L_814F1B64
/* 814F1930 | 7C 8A 1E 70 */	srawi r10, r4, 3
/* 814F1934 | 3B 55 00 0F */	addi r26, r21, 0xf
/* 814F1938 | 7E 2B 16 70 */	srawi r11, r17, 2
/* 814F193C | 56 3B 1E F8 */	clrlslwi r27, r17, 30, 3
/* 814F1940 | 7F 44 D0 50 */	subf r26, r4, r26
/* 814F1944 | 7D 8B A1 D6 */	mullw r12, r11, r20
/* 814F1948 | 7D 6E DA 14 */	add r11, r14, r27
/* 814F194C | 57 5A E1 3E */	srwi r26, r26, 4
/* 814F1950 | 7F 49 03 A6 */	mtctr r26
/* 814F1954 | 7C 04 A8 00 */	cmpw r4, r21
/* 814F1958 | 40 80 02 0C */	bge .L_814F1B64
.L_814F195C:
/* 814F195C | 56 1B 07 7E */	clrlwi r27, r16, 29
/* 814F1960 | 7F 4A 62 14 */	add r26, r10, r12
/* 814F1964 | 57 5C 28 34 */	slwi r28, r26, 5
/* 814F1968 | 8A AF 00 00 */	lbz r21, 0x0(r15)
/* 814F196C | 7F 6B DA 14 */	add r27, r11, r27
/* 814F1970 | 3B 50 00 01 */	addi r26, r16, 0x1
/* 814F1974 | 7E BC D9 AE */	stbx r21, r28, r27
/* 814F1978 | 7F 55 1E 70 */	srawi r21, r26, 3
/* 814F197C | 57 5A 07 7E */	clrlwi r26, r26, 29
/* 814F1980 | 3B 90 00 02 */	addi r28, r16, 0x2
/* 814F1984 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1988 | 8B 6F 00 01 */	lbz r27, 0x1(r15)
/* 814F198C | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1990 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1994 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1998 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F199C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F19A0 | 3B 90 00 03 */	addi r28, r16, 0x3
/* 814F19A4 | 7E B5 62 14 */	add r21, r21, r12
/* 814F19A8 | 8B 6F 00 02 */	lbz r27, 0x2(r15)
/* 814F19AC | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F19B0 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F19B4 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F19B8 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F19BC | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F19C0 | 3B 90 00 04 */	addi r28, r16, 0x4
/* 814F19C4 | 7E B5 62 14 */	add r21, r21, r12
/* 814F19C8 | 8B 6F 00 03 */	lbz r27, 0x3(r15)
/* 814F19CC | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F19D0 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F19D4 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F19D8 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F19DC | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F19E0 | 3B 90 00 05 */	addi r28, r16, 0x5
/* 814F19E4 | 7E B5 62 14 */	add r21, r21, r12
/* 814F19E8 | 8B 6F 00 04 */	lbz r27, 0x4(r15)
/* 814F19EC | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F19F0 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F19F4 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F19F8 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F19FC | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F1A00 | 3B 90 00 06 */	addi r28, r16, 0x6
/* 814F1A04 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1A08 | 8B 6F 00 05 */	lbz r27, 0x5(r15)
/* 814F1A0C | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1A10 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1A14 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1A18 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F1A1C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F1A20 | 3B 90 00 07 */	addi r28, r16, 0x7
/* 814F1A24 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1A28 | 8B 6F 00 06 */	lbz r27, 0x6(r15)
/* 814F1A2C | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1A30 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1A34 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1A38 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F1A3C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F1A40 | 3B 90 00 08 */	addi r28, r16, 0x8
/* 814F1A44 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1A48 | 8B 6F 00 07 */	lbz r27, 0x7(r15)
/* 814F1A4C | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1A50 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1A54 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1A58 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F1A5C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F1A60 | 3B 90 00 09 */	addi r28, r16, 0x9
/* 814F1A64 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1A68 | 8B 6F 00 08 */	lbz r27, 0x8(r15)
/* 814F1A6C | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1A70 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1A74 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1A78 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F1A7C | 57 9A 07 7E */	clrlwi r26, r28, 29
/* 814F1A80 | 3B 90 00 0A */	addi r28, r16, 0xa
/* 814F1A84 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1A88 | 8B 6F 00 09 */	lbz r27, 0x9(r15)
/* 814F1A8C | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1A90 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1A94 | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1A98 | 7F 95 1E 70 */	srawi r21, r28, 3
/* 814F1A9C | 57 9B 07 7E */	clrlwi r27, r28, 29
/* 814F1AA0 | 7E B5 62 14 */	add r21, r21, r12
/* 814F1AA4 | 8B 8F 00 0A */	lbz r28, 0xa(r15)
/* 814F1AA8 | 56 BA 28 34 */	slwi r26, r21, 5
/* 814F1AAC | 7E AB DA 14 */	add r21, r11, r27
/* 814F1AB0 | 7F 9A A9 AE */	stbx r28, r26, r21
/* 814F1AB4 | 3B 70 00 0B */	addi r27, r16, 0xb
/* 814F1AB8 | 8B 8F 00 0B */	lbz r28, 0xb(r15)
/* 814F1ABC | 7F 75 1E 70 */	srawi r21, r27, 3
/* 814F1AC0 | 3B D0 00 0C */	addi r30, r16, 0xc
/* 814F1AC4 | 57 7B 07 7E */	clrlwi r27, r27, 29
/* 814F1AC8 | 3B 50 00 0D */	addi r26, r16, 0xd
/* 814F1ACC | 7E B5 62 14 */	add r21, r21, r12
/* 814F1AD0 | 7F DD 1E 70 */	srawi r29, r30, 3
/* 814F1AD4 | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1AD8 | 7F 6B DA 14 */	add r27, r11, r27
/* 814F1ADC | 7F 95 D9 AE */	stbx r28, r21, r27
/* 814F1AE0 | 7F 7D 62 14 */	add r27, r29, r12
/* 814F1AE4 | 57 D5 07 7E */	clrlwi r21, r30, 29
/* 814F1AE8 | 7F 5D 1E 70 */	srawi r29, r26, 3
/* 814F1AEC | 7F CB AA 14 */	add r30, r11, r21
/* 814F1AF0 | 8B 8F 00 0C */	lbz r28, 0xc(r15)
/* 814F1AF4 | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F1AF8 | 3A B0 00 0E */	addi r21, r16, 0xe
/* 814F1AFC | 7F 9B F1 AE */	stbx r28, r27, r30
/* 814F1B00 | 57 5E 07 7E */	clrlwi r30, r26, 29
/* 814F1B04 | 7F 5D 62 14 */	add r26, r29, r12
/* 814F1B08 | 3B 90 00 0F */	addi r28, r16, 0xf
/* 814F1B0C | 8B 6F 00 0D */	lbz r27, 0xd(r15)
/* 814F1B10 | 57 5A 28 34 */	slwi r26, r26, 5
/* 814F1B14 | 7F CB F2 14 */	add r30, r11, r30
/* 814F1B18 | 7E BD 1E 70 */	srawi r29, r21, 3
/* 814F1B1C | 7F 7A F1 AE */	stbx r27, r26, r30
/* 814F1B20 | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F1B24 | 7E BD 62 14 */	add r21, r29, r12
/* 814F1B28 | 7F 9D 1E 70 */	srawi r29, r28, 3
/* 814F1B2C | 8B 6F 00 0E */	lbz r27, 0xe(r15)
/* 814F1B30 | 56 B5 28 34 */	slwi r21, r21, 5
/* 814F1B34 | 7F 4B D2 14 */	add r26, r11, r26
/* 814F1B38 | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F1B3C | 7F 75 D1 AE */	stbx r27, r21, r26
/* 814F1B40 | 7E BD 62 14 */	add r21, r29, r12
/* 814F1B44 | 56 BA 28 34 */	slwi r26, r21, 5
/* 814F1B48 | 39 4A 00 02 */	addi r10, r10, 0x2
/* 814F1B4C | 8B 6F 00 0F */	lbz r27, 0xf(r15)
/* 814F1B50 | 7E AB E2 14 */	add r21, r11, r28
/* 814F1B54 | 3A 10 00 10 */	addi r16, r16, 0x10
/* 814F1B58 | 39 EF 00 10 */	addi r15, r15, 0x10
/* 814F1B5C | 7F 7A A9 AE */	stbx r27, r26, r21
/* 814F1B60 | 42 00 FD FC */	bdnz .L_814F195C
.L_814F1B64:
/* 814F1B64 | 7E 2B 16 70 */	srawi r11, r17, 2
/* 814F1B68 | 39 52 00 01 */	addi r10, r18, 0x1
/* 814F1B6C | 7D 50 50 50 */	subf r10, r16, r10
/* 814F1B70 | 56 2C 1E F8 */	clrlslwi r12, r17, 30, 3
/* 814F1B74 | 7F 4B A1 D6 */	mullw r26, r11, r20
/* 814F1B78 | 55 4A F8 7E */	srwi r10, r10, 1
/* 814F1B7C | 7E AE 62 14 */	add r21, r14, r12
/* 814F1B80 | 7D 49 03 A6 */	mtctr r10
/* 814F1B84 | 7C 10 90 00 */	cmpw r16, r18
/* 814F1B88 | 40 80 00 4C */	bge .L_814F1BD4
.L_814F1B8C:
/* 814F1B8C | 7E 0A 1E 70 */	srawi r10, r16, 3
/* 814F1B90 | 56 0B 07 7E */	clrlwi r11, r16, 29
/* 814F1B94 | 7D 4A D2 14 */	add r10, r10, r26
/* 814F1B98 | 89 8F 00 00 */	lbz r12, 0x0(r15)
/* 814F1B9C | 55 4A 28 34 */	slwi r10, r10, 5
/* 814F1BA0 | 7D 75 5A 14 */	add r11, r21, r11
/* 814F1BA4 | 3B 90 00 01 */	addi r28, r16, 0x1
/* 814F1BA8 | 7D 8A 59 AE */	stbx r12, r10, r11
/* 814F1BAC | 7F 9B 1E 70 */	srawi r27, r28, 3
/* 814F1BB0 | 3A 10 00 02 */	addi r16, r16, 0x2
/* 814F1BB4 | 7D 5B D2 14 */	add r10, r27, r26
/* 814F1BB8 | 8B 6F 00 01 */	lbz r27, 0x1(r15)
/* 814F1BBC | 57 8C 07 7E */	clrlwi r12, r28, 29
/* 814F1BC0 | 39 EF 00 02 */	addi r15, r15, 0x2
/* 814F1BC4 | 55 4B 28 34 */	slwi r11, r10, 5
/* 814F1BC8 | 7D 55 62 14 */	add r10, r21, r12
/* 814F1BCC | 7F 6B 51 AE */	stbx r27, r11, r10
/* 814F1BD0 | 42 00 FF BC */	bdnz .L_814F1B8C
.L_814F1BD4:
/* 814F1BD4 | 7D EF 4A 14 */	add r15, r15, r9
/* 814F1BD8 | 3A 31 00 01 */	addi r17, r17, 0x1
.L_814F1BDC:
/* 814F1BDC | 7C 11 98 00 */	cmpw r17, r19
/* 814F1BE0 | 41 80 FC 80 */	blt .L_814F1860
/* 814F1BE4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F1BE8 | 38 C0 00 08 */	li r6, 0x8
/* 814F1BEC | 54 84 F8 7E */	srwi r4, r4, 1
/* 814F1BF0 | 54 B5 F8 7E */	srwi r21, r5, 1
/* 814F1BF4 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814F1BF8 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814F1BFC | 7C C6 03 D6 */	divw r6, r6, r0
/* 814F1C00 | 7C 04 00 D0 */	neg r0, r4
/* 814F1C04 | 54 7C E8 FE */	srwi r28, r3, 3
/* 814F1C08 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814F1C0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F1C10 | 7F 64 32 14 */	add r27, r4, r6
/* 814F1C14 | 7D C4 D8 50 */	subf r14, r4, r27
/* 814F1C18 | 7C 15 32 14 */	add r0, r21, r6
/* 814F1C1C | 55 C3 00 00 */	clrrwi r3, r14, 31
/* 814F1C20 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F1C24 | 20 A6 00 08 */	subfic r5, r6, 0x8
/* 814F1C28 | 57 60 00 00 */	clrrwi r0, r27, 31
/* 814F1C2C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 814F1C30 | 48 00 03 00 */	b .L_814F1F30
.L_814F1C34:
/* 814F1C34 | 7C 84 D8 00 */	cmpw cr1, r4, r27
/* 814F1C38 | 7C 9A 23 78 */	mr r26, r4
/* 814F1C3C | 40 84 02 E8 */	bge cr1, .L_814F1F24
/* 814F1C40 | 2C 0E 00 08 */	cmpwi r14, 0x8
/* 814F1C44 | 39 5B FF F8 */	subi r10, r27, 0x8
/* 814F1C48 | 40 81 02 78 */	ble .L_814F1EC0
/* 814F1C4C | 38 C0 00 00 */	li r6, 0x0
/* 814F1C50 | 38 E0 00 00 */	li r7, 0x0
/* 814F1C54 | 39 00 00 00 */	li r8, 0x0
/* 814F1C58 | 39 20 00 00 */	li r9, 0x0
/* 814F1C5C | 41 85 00 18 */	bgt cr1, .L_814F1C74
/* 814F1C60 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F1C64 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F1C68 | 7C 1B 18 00 */	cmpw r27, r3
/* 814F1C6C | 41 81 00 08 */	bgt .L_814F1C74
/* 814F1C70 | 39 20 00 01 */	li r9, 0x1
.L_814F1C74:
/* 814F1C74 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F1C78 | 41 82 00 18 */	beq .L_814F1C90
/* 814F1C7C | 3C 60 80 00 */	lis r3, 0x8000
/* 814F1C80 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F1C84 | 7C 04 18 00 */	cmpw r4, r3
/* 814F1C88 | 41 81 00 08 */	bgt .L_814F1C90
/* 814F1C8C | 39 00 00 01 */	li r8, 0x1
.L_814F1C90:
/* 814F1C90 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F1C94 | 41 82 00 14 */	beq .L_814F1CA8
/* 814F1C98 | 3C 64 80 00 */	addis r3, r4, 0x8000
/* 814F1C9C | 28 03 00 00 */	cmplwi r3, 0x0
/* 814F1CA0 | 41 82 00 08 */	beq .L_814F1CA8
/* 814F1CA4 | 38 E0 00 01 */	li r7, 0x1
.L_814F1CA8:
/* 814F1CA8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F1CAC | 41 82 00 30 */	beq .L_814F1CDC
/* 814F1CB0 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814F1CB4 | 38 E0 00 01 */	li r7, 0x1
/* 814F1CB8 | 7C 00 18 00 */	cmpw r0, r3
/* 814F1CBC | 40 82 00 14 */	bne .L_814F1CD0
/* 814F1CC0 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814F1CC4 | 7C 00 18 00 */	cmpw r0, r3
/* 814F1CC8 | 41 82 00 08 */	beq .L_814F1CD0
/* 814F1CCC | 38 E0 00 00 */	li r7, 0x0
.L_814F1CD0:
/* 814F1CD0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F1CD4 | 41 82 00 08 */	beq .L_814F1CDC
/* 814F1CD8 | 38 C0 00 01 */	li r6, 0x1
.L_814F1CDC:
/* 814F1CDC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F1CE0 | 41 82 01 E0 */	beq .L_814F1EC0
/* 814F1CE4 | 7C 86 1E 70 */	srawi r6, r4, 3
/* 814F1CE8 | 38 6A 00 07 */	addi r3, r10, 0x7
/* 814F1CEC | 7E A8 16 70 */	srawi r8, r21, 2
/* 814F1CF0 | 56 A9 1E F8 */	clrlslwi r9, r21, 30, 3
/* 814F1CF4 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F1CF8 | 7D 08 E1 D6 */	mullw r8, r8, r28
/* 814F1CFC | 7C F9 4A 14 */	add r7, r25, r9
/* 814F1D00 | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F1D04 | 7D 38 4A 14 */	add r9, r24, r9
/* 814F1D08 | 7C 69 03 A6 */	mtctr r3
/* 814F1D0C | 7C 04 50 00 */	cmpw r4, r10
/* 814F1D10 | 40 80 01 B0 */	bge .L_814F1EC0
.L_814F1D14:
/* 814F1D14 | 89 77 00 00 */	lbz r11, 0x0(r23)
/* 814F1D18 | 57 43 07 7E */	clrlwi r3, r26, 29
/* 814F1D1C | 7D 46 42 14 */	add r10, r6, r8
/* 814F1D20 | 39 9A 00 01 */	addi r12, r26, 0x1
/* 814F1D24 | 3A 0B 00 80 */	addi r16, r11, 0x80
/* 814F1D28 | 7D E7 1A 14 */	add r15, r7, r3
/* 814F1D2C | 55 4A 28 34 */	slwi r10, r10, 5
/* 814F1D30 | 7D 92 1E 70 */	srawi r18, r12, 3
/* 814F1D34 | 7E 0A 79 AE */	stbx r16, r10, r15
/* 814F1D38 | 3A 1A 00 02 */	addi r16, r26, 0x2
/* 814F1D3C | 7E 69 1A 14 */	add r19, r9, r3
/* 814F1D40 | 55 8B 07 7E */	clrlwi r11, r12, 29
/* 814F1D44 | 8A 36 00 00 */	lbz r17, 0x0(r22)
/* 814F1D48 | 7E 0F 1E 70 */	srawi r15, r16, 3
/* 814F1D4C | 56 03 07 7E */	clrlwi r3, r16, 29
/* 814F1D50 | 39 9A 00 03 */	addi r12, r26, 0x3
/* 814F1D54 | 3A 11 00 80 */	addi r16, r17, 0x80
/* 814F1D58 | 7E 52 42 14 */	add r18, r18, r8
/* 814F1D5C | 7E 0A 99 AE */	stbx r16, r10, r19
/* 814F1D60 | 7D 4F 42 14 */	add r10, r15, r8
/* 814F1D64 | 7D 90 1E 70 */	srawi r16, r12, 3
/* 814F1D68 | 55 91 07 7E */	clrlwi r17, r12, 29
/* 814F1D6C | 89 97 00 01 */	lbz r12, 0x1(r23)
/* 814F1D70 | 56 53 28 34 */	slwi r19, r18, 5
/* 814F1D74 | 7E 47 5A 14 */	add r18, r7, r11
/* 814F1D78 | 39 FA 00 04 */	addi r15, r26, 0x4
/* 814F1D7C | 3A 8C 00 80 */	addi r20, r12, 0x80
/* 814F1D80 | 7D 69 5A 14 */	add r11, r9, r11
/* 814F1D84 | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F1D88 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F1D8C | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F1D90 | 3A 9A 00 05 */	addi r20, r26, 0x5
/* 814F1D94 | 89 F6 00 01 */	lbz r15, 0x1(r22)
/* 814F1D98 | 56 9E 07 7E */	clrlwi r30, r20, 29
/* 814F1D9C | 55 4A 28 34 */	slwi r10, r10, 5
/* 814F1DA0 | 7E 10 42 14 */	add r16, r16, r8
/* 814F1DA4 | 3B AF 00 80 */	addi r29, r15, 0x80
/* 814F1DA8 | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F1DAC | 7F B3 59 AE */	stbx r29, r19, r11
/* 814F1DB0 | 7E 6F 42 14 */	add r19, r15, r8
/* 814F1DB4 | 3B BA 00 06 */	addi r29, r26, 0x6
/* 814F1DB8 | 7D E7 1A 14 */	add r15, r7, r3
/* 814F1DBC | 8A 97 00 02 */	lbz r20, 0x2(r23)
/* 814F1DC0 | 7F AB 1E 70 */	srawi r11, r29, 3
/* 814F1DC4 | 7E 52 42 14 */	add r18, r18, r8
/* 814F1DC8 | 57 BD 07 7E */	clrlwi r29, r29, 29
/* 814F1DCC | 3B F4 00 80 */	addi r31, r20, 0x80
/* 814F1DD0 | 7E 8B 42 14 */	add r20, r11, r8
/* 814F1DD4 | 7F EA 79 AE */	stbx r31, r10, r15
/* 814F1DD8 | 7D E9 1A 14 */	add r15, r9, r3
/* 814F1DDC | 56 0B 28 34 */	slwi r11, r16, 5
/* 814F1DE0 | 7E 07 8A 14 */	add r16, r7, r17
/* 814F1DE4 | 88 76 00 02 */	lbz r3, 0x2(r22)
/* 814F1DE8 | 56 5F 28 34 */	slwi r31, r18, 5
/* 814F1DEC | 7E 47 62 14 */	add r18, r7, r12
/* 814F1DF0 | 7E 29 8A 14 */	add r17, r9, r17
/* 814F1DF4 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F1DF8 | 7D 89 62 14 */	add r12, r9, r12
/* 814F1DFC | 7C 6A 79 AE */	stbx r3, r10, r15
/* 814F1E00 | 56 63 28 34 */	slwi r3, r19, 5
/* 814F1E04 | 7D E7 F2 14 */	add r15, r7, r30
/* 814F1E08 | 7D 49 F2 14 */	add r10, r9, r30
/* 814F1E0C | 8A 77 00 03 */	lbz r19, 0x3(r23)
/* 814F1E10 | 56 94 28 34 */	slwi r20, r20, 5
/* 814F1E14 | 7F C7 EA 14 */	add r30, r7, r29
/* 814F1E18 | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F1E1C | 7E 6B 81 AE */	stbx r19, r11, r16
/* 814F1E20 | 8A 16 00 03 */	lbz r16, 0x3(r22)
/* 814F1E24 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F1E28 | 7E 0B 89 AE */	stbx r16, r11, r17
/* 814F1E2C | 89 77 00 04 */	lbz r11, 0x4(r23)
/* 814F1E30 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1E34 | 7D 7F 91 AE */	stbx r11, r31, r18
/* 814F1E38 | 89 76 00 04 */	lbz r11, 0x4(r22)
/* 814F1E3C | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1E40 | 7D 7F 61 AE */	stbx r11, r31, r12
/* 814F1E44 | 89 77 00 05 */	lbz r11, 0x5(r23)
/* 814F1E48 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1E4C | 7D 63 79 AE */	stbx r11, r3, r15
/* 814F1E50 | 89 76 00 05 */	lbz r11, 0x5(r22)
/* 814F1E54 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1E58 | 7D 63 51 AE */	stbx r11, r3, r10
/* 814F1E5C | 88 77 00 06 */	lbz r3, 0x6(r23)
/* 814F1E60 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F1E64 | 7C 74 F1 AE */	stbx r3, r20, r30
/* 814F1E68 | 89 76 00 06 */	lbz r11, 0x6(r22)
/* 814F1E6C | 38 7A 00 07 */	addi r3, r26, 0x7
/* 814F1E70 | 54 6C 07 7E */	clrlwi r12, r3, 29
/* 814F1E74 | 7D 49 EA 14 */	add r10, r9, r29
/* 814F1E78 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1E7C | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F1E80 | 7D 74 51 AE */	stbx r11, r20, r10
/* 814F1E84 | 7C 63 42 14 */	add r3, r3, r8
/* 814F1E88 | 54 6F 28 34 */	slwi r15, r3, 5
/* 814F1E8C | 7D 47 62 14 */	add r10, r7, r12
/* 814F1E90 | 89 77 00 07 */	lbz r11, 0x7(r23)
/* 814F1E94 | 7C 69 62 14 */	add r3, r9, r12
/* 814F1E98 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814F1E9C | 3B 5A 00 08 */	addi r26, r26, 0x8
/* 814F1EA0 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F1EA4 | 3A F7 00 08 */	addi r23, r23, 0x8
/* 814F1EA8 | 7D 6F 51 AE */	stbx r11, r15, r10
/* 814F1EAC | 89 56 00 07 */	lbz r10, 0x7(r22)
/* 814F1EB0 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F1EB4 | 39 4A 00 80 */	addi r10, r10, 0x80
/* 814F1EB8 | 7D 4F 19 AE */	stbx r10, r15, r3
/* 814F1EBC | 42 00 FE 58 */	bdnz .L_814F1D14
.L_814F1EC0:
/* 814F1EC0 | 7E A3 16 70 */	srawi r3, r21, 2
/* 814F1EC4 | 56 A6 1E F8 */	clrlslwi r6, r21, 30, 3
/* 814F1EC8 | 7D 23 E1 D6 */	mullw r9, r3, r28
/* 814F1ECC | 7C 7A D8 50 */	subf r3, r26, r27
/* 814F1ED0 | 7D 19 32 14 */	add r8, r25, r6
/* 814F1ED4 | 7D 58 32 14 */	add r10, r24, r6
/* 814F1ED8 | 7C 69 03 A6 */	mtctr r3
/* 814F1EDC | 7C 1A D8 00 */	cmpw r26, r27
/* 814F1EE0 | 40 80 00 44 */	bge .L_814F1F24
.L_814F1EE4:
/* 814F1EE4 | 88 77 00 00 */	lbz r3, 0x0(r23)
/* 814F1EE8 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F1EEC | 7C E6 4A 14 */	add r7, r6, r9
/* 814F1EF0 | 57 4B 07 7E */	clrlwi r11, r26, 29
/* 814F1EF4 | 38 C3 00 80 */	addi r6, r3, 0x80
/* 814F1EF8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F1EFC | 54 E7 28 34 */	slwi r7, r7, 5
/* 814F1F00 | 7C 68 5A 14 */	add r3, r8, r11
/* 814F1F04 | 7C C7 19 AE */	stbx r6, r7, r3
/* 814F1F08 | 7C 6A 5A 14 */	add r3, r10, r11
/* 814F1F0C | 3A F7 00 01 */	addi r23, r23, 0x1
/* 814F1F10 | 88 D6 00 00 */	lbz r6, 0x0(r22)
/* 814F1F14 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F1F18 | 38 C6 00 80 */	addi r6, r6, 0x80
/* 814F1F1C | 7C C7 19 AE */	stbx r6, r7, r3
/* 814F1F20 | 42 00 FF C4 */	bdnz .L_814F1EE4
.L_814F1F24:
/* 814F1F24 | 7E F7 2A 14 */	add r23, r23, r5
/* 814F1F28 | 7E D6 2A 14 */	add r22, r22, r5
/* 814F1F2C | 3A B5 00 01 */	addi r21, r21, 0x1
.L_814F1F30:
/* 814F1F30 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814F1F34 | 7C 15 18 00 */	cmpw r21, r3
/* 814F1F38 | 41 80 FC FC */	blt .L_814F1C34
/* 814F1F3C | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F1F40 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F1F44 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F17E0

# .text:0x7B00 | 0x814F1F48 | size: 0x628
.fn TMCJPEG_814F1F48, local
/* 814F1F48 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F1F4C | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F1F50 | 3A 03 18 5C */	addi r16, r3, 0x185c
/* 814F1F54 | 3A C3 19 5C */	addi r22, r3, 0x195c
/* 814F1F58 | 3A A3 19 9C */	addi r21, r3, 0x199c
/* 814F1F5C | 81 C3 19 E4 */	lwz r14, 0x19e4(r3)
/* 814F1F60 | 80 0E 00 18 */	lwz r0, 0x18(r14)
/* 814F1F64 | 80 CE 00 2C */	lwz r6, 0x2c(r14)
/* 814F1F68 | 7C 00 20 40 */	cmplw r0, r4
/* 814F1F6C | 81 EE 00 3C */	lwz r15, 0x3c(r14)
/* 814F1F70 | 83 0E 00 40 */	lwz r24, 0x40(r14)
/* 814F1F74 | 54 DA E8 FE */	srwi r26, r6, 3
/* 814F1F78 | 82 EE 00 44 */	lwz r23, 0x44(r14)
/* 814F1F7C | 40 82 00 0C */	bne .L_814F1F88
/* 814F1F80 | 8A 6E 00 16 */	lbz r19, 0x16(r14)
/* 814F1F84 | 48 00 00 10 */	b .L_814F1F94
.L_814F1F88:
/* 814F1F88 | 88 0E 00 20 */	lbz r0, 0x20(r14)
/* 814F1F8C | 38 60 00 10 */	li r3, 0x10
/* 814F1F90 | 7E 63 03 D6 */	divw r19, r3, r0
.L_814F1F94:
/* 814F1F94 | 80 0E 00 1C */	lwz r0, 0x1c(r14)
/* 814F1F98 | 7C 00 28 40 */	cmplw r0, r5
/* 814F1F9C | 40 82 00 0C */	bne .L_814F1FA8
/* 814F1FA0 | 8B EE 00 17 */	lbz r31, 0x17(r14)
/* 814F1FA4 | 48 00 00 10 */	b .L_814F1FB4
.L_814F1FA8:
/* 814F1FA8 | 88 0E 00 20 */	lbz r0, 0x20(r14)
/* 814F1FAC | 38 60 00 10 */	li r3, 0x10
/* 814F1FB0 | 7F E3 03 D6 */	divw r31, r3, r0
.L_814F1FB4:
/* 814F1FB4 | 7E 84 9A 14 */	add r20, r4, r19
/* 814F1FB8 | 7C 64 00 D0 */	neg r3, r4
/* 814F1FBC | 7C 04 A0 50 */	subf r0, r4, r20
/* 814F1FC0 | 7C B2 2B 78 */	mr r18, r5
/* 814F1FC4 | 54 66 00 00 */	clrrwi r6, r3, 31
/* 814F1FC8 | 7F 25 FA 14 */	add r25, r5, r31
/* 814F1FCC | 56 87 00 00 */	clrrwi r7, r20, 31
/* 814F1FD0 | 54 08 00 00 */	clrrwi r8, r0, 31
/* 814F1FD4 | 21 33 00 10 */	subfic r9, r19, 0x10
/* 814F1FD8 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F1FDC | 48 00 02 28 */	b .L_814F2204
.L_814F1FE0:
/* 814F1FE0 | 7C 84 A0 00 */	cmpw cr1, r4, r20
/* 814F1FE4 | 7C 91 23 78 */	mr r17, r4
/* 814F1FE8 | 40 84 02 14 */	bge cr1, .L_814F21FC
/* 814F1FEC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F1FF0 | 3B 74 FF F8 */	subi r27, r20, 0x8
/* 814F1FF4 | 40 81 01 C0 */	ble .L_814F21B4
/* 814F1FF8 | 39 60 00 00 */	li r11, 0x0
/* 814F1FFC | 39 80 00 00 */	li r12, 0x0
/* 814F2000 | 3B 80 00 00 */	li r28, 0x0
/* 814F2004 | 3B A0 00 00 */	li r29, 0x0
/* 814F2008 | 41 85 00 14 */	bgt cr1, .L_814F201C
/* 814F200C | 39 43 FF FE */	subi r10, r3, 0x2
/* 814F2010 | 7C 14 50 00 */	cmpw r20, r10
/* 814F2014 | 41 81 00 08 */	bgt .L_814F201C
/* 814F2018 | 3B A0 00 01 */	li r29, 0x1
.L_814F201C:
/* 814F201C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814F2020 | 41 82 00 14 */	beq .L_814F2034
/* 814F2024 | 39 43 FF FE */	subi r10, r3, 0x2
/* 814F2028 | 7C 04 50 00 */	cmpw r4, r10
/* 814F202C | 41 81 00 08 */	bgt .L_814F2034
/* 814F2030 | 3B 80 00 01 */	li r28, 0x1
.L_814F2034:
/* 814F2034 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814F2038 | 41 82 00 14 */	beq .L_814F204C
/* 814F203C | 3D 44 80 00 */	addis r10, r4, 0x8000
/* 814F2040 | 28 0A 00 00 */	cmplwi r10, 0x0
/* 814F2044 | 41 82 00 08 */	beq .L_814F204C
/* 814F2048 | 39 80 00 01 */	li r12, 0x1
.L_814F204C:
/* 814F204C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F2050 | 41 82 00 28 */	beq .L_814F2078
/* 814F2054 | 7C 07 30 00 */	cmpw r7, r6
/* 814F2058 | 39 40 00 01 */	li r10, 0x1
/* 814F205C | 40 82 00 10 */	bne .L_814F206C
/* 814F2060 | 7C 07 40 00 */	cmpw r7, r8
/* 814F2064 | 41 82 00 08 */	beq .L_814F206C
/* 814F2068 | 39 40 00 00 */	li r10, 0x0
.L_814F206C:
/* 814F206C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F2070 | 41 82 00 08 */	beq .L_814F2078
/* 814F2074 | 39 60 00 01 */	li r11, 0x1
.L_814F2078:
/* 814F2078 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F207C | 41 82 01 38 */	beq .L_814F21B4
/* 814F2080 | 7C 8A 1E 70 */	srawi r10, r4, 3
/* 814F2084 | 3B 9B 00 07 */	addi r28, r27, 0x7
/* 814F2088 | 7E 4B 16 70 */	srawi r11, r18, 2
/* 814F208C | 56 5D 1E F8 */	clrlslwi r29, r18, 30, 3
/* 814F2090 | 7F 84 E0 50 */	subf r28, r4, r28
/* 814F2094 | 7D 8B D1 D6 */	mullw r12, r11, r26
/* 814F2098 | 7D 6F EA 14 */	add r11, r15, r29
/* 814F209C | 57 9C E8 FE */	srwi r28, r28, 3
/* 814F20A0 | 7F 89 03 A6 */	mtctr r28
/* 814F20A4 | 7C 04 D8 00 */	cmpw r4, r27
/* 814F20A8 | 40 80 01 0C */	bge .L_814F21B4
.L_814F20AC:
/* 814F20AC | 7F 6A 62 14 */	add r27, r10, r12
/* 814F20B0 | 56 3E 07 7E */	clrlwi r30, r17, 29
/* 814F20B4 | 8B 90 00 00 */	lbz r28, 0x0(r16)
/* 814F20B8 | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F20BC | 7F CB F2 14 */	add r30, r11, r30
/* 814F20C0 | 3B B1 00 01 */	addi r29, r17, 0x1
/* 814F20C4 | 7F 9B F1 AE */	stbx r28, r27, r30
/* 814F20C8 | 7F BC 1E 70 */	srawi r28, r29, 3
/* 814F20CC | 57 BD 07 7E */	clrlwi r29, r29, 29
/* 814F20D0 | 3B 71 00 02 */	addi r27, r17, 0x2
/* 814F20D4 | 7F 9C 62 14 */	add r28, r28, r12
/* 814F20D8 | 8B D0 00 01 */	lbz r30, 0x1(r16)
/* 814F20DC | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F20E0 | 7F AB EA 14 */	add r29, r11, r29
/* 814F20E4 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F20E8 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F20EC | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F20F0 | 3B 71 00 03 */	addi r27, r17, 0x3
/* 814F20F4 | 7F 9C 62 14 */	add r28, r28, r12
/* 814F20F8 | 8B D0 00 02 */	lbz r30, 0x2(r16)
/* 814F20FC | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F2100 | 7F AB EA 14 */	add r29, r11, r29
/* 814F2104 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F2108 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F210C | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F2110 | 3B 71 00 04 */	addi r27, r17, 0x4
/* 814F2114 | 7F 9C 62 14 */	add r28, r28, r12
/* 814F2118 | 8B D0 00 03 */	lbz r30, 0x3(r16)
/* 814F211C | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F2120 | 7F AB EA 14 */	add r29, r11, r29
/* 814F2124 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F2128 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F212C | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F2130 | 3B 71 00 05 */	addi r27, r17, 0x5
/* 814F2134 | 7F 9C 62 14 */	add r28, r28, r12
/* 814F2138 | 8B D0 00 04 */	lbz r30, 0x4(r16)
/* 814F213C | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F2140 | 7F AB EA 14 */	add r29, r11, r29
/* 814F2144 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F2148 | 7F 7C 1E 70 */	srawi r28, r27, 3
/* 814F214C | 57 7D 07 7E */	clrlwi r29, r27, 29
/* 814F2150 | 3B 71 00 06 */	addi r27, r17, 0x6
/* 814F2154 | 7F 9C 62 14 */	add r28, r28, r12
/* 814F2158 | 8B D0 00 05 */	lbz r30, 0x5(r16)
/* 814F215C | 57 9C 28 34 */	slwi r28, r28, 5
/* 814F2160 | 7F AB EA 14 */	add r29, r11, r29
/* 814F2164 | 7F DC E9 AE */	stbx r30, r28, r29
/* 814F2168 | 7F 7D 1E 70 */	srawi r29, r27, 3
/* 814F216C | 57 7C 07 7E */	clrlwi r28, r27, 29
/* 814F2170 | 3B D1 00 07 */	addi r30, r17, 0x7
/* 814F2174 | 7F 7D 62 14 */	add r27, r29, r12
/* 814F2178 | 8B B0 00 06 */	lbz r29, 0x6(r16)
/* 814F217C | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F2180 | 7F 8B E2 14 */	add r28, r11, r28
/* 814F2184 | 7F BB E1 AE */	stbx r29, r27, r28
/* 814F2188 | 7F DB 1E 70 */	srawi r27, r30, 3
/* 814F218C | 57 DC 07 7E */	clrlwi r28, r30, 29
/* 814F2190 | 3A 31 00 08 */	addi r17, r17, 0x8
/* 814F2194 | 7F 7B 62 14 */	add r27, r27, r12
/* 814F2198 | 8B B0 00 07 */	lbz r29, 0x7(r16)
/* 814F219C | 57 7B 28 34 */	slwi r27, r27, 5
/* 814F21A0 | 7F 8B E2 14 */	add r28, r11, r28
/* 814F21A4 | 7F BB E1 AE */	stbx r29, r27, r28
/* 814F21A8 | 3A 10 00 08 */	addi r16, r16, 0x8
/* 814F21AC | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F21B0 | 42 00 FE FC */	bdnz .L_814F20AC
.L_814F21B4:
/* 814F21B4 | 7E 4A 16 70 */	srawi r10, r18, 2
/* 814F21B8 | 56 4B 1E F8 */	clrlslwi r11, r18, 30, 3
/* 814F21BC | 7F 8A D1 D6 */	mullw r28, r10, r26
/* 814F21C0 | 7D 51 A0 50 */	subf r10, r17, r20
/* 814F21C4 | 7F 6F 5A 14 */	add r27, r15, r11
/* 814F21C8 | 7D 49 03 A6 */	mtctr r10
/* 814F21CC | 7C 11 A0 00 */	cmpw r17, r20
/* 814F21D0 | 40 80 00 2C */	bge .L_814F21FC
.L_814F21D4:
/* 814F21D4 | 7E 2A 1E 70 */	srawi r10, r17, 3
/* 814F21D8 | 56 2B 07 7E */	clrlwi r11, r17, 29
/* 814F21DC | 7D 4A E2 14 */	add r10, r10, r28
/* 814F21E0 | 89 90 00 00 */	lbz r12, 0x0(r16)
/* 814F21E4 | 55 4A 28 34 */	slwi r10, r10, 5
/* 814F21E8 | 7D 7B 5A 14 */	add r11, r27, r11
/* 814F21EC | 7D 8A 59 AE */	stbx r12, r10, r11
/* 814F21F0 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 814F21F4 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 814F21F8 | 42 00 FF DC */	bdnz .L_814F21D4
.L_814F21FC:
/* 814F21FC | 7E 10 4A 14 */	add r16, r16, r9
/* 814F2200 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_814F2204:
/* 814F2204 | 7C 12 C8 00 */	cmpw r18, r25
/* 814F2208 | 41 80 FD D8 */	blt .L_814F1FE0
/* 814F220C | 38 13 00 01 */	addi r0, r19, 0x1
/* 814F2210 | 54 84 F8 7E */	srwi r4, r4, 1
/* 814F2214 | 7C 07 0E 70 */	srawi r7, r0, 1
/* 814F2218 | 80 CE 00 34 */	lwz r6, 0x34(r14)
/* 814F221C | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814F2220 | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814F2224 | 7F 44 3A 14 */	add r26, r4, r7
/* 814F2228 | 7C 64 00 D0 */	neg r3, r4
/* 814F222C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814F2230 | 54 DB E8 FE */	srwi r27, r6, 3
/* 814F2234 | 7C 05 02 14 */	add r0, r5, r0
/* 814F2238 | 7D C4 D0 50 */	subf r14, r4, r26
/* 814F223C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F2240 | 54 60 00 00 */	clrrwi r0, r3, 31
/* 814F2244 | 55 C3 00 00 */	clrrwi r3, r14, 31
/* 814F2248 | 20 C7 00 08 */	subfic r6, r7, 0x8
/* 814F224C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F2250 | 57 40 00 00 */	clrrwi r0, r26, 31
/* 814F2254 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814F2258 | 48 00 03 00 */	b .L_814F2558
.L_814F225C:
/* 814F225C | 7C 84 D0 00 */	cmpw cr1, r4, r26
/* 814F2260 | 7C 99 23 78 */	mr r25, r4
/* 814F2264 | 40 84 02 E8 */	bge cr1, .L_814F254C
/* 814F2268 | 2C 0E 00 08 */	cmpwi r14, 0x8
/* 814F226C | 39 7A FF F8 */	subi r11, r26, 0x8
/* 814F2270 | 40 81 02 78 */	ble .L_814F24E8
/* 814F2274 | 38 E0 00 00 */	li r7, 0x0
/* 814F2278 | 39 00 00 00 */	li r8, 0x0
/* 814F227C | 39 20 00 00 */	li r9, 0x0
/* 814F2280 | 39 40 00 00 */	li r10, 0x0
/* 814F2284 | 41 85 00 18 */	bgt cr1, .L_814F229C
/* 814F2288 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F228C | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F2290 | 7C 1A 18 00 */	cmpw r26, r3
/* 814F2294 | 41 81 00 08 */	bgt .L_814F229C
/* 814F2298 | 39 40 00 01 */	li r10, 0x1
.L_814F229C:
/* 814F229C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F22A0 | 41 82 00 18 */	beq .L_814F22B8
/* 814F22A4 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F22A8 | 38 63 FF FE */	subi r3, r3, 0x2
/* 814F22AC | 7C 04 18 00 */	cmpw r4, r3
/* 814F22B0 | 41 81 00 08 */	bgt .L_814F22B8
/* 814F22B4 | 39 20 00 01 */	li r9, 0x1
.L_814F22B8:
/* 814F22B8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F22BC | 41 82 00 14 */	beq .L_814F22D0
/* 814F22C0 | 3C 64 80 00 */	addis r3, r4, 0x8000
/* 814F22C4 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814F22C8 | 41 82 00 08 */	beq .L_814F22D0
/* 814F22CC | 39 00 00 01 */	li r8, 0x1
.L_814F22D0:
/* 814F22D0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F22D4 | 41 82 00 30 */	beq .L_814F2304
/* 814F22D8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814F22DC | 39 00 00 01 */	li r8, 0x1
/* 814F22E0 | 7C 00 18 00 */	cmpw r0, r3
/* 814F22E4 | 40 82 00 14 */	bne .L_814F22F8
/* 814F22E8 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814F22EC | 7C 00 18 00 */	cmpw r0, r3
/* 814F22F0 | 41 82 00 08 */	beq .L_814F22F8
/* 814F22F4 | 39 00 00 00 */	li r8, 0x0
.L_814F22F8:
/* 814F22F8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F22FC | 41 82 00 08 */	beq .L_814F2304
/* 814F2300 | 38 E0 00 01 */	li r7, 0x1
.L_814F2304:
/* 814F2304 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F2308 | 41 82 01 E0 */	beq .L_814F24E8
/* 814F230C | 7C 87 1E 70 */	srawi r7, r4, 3
/* 814F2310 | 38 6B 00 07 */	addi r3, r11, 0x7
/* 814F2314 | 7C A9 16 70 */	srawi r9, r5, 2
/* 814F2318 | 54 AA 1E F8 */	clrlslwi r10, r5, 30, 3
/* 814F231C | 7C 64 18 50 */	subf r3, r4, r3
/* 814F2320 | 7D 29 D9 D6 */	mullw r9, r9, r27
/* 814F2324 | 7D 18 52 14 */	add r8, r24, r10
/* 814F2328 | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F232C | 7D 57 52 14 */	add r10, r23, r10
/* 814F2330 | 7C 69 03 A6 */	mtctr r3
/* 814F2334 | 7C 04 58 00 */	cmpw r4, r11
/* 814F2338 | 40 80 01 B0 */	bge .L_814F24E8
.L_814F233C:
/* 814F233C | 89 96 00 00 */	lbz r12, 0x0(r22)
/* 814F2340 | 57 23 07 7E */	clrlwi r3, r25, 29
/* 814F2344 | 7D 67 4A 14 */	add r11, r7, r9
/* 814F2348 | 39 F9 00 01 */	addi r15, r25, 0x1
/* 814F234C | 3A 2C 00 80 */	addi r17, r12, 0x80
/* 814F2350 | 7E 08 1A 14 */	add r16, r8, r3
/* 814F2354 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F2358 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F235C | 7E 2B 81 AE */	stbx r17, r11, r16
/* 814F2360 | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F2364 | 3A 39 00 02 */	addi r17, r25, 0x2
/* 814F2368 | 7E 6A 1A 14 */	add r19, r10, r3
/* 814F236C | 8A 95 00 00 */	lbz r20, 0x0(r21)
/* 814F2370 | 7E 52 4A 14 */	add r18, r18, r9
/* 814F2374 | 39 F9 00 03 */	addi r15, r25, 0x3
/* 814F2378 | 7E 30 1E 70 */	srawi r16, r17, 3
/* 814F237C | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F2380 | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F2384 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F2388 | 7D 70 4A 14 */	add r11, r16, r9
/* 814F238C | 56 53 28 34 */	slwi r19, r18, 5
/* 814F2390 | 7E 48 62 14 */	add r18, r8, r12
/* 814F2394 | 8A 96 00 01 */	lbz r20, 0x1(r22)
/* 814F2398 | 7D F0 1E 70 */	srawi r16, r15, 3
/* 814F239C | 55 F1 07 7E */	clrlwi r17, r15, 29
/* 814F23A0 | 39 F9 00 04 */	addi r15, r25, 0x4
/* 814F23A4 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F23A8 | 7D 8A 62 14 */	add r12, r10, r12
/* 814F23AC | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F23B0 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F23B4 | 55 FF 07 7E */	clrlwi r31, r15, 29
/* 814F23B8 | 3A 99 00 05 */	addi r20, r25, 0x5
/* 814F23BC | 89 F5 00 01 */	lbz r15, 0x1(r21)
/* 814F23C0 | 56 9D 07 7E */	clrlwi r29, r20, 29
/* 814F23C4 | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F23C8 | 7E 10 4A 14 */	add r16, r16, r9
/* 814F23CC | 3B 8F 00 80 */	addi r28, r15, 0x80
/* 814F23D0 | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F23D4 | 7F 93 61 AE */	stbx r28, r19, r12
/* 814F23D8 | 7E 6F 4A 14 */	add r19, r15, r9
/* 814F23DC | 3B 99 00 06 */	addi r28, r25, 0x6
/* 814F23E0 | 7D E8 1A 14 */	add r15, r8, r3
/* 814F23E4 | 8A 96 00 02 */	lbz r20, 0x2(r22)
/* 814F23E8 | 7F 8C 1E 70 */	srawi r12, r28, 3
/* 814F23EC | 7E 52 4A 14 */	add r18, r18, r9
/* 814F23F0 | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F23F4 | 3B D4 00 80 */	addi r30, r20, 0x80
/* 814F23F8 | 7E 8C 4A 14 */	add r20, r12, r9
/* 814F23FC | 7F CB 79 AE */	stbx r30, r11, r15
/* 814F2400 | 7D EA 1A 14 */	add r15, r10, r3
/* 814F2404 | 56 0C 28 34 */	slwi r12, r16, 5
/* 814F2408 | 7E 08 8A 14 */	add r16, r8, r17
/* 814F240C | 88 75 00 02 */	lbz r3, 0x2(r21)
/* 814F2410 | 56 5E 28 34 */	slwi r30, r18, 5
/* 814F2414 | 7E 48 FA 14 */	add r18, r8, r31
/* 814F2418 | 7E 2A 8A 14 */	add r17, r10, r17
/* 814F241C | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F2420 | 7F EA FA 14 */	add r31, r10, r31
/* 814F2424 | 7C 6B 79 AE */	stbx r3, r11, r15
/* 814F2428 | 56 63 28 34 */	slwi r3, r19, 5
/* 814F242C | 7D E8 EA 14 */	add r15, r8, r29
/* 814F2430 | 7D 6A EA 14 */	add r11, r10, r29
/* 814F2434 | 8A 76 00 03 */	lbz r19, 0x3(r22)
/* 814F2438 | 56 94 28 34 */	slwi r20, r20, 5
/* 814F243C | 7F A8 E2 14 */	add r29, r8, r28
/* 814F2440 | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F2444 | 7E 6C 81 AE */	stbx r19, r12, r16
/* 814F2448 | 8A 15 00 03 */	lbz r16, 0x3(r21)
/* 814F244C | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F2450 | 7E 0C 89 AE */	stbx r16, r12, r17
/* 814F2454 | 89 96 00 04 */	lbz r12, 0x4(r22)
/* 814F2458 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F245C | 7D 9E 91 AE */	stbx r12, r30, r18
/* 814F2460 | 89 95 00 04 */	lbz r12, 0x4(r21)
/* 814F2464 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2468 | 7D 9E F9 AE */	stbx r12, r30, r31
/* 814F246C | 89 96 00 05 */	lbz r12, 0x5(r22)
/* 814F2470 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2474 | 7D 83 79 AE */	stbx r12, r3, r15
/* 814F2478 | 89 95 00 05 */	lbz r12, 0x5(r21)
/* 814F247C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2480 | 7D 83 59 AE */	stbx r12, r3, r11
/* 814F2484 | 88 76 00 06 */	lbz r3, 0x6(r22)
/* 814F2488 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F248C | 7C 74 E9 AE */	stbx r3, r20, r29
/* 814F2490 | 89 95 00 06 */	lbz r12, 0x6(r21)
/* 814F2494 | 38 79 00 07 */	addi r3, r25, 0x7
/* 814F2498 | 54 6F 07 7E */	clrlwi r15, r3, 29
/* 814F249C | 7D 6A E2 14 */	add r11, r10, r28
/* 814F24A0 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F24A4 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F24A8 | 7D 94 59 AE */	stbx r12, r20, r11
/* 814F24AC | 7C 63 4A 14 */	add r3, r3, r9
/* 814F24B0 | 54 70 28 34 */	slwi r16, r3, 5
/* 814F24B4 | 7D 68 7A 14 */	add r11, r8, r15
/* 814F24B8 | 89 96 00 07 */	lbz r12, 0x7(r22)
/* 814F24BC | 7C 6A 7A 14 */	add r3, r10, r15
/* 814F24C0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814F24C4 | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814F24C8 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F24CC | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F24D0 | 7D 90 59 AE */	stbx r12, r16, r11
/* 814F24D4 | 89 75 00 07 */	lbz r11, 0x7(r21)
/* 814F24D8 | 3A B5 00 08 */	addi r21, r21, 0x8
/* 814F24DC | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F24E0 | 7D 70 19 AE */	stbx r11, r16, r3
/* 814F24E4 | 42 00 FE 58 */	bdnz .L_814F233C
.L_814F24E8:
/* 814F24E8 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F24EC | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F24F0 | 7D 43 D9 D6 */	mullw r10, r3, r27
/* 814F24F4 | 7C 79 D0 50 */	subf r3, r25, r26
/* 814F24F8 | 7D 38 3A 14 */	add r9, r24, r7
/* 814F24FC | 7D 77 3A 14 */	add r11, r23, r7
/* 814F2500 | 7C 69 03 A6 */	mtctr r3
/* 814F2504 | 7C 19 D0 00 */	cmpw r25, r26
/* 814F2508 | 40 80 00 44 */	bge .L_814F254C
.L_814F250C:
/* 814F250C | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814F2510 | 7F 27 1E 70 */	srawi r7, r25, 3
/* 814F2514 | 7D 07 52 14 */	add r8, r7, r10
/* 814F2518 | 57 2C 07 7E */	clrlwi r12, r25, 29
/* 814F251C | 38 E3 00 80 */	addi r7, r3, 0x80
/* 814F2520 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814F2524 | 55 08 28 34 */	slwi r8, r8, 5
/* 814F2528 | 7C 69 62 14 */	add r3, r9, r12
/* 814F252C | 7C E8 19 AE */	stbx r7, r8, r3
/* 814F2530 | 7C 6B 62 14 */	add r3, r11, r12
/* 814F2534 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F2538 | 88 F5 00 00 */	lbz r7, 0x0(r21)
/* 814F253C | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814F2540 | 38 E7 00 80 */	addi r7, r7, 0x80
/* 814F2544 | 7C E8 19 AE */	stbx r7, r8, r3
/* 814F2548 | 42 00 FF C4 */	bdnz .L_814F250C
.L_814F254C:
/* 814F254C | 7E D6 32 14 */	add r22, r22, r6
/* 814F2550 | 7E B5 32 14 */	add r21, r21, r6
/* 814F2554 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F2558:
/* 814F2558 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F255C | 7C 05 18 00 */	cmpw r5, r3
/* 814F2560 | 41 80 FC FC */	blt .L_814F225C
/* 814F2564 | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F2568 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F256C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F1F48

# .text:0x8128 | 0x814F2570 | size: 0x5E0
.fn TMCJPEG_814F2570, local
/* 814F2570 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F2574 | 38 00 00 08 */	li r0, 0x8
/* 814F2578 | 38 C0 00 10 */	li r6, 0x10
/* 814F257C | 7D 24 00 D0 */	neg r9, r4
/* 814F2580 | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F2584 | 7C B2 2B 78 */	mr r18, r5
/* 814F2588 | 3A 03 18 5C */	addi r16, r3, 0x185c
/* 814F258C | 3B 03 18 DC */	addi r24, r3, 0x18dc
/* 814F2590 | 3A E3 19 1C */	addi r23, r3, 0x191c
/* 814F2594 | 55 2E 00 00 */	clrrwi r14, r9, 31
/* 814F2598 | 81 E3 19 E4 */	lwz r15, 0x19e4(r3)
/* 814F259C | 3C 60 80 00 */	lis r3, 0x8000
/* 814F25A0 | 89 0F 00 20 */	lbz r8, 0x20(r15)
/* 814F25A4 | 80 EF 00 2C */	lwz r7, 0x2c(r15)
/* 814F25A8 | 7D 40 43 D6 */	divw r10, r0, r8
/* 814F25AC | 80 0F 00 40 */	lwz r0, 0x40(r15)
/* 814F25B0 | 81 8F 00 3C */	lwz r12, 0x3c(r15)
/* 814F25B4 | 54 F4 E8 FE */	srwi r20, r7, 3
/* 814F25B8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F25BC | 80 0F 00 44 */	lwz r0, 0x44(r15)
/* 814F25C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F25C4 | 7C 06 43 D6 */	divw r0, r6, r8
/* 814F25C8 | 7E C4 52 14 */	add r22, r4, r10
/* 814F25CC | 21 4A 00 08 */	subfic r10, r10, 0x8
/* 814F25D0 | 7D 04 B0 50 */	subf r8, r4, r22
/* 814F25D4 | 56 C9 00 00 */	clrrwi r9, r22, 31
/* 814F25D8 | 55 1B 00 00 */	clrrwi r27, r8, 31
/* 814F25DC | 7E 65 02 14 */	add r19, r5, r0
/* 814F25E0 | 48 00 02 28 */	b .L_814F2808
.L_814F25E4:
/* 814F25E4 | 7C 84 B0 00 */	cmpw cr1, r4, r22
/* 814F25E8 | 7C 91 23 78 */	mr r17, r4
/* 814F25EC | 40 84 02 14 */	bge cr1, .L_814F2800
/* 814F25F0 | 2C 08 00 08 */	cmpwi r8, 0x8
/* 814F25F4 | 38 D6 FF F8 */	subi r6, r22, 0x8
/* 814F25F8 | 40 81 01 C0 */	ble .L_814F27B8
/* 814F25FC | 38 E0 00 00 */	li r7, 0x0
/* 814F2600 | 39 60 00 00 */	li r11, 0x0
/* 814F2604 | 3A A0 00 00 */	li r21, 0x0
/* 814F2608 | 3B 20 00 00 */	li r25, 0x0
/* 814F260C | 41 85 00 14 */	bgt cr1, .L_814F2620
/* 814F2610 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2614 | 7C 16 00 00 */	cmpw r22, r0
/* 814F2618 | 41 81 00 08 */	bgt .L_814F2620
/* 814F261C | 3B 20 00 01 */	li r25, 0x1
.L_814F2620:
/* 814F2620 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814F2624 | 41 82 00 14 */	beq .L_814F2638
/* 814F2628 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F262C | 7C 04 00 00 */	cmpw r4, r0
/* 814F2630 | 41 81 00 08 */	bgt .L_814F2638
/* 814F2634 | 3A A0 00 01 */	li r21, 0x1
.L_814F2638:
/* 814F2638 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814F263C | 41 82 00 14 */	beq .L_814F2650
/* 814F2640 | 3C 04 80 00 */	addis r0, r4, 0x8000
/* 814F2644 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814F2648 | 41 82 00 08 */	beq .L_814F2650
/* 814F264C | 39 60 00 01 */	li r11, 0x1
.L_814F2650:
/* 814F2650 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F2654 | 41 82 00 28 */	beq .L_814F267C
/* 814F2658 | 7C 09 70 00 */	cmpw r9, r14
/* 814F265C | 38 00 00 01 */	li r0, 0x1
/* 814F2660 | 40 82 00 10 */	bne .L_814F2670
/* 814F2664 | 7C 09 D8 00 */	cmpw r9, r27
/* 814F2668 | 41 82 00 08 */	beq .L_814F2670
/* 814F266C | 38 00 00 00 */	li r0, 0x0
.L_814F2670:
/* 814F2670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F2674 | 41 82 00 08 */	beq .L_814F267C
/* 814F2678 | 38 E0 00 01 */	li r7, 0x1
.L_814F267C:
/* 814F267C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F2680 | 41 82 01 38 */	beq .L_814F27B8
/* 814F2684 | 7C 87 1E 70 */	srawi r7, r4, 3
/* 814F2688 | 3A A6 00 07 */	addi r21, r6, 0x7
/* 814F268C | 7E 40 16 70 */	srawi r0, r18, 2
/* 814F2690 | 56 59 1E F8 */	clrlslwi r25, r18, 30, 3
/* 814F2694 | 7E A4 A8 50 */	subf r21, r4, r21
/* 814F2698 | 7D 60 A1 D6 */	mullw r11, r0, r20
/* 814F269C | 7C 0C CA 14 */	add r0, r12, r25
/* 814F26A0 | 56 B5 E8 FE */	srwi r21, r21, 3
/* 814F26A4 | 7E A9 03 A6 */	mtctr r21
/* 814F26A8 | 7C 04 30 00 */	cmpw r4, r6
/* 814F26AC | 40 80 01 0C */	bge .L_814F27B8
.L_814F26B0:
/* 814F26B0 | 7C C7 5A 14 */	add r6, r7, r11
/* 814F26B4 | 56 3A 07 7E */	clrlwi r26, r17, 29
/* 814F26B8 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F26BC | 8B 90 00 00 */	lbz r28, 0x0(r16)
/* 814F26C0 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F26C4 | 3A B1 00 01 */	addi r21, r17, 0x1
/* 814F26C8 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F26CC | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F26D0 | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F26D4 | 3A B1 00 02 */	addi r21, r17, 0x2
/* 814F26D8 | 7C C6 5A 14 */	add r6, r6, r11
/* 814F26DC | 8B 90 00 01 */	lbz r28, 0x1(r16)
/* 814F26E0 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F26E4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814F26E8 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F26EC | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F26F0 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F26F4 | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F26F8 | 7C C6 5A 14 */	add r6, r6, r11
/* 814F26FC | 3A B1 00 03 */	addi r21, r17, 0x3
/* 814F2700 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F2704 | 8B 90 00 02 */	lbz r28, 0x2(r16)
/* 814F2708 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F270C | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F2710 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F2714 | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F2718 | 7C C6 5A 14 */	add r6, r6, r11
/* 814F271C | 3A B1 00 04 */	addi r21, r17, 0x4
/* 814F2720 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F2724 | 8B 90 00 03 */	lbz r28, 0x3(r16)
/* 814F2728 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F272C | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F2730 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F2734 | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F2738 | 7C C6 5A 14 */	add r6, r6, r11
/* 814F273C | 3A B1 00 05 */	addi r21, r17, 0x5
/* 814F2740 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F2744 | 8B 90 00 04 */	lbz r28, 0x4(r16)
/* 814F2748 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F274C | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F2750 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F2754 | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F2758 | 7C C6 5A 14 */	add r6, r6, r11
/* 814F275C | 3A B1 00 06 */	addi r21, r17, 0x6
/* 814F2760 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F2764 | 8B 90 00 05 */	lbz r28, 0x5(r16)
/* 814F2768 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F276C | 56 BA 07 7E */	clrlwi r26, r21, 29
/* 814F2770 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F2774 | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F2778 | 7C C6 5A 14 */	add r6, r6, r11
/* 814F277C | 3A B1 00 07 */	addi r21, r17, 0x7
/* 814F2780 | 54 D9 28 34 */	slwi r25, r6, 5
/* 814F2784 | 8B 90 00 06 */	lbz r28, 0x6(r16)
/* 814F2788 | 7C C0 D2 14 */	add r6, r0, r26
/* 814F278C | 3A 31 00 08 */	addi r17, r17, 0x8
/* 814F2790 | 7F 99 31 AE */	stbx r28, r25, r6
/* 814F2794 | 7E A6 1E 70 */	srawi r6, r21, 3
/* 814F2798 | 56 B9 07 7E */	clrlwi r25, r21, 29
/* 814F279C | 7C C6 5A 14 */	add r6, r6, r11
/* 814F27A0 | 8B 50 00 07 */	lbz r26, 0x7(r16)
/* 814F27A4 | 54 D5 28 34 */	slwi r21, r6, 5
/* 814F27A8 | 3A 10 00 08 */	addi r16, r16, 0x8
/* 814F27AC | 7C C0 CA 14 */	add r6, r0, r25
/* 814F27B0 | 7F 55 31 AE */	stbx r26, r21, r6
/* 814F27B4 | 42 00 FE FC */	bdnz .L_814F26B0
.L_814F27B8:
/* 814F27B8 | 7E 40 16 70 */	srawi r0, r18, 2
/* 814F27BC | 56 46 1E F8 */	clrlslwi r6, r18, 30, 3
/* 814F27C0 | 7F 20 A1 D6 */	mullw r25, r0, r20
/* 814F27C4 | 7C 11 B0 50 */	subf r0, r17, r22
/* 814F27C8 | 7E AC 32 14 */	add r21, r12, r6
/* 814F27CC | 7C 09 03 A6 */	mtctr r0
/* 814F27D0 | 7C 11 B0 00 */	cmpw r17, r22
/* 814F27D4 | 40 80 00 2C */	bge .L_814F2800
.L_814F27D8:
/* 814F27D8 | 7E 20 1E 70 */	srawi r0, r17, 3
/* 814F27DC | 56 27 07 7E */	clrlwi r7, r17, 29
/* 814F27E0 | 7C 00 CA 14 */	add r0, r0, r25
/* 814F27E4 | 89 70 00 00 */	lbz r11, 0x0(r16)
/* 814F27E8 | 54 06 28 34 */	slwi r6, r0, 5
/* 814F27EC | 3A 31 00 01 */	addi r17, r17, 0x1
/* 814F27F0 | 7C 15 3A 14 */	add r0, r21, r7
/* 814F27F4 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 814F27F8 | 7D 66 01 AE */	stbx r11, r6, r0
/* 814F27FC | 42 00 FF DC */	bdnz .L_814F27D8
.L_814F2800:
/* 814F2800 | 7E 10 52 14 */	add r16, r16, r10
/* 814F2804 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_814F2808:
/* 814F2808 | 7C 12 98 00 */	cmpw r18, r19
/* 814F280C | 41 80 FD D8 */	blt .L_814F25E4
/* 814F2810 | 88 0F 00 20 */	lbz r0, 0x20(r15)
/* 814F2814 | 38 60 00 08 */	li r3, 0x8
/* 814F2818 | 80 CF 00 34 */	lwz r6, 0x34(r15)
/* 814F281C | 54 B5 F8 7E */	srwi r21, r5, 1
/* 814F2820 | 7C 03 03 D6 */	divw r0, r3, r0
/* 814F2824 | 54 DA E8 FE */	srwi r26, r6, 3
/* 814F2828 | 7C 15 02 14 */	add r0, r21, r0
/* 814F282C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F2830 | 48 00 03 08 */	b .L_814F2B38
.L_814F2834:
/* 814F2834 | 7C 84 B0 00 */	cmpw cr1, r4, r22
/* 814F2838 | 7C 99 23 78 */	mr r25, r4
/* 814F283C | 40 84 02 F0 */	bge cr1, .L_814F2B2C
/* 814F2840 | 2C 08 00 08 */	cmpwi r8, 0x8
/* 814F2844 | 39 96 FF F8 */	subi r12, r22, 0x8
/* 814F2848 | 40 81 02 78 */	ble .L_814F2AC0
/* 814F284C | 38 A0 00 00 */	li r5, 0x0
/* 814F2850 | 38 C0 00 00 */	li r6, 0x0
/* 814F2854 | 38 E0 00 00 */	li r7, 0x0
/* 814F2858 | 39 60 00 00 */	li r11, 0x0
/* 814F285C | 41 85 00 18 */	bgt cr1, .L_814F2874
/* 814F2860 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F2864 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2868 | 7C 16 00 00 */	cmpw r22, r0
/* 814F286C | 41 81 00 08 */	bgt .L_814F2874
/* 814F2870 | 39 60 00 01 */	li r11, 0x1
.L_814F2874:
/* 814F2874 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F2878 | 41 82 00 18 */	beq .L_814F2890
/* 814F287C | 3C 60 80 00 */	lis r3, 0x8000
/* 814F2880 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2884 | 7C 04 00 00 */	cmpw r4, r0
/* 814F2888 | 41 81 00 08 */	bgt .L_814F2890
/* 814F288C | 38 E0 00 01 */	li r7, 0x1
.L_814F2890:
/* 814F2890 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F2894 | 41 82 00 14 */	beq .L_814F28A8
/* 814F2898 | 3C 04 80 00 */	addis r0, r4, 0x8000
/* 814F289C | 28 00 00 00 */	cmplwi r0, 0x0
/* 814F28A0 | 41 82 00 08 */	beq .L_814F28A8
/* 814F28A4 | 38 C0 00 01 */	li r6, 0x1
.L_814F28A8:
/* 814F28A8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F28AC | 41 82 00 28 */	beq .L_814F28D4
/* 814F28B0 | 7C 09 70 00 */	cmpw r9, r14
/* 814F28B4 | 38 00 00 01 */	li r0, 0x1
/* 814F28B8 | 40 82 00 10 */	bne .L_814F28C8
/* 814F28BC | 7C 09 D8 00 */	cmpw r9, r27
/* 814F28C0 | 41 82 00 08 */	beq .L_814F28C8
/* 814F28C4 | 38 00 00 00 */	li r0, 0x0
.L_814F28C8:
/* 814F28C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F28CC | 41 82 00 08 */	beq .L_814F28D4
/* 814F28D0 | 38 A0 00 01 */	li r5, 0x1
.L_814F28D4:
/* 814F28D4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F28D8 | 41 82 01 E8 */	beq .L_814F2AC0
/* 814F28DC | 7C 85 1E 70 */	srawi r5, r4, 3
/* 814F28E0 | 39 6C 00 07 */	addi r11, r12, 0x7
/* 814F28E4 | 7E A3 16 70 */	srawi r3, r21, 2
/* 814F28E8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814F28EC | 7D 64 58 50 */	subf r11, r4, r11
/* 814F28F0 | 56 A7 1E F8 */	clrlslwi r7, r21, 30, 3
/* 814F28F4 | 7C C3 D1 D6 */	mullw r6, r3, r26
/* 814F28F8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814F28FC | 7C 00 3A 14 */	add r0, r0, r7
/* 814F2900 | 55 6B E8 FE */	srwi r11, r11, 3
/* 814F2904 | 7C E3 3A 14 */	add r7, r3, r7
/* 814F2908 | 7D 69 03 A6 */	mtctr r11
/* 814F290C | 7C 04 60 00 */	cmpw r4, r12
/* 814F2910 | 40 80 01 B0 */	bge .L_814F2AC0
.L_814F2914:
/* 814F2914 | 89 98 00 00 */	lbz r12, 0x0(r24)
/* 814F2918 | 57 23 07 7E */	clrlwi r3, r25, 29
/* 814F291C | 7D 65 32 14 */	add r11, r5, r6
/* 814F2920 | 39 F9 00 01 */	addi r15, r25, 0x1
/* 814F2924 | 3A 2C 00 80 */	addi r17, r12, 0x80
/* 814F2928 | 7E 00 1A 14 */	add r16, r0, r3
/* 814F292C | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F2930 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F2934 | 7E 2B 81 AE */	stbx r17, r11, r16
/* 814F2938 | 55 EC 07 7E */	clrlwi r12, r15, 29
/* 814F293C | 3A 39 00 02 */	addi r17, r25, 0x2
/* 814F2940 | 7E 67 1A 14 */	add r19, r7, r3
/* 814F2944 | 8A 97 00 00 */	lbz r20, 0x0(r23)
/* 814F2948 | 7E 52 32 14 */	add r18, r18, r6
/* 814F294C | 39 F9 00 03 */	addi r15, r25, 0x3
/* 814F2950 | 7E 30 1E 70 */	srawi r16, r17, 3
/* 814F2954 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F2958 | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F295C | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F2960 | 7D 70 32 14 */	add r11, r16, r6
/* 814F2964 | 56 53 28 34 */	slwi r19, r18, 5
/* 814F2968 | 7E 40 62 14 */	add r18, r0, r12
/* 814F296C | 8A 98 00 01 */	lbz r20, 0x1(r24)
/* 814F2970 | 7D F0 1E 70 */	srawi r16, r15, 3
/* 814F2974 | 55 F1 07 7E */	clrlwi r17, r15, 29
/* 814F2978 | 39 F9 00 04 */	addi r15, r25, 0x4
/* 814F297C | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F2980 | 7D 87 62 14 */	add r12, r7, r12
/* 814F2984 | 7E 93 91 AE */	stbx r20, r19, r18
/* 814F2988 | 7D F2 1E 70 */	srawi r18, r15, 3
/* 814F298C | 55 FF 07 7E */	clrlwi r31, r15, 29
/* 814F2990 | 3A 99 00 05 */	addi r20, r25, 0x5
/* 814F2994 | 89 F7 00 01 */	lbz r15, 0x1(r23)
/* 814F2998 | 56 9D 07 7E */	clrlwi r29, r20, 29
/* 814F299C | 55 6B 28 34 */	slwi r11, r11, 5
/* 814F29A0 | 7E 10 32 14 */	add r16, r16, r6
/* 814F29A4 | 3B 8F 00 80 */	addi r28, r15, 0x80
/* 814F29A8 | 7E 8F 1E 70 */	srawi r15, r20, 3
/* 814F29AC | 7F 93 61 AE */	stbx r28, r19, r12
/* 814F29B0 | 7E 6F 32 14 */	add r19, r15, r6
/* 814F29B4 | 3B 99 00 06 */	addi r28, r25, 0x6
/* 814F29B8 | 7D E0 1A 14 */	add r15, r0, r3
/* 814F29BC | 8A 98 00 02 */	lbz r20, 0x2(r24)
/* 814F29C0 | 7F 8C 1E 70 */	srawi r12, r28, 3
/* 814F29C4 | 7E 52 32 14 */	add r18, r18, r6
/* 814F29C8 | 57 9C 07 7E */	clrlwi r28, r28, 29
/* 814F29CC | 3B D4 00 80 */	addi r30, r20, 0x80
/* 814F29D0 | 7E 8C 32 14 */	add r20, r12, r6
/* 814F29D4 | 7F CB 79 AE */	stbx r30, r11, r15
/* 814F29D8 | 7D E7 1A 14 */	add r15, r7, r3
/* 814F29DC | 56 0C 28 34 */	slwi r12, r16, 5
/* 814F29E0 | 7E 00 8A 14 */	add r16, r0, r17
/* 814F29E4 | 88 77 00 02 */	lbz r3, 0x2(r23)
/* 814F29E8 | 56 5E 28 34 */	slwi r30, r18, 5
/* 814F29EC | 7E 40 FA 14 */	add r18, r0, r31
/* 814F29F0 | 7E 27 8A 14 */	add r17, r7, r17
/* 814F29F4 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F29F8 | 7F E7 FA 14 */	add r31, r7, r31
/* 814F29FC | 7C 6B 79 AE */	stbx r3, r11, r15
/* 814F2A00 | 56 63 28 34 */	slwi r3, r19, 5
/* 814F2A04 | 7D E0 EA 14 */	add r15, r0, r29
/* 814F2A08 | 7D 67 EA 14 */	add r11, r7, r29
/* 814F2A0C | 8A 78 00 03 */	lbz r19, 0x3(r24)
/* 814F2A10 | 56 94 28 34 */	slwi r20, r20, 5
/* 814F2A14 | 7F A0 E2 14 */	add r29, r0, r28
/* 814F2A18 | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F2A1C | 7E 6C 81 AE */	stbx r19, r12, r16
/* 814F2A20 | 8A 17 00 03 */	lbz r16, 0x3(r23)
/* 814F2A24 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F2A28 | 7E 0C 89 AE */	stbx r16, r12, r17
/* 814F2A2C | 89 98 00 04 */	lbz r12, 0x4(r24)
/* 814F2A30 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2A34 | 7D 9E 91 AE */	stbx r12, r30, r18
/* 814F2A38 | 89 97 00 04 */	lbz r12, 0x4(r23)
/* 814F2A3C | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2A40 | 7D 9E F9 AE */	stbx r12, r30, r31
/* 814F2A44 | 89 98 00 05 */	lbz r12, 0x5(r24)
/* 814F2A48 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2A4C | 7D 83 79 AE */	stbx r12, r3, r15
/* 814F2A50 | 89 97 00 05 */	lbz r12, 0x5(r23)
/* 814F2A54 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2A58 | 7D 83 59 AE */	stbx r12, r3, r11
/* 814F2A5C | 88 78 00 06 */	lbz r3, 0x6(r24)
/* 814F2A60 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F2A64 | 7C 74 E9 AE */	stbx r3, r20, r29
/* 814F2A68 | 89 97 00 06 */	lbz r12, 0x6(r23)
/* 814F2A6C | 38 79 00 07 */	addi r3, r25, 0x7
/* 814F2A70 | 54 6F 07 7E */	clrlwi r15, r3, 29
/* 814F2A74 | 7D 67 E2 14 */	add r11, r7, r28
/* 814F2A78 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2A7C | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F2A80 | 7D 94 59 AE */	stbx r12, r20, r11
/* 814F2A84 | 7C 63 32 14 */	add r3, r3, r6
/* 814F2A88 | 54 70 28 34 */	slwi r16, r3, 5
/* 814F2A8C | 7D 60 7A 14 */	add r11, r0, r15
/* 814F2A90 | 89 98 00 07 */	lbz r12, 0x7(r24)
/* 814F2A94 | 7C 67 7A 14 */	add r3, r7, r15
/* 814F2A98 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814F2A9C | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814F2AA0 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F2AA4 | 3B 18 00 08 */	addi r24, r24, 0x8
/* 814F2AA8 | 7D 90 59 AE */	stbx r12, r16, r11
/* 814F2AAC | 89 77 00 07 */	lbz r11, 0x7(r23)
/* 814F2AB0 | 3A F7 00 08 */	addi r23, r23, 0x8
/* 814F2AB4 | 39 6B 00 80 */	addi r11, r11, 0x80
/* 814F2AB8 | 7D 70 19 AE */	stbx r11, r16, r3
/* 814F2ABC | 42 00 FE 58 */	bdnz .L_814F2914
.L_814F2AC0:
/* 814F2AC0 | 7E A0 16 70 */	srawi r0, r21, 2
/* 814F2AC4 | 56 A5 1E F8 */	clrlslwi r5, r21, 30, 3
/* 814F2AC8 | 7C E0 D1 D6 */	mullw r7, r0, r26
/* 814F2ACC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814F2AD0 | 7C 79 B0 50 */	subf r3, r25, r22
/* 814F2AD4 | 7C C0 2A 14 */	add r6, r0, r5
/* 814F2AD8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814F2ADC | 7C A0 2A 14 */	add r5, r0, r5
/* 814F2AE0 | 7C 69 03 A6 */	mtctr r3
/* 814F2AE4 | 7C 19 B0 00 */	cmpw r25, r22
/* 814F2AE8 | 40 80 00 44 */	bge .L_814F2B2C
.L_814F2AEC:
/* 814F2AEC | 88 78 00 00 */	lbz r3, 0x0(r24)
/* 814F2AF0 | 7F 20 1E 70 */	srawi r0, r25, 3
/* 814F2AF4 | 57 2B 07 7E */	clrlwi r11, r25, 29
/* 814F2AF8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814F2AFC | 7C 00 3A 14 */	add r0, r0, r7
/* 814F2B00 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F2B04 | 54 0C 28 34 */	slwi r12, r0, 5
/* 814F2B08 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814F2B0C | 7C 06 5A 14 */	add r0, r6, r11
/* 814F2B10 | 7C 6C 01 AE */	stbx r3, r12, r0
/* 814F2B14 | 7C 05 5A 14 */	add r0, r5, r11
/* 814F2B18 | 88 77 00 00 */	lbz r3, 0x0(r23)
/* 814F2B1C | 3A F7 00 01 */	addi r23, r23, 0x1
/* 814F2B20 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F2B24 | 7C 6C 01 AE */	stbx r3, r12, r0
/* 814F2B28 | 42 00 FF C4 */	bdnz .L_814F2AEC
.L_814F2B2C:
/* 814F2B2C | 7F 18 52 14 */	add r24, r24, r10
/* 814F2B30 | 7E F7 52 14 */	add r23, r23, r10
/* 814F2B34 | 3A B5 00 01 */	addi r21, r21, 0x1
.L_814F2B38:
/* 814F2B38 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814F2B3C | 7C 15 00 00 */	cmpw r21, r0
/* 814F2B40 | 41 80 FC F4 */	blt .L_814F2834
/* 814F2B44 | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F2B48 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F2B4C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F2570

# .text:0x8708 | 0x814F2B50 | size: 0x608
.fn TMCJPEG_814F2B50, local
/* 814F2B50 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F2B54 | BD C1 00 18 */	stmw r14, 0x18(r1)
/* 814F2B58 | 39 E3 18 5C */	addi r15, r3, 0x185c
/* 814F2B5C | 3A E3 18 DC */	addi r23, r3, 0x18dc
/* 814F2B60 | 3A C3 19 1C */	addi r22, r3, 0x191c
/* 814F2B64 | 81 83 19 E4 */	lwz r12, 0x19e4(r3)
/* 814F2B68 | 80 0C 00 18 */	lwz r0, 0x18(r12)
/* 814F2B6C | 80 CC 00 2C */	lwz r6, 0x2c(r12)
/* 814F2B70 | 7C 00 20 40 */	cmplw r0, r4
/* 814F2B74 | 81 CC 00 3C */	lwz r14, 0x3c(r12)
/* 814F2B78 | 83 2C 00 40 */	lwz r25, 0x40(r12)
/* 814F2B7C | 54 D4 E8 FE */	srwi r20, r6, 3
/* 814F2B80 | 83 0C 00 44 */	lwz r24, 0x44(r12)
/* 814F2B84 | 40 82 00 0C */	bne .L_814F2B90
/* 814F2B88 | 88 CC 00 16 */	lbz r6, 0x16(r12)
/* 814F2B8C | 48 00 00 10 */	b .L_814F2B9C
.L_814F2B90:
/* 814F2B90 | 88 0C 00 20 */	lbz r0, 0x20(r12)
/* 814F2B94 | 38 60 00 08 */	li r3, 0x8
/* 814F2B98 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F2B9C:
/* 814F2B9C | 80 0C 00 1C */	lwz r0, 0x1c(r12)
/* 814F2BA0 | 7C 00 28 40 */	cmplw r0, r5
/* 814F2BA4 | 40 82 00 0C */	bne .L_814F2BB0
/* 814F2BA8 | 8A 4C 00 17 */	lbz r18, 0x17(r12)
/* 814F2BAC | 48 00 00 10 */	b .L_814F2BBC
.L_814F2BB0:
/* 814F2BB0 | 88 0C 00 20 */	lbz r0, 0x20(r12)
/* 814F2BB4 | 38 60 00 10 */	li r3, 0x10
/* 814F2BB8 | 7E 43 03 D6 */	divw r18, r3, r0
.L_814F2BBC:
/* 814F2BBC | 7E A4 32 14 */	add r21, r4, r6
/* 814F2BC0 | 7C 04 00 D0 */	neg r0, r4
/* 814F2BC4 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814F2BC8 | 7C B1 2B 78 */	mr r17, r5
/* 814F2BCC | 7D 24 A8 50 */	subf r9, r4, r21
/* 814F2BD0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F2BD4 | 55 20 00 00 */	clrrwi r0, r9, 31
/* 814F2BD8 | 7E 65 92 14 */	add r19, r5, r18
/* 814F2BDC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F2BE0 | 56 AA 00 00 */	clrrwi r10, r21, 31
/* 814F2BE4 | 21 66 00 08 */	subfic r11, r6, 0x8
/* 814F2BE8 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F2BEC | 48 00 02 30 */	b .L_814F2E1C
.L_814F2BF0:
/* 814F2BF0 | 7C 84 A8 00 */	cmpw cr1, r4, r21
/* 814F2BF4 | 7C 90 23 78 */	mr r16, r4
/* 814F2BF8 | 40 84 02 1C */	bge cr1, .L_814F2E14
/* 814F2BFC | 2C 09 00 08 */	cmpwi r9, 0x8
/* 814F2C00 | 38 D5 FF F8 */	subi r6, r21, 0x8
/* 814F2C04 | 40 81 01 C8 */	ble .L_814F2DCC
/* 814F2C08 | 38 E0 00 00 */	li r7, 0x0
/* 814F2C0C | 39 00 00 00 */	li r8, 0x0
/* 814F2C10 | 3B 40 00 00 */	li r26, 0x0
/* 814F2C14 | 3B 60 00 00 */	li r27, 0x0
/* 814F2C18 | 41 85 00 14 */	bgt cr1, .L_814F2C2C
/* 814F2C1C | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2C20 | 7C 15 00 00 */	cmpw r21, r0
/* 814F2C24 | 41 81 00 08 */	bgt .L_814F2C2C
/* 814F2C28 | 3B 60 00 01 */	li r27, 0x1
.L_814F2C2C:
/* 814F2C2C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814F2C30 | 41 82 00 14 */	beq .L_814F2C44
/* 814F2C34 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2C38 | 7C 04 00 00 */	cmpw r4, r0
/* 814F2C3C | 41 81 00 08 */	bgt .L_814F2C44
/* 814F2C40 | 3B 40 00 01 */	li r26, 0x1
.L_814F2C44:
/* 814F2C44 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814F2C48 | 41 82 00 14 */	beq .L_814F2C5C
/* 814F2C4C | 3C 04 80 00 */	addis r0, r4, 0x8000
/* 814F2C50 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814F2C54 | 41 82 00 08 */	beq .L_814F2C5C
/* 814F2C58 | 39 00 00 01 */	li r8, 0x1
.L_814F2C5C:
/* 814F2C5C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F2C60 | 41 82 00 30 */	beq .L_814F2C90
/* 814F2C64 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814F2C68 | 39 00 00 01 */	li r8, 0x1
/* 814F2C6C | 7C 0A 00 00 */	cmpw r10, r0
/* 814F2C70 | 40 82 00 14 */	bne .L_814F2C84
/* 814F2C74 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814F2C78 | 7C 0A 00 00 */	cmpw r10, r0
/* 814F2C7C | 41 82 00 08 */	beq .L_814F2C84
/* 814F2C80 | 39 00 00 00 */	li r8, 0x0
.L_814F2C84:
/* 814F2C84 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F2C88 | 41 82 00 08 */	beq .L_814F2C90
/* 814F2C8C | 38 E0 00 01 */	li r7, 0x1
.L_814F2C90:
/* 814F2C90 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F2C94 | 41 82 01 38 */	beq .L_814F2DCC
/* 814F2C98 | 7C 87 1E 70 */	srawi r7, r4, 3
/* 814F2C9C | 3B 46 00 07 */	addi r26, r6, 0x7
/* 814F2CA0 | 7E 20 16 70 */	srawi r0, r17, 2
/* 814F2CA4 | 56 3B 1E F8 */	clrlslwi r27, r17, 30, 3
/* 814F2CA8 | 7F 44 D0 50 */	subf r26, r4, r26
/* 814F2CAC | 7D 00 A1 D6 */	mullw r8, r0, r20
/* 814F2CB0 | 7C 0E DA 14 */	add r0, r14, r27
/* 814F2CB4 | 57 5A E8 FE */	srwi r26, r26, 3
/* 814F2CB8 | 7F 49 03 A6 */	mtctr r26
/* 814F2CBC | 7C 04 30 00 */	cmpw r4, r6
/* 814F2CC0 | 40 80 01 0C */	bge .L_814F2DCC
.L_814F2CC4:
/* 814F2CC4 | 7C C7 42 14 */	add r6, r7, r8
/* 814F2CC8 | 56 1C 07 7E */	clrlwi r28, r16, 29
/* 814F2CCC | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2CD0 | 8B AF 00 00 */	lbz r29, 0x0(r15)
/* 814F2CD4 | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2CD8 | 3B 50 00 01 */	addi r26, r16, 0x1
/* 814F2CDC | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2CE0 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2CE4 | 57 5C 07 7E */	clrlwi r28, r26, 29
/* 814F2CE8 | 3B 50 00 02 */	addi r26, r16, 0x2
/* 814F2CEC | 7C C6 42 14 */	add r6, r6, r8
/* 814F2CF0 | 8B AF 00 01 */	lbz r29, 0x1(r15)
/* 814F2CF4 | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2CF8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814F2CFC | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2D00 | 57 5C 07 7E */	clrlwi r28, r26, 29
/* 814F2D04 | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2D08 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2D0C | 7C C6 42 14 */	add r6, r6, r8
/* 814F2D10 | 3B 50 00 03 */	addi r26, r16, 0x3
/* 814F2D14 | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2D18 | 8B AF 00 02 */	lbz r29, 0x2(r15)
/* 814F2D1C | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2D20 | 57 5C 07 7E */	clrlwi r28, r26, 29
/* 814F2D24 | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2D28 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2D2C | 7C C6 42 14 */	add r6, r6, r8
/* 814F2D30 | 3B 50 00 04 */	addi r26, r16, 0x4
/* 814F2D34 | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2D38 | 8B AF 00 03 */	lbz r29, 0x3(r15)
/* 814F2D3C | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2D40 | 57 5C 07 7E */	clrlwi r28, r26, 29
/* 814F2D44 | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2D48 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2D4C | 7C C6 42 14 */	add r6, r6, r8
/* 814F2D50 | 3B 50 00 05 */	addi r26, r16, 0x5
/* 814F2D54 | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2D58 | 8B AF 00 04 */	lbz r29, 0x4(r15)
/* 814F2D5C | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2D60 | 57 5C 07 7E */	clrlwi r28, r26, 29
/* 814F2D64 | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2D68 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2D6C | 7C C6 42 14 */	add r6, r6, r8
/* 814F2D70 | 3B 50 00 06 */	addi r26, r16, 0x6
/* 814F2D74 | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2D78 | 8B AF 00 05 */	lbz r29, 0x5(r15)
/* 814F2D7C | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2D80 | 57 5C 07 7E */	clrlwi r28, r26, 29
/* 814F2D84 | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2D88 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2D8C | 7C C6 42 14 */	add r6, r6, r8
/* 814F2D90 | 3B 50 00 07 */	addi r26, r16, 0x7
/* 814F2D94 | 54 DB 28 34 */	slwi r27, r6, 5
/* 814F2D98 | 8B AF 00 06 */	lbz r29, 0x6(r15)
/* 814F2D9C | 7C C0 E2 14 */	add r6, r0, r28
/* 814F2DA0 | 3A 10 00 08 */	addi r16, r16, 0x8
/* 814F2DA4 | 7F BB 31 AE */	stbx r29, r27, r6
/* 814F2DA8 | 7F 46 1E 70 */	srawi r6, r26, 3
/* 814F2DAC | 57 5B 07 7E */	clrlwi r27, r26, 29
/* 814F2DB0 | 7C C6 42 14 */	add r6, r6, r8
/* 814F2DB4 | 8B 8F 00 07 */	lbz r28, 0x7(r15)
/* 814F2DB8 | 54 DA 28 34 */	slwi r26, r6, 5
/* 814F2DBC | 39 EF 00 08 */	addi r15, r15, 0x8
/* 814F2DC0 | 7C C0 DA 14 */	add r6, r0, r27
/* 814F2DC4 | 7F 9A 31 AE */	stbx r28, r26, r6
/* 814F2DC8 | 42 00 FE FC */	bdnz .L_814F2CC4
.L_814F2DCC:
/* 814F2DCC | 7E 20 16 70 */	srawi r0, r17, 2
/* 814F2DD0 | 56 27 1E F8 */	clrlslwi r7, r17, 30, 3
/* 814F2DD4 | 7C 00 A1 D6 */	mullw r0, r0, r20
/* 814F2DD8 | 7C D0 A8 50 */	subf r6, r16, r21
/* 814F2DDC | 7F 6E 3A 14 */	add r27, r14, r7
/* 814F2DE0 | 7C C9 03 A6 */	mtctr r6
/* 814F2DE4 | 7C 10 A8 00 */	cmpw r16, r21
/* 814F2DE8 | 40 80 00 2C */	bge .L_814F2E14
.L_814F2DEC:
/* 814F2DEC | 7E 06 1E 70 */	srawi r6, r16, 3
/* 814F2DF0 | 56 08 07 7E */	clrlwi r8, r16, 29
/* 814F2DF4 | 7C C6 02 14 */	add r6, r6, r0
/* 814F2DF8 | 8B 4F 00 00 */	lbz r26, 0x0(r15)
/* 814F2DFC | 54 C7 28 34 */	slwi r7, r6, 5
/* 814F2E00 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 814F2E04 | 7C DB 42 14 */	add r6, r27, r8
/* 814F2E08 | 39 EF 00 01 */	addi r15, r15, 0x1
/* 814F2E0C | 7F 47 31 AE */	stbx r26, r7, r6
/* 814F2E10 | 42 00 FF DC */	bdnz .L_814F2DEC
.L_814F2E14:
/* 814F2E14 | 7D EF 5A 14 */	add r15, r15, r11
/* 814F2E18 | 3A 31 00 01 */	addi r17, r17, 0x1
.L_814F2E1C:
/* 814F2E1C | 7C 11 98 00 */	cmpw r17, r19
/* 814F2E20 | 41 80 FD D0 */	blt .L_814F2BF0
/* 814F2E24 | 38 12 00 01 */	addi r0, r18, 0x1
/* 814F2E28 | 80 6C 00 34 */	lwz r3, 0x34(r12)
/* 814F2E2C | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814F2E30 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814F2E34 | 54 6E E8 FE */	srwi r14, r3, 3
/* 814F2E38 | 7C 05 02 14 */	add r0, r5, r0
/* 814F2E3C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F2E40 | 48 00 03 00 */	b .L_814F3140
.L_814F2E44:
/* 814F2E44 | 7C 84 A8 00 */	cmpw cr1, r4, r21
/* 814F2E48 | 7C 9A 23 78 */	mr r26, r4
/* 814F2E4C | 40 84 02 E8 */	bge cr1, .L_814F3134
/* 814F2E50 | 2C 09 00 08 */	cmpwi r9, 0x8
/* 814F2E54 | 39 95 FF F8 */	subi r12, r21, 0x8
/* 814F2E58 | 40 81 02 78 */	ble .L_814F30D0
/* 814F2E5C | 38 C0 00 00 */	li r6, 0x0
/* 814F2E60 | 38 E0 00 00 */	li r7, 0x0
/* 814F2E64 | 39 00 00 00 */	li r8, 0x0
/* 814F2E68 | 39 E0 00 00 */	li r15, 0x0
/* 814F2E6C | 41 85 00 18 */	bgt cr1, .L_814F2E84
/* 814F2E70 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F2E74 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2E78 | 7C 15 00 00 */	cmpw r21, r0
/* 814F2E7C | 41 81 00 08 */	bgt .L_814F2E84
/* 814F2E80 | 39 E0 00 01 */	li r15, 0x1
.L_814F2E84:
/* 814F2E84 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 814F2E88 | 41 82 00 18 */	beq .L_814F2EA0
/* 814F2E8C | 3C 60 80 00 */	lis r3, 0x8000
/* 814F2E90 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814F2E94 | 7C 04 00 00 */	cmpw r4, r0
/* 814F2E98 | 41 81 00 08 */	bgt .L_814F2EA0
/* 814F2E9C | 39 00 00 01 */	li r8, 0x1
.L_814F2EA0:
/* 814F2EA0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814F2EA4 | 41 82 00 14 */	beq .L_814F2EB8
/* 814F2EA8 | 3C 04 80 00 */	addis r0, r4, 0x8000
/* 814F2EAC | 28 00 00 00 */	cmplwi r0, 0x0
/* 814F2EB0 | 41 82 00 08 */	beq .L_814F2EB8
/* 814F2EB4 | 38 E0 00 01 */	li r7, 0x1
.L_814F2EB8:
/* 814F2EB8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F2EBC | 41 82 00 30 */	beq .L_814F2EEC
/* 814F2EC0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814F2EC4 | 38 60 00 01 */	li r3, 0x1
/* 814F2EC8 | 7C 0A 00 00 */	cmpw r10, r0
/* 814F2ECC | 40 82 00 14 */	bne .L_814F2EE0
/* 814F2ED0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814F2ED4 | 7C 0A 00 00 */	cmpw r10, r0
/* 814F2ED8 | 41 82 00 08 */	beq .L_814F2EE0
/* 814F2EDC | 38 60 00 00 */	li r3, 0x0
.L_814F2EE0:
/* 814F2EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F2EE4 | 41 82 00 08 */	beq .L_814F2EEC
/* 814F2EE8 | 38 C0 00 01 */	li r6, 0x1
.L_814F2EEC:
/* 814F2EEC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814F2EF0 | 41 82 01 E0 */	beq .L_814F30D0
/* 814F2EF4 | 7C 86 1E 70 */	srawi r6, r4, 3
/* 814F2EF8 | 38 6C 00 07 */	addi r3, r12, 0x7
/* 814F2EFC | 7C A7 16 70 */	srawi r7, r5, 2
/* 814F2F00 | 54 A8 1E F8 */	clrlslwi r8, r5, 30, 3
/* 814F2F04 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F2F08 | 7C E7 71 D6 */	mullw r7, r7, r14
/* 814F2F0C | 7C 19 42 14 */	add r0, r25, r8
/* 814F2F10 | 54 63 E8 FE */	srwi r3, r3, 3
/* 814F2F14 | 7D 18 42 14 */	add r8, r24, r8
/* 814F2F18 | 7C 69 03 A6 */	mtctr r3
/* 814F2F1C | 7C 04 60 00 */	cmpw r4, r12
/* 814F2F20 | 40 80 01 B0 */	bge .L_814F30D0
.L_814F2F24:
/* 814F2F24 | 89 F7 00 00 */	lbz r15, 0x0(r23)
/* 814F2F28 | 57 43 07 7E */	clrlwi r3, r26, 29
/* 814F2F2C | 7D 86 3A 14 */	add r12, r6, r7
/* 814F2F30 | 3A 1A 00 01 */	addi r16, r26, 0x1
/* 814F2F34 | 3A 4F 00 80 */	addi r18, r15, 0x80
/* 814F2F38 | 7E 20 1A 14 */	add r17, r0, r3
/* 814F2F3C | 55 8C 28 34 */	slwi r12, r12, 5
/* 814F2F40 | 7E 13 1E 70 */	srawi r19, r16, 3
/* 814F2F44 | 7E 4C 89 AE */	stbx r18, r12, r17
/* 814F2F48 | 56 0F 07 7E */	clrlwi r15, r16, 29
/* 814F2F4C | 3A 3A 00 02 */	addi r17, r26, 0x2
/* 814F2F50 | 7E 88 1A 14 */	add r20, r8, r3
/* 814F2F54 | 8B 76 00 00 */	lbz r27, 0x0(r22)
/* 814F2F58 | 7E 73 3A 14 */	add r19, r19, r7
/* 814F2F5C | 3A 1A 00 03 */	addi r16, r26, 0x3
/* 814F2F60 | 7E 32 1E 70 */	srawi r18, r17, 3
/* 814F2F64 | 3B 7B 00 80 */	addi r27, r27, 0x80
/* 814F2F68 | 56 23 07 7E */	clrlwi r3, r17, 29
/* 814F2F6C | 7F 6C A1 AE */	stbx r27, r12, r20
/* 814F2F70 | 7D 92 3A 14 */	add r12, r18, r7
/* 814F2F74 | 56 74 28 34 */	slwi r20, r19, 5
/* 814F2F78 | 7E 60 7A 14 */	add r19, r0, r15
/* 814F2F7C | 8B 77 00 01 */	lbz r27, 0x1(r23)
/* 814F2F80 | 56 11 07 7E */	clrlwi r17, r16, 29
/* 814F2F84 | 7E 10 1E 70 */	srawi r16, r16, 3
/* 814F2F88 | 3A 5A 00 04 */	addi r18, r26, 0x4
/* 814F2F8C | 3B 7B 00 80 */	addi r27, r27, 0x80
/* 814F2F90 | 7D E8 7A 14 */	add r15, r8, r15
/* 814F2F94 | 7F 74 99 AE */	stbx r27, r20, r19
/* 814F2F98 | 56 5E 07 7E */	clrlwi r30, r18, 29
/* 814F2F9C | 7E 52 1E 70 */	srawi r18, r18, 3
/* 814F2FA0 | 3B 7A 00 05 */	addi r27, r26, 0x5
/* 814F2FA4 | 8A 76 00 01 */	lbz r19, 0x1(r22)
/* 814F2FA8 | 55 8C 28 34 */	slwi r12, r12, 5
/* 814F2FAC | 57 7C 07 7E */	clrlwi r28, r27, 29
/* 814F2FB0 | 7E 10 3A 14 */	add r16, r16, r7
/* 814F2FB4 | 3B B3 00 80 */	addi r29, r19, 0x80
/* 814F2FB8 | 7F 73 1E 70 */	srawi r19, r27, 3
/* 814F2FBC | 7F B4 79 AE */	stbx r29, r20, r15
/* 814F2FC0 | 3B 7A 00 06 */	addi r27, r26, 0x6
/* 814F2FC4 | 7F 6F 1E 70 */	srawi r15, r27, 3
/* 814F2FC8 | 7F A0 1A 14 */	add r29, r0, r3
/* 814F2FCC | 8A 97 00 02 */	lbz r20, 0x2(r23)
/* 814F2FD0 | 7E 73 3A 14 */	add r19, r19, r7
/* 814F2FD4 | 7E 52 3A 14 */	add r18, r18, r7
/* 814F2FD8 | 57 7B 07 7E */	clrlwi r27, r27, 29
/* 814F2FDC | 3B F4 00 80 */	addi r31, r20, 0x80
/* 814F2FE0 | 7E 8F 3A 14 */	add r20, r15, r7
/* 814F2FE4 | 7F EC E9 AE */	stbx r31, r12, r29
/* 814F2FE8 | 7D E8 1A 14 */	add r15, r8, r3
/* 814F2FEC | 56 1F 28 34 */	slwi r31, r16, 5
/* 814F2FF0 | 7E 00 8A 14 */	add r16, r0, r17
/* 814F2FF4 | 88 76 00 02 */	lbz r3, 0x2(r22)
/* 814F2FF8 | 56 5D 28 34 */	slwi r29, r18, 5
/* 814F2FFC | 7E 40 F2 14 */	add r18, r0, r30
/* 814F3000 | 7E 28 8A 14 */	add r17, r8, r17
/* 814F3004 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F3008 | 7F C8 F2 14 */	add r30, r8, r30
/* 814F300C | 7C 6C 79 AE */	stbx r3, r12, r15
/* 814F3010 | 56 63 28 34 */	slwi r3, r19, 5
/* 814F3014 | 7D E0 E2 14 */	add r15, r0, r28
/* 814F3018 | 7D 88 E2 14 */	add r12, r8, r28
/* 814F301C | 8A 77 00 03 */	lbz r19, 0x3(r23)
/* 814F3020 | 56 94 28 34 */	slwi r20, r20, 5
/* 814F3024 | 7F 80 DA 14 */	add r28, r0, r27
/* 814F3028 | 3A 73 00 80 */	addi r19, r19, 0x80
/* 814F302C | 7E 7F 81 AE */	stbx r19, r31, r16
/* 814F3030 | 8A 16 00 03 */	lbz r16, 0x3(r22)
/* 814F3034 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F3038 | 7E 1F 89 AE */	stbx r16, r31, r17
/* 814F303C | 8A 17 00 04 */	lbz r16, 0x4(r23)
/* 814F3040 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F3044 | 7E 1D 91 AE */	stbx r16, r29, r18
/* 814F3048 | 8A 16 00 04 */	lbz r16, 0x4(r22)
/* 814F304C | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F3050 | 7E 1D F1 AE */	stbx r16, r29, r30
/* 814F3054 | 8A 17 00 05 */	lbz r16, 0x5(r23)
/* 814F3058 | 3A 10 00 80 */	addi r16, r16, 0x80
/* 814F305C | 7E 03 79 AE */	stbx r16, r3, r15
/* 814F3060 | 89 F6 00 05 */	lbz r15, 0x5(r22)
/* 814F3064 | 39 EF 00 80 */	addi r15, r15, 0x80
/* 814F3068 | 7D E3 61 AE */	stbx r15, r3, r12
/* 814F306C | 88 77 00 06 */	lbz r3, 0x6(r23)
/* 814F3070 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F3074 | 7C 74 E1 AE */	stbx r3, r20, r28
/* 814F3078 | 89 F6 00 06 */	lbz r15, 0x6(r22)
/* 814F307C | 38 7A 00 07 */	addi r3, r26, 0x7
/* 814F3080 | 54 70 07 7E */	clrlwi r16, r3, 29
/* 814F3084 | 7D 88 DA 14 */	add r12, r8, r27
/* 814F3088 | 39 EF 00 80 */	addi r15, r15, 0x80
/* 814F308C | 7C 63 1E 70 */	srawi r3, r3, 3
/* 814F3090 | 7D F4 61 AE */	stbx r15, r20, r12
/* 814F3094 | 7C 63 3A 14 */	add r3, r3, r7
/* 814F3098 | 54 71 28 34 */	slwi r17, r3, 5
/* 814F309C | 7D 80 82 14 */	add r12, r0, r16
/* 814F30A0 | 89 F7 00 07 */	lbz r15, 0x7(r23)
/* 814F30A4 | 7C 68 82 14 */	add r3, r8, r16
/* 814F30A8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814F30AC | 3B 5A 00 08 */	addi r26, r26, 0x8
/* 814F30B0 | 39 EF 00 80 */	addi r15, r15, 0x80
/* 814F30B4 | 3A F7 00 08 */	addi r23, r23, 0x8
/* 814F30B8 | 7D F1 61 AE */	stbx r15, r17, r12
/* 814F30BC | 89 96 00 07 */	lbz r12, 0x7(r22)
/* 814F30C0 | 3A D6 00 08 */	addi r22, r22, 0x8
/* 814F30C4 | 39 8C 00 80 */	addi r12, r12, 0x80
/* 814F30C8 | 7D 91 19 AE */	stbx r12, r17, r3
/* 814F30CC | 42 00 FE 58 */	bdnz .L_814F2F24
.L_814F30D0:
/* 814F30D0 | 7C A0 16 70 */	srawi r0, r5, 2
/* 814F30D4 | 54 A3 1E F8 */	clrlslwi r3, r5, 30, 3
/* 814F30D8 | 7C E0 71 D6 */	mullw r7, r0, r14
/* 814F30DC | 7C 1A A8 50 */	subf r0, r26, r21
/* 814F30E0 | 7C D9 1A 14 */	add r6, r25, r3
/* 814F30E4 | 7D 18 1A 14 */	add r8, r24, r3
/* 814F30E8 | 7C 09 03 A6 */	mtctr r0
/* 814F30EC | 7C 1A A8 00 */	cmpw r26, r21
/* 814F30F0 | 40 80 00 44 */	bge .L_814F3134
.L_814F30F4:
/* 814F30F4 | 88 77 00 00 */	lbz r3, 0x0(r23)
/* 814F30F8 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F30FC | 57 4C 07 7E */	clrlwi r12, r26, 29
/* 814F3100 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F3104 | 7C 00 3A 14 */	add r0, r0, r7
/* 814F3108 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F310C | 54 0F 28 34 */	slwi r15, r0, 5
/* 814F3110 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 814F3114 | 7C 06 62 14 */	add r0, r6, r12
/* 814F3118 | 7C 6F 01 AE */	stbx r3, r15, r0
/* 814F311C | 7C 08 62 14 */	add r0, r8, r12
/* 814F3120 | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814F3124 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F3128 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814F312C | 7C 6F 01 AE */	stbx r3, r15, r0
/* 814F3130 | 42 00 FF C4 */	bdnz .L_814F30F4
.L_814F3134:
/* 814F3134 | 7E F7 5A 14 */	add r23, r23, r11
/* 814F3138 | 7E D6 5A 14 */	add r22, r22, r11
/* 814F313C | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F3140:
/* 814F3140 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814F3144 | 7C 05 00 00 */	cmpw r5, r0
/* 814F3148 | 41 80 FC FC */	blt .L_814F2E44
/* 814F314C | B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 814F3150 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F3154 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F2B50

# .text:0x8D10 | 0x814F3158 | size: 0x18C
.fn TMCJPEG_814F3158, local
/* 814F3158 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F315C | 38 C0 00 08 */	li r6, 0x8
/* 814F3160 | BE 41 00 08 */	stmw r18, 0x8(r1)
/* 814F3164 | 3B A3 18 5C */	addi r29, r3, 0x185c
/* 814F3168 | 3B 83 18 9C */	addi r28, r3, 0x189c
/* 814F316C | 3B 63 18 DC */	addi r27, r3, 0x18dc
/* 814F3170 | 81 03 19 E4 */	lwz r8, 0x19e4(r3)
/* 814F3174 | 88 08 00 20 */	lbz r0, 0x20(r8)
/* 814F3178 | 80 E8 00 2C */	lwz r7, 0x2c(r8)
/* 814F317C | 7C 06 03 D6 */	divw r0, r6, r0
/* 814F3180 | 81 88 00 3C */	lwz r12, 0x3c(r8)
/* 814F3184 | 83 E8 00 40 */	lwz r31, 0x40(r8)
/* 814F3188 | 54 F7 E8 FE */	srwi r23, r7, 3
/* 814F318C | 83 C8 00 44 */	lwz r30, 0x44(r8)
/* 814F3190 | 7F 24 02 14 */	add r25, r4, r0
/* 814F3194 | 7F 05 02 14 */	add r24, r5, r0
/* 814F3198 | 20 60 00 08 */	subfic r3, r0, 0x8
/* 814F319C | 48 00 01 34 */	b .L_814F32D0
.L_814F31A0:
/* 814F31A0 | 7C A0 16 70 */	srawi r0, r5, 2
/* 814F31A4 | 54 A9 1E F8 */	clrlslwi r9, r5, 30, 3
/* 814F31A8 | 7C E0 B9 D6 */	mullw r7, r0, r23
/* 814F31AC | 7C 04 C8 00 */	cmpw r4, r25
/* 814F31B0 | 7C 9A 23 78 */	mr r26, r4
/* 814F31B4 | 7C CC 4A 14 */	add r6, r12, r9
/* 814F31B8 | 7D 1F 4A 14 */	add r8, r31, r9
/* 814F31BC | 7D 3E 4A 14 */	add r9, r30, r9
/* 814F31C0 | 7E C4 C8 50 */	subf r22, r4, r25
/* 814F31C4 | 40 80 00 FC */	bge .L_814F32C0
/* 814F31C8 | 56 C0 F8 7F */	srwi. r0, r22, 1
/* 814F31CC | 7C 09 03 A6 */	mtctr r0
/* 814F31D0 | 41 82 00 9C */	beq .L_814F326C
.L_814F31D4:
/* 814F31D4 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F31D8 | 57 4A 07 7E */	clrlwi r10, r26, 29
/* 814F31DC | 7C 00 3A 14 */	add r0, r0, r7
/* 814F31E0 | 8A 9D 00 00 */	lbz r20, 0x0(r29)
/* 814F31E4 | 54 0B 28 34 */	slwi r11, r0, 5
/* 814F31E8 | 7E 46 52 14 */	add r18, r6, r10
/* 814F31EC | 7E 8B 91 AE */	stbx r20, r11, r18
/* 814F31F0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F31F4 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F31F8 | 7E 68 52 14 */	add r19, r8, r10
/* 814F31FC | 8A 9C 00 00 */	lbz r20, 0x0(r28)
/* 814F3200 | 7E A9 52 14 */	add r21, r9, r10
/* 814F3204 | 57 4A 07 7E */	clrlwi r10, r26, 29
/* 814F3208 | 7C 00 3A 14 */	add r0, r0, r7
/* 814F320C | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F3210 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F3214 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F3218 | 7E 46 52 14 */	add r18, r6, r10
/* 814F321C | 7E 68 52 14 */	add r19, r8, r10
/* 814F3220 | 8A 9B 00 00 */	lbz r20, 0x0(r27)
/* 814F3224 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F3228 | 7E 8B A9 AE */	stbx r20, r11, r21
/* 814F322C | 54 0B 28 34 */	slwi r11, r0, 5
/* 814F3230 | 7E A9 52 14 */	add r21, r9, r10
/* 814F3234 | 8A 9D 00 01 */	lbz r20, 0x1(r29)
/* 814F3238 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814F323C | 7E 8B 91 AE */	stbx r20, r11, r18
/* 814F3240 | 8A 9C 00 01 */	lbz r20, 0x1(r28)
/* 814F3244 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814F3248 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F324C | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F3250 | 8A 9B 00 01 */	lbz r20, 0x1(r27)
/* 814F3254 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814F3258 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F325C | 7E 8B A9 AE */	stbx r20, r11, r21
/* 814F3260 | 42 00 FF 74 */	bdnz .L_814F31D4
/* 814F3264 | 72 D6 00 01 */	andi. r22, r22, 0x1
/* 814F3268 | 41 82 00 58 */	beq .L_814F32C0
.L_814F326C:
/* 814F326C | 7E C9 03 A6 */	mtctr r22
.L_814F3270:
/* 814F3270 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F3274 | 57 4A 07 7E */	clrlwi r10, r26, 29
/* 814F3278 | 7C 00 3A 14 */	add r0, r0, r7
/* 814F327C | 8A 9D 00 00 */	lbz r20, 0x0(r29)
/* 814F3280 | 54 0B 28 34 */	slwi r11, r0, 5
/* 814F3284 | 7E 46 52 14 */	add r18, r6, r10
/* 814F3288 | 7E 8B 91 AE */	stbx r20, r11, r18
/* 814F328C | 7E 68 52 14 */	add r19, r8, r10
/* 814F3290 | 7E A9 52 14 */	add r21, r9, r10
/* 814F3294 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F3298 | 8A 9C 00 00 */	lbz r20, 0x0(r28)
/* 814F329C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F32A0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814F32A4 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F32A8 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F32AC | 8A 9B 00 00 */	lbz r20, 0x0(r27)
/* 814F32B0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814F32B4 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F32B8 | 7E 8B A9 AE */	stbx r20, r11, r21
/* 814F32BC | 42 00 FF B4 */	bdnz .L_814F3270
.L_814F32C0:
/* 814F32C0 | 7F BD 1A 14 */	add r29, r29, r3
/* 814F32C4 | 7F 9C 1A 14 */	add r28, r28, r3
/* 814F32C8 | 7F 7B 1A 14 */	add r27, r27, r3
/* 814F32CC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F32D0:
/* 814F32D0 | 7C 05 C0 00 */	cmpw r5, r24
/* 814F32D4 | 41 80 FE CC */	blt .L_814F31A0
/* 814F32D8 | BA 41 00 08 */	lmw r18, 0x8(r1)
/* 814F32DC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F32E0 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F3158

# .text:0x8E9C | 0x814F32E4 | size: 0x1C0
.fn TMCJPEG_814F32E4, local
/* 814F32E4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F32E8 | BE 41 00 08 */	stmw r18, 0x8(r1)
/* 814F32EC | 3B A3 18 5C */	addi r29, r3, 0x185c
/* 814F32F0 | 3B 83 18 9C */	addi r28, r3, 0x189c
/* 814F32F4 | 3B 63 18 DC */	addi r27, r3, 0x18dc
/* 814F32F8 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F32FC | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F3300 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F3304 | 7C 00 20 40 */	cmplw r0, r4
/* 814F3308 | 81 87 00 3C */	lwz r12, 0x3c(r7)
/* 814F330C | 83 E7 00 40 */	lwz r31, 0x40(r7)
/* 814F3310 | 54 D7 E8 FE */	srwi r23, r6, 3
/* 814F3314 | 83 C7 00 44 */	lwz r30, 0x44(r7)
/* 814F3318 | 40 82 00 0C */	bne .L_814F3324
/* 814F331C | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F3320 | 48 00 00 10 */	b .L_814F3330
.L_814F3324:
/* 814F3324 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F3328 | 38 60 00 08 */	li r3, 0x8
/* 814F332C | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F3330:
/* 814F3330 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F3334 | 7C 00 28 40 */	cmplw r0, r5
/* 814F3338 | 40 82 00 0C */	bne .L_814F3344
/* 814F333C | 88 07 00 17 */	lbz r0, 0x17(r7)
/* 814F3340 | 48 00 00 10 */	b .L_814F3350
.L_814F3344:
/* 814F3344 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F3348 | 38 60 00 08 */	li r3, 0x8
/* 814F334C | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F3350:
/* 814F3350 | 7F 24 32 14 */	add r25, r4, r6
/* 814F3354 | 7F 05 02 14 */	add r24, r5, r0
/* 814F3358 | 20 66 00 08 */	subfic r3, r6, 0x8
/* 814F335C | 48 00 01 34 */	b .L_814F3490
.L_814F3360:
/* 814F3360 | 7C A0 16 70 */	srawi r0, r5, 2
/* 814F3364 | 54 A9 1E F8 */	clrlslwi r9, r5, 30, 3
/* 814F3368 | 7C E0 B9 D6 */	mullw r7, r0, r23
/* 814F336C | 7C 04 C8 00 */	cmpw r4, r25
/* 814F3370 | 7C 9A 23 78 */	mr r26, r4
/* 814F3374 | 7C CC 4A 14 */	add r6, r12, r9
/* 814F3378 | 7D 1F 4A 14 */	add r8, r31, r9
/* 814F337C | 7D 3E 4A 14 */	add r9, r30, r9
/* 814F3380 | 7E C4 C8 50 */	subf r22, r4, r25
/* 814F3384 | 40 80 00 FC */	bge .L_814F3480
/* 814F3388 | 56 C0 F8 7F */	srwi. r0, r22, 1
/* 814F338C | 7C 09 03 A6 */	mtctr r0
/* 814F3390 | 41 82 00 9C */	beq .L_814F342C
.L_814F3394:
/* 814F3394 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F3398 | 57 4A 07 7E */	clrlwi r10, r26, 29
/* 814F339C | 7C 00 3A 14 */	add r0, r0, r7
/* 814F33A0 | 8A 9D 00 00 */	lbz r20, 0x0(r29)
/* 814F33A4 | 54 0B 28 34 */	slwi r11, r0, 5
/* 814F33A8 | 7E 46 52 14 */	add r18, r6, r10
/* 814F33AC | 7E 8B 91 AE */	stbx r20, r11, r18
/* 814F33B0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F33B4 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F33B8 | 7E 68 52 14 */	add r19, r8, r10
/* 814F33BC | 8A 9C 00 00 */	lbz r20, 0x0(r28)
/* 814F33C0 | 7E A9 52 14 */	add r21, r9, r10
/* 814F33C4 | 57 4A 07 7E */	clrlwi r10, r26, 29
/* 814F33C8 | 7C 00 3A 14 */	add r0, r0, r7
/* 814F33CC | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F33D0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F33D4 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F33D8 | 7E 46 52 14 */	add r18, r6, r10
/* 814F33DC | 7E 68 52 14 */	add r19, r8, r10
/* 814F33E0 | 8A 9B 00 00 */	lbz r20, 0x0(r27)
/* 814F33E4 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F33E8 | 7E 8B A9 AE */	stbx r20, r11, r21
/* 814F33EC | 54 0B 28 34 */	slwi r11, r0, 5
/* 814F33F0 | 7E A9 52 14 */	add r21, r9, r10
/* 814F33F4 | 8A 9D 00 01 */	lbz r20, 0x1(r29)
/* 814F33F8 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814F33FC | 7E 8B 91 AE */	stbx r20, r11, r18
/* 814F3400 | 8A 9C 00 01 */	lbz r20, 0x1(r28)
/* 814F3404 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814F3408 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F340C | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F3410 | 8A 9B 00 01 */	lbz r20, 0x1(r27)
/* 814F3414 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814F3418 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F341C | 7E 8B A9 AE */	stbx r20, r11, r21
/* 814F3420 | 42 00 FF 74 */	bdnz .L_814F3394
/* 814F3424 | 72 D6 00 01 */	andi. r22, r22, 0x1
/* 814F3428 | 41 82 00 58 */	beq .L_814F3480
.L_814F342C:
/* 814F342C | 7E C9 03 A6 */	mtctr r22
.L_814F3430:
/* 814F3430 | 7F 40 1E 70 */	srawi r0, r26, 3
/* 814F3434 | 57 4A 07 7E */	clrlwi r10, r26, 29
/* 814F3438 | 7C 00 3A 14 */	add r0, r0, r7
/* 814F343C | 8A 9D 00 00 */	lbz r20, 0x0(r29)
/* 814F3440 | 54 0B 28 34 */	slwi r11, r0, 5
/* 814F3444 | 7E 46 52 14 */	add r18, r6, r10
/* 814F3448 | 7E 8B 91 AE */	stbx r20, r11, r18
/* 814F344C | 7E 68 52 14 */	add r19, r8, r10
/* 814F3450 | 7E A9 52 14 */	add r21, r9, r10
/* 814F3454 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F3458 | 8A 9C 00 00 */	lbz r20, 0x0(r28)
/* 814F345C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F3460 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814F3464 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F3468 | 7E 8B 99 AE */	stbx r20, r11, r19
/* 814F346C | 8A 9B 00 00 */	lbz r20, 0x0(r27)
/* 814F3470 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814F3474 | 3A 94 00 80 */	addi r20, r20, 0x80
/* 814F3478 | 7E 8B A9 AE */	stbx r20, r11, r21
/* 814F347C | 42 00 FF B4 */	bdnz .L_814F3430
.L_814F3480:
/* 814F3480 | 7F BD 1A 14 */	add r29, r29, r3
/* 814F3484 | 7F 9C 1A 14 */	add r28, r28, r3
/* 814F3488 | 7F 7B 1A 14 */	add r27, r27, r3
/* 814F348C | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F3490:
/* 814F3490 | 7C 05 C0 00 */	cmpw r5, r24
/* 814F3494 | 41 80 FE CC */	blt .L_814F3360
/* 814F3498 | BA 41 00 08 */	lmw r18, 0x8(r1)
/* 814F349C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F34A0 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F32E4

# .text:0x905C | 0x814F34A4 | size: 0x288
.fn TMCJPEG_814F34A4, local
/* 814F34A4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F34A8 | 38 E0 00 08 */	li r7, 0x8
/* 814F34AC | 7C 04 00 D0 */	neg r0, r4
/* 814F34B0 | BE A1 00 14 */	stmw r21, 0x14(r1)
/* 814F34B4 | 3B C3 18 5C */	addi r30, r3, 0x185c
/* 814F34B8 | 81 23 19 E4 */	lwz r9, 0x19e4(r3)
/* 814F34BC | 3C 60 80 00 */	lis r3, 0x8000
/* 814F34C0 | 88 C9 00 20 */	lbz r6, 0x20(r9)
/* 814F34C4 | 81 09 00 2C */	lwz r8, 0x2c(r9)
/* 814F34C8 | 7C E7 33 D6 */	divw r7, r7, r6
/* 814F34CC | 83 E9 00 3C */	lwz r31, 0x3c(r9)
/* 814F34D0 | 54 06 00 00 */	clrrwi r6, r0, 31
/* 814F34D4 | 55 1A E8 FE */	srwi r26, r8, 3
/* 814F34D8 | 7F 84 3A 14 */	add r28, r4, r7
/* 814F34DC | 7C 04 E0 50 */	subf r0, r4, r28
/* 814F34E0 | 7F 65 3A 14 */	add r27, r5, r7
/* 814F34E4 | 21 27 00 08 */	subfic r9, r7, 0x8
/* 814F34E8 | 57 87 00 00 */	clrrwi r7, r28, 31
/* 814F34EC | 54 08 00 00 */	clrrwi r8, r0, 31
/* 814F34F0 | 48 00 02 28 */	b .L_814F3718
.L_814F34F4:
/* 814F34F4 | 7C 84 E0 00 */	cmpw cr1, r4, r28
/* 814F34F8 | 7C 9D 23 78 */	mr r29, r4
/* 814F34FC | 40 84 02 14 */	bge cr1, .L_814F3710
/* 814F3500 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F3504 | 3A DC FF F8 */	subi r22, r28, 0x8
/* 814F3508 | 40 81 01 C0 */	ble .L_814F36C8
/* 814F350C | 39 60 00 00 */	li r11, 0x0
/* 814F3510 | 39 80 00 00 */	li r12, 0x0
/* 814F3514 | 3A A0 00 00 */	li r21, 0x0
/* 814F3518 | 3A E0 00 00 */	li r23, 0x0
/* 814F351C | 41 85 00 14 */	bgt cr1, .L_814F3530
/* 814F3520 | 39 43 FF FE */	subi r10, r3, 0x2
/* 814F3524 | 7C 1C 50 00 */	cmpw r28, r10
/* 814F3528 | 41 81 00 08 */	bgt .L_814F3530
/* 814F352C | 3A E0 00 01 */	li r23, 0x1
.L_814F3530:
/* 814F3530 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814F3534 | 41 82 00 14 */	beq .L_814F3548
/* 814F3538 | 39 43 FF FE */	subi r10, r3, 0x2
/* 814F353C | 7C 04 50 00 */	cmpw r4, r10
/* 814F3540 | 41 81 00 08 */	bgt .L_814F3548
/* 814F3544 | 3A A0 00 01 */	li r21, 0x1
.L_814F3548:
/* 814F3548 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814F354C | 41 82 00 14 */	beq .L_814F3560
/* 814F3550 | 3D 44 80 00 */	addis r10, r4, 0x8000
/* 814F3554 | 28 0A 00 00 */	cmplwi r10, 0x0
/* 814F3558 | 41 82 00 08 */	beq .L_814F3560
/* 814F355C | 39 80 00 01 */	li r12, 0x1
.L_814F3560:
/* 814F3560 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F3564 | 41 82 00 28 */	beq .L_814F358C
/* 814F3568 | 7C 07 30 00 */	cmpw r7, r6
/* 814F356C | 39 40 00 01 */	li r10, 0x1
/* 814F3570 | 40 82 00 10 */	bne .L_814F3580
/* 814F3574 | 7C 07 40 00 */	cmpw r7, r8
/* 814F3578 | 41 82 00 08 */	beq .L_814F3580
/* 814F357C | 39 40 00 00 */	li r10, 0x0
.L_814F3580:
/* 814F3580 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F3584 | 41 82 00 08 */	beq .L_814F358C
/* 814F3588 | 39 60 00 01 */	li r11, 0x1
.L_814F358C:
/* 814F358C | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F3590 | 41 82 01 38 */	beq .L_814F36C8
/* 814F3594 | 7C 8A 1E 70 */	srawi r10, r4, 3
/* 814F3598 | 3B 36 00 07 */	addi r25, r22, 0x7
/* 814F359C | 7C AB 16 70 */	srawi r11, r5, 2
/* 814F35A0 | 54 B5 1E F8 */	clrlslwi r21, r5, 30, 3
/* 814F35A4 | 7F 24 C8 50 */	subf r25, r4, r25
/* 814F35A8 | 7D 8B D1 D6 */	mullw r12, r11, r26
/* 814F35AC | 7D 7F AA 14 */	add r11, r31, r21
/* 814F35B0 | 57 39 E8 FE */	srwi r25, r25, 3
/* 814F35B4 | 7F 29 03 A6 */	mtctr r25
/* 814F35B8 | 7C 04 B0 00 */	cmpw r4, r22
/* 814F35BC | 40 80 01 0C */	bge .L_814F36C8
.L_814F35C0:
/* 814F35C0 | 7E AA 62 14 */	add r21, r10, r12
/* 814F35C4 | 57 B8 07 7E */	clrlwi r24, r29, 29
/* 814F35C8 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F35CC | 8B 3E 00 00 */	lbz r25, 0x0(r30)
/* 814F35D0 | 7E AB C2 14 */	add r21, r11, r24
/* 814F35D4 | 3A DD 00 01 */	addi r22, r29, 0x1
/* 814F35D8 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F35DC | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F35E0 | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F35E4 | 3A DD 00 02 */	addi r22, r29, 0x2
/* 814F35E8 | 7E B5 62 14 */	add r21, r21, r12
/* 814F35EC | 8B 3E 00 01 */	lbz r25, 0x1(r30)
/* 814F35F0 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F35F4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F35F8 | 7E AB C2 14 */	add r21, r11, r24
/* 814F35FC | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F3600 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3604 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F3608 | 7E B5 62 14 */	add r21, r21, r12
/* 814F360C | 3A DD 00 03 */	addi r22, r29, 0x3
/* 814F3610 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3614 | 8B 3E 00 02 */	lbz r25, 0x2(r30)
/* 814F3618 | 7E AB C2 14 */	add r21, r11, r24
/* 814F361C | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F3620 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3624 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F3628 | 7E B5 62 14 */	add r21, r21, r12
/* 814F362C | 3A DD 00 04 */	addi r22, r29, 0x4
/* 814F3630 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3634 | 8B 3E 00 03 */	lbz r25, 0x3(r30)
/* 814F3638 | 7E AB C2 14 */	add r21, r11, r24
/* 814F363C | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F3640 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3644 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F3648 | 7E B5 62 14 */	add r21, r21, r12
/* 814F364C | 3A DD 00 05 */	addi r22, r29, 0x5
/* 814F3650 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3654 | 8B 3E 00 04 */	lbz r25, 0x4(r30)
/* 814F3658 | 7E AB C2 14 */	add r21, r11, r24
/* 814F365C | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F3660 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3664 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F3668 | 7E B5 62 14 */	add r21, r21, r12
/* 814F366C | 3A DD 00 06 */	addi r22, r29, 0x6
/* 814F3670 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3674 | 8B 3E 00 05 */	lbz r25, 0x5(r30)
/* 814F3678 | 7E AB C2 14 */	add r21, r11, r24
/* 814F367C | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3680 | 7E D7 1E 70 */	srawi r23, r22, 3
/* 814F3684 | 7E F7 62 14 */	add r23, r23, r12
/* 814F3688 | 56 D6 07 7E */	clrlwi r22, r22, 29
/* 814F368C | 56 F8 28 34 */	slwi r24, r23, 5
/* 814F3690 | 3B 3D 00 07 */	addi r25, r29, 0x7
/* 814F3694 | 8A BE 00 06 */	lbz r21, 0x6(r30)
/* 814F3698 | 7E EB B2 14 */	add r23, r11, r22
/* 814F369C | 3B BD 00 08 */	addi r29, r29, 0x8
/* 814F36A0 | 7E B8 B9 AE */	stbx r21, r24, r23
/* 814F36A4 | 7F 38 1E 70 */	srawi r24, r25, 3
/* 814F36A8 | 57 39 07 7E */	clrlwi r25, r25, 29
/* 814F36AC | 7F 18 62 14 */	add r24, r24, r12
/* 814F36B0 | 8A FE 00 07 */	lbz r23, 0x7(r30)
/* 814F36B4 | 57 18 28 34 */	slwi r24, r24, 5
/* 814F36B8 | 7F 2B CA 14 */	add r25, r11, r25
/* 814F36BC | 7E F8 C9 AE */	stbx r23, r24, r25
/* 814F36C0 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814F36C4 | 42 00 FE FC */	bdnz .L_814F35C0
.L_814F36C8:
/* 814F36C8 | 7C AA 16 70 */	srawi r10, r5, 2
/* 814F36CC | 54 AB 1E F8 */	clrlslwi r11, r5, 30, 3
/* 814F36D0 | 7E CA D1 D6 */	mullw r22, r10, r26
/* 814F36D4 | 7D 5D E0 50 */	subf r10, r29, r28
/* 814F36D8 | 7E BF 5A 14 */	add r21, r31, r11
/* 814F36DC | 7D 49 03 A6 */	mtctr r10
/* 814F36E0 | 7C 1D E0 00 */	cmpw r29, r28
/* 814F36E4 | 40 80 00 2C */	bge .L_814F3710
.L_814F36E8:
/* 814F36E8 | 7F AA 1E 70 */	srawi r10, r29, 3
/* 814F36EC | 57 AC 07 7E */	clrlwi r12, r29, 29
/* 814F36F0 | 7D 4A B2 14 */	add r10, r10, r22
/* 814F36F4 | 8B 3E 00 00 */	lbz r25, 0x0(r30)
/* 814F36F8 | 55 4B 28 34 */	slwi r11, r10, 5
/* 814F36FC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F3700 | 7D 55 62 14 */	add r10, r21, r12
/* 814F3704 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F3708 | 7F 2B 51 AE */	stbx r25, r11, r10
/* 814F370C | 42 00 FF DC */	bdnz .L_814F36E8
.L_814F3710:
/* 814F3710 | 7F DE 4A 14 */	add r30, r30, r9
/* 814F3714 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F3718:
/* 814F3718 | 7C 05 D8 00 */	cmpw r5, r27
/* 814F371C | 41 80 FD D8 */	blt .L_814F34F4
/* 814F3720 | BA A1 00 14 */	lmw r21, 0x14(r1)
/* 814F3724 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F3728 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F34A4

# .text:0x92E4 | 0x814F372C | size: 0x2BC
.fn TMCJPEG_814F372C, local
/* 814F372C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F3730 | BE A1 00 14 */	stmw r21, 0x14(r1)
/* 814F3734 | 3B C3 18 5C */	addi r30, r3, 0x185c
/* 814F3738 | 80 C3 19 E4 */	lwz r6, 0x19e4(r3)
/* 814F373C | 80 06 00 18 */	lwz r0, 0x18(r6)
/* 814F3740 | 80 66 00 2C */	lwz r3, 0x2c(r6)
/* 814F3744 | 7C 00 20 40 */	cmplw r0, r4
/* 814F3748 | 83 E6 00 3C */	lwz r31, 0x3c(r6)
/* 814F374C | 54 7A E8 FE */	srwi r26, r3, 3
/* 814F3750 | 40 82 00 0C */	bne .L_814F375C
/* 814F3754 | 89 26 00 16 */	lbz r9, 0x16(r6)
/* 814F3758 | 48 00 00 10 */	b .L_814F3768
.L_814F375C:
/* 814F375C | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814F3760 | 38 60 00 08 */	li r3, 0x8
/* 814F3764 | 7D 23 03 D6 */	divw r9, r3, r0
.L_814F3768:
/* 814F3768 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 814F376C | 7C 00 28 40 */	cmplw r0, r5
/* 814F3770 | 40 82 00 0C */	bne .L_814F377C
/* 814F3774 | 88 C6 00 17 */	lbz r6, 0x17(r6)
/* 814F3778 | 48 00 00 10 */	b .L_814F3788
.L_814F377C:
/* 814F377C | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814F3780 | 38 60 00 08 */	li r3, 0x8
/* 814F3784 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F3788:
/* 814F3788 | 7F 84 4A 14 */	add r28, r4, r9
/* 814F378C | 7C 64 00 D0 */	neg r3, r4
/* 814F3790 | 7C 04 E0 50 */	subf r0, r4, r28
/* 814F3794 | 7F 65 32 14 */	add r27, r5, r6
/* 814F3798 | 54 66 00 00 */	clrrwi r6, r3, 31
/* 814F379C | 57 87 00 00 */	clrrwi r7, r28, 31
/* 814F37A0 | 54 08 00 00 */	clrrwi r8, r0, 31
/* 814F37A4 | 21 29 00 08 */	subfic r9, r9, 0x8
/* 814F37A8 | 3C 60 80 00 */	lis r3, 0x8000
/* 814F37AC | 48 00 02 28 */	b .L_814F39D4
.L_814F37B0:
/* 814F37B0 | 7C 84 E0 00 */	cmpw cr1, r4, r28
/* 814F37B4 | 7C 9D 23 78 */	mr r29, r4
/* 814F37B8 | 40 84 02 14 */	bge cr1, .L_814F39CC
/* 814F37BC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F37C0 | 3A DC FF F8 */	subi r22, r28, 0x8
/* 814F37C4 | 40 81 01 C0 */	ble .L_814F3984
/* 814F37C8 | 39 60 00 00 */	li r11, 0x0
/* 814F37CC | 39 80 00 00 */	li r12, 0x0
/* 814F37D0 | 3A A0 00 00 */	li r21, 0x0
/* 814F37D4 | 3A E0 00 00 */	li r23, 0x0
/* 814F37D8 | 41 85 00 14 */	bgt cr1, .L_814F37EC
/* 814F37DC | 39 43 FF FE */	subi r10, r3, 0x2
/* 814F37E0 | 7C 1C 50 00 */	cmpw r28, r10
/* 814F37E4 | 41 81 00 08 */	bgt .L_814F37EC
/* 814F37E8 | 3A E0 00 01 */	li r23, 0x1
.L_814F37EC:
/* 814F37EC | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814F37F0 | 41 82 00 14 */	beq .L_814F3804
/* 814F37F4 | 39 43 FF FE */	subi r10, r3, 0x2
/* 814F37F8 | 7C 04 50 00 */	cmpw r4, r10
/* 814F37FC | 41 81 00 08 */	bgt .L_814F3804
/* 814F3800 | 3A A0 00 01 */	li r21, 0x1
.L_814F3804:
/* 814F3804 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814F3808 | 41 82 00 14 */	beq .L_814F381C
/* 814F380C | 3D 44 80 00 */	addis r10, r4, 0x8000
/* 814F3810 | 28 0A 00 00 */	cmplwi r10, 0x0
/* 814F3814 | 41 82 00 08 */	beq .L_814F381C
/* 814F3818 | 39 80 00 01 */	li r12, 0x1
.L_814F381C:
/* 814F381C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F3820 | 41 82 00 28 */	beq .L_814F3848
/* 814F3824 | 7C 07 30 00 */	cmpw r7, r6
/* 814F3828 | 39 40 00 01 */	li r10, 0x1
/* 814F382C | 40 82 00 10 */	bne .L_814F383C
/* 814F3830 | 7C 07 40 00 */	cmpw r7, r8
/* 814F3834 | 41 82 00 08 */	beq .L_814F383C
/* 814F3838 | 39 40 00 00 */	li r10, 0x0
.L_814F383C:
/* 814F383C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F3840 | 41 82 00 08 */	beq .L_814F3848
/* 814F3844 | 39 60 00 01 */	li r11, 0x1
.L_814F3848:
/* 814F3848 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814F384C | 41 82 01 38 */	beq .L_814F3984
/* 814F3850 | 7C 8A 1E 70 */	srawi r10, r4, 3
/* 814F3854 | 3B 36 00 07 */	addi r25, r22, 0x7
/* 814F3858 | 7C AB 16 70 */	srawi r11, r5, 2
/* 814F385C | 54 B5 1E F8 */	clrlslwi r21, r5, 30, 3
/* 814F3860 | 7F 24 C8 50 */	subf r25, r4, r25
/* 814F3864 | 7D 8B D1 D6 */	mullw r12, r11, r26
/* 814F3868 | 7D 7F AA 14 */	add r11, r31, r21
/* 814F386C | 57 39 E8 FE */	srwi r25, r25, 3
/* 814F3870 | 7F 29 03 A6 */	mtctr r25
/* 814F3874 | 7C 04 B0 00 */	cmpw r4, r22
/* 814F3878 | 40 80 01 0C */	bge .L_814F3984
.L_814F387C:
/* 814F387C | 7E AA 62 14 */	add r21, r10, r12
/* 814F3880 | 57 B8 07 7E */	clrlwi r24, r29, 29
/* 814F3884 | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3888 | 8B 3E 00 00 */	lbz r25, 0x0(r30)
/* 814F388C | 7E AB C2 14 */	add r21, r11, r24
/* 814F3890 | 3A DD 00 01 */	addi r22, r29, 0x1
/* 814F3894 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3898 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F389C | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F38A0 | 3A DD 00 02 */	addi r22, r29, 0x2
/* 814F38A4 | 7E B5 62 14 */	add r21, r21, r12
/* 814F38A8 | 8B 3E 00 01 */	lbz r25, 0x1(r30)
/* 814F38AC | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F38B0 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F38B4 | 7E AB C2 14 */	add r21, r11, r24
/* 814F38B8 | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F38BC | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F38C0 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F38C4 | 7E B5 62 14 */	add r21, r21, r12
/* 814F38C8 | 3A DD 00 03 */	addi r22, r29, 0x3
/* 814F38CC | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F38D0 | 8B 3E 00 02 */	lbz r25, 0x2(r30)
/* 814F38D4 | 7E AB C2 14 */	add r21, r11, r24
/* 814F38D8 | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F38DC | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F38E0 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F38E4 | 7E B5 62 14 */	add r21, r21, r12
/* 814F38E8 | 3A DD 00 04 */	addi r22, r29, 0x4
/* 814F38EC | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F38F0 | 8B 3E 00 03 */	lbz r25, 0x3(r30)
/* 814F38F4 | 7E AB C2 14 */	add r21, r11, r24
/* 814F38F8 | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F38FC | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3900 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F3904 | 7E B5 62 14 */	add r21, r21, r12
/* 814F3908 | 3A DD 00 05 */	addi r22, r29, 0x5
/* 814F390C | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3910 | 8B 3E 00 04 */	lbz r25, 0x4(r30)
/* 814F3914 | 7E AB C2 14 */	add r21, r11, r24
/* 814F3918 | 56 D8 07 7E */	clrlwi r24, r22, 29
/* 814F391C | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F3920 | 7E D5 1E 70 */	srawi r21, r22, 3
/* 814F3924 | 7E B5 62 14 */	add r21, r21, r12
/* 814F3928 | 3A DD 00 06 */	addi r22, r29, 0x6
/* 814F392C | 56 B7 28 34 */	slwi r23, r21, 5
/* 814F3930 | 8B 3E 00 05 */	lbz r25, 0x5(r30)
/* 814F3934 | 7E AB C2 14 */	add r21, r11, r24
/* 814F3938 | 7F 37 A9 AE */	stbx r25, r23, r21
/* 814F393C | 7E D7 1E 70 */	srawi r23, r22, 3
/* 814F3940 | 7E F7 62 14 */	add r23, r23, r12
/* 814F3944 | 56 D6 07 7E */	clrlwi r22, r22, 29
/* 814F3948 | 56 F8 28 34 */	slwi r24, r23, 5
/* 814F394C | 3B 3D 00 07 */	addi r25, r29, 0x7
/* 814F3950 | 8A BE 00 06 */	lbz r21, 0x6(r30)
/* 814F3954 | 7E EB B2 14 */	add r23, r11, r22
/* 814F3958 | 3B BD 00 08 */	addi r29, r29, 0x8
/* 814F395C | 7E B8 B9 AE */	stbx r21, r24, r23
/* 814F3960 | 7F 38 1E 70 */	srawi r24, r25, 3
/* 814F3964 | 57 39 07 7E */	clrlwi r25, r25, 29
/* 814F3968 | 7F 18 62 14 */	add r24, r24, r12
/* 814F396C | 8A FE 00 07 */	lbz r23, 0x7(r30)
/* 814F3970 | 57 18 28 34 */	slwi r24, r24, 5
/* 814F3974 | 7F 2B CA 14 */	add r25, r11, r25
/* 814F3978 | 7E F8 C9 AE */	stbx r23, r24, r25
/* 814F397C | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814F3980 | 42 00 FE FC */	bdnz .L_814F387C
.L_814F3984:
/* 814F3984 | 7C AA 16 70 */	srawi r10, r5, 2
/* 814F3988 | 54 AB 1E F8 */	clrlslwi r11, r5, 30, 3
/* 814F398C | 7E CA D1 D6 */	mullw r22, r10, r26
/* 814F3990 | 7D 5D E0 50 */	subf r10, r29, r28
/* 814F3994 | 7E BF 5A 14 */	add r21, r31, r11
/* 814F3998 | 7D 49 03 A6 */	mtctr r10
/* 814F399C | 7C 1D E0 00 */	cmpw r29, r28
/* 814F39A0 | 40 80 00 2C */	bge .L_814F39CC
.L_814F39A4:
/* 814F39A4 | 7F AA 1E 70 */	srawi r10, r29, 3
/* 814F39A8 | 57 AC 07 7E */	clrlwi r12, r29, 29
/* 814F39AC | 7D 4A B2 14 */	add r10, r10, r22
/* 814F39B0 | 8B 3E 00 00 */	lbz r25, 0x0(r30)
/* 814F39B4 | 55 4B 28 34 */	slwi r11, r10, 5
/* 814F39B8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F39BC | 7D 55 62 14 */	add r10, r21, r12
/* 814F39C0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F39C4 | 7F 2B 51 AE */	stbx r25, r11, r10
/* 814F39C8 | 42 00 FF DC */	bdnz .L_814F39A4
.L_814F39CC:
/* 814F39CC | 7F DE 4A 14 */	add r30, r30, r9
/* 814F39D0 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F39D4:
/* 814F39D4 | 7C 05 D8 00 */	cmpw r5, r27
/* 814F39D8 | 41 80 FD D8 */	blt .L_814F37B0
/* 814F39DC | BA A1 00 14 */	lmw r21, 0x14(r1)
/* 814F39E0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F39E4 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F372C

# .text:0x95A0 | 0x814F39E8 | size: 0x2A8
.fn TMCJPEGDEC_set_converterRGB565, global
/* 814F39E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F39EC | 38 83 18 58 */	addi r4, r3, 0x1858
/* 814F39F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F39F4 | 88 03 17 FC */	lbz r0, 0x17fc(r3)
/* 814F39F8 | 80 A3 19 E4 */	lwz r5, 0x19e4(r3)
/* 814F39FC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814F3A00 | 41 82 01 44 */	beq .L_814F3B44
/* 814F3A04 | 40 80 00 1C */	bge .L_814F3A20
/* 814F3A08 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814F3A0C | 41 82 00 84 */	beq .L_814F3A90
/* 814F3A10 | 40 80 00 D0 */	bge .L_814F3AE0
/* 814F3A14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F3A18 | 40 80 00 18 */	bge .L_814F3A30
/* 814F3A1C | 48 00 01 F4 */	b .L_814F3C10
.L_814F3A20:
/* 814F3A20 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814F3A24 | 41 82 01 B8 */	beq .L_814F3BDC
/* 814F3A28 | 40 80 01 E8 */	bge .L_814F3C10
/* 814F3A2C | 48 00 01 6C */	b .L_814F3B98
.L_814F3A30:
/* 814F3A30 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814F3A34 | 39 64 00 04 */	addi r11, r4, 0x4
/* 814F3A38 | 3F E0 81 4F */	lis r31, TMCJPEG_814F3C90@ha
/* 814F3A3C | 3D 80 81 4F */	lis r12, TMCJPEG_814F3FF4@ha
/* 814F3A40 | 7D 4B 02 14 */	add r10, r11, r0
/* 814F3A44 | 38 E4 01 04 */	addi r7, r4, 0x104
/* 814F3A48 | 7D 2A 02 14 */	add r9, r10, r0
/* 814F3A4C | 38 C4 01 44 */	addi r6, r4, 0x144
/* 814F3A50 | 7D 09 02 14 */	add r8, r9, r0
/* 814F3A54 | 3B FF 3C 90 */	addi r31, r31, TMCJPEG_814F3C90@l
/* 814F3A58 | 39 8C 3F F4 */	addi r12, r12, TMCJPEG_814F3FF4@l
/* 814F3A5C | 38 80 00 20 */	li r4, 0x20
/* 814F3A60 | 38 00 00 00 */	li r0, 0x0
/* 814F3A64 | 93 E3 18 2C */	stw r31, 0x182c(r3)
/* 814F3A68 | 91 83 18 30 */	stw r12, 0x1830(r3)
/* 814F3A6C | 91 63 18 3C */	stw r11, 0x183c(r3)
/* 814F3A70 | 91 43 18 40 */	stw r10, 0x1840(r3)
/* 814F3A74 | 91 23 18 44 */	stw r9, 0x1844(r3)
/* 814F3A78 | 91 03 18 48 */	stw r8, 0x1848(r3)
/* 814F3A7C | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F3A80 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F3A84 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F3A88 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F3A8C | 48 00 01 8C */	b .L_814F3C18
.L_814F3A90:
/* 814F3A90 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814F3A94 | 39 24 00 04 */	addi r9, r4, 0x4
/* 814F3A98 | 3D 60 81 4F */	lis r11, TMCJPEG_814F419C@ha
/* 814F3A9C | 3D 40 81 4F */	lis r10, TMCJPEG_814F43BC@ha
/* 814F3AA0 | 7D 09 02 14 */	add r8, r9, r0
/* 814F3AA4 | 38 E4 00 84 */	addi r7, r4, 0x84
/* 814F3AA8 | 38 C4 00 C4 */	addi r6, r4, 0xc4
/* 814F3AAC | 39 6B 41 9C */	addi r11, r11, TMCJPEG_814F419C@l
/* 814F3AB0 | 39 4A 43 BC */	addi r10, r10, TMCJPEG_814F43BC@l
/* 814F3AB4 | 38 80 00 10 */	li r4, 0x10
/* 814F3AB8 | 38 00 00 00 */	li r0, 0x0
/* 814F3ABC | 91 63 18 2C */	stw r11, 0x182c(r3)
/* 814F3AC0 | 91 43 18 30 */	stw r10, 0x1830(r3)
/* 814F3AC4 | 91 23 18 3C */	stw r9, 0x183c(r3)
/* 814F3AC8 | 91 03 18 40 */	stw r8, 0x1840(r3)
/* 814F3ACC | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F3AD0 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F3AD4 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F3AD8 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F3ADC | 48 00 01 3C */	b .L_814F3C18
.L_814F3AE0:
/* 814F3AE0 | 88 C3 19 DC */	lbz r6, 0x19dc(r3)
/* 814F3AE4 | 39 64 00 04 */	addi r11, r4, 0x4
/* 814F3AE8 | 3F E0 81 4F */	lis r31, TMCJPEG_814F4568@ha
/* 814F3AEC | 3D 80 81 4F */	lis r12, TMCJPEG_814F479C@ha
/* 814F3AF0 | 54 C0 20 36 */	slwi r0, r6, 4
/* 814F3AF4 | 7D 4B 32 14 */	add r10, r11, r6
/* 814F3AF8 | 7D 2B 02 14 */	add r9, r11, r0
/* 814F3AFC | 3B FF 45 68 */	addi r31, r31, TMCJPEG_814F4568@l
/* 814F3B00 | 7D 09 32 14 */	add r8, r9, r6
/* 814F3B04 | 39 8C 47 9C */	addi r12, r12, TMCJPEG_814F479C@l
/* 814F3B08 | 38 E4 01 04 */	addi r7, r4, 0x104
/* 814F3B0C | 38 C4 01 44 */	addi r6, r4, 0x144
/* 814F3B10 | 38 80 00 10 */	li r4, 0x10
/* 814F3B14 | 38 00 00 00 */	li r0, 0x0
/* 814F3B18 | 93 E3 18 2C */	stw r31, 0x182c(r3)
/* 814F3B1C | 91 83 18 30 */	stw r12, 0x1830(r3)
/* 814F3B20 | 91 63 18 3C */	stw r11, 0x183c(r3)
/* 814F3B24 | 91 43 18 40 */	stw r10, 0x1840(r3)
/* 814F3B28 | 91 23 18 44 */	stw r9, 0x1844(r3)
/* 814F3B2C | 91 03 18 48 */	stw r8, 0x1848(r3)
/* 814F3B30 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F3B34 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F3B38 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F3B3C | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F3B40 | 48 00 00 D8 */	b .L_814F3C18
.L_814F3B44:
/* 814F3B44 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814F3B48 | 39 24 00 04 */	addi r9, r4, 0x4
/* 814F3B4C | 3D 60 81 4F */	lis r11, TMCJPEG_814F4964@ha
/* 814F3B50 | 3D 40 81 4F */	lis r10, TMCJPEG_814F4AEC@ha
/* 814F3B54 | 54 00 18 38 */	slwi r0, r0, 3
/* 814F3B58 | 38 E4 00 84 */	addi r7, r4, 0x84
/* 814F3B5C | 7D 09 02 14 */	add r8, r9, r0
/* 814F3B60 | 38 C4 00 C4 */	addi r6, r4, 0xc4
/* 814F3B64 | 39 6B 49 64 */	addi r11, r11, TMCJPEG_814F4964@l
/* 814F3B68 | 39 4A 4A EC */	addi r10, r10, TMCJPEG_814F4AEC@l
/* 814F3B6C | 38 80 00 08 */	li r4, 0x8
/* 814F3B70 | 38 00 00 00 */	li r0, 0x0
/* 814F3B74 | 91 63 18 2C */	stw r11, 0x182c(r3)
/* 814F3B78 | 91 43 18 30 */	stw r10, 0x1830(r3)
/* 814F3B7C | 91 23 18 3C */	stw r9, 0x183c(r3)
/* 814F3B80 | 91 03 18 40 */	stw r8, 0x1840(r3)
/* 814F3B84 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F3B88 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F3B8C | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F3B90 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F3B94 | 48 00 00 84 */	b .L_814F3C18
.L_814F3B98:
/* 814F3B98 | 3D 40 81 4F */	lis r10, TMCJPEG_814F4CA0@ha
/* 814F3B9C | 3D 20 81 4F */	lis r9, TMCJPEG_814F4E0C@ha
/* 814F3BA0 | 39 4A 4C A0 */	addi r10, r10, TMCJPEG_814F4CA0@l
/* 814F3BA4 | 39 04 00 04 */	addi r8, r4, 0x4
/* 814F3BA8 | 39 29 4E 0C */	addi r9, r9, TMCJPEG_814F4E0C@l
/* 814F3BAC | 38 E4 00 44 */	addi r7, r4, 0x44
/* 814F3BB0 | 38 C4 00 84 */	addi r6, r4, 0x84
/* 814F3BB4 | 38 80 00 08 */	li r4, 0x8
/* 814F3BB8 | 38 00 00 00 */	li r0, 0x0
/* 814F3BBC | 91 43 18 2C */	stw r10, 0x182c(r3)
/* 814F3BC0 | 91 23 18 30 */	stw r9, 0x1830(r3)
/* 814F3BC4 | 91 03 18 3C */	stw r8, 0x183c(r3)
/* 814F3BC8 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F3BCC | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F3BD0 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F3BD4 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F3BD8 | 48 00 00 40 */	b .L_814F3C18
.L_814F3BDC:
/* 814F3BDC | 3D 00 81 4F */	lis r8, TMCJPEG_814F4FAC@ha
/* 814F3BE0 | 3C E0 81 4F */	lis r7, TMCJPEG_814F50C4@ha
/* 814F3BE4 | 38 C4 00 04 */	addi r6, r4, 0x4
/* 814F3BE8 | 38 80 00 08 */	li r4, 0x8
/* 814F3BEC | 39 08 4F AC */	addi r8, r8, TMCJPEG_814F4FAC@l
/* 814F3BF0 | 38 E7 50 C4 */	addi r7, r7, TMCJPEG_814F50C4@l
/* 814F3BF4 | 38 00 00 00 */	li r0, 0x0
/* 814F3BF8 | 91 03 18 2C */	stw r8, 0x182c(r3)
/* 814F3BFC | 90 E3 18 30 */	stw r7, 0x1830(r3)
/* 814F3C00 | 90 C3 18 3C */	stw r6, 0x183c(r3)
/* 814F3C04 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F3C08 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F3C0C | 48 00 00 0C */	b .L_814F3C18
.L_814F3C10:
/* 814F3C10 | 38 60 FF 90 */	li r3, -0x70
/* 814F3C14 | 48 00 00 70 */	b .L_814F3C84
.L_814F3C18:
/* 814F3C18 | A1 25 00 24 */	lhz r9, 0x24(r5)
/* 814F3C1C | 38 60 00 00 */	li r3, 0x0
/* 814F3C20 | A1 45 00 26 */	lhz r10, 0x26(r5)
/* 814F3C24 | 55 20 F0 02 */	slwi r0, r9, 30
/* 814F3C28 | 55 27 0F FE */	srwi r7, r9, 31
/* 814F3C2C | 7C 87 00 50 */	subf r4, r7, r0
/* 814F3C30 | 55 46 0F FE */	srwi r6, r10, 31
/* 814F3C34 | 54 84 10 3E */	rotlwi r4, r4, 2
/* 814F3C38 | 55 40 F0 02 */	slwi r0, r10, 30
/* 814F3C3C | 7D 04 3A 14 */	add r8, r4, r7
/* 814F3C40 | 55 29 F0 BE */	srwi r9, r9, 2
/* 814F3C44 | 7C 86 00 50 */	subf r4, r6, r0
/* 814F3C48 | 55 40 F0 BE */	srwi r0, r10, 2
/* 814F3C4C | 7C E8 00 D0 */	neg r7, r8
/* 814F3C50 | 54 84 10 3E */	rotlwi r4, r4, 2
/* 814F3C54 | 7C E7 43 78 */	or r7, r7, r8
/* 814F3C58 | 7C C4 32 14 */	add r6, r4, r6
/* 814F3C5C | 54 E7 0F FE */	srwi r7, r7, 31
/* 814F3C60 | 7C 86 00 D0 */	neg r4, r6
/* 814F3C64 | 7C 84 33 78 */	or r4, r4, r6
/* 814F3C68 | 7C E9 3A 14 */	add r7, r9, r7
/* 814F3C6C | 54 86 0F FE */	srwi r6, r4, 31
/* 814F3C70 | 54 E4 10 3A */	slwi r4, r7, 2
/* 814F3C74 | 7C 00 32 14 */	add r0, r0, r6
/* 814F3C78 | 90 85 00 2C */	stw r4, 0x2c(r5)
/* 814F3C7C | 54 00 10 3A */	slwi r0, r0, 2
/* 814F3C80 | 90 05 00 30 */	stw r0, 0x30(r5)
.L_814F3C84:
/* 814F3C84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F3C88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F3C8C | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_set_converterRGB565

# .text:0x9848 | 0x814F3C90 | size: 0x364
.fn TMCJPEG_814F3C90, local
/* 814F3C90 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F3C94 | 38 C0 00 20 */	li r6, 0x20
/* 814F3C98 | 38 00 00 08 */	li r0, 0x8
/* 814F3C9C | 39 83 18 5C */	addi r12, r3, 0x185c
/* 814F3CA0 | BE 61 00 0C */	stmw r19, 0xc(r1)
/* 814F3CA4 | 3B E3 19 5C */	addi r31, r3, 0x195c
/* 814F3CA8 | 3B C3 19 9C */	addi r30, r3, 0x199c
/* 814F3CAC | 81 23 19 E4 */	lwz r9, 0x19e4(r3)
/* 814F3CB0 | 89 09 00 20 */	lbz r8, 0x20(r9)
/* 814F3CB4 | 80 E9 00 2C */	lwz r7, 0x2c(r9)
/* 814F3CB8 | 7D 46 43 D6 */	divw r10, r6, r8
/* 814F3CBC | 81 69 00 48 */	lwz r11, 0x48(r9)
/* 814F3CC0 | 54 FA F0 BE */	srwi r26, r7, 2
/* 814F3CC4 | 7C C0 43 D6 */	divw r6, r0, r8
/* 814F3CC8 | 20 0A 00 20 */	subfic r0, r10, 0x20
/* 814F3CCC | 7F 84 52 14 */	add r28, r4, r10
/* 814F3CD0 | 7C 03 16 70 */	srawi r3, r0, 2
/* 814F3CD4 | 7F 65 32 14 */	add r27, r5, r6
/* 814F3CD8 | 48 00 03 08 */	b .L_814F3FE0
.L_814F3CDC:
/* 814F3CDC | 7C 86 16 70 */	srawi r6, r4, 2
/* 814F3CE0 | 39 3C 00 03 */	addi r9, r28, 0x3
/* 814F3CE4 | 7C A7 16 70 */	srawi r7, r5, 2
/* 814F3CE8 | 54 AA 1E F8 */	clrlslwi r10, r5, 30, 3
/* 814F3CEC | 7D 24 48 50 */	subf r9, r4, r9
/* 814F3CF0 | 7C 9D 23 78 */	mr r29, r4
/* 814F3CF4 | 7D 07 D1 D6 */	mullw r8, r7, r26
/* 814F3CF8 | 7C EB 52 14 */	add r7, r11, r10
/* 814F3CFC | 55 29 F0 BE */	srwi r9, r9, 2
/* 814F3D00 | 7D 29 03 A6 */	mtctr r9
/* 814F3D04 | 7C 04 E0 00 */	cmpw r4, r28
/* 814F3D08 | 40 80 02 C8 */	bge .L_814F3FD0
.L_814F3D0C:
/* 814F3D0C | 89 5F 00 00 */	lbz r10, 0x0(r31)
/* 814F3D10 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F3D14 | 89 3E 00 00 */	lbz r9, 0x0(r30)
/* 814F3D18 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F3D1C | 7D 55 07 74 */	extsb r21, r10
/* 814F3D20 | 8A 6C 00 00 */	lbz r19, 0x0(r12)
/* 814F3D24 | 7D 2A 07 74 */	extsb r10, r9
/* 814F3D28 | 1D 2A 01 67 */	mulli r9, r10, 0x167
/* 814F3D2C | 7D 39 46 70 */	srawi r25, r9, 8
/* 814F3D30 | 1E 95 00 58 */	mulli r20, r21, 0x58
/* 814F3D34 | 7D 33 CA 14 */	add r9, r19, r25
/* 814F3D38 | 1D 4A 00 B7 */	mulli r10, r10, 0xb7
/* 814F3D3C | 7D 54 52 14 */	add r10, r20, r10
/* 814F3D40 | 7D 4A 00 D0 */	neg r10, r10
/* 814F3D44 | 7D 58 46 70 */	srawi r24, r10, 8
/* 814F3D48 | 1E 95 01 C6 */	mulli r20, r21, 0x1c6
/* 814F3D4C | 7D 53 C2 14 */	add r10, r19, r24
/* 814F3D50 | 7E 97 46 70 */	srawi r23, r20, 8
/* 814F3D54 | 7E 93 BA 14 */	add r20, r19, r23
/* 814F3D58 | 7E 93 4B 78 */	or r19, r20, r9
/* 814F3D5C | 7E 73 53 78 */	or r19, r19, r10
/* 814F3D60 | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F3D64 | 41 82 00 4C */	beq .L_814F3DB0
/* 814F3D68 | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F3D6C | 40 81 00 0C */	ble .L_814F3D78
/* 814F3D70 | 3A 80 00 FF */	li r20, 0xff
/* 814F3D74 | 48 00 00 0C */	b .L_814F3D80
.L_814F3D78:
/* 814F3D78 | 7E 93 FE 70 */	srawi r19, r20, 31
/* 814F3D7C | 7E 94 98 78 */	andc r20, r20, r19
.L_814F3D80:
/* 814F3D80 | 2C 0A 00 FF */	cmpwi r10, 0xff
/* 814F3D84 | 40 81 00 0C */	ble .L_814F3D90
/* 814F3D88 | 39 40 00 FF */	li r10, 0xff
/* 814F3D8C | 48 00 00 0C */	b .L_814F3D98
.L_814F3D90:
/* 814F3D90 | 7D 53 FE 70 */	srawi r19, r10, 31
/* 814F3D94 | 7D 4A 98 78 */	andc r10, r10, r19
.L_814F3D98:
/* 814F3D98 | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F3D9C | 40 81 00 0C */	ble .L_814F3DA8
/* 814F3DA0 | 39 20 00 FF */	li r9, 0xff
/* 814F3DA4 | 48 00 00 0C */	b .L_814F3DB0
.L_814F3DA8:
/* 814F3DA8 | 7D 33 FE 70 */	srawi r19, r9, 31
/* 814F3DAC | 7D 29 98 78 */	andc r9, r9, r19
.L_814F3DB0:
/* 814F3DB0 | 56 94 06 38 */	rlwinm r20, r20, 0, 24, 28
/* 814F3DB4 | 7E 66 42 14 */	add r19, r6, r8
/* 814F3DB8 | 7E 96 1E 70 */	srawi r22, r20, 3
/* 814F3DBC | 55 35 44 28 */	rlwinm r21, r9, 8, 16, 20
/* 814F3DC0 | 56 69 20 36 */	slwi r9, r19, 4
/* 814F3DC4 | 57 B4 07 BE */	clrlwi r20, r29, 30
/* 814F3DC8 | 7D 34 4A 14 */	add r9, r20, r9
/* 814F3DCC | 55 53 1D 74 */	rlwinm r19, r10, 3, 21, 26
/* 814F3DD0 | 7D 56 AA 14 */	add r10, r22, r21
/* 814F3DD4 | 7D 53 52 14 */	add r10, r19, r10
/* 814F3DD8 | 55 29 08 3C */	slwi r9, r9, 1
/* 814F3DDC | 7D 47 4B 2E */	sthx r10, r7, r9
/* 814F3DE0 | 89 2C 00 01 */	lbz r9, 0x1(r12)
/* 814F3DE4 | 7D 49 CA 14 */	add r10, r9, r25
/* 814F3DE8 | 7E 89 BA 14 */	add r20, r9, r23
/* 814F3DEC | 7D 29 C2 14 */	add r9, r9, r24
/* 814F3DF0 | 7E 93 53 78 */	or r19, r20, r10
/* 814F3DF4 | 7E 73 4B 78 */	or r19, r19, r9
/* 814F3DF8 | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F3DFC | 41 82 00 4C */	beq .L_814F3E48
/* 814F3E00 | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F3E04 | 40 81 00 0C */	ble .L_814F3E10
/* 814F3E08 | 3A 80 00 FF */	li r20, 0xff
/* 814F3E0C | 48 00 00 0C */	b .L_814F3E18
.L_814F3E10:
/* 814F3E10 | 7E 93 FE 70 */	srawi r19, r20, 31
/* 814F3E14 | 7E 94 98 78 */	andc r20, r20, r19
.L_814F3E18:
/* 814F3E18 | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F3E1C | 40 81 00 0C */	ble .L_814F3E28
/* 814F3E20 | 39 20 00 FF */	li r9, 0xff
/* 814F3E24 | 48 00 00 0C */	b .L_814F3E30
.L_814F3E28:
/* 814F3E28 | 7D 33 FE 70 */	srawi r19, r9, 31
/* 814F3E2C | 7D 29 98 78 */	andc r9, r9, r19
.L_814F3E30:
/* 814F3E30 | 2C 0A 00 FF */	cmpwi r10, 0xff
/* 814F3E34 | 40 81 00 0C */	ble .L_814F3E40
/* 814F3E38 | 39 40 00 FF */	li r10, 0xff
/* 814F3E3C | 48 00 00 0C */	b .L_814F3E48
.L_814F3E40:
/* 814F3E40 | 7D 53 FE 70 */	srawi r19, r10, 31
/* 814F3E44 | 7D 4A 98 78 */	andc r10, r10, r19
.L_814F3E48:
/* 814F3E48 | 56 94 06 38 */	rlwinm r20, r20, 0, 24, 28
/* 814F3E4C | 3A 7D 00 01 */	addi r19, r29, 0x1
/* 814F3E50 | 7E 96 1E 70 */	srawi r22, r20, 3
/* 814F3E54 | 55 55 44 28 */	rlwinm r21, r10, 8, 16, 20
/* 814F3E58 | 7E 6A 16 70 */	srawi r10, r19, 2
/* 814F3E5C | 56 73 07 BE */	clrlwi r19, r19, 30
/* 814F3E60 | 7D 4A 42 14 */	add r10, r10, r8
/* 814F3E64 | 55 34 1D 74 */	rlwinm r20, r9, 3, 21, 26
/* 814F3E68 | 55 49 20 36 */	slwi r9, r10, 4
/* 814F3E6C | 7D 56 AA 14 */	add r10, r22, r21
/* 814F3E70 | 7D 33 4A 14 */	add r9, r19, r9
/* 814F3E74 | 7D 54 52 14 */	add r10, r20, r10
/* 814F3E78 | 55 29 08 3C */	slwi r9, r9, 1
/* 814F3E7C | 7D 47 4B 2E */	sthx r10, r7, r9
/* 814F3E80 | 89 2C 00 02 */	lbz r9, 0x2(r12)
/* 814F3E84 | 7D 49 CA 14 */	add r10, r9, r25
/* 814F3E88 | 7E 89 BA 14 */	add r20, r9, r23
/* 814F3E8C | 7D 29 C2 14 */	add r9, r9, r24
/* 814F3E90 | 7E 93 53 78 */	or r19, r20, r10
/* 814F3E94 | 7E 73 4B 78 */	or r19, r19, r9
/* 814F3E98 | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F3E9C | 41 82 00 4C */	beq .L_814F3EE8
/* 814F3EA0 | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F3EA4 | 40 81 00 0C */	ble .L_814F3EB0
/* 814F3EA8 | 3A 80 00 FF */	li r20, 0xff
/* 814F3EAC | 48 00 00 0C */	b .L_814F3EB8
.L_814F3EB0:
/* 814F3EB0 | 7E 93 FE 70 */	srawi r19, r20, 31
/* 814F3EB4 | 7E 94 98 78 */	andc r20, r20, r19
.L_814F3EB8:
/* 814F3EB8 | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F3EBC | 40 81 00 0C */	ble .L_814F3EC8
/* 814F3EC0 | 39 20 00 FF */	li r9, 0xff
/* 814F3EC4 | 48 00 00 0C */	b .L_814F3ED0
.L_814F3EC8:
/* 814F3EC8 | 7D 33 FE 70 */	srawi r19, r9, 31
/* 814F3ECC | 7D 29 98 78 */	andc r9, r9, r19
.L_814F3ED0:
/* 814F3ED0 | 2C 0A 00 FF */	cmpwi r10, 0xff
/* 814F3ED4 | 40 81 00 0C */	ble .L_814F3EE0
/* 814F3ED8 | 39 40 00 FF */	li r10, 0xff
/* 814F3EDC | 48 00 00 0C */	b .L_814F3EE8
.L_814F3EE0:
/* 814F3EE0 | 7D 53 FE 70 */	srawi r19, r10, 31
/* 814F3EE4 | 7D 4A 98 78 */	andc r10, r10, r19
.L_814F3EE8:
/* 814F3EE8 | 56 93 06 38 */	rlwinm r19, r20, 0, 24, 28
/* 814F3EEC | 3A DD 00 02 */	addi r22, r29, 0x2
/* 814F3EF0 | 7E 73 1E 70 */	srawi r19, r19, 3
/* 814F3EF4 | 55 54 44 28 */	rlwinm r20, r10, 8, 16, 20
/* 814F3EF8 | 7E CA 16 70 */	srawi r10, r22, 2
/* 814F3EFC | 56 D6 07 BE */	clrlwi r22, r22, 30
/* 814F3F00 | 7D 4A 42 14 */	add r10, r10, r8
/* 814F3F04 | 55 35 1D 74 */	rlwinm r21, r9, 3, 21, 26
/* 814F3F08 | 55 49 20 36 */	slwi r9, r10, 4
/* 814F3F0C | 7D 53 A2 14 */	add r10, r19, r20
/* 814F3F10 | 7D 36 4A 14 */	add r9, r22, r9
/* 814F3F14 | 7D 55 52 14 */	add r10, r21, r10
/* 814F3F18 | 55 29 08 3C */	slwi r9, r9, 1
/* 814F3F1C | 7D 47 4B 2E */	sthx r10, r7, r9
/* 814F3F20 | 89 2C 00 03 */	lbz r9, 0x3(r12)
/* 814F3F24 | 39 8C 00 04 */	addi r12, r12, 0x4
/* 814F3F28 | 7D 49 CA 14 */	add r10, r9, r25
/* 814F3F2C | 7E 69 BA 14 */	add r19, r9, r23
/* 814F3F30 | 7D 29 C2 14 */	add r9, r9, r24
/* 814F3F34 | 7E 76 53 78 */	or r22, r19, r10
/* 814F3F38 | 7E D6 4B 78 */	or r22, r22, r9
/* 814F3F3C | 7E D6 46 71 */	srawi. r22, r22, 8
/* 814F3F40 | 41 82 00 4C */	beq .L_814F3F8C
/* 814F3F44 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F3F48 | 40 81 00 0C */	ble .L_814F3F54
/* 814F3F4C | 3A 60 00 FF */	li r19, 0xff
/* 814F3F50 | 48 00 00 0C */	b .L_814F3F5C
.L_814F3F54:
/* 814F3F54 | 7E 76 FE 70 */	srawi r22, r19, 31
/* 814F3F58 | 7E 73 B0 78 */	andc r19, r19, r22
.L_814F3F5C:
/* 814F3F5C | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F3F60 | 40 81 00 0C */	ble .L_814F3F6C
/* 814F3F64 | 39 20 00 FF */	li r9, 0xff
/* 814F3F68 | 48 00 00 0C */	b .L_814F3F74
.L_814F3F6C:
/* 814F3F6C | 7D 36 FE 70 */	srawi r22, r9, 31
/* 814F3F70 | 7D 29 B0 78 */	andc r9, r9, r22
.L_814F3F74:
/* 814F3F74 | 2C 0A 00 FF */	cmpwi r10, 0xff
/* 814F3F78 | 40 81 00 0C */	ble .L_814F3F84
/* 814F3F7C | 39 40 00 FF */	li r10, 0xff
/* 814F3F80 | 48 00 00 0C */	b .L_814F3F8C
.L_814F3F84:
/* 814F3F84 | 7D 56 FE 70 */	srawi r22, r10, 31
/* 814F3F88 | 7D 4A B0 78 */	andc r10, r10, r22
.L_814F3F8C:
/* 814F3F8C | 56 76 06 38 */	rlwinm r22, r19, 0, 24, 28
/* 814F3F90 | 3A FD 00 03 */	addi r23, r29, 0x3
/* 814F3F94 | 7E D6 1E 70 */	srawi r22, r22, 3
/* 814F3F98 | 55 59 44 28 */	rlwinm r25, r10, 8, 16, 20
/* 814F3F9C | 7E EA 16 70 */	srawi r10, r23, 2
/* 814F3FA0 | 56 F7 07 BE */	clrlwi r23, r23, 30
/* 814F3FA4 | 7D 4A 42 14 */	add r10, r10, r8
/* 814F3FA8 | 55 38 1D 74 */	rlwinm r24, r9, 3, 21, 26
/* 814F3FAC | 55 49 20 36 */	slwi r9, r10, 4
/* 814F3FB0 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814F3FB4 | 7D 56 CA 14 */	add r10, r22, r25
/* 814F3FB8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814F3FBC | 7D 37 4A 14 */	add r9, r23, r9
/* 814F3FC0 | 7D 58 52 14 */	add r10, r24, r10
/* 814F3FC4 | 55 29 08 3C */	slwi r9, r9, 1
/* 814F3FC8 | 7D 47 4B 2E */	sthx r10, r7, r9
/* 814F3FCC | 42 00 FD 40 */	bdnz .L_814F3D0C
.L_814F3FD0:
/* 814F3FD0 | 7D 8C 02 14 */	add r12, r12, r0
/* 814F3FD4 | 7F FF 1A 14 */	add r31, r31, r3
/* 814F3FD8 | 7F DE 1A 14 */	add r30, r30, r3
/* 814F3FDC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F3FE0:
/* 814F3FE0 | 7C 05 D8 00 */	cmpw r5, r27
/* 814F3FE4 | 41 80 FC F8 */	blt .L_814F3CDC
/* 814F3FE8 | BA 61 00 0C */	lmw r19, 0xc(r1)
/* 814F3FEC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F3FF0 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F3C90

# .text:0x9BAC | 0x814F3FF4 | size: 0x1A8
.fn TMCJPEG_814F3FF4, local
/* 814F3FF4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F3FF8 | 39 43 18 5C */	addi r10, r3, 0x185c
/* 814F3FFC | 39 63 19 5C */	addi r11, r3, 0x195c
/* 814F4000 | 39 83 19 9C */	addi r12, r3, 0x199c
/* 814F4004 | BE 61 00 0C */	stmw r19, 0xc(r1)
/* 814F4008 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F400C | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F4010 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F4014 | 7C 00 20 40 */	cmplw r0, r4
/* 814F4018 | 81 27 00 48 */	lwz r9, 0x48(r7)
/* 814F401C | 54 DC F0 BE */	srwi r28, r6, 2
/* 814F4020 | 40 82 00 0C */	bne .L_814F402C
/* 814F4024 | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F4028 | 48 00 00 10 */	b .L_814F4038
.L_814F402C:
/* 814F402C | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F4030 | 38 60 00 20 */	li r3, 0x20
/* 814F4034 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F4038:
/* 814F4038 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F403C | 7C 00 28 40 */	cmplw r0, r5
/* 814F4040 | 40 82 00 0C */	bne .L_814F404C
/* 814F4044 | 88 67 00 17 */	lbz r3, 0x17(r7)
/* 814F4048 | 48 00 00 10 */	b .L_814F4058
.L_814F404C:
/* 814F404C | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F4050 | 38 60 00 08 */	li r3, 0x8
/* 814F4054 | 7C 63 03 D6 */	divw r3, r3, r0
.L_814F4058:
/* 814F4058 | 7F C4 32 14 */	add r30, r4, r6
/* 814F405C | 20 06 00 20 */	subfic r0, r6, 0x20
/* 814F4060 | 7F A5 1A 14 */	add r29, r5, r3
/* 814F4064 | 7C 03 16 70 */	srawi r3, r0, 2
/* 814F4068 | 7E A4 F0 50 */	subf r21, r4, r30
/* 814F406C | 48 00 01 1C */	b .L_814F4188
.L_814F4070:
/* 814F4070 | 7C A6 16 70 */	srawi r6, r5, 2
/* 814F4074 | 54 A8 1E F8 */	clrlslwi r8, r5, 30, 3
/* 814F4078 | 7C E6 E1 D6 */	mullw r7, r6, r28
/* 814F407C | 7C 9F 23 78 */	mr r31, r4
/* 814F4080 | 7C C9 42 14 */	add r6, r9, r8
/* 814F4084 | 7E A9 03 A6 */	mtctr r21
/* 814F4088 | 7C 04 F0 00 */	cmpw r4, r30
/* 814F408C | 40 80 00 EC */	bge .L_814F4178
.L_814F4090:
/* 814F4090 | 57 E8 07 BF */	clrlwi. r8, r31, 30
/* 814F4094 | 40 82 00 40 */	bne .L_814F40D4
/* 814F4098 | 8A 6C 00 00 */	lbz r19, 0x0(r12)
/* 814F409C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F40A0 | 8A 8B 00 00 */	lbz r20, 0x0(r11)
/* 814F40A4 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F40A8 | 7E 77 07 74 */	extsb r23, r19
/* 814F40AC | 1E 77 01 67 */	mulli r19, r23, 0x167
/* 814F40B0 | 7E 96 07 74 */	extsb r22, r20
/* 814F40B4 | 7E 7B 46 70 */	srawi r27, r19, 8
/* 814F40B8 | 1E 96 00 58 */	mulli r20, r22, 0x58
/* 814F40BC | 1E 77 00 B7 */	mulli r19, r23, 0xb7
/* 814F40C0 | 7E 74 9A 14 */	add r19, r20, r19
/* 814F40C4 | 7E 93 00 D0 */	neg r20, r19
/* 814F40C8 | 1E 76 01 C6 */	mulli r19, r22, 0x1c6
/* 814F40CC | 7E 9A 46 70 */	srawi r26, r20, 8
/* 814F40D0 | 7E 79 46 70 */	srawi r25, r19, 8
.L_814F40D4:
/* 814F40D4 | 8A 6A 00 00 */	lbz r19, 0x0(r10)
/* 814F40D8 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F40DC | 7F 13 DA 14 */	add r24, r19, r27
/* 814F40E0 | 7E D3 CA 14 */	add r22, r19, r25
/* 814F40E4 | 7E F3 D2 14 */	add r23, r19, r26
/* 814F40E8 | 7E D3 C3 78 */	or r19, r22, r24
/* 814F40EC | 7E 73 BB 78 */	or r19, r19, r23
/* 814F40F0 | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F40F4 | 41 82 00 4C */	beq .L_814F4140
/* 814F40F8 | 2C 16 00 FF */	cmpwi r22, 0xff
/* 814F40FC | 40 81 00 0C */	ble .L_814F4108
/* 814F4100 | 3A C0 00 FF */	li r22, 0xff
/* 814F4104 | 48 00 00 0C */	b .L_814F4110
.L_814F4108:
/* 814F4108 | 7E D3 FE 70 */	srawi r19, r22, 31
/* 814F410C | 7E D6 98 78 */	andc r22, r22, r19
.L_814F4110:
/* 814F4110 | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F4114 | 40 81 00 0C */	ble .L_814F4120
/* 814F4118 | 3A E0 00 FF */	li r23, 0xff
/* 814F411C | 48 00 00 0C */	b .L_814F4128
.L_814F4120:
/* 814F4120 | 7E F3 FE 70 */	srawi r19, r23, 31
/* 814F4124 | 7E F7 98 78 */	andc r23, r23, r19
.L_814F4128:
/* 814F4128 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F412C | 40 81 00 0C */	ble .L_814F4138
/* 814F4130 | 3B 00 00 FF */	li r24, 0xff
/* 814F4134 | 48 00 00 0C */	b .L_814F4140
.L_814F4138:
/* 814F4138 | 7F 13 FE 70 */	srawi r19, r24, 31
/* 814F413C | 7F 18 98 78 */	andc r24, r24, r19
.L_814F4140:
/* 814F4140 | 56 D3 06 38 */	rlwinm r19, r22, 0, 24, 28
/* 814F4144 | 57 14 44 28 */	rlwinm r20, r24, 8, 16, 20
/* 814F4148 | 7E 73 1E 70 */	srawi r19, r19, 3
/* 814F414C | 56 F8 1D 74 */	rlwinm r24, r23, 3, 21, 26
/* 814F4150 | 7F F6 16 70 */	srawi r22, r31, 2
/* 814F4154 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F4158 | 7E D6 3A 14 */	add r22, r22, r7
/* 814F415C | 7E F3 A2 14 */	add r23, r19, r20
/* 814F4160 | 56 D6 20 36 */	slwi r22, r22, 4
/* 814F4164 | 7D 08 B2 14 */	add r8, r8, r22
/* 814F4168 | 7E D8 BA 14 */	add r22, r24, r23
/* 814F416C | 55 08 08 3C */	slwi r8, r8, 1
/* 814F4170 | 7E C6 43 2E */	sthx r22, r6, r8
/* 814F4174 | 42 00 FF 1C */	bdnz .L_814F4090
.L_814F4178:
/* 814F4178 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F417C | 7D 6B 1A 14 */	add r11, r11, r3
/* 814F4180 | 7D 8C 1A 14 */	add r12, r12, r3
/* 814F4184 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4188:
/* 814F4188 | 7C 05 E8 00 */	cmpw r5, r29
/* 814F418C | 41 80 FE E4 */	blt .L_814F4070
/* 814F4190 | BA 61 00 0C */	lmw r19, 0xc(r1)
/* 814F4194 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F4198 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F3FF4

# .text:0x9D54 | 0x814F419C | size: 0x220
.fn TMCJPEG_814F419C, local
/* 814F419C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F41A0 | 38 C0 00 10 */	li r6, 0x10
/* 814F41A4 | 38 00 00 08 */	li r0, 0x8
/* 814F41A8 | 39 63 18 5C */	addi r11, r3, 0x185c
/* 814F41AC | BE 81 00 10 */	stmw r20, 0x10(r1)
/* 814F41B0 | 39 83 18 DC */	addi r12, r3, 0x18dc
/* 814F41B4 | 3B E3 19 1C */	addi r31, r3, 0x191c
/* 814F41B8 | 81 23 19 E4 */	lwz r9, 0x19e4(r3)
/* 814F41BC | 89 09 00 20 */	lbz r8, 0x20(r9)
/* 814F41C0 | 80 E9 00 2C */	lwz r7, 0x2c(r9)
/* 814F41C4 | 7E 86 43 D6 */	divw r20, r6, r8
/* 814F41C8 | 81 49 00 48 */	lwz r10, 0x48(r9)
/* 814F41CC | 54 FB F0 BE */	srwi r27, r7, 2
/* 814F41D0 | 7C C0 43 D6 */	divw r6, r0, r8
/* 814F41D4 | 20 14 00 10 */	subfic r0, r20, 0x10
/* 814F41D8 | 7F A4 A2 14 */	add r29, r4, r20
/* 814F41DC | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814F41E0 | 7F 85 32 14 */	add r28, r5, r6
/* 814F41E4 | 48 00 01 C4 */	b .L_814F43A8
.L_814F41E8:
/* 814F41E8 | 7C A6 16 70 */	srawi r6, r5, 2
/* 814F41EC | 39 1D 00 01 */	addi r8, r29, 0x1
/* 814F41F0 | 7D 04 40 50 */	subf r8, r4, r8
/* 814F41F4 | 54 A9 1E F8 */	clrlslwi r9, r5, 30, 3
/* 814F41F8 | 7C E6 D9 D6 */	mullw r7, r6, r27
/* 814F41FC | 7C 9E 23 78 */	mr r30, r4
/* 814F4200 | 55 08 F8 7E */	srwi r8, r8, 1
/* 814F4204 | 7C CA 4A 14 */	add r6, r10, r9
/* 814F4208 | 7D 09 03 A6 */	mtctr r8
/* 814F420C | 7C 04 E8 00 */	cmpw r4, r29
/* 814F4210 | 40 80 01 88 */	bge .L_814F4398
.L_814F4214:
/* 814F4214 | 89 2C 00 00 */	lbz r9, 0x0(r12)
/* 814F4218 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F421C | 89 1F 00 00 */	lbz r8, 0x0(r31)
/* 814F4220 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F4224 | 7D 37 07 74 */	extsb r23, r9
/* 814F4228 | 8A 8B 00 00 */	lbz r20, 0x0(r11)
/* 814F422C | 7D 15 07 74 */	extsb r21, r8
/* 814F4230 | 1D 15 01 67 */	mulli r8, r21, 0x167
/* 814F4234 | 7D 08 46 70 */	srawi r8, r8, 8
/* 814F4238 | 1E D7 00 58 */	mulli r22, r23, 0x58
/* 814F423C | 7D 34 42 14 */	add r9, r20, r8
/* 814F4240 | 1E B5 00 B7 */	mulli r21, r21, 0xb7
/* 814F4244 | 7E B6 AA 14 */	add r21, r22, r21
/* 814F4248 | 7E B5 00 D0 */	neg r21, r21
/* 814F424C | 7E BA 46 70 */	srawi r26, r21, 8
/* 814F4250 | 1E B7 01 C6 */	mulli r21, r23, 0x1c6
/* 814F4254 | 7F 14 D2 14 */	add r24, r20, r26
/* 814F4258 | 7E B9 46 70 */	srawi r25, r21, 8
/* 814F425C | 7E B4 CA 14 */	add r21, r20, r25
/* 814F4260 | 7E B4 4B 78 */	or r20, r21, r9
/* 814F4264 | 7E 94 C3 78 */	or r20, r20, r24
/* 814F4268 | 7E 94 46 71 */	srawi. r20, r20, 8
/* 814F426C | 41 82 00 4C */	beq .L_814F42B8
/* 814F4270 | 2C 15 00 FF */	cmpwi r21, 0xff
/* 814F4274 | 40 81 00 0C */	ble .L_814F4280
/* 814F4278 | 3A A0 00 FF */	li r21, 0xff
/* 814F427C | 48 00 00 0C */	b .L_814F4288
.L_814F4280:
/* 814F4280 | 7E B4 FE 70 */	srawi r20, r21, 31
/* 814F4284 | 7E B5 A0 78 */	andc r21, r21, r20
.L_814F4288:
/* 814F4288 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F428C | 40 81 00 0C */	ble .L_814F4298
/* 814F4290 | 3B 00 00 FF */	li r24, 0xff
/* 814F4294 | 48 00 00 0C */	b .L_814F42A0
.L_814F4298:
/* 814F4298 | 7F 14 FE 70 */	srawi r20, r24, 31
/* 814F429C | 7F 18 A0 78 */	andc r24, r24, r20
.L_814F42A0:
/* 814F42A0 | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F42A4 | 40 81 00 0C */	ble .L_814F42B0
/* 814F42A8 | 39 20 00 FF */	li r9, 0xff
/* 814F42AC | 48 00 00 0C */	b .L_814F42B8
.L_814F42B0:
/* 814F42B0 | 7D 34 FE 70 */	srawi r20, r9, 31
/* 814F42B4 | 7D 29 A0 78 */	andc r9, r9, r20
.L_814F42B8:
/* 814F42B8 | 56 B4 06 38 */	rlwinm r20, r21, 0, 24, 28
/* 814F42BC | 55 35 44 28 */	rlwinm r21, r9, 8, 16, 20
/* 814F42C0 | 7E 94 1E 70 */	srawi r20, r20, 3
/* 814F42C4 | 57 16 1D 74 */	rlwinm r22, r24, 3, 21, 26
/* 814F42C8 | 7F C9 16 70 */	srawi r9, r30, 2
/* 814F42CC | 57 D7 07 BE */	clrlwi r23, r30, 30
/* 814F42D0 | 7D 29 3A 14 */	add r9, r9, r7
/* 814F42D4 | 7F 14 AA 14 */	add r24, r20, r21
/* 814F42D8 | 55 29 20 36 */	slwi r9, r9, 4
/* 814F42DC | 7D 37 4A 14 */	add r9, r23, r9
/* 814F42E0 | 7E F6 C2 14 */	add r23, r22, r24
/* 814F42E4 | 55 29 08 3C */	slwi r9, r9, 1
/* 814F42E8 | 7E E6 4B 2E */	sthx r23, r6, r9
/* 814F42EC | 8A EB 00 01 */	lbz r23, 0x1(r11)
/* 814F42F0 | 39 6B 00 02 */	addi r11, r11, 0x2
/* 814F42F4 | 7D 37 42 14 */	add r9, r23, r8
/* 814F42F8 | 7E 97 CA 14 */	add r20, r23, r25
/* 814F42FC | 7D 17 D2 14 */	add r8, r23, r26
/* 814F4300 | 7E 97 4B 78 */	or r23, r20, r9
/* 814F4304 | 7E F7 43 78 */	or r23, r23, r8
/* 814F4308 | 7E F7 46 71 */	srawi. r23, r23, 8
/* 814F430C | 41 82 00 4C */	beq .L_814F4358
/* 814F4310 | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F4314 | 40 81 00 0C */	ble .L_814F4320
/* 814F4318 | 3A 80 00 FF */	li r20, 0xff
/* 814F431C | 48 00 00 0C */	b .L_814F4328
.L_814F4320:
/* 814F4320 | 7E 97 FE 70 */	srawi r23, r20, 31
/* 814F4324 | 7E 94 B8 78 */	andc r20, r20, r23
.L_814F4328:
/* 814F4328 | 2C 08 00 FF */	cmpwi r8, 0xff
/* 814F432C | 40 81 00 0C */	ble .L_814F4338
/* 814F4330 | 39 00 00 FF */	li r8, 0xff
/* 814F4334 | 48 00 00 0C */	b .L_814F4340
.L_814F4338:
/* 814F4338 | 7D 17 FE 70 */	srawi r23, r8, 31
/* 814F433C | 7D 08 B8 78 */	andc r8, r8, r23
.L_814F4340:
/* 814F4340 | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F4344 | 40 81 00 0C */	ble .L_814F4350
/* 814F4348 | 39 20 00 FF */	li r9, 0xff
/* 814F434C | 48 00 00 0C */	b .L_814F4358
.L_814F4350:
/* 814F4350 | 7D 37 FE 70 */	srawi r23, r9, 31
/* 814F4354 | 7D 29 B8 78 */	andc r9, r9, r23
.L_814F4358:
/* 814F4358 | 56 97 06 38 */	rlwinm r23, r20, 0, 24, 28
/* 814F435C | 3B 1E 00 01 */	addi r24, r30, 0x1
/* 814F4360 | 7E F7 1E 70 */	srawi r23, r23, 3
/* 814F4364 | 55 3A 44 28 */	rlwinm r26, r9, 8, 16, 20
/* 814F4368 | 7F 09 16 70 */	srawi r9, r24, 2
/* 814F436C | 57 18 07 BE */	clrlwi r24, r24, 30
/* 814F4370 | 7D 29 3A 14 */	add r9, r9, r7
/* 814F4374 | 55 19 1D 74 */	rlwinm r25, r8, 3, 21, 26
/* 814F4378 | 55 28 20 36 */	slwi r8, r9, 4
/* 814F437C | 3B DE 00 02 */	addi r30, r30, 0x2
/* 814F4380 | 7D 37 D2 14 */	add r9, r23, r26
/* 814F4384 | 7D 18 42 14 */	add r8, r24, r8
/* 814F4388 | 7D 39 4A 14 */	add r9, r25, r9
/* 814F438C | 55 08 08 3C */	slwi r8, r8, 1
/* 814F4390 | 7D 26 43 2E */	sthx r9, r6, r8
/* 814F4394 | 42 00 FE 80 */	bdnz .L_814F4214
.L_814F4398:
/* 814F4398 | 7D 6B 02 14 */	add r11, r11, r0
/* 814F439C | 7D 8C 1A 14 */	add r12, r12, r3
/* 814F43A0 | 7F FF 1A 14 */	add r31, r31, r3
/* 814F43A4 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F43A8:
/* 814F43A8 | 7C 05 E0 00 */	cmpw r5, r28
/* 814F43AC | 41 80 FE 3C */	blt .L_814F41E8
/* 814F43B0 | BA 81 00 10 */	lmw r20, 0x10(r1)
/* 814F43B4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F43B8 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F419C

# .text:0x9F74 | 0x814F43BC | size: 0x1AC
.fn TMCJPEG_814F43BC, local
/* 814F43BC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F43C0 | 39 23 18 5C */	addi r9, r3, 0x185c
/* 814F43C4 | 39 43 18 DC */	addi r10, r3, 0x18dc
/* 814F43C8 | 39 63 19 1C */	addi r11, r3, 0x191c
/* 814F43CC | BE 61 00 0C */	stmw r19, 0xc(r1)
/* 814F43D0 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F43D4 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F43D8 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F43DC | 7C 00 20 40 */	cmplw r0, r4
/* 814F43E0 | 81 07 00 48 */	lwz r8, 0x48(r7)
/* 814F43E4 | 54 DD F0 BE */	srwi r29, r6, 2
/* 814F43E8 | 40 82 00 0C */	bne .L_814F43F4
/* 814F43EC | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F43F0 | 48 00 00 10 */	b .L_814F4400
.L_814F43F4:
/* 814F43F4 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F43F8 | 38 60 00 10 */	li r3, 0x10
/* 814F43FC | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F4400:
/* 814F4400 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F4404 | 7C 00 28 40 */	cmplw r0, r5
/* 814F4408 | 40 82 00 0C */	bne .L_814F4414
/* 814F440C | 88 67 00 17 */	lbz r3, 0x17(r7)
/* 814F4410 | 48 00 00 10 */	b .L_814F4420
.L_814F4414:
/* 814F4414 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F4418 | 38 60 00 08 */	li r3, 0x8
/* 814F441C | 7C 63 03 D6 */	divw r3, r3, r0
.L_814F4420:
/* 814F4420 | 7F E4 32 14 */	add r31, r4, r6
/* 814F4424 | 20 06 00 10 */	subfic r0, r6, 0x10
/* 814F4428 | 7F C5 1A 14 */	add r30, r5, r3
/* 814F442C | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814F4430 | 7F 04 F8 50 */	subf r24, r4, r31
/* 814F4434 | 48 00 01 20 */	b .L_814F4554
.L_814F4438:
/* 814F4438 | 7C A6 16 70 */	srawi r6, r5, 2
/* 814F443C | 54 B3 1E F8 */	clrlslwi r19, r5, 30, 3
/* 814F4440 | 7C E6 E9 D6 */	mullw r7, r6, r29
/* 814F4444 | 7C 8C 23 78 */	mr r12, r4
/* 814F4448 | 7C C8 9A 14 */	add r6, r8, r19
/* 814F444C | 7F 09 03 A6 */	mtctr r24
/* 814F4450 | 7C 04 F8 00 */	cmpw r4, r31
/* 814F4454 | 40 80 00 F0 */	bge .L_814F4544
.L_814F4458:
/* 814F4458 | 55 93 07 FF */	clrlwi. r19, r12, 31
/* 814F445C | 40 82 00 40 */	bne .L_814F449C
/* 814F4460 | 8A 6B 00 00 */	lbz r19, 0x0(r11)
/* 814F4464 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F4468 | 8A 8A 00 00 */	lbz r20, 0x0(r10)
/* 814F446C | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F4470 | 7E 76 07 74 */	extsb r22, r19
/* 814F4474 | 1E 76 01 67 */	mulli r19, r22, 0x167
/* 814F4478 | 7E 95 07 74 */	extsb r21, r20
/* 814F447C | 7E 7C 46 70 */	srawi r28, r19, 8
/* 814F4480 | 1E 95 00 58 */	mulli r20, r21, 0x58
/* 814F4484 | 1E 76 00 B7 */	mulli r19, r22, 0xb7
/* 814F4488 | 7E 74 9A 14 */	add r19, r20, r19
/* 814F448C | 7E 93 00 D0 */	neg r20, r19
/* 814F4490 | 1E 75 01 C6 */	mulli r19, r21, 0x1c6
/* 814F4494 | 7E 9B 46 70 */	srawi r27, r20, 8
/* 814F4498 | 7E 7A 46 70 */	srawi r26, r19, 8
.L_814F449C:
/* 814F449C | 8A 69 00 00 */	lbz r19, 0x0(r9)
/* 814F44A0 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F44A4 | 7E 93 E2 14 */	add r20, r19, r28
/* 814F44A8 | 7E B3 D2 14 */	add r21, r19, r26
/* 814F44AC | 7F 33 DA 14 */	add r25, r19, r27
/* 814F44B0 | 7E B3 A3 78 */	or r19, r21, r20
/* 814F44B4 | 7E 73 CB 78 */	or r19, r19, r25
/* 814F44B8 | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F44BC | 41 82 00 4C */	beq .L_814F4508
/* 814F44C0 | 2C 15 00 FF */	cmpwi r21, 0xff
/* 814F44C4 | 40 81 00 0C */	ble .L_814F44D0
/* 814F44C8 | 3A A0 00 FF */	li r21, 0xff
/* 814F44CC | 48 00 00 0C */	b .L_814F44D8
.L_814F44D0:
/* 814F44D0 | 7E B3 FE 70 */	srawi r19, r21, 31
/* 814F44D4 | 7E B5 98 78 */	andc r21, r21, r19
.L_814F44D8:
/* 814F44D8 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F44DC | 40 81 00 0C */	ble .L_814F44E8
/* 814F44E0 | 3B 20 00 FF */	li r25, 0xff
/* 814F44E4 | 48 00 00 0C */	b .L_814F44F0
.L_814F44E8:
/* 814F44E8 | 7F 33 FE 70 */	srawi r19, r25, 31
/* 814F44EC | 7F 39 98 78 */	andc r25, r25, r19
.L_814F44F0:
/* 814F44F0 | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F44F4 | 40 81 00 0C */	ble .L_814F4500
/* 814F44F8 | 3A 80 00 FF */	li r20, 0xff
/* 814F44FC | 48 00 00 0C */	b .L_814F4508
.L_814F4500:
/* 814F4500 | 7E 93 FE 70 */	srawi r19, r20, 31
/* 814F4504 | 7E 94 98 78 */	andc r20, r20, r19
.L_814F4508:
/* 814F4508 | 56 B3 06 38 */	rlwinm r19, r21, 0, 24, 28
/* 814F450C | 57 35 1D 74 */	rlwinm r21, r25, 3, 21, 26
/* 814F4510 | 7E 73 1E 70 */	srawi r19, r19, 3
/* 814F4514 | 56 94 44 28 */	rlwinm r20, r20, 8, 16, 20
/* 814F4518 | 7D 97 16 70 */	srawi r23, r12, 2
/* 814F451C | 55 96 07 BE */	clrlwi r22, r12, 30
/* 814F4520 | 7F 37 3A 14 */	add r25, r23, r7
/* 814F4524 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F4528 | 57 39 20 36 */	slwi r25, r25, 4
/* 814F452C | 7E F3 A2 14 */	add r23, r19, r20
/* 814F4530 | 7F 36 CA 14 */	add r25, r22, r25
/* 814F4534 | 7E D5 BA 14 */	add r22, r21, r23
/* 814F4538 | 57 39 08 3C */	slwi r25, r25, 1
/* 814F453C | 7E C6 CB 2E */	sthx r22, r6, r25
/* 814F4540 | 42 00 FF 18 */	bdnz .L_814F4458
.L_814F4544:
/* 814F4544 | 7D 29 02 14 */	add r9, r9, r0
/* 814F4548 | 7D 4A 1A 14 */	add r10, r10, r3
/* 814F454C | 7D 6B 1A 14 */	add r11, r11, r3
/* 814F4550 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4554:
/* 814F4554 | 7C 05 F0 00 */	cmpw r5, r30
/* 814F4558 | 41 80 FE E0 */	blt .L_814F4438
/* 814F455C | BA 61 00 0C */	lmw r19, 0xc(r1)
/* 814F4560 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F4564 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F43BC

# .text:0xA120 | 0x814F4568 | size: 0x234
.fn TMCJPEG_814F4568, local
/* 814F4568 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F456C | 38 C0 00 10 */	li r6, 0x10
/* 814F4570 | 39 83 18 5C */	addi r12, r3, 0x185c
/* 814F4574 | BE 61 00 0C */	stmw r19, 0xc(r1)
/* 814F4578 | 3B E3 19 5C */	addi r31, r3, 0x195c
/* 814F457C | 3B C3 19 9C */	addi r30, r3, 0x199c
/* 814F4580 | 81 23 19 E4 */	lwz r9, 0x19e4(r3)
/* 814F4584 | 88 09 00 20 */	lbz r0, 0x20(r9)
/* 814F4588 | 80 E9 00 2C */	lwz r7, 0x2c(r9)
/* 814F458C | 7D 06 03 D6 */	divw r8, r6, r0
/* 814F4590 | 81 69 00 48 */	lwz r11, 0x48(r9)
/* 814F4594 | 54 FA F0 BE */	srwi r26, r7, 2
/* 814F4598 | 20 08 00 10 */	subfic r0, r8, 0x10
/* 814F459C | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814F45A0 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 814F45A4 | 7F 84 42 14 */	add r28, r4, r8
/* 814F45A8 | 7F 65 42 14 */	add r27, r5, r8
/* 814F45AC | 7C C6 0E 70 */	srawi r6, r6, 1
/* 814F45B0 | 48 00 01 D8 */	b .L_814F4788
.L_814F45B4:
/* 814F45B4 | 7C A7 16 70 */	srawi r7, r5, 2
/* 814F45B8 | 39 3C 00 01 */	addi r9, r28, 0x1
/* 814F45BC | 7D 24 48 50 */	subf r9, r4, r9
/* 814F45C0 | 54 AA 1E F8 */	clrlslwi r10, r5, 30, 3
/* 814F45C4 | 7D 07 D1 D6 */	mullw r8, r7, r26
/* 814F45C8 | 7C 9D 23 78 */	mr r29, r4
/* 814F45CC | 55 29 F8 7E */	srwi r9, r9, 1
/* 814F45D0 | 7C EB 52 14 */	add r7, r11, r10
/* 814F45D4 | 7D 29 03 A6 */	mtctr r9
/* 814F45D8 | 7C 04 E0 00 */	cmpw r4, r28
/* 814F45DC | 40 80 01 88 */	bge .L_814F4764
.L_814F45E0:
/* 814F45E0 | 89 5F 00 00 */	lbz r10, 0x0(r31)
/* 814F45E4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F45E8 | 89 3E 00 00 */	lbz r9, 0x0(r30)
/* 814F45EC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F45F0 | 7D 56 07 74 */	extsb r22, r10
/* 814F45F4 | 8A 6C 00 00 */	lbz r19, 0x0(r12)
/* 814F45F8 | 7D 34 07 74 */	extsb r20, r9
/* 814F45FC | 1D 34 01 67 */	mulli r9, r20, 0x167
/* 814F4600 | 7D 29 46 70 */	srawi r9, r9, 8
/* 814F4604 | 1E B6 00 58 */	mulli r21, r22, 0x58
/* 814F4608 | 7D 53 4A 14 */	add r10, r19, r9
/* 814F460C | 1E 94 00 B7 */	mulli r20, r20, 0xb7
/* 814F4610 | 7E 95 A2 14 */	add r20, r21, r20
/* 814F4614 | 7E 94 00 D0 */	neg r20, r20
/* 814F4618 | 7E 99 46 70 */	srawi r25, r20, 8
/* 814F461C | 1E 96 01 C6 */	mulli r20, r22, 0x1c6
/* 814F4620 | 7E F3 CA 14 */	add r23, r19, r25
/* 814F4624 | 7E 98 46 70 */	srawi r24, r20, 8
/* 814F4628 | 7E 93 C2 14 */	add r20, r19, r24
/* 814F462C | 7E 93 53 78 */	or r19, r20, r10
/* 814F4630 | 7E 73 BB 78 */	or r19, r19, r23
/* 814F4634 | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F4638 | 41 82 00 4C */	beq .L_814F4684
/* 814F463C | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F4640 | 40 81 00 0C */	ble .L_814F464C
/* 814F4644 | 3A 80 00 FF */	li r20, 0xff
/* 814F4648 | 48 00 00 0C */	b .L_814F4654
.L_814F464C:
/* 814F464C | 7E 93 FE 70 */	srawi r19, r20, 31
/* 814F4650 | 7E 94 98 78 */	andc r20, r20, r19
.L_814F4654:
/* 814F4654 | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F4658 | 40 81 00 0C */	ble .L_814F4664
/* 814F465C | 3A E0 00 FF */	li r23, 0xff
/* 814F4660 | 48 00 00 0C */	b .L_814F466C
.L_814F4664:
/* 814F4664 | 7E F3 FE 70 */	srawi r19, r23, 31
/* 814F4668 | 7E F7 98 78 */	andc r23, r23, r19
.L_814F466C:
/* 814F466C | 2C 0A 00 FF */	cmpwi r10, 0xff
/* 814F4670 | 40 81 00 0C */	ble .L_814F467C
/* 814F4674 | 39 40 00 FF */	li r10, 0xff
/* 814F4678 | 48 00 00 0C */	b .L_814F4684
.L_814F467C:
/* 814F467C | 7D 53 FE 70 */	srawi r19, r10, 31
/* 814F4680 | 7D 4A 98 78 */	andc r10, r10, r19
.L_814F4684:
/* 814F4684 | 56 93 06 38 */	rlwinm r19, r20, 0, 24, 28
/* 814F4688 | 55 54 44 28 */	rlwinm r20, r10, 8, 16, 20
/* 814F468C | 7E 73 1E 70 */	srawi r19, r19, 3
/* 814F4690 | 56 F5 1D 74 */	rlwinm r21, r23, 3, 21, 26
/* 814F4694 | 7F AA 16 70 */	srawi r10, r29, 2
/* 814F4698 | 57 B6 07 BE */	clrlwi r22, r29, 30
/* 814F469C | 7D 4A 42 14 */	add r10, r10, r8
/* 814F46A0 | 7E F3 A2 14 */	add r23, r19, r20
/* 814F46A4 | 55 4A 20 36 */	slwi r10, r10, 4
/* 814F46A8 | 7D 56 52 14 */	add r10, r22, r10
/* 814F46AC | 7E D5 BA 14 */	add r22, r21, r23
/* 814F46B0 | 55 4A 08 3C */	slwi r10, r10, 1
/* 814F46B4 | 7E C7 53 2E */	sthx r22, r7, r10
/* 814F46B8 | 8A CC 00 01 */	lbz r22, 0x1(r12)
/* 814F46BC | 39 8C 00 02 */	addi r12, r12, 0x2
/* 814F46C0 | 7D 56 4A 14 */	add r10, r22, r9
/* 814F46C4 | 7E 76 C2 14 */	add r19, r22, r24
/* 814F46C8 | 7D 36 CA 14 */	add r9, r22, r25
/* 814F46CC | 7E 76 53 78 */	or r22, r19, r10
/* 814F46D0 | 7E D6 4B 78 */	or r22, r22, r9
/* 814F46D4 | 7E D6 46 71 */	srawi. r22, r22, 8
/* 814F46D8 | 41 82 00 4C */	beq .L_814F4724
/* 814F46DC | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F46E0 | 40 81 00 0C */	ble .L_814F46EC
/* 814F46E4 | 3A 60 00 FF */	li r19, 0xff
/* 814F46E8 | 48 00 00 0C */	b .L_814F46F4
.L_814F46EC:
/* 814F46EC | 7E 76 FE 70 */	srawi r22, r19, 31
/* 814F46F0 | 7E 73 B0 78 */	andc r19, r19, r22
.L_814F46F4:
/* 814F46F4 | 2C 09 00 FF */	cmpwi r9, 0xff
/* 814F46F8 | 40 81 00 0C */	ble .L_814F4704
/* 814F46FC | 39 20 00 FF */	li r9, 0xff
/* 814F4700 | 48 00 00 0C */	b .L_814F470C
.L_814F4704:
/* 814F4704 | 7D 36 FE 70 */	srawi r22, r9, 31
/* 814F4708 | 7D 29 B0 78 */	andc r9, r9, r22
.L_814F470C:
/* 814F470C | 2C 0A 00 FF */	cmpwi r10, 0xff
/* 814F4710 | 40 81 00 0C */	ble .L_814F471C
/* 814F4714 | 39 40 00 FF */	li r10, 0xff
/* 814F4718 | 48 00 00 0C */	b .L_814F4724
.L_814F471C:
/* 814F471C | 7D 56 FE 70 */	srawi r22, r10, 31
/* 814F4720 | 7D 4A B0 78 */	andc r10, r10, r22
.L_814F4724:
/* 814F4724 | 56 76 06 38 */	rlwinm r22, r19, 0, 24, 28
/* 814F4728 | 3A FD 00 01 */	addi r23, r29, 0x1
/* 814F472C | 7E D6 1E 70 */	srawi r22, r22, 3
/* 814F4730 | 55 59 44 28 */	rlwinm r25, r10, 8, 16, 20
/* 814F4734 | 7E EA 16 70 */	srawi r10, r23, 2
/* 814F4738 | 56 F7 07 BE */	clrlwi r23, r23, 30
/* 814F473C | 7D 4A 42 14 */	add r10, r10, r8
/* 814F4740 | 55 38 1D 74 */	rlwinm r24, r9, 3, 21, 26
/* 814F4744 | 55 49 20 36 */	slwi r9, r10, 4
/* 814F4748 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814F474C | 7D 56 CA 14 */	add r10, r22, r25
/* 814F4750 | 7D 37 4A 14 */	add r9, r23, r9
/* 814F4754 | 7D 58 52 14 */	add r10, r24, r10
/* 814F4758 | 55 29 08 3C */	slwi r9, r9, 1
/* 814F475C | 7D 47 4B 2E */	sthx r10, r7, r9
/* 814F4760 | 42 00 FE 80 */	bdnz .L_814F45E0
.L_814F4764:
/* 814F4764 | 54 A7 07 FF */	clrlwi. r7, r5, 31
/* 814F4768 | 7D 8C 02 14 */	add r12, r12, r0
/* 814F476C | 41 82 00 10 */	beq .L_814F477C
/* 814F4770 | 7F FF 1A 14 */	add r31, r31, r3
/* 814F4774 | 7F DE 1A 14 */	add r30, r30, r3
/* 814F4778 | 48 00 00 0C */	b .L_814F4784
.L_814F477C:
/* 814F477C | 7F E6 F8 50 */	subf r31, r6, r31
/* 814F4780 | 7F C6 F0 50 */	subf r30, r6, r30
.L_814F4784:
/* 814F4784 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4788:
/* 814F4788 | 7C 05 D8 00 */	cmpw r5, r27
/* 814F478C | 41 80 FE 28 */	blt .L_814F45B4
/* 814F4790 | BA 61 00 0C */	lmw r19, 0xc(r1)
/* 814F4794 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F4798 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F4568

# .text:0xA354 | 0x814F479C | size: 0x1C8
.fn TMCJPEG_814F479C, local
/* 814F479C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F47A0 | 39 43 18 5C */	addi r10, r3, 0x185c
/* 814F47A4 | 39 63 19 5C */	addi r11, r3, 0x195c
/* 814F47A8 | 39 83 19 9C */	addi r12, r3, 0x199c
/* 814F47AC | BE 41 00 08 */	stmw r18, 0x8(r1)
/* 814F47B0 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F47B4 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F47B8 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F47BC | 7C 00 20 40 */	cmplw r0, r4
/* 814F47C0 | 81 27 00 48 */	lwz r9, 0x48(r7)
/* 814F47C4 | 54 DC F0 BE */	srwi r28, r6, 2
/* 814F47C8 | 40 82 00 0C */	bne .L_814F47D4
/* 814F47CC | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F47D0 | 48 00 00 10 */	b .L_814F47E0
.L_814F47D4:
/* 814F47D4 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F47D8 | 38 60 00 10 */	li r3, 0x10
/* 814F47DC | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F47E0:
/* 814F47E0 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F47E4 | 7C 00 28 40 */	cmplw r0, r5
/* 814F47E8 | 40 82 00 0C */	bne .L_814F47F4
/* 814F47EC | 88 E7 00 17 */	lbz r7, 0x17(r7)
/* 814F47F0 | 48 00 00 10 */	b .L_814F4800
.L_814F47F4:
/* 814F47F4 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F47F8 | 38 60 00 10 */	li r3, 0x10
/* 814F47FC | 7C E3 03 D6 */	divw r7, r3, r0
.L_814F4800:
/* 814F4800 | 20 06 00 10 */	subfic r0, r6, 0x10
/* 814F4804 | 7F C4 32 14 */	add r30, r4, r6
/* 814F4808 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814F480C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814F4810 | 7F A5 3A 14 */	add r29, r5, r7
/* 814F4814 | 7E A4 F0 50 */	subf r21, r4, r30
/* 814F4818 | 7C C6 0E 70 */	srawi r6, r6, 1
/* 814F481C | 48 00 01 34 */	b .L_814F4950
.L_814F4820:
/* 814F4820 | 7C A7 16 70 */	srawi r7, r5, 2
/* 814F4824 | 54 B2 1E F8 */	clrlslwi r18, r5, 30, 3
/* 814F4828 | 7D 07 E1 D6 */	mullw r8, r7, r28
/* 814F482C | 7C 9F 23 78 */	mr r31, r4
/* 814F4830 | 7C E9 92 14 */	add r7, r9, r18
/* 814F4834 | 7E A9 03 A6 */	mtctr r21
/* 814F4838 | 7C 04 F0 00 */	cmpw r4, r30
/* 814F483C | 40 80 00 F0 */	bge .L_814F492C
.L_814F4840:
/* 814F4840 | 57 F2 07 FF */	clrlwi. r18, r31, 31
/* 814F4844 | 40 82 00 40 */	bne .L_814F4884
/* 814F4848 | 8A 4C 00 00 */	lbz r18, 0x0(r12)
/* 814F484C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F4850 | 8A 6B 00 00 */	lbz r19, 0x0(r11)
/* 814F4854 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F4858 | 7E 56 07 74 */	extsb r22, r18
/* 814F485C | 1E 56 01 67 */	mulli r18, r22, 0x167
/* 814F4860 | 7E 74 07 74 */	extsb r20, r19
/* 814F4864 | 7E 5B 46 70 */	srawi r27, r18, 8
/* 814F4868 | 1E 74 00 58 */	mulli r19, r20, 0x58
/* 814F486C | 1E 56 00 B7 */	mulli r18, r22, 0xb7
/* 814F4870 | 7E 53 92 14 */	add r18, r19, r18
/* 814F4874 | 7E 72 00 D0 */	neg r19, r18
/* 814F4878 | 1E 54 01 C6 */	mulli r18, r20, 0x1c6
/* 814F487C | 7E 7A 46 70 */	srawi r26, r19, 8
/* 814F4880 | 7E 59 46 70 */	srawi r25, r18, 8
.L_814F4884:
/* 814F4884 | 8A 4A 00 00 */	lbz r18, 0x0(r10)
/* 814F4888 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F488C | 7F 12 DA 14 */	add r24, r18, r27
/* 814F4890 | 7E D2 CA 14 */	add r22, r18, r25
/* 814F4894 | 7E F2 D2 14 */	add r23, r18, r26
/* 814F4898 | 7E D2 C3 78 */	or r18, r22, r24
/* 814F489C | 7E 52 BB 78 */	or r18, r18, r23
/* 814F48A0 | 7E 52 46 71 */	srawi. r18, r18, 8
/* 814F48A4 | 41 82 00 4C */	beq .L_814F48F0
/* 814F48A8 | 2C 16 00 FF */	cmpwi r22, 0xff
/* 814F48AC | 40 81 00 0C */	ble .L_814F48B8
/* 814F48B0 | 3A C0 00 FF */	li r22, 0xff
/* 814F48B4 | 48 00 00 0C */	b .L_814F48C0
.L_814F48B8:
/* 814F48B8 | 7E D2 FE 70 */	srawi r18, r22, 31
/* 814F48BC | 7E D6 90 78 */	andc r22, r22, r18
.L_814F48C0:
/* 814F48C0 | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F48C4 | 40 81 00 0C */	ble .L_814F48D0
/* 814F48C8 | 3A E0 00 FF */	li r23, 0xff
/* 814F48CC | 48 00 00 0C */	b .L_814F48D8
.L_814F48D0:
/* 814F48D0 | 7E F2 FE 70 */	srawi r18, r23, 31
/* 814F48D4 | 7E F7 90 78 */	andc r23, r23, r18
.L_814F48D8:
/* 814F48D8 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F48DC | 40 81 00 0C */	ble .L_814F48E8
/* 814F48E0 | 3B 00 00 FF */	li r24, 0xff
/* 814F48E4 | 48 00 00 0C */	b .L_814F48F0
.L_814F48E8:
/* 814F48E8 | 7F 12 FE 70 */	srawi r18, r24, 31
/* 814F48EC | 7F 18 90 78 */	andc r24, r24, r18
.L_814F48F0:
/* 814F48F0 | 56 D2 06 38 */	rlwinm r18, r22, 0, 24, 28
/* 814F48F4 | 57 13 44 28 */	rlwinm r19, r24, 8, 16, 20
/* 814F48F8 | 7E 52 1E 70 */	srawi r18, r18, 3
/* 814F48FC | 56 F4 1D 74 */	rlwinm r20, r23, 3, 21, 26
/* 814F4900 | 7F F6 16 70 */	srawi r22, r31, 2
/* 814F4904 | 57 F8 07 BE */	clrlwi r24, r31, 30
/* 814F4908 | 7E D6 42 14 */	add r22, r22, r8
/* 814F490C | 7E F2 9A 14 */	add r23, r18, r19
/* 814F4910 | 56 D6 20 36 */	slwi r22, r22, 4
/* 814F4914 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F4918 | 7E D8 B2 14 */	add r22, r24, r22
/* 814F491C | 7E F4 BA 14 */	add r23, r20, r23
/* 814F4920 | 56 D6 08 3C */	slwi r22, r22, 1
/* 814F4924 | 7E E7 B3 2E */	sthx r23, r7, r22
/* 814F4928 | 42 00 FF 18 */	bdnz .L_814F4840
.L_814F492C:
/* 814F492C | 54 A7 07 FF */	clrlwi. r7, r5, 31
/* 814F4930 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F4934 | 41 82 00 10 */	beq .L_814F4944
/* 814F4938 | 7D 6B 1A 14 */	add r11, r11, r3
/* 814F493C | 7D 8C 1A 14 */	add r12, r12, r3
/* 814F4940 | 48 00 00 0C */	b .L_814F494C
.L_814F4944:
/* 814F4944 | 7D 66 58 50 */	subf r11, r6, r11
/* 814F4948 | 7D 86 60 50 */	subf r12, r6, r12
.L_814F494C:
/* 814F494C | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4950:
/* 814F4950 | 7C 05 E8 00 */	cmpw r5, r29
/* 814F4954 | 41 80 FE CC */	blt .L_814F4820
/* 814F4958 | BA 41 00 08 */	lmw r18, 0x8(r1)
/* 814F495C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F4960 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F479C

# .text:0xA51C | 0x814F4964 | size: 0x188
.fn TMCJPEG_814F4964, local
/* 814F4964 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F4968 | 38 C0 00 08 */	li r6, 0x8
/* 814F496C | 38 00 00 10 */	li r0, 0x10
/* 814F4970 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F4974 | BE C1 00 08 */	stmw r22, 0x8(r1)
/* 814F4978 | 39 23 18 DC */	addi r9, r3, 0x18dc
/* 814F497C | 39 43 19 1C */	addi r10, r3, 0x191c
/* 814F4980 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F4984 | 8A C7 00 20 */	lbz r22, 0x20(r7)
/* 814F4988 | 81 67 00 2C */	lwz r11, 0x2c(r7)
/* 814F498C | 7D 86 B3 D6 */	divw r12, r6, r22
/* 814F4990 | 80 E7 00 48 */	lwz r7, 0x48(r7)
/* 814F4994 | 55 7D F0 BE */	srwi r29, r11, 2
/* 814F4998 | 7C 60 B3 D6 */	divw r3, r0, r22
/* 814F499C | 7F E4 62 14 */	add r31, r4, r12
/* 814F49A0 | 20 0C 00 08 */	subfic r0, r12, 0x8
/* 814F49A4 | 7F 64 F8 50 */	subf r27, r4, r31
/* 814F49A8 | 7F C5 1A 14 */	add r30, r5, r3
/* 814F49AC | 48 00 01 2C */	b .L_814F4AD8
.L_814F49B0:
/* 814F49B0 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F49B4 | 54 B6 1E F8 */	clrlslwi r22, r5, 30, 3
/* 814F49B8 | 7C C3 E9 D6 */	mullw r6, r3, r29
/* 814F49BC | 7C 8B 23 78 */	mr r11, r4
/* 814F49C0 | 7C 67 B2 14 */	add r3, r7, r22
/* 814F49C4 | 7F 69 03 A6 */	mtctr r27
/* 814F49C8 | 7C 04 F8 00 */	cmpw r4, r31
/* 814F49CC | 40 80 00 E8 */	bge .L_814F4AB4
.L_814F49D0:
/* 814F49D0 | 8A E9 00 00 */	lbz r23, 0x0(r9)
/* 814F49D4 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F49D8 | 8A CA 00 00 */	lbz r22, 0x0(r10)
/* 814F49DC | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F49E0 | 7E F9 07 74 */	extsb r25, r23
/* 814F49E4 | 8B 08 00 00 */	lbz r24, 0x0(r8)
/* 814F49E8 | 7E DA 07 74 */	extsb r26, r22
/* 814F49EC | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F49F0 | 1E F9 00 58 */	mulli r23, r25, 0x58
/* 814F49F4 | 1E DA 00 B7 */	mulli r22, r26, 0xb7
/* 814F49F8 | 7E D7 B2 14 */	add r22, r23, r22
/* 814F49FC | 7E D6 00 D0 */	neg r22, r22
/* 814F4A00 | 7E D7 46 70 */	srawi r23, r22, 8
/* 814F4A04 | 1E DA 01 67 */	mulli r22, r26, 0x167
/* 814F4A08 | 7F 98 BA 14 */	add r28, r24, r23
/* 814F4A0C | 7E D7 46 70 */	srawi r23, r22, 8
/* 814F4A10 | 1E D9 01 C6 */	mulli r22, r25, 0x1c6
/* 814F4A14 | 7E F8 BA 14 */	add r23, r24, r23
/* 814F4A18 | 7E D6 46 70 */	srawi r22, r22, 8
/* 814F4A1C | 7F 18 B2 14 */	add r24, r24, r22
/* 814F4A20 | 7F 16 BB 78 */	or r22, r24, r23
/* 814F4A24 | 7E D6 E3 78 */	or r22, r22, r28
/* 814F4A28 | 7E D6 46 71 */	srawi. r22, r22, 8
/* 814F4A2C | 41 82 00 4C */	beq .L_814F4A78
/* 814F4A30 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F4A34 | 40 81 00 0C */	ble .L_814F4A40
/* 814F4A38 | 3B 00 00 FF */	li r24, 0xff
/* 814F4A3C | 48 00 00 0C */	b .L_814F4A48
.L_814F4A40:
/* 814F4A40 | 7F 16 FE 70 */	srawi r22, r24, 31
/* 814F4A44 | 7F 18 B0 78 */	andc r24, r24, r22
.L_814F4A48:
/* 814F4A48 | 2C 1C 00 FF */	cmpwi r28, 0xff
/* 814F4A4C | 40 81 00 0C */	ble .L_814F4A58
/* 814F4A50 | 3B 80 00 FF */	li r28, 0xff
/* 814F4A54 | 48 00 00 0C */	b .L_814F4A60
.L_814F4A58:
/* 814F4A58 | 7F 96 FE 70 */	srawi r22, r28, 31
/* 814F4A5C | 7F 9C B0 78 */	andc r28, r28, r22
.L_814F4A60:
/* 814F4A60 | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F4A64 | 40 81 00 0C */	ble .L_814F4A70
/* 814F4A68 | 3A E0 00 FF */	li r23, 0xff
/* 814F4A6C | 48 00 00 0C */	b .L_814F4A78
.L_814F4A70:
/* 814F4A70 | 7E F6 FE 70 */	srawi r22, r23, 31
/* 814F4A74 | 7E F7 B0 78 */	andc r23, r23, r22
.L_814F4A78:
/* 814F4A78 | 57 16 06 38 */	rlwinm r22, r24, 0, 24, 28
/* 814F4A7C | 57 98 1D 74 */	rlwinm r24, r28, 3, 21, 26
/* 814F4A80 | 7E D6 1E 70 */	srawi r22, r22, 3
/* 814F4A84 | 56 F7 44 28 */	rlwinm r23, r23, 8, 16, 20
/* 814F4A88 | 7D 7A 16 70 */	srawi r26, r11, 2
/* 814F4A8C | 55 79 07 BE */	clrlwi r25, r11, 30
/* 814F4A90 | 7F 9A 32 14 */	add r28, r26, r6
/* 814F4A94 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F4A98 | 57 9C 20 36 */	slwi r28, r28, 4
/* 814F4A9C | 7F 56 BA 14 */	add r26, r22, r23
/* 814F4AA0 | 7F 99 E2 14 */	add r28, r25, r28
/* 814F4AA4 | 7F 38 D2 14 */	add r25, r24, r26
/* 814F4AA8 | 57 9C 08 3C */	slwi r28, r28, 1
/* 814F4AAC | 7F 23 E3 2E */	sthx r25, r3, r28
/* 814F4AB0 | 42 00 FF 20 */	bdnz .L_814F49D0
.L_814F4AB4:
/* 814F4AB4 | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 814F4AB8 | 7D 08 02 14 */	add r8, r8, r0
/* 814F4ABC | 41 82 00 10 */	beq .L_814F4ACC
/* 814F4AC0 | 7D 29 02 14 */	add r9, r9, r0
/* 814F4AC4 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F4AC8 | 48 00 00 0C */	b .L_814F4AD4
.L_814F4ACC:
/* 814F4ACC | 7D 2C 48 50 */	subf r9, r12, r9
/* 814F4AD0 | 7D 4C 50 50 */	subf r10, r12, r10
.L_814F4AD4:
/* 814F4AD4 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4AD8:
/* 814F4AD8 | 7C 05 F0 00 */	cmpw r5, r30
/* 814F4ADC | 41 80 FE D4 */	blt .L_814F49B0
/* 814F4AE0 | BA C1 00 08 */	lmw r22, 0x8(r1)
/* 814F4AE4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F4AE8 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F4964

# .text:0xA6A4 | 0x814F4AEC | size: 0x1B4
.fn TMCJPEG_814F4AEC, local
/* 814F4AEC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F4AF0 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F4AF4 | 39 23 18 DC */	addi r9, r3, 0x18dc
/* 814F4AF8 | 39 43 19 1C */	addi r10, r3, 0x191c
/* 814F4AFC | BE C1 00 08 */	stmw r22, 0x8(r1)
/* 814F4B00 | 81 63 19 E4 */	lwz r11, 0x19e4(r3)
/* 814F4B04 | 80 0B 00 18 */	lwz r0, 0x18(r11)
/* 814F4B08 | 80 CB 00 2C */	lwz r6, 0x2c(r11)
/* 814F4B0C | 7C 00 20 40 */	cmplw r0, r4
/* 814F4B10 | 80 EB 00 48 */	lwz r7, 0x48(r11)
/* 814F4B14 | 54 DD F0 BE */	srwi r29, r6, 2
/* 814F4B18 | 40 82 00 0C */	bne .L_814F4B24
/* 814F4B1C | 89 8B 00 16 */	lbz r12, 0x16(r11)
/* 814F4B20 | 48 00 00 10 */	b .L_814F4B30
.L_814F4B24:
/* 814F4B24 | 88 0B 00 20 */	lbz r0, 0x20(r11)
/* 814F4B28 | 38 60 00 08 */	li r3, 0x8
/* 814F4B2C | 7D 83 03 D6 */	divw r12, r3, r0
.L_814F4B30:
/* 814F4B30 | 80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 814F4B34 | 7C 00 28 40 */	cmplw r0, r5
/* 814F4B38 | 40 82 00 0C */	bne .L_814F4B44
/* 814F4B3C | 88 0B 00 17 */	lbz r0, 0x17(r11)
/* 814F4B40 | 48 00 00 10 */	b .L_814F4B50
.L_814F4B44:
/* 814F4B44 | 88 0B 00 20 */	lbz r0, 0x20(r11)
/* 814F4B48 | 38 60 00 10 */	li r3, 0x10
/* 814F4B4C | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F4B50:
/* 814F4B50 | 7F E4 62 14 */	add r31, r4, r12
/* 814F4B54 | 7F C5 02 14 */	add r30, r5, r0
/* 814F4B58 | 20 0C 00 08 */	subfic r0, r12, 0x8
/* 814F4B5C | 7F 64 F8 50 */	subf r27, r4, r31
/* 814F4B60 | 48 00 01 2C */	b .L_814F4C8C
.L_814F4B64:
/* 814F4B64 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F4B68 | 54 B6 1E F8 */	clrlslwi r22, r5, 30, 3
/* 814F4B6C | 7C C3 E9 D6 */	mullw r6, r3, r29
/* 814F4B70 | 7C 8B 23 78 */	mr r11, r4
/* 814F4B74 | 7C 67 B2 14 */	add r3, r7, r22
/* 814F4B78 | 7F 69 03 A6 */	mtctr r27
/* 814F4B7C | 7C 04 F8 00 */	cmpw r4, r31
/* 814F4B80 | 40 80 00 E8 */	bge .L_814F4C68
.L_814F4B84:
/* 814F4B84 | 8A E9 00 00 */	lbz r23, 0x0(r9)
/* 814F4B88 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F4B8C | 8A CA 00 00 */	lbz r22, 0x0(r10)
/* 814F4B90 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F4B94 | 7E F9 07 74 */	extsb r25, r23
/* 814F4B98 | 8B 08 00 00 */	lbz r24, 0x0(r8)
/* 814F4B9C | 7E DA 07 74 */	extsb r26, r22
/* 814F4BA0 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F4BA4 | 1E F9 00 58 */	mulli r23, r25, 0x58
/* 814F4BA8 | 1E DA 00 B7 */	mulli r22, r26, 0xb7
/* 814F4BAC | 7E D7 B2 14 */	add r22, r23, r22
/* 814F4BB0 | 7E D6 00 D0 */	neg r22, r22
/* 814F4BB4 | 7E D7 46 70 */	srawi r23, r22, 8
/* 814F4BB8 | 1E DA 01 67 */	mulli r22, r26, 0x167
/* 814F4BBC | 7F 98 BA 14 */	add r28, r24, r23
/* 814F4BC0 | 7E D7 46 70 */	srawi r23, r22, 8
/* 814F4BC4 | 1E D9 01 C6 */	mulli r22, r25, 0x1c6
/* 814F4BC8 | 7E F8 BA 14 */	add r23, r24, r23
/* 814F4BCC | 7E D6 46 70 */	srawi r22, r22, 8
/* 814F4BD0 | 7F 18 B2 14 */	add r24, r24, r22
/* 814F4BD4 | 7F 16 BB 78 */	or r22, r24, r23
/* 814F4BD8 | 7E D6 E3 78 */	or r22, r22, r28
/* 814F4BDC | 7E D6 46 71 */	srawi. r22, r22, 8
/* 814F4BE0 | 41 82 00 4C */	beq .L_814F4C2C
/* 814F4BE4 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F4BE8 | 40 81 00 0C */	ble .L_814F4BF4
/* 814F4BEC | 3B 00 00 FF */	li r24, 0xff
/* 814F4BF0 | 48 00 00 0C */	b .L_814F4BFC
.L_814F4BF4:
/* 814F4BF4 | 7F 16 FE 70 */	srawi r22, r24, 31
/* 814F4BF8 | 7F 18 B0 78 */	andc r24, r24, r22
.L_814F4BFC:
/* 814F4BFC | 2C 1C 00 FF */	cmpwi r28, 0xff
/* 814F4C00 | 40 81 00 0C */	ble .L_814F4C0C
/* 814F4C04 | 3B 80 00 FF */	li r28, 0xff
/* 814F4C08 | 48 00 00 0C */	b .L_814F4C14
.L_814F4C0C:
/* 814F4C0C | 7F 96 FE 70 */	srawi r22, r28, 31
/* 814F4C10 | 7F 9C B0 78 */	andc r28, r28, r22
.L_814F4C14:
/* 814F4C14 | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F4C18 | 40 81 00 0C */	ble .L_814F4C24
/* 814F4C1C | 3A E0 00 FF */	li r23, 0xff
/* 814F4C20 | 48 00 00 0C */	b .L_814F4C2C
.L_814F4C24:
/* 814F4C24 | 7E F6 FE 70 */	srawi r22, r23, 31
/* 814F4C28 | 7E F7 B0 78 */	andc r23, r23, r22
.L_814F4C2C:
/* 814F4C2C | 57 16 06 38 */	rlwinm r22, r24, 0, 24, 28
/* 814F4C30 | 57 98 1D 74 */	rlwinm r24, r28, 3, 21, 26
/* 814F4C34 | 7E D6 1E 70 */	srawi r22, r22, 3
/* 814F4C38 | 56 F7 44 28 */	rlwinm r23, r23, 8, 16, 20
/* 814F4C3C | 7D 7A 16 70 */	srawi r26, r11, 2
/* 814F4C40 | 55 79 07 BE */	clrlwi r25, r11, 30
/* 814F4C44 | 7F 9A 32 14 */	add r28, r26, r6
/* 814F4C48 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F4C4C | 57 9C 20 36 */	slwi r28, r28, 4
/* 814F4C50 | 7F 56 BA 14 */	add r26, r22, r23
/* 814F4C54 | 7F 99 E2 14 */	add r28, r25, r28
/* 814F4C58 | 7F 38 D2 14 */	add r25, r24, r26
/* 814F4C5C | 57 9C 08 3C */	slwi r28, r28, 1
/* 814F4C60 | 7F 23 E3 2E */	sthx r25, r3, r28
/* 814F4C64 | 42 00 FF 20 */	bdnz .L_814F4B84
.L_814F4C68:
/* 814F4C68 | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 814F4C6C | 7D 08 02 14 */	add r8, r8, r0
/* 814F4C70 | 41 82 00 10 */	beq .L_814F4C80
/* 814F4C74 | 7D 29 02 14 */	add r9, r9, r0
/* 814F4C78 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F4C7C | 48 00 00 0C */	b .L_814F4C88
.L_814F4C80:
/* 814F4C80 | 7D 2C 48 50 */	subf r9, r12, r9
/* 814F4C84 | 7D 4C 50 50 */	subf r10, r12, r10
.L_814F4C88:
/* 814F4C88 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4C8C:
/* 814F4C8C | 7C 05 F0 00 */	cmpw r5, r30
/* 814F4C90 | 41 80 FE D4 */	blt .L_814F4B64
/* 814F4C94 | BA C1 00 08 */	lmw r22, 0x8(r1)
/* 814F4C98 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F4C9C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F4AEC

# .text:0xA858 | 0x814F4CA0 | size: 0x16C
.fn TMCJPEG_814F4CA0, local
/* 814F4CA0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F4CA4 | 38 C0 00 08 */	li r6, 0x8
/* 814F4CA8 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F4CAC | 39 23 18 9C */	addi r9, r3, 0x189c
/* 814F4CB0 | BE E1 00 0C */	stmw r23, 0xc(r1)
/* 814F4CB4 | 39 43 18 DC */	addi r10, r3, 0x18dc
/* 814F4CB8 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F4CBC | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F4CC0 | 81 67 00 2C */	lwz r11, 0x2c(r7)
/* 814F4CC4 | 7C 06 03 D6 */	divw r0, r6, r0
/* 814F4CC8 | 80 E7 00 48 */	lwz r7, 0x48(r7)
/* 814F4CCC | 55 7E F0 BE */	srwi r30, r11, 2
/* 814F4CD0 | 7D 84 02 14 */	add r12, r4, r0
/* 814F4CD4 | 7F E5 02 14 */	add r31, r5, r0
/* 814F4CD8 | 20 00 00 08 */	subfic r0, r0, 0x8
/* 814F4CDC | 7F 84 60 50 */	subf r28, r4, r12
/* 814F4CE0 | 48 00 01 18 */	b .L_814F4DF8
.L_814F4CE4:
/* 814F4CE4 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F4CE8 | 54 B7 1E F8 */	clrlslwi r23, r5, 30, 3
/* 814F4CEC | 7C C3 F1 D6 */	mullw r6, r3, r30
/* 814F4CF0 | 7C 8B 23 78 */	mr r11, r4
/* 814F4CF4 | 7C 67 BA 14 */	add r3, r7, r23
/* 814F4CF8 | 7F 89 03 A6 */	mtctr r28
/* 814F4CFC | 7C 04 60 00 */	cmpw r4, r12
/* 814F4D00 | 40 80 00 E8 */	bge .L_814F4DE8
.L_814F4D04:
/* 814F4D04 | 8B 09 00 00 */	lbz r24, 0x0(r9)
/* 814F4D08 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F4D0C | 8A EA 00 00 */	lbz r23, 0x0(r10)
/* 814F4D10 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F4D14 | 7F 1A 07 74 */	extsb r26, r24
/* 814F4D18 | 8B 28 00 00 */	lbz r25, 0x0(r8)
/* 814F4D1C | 7E FB 07 74 */	extsb r27, r23
/* 814F4D20 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F4D24 | 1F 1A 00 58 */	mulli r24, r26, 0x58
/* 814F4D28 | 1E FB 00 B7 */	mulli r23, r27, 0xb7
/* 814F4D2C | 7E F8 BA 14 */	add r23, r24, r23
/* 814F4D30 | 7E F7 00 D0 */	neg r23, r23
/* 814F4D34 | 7E F8 46 70 */	srawi r24, r23, 8
/* 814F4D38 | 1E FB 01 67 */	mulli r23, r27, 0x167
/* 814F4D3C | 7F B9 C2 14 */	add r29, r25, r24
/* 814F4D40 | 7E F8 46 70 */	srawi r24, r23, 8
/* 814F4D44 | 1E FA 01 C6 */	mulli r23, r26, 0x1c6
/* 814F4D48 | 7F 19 C2 14 */	add r24, r25, r24
/* 814F4D4C | 7E F7 46 70 */	srawi r23, r23, 8
/* 814F4D50 | 7F 39 BA 14 */	add r25, r25, r23
/* 814F4D54 | 7F 37 C3 78 */	or r23, r25, r24
/* 814F4D58 | 7E F7 EB 78 */	or r23, r23, r29
/* 814F4D5C | 7E F7 46 71 */	srawi. r23, r23, 8
/* 814F4D60 | 41 82 00 4C */	beq .L_814F4DAC
/* 814F4D64 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F4D68 | 40 81 00 0C */	ble .L_814F4D74
/* 814F4D6C | 3B 20 00 FF */	li r25, 0xff
/* 814F4D70 | 48 00 00 0C */	b .L_814F4D7C
.L_814F4D74:
/* 814F4D74 | 7F 37 FE 70 */	srawi r23, r25, 31
/* 814F4D78 | 7F 39 B8 78 */	andc r25, r25, r23
.L_814F4D7C:
/* 814F4D7C | 2C 1D 00 FF */	cmpwi r29, 0xff
/* 814F4D80 | 40 81 00 0C */	ble .L_814F4D8C
/* 814F4D84 | 3B A0 00 FF */	li r29, 0xff
/* 814F4D88 | 48 00 00 0C */	b .L_814F4D94
.L_814F4D8C:
/* 814F4D8C | 7F B7 FE 70 */	srawi r23, r29, 31
/* 814F4D90 | 7F BD B8 78 */	andc r29, r29, r23
.L_814F4D94:
/* 814F4D94 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F4D98 | 40 81 00 0C */	ble .L_814F4DA4
/* 814F4D9C | 3B 00 00 FF */	li r24, 0xff
/* 814F4DA0 | 48 00 00 0C */	b .L_814F4DAC
.L_814F4DA4:
/* 814F4DA4 | 7F 17 FE 70 */	srawi r23, r24, 31
/* 814F4DA8 | 7F 18 B8 78 */	andc r24, r24, r23
.L_814F4DAC:
/* 814F4DAC | 57 37 06 38 */	rlwinm r23, r25, 0, 24, 28
/* 814F4DB0 | 57 B9 1D 74 */	rlwinm r25, r29, 3, 21, 26
/* 814F4DB4 | 7E F7 1E 70 */	srawi r23, r23, 3
/* 814F4DB8 | 57 18 44 28 */	rlwinm r24, r24, 8, 16, 20
/* 814F4DBC | 7D 7B 16 70 */	srawi r27, r11, 2
/* 814F4DC0 | 55 7A 07 BE */	clrlwi r26, r11, 30
/* 814F4DC4 | 7F BB 32 14 */	add r29, r27, r6
/* 814F4DC8 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F4DCC | 57 BD 20 36 */	slwi r29, r29, 4
/* 814F4DD0 | 7F 77 C2 14 */	add r27, r23, r24
/* 814F4DD4 | 7F BA EA 14 */	add r29, r26, r29
/* 814F4DD8 | 7F 59 DA 14 */	add r26, r25, r27
/* 814F4DDC | 57 BD 08 3C */	slwi r29, r29, 1
/* 814F4DE0 | 7F 43 EB 2E */	sthx r26, r3, r29
/* 814F4DE4 | 42 00 FF 20 */	bdnz .L_814F4D04
.L_814F4DE8:
/* 814F4DE8 | 7D 08 02 14 */	add r8, r8, r0
/* 814F4DEC | 7D 29 02 14 */	add r9, r9, r0
/* 814F4DF0 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F4DF4 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4DF8:
/* 814F4DF8 | 7C 05 F8 00 */	cmpw r5, r31
/* 814F4DFC | 41 80 FE E8 */	blt .L_814F4CE4
/* 814F4E00 | BA E1 00 0C */	lmw r23, 0xc(r1)
/* 814F4E04 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F4E08 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F4CA0

# .text:0xA9C4 | 0x814F4E0C | size: 0x1A0
.fn TMCJPEG_814F4E0C, local
/* 814F4E0C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F4E10 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F4E14 | 39 23 18 9C */	addi r9, r3, 0x189c
/* 814F4E18 | 39 43 18 DC */	addi r10, r3, 0x18dc
/* 814F4E1C | BE E1 00 0C */	stmw r23, 0xc(r1)
/* 814F4E20 | 81 63 19 E4 */	lwz r11, 0x19e4(r3)
/* 814F4E24 | 80 0B 00 18 */	lwz r0, 0x18(r11)
/* 814F4E28 | 80 CB 00 2C */	lwz r6, 0x2c(r11)
/* 814F4E2C | 7C 00 20 40 */	cmplw r0, r4
/* 814F4E30 | 80 EB 00 48 */	lwz r7, 0x48(r11)
/* 814F4E34 | 54 DE F0 BE */	srwi r30, r6, 2
/* 814F4E38 | 40 82 00 0C */	bne .L_814F4E44
/* 814F4E3C | 88 CB 00 16 */	lbz r6, 0x16(r11)
/* 814F4E40 | 48 00 00 10 */	b .L_814F4E50
.L_814F4E44:
/* 814F4E44 | 88 0B 00 20 */	lbz r0, 0x20(r11)
/* 814F4E48 | 38 60 00 08 */	li r3, 0x8
/* 814F4E4C | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F4E50:
/* 814F4E50 | 80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 814F4E54 | 7C 00 28 40 */	cmplw r0, r5
/* 814F4E58 | 40 82 00 0C */	bne .L_814F4E64
/* 814F4E5C | 88 0B 00 17 */	lbz r0, 0x17(r11)
/* 814F4E60 | 48 00 00 10 */	b .L_814F4E70
.L_814F4E64:
/* 814F4E64 | 88 0B 00 20 */	lbz r0, 0x20(r11)
/* 814F4E68 | 38 60 00 08 */	li r3, 0x8
/* 814F4E6C | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F4E70:
/* 814F4E70 | 7D 84 32 14 */	add r12, r4, r6
/* 814F4E74 | 7F E5 02 14 */	add r31, r5, r0
/* 814F4E78 | 20 06 00 08 */	subfic r0, r6, 0x8
/* 814F4E7C | 7F 84 60 50 */	subf r28, r4, r12
/* 814F4E80 | 48 00 01 18 */	b .L_814F4F98
.L_814F4E84:
/* 814F4E84 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F4E88 | 54 B7 1E F8 */	clrlslwi r23, r5, 30, 3
/* 814F4E8C | 7C C3 F1 D6 */	mullw r6, r3, r30
/* 814F4E90 | 7C 8B 23 78 */	mr r11, r4
/* 814F4E94 | 7C 67 BA 14 */	add r3, r7, r23
/* 814F4E98 | 7F 89 03 A6 */	mtctr r28
/* 814F4E9C | 7C 04 60 00 */	cmpw r4, r12
/* 814F4EA0 | 40 80 00 E8 */	bge .L_814F4F88
.L_814F4EA4:
/* 814F4EA4 | 8B 09 00 00 */	lbz r24, 0x0(r9)
/* 814F4EA8 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F4EAC | 8A EA 00 00 */	lbz r23, 0x0(r10)
/* 814F4EB0 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F4EB4 | 7F 1A 07 74 */	extsb r26, r24
/* 814F4EB8 | 8B 28 00 00 */	lbz r25, 0x0(r8)
/* 814F4EBC | 7E FB 07 74 */	extsb r27, r23
/* 814F4EC0 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F4EC4 | 1F 1A 00 58 */	mulli r24, r26, 0x58
/* 814F4EC8 | 1E FB 00 B7 */	mulli r23, r27, 0xb7
/* 814F4ECC | 7E F8 BA 14 */	add r23, r24, r23
/* 814F4ED0 | 7E F7 00 D0 */	neg r23, r23
/* 814F4ED4 | 7E F8 46 70 */	srawi r24, r23, 8
/* 814F4ED8 | 1E FB 01 67 */	mulli r23, r27, 0x167
/* 814F4EDC | 7F B9 C2 14 */	add r29, r25, r24
/* 814F4EE0 | 7E F8 46 70 */	srawi r24, r23, 8
/* 814F4EE4 | 1E FA 01 C6 */	mulli r23, r26, 0x1c6
/* 814F4EE8 | 7F 19 C2 14 */	add r24, r25, r24
/* 814F4EEC | 7E F7 46 70 */	srawi r23, r23, 8
/* 814F4EF0 | 7F 39 BA 14 */	add r25, r25, r23
/* 814F4EF4 | 7F 37 C3 78 */	or r23, r25, r24
/* 814F4EF8 | 7E F7 EB 78 */	or r23, r23, r29
/* 814F4EFC | 7E F7 46 71 */	srawi. r23, r23, 8
/* 814F4F00 | 41 82 00 4C */	beq .L_814F4F4C
/* 814F4F04 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F4F08 | 40 81 00 0C */	ble .L_814F4F14
/* 814F4F0C | 3B 20 00 FF */	li r25, 0xff
/* 814F4F10 | 48 00 00 0C */	b .L_814F4F1C
.L_814F4F14:
/* 814F4F14 | 7F 37 FE 70 */	srawi r23, r25, 31
/* 814F4F18 | 7F 39 B8 78 */	andc r25, r25, r23
.L_814F4F1C:
/* 814F4F1C | 2C 1D 00 FF */	cmpwi r29, 0xff
/* 814F4F20 | 40 81 00 0C */	ble .L_814F4F2C
/* 814F4F24 | 3B A0 00 FF */	li r29, 0xff
/* 814F4F28 | 48 00 00 0C */	b .L_814F4F34
.L_814F4F2C:
/* 814F4F2C | 7F B7 FE 70 */	srawi r23, r29, 31
/* 814F4F30 | 7F BD B8 78 */	andc r29, r29, r23
.L_814F4F34:
/* 814F4F34 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F4F38 | 40 81 00 0C */	ble .L_814F4F44
/* 814F4F3C | 3B 00 00 FF */	li r24, 0xff
/* 814F4F40 | 48 00 00 0C */	b .L_814F4F4C
.L_814F4F44:
/* 814F4F44 | 7F 17 FE 70 */	srawi r23, r24, 31
/* 814F4F48 | 7F 18 B8 78 */	andc r24, r24, r23
.L_814F4F4C:
/* 814F4F4C | 57 37 06 38 */	rlwinm r23, r25, 0, 24, 28
/* 814F4F50 | 57 B9 1D 74 */	rlwinm r25, r29, 3, 21, 26
/* 814F4F54 | 7E F7 1E 70 */	srawi r23, r23, 3
/* 814F4F58 | 57 18 44 28 */	rlwinm r24, r24, 8, 16, 20
/* 814F4F5C | 7D 7B 16 70 */	srawi r27, r11, 2
/* 814F4F60 | 55 7A 07 BE */	clrlwi r26, r11, 30
/* 814F4F64 | 7F BB 32 14 */	add r29, r27, r6
/* 814F4F68 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F4F6C | 57 BD 20 36 */	slwi r29, r29, 4
/* 814F4F70 | 7F 77 C2 14 */	add r27, r23, r24
/* 814F4F74 | 7F BA EA 14 */	add r29, r26, r29
/* 814F4F78 | 7F 59 DA 14 */	add r26, r25, r27
/* 814F4F7C | 57 BD 08 3C */	slwi r29, r29, 1
/* 814F4F80 | 7F 43 EB 2E */	sthx r26, r3, r29
/* 814F4F84 | 42 00 FF 20 */	bdnz .L_814F4EA4
.L_814F4F88:
/* 814F4F88 | 7D 08 02 14 */	add r8, r8, r0
/* 814F4F8C | 7D 29 02 14 */	add r9, r9, r0
/* 814F4F90 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F4F94 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F4F98:
/* 814F4F98 | 7C 05 F8 00 */	cmpw r5, r31
/* 814F4F9C | 41 80 FE E8 */	blt .L_814F4E84
/* 814F4FA0 | BA E1 00 0C */	lmw r23, 0xc(r1)
/* 814F4FA4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F4FA8 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F4E0C

# .text:0xAB64 | 0x814F4FAC | size: 0x118
.fn TMCJPEG_814F4FAC, local
/* 814F4FAC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F4FB0 | 38 C0 00 08 */	li r6, 0x8
/* 814F4FB4 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F4FB8 | BF 21 00 14 */	stmw r25, 0x14(r1)
/* 814F4FBC | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F4FC0 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F4FC4 | 81 27 00 2C */	lwz r9, 0x2c(r7)
/* 814F4FC8 | 7C 06 03 D6 */	divw r0, r6, r0
/* 814F4FCC | 80 E7 00 48 */	lwz r7, 0x48(r7)
/* 814F4FD0 | 55 2C F0 BE */	srwi r12, r9, 2
/* 814F4FD4 | 7D 44 02 14 */	add r10, r4, r0
/* 814F4FD8 | 7D 65 02 14 */	add r11, r5, r0
/* 814F4FDC | 20 00 00 08 */	subfic r0, r0, 0x8
/* 814F4FE0 | 7F E4 50 50 */	subf r31, r4, r10
/* 814F4FE4 | 48 00 00 CC */	b .L_814F50B0
.L_814F4FE8:
/* 814F4FE8 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F4FEC | 54 BA 1E F8 */	clrlslwi r26, r5, 30, 3
/* 814F4FF0 | 7C C3 61 D6 */	mullw r6, r3, r12
/* 814F4FF4 | 7C 89 23 78 */	mr r9, r4
/* 814F4FF8 | 7C 67 D2 14 */	add r3, r7, r26
/* 814F4FFC | 7F E9 03 A6 */	mtctr r31
/* 814F5000 | 7C 04 50 00 */	cmpw r4, r10
/* 814F5004 | 40 80 00 A4 */	bge .L_814F50A8
.L_814F5008:
/* 814F5008 | 8B 68 00 00 */	lbz r27, 0x0(r8)
/* 814F500C | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F5010 | 7F 7A 46 71 */	srawi. r26, r27, 8
/* 814F5014 | 41 82 00 50 */	beq .L_814F5064
/* 814F5018 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F501C | 40 81 00 0C */	ble .L_814F5028
/* 814F5020 | 3B 80 00 FF */	li r28, 0xff
/* 814F5024 | 48 00 00 0C */	b .L_814F5030
.L_814F5028:
/* 814F5028 | 7F 7A FE 70 */	srawi r26, r27, 31
/* 814F502C | 7F 7C D0 78 */	andc r28, r27, r26
.L_814F5030:
/* 814F5030 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F5034 | 40 81 00 0C */	ble .L_814F5040
/* 814F5038 | 3B 20 00 FF */	li r25, 0xff
/* 814F503C | 48 00 00 0C */	b .L_814F5048
.L_814F5040:
/* 814F5040 | 7F 7A FE 70 */	srawi r26, r27, 31
/* 814F5044 | 7F 79 D0 78 */	andc r25, r27, r26
.L_814F5048:
/* 814F5048 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F504C | 40 81 00 0C */	ble .L_814F5058
/* 814F5050 | 3B 60 00 FF */	li r27, 0xff
/* 814F5054 | 48 00 00 18 */	b .L_814F506C
.L_814F5058:
/* 814F5058 | 7F 7A FE 70 */	srawi r26, r27, 31
/* 814F505C | 7F 7B D0 78 */	andc r27, r27, r26
/* 814F5060 | 48 00 00 0C */	b .L_814F506C
.L_814F5064:
/* 814F5064 | 7F 7C DB 78 */	mr r28, r27
/* 814F5068 | 7F 79 DB 78 */	mr r25, r27
.L_814F506C:
/* 814F506C | 57 9A 06 38 */	rlwinm r26, r28, 0, 24, 28
/* 814F5070 | 57 7C 44 28 */	rlwinm r28, r27, 8, 16, 20
/* 814F5074 | 7F 5A 1E 70 */	srawi r26, r26, 3
/* 814F5078 | 55 3D 07 BE */	clrlwi r29, r9, 30
/* 814F507C | 7D 3E 16 70 */	srawi r30, r9, 2
/* 814F5080 | 57 3B 1D 74 */	rlwinm r27, r25, 3, 21, 26
/* 814F5084 | 7F DE 32 14 */	add r30, r30, r6
/* 814F5088 | 7F 9A E2 14 */	add r28, r26, r28
/* 814F508C | 57 DE 20 36 */	slwi r30, r30, 4
/* 814F5090 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F5094 | 7F DD F2 14 */	add r30, r29, r30
/* 814F5098 | 7F BB E2 14 */	add r29, r27, r28
/* 814F509C | 57 DE 08 3C */	slwi r30, r30, 1
/* 814F50A0 | 7F A3 F3 2E */	sthx r29, r3, r30
/* 814F50A4 | 42 00 FF 64 */	bdnz .L_814F5008
.L_814F50A8:
/* 814F50A8 | 7D 08 02 14 */	add r8, r8, r0
/* 814F50AC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F50B0:
/* 814F50B0 | 7C 05 58 00 */	cmpw r5, r11
/* 814F50B4 | 41 80 FF 34 */	blt .L_814F4FE8
/* 814F50B8 | BB 21 00 14 */	lmw r25, 0x14(r1)
/* 814F50BC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F50C0 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F4FAC

# .text:0xAC7C | 0x814F50C4 | size: 0x14C
.fn TMCJPEG_814F50C4, local
/* 814F50C4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F50C8 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F50CC | BF 21 00 14 */	stmw r25, 0x14(r1)
/* 814F50D0 | 80 C3 19 E4 */	lwz r6, 0x19e4(r3)
/* 814F50D4 | 80 06 00 18 */	lwz r0, 0x18(r6)
/* 814F50D8 | 80 66 00 2C */	lwz r3, 0x2c(r6)
/* 814F50DC | 7C 00 20 40 */	cmplw r0, r4
/* 814F50E0 | 80 E6 00 48 */	lwz r7, 0x48(r6)
/* 814F50E4 | 54 6C F0 BE */	srwi r12, r3, 2
/* 814F50E8 | 40 82 00 0C */	bne .L_814F50F4
/* 814F50EC | 89 26 00 16 */	lbz r9, 0x16(r6)
/* 814F50F0 | 48 00 00 10 */	b .L_814F5100
.L_814F50F4:
/* 814F50F4 | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814F50F8 | 38 60 00 08 */	li r3, 0x8
/* 814F50FC | 7D 23 03 D6 */	divw r9, r3, r0
.L_814F5100:
/* 814F5100 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 814F5104 | 7C 00 28 40 */	cmplw r0, r5
/* 814F5108 | 40 82 00 0C */	bne .L_814F5114
/* 814F510C | 88 06 00 17 */	lbz r0, 0x17(r6)
/* 814F5110 | 48 00 00 10 */	b .L_814F5120
.L_814F5114:
/* 814F5114 | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814F5118 | 38 60 00 08 */	li r3, 0x8
/* 814F511C | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F5120:
/* 814F5120 | 7D 44 4A 14 */	add r10, r4, r9
/* 814F5124 | 7D 65 02 14 */	add r11, r5, r0
/* 814F5128 | 20 09 00 08 */	subfic r0, r9, 0x8
/* 814F512C | 7F E4 50 50 */	subf r31, r4, r10
/* 814F5130 | 48 00 00 CC */	b .L_814F51FC
.L_814F5134:
/* 814F5134 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F5138 | 54 BA 1E F8 */	clrlslwi r26, r5, 30, 3
/* 814F513C | 7C C3 61 D6 */	mullw r6, r3, r12
/* 814F5140 | 7C 89 23 78 */	mr r9, r4
/* 814F5144 | 7C 67 D2 14 */	add r3, r7, r26
/* 814F5148 | 7F E9 03 A6 */	mtctr r31
/* 814F514C | 7C 04 50 00 */	cmpw r4, r10
/* 814F5150 | 40 80 00 A4 */	bge .L_814F51F4
.L_814F5154:
/* 814F5154 | 8B 68 00 00 */	lbz r27, 0x0(r8)
/* 814F5158 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F515C | 7F 7A 46 71 */	srawi. r26, r27, 8
/* 814F5160 | 41 82 00 50 */	beq .L_814F51B0
/* 814F5164 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F5168 | 40 81 00 0C */	ble .L_814F5174
/* 814F516C | 3B 80 00 FF */	li r28, 0xff
/* 814F5170 | 48 00 00 0C */	b .L_814F517C
.L_814F5174:
/* 814F5174 | 7F 7A FE 70 */	srawi r26, r27, 31
/* 814F5178 | 7F 7C D0 78 */	andc r28, r27, r26
.L_814F517C:
/* 814F517C | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F5180 | 40 81 00 0C */	ble .L_814F518C
/* 814F5184 | 3B 20 00 FF */	li r25, 0xff
/* 814F5188 | 48 00 00 0C */	b .L_814F5194
.L_814F518C:
/* 814F518C | 7F 7A FE 70 */	srawi r26, r27, 31
/* 814F5190 | 7F 79 D0 78 */	andc r25, r27, r26
.L_814F5194:
/* 814F5194 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F5198 | 40 81 00 0C */	ble .L_814F51A4
/* 814F519C | 3B 60 00 FF */	li r27, 0xff
/* 814F51A0 | 48 00 00 18 */	b .L_814F51B8
.L_814F51A4:
/* 814F51A4 | 7F 7A FE 70 */	srawi r26, r27, 31
/* 814F51A8 | 7F 7B D0 78 */	andc r27, r27, r26
/* 814F51AC | 48 00 00 0C */	b .L_814F51B8
.L_814F51B0:
/* 814F51B0 | 7F 7C DB 78 */	mr r28, r27
/* 814F51B4 | 7F 79 DB 78 */	mr r25, r27
.L_814F51B8:
/* 814F51B8 | 57 9A 06 38 */	rlwinm r26, r28, 0, 24, 28
/* 814F51BC | 57 7C 44 28 */	rlwinm r28, r27, 8, 16, 20
/* 814F51C0 | 7F 5A 1E 70 */	srawi r26, r26, 3
/* 814F51C4 | 55 3D 07 BE */	clrlwi r29, r9, 30
/* 814F51C8 | 7D 3E 16 70 */	srawi r30, r9, 2
/* 814F51CC | 57 3B 1D 74 */	rlwinm r27, r25, 3, 21, 26
/* 814F51D0 | 7F DE 32 14 */	add r30, r30, r6
/* 814F51D4 | 7F 9A E2 14 */	add r28, r26, r28
/* 814F51D8 | 57 DE 20 36 */	slwi r30, r30, 4
/* 814F51DC | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F51E0 | 7F DD F2 14 */	add r30, r29, r30
/* 814F51E4 | 7F BB E2 14 */	add r29, r27, r28
/* 814F51E8 | 57 DE 08 3C */	slwi r30, r30, 1
/* 814F51EC | 7F A3 F3 2E */	sthx r29, r3, r30
/* 814F51F0 | 42 00 FF 64 */	bdnz .L_814F5154
.L_814F51F4:
/* 814F51F4 | 7D 08 02 14 */	add r8, r8, r0
/* 814F51F8 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F51FC:
/* 814F51FC | 7C 05 58 00 */	cmpw r5, r11
/* 814F5200 | 41 80 FF 34 */	blt .L_814F5134
/* 814F5204 | BB 21 00 14 */	lmw r25, 0x14(r1)
/* 814F5208 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F520C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F50C4

# .text:0xADC8 | 0x814F5210 | size: 0x2A8
.fn TMCJPEGDEC_set_converterRGBA8, global
/* 814F5210 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F5214 | 38 83 18 58 */	addi r4, r3, 0x1858
/* 814F5218 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F521C | 88 03 17 FC */	lbz r0, 0x17fc(r3)
/* 814F5220 | 80 A3 19 E4 */	lwz r5, 0x19e4(r3)
/* 814F5224 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814F5228 | 41 82 01 44 */	beq .L_814F536C
/* 814F522C | 40 80 00 1C */	bge .L_814F5248
/* 814F5230 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814F5234 | 41 82 00 84 */	beq .L_814F52B8
/* 814F5238 | 40 80 00 D0 */	bge .L_814F5308
/* 814F523C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F5240 | 40 80 00 18 */	bge .L_814F5258
/* 814F5244 | 48 00 01 F4 */	b .L_814F5438
.L_814F5248:
/* 814F5248 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814F524C | 41 82 01 B8 */	beq .L_814F5404
/* 814F5250 | 40 80 01 E8 */	bge .L_814F5438
/* 814F5254 | 48 00 01 6C */	b .L_814F53C0
.L_814F5258:
/* 814F5258 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814F525C | 39 64 00 04 */	addi r11, r4, 0x4
/* 814F5260 | 3F E0 81 4F */	lis r31, TMCJPEG_814F54B8@ha
/* 814F5264 | 3D 80 81 4F */	lis r12, TMCJPEG_814F5880@ha
/* 814F5268 | 7D 4B 02 14 */	add r10, r11, r0
/* 814F526C | 38 E4 01 04 */	addi r7, r4, 0x104
/* 814F5270 | 7D 2A 02 14 */	add r9, r10, r0
/* 814F5274 | 38 C4 01 44 */	addi r6, r4, 0x144
/* 814F5278 | 7D 09 02 14 */	add r8, r9, r0
/* 814F527C | 3B FF 54 B8 */	addi r31, r31, TMCJPEG_814F54B8@l
/* 814F5280 | 39 8C 58 80 */	addi r12, r12, TMCJPEG_814F5880@l
/* 814F5284 | 38 80 00 20 */	li r4, 0x20
/* 814F5288 | 38 00 00 00 */	li r0, 0x0
/* 814F528C | 93 E3 18 2C */	stw r31, 0x182c(r3)
/* 814F5290 | 91 83 18 30 */	stw r12, 0x1830(r3)
/* 814F5294 | 91 63 18 3C */	stw r11, 0x183c(r3)
/* 814F5298 | 91 43 18 40 */	stw r10, 0x1840(r3)
/* 814F529C | 91 23 18 44 */	stw r9, 0x1844(r3)
/* 814F52A0 | 91 03 18 48 */	stw r8, 0x1848(r3)
/* 814F52A4 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F52A8 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F52AC | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F52B0 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F52B4 | 48 00 01 8C */	b .L_814F5440
.L_814F52B8:
/* 814F52B8 | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814F52BC | 39 24 00 04 */	addi r9, r4, 0x4
/* 814F52C0 | 3D 60 81 4F */	lis r11, TMCJPEG_814F5A40@ha
/* 814F52C4 | 3D 40 81 4F */	lis r10, TMCJPEG_814F5C90@ha
/* 814F52C8 | 7D 09 02 14 */	add r8, r9, r0
/* 814F52CC | 38 E4 00 84 */	addi r7, r4, 0x84
/* 814F52D0 | 38 C4 00 C4 */	addi r6, r4, 0xc4
/* 814F52D4 | 39 6B 5A 40 */	addi r11, r11, TMCJPEG_814F5A40@l
/* 814F52D8 | 39 4A 5C 90 */	addi r10, r10, TMCJPEG_814F5C90@l
/* 814F52DC | 38 80 00 10 */	li r4, 0x10
/* 814F52E0 | 38 00 00 00 */	li r0, 0x0
/* 814F52E4 | 91 63 18 2C */	stw r11, 0x182c(r3)
/* 814F52E8 | 91 43 18 30 */	stw r10, 0x1830(r3)
/* 814F52EC | 91 23 18 3C */	stw r9, 0x183c(r3)
/* 814F52F0 | 91 03 18 40 */	stw r8, 0x1840(r3)
/* 814F52F4 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F52F8 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F52FC | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F5300 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F5304 | 48 00 01 3C */	b .L_814F5440
.L_814F5308:
/* 814F5308 | 88 C3 19 DC */	lbz r6, 0x19dc(r3)
/* 814F530C | 39 64 00 04 */	addi r11, r4, 0x4
/* 814F5310 | 3F E0 81 4F */	lis r31, TMCJPEG_814F5E54@ha
/* 814F5314 | 3D 80 81 4F */	lis r12, TMCJPEG_814F60B8@ha
/* 814F5318 | 54 C0 20 36 */	slwi r0, r6, 4
/* 814F531C | 7D 4B 32 14 */	add r10, r11, r6
/* 814F5320 | 7D 2B 02 14 */	add r9, r11, r0
/* 814F5324 | 3B FF 5E 54 */	addi r31, r31, TMCJPEG_814F5E54@l
/* 814F5328 | 7D 09 32 14 */	add r8, r9, r6
/* 814F532C | 39 8C 60 B8 */	addi r12, r12, TMCJPEG_814F60B8@l
/* 814F5330 | 38 E4 01 04 */	addi r7, r4, 0x104
/* 814F5334 | 38 C4 01 44 */	addi r6, r4, 0x144
/* 814F5338 | 38 80 00 10 */	li r4, 0x10
/* 814F533C | 38 00 00 00 */	li r0, 0x0
/* 814F5340 | 93 E3 18 2C */	stw r31, 0x182c(r3)
/* 814F5344 | 91 83 18 30 */	stw r12, 0x1830(r3)
/* 814F5348 | 91 63 18 3C */	stw r11, 0x183c(r3)
/* 814F534C | 91 43 18 40 */	stw r10, 0x1840(r3)
/* 814F5350 | 91 23 18 44 */	stw r9, 0x1844(r3)
/* 814F5354 | 91 03 18 48 */	stw r8, 0x1848(r3)
/* 814F5358 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F535C | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F5360 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F5364 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F5368 | 48 00 00 D8 */	b .L_814F5440
.L_814F536C:
/* 814F536C | 88 03 19 DC */	lbz r0, 0x19dc(r3)
/* 814F5370 | 39 24 00 04 */	addi r9, r4, 0x4
/* 814F5374 | 3D 60 81 4F */	lis r11, TMCJPEG_814F6298@ha
/* 814F5378 | 3D 40 81 4F */	lis r10, TMCJPEG_814F6438@ha
/* 814F537C | 54 00 18 38 */	slwi r0, r0, 3
/* 814F5380 | 38 E4 00 84 */	addi r7, r4, 0x84
/* 814F5384 | 7D 09 02 14 */	add r8, r9, r0
/* 814F5388 | 38 C4 00 C4 */	addi r6, r4, 0xc4
/* 814F538C | 39 6B 62 98 */	addi r11, r11, TMCJPEG_814F6298@l
/* 814F5390 | 39 4A 64 38 */	addi r10, r10, TMCJPEG_814F6438@l
/* 814F5394 | 38 80 00 08 */	li r4, 0x8
/* 814F5398 | 38 00 00 00 */	li r0, 0x0
/* 814F539C | 91 63 18 2C */	stw r11, 0x182c(r3)
/* 814F53A0 | 91 43 18 30 */	stw r10, 0x1830(r3)
/* 814F53A4 | 91 23 18 3C */	stw r9, 0x183c(r3)
/* 814F53A8 | 91 03 18 40 */	stw r8, 0x1840(r3)
/* 814F53AC | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F53B0 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F53B4 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F53B8 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F53BC | 48 00 00 84 */	b .L_814F5440
.L_814F53C0:
/* 814F53C0 | 3D 40 81 4F */	lis r10, TMCJPEG_814F6604@ha
/* 814F53C4 | 3D 20 81 4F */	lis r9, TMCJPEG_814F6788@ha
/* 814F53C8 | 39 4A 66 04 */	addi r10, r10, TMCJPEG_814F6604@l
/* 814F53CC | 39 04 00 04 */	addi r8, r4, 0x4
/* 814F53D0 | 39 29 67 88 */	addi r9, r9, TMCJPEG_814F6788@l
/* 814F53D4 | 38 E4 00 44 */	addi r7, r4, 0x44
/* 814F53D8 | 38 C4 00 84 */	addi r6, r4, 0x84
/* 814F53DC | 38 80 00 08 */	li r4, 0x8
/* 814F53E0 | 38 00 00 00 */	li r0, 0x0
/* 814F53E4 | 91 43 18 2C */	stw r10, 0x182c(r3)
/* 814F53E8 | 91 23 18 30 */	stw r9, 0x1830(r3)
/* 814F53EC | 91 03 18 3C */	stw r8, 0x183c(r3)
/* 814F53F0 | 90 E3 18 50 */	stw r7, 0x1850(r3)
/* 814F53F4 | 90 C3 18 54 */	stw r6, 0x1854(r3)
/* 814F53F8 | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F53FC | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F5400 | 48 00 00 40 */	b .L_814F5440
.L_814F5404:
/* 814F5404 | 3D 00 81 4F */	lis r8, TMCJPEG_814F6940@ha
/* 814F5408 | 3C E0 81 4F */	lis r7, TMCJPEG_814F6A70@ha
/* 814F540C | 38 C4 00 04 */	addi r6, r4, 0x4
/* 814F5410 | 38 80 00 08 */	li r4, 0x8
/* 814F5414 | 39 08 69 40 */	addi r8, r8, TMCJPEG_814F6940@l
/* 814F5418 | 38 E7 6A 70 */	addi r7, r7, TMCJPEG_814F6A70@l
/* 814F541C | 38 00 00 00 */	li r0, 0x0
/* 814F5420 | 91 03 18 2C */	stw r8, 0x182c(r3)
/* 814F5424 | 90 E3 18 30 */	stw r7, 0x1830(r3)
/* 814F5428 | 90 C3 18 3C */	stw r6, 0x183c(r3)
/* 814F542C | B0 83 19 DE */	sth r4, 0x19de(r3)
/* 814F5430 | 98 03 19 E0 */	stb r0, 0x19e0(r3)
/* 814F5434 | 48 00 00 0C */	b .L_814F5440
.L_814F5438:
/* 814F5438 | 38 60 FF 90 */	li r3, -0x70
/* 814F543C | 48 00 00 70 */	b .L_814F54AC
.L_814F5440:
/* 814F5440 | A1 25 00 24 */	lhz r9, 0x24(r5)
/* 814F5444 | 38 60 00 00 */	li r3, 0x0
/* 814F5448 | A1 45 00 26 */	lhz r10, 0x26(r5)
/* 814F544C | 55 20 F0 02 */	slwi r0, r9, 30
/* 814F5450 | 55 27 0F FE */	srwi r7, r9, 31
/* 814F5454 | 7C 87 00 50 */	subf r4, r7, r0
/* 814F5458 | 55 46 0F FE */	srwi r6, r10, 31
/* 814F545C | 54 84 10 3E */	rotlwi r4, r4, 2
/* 814F5460 | 55 40 F0 02 */	slwi r0, r10, 30
/* 814F5464 | 7D 04 3A 14 */	add r8, r4, r7
/* 814F5468 | 55 29 F0 BE */	srwi r9, r9, 2
/* 814F546C | 7C 86 00 50 */	subf r4, r6, r0
/* 814F5470 | 55 40 F0 BE */	srwi r0, r10, 2
/* 814F5474 | 7C E8 00 D0 */	neg r7, r8
/* 814F5478 | 54 84 10 3E */	rotlwi r4, r4, 2
/* 814F547C | 7C E7 43 78 */	or r7, r7, r8
/* 814F5480 | 7C C4 32 14 */	add r6, r4, r6
/* 814F5484 | 54 E7 0F FE */	srwi r7, r7, 31
/* 814F5488 | 7C 86 00 D0 */	neg r4, r6
/* 814F548C | 7C 84 33 78 */	or r4, r4, r6
/* 814F5490 | 7C E9 3A 14 */	add r7, r9, r7
/* 814F5494 | 54 86 0F FE */	srwi r6, r4, 31
/* 814F5498 | 54 E4 10 3A */	slwi r4, r7, 2
/* 814F549C | 7C 00 32 14 */	add r0, r0, r6
/* 814F54A0 | 90 85 00 2C */	stw r4, 0x2c(r5)
/* 814F54A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814F54A8 | 90 05 00 30 */	stw r0, 0x30(r5)
.L_814F54AC:
/* 814F54AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F54B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F54B4 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_set_converterRGBA8

# .text:0xB070 | 0x814F54B8 | size: 0x3C8
.fn TMCJPEG_814F54B8, local
/* 814F54B8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814F54BC | 38 00 00 20 */	li r0, 0x20
/* 814F54C0 | 39 00 00 08 */	li r8, 0x8
/* 814F54C4 | 38 E3 19 5C */	addi r7, r3, 0x195c
/* 814F54C8 | BE 21 00 14 */	stmw r17, 0x14(r1)
/* 814F54CC | 80 C3 19 E4 */	lwz r6, 0x19e4(r3)
/* 814F54D0 | 89 46 00 20 */	lbz r10, 0x20(r6)
/* 814F54D4 | 81 26 00 2C */	lwz r9, 0x2c(r6)
/* 814F54D8 | 7D 80 53 D6 */	divw r12, r0, r10
/* 814F54DC | 80 06 00 48 */	lwz r0, 0x48(r6)
/* 814F54E0 | 38 C3 18 5C */	addi r6, r3, 0x185c
/* 814F54E4 | 55 2B F8 7C */	rlwinm r11, r9, 31, 1, 30
/* 814F54E8 | 38 63 19 9C */	addi r3, r3, 0x199c
/* 814F54EC | 7D 08 53 D6 */	divw r8, r8, r10
/* 814F54F0 | 23 0C 00 20 */	subfic r24, r12, 0x20
/* 814F54F4 | 7D 24 62 14 */	add r9, r4, r12
/* 814F54F8 | 7F 17 16 70 */	srawi r23, r24, 2
/* 814F54FC | 7D 45 42 14 */	add r10, r5, r8
/* 814F5500 | 48 00 03 6C */	b .L_814F586C
.L_814F5504:
/* 814F5504 | 7C 96 16 70 */	srawi r22, r4, 2
/* 814F5508 | 39 89 00 03 */	addi r12, r9, 0x3
/* 814F550C | 7C B1 16 70 */	srawi r17, r5, 2
/* 814F5510 | 54 B2 1E F8 */	clrlslwi r18, r5, 30, 3
/* 814F5514 | 7D 84 60 50 */	subf r12, r4, r12
/* 814F5518 | 7C 88 23 78 */	mr r8, r4
/* 814F551C | 7E 91 59 D6 */	mullw r20, r17, r11
/* 814F5520 | 7E A0 92 14 */	add r21, r0, r18
/* 814F5524 | 55 8C F0 BE */	srwi r12, r12, 2
/* 814F5528 | 56 DD 08 3C */	slwi r29, r22, 1
/* 814F552C | 7D 89 03 A6 */	mtctr r12
/* 814F5530 | 7C 04 48 00 */	cmpw r4, r9
/* 814F5534 | 40 80 03 28 */	bge .L_814F585C
.L_814F5538:
/* 814F5538 | 8A 27 00 00 */	lbz r17, 0x0(r7)
/* 814F553C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814F5540 | 89 83 00 00 */	lbz r12, 0x0(r3)
/* 814F5544 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814F5548 | 7E 3A 07 74 */	extsb r26, r17
/* 814F554C | 8A 26 00 00 */	lbz r17, 0x0(r6)
/* 814F5550 | 7D 92 07 74 */	extsb r18, r12
/* 814F5554 | 1D 92 01 67 */	mulli r12, r18, 0x167
/* 814F5558 | 7D 8C 46 70 */	srawi r12, r12, 8
/* 814F555C | 1F 3A 00 58 */	mulli r25, r26, 0x58
/* 814F5560 | 7E 71 62 14 */	add r19, r17, r12
/* 814F5564 | 1E 52 00 B7 */	mulli r18, r18, 0xb7
/* 814F5568 | 7E 59 92 14 */	add r18, r25, r18
/* 814F556C | 7E 52 00 D0 */	neg r18, r18
/* 814F5570 | 7E 5F 46 70 */	srawi r31, r18, 8
/* 814F5574 | 1E 5A 01 C6 */	mulli r18, r26, 0x1c6
/* 814F5578 | 7F 31 FA 14 */	add r25, r17, r31
/* 814F557C | 7E 5E 46 70 */	srawi r30, r18, 8
/* 814F5580 | 7E 51 F2 14 */	add r18, r17, r30
/* 814F5584 | 7E 51 9B 78 */	or r17, r18, r19
/* 814F5588 | 7E 31 CB 78 */	or r17, r17, r25
/* 814F558C | 7E 31 46 71 */	srawi. r17, r17, 8
/* 814F5590 | 41 82 00 4C */	beq .L_814F55DC
/* 814F5594 | 2C 12 00 FF */	cmpwi r18, 0xff
/* 814F5598 | 40 81 00 0C */	ble .L_814F55A4
/* 814F559C | 3A 40 00 FF */	li r18, 0xff
/* 814F55A0 | 48 00 00 0C */	b .L_814F55AC
.L_814F55A4:
/* 814F55A4 | 7E 51 FE 70 */	srawi r17, r18, 31
/* 814F55A8 | 7E 52 88 78 */	andc r18, r18, r17
.L_814F55AC:
/* 814F55AC | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F55B0 | 40 81 00 0C */	ble .L_814F55BC
/* 814F55B4 | 3B 20 00 FF */	li r25, 0xff
/* 814F55B8 | 48 00 00 0C */	b .L_814F55C4
.L_814F55BC:
/* 814F55BC | 7F 31 FE 70 */	srawi r17, r25, 31
/* 814F55C0 | 7F 39 88 78 */	andc r25, r25, r17
.L_814F55C4:
/* 814F55C4 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F55C8 | 40 81 00 0C */	ble .L_814F55D4
/* 814F55CC | 3A 60 00 FF */	li r19, 0xff
/* 814F55D0 | 48 00 00 0C */	b .L_814F55DC
.L_814F55D4:
/* 814F55D4 | 7E 71 FE 70 */	srawi r17, r19, 31
/* 814F55D8 | 7E 73 88 78 */	andc r19, r19, r17
.L_814F55DC:
/* 814F55DC | 7F 5D A2 14 */	add r26, r29, r20
/* 814F55E0 | 56 7B 06 3E */	clrlwi r27, r19, 24
/* 814F55E4 | 57 51 20 36 */	slwi r17, r26, 4
/* 814F55E8 | 55 13 07 BE */	clrlwi r19, r8, 30
/* 814F55EC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814F55F0 | 57 3C 44 2E */	clrlslwi r28, r25, 24, 8
/* 814F55F4 | 3F 3B 00 01 */	addis r25, r27, 0x1
/* 814F55F8 | 7F 73 8A 14 */	add r27, r19, r17
/* 814F55FC | 57 5A 20 36 */	slwi r26, r26, 4
/* 814F5600 | 56 51 06 3E */	clrlwi r17, r18, 24
/* 814F5604 | 7E 53 D2 14 */	add r18, r19, r26
/* 814F5608 | 3B 59 FF 00 */	subi r26, r25, 0x100
/* 814F560C | 57 79 08 3C */	slwi r25, r27, 1
/* 814F5610 | 7F 55 CB 2E */	sthx r26, r21, r25
/* 814F5614 | 7E 7C 8A 14 */	add r19, r28, r17
/* 814F5618 | 56 52 08 3C */	slwi r18, r18, 1
/* 814F561C | 7E 75 93 2E */	sthx r19, r21, r18
/* 814F5620 | 8A 46 00 01 */	lbz r18, 0x1(r6)
/* 814F5624 | 7F 52 62 14 */	add r26, r18, r12
/* 814F5628 | 7E 72 F2 14 */	add r19, r18, r30
/* 814F562C | 7F 32 FA 14 */	add r25, r18, r31
/* 814F5630 | 7E 72 D3 78 */	or r18, r19, r26
/* 814F5634 | 7E 52 CB 78 */	or r18, r18, r25
/* 814F5638 | 7E 52 46 71 */	srawi. r18, r18, 8
/* 814F563C | 41 82 00 4C */	beq .L_814F5688
/* 814F5640 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F5644 | 40 81 00 0C */	ble .L_814F5650
/* 814F5648 | 3A 60 00 FF */	li r19, 0xff
/* 814F564C | 48 00 00 0C */	b .L_814F5658
.L_814F5650:
/* 814F5650 | 7E 72 FE 70 */	srawi r18, r19, 31
/* 814F5654 | 7E 73 90 78 */	andc r19, r19, r18
.L_814F5658:
/* 814F5658 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F565C | 40 81 00 0C */	ble .L_814F5668
/* 814F5660 | 3B 20 00 FF */	li r25, 0xff
/* 814F5664 | 48 00 00 0C */	b .L_814F5670
.L_814F5668:
/* 814F5668 | 7F 32 FE 70 */	srawi r18, r25, 31
/* 814F566C | 7F 39 90 78 */	andc r25, r25, r18
.L_814F5670:
/* 814F5670 | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 814F5674 | 40 81 00 0C */	ble .L_814F5680
/* 814F5678 | 3B 40 00 FF */	li r26, 0xff
/* 814F567C | 48 00 00 0C */	b .L_814F5688
.L_814F5680:
/* 814F5680 | 7F 52 FE 70 */	srawi r18, r26, 31
/* 814F5684 | 7F 5A 90 78 */	andc r26, r26, r18
.L_814F5688:
/* 814F5688 | 3B 88 00 01 */	addi r28, r8, 0x1
/* 814F568C | 57 52 06 3E */	clrlwi r18, r26, 24
/* 814F5690 | 7F 9B 16 70 */	srawi r27, r28, 2
/* 814F5694 | 57 3A 44 2E */	clrlslwi r26, r25, 24, 8
/* 814F5698 | 57 71 08 3C */	slwi r17, r27, 1
/* 814F569C | 56 79 06 3E */	clrlwi r25, r19, 24
/* 814F56A0 | 3F 72 00 01 */	addis r27, r18, 0x1
/* 814F56A4 | 57 93 07 BE */	clrlwi r19, r28, 30
/* 814F56A8 | 7E 51 A2 14 */	add r18, r17, r20
/* 814F56AC | 7F 3A CA 14 */	add r25, r26, r25
/* 814F56B0 | 3B 9B FF 00 */	subi r28, r27, 0x100
/* 814F56B4 | 56 5B 20 36 */	slwi r27, r18, 4
/* 814F56B8 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814F56BC | 7F 73 DA 14 */	add r27, r19, r27
/* 814F56C0 | 57 7A 08 3C */	slwi r26, r27, 1
/* 814F56C4 | 56 52 20 36 */	slwi r18, r18, 4
/* 814F56C8 | 7E 53 92 14 */	add r18, r19, r18
/* 814F56CC | 7F 95 D3 2E */	sthx r28, r21, r26
/* 814F56D0 | 56 52 08 3C */	slwi r18, r18, 1
/* 814F56D4 | 7F 35 93 2E */	sthx r25, r21, r18
/* 814F56D8 | 8A 46 00 02 */	lbz r18, 0x2(r6)
/* 814F56DC | 7F 52 62 14 */	add r26, r18, r12
/* 814F56E0 | 7E 72 F2 14 */	add r19, r18, r30
/* 814F56E4 | 7F 32 FA 14 */	add r25, r18, r31
/* 814F56E8 | 7E 72 D3 78 */	or r18, r19, r26
/* 814F56EC | 7E 52 CB 78 */	or r18, r18, r25
/* 814F56F0 | 7E 52 46 71 */	srawi. r18, r18, 8
/* 814F56F4 | 41 82 00 4C */	beq .L_814F5740
/* 814F56F8 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F56FC | 40 81 00 0C */	ble .L_814F5708
/* 814F5700 | 3A 60 00 FF */	li r19, 0xff
/* 814F5704 | 48 00 00 0C */	b .L_814F5710
.L_814F5708:
/* 814F5708 | 7E 72 FE 70 */	srawi r18, r19, 31
/* 814F570C | 7E 73 90 78 */	andc r19, r19, r18
.L_814F5710:
/* 814F5710 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F5714 | 40 81 00 0C */	ble .L_814F5720
/* 814F5718 | 3B 20 00 FF */	li r25, 0xff
/* 814F571C | 48 00 00 0C */	b .L_814F5728
.L_814F5720:
/* 814F5720 | 7F 32 FE 70 */	srawi r18, r25, 31
/* 814F5724 | 7F 39 90 78 */	andc r25, r25, r18
.L_814F5728:
/* 814F5728 | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 814F572C | 40 81 00 0C */	ble .L_814F5738
/* 814F5730 | 3B 40 00 FF */	li r26, 0xff
/* 814F5734 | 48 00 00 0C */	b .L_814F5740
.L_814F5738:
/* 814F5738 | 7F 52 FE 70 */	srawi r18, r26, 31
/* 814F573C | 7F 5A 90 78 */	andc r26, r26, r18
.L_814F5740:
/* 814F5740 | 3B 88 00 02 */	addi r28, r8, 0x2
/* 814F5744 | 57 52 06 3E */	clrlwi r18, r26, 24
/* 814F5748 | 7F 9B 16 70 */	srawi r27, r28, 2
/* 814F574C | 57 3A 44 2E */	clrlslwi r26, r25, 24, 8
/* 814F5750 | 57 71 08 3C */	slwi r17, r27, 1
/* 814F5754 | 56 79 06 3E */	clrlwi r25, r19, 24
/* 814F5758 | 3F 72 00 01 */	addis r27, r18, 0x1
/* 814F575C | 57 93 07 BE */	clrlwi r19, r28, 30
/* 814F5760 | 7E 51 A2 14 */	add r18, r17, r20
/* 814F5764 | 7F 3A CA 14 */	add r25, r26, r25
/* 814F5768 | 3B 9B FF 00 */	subi r28, r27, 0x100
/* 814F576C | 56 5B 20 36 */	slwi r27, r18, 4
/* 814F5770 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814F5774 | 7F 73 DA 14 */	add r27, r19, r27
/* 814F5778 | 57 7A 08 3C */	slwi r26, r27, 1
/* 814F577C | 56 52 20 36 */	slwi r18, r18, 4
/* 814F5780 | 7E 53 92 14 */	add r18, r19, r18
/* 814F5784 | 7F 95 D3 2E */	sthx r28, r21, r26
/* 814F5788 | 56 52 08 3C */	slwi r18, r18, 1
/* 814F578C | 7F 35 93 2E */	sthx r25, r21, r18
/* 814F5790 | 8A 46 00 03 */	lbz r18, 0x3(r6)
/* 814F5794 | 38 C6 00 04 */	addi r6, r6, 0x4
/* 814F5798 | 7E 72 62 14 */	add r19, r18, r12
/* 814F579C | 7D 92 F2 14 */	add r12, r18, r30
/* 814F57A0 | 7E 32 FA 14 */	add r17, r18, r31
/* 814F57A4 | 7D 92 9B 78 */	or r18, r12, r19
/* 814F57A8 | 7E 52 8B 78 */	or r18, r18, r17
/* 814F57AC | 7E 52 46 71 */	srawi. r18, r18, 8
/* 814F57B0 | 41 82 00 4C */	beq .L_814F57FC
/* 814F57B4 | 2C 0C 00 FF */	cmpwi r12, 0xff
/* 814F57B8 | 40 81 00 0C */	ble .L_814F57C4
/* 814F57BC | 39 80 00 FF */	li r12, 0xff
/* 814F57C0 | 48 00 00 0C */	b .L_814F57CC
.L_814F57C4:
/* 814F57C4 | 7D 92 FE 70 */	srawi r18, r12, 31
/* 814F57C8 | 7D 8C 90 78 */	andc r12, r12, r18
.L_814F57CC:
/* 814F57CC | 2C 11 00 FF */	cmpwi r17, 0xff
/* 814F57D0 | 40 81 00 0C */	ble .L_814F57DC
/* 814F57D4 | 3A 20 00 FF */	li r17, 0xff
/* 814F57D8 | 48 00 00 0C */	b .L_814F57E4
.L_814F57DC:
/* 814F57DC | 7E 32 FE 70 */	srawi r18, r17, 31
/* 814F57E0 | 7E 31 90 78 */	andc r17, r17, r18
.L_814F57E4:
/* 814F57E4 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F57E8 | 40 81 00 0C */	ble .L_814F57F4
/* 814F57EC | 3A 60 00 FF */	li r19, 0xff
/* 814F57F0 | 48 00 00 0C */	b .L_814F57FC
.L_814F57F4:
/* 814F57F4 | 7E 72 FE 70 */	srawi r18, r19, 31
/* 814F57F8 | 7E 73 90 78 */	andc r19, r19, r18
.L_814F57FC:
/* 814F57FC | 3B 68 00 03 */	addi r27, r8, 0x3
/* 814F5800 | 56 72 06 3E */	clrlwi r18, r19, 24
/* 814F5804 | 7F 79 16 70 */	srawi r25, r27, 2
/* 814F5808 | 56 33 44 2E */	clrlslwi r19, r17, 24, 8
/* 814F580C | 57 31 08 3C */	slwi r17, r25, 1
/* 814F5810 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814F5814 | 3F 32 00 01 */	addis r25, r18, 0x1
/* 814F5818 | 55 92 06 3E */	clrlwi r18, r12, 24
/* 814F581C | 7F 51 A2 14 */	add r26, r17, r20
/* 814F5820 | 57 71 07 BE */	clrlwi r17, r27, 30
/* 814F5824 | 3B 79 FF 00 */	subi r27, r25, 0x100
/* 814F5828 | 7E 53 92 14 */	add r18, r19, r18
/* 814F582C | 57 59 20 36 */	slwi r25, r26, 4
/* 814F5830 | 39 9A 00 01 */	addi r12, r26, 0x1
/* 814F5834 | 7F 31 CA 14 */	add r25, r17, r25
/* 814F5838 | 39 08 00 04 */	addi r8, r8, 0x4
/* 814F583C | 57 33 08 3C */	slwi r19, r25, 1
/* 814F5840 | 55 8C 20 36 */	slwi r12, r12, 4
/* 814F5844 | 7D 91 62 14 */	add r12, r17, r12
/* 814F5848 | 7F 75 9B 2E */	sthx r27, r21, r19
/* 814F584C | 55 8C 08 3C */	slwi r12, r12, 1
/* 814F5850 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814F5854 | 7E 55 63 2E */	sthx r18, r21, r12
/* 814F5858 | 42 00 FC E0 */	bdnz .L_814F5538
.L_814F585C:
/* 814F585C | 7C C6 C2 14 */	add r6, r6, r24
/* 814F5860 | 7C E7 BA 14 */	add r7, r7, r23
/* 814F5864 | 7C 63 BA 14 */	add r3, r3, r23
/* 814F5868 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F586C:
/* 814F586C | 7C 05 50 00 */	cmpw r5, r10
/* 814F5870 | 41 80 FC 94 */	blt .L_814F5504
/* 814F5874 | BA 21 00 14 */	lmw r17, 0x14(r1)
/* 814F5878 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814F587C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F54B8

# .text:0xB438 | 0x814F5880 | size: 0x1C0
.fn TMCJPEG_814F5880, local
/* 814F5880 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F5884 | 39 63 18 5C */	addi r11, r3, 0x185c
/* 814F5888 | 39 83 19 5C */	addi r12, r3, 0x195c
/* 814F588C | BE 41 00 08 */	stmw r18, 0x8(r1)
/* 814F5890 | 3B E3 19 9C */	addi r31, r3, 0x199c
/* 814F5894 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F5898 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F589C | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F58A0 | 7C 00 20 40 */	cmplw r0, r4
/* 814F58A4 | 81 47 00 48 */	lwz r10, 0x48(r7)
/* 814F58A8 | 54 DB F8 7C */	rlwinm r27, r6, 31, 1, 30
/* 814F58AC | 40 82 00 0C */	bne .L_814F58B8
/* 814F58B0 | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F58B4 | 48 00 00 10 */	b .L_814F58C4
.L_814F58B8:
/* 814F58B8 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F58BC | 38 60 00 20 */	li r3, 0x20
/* 814F58C0 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F58C4:
/* 814F58C4 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F58C8 | 7C 00 28 40 */	cmplw r0, r5
/* 814F58CC | 40 82 00 0C */	bne .L_814F58D8
/* 814F58D0 | 88 67 00 17 */	lbz r3, 0x17(r7)
/* 814F58D4 | 48 00 00 10 */	b .L_814F58E4
.L_814F58D8:
/* 814F58D8 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F58DC | 38 60 00 08 */	li r3, 0x8
/* 814F58E0 | 7C 63 03 D6 */	divw r3, r3, r0
.L_814F58E4:
/* 814F58E4 | 7F A4 32 14 */	add r29, r4, r6
/* 814F58E8 | 20 06 00 20 */	subfic r0, r6, 0x20
/* 814F58EC | 7F 85 1A 14 */	add r28, r5, r3
/* 814F58F0 | 7C 06 16 70 */	srawi r6, r0, 2
/* 814F58F4 | 7E A4 E8 50 */	subf r21, r4, r29
/* 814F58F8 | 48 00 01 34 */	b .L_814F5A2C
.L_814F58FC:
/* 814F58FC | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F5900 | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F5904 | 7D 03 D9 D6 */	mullw r8, r3, r27
/* 814F5908 | 7C 9E 23 78 */	mr r30, r4
/* 814F590C | 7C EA 3A 14 */	add r7, r10, r7
/* 814F5910 | 7E A9 03 A6 */	mtctr r21
/* 814F5914 | 7C 04 E8 00 */	cmpw r4, r29
/* 814F5918 | 40 80 01 04 */	bge .L_814F5A1C
.L_814F591C:
/* 814F591C | 57 C9 07 BF */	clrlwi. r9, r30, 30
/* 814F5920 | 40 82 00 40 */	bne .L_814F5960
/* 814F5924 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814F5928 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F592C | 8A 4C 00 00 */	lbz r18, 0x0(r12)
/* 814F5930 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F5934 | 7C 74 07 74 */	extsb r20, r3
/* 814F5938 | 1C 74 01 67 */	mulli r3, r20, 0x167
/* 814F593C | 7E 53 07 74 */	extsb r19, r18
/* 814F5940 | 7C 7A 46 70 */	srawi r26, r3, 8
/* 814F5944 | 1E 53 00 58 */	mulli r18, r19, 0x58
/* 814F5948 | 1C 74 00 B7 */	mulli r3, r20, 0xb7
/* 814F594C | 7C 72 1A 14 */	add r3, r18, r3
/* 814F5950 | 7E 43 00 D0 */	neg r18, r3
/* 814F5954 | 1C 73 01 C6 */	mulli r3, r19, 0x1c6
/* 814F5958 | 7E 59 46 70 */	srawi r25, r18, 8
/* 814F595C | 7C 78 46 70 */	srawi r24, r3, 8
.L_814F5960:
/* 814F5960 | 8A 4B 00 00 */	lbz r18, 0x0(r11)
/* 814F5964 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F5968 | 7C 72 D2 14 */	add r3, r18, r26
/* 814F596C | 7E D2 C2 14 */	add r22, r18, r24
/* 814F5970 | 7E F2 CA 14 */	add r23, r18, r25
/* 814F5974 | 7E D2 1B 78 */	or r18, r22, r3
/* 814F5978 | 7E 52 BB 78 */	or r18, r18, r23
/* 814F597C | 7E 52 46 71 */	srawi. r18, r18, 8
/* 814F5980 | 41 82 00 4C */	beq .L_814F59CC
/* 814F5984 | 2C 16 00 FF */	cmpwi r22, 0xff
/* 814F5988 | 40 81 00 0C */	ble .L_814F5994
/* 814F598C | 3A C0 00 FF */	li r22, 0xff
/* 814F5990 | 48 00 00 0C */	b .L_814F599C
.L_814F5994:
/* 814F5994 | 7E D2 FE 70 */	srawi r18, r22, 31
/* 814F5998 | 7E D6 90 78 */	andc r22, r22, r18
.L_814F599C:
/* 814F599C | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F59A0 | 40 81 00 0C */	ble .L_814F59AC
/* 814F59A4 | 3A E0 00 FF */	li r23, 0xff
/* 814F59A8 | 48 00 00 0C */	b .L_814F59B4
.L_814F59AC:
/* 814F59AC | 7E F2 FE 70 */	srawi r18, r23, 31
/* 814F59B0 | 7E F7 90 78 */	andc r23, r23, r18
.L_814F59B4:
/* 814F59B4 | 2C 03 00 FF */	cmpwi r3, 0xff
/* 814F59B8 | 40 81 00 0C */	ble .L_814F59C4
/* 814F59BC | 38 60 00 FF */	li r3, 0xff
/* 814F59C0 | 48 00 00 0C */	b .L_814F59CC
.L_814F59C4:
/* 814F59C4 | 7C 72 FE 70 */	srawi r18, r3, 31
/* 814F59C8 | 7C 63 90 78 */	andc r3, r3, r18
.L_814F59CC:
/* 814F59CC | 7F D2 16 70 */	srawi r18, r30, 2
/* 814F59D0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814F59D4 | 56 52 08 3C */	slwi r18, r18, 1
/* 814F59D8 | 56 F4 44 2E */	clrlslwi r20, r23, 24, 8
/* 814F59DC | 7E 52 42 14 */	add r18, r18, r8
/* 814F59E0 | 56 D7 06 3E */	clrlwi r23, r22, 24
/* 814F59E4 | 56 53 20 36 */	slwi r19, r18, 4
/* 814F59E8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814F59EC | 3A D2 00 01 */	addi r22, r18, 0x1
/* 814F59F0 | 7E F4 BA 14 */	add r23, r20, r23
/* 814F59F4 | 7E 69 9A 14 */	add r19, r9, r19
/* 814F59F8 | 3A 43 FF 00 */	subi r18, r3, 0x100
/* 814F59FC | 56 D6 20 36 */	slwi r22, r22, 4
/* 814F5A00 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F5A04 | 56 73 08 3C */	slwi r19, r19, 1
/* 814F5A08 | 7C 69 B2 14 */	add r3, r9, r22
/* 814F5A0C | 7E 47 9B 2E */	sthx r18, r7, r19
/* 814F5A10 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F5A14 | 7E E7 1B 2E */	sthx r23, r7, r3
/* 814F5A18 | 42 00 FF 04 */	bdnz .L_814F591C
.L_814F5A1C:
/* 814F5A1C | 7D 6B 02 14 */	add r11, r11, r0
/* 814F5A20 | 7D 8C 32 14 */	add r12, r12, r6
/* 814F5A24 | 7F FF 32 14 */	add r31, r31, r6
/* 814F5A28 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F5A2C:
/* 814F5A2C | 7C 05 E0 00 */	cmpw r5, r28
/* 814F5A30 | 41 80 FE CC */	blt .L_814F58FC
/* 814F5A34 | BA 41 00 08 */	lmw r18, 0x8(r1)
/* 814F5A38 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F5A3C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F5880

# .text:0xB5F8 | 0x814F5A40 | size: 0x250
.fn TMCJPEG_814F5A40, local
/* 814F5A40 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F5A44 | 38 C0 00 10 */	li r6, 0x10
/* 814F5A48 | 38 00 00 08 */	li r0, 0x8
/* 814F5A4C | 39 43 18 5C */	addi r10, r3, 0x185c
/* 814F5A50 | BE 61 00 0C */	stmw r19, 0xc(r1)
/* 814F5A54 | 39 63 18 DC */	addi r11, r3, 0x18dc
/* 814F5A58 | 39 83 19 1C */	addi r12, r3, 0x191c
/* 814F5A5C | 81 23 19 E4 */	lwz r9, 0x19e4(r3)
/* 814F5A60 | 89 09 00 20 */	lbz r8, 0x20(r9)
/* 814F5A64 | 80 E9 00 2C */	lwz r7, 0x2c(r9)
/* 814F5A68 | 7E 66 43 D6 */	divw r19, r6, r8
/* 814F5A6C | 81 29 00 48 */	lwz r9, 0x48(r9)
/* 814F5A70 | 54 FC F8 7C */	rlwinm r28, r7, 31, 1, 30
/* 814F5A74 | 7C C0 43 D6 */	divw r6, r0, r8
/* 814F5A78 | 20 13 00 10 */	subfic r0, r19, 0x10
/* 814F5A7C | 7F C4 9A 14 */	add r30, r4, r19
/* 814F5A80 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814F5A84 | 7F A5 32 14 */	add r29, r5, r6
/* 814F5A88 | 48 00 01 F4 */	b .L_814F5C7C
.L_814F5A8C:
/* 814F5A8C | 7C A6 16 70 */	srawi r6, r5, 2
/* 814F5A90 | 39 1E 00 01 */	addi r8, r30, 0x1
/* 814F5A94 | 7D 04 40 50 */	subf r8, r4, r8
/* 814F5A98 | 54 B3 1E F8 */	clrlslwi r19, r5, 30, 3
/* 814F5A9C | 7C E6 E1 D6 */	mullw r7, r6, r28
/* 814F5AA0 | 7C 9F 23 78 */	mr r31, r4
/* 814F5AA4 | 55 08 F8 7E */	srwi r8, r8, 1
/* 814F5AA8 | 7C C9 9A 14 */	add r6, r9, r19
/* 814F5AAC | 7D 09 03 A6 */	mtctr r8
/* 814F5AB0 | 7C 04 F0 00 */	cmpw r4, r30
/* 814F5AB4 | 40 80 01 B8 */	bge .L_814F5C6C
.L_814F5AB8:
/* 814F5AB8 | 8A 6B 00 00 */	lbz r19, 0x0(r11)
/* 814F5ABC | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F5AC0 | 89 0C 00 00 */	lbz r8, 0x0(r12)
/* 814F5AC4 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F5AC8 | 7E 76 07 74 */	extsb r22, r19
/* 814F5ACC | 8A 6A 00 00 */	lbz r19, 0x0(r10)
/* 814F5AD0 | 7D 14 07 74 */	extsb r20, r8
/* 814F5AD4 | 1D 14 01 67 */	mulli r8, r20, 0x167
/* 814F5AD8 | 7D 1B 46 70 */	srawi r27, r8, 8
/* 814F5ADC | 1E B6 00 58 */	mulli r21, r22, 0x58
/* 814F5AE0 | 7D 13 DA 14 */	add r8, r19, r27
/* 814F5AE4 | 1E 94 00 B7 */	mulli r20, r20, 0xb7
/* 814F5AE8 | 7E 95 A2 14 */	add r20, r21, r20
/* 814F5AEC | 7E 94 00 D0 */	neg r20, r20
/* 814F5AF0 | 7E 9A 46 70 */	srawi r26, r20, 8
/* 814F5AF4 | 1E 96 01 C6 */	mulli r20, r22, 0x1c6
/* 814F5AF8 | 7F 13 D2 14 */	add r24, r19, r26
/* 814F5AFC | 7E 99 46 70 */	srawi r25, r20, 8
/* 814F5B00 | 7E F3 CA 14 */	add r23, r19, r25
/* 814F5B04 | 7E F3 43 78 */	or r19, r23, r8
/* 814F5B08 | 7E 73 C3 78 */	or r19, r19, r24
/* 814F5B0C | 7E 73 46 71 */	srawi. r19, r19, 8
/* 814F5B10 | 41 82 00 4C */	beq .L_814F5B5C
/* 814F5B14 | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F5B18 | 40 81 00 0C */	ble .L_814F5B24
/* 814F5B1C | 3A E0 00 FF */	li r23, 0xff
/* 814F5B20 | 48 00 00 0C */	b .L_814F5B2C
.L_814F5B24:
/* 814F5B24 | 7E F3 FE 70 */	srawi r19, r23, 31
/* 814F5B28 | 7E F7 98 78 */	andc r23, r23, r19
.L_814F5B2C:
/* 814F5B2C | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F5B30 | 40 81 00 0C */	ble .L_814F5B3C
/* 814F5B34 | 3B 00 00 FF */	li r24, 0xff
/* 814F5B38 | 48 00 00 0C */	b .L_814F5B44
.L_814F5B3C:
/* 814F5B3C | 7F 13 FE 70 */	srawi r19, r24, 31
/* 814F5B40 | 7F 18 98 78 */	andc r24, r24, r19
.L_814F5B44:
/* 814F5B44 | 2C 08 00 FF */	cmpwi r8, 0xff
/* 814F5B48 | 40 81 00 0C */	ble .L_814F5B54
/* 814F5B4C | 39 00 00 FF */	li r8, 0xff
/* 814F5B50 | 48 00 00 0C */	b .L_814F5B5C
.L_814F5B54:
/* 814F5B54 | 7D 13 FE 70 */	srawi r19, r8, 31
/* 814F5B58 | 7D 08 98 78 */	andc r8, r8, r19
.L_814F5B5C:
/* 814F5B5C | 7F F4 16 70 */	srawi r20, r31, 2
/* 814F5B60 | 55 13 06 3E */	clrlwi r19, r8, 24
/* 814F5B64 | 56 94 08 3C */	slwi r20, r20, 1
/* 814F5B68 | 57 E8 07 BE */	clrlwi r8, r31, 30
/* 814F5B6C | 7E 94 3A 14 */	add r20, r20, r7
/* 814F5B70 | 57 16 44 2E */	clrlslwi r22, r24, 24, 8
/* 814F5B74 | 56 95 20 36 */	slwi r21, r20, 4
/* 814F5B78 | 56 F7 06 3E */	clrlwi r23, r23, 24
/* 814F5B7C | 7E A8 AA 14 */	add r21, r8, r21
/* 814F5B80 | 3B 14 00 01 */	addi r24, r20, 0x1
/* 814F5B84 | 3E 73 00 01 */	addis r19, r19, 0x1
/* 814F5B88 | 7E F6 BA 14 */	add r23, r22, r23
/* 814F5B8C | 57 18 20 36 */	slwi r24, r24, 4
/* 814F5B90 | 56 B5 08 3C */	slwi r21, r21, 1
/* 814F5B94 | 3A 93 FF 00 */	subi r20, r19, 0x100
/* 814F5B98 | 7D 08 C2 14 */	add r8, r8, r24
/* 814F5B9C | 7E 86 AB 2E */	sthx r20, r6, r21
/* 814F5BA0 | 55 08 08 3C */	slwi r8, r8, 1
/* 814F5BA4 | 7E E6 43 2E */	sthx r23, r6, r8
/* 814F5BA8 | 8A EA 00 01 */	lbz r23, 0x1(r10)
/* 814F5BAC | 39 4A 00 02 */	addi r10, r10, 0x2
/* 814F5BB0 | 7E 97 DA 14 */	add r20, r23, r27
/* 814F5BB4 | 7D 17 CA 14 */	add r8, r23, r25
/* 814F5BB8 | 7E 77 D2 14 */	add r19, r23, r26
/* 814F5BBC | 7D 17 A3 78 */	or r23, r8, r20
/* 814F5BC0 | 7E F7 9B 78 */	or r23, r23, r19
/* 814F5BC4 | 7E F7 46 71 */	srawi. r23, r23, 8
/* 814F5BC8 | 41 82 00 4C */	beq .L_814F5C14
/* 814F5BCC | 2C 08 00 FF */	cmpwi r8, 0xff
/* 814F5BD0 | 40 81 00 0C */	ble .L_814F5BDC
/* 814F5BD4 | 39 00 00 FF */	li r8, 0xff
/* 814F5BD8 | 48 00 00 0C */	b .L_814F5BE4
.L_814F5BDC:
/* 814F5BDC | 7D 17 FE 70 */	srawi r23, r8, 31
/* 814F5BE0 | 7D 08 B8 78 */	andc r8, r8, r23
.L_814F5BE4:
/* 814F5BE4 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F5BE8 | 40 81 00 0C */	ble .L_814F5BF4
/* 814F5BEC | 3A 60 00 FF */	li r19, 0xff
/* 814F5BF0 | 48 00 00 0C */	b .L_814F5BFC
.L_814F5BF4:
/* 814F5BF4 | 7E 77 FE 70 */	srawi r23, r19, 31
/* 814F5BF8 | 7E 73 B8 78 */	andc r19, r19, r23
.L_814F5BFC:
/* 814F5BFC | 2C 14 00 FF */	cmpwi r20, 0xff
/* 814F5C00 | 40 81 00 0C */	ble .L_814F5C0C
/* 814F5C04 | 3A 80 00 FF */	li r20, 0xff
/* 814F5C08 | 48 00 00 0C */	b .L_814F5C14
.L_814F5C0C:
/* 814F5C0C | 7E 97 FE 70 */	srawi r23, r20, 31
/* 814F5C10 | 7E 94 B8 78 */	andc r20, r20, r23
.L_814F5C14:
/* 814F5C14 | 3B 7F 00 01 */	addi r27, r31, 0x1
/* 814F5C18 | 56 97 06 3E */	clrlwi r23, r20, 24
/* 814F5C1C | 7F 79 16 70 */	srawi r25, r27, 2
/* 814F5C20 | 56 78 44 2E */	clrlslwi r24, r19, 24, 8
/* 814F5C24 | 57 33 08 3C */	slwi r19, r25, 1
/* 814F5C28 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 814F5C2C | 3F 37 00 01 */	addis r25, r23, 0x1
/* 814F5C30 | 55 17 06 3E */	clrlwi r23, r8, 24
/* 814F5C34 | 7F 53 3A 14 */	add r26, r19, r7
/* 814F5C38 | 57 73 07 BE */	clrlwi r19, r27, 30
/* 814F5C3C | 3B 79 FF 00 */	subi r27, r25, 0x100
/* 814F5C40 | 7E F8 BA 14 */	add r23, r24, r23
/* 814F5C44 | 57 59 20 36 */	slwi r25, r26, 4
/* 814F5C48 | 39 1A 00 01 */	addi r8, r26, 0x1
/* 814F5C4C | 7F 33 CA 14 */	add r25, r19, r25
/* 814F5C50 | 57 38 08 3C */	slwi r24, r25, 1
/* 814F5C54 | 55 08 20 36 */	slwi r8, r8, 4
/* 814F5C58 | 7D 13 42 14 */	add r8, r19, r8
/* 814F5C5C | 7F 66 C3 2E */	sthx r27, r6, r24
/* 814F5C60 | 55 08 08 3C */	slwi r8, r8, 1
/* 814F5C64 | 7E E6 43 2E */	sthx r23, r6, r8
/* 814F5C68 | 42 00 FE 50 */	bdnz .L_814F5AB8
.L_814F5C6C:
/* 814F5C6C | 7D 4A 02 14 */	add r10, r10, r0
/* 814F5C70 | 7D 6B 1A 14 */	add r11, r11, r3
/* 814F5C74 | 7D 8C 1A 14 */	add r12, r12, r3
/* 814F5C78 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F5C7C:
/* 814F5C7C | 7C 05 E8 00 */	cmpw r5, r29
/* 814F5C80 | 41 80 FE 0C */	blt .L_814F5A8C
/* 814F5C84 | BA 61 00 0C */	lmw r19, 0xc(r1)
/* 814F5C88 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F5C8C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F5A40

# .text:0xB848 | 0x814F5C90 | size: 0x1C4
.fn TMCJPEG_814F5C90, local
/* 814F5C90 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F5C94 | 39 43 18 5C */	addi r10, r3, 0x185c
/* 814F5C98 | 39 63 18 DC */	addi r11, r3, 0x18dc
/* 814F5C9C | 39 83 19 1C */	addi r12, r3, 0x191c
/* 814F5CA0 | BE 41 00 08 */	stmw r18, 0x8(r1)
/* 814F5CA4 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F5CA8 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F5CAC | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F5CB0 | 7C 00 20 40 */	cmplw r0, r4
/* 814F5CB4 | 81 27 00 48 */	lwz r9, 0x48(r7)
/* 814F5CB8 | 54 DC F8 7C */	rlwinm r28, r6, 31, 1, 30
/* 814F5CBC | 40 82 00 0C */	bne .L_814F5CC8
/* 814F5CC0 | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F5CC4 | 48 00 00 10 */	b .L_814F5CD4
.L_814F5CC8:
/* 814F5CC8 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F5CCC | 38 60 00 10 */	li r3, 0x10
/* 814F5CD0 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F5CD4:
/* 814F5CD4 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F5CD8 | 7C 00 28 40 */	cmplw r0, r5
/* 814F5CDC | 40 82 00 0C */	bne .L_814F5CE8
/* 814F5CE0 | 88 67 00 17 */	lbz r3, 0x17(r7)
/* 814F5CE4 | 48 00 00 10 */	b .L_814F5CF4
.L_814F5CE8:
/* 814F5CE8 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F5CEC | 38 60 00 08 */	li r3, 0x8
/* 814F5CF0 | 7C 63 03 D6 */	divw r3, r3, r0
.L_814F5CF4:
/* 814F5CF4 | 7F C4 32 14 */	add r30, r4, r6
/* 814F5CF8 | 20 06 00 10 */	subfic r0, r6, 0x10
/* 814F5CFC | 7F A5 1A 14 */	add r29, r5, r3
/* 814F5D00 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814F5D04 | 7E A4 F0 50 */	subf r21, r4, r30
/* 814F5D08 | 48 00 01 38 */	b .L_814F5E40
.L_814F5D0C:
/* 814F5D0C | 7C A6 16 70 */	srawi r6, r5, 2
/* 814F5D10 | 54 A8 1E F8 */	clrlslwi r8, r5, 30, 3
/* 814F5D14 | 7C E6 E1 D6 */	mullw r7, r6, r28
/* 814F5D18 | 7C 9F 23 78 */	mr r31, r4
/* 814F5D1C | 7C C9 42 14 */	add r6, r9, r8
/* 814F5D20 | 7E A9 03 A6 */	mtctr r21
/* 814F5D24 | 7C 04 F0 00 */	cmpw r4, r30
/* 814F5D28 | 40 80 01 08 */	bge .L_814F5E30
.L_814F5D2C:
/* 814F5D2C | 57 E8 07 FF */	clrlwi. r8, r31, 31
/* 814F5D30 | 40 82 00 40 */	bne .L_814F5D70
/* 814F5D34 | 89 0C 00 00 */	lbz r8, 0x0(r12)
/* 814F5D38 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F5D3C | 8A 4B 00 00 */	lbz r18, 0x0(r11)
/* 814F5D40 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F5D44 | 7D 14 07 74 */	extsb r20, r8
/* 814F5D48 | 1D 14 01 67 */	mulli r8, r20, 0x167
/* 814F5D4C | 7E 53 07 74 */	extsb r19, r18
/* 814F5D50 | 7D 1B 46 70 */	srawi r27, r8, 8
/* 814F5D54 | 1E 53 00 58 */	mulli r18, r19, 0x58
/* 814F5D58 | 1D 14 00 B7 */	mulli r8, r20, 0xb7
/* 814F5D5C | 7D 12 42 14 */	add r8, r18, r8
/* 814F5D60 | 7E 48 00 D0 */	neg r18, r8
/* 814F5D64 | 1D 13 01 C6 */	mulli r8, r19, 0x1c6
/* 814F5D68 | 7E 5A 46 70 */	srawi r26, r18, 8
/* 814F5D6C | 7D 19 46 70 */	srawi r25, r8, 8
.L_814F5D70:
/* 814F5D70 | 89 0A 00 00 */	lbz r8, 0x0(r10)
/* 814F5D74 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F5D78 | 7F 08 DA 14 */	add r24, r8, r27
/* 814F5D7C | 7E C8 CA 14 */	add r22, r8, r25
/* 814F5D80 | 7E E8 D2 14 */	add r23, r8, r26
/* 814F5D84 | 7E C8 C3 78 */	or r8, r22, r24
/* 814F5D88 | 7D 08 BB 78 */	or r8, r8, r23
/* 814F5D8C | 7D 08 46 71 */	srawi. r8, r8, 8
/* 814F5D90 | 41 82 00 4C */	beq .L_814F5DDC
/* 814F5D94 | 2C 16 00 FF */	cmpwi r22, 0xff
/* 814F5D98 | 40 81 00 0C */	ble .L_814F5DA4
/* 814F5D9C | 3A C0 00 FF */	li r22, 0xff
/* 814F5DA0 | 48 00 00 0C */	b .L_814F5DAC
.L_814F5DA4:
/* 814F5DA4 | 7E C8 FE 70 */	srawi r8, r22, 31
/* 814F5DA8 | 7E D6 40 78 */	andc r22, r22, r8
.L_814F5DAC:
/* 814F5DAC | 2C 17 00 FF */	cmpwi r23, 0xff
/* 814F5DB0 | 40 81 00 0C */	ble .L_814F5DBC
/* 814F5DB4 | 3A E0 00 FF */	li r23, 0xff
/* 814F5DB8 | 48 00 00 0C */	b .L_814F5DC4
.L_814F5DBC:
/* 814F5DBC | 7E E8 FE 70 */	srawi r8, r23, 31
/* 814F5DC0 | 7E F7 40 78 */	andc r23, r23, r8
.L_814F5DC4:
/* 814F5DC4 | 2C 18 00 FF */	cmpwi r24, 0xff
/* 814F5DC8 | 40 81 00 0C */	ble .L_814F5DD4
/* 814F5DCC | 3B 00 00 FF */	li r24, 0xff
/* 814F5DD0 | 48 00 00 0C */	b .L_814F5DDC
.L_814F5DD4:
/* 814F5DD4 | 7F 08 FE 70 */	srawi r8, r24, 31
/* 814F5DD8 | 7F 18 40 78 */	andc r24, r24, r8
.L_814F5DDC:
/* 814F5DDC | 7F F2 16 70 */	srawi r18, r31, 2
/* 814F5DE0 | 57 E8 07 BE */	clrlwi r8, r31, 30
/* 814F5DE4 | 56 53 08 3C */	slwi r19, r18, 1
/* 814F5DE8 | 56 D6 06 3E */	clrlwi r22, r22, 24
/* 814F5DEC | 7E 73 3A 14 */	add r19, r19, r7
/* 814F5DF0 | 57 12 06 3E */	clrlwi r18, r24, 24
/* 814F5DF4 | 56 74 20 36 */	slwi r20, r19, 4
/* 814F5DF8 | 56 F8 44 2E */	clrlslwi r24, r23, 24, 8
/* 814F5DFC | 7E 88 A2 14 */	add r20, r8, r20
/* 814F5E00 | 3A F3 00 01 */	addi r23, r19, 0x1
/* 814F5E04 | 3E 52 00 01 */	addis r18, r18, 0x1
/* 814F5E08 | 7E D8 B2 14 */	add r22, r24, r22
/* 814F5E0C | 56 F7 20 36 */	slwi r23, r23, 4
/* 814F5E10 | 56 94 08 3C */	slwi r20, r20, 1
/* 814F5E14 | 3A 72 FF 00 */	subi r19, r18, 0x100
/* 814F5E18 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F5E1C | 7D 08 BA 14 */	add r8, r8, r23
/* 814F5E20 | 7E 66 A3 2E */	sthx r19, r6, r20
/* 814F5E24 | 55 08 08 3C */	slwi r8, r8, 1
/* 814F5E28 | 7E C6 43 2E */	sthx r22, r6, r8
/* 814F5E2C | 42 00 FF 00 */	bdnz .L_814F5D2C
.L_814F5E30:
/* 814F5E30 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F5E34 | 7D 6B 1A 14 */	add r11, r11, r3
/* 814F5E38 | 7D 8C 1A 14 */	add r12, r12, r3
/* 814F5E3C | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F5E40:
/* 814F5E40 | 7C 05 E8 00 */	cmpw r5, r29
/* 814F5E44 | 41 80 FE C8 */	blt .L_814F5D0C
/* 814F5E48 | BA 41 00 08 */	lmw r18, 0x8(r1)
/* 814F5E4C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F5E50 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F5C90

# .text:0xBA0C | 0x814F5E54 | size: 0x264
.fn TMCJPEG_814F5E54, local
/* 814F5E54 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F5E58 | 38 C0 00 10 */	li r6, 0x10
/* 814F5E5C | 39 83 18 5C */	addi r12, r3, 0x185c
/* 814F5E60 | BE 41 00 08 */	stmw r18, 0x8(r1)
/* 814F5E64 | 3B E3 19 5C */	addi r31, r3, 0x195c
/* 814F5E68 | 3B C3 19 9C */	addi r30, r3, 0x199c
/* 814F5E6C | 81 23 19 E4 */	lwz r9, 0x19e4(r3)
/* 814F5E70 | 88 09 00 20 */	lbz r0, 0x20(r9)
/* 814F5E74 | 80 E9 00 2C */	lwz r7, 0x2c(r9)
/* 814F5E78 | 7D 06 03 D6 */	divw r8, r6, r0
/* 814F5E7C | 81 69 00 48 */	lwz r11, 0x48(r9)
/* 814F5E80 | 54 FA F8 7C */	rlwinm r26, r7, 31, 1, 30
/* 814F5E84 | 20 08 00 10 */	subfic r0, r8, 0x10
/* 814F5E88 | 7C 06 0E 70 */	srawi r6, r0, 1
/* 814F5E8C | 38 68 00 01 */	addi r3, r8, 0x1
/* 814F5E90 | 7F 84 42 14 */	add r28, r4, r8
/* 814F5E94 | 7F 65 42 14 */	add r27, r5, r8
/* 814F5E98 | 7C 67 0E 70 */	srawi r7, r3, 1
/* 814F5E9C | 48 00 02 08 */	b .L_814F60A4
.L_814F5EA0:
/* 814F5EA0 | 7C A8 16 70 */	srawi r8, r5, 2
/* 814F5EA4 | 38 7C 00 01 */	addi r3, r28, 0x1
/* 814F5EA8 | 7C 64 18 50 */	subf r3, r4, r3
/* 814F5EAC | 54 AA 1E F8 */	clrlslwi r10, r5, 30, 3
/* 814F5EB0 | 7D 28 D1 D6 */	mullw r9, r8, r26
/* 814F5EB4 | 7C 9D 23 78 */	mr r29, r4
/* 814F5EB8 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814F5EBC | 7D 0B 52 14 */	add r8, r11, r10
/* 814F5EC0 | 7C 69 03 A6 */	mtctr r3
/* 814F5EC4 | 7C 04 E0 00 */	cmpw r4, r28
/* 814F5EC8 | 40 80 01 B8 */	bge .L_814F6080
.L_814F5ECC:
/* 814F5ECC | 89 5F 00 00 */	lbz r10, 0x0(r31)
/* 814F5ED0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F5ED4 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 814F5ED8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F5EDC | 7D 54 07 74 */	extsb r20, r10
/* 814F5EE0 | 89 4C 00 00 */	lbz r10, 0x0(r12)
/* 814F5EE4 | 7C 72 07 74 */	extsb r18, r3
/* 814F5EE8 | 1C 72 01 67 */	mulli r3, r18, 0x167
/* 814F5EEC | 7C 79 46 70 */	srawi r25, r3, 8
/* 814F5EF0 | 1E 74 00 58 */	mulli r19, r20, 0x58
/* 814F5EF4 | 7C 6A CA 14 */	add r3, r10, r25
/* 814F5EF8 | 1E 52 00 B7 */	mulli r18, r18, 0xb7
/* 814F5EFC | 7E 53 92 14 */	add r18, r19, r18
/* 814F5F00 | 7E 52 00 D0 */	neg r18, r18
/* 814F5F04 | 7E 58 46 70 */	srawi r24, r18, 8
/* 814F5F08 | 1E 54 01 C6 */	mulli r18, r20, 0x1c6
/* 814F5F0C | 7E CA C2 14 */	add r22, r10, r24
/* 814F5F10 | 7E 57 46 70 */	srawi r23, r18, 8
/* 814F5F14 | 7E AA BA 14 */	add r21, r10, r23
/* 814F5F18 | 7E AA 1B 78 */	or r10, r21, r3
/* 814F5F1C | 7D 4A B3 78 */	or r10, r10, r22
/* 814F5F20 | 7D 4A 46 71 */	srawi. r10, r10, 8
/* 814F5F24 | 41 82 00 4C */	beq .L_814F5F70
/* 814F5F28 | 2C 15 00 FF */	cmpwi r21, 0xff
/* 814F5F2C | 40 81 00 0C */	ble .L_814F5F38
/* 814F5F30 | 3A A0 00 FF */	li r21, 0xff
/* 814F5F34 | 48 00 00 0C */	b .L_814F5F40
.L_814F5F38:
/* 814F5F38 | 7E AA FE 70 */	srawi r10, r21, 31
/* 814F5F3C | 7E B5 50 78 */	andc r21, r21, r10
.L_814F5F40:
/* 814F5F40 | 2C 16 00 FF */	cmpwi r22, 0xff
/* 814F5F44 | 40 81 00 0C */	ble .L_814F5F50
/* 814F5F48 | 3A C0 00 FF */	li r22, 0xff
/* 814F5F4C | 48 00 00 0C */	b .L_814F5F58
.L_814F5F50:
/* 814F5F50 | 7E CA FE 70 */	srawi r10, r22, 31
/* 814F5F54 | 7E D6 50 78 */	andc r22, r22, r10
.L_814F5F58:
/* 814F5F58 | 2C 03 00 FF */	cmpwi r3, 0xff
/* 814F5F5C | 40 81 00 0C */	ble .L_814F5F68
/* 814F5F60 | 38 60 00 FF */	li r3, 0xff
/* 814F5F64 | 48 00 00 0C */	b .L_814F5F70
.L_814F5F68:
/* 814F5F68 | 7C 6A FE 70 */	srawi r10, r3, 31
/* 814F5F6C | 7C 63 50 78 */	andc r3, r3, r10
.L_814F5F70:
/* 814F5F70 | 7F AA 16 70 */	srawi r10, r29, 2
/* 814F5F74 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814F5F78 | 55 52 08 3C */	slwi r18, r10, 1
/* 814F5F7C | 56 D4 44 2E */	clrlslwi r20, r22, 24, 8
/* 814F5F80 | 7E 52 4A 14 */	add r18, r18, r9
/* 814F5F84 | 57 AA 07 BE */	clrlwi r10, r29, 30
/* 814F5F88 | 56 53 20 36 */	slwi r19, r18, 4
/* 814F5F8C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814F5F90 | 3A D2 00 01 */	addi r22, r18, 0x1
/* 814F5F94 | 56 B5 06 3E */	clrlwi r21, r21, 24
/* 814F5F98 | 7E 6A 9A 14 */	add r19, r10, r19
/* 814F5F9C | 3A 43 FF 00 */	subi r18, r3, 0x100
/* 814F5FA0 | 56 D6 20 36 */	slwi r22, r22, 4
/* 814F5FA4 | 7C 6A B2 14 */	add r3, r10, r22
/* 814F5FA8 | 56 73 08 3C */	slwi r19, r19, 1
/* 814F5FAC | 7E 48 9B 2E */	sthx r18, r8, r19
/* 814F5FB0 | 7D 54 AA 14 */	add r10, r20, r21
/* 814F5FB4 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F5FB8 | 7D 48 1B 2E */	sthx r10, r8, r3
/* 814F5FBC | 89 4C 00 01 */	lbz r10, 0x1(r12)
/* 814F5FC0 | 39 8C 00 02 */	addi r12, r12, 0x2
/* 814F5FC4 | 7E 6A CA 14 */	add r19, r10, r25
/* 814F5FC8 | 7C 6A BA 14 */	add r3, r10, r23
/* 814F5FCC | 7E 4A C2 14 */	add r18, r10, r24
/* 814F5FD0 | 7C 6A 9B 78 */	or r10, r3, r19
/* 814F5FD4 | 7D 4A 93 78 */	or r10, r10, r18
/* 814F5FD8 | 7D 4A 46 71 */	srawi. r10, r10, 8
/* 814F5FDC | 41 82 00 4C */	beq .L_814F6028
/* 814F5FE0 | 2C 03 00 FF */	cmpwi r3, 0xff
/* 814F5FE4 | 40 81 00 0C */	ble .L_814F5FF0
/* 814F5FE8 | 38 60 00 FF */	li r3, 0xff
/* 814F5FEC | 48 00 00 0C */	b .L_814F5FF8
.L_814F5FF0:
/* 814F5FF0 | 7C 6A FE 70 */	srawi r10, r3, 31
/* 814F5FF4 | 7C 63 50 78 */	andc r3, r3, r10
.L_814F5FF8:
/* 814F5FF8 | 2C 12 00 FF */	cmpwi r18, 0xff
/* 814F5FFC | 40 81 00 0C */	ble .L_814F6008
/* 814F6000 | 3A 40 00 FF */	li r18, 0xff
/* 814F6004 | 48 00 00 0C */	b .L_814F6010
.L_814F6008:
/* 814F6008 | 7E 4A FE 70 */	srawi r10, r18, 31
/* 814F600C | 7E 52 50 78 */	andc r18, r18, r10
.L_814F6010:
/* 814F6010 | 2C 13 00 FF */	cmpwi r19, 0xff
/* 814F6014 | 40 81 00 0C */	ble .L_814F6020
/* 814F6018 | 3A 60 00 FF */	li r19, 0xff
/* 814F601C | 48 00 00 0C */	b .L_814F6028
.L_814F6020:
/* 814F6020 | 7E 6A FE 70 */	srawi r10, r19, 31
/* 814F6024 | 7E 73 50 78 */	andc r19, r19, r10
.L_814F6028:
/* 814F6028 | 3B 1D 00 01 */	addi r24, r29, 0x1
/* 814F602C | 56 6A 06 3E */	clrlwi r10, r19, 24
/* 814F6030 | 7F 16 16 70 */	srawi r22, r24, 2
/* 814F6034 | 56 55 44 2E */	clrlslwi r21, r18, 24, 8
/* 814F6038 | 56 D2 08 3C */	slwi r18, r22, 1
/* 814F603C | 3B BD 00 02 */	addi r29, r29, 0x2
/* 814F6040 | 3E CA 00 01 */	addis r22, r10, 0x1
/* 814F6044 | 54 6A 06 3E */	clrlwi r10, r3, 24
/* 814F6048 | 7E F2 4A 14 */	add r23, r18, r9
/* 814F604C | 57 12 07 BE */	clrlwi r18, r24, 30
/* 814F6050 | 3B 16 FF 00 */	subi r24, r22, 0x100
/* 814F6054 | 7D 55 52 14 */	add r10, r21, r10
/* 814F6058 | 56 F6 20 36 */	slwi r22, r23, 4
/* 814F605C | 38 77 00 01 */	addi r3, r23, 0x1
/* 814F6060 | 7E D2 B2 14 */	add r22, r18, r22
/* 814F6064 | 56 D5 08 3C */	slwi r21, r22, 1
/* 814F6068 | 54 63 20 36 */	slwi r3, r3, 4
/* 814F606C | 7C 72 1A 14 */	add r3, r18, r3
/* 814F6070 | 7F 08 AB 2E */	sthx r24, r8, r21
/* 814F6074 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F6078 | 7D 48 1B 2E */	sthx r10, r8, r3
/* 814F607C | 42 00 FE 50 */	bdnz .L_814F5ECC
.L_814F6080:
/* 814F6080 | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 814F6084 | 7D 8C 02 14 */	add r12, r12, r0
/* 814F6088 | 41 82 00 10 */	beq .L_814F6098
/* 814F608C | 7F FF 32 14 */	add r31, r31, r6
/* 814F6090 | 7F DE 32 14 */	add r30, r30, r6
/* 814F6094 | 48 00 00 0C */	b .L_814F60A0
.L_814F6098:
/* 814F6098 | 7F E7 F8 50 */	subf r31, r7, r31
/* 814F609C | 7F C7 F0 50 */	subf r30, r7, r30
.L_814F60A0:
/* 814F60A0 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F60A4:
/* 814F60A4 | 7C 05 D8 00 */	cmpw r5, r27
/* 814F60A8 | 41 80 FD F8 */	blt .L_814F5EA0
/* 814F60AC | BA 41 00 08 */	lmw r18, 0x8(r1)
/* 814F60B0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F60B4 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F5E54

# .text:0xBC70 | 0x814F60B8 | size: 0x1E0
.fn TMCJPEG_814F60B8, local
/* 814F60B8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814F60BC | 39 83 18 5C */	addi r12, r3, 0x185c
/* 814F60C0 | BE 21 00 14 */	stmw r17, 0x14(r1)
/* 814F60C4 | 3B E3 19 5C */	addi r31, r3, 0x195c
/* 814F60C8 | 3B C3 19 9C */	addi r30, r3, 0x199c
/* 814F60CC | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F60D0 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F60D4 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F60D8 | 7C 00 20 40 */	cmplw r0, r4
/* 814F60DC | 81 67 00 48 */	lwz r11, 0x48(r7)
/* 814F60E0 | 54 DA F8 7C */	rlwinm r26, r6, 31, 1, 30
/* 814F60E4 | 40 82 00 0C */	bne .L_814F60F0
/* 814F60E8 | 89 07 00 16 */	lbz r8, 0x16(r7)
/* 814F60EC | 48 00 00 10 */	b .L_814F60FC
.L_814F60F0:
/* 814F60F0 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F60F4 | 38 60 00 10 */	li r3, 0x10
/* 814F60F8 | 7D 03 03 D6 */	divw r8, r3, r0
.L_814F60FC:
/* 814F60FC | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F6100 | 7C 00 28 40 */	cmplw r0, r5
/* 814F6104 | 40 82 00 0C */	bne .L_814F6110
/* 814F6108 | 88 E7 00 17 */	lbz r7, 0x17(r7)
/* 814F610C | 48 00 00 10 */	b .L_814F611C
.L_814F6110:
/* 814F6110 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F6114 | 38 60 00 10 */	li r3, 0x10
/* 814F6118 | 7C E3 03 D6 */	divw r7, r3, r0
.L_814F611C:
/* 814F611C | 20 08 00 10 */	subfic r0, r8, 0x10
/* 814F6120 | 7F 84 42 14 */	add r28, r4, r8
/* 814F6124 | 7C 06 0E 70 */	srawi r6, r0, 1
/* 814F6128 | 38 68 00 01 */	addi r3, r8, 0x1
/* 814F612C | 7F 65 3A 14 */	add r27, r5, r7
/* 814F6130 | 7E 84 E0 50 */	subf r20, r4, r28
/* 814F6134 | 7C 67 0E 70 */	srawi r7, r3, 1
/* 814F6138 | 48 00 01 4C */	b .L_814F6284
.L_814F613C:
/* 814F613C | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F6140 | 54 A8 1E F8 */	clrlslwi r8, r5, 30, 3
/* 814F6144 | 7D 23 D1 D6 */	mullw r9, r3, r26
/* 814F6148 | 7C 9D 23 78 */	mr r29, r4
/* 814F614C | 7D 0B 42 14 */	add r8, r11, r8
/* 814F6150 | 7E 89 03 A6 */	mtctr r20
/* 814F6154 | 7C 04 E0 00 */	cmpw r4, r28
/* 814F6158 | 40 80 01 08 */	bge .L_814F6260
.L_814F615C:
/* 814F615C | 57 A3 07 FF */	clrlwi. r3, r29, 31
/* 814F6160 | 40 82 00 40 */	bne .L_814F61A0
/* 814F6164 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 814F6168 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814F616C | 89 5F 00 00 */	lbz r10, 0x0(r31)
/* 814F6170 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814F6174 | 7C 72 07 74 */	extsb r18, r3
/* 814F6178 | 1C 72 01 67 */	mulli r3, r18, 0x167
/* 814F617C | 7D 51 07 74 */	extsb r17, r10
/* 814F6180 | 7C 79 46 70 */	srawi r25, r3, 8
/* 814F6184 | 1D 51 00 58 */	mulli r10, r17, 0x58
/* 814F6188 | 1C 72 00 B7 */	mulli r3, r18, 0xb7
/* 814F618C | 7C 6A 1A 14 */	add r3, r10, r3
/* 814F6190 | 7D 43 00 D0 */	neg r10, r3
/* 814F6194 | 1C 71 01 C6 */	mulli r3, r17, 0x1c6
/* 814F6198 | 7D 58 46 70 */	srawi r24, r10, 8
/* 814F619C | 7C 77 46 70 */	srawi r23, r3, 8
.L_814F61A0:
/* 814F61A0 | 89 4C 00 00 */	lbz r10, 0x0(r12)
/* 814F61A4 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F61A8 | 7C 6A CA 14 */	add r3, r10, r25
/* 814F61AC | 7E AA BA 14 */	add r21, r10, r23
/* 814F61B0 | 7E CA C2 14 */	add r22, r10, r24
/* 814F61B4 | 7E AA 1B 78 */	or r10, r21, r3
/* 814F61B8 | 7D 4A B3 78 */	or r10, r10, r22
/* 814F61BC | 7D 4A 46 71 */	srawi. r10, r10, 8
/* 814F61C0 | 41 82 00 4C */	beq .L_814F620C
/* 814F61C4 | 2C 15 00 FF */	cmpwi r21, 0xff
/* 814F61C8 | 40 81 00 0C */	ble .L_814F61D4
/* 814F61CC | 3A A0 00 FF */	li r21, 0xff
/* 814F61D0 | 48 00 00 0C */	b .L_814F61DC
.L_814F61D4:
/* 814F61D4 | 7E AA FE 70 */	srawi r10, r21, 31
/* 814F61D8 | 7E B5 50 78 */	andc r21, r21, r10
.L_814F61DC:
/* 814F61DC | 2C 16 00 FF */	cmpwi r22, 0xff
/* 814F61E0 | 40 81 00 0C */	ble .L_814F61EC
/* 814F61E4 | 3A C0 00 FF */	li r22, 0xff
/* 814F61E8 | 48 00 00 0C */	b .L_814F61F4
.L_814F61EC:
/* 814F61EC | 7E CA FE 70 */	srawi r10, r22, 31
/* 814F61F0 | 7E D6 50 78 */	andc r22, r22, r10
.L_814F61F4:
/* 814F61F4 | 2C 03 00 FF */	cmpwi r3, 0xff
/* 814F61F8 | 40 81 00 0C */	ble .L_814F6204
/* 814F61FC | 38 60 00 FF */	li r3, 0xff
/* 814F6200 | 48 00 00 0C */	b .L_814F620C
.L_814F6204:
/* 814F6204 | 7C 6A FE 70 */	srawi r10, r3, 31
/* 814F6208 | 7C 63 50 78 */	andc r3, r3, r10
.L_814F620C:
/* 814F620C | 7F B1 16 70 */	srawi r17, r29, 2
/* 814F6210 | 57 AA 07 BE */	clrlwi r10, r29, 30
/* 814F6214 | 56 31 08 3C */	slwi r17, r17, 1
/* 814F6218 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814F621C | 7E 31 4A 14 */	add r17, r17, r9
/* 814F6220 | 56 D3 44 2E */	clrlslwi r19, r22, 24, 8
/* 814F6224 | 56 32 20 36 */	slwi r18, r17, 4
/* 814F6228 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814F622C | 3A D1 00 01 */	addi r22, r17, 0x1
/* 814F6230 | 56 B5 06 3E */	clrlwi r21, r21, 24
/* 814F6234 | 7E 4A 92 14 */	add r18, r10, r18
/* 814F6238 | 3A 23 FF 00 */	subi r17, r3, 0x100
/* 814F623C | 56 D6 20 36 */	slwi r22, r22, 4
/* 814F6240 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F6244 | 7C 6A B2 14 */	add r3, r10, r22
/* 814F6248 | 56 52 08 3C */	slwi r18, r18, 1
/* 814F624C | 7E 28 93 2E */	sthx r17, r8, r18
/* 814F6250 | 7D 53 AA 14 */	add r10, r19, r21
/* 814F6254 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F6258 | 7D 48 1B 2E */	sthx r10, r8, r3
/* 814F625C | 42 00 FF 00 */	bdnz .L_814F615C
.L_814F6260:
/* 814F6260 | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 814F6264 | 7D 8C 02 14 */	add r12, r12, r0
/* 814F6268 | 41 82 00 10 */	beq .L_814F6278
/* 814F626C | 7F FF 32 14 */	add r31, r31, r6
/* 814F6270 | 7F DE 32 14 */	add r30, r30, r6
/* 814F6274 | 48 00 00 0C */	b .L_814F6280
.L_814F6278:
/* 814F6278 | 7F E7 F8 50 */	subf r31, r7, r31
/* 814F627C | 7F C7 F0 50 */	subf r30, r7, r30
.L_814F6280:
/* 814F6280 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F6284:
/* 814F6284 | 7C 05 D8 00 */	cmpw r5, r27
/* 814F6288 | 41 80 FE B4 */	blt .L_814F613C
/* 814F628C | BA 21 00 14 */	lmw r17, 0x14(r1)
/* 814F6290 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814F6294 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F60B8

# .text:0xBE50 | 0x814F6298 | size: 0x1A0
.fn TMCJPEG_814F6298, local
/* 814F6298 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F629C | 38 C0 00 08 */	li r6, 0x8
/* 814F62A0 | 38 00 00 10 */	li r0, 0x10
/* 814F62A4 | 39 23 18 5C */	addi r9, r3, 0x185c
/* 814F62A8 | BE A1 00 14 */	stmw r21, 0x14(r1)
/* 814F62AC | 39 43 18 DC */	addi r10, r3, 0x18dc
/* 814F62B0 | 39 63 19 1C */	addi r11, r3, 0x191c
/* 814F62B4 | 81 03 19 E4 */	lwz r8, 0x19e4(r3)
/* 814F62B8 | 89 88 00 20 */	lbz r12, 0x20(r8)
/* 814F62BC | 80 E8 00 2C */	lwz r7, 0x2c(r8)
/* 814F62C0 | 7F E6 63 D6 */	divw r31, r6, r12
/* 814F62C4 | 81 08 00 48 */	lwz r8, 0x48(r8)
/* 814F62C8 | 54 FC F8 7C */	rlwinm r28, r7, 31, 1, 30
/* 814F62CC | 7C 60 63 D6 */	divw r3, r0, r12
/* 814F62D0 | 7F C4 FA 14 */	add r30, r4, r31
/* 814F62D4 | 20 1F 00 08 */	subfic r0, r31, 0x8
/* 814F62D8 | 7F 04 F0 50 */	subf r24, r4, r30
/* 814F62DC | 7F A5 1A 14 */	add r29, r5, r3
/* 814F62E0 | 48 00 01 44 */	b .L_814F6424
.L_814F62E4:
/* 814F62E4 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F62E8 | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F62EC | 7C C3 E1 D6 */	mullw r6, r3, r28
/* 814F62F0 | 7C 8C 23 78 */	mr r12, r4
/* 814F62F4 | 7C 68 3A 14 */	add r3, r8, r7
/* 814F62F8 | 7F 09 03 A6 */	mtctr r24
/* 814F62FC | 7C 04 F0 00 */	cmpw r4, r30
/* 814F6300 | 40 80 01 00 */	bge .L_814F6400
.L_814F6304:
/* 814F6304 | 8A AA 00 00 */	lbz r21, 0x0(r10)
/* 814F6308 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F630C | 88 EB 00 00 */	lbz r7, 0x0(r11)
/* 814F6310 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F6314 | 7E B7 07 74 */	extsb r23, r21
/* 814F6318 | 8A C9 00 00 */	lbz r22, 0x0(r9)
/* 814F631C | 7C F9 07 74 */	extsb r25, r7
/* 814F6320 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F6324 | 1E B7 00 58 */	mulli r21, r23, 0x58
/* 814F6328 | 1C F9 00 B7 */	mulli r7, r25, 0xb7
/* 814F632C | 7C F5 3A 14 */	add r7, r21, r7
/* 814F6330 | 7C E7 00 D0 */	neg r7, r7
/* 814F6334 | 7C F5 46 70 */	srawi r21, r7, 8
/* 814F6338 | 1C F9 01 67 */	mulli r7, r25, 0x167
/* 814F633C | 7F 56 AA 14 */	add r26, r22, r21
/* 814F6340 | 7C F5 46 70 */	srawi r21, r7, 8
/* 814F6344 | 1C F7 01 C6 */	mulli r7, r23, 0x1c6
/* 814F6348 | 7F 76 AA 14 */	add r27, r22, r21
/* 814F634C | 7C E7 46 70 */	srawi r7, r7, 8
/* 814F6350 | 7F 36 3A 14 */	add r25, r22, r7
/* 814F6354 | 7F 27 DB 78 */	or r7, r25, r27
/* 814F6358 | 7C E7 D3 78 */	or r7, r7, r26
/* 814F635C | 7C E7 46 71 */	srawi. r7, r7, 8
/* 814F6360 | 41 82 00 4C */	beq .L_814F63AC
/* 814F6364 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F6368 | 40 81 00 0C */	ble .L_814F6374
/* 814F636C | 3B 20 00 FF */	li r25, 0xff
/* 814F6370 | 48 00 00 0C */	b .L_814F637C
.L_814F6374:
/* 814F6374 | 7F 27 FE 70 */	srawi r7, r25, 31
/* 814F6378 | 7F 39 38 78 */	andc r25, r25, r7
.L_814F637C:
/* 814F637C | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 814F6380 | 40 81 00 0C */	ble .L_814F638C
/* 814F6384 | 3B 40 00 FF */	li r26, 0xff
/* 814F6388 | 48 00 00 0C */	b .L_814F6394
.L_814F638C:
/* 814F638C | 7F 47 FE 70 */	srawi r7, r26, 31
/* 814F6390 | 7F 5A 38 78 */	andc r26, r26, r7
.L_814F6394:
/* 814F6394 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F6398 | 40 81 00 0C */	ble .L_814F63A4
/* 814F639C | 3B 60 00 FF */	li r27, 0xff
/* 814F63A0 | 48 00 00 0C */	b .L_814F63AC
.L_814F63A4:
/* 814F63A4 | 7F 67 FE 70 */	srawi r7, r27, 31
/* 814F63A8 | 7F 7B 38 78 */	andc r27, r27, r7
.L_814F63AC:
/* 814F63AC | 7D 95 16 70 */	srawi r21, r12, 2
/* 814F63B0 | 55 87 07 BE */	clrlwi r7, r12, 30
/* 814F63B4 | 56 B6 08 3C */	slwi r22, r21, 1
/* 814F63B8 | 57 39 06 3E */	clrlwi r25, r25, 24
/* 814F63BC | 7E D6 32 14 */	add r22, r22, r6
/* 814F63C0 | 57 75 06 3E */	clrlwi r21, r27, 24
/* 814F63C4 | 56 D7 20 36 */	slwi r23, r22, 4
/* 814F63C8 | 57 5B 44 2E */	clrlslwi r27, r26, 24, 8
/* 814F63CC | 7E E7 BA 14 */	add r23, r7, r23
/* 814F63D0 | 3B 56 00 01 */	addi r26, r22, 0x1
/* 814F63D4 | 3E B5 00 01 */	addis r21, r21, 0x1
/* 814F63D8 | 7F 3B CA 14 */	add r25, r27, r25
/* 814F63DC | 57 5A 20 36 */	slwi r26, r26, 4
/* 814F63E0 | 56 F7 08 3C */	slwi r23, r23, 1
/* 814F63E4 | 3A D5 FF 00 */	subi r22, r21, 0x100
/* 814F63E8 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F63EC | 7C E7 D2 14 */	add r7, r7, r26
/* 814F63F0 | 7E C3 BB 2E */	sthx r22, r3, r23
/* 814F63F4 | 54 E7 08 3C */	slwi r7, r7, 1
/* 814F63F8 | 7F 23 3B 2E */	sthx r25, r3, r7
/* 814F63FC | 42 00 FF 08 */	bdnz .L_814F6304
.L_814F6400:
/* 814F6400 | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 814F6404 | 7D 29 02 14 */	add r9, r9, r0
/* 814F6408 | 41 82 00 10 */	beq .L_814F6418
/* 814F640C | 7D 4A 02 14 */	add r10, r10, r0
/* 814F6410 | 7D 6B 02 14 */	add r11, r11, r0
/* 814F6414 | 48 00 00 0C */	b .L_814F6420
.L_814F6418:
/* 814F6418 | 7D 5F 50 50 */	subf r10, r31, r10
/* 814F641C | 7D 7F 58 50 */	subf r11, r31, r11
.L_814F6420:
/* 814F6420 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F6424:
/* 814F6424 | 7C 05 E8 00 */	cmpw r5, r29
/* 814F6428 | 41 80 FE BC */	blt .L_814F62E4
/* 814F642C | BA A1 00 14 */	lmw r21, 0x14(r1)
/* 814F6430 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F6434 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F6298

# .text:0xBFF0 | 0x814F6438 | size: 0x1CC
.fn TMCJPEG_814F6438, local
/* 814F6438 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814F643C | 39 23 18 5C */	addi r9, r3, 0x185c
/* 814F6440 | 39 43 18 DC */	addi r10, r3, 0x18dc
/* 814F6444 | 39 63 19 1C */	addi r11, r3, 0x191c
/* 814F6448 | BE A1 00 14 */	stmw r21, 0x14(r1)
/* 814F644C | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F6450 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F6454 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F6458 | 7C 00 20 40 */	cmplw r0, r4
/* 814F645C | 81 07 00 48 */	lwz r8, 0x48(r7)
/* 814F6460 | 54 DC F8 7C */	rlwinm r28, r6, 31, 1, 30
/* 814F6464 | 40 82 00 0C */	bne .L_814F6470
/* 814F6468 | 8B E7 00 16 */	lbz r31, 0x16(r7)
/* 814F646C | 48 00 00 10 */	b .L_814F647C
.L_814F6470:
/* 814F6470 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F6474 | 38 60 00 08 */	li r3, 0x8
/* 814F6478 | 7F E3 03 D6 */	divw r31, r3, r0
.L_814F647C:
/* 814F647C | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F6480 | 7C 00 28 40 */	cmplw r0, r5
/* 814F6484 | 40 82 00 0C */	bne .L_814F6490
/* 814F6488 | 88 07 00 17 */	lbz r0, 0x17(r7)
/* 814F648C | 48 00 00 10 */	b .L_814F649C
.L_814F6490:
/* 814F6490 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F6494 | 38 60 00 10 */	li r3, 0x10
/* 814F6498 | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F649C:
/* 814F649C | 7F C4 FA 14 */	add r30, r4, r31
/* 814F64A0 | 7F A5 02 14 */	add r29, r5, r0
/* 814F64A4 | 20 1F 00 08 */	subfic r0, r31, 0x8
/* 814F64A8 | 7F 04 F0 50 */	subf r24, r4, r30
/* 814F64AC | 48 00 01 44 */	b .L_814F65F0
.L_814F64B0:
/* 814F64B0 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F64B4 | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F64B8 | 7C C3 E1 D6 */	mullw r6, r3, r28
/* 814F64BC | 7C 8C 23 78 */	mr r12, r4
/* 814F64C0 | 7C 68 3A 14 */	add r3, r8, r7
/* 814F64C4 | 7F 09 03 A6 */	mtctr r24
/* 814F64C8 | 7C 04 F0 00 */	cmpw r4, r30
/* 814F64CC | 40 80 01 00 */	bge .L_814F65CC
.L_814F64D0:
/* 814F64D0 | 8A AA 00 00 */	lbz r21, 0x0(r10)
/* 814F64D4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F64D8 | 88 EB 00 00 */	lbz r7, 0x0(r11)
/* 814F64DC | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F64E0 | 7E B7 07 74 */	extsb r23, r21
/* 814F64E4 | 8A C9 00 00 */	lbz r22, 0x0(r9)
/* 814F64E8 | 7C F9 07 74 */	extsb r25, r7
/* 814F64EC | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F64F0 | 1E B7 00 58 */	mulli r21, r23, 0x58
/* 814F64F4 | 1C F9 00 B7 */	mulli r7, r25, 0xb7
/* 814F64F8 | 7C F5 3A 14 */	add r7, r21, r7
/* 814F64FC | 7C E7 00 D0 */	neg r7, r7
/* 814F6500 | 7C F5 46 70 */	srawi r21, r7, 8
/* 814F6504 | 1C F9 01 67 */	mulli r7, r25, 0x167
/* 814F6508 | 7F 56 AA 14 */	add r26, r22, r21
/* 814F650C | 7C F5 46 70 */	srawi r21, r7, 8
/* 814F6510 | 1C F7 01 C6 */	mulli r7, r23, 0x1c6
/* 814F6514 | 7F 76 AA 14 */	add r27, r22, r21
/* 814F6518 | 7C E7 46 70 */	srawi r7, r7, 8
/* 814F651C | 7F 36 3A 14 */	add r25, r22, r7
/* 814F6520 | 7F 27 DB 78 */	or r7, r25, r27
/* 814F6524 | 7C E7 D3 78 */	or r7, r7, r26
/* 814F6528 | 7C E7 46 71 */	srawi. r7, r7, 8
/* 814F652C | 41 82 00 4C */	beq .L_814F6578
/* 814F6530 | 2C 19 00 FF */	cmpwi r25, 0xff
/* 814F6534 | 40 81 00 0C */	ble .L_814F6540
/* 814F6538 | 3B 20 00 FF */	li r25, 0xff
/* 814F653C | 48 00 00 0C */	b .L_814F6548
.L_814F6540:
/* 814F6540 | 7F 27 FE 70 */	srawi r7, r25, 31
/* 814F6544 | 7F 39 38 78 */	andc r25, r25, r7
.L_814F6548:
/* 814F6548 | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 814F654C | 40 81 00 0C */	ble .L_814F6558
/* 814F6550 | 3B 40 00 FF */	li r26, 0xff
/* 814F6554 | 48 00 00 0C */	b .L_814F6560
.L_814F6558:
/* 814F6558 | 7F 47 FE 70 */	srawi r7, r26, 31
/* 814F655C | 7F 5A 38 78 */	andc r26, r26, r7
.L_814F6560:
/* 814F6560 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F6564 | 40 81 00 0C */	ble .L_814F6570
/* 814F6568 | 3B 60 00 FF */	li r27, 0xff
/* 814F656C | 48 00 00 0C */	b .L_814F6578
.L_814F6570:
/* 814F6570 | 7F 67 FE 70 */	srawi r7, r27, 31
/* 814F6574 | 7F 7B 38 78 */	andc r27, r27, r7
.L_814F6578:
/* 814F6578 | 7D 95 16 70 */	srawi r21, r12, 2
/* 814F657C | 55 87 07 BE */	clrlwi r7, r12, 30
/* 814F6580 | 56 B6 08 3C */	slwi r22, r21, 1
/* 814F6584 | 57 39 06 3E */	clrlwi r25, r25, 24
/* 814F6588 | 7E D6 32 14 */	add r22, r22, r6
/* 814F658C | 57 75 06 3E */	clrlwi r21, r27, 24
/* 814F6590 | 56 D7 20 36 */	slwi r23, r22, 4
/* 814F6594 | 57 5B 44 2E */	clrlslwi r27, r26, 24, 8
/* 814F6598 | 7E E7 BA 14 */	add r23, r7, r23
/* 814F659C | 3B 56 00 01 */	addi r26, r22, 0x1
/* 814F65A0 | 3E B5 00 01 */	addis r21, r21, 0x1
/* 814F65A4 | 7F 3B CA 14 */	add r25, r27, r25
/* 814F65A8 | 57 5A 20 36 */	slwi r26, r26, 4
/* 814F65AC | 56 F7 08 3C */	slwi r23, r23, 1
/* 814F65B0 | 3A D5 FF 00 */	subi r22, r21, 0x100
/* 814F65B4 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F65B8 | 7C E7 D2 14 */	add r7, r7, r26
/* 814F65BC | 7E C3 BB 2E */	sthx r22, r3, r23
/* 814F65C0 | 54 E7 08 3C */	slwi r7, r7, 1
/* 814F65C4 | 7F 23 3B 2E */	sthx r25, r3, r7
/* 814F65C8 | 42 00 FF 08 */	bdnz .L_814F64D0
.L_814F65CC:
/* 814F65CC | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 814F65D0 | 7D 29 02 14 */	add r9, r9, r0
/* 814F65D4 | 41 82 00 10 */	beq .L_814F65E4
/* 814F65D8 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F65DC | 7D 6B 02 14 */	add r11, r11, r0
/* 814F65E0 | 48 00 00 0C */	b .L_814F65EC
.L_814F65E4:
/* 814F65E4 | 7D 5F 50 50 */	subf r10, r31, r10
/* 814F65E8 | 7D 7F 58 50 */	subf r11, r31, r11
.L_814F65EC:
/* 814F65EC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F65F0:
/* 814F65F0 | 7C 05 E8 00 */	cmpw r5, r29
/* 814F65F4 | 41 80 FE BC */	blt .L_814F64B0
/* 814F65F8 | BA A1 00 14 */	lmw r21, 0x14(r1)
/* 814F65FC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814F6600 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F6438

# .text:0xC1BC | 0x814F6604 | size: 0x184
.fn TMCJPEG_814F6604, local
/* 814F6604 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F6608 | 38 C0 00 08 */	li r6, 0x8
/* 814F660C | 39 23 18 5C */	addi r9, r3, 0x185c
/* 814F6610 | 39 43 18 9C */	addi r10, r3, 0x189c
/* 814F6614 | BE C1 00 08 */	stmw r22, 0x8(r1)
/* 814F6618 | 39 63 18 DC */	addi r11, r3, 0x18dc
/* 814F661C | 81 03 19 E4 */	lwz r8, 0x19e4(r3)
/* 814F6620 | 88 08 00 20 */	lbz r0, 0x20(r8)
/* 814F6624 | 80 E8 00 2C */	lwz r7, 0x2c(r8)
/* 814F6628 | 7C 06 03 D6 */	divw r0, r6, r0
/* 814F662C | 81 08 00 48 */	lwz r8, 0x48(r8)
/* 814F6630 | 54 FD F8 7C */	rlwinm r29, r7, 31, 1, 30
/* 814F6634 | 7F E4 02 14 */	add r31, r4, r0
/* 814F6638 | 7F C5 02 14 */	add r30, r5, r0
/* 814F663C | 20 00 00 08 */	subfic r0, r0, 0x8
/* 814F6640 | 7F 24 F8 50 */	subf r25, r4, r31
/* 814F6644 | 48 00 01 30 */	b .L_814F6774
.L_814F6648:
/* 814F6648 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F664C | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F6650 | 7C C3 E9 D6 */	mullw r6, r3, r29
/* 814F6654 | 7C 8C 23 78 */	mr r12, r4
/* 814F6658 | 7C 68 3A 14 */	add r3, r8, r7
/* 814F665C | 7F 29 03 A6 */	mtctr r25
/* 814F6660 | 7C 04 F8 00 */	cmpw r4, r31
/* 814F6664 | 40 80 01 00 */	bge .L_814F6764
.L_814F6668:
/* 814F6668 | 8A CA 00 00 */	lbz r22, 0x0(r10)
/* 814F666C | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F6670 | 88 EB 00 00 */	lbz r7, 0x0(r11)
/* 814F6674 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F6678 | 7E D8 07 74 */	extsb r24, r22
/* 814F667C | 8A E9 00 00 */	lbz r23, 0x0(r9)
/* 814F6680 | 7C FA 07 74 */	extsb r26, r7
/* 814F6684 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F6688 | 1E D8 00 58 */	mulli r22, r24, 0x58
/* 814F668C | 1C FA 00 B7 */	mulli r7, r26, 0xb7
/* 814F6690 | 7C F6 3A 14 */	add r7, r22, r7
/* 814F6694 | 7C E7 00 D0 */	neg r7, r7
/* 814F6698 | 7C F6 46 70 */	srawi r22, r7, 8
/* 814F669C | 1C FA 01 67 */	mulli r7, r26, 0x167
/* 814F66A0 | 7F 77 B2 14 */	add r27, r23, r22
/* 814F66A4 | 7C F6 46 70 */	srawi r22, r7, 8
/* 814F66A8 | 1C F8 01 C6 */	mulli r7, r24, 0x1c6
/* 814F66AC | 7F 97 B2 14 */	add r28, r23, r22
/* 814F66B0 | 7C E7 46 70 */	srawi r7, r7, 8
/* 814F66B4 | 7F 57 3A 14 */	add r26, r23, r7
/* 814F66B8 | 7F 47 E3 78 */	or r7, r26, r28
/* 814F66BC | 7C E7 DB 78 */	or r7, r7, r27
/* 814F66C0 | 7C E7 46 71 */	srawi. r7, r7, 8
/* 814F66C4 | 41 82 00 4C */	beq .L_814F6710
/* 814F66C8 | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 814F66CC | 40 81 00 0C */	ble .L_814F66D8
/* 814F66D0 | 3B 40 00 FF */	li r26, 0xff
/* 814F66D4 | 48 00 00 0C */	b .L_814F66E0
.L_814F66D8:
/* 814F66D8 | 7F 47 FE 70 */	srawi r7, r26, 31
/* 814F66DC | 7F 5A 38 78 */	andc r26, r26, r7
.L_814F66E0:
/* 814F66E0 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F66E4 | 40 81 00 0C */	ble .L_814F66F0
/* 814F66E8 | 3B 60 00 FF */	li r27, 0xff
/* 814F66EC | 48 00 00 0C */	b .L_814F66F8
.L_814F66F0:
/* 814F66F0 | 7F 67 FE 70 */	srawi r7, r27, 31
/* 814F66F4 | 7F 7B 38 78 */	andc r27, r27, r7
.L_814F66F8:
/* 814F66F8 | 2C 1C 00 FF */	cmpwi r28, 0xff
/* 814F66FC | 40 81 00 0C */	ble .L_814F6708
/* 814F6700 | 3B 80 00 FF */	li r28, 0xff
/* 814F6704 | 48 00 00 0C */	b .L_814F6710
.L_814F6708:
/* 814F6708 | 7F 87 FE 70 */	srawi r7, r28, 31
/* 814F670C | 7F 9C 38 78 */	andc r28, r28, r7
.L_814F6710:
/* 814F6710 | 7D 96 16 70 */	srawi r22, r12, 2
/* 814F6714 | 55 87 07 BE */	clrlwi r7, r12, 30
/* 814F6718 | 56 D7 08 3C */	slwi r23, r22, 1
/* 814F671C | 57 5A 06 3E */	clrlwi r26, r26, 24
/* 814F6720 | 7E F7 32 14 */	add r23, r23, r6
/* 814F6724 | 57 96 06 3E */	clrlwi r22, r28, 24
/* 814F6728 | 56 F8 20 36 */	slwi r24, r23, 4
/* 814F672C | 57 7C 44 2E */	clrlslwi r28, r27, 24, 8
/* 814F6730 | 7F 07 C2 14 */	add r24, r7, r24
/* 814F6734 | 3B 77 00 01 */	addi r27, r23, 0x1
/* 814F6738 | 3E D6 00 01 */	addis r22, r22, 0x1
/* 814F673C | 7F 5C D2 14 */	add r26, r28, r26
/* 814F6740 | 57 7B 20 36 */	slwi r27, r27, 4
/* 814F6744 | 57 18 08 3C */	slwi r24, r24, 1
/* 814F6748 | 3A F6 FF 00 */	subi r23, r22, 0x100
/* 814F674C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F6750 | 7C E7 DA 14 */	add r7, r7, r27
/* 814F6754 | 7E E3 C3 2E */	sthx r23, r3, r24
/* 814F6758 | 54 E7 08 3C */	slwi r7, r7, 1
/* 814F675C | 7F 43 3B 2E */	sthx r26, r3, r7
/* 814F6760 | 42 00 FF 08 */	bdnz .L_814F6668
.L_814F6764:
/* 814F6764 | 7D 29 02 14 */	add r9, r9, r0
/* 814F6768 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F676C | 7D 6B 02 14 */	add r11, r11, r0
/* 814F6770 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F6774:
/* 814F6774 | 7C 05 F0 00 */	cmpw r5, r30
/* 814F6778 | 41 80 FE D0 */	blt .L_814F6648
/* 814F677C | BA C1 00 08 */	lmw r22, 0x8(r1)
/* 814F6780 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F6784 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F6604

# .text:0xC340 | 0x814F6788 | size: 0x1B8
.fn TMCJPEG_814F6788, local
/* 814F6788 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F678C | 39 23 18 5C */	addi r9, r3, 0x185c
/* 814F6790 | 39 43 18 9C */	addi r10, r3, 0x189c
/* 814F6794 | 39 63 18 DC */	addi r11, r3, 0x18dc
/* 814F6798 | BE C1 00 08 */	stmw r22, 0x8(r1)
/* 814F679C | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F67A0 | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 814F67A4 | 80 C7 00 2C */	lwz r6, 0x2c(r7)
/* 814F67A8 | 7C 00 20 40 */	cmplw r0, r4
/* 814F67AC | 81 07 00 48 */	lwz r8, 0x48(r7)
/* 814F67B0 | 54 DD F8 7C */	rlwinm r29, r6, 31, 1, 30
/* 814F67B4 | 40 82 00 0C */	bne .L_814F67C0
/* 814F67B8 | 88 C7 00 16 */	lbz r6, 0x16(r7)
/* 814F67BC | 48 00 00 10 */	b .L_814F67CC
.L_814F67C0:
/* 814F67C0 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F67C4 | 38 60 00 08 */	li r3, 0x8
/* 814F67C8 | 7C C3 03 D6 */	divw r6, r3, r0
.L_814F67CC:
/* 814F67CC | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 814F67D0 | 7C 00 28 40 */	cmplw r0, r5
/* 814F67D4 | 40 82 00 0C */	bne .L_814F67E0
/* 814F67D8 | 88 07 00 17 */	lbz r0, 0x17(r7)
/* 814F67DC | 48 00 00 10 */	b .L_814F67EC
.L_814F67E0:
/* 814F67E0 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F67E4 | 38 60 00 08 */	li r3, 0x8
/* 814F67E8 | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F67EC:
/* 814F67EC | 7F E4 32 14 */	add r31, r4, r6
/* 814F67F0 | 7F C5 02 14 */	add r30, r5, r0
/* 814F67F4 | 20 06 00 08 */	subfic r0, r6, 0x8
/* 814F67F8 | 7F 24 F8 50 */	subf r25, r4, r31
/* 814F67FC | 48 00 01 30 */	b .L_814F692C
.L_814F6800:
/* 814F6800 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F6804 | 54 A7 1E F8 */	clrlslwi r7, r5, 30, 3
/* 814F6808 | 7C C3 E9 D6 */	mullw r6, r3, r29
/* 814F680C | 7C 8C 23 78 */	mr r12, r4
/* 814F6810 | 7C 68 3A 14 */	add r3, r8, r7
/* 814F6814 | 7F 29 03 A6 */	mtctr r25
/* 814F6818 | 7C 04 F8 00 */	cmpw r4, r31
/* 814F681C | 40 80 01 00 */	bge .L_814F691C
.L_814F6820:
/* 814F6820 | 8A CA 00 00 */	lbz r22, 0x0(r10)
/* 814F6824 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814F6828 | 88 EB 00 00 */	lbz r7, 0x0(r11)
/* 814F682C | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814F6830 | 7E D8 07 74 */	extsb r24, r22
/* 814F6834 | 8A E9 00 00 */	lbz r23, 0x0(r9)
/* 814F6838 | 7C FA 07 74 */	extsb r26, r7
/* 814F683C | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F6840 | 1E D8 00 58 */	mulli r22, r24, 0x58
/* 814F6844 | 1C FA 00 B7 */	mulli r7, r26, 0xb7
/* 814F6848 | 7C F6 3A 14 */	add r7, r22, r7
/* 814F684C | 7C E7 00 D0 */	neg r7, r7
/* 814F6850 | 7C F6 46 70 */	srawi r22, r7, 8
/* 814F6854 | 1C FA 01 67 */	mulli r7, r26, 0x167
/* 814F6858 | 7F 77 B2 14 */	add r27, r23, r22
/* 814F685C | 7C F6 46 70 */	srawi r22, r7, 8
/* 814F6860 | 1C F8 01 C6 */	mulli r7, r24, 0x1c6
/* 814F6864 | 7F 97 B2 14 */	add r28, r23, r22
/* 814F6868 | 7C E7 46 70 */	srawi r7, r7, 8
/* 814F686C | 7F 57 3A 14 */	add r26, r23, r7
/* 814F6870 | 7F 47 E3 78 */	or r7, r26, r28
/* 814F6874 | 7C E7 DB 78 */	or r7, r7, r27
/* 814F6878 | 7C E7 46 71 */	srawi. r7, r7, 8
/* 814F687C | 41 82 00 4C */	beq .L_814F68C8
/* 814F6880 | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 814F6884 | 40 81 00 0C */	ble .L_814F6890
/* 814F6888 | 3B 40 00 FF */	li r26, 0xff
/* 814F688C | 48 00 00 0C */	b .L_814F6898
.L_814F6890:
/* 814F6890 | 7F 47 FE 70 */	srawi r7, r26, 31
/* 814F6894 | 7F 5A 38 78 */	andc r26, r26, r7
.L_814F6898:
/* 814F6898 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F689C | 40 81 00 0C */	ble .L_814F68A8
/* 814F68A0 | 3B 60 00 FF */	li r27, 0xff
/* 814F68A4 | 48 00 00 0C */	b .L_814F68B0
.L_814F68A8:
/* 814F68A8 | 7F 67 FE 70 */	srawi r7, r27, 31
/* 814F68AC | 7F 7B 38 78 */	andc r27, r27, r7
.L_814F68B0:
/* 814F68B0 | 2C 1C 00 FF */	cmpwi r28, 0xff
/* 814F68B4 | 40 81 00 0C */	ble .L_814F68C0
/* 814F68B8 | 3B 80 00 FF */	li r28, 0xff
/* 814F68BC | 48 00 00 0C */	b .L_814F68C8
.L_814F68C0:
/* 814F68C0 | 7F 87 FE 70 */	srawi r7, r28, 31
/* 814F68C4 | 7F 9C 38 78 */	andc r28, r28, r7
.L_814F68C8:
/* 814F68C8 | 7D 96 16 70 */	srawi r22, r12, 2
/* 814F68CC | 55 87 07 BE */	clrlwi r7, r12, 30
/* 814F68D0 | 56 D7 08 3C */	slwi r23, r22, 1
/* 814F68D4 | 57 5A 06 3E */	clrlwi r26, r26, 24
/* 814F68D8 | 7E F7 32 14 */	add r23, r23, r6
/* 814F68DC | 57 96 06 3E */	clrlwi r22, r28, 24
/* 814F68E0 | 56 F8 20 36 */	slwi r24, r23, 4
/* 814F68E4 | 57 7C 44 2E */	clrlslwi r28, r27, 24, 8
/* 814F68E8 | 7F 07 C2 14 */	add r24, r7, r24
/* 814F68EC | 3B 77 00 01 */	addi r27, r23, 0x1
/* 814F68F0 | 3E D6 00 01 */	addis r22, r22, 0x1
/* 814F68F4 | 7F 5C D2 14 */	add r26, r28, r26
/* 814F68F8 | 57 7B 20 36 */	slwi r27, r27, 4
/* 814F68FC | 57 18 08 3C */	slwi r24, r24, 1
/* 814F6900 | 3A F6 FF 00 */	subi r23, r22, 0x100
/* 814F6904 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814F6908 | 7C E7 DA 14 */	add r7, r7, r27
/* 814F690C | 7E E3 C3 2E */	sthx r23, r3, r24
/* 814F6910 | 54 E7 08 3C */	slwi r7, r7, 1
/* 814F6914 | 7F 43 3B 2E */	sthx r26, r3, r7
/* 814F6918 | 42 00 FF 08 */	bdnz .L_814F6820
.L_814F691C:
/* 814F691C | 7D 29 02 14 */	add r9, r9, r0
/* 814F6920 | 7D 4A 02 14 */	add r10, r10, r0
/* 814F6924 | 7D 6B 02 14 */	add r11, r11, r0
/* 814F6928 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F692C:
/* 814F692C | 7C 05 F0 00 */	cmpw r5, r30
/* 814F6930 | 41 80 FE D0 */	blt .L_814F6800
/* 814F6934 | BA C1 00 08 */	lmw r22, 0x8(r1)
/* 814F6938 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F693C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F6788

# .text:0xC4F8 | 0x814F6940 | size: 0x130
.fn TMCJPEG_814F6940, local
/* 814F6940 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F6944 | 38 C0 00 08 */	li r6, 0x8
/* 814F6948 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F694C | BF 01 00 10 */	stmw r24, 0x10(r1)
/* 814F6950 | 80 E3 19 E4 */	lwz r7, 0x19e4(r3)
/* 814F6954 | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 814F6958 | 81 27 00 2C */	lwz r9, 0x2c(r7)
/* 814F695C | 7C 06 03 D6 */	divw r0, r6, r0
/* 814F6960 | 80 E7 00 48 */	lwz r7, 0x48(r7)
/* 814F6964 | 55 2C F8 7C */	rlwinm r12, r9, 31, 1, 30
/* 814F6968 | 7D 44 02 14 */	add r10, r4, r0
/* 814F696C | 7D 65 02 14 */	add r11, r5, r0
/* 814F6970 | 20 00 00 08 */	subfic r0, r0, 0x8
/* 814F6974 | 7F C4 50 50 */	subf r30, r4, r10
/* 814F6978 | 48 00 00 E4 */	b .L_814F6A5C
.L_814F697C:
/* 814F697C | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F6980 | 54 B9 1E F8 */	clrlslwi r25, r5, 30, 3
/* 814F6984 | 7C C3 61 D6 */	mullw r6, r3, r12
/* 814F6988 | 7C 89 23 78 */	mr r9, r4
/* 814F698C | 7C 67 CA 14 */	add r3, r7, r25
/* 814F6990 | 7F C9 03 A6 */	mtctr r30
/* 814F6994 | 7C 04 50 00 */	cmpw r4, r10
/* 814F6998 | 40 80 00 BC */	bge .L_814F6A54
.L_814F699C:
/* 814F699C | 8B 68 00 00 */	lbz r27, 0x0(r8)
/* 814F69A0 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F69A4 | 7F 79 46 71 */	srawi. r25, r27, 8
/* 814F69A8 | 41 82 00 50 */	beq .L_814F69F8
/* 814F69AC | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F69B0 | 40 81 00 0C */	ble .L_814F69BC
/* 814F69B4 | 3B E0 00 FF */	li r31, 0xff
/* 814F69B8 | 48 00 00 0C */	b .L_814F69C4
.L_814F69BC:
/* 814F69BC | 7F 79 FE 70 */	srawi r25, r27, 31
/* 814F69C0 | 7F 7F C8 78 */	andc r31, r27, r25
.L_814F69C4:
/* 814F69C4 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F69C8 | 40 81 00 0C */	ble .L_814F69D4
/* 814F69CC | 3B A0 00 FF */	li r29, 0xff
/* 814F69D0 | 48 00 00 0C */	b .L_814F69DC
.L_814F69D4:
/* 814F69D4 | 7F 79 FE 70 */	srawi r25, r27, 31
/* 814F69D8 | 7F 7D C8 78 */	andc r29, r27, r25
.L_814F69DC:
/* 814F69DC | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F69E0 | 40 81 00 0C */	ble .L_814F69EC
/* 814F69E4 | 3B 60 00 FF */	li r27, 0xff
/* 814F69E8 | 48 00 00 18 */	b .L_814F6A00
.L_814F69EC:
/* 814F69EC | 7F 79 FE 70 */	srawi r25, r27, 31
/* 814F69F0 | 7F 7B C8 78 */	andc r27, r27, r25
/* 814F69F4 | 48 00 00 0C */	b .L_814F6A00
.L_814F69F8:
/* 814F69F8 | 7F 7F DB 78 */	mr r31, r27
/* 814F69FC | 7F 7D DB 78 */	mr r29, r27
.L_814F6A00:
/* 814F6A00 | 7D 39 16 70 */	srawi r25, r9, 2
/* 814F6A04 | 55 38 07 BE */	clrlwi r24, r9, 30
/* 814F6A08 | 57 3A 08 3C */	slwi r26, r25, 1
/* 814F6A0C | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F6A10 | 7F 9A 32 14 */	add r28, r26, r6
/* 814F6A14 | 57 79 06 3E */	clrlwi r25, r27, 24
/* 814F6A18 | 57 9A 20 36 */	slwi r26, r28, 4
/* 814F6A1C | 57 BB 44 2E */	clrlslwi r27, r29, 24, 8
/* 814F6A20 | 3B BC 00 01 */	addi r29, r28, 0x1
/* 814F6A24 | 3F 39 00 01 */	addis r25, r25, 0x1
/* 814F6A28 | 7F 58 D2 14 */	add r26, r24, r26
/* 814F6A2C | 57 FC 06 3E */	clrlwi r28, r31, 24
/* 814F6A30 | 57 BD 20 36 */	slwi r29, r29, 4
/* 814F6A34 | 3B 39 FF 00 */	subi r25, r25, 0x100
/* 814F6A38 | 7F F8 EA 14 */	add r31, r24, r29
/* 814F6A3C | 57 5A 08 3C */	slwi r26, r26, 1
/* 814F6A40 | 7F 23 D3 2E */	sthx r25, r3, r26
/* 814F6A44 | 7F BB E2 14 */	add r29, r27, r28
/* 814F6A48 | 57 FF 08 3C */	slwi r31, r31, 1
/* 814F6A4C | 7F A3 FB 2E */	sthx r29, r3, r31
/* 814F6A50 | 42 00 FF 4C */	bdnz .L_814F699C
.L_814F6A54:
/* 814F6A54 | 7D 08 02 14 */	add r8, r8, r0
/* 814F6A58 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F6A5C:
/* 814F6A5C | 7C 05 58 00 */	cmpw r5, r11
/* 814F6A60 | 41 80 FF 1C */	blt .L_814F697C
/* 814F6A64 | BB 01 00 10 */	lmw r24, 0x10(r1)
/* 814F6A68 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F6A6C | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F6940

# .text:0xC628 | 0x814F6A70 | size: 0x164
.fn TMCJPEG_814F6A70, local
/* 814F6A70 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F6A74 | 39 03 18 5C */	addi r8, r3, 0x185c
/* 814F6A78 | BF 01 00 10 */	stmw r24, 0x10(r1)
/* 814F6A7C | 80 C3 19 E4 */	lwz r6, 0x19e4(r3)
/* 814F6A80 | 80 06 00 18 */	lwz r0, 0x18(r6)
/* 814F6A84 | 80 66 00 2C */	lwz r3, 0x2c(r6)
/* 814F6A88 | 7C 00 20 40 */	cmplw r0, r4
/* 814F6A8C | 80 E6 00 48 */	lwz r7, 0x48(r6)
/* 814F6A90 | 54 6C F8 7C */	rlwinm r12, r3, 31, 1, 30
/* 814F6A94 | 40 82 00 0C */	bne .L_814F6AA0
/* 814F6A98 | 89 26 00 16 */	lbz r9, 0x16(r6)
/* 814F6A9C | 48 00 00 10 */	b .L_814F6AAC
.L_814F6AA0:
/* 814F6AA0 | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814F6AA4 | 38 60 00 08 */	li r3, 0x8
/* 814F6AA8 | 7D 23 03 D6 */	divw r9, r3, r0
.L_814F6AAC:
/* 814F6AAC | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 814F6AB0 | 7C 00 28 40 */	cmplw r0, r5
/* 814F6AB4 | 40 82 00 0C */	bne .L_814F6AC0
/* 814F6AB8 | 88 06 00 17 */	lbz r0, 0x17(r6)
/* 814F6ABC | 48 00 00 10 */	b .L_814F6ACC
.L_814F6AC0:
/* 814F6AC0 | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 814F6AC4 | 38 60 00 08 */	li r3, 0x8
/* 814F6AC8 | 7C 03 03 D6 */	divw r0, r3, r0
.L_814F6ACC:
/* 814F6ACC | 7D 44 4A 14 */	add r10, r4, r9
/* 814F6AD0 | 7D 65 02 14 */	add r11, r5, r0
/* 814F6AD4 | 20 09 00 08 */	subfic r0, r9, 0x8
/* 814F6AD8 | 7F C4 50 50 */	subf r30, r4, r10
/* 814F6ADC | 48 00 00 E4 */	b .L_814F6BC0
.L_814F6AE0:
/* 814F6AE0 | 7C A3 16 70 */	srawi r3, r5, 2
/* 814F6AE4 | 54 B9 1E F8 */	clrlslwi r25, r5, 30, 3
/* 814F6AE8 | 7C C3 61 D6 */	mullw r6, r3, r12
/* 814F6AEC | 7C 89 23 78 */	mr r9, r4
/* 814F6AF0 | 7C 67 CA 14 */	add r3, r7, r25
/* 814F6AF4 | 7F C9 03 A6 */	mtctr r30
/* 814F6AF8 | 7C 04 50 00 */	cmpw r4, r10
/* 814F6AFC | 40 80 00 BC */	bge .L_814F6BB8
.L_814F6B00:
/* 814F6B00 | 8B 68 00 00 */	lbz r27, 0x0(r8)
/* 814F6B04 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814F6B08 | 7F 79 46 71 */	srawi. r25, r27, 8
/* 814F6B0C | 41 82 00 50 */	beq .L_814F6B5C
/* 814F6B10 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F6B14 | 40 81 00 0C */	ble .L_814F6B20
/* 814F6B18 | 3B E0 00 FF */	li r31, 0xff
/* 814F6B1C | 48 00 00 0C */	b .L_814F6B28
.L_814F6B20:
/* 814F6B20 | 7F 79 FE 70 */	srawi r25, r27, 31
/* 814F6B24 | 7F 7F C8 78 */	andc r31, r27, r25
.L_814F6B28:
/* 814F6B28 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F6B2C | 40 81 00 0C */	ble .L_814F6B38
/* 814F6B30 | 3B A0 00 FF */	li r29, 0xff
/* 814F6B34 | 48 00 00 0C */	b .L_814F6B40
.L_814F6B38:
/* 814F6B38 | 7F 79 FE 70 */	srawi r25, r27, 31
/* 814F6B3C | 7F 7D C8 78 */	andc r29, r27, r25
.L_814F6B40:
/* 814F6B40 | 2C 1B 00 FF */	cmpwi r27, 0xff
/* 814F6B44 | 40 81 00 0C */	ble .L_814F6B50
/* 814F6B48 | 3B 60 00 FF */	li r27, 0xff
/* 814F6B4C | 48 00 00 18 */	b .L_814F6B64
.L_814F6B50:
/* 814F6B50 | 7F 79 FE 70 */	srawi r25, r27, 31
/* 814F6B54 | 7F 7B C8 78 */	andc r27, r27, r25
/* 814F6B58 | 48 00 00 0C */	b .L_814F6B64
.L_814F6B5C:
/* 814F6B5C | 7F 7F DB 78 */	mr r31, r27
/* 814F6B60 | 7F 7D DB 78 */	mr r29, r27
.L_814F6B64:
/* 814F6B64 | 7D 39 16 70 */	srawi r25, r9, 2
/* 814F6B68 | 55 38 07 BE */	clrlwi r24, r9, 30
/* 814F6B6C | 57 3A 08 3C */	slwi r26, r25, 1
/* 814F6B70 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814F6B74 | 7F 9A 32 14 */	add r28, r26, r6
/* 814F6B78 | 57 79 06 3E */	clrlwi r25, r27, 24
/* 814F6B7C | 57 9A 20 36 */	slwi r26, r28, 4
/* 814F6B80 | 57 BB 44 2E */	clrlslwi r27, r29, 24, 8
/* 814F6B84 | 3B BC 00 01 */	addi r29, r28, 0x1
/* 814F6B88 | 3F 39 00 01 */	addis r25, r25, 0x1
/* 814F6B8C | 7F 58 D2 14 */	add r26, r24, r26
/* 814F6B90 | 57 FC 06 3E */	clrlwi r28, r31, 24
/* 814F6B94 | 57 BD 20 36 */	slwi r29, r29, 4
/* 814F6B98 | 3B 39 FF 00 */	subi r25, r25, 0x100
/* 814F6B9C | 7F F8 EA 14 */	add r31, r24, r29
/* 814F6BA0 | 57 5A 08 3C */	slwi r26, r26, 1
/* 814F6BA4 | 7F 23 D3 2E */	sthx r25, r3, r26
/* 814F6BA8 | 7F BB E2 14 */	add r29, r27, r28
/* 814F6BAC | 57 FF 08 3C */	slwi r31, r31, 1
/* 814F6BB0 | 7F A3 FB 2E */	sthx r29, r3, r31
/* 814F6BB4 | 42 00 FF 4C */	bdnz .L_814F6B00
.L_814F6BB8:
/* 814F6BB8 | 7D 08 02 14 */	add r8, r8, r0
/* 814F6BBC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814F6BC0:
/* 814F6BC0 | 7C 05 58 00 */	cmpw r5, r11
/* 814F6BC4 | 41 80 FF 1C */	blt .L_814F6AE0
/* 814F6BC8 | BB 01 00 10 */	lmw r24, 0x10(r1)
/* 814F6BCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F6BD0 | 4E 80 00 20 */	blr
.endfn TMCJPEG_814F6A70

# .text:0xC78C | 0x814F6BD4 | size: 0x450
.fn TMCJPEGDEC_decode_iquant, global
/* 814F6BD4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814F6BD8 | 7C 08 02 A6 */	mflr r0
/* 814F6BDC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814F6BE0 | BE A1 00 24 */	stmw r21, 0x24(r1)
/* 814F6BE4 | 7C 75 1B 78 */	mr r21, r3
/* 814F6BE8 | 7C 96 23 78 */	mr r22, r4
/* 814F6BEC | 7C B8 2B 78 */	mr r24, r5
/* 814F6BF0 | 7C D7 33 78 */	mr r23, r6
/* 814F6BF4 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 814F6BF8 | 83 26 04 98 */	lwz r25, 0x498(r6)
/* 814F6BFC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F6C00 | 41 81 00 18 */	bgt .L_814F6C18
/* 814F6C04 | 7E E3 BB 78 */	mr r3, r23
/* 814F6C08 | 4B FF 42 05 */	bl TMCJPEGDEC_load_buff
/* 814F6C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6C10 | 40 80 00 08 */	bge .L_814F6C18
/* 814F6C14 | 48 00 03 FC */	b .L_814F7010
.L_814F6C18:
/* 814F6C18 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 814F6C1C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 814F6C20 | 38 04 FF F8 */	subi r0, r4, 0x8
/* 814F6C24 | 7C 60 04 30 */	srw r0, r3, r0
/* 814F6C28 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 814F6C2C | 7C 79 02 14 */	add r3, r25, r0
/* 814F6C30 | 7C 19 02 2E */	lhzx r0, r25, r0
/* 814F6C34 | A3 23 00 02 */	lhz r25, 0x2(r3)
/* 814F6C38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F6C3C | B0 01 00 1C */	sth r0, 0x1c(r1)
/* 814F6C40 | B3 21 00 1E */	sth r25, 0x1e(r1)
/* 814F6C44 | 41 82 00 10 */	beq .L_814F6C54
/* 814F6C48 | 7C 00 20 50 */	subf r0, r0, r4
/* 814F6C4C | 90 17 00 04 */	stw r0, 0x4(r23)
/* 814F6C50 | 48 00 00 C8 */	b .L_814F6D18
.L_814F6C54:
/* 814F6C54 | 2C 04 00 11 */	cmpwi r4, 0x11
/* 814F6C58 | 83 B7 04 A0 */	lwz r29, 0x4a0(r23)
/* 814F6C5C | 83 37 04 9C */	lwz r25, 0x49c(r23)
/* 814F6C60 | 41 81 00 18 */	bgt .L_814F6C78
/* 814F6C64 | 7E E3 BB 78 */	mr r3, r23
/* 814F6C68 | 4B FF 41 A5 */	bl TMCJPEGDEC_load_buff
/* 814F6C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6C70 | 40 80 00 08 */	bge .L_814F6C78
/* 814F6C74 | 48 00 00 94 */	b .L_814F6D08
.L_814F6C78:
/* 814F6C78 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6C7C | 38 F9 00 24 */	addi r7, r25, 0x24
/* 814F6C80 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814F6C84 | 38 A0 00 09 */	li r5, 0x9
/* 814F6C88 | 38 63 FF F7 */	subi r3, r3, 0x9
/* 814F6C8C | 7C 00 1C 30 */	srw r0, r0, r3
/* 814F6C90 | 90 77 00 04 */	stw r3, 0x4(r23)
/* 814F6C94 | 54 06 05 FE */	clrlwi r6, r0, 23
/* 814F6C98 | 48 00 00 3C */	b .L_814F6CD4
.L_814F6C9C:
/* 814F6C9C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814F6CA0 | 38 E7 00 04 */	addi r7, r7, 0x4
/* 814F6CA4 | 28 05 00 10 */	cmplwi r5, 0x10
/* 814F6CA8 | 40 81 00 0C */	ble .L_814F6CB4
/* 814F6CAC | 38 60 FF 9C */	li r3, -0x64
/* 814F6CB0 | 48 00 00 58 */	b .L_814F6D08
.L_814F6CB4:
/* 814F6CB4 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6CB8 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814F6CBC | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814F6CC0 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814F6CC4 | 7C 00 1C 30 */	srw r0, r0, r3
/* 814F6CC8 | 90 77 00 04 */	stw r3, 0x4(r23)
/* 814F6CCC | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814F6CD0 | 7C C6 03 78 */	or r6, r6, r0
.L_814F6CD4:
/* 814F6CD4 | A0 87 00 00 */	lhz r4, 0x0(r7)
/* 814F6CD8 | A0 67 00 02 */	lhz r3, 0x2(r7)
/* 814F6CDC | B0 81 00 14 */	sth r4, 0x14(r1)
/* 814F6CE0 | B0 61 00 16 */	sth r3, 0x16(r1)
/* 814F6CE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F6CE8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814F6CEC | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 814F6CF0 | 7C 06 00 40 */	cmplw r6, r0
/* 814F6CF4 | 41 81 FF A8 */	bgt .L_814F6C9C
/* 814F6CF8 | 7C 04 30 50 */	subf r0, r4, r6
/* 814F6CFC | 7C 00 1A 14 */	add r0, r0, r3
/* 814F6D00 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814F6D04 | 7C 7D 00 AE */	lbzx r3, r29, r0
.L_814F6D08:
/* 814F6D08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6D0C | 7C 79 1B 78 */	mr r25, r3
/* 814F6D10 | 40 80 00 08 */	bge .L_814F6D18
/* 814F6D14 | 48 00 02 FC */	b .L_814F7010
.L_814F6D18:
/* 814F6D18 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814F6D1C | 83 76 00 00 */	lwz r27, 0x0(r22)
/* 814F6D20 | 41 82 00 64 */	beq .L_814F6D84
/* 814F6D24 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6D28 | 7C 00 C8 00 */	cmpw r0, r25
/* 814F6D2C | 41 81 00 18 */	bgt .L_814F6D44
/* 814F6D30 | 7E E3 BB 78 */	mr r3, r23
/* 814F6D34 | 4B FF 40 D9 */	bl TMCJPEGDEC_load_buff
/* 814F6D38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6D3C | 40 80 00 08 */	bge .L_814F6D44
/* 814F6D40 | 48 00 02 D0 */	b .L_814F7010
.L_814F6D44:
/* 814F6D44 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6D48 | 38 80 00 01 */	li r4, 0x1
/* 814F6D4C | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 814F6D50 | 7C 86 C8 30 */	slw r6, r4, r25
/* 814F6D54 | 7C 99 00 50 */	subf r4, r25, r0
/* 814F6D58 | 38 A6 FF FF */	subi r5, r6, 0x1
/* 814F6D5C | 7C C0 0E 70 */	srawi r0, r6, 1
/* 814F6D60 | 7C 63 24 30 */	srw r3, r3, r4
/* 814F6D64 | 90 97 00 04 */	stw r4, 0x4(r23)
/* 814F6D68 | 7C A3 18 38 */	and r3, r5, r3
/* 814F6D6C | 7C 00 18 00 */	cmpw r0, r3
/* 814F6D70 | 40 81 00 08 */	ble .L_814F6D78
/* 814F6D74 | 7C 65 18 50 */	subf r3, r5, r3
.L_814F6D78:
/* 814F6D78 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 814F6D7C | 7C 00 1A 14 */	add r0, r0, r3
/* 814F6D80 | 90 18 00 00 */	stw r0, 0x0(r24)
.L_814F6D84:
/* 814F6D84 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 814F6D88 | 38 75 00 04 */	addi r3, r21, 0x4
/* 814F6D8C | 38 80 00 00 */	li r4, 0x0
/* 814F6D90 | 38 A0 00 FC */	li r5, 0xfc
/* 814F6D94 | 7C 00 D9 D6 */	mullw r0, r0, r27
/* 814F6D98 | 90 15 00 00 */	stw r0, 0x0(r21)
/* 814F6D9C | 83 97 04 A8 */	lwz r28, 0x4a8(r23)
/* 814F6DA0 | 83 37 04 AC */	lwz r25, 0x4ac(r23)
/* 814F6DA4 | 83 17 04 B0 */	lwz r24, 0x4b0(r23)
/* 814F6DA8 | 4B E3 95 8D */	bl memset
/* 814F6DAC | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6DB0 | 3B 60 00 01 */	li r27, 0x1
/* 814F6DB4 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F6DB8 | 41 81 00 18 */	bgt .L_814F6DD0
/* 814F6DBC | 7E E3 BB 78 */	mr r3, r23
/* 814F6DC0 | 4B FF 40 4D */	bl TMCJPEGDEC_load_buff
/* 814F6DC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6DC8 | 40 80 00 08 */	bge .L_814F6DD0
/* 814F6DCC | 48 00 02 44 */	b .L_814F7010
.L_814F6DD0:
/* 814F6DD0 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6DD4 | 3F A0 81 62 */	lis r29, TMCJPEGDEC_Zigzag_data@ha
/* 814F6DD8 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 814F6DDC | 3B BD E1 B0 */	addi r29, r29, TMCJPEGDEC_Zigzag_data@l
/* 814F6DE0 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 814F6DE4 | 3B E0 00 01 */	li r31, 0x1
/* 814F6DE8 | 7C 80 04 30 */	srw r0, r4, r0
/* 814F6DEC | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 814F6DF0 | 7C 9C 02 14 */	add r4, r28, r0
/* 814F6DF4 | 7C 7C 02 2E */	lhzx r3, r28, r0
/* 814F6DF8 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814F6DFC | B0 61 00 08 */	sth r3, 0x8(r1)
/* 814F6E00 | B0 01 00 0A */	sth r0, 0xa(r1)
.L_814F6E04:
/* 814F6E04 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 814F6E08 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F6E0C | 41 82 00 18 */	beq .L_814F6E24
/* 814F6E10 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6E14 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814F6E18 | 7C 04 00 50 */	subf r0, r4, r0
/* 814F6E1C | 90 17 00 04 */	stw r0, 0x4(r23)
/* 814F6E20 | 48 00 00 C0 */	b .L_814F6EE0
.L_814F6E24:
/* 814F6E24 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6E28 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 814F6E2C | 41 81 00 18 */	bgt .L_814F6E44
/* 814F6E30 | 7E E3 BB 78 */	mr r3, r23
/* 814F6E34 | 4B FF 3F D9 */	bl TMCJPEGDEC_load_buff
/* 814F6E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6E3C | 40 80 00 08 */	bge .L_814F6E44
/* 814F6E40 | 48 00 00 94 */	b .L_814F6ED4
.L_814F6E44:
/* 814F6E44 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6E48 | 38 F9 00 24 */	addi r7, r25, 0x24
/* 814F6E4C | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814F6E50 | 38 A0 00 09 */	li r5, 0x9
/* 814F6E54 | 38 63 FF F7 */	subi r3, r3, 0x9
/* 814F6E58 | 7C 00 1C 30 */	srw r0, r0, r3
/* 814F6E5C | 90 77 00 04 */	stw r3, 0x4(r23)
/* 814F6E60 | 54 06 05 FE */	clrlwi r6, r0, 23
/* 814F6E64 | 48 00 00 3C */	b .L_814F6EA0
.L_814F6E68:
/* 814F6E68 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814F6E6C | 38 E7 00 04 */	addi r7, r7, 0x4
/* 814F6E70 | 28 05 00 10 */	cmplwi r5, 0x10
/* 814F6E74 | 40 81 00 0C */	ble .L_814F6E80
/* 814F6E78 | 38 60 FF 9C */	li r3, -0x64
/* 814F6E7C | 48 00 00 58 */	b .L_814F6ED4
.L_814F6E80:
/* 814F6E80 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6E84 | 54 C6 08 3C */	slwi r6, r6, 1
/* 814F6E88 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814F6E8C | 38 63 FF FF */	subi r3, r3, 0x1
/* 814F6E90 | 7C 00 1C 30 */	srw r0, r0, r3
/* 814F6E94 | 90 77 00 04 */	stw r3, 0x4(r23)
/* 814F6E98 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814F6E9C | 7C C6 03 78 */	or r6, r6, r0
.L_814F6EA0:
/* 814F6EA0 | A0 87 00 00 */	lhz r4, 0x0(r7)
/* 814F6EA4 | A0 67 00 02 */	lhz r3, 0x2(r7)
/* 814F6EA8 | B0 81 00 0C */	sth r4, 0xc(r1)
/* 814F6EAC | B0 61 00 0E */	sth r3, 0xe(r1)
/* 814F6EB0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814F6EB4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814F6EB8 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 814F6EBC | 7C 06 00 40 */	cmplw r6, r0
/* 814F6EC0 | 41 81 FF A8 */	bgt .L_814F6E68
/* 814F6EC4 | 7C 04 30 50 */	subf r0, r4, r6
/* 814F6EC8 | 7C 00 1A 14 */	add r0, r0, r3
/* 814F6ECC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814F6ED0 | 7C 78 00 AE */	lbzx r3, r24, r0
.L_814F6ED4:
/* 814F6ED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6ED8 | 40 80 00 08 */	bge .L_814F6EE0
/* 814F6EDC | 48 00 01 34 */	b .L_814F7010
.L_814F6EE0:
/* 814F6EE0 | 54 7A 07 3F */	clrlwi. r26, r3, 28
/* 814F6EE4 | 41 82 00 AC */	beq .L_814F6F90
/* 814F6EE8 | 7C 60 26 70 */	srawi r0, r3, 4
/* 814F6EEC | 7F 7B 02 14 */	add r27, r27, r0
/* 814F6EF0 | 2C 1B 00 40 */	cmpwi r27, 0x40
/* 814F6EF4 | 41 80 00 0C */	blt .L_814F6F00
/* 814F6EF8 | 38 60 FF 9C */	li r3, -0x64
/* 814F6EFC | 48 00 01 14 */	b .L_814F7010
.L_814F6F00:
/* 814F6F00 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6F04 | 38 1A 00 08 */	addi r0, r26, 0x8
/* 814F6F08 | 7F DD D8 AE */	lbzx r30, r29, r27
/* 814F6F0C | 7C 03 00 00 */	cmpw r3, r0
/* 814F6F10 | 41 81 00 18 */	bgt .L_814F6F28
/* 814F6F14 | 7E E3 BB 78 */	mr r3, r23
/* 814F6F18 | 4B FF 3E F5 */	bl TMCJPEGDEC_load_buff
/* 814F6F1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6F20 | 40 80 00 08 */	bge .L_814F6F28
/* 814F6F24 | 48 00 00 EC */	b .L_814F7010
.L_814F6F28:
/* 814F6F28 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6F2C | 7F E3 D0 30 */	slw r3, r31, r26
/* 814F6F30 | 80 B7 00 00 */	lwz r5, 0x0(r23)
/* 814F6F34 | 38 C3 FF FF */	subi r6, r3, 0x1
/* 814F6F38 | 7C 9A 00 50 */	subf r4, r26, r0
/* 814F6F3C | 7C 60 0E 70 */	srawi r0, r3, 1
/* 814F6F40 | 38 64 FF F8 */	subi r3, r4, 0x8
/* 814F6F44 | 90 97 00 04 */	stw r4, 0x4(r23)
/* 814F6F48 | 7C A3 1C 30 */	srw r3, r5, r3
/* 814F6F4C | 7C A5 24 30 */	srw r5, r5, r4
/* 814F6F50 | 54 63 15 BA */	clrlslwi r3, r3, 24, 2
/* 814F6F54 | 57 C7 15 BA */	clrlslwi r7, r30, 24, 2
/* 814F6F58 | 7C 9C 1A 14 */	add r4, r28, r3
/* 814F6F5C | 7C C5 28 38 */	and r5, r6, r5
/* 814F6F60 | 7C 7C 1A 2E */	lhzx r3, r28, r3
/* 814F6F64 | 7C 00 28 00 */	cmpw r0, r5
/* 814F6F68 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814F6F6C | B0 61 00 08 */	sth r3, 0x8(r1)
/* 814F6F70 | 7C 76 38 2E */	lwzx r3, r22, r7
/* 814F6F74 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814F6F78 | 40 81 00 08 */	ble .L_814F6F80
/* 814F6F7C | 7C A6 28 50 */	subf r5, r6, r5
.L_814F6F80:
/* 814F6F80 | 7C 05 19 D6 */	mullw r0, r5, r3
/* 814F6F84 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814F6F88 | 7C 15 39 2E */	stwx r0, r21, r7
/* 814F6F8C | 48 00 00 58 */	b .L_814F6FE4
.L_814F6F90:
/* 814F6F90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6F94 | 41 82 00 58 */	beq .L_814F6FEC
/* 814F6F98 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 814F6F9C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814F6FA0 | 41 81 00 18 */	bgt .L_814F6FB8
/* 814F6FA4 | 7E E3 BB 78 */	mr r3, r23
/* 814F6FA8 | 4B FF 3E 65 */	bl TMCJPEGDEC_load_buff
/* 814F6FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F6FB0 | 40 80 00 08 */	bge .L_814F6FB8
/* 814F6FB4 | 48 00 00 5C */	b .L_814F7010
.L_814F6FB8:
/* 814F6FB8 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 814F6FBC | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 814F6FC0 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 814F6FC4 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 814F6FC8 | 7C 80 04 30 */	srw r0, r4, r0
/* 814F6FCC | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 814F6FD0 | 7C 9C 02 14 */	add r4, r28, r0
/* 814F6FD4 | 7C 7C 02 2E */	lhzx r3, r28, r0
/* 814F6FD8 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814F6FDC | B0 61 00 08 */	sth r3, 0x8(r1)
/* 814F6FE0 | B0 01 00 0A */	sth r0, 0xa(r1)
.L_814F6FE4:
/* 814F6FE4 | 2C 1B 00 40 */	cmpwi r27, 0x40
/* 814F6FE8 | 41 80 FE 1C */	blt .L_814F6E04
.L_814F6FEC:
/* 814F6FEC | 2C 1B 00 40 */	cmpwi r27, 0x40
/* 814F6FF0 | 40 81 00 0C */	ble .L_814F6FFC
/* 814F6FF4 | 38 60 FF 9C */	li r3, -0x64
/* 814F6FF8 | 48 00 00 18 */	b .L_814F7010
.L_814F6FFC:
/* 814F6FFC | 38 1B FF FF */	subi r0, r27, 0x1
/* 814F7000 | 3C 60 81 62 */	lis r3, TMCJPEGDEC_Zigzag_loop@ha
/* 814F7004 | 54 00 10 3A */	slwi r0, r0, 2
/* 814F7008 | 38 63 E1 F0 */	addi r3, r3, TMCJPEGDEC_Zigzag_loop@l
/* 814F700C | 7C 63 00 2E */	lwzx r3, r3, r0
.L_814F7010:
/* 814F7010 | BA A1 00 24 */	lmw r21, 0x24(r1)
/* 814F7014 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814F7018 | 7C 08 03 A6 */	mtlr r0
/* 814F701C | 38 21 00 50 */	addi r1, r1, 0x50
/* 814F7020 | 4E 80 00 20 */	blr
.endfn TMCJPEGDEC_decode_iquant

# 0x8161E080..0x8161E2F0 | size: 0x270
.rodata
.balign 8

# .rodata:0x0 | 0x8161E080 | size: 0x100
.obj lbl_8161E080, local
	.4byte 0x00000100
	.4byte 0x000000B9
	.4byte 0x000000C4
	.4byte 0x000000DA
	.4byte 0x00000100
	.4byte 0x00000146
	.4byte 0x000001D9
	.4byte 0x000003A0
	.4byte 0x000000B9
	.4byte 0x00000085
	.4byte 0x0000008D
	.4byte 0x0000009D
	.4byte 0x000000B9
	.4byte 0x000000EB
	.4byte 0x00000155
	.4byte 0x0000029D
	.4byte 0x000000C4
	.4byte 0x0000008D
	.4byte 0x00000096
	.4byte 0x000000A7
	.4byte 0x000000C4
	.4byte 0x000000F9
	.4byte 0x0000016A
	.4byte 0x000002C6
	.4byte 0x000000DA
	.4byte 0x0000009D
	.4byte 0x000000A7
	.4byte 0x000000B9
	.4byte 0x000000DA
	.4byte 0x00000115
	.4byte 0x00000192
	.4byte 0x00000315
	.4byte 0x00000100
	.4byte 0x000000B9
	.4byte 0x000000C4
	.4byte 0x000000DA
	.4byte 0x00000100
	.4byte 0x00000146
	.4byte 0x000001D9
	.4byte 0x000003A0
	.4byte 0x00000146
	.4byte 0x000000EB
	.4byte 0x000000F9
	.4byte 0x00000115
	.4byte 0x00000146
	.4byte 0x0000019F
	.4byte 0x0000025A
	.4byte 0x0000049D
	.4byte 0x000001D9
	.4byte 0x00000155
	.4byte 0x0000016A
	.4byte 0x00000192
	.4byte 0x000001D9
	.4byte 0x0000025A
	.4byte 0x0000036A
	.4byte 0x000006B2
	.4byte 0x000003A0
	.4byte 0x0000029D
	.4byte 0x000002C6
	.4byte 0x00000315
	.4byte 0x000003A0
	.4byte 0x0000049D
	.4byte 0x000006B2
	.4byte 0x00000D23
.endobj lbl_8161E080

# .rodata:0x100 | 0x8161E180 | size: 0x18
.obj TMCJPEGDEC_SampleH_N, global
	.byte 0x04, 0x01, 0x01, 0x00, 0x02, 0x01, 0x01, 0x00
	.byte 0x02, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00
	.byte 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00
.endobj TMCJPEGDEC_SampleH_N

# .rodata:0x118 | 0x8161E198 | size: 0x18
.obj TMCJPEGDEC_SampleV_N, global
	.byte 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00
	.byte 0x02, 0x01, 0x01, 0x00, 0x02, 0x01, 0x01, 0x00
	.byte 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00
.endobj TMCJPEGDEC_SampleV_N

# .rodata:0x130 | 0x8161E1B0 | size: 0x40
.obj TMCJPEGDEC_Zigzag_data, global
	.byte 0x00, 0x01, 0x08, 0x10, 0x09, 0x02, 0x03, 0x0A
	.byte 0x11, 0x18, 0x20, 0x19, 0x12, 0x0B, 0x04, 0x05
	.byte 0x0C, 0x13, 0x1A, 0x21, 0x28, 0x30, 0x29, 0x22
	.byte 0x1B, 0x14, 0x0D, 0x06, 0x07, 0x0E, 0x15, 0x1C
	.byte 0x23, 0x2A, 0x31, 0x38, 0x39, 0x32, 0x2B, 0x24
	.byte 0x1D, 0x16, 0x0F, 0x17, 0x1E, 0x25, 0x2C, 0x33
	.byte 0x3A, 0x3B, 0x34, 0x2D, 0x26, 0x1F, 0x27, 0x2E
	.byte 0x35, 0x3C, 0x3D, 0x36, 0x2F, 0x37, 0x3E, 0x3F
.endobj TMCJPEGDEC_Zigzag_data

# .rodata:0x170 | 0x8161E1F0 | size: 0x100
.obj TMCJPEGDEC_Zigzag_loop, global
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000022
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x00000034
	.4byte 0x00000034
	.4byte 0x00000044
	.4byte 0x00000054
	.4byte 0x00000054
	.4byte 0x00000054
	.4byte 0x00000054
	.4byte 0x00000055
	.4byte 0x00000056
	.4byte 0x00000056
	.4byte 0x00000056
	.4byte 0x00000056
	.4byte 0x00000056
	.4byte 0x00000066
	.4byte 0x00000076
	.4byte 0x00000076
	.4byte 0x00000076
	.4byte 0x00000076
	.4byte 0x00000076
	.4byte 0x00000076
	.4byte 0x00000077
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
	.4byte 0x00000088
.endobj TMCJPEGDEC_Zigzag_loop

# 0x816951B8..0x816951C0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816951B8 | size: 0x8
.obj lbl_816951B8, global
	.byte 0x03, 0x03, 0x03, 0x03, 0x03, 0x01, 0x00, 0x00
.endobj lbl_816951B8
