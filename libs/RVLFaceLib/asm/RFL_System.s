.include "macros.inc"
.file "RFL_System.c"

# 0x813307E0..0x81330818 | size: 0x38
.section extab, "a"
.balign 4

# extab:0x0 | 0x813307E0 | size: 0x8
.obj "@etb_813307E0", local
.hidden "@etb_813307E0"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_813307E0"

# extab:0x8 | 0x813307E8 | size: 0x8
.obj "@etb_813307E8", local
.hidden "@etb_813307E8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_813307E8"

# extab:0x10 | 0x813307F0 | size: 0x8
.obj "@etb_813307F0", local
.hidden "@etb_813307F0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_813307F0"

# extab:0x18 | 0x813307F8 | size: 0x8
.obj "@etb_813307F8", local
.hidden "@etb_813307F8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_813307F8"

# extab:0x20 | 0x81330800 | size: 0x8
.obj "@etb_81330800", local
.hidden "@etb_81330800"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330800"

# extab:0x28 | 0x81330808 | size: 0x8
.obj "@etb_81330808", local
.hidden "@etb_81330808"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330808"

# extab:0x30 | 0x81330810 | size: 0x8
.obj "@etb_81330810", local
.hidden "@etb_81330810"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330810"

# 0x81331560..0x813315B4 | size: 0x54
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331560 | size: 0xC
.obj "@eti_81331560", local
.hidden "@eti_81331560"
	.4byte RFLInitResAsync
	.4byte 0x00000368
	.4byte "@etb_813307E0"
.endobj "@eti_81331560"

# extabindex:0xC | 0x8133156C | size: 0xC
.obj "@eti_8133156C", local
.hidden "@eti_8133156C"
	.4byte RFLInitRes
	.4byte 0x000000A0
	.4byte "@etb_813307E8"
.endobj "@eti_8133156C"

# extabindex:0x18 | 0x81331578 | size: 0xC
.obj "@eti_81331578", local
.hidden "@eti_81331578"
	.4byte RFLExit
	.4byte 0x00000188
	.4byte "@etb_813307F0"
.endobj "@eti_81331578"

# extabindex:0x24 | 0x81331584 | size: 0xC
.obj "@eti_81331584", local
.hidden "@eti_81331584"
	.4byte bootloadDB2Res_
	.4byte 0x0000022C
	.4byte "@etb_813307F8"
.endobj "@eti_81331584"

# extabindex:0x30 | 0x81331590 | size: 0xC
.obj "@eti_81331590", local
.hidden "@eti_81331590"
	.4byte RFLGetAsyncStatus
	.4byte 0x00000088
	.4byte "@etb_81330800"
.endobj "@eti_81331590"

# extabindex:0x3C | 0x8133159C | size: 0xC
.obj "@eti_8133159C", local
.hidden "@eti_8133159C"
	.4byte RFLWaitAsync
	.4byte 0x0000009C
	.4byte "@etb_81330808"
.endobj "@eti_8133159C"

# extabindex:0x48 | 0x813315A8 | size: 0xC
.obj "@eti_813315A8", local
.hidden "@eti_813315A8"
	.4byte RFLiSetMacAddr
	.4byte 0x00000044
	.4byte "@etb_81330810"
.endobj "@eti_813315A8"

# 0x814DA45C..0x814DAF9C | size: 0xB40
.text
.balign 4

# .text:0x0 | 0x814DA45C | size: 0x1C
.fn RFLGetWorkSize, global
/* 814DA45C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA460 | 3C 60 00 05 */	lis r3, 0x5
/* 814DA464 | 38 63 CF 20 */	subi r3, r3, 0x30e0
/* 814DA468 | 4D 82 00 20 */	beqlr
/* 814DA46C | 3C 60 00 06 */	lis r3, 0x6
/* 814DA470 | 38 63 5F 20 */	addi r3, r3, 0x5f20
/* 814DA474 | 4E 80 00 20 */	blr
.endfn RFLGetWorkSize

