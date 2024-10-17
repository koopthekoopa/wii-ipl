.include "macros.inc"
.file "www_browser.cpp"

# 0x8108A480..0x8108A498 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A480 | size: 0x18
# ext_ead::www::BrowserThread::runSliceMutex_
.obj runSliceMutex___Q37ext_ead3www13BrowserThread, global
	.skip 0x18
.endobj runSliceMutex___Q37ext_ead3www13BrowserThread

# 0x8136C824..0x8136DEAC | size: 0x1688
.text
.balign 4

# .text:0x0 | 0x8136C824 | size: 0x28
# ext_ead::www::BrowserThread::SNotifyCallback_(WWWHandle*, WWWHandlewindow*, WWWEvent, WWWHandleEventData*)
.fn SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData, global
/* 8136C824 | 80 ED A9 3C */	lwz r7, ScrollState___Q23www9trasition@sda21(r0)
/* 8136C828 | 7C 69 1B 78 */	mr r9, r3
/* 8136C82C | 7C 88 23 78 */	mr r8, r4
/* 8136C830 | 7C A0 2B 78 */	mr r0, r5
/* 8136C834 | 80 67 00 28 */	lwz r3, 0x28(r7)
/* 8136C838 | 7C C7 33 78 */	mr r7, r6
/* 8136C83C | 7D 24 4B 78 */	mr r4, r9
/* 8136C840 | 7D 05 43 78 */	mr r5, r8
/* 8136C844 | 7C 06 03 78 */	mr r6, r0
/* 8136C848 | 48 00 00 04 */	b NotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData
.endfn SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData

# .text:0x28 | 0x8136C84C | size: 0xC4
# ext_ead::www::BrowserThread::NotifyCallback_(WWWHandle*, WWWHandlewindow*, WWWEvent, WWWHandleEventData*)
.fn NotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData, global
/* 8136C84C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136C850 | 7C 08 02 A6 */	mflr r0
/* 8136C854 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136C858 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136C85C | 48 28 CC 6D */	bl _savegpr_29
/* 8136C860 | 38 00 00 04 */	li r0, 0x4
/* 8136C864 | 7C DD 33 78 */	mr r29, r6
/* 8136C868 | 7C FE 3B 78 */	mr r30, r7
/* 8136C86C | 38 80 00 00 */	li r4, 0x0
/* 8136C870 | 7C 09 03 A6 */	mtctr r0
.L_8136C874:
/* 8136C874 | 7C E3 22 14 */	add r7, r3, r4
/* 8136C878 | 83 E7 06 80 */	lwz r31, 0x680(r7)
/* 8136C87C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C880 | 41 82 00 10 */	beq .L_8136C890
/* 8136C884 | 80 1F 00 84 */	lwz r0, 0x84(r31)
/* 8136C888 | 7C 00 28 40 */	cmplw r0, r5
/* 8136C88C | 41 82 00 0C */	beq .L_8136C898
.L_8136C890:
/* 8136C890 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8136C894 | 42 00 FF E0 */	bdnz .L_8136C874
.L_8136C898:
/* 8136C898 | 2C 06 00 2C */	cmpwi r6, 0x2c
/* 8136C89C | 40 82 00 10 */	bne .L_8136C8AC
/* 8136C8A0 | 80 83 06 A0 */	lwz r4, 0x6a0(r3)
/* 8136C8A4 | 7F C3 F3 78 */	mr r3, r30
/* 8136C8A8 | 48 00 49 B1 */	bl ReadRequest__Q23www9arcreaderFPC15WWWProtocolDataPQ33www9arcreader12ArcContainer
.L_8136C8AC:
/* 8136C8AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C8B0 | 41 82 00 44 */	beq .L_8136C8F4
/* 8136C8B4 | 7F E3 FB 78 */	mr r3, r31
/* 8136C8B8 | 7F A4 EB 78 */	mr r4, r29
/* 8136C8BC | 7F C5 F3 78 */	mr r5, r30
/* 8136C8C0 | 48 00 24 F9 */	bl SendNotifyEvent__Q37ext_ead3www13BrowserWindowF8WWWEventP18WWWHandleEventData
/* 8136C8C4 | 2C 1D 00 07 */	cmpwi r29, 0x7
/* 8136C8C8 | 40 82 00 2C */	bne .L_8136C8F4
/* 8136C8CC | 3C 80 81 64 */	lis r4, lbl_816429F8@ha
/* 8136C8D0 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136C8D4 | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8136C8D8 | 38 84 29 F8 */	addi r4, r4, lbl_816429F8@l
/* 8136C8DC | 80 FE 00 0C */	lwz r7, 0xc(r30)
/* 8136C8E0 | 38 60 00 03 */	li r3, 0x3
/* 8136C8E4 | 81 1E 00 08 */	lwz r8, 0x8(r30)
/* 8136C8E8 | 81 3E 00 18 */	lwz r9, 0x18(r30)
/* 8136C8EC | 4C C6 31 82 */	crclr cr1eq
/* 8136C8F0 | 48 00 1F A5 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136C8F4:
/* 8136C8F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136C8F8 | 38 60 00 00 */	li r3, 0x0
/* 8136C8FC | 48 28 CC 19 */	bl _restgpr_29
/* 8136C900 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136C904 | 7C 08 03 A6 */	mtlr r0
/* 8136C908 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136C90C | 4E 80 00 20 */	blr
.endfn NotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData

# .text:0xEC | 0x8136C910 | size: 0x104
# ext_ead::www::BrowserThread::BrowserThread()
.fn __ct__Q37ext_ead3www13BrowserThreadFv, global
/* 8136C910 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C914 | 7C 08 02 A6 */	mflr r0
/* 8136C918 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C91C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C920 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C924 | 7C 7E 1B 78 */	mr r30, r3
/* 8136C928 | 48 00 1D D5 */	bl __ct__Q37ext_ead3www9ut_threadFv
/* 8136C92C | 3C 60 81 64 */	lis r3, __vt__Q37ext_ead3www13BrowserThread@ha
/* 8136C930 | 3C C0 81 64 */	lis r6, "__vt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>"@ha
/* 8136C934 | 38 63 2C A4 */	addi r3, r3, __vt__Q37ext_ead3www13BrowserThread@l
/* 8136C938 | 3B FE 03 CC */	addi r31, r30, 0x3cc
/* 8136C93C | 38 C6 2C E8 */	addi r6, r6, "__vt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>"@l
/* 8136C940 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 8136C944 | 38 A0 00 08 */	li r5, 0x8
/* 8136C948 | 7F E3 FB 78 */	mr r3, r31
/* 8136C94C | 90 DE 03 CC */	stw r6, 0x3cc(r30)
/* 8136C950 | 38 9F 01 24 */	addi r4, r31, 0x124
/* 8136C954 | 81 9E 03 CC */	lwz r12, 0x3cc(r30)
/* 8136C958 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136C95C | 7D 89 03 A6 */	mtctr r12
/* 8136C960 | 4E 80 04 21 */	bctrl
/* 8136C964 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8136C968 | 38 80 00 00 */	li r4, 0x0
/* 8136C96C | 38 A0 00 E0 */	li r5, 0xe0
/* 8136C970 | 4B FC 39 C5 */	bl memset
/* 8136C974 | 3C 60 81 64 */	lis r3, "__vt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>"@ha
/* 8136C978 | 3B FE 05 10 */	addi r31, r30, 0x510
/* 8136C97C | 38 63 2C CC */	addi r3, r3, "__vt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>"@l
/* 8136C980 | 38 A0 00 08 */	li r5, 0x8
/* 8136C984 | 90 7E 05 10 */	stw r3, 0x510(r30)
/* 8136C988 | 7F E3 FB 78 */	mr r3, r31
/* 8136C98C | 38 9F 01 44 */	addi r4, r31, 0x144
/* 8136C990 | 81 9E 05 10 */	lwz r12, 0x510(r30)
/* 8136C994 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136C998 | 7D 89 03 A6 */	mtctr r12
/* 8136C99C | 4E 80 04 21 */	bctrl
/* 8136C9A0 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8136C9A4 | 38 80 00 00 */	li r4, 0x0
/* 8136C9A8 | 38 A0 01 00 */	li r5, 0x100
/* 8136C9AC | 4B FC 39 89 */	bl memset
/* 8136C9B0 | 38 00 00 00 */	li r0, 0x0
/* 8136C9B4 | 90 1E 06 74 */	stw r0, 0x674(r30)
/* 8136C9B8 | 90 1E 06 78 */	stw r0, 0x678(r30)
/* 8136C9BC | 90 1E 06 90 */	stw r0, 0x690(r30)
/* 8136C9C0 | 90 1E 06 94 */	stw r0, 0x694(r30)
/* 8136C9C4 | 90 1E 06 98 */	stw r0, 0x698(r30)
/* 8136C9C8 | 90 1E 06 9C */	stw r0, 0x69c(r30)
/* 8136C9CC | 90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8136C9D0 | 90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8136C9D4 | 80 0D A9 18 */	lwz r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136C9D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136C9DC | 40 82 00 10 */	bne .L_8136C9EC
/* 8136C9E0 | 3C 60 81 09 */	lis r3, runSliceMutex___Q37ext_ead3www13BrowserThread@ha
/* 8136C9E4 | 38 63 A4 80 */	addi r3, r3, runSliceMutex___Q37ext_ead3www13BrowserThread@l
/* 8136C9E8 | 48 1C 51 E9 */	bl fn_81531BD0
.L_8136C9EC:
/* 8136C9EC | 80 8D A9 18 */	lwz r4, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136C9F0 | 7F C3 F3 78 */	mr r3, r30
/* 8136C9F4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8136C9F8 | 90 0D A9 18 */	stw r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136C9FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CA00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CA04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CA08 | 7C 08 03 A6 */	mtlr r0
/* 8136CA0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CA10 | 4E 80 00 20 */	blr
.endfn __ct__Q37ext_ead3www13BrowserThreadFv

# .text:0x1F0 | 0x8136CA14 | size: 0x40
# ext_ead::www::ut_message_cmd<ext_ead::www::BrowserThread::CmdPacket, 8>::~ut_message_cmd()
.fn "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv", global
/* 8136CA14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CA18 | 7C 08 02 A6 */	mflr r0
/* 8136CA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CA20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CA24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CA28 | 7C 7F 1B 78 */	mr r31, r3
/* 8136CA2C | 41 82 00 10 */	beq .L_8136CA3C
/* 8136CA30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136CA34 | 40 81 00 08 */	ble .L_8136CA3C
/* 8136CA38 | 48 28 B6 AD */	bl __dl__FPv
.L_8136CA3C:
/* 8136CA3C | 7F E3 FB 78 */	mr r3, r31
/* 8136CA40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CA44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CA48 | 7C 08 03 A6 */	mtlr r0
/* 8136CA4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CA50 | 4E 80 00 20 */	blr
.endfn "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv"

# .text:0x230 | 0x8136CA54 | size: 0x40
# ext_ead::www::ut_message_cmd<ext_ead::www::ImeData, 8>::~ut_message_cmd()
.fn "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv", global
/* 8136CA54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CA58 | 7C 08 02 A6 */	mflr r0
/* 8136CA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CA60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CA64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CA68 | 7C 7F 1B 78 */	mr r31, r3
/* 8136CA6C | 41 82 00 10 */	beq .L_8136CA7C
/* 8136CA70 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136CA74 | 40 81 00 08 */	ble .L_8136CA7C
/* 8136CA78 | 48 28 B6 6D */	bl __dl__FPv
.L_8136CA7C:
/* 8136CA7C | 7F E3 FB 78 */	mr r3, r31
/* 8136CA80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CA84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CA88 | 7C 08 03 A6 */	mtlr r0
/* 8136CA8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CA90 | 4E 80 00 20 */	blr
.endfn "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv"

# .text:0x270 | 0x8136CA94 | size: 0xD8
# ext_ead::www::BrowserThread::~BrowserThread()
.fn __dt__Q37ext_ead3www13BrowserThreadFv, global
/* 8136CA94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CA98 | 7C 08 02 A6 */	mflr r0
/* 8136CA9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CAA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CAA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CAA8 | 7C 9F 23 78 */	mr r31, r4
/* 8136CAAC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136CAB0 | 7C 7E 1B 78 */	mr r30, r3
/* 8136CAB4 | 41 82 00 9C */	beq .L_8136CB50
/* 8136CAB8 | 3C 80 81 64 */	lis r4, __vt__Q37ext_ead3www13BrowserThread@ha
/* 8136CABC | 38 84 2C A4 */	addi r4, r4, __vt__Q37ext_ead3www13BrowserThread@l
/* 8136CAC0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8136CAC4 | 80 0D A9 18 */	lwz r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136CAC8 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 8136CACC | 90 0D A9 18 */	stw r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136CAD0 | 40 82 00 4C */	bne .L_8136CB1C
/* 8136CAD4 | 80 63 06 74 */	lwz r3, 0x674(r3)
/* 8136CAD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CADC | 41 82 00 10 */	beq .L_8136CAEC
/* 8136CAE0 | 48 00 14 7D */	bl freeMem1__Q37ext_ead3www4HeapFPv
/* 8136CAE4 | 38 00 00 00 */	li r0, 0x0
/* 8136CAE8 | 90 1E 06 74 */	stw r0, 0x674(r30)
.L_8136CAEC:
/* 8136CAEC | 80 7E 06 78 */	lwz r3, 0x678(r30)
/* 8136CAF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CAF4 | 41 82 00 10 */	beq .L_8136CB04
/* 8136CAF8 | 48 00 14 85 */	bl freeMem2__Q37ext_ead3www4HeapFPv
/* 8136CAFC | 38 00 00 00 */	li r0, 0x0
/* 8136CB00 | 90 1E 06 78 */	stw r0, 0x678(r30)
.L_8136CB04:
/* 8136CB04 | 80 7E 06 A0 */	lwz r3, 0x6a0(r30)
/* 8136CB08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CB0C | 41 82 00 10 */	beq .L_8136CB1C
/* 8136CB10 | 48 00 14 4D */	bl freeMem1__Q37ext_ead3www4HeapFPv
/* 8136CB14 | 80 7E 06 A4 */	lwz r3, 0x6a4(r30)
/* 8136CB18 | 48 00 14 45 */	bl freeMem1__Q37ext_ead3www4HeapFPv
.L_8136CB1C:
/* 8136CB1C | 38 7E 05 10 */	addi r3, r30, 0x510
/* 8136CB20 | 38 80 FF FF */	li r4, -0x1
/* 8136CB24 | 4B FF FF 31 */	bl "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv"
/* 8136CB28 | 38 7E 03 CC */	addi r3, r30, 0x3cc
/* 8136CB2C | 38 80 FF FF */	li r4, -0x1
/* 8136CB30 | 4B FF FE E5 */	bl "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv"
/* 8136CB34 | 7F C3 F3 78 */	mr r3, r30
/* 8136CB38 | 38 80 00 00 */	li r4, 0x0
/* 8136CB3C | 48 00 1B E5 */	bl __dt__Q37ext_ead3www9ut_threadFv
/* 8136CB40 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136CB44 | 40 81 00 0C */	ble .L_8136CB50
/* 8136CB48 | 7F C3 F3 78 */	mr r3, r30
/* 8136CB4C | 48 28 B5 99 */	bl __dl__FPv
.L_8136CB50:
/* 8136CB50 | 7F C3 F3 78 */	mr r3, r30
/* 8136CB54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CB58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CB5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CB60 | 7C 08 03 A6 */	mtlr r0
/* 8136CB64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CB68 | 4E 80 00 20 */	blr
.endfn __dt__Q37ext_ead3www13BrowserThreadFv

