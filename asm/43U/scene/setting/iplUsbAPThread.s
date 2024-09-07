.include "macros.inc"
.file "iplUsbAPThread.cpp"

# 0x813FC8FC..0x813FCA0C | size: 0x110
.text
.balign 4

# .text:0x0 | 0x813FC8FC | size: 0x4
# ipl::scene::USBAPThread::USBAPThread()
.fn __ct__Q33ipl5scene11USBAPThreadFv, global
/* 813FC8FC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11USBAPThreadFv

# .text:0x4 | 0x813FC900 | size: 0x40
# ipl::scene::USBAPRegisterCallback(int)
.fn USBAPRegisterCallback__Q23ipl5sceneFi, global
/* 813FC900 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FC904 | 40 82 00 20 */	bne .L_813FC924
/* 813FC908 | 80 8D AB E0 */	lwz r4, lbl_81698C20@sda21(r0)
/* 813FC90C | 38 00 00 01 */	li r0, 0x1
/* 813FC910 | 3C 60 81 65 */	lis r3, lbl_81657B18@ha
/* 813FC914 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 813FC918 | 38 63 7B 18 */	addi r3, r3, lbl_81657B18@l
/* 813FC91C | 4C C6 31 82 */	crclr cr1eq
/* 813FC920 | 48 13 1D 80 */	b OSReport
.L_813FC924:
/* 813FC924 | 80 8D AB E0 */	lwz r4, lbl_81698C20@sda21(r0)
/* 813FC928 | 38 00 00 02 */	li r0, 0x2
/* 813FC92C | 3C 60 81 65 */	lis r3, lbl_81657B32@ha
/* 813FC930 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 813FC934 | 38 63 7B 32 */	addi r3, r3, lbl_81657B32@l
/* 813FC938 | 4C C6 31 82 */	crclr cr1eq
/* 813FC93C | 48 13 1D 64 */	b OSReport
.endfn USBAPRegisterCallback__Q23ipl5sceneFi

# .text:0x44 | 0x813FC940 | size: 0x80
# ipl::scene::USBAPThread::Init(unsigned short*, unsigned char*)
.fn Init__Q33ipl5scene11USBAPThreadFPUsPUc, global
/* 813FC940 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FC944 | 7C 08 02 A6 */	mflr r0
/* 813FC948 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FC94C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FC950 | 48 1F CB 79 */	bl _savegpr_29
/* 813FC954 | 7C 7D 1B 78 */	mr r29, r3
/* 813FC958 | 7C 9E 23 78 */	mr r30, r4
/* 813FC95C | 7C BF 2B 78 */	mr r31, r5
/* 813FC960 | 48 13 76 01 */	bl OSGetCurrentThread
/* 813FC964 | 48 13 89 E5 */	bl OSGetThreadPriority
/* 813FC968 | 3D 00 81 40 */	lis r8, USBAPRegisterCallback__Q23ipl5sceneFi@ha
/* 813FC96C | 38 A3 00 01 */	addi r5, r3, 0x1
/* 813FC970 | 7F A7 EB 78 */	mr r7, r29
/* 813FC974 | 7F C9 F3 78 */	mr r9, r30
/* 813FC978 | 7F EA FB 78 */	mr r10, r31
/* 813FC97C | 39 08 C9 00 */	addi r8, r8, USBAPRegisterCallback__Q23ipl5sceneFi@l
/* 813FC980 | 38 80 00 00 */	li r4, 0x0
/* 813FC984 | 38 60 00 00 */	li r3, 0x0
/* 813FC988 | 38 C0 00 00 */	li r6, 0x0
/* 813FC98C | 4B FF FB 95 */	bl USBAPStartRegistration
/* 813FC990 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FC994 | 40 82 00 14 */	bne .L_813FC9A8
/* 813FC998 | 3C 60 81 65 */	lis r3, lbl_81657B4A@ha
/* 813FC99C | 38 63 7B 4A */	addi r3, r3, lbl_81657B4A@l
/* 813FC9A0 | 4C C6 31 82 */	crclr cr1eq
/* 813FC9A4 | 48 13 1C FD */	bl OSReport
.L_813FC9A8:
/* 813FC9A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FC9AC | 48 1F CB 69 */	bl _restgpr_29
/* 813FC9B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FC9B4 | 7C 08 03 A6 */	mtlr r0
/* 813FC9B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FC9BC | 4E 80 00 20 */	blr
.endfn Init__Q33ipl5scene11USBAPThreadFPUsPUc

# .text:0xC4 | 0x813FC9C0 | size: 0x4
# ipl::scene::USBAPThread::cancel()
.fn cancel__Q33ipl5scene11USBAPThreadFv, global
/* 813FC9C0 | 4B FF FC 98 */	b USBAPCancelRegistration
.endfn cancel__Q33ipl5scene11USBAPThreadFv

# .text:0xC8 | 0x813FC9C4 | size: 0x4
# ipl::scene::USBAPThread::is()
.fn is__Q33ipl5scene11USBAPThreadFv, global
/* 813FC9C4 | 4B FF FC A8 */	b USBAPIsThreadTerminated
.endfn is__Q33ipl5scene11USBAPThreadFv

# .text:0xCC | 0x813FC9C8 | size: 0x40
# ipl::scene::USBAPThread::setData(const wchar_t*, unsigned char*)
.fn setData__Q33ipl5scene11USBAPThreadFPCwPUc, global
/* 813FC9C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC9CC | 7C 08 02 A6 */	mflr r0
/* 813FC9D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC9D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC9D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813FC9DC | 90 AD AB E0 */	stw r5, lbl_81698C20@sda21(r0)
/* 813FC9E0 | 38 A0 00 14 */	li r5, 0x14
/* 813FC9E4 | 4B F3 38 4D */	bl memcpy
/* 813FC9E8 | 7F E3 FB 78 */	mr r3, r31
/* 813FC9EC | 38 80 00 0A */	li r4, 0xa
/* 813FC9F0 | 4B F6 7A 05 */	bl changeEndian__Q33ipl7utility13CharacterCodeFPwi
/* 813FC9F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC9F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC9FC | 7C 08 03 A6 */	mtlr r0
/* 813FCA00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCA04 | 4E 80 00 20 */	blr
.endfn setData__Q33ipl5scene11USBAPThreadFPCwPUc

# .text:0x10C | 0x813FCA08 | size: 0x4
# ipl::scene::USBAPThread::USBAPThread_813FCA08()
.fn USBAPThread_813FCA08__Q33ipl5scene11USBAPThreadFv_813FCA08, global
/* 813FCA08 | 4E 80 00 20 */	blr
.endfn USBAPThread_813FCA08__Q33ipl5scene11USBAPThreadFv_813FCA08

# 0x81657B18..0x81657B60 | size: 0x48
.data
.balign 8

# .data:0x0 | 0x81657B18 | size: 0x1A
.obj lbl_81657B18, global
	.string "Registration completed !\n"
.endobj lbl_81657B18

# .data:0x1A | 0x81657B32 | size: 0x18
.obj lbl_81657B32, global
	.string "Registration failed...\n"
.endobj lbl_81657B32

# .data:0x32 | 0x81657B4A | size: 0x16
.obj lbl_81657B4A, global
	.string "Registration started\n"
.endobj lbl_81657B4A
