.include "macros.inc"
.file "nonport.c"

# 0x810B80E0..0x810B80F0 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B80E0 | size: 0x10
.obj aLocalHost$2870, local
	.skip 0x10
.endobj aLocalHost$2870

# 0x813D6328..0x813D6870 | size: 0x548
.text
.balign 4

# .text:0x0 | 0x813D6328 | size: 0x10
.fn _gsi_memalign, global
/* 813D6328 | 7C 60 1B 78 */	mr r0, r3
/* 813D632C | 7C 64 1B 96 */	divwu r3, r4, r3
/* 813D6330 | 7C 04 03 78 */	mr r4, r0
/* 813D6334 | 48 22 51 A4 */	b fn_815FB4D8
.endfn _gsi_memalign

# .text:0x10 | 0x813D6338 | size: 0x1C
.fn gsiMemoryCallbacksSet, global
/* 813D6338 | 3D 00 81 65 */	lis r8, memmanagercallbacks@ha
/* 813D633C | 38 E8 38 38 */	addi r7, r8, memmanagercallbacks@l
/* 813D6340 | 90 68 38 38 */	stw r3, memmanagercallbacks@l(r8)
/* 813D6344 | 90 87 00 04 */	stw r4, 0x4(r7)
/* 813D6348 | 90 A7 00 08 */	stw r5, 0x8(r7)
/* 813D634C | 90 C7 00 0C */	stw r6, 0xc(r7)
/* 813D6350 | 4E 80 00 20 */	blr
.endfn gsiMemoryCallbacksSet

# .text:0x2C | 0x813D6354 | size: 0x10
.fn gsimalloc, global
/* 813D6354 | 3C 80 81 65 */	lis r4, memmanagercallbacks@ha
/* 813D6358 | 81 84 38 38 */	lwz r12, memmanagercallbacks@l(r4)
/* 813D635C | 7D 89 03 A6 */	mtctr r12
/* 813D6360 | 4E 80 04 20 */	bctr
.endfn gsimalloc

# .text:0x3C | 0x813D6364 | size: 0x20
.fn gsifree, global
/* 813D6364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6368 | 4D 82 00 20 */	beqlr
/* 813D636C | 3C 80 81 65 */	lis r4, memmanagercallbacks@ha
/* 813D6370 | 38 84 38 38 */	addi r4, r4, memmanagercallbacks@l
/* 813D6374 | 81 84 00 04 */	lwz r12, 0x4(r4)
/* 813D6378 | 7D 89 03 A6 */	mtctr r12
/* 813D637C | 4E 80 04 20 */	bctr
/* 813D6380 | 4E 80 00 20 */	blr
.endfn gsifree

# .text:0x5C | 0x813D6384 | size: 0x14
.fn CheckRcode, global
/* 813D6384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6388 | 4C 80 00 20 */	bgelr
/* 813D638C | 90 6D AB 5C */	stw r3, GSIRevolutionErrno@sda21(r0)
/* 813D6390 | 7C 83 23 78 */	mr r3, r4
/* 813D6394 | 4E 80 00 20 */	blr
.endfn CheckRcode

# .text:0x70 | 0x813D6398 | size: 0x2C
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

# .text:0x9C | 0x813D63C4 | size: 0x28
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

# .text:0xC4 | 0x813D63EC | size: 0x50
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

# .text:0x114 | 0x813D643C | size: 0x74
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

# .text:0x188 | 0x813D64B0 | size: 0x50
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

# .text:0x1D8 | 0x813D6500 | size: 0x38
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

# .text:0x210 | 0x813D6538 | size: 0x8
.fn GOAGetLastError, global
/* 813D6538 | 80 6D AB 5C */	lwz r3, GSIRevolutionErrno@sda21(r0)
/* 813D653C | 4E 80 00 20 */	blr
.endfn GOAGetLastError

# .text:0x218 | 0x813D6540 | size: 0x120
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