# .text:0x348 | 0x8136CB6C | size: 0x84
# ext_ead::www::BrowserThread::RegisterArcFile(void*)
.fn RegisterArcFile__Q37ext_ead3www13BrowserThreadFPv, global
/* 8136CB6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CB70 | 7C 08 02 A6 */	mflr r0
/* 8136CB74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CB78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CB7C | 7C 9F 23 78 */	mr r31, r4
/* 8136CB80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136CB84 | 7C 7E 1B 78 */	mr r30, r3
/* 8136CB88 | 80 03 06 A0 */	lwz r0, 0x6a0(r3)
/* 8136CB8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136CB90 | 40 82 00 3C */	bne .L_8136CBCC
/* 8136CB94 | 38 60 00 78 */	li r3, 0x78
/* 8136CB98 | 38 80 00 04 */	li r4, 0x4
/* 8136CB9C | 48 00 13 AD */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136CBA0 | 90 7E 06 A0 */	stw r3, 0x6a0(r30)
/* 8136CBA4 | 3C 60 00 02 */	lis r3, 0x2
/* 8136CBA8 | 38 80 00 04 */	li r4, 0x4
/* 8136CBAC | 48 00 13 9D */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136CBB0 | 80 1E 06 A0 */	lwz r0, 0x6a0(r30)
/* 8136CBB4 | 7C 64 1B 78 */	mr r4, r3
/* 8136CBB8 | 90 7E 06 A4 */	stw r3, 0x6a4(r30)
/* 8136CBBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136CBC0 | 41 82 00 0C */	beq .L_8136CBCC
/* 8136CBC4 | 7C 03 03 78 */	mr r3, r0
/* 8136CBC8 | 48 00 48 09 */	bl __ct__Q33www9arcreader12ArcContainerFPv
.L_8136CBCC:
/* 8136CBCC | 80 7E 06 A0 */	lwz r3, 0x6a0(r30)
/* 8136CBD0 | 7F E4 FB 78 */	mr r4, r31
/* 8136CBD4 | 48 00 48 25 */	bl RegisterArcFile__Q33www9arcreader12ArcContainerFPCv
/* 8136CBD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CBDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CBE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CBE4 | 7C 08 03 A6 */	mtlr r0
/* 8136CBE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CBEC | 4E 80 00 20 */	blr
.endfn RegisterArcFile__Q37ext_ead3www13BrowserThreadFPv

# .text:0x3CC | 0x8136CBF0 | size: 0xC
# ext_ead::www::BrowserThread::RegisterIniFile(void*, unsigned long)
.fn RegisterIniFile__Q37ext_ead3www13BrowserThreadFPvUl, global
/* 8136CBF0 | 90 83 06 98 */	stw r4, 0x698(r3)
/* 8136CBF4 | 90 A3 06 9C */	stw r5, 0x69c(r3)
/* 8136CBF8 | 4E 80 00 20 */	blr
.endfn RegisterIniFile__Q37ext_ead3www13BrowserThreadFPvUl

# .text:0x3D8 | 0x8136CBFC | size: 0x7C
# ext_ead::www::BrowserThread::CreateThread(int, int, void*, unsigned long, int)
.fn CreateThread__Q37ext_ead3www13BrowserThreadFiiPvUli, global
/* 8136CBFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136CC00 | 7C 08 02 A6 */	mflr r0
/* 8136CC04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136CC08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136CC0C | 48 28 C8 B9 */	bl _savegpr_28
/* 8136CC10 | 90 83 06 90 */	stw r4, 0x690(r3)
/* 8136CC14 | 7C 7C 1B 78 */	mr r28, r3
/* 8136CC18 | 7C DD 33 78 */	mr r29, r6
/* 8136CC1C | 7C FE 3B 78 */	mr r30, r7
/* 8136CC20 | 90 A3 06 94 */	stw r5, 0x694(r3)
/* 8136CC24 | 38 83 03 4C */	addi r4, r3, 0x34c
/* 8136CC28 | 7D 1F 43 78 */	mr r31, r8
/* 8136CC2C | 38 A0 00 20 */	li r5, 0x20
/* 8136CC30 | 38 63 03 2C */	addi r3, r3, 0x32c
/* 8136CC34 | 48 1C 43 ED */	bl OSInitMessageQueue
/* 8136CC38 | 38 7C 06 80 */	addi r3, r28, 0x680
/* 8136CC3C | 38 80 00 00 */	li r4, 0x0
/* 8136CC40 | 38 A0 00 10 */	li r5, 0x10
/* 8136CC44 | 4B FC 36 F1 */	bl memset
/* 8136CC48 | 7F 83 E3 78 */	mr r3, r28
/* 8136CC4C | 7F A4 EB 78 */	mr r4, r29
/* 8136CC50 | 7F C5 F3 78 */	mr r5, r30
/* 8136CC54 | 7F E6 FB 78 */	mr r6, r31
/* 8136CC58 | 38 E0 00 00 */	li r7, 0x0
/* 8136CC5C | 48 00 1B 05 */	bl Create__Q37ext_ead3www9ut_threadFPvUlib
/* 8136CC60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136CC64 | 48 28 C8 AD */	bl _restgpr_28
/* 8136CC68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136CC6C | 7C 08 03 A6 */	mtlr r0
/* 8136CC70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136CC74 | 4E 80 00 20 */	blr
.endfn CreateThread__Q37ext_ead3www13BrowserThreadFiiPvUli

# .text:0x454 | 0x8136CC78 | size: 0x54
# ext_ead::www::BrowserThread::StopThread()
.fn StopThread__Q37ext_ead3www13BrowserThreadFv, global
/* 8136CC78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CC7C | 7C 08 02 A6 */	mflr r0
/* 8136CC80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CC84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CC88 | 7C 7F 1B 78 */	mr r31, r3
/* 8136CC8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136CC90 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8136CC94 | 7D 89 03 A6 */	mtctr r12
/* 8136CC98 | 4E 80 04 21 */	bctrl
/* 8136CC9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CCA0 | 40 82 00 18 */	bne .L_8136CCB8
/* 8136CCA4 | 3C 80 79 8B */	lis r4, 0x798b
/* 8136CCA8 | 38 7F 03 2C */	addi r3, r31, 0x32c
/* 8136CCAC | 38 84 DF E1 */	subi r4, r4, 0x201f
/* 8136CCB0 | 38 A0 00 00 */	li r5, 0x0
/* 8136CCB4 | 48 1C 43 CD */	bl OSSendMessage
.L_8136CCB8:
/* 8136CCB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CCBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CCC0 | 7C 08 03 A6 */	mtlr r0
/* 8136CCC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CCC8 | 4E 80 00 20 */	blr
.endfn StopThread__Q37ext_ead3www13BrowserThreadFv

# .text:0x4A8 | 0x8136CCCC | size: 0x64
# ext_ead::www::BrowserThread::IsThreadStopped()
.fn IsThreadStopped__Q37ext_ead3www13BrowserThreadFv, global
/* 8136CCCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CCD0 | 7C 08 02 A6 */	mflr r0
/* 8136CCD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CCD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CCDC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136CCE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8136CCE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136CCE8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8136CCEC | 7D 89 03 A6 */	mtctr r12
/* 8136CCF0 | 4E 80 04 21 */	bctrl
/* 8136CCF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CCF8 | 7C 7F 1B 78 */	mr r31, r3
/* 8136CCFC | 41 82 00 18 */	beq .L_8136CD14
/* 8136CD00 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8136CD04 | 7F C3 F3 78 */	mr r3, r30
/* 8136CD08 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136CD0C | 7D 89 03 A6 */	mtctr r12
/* 8136CD10 | 4E 80 04 21 */	bctrl
.L_8136CD14:
/* 8136CD14 | 7F E3 FB 78 */	mr r3, r31
/* 8136CD18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CD1C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CD20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CD24 | 7C 08 03 A6 */	mtlr r0
/* 8136CD28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CD2C | 4E 80 00 20 */	blr
.endfn IsThreadStopped__Q37ext_ead3www13BrowserThreadFv

# .text:0x50C | 0x8136CD30 | size: 0x6C
# ext_ead::www::BrowserThread::CheckThreadExit_()
.fn CheckThreadExit___Q37ext_ead3www13BrowserThreadFv, global
/* 8136CD30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CD34 | 7C 08 02 A6 */	mflr r0
/* 8136CD38 | 38 A0 00 00 */	li r5, 0x0
/* 8136CD3C | 38 63 03 2C */	addi r3, r3, 0x32c
/* 8136CD40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CD44 | 38 00 00 00 */	li r0, 0x0
/* 8136CD48 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136CD4C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8136CD50 | 48 1C 43 F9 */	bl OSReceiveMessage
/* 8136CD54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CD58 | 41 82 00 30 */	beq .L_8136CD88
/* 8136CD5C | 3C 80 81 64 */	lis r4, lbl_81642A1A@ha
/* 8136CD60 | 38 60 00 03 */	li r3, 0x3
/* 8136CD64 | 38 84 2A 1A */	addi r4, r4, lbl_81642A1A@l
/* 8136CD68 | 4C C6 31 82 */	crclr cr1eq
/* 8136CD6C | 48 00 1B 29 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136CD70 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8136CD74 | 3C 03 86 76 */	subis r0, r3, 0x798a
/* 8136CD78 | 28 00 DF E1 */	cmplwi r0, 0xdfe1
/* 8136CD7C | 40 82 00 0C */	bne .L_8136CD88
/* 8136CD80 | 38 60 00 01 */	li r3, 0x1
/* 8136CD84 | 48 00 00 08 */	b .L_8136CD8C
.L_8136CD88:
/* 8136CD88 | 38 60 00 00 */	li r3, 0x0
.L_8136CD8C:
/* 8136CD8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CD90 | 7C 08 03 A6 */	mtlr r0
/* 8136CD94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136CD98 | 4E 80 00 20 */	blr
.endfn CheckThreadExit___Q37ext_ead3www13BrowserThreadFv

# .text:0x578 | 0x8136CD9C | size: 0x19C
# ext_ead::www::BrowserThread::InitSurface_()
.fn InitSurface___Q37ext_ead3www13BrowserThreadFv, global
/* 8136CD9C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136CDA0 | 7C 08 02 A6 */	mflr r0
/* 8136CDA4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136CDA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136CDAC | 48 28 C7 11 */	bl _savegpr_26
/* 8136CDB0 | 80 8D A9 3C */	lwz r4, ScrollState___Q23www9trasition@sda21(r0)
/* 8136CDB4 | 3F E0 81 64 */	lis r31, lbl_816429C0@ha
/* 8136CDB8 | 7C 7A 1B 78 */	mr r26, r3
/* 8136CDBC | 83 C4 00 04 */	lwz r30, 0x4(r4)
/* 8136CDC0 | 7C 83 23 78 */	mr r3, r4
/* 8136CDC4 | 83 A4 00 08 */	lwz r29, 0x8(r4)
/* 8136CDC8 | 3B FF 29 C0 */	addi r31, r31, lbl_816429C0@l
/* 8136CDCC | 48 00 14 99 */	bl ResolveRsoModule__Q37ext_ead3www14SurfaceManagerFv
/* 8136CDD0 | 57 DC 10 3A */	slwi r28, r30, 2
/* 8136CDD4 | 38 80 00 04 */	li r4, 0x4
/* 8136CDD8 | 7F 7C E9 D6 */	mullw r27, r28, r29
/* 8136CDDC | 7F 63 DB 78 */	mr r3, r27
/* 8136CDE0 | 48 00 11 69 */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136CDE4 | 90 7A 06 74 */	stw r3, 0x674(r26)
/* 8136CDE8 | 7C 65 1B 78 */	mr r5, r3
/* 8136CDEC | 7F 66 DB 78 */	mr r6, r27
/* 8136CDF0 | 38 9F 00 79 */	addi r4, r31, 0x79
/* 8136CDF4 | 38 60 00 03 */	li r3, 0x3
/* 8136CDF8 | 4C C6 31 82 */	crclr cr1eq
/* 8136CDFC | 48 00 1A 99 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136CE00 | 3C 60 00 6E */	lis r3, 0x6e
/* 8136CE04 | 38 80 00 20 */	li r4, 0x20
/* 8136CE08 | 48 00 11 61 */	bl allocMem2__Q37ext_ead3www4HeapFUli
/* 8136CE0C | 90 7A 06 78 */	stw r3, 0x678(r26)
/* 8136CE10 | 38 80 00 00 */	li r4, 0x0
/* 8136CE14 | 3C A0 00 6E */	lis r5, 0x6e
/* 8136CE18 | 4B FC 35 1D */	bl memset
/* 8136CE1C | 80 BA 06 78 */	lwz r5, 0x678(r26)
/* 8136CE20 | 38 9F 00 A9 */	addi r4, r31, 0xa9
/* 8136CE24 | 38 60 00 03 */	li r3, 0x3
/* 8136CE28 | 4C C6 31 82 */	crclr cr1eq
/* 8136CE2C | 48 00 1A 69 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136CE30 | 81 8D A8 90 */	lwz r12, WWWGetBrowserAllocationFunctions@sda21(r0)
/* 8136CE34 | 3C 80 00 6E */	lis r4, 0x6e
/* 8136CE38 | 80 7A 06 78 */	lwz r3, 0x678(r26)
/* 8136CE3C | 38 AD A9 28 */	li r5, wwwalloc___Q37ext_ead3www4Heap@sda21
/* 8136CE40 | 38 CD A9 2C */	li r6, wwwfree___Q37ext_ead3www4Heap@sda21
/* 8136CE44 | 38 ED A9 30 */	li r7, wwwavail___Q37ext_ead3www4Heap@sda21
/* 8136CE48 | 7D 89 03 A6 */	mtctr r12
/* 8136CE4C | 4E 80 04 21 */	bctrl
/* 8136CE50 | 80 8D A9 2C */	lwz r4, wwwfree___Q37ext_ead3www4Heap@sda21(r0)
/* 8136CE54 | 80 6D A9 28 */	lwz r3, wwwalloc___Q37ext_ead3www4Heap@sda21(r0)
/* 8136CE58 | 81 8D A8 98 */	lwz r12, WWWSetAllocationFunctions@sda21(r0)
/* 8136CE5C | 7C 87 23 78 */	mr r7, r4
/* 8136CE60 | 7C 66 1B 78 */	mr r6, r3
/* 8136CE64 | 7C 68 1B 78 */	mr r8, r3
/* 8136CE68 | 7C 89 23 78 */	mr r9, r4
/* 8136CE6C | 80 AD A9 30 */	lwz r5, wwwavail___Q37ext_ead3www4Heap@sda21(r0)
/* 8136CE70 | 7D 89 03 A6 */	mtctr r12
/* 8136CE74 | 4E 80 04 21 */	bctrl
/* 8136CE78 | 48 1C 8E 21 */	bl OSGetTick
/* 8136CE7C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CE80 | 48 1C 8E 19 */	bl OSGetTick
/* 8136CE84 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CE88 | 7F C3 F3 78 */	mr r3, r30
/* 8136CE8C | 81 8D A7 58 */	lwz r12, WWWSurfaceInit@sda21(r0)
/* 8136CE90 | 7F A4 EB 78 */	mr r4, r29
/* 8136CE94 | 7F 85 E3 78 */	mr r5, r28
/* 8136CE98 | 80 FA 06 74 */	lwz r7, 0x674(r26)
/* 8136CE9C | 38 C0 00 00 */	li r6, 0x0
/* 8136CEA0 | 7D 89 03 A6 */	mtctr r12
/* 8136CEA4 | 4E 80 04 21 */	bctrl
/* 8136CEA8 | 7C 7D 1B 78 */	mr r29, r3
/* 8136CEAC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136CEB0 | 38 9F 00 D1 */	addi r4, r31, 0xd1
/* 8136CEB4 | 4C C6 31 82 */	crclr cr1eq
/* 8136CEB8 | 48 00 00 81 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136CEBC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136CEC0 | 41 82 00 14 */	beq .L_8136CED4
/* 8136CEC4 | 7F A4 EB 78 */	mr r4, r29
/* 8136CEC8 | 38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8136CECC | 4C C6 31 82 */	crclr cr1eq
/* 8136CED0 | 48 1C 17 D1 */	bl OSReport
.L_8136CED4:
/* 8136CED4 | 48 1C 8D C5 */	bl OSGetTick
/* 8136CED8 | 81 8D A7 6C */	lwz r12, WWWSurfaceSetFlushCallback@sda21(r0)
/* 8136CEDC | 3C 80 81 37 */	lis r4, FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti@ha
/* 8136CEE0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CEE4 | 38 64 D9 C4 */	addi r3, r4, FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti@l
/* 8136CEE8 | 38 80 00 00 */	li r4, 0x0
/* 8136CEEC | 7D 89 03 A6 */	mtctr r12
/* 8136CEF0 | 4E 80 04 21 */	bctrl
/* 8136CEF4 | 7C 7D 1B 78 */	mr r29, r3
/* 8136CEF8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136CEFC | 38 9F 00 F3 */	addi r4, r31, 0xf3
/* 8136CF00 | 4C C6 31 82 */	crclr cr1eq
/* 8136CF04 | 48 00 00 35 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136CF08 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136CF0C | 41 82 00 14 */	beq .L_8136CF20
/* 8136CF10 | 7F A4 EB 78 */	mr r4, r29
/* 8136CF14 | 38 7F 01 0E */	addi r3, r31, 0x10e
/* 8136CF18 | 4C C6 31 82 */	crclr cr1eq
/* 8136CF1C | 48 1C 17 85 */	bl OSReport
.L_8136CF20:
/* 8136CF20 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136CF24 | 48 28 C5 E5 */	bl _restgpr_26
/* 8136CF28 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136CF2C | 7C 08 03 A6 */	mtlr r0
/* 8136CF30 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136CF34 | 4E 80 00 20 */	blr
.endfn InitSurface___Q37ext_ead3www13BrowserThreadFv

