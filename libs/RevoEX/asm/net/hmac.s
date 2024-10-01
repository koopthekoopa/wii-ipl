.include "macros.inc"
.file "hmac.c"

# 0x814944EC..0x814948DC | size: 0x3F0
.text
.balign 4

# .text:0x0 | 0x814944EC | size: 0x23C
.fn NETHMACInit, global
/* 814944EC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814944F0 | 7C 08 02 A6 */	mflr r0
/* 814944F4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814944F8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814944FC | 48 16 4F C5 */	bl _savegpr_27
/* 81494500 | 81 04 00 08 */	lwz r8, 0x8(r4)
/* 81494504 | 7C BB 2B 78 */	mr r27, r5
/* 81494508 | 81 44 00 00 */	lwz r10, 0x0(r4)
/* 8149450C | 3F E0 81 67 */	lis r31, lbl_8166CEE0@ha
/* 81494510 | 81 24 00 04 */	lwz r9, 0x4(r4)
/* 81494514 | 28 08 00 60 */	cmplwi r8, 0x60
/* 81494518 | 80 E4 00 0C */	lwz r7, 0xc(r4)
/* 8149451C | 7C 7E 1B 78 */	mr r30, r3
/* 81494520 | 81 84 00 10 */	lwz r12, 0x10(r4)
/* 81494524 | 7C DC 33 78 */	mr r28, r6
/* 81494528 | 80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8149452C | 3B FF CE E0 */	addi r31, r31, lbl_8166CEE0@l
/* 81494530 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 81494534 | 3B A3 00 20 */	addi r29, r3, 0x20
/* 81494538 | 91 43 00 00 */	stw r10, 0x0(r3)
/* 8149453C | 91 23 00 04 */	stw r9, 0x4(r3)
/* 81494540 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 81494544 | 90 E3 00 0C */	stw r7, 0xc(r3)
/* 81494548 | 91 83 00 10 */	stw r12, 0x10(r3)
/* 8149454C | 90 A3 00 14 */	stw r5, 0x14(r3)
/* 81494550 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81494554 | 41 81 00 0C */	bgt .L_81494560
/* 81494558 | 28 09 00 40 */	cmplwi r9, 0x40
/* 8149455C | 40 81 00 38 */	ble .L_81494594
.L_81494560:
/* 81494560 | 38 7F 00 0C */	addi r3, r31, 0xc
/* 81494564 | 38 DF 00 00 */	addi r6, r31, 0x0
/* 81494568 | 38 8D 9A 70 */	li r4, lbl_81697AB0@sda21
/* 8149456C | 38 A0 00 64 */	li r5, 0x64
/* 81494570 | 4C C6 31 82 */	crclr cr1eq
/* 81494574 | 48 09 A1 2D */	bl OSReport
/* 81494578 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 8149457C | 4C C6 31 82 */	crclr cr1eq
/* 81494580 | 48 09 A1 21 */	bl OSReport
/* 81494584 | 38 6D 9A 78 */	li r3, lbl_81697AB8@sda21
/* 81494588 | 4C C6 31 82 */	crclr cr1eq
/* 8149458C | 48 09 A1 15 */	bl OSReport
/* 81494590 | 48 00 01 80 */	b .L_81494710
.L_81494594:
/* 81494594 | 7C 06 48 40 */	cmplw r6, r9
/* 81494598 | 41 81 00 1C */	bgt .L_814945B4
/* 8149459C | 7F 64 DB 78 */	mr r4, r27
/* 814945A0 | 7F 85 E3 78 */	mr r5, r28
/* 814945A4 | 38 63 00 80 */	addi r3, r3, 0x80
/* 814945A8 | 4B E9 BC 89 */	bl memcpy
/* 814945AC | 93 9E 00 1C */	stw r28, 0x1c(r30)
/* 814945B0 | 48 00 00 44 */	b .L_814945F4
.L_814945B4:
/* 814945B4 | 7F A3 EB 78 */	mr r3, r29
/* 814945B8 | 7D 89 03 A6 */	mtctr r12
/* 814945BC | 4E 80 04 21 */	bctrl
/* 814945C0 | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 814945C4 | 7F A3 EB 78 */	mr r3, r29
/* 814945C8 | 7F 64 DB 78 */	mr r4, r27
/* 814945CC | 7F 85 E3 78 */	mr r5, r28
/* 814945D0 | 7D 89 03 A6 */	mtctr r12
/* 814945D4 | 4E 80 04 21 */	bctrl
/* 814945D8 | 81 9E 00 18 */	lwz r12, 0x18(r30)
/* 814945DC | 7F A3 EB 78 */	mr r3, r29
/* 814945E0 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 814945E4 | 7D 89 03 A6 */	mtctr r12
/* 814945E8 | 4E 80 04 21 */	bctrl
/* 814945EC | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814945F0 | 90 1E 00 1C */	stw r0, 0x1c(r30)
.L_814945F4:
/* 814945F4 | 80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 814945F8 | 3B FE 00 20 */	addi r31, r30, 0x20
/* 814945FC | 38 80 00 00 */	li r4, 0x0
/* 81494600 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81494604 | 41 82 00 CC */	beq .L_814946D0
/* 81494608 | 28 05 00 08 */	cmplwi r5, 0x8
/* 8149460C | 38 65 FF F8 */	subi r3, r5, 0x8
/* 81494610 | 40 81 00 8C */	ble .L_8149469C
/* 81494614 | 38 03 00 07 */	addi r0, r3, 0x7
/* 81494618 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149461C | 54 00 E8 FE */	srwi r0, r0, 3
/* 81494620 | 7C 09 03 A6 */	mtctr r0
/* 81494624 | 28 03 00 00 */	cmplwi r3, 0x0
/* 81494628 | 40 81 00 74 */	ble .L_8149469C
.L_8149462C:
/* 8149462C | 7C 7E 22 14 */	add r3, r30, r4
/* 81494630 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81494634 | 88 03 00 80 */	lbz r0, 0x80(r3)
/* 81494638 | 68 00 00 36 */	xori r0, r0, 0x36
/* 8149463C | 98 06 00 00 */	stb r0, 0x0(r6)
/* 81494640 | 88 03 00 81 */	lbz r0, 0x81(r3)
/* 81494644 | 68 00 00 36 */	xori r0, r0, 0x36
/* 81494648 | 98 06 00 01 */	stb r0, 0x1(r6)
/* 8149464C | 88 03 00 82 */	lbz r0, 0x82(r3)
/* 81494650 | 68 00 00 36 */	xori r0, r0, 0x36
/* 81494654 | 98 06 00 02 */	stb r0, 0x2(r6)
/* 81494658 | 88 03 00 83 */	lbz r0, 0x83(r3)
/* 8149465C | 68 00 00 36 */	xori r0, r0, 0x36
/* 81494660 | 98 06 00 03 */	stb r0, 0x3(r6)
/* 81494664 | 88 03 00 84 */	lbz r0, 0x84(r3)
/* 81494668 | 68 00 00 36 */	xori r0, r0, 0x36
/* 8149466C | 98 06 00 04 */	stb r0, 0x4(r6)
/* 81494670 | 88 03 00 85 */	lbz r0, 0x85(r3)
/* 81494674 | 68 00 00 36 */	xori r0, r0, 0x36
/* 81494678 | 98 06 00 05 */	stb r0, 0x5(r6)
/* 8149467C | 88 03 00 86 */	lbz r0, 0x86(r3)
/* 81494680 | 68 00 00 36 */	xori r0, r0, 0x36
/* 81494684 | 98 06 00 06 */	stb r0, 0x6(r6)
/* 81494688 | 88 03 00 87 */	lbz r0, 0x87(r3)
/* 8149468C | 68 00 00 36 */	xori r0, r0, 0x36
/* 81494690 | 98 06 00 07 */	stb r0, 0x7(r6)
/* 81494694 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81494698 | 42 00 FF 94 */	bdnz .L_8149462C
.L_8149469C:
/* 8149469C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814946A0 | 7C 04 28 50 */	subf r0, r4, r5
/* 814946A4 | 7C C6 22 14 */	add r6, r6, r4
/* 814946A8 | 7C 09 03 A6 */	mtctr r0
/* 814946AC | 7C 04 28 40 */	cmplw r4, r5
/* 814946B0 | 40 80 00 20 */	bge .L_814946D0
.L_814946B4:
/* 814946B4 | 7C 7E 22 14 */	add r3, r30, r4
/* 814946B8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814946BC | 88 03 00 80 */	lbz r0, 0x80(r3)
/* 814946C0 | 68 00 00 36 */	xori r0, r0, 0x36
/* 814946C4 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 814946C8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814946CC | 42 00 FF E8 */	bdnz .L_814946B4
.L_814946D0:
/* 814946D0 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814946D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814946D8 | 7C 63 2A 14 */	add r3, r3, r5
/* 814946DC | 38 80 00 36 */	li r4, 0x36
/* 814946E0 | 7C A5 00 50 */	subf r5, r5, r0
/* 814946E4 | 4B E9 BC 51 */	bl memset
/* 814946E8 | 81 9E 00 10 */	lwz r12, 0x10(r30)
/* 814946EC | 7F E3 FB 78 */	mr r3, r31
/* 814946F0 | 7D 89 03 A6 */	mtctr r12
/* 814946F4 | 4E 80 04 21 */	bctrl
/* 814946F8 | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 814946FC | 7F E3 FB 78 */	mr r3, r31
/* 81494700 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81494704 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 81494708 | 7D 89 03 A6 */	mtctr r12
/* 8149470C | 4E 80 04 21 */	bctrl
.L_81494710:
/* 81494710 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81494714 | 48 16 4D F9 */	bl _restgpr_27
/* 81494718 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8149471C | 7C 08 03 A6 */	mtlr r0
/* 81494720 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81494724 | 4E 80 00 20 */	blr
.endfn NETHMACInit