# .text:0x338 | 0x813D6660 | size: 0x48
.fn CanReceiveOnSocket, global
/* 813D6660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D6664 | 7C 08 02 A6 */	mflr r0
/* 813D6668 | 38 A0 00 00 */	li r5, 0x0
/* 813D666C | 38 C0 00 00 */	li r6, 0x0
/* 813D6670 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D6674 | 38 00 00 00 */	li r0, 0x0
/* 813D6678 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D667C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D6680 | 4B FF FE C1 */	bl GSISocketSelect
/* 813D6684 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813D6688 | 40 82 00 0C */	bne .L_813D6694
/* 813D668C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813D6690 | 48 00 00 08 */	b .L_813D6698
.L_813D6694:
/* 813D6694 | 38 60 00 00 */	li r3, 0x0
.L_813D6698:
/* 813D6698 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D669C | 7C 08 03 A6 */	mtlr r0
/* 813D66A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D66A4 | 4E 80 00 20 */	blr
.endfn CanReceiveOnSocket

# .text:0x380 | 0x813D66A8 | size: 0x114
.fn getlocalhost, global
/* 813D66A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D66AC | 7C 08 02 A6 */	mflr r0
/* 813D66B0 | 38 60 00 00 */	li r3, 0x0
/* 813D66B4 | 38 A0 40 02 */	li r5, 0x4002
/* 813D66B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D66BC | 38 00 00 04 */	li r0, 0x4
/* 813D66C0 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813D66C4 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813D66C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D66CC | 3F E0 00 01 */	lis r31, 0x1
/* 813D66D0 | 38 9F FF FE */	subi r4, r31, 0x2
/* 813D66D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813D66D8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813D66DC | 48 0D E0 91 */	bl SOGetInterfaceOpt
/* 813D66E0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D66E4 | 1C 60 00 0C */	mulli r3, r0, 0xc
/* 813D66E8 | 4B FF FC 6D */	bl gsimalloc
/* 813D66EC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D66F0 | 7C 7E 1B 78 */	mr r30, r3
/* 813D66F4 | 38 80 00 BE */	li r4, 0xbe
/* 813D66F8 | 1C A0 00 0C */	mulli r5, r0, 0xc
/* 813D66FC | 4B F5 9C 39 */	bl memset
/* 813D6700 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D6704 | 7F C6 F3 78 */	mr r6, r30
/* 813D6708 | 38 9F FF FE */	subi r4, r31, 0x2
/* 813D670C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813D6710 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813D6714 | 38 60 00 00 */	li r3, 0x0
/* 813D6718 | 38 A0 40 03 */	li r5, 0x4003
/* 813D671C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813D6720 | 48 0D E0 4D */	bl SOGetInterfaceOpt
/* 813D6724 | 3C C0 81 65 */	lis r6, lbl_81653848@ha
/* 813D6728 | 3C 60 81 0C */	lis r3, aLocalHost$2870@ha
/* 813D672C | 38 C6 38 48 */	addi r6, r6, lbl_81653848@l
/* 813D6730 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 813D6734 | 38 83 80 E0 */	addi r4, r3, aLocalHost$2870@l
/* 813D6738 | 38 AD AB 58 */	li r5, aliases$2757@sda21
/* 813D673C | 38 00 00 02 */	li r0, 0x2
/* 813D6740 | 90 C3 80 E0 */	stw r6, aLocalHost$2870@l(r3)
/* 813D6744 | 54 E3 10 3A */	slwi r3, r7, 2
/* 813D6748 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 813D674C | B0 04 00 08 */	sth r0, 0x8(r4)
/* 813D6750 | B0 E4 00 0A */	sth r7, 0xa(r4)
/* 813D6754 | 4B FF FC 01 */	bl gsimalloc
/* 813D6758 | 38 C0 00 00 */	li r6, 0x0
/* 813D675C | 38 80 00 00 */	li r4, 0x0
/* 813D6760 | 38 A0 00 00 */	li r5, 0x0
/* 813D6764 | 48 00 00 18 */	b .L_813D677C
.L_813D6768:
/* 813D6768 | 7C 1E 22 14 */	add r0, r30, r4
/* 813D676C | 38 84 00 0C */	addi r4, r4, 0xc
/* 813D6770 | 7C 03 29 2E */	stwx r0, r3, r5
/* 813D6774 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 813D6778 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_813D677C:
/* 813D677C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813D6780 | 7C 06 00 00 */	cmpw r6, r0
/* 813D6784 | 41 80 FF E4 */	blt .L_813D6768
/* 813D6788 | 54 C0 10 3A */	slwi r0, r6, 2
/* 813D678C | 38 A0 00 00 */	li r5, 0x0
/* 813D6790 | 3C 80 81 0C */	lis r4, aLocalHost$2870@ha
/* 813D6794 | 7C A3 01 2E */	stwx r5, r3, r0
/* 813D6798 | 38 84 80 E0 */	addi r4, r4, aLocalHost$2870@l
/* 813D679C | 90 64 00 0C */	stw r3, 0xc(r4)
/* 813D67A0 | 7C 83 23 78 */	mr r3, r4
/* 813D67A4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D67A8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D67AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D67B0 | 7C 08 03 A6 */	mtlr r0
/* 813D67B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D67B8 | 4E 80 00 20 */	blr
.endfn getlocalhost