# .text:0x714 | 0x8136CF38 | size: 0xE0
# ext_ead::www::print::TickTimer::report(const char*, ...)
.fn report__Q47ext_ead3www5print9TickTimerFPCce, global
/* 8136CF38 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8136CF3C | 7C 08 02 A6 */	mflr r0
/* 8136CF40 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8136CF44 | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8136CF48 | 7C 9F 23 78 */	mr r31, r4
/* 8136CF4C | 93 C1 00 78 */	stw r30, 0x78(r1)
/* 8136CF50 | 7C 7E 1B 78 */	mr r30, r3
/* 8136CF54 | 40 86 00 24 */	bne cr1, .L_8136CF78
/* 8136CF58 | D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8136CF5C | D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8136CF60 | D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8136CF64 | D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8136CF68 | D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8136CF6C | D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8136CF70 | D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8136CF74 | D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8136CF78:
/* 8136CF78 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CF7C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8136CF80 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8136CF84 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 8136CF88 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 8136CF8C | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 8136CF90 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 8136CF94 | 91 41 00 24 */	stw r10, 0x24(r1)
/* 8136CF98 | 48 1C 8D 01 */	bl OSGetTick
/* 8136CF9C | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 8136CFA0 | 38 C1 00 88 */	addi r6, r1, 0x88
/* 8136CFA4 | 38 01 00 08 */	addi r0, r1, 0x8
/* 8136CFA8 | 3C 60 02 00 */	lis r3, 0x200
/* 8136CFAC | 90 61 00 68 */	stw r3, 0x68(r1)
/* 8136CFB0 | 38 A1 00 68 */	addi r5, r1, 0x68
/* 8136CFB4 | 7F E4 FB 78 */	mr r4, r31
/* 8136CFB8 | 38 60 00 00 */	li r3, 0x0
/* 8136CFBC | 90 C1 00 6C */	stw r6, 0x6c(r1)
/* 8136CFC0 | 90 01 00 70 */	stw r0, 0x70(r1)
/* 8136CFC4 | 48 00 19 39 */	bl IPLWWWVReport__Q37ext_ead3www5printFiPCcP16__va_list_struct
/* 8136CFC8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8136CFCC | 3C 80 81 64 */	lis r4, "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce"@ha
/* 8136CFD0 | 80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 8136CFD4 | 38 00 03 E8 */	li r0, 0x3e8
/* 8136CFD8 | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8136CFDC | 38 84 2D 04 */	addi r4, r4, "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce"@l
/* 8136CFE0 | 54 63 F0 BE */	srwi r3, r3, 2
/* 8136CFE4 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136CFE8 | 7C 03 03 96 */	divwu r0, r3, r0
/* 8136CFEC | 7C A6 28 50 */	subf r5, r6, r5
/* 8136CFF0 | 38 60 00 05 */	li r3, 0x5
/* 8136CFF4 | 7C A5 03 96 */	divwu r5, r5, r0
/* 8136CFF8 | 4C C6 31 82 */	crclr cr1eq
/* 8136CFFC | 48 00 18 99 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136D000 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8136D004 | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8136D008 | 83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8136D00C | 7C 08 03 A6 */	mtlr r0
/* 8136D010 | 38 21 00 80 */	addi r1, r1, 0x80
/* 8136D014 | 4E 80 00 20 */	blr
.endfn report__Q47ext_ead3www5print9TickTimerFPCce

# .text:0x7F4 | 0x8136D018 | size: 0x258
# ext_ead::www::BrowserThread::Run()
.fn Run__Q37ext_ead3www13BrowserThreadFv, global
/* 8136D018 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136D01C | 7C 08 02 A6 */	mflr r0
/* 8136D020 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8136D024 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8136D028 | 48 28 C4 89 */	bl _savegpr_23
/* 8136D02C | 3F E0 81 64 */	lis r31, lbl_816429C0@ha
/* 8136D030 | 7C 7E 1B 78 */	mr r30, r3
/* 8136D034 | 3B FF 29 C0 */	addi r31, r31, lbl_816429C0@l
/* 8136D038 | 48 1C 8C 61 */	bl OSGetTick
/* 8136D03C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D040 | 7F C3 F3 78 */	mr r3, r30
/* 8136D044 | 4B FF FD 59 */	bl InitSurface___Q37ext_ead3www13BrowserThreadFv
/* 8136D048 | 7F C3 F3 78 */	mr r3, r30
/* 8136D04C | 38 9F 01 2D */	addi r4, r31, 0x12d
/* 8136D050 | 48 00 08 FD */	bl InitFonts___Q37ext_ead3www13BrowserThreadFPCc
/* 8136D054 | 38 9F 01 3A */	addi r4, r31, 0x13a
/* 8136D058 | 38 60 00 03 */	li r3, 0x3
/* 8136D05C | 4C C6 31 82 */	crclr cr1eq
/* 8136D060 | 48 00 18 35 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136D064 | 48 1C 8C 35 */	bl OSGetTick
/* 8136D068 | 81 8D A7 90 */	lwz r12, WWWCreateBrowser@sda21(r0)
/* 8136D06C | 38 FF 01 54 */	addi r7, r31, 0x154
/* 8136D070 | 38 1F 01 65 */	addi r0, r31, 0x165
/* 8136D074 | 3C 80 81 37 */	lis r4, SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData@ha
/* 8136D078 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D07C | 38 7E 06 7C */	addi r3, r30, 0x67c
/* 8136D080 | 38 84 C8 24 */	addi r4, r4, SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData@l
/* 8136D084 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8136D088 | 90 E1 00 24 */	stw r7, 0x24(r1)
/* 8136D08C | 38 DF 01 75 */	addi r6, r31, 0x175
/* 8136D090 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 8136D094 | 90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8136D098 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8136D09C | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 8136D0A0 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 8136D0A4 | 7D 89 03 A6 */	mtctr r12
/* 8136D0A8 | 4E 80 04 21 */	bctrl
/* 8136D0AC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136D0B0 | 38 9F 01 87 */	addi r4, r31, 0x187
/* 8136D0B4 | 4C C6 31 82 */	crclr cr1eq
/* 8136D0B8 | 4B FF FE 81 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136D0BC | 48 00 25 8D */	bl AddJsPlugin__Q23www9trasitionFv
/* 8136D0C0 | 48 00 29 81 */	bl AddJsPlugin__Q23www10wiisettingFv
/* 8136D0C4 | 48 00 41 2D */	bl AddProtocol__Q23www9arcreaderFv
/* 8136D0C8 | 83 0D A9 3C */	lwz r24, ScrollState___Q23www9trasition@sda21(r0)
/* 8136D0CC | 38 60 02 CC */	li r3, 0x2cc
/* 8136D0D0 | 38 80 00 04 */	li r4, 0x4
/* 8136D0D4 | 48 00 0E 75 */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136D0D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D0DC | 90 7E 06 80 */	stw r3, 0x680(r30)
/* 8136D0E0 | 41 82 00 0C */	beq .L_8136D0EC
/* 8136D0E4 | 7F C4 F3 78 */	mr r4, r30
/* 8136D0E8 | 48 00 18 19 */	bl __ct__Q37ext_ead3www13BrowserWindowFPQ37ext_ead3www13BrowserThread
.L_8136D0EC:
/* 8136D0EC | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D0F0 | 80 9E 06 90 */	lwz r4, 0x690(r30)
/* 8136D0F4 | 80 BE 06 94 */	lwz r5, 0x694(r30)
/* 8136D0F8 | 80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8136D0FC | 80 F8 00 08 */	lwz r7, 0x8(r24)
/* 8136D100 | 48 00 19 B5 */	bl CreateWindow__Q37ext_ead3www13BrowserWindowFiiii
/* 8136D104 | 48 00 0E 85 */	bl reportHeap__Q37ext_ead3www4HeapFv
/* 8136D108 | 38 00 00 00 */	li r0, 0x0
/* 8136D10C | 3B 80 00 05 */	li r28, 0x5
/* 8136D110 | 7F A0 E1 D6 */	mullw r29, r0, r28
/* 8136D114 | 3F 00 81 09 */	lis r24, runSliceMutex___Q37ext_ead3www13BrowserThread@ha
/* 8136D118 | 3F 40 80 00 */	lis r26, 0x8000
/* 8136D11C | 3B 60 03 E8 */	li r27, 0x3e8
.L_8136D120:
/* 8136D120 | 7F C3 F3 78 */	mr r3, r30
/* 8136D124 | 4B FF FC 0D */	bl CheckThreadExit___Q37ext_ead3www13BrowserThreadFv
/* 8136D128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D12C | 40 82 00 E8 */	bne .L_8136D214
/* 8136D130 | 7F C3 F3 78 */	mr r3, r30
/* 8136D134 | 48 00 05 E5 */	bl HandleUIEvent___Q37ext_ead3www13BrowserThreadFv
/* 8136D138 | 38 78 A4 80 */	addi r3, r24, runSliceMutex___Q37ext_ead3www13BrowserThread@l
/* 8136D13C | 48 1C 4A CD */	bl fn_81531C08
/* 8136D140 | 3A E0 00 00 */	li r23, 0x0
.L_8136D144:
/* 8136D144 | 81 8D A7 98 */	lwz r12, WWWRunSlice@sda21(r0)
/* 8136D148 | 80 7E 06 7C */	lwz r3, 0x67c(r30)
/* 8136D14C | 7D 89 03 A6 */	mtctr r12
/* 8136D150 | 4E 80 04 21 */	bctrl
/* 8136D154 | 7C 79 1B 78 */	mr r25, r3
/* 8136D158 | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D15C | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8136D160 | 48 00 1C 5D */	bl ExecuteEvent__Q37ext_ead3www13BrowserWindowFv
/* 8136D164 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8136D168 | 41 82 FF DC */	beq .L_8136D144
/* 8136D16C | 2C 17 00 0A */	cmpwi r23, 0xa
/* 8136D170 | 40 81 00 18 */	ble .L_8136D188
/* 8136D174 | 7E E5 BB 78 */	mr r5, r23
/* 8136D178 | 38 9F 01 98 */	addi r4, r31, 0x198
/* 8136D17C | 38 60 00 03 */	li r3, 0x3
/* 8136D180 | 4C C6 31 82 */	crclr cr1eq
/* 8136D184 | 48 00 17 11 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136D188:
/* 8136D188 | 38 78 A4 80 */	addi r3, r24, runSliceMutex___Q37ext_ead3www13BrowserThread@l
/* 8136D18C | 48 1C 4B 59 */	bl fn_81531CE4
/* 8136D190 | 81 8D A7 74 */	lwz r12, WWWSurfaceUpdateScreen@sda21(r0)
/* 8136D194 | 38 60 00 00 */	li r3, 0x0
/* 8136D198 | 7D 89 03 A6 */	mtctr r12
/* 8136D19C | 4E 80 04 21 */	bctrl
/* 8136D1A0 | 81 8D A7 74 */	lwz r12, WWWSurfaceUpdateScreen@sda21(r0)
/* 8136D1A4 | 38 60 00 00 */	li r3, 0x0
/* 8136D1A8 | 7D 89 03 A6 */	mtctr r12
/* 8136D1AC | 4E 80 04 21 */	bctrl
/* 8136D1B0 | 81 8D A7 74 */	lwz r12, WWWSurfaceUpdateScreen@sda21(r0)
/* 8136D1B4 | 38 60 00 00 */	li r3, 0x0
/* 8136D1B8 | 7D 89 03 A6 */	mtctr r12
/* 8136D1BC | 4E 80 04 21 */	bctrl
/* 8136D1C0 | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D1C4 | 48 00 1B F9 */	bl ExecuteEvent__Q37ext_ead3www13BrowserWindowFv
/* 8136D1C8 | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D1CC | 48 00 1B F5 */	bl UpdateTexture__Q37ext_ead3www13BrowserWindowFv
/* 8136D1D0 | 80 7E 03 10 */	lwz r3, 0x310(r30)
/* 8136D1D4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136D1D8 | 3C 03 21 53 */	addis r0, r3, 0x2153
/* 8136D1DC | 28 00 BA BE */	cmplwi r0, 0xbabe
/* 8136D1E0 | 41 82 00 14 */	beq .L_8136D1F4
/* 8136D1E4 | 38 9F 01 BD */	addi r4, r31, 0x1bd
/* 8136D1E8 | 38 60 00 03 */	li r3, 0x3
/* 8136D1EC | 4C C6 31 82 */	crclr cr1eq
/* 8136D1F0 | 48 00 16 A5 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136D1F4:
/* 8136D1F4 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8136D1F8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8136D1FC | 7C 60 DB 96 */	divwu r3, r0, r27
/* 8136D200 | 7C 03 E0 16 */	mulhwu r0, r3, r28
/* 8136D204 | 1C 83 00 05 */	mulli r4, r3, 0x5
/* 8136D208 | 7C 60 EA 14 */	add r3, r0, r29
/* 8136D20C | 48 1C 89 C1 */	bl OSSleepTicks
/* 8136D210 | 4B FF FF 10 */	b .L_8136D120
.L_8136D214:
/* 8136D214 | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D218 | 48 00 1A BD */	bl CloseWindow__Q37ext_ead3www13BrowserWindowFv
/* 8136D21C | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D220 | 38 80 FF FF */	li r4, -0x1
/* 8136D224 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136D228 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136D22C | 7D 89 03 A6 */	mtctr r12
/* 8136D230 | 4E 80 04 21 */	bctrl
/* 8136D234 | 80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D238 | 48 00 0D 25 */	bl freeMem1__Q37ext_ead3www4HeapFPv
/* 8136D23C | 38 00 00 00 */	li r0, 0x0
/* 8136D240 | 80 7E 06 7C */	lwz r3, 0x67c(r30)
/* 8136D244 | 90 1E 06 80 */	stw r0, 0x680(r30)
/* 8136D248 | 81 8D A7 94 */	lwz r12, WWWTerminateBrowser@sda21(r0)
/* 8136D24C | 7D 89 03 A6 */	mtctr r12
/* 8136D250 | 4E 80 04 21 */	bctrl
/* 8136D254 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8136D258 | 7F C3 F3 78 */	mr r3, r30
/* 8136D25C | 48 28 C2 A1 */	bl _restgpr_23
/* 8136D260 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136D264 | 7C 08 03 A6 */	mtlr r0
/* 8136D268 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8136D26C | 4E 80 00 20 */	blr
.endfn Run__Q37ext_ead3www13BrowserThreadFv

