.include "macros.inc"
.file "RFL_NWC24.c"

# 0x81330C58..0x81330C78 | size: 0x20
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330C58 | size: 0x8
.obj "@etb_81330C58", local
.hidden "@etb_81330C58"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330C58"

# extab:0x8 | 0x81330C60 | size: 0x8
.obj "@etb_81330C60", local
.hidden "@etb_81330C60"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330C60"

# extab:0x10 | 0x81330C68 | size: 0x8
.obj "@etb_81330C68", local
.hidden "@etb_81330C68"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330C68"

# extab:0x18 | 0x81330C70 | size: 0x8
.obj "@etb_81330C70", local
.hidden "@etb_81330C70"
	.4byte 0x70080000
	.4byte 0x00000000
.endobj "@etb_81330C70"

# 0x81331C14..0x81331C44 | size: 0x30
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331C14 | size: 0xC
.obj "@eti_81331C14", local
.hidden "@eti_81331C14"
	.4byte RFLiNWC24Msg2CharData
	.4byte 0x00000078
	.4byte "@etb_81330C58"
.endobj "@eti_81331C14"

# extabindex:0xC | 0x81331C20 | size: 0xC
.obj "@eti_81331C20", local
.hidden "@eti_81331C20"
	.4byte RFLiSetOfficial2NWC24Msg
	.4byte 0x000000D8
	.4byte "@etb_81330C60"
.endobj "@eti_81331C20"

# extabindex:0x18 | 0x81331C2C | size: 0xC
.obj "@eti_81331C2C", local
.hidden "@eti_81331C2C"
	.4byte RFLiNWC24Msg2HiddenAsync
	.4byte 0x00000188
	.4byte "@etb_81330C68"
.endobj "@eti_81331C2C"

# extabindex:0x24 | 0x81331C38 | size: 0xC
.obj "@eti_81331C38", local
.hidden "@eti_81331C38"
	.4byte makeNWC24MsgforExchange_
	.4byte 0x000008D0
	.4byte "@etb_81330C70"
.endobj "@eti_81331C38"

# 0x814E9358..0x814E9F08 | size: 0xBB0
.text
.balign 4

# .text:0x0 | 0x814E9358 | size: 0x78
.fn RFLiNWC24Msg2CharData, global
/* 814E9358 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814E935C | 7C 08 02 A6 */	mflr r0
/* 814E9360 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814E9364 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 814E9368 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814E936C | 7C 7E 1B 78 */	mr r30, r3
/* 814E9370 | 7C 83 23 78 */	mr r3, r4
/* 814E9374 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E9378 | 4B FB F4 3D */	bl NWC24ReadMsgFaceData
/* 814E937C | 7C 7F 1B 78 */	mr r31, r3
/* 814E9380 | 3C 60 81 67 */	lis r3, lbl_8166F0F0@ha
/* 814E9384 | 7F E4 FB 78 */	mr r4, r31
/* 814E9388 | 38 63 F0 F0 */	addi r3, r3, lbl_8166F0F0@l
/* 814E938C | 4C C6 31 82 */	crclr cr1eq
/* 814E9390 | 48 04 53 11 */	bl OSReport
/* 814E9394 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E9398 | 41 82 00 0C */	beq .L_814E93A4
/* 814E939C | 38 60 00 00 */	li r3, 0x0
/* 814E93A0 | 48 00 00 18 */	b .L_814E93B8
.L_814E93A4:
/* 814E93A4 | 7F C3 F3 78 */	mr r3, r30
/* 814E93A8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E93AC | 38 A0 00 4A */	li r5, 0x4a
/* 814E93B0 | 4B E4 6E 81 */	bl memcpy
/* 814E93B4 | 38 60 00 01 */	li r3, 0x1
.L_814E93B8:
/* 814E93B8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814E93BC | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814E93C0 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814E93C4 | 7C 08 03 A6 */	mtlr r0
/* 814E93C8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814E93CC | 4E 80 00 20 */	blr
.endfn RFLiNWC24Msg2CharData

# .text:0x78 | 0x814E93D0 | size: 0xD8
.fn RFLiSetOfficial2NWC24Msg, global
/* 814E93D0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E93D4 | 7C 08 02 A6 */	mflr r0
/* 814E93D8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E93DC | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E93E0 | 7C 9F 23 78 */	mr r31, r4
/* 814E93E4 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E93E8 | 7C BE 2B 78 */	mr r30, r5
/* 814E93EC | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E93F0 | 7C 7D 1B 78 */	mr r29, r3
/* 814E93F4 | 4B FF 18 41 */	bl RFLAvailable
/* 814E93F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E93FC | 40 82 00 0C */	bne .L_814E9408
/* 814E9400 | 38 60 00 01 */	li r3, 0x1
/* 814E9404 | 48 00 00 88 */	b .L_814E948C
.L_814E9408:
/* 814E9408 | 7F C4 F3 78 */	mr r4, r30
/* 814E940C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E9410 | 4B FF C9 D5 */	bl RFLiGetCharRawData
/* 814E9414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9418 | 41 82 00 08 */	beq .L_814E9420
/* 814E941C | 48 00 00 70 */	b .L_814E948C
.L_814E9420:
/* 814E9420 | 4B FF D2 15 */	bl RFLiGetIsolation
/* 814E9424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9428 | 41 82 00 10 */	beq .L_814E9438
/* 814E942C | A0 01 00 28 */	lhz r0, 0x28(r1)
/* 814E9430 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814E9434 | B0 01 00 28 */	sth r0, 0x28(r1)
.L_814E9438:
/* 814E9438 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814E943C | 7F E3 FB 78 */	mr r3, r31
/* 814E9440 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E9444 | 38 A0 00 4A */	li r5, 0x4a
/* 814E9448 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814E944C | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814E9450 | 4B E4 6D E1 */	bl memcpy
/* 814E9454 | 7F A3 EB 78 */	mr r3, r29
/* 814E9458 | 7F E4 FB 78 */	mr r4, r31
/* 814E945C | 4B FB 81 25 */	bl NWC24SetMsgFaceData
/* 814E9460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9464 | 7C 7E 1B 78 */	mr r30, r3
/* 814E9468 | 41 82 00 20 */	beq .L_814E9488
/* 814E946C | 3B E0 00 0C */	li r31, 0xc
/* 814E9470 | 4B FF 18 8D */	bl RFLiGetManager
/* 814E9474 | 93 E3 1B 40 */	stw r31, 0x1b40(r3)
/* 814E9478 | 4B FF 18 85 */	bl RFLiGetManager
/* 814E947C | 93 C3 1B 48 */	stw r30, 0x1b48(r3)
/* 814E9480 | 38 60 00 0C */	li r3, 0xc
/* 814E9484 | 48 00 00 08 */	b .L_814E948C
.L_814E9488:
/* 814E9488 | 38 60 00 00 */	li r3, 0x0
.L_814E948C:
/* 814E948C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E9490 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E9494 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E9498 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E949C | 7C 08 03 A6 */	mtlr r0
/* 814E94A0 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E94A4 | 4E 80 00 20 */	blr
.endfn RFLiSetOfficial2NWC24Msg