# .text:0x1C | 0x814DA478 | size: 0x368
.fn RFLInitResAsync, global
/* 814DA478 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814DA47C | 7C 08 02 A6 */	mflr r0
/* 814DA480 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814DA484 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814DA488 | 48 11 F0 39 */	bl _savegpr_27
/* 814DA48C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814DA490 | 7C 7B 1B 78 */	mr r27, r3
/* 814DA494 | 7C 9D 23 78 */	mr r29, r4
/* 814DA498 | 7C BE 2B 78 */	mr r30, r5
/* 814DA49C | 7C DF 33 78 */	mr r31, r6
/* 814DA4A0 | 40 82 00 0C */	bne .L_814DA4AC
/* 814DA4A4 | 38 60 00 05 */	li r3, 0x5
/* 814DA4A8 | 48 00 03 20 */	b .L_814DA7C8
.L_814DA4AC:
/* 814DA4AC | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA4B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA4B4 | 40 82 03 0C */	bne .L_814DA7C0
/* 814DA4B8 | 80 6D 9D 38 */	lwz r3, __RFLVersion@sda21(r0)
/* 814DA4BC | 48 05 23 1D */	bl OSRegisterVersion
/* 814DA4C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DA4C4 | 3C A0 00 05 */	lis r5, 0x5
/* 814DA4C8 | 7F 63 DB 78 */	mr r3, r27
/* 814DA4CC | 38 80 00 00 */	li r4, 0x0
/* 814DA4D0 | 38 A5 B0 00 */	subi r5, r5, 0x5000
/* 814DA4D4 | 41 82 00 0C */	beq .L_814DA4E0
/* 814DA4D8 | 3C A0 00 06 */	lis r5, 0x6
/* 814DA4DC | 38 A5 40 00 */	addi r5, r5, 0x4000
.L_814DA4E0:
/* 814DA4E0 | 4B E5 5E 55 */	bl memset
/* 814DA4E4 | 38 A0 00 00 */	li r5, 0x0
/* 814DA4E8 | 38 80 00 01 */	li r4, 0x1
/* 814DA4EC | 93 6D AE 68 */	stw r27, sRFLManager@sda21(r0)
/* 814DA4F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DA4F4 | 38 1B 1F 20 */	addi r0, r27, 0x1f20
/* 814DA4F8 | 3C 60 00 05 */	lis r3, 0x5
/* 814DA4FC | 90 8D 9D 3C */	stw r4, sRFLLastErrCode@sda21(r0)
/* 814DA500 | 38 83 90 E0 */	subi r4, r3, 0x6f20
/* 814DA504 | 90 AD AE 6C */	stw r5, sRFLLastReason@sda21(r0)
/* 814DA508 | 98 AD AE 70 */	stb r5, sRFLBrokenType@sda21(r0)
/* 814DA50C | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 814DA510 | 41 82 00 0C */	beq .L_814DA51C
/* 814DA514 | 3C 60 00 06 */	lis r3, 0x6
/* 814DA518 | 38 83 20 E0 */	addi r4, r3, 0x20e0
.L_814DA51C:
/* 814DA51C | 83 6D AE 68 */	lwz r27, sRFLManager@sda21(r0)
/* 814DA520 | 38 A0 00 01 */	li r5, 0x1
/* 814DA524 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814DA528 | 48 08 01 4D */	bl fn_8155A674
/* 814DA52C | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 814DA530 | 3F 80 00 02 */	lis r28, 0x2
/* 814DA534 | 38 9C 48 00 */	addi r4, r28, 0x4800
/* 814DA538 | 38 A0 00 20 */	li r5, 0x20
/* 814DA53C | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA540 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814DA544 | 48 08 02 11 */	bl fn_8155A754
/* 814DA548 | 83 6D AE 68 */	lwz r27, sRFLManager@sda21(r0)
/* 814DA54C | 38 9C 48 00 */	addi r4, r28, 0x4800
/* 814DA550 | 38 A0 00 01 */	li r5, 0x1
/* 814DA554 | 48 08 01 21 */	bl fn_8155A674
/* 814DA558 | 90 7B 00 08 */	stw r3, 0x8(r27)
/* 814DA55C | 38 80 00 04 */	li r4, 0x4
/* 814DA560 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA564 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814DA568 | 48 08 05 E5 */	bl fn_8155AB4C
/* 814DA56C | 80 CD AE 68 */	lwz r6, sRFLManager@sda21(r0)
/* 814DA570 | 7C 7B 1B 78 */	mr r27, r3
/* 814DA574 | 7F 64 DB 78 */	mr r4, r27
/* 814DA578 | 38 A0 00 08 */	li r5, 0x8
/* 814DA57C | 80 66 00 04 */	lwz r3, 0x4(r6)
/* 814DA580 | 48 08 01 D5 */	bl fn_8155A754
/* 814DA584 | 83 8D AE 68 */	lwz r28, sRFLManager@sda21(r0)
/* 814DA588 | 7F 64 DB 78 */	mr r4, r27
/* 814DA58C | 38 A0 00 01 */	li r5, 0x1
/* 814DA590 | 48 08 00 E5 */	bl fn_8155A674
/* 814DA594 | 90 7C 00 0C */	stw r3, 0xc(r28)
/* 814DA598 | 38 00 00 00 */	li r0, 0x0
/* 814DA59C | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5A0 | 90 03 1B 40 */	stw r0, 0x1b40(r3)
/* 814DA5A4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5A8 | 90 03 1B 44 */	stw r0, 0x1b44(r3)
/* 814DA5AC | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5B0 | 90 03 1B 48 */	stw r0, 0x1b48(r3)
/* 814DA5B4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5B8 | 90 03 1B 4C */	stw r0, 0x1b4c(r3)
/* 814DA5BC | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5C0 | 93 E3 1B 38 */	stw r31, 0x1b38(r3)
/* 814DA5C4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5C8 | 98 03 1B 3C */	stb r0, 0x1b3c(r3)
/* 814DA5CC | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5D0 | 90 03 1B 34 */	stw r0, 0x1b34(r3)
/* 814DA5D4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5D8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814DA5DC | 48 00 A8 99 */	bl RFLiInitDatabase
/* 814DA5E0 | 48 00 09 BD */	bl RFLiInitLoader
/* 814DA5E4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5E8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814DA5EC | 48 00 C5 DD */	bl RFLiInitCtrlBuf
/* 814DA5F0 | 48 00 9B 69 */	bl RFLiInitHiddenDatabase
/* 814DA5F4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA5F8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814DA5FC | 48 00 19 CD */	bl RFLiInitAccessInfo
/* 814DA600 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814DA604 | 41 82 00 2C */	beq .L_814DA630
/* 814DA608 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA60C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA610 | 41 82 00 0C */	beq .L_814DA61C
/* 814DA614 | 38 63 00 C0 */	addi r3, r3, 0xc0
/* 814DA618 | 48 00 00 08 */	b .L_814DA620
.L_814DA61C:
/* 814DA61C | 38 60 00 00 */	li r3, 0x0
.L_814DA620:
/* 814DA620 | 38 00 00 01 */	li r0, 0x1
/* 814DA624 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 814DA628 | 93 C3 00 90 */	stw r30, 0x90(r3)
/* 814DA62C | 93 A3 00 94 */	stw r29, 0x94(r3)
.L_814DA630:
/* 814DA630 | 3C 60 81 4E */	lis r3, bootloadDB2Res_@ha
/* 814DA634 | 38 63 AA 08 */	addi r3, r3, bootloadDB2Res_@l
/* 814DA638 | 48 00 AB 99 */	bl RFLiBootLoadDatabaseAsync
/* 814DA63C | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814DA640 | 7C 7F 1B 78 */	mr r31, r3
/* 814DA644 | 41 82 01 80 */	beq .L_814DA7C4
/* 814DA648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA64C | 41 82 01 78 */	beq .L_814DA7C4
/* 814DA650 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA658 | 41 82 01 6C */	beq .L_814DA7C4
.L_814DA65C:
/* 814DA65C | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA664 | 40 82 00 0C */	bne .L_814DA670
/* 814DA668 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DA66C | 48 00 00 5C */	b .L_814DA6C8
.L_814DA670:
/* 814DA670 | 48 00 1A 19 */	bl RFLiIsWorking
/* 814DA674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA678 | 41 82 00 0C */	beq .L_814DA684
/* 814DA67C | 38 00 00 06 */	li r0, 0x6
/* 814DA680 | 48 00 00 48 */	b .L_814DA6C8
.L_814DA684:
/* 814DA684 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DA688 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DA68C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA690 | 41 82 00 08 */	beq .L_814DA698
/* 814DA694 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DA698:
/* 814DA698 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DA69C | 38 60 00 01 */	li r3, 0x1
/* 814DA6A0 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DA6A4 | 40 82 00 10 */	bne .L_814DA6B4
/* 814DA6A8 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DA6AC | 40 82 00 08 */	bne .L_814DA6B4
/* 814DA6B0 | 38 60 00 00 */	li r3, 0x0
.L_814DA6B4:
/* 814DA6B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA6B8 | 41 82 00 0C */	beq .L_814DA6C4
/* 814DA6BC | 38 00 00 05 */	li r0, 0x5
/* 814DA6C0 | 48 00 00 08 */	b .L_814DA6C8
.L_814DA6C4:
/* 814DA6C4 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DA6C8:
/* 814DA6C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814DA6CC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814DA6D0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DA6D4 | 41 82 FF 88 */	beq .L_814DA65C
/* 814DA6D8 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA6DC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814DA6E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA6E4 | 40 82 00 0C */	bne .L_814DA6F0
/* 814DA6E8 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DA6EC | 48 00 00 5C */	b .L_814DA748
.L_814DA6F0:
/* 814DA6F0 | 48 00 19 99 */	bl RFLiIsWorking
/* 814DA6F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA6F8 | 41 82 00 0C */	beq .L_814DA704
/* 814DA6FC | 38 00 00 06 */	li r0, 0x6
/* 814DA700 | 48 00 00 48 */	b .L_814DA748
.L_814DA704:
/* 814DA704 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DA708 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DA70C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA710 | 41 82 00 08 */	beq .L_814DA718
/* 814DA714 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DA718:
/* 814DA718 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DA71C | 38 60 00 01 */	li r3, 0x1
/* 814DA720 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DA724 | 40 82 00 10 */	bne .L_814DA734
/* 814DA728 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DA72C | 40 82 00 08 */	bne .L_814DA734
/* 814DA730 | 38 60 00 00 */	li r3, 0x0
.L_814DA734:
/* 814DA734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA738 | 41 82 00 0C */	beq .L_814DA744
/* 814DA73C | 38 00 00 05 */	li r0, 0x5
/* 814DA740 | 48 00 00 08 */	b .L_814DA748
.L_814DA744:
/* 814DA744 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DA748:
/* 814DA748 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA74C | 90 0D 9D 3C */	stw r0, sRFLLastErrCode@sda21(r0)
/* 814DA750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA754 | 41 82 00 18 */	beq .L_814DA76C
/* 814DA758 | 41 82 00 0C */	beq .L_814DA764
/* 814DA75C | 80 03 1B 48 */	lwz r0, 0x1b48(r3)
/* 814DA760 | 48 00 00 10 */	b .L_814DA770
.L_814DA764:
/* 814DA764 | 38 00 00 00 */	li r0, 0x0
/* 814DA768 | 48 00 00 08 */	b .L_814DA770
.L_814DA76C:
/* 814DA76C | 80 0D AE 6C */	lwz r0, sRFLLastReason@sda21(r0)
.L_814DA770:
/* 814DA770 | 90 0D AE 6C */	stw r0, sRFLLastReason@sda21(r0)
/* 814DA774 | 88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 814DA778 | 98 0D AE 70 */	stb r0, sRFLBrokenType@sda21(r0)
/* 814DA77C | 48 00 18 05 */	bl RFLIsResourceCached
/* 814DA780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA784 | 41 82 00 08 */	beq .L_814DA78C
/* 814DA788 | 48 00 17 8D */	bl RFLFreeCachedResource
.L_814DA78C:
/* 814DA78C | 48 00 18 B9 */	bl RFLiExitAccessInfo
/* 814DA790 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA794 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814DA798 | 48 07 FF 8D */	bl fn_8155A724
/* 814DA79C | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA7A0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814DA7A4 | 48 07 FF 81 */	bl fn_8155A724
/* 814DA7A8 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA7AC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814DA7B0 | 48 07 FF 75 */	bl fn_8155A724
/* 814DA7B4 | 38 00 00 00 */	li r0, 0x0
/* 814DA7B8 | 90 0D AE 68 */	stw r0, sRFLManager@sda21(r0)
/* 814DA7BC | 48 00 00 08 */	b .L_814DA7C4
.L_814DA7C0:
/* 814DA7C0 | 3B E0 00 00 */	li r31, 0x0
.L_814DA7C4:
/* 814DA7C4 | 7F E3 FB 78 */	mr r3, r31
.L_814DA7C8:
/* 814DA7C8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814DA7CC | 48 11 ED 41 */	bl _restgpr_27
/* 814DA7D0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814DA7D4 | 7C 08 03 A6 */	mtlr r0
/* 814DA7D8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814DA7DC | 4E 80 00 20 */	blr
.endfn RFLInitResAsync