# .text:0x23C | 0x81494728 | size: 0x10
.fn NETHMACUpdate, global
/* 81494728 | 81 83 00 14 */	lwz r12, 0x14(r3)
/* 8149472C | 7D 89 03 A6 */	mtctr r12
/* 81494730 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81494734 | 4E 80 04 20 */	bctr
.endfn NETHMACUpdate

# .text:0x24C | 0x81494738 | size: 0x1A4
.fn NETHMACGetDigest, global
/* 81494738 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8149473C | 7C 08 02 A6 */	mflr r0
/* 81494740 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 81494744 | 93 E1 00 9C */	stw r31, 0x9c(r1)
/* 81494748 | 93 C1 00 98 */	stw r30, 0x98(r1)
/* 8149474C | 3B C3 00 20 */	addi r30, r3, 0x20
/* 81494750 | 93 A1 00 94 */	stw r29, 0x94(r1)
/* 81494754 | 7C 9D 23 78 */	mr r29, r4
/* 81494758 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8149475C | 93 81 00 90 */	stw r28, 0x90(r1)
/* 81494760 | 7C 7C 1B 78 */	mr r28, r3
/* 81494764 | 81 83 00 18 */	lwz r12, 0x18(r3)
/* 81494768 | 7F C3 F3 78 */	mr r3, r30
/* 8149476C | 7D 89 03 A6 */	mtctr r12
/* 81494770 | 4E 80 04 21 */	bctrl
/* 81494774 | 80 BC 00 1C */	lwz r5, 0x1c(r28)
/* 81494778 | 7F DF F3 78 */	mr r31, r30
/* 8149477C | 38 80 00 00 */	li r4, 0x0
/* 81494780 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81494784 | 41 82 00 CC */	beq .L_81494850
/* 81494788 | 28 05 00 08 */	cmplwi r5, 0x8
/* 8149478C | 38 65 FF F8 */	subi r3, r5, 0x8
/* 81494790 | 40 81 00 8C */	ble .L_8149481C
/* 81494794 | 38 03 00 07 */	addi r0, r3, 0x7
/* 81494798 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149479C | 54 00 E8 FE */	srwi r0, r0, 3
/* 814947A0 | 7C 09 03 A6 */	mtctr r0
/* 814947A4 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814947A8 | 40 81 00 74 */	ble .L_8149481C
.L_814947AC:
/* 814947AC | 7C 7C 22 14 */	add r3, r28, r4
/* 814947B0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 814947B4 | 88 03 00 80 */	lbz r0, 0x80(r3)
/* 814947B8 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 814947BC | 98 06 00 00 */	stb r0, 0x0(r6)
/* 814947C0 | 88 03 00 81 */	lbz r0, 0x81(r3)
/* 814947C4 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 814947C8 | 98 06 00 01 */	stb r0, 0x1(r6)
/* 814947CC | 88 03 00 82 */	lbz r0, 0x82(r3)
/* 814947D0 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 814947D4 | 98 06 00 02 */	stb r0, 0x2(r6)
/* 814947D8 | 88 03 00 83 */	lbz r0, 0x83(r3)
/* 814947DC | 68 00 00 5C */	xori r0, r0, 0x5c
/* 814947E0 | 98 06 00 03 */	stb r0, 0x3(r6)
/* 814947E4 | 88 03 00 84 */	lbz r0, 0x84(r3)
/* 814947E8 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 814947EC | 98 06 00 04 */	stb r0, 0x4(r6)
/* 814947F0 | 88 03 00 85 */	lbz r0, 0x85(r3)
/* 814947F4 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 814947F8 | 98 06 00 05 */	stb r0, 0x5(r6)
/* 814947FC | 88 03 00 86 */	lbz r0, 0x86(r3)
/* 81494800 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 81494804 | 98 06 00 06 */	stb r0, 0x6(r6)
/* 81494808 | 88 03 00 87 */	lbz r0, 0x87(r3)
/* 8149480C | 68 00 00 5C */	xori r0, r0, 0x5c
/* 81494810 | 98 06 00 07 */	stb r0, 0x7(r6)
/* 81494814 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81494818 | 42 00 FF 94 */	bdnz .L_814947AC
.L_8149481C:
/* 8149481C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81494820 | 7C 04 28 50 */	subf r0, r4, r5
/* 81494824 | 7C C6 22 14 */	add r6, r6, r4
/* 81494828 | 7C 09 03 A6 */	mtctr r0
/* 8149482C | 7C 04 28 40 */	cmplw r4, r5
/* 81494830 | 40 80 00 20 */	bge .L_81494850
.L_81494834:
/* 81494834 | 7C 7C 22 14 */	add r3, r28, r4
/* 81494838 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8149483C | 88 03 00 80 */	lbz r0, 0x80(r3)
/* 81494840 | 68 00 00 5C */	xori r0, r0, 0x5c
/* 81494844 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 81494848 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8149484C | 42 00 FF E8 */	bdnz .L_81494834
.L_81494850:
/* 81494850 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 81494854 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81494858 | 7C 63 2A 14 */	add r3, r3, r5
/* 8149485C | 38 80 00 5C */	li r4, 0x5c
/* 81494860 | 7C A5 00 50 */	subf r5, r5, r0
/* 81494864 | 4B E9 BA D1 */	bl memset
/* 81494868 | 81 9C 00 10 */	lwz r12, 0x10(r28)
/* 8149486C | 7F E3 FB 78 */	mr r3, r31
/* 81494870 | 7D 89 03 A6 */	mtctr r12
/* 81494874 | 4E 80 04 21 */	bctrl
/* 81494878 | 81 9C 00 14 */	lwz r12, 0x14(r28)
/* 8149487C | 7F E3 FB 78 */	mr r3, r31
/* 81494880 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81494884 | 80 BC 00 04 */	lwz r5, 0x4(r28)
/* 81494888 | 7D 89 03 A6 */	mtctr r12
/* 8149488C | 4E 80 04 21 */	bctrl
/* 81494890 | 81 9C 00 14 */	lwz r12, 0x14(r28)
/* 81494894 | 7F C3 F3 78 */	mr r3, r30
/* 81494898 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8149489C | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 814948A0 | 7D 89 03 A6 */	mtctr r12
/* 814948A4 | 4E 80 04 21 */	bctrl
/* 814948A8 | 81 9C 00 18 */	lwz r12, 0x18(r28)
/* 814948AC | 7F C3 F3 78 */	mr r3, r30
/* 814948B0 | 7F A4 EB 78 */	mr r4, r29
/* 814948B4 | 7D 89 03 A6 */	mtctr r12
/* 814948B8 | 4E 80 04 21 */	bctrl
/* 814948BC | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 814948C0 | 83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 814948C4 | 83 C1 00 98 */	lwz r30, 0x98(r1)
/* 814948C8 | 83 A1 00 94 */	lwz r29, 0x94(r1)
/* 814948CC | 83 81 00 90 */	lwz r28, 0x90(r1)
/* 814948D0 | 7C 08 03 A6 */	mtlr r0
/* 814948D4 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 814948D8 | 4E 80 00 20 */	blr
.endfn NETHMACGetDigest

