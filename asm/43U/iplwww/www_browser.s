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
/* 8136C824 0003AC24  80 ED A9 3C */	lwz r7, ScrollState___Q23www9trasition@sda21(r0)
/* 8136C828 0003AC28  7C 69 1B 78 */	mr r9, r3
/* 8136C82C 0003AC2C  7C 88 23 78 */	mr r8, r4
/* 8136C830 0003AC30  7C A0 2B 78 */	mr r0, r5
/* 8136C834 0003AC34  80 67 00 28 */	lwz r3, 0x28(r7)
/* 8136C838 0003AC38  7C C7 33 78 */	mr r7, r6
/* 8136C83C 0003AC3C  7D 24 4B 78 */	mr r4, r9
/* 8136C840 0003AC40  7D 05 43 78 */	mr r5, r8
/* 8136C844 0003AC44  7C 06 03 78 */	mr r6, r0
/* 8136C848 0003AC48  48 00 00 04 */	b NotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData
.endfn SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData

# .text:0x28 | 0x8136C84C | size: 0xC4
# ext_ead::www::BrowserThread::NotifyCallback_(WWWHandle*, WWWHandlewindow*, WWWEvent, WWWHandleEventData*)
.fn NotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData, global
/* 8136C84C 0003AC4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136C850 0003AC50  7C 08 02 A6 */	mflr r0
/* 8136C854 0003AC54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136C858 0003AC58  39 61 00 20 */	addi r11, r1, 0x20
/* 8136C85C 0003AC5C  48 28 CC 6D */	bl _savegpr_29
/* 8136C860 0003AC60  38 00 00 04 */	li r0, 0x4
/* 8136C864 0003AC64  7C DD 33 78 */	mr r29, r6
/* 8136C868 0003AC68  7C FE 3B 78 */	mr r30, r7
/* 8136C86C 0003AC6C  38 80 00 00 */	li r4, 0x0
/* 8136C870 0003AC70  7C 09 03 A6 */	mtctr r0
.L_8136C874:
/* 8136C874 0003AC74  7C E3 22 14 */	add r7, r3, r4
/* 8136C878 0003AC78  83 E7 06 80 */	lwz r31, 0x680(r7)
/* 8136C87C 0003AC7C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C880 0003AC80  41 82 00 10 */	beq .L_8136C890
/* 8136C884 0003AC84  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 8136C888 0003AC88  7C 00 28 40 */	cmplw r0, r5
/* 8136C88C 0003AC8C  41 82 00 0C */	beq .L_8136C898
.L_8136C890:
/* 8136C890 0003AC90  38 84 00 04 */	addi r4, r4, 0x4
/* 8136C894 0003AC94  42 00 FF E0 */	bdnz .L_8136C874
.L_8136C898:
/* 8136C898 0003AC98  2C 06 00 2C */	cmpwi r6, 0x2c
/* 8136C89C 0003AC9C  40 82 00 10 */	bne .L_8136C8AC
/* 8136C8A0 0003ACA0  80 83 06 A0 */	lwz r4, 0x6a0(r3)
/* 8136C8A4 0003ACA4  7F C3 F3 78 */	mr r3, r30
/* 8136C8A8 0003ACA8  48 00 49 B1 */	bl ReadRequest__Q23www9arcreaderFPC15WWWProtocolDataPQ33www9arcreader12ArcContainer
.L_8136C8AC:
/* 8136C8AC 0003ACAC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C8B0 0003ACB0  41 82 00 44 */	beq .L_8136C8F4
/* 8136C8B4 0003ACB4  7F E3 FB 78 */	mr r3, r31
/* 8136C8B8 0003ACB8  7F A4 EB 78 */	mr r4, r29
/* 8136C8BC 0003ACBC  7F C5 F3 78 */	mr r5, r30
/* 8136C8C0 0003ACC0  48 00 24 F9 */	bl SendNotifyEvent__Q37ext_ead3www13BrowserWindowF8WWWEventP18WWWHandleEventData
/* 8136C8C4 0003ACC4  2C 1D 00 07 */	cmpwi r29, 0x7
/* 8136C8C8 0003ACC8  40 82 00 2C */	bne .L_8136C8F4
/* 8136C8CC 0003ACCC  3C 80 81 64 */	lis r4, lbl_816429F8@ha
/* 8136C8D0 0003ACD0  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136C8D4 0003ACD4  80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8136C8D8 0003ACD8  38 84 29 F8 */	addi r4, r4, lbl_816429F8@l
/* 8136C8DC 0003ACDC  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 8136C8E0 0003ACE0  38 60 00 03 */	li r3, 0x3
/* 8136C8E4 0003ACE4  81 1E 00 08 */	lwz r8, 0x8(r30)
/* 8136C8E8 0003ACE8  81 3E 00 18 */	lwz r9, 0x18(r30)
/* 8136C8EC 0003ACEC  4C C6 31 82 */	crclr cr1eq
/* 8136C8F0 0003ACF0  48 00 1F A5 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136C8F4:
/* 8136C8F4 0003ACF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8136C8F8 0003ACF8  38 60 00 00 */	li r3, 0x0
/* 8136C8FC 0003ACFC  48 28 CC 19 */	bl _restgpr_29
/* 8136C900 0003AD00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136C904 0003AD04  7C 08 03 A6 */	mtlr r0
/* 8136C908 0003AD08  38 21 00 20 */	addi r1, r1, 0x20
/* 8136C90C 0003AD0C  4E 80 00 20 */	blr
.endfn NotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData

# .text:0xEC | 0x8136C910 | size: 0x104
# ext_ead::www::BrowserThread::BrowserThread()
.fn __ct__Q37ext_ead3www13BrowserThreadFv, global
/* 8136C910 0003AD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C914 0003AD14  7C 08 02 A6 */	mflr r0
/* 8136C918 0003AD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C91C 0003AD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C920 0003AD20  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C924 0003AD24  7C 7E 1B 78 */	mr r30, r3
/* 8136C928 0003AD28  48 00 1D D5 */	bl __ct__Q37ext_ead3www9ut_threadFv
/* 8136C92C 0003AD2C  3C 60 81 64 */	lis r3, __vt__Q37ext_ead3www13BrowserThread@ha
/* 8136C930 0003AD30  3C C0 81 64 */	lis r6, "__vt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>"@ha
/* 8136C934 0003AD34  38 63 2C A4 */	addi r3, r3, __vt__Q37ext_ead3www13BrowserThread@l
/* 8136C938 0003AD38  3B FE 03 CC */	addi r31, r30, 0x3cc
/* 8136C93C 0003AD3C  38 C6 2C E8 */	addi r6, r6, "__vt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>"@l
/* 8136C940 0003AD40  90 7E 00 00 */	stw r3, 0x0(r30)
/* 8136C944 0003AD44  38 A0 00 08 */	li r5, 0x8
/* 8136C948 0003AD48  7F E3 FB 78 */	mr r3, r31
/* 8136C94C 0003AD4C  90 DE 03 CC */	stw r6, 0x3cc(r30)
/* 8136C950 0003AD50  38 9F 01 24 */	addi r4, r31, 0x124
/* 8136C954 0003AD54  81 9E 03 CC */	lwz r12, 0x3cc(r30)
/* 8136C958 0003AD58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136C95C 0003AD5C  7D 89 03 A6 */	mtctr r12
/* 8136C960 0003AD60  4E 80 04 21 */	bctrl
/* 8136C964 0003AD64  38 7F 00 24 */	addi r3, r31, 0x24
/* 8136C968 0003AD68  38 80 00 00 */	li r4, 0x0
/* 8136C96C 0003AD6C  38 A0 00 E0 */	li r5, 0xe0
/* 8136C970 0003AD70  4B FC 39 C5 */	bl memset
/* 8136C974 0003AD74  3C 60 81 64 */	lis r3, "__vt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>"@ha
/* 8136C978 0003AD78  3B FE 05 10 */	addi r31, r30, 0x510
/* 8136C97C 0003AD7C  38 63 2C CC */	addi r3, r3, "__vt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>"@l
/* 8136C980 0003AD80  38 A0 00 08 */	li r5, 0x8
/* 8136C984 0003AD84  90 7E 05 10 */	stw r3, 0x510(r30)
/* 8136C988 0003AD88  7F E3 FB 78 */	mr r3, r31
/* 8136C98C 0003AD8C  38 9F 01 44 */	addi r4, r31, 0x144
/* 8136C990 0003AD90  81 9E 05 10 */	lwz r12, 0x510(r30)
/* 8136C994 0003AD94  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136C998 0003AD98  7D 89 03 A6 */	mtctr r12
/* 8136C99C 0003AD9C  4E 80 04 21 */	bctrl
/* 8136C9A0 0003ADA0  38 7F 00 24 */	addi r3, r31, 0x24
/* 8136C9A4 0003ADA4  38 80 00 00 */	li r4, 0x0
/* 8136C9A8 0003ADA8  38 A0 01 00 */	li r5, 0x100
/* 8136C9AC 0003ADAC  4B FC 39 89 */	bl memset
/* 8136C9B0 0003ADB0  38 00 00 00 */	li r0, 0x0
/* 8136C9B4 0003ADB4  90 1E 06 74 */	stw r0, 0x674(r30)
/* 8136C9B8 0003ADB8  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8136C9BC 0003ADBC  90 1E 06 90 */	stw r0, 0x690(r30)
/* 8136C9C0 0003ADC0  90 1E 06 94 */	stw r0, 0x694(r30)
/* 8136C9C4 0003ADC4  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8136C9C8 0003ADC8  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 8136C9CC 0003ADCC  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8136C9D0 0003ADD0  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8136C9D4 0003ADD4  80 0D A9 18 */	lwz r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136C9D8 0003ADD8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136C9DC 0003ADDC  40 82 00 10 */	bne .L_8136C9EC
/* 8136C9E0 0003ADE0  3C 60 81 09 */	lis r3, runSliceMutex___Q37ext_ead3www13BrowserThread@ha
/* 8136C9E4 0003ADE4  38 63 A4 80 */	addi r3, r3, runSliceMutex___Q37ext_ead3www13BrowserThread@l
/* 8136C9E8 0003ADE8  48 1C 51 E9 */	bl fn_81531BD0
.L_8136C9EC:
/* 8136C9EC 0003ADEC  80 8D A9 18 */	lwz r4, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136C9F0 0003ADF0  7F C3 F3 78 */	mr r3, r30
/* 8136C9F4 0003ADF4  38 04 00 01 */	addi r0, r4, 0x1
/* 8136C9F8 0003ADF8  90 0D A9 18 */	stw r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136C9FC 0003ADFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CA00 0003AE00  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CA04 0003AE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CA08 0003AE08  7C 08 03 A6 */	mtlr r0
/* 8136CA0C 0003AE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CA10 0003AE10  4E 80 00 20 */	blr
.endfn __ct__Q37ext_ead3www13BrowserThreadFv

# .text:0x1F0 | 0x8136CA14 | size: 0x40
# ext_ead::www::ut_message_cmd<ext_ead::www::BrowserThread::CmdPacket, 8>::~ut_message_cmd()
.fn "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv", global
/* 8136CA14 0003AE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CA18 0003AE18  7C 08 02 A6 */	mflr r0
/* 8136CA1C 0003AE1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CA20 0003AE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CA24 0003AE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CA28 0003AE28  7C 7F 1B 78 */	mr r31, r3
/* 8136CA2C 0003AE2C  41 82 00 10 */	beq .L_8136CA3C
/* 8136CA30 0003AE30  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136CA34 0003AE34  40 81 00 08 */	ble .L_8136CA3C
/* 8136CA38 0003AE38  48 28 B6 AD */	bl __dl__FPv
.L_8136CA3C:
/* 8136CA3C 0003AE3C  7F E3 FB 78 */	mr r3, r31
/* 8136CA40 0003AE40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CA44 0003AE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CA48 0003AE48  7C 08 03 A6 */	mtlr r0
/* 8136CA4C 0003AE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CA50 0003AE50  4E 80 00 20 */	blr
.endfn "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv"

# .text:0x230 | 0x8136CA54 | size: 0x40
# ext_ead::www::ut_message_cmd<ext_ead::www::ImeData, 8>::~ut_message_cmd()
.fn "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv", global
/* 8136CA54 0003AE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CA58 0003AE58  7C 08 02 A6 */	mflr r0
/* 8136CA5C 0003AE5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CA60 0003AE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CA64 0003AE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CA68 0003AE68  7C 7F 1B 78 */	mr r31, r3
/* 8136CA6C 0003AE6C  41 82 00 10 */	beq .L_8136CA7C
/* 8136CA70 0003AE70  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136CA74 0003AE74  40 81 00 08 */	ble .L_8136CA7C
/* 8136CA78 0003AE78  48 28 B6 6D */	bl __dl__FPv
.L_8136CA7C:
/* 8136CA7C 0003AE7C  7F E3 FB 78 */	mr r3, r31
/* 8136CA80 0003AE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CA84 0003AE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CA88 0003AE88  7C 08 03 A6 */	mtlr r0
/* 8136CA8C 0003AE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CA90 0003AE90  4E 80 00 20 */	blr
.endfn "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv"

