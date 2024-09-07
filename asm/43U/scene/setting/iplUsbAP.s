.include "macros.inc"
.file "iplUsbAP.cpp"

# 0x810BC148..0x810BD498 | size: 0x1350
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810BC148 | size: 0x318
.obj usbapThread, global
	.skip 0x318
.endobj usbapThread

# .bss:0x318 | 0x810BC460 | size: 0x1000
.obj usbapStack, global
	.skip 0x1000
.endobj usbapStack

# .bss:0x1318 | 0x810BD460 | size: 0x20
.obj usbapMessageQ, global
	.skip 0x20
.endobj usbapMessageQ

# .bss:0x1338 | 0x810BD480 | size: 0x18
.obj usbapNickname, global
	.skip 0x18
.endobj usbapNickname

# 0x813FC520..0x813FC8FC | size: 0x3DC
.text
.balign 4

# .text:0x0 | 0x813FC520 | size: 0x138
.fn USBAPStartRegistration, global
/* 813FC520 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813FC524 | 7C 08 02 A6 */	mflr r0
/* 813FC528 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813FC52C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FC530 | 48 1F CF 89 */	bl _savegpr_25
/* 813FC534 | 3F E0 81 0C */	lis r31, usbapThread@ha
/* 813FC538 | 7C B9 2B 78 */	mr r25, r5
/* 813FC53C | 7C DA 33 78 */	mr r26, r6
/* 813FC540 | 7C FB 3B 78 */	mr r27, r7
/* 813FC544 | 7D 1C 43 78 */	mr r28, r8
/* 813FC548 | 7D 3E 4B 78 */	mr r30, r9
/* 813FC54C | 7D 5D 53 78 */	mr r29, r10
/* 813FC550 | 3B FF C1 48 */	addi r31, r31, usbapThread@l
/* 813FC554 | 48 13 43 31 */	bl OSDisableInterrupts
/* 813FC558 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813FC55C | 93 CD AB D8 */	stw r30, lbl_81698C18@sda21(r0)
/* 813FC560 | A0 04 02 C8 */	lhz r0, 0x2c8(r4)
/* 813FC564 | 7C 7E 1B 78 */	mr r30, r3
/* 813FC568 | 93 AD AB DC */	stw r29, lbl_81698C1C@sda21(r0)
/* 813FC56C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FC570 | 41 82 00 24 */	beq .L_813FC594
/* 813FC574 | 7C 83 23 78 */	mr r3, r4
/* 813FC578 | 48 13 7A 09 */	bl OSIsThreadTerminated
/* 813FC57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC580 | 40 82 00 14 */	bne .L_813FC594
/* 813FC584 | 7F C3 F3 78 */	mr r3, r30
/* 813FC588 | 48 13 43 25 */	bl OSRestoreInterrupts
/* 813FC58C | 38 60 00 00 */	li r3, 0x0
/* 813FC590 | 48 00 00 B0 */	b .L_813FC640
.L_813FC594:
/* 813FC594 | 28 19 00 1F */	cmplwi r25, 0x1f
/* 813FC598 | 41 81 00 14 */	bgt .L_813FC5AC
/* 813FC59C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813FC5A0 | 41 82 00 0C */	beq .L_813FC5AC
/* 813FC5A4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813FC5A8 | 40 82 00 14 */	bne .L_813FC5BC
.L_813FC5AC:
/* 813FC5AC | 7F C3 F3 78 */	mr r3, r30
/* 813FC5B0 | 48 13 42 FD */	bl OSRestoreInterrupts
/* 813FC5B4 | 38 60 00 00 */	li r3, 0x0
/* 813FC5B8 | 48 00 00 88 */	b .L_813FC640
.L_813FC5BC:
/* 813FC5BC | 93 4D AB D0 */	stw r26, lbl_81698C10@sda21(r0)
/* 813FC5C0 | 7F 64 DB 78 */	mr r4, r27
/* 813FC5C4 | 38 7F 13 38 */	addi r3, r31, 0x1338
/* 813FC5C8 | 38 A0 00 14 */	li r5, 0x14
/* 813FC5CC | 93 8D AB CC */	stw r28, lbl_81698C0C@sda21(r0)
/* 813FC5D0 | 4B F3 3C 61 */	bl memcpy
/* 813FC5D4 | 38 7F 13 18 */	addi r3, r31, 0x1318
/* 813FC5D8 | 38 8D AB C8 */	li r4, lbl_81698C08@sda21
/* 813FC5DC | 38 A0 00 01 */	li r5, 0x1
/* 813FC5E0 | 48 13 4A 41 */	bl OSInitMessageQueue
/* 813FC5E4 | 38 BF 03 18 */	addi r5, r31, 0x318
/* 813FC5E8 | 3C 80 81 40 */	lis r4, USBAPDoRegistration__FPv@ha
/* 813FC5EC | 38 C5 10 00 */	addi r6, r5, 0x1000
/* 813FC5F0 | 7F 28 CB 78 */	mr r8, r25
/* 813FC5F4 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 813FC5F8 | 38 84 C6 78 */	addi r4, r4, USBAPDoRegistration__FPv@l
/* 813FC5FC | 38 A0 00 00 */	li r5, 0x0
/* 813FC600 | 38 E0 10 00 */	li r7, 0x1000
/* 813FC604 | 39 20 00 01 */	li r9, 0x1
/* 813FC608 | 48 13 7F 41 */	bl OSCreateThread
/* 813FC60C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FC610 | 40 82 00 24 */	bne .L_813FC634
/* 813FC614 | 7F C3 F3 78 */	mr r3, r30
/* 813FC618 | 48 13 42 95 */	bl OSRestoreInterrupts
.L_813FC61C:
/* 813FC61C | 38 7F 00 00 */	addi r3, r31, 0x0
/* 813FC620 | 48 13 86 31 */	bl OSResumeThread
/* 813FC624 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FC628 | 41 81 FF F4 */	bgt .L_813FC61C
/* 813FC62C | 38 60 00 01 */	li r3, 0x1
/* 813FC630 | 48 00 00 10 */	b .L_813FC640
.L_813FC634:
/* 813FC634 | 7F C3 F3 78 */	mr r3, r30
/* 813FC638 | 48 13 42 75 */	bl OSRestoreInterrupts
/* 813FC63C | 38 60 00 00 */	li r3, 0x0
.L_813FC640:
/* 813FC640 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FC644 | 48 1F CE C1 */	bl _restgpr_25
/* 813FC648 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813FC64C | 7C 08 03 A6 */	mtlr r0
/* 813FC650 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813FC654 | 4E 80 00 20 */	blr
.endfn USBAPStartRegistration