# .text:0x384 | 0x814DA7E0 | size: 0xA0
.fn RFLInitRes, global
/* 814DA7E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DA7E4 | 7C 08 02 A6 */	mflr r0
/* 814DA7E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DA7EC | 4B FF FC 8D */	bl RFLInitResAsync
.L_814DA7F0:
/* 814DA7F0 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA7F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA7F8 | 40 82 00 0C */	bne .L_814DA804
/* 814DA7FC | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DA800 | 48 00 00 5C */	b .L_814DA85C
.L_814DA804:
/* 814DA804 | 48 00 18 85 */	bl RFLiIsWorking
/* 814DA808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA80C | 41 82 00 0C */	beq .L_814DA818
/* 814DA810 | 38 00 00 06 */	li r0, 0x6
/* 814DA814 | 48 00 00 48 */	b .L_814DA85C
.L_814DA818:
/* 814DA818 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DA81C | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DA820 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA824 | 41 82 00 08 */	beq .L_814DA82C
/* 814DA828 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DA82C:
/* 814DA82C | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DA830 | 38 60 00 01 */	li r3, 0x1
/* 814DA834 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DA838 | 40 82 00 10 */	bne .L_814DA848
/* 814DA83C | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DA840 | 40 82 00 08 */	bne .L_814DA848
/* 814DA844 | 38 60 00 00 */	li r3, 0x0
.L_814DA848:
/* 814DA848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA84C | 41 82 00 0C */	beq .L_814DA858
/* 814DA850 | 38 00 00 05 */	li r0, 0x5
/* 814DA854 | 48 00 00 08 */	b .L_814DA85C
.L_814DA858:
/* 814DA858 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DA85C:
/* 814DA85C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814DA860 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814DA864 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DA868 | 41 82 FF 88 */	beq .L_814DA7F0
/* 814DA86C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814DA870 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DA874 | 7C 08 03 A6 */	mtlr r0
/* 814DA878 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DA87C | 4E 80 00 20 */	blr
.endfn RFLInitRes

