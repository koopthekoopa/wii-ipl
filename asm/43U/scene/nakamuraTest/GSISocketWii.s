.include "macros.inc"
.file "GSISocketWii.c"

# 0x813D6384..0x813D6660 | size: 0x2DC
.text
.balign 4

# .text:0x0 | 0x813D6384 | size: 0x14
.fn CheckRcode, global
/* 813D6384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6388 | 4C 80 00 20 */	bgelr
/* 813D638C | 90 6D AB 5C */	stw r3, lbl_81698B9C@sda21(r0)
/* 813D6390 | 7C 83 23 78 */	mr r3, r4
/* 813D6394 | 4E 80 00 20 */	blr
.endfn CheckRcode

# .text:0x14 | 0x813D6398 | size: 0x2C
.fn socket, global
/* 813D6398 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D639C | 7C 08 02 A6 */	mflr r0
/* 813D63A0 | 38 A0 00 00 */	li r5, 0x0
/* 813D63A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D63A8 | 48 0D CC C5 */	bl SOSocket
/* 813D63AC | 38 80 FF FF */	li r4, -0x1
/* 813D63B0 | 4B FF FF D5 */	bl CheckRcode
/* 813D63B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D63B8 | 7C 08 03 A6 */	mtlr r0
/* 813D63BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D63C0 | 4E 80 00 20 */	blr
.endfn socket

# .text:0x40 | 0x813D63C4 | size: 0x28
.fn closesocket, global
/* 813D63C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D63C8 | 7C 08 02 A6 */	mflr r0
/* 813D63CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D63D0 | 48 0D CD 8D */	bl SOClose
/* 813D63D4 | 38 80 FF FF */	li r4, -0x1
/* 813D63D8 | 4B FF FF AD */	bl CheckRcode
/* 813D63DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D63E0 | 7C 08 03 A6 */	mtlr r0
/* 813D63E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D63E8 | 4E 80 00 20 */	blr
.endfn closesocket

# .text:0x68 | 0x813D63EC | size: 0x50
.fn recvfrom, global
/* 813D63EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D63F0 | 7C 08 02 A6 */	mflr r0
/* 813D63F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D63F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D63FC | 7D 1F 43 78 */	mr r31, r8
/* 813D6400 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D6404 | 7C FE 3B 78 */	mr r30, r7
/* 813D6408 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 813D640C | 98 07 00 00 */	stb r0, 0x0(r7)
/* 813D6410 | 48 0D D0 BD */	bl SORecvFrom
/* 813D6414 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 813D6418 | 38 80 FF FF */	li r4, -0x1
/* 813D641C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813D6420 | 4B FF FF 65 */	bl CheckRcode
/* 813D6424 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6428 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D642C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D6430 | 7C 08 03 A6 */	mtlr r0
/* 813D6434 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6438 | 4E 80 00 20 */	blr
.endfn recvfrom

# .text:0xB8 | 0x813D643C | size: 0x74
.fn sendto, global
/* 813D643C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D6440 | 7C 08 02 A6 */	mflr r0
/* 813D6444 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D6448 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D644C | 48 22 30 75 */	bl _savegpr_27
/* 813D6450 | 7C 7B 1B 78 */	mr r27, r3
/* 813D6454 | 7C 9C 23 78 */	mr r28, r4
/* 813D6458 | 7C BD 2B 78 */	mr r29, r5
/* 813D645C | 7C DE 33 78 */	mr r30, r6
/* 813D6460 | 7C E4 3B 78 */	mr r4, r7
/* 813D6464 | 7D 1F 43 78 */	mr r31, r8
/* 813D6468 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D646C | 38 A0 00 08 */	li r5, 0x8
/* 813D6470 | 4B F5 9D C1 */	bl memcpy
/* 813D6474 | 9B E1 00 08 */	stb r31, 0x8(r1)
/* 813D6478 | 7F 63 DB 78 */	mr r3, r27
/* 813D647C | 7F 84 E3 78 */	mr r4, r28
/* 813D6480 | 7F A5 EB 78 */	mr r5, r29
/* 813D6484 | 7F C6 F3 78 */	mr r6, r30
/* 813D6488 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813D648C | 48 0D D0 B1 */	bl SOSendTo
/* 813D6490 | 38 80 FF FF */	li r4, -0x1
/* 813D6494 | 4B FF FE F1 */	bl CheckRcode
/* 813D6498 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D649C | 48 22 30 71 */	bl _restgpr_27
/* 813D64A0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D64A4 | 7C 08 03 A6 */	mtlr r0
/* 813D64A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D64AC | 4E 80 00 20 */	blr
.endfn sendto

# .text:0x12C | 0x813D64B0 | size: 0x50
.fn getsockname, global
/* 813D64B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D64B4 | 7C 08 02 A6 */	mflr r0
/* 813D64B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D64BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D64C0 | 7C BF 2B 78 */	mr r31, r5
/* 813D64C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D64C8 | 7C 9E 23 78 */	mr r30, r4
/* 813D64CC | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 813D64D0 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 813D64D4 | 48 0D CE FD */	bl SOGetSockName
/* 813D64D8 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 813D64DC | 38 80 FF FF */	li r4, -0x1
/* 813D64E0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813D64E4 | 4B FF FE A1 */	bl CheckRcode
/* 813D64E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D64EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D64F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D64F4 | 7C 08 03 A6 */	mtlr r0
/* 813D64F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D64FC | 4E 80 00 20 */	blr
.endfn getsockname