# .text:0xA4C | 0x8136D270 | size: 0x44
# ext_ead::www::BrowserThread::SendKeyboardEvent_(unsigned long, unsigned long, unsigned long, WWWKeySym)
.fn SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym, global
/* 8136D270 | 7C A0 20 39 */	and. r0, r5, r4
/* 8136D274 | 41 82 00 1C */	beq .L_8136D290
/* 8136D278 | 81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D27C | 7C E4 3B 78 */	mr r4, r7
/* 8136D280 | 38 60 00 00 */	li r3, 0x0
/* 8136D284 | 38 A0 00 00 */	li r5, 0x0
/* 8136D288 | 7D 89 03 A6 */	mtctr r12
/* 8136D28C | 4E 80 04 20 */	bctr
.L_8136D290:
/* 8136D290 | 7C C0 20 39 */	and. r0, r6, r4
/* 8136D294 | 4D 82 00 20 */	beqlr
/* 8136D298 | 81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D29C | 7C E4 3B 78 */	mr r4, r7
/* 8136D2A0 | 38 60 00 01 */	li r3, 0x1
/* 8136D2A4 | 38 A0 00 00 */	li r5, 0x0
/* 8136D2A8 | 7D 89 03 A6 */	mtctr r12
/* 8136D2AC | 4E 80 04 20 */	bctr
/* 8136D2B0 | 4E 80 00 20 */	blr
.endfn SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym

# .text:0xA90 | 0x8136D2B4 | size: 0xF4
# ext_ead::www::BrowserThread::GetKeyboardSym_(unsigned long)
.fn GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl, global
/* 8136D2B4 | 3C 60 00 02 */	lis r3, 0x2
/* 8136D2B8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8136D2BC | 7C 04 00 00 */	cmpw r4, r0
/* 8136D2C0 | 41 82 00 B0 */	beq .L_8136D370
/* 8136D2C4 | 40 80 00 44 */	bge .L_8136D308
/* 8136D2C8 | 2C 04 02 00 */	cmpwi r4, 0x200
/* 8136D2CC | 41 82 00 BC */	beq .L_8136D388
/* 8136D2D0 | 40 80 00 24 */	bge .L_8136D2F4
/* 8136D2D4 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8136D2D8 | 41 82 00 BC */	beq .L_8136D394
/* 8136D2DC | 40 80 00 C4 */	bge .L_8136D3A0
/* 8136D2E0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8136D2E4 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8136D2E8 | 7C 04 00 00 */	cmpw r4, r0
/* 8136D2EC | 41 82 00 90 */	beq .L_8136D37C
/* 8136D2F0 | 48 00 00 B0 */	b .L_8136D3A0
.L_8136D2F4:
/* 8136D2F4 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D2F8 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8136D2FC | 7C 04 00 00 */	cmpw r4, r0
/* 8136D300 | 41 82 00 5C */	beq .L_8136D35C
/* 8136D304 | 48 00 00 9C */	b .L_8136D3A0
.L_8136D308:
/* 8136D308 | 3C 60 30 00 */	lis r3, 0x3000
/* 8136D30C | 38 03 10 00 */	addi r0, r3, 0x1000
/* 8136D310 | 7C 04 00 00 */	cmpw r4, r0
/* 8136D314 | 41 82 00 3C */	beq .L_8136D350
/* 8136D318 | 40 80 00 18 */	bge .L_8136D330
/* 8136D31C | 3C 60 06 00 */	lis r3, 0x600
/* 8136D320 | 38 03 00 10 */	addi r0, r3, 0x10
/* 8136D324 | 7C 04 00 00 */	cmpw r4, r0
/* 8136D328 | 41 82 00 1C */	beq .L_8136D344
/* 8136D32C | 48 00 00 74 */	b .L_8136D3A0
.L_8136D330:
/* 8136D330 | 3C 60 40 00 */	lis r3, 0x4000
/* 8136D334 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8136D338 | 7C 04 00 00 */	cmpw r4, r0
/* 8136D33C | 41 82 00 28 */	beq .L_8136D364
/* 8136D340 | 48 00 00 60 */	b .L_8136D3A0
.L_8136D344:
/* 8136D344 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D348 | 38 63 E0 2B */	subi r3, r3, 0x1fd5
/* 8136D34C | 4E 80 00 20 */	blr
.L_8136D350:
/* 8136D350 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D354 | 38 63 E0 01 */	subi r3, r3, 0x1fff
/* 8136D358 | 4E 80 00 20 */	blr
.L_8136D35C:
/* 8136D35C | 38 63 E0 3E */	subi r3, r3, 0x1fc2
/* 8136D360 | 4E 80 00 20 */	blr
.L_8136D364:
/* 8136D364 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D368 | 38 63 E0 3F */	subi r3, r3, 0x1fc1
/* 8136D36C | 4E 80 00 20 */	blr
.L_8136D370:
/* 8136D370 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D374 | 38 63 E0 3D */	subi r3, r3, 0x1fc3
/* 8136D378 | 4E 80 00 20 */	blr
.L_8136D37C:
/* 8136D37C | 3C 60 00 01 */	lis r3, 0x1
/* 8136D380 | 38 63 E0 3C */	subi r3, r3, 0x1fc4
/* 8136D384 | 4E 80 00 20 */	blr
.L_8136D388:
/* 8136D388 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D38C | 38 63 E0 44 */	subi r3, r3, 0x1fbc
/* 8136D390 | 4E 80 00 20 */	blr
.L_8136D394:
/* 8136D394 | 3C 60 00 01 */	lis r3, 0x1
/* 8136D398 | 38 63 E0 45 */	subi r3, r3, 0x1fbb
/* 8136D39C | 4E 80 00 20 */	blr
.L_8136D3A0:
/* 8136D3A0 | 38 60 00 00 */	li r3, 0x0
/* 8136D3A4 | 4E 80 00 20 */	blr
.endfn GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl

# .text:0xB84 | 0x8136D3A8 | size: 0x224
# ext_ead::www::BrowserThread::ExecDpdEvent_(const ext_ead::www::BrowserThread::CmdPacket&)
.fn ExecDpdEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136D3A8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136D3AC | 7C 08 02 A6 */	mflr r0
/* 8136D3B0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136D3B4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136D3B8 | 48 28 C1 0D */	bl _savegpr_28
/* 8136D3BC | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8136D3C0 | 7C 9C 23 78 */	mr r28, r4
/* 8136D3C4 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8136D3C8 | 3B C0 00 00 */	li r30, 0x0
/* 8136D3CC | FC 20 08 1E */	fctiwz f1, f1
/* 8136D3D0 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 8136D3D4 | FC 00 00 1E */	fctiwz f0, f0
/* 8136D3D8 | 54 60 02 D6 */	rlwinm r0, r3, 0, 11, 11
/* 8136D3DC | D8 21 00 08 */	stfd f1, 0x8(r1)
/* 8136D3E0 | 50 60 05 29 */	rlwimi. r0, r3, 0, 20, 20
/* 8136D3E4 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8136D3E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136D3EC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8136D3F0 | 41 82 00 78 */	beq .L_8136D468
/* 8136D3F4 | 81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D3F8 | 7F E4 FB 78 */	mr r4, r31
/* 8136D3FC | 7F A5 EB 78 */	mr r5, r29
/* 8136D400 | 38 60 00 00 */	li r3, 0x0
/* 8136D404 | 38 C0 00 04 */	li r6, 0x4
/* 8136D408 | 38 E0 00 00 */	li r7, 0x0
/* 8136D40C | 39 00 00 00 */	li r8, 0x0
/* 8136D410 | 7D 89 03 A6 */	mtctr r12
/* 8136D414 | 4E 80 04 21 */	bctrl
/* 8136D418 | 81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D41C | 7F E4 FB 78 */	mr r4, r31
/* 8136D420 | 7F A5 EB 78 */	mr r5, r29
/* 8136D424 | 38 60 00 01 */	li r3, 0x1
/* 8136D428 | 38 C0 00 01 */	li r6, 0x1
/* 8136D42C | 38 E0 00 01 */	li r7, 0x1
/* 8136D430 | 39 00 00 00 */	li r8, 0x0
/* 8136D434 | 7D 89 03 A6 */	mtctr r12
/* 8136D438 | 4E 80 04 21 */	bctrl
/* 8136D43C | 81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D440 | 7F E4 FB 78 */	mr r4, r31
/* 8136D444 | 7F A5 EB 78 */	mr r5, r29
/* 8136D448 | 38 60 00 02 */	li r3, 0x2
/* 8136D44C | 38 C0 00 01 */	li r6, 0x1
/* 8136D450 | 38 E0 00 01 */	li r7, 0x1
/* 8136D454 | 39 00 00 00 */	li r8, 0x0
/* 8136D458 | 7D 89 03 A6 */	mtctr r12
/* 8136D45C | 4E 80 04 21 */	bctrl
/* 8136D460 | 3B C0 00 01 */	li r30, 0x1
/* 8136D464 | 48 00 01 24 */	b .L_8136D588
.L_8136D468:
/* 8136D468 | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 8136D46C | 54 60 02 D6 */	rlwinm r0, r3, 0, 11, 11
/* 8136D470 | 50 60 05 29 */	rlwimi. r0, r3, 0, 20, 20
/* 8136D474 | 41 82 00 50 */	beq .L_8136D4C4
/* 8136D478 | 81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D47C | 7F E4 FB 78 */	mr r4, r31
/* 8136D480 | 7F A5 EB 78 */	mr r5, r29
/* 8136D484 | 38 60 00 00 */	li r3, 0x0
/* 8136D488 | 38 C0 00 04 */	li r6, 0x4
/* 8136D48C | 38 E0 00 00 */	li r7, 0x0
/* 8136D490 | 39 00 00 00 */	li r8, 0x0
/* 8136D494 | 7D 89 03 A6 */	mtctr r12
/* 8136D498 | 4E 80 04 21 */	bctrl
/* 8136D49C | 81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D4A0 | 7F E4 FB 78 */	mr r4, r31
/* 8136D4A4 | 7F A5 EB 78 */	mr r5, r29
/* 8136D4A8 | 38 60 00 02 */	li r3, 0x2
/* 8136D4AC | 38 C0 00 01 */	li r6, 0x1
/* 8136D4B0 | 38 E0 00 01 */	li r7, 0x1
/* 8136D4B4 | 39 00 00 00 */	li r8, 0x0
/* 8136D4B8 | 7D 89 03 A6 */	mtctr r12
/* 8136D4BC | 4E 80 04 21 */	bctrl
/* 8136D4C0 | 48 00 00 C8 */	b .L_8136D588
.L_8136D4C4:
/* 8136D4C4 | 81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D4C8 | 7F E4 FB 78 */	mr r4, r31
/* 8136D4CC | 7F A5 EB 78 */	mr r5, r29
/* 8136D4D0 | 38 60 00 00 */	li r3, 0x0
/* 8136D4D4 | 38 C0 00 04 */	li r6, 0x4
/* 8136D4D8 | 38 E0 00 00 */	li r7, 0x0
/* 8136D4DC | 39 00 00 00 */	li r8, 0x0
/* 8136D4E0 | 7D 89 03 A6 */	mtctr r12
/* 8136D4E4 | 4E 80 04 21 */	bctrl
/* 8136D4E8 | 80 8D A9 48 */	lwz r4, lbl_81698988@sda21(r0)
/* 8136D4EC | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8136D4F0 | 41 80 00 4C */	blt .L_8136D53C
/* 8136D4F4 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8136D4F8 | 54 60 00 86 */	rlwinm r0, r3, 0, 2, 3
/* 8136D4FC | 50 60 04 E7 */	rlwimi. r0, r3, 0, 19, 19
/* 8136D500 | 41 82 00 3C */	beq .L_8136D53C
/* 8136D504 | 81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D508 | 3F E0 00 01 */	lis r31, 0x1
/* 8136D50C | 38 9F E0 2B */	subi r4, r31, 0x1fd5
/* 8136D510 | 38 60 00 01 */	li r3, 0x1
/* 8136D514 | 38 A0 00 00 */	li r5, 0x0
/* 8136D518 | 7D 89 03 A6 */	mtctr r12
/* 8136D51C | 4E 80 04 21 */	bctrl
/* 8136D520 | 81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D524 | 38 9F E0 2B */	subi r4, r31, 0x1fd5
/* 8136D528 | 38 60 00 00 */	li r3, 0x0
/* 8136D52C | 38 A0 00 00 */	li r5, 0x0
/* 8136D530 | 7D 89 03 A6 */	mtctr r12
/* 8136D534 | 4E 80 04 21 */	bctrl
/* 8136D538 | 48 00 00 50 */	b .L_8136D588
.L_8136D53C:
/* 8136D53C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8136D540 | 41 80 00 48 */	blt .L_8136D588
/* 8136D544 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8136D548 | 54 60 01 4C */	rlwinm r0, r3, 0, 5, 6
/* 8136D54C | 50 60 06 F7 */	rlwimi. r0, r3, 0, 27, 27
/* 8136D550 | 41 82 00 38 */	beq .L_8136D588
/* 8136D554 | 81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D558 | 3F E0 00 01 */	lis r31, 0x1
/* 8136D55C | 38 9F E0 2C */	subi r4, r31, 0x1fd4
/* 8136D560 | 38 60 00 01 */	li r3, 0x1
/* 8136D564 | 38 A0 00 00 */	li r5, 0x0
/* 8136D568 | 7D 89 03 A6 */	mtctr r12
/* 8136D56C | 4E 80 04 21 */	bctrl
/* 8136D570 | 81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D574 | 38 9F E0 2C */	subi r4, r31, 0x1fd4
/* 8136D578 | 38 60 00 00 */	li r3, 0x0
/* 8136D57C | 38 A0 00 00 */	li r5, 0x0
/* 8136D580 | 7D 89 03 A6 */	mtctr r12
/* 8136D584 | 4E 80 04 21 */	bctrl
.L_8136D588:
/* 8136D588 | 80 0D 82 D0 */	lwz r0, gEnableDpd@sda21(r0)
/* 8136D58C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D590 | 41 82 00 20 */	beq .L_8136D5B0
/* 8136D594 | 80 6D A9 48 */	lwz r3, lbl_81698988@sda21(r0)
/* 8136D598 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8136D59C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8136D5A0 | 90 0D A9 48 */	stw r0, lbl_81698988@sda21(r0)
/* 8136D5A4 | 40 81 00 0C */	ble .L_8136D5B0
/* 8136D5A8 | 38 00 00 04 */	li r0, 0x4
/* 8136D5AC | 90 0D A9 48 */	stw r0, lbl_81698988@sda21(r0)
.L_8136D5B0:
/* 8136D5B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136D5B4 | 7F C3 F3 78 */	mr r3, r30
/* 8136D5B8 | 48 28 BF 59 */	bl _restgpr_28
/* 8136D5BC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136D5C0 | 7C 08 03 A6 */	mtlr r0
/* 8136D5C4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136D5C8 | 4E 80 00 20 */	blr
.endfn ExecDpdEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0xDA8 | 0x8136D5CC | size: 0x14C
# ext_ead::www::BrowserThread::ExecSpacialEvent_(const ext_ead::www::BrowserThread::CmdPacket&)
.fn ExecSpacialEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136D5CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136D5D0 | 7C 08 02 A6 */	mflr r0
/* 8136D5D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136D5D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136D5DC | 48 28 BE ED */	bl _savegpr_29
/* 8136D5E0 | 80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8136D5E4 | 7C 7D 1B 78 */	mr r29, r3
/* 8136D5E8 | 7C 9E 23 78 */	mr r30, r4
/* 8136D5EC | 54 A0 01 4C */	rlwinm r0, r5, 0, 5, 6
/* 8136D5F0 | 50 A0 06 F7 */	rlwimi. r0, r5, 0, 27, 27
/* 8136D5F4 | 41 82 00 0C */	beq .L_8136D600
/* 8136D5F8 | 80 63 06 80 */	lwz r3, 0x680(r3)
/* 8136D5FC | 48 00 17 75 */	bl PrevPage__Q37ext_ead3www13BrowserWindowFv
.L_8136D600:
/* 8136D600 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8136D604 | 54 60 00 86 */	rlwinm r0, r3, 0, 2, 3
/* 8136D608 | 50 60 04 E7 */	rlwimi. r0, r3, 0, 19, 19
/* 8136D60C | 41 82 00 0C */	beq .L_8136D618
/* 8136D610 | 80 7D 06 80 */	lwz r3, 0x680(r29)
/* 8136D614 | 48 00 17 6D */	bl GotoHome__Q37ext_ead3www13BrowserWindowFv
.L_8136D618:
/* 8136D618 | 3F E0 00 01 */	lis r31, 0x1
/* 8136D61C | 7F A3 EB 78 */	mr r3, r29
/* 8136D620 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8136D624 | 4B FF FC 91 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D628 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D62C | 7C 67 1B 78 */	mr r7, r3
/* 8136D630 | 80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D634 | 7F A3 EB 78 */	mr r3, r29
/* 8136D638 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8136D63C | 4B FF FC 35 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D640 | 3F E0 40 00 */	lis r31, 0x4000
/* 8136D644 | 7F A3 EB 78 */	mr r3, r29
/* 8136D648 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 8136D64C | 4B FF FC 69 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D650 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D654 | 7C 67 1B 78 */	mr r7, r3
/* 8136D658 | 80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D65C | 7F A3 EB 78 */	mr r3, r29
/* 8136D660 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 8136D664 | 4B FF FC 0D */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D668 | 3F E0 00 02 */	lis r31, 0x2
/* 8136D66C | 7F A3 EB 78 */	mr r3, r29
/* 8136D670 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 8136D674 | 4B FF FC 41 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D678 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D67C | 7C 67 1B 78 */	mr r7, r3
/* 8136D680 | 80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D684 | 7F A3 EB 78 */	mr r3, r29
/* 8136D688 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 8136D68C | 4B FF FB E5 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D690 | 3F E0 80 00 */	lis r31, 0x8000
/* 8136D694 | 7F A3 EB 78 */	mr r3, r29
/* 8136D698 | 38 9F 00 02 */	addi r4, r31, 0x2
/* 8136D69C | 4B FF FC 19 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D6A0 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D6A4 | 7C 67 1B 78 */	mr r7, r3
/* 8136D6A8 | 80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D6AC | 7F A3 EB 78 */	mr r3, r29
/* 8136D6B0 | 38 9F 00 02 */	addi r4, r31, 0x2
/* 8136D6B4 | 4B FF FB BD */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D6B8 | 7F A3 EB 78 */	mr r3, r29
/* 8136D6BC | 38 80 02 00 */	li r4, 0x200
/* 8136D6C0 | 4B FF FB F5 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D6C4 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D6C8 | 7C 67 1B 78 */	mr r7, r3
/* 8136D6CC | 80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D6D0 | 7F A3 EB 78 */	mr r3, r29
/* 8136D6D4 | 38 80 02 00 */	li r4, 0x200
/* 8136D6D8 | 4B FF FB 99 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D6DC | 7F A3 EB 78 */	mr r3, r29
/* 8136D6E0 | 38 80 01 00 */	li r4, 0x100
/* 8136D6E4 | 4B FF FB D1 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D6E8 | 80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D6EC | 7C 67 1B 78 */	mr r7, r3
/* 8136D6F0 | 80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D6F4 | 7F A3 EB 78 */	mr r3, r29
/* 8136D6F8 | 38 80 01 00 */	li r4, 0x100
/* 8136D6FC | 4B FF FB 75 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D700 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136D704 | 48 28 BE 11 */	bl _restgpr_29
/* 8136D708 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136D70C | 7C 08 03 A6 */	mtlr r0
/* 8136D710 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136D714 | 4E 80 00 20 */	blr
.endfn ExecSpacialEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0xEF4 | 0x8136D718 | size: 0x190
# ext_ead::www::BrowserThread::HandleUIEvent_()
.fn HandleUIEvent___Q37ext_ead3www13BrowserThreadFv, global
/* 8136D718 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136D71C | 7C 08 02 A6 */	mflr r0
/* 8136D720 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8136D724 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136D728 | 48 28 BD 9D */	bl _savegpr_28
/* 8136D72C | 7C 7C 1B 78 */	mr r28, r3
/* 8136D730 | 3F E0 81 64 */	lis r31, lbl_81642BA0@ha
/* 8136D734 | 48 00 00 DC */	b .L_8136D810
.L_8136D738:
/* 8136D738 | 80 7C 06 80 */	lwz r3, 0x680(r28)
/* 8136D73C | 38 80 00 00 */	li r4, 0x0
/* 8136D740 | 88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 8136D744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D748 | 41 82 00 14 */	beq .L_8136D75C
/* 8136D74C | 88 03 02 C7 */	lbz r0, 0x2c7(r3)
/* 8136D750 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D754 | 41 82 00 08 */	beq .L_8136D75C
/* 8136D758 | 38 80 00 01 */	li r4, 0x1
.L_8136D75C:
/* 8136D75C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136D760 | 40 82 00 B0 */	bne .L_8136D810
/* 8136D764 | 88 03 02 C4 */	lbz r0, 0x2c4(r3)
/* 8136D768 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D76C | 40 82 00 A4 */	bne .L_8136D810
/* 8136D770 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8136D774 | 3B A0 00 00 */	li r29, 0x0
/* 8136D778 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 8136D77C | 41 82 00 4C */	beq .L_8136D7C8
/* 8136D780 | 40 80 00 14 */	bge .L_8136D794
/* 8136D784 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136D788 | 41 82 00 1C */	beq .L_8136D7A4
/* 8136D78C | 40 80 00 2C */	bge .L_8136D7B8
/* 8136D790 | 48 00 00 68 */	b .L_8136D7F8
.L_8136D794:
/* 8136D794 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 8136D798 | 41 82 00 50 */	beq .L_8136D7E8
/* 8136D79C | 40 80 00 5C */	bge .L_8136D7F8
/* 8136D7A0 | 48 00 00 38 */	b .L_8136D7D8
.L_8136D7A4:
/* 8136D7A4 | 7F 83 E3 78 */	mr r3, r28
/* 8136D7A8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7AC | 4B FF FB FD */	bl ExecDpdEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7B0 | 7C 7D 1B 78 */	mr r29, r3
/* 8136D7B4 | 48 00 00 54 */	b .L_8136D808
.L_8136D7B8:
/* 8136D7B8 | 7F 83 E3 78 */	mr r3, r28
/* 8136D7BC | 38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7C0 | 4B FF FE 0D */	bl ExecSpacialEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7C4 | 48 00 00 44 */	b .L_8136D808
.L_8136D7C8:
/* 8136D7C8 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8136D7CC | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8136D7D0 | 48 00 1E 15 */	bl SetWindowSize__Q37ext_ead3www13BrowserWindowFii
/* 8136D7D4 | 48 00 00 34 */	b .L_8136D808
.L_8136D7D8:
/* 8136D7D8 | 7F 83 E3 78 */	mr r3, r28
/* 8136D7DC | 38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7E0 | 48 00 05 C1 */	bl CommitImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7E4 | 48 00 00 24 */	b .L_8136D808
.L_8136D7E8:
/* 8136D7E8 | 7F 83 E3 78 */	mr r3, r28
/* 8136D7EC | 38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7F0 | 48 00 05 FD */	bl UpdateImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7F4 | 48 00 00 14 */	b .L_8136D808
.L_8136D7F8:
/* 8136D7F8 | 38 9F 2B A0 */	addi r4, r31, lbl_81642BA0@l
/* 8136D7FC | 38 60 00 03 */	li r3, 0x3
/* 8136D800 | 4C C6 31 82 */	crclr cr1eq
/* 8136D804 | 48 00 10 91 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136D808:
/* 8136D808 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136D80C | 40 82 00 84 */	bne .L_8136D890
.L_8136D810:
/* 8136D810 | 3B C0 00 00 */	li r30, 0x0
/* 8136D814 | 48 1C 30 71 */	bl OSDisableInterrupts
/* 8136D818 | 81 9C 03 CC */	lwz r12, 0x3cc(r28)
/* 8136D81C | 7C 7D 1B 78 */	mr r29, r3
/* 8136D820 | 38 7C 03 CC */	addi r3, r28, 0x3cc
/* 8136D824 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136D828 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136D82C | 38 A0 00 00 */	li r5, 0x0
/* 8136D830 | 7D 89 03 A6 */	mtctr r12
/* 8136D834 | 4E 80 04 21 */	bctrl
/* 8136D838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D83C | 41 82 00 44 */	beq .L_8136D880
/* 8136D840 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136D844 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8136D848 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 8136D84C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8136D850 | 41 82 00 10 */	beq .L_8136D860
/* 8136D854 | 38 6D 82 A4 */	li r3, lbl_816962E4@sda21
/* 8136D858 | 4C C6 31 82 */	crclr cr1eq
/* 8136D85C | 48 1C 0E 45 */	bl OSReport
.L_8136D860:
/* 8136D860 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8136D864 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 8136D868 | 48 00 05 D5 */	bl __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D86C | 7F C3 F3 78 */	mr r3, r30
/* 8136D870 | 38 80 00 00 */	li r4, 0x0
/* 8136D874 | 38 A0 00 20 */	li r5, 0x20
/* 8136D878 | 4B FC 2A BD */	bl memset
/* 8136D87C | 3B C0 00 01 */	li r30, 0x1
.L_8136D880:
/* 8136D880 | 7F A3 EB 78 */	mr r3, r29
/* 8136D884 | 48 1C 30 29 */	bl OSRestoreInterrupts
/* 8136D888 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136D88C | 40 82 FE AC */	bne .L_8136D738
.L_8136D890:
/* 8136D890 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136D894 | 48 28 BC 7D */	bl _restgpr_28
/* 8136D898 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136D89C | 7C 08 03 A6 */	mtlr r0
/* 8136D8A0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8136D8A4 | 4E 80 00 20 */	blr
.endfn HandleUIEvent___Q37ext_ead3www13BrowserThreadFv