# .text:0x424 | 0x814DA880 | size: 0x188
.fn RFLExit, global
/* 814DA880 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DA884 | 7C 08 02 A6 */	mflr r0
/* 814DA888 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DA88C | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA894 | 41 82 01 64 */	beq .L_814DA9F8
.L_814DA898:
/* 814DA898 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA89C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA8A0 | 40 82 00 0C */	bne .L_814DA8AC
/* 814DA8A4 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DA8A8 | 48 00 00 5C */	b .L_814DA904
.L_814DA8AC:
/* 814DA8AC | 48 00 17 DD */	bl RFLiIsWorking
/* 814DA8B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA8B4 | 41 82 00 0C */	beq .L_814DA8C0
/* 814DA8B8 | 38 00 00 06 */	li r0, 0x6
/* 814DA8BC | 48 00 00 48 */	b .L_814DA904
.L_814DA8C0:
/* 814DA8C0 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DA8C4 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DA8C8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA8CC | 41 82 00 08 */	beq .L_814DA8D4
/* 814DA8D0 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DA8D4:
/* 814DA8D4 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DA8D8 | 38 60 00 01 */	li r3, 0x1
/* 814DA8DC | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DA8E0 | 40 82 00 10 */	bne .L_814DA8F0
/* 814DA8E4 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DA8E8 | 40 82 00 08 */	bne .L_814DA8F0
/* 814DA8EC | 38 60 00 00 */	li r3, 0x0
.L_814DA8F0:
/* 814DA8F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA8F4 | 41 82 00 0C */	beq .L_814DA900
/* 814DA8F8 | 38 00 00 05 */	li r0, 0x5
/* 814DA8FC | 48 00 00 08 */	b .L_814DA904
.L_814DA900:
/* 814DA900 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DA904:
/* 814DA904 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814DA908 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814DA90C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DA910 | 41 82 FF 88 */	beq .L_814DA898
/* 814DA914 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DA918 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814DA91C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DA920 | 40 82 00 0C */	bne .L_814DA92C
/* 814DA924 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DA928 | 48 00 00 5C */	b .L_814DA984
.L_814DA92C:
/* 814DA92C | 48 00 17 5D */	bl RFLiIsWorking
/* 814DA930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA934 | 41 82 00 0C */	beq .L_814DA940
/* 814DA938 | 38 00 00 06 */	li r0, 0x6
/* 814DA93C | 48 00 00 48 */	b .L_814DA984
.L_814DA940:
/* 814DA940 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DA944 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DA948 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA94C | 41 82 00 08 */	beq .L_814DA954
/* 814DA950 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DA954:
/* 814DA954 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DA958 | 38 60 00 01 */	li r3, 0x1
/* 814DA95C | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DA960 | 40 82 00 10 */	bne .L_814DA970
/* 814DA964 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DA968 | 40 82 00 08 */	bne .L_814DA970
/* 814DA96C | 38 60 00 00 */	li r3, 0x0
.L_814DA970:
/* 814DA970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA974 | 41 82 00 0C */	beq .L_814DA980
/* 814DA978 | 38 00 00 05 */	li r0, 0x5
/* 814DA97C | 48 00 00 08 */	b .L_814DA984
.L_814DA980:
/* 814DA980 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DA984:
/* 814DA984 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA988 | 90 0D 9D 3C */	stw r0, sRFLLastErrCode@sda21(r0)
/* 814DA98C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA990 | 41 82 00 18 */	beq .L_814DA9A8
/* 814DA994 | 41 82 00 0C */	beq .L_814DA9A0
/* 814DA998 | 80 03 1B 48 */	lwz r0, 0x1b48(r3)
/* 814DA99C | 48 00 00 10 */	b .L_814DA9AC
.L_814DA9A0:
/* 814DA9A0 | 38 00 00 00 */	li r0, 0x0
/* 814DA9A4 | 48 00 00 08 */	b .L_814DA9AC
.L_814DA9A8:
/* 814DA9A8 | 80 0D AE 6C */	lwz r0, sRFLLastReason@sda21(r0)
.L_814DA9AC:
/* 814DA9AC | 90 0D AE 6C */	stw r0, sRFLLastReason@sda21(r0)
/* 814DA9B0 | 88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 814DA9B4 | 98 0D AE 70 */	stb r0, sRFLBrokenType@sda21(r0)
/* 814DA9B8 | 48 00 15 C9 */	bl RFLIsResourceCached
/* 814DA9BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA9C0 | 41 82 00 08 */	beq .L_814DA9C8
/* 814DA9C4 | 48 00 15 51 */	bl RFLFreeCachedResource
.L_814DA9C8:
/* 814DA9C8 | 48 00 16 7D */	bl RFLiExitAccessInfo
/* 814DA9CC | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA9D0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814DA9D4 | 48 07 FD 51 */	bl fn_8155A724
/* 814DA9D8 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA9DC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814DA9E0 | 48 07 FD 45 */	bl fn_8155A724
/* 814DA9E4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DA9E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814DA9EC | 48 07 FD 39 */	bl fn_8155A724
/* 814DA9F0 | 38 00 00 00 */	li r0, 0x0
/* 814DA9F4 | 90 0D AE 68 */	stw r0, sRFLManager@sda21(r0)
.L_814DA9F8:
/* 814DA9F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DA9FC | 7C 08 03 A6 */	mtlr r0
/* 814DAA00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DAA04 | 4E 80 00 20 */	blr
.endfn RFLExit