# .text:0x270 | 0x8136CA94 | size: 0xD8
# ext_ead::www::BrowserThread::~BrowserThread()
.fn __dt__Q37ext_ead3www13BrowserThreadFv, global
/* 8136CA94 0003AE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CA98 0003AE98  7C 08 02 A6 */	mflr r0
/* 8136CA9C 0003AE9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CAA0 0003AEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CAA4 0003AEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CAA8 0003AEA8  7C 9F 23 78 */	mr r31, r4
/* 8136CAAC 0003AEAC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136CAB0 0003AEB0  7C 7E 1B 78 */	mr r30, r3
/* 8136CAB4 0003AEB4  41 82 00 9C */	beq .L_8136CB50
/* 8136CAB8 0003AEB8  3C 80 81 64 */	lis r4, __vt__Q37ext_ead3www13BrowserThread@ha
/* 8136CABC 0003AEBC  38 84 2C A4 */	addi r4, r4, __vt__Q37ext_ead3www13BrowserThread@l
/* 8136CAC0 0003AEC0  90 83 00 00 */	stw r4, 0x0(r3)
/* 8136CAC4 0003AEC4  80 0D A9 18 */	lwz r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136CAC8 0003AEC8  34 00 FF FF */	subic. r0, r0, 0x1
/* 8136CACC 0003AECC  90 0D A9 18 */	stw r0, classInitialized___Q37ext_ead3www13BrowserThread@sda21(r0)
/* 8136CAD0 0003AED0  40 82 00 4C */	bne .L_8136CB1C
/* 8136CAD4 0003AED4  80 63 06 74 */	lwz r3, 0x674(r3)
/* 8136CAD8 0003AED8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CADC 0003AEDC  41 82 00 10 */	beq .L_8136CAEC
/* 8136CAE0 0003AEE0  48 00 14 7D */	bl freeMem1__Q37ext_ead3www4HeapFPv
/* 8136CAE4 0003AEE4  38 00 00 00 */	li r0, 0x0
/* 8136CAE8 0003AEE8  90 1E 06 74 */	stw r0, 0x674(r30)
.L_8136CAEC:
/* 8136CAEC 0003AEEC  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 8136CAF0 0003AEF0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CAF4 0003AEF4  41 82 00 10 */	beq .L_8136CB04
/* 8136CAF8 0003AEF8  48 00 14 85 */	bl freeMem2__Q37ext_ead3www4HeapFPv
/* 8136CAFC 0003AEFC  38 00 00 00 */	li r0, 0x0
/* 8136CB00 0003AF00  90 1E 06 78 */	stw r0, 0x678(r30)
.L_8136CB04:
/* 8136CB04 0003AF04  80 7E 06 A0 */	lwz r3, 0x6a0(r30)
/* 8136CB08 0003AF08  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CB0C 0003AF0C  41 82 00 10 */	beq .L_8136CB1C
/* 8136CB10 0003AF10  48 00 14 4D */	bl freeMem1__Q37ext_ead3www4HeapFPv
/* 8136CB14 0003AF14  80 7E 06 A4 */	lwz r3, 0x6a4(r30)
/* 8136CB18 0003AF18  48 00 14 45 */	bl freeMem1__Q37ext_ead3www4HeapFPv
.L_8136CB1C:
/* 8136CB1C 0003AF1C  38 7E 05 10 */	addi r3, r30, 0x510
/* 8136CB20 0003AF20  38 80 FF FF */	li r4, -0x1
/* 8136CB24 0003AF24  4B FF FF 31 */	bl "__dt__Q37ext_ead3www40ut_message_cmd<Q37ext_ead3www7ImeData,8>Fv"
/* 8136CB28 0003AF28  38 7E 03 CC */	addi r3, r30, 0x3cc
/* 8136CB2C 0003AF2C  38 80 FF FF */	li r4, -0x1
/* 8136CB30 0003AF30  4B FF FE E5 */	bl "__dt__Q37ext_ead3www57ut_message_cmd<Q47ext_ead3www13BrowserThread9CmdPacket,8>Fv"
/* 8136CB34 0003AF34  7F C3 F3 78 */	mr r3, r30
/* 8136CB38 0003AF38  38 80 00 00 */	li r4, 0x0
/* 8136CB3C 0003AF3C  48 00 1B E5 */	bl __dt__Q37ext_ead3www9ut_threadFv
/* 8136CB40 0003AF40  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136CB44 0003AF44  40 81 00 0C */	ble .L_8136CB50
/* 8136CB48 0003AF48  7F C3 F3 78 */	mr r3, r30
/* 8136CB4C 0003AF4C  48 28 B5 99 */	bl __dl__FPv
.L_8136CB50:
/* 8136CB50 0003AF50  7F C3 F3 78 */	mr r3, r30
/* 8136CB54 0003AF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CB58 0003AF58  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CB5C 0003AF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CB60 0003AF60  7C 08 03 A6 */	mtlr r0
/* 8136CB64 0003AF64  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CB68 0003AF68  4E 80 00 20 */	blr
.endfn __dt__Q37ext_ead3www13BrowserThreadFv

# .text:0x348 | 0x8136CB6C | size: 0x84
# ext_ead::www::BrowserThread::RegisterArcFile(void*)
.fn RegisterArcFile__Q37ext_ead3www13BrowserThreadFPv, global
/* 8136CB6C 0003AF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CB70 0003AF70  7C 08 02 A6 */	mflr r0
/* 8136CB74 0003AF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CB78 0003AF78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CB7C 0003AF7C  7C 9F 23 78 */	mr r31, r4
/* 8136CB80 0003AF80  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136CB84 0003AF84  7C 7E 1B 78 */	mr r30, r3
/* 8136CB88 0003AF88  80 03 06 A0 */	lwz r0, 0x6a0(r3)
/* 8136CB8C 0003AF8C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136CB90 0003AF90  40 82 00 3C */	bne .L_8136CBCC
/* 8136CB94 0003AF94  38 60 00 78 */	li r3, 0x78
/* 8136CB98 0003AF98  38 80 00 04 */	li r4, 0x4
/* 8136CB9C 0003AF9C  48 00 13 AD */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136CBA0 0003AFA0  90 7E 06 A0 */	stw r3, 0x6a0(r30)
/* 8136CBA4 0003AFA4  3C 60 00 02 */	lis r3, 0x2
/* 8136CBA8 0003AFA8  38 80 00 04 */	li r4, 0x4
/* 8136CBAC 0003AFAC  48 00 13 9D */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136CBB0 0003AFB0  80 1E 06 A0 */	lwz r0, 0x6a0(r30)
/* 8136CBB4 0003AFB4  7C 64 1B 78 */	mr r4, r3
/* 8136CBB8 0003AFB8  90 7E 06 A4 */	stw r3, 0x6a4(r30)
/* 8136CBBC 0003AFBC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136CBC0 0003AFC0  41 82 00 0C */	beq .L_8136CBCC
/* 8136CBC4 0003AFC4  7C 03 03 78 */	mr r3, r0
/* 8136CBC8 0003AFC8  48 00 48 09 */	bl __ct__Q33www9arcreader12ArcContainerFPv
.L_8136CBCC:
/* 8136CBCC 0003AFCC  80 7E 06 A0 */	lwz r3, 0x6a0(r30)
/* 8136CBD0 0003AFD0  7F E4 FB 78 */	mr r4, r31
/* 8136CBD4 0003AFD4  48 00 48 25 */	bl RegisterArcFile__Q33www9arcreader12ArcContainerFPCv
/* 8136CBD8 0003AFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CBDC 0003AFDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CBE0 0003AFE0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CBE4 0003AFE4  7C 08 03 A6 */	mtlr r0
/* 8136CBE8 0003AFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CBEC 0003AFEC  4E 80 00 20 */	blr
.endfn RegisterArcFile__Q37ext_ead3www13BrowserThreadFPv

# .text:0x3CC | 0x8136CBF0 | size: 0xC
# ext_ead::www::BrowserThread::RegisterIniFile(void*, unsigned long)
.fn RegisterIniFile__Q37ext_ead3www13BrowserThreadFPvUl, global
/* 8136CBF0 0003AFF0  90 83 06 98 */	stw r4, 0x698(r3)
/* 8136CBF4 0003AFF4  90 A3 06 9C */	stw r5, 0x69c(r3)
/* 8136CBF8 0003AFF8  4E 80 00 20 */	blr
.endfn RegisterIniFile__Q37ext_ead3www13BrowserThreadFPvUl

# .text:0x3D8 | 0x8136CBFC | size: 0x7C
# ext_ead::www::BrowserThread::CreateThread(int, int, void*, unsigned long, int)
.fn CreateThread__Q37ext_ead3www13BrowserThreadFiiPvUli, global
/* 8136CBFC 0003AFFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136CC00 0003B000  7C 08 02 A6 */	mflr r0
/* 8136CC04 0003B004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136CC08 0003B008  39 61 00 20 */	addi r11, r1, 0x20
/* 8136CC0C 0003B00C  48 28 C8 B9 */	bl _savegpr_28
/* 8136CC10 0003B010  90 83 06 90 */	stw r4, 0x690(r3)
/* 8136CC14 0003B014  7C 7C 1B 78 */	mr r28, r3
/* 8136CC18 0003B018  7C DD 33 78 */	mr r29, r6
/* 8136CC1C 0003B01C  7C FE 3B 78 */	mr r30, r7
/* 8136CC20 0003B020  90 A3 06 94 */	stw r5, 0x694(r3)
/* 8136CC24 0003B024  38 83 03 4C */	addi r4, r3, 0x34c
/* 8136CC28 0003B028  7D 1F 43 78 */	mr r31, r8
/* 8136CC2C 0003B02C  38 A0 00 20 */	li r5, 0x20
/* 8136CC30 0003B030  38 63 03 2C */	addi r3, r3, 0x32c
/* 8136CC34 0003B034  48 1C 43 ED */	bl OSInitMessageQueue
/* 8136CC38 0003B038  38 7C 06 80 */	addi r3, r28, 0x680
/* 8136CC3C 0003B03C  38 80 00 00 */	li r4, 0x0
/* 8136CC40 0003B040  38 A0 00 10 */	li r5, 0x10
/* 8136CC44 0003B044  4B FC 36 F1 */	bl memset
/* 8136CC48 0003B048  7F 83 E3 78 */	mr r3, r28
/* 8136CC4C 0003B04C  7F A4 EB 78 */	mr r4, r29
/* 8136CC50 0003B050  7F C5 F3 78 */	mr r5, r30
/* 8136CC54 0003B054  7F E6 FB 78 */	mr r6, r31
/* 8136CC58 0003B058  38 E0 00 00 */	li r7, 0x0
/* 8136CC5C 0003B05C  48 00 1B 05 */	bl Create__Q37ext_ead3www9ut_threadFPvUlib
/* 8136CC60 0003B060  39 61 00 20 */	addi r11, r1, 0x20
/* 8136CC64 0003B064  48 28 C8 AD */	bl _restgpr_28
/* 8136CC68 0003B068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136CC6C 0003B06C  7C 08 03 A6 */	mtlr r0
/* 8136CC70 0003B070  38 21 00 20 */	addi r1, r1, 0x20
/* 8136CC74 0003B074  4E 80 00 20 */	blr
.endfn CreateThread__Q37ext_ead3www13BrowserThreadFiiPvUli

# .text:0x454 | 0x8136CC78 | size: 0x54
# ext_ead::www::BrowserThread::StopThread()
.fn StopThread__Q37ext_ead3www13BrowserThreadFv, global
/* 8136CC78 0003B078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CC7C 0003B07C  7C 08 02 A6 */	mflr r0
/* 8136CC80 0003B080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CC84 0003B084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CC88 0003B088  7C 7F 1B 78 */	mr r31, r3
/* 8136CC8C 0003B08C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136CC90 0003B090  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8136CC94 0003B094  7D 89 03 A6 */	mtctr r12
/* 8136CC98 0003B098  4E 80 04 21 */	bctrl
/* 8136CC9C 0003B09C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CCA0 0003B0A0  40 82 00 18 */	bne .L_8136CCB8
/* 8136CCA4 0003B0A4  3C 80 79 8B */	lis r4, 0x798b
/* 8136CCA8 0003B0A8  38 7F 03 2C */	addi r3, r31, 0x32c
/* 8136CCAC 0003B0AC  38 84 DF E1 */	subi r4, r4, 0x201f
/* 8136CCB0 0003B0B0  38 A0 00 00 */	li r5, 0x0
/* 8136CCB4 0003B0B4  48 1C 43 CD */	bl OSSendMessage
.L_8136CCB8:
/* 8136CCB8 0003B0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CCBC 0003B0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CCC0 0003B0C0  7C 08 03 A6 */	mtlr r0
/* 8136CCC4 0003B0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CCC8 0003B0C8  4E 80 00 20 */	blr
.endfn StopThread__Q37ext_ead3www13BrowserThreadFv

# .text:0x4A8 | 0x8136CCCC | size: 0x64
# ext_ead::www::BrowserThread::IsThreadStopped()
.fn IsThreadStopped__Q37ext_ead3www13BrowserThreadFv, global
/* 8136CCCC 0003B0CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CCD0 0003B0D0  7C 08 02 A6 */	mflr r0
/* 8136CCD4 0003B0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CCD8 0003B0D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136CCDC 0003B0DC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136CCE0 0003B0E0  7C 7E 1B 78 */	mr r30, r3
/* 8136CCE4 0003B0E4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136CCE8 0003B0E8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8136CCEC 0003B0EC  7D 89 03 A6 */	mtctr r12
/* 8136CCF0 0003B0F0  4E 80 04 21 */	bctrl
/* 8136CCF4 0003B0F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CCF8 0003B0F8  7C 7F 1B 78 */	mr r31, r3
/* 8136CCFC 0003B0FC  41 82 00 18 */	beq .L_8136CD14
/* 8136CD00 0003B100  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8136CD04 0003B104  7F C3 F3 78 */	mr r3, r30
/* 8136CD08 0003B108  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136CD0C 0003B10C  7D 89 03 A6 */	mtctr r12
/* 8136CD10 0003B110  4E 80 04 21 */	bctrl
.L_8136CD14:
/* 8136CD14 0003B114  7F E3 FB 78 */	mr r3, r31
/* 8136CD18 0003B118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136CD1C 0003B11C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136CD20 0003B120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CD24 0003B124  7C 08 03 A6 */	mtlr r0
/* 8136CD28 0003B128  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CD2C 0003B12C  4E 80 00 20 */	blr
.endfn IsThreadStopped__Q37ext_ead3www13BrowserThreadFv

# .text:0x50C | 0x8136CD30 | size: 0x6C
# ext_ead::www::BrowserThread::CheckThreadExit_()
.fn CheckThreadExit___Q37ext_ead3www13BrowserThreadFv, global
/* 8136CD30 0003B130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136CD34 0003B134  7C 08 02 A6 */	mflr r0
/* 8136CD38 0003B138  38 A0 00 00 */	li r5, 0x0
/* 8136CD3C 0003B13C  38 63 03 2C */	addi r3, r3, 0x32c
/* 8136CD40 0003B140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136CD44 0003B144  38 00 00 00 */	li r0, 0x0
/* 8136CD48 0003B148  38 81 00 08 */	addi r4, r1, 0x8
/* 8136CD4C 0003B14C  90 01 00 08 */	stw r0, 0x8(r1)
/* 8136CD50 0003B150  48 1C 43 F9 */	bl OSReceiveMessage
/* 8136CD54 0003B154  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136CD58 0003B158  41 82 00 30 */	beq .L_8136CD88
/* 8136CD5C 0003B15C  3C 80 81 64 */	lis r4, lbl_81642A1A@ha
/* 8136CD60 0003B160  38 60 00 03 */	li r3, 0x3
/* 8136CD64 0003B164  38 84 2A 1A */	addi r4, r4, lbl_81642A1A@l
/* 8136CD68 0003B168  4C C6 31 82 */	crclr cr1eq
/* 8136CD6C 0003B16C  48 00 1B 29 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136CD70 0003B170  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8136CD74 0003B174  3C 03 86 76 */	subis r0, r3, 0x798a
/* 8136CD78 0003B178  28 00 DF E1 */	cmplwi r0, 0xdfe1
/* 8136CD7C 0003B17C  40 82 00 0C */	bne .L_8136CD88
/* 8136CD80 0003B180  38 60 00 01 */	li r3, 0x1
/* 8136CD84 0003B184  48 00 00 08 */	b .L_8136CD8C
.L_8136CD88:
/* 8136CD88 0003B188  38 60 00 00 */	li r3, 0x0
.L_8136CD8C:
/* 8136CD8C 0003B18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136CD90 0003B190  7C 08 03 A6 */	mtlr r0
/* 8136CD94 0003B194  38 21 00 10 */	addi r1, r1, 0x10
/* 8136CD98 0003B198  4E 80 00 20 */	blr
.endfn CheckThreadExit___Q37ext_ead3www13BrowserThreadFv