# .text:0x138 | 0x813FC658 | size: 0x14
.fn USBAPCancelRegistration, global
/* 813FC658 | 3C 60 81 0C */	lis r3, usbapMessageQ@ha
/* 813FC65C | 38 80 00 00 */	li r4, 0x0
/* 813FC660 | 38 63 D4 60 */	addi r3, r3, usbapMessageQ@l
/* 813FC664 | 38 A0 00 00 */	li r5, 0x0
/* 813FC668 | 48 13 4A 18 */	b OSSendMessage
.endfn USBAPCancelRegistration

# .text:0x14C | 0x813FC66C | size: 0xC
.fn USBAPIsThreadTerminated, global
/* 813FC66C | 3C 60 81 0C */	lis r3, usbapThread@ha
/* 813FC670 | 38 63 C1 48 */	addi r3, r3, usbapThread@l
/* 813FC674 | 48 13 79 0C */	b OSIsThreadTerminated
.endfn USBAPIsThreadTerminated

# .text:0x158 | 0x813FC678 | size: 0x284
# USBAPDoRegistration(void*)
.fn USBAPDoRegistration__FPv, local
/* 813FC678 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813FC67C | 7C 08 02 A6 */	mflr r0
/* 813FC680 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813FC684 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813FC688 | 48 1F CE 0D */	bl _savegpr_16
/* 813FC68C | 38 6D AB D4 */	li r3, lbl_81698C14@sda21
/* 813FC690 | 48 0D D5 49 */	bl fn_814D9BD8
/* 813FC694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC698 | 41 82 00 24 */	beq .L_813FC6BC
/* 813FC69C | 81 8D AB CC */	lwz r12, lbl_81698C0C@sda21(r0)
/* 813FC6A0 | 3A 00 00 00 */	li r16, 0x0
/* 813FC6A4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FC6A8 | 41 82 02 38 */	beq .L_813FC8E0
/* 813FC6AC | 38 60 00 00 */	li r3, 0x0
/* 813FC6B0 | 7D 89 03 A6 */	mtctr r12
/* 813FC6B4 | 4E 80 04 21 */	bctrl
/* 813FC6B8 | 48 00 02 28 */	b .L_813FC8E0
.L_813FC6BC:
/* 813FC6BC | 3F E0 81 65 */	lis r31, lbl_81657B08@ha
/* 813FC6C0 | 3F 20 81 0C */	lis r25, usbapMessageQ@ha
/* 813FC6C4 | 3B 40 00 64 */	li r26, 0x64
/* 813FC6C8 | 3B 60 00 00 */	li r27, 0x0
/* 813FC6CC | 3B 80 00 20 */	li r28, 0x20
/* 813FC6D0 | 3B A0 00 01 */	li r29, 0x1
/* 813FC6D4 | 3F C0 81 0C */	lis r30, usbapNickname@ha
.L_813FC6D8:
/* 813FC6D8 | 48 13 7E 35 */	bl OSYieldThread
/* 813FC6DC | 38 79 D4 60 */	addi r3, r25, usbapMessageQ@l
/* 813FC6E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FC6E4 | 38 A0 00 00 */	li r5, 0x0
/* 813FC6E8 | 48 13 4A 61 */	bl OSReceiveMessage
/* 813FC6EC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FC6F0 | 40 82 00 24 */	bne .L_813FC714
/* 813FC6F4 | 81 8D AB CC */	lwz r12, lbl_81698C0C@sda21(r0)
/* 813FC6F8 | 3A 00 00 00 */	li r16, 0x0
/* 813FC6FC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FC700 | 41 82 01 E0 */	beq .L_813FC8E0
/* 813FC704 | 38 60 00 00 */	li r3, 0x0
/* 813FC708 | 7D 89 03 A6 */	mtctr r12
/* 813FC70C | 4E 80 04 21 */	bctrl
/* 813FC710 | 48 00 01 D0 */	b .L_813FC8E0
.L_813FC714:
/* 813FC714 | A0 0D AB D4 */	lhz r0, lbl_81698C14@sda21(r0)
/* 813FC718 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813FC71C | B3 41 00 0E */	sth r26, 0xe(r1)
/* 813FC720 | 3A 60 00 00 */	li r19, 0x0
/* 813FC724 | 38 80 00 FF */	li r4, 0xff
/* 813FC728 | 38 A0 00 06 */	li r5, 0x6
/* 813FC72C | B0 01 00 0C */	sth r0, 0xc(r1)
/* 813FC730 | 4B F3 3C 05 */	bl memset
/* 813FC734 | B3 61 00 16 */	sth r27, 0x16(r1)
/* 813FC738 | 38 61 00 1A */	addi r3, r1, 0x1a
/* 813FC73C | 38 9F 7B 08 */	addi r4, r31, lbl_81657B08@l
/* 813FC740 | 38 A0 00 08 */	li r5, 0x8
/* 813FC744 | B3 81 00 18 */	sth r28, 0x18(r1)
/* 813FC748 | 4B F3 3A E9 */	bl memcpy
/* 813FC74C | 80 0D AB D0 */	lwz r0, lbl_81698C10@sda21(r0)
/* 813FC750 | 9B 61 00 22 */	stb r27, 0x22(r1)
/* 813FC754 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FC758 | 9B A1 00 23 */	stb r29, 0x23(r1)
/* 813FC75C | 40 82 00 0C */	bne .L_813FC768
/* 813FC760 | 63 A0 00 02 */	ori r0, r29, 0x2
/* 813FC764 | 98 01 00 23 */	stb r0, 0x23(r1)
.L_813FC768:
/* 813FC768 | 9B A1 00 24 */	stb r29, 0x24(r1)
/* 813FC76C | 38 61 00 26 */	addi r3, r1, 0x26
/* 813FC770 | 38 9E D4 80 */	addi r4, r30, usbapNickname@l
/* 813FC774 | 38 A0 00 14 */	li r5, 0x14
/* 813FC778 | 9B 61 00 25 */	stb r27, 0x25(r1)
/* 813FC77C | 4B F3 3A B5 */	bl memcpy
/* 813FC780 | 38 61 00 3A */	addi r3, r1, 0x3a
/* 813FC784 | 38 80 00 00 */	li r4, 0x0
/* 813FC788 | 38 A0 00 08 */	li r5, 0x8
/* 813FC78C | 4B F3 3B A9 */	bl memset
/* 813FC790 | 38 61 00 42 */	addi r3, r1, 0x42
/* 813FC794 | 38 80 00 FF */	li r4, 0xff
/* 813FC798 | 38 A0 00 18 */	li r5, 0x18
/* 813FC79C | 4B F3 3B 99 */	bl memset
/* 813FC7A0 | 80 6D AB D8 */	lwz r3, lbl_81698C18@sda21(r0)
/* 813FC7A4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813FC7A8 | 38 80 08 00 */	li r4, 0x800
/* 813FC7AC | 48 0D D6 BD */	bl fn_814D9E68
/* 813FC7B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC7B4 | 40 82 01 00 */	bne .L_813FC8B4
/* 813FC7B8 | 80 6D AB D8 */	lwz r3, lbl_81698C18@sda21(r0)
/* 813FC7BC | 3A E0 00 00 */	li r23, 0x0
/* 813FC7C0 | 3B 00 00 00 */	li r24, 0x0
/* 813FC7C4 | 3A C0 00 00 */	li r22, 0x0
/* 813FC7C8 | A2 A3 00 00 */	lhz r21, 0x0(r3)
/* 813FC7CC | 3A 83 00 02 */	addi r20, r3, 0x2
/* 813FC7D0 | 48 00 00 C8 */	b .L_813FC898
.L_813FC7D4:
/* 813FC7D4 | A0 14 00 0A */	lhz r0, 0xa(r20)
/* 813FC7D8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 813FC7DC | 40 82 00 AC */	bne .L_813FC888
/* 813FC7E0 | 38 74 00 0C */	addi r3, r20, 0xc
/* 813FC7E4 | 38 9F 7B 08 */	addi r4, r31, lbl_81657B08@l
/* 813FC7E8 | 38 A0 00 08 */	li r5, 0x8
/* 813FC7EC | 48 20 5D B1 */	bl strncmp
/* 813FC7F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC7F4 | 40 82 00 94 */	bne .L_813FC888
/* 813FC7F8 | 82 0D AB DC */	lwz r16, lbl_81698C1C@sda21(r0)
/* 813FC7FC | 3A 20 00 00 */	li r17, 0x0
/* 813FC800 | 3A 40 00 00 */	li r18, 0x0
.L_813FC804:
/* 813FC804 | 7C 92 82 14 */	add r4, r18, r16
/* 813FC808 | 38 74 00 04 */	addi r3, r20, 0x4
/* 813FC80C | 38 84 00 01 */	addi r4, r4, 0x1
/* 813FC810 | 38 A0 00 06 */	li r5, 0x6
/* 813FC814 | 48 20 19 C1 */	bl memcmp
/* 813FC818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC81C | 41 82 00 14 */	beq .L_813FC830
/* 813FC820 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 813FC824 | 3A 52 00 06 */	addi r18, r18, 0x6
/* 813FC828 | 2C 11 00 14 */	cmpwi r17, 0x14
/* 813FC82C | 41 80 FF D8 */	blt .L_813FC804
.L_813FC830:
/* 813FC830 | 2C 11 00 14 */	cmpwi r17, 0x14
/* 813FC834 | 40 82 00 54 */	bne .L_813FC888
/* 813FC838 | 88 14 00 15 */	lbz r0, 0x15(r20)
/* 813FC83C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FC840 | 40 82 00 3C */	bne .L_813FC87C
/* 813FC844 | 80 6D AB DC */	lwz r3, lbl_81698C1C@sda21(r0)
/* 813FC848 | 38 94 00 04 */	addi r4, r20, 0x4
/* 813FC84C | 38 A0 00 06 */	li r5, 0x6
/* 813FC850 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813FC854 | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 813FC858 | 7C 60 1A 14 */	add r3, r0, r3
/* 813FC85C | 38 63 00 01 */	addi r3, r3, 0x1
/* 813FC860 | 4B F3 39 D1 */	bl memcpy
/* 813FC864 | 80 8D AB DC */	lwz r4, lbl_81698C1C@sda21(r0)
/* 813FC868 | 3A E0 00 01 */	li r23, 0x1
/* 813FC86C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 813FC870 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813FC874 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 813FC878 | 48 00 00 10 */	b .L_813FC888
.L_813FC87C:
/* 813FC87C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FC880 | 40 82 00 08 */	bne .L_813FC888
/* 813FC884 | 3B 00 00 01 */	li r24, 0x1
.L_813FC888:
/* 813FC888 | A0 14 00 00 */	lhz r0, 0x0(r20)
/* 813FC88C | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813FC890 | 54 00 08 3C */	slwi r0, r0, 1
/* 813FC894 | 7E 94 02 14 */	add r20, r20, r0
.L_813FC898:
/* 813FC898 | 7C 16 A8 00 */	cmpw r22, r21
/* 813FC89C | 41 80 FF 38 */	blt .L_813FC7D4
/* 813FC8A0 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 813FC8A4 | 41 82 00 10 */	beq .L_813FC8B4
/* 813FC8A8 | 30 18 FF FF */	subic r0, r24, 0x1
/* 813FC8AC | 7C 60 C1 10 */	subfe r3, r0, r24
/* 813FC8B0 | 3A 63 00 01 */	addi r19, r3, 0x1
.L_813FC8B4:
/* 813FC8B4 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 813FC8B8 | 41 82 FE 20 */	beq .L_813FC6D8
/* 813FC8BC | 81 8D AB CC */	lwz r12, lbl_81698C0C@sda21(r0)
/* 813FC8C0 | 38 13 FF FF */	subi r0, r19, 0x1
/* 813FC8C4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813FC8C8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FC8CC | 54 10 D9 7E */	srwi r16, r0, 5
/* 813FC8D0 | 41 82 00 10 */	beq .L_813FC8E0
/* 813FC8D4 | 7E 03 83 78 */	mr r3, r16
/* 813FC8D8 | 7D 89 03 A6 */	mtctr r12
/* 813FC8DC | 4E 80 04 21 */	bctrl
.L_813FC8E0:
/* 813FC8E0 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813FC8E4 | 7E 03 83 78 */	mr r3, r16
/* 813FC8E8 | 48 1F CB F9 */	bl _restgpr_16
/* 813FC8EC | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813FC8F0 | 7C 08 03 A6 */	mtlr r0
/* 813FC8F4 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813FC8F8 | 4E 80 00 20 */	blr
.endfn USBAPDoRegistration__FPv