# .text:0x5AC | 0x814DAA08 | size: 0x22C
.fn bootloadDB2Res_, local
/* 814DAA08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DAA0C | 7C 08 02 A6 */	mflr r0
/* 814DAA10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DAA14 | 48 00 0B 39 */	bl RFLiLoadResourceHeaderAsync
.L_814DAA18:
/* 814DAA18 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DAA1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DAA20 | 40 82 00 0C */	bne .L_814DAA2C
/* 814DAA24 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DAA28 | 48 00 00 5C */	b .L_814DAA84
.L_814DAA2C:
/* 814DAA2C | 48 00 16 5D */	bl RFLiIsWorking
/* 814DAA30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAA34 | 41 82 00 0C */	beq .L_814DAA40
/* 814DAA38 | 38 00 00 06 */	li r0, 0x6
/* 814DAA3C | 48 00 00 48 */	b .L_814DAA84
.L_814DAA40:
/* 814DAA40 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAA44 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DAA48 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DAA4C | 41 82 00 08 */	beq .L_814DAA54
/* 814DAA50 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DAA54:
/* 814DAA54 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DAA58 | 38 60 00 01 */	li r3, 0x1
/* 814DAA5C | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DAA60 | 40 82 00 10 */	bne .L_814DAA70
/* 814DAA64 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DAA68 | 40 82 00 08 */	bne .L_814DAA70
/* 814DAA6C | 38 60 00 00 */	li r3, 0x0
.L_814DAA70:
/* 814DAA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAA74 | 41 82 00 0C */	beq .L_814DAA80
/* 814DAA78 | 38 00 00 05 */	li r0, 0x5
/* 814DAA7C | 48 00 00 08 */	b .L_814DAA84
.L_814DAA80:
/* 814DAA80 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DAA84:
/* 814DAA84 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814DAA88 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814DAA8C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DAA90 | 41 82 FF 88 */	beq .L_814DAA18
/* 814DAA94 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814DAA98 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814DAA9C | 41 82 01 88 */	beq .L_814DAC24
/* 814DAAA0 | 40 80 00 10 */	bge .L_814DAAB0
/* 814DAAA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DAAA8 | 41 82 01 7C */	beq .L_814DAC24
/* 814DAAAC | 48 00 00 0C */	b .L_814DAAB8
.L_814DAAB0:
/* 814DAAB0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DAAB4 | 41 82 01 70 */	beq .L_814DAC24
.L_814DAAB8:
/* 814DAAB8 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DAABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DAAC0 | 41 82 01 64 */	beq .L_814DAC24
.L_814DAAC4:
/* 814DAAC4 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DAAC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DAACC | 40 82 00 0C */	bne .L_814DAAD8
/* 814DAAD0 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DAAD4 | 48 00 00 5C */	b .L_814DAB30
.L_814DAAD8:
/* 814DAAD8 | 48 00 15 B1 */	bl RFLiIsWorking
/* 814DAADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAAE0 | 41 82 00 0C */	beq .L_814DAAEC
/* 814DAAE4 | 38 00 00 06 */	li r0, 0x6
/* 814DAAE8 | 48 00 00 48 */	b .L_814DAB30
.L_814DAAEC:
/* 814DAAEC | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAAF0 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DAAF4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DAAF8 | 41 82 00 08 */	beq .L_814DAB00
/* 814DAAFC | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DAB00:
/* 814DAB00 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DAB04 | 38 60 00 01 */	li r3, 0x1
/* 814DAB08 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DAB0C | 40 82 00 10 */	bne .L_814DAB1C
/* 814DAB10 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DAB14 | 40 82 00 08 */	bne .L_814DAB1C
/* 814DAB18 | 38 60 00 00 */	li r3, 0x0
.L_814DAB1C:
/* 814DAB1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAB20 | 41 82 00 0C */	beq .L_814DAB2C
/* 814DAB24 | 38 00 00 05 */	li r0, 0x5
/* 814DAB28 | 48 00 00 08 */	b .L_814DAB30
.L_814DAB2C:
/* 814DAB2C | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DAB30:
/* 814DAB30 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814DAB34 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814DAB38 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DAB3C | 41 82 FF 88 */	beq .L_814DAAC4
/* 814DAB40 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DAB44 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814DAB48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DAB4C | 40 82 00 0C */	bne .L_814DAB58
/* 814DAB50 | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DAB54 | 48 00 00 5C */	b .L_814DABB0
.L_814DAB58:
/* 814DAB58 | 48 00 15 31 */	bl RFLiIsWorking
/* 814DAB5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAB60 | 41 82 00 0C */	beq .L_814DAB6C
/* 814DAB64 | 38 00 00 06 */	li r0, 0x6
/* 814DAB68 | 48 00 00 48 */	b .L_814DABB0
.L_814DAB6C:
/* 814DAB6C | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAB70 | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DAB74 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DAB78 | 41 82 00 08 */	beq .L_814DAB80
/* 814DAB7C | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DAB80:
/* 814DAB80 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DAB84 | 38 60 00 01 */	li r3, 0x1
/* 814DAB88 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DAB8C | 40 82 00 10 */	bne .L_814DAB9C
/* 814DAB90 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DAB94 | 40 82 00 08 */	bne .L_814DAB9C
/* 814DAB98 | 38 60 00 00 */	li r3, 0x0
.L_814DAB9C:
/* 814DAB9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DABA0 | 41 82 00 0C */	beq .L_814DABAC
/* 814DABA4 | 38 00 00 05 */	li r0, 0x5
/* 814DABA8 | 48 00 00 08 */	b .L_814DABB0
.L_814DABAC:
/* 814DABAC | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DABB0:
/* 814DABB0 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DABB4 | 90 0D 9D 3C */	stw r0, sRFLLastErrCode@sda21(r0)
/* 814DABB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DABBC | 41 82 00 18 */	beq .L_814DABD4
/* 814DABC0 | 41 82 00 0C */	beq .L_814DABCC
/* 814DABC4 | 80 03 1B 48 */	lwz r0, 0x1b48(r3)
/* 814DABC8 | 48 00 00 10 */	b .L_814DABD8
.L_814DABCC:
/* 814DABCC | 38 00 00 00 */	li r0, 0x0
/* 814DABD0 | 48 00 00 08 */	b .L_814DABD8
.L_814DABD4:
/* 814DABD4 | 80 0D AE 6C */	lwz r0, sRFLLastReason@sda21(r0)
.L_814DABD8:
/* 814DABD8 | 90 0D AE 6C */	stw r0, sRFLLastReason@sda21(r0)
/* 814DABDC | 88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 814DABE0 | 98 0D AE 70 */	stb r0, sRFLBrokenType@sda21(r0)
/* 814DABE4 | 48 00 13 9D */	bl RFLIsResourceCached
/* 814DABE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DABEC | 41 82 00 08 */	beq .L_814DABF4
/* 814DABF0 | 48 00 13 25 */	bl RFLFreeCachedResource
.L_814DABF4:
/* 814DABF4 | 48 00 14 51 */	bl RFLiExitAccessInfo
/* 814DABF8 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DABFC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814DAC00 | 48 07 FB 25 */	bl fn_8155A724
/* 814DAC04 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAC08 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814DAC0C | 48 07 FB 19 */	bl fn_8155A724
/* 814DAC10 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAC14 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814DAC18 | 48 07 FB 0D */	bl fn_8155A724
/* 814DAC1C | 38 00 00 00 */	li r0, 0x0
/* 814DAC20 | 90 0D AE 68 */	stw r0, sRFLManager@sda21(r0)
.L_814DAC24:
/* 814DAC24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DAC28 | 7C 08 03 A6 */	mtlr r0
/* 814DAC2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DAC30 | 4E 80 00 20 */	blr
.endfn bootloadDB2Res_