# .text:0x578 | 0x8136CD9C | size: 0x19C
# ext_ead::www::BrowserThread::InitSurface_()
.fn InitSurface___Q37ext_ead3www13BrowserThreadFv, global
/* 8136CD9C 0003B19C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136CDA0 0003B1A0  7C 08 02 A6 */	mflr r0
/* 8136CDA4 0003B1A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8136CDA8 0003B1A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8136CDAC 0003B1AC  48 28 C7 11 */	bl _savegpr_26
/* 8136CDB0 0003B1B0  80 8D A9 3C */	lwz r4, ScrollState___Q23www9trasition@sda21(r0)
/* 8136CDB4 0003B1B4  3F E0 81 64 */	lis r31, lbl_816429C0@ha
/* 8136CDB8 0003B1B8  7C 7A 1B 78 */	mr r26, r3
/* 8136CDBC 0003B1BC  83 C4 00 04 */	lwz r30, 0x4(r4)
/* 8136CDC0 0003B1C0  7C 83 23 78 */	mr r3, r4
/* 8136CDC4 0003B1C4  83 A4 00 08 */	lwz r29, 0x8(r4)
/* 8136CDC8 0003B1C8  3B FF 29 C0 */	addi r31, r31, lbl_816429C0@l
/* 8136CDCC 0003B1CC  48 00 14 99 */	bl ResolveRsoModule__Q37ext_ead3www14SurfaceManagerFv
/* 8136CDD0 0003B1D0  57 DC 10 3A */	slwi r28, r30, 2
/* 8136CDD4 0003B1D4  38 80 00 04 */	li r4, 0x4
/* 8136CDD8 0003B1D8  7F 7C E9 D6 */	mullw r27, r28, r29
/* 8136CDDC 0003B1DC  7F 63 DB 78 */	mr r3, r27
/* 8136CDE0 0003B1E0  48 00 11 69 */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136CDE4 0003B1E4  90 7A 06 74 */	stw r3, 0x674(r26)
/* 8136CDE8 0003B1E8  7C 65 1B 78 */	mr r5, r3
/* 8136CDEC 0003B1EC  7F 66 DB 78 */	mr r6, r27
/* 8136CDF0 0003B1F0  38 9F 00 79 */	addi r4, r31, 0x79
/* 8136CDF4 0003B1F4  38 60 00 03 */	li r3, 0x3
/* 8136CDF8 0003B1F8  4C C6 31 82 */	crclr cr1eq
/* 8136CDFC 0003B1FC  48 00 1A 99 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136CE00 0003B200  3C 60 00 6E */	lis r3, 0x6e
/* 8136CE04 0003B204  38 80 00 20 */	li r4, 0x20
/* 8136CE08 0003B208  48 00 11 61 */	bl allocMem2__Q37ext_ead3www4HeapFUli
/* 8136CE0C 0003B20C  90 7A 06 78 */	stw r3, 0x678(r26)
/* 8136CE10 0003B210  38 80 00 00 */	li r4, 0x0
/* 8136CE14 0003B214  3C A0 00 6E */	lis r5, 0x6e
/* 8136CE18 0003B218  4B FC 35 1D */	bl memset
/* 8136CE1C 0003B21C  80 BA 06 78 */	lwz r5, 0x678(r26)
/* 8136CE20 0003B220  38 9F 00 A9 */	addi r4, r31, 0xa9
/* 8136CE24 0003B224  38 60 00 03 */	li r3, 0x3
/* 8136CE28 0003B228  4C C6 31 82 */	crclr cr1eq
/* 8136CE2C 0003B22C  48 00 1A 69 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136CE30 0003B230  81 8D A8 90 */	lwz r12, WWWGetBrowserAllocationFunctions@sda21(r0)
/* 8136CE34 0003B234  3C 80 00 6E */	lis r4, 0x6e
/* 8136CE38 0003B238  80 7A 06 78 */	lwz r3, 0x678(r26)
/* 8136CE3C 0003B23C  38 AD A9 28 */	li r5, wwwalloc___Q37ext_ead3www4Heap@sda21
/* 8136CE40 0003B240  38 CD A9 2C */	li r6, wwwfree___Q37ext_ead3www4Heap@sda21
/* 8136CE44 0003B244  38 ED A9 30 */	li r7, wwwavail___Q37ext_ead3www4Heap@sda21
/* 8136CE48 0003B248  7D 89 03 A6 */	mtctr r12
/* 8136CE4C 0003B24C  4E 80 04 21 */	bctrl
/* 8136CE50 0003B250  80 8D A9 2C */	lwz r4, wwwfree___Q37ext_ead3www4Heap@sda21(r0)
/* 8136CE54 0003B254  80 6D A9 28 */	lwz r3, wwwalloc___Q37ext_ead3www4Heap@sda21(r0)
/* 8136CE58 0003B258  81 8D A8 98 */	lwz r12, WWWSetAllocationFunctions@sda21(r0)
/* 8136CE5C 0003B25C  7C 87 23 78 */	mr r7, r4
/* 8136CE60 0003B260  7C 66 1B 78 */	mr r6, r3
/* 8136CE64 0003B264  7C 68 1B 78 */	mr r8, r3
/* 8136CE68 0003B268  7C 89 23 78 */	mr r9, r4
/* 8136CE6C 0003B26C  80 AD A9 30 */	lwz r5, wwwavail___Q37ext_ead3www4Heap@sda21(r0)
/* 8136CE70 0003B270  7D 89 03 A6 */	mtctr r12
/* 8136CE74 0003B274  4E 80 04 21 */	bctrl
/* 8136CE78 0003B278  48 1C 8E 21 */	bl fn_81535C98
/* 8136CE7C 0003B27C  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CE80 0003B280  48 1C 8E 19 */	bl fn_81535C98
/* 8136CE84 0003B284  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CE88 0003B288  7F C3 F3 78 */	mr r3, r30
/* 8136CE8C 0003B28C  81 8D A7 58 */	lwz r12, WWWSurfaceInit@sda21(r0)
/* 8136CE90 0003B290  7F A4 EB 78 */	mr r4, r29
/* 8136CE94 0003B294  7F 85 E3 78 */	mr r5, r28
/* 8136CE98 0003B298  80 FA 06 74 */	lwz r7, 0x674(r26)
/* 8136CE9C 0003B29C  38 C0 00 00 */	li r6, 0x0
/* 8136CEA0 0003B2A0  7D 89 03 A6 */	mtctr r12
/* 8136CEA4 0003B2A4  4E 80 04 21 */	bctrl
/* 8136CEA8 0003B2A8  7C 7D 1B 78 */	mr r29, r3
/* 8136CEAC 0003B2AC  38 61 00 08 */	addi r3, r1, 0x8
/* 8136CEB0 0003B2B0  38 9F 00 D1 */	addi r4, r31, 0xd1
/* 8136CEB4 0003B2B4  4C C6 31 82 */	crclr cr1eq
/* 8136CEB8 0003B2B8  48 00 00 81 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136CEBC 0003B2BC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136CEC0 0003B2C0  41 82 00 14 */	beq .L_8136CED4
/* 8136CEC4 0003B2C4  7F A4 EB 78 */	mr r4, r29
/* 8136CEC8 0003B2C8  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8136CECC 0003B2CC  4C C6 31 82 */	crclr cr1eq
/* 8136CED0 0003B2D0  48 1C 17 D1 */	bl OSReport
.L_8136CED4:
/* 8136CED4 0003B2D4  48 1C 8D C5 */	bl fn_81535C98
/* 8136CED8 0003B2D8  81 8D A7 6C */	lwz r12, WWWSurfaceSetFlushCallback@sda21(r0)
/* 8136CEDC 0003B2DC  3C 80 81 37 */	lis r4, FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti@ha
/* 8136CEE0 0003B2E0  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CEE4 0003B2E4  38 64 D9 C4 */	addi r3, r4, FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti@l
/* 8136CEE8 0003B2E8  38 80 00 00 */	li r4, 0x0
/* 8136CEEC 0003B2EC  7D 89 03 A6 */	mtctr r12
/* 8136CEF0 0003B2F0  4E 80 04 21 */	bctrl
/* 8136CEF4 0003B2F4  7C 7D 1B 78 */	mr r29, r3
/* 8136CEF8 0003B2F8  38 61 00 08 */	addi r3, r1, 0x8
/* 8136CEFC 0003B2FC  38 9F 00 F3 */	addi r4, r31, 0xf3
/* 8136CF00 0003B300  4C C6 31 82 */	crclr cr1eq
/* 8136CF04 0003B304  48 00 00 35 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136CF08 0003B308  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136CF0C 0003B30C  41 82 00 14 */	beq .L_8136CF20
/* 8136CF10 0003B310  7F A4 EB 78 */	mr r4, r29
/* 8136CF14 0003B314  38 7F 01 0E */	addi r3, r31, 0x10e
/* 8136CF18 0003B318  4C C6 31 82 */	crclr cr1eq
/* 8136CF1C 0003B31C  48 1C 17 85 */	bl OSReport
.L_8136CF20:
/* 8136CF20 0003B320  39 61 00 30 */	addi r11, r1, 0x30
/* 8136CF24 0003B324  48 28 C5 E5 */	bl _restgpr_26
/* 8136CF28 0003B328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136CF2C 0003B32C  7C 08 03 A6 */	mtlr r0
/* 8136CF30 0003B330  38 21 00 30 */	addi r1, r1, 0x30
/* 8136CF34 0003B334  4E 80 00 20 */	blr
.endfn InitSurface___Q37ext_ead3www13BrowserThreadFv

# .text:0x714 | 0x8136CF38 | size: 0xE0
# ext_ead::www::print::TickTimer::report(const char*, ...)
.fn report__Q47ext_ead3www5print9TickTimerFPCce, global
/* 8136CF38 0003B338  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8136CF3C 0003B33C  7C 08 02 A6 */	mflr r0
/* 8136CF40 0003B340  90 01 00 84 */	stw r0, 0x84(r1)
/* 8136CF44 0003B344  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8136CF48 0003B348  7C 9F 23 78 */	mr r31, r4
/* 8136CF4C 0003B34C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8136CF50 0003B350  7C 7E 1B 78 */	mr r30, r3
/* 8136CF54 0003B354  40 86 00 24 */	bne cr1, .L_8136CF78
/* 8136CF58 0003B358  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8136CF5C 0003B35C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8136CF60 0003B360  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8136CF64 0003B364  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8136CF68 0003B368  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8136CF6C 0003B36C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8136CF70 0003B370  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8136CF74 0003B374  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8136CF78:
/* 8136CF78 0003B378  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136CF7C 0003B37C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8136CF80 0003B380  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8136CF84 0003B384  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8136CF88 0003B388  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8136CF8C 0003B38C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8136CF90 0003B390  91 21 00 20 */	stw r9, 0x20(r1)
/* 8136CF94 0003B394  91 41 00 24 */	stw r10, 0x24(r1)
/* 8136CF98 0003B398  48 1C 8D 01 */	bl fn_81535C98
/* 8136CF9C 0003B39C  90 7E 00 04 */	stw r3, 0x4(r30)
/* 8136CFA0 0003B3A0  38 C1 00 88 */	addi r6, r1, 0x88
/* 8136CFA4 0003B3A4  38 01 00 08 */	addi r0, r1, 0x8
/* 8136CFA8 0003B3A8  3C 60 02 00 */	lis r3, 0x200
/* 8136CFAC 0003B3AC  90 61 00 68 */	stw r3, 0x68(r1)
/* 8136CFB0 0003B3B0  38 A1 00 68 */	addi r5, r1, 0x68
/* 8136CFB4 0003B3B4  7F E4 FB 78 */	mr r4, r31
/* 8136CFB8 0003B3B8  38 60 00 00 */	li r3, 0x0
/* 8136CFBC 0003B3BC  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 8136CFC0 0003B3C0  90 01 00 70 */	stw r0, 0x70(r1)
/* 8136CFC4 0003B3C4  48 00 19 39 */	bl IPLWWWVReport__Q37ext_ead3www5printFiPCcP16__va_list_struct
/* 8136CFC8 0003B3C8  3C 60 80 00 */	lis r3, 0x8000
/* 8136CFCC 0003B3CC  3C 80 81 64 */	lis r4, "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce"@ha
/* 8136CFD0 0003B3D0  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 8136CFD4 0003B3D4  38 00 03 E8 */	li r0, 0x3e8
/* 8136CFD8 0003B3D8  80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8136CFDC 0003B3DC  38 84 2D 04 */	addi r4, r4, "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce"@l
/* 8136CFE0 0003B3E0  54 63 F0 BE */	srwi r3, r3, 2
/* 8136CFE4 0003B3E4  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136CFE8 0003B3E8  7C 03 03 96 */	divwu r0, r3, r0
/* 8136CFEC 0003B3EC  7C A6 28 50 */	subf r5, r6, r5
/* 8136CFF0 0003B3F0  38 60 00 05 */	li r3, 0x5
/* 8136CFF4 0003B3F4  7C A5 03 96 */	divwu r5, r5, r0
/* 8136CFF8 0003B3F8  4C C6 31 82 */	crclr cr1eq
/* 8136CFFC 0003B3FC  48 00 18 99 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136D000 0003B400  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8136D004 0003B404  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8136D008 0003B408  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8136D00C 0003B40C  7C 08 03 A6 */	mtlr r0
/* 8136D010 0003B410  38 21 00 80 */	addi r1, r1, 0x80
/* 8136D014 0003B414  4E 80 00 20 */	blr
.endfn report__Q47ext_ead3www5print9TickTimerFPCce