# 0x81657B08..0x81657B18 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x81657B08 | size: 0x10
.obj lbl_81657B08, global
	.4byte 0x4E574355
	.4byte 0x53424150
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81657B08

# 0x81698C08..0x81698C28 | size: 0x20
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698C08 | size: 0x4
.obj lbl_81698C08, global
	.skip 0x4
.endobj lbl_81698C08

# .sbss:0x4 | 0x81698C0C | size: 0x4
.obj lbl_81698C0C, global
	.skip 0x4
.endobj lbl_81698C0C

# .sbss:0x8 | 0x81698C10 | size: 0x4
.obj lbl_81698C10, global
	.skip 0x4
.endobj lbl_81698C10

# .sbss:0xC | 0x81698C14 | size: 0x2
.obj lbl_81698C14, global
	.skip 0x2
.endobj lbl_81698C14

# .sbss:0xE | 0x81698C16 | size: 0x2
.obj gap_12_81698C16_sbss, global
.hidden gap_12_81698C16_sbss
	.skip 0x2
.endobj gap_12_81698C16_sbss

# .sbss:0x10 | 0x81698C18 | size: 0x4
.obj lbl_81698C18, global
	.skip 0x4
.endobj lbl_81698C18

# .sbss:0x14 | 0x81698C1C | size: 0x4
.obj lbl_81698C1C, global
	.skip 0x4
.endobj lbl_81698C1C

# .sbss:0x18 | 0x81698C20 | size: 0x8
.obj lbl_81698C20, global
	.skip 0x8
.endobj lbl_81698C20