# .text:0x7D8 | 0x814DAC34 | size: 0x14
.fn RFLAvailable, global
/* 814DAC34 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAC38 | 7C 03 00 D0 */	neg r0, r3
/* 814DAC3C | 7C 00 1B 78 */	or r0, r0, r3
/* 814DAC40 | 54 03 0F FE */	srwi r3, r0, 31
/* 814DAC44 | 4E 80 00 20 */	blr
.endfn RFLAvailable

# .text:0x7EC | 0x814DAC48 | size: 0x14
.fn RFLiAlloc, global
/* 814DAC48 | 80 CD AE 68 */	lwz r6, sRFLManager@sda21(r0)
/* 814DAC4C | 7C 64 1B 78 */	mr r4, r3
/* 814DAC50 | 38 A0 00 08 */	li r5, 0x8
/* 814DAC54 | 80 66 00 0C */	lwz r3, 0xc(r6)
/* 814DAC58 | 48 07 FA FC */	b fn_8155A754
.endfn RFLiAlloc

# .text:0x800 | 0x814DAC5C | size: 0x14
.fn RFLiAlloc32, global
/* 814DAC5C | 80 CD AE 68 */	lwz r6, sRFLManager@sda21(r0)
/* 814DAC60 | 7C 64 1B 78 */	mr r4, r3
/* 814DAC64 | 38 A0 00 20 */	li r5, 0x20
/* 814DAC68 | 80 66 00 0C */	lwz r3, 0xc(r6)
/* 814DAC6C | 48 07 FA E8 */	b fn_8155A754
.endfn RFLiAlloc32

# .text:0x814 | 0x814DAC70 | size: 0x10
.fn RFLiFree, global
/* 814DAC70 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAC74 | 7C 64 1B 78 */	mr r4, r3
/* 814DAC78 | 80 65 00 0C */	lwz r3, 0xc(r5)
/* 814DAC7C | 48 07 FD 88 */	b fn_8155AA04
.endfn RFLiFree

# .text:0x824 | 0x814DAC80 | size: 0x1C
.fn RFLiGetDBManager, global
/* 814DAC80 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAC84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAC88 | 40 82 00 0C */	bne .L_814DAC94
/* 814DAC8C | 38 60 00 00 */	li r3, 0x0
/* 814DAC90 | 4E 80 00 20 */	blr
.L_814DAC94:
/* 814DAC94 | 38 63 00 10 */	addi r3, r3, 0x10
/* 814DAC98 | 4E 80 00 20 */	blr
.endfn RFLiGetDBManager

# .text:0x840 | 0x814DAC9C | size: 0x1C
.fn RFLiGetHDBManager, global
/* 814DAC9C | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DACA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DACA4 | 40 82 00 0C */	bne .L_814DACB0
/* 814DACA8 | 38 60 00 00 */	li r3, 0x0
/* 814DACAC | 4E 80 00 20 */	blr
.L_814DACB0:
/* 814DACB0 | 38 63 01 6C */	addi r3, r3, 0x16c
/* 814DACB4 | 4E 80 00 20 */	blr
.endfn RFLiGetHDBManager

# .text:0x85C | 0x814DACB8 | size: 0x1C
.fn RFLiGetLoader, global
/* 814DACB8 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DACBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DACC0 | 40 82 00 0C */	bne .L_814DACCC
/* 814DACC4 | 38 60 00 00 */	li r3, 0x0
/* 814DACC8 | 4E 80 00 20 */	blr
.L_814DACCC:
/* 814DACCC | 38 63 00 C0 */	addi r3, r3, 0xc0
/* 814DACD0 | 4E 80 00 20 */	blr
.endfn RFLiGetLoader

# .text:0x878 | 0x814DACD4 | size: 0x1C
.fn RFLiGetWorking, global
/* 814DACD4 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DACD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DACDC | 40 82 00 0C */	bne .L_814DACE8
/* 814DACE0 | 38 60 00 00 */	li r3, 0x0
/* 814DACE4 | 4E 80 00 20 */	blr
.L_814DACE8:
/* 814DACE8 | 80 63 1B 34 */	lwz r3, 0x1b34(r3)
/* 814DACEC | 4E 80 00 20 */	blr
.endfn RFLiGetWorking

# .text:0x894 | 0x814DACF0 | size: 0xC
.fn RFLiSetWorking, global
/* 814DACF0 | 80 8D AE 68 */	lwz r4, sRFLManager@sda21(r0)
/* 814DACF4 | 90 64 1B 34 */	stw r3, 0x1b34(r4)
/* 814DACF8 | 4E 80 00 20 */	blr
.endfn RFLiSetWorking

# .text:0x8A0 | 0x814DACFC | size: 0x8
.fn RFLiGetManager, global
/* 814DACFC | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAD00 | 4E 80 00 20 */	blr
.endfn RFLiGetManager

# .text:0x8A8 | 0x814DAD04 | size: 0x88
.fn RFLGetAsyncStatus, global
/* 814DAD04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DAD08 | 7C 08 02 A6 */	mflr r0
/* 814DAD0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DAD10 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DAD14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DAD18 | 40 82 00 0C */	bne .L_814DAD24
/* 814DAD1C | 80 6D 9D 3C */	lwz r3, sRFLLastErrCode@sda21(r0)
/* 814DAD20 | 48 00 00 5C */	b .L_814DAD7C
.L_814DAD24:
/* 814DAD24 | 48 00 13 65 */	bl RFLiIsWorking
/* 814DAD28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAD2C | 41 82 00 0C */	beq .L_814DAD38
/* 814DAD30 | 38 60 00 06 */	li r3, 0x6
/* 814DAD34 | 48 00 00 48 */	b .L_814DAD7C
.L_814DAD38:
/* 814DAD38 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAD3C | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DAD40 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DAD44 | 41 82 00 08 */	beq .L_814DAD4C
/* 814DAD48 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DAD4C:
/* 814DAD4C | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DAD50 | 38 60 00 01 */	li r3, 0x1
/* 814DAD54 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DAD58 | 40 82 00 10 */	bne .L_814DAD68
/* 814DAD5C | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DAD60 | 40 82 00 08 */	bne .L_814DAD68
/* 814DAD64 | 38 60 00 00 */	li r3, 0x0
.L_814DAD68:
/* 814DAD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAD6C | 41 82 00 0C */	beq .L_814DAD78
/* 814DAD70 | 38 60 00 05 */	li r3, 0x5
/* 814DAD74 | 48 00 00 08 */	b .L_814DAD7C
.L_814DAD78:
/* 814DAD78 | 80 65 1B 40 */	lwz r3, 0x1b40(r5)
.L_814DAD7C:
/* 814DAD7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DAD80 | 7C 08 03 A6 */	mtlr r0
/* 814DAD84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DAD88 | 4E 80 00 20 */	blr
.endfn RFLGetAsyncStatus