# .text:0x7F4 | 0x8136D018 | size: 0x258
# ext_ead::www::BrowserThread::Run()
.fn Run__Q37ext_ead3www13BrowserThreadFv, global
/* 8136D018 0003B418  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136D01C 0003B41C  7C 08 02 A6 */	mflr r0
/* 8136D020 0003B420  90 01 00 54 */	stw r0, 0x54(r1)
/* 8136D024 0003B424  39 61 00 50 */	addi r11, r1, 0x50
/* 8136D028 0003B428  48 28 C4 89 */	bl _savegpr_23
/* 8136D02C 0003B42C  3F E0 81 64 */	lis r31, lbl_816429C0@ha
/* 8136D030 0003B430  7C 7E 1B 78 */	mr r30, r3
/* 8136D034 0003B434  3B FF 29 C0 */	addi r31, r31, lbl_816429C0@l
/* 8136D038 0003B438  48 1C 8C 61 */	bl fn_81535C98
/* 8136D03C 0003B43C  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D040 0003B440  7F C3 F3 78 */	mr r3, r30
/* 8136D044 0003B444  4B FF FD 59 */	bl InitSurface___Q37ext_ead3www13BrowserThreadFv
/* 8136D048 0003B448  7F C3 F3 78 */	mr r3, r30
/* 8136D04C 0003B44C  38 9F 01 2D */	addi r4, r31, 0x12d
/* 8136D050 0003B450  48 00 08 FD */	bl InitFonts___Q37ext_ead3www13BrowserThreadFPCc
/* 8136D054 0003B454  38 9F 01 3A */	addi r4, r31, 0x13a
/* 8136D058 0003B458  38 60 00 03 */	li r3, 0x3
/* 8136D05C 0003B45C  4C C6 31 82 */	crclr cr1eq
/* 8136D060 0003B460  48 00 18 35 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136D064 0003B464  48 1C 8C 35 */	bl fn_81535C98
/* 8136D068 0003B468  81 8D A7 90 */	lwz r12, WWWCreateBrowser@sda21(r0)
/* 8136D06C 0003B46C  38 FF 01 54 */	addi r7, r31, 0x154
/* 8136D070 0003B470  38 1F 01 65 */	addi r0, r31, 0x165
/* 8136D074 0003B474  3C 80 81 37 */	lis r4, SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData@ha
/* 8136D078 0003B478  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D07C 0003B47C  38 7E 06 7C */	addi r3, r30, 0x67c
/* 8136D080 0003B480  38 84 C8 24 */	addi r4, r4, SNotifyCallback___Q37ext_ead3www13BrowserThreadFP9WWWHandleP15WWWHandlewindow8WWWEventP18WWWHandleEventData@l
/* 8136D084 0003B484  38 A1 00 10 */	addi r5, r1, 0x10
/* 8136D088 0003B488  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8136D08C 0003B48C  38 DF 01 75 */	addi r6, r31, 0x175
/* 8136D090 0003B490  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8136D094 0003B494  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8136D098 0003B498  90 01 00 20 */	stw r0, 0x20(r1)
/* 8136D09C 0003B49C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8136D0A0 0003B4A0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8136D0A4 0003B4A4  7D 89 03 A6 */	mtctr r12
/* 8136D0A8 0003B4A8  4E 80 04 21 */	bctrl
/* 8136D0AC 0003B4AC  38 61 00 08 */	addi r3, r1, 0x8
/* 8136D0B0 0003B4B0  38 9F 01 87 */	addi r4, r31, 0x187
/* 8136D0B4 0003B4B4  4C C6 31 82 */	crclr cr1eq
/* 8136D0B8 0003B4B8  4B FF FE 81 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136D0BC 0003B4BC  48 00 25 8D */	bl AddJsPlugin__Q23www9trasitionFv
/* 8136D0C0 0003B4C0  48 00 29 81 */	bl AddJsPlugin__Q23www10wiisettingFv
/* 8136D0C4 0003B4C4  48 00 41 2D */	bl AddProtocol__Q23www9arcreaderFv
/* 8136D0C8 0003B4C8  83 0D A9 3C */	lwz r24, ScrollState___Q23www9trasition@sda21(r0)
/* 8136D0CC 0003B4CC  38 60 02 CC */	li r3, 0x2cc
/* 8136D0D0 0003B4D0  38 80 00 04 */	li r4, 0x4
/* 8136D0D4 0003B4D4  48 00 0E 75 */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136D0D8 0003B4D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D0DC 0003B4DC  90 7E 06 80 */	stw r3, 0x680(r30)
/* 8136D0E0 0003B4E0  41 82 00 0C */	beq .L_8136D0EC
/* 8136D0E4 0003B4E4  7F C4 F3 78 */	mr r4, r30
/* 8136D0E8 0003B4E8  48 00 18 19 */	bl __ct__Q37ext_ead3www13BrowserWindowFPQ37ext_ead3www13BrowserThread
.L_8136D0EC:
/* 8136D0EC 0003B4EC  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D0F0 0003B4F0  80 9E 06 90 */	lwz r4, 0x690(r30)
/* 8136D0F4 0003B4F4  80 BE 06 94 */	lwz r5, 0x694(r30)
/* 8136D0F8 0003B4F8  80 D8 00 04 */	lwz r6, 0x4(r24)
/* 8136D0FC 0003B4FC  80 F8 00 08 */	lwz r7, 0x8(r24)
/* 8136D100 0003B500  48 00 19 B5 */	bl CreateWindow__Q37ext_ead3www13BrowserWindowFiiii
/* 8136D104 0003B504  48 00 0E 85 */	bl reportHeap__Q37ext_ead3www4HeapFv
/* 8136D108 0003B508  38 00 00 00 */	li r0, 0x0
/* 8136D10C 0003B50C  3B 80 00 05 */	li r28, 0x5
/* 8136D110 0003B510  7F A0 E1 D6 */	mullw r29, r0, r28
/* 8136D114 0003B514  3F 00 81 09 */	lis r24, runSliceMutex___Q37ext_ead3www13BrowserThread@ha
/* 8136D118 0003B518  3F 40 80 00 */	lis r26, 0x8000
/* 8136D11C 0003B51C  3B 60 03 E8 */	li r27, 0x3e8
.L_8136D120:
/* 8136D120 0003B520  7F C3 F3 78 */	mr r3, r30
/* 8136D124 0003B524  4B FF FC 0D */	bl CheckThreadExit___Q37ext_ead3www13BrowserThreadFv
/* 8136D128 0003B528  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D12C 0003B52C  40 82 00 E8 */	bne .L_8136D214
/* 8136D130 0003B530  7F C3 F3 78 */	mr r3, r30
/* 8136D134 0003B534  48 00 05 E5 */	bl HandleUIEvent___Q37ext_ead3www13BrowserThreadFv
/* 8136D138 0003B538  38 78 A4 80 */	addi r3, r24, runSliceMutex___Q37ext_ead3www13BrowserThread@l
/* 8136D13C 0003B53C  48 1C 4A CD */	bl fn_81531C08
/* 8136D140 0003B540  3A E0 00 00 */	li r23, 0x0
.L_8136D144:
/* 8136D144 0003B544  81 8D A7 98 */	lwz r12, WWWRunSlice@sda21(r0)
/* 8136D148 0003B548  80 7E 06 7C */	lwz r3, 0x67c(r30)
/* 8136D14C 0003B54C  7D 89 03 A6 */	mtctr r12
/* 8136D150 0003B550  4E 80 04 21 */	bctrl
/* 8136D154 0003B554  7C 79 1B 78 */	mr r25, r3
/* 8136D158 0003B558  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D15C 0003B55C  3A F7 00 01 */	addi r23, r23, 0x1
/* 8136D160 0003B560  48 00 1C 5D */	bl ExecuteEvent__Q37ext_ead3www13BrowserWindowFv
/* 8136D164 0003B564  2C 19 00 00 */	cmpwi r25, 0x0
/* 8136D168 0003B568  41 82 FF DC */	beq .L_8136D144
/* 8136D16C 0003B56C  2C 17 00 0A */	cmpwi r23, 0xa
/* 8136D170 0003B570  40 81 00 18 */	ble .L_8136D188
/* 8136D174 0003B574  7E E5 BB 78 */	mr r5, r23
/* 8136D178 0003B578  38 9F 01 98 */	addi r4, r31, 0x198
/* 8136D17C 0003B57C  38 60 00 03 */	li r3, 0x3
/* 8136D180 0003B580  4C C6 31 82 */	crclr cr1eq
/* 8136D184 0003B584  48 00 17 11 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136D188:
/* 8136D188 0003B588  38 78 A4 80 */	addi r3, r24, runSliceMutex___Q37ext_ead3www13BrowserThread@l
/* 8136D18C 0003B58C  48 1C 4B 59 */	bl fn_81531CE4
/* 8136D190 0003B590  81 8D A7 74 */	lwz r12, WWWSurfaceUpdateScreen@sda21(r0)
/* 8136D194 0003B594  38 60 00 00 */	li r3, 0x0
/* 8136D198 0003B598  7D 89 03 A6 */	mtctr r12
/* 8136D19C 0003B59C  4E 80 04 21 */	bctrl
/* 8136D1A0 0003B5A0  81 8D A7 74 */	lwz r12, WWWSurfaceUpdateScreen@sda21(r0)
/* 8136D1A4 0003B5A4  38 60 00 00 */	li r3, 0x0
/* 8136D1A8 0003B5A8  7D 89 03 A6 */	mtctr r12
/* 8136D1AC 0003B5AC  4E 80 04 21 */	bctrl
/* 8136D1B0 0003B5B0  81 8D A7 74 */	lwz r12, WWWSurfaceUpdateScreen@sda21(r0)
/* 8136D1B4 0003B5B4  38 60 00 00 */	li r3, 0x0
/* 8136D1B8 0003B5B8  7D 89 03 A6 */	mtctr r12
/* 8136D1BC 0003B5BC  4E 80 04 21 */	bctrl
/* 8136D1C0 0003B5C0  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D1C4 0003B5C4  48 00 1B F9 */	bl ExecuteEvent__Q37ext_ead3www13BrowserWindowFv
/* 8136D1C8 0003B5C8  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D1CC 0003B5CC  48 00 1B F5 */	bl UpdateTexture__Q37ext_ead3www13BrowserWindowFv
/* 8136D1D0 0003B5D0  80 7E 03 10 */	lwz r3, 0x310(r30)
/* 8136D1D4 0003B5D4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136D1D8 0003B5D8  3C 03 21 53 */	addis r0, r3, 0x2153
/* 8136D1DC 0003B5DC  28 00 BA BE */	cmplwi r0, 0xbabe
/* 8136D1E0 0003B5E0  41 82 00 14 */	beq .L_8136D1F4
/* 8136D1E4 0003B5E4  38 9F 01 BD */	addi r4, r31, 0x1bd
/* 8136D1E8 0003B5E8  38 60 00 03 */	li r3, 0x3
/* 8136D1EC 0003B5EC  4C C6 31 82 */	crclr cr1eq
/* 8136D1F0 0003B5F0  48 00 16 A5 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136D1F4:
/* 8136D1F4 0003B5F4  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8136D1F8 0003B5F8  54 00 F0 BE */	srwi r0, r0, 2
/* 8136D1FC 0003B5FC  7C 60 DB 96 */	divwu r3, r0, r27
/* 8136D200 0003B600  7C 03 E0 16 */	mulhwu r0, r3, r28
/* 8136D204 0003B604  1C 83 00 05 */	mulli r4, r3, 0x5
/* 8136D208 0003B608  7C 60 EA 14 */	add r3, r0, r29
/* 8136D20C 0003B60C  48 1C 89 C1 */	bl OSSleepTicks
/* 8136D210 0003B610  4B FF FF 10 */	b .L_8136D120
.L_8136D214:
/* 8136D214 0003B614  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D218 0003B618  48 00 1A BD */	bl CloseWindow__Q37ext_ead3www13BrowserWindowFv
/* 8136D21C 0003B61C  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D220 0003B620  38 80 FF FF */	li r4, -0x1
/* 8136D224 0003B624  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136D228 0003B628  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136D22C 0003B62C  7D 89 03 A6 */	mtctr r12
/* 8136D230 0003B630  4E 80 04 21 */	bctrl
/* 8136D234 0003B634  80 7E 06 80 */	lwz r3, 0x680(r30)
/* 8136D238 0003B638  48 00 0D 25 */	bl freeMem1__Q37ext_ead3www4HeapFPv
/* 8136D23C 0003B63C  38 00 00 00 */	li r0, 0x0
/* 8136D240 0003B640  80 7E 06 7C */	lwz r3, 0x67c(r30)
/* 8136D244 0003B644  90 1E 06 80 */	stw r0, 0x680(r30)
/* 8136D248 0003B648  81 8D A7 94 */	lwz r12, WWWTerminateBrowser@sda21(r0)
/* 8136D24C 0003B64C  7D 89 03 A6 */	mtctr r12
/* 8136D250 0003B650  4E 80 04 21 */	bctrl
/* 8136D254 0003B654  39 61 00 50 */	addi r11, r1, 0x50
/* 8136D258 0003B658  7F C3 F3 78 */	mr r3, r30
/* 8136D25C 0003B65C  48 28 C2 A1 */	bl _restgpr_23
/* 8136D260 0003B660  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136D264 0003B664  7C 08 03 A6 */	mtlr r0
/* 8136D268 0003B668  38 21 00 50 */	addi r1, r1, 0x50
/* 8136D26C 0003B66C  4E 80 00 20 */	blr
.endfn Run__Q37ext_ead3www13BrowserThreadFv

# .text:0xA4C | 0x8136D270 | size: 0x44
# ext_ead::www::BrowserThread::SendKeyboardEvent_(unsigned long, unsigned long, unsigned long, WWWKeySym)
.fn SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym, global
/* 8136D270 0003B670  7C A0 20 39 */	and. r0, r5, r4
/* 8136D274 0003B674  41 82 00 1C */	beq .L_8136D290
/* 8136D278 0003B678  81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D27C 0003B67C  7C E4 3B 78 */	mr r4, r7
/* 8136D280 0003B680  38 60 00 00 */	li r3, 0x0
/* 8136D284 0003B684  38 A0 00 00 */	li r5, 0x0
/* 8136D288 0003B688  7D 89 03 A6 */	mtctr r12
/* 8136D28C 0003B68C  4E 80 04 20 */	bctr
.L_8136D290:
/* 8136D290 0003B690  7C C0 20 39 */	and. r0, r6, r4
/* 8136D294 0003B694  4D 82 00 20 */	beqlr
/* 8136D298 0003B698  81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D29C 0003B69C  7C E4 3B 78 */	mr r4, r7
/* 8136D2A0 0003B6A0  38 60 00 01 */	li r3, 0x1
/* 8136D2A4 0003B6A4  38 A0 00 00 */	li r5, 0x0
/* 8136D2A8 0003B6A8  7D 89 03 A6 */	mtctr r12
/* 8136D2AC 0003B6AC  4E 80 04 20 */	bctr
/* 8136D2B0 0003B6B0  4E 80 00 20 */	blr
.endfn SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym

# .text:0xA90 | 0x8136D2B4 | size: 0xF4
# ext_ead::www::BrowserThread::GetKeyboardSym_(unsigned long)
.fn GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl, global
/* 8136D2B4 0003B6B4  3C 60 00 02 */	lis r3, 0x2
/* 8136D2B8 0003B6B8  38 03 00 01 */	addi r0, r3, 0x1
/* 8136D2BC 0003B6BC  7C 04 00 00 */	cmpw r4, r0
/* 8136D2C0 0003B6C0  41 82 00 B0 */	beq .L_8136D370
/* 8136D2C4 0003B6C4  40 80 00 44 */	bge .L_8136D308
/* 8136D2C8 0003B6C8  2C 04 02 00 */	cmpwi r4, 0x200
/* 8136D2CC 0003B6CC  41 82 00 BC */	beq .L_8136D388
/* 8136D2D0 0003B6D0  40 80 00 24 */	bge .L_8136D2F4
/* 8136D2D4 0003B6D4  2C 04 01 00 */	cmpwi r4, 0x100
/* 8136D2D8 0003B6D8  41 82 00 BC */	beq .L_8136D394
/* 8136D2DC 0003B6DC  40 80 00 C4 */	bge .L_8136D3A0
/* 8136D2E0 0003B6E0  3C 60 80 00 */	lis r3, 0x8000
/* 8136D2E4 0003B6E4  38 03 00 02 */	addi r0, r3, 0x2
/* 8136D2E8 0003B6E8  7C 04 00 00 */	cmpw r4, r0
/* 8136D2EC 0003B6EC  41 82 00 90 */	beq .L_8136D37C
/* 8136D2F0 0003B6F0  48 00 00 B0 */	b .L_8136D3A0
.L_8136D2F4:
/* 8136D2F4 0003B6F4  3C 60 00 01 */	lis r3, 0x1
/* 8136D2F8 0003B6F8  38 03 00 08 */	addi r0, r3, 0x8
/* 8136D2FC 0003B6FC  7C 04 00 00 */	cmpw r4, r0
/* 8136D300 0003B700  41 82 00 5C */	beq .L_8136D35C
/* 8136D304 0003B704  48 00 00 9C */	b .L_8136D3A0
.L_8136D308:
/* 8136D308 0003B708  3C 60 30 00 */	lis r3, 0x3000
/* 8136D30C 0003B70C  38 03 10 00 */	addi r0, r3, 0x1000
/* 8136D310 0003B710  7C 04 00 00 */	cmpw r4, r0
/* 8136D314 0003B714  41 82 00 3C */	beq .L_8136D350
/* 8136D318 0003B718  40 80 00 18 */	bge .L_8136D330
/* 8136D31C 0003B71C  3C 60 06 00 */	lis r3, 0x600
/* 8136D320 0003B720  38 03 00 10 */	addi r0, r3, 0x10
/* 8136D324 0003B724  7C 04 00 00 */	cmpw r4, r0
/* 8136D328 0003B728  41 82 00 1C */	beq .L_8136D344
/* 8136D32C 0003B72C  48 00 00 74 */	b .L_8136D3A0
.L_8136D330:
/* 8136D330 0003B730  3C 60 40 00 */	lis r3, 0x4000
/* 8136D334 0003B734  38 03 00 04 */	addi r0, r3, 0x4
/* 8136D338 0003B738  7C 04 00 00 */	cmpw r4, r0
/* 8136D33C 0003B73C  41 82 00 28 */	beq .L_8136D364
/* 8136D340 0003B740  48 00 00 60 */	b .L_8136D3A0
.L_8136D344:
/* 8136D344 0003B744  3C 60 00 01 */	lis r3, 0x1
/* 8136D348 0003B748  38 63 E0 2B */	subi r3, r3, 0x1fd5
/* 8136D34C 0003B74C  4E 80 00 20 */	blr
.L_8136D350:
/* 8136D350 0003B750  3C 60 00 01 */	lis r3, 0x1
/* 8136D354 0003B754  38 63 E0 01 */	subi r3, r3, 0x1fff
/* 8136D358 0003B758  4E 80 00 20 */	blr
.L_8136D35C:
/* 8136D35C 0003B75C  38 63 E0 3E */	subi r3, r3, 0x1fc2
/* 8136D360 0003B760  4E 80 00 20 */	blr
.L_8136D364:
/* 8136D364 0003B764  3C 60 00 01 */	lis r3, 0x1
/* 8136D368 0003B768  38 63 E0 3F */	subi r3, r3, 0x1fc1
/* 8136D36C 0003B76C  4E 80 00 20 */	blr
.L_8136D370:
/* 8136D370 0003B770  3C 60 00 01 */	lis r3, 0x1
/* 8136D374 0003B774  38 63 E0 3D */	subi r3, r3, 0x1fc3
/* 8136D378 0003B778  4E 80 00 20 */	blr
.L_8136D37C:
/* 8136D37C 0003B77C  3C 60 00 01 */	lis r3, 0x1
/* 8136D380 0003B780  38 63 E0 3C */	subi r3, r3, 0x1fc4
/* 8136D384 0003B784  4E 80 00 20 */	blr
.L_8136D388:
/* 8136D388 0003B788  3C 60 00 01 */	lis r3, 0x1
/* 8136D38C 0003B78C  38 63 E0 44 */	subi r3, r3, 0x1fbc
/* 8136D390 0003B790  4E 80 00 20 */	blr
.L_8136D394:
/* 8136D394 0003B794  3C 60 00 01 */	lis r3, 0x1
/* 8136D398 0003B798  38 63 E0 45 */	subi r3, r3, 0x1fbb
/* 8136D39C 0003B79C  4E 80 00 20 */	blr
.L_8136D3A0:
/* 8136D3A0 0003B7A0  38 60 00 00 */	li r3, 0x0
/* 8136D3A4 0003B7A4  4E 80 00 20 */	blr
.endfn GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl

# .text:0xB84 | 0x8136D3A8 | size: 0x224
# ext_ead::www::BrowserThread::ExecDpdEvent_(const ext_ead::www::BrowserThread::CmdPacket&)
.fn ExecDpdEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136D3A8 0003B7A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136D3AC 0003B7AC  7C 08 02 A6 */	mflr r0
/* 8136D3B0 0003B7B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8136D3B4 0003B7B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8136D3B8 0003B7B8  48 28 C1 0D */	bl _savegpr_28
/* 8136D3BC 0003B7BC  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8136D3C0 0003B7C0  7C 9C 23 78 */	mr r28, r4
/* 8136D3C4 0003B7C4  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8136D3C8 0003B7C8  3B C0 00 00 */	li r30, 0x0
/* 8136D3CC 0003B7CC  FC 20 08 1E */	fctiwz f1, f1
/* 8136D3D0 0003B7D0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8136D3D4 0003B7D4  FC 00 00 1E */	fctiwz f0, f0
/* 8136D3D8 0003B7D8  54 60 02 D6 */	rlwinm r0, r3, 0, 11, 11
/* 8136D3DC 0003B7DC  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 8136D3E0 0003B7E0  50 60 05 29 */	rlwimi. r0, r3, 0, 20, 20
/* 8136D3E4 0003B7E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8136D3E8 0003B7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136D3EC 0003B7EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8136D3F0 0003B7F0  41 82 00 78 */	beq .L_8136D468
/* 8136D3F4 0003B7F4  81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D3F8 0003B7F8  7F E4 FB 78 */	mr r4, r31
/* 8136D3FC 0003B7FC  7F A5 EB 78 */	mr r5, r29
/* 8136D400 0003B800  38 60 00 00 */	li r3, 0x0
/* 8136D404 0003B804  38 C0 00 04 */	li r6, 0x4
/* 8136D408 0003B808  38 E0 00 00 */	li r7, 0x0
/* 8136D40C 0003B80C  39 00 00 00 */	li r8, 0x0
/* 8136D410 0003B810  7D 89 03 A6 */	mtctr r12
/* 8136D414 0003B814  4E 80 04 21 */	bctrl
/* 8136D418 0003B818  81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D41C 0003B81C  7F E4 FB 78 */	mr r4, r31
/* 8136D420 0003B820  7F A5 EB 78 */	mr r5, r29
/* 8136D424 0003B824  38 60 00 01 */	li r3, 0x1
/* 8136D428 0003B828  38 C0 00 01 */	li r6, 0x1
/* 8136D42C 0003B82C  38 E0 00 01 */	li r7, 0x1
/* 8136D430 0003B830  39 00 00 00 */	li r8, 0x0
/* 8136D434 0003B834  7D 89 03 A6 */	mtctr r12
/* 8136D438 0003B838  4E 80 04 21 */	bctrl
/* 8136D43C 0003B83C  81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D440 0003B840  7F E4 FB 78 */	mr r4, r31
/* 8136D444 0003B844  7F A5 EB 78 */	mr r5, r29
/* 8136D448 0003B848  38 60 00 02 */	li r3, 0x2
/* 8136D44C 0003B84C  38 C0 00 01 */	li r6, 0x1
/* 8136D450 0003B850  38 E0 00 01 */	li r7, 0x1
/* 8136D454 0003B854  39 00 00 00 */	li r8, 0x0
/* 8136D458 0003B858  7D 89 03 A6 */	mtctr r12
/* 8136D45C 0003B85C  4E 80 04 21 */	bctrl
/* 8136D460 0003B860  3B C0 00 01 */	li r30, 0x1
/* 8136D464 0003B864  48 00 01 24 */	b .L_8136D588
.L_8136D468:
/* 8136D468 0003B868  80 64 00 18 */	lwz r3, 0x18(r4)
/* 8136D46C 0003B86C  54 60 02 D6 */	rlwinm r0, r3, 0, 11, 11
/* 8136D470 0003B870  50 60 05 29 */	rlwimi. r0, r3, 0, 20, 20
/* 8136D474 0003B874  41 82 00 50 */	beq .L_8136D4C4
/* 8136D478 0003B878  81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D47C 0003B87C  7F E4 FB 78 */	mr r4, r31
/* 8136D480 0003B880  7F A5 EB 78 */	mr r5, r29
/* 8136D484 0003B884  38 60 00 00 */	li r3, 0x0
/* 8136D488 0003B888  38 C0 00 04 */	li r6, 0x4
/* 8136D48C 0003B88C  38 E0 00 00 */	li r7, 0x0
/* 8136D490 0003B890  39 00 00 00 */	li r8, 0x0
/* 8136D494 0003B894  7D 89 03 A6 */	mtctr r12
/* 8136D498 0003B898  4E 80 04 21 */	bctrl
/* 8136D49C 0003B89C  81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D4A0 0003B8A0  7F E4 FB 78 */	mr r4, r31
/* 8136D4A4 0003B8A4  7F A5 EB 78 */	mr r5, r29
/* 8136D4A8 0003B8A8  38 60 00 02 */	li r3, 0x2
/* 8136D4AC 0003B8AC  38 C0 00 01 */	li r6, 0x1
/* 8136D4B0 0003B8B0  38 E0 00 01 */	li r7, 0x1
/* 8136D4B4 0003B8B4  39 00 00 00 */	li r8, 0x0
/* 8136D4B8 0003B8B8  7D 89 03 A6 */	mtctr r12
/* 8136D4BC 0003B8BC  4E 80 04 21 */	bctrl
/* 8136D4C0 0003B8C0  48 00 00 C8 */	b .L_8136D588
.L_8136D4C4:
/* 8136D4C4 0003B8C4  81 8D A7 80 */	lwz r12, WWWSurfaceMouseEvt@sda21(r0)
/* 8136D4C8 0003B8C8  7F E4 FB 78 */	mr r4, r31
/* 8136D4CC 0003B8CC  7F A5 EB 78 */	mr r5, r29
/* 8136D4D0 0003B8D0  38 60 00 00 */	li r3, 0x0
/* 8136D4D4 0003B8D4  38 C0 00 04 */	li r6, 0x4
/* 8136D4D8 0003B8D8  38 E0 00 00 */	li r7, 0x0
/* 8136D4DC 0003B8DC  39 00 00 00 */	li r8, 0x0
/* 8136D4E0 0003B8E0  7D 89 03 A6 */	mtctr r12
/* 8136D4E4 0003B8E4  4E 80 04 21 */	bctrl
/* 8136D4E8 0003B8E8  80 8D A9 48 */	lwz r4, lbl_81698988@sda21(r0)
/* 8136D4EC 0003B8EC  2C 04 00 04 */	cmpwi r4, 0x4
/* 8136D4F0 0003B8F0  41 80 00 4C */	blt .L_8136D53C
/* 8136D4F4 0003B8F4  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8136D4F8 0003B8F8  54 60 00 86 */	rlwinm r0, r3, 0, 2, 3
/* 8136D4FC 0003B8FC  50 60 04 E7 */	rlwimi. r0, r3, 0, 19, 19
/* 8136D500 0003B900  41 82 00 3C */	beq .L_8136D53C
/* 8136D504 0003B904  81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D508 0003B908  3F E0 00 01 */	lis r31, 0x1
/* 8136D50C 0003B90C  38 9F E0 2B */	subi r4, r31, 0x1fd5
/* 8136D510 0003B910  38 60 00 01 */	li r3, 0x1
/* 8136D514 0003B914  38 A0 00 00 */	li r5, 0x0
/* 8136D518 0003B918  7D 89 03 A6 */	mtctr r12
/* 8136D51C 0003B91C  4E 80 04 21 */	bctrl
/* 8136D520 0003B920  81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D524 0003B924  38 9F E0 2B */	subi r4, r31, 0x1fd5
/* 8136D528 0003B928  38 60 00 00 */	li r3, 0x0
/* 8136D52C 0003B92C  38 A0 00 00 */	li r5, 0x0
/* 8136D530 0003B930  7D 89 03 A6 */	mtctr r12
/* 8136D534 0003B934  4E 80 04 21 */	bctrl
/* 8136D538 0003B938  48 00 00 50 */	b .L_8136D588
.L_8136D53C:
/* 8136D53C 0003B93C  2C 04 00 04 */	cmpwi r4, 0x4
/* 8136D540 0003B940  41 80 00 48 */	blt .L_8136D588
/* 8136D544 0003B944  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8136D548 0003B948  54 60 01 4C */	rlwinm r0, r3, 0, 5, 6
/* 8136D54C 0003B94C  50 60 06 F7 */	rlwimi. r0, r3, 0, 27, 27
/* 8136D550 0003B950  41 82 00 38 */	beq .L_8136D588
/* 8136D554 0003B954  81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D558 0003B958  3F E0 00 01 */	lis r31, 0x1
/* 8136D55C 0003B95C  38 9F E0 2C */	subi r4, r31, 0x1fd4
/* 8136D560 0003B960  38 60 00 01 */	li r3, 0x1
/* 8136D564 0003B964  38 A0 00 00 */	li r5, 0x0
/* 8136D568 0003B968  7D 89 03 A6 */	mtctr r12
/* 8136D56C 0003B96C  4E 80 04 21 */	bctrl
/* 8136D570 0003B970  81 8D A7 88 */	lwz r12, WWWSurfaceKeyboardEvt@sda21(r0)
/* 8136D574 0003B974  38 9F E0 2C */	subi r4, r31, 0x1fd4
/* 8136D578 0003B978  38 60 00 00 */	li r3, 0x0
/* 8136D57C 0003B97C  38 A0 00 00 */	li r5, 0x0
/* 8136D580 0003B980  7D 89 03 A6 */	mtctr r12
/* 8136D584 0003B984  4E 80 04 21 */	bctrl
.L_8136D588:
/* 8136D588 0003B988  80 0D 82 D0 */	lwz r0, lbl_81696310@sda21(r0)
/* 8136D58C 0003B98C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D590 0003B990  41 82 00 20 */	beq .L_8136D5B0
/* 8136D594 0003B994  80 6D A9 48 */	lwz r3, lbl_81698988@sda21(r0)
/* 8136D598 0003B998  38 03 00 01 */	addi r0, r3, 0x1
/* 8136D59C 0003B99C  2C 00 00 04 */	cmpwi r0, 0x4
/* 8136D5A0 0003B9A0  90 0D A9 48 */	stw r0, lbl_81698988@sda21(r0)
/* 8136D5A4 0003B9A4  40 81 00 0C */	ble .L_8136D5B0
/* 8136D5A8 0003B9A8  38 00 00 04 */	li r0, 0x4
/* 8136D5AC 0003B9AC  90 0D A9 48 */	stw r0, lbl_81698988@sda21(r0)
.L_8136D5B0:
/* 8136D5B0 0003B9B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8136D5B4 0003B9B4  7F C3 F3 78 */	mr r3, r30
/* 8136D5B8 0003B9B8  48 28 BF 59 */	bl _restgpr_28
/* 8136D5BC 0003B9BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136D5C0 0003B9C0  7C 08 03 A6 */	mtlr r0
/* 8136D5C4 0003B9C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8136D5C8 0003B9C8  4E 80 00 20 */	blr
.endfn ExecDpdEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0xDA8 | 0x8136D5CC | size: 0x14C
# ext_ead::www::BrowserThread::ExecSpacialEvent_(const ext_ead::www::BrowserThread::CmdPacket&)
.fn ExecSpacialEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136D5CC 0003B9CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136D5D0 0003B9D0  7C 08 02 A6 */	mflr r0
/* 8136D5D4 0003B9D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136D5D8 0003B9D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8136D5DC 0003B9DC  48 28 BE ED */	bl _savegpr_29
/* 8136D5E0 0003B9E0  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8136D5E4 0003B9E4  7C 7D 1B 78 */	mr r29, r3
/* 8136D5E8 0003B9E8  7C 9E 23 78 */	mr r30, r4
/* 8136D5EC 0003B9EC  54 A0 01 4C */	rlwinm r0, r5, 0, 5, 6
/* 8136D5F0 0003B9F0  50 A0 06 F7 */	rlwimi. r0, r5, 0, 27, 27
/* 8136D5F4 0003B9F4  41 82 00 0C */	beq .L_8136D600
/* 8136D5F8 0003B9F8  80 63 06 80 */	lwz r3, 0x680(r3)
/* 8136D5FC 0003B9FC  48 00 17 75 */	bl PrevPage__Q37ext_ead3www13BrowserWindowFv
.L_8136D600:
/* 8136D600 0003BA00  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8136D604 0003BA04  54 60 00 86 */	rlwinm r0, r3, 0, 2, 3
/* 8136D608 0003BA08  50 60 04 E7 */	rlwimi. r0, r3, 0, 19, 19
/* 8136D60C 0003BA0C  41 82 00 0C */	beq .L_8136D618
/* 8136D610 0003BA10  80 7D 06 80 */	lwz r3, 0x680(r29)
/* 8136D614 0003BA14  48 00 17 6D */	bl GotoHome__Q37ext_ead3www13BrowserWindowFv
.L_8136D618:
/* 8136D618 0003BA18  3F E0 00 01 */	lis r31, 0x1
/* 8136D61C 0003BA1C  7F A3 EB 78 */	mr r3, r29
/* 8136D620 0003BA20  38 9F 00 08 */	addi r4, r31, 0x8
/* 8136D624 0003BA24  4B FF FC 91 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D628 0003BA28  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D62C 0003BA2C  7C 67 1B 78 */	mr r7, r3
/* 8136D630 0003BA30  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D634 0003BA34  7F A3 EB 78 */	mr r3, r29
/* 8136D638 0003BA38  38 9F 00 08 */	addi r4, r31, 0x8
/* 8136D63C 0003BA3C  4B FF FC 35 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D640 0003BA40  3F E0 40 00 */	lis r31, 0x4000
/* 8136D644 0003BA44  7F A3 EB 78 */	mr r3, r29
/* 8136D648 0003BA48  38 9F 00 04 */	addi r4, r31, 0x4
/* 8136D64C 0003BA4C  4B FF FC 69 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D650 0003BA50  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D654 0003BA54  7C 67 1B 78 */	mr r7, r3
/* 8136D658 0003BA58  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D65C 0003BA5C  7F A3 EB 78 */	mr r3, r29
/* 8136D660 0003BA60  38 9F 00 04 */	addi r4, r31, 0x4
/* 8136D664 0003BA64  4B FF FC 0D */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D668 0003BA68  3F E0 00 02 */	lis r31, 0x2
/* 8136D66C 0003BA6C  7F A3 EB 78 */	mr r3, r29
/* 8136D670 0003BA70  38 9F 00 01 */	addi r4, r31, 0x1
/* 8136D674 0003BA74  4B FF FC 41 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D678 0003BA78  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D67C 0003BA7C  7C 67 1B 78 */	mr r7, r3
/* 8136D680 0003BA80  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D684 0003BA84  7F A3 EB 78 */	mr r3, r29
/* 8136D688 0003BA88  38 9F 00 01 */	addi r4, r31, 0x1
/* 8136D68C 0003BA8C  4B FF FB E5 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D690 0003BA90  3F E0 80 00 */	lis r31, 0x8000
/* 8136D694 0003BA94  7F A3 EB 78 */	mr r3, r29
/* 8136D698 0003BA98  38 9F 00 02 */	addi r4, r31, 0x2
/* 8136D69C 0003BA9C  4B FF FC 19 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D6A0 0003BAA0  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D6A4 0003BAA4  7C 67 1B 78 */	mr r7, r3
/* 8136D6A8 0003BAA8  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D6AC 0003BAAC  7F A3 EB 78 */	mr r3, r29
/* 8136D6B0 0003BAB0  38 9F 00 02 */	addi r4, r31, 0x2
/* 8136D6B4 0003BAB4  4B FF FB BD */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D6B8 0003BAB8  7F A3 EB 78 */	mr r3, r29
/* 8136D6BC 0003BABC  38 80 02 00 */	li r4, 0x200
/* 8136D6C0 0003BAC0  4B FF FB F5 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D6C4 0003BAC4  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D6C8 0003BAC8  7C 67 1B 78 */	mr r7, r3
/* 8136D6CC 0003BACC  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D6D0 0003BAD0  7F A3 EB 78 */	mr r3, r29
/* 8136D6D4 0003BAD4  38 80 02 00 */	li r4, 0x200
/* 8136D6D8 0003BAD8  4B FF FB 99 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D6DC 0003BADC  7F A3 EB 78 */	mr r3, r29
/* 8136D6E0 0003BAE0  38 80 01 00 */	li r4, 0x100
/* 8136D6E4 0003BAE4  4B FF FB D1 */	bl GetKeyboardSym___Q37ext_ead3www13BrowserThreadFUl
/* 8136D6E8 0003BAE8  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8136D6EC 0003BAEC  7C 67 1B 78 */	mr r7, r3
/* 8136D6F0 0003BAF0  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8136D6F4 0003BAF4  7F A3 EB 78 */	mr r3, r29
/* 8136D6F8 0003BAF8  38 80 01 00 */	li r4, 0x100
/* 8136D6FC 0003BAFC  4B FF FB 75 */	bl SendKeyboardEvent___Q37ext_ead3www13BrowserThreadFUlUlUl9WWWKeySym
/* 8136D700 0003BB00  39 61 00 20 */	addi r11, r1, 0x20
/* 8136D704 0003BB04  48 28 BE 11 */	bl _restgpr_29
/* 8136D708 0003BB08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136D70C 0003BB0C  7C 08 03 A6 */	mtlr r0
/* 8136D710 0003BB10  38 21 00 20 */	addi r1, r1, 0x20
/* 8136D714 0003BB14  4E 80 00 20 */	blr
.endfn ExecSpacialEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0xEF4 | 0x8136D718 | size: 0x190
# ext_ead::www::BrowserThread::HandleUIEvent_()
.fn HandleUIEvent___Q37ext_ead3www13BrowserThreadFv, global
/* 8136D718 0003BB18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136D71C 0003BB1C  7C 08 02 A6 */	mflr r0
/* 8136D720 0003BB20  90 01 00 44 */	stw r0, 0x44(r1)
/* 8136D724 0003BB24  39 61 00 40 */	addi r11, r1, 0x40
/* 8136D728 0003BB28  48 28 BD 9D */	bl _savegpr_28
/* 8136D72C 0003BB2C  7C 7C 1B 78 */	mr r28, r3
/* 8136D730 0003BB30  3F E0 81 64 */	lis r31, lbl_81642BA0@ha
/* 8136D734 0003BB34  48 00 00 DC */	b .L_8136D810
.L_8136D738:
/* 8136D738 0003BB38  80 7C 06 80 */	lwz r3, 0x680(r28)
/* 8136D73C 0003BB3C  38 80 00 00 */	li r4, 0x0
/* 8136D740 0003BB40  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 8136D744 0003BB44  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D748 0003BB48  41 82 00 14 */	beq .L_8136D75C
/* 8136D74C 0003BB4C  88 03 02 C7 */	lbz r0, 0x2c7(r3)
/* 8136D750 0003BB50  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D754 0003BB54  41 82 00 08 */	beq .L_8136D75C
/* 8136D758 0003BB58  38 80 00 01 */	li r4, 0x1
.L_8136D75C:
/* 8136D75C 0003BB5C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136D760 0003BB60  40 82 00 B0 */	bne .L_8136D810
/* 8136D764 0003BB64  88 03 02 C4 */	lbz r0, 0x2c4(r3)
/* 8136D768 0003BB68  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D76C 0003BB6C  40 82 00 A4 */	bne .L_8136D810
/* 8136D770 0003BB70  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8136D774 0003BB74  3B A0 00 00 */	li r29, 0x0
/* 8136D778 0003BB78  2C 05 00 02 */	cmpwi r5, 0x2
/* 8136D77C 0003BB7C  41 82 00 4C */	beq .L_8136D7C8
/* 8136D780 0003BB80  40 80 00 14 */	bge .L_8136D794
/* 8136D784 0003BB84  2C 05 00 00 */	cmpwi r5, 0x0
/* 8136D788 0003BB88  41 82 00 1C */	beq .L_8136D7A4
/* 8136D78C 0003BB8C  40 80 00 2C */	bge .L_8136D7B8
/* 8136D790 0003BB90  48 00 00 68 */	b .L_8136D7F8
.L_8136D794:
/* 8136D794 0003BB94  2C 05 00 04 */	cmpwi r5, 0x4
/* 8136D798 0003BB98  41 82 00 50 */	beq .L_8136D7E8
/* 8136D79C 0003BB9C  40 80 00 5C */	bge .L_8136D7F8
/* 8136D7A0 0003BBA0  48 00 00 38 */	b .L_8136D7D8
.L_8136D7A4:
/* 8136D7A4 0003BBA4  7F 83 E3 78 */	mr r3, r28
/* 8136D7A8 0003BBA8  38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7AC 0003BBAC  4B FF FB FD */	bl ExecDpdEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7B0 0003BBB0  7C 7D 1B 78 */	mr r29, r3
/* 8136D7B4 0003BBB4  48 00 00 54 */	b .L_8136D808
.L_8136D7B8:
/* 8136D7B8 0003BBB8  7F 83 E3 78 */	mr r3, r28
/* 8136D7BC 0003BBBC  38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7C0 0003BBC0  4B FF FE 0D */	bl ExecSpacialEvent___Q37ext_ead3www13BrowserThreadFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7C4 0003BBC4  48 00 00 44 */	b .L_8136D808
.L_8136D7C8:
/* 8136D7C8 0003BBC8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8136D7CC 0003BBCC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8136D7D0 0003BBD0  48 00 1E 15 */	bl SetWindowSize__Q37ext_ead3www13BrowserWindowFii
/* 8136D7D4 0003BBD4  48 00 00 34 */	b .L_8136D808
.L_8136D7D8:
/* 8136D7D8 0003BBD8  7F 83 E3 78 */	mr r3, r28
/* 8136D7DC 0003BBDC  38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7E0 0003BBE0  48 00 05 C1 */	bl CommitImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7E4 0003BBE4  48 00 00 24 */	b .L_8136D808
.L_8136D7E8:
/* 8136D7E8 0003BBE8  7F 83 E3 78 */	mr r3, r28
/* 8136D7EC 0003BBEC  38 81 00 0C */	addi r4, r1, 0xc
/* 8136D7F0 0003BBF0  48 00 05 FD */	bl UpdateImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D7F4 0003BBF4  48 00 00 14 */	b .L_8136D808
.L_8136D7F8:
/* 8136D7F8 0003BBF8  38 9F 2B A0 */	addi r4, r31, lbl_81642BA0@l
/* 8136D7FC 0003BBFC  38 60 00 03 */	li r3, 0x3
/* 8136D800 0003BC00  4C C6 31 82 */	crclr cr1eq
/* 8136D804 0003BC04  48 00 10 91 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136D808:
/* 8136D808 0003BC08  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136D80C 0003BC0C  40 82 00 84 */	bne .L_8136D890
.L_8136D810:
/* 8136D810 0003BC10  3B C0 00 00 */	li r30, 0x0
/* 8136D814 0003BC14  48 1C 30 71 */	bl OSDisableInterrupts
/* 8136D818 0003BC18  81 9C 03 CC */	lwz r12, 0x3cc(r28)
/* 8136D81C 0003BC1C  7C 7D 1B 78 */	mr r29, r3
/* 8136D820 0003BC20  38 7C 03 CC */	addi r3, r28, 0x3cc
/* 8136D824 0003BC24  38 81 00 08 */	addi r4, r1, 0x8
/* 8136D828 0003BC28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136D82C 0003BC2C  38 A0 00 00 */	li r5, 0x0
/* 8136D830 0003BC30  7D 89 03 A6 */	mtctr r12
/* 8136D834 0003BC34  4E 80 04 21 */	bctrl
/* 8136D838 0003BC38  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D83C 0003BC3C  41 82 00 44 */	beq .L_8136D880
/* 8136D840 0003BC40  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136D844 0003BC44  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8136D848 0003BC48  3C 03 00 01 */	addis r0, r3, 0x1
/* 8136D84C 0003BC4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8136D850 0003BC50  41 82 00 10 */	beq .L_8136D860
/* 8136D854 0003BC54  38 6D 82 A4 */	li r3, lbl_816962E4@sda21
/* 8136D858 0003BC58  4C C6 31 82 */	crclr cr1eq
/* 8136D85C 0003BC5C  48 1C 0E 45 */	bl OSReport
.L_8136D860:
/* 8136D860 0003BC60  38 61 00 0C */	addi r3, r1, 0xc
/* 8136D864 0003BC64  38 9E 00 04 */	addi r4, r30, 0x4
/* 8136D868 0003BC68  48 00 05 D5 */	bl __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D86C 0003BC6C  7F C3 F3 78 */	mr r3, r30
/* 8136D870 0003BC70  38 80 00 00 */	li r4, 0x0
/* 8136D874 0003BC74  38 A0 00 20 */	li r5, 0x20
/* 8136D878 0003BC78  4B FC 2A BD */	bl memset
/* 8136D87C 0003BC7C  3B C0 00 01 */	li r30, 0x1
.L_8136D880:
/* 8136D880 0003BC80  7F A3 EB 78 */	mr r3, r29
/* 8136D884 0003BC84  48 1C 30 29 */	bl OSRestoreInterrupts
/* 8136D888 0003BC88  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136D88C 0003BC8C  40 82 FE AC */	bne .L_8136D738
.L_8136D890:
/* 8136D890 0003BC90  39 61 00 40 */	addi r11, r1, 0x40
/* 8136D894 0003BC94  48 28 BC 7D */	bl _restgpr_28
/* 8136D898 0003BC98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136D89C 0003BC9C  7C 08 03 A6 */	mtlr r0
/* 8136D8A0 0003BCA0  38 21 00 40 */	addi r1, r1, 0x40
/* 8136D8A4 0003BCA4  4E 80 00 20 */	blr
.endfn HandleUIEvent___Q37ext_ead3www13BrowserThreadFv