# .text:0x150 | 0x814E94A8 | size: 0x188
.fn RFLiNWC24Msg2HiddenAsync, global
/* 814E94A8 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 814E94AC | 7C 08 02 A6 */	mflr r0
/* 814E94B0 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 814E94B4 | 93 E1 01 3C */	stw r31, 0x13c(r1)
/* 814E94B8 | 3F E0 81 67 */	lis r31, lbl_8166F0F0@ha
/* 814E94BC | 3B FF F0 F0 */	addi r31, r31, lbl_8166F0F0@l
/* 814E94C0 | 93 C1 01 38 */	stw r30, 0x138(r1)
/* 814E94C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814E94C8 | 4B FF 17 6D */	bl RFLAvailable
/* 814E94CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E94D0 | 40 82 00 18 */	bne .L_814E94E8
/* 814E94D4 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 814E94D8 | 4C C6 31 82 */	crclr cr1eq
/* 814E94DC | 48 04 51 C5 */	bl OSReport
/* 814E94E0 | 38 60 00 01 */	li r3, 0x1
/* 814E94E4 | 48 00 01 34 */	b .L_814E9618
.L_814E94E8:
/* 814E94E8 | 4B FF D1 4D */	bl RFLiGetIsolation
/* 814E94EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E94F0 | 41 82 00 18 */	beq .L_814E9508
/* 814E94F4 | 38 7F 00 48 */	addi r3, r31, 0x48
/* 814E94F8 | 4C C6 31 82 */	crclr cr1eq
/* 814E94FC | 48 04 51 A5 */	bl OSReport
/* 814E9500 | 38 60 00 11 */	li r3, 0x11
/* 814E9504 | 48 00 01 14 */	b .L_814E9618
.L_814E9508:
/* 814E9508 | 7F C3 F3 78 */	mr r3, r30
/* 814E950C | 38 81 00 48 */	addi r4, r1, 0x48
/* 814E9510 | 4B FB F2 A5 */	bl NWC24ReadMsgFaceData
/* 814E9514 | 7C 7E 1B 78 */	mr r30, r3
/* 814E9518 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814E951C | 7F C4 F3 78 */	mr r4, r30
/* 814E9520 | 4C C6 31 82 */	crclr cr1eq
/* 814E9524 | 48 04 51 7D */	bl OSReport
/* 814E9528 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814E952C | 41 82 00 0C */	beq .L_814E9538
/* 814E9530 | 38 00 00 00 */	li r0, 0x0
/* 814E9534 | 48 00 00 18 */	b .L_814E954C
.L_814E9538:
/* 814E9538 | 38 61 00 E8 */	addi r3, r1, 0xe8
/* 814E953C | 38 81 00 48 */	addi r4, r1, 0x48
/* 814E9540 | 38 A0 00 4A */	li r5, 0x4a
/* 814E9544 | 4B E4 6C ED */	bl memcpy
/* 814E9548 | 38 00 00 01 */	li r0, 0x1
.L_814E954C:
/* 814E954C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E9550 | 40 82 00 18 */	bne .L_814E9568
/* 814E9554 | 38 7F 00 68 */	addi r3, r31, 0x68
/* 814E9558 | 4C C6 31 82 */	crclr cr1eq
/* 814E955C | 48 04 51 45 */	bl OSReport
/* 814E9560 | 38 60 00 0A */	li r3, 0xa
/* 814E9564 | 48 00 00 B4 */	b .L_814E9618
.L_814E9568:
/* 814E9568 | 38 61 01 00 */	addi r3, r1, 0x100
/* 814E956C | 4B FF CE 15 */	bl RFLiIsValidID
/* 814E9570 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9574 | 40 82 00 18 */	bne .L_814E958C
/* 814E9578 | 38 7F 00 94 */	addi r3, r31, 0x94
/* 814E957C | 4C C6 31 82 */	crclr cr1eq
/* 814E9580 | 48 04 51 21 */	bl OSReport
/* 814E9584 | 38 60 00 07 */	li r3, 0x7
/* 814E9588 | 48 00 00 90 */	b .L_814E9618
.L_814E958C:
/* 814E958C | A0 01 01 08 */	lhz r0, 0x108(r1)
/* 814E9590 | 54 00 F7 FE */	extrwi r0, r0, 1, 29
/* 814E9594 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814E9598 | 40 82 00 18 */	bne .L_814E95B0
/* 814E959C | 38 7F 00 B0 */	addi r3, r31, 0xb0
/* 814E95A0 | 4C C6 31 82 */	crclr cr1eq
/* 814E95A4 | 48 04 50 FD */	bl OSReport
/* 814E95A8 | 38 60 00 11 */	li r3, 0x11
/* 814E95AC | 48 00 00 6C */	b .L_814E9618
.L_814E95B0:
/* 814E95B0 | 38 61 00 E8 */	addi r3, r1, 0xe8
/* 814E95B4 | 38 81 00 98 */	addi r4, r1, 0x98
/* 814E95B8 | 4B FF C4 A1 */	bl RFLiConvertRaw2Info
/* 814E95BC | 38 61 00 98 */	addi r3, r1, 0x98
/* 814E95C0 | 4B FF F4 D5 */	bl RFLiCheckValidInfo
/* 814E95C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E95C8 | 40 82 00 18 */	bne .L_814E95E0
/* 814E95CC | 38 7F 00 D8 */	addi r3, r31, 0xd8
/* 814E95D0 | 4C C6 31 82 */	crclr cr1eq
/* 814E95D4 | 48 04 50 CD */	bl OSReport
/* 814E95D8 | 38 60 00 07 */	li r3, 0x7
/* 814E95DC | 48 00 00 3C */	b .L_814E9618
.L_814E95E0:
/* 814E95E0 | A0 01 00 E8 */	lhz r0, 0xe8(r1)
/* 814E95E4 | 38 61 00 E8 */	addi r3, r1, 0xe8
/* 814E95E8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E95EC | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814E95F0 | B0 01 00 E8 */	sth r0, 0xe8(r1)
/* 814E95F4 | 4B FF C7 91 */	bl RFLiConvertRaw2HRaw
/* 814E95F8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E95FC | 4B FF B3 FD */	bl RFLiOneDataToHiddenDB
/* 814E9600 | 7C 7E 1B 78 */	mr r30, r3
/* 814E9604 | 38 7F 00 F4 */	addi r3, r31, 0xf4
/* 814E9608 | 7F C4 F3 78 */	mr r4, r30
/* 814E960C | 4C C6 31 82 */	crclr cr1eq
/* 814E9610 | 48 04 50 91 */	bl OSReport
/* 814E9614 | 7F C3 F3 78 */	mr r3, r30
.L_814E9618:
/* 814E9618 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 814E961C | 83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 814E9620 | 83 C1 01 38 */	lwz r30, 0x138(r1)
/* 814E9624 | 7C 08 03 A6 */	mtlr r0
/* 814E9628 | 38 21 01 40 */	addi r1, r1, 0x140
/* 814E962C | 4E 80 00 20 */	blr
.endfn RFLiNWC24Msg2HiddenAsync