# .text:0x1084 | 0x8136D8A8 | size: 0xA4
# ext_ead::www::BrowserThread::SendUIEvent(ext_ead::www::BrowserThread::CmdPacket*)
.fn SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136D8A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136D8AC | 7C 08 02 A6 */	mflr r0
/* 8136D8B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136D8B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136D8B8 | 48 28 BC 0D */	bl _savegpr_28
/* 8136D8BC | 7C 7C 1B 78 */	mr r28, r3
/* 8136D8C0 | 7C 9D 23 78 */	mr r29, r4
/* 8136D8C4 | 48 1C 2F C1 */	bl OSDisableInterrupts
/* 8136D8C8 | 38 00 00 08 */	li r0, 0x8
/* 8136D8CC | 7C 7E 1B 78 */	mr r30, r3
/* 8136D8D0 | 3B FC 03 F0 */	addi r31, r28, 0x3f0
/* 8136D8D4 | 38 60 00 00 */	li r3, 0x0
/* 8136D8D8 | 7C 09 03 A6 */	mtctr r0
.L_8136D8DC:
/* 8136D8DC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8136D8E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D8E4 | 41 82 00 10 */	beq .L_8136D8F4
/* 8136D8E8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8136D8EC | 3B FF 00 20 */	addi r31, r31, 0x20
/* 8136D8F0 | 42 00 FF EC */	bdnz .L_8136D8DC
.L_8136D8F4:
/* 8136D8F4 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8136D8F8 | 41 82 00 34 */	beq .L_8136D92C
/* 8136D8FC | 38 00 FF FF */	li r0, -0x1
/* 8136D900 | 7F A4 EB 78 */	mr r4, r29
/* 8136D904 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136D908 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8136D90C | 48 00 05 31 */	bl __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D910 | 81 9C 03 CC */	lwz r12, 0x3cc(r28)
/* 8136D914 | 38 7C 03 CC */	addi r3, r28, 0x3cc
/* 8136D918 | 7F E4 FB 78 */	mr r4, r31
/* 8136D91C | 38 A0 00 00 */	li r5, 0x0
/* 8136D920 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136D924 | 7D 89 03 A6 */	mtctr r12
/* 8136D928 | 4E 80 04 21 */	bctrl
.L_8136D92C:
/* 8136D92C | 7F C3 F3 78 */	mr r3, r30
/* 8136D930 | 48 1C 2F 7D */	bl OSRestoreInterrupts
/* 8136D934 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136D938 | 48 28 BB D9 */	bl _restgpr_28
/* 8136D93C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136D940 | 7C 08 03 A6 */	mtlr r0
/* 8136D944 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136D948 | 4E 80 00 20 */	blr
.endfn SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x1128 | 0x8136D94C | size: 0x54
# ext_ead::www::BrowserThread::InitFonts_(const char*)
.fn InitFonts___Q37ext_ead3www13BrowserThreadFPCc, global
/* 8136D94C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136D950 | 7C 08 02 A6 */	mflr r0
/* 8136D954 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136D958 | 48 1C 83 41 */	bl OSGetTick
/* 8136D95C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D960 | 48 1C 83 39 */	bl OSGetTick
/* 8136D964 | 81 8D A7 8C */	lwz r12, WWWSurfaceAddFont@sda21(r0)
/* 8136D968 | 3C 80 81 64 */	lis r4, lbl_81642BD1@ha
/* 8136D96C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D970 | 38 64 2B D1 */	addi r3, r4, lbl_81642BD1@l
/* 8136D974 | 7D 89 03 A6 */	mtctr r12
/* 8136D978 | 4E 80 04 21 */	bctrl
/* 8136D97C | 3C 80 81 64 */	lis r4, lbl_81642BE1@ha
/* 8136D980 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136D984 | 38 84 2B E1 */	addi r4, r4, lbl_81642BE1@l
/* 8136D988 | 4C C6 31 82 */	crclr cr1eq
/* 8136D98C | 4B FF F5 AD */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136D990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136D994 | 7C 08 03 A6 */	mtlr r0
/* 8136D998 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136D99C | 4E 80 00 20 */	blr
.endfn InitFonts___Q37ext_ead3www13BrowserThreadFPCc

# .text:0x117C | 0x8136D9A0 | size: 0x24
# ext_ead::www::BrowserThread::GetTextureBuffer(int, WWWRect**)
.fn GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect, global
/* 8136D9A0 | 80 63 06 80 */	lwz r3, 0x680(r3)
/* 8136D9A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D9A8 | 40 82 00 0C */	bne .L_8136D9B4
/* 8136D9AC | 38 60 00 00 */	li r3, 0x0
/* 8136D9B0 | 4E 80 00 20 */	blr
.L_8136D9B4:
/* 8136D9B4 | 7C A6 2B 78 */	mr r6, r5
/* 8136D9B8 | 38 A0 00 00 */	li r5, 0x0
/* 8136D9BC | 48 00 1B 8C */	b GetTextureBuffer__Q37ext_ead3www13BrowserWindowFibPP7WWWRect
/* 8136D9C0 | 4E 80 00 20 */	blr
.endfn GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect

# .text:0x11A0 | 0x8136D9C4 | size: 0xA8
# ext_ead::www::BrowserThread::FlushCallback(WWWRect*, int)
.fn FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti, global
/* 8136D9C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136D9C8 | 7C 08 02 A6 */	mflr r0
/* 8136D9CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136D9D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136D9D4 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136D9D8 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8136D9DC | 83 E3 06 80 */	lwz r31, 0x680(r3)
/* 8136D9E0 | 88 1F 02 C4 */	lbz r0, 0x2c4(r31)
/* 8136D9E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D9E8 | 40 82 00 70 */	bne .L_8136DA58
/* 8136D9EC | 88 1F 02 C5 */	lbz r0, 0x2c5(r31)
/* 8136D9F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D9F4 | 40 82 00 64 */	bne .L_8136DA58
/* 8136D9F8 | 48 1C 2E 8D */	bl OSDisableInterrupts
/* 8136D9FC | 88 1F 02 C6 */	lbz r0, 0x2c6(r31)
/* 8136DA00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136DA04 | 40 82 00 48 */	bne .L_8136DA4C
/* 8136DA08 | 88 1F 02 C8 */	lbz r0, 0x2c8(r31)
/* 8136DA0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136DA10 | 40 82 00 34 */	bne .L_8136DA44
/* 8136DA14 | 80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 8136DA18 | 38 80 00 03 */	li r4, 0x3
/* 8136DA1C | 90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 8136DA20 | 80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 8136DA24 | 54 00 10 3A */	slwi r0, r0, 2
/* 8136DA28 | 7C BF 02 14 */	add r5, r31, r0
/* 8136DA2C | 80 A5 02 B4 */	lwz r5, 0x2b4(r5)
/* 8136DA30 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8136DA34 | 7C 05 23 D6 */	divw r0, r5, r4
/* 8136DA38 | 7C 00 21 D6 */	mullw r0, r0, r4
/* 8136DA3C | 7C 00 28 50 */	subf r0, r0, r5
/* 8136DA40 | 90 1F 02 BC */	stw r0, 0x2bc(r31)
.L_8136DA44:
/* 8136DA44 | 38 00 00 01 */	li r0, 0x1
/* 8136DA48 | 98 1F 02 C8 */	stb r0, 0x2c8(r31)
.L_8136DA4C:
/* 8136DA4C | 38 00 00 01 */	li r0, 0x1
/* 8136DA50 | 98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 8136DA54 | 48 1C 2E 59 */	bl OSRestoreInterrupts
.L_8136DA58:
/* 8136DA58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DA5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136DA60 | 7C 08 03 A6 */	mtlr r0
/* 8136DA64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136DA68 | 4E 80 00 20 */	blr
.endfn FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti

# .text:0x1248 | 0x8136DA6C | size: 0xD4
# ext_ead::www::BrowserThread::SendEventFromWindow(ext_ead::www::ImeData*)
.fn SendEventFromWindow__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData, global
/* 8136DA6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136DA70 | 7C 08 02 A6 */	mflr r0
/* 8136DA74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136DA78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136DA7C | 48 28 BA 45 */	bl _savegpr_27
/* 8136DA80 | 7C 7B 1B 78 */	mr r27, r3
/* 8136DA84 | 7C 9C 23 78 */	mr r28, r4
/* 8136DA88 | 3B C0 00 00 */	li r30, 0x0
/* 8136DA8C | 48 1C 2D F9 */	bl OSDisableInterrupts
/* 8136DA90 | 38 00 00 08 */	li r0, 0x8
/* 8136DA94 | 7C 7D 1B 78 */	mr r29, r3
/* 8136DA98 | 3B FB 05 34 */	addi r31, r27, 0x534
/* 8136DA9C | 38 60 00 00 */	li r3, 0x0
/* 8136DAA0 | 7C 09 03 A6 */	mtctr r0
.L_8136DAA4:
/* 8136DAA4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8136DAA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136DAAC | 41 82 00 10 */	beq .L_8136DABC
/* 8136DAB0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8136DAB4 | 3B FF 00 24 */	addi r31, r31, 0x24
/* 8136DAB8 | 42 00 FF EC */	bdnz .L_8136DAA4
.L_8136DABC:
/* 8136DABC | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8136DAC0 | 41 82 00 38 */	beq .L_8136DAF8
/* 8136DAC4 | 38 00 FF FF */	li r0, -0x1
/* 8136DAC8 | 7F 84 E3 78 */	mr r4, r28
/* 8136DACC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136DAD0 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8136DAD4 | 48 00 03 95 */	bl __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData
/* 8136DAD8 | 81 9B 05 10 */	lwz r12, 0x510(r27)
/* 8136DADC | 38 7B 05 10 */	addi r3, r27, 0x510
/* 8136DAE0 | 7F E4 FB 78 */	mr r4, r31
/* 8136DAE4 | 38 A0 00 00 */	li r5, 0x0
/* 8136DAE8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136DAEC | 7D 89 03 A6 */	mtctr r12
/* 8136DAF0 | 4E 80 04 21 */	bctrl
/* 8136DAF4 | 3B C0 00 01 */	li r30, 0x1
.L_8136DAF8:
/* 8136DAF8 | 7F A3 EB 78 */	mr r3, r29
/* 8136DAFC | 48 1C 2D B1 */	bl OSRestoreInterrupts
/* 8136DB00 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136DB04 | 40 82 00 20 */	bne .L_8136DB24
/* 8136DB08 | 3C 80 81 64 */	lis r4, lbl_81642BF9@ha
/* 8136DB0C | 38 60 00 03 */	li r3, 0x3
/* 8136DB10 | 38 84 2B F9 */	addi r4, r4, lbl_81642BF9@l
/* 8136DB14 | 4C C6 31 82 */	crclr cr1eq
/* 8136DB18 | 48 00 0D 7D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DB1C | 38 60 00 00 */	li r3, 0x0
/* 8136DB20 | 48 00 00 08 */	b .L_8136DB28
.L_8136DB24:
/* 8136DB24 | 38 60 00 01 */	li r3, 0x1
.L_8136DB28:
/* 8136DB28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136DB2C | 48 28 B9 E1 */	bl _restgpr_27
/* 8136DB30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136DB34 | 7C 08 03 A6 */	mtlr r0
/* 8136DB38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136DB3C | 4E 80 00 20 */	blr
.endfn SendEventFromWindow__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData

# .text:0x131C | 0x8136DB40 | size: 0xB0
# ext_ead::www::BrowserThread::ReceiveWindowEvent(ext_ead::www::ImeData*)
.fn ReceiveWindowEvent__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData, global
/* 8136DB40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136DB44 | 7C 08 02 A6 */	mflr r0
/* 8136DB48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136DB4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136DB50 | 48 28 B9 75 */	bl _savegpr_28
/* 8136DB54 | 7C 7C 1B 78 */	mr r28, r3
/* 8136DB58 | 7C 9D 23 78 */	mr r29, r4
/* 8136DB5C | 3B E0 00 00 */	li r31, 0x0
/* 8136DB60 | 48 1C 2D 25 */	bl OSDisableInterrupts
/* 8136DB64 | 81 9C 05 10 */	lwz r12, 0x510(r28)
/* 8136DB68 | 7C 7E 1B 78 */	mr r30, r3
/* 8136DB6C | 38 7C 05 10 */	addi r3, r28, 0x510
/* 8136DB70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136DB74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136DB78 | 38 A0 00 00 */	li r5, 0x0
/* 8136DB7C | 7D 89 03 A6 */	mtctr r12
/* 8136DB80 | 4E 80 04 21 */	bctrl
/* 8136DB84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DB88 | 41 82 00 44 */	beq .L_8136DBCC
/* 8136DB8C | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 8136DB90 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136DB94 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 8136DB98 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8136DB9C | 41 82 00 10 */	beq .L_8136DBAC
/* 8136DBA0 | 38 6D 82 A4 */	li r3, lbl_816962E4@sda21
/* 8136DBA4 | 4C C6 31 82 */	crclr cr1eq
/* 8136DBA8 | 48 1C 0A F9 */	bl OSReport
.L_8136DBAC:
/* 8136DBAC | 7F A3 EB 78 */	mr r3, r29
/* 8136DBB0 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 8136DBB4 | 48 00 02 B5 */	bl __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData
/* 8136DBB8 | 7F E3 FB 78 */	mr r3, r31
/* 8136DBBC | 38 80 00 00 */	li r4, 0x0
/* 8136DBC0 | 38 A0 00 24 */	li r5, 0x24
/* 8136DBC4 | 4B FC 27 71 */	bl memset
/* 8136DBC8 | 3B E0 00 01 */	li r31, 0x1
.L_8136DBCC:
/* 8136DBCC | 7F C3 F3 78 */	mr r3, r30
/* 8136DBD0 | 48 1C 2C DD */	bl OSRestoreInterrupts
/* 8136DBD4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136DBD8 | 7F E3 FB 78 */	mr r3, r31
/* 8136DBDC | 48 28 B9 35 */	bl _restgpr_28
/* 8136DBE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136DBE4 | 7C 08 03 A6 */	mtlr r0
/* 8136DBE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136DBEC | 4E 80 00 20 */	blr
.endfn ReceiveWindowEvent__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData

# .text:0x13CC | 0x8136DBF0 | size: 0x11C
# ext_ead::www::BrowserThread::CreateImeData(ext_ead::www::ImeData*, const WWWIMEData*)
.fn CreateImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPC10WWWIMEData, global
/* 8136DBF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136DBF4 | 7C 08 02 A6 */	mflr r0
/* 8136DBF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136DBFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136DC00 | 48 28 B8 C9 */	bl _savegpr_29
/* 8136DC04 | 7C 9D 23 78 */	mr r29, r4
/* 8136DC08 | 3F E0 81 64 */	lis r31, lbl_816429C0@ha
/* 8136DC0C | 7C BE 2B 78 */	mr r30, r5
/* 8136DC10 | 38 80 00 00 */	li r4, 0x0
/* 8136DC14 | 7F A3 EB 78 */	mr r3, r29
/* 8136DC18 | 3B FF 29 C0 */	addi r31, r31, lbl_816429C0@l
/* 8136DC1C | 38 A0 00 20 */	li r5, 0x20
/* 8136DC20 | 4B FC 27 15 */	bl memset
/* 8136DC24 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8136DC28 | 38 9F 02 6F */	addi r4, r31, 0x26f
/* 8136DC2C | 38 60 00 03 */	li r3, 0x3
/* 8136DC30 | 4C C6 31 82 */	crclr cr1eq
/* 8136DC34 | 48 00 0C 61 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC38 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136DC3C | 38 9F 02 84 */	addi r4, r31, 0x284
/* 8136DC40 | 38 60 00 03 */	li r3, 0x3
/* 8136DC44 | 4C C6 31 82 */	crclr cr1eq
/* 8136DC48 | 48 00 0C 4D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC4C | 80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 8136DC50 | 38 9F 02 98 */	addi r4, r31, 0x298
/* 8136DC54 | 38 60 00 03 */	li r3, 0x3
/* 8136DC58 | 4C C6 31 82 */	crclr cr1eq
/* 8136DC5C | 48 00 0C 39 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC60 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136DC64 | 38 9F 02 B1 */	addi r4, r31, 0x2b1
/* 8136DC68 | 38 60 00 03 */	li r3, 0x3
/* 8136DC6C | 4C C6 31 82 */	crclr cr1eq
/* 8136DC70 | 48 00 0C 25 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC74 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136DC78 | 38 9F 02 C7 */	addi r4, r31, 0x2c7
/* 8136DC7C | 38 60 00 03 */	li r3, 0x3
/* 8136DC80 | 4C C6 31 82 */	crclr cr1eq
/* 8136DC84 | 48 00 0C 11 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC88 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8136DC8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DC90 | 41 82 00 24 */	beq .L_8136DCB4
/* 8136DC94 | 48 28 B2 69 */	bl strlen
/* 8136DC98 | 38 80 00 04 */	li r4, 0x4
/* 8136DC9C | 38 63 00 01 */	addi r3, r3, 0x1
/* 8136DCA0 | 48 00 02 C9 */	bl allocMem2__Q37ext_ead3www4HeapFUli
/* 8136DCA4 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8136DCA8 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8136DCAC | 48 29 46 59 */	bl strcpy
/* 8136DCB0 | 48 00 00 0C */	b .L_8136DCBC
.L_8136DCB4:
/* 8136DCB4 | 38 00 00 00 */	li r0, 0x0
/* 8136DCB8 | 90 1D 00 08 */	stw r0, 0x8(r29)
.L_8136DCBC:
/* 8136DCBC | 81 1E 00 00 */	lwz r8, 0x0(r30)
/* 8136DCC0 | 38 E0 00 00 */	li r7, 0x0
/* 8136DCC4 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 8136DCC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136DCCC | 80 BE 00 0C */	lwz r5, 0xc(r30)
/* 8136DCD0 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8136DCD4 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8136DCD8 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8136DCDC | 91 1D 00 04 */	stw r8, 0x4(r29)
/* 8136DCE0 | 90 FD 00 00 */	stw r7, 0x0(r29)
/* 8136DCE4 | 90 DD 00 0C */	stw r6, 0xc(r29)
/* 8136DCE8 | 90 BD 00 10 */	stw r5, 0x10(r29)
/* 8136DCEC | 90 9D 00 14 */	stw r4, 0x14(r29)
/* 8136DCF0 | 90 7D 00 18 */	stw r3, 0x18(r29)
/* 8136DCF4 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8136DCF8 | 48 28 B8 1D */	bl _restgpr_29
/* 8136DCFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136DD00 | 7C 08 03 A6 */	mtlr r0
/* 8136DD04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136DD08 | 4E 80 00 20 */	blr
.endfn CreateImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPC10WWWIMEData

# .text:0x14E8 | 0x8136DD0C | size: 0x8
# ext_ead::www::BrowserThread::DisposeImeData(ext_ead::www::ImeData*)
.fn DisposeImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData, global
/* 8136DD0C | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 8136DD10 | 48 00 02 6C */	b freeMem2__Q37ext_ead3www4HeapFPv
.endfn DisposeImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData

# .text:0x14F0 | 0x8136DD14 | size: 0x8C
# ext_ead::www::BrowserThread::CommitIme(ext_ead::www::ImeData*, const char*)
.fn CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc, global
/* 8136DD14 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136DD18 | 7C 08 02 A6 */	mflr r0
/* 8136DD1C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8136DD20 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136DD24 | 48 28 B7 A1 */	bl _savegpr_28
/* 8136DD28 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136DD2C | 7C 7C 1B 78 */	mr r28, r3
/* 8136DD30 | 7C 9D 23 78 */	mr r29, r4
/* 8136DD34 | 7C BE 2B 78 */	mr r30, r5
/* 8136DD38 | 41 82 00 2C */	beq .L_8136DD64
/* 8136DD3C | 7F C3 F3 78 */	mr r3, r30
/* 8136DD40 | 48 28 B1 BD */	bl strlen
/* 8136DD44 | 38 80 00 04 */	li r4, 0x4
/* 8136DD48 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8136DD4C | 48 00 01 FD */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136DD50 | 7C 7F 1B 78 */	mr r31, r3
/* 8136DD54 | 7F C4 F3 78 */	mr r4, r30
/* 8136DD58 | 48 29 45 AD */	bl strcpy
/* 8136DD5C | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 8136DD60 | 48 00 00 0C */	b .L_8136DD6C
.L_8136DD64:
/* 8136DD64 | 38 00 00 00 */	li r0, 0x0
/* 8136DD68 | 90 01 00 10 */	stw r0, 0x10(r1)
.L_8136DD6C:
/* 8136DD6C | 38 00 00 03 */	li r0, 0x3
/* 8136DD70 | 7F 83 E3 78 */	mr r3, r28
/* 8136DD74 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8136DD78 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136DD7C | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8136DD80 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8136DD84 | 4B FF FB 25 */	bl SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136DD88 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136DD8C | 48 28 B7 85 */	bl _restgpr_28
/* 8136DD90 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136DD94 | 7C 08 03 A6 */	mtlr r0
/* 8136DD98 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8136DD9C | 4E 80 00 20 */	blr
.endfn CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc

# .text:0x157C | 0x8136DDA0 | size: 0x4C
# ext_ead::www::BrowserThread::CommitImeCmdPacket(const ext_ead::www::BrowserThread::CmdPacket*)
.fn CommitImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136DDA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DDA4 | 7C 08 02 A6 */	mflr r0
/* 8136DDA8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136DDAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DDB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136DDB4 | 7C 9F 23 78 */	mr r31, r4
/* 8136DDB8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8136DDBC | 81 8D A7 C0 */	lwz r12, WWWCommitIme@sda21(r0)
/* 8136DDC0 | 7D 89 03 A6 */	mtctr r12
/* 8136DDC4 | 4E 80 04 21 */	bctrl
/* 8136DDC8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8136DDCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DDD0 | 41 82 00 08 */	beq .L_8136DDD8
/* 8136DDD4 | 48 00 01 89 */	bl freeMem1__Q37ext_ead3www4HeapFPv
.L_8136DDD8:
/* 8136DDD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DDDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136DDE0 | 7C 08 03 A6 */	mtlr r0
/* 8136DDE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136DDE8 | 4E 80 00 20 */	blr
.endfn CommitImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x15C8 | 0x8136DDEC | size: 0x50
# ext_ead::www::BrowserThread::UpdateImeCmdPacket(const ext_ead::www::BrowserThread::CmdPacket*)
.fn UpdateImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136DDEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DDF0 | 7C 08 02 A6 */	mflr r0
/* 8136DDF4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136DDF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DDFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136DE00 | 7C 9F 23 78 */	mr r31, r4
/* 8136DE04 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8136DE08 | 81 8D A7 C4 */	lwz r12, WWWUpdateIme@sda21(r0)
/* 8136DE0C | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8136DE10 | 7D 89 03 A6 */	mtctr r12
/* 8136DE14 | 4E 80 04 21 */	bctrl
/* 8136DE18 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8136DE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DE20 | 41 82 00 08 */	beq .L_8136DE28
/* 8136DE24 | 48 00 01 39 */	bl freeMem1__Q37ext_ead3www4HeapFPv
.L_8136DE28:
/* 8136DE28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DE2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136DE30 | 7C 08 03 A6 */	mtlr r0
/* 8136DE34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136DE38 | 4E 80 00 20 */	blr
.endfn UpdateImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x1618 | 0x8136DE3C | size: 0x2C
# ext_ead::www::BrowserThread::CmdPacket::operator=(const ext_ead::www::BrowserThread::CmdPacket&)
.fn __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136DE3C | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8136DE40 | 38 00 00 03 */	li r0, 0x3
/* 8136DE44 | 7C 66 1B 78 */	mr r6, r3
/* 8136DE48 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8136DE4C | 7C 09 03 A6 */	mtctr r0
.L_8136DE50:
/* 8136DE50 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8136DE54 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8136DE58 | 90 A6 00 04 */	stw r5, 0x4(r6)
/* 8136DE5C | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 8136DE60 | 42 00 FF F0 */	bdnz .L_8136DE50
/* 8136DE64 | 4E 80 00 20 */	blr
.endfn __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x1644 | 0x8136DE68 | size: 0x44
# ext_ead::www::ImeData::operator=(const ext_ead::www::ImeData&)
.fn __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData, global
/* 8136DE68 | 81 64 00 00 */	lwz r11, 0x0(r4)
/* 8136DE6C | 81 44 00 04 */	lwz r10, 0x4(r4)
/* 8136DE70 | 81 24 00 08 */	lwz r9, 0x8(r4)
/* 8136DE74 | 81 04 00 0C */	lwz r8, 0xc(r4)
/* 8136DE78 | 80 E4 00 10 */	lwz r7, 0x10(r4)
/* 8136DE7C | 80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8136DE80 | 80 A4 00 18 */	lwz r5, 0x18(r4)
/* 8136DE84 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8136DE88 | 91 63 00 00 */	stw r11, 0x0(r3)
/* 8136DE8C | 91 43 00 04 */	stw r10, 0x4(r3)
/* 8136DE90 | 91 23 00 08 */	stw r9, 0x8(r3)
/* 8136DE94 | 91 03 00 0C */	stw r8, 0xc(r3)
/* 8136DE98 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 8136DE9C | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 8136DEA0 | 90 A3 00 18 */	stw r5, 0x18(r3)
/* 8136DEA4 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 8136DEA8 | 4E 80 00 20 */	blr
.endfn __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData

# 0x816429C0..0x81642D10 | size: 0x350
.data
.balign 8

# .data:0x0 | 0x816429C0 | size: 0xC
.obj lbl_816429C0, global
	.string "[TickTimer]"
.endobj lbl_816429C0

# .data:0xC | 0x816429CC | size: 0xA
.obj lbl_816429CC, global
	.string "[Warning]"
.endobj lbl_816429CC

# .data:0x16 | 0x816429D6 | size: 0xA
.obj lbl_816429D6, global
	.string "[[Event]]"
.endobj lbl_816429D6

# .data:0x20 | 0x816429E0 | size: 0x18
# ext_ead::www::print::Message
.obj Message__Q37ext_ead3www5print, global
	.4byte lbl_816429C0
	.4byte lbl_816429CC
	.4byte lbl_816962D4
	.4byte lbl_816962DB
	.4byte lbl_816429D6
	.4byte lbl_816962E3
.endobj Message__Q37ext_ead3www5print

# .data:0x38 | 0x816429F8 | size: 0x22
.obj lbl_816429F8, global
	.string "  EVT_FINISHED: %d/%d %d/%d s:%d\n"
.endobj lbl_816429F8

# .data:0x5A | 0x81642A1A | size: 0x186
.obj lbl_81642A1A, global
	.4byte 0x42726F77
	.4byte 0x73657254
	.4byte 0x68726561
	.4byte 0x643A3A20
	.4byte 0x6D736720
	.4byte 0x72656365
	.4byte 0x69766564
	.4byte 0x2E0A0077
	.4byte 0x77775F73
	.4byte 0x75726661
	.4byte 0x63653A20
	.4byte 0x4F706572
	.4byte 0x61467261
	.4byte 0x6D654275
	.4byte 0x66666572
	.4byte 0x3A207074
	.4byte 0x723A2570
	.4byte 0x2C207369
	.4byte 0x7A653A25
	.4byte 0x640A0077
	.4byte 0x77775F73
	.4byte 0x75726661
	.4byte 0x63653A20
	.4byte 0x4F706572
	.4byte 0x61486561
	.4byte 0x70427566
	.4byte 0x66657220
	.4byte 0x3A207074
	.4byte 0x723A2570
	.4byte 0x200A0057
	.4byte 0x57575375
	.4byte 0x72666163
	.4byte 0x65496E69
	.4byte 0x74005757
	.4byte 0x57537572
	.4byte 0x66616365
	.4byte 0x496E6974
	.4byte 0x2025640A
	.4byte 0x00575757
	.4byte 0x53757266
	.4byte 0x61636553
	.4byte 0x6574466C
	.4byte 0x75736843
	.4byte 0x616C6C62
	.4byte 0x61636B00
	.4byte 0x57575753
	.4byte 0x75726661
	.4byte 0x63655365
	.4byte 0x74466C75
	.4byte 0x73684361
	.4byte 0x6C6C6261
	.4byte 0x636B2025
	.4byte 0x640A002F
	.4byte 0x6F706572
	.4byte 0x61666F6E
	.4byte 0x74732F00
	.4byte 0x42726F77
	.4byte 0x73657254
	.4byte 0x68726561
	.4byte 0x643A3A20
	.4byte 0x65786563
	.4byte 0x75746564
	.4byte 0x0A005769
	.4byte 0x69204E54
	.4byte 0x4C472050
	.4byte 0x476F7468
	.4byte 0x69630057
	.4byte 0x6969204E
	.4byte 0x544C4720
	.4byte 0x476F7468
	.4byte 0x6963002F
	.4byte 0x746D702F
	.4byte 0x7777772E
	.4byte 0x6172632F
	.4byte 0x6E616E64
	.4byte 0x00575757
	.4byte 0x43726561
	.4byte 0x74654272
	.4byte 0x6F777365
	.4byte 0x72002B2B
	.4byte 0x2B20746F
	.4byte 0x6F206D61
	.4byte 0x6E792057
	.4byte 0x57575275
	.4byte 0x6E536C69
	.4byte 0x63652063
	.4byte 0x616C6C65
	.4byte 0x642E2025
	.4byte 0x640A0054
	.4byte 0x68697320
	.4byte 0x74687265
	.4byte 0x61642073
	.4byte 0x7461636B
	.4byte 0x20686173
	.4byte 0x206F7665
	.4byte 0x72666C6F
	.4byte 0x7765642E
	.2byte 0x0A00
.endobj lbl_81642A1A

# .data:0x1E0 | 0x81642BA0 | size: 0x31
.obj lbl_81642BA0, global
	.string "BrowserThread::HandleUIEvent_: Unknown type: %d\n"
.endobj lbl_81642BA0

# .data:0x211 | 0x81642BD1 | size: 0x10
.obj lbl_81642BD1, global
	.string "DirectUniversal"
.endobj lbl_81642BD1

# .data:0x221 | 0x81642BE1 | size: 0x18
.obj lbl_81642BE1, global
	.string "WWWSurfaceAddFont:font1"
.endobj lbl_81642BE1

# .data:0x239 | 0x81642BF9 | size: 0xAB
.obj lbl_81642BF9, global
	.4byte 0x5741524E
	.4byte 0x494E473A
	.4byte 0x20546F6F
	.4byte 0x204D616E
	.4byte 0x7920496D
	.4byte 0x6520636F
	.4byte 0x6D6D616E
	.4byte 0x64732E20
	.4byte 0x63616E6E
	.4byte 0x6F742073
	.4byte 0x656E6420
	.4byte 0x72657175
	.4byte 0x6573742E
	.4byte 0x0A005757
	.4byte 0x57494D45
	.4byte 0x44617461
	.4byte 0x20696D65
	.4byte 0x49443A25
	.4byte 0x700A0057
	.4byte 0x5757494D
	.4byte 0x45446174
	.4byte 0x61207465
	.4byte 0x78743A25
	.4byte 0x700A0057
	.4byte 0x5757494D
	.4byte 0x45446174
	.4byte 0x61206D61
	.4byte 0x786C656E
	.4byte 0x6774683A
	.4byte 0x25640A00
	.4byte 0x57575749
	.4byte 0x4D454461
	.4byte 0x74612066
	.4byte 0x6F726D61
	.4byte 0x743A2570
	.4byte 0x0A005757
	.4byte 0x57494D45
	.4byte 0x44617461
	.4byte 0x20746578
	.4byte 0x745F7374
	.4byte 0x72696E67
	.4byte 0x3A25730A
	.byte 0x00, 0x00, 0x00
.endobj lbl_81642BF9

# .data:0x2E4 | 0x81642CA4 | size: 0x28
# ext_ead::www::BrowserThread::__vtable
.obj __vt__Q37ext_ead3www13BrowserThread, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q37ext_ead3www13BrowserThreadFv
	.4byte Run__Q37ext_ead3www13BrowserThreadFv
	.4byte Create__Q37ext_ead3www9ut_threadFPvUlib
	.4byte Resume__Q37ext_ead3www9ut_threadFv
	.4byte Suspend__Q37ext_ead3www9ut_threadFv
	.4byte WaitForThreadExit__Q37ext_ead3www9ut_threadFv
	.4byte IsThreadTerminated__Q37ext_ead3www9ut_threadFv
	.4byte IsThreadSuspended__Q37ext_ead3www9ut_threadFv
.endobj __vt__Q37ext_ead3www13BrowserThread

# .data:0x30C | 0x81642CCC | size: 0x1C
# ext_ead::www::ut_message_cmd<ext_ead::www::ImeData, 8>::__vtable
.obj "__vt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv"
	.4byte SendMessage__Q37ext_ead3www15ut_message_baseFPvl
	.4byte JamMessage__Q37ext_ead3www15ut_message_baseFPvl
	.4byte ReceiveMessage__Q37ext_ead3www15ut_message_baseFPPvl
	.4byte InitMessageQueue__Q37ext_ead3www15ut_message_baseFPPvl
.endobj "__vt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>"

# .data:0x328 | 0x81642CE8 | size: 0x1C
# ext_ead::www::ut_message_cmd<ext_ead::www::BrowserThread::CmdPacket, 8>::__vtable
.obj "__vt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv"
	.4byte SendMessage__Q37ext_ead3www15ut_message_baseFPvl
	.4byte JamMessage__Q37ext_ead3www15ut_message_baseFPvl
	.4byte ReceiveMessage__Q37ext_ead3www15ut_message_baseFPPvl
	.4byte InitMessageQueue__Q37ext_ead3www15ut_message_baseFPPvl
.endobj "__vt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>"

# .data:0x344 | 0x81642D04 | size: 0xB
# ext_ead::www::print::TickTimer::@STRING@report(const char*, ...)
.obj "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce", global
	.string " : %d[ms]\n"
.endobj "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce"

# .data:0x34F | 0x81642D0F | size: 0x1
.obj gap_08_81642D0F_data, global
.hidden gap_08_81642D0F_data
	.byte 0x00
.endobj gap_08_81642D0F_data

# 0x816962C8..0x816962F0 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816962C8 | size: 0x8
.obj lbl_816962C8, global
	.4byte 0x6D617263
	.4byte 0x00000000
.endobj lbl_816962C8

# .sdata:0x8 | 0x816962D0 | size: 0x4
# www::arcreader::sProtocolName
.obj sProtocolName__Q23www9arcreader, global
	.4byte lbl_816962C8
.endobj sProtocolName__Q23www9arcreader

# .sdata:0xC | 0x816962D4 | size: 0x7
.obj lbl_816962D4, global
	.string "[Info]"
.endobj lbl_816962D4

# .sdata:0x13 | 0x816962DB | size: 0x8
.obj lbl_816962DB, global
	.string "[Debug]"
.endobj lbl_816962DB

# .sdata:0x1B | 0x816962E3 | size: 0x1
.obj lbl_816962E3, global
	.byte 0x00
.endobj lbl_816962E3

# .sdata:0x1C | 0x816962E4 | size: 0x8
.obj lbl_816962E4, global
	.string "ERROR?\n"
.endobj lbl_816962E4

# .sdata:0x24 | 0x816962EC | size: 0x4
.obj gap_11_816962EC_sdata, global
.hidden gap_11_816962EC_sdata
	.4byte 0x00000000
.endobj gap_11_816962EC_sdata

# 0x81698798..0x81698960 | size: 0x1C8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698798 | size: 0x4
.obj WWWSurfaceInit, global
	.skip 0x4
.endobj WWWSurfaceInit

# .sbss:0x4 | 0x8169879C | size: 0x4
.obj WWWSurfaceNewScreen, global
	.skip 0x4
.endobj WWWSurfaceNewScreen

# .sbss:0x8 | 0x816987A0 | size: 0x4
.obj WWWSurfaceDeleteScreen, global
	.skip 0x4
.endobj WWWSurfaceDeleteScreen

# .sbss:0xC | 0x816987A4 | size: 0x4
.obj WWWSurfaceResize, global
	.skip 0x4
.endobj WWWSurfaceResize

# .sbss:0x10 | 0x816987A8 | size: 0x4
.obj WWWSurfaceShutdown, global
	.skip 0x4
.endobj WWWSurfaceShutdown

# .sbss:0x14 | 0x816987AC | size: 0x4
.obj WWWSurfaceSetFlushCallback, global
	.skip 0x4
.endobj WWWSurfaceSetFlushCallback

# .sbss:0x18 | 0x816987B0 | size: 0x4
.obj WWWSurfaceInvalidate, global
	.skip 0x4
.endobj WWWSurfaceInvalidate

# .sbss:0x1C | 0x816987B4 | size: 0x4
.obj WWWSurfaceUpdateScreen, global
	.skip 0x4
.endobj WWWSurfaceUpdateScreen

# .sbss:0x20 | 0x816987B8 | size: 0x4
.obj WWWSurfaceLockArea, global
	.skip 0x4
.endobj WWWSurfaceLockArea

# .sbss:0x24 | 0x816987BC | size: 0x4
.obj WWWSurfaceUnlockArea, global
	.skip 0x4
.endobj WWWSurfaceUnlockArea

# .sbss:0x28 | 0x816987C0 | size: 0x4
.obj WWWSurfaceMouseEvt, global
	.skip 0x4
.endobj WWWSurfaceMouseEvt

# .sbss:0x2C | 0x816987C4 | size: 0x4
.obj WWWSurfaceWheelEvt, global
	.skip 0x4
.endobj WWWSurfaceWheelEvt

# .sbss:0x30 | 0x816987C8 | size: 0x4
.obj WWWSurfaceKeyboardEvt, global
	.skip 0x4
.endobj WWWSurfaceKeyboardEvt

# .sbss:0x34 | 0x816987CC | size: 0x4
.obj WWWSurfaceAddFont, global
	.skip 0x4
.endobj WWWSurfaceAddFont

# .sbss:0x38 | 0x816987D0 | size: 0x4
.obj WWWCreateBrowser, global
	.skip 0x4
.endobj WWWCreateBrowser

# .sbss:0x3C | 0x816987D4 | size: 0x4
.obj WWWTerminateBrowser, global
	.skip 0x4
.endobj WWWTerminateBrowser

# .sbss:0x40 | 0x816987D8 | size: 0x4
.obj WWWRunSlice, global
	.skip 0x4
.endobj WWWRunSlice

# .sbss:0x44 | 0x816987DC | size: 0x4
.obj WWWCreateBrowserWindow, global
	.skip 0x4
.endobj WWWCreateBrowserWindow

# .sbss:0x48 | 0x816987E0 | size: 0x4
.obj WWWCloseBrowserWindow, global
	.skip 0x4
.endobj WWWCloseBrowserWindow

# .sbss:0x4C | 0x816987E4 | size: 0x4
.obj WWWSetBrowserWindowTransparent, global
	.skip 0x4
.endobj WWWSetBrowserWindowTransparent