# .text:0x1084 | 0x8136D8A8 | size: 0xA4
# ext_ead::www::BrowserThread::SendUIEvent(ext_ead::www::BrowserThread::CmdPacket*)
.fn SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136D8A8 0003BCA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136D8AC 0003BCAC  7C 08 02 A6 */	mflr r0
/* 8136D8B0 0003BCB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136D8B4 0003BCB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8136D8B8 0003BCB8  48 28 BC 0D */	bl _savegpr_28
/* 8136D8BC 0003BCBC  7C 7C 1B 78 */	mr r28, r3
/* 8136D8C0 0003BCC0  7C 9D 23 78 */	mr r29, r4
/* 8136D8C4 0003BCC4  48 1C 2F C1 */	bl OSDisableInterrupts
/* 8136D8C8 0003BCC8  38 00 00 08 */	li r0, 0x8
/* 8136D8CC 0003BCCC  7C 7E 1B 78 */	mr r30, r3
/* 8136D8D0 0003BCD0  3B FC 03 F0 */	addi r31, r28, 0x3f0
/* 8136D8D4 0003BCD4  38 60 00 00 */	li r3, 0x0
/* 8136D8D8 0003BCD8  7C 09 03 A6 */	mtctr r0
.L_8136D8DC:
/* 8136D8DC 0003BCDC  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8136D8E0 0003BCE0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D8E4 0003BCE4  41 82 00 10 */	beq .L_8136D8F4
/* 8136D8E8 0003BCE8  38 63 00 01 */	addi r3, r3, 0x1
/* 8136D8EC 0003BCEC  3B FF 00 20 */	addi r31, r31, 0x20
/* 8136D8F0 0003BCF0  42 00 FF EC */	bdnz .L_8136D8DC
.L_8136D8F4:
/* 8136D8F4 0003BCF4  2C 03 00 08 */	cmpwi r3, 0x8
/* 8136D8F8 0003BCF8  41 82 00 34 */	beq .L_8136D92C
/* 8136D8FC 0003BCFC  38 00 FF FF */	li r0, -0x1
/* 8136D900 0003BD00  7F A4 EB 78 */	mr r4, r29
/* 8136D904 0003BD04  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136D908 0003BD08  38 7F 00 04 */	addi r3, r31, 0x4
/* 8136D90C 0003BD0C  48 00 05 31 */	bl __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136D910 0003BD10  81 9C 03 CC */	lwz r12, 0x3cc(r28)
/* 8136D914 0003BD14  38 7C 03 CC */	addi r3, r28, 0x3cc
/* 8136D918 0003BD18  7F E4 FB 78 */	mr r4, r31
/* 8136D91C 0003BD1C  38 A0 00 00 */	li r5, 0x0
/* 8136D920 0003BD20  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136D924 0003BD24  7D 89 03 A6 */	mtctr r12
/* 8136D928 0003BD28  4E 80 04 21 */	bctrl
.L_8136D92C:
/* 8136D92C 0003BD2C  7F C3 F3 78 */	mr r3, r30
/* 8136D930 0003BD30  48 1C 2F 7D */	bl OSRestoreInterrupts
/* 8136D934 0003BD34  39 61 00 20 */	addi r11, r1, 0x20
/* 8136D938 0003BD38  48 28 BB D9 */	bl _restgpr_28
/* 8136D93C 0003BD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136D940 0003BD40  7C 08 03 A6 */	mtlr r0
/* 8136D944 0003BD44  38 21 00 20 */	addi r1, r1, 0x20
/* 8136D948 0003BD48  4E 80 00 20 */	blr
.endfn SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x1128 | 0x8136D94C | size: 0x54
# ext_ead::www::BrowserThread::InitFonts_(const char*)
.fn InitFonts___Q37ext_ead3www13BrowserThreadFPCc, global
/* 8136D94C 0003BD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136D950 0003BD50  7C 08 02 A6 */	mflr r0
/* 8136D954 0003BD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136D958 0003BD58  48 1C 83 41 */	bl fn_81535C98
/* 8136D95C 0003BD5C  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D960 0003BD60  48 1C 83 39 */	bl fn_81535C98
/* 8136D964 0003BD64  81 8D A7 8C */	lwz r12, WWWSurfaceAddFont@sda21(r0)
/* 8136D968 0003BD68  3C 80 81 64 */	lis r4, lbl_81642BD1@ha
/* 8136D96C 0003BD6C  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136D970 0003BD70  38 64 2B D1 */	addi r3, r4, lbl_81642BD1@l
/* 8136D974 0003BD74  7D 89 03 A6 */	mtctr r12
/* 8136D978 0003BD78  4E 80 04 21 */	bctrl
/* 8136D97C 0003BD7C  3C 80 81 64 */	lis r4, lbl_81642BE1@ha
/* 8136D980 0003BD80  38 61 00 08 */	addi r3, r1, 0x8
/* 8136D984 0003BD84  38 84 2B E1 */	addi r4, r4, lbl_81642BE1@l
/* 8136D988 0003BD88  4C C6 31 82 */	crclr cr1eq
/* 8136D98C 0003BD8C  4B FF F5 AD */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136D990 0003BD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136D994 0003BD94  7C 08 03 A6 */	mtlr r0
/* 8136D998 0003BD98  38 21 00 10 */	addi r1, r1, 0x10
/* 8136D99C 0003BD9C  4E 80 00 20 */	blr
.endfn InitFonts___Q37ext_ead3www13BrowserThreadFPCc