# .text:0x2D8 | 0x814E9630 | size: 0x8D0
.fn makeNWC24MsgforExchange_, local
/* 814E9630 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814E9634 | 7C 2C 0B 78 */	mr r12, r1
/* 814E9638 | 21 6B F0 00 */	subfic r11, r11, -0x1000
/* 814E963C | 7C 21 59 6E */	stwux r1, r1, r11
/* 814E9640 | 7C 08 02 A6 */	mflr r0
/* 814E9644 | 7D 8B 63 78 */	mr r11, r12
/* 814E9648 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814E964C | 48 10 FE 51 */	bl _savegpr_18
/* 814E9650 | 3F C0 81 67 */	lis r30, lbl_8166F0F0@ha
/* 814E9654 | 7C 74 1B 78 */	mr r20, r3
/* 814E9658 | 7C 95 23 78 */	mr r21, r4
/* 814E965C | 7C B2 2B 78 */	mr r18, r5
/* 814E9660 | 3B DE F0 F0 */	addi r30, r30, lbl_8166F0F0@l
/* 814E9664 | 3B 80 00 00 */	li r28, 0x0
/* 814E9668 | 3B 60 00 00 */	li r27, 0x0
/* 814E966C | 3B 40 00 01 */	li r26, 0x1
/* 814E9670 | 48 04 C6 29 */	bl OSGetTick
/* 814E9674 | 3B 00 00 00 */	li r24, 0x0
/* 814E9678 | 7C 79 1B 78 */	mr r25, r3
/* 814E967C | 7C 14 C0 40 */	cmplw r20, r24
/* 814E9680 | 40 82 00 0C */	bne .L_814E968C
/* 814E9684 | 38 60 00 0F */	li r3, 0xf
/* 814E9688 | 48 00 08 5C */	b .L_814E9EE4
.L_814E968C:
/* 814E968C | 4B FF 15 A9 */	bl RFLAvailable
/* 814E9690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9694 | 40 82 00 0C */	bne .L_814E96A0
/* 814E9698 | 38 60 00 01 */	li r3, 0x1
/* 814E969C | 48 00 08 48 */	b .L_814E9EE4
.L_814E96A0:
/* 814E96A0 | 4B FF CF 95 */	bl RFLiGetIsolation
/* 814E96A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E96A8 | 41 82 00 0C */	beq .L_814E96B4
/* 814E96AC | 38 60 00 11 */	li r3, 0x11
/* 814E96B0 | 48 00 08 34 */	b .L_814E9EE4
.L_814E96B4:
/* 814E96B4 | 48 04 C5 CD */	bl OSGetTime
/* 814E96B8 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 814E96BC | 48 04 C8 A9 */	bl OSTicksToCalendarTime
/* 814E96C0 | 4B FF 15 C1 */	bl RFLiGetDBManager
/* 814E96C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814E96C8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814E96CC | 88 63 1C FE */	lbz r3, 0x1cfe(r3)
/* 814E96D0 | 7C 00 18 00 */	cmpw r0, r3
/* 814E96D4 | 40 82 00 3C */	bne .L_814E9710
/* 814E96D8 | 4B FF 15 A9 */	bl RFLiGetDBManager
/* 814E96DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814E96E0 | 80 81 00 48 */	lwz r4, 0x48(r1)
/* 814E96E4 | 88 03 1C FD */	lbz r0, 0x1cfd(r3)
/* 814E96E8 | 7C 04 00 00 */	cmpw r4, r0
/* 814E96EC | 40 82 00 24 */	bne .L_814E9710
/* 814E96F0 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814E96F4 | 41 82 00 0C */	beq .L_814E9700
/* 814E96F8 | 38 60 00 08 */	li r3, 0x8
/* 814E96FC | 48 00 07 E8 */	b .L_814E9EE4
.L_814E9700:
/* 814E9700 | 80 A1 00 44 */	lwz r5, 0x44(r1)
/* 814E9704 | 38 7E 01 14 */	addi r3, r30, 0x114
/* 814E9708 | 4C C6 31 82 */	crclr cr1eq
/* 814E970C | 48 04 4F 95 */	bl OSReport
.L_814E9710:
/* 814E9710 | 38 60 00 64 */	li r3, 0x64
/* 814E9714 | 4B FF D7 51 */	bl RFLGetMiddleDBBufferSize
/* 814E9718 | 4B FF 15 45 */	bl RFLiAlloc32
/* 814E971C | 38 00 00 0C */	li r0, 0xc
/* 814E9720 | 7C 77 1B 78 */	mr r23, r3
/* 814E9724 | 38 81 03 D0 */	addi r4, r1, 0x3d0
/* 814E9728 | 3A 40 00 00 */	li r18, 0x0
/* 814E972C | 38 60 00 00 */	li r3, 0x0
/* 814E9730 | 7C 09 03 A6 */	mtctr r0
.L_814E9734:
/* 814E9734 | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9738 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E973C | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9740 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9744 | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9748 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E974C | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9750 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9754 | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9758 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E975C | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9760 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9764 | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9768 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E976C | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9770 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9774 | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9778 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E977C | 7E 44 19 2E */	stwx r18, r4, r3
/* 814E9780 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9784 | 42 00 FF B0 */	bdnz .L_814E9734
/* 814E9788 | 7E E5 BB 78 */	mr r5, r23
/* 814E978C | 38 61 00 20 */	addi r3, r1, 0x20
/* 814E9790 | 38 80 00 00 */	li r4, 0x0
/* 814E9794 | 38 C0 00 64 */	li r6, 0x64
/* 814E9798 | 4B FF D6 D5 */	bl RFLInitMiddleDB
/* 814E979C | 38 61 00 20 */	addi r3, r1, 0x20
/* 814E97A0 | 4B FF E2 CD */	bl RFLUpdateMiddleDBAsync
/* 814E97A4 | 4B FF 16 11 */	bl RFLWaitAsync
/* 814E97A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E97AC | 41 82 00 0C */	beq .L_814E97B8
/* 814E97B0 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 814E97B4 | 40 82 00 10 */	bne .L_814E97C4
.L_814E97B8:
/* 814E97B8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814E97BC | 4B FF E4 45 */	bl RFLGetMiddleDBStoredSize
/* 814E97C0 | 7C 72 1B 78 */	mr r18, r3
.L_814E97C4:
/* 814E97C4 | 56 5F 04 3F */	clrlwi. r31, r18, 16
/* 814E97C8 | 41 82 00 5C */	beq .L_814E9824
/* 814E97CC | 3A 41 03 D0 */	addi r18, r1, 0x3d0
/* 814E97D0 | 3A C0 00 00 */	li r22, 0x0
/* 814E97D4 | 3A 60 00 00 */	li r19, 0x0
/* 814E97D8 | 48 00 00 44 */	b .L_814E981C
.L_814E97DC:
/* 814E97DC | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 814E97E0 | 7C 60 9A 14 */	add r3, r0, r19
/* 814E97E4 | A0 03 00 20 */	lhz r0, 0x20(r3)
/* 814E97E8 | 54 00 F7 FF */	extrwi. r0, r0, 1, 29
/* 814E97EC | 40 82 00 28 */	bne .L_814E9814
/* 814E97F0 | 38 60 00 4A */	li r3, 0x4a
/* 814E97F4 | 4B FF 14 69 */	bl RFLiAlloc32
/* 814E97F8 | 57 84 13 BA */	clrlslwi r4, r28, 16, 2
/* 814E97FC | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 814E9800 | 7C 72 21 2E */	stwx r3, r18, r4
/* 814E9804 | 7C 60 9A 14 */	add r3, r0, r19
/* 814E9808 | 7C 92 20 2E */	lwzx r4, r18, r4
/* 814E980C | 4B FF C5 19 */	bl RFLiConvertHRaw2Raw
/* 814E9810 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814E9814:
/* 814E9814 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814E9818 | 3A 73 00 40 */	addi r19, r19, 0x40
.L_814E981C:
/* 814E981C | 7C 16 F8 00 */	cmpw r22, r31
/* 814E9820 | 41 80 FF BC */	blt .L_814E97DC
.L_814E9824:
/* 814E9824 | 7E E3 BB 78 */	mr r3, r23
/* 814E9828 | 4B FF 14 49 */	bl RFLiFree
/* 814E982C | 4B FF C7 0D */	bl RFLGetAvailableOfficialDataNum
/* 814E9830 | 7C 72 1B 78 */	mr r18, r3
/* 814E9834 | 54 63 0B FC */	clrlslwi r3, r3, 16, 1
/* 814E9838 | 4B FF 14 11 */	bl RFLiAlloc
/* 814E983C | 3A 60 00 00 */	li r19, 0x0
/* 814E9840 | 7C 76 1B 78 */	mr r22, r3
/* 814E9844 | 7C 03 98 40 */	cmplw r3, r19
/* 814E9848 | 40 82 00 38 */	bne .L_814E9880
/* 814E984C | 3A 41 03 D0 */	addi r18, r1, 0x3d0
/* 814E9850 | 3B E0 00 00 */	li r31, 0x0
/* 814E9854 | 3A 80 00 00 */	li r20, 0x0
.L_814E9858:
/* 814E9858 | 7C 72 A0 2E */	lwzx r3, r18, r20
/* 814E985C | 7C 03 98 40 */	cmplw r3, r19
/* 814E9860 | 41 82 00 08 */	beq .L_814E9868
/* 814E9864 | 4B FF 14 0D */	bl RFLiFree
.L_814E9868:
/* 814E9868 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E986C | 3A 94 00 04 */	addi r20, r20, 0x4
/* 814E9870 | 28 1F 00 78 */	cmplwi r31, 0x78
/* 814E9874 | 41 80 FF E4 */	blt .L_814E9858
/* 814E9878 | 38 60 00 05 */	li r3, 0x5
/* 814E987C | 48 00 06 68 */	b .L_814E9EE4
.L_814E9880:
/* 814E9880 | 56 52 04 3E */	clrlwi r18, r18, 16
/* 814E9884 | 3B E0 00 00 */	li r31, 0x0
/* 814E9888 | 3A E0 00 00 */	li r23, 0x0
.L_814E988C:
/* 814E988C | 56 E3 04 3E */	clrlwi r3, r23, 16
/* 814E9890 | 4B FF C6 6D */	bl RFLIsAvailableOfficialData
/* 814E9894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9898 | 41 82 00 40 */	beq .L_814E98D8
/* 814E989C | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 814E98A0 | 56 E4 04 3E */	clrlwi r4, r23, 16
/* 814E98A4 | 4B FF C5 B5 */	bl RFLiGetCharInfo
/* 814E98A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E98AC | 40 82 00 2C */	bne .L_814E98D8
/* 814E98B0 | A0 01 00 F4 */	lhz r0, 0xf4(r1)
/* 814E98B4 | 3B 00 00 01 */	li r24, 0x1
/* 814E98B8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814E98BC | 40 82 00 1C */	bne .L_814E98D8
/* 814E98C0 | 57 E3 0B FC */	clrlslwi r3, r31, 16, 1
/* 814E98C4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E98C8 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814E98CC | 7E F6 1B 2E */	sthx r23, r22, r3
/* 814E98D0 | 7C 00 90 40 */	cmplw r0, r18
/* 814E98D4 | 40 80 00 10 */	bge .L_814E98E4
.L_814E98D8:
/* 814E98D8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 814E98DC | 28 17 00 64 */	cmplwi r23, 0x64
/* 814E98E0 | 41 80 FF AC */	blt .L_814E988C
.L_814E98E4:
/* 814E98E4 | 57 E8 04 3E */	clrlwi r8, r31, 16
/* 814E98E8 | 3C 60 03 2F */	lis r3, 0x32f
/* 814E98EC | 38 E8 FF FF */	subi r7, r8, 0x1
/* 814E98F0 | 3A E0 00 00 */	li r23, 0x0
/* 814E98F4 | 38 63 D8 B7 */	subi r3, r3, 0x2749
/* 814E98F8 | 48 00 00 58 */	b .L_814E9950
.L_814E98FC:
/* 814E98FC | 57 24 84 3E */	srwi r4, r25, 16
/* 814E9900 | 56 E0 04 3E */	clrlwi r0, r23, 16
/* 814E9904 | 7C 84 CA 14 */	add r4, r4, r25
/* 814E9908 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814E990C | 7C 85 3B 96 */	divwu r4, r5, r7
/* 814E9910 | 7C 84 39 D6 */	mullw r4, r4, r7
/* 814E9914 | 7C 84 28 50 */	subf r4, r4, r5
/* 814E9918 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814E991C | 7C 04 00 40 */	cmplw r4, r0
/* 814E9920 | 41 80 00 08 */	blt .L_814E9928
/* 814E9924 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814E9928:
/* 814E9928 | 54 86 0B FC */	clrlslwi r6, r4, 16, 1
/* 814E992C | 56 E5 0B FC */	clrlslwi r5, r23, 16, 1
/* 814E9930 | 3C 99 02 ED */	addis r4, r25, 0x2ed
/* 814E9934 | 7D 36 32 2E */	lhzx r9, r22, r6
/* 814E9938 | 38 04 47 B1 */	addi r0, r4, 0x47b1
/* 814E993C | 7C 96 2A 2E */	lhzx r4, r22, r5
/* 814E9940 | 7F 20 19 D6 */	mullw r25, r0, r3
/* 814E9944 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 814E9948 | 7C 96 33 2E */	sthx r4, r22, r6
/* 814E994C | 7D 36 2B 2E */	sthx r9, r22, r5
.L_814E9950:
/* 814E9950 | 56 E0 04 3E */	clrlwi r0, r23, 16
/* 814E9954 | 7C 00 38 00 */	cmpw r0, r7
/* 814E9958 | 41 80 FF A4 */	blt .L_814E98FC
/* 814E995C | 28 08 00 14 */	cmplwi r8, 0x14
/* 814E9960 | 40 81 00 08 */	ble .L_814E9968
/* 814E9964 | 3B E0 00 14 */	li r31, 0x14
.L_814E9968:
/* 814E9968 | 3A 41 03 D0 */	addi r18, r1, 0x3d0
/* 814E996C | 57 F3 04 3E */	clrlwi r19, r31, 16
/* 814E9970 | 3A E0 00 00 */	li r23, 0x0
/* 814E9974 | 48 00 00 40 */	b .L_814E99B4
.L_814E9978:
/* 814E9978 | 56 E0 0B FC */	clrlslwi r0, r23, 16, 1
/* 814E997C | 38 61 00 60 */	addi r3, r1, 0x60
/* 814E9980 | 7C 96 02 2E */	lhzx r4, r22, r0
/* 814E9984 | 4B FF C4 D5 */	bl RFLiGetCharInfo
/* 814E9988 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E998C | 40 82 00 24 */	bne .L_814E99B0
/* 814E9990 | 38 60 00 4A */	li r3, 0x4a
/* 814E9994 | 4B FF 12 C9 */	bl RFLiAlloc32
/* 814E9998 | 57 80 13 BA */	clrlslwi r0, r28, 16, 2
/* 814E999C | 7C 72 01 2E */	stwx r3, r18, r0
/* 814E99A0 | 38 61 00 60 */	addi r3, r1, 0x60
/* 814E99A4 | 7C 92 00 2E */	lwzx r4, r18, r0
/* 814E99A8 | 4B FF C2 FD */	bl RFLiConvertInfo2Raw
/* 814E99AC | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814E99B0:
/* 814E99B0 | 3A F7 00 01 */	addi r23, r23, 0x1
.L_814E99B4:
/* 814E99B4 | 56 E0 04 3E */	clrlwi r0, r23, 16
/* 814E99B8 | 7C 00 98 40 */	cmplw r0, r19
/* 814E99BC | 41 80 FF BC */	blt .L_814E9978
/* 814E99C0 | 7E C3 B3 78 */	mr r3, r22
/* 814E99C4 | 4B FF 12 AD */	bl RFLiFree
/* 814E99C8 | 38 7E 01 3C */	addi r3, r30, 0x13c
/* 814E99CC | 57 84 04 3E */	clrlwi r4, r28, 16
/* 814E99D0 | 4C C6 31 82 */	crclr cr1eq
/* 814E99D4 | 48 04 4C CD */	bl OSReport
/* 814E99D8 | 57 84 04 3F */	clrlwi. r4, r28, 16
/* 814E99DC | 40 82 00 4C */	bne .L_814E9A28
/* 814E99E0 | 3A A1 03 D0 */	addi r21, r1, 0x3d0
/* 814E99E4 | 3B E0 00 00 */	li r31, 0x0
/* 814E99E8 | 3A 80 00 00 */	li r20, 0x0
/* 814E99EC | 3A 60 00 00 */	li r19, 0x0
.L_814E99F0:
/* 814E99F0 | 7C 75 A0 2E */	lwzx r3, r21, r20
/* 814E99F4 | 7C 03 98 40 */	cmplw r3, r19
/* 814E99F8 | 41 82 00 08 */	beq .L_814E9A00
/* 814E99FC | 4B FF 12 75 */	bl RFLiFree
.L_814E9A00:
/* 814E9A00 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E9A04 | 3A 94 00 04 */	addi r20, r20, 0x4
/* 814E9A08 | 28 1F 00 78 */	cmplwi r31, 0x78
/* 814E9A0C | 41 80 FF E4 */	blt .L_814E99F0
/* 814E9A10 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814E9A14 | 41 82 00 0C */	beq .L_814E9A20
/* 814E9A18 | 38 60 00 11 */	li r3, 0x11
/* 814E9A1C | 48 00 04 C8 */	b .L_814E9EE4
.L_814E9A20:
/* 814E9A20 | 38 60 00 0A */	li r3, 0xa
/* 814E9A24 | 48 00 04 C0 */	b .L_814E9EE4
.L_814E9A28:
/* 814E9A28 | 7C 19 23 96 */	divwu r0, r25, r4
/* 814E9A2C | 3A E1 03 D0 */	addi r23, r1, 0x3d0
/* 814E9A30 | 7E A3 AB 78 */	mr r3, r21
/* 814E9A34 | 38 A0 00 4A */	li r5, 0x4a
/* 814E9A38 | 7C 00 21 D6 */	mullw r0, r0, r4
/* 814E9A3C | 7C 00 C8 50 */	subf r0, r0, r25
/* 814E9A40 | 54 00 10 3A */	slwi r0, r0, 2
/* 814E9A44 | 7C 97 00 2E */	lwzx r4, r23, r0
/* 814E9A48 | 4B E4 67 E9 */	bl memcpy
/* 814E9A4C | A0 75 00 20 */	lhz r3, 0x20(r21)
/* 814E9A50 | 3B E0 00 00 */	li r31, 0x0
/* 814E9A54 | A0 15 00 00 */	lhz r0, 0x0(r21)
/* 814E9A58 | 3A C0 00 00 */	li r22, 0x0
/* 814E9A5C | 54 63 07 B8 */	rlwinm r3, r3, 0, 30, 28
/* 814E9A60 | 3A 60 00 00 */	li r19, 0x0
/* 814E9A64 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814E9A68 | B0 75 00 20 */	sth r3, 0x20(r21)
/* 814E9A6C | B0 15 00 00 */	sth r0, 0x0(r21)
.L_814E9A70:
/* 814E9A70 | 7C 77 B0 2E */	lwzx r3, r23, r22
/* 814E9A74 | 7C 03 98 40 */	cmplw r3, r19
/* 814E9A78 | 41 82 00 08 */	beq .L_814E9A80
/* 814E9A7C | 4B FF 11 F5 */	bl RFLiFree
.L_814E9A80:
/* 814E9A80 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E9A84 | 3A D6 00 04 */	addi r22, r22, 0x4
/* 814E9A88 | 28 1F 00 78 */	cmplwi r31, 0x78
/* 814E9A8C | 41 80 FF E4 */	blt .L_814E9A70
/* 814E9A90 | 4B FF 25 FD */	bl RFLiStartWorking
/* 814E9A94 | 38 00 00 0A */	li r0, 0xa
/* 814E9A98 | 38 81 02 40 */	addi r4, r1, 0x240
/* 814E9A9C | 38 60 00 00 */	li r3, 0x0
/* 814E9AA0 | 38 A0 00 00 */	li r5, 0x0
/* 814E9AA4 | 7C 09 03 A6 */	mtctr r0
.L_814E9AA8:
/* 814E9AA8 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AAC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AB0 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AB4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AB8 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9ABC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AC0 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AC4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AC8 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9ACC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AD0 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AD4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AD8 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9ADC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AE0 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AE4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AE8 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AEC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AF0 | 7C A4 19 2E */	stwx r5, r4, r3
/* 814E9AF4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814E9AF8 | 42 00 FF B0 */	bdnz .L_814E9AA8
/* 814E9AFC | 3A 61 02 40 */	addi r19, r1, 0x240
/* 814E9B00 | 3B E0 00 00 */	li r31, 0x0
.L_814E9B04:
/* 814E9B04 | 7F E4 FB 78 */	mr r4, r31
/* 814E9B08 | 38 61 01 00 */	addi r3, r1, 0x100
/* 814E9B0C | 3A 40 00 00 */	li r18, 0x0
/* 814E9B10 | 4B FC 2B 99 */	bl NWC24ReadFriendInfo
/* 814E9B14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9B18 | 40 82 00 24 */	bne .L_814E9B3C
/* 814E9B1C | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 814E9B20 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814E9B24 | 40 82 00 2C */	bne .L_814E9B50
/* 814E9B28 | 80 01 01 00 */	lwz r0, 0x100(r1)
/* 814E9B2C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814E9B30 | 40 82 00 20 */	bne .L_814E9B50
/* 814E9B34 | 3A 40 00 01 */	li r18, 0x1
/* 814E9B38 | 48 00 00 18 */	b .L_814E9B50
.L_814E9B3C:
/* 814E9B3C | 2C 03 FF FB */	cmpwi r3, -0x5
/* 814E9B40 | 41 82 00 10 */	beq .L_814E9B50
/* 814E9B44 | 7C 7D 1B 78 */	mr r29, r3
/* 814E9B48 | 3B 40 00 00 */	li r26, 0x0
/* 814E9B4C | 48 00 00 38 */	b .L_814E9B84
.L_814E9B50:
/* 814E9B50 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814E9B54 | 41 82 00 24 */	beq .L_814E9B78
/* 814E9B58 | 38 60 01 40 */	li r3, 0x140
/* 814E9B5C | 4B FF 11 01 */	bl RFLiAlloc32
/* 814E9B60 | 57 60 13 BA */	clrlslwi r0, r27, 16, 2
/* 814E9B64 | 38 81 01 00 */	addi r4, r1, 0x100
/* 814E9B68 | 7C 73 01 2E */	stwx r3, r19, r0
/* 814E9B6C | 38 A0 01 40 */	li r5, 0x140
/* 814E9B70 | 4B E4 66 C1 */	bl memcpy
/* 814E9B74 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814E9B78:
/* 814E9B78 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E9B7C | 28 1F 00 64 */	cmplwi r31, 0x64
/* 814E9B80 | 41 80 FF 84 */	blt .L_814E9B04
.L_814E9B84:
/* 814E9B84 | 57 7F 04 3E */	clrlwi r31, r27, 16
/* 814E9B88 | 28 1F 00 08 */	cmplwi r31, 0x8
/* 814E9B8C | 41 81 00 68 */	bgt .L_814E9BF4
/* 814E9B90 | 3B 01 02 40 */	addi r24, r1, 0x240
/* 814E9B94 | 3A 61 05 B0 */	addi r19, r1, 0x5b0
/* 814E9B98 | 3A 40 00 00 */	li r18, 0x0
/* 814E9B9C | 3A C0 00 00 */	li r22, 0x0
/* 814E9BA0 | 3A E0 00 00 */	li r23, 0x0
/* 814E9BA4 | 48 00 00 40 */	b .L_814E9BE4
.L_814E9BA8:
/* 814E9BA8 | 38 61 05 B0 */	addi r3, r1, 0x5b0
/* 814E9BAC | 7C 98 B8 2E */	lwzx r4, r24, r23
/* 814E9BB0 | 7C 63 B2 14 */	add r3, r3, r22
/* 814E9BB4 | 38 A0 01 40 */	li r5, 0x140
/* 814E9BB8 | 4B E4 66 79 */	bl memcpy
/* 814E9BBC | 7C D3 B2 14 */	add r6, r19, r22
/* 814E9BC0 | 7E 44 93 78 */	mr r4, r18
/* 814E9BC4 | 80 A6 00 40 */	lwz r5, 0x40(r6)
/* 814E9BC8 | 38 7E 01 54 */	addi r3, r30, 0x154
/* 814E9BCC | 80 C6 00 44 */	lwz r6, 0x44(r6)
/* 814E9BD0 | 4C C6 31 82 */	crclr cr1eq
/* 814E9BD4 | 48 04 4A CD */	bl OSReport
/* 814E9BD8 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814E9BDC | 3A D6 01 40 */	addi r22, r22, 0x140
/* 814E9BE0 | 3A F7 00 04 */	addi r23, r23, 0x4
.L_814E9BE4:
/* 814E9BE4 | 7C 12 F8 00 */	cmpw r18, r31
/* 814E9BE8 | 41 80 FF C0 */	blt .L_814E9BA8
/* 814E9BEC | 7F 72 DB 78 */	mr r18, r27
/* 814E9BF0 | 48 00 01 8C */	b .L_814E9D7C
.L_814E9BF4:
/* 814E9BF4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E9BF8 | 3C 80 03 2F */	lis r4, 0x32f
/* 814E9BFC | 38 C4 D8 B7 */	subi r6, r4, 0x2749
/* 814E9C00 | 7F E3 FB 78 */	mr r3, r31
/* 814E9C04 | 38 A1 02 40 */	addi r5, r1, 0x240
/* 814E9C08 | 38 80 00 00 */	li r4, 0x0
/* 814E9C0C | 40 81 01 14 */	ble .L_814E9D20
/* 814E9C10 | 57 E0 F0 BF */	srwi. r0, r31, 2
/* 814E9C14 | 7C 09 03 A6 */	mtctr r0
/* 814E9C18 | 41 82 00 D0 */	beq .L_814E9CE8
.L_814E9C1C:
/* 814E9C1C | 3C F9 02 ED */	addis r7, r25, 0x2ed
/* 814E9C20 | 7D 05 20 2E */	lwzx r8, r5, r4
/* 814E9C24 | 38 67 47 B1 */	addi r3, r7, 0x47b1
/* 814E9C28 | 7F 23 31 D6 */	mullw r25, r3, r6
/* 814E9C2C | 7C 19 FB 96 */	divwu r0, r25, r31
/* 814E9C30 | 3C F9 02 ED */	addis r7, r25, 0x2ed
/* 814E9C34 | 38 67 47 B1 */	addi r3, r7, 0x47b1
/* 814E9C38 | 7C 00 F9 D6 */	mullw r0, r0, r31
/* 814E9C3C | 7C 00 C8 50 */	subf r0, r0, r25
/* 814E9C40 | 7F 23 31 D6 */	mullw r25, r3, r6
/* 814E9C44 | 54 03 10 3A */	slwi r3, r0, 2
/* 814E9C48 | 7C 05 18 2E */	lwzx r0, r5, r3
/* 814E9C4C | 7C 05 21 2E */	stwx r0, r5, r4
/* 814E9C50 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814E9C54 | 7C 19 FB 96 */	divwu r0, r25, r31
/* 814E9C58 | 7D 05 19 2E */	stwx r8, r5, r3
/* 814E9C5C | 3C F9 02 ED */	addis r7, r25, 0x2ed
/* 814E9C60 | 38 67 47 B1 */	addi r3, r7, 0x47b1
/* 814E9C64 | 7D 05 20 2E */	lwzx r8, r5, r4
/* 814E9C68 | 7C 00 F9 D6 */	mullw r0, r0, r31
/* 814E9C6C | 7C 00 C8 50 */	subf r0, r0, r25
/* 814E9C70 | 7F 23 31 D6 */	mullw r25, r3, r6
/* 814E9C74 | 54 03 10 3A */	slwi r3, r0, 2
/* 814E9C78 | 7C 05 18 2E */	lwzx r0, r5, r3
/* 814E9C7C | 7C 05 21 2E */	stwx r0, r5, r4
/* 814E9C80 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814E9C84 | 7C 19 FB 96 */	divwu r0, r25, r31
/* 814E9C88 | 7D 05 19 2E */	stwx r8, r5, r3
/* 814E9C8C | 3C F9 02 ED */	addis r7, r25, 0x2ed
/* 814E9C90 | 38 67 47 B1 */	addi r3, r7, 0x47b1
/* 814E9C94 | 7D 05 20 2E */	lwzx r8, r5, r4
/* 814E9C98 | 7C 00 F9 D6 */	mullw r0, r0, r31
/* 814E9C9C | 7C 00 C8 50 */	subf r0, r0, r25
/* 814E9CA0 | 7F 23 31 D6 */	mullw r25, r3, r6
/* 814E9CA4 | 54 03 10 3A */	slwi r3, r0, 2
/* 814E9CA8 | 7C 05 18 2E */	lwzx r0, r5, r3
/* 814E9CAC | 7C 05 21 2E */	stwx r0, r5, r4
/* 814E9CB0 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814E9CB4 | 7C 19 FB 96 */	divwu r0, r25, r31
/* 814E9CB8 | 7D 05 19 2E */	stwx r8, r5, r3
/* 814E9CBC | 7D 05 20 2E */	lwzx r8, r5, r4
/* 814E9CC0 | 7C 00 F9 D6 */	mullw r0, r0, r31
/* 814E9CC4 | 7C 00 C8 50 */	subf r0, r0, r25
/* 814E9CC8 | 54 03 10 3A */	slwi r3, r0, 2
/* 814E9CCC | 7C 05 18 2E */	lwzx r0, r5, r3
/* 814E9CD0 | 7C 05 21 2E */	stwx r0, r5, r4
/* 814E9CD4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814E9CD8 | 7D 05 19 2E */	stwx r8, r5, r3
/* 814E9CDC | 42 00 FF 40 */	bdnz .L_814E9C1C
/* 814E9CE0 | 73 E3 00 03 */	andi. r3, r31, 0x3
/* 814E9CE4 | 41 82 00 3C */	beq .L_814E9D20
.L_814E9CE8:
/* 814E9CE8 | 7C 69 03 A6 */	mtctr r3
.L_814E9CEC:
/* 814E9CEC | 3C F9 02 ED */	addis r7, r25, 0x2ed
/* 814E9CF0 | 7D 05 20 2E */	lwzx r8, r5, r4
/* 814E9CF4 | 38 67 47 B1 */	addi r3, r7, 0x47b1
/* 814E9CF8 | 7F 23 31 D6 */	mullw r25, r3, r6
/* 814E9CFC | 7C 19 FB 96 */	divwu r0, r25, r31
/* 814E9D00 | 7C 00 F9 D6 */	mullw r0, r0, r31
/* 814E9D04 | 7C 00 C8 50 */	subf r0, r0, r25
/* 814E9D08 | 54 03 10 3A */	slwi r3, r0, 2
/* 814E9D0C | 7C 05 18 2E */	lwzx r0, r5, r3
/* 814E9D10 | 7C 05 21 2E */	stwx r0, r5, r4
/* 814E9D14 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814E9D18 | 7D 05 19 2E */	stwx r8, r5, r3
/* 814E9D1C | 42 00 FF D0 */	bdnz .L_814E9CEC
.L_814E9D20:
/* 814E9D20 | 3B 01 02 40 */	addi r24, r1, 0x240
/* 814E9D24 | 3A 61 05 B0 */	addi r19, r1, 0x5b0
/* 814E9D28 | 3A 40 00 00 */	li r18, 0x0
/* 814E9D2C | 3A C0 00 00 */	li r22, 0x0
/* 814E9D30 | 3A E0 00 00 */	li r23, 0x0
.L_814E9D34:
/* 814E9D34 | 38 61 05 B0 */	addi r3, r1, 0x5b0
/* 814E9D38 | 7C 98 B8 2E */	lwzx r4, r24, r23
/* 814E9D3C | 7C 63 B2 14 */	add r3, r3, r22
/* 814E9D40 | 38 A0 01 40 */	li r5, 0x140
/* 814E9D44 | 4B E4 64 ED */	bl memcpy
/* 814E9D48 | 7C D3 B2 14 */	add r6, r19, r22
/* 814E9D4C | 7E 44 93 78 */	mr r4, r18
/* 814E9D50 | 80 A6 00 40 */	lwz r5, 0x40(r6)
/* 814E9D54 | 38 7E 01 6C */	addi r3, r30, 0x16c
/* 814E9D58 | 80 C6 00 44 */	lwz r6, 0x44(r6)
/* 814E9D5C | 4C C6 31 82 */	crclr cr1eq
/* 814E9D60 | 48 04 49 41 */	bl OSReport
/* 814E9D64 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814E9D68 | 3A F7 00 04 */	addi r23, r23, 0x4
/* 814E9D6C | 2C 12 00 08 */	cmpwi r18, 0x8
/* 814E9D70 | 3A D6 01 40 */	addi r22, r22, 0x140
/* 814E9D74 | 41 80 FF C0 */	blt .L_814E9D34
/* 814E9D78 | 3A 40 00 08 */	li r18, 0x8
.L_814E9D7C:
/* 814E9D7C | 3A E1 02 40 */	addi r23, r1, 0x240
/* 814E9D80 | 3B E0 00 00 */	li r31, 0x0
/* 814E9D84 | 3A C0 00 00 */	li r22, 0x0
/* 814E9D88 | 3A 60 00 00 */	li r19, 0x0
.L_814E9D8C:
/* 814E9D8C | 7C 77 B0 2E */	lwzx r3, r23, r22
/* 814E9D90 | 7C 03 98 40 */	cmplw r3, r19
/* 814E9D94 | 41 82 00 08 */	beq .L_814E9D9C
/* 814E9D98 | 4B FF 0E D9 */	bl RFLiFree
.L_814E9D9C:
/* 814E9D9C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E9DA0 | 3A D6 00 04 */	addi r22, r22, 0x4
/* 814E9DA4 | 28 1F 00 64 */	cmplwi r31, 0x64
/* 814E9DA8 | 41 80 FF E4 */	blt .L_814E9D8C
/* 814E9DAC | 57 60 04 3F */	clrlwi. r0, r27, 16
/* 814E9DB0 | 40 82 00 14 */	bne .L_814E9DC4
/* 814E9DB4 | 38 60 00 10 */	li r3, 0x10
/* 814E9DB8 | 4B FF 23 A9 */	bl RFLiEndWorking
/* 814E9DBC | 38 60 00 10 */	li r3, 0x10
/* 814E9DC0 | 48 00 01 24 */	b .L_814E9EE4
.L_814E9DC4:
/* 814E9DC4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814E9DC8 | 41 82 00 20 */	beq .L_814E9DE8
/* 814E9DCC | 7E 83 A3 78 */	mr r3, r20
/* 814E9DD0 | 38 80 00 02 */	li r4, 0x2
/* 814E9DD4 | 4B FB 70 D1 */	bl NWC24InitMsgObj
/* 814E9DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9DDC | 7C 7D 1B 78 */	mr r29, r3
/* 814E9DE0 | 41 82 00 08 */	beq .L_814E9DE8
/* 814E9DE4 | 3B 40 00 00 */	li r26, 0x0
.L_814E9DE8:
/* 814E9DE8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814E9DEC | 41 82 00 50 */	beq .L_814E9E3C
/* 814E9DF0 | 56 53 04 3E */	clrlwi r19, r18, 16
/* 814E9DF4 | 3A E1 05 B0 */	addi r23, r1, 0x5b0
/* 814E9DF8 | 3A 40 00 00 */	li r18, 0x0
/* 814E9DFC | 3A C0 00 00 */	li r22, 0x0
/* 814E9E00 | 48 00 00 34 */	b .L_814E9E34
.L_814E9E04:
/* 814E9E04 | 7C 97 B2 14 */	add r4, r23, r22
/* 814E9E08 | 7E 83 A3 78 */	mr r3, r20
/* 814E9E0C | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 814E9E10 | 80 C4 00 44 */	lwz r6, 0x44(r4)
/* 814E9E14 | 4B FB 72 81 */	bl NWC24SetMsgToId
/* 814E9E18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9E1C | 7C 7D 1B 78 */	mr r29, r3
/* 814E9E20 | 41 82 00 0C */	beq .L_814E9E2C
/* 814E9E24 | 3B 40 00 00 */	li r26, 0x0
/* 814E9E28 | 48 00 00 14 */	b .L_814E9E3C
.L_814E9E2C:
/* 814E9E2C | 3A 52 00 01 */	addi r18, r18, 0x1
/* 814E9E30 | 3A D6 01 40 */	addi r22, r22, 0x140
.L_814E9E34:
/* 814E9E34 | 7C 12 98 00 */	cmpw r18, r19
/* 814E9E38 | 41 80 FF CC */	blt .L_814E9E04
.L_814E9E3C:
/* 814E9E3C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814E9E40 | 41 82 00 20 */	beq .L_814E9E60
/* 814E9E44 | 7E 83 A3 78 */	mr r3, r20
/* 814E9E48 | 7E A4 AB 78 */	mr r4, r21
/* 814E9E4C | 4B FB 77 35 */	bl NWC24SetMsgFaceData
/* 814E9E50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9E54 | 7C 7D 1B 78 */	mr r29, r3
/* 814E9E58 | 41 82 00 08 */	beq .L_814E9E60
/* 814E9E5C | 3B 40 00 00 */	li r26, 0x0
.L_814E9E60:
/* 814E9E60 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814E9E64 | 40 82 00 28 */	bne .L_814E9E8C
/* 814E9E68 | 7F A4 EB 78 */	mr r4, r29
/* 814E9E6C | 38 7E 01 80 */	addi r3, r30, 0x180
/* 814E9E70 | 4C C6 31 82 */	crclr cr1eq
/* 814E9E74 | 48 04 48 2D */	bl OSReport
/* 814E9E78 | 7F A4 EB 78 */	mr r4, r29
/* 814E9E7C | 38 60 00 0C */	li r3, 0xc
/* 814E9E80 | 4B FF 22 5D */	bl RFLiEndWorkingReason
/* 814E9E84 | 3A 40 00 0C */	li r18, 0xc
/* 814E9E88 | 48 00 00 58 */	b .L_814E9EE0
.L_814E9E8C:
/* 814E9E8C | 80 01 00 48 */	lwz r0, 0x48(r1)
/* 814E9E90 | 54 13 06 3E */	clrlwi r19, r0, 24
/* 814E9E94 | 4B FF 0D ED */	bl RFLiGetDBManager
/* 814E9E98 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814E9E9C | 9A 63 1C FD */	stb r19, 0x1cfd(r3)
/* 814E9EA0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814E9EA4 | 54 13 06 3E */	clrlwi r19, r0, 24
/* 814E9EA8 | 4B FF 0D D9 */	bl RFLiGetDBManager
/* 814E9EAC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814E9EB0 | 38 7E 01 A0 */	addi r3, r30, 0x1a0
/* 814E9EB4 | 9A 64 1C FE */	stb r19, 0x1cfe(r4)
/* 814E9EB8 | 4C C6 31 82 */	crclr cr1eq
/* 814E9EBC | 48 04 47 E5 */	bl OSReport
/* 814E9EC0 | 38 60 00 00 */	li r3, 0x0
/* 814E9EC4 | 4B FF B5 B1 */	bl RFLiSaveDatabaseAsync
/* 814E9EC8 | 4B FF 0E ED */	bl RFLWaitAsync
/* 814E9ECC | 7C 72 1B 78 */	mr r18, r3
/* 814E9ED0 | 38 7E 01 B8 */	addi r3, r30, 0x1b8
/* 814E9ED4 | 7E 44 93 78 */	mr r4, r18
/* 814E9ED8 | 4C C6 31 82 */	crclr cr1eq
/* 814E9EDC | 48 04 47 C5 */	bl OSReport
.L_814E9EE0:
/* 814E9EE0 | 7E 43 93 78 */	mr r3, r18
.L_814E9EE4:
/* 814E9EE4 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814E9EE8 | 7D 4B 53 78 */	mr r11, r10
/* 814E9EEC | 48 10 F5 FD */	bl _restgpr_18
/* 814E9EF0 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814E9EF4 | 7C 08 03 A6 */	mtlr r0
/* 814E9EF8 | 7D 41 53 78 */	mr r1, r10
/* 814E9EFC | 4E 80 00 20 */	blr
.endfn makeNWC24MsgforExchange_