# .text:0x930 | 0x814DAD8C | size: 0x28
.fn RFLGetLastReason, global
/* 814DAD8C | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAD90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAD94 | 40 82 00 0C */	bne .L_814DADA0
/* 814DAD98 | 80 6D AE 6C */	lwz r3, sRFLLastReason@sda21(r0)
/* 814DAD9C | 4E 80 00 20 */	blr
.L_814DADA0:
/* 814DADA0 | 41 82 00 0C */	beq .L_814DADAC
/* 814DADA4 | 80 63 1B 48 */	lwz r3, 0x1b48(r3)
/* 814DADA8 | 4E 80 00 20 */	blr
.L_814DADAC:
/* 814DADAC | 38 60 00 00 */	li r3, 0x0
/* 814DADB0 | 4E 80 00 20 */	blr
.endfn RFLGetLastReason

# .text:0x958 | 0x814DADB4 | size: 0x9C
.fn RFLWaitAsync, global
/* 814DADB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DADB8 | 7C 08 02 A6 */	mflr r0
/* 814DADBC | 90 01 00 14 */	stw r0, 0x14(r1)
.L_814DADC0:
/* 814DADC0 | 80 0D AE 68 */	lwz r0, sRFLManager@sda21(r0)
/* 814DADC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DADC8 | 40 82 00 0C */	bne .L_814DADD4
/* 814DADCC | 80 0D 9D 3C */	lwz r0, sRFLLastErrCode@sda21(r0)
/* 814DADD0 | 48 00 00 5C */	b .L_814DAE2C
.L_814DADD4:
/* 814DADD4 | 48 00 12 B5 */	bl RFLiIsWorking
/* 814DADD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DADDC | 41 82 00 0C */	beq .L_814DADE8
/* 814DADE0 | 38 00 00 06 */	li r0, 0x6
/* 814DADE4 | 48 00 00 48 */	b .L_814DAE2C
.L_814DADE8:
/* 814DADE8 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DADEC | 38 6D AE 70 */	li r3, sRFLBrokenType@sda21
/* 814DADF0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DADF4 | 41 82 00 08 */	beq .L_814DADFC
/* 814DADF8 | 38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_814DADFC:
/* 814DADFC | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814DAE00 | 38 60 00 01 */	li r3, 0x1
/* 814DAE04 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 814DAE08 | 40 82 00 10 */	bne .L_814DAE18
/* 814DAE0C | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 814DAE10 | 40 82 00 08 */	bne .L_814DAE18
/* 814DAE14 | 38 60 00 00 */	li r3, 0x0
.L_814DAE18:
/* 814DAE18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAE1C | 41 82 00 0C */	beq .L_814DAE28
/* 814DAE20 | 38 00 00 05 */	li r0, 0x5
/* 814DAE24 | 48 00 00 08 */	b .L_814DAE2C
.L_814DAE28:
/* 814DAE28 | 80 05 1B 40 */	lwz r0, 0x1b40(r5)
.L_814DAE2C:
/* 814DAE2C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814DAE30 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814DAE34 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814DAE38 | 41 82 FF 88 */	beq .L_814DADC0
/* 814DAE3C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814DAE40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DAE44 | 7C 08 03 A6 */	mtlr r0
/* 814DAE48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DAE4C | 4E 80 00 20 */	blr
.endfn RFLWaitAsync

# .text:0x9F4 | 0x814DAE50 | size: 0x24
.fn RFLiGetAccInfo, global
/* 814DAE50 | 80 8D AE 68 */	lwz r4, sRFLManager@sda21(r0)
/* 814DAE54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814DAE58 | 40 82 00 0C */	bne .L_814DAE64
/* 814DAE5C | 38 60 00 00 */	li r3, 0x0
/* 814DAE60 | 4E 80 00 20 */	blr
.L_814DAE64:
/* 814DAE64 | 1C 03 01 E0 */	mulli r0, r3, 0x1e0
/* 814DAE68 | 7C 64 02 14 */	add r3, r4, r0
/* 814DAE6C | 38 63 1B 50 */	addi r3, r3, 0x1b50
/* 814DAE70 | 4E 80 00 20 */	blr
.endfn RFLiGetAccInfo

# .text:0xA18 | 0x814DAE74 | size: 0x1C
.fn RFLiGetCtrlBufManager, global
/* 814DAE74 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAE78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAE7C | 40 82 00 0C */	bne .L_814DAE88
/* 814DAE80 | 38 60 00 00 */	li r3, 0x0
/* 814DAE84 | 4E 80 00 20 */	blr
.L_814DAE88:
/* 814DAE88 | 38 63 1A AC */	addi r3, r3, 0x1aac
/* 814DAE8C | 4E 80 00 20 */	blr
.endfn RFLiGetCtrlBufManager

# .text:0xA34 | 0x814DAE90 | size: 0x1C
.fn RFLiGetUseDeluxTex, global
/* 814DAE90 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAE94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAE98 | 40 82 00 0C */	bne .L_814DAEA4
/* 814DAE9C | 38 60 00 00 */	li r3, 0x0
/* 814DAEA0 | 4E 80 00 20 */	blr
.L_814DAEA4:
/* 814DAEA4 | 80 63 1B 38 */	lwz r3, 0x1b38(r3)
/* 814DAEA8 | 4E 80 00 20 */	blr
.endfn RFLiGetUseDeluxTex