# .text:0x117C | 0x8136D9A0 | size: 0x24
# ext_ead::www::BrowserThread::GetTextureBuffer(int, WWWRect**)
.fn GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect, global
/* 8136D9A0 0003BDA0  80 63 06 80 */	lwz r3, 0x680(r3)
/* 8136D9A4 0003BDA4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136D9A8 0003BDA8  40 82 00 0C */	bne .L_8136D9B4
/* 8136D9AC 0003BDAC  38 60 00 00 */	li r3, 0x0
/* 8136D9B0 0003BDB0  4E 80 00 20 */	blr
.L_8136D9B4:
/* 8136D9B4 0003BDB4  7C A6 2B 78 */	mr r6, r5
/* 8136D9B8 0003BDB8  38 A0 00 00 */	li r5, 0x0
/* 8136D9BC 0003BDBC  48 00 1B 8C */	b GetTextureBuffer__Q37ext_ead3www13BrowserWindowFibPP7WWWRect
/* 8136D9C0 0003BDC0  4E 80 00 20 */	blr
.endfn GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect

# .text:0x11A0 | 0x8136D9C4 | size: 0xA8
# ext_ead::www::BrowserThread::FlushCallback(WWWRect*, int)
.fn FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti, global
/* 8136D9C4 0003BDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136D9C8 0003BDC8  7C 08 02 A6 */	mflr r0
/* 8136D9CC 0003BDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136D9D0 0003BDD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136D9D4 0003BDD4  80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136D9D8 0003BDD8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8136D9DC 0003BDDC  83 E3 06 80 */	lwz r31, 0x680(r3)
/* 8136D9E0 0003BDE0  88 1F 02 C4 */	lbz r0, 0x2c4(r31)
/* 8136D9E4 0003BDE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D9E8 0003BDE8  40 82 00 70 */	bne .L_8136DA58
/* 8136D9EC 0003BDEC  88 1F 02 C5 */	lbz r0, 0x2c5(r31)
/* 8136D9F0 0003BDF0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136D9F4 0003BDF4  40 82 00 64 */	bne .L_8136DA58
/* 8136D9F8 0003BDF8  48 1C 2E 8D */	bl OSDisableInterrupts
/* 8136D9FC 0003BDFC  88 1F 02 C6 */	lbz r0, 0x2c6(r31)
/* 8136DA00 0003BE00  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136DA04 0003BE04  40 82 00 48 */	bne .L_8136DA4C
/* 8136DA08 0003BE08  88 1F 02 C8 */	lbz r0, 0x2c8(r31)
/* 8136DA0C 0003BE0C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136DA10 0003BE10  40 82 00 34 */	bne .L_8136DA44
/* 8136DA14 0003BE14  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 8136DA18 0003BE18  38 80 00 03 */	li r4, 0x3
/* 8136DA1C 0003BE1C  90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 8136DA20 0003BE20  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 8136DA24 0003BE24  54 00 10 3A */	slwi r0, r0, 2
/* 8136DA28 0003BE28  7C BF 02 14 */	add r5, r31, r0
/* 8136DA2C 0003BE2C  80 A5 02 B4 */	lwz r5, 0x2b4(r5)
/* 8136DA30 0003BE30  38 A5 00 01 */	addi r5, r5, 0x1
/* 8136DA34 0003BE34  7C 05 23 D6 */	divw r0, r5, r4
/* 8136DA38 0003BE38  7C 00 21 D6 */	mullw r0, r0, r4
/* 8136DA3C 0003BE3C  7C 00 28 50 */	subf r0, r0, r5
/* 8136DA40 0003BE40  90 1F 02 BC */	stw r0, 0x2bc(r31)
.L_8136DA44:
/* 8136DA44 0003BE44  38 00 00 01 */	li r0, 0x1
/* 8136DA48 0003BE48  98 1F 02 C8 */	stb r0, 0x2c8(r31)
.L_8136DA4C:
/* 8136DA4C 0003BE4C  38 00 00 01 */	li r0, 0x1
/* 8136DA50 0003BE50  98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 8136DA54 0003BE54  48 1C 2E 59 */	bl OSRestoreInterrupts
.L_8136DA58:
/* 8136DA58 0003BE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DA5C 0003BE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136DA60 0003BE60  7C 08 03 A6 */	mtlr r0
/* 8136DA64 0003BE64  38 21 00 10 */	addi r1, r1, 0x10
/* 8136DA68 0003BE68  4E 80 00 20 */	blr
.endfn FlushCallback__Q37ext_ead3www13BrowserThreadFP7WWWRecti

# .text:0x1248 | 0x8136DA6C | size: 0xD4
# ext_ead::www::BrowserThread::SendEventFromWindow(ext_ead::www::ImeData*)
.fn SendEventFromWindow__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData, global
/* 8136DA6C 0003BE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136DA70 0003BE70  7C 08 02 A6 */	mflr r0
/* 8136DA74 0003BE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136DA78 0003BE78  39 61 00 20 */	addi r11, r1, 0x20
/* 8136DA7C 0003BE7C  48 28 BA 45 */	bl _savegpr_27
/* 8136DA80 0003BE80  7C 7B 1B 78 */	mr r27, r3
/* 8136DA84 0003BE84  7C 9C 23 78 */	mr r28, r4
/* 8136DA88 0003BE88  3B C0 00 00 */	li r30, 0x0
/* 8136DA8C 0003BE8C  48 1C 2D F9 */	bl OSDisableInterrupts
/* 8136DA90 0003BE90  38 00 00 08 */	li r0, 0x8
/* 8136DA94 0003BE94  7C 7D 1B 78 */	mr r29, r3
/* 8136DA98 0003BE98  3B FB 05 34 */	addi r31, r27, 0x534
/* 8136DA9C 0003BE9C  38 60 00 00 */	li r3, 0x0
/* 8136DAA0 0003BEA0  7C 09 03 A6 */	mtctr r0
.L_8136DAA4:
/* 8136DAA4 0003BEA4  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8136DAA8 0003BEA8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136DAAC 0003BEAC  41 82 00 10 */	beq .L_8136DABC
/* 8136DAB0 0003BEB0  38 63 00 01 */	addi r3, r3, 0x1
/* 8136DAB4 0003BEB4  3B FF 00 24 */	addi r31, r31, 0x24
/* 8136DAB8 0003BEB8  42 00 FF EC */	bdnz .L_8136DAA4
.L_8136DABC:
/* 8136DABC 0003BEBC  2C 03 00 08 */	cmpwi r3, 0x8
/* 8136DAC0 0003BEC0  41 82 00 38 */	beq .L_8136DAF8
/* 8136DAC4 0003BEC4  38 00 FF FF */	li r0, -0x1
/* 8136DAC8 0003BEC8  7F 84 E3 78 */	mr r4, r28
/* 8136DACC 0003BECC  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136DAD0 0003BED0  38 7F 00 04 */	addi r3, r31, 0x4
/* 8136DAD4 0003BED4  48 00 03 95 */	bl __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData
/* 8136DAD8 0003BED8  81 9B 05 10 */	lwz r12, 0x510(r27)
/* 8136DADC 0003BEDC  38 7B 05 10 */	addi r3, r27, 0x510
/* 8136DAE0 0003BEE0  7F E4 FB 78 */	mr r4, r31
/* 8136DAE4 0003BEE4  38 A0 00 00 */	li r5, 0x0
/* 8136DAE8 0003BEE8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136DAEC 0003BEEC  7D 89 03 A6 */	mtctr r12
/* 8136DAF0 0003BEF0  4E 80 04 21 */	bctrl
/* 8136DAF4 0003BEF4  3B C0 00 01 */	li r30, 0x1
.L_8136DAF8:
/* 8136DAF8 0003BEF8  7F A3 EB 78 */	mr r3, r29
/* 8136DAFC 0003BEFC  48 1C 2D B1 */	bl OSRestoreInterrupts
/* 8136DB00 0003BF00  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136DB04 0003BF04  40 82 00 20 */	bne .L_8136DB24
/* 8136DB08 0003BF08  3C 80 81 64 */	lis r4, lbl_81642BF9@ha
/* 8136DB0C 0003BF0C  38 60 00 03 */	li r3, 0x3
/* 8136DB10 0003BF10  38 84 2B F9 */	addi r4, r4, lbl_81642BF9@l
/* 8136DB14 0003BF14  4C C6 31 82 */	crclr cr1eq
/* 8136DB18 0003BF18  48 00 0D 7D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DB1C 0003BF1C  38 60 00 00 */	li r3, 0x0
/* 8136DB20 0003BF20  48 00 00 08 */	b .L_8136DB28
.L_8136DB24:
/* 8136DB24 0003BF24  38 60 00 01 */	li r3, 0x1
.L_8136DB28:
/* 8136DB28 0003BF28  39 61 00 20 */	addi r11, r1, 0x20
/* 8136DB2C 0003BF2C  48 28 B9 E1 */	bl _restgpr_27
/* 8136DB30 0003BF30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136DB34 0003BF34  7C 08 03 A6 */	mtlr r0
/* 8136DB38 0003BF38  38 21 00 20 */	addi r1, r1, 0x20
/* 8136DB3C 0003BF3C  4E 80 00 20 */	blr
.endfn SendEventFromWindow__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData

# .text:0x131C | 0x8136DB40 | size: 0xB0
# ext_ead::www::BrowserThread::ReceiveWindowEvent(ext_ead::www::ImeData*)
.fn ReceiveWindowEvent__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData, global
/* 8136DB40 0003BF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136DB44 0003BF44  7C 08 02 A6 */	mflr r0
/* 8136DB48 0003BF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136DB4C 0003BF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8136DB50 0003BF50  48 28 B9 75 */	bl _savegpr_28
/* 8136DB54 0003BF54  7C 7C 1B 78 */	mr r28, r3
/* 8136DB58 0003BF58  7C 9D 23 78 */	mr r29, r4
/* 8136DB5C 0003BF5C  3B E0 00 00 */	li r31, 0x0
/* 8136DB60 0003BF60  48 1C 2D 25 */	bl OSDisableInterrupts
/* 8136DB64 0003BF64  81 9C 05 10 */	lwz r12, 0x510(r28)
/* 8136DB68 0003BF68  7C 7E 1B 78 */	mr r30, r3
/* 8136DB6C 0003BF6C  38 7C 05 10 */	addi r3, r28, 0x510
/* 8136DB70 0003BF70  38 81 00 08 */	addi r4, r1, 0x8
/* 8136DB74 0003BF74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136DB78 0003BF78  38 A0 00 00 */	li r5, 0x0
/* 8136DB7C 0003BF7C  7D 89 03 A6 */	mtctr r12
/* 8136DB80 0003BF80  4E 80 04 21 */	bctrl
/* 8136DB84 0003BF84  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DB88 0003BF88  41 82 00 44 */	beq .L_8136DBCC
/* 8136DB8C 0003BF8C  83 E1 00 08 */	lwz r31, 0x8(r1)
/* 8136DB90 0003BF90  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136DB94 0003BF94  3C 03 00 01 */	addis r0, r3, 0x1
/* 8136DB98 0003BF98  28 00 FF FF */	cmplwi r0, 0xffff
/* 8136DB9C 0003BF9C  41 82 00 10 */	beq .L_8136DBAC
/* 8136DBA0 0003BFA0  38 6D 82 A4 */	li r3, lbl_816962E4@sda21
/* 8136DBA4 0003BFA4  4C C6 31 82 */	crclr cr1eq
/* 8136DBA8 0003BFA8  48 1C 0A F9 */	bl OSReport
.L_8136DBAC:
/* 8136DBAC 0003BFAC  7F A3 EB 78 */	mr r3, r29
/* 8136DBB0 0003BFB0  38 9F 00 04 */	addi r4, r31, 0x4
/* 8136DBB4 0003BFB4  48 00 02 B5 */	bl __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData
/* 8136DBB8 0003BFB8  7F E3 FB 78 */	mr r3, r31
/* 8136DBBC 0003BFBC  38 80 00 00 */	li r4, 0x0
/* 8136DBC0 0003BFC0  38 A0 00 24 */	li r5, 0x24
/* 8136DBC4 0003BFC4  4B FC 27 71 */	bl memset
/* 8136DBC8 0003BFC8  3B E0 00 01 */	li r31, 0x1
.L_8136DBCC:
/* 8136DBCC 0003BFCC  7F C3 F3 78 */	mr r3, r30
/* 8136DBD0 0003BFD0  48 1C 2C DD */	bl OSRestoreInterrupts
/* 8136DBD4 0003BFD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8136DBD8 0003BFD8  7F E3 FB 78 */	mr r3, r31
/* 8136DBDC 0003BFDC  48 28 B9 35 */	bl _restgpr_28
/* 8136DBE0 0003BFE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136DBE4 0003BFE4  7C 08 03 A6 */	mtlr r0
/* 8136DBE8 0003BFE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8136DBEC 0003BFEC  4E 80 00 20 */	blr
.endfn ReceiveWindowEvent__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData

# .text:0x13CC | 0x8136DBF0 | size: 0x11C
# ext_ead::www::BrowserThread::CreateImeData(ext_ead::www::ImeData*, const WWWIMEData*)
.fn CreateImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPC10WWWIMEData, global
/* 8136DBF0 0003BFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136DBF4 0003BFF4  7C 08 02 A6 */	mflr r0
/* 8136DBF8 0003BFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136DBFC 0003BFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8136DC00 0003C000  48 28 B8 C9 */	bl _savegpr_29
/* 8136DC04 0003C004  7C 9D 23 78 */	mr r29, r4
/* 8136DC08 0003C008  3F E0 81 64 */	lis r31, lbl_816429C0@ha
/* 8136DC0C 0003C00C  7C BE 2B 78 */	mr r30, r5
/* 8136DC10 0003C010  38 80 00 00 */	li r4, 0x0
/* 8136DC14 0003C014  7F A3 EB 78 */	mr r3, r29
/* 8136DC18 0003C018  3B FF 29 C0 */	addi r31, r31, lbl_816429C0@l
/* 8136DC1C 0003C01C  38 A0 00 20 */	li r5, 0x20
/* 8136DC20 0003C020  4B FC 27 15 */	bl memset
/* 8136DC24 0003C024  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8136DC28 0003C028  38 9F 02 6F */	addi r4, r31, 0x26f
/* 8136DC2C 0003C02C  38 60 00 03 */	li r3, 0x3
/* 8136DC30 0003C030  4C C6 31 82 */	crclr cr1eq
/* 8136DC34 0003C034  48 00 0C 61 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC38 0003C038  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136DC3C 0003C03C  38 9F 02 84 */	addi r4, r31, 0x284
/* 8136DC40 0003C040  38 60 00 03 */	li r3, 0x3
/* 8136DC44 0003C044  4C C6 31 82 */	crclr cr1eq
/* 8136DC48 0003C048  48 00 0C 4D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC4C 0003C04C  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 8136DC50 0003C050  38 9F 02 98 */	addi r4, r31, 0x298
/* 8136DC54 0003C054  38 60 00 03 */	li r3, 0x3
/* 8136DC58 0003C058  4C C6 31 82 */	crclr cr1eq
/* 8136DC5C 0003C05C  48 00 0C 39 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC60 0003C060  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136DC64 0003C064  38 9F 02 B1 */	addi r4, r31, 0x2b1
/* 8136DC68 0003C068  38 60 00 03 */	li r3, 0x3
/* 8136DC6C 0003C06C  4C C6 31 82 */	crclr cr1eq
/* 8136DC70 0003C070  48 00 0C 25 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC74 0003C074  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8136DC78 0003C078  38 9F 02 C7 */	addi r4, r31, 0x2c7
/* 8136DC7C 0003C07C  38 60 00 03 */	li r3, 0x3
/* 8136DC80 0003C080  4C C6 31 82 */	crclr cr1eq
/* 8136DC84 0003C084  48 00 0C 11 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136DC88 0003C088  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8136DC8C 0003C08C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DC90 0003C090  41 82 00 24 */	beq .L_8136DCB4
/* 8136DC94 0003C094  48 28 B2 69 */	bl strlen
/* 8136DC98 0003C098  38 80 00 04 */	li r4, 0x4
/* 8136DC9C 0003C09C  38 63 00 01 */	addi r3, r3, 0x1
/* 8136DCA0 0003C0A0  48 00 02 C9 */	bl allocMem2__Q37ext_ead3www4HeapFUli
/* 8136DCA4 0003C0A4  90 7D 00 08 */	stw r3, 0x8(r29)
/* 8136DCA8 0003C0A8  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8136DCAC 0003C0AC  48 29 46 59 */	bl strcpy
/* 8136DCB0 0003C0B0  48 00 00 0C */	b .L_8136DCBC
.L_8136DCB4:
/* 8136DCB4 0003C0B4  38 00 00 00 */	li r0, 0x0
/* 8136DCB8 0003C0B8  90 1D 00 08 */	stw r0, 0x8(r29)
.L_8136DCBC:
/* 8136DCBC 0003C0BC  81 1E 00 00 */	lwz r8, 0x0(r30)
/* 8136DCC0 0003C0C0  38 E0 00 00 */	li r7, 0x0
/* 8136DCC4 0003C0C4  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 8136DCC8 0003C0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8136DCCC 0003C0CC  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 8136DCD0 0003C0D0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8136DCD4 0003C0D4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8136DCD8 0003C0D8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8136DCDC 0003C0DC  91 1D 00 04 */	stw r8, 0x4(r29)
/* 8136DCE0 0003C0E0  90 FD 00 00 */	stw r7, 0x0(r29)
/* 8136DCE4 0003C0E4  90 DD 00 0C */	stw r6, 0xc(r29)
/* 8136DCE8 0003C0E8  90 BD 00 10 */	stw r5, 0x10(r29)
/* 8136DCEC 0003C0EC  90 9D 00 14 */	stw r4, 0x14(r29)
/* 8136DCF0 0003C0F0  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8136DCF4 0003C0F4  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8136DCF8 0003C0F8  48 28 B8 1D */	bl _restgpr_29
/* 8136DCFC 0003C0FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136DD00 0003C100  7C 08 03 A6 */	mtlr r0
/* 8136DD04 0003C104  38 21 00 20 */	addi r1, r1, 0x20
/* 8136DD08 0003C108  4E 80 00 20 */	blr
.endfn CreateImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPC10WWWIMEData

# .text:0x14E8 | 0x8136DD0C | size: 0x8
# ext_ead::www::BrowserThread::DisposeImeData(ext_ead::www::ImeData*)
.fn DisposeImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData, global
/* 8136DD0C 0003C10C  80 64 00 08 */	lwz r3, 0x8(r4)
/* 8136DD10 0003C110  48 00 02 6C */	b freeMem2__Q37ext_ead3www4HeapFPv
.endfn DisposeImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData

# .text:0x14F0 | 0x8136DD14 | size: 0x8C
# ext_ead::www::BrowserThread::CommitIme(ext_ead::www::ImeData*, const char*)
.fn CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc, global
/* 8136DD14 0003C114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136DD18 0003C118  7C 08 02 A6 */	mflr r0
/* 8136DD1C 0003C11C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8136DD20 0003C120  39 61 00 40 */	addi r11, r1, 0x40
/* 8136DD24 0003C124  48 28 B7 A1 */	bl _savegpr_28
/* 8136DD28 0003C128  2C 05 00 00 */	cmpwi r5, 0x0
/* 8136DD2C 0003C12C  7C 7C 1B 78 */	mr r28, r3
/* 8136DD30 0003C130  7C 9D 23 78 */	mr r29, r4
/* 8136DD34 0003C134  7C BE 2B 78 */	mr r30, r5
/* 8136DD38 0003C138  41 82 00 2C */	beq .L_8136DD64
/* 8136DD3C 0003C13C  7F C3 F3 78 */	mr r3, r30
/* 8136DD40 0003C140  48 28 B1 BD */	bl strlen
/* 8136DD44 0003C144  38 80 00 04 */	li r4, 0x4
/* 8136DD48 0003C148  38 63 00 01 */	addi r3, r3, 0x1
/* 8136DD4C 0003C14C  48 00 01 FD */	bl allocMem1__Q37ext_ead3www4HeapFUli
/* 8136DD50 0003C150  7C 7F 1B 78 */	mr r31, r3
/* 8136DD54 0003C154  7F C4 F3 78 */	mr r4, r30
/* 8136DD58 0003C158  48 29 45 AD */	bl strcpy
/* 8136DD5C 0003C15C  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8136DD60 0003C160  48 00 00 0C */	b .L_8136DD6C
.L_8136DD64:
/* 8136DD64 0003C164  38 00 00 00 */	li r0, 0x0
/* 8136DD68 0003C168  90 01 00 10 */	stw r0, 0x10(r1)
.L_8136DD6C:
/* 8136DD6C 0003C16C  38 00 00 03 */	li r0, 0x3
/* 8136DD70 0003C170  7F 83 E3 78 */	mr r3, r28
/* 8136DD74 0003C174  90 01 00 08 */	stw r0, 0x8(r1)
/* 8136DD78 0003C178  38 81 00 08 */	addi r4, r1, 0x8
/* 8136DD7C 0003C17C  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8136DD80 0003C180  90 01 00 0C */	stw r0, 0xc(r1)
/* 8136DD84 0003C184  4B FF FB 25 */	bl SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket
/* 8136DD88 0003C188  39 61 00 40 */	addi r11, r1, 0x40
/* 8136DD8C 0003C18C  48 28 B7 85 */	bl _restgpr_28
/* 8136DD90 0003C190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136DD94 0003C194  7C 08 03 A6 */	mtlr r0
/* 8136DD98 0003C198  38 21 00 40 */	addi r1, r1, 0x40
/* 8136DD9C 0003C19C  4E 80 00 20 */	blr
.endfn CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc

# .text:0x157C | 0x8136DDA0 | size: 0x4C
# ext_ead::www::BrowserThread::CommitImeCmdPacket(const ext_ead::www::BrowserThread::CmdPacket*)
.fn CommitImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136DDA0 0003C1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DDA4 0003C1A4  7C 08 02 A6 */	mflr r0
/* 8136DDA8 0003C1A8  80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136DDAC 0003C1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DDB0 0003C1B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136DDB4 0003C1B4  7C 9F 23 78 */	mr r31, r4
/* 8136DDB8 0003C1B8  80 84 00 08 */	lwz r4, 0x8(r4)
/* 8136DDBC 0003C1BC  81 8D A7 C0 */	lwz r12, WWWCommitIme@sda21(r0)
/* 8136DDC0 0003C1C0  7D 89 03 A6 */	mtctr r12
/* 8136DDC4 0003C1C4  4E 80 04 21 */	bctrl
/* 8136DDC8 0003C1C8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8136DDCC 0003C1CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DDD0 0003C1D0  41 82 00 08 */	beq .L_8136DDD8
/* 8136DDD4 0003C1D4  48 00 01 89 */	bl freeMem1__Q37ext_ead3www4HeapFPv
.L_8136DDD8:
/* 8136DDD8 0003C1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DDDC 0003C1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136DDE0 0003C1E0  7C 08 03 A6 */	mtlr r0
/* 8136DDE4 0003C1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8136DDE8 0003C1E8  4E 80 00 20 */	blr
.endfn CommitImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x15C8 | 0x8136DDEC | size: 0x50
# ext_ead::www::BrowserThread::UpdateImeCmdPacket(const ext_ead::www::BrowserThread::CmdPacket*)
.fn UpdateImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136DDEC 0003C1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DDF0 0003C1F0  7C 08 02 A6 */	mflr r0
/* 8136DDF4 0003C1F4  80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136DDF8 0003C1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DDFC 0003C1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136DE00 0003C200  7C 9F 23 78 */	mr r31, r4
/* 8136DE04 0003C204  80 84 00 08 */	lwz r4, 0x8(r4)
/* 8136DE08 0003C208  81 8D A7 C4 */	lwz r12, WWWUpdateIme@sda21(r0)
/* 8136DE0C 0003C20C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8136DE10 0003C210  7D 89 03 A6 */	mtctr r12
/* 8136DE14 0003C214  4E 80 04 21 */	bctrl
/* 8136DE18 0003C218  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8136DE1C 0003C21C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136DE20 0003C220  41 82 00 08 */	beq .L_8136DE28
/* 8136DE24 0003C224  48 00 01 39 */	bl freeMem1__Q37ext_ead3www4HeapFPv
.L_8136DE28:
/* 8136DE28 0003C228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DE2C 0003C22C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136DE30 0003C230  7C 08 03 A6 */	mtlr r0
/* 8136DE34 0003C234  38 21 00 10 */	addi r1, r1, 0x10
/* 8136DE38 0003C238  4E 80 00 20 */	blr
.endfn UpdateImeCmdPacket__Q37ext_ead3www13BrowserThreadFPCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x1618 | 0x8136DE3C | size: 0x2C
# ext_ead::www::BrowserThread::CmdPacket::operator=(const ext_ead::www::BrowserThread::CmdPacket&)
.fn __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket, global
/* 8136DE3C 0003C23C  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8136DE40 0003C240  38 00 00 03 */	li r0, 0x3
/* 8136DE44 0003C244  7C 66 1B 78 */	mr r6, r3
/* 8136DE48 0003C248  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8136DE4C 0003C24C  7C 09 03 A6 */	mtctr r0
.L_8136DE50:
/* 8136DE50 0003C250  80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8136DE54 0003C254  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8136DE58 0003C258  90 A6 00 04 */	stw r5, 0x4(r6)
/* 8136DE5C 0003C25C  94 06 00 08 */	stwu r0, 0x8(r6)
/* 8136DE60 0003C260  42 00 FF F0 */	bdnz .L_8136DE50
/* 8136DE64 0003C264  4E 80 00 20 */	blr
.endfn __as__Q47ext_ead3www13BrowserThread9CmdPacketFRCQ47ext_ead3www13BrowserThread9CmdPacket

# .text:0x1644 | 0x8136DE68 | size: 0x44
# ext_ead::www::ImeData::operator=(const ext_ead::www::ImeData&)
.fn __as__Q37ext_ead3www7ImeDataFRCQ37ext_ead3www7ImeData, global
/* 8136DE68 0003C268  81 64 00 00 */	lwz r11, 0x0(r4)
/* 8136DE6C 0003C26C  81 44 00 04 */	lwz r10, 0x4(r4)
/* 8136DE70 0003C270  81 24 00 08 */	lwz r9, 0x8(r4)
/* 8136DE74 0003C274  81 04 00 0C */	lwz r8, 0xc(r4)
/* 8136DE78 0003C278  80 E4 00 10 */	lwz r7, 0x10(r4)
/* 8136DE7C 0003C27C  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8136DE80 0003C280  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 8136DE84 0003C284  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8136DE88 0003C288  91 63 00 00 */	stw r11, 0x0(r3)
/* 8136DE8C 0003C28C  91 43 00 04 */	stw r10, 0x4(r3)
/* 8136DE90 0003C290  91 23 00 08 */	stw r9, 0x8(r3)
/* 8136DE94 0003C294  91 03 00 0C */	stw r8, 0xc(r3)
/* 8136DE98 0003C298  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8136DE9C 0003C29C  90 C3 00 14 */	stw r6, 0x14(r3)
/* 8136DEA0 0003C2A0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8136DEA4 0003C2A4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8136DEA8 0003C2A8  4E 80 00 20 */	blr
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

# .data:0x344 | 0x81642D04 | size: 0xC
# ext_ead::www::print::TickTimer::@STRING@report(const char*, ...)
.obj "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce", global
	.4byte 0x203A2025
	.4byte 0x645B6D73
	.4byte 0x5D0A0000
.endobj "@STRING@report__Q47ext_ead3www5print9TickTimerFPCce"

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

# .sdata:0x1C | 0x816962E4 | size: 0xC
.obj lbl_816962E4, global
	.4byte 0x4552524F
	.4byte 0x523F0A00
	.4byte 0x00000000
.endobj lbl_816962E4

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

# .sbss:0x1C0 | 0x81698958 | size: 0x8
# ext_ead::www::BrowserThread::classInitialized_
.obj classInitialized___Q37ext_ead3www13BrowserThread, global
	.skip 0x8
.endobj classInitialized___Q37ext_ead3www13BrowserThread