# .sbss:0x50 | 0x816987E8 | size: 0x4
.obj WWWGetBrowserWindowRect, global
	.skip 0x4
.endobj WWWGetBrowserWindowRect

# .sbss:0x54 | 0x816987EC | size: 0x4
.obj WWWSetBrowserWindowRect, global
	.skip 0x4
.endobj WWWSetBrowserWindowRect

# .sbss:0x58 | 0x816987F0 | size: 0x4
.obj WWWRaiseBrowserWindow, global
	.skip 0x4
.endobj WWWRaiseBrowserWindow

# .sbss:0x5C | 0x816987F4 | size: 0x4
.obj WWWLowerBrowserWindow, global
	.skip 0x4
.endobj WWWLowerBrowserWindow

# .sbss:0x60 | 0x816987F8 | size: 0x4
.obj WWWShowBrowserWindow, global
	.skip 0x4
.endobj WWWShowBrowserWindow

# .sbss:0x64 | 0x816987FC | size: 0x4
.obj WWWHideBrowserWindow, global
	.skip 0x4
.endobj WWWHideBrowserWindow

# .sbss:0x68 | 0x81698800 | size: 0x4
.obj WWWCommitIme, global
	.skip 0x4
.endobj WWWCommitIme

# .sbss:0x6C | 0x81698804 | size: 0x4
.obj WWWUpdateIme, global
	.skip 0x4
.endobj WWWUpdateIme

# .sbss:0x70 | 0x81698808 | size: 0x4
.obj WWWPostUrl, global
	.skip 0x4
.endobj WWWPostUrl

# .sbss:0x74 | 0x8169880C | size: 0x4
.obj WWWOpenUrl, global
	.skip 0x4
.endobj WWWOpenUrl

# .sbss:0x78 | 0x81698810 | size: 0x4
.obj WWWGetHistoryCount, global
	.skip 0x4
.endobj WWWGetHistoryCount

# .sbss:0x7C | 0x81698814 | size: 0x4
.obj WWWNextPage, global
	.skip 0x4
.endobj WWWNextPage

# .sbss:0x80 | 0x81698818 | size: 0x4
.obj WWWPrevPage, global
	.skip 0x4
.endobj WWWPrevPage

# .sbss:0x84 | 0x8169881C | size: 0x4
.obj WWWMoveInHistory, global
	.skip 0x4
.endobj WWWMoveInHistory

# .sbss:0x88 | 0x81698820 | size: 0x4
.obj WWWStop, global
	.skip 0x4
.endobj WWWStop

# .sbss:0x8C | 0x81698824 | size: 0x4
.obj WWWReload, global
	.skip 0x4
.endobj WWWReload

# .sbss:0x90 | 0x81698828 | size: 0x4
.obj WWWReflow, global
	.skip 0x4
.endobj WWWReflow

# .sbss:0x94 | 0x8169882C | size: 0x4
.obj WWWSearch, global
	.skip 0x4
.endobj WWWSearch

# .sbss:0x98 | 0x81698830 | size: 0x4
.obj WWWResetSearch, global
	.skip 0x4
.endobj WWWResetSearch

# .sbss:0x9C | 0x81698834 | size: 0x4
.obj WWWSetFocus, global
	.skip 0x4
.endobj WWWSetFocus

# .sbss:0xA0 | 0x81698838 | size: 0x4
.obj WWWLoseFocus, global
	.skip 0x4
.endobj WWWLoseFocus

# .sbss:0xA4 | 0x8169883C | size: 0x4
.obj WWWHistory, global
	.skip 0x4
.endobj WWWHistory

# .sbss:0xA8 | 0x81698840 | size: 0x4
.obj WWWClearHistory, global
	.skip 0x4
.endobj WWWClearHistory

# .sbss:0xAC | 0x81698844 | size: 0x4
.obj WWWGetTrueZoom, global
	.skip 0x4
.endobj WWWGetTrueZoom

# .sbss:0xB0 | 0x81698848 | size: 0x4
.obj WWWSetTrueZoom, global
	.skip 0x4
.endobj WWWSetTrueZoom

# .sbss:0xB4 | 0x8169884C | size: 0x4
.obj WWWGetZoom, global
	.skip 0x4
.endobj WWWGetZoom

# .sbss:0xB8 | 0x81698850 | size: 0x4
.obj WWWSetZoom, global
	.skip 0x4
.endobj WWWSetZoom

# .sbss:0xBC | 0x81698854 | size: 0x4
.obj WWWGetSecurityMode, global
	.skip 0x4
.endobj WWWGetSecurityMode

# .sbss:0xC0 | 0x81698858 | size: 0x4
.obj WWWGetScroll, global
	.skip 0x4
.endobj WWWGetScroll

# .sbss:0xC4 | 0x8169885C | size: 0x4
.obj WWWSetScroll, global
	.skip 0x4
.endobj WWWSetScroll

# .sbss:0xC8 | 0x81698860 | size: 0x4
.obj WWWSetRenderingMode, global
	.skip 0x4
.endobj WWWSetRenderingMode

# .sbss:0xCC | 0x81698864 | size: 0x4
.obj WWWGetRenderingMode, global
	.skip 0x4
.endobj WWWGetRenderingMode

# .sbss:0xD0 | 0x81698868 | size: 0x4
.obj WWWSetImageMode, global
	.skip 0x4
.endobj WWWSetImageMode

# .sbss:0xD4 | 0x8169886C | size: 0x4
.obj WWWCreateCertificateManager, global
	.skip 0x4
.endobj WWWCreateCertificateManager

# .sbss:0xD8 | 0x81698870 | size: 0x4
.obj WWWCloseCertificateManager, global
	.skip 0x4
.endobj WWWCloseCertificateManager

# .sbss:0xDC | 0x81698874 | size: 0x4
.obj WWWGetNumberOfCertificates, global
	.skip 0x4
.endobj WWWGetNumberOfCertificates

# .sbss:0xE0 | 0x81698878 | size: 0x4
.obj WWWSetLanguageEncoding, global
	.skip 0x4
.endobj WWWSetLanguageEncoding

# .sbss:0xE4 | 0x8169887C | size: 0x4
.obj WWWGetDocumentIcon, global
	.skip 0x4
.endobj WWWGetDocumentIcon

# .sbss:0xE8 | 0x81698880 | size: 0x4
.obj WWWGetDocumentIconUrl, global
	.skip 0x4
.endobj WWWGetDocumentIconUrl

# .sbss:0xEC | 0x81698884 | size: 0x4
.obj WWWClearCookies, global
	.skip 0x4
.endobj WWWClearCookies

# .sbss:0xF0 | 0x81698888 | size: 0x4
.obj WWWGetDocumentSize, global
	.skip 0x4
.endobj WWWGetDocumentSize

# .sbss:0xF4 | 0x8169888C | size: 0x4
.obj WWWSetIntPref, global
	.skip 0x4
.endobj WWWSetIntPref

# .sbss:0xF8 | 0x81698890 | size: 0x4
.obj WWWGetIntPref, global
	.skip 0x4
.endobj WWWGetIntPref

# .sbss:0xFC | 0x81698894 | size: 0x4
.obj WWWSetStringPref, global
	.skip 0x4
.endobj WWWSetStringPref

# .sbss:0x100 | 0x81698898 | size: 0x4
.obj WWWGetStringPref, global
	.skip 0x4
.endobj WWWGetStringPref

# .sbss:0x104 | 0x8169889C | size: 0x4
.obj WWWCommitPrefs, global
	.skip 0x4
.endobj WWWCommitPrefs

# .sbss:0x108 | 0x816988A0 | size: 0x4
.obj WWWSetFocusColors, global
	.skip 0x4
.endobj WWWSetFocusColors

# .sbss:0x10C | 0x816988A4 | size: 0x4
.obj WWWSetScrollbarColors, global
	.skip 0x4
.endobj WWWSetScrollbarColors

# .sbss:0x110 | 0x816988A8 | size: 0x4
.obj WWWSetScrollbarSize, global
	.skip 0x4
.endobj WWWSetScrollbarSize

# .sbss:0x114 | 0x816988AC | size: 0x4
.obj WWWSetWidgetColors, global
	.skip 0x4
.endobj WWWSetWidgetColors

# .sbss:0x118 | 0x816988B0 | size: 0x4
.obj WWWSetDisabledWidgetColors, global
	.skip 0x4
.endobj WWWSetDisabledWidgetColors

# .sbss:0x11C | 0x816988B4 | size: 0x4
.obj WWWSetButtonWidgetColors, global
	.skip 0x4
.endobj WWWSetButtonWidgetColors

# .sbss:0x120 | 0x816988B8 | size: 0x4
.obj WWWSetUastringExtension, global
	.skip 0x4
.endobj WWWSetUastringExtension

# .sbss:0x124 | 0x816988BC | size: 0x4
.obj WWWMarkNextItemInDirection, global
	.skip 0x4
.endobj WWWMarkNextItemInDirection

# .sbss:0x128 | 0x816988C0 | size: 0x4
.obj WWWResetNavigation, global
	.skip 0x4
.endobj WWWResetNavigation

# .sbss:0x12C | 0x816988C4 | size: 0x4
.obj WWWClearHighlight, global
	.skip 0x4
.endobj WWWClearHighlight

# .sbss:0x130 | 0x816988C8 | size: 0x4
.obj WWWSetHighlight, global
	.skip 0x4
.endobj WWWSetHighlight

# .sbss:0x134 | 0x816988CC | size: 0x4
.obj WWWGetActiveLinkType, global
	.skip 0x4
.endobj WWWGetActiveLinkType

# .sbss:0x138 | 0x816988D0 | size: 0x4
.obj WWWGetBrowserAllocationFunctions, global
	.skip 0x4
.endobj WWWGetBrowserAllocationFunctions

# .sbss:0x13C | 0x816988D4 | size: 0x4
.obj WWWShutdownBrowserAllocationFunctions, global
	.skip 0x4
.endobj WWWShutdownBrowserAllocationFunctions

# .sbss:0x140 | 0x816988D8 | size: 0x4
.obj WWWSetAllocationFunctions, global
	.skip 0x4
.endobj WWWSetAllocationFunctions

# .sbss:0x144 | 0x816988DC | size: 0x4
.obj WWWHTTPCreateHttpLib, global
	.skip 0x4
.endobj WWWHTTPCreateHttpLib

# .sbss:0x148 | 0x816988E0 | size: 0x4
.obj WWWHTTPTerminateHttpLib, global
	.skip 0x4
.endobj WWWHTTPTerminateHttpLib

# .sbss:0x14C | 0x816988E4 | size: 0x4
.obj WWWHTTPSessionRunSlice, global
	.skip 0x4
.endobj WWWHTTPSessionRunSlice

# .sbss:0x150 | 0x816988E8 | size: 0x4
.obj WWWHTTPInitSession, global
	.skip 0x4
.endobj WWWHTTPInitSession

# .sbss:0x154 | 0x816988EC | size: 0x4
.obj WWWHTTPDeleteSession, global
	.skip 0x4
.endobj WWWHTTPDeleteSession

# .sbss:0x158 | 0x816988F0 | size: 0x4
.obj WWWHTTPSetSessionHeader, global
	.skip 0x4
.endobj WWWHTTPSetSessionHeader

# .sbss:0x15C | 0x816988F4 | size: 0x4
.obj WWWHTTPRemoveSessionHeader, global
	.skip 0x4
.endobj WWWHTTPRemoveSessionHeader

# .sbss:0x160 | 0x816988F8 | size: 0x4
.obj WWWHTTPRemoveAllSessionHeaders, global
	.skip 0x4
.endobj WWWHTTPRemoveAllSessionHeaders

# .sbss:0x164 | 0x816988FC | size: 0x4
.obj WWWHTTPCreateRequest, global
	.skip 0x4
.endobj WWWHTTPCreateRequest

# .sbss:0x168 | 0x81698900 | size: 0x4
.obj WWWHTTPDeleteRequest, global
	.skip 0x4
.endobj WWWHTTPDeleteRequest

# .sbss:0x16C | 0x81698904 | size: 0x4
.obj WWWHTTPSetRequestHeader, global
	.skip 0x4
.endobj WWWHTTPSetRequestHeader

# .sbss:0x170 | 0x81698908 | size: 0x4
.obj WWWHTTPGetRequestHeader, global
	.skip 0x4
.endobj WWWHTTPGetRequestHeader

# .sbss:0x174 | 0x8169890C | size: 0x4
.obj WWWHTTPRemoveRequestHeader, global
	.skip 0x4
.endobj WWWHTTPRemoveRequestHeader

# .sbss:0x178 | 0x81698910 | size: 0x4
.obj WWWHTTPRemoveAllRequestHeaders, global
	.skip 0x4
.endobj WWWHTTPRemoveAllRequestHeaders

# .sbss:0x17C | 0x81698914 | size: 0x4
.obj WWWHTTPGetResponseHeader, global
	.skip 0x4
.endobj WWWHTTPGetResponseHeader

# .sbss:0x180 | 0x81698918 | size: 0x4
.obj WWWHTTPGetResponseHeaders, global
	.skip 0x4
.endobj WWWHTTPGetResponseHeaders

# .sbss:0x184 | 0x8169891C | size: 0x4
.obj WWWHTTPIssue, global
	.skip 0x4
.endobj WWWHTTPIssue

# .sbss:0x188 | 0x81698920 | size: 0x4
.obj WWWHTTPNbActiveRequests, global
	.skip 0x4
.endobj WWWHTTPNbActiveRequests

# .sbss:0x18C | 0x81698924 | size: 0x4
.obj WWWHTTPPostBodyData, global
	.skip 0x4
.endobj WWWHTTPPostBodyData

# .sbss:0x190 | 0x81698928 | size: 0x4
.obj WWWHTTPSetAuthCredentials, global
	.skip 0x4
.endobj WWWHTTPSetAuthCredentials

# .sbss:0x194 | 0x8169892C | size: 0x4
.obj WWWHTTPRemoveAuthCredentials, global
	.skip 0x4
.endobj WWWHTTPRemoveAuthCredentials

# .sbss:0x198 | 0x81698930 | size: 0x4
.obj WWWHTTPSetProxy, global
	.skip 0x4
.endobj WWWHTTPSetProxy

# .sbss:0x19C | 0x81698934 | size: 0x4
.obj WWWHTTPRemoveProxy, global
	.skip 0x4
.endobj WWWHTTPRemoveProxy

# .sbss:0x1A0 | 0x81698938 | size: 0x4
.obj WWWHTTPEndLoading, global
	.skip 0x4
.endobj WWWHTTPEndLoading

# .sbss:0x1A4 | 0x8169893C | size: 0x4
.obj WWWAddJSPlugin, global
	.skip 0x4
.endobj WWWAddJSPlugin

# .sbss:0x1A8 | 0x81698940 | size: 0x4
.obj WWWAddNSPlugin, global
	.skip 0x4
.endobj WWWAddNSPlugin

# .sbss:0x1AC | 0x81698944 | size: 0x4
.obj WWWProtocolWrite, global
	.skip 0x4
.endobj WWWProtocolWrite

# .sbss:0x1B0 | 0x81698948 | size: 0x4
.obj WWWProtocolSetMimeType, global
	.skip 0x4
.endobj WWWProtocolSetMimeType

# .sbss:0x1B4 | 0x8169894C | size: 0x4
.obj WWWProtocolFinished, global
	.skip 0x4
.endobj WWWProtocolFinished

# .sbss:0x1B8 | 0x81698950 | size: 0x4
.obj WWWProtocolFailed, global
	.skip 0x4
.endobj WWWProtocolFailed

# .sbss:0x1BC | 0x81698954 | size: 0x4
.obj WWWAddProtocol, global
	.skip 0x4
.endobj WWWAddProtocol

# .sbss:0x1C0 | 0x81698958 | size: 0x4
# ext_ead::www::BrowserThread::classInitialized_
.obj classInitialized___Q37ext_ead3www13BrowserThread, global
	.skip 0x4
.endobj classInitialized___Q37ext_ead3www13BrowserThread

# .sbss:0x1C4 | 0x8169895C | size: 0x4
.obj gap_12_8169895C_sbss, global
.hidden gap_12_8169895C_sbss
	.skip 0x4
.endobj gap_12_8169895C_sbss
