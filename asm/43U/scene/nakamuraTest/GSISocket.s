.include "macros.inc"
.file "GSISocket.c"

# 0x810B80E0..0x810B80F0 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B80E0 | size: 0x10
.obj lbl_810B80E0, global
	.skip 0x10
.endobj lbl_810B80E0

# 0x813D6660..0x813D6870 | size: 0x210
.text
.balign 4

# .text:0x0 | 0x813D6660 | size: 0x48
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

# .text:0x48 | 0x813D66A8 | size: 0x114
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
/* 813D6728 | 3C 60 81 0C */	lis r3, lbl_810B80E0@ha
/* 813D672C | 38 C6 38 48 */	addi r6, r6, lbl_81653848@l
/* 813D6730 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 813D6734 | 38 83 80 E0 */	addi r4, r3, lbl_810B80E0@l
/* 813D6738 | 38 AD AB 58 */	li r5, lbl_81698B98@sda21
/* 813D673C | 38 00 00 02 */	li r0, 0x2
/* 813D6740 | 90 C3 80 E0 */	stw r6, lbl_810B80E0@l(r3)
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
/* 813D6790 | 3C 80 81 0C */	lis r4, lbl_810B80E0@ha
/* 813D6794 | 7C A3 01 2E */	stwx r5, r3, r0
/* 813D6798 | 38 84 80 E0 */	addi r4, r4, lbl_810B80E0@l
/* 813D679C | 90 64 00 0C */	stw r3, 0xc(r4)
/* 813D67A0 | 7C 83 23 78 */	mr r3, r4
/* 813D67A4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D67A8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D67AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D67B0 | 7C 08 03 A6 */	mtlr r0
/* 813D67B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D67B8 | 4E 80 00 20 */	blr
.endfn getlocalhost

# .text:0x15C | 0x813D67BC | size: 0x78
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

# .text:0x1D4 | 0x813D6834 | size: 0x4
.fn SocketStartUp, global
/* 813D6834 | 4E 80 00 20 */	blr
.endfn SocketStartUp

# .text:0x1D8 | 0x813D6838 | size: 0x38
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

# 0x81653848..0x81653858 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x81653848 | size: 0x10
.obj lbl_81653848, global
	.4byte 0x6C6F6361
	.4byte 0x6C686F73
	.4byte 0x74000000
	.4byte 0x00000000
.endobj lbl_81653848

# 0x81698B98..0x81698BA0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B98 | size: 0x4
.obj lbl_81698B98, global
	.skip 0x4
.endobj lbl_81698B98

# .sbss:0x4 | 0x81698B9C | size: 0x4
.obj lbl_81698B9C, global
	.skip 0x4
.endobj lbl_81698B9C