# .text:0xBA8 | 0x814E9F00 | size: 0x8
.fn RFLiMakeNWC24MsgforExchange, global
/* 814E9F00 | 38 A0 00 01 */	li r5, 0x1
/* 814E9F04 | 4B FF F7 2C */	b makeNWC24MsgforExchange_
.endfn RFLiMakeNWC24MsgforExchange

# 0x8166F0F0..0x8166F2C8 | size: 0x1D8
.data
.balign 8

# .data:0x0 | 0x8166F0F0 | size: 0x1D8
.obj lbl_8166F0F0, global
	.4byte 0x5B52464C
	.4byte 0x5D4E5743
	.4byte 0x32345265
	.4byte 0x61644D73
	.4byte 0x67466163
	.4byte 0x65446174
	.4byte 0x613A2065
	.4byte 0x7272636F
	.4byte 0x64653D25
	.4byte 0x640A0000
	.4byte 0x5B52464C
	.4byte 0x5D204C69
	.4byte 0x62726172
	.4byte 0x79204E6F
	.4byte 0x7420496E
	.4byte 0x6974697A
	.4byte 0x6C697A65
	.4byte 0x642E0A00
	.4byte 0x5B52464C
	.4byte 0x5D204973
	.4byte 0x6F6C6174
	.4byte 0x696F6E20
	.4byte 0x466C6167
	.4byte 0x20697320
	.4byte 0x56616C69
	.4byte 0x642E0A00
	.4byte 0x5B52464C
	.4byte 0x5D207069
	.4byte 0x636B2075
	.4byte 0x70206672
	.4byte 0x6F6D204E
	.4byte 0x57433234
	.4byte 0x4D736720
	.4byte 0x77617320
	.4byte 0x6661696C
	.4byte 0x65642E0A
	.4byte 0x00000000
	.4byte 0x5B52464C
	.4byte 0x5D20496E
	.4byte 0x76616C69
	.4byte 0x64204372
	.4byte 0x65617465
	.4byte 0x49442E0A
	.4byte 0x00000000
	.4byte 0x5B52464C
	.4byte 0x5D206368
	.4byte 0x61722049
	.4byte 0x736F6C61
	.4byte 0x74696F6E
	.4byte 0x20466C61
	.4byte 0x67206973
	.4byte 0x2056616C
	.4byte 0x69642E0A
	.4byte 0x00000000
	.4byte 0x5B52464C
	.4byte 0x5D20496E
	.4byte 0x76616C69
	.4byte 0x64207061
	.4byte 0x72747320
	.4byte 0x64617461
	.4byte 0x2E0A0000
	.4byte 0x5B52464C
	.4byte 0x5D205361
	.4byte 0x76652053
	.4byte 0x74617274
	.4byte 0x2E206572
	.4byte 0x72636F64
	.4byte 0x653D2564
	.4byte 0x0A000000
	.4byte 0x5B52464C
	.4byte 0x5D204C61
	.4byte 0x73742053
	.4byte 0x656E6420
	.4byte 0x44617465
	.4byte 0x3A202564
	.4byte 0x2F256420
	.4byte 0x62757420
	.4byte 0x73656E64
	.4byte 0x2E0A0000
	.4byte 0x5B52464C
	.4byte 0x5D53656E
	.4byte 0x644E756D
	.4byte 0x3A202564
	.4byte 0x204D6969
	.4byte 0x730A0000
	.4byte 0x5B52464C
	.4byte 0x5D53656E
	.4byte 0x6420546F
	.4byte 0x3A25643D
	.4byte 0x256C6C64
	.4byte 0x0A000000
	.4byte 0x53656E64
	.4byte 0x20546F5B
	.4byte 0x25645D3A
	.4byte 0x20256C6C
	.4byte 0x640A0000
	.4byte 0x5B52464C
	.4byte 0x5D206E77
	.4byte 0x63323420
	.4byte 0x6661696C
	.4byte 0x20657272
	.4byte 0x636F6465
	.4byte 0x3D25640A
	.4byte 0x00000000
	.4byte 0x5B52464C
	.4byte 0x5D206E77
	.4byte 0x63323420
	.4byte 0x73756363
	.4byte 0x6573732E
	.4byte 0x0A000000
	.4byte 0x5B52464C
	.4byte 0x5D205361
	.4byte 0x76652044
	.4byte 0x6174652E
	.4byte 0x20657272
	.4byte 0x636F6465
	.4byte 0x3D25640A
	.4byte 0x00000000
.endobj lbl_8166F0F0