# 0x8166CEE0..0x8166CF38 | size: 0x58
.data
.balign 8

# .data:0x0 | 0x8166CEE0 | size: 0x58
.obj lbl_8166CEE0, global
	.4byte 0x4E455448
	.4byte 0x4D414349
	.4byte 0x6E697400
	.4byte 0x25732825
	.4byte 0x64293A5B
	.4byte 0x7761726E
	.4byte 0x696E6720
	.4byte 0x696E2025
	.4byte 0x735D0000
	.4byte 0x00000000
	.4byte 0x73706563
	.4byte 0x69666965
	.4byte 0x6420696E
	.4byte 0x74657266
	.4byte 0x61636520
	.4byte 0x6E656564
	.4byte 0x7320746F
	.4byte 0x6F206C61
	.4byte 0x72676520
	.4byte 0x776F726B
	.4byte 0x6D656D6F
	.4byte 0x72792E00
.endobj lbl_8166CEE0

# 0x81697AB0..0x81697AC0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697AB0 | size: 0x8
.obj lbl_81697AB0, global
	.4byte 0x686D6163
	.4byte 0x2E630000
.endobj lbl_81697AB0

# .sdata:0x8 | 0x81697AB8 | size: 0x8
.obj lbl_81697AB8, global
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_81697AB8