# .text:0xA50 | 0x814DAEAC | size: 0x1C
.fn RFLiGetLastReason, global
/* 814DAEAC | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAEB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAEB4 | 40 82 00 0C */	bne .L_814DAEC0
/* 814DAEB8 | 38 60 00 00 */	li r3, 0x0
/* 814DAEBC | 4E 80 00 20 */	blr
.L_814DAEC0:
/* 814DAEC0 | 80 63 1B 48 */	lwz r3, 0x1b48(r3)
/* 814DAEC4 | 4E 80 00 20 */	blr
.endfn RFLiGetLastReason

# .text:0xA6C | 0x814DAEC8 | size: 0x44
.fn RFLiSetMacAddr, global
/* 814DAEC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DAECC | 7C 08 02 A6 */	mflr r0
/* 814DAED0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DAED4 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAED8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DAEDC | 40 82 00 0C */	bne .L_814DAEE8
/* 814DAEE0 | 38 60 00 00 */	li r3, 0x0
/* 814DAEE4 | 48 00 00 18 */	b .L_814DAEFC
.L_814DAEE8:
/* 814DAEE8 | 7C 64 1B 78 */	mr r4, r3
/* 814DAEEC | 38 65 1F 14 */	addi r3, r5, 0x1f14
/* 814DAEF0 | 38 A0 00 06 */	li r5, 0x6
/* 814DAEF4 | 4B E5 53 3D */	bl memcpy
/* 814DAEF8 | 38 60 00 01 */	li r3, 0x1
.L_814DAEFC:
/* 814DAEFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DAF00 | 7C 08 03 A6 */	mtlr r0
/* 814DAF04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DAF08 | 4E 80 00 20 */	blr
.endfn RFLiSetMacAddr

# .text:0xAB0 | 0x814DAF0C | size: 0x1C
.fn RFLiGetMacAddr, global
/* 814DAF0C | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAF14 | 40 82 00 0C */	bne .L_814DAF20
/* 814DAF18 | 38 60 00 00 */	li r3, 0x0
/* 814DAF1C | 4E 80 00 20 */	blr
.L_814DAF20:
/* 814DAF20 | 38 63 1F 14 */	addi r3, r3, 0x1f14
/* 814DAF24 | 4E 80 00 20 */	blr
.endfn RFLiGetMacAddr

# .text:0xACC | 0x814DAF28 | size: 0x28
.fn RFLiSetFileBroken, global
/* 814DAF28 | 80 AD AE 68 */	lwz r5, sRFLManager@sda21(r0)
/* 814DAF2C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DAF30 | 4D 82 00 20 */	beqlr
/* 814DAF34 | 38 00 00 01 */	li r0, 0x1
/* 814DAF38 | 88 85 1B 3C */	lbz r4, 0x1b3c(r5)
/* 814DAF3C | 7C 00 18 30 */	slw r0, r0, r3
/* 814DAF40 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814DAF44 | 7C 80 03 78 */	or r0, r4, r0
/* 814DAF48 | 98 05 1B 3C */	stb r0, 0x1b3c(r5)
/* 814DAF4C | 4E 80 00 20 */	blr
.endfn RFLiSetFileBroken

# .text:0xAF4 | 0x814DAF50 | size: 0x20
.fn RFLiNotFoundError, global
/* 814DAF50 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAF54 | 38 8D AE 70 */	li r4, sRFLBrokenType@sda21
/* 814DAF58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAF5C | 41 82 00 08 */	beq .L_814DAF64
/* 814DAF60 | 38 83 1B 3C */	addi r4, r3, 0x1b3c
.L_814DAF64:
/* 814DAF64 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814DAF68 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814DAF6C | 4E 80 00 20 */	blr
.endfn RFLiNotFoundError

# .text:0xB14 | 0x814DAF70 | size: 0x20
.fn RFLiNeedRepairError, global
/* 814DAF70 | 80 6D AE 68 */	lwz r3, sRFLManager@sda21(r0)
/* 814DAF74 | 38 8D AE 70 */	li r4, sRFLBrokenType@sda21
/* 814DAF78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DAF7C | 41 82 00 08 */	beq .L_814DAF84
/* 814DAF80 | 38 83 1B 3C */	addi r4, r3, 0x1b3c
.L_814DAF84:
/* 814DAF84 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814DAF88 | 54 03 FF FE */	extrwi r3, r0, 1, 30
/* 814DAF8C | 4E 80 00 20 */	blr
.endfn RFLiNeedRepairError

# .text:0xB34 | 0x814DAF90 | size: 0xC
.fn RFLGetArcFilePath, global
/* 814DAF90 | 3C 60 81 67 */	lis r3, lbl_8166E9F0@ha
/* 814DAF94 | 38 63 E9 F0 */	addi r3, r3, lbl_8166E9F0@l
/* 814DAF98 | 4E 80 00 20 */	blr
.endfn RFLGetArcFilePath

# 0x8166E9A8..0x8166EA00 | size: 0x58
.data
.balign 8

# .data:0x0 | 0x8166E9A8 | size: 0x48
.obj lbl_8166E9A8, global
	.string "<< RVL_SDK - RFL \trelease build: Feb 18 2008 09:37:42 (0x4199_60831) >>"
.endobj lbl_8166E9A8

# .data:0x48 | 0x8166E9F0 | size: 0x10
.obj lbl_8166E9F0, global
	.4byte 0x2F52464C
	.4byte 0x5F526573
	.4byte 0x2E646174
	.4byte 0x00000000
.endobj lbl_8166E9F0

# 0x81697D78..0x81697D80 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697D78 | size: 0x4
.obj __RFLVersion, global
	.4byte lbl_8166E9A8
.endobj __RFLVersion

# .sdata:0x4 | 0x81697D7C | size: 0x4
.obj sRFLLastErrCode, local
	.4byte 0x00000001
.endobj sRFLLastErrCode

# 0x81698EA8..0x81698EB8 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EA8 | size: 0x4
.obj sRFLManager, local
	.skip 0x4
.endobj sRFLManager

# .sbss:0x4 | 0x81698EAC | size: 0x4
.obj sRFLLastReason, local
	.skip 0x4
.endobj sRFLLastReason

# .sbss:0x8 | 0x81698EB0 | size: 0x1
.obj sRFLBrokenType, local
	.skip 0x1
.endobj sRFLBrokenType

# .sbss:0x9 | 0x81698EB1 | size: 0x7
.obj gap_12_81698EB1_sbss, global
.hidden gap_12_81698EB1_sbss
	.skip 0x7
.endobj gap_12_81698EB1_sbss