# .text:0x494 | 0x813D67BC | size: 0x78
.fn IsPrivateIP, global
/* 813D67BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D67C0 | 7C 08 02 A6 */	mflr r0
/* 813D67C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D67C8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813D67CC | 48 0D D3 9D */	bl SONtoHl
/* 813D67D0 | 54 60 46 3E */	srwi r0, r3, 24
/* 813D67D4 | 54 63 86 3E */	extrwi r3, r3, 8, 8
/* 813D67D8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813D67DC | 40 82 00 0C */	bne .L_813D67E8
/* 813D67E0 | 38 60 00 01 */	li r3, 0x1
/* 813D67E4 | 48 00 00 40 */	b .L_813D6824
.L_813D67E8:
/* 813D67E8 | 2C 00 00 AC */	cmpwi r0, 0xac
/* 813D67EC | 40 82 00 1C */	bne .L_813D6808
/* 813D67F0 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 813D67F4 | 41 80 00 14 */	blt .L_813D6808
/* 813D67F8 | 2C 03 00 1F */	cmpwi r3, 0x1f
/* 813D67FC | 41 81 00 0C */	bgt .L_813D6808
/* 813D6800 | 38 60 00 01 */	li r3, 0x1
/* 813D6804 | 48 00 00 20 */	b .L_813D6824
.L_813D6808:
/* 813D6808 | 2C 00 00 C0 */	cmpwi r0, 0xc0
/* 813D680C | 40 82 00 14 */	bne .L_813D6820
/* 813D6810 | 2C 03 00 A8 */	cmpwi r3, 0xa8
/* 813D6814 | 40 82 00 0C */	bne .L_813D6820
/* 813D6818 | 38 60 00 01 */	li r3, 0x1
/* 813D681C | 48 00 00 08 */	b .L_813D6824
.L_813D6820:
/* 813D6820 | 38 60 00 00 */	li r3, 0x0
.L_813D6824:
/* 813D6824 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6828 | 7C 08 03 A6 */	mtlr r0
/* 813D682C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6830 | 4E 80 00 20 */	blr
.endfn IsPrivateIP

# .text:0x50C | 0x813D6834 | size: 0x4
.fn SocketStartUp, global
/* 813D6834 | 4E 80 00 20 */	blr
.endfn SocketStartUp

# .text:0x510 | 0x813D6838 | size: 0x38
.fn current_time, global
/* 813D6838 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D683C | 7C 08 02 A6 */	mflr r0
/* 813D6840 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D6844 | 48 15 F4 55 */	bl OSGetTick
/* 813D6848 | 3C 80 80 00 */	lis r4, 0x8000
/* 813D684C | 38 00 03 E8 */	li r0, 0x3e8
/* 813D6850 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813D6854 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813D6858 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813D685C | 7C 63 03 96 */	divwu r3, r3, r0
/* 813D6860 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6864 | 7C 08 03 A6 */	mtlr r0
/* 813D6868 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D686C | 4E 80 00 20 */	blr
.endfn current_time

# 0x81653838..0x81653858 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x81653838 | size: 0x10
.obj memmanagercallbacks, local
	.4byte fn_815FAFF0
	.4byte fn_815FB090
	.4byte fn_815FB1C0
	.4byte _gsi_memalign
.endobj memmanagercallbacks

# .data:0x10 | 0x81653848 | size: 0xA
.obj lbl_81653848, global
	.string "localhost"
.endobj lbl_81653848

# .data:0x1A | 0x81653852 | size: 0x6
.obj gap_08_81653852_data, global
.hidden gap_08_81653852_data
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_08_81653852_data

# 0x81698B98..0x81698BA0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B98 | size: 0x4
.obj aliases$2757, local
	.skip 0x4
.endobj aliases$2757

# .sbss:0x4 | 0x81698B9C | size: 0x4
.obj GSIRevolutionErrno, global
	.skip 0x4
.endobj GSIRevolutionErrno