# .text:0x17C | 0x813D6500 | size: 0x38
.fn inet_addr, global
/* 813D6500 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D6504 | 7C 08 02 A6 */	mflr r0
/* 813D6508 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D650C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D6510 | 48 0D D3 B9 */	bl SOInetAtoN
/* 813D6514 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6518 | 40 82 00 0C */	bne .L_813D6524
/* 813D651C | 38 60 FF FF */	li r3, -0x1
/* 813D6520 | 48 00 00 08 */	b .L_813D6528
.L_813D6524:
/* 813D6524 | 80 61 00 08 */	lwz r3, 0x8(r1)
.L_813D6528:
/* 813D6528 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D652C | 7C 08 03 A6 */	mtlr r0
/* 813D6530 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6534 | 4E 80 00 20 */	blr
.endfn inet_addr

# .text:0x1B4 | 0x813D6538 | size: 0x8
.fn GOAGetLastError, global
/* 813D6538 | 80 6D AB 5C */	lwz r3, lbl_81698B9C@sda21(r0)
/* 813D653C | 4E 80 00 20 */	blr
.endfn GOAGetLastError

# .text:0x1BC | 0x813D6540 | size: 0x120
.fn GSISocketSelect, global
/* 813D6540 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D6544 | 7C 08 02 A6 */	mflr r0
/* 813D6548 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D654C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D6550 | 48 22 2F 79 */	bl _savegpr_29
/* 813D6554 | 38 00 00 00 */	li r0, 0x0
/* 813D6558 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D655C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813D6560 | 7C 9D 23 78 */	mr r29, r4
/* 813D6564 | 7C BE 2B 78 */	mr r30, r5
/* 813D6568 | 7C DF 33 78 */	mr r31, r6
/* 813D656C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813D6570 | 41 82 00 0C */	beq .L_813D657C
/* 813D6574 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813D6578 | 90 01 00 0C */	stw r0, 0xc(r1)
.L_813D657C:
/* 813D657C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D6580 | 41 82 00 10 */	beq .L_813D6590
/* 813D6584 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813D6588 | 60 00 00 08 */	ori r0, r0, 0x8
/* 813D658C | 90 01 00 0C */	stw r0, 0xc(r1)
.L_813D6590:
/* 813D6590 | 38 00 00 00 */	li r0, 0x0
/* 813D6594 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D6598 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813D659C | 38 80 00 01 */	li r4, 0x1
/* 813D65A0 | 38 C0 00 00 */	li r6, 0x0
/* 813D65A4 | 38 A0 00 00 */	li r5, 0x0
/* 813D65A8 | 48 0D D1 C5 */	bl SOPoll
/* 813D65AC | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 813D65B0 | 40 84 00 0C */	bge cr1, .L_813D65BC
/* 813D65B4 | 38 60 FF FF */	li r3, -0x1
/* 813D65B8 | 48 00 00 90 */	b .L_813D6648
.L_813D65BC:
/* 813D65BC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813D65C0 | 41 82 00 28 */	beq .L_813D65E8
/* 813D65C4 | 40 85 00 1C */	ble cr1, .L_813D65E0
/* 813D65C8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D65CC | 70 00 00 41 */	andi. r0, r0, 0x41
/* 813D65D0 | 41 82 00 10 */	beq .L_813D65E0
/* 813D65D4 | 38 00 00 01 */	li r0, 0x1
/* 813D65D8 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813D65DC | 48 00 00 0C */	b .L_813D65E8
.L_813D65E0:
/* 813D65E0 | 38 00 00 00 */	li r0, 0x0
/* 813D65E4 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813D65E8:
/* 813D65E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813D65EC | 41 82 00 2C */	beq .L_813D6618
/* 813D65F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D65F4 | 40 81 00 1C */	ble .L_813D6610
/* 813D65F8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D65FC | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 813D6600 | 41 82 00 10 */	beq .L_813D6610
/* 813D6604 | 38 00 00 01 */	li r0, 0x1
/* 813D6608 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813D660C | 48 00 00 0C */	b .L_813D6618
.L_813D6610:
/* 813D6610 | 38 00 00 00 */	li r0, 0x0
/* 813D6614 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_813D6618:
/* 813D6618 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813D661C | 41 82 00 2C */	beq .L_813D6648
/* 813D6620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6624 | 40 81 00 1C */	ble .L_813D6640
/* 813D6628 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D662C | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 813D6630 | 41 82 00 10 */	beq .L_813D6640
/* 813D6634 | 38 00 00 01 */	li r0, 0x1
/* 813D6638 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813D663C | 48 00 00 0C */	b .L_813D6648
.L_813D6640:
/* 813D6640 | 38 00 00 00 */	li r0, 0x0
/* 813D6644 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813D6648:
/* 813D6648 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D664C | 48 22 2E C9 */	bl _restgpr_29
/* 813D6650 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D6654 | 7C 08 03 A6 */	mtlr r0
/* 813D6658 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D665C | 4E 80 00 20 */	blr
.endfn GSISocketSelect
